------------------------------------------------------------------------------------
--Name:			190327[ios英文征服][活动脚本]4月新服夺宝玩法制作(物品部分)
--Purpose:		4月新服夺宝玩法制作(物品部分)
--Creator:		茅志伟
--Created:		2019/03/27
------------------------------------------------------------------------------------
-- 命名前缀 tAprilTreasureActivityItem_
-- lua.ini = 41213
-- 41213 = V100\ActiveScript\IndianaEvent\[Conquer][ActiveScript]AprilTreasureActivityItem.lua
-- 41213 = V100\活动脚本\夺宝狂欢\[征服][活动脚本]夺宝狂欢物品部分.lua
-- logId = 12001351



--掩码表
local tAprilTreasureActivityItem_Stc = {}
--记录签到礼包领取情况
tAprilTreasureActivityItem_Stc[1] = {}
tAprilTreasureActivityItem_Stc[1]["EventType"] = 193
tAprilTreasureActivityItem_Stc[1]["DataType"] = 12
--记录签到礼包领取情况
tAprilTreasureActivityItem_Stc[2] = {}
tAprilTreasureActivityItem_Stc[2]["EventType"] = 193
tAprilTreasureActivityItem_Stc[2]["DataType"] = 13
--记录3星外套碎片合成情况
tAprilTreasureActivityItem_Stc[3] = {}
tAprilTreasureActivityItem_Stc[3]["EventType"] = 195
tAprilTreasureActivityItem_Stc[3]["DataType"] = 93

local tAprilTreasureActivityItem_Log = {}
tAprilTreasureActivityItem_Log["DeleteItem"] = "0,0,%d,%d,0,12001351,2,0,0"

--常量表
local tAprilTreasureActivityItem_Data = {}
--各碎片合成所需数量
tAprilTreasureActivityItem_Data["Count"] = {}
tAprilTreasureActivityItem_Data["Count"][3320796] = 30
tAprilTreasureActivityItem_Data["Count"][3320797] = 10
tAprilTreasureActivityItem_Data["Count"][3320798] = 10
tAprilTreasureActivityItem_Data["Count"][3320799] = 30
tAprilTreasureActivityItem_Data["Count"][3320800] = 30
tAprilTreasureActivityItem_Data["Count"][3320801] = 30
tAprilTreasureActivityItem_Data["Count"][3320802] = 15

--各种碎片单个使用兑换的天石和赠点，第一位为天石第二位为赠点
tAprilTreasureActivityItem_Data["UseFMoney"] = {}
tAprilTreasureActivityItem_Data["UseFMoney"][3320796] = {100,0}
tAprilTreasureActivityItem_Data["UseFMoney"][3320797] = {0,0}
tAprilTreasureActivityItem_Data["UseFMoney"][3320798] = {0,0}
tAprilTreasureActivityItem_Data["UseFMoney"][3320799] = {500,0}
tAprilTreasureActivityItem_Data["UseFMoney"][3320800] = {500,0}
tAprilTreasureActivityItem_Data["UseFMoney"][3320801] = {500,0}
tAprilTreasureActivityItem_Data["UseFMoney"][3320802] = {0,0}

--各种碎片合成后给的天石和赠点，第一位为天石第二位为赠点
tAprilTreasureActivityItem_Data["SyFMoney"] = {}
tAprilTreasureActivityItem_Data["SyFMoney"][3320796] = {0,0}
tAprilTreasureActivityItem_Data["SyFMoney"][3320797] = {300,0}
tAprilTreasureActivityItem_Data["SyFMoney"][3320798] = {0,200}
tAprilTreasureActivityItem_Data["SyFMoney"][3320799] = {0,0}
tAprilTreasureActivityItem_Data["SyFMoney"][3320800] = {0,0}
tAprilTreasureActivityItem_Data["SyFMoney"][3320801] = {0,0}
tAprilTreasureActivityItem_Data["SyFMoney"][3320802] = {0,0}

--地图信息
tAprilTreasureActivityItem_Data["MapInfo"] = {}
tAprilTreasureActivityItem_Data["MapInfo"][1] = {{10476,262,271},{10476,227,387},{10476,393,407},{10476,391,277},{10476,249,316}}  -- 空中花园传送点坐标
tAprilTreasureActivityItem_Data["MapInfo"][2] = {10474,337,295}  -- 古神战场传送点坐标
tAprilTreasureActivityItem_Data["MapInfo"][3] = {10473,337,295}  -- 庆典礼堂传送点坐标

tAprilTreasureActivityItem_Data["GlobalId"] = {}
tAprilTreasureActivityItem_Data["GlobalId"][1] = 53338

