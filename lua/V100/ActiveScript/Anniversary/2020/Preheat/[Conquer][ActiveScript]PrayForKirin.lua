------------------------------------------------------------------------------------
--Name：            200310[简体征服][活动脚本]17周年庆预热活动-祈福灵兽
--Creator:      郑洵
--Created:     2020-03-10
------------------------------------------------------------------------------------
-- 任务需求：
-- 【总贴】200224【简体征服】17周年庆预热活动
-- 制作17周年庆预热活动
-- 活动时间：4月14日-4月20日
-- 瓜分大奖时间：4月21日-4月27日

-- 命名前缀
-- PrayForKirin_

-- logid:12001915
-- 41757 = V100\ActiveScript\Anniversary\2020\Preheat\[Conquer][ActiveScript]PrayForKirin.lua
-- 41757 = V100\活动脚本\周年庆\2020\预热\[征服][活动脚本]17周年庆预热活动祈福灵兽.lua

-- stc掩码说明
-- stc(217 54)			记录背包信获得
-- stc(217 55)			记录杀怪奖励领取
-- stc(217 56)			记录上交灵珠数
-- stc(217 57)			记录剩余瓜分次数
-- stc(217 58)			标识接受杀怪任务
-- stc(217 59)			记录17周年祈福礼盒领取
-- stc(217 60)			记录背包信获得
-- stc(217 62)			记录杀怪数

--动态全局表说明
--ID: 54339: Data0位记录全民积累奖池
--ID: 54340: Data0-Data5位记录限量
--ID: 54341: Data0-Data5位记录限量
--ID: 54342: Data0-Data1位记录限量


--------------------------------------------------常量表---------------------------------------------
-- 常量表
local tPrayForKirin_Cont = {}
	--等级限制
	tPrayForKirin_Cont["Level"] = 0
	tPrayForKirin_Cont["Metempsychosis"] = 0
	--主任务id
	tPrayForKirin_Cont["TaskId"] = {}
	tPrayForKirin_Cont["TaskId"][1] = 4403
	tPrayForKirin_Cont["TaskId"][2] = 4482
	--激情服主任务id
	tPrayForKirin_Cont["NoGiftTaskId"] = {}
	tPrayForKirin_Cont["NoGiftTaskId"][1] = 4404
	tPrayForKirin_Cont["NoGiftTaskId"][2] = 4483
	--瑞麟 ID
	tPrayForKirin_Cont["MainNPCId"] = 26063
	--祥麟 ID
	tPrayForKirin_Cont["ActiveNPCId2"] = 26059
	--灵鹤 ID
	tPrayForKirin_Cont["ActiveNPCId3"] = 26059
	--背包信 ID
	tPrayForKirin_Cont["BackpackLetter"] = 3315790
	--全民积累初始奖池
	tPrayForKirin_Cont["GlobalRewardNum"] = 300000
	--主要物品 ID
	tPrayForKirin_Cont["AnniversaryItem"] = {}
	tPrayForKirin_Cont["AnniversaryItem"][1] = 3315791-- 17周年祈福礼盒
	tPrayForKirin_Cont["AnniversaryItem"][2] = 3315792-- 灵珠碎片
	tPrayForKirin_Cont["AnniversaryItem"][3] = 3315793-- 祈福灵珠
	tPrayForKirin_Cont["AnniversaryItem"][4] = 3315794-- 百万天石福袋
	--主要邮件 ID
	tPrayForKirin_Cont["AnniversaryAction"] = {}
	tPrayForKirin_Cont["AnniversaryAction"][1] = 576697-- 百万天石福袋
	tPrayForKirin_Cont["AnniversaryAction"][2] = 576698-- 17周年祈福礼盒
	--瓜分掩码索引
	tPrayForKirin_Cont["GlobalReward"] = 21757
	--记录杀怪数
	tPrayForKirin_Cont["MonsterDrop"] = 21762
	--完成任务需要的杀怪数
	tPrayForKirin_Cont["MonsterDropNum"] = 200
	--标识接受杀怪任务
	tPrayForKirin_Cont["MonsterTask"] = 21758
	--满级
	tPrayForKirin_Cont["MaxLevel"] = 17
	--超出满级获得17周年祈福礼盒所需
	tPrayForKirin_Cont["MaxLevelReward"] = 17
	--上交祈福灵珠增加全民积累奖池
	tPrayForKirin_Cont["GlobalAddEMoney"] = 6
	--接任务光效
	tPrayForKirin_Cont["TaskEffect"] = "zf2-e128"

-- 任务完成
local tPrayForKirin_Complete = {}
	tPrayForKirin_Complete[4403] = 1
	tPrayForKirin_Complete[4404] = 1
	tPrayForKirin_Complete[4482] = 200
	tPrayForKirin_Complete[4483] = 200

-- 全局表
local tPrayForKirin_Global = {}
	tPrayForKirin_Global[1] = 54339
	tPrayForKirin_Global[2] = 54340
	tPrayForKirin_Global[3] = 54341
	tPrayForKirin_Global[4] = 54342

-- 记录LOG
local tPrayForKirin_Log = {}
	-- 删除物品LOG
	tPrayForKirin_Log["Del"] = "0,0,%d,%d,12001915,2,0,0"
	-- 步骤LOG
	tPrayForKirin_Log["Active"] = {}
	tPrayForKirin_Log["Active"][1] = "0,0,0,0,12001915,2[1],0,0"-- 标识接受杀怪任务
	tPrayForKirin_Log["Active"][2] = "0,0,0,0,12001915,2[2],0,0"-- 记录杀怪奖励领取
	tPrayForKirin_Log["Active"][3] = "0,0,3315793,%d,12001915,2[4],0,0"-- 记录上交灵石
	tPrayForKirin_Log["Active"][4] = "0,0,0,0,12001915,2[5],0,0"-- 记录瓜分奖池
	tPrayForKirin_Log["Active"][5] = "0,0,0,0,12001915,2[6],3315791,%d"-- 记录17周年祈福礼盒获得


-- 掩码使用
local tPrayForKirin_Stc = {}
	--记录背包信获得
	tPrayForKirin_Stc[3315790] = {}
	tPrayForKirin_Stc[3315790]["EventType"] = 217
	tPrayForKirin_Stc[3315790]["DataType"] = 54
	--记录17周年祈福礼盒领取
	tPrayForKirin_Stc[3315791] = {}
	tPrayForKirin_Stc[3315791]["EventType"] = 217
	tPrayForKirin_Stc[3315791]["DataType"] = 59
	--记录杀怪奖励领取
	tPrayForKirin_Stc[26063] = {}
	tPrayForKirin_Stc[26063]["EventType"] = 217
	tPrayForKirin_Stc[26063]["DataType"] = 55
	--记录上交灵珠数
	tPrayForKirin_Stc[3315793] = {}
	tPrayForKirin_Stc[3315793]["EventType"] = 217
	tPrayForKirin_Stc[3315793]["DataType"] = 56
	--记录剩余瓜分次数
	tPrayForKirin_Stc[21757] = {}
	tPrayForKirin_Stc[21757]["EventType"] = 217
	tPrayForKirin_Stc[21757]["DataType"] = 57
	--标识接受杀怪任务
	tPrayForKirin_Stc[21758] = {}
	tPrayForKirin_Stc[21758]["EventType"] = 217
	tPrayForKirin_Stc[21758]["DataType"] = 58
	--记录杀怪数
	tPrayForKirin_Stc[21762] = {}
	tPrayForKirin_Stc[21762]["EventType"] = 217
	tPrayForKirin_Stc[21762]["DataType"] = 62

-- 贡献等级
local tPrayForKirin_Level = {}
	tPrayForKirin_Level[1] = 0
	tPrayForKirin_Level[2] = 4
	tPrayForKirin_Level[3] = 8
	tPrayForKirin_Level[4] = 12
	tPrayForKirin_Level[5] = 17
	tPrayForKirin_Level[6] = 22
	tPrayForKirin_Level[7] = 28
	tPrayForKirin_Level[8] = 34
	tPrayForKirin_Level[9] = 41
	tPrayForKirin_Level[10] = 48
	tPrayForKirin_Level[11] = 56
	tPrayForKirin_Level[12] = 65
	tPrayForKirin_Level[13] = 76
	tPrayForKirin_Level[14] = 88
	tPrayForKirin_Level[15] = 101
	tPrayForKirin_Level[16] = 115
	tPrayForKirin_Level[17] = 135


