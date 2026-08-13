------------------------------------------------------------------------------------
--Name：            180420[英文征服][活动脚本]5月周年庆促销制作
--Creator:      王贤
--Created:     2018/04/20
------------------------------------------------------------------------------------
--任务需求：
-- 请安排英文征服5月周年庆促销制作，具体活动内容见附件。
-- 更新范围：除5月新服外的所有服务器
-- 计划更新时间：5.10
-- 活动时间：5.10-6.20
-- 如有问题，请及时沟通，谢谢！
-- 备注：为了方便活动数据统计，部分 log 需要做成 emoney buy log，具体情况制作时再沟通下。
------------------------------------------------------------------------------------
-- 前缀
-- AnniversaryPromotion_
-- logid： 12001060
----------------------------------表配置部分--------------------------------------------
local tAnniversaryPromotion_Data = {}
-- 活动时间
tAnniversaryPromotion_Data["BeforeTime"] = tActivityTime["AnniversaryPromotion"]["BeforeTime"]
tAnniversaryPromotion_Data["ActivityTime"] = tActivityTime["AnniversaryPromotion"]["ActivityTime"]
tAnniversaryPromotion_Data["DayTime"] = tActivityTime["AnniversaryPromotion"]["DayTime"]
tAnniversaryPromotion_Data["NpcId"] = 22775
-- 52633  data0 - data5 表示 3308563 - 3308568 的限时秒杀数量
-- 52634  data0 - data5 表示 3308569 - 3308574 的限时秒杀数量
-- 52634  time0 - time1 表示  3308575 - 3308576 的限时秒杀数量
tAnniversaryPromotion_Data["GlobalId"] = {}
-- ["GlobalId"][1]表示globalid
tAnniversaryPromotion_Data["GlobalId"][1] = {}
tAnniversaryPromotion_Data["GlobalId"][1][3308563] = 52633
tAnniversaryPromotion_Data["GlobalId"][1][3308564] = 52633
tAnniversaryPromotion_Data["GlobalId"][1][3308565] = 52633
tAnniversaryPromotion_Data["GlobalId"][1][3308566] = 52633
tAnniversaryPromotion_Data["GlobalId"][1][3308567] = 52633
tAnniversaryPromotion_Data["GlobalId"][1][3308568] = 52633
tAnniversaryPromotion_Data["GlobalId"][1][3308569] = 52634
tAnniversaryPromotion_Data["GlobalId"][1][3308570] = 52634
tAnniversaryPromotion_Data["GlobalId"][1][3308571] = 52634
tAnniversaryPromotion_Data["GlobalId"][1][3308572] = 52634
tAnniversaryPromotion_Data["GlobalId"][1][3308573] = 52634
tAnniversaryPromotion_Data["GlobalId"][1][3308574] = 52634
tAnniversaryPromotion_Data["GlobalId"][1][3308575] = 52634
tAnniversaryPromotion_Data["GlobalId"][1][3308576] = 52634
-- ["GlobalId"][2]表示存储的位置
tAnniversaryPromotion_Data["GlobalId"][2] = {}
tAnniversaryPromotion_Data["GlobalId"][2][3308563] = 0
tAnniversaryPromotion_Data["GlobalId"][2][3308564] = 1
tAnniversaryPromotion_Data["GlobalId"][2][3308565] = 2
tAnniversaryPromotion_Data["GlobalId"][2][3308566] = 3
tAnniversaryPromotion_Data["GlobalId"][2][3308567] = 4
tAnniversaryPromotion_Data["GlobalId"][2][3308568] = 5
tAnniversaryPromotion_Data["GlobalId"][2][3308569] = 0
tAnniversaryPromotion_Data["GlobalId"][2][3308570] = 1
tAnniversaryPromotion_Data["GlobalId"][2][3308571] = 2
tAnniversaryPromotion_Data["GlobalId"][2][3308572] = 3
tAnniversaryPromotion_Data["GlobalId"][2][3308573] = 4
tAnniversaryPromotion_Data["GlobalId"][2][3308574] = 5
-- 这两个没位置存了，比较特殊，存在time0跟time1
tAnniversaryPromotion_Data["GlobalId"][2][3308575] = 0
tAnniversaryPromotion_Data["GlobalId"][2][3308576] = 1
-- ["GlobalId"][3]表示物品单服出售的数量
tAnniversaryPromotion_Data["GlobalId"][3] = {}
tAnniversaryPromotion_Data["GlobalId"][3][3308563] = 5
tAnniversaryPromotion_Data["GlobalId"][3][3308564] = 5
tAnniversaryPromotion_Data["GlobalId"][3][3308565] = 2
tAnniversaryPromotion_Data["GlobalId"][3][3308566] = 2
tAnniversaryPromotion_Data["GlobalId"][3][3308567] = 2
tAnniversaryPromotion_Data["GlobalId"][3][3308568] = 2
tAnniversaryPromotion_Data["GlobalId"][3][3308569] = 2
tAnniversaryPromotion_Data["GlobalId"][3][3308570] = 2
tAnniversaryPromotion_Data["GlobalId"][3][3308571] = 2
tAnniversaryPromotion_Data["GlobalId"][3][3308572] = 2
tAnniversaryPromotion_Data["GlobalId"][3][3308573] = 2
tAnniversaryPromotion_Data["GlobalId"][3][3308574] = 2
tAnniversaryPromotion_Data["GlobalId"][3][3308575] = 5
tAnniversaryPromotion_Data["GlobalId"][3][3308576] = 5
-- 代金券ID
tAnniversaryPromotion_Data["CashCouponId"] = {}
tAnniversaryPromotion_Data["CashCouponId"][1] = 3308516
tAnniversaryPromotion_Data["CashCouponId"][2] = 3308519
tAnniversaryPromotion_Data["CashCouponId"][3] = 3308517
tAnniversaryPromotion_Data["CashCouponId"][4] = 3308518
-- 代金券所需消费金额
tAnniversaryPromotion_Data["NeedConsume"] = {}
tAnniversaryPromotion_Data["NeedConsume"][1] = 1000
tAnniversaryPromotion_Data["NeedConsume"][2] = 2000
tAnniversaryPromotion_Data["NeedConsume"][3] = 5000
tAnniversaryPromotion_Data["NeedConsume"][4] = 10000
-- 代金券减免的金额
tAnniversaryPromotion_Data["Discount"] = {}
tAnniversaryPromotion_Data["Discount"][1] = 100
tAnniversaryPromotion_Data["Discount"][2] = 200
tAnniversaryPromotion_Data["Discount"][3] = 500
tAnniversaryPromotion_Data["Discount"][4] = 1000
-- EmoneyLog
tAnniversaryPromotion_Data["EmoneyLog"] = {}
-- 外套促销
tAnniversaryPromotion_Data["EmoneyLog"][3308520] = "350	21344	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308521] = "350	21345	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308522] = "350	21346	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308523] = "350	21347	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308524] = "350	21348	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308525] = "350	21349	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308526] = "350	21350	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308527] = "350	21351	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308528] = "350	21352	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308529] = "350	21353	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308530] = "350	21354	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308531] = "350	21355	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308532] = "350	21356	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308533] = "350	21357	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308534] = "350	21358	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308535] = "350	21359	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308536] = "350	21360	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308537] = "350	21361	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308538] = "350	21362	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308539] = "350	21363	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308540] = "350	21364	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308541] = "350	21365	%d	%d	1	"
-- 道具促销
tAnniversaryPromotion_Data["EmoneyLog"][3308542] = "350	21366	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308543] = "350	21367	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308544] = "350	21368	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308545] = "350	21369	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308546] = "350	21370	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308547] = "350	21371	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308548] = "350	21372	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308549] = "350	21373	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308550] = "350	21374	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308551] = "350	21375	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308552] = "350	21376	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308553] = "350	21377	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308554] = "350	21378	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308555] = "350	21379	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308556] = "350	21380	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308557] = "350	21381	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308558] = "350	21382	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308559] = "350	21383	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308560] = "350	21384	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308561] = "350	21385	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308562] = "350	21386	%d	%d	1	"
-- 周年庆限时秒杀
tAnniversaryPromotion_Data["EmoneyLog"][3308563] = "350	21391	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308564] = "350	21392	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308565] = "350	21393	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308566] = "350	21394	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308567] = "350	21395	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308568] = "350	21396	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308569] = "350	21397	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308570] = "350	21398	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308571] = "350	21399	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308572] = "350	21400	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308573] = "350	21401	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308574] = "350	21402	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308575] = "350	21403	%d	%d	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308576] = "350	21404	%d	%d	1	"
-- 天石代金券
tAnniversaryPromotion_Data["EmoneyLog"][3308516] = "350	21387	0	0	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308517] = "350	21389	0	0	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308518] = "350	21390	0	0	1	"
tAnniversaryPromotion_Data["EmoneyLog"][3308519] = "350	21388	0	0	1	"
-- 价格
tAnniversaryPromotion_Data["EmoneyPrice"] = {}
-- 外套促销
tAnniversaryPromotion_Data["EmoneyPrice"][3308520] = 2999
tAnniversaryPromotion_Data["EmoneyPrice"][3308521] = 1599
tAnniversaryPromotion_Data["EmoneyPrice"][3308522] = 7199
tAnniversaryPromotion_Data["EmoneyPrice"][3308523] = 8888
tAnniversaryPromotion_Data["EmoneyPrice"][3308524] = 17999
tAnniversaryPromotion_Data["EmoneyPrice"][3308525] = 14399
tAnniversaryPromotion_Data["EmoneyPrice"][3308526] = 10800
tAnniversaryPromotion_Data["EmoneyPrice"][3308527] = 17999
tAnniversaryPromotion_Data["EmoneyPrice"][3308528] = 7999
tAnniversaryPromotion_Data["EmoneyPrice"][3308529] = 2499
tAnniversaryPromotion_Data["EmoneyPrice"][3308530] = 23399
tAnniversaryPromotion_Data["EmoneyPrice"][3308531] = 999
tAnniversaryPromotion_Data["EmoneyPrice"][3308532] = 9499
tAnniversaryPromotion_Data["EmoneyPrice"][3308533] = 28495
tAnniversaryPromotion_Data["EmoneyPrice"][3308534] = 25399
tAnniversaryPromotion_Data["EmoneyPrice"][3308535] = 5400
tAnniversaryPromotion_Data["EmoneyPrice"][3308536] = 5400
tAnniversaryPromotion_Data["EmoneyPrice"][3308537] = 35999
tAnniversaryPromotion_Data["EmoneyPrice"][3308538] = 34999
tAnniversaryPromotion_Data["EmoneyPrice"][3308539] = 34999
tAnniversaryPromotion_Data["EmoneyPrice"][3308540] = 34999
tAnniversaryPromotion_Data["EmoneyPrice"][3308541] = 69999
-- 道具促销
tAnniversaryPromotion_Data["EmoneyPrice"][3308542] = 50
tAnniversaryPromotion_Data["EmoneyPrice"][3308543] = 1299
tAnniversaryPromotion_Data["EmoneyPrice"][3308544] = 1299
tAnniversaryPromotion_Data["EmoneyPrice"][3308545] = 11599
tAnniversaryPromotion_Data["EmoneyPrice"][3308546] = 30
tAnniversaryPromotion_Data["EmoneyPrice"][3308547] = 300
tAnniversaryPromotion_Data["EmoneyPrice"][3308548] = 355
tAnniversaryPromotion_Data["EmoneyPrice"][3308549] = 3499
tAnniversaryPromotion_Data["EmoneyPrice"][3308550] = 999
tAnniversaryPromotion_Data["EmoneyPrice"][3308551] = 1399
tAnniversaryPromotion_Data["EmoneyPrice"][3308552] = 699
tAnniversaryPromotion_Data["EmoneyPrice"][3308553] = 50
tAnniversaryPromotion_Data["EmoneyPrice"][3308554] = 50
tAnniversaryPromotion_Data["EmoneyPrice"][3308555] = 2300
tAnniversaryPromotion_Data["EmoneyPrice"][3308556] = 459
tAnniversaryPromotion_Data["EmoneyPrice"][3308557] = 89
tAnniversaryPromotion_Data["EmoneyPrice"][3308558] = 89
tAnniversaryPromotion_Data["EmoneyPrice"][3308559] = 89
tAnniversaryPromotion_Data["EmoneyPrice"][3308560] = 129
tAnniversaryPromotion_Data["EmoneyPrice"][3308561] = 129
tAnniversaryPromotion_Data["EmoneyPrice"][3308562] = 8999
-- 周年庆限时秒杀
tAnniversaryPromotion_Data["EmoneyPrice"][3308563] = 50
tAnniversaryPromotion_Data["EmoneyPrice"][3308564] = 99
tAnniversaryPromotion_Data["EmoneyPrice"][3308565] = 99
tAnniversaryPromotion_Data["EmoneyPrice"][3308566] = 2
tAnniversaryPromotion_Data["EmoneyPrice"][3308567] = 399
tAnniversaryPromotion_Data["EmoneyPrice"][3308568] = 19
tAnniversaryPromotion_Data["EmoneyPrice"][3308569] = 399
tAnniversaryPromotion_Data["EmoneyPrice"][3308570] = 259
tAnniversaryPromotion_Data["EmoneyPrice"][3308571] = 259
tAnniversaryPromotion_Data["EmoneyPrice"][3308572] = 499
tAnniversaryPromotion_Data["EmoneyPrice"][3308573] = 300
tAnniversaryPromotion_Data["EmoneyPrice"][3308574] = 250
tAnniversaryPromotion_Data["EmoneyPrice"][3308575] = 799
tAnniversaryPromotion_Data["EmoneyPrice"][3308576] = 189


