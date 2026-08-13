------------------------------------------------------------------------------------
--Name：            200206[简体征服][更新包]6605更新包
--Creator:      王贤
--Created:     2020-02-06
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 前缀
-- AtivityForPray_
-- logid： 12001847
------------------------------------------------------------------------------------
-- 掩码记录：
-- stc(215,56)	背包信
-- stc(215,57)	每日上线弹窗
-- stc(215,58)	每日正气令使用
-- stc(215,59)	每日活跃度礼包使用
-- stc(215,60)	每日杀怪奖励

-- stc(215,66)	背包信
-- stc(215,67)	每日签到礼包
-- stc(215,68)	每日正气令使用
-- stc(215,69)	每日功勋礼包
-- stc(215,70)	每日怪物掉落
-- stc(215,71)	个人祈福总次数
-- stc(215,72)	个人祈福领奖次数
-- stc(215,73)	全服祈福领奖次数


----------------------------------表配置部分--------------------------------------------
local tAtivityForPray_Data = {}

tAtivityForPray_Data["Web"] = "https://www.facebook.com/ConquerOnline/"

-- 领取所需全服祈福次数
tAtivityForPray_Data["NeedPrayNum"] = {}
tAtivityForPray_Data["NeedPrayNum"][1] = 500
tAtivityForPray_Data["NeedPrayNum"][2] = 1500
tAtivityForPray_Data["NeedPrayNum"][3] = 3000
tAtivityForPray_Data["NeedPrayNum"][4] = 5000

-- 需要的金币
tAtivityForPray_Data["NeedMoney"] = 150000

-- 引导图ID
tAtivityForPray_Data["GuiId"] = 1075

-- 祈福道具
tAtivityForPray_Data["ItemId"] = 3329639
tAtivityForPray_Data["ItemId2"] = 3329640

-- 合成道具
tAtivityForPray_Data["NeedItemId"] = {}
tAtivityForPray_Data["NeedItemId"][1] = 3315529
tAtivityForPray_Data["NeedItemId"][2] = 3315530
tAtivityForPray_Data["NeedItemId"][3] = 3315531
tAtivityForPray_Data["NeedItemId"][4] = 3315532


-- NPC
tAtivityForPray_Data["NpcId"] = 25937
tAtivityForPray_Data["NpcId2"] = 25948  

-- global存储
tAtivityForPray_Data["GlibalId"] = 54184

-- 等级限制
tAtivityForPray_Data["Level"] = 80
tAtivityForPray_Data["Meto"] = 0

-- log
tAtivityForPray_Data["Log"] = {}
-- 过期删除log
tAtivityForPray_Data["Log"]["OutTimeLog"] = "0,0,%d,%d,12001847,2,0,0"

tAtivityForPray_Data["Log"]["EmoneyLog"] = "350	23127	0	0	1	"

-- 掩码
tAtivityForPray_Data["Stc"] = {}
tAtivityForPray_Data["Stc"]["Event"] = {}
tAtivityForPray_Data["Stc"]["Data"] = {}
-- stc(215,57)	每日上线弹窗
tAtivityForPray_Data["Stc"]["Event"][1] = 215
tAtivityForPray_Data["Stc"]["Data"][1] = 57
-- stc(215,59)	每日活跃度礼包使用
tAtivityForPray_Data["Stc"]["Event"][2] = 215
tAtivityForPray_Data["Stc"]["Data"][2] = 59
-- stc(215,60)	每日杀怪奖励
tAtivityForPray_Data["Stc"]["Event"][3] = 215
tAtivityForPray_Data["Stc"]["Data"][3] = 60
-- stc(215,67)	每日签到礼包
tAtivityForPray_Data["Stc"]["Event"][4] = 215
tAtivityForPray_Data["Stc"]["Data"][4] = 67
-- stc(215,69)	每日功勋礼包
tAtivityForPray_Data["Stc"]["Event"][5] = 215
tAtivityForPray_Data["Stc"]["Data"][5] = 69
-- stc(215,70)	每日怪物掉落
tAtivityForPray_Data["Stc"]["Event"][6] = 215
tAtivityForPray_Data["Stc"]["Data"][6] = 70
-- stc(215,71)	个人祈福总次数
tAtivityForPray_Data["Stc"]["Event"][7] = 215
tAtivityForPray_Data["Stc"]["Data"][7] = 71
-- stc(215,72)	个人祈福领奖次数
tAtivityForPray_Data["Stc"]["Event"][8] = 215
tAtivityForPray_Data["Stc"]["Data"][8] = 72
-- stc(215,73)	全服祈福领奖次数
tAtivityForPray_Data["Stc"]["Event"][9] = 215
tAtivityForPray_Data["Stc"]["Data"][9] = 73


local tAtivityForPray_RandomReward = {}
	-- ===祈福奖励
	-- ===索引: tAtivityForPray_RandomReward[3329639][1]
	-- ===删除:3329639,10
	-- ===LogStep:1[1] 
	tAtivityForPray_RandomReward[3329639] = {}
	tAtivityForPray_RandomReward[3329639][1] = {}
	tAtivityForPray_RandomReward[3329639][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAtivityForPray_RandomReward[3329639][1]["DeleteItem"] = {}
	tAtivityForPray_RandomReward[3329639][1]["DeleteItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1]["DeleteItem"][1]["Id"] = 3329639 -- 【库】祈福道具[属性:9]
	tAtivityForPray_RandomReward[3329639][1]["DeleteItem"][1]["ItemNum"] = 10
	tAtivityForPray_RandomReward[3329639][1]["LogId"] = 12001847
	tAtivityForPray_RandomReward[3329639][1]["LogStep"] = "1[1] "
	-- 天石（赠）豪侠礼盒 - 9%
	tAtivityForPray_RandomReward[3329639][1][1] = {}
	tAtivityForPray_RandomReward[3329639][1][1]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][1]["ItemChance"] = 900
	tAtivityForPray_RandomReward[3329639][1][1]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][1]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][1]["RewardItem"][1]["Id"] = 3314187 -- 天石（赠）豪侠礼盒[3314187][属性:9][叠加:10000][金币:0], 【表格】天石（赠）豪侠礼盒
	tAtivityForPray_RandomReward[3329639][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 天石（赠）豪侠礼盒*1
	tAtivityForPray_RandomReward[3329639][1][1]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][1]["RewardEffect"]["Effect"] = "WuHanJiaYou"
	-- 天石（赠）宗师礼盒 - 1%
	tAtivityForPray_RandomReward[3329639][1][2] = {}
	tAtivityForPray_RandomReward[3329639][1][2]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][2]["ItemChance"] = 100
	tAtivityForPray_RandomReward[3329639][1][2]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][2]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][2]["RewardItem"][1]["Id"] = 3314188 -- 天石（赠）宗师礼盒[3314188][属性:9][叠加:10000][金币:0], 【表格】天石（赠）宗师礼盒
	tAtivityForPray_RandomReward[3329639][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 天石（赠）宗师礼盒*1
	tAtivityForPray_RandomReward[3329639][1][2]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][2]["RewardEffect"]["Effect"] = "WuHanJiaYou"
	tAtivityForPray_RandomReward[3329639][1][2]["BroadCast"] = 1
-- 	tAtivityForPray_RandomReward[3329639][1][2]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3329639][1][2]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 100万爵位勋章 - 9%
	tAtivityForPray_RandomReward[3329639][1][3] = {}
	tAtivityForPray_RandomReward[3329639][1][3]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][3]["ItemChance"] = 900
	tAtivityForPray_RandomReward[3329639][1][3]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][3]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][3]["RewardItem"][1]["Id"] = 3314199 -- 100万爵位勋章[3314199][属性:8][叠加:1][金币:0], 【表格】100万爵位勋章
	tAtivityForPray_RandomReward[3329639][1][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的100万爵位勋章（赠）*1
	tAtivityForPray_RandomReward[3329639][1][3]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][3]["RewardEffect"]["Effect"] = "WuHanJiaYou"
	-- 1000万爵位勋章 - 1%
	tAtivityForPray_RandomReward[3329639][1][4] = {}
	tAtivityForPray_RandomReward[3329639][1][4]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][4]["ItemChance"] = 100
	tAtivityForPray_RandomReward[3329639][1][4]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][4]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][4]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tAtivityForPray_RandomReward[3329639][1][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的1000万爵位勋章（赠）*1
	tAtivityForPray_RandomReward[3329639][1][4]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][4]["RewardEffect"]["Effect"] = "WuHanJiaYou"
	tAtivityForPray_RandomReward[3329639][1][4]["BroadCast"] = 1
-- 	tAtivityForPray_RandomReward[3329639][1][4]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3329639][1][4]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 黄色神纹碎片 - 9%
	tAtivityForPray_RandomReward[3329639][1][5] = {}
	tAtivityForPray_RandomReward[3329639][1][5]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][5]["ItemChance"] = 900
	tAtivityForPray_RandomReward[3329639][1][5]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][5]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][5]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片
	tAtivityForPray_RandomReward[3329639][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹碎片（赠）*1
	tAtivityForPray_RandomReward[3329639][1][5]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][5]["RewardEffect"]["Effect"] = "WuHanJiaYou"
	-- 神纹源晶 - 1%
	tAtivityForPray_RandomReward[3329639][1][6] = {}
	tAtivityForPray_RandomReward[3329639][1][6]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][6]["ItemChance"] = 100
	tAtivityForPray_RandomReward[3329639][1][6]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][6]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][6]["RewardItem"][1]["Id"] = 3311759 -- 神纹源晶[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶
	tAtivityForPray_RandomReward[3329639][1][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 神纹源晶（赠）*1
	tAtivityForPray_RandomReward[3329639][1][6]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][6]["RewardEffect"]["Effect"] = "WuHanJiaYou"
	tAtivityForPray_RandomReward[3329639][1][6]["BroadCast"] = 1
-- 	tAtivityForPray_RandomReward[3329639][1][6]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3329639][1][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+3 - 9%
	tAtivityForPray_RandomReward[3329639][1][7] = {}
	tAtivityForPray_RandomReward[3329639][1][7]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][7]["ItemChance"] = 900
	tAtivityForPray_RandomReward[3329639][1][7]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][7]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][7]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tAtivityForPray_RandomReward[3329639][1][7]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+3赤炼石（赠）*1
	tAtivityForPray_RandomReward[3329639][1][7]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][7]["RewardEffect"]["Effect"] = "WuHanJiaYou"
	-- 赤炼石+5 - 1%
	tAtivityForPray_RandomReward[3329639][1][8] = {}
	tAtivityForPray_RandomReward[3329639][1][8]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][8]["ItemChance"] = 100
	tAtivityForPray_RandomReward[3329639][1][8]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][8]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][8]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tAtivityForPray_RandomReward[3329639][1][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+5赤炼石（赠）*1
	tAtivityForPray_RandomReward[3329639][1][8]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][8]["RewardEffect"]["Effect"] = "WuHanJiaYou"
	tAtivityForPray_RandomReward[3329639][1][8]["BroadCast"] = 1
-- 	tAtivityForPray_RandomReward[3329639][1][8]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3329639][1][8]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 明亮星陨石 - 18%
	tAtivityForPray_RandomReward[3329639][1][9] = {}
	tAtivityForPray_RandomReward[3329639][1][9]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][9]["ItemChance"] = 1800
	tAtivityForPray_RandomReward[3329639][1][9]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][9]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][9]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tAtivityForPray_RandomReward[3329639][1][9]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tAtivityForPray_RandomReward[3329639][1][9]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][9]["RewardEffect"]["Effect"] = "WuHanJiaYou"
	-- 晶莹星陨石 - 2%
	tAtivityForPray_RandomReward[3329639][1][10] = {}
	tAtivityForPray_RandomReward[3329639][1][10]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][10]["ItemChance"] = 200
	tAtivityForPray_RandomReward[3329639][1][10]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][10]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][10]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAtivityForPray_RandomReward[3329639][1][10]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tAtivityForPray_RandomReward[3329639][1][10]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][10]["RewardEffect"]["Effect"] = "WuHanJiaYou"
	tAtivityForPray_RandomReward[3329639][1][10]["BroadCast"] = 1
