------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]5月熔炼炉回收（5.26-6.08）
--Creator:		翁清海
--Created:		2020/04/16
------------------------------------------------------------------------------------

--命名前缀
--SmeltingRecovery_

--logid:12001945

--Stc掩码说明
--(219,90)		背包信
--(219,98)		打怪掉落获得碎片上限
--(219,99)		正气令获得碎片上限
--(220,28)		保存提交的碎片数量
--(220,29)		赠点购买碎片每日上限
--(220,30)		阶段奖励领取
--(220,31)		签到礼包领取碎片每日上限
--(220,32)		排位赛胜利获取碎片每日上限
--(220,33)		熔炼良品宝石获取碎片每日上限
--(220,34)		熔炼优质宝石获取碎片每日上限
--(220,35)		熔炼通神丹获取碎片每日上限
--(220,36)		熔炼流星卷获取碎片每日上限
--(220,37)		熔炼龙珠获取碎片每日上限
--(220,38)		熔炼乾坤袋（小）获取碎片每日上限
--(220,39)		熔炼免费强炼丹获取碎片每日上限
--(220,40)		熔炼强效护心丹获取碎片每日上限

--动态码说明
--(54426,0)		熔炼地灵丹获得500赠点上限
--(54426,1)		熔炼地灵丹获得6阶灵珠上限
--(54426,2)		熔炼天灵丹获得5000赠点上限
--(54426,3)		熔炼天灵丹获得8阶灵珠上限

--------------------------------------------数据部分配置--------------------------------------------
--用来记录玩家数据
local tSmeltingRecovery_Record ={}
	
--常量表配置
local tSmeltingRecovery_Cont = {}
	--等级设置
	tSmeltingRecovery_Cont["Level"] = 15
	tSmeltingRecovery_Cont["Mete"] = 2
	--碎片id
	tSmeltingRecovery_Cont["ChipId"] = 3330680
	--阶段奖励总数
	tSmeltingRecovery_Cont["ParseNum"] = 8
	--区分普通服、绿色服和激情服
	tSmeltingRecovery_Cont["GlobalId"] = 54360
	--阶段需要的碎片数量
	tSmeltingRecovery_Cont["ParseChipNum"] = {}
	tSmeltingRecovery_Cont["ParseChipNum"][1] = 500
	tSmeltingRecovery_Cont["ParseChipNum"][2] = 1000
	tSmeltingRecovery_Cont["ParseChipNum"][3] = 3000
	tSmeltingRecovery_Cont["ParseChipNum"][4] = 5000
	tSmeltingRecovery_Cont["ParseChipNum"][5] = 8000
	tSmeltingRecovery_Cont["ParseChipNum"][6] = 10000
	tSmeltingRecovery_Cont["ParseChipNum"][7] = 15000
	tSmeltingRecovery_Cont["ParseChipNum"][8] = 20000
	--天石（赠）购买信息
	tSmeltingRecovery_Cont["Buy"] = {}
	tSmeltingRecovery_Cont["Buy"][1] = 3
	tSmeltingRecovery_Cont["Buy"][10] = 29
	tSmeltingRecovery_Cont["Buy"][100] = 268
	tSmeltingRecovery_Cont["Buy"][1000] = 2599
	--旧物品熔炼信息
	tSmeltingRecovery_Cont["Melter"] = {}
	tSmeltingRecovery_Cont["Melter"][700002] = 6
	tSmeltingRecovery_Cont["Melter"][700012] = 6
	tSmeltingRecovery_Cont["Melter"][700022] = 6
	tSmeltingRecovery_Cont["Melter"][700032] = 6
	tSmeltingRecovery_Cont["Melter"][700042] = 6
	tSmeltingRecovery_Cont["Melter"][700052] = 6
	tSmeltingRecovery_Cont["Melter"][700062] = 6
	tSmeltingRecovery_Cont["Melter"][700003] = 7
	tSmeltingRecovery_Cont["Melter"][700013] = 7
	tSmeltingRecovery_Cont["Melter"][700023] = 7
	tSmeltingRecovery_Cont["Melter"][700033] = 7
	tSmeltingRecovery_Cont["Melter"][700043] = 7
	tSmeltingRecovery_Cont["Melter"][700053] = 7
	tSmeltingRecovery_Cont["Melter"][700063] = 7
	tSmeltingRecovery_Cont["Melter"][3003125] = 8
	tSmeltingRecovery_Cont["Melter"][720027] = 9
	tSmeltingRecovery_Cont["Melter"][1088000] = 10
	tSmeltingRecovery_Cont["Melter"][1100003] = 11
	tSmeltingRecovery_Cont["Melter"][3003124] = 12
	tSmeltingRecovery_Cont["Melter"][3002030] = 13
	--旧物品非赠不能获取碎片列表
	tSmeltingRecovery_Cont["MelterMono"] = {}
	tSmeltingRecovery_Cont["MelterMono"][700002] = true
	tSmeltingRecovery_Cont["MelterMono"][700012] = true
	tSmeltingRecovery_Cont["MelterMono"][700022] = true
	tSmeltingRecovery_Cont["MelterMono"][700032] = true
	tSmeltingRecovery_Cont["MelterMono"][700042] = true
	tSmeltingRecovery_Cont["MelterMono"][700052] = true
	tSmeltingRecovery_Cont["MelterMono"][700062] = true
	tSmeltingRecovery_Cont["MelterMono"][3003125] = true
	tSmeltingRecovery_Cont["MelterMono"][720027] = true
	tSmeltingRecovery_Cont["MelterMono"][3003124] = true
	
--活动时间
local tSmeltingRecovery_Time = {}
	tSmeltingRecovery_Time["ActivityTime"] = tActivityTime["SmeltingRecovery"]["ActivityTime"]
	tSmeltingRecovery_Time["ItemTime"] = tActivityTime["SmeltingRecovery"]["ItemTime"]
	
-- log
local tSmeltingRecovery_Log = {}
	tSmeltingRecovery_Log["DelItem"] = "0,0,%d,%d,12001945,2,0,0"
	--提交碎片
	tSmeltingRecovery_Log["Hand"] = "0,0,%d,%d,12001945,1[1],0,0"
	
-- Elog
local tSmeltingRecovery_ELog = {}
	tSmeltingRecovery_ELog["Buy"] = "1000	1787"
	