local tAnniversaryPromotion_Reward = {}
-- 外套促销
-- SpiritLion特惠包
tAnniversaryPromotion_Reward[3308520] = {}
tAnniversaryPromotion_Reward[3308520]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308520]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308520]["DeleteItem"][1]["Id"] = 3308520
tAnniversaryPromotion_Reward[3308520]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308520]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308520]["RewardItem"][1]["Id"] = 200481
tAnniversaryPromotion_Reward[3308520]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308520]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308520]["RewardItem"][2]["Id"] = 3308519
tAnniversaryPromotion_Reward[3308520]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308520]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308520]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308520]["LogId"] = 12001060
-- 奇妙大风车特惠包
tAnniversaryPromotion_Reward[3308521] = {}
tAnniversaryPromotion_Reward[3308521]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308521]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308521]["DeleteItem"][1]["Id"] = 3308521
tAnniversaryPromotion_Reward[3308521]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308521]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308521]["RewardItem"][1]["Id"] = 360172
tAnniversaryPromotion_Reward[3308521]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308521]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308521]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308521]["LogId"] = 12001060
-- 马上有对象特惠包
tAnniversaryPromotion_Reward[3308522] = {}
tAnniversaryPromotion_Reward[3308522]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308522]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308522]["DeleteItem"][1]["Id"] = 3308522
tAnniversaryPromotion_Reward[3308522]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308522]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308522]["RewardItem"][1]["Id"] = 200495
tAnniversaryPromotion_Reward[3308522]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308522]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308522]["RewardItem"][2]["Id"] = 3308517
tAnniversaryPromotion_Reward[3308522]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308522]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308522]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308522]["LogId"] = 12001060
-- 九尾天狐特惠包
tAnniversaryPromotion_Reward[3308523] = {}
tAnniversaryPromotion_Reward[3308523]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308523]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308523]["DeleteItem"][1]["Id"] = 3308523
tAnniversaryPromotion_Reward[3308523]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308523]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308523]["RewardItem"][1]["Id"] = 200539
tAnniversaryPromotion_Reward[3308523]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308523]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308523]["RewardItem"][2]["Id"] = 3308517
tAnniversaryPromotion_Reward[3308523]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308523]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308523]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308523]["LogId"] = 12001060
-- 福来哥特惠包
tAnniversaryPromotion_Reward[3308524] = {}
tAnniversaryPromotion_Reward[3308524]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308524]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308524]["DeleteItem"][1]["Id"] = 3308524
tAnniversaryPromotion_Reward[3308524]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308524]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308524]["RewardItem"][1]["Id"] = 200500
tAnniversaryPromotion_Reward[3308524]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308524]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308524]["RewardItem"][2]["Id"] = 3308518
tAnniversaryPromotion_Reward[3308524]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308524]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308524]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308524]["LogId"] = 12001060
-- FieryDragon(Hades)特惠包
tAnniversaryPromotion_Reward[3308525] = {}
tAnniversaryPromotion_Reward[3308525]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308525]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308525]["DeleteItem"][1]["Id"] = 3308525
tAnniversaryPromotion_Reward[3308525]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308525]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308525]["RewardItem"][1]["Id"] = 200531
tAnniversaryPromotion_Reward[3308525]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308525]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308525]["RewardItem"][2]["Id"] = 3308518
tAnniversaryPromotion_Reward[3308525]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308525]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308525]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308525]["LogId"] = 12001060
-- KingOfScorpions(Saint)特惠包
tAnniversaryPromotion_Reward[3308526] = {}
tAnniversaryPromotion_Reward[3308526]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308526]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308526]["DeleteItem"][1]["Id"] = 3308526
tAnniversaryPromotion_Reward[3308526]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308526]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308526]["RewardItem"][1]["Id"] = 200517
tAnniversaryPromotion_Reward[3308526]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308526]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308526]["RewardItem"][2]["Id"] = 3308518
tAnniversaryPromotion_Reward[3308526]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308526]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308526]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308526]["LogId"] = 12001060
-- GeneralCat(Charm)特惠包
tAnniversaryPromotion_Reward[3308527] = {}
tAnniversaryPromotion_Reward[3308527]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308527]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308527]["DeleteItem"][1]["Id"] = 3308527
tAnniversaryPromotion_Reward[3308527]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308527]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308527]["RewardItem"][1]["Id"] = 200543
tAnniversaryPromotion_Reward[3308527]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308527]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308527]["RewardItem"][2]["Id"] = 3308518
tAnniversaryPromotion_Reward[3308527]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308527]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308527]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308527]["LogId"] = 12001060
-- 蟠蛇战辕特惠包
tAnniversaryPromotion_Reward[3308528] = {}
tAnniversaryPromotion_Reward[3308528]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308528]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308528]["DeleteItem"][1]["Id"] = 3308528
tAnniversaryPromotion_Reward[3308528]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308528]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308528]["RewardItem"][1]["Id"] = 200471
tAnniversaryPromotion_Reward[3308528]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308528]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308528]["RewardItem"][2]["Id"] = 3308517
tAnniversaryPromotion_Reward[3308528]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308528]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308528]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308528]["LogId"] = 12001060
-- 傲世龙神特惠包
tAnniversaryPromotion_Reward[3308529] = {}
tAnniversaryPromotion_Reward[3308529]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308529]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308529]["DeleteItem"][1]["Id"] = 3308529
tAnniversaryPromotion_Reward[3308529]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308529]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308529]["RewardItem"][1]["Id"] = 200421
tAnniversaryPromotion_Reward[3308529]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308529]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308529]["RewardItem"][2]["Id"] = 3308519
tAnniversaryPromotion_Reward[3308529]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308529]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308529]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308529]["LogId"] = 12001060
-- 至善神羚特惠包
tAnniversaryPromotion_Reward[3308530] = {}
tAnniversaryPromotion_Reward[3308530]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308530]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308530]["DeleteItem"][1]["Id"] = 3308530
tAnniversaryPromotion_Reward[3308530]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308530]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308530]["RewardItem"][1]["Id"] = 200524
tAnniversaryPromotion_Reward[3308530]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308530]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308530]["RewardItem"][2]["Id"] = 3308518
tAnniversaryPromotion_Reward[3308530]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308530]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308530]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308530]["LogId"] = 12001060
-- 情人之泪特惠包
tAnniversaryPromotion_Reward[3308531] = {}
tAnniversaryPromotion_Reward[3308531]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308531]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308531]["DeleteItem"][1]["Id"] = 3308531
tAnniversaryPromotion_Reward[3308531]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308531]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308531]["RewardItem"][1]["Id"] = 192565
tAnniversaryPromotion_Reward[3308531]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308531]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308531]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308531]["LogId"] = 12001060
-- FrozenFantasy(Glaze)特惠包
tAnniversaryPromotion_Reward[3308532] = {}
tAnniversaryPromotion_Reward[3308532]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308532]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308532]["DeleteItem"][1]["Id"] = 3308532
tAnniversaryPromotion_Reward[3308532]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308532]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308532]["RewardItem"][1]["Id"] = 193445
tAnniversaryPromotion_Reward[3308532]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308532]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308532]["RewardItem"][2]["Id"] = 3308517
tAnniversaryPromotion_Reward[3308532]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308532]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308532]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308532]["LogId"] = 12001060
-- FrozenFantasy(Glory)特惠包
tAnniversaryPromotion_Reward[3308533] = {}
tAnniversaryPromotion_Reward[3308533]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308533]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308533]["DeleteItem"][1]["Id"] = 3308533
tAnniversaryPromotion_Reward[3308533]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308533]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308533]["RewardItem"][1]["Id"] = 193525
tAnniversaryPromotion_Reward[3308533]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308533]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308533]["RewardItem"][2]["Id"] = 3308518
tAnniversaryPromotion_Reward[3308533]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308533]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308533]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308533]["LogId"] = 12001060
-- LavaCatRobe(Star)特惠包
tAnniversaryPromotion_Reward[3308534] = {}
tAnniversaryPromotion_Reward[3308534]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308534]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308534]["DeleteItem"][1]["Id"] = 3308534
tAnniversaryPromotion_Reward[3308534]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308534]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308534]["RewardItem"][1]["Id"] = 193565
tAnniversaryPromotion_Reward[3308534]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308534]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308534]["RewardItem"][2]["Id"] = 3308518
tAnniversaryPromotion_Reward[3308534]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308534]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308534]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308534]["LogId"] = 12001060
-- 辉耀之刺【荣耀版】特惠包
tAnniversaryPromotion_Reward[3308535] = {}
tAnniversaryPromotion_Reward[3308535]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308535]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308535]["DeleteItem"][1]["Id"] = 3308535
tAnniversaryPromotion_Reward[3308535]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308535]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308535]["RewardItem"][1]["Id"] = 188915
tAnniversaryPromotion_Reward[3308535]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308535]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308535]["RewardItem"][2]["Id"] = 3308517
tAnniversaryPromotion_Reward[3308535]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308535]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308535]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308535]["LogId"] = 12001060
-- 暗黑魔龙特惠包
tAnniversaryPromotion_Reward[3308536] = {}
tAnniversaryPromotion_Reward[3308536]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308536]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308536]["DeleteItem"][1]["Id"] = 3308536
tAnniversaryPromotion_Reward[3308536]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308536]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308536]["RewardItem"][1]["Id"] = 189065
tAnniversaryPromotion_Reward[3308536]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308536]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308536]["RewardItem"][2]["Id"] = 3308517
tAnniversaryPromotion_Reward[3308536]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308536]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308536]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308536]["LogId"] = 12001060
-- MysteriousFoxSuitPack特惠包
tAnniversaryPromotion_Reward[3308537] = {}
tAnniversaryPromotion_Reward[3308537]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308537]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308537]["DeleteItem"][1]["Id"] = 3308537
tAnniversaryPromotion_Reward[3308537]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308537]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308537]["RewardItem"][1]["Id"] = 3302575
tAnniversaryPromotion_Reward[3308537]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308537]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308537]["RewardItem"][2]["Id"] = 3308518
tAnniversaryPromotion_Reward[3308537]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308537]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308537]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308537]["LogId"] = 12001060
-- FierceCloud特惠包
tAnniversaryPromotion_Reward[3308538] = {}
tAnniversaryPromotion_Reward[3308538]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308538]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308538]["DeleteItem"][1]["Id"] = 3308538
tAnniversaryPromotion_Reward[3308538]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308538]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308538]["RewardItem"][1]["Id"] = 200613
tAnniversaryPromotion_Reward[3308538]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308538]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308538]["RewardItem"][2]["Id"] = 3308518
tAnniversaryPromotion_Reward[3308538]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308538]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308538]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308538]["LogId"] = 12001060
-- PacificCloud特惠包
tAnniversaryPromotion_Reward[3308539] = {}
tAnniversaryPromotion_Reward[3308539]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308539]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308539]["DeleteItem"][1]["Id"] = 3308539
tAnniversaryPromotion_Reward[3308539]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308539]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308539]["RewardItem"][1]["Id"] = 200614
tAnniversaryPromotion_Reward[3308539]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308539]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308539]["RewardItem"][2]["Id"] = 3308518
tAnniversaryPromotion_Reward[3308539]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308539]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308539]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308539]["LogId"] = 12001060
-- BlissfulForeverHeart特惠包
tAnniversaryPromotion_Reward[3308540] = {}
tAnniversaryPromotion_Reward[3308540]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308540]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308540]["DeleteItem"][1]["Id"] = 3308540
tAnniversaryPromotion_Reward[3308540]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308540]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308540]["RewardItem"][1]["Id"] = 195045
tAnniversaryPromotion_Reward[3308540]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotion_Reward[3308540]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308540]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308540]["LogId"] = 12001060
-- FairyWings特惠包
tAnniversaryPromotion_Reward[3308541] = {}
tAnniversaryPromotion_Reward[3308541]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308541]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308541]["DeleteItem"][1]["Id"] = 3308541
tAnniversaryPromotion_Reward[3308541]["RewardWing"] = {}
tAnniversaryPromotion_Reward[3308541]["RewardWing"]["TitleType"] = 6005
tAnniversaryPromotion_Reward[3308541]["RewardWing"]["TitleId"] = 6005
tAnniversaryPromotion_Reward[3308541]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308541]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308541]["LogId"] = 12001060
-- 礼品促销
-- +3赤炼石特惠包
tAnniversaryPromotion_Reward[3308542] = {}
tAnniversaryPromotion_Reward[3308542]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308542]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308542]["DeleteItem"][1]["Id"] = 3308542
tAnniversaryPromotion_Reward[3308542]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308542]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308542]["RewardItem"][1]["Id"] = 730003
tAnniversaryPromotion_Reward[3308542]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308542]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308542]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308542]["LogId"] = 12001060
-- +6赤炼石特惠包
tAnniversaryPromotion_Reward[3308543] = {}
tAnniversaryPromotion_Reward[3308543]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308543]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308543]["DeleteItem"][1]["Id"] = 3308543
tAnniversaryPromotion_Reward[3308543]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308543]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308543]["RewardItem"][1]["Id"] = 730006
tAnniversaryPromotion_Reward[3308543]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308543]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308543]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308543]["LogId"] = 12001060
-- +6马匹特惠包
tAnniversaryPromotion_Reward[3308544] = {}
tAnniversaryPromotion_Reward[3308544]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308544]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308544]["DeleteItem"][1]["Id"] = 3308544
tAnniversaryPromotion_Reward[3308544]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308544]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308544]["RewardItem"][1]["Id"] = 728527
tAnniversaryPromotion_Reward[3308544]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308544]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308544]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308544]["LogId"] = 12001060
-- +8赤炼石特惠包
tAnniversaryPromotion_Reward[3308545] = {}
tAnniversaryPromotion_Reward[3308545]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308545]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308545]["DeleteItem"][1]["Id"] = 3308545
tAnniversaryPromotion_Reward[3308545]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308545]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308545]["RewardItem"][1]["Id"] = 730008
tAnniversaryPromotion_Reward[3308545]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308545]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308545]["RewardItem"][2]["Id"] = 3308518
tAnniversaryPromotion_Reward[3308545]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308545]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308545]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308545]["LogId"] = 12001060
-- 明亮星陨石特惠包
tAnniversaryPromotion_Reward[3308546] = {}
tAnniversaryPromotion_Reward[3308546]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308546]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308546]["DeleteItem"][1]["Id"] = 3308546
tAnniversaryPromotion_Reward[3308546]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308546]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308546]["RewardItem"][1]["Id"] = 3009001
tAnniversaryPromotion_Reward[3308546]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tAnniversaryPromotion_Reward[3308546]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308546]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308546]["LogId"] = 12001060
-- 晶莹星陨石特惠包
tAnniversaryPromotion_Reward[3308547] = {}
tAnniversaryPromotion_Reward[3308547]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308547]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308547]["DeleteItem"][1]["Id"] = 3308547
tAnniversaryPromotion_Reward[3308547]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308547]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308547]["RewardItem"][1]["Id"] = 3009002
tAnniversaryPromotion_Reward[3308547]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tAnniversaryPromotion_Reward[3308547]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308547]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308547]["LogId"] = 12001060
-- 固化石特惠包
tAnniversaryPromotion_Reward[3308548] = {}
tAnniversaryPromotion_Reward[3308548]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308548]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308548]["DeleteItem"][1]["Id"] = 3308548
tAnniversaryPromotion_Reward[3308548]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308548]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308548]["RewardItem"][1]["Id"] = 723694
tAnniversaryPromotion_Reward[3308548]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308548]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308548]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308548]["LogId"] = 12001060
-- 超大固化石特惠包
tAnniversaryPromotion_Reward[3308549] = {}
tAnniversaryPromotion_Reward[3308549]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308549]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308549]["DeleteItem"][1]["Id"] = 3308549
tAnniversaryPromotion_Reward[3308549]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308549]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308549]["RewardItem"][1]["Id"] = 723695
tAnniversaryPromotion_Reward[3308549]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308549]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308549]["RewardItem"][2]["Id"] = 3308519
tAnniversaryPromotion_Reward[3308549]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308549]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308549]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308549]["LogId"] = 12001060
-- 优质天怒特惠包
tAnniversaryPromotion_Reward[3308550] = {}
tAnniversaryPromotion_Reward[3308550]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308550]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308550]["DeleteItem"][1]["Id"] = 3308550
tAnniversaryPromotion_Reward[3308550]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308550]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308550]["RewardItem"][1]["Id"] = 3008436
tAnniversaryPromotion_Reward[3308550]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308550]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308550]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308550]["LogId"] = 12001060
-- 金钢坚钻特惠包
tAnniversaryPromotion_Reward[3308551] = {}
tAnniversaryPromotion_Reward[3308551]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308551]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308551]["DeleteItem"][1]["Id"] = 3308551
tAnniversaryPromotion_Reward[3308551]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308551]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308551]["RewardItem"][1]["Id"] = 1200005
tAnniversaryPromotion_Reward[3308551]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308551]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308551]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308551]["LogId"] = 12001060
-- 龙珠卷特惠包
tAnniversaryPromotion_Reward[3308552] = {}
tAnniversaryPromotion_Reward[3308552]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308552]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308552]["DeleteItem"][1]["Id"] = 3308552
tAnniversaryPromotion_Reward[3308552]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308552]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308552]["RewardItem"][1]["Id"] = 720028
tAnniversaryPromotion_Reward[3308552]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308552]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308552]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308552]["LogId"] = 12001060
-- P7武器神魂特惠包
tAnniversaryPromotion_Reward[3308553] = {}
tAnniversaryPromotion_Reward[3308553]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308553]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308553]["DeleteItem"][1]["Id"] = 3308553
tAnniversaryPromotion_Reward[3308553]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308553]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308553]["RewardItem"][1]["Id"] = 3006745
tAnniversaryPromotion_Reward[3308553]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308553]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308553]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308553]["LogId"] = 12001060
-- P7防具神魂特惠包
tAnniversaryPromotion_Reward[3308554] = {}
tAnniversaryPromotion_Reward[3308554]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308554]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308554]["DeleteItem"][1]["Id"] = 3308554
tAnniversaryPromotion_Reward[3308554]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308554]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308554]["RewardItem"][1]["Id"] = 3006746
tAnniversaryPromotion_Reward[3308554]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308554]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308554]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308554]["LogId"] = 12001060
-- 小抽奖券特惠包
tAnniversaryPromotion_Reward[3308555] = {}
tAnniversaryPromotion_Reward[3308555]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308555]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308555]["DeleteItem"][1]["Id"] = 3308555
tAnniversaryPromotion_Reward[3308555]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308555]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308555]["RewardItem"][1]["Id"] = 711504
tAnniversaryPromotion_Reward[3308555]["RewardItem"][1]["Attr"] = "0 300"
tAnniversaryPromotion_Reward[3308555]["RewardItem"][2] = {}
tAnniversaryPromotion_Reward[3308555]["RewardItem"][2]["Id"] = 3308519
tAnniversaryPromotion_Reward[3308555]["RewardItem"][2]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308555]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308555]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308555]["LogId"] = 12001060
-- 气力特惠包
tAnniversaryPromotion_Reward[3308556] = {}
tAnniversaryPromotion_Reward[3308556]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308556]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308556]["DeleteItem"][1]["Id"] = 3308556
tAnniversaryPromotion_Reward[3308556]["RewardStrengthValue"] = {}
tAnniversaryPromotion_Reward[3308556]["RewardStrengthValue"]["Value"] = 5000
tAnniversaryPromotion_Reward[3308556]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308556]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308556]["LogId"] = 12001060
-- 修为特惠包
tAnniversaryPromotion_Reward[3308557] = {}
tAnniversaryPromotion_Reward[3308557]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308557]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308557]["DeleteItem"][1]["Id"] = 3308557
tAnniversaryPromotion_Reward[3308557]["RewardRepairValue"] = {}
tAnniversaryPromotion_Reward[3308557]["RewardRepairValue"]["Value"] = 1000
tAnniversaryPromotion_Reward[3308557]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308557]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308557]["LogId"] = 12001060
-- 修行特惠包
tAnniversaryPromotion_Reward[3308558] = {}
tAnniversaryPromotion_Reward[3308558]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308558]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308558]["DeleteItem"][1]["Id"] = 3308558
tAnniversaryPromotion_Reward[3308558]["RewardCultivation"] = {}
tAnniversaryPromotion_Reward[3308558]["RewardCultivation"]["Value"] = 3000
tAnniversaryPromotion_Reward[3308558]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308558]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308558]["LogId"] = 12001060
-- 究极通神特惠包
tAnniversaryPromotion_Reward[3308559] = {}
tAnniversaryPromotion_Reward[3308559]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308559]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308559]["DeleteItem"][1]["Id"] = 3308559
tAnniversaryPromotion_Reward[3308559]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308559]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308559]["RewardItem"][1]["Id"] = 3003126
tAnniversaryPromotion_Reward[3308559]["RewardItem"][1]["Attr"] = "0 10 3"
tAnniversaryPromotion_Reward[3308559]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308559]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308559]["LogId"] = 12001060
-- 强炼丹特惠包
tAnniversaryPromotion_Reward[3308560] = {}
tAnniversaryPromotion_Reward[3308560]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308560]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308560]["DeleteItem"][1]["Id"] = 3308560
tAnniversaryPromotion_Reward[3308560]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308560]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308560]["RewardItem"][1]["Id"] = 3003124
tAnniversaryPromotion_Reward[3308560]["RewardItem"][1]["Attr"] = "0 50 3"
tAnniversaryPromotion_Reward[3308560]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308560]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308560]["LogId"] = 12001060
-- 通神丹特惠包
tAnniversaryPromotion_Reward[3308561] = {}
tAnniversaryPromotion_Reward[3308561]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308561]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308561]["DeleteItem"][1]["Id"] = 3308561
tAnniversaryPromotion_Reward[3308561]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308561]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308561]["RewardItem"][1]["Id"] = 3003125
tAnniversaryPromotion_Reward[3308561]["RewardItem"][1]["Attr"] = "0 50 3"
tAnniversaryPromotion_Reward[3308561]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308561]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308561]["LogId"] = 12001060
-- 至尊气力特惠包
tAnniversaryPromotion_Reward[3308562] = {}
tAnniversaryPromotion_Reward[3308562]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308562]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308562]["DeleteItem"][1]["Id"] = 3308562
tAnniversaryPromotion_Reward[3308562]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308562]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308562]["RewardItem"][1]["Id"] = 3308517
tAnniversaryPromotion_Reward[3308562]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308562]["RewardStrengthValue"] = {}
tAnniversaryPromotion_Reward[3308562]["RewardStrengthValue"]["Value"] = 100000
tAnniversaryPromotion_Reward[3308562]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308562]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308562]["LogId"] = 12001060
-- 周年庆限时秒杀
-- 八宝护气秒杀包
tAnniversaryPromotion_Reward[3308563] = {}
tAnniversaryPromotion_Reward[3308563]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308563]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308563]["DeleteItem"][1]["Id"] = 3308563
tAnniversaryPromotion_Reward[3308563]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308563]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308563]["RewardItem"][1]["Id"] = 3005360
tAnniversaryPromotion_Reward[3308563]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308563]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308563]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308563]["LogId"] = 12001060
-- 秘制修炼秒杀包
tAnniversaryPromotion_Reward[3308564] = {}
tAnniversaryPromotion_Reward[3308564]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308564]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308564]["DeleteItem"][1]["Id"] = 3308564
tAnniversaryPromotion_Reward[3308564]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308564]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308564]["RewardItem"][1]["Id"] = 3002926
tAnniversaryPromotion_Reward[3308564]["RewardItem"][1]["Attr"] = "0 10"
tAnniversaryPromotion_Reward[3308564]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308564]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308564]["LogId"] = 12001060
-- 天机果秒杀包
tAnniversaryPromotion_Reward[3308565] = {}
tAnniversaryPromotion_Reward[3308565]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308565]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308565]["DeleteItem"][1]["Id"] = 3308565
tAnniversaryPromotion_Reward[3308565]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308565]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308565]["RewardItem"][1]["Id"] = 3001044
tAnniversaryPromotion_Reward[3308565]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_Reward[3308565]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308565]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308565]["LogId"] = 12001060
-- 乾坤九转秒杀包
tAnniversaryPromotion_Reward[3308566] = {}
tAnniversaryPromotion_Reward[3308566]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308566]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308566]["DeleteItem"][1]["Id"] = 3308566
tAnniversaryPromotion_Reward[3308566]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308566]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308566]["RewardItem"][1]["Id"] = 711083
tAnniversaryPromotion_Reward[3308566]["RewardItem"][1]["Attr"] = "0 1 3"
tAnniversaryPromotion_Reward[3308566]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308566]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308566]["LogId"] = 12001060
-- 免试金牌秒杀包
tAnniversaryPromotion_Reward[3308567] = {}
tAnniversaryPromotion_Reward[3308567]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308567]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308567]["DeleteItem"][1]["Id"] = 3308567
tAnniversaryPromotion_Reward[3308567]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308567]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308567]["RewardItem"][1]["Id"] = 723701
tAnniversaryPromotion_Reward[3308567]["RewardItem"][1]["Attr"] = "0 1 3"
tAnniversaryPromotion_Reward[3308567]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308567]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308567]["LogId"] = 12001060
-- 龙珠秒杀包
tAnniversaryPromotion_Reward[3308568] = {}
tAnniversaryPromotion_Reward[3308568]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308568]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308568]["DeleteItem"][1]["Id"] = 3308568
tAnniversaryPromotion_Reward[3308568]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308568]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308568]["RewardItem"][1]["Id"] = 1088000
tAnniversaryPromotion_Reward[3308568]["RewardItem"][1]["Attr"] = "0 1 3"
tAnniversaryPromotion_Reward[3308568]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308568]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308568]["LogId"] = 12001060
-- 晶莹星陨石秒杀包
tAnniversaryPromotion_Reward[3308569] = {}
tAnniversaryPromotion_Reward[3308569]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308569]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308569]["DeleteItem"][1]["Id"] = 3308569
tAnniversaryPromotion_Reward[3308569]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308569]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308569]["RewardItem"][1]["Id"] = 3009002
tAnniversaryPromotion_Reward[3308569]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tAnniversaryPromotion_Reward[3308569]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308569]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308569]["LogId"] = 12001060
-- 优质玄元秒杀包
tAnniversaryPromotion_Reward[3308570] = {}
tAnniversaryPromotion_Reward[3308570]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308570]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308570]["DeleteItem"][1]["Id"] = 3308570
tAnniversaryPromotion_Reward[3308570]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308570]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308570]["RewardItem"][1]["Id"] = 700073
tAnniversaryPromotion_Reward[3308570]["RewardItem"][1]["Attr"] = "0 1 3"
tAnniversaryPromotion_Reward[3308570]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308570]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308570]["LogId"] = 12001060
-- 净水玉瓶秒杀包
tAnniversaryPromotion_Reward[3308571] = {}
tAnniversaryPromotion_Reward[3308571]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308571]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308571]["DeleteItem"][1]["Id"] = 3308571
tAnniversaryPromotion_Reward[3308571]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308571]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308571]["RewardItem"][1]["Id"] = 2100045
tAnniversaryPromotion_Reward[3308571]["RewardItem"][1]["Attr"] = "0 1 3"
tAnniversaryPromotion_Reward[3308571]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308571]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308571]["LogId"] = 12001060
-- 灵宝葫芦秒杀包
tAnniversaryPromotion_Reward[3308572] = {}
tAnniversaryPromotion_Reward[3308572]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308572]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308572]["DeleteItem"][1]["Id"] = 3308572
tAnniversaryPromotion_Reward[3308572]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308572]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308572]["RewardItem"][1]["Id"] = 2100025
tAnniversaryPromotion_Reward[3308572]["RewardItem"][1]["Attr"] = "0 1 3"
tAnniversaryPromotion_Reward[3308572]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308572]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308572]["LogId"] = 12001060
-- +5赤炼石秒杀包
tAnniversaryPromotion_Reward[3308573] = {}
tAnniversaryPromotion_Reward[3308573]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308573]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308573]["DeleteItem"][1]["Id"] = 3308573
tAnniversaryPromotion_Reward[3308573]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308573]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308573]["RewardItem"][1]["Id"] = 730005
tAnniversaryPromotion_Reward[3308573]["RewardItem"][1]["Attr"] = "0 2 3"
tAnniversaryPromotion_Reward[3308573]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308573]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308573]["LogId"] = 12001060
-- 七星宝钻秒杀包
tAnniversaryPromotion_Reward[3308574] = {}
tAnniversaryPromotion_Reward[3308574]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308574]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308574]["DeleteItem"][1]["Id"] = 3308574
tAnniversaryPromotion_Reward[3308574]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308574]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308574]["RewardItem"][1]["Id"] = 1200006
tAnniversaryPromotion_Reward[3308574]["RewardItem"][1]["Attr"] = "0 1 3"
tAnniversaryPromotion_Reward[3308574]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308574]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308574]["LogId"] = 12001060
-- 九转聚神特惠包
tAnniversaryPromotion_Reward[3308575] = {}
tAnniversaryPromotion_Reward[3308575]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308575]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308575]["DeleteItem"][1]["Id"] = 3308575
tAnniversaryPromotion_Reward[3308575]["RewardItem"] = {}
tAnniversaryPromotion_Reward[3308575]["RewardItem"][1] = {}
tAnniversaryPromotion_Reward[3308575]["RewardItem"][1]["Id"] = 722057
tAnniversaryPromotion_Reward[3308575]["RewardItem"][1]["Attr"] = "0 1 3"
tAnniversaryPromotion_Reward[3308575]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308575]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308575]["LogId"] = 12001060
-- 海量经验特惠包
tAnniversaryPromotion_Reward[3308576] = {}
tAnniversaryPromotion_Reward[3308576]["DeleteItem"] = {}
tAnniversaryPromotion_Reward[3308576]["DeleteItem"][1] = {}
tAnniversaryPromotion_Reward[3308576]["DeleteItem"][1]["Id"] = 3308576
tAnniversaryPromotion_Reward[3308576]["RewardExpTime"] = {}
tAnniversaryPromotion_Reward[3308576]["RewardExpTime"]["Value"] = 3000
tAnniversaryPromotion_Reward[3308576]["RewardEffect"] = {}
tAnniversaryPromotion_Reward[3308576]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotion_Reward[3308576]["LogId"] = 12001060

