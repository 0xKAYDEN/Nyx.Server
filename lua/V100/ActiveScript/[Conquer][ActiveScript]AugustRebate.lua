------------------------------------------------------------------------------------
--Name：        190712[英文征服][活动脚本]线上充值返还（8.06-8.19）
--Creator:      耿力兀
--Created:     2019-07-12
------------------------------------------------------------------------------------
--任务需求：
--活动时间：9.05-9.18 复用8月返利内容，新增加前6档低档充值的奖励返还
------------------------------------------------------------------------------------
--前缀：AugustRebate_
--logid：12001513
--emoneylog
--打开60档奖励礼包 350 22490
--打开125档奖励礼包 350 22491
--打开320档奖励礼包 350 22492
--打开530档奖励礼包 350 22493
--打开1075档奖励礼包 350 22494
--打开2050档奖励礼包 350 22495
--打开10000档奖励礼包 350 22413
--打开30000档奖励礼包 350 22414
--打开60000档奖励礼包 350 22415
--打开90000档奖励礼包 350 22416
--打开120000档奖励礼包 350 22417
--打开160000档奖励礼包 350 22418
--打开220000档奖励礼包 350 22419
--打开300000档奖励礼包 350 22420
--打开370000档奖励礼包 350 22421
--打开470000档奖励礼包 350 22422
--打开570000档奖励礼包 350 22423
--打开680000档奖励礼包 350 22424
--打开800000档奖励礼包 350 22425
--打开930000档奖励礼包 350 22426
--打开1070000档奖励礼包 350 22427
--打开1220000档奖励礼包 350 22428
--打开1380000档奖励礼包 350 22429
--打开1550000档奖励礼包 350 22430
--打开1730000档奖励礼包 350 22431
--打开1920000档奖励礼包 350 22432
--打开2120000档奖励礼包 350 22433