-- 掩码
local tSmeltingRecovery_Stc = {}
	--保存提交的碎片数量
	tSmeltingRecovery_Stc[1] = {}
	tSmeltingRecovery_Stc[1]["Event"] = 220
	tSmeltingRecovery_Stc[1]["Type"] = 28
	--赠点购买碎片每日上限
	tSmeltingRecovery_Stc[2] = {}
	tSmeltingRecovery_Stc[2]["Event"] = 220
	tSmeltingRecovery_Stc[2]["Type"] = 29
	tSmeltingRecovery_Stc[2]["TimeType"] = 4
	tSmeltingRecovery_Stc[2]["Delay"] = 1
	tSmeltingRecovery_Stc[2]["Limit"] = 10000
	--阶段奖励领取
	tSmeltingRecovery_Stc[3] = {}
	tSmeltingRecovery_Stc[3]["Event"] = 220
	tSmeltingRecovery_Stc[3]["Type"] = 30
	--签到礼包领取碎片每日上限
	tSmeltingRecovery_Stc[4] = {}
	tSmeltingRecovery_Stc[4]["Event"] = 220
	tSmeltingRecovery_Stc[4]["Type"] = 31
	tSmeltingRecovery_Stc[4]["TimeType"] = 4
	tSmeltingRecovery_Stc[4]["Delay"] = 1
	tSmeltingRecovery_Stc[4]["Limit"] = 1
	--排位赛胜利获取碎片每日上限
	tSmeltingRecovery_Stc[5] = {}
	tSmeltingRecovery_Stc[5]["Event"] = 220
	tSmeltingRecovery_Stc[5]["Type"] = 32
	tSmeltingRecovery_Stc[5]["TimeType"] = 4
	tSmeltingRecovery_Stc[5]["Delay"] = 1
	tSmeltingRecovery_Stc[5]["Limit"] = 10
	--熔炼良品宝石获取碎片每日上限
	tSmeltingRecovery_Stc[6] = {}
	tSmeltingRecovery_Stc[6]["Event"] = 220
	tSmeltingRecovery_Stc[6]["Type"] = 33
	tSmeltingRecovery_Stc[6]["TimeType"] = 4
	tSmeltingRecovery_Stc[6]["Delay"] = 1
	tSmeltingRecovery_Stc[6]["Limit"] = 10
	--熔炼优质宝石获取碎片每日上限
	tSmeltingRecovery_Stc[7] = {}
	tSmeltingRecovery_Stc[7]["Event"] = 220
	tSmeltingRecovery_Stc[7]["Type"] = 34
	tSmeltingRecovery_Stc[7]["TimeType"] = 4
	tSmeltingRecovery_Stc[7]["Delay"] = 1
	tSmeltingRecovery_Stc[7]["Limit"] = 10
	--熔炼通神丹获取碎片每日上限
	tSmeltingRecovery_Stc[8] = {}
	tSmeltingRecovery_Stc[8]["Event"] = 220
	tSmeltingRecovery_Stc[8]["Type"] = 35
	tSmeltingRecovery_Stc[8]["TimeType"] = 4
	tSmeltingRecovery_Stc[8]["Delay"] = 1
	tSmeltingRecovery_Stc[8]["Limit"] = 5
	--熔炼流星卷获取碎片每日上限
	tSmeltingRecovery_Stc[9] = {}
	tSmeltingRecovery_Stc[9]["Event"] = 220
	tSmeltingRecovery_Stc[9]["Type"] = 36
	tSmeltingRecovery_Stc[9]["TimeType"] = 4
	tSmeltingRecovery_Stc[9]["Delay"] = 1
	tSmeltingRecovery_Stc[9]["Limit"] = 10
	--熔炼龙珠获取碎片每日上限
	tSmeltingRecovery_Stc[10] = {}
	tSmeltingRecovery_Stc[10]["Event"] = 220
	tSmeltingRecovery_Stc[10]["Type"] = 37
	tSmeltingRecovery_Stc[10]["TimeType"] = 4
	tSmeltingRecovery_Stc[10]["Delay"] = 1
	tSmeltingRecovery_Stc[10]["Limit"] = 5
	--熔炼乾坤袋（小）获取碎片每日上限
	tSmeltingRecovery_Stc[11] = {}
	tSmeltingRecovery_Stc[11]["Event"] = 220
	tSmeltingRecovery_Stc[11]["Type"] = 38
	tSmeltingRecovery_Stc[11]["TimeType"] = 4
	tSmeltingRecovery_Stc[11]["Delay"] = 1
	tSmeltingRecovery_Stc[11]["Limit"] = 5
	--熔炼免费强炼丹获取碎片每日上限
	tSmeltingRecovery_Stc[12] = {}
	tSmeltingRecovery_Stc[12]["Event"] = 220
	tSmeltingRecovery_Stc[12]["Type"] = 39
	tSmeltingRecovery_Stc[12]["TimeType"] = 4
	tSmeltingRecovery_Stc[12]["Delay"] = 1
	tSmeltingRecovery_Stc[12]["Limit"] = 10
	--熔炼强效护心丹获取碎片每日上限
	tSmeltingRecovery_Stc[13] = {}
	tSmeltingRecovery_Stc[13]["Event"] = 220
	tSmeltingRecovery_Stc[13]["Type"] = 40
	tSmeltingRecovery_Stc[13]["TimeType"] = 4
	tSmeltingRecovery_Stc[13]["Delay"] = 1
	tSmeltingRecovery_Stc[13]["Limit"] = 10
	
--二进制对应值
local tSmeltingRecovery_ParseNumber = {}
	tSmeltingRecovery_ParseNumber[1] = 1
	tSmeltingRecovery_ParseNumber[2] = 2
	tSmeltingRecovery_ParseNumber[3] = 4
	tSmeltingRecovery_ParseNumber[4] = 8
	tSmeltingRecovery_ParseNumber[5] = 16
	tSmeltingRecovery_ParseNumber[6] = 32
	tSmeltingRecovery_ParseNumber[7] = 64
	tSmeltingRecovery_ParseNumber[8] = 128
	tSmeltingRecovery_ParseNumber[9] = 256
	tSmeltingRecovery_ParseNumber[10] = 512
	