-- 	tAtivityForPray_RandomReward[3329639][1][10]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3329639][1][10]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 豹胆气力酒 - 27%
	tAtivityForPray_RandomReward[3329639][1][11] = {}
	tAtivityForPray_RandomReward[3329639][1][11]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][11]["ItemChance"] = 2700
	tAtivityForPray_RandomReward[3329639][1][11]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][11]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][11]["RewardItem"][1]["Id"] = 3321077 -- 豹胆气力酒[3321077][属性:0][叠加:10000][金币:0], 【表格】豹胆气力酒
	tAtivityForPray_RandomReward[3329639][1][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 豹胆气力酒（赠）*1
	tAtivityForPray_RandomReward[3329639][1][11]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][11]["RewardEffect"]["Effect"] = "WuHanJiaYou"
	-- 虎骨气力酒 - 3%
	tAtivityForPray_RandomReward[3329639][1][12] = {}
	tAtivityForPray_RandomReward[3329639][1][12]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][12]["ItemChance"] = 300
	tAtivityForPray_RandomReward[3329639][1][12]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][12]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][12]["RewardItem"][1]["Id"] = 3314207 -- 虎骨气力酒[3314207][属性:8][叠加:10000][金币:0], 【表格】虎骨气力酒
	tAtivityForPray_RandomReward[3329639][1][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 虎骨气力酒（赠）*1
	tAtivityForPray_RandomReward[3329639][1][12]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][12]["RewardEffect"]["Effect"] = "WuHanJiaYou"
	-- 希望之灯 - 10%
	tAtivityForPray_RandomReward[3329639][1][13] = {}
	tAtivityForPray_RandomReward[3329639][1][13]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][1][13]["ItemChance"] = 1000
	tAtivityForPray_RandomReward[3329639][1][13]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][1][13]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][1][13]["RewardItem"][1]["Id"] = 3329640 -- 神秘道具[3329640][属性:9][叠加:10000][金币:0], 【表格】希望之灯
	tAtivityForPray_RandomReward[3329639][1][13]["RewardItem"][1]["Attr"] = "0 1" -- 神秘道具*1
	tAtivityForPray_RandomReward[3329639][1][13]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][1][13]["RewardEffect"]["Effect"] = "WuHanJiaYou"


	tAtivityForPray_RandomReward[3329639][2] = {}
	-- ===小怪掉落
	-- ===索引: tAtivityForPray_RandomReward[3329639][2]
	-- ===LogStep:1[2] 
	tAtivityForPray_RandomReward[3329639][2]["ItemChanceSum"] = 10000
	tAtivityForPray_RandomReward[3329639][2]["LogId"] = 12001847
	tAtivityForPray_RandomReward[3329639][2]["LogStep"] = "1[2]"
	-- 祈福蜡烛 - 2%
	tAtivityForPray_RandomReward[3329639][2][1] = {}
	tAtivityForPray_RandomReward[3329639][2][1]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][2][1]["ItemChance"] = 200
	tAtivityForPray_RandomReward[3329639][2][1]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3329639][2][1]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3329639][2][1]["RewardItem"][1]["Id"] = 3329639 -- 祈福道具[3329639][属性:9][叠加:10000][金币:0], 【表格】祈福蜡烛
	tAtivityForPray_RandomReward[3329639][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 祈福道具*1
	tAtivityForPray_RandomReward[3329639][2][1]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3329639][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3329639][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1天（零点重置）, 可获得50个
	tAtivityForPray_RandomReward[3329639][2][1]["EventType"] = 215
	tAtivityForPray_RandomReward[3329639][2][1]["DataType"] = 60
	tAtivityForPray_RandomReward[3329639][2][1]["RewardDelay"] = 1
	tAtivityForPray_RandomReward[3329639][2][1]["RewardTimeType"] = 4
	tAtivityForPray_RandomReward[3329639][2][1]["RewardData"] = 50
	-- 不掉落 - 98%
	tAtivityForPray_RandomReward[3329639][2][2] = {}
	tAtivityForPray_RandomReward[3329639][2][2]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3329639][2][2]["ItemChance"] = 9800
	-- tAtivityForPray_RandomReward[3329639][2][2]["RewardEffect"] = {}
	-- tAtivityForPray_RandomReward[3329639][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tAtivityForPray_RandomReward[3329639][2][2]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===祈福字牌包
	-- ===索引: tAtivityForPray_RandomReward[3315533]
	-- ===删除:3315533
	tAtivityForPray_RandomReward[3315533] = {}
	tAtivityForPray_RandomReward[3315533]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAtivityForPray_RandomReward[3315533]["DeleteItem"] = {}
	tAtivityForPray_RandomReward[3315533]["DeleteItem"][1] = {}
	tAtivityForPray_RandomReward[3315533]["DeleteItem"][1]["Id"] = 3315533 -- 【库】PrayingCardPack[属性:9]
	tAtivityForPray_RandomReward[3315533]["LogId"] = 12001847
	-- “武”字牌 - 26%
	tAtivityForPray_RandomReward[3315533][1] = {}
	tAtivityForPray_RandomReward[3315533][1]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315533][1]["ItemChance"] = 2600
	tAtivityForPray_RandomReward[3315533][1]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315533][1]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315533][1]["RewardItem"][1]["Id"] = 3315529 -- CardBest[3315529][属性:9][叠加:10000][金币:0], 【表格】“武”字牌
	tAtivityForPray_RandomReward[3315533][1]["RewardItem"][1]["Attr"] = "0 1" -- CardBest*1
	tAtivityForPray_RandomReward[3315533][1]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315533][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315533][1]["RewardEffect"]["Effect"] = "task042"
	-- “汉”字牌 - 24%
	tAtivityForPray_RandomReward[3315533][2] = {}
	tAtivityForPray_RandomReward[3315533][2]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315533][2]["ItemChance"] = 2400
	tAtivityForPray_RandomReward[3315533][2]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315533][2]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315533][2]["RewardItem"][1]["Id"] = 3315530 -- CardWish[3315530][属性:9][叠加:10000][金币:0], 【表格】“汉”字牌
	tAtivityForPray_RandomReward[3315533][2]["RewardItem"][1]["Attr"] = "0 1" -- CardWish*1
	tAtivityForPray_RandomReward[3315533][2]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315533][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315533][2]["RewardEffect"]["Effect"] = "task042"
	-- “加”字牌 - 27%
	tAtivityForPray_RandomReward[3315533][3] = {}
	tAtivityForPray_RandomReward[3315533][3]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315533][3]["ItemChance"] = 2700
	tAtivityForPray_RandomReward[3315533][3]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315533][3]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315533][3]["RewardItem"][1]["Id"] = 3315531 -- CardTo[3315531][属性:9][叠加:10000][金币:0], 【表格】“加”字牌
	tAtivityForPray_RandomReward[3315533][3]["RewardItem"][1]["Attr"] = "0 1" -- CardTo*1
	tAtivityForPray_RandomReward[3315533][3]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315533][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315533][3]["RewardEffect"]["Effect"] = "task042"
	-- “油”字牌 - 23%
	tAtivityForPray_RandomReward[3315533][4] = {}
	tAtivityForPray_RandomReward[3315533][4]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315533][4]["ItemChance"] = 2300
	tAtivityForPray_RandomReward[3315533][4]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315533][4]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315533][4]["RewardItem"][1]["Id"] = 3315532 -- CardWorld[3315532][属性:9][叠加:10000][金币:0], 【表格】“油”字牌
	tAtivityForPray_RandomReward[3315533][4]["RewardItem"][1]["Attr"] = "0 1" -- CardWorld*1
	tAtivityForPray_RandomReward[3315533][4]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315533][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315533][4]["RewardEffect"]["Effect"] = "task042"


	tAtivityForPray_RandomReward[3315534] = {}
	-- ===武汉加油礼包
	-- ===索引: tAtivityForPray_RandomReward[3315534]
	-- ===删除:3315534
	-- ===EMoneyLog:1000,01700
	tAtivityForPray_RandomReward[3315534]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAtivityForPray_RandomReward[3315534]["DeleteItem"] = {}
	tAtivityForPray_RandomReward[3315534]["DeleteItem"][1] = {}
	tAtivityForPray_RandomReward[3315534]["DeleteItem"][1]["Id"] = 3315534 -- 【库】WorldWishPack[属性:9]
	tAtivityForPray_RandomReward[3315534]["LogId"] = 12001847
	tAtivityForPray_RandomReward[3315534]["EmoneyLog"] = "1000	1700	0	0	1	"
	-- 100赠点 - 9.5%
	tAtivityForPray_RandomReward[3315534][1] = {}
	tAtivityForPray_RandomReward[3315534][1]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][1]["ItemChance"] = 950
	tAtivityForPray_RandomReward[3315534][1]["RewardEMoneyMono"] = {}
	tAtivityForPray_RandomReward[3315534][1]["RewardEMoneyMono"]["Value"] = 100 -- 赠点, 【需求】100赠点
	tAtivityForPray_RandomReward[3315534][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1700"
	tAtivityForPray_RandomReward[3315534][1]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 500赠点 - 0.5%
	tAtivityForPray_RandomReward[3315534][2] = {}
	tAtivityForPray_RandomReward[3315534][2]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][2]["ItemChance"] = 50
	tAtivityForPray_RandomReward[3315534][2]["RewardEMoneyMono"] = {}
	tAtivityForPray_RandomReward[3315534][2]["RewardEMoneyMono"]["Value"] = 500 -- 赠点, 【需求】500赠点
	tAtivityForPray_RandomReward[3315534][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1700"
	tAtivityForPray_RandomReward[3315534][2]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][2]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315534][2]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315534][2]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315534][2]["BroadCast"] = 1
	-- 100万爵位勋章 - 9.5%
	tAtivityForPray_RandomReward[3315534][3] = {}
	tAtivityForPray_RandomReward[3315534][3]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][3]["ItemChance"] = 950
	tAtivityForPray_RandomReward[3315534][3]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315534][3]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315534][3]["RewardItem"][1]["Id"] = 3314199 -- 1KKContributionMedal[3314199][属性:8][叠加:1][金币:0], 【表格】100万爵位勋章
	tAtivityForPray_RandomReward[3315534][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的1KKContributionMedal（赠）*1
	tAtivityForPray_RandomReward[3315534][3]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000万爵位勋章 - 0.5%
	tAtivityForPray_RandomReward[3315534][4] = {}
	tAtivityForPray_RandomReward[3315534][4]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][4]["ItemChance"] = 50
	tAtivityForPray_RandomReward[3315534][4]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315534][4]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315534][4]["RewardItem"][1]["Id"] = 3322762 -- 10KKContributionMedal[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tAtivityForPray_RandomReward[3315534][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的10KKContributionMedal（赠）*1
	tAtivityForPray_RandomReward[3315534][4]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][4]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315534][4]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315534][4]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315534][4]["BroadCast"] = 1
	-- 黄色神纹碎片 - 9.5%
	tAtivityForPray_RandomReward[3315534][5] = {}
	tAtivityForPray_RandomReward[3315534][5]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][5]["ItemChance"] = 950
	tAtivityForPray_RandomReward[3315534][5]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315534][5]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315534][5]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片
	tAtivityForPray_RandomReward[3315534][5]["RewardItem"][1]["Attr"] = "0 1" -- YellowRuneFragment（赠）*1
	tAtivityForPray_RandomReward[3315534][5]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹源晶 - 0.5%
	tAtivityForPray_RandomReward[3315534][6] = {}
	tAtivityForPray_RandomReward[3315534][6]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][6]["ItemChance"] = 50
	tAtivityForPray_RandomReward[3315534][6]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315534][6]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315534][6]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶
	tAtivityForPray_RandomReward[3315534][6]["RewardItem"][1]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
	tAtivityForPray_RandomReward[3315534][6]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][6]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315534][6]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315534][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315534][6]["BroadCast"] = 1
	-- 赤炼石+3 - 9.5%
	tAtivityForPray_RandomReward[3315534][7] = {}
	tAtivityForPray_RandomReward[3315534][7]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][7]["ItemChance"] = 950
	tAtivityForPray_RandomReward[3315534][7]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315534][7]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315534][7]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tAtivityForPray_RandomReward[3315534][7]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+3Stone（赠）*1
	tAtivityForPray_RandomReward[3315534][7]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 0.5%
	tAtivityForPray_RandomReward[3315534][8] = {}
	tAtivityForPray_RandomReward[3315534][8]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][8]["ItemChance"] = 50
	tAtivityForPray_RandomReward[3315534][8]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315534][8]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315534][8]["RewardItem"][1]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tAtivityForPray_RandomReward[3315534][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+5Stone（赠）*1
	tAtivityForPray_RandomReward[3315534][8]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][8]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315534][8]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315534][8]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315534][8]["BroadCast"] = 1
	-- 明亮星陨石 - 19%
	tAtivityForPray_RandomReward[3315534][9] = {}
	tAtivityForPray_RandomReward[3315534][9]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][9]["ItemChance"] = 1900
	tAtivityForPray_RandomReward[3315534][9]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315534][9]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315534][9]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tAtivityForPray_RandomReward[3315534][9]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tAtivityForPray_RandomReward[3315534][9]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 1%
	tAtivityForPray_RandomReward[3315534][10] = {}
	tAtivityForPray_RandomReward[3315534][10]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][10]["ItemChance"] = 100
	tAtivityForPray_RandomReward[3315534][10]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315534][10]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315534][10]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAtivityForPray_RandomReward[3315534][10]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tAtivityForPray_RandomReward[3315534][10]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][10]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315534][10]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315534][10]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315534][10]["BroadCast"] = 1
	-- 200气力值 - 27%
	tAtivityForPray_RandomReward[3315534][11] = {}
	tAtivityForPray_RandomReward[3315534][11]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][11]["ItemChance"] = 2700
	tAtivityForPray_RandomReward[3315534][11]["RewardStrengthValue"] = {}
	tAtivityForPray_RandomReward[3315534][11]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】200气力值
	tAtivityForPray_RandomReward[3315534][11]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 2000气力值 - 3%
	tAtivityForPray_RandomReward[3315534][12] = {}
	tAtivityForPray_RandomReward[3315534][12]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][12]["ItemChance"] = 300
	tAtivityForPray_RandomReward[3315534][12]["RewardStrengthValue"] = {}
	tAtivityForPray_RandomReward[3315534][12]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tAtivityForPray_RandomReward[3315534][12]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 10%
	tAtivityForPray_RandomReward[3315534][13] = {}
	tAtivityForPray_RandomReward[3315534][13]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315534][13]["ItemChance"] = 1000
	tAtivityForPray_RandomReward[3315534][13]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315534][13]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315534][13]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tAtivityForPray_RandomReward[3315534][13]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*2
	tAtivityForPray_RandomReward[3315534][13]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315534][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315534][13]["RewardEffect"]["Effect"] = "angelwing"


	tAtivityForPray_RandomReward[3315535] = {}
	-- ===武汉加油助威包
	-- ===索引: tAtivityForPray_RandomReward[3315535]
	-- ===删除:3315535
	-- ===EMoneyLog:1000,01701
	tAtivityForPray_RandomReward[3315535]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAtivityForPray_RandomReward[3315535]["DeleteItem"] = {}
	tAtivityForPray_RandomReward[3315535]["DeleteItem"][1] = {}
	tAtivityForPray_RandomReward[3315535]["DeleteItem"][1]["Id"] = 3315535 -- 【库】WorldCheeringPack[属性:9]
	tAtivityForPray_RandomReward[3315535]["LogId"] = 12001847
	tAtivityForPray_RandomReward[3315535]["EmoneyLog"] = "1000	1701	0	0	1	"
	-- 100赠点 - 9%
	tAtivityForPray_RandomReward[3315535][1] = {}
	tAtivityForPray_RandomReward[3315535][1]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][1]["ItemChance"] = 900
	tAtivityForPray_RandomReward[3315535][1]["RewardEMoneyMono"] = {}
	tAtivityForPray_RandomReward[3315535][1]["RewardEMoneyMono"]["Value"] = 100 -- 赠点, 【需求】100赠点
	tAtivityForPray_RandomReward[3315535][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1701"
	tAtivityForPray_RandomReward[3315535][1]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 500赠点 - 1%
	tAtivityForPray_RandomReward[3315535][2] = {}
	tAtivityForPray_RandomReward[3315535][2]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][2]["ItemChance"] = 100
	tAtivityForPray_RandomReward[3315535][2]["RewardEMoneyMono"] = {}
	tAtivityForPray_RandomReward[3315535][2]["RewardEMoneyMono"]["Value"] = 500 -- 赠点, 【需求】500赠点
	tAtivityForPray_RandomReward[3315535][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1701"
	tAtivityForPray_RandomReward[3315535][2]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][2]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315535][2]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315535][2]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315535][2]["BroadCast"] = 1
	-- 100万爵位勋章 - 9%
	tAtivityForPray_RandomReward[3315535][3] = {}
	tAtivityForPray_RandomReward[3315535][3]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][3]["ItemChance"] = 900
	tAtivityForPray_RandomReward[3315535][3]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315535][3]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315535][3]["RewardItem"][1]["Id"] = 3314199 -- 1KKContributionMedal[3314199][属性:8][叠加:1][金币:0], 【表格】100万爵位勋章
	tAtivityForPray_RandomReward[3315535][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的1KKContributionMedal（赠）*1
	tAtivityForPray_RandomReward[3315535][3]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000万爵位勋章 - 1%
	tAtivityForPray_RandomReward[3315535][4] = {}
	tAtivityForPray_RandomReward[3315535][4]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][4]["ItemChance"] = 100
	tAtivityForPray_RandomReward[3315535][4]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315535][4]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315535][4]["RewardItem"][1]["Id"] = 3322762 -- 10KKContributionMedal[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tAtivityForPray_RandomReward[3315535][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的10KKContributionMedal（赠）*1
	tAtivityForPray_RandomReward[3315535][4]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][4]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315535][4]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315535][4]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315535][4]["BroadCast"] = 1
	-- 黄色神纹碎片 - 9%
	tAtivityForPray_RandomReward[3315535][5] = {}
	tAtivityForPray_RandomReward[3315535][5]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][5]["ItemChance"] = 900
	tAtivityForPray_RandomReward[3315535][5]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315535][5]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315535][5]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片
	tAtivityForPray_RandomReward[3315535][5]["RewardItem"][1]["Attr"] = "0 1" -- YellowRuneFragment（赠）*1
	tAtivityForPray_RandomReward[3315535][5]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹源晶 - 1%
	tAtivityForPray_RandomReward[3315535][6] = {}
	tAtivityForPray_RandomReward[3315535][6]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][6]["ItemChance"] = 100
	tAtivityForPray_RandomReward[3315535][6]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315535][6]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315535][6]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶
	tAtivityForPray_RandomReward[3315535][6]["RewardItem"][1]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
	tAtivityForPray_RandomReward[3315535][6]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][6]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315535][6]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315535][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315535][6]["BroadCast"] = 1
	-- 赤炼石+3 - 8.9%
	tAtivityForPray_RandomReward[3315535][7] = {}
	tAtivityForPray_RandomReward[3315535][7]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][7]["ItemChance"] = 890
	tAtivityForPray_RandomReward[3315535][7]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315535][7]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315535][7]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tAtivityForPray_RandomReward[3315535][7]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+3Stone（赠）*1
	tAtivityForPray_RandomReward[3315535][7]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 1%
	tAtivityForPray_RandomReward[3315535][8] = {}
	tAtivityForPray_RandomReward[3315535][8]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][8]["ItemChance"] = 100
	tAtivityForPray_RandomReward[3315535][8]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315535][8]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315535][8]["RewardItem"][1]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tAtivityForPray_RandomReward[3315535][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+5Stone（赠）*1
	tAtivityForPray_RandomReward[3315535][8]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][8]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315535][8]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315535][8]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315535][8]["BroadCast"] = 1
	-- 明亮星陨石 - 18%
	tAtivityForPray_RandomReward[3315535][9] = {}
	tAtivityForPray_RandomReward[3315535][9]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][9]["ItemChance"] = 1800
	tAtivityForPray_RandomReward[3315535][9]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315535][9]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315535][9]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tAtivityForPray_RandomReward[3315535][9]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tAtivityForPray_RandomReward[3315535][9]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 2%
	tAtivityForPray_RandomReward[3315535][10] = {}
	tAtivityForPray_RandomReward[3315535][10]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][10]["ItemChance"] = 200
	tAtivityForPray_RandomReward[3315535][10]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315535][10]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315535][10]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAtivityForPray_RandomReward[3315535][10]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tAtivityForPray_RandomReward[3315535][10]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][10]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315535][10]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315535][10]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315535][10]["BroadCast"] = 1
	-- 200气力值 - 27%
	tAtivityForPray_RandomReward[3315535][11] = {}
	tAtivityForPray_RandomReward[3315535][11]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][11]["ItemChance"] = 2700
	tAtivityForPray_RandomReward[3315535][11]["RewardStrengthValue"] = {}
	tAtivityForPray_RandomReward[3315535][11]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】200气力值
	tAtivityForPray_RandomReward[3315535][11]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 2000气力值 - 3%
	tAtivityForPray_RandomReward[3315535][12] = {}
	tAtivityForPray_RandomReward[3315535][12]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][12]["ItemChance"] = 300
	tAtivityForPray_RandomReward[3315535][12]["RewardStrengthValue"] = {}
	tAtivityForPray_RandomReward[3315535][12]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tAtivityForPray_RandomReward[3315535][12]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 10%
	tAtivityForPray_RandomReward[3315535][13] = {}
	tAtivityForPray_RandomReward[3315535][13]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][13]["ItemChance"] = 1000
	tAtivityForPray_RandomReward[3315535][13]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315535][13]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315535][13]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tAtivityForPray_RandomReward[3315535][13]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*2
	tAtivityForPray_RandomReward[3315535][13]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 稀有蓝色神纹礼包 - 0.1%
	tAtivityForPray_RandomReward[3315535][14] = {}
	tAtivityForPray_RandomReward[3315535][14]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315535][14]["ItemChance"] = 10
	tAtivityForPray_RandomReward[3315535][14]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315535][14]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315535][14]["RewardItem"][1]["Id"] = 3314251 -- RareBlueRunePack[3314251][属性:8][叠加:10000][金币:0], 【表格】稀有蓝色神纹礼包
	tAtivityForPray_RandomReward[3315535][14]["RewardItem"][1]["Attr"] = "0 1 3" -- RareBlueRunePack（赠）*1
	tAtivityForPray_RandomReward[3315535][14]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315535][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315535][14]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315535][14]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315535][14]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315535][14]["BroadCast"] = 1
			-- 【动态掩码（54184, data1）】全服限量:（5）, 超限给编号（7）-
	tAtivityForPray_RandomReward[3315535][14]["GlobalId"] = 54184
	tAtivityForPray_RandomReward[3315535][14]["Pos"] = 1
	tAtivityForPray_RandomReward[3315535][14]["MaxData"] = 5
	tAtivityForPray_RandomReward[3315535][14]["FullIndex"] = 7

	tAtivityForPray_RandomReward[3315536] = {}
	-- ===希望之星礼包
	-- ===索引: tAtivityForPray_RandomReward[3315536]
	-- ===删除:3315536
	-- ===EMoneyLog:1000,01702
	tAtivityForPray_RandomReward[3315536]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAtivityForPray_RandomReward[3315536]["DeleteItem"] = {}
	tAtivityForPray_RandomReward[3315536]["DeleteItem"][1] = {}
	tAtivityForPray_RandomReward[3315536]["DeleteItem"][1]["Id"] = 3315536 -- 【库】HopeStarPack[属性:9]
	tAtivityForPray_RandomReward[3315536]["LogId"] = 12001847
	tAtivityForPray_RandomReward[3315536]["EmoneyLog"] = "1000	1702	0	0	1	"
	-- 500赠点 - 5%
	tAtivityForPray_RandomReward[3315536][1] = {}
	tAtivityForPray_RandomReward[3315536][1]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315536][1]["ItemChance"] = 500
	tAtivityForPray_RandomReward[3315536][1]["RewardEMoneyMono"] = {}
	tAtivityForPray_RandomReward[3315536][1]["RewardEMoneyMono"]["Value"] = 500 -- 赠点, 【需求】500赠点
	tAtivityForPray_RandomReward[3315536][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1702"
	tAtivityForPray_RandomReward[3315536][1]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315536][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315536][1]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315536][1]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315536][1]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315536][1]["BroadCast"] = 1
	-- 1000万爵位勋章 - 15%
	tAtivityForPray_RandomReward[3315536][2] = {}
	tAtivityForPray_RandomReward[3315536][2]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315536][2]["ItemChance"] = 1500
	tAtivityForPray_RandomReward[3315536][2]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315536][2]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315536][2]["RewardItem"][1]["Id"] = 3322762 -- 10KKContributionMedal[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tAtivityForPray_RandomReward[3315536][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的10KKContributionMedal（赠）*1
	tAtivityForPray_RandomReward[3315536][2]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315536][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315536][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹碎片 - 12%
	tAtivityForPray_RandomReward[3315536][3] = {}
	tAtivityForPray_RandomReward[3315536][3]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315536][3]["ItemChance"] = 1200
	tAtivityForPray_RandomReward[3315536][3]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315536][3]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315536][3]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片
	tAtivityForPray_RandomReward[3315536][3]["RewardItem"][1]["Attr"] = "0 5" -- YellowRuneFragment（赠）*5
	tAtivityForPray_RandomReward[3315536][3]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315536][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315536][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹源晶 - 5%
	tAtivityForPray_RandomReward[3315536][4] = {}
	tAtivityForPray_RandomReward[3315536][4]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315536][4]["ItemChance"] = 500
	tAtivityForPray_RandomReward[3315536][4]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315536][4]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315536][4]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶
	tAtivityForPray_RandomReward[3315536][4]["RewardItem"][1]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
	tAtivityForPray_RandomReward[3315536][4]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315536][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315536][4]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315536][4]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315536][4]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315536][4]["BroadCast"] = 1
	-- 赤炼石+4 - 15%
	tAtivityForPray_RandomReward[3315536][5] = {}
	tAtivityForPray_RandomReward[3315536][5]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315536][5]["ItemChance"] = 1500
	tAtivityForPray_RandomReward[3315536][5]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315536][5]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315536][5]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tAtivityForPray_RandomReward[3315536][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+4Stone（赠）*1
	tAtivityForPray_RandomReward[3315536][5]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315536][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315536][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 5%
	tAtivityForPray_RandomReward[3315536][6] = {}
	tAtivityForPray_RandomReward[3315536][6]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315536][6]["ItemChance"] = 500
	tAtivityForPray_RandomReward[3315536][6]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315536][6]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315536][6]["RewardItem"][1]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tAtivityForPray_RandomReward[3315536][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+5Stone（赠）*1
	tAtivityForPray_RandomReward[3315536][6]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315536][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315536][6]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315536][6]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315536][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315536][6]["BroadCast"] = 1
	-- 明亮星陨石 - 18%
	tAtivityForPray_RandomReward[3315536][7] = {}
	tAtivityForPray_RandomReward[3315536][7]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315536][7]["ItemChance"] = 1800
	tAtivityForPray_RandomReward[3315536][7]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315536][7]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315536][7]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tAtivityForPray_RandomReward[3315536][7]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tAtivityForPray_RandomReward[3315536][7]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315536][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315536][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 6%
	tAtivityForPray_RandomReward[3315536][8] = {}
	tAtivityForPray_RandomReward[3315536][8]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315536][8]["ItemChance"] = 600
	tAtivityForPray_RandomReward[3315536][8]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315536][8]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315536][8]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAtivityForPray_RandomReward[3315536][8]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tAtivityForPray_RandomReward[3315536][8]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315536][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315536][8]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315536][8]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315536][8]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315536][8]["BroadCast"] = 1
	-- 2000气力值 - 9%
	tAtivityForPray_RandomReward[3315536][9] = {}
	tAtivityForPray_RandomReward[3315536][9]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315536][9]["ItemChance"] = 900
	tAtivityForPray_RandomReward[3315536][9]["RewardStrengthValue"] = {}
	tAtivityForPray_RandomReward[3315536][9]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tAtivityForPray_RandomReward[3315536][9]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315536][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315536][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 10%
	tAtivityForPray_RandomReward[3315536][10] = {}
	tAtivityForPray_RandomReward[3315536][10]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315536][10]["ItemChance"] = 1000
	tAtivityForPray_RandomReward[3315536][10]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315536][10]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315536][10]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tAtivityForPray_RandomReward[3315536][10]["RewardItem"][1]["Attr"] = "0 5" -- GinsengFruit*5
	tAtivityForPray_RandomReward[3315536][10]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315536][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315536][10]["RewardEffect"]["Effect"] = "angelwing"



	tAtivityForPray_RandomReward[3315537] = {}
	-- ===众志成城祈福包
	-- ===索引: tAtivityForPray_RandomReward[3315537]
	-- ===删除:3315537
	tAtivityForPray_RandomReward[3315537]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAtivityForPray_RandomReward[3315537]["DeleteItem"] = {}
	tAtivityForPray_RandomReward[3315537]["DeleteItem"][1] = {}
	tAtivityForPray_RandomReward[3315537]["DeleteItem"][1]["Id"] = 3315537 -- 【库】UnitedPrayingPack[属性:9]
	tAtivityForPray_RandomReward[3315537]["LogId"] = 12001847
	-- 稀有黄色神纹礼包 - 0.1%
	tAtivityForPray_RandomReward[3315537][1] = {}
	tAtivityForPray_RandomReward[3315537][1]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315537][1]["ItemChance"] = 10
	tAtivityForPray_RandomReward[3315537][1]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315537][1]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315537][1]["RewardItem"][1]["Id"] = 3314250 -- RareYellowRunePack[3314250][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹礼包
	tAtivityForPray_RandomReward[3315537][1]["RewardItem"][1]["Attr"] = "0 1 3" -- RareYellowRunePack（赠）*1
	tAtivityForPray_RandomReward[3315537][1]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315537][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315537][1]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315537][1]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315537][1]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315537][1]["BroadCast"] = 1
			-- 【动态掩码（54184, data3）】全服限量:（1）, 超限给编号（4）-
	tAtivityForPray_RandomReward[3315537][1]["GlobalId"] = 54184
	tAtivityForPray_RandomReward[3315537][1]["Pos"] = 3
	tAtivityForPray_RandomReward[3315537][1]["MaxData"] = 1
	tAtivityForPray_RandomReward[3315537][1]["FullIndex"] = 4
	-- 万能神纹精粹 - 12.7%
	tAtivityForPray_RandomReward[3315537][2] = {}
	tAtivityForPray_RandomReward[3315537][2]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315537][2]["ItemChance"] = 1270
	tAtivityForPray_RandomReward[3315537][2]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315537][2]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315537][2]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAtivityForPray_RandomReward[3315537][2]["RewardItem"][1]["Attr"] = "0 100 3" -- UniversalRuneEssence（赠）*100
	tAtivityForPray_RandomReward[3315537][2]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315537][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315537][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+6 - 2%
	tAtivityForPray_RandomReward[3315537][3] = {}
	tAtivityForPray_RandomReward[3315537][3]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315537][3]["ItemChance"] = 200
	tAtivityForPray_RandomReward[3315537][3]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315537][3]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315537][3]["RewardItem"][1]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tAtivityForPray_RandomReward[3315537][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+6Stone（赠）*1
	tAtivityForPray_RandomReward[3315537][3]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315537][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315537][3]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315537][3]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315537][3]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54372, data1）】全服限量:（20）, 超限给编号（4）-
	tAtivityForPray_RandomReward[3315537][3]["GlobalId"] = 54372
	tAtivityForPray_RandomReward[3315537][3]["Pos"] = 1
	tAtivityForPray_RandomReward[3315537][3]["MaxData"] = 20
	tAtivityForPray_RandomReward[3315537][3]["FullIndex"] = 4
	tAtivityForPray_RandomReward[3315537][3]["BroadCast"] = 1
	-- 赤炼石+4 - 16%
	tAtivityForPray_RandomReward[3315537][4] = {}
	tAtivityForPray_RandomReward[3315537][4]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315537][4]["ItemChance"] = 1600
	tAtivityForPray_RandomReward[3315537][4]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315537][4]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315537][4]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tAtivityForPray_RandomReward[3315537][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+4Stone（赠）*1
	tAtivityForPray_RandomReward[3315537][4]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315537][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315537][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 璀璨星陨石 - 1%
	tAtivityForPray_RandomReward[3315537][5] = {}
	tAtivityForPray_RandomReward[3315537][5]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315537][5]["ItemChance"] = 100
	tAtivityForPray_RandomReward[3315537][5]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315537][5]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315537][5]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
	tAtivityForPray_RandomReward[3315537][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的SplendidStarStone*1
	tAtivityForPray_RandomReward[3315537][5]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315537][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315537][5]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315537][5]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315537][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54372, data3）】全服限量:（10）, 超限给编号（4）-
	tAtivityForPray_RandomReward[3315537][5]["GlobalId"] = 54372
	tAtivityForPray_RandomReward[3315537][5]["Pos"] = 3
	tAtivityForPray_RandomReward[3315537][5]["MaxData"] = 10
	tAtivityForPray_RandomReward[3315537][5]["FullIndex"] = 4
	tAtivityForPray_RandomReward[3315537][5]["BroadCast"] = 1
	-- 晶莹星陨石 - 11%
	tAtivityForPray_RandomReward[3315537][6] = {}
	tAtivityForPray_RandomReward[3315537][6]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315537][6]["ItemChance"] = 1100
	tAtivityForPray_RandomReward[3315537][6]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315537][6]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315537][6]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAtivityForPray_RandomReward[3315537][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tAtivityForPray_RandomReward[3315537][6]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315537][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315537][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 30%
	tAtivityForPray_RandomReward[3315537][7] = {}
	tAtivityForPray_RandomReward[3315537][7]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315537][7]["ItemChance"] = 3000
	tAtivityForPray_RandomReward[3315537][7]["RewardStrengthValue"] = {}
	tAtivityForPray_RandomReward[3315537][7]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】气力值
	tAtivityForPray_RandomReward[3315537][7]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315537][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315537][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 15%
	tAtivityForPray_RandomReward[3315537][8] = {}
	tAtivityForPray_RandomReward[3315537][8]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315537][8]["ItemChance"] = 1500
	tAtivityForPray_RandomReward[3315537][8]["RewardStrengthValue"] = {}
	tAtivityForPray_RandomReward[3315537][8]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】气力值
	tAtivityForPray_RandomReward[3315537][8]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315537][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315537][8]["RewardEffect"]["Effect"] = "angelwing"