--奖励模板
local tPrayForKirin_Reward = {}
	-- ===祝福精粹合成奖励
	-- ===索引:tPrayForKirin_Reward[3315792]
	-- ===删除: 3315792,20
	tPrayForKirin_Reward[3315792] = {}
	tPrayForKirin_Reward[3315792]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tPrayForKirin_Reward[3315792]["DeleteItem"] = {}
	tPrayForKirin_Reward[3315792]["DeleteItem"][1] = {}
	tPrayForKirin_Reward[3315792]["DeleteItem"][1]["Id"] = 3315792 -- 【库】灵珠碎片[属性:9]
	tPrayForKirin_Reward[3315792]["DeleteItem"][1]["ItemNum"] = 20
	tPrayForKirin_Reward[3315792]["LogId"] = 12001915
	-- 祝福灵石-- 【自身概率】 - 100%
	tPrayForKirin_Reward[3315792][1] = {}
	tPrayForKirin_Reward[3315792][1]["RandomItemChanceType"] = 3
	tPrayForKirin_Reward[3315792][1]["ItemSelfChanceSum"] = 10000
	tPrayForKirin_Reward[3315792][1]["ItemChance"] = 10000
	tPrayForKirin_Reward[3315792][1]["RewardItem"] = {}
	tPrayForKirin_Reward[3315792][1]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315792][1]["RewardItem"][1]["Id"] = 3315793 -- 祈福灵珠[3315793][属性:9][叠加:10000][金币:0], 【表格】祝福灵石
	tPrayForKirin_Reward[3315792][1]["RewardItem"][1]["Attr"] = "0 1" -- 祈福灵珠*1
	tPrayForKirin_Reward[3315792][1]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315792][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315792][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3阶灵珠 - 0.2%
	tPrayForKirin_Reward[3315792][2] = {}
	tPrayForKirin_Reward[3315792][2]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315792][2]["ItemChance"] = 20
	tPrayForKirin_Reward[3315792][2]["RewardItem"] = {}
	tPrayForKirin_Reward[3315792][2]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315792][2]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tPrayForKirin_Reward[3315792][2]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tPrayForKirin_Reward[3315792][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tPrayForKirin_Reward[3315792][2]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315792][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315792][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54340, data0）】全服限量:（210）, 超限给编号（3）-
	tPrayForKirin_Reward[3315792][2]["GlobalId"] = 54340
	tPrayForKirin_Reward[3315792][2]["Pos"] = 0
	tPrayForKirin_Reward[3315792][2]["MaxData"] = 210
	tPrayForKirin_Reward[3315792][2]["FullIndex"] = 3
			-- 【动态掩码（54340, data1）】单日限量:（30）, 超限给编号（3）-
	tPrayForKirin_Reward[3315792][2]["OtherPos"] = 1
	tPrayForKirin_Reward[3315792][2]["OtherMaxData"] = 30
	tPrayForKirin_Reward[3315792][2]["OtherFullIndex"] = 3
	-- 化气聚神丹 - 5.2%
	tPrayForKirin_Reward[3315792][3] = {}
	tPrayForKirin_Reward[3315792][3]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315792][3]["ItemChance"] = 520
	tPrayForKirin_Reward[3315792][3]["RewardItem"] = {}
	tPrayForKirin_Reward[3315792][3]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315792][3]["RewardItem"][1]["Id"] = 3314206 -- 化气聚神丹[3314206][属性:8][叠加:10000][金币:0], 【表格】化气聚神丹
	tPrayForKirin_Reward[3315792][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 化气聚神丹（赠）*1
	tPrayForKirin_Reward[3315792][3]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315792][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315792][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 豹胆气力酒 - 5.2%
	tPrayForKirin_Reward[3315792][4] = {}
	tPrayForKirin_Reward[3315792][4]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315792][4]["ItemChance"] = 520
	tPrayForKirin_Reward[3315792][4]["RewardItem"] = {}
	tPrayForKirin_Reward[3315792][4]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315792][4]["RewardItem"][1]["Id"] = 3321077 -- 豹胆气力酒[3321077][属性:0][叠加:10000][金币:0], 【表格】豹胆气力酒
	tPrayForKirin_Reward[3315792][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 豹胆气力酒（赠）*1
	tPrayForKirin_Reward[3315792][4]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315792][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315792][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 6.2%
	tPrayForKirin_Reward[3315792][5] = {}
	tPrayForKirin_Reward[3315792][5]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315792][5]["ItemChance"] = 620
	tPrayForKirin_Reward[3315792][5]["RewardItem"] = {}
	tPrayForKirin_Reward[3315792][5]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315792][5]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tPrayForKirin_Reward[3315792][5]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的微光星陨石*2
	tPrayForKirin_Reward[3315792][5]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315792][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315792][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 3.7%
	tPrayForKirin_Reward[3315792][6] = {}
	tPrayForKirin_Reward[3315792][6]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315792][6]["ItemChance"] = 370
	tPrayForKirin_Reward[3315792][6]["RewardItem"] = {}
	tPrayForKirin_Reward[3315792][6]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315792][6]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tPrayForKirin_Reward[3315792][6]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tPrayForKirin_Reward[3315792][6]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315792][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315792][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 秘制免费修炼丹 - 3.2%
	tPrayForKirin_Reward[3315792][7] = {}
	tPrayForKirin_Reward[3315792][7]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315792][7]["ItemChance"] = 320
	tPrayForKirin_Reward[3315792][7]["RewardItem"] = {}
	tPrayForKirin_Reward[3315792][7]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315792][7]["RewardItem"][1]["Id"] = 3002926 -- 秘制免费修炼丹[3002926][属性:11][叠加:10000][金币:0], 【表格】秘制免费修炼丹
	tPrayForKirin_Reward[3315792][7]["RewardItem"][1]["Attr"] = "0 1" -- 秘制免费修炼丹*1
	tPrayForKirin_Reward[3315792][7]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315792][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315792][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3 - 1.8%
	tPrayForKirin_Reward[3315792][8] = {}
	tPrayForKirin_Reward[3315792][8]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315792][8]["ItemChance"] = 180
	tPrayForKirin_Reward[3315792][8]["RewardItem"] = {}
	tPrayForKirin_Reward[3315792][8]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315792][8]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tPrayForKirin_Reward[3315792][8]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tPrayForKirin_Reward[3315792][8]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315792][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315792][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2 - 4.5%
	tPrayForKirin_Reward[3315792][9] = {}
	tPrayForKirin_Reward[3315792][9]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315792][9]["ItemChance"] = 450
	tPrayForKirin_Reward[3315792][9]["RewardItem"] = {}
	tPrayForKirin_Reward[3315792][9]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315792][9]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tPrayForKirin_Reward[3315792][9]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tPrayForKirin_Reward[3315792][9]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315792][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315792][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 【无】 - 70%
	tPrayForKirin_Reward[3315792][10] = {}
	tPrayForKirin_Reward[3315792][10]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315792][10]["ItemChance"] = 7000


	tPrayForKirin_Reward[3315794] = {}
	-- ===百万天石福袋
	-- ===索引:tPrayForKirin_Reward[3315794]
	-- ===删除: 3315794,1
	-- ===NewEmoneyLog: 1000,1673
	tPrayForKirin_Reward[3315794]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tPrayForKirin_Reward[3315794]["DeleteItem"] = {}
	tPrayForKirin_Reward[3315794]["DeleteItem"][1] = {}
	tPrayForKirin_Reward[3315794]["DeleteItem"][1]["Id"] = 3315794 -- 【库】百万天石福袋[属性:9]
	tPrayForKirin_Reward[3315794]["LogId"] = 12001915
	-- 天石（赠） - 27%
	tPrayForKirin_Reward[3315794][1] = {}
	tPrayForKirin_Reward[3315794][1]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315794][1]["ItemChance"] = 2700
	tPrayForKirin_Reward[3315794][1]["RewardEMoneyMono"] = {}
	tPrayForKirin_Reward[3315794][1]["RewardEMoneyMono"]["Value"] = 18 -- 天石（赠）, 【需求】天石（赠）
	tPrayForKirin_Reward[3315794][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1673"
	tPrayForKirin_Reward[3315794][1]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315794][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315794][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 天石（赠） - 25.4%
	tPrayForKirin_Reward[3315794][2] = {}
	tPrayForKirin_Reward[3315794][2]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315794][2]["ItemChance"] = 2540
	tPrayForKirin_Reward[3315794][2]["RewardEMoneyMono"] = {}
	tPrayForKirin_Reward[3315794][2]["RewardEMoneyMono"]["Value"] = 38 -- 天石（赠）, 【需求】天石（赠）
	tPrayForKirin_Reward[3315794][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1673"
	tPrayForKirin_Reward[3315794][2]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315794][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315794][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 天石（赠） - 23.1%
	tPrayForKirin_Reward[3315794][3] = {}
	tPrayForKirin_Reward[3315794][3]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315794][3]["ItemChance"] = 2310
	tPrayForKirin_Reward[3315794][3]["RewardEMoneyMono"] = {}
	tPrayForKirin_Reward[3315794][3]["RewardEMoneyMono"]["Value"] = 66 -- 天石（赠）, 【需求】天石（赠）
	tPrayForKirin_Reward[3315794][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1673"
	tPrayForKirin_Reward[3315794][3]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315794][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315794][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 天石（赠） - 10%
	tPrayForKirin_Reward[3315794][4] = {}
	tPrayForKirin_Reward[3315794][4]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315794][4]["ItemChance"] = 1000
	tPrayForKirin_Reward[3315794][4]["RewardEMoneyMono"] = {}
	tPrayForKirin_Reward[3315794][4]["RewardEMoneyMono"]["Value"] = 88 -- 天石（赠）, 【需求】天石（赠）
	tPrayForKirin_Reward[3315794][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1673"
	tPrayForKirin_Reward[3315794][4]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315794][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315794][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 天石（赠） - 6%
	tPrayForKirin_Reward[3315794][5] = {}
	tPrayForKirin_Reward[3315794][5]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315794][5]["ItemChance"] = 600
	tPrayForKirin_Reward[3315794][5]["RewardEMoneyMono"] = {}
	tPrayForKirin_Reward[3315794][5]["RewardEMoneyMono"]["Value"] = 188 -- 天石（赠）, 【需求】天石（赠）
	tPrayForKirin_Reward[3315794][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1673"
	tPrayForKirin_Reward[3315794][5]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315794][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315794][5]["RewardEffect"]["Effect"] = "angelwing"
	tPrayForKirin_Reward[3315794][5]["RewardBroadCast"] = tPrayForKirin_Text["Broadcast"][3315794][5] -- 全服公告
	tPrayForKirin_Reward[3315794][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天石（赠） - 1%
	tPrayForKirin_Reward[3315794][6] = {}
	tPrayForKirin_Reward[3315794][6]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315794][6]["ItemChance"] = 100
	tPrayForKirin_Reward[3315794][6]["RewardEMoneyMono"] = {}
	tPrayForKirin_Reward[3315794][6]["RewardEMoneyMono"]["Value"] = 388 -- 天石（赠）, 【需求】天石（赠）
	tPrayForKirin_Reward[3315794][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1673"
	tPrayForKirin_Reward[3315794][6]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315794][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315794][6]["RewardEffect"]["Effect"] = "angelwing"
	tPrayForKirin_Reward[3315794][6]["RewardBroadCast"] = tPrayForKirin_Text["Broadcast"][3315794][6] -- 全服公告
	tPrayForKirin_Reward[3315794][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天石（赠） - 0.3%
	tPrayForKirin_Reward[3315794][7] = {}
	tPrayForKirin_Reward[3315794][7]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315794][7]["ItemChance"] = 30
	tPrayForKirin_Reward[3315794][7]["RewardEMoneyMono"] = {}
	tPrayForKirin_Reward[3315794][7]["RewardEMoneyMono"]["Value"] = 888 -- 天石（赠）, 【需求】天石（赠）
	tPrayForKirin_Reward[3315794][7]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1673"
	tPrayForKirin_Reward[3315794][7]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315794][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315794][7]["RewardEffect"]["Effect"] = "angelwing"
	tPrayForKirin_Reward[3315794][7]["RewardBroadCast"] = tPrayForKirin_Text["Broadcast"][3315794][7] -- 全服公告
	tPrayForKirin_Reward[3315794][7]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54340, data2）】全服限量:（30）, 超限给编号（3）-
	tPrayForKirin_Reward[3315794][7]["GlobalId"] = 54340
	tPrayForKirin_Reward[3315794][7]["Pos"] = 2
	tPrayForKirin_Reward[3315794][7]["MaxData"] = 30
	tPrayForKirin_Reward[3315794][7]["FullIndex"] = 3
	-- 天石 - 6%
	tPrayForKirin_Reward[3315794][8] = {}
	tPrayForKirin_Reward[3315794][8]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315794][8]["ItemChance"] = 600
	tPrayForKirin_Reward[3315794][8]["RewardEMoney"] = {}
	tPrayForKirin_Reward[3315794][8]["RewardEMoney"]["Value"] = 18 -- 天石, 【需求】天石
	tPrayForKirin_Reward[3315794][8]["RewardEMoney"]["NewEmoneyLog"] = "1000	1673"
	tPrayForKirin_Reward[3315794][8]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315794][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315794][8]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54340, data4）】全服限量:（300）, 超限给编号（3）-
	tPrayForKirin_Reward[3315794][8]["GlobalId"] = 54340
	tPrayForKirin_Reward[3315794][8]["Pos"] = 4
	tPrayForKirin_Reward[3315794][8]["MaxData"] = 300
	tPrayForKirin_Reward[3315794][8]["FullIndex"] = 3
	-- 天石 - 0.6%
	tPrayForKirin_Reward[3315794][9] = {}
	tPrayForKirin_Reward[3315794][9]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315794][9]["ItemChance"] = 60
	tPrayForKirin_Reward[3315794][9]["RewardEMoney"] = {}
	tPrayForKirin_Reward[3315794][9]["RewardEMoney"]["Value"] = 48 -- 天石, 【需求】天石
	tPrayForKirin_Reward[3315794][9]["RewardEMoney"]["NewEmoneyLog"] = "1000	1673"
	tPrayForKirin_Reward[3315794][9]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315794][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315794][9]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54341, data0）】全服限量:（30）, 超限给编号（3）-
	tPrayForKirin_Reward[3315794][9]["GlobalId"] = 54341
	tPrayForKirin_Reward[3315794][9]["Pos"] = 0
	tPrayForKirin_Reward[3315794][9]["MaxData"] = 30
	tPrayForKirin_Reward[3315794][9]["FullIndex"] = 3
	-- 天石 - 0.4%
	tPrayForKirin_Reward[3315794][10] = {}
	tPrayForKirin_Reward[3315794][10]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315794][10]["ItemChance"] = 40
	tPrayForKirin_Reward[3315794][10]["RewardEMoney"] = {}
	tPrayForKirin_Reward[3315794][10]["RewardEMoney"]["Value"] = 88 -- 天石, 【需求】天石
	tPrayForKirin_Reward[3315794][10]["RewardEMoney"]["NewEmoneyLog"] = "1000	1673"
	tPrayForKirin_Reward[3315794][10]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315794][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315794][10]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54341, data2）】全服限量:（20）, 超限给编号（3）-
	tPrayForKirin_Reward[3315794][10]["GlobalId"] = 54341
	tPrayForKirin_Reward[3315794][10]["Pos"] = 2
	tPrayForKirin_Reward[3315794][10]["MaxData"] = 20
	tPrayForKirin_Reward[3315794][10]["FullIndex"] = 3
	-- 天石 - 0.12%
	tPrayForKirin_Reward[3315794][11] = {}
	tPrayForKirin_Reward[3315794][11]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315794][11]["ItemChance"] = 12
	tPrayForKirin_Reward[3315794][11]["RewardEMoney"] = {}
	tPrayForKirin_Reward[3315794][11]["RewardEMoney"]["Value"] = 666 -- 天石, 【需求】天石
	tPrayForKirin_Reward[3315794][11]["RewardEMoney"]["NewEmoneyLog"] = "1000	1673"
	tPrayForKirin_Reward[3315794][11]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315794][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315794][11]["RewardEffect"]["Effect"] = "angelwing"
	tPrayForKirin_Reward[3315794][11]["RewardBroadCast"] = tPrayForKirin_Text["Broadcast"][3315794][11] -- 全服公告
	tPrayForKirin_Reward[3315794][11]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54341, data4）】全服限量:（6）, 超限给编号（3）-
	tPrayForKirin_Reward[3315794][11]["GlobalId"] = 54341
	tPrayForKirin_Reward[3315794][11]["Pos"] = 4
	tPrayForKirin_Reward[3315794][11]["MaxData"] = 6
	tPrayForKirin_Reward[3315794][11]["FullIndex"] = 3
	-- 天石 - 0.08%
	tPrayForKirin_Reward[3315794][12] = {}
	tPrayForKirin_Reward[3315794][12]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315794][12]["ItemChance"] = 8
	tPrayForKirin_Reward[3315794][12]["RewardEMoney"] = {}
	tPrayForKirin_Reward[3315794][12]["RewardEMoney"]["Value"] = 888 -- 天石, 【需求】天石
	tPrayForKirin_Reward[3315794][12]["RewardEMoney"]["NewEmoneyLog"] = "1000	1673"
	tPrayForKirin_Reward[3315794][12]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315794][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315794][12]["RewardEffect"]["Effect"] = "angelwing"
	tPrayForKirin_Reward[3315794][12]["RewardBroadCast"] = tPrayForKirin_Text["Broadcast"][3315794][12] -- 全服公告
	tPrayForKirin_Reward[3315794][12]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54342, data0）】全服限量:（4）, 超限给编号（3）-
	tPrayForKirin_Reward[3315794][12]["GlobalId"] = 54342
	tPrayForKirin_Reward[3315794][12]["Pos"] = 0
	tPrayForKirin_Reward[3315794][12]["MaxData"] = 4
	tPrayForKirin_Reward[3315794][12]["FullIndex"] = 3


	tPrayForKirin_Reward[3315791] = {}
	-- ===17周年预热幸运礼包
	-- ===索引:tPrayForKirin_Reward[3315791]
	-- ===删除: 3315791,1
	tPrayForKirin_Reward[3315791]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tPrayForKirin_Reward[3315791]["DeleteItem"] = {}
	tPrayForKirin_Reward[3315791]["DeleteItem"][1] = {}
	tPrayForKirin_Reward[3315791]["DeleteItem"][1]["Id"] = 3315791 -- 【库】17周年祈福礼盒[属性:9]
	tPrayForKirin_Reward[3315791]["LogId"] = 12001915
	-- 黄色神纹碎片 - 8%
	tPrayForKirin_Reward[3315791][1] = {}
	tPrayForKirin_Reward[3315791][1]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315791][1]["ItemChance"] = 800
	tPrayForKirin_Reward[3315791][1]["RewardItem"] = {}
	tPrayForKirin_Reward[3315791][1]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315791][1]["RewardItem"][1]["Id"] = 3314253 -- 黄色神纹碎片[3314253][属性:8][叠加:10000][金币:0], 【表格】黄色神纹碎片
	tPrayForKirin_Reward[3315791][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 黄色神纹碎片（赠）*1
	tPrayForKirin_Reward[3315791][1]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315791][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315791][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 豹胆气力酒 - 20%
	tPrayForKirin_Reward[3315791][2] = {}
	tPrayForKirin_Reward[3315791][2]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315791][2]["ItemChance"] = 2000
	tPrayForKirin_Reward[3315791][2]["RewardItem"] = {}
	tPrayForKirin_Reward[3315791][2]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315791][2]["RewardItem"][1]["Id"] = 3321077 -- 豹胆气力酒[3321077][属性:0][叠加:10000][金币:0], 【表格】豹胆气力酒
	tPrayForKirin_Reward[3315791][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 豹胆气力酒（赠）*1
	tPrayForKirin_Reward[3315791][2]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315791][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315791][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 虎骨气力酒 - 10%
	tPrayForKirin_Reward[3315791][3] = {}
	tPrayForKirin_Reward[3315791][3]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315791][3]["ItemChance"] = 1000
	tPrayForKirin_Reward[3315791][3]["RewardItem"] = {}
	tPrayForKirin_Reward[3315791][3]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315791][3]["RewardItem"][1]["Id"] = 3314207 -- 虎骨气力酒[3314207][属性:8][叠加:10000][金币:0], 【表格】虎骨气力酒
	tPrayForKirin_Reward[3315791][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 虎骨气力酒（赠）*1
	tPrayForKirin_Reward[3315791][3]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315791][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315791][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 8%
	tPrayForKirin_Reward[3315791][4] = {}
	tPrayForKirin_Reward[3315791][4]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315791][4]["ItemChance"] = 800
	tPrayForKirin_Reward[3315791][4]["RewardItem"] = {}
	tPrayForKirin_Reward[3315791][4]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315791][4]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tPrayForKirin_Reward[3315791][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tPrayForKirin_Reward[3315791][4]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315791][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315791][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 2%
	tPrayForKirin_Reward[3315791][5] = {}
	tPrayForKirin_Reward[3315791][5]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315791][5]["ItemChance"] = 200
	tPrayForKirin_Reward[3315791][5]["RewardItem"] = {}
	tPrayForKirin_Reward[3315791][5]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315791][5]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tPrayForKirin_Reward[3315791][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tPrayForKirin_Reward[3315791][5]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315791][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315791][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 8%
	tPrayForKirin_Reward[3315791][6] = {}
	tPrayForKirin_Reward[3315791][6]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315791][6]["ItemChance"] = 800
	tPrayForKirin_Reward[3315791][6]["RewardItem"] = {}
	tPrayForKirin_Reward[3315791][6]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315791][6]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tPrayForKirin_Reward[3315791][6]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tPrayForKirin_Reward[3315791][6]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315791][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315791][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 秘制免费修炼丹 - 8%
	tPrayForKirin_Reward[3315791][7] = {}
	tPrayForKirin_Reward[3315791][7]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315791][7]["ItemChance"] = 800
	tPrayForKirin_Reward[3315791][7]["RewardItem"] = {}
	tPrayForKirin_Reward[3315791][7]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315791][7]["RewardItem"][1]["Id"] = 3002926 -- 秘制免费修炼丹[3002926][属性:11][叠加:10000][金币:0], 【表格】秘制免费修炼丹
	tPrayForKirin_Reward[3315791][7]["RewardItem"][1]["Attr"] = "0 1" -- 秘制免费修炼丹*1
	tPrayForKirin_Reward[3315791][7]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315791][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315791][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3 - 4%
	tPrayForKirin_Reward[3315791][8] = {}
	tPrayForKirin_Reward[3315791][8]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315791][8]["ItemChance"] = 400
	tPrayForKirin_Reward[3315791][8]["RewardItem"] = {}
	tPrayForKirin_Reward[3315791][8]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315791][8]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tPrayForKirin_Reward[3315791][8]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tPrayForKirin_Reward[3315791][8]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315791][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315791][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1 - 18%
	tPrayForKirin_Reward[3315791][9] = {}
	tPrayForKirin_Reward[3315791][9]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315791][9]["ItemChance"] = 1800
	tPrayForKirin_Reward[3315791][9]["RewardItem"] = {}
	tPrayForKirin_Reward[3315791][9]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315791][9]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tPrayForKirin_Reward[3315791][9]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*1
	tPrayForKirin_Reward[3315791][9]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315791][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315791][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2 - 14%
	tPrayForKirin_Reward[3315791][10] = {}
	tPrayForKirin_Reward[3315791][10]["RandomItemChanceType"] = 2
	tPrayForKirin_Reward[3315791][10]["ItemChance"] = 1400
	tPrayForKirin_Reward[3315791][10]["RewardItem"] = {}
	tPrayForKirin_Reward[3315791][10]["RewardItem"][1] = {}
	tPrayForKirin_Reward[3315791][10]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tPrayForKirin_Reward[3315791][10]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tPrayForKirin_Reward[3315791][10]["RewardEffect"] = {}
	tPrayForKirin_Reward[3315791][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[3315791][10]["RewardEffect"]["Effect"] = "angelwing"


	tPrayForKirin_Reward[26063] = {}
	-- ===清扫福地
	-- ===索引:tPrayForKirin_Reward[26063]
	tPrayForKirin_Reward[26063]["LogId"] = 12001915
	tPrayForKirin_Reward[26063]["RewardItem"] = {}
	tPrayForKirin_Reward[26063]["RewardItem"][1] = {}
	tPrayForKirin_Reward[26063]["RewardItem"][1]["Id"] = 3315792 -- 灵珠碎片[3315792][属性:9][叠加:10000][金币:0], 【表格】100祝福精粹
	tPrayForKirin_Reward[26063]["RewardItem"][1]["Attr"] = "0 100" -- 灵珠碎片*100
	tPrayForKirin_Reward[26063]["RewardEffect"] = {}
	tPrayForKirin_Reward[26063]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tPrayForKirin_Reward[26063]["RewardEffect"]["Effect"] = "angelwing"



---------------------------------------------逻辑模块--------------------------------------------
-- 阶段一
function PrayForKirin_ActivityTime1()
	local nPrayForKirin_UserId = Get_UserId()

	-- 对话则面板任务完成
	PrayForKirin_AddTask(1,nPrayForKirin_UserId)

	-- 杀怪奖励领取
	local nPrayForKirin_Index = tPrayForKirin_Cont["MainNPCId"]
	local nPrayForKirin_Event = tPrayForKirin_Stc[nPrayForKirin_Index]["EventType"]
	local nPrayForKirin_Type = tPrayForKirin_Stc[nPrayForKirin_Index]["DataType"]

	-- 判断当天是否已领取
	if Task_StcInterval(nPrayForKirin_Event,nPrayForKirin_Type,1,4,nPrayForKirin_UserId) then
		tNpcGossip[26063]["tOption1-3"] = {132,133,134}
	else
		tNpcGossip[26063]["tOption1-3"] = {136,133,134}
	end

	-- 获取贡献等级
	local nPrayForKirin_StcIndex = tPrayForKirin_Cont["AnniversaryItem"][3]
	local nPrayForKirin_Data = PrayForKirin_GetStcValue(nPrayForKirin_StcIndex,nPrayForKirin_UserId) or 0
	local nPrayForKirin_Level = PrayForKirin_GetLevel(nPrayForKirin_Data)

	tNpcGossip[26063]["Text521"] = string.format(tPrayForKirin_Text[26063]["Text521"],nPrayForKirin_Data)
	tNpcGossip[26063]["Text514"] = string.format(tPrayForKirin_Text[26063]["Text514"],nPrayForKirin_Level)

	-- 判断满级
	local nPrayForKirin_MaxLevel = tPrayForKirin_Cont["MaxLevel"]
	local nPrayForKirin_MaxLevelNum = tPrayForKirin_Level[17]
	local nPrayForKirin_MoreLevelNum = nPrayForKirin_Data - nPrayForKirin_MaxLevelNum
	if nPrayForKirin_Level >= nPrayForKirin_MaxLevel then
		tNpcGossip[26063]["Text522"] = string.format(tPrayForKirin_Text[26063]["Text522"],nPrayForKirin_MoreLevelNum)
		tNpcGossip[26063]["Text1-3"] = {111,131,132,133,134,135,512,522,513,514,520,516,517,518,519,136,137}
	else
		--累计到%s再来领取奖励
		local nPrayForKirin_NextLevel = nPrayForKirin_Level+1
		local nPrayForKirin_NeedScore = tPrayForKirin_Level[nPrayForKirin_NextLevel] - nPrayForKirin_Data
		
		tNpcGossip[26063]["Text515"] = string.format(tPrayForKirin_Text[26063]["Text515"],nPrayForKirin_NeedScore)
		tNpcGossip[26063]["Text1-3"] = {111,131,132,133,134,135,512,521,513,514,515,518,519,136,137}
	end
end

-- 清扫福地
function PrayForKirin_MonsterTask()
	local nPrayForKirin_UserId = Get_UserId()
	local nPrayForKirin_TaskId = 0

	--判断激情服
	if SpecialServer_ChkNoGiftServer() then 
		nPrayForKirin_TaskId = tPrayForKirin_Cont["NoGiftTaskId"][2]
	else
		nPrayForKirin_TaskId = tPrayForKirin_Cont["TaskId"][2]
	end

	-- 杀怪奖励领取
	local nPrayForKirin_StcIndex1 = tPrayForKirin_Cont["MainNPCId"]
	local nPrayForKirin_Event1 = tPrayForKirin_Stc[nPrayForKirin_StcIndex1]["EventType"]
	local nPrayForKirin_Type1 = tPrayForKirin_Stc[nPrayForKirin_StcIndex1]["DataType"]
	local nPrayForKirin_Data1 = PrayForKirin_GetStcValue(nPrayForKirin_StcIndex1,nPrayForKirin_UserId) or 0

	-- 杀怪数
	local nPrayForKirin_StcIndex2 = tPrayForKirin_Cont["MonsterDrop"]
	local nPrayForKirin_Event2 = tPrayForKirin_Stc[nPrayForKirin_StcIndex2]["EventType"]
	local nPrayForKirin_Type2 = tPrayForKirin_Stc[nPrayForKirin_StcIndex2]["DataType"]

	-- 隔天重置杀怪数
	if Task_StcInterval(nPrayForKirin_Event2,nPrayForKirin_Type2,1,4,nPrayForKirin_UserId) then
		PrayForKirin_SetStcValue(nPrayForKirin_StcIndex2,0,nPrayForKirin_UserId)
	end

	local nPrayForKirin_Data2 = PrayForKirin_GetStcValue(nPrayForKirin_StcIndex2,nPrayForKirin_UserId) or 0

	-- 接受杀怪任务
	local nPrayForKirin_StcIndex3 = tPrayForKirin_Cont["MonsterTask"]
	local nPrayForKirin_Event3 = tPrayForKirin_Stc[nPrayForKirin_StcIndex3]["EventType"]
	local nPrayForKirin_Type3 = tPrayForKirin_Stc[nPrayForKirin_StcIndex3]["DataType"]
	local nPrayForKirin_Data3 = PrayForKirin_GetStcValue(nPrayForKirin_StcIndex3,nPrayForKirin_UserId) or 0

	-- 今日已领取杀怪奖励
	if not Task_StcInterval(nPrayForKirin_Event1,nPrayForKirin_Type1,1,4,nPrayForKirin_UserId) then
		return
	end

	-- 今日是否接受杀怪任务
	if Task_StcInterval(nPrayForKirin_Event3,nPrayForKirin_Type3,1,4,nPrayForKirin_UserId) then
		PrayForKirin_AddStatistic(nPrayForKirin_StcIndex3,1,nPrayForKirin_UserId)
		Sys_SaveActionFestivalLog(tPrayForKirin_Log["Active"][1])
		
		-- 未接受任务则自动接任务
		PrayForKirin_LoginTask(2)
		--隔天清理
		Task_SetTaskDetailCompleteFlag(nPrayForKirin_TaskId,0)
		Task_SetTaskDetailData1(nPrayForKirin_TaskId,0,nPrayForKirin_UserId)
		
		LinkNpcGossipFunc_New(26063,"2-1")
	else
		-- 判断任务完成
		local nPrayForKirin_MonsterDropNum = tPrayForKirin_Cont["MonsterDropNum"]
		if nPrayForKirin_Data2 < nPrayForKirin_MonsterDropNum then
			LinkNpcGossipFunc_New(26063,"2-3")
		else
			LinkNpcGossipFunc_New(26063,"2-4")
		end
	end
end

-- 清扫福地奖励
function PrayForKirin_TaskReward()
	local nPrayForKirin_UserId = Get_UserId()
	local nPrayForKirin_StcIndex = tPrayForKirin_Cont["MainNPCId"]
	local nPrayForKirin_Event = tPrayForKirin_Stc[nPrayForKirin_StcIndex]["EventType"]
	local nPrayForKirin_Type = tPrayForKirin_Stc[nPrayForKirin_StcIndex]["DataType"]

	-- 判断当天是否已领取
	if not Task_StcInterval(nPrayForKirin_Event,nPrayForKirin_Type,1,4,nPrayForKirin_UserId) then
		return
	end

	-- 背包判断
	local nPrayForKirin_Space = RewardTemplate_GetRewardSpace(tPrayForKirin_Reward[nPrayForKirin_StcIndex],nPrayForKirin_UserId)
	if not User_CheckLeftSpace(nPrayForKirin_Space ,nPrayForKirin_UserId) then
		Sys_MsgBox(string.format(tPrayForKirin_Text["Msg"]["NoSpace"],nPrayForKirin_Space),nil,nil,nPrayForKirin_UserId)
		User_TalkChannel2005(string.format(tPrayForKirin_Text["Msg"]["NoSpace"],nPrayForKirin_Space),nPrayForKirin_UserId)
		return
	end

	-- 打掩码发奖
	if PrayForKirin_AddStatistic(nPrayForKirin_StcIndex,1,nPrayForKirin_UserId) then
		RewardTemplate_UseItemAndMsg(tPrayForKirin_Reward[nPrayForKirin_StcIndex],nPrayForKirin_UserId)
		Sys_SaveActionFestivalLog(tPrayForKirin_Log["Active"][2])
	end
end

-- 上交祈福灵珠对白
function PrayForKirin_Hand(nPrayForKirin_NpcId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["PrayForKirin"]["ActivityTime1"]) then
		return
	end

	local nPrayForKirin_UserId = Get_UserId()

	Sys_DialogFace(nPrayForKirin_NpcId)
	Sys_DialogText(tPrayForKirin_Text[nPrayForKirin_NpcId]["Text311"])
	-- Sys_DialogOption(tPrayForKirin_Text[nPrayForKirin_NpcId]["Option311"],"</F>PrayForKirin_Confirm2</N>"..nPrayForKirin_NpcId.."</N>1")
	-- Sys_DialogOption(tPrayForKirin_Text[nPrayForKirin_NpcId]["Option312"],"</F>PrayForKirin_Confirm2</N>"..nPrayForKirin_NpcId.."</N>5")
	Sys_DialogOptEdit(tPrayForKirin_Text[nPrayForKirin_NpcId]["Option313"],6,"PrayForKirin_Confirm</N>"..nPrayForKirin_NpcId)
	Sys_DialogEnd()
end

-- 二次确认（玩家输入）
function PrayForKirin_Confirm(nPrayForKirin_NpcId)
	-- 获取玩家输入的字符
	local nPrayForKirin_UserId = Get_UserId()
	local nPrayForKirin_Input = tonumber(Get_SysAcceptStr())

	if type(nPrayForKirin_Input) ~= "number" or nPrayForKirin_Input <= 0 then
		PrayForKirin_Hand(nPrayForKirin_NpcId)
		return
	end

	PrayForKirin_CostPearl(nPrayForKirin_NpcId, nPrayForKirin_Input,nPrayForKirin_UserId)
end

-- 二次确认（固定数量）
function PrayForKirin_Confirm2(nPrayForKirin_NpcId,nPrayForKirin_Input)
	local nPrayForKirin_UserId = Get_UserId()

	PrayForKirin_CostPearl(nPrayForKirin_NpcId, nPrayForKirin_Input,nPrayForKirin_UserId)
end

-- 上交祈福灵珠
function PrayForKirin_CostPearl()
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["PrayForKirin"]["ActivityTime1"]) then
		return
	end

	-- 获取玩家灵珠数
	local nPrayForKirin_UserId = Get_UserId()
	local nPrayForKirin_ItemId = tPrayForKirin_Cont["AnniversaryItem"][3]
	local nPrayForKirin_PearlNum = Get_CountItemType(nPrayForKirin_ItemId, 0)

	if nPrayForKirin_PearlNum == 0 then
		Sys_MsgBox(tPrayForKirin_Text["Msg"]["NoFragment"])
		return
	end

	if not Item_DelMulItem(nPrayForKirin_ItemId, nPrayForKirin_ItemId, nPrayForKirin_PearlNum) then
		return
	end

	-- 置掩码
	if not PrayForKirin_AddStatistic(nPrayForKirin_ItemId,nPrayForKirin_PearlNum,nPrayForKirin_UserId) then
		return
	end

	-- 全民积累奖池
	local nPrayForKirin_Global = tPrayForKirin_Global[1]
	local nPrayForKirin_GlobalEMoney = Get_SysDynaGlobalData0(tPrayForKirin_Global[1])
	local nPrayForKirin_GlobalAddEMoney = tPrayForKirin_Cont["GlobalAddEMoney"]
	local nPrayForKirin_AddEMoney = nPrayForKirin_GlobalEMoney + nPrayForKirin_GlobalAddEMoney * nPrayForKirin_PearlNum

	Sys_SetSynaGlobalData0(nPrayForKirin_Global,nPrayForKirin_AddEMoney)

	-- 打Log
	Sys_SaveActionFestivalLog(string.format(tPrayForKirin_Log["Active"][3], nPrayForKirin_PearlNum))

	-- 出提示
	local sPrayForKirin_Text = string.format(tPrayForKirin_Text["Msg"]["UseFragment"], nPrayForKirin_PearlNum, nPrayForKirin_PearlNum)
	User_TalkChannel2005(sPrayForKirin_Text,nPrayForKirin_UserId)
	Sys_MsgBox(sPrayForKirin_Text,nil,nil,nPrayForKirin_UserId)

	-- 出对白
	LinkNpcGossipFunc_New(26063,"5-1")

	local nPrayForKirin_CostPearlNum = PrayForKirin_GetStcValue(nPrayForKirin_ItemId,nPrayForKirin_UserId) or 0
	local nPrayForKirin_MaxLevelNum = tPrayForKirin_Level[17]
	local nPrayForKirin_MorePearlNum = nPrayForKirin_CostPearlNum - nPrayForKirin_MaxLevelNum
	local nPrayForKirin_Index = tPrayForKirin_Cont["GlobalReward"]
	local nPrayForKirin_Level = PrayForKirin_GetLevel(nPrayForKirin_CostPearlNum)

	-- 瓜分次数
	PrayForKirin_SetStcValue(nPrayForKirin_Index,nPrayForKirin_Level,nPrayForKirin_UserId)

	-- 判断满级
	if nPrayForKirin_MorePearlNum > 0 then
		-- 超出满级获得17周年祈福礼盒所需贡献值
		local nPrayForKirin_MaxLevelReward = tPrayForKirin_Cont["MaxLevelReward"]
		local nPrayForKirin_MaxRewardNum = math.modf(nPrayForKirin_MorePearlNum / nPrayForKirin_MaxLevelReward)
		local nPrayForKirin_AnniversaryItem1 = tPrayForKirin_Cont["AnniversaryItem"][1]
		local nPrayForKirin_GetAnniversaryItem1 = PrayForKirin_GetStcValue(nPrayForKirin_AnniversaryItem1,nPrayForKirin_UserId) or 0
		local nPrayForKirin_GetMaxRewardNum = nPrayForKirin_MaxRewardNum - nPrayForKirin_GetAnniversaryItem1
		
		if nPrayForKirin_GetMaxRewardNum > 0 then
			-- 超出满级获得17周年祈福礼盒
			for i = 1,nPrayForKirin_GetMaxRewardNum do
				if PrayForKirin_AddStatistic(nPrayForKirin_AnniversaryItem1, 1, nPrayForKirin_UserId) then
					PrayForKirin_Email(2,nPrayForKirin_UserId)
					Sys_SaveActionFestivalLog(string.format(tPrayForKirin_Log["Active"][5], 1))
				end
			end
		end
	end

	-- 充能水晶等级
	PrayForCharge_Uplev()
end

-- 查看贡献值
function PrayForKirin_ViewValue()
	local nPrayForKirin_UserId = Get_UserId()

	-- 获取贡献等级
	local nPrayForKirin_StcIndex = tPrayForKirin_Cont["AnniversaryItem"][3]
	local nPrayForKirin_Data = PrayForKirin_GetStcValue(nPrayForKirin_StcIndex,nPrayForKirin_UserId) or 0
	local nPrayForKirin_Level = PrayForKirin_GetLevel(nPrayForKirin_Data)

	tNpcGossip[26063]["Text521"] = string.format(tPrayForKirin_Text[26063]["Text521"],nPrayForKirin_Data)
	tNpcGossip[26063]["Text514"] = string.format(tPrayForKirin_Text[26063]["Text514"],nPrayForKirin_Level)

	-- 判断满级
	local nPrayForKirin_MaxLevel = tPrayForKirin_Cont["MaxLevel"]
	local nPrayForKirin_MaxLevelNum = tPrayForKirin_Level[17]
	local nPrayForKirin_MoreLevelNum = nPrayForKirin_Data - nPrayForKirin_MaxLevelNum
	if nPrayForKirin_Level >= nPrayForKirin_MaxLevel then
		tNpcGossip[26063]["Text522"] = string.format(tPrayForKirin_Text[26063]["Text522"],nPrayForKirin_MoreLevelNum)
		tNpcGossip[26063]["Text5-1"] = {111,511,512,522,513,514,520,516,517,518,519}
	else
		--累计到%s再来领取奖励
		local nPrayForKirin_NextLevel = nPrayForKirin_Level+1
		local nPrayForKirin_NeedScore = tPrayForKirin_Level[nPrayForKirin_NextLevel] - nPrayForKirin_Data
		
		tNpcGossip[26063]["Text515"] = string.format(tPrayForKirin_Text[26063]["Text515"],nPrayForKirin_NeedScore)
		tNpcGossip[26063]["Text5-1"] = {111,511,512,521,513,514,515,518,519}
	end
end

-- 阶段二
function PrayForKirin_ActivityTime2()
	local nPrayForKirin_UserId = Get_UserId()
	local nPrayForKirin_GlobalEMoney = Get_SysDynaGlobalData0(tPrayForKirin_Global[1])

	-- 获取剩余瓜分次数
	local nPrayForKirin_StcIndex = tPrayForKirin_Cont["GlobalReward"]
	local nPrayForKirin_RewardNum = PrayForKirin_GetStcValue(nPrayForKirin_StcIndex,nPrayForKirin_UserId) or 0

	if nPrayForKirin_RewardNum == 0 then
		tNpcGossip[26063]["tOption1-4"] = {142}
	else
		tNpcGossip[26063]["tOption1-4"] = {141,142}
	end

	tNpcGossip[26063]["Text145"] = string.format(tPrayForKirin_Text[26063]["Text145"],nPrayForKirin_GlobalEMoney)
	tNpcGossip[26063]["Option141"] = string.format(tPrayForKirin_Text[26063]["Option141"],nPrayForKirin_RewardNum)
end

-- 领取周年庆典天石
function PrayForKirin_EMoneyEmail()
	local nPrayForKirin_UserId = Get_UserId()

	-- 获取剩余瓜分次数
	local nPrayForKirin_StcIndex = tPrayForKirin_Cont["GlobalReward"]
	local nPrayForKirin_RewardNum = PrayForKirin_GetStcValue(nPrayForKirin_StcIndex,nPrayForKirin_UserId) or 0

	-- 无剩余瓜分次数
	if nPrayForKirin_RewardNum == 0 then
		return
	end

	if PrayForKirin_AddStatistic(nPrayForKirin_StcIndex,-1,nPrayForKirin_UserId) then
		PrayForKirin_Email(1,nPrayForKirin_UserId)
		Sys_SaveActionFestivalLog(tPrayForKirin_Log["Active"][4])
	end
end

-- 获取贡献等级
function PrayForKirin_GetLevel(nPrayForKirin_Data)
	local nPrayForKirin_Level = 1
	for i,v in pairs(tPrayForKirin_Level) do
		if nPrayForKirin_Data >= v then
			nPrayForKirin_Level = i
		end
	end

	return nPrayForKirin_Level
end

--灵珠碎片对白
function PrayForKirin_ItemDialogText(nPrayForKirin_ItemId,nPrayForKirin_Choose)
	-- 判断物品在背包
	local nPrayForKirin_UserId = Get_UserId()
	if not Item_ChkItem(nPrayForKirin_ItemId) then
		return
	end

	-- 过期删除
	if not PrayForKirin_ChkTimeOut(nPrayForKirin_ItemId,sPrayForKirin_ItemName) then
		return
	end

	LinkItemGossipFunc_New(nPrayForKirin_ItemId,"1-1")
end

--灵珠碎片
function PrayForKirin_ExchangePearl(nPrayForKirin_ItemId,nPrayForKirin_Choose)
	--获得灵珠碎片数量
	local nPrayForKirin_UserId = Get_UserId()
	local nPrayForKirin_Count = Get_CountItemType(nPrayForKirin_ItemId, 0)

	if nPrayForKirin_Count < 20 then
		User_TalkChannel2005(tPrayForKirin_Text["Msg"]["Fragment"]["NoFragment"],nPrayForKirin_UserId)
		Sys_MsgBox(tPrayForKirin_Text["Msg"]["Fragment"]["NoFragment"],nil,nil,nPrayForKirin_UserId)
		return
	end

	local nPrayForKirin_Num = math.modf(nPrayForKirin_Count / 20)

	-- 判断背包空间
	local nPrayForKirin_Space = RewardTemplate_GetRandomSpace(tPrayForKirin_Reward,nPrayForKirin_ItemId)
	if nPrayForKirin_Choose == 2 then
		nPrayForKirin_Space = nPrayForKirin_Space * nPrayForKirin_Num
	end
	if not PrayForKirin_CheckLeftSpace(nPrayForKirin_Space,nPrayForKirin_UserId) then
		return
	end

	if nPrayForKirin_Choose == 1 then
		nPrayForKirin_Num = 1
	end

	-- 打掩码发奖
	for i = 1,nPrayForKirin_Num do
		RewardTemplate_RandomReward(tPrayForKirin_Reward,nPrayForKirin_ItemId,nPrayForKirin_UserId)
	end
end

-- 百万天石福袋
function PrayForKirin_EMoneyBag(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
	-- 判断物品在背包
	local nPrayForKirin_UserId = Get_UserId()
	if not Item_ChkItem(nPrayForKirin_ItemId) then
		return
	end

	--过期删除
	if not Sys_ChkFullTime(tActivityTime["PrayForKirin"]["ActivityTime2"]) then
		local nPrayForKirin_ItemNum = Get_CountItemType(nPrayForKirin_ItemId,0)
		if Item_DelMulItem(nPrayForKirin_ItemId,nPrayForKirin_ItemId,nPrayForKirin_ItemNum) then
			Sys_SaveActionRewardLog(string.format(tPrayForKirin_Log["Del"],nPrayForKirin_ItemId,1))
			User_TalkChannel2005(string.format(tPrayForKirin_Text["Msg"]["ItemOverTime"],sPrayForKirin_ItemName))
			Sys_MsgBox(string.format(tPrayForKirin_Text["Msg"]["ItemOverTime"],sPrayForKirin_ItemName))
		end
	end

	-- 判断天石上限
	local nPrayForKirin_EMoney = tPrayForKirin_Reward[nPrayForKirin_ItemId][12]["RewardEMoney"]["Value"]
	if Get_UserEMoney() + nPrayForKirin_EMoney > G_User_MaxEmoney then
		User_TalkChannel2005(tPrayForKirin_Text["Msg"]["NoMoneySpace"],nPrayForKirin_UserId)
		Sys_MsgBox(tPrayForKirin_Text["Msg"]["NoMoneySpace"],nil,nil,nPrayForKirin_UserId)
		return
	end

	-- 判断赠点天石上限
	local nPrayForKirin_MonoEMoney = tPrayForKirin_Reward[nPrayForKirin_ItemId][7]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nPrayForKirin_MonoEMoney > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tPrayForKirin_Text["Msg"]["NoMoneyMonoSpace"],nPrayForKirin_UserId)
		Sys_MsgBox(tPrayForKirin_Text["Msg"]["NoMoneyMonoSpace"],nil,nil,nPrayForKirin_UserId)
		return
	end

	-- 全服公告
	local sPrayForKirin_UserName = Get_UserName(nPrayForKirin_UserId)
	for i = 1,12 do
		if tPrayForKirin_Reward[nPrayForKirin_ItemId][i]["RewardBroadCast"] ~= nil then
			tPrayForKirin_Reward[nPrayForKirin_ItemId][i]["RewardBroadCast"] = string.format(tPrayForKirin_Text["Broadcast"][nPrayForKirin_ItemId][i], sPrayForKirin_UserName)
		end
	end

	-- 发奖
	RewardTemplate_RandomReward(tPrayForKirin_Reward,nPrayForKirin_ItemId)
end

-- 简单礼包使用
function PrayForKirin_UseItem(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
	local nPrayForKirin_UserId = Get_UserId()
	-- 判断物品在背包
	if not Item_ChkItem(nPrayForKirin_ItemId) then
		return
	end
	
	-- 判断背包空间
	local nPrayForKirin_Space = RewardTemplate_GetRewardSpace(tPrayForKirin_Reward[nPrayForKirin_ItemId])
	if not PrayForKirin_CheckLeftSpace(nPrayForKirin_Space,nPrayForKirin_UserId) then
		return
	end
	
	-- 发奖
	RewardTemplate_UseItemAndMsg(tPrayForKirin_Reward[nPrayForKirin_ItemId])
end

-- 随机礼包使用
function PrayForKirin_RandomItem(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
	local nPrayForKirin_UserId = Get_UserId()
	-- 判断物品在背包
	if not Item_ChkItem(nPrayForKirin_ItemId) then
		return
	end

	-- 过期删除
	if not PrayForKirin_ChkTimeOut(nPrayForKirin_ItemId,sPrayForKirin_ItemName) then
		return
	end

	-- 判断背包空间
	local nPrayForKirin_Space = RewardTemplate_GetRandomSpace(tPrayForKirin_Reward,nPrayForKirin_ItemId)
	if not PrayForKirin_CheckLeftSpace(nPrayForKirin_Space,nPrayForKirin_UserId) then
		return
	end
	
	-- 发奖
	RewardTemplate_RandomReward(tPrayForKirin_Reward,nPrayForKirin_ItemId)
end

-- 多次礼包使用
function PrayForKirin_UseLimitItem(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
	local nPrayForKirin_UserId = Get_UserId()
	-- 判断物品在背包
	if not Item_ChkItem(nPrayForKirin_ItemId) then
		return
	end
	
	-- 判断使用次数
	local nPrayForKirin_UseNum = PrayForKirin_GetStcValue(nPrayForKirin_ItemId,nPrayForKirin_UserId) or 0
	local nPrayForKirin_MaxNum = tPrayForKirin_Stc[nPrayForKirin_ItemId]["LimitData"]
	local nPrayForKirin_NextNum = nPrayForKirin_UseNum + 1
	
	-- 没有使用次数
	if nPrayForKirin_UseNum >= nPrayForKirin_MaxNum then
		Item_DelItem(nPrayForKirin_ItemId)
		return
	end
	
	-- 判断隔天
	if not PrayForKirin_ClearStcInterval(nPrayForKirin_ItemId,nPrayForKirin_UserId) then
		User_TalkChannel2005(tPrayForKirin_Text["Msg"]["Already"],nPrayForKirin_UserId)
		Sys_MsgBox(tPrayForKirin_Text["Msg"]["Already"])
		return
	end
	
	-- 判断是赠点礼包
	if tPrayForKirin_Stc[nPrayForKirin_ItemId]["EMoneyMono"] == 1 then
		--判断赠点天石上限
		local nPrayForKirin_MonoEMoney = tPrayForKirin_Reward[nPrayForKirin_ItemId]["RewardEMoneyMono"]["Value"]
		if Get_UserMonoEMoney() + nPrayForKirin_MonoEMoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tPrayForKirin_Text["Msg"]["NoMoneySpace"],nPrayForKirin_UserId)
			Sys_MsgBox(tPrayForKirin_Text["Msg"]["NoMoneySpace"])
			return
		end
	end
	
	-- 打掩码
	if not PrayForKirin_AddStatistic(nPrayForKirin_ItemId,1,nPrayForKirin_UserId) then
		return
	end
	
	-- 判断最后一次使用
	if nPrayForKirin_NextNum == nPrayForKirin_MaxNum then
		--最后一次使用删除礼包
		if not Item_DelItem(nPrayForKirin_ItemId) then
			return
		end
	end
	
	-- 领奖出提示
	if RewardTemplate_UseItemAndMsg(tPrayForKirin_Reward[nPrayForKirin_ItemId]) then
		User_TalkChannel2005(string.format(tPrayForKirin_Text[nPrayForKirin_ItemId]["GetReward"],nPrayForKirin_NextNum),nPrayForKirin_UserId)
		Sys_MsgBox(string.format(tPrayForKirin_Text[nPrayForKirin_ItemId]["GetReward"],nPrayForKirin_NextNum))
	end
end

-- 过期删除
function PrayForKirin_ChkTimeOut(nPrayForKirin_ItemId,sPrayForKirin_NowItemName)
	local sPrayForKirin_ItemName = sPrayForKirin_NowItemName or Get_ItemtypeName(nPrayForKirin_ItemId)

	if not Sys_ChkFullTime(tActivityTime["PrayForKirin"]["ActivityTime1"]) then
		local nPrayForKirin_ItemNum = Get_CountItemType(nPrayForKirin_ItemId,0)
		if Item_DelMulItem(nPrayForKirin_ItemId,nPrayForKirin_ItemId,nPrayForKirin_ItemNum) then
			Sys_SaveActionRewardLog(string.format(tPrayForKirin_Log["Del"],nPrayForKirin_ItemId,1))
			User_TalkChannel2005(string.format(tPrayForKirin_Text["Msg"]["ItemOverTime"],sPrayForKirin_ItemName))
			Sys_MsgBox(string.format(tPrayForKirin_Text["Msg"]["ItemOverTime"],sPrayForKirin_ItemName))
		end
		return false
	else
		return true
	end
end

-- 判断背包空间
function PrayForKirin_CheckLeftSpace(nPrayForKirin_Space,nPrayForKirin_UserId)
	if not User_CheckLeftSpace(nPrayForKirin_Space,nPrayForKirin_UserId) then
		Sys_MsgBox(string.format(tPrayForKirin_Text["Msg"]["NoSpace"],nPrayForKirin_Space),nil,nil,nPrayForKirin_UserId)
		User_TalkChannel2005(string.format(tPrayForKirin_Text["Msg"]["NoSpace"],nPrayForKirin_Space),nPrayForKirin_UserId)
		return false
	else
		return true
	end
end

-- 获取掩码值
function PrayForKirin_GetStcValue(nPrayForKirin_Index,nPrayForKirin_UserId)
	local nPrayForKirin_Event = tPrayForKirin_Stc[nPrayForKirin_Index]["EventType"]
	local nPrayForKirin_Type = tPrayForKirin_Stc[nPrayForKirin_Index]["DataType"]
	local nPrayForKirin_Data = Get_UserStatisticValue(nPrayForKirin_Event,nPrayForKirin_Type,nPrayForKirin_UserId) or 0

	return nPrayForKirin_Data
end

-- 设置掩码值（定值）
function PrayForKirin_SetStcValue(nPrayForKirin_Index,nPrayForKirin_Data,nPrayForKirin_UserId)
	local nPrayForKirin_Event = tPrayForKirin_Stc[nPrayForKirin_Index]["EventType"]
	local nPrayForKirin_Type = tPrayForKirin_Stc[nPrayForKirin_Index]["DataType"]

	-- 打掩码、时间戳
	if Task_SetStatistic(nPrayForKirin_Event,nPrayForKirin_Type,nPrayForKirin_Data,1,nPrayForKirin_UserId) then 
		Task_SetStcTimestamp(nPrayForKirin_Event,nPrayForKirin_Type,0,nPrayForKirin_UserId)
		return true
	else
		return false
	end
end

-- 设置掩码值（增加）
function PrayForKirin_AddStatistic(nPrayForKirin_Index,nPrayForKirin_Data,nPrayForKirin_UserId)
	local nPrayForKirin_Event = tPrayForKirin_Stc[nPrayForKirin_Index]["EventType"]
	local nPrayForKirin_Type = tPrayForKirin_Stc[nPrayForKirin_Index]["DataType"]

	-- 打掩码、时间戳
	if Task_AddStatistic(nPrayForKirin_Event,nPrayForKirin_Type,nPrayForKirin_Data,1,nPrayForKirin_UserId) then 
		Task_SetStcTimestamp(nPrayForKirin_Event,nPrayForKirin_Type,0,nPrayForKirin_UserId)
		return true
	else
		return false
	end
end

-- 隔天重置
function PrayForKirin_ClearStcInterval(nPrayForKirin_Index,nPrayForKirin_UserId)
	local nPrayForKirin_Event = tPrayForKirin_Stc[nPrayForKirin_Index]["EventType"]
	local nPrayForKirin_Type = tPrayForKirin_Stc[nPrayForKirin_Index]["DataType"]

	-- 判断隔天
	if Task_StcInterval(nPrayForKirin_Event,nPrayForKirin_Type,1,4,nPrayForKirin_UserId) then
		Task_SetStatistic(nPrayForKirin_Event,nPrayForKirin_Type,0,1,nPrayForKirin_UserId)
		Task_SetStcTimestamp(nPrayForKirin_Event,nPrayForKirin_Type,0,nPrayForKirin_UserId)
		return true
	else
		return false
	end
end

-- 道具寻路
function PrayForKirin_ItemPathFind(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
	-- 过期删除
	if not PrayForKirin_ChkTimeOut(nPrayForKirin_ItemId,sPrayForKirin_ItemName) then
		return
	end

	-- 判断物品在背包
	local nPrayForKirin_UserId = Get_UserId()
	if not Item_ChkItem(nPrayForKirin_ItemId) then
		return
	end

	local nPrayForKirin_NpcId = tPrayForKirin_Cont["MainNPCId"]
	PrayForKirin_Where(nPrayForKirin_NpcId)
end

-- 寻路
function PrayForKirin_Where(nPrayForKirin_NpcId)
	-- 获取玩家和NPC的地图ID
	local nPrayForKirin_UserId = Get_UserId()
	local nPrayForKirin_NpcMap = Get_NpcMapID(nPrayForKirin_NpcId)
	local nPrayForKirin_NowMapId = Get_UserMapId(nPrayForKirin_UserId)

	-- 判断是否在一张地图
	if nPrayForKirin_NowMapId == nPrayForKirin_NpcMap then
		NpcPosition_PathFind(nPrayForKirin_NpcId)
		return true
	else
		return false
	end
end

--邮件发奖
function PrayForKirin_Email(nPrayForKirin_Choose,nPrayForKirin_UserId)
	local nPrayForKirin_ActionId = tPrayForKirin_Cont["AnniversaryAction"][nPrayForKirin_Choose]
	local sPrayForKirin_Sender = tPrayForKirin_Text["Mail"][nPrayForKirin_Choose]["Sender"]
	local sPrayForKirin_Title = tPrayForKirin_Text["Mail"][nPrayForKirin_Choose]["Title"]
	local sPrayForKirin_Content = tPrayForKirin_Text["Mail"][nPrayForKirin_Choose]["Content"]

	if Sys_SendMail(nPrayForKirin_UserId,0,0,nPrayForKirin_ActionId,0,30,sPrayForKirin_Sender,sPrayForKirin_Title,sPrayForKirin_Content) then
		return true
	else
		return false
	end
end

-- 接寻路任务
function PrayForKirin_Login()
	local nPrayForKirin_UserId = Get_UserId()

	PrayForKirin_LoginTask(1)

	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["PrayForKirin"]["ActivityTime1"]) then
		PrayForKirin_LoginTask(2)
	end
end

-- 自动接任务
function PrayForKirin_LoginTask(nPrayForKirin_Choose)
	local nPrayForKirin_UserId = Get_UserId()
	local nPrayForKirin_TaskId = 0

	--判断激情服
	if SpecialServer_ChkNoGiftServer() then 
		nPrayForKirin_TaskId = tPrayForKirin_Cont["NoGiftTaskId"][nPrayForKirin_Choose]
	else
		nPrayForKirin_TaskId = tPrayForKirin_Cont["TaskId"][nPrayForKirin_Choose]
	end

	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["PrayForKirin"]["ActivityTime1"]) then
		if Task_ChkTaskDetail(nPrayForKirin_TaskId,0) then
			Task_DelTaskDetail(nPrayForKirin_TaskId)
		end
		return
	end

	-- 未接受任务则自动接任务
	if not Task_ChkTaskDetail(nPrayForKirin_TaskId,0) then
		Task_AddTaskDetail(nPrayForKirin_TaskId,0)
		-- 播放光效
		User_EffectAdd("self",tPrayForKirin_Cont["TaskEffect"])
	end
end

-- 增加任务值
function PrayForKirin_AddTask(nPrayForKirin_Choose,nNowUserId)
	local nPrayForKirin_UserId = nNowUserId or Get_UserId()
	local nPrayForKirin_TaskId = 0

	--判断激情服
	if SpecialServer_ChkNoGiftServer() then 
		nPrayForKirin_TaskId = tPrayForKirin_Cont["NoGiftTaskId"][nPrayForKirin_Choose]
	else
		nPrayForKirin_TaskId = tPrayForKirin_Cont["TaskId"][nPrayForKirin_Choose]
	end

	-- 判断是否接受任务
	if not Task_ChkTaskDetail(nPrayForKirin_TaskId,nPrayForKirin_UserId) then
		return
	end

	local nPrayForKirin_Data = Get_TaskDetailData1(nPrayForKirin_TaskId, nPrayForKirin_UserId) or 0

	Task_SetTaskDetailData1(nPrayForKirin_TaskId,nPrayForKirin_Data + 1, nPrayForKirin_UserId)

	-- 任务是否完成
	PrayForKirin_TaskComplete(nPrayForKirin_TaskId,nPrayForKirin_UserId)
end

-- 任务完成
function PrayForKirin_TaskComplete(nPrayForKirin_TaskId,nNowUserId)
	local nPrayForKirin_UserId = nNowUserId or Get_UserId()

	-- 判断是否接受任务
	if not Task_ChkTaskDetail(nPrayForKirin_TaskId,nPrayForKirin_UserId) then
		return
	end

	-- 判断任务完成
	if Task_ChkTaskDetailValue(nPrayForKirin_TaskId,"CompleteFlag",">=",1,nPrayForKirin_UserId) then
		return
	end

	local nPrayForKirin_Data = Get_TaskDetailData1(nPrayForKirin_TaskId, nPrayForKirin_UserId)
	local nPrayForKirin_Complete = tPrayForKirin_Complete[nPrayForKirin_TaskId]

	if nPrayForKirin_Data ~= nil and nPrayForKirin_Data >= nPrayForKirin_Complete then
		Task_SetTaskDetailCompleteFlag(nPrayForKirin_TaskId,1, nPrayForKirin_UserId)
		-- 播放光效
		User_EffectAdd("self",tPrayForKirin_Cont["TaskEffect"])
	end
end



---------------------------------------------NPC模块---------------------------------------------
--瑞麟
tNpcFace[2416] = 2867
tNpcGossip[26063]= tNpcGossip[26063] or DefaultNpc:new{}
tNpcGossip[26063]["DialogueText"] = tPrayForKirin_Text[26063]
tNpcGossip[26063]["OptionHidden"] = 1

-- 活动前对白
tNpcGossip[26063]["Text1-1"] = {111,112,113,114,115,116,117,115,118,119,120}
tNpcGossip[26063]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["PrayForKirin"]["ActivityTime"])
end
tNpcGossip[26063]["tOption1-1"] = {111}

-- 活动后对白
tNpcGossip[26063]["Text1-2"] = {111,121}
tNpcGossip[26063]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["PrayForKirin"]["ActivityTime"])
end
tNpcGossip[26063]["tOption1-2"] = {121}