-- 周年庆限时秒杀包购买
tAnniversaryPromotion_PackageBuy = {}
-- 八宝护气秒杀包
tAnniversaryPromotion_PackageBuy[3308563] = {}
tAnniversaryPromotion_PackageBuy[3308563]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308563]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308563]["RewardItem"][1]["Id"] = 3308563
tAnniversaryPromotion_PackageBuy[3308563]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308563]["LogId"] = 12001060
-- 秘制修炼秒杀包
tAnniversaryPromotion_PackageBuy[3308564] = {}
tAnniversaryPromotion_PackageBuy[3308564]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308564]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308564]["RewardItem"][1]["Id"] = 3308564
tAnniversaryPromotion_PackageBuy[3308564]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308564]["LogId"] = 12001060
-- 天机果秒杀包
tAnniversaryPromotion_PackageBuy[3308565] = {}
tAnniversaryPromotion_PackageBuy[3308565]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308565]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308565]["RewardItem"][1]["Id"] = 3308565
tAnniversaryPromotion_PackageBuy[3308565]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308565]["LogId"] = 12001060
-- 乾坤九转秒杀包
tAnniversaryPromotion_PackageBuy[3308566] = {}
tAnniversaryPromotion_PackageBuy[3308566]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308566]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308566]["RewardItem"][1]["Id"] = 3308566
tAnniversaryPromotion_PackageBuy[3308566]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308566]["LogId"] = 12001060
-- 免试金牌秒杀包
tAnniversaryPromotion_PackageBuy[3308567] = {}
tAnniversaryPromotion_PackageBuy[3308567]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308567]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308567]["RewardItem"][1]["Id"] = 3308567
tAnniversaryPromotion_PackageBuy[3308567]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308567]["LogId"] = 12001060
-- 龙珠秒杀包
tAnniversaryPromotion_PackageBuy[3308568] = {}
tAnniversaryPromotion_PackageBuy[3308568]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308568]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308568]["RewardItem"][1]["Id"] = 3308568
tAnniversaryPromotion_PackageBuy[3308568]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308568]["LogId"] = 12001060
-- 晶莹星陨石秒杀包
tAnniversaryPromotion_PackageBuy[3308569] = {}
tAnniversaryPromotion_PackageBuy[3308569]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308569]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308569]["RewardItem"][1]["Id"] = 3308569
tAnniversaryPromotion_PackageBuy[3308569]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308569]["LogId"] = 12001060
-- 优质玄元秒杀包
tAnniversaryPromotion_PackageBuy[3308570] = {}
tAnniversaryPromotion_PackageBuy[3308570]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308570]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308570]["RewardItem"][1]["Id"] = 3308570
tAnniversaryPromotion_PackageBuy[3308570]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308570]["LogId"] = 12001060
-- 净水玉瓶秒杀包
tAnniversaryPromotion_PackageBuy[3308571] = {}
tAnniversaryPromotion_PackageBuy[3308571]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308571]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308571]["RewardItem"][1]["Id"] = 3308571
tAnniversaryPromotion_PackageBuy[3308571]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308571]["LogId"] = 12001060
-- 灵宝葫芦秒杀包
tAnniversaryPromotion_PackageBuy[3308572] = {}
tAnniversaryPromotion_PackageBuy[3308572]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308572]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308572]["RewardItem"][1]["Id"] = 3308572
tAnniversaryPromotion_PackageBuy[3308572]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308572]["LogId"] = 12001060
-- +5赤炼石秒杀包
tAnniversaryPromotion_PackageBuy[3308573] = {}
tAnniversaryPromotion_PackageBuy[3308573]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308573]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308573]["RewardItem"][1]["Id"] = 3308573
tAnniversaryPromotion_PackageBuy[3308573]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308573]["LogId"] = 12001060
-- 七星宝钻秒杀包
tAnniversaryPromotion_PackageBuy[3308574] = {}
tAnniversaryPromotion_PackageBuy[3308574]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308574]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308574]["RewardItem"][1]["Id"] = 3308574
tAnniversaryPromotion_PackageBuy[3308574]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308574]["LogId"] = 12001060
-- 九转聚神特惠包
tAnniversaryPromotion_PackageBuy[3308575] = {}
tAnniversaryPromotion_PackageBuy[3308575]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308575]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308575]["RewardItem"][1]["Id"] = 3308575
tAnniversaryPromotion_PackageBuy[3308575]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308575]["LogId"] = 12001060
-- 海量经验特惠包
tAnniversaryPromotion_PackageBuy[3308576] = {}
tAnniversaryPromotion_PackageBuy[3308576]["RewardItem"] = {}
tAnniversaryPromotion_PackageBuy[3308576]["RewardItem"][1] = {}
tAnniversaryPromotion_PackageBuy[3308576]["RewardItem"][1]["Id"] = 3308576
tAnniversaryPromotion_PackageBuy[3308576]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotion_PackageBuy[3308576]["LogId"] = 12001060
----------------------------------逻辑部分---------------------------------------------
-- 时间自检重置秒杀物品
function AnniversaryPromotion_OnTimeChk()
	if not Sys_ChkFullTime(tAnniversaryPromotion_Data["ActivityTime"]) then
		return
	end
	Sys_ResetAllSynaGlobalData(tAnniversaryPromotion_Data["GlobalId"][1][3308563])
	Sys_ResetAllSynaGlobalData(tAnniversaryPromotion_Data["GlobalId"][1][3308569])
	Sys_ResetAllSynaGlobalTime(tAnniversaryPromotion_Data["GlobalId"][1][3308569])