-- 	tAtivityForPray_RandomReward[3315537][8]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tAtivityForPray_RandomReward[3315537][8]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	tAtivityForPray_RandomReward[3315537][8]["BroadCast"] = 1
	-- 辉月果 - 12.2%
	tAtivityForPray_RandomReward[3315537][9] = {}
	tAtivityForPray_RandomReward[3315537][9]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward[3315537][9]["ItemChance"] = 1220
	tAtivityForPray_RandomReward[3315537][9]["RewardItem"] = {}
	tAtivityForPray_RandomReward[3315537][9]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward[3315537][9]["RewardItem"][1]["Id"] = 3009102 -- MoonFruit[3009102][属性:9][叠加:10000][金币:0], 【表格】辉月果
	tAtivityForPray_RandomReward[3315537][9]["RewardItem"][1]["Attr"] = "0 1" -- MoonFruit*1
	tAtivityForPray_RandomReward[3315537][9]["RewardEffect"] = {}
	tAtivityForPray_RandomReward[3315537][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward[3315537][9]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tAtivityForPray_RandomReward["MonsterDrop"] = {}
	-- ===怪物掉落
	-- ===索引: tAtivityForPray_RandomReward["MonsterDrop"][1]
	tAtivityForPray_RandomReward["MonsterDrop"][1] = {}
	tAtivityForPray_RandomReward["MonsterDrop"][1]["ItemChanceSum"] = 10000
	tAtivityForPray_RandomReward["MonsterDrop"][1]["LogId"] = 12001847
	-- 祈福字牌包 - 2%
	tAtivityForPray_RandomReward["MonsterDrop"][1][1] = {}
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["ItemChance"] = 200
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["RewardItem"] = {}
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["RewardItem"][1] = {}
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["RewardItem"][1]["Id"] = 3315533 -- 祈福字牌包[3315533][属性:9][叠加:10000][金币:0], 【表格】祈福字牌包
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 祈福字牌包*1
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["RewardEffect"] = {}
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1天（零点重置）, 可获得10个
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["EventType"] = 215
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["DataType"] = 70
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["RewardDelay"] = 1
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["RewardTimeType"] = 4
	tAtivityForPray_RandomReward["MonsterDrop"][1][1]["RewardData"] = 10
	-- 不掉落 - 98%
	tAtivityForPray_RandomReward["MonsterDrop"][1][2] = {}
	tAtivityForPray_RandomReward["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
	tAtivityForPray_RandomReward["MonsterDrop"][1][2]["ItemChance"] = 9800



local tAtivityForPray_Reward = {}
	-- ===每日活跃度礼包
	-- ===索引: tAtivityForPray_Reward[3329639]
	-- ===LogStep:1[3] 
	tAtivityForPray_Reward[3329639] = {}
	tAtivityForPray_Reward[3329639]["LogId"] = 12001847
	tAtivityForPray_Reward[3329639]["LogStep"] = "1[3]"
	tAtivityForPray_Reward[3329639]["RewardItem"] = {}
	tAtivityForPray_Reward[3329639]["RewardItem"][1] = {}
	tAtivityForPray_Reward[3329639]["RewardItem"][1]["Id"] = 3329639 -- 祈福道具[3329639][属性:9][叠加:10000][金币:0], 【表格】祈福蜡烛
	tAtivityForPray_Reward[3329639]["RewardItem"][1]["Attr"] = "0 10" -- 祈福道具*10
	tAtivityForPray_Reward[3329639]["RewardEffect"] = {}
	tAtivityForPray_Reward[3329639]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_Reward[3329639]["RewardEffect"]["Effect"] = "angelwing"

	-- ===武汉加油礼包
	-- ===索引: tAtivityForPray_Reward[3315534]
	-- ===删除:3329640
	tAtivityForPray_Reward[3315534] = {}
	tAtivityForPray_Reward[3315534]["LogId"] = 12001847
	tAtivityForPray_Reward[3315534]["DeleteItem"] = {}
	tAtivityForPray_Reward[3315534]["DeleteItem"][1] = {}
	tAtivityForPray_Reward[3315534]["DeleteItem"][1]["Id"] = 3329640 -- 【库】希望之灯[属性:9]
	tAtivityForPray_Reward[3315534]["RewardItem"] = {}
	tAtivityForPray_Reward[3315534]["RewardItem"][1] = {}
	tAtivityForPray_Reward[3315534]["RewardItem"][1]["Id"] = 3315534 -- 武汉加油礼包[3315534][属性:9][叠加:10000][金币:0], 【表格】武汉加油礼包
	tAtivityForPray_Reward[3315534]["RewardItem"][1]["Attr"] = "0 1" -- 武汉加油礼包*1
	tAtivityForPray_Reward[3315534]["RewardEffect"] = {}
	tAtivityForPray_Reward[3315534]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_Reward[3315534]["RewardEffect"]["Effect"] = "task042"


	tAtivityForPray_Reward[3315535] = {}
	-- ===武汉加油助威包
	-- ===索引: tAtivityForPray_Reward[3315535]
	-- ===删除:3329640
	tAtivityForPray_Reward[3315535]["LogId"] = 12001847
	tAtivityForPray_Reward[3315535]["DeleteItem"] = {}
	tAtivityForPray_Reward[3315535]["DeleteItem"][1] = {}
	tAtivityForPray_Reward[3315535]["DeleteItem"][1]["Id"] = 3329640 -- 【库】希望之灯[属性:9]
	tAtivityForPray_Reward[3315535]["RewardItem"] = {}
	tAtivityForPray_Reward[3315535]["RewardItem"][1] = {}
	tAtivityForPray_Reward[3315535]["RewardItem"][1]["Id"] = 3315535 -- 武汉加油助威包[3315535][属性:9][叠加:10000][金币:0], 【表格】武汉加油助威包
	tAtivityForPray_Reward[3315535]["RewardItem"][1]["Attr"] = "0 1" -- 武汉加油助威包*1
	tAtivityForPray_Reward[3315535]["RewardEffect"] = {}
	tAtivityForPray_Reward[3315535]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_Reward[3315535]["RewardEffect"]["Effect"] = "task042"
	
	
	tAtivityForPray_Reward[3315536] = {}
	-- ===希望之星礼包
	-- ===索引: tAtivityForPray_Reward[3315536]
	tAtivityForPray_Reward[3315536]["LogId"] = 12001847
	tAtivityForPray_Reward[3315536]["RewardItem"] = {}
	tAtivityForPray_Reward[3315536]["RewardItem"][1] = {}
	tAtivityForPray_Reward[3315536]["RewardItem"][1]["Id"] = 3315536 -- 希望之星礼包[3315536][属性:9][叠加:10000][金币:0], 【表格】希望之星礼包
	tAtivityForPray_Reward[3315536]["RewardItem"][1]["Attr"] = "0 1" -- 希望之星礼包*1
	tAtivityForPray_Reward[3315536]["RewardEffect"] = {}
	tAtivityForPray_Reward[3315536]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_Reward[3315536]["RewardEffect"]["Effect"] = "task042"


	tAtivityForPray_Reward[3315537] = {}
	-- ===众志成城祈福包
	-- ===索引: tAtivityForPray_Reward[3315537]
	tAtivityForPray_Reward[3315537]["LogId"] = 12001847
	tAtivityForPray_Reward[3315537]["RewardItem"] = {}
	tAtivityForPray_Reward[3315537]["RewardItem"][1] = {}
	tAtivityForPray_Reward[3315537]["RewardItem"][1]["Id"] = 3315537 -- 众志成城祈福包[3315537][属性:9][叠加:10000][金币:0], 【表格】众志成城祈福包
	tAtivityForPray_Reward[3315537]["RewardItem"][1]["Attr"] = "0 1" -- 众志成城祈福包*1
	tAtivityForPray_Reward[3315537]["RewardEffect"] = {}
	tAtivityForPray_Reward[3315537]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_Reward[3315537]["RewardEffect"]["Effect"] = "task042"


	tAtivityForPray_Reward["Synthesis"] = {}
	-- ===武汉加油合成
	-- ===索引: tAtivityForPray_Reward["Synthesis"]
	-- ===删除:3315529
	-- ===删除:3315530
	-- ===删除:3315531
	-- ===删除:3315532
	-- ===
	tAtivityForPray_Reward["Synthesis"]["LogId"] = 12001847
	tAtivityForPray_Reward["Synthesis"]["DeleteItem"] = {}
	tAtivityForPray_Reward["Synthesis"]["DeleteItem"][1] = {}
	tAtivityForPray_Reward["Synthesis"]["DeleteItem"][1]["Id"] = 3315529 -- 【库】“武”字牌[属性:9]
	tAtivityForPray_Reward["Synthesis"]["DeleteItem"][2] = {}
	tAtivityForPray_Reward["Synthesis"]["DeleteItem"][2]["Id"] = 3315530 -- 【库】“汉”字牌[属性:9]
	tAtivityForPray_Reward["Synthesis"]["DeleteItem"][3] = {}
	tAtivityForPray_Reward["Synthesis"]["DeleteItem"][3]["Id"] = 3315531 -- 【库】“加”字牌[属性:9]
	tAtivityForPray_Reward["Synthesis"]["DeleteItem"][4] = {}
	tAtivityForPray_Reward["Synthesis"]["DeleteItem"][4]["Id"] = 3315532 -- 【库】“油”字牌[属性:9]
	tAtivityForPray_Reward["Synthesis"]["RewardItem"] = {}
	tAtivityForPray_Reward["Synthesis"]["RewardItem"][1] = {}
	tAtivityForPray_Reward["Synthesis"]["RewardItem"][1]["Id"] = 3329640 -- 希望之灯[3329640][属性:9][叠加:10000][金币:0], 【表格】希望之灯
	tAtivityForPray_Reward["Synthesis"]["RewardItem"][1]["Attr"] = "0 1" -- 希望之灯*1
	tAtivityForPray_Reward["Synthesis"]["RewardEffect"] = {}
	tAtivityForPray_Reward["Synthesis"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_Reward["Synthesis"]["RewardEffect"]["Effect"] = "angelwing"


	tAtivityForPray_Reward["DaySign"] = {}
	-- ===每日签到礼包
	-- ===索引: tAtivityForPray_Reward["DaySign"]
	tAtivityForPray_Reward["DaySign"]["LogId"] = 12001847
	tAtivityForPray_Reward["DaySign"]["RewardItem"] = {}
	tAtivityForPray_Reward["DaySign"]["RewardItem"][1] = {}
	tAtivityForPray_Reward["DaySign"]["RewardItem"][1]["Id"] = 3329640 -- 希望之灯[3329640][属性:9][叠加:10000][金币:0], 【表格】希望之灯
	tAtivityForPray_Reward["DaySign"]["RewardItem"][1]["Attr"] = "0 1" -- 希望之灯*1
			-- 1天（零点重置）, 可获得1个
	tAtivityForPray_Reward["DaySign"]["EventType"] = 215
	tAtivityForPray_Reward["DaySign"]["DataType"] = 67
	tAtivityForPray_Reward["DaySign"]["RewardDelay"] = 1
	tAtivityForPray_Reward["DaySign"]["RewardTimeType"] = 4
	tAtivityForPray_Reward["DaySign"]["RewardData"] = 1
	tAtivityForPray_Reward["DaySign"]["RewardEffect"] = {}
	tAtivityForPray_Reward["DaySign"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_Reward["DaySign"]["RewardEffect"]["Effect"] = "angelwing"


	tAtivityForPray_Reward["Meritorious"] = {}
	-- ===显著功勋礼包
	-- ===索引: tAtivityForPray_Reward["Meritorious"]
	tAtivityForPray_Reward["Meritorious"]["LogId"] = 12001847
	tAtivityForPray_Reward["Meritorious"]["RewardItem"] = {}
	tAtivityForPray_Reward["Meritorious"]["RewardItem"][1] = {}
	tAtivityForPray_Reward["Meritorious"]["RewardItem"][1]["Id"] = 3315533 -- 祈福字牌包[3315533][属性:9][叠加:10000][金币:0], 【表格】祈福字牌包
	tAtivityForPray_Reward["Meritorious"]["RewardItem"][1]["Attr"] = "0 5" -- 祈福字牌包*5
			-- 1天（零点重置）, 可获得1个
	tAtivityForPray_Reward["Meritorious"]["EventType"] = 215
	tAtivityForPray_Reward["Meritorious"]["DataType"] = 69
	tAtivityForPray_Reward["Meritorious"]["RewardDelay"] = 1
	tAtivityForPray_Reward["Meritorious"]["RewardTimeType"] = 4
	tAtivityForPray_Reward["Meritorious"]["RewardData"] = 1
	tAtivityForPray_Reward["Meritorious"]["RewardEffect"] = {}
	tAtivityForPray_Reward["Meritorious"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAtivityForPray_Reward["Meritorious"]["RewardEffect"]["Effect"] = "angelwing"


----------------------------------逻辑部分---------------------------------------------
-- 打开内嵌网页
function AtivityForPray_OpenWebDialog(nAtivityForPray_NpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		LinkNpcGossipFunc_New(nAtivityForPray_NpcId, "1-2")
		return
	end
	local sAtivityForPray_Link = tAtivityForPray_Data["Web"]
	User_SendWebDialog(sAtivityForPray_Link)
end

-- 祈福读条
function AtivityForPray_ExploreForPray(nAtivityForPray_Index)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(tAtivityForPray_Data["NpcId"], "1-1")
		return
	end
	-- 判断物品数量
	if not Item_ChkMulItem(tAtivityForPray_Data["ItemId"], tAtivityForPray_Data["ItemId"], nAtivityForPray_Index * 10) then
		if nAtivityForPray_Index == 1 then
			LinkNpcGossipFunc_New(tAtivityForPray_Data["NpcId"], "2-1")
		else
			LinkNpcGossipFunc_New(tAtivityForPray_Data["NpcId"], "2-2")
		end
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(nAtivityForPray_Index) then
		Sys_MsgBox(string.format(tAtivityForPray_Text["Sys_Msg"]["FullSpace"], nAtivityForPray_Index))
		return
	end
	
	-- 读条
	User_SetExplore(3, tAtivityForPray_Text["Sys_Msg"]["Explore"], 220, "AtivityForPray_ForPraySucess</N>" .. nAtivityForPray_Index)
	
end

-- 祈福
function AtivityForPray_ForPraySucess(nAtivityForPray_Index, nAtivityForPray_UserId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(tAtivityForPray_Data["NpcId"], "1-1", nil, nil, nAtivityForPray_UserId)
		return
	end
	-- 判断物品数量
	if not Item_ChkMulItem(tAtivityForPray_Data["ItemId"], tAtivityForPray_Data["ItemId"], nAtivityForPray_Index * 10, nil, nil, nAtivityForPray_UserId) then
		if nAtivityForPray_Index == 1 then
			LinkNpcGossipFunc_New(tAtivityForPray_Data["NpcId"], "2-1", nil, nil, nAtivityForPray_UserId)
		else
			LinkNpcGossipFunc_New(tAtivityForPray_Data["NpcId"], "2-2", nil, nil, nAtivityForPray_UserId)
		end
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(nAtivityForPray_Index, nAtivityForPray_UserId) then
		Sys_MsgBox(string.format(tAtivityForPray_Text["Sys_Msg"]["FullSpace"], nAtivityForPray_Index), nil, nil, nAtivityForPray_UserId)
		return
	end
	-- 祈福给奖励
	for i = 1, nAtivityForPray_Index do
		local tNewReward, sRewardStr = RewardTemplate_RandomReward(tAtivityForPray_RandomReward[3329639], 1, nAtivityForPray_UserId)
		if tNewReward then
			-- 是否全服公告
			if tNewReward[1]["tAward"][1]["BroadCast"] ~= nil then
				Sys_SystemBroadcast(string.format(tAtivityForPray_Text["Sys_Msg"]["Broadcast"], Get_UserName(nAtivityForPray_UserId), sRewardStr))
			end
			-- 增加全服祈福次数
			local nAtivityForPray_GlobalId = tAtivityForPray_Data["GlibalId"]
			local nAtivityForPray_ServerNum = Get_SysDynaGlobalData0(nAtivityForPray_GlobalId)
			Sys_SetSynaGlobalData0(nAtivityForPray_GlobalId, nAtivityForPray_ServerNum + 1)
		end
	end
	
end


-- 活跃度礼包
function AtivityForPray_DailyPack()
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime"]) then
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		return
	end
	local nAtivityForPray_Event = tAtivityForPray_Data["Stc"]["Event"][2]
	local nAtivityForPray_Type = tAtivityForPray_Data["Stc"]["Data"][2]
	--隔天
	if Task_StcInterval(nAtivityForPray_Event, nAtivityForPray_Type, 1, 4) then
		Task_SetStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 0, 1)
		Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nAtivityForPray_Event, nAtivityForPray_Type, ">", 0) then
		return
	end
	-- 置掩码领取奖励
	if Task_SetStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 1, 1) then
		Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
		RewardTemplate_UseItemAndMsg(tAtivityForPray_Reward[3329639])
	end
end


--打怪掉落
function AtivityForPray_KillMonster()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime"]) then
		return
	end
		-- 判断背包
	if not User_CheckLeftSpace(1) then
		return
	end
	local nAtivityForPray_Event = tAtivityForPray_Data["Stc"]["Event"][3]
	local nAtivityForPray_Type = tAtivityForPray_Data["Stc"]["Data"][3]
	-- 判断掩码隔天
	if Task_StcInterval(nAtivityForPray_Event, nAtivityForPray_Type, 1, 4) then
		Task_SetStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 0, 1)
		Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nAtivityForPray_Event, nAtivityForPray_Type, "==", 50) then
		Task_SetStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 51, 1)
		Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
		Sys_MsgBox(tAtivityForPray_Text["Sys_Msg"]["KillMonster"])
		return
	elseif Task_ChkStcValue(nAtivityForPray_Event, nAtivityForPray_Type, ">", 50) then
		return
	end
	
	RewardTemplate_NewRandom(tAtivityForPray_RandomReward[3329639], 2)
end 



-- 每日上线弹窗
function AtivityForPray_DayLoginPhoto()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime"]) then
		return
	end
	-- 隔天
	local nAtivityForPray_Event = tAtivityForPray_Data["Stc"]["Event"][1]
	local nAtivityForPray_Type = tAtivityForPray_Data["Stc"]["Data"][1]
	-- 判断掩码隔天
	if Task_StcInterval(nAtivityForPray_Event, nAtivityForPray_Type, 1, 4) then
		Task_SetStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 0, 1)
		Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nAtivityForPray_Event, nAtivityForPray_Type, ">", 0) then
		return
	end
	-- 置掩码领取奖励
	if Task_SetStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 1, 1) then
		Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
		User_NoviceTeaching(tAtivityForPray_Data["GuiId"])
	end