--活动中 ===阶段一
tNpcGossip[26063]["Text1-3"] = {111,131,132,133,134,135,512,513,514,515,516,517,518,519,520,136,137}
tNpcGossip[26063]["ChkFunc1-3"]= function()
	PrayForKirin_ActivityTime1()
	
	return Sys_ChkFullTime(tActivityTime["PrayForKirin"]["ActivityTime1"])
end
tNpcGossip[26063]["tOption1-3"] = {132,133,134,136}
tNpcGossip[26063]["OptionFunc132"] = "PrayForKirin_MonsterTask"-- 清扫福地
tNpcGossip[26063]["OptionPoint133"] = "3-1"-- 上交祈福灵珠
tNpcGossip[26063]["OptionPoint134"] = "4-1"-- 查看周年庆典奖励
tNpcGossip[26063]["OptionPoint136"] = "2-5"-- 任务完成闲聊对白

--活动中 ===阶段二
tNpcGossip[26063]["Text1-4"] = {111,141,142,143,144,145,146,118,147}
tNpcGossip[26063]["ChkFunc1-4"]= function()
	PrayForKirin_ActivityTime2()
	
	return Sys_ChkFullTime(tActivityTime["PrayForKirin"]["ActivityTime2"])
end
tNpcGossip[26063]["tOption1-4"] = {141,142}
tNpcGossip[26063]["OptionFunc141"] = "PrayForKirin_EMoneyEmail"-- 领取周年庆典天石