--奖励表配置
local tSmeltingRecovery_Reward = {}
	-- ===购买碎片
	-- ===索引: tSmeltingRecovery_Reward["Buy"][1]
	-- ===LogStep: 1[2]
	tSmeltingRecovery_Reward["Buy"] = {}
	tSmeltingRecovery_Reward["Buy"][1] = {}
	tSmeltingRecovery_Reward["Buy"][1]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Buy"][1]["LogStep"] = "1[2]"
	tSmeltingRecovery_Reward["Buy"][1]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Buy"][1]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Buy"][1]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap
	tSmeltingRecovery_Reward["Buy"][1]["RewardItem"][1]["Attr"] = "0 1" -- PillScrap*1
	tSmeltingRecovery_Reward["Buy"][1]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Buy"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Buy"][1]["RewardEffect"]["Effect"] = "angelwing"

	tSmeltingRecovery_Reward["Buy"][10] = {}
	-- ===购买碎片
	-- ===索引: tSmeltingRecovery_Reward["Buy"][10]
	-- ===LogStep: 1[2]
	tSmeltingRecovery_Reward["Buy"][10]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Buy"][10]["LogStep"] = "1[2]"
	tSmeltingRecovery_Reward["Buy"][10]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Buy"][10]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Buy"][10]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap*10
	tSmeltingRecovery_Reward["Buy"][10]["RewardItem"][1]["Attr"] = "0 10" -- PillScrap*10
	tSmeltingRecovery_Reward["Buy"][10]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Buy"][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Buy"][10]["RewardEffect"]["Effect"] = "angelwing"

	tSmeltingRecovery_Reward["Buy"][100] = {}
	-- ===购买碎片
	-- ===索引: tSmeltingRecovery_Reward["Buy"][100]
	-- ===LogStep: 1[2]
	tSmeltingRecovery_Reward["Buy"][100]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Buy"][100]["LogStep"] = "1[2]"
	tSmeltingRecovery_Reward["Buy"][100]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Buy"][100]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Buy"][100]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap*100
	tSmeltingRecovery_Reward["Buy"][100]["RewardItem"][1]["Attr"] = "0 100" -- PillScrap*100（[错误]物品数量超10个）
	tSmeltingRecovery_Reward["Buy"][100]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Buy"][100]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Buy"][100]["RewardEffect"]["Effect"] = "angelwing"

	tSmeltingRecovery_Reward["Buy"][1000] = {}
	-- ===购买碎片
	-- ===索引: tSmeltingRecovery_Reward["Buy"][1000]
	-- ===LogStep: 1[2]
	tSmeltingRecovery_Reward["Buy"][1000]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Buy"][1000]["LogStep"] = "1[2]"
	tSmeltingRecovery_Reward["Buy"][1000]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Buy"][1000]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Buy"][1000]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap*1000
	tSmeltingRecovery_Reward["Buy"][1000]["RewardItem"][1]["Attr"] = "0 1000" -- PillScrap*1000（[错误]物品数量超10个）
	tSmeltingRecovery_Reward["Buy"][1000]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Buy"][1000]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Buy"][1000]["RewardEffect"]["Effect"] = "angelwing"
	
	tSmeltingRecovery_Reward["Parse"] = {}
	-- ===领取阶段奖励
	-- ===索引: tSmeltingRecovery_Reward["Parse"][1]
	-- ===LogStep: 1[3]
	tSmeltingRecovery_Reward["Parse"][1] = {}
	tSmeltingRecovery_Reward["Parse"][1]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Parse"][1]["LogStep"] = "1[3]"
	tSmeltingRecovery_Reward["Parse"][1]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Parse"][1]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Parse"][1]["RewardItem"][1]["Id"] = 3330681 -- EarthPill[3330681][属性:9][叠加:10000][金币:0], 【表格】EarthPill*2
	tSmeltingRecovery_Reward["Parse"][1]["RewardItem"][1]["Attr"] = "0 2" -- EarthPill*2
	tSmeltingRecovery_Reward["Parse"][1]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Parse"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Parse"][1]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Parse"][2] = {}
	-- ===领取阶段奖励
	-- ===索引: tSmeltingRecovery_Reward["Parse"][2]
	-- ===LogStep: 1[3]
	tSmeltingRecovery_Reward["Parse"][2]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Parse"][2]["LogStep"] = "1[3]"
	tSmeltingRecovery_Reward["Parse"][2]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Parse"][2]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Parse"][2]["RewardItem"][1]["Id"] = 3330681 -- EarthPill[3330681][属性:9][叠加:10000][金币:0], 【表格】EarthPill*3
	tSmeltingRecovery_Reward["Parse"][2]["RewardItem"][1]["Attr"] = "0 3" -- EarthPill*3
	tSmeltingRecovery_Reward["Parse"][2]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Parse"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Parse"][2]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Parse"][3] = {}
	-- ===领取阶段奖励
	-- ===索引: tSmeltingRecovery_Reward["Parse"][3]
	-- ===LogStep: 1[3]
	tSmeltingRecovery_Reward["Parse"][3]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Parse"][3]["LogStep"] = "1[3]"
	tSmeltingRecovery_Reward["Parse"][3]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Parse"][3]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Parse"][3]["RewardItem"][1]["Id"] = 3330682 -- CelestialPill[3330682][属性:9][叠加:10000][金币:0], 【表格】CelestialPill
	tSmeltingRecovery_Reward["Parse"][3]["RewardItem"][1]["Attr"] = "0 1" -- CelestialPill*1
	tSmeltingRecovery_Reward["Parse"][3]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Parse"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Parse"][3]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Parse"][4] = {}
	-- ===领取阶段奖励
	-- ===索引: tSmeltingRecovery_Reward["Parse"][4]
	-- ===LogStep: 1[3]
	tSmeltingRecovery_Reward["Parse"][4]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Parse"][4]["LogStep"] = "1[3]"
	tSmeltingRecovery_Reward["Parse"][4]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Parse"][4]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Parse"][4]["RewardItem"][1]["Id"] = 3330681 -- EarthPill[3330681][属性:9][叠加:10000][金币:0], 【表格】EarthPill*5
	tSmeltingRecovery_Reward["Parse"][4]["RewardItem"][1]["Attr"] = "0 5" -- EarthPill*5
	tSmeltingRecovery_Reward["Parse"][4]["RewardItem"][2] = {}
	tSmeltingRecovery_Reward["Parse"][4]["RewardItem"][2]["Id"] = 3330682 -- CelestialPill[3330682][属性:9][叠加:10000][金币:0], 【表格】CelestialPill*2
	tSmeltingRecovery_Reward["Parse"][4]["RewardItem"][2]["Attr"] = "0 2" -- CelestialPill*2
	tSmeltingRecovery_Reward["Parse"][4]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Parse"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Parse"][4]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Parse"][5] = {}
	-- ===领取阶段奖励
	-- ===索引: tSmeltingRecovery_Reward["Parse"][5]
	-- ===LogStep: 1[3]
	tSmeltingRecovery_Reward["Parse"][5]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Parse"][5]["LogStep"] = "1[3]"
	tSmeltingRecovery_Reward["Parse"][5]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Parse"][5]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Parse"][5]["RewardItem"][1]["Id"] = 3330681 -- EarthPill[3330681][属性:9][叠加:10000][金币:0], 【表格】EarthPill*5
	tSmeltingRecovery_Reward["Parse"][5]["RewardItem"][1]["Attr"] = "0 5" -- EarthPill*5
	tSmeltingRecovery_Reward["Parse"][5]["RewardItem"][2] = {}
	tSmeltingRecovery_Reward["Parse"][5]["RewardItem"][2]["Id"] = 3330682 -- CelestialPill[3330682][属性:9][叠加:10000][金币:0], 【表格】CelestialPill*3
	tSmeltingRecovery_Reward["Parse"][5]["RewardItem"][2]["Attr"] = "0 3" -- CelestialPill*3
	tSmeltingRecovery_Reward["Parse"][5]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Parse"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Parse"][5]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Parse"][6] = {}
	-- ===领取阶段奖励
	-- ===索引: tSmeltingRecovery_Reward["Parse"][6]
	-- ===LogStep: 1[3]
	tSmeltingRecovery_Reward["Parse"][6]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Parse"][6]["LogStep"] = "1[3]"
	tSmeltingRecovery_Reward["Parse"][6]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Parse"][6]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Parse"][6]["RewardItem"][1]["Id"] = 3330681 -- EarthPill[3330681][属性:9][叠加:10000][金币:0], 【表格】EarthPill*5
	tSmeltingRecovery_Reward["Parse"][6]["RewardItem"][1]["Attr"] = "0 5" -- EarthPill*5
	tSmeltingRecovery_Reward["Parse"][6]["RewardItem"][2] = {}
	tSmeltingRecovery_Reward["Parse"][6]["RewardItem"][2]["Id"] = 3330682 -- CelestialPill[3330682][属性:9][叠加:10000][金币:0], 【表格】CelestialPill*3
	tSmeltingRecovery_Reward["Parse"][6]["RewardItem"][2]["Attr"] = "0 3" -- CelestialPill*3
	tSmeltingRecovery_Reward["Parse"][6]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Parse"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Parse"][6]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Parse"][7] = {}
	-- ===领取阶段奖励
	-- ===索引: tSmeltingRecovery_Reward["Parse"][7]
	-- ===LogStep: 1[3]
	tSmeltingRecovery_Reward["Parse"][7]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Parse"][7]["LogStep"] = "1[3]"
	tSmeltingRecovery_Reward["Parse"][7]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Parse"][7]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Parse"][7]["RewardItem"][1]["Id"] = 3330682 -- CelestialPill[3330682][属性:9][叠加:10000][金币:0], 【表格】CelestialPill*5
	tSmeltingRecovery_Reward["Parse"][7]["RewardItem"][1]["Attr"] = "0 5" -- CelestialPill*5
	tSmeltingRecovery_Reward["Parse"][7]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Parse"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Parse"][7]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Parse"][8] = {}
	-- ===领取阶段奖励
	-- ===索引: tSmeltingRecovery_Reward["Parse"][8]
	-- ===LogStep: 1[3]
	tSmeltingRecovery_Reward["Parse"][8]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Parse"][8]["LogStep"] = "1[3]"
	tSmeltingRecovery_Reward["Parse"][8]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Parse"][8]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Parse"][8]["RewardItem"][1]["Id"] = 3330682 -- CelestialPill[3330682][属性:9][叠加:10000][金币:0], 【表格】CelestialPill*8
	tSmeltingRecovery_Reward["Parse"][8]["RewardItem"][1]["Attr"] = "0 8" -- CelestialPill*8
	tSmeltingRecovery_Reward["Parse"][8]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Parse"][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Parse"][8]["RewardEffect"]["Effect"] = "angelwing"

	tSmeltingRecovery_Reward["Sign"] = {}
	-- ===签到礼包
	-- ===索引: tSmeltingRecovery_Reward["Sign"]
	-- ===LogStep: 1[4]
	tSmeltingRecovery_Reward["Sign"]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Sign"]["LogStep"] = "1[4]"
	tSmeltingRecovery_Reward["Sign"]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Sign"]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Sign"]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap
	tSmeltingRecovery_Reward["Sign"]["RewardItem"][1]["Attr"] = "0 1" -- PillScrap*1
	tSmeltingRecovery_Reward["Sign"]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Sign"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Sign"]["RewardEffect"]["Effect"] = "angelwing"

	tSmeltingRecovery_Reward["Match"] = {}
	-- ===排位赛
	-- ===索引: tSmeltingRecovery_Reward["Match"]
	-- ===LogStep: 1[6]
	tSmeltingRecovery_Reward["Match"]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Match"]["LogStep"] = "1[6]"
	tSmeltingRecovery_Reward["Match"]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Match"]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Match"]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap
	tSmeltingRecovery_Reward["Match"]["RewardItem"][1]["Attr"] = "0 1" -- PillScrap*1
	tSmeltingRecovery_Reward["Match"]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Match"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Match"]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Drop"] = {}
	-- ===打怪掉落
	-- ===索引: tSmeltingRecovery_Reward["Drop"][1]
	-- ===LogStep: 1[7]
	tSmeltingRecovery_Reward["Drop"][1] = {}
	tSmeltingRecovery_Reward["Drop"][1]["ItemChanceSum"] = 10000
	tSmeltingRecovery_Reward["Drop"][1]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Drop"][1]["LogStep"] = "1[7]"
	-- PillScrap - 3%
	tSmeltingRecovery_Reward["Drop"][1][1] = {}
	tSmeltingRecovery_Reward["Drop"][1][1]["RandomItemChanceType"] = 2
	tSmeltingRecovery_Reward["Drop"][1][1]["ItemChance"] = 300
	tSmeltingRecovery_Reward["Drop"][1][1]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Drop"][1][1]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Drop"][1][1]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap
	tSmeltingRecovery_Reward["Drop"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- PillScrap*1
	tSmeltingRecovery_Reward["Drop"][1][1]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Drop"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Drop"][1][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得50个
	tSmeltingRecovery_Reward["Drop"][1][1]["EventType"] = 219
	tSmeltingRecovery_Reward["Drop"][1][1]["DataType"] = 98
	tSmeltingRecovery_Reward["Drop"][1][1]["RewardDelay"] = 1
	tSmeltingRecovery_Reward["Drop"][1][1]["RewardTimeType"] = 4
	tSmeltingRecovery_Reward["Drop"][1][1]["RewardData"] = 50
	tSmeltingRecovery_Reward["Drop"][1][1]["FullIndex"] = 2
	-- 无 - 97%
	tSmeltingRecovery_Reward["Drop"][1][2] = {}
	tSmeltingRecovery_Reward["Drop"][1][2]["RandomItemChanceType"] = 2
	tSmeltingRecovery_Reward["Drop"][1][2]["ItemChance"] = 9700

	tSmeltingRecovery_Reward[3330760] = {}
	-- ===luckyBag
	-- ===索引: tSmeltingRecovery_Reward[3330760][1]
	-- ===删除:3330760,1
	tSmeltingRecovery_Reward[3330760][1] = {}
	tSmeltingRecovery_Reward[3330760][1]["LogId"] = 12001945
	tSmeltingRecovery_Reward[3330760][1]["DeleteItem"] = {}
	tSmeltingRecovery_Reward[3330760][1]["DeleteItem"][1] = {}
	tSmeltingRecovery_Reward[3330760][1]["DeleteItem"][1]["Id"] = 3330760 -- 【库】luckyBag[属性:9]
	tSmeltingRecovery_Reward[3330760][1]["RewardItem"] = {}
	tSmeltingRecovery_Reward[3330760][1]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward[3330760][1]["RewardItem"][1]["Id"] = 723694 -- PermanentStone[723694][属性:0][叠加:0][金币:0], 【表格】固化石（赠）
	tSmeltingRecovery_Reward[3330760][1]["RewardItem"][1]["Attr"] = "0 1 3" -- PermanentStone（赠）*1
	tSmeltingRecovery_Reward[3330760][1]["RewardEffect"] = {}
	tSmeltingRecovery_Reward[3330760][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward[3330760][1]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward[3330760][2] = {}
	-- ===luckyBag
	-- ===索引: tSmeltingRecovery_Reward[3330760][2]
	-- ===删除:3330760,1
	tSmeltingRecovery_Reward[3330760][2]["LogId"] = 12001945
	tSmeltingRecovery_Reward[3330760][2]["DeleteItem"] = {}
	tSmeltingRecovery_Reward[3330760][2]["DeleteItem"][1] = {}
	tSmeltingRecovery_Reward[3330760][2]["DeleteItem"][1]["Id"] = 3330760 -- 【库】luckyBag[属性:9]
	tSmeltingRecovery_Reward[3330760][2]["RewardItem"] = {}
	tSmeltingRecovery_Reward[3330760][2]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward[3330760][2]["RewardItem"][1]["Id"] = 3311820 -- RefinedRuneCrystal[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tSmeltingRecovery_Reward[3330760][2]["RewardItem"][1]["Attr"] = "0 1" -- RefinedRuneCrystal*1
	tSmeltingRecovery_Reward[3330760][2]["RewardEffect"] = {}
	tSmeltingRecovery_Reward[3330760][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward[3330760][2]["RewardEffect"]["Effect"] = "angelwing"

	tSmeltingRecovery_Reward["Melter"] = {}
	-- ===熔炼良品宝石
	-- ===索引: tSmeltingRecovery_Reward["Melter"][6]
	-- ===LogStep: 1[8]
	tSmeltingRecovery_Reward["Melter"][6] = {}
	tSmeltingRecovery_Reward["Melter"][6]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Melter"][6]["LogStep"] = "1[8]"
	tSmeltingRecovery_Reward["Melter"][6]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Melter"][6]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Melter"][6]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap
	tSmeltingRecovery_Reward["Melter"][6]["RewardItem"][1]["Attr"] = "0 1" -- PillScrap*1
	tSmeltingRecovery_Reward["Melter"][6]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Melter"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Melter"][6]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Melter"][7] = {}
	-- ===熔炼优质宝石
	-- ===索引: tSmeltingRecovery_Reward["Melter"][7]
	-- ===LogStep: 1[9]
	tSmeltingRecovery_Reward["Melter"][7]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Melter"][7]["LogStep"] = "1[9]"
	tSmeltingRecovery_Reward["Melter"][7]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Melter"][7]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Melter"][7]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap*9
	tSmeltingRecovery_Reward["Melter"][7]["RewardItem"][1]["Attr"] = "0 9" -- PillScrap*9
	tSmeltingRecovery_Reward["Melter"][7]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Melter"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Melter"][7]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Melter"][8] = {}
	-- ===熔炼通神丹
	-- ===索引: tSmeltingRecovery_Reward["Melter"][8]
	-- ===LogStep: 1[10]
	tSmeltingRecovery_Reward["Melter"][8]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Melter"][8]["LogStep"] = "1[10]"
	tSmeltingRecovery_Reward["Melter"][8]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Melter"][8]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Melter"][8]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap*2
	tSmeltingRecovery_Reward["Melter"][8]["RewardItem"][1]["Attr"] = "0 2" -- PillScrap*2
	tSmeltingRecovery_Reward["Melter"][8]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Melter"][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Melter"][8]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Melter"][9] = {}
	-- ===熔炼流星卷
	-- ===索引: tSmeltingRecovery_Reward["Melter"][9]
	-- ===LogStep: 1[11]
	tSmeltingRecovery_Reward["Melter"][9]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Melter"][9]["LogStep"] = "1[11]"
	tSmeltingRecovery_Reward["Melter"][9]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Melter"][9]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Melter"][9]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap
	tSmeltingRecovery_Reward["Melter"][9]["RewardItem"][1]["Attr"] = "0 1" -- PillScrap*1
	tSmeltingRecovery_Reward["Melter"][9]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Melter"][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Melter"][9]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Melter"][10] = {}
	-- ===熔炼龙珠
	-- ===索引: tSmeltingRecovery_Reward["Melter"][10]
	-- ===LogStep: 1[12]
	tSmeltingRecovery_Reward["Melter"][10]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Melter"][10]["LogStep"] = "1[12]"
	tSmeltingRecovery_Reward["Melter"][10]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Melter"][10]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Melter"][10]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap*5
	tSmeltingRecovery_Reward["Melter"][10]["RewardItem"][1]["Attr"] = "0 5" -- PillScrap*5
	tSmeltingRecovery_Reward["Melter"][10]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Melter"][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Melter"][10]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Melter"][11] = {}
	-- ===熔炼乾坤袋（小）
	-- ===索引: tSmeltingRecovery_Reward["Melter"][11]
	-- ===LogStep: 1[13]
	tSmeltingRecovery_Reward["Melter"][11]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Melter"][11]["LogStep"] = "1[13]"
	tSmeltingRecovery_Reward["Melter"][11]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Melter"][11]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Melter"][11]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap*5
	tSmeltingRecovery_Reward["Melter"][11]["RewardItem"][1]["Attr"] = "0 5" -- PillScrap*5
	tSmeltingRecovery_Reward["Melter"][11]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Melter"][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Melter"][11]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Melter"][12] = {}
	-- ===熔炼免费强炼丹
	-- ===索引: tSmeltingRecovery_Reward["Melter"][12]
	-- ===LogStep: 1[14]
	tSmeltingRecovery_Reward["Melter"][12]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Melter"][12]["LogStep"] = "1[14]"
	tSmeltingRecovery_Reward["Melter"][12]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Melter"][12]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Melter"][12]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap
	tSmeltingRecovery_Reward["Melter"][12]["RewardItem"][1]["Attr"] = "0 1" -- PillScrap*1
	tSmeltingRecovery_Reward["Melter"][12]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Melter"][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Melter"][12]["RewardEffect"]["Effect"] = "angelwing"


	tSmeltingRecovery_Reward["Melter"][13] = {}
	-- ===熔炼强效护心丹
	-- ===索引: tSmeltingRecovery_Reward["Melter"][13]
	-- ===LogStep: 1[15]
	tSmeltingRecovery_Reward["Melter"][13]["LogId"] = 12001945
	tSmeltingRecovery_Reward["Melter"][13]["LogStep"] = "1[15]"
	tSmeltingRecovery_Reward["Melter"][13]["RewardItem"] = {}
	tSmeltingRecovery_Reward["Melter"][13]["RewardItem"][1] = {}
	tSmeltingRecovery_Reward["Melter"][13]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap
	tSmeltingRecovery_Reward["Melter"][13]["RewardItem"][1]["Attr"] = "0 1" -- PillScrap*1
	tSmeltingRecovery_Reward["Melter"][13]["RewardEffect"] = {}
	tSmeltingRecovery_Reward["Melter"][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSmeltingRecovery_Reward["Melter"][13]["RewardEffect"]["Effect"] = "angelwing"


--------------------------------------------逻辑部分配置--------------------------------------------
--获取玩家掩码
function SmeltingRecovery_GetStcValue(nSmeltingRecovery_Index, nSmeltingRecovery_NowUserId)
	if tSmeltingRecovery_Stc[nSmeltingRecovery_Index] == nil then
		return 0
	end
	
	local nSmeltingRecovery_UserId = nSmeltingRecovery_NowUserId or Get_UserId()
	local nSmeltingRecovery_Event = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Event"]
	local nSmeltingRecovery_Type = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Type"]
	local nSmeltingRecovery_TimeType = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["TimeType"]
	local nSmeltingRecovery_Delay = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Delay"]
	
	--是否清零
	if nSmeltingRecovery_TimeType ~= nil and nSmeltingRecovery_Delay ~= nil then
		Task_StcReset(nSmeltingRecovery_Event,nSmeltingRecovery_Type,nSmeltingRecovery_UserId,nSmeltingRecovery_TimeType,nSmeltingRecovery_Delay)
	end
	
	return Get_UserStatisticValue(nSmeltingRecovery_Event,nSmeltingRecovery_Type,nSmeltingRecovery_UserId)
end

--设置玩家掩码
function SmeltingRecovery_SetStcValue(nSmeltingRecovery_Index, sSmeltingRecovery_Mode, nSmeltingRecovery_Data, nSmeltingRecovery_NowUserId)
	if tSmeltingRecovery_Stc[nSmeltingRecovery_Index] == nil then
		return false
	end
	
	local nSmeltingRecovery_UserId = nSmeltingRecovery_NowUserId or Get_UserId()
	local nSmeltingRecovery_Event = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Event"]
	local nSmeltingRecovery_Type = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Type"]
	local nSmeltingRecovery_TimeType = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["TimeType"]
	local nSmeltingRecovery_Delay = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Delay"]
	
	--是否清零
	if nSmeltingRecovery_TimeType ~= nil and nSmeltingRecovery_Delay ~= nil then
		Task_StcReset(nSmeltingRecovery_Event,nSmeltingRecovery_Type,nSmeltingRecovery_UserId,nSmeltingRecovery_TimeType,nSmeltingRecovery_Delay)
	end
	
	--设置掩码
	if sSmeltingRecovery_Mode == "Set" then
		if Task_SetStatistic(nSmeltingRecovery_Event,nSmeltingRecovery_Type,nSmeltingRecovery_Data,1,nSmeltingRecovery_UserId) then
			Task_SetStcTimestamp(nSmeltingRecovery_Event,nSmeltingRecovery_Type,0,nSmeltingRecovery_UserId)
			return true
		else
			return false
		end
	--增加掩码
	elseif sSmeltingRecovery_Mode == "Add" then
		if Task_AddStatistic(nSmeltingRecovery_Event,nSmeltingRecovery_Type,nSmeltingRecovery_Data,1,nSmeltingRecovery_UserId) then
			Task_SetStcTimestamp(nSmeltingRecovery_Event,nSmeltingRecovery_Type,0,nSmeltingRecovery_UserId)
			return true
		else
			return false
		end
	else
		return false
	end
end

--二进制掩码设置
function SmeltingRecovery_SetParseNumber(nSmeltingRecovery_Index, nSmeltingRecovery_Data, nSmeltingRecovery_NowUserId)
	local nSmeltingRecovery_UserId = nSmeltingRecovery_NowUserId or Get_UserId()
	local nSmeltingRecovery_Parse = tSmeltingRecovery_ParseNumber[nSmeltingRecovery_Data]
	
	local nSmeltingRecovery_Event = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Event"]
	local nSmeltingRecovery_Type = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Type"]
	local nSmeltingRecovery_Delay = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Delay"]
	local nSmeltingRecovery_TimeType = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["TimeType"]
	
	--置零，打时间戳
	if nSmeltingRecovery_TimeType ~= nil and nSmeltingRecovery_Delay ~= nil then
		Task_StcReset(nSmeltingRecovery_Event,nSmeltingRecovery_Type,nSmeltingRecovery_UserId,nSmeltingRecovery_TimeType,nSmeltingRecovery_Delay)
	end
	
	if Task_AddStatistic(nSmeltingRecovery_Event,nSmeltingRecovery_Type,nSmeltingRecovery_Parse,1,nSmeltingRecovery_UserId) then
		Task_SetStcTimestamp(nSmeltingRecovery_Event,nSmeltingRecovery_Type,0,nSmeltingRecovery_UserId)
		return true
	else
		return false
	end
end

--二进制掩码判断
function SmeltingRecovery_IsGetParseNumber(nSmeltingRecovery_Index, nSmeltingRecovery_Data, nSmeltingRecovery_NowUserId)
	local nSmeltingRecovery_UserId = nSmeltingRecovery_NowUserId or Get_UserId()
	local nSmeltingRecovery_Parse = tSmeltingRecovery_ParseNumber[nSmeltingRecovery_Data]
	
	local nSmeltingRecovery_Event = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Event"]
	local nSmeltingRecovery_Type = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Type"]
	local nSmeltingRecovery_Delay = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Delay"]
	local nSmeltingRecovery_TimeType = tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["TimeType"]
	
	--置零，打时间戳
	if nSmeltingRecovery_TimeType ~= nil and nSmeltingRecovery_Delay ~= nil then
		Task_StcReset(nSmeltingRecovery_Event,nSmeltingRecovery_Type,nSmeltingRecovery_UserId,nSmeltingRecovery_TimeType,nSmeltingRecovery_Delay)
	end
	
	local nSmeltingRecovery_NowData = Get_UserStatisticValue(nSmeltingRecovery_Event,nSmeltingRecovery_Type,nSmeltingRecovery_UserId)
	
	if Sys_ParseNumbersContain(nSmeltingRecovery_Parse,nSmeltingRecovery_NowData) then
		return true
	else
		return false
	end
end


--等级判断
function SmeltingRecovery_ChkLevel(nSmeltingRecovery_NowUserId)
	local nSmeltingRecovery_UserId = nSmeltingRecovery_NowUserId or Get_UserId()
	local nSmeltingRecovery_Level = tSmeltingRecovery_Cont["Level"]
	local nSmeltingRecovery_Mete = tSmeltingRecovery_Cont["Mete"]
	
	return User_JudgeLevelAndMetempsychosis(nSmeltingRecovery_Level,nSmeltingRecovery_Mete,nSmeltingRecovery_UserId)
end

--上交碎片
function SmeltingRecovery_Hand()
	--时间判断
	if not Sys_ChkFullTime(tSmeltingRecovery_Time["ActivityTime"]) then
		return
	end
	
	local nSmeltingRecovery_UserId = Get_UserId()
	
	-- 等级判断
	if not SmeltingRecovery_ChkLevel(nSmeltingRecovery_UserId) then
		return
	end
	
	--碎片id
	local nSmeltingRecovery_ChipId = tSmeltingRecovery_Cont["ChipId"]
	
	local nSmeltingRecovery_NpcId = Get_NpcId()
	
	--背包没有碎片
	if not Item_ChkItem(nSmeltingRecovery_ChipId,nil,nil,nSmeltingRecovery_UserId) then
		LinkNpcGossipFunc_New(nSmeltingRecovery_NpcId,"2-1")
		return
	end
	
	--获取背包内碎片数量
	local nSmeltingRecovery_Num = Get_CountItemType(nSmeltingRecovery_ChipId,0)
	
	--扣除碎片
	if Item_DelMulItem(nSmeltingRecovery_ChipId,nSmeltingRecovery_ChipId,nSmeltingRecovery_Num,nil,nil,nSmeltingRecovery_UserId) then
		--掩码记录
		if SmeltingRecovery_SetStcValue(1, "Add", nSmeltingRecovery_Num, nSmeltingRecovery_UserId) then
			--提示
			Sys_MsgBox(string.format(tSmeltingRecovery_Text["MsgBox"]["HandSucc"], nSmeltingRecovery_Num),nil,nil,nSmeltingRecovery_UserId)
		end
		
		--log
		Sys_SaveActionFestivalLog(string.format(tSmeltingRecovery_Log["Hand"], nSmeltingRecovery_ChipId, nSmeltingRecovery_Num),nSmeltingRecovery_UserId)
	end
end

--天石（赠）购灵丹碎片
function SmeltingRecovery_Buy(nSmeltingRecovery_NowIndex)
	--时间判断
	if not Sys_ChkFullTime(tSmeltingRecovery_Time["ActivityTime"]) then
		return
	end
	
	local nSmeltingRecovery_UserId = Get_UserId()
	
	-- 等级判断
	if not SmeltingRecovery_ChkLevel(nSmeltingRecovery_UserId) then
		return
	end
	
	local nSmeltingRecovery_Index = 0
	
	--判断是不是二次确认
	if nSmeltingRecovery_NowIndex == nil then
		if tSmeltingRecovery_Record[nSmeltingRecovery_UserId] == nil then
			return
		end
		
		nSmeltingRecovery_Index = tSmeltingRecovery_Record[nSmeltingRecovery_UserId]
	else
		nSmeltingRecovery_Index = nSmeltingRecovery_NowIndex
		
		--等级选择的数量
		tSmeltingRecovery_Record[nSmeltingRecovery_UserId] = nSmeltingRecovery_NowIndex
	end
	
	--今日已获取的碎片数量
	local nSmeltingRecovery_NowNum = SmeltingRecovery_GetStcValue(2, nSmeltingRecovery_UserId)
	
	--每日上限判断
	if nSmeltingRecovery_NowNum + nSmeltingRecovery_Index > tSmeltingRecovery_Stc[2]["Limit"] then
		Sys_MsgBox(string.format(tSmeltingRecovery_Text["MsgBox"]["BuyFull"], nSmeltingRecovery_NowNum),nil,nil,nSmeltingRecovery_UserId)
		return
	end
	
	--判断天石
	local nSmeltingRecovery_EMoneyMono = tSmeltingRecovery_Cont["Buy"][nSmeltingRecovery_Index]
	
	if Get_UserMonoEMoney(nSmeltingRecovery_UserId) < nSmeltingRecovery_EMoneyMono then
		Sys_MsgBox(tRewardTemplate_Text["Consume"]["EMoneyMono"],nil,nil,nSmeltingRecovery_UserId)
		return
	end
	
	--判断是否有配奖励
	if tSmeltingRecovery_Reward["Buy"][nSmeltingRecovery_Index] == nil then
		return
	end
	
	--判断背包空间
	local nSmeltingRecovery_Space = RewardTemplate_GetRewardSpace(tSmeltingRecovery_Reward["Buy"][nSmeltingRecovery_Index],nSmeltingRecovery_UserId)
	
	if nSmeltingRecovery_Space > 0 and (not User_CheckLeftSpace(nSmeltingRecovery_Space,nSmeltingRecovery_UserId)) then
		Sys_MsgBox(string.format(tSmeltingRecovery_Text["MsgBox"]["GetFull"],nSmeltingRecovery_Space),nil,nil,nSmeltingRecovery_UserId)
		return
	end
	
	--是否二次确认
	if nSmeltingRecovery_NowIndex == nil then
		--扣除赠点
		if User_AddEMoneyMonoAndLog(-nSmeltingRecovery_EMoneyMono,tSmeltingRecovery_ELog["Buy"],nSmeltingRecovery_UserId) then
			--掩码设置
			if SmeltingRecovery_SetStcValue(2, "Add", nSmeltingRecovery_Index, nSmeltingRecovery_UserId) then
				--奖励
				RewardTemplate_UseItemAndMsg(tSmeltingRecovery_Reward["Buy"][nSmeltingRecovery_Index],nSmeltingRecovery_UserId)
			end
		end
		
	else
		local nSmeltingRecovery_NpcId = Get_NpcId()
		
		tNpcGossip[nSmeltingRecovery_NpcId]["Text321"] = string.format(tSmeltingRecovery_Text[nSmeltingRecovery_NpcId]["Text321"], nSmeltingRecovery_Index)
		
		LinkNpcGossipFunc_New(nSmeltingRecovery_NpcId, "3-2")
	end
end

--阶段好礼对白判断
function SmeltingRecovery_ChkText(nSmeltingRecovery_NpcId)
	local nSmeltingRecovery_UserId = Get_UserId()
	--当前提交的碎片数量
	local nSmeltingRecovery_ChipNum = SmeltingRecovery_GetStcValue(1, nSmeltingRecovery_UserId)
	
	tNpcGossip[nSmeltingRecovery_NpcId]["Text2213"] = string.format(tSmeltingRecovery_Text[nSmeltingRecovery_NpcId]["Text2213"], nSmeltingRecovery_ChipNum)
	
	--是否有可领取的奖励
	local nSmeltingRecovery_Flag = false
	
	for i = 1, tSmeltingRecovery_Cont["ParseNum"] do
		--当前提交的碎片数量是否达到要求
		if nSmeltingRecovery_ChipNum >= tSmeltingRecovery_Cont["ParseChipNum"][i] then
			--是否已经领取当前奖励
			if SmeltingRecovery_IsGetParseNumber(3, i, nSmeltingRecovery_UserId) then
				tNpcGossip[nSmeltingRecovery_NpcId]["Text22"..(i+3)] = string.format(tSmeltingRecovery_Text[nSmeltingRecovery_NpcId]["Text22"..(i+3)], tSmeltingRecovery_Text["Already"])
			else
				tNpcGossip[nSmeltingRecovery_NpcId]["Text22"..(i+3)] = string.format(tSmeltingRecovery_Text[nSmeltingRecovery_NpcId]["Text22"..(i+3)], "")
				nSmeltingRecovery_Flag = true
			end
		else
			tNpcGossip[nSmeltingRecovery_NpcId]["Text22"..(i+3)] = string.format(tSmeltingRecovery_Text[nSmeltingRecovery_NpcId]["Text22"..(i+3)], "")
		end
	end
	
	if nSmeltingRecovery_Flag then
		tNpcGossip[nSmeltingRecovery_NpcId]["Option221"] = tSmeltingRecovery_Text[nSmeltingRecovery_NpcId]["Option221"]
	else
		tNpcGossip[nSmeltingRecovery_NpcId]["Option221"] = tSmeltingRecovery_Text[nSmeltingRecovery_NpcId]["Option222"]
	end
	
	return true
end

--领取阶段好礼
function SmeltingRecovery_GetParseAward()
	--时间判断
	if not Sys_ChkFullTime(tSmeltingRecovery_Time["ActivityTime"]) then
		return
	end
	
	local nSmeltingRecovery_UserId = Get_UserId()
	
	-- 等级判断
	if not SmeltingRecovery_ChkLevel(nSmeltingRecovery_UserId) then
		return
	end
	
	--当前提交的碎片数量
	local nSmeltingRecovery_ChipNum = SmeltingRecovery_GetStcValue(1, nSmeltingRecovery_UserId)
	--是否有可领取的奖励
	local nSmeltingRecovery_Flag = false
	--背包空间
	local nSmeltingRecovery_Space = 0
	
	for i = 1, tSmeltingRecovery_Cont["ParseNum"] do
		--当前提交的碎片数量是否达到要求
		if nSmeltingRecovery_ChipNum >= tSmeltingRecovery_Cont["ParseChipNum"][i] then
			--是否已经领取当前奖励
			if not SmeltingRecovery_IsGetParseNumber(3, i, nSmeltingRecovery_UserId) then
				nSmeltingRecovery_Flag = true
				
				nSmeltingRecovery_Space = nSmeltingRecovery_Space + RewardTemplate_GetRewardSpace(tSmeltingRecovery_Reward["Parse"][i],nSmeltingRecovery_UserId)
			end
		end
	end
	
	--没有可领取的奖励
	if not nSmeltingRecovery_Flag then
		Sys_MsgBox(tSmeltingRecovery_Text["MsgBox"]["GetNoReward"],nil,nil,nSmeltingRecovery_UserId)
		return
	end
	
	--背包满
	if nSmeltingRecovery_Space > 0 and (not User_CheckLeftSpace(nSmeltingRecovery_Space,nSmeltingRecovery_UserId)) then
		Sys_MsgBox(string.format(tSmeltingRecovery_Text["MsgBox"]["GetFull"],nSmeltingRecovery_Space),nil,nil,nSmeltingRecovery_UserId)
		return
	end
	
	--领取奖励
	for i = 1, tSmeltingRecovery_Cont["ParseNum"] do
		--当前提交的碎片数量是否达到要求
		if nSmeltingRecovery_ChipNum >= tSmeltingRecovery_Cont["ParseChipNum"][i] then
			--是否已经领取当前奖励
			if not SmeltingRecovery_IsGetParseNumber(3, i, nSmeltingRecovery_UserId) then
				--置掩码
				if SmeltingRecovery_SetParseNumber(3, i, nSmeltingRecovery_UserId) then
					RewardTemplate_UseItemAndMsg(tSmeltingRecovery_Reward["Parse"][i],nSmeltingRecovery_UserId)
				end
			end
		end
	end
end

--签到礼包
function SmeltingRecovery_Sign()
	--时间判断
	if not Sys_ChkFullTime(tSmeltingRecovery_Time["ActivityTime"]) then
		return
	end
	
	local nSmeltingRecovery_UserId = Get_UserId()
	
	-- 等级判断
	if not SmeltingRecovery_ChkLevel(nSmeltingRecovery_UserId) then
		return
	end
	
	--领奖掩码判断
	if SmeltingRecovery_GetStcValue(4, nSmeltingRecovery_UserId) >= tSmeltingRecovery_Stc[4]["Limit"] then
		return
	end
	
	--掩码设置
	if SmeltingRecovery_SetStcValue(4, "Add", 1, nSmeltingRecovery_UserId) then
		--奖励
		RewardTemplate_UseItemAndMsg(tSmeltingRecovery_Reward["Sign"], nSmeltingRecovery_UserId)
	end
end

--排位赛胜场
function SmeltingRecovery_Match(nSmeltingRecovery_NowUserId,nSmeltingRecovery_FieldNum)
	--时间判断
	if not Sys_ChkFullTime(tSmeltingRecovery_Time["ActivityTime"]) then
		return
	end
	
	local nSmeltingRecovery_UserId = nSmeltingRecovery_NowUserId or Get_UserId()
	
	-- 等级判断
	if not SmeltingRecovery_ChkLevel(nSmeltingRecovery_UserId) then
		return
	end
	
	--领奖掩码判断
	if SmeltingRecovery_GetStcValue(5, nSmeltingRecovery_UserId) >= tSmeltingRecovery_Stc[5]["Limit"] then
		return
	end
	
	--掩码设置
	if SmeltingRecovery_SetStcValue(5, "Add", 1, nSmeltingRecovery_UserId) then
		--奖励（排位赛强塞，不做背包判断）
		RewardTemplate_Reward(tSmeltingRecovery_Reward["Match"], nSmeltingRecovery_UserId)
	end
end

--怪物掉落
function SmeltingRecovery_KillMonster()
	--时间判断
	if not Sys_ChkFullTime(tSmeltingRecovery_Time["ActivityTime"]) then
		return
	end
	
	local nSmeltingRecovery_UserId = Get_UserId()
	
	-- 等级判断
	if not SmeltingRecovery_ChkLevel(nSmeltingRecovery_UserId) then
		return
	end
	
	--背包空间
	if not RewardTemplate_ChkRandomSpace(tSmeltingRecovery_Reward["Drop"],1,nSmeltingRecovery_UserId) then
		return
	end
	
	--给奖
	RewardTemplate_NewRandom(tSmeltingRecovery_Reward["Drop"],1,nSmeltingRecovery_UserId)
	
	local nSmeltingRecovery_Event = tSmeltingRecovery_Reward["Drop"][1][1]["EventType"]
	local nSmeltingRecovery_Type = tSmeltingRecovery_Reward["Drop"][1][1]["DataType"]
	local nSmeltingRecovery_Limit = tSmeltingRecovery_Reward["Drop"][1][1]["RewardData"]
	local nSmeltingRecovery_NowData = Get_UserStatisticValue(nSmeltingRecovery_Event,nSmeltingRecovery_Type,nSmeltingRecovery_UserId)
	
	--掉落上限提示
	if nSmeltingRecovery_NowData == nSmeltingRecovery_Limit then
		if Task_AddStatistic(nSmeltingRecovery_Event,nSmeltingRecovery_Type,1,1,nSmeltingRecovery_UserId) then
			Sys_MsgBox(tSmeltingRecovery_Text["MsgBox"]["DropFull"],nil,nil,nSmeltingRecovery_UserId)
		end
	end
	
end

--熔炼炉熔炼接入
function SmeltingRecovery_MelterLink(nSmeltingRecovery_CostType, nSmeltingRecovery_Value, nSmeltingRecovery_Monopoly, nSmeltingRecovery_NowUserId)
	local nSmeltingRecovery_UserId = nSmeltingRecovery_NowUserId or Get_UserId()
	
	--不是熔炼物品
	if nSmeltingRecovery_CostType ~= 8 then
		return
	end
	
	--判断熔炼的物品是否可以获得碎片
	if tSmeltingRecovery_Cont["Melter"][nSmeltingRecovery_Value] == nil then
		return
	end
	
	--判断非赠是否可获得碎片
	if nSmeltingRecovery_Monopoly == 0 and tSmeltingRecovery_Cont["MelterMono"][nSmeltingRecovery_Value] then
		return
	end
	
	--时间判断
	if not Sys_ChkFullTime(tSmeltingRecovery_Time["ActivityTime"]) then
		return
	end
	
	-- 等级判断
	if not SmeltingRecovery_ChkLevel(nSmeltingRecovery_UserId) then
		return
	end
	
	--判断索引
	local nSmeltingRecovery_Index = tSmeltingRecovery_Cont["Melter"][nSmeltingRecovery_Value]
	
	--判断今日上限
	if SmeltingRecovery_GetStcValue(nSmeltingRecovery_Index, nSmeltingRecovery_UserId) >= tSmeltingRecovery_Stc[nSmeltingRecovery_Index]["Limit"] then
		return
	end
	
	--掩码设置
	if SmeltingRecovery_SetStcValue(nSmeltingRecovery_Index, "Add", 1, nSmeltingRecovery_UserId) then
		--奖励（强塞，不做背包判断）
		RewardTemplate_Reward(tSmeltingRecovery_Reward["Melter"][nSmeltingRecovery_Index], nSmeltingRecovery_UserId)
	end
end
--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--清山居士
tNpcFace[5615] = 71
tNpcGossip[26482] = tNpcGossip[26482] or DefaultNpc:new{}
tNpcGossip[26482]["DialogueText"] = tSmeltingRecovery_Text[26482]
tNpcGossip[26482]["OptionHidden"] = 1
--主对白
tNpcGossip[26482]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[26482]["ChkFunc1-1"] = function()
	--活动时间后不出
	if CommonFunc_GetAfterActivityTime(tSmeltingRecovery_Time["ActivityTime"]) then
		return false
	end
	
	tNpcGossip[26482]["Text1-1"] = {111,112,113,114,115,116,117}
	
	-- 活动时间内
	if Sys_ChkFullTime(tSmeltingRecovery_Time["ActivityTime"]) then
		--等级判断
		if SmeltingRecovery_ChkLevel() then
			tNpcGossip[26482]["tOption1-1"] = {113,114,115,116}
			tNpcGossip[26482]["Text1-1"] = {111,112,113,114,115,117}
		else
			tNpcGossip[26482]["tOption1-1"] = {112}
		end
	else
		tNpcGossip[26482]["tOption1-1"] = {111}
	end
	
	return true
end
tNpcGossip[26482]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[26482]["OptionFunc113"] = "SmeltingRecovery_Hand"
tNpcGossip[26482]["OptionPoint114"] = "2-4"
tNpcGossip[26482]["OptionPoint115"] = "2-2"
tNpcGossip[26482]["OptionPoint116"] = "2-3"

--活动时间后
tNpcGossip[26482]["Text1-2"] = {121}
tNpcGossip[26482]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tSmeltingRecovery_Time["ActivityTime"])
end
tNpcGossip[26482]["tOption1-2"] = {121}