tAprilTreasureActivityItem_Data["NpcId1"] = 24087

local tAprilTreasureActivityItem_Pack = {}
	-- ===100美金兑换券碎片
	-- ===索引: 3320796,1
	-- ===删除: 3320796,1
	-- ===EMoneyLog: 10000,0303
	tAprilTreasureActivityItem_Pack[3320796] = {}
	tAprilTreasureActivityItem_Pack[3320796][1] = {}
	tAprilTreasureActivityItem_Pack[3320796][1]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320796][1]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320796][1]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320796][1]["DeleteItem"][1]["Id"] = 3320796 -- 【库】System.Byte[][属性:8]
	tAprilTreasureActivityItem_Pack[3320796][1]["RewardEMoney"] = {}
	tAprilTreasureActivityItem_Pack[3320796][1]["RewardEMoney"]["Value"] = 100 -- 天石
	tAprilTreasureActivityItem_Pack[3320796][1]["EmoneyLog"] = "10000	303	-100	-100	1	"
	tAprilTreasureActivityItem_Pack[3320796][1]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320796][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320796][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===100美金兑换券碎片
	-- ===索引: 3320796,2
	-- ===删除: 3320796,30
	tAprilTreasureActivityItem_Pack[3320796][2] = {}
	tAprilTreasureActivityItem_Pack[3320796][2]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320796][2]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320796][2]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320796][2]["DeleteItem"][1]["Id"] = 3320796 -- 【库】System.Byte[][属性:8]
	tAprilTreasureActivityItem_Pack[3320796][2]["DeleteItem"][1]["ItemNum"] = 30
	tAprilTreasureActivityItem_Pack[3320796][2]["RewardItem"] = {}
	tAprilTreasureActivityItem_Pack[3320796][2]["RewardItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320796][2]["RewardItem"][1]["Id"] = 3320896 -- 【库】System.Byte[][属性:8]【表格】100美金兑换券
	tAprilTreasureActivityItem_Pack[3320796][2]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tAprilTreasureActivityItem_Pack[3320796][2]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320796][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320796][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===金块
	-- ===索引: 3320797,1
	-- ===删除: 3320797,1
	tAprilTreasureActivityItem_Pack[3320797] = {}
	tAprilTreasureActivityItem_Pack[3320797][1] = {}
	tAprilTreasureActivityItem_Pack[3320797][1]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320797][1]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320797][1]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320797][1]["DeleteItem"][1]["Id"] = 3320797 -- 【库】System.Byte[][属性:8]
	tAprilTreasureActivityItem_Pack[3320797][1]["RewardStrengthValue"] = {}
	tAprilTreasureActivityItem_Pack[3320797][1]["RewardStrengthValue"]["Value"] = 3000 -- 气力值
	tAprilTreasureActivityItem_Pack[3320797][1]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320797][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320797][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===金块
	-- ===索引: 3320797,2
	-- ===删除: 3320797,10
	-- ===EMoneyLog: 10000,0304
	tAprilTreasureActivityItem_Pack[3320797][2] = {}
	tAprilTreasureActivityItem_Pack[3320797][2]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320797][2]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320797][2]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320797][2]["DeleteItem"][1]["Id"] = 3320797 -- 【库】System.Byte[][属性:8]
	tAprilTreasureActivityItem_Pack[3320797][2]["DeleteItem"][1]["ItemNum"] = 10
	tAprilTreasureActivityItem_Pack[3320797][2]["RewardEMoney"] = {}
	tAprilTreasureActivityItem_Pack[3320797][2]["RewardEMoney"]["Value"] = 300 -- 天石
	tAprilTreasureActivityItem_Pack[3320797][2]["EmoneyLog"] = "10000	304	-300	-300	1	"
	tAprilTreasureActivityItem_Pack[3320797][2]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320797][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320797][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===金豆子
	-- ===索引: 3320798,1
	-- ===删除:3320798,1
	tAprilTreasureActivityItem_Pack[3320798] = {}
	tAprilTreasureActivityItem_Pack[3320798][1] = {}
	tAprilTreasureActivityItem_Pack[3320798][1]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320798][1]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320798][1]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320798][1]["DeleteItem"][1]["Id"] = 3320798 -- 【库】System.Byte[][属性:9]
	tAprilTreasureActivityItem_Pack[3320798][1]["RewardStrengthValue"] = {}
	tAprilTreasureActivityItem_Pack[3320798][1]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tAprilTreasureActivityItem_Pack[3320798][1]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320798][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320798][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===金豆子
	-- ===索引: 3320798,2
	-- ===删除: 3320798,10
	-- ===EMoneyLog: 10000,0305
	tAprilTreasureActivityItem_Pack[3320798][2] = {}
	tAprilTreasureActivityItem_Pack[3320798][2]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320798][2]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320798][2]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320798][2]["DeleteItem"][1]["Id"] = 3320798 -- 【库】System.Byte[][属性:9]
	tAprilTreasureActivityItem_Pack[3320798][2]["DeleteItem"][1]["ItemNum"] = 10
	tAprilTreasureActivityItem_Pack[3320798][2]["RewardEMoneyMono"] = {}
	tAprilTreasureActivityItem_Pack[3320798][2]["RewardEMoneyMono"]["Value"] = 200 -- 天石（赠）
	tAprilTreasureActivityItem_Pack[3320798][2]["EmoneyLog"] = "10000	305	0	0	-200	"
	tAprilTreasureActivityItem_Pack[3320798][2]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320798][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320798][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5星RockingRomance（Fantasy）碎片
	-- ===索引: 3320799,1
	-- ===删除: 3320799,1
	-- ===EMoneyLog: 10000,0306
	tAprilTreasureActivityItem_Pack[3320799] = {}
	tAprilTreasureActivityItem_Pack[3320799][1] = {}
	tAprilTreasureActivityItem_Pack[3320799][1]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320799][1]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320799][1]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320799][1]["DeleteItem"][1]["Id"] = 3320799 -- 【库】System.Byte[][属性:8]
	tAprilTreasureActivityItem_Pack[3320799][1]["RewardEMoney"] = {}
	tAprilTreasureActivityItem_Pack[3320799][1]["RewardEMoney"]["Value"] = 500 -- 天石
	tAprilTreasureActivityItem_Pack[3320799][1]["EmoneyLog"] = "10000	306	-500	-500	1	"
	tAprilTreasureActivityItem_Pack[3320799][1]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320799][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320799][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5星RockingRomance（Fantasy）碎片
	-- ===索引: 3320799,2
	-- ===删除: 3320799,30
	tAprilTreasureActivityItem_Pack[3320799][2] = {}
	tAprilTreasureActivityItem_Pack[3320799][2]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320799][2]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320799][2]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320799][2]["DeleteItem"][1]["Id"] = 3320799 -- 【库】System.Byte[][属性:8]
	tAprilTreasureActivityItem_Pack[3320799][2]["DeleteItem"][1]["ItemNum"] = 30
	tAprilTreasureActivityItem_Pack[3320799][2]["RewardItem"] = {}
	tAprilTreasureActivityItem_Pack[3320799][2]["RewardItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320799][2]["RewardItem"][1]["Id"] = 195605 -- 【库】 195625 【ipadzf库里没有该物品】[属性:]【表格】Rocking Romance (Fantasy)  
	tAprilTreasureActivityItem_Pack[3320799][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑 195625 【ipadzf库里没有该物品】*1
	tAprilTreasureActivityItem_Pack[3320799][2]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320799][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320799][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===九天玄鸟羽
	-- ===索引: 3320800,1
	-- ===删除: 3320800,1
	-- ===EMoneyLog: 10000,0307
	tAprilTreasureActivityItem_Pack[3320800] = {}
	tAprilTreasureActivityItem_Pack[3320800][1] = {}
	tAprilTreasureActivityItem_Pack[3320800][1]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320800][1]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320800][1]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320800][1]["DeleteItem"][1]["Id"] = 3320800 -- 【库】System.Byte[][属性:8]
	tAprilTreasureActivityItem_Pack[3320800][1]["RewardEMoney"] = {}
	tAprilTreasureActivityItem_Pack[3320800][1]["RewardEMoney"]["Value"] = 500 -- 天石
	tAprilTreasureActivityItem_Pack[3320800][1]["EmoneyLog"] = "10000	307	-500	-500	1	"
	tAprilTreasureActivityItem_Pack[3320800][1]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320800][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320800][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===九天玄鸟羽
	-- ===索引: 3320800,2
	-- ===删除: 3320800,30
	-- ===
	tAprilTreasureActivityItem_Pack[3320800][2] = {}
	tAprilTreasureActivityItem_Pack[3320800][2]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320800][2]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320800][2]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320800][2]["DeleteItem"][1]["Id"] = 3320800 -- 【库】System.Byte[][属性:8]
	tAprilTreasureActivityItem_Pack[3320800][2]["DeleteItem"][1]["ItemNum"] = 30
	tAprilTreasureActivityItem_Pack[3320800][2]["RewardItem"] = {}
	tAprilTreasureActivityItem_Pack[3320800][2]["RewardItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320800][2]["RewardItem"][1]["Id"] = 200575 -- 【库】System.Byte[][属性:0]【表格】九天玄鸟   
	tAprilTreasureActivityItem_Pack[3320800][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑System.Byte[]*1
	tAprilTreasureActivityItem_Pack[3320800][2]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320800][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320800][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===黄金圣杯原石
	-- ===索引: 3320801,1
	-- ===删除: 3320801,1
	-- ===EMoneyLog: 10000,0308
	tAprilTreasureActivityItem_Pack[3320801] = {}
	tAprilTreasureActivityItem_Pack[3320801][1] = {}
	tAprilTreasureActivityItem_Pack[3320801][1]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320801][1]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320801][1]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320801][1]["DeleteItem"][1]["Id"] = 3320801 -- 【库】System.Byte[][属性:8]
	tAprilTreasureActivityItem_Pack[3320801][1]["RewardEMoney"] = {}
	tAprilTreasureActivityItem_Pack[3320801][1]["RewardEMoney"]["Value"] = 500 -- 天石
	tAprilTreasureActivityItem_Pack[3320801][1]["EmoneyLog"] = "10000	308	-500	-500	1	"
	tAprilTreasureActivityItem_Pack[3320801][1]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320801][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320801][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===黄金圣杯原石
	-- ===索引: 3320801,2
	-- ===删除: 3320801,30
	-- ===
	tAprilTreasureActivityItem_Pack[3320801][2] = {}
	tAprilTreasureActivityItem_Pack[3320801][2]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320801][2]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320801][2]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320801][2]["DeleteItem"][1]["Id"] = 3320801 -- 【库】System.Byte[][属性:8]
	tAprilTreasureActivityItem_Pack[3320801][2]["DeleteItem"][1]["ItemNum"] = 30
	tAprilTreasureActivityItem_Pack[3320801][2]["RewardItem"] = {}
	tAprilTreasureActivityItem_Pack[3320801][2]["RewardItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320801][2]["RewardItem"][1]["Id"] = 2168896 -- 【库】System.Byte[][属性:9]【表格】黄金圣杯
	tAprilTreasureActivityItem_Pack[3320801][2]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tAprilTreasureActivityItem_Pack[3320801][2]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320801][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320801][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3星RockingRomance（Fantasy）碎片
	-- ===索引: 3320802,1
	-- ===删除: 3320802,1
	-- ===
	tAprilTreasureActivityItem_Pack[3320802] = {}
	tAprilTreasureActivityItem_Pack[3320802][1] = {}
	tAprilTreasureActivityItem_Pack[3320802][1]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320802][1]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320802][1]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320802][1]["DeleteItem"][1]["Id"] = 3320802 -- 【库】System.Byte[][属性:9]
	tAprilTreasureActivityItem_Pack[3320802][1]["RewardStrengthValue"] = {}
	tAprilTreasureActivityItem_Pack[3320802][1]["RewardStrengthValue"]["Value"] = 500 -- 气力值
	tAprilTreasureActivityItem_Pack[3320802][1]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320802][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320802][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3星RockingRomance（Fantasy）碎片
	-- ===索引: 3320802,2
	-- ===删除: 3320802,15
	-- ===
	tAprilTreasureActivityItem_Pack[3320802][2] = {}
	tAprilTreasureActivityItem_Pack[3320802][2]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320802][2]["EventType"] = 195
	tAprilTreasureActivityItem_Pack[3320802][2]["DataType"] = 93
	tAprilTreasureActivityItem_Pack[3320802][2]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320802][2]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320802][2]["DeleteItem"][1]["Id"] = 3320802 -- 【库】System.Byte[][属性:9]
	tAprilTreasureActivityItem_Pack[3320802][2]["DeleteItem"][1]["ItemNum"] = 15
	tAprilTreasureActivityItem_Pack[3320802][2]["RewardItem"] = {}
	tAprilTreasureActivityItem_Pack[3320802][2]["RewardItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320802][2]["RewardItem"][1]["Id"] = 195595 -- 【库】 195615 【ipadzf库里没有该物品】[属性:]【表格】Rocking Romance  
	tAprilTreasureActivityItem_Pack[3320802][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑 195615 【ipadzf库里没有该物品】(赠)*1
	tAprilTreasureActivityItem_Pack[3320802][2]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320802][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320802][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服福利礼包
	-- ===索引: 3320895
	-- ===删除: 3320895,1
	tAprilTreasureActivityItem_Pack[3320895] = {}
	tAprilTreasureActivityItem_Pack[3320895]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack[3320895]["DeleteItem"] = {}
	tAprilTreasureActivityItem_Pack[3320895]["DeleteItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320895]["DeleteItem"][1]["Id"] = 3320895 -- 【库】System.Byte[][属性:9]
	tAprilTreasureActivityItem_Pack[3320895]["RewardItem"] = {}
	tAprilTreasureActivityItem_Pack[3320895]["RewardItem"][1] = {}
	tAprilTreasureActivityItem_Pack[3320895]["RewardItem"][1]["Id"] = 3320802 -- 【库】System.Byte[][属性:9]【表格】RockingRomance（Fantasy）碎片
	tAprilTreasureActivityItem_Pack[3320895]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tAprilTreasureActivityItem_Pack[3320895]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack[3320895]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack[3320895]["RewardEffect"]["Effect"] = "angelwing"


	-- ===上线给新服福利礼包
	-- ===索引: "Pack"
	-- ===
	tAprilTreasureActivityItem_Pack["Pack"] = {}
	tAprilTreasureActivityItem_Pack["Pack"]["LogId"] = 12001351
	tAprilTreasureActivityItem_Pack["Pack"]["RewardItem"] = {}
	tAprilTreasureActivityItem_Pack["Pack"]["RewardItem"][1] = {}
	tAprilTreasureActivityItem_Pack["Pack"]["RewardItem"][1]["Id"] = 3320895 -- 【库】System.Byte[][属性:9]【表格】新服福利礼包
	tAprilTreasureActivityItem_Pack["Pack"]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tAprilTreasureActivityItem_Pack["Pack"]["RewardEffect"] = {}
	tAprilTreasureActivityItem_Pack["Pack"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilTreasureActivityItem_Pack["Pack"]["RewardEffect"]["Effect"] = "angelwing"

	
	
-------------------------------------------------------------------------------逻辑部分
--使用单个
function AprilTreasureActivityItem_UserItem(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then 
		User_TalkChannel2005(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["NoItem"])
		Sys_MsgBox(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["NoItem"])
		return
	end 
	--赠点、天石上限
	local nEMoney = tAprilTreasureActivityItem_Data["UseFMoney"][nItemId][1]
	local nMonoEMoney = tAprilTreasureActivityItem_Data["UseFMoney"][nItemId][2]
	if Get_UserEMoney() + nEMoney > G_User_MaxEmoney then 
		User_TalkChannel2005(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["MoneyFull"])
		Sys_MsgBox(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["MoneyFull"])
		return
	end 
	if Get_UserMonoEMoney() + nMonoEMoney > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["MonoMoneyFull"])
		Sys_MsgBox(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["MonoMoneyFull"])
		return
	end 
	RewardTemplate_UseItemAndMsg(tAprilTreasureActivityItem_Pack[nItemId][1])
end 

--碎片合成
function AprilTreasureActivityItem_Synthesis(nItemId)
	local nCount = tAprilTreasureActivityItem_Data["Count"][nItemId]
	if not Item_ChkMulItem(nItemId,nItemId,nCount) then 
		User_TalkChannel2005(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["NoCount"])
		Sys_MsgBox(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["NoCount"])
		return
	end 
	--赠点、天石上限
	local nEMoney = tAprilTreasureActivityItem_Data["SyFMoney"][nItemId][1]
	local nMonoEMoney = tAprilTreasureActivityItem_Data["SyFMoney"][nItemId][2]
	if Get_UserEMoney() + nEMoney > G_User_MaxEmoney then 
		User_TalkChannel2005(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["MoneyFull"])
		Sys_MsgBox(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["MoneyFull"])
		return
	end 
	if Get_UserMonoEMoney() + nMonoEMoney > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["MonoMoneyFull"])
		Sys_MsgBox(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["MonoMoneyFull"])
		return
	end 
	if nItemId == 3320802 then 
		local nEventType3 = tAprilTreasureActivityItem_Stc[3]["EventType"]
		local nDataType3 = tAprilTreasureActivityItem_Stc[3]["DataType"]
		local nData3 = Get_UserStatisticValue(nEventType3,nDataType3)
		if nData3 > 0 then 
			Sys_MsgBox(tAprilTreasureActivityItem_Text["Sys_MsgBox"]["3SRocking"])
			return
		end
	end 
	RewardTemplate_UseItemAndMsg(tAprilTreasureActivityItem_Pack[nItemId][2])
end 

--新服福利礼包使用逻辑
function AprilTreasureActivityItem_SignInPack(nItemId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["AprilTreasureActivityItem"]["UseItemTime"]) then
		return
	elseif CommonFunc_GetAfterActivityTime(tActivityTime["AprilTreasureActivityItem"]["UseItemTime"]) then 
		if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelItem(nItemId) then 
			--删除礼包log
			local nLogText = string.format(tAprilTreasureActivityItem_Log["DeleteItem"],nItemId,1)
			Sys_SaveActionFestivalLog(nLogText)
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tAprilTreasureActivityItem_Pack[nItemId])
end 

--上限触发给礼包
function AprilTreasureActivityItem_GrantPack()
	if not Sys_ChkFullTime(tActivityTime["AprilTreasureActivityItem"]["UseItemTime"]) then 
		return
	end 
	local nGlobalId = tAprilTreasureActivityItem_Data["GlobalId"][1]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	if nData < 1 then 
		return
	end 
	local nEventType1 = tAprilTreasureActivityItem_Stc[1]["EventType"]
	local nDataType1 = tAprilTreasureActivityItem_Stc[1]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nSpace = 1 
	if not Task_StcInterval(nEventType1,nDataType1,1,4) then 
		return
	end
	if nData1 >= 15 then 
		return
	end 
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tAprilTreasureActivityItem_Text[3320895]["NoSpac"])
		return
	else
	Task_AddStatistic(nEventType1,nDataType1,1,1)
	Task_SetStcTimestamp(nEventType1,nDataType1,0)
	RewardTemplate_UseItemAndMsg(tAprilTreasureActivityItem_Pack["Pack"])
	end
	
end 

--古神战场
function AprilTreasureActivityItem_MoveMap1(nNpcId,nItemId)
	if not Sys_ChkFullTime(tActivityTime["AprilTreasureActivityItem"]["ActivityTime"]) then 
		return
	end 
	if not Sys_ChkWeedTime(tActivityTime["AprilTreasureActivityItem"]["MoveMap1"]) then 
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end 
	--没有门票
	if not Item_ChkMulItem(nItemId,nItemId,1) then 
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end 
	local nMapId = tAprilTreasureActivityItem_Data["MapInfo"][2][1]
	local nMapX = tAprilTreasureActivityItem_Data["MapInfo"][2][2]
	local nMapY = tAprilTreasureActivityItem_Data["MapInfo"][2][3]
	User_UserRandBoundTrans(nMapId,nMapX,nMapY,1,1,1)
	-- if Item_DelItem(nItemId) then 
		-- --删除门票log
		-- local nLogText = string.format(tAprilTreasureActivityItem_Log["DeleteItem"],nItemId,1)
		-- Sys_SaveActionFestivalLog(nLogText)
	-- end
	
end 
--庆典礼堂
function AprilTreasureActivityItem_MoveMap2(nNpcId,nItemId)
	if not Sys_ChkFullTime(tActivityTime["AprilTreasureActivityItem"]["ActivityTime"]) then 
		return
	end 
	if not Sys_ChkWeedTime(tActivityTime["AprilTreasureActivityItem"]["MoveMap2"]) then 
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end 
	--没有门票
	if not Item_ChkMulItem(nItemId,nItemId,1) then 
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end 
	-- if Item_DelItem(nItemId) then 
		-- --删除门票log
		-- local nLogText = string.format(tAprilTreasureActivityItem_Log["DeleteItem"],nItemId,1)
		-- Sys_SaveActionFestivalLog(nLogText)
	-- end
	local nMapId = tAprilTreasureActivityItem_Data["MapInfo"][3][1]
	local nMapX = tAprilTreasureActivityItem_Data["MapInfo"][3][2]
	local nMapY = tAprilTreasureActivityItem_Data["MapInfo"][3][3]
	User_UserRandBoundTrans(nMapId,nMapX,nMapY,1,1,1)
end 
--天空花园
function AprilTreasureActivityItem_MoveSky(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["AprilTreasureActivityItem"]["ActivityTime"]) then 
		return
	end 
	if not (Sys_ChkDayTime(tActivityTime["AprilTreasureActivityItem"]["SkyMap1"]) or Sys_ChkDayTime(tActivityTime["AprilTreasureActivityItem"]["SkyMap2"]) or Sys_ChkDayTime(tActivityTime["AprilTreasureActivityItem"]["SkyMap3"])) then 
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end 
	local nRandom = math.random(1,5)
	local nMapId = tAprilTreasureActivityItem_Data["MapInfo"][1][nRandom][1]
	local nMapX = tAprilTreasureActivityItem_Data["MapInfo"][1][nRandom][2]
	local nMapY = tAprilTreasureActivityItem_Data["MapInfo"][1][nRandom][3]
	User_UserRandBoundTrans(nMapId,nMapX,nMapY,1,1,1)
end 

function AprilTreasureActivityItem_LookfNpc(nItemId)
	local nNpcId = tAprilTreasureActivityItem_Data["NpcId1"]
	if CommonFunc_GetBeforeActivityTime(tActivityTime["AprilTreasureActivityItem"]["ActivityTime"]) then
		return
	end
	NpcPosition_PathFind(nNpcId)
end 


----------------------------------------------------------------------Npc对白模板----------------------------------
--雅典娜
tNpcFace[6534] = 2194
tNpcGossip[24087] = tNpcGossip[24087] or DefaultNpc:new{}
tNpcGossip[24087]["OptionHidden"] = 1
tNpcGossip[24087]["DialogueText"] = tAprilTreasureActivityItem_Text[24087]
--活动前
tNpcGossip[24087]["Text1-1"] = {111,112,113,114}
tNpcGossip[24087]["tOption1-1"] = {111}
tNpcGossip[24087]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["AprilTreasureActivityItem"]["ActivityTime"])
end
--活动后
tNpcGossip[24087]["Text1-2"] = {121}
tNpcGossip[24087]["tOption1-2"] = {121}
tNpcGossip[24087]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["AprilTreasureActivityItem"]["ActivityTime"])
end
--活动中
tNpcGossip[24087]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[24087]["tOption1-3"] = {131,132,133,134}
tNpcGossip[24087]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["AprilTreasureActivityItem"]["ActivityTime"])
end
tNpcGossip[24087]["OptionPoint131"] = "2-1"
tNpcGossip[24087]["OptionFunc132"] = "AprilTreasureActivityItem_MoveSky</N>24087"
tNpcGossip[24087]["OptionFunc133"] = "AprilTreasureActivityItem_MoveMap1</N>24087</N>3320910"
tNpcGossip[24087]["OptionFunc134"] = "AprilTreasureActivityItem_MoveMap2</N>24087</N>3320894"