end

-- 礼包对白赋值
function AnniversaryPromotion_PaclageDialogSet(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nItemPrice = tAnniversaryPromotion_Data["EmoneyPrice"][nItemId]
	local sRewardItemName = tAnniversaryPromotion_Text["RewarditemName"][nItemId]
	-- local nNeedEMoney = tAnniversaryPromotion_Data["EmoneyPrice"][nItemId]
	-- 1-1对白赋值
	tItem[nItemId]["Text111"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Text111"], nItemPrice, sRewardItemName)
	tItem[nItemId]["Option111"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Option111"], nItemPrice)
	-- 选项赋值
	local nDiscount1 = nItemPrice - tAnniversaryPromotion_Data["Discount"][1]
	tItem[nItemId]["Option112"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Option112"], nDiscount1)
	local nDiscount2 = nItemPrice - tAnniversaryPromotion_Data["Discount"][2]
	tItem[nItemId]["Option113"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Option113"], nDiscount2)
	local nDiscount3 = nItemPrice - tAnniversaryPromotion_Data["Discount"][3]
	tItem[nItemId]["Option114"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Option114"], nDiscount3)
	local nDiscount4 = nItemPrice - tAnniversaryPromotion_Data["Discount"][4]
	tItem[nItemId]["Option115"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Option115"], nDiscount4)
	
	-- 1-2对白赋值
	tItem[nItemId]["Text121"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Text121"], nItemPrice)
	tItem[nItemId]["OptionFunc121"] = "AnniversaryPromotion_UsePackage</N>" .. nItemId .. "</N>" .. nItemPrice
	
	LinkItemGossipFunc_New(nItemId, "1-1")
end

-- 礼包对白二次确认
function AnniversaryPromotion_NeedEmoneyChk(nSign, nItemId)
	local nCashCouponId = tAnniversaryPromotion_Data["CashCouponId"][nSign]
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Item_ChkItem(nCashCouponId) then
		Sys_MsgBox(tAnniversaryPromotion_Text["SysMsg"]["HaveNotCard"])
		return
	end
	local nItemPrice = tAnniversaryPromotion_Data["EmoneyPrice"][nItemId]
	local nNeedEMoney = AnniversaryPromotion_UseCashCoupon(nItemPrice, nSign)
	-- 1-2对白赋值
	tItem[nItemId]["Text121"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Text121"], nNeedEMoney)
	tItem[nItemId]["OptionFunc121"] = "AnniversaryPromotion_UsePackage</N>" .. nItemId .. "</N>" .. nNeedEMoney .. "</N>" .. nCashCouponId
	LinkItemGossipFunc_New(nItemId, "1-2")
end

-- 使用代金券金额计算
function AnniversaryPromotion_UseCashCoupon(nItemPrice, nSign)
	local nNeedConsume = tAnniversaryPromotion_Data["NeedConsume"][nSign]
	if nItemPrice <= nNeedConsume then
		return nItemPrice
	else
		return nItemPrice - tAnniversaryPromotion_Data["Discount"][nSign]
	end
end

-- 使用其他代金券
function AnniversaryPromotion_UseOtherCards(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nItemPrice = tAnniversaryPromotion_Data["EmoneyPrice"][nItemId]
	local sRewardItemName = tAnniversaryPromotion_Text["RewarditemName"][nItemId]
	-- 对白赋值
	tItem[nItemId]["Text211"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Text211"], nItemPrice, sRewardItemName)
	-- 选项赋值
	tItem[nItemId]["Option211"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Option211"], nItemPrice - tAnniversaryPromotion_Data["Discount"][1])
	tItem[nItemId]["OptionFunc211"] = "AnniversaryPromotion_UseCardsChkNeedMoney</N>" .. nItemId .. "</N>" .. 1
	tItem[nItemId]["Option212"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Option212"], nItemPrice - tAnniversaryPromotion_Data["Discount"][2])
	tItem[nItemId]["OptionFunc212"] = "AnniversaryPromotion_UseCardsChkNeedMoney</N>" .. nItemId .. "</N>" .. 2
	tItem[nItemId]["Option213"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Option213"], nItemPrice - tAnniversaryPromotion_Data["Discount"][3])
	tItem[nItemId]["OptionFunc213"] = "AnniversaryPromotion_UseCardsChkNeedMoney</N>" .. nItemId .. "</N>" .. 3
	tItem[nItemId]["Option214"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Option214"], nItemPrice - tAnniversaryPromotion_Data["Discount"][4])
	tItem[nItemId]["OptionFunc214"] = "AnniversaryPromotion_UseCardsChkNeedMoney</N>" .. nItemId .. "</N>" .. 4
	LinkItemGossipFunc_New(nItemId, "2-1")
end

-- 使用代金券二次
function AnniversaryPromotion_UseCardsChkNeedMoney(nItemId, nSign)
	local nItemPrice = tAnniversaryPromotion_Data["EmoneyPrice"][nItemId]
	local nNeedEMoney = AnniversaryPromotion_UseCashCoupon(nItemPrice, nSign)
	local nCashCouponId = tAnniversaryPromotion_Data["CashCouponId"][nSign]
	tItem[nItemId]["Text121"] = string.format(tAnniversaryPromotion_Text["CurrencyDialog"]["Text121"], nNeedEMoney)
	tItem[nItemId]["OptionFunc121"] = "AnniversaryPromotion_UsePackage</N>" .. nItemId .. "</N>" .. nNeedEMoney .. "</N>" .. nCashCouponId
	LinkItemGossipFunc_New(nItemId, "1-2")
end

-- 礼包代金券显示
function AnniversaryPromotion_CashCoupon(nItemId, nSign)
	local nItemPrice = tAnniversaryPromotion_Data["EmoneyPrice"][nItemId]
	
	local nNeedPrice = tAnniversaryPromotion_Data["NeedConsume"][nSign]
	local nNeedItemId = tAnniversaryPromotion_Data["CashCouponId"][nSign]
	if nItemPrice >= nNeedPrice and Item_ChkItem(nNeedItemId) then
		return true
	else
		return false
	end
end

-- 礼包使用
function AnniversaryPromotion_UsePackage(nItemId, nNeedEMoney, nNeedItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if nNeedItemId == nil then
		nNeedItemId = 0
	end
	-- 查看代金券是否存在
	if nNeedItemId > 0 then
		if not Item_ChkItem(nNeedItemId) then
			Sys_MsgBox(tAnniversaryPromotion_Text["SysMsg"]["HaveNotCard"])
			return
		end
	end
	if not RewardTemplate_CheckSpace(tAnniversaryPromotion_Reward[nItemId]) then
		return
	end
	
	-- local nNeedEMoney = tAnniversaryPromotion_Data["EmoneyPrice"][nItemId]
	-- 天石不足
	local nEmoneyNow = Get_UserEMoney()
	if nEmoneyNow < nNeedEMoney then
		Sys_MsgBox(tAnniversaryPromotion_Text["SysMsg"]["NotEnoughEmoneyOpen"])
		return
	end
	if not User_AddEMoney(-nNeedEMoney) then
		return
	end
	if nNeedItemId > 0 then
		if not Item_DelItem(nNeedItemId) then
			return
		else
			-- 打EmoneyLog
			Sys_SaveEmoneyBuy(tAnniversaryPromotion_Data["EmoneyLog"][nNeedItemId])
		end
	end
	-- 打EmoneyLog
	local sEmoneyLog = string.format(tAnniversaryPromotion_Data["EmoneyLog"][nItemId], nNeedEMoney, nNeedEMoney)
	Sys_SaveEmoneyBuy(sEmoneyLog)
	RewardTemplate_UseItem(tAnniversaryPromotion_Reward[nItemId])
end

-- 购买礼包二次确认
function AnniversaryPromotion_BuyPackageSecChk(nItemId)
	if CommonFunc_GetAfterActivityTime(tAnniversaryPromotion_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(tAnniversaryPromotion_Data["NpcId"], "1-4")
		return
	end
	-- 不在贩卖时间
	if not Sys_ChkDayTime(tAnniversaryPromotion_Data["DayTime"]) then
		LinkNpcGossipFunc_New(tAnniversaryPromotion_Data["NpcId"], "1-3")
		return
	end
	
	local nItemId1 = 3308575
	local nItemId2 = 3308576
	local nDataId = tAnniversaryPromotion_Data["GlobalId"][1][nItemId]
	local nPos = tAnniversaryPromotion_Data["GlobalId"][2][nItemId]
	local nNum = 0
	if nItemId == nItemId1 or nItemId == nItemId2 then
		nNum = Get_SysDynaGlobalTime(nDataId, nPos)
	else
		nNum = Get_SysDynaGlobalData(nDataId, nPos)
	end
	local nSurplusNum = tAnniversaryPromotion_Data["GlobalId"][3][nItemId] - nNum
	if nSurplusNum <= 0 then
		Sys_MsgBox(tAnniversaryPromotion_Text["SysMsg"]["SellOver"])
		return
	end
	
	local nItemPrice = tAnniversaryPromotion_Data["EmoneyPrice"][nItemId]
	local sItemName = tAnniversaryPromotion_Text["RewarditemName"][nItemId]
	tNpcGossip[22775]["Text211"] = string.format(tAnniversaryPromotion_Text[22775]["Text211"], nItemPrice, sItemName)
	tNpcGossip[22775]["OptionFunc211"] = "AnniversaryPromotion_BuyPackage</N>" .. nItemId
	LinkNpcGossipFunc_New(tAnniversaryPromotion_Data["NpcId"], "2-1")
end

-- 购买礼包
function AnniversaryPromotion_BuyPackage(nItemId)
	if CommonFunc_GetAfterActivityTime(tAnniversaryPromotion_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(tAnniversaryPromotion_Data["NpcId"], "1-4")
		return
	end
	-- 不在贩卖时间
	if not Sys_ChkDayTime(tAnniversaryPromotion_Data["DayTime"]) then
		LinkNpcGossipFunc_New(tAnniversaryPromotion_Data["NpcId"], "1-3")
		return
	end
	-- 背包不足
	if not RewardTemplate_CheckSpace(tAnniversaryPromotion_PackageBuy[nItemId]) then
		Sys_MsgBox(tAnniversaryPromotion_Text["SysMsg"]["FullSpace"])
		return
	end
	local nNeedEMoney = tAnniversaryPromotion_Data["EmoneyPrice"][nItemId]
	-- 天石不足
	local nEmoneyNow = Get_UserEMoney()
	if nEmoneyNow < nNeedEMoney then
		Sys_MsgBox(tAnniversaryPromotion_Text["SysMsg"]["NotEnoughEmoneyBuy"])
		return
	end
	
	local nItemId1 = 3308575
	local nItemId2 = 3308576
	local nDataId = tAnniversaryPromotion_Data["GlobalId"][1][nItemId]
	local nPos = tAnniversaryPromotion_Data["GlobalId"][2][nItemId]
	local nNum = 0
	if nItemId == nItemId1 or nItemId == nItemId2 then
		nNum = Get_SysDynaGlobalTime(nDataId, nPos)
	else
		nNum = Get_SysDynaGlobalData(nDataId, nPos)
	end
	local nSurplusNum = tAnniversaryPromotion_Data["GlobalId"][3][nItemId] - nNum
	if nSurplusNum <= 0 then
		Sys_MsgBox(tAnniversaryPromotion_Text["SysMsg"]["SellOver"])
		return
	end
	
	if User_AddEMoney(-nNeedEMoney) then
		-- 打EmoneyLog
		local sEmoneyLog = string.format(tAnniversaryPromotion_Data["EmoneyLog"][nItemId], nNeedEMoney, nNeedEMoney)
		Sys_SaveEmoneyBuy(sEmoneyLog)
		-- 减少贩卖数量
		if nItemId == nItemId1 or nItemId == nItemId2 then
			Sys_SetSynaGlobalTime(nDataId, nPos, nNum + 1)
		else
			Sys_SetSynaGlobalData(nDataId, nPos, nNum + 1)
		end
		RewardTemplate_UseItem(tAnniversaryPromotion_PackageBuy[nItemId])
	end
end

-- 周年庆限时秒杀礼包使用
function AnniversaryPromotion_UseDisCountPackage(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not RewardTemplate_CheckSpace(tAnniversaryPromotion_Reward[nItemId]) then
		Sys_MsgBox(tAnniversaryPromotion_Text["SysMsg"]["FullSpace"])
		return
	end
	
	RewardTemplate_UseItem(tAnniversaryPromotion_Reward[nItemId])
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[6057] = 13
tNpcGossip[22775]= tNpcGossip[22775] or DefaultNpc:new{}
tNpcGossip[22775]["OptionHidden"] = 1
-- 周年秒杀大使  活动前
tNpcGossip[22775]["Text1-1"] = {111, 112, 113}
tNpcGossip[22775]["Text111"] = tAnniversaryPromotion_Text[22775]["Text111"]
tNpcGossip[22775]["Text112"] = tAnniversaryPromotion_Text[22775]["Text112"]
tNpcGossip[22775]["Text113"] = tAnniversaryPromotion_Text[22775]["Text113"]
tNpcGossip[22775]["ChkFunc1-1"]= function()
	if Sys_ChkFullTime(tAnniversaryPromotion_Data["BeforeTime"]) then
		return true
	end
	return false
end
tNpcGossip[22775]["tOption1-1"] = {111}
tNpcGossip[22775]["Option111"] = tAnniversaryPromotion_Text[22775]["Option111"]
-- 周年秒杀大使  活动中  出售时间
tNpcGossip[22775]["Text1-2"] = {121, 122}
tNpcGossip[22775]["Text121"] = tAnniversaryPromotion_Text[22775]["Text121"]
tNpcGossip[22775]["Text122"] = tAnniversaryPromotion_Text[22775]["Text122"]
tNpcGossip[22775]["ChkFunc1-2"]= function()
	if not Sys_ChkFullTime(tAnniversaryPromotion_Data["ActivityTime"]) then
		return false
	end
	-- 不在出售时间
	if not Sys_ChkDayTime(tAnniversaryPromotion_Data["DayTime"]) then
		return false
	end
	-- 选项赋值
	local nOption = 12
	local nSign = 3308563
	local nItemId1 = 3308575
	local nItemId2 = 3308576
	for i = 0, 13 do
		local nItemId = nSign + i
		local nDataId = tAnniversaryPromotion_Data["GlobalId"][1][nItemId]
		local nPos = tAnniversaryPromotion_Data["GlobalId"][2][nItemId]
		local nNum = 0
		if nItemId == nItemId1 or nItemId == nItemId2 then
			nNum = Get_SysDynaGlobalTime(nDataId, nPos)
		else
			nNum = Get_SysDynaGlobalData(nDataId, nPos)
		end
		local nSurplusNum = tAnniversaryPromotion_Data["GlobalId"][3][nItemId] - nNum
		-- 剩余数量赋值
		tNpcGossip[22775]["Option" .. nOption .. (i + 1)] = string.format(tAnniversaryPromotion_Text[22775]["Option" .. nOption .. (i + 1)], nSurplusNum)
	end
	
	return true
end
tNpcGossip[22775]["tOption1-2"] = {121, 122, 123, 124, 125, 126, 127, 128, 129, 1210, 1211, 1212, 1213, 1214}
tNpcGossip[22775]["Option121"] = tAnniversaryPromotion_Text[22775]["Option121"]
tNpcGossip[22775]["OptionFunc121"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308563"
tNpcGossip[22775]["Option122"] = tAnniversaryPromotion_Text[22775]["Option122"]
tNpcGossip[22775]["OptionFunc122"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308564"
tNpcGossip[22775]["Option123"] = tAnniversaryPromotion_Text[22775]["Option123"]
tNpcGossip[22775]["OptionFunc123"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308565"
tNpcGossip[22775]["Option124"] = tAnniversaryPromotion_Text[22775]["Option124"]
tNpcGossip[22775]["OptionFunc124"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308566"
tNpcGossip[22775]["Option125"] = tAnniversaryPromotion_Text[22775]["Option125"]
tNpcGossip[22775]["OptionFunc125"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308567"
tNpcGossip[22775]["Option126"] = tAnniversaryPromotion_Text[22775]["Option126"]
tNpcGossip[22775]["OptionFunc126"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308568"
tNpcGossip[22775]["Option127"] = tAnniversaryPromotion_Text[22775]["Option127"]
tNpcGossip[22775]["OptionFunc127"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308569"
tNpcGossip[22775]["Option128"] = tAnniversaryPromotion_Text[22775]["Option128"]
tNpcGossip[22775]["OptionFunc128"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308570"
tNpcGossip[22775]["Option129"] = tAnniversaryPromotion_Text[22775]["Option129"]
tNpcGossip[22775]["OptionFunc129"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308571"
tNpcGossip[22775]["Option1210"] = tAnniversaryPromotion_Text[22775]["Option1210"]
tNpcGossip[22775]["OptionFunc1210"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308572"
tNpcGossip[22775]["Option1211"] = tAnniversaryPromotion_Text[22775]["Option1211"]
tNpcGossip[22775]["OptionFunc1211"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308573"
tNpcGossip[22775]["Option1212"] = tAnniversaryPromotion_Text[22775]["Option1212"]
tNpcGossip[22775]["OptionFunc1212"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308574"
tNpcGossip[22775]["Option1213"] = tAnniversaryPromotion_Text[22775]["Option1213"]
tNpcGossip[22775]["OptionFunc1213"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308575"
tNpcGossip[22775]["Option1214"] = tAnniversaryPromotion_Text[22775]["Option1214"]
tNpcGossip[22775]["OptionFunc1214"] = "AnniversaryPromotion_BuyPackageSecChk</N>3308576"
-- 周年秒杀大使  活动中  未到时间
tNpcGossip[22775]["Text1-3"] = {131, 132, 133}
tNpcGossip[22775]["Text131"] = tAnniversaryPromotion_Text[22775]["Text131"]
tNpcGossip[22775]["Text132"] = tAnniversaryPromotion_Text[22775]["Text132"]
tNpcGossip[22775]["Text133"] = tAnniversaryPromotion_Text[22775]["Text133"]
tNpcGossip[22775]["ChkFunc1-3"]= function()
	if not Sys_ChkFullTime(tAnniversaryPromotion_Data["ActivityTime"]) then
		return false
	end
	if not Sys_ChkDayTime(tAnniversaryPromotion_Data["DayTime"]) then
		return true
	end
	return false
end
tNpcGossip[22775]["tOption1-3"] = {131}
tNpcGossip[22775]["Option131"] = tAnniversaryPromotion_Text[22775]["Option131"]
-- 周年秒杀大使  活动后
tNpcGossip[22775]["Text1-4"] = {141}
tNpcGossip[22775]["Text141"] = tAnniversaryPromotion_Text[22775]["Text141"]
tNpcGossip[22775]["ChkFunc1-4"]= function()
	if CommonFunc_GetAfterActivityTime(tAnniversaryPromotion_Data["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[22775]["tOption1-4"] = {141}
tNpcGossip[22775]["Option141"] = tAnniversaryPromotion_Text[22775]["Option141"]
-- 周年秒杀大使  二次确认
tNpcGossip[22775]["Text2-1"] = {211}
tNpcGossip[22775]["Text211"] = tAnniversaryPromotion_Text[22775]["Text211"]
tNpcGossip[22775]["tOption2-1"] = {211, 212}
tNpcGossip[22775]["Option211"] = tAnniversaryPromotion_Text[22775]["Option211"]
tNpcGossip[22775]["OptionFunc211"] = ""
tNpcGossip[22775]["Option212"] = tAnniversaryPromotion_Text[22775]["Option212"]

---------------------------------物品部分---------------------------------------------
-- SpiritLion特惠包
tItemFace[3308520] = 1049
tItem[3308520] = tItem[3308520] or {}
tItem[3308520]["Function"] = function(nItemId,sItemName)
	AnniversaryPromotion_PaclageDialogSet(nItemId)
end
tItem[3308520]["Text1-1"] = {111}
tItem[3308520]["Text111"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Text111"]
tItem[3308520]["tOption1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3308520]["Option111"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option111"]
tItem[3308520]["OptionPoint111"] = "1-2"

tItem[3308520]["Option112"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option112"]
tItem[3308520]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308520, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308520, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308520, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308520, 1)
end
tItem[3308520]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308520"
tItem[3308520]["Option113"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option113"]
tItem[3308520]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308520, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308520, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308520, 2)
end
tItem[3308520]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308520"
tItem[3308520]["Option114"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option114"]
tItem[3308520]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308520, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308520, 3)
end
tItem[3308520]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308520"
tItem[3308520]["Option115"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option115"]
tItem[3308520]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308520, 4)
end
tItem[3308520]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308520"
tItem[3308520]["Option116"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option116"]
tItem[3308520]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308520, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308520]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308520"
tItem[3308520]["Option117"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option117"]
-- 二次确认
tItem[3308520]["Text1-2"] = {121}
tItem[3308520]["Text121"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Text121"]
tItem[3308520]["tOption1-2"] = {121, 122}
tItem[3308520]["Option121"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option121"]
tItem[3308520]["OptionFunc121"] = ""
tItem[3308520]["Option122"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option122"]
-- 使用其他代金券
tItem[3308520]["Text2-1"] = {211}
tItem[3308520]["Text211"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Text211"]
tItem[3308520]["tOption2-1"] = {211, 212, 213, 214, 215}
tItem[3308520]["Option211"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option211"]
tItem[3308520]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308520, 1)
end
tItem[3308520]["Option212"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option212"]
tItem[3308520]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308520, 2)
end
tItem[3308520]["Option213"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option213"]
tItem[3308520]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308520, 3)
end
tItem[3308520]["Option214"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option214"]
tItem[3308520]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308520, 4)
end
tItem[3308520]["Option215"] = tAnniversaryPromotion_Text["CurrencyDialog"]["Option215"]
-- 奇妙大风车特惠包
tItemFace[3308521] = 1050
tItem[3308521] = CommonFunc_Copy(tItem[3308520])
tItem[3308521]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308521, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308521, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308521, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308521, 1)
end
tItem[3308521]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308521"
tItem[3308521]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308521, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308521, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308521, 2)
end
tItem[3308521]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308521"
tItem[3308521]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308521, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308521, 3)
end
tItem[3308521]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308521"
tItem[3308521]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308521, 4)
end
tItem[3308521]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308521"
tItem[3308521]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308521, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308521]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308521"
tItem[3308521]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308521, 1)
end
tItem[3308521]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308521, 2)
end
tItem[3308521]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308521, 3)
end
tItem[3308521]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308521, 4)
end
-- 马上有对象特惠包
tItemFace[3308522] = 1051
tItem[3308522] = CommonFunc_Copy(tItem[3308520])
tItem[3308522]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308522, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308522, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308522, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308522, 1)
end
tItem[3308522]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308522"
tItem[3308522]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308522, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308522, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308522, 2)
end
tItem[3308522]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308522"
tItem[3308522]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308522, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308522, 3)
end
tItem[3308522]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308522"
tItem[3308522]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308522, 4)
end
tItem[3308522]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308522"
tItem[3308522]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308522, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308522]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308522"
tItem[3308522]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308522, 1)
end
tItem[3308522]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308522, 2)
end
tItem[3308522]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308522, 3)
end
tItem[3308522]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308522, 4)
end
-- 九尾天狐特惠包
tItemFace[3308523] = 1052
tItem[3308523] = CommonFunc_Copy(tItem[3308520])
tItem[3308523]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308523, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308523, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308523, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308523, 1)
end
tItem[3308523]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308523"
tItem[3308523]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308523, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308523, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308523, 2)
end
tItem[3308523]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308523"
tItem[3308523]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308523, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308523, 3)
end
tItem[3308523]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308523"
tItem[3308523]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308523, 4)
end
tItem[3308523]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308523"
tItem[3308523]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308523, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308523]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308523"
tItem[3308523]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308523, 1)
end
tItem[3308523]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308523, 2)
end
tItem[3308523]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308523, 3)
end
tItem[3308523]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308523, 4)
end
-- 福来哥特惠包
tItemFace[3308524] = 1053
tItem[3308524] = CommonFunc_Copy(tItem[3308520])
tItem[3308524]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308524, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308524, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308524, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308524, 1)
end
tItem[3308524]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308524"
tItem[3308524]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308524, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308524, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308524, 2)
end
tItem[3308524]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308524"
tItem[3308524]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308524, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308524, 3)
end
tItem[3308524]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308524"
tItem[3308524]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308524, 4)
end
tItem[3308524]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308524"
tItem[3308524]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308524, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308524]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308524"
tItem[3308524]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308524, 1)
end
tItem[3308524]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308524, 2)
end
tItem[3308524]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308524, 3)
end
tItem[3308524]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308524, 4)
end
-- FieryDragon(Hades)特惠包
tItemFace[3308525] = 1054
tItem[3308525] = CommonFunc_Copy(tItem[3308520])
tItem[3308525]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308525, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308525, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308525, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308525, 1)
end
tItem[3308525]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308525"
tItem[3308525]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308525, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308525, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308525, 2)
end
tItem[3308525]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308525"
tItem[3308525]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308525, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308525, 3)
end
tItem[3308525]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308525"
tItem[3308525]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308525, 4)
end
tItem[3308525]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308525"
tItem[3308525]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308525, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308525]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308525"
tItem[3308525]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308525, 1)
end
tItem[3308525]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308525, 2)
end
tItem[3308525]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308525, 3)
end
tItem[3308525]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308525, 4)
end
-- KingOfScorpions(Saint)特惠包
tItemFace[3308526] = 1055
tItem[3308526] = CommonFunc_Copy(tItem[3308520])
tItem[3308526]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308526, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308526, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308526, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308526, 1)
end
tItem[3308526]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308526"
tItem[3308526]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308526, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308526, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308526, 2)
end
tItem[3308526]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308526"
tItem[3308526]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308526, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308526, 3)
end
tItem[3308526]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308526"
tItem[3308526]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308526, 4)
end
tItem[3308526]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308526"
tItem[3308526]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308526, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308526]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308526"
tItem[3308526]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308526, 1)
end
tItem[3308526]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308526, 2)
end
tItem[3308526]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308526, 3)
end
tItem[3308526]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308526, 4)
end
-- GeneralCat(Charm)特惠包
tItemFace[3308527] = 1056
tItem[3308527] = CommonFunc_Copy(tItem[3308520])
tItem[3308527]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308527, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308527, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308527, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308527, 1)
end
tItem[3308527]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308527"
tItem[3308527]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308527, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308527, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308527, 2)
end
tItem[3308527]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308527"
tItem[3308527]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308527, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308527, 3)
end
tItem[3308527]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308527"
tItem[3308527]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308527, 4)
end
tItem[3308527]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308527"
tItem[3308527]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308527, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308527]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308527"
tItem[3308527]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308527, 1)
end
tItem[3308527]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308527, 2)
end
tItem[3308527]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308527, 3)
end
tItem[3308527]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308527, 4)
end
-- 蟠蛇战辕特惠包
tItemFace[3308528] = 1057
tItem[3308528] = CommonFunc_Copy(tItem[3308520])
tItem[3308528]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308528, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308528, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308528, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308528, 1)
end
tItem[3308528]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308528"
tItem[3308528]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308528, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308528, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308528, 2)
end
tItem[3308528]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308528"
tItem[3308528]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308528, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308528, 3)
end
tItem[3308528]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308528"
tItem[3308528]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308528, 4)
end
tItem[3308528]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308528"
tItem[3308528]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308528, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308528]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308528"
tItem[3308528]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308528, 1)
end
tItem[3308528]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308528, 2)
end
tItem[3308528]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308528, 3)
end
tItem[3308528]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308528, 4)
end
-- 傲世龙神特惠包
tItemFace[3308529] = 1058
tItem[3308529] = CommonFunc_Copy(tItem[3308520])
tItem[3308529]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308529, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308529, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308529, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308529, 1)
end
tItem[3308529]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308529"
tItem[3308529]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308529, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308529, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308529, 2)
end
tItem[3308529]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308529"
tItem[3308529]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308529, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308529, 3)
end
tItem[3308529]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308529"
tItem[3308529]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308529, 4)
end
tItem[3308529]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308529"
tItem[3308529]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308529, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308529]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308529"
tItem[3308529]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308529, 1)
end
tItem[3308529]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308529, 2)
end
tItem[3308529]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308529, 3)
end
tItem[3308529]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308529, 4)
end
-- 至善神羚特惠包
tItemFace[3308530] = 1059
tItem[3308530] = CommonFunc_Copy(tItem[3308520])
tItem[3308530]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308530, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308530, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308530, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308530, 1)
end
tItem[3308530]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308530"
tItem[3308530]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308530, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308530, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308530, 2)
end
tItem[3308530]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308530"
tItem[3308530]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308530, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308530, 3)
end
tItem[3308530]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308530"
tItem[3308530]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308530, 4)
end
tItem[3308530]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308530"
tItem[3308530]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308530, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308530]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308530"
tItem[3308530]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308530, 1)
end
tItem[3308530]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308530, 2)
end
tItem[3308530]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308530, 3)
end
tItem[3308530]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308530, 4)
end
-- 情人之泪特惠包
tItemFace[3308531] = 1060
tItem[3308531] = CommonFunc_Copy(tItem[3308520])
tItem[3308531]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308531, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308531, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308531, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308531, 1)
end
tItem[3308531]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308531"
tItem[3308531]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308531, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308531, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308531, 2)
end
tItem[3308531]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308531"
tItem[3308531]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308531, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308531, 3)
end
tItem[3308531]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308531"
tItem[3308531]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308531, 4)
end
tItem[3308531]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308531"
tItem[3308531]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308531, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308531]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308531"
tItem[3308531]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308531, 1)
end
tItem[3308531]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308531, 2)
end
tItem[3308531]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308531, 3)
end
tItem[3308531]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308531, 4)
end
-- FrozenFantasy(Glaze)特惠包
tItemFace[3308532] = 1445
tItem[3308532] = CommonFunc_Copy(tItem[3308520])
tItem[3308532]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308532, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308532, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308532, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308532, 1)
end
tItem[3308532]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308532"
tItem[3308532]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308532, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308532, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308532, 2)
end
tItem[3308532]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308532"
tItem[3308532]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308532, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308532, 3)
end
tItem[3308532]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308532"
tItem[3308532]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308532, 4)
end
tItem[3308532]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308532"
tItem[3308532]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308532, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308532]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308532"
tItem[3308532]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308532, 1)
end
tItem[3308532]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308532, 2)
end
tItem[3308532]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308532, 3)
end
tItem[3308532]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308532, 4)
end
-- FrozenFantasy(Glory)特惠包
tItemFace[3308533] = 1062
tItem[3308533] = CommonFunc_Copy(tItem[3308520])
tItem[3308533]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308533, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308533, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308533, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308533, 1)
end
tItem[3308533]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308533"
tItem[3308533]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308533, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308533, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308533, 2)
end
tItem[3308533]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308533"
tItem[3308533]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308533, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308533, 3)
end
tItem[3308533]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308533"
tItem[3308533]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308533, 4)
end
tItem[3308533]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308533"
tItem[3308533]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308533, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308533]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308533"
tItem[3308533]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308533, 1)
end
tItem[3308533]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308533, 2)
end
tItem[3308533]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308533, 3)
end
tItem[3308533]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308533, 4)
end
-- LavaCatRobe(Star)特惠包
tItemFace[3308534] = 1063
tItem[3308534] = CommonFunc_Copy(tItem[3308520])
tItem[3308534]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308534, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308534, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308534, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308534, 1)
end
tItem[3308534]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308534"
tItem[3308534]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308534, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308534, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308534, 2)
end
tItem[3308534]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308534"
tItem[3308534]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308534, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308534, 3)
end
tItem[3308534]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308534"
tItem[3308534]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308534, 4)
end
tItem[3308534]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308534"
tItem[3308534]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308534, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308534]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308534"
tItem[3308534]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308534, 1)
end
tItem[3308534]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308534, 2)
end
tItem[3308534]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308534, 3)
end
tItem[3308534]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308534, 4)
end
-- 辉耀之刺【荣耀版】特惠包
tItemFace[3308535] = 1064
tItem[3308535] = CommonFunc_Copy(tItem[3308520])
tItem[3308535]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308535, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308535, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308535, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308535, 1)
end
tItem[3308535]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308535"
tItem[3308535]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308535, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308535, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308535, 2)
end
tItem[3308535]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308535"
tItem[3308535]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308535, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308535, 3)
end
tItem[3308535]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308535"
tItem[3308535]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308535, 4)
end
tItem[3308535]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308535"
tItem[3308535]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308535, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308535]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308535"
tItem[3308535]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308535, 1)
end
tItem[3308535]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308535, 2)
end
tItem[3308535]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308535, 3)
end
tItem[3308535]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308535, 4)
end
-- 暗黑魔龙特惠包
tItemFace[3308536] = 1065
tItem[3308536] = CommonFunc_Copy(tItem[3308520])
tItem[3308536]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308536, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308536, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308536, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308536, 1)
end
tItem[3308536]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308536"
tItem[3308536]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308536, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308536, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308536, 2)
end
tItem[3308536]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308536"
tItem[3308536]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308536, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308536, 3)
end
tItem[3308536]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308536"
tItem[3308536]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308536, 4)
end
tItem[3308536]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308536"
tItem[3308536]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308536, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308536]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308536"
tItem[3308536]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308536, 1)
end
tItem[3308536]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308536, 2)
end
tItem[3308536]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308536, 3)
end
tItem[3308536]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308536, 4)
end
-- MysteriousFoxSuitPack特惠包
tItemFace[3308537] = 521
tItem[3308537] = CommonFunc_Copy(tItem[3308520])
tItem[3308537]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308537, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308537, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308537, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308537, 1)
end
tItem[3308537]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308537"
tItem[3308537]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308537, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308537, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308537, 2)
end
tItem[3308537]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308537"
tItem[3308537]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308537, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308537, 3)
end
tItem[3308537]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308537"
tItem[3308537]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308537, 4)
end
tItem[3308537]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308537"
tItem[3308537]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308537, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308537]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308537"
tItem[3308537]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308537, 1)
end
tItem[3308537]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308537, 2)
end
tItem[3308537]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308537, 3)
end
tItem[3308537]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308537, 4)
end
-- FierceCloud特惠包
tItemFace[3308538] = 1446
tItem[3308538] = CommonFunc_Copy(tItem[3308520])
tItem[3308538]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308538, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308538, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308538, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308538, 1)
end
tItem[3308538]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308538"
tItem[3308538]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308538, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308538, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308538, 2)
end
tItem[3308538]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308538"
tItem[3308538]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308538, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308538, 3)
end
tItem[3308538]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308538"
tItem[3308538]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308538, 4)
end
tItem[3308538]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308538"
tItem[3308538]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308538, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308538]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308538"
tItem[3308538]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308538, 1)
end
tItem[3308538]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308538, 2)
end
tItem[3308538]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308538, 3)
end
tItem[3308538]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308538, 4)
end
-- PacificCloud特惠包
tItemFace[3308539] = 1447
tItem[3308539] = CommonFunc_Copy(tItem[3308520])
tItem[3308539]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308539, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308539, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308539, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308539, 1)
end
tItem[3308539]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308539"
tItem[3308539]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308539, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308539, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308539, 2)
end
tItem[3308539]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308539"
tItem[3308539]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308539, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308539, 3)
end
tItem[3308539]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308539"
tItem[3308539]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308539, 4)
end
tItem[3308539]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308539"
tItem[3308539]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308539, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308539]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308539"
tItem[3308539]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308539, 1)
end
tItem[3308539]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308539, 2)
end
tItem[3308539]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308539, 3)
end
tItem[3308539]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308539, 4)
end
-- BlissfulForeverHeart特惠包
tItemFace[3308540] = 1469
tItem[3308540] = CommonFunc_Copy(tItem[3308520])
tItem[3308540]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308540, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308540, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308540, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308540, 1)
end
tItem[3308540]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308540"
tItem[3308540]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308540, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308540, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308540, 2)
end
tItem[3308540]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308540"
tItem[3308540]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308540, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308540, 3)
end
tItem[3308540]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308540"
tItem[3308540]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308540, 4)
end
tItem[3308540]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308540"
tItem[3308540]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308540, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308540]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308540"
tItem[3308540]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308540, 1)
end
tItem[3308540]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308540, 2)
end
tItem[3308540]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308540, 3)
end
tItem[3308540]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308540, 4)
end
-- FairyWings特惠包
tItemFace[3308541] = 1448
tItem[3308541] = CommonFunc_Copy(tItem[3308520])
tItem[3308541]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308541, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308541, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308541, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308541, 1)
end
tItem[3308541]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308541"
tItem[3308541]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308541, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308541, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308541, 2)
end
tItem[3308541]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308541"
tItem[3308541]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308541, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308541, 3)
end
tItem[3308541]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308541"
tItem[3308541]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308541, 4)
end
tItem[3308541]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308541"
tItem[3308541]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308541, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308541]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308541"
tItem[3308541]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308541, 1)
end
tItem[3308541]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308541, 2)
end
tItem[3308541]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308541, 3)
end
tItem[3308541]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308541, 4)
end
-- +3赤炼石特惠包
tItemFace[3308542] = 1449
tItem[3308542] = CommonFunc_Copy(tItem[3308520])
tItem[3308542]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308542, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308542, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308542, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308542, 1)
end
tItem[3308542]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308542"
tItem[3308542]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308542, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308542, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308542, 2)
end
tItem[3308542]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308542"
tItem[3308542]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308542, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308542, 3)
end
tItem[3308542]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308542"
tItem[3308542]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308542, 4)
end
tItem[3308542]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308542"
tItem[3308542]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308542, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308542]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308542"
tItem[3308542]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308542, 1)
end
tItem[3308542]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308542, 2)
end
tItem[3308542]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308542, 3)
end
tItem[3308542]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308542, 4)
end
-- +5赤炼石特惠包
tItemFace[3308543] = 1450
tItem[3308543] = CommonFunc_Copy(tItem[3308520])
tItem[3308543]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308543, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308543, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308543, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308543, 1)
end
tItem[3308543]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308543"
tItem[3308543]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308543, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308543, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308543, 2)
end
tItem[3308543]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308543"
tItem[3308543]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308543, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308543, 3)
end
tItem[3308543]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308543"
tItem[3308543]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308543, 4)
end
tItem[3308543]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308543"
tItem[3308543]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308543, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308543]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308543"
tItem[3308543]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308543, 1)
end
tItem[3308543]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308543, 2)
end
tItem[3308543]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308543, 3)
end
tItem[3308543]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308543, 4)
end
-- +6马匹特惠包
tItemFace[3308544] = 1451
tItem[3308544] = CommonFunc_Copy(tItem[3308520])
tItem[3308544]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308544, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308544, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308544, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308544, 1)
end
tItem[3308544]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308544"
tItem[3308544]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308544, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308544, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308544, 2)
end
tItem[3308544]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308544"
tItem[3308544]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308544, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308544, 3)
end
tItem[3308544]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308544"
tItem[3308544]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308544, 4)
end
tItem[3308544]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308544"
tItem[3308544]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308544, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308544]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308544"
tItem[3308544]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308544, 1)
end
tItem[3308544]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308544, 2)
end
tItem[3308544]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308544, 3)
end
tItem[3308544]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308544, 4)
end
-- +8赤炼石特惠包
tItemFace[3308545] = 1452
tItem[3308545] = CommonFunc_Copy(tItem[3308520])
tItem[3308545]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308545, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308545, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308545, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308545, 1)
end
tItem[3308545]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308545"
tItem[3308545]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308545, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308545, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308545, 2)
end
tItem[3308545]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308545"
tItem[3308545]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308545, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308545, 3)
end
tItem[3308545]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308545"
tItem[3308545]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308545, 4)
end
tItem[3308545]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308545"
tItem[3308545]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308545, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308545]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308545"
tItem[3308545]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308545, 1)
end
tItem[3308545]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308545, 2)
end
tItem[3308545]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308545, 3)
end
tItem[3308545]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308545, 4)
end
-- 明亮星陨石特惠包
tItemFace[3308546] = 1453
tItem[3308546] = CommonFunc_Copy(tItem[3308520])
tItem[3308546]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308546, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308546, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308546, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308546, 1)
end
tItem[3308546]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308546"
tItem[3308546]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308546, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308546, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308546, 2)
end
tItem[3308546]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308546"
tItem[3308546]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308546, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308546, 3)
end
tItem[3308546]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308546"
tItem[3308546]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308546, 4)
end
tItem[3308546]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308546"
tItem[3308546]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308546, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308546]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308546"
tItem[3308546]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308546, 1)
end
tItem[3308546]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308546, 2)
end
tItem[3308546]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308546, 3)
end
tItem[3308546]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308546, 4)
end
-- 晶莹星陨石特惠包
tItemFace[3308547] = 1454
tItem[3308547] = CommonFunc_Copy(tItem[3308520])
tItem[3308547]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308547, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308547, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308547, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308547, 1)
end
tItem[3308547]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308547"
tItem[3308547]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308547, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308547, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308547, 2)
end
tItem[3308547]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308547"
tItem[3308547]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308547, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308547, 3)
end
tItem[3308547]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308547"
tItem[3308547]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308547, 4)
end
tItem[3308547]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308547"
tItem[3308547]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308547, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308547]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308547"
tItem[3308547]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308547, 1)
end
tItem[3308547]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308547, 2)
end
tItem[3308547]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308547, 3)
end
tItem[3308547]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308547, 4)
end
-- 固化石特惠包
tItemFace[3308548] = 1187
tItem[3308548] = CommonFunc_Copy(tItem[3308520])
tItem[3308548]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308548, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308548, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308548, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308548, 1)
end
tItem[3308548]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308548"
tItem[3308548]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308548, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308548, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308548, 2)
end
tItem[3308548]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308548"
tItem[3308548]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308548, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308548, 3)
end
tItem[3308548]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308548"
tItem[3308548]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308548, 4)
end
tItem[3308548]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308548"
tItem[3308548]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308548, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308548]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308548"
tItem[3308548]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308548, 1)
end
tItem[3308548]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308548, 2)
end
tItem[3308548]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308548, 3)
end
tItem[3308548]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308548, 4)
end
-- 超大固化石特惠包
tItemFace[3308549] = 1455
tItem[3308549] = CommonFunc_Copy(tItem[3308520])
tItem[3308549]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308549, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308549, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308549, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308549, 1)
end
tItem[3308549]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308549"
tItem[3308549]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308549, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308549, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308549, 2)
end
tItem[3308549]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308549"
tItem[3308549]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308549, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308549, 3)
end
tItem[3308549]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308549"
tItem[3308549]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308549, 4)
end
tItem[3308549]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308549"
tItem[3308549]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308549, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308549]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308549"
tItem[3308549]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308549, 1)
end
tItem[3308549]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308549, 2)
end
tItem[3308549]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308549, 3)
end
tItem[3308549]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308549, 4)
end
-- 优质天怒特惠包
tItemFace[3308550] = 692
tItem[3308550] = CommonFunc_Copy(tItem[3308520])
tItem[3308550]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308550, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308550, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308550, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308550, 1)
end
tItem[3308550]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308550"
tItem[3308550]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308550, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308550, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308550, 2)
end
tItem[3308550]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308550"
tItem[3308550]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308550, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308550, 3)
end
tItem[3308550]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308550"
tItem[3308550]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308550, 4)
end
tItem[3308550]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308550"
tItem[3308550]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308550, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308550]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308550"
tItem[3308550]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308550, 1)
end
tItem[3308550]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308550, 2)
end
tItem[3308550]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308550, 3)
end
tItem[3308550]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308550, 4)
end
-- 金钢坚钻特惠包
tItemFace[3308551] = 1188
tItem[3308551] = CommonFunc_Copy(tItem[3308520])
tItem[3308551]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308551, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308551, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308551, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308551, 1)
end
tItem[3308551]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308551"
tItem[3308551]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308551, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308551, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308551, 2)
end
tItem[3308551]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308551"
tItem[3308551]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308551, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308551, 3)
end
tItem[3308551]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308551"
tItem[3308551]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308551, 4)
end
tItem[3308551]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308551"
tItem[3308551]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308551, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308551]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308551"
tItem[3308551]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308551, 1)
end
tItem[3308551]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308551, 2)
end
tItem[3308551]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308551, 3)
end
tItem[3308551]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308551, 4)
end
-- 龙珠卷特惠包
tItemFace[3308552] = 1456
tItem[3308552] = CommonFunc_Copy(tItem[3308520])
tItem[3308552]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308552, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308552, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308552, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308552, 1)
end
tItem[3308552]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308552"
tItem[3308552]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308552, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308552, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308552, 2)
end
tItem[3308552]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308552"
tItem[3308552]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308552, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308552, 3)
end
tItem[3308552]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308552"
tItem[3308552]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308552, 4)
end
tItem[3308552]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308552"
tItem[3308552]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308552, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308552]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308552"
tItem[3308552]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308552, 1)
end
tItem[3308552]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308552, 2)
end
tItem[3308552]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308552, 3)
end
tItem[3308552]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308552, 4)
end
-- P7武器神魂特惠包
tItemFace[3308553] = 988
tItem[3308553] = CommonFunc_Copy(tItem[3308520])
tItem[3308553]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308553, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308553, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308553, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308553, 1)
end
tItem[3308553]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308553"
tItem[3308553]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308553, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308553, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308553, 2)
end
tItem[3308553]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308553"
tItem[3308553]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308553, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308553, 3)
end
tItem[3308553]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308553"
tItem[3308553]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308553, 4)
end
tItem[3308553]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308553"
tItem[3308553]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308553, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308553]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308553"
tItem[3308553]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308553, 1)
end
tItem[3308553]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308553, 2)
end
tItem[3308553]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308553, 3)
end
tItem[3308553]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308553, 4)
end
-- P7防具神魂特惠包
tItemFace[3308554] = 989
tItem[3308554] = CommonFunc_Copy(tItem[3308520])
tItem[3308554]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308554, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308554, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308554, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308554, 1)
end
tItem[3308554]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308554"
tItem[3308554]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308554, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308554, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308554, 2)
end
tItem[3308554]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308554"
tItem[3308554]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308554, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308554, 3)
end
tItem[3308554]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308554"
tItem[3308554]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308554, 4)
end
tItem[3308554]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308554"
tItem[3308554]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308554, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308554]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308554"
tItem[3308554]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308554, 1)
end
tItem[3308554]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308554, 2)
end
tItem[3308554]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308554, 3)
end
tItem[3308554]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308554, 4)
end
-- 小抽奖券特惠包
tItemFace[3308555] = 1457
tItem[3308555] = CommonFunc_Copy(tItem[3308520])
tItem[3308555]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308555, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308555, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308555, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308555, 1)
end
tItem[3308555]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308555"
tItem[3308555]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308555, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308555, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308555, 2)
end
tItem[3308555]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308555"
tItem[3308555]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308555, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308555, 3)
end
tItem[3308555]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308555"
tItem[3308555]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308555, 4)
end
tItem[3308555]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308555"
tItem[3308555]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308555, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308555]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308555"
tItem[3308555]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308555, 1)
end
tItem[3308555]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308555, 2)
end
tItem[3308555]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308555, 3)
end
tItem[3308555]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308555, 4)
end
-- 气力特惠包
tItemFace[3308556] = 1458
tItem[3308556] = CommonFunc_Copy(tItem[3308520])
tItem[3308556]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308556, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308556, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308556, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308556, 1)
end
tItem[3308556]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308556"
tItem[3308556]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308556, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308556, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308556, 2)
end
tItem[3308556]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308556"
tItem[3308556]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308556, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308556, 3)
end
tItem[3308556]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308556"
tItem[3308556]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308556, 4)
end
tItem[3308556]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308556"
tItem[3308556]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308556, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308556]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308556"
tItem[3308556]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308556, 1)
end
tItem[3308556]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308556, 2)
end
tItem[3308556]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308556, 3)
end
tItem[3308556]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308556, 4)
end
-- 修为特惠包
tItemFace[3308557] = 1459
tItem[3308557] = CommonFunc_Copy(tItem[3308520])
tItem[3308557]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308557, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308557, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308557, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308557, 1)
end
tItem[3308557]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308557"
tItem[3308557]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308557, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308557, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308557, 2)
end
tItem[3308557]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308557"
tItem[3308557]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308557, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308557, 3)
end
tItem[3308557]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308557"
tItem[3308557]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308557, 4)
end
tItem[3308557]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308557"
tItem[3308557]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308557, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308557]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308557"
tItem[3308557]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308557, 1)
end
tItem[3308557]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308557, 2)
end
tItem[3308557]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308557, 3)
end
tItem[3308557]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308557, 4)
end
-- 修行特惠包
tItemFace[3308558] = 1403
tItem[3308558] = CommonFunc_Copy(tItem[3308520])
tItem[3308558]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308558, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308558, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308558, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308558, 1)
end
tItem[3308558]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308558"
tItem[3308558]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308558, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308558, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308558, 2)
end
tItem[3308558]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308558"
tItem[3308558]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308558, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308558, 3)
end
tItem[3308558]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308558"
tItem[3308558]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308558, 4)
end
tItem[3308558]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308558"
tItem[3308558]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308558, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308558]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308558"
tItem[3308558]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308558, 1)
end
tItem[3308558]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308558, 2)
end
tItem[3308558]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308558, 3)
end
tItem[3308558]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308558, 4)
end
-- 究极通神特惠包
tItemFace[3308559] = 1460
tItem[3308559] = CommonFunc_Copy(tItem[3308520])
tItem[3308559]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308559, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308559, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308559, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308559, 1)
end
tItem[3308559]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308559"
tItem[3308559]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308559, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308559, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308559, 2)
end
tItem[3308559]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308559"
tItem[3308559]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308559, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308559, 3)
end
tItem[3308559]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308559"
tItem[3308559]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308559, 4)
end
tItem[3308559]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308559"
tItem[3308559]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308559, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308559]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308559"
tItem[3308559]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308559, 1)
end
tItem[3308559]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308559, 2)
end
tItem[3308559]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308559, 3)
end
tItem[3308559]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308559, 4)
end
-- 强炼丹特惠包
tItemFace[3308560] = 1461
tItem[3308560] = CommonFunc_Copy(tItem[3308520])
tItem[3308560]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308560, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308560, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308560, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308560, 1)
end
tItem[3308560]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308560"
tItem[3308560]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308560, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308560, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308560, 2)
end
tItem[3308560]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308560"
tItem[3308560]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308560, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308560, 3)
end
tItem[3308560]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308560"
tItem[3308560]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308560, 4)
end
tItem[3308560]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308560"
tItem[3308560]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308560, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308560]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308560"
tItem[3308560]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308560, 1)
end
tItem[3308560]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308560, 2)
end
tItem[3308560]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308560, 3)
end
tItem[3308560]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308560, 4)
end
-- 通神丹特惠包
tItemFace[3308561] = 1462
tItem[3308561] = CommonFunc_Copy(tItem[3308520])
tItem[3308561]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308561, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308561, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308561, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308561, 1)
end
tItem[3308561]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308561"
tItem[3308561]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308561, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308561, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308561, 2)
end
tItem[3308561]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308561"
tItem[3308561]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308561, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308561, 3)
end
tItem[3308561]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308561"
tItem[3308561]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308561, 4)
end
tItem[3308561]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308561"
tItem[3308561]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308561, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308561]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308561"
tItem[3308561]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308561, 1)
end
tItem[3308561]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308561, 2)
end
tItem[3308561]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308561, 3)
end
tItem[3308561]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308561, 4)
end
-- 至尊气力特惠包
tItemFace[3308562] = 1164
tItem[3308562] = CommonFunc_Copy(tItem[3308520])
tItem[3308562]["OptionChkFunc112"] = function()
	if AnniversaryPromotion_CashCoupon(3308562, 2) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308562, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308562, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308562, 1)