--背包没有碎片
tNpcGossip[26482]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tNpcGossip[26482]["tOption2-1"] = {211}

--领取阶段好礼
tNpcGossip[26482]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212,2213}
tNpcGossip[26482]["tOption2-2"] = {221}
tNpcGossip[26482]["ChkFunc2-2"] = function()
	return SmeltingRecovery_ChkText(26482)
end
tNpcGossip[26482]["OptionFunc221"] = "SmeltingRecovery_GetParseAward"


--如何获得灵丹碎片？
tNpcGossip[26482]["Text2-3"] = {231,232,233,234,235,236,237,238,239}
tNpcGossip[26482]["tOption2-3"] = {231,232}
tNpcGossip[26482]["OptionPoint231"] = "3-1"

--天石（赠）购灵丹碎片
tNpcGossip[26482]["Text2-4"] = {241}
tNpcGossip[26482]["tOption2-4"] = {241,242,243,244}
tNpcGossip[26482]["OptionFunc241"] = "SmeltingRecovery_Buy</N>1"
tNpcGossip[26482]["OptionFunc242"] = "SmeltingRecovery_Buy</N>10"
tNpcGossip[26482]["OptionFunc243"] = "SmeltingRecovery_Buy</N>100"
tNpcGossip[26482]["OptionFunc244"] = "SmeltingRecovery_Buy</N>1000"