--接1、夺宝狂欢介绍
tNpcGossip[24087]["Text2-1"] = {211,212,213,214,215,217}
tNpcGossip[24087]["tOption2-1"] = {211}
tNpcGossip[24087]["OptionPoint211"] = "1-3"

--接2、前往空中花园【失败，不在活动时间内】
tNpcGossip[24087]["Text2-2"] = {221}
tNpcGossip[24087]["tOption2-2"] = {221}
tNpcGossip[24087]["OptionPoint221"] = "1-3"

--接3、前往古神战场【失败，不在活动时间内】
tNpcGossip[24087]["Text2-3"] = {231}
tNpcGossip[24087]["tOption2-3"] = {231}
tNpcGossip[24087]["OptionPoint231"] = "1-3"
--【失败，没有门票】
tNpcGossip[24087]["Text2-6"] = {261}
tNpcGossip[24087]["tOption2-6"] = {261}
tNpcGossip[24087]["OptionPoint261"] = "1-3"

--接4、前往庆典礼堂
--【失败，不在活动时间内】
tNpcGossip[24087]["Text2-4"] = {241}
tNpcGossip[24087]["tOption2-4"] = {241}
tNpcGossip[24087]["OptionPoint241"] = "1-3"
--【失败，没有门票】
tNpcGossip[24087]["Text2-5"] = {251}
tNpcGossip[24087]["tOption2-5"] = {251}
tNpcGossip[24087]["OptionPoint251"] = "1-3"