-- 接、清扫福地
tNpcGossip[26063]["Text2-1"] = {111,211,212,213,214,215}
tNpcGossip[26063]["tOption2-1"] = {211}
tNpcGossip[26063]["OptionPoint211"] = "2-2"-- 接受任务

--【成功】
tNpcGossip[26063]["Text2-2"] = {111,221}
tNpcGossip[26063]["tOption2-2"] = {221,222}
tNpcGossip[26063]["OptionFunc221"] = "Anni17PreheatMap_Enter"--立即前往

--【已领取未完成显示】
tNpcGossip[26063]["Text2-3"] = {111,231,232}
tNpcGossip[26063]["tOption2-3"] = {231,232}
tNpcGossip[26063]["OptionFunc231"] = "Anni17PreheatMap_Enter"--立即前往

--【交任务对白】
tNpcGossip[26063]["Text2-4"] = {111,241,242}
tNpcGossip[26063]["tOption2-4"] = {241}
tNpcGossip[26063]["OptionFunc241"] = "PrayForKirin_TaskReward"--收下奖励

--【任务完成闲聊对白】
tNpcGossip[26063]["Text2-5"] = {111,251}
tNpcGossip[26063]["tOption2-5"] = {251,252}
tNpcGossip[26063]["OptionFunc251"] = "Anni17PreheatMap_Enter"--立即前往