--查看可用于熔炼的物品
tNpcGossip[26482]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112}
tNpcGossip[26482]["tOption3-1"] = {311}

--天石购买二次确认
tNpcGossip[26482]["Text3-2"] = {321}
tNpcGossip[26482]["tOption3-2"] = {321,322}
tNpcGossip[26482]["OptionFunc321"] = "SmeltingRecovery_Buy"

---------------------------------------------物品模块---------------------------------------------
--灵丹碎片
tItem[3330680] = tItem[3330680] or {}
tItem[3330680]["Function"] = function(nSmeltingRecovery_ItemId,sSmeltingRecovery_ItemName)
	if not Sys_ChkFullTime(tSmeltingRecovery_Time["ActivityTime"]) then
		local nSmeltingRecovery_Count = Get_CountItemType(nSmeltingRecovery_ItemId,0)
		
		if Item_ChkItem(nSmeltingRecovery_ItemId) and Item_DelAllItemByType(nSmeltingRecovery_ItemId) then
			Sys_SaveActionRewardLog(string.format(tSmeltingRecovery_Log["DelItem"], nSmeltingRecovery_ItemId, nSmeltingRecovery_Count))
			User_TalkChannel2005(tLuaRes[10004])
		end
		
		return
	end
	
	NpcPosition_PathFind(26482)