end
tItem[3308562]["OptionFunc112"] = "AnniversaryPromotion_NeedEmoneyChk</N>1</N>3308562"
tItem[3308562]["OptionChkFunc113"] = function()
	if AnniversaryPromotion_CashCoupon(3308562, 3) then
		return false
	elseif AnniversaryPromotion_CashCoupon(3308562, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308562, 2)
end
tItem[3308562]["OptionFunc113"] = "AnniversaryPromotion_NeedEmoneyChk</N>2</N>3308562"
tItem[3308562]["OptionChkFunc114"] = function()
	if AnniversaryPromotion_CashCoupon(3308562, 4) then
		return false
	end
	return AnniversaryPromotion_CashCoupon(3308562, 3)
end
tItem[3308562]["OptionFunc114"] = "AnniversaryPromotion_NeedEmoneyChk</N>3</N>3308562"
tItem[3308562]["OptionChkFunc115"] = function()
	return AnniversaryPromotion_CashCoupon(3308562, 4)
end
tItem[3308562]["OptionFunc115"] = "AnniversaryPromotion_NeedEmoneyChk</N>4</N>3308562"
tItem[3308562]["OptionChkFunc116"] = function()
	-- 如果有两种以上的代金券则显示该选项
	local nNum = 0
	for i = 1, 4 do
		if AnniversaryPromotion_CashCoupon(3308562, i) then
			nNum = nNum + 1
		end
	end
	if nNum >= 2 then
		return true
	end
	return false