--接、上交祈福灵珠
tNpcGossip[26063]["Text3-1"] = {111,311}
tNpcGossip[26063]["tOption3-1"] = {311}
tNpcGossip[26063]["OptionFunc311"] = "PrayForKirin_CostPearl"-- 上交祈福灵珠

--接、查看周年庆典奖励
tNpcGossip[26063]["Text4-1"] = {111,411,412,413,414,415,118,416,417}
tNpcGossip[26063]["ChkFunc4-1"]= function()
	local nPrayForKirin_UserId = Get_UserId()
	local nPrayForKirin_GlobalEMoney = Get_SysDynaGlobalData0(tPrayForKirin_Global[1])

	tNpcGossip[26063]["Text413"] = string.format(tPrayForKirin_Text[26063]["Text413"],nPrayForKirin_GlobalEMoney)
	return true
end
tNpcGossip[26063]["tOption4-1"] = {411}

--接、查看贡献值
tNpcGossip[26063]["Text5-1"] = {111,511,512,513,514,515,516,517,518,519,520,521,522}
tNpcGossip[26063]["ChkFunc5-1"]= function()
	PrayForKirin_ViewValue()
	
	return true
end
tNpcGossip[26063]["tOption5-1"] = {511}



---------------------------------------------物品模板---------------------------------------------
-- 17周年祈福礼盒
tItem[3315791] = tItem[3315791] or {}
tItem[3315791]["Function"]=function(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
	PrayForKirin_RandomItem(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
end

-- 灵珠碎片
tItemFace[3315792] = 2871
tItem[3315792] = tItem[3315792] or {}
tItem[3315792]["DialogueText"] = tPrayForKirin_Text[3315792]
tItem[3315792]["Text1-1"] = {111,112}
tItem[3315792]["Function"]=function(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
	PrayForKirin_ItemDialogText(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
end
tItem[3315792]["tOption1-1"] = {111,112}
tItem[3315792]["OptionFunc111"] = "PrayForKirin_ExchangePearl</N>3315792</N>1"--合成1个
tItem[3315792]["OptionFunc112"] = "PrayForKirin_ExchangePearl</N>3315792</N>2"--一键合成所有

-- 祈福灵珠
tItem[3315793] = tItem[3315793] or {}
tItem[3315793]["Function"]=function(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
	PrayForKirin_ItemPathFind(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
end

-- 百万天石福袋
tItem[3315794] = tItem[3315794] or {}
tItem[3315794]["Function"]=function(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
	PrayForKirin_EMoneyBag(nPrayForKirin_ItemId,sPrayForKirin_ItemName)
end


---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,PrayForKirin_Login)


---------------------------------------------时间自检---------------------------------------------
--清理每日限量
tGlobalData_Info[54340] = {}
tGlobalData_Info[54340]["Time"] = {}
tGlobalData_Info[54340]["Time"]["ActivityTime"] = tActivityTime["PrayForKirin"]["ActivityTime"]
tGlobalData_Info[54340]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[54340]["Rest"] = {}
tGlobalData_Info[54340]["Rest"]["GlobalId"] = {54340}
tGlobalData_Info[54340]["Rest"]["Pos"] = {1}