end

--地灵丹
tItem[3330681] = tItem[3330681] or {}
tItem[3330681]["Function"] = function(nSmeltingRecovery_ItemId,sSmeltingRecovery_ItemName)
	if not Sys_ChkFullTime(tSmeltingRecovery_Time["ItemTime"]) then
		local nSmeltingRecovery_Count = Get_CountItemType(nSmeltingRecovery_ItemId,0)
		
		if Item_ChkItem(nSmeltingRecovery_ItemId) and Item_DelAllItemByType(nSmeltingRecovery_ItemId) then
			Sys_SaveActionRewardLog(string.format(tSmeltingRecovery_Log["DelItem"], nSmeltingRecovery_ItemId, nSmeltingRecovery_Count))
			User_TalkChannel2005(tLuaRes[10004])
		end
		
		return
	end
	
	User_OpenDialog(924)
end

--天玄灵丹
tItem[3330682] = tItem[3330681]

--luckyBag
tItem[3330760] = tItem[3330760] or {}
tItem[3330760]["Function"] = function(nSmeltingRecovery_ItemId,sSmeltingRecovery_ItemName)
	local nSmeltingRecovery_GlobalId = tSmeltingRecovery_Cont["GlobalId"]
	local nSmeltingRecovery_GlobalData = Get_SysDynaGlobalData(nSmeltingRecovery_GlobalId,0)
	-- 该服为绿色新服或激情服
	if nSmeltingRecovery_GlobalData == 1 then
		RewardTemplate_UseItemAndMsg(tSmeltingRecovery_Reward[nSmeltingRecovery_ItemId][2])
	else
		RewardTemplate_UseItemAndMsg(tSmeltingRecovery_Reward[nSmeltingRecovery_ItemId][1])
	end