end
tItem[3308562]["OptionFunc116"] = "AnniversaryPromotion_UseOtherCards</N>3308562"
tItem[3308562]["OptionChkFunc211"] = function()
	return AnniversaryPromotion_CashCoupon(3308562, 1)
end
tItem[3308562]["OptionChkFunc212"] = function()
	return AnniversaryPromotion_CashCoupon(3308562, 2)
end
tItem[3308562]["OptionChkFunc213"] = function()
	return AnniversaryPromotion_CashCoupon(3308562, 3)
end
tItem[3308562]["OptionChkFunc214"] = function()
	return AnniversaryPromotion_CashCoupon(3308562, 4)
end
-- 周年庆限时秒杀礼包
-- 八宝护气秒杀包
tItem[3308563] = tItem[3308563] or {}
tItem[3308563]["Function"] = function(nItemId,sItemName)
	AnniversaryPromotion_UseDisCountPackage(nItemId)
end
-- 秘制修炼秒杀包
-- 天机果秒杀包
-- 乾坤九转秒杀包
-- 免试金牌秒杀包
-- 龙珠秒杀包
-- 晶莹星陨石秒杀包
-- 优质玄元秒杀包
-- 净水玉瓶秒杀包
-- 灵宝葫芦秒杀包
-- +5赤炼石秒杀包
-- 七星宝钻秒杀包
-- 九转聚神特惠包
-- 海量经验特惠包
tItem[3308564] = tItem[3308563]
tItem[3308565] = tItem[3308563]
tItem[3308566] = tItem[3308563]
tItem[3308567] = tItem[3308563]
tItem[3308568] = tItem[3308563]
tItem[3308569] = tItem[3308563]
tItem[3308570] = tItem[3308563]
tItem[3308571] = tItem[3308563]
tItem[3308572] = tItem[3308563]
tItem[3308573] = tItem[3308563]
tItem[3308574] = tItem[3308563]
tItem[3308575] = tItem[3308563]
tItem[3308576] = tItem[3308563]

-- 时间自检
local tAnniversaryPromotion_OnTimeChk = {}
tAnniversaryPromotion_OnTimeChk["Type"] = 1
tAnniversaryPromotion_OnTimeChk["TimeType"] = 4
tAnniversaryPromotion_OnTimeChk["Multiple"] = {}
tAnniversaryPromotion_OnTimeChk["Multiple"][1]  = "19:55 19:59"
tAnniversaryPromotion_OnTimeChk["Func"] = AnniversaryPromotion_OnTimeChk

table.insert(tSystemTime_InitialData, tAnniversaryPromotion_OnTimeChk)