end


-- 过期删除
function AtivityForPray_OutTimeDelItem(nAtivityForPray_ItemId)
	local nAtivityForPray_ItemNum = Get_CountItemType(nAtivityForPray_ItemId, 0)
	if nAtivityForPray_ItemNum <= 0 then
		return false
	end
	if Item_ChkItem(nAtivityForPray_ItemId) and Item_DelAllItemByType(nAtivityForPray_ItemId) then
		local sAtivityForPray_Log = string.format(tAtivityForPray_Data["Log"]["OutTimeLog"], nAtivityForPray_ItemId, nAtivityForPray_ItemNum)
		Sys_SaveActionFestivalLog(sAtivityForPray_Log)
		return true
	end
end



--打怪掉落
function AtivityForPray_KillNextMonster()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		return
	end
		-- 判断背包
	if not User_CheckLeftSpace(1) then
		return
	end
	local nAtivityForPray_Event = tAtivityForPray_Data["Stc"]["Event"][3]
	local nAtivityForPray_Type = tAtivityForPray_Data["Stc"]["Data"][3]
	-- 判断掩码隔天
	if Task_StcInterval(nAtivityForPray_Event, nAtivityForPray_Type, 1, 4) then
		Task_SetStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 0, 1)
		Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nAtivityForPray_Event, nAtivityForPray_Type, "==", 10) then
		Task_SetStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 11, 1)
		Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
		Sys_MsgBox(tAtivityForPray_Text["Sys_Msg"]["MonsterDrop"])
		return
	elseif Task_ChkStcValue(nAtivityForPray_Event, nAtivityForPray_Type, ">", 10) then
		return
	end
	
	RewardTemplate_NewRandom(tAtivityForPray_RandomReward["MonsterDrop"], 1)