---------------------------------------------------------------------物品使用对白模板-------------------
--100美金兑换券碎片
tItemFace[3320796] = 2187
tItem[3320796] = tItem[3320796] or {}
tItem[3320796]["DialogueText"] = tAprilTreasureActivityItem_Text[3320796]
tItem[3320796]["Text1-1"] = {111}
tItem[3320796]["tOption1-1"] = {111,112}
tItem[3320796]["OptionPoint111"] = "2-1"
tItem[3320796]["OptionFunc112"] = "AprilTreasureActivityItem_Synthesis</N>3320796"
--二次确认
tItem[3320796]["Text2-1"] = {211,212}
tItem[3320796]["tOption2-1"] = {211,212}
tItem[3320796]["OptionFunc211"] = "AprilTreasureActivityItem_UserItem</N>3320796"

--金块
tItemFace[3320797] = 2188
tItem[3320797] = tItem[3320797] or {}
tItem[3320797]["DialogueText"] = tAprilTreasureActivityItem_Text[3320797]
tItem[3320797]["Text1-1"] = {111}
tItem[3320797]["tOption1-1"] = {111,112}
tItem[3320797]["OptionFunc111"] = "AprilTreasureActivityItem_UserItem</N>3320797"
tItem[3320797]["OptionFunc112"] = "AprilTreasureActivityItem_Synthesis</N>3320797"