end

---------------------------------------------怪物模块---------------------------------------------
--小怪掉落（普通服）
local tSmeltingRecovery_KillMonster = {}
	tSmeltingRecovery_KillMonster["ActivityTime"] = tSmeltingRecovery_Time["ActivityTime"]
	tSmeltingRecovery_KillMonster["Function"]= SmeltingRecovery_KillMonster
	table.insert(tMonsterDrop_AreaLoad,tSmeltingRecovery_KillMonster)

--小怪掉落（激情服）
local tSmeltingRecovery_KillMonster_NoGift = {}
	tSmeltingRecovery_KillMonster_NoGift["ActivityTime"] = tSmeltingRecovery_Time["ActivityTime"]
	tSmeltingRecovery_KillMonster_NoGift["Function"] = SmeltingRecovery_KillMonster
	tSmeltingRecovery_KillMonster_NoGift["MonsterId"]={5274,5275,5276,5277,5278,5279,5280,5281,5282,5283,5284,5285,5286,
	5287,5288,5289,5290,5291,5292,5293,5294,5295,5296,5297,5298,5299,5300,5301,5302,5303,5304,5305,5306,5307,5308,5309,5310,
	5311,5312,5313,5314,5315,5316,5317,5318,5319,5320,5321,5322,5323,5324,5325,5326,5327,5328,5329,5330,5331,5332,5333,5334,
	5335,5336,5337,5338,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5349,5350,5351,5352,5353,5354,5355,5356,5357,5358,5359}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tSmeltingRecovery_KillMonster_NoGift)

--个人排位赛 赢场触发
tArenicWins["tFunction"] = tArenicWins["tFunction"] or {}
table.insert(tArenicWins["tFunction"], SmeltingRecovery_Match)