end 



-- 签到礼包
function AtivityForPray_DailySignPack()
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		return
	end
	local nAtivityForPray_Event = tAtivityForPray_Data["Stc"]["Event"][4]
	local nAtivityForPray_Type = tAtivityForPray_Data["Stc"]["Data"][4]
	--隔天
	if Task_StcInterval(nAtivityForPray_Event, nAtivityForPray_Type, 1, 4) then
		Task_SetStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 0, 1)
		Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nAtivityForPray_Event, nAtivityForPray_Type, ">", 0) then
		return
	end
	-- 置掩码领取奖励
	-- if Task_SetStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 1, 1) then
		-- Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
	RewardTemplate_UseItemAndMsg(tAtivityForPray_Reward["DaySign"])
	-- end
end


-- 显著功勋礼包
function AtivityForPray_DailyMeritoriousPack()
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		return
	end
	local nAtivityForPray_Event = tAtivityForPray_Data["Stc"]["Event"][5]
	local nAtivityForPray_Type = tAtivityForPray_Data["Stc"]["Data"][5]
	--隔天
	if Task_StcInterval(nAtivityForPray_Event, nAtivityForPray_Type, 1, 4) then
		Task_SetStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 0, 1)
		Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nAtivityForPray_Event, nAtivityForPray_Type, ">", 0) then
		return
	end
	-- 置掩码领取奖励
	-- if Task_SetStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 1, 1) then
		-- Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
	RewardTemplate_UseItemAndMsg(tAtivityForPray_Reward["Meritorious"])
	-- end