--金豆子
tItemFace[3320798] = 2189
tItem[3320798] = tItem[3320798] or {}
tItem[3320798]["DialogueText"] = tAprilTreasureActivityItem_Text[3320798]
tItem[3320798]["Text1-1"] = {111}
tItem[3320798]["tOption1-1"] = {111,112}
tItem[3320798]["OptionFunc111"] = "AprilTreasureActivityItem_UserItem</N>3320798"
tItem[3320798]["OptionFunc112"] = "AprilTreasureActivityItem_Synthesis</N>3320798"

--5星RockingRomance（Fantasy）碎片
tItemFace[3320799] = 2190
tItem[3320799] = tItem[3320799] or {}
tItem[3320799]["DialogueText"] = tAprilTreasureActivityItem_Text[3320799]
tItem[3320799]["Text1-1"] = {111}
tItem[3320799]["tOption1-1"] = {111,112}
tItem[3320799]["OptionPoint111"] = "2-1"
tItem[3320799]["OptionFunc112"] = "AprilTreasureActivityItem_Synthesis</N>3320799"
--二次确认
tItem[3320799]["Text2-1"] = {211,212}
tItem[3320799]["tOption2-1"] = {211,212}
tItem[3320799]["OptionFunc211"] = "AprilTreasureActivityItem_UserItem</N>3320799"