--Stc掩码
--201 75	记录赤炼石（赠）月卡包打开次数
--201 76	记录流星（赠）百日包打开次数
--201 77	记录修行值百日包打开次数
--201 78	记录微光星陨石百日包打开次数
--201 79	记录赠品天石百日包打开次数
--201 80	记录万能神纹精粹（赠）百日包打开次数
----------------------------------表配置部分--------------------------------------------
local tAugustRebate_RewardItem = {}
	-- ===赠神纹源晶*2
	-- ===索引: tAugustRebate_RewardItem[3314541]
	-- ===删除: 3314541,1
	-- ===EMoneyLog: 1000,1270
	tAugustRebate_RewardItem[3314541] = {}
	tAugustRebate_RewardItem[3314541]["LogId"] = 12001513
	tAugustRebate_RewardItem[3314541]["EmoneyLog"] = "1000	1270	0	0	1	"
	tAugustRebate_RewardItem[3314541]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3314541]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3314541]["DeleteItem"][1]["Id"] = 3314541 -- 【库】 3314541 【库里没有该物品】[属性:]
	tAugustRebate_RewardItem[3314541]["RewardItem"] = {}
	tAugustRebate_RewardItem[3314541]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3314541]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】赠神纹源晶*2
	tAugustRebate_RewardItem[3314541]["RewardItem"][1]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tAugustRebate_RewardItem[3314541]["RewardNoNeedTip"] = 1
	tAugustRebate_RewardItem[3314541]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3314541]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3314541]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===赤炼石（赠）月卡包
	-- ===索引: tAugustRebate_RewardItem[3313377]
	-- ===删除: 3313377,1
	-- ===EMoneyLog: 350,22490
	tAugustRebate_RewardItem[3313377] = {}
	tAugustRebate_RewardItem[3313377]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313377]["EmoneyLog"] = "350	22490	0	0	1	"
	tAugustRebate_RewardItem[3313377]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313377]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313377]["DeleteItem"][1]["Id"] = 3313377 -- 【库】+StoneMonthlyPack[属性:9]
	tAugustRebate_RewardItem[3313377]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313377]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313377]["RewardItem"][1]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+1
	tAugustRebate_RewardItem[3313377]["RewardItem"][1]["Attr"] = "0 1 3" -- +1Stone（赠）*1
	-- 【stc（201,75）】1天（零点重置）1个, 最多可获得:（30）
	tAugustRebate_RewardItem[3313377]["EventType"] = 201
	tAugustRebate_RewardItem[3313377]["DataType"] = 75
	tAugustRebate_RewardItem[3313377]["RewardDelay"] = 1
	tAugustRebate_RewardItem[3313377]["RewardTimeType"] = 4
	tAugustRebate_RewardItem[3313377]["RewardData"] = 1
	tAugustRebate_RewardItem[3313377]["RewardTotalData"] = 30
	tAugustRebate_RewardItem[3313377]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313377]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313377]["RewardEffect"]["Effect"] = "angelwing"
	tAugustRebate_RewardItem[3313378] = {}
	-- ===流星（赠）百日包
	-- ===索引: tAugustRebate_RewardItem[3313378]
	-- ===删除: 3313378,1
	-- ===EMoneyLog: 350,22491
	tAugustRebate_RewardItem[3313378]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313378]["EmoneyLog"] = "350	22491	0	0	1	"
	tAugustRebate_RewardItem[3313378]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313378]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313378]["DeleteItem"][1]["Id"] = 3313378 -- 【库】100-dayMeteorPack[属性:9]
	tAugustRebate_RewardItem[3313378]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313378]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313378]["RewardItem"][1]["Id"] = 1088001 -- Meteor[1088001][属性:0][叠加:0][金币:10000], 【表格】赠品流星
	tAugustRebate_RewardItem[3313378]["RewardItem"][1]["Attr"] = "0 1 3" -- Meteor（赠）*1
	-- 【stc（201,76）】1天（零点重置）1个, 最多可获得:（100）
	tAugustRebate_RewardItem[3313378]["EventType"] = 201
	tAugustRebate_RewardItem[3313378]["DataType"] = 76
	tAugustRebate_RewardItem[3313378]["RewardDelay"] = 1
	tAugustRebate_RewardItem[3313378]["RewardTimeType"] = 4
	tAugustRebate_RewardItem[3313378]["RewardData"] = 1
	tAugustRebate_RewardItem[3313378]["RewardTotalData"] = 100
	tAugustRebate_RewardItem[3313378]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313378]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313378]["RewardEffect"]["Effect"] = "angelwing"
	tAugustRebate_RewardItem[3313379] = {}
	-- ===修行值百日包
	-- ===索引: tAugustRebate_RewardItem[3313379]
	-- ===删除: 3313379,1
	-- ===EMoneyLog: 350,22492
	tAugustRebate_RewardItem[3313379]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313379]["EmoneyLog"] = "350	22492	0	0	1	"
	tAugustRebate_RewardItem[3313379]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313379]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313379]["DeleteItem"][1]["Id"] = 3313379 -- 【库】100-dayStudyPointsPack[属性:9]
	tAugustRebate_RewardItem[3313379]["RewardCultivation"] = {}
	tAugustRebate_RewardItem[3313379]["RewardCultivation"]["Value"] = 100 -- 修行值, 【需求】100修行值
	-- 【stc（201,77）】1天（零点重置）1个, 最多可获得:（100）
	tAugustRebate_RewardItem[3313379]["EventType"] = 201
	tAugustRebate_RewardItem[3313379]["DataType"] = 77
	tAugustRebate_RewardItem[3313379]["RewardDelay"] = 1
	tAugustRebate_RewardItem[3313379]["RewardTimeType"] = 4
	tAugustRebate_RewardItem[3313379]["RewardData"] = 1
	tAugustRebate_RewardItem[3313379]["RewardTotalData"] = 100
	tAugustRebate_RewardItem[3313379]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313379]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313379]["RewardEffect"]["Effect"] = "angelwing"
	tAugustRebate_RewardItem[3313380] = {}
	-- ===微光星陨石百日包
	-- ===索引: tAugustRebate_RewardItem[3313380]
	-- ===删除: 3313380,1
	-- ===EMoneyLog: 350,22493
	tAugustRebate_RewardItem[3313380]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313380]["EmoneyLog"] = "350	22493	0	0	1	"
	tAugustRebate_RewardItem[3313380]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313380]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313380]["DeleteItem"][1]["Id"] = 3313380 -- 【库】100-dayTwilightStarStonePack[属性:9]
	tAugustRebate_RewardItem[3313380]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313380]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313380]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】1颗微光星陨石
	tAugustRebate_RewardItem[3313380]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的TwilightStarStone*1
	-- 【stc（201,78）】1天（零点重置）1个, 最多可获得:（100）
	tAugustRebate_RewardItem[3313380]["EventType"] = 201
	tAugustRebate_RewardItem[3313380]["DataType"] = 78
	tAugustRebate_RewardItem[3313380]["RewardDelay"] = 1
	tAugustRebate_RewardItem[3313380]["RewardTimeType"] = 4
	tAugustRebate_RewardItem[3313380]["RewardData"] = 1
	tAugustRebate_RewardItem[3313380]["RewardTotalData"] = 100
	tAugustRebate_RewardItem[3313380]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313380]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313380]["RewardEffect"]["Effect"] = "angelwing"
	tAugustRebate_RewardItem[3313381] = {}
	-- ===天石（赠）百日包
	-- ===索引: tAugustRebate_RewardItem[3313381]
	-- ===删除: 3313381,1
	-- ===EMoneyLog: 350,22494
	tAugustRebate_RewardItem[3313381]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313381]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313381]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313381]["DeleteItem"][1]["Id"] = 3313381 -- 【库】100-dayCPsPack[属性:9]
	tAugustRebate_RewardItem[3313381]["RewardEMoneyMono"] = {}
	tAugustRebate_RewardItem[3313381]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】50天石（赠）
	tAugustRebate_RewardItem[3313381]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22494"
	-- 【stc（201,79）】1天（零点重置）1个, 最多可获得:（100）
	tAugustRebate_RewardItem[3313381]["EventType"] = 201
	tAugustRebate_RewardItem[3313381]["DataType"] = 79
	tAugustRebate_RewardItem[3313381]["RewardDelay"] = 1
	tAugustRebate_RewardItem[3313381]["RewardTimeType"] = 4
	tAugustRebate_RewardItem[3313381]["RewardData"] = 1
	tAugustRebate_RewardItem[3313381]["RewardTotalData"] = 100
	tAugustRebate_RewardItem[3313381]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313381]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313381]["RewardEffect"]["Effect"] = "angelwing"
	tAugustRebate_RewardItem[3313382] = {}
	-- ===万能神纹精粹（赠）百日包
	-- ===索引: tAugustRebate_RewardItem[3313382]
	-- ===删除: 3313382,1
	-- ===EMoneyLog: 350,22495
	tAugustRebate_RewardItem[3313382]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313382]["EmoneyLog"] = "350	22495	0	0	1	"
	tAugustRebate_RewardItem[3313382]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313382]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313382]["DeleteItem"][1]["Id"] = 3313382 -- 【库】100-dayUniversalRuneEssencePack[属性:9]
	tAugustRebate_RewardItem[3313382]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313382]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313382]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tAugustRebate_RewardItem[3313382]["RewardItem"][1]["Attr"] = "0 1 3" -- UniversalRuneEssence*1
	-- 【stc（201,80）】1天（零点重置）1个, 最多可获得:（100）
	tAugustRebate_RewardItem[3313382]["EventType"] = 201
	tAugustRebate_RewardItem[3313382]["DataType"] = 80
	tAugustRebate_RewardItem[3313382]["RewardDelay"] = 1
	tAugustRebate_RewardItem[3313382]["RewardTimeType"] = 4
	tAugustRebate_RewardItem[3313382]["RewardData"] = 1
	tAugustRebate_RewardItem[3313382]["RewardTotalData"] = 100
	tAugustRebate_RewardItem[3313382]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313382]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313382]["RewardEffect"]["Effect"] = "angelwing"
	-- ===初级返还礼包（一）
	-- ===索引: tAugustRebate_RewardItem[3313233]
	-- ===删除: 3313233,1
	-- ===EMoneyLog: 350,22413
	-- ===
	tAugustRebate_RewardItem[3313233] = {}
	tAugustRebate_RewardItem[3313233]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313233]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313233]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313233]["DeleteItem"][1]["Id"] = 3313233 -- 【库】Class1PrimaryRebatePack[属性:9]
	tAugustRebate_RewardItem[3313233]["RewardEMoneyMono"] = {}
	tAugustRebate_RewardItem[3313233]["RewardEMoneyMono"]["Value"] = 3000 -- 天石（赠）, 【需求】赠点天石
	tAugustRebate_RewardItem[3313233]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22413"
	tAugustRebate_RewardItem[3313233]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313233]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313233]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313234] = {}
	-- ===初级返还礼包（二）
	-- ===索引: tAugustRebate_RewardItem[3313234][1]
	-- ===删除: 3313234,1
	-- ===EMoneyLog: 350,22414
	-- ===
	tAugustRebate_RewardItem[3313234][1] = {}
	tAugustRebate_RewardItem[3313234][1]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313234][1]["EmoneyLog"] = "350	22414	0	0	1	"
	tAugustRebate_RewardItem[3313234][1]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313234][1]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313234][1]["DeleteItem"][1]["Id"] = 3313234 -- 【库】Class2PrimaryRebatePack[属性:9]
	tAugustRebate_RewardItem[3313234][1]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313234][1]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313234][1]["RewardItem"][1]["Id"] = 3302940 -- RadiantStarPack(5)[3302940][属性:11][叠加:0][金币:0], 【表格】晶莹星陨石*5
	tAugustRebate_RewardItem[3313234][1]["RewardItem"][1]["Attr"] = "0 2 3" -- RadiantStarPack(5)（赠）*2
	tAugustRebate_RewardItem[3313234][1]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313234][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313234][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313234][2] = {}
	-- ===初级返还礼包（二）
	-- ===索引: tAugustRebate_RewardItem[3313234][2]
	-- ===删除: 3313234,1
	-- ===EMoneyLog: 350,22414
	-- ===
	tAugustRebate_RewardItem[3313234][2]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313234][2]["EmoneyLog"] = "350	22414	0	0	1	"
	tAugustRebate_RewardItem[3313234][2]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313234][2]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313234][2]["DeleteItem"][1]["Id"] = 3313234 -- 【库】Class2PrimaryRebatePack[属性:9]
	tAugustRebate_RewardItem[3313234][2]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313234][2]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313234][2]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*400
	tAugustRebate_RewardItem[3313234][2]["RewardItem"][1]["Attr"] = "0 400 3" -- UniversalRuneEssence*400
	tAugustRebate_RewardItem[3313234][2]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313234][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313234][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313235] = {}
	-- ===初级返还礼包（三）
	-- ===索引: tAugustRebate_RewardItem[3313235][1]
	-- ===删除: 3313235,1
	-- ===EMoneyLog: 350,22415
	-- ===
	tAugustRebate_RewardItem[3313235][1] = {}
	tAugustRebate_RewardItem[3313235][1]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313235][1]["EmoneyLog"] = "350	22415	0	0	1	"
	tAugustRebate_RewardItem[3313235][1]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313235][1]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313235][1]["DeleteItem"][1]["Id"] = 3313235 -- 【库】Class3PrimaryRebatePack[属性:9]
	tAugustRebate_RewardItem[3313235][1]["RewardStrengthValue"] = {}
	tAugustRebate_RewardItem[3313235][1]["RewardStrengthValue"]["Value"] = 100000 -- 气力值, 【需求】10W气力值
	tAugustRebate_RewardItem[3313235][1]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313235][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313235][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313235][2] = {}
	-- ===初级返还礼包（三）
	-- ===索引: tAugustRebate_RewardItem[3313235][2]
	-- ===删除: 3313235,1
	-- ===EMoneyLog: 350,22415
	-- ===
	tAugustRebate_RewardItem[3313235][2]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313235][2]["EmoneyLog"] = "350	22415	0	0	1	"
	tAugustRebate_RewardItem[3313235][2]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313235][2]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313235][2]["DeleteItem"][1]["Id"] = 3313235 -- 【库】Class3PrimaryRebatePack[属性:9]
	tAugustRebate_RewardItem[3313235][2]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313235][2]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313235][2]["RewardItem"][1]["Id"] = 3302940 -- RadiantStarPack(5)[3302940][属性:11][叠加:0][金币:0], 【表格】晶莹星陨石*5
	tAugustRebate_RewardItem[3313235][2]["RewardItem"][1]["Attr"] = "0 4 3" -- RadiantStarPack(5)（赠）*4
	tAugustRebate_RewardItem[3313235][2]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313235][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313235][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313236] = {}
	-- ===初级返还礼包（四）
	-- ===索引: tAugustRebate_RewardItem[3313236]
	-- ===删除: 3313236,1
	-- ===EMoneyLog: 350,22416
	tAugustRebate_RewardItem[3313236]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313236]["EmoneyLog"] = "350	22416	0	0	1	"
	tAugustRebate_RewardItem[3313236]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313236]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313236]["DeleteItem"][1]["Id"] = 3313236 -- 【库】Class4PrimaryRebatePack[属性:9]
	tAugustRebate_RewardItem[3313236]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313236]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313236]["RewardItem"][1]["Id"] = 3311820 -- MysticRuneStone[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶（赠）*5
	tAugustRebate_RewardItem[3313236]["RewardItem"][1]["Attr"] = "0 5 3" -- MysticRuneStone（赠）*5
	tAugustRebate_RewardItem[3313236]["RewardItem"][2] = {}
	tAugustRebate_RewardItem[3313236]["RewardItem"][2]["Id"] = 3313254 -- ChiPoints/StarStonesPack[3313254][属性:9][叠加:0][金币:0], 【表格】气力值星陨石自选包
	tAugustRebate_RewardItem[3313236]["RewardItem"][2]["Attr"] = "0 1" -- ChiPoints/StarStonesPack*1
	tAugustRebate_RewardItem[3313236]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313236]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313236]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313237] = {}
	-- ===初级返还礼包（五）
	-- ===索引: tAugustRebate_RewardItem[3313237]
	-- ===删除: 3313237,1
	-- ===EMoneyLog: 350,22417
	tAugustRebate_RewardItem[3313237]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313237]["EmoneyLog"] = "350	22417	0	0	1	"
	tAugustRebate_RewardItem[3313237]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313237]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313237]["DeleteItem"][1]["Id"] = 3313237 -- 【库】Class5PrimaryRebatePack[属性:9]
	tAugustRebate_RewardItem[3313237]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313237]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313237]["RewardItem"][1]["Id"] = 3311821 -- DivineRuneStone[3311821][属性:9][叠加:10000][金币:0], 【表格】优质神纹源晶（赠）*3
	tAugustRebate_RewardItem[3313237]["RewardItem"][1]["Attr"] = "0 3 3" -- DivineRuneStone（赠）*3
	tAugustRebate_RewardItem[3313237]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313237]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313237]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313238] = {}
	-- ===初级返还礼包（六）
	-- ===索引: tAugustRebate_RewardItem[3313238]
	-- ===删除: 3313238,1
	-- ===EMoneyLog: 350,22418
	tAugustRebate_RewardItem[3313238]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313238]["EmoneyLog"] = "350	22418	0	0	1	"
	tAugustRebate_RewardItem[3313238]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313238]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313238]["DeleteItem"][1]["Id"] = 3313238 -- 【库】Class6PrimaryRebatePack[属性:9]
	tAugustRebate_RewardItem[3313238]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313238]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313238]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石*3
	tAugustRebate_RewardItem[3313238]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的SplendidStarStone*3
	tAugustRebate_RewardItem[3313238]["RewardItem"][2] = {}
	tAugustRebate_RewardItem[3313238]["RewardItem"][2]["Id"] = 4200006 -- P6Anima[4200006][属性:72][叠加:99][金币:0], 【表格】6阶灵珠
	tAugustRebate_RewardItem[3313238]["RewardItem"][2]["Attr"] = "0 2" -- P6Anima*2
	tAugustRebate_RewardItem[3313238]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAugustRebate_RewardItem[3313238]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313238]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313238]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313239] = {}
	-- ===初级返还礼包（七）
	-- ===索引: tAugustRebate_RewardItem[3313239]
	-- ===删除: 3313239,1
	-- ===EMoneyLog: 350,22419
	tAugustRebate_RewardItem[3313239]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313239]["EmoneyLog"] = "350	22419	0	0	1	"
	tAugustRebate_RewardItem[3313239]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313239]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313239]["DeleteItem"][1]["Id"] = 3313239 -- 【库】Class7PrimaryRebatePack[属性:9]
	tAugustRebate_RewardItem[3313239]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313239]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313239]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*1000
	tAugustRebate_RewardItem[3313239]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence*1000
	tAugustRebate_RewardItem[3313239]["RewardItem"][2] = {}
	tAugustRebate_RewardItem[3313239]["RewardItem"][2]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤炼石（赠）
	tAugustRebate_RewardItem[3313239]["RewardItem"][2]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tAugustRebate_RewardItem[3313239]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313239]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313239]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313240] = {}
	-- ===中级返还礼包（一）
	-- ===索引: tAugustRebate_RewardItem[3313240]
	-- ===删除: 3313240,1
	-- ===EMoneyLog: 350,22420
	tAugustRebate_RewardItem[3313240]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313240]["EmoneyLog"] = "350	22420	0	0	1	"
	tAugustRebate_RewardItem[3313240]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313240]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313240]["DeleteItem"][1]["Id"] = 3313240 -- 【库】Class1MediumRebatePack[属性:9]
	tAugustRebate_RewardItem[3313240]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313240]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313240]["RewardItem"][1]["Id"] = 3311821 -- DivineRuneStone[3311821][属性:9][叠加:10000][金币:0], 【表格】优质神纹源晶（赠）*8
	tAugustRebate_RewardItem[3313240]["RewardItem"][1]["Attr"] = "0 8 3" -- DivineRuneStone（赠）*8
	tAugustRebate_RewardItem[3313240]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313240]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313240]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313241] = {}
	-- ===中级返还礼包（二）
	-- ===索引: tAugustRebate_RewardItem[3313241]
	-- ===删除: 3313241,1
	-- ===EMoneyLog: 350,22421
	tAugustRebate_RewardItem[3313241]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313241]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313241]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313241]["DeleteItem"][1]["Id"] = 3313241 -- 【库】Class2MediumRebatePack[属性:9]
	tAugustRebate_RewardItem[3313241]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313241]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313241]["RewardItem"][1]["Id"] = 4200008 -- UniversalRuneEssence[4200008][属性:9][叠加:10000][金币:0], 【表格】8阶灵珠
	tAugustRebate_RewardItem[3313241]["RewardItem"][1]["Attr"] = "0 2" -- UniversalRuneEssence*2
	tAugustRebate_RewardItem[3313241]["RewardEMoneyMono"] = {}
	tAugustRebate_RewardItem[3313241]["RewardEMoneyMono"]["Value"] = 30000 -- 天石（赠）, 【需求】3w赠点天石
	tAugustRebate_RewardItem[3313241]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22421"
	tAugustRebate_RewardItem[3313241]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313241]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313241]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313242] = {}
	-- ===中级返还礼包（三）
	-- ===索引: tAugustRebate_RewardItem[3313242]
	-- ===删除: 3313242,1
	-- ===EMoneyLog: 350,22422
	tAugustRebate_RewardItem[3313242]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313242]["EmoneyLog"] = "350	22422	0	0	1	"
	tAugustRebate_RewardItem[3313242]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313242]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313242]["DeleteItem"][1]["Id"] = 3313242 -- 【库】Class3MediumRebatePack[属性:9]
	tAugustRebate_RewardItem[3313242]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313242]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313242]["RewardItem"][1]["Id"] = 3321108 --  3321108 【库里没有该物品】, 【表格】鸿蒙炼魂玉*60
	tAugustRebate_RewardItem[3313242]["RewardItem"][1]["Attr"] = "0 60" --  3321108 【库里没有该物品】*60
	tAugustRebate_RewardItem[3313242]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313242]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313242]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313243] = {}
	-- ===中级返还礼包（四）
	-- ===索引: tAugustRebate_RewardItem[3313243]
	-- ===删除: 3313243,1
	-- ===EMoneyLog: 350,22423
	tAugustRebate_RewardItem[3313243]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313243]["EmoneyLog"] = "350	22423	0	0	1	"
	tAugustRebate_RewardItem[3313243]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313243]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313243]["DeleteItem"][1]["Id"] = 3313243 -- 【库】Class4MediumRebatePack[属性:9]
	tAugustRebate_RewardItem[3313243]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313243]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313243]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤炼石（赠）
	tAugustRebate_RewardItem[3313243]["RewardItem"][1]["Attr"] = "0 2 3" -- +8Stone（赠）*2
	tAugustRebate_RewardItem[3313243]["RewardItem"][2] = {}
	tAugustRebate_RewardItem[3313243]["RewardItem"][2]["Id"] = 3313255 -- ChiPoints/PowerErasersPack[3313255][属性:9][叠加:0][金币:0], 【表格】气力值散功丹自选包
	tAugustRebate_RewardItem[3313243]["RewardItem"][2]["Attr"] = "0 1" -- ChiPoints/PowerErasersPack*1
	tAugustRebate_RewardItem[3313243]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313243]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313243]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313244] = {}
	-- ===中级返还礼包（五）
	-- ===索引: tAugustRebate_RewardItem[3313244]
	-- ===删除: 3313244,1
	-- ===EMoneyLog: 350,22424
	tAugustRebate_RewardItem[3313244]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313244]["EmoneyLog"] = "350	22424	0	0	1	"
	tAugustRebate_RewardItem[3313244]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313244]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313244]["DeleteItem"][1]["Id"] = 3313244 -- 【库】Class5MediumRebatePack[属性:9]
	tAugustRebate_RewardItem[3313244]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313244]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313244]["RewardItem"][1]["Id"] = 3320151 -- BillionContributionVoucher(B)[3320151][属性:9][叠加:0][金币:0], 【表格】BillionContributionVoucher（B）*5
	tAugustRebate_RewardItem[3313244]["RewardItem"][1]["Attr"] = "0 5" -- BillionContributionVoucher(B)*5
	tAugustRebate_RewardItem[3313244]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313244]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313244]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313245] = {}
	-- ===中级返还礼包（六）
	-- ===索引: tAugustRebate_RewardItem[3313245]
	-- ===删除: 3313245,1
	-- ===EMoneyLog: 350,22425
	tAugustRebate_RewardItem[3313245]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313245]["EmoneyLog"] = "350	22425	0	0	1	"
	tAugustRebate_RewardItem[3313245]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313245]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313245]["DeleteItem"][1]["Id"] = 3313245 -- 【库】Class6MediumRebatePack[属性:9]
	tAugustRebate_RewardItem[3313245]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313245]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313245]["RewardItem"][1]["Id"] = 3311821 -- DivineRuneStone[3311821][属性:9][叠加:10000][金币:0], 【表格】优质神纹源晶（赠）*9
	tAugustRebate_RewardItem[3313245]["RewardItem"][1]["Attr"] = "0 9 3" -- DivineRuneStone（赠）*9
	tAugustRebate_RewardItem[3313245]["RewardItem"][2] = {}
	tAugustRebate_RewardItem[3313245]["RewardItem"][2]["Id"] = 3321108 --  3321108 【库里没有该物品】, 【表格】鸿蒙炼魂玉*20
	tAugustRebate_RewardItem[3313245]["RewardItem"][2]["Attr"] = "0 20" --  3321108 【库里没有该物品】*20
	tAugustRebate_RewardItem[3313245]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313245]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313245]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313246] = {}
	-- ===中级返还礼包（七）
	-- ===索引: tAugustRebate_RewardItem[3313246][1]
	-- ===删除: 3313246,1
	-- ===EMoneyLog: 350,22426
	tAugustRebate_RewardItem[3313246][1] = {}
	tAugustRebate_RewardItem[3313246][1]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313246][1]["EmoneyLog"] = "350	22426	0	0	1	"
	tAugustRebate_RewardItem[3313246][1]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313246][1]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313246][1]["DeleteItem"][1]["Id"] = 3313246 -- 【库】Class7MediumRebatePack[属性:9]
	tAugustRebate_RewardItem[3313246][1]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313246][1]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313246][1]["RewardItem"][1]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】散功丹（赠）*60
	tAugustRebate_RewardItem[3313246][1]["RewardItem"][1]["Attr"] = "0 60 3" -- PowerEraser（赠）*60
	tAugustRebate_RewardItem[3313246][1]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313246][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313246][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313246][2] = {}
	-- ===中级返还礼包（七）
	-- ===索引: tAugustRebate_RewardItem[3313246][2]
	-- ===删除: 3313246,1
	-- ===EMoneyLog: 350,22426
	tAugustRebate_RewardItem[3313246][2]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313246][2]["EmoneyLog"] = "350	22426	0	0	1	"
	tAugustRebate_RewardItem[3313246][2]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313246][2]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313246][2]["DeleteItem"][1]["Id"] = 3313246 -- 【库】Class7MediumRebatePack[属性:9]
	tAugustRebate_RewardItem[3313246][2]["RewardStrengthValue"] = {}
	tAugustRebate_RewardItem[3313246][2]["RewardStrengthValue"]["Value"] = 550000 -- 气力值, 【需求】气力值55W
	tAugustRebate_RewardItem[3313246][2]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313246][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313246][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313247] = {}
	-- ===高级返还礼包（一）
	-- ===索引: tAugustRebate_RewardItem[3313247]
	-- ===删除: 3313247,1
	-- ===EMoneyLog: 350,22427
	tAugustRebate_RewardItem[3313247]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313247]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313247]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313247]["DeleteItem"][1]["Id"] = 3313247 -- 【库】Class1AdvancedRebatePack[属性:9]
	tAugustRebate_RewardItem[3313247]["RewardEMoneyMono"] = {}
	tAugustRebate_RewardItem[3313247]["RewardEMoneyMono"]["Value"] = 100000 -- 天石（赠）, 【需求】10w赠点天石
	tAugustRebate_RewardItem[3313247]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22427"
	tAugustRebate_RewardItem[3313247]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313247]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313247]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313248] = {}
	-- ===高级返还礼包（二）
	-- ===索引: tAugustRebate_RewardItem[3313248]
	-- ===删除: 3313248,1
	-- ===EMoneyLog: 350,22428
	tAugustRebate_RewardItem[3313248]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313248]["EmoneyLog"] = "350	22428	0	0	1	"
	tAugustRebate_RewardItem[3313248]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313248]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313248]["DeleteItem"][1]["Id"] = 3313248 -- 【库】Class2AdvancedRebatePack[属性:9]
	tAugustRebate_RewardItem[3313248]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313248]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313248]["RewardItem"][1]["Id"] = 3321108 --  3321108 【库里没有该物品】, 【表格】鸿蒙炼魂玉*100
	tAugustRebate_RewardItem[3313248]["RewardItem"][1]["Attr"] = "0 100" --  3321108 【库里没有该物品】*100
	tAugustRebate_RewardItem[3313248]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313248]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313248]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313249] = {}
	-- ===高级返还礼包（三）
	-- ===索引: tAugustRebate_RewardItem[3313249]
	-- ===删除: 3313249,1
	-- ===EMoneyLog: 350,22429
	tAugustRebate_RewardItem[3313249]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313249]["EmoneyLog"] = "350	22429	0	0	1	"
	tAugustRebate_RewardItem[3313249]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313249]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313249]["DeleteItem"][1]["Id"] = 3313249 -- 【库】Class3AdvancedRebatePack[属性:9]
	tAugustRebate_RewardItem[3313249]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313249]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313249]["RewardItem"][1]["Id"] = 3319014 -- +2RandomRareYellowRunePack(B)[3319014][属性:9][叠加:0][金币:0], 【表格】+2稀有黄色神纹随机包（赠）
	tAugustRebate_RewardItem[3313249]["RewardItem"][1]["Attr"] = "0 1 3" -- +2RandomRareYellowRunePack(B)（赠）*1
	tAugustRebate_RewardItem[3313249]["RewardItem"][2] = {}
	tAugustRebate_RewardItem[3313249]["RewardItem"][2]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0], 【表格】大固化石（赠）
	tAugustRebate_RewardItem[3313249]["RewardItem"][2]["Attr"] = "0 1 3" -- BigPermanentStone（赠）*1
	tAugustRebate_RewardItem[3313249]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313249]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313249]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313250] = {}
	-- ===高级返还礼包（四）
	-- ===索引: tAugustRebate_RewardItem[3313250]
	-- ===删除: 3313250,1
	-- ===EMoneyLog: 350,22430
	tAugustRebate_RewardItem[3313250]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313250]["EmoneyLog"] = "350	22430	0	0	1	"
	tAugustRebate_RewardItem[3313250]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313250]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313250]["DeleteItem"][1]["Id"] = 3313250 -- 【库】Class4AdvancedRebatePack[属性:9]
	tAugustRebate_RewardItem[3313250]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313250]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313250]["RewardItem"][1]["Id"] = 205000 -- CelestialDragon(Freedom)[205000][属性:0][叠加:0][金币:0], 【表格】180天非赠神佑-1双人骑宠坐骑
	tAugustRebate_RewardItem[3313250]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑CelestialDragon(Freedom)*1
	tAugustRebate_RewardItem[3313250]["RewardItem"][2] = {}
	tAugustRebate_RewardItem[3313250]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*3000
	tAugustRebate_RewardItem[3313250]["RewardItem"][2]["Attr"] = "0 3000 3" -- UniversalRuneEssence*3000
	tAugustRebate_RewardItem[3313250]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313250]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313250]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313251] = {}
	-- ===高级返还礼包（五）
	-- ===索引: tAugustRebate_RewardItem[3313251]
	-- ===删除: 3313251,1
	-- ===EMoneyLog: 350,22431
	tAugustRebate_RewardItem[3313251]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313251]["EmoneyLog"] = "350	22431	0	0	1	"
	tAugustRebate_RewardItem[3313251]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313251]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313251]["DeleteItem"][1]["Id"] = 3313251 -- 【库】Class5AdvancedRebatePack[属性:9]
	tAugustRebate_RewardItem[3313251]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313251]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313251]["RewardItem"][1]["Id"] = 3009104 -- RedBodhiBean[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提*40
	tAugustRebate_RewardItem[3313251]["RewardItem"][1]["Attr"] = "0 40" -- RedBodhiBean*40
	tAugustRebate_RewardItem[3313251]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313251]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313251]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313252] = {}
	-- ===高级返还礼包（六）
	-- ===索引: tAugustRebate_RewardItem[3313252]
	-- ===删除: 3313252,1
	-- ===EMoneyLog: 350,22432
	tAugustRebate_RewardItem[3313252]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313252]["EmoneyLog"] = "350	22432	0	0	1	"
	tAugustRebate_RewardItem[3313252]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313252]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313252]["DeleteItem"][1]["Id"] = 3313252 -- 【库】Class6AdvancedRebatePack[属性:9]
	tAugustRebate_RewardItem[3313252]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313252]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313252]["RewardItem"][1]["Id"] = 3319015 -- +3RandomRareYellowRunePack(B)[3319015][属性:9][叠加:0][金币:0], 【表格】+3稀有黄色神纹随机包（赠）
	tAugustRebate_RewardItem[3313252]["RewardItem"][1]["Attr"] = "0 1 3" -- +3RandomRareYellowRunePack(B)（赠）*1
	tAugustRebate_RewardItem[3313252]["RewardItem"][2] = {}
	tAugustRebate_RewardItem[3313252]["RewardItem"][2]["Id"] = 711904 -- JiangHuEpicBall[711904][属性:9][叠加:100][金币:0], 【表格】JiangHuEpicBall
	tAugustRebate_RewardItem[3313252]["RewardItem"][2]["Attr"] = "0 1" -- JiangHuEpicBall*1
	tAugustRebate_RewardItem[3313252]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313252]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313252]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313253] = {}
	-- ===高级返还礼包（七）
	-- ===索引: tAugustRebate_RewardItem[3313253]
	-- ===删除: 3313253,1
	-- ===EMoneyLog: 350,22433
	tAugustRebate_RewardItem[3313253]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313253]["EmoneyLog"] = "350	22433	0	0	1	"
	tAugustRebate_RewardItem[3313253]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313253]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313253]["DeleteItem"][1]["Id"] = 3313253 -- 【库】Class7AdvancedRebatePack[属性:9]
	tAugustRebate_RewardItem[3313253]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313253]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313253]["RewardItem"][1]["Id"] = 3313256 -- GarmentSelectionPack[3313256][属性:9][叠加:0][金币:0], 【表格】30天非赠神佑-1五星人物外套可选包
	tAugustRebate_RewardItem[3313253]["RewardItem"][1]["Attr"] = "0 1" -- GarmentSelectionPack*1
	tAugustRebate_RewardItem[3313253]["RewardItem"][2] = {}
	tAugustRebate_RewardItem[3313253]["RewardItem"][2]["Id"] = 3313257 -- MountArmorSelectionPack[3313257][属性:9][叠加:0][金币:0], 【表格】30天非赠神佑-1坐骑外套可选包
	tAugustRebate_RewardItem[3313253]["RewardItem"][2]["Attr"] = "0 1" -- MountArmorSelectionPack*1
	tAugustRebate_RewardItem[3313253]["RewardItem"][3] = {}
	tAugustRebate_RewardItem[3313253]["RewardItem"][3]["Id"] = 711903 -- ChiBooster(+1)[711903][属性:9][叠加:100][金币:0], 【表格】ChiBooster（+1） 
	tAugustRebate_RewardItem[3313253]["RewardItem"][3]["Attr"] = "0 2" -- ChiBooster(+1)*2
	tAugustRebate_RewardItem[3313253]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313253]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313253]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313254] = {}
	-- ===气力值星陨石自选包
	-- ===索引: tAugustRebate_RewardItem[3313254][1]
	-- ===删除: 3313254,1
	-- ===
	tAugustRebate_RewardItem[3313254][1] = {}
	tAugustRebate_RewardItem[3313254][1]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313254][1]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313254][1]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313254][1]["DeleteItem"][1]["Id"] = 3313254 -- 【库】ChiPoints/StarStonesPack[属性:9]
	tAugustRebate_RewardItem[3313254][1]["RewardStrengthValue"] = {}
	tAugustRebate_RewardItem[3313254][1]["RewardStrengthValue"]["Value"] = 100000 -- 气力值, 【需求】10W气力值
	tAugustRebate_RewardItem[3313254][1]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313254][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313254][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313254][2] = {}
	-- ===气力值星陨石自选包
	-- ===索引: tAugustRebate_RewardItem[3313254][2]
	-- ===删除: 3313254,1
	-- ===
	tAugustRebate_RewardItem[3313254][2]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313254][2]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313254][2]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313254][2]["DeleteItem"][1]["Id"] = 3313254 -- 【库】ChiPoints/StarStonesPack[属性:9]
	tAugustRebate_RewardItem[3313254][2]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313254][2]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313254][2]["RewardItem"][1]["Id"] = 3302940 -- RadiantStarPack(5)[3302940][属性:11][叠加:0][金币:0], 【表格】晶莹星陨石*5
	tAugustRebate_RewardItem[3313254][2]["RewardItem"][1]["Attr"] = "0 4 3" -- RadiantStarPack(5)（赠）*4
	tAugustRebate_RewardItem[3313254][2]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313254][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313254][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313255] = {}
	-- ===气力值散功丹自选包
	-- ===索引: tAugustRebate_RewardItem[3313255][1]
	-- ===删除: 3313255,1
	tAugustRebate_RewardItem[3313255][1] = {}
	tAugustRebate_RewardItem[3313255][1]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313255][1]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313255][1]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313255][1]["DeleteItem"][1]["Id"] = 3313255 -- 【库】ChiPoints/PowerErasersPack[属性:9]
	tAugustRebate_RewardItem[3313255][1]["RewardStrengthValue"] = {}
	tAugustRebate_RewardItem[3313255][1]["RewardStrengthValue"]["Value"] = 200000 -- 气力值, 【需求】20W气力值
	tAugustRebate_RewardItem[3313255][1]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313255][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313255][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313255][2] = {}
	-- ===气力值散功丹自选包
	-- ===索引: tAugustRebate_RewardItem[3313255][2]
	-- ===删除: 3313255,1
	tAugustRebate_RewardItem[3313255][2]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313255][2]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313255][2]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313255][2]["DeleteItem"][1]["Id"] = 3313255 -- 【库】ChiPoints/PowerErasersPack[属性:9]
	tAugustRebate_RewardItem[3313255][2]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313255][2]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313255][2]["RewardItem"][1]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】散功丹（赠）*25
	tAugustRebate_RewardItem[3313255][2]["RewardItem"][1]["Attr"] = "0 25 3" -- PowerEraser（赠）*25
	tAugustRebate_RewardItem[3313255][2]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313255][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313255][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313256] = {}
	-- ===人物外套自选礼包
	-- ===索引: tAugustRebate_RewardItem[3313256][1]
	-- ===删除: 3313256,1
	tAugustRebate_RewardItem[3313256][1] = {}
	tAugustRebate_RewardItem[3313256][1]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313256][1]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313256][1]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313256][1]["DeleteItem"][1]["Id"] = 3313256 -- 【库】GarmentSelectionPack[属性:9]
	tAugustRebate_RewardItem[3313256][1]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313256][1]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313256][1]["RewardItem"][1]["Id"] = 195645 -- StarSea(Hymn)[195645][属性:0][叠加:0][金币:0], 【表格】30天非赠神佑-1StarSea（Hymn）
	tAugustRebate_RewardItem[3313256][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑StarSea(Hymn)*1
	tAugustRebate_RewardItem[3313256][1]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313256][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313256][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313256][2] = {}
	-- ===人物外套自选礼包
	-- ===索引: tAugustRebate_RewardItem[3313256][2]
	-- ===删除: 3313256,1
	tAugustRebate_RewardItem[3313256][2]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313256][2]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313256][2]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313256][2]["DeleteItem"][1]["Id"] = 3313256 -- 【库】GarmentSelectionPack[属性:9]
	tAugustRebate_RewardItem[3313256][2]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313256][2]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313256][2]["RewardItem"][1]["Id"] = 195425 -- ImperialDragonArmor[195425][属性:0][叠加:0][金币:0], 【表格】30天非赠神佑-1ImperialDragonArmor
	tAugustRebate_RewardItem[3313256][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ImperialDragonArmor*1
	tAugustRebate_RewardItem[3313256][2]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313256][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313256][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313257] = {}
	-- ===坐骑外套自选礼包
	-- ===索引: tAugustRebate_RewardItem[3313257][1]
	-- ===删除: 3313257,1
	tAugustRebate_RewardItem[3313257][1] = {}
	tAugustRebate_RewardItem[3313257][1]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313257][1]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313257][1]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313257][1]["DeleteItem"][1]["Id"] = 3313257 -- 【库】MountArmorSelectionPack[属性:9]
	tAugustRebate_RewardItem[3313257][1]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313257][1]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313257][1]["RewardItem"][1]["Id"] = 200646 -- CelestialDragon(Star)[200646][属性:0][叠加:0][金币:0], 【表格】30天非赠神佑-1CelestialDragon（Star）
	tAugustRebate_RewardItem[3313257][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑CelestialDragon(Star)*1
	tAugustRebate_RewardItem[3313257][1]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313257][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313257][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustRebate_RewardItem[3313257][2] = {}
	-- ===坐骑外套自选礼包
	-- ===索引: tAugustRebate_RewardItem[3313257][2]
	-- ===删除: 3313257,1
	tAugustRebate_RewardItem[3313257][2]["LogId"] = 12001513
	tAugustRebate_RewardItem[3313257][2]["DeleteItem"] = {}
	tAugustRebate_RewardItem[3313257][2]["DeleteItem"][1] = {}
	tAugustRebate_RewardItem[3313257][2]["DeleteItem"][1]["Id"] = 3313257 -- 【库】MountArmorSelectionPack[属性:9]
	tAugustRebate_RewardItem[3313257][2]["RewardItem"] = {}
	tAugustRebate_RewardItem[3313257][2]["RewardItem"][1] = {}
	tAugustRebate_RewardItem[3313257][2]["RewardItem"][1]["Id"] = 200637 -- ImperialFox(Supreme)[200637][属性:0][叠加:0][金币:0], 【表格】30天非赠神佑-1ImperialFox（supreme）
	tAugustRebate_RewardItem[3313257][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ImperialFox(Supreme)*1
	tAugustRebate_RewardItem[3313257][2]["RewardEffect"] = {}
	tAugustRebate_RewardItem[3313257][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustRebate_RewardItem[3313257][2]["RewardEffect"]["Effect"] = "angelwing"




----------------------------------逻辑部分---------------------------------------------

function AugustRebate_UseItem(nItemId)
	local nSpace = RewardTemplate_GetRewardSpace(tAugustRebate_RewardItem[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tAugustRebate_Text["NoSpace"])	
		return
	end 
	local nMaxRewardMonoEMoney = tAugustRebate_RewardItem[nItemId]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nMaxRewardMonoEMoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tAugustRebate_Text["MoneyMax"])
		return 
	end
	RewardTemplate_UseItem(tAugustRebate_RewardItem[nItemId])
end 


function AugustRebate_RewardPakage (nItemId,nOption)
	local nSpace = RewardTemplate_GetRewardSpace(tAugustRebate_RewardItem[nItemId][nOption])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tAugustRebate_Text["NoSpace"])	
		return
	end 
	RewardTemplate_UseItemAndMsg(tAugustRebate_RewardItem[nItemId][nOption])
end


--百日礼包
function AugustRebate_OpenPack(nItemId)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tAugustRebate_RewardItem[nItemId])
	if not bJudge then
		return
	end
	local nSpace = RewardTemplate_GetRewardSpace(tAugustRebate_RewardItem[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tAugustRebate_Text["NoSpace"])	
		return
	end 
	if tAugustRebate_RewardItem[nItemId]["RewardEMoneyMono"]~=nil then
		--判断天石上限
		local nMaxRewardMonoEMoney = tAugustRebate_RewardItem[nItemId]["RewardEMoneyMono"]["Value"]
		if Get_UserMonoEMoney() + nMaxRewardMonoEMoney > G_User_MaxEmoneyMono then
			Sys_MsgBox(tAugustRebate_Text["MoneyMax"])
			return 
		end
	end
	RewardTemplate_UseItemAndMsg(tAugustRebate_RewardItem[nItemId],nUserId,bJudge)
end 




---------------------------------物品部分---------------------------------------------
--百日礼包
tItem[3313377] = tItem[3313377] or {}
tItem[3313377]["Function"] = function(nItemId,sItemName)    
	AugustRebate_OpenPack(nItemId)
end
tItem[3313378] = tItem[3313377] or {}
tItem[3313379] = tItem[3313377] or {}
tItem[3313380] = tItem[3313377] or {}
tItem[3313381] = tItem[3313377] or {}
tItem[3313382] = tItem[3313377] or {}
--赠点天石礼包
tItem[3313233] = tItem[3313233] or {}
tItem[3313233]["Function"] = function(nItemId)
	AugustRebate_UseItem(nItemId)
end
tItem[3313241] = tItem[3313233] or {}
tItem[3313247] = tItem[3313233] or {}

tItem[3313236] = tItem[3313236] or {}
tItem[3313236]["Function"] = function(nItemId)
	RewardTemplate_UseItem(tAugustRebate_RewardItem[nItemId])
end
tItem[3313237] = tItem[3313236] or {}
tItem[3313238] = tItem[3313236] or {}
tItem[3313239] = tItem[3313236] or {}
tItem[3313240] = tItem[3313236] or {}
tItem[3313242] = tItem[3313236] or {}
tItem[3313243] = tItem[3313236] or {}
tItem[3313244] = tItem[3313236] or {}
tItem[3313245] = tItem[3313236] or {}
tItem[3313248] = tItem[3313236] or {}
tItem[3313249] = tItem[3313236] or {}
tItem[3313250] = tItem[3313236] or {}
tItem[3313251] = tItem[3313236] or {}
tItem[3313252] = tItem[3313236] or {}
tItem[3313253] = tItem[3313236] or {}
tItem[3314541] = tItem[3313236] or {}


tItemFace[3313234] = 2404
tItemFace[3313235] = 2404
tItemFace[3313246] = 2405
tItemFace[3313254] = 2406
tItemFace[3313255] = 2407
tItemFace[3313256] = 2408
tItemFace[3313257] = 2409
tItem[3313234] = tItem[3313234] or {}
tItem[3313234]["Text1-1"] = {111}
tItem[3313234]["Text111"] =tAugustRebate_Text[3313234]["Text111"]
tItem[3313234]["tOption1-1"] = {1,2,3}
tItem[3313234]["Option1"] = tAugustRebate_Text[3313234]["Option1"]
tItem[3313234]["OptionPoint1"]="2-1"
tItem[3313234]["Option2"] = tAugustRebate_Text[3313234]["Option2"]
tItem[3313234]["OptionPoint2"]="2-2"
tItem[3313234]["Option3"] = tAugustRebate_Text[3313234]["Option3"]

tItem[3313234]["Text2-1"] = {211}
tItem[3313234]["Text211"] = tAugustRebate_Text[3313234]["Text211"]
tItem[3313234]["tOption2-1"] = {4,5}
tItem[3313234]["Option4"] = tAugustRebate_Text[3313234]["Option4"]
tItem[3313234]["OptionFunc4"]="AugustRebate_RewardPakage</N>3313234</N>1"
tItem[3313234]["Option5"] = tAugustRebate_Text[3313234]["Option5"]
tItem[3313234]["OptionPoint5"]="1-1" 

tItem[3313234]["Text2-2"] = {221}
tItem[3313234]["Text221"] = tAugustRebate_Text[3313234]["Text221"]
tItem[3313234]["tOption2-2"] = {6,5}
tItem[3313234]["Option6"] = tAugustRebate_Text[3313234]["Option6"]
tItem[3313234]["OptionFunc6"]="AugustRebate_RewardPakage</N>3313234</N>2"

tItem[3313235] = tItem[3313235] or {}
tItem[3313235]["Text1-1"] = {111}
tItem[3313235]["Text111"] =tAugustRebate_Text[3313235]["Text111"]
tItem[3313235]["tOption1-1"] = {1,2,3}
tItem[3313235]["Option1"] = tAugustRebate_Text[3313235]["Option1"]
tItem[3313235]["OptionPoint1"]="2-1"
tItem[3313235]["Option2"] = tAugustRebate_Text[3313235]["Option2"]
tItem[3313235]["OptionPoint2"]="2-2"
tItem[3313235]["Option3"] = tAugustRebate_Text[3313235]["Option3"]

tItem[3313235]["Text2-1"] = {211}
tItem[3313235]["Text211"] = tAugustRebate_Text[3313235]["Text211"]
tItem[3313235]["tOption2-1"] = {4,5}
tItem[3313235]["Option4"] = tAugustRebate_Text[3313235]["Option4"]
tItem[3313235]["OptionFunc4"]="AugustRebate_RewardPakage</N>3313235</N>1"
tItem[3313235]["Option5"] = tAugustRebate_Text[3313235]["Option5"]
tItem[3313235]["OptionPoint5"]="1-1" 

tItem[3313235]["Text2-2"] = {221}
tItem[3313235]["Text221"] = tAugustRebate_Text[3313235]["Text221"]
tItem[3313235]["tOption2-2"] = {6,5}
tItem[3313235]["Option6"] = tAugustRebate_Text[3313235]["Option6"]
tItem[3313235]["OptionFunc6"]="AugustRebate_RewardPakage</N>3313235</N>2"

tItem[3313246] = tItem[3313246] or {}
tItem[3313246]["Text1-1"] = {111}
tItem[3313246]["Text111"] =tAugustRebate_Text[3313246]["Text111"]
tItem[3313246]["tOption1-1"] = {1,2,3}
tItem[3313246]["Option1"] = tAugustRebate_Text[3313246]["Option1"]
tItem[3313246]["OptionPoint1"]="2-1"
tItem[3313246]["Option2"] = tAugustRebate_Text[3313246]["Option2"]
tItem[3313246]["OptionPoint2"]="2-2"
tItem[3313246]["Option3"] = tAugustRebate_Text[3313246]["Option3"]

tItem[3313246]["Text2-1"] = {211}
tItem[3313246]["Text211"] = tAugustRebate_Text[3313246]["Text211"]
tItem[3313246]["tOption2-1"] = {4,5}
tItem[3313246]["Option4"] = tAugustRebate_Text[3313246]["Option4"]
tItem[3313246]["OptionFunc4"]="AugustRebate_RewardPakage</N>3313246</N>1"
tItem[3313246]["Option5"] = tAugustRebate_Text[3313246]["Option5"]
tItem[3313246]["OptionPoint5"]="1-1" 

tItem[3313246]["Text2-2"] = {221}
tItem[3313246]["Text221"] = tAugustRebate_Text[3313246]["Text221"]
tItem[3313246]["tOption2-2"] = {6,5}
tItem[3313246]["Option6"] = tAugustRebate_Text[3313246]["Option6"]
tItem[3313246]["OptionFunc6"]="AugustRebate_RewardPakage</N>3313246</N>2"

tItem[3313254] = tItem[3313254] or {}
tItem[3313254]["Text1-1"] = {111}
tItem[3313254]["Text111"] =tAugustRebate_Text[3313254]["Text111"]
tItem[3313254]["tOption1-1"] = {1,2,3}
tItem[3313254]["Option1"] = tAugustRebate_Text[3313254]["Option1"]
tItem[3313254]["OptionPoint1"]="2-1"
tItem[3313254]["Option2"] = tAugustRebate_Text[3313254]["Option2"]
tItem[3313254]["OptionPoint2"]="2-2"
tItem[3313254]["Option3"] = tAugustRebate_Text[3313254]["Option3"]

tItem[3313254]["Text2-1"] = {211}
tItem[3313254]["Text211"] = tAugustRebate_Text[3313254]["Text211"]
tItem[3313254]["tOption2-1"] = {4,5}
tItem[3313254]["Option4"] = tAugustRebate_Text[3313254]["Option4"]
tItem[3313254]["OptionFunc4"]="AugustRebate_RewardPakage</N>3313254</N>1"
tItem[3313254]["Option5"] = tAugustRebate_Text[3313254]["Option5"]
tItem[3313254]["OptionPoint5"]="1-1" 

tItem[3313254]["Text2-2"] = {221}
tItem[3313254]["Text221"] = tAugustRebate_Text[3313254]["Text221"]
tItem[3313254]["tOption2-2"] = {6,5}
tItem[3313254]["Option6"] = tAugustRebate_Text[3313254]["Option6"]
tItem[3313254]["OptionFunc6"]="AugustRebate_RewardPakage</N>3313254</N>2"

tItem[3313255] = tItem[3313255] or {}
tItem[3313255]["Text1-1"] = {111}
tItem[3313255]["Text111"] =tAugustRebate_Text[3313255]["Text111"]
tItem[3313255]["tOption1-1"] = {1,2,3}
tItem[3313255]["Option1"] = tAugustRebate_Text[3313255]["Option1"]
tItem[3313255]["OptionPoint1"]="2-1"
tItem[3313255]["Option2"] = tAugustRebate_Text[3313255]["Option2"]
tItem[3313255]["OptionPoint2"]="2-2"
tItem[3313255]["Option3"] = tAugustRebate_Text[3313255]["Option3"]

tItem[3313255]["Text2-1"] = {211}
tItem[3313255]["Text211"] = tAugustRebate_Text[3313255]["Text211"]
tItem[3313255]["tOption2-1"] = {4,5}
tItem[3313255]["Option4"] = tAugustRebate_Text[3313255]["Option4"]
tItem[3313255]["OptionFunc4"]="AugustRebate_RewardPakage</N>3313255</N>1"
tItem[3313255]["Option5"] = tAugustRebate_Text[3313255]["Option5"]
tItem[3313255]["OptionPoint5"]="1-1" 

tItem[3313255]["Text2-2"] = {221}
tItem[3313255]["Text221"] = tAugustRebate_Text[3313255]["Text221"]
tItem[3313255]["tOption2-2"] = {6,5}
tItem[3313255]["Option6"] = tAugustRebate_Text[3313255]["Option6"]
tItem[3313255]["OptionFunc6"]="AugustRebate_RewardPakage</N>3313255</N>2"

tItem[3313256] = tItem[3313256] or {}
tItem[3313256]["Text1-1"] = {111}
tItem[3313256]["Text111"] =tAugustRebate_Text[3313256]["Text111"]
tItem[3313256]["tOption1-1"] = {1,2,3}
tItem[3313256]["Option1"] = tAugustRebate_Text[3313256]["Option1"]
tItem[3313256]["OptionPoint1"]="2-1"
tItem[3313256]["Option2"] = tAugustRebate_Text[3313256]["Option2"]
tItem[3313256]["OptionPoint2"]="2-2"
tItem[3313256]["Option3"] = tAugustRebate_Text[3313256]["Option3"]

tItem[3313256]["Text2-1"] = {211}
tItem[3313256]["Text211"] = tAugustRebate_Text[3313256]["Text211"]
tItem[3313256]["tOption2-1"] = {4,5}
tItem[3313256]["Option4"] = tAugustRebate_Text[3313256]["Option4"]
tItem[3313256]["OptionFunc4"]="AugustRebate_RewardPakage</N>3313256</N>1"
tItem[3313256]["Option5"] = tAugustRebate_Text[3313256]["Option5"]
tItem[3313256]["OptionPoint5"]="1-1" 

tItem[3313256]["Text2-2"] = {221}
tItem[3313256]["Text221"] = tAugustRebate_Text[3313256]["Text221"]
tItem[3313256]["tOption2-2"] = {6,5}
tItem[3313256]["Option6"] = tAugustRebate_Text[3313256]["Option6"]
tItem[3313256]["OptionFunc6"]="AugustRebate_RewardPakage</N>3313256</N>2"

tItem[3313257] = tItem[3313257] or {}
tItem[3313257]["Text1-1"] = {111}
tItem[3313257]["Text111"] =tAugustRebate_Text[3313257]["Text111"]
tItem[3313257]["tOption1-1"] = {1,2,3}
tItem[3313257]["Option1"] = tAugustRebate_Text[3313257]["Option1"]
tItem[3313257]["OptionPoint1"]="2-1"
tItem[3313257]["Option2"] = tAugustRebate_Text[3313257]["Option2"]
tItem[3313257]["OptionPoint2"]="2-2"
tItem[3313257]["Option3"] = tAugustRebate_Text[3313257]["Option3"]

tItem[3313257]["Text2-1"] = {211}
tItem[3313257]["Text211"] = tAugustRebate_Text[3313257]["Text211"]
tItem[3313257]["tOption2-1"] = {4,5}
tItem[3313257]["Option4"] = tAugustRebate_Text[3313257]["Option4"]
tItem[3313257]["OptionFunc4"]="AugustRebate_RewardPakage</N>3313257</N>1"
tItem[3313257]["Option5"] = tAugustRebate_Text[3313257]["Option5"]
tItem[3313257]["OptionPoint5"]="1-1" 

tItem[3313257]["Text2-2"] = {221}
tItem[3313257]["Text221"] = tAugustRebate_Text[3313257]["Text221"]
tItem[3313257]["tOption2-2"] = {6,5}
tItem[3313257]["Option6"] = tAugustRebate_Text[3313257]["Option6"]
tItem[3313257]["OptionFunc6"]="AugustRebate_RewardPakage</N>3313257</N>2"