end


-- 判断玩家是否拥有道具
function AtivityForPray_ChkUserItem(nAtivityForPray_NpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		LinkNpcGossipFunc_New(nAtivityForPray_NpcId, "1-2")
		return
	end
	-- 判断物品
	local nAtivityForPray_ItemId = tAtivityForPray_Data["ItemId2"]
	if not Item_ChkItem(nAtivityForPray_ItemId) then
		LinkNpcGossipFunc_New(nAtivityForPray_NpcId, "2-1")
	else
		LinkNpcGossipFunc_New(nAtivityForPray_NpcId, "2-2")
	end
end

-- 判断条件
function AtivityForPray_ChkprayForWH(nAtivityForPray_NpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		LinkNpcGossipFunc_New(nAtivityForPray_NpcId, "1-2")
		return
	end
	-- 判断物品
	local nAtivityForPray_ItemId = tAtivityForPray_Data["ItemId2"]
	if not Item_ChkItem(nAtivityForPray_ItemId) then
		LinkNpcGossipFunc_New(nAtivityForPray_NpcId, "2-1")
		return
	end
	-- 判断条件
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(string.format(tAtivityForPray_Text["Sys_Msg"]["FullSpace"], 1))
		return
	end
	
	-- 如果选择花钱祈福则判断金币
	if not User_CanPutMoney2Bag(-tAtivityForPray_Data["NeedMoney"]) then
		Sys_MsgBox(tAtivityForPray_Text["Sys_Msg"]["NotMoney"])
		return
	else
		LinkNpcGossipFunc_New(nAtivityForPray_NpcId, "3-1")
	end
end

-- 祈福
function AtivityForPray_PrayForWH(nAtivityForPray_NpcId, nAtivityForPray_Index)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		LinkNpcGossipFunc_New(nAtivityForPray_NpcId, "1-2")
		return
	end
	-- 判断物品
	local nAtivityForPray_ItemId = tAtivityForPray_Data["ItemId2"]
	if not Item_ChkItem(nAtivityForPray_ItemId) then
		LinkNpcGossipFunc_New(nAtivityForPray_NpcId, "2-1")
		return
	end
	-- 判断背包
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(string.format(tAtivityForPray_Text["Sys_Msg"]["FullSpace"], 1))
		return
	end
	
	-- 如果选择花钱祈福则判断金币
	if nAtivityForPray_Index == 1 then
		if not User_CanPutMoney2Bag(-tAtivityForPray_Data["NeedMoney"]) then
			Sys_MsgBox(tAtivityForPray_Text["Sys_Msg"]["NotMoney"])
			return
		end
		-- 扣除金币给奖励 之后记录全服祈福次数
		if User_AddMoney(-tAtivityForPray_Data["NeedMoney"]) then
			if RewardTemplate_UseItemAndMsg(tAtivityForPray_Reward[3315535]) then
				-- 个人总祈福次数
				local nAtivityForPray_Event = tAtivityForPray_Data["Stc"]["Event"][7]
				local nAtivityForPray_Type = tAtivityForPray_Data["Stc"]["Data"][7]
				Task_AddStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 1, 1)
				Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
				-- 全服总次数
				local nAtivityForPray_GlobalId = tAtivityForPray_Data["GlibalId"]
				local nAtivityForPray_ServerNum = Get_SysDynaGlobalData5(nAtivityForPray_GlobalId)
				Sys_SetSynaGlobalData5(nAtivityForPray_GlobalId, nAtivityForPray_ServerNum + 1)
				Sys_MsgBox(tAtivityForPray_Text["Sys_Msg"]["Success1"])
				-- 记录emoneylog
				Sys_SaveEmoneyBuy(tAtivityForPray_Data["Log"]["EmoneyLog"])
			end
		end
		
	else
		-- 给奖励 之后记录全服祈福次数
		if RewardTemplate_UseItemAndMsg(tAtivityForPray_Reward[3315534]) then
			-- 个人总祈福次数
			local nAtivityForPray_Event = tAtivityForPray_Data["Stc"]["Event"][7]
			local nAtivityForPray_Type = tAtivityForPray_Data["Stc"]["Data"][7]
			Task_AddStatistic(nAtivityForPray_Event, nAtivityForPray_Type, 1, 1)
			Task_SetStcTimestamp(nAtivityForPray_Event, nAtivityForPray_Type, 0)
			-- 全服总次数
			local nAtivityForPray_GlobalId = tAtivityForPray_Data["GlibalId"]
			local nAtivityForPray_ServerNum = Get_SysDynaGlobalData5(nAtivityForPray_GlobalId)
			Sys_SetSynaGlobalData5(nAtivityForPray_GlobalId, nAtivityForPray_ServerNum + 1)
			Sys_MsgBox(tAtivityForPray_Text["Sys_Msg"]["Success2"])
		end
	end
	LinkNpcGossipFunc_New(nAtivityForPray_NpcId, "2-2")
end


-- 个人祈福领奖
function AtivityForPray_RewardSelfPray(nAtivityForPray_NpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		LinkNpcGossipFunc_New(nAtivityForPray_NpcId, "1-2")
		return
	end
	-- 判断背包
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(string.format(tAtivityForPray_Text["Sys_Msg"]["FullSpace"], 1))
		return
	end
	-- 个人总祈福次数
	local nAtivityForPray_Event = tAtivityForPray_Data["Stc"]["Event"][7]
	local nAtivityForPray_Type = tAtivityForPray_Data["Stc"]["Data"][7]
	local nAtivityForPray_PrayNum = Get_UserStatisticValue(nAtivityForPray_Event, nAtivityForPray_Type)
	local nCanRewardNum = 0
	if nAtivityForPray_PrayNum >= 10 then
		nCanRewardNum = math.floor(nAtivityForPray_PrayNum / 10)
	end
	-- 个人总领奖次数
	local nAtivityForPray_RewardEvent = tAtivityForPray_Data["Stc"]["Event"][8]
	local nAtivityForPray_RewardType = tAtivityForPray_Data["Stc"]["Data"][8]
	local nAtivityForPray_RewardNum = Get_UserStatisticValue(nAtivityForPray_RewardEvent, nAtivityForPray_RewardType)
	
	nCanRewardNum = nCanRewardNum - nAtivityForPray_RewardNum
	
	-- 判断是否能领奖
	if nCanRewardNum > 0 then
		if Task_AddStatistic(nAtivityForPray_RewardEvent, nAtivityForPray_RewardType, 1, 1) then
			Task_SetStcTimestamp(nAtivityForPray_RewardEvent, nAtivityForPray_RewardType, 0)
			RewardTemplate_UseItemAndMsg(tAtivityForPray_Reward[3315536])
		end
	else
		Sys_MsgBox(tAtivityForPray_Text["Sys_Msg"]["CanNotDo"])
		return
	end
end


-- 领取全服祈福领奖
function AtivityForPray_RewardServerPray(nAtivityForPray_NpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		LinkNpcGossipFunc_New(nAtivityForPray_NpcId, "1-2")
		return
	end
	-- 判断背包
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(string.format(tAtivityForPray_Text["Sys_Msg"]["FullSpace"], 1))
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(0, 2) then
		Sys_MsgBox(tAtivityForPray_Text["Sys_Msg"]["NotLevel"])
		return
	end
	
	-- 全服祈福领奖次数
	local nAtivityForPray_RewardEvent = tAtivityForPray_Data["Stc"]["Event"][9]
	local nAtivityForPray_RewardType = tAtivityForPray_Data["Stc"]["Data"][9]
	local nAtivityForPray_RewardNum = Get_UserStatisticValue(nAtivityForPray_RewardEvent, nAtivityForPray_RewardType)
	
	-- 全服总祈福数
	local nAtivityForPray_GlobalId = tAtivityForPray_Data["GlibalId"]
	local nAtivityForPray_ServerNum = Get_SysDynaGlobalData5(nAtivityForPray_GlobalId)
	
	-- 判断是否能领奖
	if nAtivityForPray_RewardNum >= 4 then
		Sys_MsgBox(tAtivityForPray_Text["Sys_Msg"]["CanNotDo"])
		return
	elseif nAtivityForPray_ServerNum >= tAtivityForPray_Data["NeedPrayNum"][nAtivityForPray_RewardNum + 1] then
		if Task_AddStatistic(nAtivityForPray_RewardEvent, nAtivityForPray_RewardType, 1, 1) then
			Task_SetStcTimestamp(nAtivityForPray_RewardEvent, nAtivityForPray_RewardType, 0)
			RewardTemplate_UseItemAndMsg(tAtivityForPray_Reward[3315537])
		end
	else
		Sys_MsgBox(tAtivityForPray_Text["Sys_Msg"]["CanNotDo"])
		return
	end
end


----------------------------------NPC部分---------------------------------------------
tNpcFace[4224] = 6
tNpcGossip[25937]= tNpcGossip[25937] or DefaultNpc:new{}
tNpcGossip[25937]["OptionHidden"] = 1
tNpcGossip[25937]["DialogueText"] = tAtivityForPray_Text[25937]
-- 活动后
tNpcGossip[25937]["Text1-1"] = {111, 112}
tNpcGossip[25937]["ChkFunc1-1"]= function()
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["AtivityForPray"]["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[25937]["tOption1-1"] = {111}
-- 活动中等级不足
tNpcGossip[25937]["Text1-2"] = {121, 122}
tNpcGossip[25937]["ChkFunc1-2"]= function()
	-- 判断时间
	if Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime"]) then
		-- 判断等级
		if not User_JudgeLevelAndMetempsychosis(tAtivityForPray_Data["Level"], tAtivityForPray_Data["Meto"]) then
			return true
		end
	end
	return false
end
tNpcGossip[25937]["tOption1-2"] = {121}
-- 活动中
tNpcGossip[25937]["Text1-3"] = {131, 132, 133}
tNpcGossip[25937]["ChkFunc1-3"]= function()
	-- 判断时间
	if Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime"]) then
		-- 判断等级
		if not User_JudgeLevelAndMetempsychosis(tAtivityForPray_Data["Level"], tAtivityForPray_Data["Meto"]) then
			return false
		end
	end
	-- 全服祈福次数赋值
	local nAtivityForPray_GlobalId = tAtivityForPray_Data["GlibalId"]
	local nAtivityForPray_ServerNum = Get_SysDynaGlobalData0(nAtivityForPray_GlobalId)
	
	tNpcGossip[25937]["Text133"] = string.format(tAtivityForPray_Text[25937]["Text133"], nAtivityForPray_ServerNum)
	
	return true
end
tNpcGossip[25937]["tOption1-3"] = {131, 132, 133, 134}
tNpcGossip[25937]["OptionFunc131"] = "AtivityForPray_ExploreForPray</N>1"
tNpcGossip[25937]["OptionFunc132"] = "AtivityForPray_ExploreForPray</N>5"
tNpcGossip[25937]["OptionPoint133"] = "5-1"
tNpcGossip[25937]["OptionPoint134"] = "6-1"

-- 祈福失败1次
tNpcGossip[25937]["Text2-1"] = {211}
tNpcGossip[25937]["tOption2-1"] = {211}
-- 祈福失败5次
tNpcGossip[25937]["Text2-2"] = {221}
tNpcGossip[25937]["tOption2-2"] = {221}

-- 背包满
tNpcGossip[25937]["Text3-1"] = {311}
tNpcGossip[25937]["tOption3-1"] = {311}

-- 祈福成功获得奖励
tNpcGossip[25937]["Text4-1"] = {411}
tNpcGossip[25937]["tOption4-1"] = {411}

-- 如何获得祈福蜡烛？
tNpcGossip[25937]["Text5-1"] = {511, 512, 513, 514, 515, 516}
tNpcGossip[25937]["tOption5-1"] = {511, 512}
tNpcGossip[25937]["OptionPoint511"] = "1-3"

-- 祈福成功获得奖励
tNpcGossip[25937]["Text6-1"] = {611, 612, 613, 614, 615, 616}
tNpcGossip[25937]["tOption6-1"] = {611, 612}
tNpcGossip[25937]["OptionPoint611"] = "1-3"


-- 希望之灯
tNpcFace[4225] = 2801
tNpcGossip[25948]= tNpcGossip[25948] or DefaultNpc:new{}
tNpcGossip[25948]["OptionHidden"] = 1
tNpcGossip[25948]["DialogueText"] = tAtivityForPray_Text[25948]
-- 活动前
tNpcGossip[25948]["Text1-1"] = {111, 112, 113, 114, 115, 116}
tNpcGossip[25948]["ChkFunc1-1"]= function()
	-- 判断时间
	if CommonFunc_GetBeforeActivityTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		return true
	end
	return false
end
tNpcGossip[25948]["tOption1-1"] = {111}
-- 活动后
tNpcGossip[25948]["Text1-2"] = {111, 112}
tNpcGossip[25948]["ChkFunc1-2"]= function()
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		return true
	end
	return false
end
tNpcGossip[25948]["tOption1-2"] = {121}
-- 活动中等级不足
tNpcGossip[25948]["Text1-3"] = {131, 132, 133, 134, 135, 136, 137, 138}
tNpcGossip[25948]["ChkFunc1-3"]= function()
	-- 判断时间
	if Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		-- 判断等级
		if not User_JudgeLevelAndMetempsychosis(tAtivityForPray_Data["Level"], tAtivityForPray_Data["Meto"]) then
			return true
		end
	end
	return false
end
tNpcGossip[25948]["tOption1-3"] = {131}
-- 活动中
tNpcGossip[25948]["Text1-4"] = {141, 142, 143, 144, 145, 146, 147}
tNpcGossip[25948]["ChkFunc1-4"]= function()
	-- 判断时间
	if Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		-- 判断等级
		if not User_JudgeLevelAndMetempsychosis(tAtivityForPray_Data["Level"], tAtivityForPray_Data["Meto"]) then
			return false
		end
	end
	-- 判断是否可领取奖励
	local nAtivityForPray_Event = tAtivityForPray_Data["Stc"]["Event"][7]
	local nAtivityForPray_Type = tAtivityForPray_Data["Stc"]["Data"][7]
	local nAtivityForPray_PrayNum = Get_UserStatisticValue(nAtivityForPray_Event, nAtivityForPray_Type)
	local nCanRewardNum = 0
	if nAtivityForPray_PrayNum > 0 then
		nCanRewardNum = math.floor(nAtivityForPray_PrayNum / 10)
	end
	-- 个人总领奖次数
	local nAtivityForPray_RewardEvent = tAtivityForPray_Data["Stc"]["Event"][8]
	local nAtivityForPray_RewardType = tAtivityForPray_Data["Stc"]["Data"][8]
	local nAtivityForPray_RewardNum = Get_UserStatisticValue(nAtivityForPray_RewardEvent, nAtivityForPray_RewardType)
	
	nCanRewardNum = nCanRewardNum - nAtivityForPray_RewardNum
	
	local fAtivityForPray_ChkSign = false
	if nCanRewardNum > 0 then
		fAtivityForPray_ChkSign = true
	end
	
	-- 全服祈福领奖次数
	local nAtivityForPray_RewardEvent = tAtivityForPray_Data["Stc"]["Event"][9]
	local nAtivityForPray_RewardType = tAtivityForPray_Data["Stc"]["Data"][9]
	local nAtivityForPray_RewardNum = Get_UserStatisticValue(nAtivityForPray_RewardEvent, nAtivityForPray_RewardType)

	-- 全服总祈福数
	local nAtivityForPray_GlobalId = tAtivityForPray_Data["GlibalId"]
	local nAtivityForPray_ServerNum = Get_SysDynaGlobalData5(nAtivityForPray_GlobalId)
	
	if nAtivityForPray_RewardNum < 4 and nAtivityForPray_ServerNum >= tAtivityForPray_Data["NeedPrayNum"][nAtivityForPray_RewardNum + 1] then
		fAtivityForPray_ChkSign = true
	end
	
	if fAtivityForPray_ChkSign then
		tNpcGossip[25948]["Option142"] = string.format(tAtivityForPray_Text[25948]["Option142"], tAtivityForPray_Text["Sys_Msg"]["CanDo"])
	else
		tNpcGossip[25948]["Option142"] = string.format(tAtivityForPray_Text[25948]["Option142"], "")
	end
	
	return true
end
tNpcGossip[25948]["tOption1-4"] = {141, 142, 143}
tNpcGossip[25948]["OptionFunc141"] = "AtivityForPray_ChkUserItem</N>25948"
tNpcGossip[25948]["OptionPoint142"] = "4-1"
tNpcGossip[25948]["OptionFunc143"] = "AtivityForPray_OpenWebDialog</N>25948"
-- 没有希望之灯
tNpcGossip[25948]["Text2-1"] = {211, 212}
tNpcGossip[25948]["tOption2-1"] = {211}
-- 有希望之灯
tNpcGossip[25948]["Text2-2"] = {221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234}
tNpcGossip[25948]["tOption2-2"] = {221, 222}
tNpcGossip[25948]["OptionFunc221"] = "AtivityForPray_ChkprayForWH</N>25948"
tNpcGossip[25948]["OptionFunc222"] = "AtivityForPray_PrayForWH</N>25948</N>2"
-- 确认花费15万银两
tNpcGossip[25948]["Text3-1"] = {311}
tNpcGossip[25948]["tOption3-1"] = {311, 312}
tNpcGossip[25948]["OptionFunc311"] = "AtivityForPray_PrayForWH</N>25948</N>1"
-- 查看本服祈福好礼
tNpcGossip[25948]["Text4-1"] = {411, 412, 413, 414, 415, 416, 417, 418, 419}
tNpcGossip[25948]["ChkFunc4-1"]= function()
	-- 重新赋值
	-- 个人次数
	local nAtivityForPray_Event = tAtivityForPray_Data["Stc"]["Event"][7]
	local nAtivityForPray_Type = tAtivityForPray_Data["Stc"]["Data"][7]
	local nAtivityForPray_PrayNum = Get_UserStatisticValue(nAtivityForPray_Event, nAtivityForPray_Type)
	
	-- 全服总次数
	local nAtivityForPray_GlobalId = tAtivityForPray_Data["GlibalId"]
	local nAtivityForPray_ServerNum = Get_SysDynaGlobalData5(nAtivityForPray_GlobalId)
	
	tNpcGossip[25948]["Text419"] = string.format(tAtivityForPray_Text[25948]["Text419"], nAtivityForPray_PrayNum, nAtivityForPray_ServerNum)
	
	return true
end
tNpcGossip[25948]["tOption4-1"] = {411, 412}
tNpcGossip[25948]["OptionFunc411"] = "AtivityForPray_RewardSelfPray</N>25948"
tNpcGossip[25948]["OptionChkFunc411"] = function ()
	-- 个人总祈福次数
	local nAtivityForPray_Event = tAtivityForPray_Data["Stc"]["Event"][7]
	local nAtivityForPray_Type = tAtivityForPray_Data["Stc"]["Data"][7]
	local nAtivityForPray_PrayNum = Get_UserStatisticValue(nAtivityForPray_Event, nAtivityForPray_Type)
	local nCanRewardNum = 0
	if nAtivityForPray_PrayNum > 0 then
		nCanRewardNum = math.floor(nAtivityForPray_PrayNum / 10)
	end
	-- 个人总领奖次数
	local nAtivityForPray_RewardEvent = tAtivityForPray_Data["Stc"]["Event"][8]
	local nAtivityForPray_RewardType = tAtivityForPray_Data["Stc"]["Data"][8]
	local nAtivityForPray_RewardNum = Get_UserStatisticValue(nAtivityForPray_RewardEvent, nAtivityForPray_RewardType)
	
	nCanRewardNum = nCanRewardNum - nAtivityForPray_RewardNum
	
	if nCanRewardNum > 0 then
		tNpcGossip[25948]["Option411"] = string.format(tAtivityForPray_Text[25948]["Option411"], tAtivityForPray_Text["Sys_Msg"]["CanDo"])
	else
		tNpcGossip[25948]["Option411"] = string.format(tAtivityForPray_Text[25948]["Option411"], "")
	end
	
	return true
end
tNpcGossip[25948]["OptionFunc412"] = "AtivityForPray_RewardServerPray</N>25948"
tNpcGossip[25948]["OptionChkFunc412"] = function ()
	-- 全服祈福领奖次数
	local nAtivityForPray_RewardEvent = tAtivityForPray_Data["Stc"]["Event"][9]
	local nAtivityForPray_RewardType = tAtivityForPray_Data["Stc"]["Data"][9]
	local nAtivityForPray_RewardNum = Get_UserStatisticValue(nAtivityForPray_RewardEvent, nAtivityForPray_RewardType)

	-- 全服总祈福数
	local nAtivityForPray_GlobalId = tAtivityForPray_Data["GlibalId"]
	local nAtivityForPray_ServerNum = Get_SysDynaGlobalData5(nAtivityForPray_GlobalId)
	
	-- 判断是否可领
	if nAtivityForPray_RewardNum >= 4 then
		tNpcGossip[25948]["Option412"] = string.format(tAtivityForPray_Text[25948]["Option412"], "")
	elseif nAtivityForPray_ServerNum >= tAtivityForPray_Data["NeedPrayNum"][nAtivityForPray_RewardNum + 1] then
		tNpcGossip[25948]["Option412"] = string.format(tAtivityForPray_Text[25948]["Option412"], tAtivityForPray_Text["Sys_Msg"]["CanDo"])
	else
		tNpcGossip[25948]["Option412"] = string.format(tAtivityForPray_Text[25948]["Option412"], "")
	end
	
	return true
end




-----------------------------------
-- 希望之灯
tItem[3329640] = tItem[3329640] or {}
tItem[3329640]["Function"] = function(nAtivityForPray_ItemId,sAtivityForPray_ItemName)
	if Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		NpcPosition_PathFind(tAtivityForPray_Data["NpcId2"])
		return
	else
		local nAtivityForPray_ItemNum = Get_CountItemType(nAtivityForPray_ItemId, 0)
		if Item_ChkItem(nAtivityForPray_ItemId) and Item_DelAllItemByType(nAtivityForPray_ItemId) then
			local sAtivityForPray_Log = string.format(tAtivityForPray_Data["Log"]["OutTimeLog"], nAtivityForPray_ItemId, nAtivityForPray_ItemNum)
			Sys_SaveActionFestivalLog(sAtivityForPray_Log)
			User_TalkChannel2005(tAtivityForPray_Text["Sys_Msg"]["ItemOutTime"])
		end
		return
	end
end

-- 祈福蜡烛
tItem[3329639] = tItem[3329639] or {}
tItem[3329639]["Function"] = function(nAtivityForPray_ItemId,sAtivityForPray_ItemName)
	if Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime"]) then
		NpcPosition_PathFind(tAtivityForPray_Data["NpcId"])
		return
	else
		local nAtivityForPray_ItemNum = Get_CountItemType(nAtivityForPray_ItemId, 0)
		if Item_ChkItem(nAtivityForPray_ItemId) and Item_DelAllItemByType(nAtivityForPray_ItemId) then
			local sAtivityForPray_Log = string.format(tAtivityForPray_Data["Log"]["OutTimeLog"], nAtivityForPray_ItemId, nAtivityForPray_ItemNum)
			Sys_SaveActionFestivalLog(sAtivityForPray_Log)
			User_TalkChannel2005(tAtivityForPray_Text["Sys_Msg"]["OutTime"])
		end
		return
	end
end

-- 字牌
tItem[3315529] = tItem[3315529] or {}
tItem[3315529]["Function"] = function(nAtivityForPray_ItemId,sAtivityForPray_ItemName)
	-- 判断活动时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		if AtivityForPray_OutTimeDelItem(nAtivityForPray_ItemId) then
			User_TalkChannel2005(tAtivityForPray_Text["Sys_Msg"]["ItemOutTime"])
		end
		return
	end
	
	-- 判断条件
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(string.format(tAtivityForPray_Text["Sys_Msg"]["FullSpace"], 1))
		return
	end
	
	if not Item_ChkItem(tAtivityForPray_Data["NeedItemId"][1]) or not Item_ChkItem(tAtivityForPray_Data["NeedItemId"][2]) or not Item_ChkItem(tAtivityForPray_Data["NeedItemId"][3]) or not Item_ChkItem(tAtivityForPray_Data["NeedItemId"][4]) then
		Sys_MsgBox(tAtivityForPray_Text["Sys_Msg"]["SynthesisFalse"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tAtivityForPray_Reward["Synthesis"])
	
end
tItem[3315530] = tItem[3315529]
tItem[3315531] = tItem[3315529]
tItem[3315532] = tItem[3315529]


-- 祈福字牌包
tItem[3315533] = tItem[3315533] or {}
tItem[3315533]["Function"] = function(nAtivityForPray_ItemId,sAtivityForPray_ItemName)
	-- 判断活动时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["AtivityForPray"]["ActivityTime2"]) then
		if AtivityForPray_OutTimeDelItem(nAtivityForPray_ItemId) then
			User_TalkChannel2005(tAtivityForPray_Text["Sys_Msg"]["ItemOutTime"])
		end
		return
	end
	
	-- 判断背包空间
	local fAtivityForPray_Chk, nAtivityForPray_Space = RewardTemplate_ChkRandomSpace(tAtivityForPray_RandomReward, nAtivityForPray_ItemId)
	if not fAtivityForPray_Chk then
		User_TalkChannel2005(string.format(tAtivityForPray_Text["Sys_Msg"]["FullSpace"], nAtivityForPray_Space))
		return
	end
	
	RewardTemplate_RandomReward(tAtivityForPray_RandomReward, nAtivityForPray_ItemId)
	
end

-- 武汉加油礼包
tItem[3315534] = tItem[3315534] or {}
tItem[3315534]["Function"] = function(nAtivityForPray_ItemId,sAtivityForPray_ItemName)
	-- 判断背包空间
	local fAtivityForPray_Chk, nAtivityForPray_Space = RewardTemplate_ChkRandomSpace(tAtivityForPray_RandomReward, nAtivityForPray_ItemId)
	if not fAtivityForPray_Chk then
		User_TalkChannel2005(string.format(tAtivityForPray_Text["Sys_Msg"]["FullSpace"], nAtivityForPray_Space))
		return
	end
	-- 判断赠点上限
	if nAtivityForPray_ItemId == 3315534 or nAtivityForPray_ItemId == 3315535 or nAtivityForPray_ItemId == 3315536 then
		--判断赠点上限
		if Get_UserMonoEMoney() + 500 > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tAtivityForPray_Text["Sys_Msg"]["FullEmoneyMono"])
			return
		end
	end
	
	local tNewReward, sRewardStr = RewardTemplate_RandomReward(tAtivityForPray_RandomReward, nAtivityForPray_ItemId)
	if tNewReward then
		-- 是否全服公告
		if tNewReward[1]["tAward"][1]["BroadCast"] ~= nil then
			Sys_SystemBroadcast(string.format(tAtivityForPray_Text["Sys_Msg"]["SysBroadcast"], Get_UserName(), Get_ItemtypeName(nAtivityForPray_ItemId), sRewardStr))
		end
	end
end
-- 武汉加油助威包
-- 希望之星礼包
-- 众志成城祈福包
tItem[3315535] = tItem[3315534]
tItem[3315536] = tItem[3315534]
tItem[3315537] = tItem[3315534]

-- 觉醒令牌
tItem[3315538] = tItem[3315538] or {}
tItem[3315538]["Function"] = function(nAtivityForPray_ItemId,sAtivityForPray_ItemName)
	Sys_MsgBox(tAtivityForPray_Text["Sys_Msg"]["UseMsg"])
end



---------------------------------------上线触发--------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func, AtivityForPray_DayLoginPhoto)
---------------------------------怪物部分---------------------------------------------
local tAtivityForPray_KillMonster = {}
tAtivityForPray_KillMonster["ActivityTime"] = tActivityTime["AtivityForPray"]["ActivityTime"]
tAtivityForPray_KillMonster["Function"] = AtivityForPray_KillMonster
table.insert(tMonsterDrop_AreaLoad,tAtivityForPray_KillMonster)

--激情服怪物掉落
local tAtivityForPray_KillMonster_NoGift = {}
tAtivityForPray_KillMonster_NoGift["Function"] = AtivityForPray_KillMonster
tAtivityForPray_KillMonster_NoGift["ActivityTime"] = tActivityTime["AtivityForPray"]["ActivityTime"]
tAtivityForPray_KillMonster_NoGift["MonsterId"]= {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tAtivityForPray_KillMonster_NoGift)

-- 击杀神龙岛跟古神灵境怪物掉落
local tAtivityForPray_KillNextMonster = {}
tAtivityForPray_KillNextMonster["ActivityTime"] = tActivityTime["AtivityForPray"]["ActivityTime2"]
tAtivityForPray_KillNextMonster["Function"] = AtivityForPray_KillNextMonster
-- tCollectGhost_Monster["Area"] = {11}
tAtivityForPray_KillNextMonster["MonsterId"] = {3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986,3992,4709,4710,4711,4712,4713,4720,4912,4935,5747,8415,8420,3967,3968,3969,4151,
5274,5275,5276,5277,5278,5279,5280,5281,5282,5283,5284,5285,5286,5287,5288,5289,5290,5291,5292,5293,5294,5295,5296,5297,5298,5299,5300,5301,5302,5303,5304,5305,5306,5307,5308,5309,5310,5311,5312,5313,5314,5315,5316,5317,5318,5319,5320,5321,5322,5323,5324,5325,5326,5327,5328,5329,5330,5331,5332,5333,5334,5335}

table.insert(tMonsterDrop_AreaLoad,tAtivityForPray_KillNextMonster)
table.insert(tMonsterDrop_AreaLoad_NoGift,tAtivityForPray_KillNextMonster)