--九天玄鸟羽
tItemFace[3320800] = 2191
tItem[3320800] = tItem[3320800] or {}
tItem[3320800]["DialogueText"] = tAprilTreasureActivityItem_Text[3320800]
tItem[3320800]["Text1-1"] = {111}
tItem[3320800]["tOption1-1"] = {111,112}
tItem[3320800]["OptionPoint111"] = "2-1"
tItem[3320800]["OptionFunc112"] = "AprilTreasureActivityItem_Synthesis</N>3320800"
--二次确认
tItem[3320800]["Text2-1"] = {211,212}
tItem[3320800]["tOption2-1"] = {211,212}
tItem[3320800]["OptionFunc211"] = "AprilTreasureActivityItem_UserItem</N>3320800"

--黄金圣杯原石
tItemFace[3320801] = 2192
tItem[3320801] = tItem[3320801] or {}
tItem[3320801]["DialogueText"] = tAprilTreasureActivityItem_Text[3320801]
tItem[3320801]["Text1-1"] = {111}
tItem[3320801]["tOption1-1"] = {111,112}
tItem[3320801]["OptionPoint111"] = "2-1"
tItem[3320801]["OptionFunc112"] = "AprilTreasureActivityItem_Synthesis</N>3320801"
--二次确认
tItem[3320801]["Text2-1"] = {211,212}
tItem[3320801]["tOption2-1"] = {211,212}
tItem[3320801]["OptionFunc211"] = "AprilTreasureActivityItem_UserItem</N>3320801"

--3星RockingRomance（Fantasy）碎片
tItemFace[3320802] = 2193
tItem[3320802] = tItem[3320802] or {}
tItem[3320802]["DialogueText"] = tAprilTreasureActivityItem_Text[3320802]
tItem[3320802]["Text1-1"] = {111}
tItem[3320802]["tOption1-1"] = {111,112}
tItem[3320802]["OptionPoint111"] = "2-1"
tItem[3320802]["OptionFunc112"] = "AprilTreasureActivityItem_Synthesis</N>3320802"
--二次确认
tItem[3320802]["Text2-1"] = {211,212}
tItem[3320802]["tOption2-1"] = {211,212}
tItem[3320802]["OptionFunc211"] = "AprilTreasureActivityItem_UserItem</N>3320802"


---------------------------------------物品使用模板--------------------
--新服福利礼包
tItem[3320895] = tItem[3320895] or {}
tItem[3320895]["Function"] = function(nItemId,sItemName)
	AprilTreasureActivityItem_SignInPack(nItemId)
end

tItem[3320894] = tItem[3320894] or {}
tItem[3320894]["Function"] = function(nItemId,sItemName)
	AprilTreasureActivityItem_LookfNpc(nItemId)
end
tItem[3320910] = tItem[3320894] or {}


--------------------------------------上线触发-------------------------------------------
table.insert(tSystem_PlayLogin_Func,AprilTreasureActivityItem_GrantPack)


