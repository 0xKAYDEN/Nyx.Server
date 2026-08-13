------------------------------------------------------------------------------------
--Name：            180626[简体征服][活动脚本]调整版本6-帮派矿洞玩法-其他NPC
--Creator:      王贤
--Created:     2018/06/26
------------------------------------------------------------------------------------
--任务需求：
-- 【矿山摇摇乐】快乐矿工 
-- 1、 开山卷
-- 2、 摇摇乐

-- 【每日宝箱】秘矿宝箱
-- 1、消灭100只矿山妖匪  每日

-- 【矿石回收】黄金矿工
-- 【矿石回收】银矿回收车
-- 【矿石回收】铜矿回收车
-- 1、回收矿石

-- 【矿石回收】流浪商人
-- 1、过期矿石回收

------------------------------------------------------------------------------------
-- stc(179, 01)  1、开采值
-- stc(179, 02)  2、开山卷领取
-- stc(179, 03)  3、个人提交开山卷数量
-- stc(179, 04)  4、购买开山卷次数
-- stc(179, 05)  5、每日开启宝箱
-- stc(179, 06)  6、怪物击杀数量记录
-- stc(179, 13)  7、每日上交金矿获得开山卷
-- stc(179, 14)  8、每日上交银矿获得开山卷
-- stc(179, 15)  9、每日上交铜矿获得开山卷
-- stc(179, 72)  10、完成矿山初探
-- stc(179, 91)  11、每日掉落矿山开奖券数量
-- stc(179, 92)  12、使用回城卷间隔
-- stc(180, 00)  13、玩家当天兑换银两
-- stc(180, 68)  14、玩家当天首次使用矿山开奖券
-- stc(183, 57)  15、玩家当天是否领取开采值分红

-- 万能神纹精粹包 每日限量10次  stc(180, 65)
-- 竞技场气力值礼包 每日限量5次  stc(180, 66)
------------------------------------------------------------------------------------
-- 前缀
-- OhterNpc_

-- LogId： 12001105
----------------------------------表配置部分--------------------------------------------
-- 收入排行榜
tRankingFunc_Info[3310001] = {}
tRankingFunc_Info[3310001]["DayTime"] = {}
tRankingFunc_Info[3310001]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[3310001]["ResetTime"] = {}
tRankingFunc_Info[3310001]["ResetTime"][1] = "00:00 00:05"
tRankingFunc_Info[3310001]["Global"] = {52915, 52916, 52917, 52918}
tRankingFunc_Info[3310001]["BeforeGlobal"] = {52919, 52920, 52921, 52922}
tRankingFunc_Info[3310001]["RankNum"] = 10
tRankingFunc_Info[3310001]["RankMode"] = 1

local tOhterNpc_Data = {}
-- 矿山摇摇乐活动时间
tOhterNpc_Data["KiddieRideTime"] = tActivityTime["FactionHole"]["KiddieRideTime"]
-- 矿车换开采值
tOhterNpc_Data["MineralOnMiner"] = tActivityTime["FactionHole"]["MineralOnMiner"]
-- 流浪商人活动时间
tOhterNpc_Data["BusinessmanTime"] = tActivityTime["FactionHole"]["BusinessmanTime"]
tOhterNpc_Data["BusinessmanTime2"] = tActivityTime["FactionHole"]["BusinessmanTime2"]
-- 矿洞ID
tOhterNpc_Data["MapId"] = 10348
-- 双龙城ID
tOhterNpc_Data["CityId"] = 1002
tOhterNpc_Data["TradeCityId"] = 10364
-- GlobalId
-- data0表示全服上交矿山开奖券数量
-- data1表示全服一小时内开箱次数
-- data2表示全服开采值奖励发放额度
-- data3表示全服活动后上交的开采值
-- data4表示全服击杀怪物掉落金矿限制数量
-- data5表示全服开采值奖励发放额度
-- time1表示铜矿车刷新
-- time2表示银矿车刷新
-- time3表示铜矿车（额外）刷新
-- time4表示银矿车（额外）刷新
tOhterNpc_Data["GlobalId"] = 52751
-- 矿车兑换额度
-- data0表示铜矿车1兑换额度              time0表示银矿车1兑换额度
-- data1表示铜矿车2兑换额度              time1表示银矿车2兑换额度
-- data2表示铜矿车3兑换额度              time2表示银矿车3兑换额度
-- data3表示铜矿车（帮派）兑换额度       time3表示银矿车（帮派）兑换额度
-- data4表示铜矿车（额外）兑换额度       time4表示银矿车（额外）兑换额度
tOhterNpc_Data["AmountId"] = 52758
-- 标志位
tOhterNpc_Data["SignGlobal"] = 52941
-- 交易服非交易服区分
tOhterNpc_Data["TradeServer"] = 52985
-- 排行榜数据
tOhterNpc_Data["RankIndex"] = 3310001
-- NPC兑换额度
tOhterNpc_Data["ExchangeNum"] = {}
tOhterNpc_Data["ExchangeNum"][2] = 125
tOhterNpc_Data["ExchangeNum"][3] = 70
-- 兑换NPC占位
tOhterNpc_Data["ExchangeNpcData"] = {}
-- 银矿
tOhterNpc_Data["ExchangeNpcData"][23054] = 0
tOhterNpc_Data["ExchangeNpcData"][23068] = 1
tOhterNpc_Data["ExchangeNpcData"][23069] = 2
tOhterNpc_Data["ExchangeNpcData"][23070] = 3
tOhterNpc_Data["ExchangeNpcData"][23071] = 4
-- 铜矿
tOhterNpc_Data["ExchangeNpcData"][23055] = 0
tOhterNpc_Data["ExchangeNpcData"][23072] = 1
tOhterNpc_Data["ExchangeNpcData"][23073] = 2
tOhterNpc_Data["ExchangeNpcData"][23074] = 3
tOhterNpc_Data["ExchangeNpcData"][23075] = 4
-- 等级限制
tOhterNpc_Data["Metempsychosis"] = 0
tOhterNpc_Data["Level"] = 80
-- 任务面板
tOhterNpc_Data["TaskId"] = 4001
tOhterNpc_Data["TaskId2"] = 4003
-- 矿山开奖券
tOhterNpc_Data["KiddieRideItemId"] = 3310001
-- 开采值奖池
tOhterNpc_Data["ExploitationJackpot"] = 5000
-- 摇摇乐奖池奖励
tOhterNpc_Data["Shake"] = {}
tOhterNpc_Data["Shake"][1] = 1500
tOhterNpc_Data["Shake"][2] = 2500
tOhterNpc_Data["Shake"][3] = 6000
tOhterNpc_Data["Shake"]["Action"] = {}
tOhterNpc_Data["Shake"]["Action"][1] = 569934
tOhterNpc_Data["Shake"]["Action"][2] = 569935
tOhterNpc_Data["Shake"]["Action"][3] = 569936
-- 提交矿渣数量
tOhterNpc_Data["SlagNum"] = 10
-- 矿渣ID
tOhterNpc_Data["SlagId"] = {}
tOhterNpc_Data["SlagId"][1]  = 1072010
tOhterNpc_Data["SlagId"][2]  = 1072011
tOhterNpc_Data["SlagId"][3]  = 1072012
tOhterNpc_Data["SlagId"][4]  = 1072013
tOhterNpc_Data["SlagId"][5]  = 1072014
tOhterNpc_Data["SlagId"][6]  = 1072015
tOhterNpc_Data["SlagId"][7]  = 1072016
tOhterNpc_Data["SlagId"][8]  = 1072017
tOhterNpc_Data["SlagId"][9]  = 1072018
tOhterNpc_Data["SlagId"][10] = 1072019
tOhterNpc_Data["SlagId"][11] = 1072020
tOhterNpc_Data["SlagId"][12] = 1072021
tOhterNpc_Data["SlagId"][13] = 1072022
tOhterNpc_Data["SlagId"][14] = 1072023
tOhterNpc_Data["SlagId"][15] = 1072024
tOhterNpc_Data["SlagId"][16] = 1072025
tOhterNpc_Data["SlagId"][17] = 1072026
tOhterNpc_Data["SlagId"][18] = 1072027
tOhterNpc_Data["SlagId"][19] = 1072028
tOhterNpc_Data["SlagId"][20] = 1072029
tOhterNpc_Data["SlagId"][21] = 1072040
tOhterNpc_Data["SlagId"][22] = 1072041
tOhterNpc_Data["SlagId"][23] = 1072042
tOhterNpc_Data["SlagId"][24] = 1072043
tOhterNpc_Data["SlagId"][25] = 1072044
tOhterNpc_Data["SlagId"][26] = 1072045
tOhterNpc_Data["SlagId"][27] = 1072046
tOhterNpc_Data["SlagId"][28] = 1072047
tOhterNpc_Data["SlagId"][29] = 1072048
tOhterNpc_Data["SlagId"][30] = 1072049
tOhterNpc_Data["SlagId"][31] = 1072050
tOhterNpc_Data["SlagId"][32] = 1072051
tOhterNpc_Data["SlagId"][33] = 1072052
tOhterNpc_Data["SlagId"][34] = 1072053
tOhterNpc_Data["SlagId"][35] = 1072054
tOhterNpc_Data["SlagId"][36] = 1072055
tOhterNpc_Data["SlagId"][37] = 1072056
tOhterNpc_Data["SlagId"][38] = 1072057
tOhterNpc_Data["SlagId"][39] = 1072058
tOhterNpc_Data["SlagId"][40] = 1072059
-- 宝箱开箱数量
tOhterNpc_Data["BoxOpenNum"] = {}
tOhterNpc_Data["BoxOpenNum"][2] = 20
tOhterNpc_Data["BoxOpenNum"][3] = 20
-- 提交数量
tOhterNpc_Data["HandInNum"] = {}
tOhterNpc_Data["HandInNum"][2] = 5
tOhterNpc_Data["HandInNum"][3] = 10
-- 邮件
tOhterNpc_Data["Letter"] = {}
-- 流浪商人奖励
tOhterNpc_Data["Letter"][1] = {}
tOhterNpc_Data["Letter"][1]["ExistDay"] = 7
tOhterNpc_Data["Letter"][1]["Sender"] = tOhterNpc_Text[23056]["Letter"]["Sender"]
tOhterNpc_Data["Letter"][1]["Title"] = tOhterNpc_Text[23056]["Letter"]["Title"]
tOhterNpc_Data["Letter"][1]["Content"] = tOhterNpc_Text[23056]["Letter"]["Content"]
-- 摇摇乐发奖
tOhterNpc_Data["Letter"][2] = {}
tOhterNpc_Data["Letter"][2]["ExistDay"] = 7
tOhterNpc_Data["Letter"][2]["Sender"] = tOhterNpc_Text[23051]["Letter"]["Sender"]
tOhterNpc_Data["Letter"][2]["Title"] = tOhterNpc_Text[23051]["Letter"]["Title"]
tOhterNpc_Data["Letter"][2]["Content"] = tOhterNpc_Text[23051]["Letter"]["Content"]
-- Log
tOhterNpc_Data["Log"] = {}
tOhterNpc_Data["Log"][1] = "0,0,0,0,12001105,4[2],3310001,1"
tOhterNpc_Data["Log"][2] = "0,0,1,%d,12001105,4[3],3310001,1"
tOhterNpc_Data["Log"]["OverTimeLog"] = "0,0,%d,%d,12001105,0,0,0"
-- EmoneyLog
tOhterNpc_Data["EmoneyLog"] = {}
-- 杀怪掉落金矿石				350 22001
tOhterNpc_Data["EmoneyLog"][1] = "350	22001	0	0	1	"
-- 挖矿获得矿石 				350	21994
tOhterNpc_Data["EmoneyLog"][2] = "350	21994	0	0	1	"
-- 开启矿洞宝箱 				350	21995
tOhterNpc_Data["EmoneyLog"][3] = "350	21995	0	0	1	"
-- 矿车处提交矿石换奖励 		350	21997
tOhterNpc_Data["EmoneyLog"][4] = "350	21997	0	0	1	"
-- 提交矿石平分流浪商人的奖金 	350	21998
tOhterNpc_Data["EmoneyLog"][5] = "350	21998	0	0	1	"
-- 参与矿洞抽奖 				350	21999
tOhterNpc_Data["EmoneyLog"][6] = "350	21999	0	0	1	"
-- 杀怪掉落铜矿石 350 21993
tOhterNpc_Data["EmoneyLog"][7] = "350	21993	0	0	1	"
-- 杀怪掉落银矿石 350 22000
tOhterNpc_Data["EmoneyLog"][8] = "350	22000	0	0	1	"


-- 矿车NPCID
tOhterNpc_Data["NpcId"] = {}
-- 黄金矿工
tOhterNpc_Data["NpcId"][1] = {}
tOhterNpc_Data["NpcId"][1][1] = {}
tOhterNpc_Data["NpcId"][1][1]["Id"] = 23053
tOhterNpc_Data["NpcId"][1][1]["PosX"] = 370
tOhterNpc_Data["NpcId"][1][1]["PosY"] = 351
-- 银矿回收车
tOhterNpc_Data["NpcId"][2] = {}
tOhterNpc_Data["NpcId"][2][1] = {}
tOhterNpc_Data["NpcId"][2][1]["Id"] = 23054
tOhterNpc_Data["NpcId"][2][1]["PosX"] = 237
tOhterNpc_Data["NpcId"][2][1]["PosY"] = 358
tOhterNpc_Data["NpcId"][2][2] = {}
tOhterNpc_Data["NpcId"][2][2]["Id"] = 23068
tOhterNpc_Data["NpcId"][2][2]["PosX"] = 404
tOhterNpc_Data["NpcId"][2][2]["PosY"] = 349
tOhterNpc_Data["NpcId"][2][3] = {}
tOhterNpc_Data["NpcId"][2][3]["Id"] = 23069
tOhterNpc_Data["NpcId"][2][3]["PosX"] = 306
tOhterNpc_Data["NpcId"][2][3]["PosY"] = 183
tOhterNpc_Data["NpcId"][2][4] = {}
tOhterNpc_Data["NpcId"][2][4]["Id"] = 23070
tOhterNpc_Data["NpcId"][2][4]["PosX"] = 285
tOhterNpc_Data["NpcId"][2][4]["PosY"] = 287
tOhterNpc_Data["NpcId"][2][5] = {}
tOhterNpc_Data["NpcId"][2][5]["Id"] = 23071
tOhterNpc_Data["NpcId"][2][5]["PosX"] = 147
tOhterNpc_Data["NpcId"][2][5]["PosY"] = 195
-- 铜矿回收车
tOhterNpc_Data["NpcId"][3] = {}
tOhterNpc_Data["NpcId"][3][1] = {}
tOhterNpc_Data["NpcId"][3][1]["Id"] = 23055
tOhterNpc_Data["NpcId"][3][1]["PosX"] = 230
tOhterNpc_Data["NpcId"][3][1]["PosY"] = 306
tOhterNpc_Data["NpcId"][3][2] = {}
tOhterNpc_Data["NpcId"][3][2]["Id"] = 23072
tOhterNpc_Data["NpcId"][3][2]["PosX"] = 370
tOhterNpc_Data["NpcId"][3][2]["PosY"] = 370
tOhterNpc_Data["NpcId"][3][3] = {}
tOhterNpc_Data["NpcId"][3][3]["Id"] = 23073
tOhterNpc_Data["NpcId"][3][3]["PosX"] = 377
tOhterNpc_Data["NpcId"][3][3]["PosY"] = 231
tOhterNpc_Data["NpcId"][3][4] = {}
tOhterNpc_Data["NpcId"][3][4]["Id"] = 23074
tOhterNpc_Data["NpcId"][3][4]["PosX"] = 309
tOhterNpc_Data["NpcId"][3][4]["PosY"] = 260
tOhterNpc_Data["NpcId"][3][5] = {}
tOhterNpc_Data["NpcId"][3][5]["Id"] = 23075
tOhterNpc_Data["NpcId"][3][5]["PosX"] = 118
tOhterNpc_Data["NpcId"][3][5]["PosY"] = 112
-- 流浪商人
tOhterNpc_Data["NpcId"][4] = {}
tOhterNpc_Data["NpcId"][4][1] = {}
tOhterNpc_Data["NpcId"][4][1]["Id"] = 23056
tOhterNpc_Data["NpcId"][4][1]["PosX"] = 351
tOhterNpc_Data["NpcId"][4][1]["PosY"] = 320
-- 交易服
tOhterNpc_Data["NpcId"][4][2] = {}
tOhterNpc_Data["NpcId"][4][2]["Id"] = 23056
tOhterNpc_Data["NpcId"][4][2]["PosX"] = 305
tOhterNpc_Data["NpcId"][4][2]["PosY"] = 280
-- 秘矿宝箱
tOhterNpc_Data["NpcId"][5] = {}
tOhterNpc_Data["NpcId"][5][1] = {}
tOhterNpc_Data["NpcId"][5][1]["Id"] = 23052
tOhterNpc_Data["NpcId"][5][1]["PosX"] = 151
tOhterNpc_Data["NpcId"][5][1]["PosY"] = 250
-- 矿山
tOhterNpc_Data["NpcId"][6] = {}
tOhterNpc_Data["NpcId"][6][1] = {}
tOhterNpc_Data["NpcId"][6][1]["Id"] = 17980
tOhterNpc_Data["NpcId"][6][1]["PosX"] = 346
tOhterNpc_Data["NpcId"][6][1]["PosY"] = 323
-- 交易服
tOhterNpc_Data["NpcId"][6][2] = {}
tOhterNpc_Data["NpcId"][6][2]["Id"] = 17980
tOhterNpc_Data["NpcId"][6][2]["PosX"] = 315
tOhterNpc_Data["NpcId"][6][2]["PosY"] = 280
-- 快乐矿工
tOhterNpc_Data["NpcId"][7] = {}
tOhterNpc_Data["NpcId"][7][1] = {}
tOhterNpc_Data["NpcId"][7][1]["Id"] = 23051
tOhterNpc_Data["NpcId"][7][1]["PosX"] = 151
tOhterNpc_Data["NpcId"][7][1]["PosY"] = 244
-- 地火熔炉
tOhterNpc_Data["NpcId"][8] = {}
tOhterNpc_Data["NpcId"][8][1] = {}
tOhterNpc_Data["NpcId"][8][1]["Id"] = 23057
tOhterNpc_Data["NpcId"][8][1]["PosX"] = 243
tOhterNpc_Data["NpcId"][8][1]["PosY"] = 242
--矿山回城卷使用
tOhterNpc_Data["NpcId"][9] = {}
tOhterNpc_Data["NpcId"][9][1] = {}
tOhterNpc_Data["NpcId"][9][1]["PosX"] = 343
tOhterNpc_Data["NpcId"][9][1]["PosY"] = 328
-- 交易服
tOhterNpc_Data["NpcId"][9][2] = {}
tOhterNpc_Data["NpcId"][9][2]["PosX"] = 313
tOhterNpc_Data["NpcId"][9][2]["PosY"] = 288
-- 神秘铁匠
tOhterNpc_Data["NpcId"][10] = {}
tOhterNpc_Data["NpcId"][10][1] = {}
tOhterNpc_Data["NpcId"][10][1]["Id"] = 23250
tOhterNpc_Data["NpcId"][10][1]["PosX"] = 145
tOhterNpc_Data["NpcId"][10][1]["PosY"] = 262

-- 掩码
tOhterNpc_Data["Stc"] = {}
tOhterNpc_Data["Stc"]["Event"] = {}
tOhterNpc_Data["Stc"]["Data"] = {}
-- stc(179, 01)  1、开采值
tOhterNpc_Data["Stc"]["Event"][1] = 179
tOhterNpc_Data["Stc"]["Data"][1] = 01
-- stc(179, 02)  2、矿山开奖券领取
tOhterNpc_Data["Stc"]["Event"][2] = 179
tOhterNpc_Data["Stc"]["Data"][2] = 02
-- stc(179, 03)  3、个人提交矿山开奖券数量
tOhterNpc_Data["Stc"]["Event"][3] = 179
tOhterNpc_Data["Stc"]["Data"][3] = 03
-- stc(179, 04)  4、购买矿山开奖券次数
tOhterNpc_Data["Stc"]["Event"][4] = 179
tOhterNpc_Data["Stc"]["Data"][4] = 04
-- stc(179, 05)  5、每日开启宝箱
tOhterNpc_Data["Stc"]["Event"][5] = 179
tOhterNpc_Data["Stc"]["Data"][5] = 05
-- stc(179, 06)  6、怪物击杀数量记录
tOhterNpc_Data["Stc"]["Event"][6] = 179
tOhterNpc_Data["Stc"]["Data"][6] = 06
-- stc(179, 13)  7、每日上交金矿获得矿山开奖券
tOhterNpc_Data["Stc"]["Event"][7] = 179
tOhterNpc_Data["Stc"]["Data"][7] = 13
-- stc(179, 14)  8、每日上交银矿获得矿山开奖券
tOhterNpc_Data["Stc"]["Event"][8] = 179
tOhterNpc_Data["Stc"]["Data"][8] = 14
-- stc(179, 15)  9、每日上交铜矿获得矿山开奖券
tOhterNpc_Data["Stc"]["Event"][9] = 179
tOhterNpc_Data["Stc"]["Data"][9] = 15
-- stc(179, 72)  10、完成矿山初探
tOhterNpc_Data["Stc"]["Event"][10] = 179
tOhterNpc_Data["Stc"]["Data"][10] = 72
-- stc(179, 91)  11、每日掉落矿山开奖券数量
tOhterNpc_Data["Stc"]["Event"][11] = 179
tOhterNpc_Data["Stc"]["Data"][11] = 91
-- stc(179, 92)  12、使用回城卷间隔
tOhterNpc_Data["Stc"]["Event"][12] = 179
tOhterNpc_Data["Stc"]["Data"][12] = 92
-- stc(180, 00)  13、玩家当天兑换银两
tOhterNpc_Data["Stc"]["Event"][13] = 180
tOhterNpc_Data["Stc"]["Data"][13] = 00
-- stc(180, 68)  14、玩家当天首次使用矿山开奖券
tOhterNpc_Data["Stc"]["Event"][14] = 180
tOhterNpc_Data["Stc"]["Data"][14] = 68
-- stc(183, 57)  15、玩家当天是否领取开采值分红
tOhterNpc_Data["Stc"]["Event"][15] = 183
tOhterNpc_Data["Stc"]["Data"][15] = 57
-- 竞技场积分商店礼包每日限量使用
tOhterNpc_Data["HonerStc"] = {}
tOhterNpc_Data["HonerStc"]["Event"] = {}
tOhterNpc_Data["HonerStc"]["Data"] = {}
tOhterNpc_Data["HonerStc"]["Times"] = {}
-- 万能神纹精粹包 每日限量10次  stc(180, 65)
tOhterNpc_Data["HonerStc"]["Times"][1] = 10
tOhterNpc_Data["HonerStc"]["Event"][1] = 180
tOhterNpc_Data["HonerStc"]["Data"][1] = 65
-- 竞技场气力值礼包 每日限量5次  stc(180, 66)
tOhterNpc_Data["HonerStc"]["Times"][2] = 5
tOhterNpc_Data["HonerStc"]["Event"][2] = 180
tOhterNpc_Data["HonerStc"]["Data"][2] = 66
-- 购买矿山开奖券金额
tOhterNpc_Data["BuyKiddieRide"] = {}
tOhterNpc_Data["BuyKiddieRide"][0] = 20000
tOhterNpc_Data["BuyKiddieRide"][1] = 50000
tOhterNpc_Data["BuyKiddieRide"][2] = 100000
tOhterNpc_Data["BuyKiddieRide"][3] = 100000
tOhterNpc_Data["BuyKiddieRide"][4] = 100000
tOhterNpc_Data["BuyKiddieRide"][5] = 100000
tOhterNpc_Data["BuyKiddieRide"][6] = 100000
tOhterNpc_Data["BuyKiddieRide"]["CanBuyNum"] = 6
-- 每日兑换血色勋章播报
tOhterNpc_Data["UserDayReward"] = 300
-- 网址
tOhterNpc_Data["WebPage"] = ""
-- 矿石ID
tOhterNpc_Data["Mineral"] = {}
-- 金矿
tOhterNpc_Data["Mineral"][1] = {}
tOhterNpc_Data["Mineral"][1][1] = {}
tOhterNpc_Data["Mineral"][1][1]["ItemId"] = 3310002
tOhterNpc_Data["Mineral"][1][1]["Value"] = 100
tOhterNpc_Data["Mineral"][1][2] = {}
tOhterNpc_Data["Mineral"][1][2]["ItemId"] = 3310003
tOhterNpc_Data["Mineral"][1][2]["Value"] = 150
tOhterNpc_Data["Mineral"][1][3] = {}
tOhterNpc_Data["Mineral"][1][3]["ItemId"] = 3310004
tOhterNpc_Data["Mineral"][1][3]["Value"] = 200
tOhterNpc_Data["Mineral"][1][4] = {}
tOhterNpc_Data["Mineral"][1][4]["ItemId"] = 3310005
tOhterNpc_Data["Mineral"][1][4]["Value"] = 300
tOhterNpc_Data["Mineral"][1][5] = {}
tOhterNpc_Data["Mineral"][1][5]["ItemId"] = 3310006
tOhterNpc_Data["Mineral"][1][5]["Value"] = 500
-- 银矿
tOhterNpc_Data["Mineral"][2] = {}
tOhterNpc_Data["Mineral"][2][1] = {}
tOhterNpc_Data["Mineral"][2][1]["ItemId"] = 3310007
tOhterNpc_Data["Mineral"][2][1]["Value"] = 15
tOhterNpc_Data["Mineral"][2][2] = {}
tOhterNpc_Data["Mineral"][2][2]["ItemId"] = 3310008
tOhterNpc_Data["Mineral"][2][2]["Value"] = 20
tOhterNpc_Data["Mineral"][2][3] = {}
tOhterNpc_Data["Mineral"][2][3]["ItemId"] = 3310009
tOhterNpc_Data["Mineral"][2][3]["Value"] = 30
tOhterNpc_Data["Mineral"][2][4] = {}
tOhterNpc_Data["Mineral"][2][4]["ItemId"] = 3310010
tOhterNpc_Data["Mineral"][2][4]["Value"] = 50
tOhterNpc_Data["Mineral"][2][5] = {}
tOhterNpc_Data["Mineral"][2][5]["ItemId"] = 3310011
tOhterNpc_Data["Mineral"][2][5]["Value"] = 80
-- 铜矿
tOhterNpc_Data["Mineral"][3] = {}
tOhterNpc_Data["Mineral"][3][1] = {}
tOhterNpc_Data["Mineral"][3][1]["ItemId"] = 3310012
tOhterNpc_Data["Mineral"][3][1]["Value"] = 3
tOhterNpc_Data["Mineral"][3][2] = {}
tOhterNpc_Data["Mineral"][3][2]["ItemId"] = 3310013
tOhterNpc_Data["Mineral"][3][2]["Value"] = 4
tOhterNpc_Data["Mineral"][3][3] = {}
tOhterNpc_Data["Mineral"][3][3]["ItemId"] = 3310014
tOhterNpc_Data["Mineral"][3][3]["Value"] = 5
tOhterNpc_Data["Mineral"][3][4] = {}
tOhterNpc_Data["Mineral"][3][4]["ItemId"] = 3310015
tOhterNpc_Data["Mineral"][3][4]["Value"] = 8
tOhterNpc_Data["Mineral"][3][5] = {}
tOhterNpc_Data["Mineral"][3][5]["ItemId"] = 3310016
tOhterNpc_Data["Mineral"][3][5]["Value"] = 10
-- 开采值
tOhterNpc_Data["ExploitationValue"] = {}
-- 银矿
tOhterNpc_Data["ExploitationValue"][2] = {}
tOhterNpc_Data["ExploitationValue"][2][1] = 15
tOhterNpc_Data["ExploitationValue"][2][2] = 30
tOhterNpc_Data["ExploitationValue"][2][3] = 60
tOhterNpc_Data["ExploitationValue"][2][4] = 100
tOhterNpc_Data["ExploitationValue"][2][5] = 150
-- 铜矿
tOhterNpc_Data["ExploitationValue"][3] = {}
tOhterNpc_Data["ExploitationValue"][3][1] = 3
tOhterNpc_Data["ExploitationValue"][3][2] = 6
tOhterNpc_Data["ExploitationValue"][3][3] = 12
tOhterNpc_Data["ExploitationValue"][3][4] = 20
tOhterNpc_Data["ExploitationValue"][3][5] = 30


local tOhterNpc_Reward = {}
-- 领取矿山开奖券
tOhterNpc_Reward["MineLottery"] = {}
tOhterNpc_Reward["MineLottery"]["RewardItem"] = {}
tOhterNpc_Reward["MineLottery"]["RewardItem"][1] = {}
tOhterNpc_Reward["MineLottery"]["RewardItem"][1]["Id"] = 3310001
tOhterNpc_Reward["MineLottery"]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["MineLottery"]["Talk"] = tOhterNpc_Text["SysTalk"]["RewardMineLottery"]
tOhterNpc_Reward["MineLottery"]["LogId"] = 12001105
tOhterNpc_Reward["MineLottery"]["LogStep"] = "4[1]"
tOhterNpc_Reward["MineLottery"]["RewardEffect"] = {}
tOhterNpc_Reward["MineLottery"]["RewardEffect"]["Effect"] = "zf2-e128"
-- 购买矿山开奖券
tOhterNpc_Reward["BuyMineLottery"] = {}
tOhterNpc_Reward["BuyMineLottery"]["RewardItem"] = {}
tOhterNpc_Reward["BuyMineLottery"]["RewardItem"][1] = {}
tOhterNpc_Reward["BuyMineLottery"]["RewardItem"][1]["Id"] = 3310001
tOhterNpc_Reward["BuyMineLottery"]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["BuyMineLottery"]["Talk"] = tOhterNpc_Text["SysTalk"]["BuyMineLottery"]
tOhterNpc_Reward["BuyMineLottery"]["LogId"] = 12001105
tOhterNpc_Reward["BuyMineLottery"]["LogStep"] = "4[2]"
tOhterNpc_Reward["BuyMineLottery"]["RewardEffect"] = {}
tOhterNpc_Reward["BuyMineLottery"]["RewardEffect"]["Effect"] = "zf2-e128"

tOhterNpc_Reward["AdditionalReward"] = {}
-- 提交金矿额外获得矿山开奖卷
tOhterNpc_Reward["AdditionalReward"][1] = {}
tOhterNpc_Reward["AdditionalReward"][1]["RewardItem"] = {}
tOhterNpc_Reward["AdditionalReward"][1]["RewardItem"][1] = {}
tOhterNpc_Reward["AdditionalReward"][1]["RewardItem"][1]["Id"] = 3310001
tOhterNpc_Reward["AdditionalReward"][1]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["AdditionalReward"][1]["LogId"] = 12001105
tOhterNpc_Reward["AdditionalReward"][1]["LogStep"] = "4[4]"
tOhterNpc_Reward["AdditionalReward"][1]["RewardEffect"] = {}
tOhterNpc_Reward["AdditionalReward"][1]["RewardEffect"]["Effect"] = "zf2-e128"
-- 提交银矿额外获得矿山开奖卷
tOhterNpc_Reward["AdditionalReward"][2] = {}
tOhterNpc_Reward["AdditionalReward"][2]["RewardItem"] = {}
tOhterNpc_Reward["AdditionalReward"][2]["RewardItem"][1] = {}
tOhterNpc_Reward["AdditionalReward"][2]["RewardItem"][1]["Id"] = 3310001
tOhterNpc_Reward["AdditionalReward"][2]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["AdditionalReward"][2]["LogId"] = 12001105
tOhterNpc_Reward["AdditionalReward"][2]["LogStep"] = "4[5]"
tOhterNpc_Reward["AdditionalReward"][2]["RewardEffect"] = {}
tOhterNpc_Reward["AdditionalReward"][2]["RewardEffect"]["Effect"] = "zf2-e128"
-- 提交铜矿额外获得矿山开奖卷
tOhterNpc_Reward["AdditionalReward"][3] = {}
tOhterNpc_Reward["AdditionalReward"][3]["RewardItem"] = {}
tOhterNpc_Reward["AdditionalReward"][3]["RewardItem"][1] = {}
tOhterNpc_Reward["AdditionalReward"][3]["RewardItem"][1]["Id"] = 3310001
tOhterNpc_Reward["AdditionalReward"][3]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["AdditionalReward"][3]["LogId"] = 12001105
tOhterNpc_Reward["AdditionalReward"][3]["LogStep"] = "4[6]"
tOhterNpc_Reward["AdditionalReward"][3]["RewardEffect"] = {}
tOhterNpc_Reward["AdditionalReward"][3]["RewardEffect"]["Effect"] = "zf2-e128"
-- 领取宝箱奖励
tOhterNpc_Reward["BoxReward"] = {}
-- 正常服
tOhterNpc_Reward["BoxReward"][1] = {}
-- 500点气力值
tOhterNpc_Reward["BoxReward"][1][1] = {}
tOhterNpc_Reward["BoxReward"][1][1]["RewardItem"] = {}
tOhterNpc_Reward["BoxReward"][1][1]["RewardItem"][1] = {}
tOhterNpc_Reward["BoxReward"][1][1]["RewardItem"][1]["Id"] = 3304328
tOhterNpc_Reward["BoxReward"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["BoxReward"][1][1]["LogId"] = 12001105
tOhterNpc_Reward["BoxReward"][1][1]["LogStep"] = "1[1]"
tOhterNpc_Reward["BoxReward"][1][1]["RewardEffect"] = {}
tOhterNpc_Reward["BoxReward"][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
-- 1颗明亮星陨石
tOhterNpc_Reward["BoxReward"][1][2] = {}
tOhterNpc_Reward["BoxReward"][1][2]["RewardItem"] = {}
tOhterNpc_Reward["BoxReward"][1][2]["RewardItem"][1] = {}
tOhterNpc_Reward["BoxReward"][1][2]["RewardItem"][1]["Id"] = 3009001
tOhterNpc_Reward["BoxReward"][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tOhterNpc_Reward["BoxReward"][1][2]["LogId"] = 12001105
tOhterNpc_Reward["BoxReward"][1][2]["LogStep"] = "1[2]"
tOhterNpc_Reward["BoxReward"][1][2]["RewardEffect"] = {}
tOhterNpc_Reward["BoxReward"][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
-- 2颗+2赤炼石（赠）
tOhterNpc_Reward["BoxReward"][1][3] = {}
tOhterNpc_Reward["BoxReward"][1][3]["RewardItem"] = {}
tOhterNpc_Reward["BoxReward"][1][3]["RewardItem"][1] = {}
tOhterNpc_Reward["BoxReward"][1][3]["RewardItem"][1]["Id"] = 730002
tOhterNpc_Reward["BoxReward"][1][3]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
tOhterNpc_Reward["BoxReward"][1][3]["LogId"] = 12001105
tOhterNpc_Reward["BoxReward"][1][3]["LogStep"] = "1[3]"
tOhterNpc_Reward["BoxReward"][1][3]["RewardEffect"] = {}
tOhterNpc_Reward["BoxReward"][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
-- 交易服
tOhterNpc_Reward["BoxReward"][2] = {}
-- 500点气力值
tOhterNpc_Reward["BoxReward"][2][1] = {}
tOhterNpc_Reward["BoxReward"][2][1]["RewardItem"] = {}
tOhterNpc_Reward["BoxReward"][2][1]["RewardItem"][1] = {}
tOhterNpc_Reward["BoxReward"][2][1]["RewardItem"][1]["Id"] = 3304328
tOhterNpc_Reward["BoxReward"][2][1]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["BoxReward"][2][1]["LogId"] = 12001105
tOhterNpc_Reward["BoxReward"][2][1]["LogStep"] = "1[1]"
tOhterNpc_Reward["BoxReward"][2][1]["RewardEffect"] = {}
tOhterNpc_Reward["BoxReward"][2][1]["RewardEffect"]["Effect"] = "zf2-e128"
-- 1颗明亮星陨石
tOhterNpc_Reward["BoxReward"][2][2] = {}
tOhterNpc_Reward["BoxReward"][2][2]["RewardItem"] = {}
tOhterNpc_Reward["BoxReward"][2][2]["RewardItem"][1] = {}
tOhterNpc_Reward["BoxReward"][2][2]["RewardItem"][1]["Id"] = 3009001
tOhterNpc_Reward["BoxReward"][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tOhterNpc_Reward["BoxReward"][2][2]["LogId"] = 12001105
tOhterNpc_Reward["BoxReward"][2][2]["LogStep"] = "1[2]"
tOhterNpc_Reward["BoxReward"][2][2]["RewardEffect"] = {}
tOhterNpc_Reward["BoxReward"][2][2]["RewardEffect"]["Effect"] = "zf2-e128"
-- 2颗+2赤炼石（赠）
tOhterNpc_Reward["BoxReward"][2][3] = {}
tOhterNpc_Reward["BoxReward"][2][3]["RewardItem"] = {}
tOhterNpc_Reward["BoxReward"][2][3]["RewardItem"][1] = {}
tOhterNpc_Reward["BoxReward"][2][3]["RewardItem"][1]["Id"] = 730002
tOhterNpc_Reward["BoxReward"][2][3]["RewardItem"][1]["Attr"] = "0 2 0 10080 1"
tOhterNpc_Reward["BoxReward"][2][3]["LogId"] = 12001105
tOhterNpc_Reward["BoxReward"][2][3]["LogStep"] = "1[3]"
tOhterNpc_Reward["BoxReward"][2][3]["RewardEffect"] = {}
tOhterNpc_Reward["BoxReward"][2][3]["RewardEffect"]["Effect"] = "zf2-e128"
-- 领取宝箱幸运奖励
tOhterNpc_Reward["BoxRewardLucky"] = {}
-- 正常服
tOhterNpc_Reward["BoxRewardLucky"][1] = {}
-- 3000点气力值
tOhterNpc_Reward["BoxRewardLucky"][1][1] = {}
tOhterNpc_Reward["BoxRewardLucky"][1][1]["RewardItem"] = {}
tOhterNpc_Reward["BoxRewardLucky"][1][1]["RewardItem"][1] = {}
tOhterNpc_Reward["BoxRewardLucky"][1][1]["RewardItem"][1]["Id"] = 3304333
tOhterNpc_Reward["BoxRewardLucky"][1][1]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["BoxRewardLucky"][1][1]["LogId"] = 12001105
tOhterNpc_Reward["BoxRewardLucky"][1][1]["LogStep"] = "1[1]"
tOhterNpc_Reward["BoxRewardLucky"][1][1]["RewardEffect"] = {}
tOhterNpc_Reward["BoxRewardLucky"][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
-- 1颗晶莹星陨石
tOhterNpc_Reward["BoxRewardLucky"][1][2] = {}
tOhterNpc_Reward["BoxRewardLucky"][1][2]["RewardItem"] = {}
tOhterNpc_Reward["BoxRewardLucky"][1][2]["RewardItem"][1] = {}
tOhterNpc_Reward["BoxRewardLucky"][1][2]["RewardItem"][1]["Id"] = 3009002
tOhterNpc_Reward["BoxRewardLucky"][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tOhterNpc_Reward["BoxRewardLucky"][1][2]["LogId"] = 12001105
tOhterNpc_Reward["BoxRewardLucky"][1][2]["LogStep"] = "1[2]"
tOhterNpc_Reward["BoxRewardLucky"][1][2]["RewardEffect"] = {}
tOhterNpc_Reward["BoxRewardLucky"][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
-- 1颗+5赤炼石（赠）
tOhterNpc_Reward["BoxRewardLucky"][1][3] = {}
tOhterNpc_Reward["BoxRewardLucky"][1][3]["RewardItem"] = {}
tOhterNpc_Reward["BoxRewardLucky"][1][3]["RewardItem"][1] = {}
tOhterNpc_Reward["BoxRewardLucky"][1][3]["RewardItem"][1]["Id"] = 730005
tOhterNpc_Reward["BoxRewardLucky"][1][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tOhterNpc_Reward["BoxRewardLucky"][1][3]["LogId"] = 12001105
tOhterNpc_Reward["BoxRewardLucky"][1][3]["LogStep"] = "1[3]"
tOhterNpc_Reward["BoxRewardLucky"][1][3]["RewardEffect"] = {}
tOhterNpc_Reward["BoxRewardLucky"][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
-- 交易服
tOhterNpc_Reward["BoxRewardLucky"][2] = {}
-- 3000点气力值
tOhterNpc_Reward["BoxRewardLucky"][2][1] = {}
tOhterNpc_Reward["BoxRewardLucky"][2][1]["RewardItem"] = {}
tOhterNpc_Reward["BoxRewardLucky"][2][1]["RewardItem"][1] = {}
tOhterNpc_Reward["BoxRewardLucky"][2][1]["RewardItem"][1]["Id"] = 3304333
tOhterNpc_Reward["BoxRewardLucky"][2][1]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["BoxRewardLucky"][2][1]["LogId"] = 12001105
tOhterNpc_Reward["BoxRewardLucky"][2][1]["LogStep"] = "1[1]"
tOhterNpc_Reward["BoxRewardLucky"][2][1]["RewardEffect"] = {}
tOhterNpc_Reward["BoxRewardLucky"][2][1]["RewardEffect"]["Effect"] = "zf2-e128"
-- 1颗晶莹星陨石
tOhterNpc_Reward["BoxRewardLucky"][2][2] = {}
tOhterNpc_Reward["BoxRewardLucky"][2][2]["RewardItem"] = {}
tOhterNpc_Reward["BoxRewardLucky"][2][2]["RewardItem"][1] = {}
tOhterNpc_Reward["BoxRewardLucky"][2][2]["RewardItem"][1]["Id"] = 3009002
tOhterNpc_Reward["BoxRewardLucky"][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tOhterNpc_Reward["BoxRewardLucky"][2][2]["LogId"] = 12001105
tOhterNpc_Reward["BoxRewardLucky"][2][2]["LogStep"] = "1[2]"
tOhterNpc_Reward["BoxRewardLucky"][2][2]["RewardEffect"] = {}
tOhterNpc_Reward["BoxRewardLucky"][2][2]["RewardEffect"]["Effect"] = "zf2-e128"
-- 1颗+5赤炼石（赠）
tOhterNpc_Reward["BoxRewardLucky"][2][3] = {}
tOhterNpc_Reward["BoxRewardLucky"][2][3]["RewardItem"] = {}
tOhterNpc_Reward["BoxRewardLucky"][2][3]["RewardItem"][1] = {}
tOhterNpc_Reward["BoxRewardLucky"][2][3]["RewardItem"][1]["Id"] = 730005
tOhterNpc_Reward["BoxRewardLucky"][2][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
tOhterNpc_Reward["BoxRewardLucky"][2][3]["LogId"] = 12001105
tOhterNpc_Reward["BoxRewardLucky"][2][3]["LogStep"] = "1[3]"
tOhterNpc_Reward["BoxRewardLucky"][2][3]["RewardEffect"] = {}
tOhterNpc_Reward["BoxRewardLucky"][2][3]["RewardEffect"]["Effect"] = "zf2-e128"
-- 矿石兑换金币
tOhterNpc_Reward["MineralExchange"] = {}
-- 金矿
tOhterNpc_Reward["MineralExchange"][1] = {}
tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"] = {}
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][1] = {}
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][1]["Id"] = 3310002
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][1]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][2] = {}
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][2]["Id"] = 3310003
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][2]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][3] = {}
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][3]["Id"] = 3310004
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][3]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][4] = {}
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][4]["Id"] = 3310005
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][4]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][5] = {}
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][5]["Id"] = 3310006
-- tOhterNpc_Reward["MineralExchange"][1]["DeleteItem"][5]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][1]["RewardMoney"] = {}
-- tOhterNpc_Reward["MineralExchange"][1]["RewardMoney"]["Value"] = 0
tOhterNpc_Reward["MineralExchange"][1]["RewardItem"] = {}
tOhterNpc_Reward["MineralExchange"][1]["RewardItem"][1] = {}
tOhterNpc_Reward["MineralExchange"][1]["RewardItem"][1]["Id"] = 3310781
tOhterNpc_Reward["MineralExchange"][1]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["MineralExchange"][1]["LogId"] = 12001105
tOhterNpc_Reward["MineralExchange"][1]["LogStep"] = "2[1]"
tOhterNpc_Reward["MineralExchange"][1]["RewardEffect"] = {}
tOhterNpc_Reward["MineralExchange"][1]["RewardEffect"]["Effect"] = "zf2-e128"
-- 银矿
tOhterNpc_Reward["MineralExchange"][2] = {}
tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"] = {}
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][1] = {}
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][1]["Id"] = 3310007
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][1]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][2] = {}
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][2]["Id"] = 3310008
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][2]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][3] = {}
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][3]["Id"] = 3310009
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][3]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][4] = {}
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][4]["Id"] = 3310010
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][4]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][5] = {}
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][5]["Id"] = 3310011
-- tOhterNpc_Reward["MineralExchange"][2]["DeleteItem"][5]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][2]["RewardMoney"] = {}
-- tOhterNpc_Reward["MineralExchange"][2]["RewardMoney"]["Value"] = 0
tOhterNpc_Reward["MineralExchange"][2]["RewardItem"] = {}
tOhterNpc_Reward["MineralExchange"][2]["RewardItem"][1] = {}
tOhterNpc_Reward["MineralExchange"][2]["RewardItem"][1]["Id"] = 3310781
tOhterNpc_Reward["MineralExchange"][2]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["MineralExchange"][2]["LogId"] = 12001105
tOhterNpc_Reward["MineralExchange"][2]["LogStep"] = "2[2]"
tOhterNpc_Reward["MineralExchange"][2]["RewardEffect"] = {}
tOhterNpc_Reward["MineralExchange"][2]["RewardEffect"]["Effect"] = "zf2-e128"
-- 铜矿
tOhterNpc_Reward["MineralExchange"][3] = {}
tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"] = {}
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][1] = {}
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][1]["Id"] = 3310012
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][1]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][2] = {}
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][2]["Id"] = 3310013
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][2]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][3] = {}
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][3]["Id"] = 3310014
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][3]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][4] = {}
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][4]["Id"] = 3310015
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][4]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][5] = {}
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][5]["Id"] = 3310016
-- tOhterNpc_Reward["MineralExchange"][3]["DeleteItem"][5]["ItemNum"] = 0
-- tOhterNpc_Reward["MineralExchange"][3]["RewardMoney"] = {}
-- tOhterNpc_Reward["MineralExchange"][3]["RewardMoney"]["Value"] = 0
tOhterNpc_Reward["MineralExchange"][3]["RewardItem"] = {}
tOhterNpc_Reward["MineralExchange"][3]["RewardItem"][1] = {}
tOhterNpc_Reward["MineralExchange"][3]["RewardItem"][1]["Id"] = 3310781
tOhterNpc_Reward["MineralExchange"][3]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["MineralExchange"][3]["LogId"] = 12001105
tOhterNpc_Reward["MineralExchange"][3]["LogStep"] = "2[3]"
tOhterNpc_Reward["MineralExchange"][3]["RewardEffect"] = {}
tOhterNpc_Reward["MineralExchange"][3]["RewardEffect"]["Effect"] = "zf2-e128"

tOhterNpc_Reward["Exploitation"] = {}
-- 银矿
tOhterNpc_Reward["Exploitation"][2] = {}
tOhterNpc_Reward["Exploitation"][2]["DeleteItem"] = {}
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][1] = {}
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][1]["Id"] = 3310002
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][1]["ItemNum"] = 0
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][2] = {}
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][2]["Id"] = 3310003
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][2]["ItemNum"] = 0
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][3] = {}
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][3]["Id"] = 3310004
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][3]["ItemNum"] = 0
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][4] = {}
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][4]["Id"] = 3310005
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][4]["ItemNum"] = 0
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][5] = {}
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][5]["Id"] = 3310006
-- tOhterNpc_Reward["Exploitation"][2]["DeleteItem"][5]["ItemNum"] = 0
tOhterNpc_Reward["Exploitation"][2]["RewardItem"] = {}
tOhterNpc_Reward["Exploitation"][2]["LogId"] = 12001105
tOhterNpc_Reward["Exploitation"][2]["LogStep"] = "3[2]"
tOhterNpc_Reward["Exploitation"][2]["RewardEffect"] = {}
tOhterNpc_Reward["Exploitation"][2]["RewardEffect"]["Effect"] = "zf2-e128"
-- 铜矿
tOhterNpc_Reward["Exploitation"][3] = {}
tOhterNpc_Reward["Exploitation"][3]["DeleteItem"] = {}
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][1] = {}
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][1]["Id"] = 3310002
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][1]["ItemNum"] = 0
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][2] = {}
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][2]["Id"] = 3310003
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][2]["ItemNum"] = 0
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][3] = {}
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][3]["Id"] = 3310004
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][3]["ItemNum"] = 0
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][4] = {}
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][4]["Id"] = 3310005
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][4]["ItemNum"] = 0
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][5] = {}
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][5]["Id"] = 3310006
-- tOhterNpc_Reward["Exploitation"][3]["DeleteItem"][5]["ItemNum"] = 0
tOhterNpc_Reward["Exploitation"][3]["RewardItem"] = {}
tOhterNpc_Reward["Exploitation"][3]["LogId"] = 12001105
tOhterNpc_Reward["Exploitation"][3]["LogStep"] = "3[3]"
tOhterNpc_Reward["Exploitation"][3]["RewardEffect"] = {}
tOhterNpc_Reward["Exploitation"][3]["RewardEffect"]["Effect"] = "zf2-e128"
-- 矿渣
tOhterNpc_Reward["Exploitation"][4] = {}
tOhterNpc_Reward["Exploitation"][4]["DeleteItem"] = {}
tOhterNpc_Reward["Exploitation"][4]["RewardItem"] = {}
tOhterNpc_Reward["Exploitation"][4]["LogId"] = 12001105
tOhterNpc_Reward["Exploitation"][4]["LogStep"] = "3[4]"
tOhterNpc_Reward["Exploitation"][4]["RewardEffect"] = {}
tOhterNpc_Reward["Exploitation"][4]["RewardEffect"]["Effect"] = "zf2-e128"

-- 矿渣随机获得铜矿石
tOhterNpc_Reward["Exploitation"][5] = {}
tOhterNpc_Reward["Exploitation"][5]["ItemChanceSum"] = 10000
tOhterNpc_Reward["Exploitation"][5]["LogId"] = 12001105
-- 普通铜矿石
tOhterNpc_Reward["Exploitation"][5][1] = {}
tOhterNpc_Reward["Exploitation"][5][1]["RandomItemChanceType"] = 2
tOhterNpc_Reward["Exploitation"][5][1]["ItemChance"] = 3200
tOhterNpc_Reward["Exploitation"][5][1]["Item_1"] = 3310012
-- tOhterNpc_Reward["Exploitation"][5][1]["RewardItem"] = {}
-- tOhterNpc_Reward["Exploitation"][5][1]["RewardItem"][1] = {}
-- tOhterNpc_Reward["Exploitation"][5][1]["RewardItem"][1]["Id"] = 3310012
-- tOhterNpc_Reward["Exploitation"][5][1]["RewardItem"][1]["Attr"] = "0 1"
-- 良品铜矿石
tOhterNpc_Reward["Exploitation"][5][2] = {}
tOhterNpc_Reward["Exploitation"][5][2]["RandomItemChanceType"] = 2
tOhterNpc_Reward["Exploitation"][5][2]["ItemChance"] = 2500
tOhterNpc_Reward["Exploitation"][5][2]["Item_1"] = 3310013
-- tOhterNpc_Reward["Exploitation"][5][2]["RewardItem"] = {}
-- tOhterNpc_Reward["Exploitation"][5][2]["RewardItem"][1] = {}
-- tOhterNpc_Reward["Exploitation"][5][2]["RewardItem"][1]["Id"] = 3310013
-- tOhterNpc_Reward["Exploitation"][5][2]["RewardItem"][1]["Attr"] = "0 1"
-- 上品铜矿石
tOhterNpc_Reward["Exploitation"][5][3] = {}
tOhterNpc_Reward["Exploitation"][5][3]["RandomItemChanceType"] = 2
tOhterNpc_Reward["Exploitation"][5][3]["ItemChance"] = 2000
tOhterNpc_Reward["Exploitation"][5][3]["Item_1"] = 3310014
-- tOhterNpc_Reward["Exploitation"][5][3]["RewardItem"] = {}
-- tOhterNpc_Reward["Exploitation"][5][3]["RewardItem"][1] = {}
-- tOhterNpc_Reward["Exploitation"][5][3]["RewardItem"][1]["Id"] = 3310014
-- tOhterNpc_Reward["Exploitation"][5][3]["RewardItem"][1]["Attr"] = "0 1"
-- 精品铜矿石
tOhterNpc_Reward["Exploitation"][5][4] = {}
tOhterNpc_Reward["Exploitation"][5][4]["RandomItemChanceType"] = 2
tOhterNpc_Reward["Exploitation"][5][4]["ItemChance"] = 1500
tOhterNpc_Reward["Exploitation"][5][4]["Item_1"] = 3310015
-- tOhterNpc_Reward["Exploitation"][5][4]["RewardItem"] = {}
-- tOhterNpc_Reward["Exploitation"][5][4]["RewardItem"][1] = {}
-- tOhterNpc_Reward["Exploitation"][5][4]["RewardItem"][1]["Id"] = 3310015
-- tOhterNpc_Reward["Exploitation"][5][4]["RewardItem"][1]["Attr"] = "0 1"
-- 极品铜矿石
tOhterNpc_Reward["Exploitation"][5][5] = {}
tOhterNpc_Reward["Exploitation"][5][5]["RandomItemChanceType"] = 2
tOhterNpc_Reward["Exploitation"][5][5]["ItemChance"] = 800
tOhterNpc_Reward["Exploitation"][5][5]["Item_1"] = 3310016
-- tOhterNpc_Reward["Exploitation"][5][5]["RewardItem"] = {}
-- tOhterNpc_Reward["Exploitation"][5][5]["RewardItem"][1] = {}
-- tOhterNpc_Reward["Exploitation"][5][5]["RewardItem"][1]["Id"] = 3310016
-- tOhterNpc_Reward["Exploitation"][5][5]["RewardItem"][1]["Attr"] = "0 1"

-- 矿山初探奖励
tOhterNpc_Reward["TheFirstJob"] = {}
-- 500点修为值
tOhterNpc_Reward["TheFirstJob"]["RewardRepairValue"] = {}
tOhterNpc_Reward["TheFirstJob"]["RewardRepairValue"]["Value"] = 500
tOhterNpc_Reward["TheFirstJob"]["LogId"] = 12001105
tOhterNpc_Reward["TheFirstJob"]["LogStep"] = "1[4]"

-- 开采值分红
tOhterNpc_Reward["MiningBonus"] = {}
tOhterNpc_Reward["MiningBonus"]["RewardItem"] = {}
tOhterNpc_Reward["MiningBonus"]["RewardItem"][1] = {}
tOhterNpc_Reward["MiningBonus"]["RewardItem"][1]["Id"] = 3310781
tOhterNpc_Reward["MiningBonus"]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_Reward["MiningBonus"]["LogId"] = 12001105
tOhterNpc_Reward["MiningBonus"]["LogStep"] = "5[1]"
tOhterNpc_Reward["MiningBonus"]["RewardEffect"] = {}
tOhterNpc_Reward["MiningBonus"]["RewardEffect"]["Effect"] = "zf2-e128"

-- 万能神纹精粹包
tOhterNpc_Reward[3310366] = {}
tOhterNpc_Reward[3310366]["DeleteItem"] = {}
tOhterNpc_Reward[3310366]["DeleteItem"][1] = {}
tOhterNpc_Reward[3310366]["DeleteItem"][1]["Id"] = 3310366
tOhterNpc_Reward[3310366]["RewardItem"] = {}
tOhterNpc_Reward[3310366]["RewardItem"][1] = {}
tOhterNpc_Reward[3310366]["RewardItem"][1]["Id"] = 4060001
tOhterNpc_Reward[3310366]["RewardItem"][1]["Attr"] = "0 1 3"
tOhterNpc_Reward[3310366]["EventType"] = tOhterNpc_Data["HonerStc"]["Event"][1]
tOhterNpc_Reward[3310366]["DataType"] = tOhterNpc_Data["HonerStc"]["Data"][1]
tOhterNpc_Reward[3310366]["RewardData"] = 10
tOhterNpc_Reward[3310366]["RewardDelay"] = 1
tOhterNpc_Reward[3310366]["RewardTimeType"] = 4
tOhterNpc_Reward[3310366]["LogId"] = 12001105
tOhterNpc_Reward[3310366]["RewardEffect"] = {}
tOhterNpc_Reward[3310366]["RewardEffect"]["Effect"] = "zf2-e128"
-- 竞技场气力值包
tOhterNpc_Reward[3310367] = {}
tOhterNpc_Reward[3310367]["DeleteItem"] = {}
tOhterNpc_Reward[3310367]["DeleteItem"][1] = {}
tOhterNpc_Reward[3310367]["DeleteItem"][1]["Id"] = 3310367
tOhterNpc_Reward[3310367]["RewardStrengthValue"] = {}
tOhterNpc_Reward[3310367]["RewardStrengthValue"]["Value"] = 100
tOhterNpc_Reward[3310367]["EventType"] = tOhterNpc_Data["HonerStc"]["Event"][2]
tOhterNpc_Reward[3310367]["DataType"] = tOhterNpc_Data["HonerStc"]["Data"][2]
tOhterNpc_Reward[3310367]["RewardData"] = 5
tOhterNpc_Reward[3310367]["RewardDelay"] = 1
tOhterNpc_Reward[3310367]["RewardTimeType"] = 4
tOhterNpc_Reward[3310367]["LogId"] = 12001105
tOhterNpc_Reward[3310367]["RewardEffect"] = {}
tOhterNpc_Reward[3310367]["RewardEffect"]["Effect"] = "zf2-e128"

-- 回气丹
tOhterNpc_Reward[3310986] = {}
tOhterNpc_Reward[3310986]["DeleteItem"] = {}
tOhterNpc_Reward[3310986]["DeleteItem"][1] = {}
tOhterNpc_Reward[3310986]["DeleteItem"][1]["Id"] = 3310986
tOhterNpc_Reward[3310986]["RewardItem"] = {}
tOhterNpc_Reward[3310986]["RewardItem"][1] = {}
tOhterNpc_Reward[3310986]["RewardItem"][1]["Id"] = 729242
tOhterNpc_Reward[3310986]["RewardItem"][1]["Attr"] = "0 1 3 2880 1"
tOhterNpc_Reward[3310986]["LogId"] = 12001105
tOhterNpc_Reward[3310986]["RewardEffect"] = {}
tOhterNpc_Reward[3310986]["RewardEffect"]["Effect"] = "zf2-e128"
-- 微光星陨石
tOhterNpc_Reward[3310989] = {}
tOhterNpc_Reward[3310989]["DeleteItem"] = {}
tOhterNpc_Reward[3310989]["DeleteItem"][1] = {}
tOhterNpc_Reward[3310989]["DeleteItem"][1]["Id"] = 3310989
tOhterNpc_Reward[3310989]["RewardItem"] = {}
tOhterNpc_Reward[3310989]["RewardItem"][1] = {}
tOhterNpc_Reward[3310989]["RewardItem"][1]["Id"] = 3009000
tOhterNpc_Reward[3310989]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tOhterNpc_Reward[3310989]["LogId"] = 12001105
tOhterNpc_Reward[3310989]["RewardEffect"] = {}
tOhterNpc_Reward[3310989]["RewardEffect"]["Effect"] = "zf2-e128"
-- 明亮星陨石
tOhterNpc_Reward[3310990] = {}
tOhterNpc_Reward[3310990]["DeleteItem"] = {}
tOhterNpc_Reward[3310990]["DeleteItem"][1] = {}
tOhterNpc_Reward[3310990]["DeleteItem"][1]["Id"] = 3310990
tOhterNpc_Reward[3310990]["RewardItem"] = {}
tOhterNpc_Reward[3310990]["RewardItem"][1] = {}
tOhterNpc_Reward[3310990]["RewardItem"][1]["Id"] = 3009001
tOhterNpc_Reward[3310990]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tOhterNpc_Reward[3310990]["LogId"] = 12001105
tOhterNpc_Reward[3310990]["RewardEffect"] = {}
tOhterNpc_Reward[3310990]["RewardEffect"]["Effect"] = "zf2-e128"


-- 摇摇乐随机奖励
local tOhterNpc_RandomReward = {}
tOhterNpc_RandomReward[1] = {}
tOhterNpc_RandomReward[1]["ItemChanceSum"] = 0
tOhterNpc_RandomReward[1]["LogId"] = 12001105

-- 怪物击杀掉落
local tOhterNpc_RandomMonsterDrop = {}
tOhterNpc_RandomMonsterDrop[1] = {}
tOhterNpc_RandomMonsterDrop[1]["ItemChanceSum"] = 1000000
tOhterNpc_RandomMonsterDrop[1]["LogId"] = 12001105
-- 炫日锁片
tOhterNpc_RandomMonsterDrop[1][1] = {}
tOhterNpc_RandomMonsterDrop[1][1]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][1]["ItemChance"] = 2000
tOhterNpc_RandomMonsterDrop[1][1]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][1]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][1]["RewardItem"][1]["Id"] = 721533
tOhterNpc_RandomMonsterDrop[1][1]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][1]["Item_Index"] = 1
-- 残月锁片
tOhterNpc_RandomMonsterDrop[1][2] = {}
tOhterNpc_RandomMonsterDrop[1][2]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][2]["ItemChance"] = 1500
tOhterNpc_RandomMonsterDrop[1][2]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][2]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][2]["RewardItem"][1]["Id"] = 721534
tOhterNpc_RandomMonsterDrop[1][2]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][2]["Item_Index"] = 2
-- 繁星锁片
tOhterNpc_RandomMonsterDrop[1][3] = {}
tOhterNpc_RandomMonsterDrop[1][3]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][3]["ItemChance"] = 1000
tOhterNpc_RandomMonsterDrop[1][3]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][3]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][3]["RewardItem"][1]["Id"] = 721535
tOhterNpc_RandomMonsterDrop[1][3]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][3]["Item_Index"] = 3
-- 流云锁片
tOhterNpc_RandomMonsterDrop[1][4] = {}
tOhterNpc_RandomMonsterDrop[1][4]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][4]["ItemChance"] = 600
tOhterNpc_RandomMonsterDrop[1][4]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][4]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][4]["RewardItem"][1]["Id"] = 721536
tOhterNpc_RandomMonsterDrop[1][4]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][4]["Item_Index"] = 4
-- 铜矿石24000
-- 普通铜矿石
tOhterNpc_RandomMonsterDrop[1][5] = {}
tOhterNpc_RandomMonsterDrop[1][5]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][5]["ItemChance"] = 7680
tOhterNpc_RandomMonsterDrop[1][5]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][5]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][5]["RewardItem"][1]["Id"] = 3310012
tOhterNpc_RandomMonsterDrop[1][5]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][5]["Item_Index"] = 5
-- 良品铜矿石
tOhterNpc_RandomMonsterDrop[1][6] = {}
tOhterNpc_RandomMonsterDrop[1][6]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][6]["ItemChance"] = 6000
tOhterNpc_RandomMonsterDrop[1][6]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][6]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][6]["RewardItem"][1]["Id"] = 3310013
tOhterNpc_RandomMonsterDrop[1][6]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][6]["Item_Index"] = 5
-- 上品铜矿石
tOhterNpc_RandomMonsterDrop[1][7] = {}
tOhterNpc_RandomMonsterDrop[1][7]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][7]["ItemChance"] = 4800
tOhterNpc_RandomMonsterDrop[1][7]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][7]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][7]["RewardItem"][1]["Id"] = 3310014
tOhterNpc_RandomMonsterDrop[1][7]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][7]["Item_Index"] = 5
-- 精品铜矿石
tOhterNpc_RandomMonsterDrop[1][8] = {}
tOhterNpc_RandomMonsterDrop[1][8]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][8]["ItemChance"] = 3600
tOhterNpc_RandomMonsterDrop[1][8]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][8]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][8]["RewardItem"][1]["Id"] = 3310015
tOhterNpc_RandomMonsterDrop[1][8]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][8]["Item_Index"] = 5
-- 极品铜矿石
tOhterNpc_RandomMonsterDrop[1][9] = {}
tOhterNpc_RandomMonsterDrop[1][9]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][9]["ItemChance"] = 1920
tOhterNpc_RandomMonsterDrop[1][9]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][9]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][9]["RewardItem"][1]["Id"] = 3310016
tOhterNpc_RandomMonsterDrop[1][9]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][9]["Item_Index"] = 5
-- 银矿石 4500
-- 普通银矿石
tOhterNpc_RandomMonsterDrop[1][10] = {}
tOhterNpc_RandomMonsterDrop[1][10]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][10]["ItemChance"] = 1440
tOhterNpc_RandomMonsterDrop[1][10]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][10]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][10]["RewardItem"][1]["Id"] = 3310007
tOhterNpc_RandomMonsterDrop[1][10]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][10]["Item_Index"] = 6
-- 良品银矿石
tOhterNpc_RandomMonsterDrop[1][11] = {}
tOhterNpc_RandomMonsterDrop[1][11]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][11]["ItemChance"] = 1125
tOhterNpc_RandomMonsterDrop[1][11]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][11]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][11]["RewardItem"][1]["Id"] = 3310008
tOhterNpc_RandomMonsterDrop[1][11]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][11]["Item_Index"] = 6
-- 上品银矿石
tOhterNpc_RandomMonsterDrop[1][12] = {}
tOhterNpc_RandomMonsterDrop[1][12]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][12]["ItemChance"] = 900
tOhterNpc_RandomMonsterDrop[1][12]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][12]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][12]["RewardItem"][1]["Id"] = 3310009
tOhterNpc_RandomMonsterDrop[1][12]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][12]["Item_Index"] = 6
-- 精品银矿石
tOhterNpc_RandomMonsterDrop[1][13] = {}
tOhterNpc_RandomMonsterDrop[1][13]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][13]["ItemChance"] = 675
tOhterNpc_RandomMonsterDrop[1][13]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][13]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][13]["RewardItem"][1]["Id"] = 3310010
tOhterNpc_RandomMonsterDrop[1][13]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][13]["Item_Index"] = 6
-- 极品银矿石
tOhterNpc_RandomMonsterDrop[1][14] = {}
tOhterNpc_RandomMonsterDrop[1][14]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][14]["ItemChance"] = 360
tOhterNpc_RandomMonsterDrop[1][14]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][14]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][14]["RewardItem"][1]["Id"] = 3310011
tOhterNpc_RandomMonsterDrop[1][14]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][14]["Item_Index"] = 6
-- 金矿石 1500
-- 普通金矿石
tOhterNpc_RandomMonsterDrop[1][15] = {}
tOhterNpc_RandomMonsterDrop[1][15]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][15]["ItemChance"] = 480
tOhterNpc_RandomMonsterDrop[1][15]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][15]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][15]["RewardItem"][1]["Id"] = 3310002
tOhterNpc_RandomMonsterDrop[1][15]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][15]["GlobalId"] = tOhterNpc_Data["GlobalId"]
tOhterNpc_RandomMonsterDrop[1][15]["Pos"] = 2
tOhterNpc_RandomMonsterDrop[1][15]["MaxData"] = 30
tOhterNpc_RandomMonsterDrop[1][15]["OtherPos"] = 4
tOhterNpc_RandomMonsterDrop[1][15]["OtherMaxData"] = 30
tOhterNpc_RandomMonsterDrop[1][15]["OtherFullIndex"] = 20
tOhterNpc_RandomMonsterDrop[1][15]["Item_Index"] = 7
-- 良品金矿石
tOhterNpc_RandomMonsterDrop[1][16] = {}
tOhterNpc_RandomMonsterDrop[1][16]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][16]["ItemChance"] = 375
tOhterNpc_RandomMonsterDrop[1][16]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][16]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][16]["RewardItem"][1]["Id"] = 3310003
tOhterNpc_RandomMonsterDrop[1][16]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][16]["GlobalId"] = tOhterNpc_Data["GlobalId"]
tOhterNpc_RandomMonsterDrop[1][16]["Pos"] = 2
tOhterNpc_RandomMonsterDrop[1][16]["MaxData"] = 30
tOhterNpc_RandomMonsterDrop[1][16]["OtherPos"] = 4
tOhterNpc_RandomMonsterDrop[1][16]["OtherMaxData"] = 30
tOhterNpc_RandomMonsterDrop[1][16]["OtherFullIndex"] = 20
tOhterNpc_RandomMonsterDrop[1][16]["Item_Index"] = 7
-- 上品金矿石
tOhterNpc_RandomMonsterDrop[1][17] = {}
tOhterNpc_RandomMonsterDrop[1][17]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][17]["ItemChance"] = 300
tOhterNpc_RandomMonsterDrop[1][17]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][17]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][17]["RewardItem"][1]["Id"] = 3310004
tOhterNpc_RandomMonsterDrop[1][17]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][17]["GlobalId"] = tOhterNpc_Data["GlobalId"]
tOhterNpc_RandomMonsterDrop[1][17]["Pos"] = 2
tOhterNpc_RandomMonsterDrop[1][17]["MaxData"] = 30
tOhterNpc_RandomMonsterDrop[1][17]["OtherPos"] = 4
tOhterNpc_RandomMonsterDrop[1][17]["OtherMaxData"] = 30
tOhterNpc_RandomMonsterDrop[1][17]["OtherFullIndex"] = 20
tOhterNpc_RandomMonsterDrop[1][17]["Item_Index"] = 7
-- 精品金矿石
tOhterNpc_RandomMonsterDrop[1][18] = {}
tOhterNpc_RandomMonsterDrop[1][18]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][18]["ItemChance"] = 225
tOhterNpc_RandomMonsterDrop[1][18]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][18]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][18]["RewardItem"][1]["Id"] = 3310005
tOhterNpc_RandomMonsterDrop[1][18]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][18]["GlobalId"] = tOhterNpc_Data["GlobalId"]
tOhterNpc_RandomMonsterDrop[1][18]["Pos"] = 2
tOhterNpc_RandomMonsterDrop[1][18]["MaxData"] = 30
tOhterNpc_RandomMonsterDrop[1][18]["OtherPos"] = 4
tOhterNpc_RandomMonsterDrop[1][18]["OtherMaxData"] = 30
tOhterNpc_RandomMonsterDrop[1][18]["OtherFullIndex"] = 20
tOhterNpc_RandomMonsterDrop[1][18]["Item_Index"] = 7
-- 极品金矿石
tOhterNpc_RandomMonsterDrop[1][19] = {}
tOhterNpc_RandomMonsterDrop[1][19]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][19]["ItemChance"] = 120
tOhterNpc_RandomMonsterDrop[1][19]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[1][19]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[1][19]["RewardItem"][1]["Id"] = 3310006
tOhterNpc_RandomMonsterDrop[1][19]["RewardItem"][1]["Attr"] = "0 1"
tOhterNpc_RandomMonsterDrop[1][19]["GlobalId"] = tOhterNpc_Data["GlobalId"]
tOhterNpc_RandomMonsterDrop[1][19]["Pos"] = 2
tOhterNpc_RandomMonsterDrop[1][19]["MaxData"] = 30
tOhterNpc_RandomMonsterDrop[1][19]["OtherPos"] = 4
tOhterNpc_RandomMonsterDrop[1][19]["OtherMaxData"] = 30
tOhterNpc_RandomMonsterDrop[1][19]["OtherFullIndex"] = 20
tOhterNpc_RandomMonsterDrop[1][19]["Item_Index"] = 7
-- 无
tOhterNpc_RandomMonsterDrop[1][20] = {}
tOhterNpc_RandomMonsterDrop[1][20]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[1][20]["ItemChance"] = 964900
tOhterNpc_RandomMonsterDrop[1][20]["Item_Index"] = 8


-- 神龙岛古神灵境击杀掉落
tOhterNpc_RandomMonsterDrop[2] = {}
tOhterNpc_RandomMonsterDrop[2]["ItemChanceSum"] = 10000
tOhterNpc_RandomMonsterDrop[2]["LogId"] = 12001105
tOhterNpc_RandomMonsterDrop[2]["LogStep"] = "4[7]"
-- 矿山开奖券
tOhterNpc_RandomMonsterDrop[2][1] = {}
tOhterNpc_RandomMonsterDrop[2][1]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[2][1]["ItemChance"] = 2
tOhterNpc_RandomMonsterDrop[2][1]["EventType"] = tOhterNpc_Data["Stc"]["Event"][11]
tOhterNpc_RandomMonsterDrop[2][1]["DataType"] = tOhterNpc_Data["Stc"]["Data"][11]
tOhterNpc_RandomMonsterDrop[2][1]["RewardData"] = 4
tOhterNpc_RandomMonsterDrop[2][1]["RewardDelay"] = 1
tOhterNpc_RandomMonsterDrop[2][1]["RewardTimeType"] = 4
tOhterNpc_RandomMonsterDrop[2][1]["RewardItem"] = {}
tOhterNpc_RandomMonsterDrop[2][1]["RewardItem"][1] = {}
tOhterNpc_RandomMonsterDrop[2][1]["RewardItem"][1]["Id"] = 3310001
tOhterNpc_RandomMonsterDrop[2][1]["RewardItem"][1]["Attr"] = "0 1"
-- 无
tOhterNpc_RandomMonsterDrop[2][2] = {}
tOhterNpc_RandomMonsterDrop[2][2]["RandomItemChanceType"] = 2
tOhterNpc_RandomMonsterDrop[2][2]["ItemChance"] = 9998



-- 玩家矿山摇摇乐押注数量临时表
local tOhterNpc_KiddieRideHandInData = {}
-- 玩家上交矿石开采值榜
local tOhterNpc_UserHandInMineral = {}
-- 参与矿山摇摇乐玩家数量
local nJoinUserNum = 0
-- 每日收入临时表格式
local tOhterNpc_DayReward = {}
-- tOhterNpc_DayReward[nUserId] = {}
-- tOhterNpc_DayReward[nUserId]["DayRewardMoney"] = **
-- tOhterNpc_DayReward[nUserId]["UserName"] = "**"

----------------------------------逻辑部分---------------------------------------------
-- 打开兑换商店
function OhterNpc_OpenExchangeShop(nNpcId)
	User_OpenExchangeShop(nNpcId)
end

-- 矿石使用
function OhterNpc_MineralUse(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tOhterNpc_Text["SysTalk"]["OverTime"])
			local sLog = string.format(tOhterNpc_Data["Log"]["OverTimeLog"], nItemId, nItemNum)
			Sys_SaveActionFestivalLog(sLog)
			return
		end
		-- Sys_MsgBox(tOhterNpc_Text["SysMsg"]["ItemUseAfter"])
		return
	end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	-- Sys_MsgBox(tOhterNpc_Text["SysMsg"]["MineralUse"])
	local nMapId = tOhterNpc_Data["MapId"]
	local nCityId = tOhterNpc_Data["CityId"]
	local nUserMap = Get_UserMapId()
	if nUserMap == nMapId then
		-- OhterNpc_MineralDialogSet(nItemId)
		LinkItemGossipFunc_New(nItemId, "1-1")
	else
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["MineralUse2"], "OhterNpc_GotoBossMei", nil)
	end
end

-- 矿石对白赋值
function OhterNpc_MineralDialogSet(nItemId)
	local nGlobalId1 = tOhterNpc_Data["GlobalId"]
	-- 金矿
	if nItemId >= 3310002 and nItemId <= 3310006 then
		local nSign = Get_SysDynaGlobalTime2(nGlobalId1)
		if nSign > 0 then
			tItem[nItemId]["Option111"] = string.format(tOhterNpc_Text[3310002]["Option111"], tOhterNpc_Text["Dialog"]["MinerTrue"])
		else
			tItem[nItemId]["Option111"] = string.format(tOhterNpc_Text[3310002]["Option111"], tOhterNpc_Text["Dialog"]["MinerFalse"])
		end
	-- 银矿
	elseif nItemId >= 3310007 and nItemId <= 3310011 then
		local nSign = Get_SysDynaGlobalTime2(nGlobalId1)
		local nSign2 = Get_SysDynaGlobalTime4(nGlobalId1)
		if nSign > 0 then
			tItem[nItemId]["Option111"] = string.format(tOhterNpc_Text[3310007]["Option111"], tOhterNpc_Text["Dialog"]["MinerTrue"])
			tItem[nItemId]["Option112"] = string.format(tOhterNpc_Text[3310007]["Option112"], tOhterNpc_Text["Dialog"]["MinerTrue"])
			tItem[nItemId]["Option113"] = string.format(tOhterNpc_Text[3310007]["Option113"], tOhterNpc_Text["Dialog"]["MinerTrue"])
			tItem[nItemId]["Option114"] = string.format(tOhterNpc_Text[3310007]["Option114"], tOhterNpc_Text["Dialog"]["MinerTrue"])
		else
			tItem[nItemId]["Option111"] = string.format(tOhterNpc_Text[3310007]["Option111"], tOhterNpc_Text["Dialog"]["MinerFalse"])
			tItem[nItemId]["Option112"] = string.format(tOhterNpc_Text[3310007]["Option112"], tOhterNpc_Text["Dialog"]["MinerFalse"])
			tItem[nItemId]["Option113"] = string.format(tOhterNpc_Text[3310007]["Option113"], tOhterNpc_Text["Dialog"]["MinerFalse"])
			tItem[nItemId]["Option114"] = string.format(tOhterNpc_Text[3310007]["Option114"], tOhterNpc_Text["Dialog"]["MinerFalse"])
		end
		-- 额外矿车
		if nSign2 > 0 then
			tItem[nItemId]["Option115"] = string.format(tOhterNpc_Text[3310007]["Option115"], tOhterNpc_Text["Dialog"]["MinerTrue"])
		else
			tItem[nItemId]["Option115"] = string.format(tOhterNpc_Text[3310007]["Option115"], tOhterNpc_Text["Dialog"]["MinerFalse"])
		end
	-- 铜矿
	elseif nItemId >= 3310012 and nItemId <= 3310016 then
		local nSign = Get_SysDynaGlobalTime1(nGlobalId1)
		local nSign2 = Get_SysDynaGlobalTime3(nGlobalId1)
		if nSign > 0 then
			tItem[nItemId]["Option111"] = string.format(tOhterNpc_Text[3310012]["Option111"], tOhterNpc_Text["Dialog"]["MinerTrue"])
			tItem[nItemId]["Option112"] = string.format(tOhterNpc_Text[3310012]["Option112"], tOhterNpc_Text["Dialog"]["MinerTrue"])
			tItem[nItemId]["Option113"] = string.format(tOhterNpc_Text[3310012]["Option113"], tOhterNpc_Text["Dialog"]["MinerTrue"])
			tItem[nItemId]["Option114"] = string.format(tOhterNpc_Text[3310012]["Option114"], tOhterNpc_Text["Dialog"]["MinerTrue"])
		else
			tItem[nItemId]["Option111"] = string.format(tOhterNpc_Text[3310012]["Option111"], tOhterNpc_Text["Dialog"]["MinerFalse"])
			tItem[nItemId]["Option112"] = string.format(tOhterNpc_Text[3310012]["Option112"], tOhterNpc_Text["Dialog"]["MinerFalse"])
			tItem[nItemId]["Option113"] = string.format(tOhterNpc_Text[3310012]["Option113"], tOhterNpc_Text["Dialog"]["MinerFalse"])
			tItem[nItemId]["Option114"] = string.format(tOhterNpc_Text[3310012]["Option114"], tOhterNpc_Text["Dialog"]["MinerFalse"])
		end
		-- 额外矿车
		if nSign2 > 0 then
			tItem[nItemId]["Option115"] = string.format(tOhterNpc_Text[3310012]["Option115"], tOhterNpc_Text["Dialog"]["MinerTrue"])
		else
			tItem[nItemId]["Option115"] = string.format(tOhterNpc_Text[3310012]["Option115"], tOhterNpc_Text["Dialog"]["MinerFalse"])
		end
	end
	return
end

-- 矿山开奖券使用
function OhterNpc_CouponsUse(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tOhterNpc_Text["SysTalk"]["OverTime"])
			local sLog = string.format(tOhterNpc_Data["Log"]["OverTimeLog"], nItemId, nItemNum)
			Sys_SaveActionFestivalLog(sLog)
			return
		end
		-- Sys_MsgBox(tOhterNpc_Text["SysMsg"]["ItemUseAfter"])
		return
	end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	local nMapId = tOhterNpc_Data["MapId"]
	local nUserMap = Get_UserMapId()
	-- 首次使用显示排行榜
	local nEvent = tOhterNpc_Data["Stc"]["Event"][14]
	local nData = tOhterNpc_Data["Stc"]["Data"][14]
	-- 判断是否隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, "==", 0) then
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		LinkItemGossipFunc_New(nItemId, "1-1")
		if nUserMap == nMapId then
			local nPosX = tOhterNpc_Data["NpcId"][7][1]["PosX"]
			local nPosY = tOhterNpc_Data["NpcId"][7][1]["PosY"]
			local nNpcId = tOhterNpc_Data["NpcId"][7][1]["Id"]
			Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
		end
		return
	end
	
	if nUserMap == nMapId then
		local nPosX = tOhterNpc_Data["NpcId"][7][1]["PosX"]
		local nPosY = tOhterNpc_Data["NpcId"][7][1]["PosY"]
		local nNpcId = tOhterNpc_Data["NpcId"][7][1]["Id"]
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	else
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["MineralUse2"], "NpcPosition_PathFind</N>17980", nil)
	end
	
	
end

-- 血色勋章使用
function OhterNpc_MedalUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		-- 暂时修改为过期使用不删除
		-- local nItemNum = Get_CountItemType(nItemId, 0)
		-- if Item_DelAllItemByType(nItemId) then
			-- User_TalkChannel2005(tOhterNpc_Text["SysTalk"]["OverTime"])
			-- local sLog = string.format(tOhterNpc_Data["Log"]["OverTimeLog"], nItemId, nItemNum)
			-- Sys_SaveActionFestivalLog(sLog)
			-- return
		-- end
		-- Sys_MsgBox(tOhterNpc_Text["SysMsg"]["ItemUseAfter"])
		return
	end
	local nMapId = tOhterNpc_Data["MapId"]
	local nUserMap = Get_UserMapId()
	if nUserMap == nMapId then
		local nPosX = tOhterNpc_Data["NpcId"][10][1]["PosX"]
		local nPosY = tOhterNpc_Data["NpcId"][10][1]["PosY"]
		local nNpcId = tOhterNpc_Data["NpcId"][10][1]["Id"]
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	else
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["MineralUse2"], "NpcPosition_PathFind</N>17980", nil)
	end
end

-- 矿山回城卷使用
function OhterNpc_ReturnRollUse(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tOhterNpc_Text["SysTalk"]["OverTime"])
			local sLog = string.format(tOhterNpc_Data["Log"]["OverTimeLog"], nItemId, nItemNum)
			Sys_SaveActionFestivalLog(sLog)
			return
		end
		-- Sys_MsgBox(tOhterNpc_Text["SysMsg"]["ItemUseAfter"])
		return
	end
	if not Item_ChkItem(nItemId) then
		return
	end
	local nMapId = tOhterNpc_Data["MapId"]
	local nUserMap = Get_UserMapId()
	if nUserMap == nMapId then
		local nEvent = tOhterNpc_Data["Stc"]["Event"][12]
		local nData = tOhterNpc_Data["Stc"]["Data"][12]
		-- 判断是否间隔三分钟
		if Task_StcInterval(nEvent, nData, 3, 1) then
			Task_SetStatistic(nEvent, nData, 0, 1)
			Task_SetStcTimestamp(nEvent, nData, 0)
		end
		if Task_ChkStcValue(nEvent, nData, ">=", 1) then
			Sys_MsgBox(tOhterNpc_Text["SysMsg"]["TimeRefresh"])
			return
		end
		Task_SetStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		
		if not Item_DelItem(nItemId) then
			return
		end
		-- 传送到双龙城
		local nCityId = tOhterNpc_Data["CityId"]
		local nCellX = tOhterNpc_Data["NpcId"][9][1]["PosX"]
		local nCellY = tOhterNpc_Data["NpcId"][9][1]["PosY"]
		-- 判断是否交易服
		if OhterNpc_ChkTradeServer() then
			nCityId = tOhterNpc_Data["TradeCityId"]
			nCellX = tOhterNpc_Data["NpcId"][9][2]["PosX"]
			nCellY = tOhterNpc_Data["NpcId"][9][2]["PosY"]
		end
		User_ChgMap(nCityId, nCellX, nCellY, 1)
	else
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["ReturnRoll"])
	end
end

-- 矿车刷新寻路
function OhterNpc_MinerRefresh(nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	local nMapId = tOhterNpc_Data["MapId"]
	local nUserMap = Get_UserMapId()
	if nUserMap == nMapId then
		local nPosX = tOhterNpc_Data["NpcId"][nIndex][1]["PosX"]
		local nPosY = tOhterNpc_Data["NpcId"][nIndex][1]["PosY"]
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
	else
		local nCityId = tOhterNpc_Data["CityId"]
		local nPosX = tOhterNpc_Data["NpcId"][6][1]["PosX"]
		local nPosY = tOhterNpc_Data["NpcId"][6][1]["PosY"]
		local nNpcId = tOhterNpc_Data["NpcId"][6][1]["Id"]
		-- 判断是否交易服
		if OhterNpc_ChkTradeServer() then
			nCityId = tOhterNpc_Data["TradeCityId"]
			nPosX = tOhterNpc_Data["NpcId"][6][2]["PosX"]
			nPosY = tOhterNpc_Data["NpcId"][6][2]["PosY"]
			nNpcId = tOhterNpc_Data["NpcId"][6][2]["Id"]
		end
		Sys_GotoSomeWhere(nPosX,nPosY,nCityId,nNpcId)
	end
end


-- 寻路到梅老板
function OhterNpc_GotoBossMei()
	local nCityId = tOhterNpc_Data["CityId"]
	local nPosX = tOhterNpc_Data["NpcId"][6][1]["PosX"]
	local nPosY = tOhterNpc_Data["NpcId"][6][1]["PosY"]
	local nNpcId = tOhterNpc_Data["NpcId"][6][1]["Id"]
	-- 判断是否交易服
	if OhterNpc_ChkTradeServer() then
		nCityId = tOhterNpc_Data["TradeCityId"]
		nPosX = tOhterNpc_Data["NpcId"][6][2]["PosX"]
		nPosY = tOhterNpc_Data["NpcId"][6][2]["PosY"]
		nNpcId = tOhterNpc_Data["NpcId"][6][2]["Id"]
	end
	Sys_GotoSomeWhere(nPosX,nPosY,nCityId,nNpcId)
end

-- 领取矿山开奖券
function OhterNpc_GetMineLottery(nNpcId)
	local nEvent = tOhterNpc_Data["Stc"]["Event"][2]
	local nData = tOhterNpc_Data["Stc"]["Data"][2]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	-- 判断是否领取
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["HaveReward"])
		return
	end
	-- 判断背包
	if not RewardTemplate_CheckSpace(tOhterNpc_Reward["MineLottery"]) then
		return
	end
	
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	RewardTemplate_UseItem(tOhterNpc_Reward["MineLottery"])
	-- 提示
	Sys_MsgBox(tOhterNpc_Text["SysMsg"]["CanHandIn"])
	LinkNpcGossipFunc_New(nNpcId, "1-1")
end

-- 参加矿山摇摇乐
function OhterNpc_JoinTheKiddieRide(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	if not Sys_ChkDayTime(tOhterNpc_Data["KiddieRideTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["StakeOverTime"])
		return
	end
	if not Item_ChkItem(tOhterNpc_Data["KiddieRideItemId"]) then
		LinkNpcGossipFunc_New(nNpcId, "2-3")
		return
	end
	-- 获取玩家上交矿山开奖券
	local nEvent = tOhterNpc_Data["Stc"]["Event"][3]
	local nData = tOhterNpc_Data["Stc"]["Data"][3]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	local nUserSub = Get_UserStatisticValue(nEvent, nData)
	-- 获取全服上交数量
	local nGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerSub = Get_SysDynaGlobalData0(nGlobalId)
	
	tNpcGossip[23051]["Text214"] = string.format(tOhterNpc_Text[23051]["Text214"], nUserSub, nServerSub)
	LinkNpcGossipFunc_New(nNpcId, "2-1")
	-- local sStrText = string.format(tOhterNpc_Text[23051]["Text214"], nUserSub, nServerSub)
	-- Sys_DialogText(tOhterNpc_Text[23051]["Text211"])
	-- Sys_DialogText(tOhterNpc_Text[23051]["Text212"])
	-- Sys_DialogText(tOhterNpc_Text[23051]["Text213"])
	-- Sys_DialogText(sStrText)
	-- Sys_DialogOptEdit(tOhterNpc_Text[23051]["Option211"], 10, "OhterNpc_KiddieRideInputNum</N>" .. nNpcId)
	-- Sys_DialogOption(tOhterNpc_Text[23051]["Option212"])
	-- Sys_DialogFace(nNpcId)
	-- Sys_DialogEnd()
end

-- 矿山摇摇乐输入数量
function OhterNpc_KiddieRideInputNum(nNpcId)
	if not Sys_ChkDayTime(tOhterNpc_Data["KiddieRideTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["StakeOverTime"])
		return
	end
	-- 输入错误返回
	-- local InputNum = tonumber(Get_SysAcceptStr())
	-- if type(InputNum) ~= "number" or InputNum <= 0 then
		-- LinkNpcGossipFunc_New(nNpcId, "2-2")
		-- return
	-- end
	-- 奖券不足
	-- if not Item_ChkMulItem(tOhterNpc_Data["KiddieRideItemId"], tOhterNpc_Data["KiddieRideItemId"], InputNum) then
		-- LinkNpcGossipFunc_New(nNpcId, "2-3")
		-- return
	-- end
	local nInputNum = Get_CountItemType(tOhterNpc_Data["KiddieRideItemId"], 0)
	-- 上交
	OhterNpc_KiddieRideHandInSucc(nInputNum, nNpcId)
end

-- 矿山开奖券上交
function OhterNpc_KiddieRideHandInSucc(nHandInNum, nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	if not Sys_ChkDayTime(tOhterNpc_Data["KiddieRideTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["StakeOverTime"])
		return
	end
	-- 奖券不足
	if not Item_ChkMulItem(tOhterNpc_Data["KiddieRideItemId"], tOhterNpc_Data["KiddieRideItemId"], nHandInNum) then
		LinkNpcGossipFunc_New(nNpcId, "2-3")
		return
	end
	if not Item_DelMulItem(tOhterNpc_Data["KiddieRideItemId"], tOhterNpc_Data["KiddieRideItemId"], nHandInNum) then
		LinkNpcGossipFunc_New(nNpcId, "2-3")
		return
	end
	-- 记录log
	Sys_SaveEmoneyBuy(tOhterNpc_Data["EmoneyLog"][6])
	
	User_EffectAdd("self", "zf2-e128")
	-- 增加上交数量
	local nGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerSub = Get_SysDynaGlobalData0(nGlobalId)
	nServerSub = nServerSub + nHandInNum
	Sys_SetSynaGlobalData0(nGlobalId, nServerSub)
	-- 修改玩家上交数量
	local nEvent = tOhterNpc_Data["Stc"]["Event"][3]
	local nData = tOhterNpc_Data["Stc"]["Data"][3]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	Task_AddStatistic(nEvent, nData, nHandInNum, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	local nUserSub = Get_UserStatisticValue(nEvent, nData)
	
	-- 修改临时表数据
	local nUserId = Get_UserId()
	if tOhterNpc_KiddieRideHandInData[nUserId] == nil then
		tOhterNpc_KiddieRideHandInData[nUserId] = {}
		tOhterNpc_KiddieRideHandInData[nUserId]["Score"] = 0
		tOhterNpc_KiddieRideHandInData[nUserId]["Name"] = ""
		-- 增加参与人数
		nJoinUserNum = nJoinUserNum + 1
		if nJoinUserNum == 10 or nJoinUserNum == 30 or nJoinUserNum == 50 or nJoinUserNum == 100 or nJoinUserNum == 150 or nJoinUserNum == 200 or nJoinUserNum == 250 then
			Sys_SystemBroadcast(string.format(tOhterNpc_Text["Broadcast"]["JoinNum"], nJoinUserNum))
			Sys_TalkBroadcast(string.format(tOhterNpc_Text["Broadcast"]["JoinNum"], nJoinUserNum))
		end
	end
	local sUserName = Get_UserName(nUserId)
	tOhterNpc_KiddieRideHandInData[nUserId]["Score"] = nUserSub
	tOhterNpc_KiddieRideHandInData[nUserId]["Name"] = sUserName
	
	tNpcGossip[nNpcId]["Text241"] = string.format(tOhterNpc_Text[23051]["Text241"], nHandInNum)
	tNpcGossip[nNpcId]["Text243"] = string.format(tOhterNpc_Text[23051]["Text243"], nUserSub, nServerSub)
	LinkNpcGossipFunc_New(nNpcId, "2-4")
end

-- 购买矿山开奖券判断
function OhterNpc_BuyKiddieRideVolumeChk(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	local nEvent = tOhterNpc_Data["Stc"]["Event"][4]
	local nData = tOhterNpc_Data["Stc"]["Data"][4]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	-- 判断是否超过购买数量
	if Task_ChkStcValue(nEvent, nData, ">", tOhterNpc_Data["BuyKiddieRide"]["CanBuyNum"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["BuyOverNum"], "LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. "1-1", nil)
		return
	end
	-- 判断背包
	if not RewardTemplate_CheckSpace(tOhterNpc_Reward["BuyMineLottery"]) then
		return
	end
	
	local nUserBuyNum = Get_UserStatisticValue(nEvent, nData)
	local nNeedMoney = tOhterNpc_Data["BuyKiddieRide"][nUserBuyNum]
	tNpcGossip[23051]["Text311"] = string.format(tOhterNpc_Text[23051]["Text311"], nNeedMoney)
	LinkNpcGossipFunc_New(nNpcId, "3-1")
end

-- 购买矿山开奖券
function OhterNpc_BuyKiddieRideVolume(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	local nEvent = tOhterNpc_Data["Stc"]["Event"][4]
	local nData = tOhterNpc_Data["Stc"]["Data"][4]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	-- 判断是否超过购买数量
	if Task_ChkStcValue(nEvent, nData, ">", tOhterNpc_Data["BuyKiddieRide"]["CanBuyNum"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["BuyOverNum"], "LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. "1-1", nil)
		return
	end
	-- 判断背包
	if not RewardTemplate_CheckSpace(tOhterNpc_Reward["BuyMineLottery"]) then
		return
	end
	-- 判断金币
	local nUserBuyNum = Get_UserStatisticValue(nEvent, nData)
	local nNeedMoney = tOhterNpc_Data["BuyKiddieRide"][nUserBuyNum]
	if not User_CanPutMoney2Bag(-nNeedMoney) then
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end
	if not User_AddMoney(-nNeedMoney) then
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end
	-- 增加购买次数掩码
	Task_AddStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	RewardTemplate_UseItem(tOhterNpc_Reward["BuyMineLottery"])
	Sys_SaveActionRewardLog(string.format(tOhterNpc_Data["Log"][2], nNeedMoney))
	local nItemNum = Get_CountItemType(tOhterNpc_Data["KiddieRideItemId"], 0)
	tNpcGossip[23051]["Text332"] = string.format(tOhterNpc_Text[23051]["Text332"], nItemNum)
	LinkNpcGossipFunc_New(nNpcId, "3-3")
end

-- 打开网址
function OhterNpc_OpenWebPage()
	local sWebAddress = tOhterNpc_Data["WebPage"]
	User_SendWebPage(sWebAddress)
end

-- 开箱增加全服上交数量
function OhterNpc_AddServerOpen()
	local nGlobalId = tOhterNpc_Data["GlobalId"]
	-- 一小时开箱数量
	local nOenHourOpen = Get_SysDynaGlobalData1(nGlobalId)
	nOenHourOpen = nOenHourOpen + 1
	Sys_SetSynaGlobalData1(nGlobalId, nOenHourOpen)
	-- 两小时开箱数量
	-- local nTwoHourOpen = Get_SysDynaGlobalData2(nGlobalId)
	-- nTwoHourOpen = nTwoHourOpen + 1
	-- Sys_SetSynaGlobalData2(nGlobalId, nTwoHourOpen)
end

-- 每日领取宝箱
function OhterNpc_DailyRewardBox(nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	-- 任务面板显示
	local nTaskId = tOhterNpc_Data["TaskId"]
	local nEvent = tOhterNpc_Data["Stc"]["Event"][5]
	local nData = tOhterNpc_Data["Stc"]["Data"][5]
	local nKillEvent = tOhterNpc_Data["Stc"]["Event"][6]
	local nKillData = tOhterNpc_Data["Stc"]["Data"][6]
	-- 判断隔天
	if Task_StcInterval(nKillEvent, nKillData, 1, 4) then
		Task_SetStatistic(nKillEvent, nKillData, 0, 1)
		Task_SetStcTimestamp(nKillEvent, nKillData, 0)
		-- 判断任务是否隔天
		if not Task_ChkTaskDetail(nTaskId) then
			if Task_AddTaskDetail(nTaskId) then
				Task_SetTaskDetailData1(nTaskId,0)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
				Task_SetTaskDetailData7(nTaskId,os.time())
			end
		else
			Task_SetTaskDetailData1(nTaskId,0)  --置杀怪数量
			Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
			Task_SetTaskDetailData7(nTaskId,os.time())
		end
	end
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	-- 判断是否击杀100怪物
	if not Task_ChkStcValue(nKillEvent, nKillData, ">=", 100) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["HaveNotKill"])
		return
	end
	-- 判断是否领取
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["HavedBoxReward"])
		return
	end
	-- 判断是否交易服
	local nGlobalId = tOhterNpc_Data["TradeServer"]
	local nServerNum = Get_SysDynaGlobalData0(nGlobalId)
	-- 判断背包
	if not RewardTemplate_CheckSpace(tOhterNpc_Reward["BoxReward"][nServerNum][nIndex]) then
		return
	end
	-- 设置已领取掩码
	Task_AddStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	-- 概率获得超额奖励
	local nNumLucky = math.random(1, 10000)
	if nIndex == 1 then
		-- 0.02% 3000气力值
		if nNumLucky <= 2 then
			RewardTemplate_UseItemAndMsg(tOhterNpc_Reward["BoxRewardLucky"][nServerNum][nIndex])
			local nUserName = Get_UserName()
			Sys_SystemBroadcast(string.format(tOhterNpc_Text["Broadcast"]["BoxReward1"], nUserName))
			
		else
			RewardTemplate_UseItemAndMsg(tOhterNpc_Reward["BoxReward"][nServerNum][nIndex])
		end
	elseif nIndex == 2 then
		-- 0.05% 1颗晶莹星陨石
		if nNumLucky <= 5 then
			RewardTemplate_UseItemAndMsg(tOhterNpc_Reward["BoxRewardLucky"][nServerNum][nIndex])
			local nUserName = Get_UserName()
			Sys_SystemBroadcast(string.format(tOhterNpc_Text["Broadcast"]["BoxReward2"], nUserName))
			
		else
			RewardTemplate_UseItemAndMsg(tOhterNpc_Reward["BoxReward"][nServerNum][nIndex])
		end
	else
		-- 0.04% 1颗+5赤炼石（赠）
		if nNumLucky <= 4 then
			RewardTemplate_UseItemAndMsg(tOhterNpc_Reward["BoxRewardLucky"][nServerNum][nIndex])
			local nUserName = Get_UserName()
			if nServerNum == 1 then
				Sys_SystemBroadcast(string.format(tOhterNpc_Text["Broadcast"]["BoxReward3"], nUserName))
			else
				Sys_SystemBroadcast(string.format(tOhterNpc_Text["Broadcast"]["BoxReward4"], nUserName))
			end
		else
			RewardTemplate_UseItemAndMsg(tOhterNpc_Reward["BoxReward"][nServerNum][nIndex])
		end
	end
	
	-- 开箱增加全服上交数量
	-- OhterNpc_AddServerOpen()
	
	-- 置任务已完成
	local nStcData = Get_UserStatisticValue(nEvent,nData)
	if not Task_ChkTaskDetail(nTaskId) then
		if Task_AddTaskDetail(nTaskId) then
			Task_SetTaskDetailData1(nTaskId,nStcData)  --置杀怪数量
			Task_SetTaskDetailCompleteFlag(nTaskId,1) --置完成标示为1
			Task_SetTaskDetailData7(nTaskId,os.time())
		end
	else
		if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
			Task_SetTaskDetailData1(nTaskId,nStcData)  --置杀怪数量
			Task_SetTaskDetailCompleteFlag(nTaskId,1) --置完成标示为1
			Task_SetTaskDetailData7(nTaskId,os.time())
		end
	end
end

-- 判断NPC兑换额度是否达到上限
function OhterNpc_ChkNPCExchangeNum(nNpcId, nIndex, tMineralNum)
	if nNpcId == tOhterNpc_Data["NpcId"][1][1]["Id"] or nNpcId == 23056 then
		return tMineralNum
	end
	-- 获取NPC当前兑换上限
	local nGlobalId = tOhterNpc_Data["AmountId"]
	local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][nNpcId]
	local nNpcQuota = 0
	if nIndex == 2 then
		nNpcQuota = Get_SysDynaGlobalTime(nGlobalId, nGlobalPos)
	else
		nNpcQuota = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
	end
	-- 判断玩家兑换矿石价值是否超过上限
	local nUserExchage = 0
	for i = 1, 5 do
		local nMineralValue = tOhterNpc_Data["Mineral"][nIndex][i]["Value"]
		local nMineralNuM = tMineralNum[i]
		nUserExchage = nUserExchage + (nMineralNuM * nMineralValue)
	end
	if nUserExchage <= nNpcQuota then
		return tMineralNum
	end
	-- 重新判断玩家可兑换矿石
	tMineralNum = OhterNpc_RecheckUserExchange(nNpcQuota, nIndex)
	return tMineralNum
end

-- 计算可兑换矿石最大数量
function OhterNpc_CalculationTheMaxNum(nSurplusQuota, nIndex, nNum)
	local nMineralId = tOhterNpc_Data["Mineral"][nIndex][nNum]["ItemId"]
	local nMineralNuM = Get_CountItemType(nMineralId, 0)
	local nMaxNum = 0
	for i = 1, nMineralNuM do
		local nItemValue = tOhterNpc_Data["Mineral"][nIndex][nNum]["Value"]
		if nSurplusQuota >= (nItemValue * i) then
			nMaxNum = i
		end
	end
	return nMaxNum
end

-- 重新判断玩家可兑换矿石
function OhterNpc_RecheckUserExchange(nNpcQuota, nIndex)
	local tMineralNum = {}
	local nSurplusQuota = nNpcQuota
	-- 计算背包中可兑换矿石的数量
	for i = 1, 5 do
		local nMaxNum = OhterNpc_CalculationTheMaxNum(nSurplusQuota, nIndex, i)
		local nItemValue = tOhterNpc_Data["Mineral"][nIndex][i]["Value"]
		nSurplusQuota = nSurplusQuota - (nItemValue * nMaxNum)
		tMineralNum[i] = nMaxNum
	end
	return tMineralNum
end


-- 获取矿石数量
function OhterNpc_GetMineralNum(nNpcId, nIndex)
	local tMineralNum = {}
	local fChkMineral = false
	-- 计算背包中矿石的数量
	for i = 1, 5 do
		local nMineralId = tOhterNpc_Data["Mineral"][nIndex][i]["ItemId"]
		local nMineralNuM = Get_CountItemType(nMineralId, 0)
		tMineralNum[i] = nMineralNuM
		if nMineralNuM > 0 then
			fChkMineral = true
		end
	end
	-- 判断NPC兑换额度是否达到上限
	tMineralNum = OhterNpc_ChkNPCExchangeNum(nNpcId, nIndex, tMineralNum)
	return tMineralNum, fChkMineral
end

-- 一键提交金矿
function OhterNpc_SubTheQuarts(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	-- 判断背包有没有金矿
	local tMineralNum, nChkMineral = OhterNpc_GetMineralNum(nNpcId, 1)
	if not nChkMineral then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	
	-- local nNeedMoney = 0
	-- 计算金矿价格
	-- for i = 1, 5 do
		-- local nMineralValue = tOhterNpc_Data["Mineral"][1][i]["Value"]
		-- local nMineralNuM = tMineralNum[i]
		-- nNeedMoney = nNeedMoney + (nMineralNuM * nMineralValue)
	-- end
	
	-- if not User_CanPutMoney2Bag(nNeedMoney) then
		-- LinkNpcGossipFunc_New(nNpcId, "2-1")
		-- return
	-- end
	-- 验证码
	OhterNpc_InputTheVerificationCode(nNpcId)
end

-- 输入验证码
function OhterNpc_InputTheVerificationCode(nNpcId)
	-- 生成验证码
	local nVerificationCode = math.random(1000, 9999)
	Sys_DialogText(tOhterNpc_Text[23053]["Text231"])
	Sys_DialogText(string.format(tOhterNpc_Text[23053]["Text232"], nVerificationCode))
	Sys_DialogOptEdit("", 10, "OhterNpc_VerificationCodeChk</N>" .. nNpcId .. "</N>" .. nVerificationCode)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 验证码验证兑换金币
function OhterNpc_VerificationCodeChk(nNpcId, nVerificationCode)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	-- 输入错误返回
	local InputNum = tonumber(Get_SysAcceptStr())
	if type(InputNum) ~= "number" or InputNum <= 0 or InputNum ~= nVerificationCode then
		LinkNpcGossipFunc_New(nNpcId, "2-4")
		return
	end
	
	-- 判断背包有没有金矿
	local tMineralNum, nChkMineral = OhterNpc_GetMineralNum(nNpcId, 1)
	if not nChkMineral then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	
	local nNeedMoney = 0
	local nSumMineral = 0
	local nHaveItem = 0
	
	
	-- 金矿兑换表重新赋值
	local tMineralReward = CommonFunc_Copy(tOhterNpc_Reward["MineralExchange"][1])
	-- 计算金矿价格
	for i = 1, 5 do
		local nMineralValue = tOhterNpc_Data["Mineral"][1][i]["Value"]
		local nMineralNuM = tMineralNum[i]
		if nMineralNuM > 0 then
			nNeedMoney = nNeedMoney + (nMineralNuM * nMineralValue)
			nSumMineral = nSumMineral + nMineralNuM
			nHaveItem = nHaveItem + 1
			tMineralReward["DeleteItem"][nHaveItem] = {}
			tMineralReward["DeleteItem"][nHaveItem]["Id"] = tOhterNpc_Data["Mineral"][1][i]["ItemId"]
			tMineralReward["DeleteItem"][nHaveItem]["ItemNum"] = nMineralNuM
		end
	end
	
	if nSumMineral <= 0 then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	
	-- if not User_CanPutMoney2Bag(nNeedMoney) then
		-- LinkNpcGossipFunc_New(nNpcId, "2-1")
		-- return
	-- end
	
	-- 扣除金矿获得奖励
	-- tMineralReward["RewardMoney"]["Value"] = nNeedMoney
	tMineralReward["RewardItem"][1]["Attr"] = "0 " .. nNeedMoney
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tMineralReward) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tMineralReward)
	-- 记录log
	Sys_SaveEmoneyBuy(tOhterNpc_Data["EmoneyLog"][4])
	
	-- 记录到每日银两排行榜
	local nUserId = Get_UserId()
	local nUserName = Get_UserName(nUserId)
	OhterNpc_DayRewardMoneyRank_Data(nNeedMoney, nUserId, nUserName)
	-- 满30W播报
	OhterNpc_UserDayRewardBroadcast(nNeedMoney)
	-- 矿山初探奖励
	-- OhterNpc_DoneTheFirstJob()
	-- 第一次上交金矿额外获得矿山开奖券
	local nEvent = tOhterNpc_Data["Stc"]["Event"][7]
	local nData = tOhterNpc_Data["Stc"]["Data"][7]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	-- 判断是否领取
	if Task_ChkStcValue(nEvent, nData, "==", 0) then
		if User_CheckLeftSpace(1) then
			RewardTemplate_UseItemAndMsg(tOhterNpc_Reward["AdditionalReward"][1])
			Task_SetStatistic(nEvent, nData, 1, 1)
			Task_SetStcTimestamp(nEvent, nData, 0)
			
			--battlepass 增加进度
			-- if nSumMineral>= 10 then
			 	-- BattlePassTaskTest_TaskAddProgress(13,10)
			-- else
				-- BattlePassTaskTest_TaskAddProgress(13,nSumMineral)
			-- end
			
		end
	end
	
	tNpcGossip[23053]["Text312"] = string.format(tOhterNpc_Text[23053]["Text312"], nSumMineral)
	tNpcGossip[23053]["Text315"] = string.format(tOhterNpc_Text[23053]["Text315"], nNeedMoney)
	LinkNpcGossipFunc_New(nNpcId, "3-1")
end


-- 上交银/铜矿石
function OhterNpc_SubTheMineral(nNpcId, nIndex, nType)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	-- 判断NPC是否还有兑换额度
	local nGlobalId = tOhterNpc_Data["AmountId"]
	local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][nNpcId]
	local nNpcQuota = 0
	if nIndex == 2 then
		nNpcQuota = Get_SysDynaGlobalTime(nGlobalId, nGlobalPos)
	else
		nNpcQuota = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
	end
	-- 选项赋值
	local nOptionType = nType or 0
	-- 判断是否是帮派专属矿车
	if nNpcId == tOhterNpc_Data["NpcId"][2][4]["Id"] or nNpcId == tOhterNpc_Data["NpcId"][3][4]["Id"] then
		-- 判断是否是占领帮派群众
		-- local nOccupySyn = Get_NpcData1(820)
		local nOccupySyn = Get_MapOwnerId(1038)
		local nSynId = Get_UserGuildId()
		if nSynId ~= nOccupySyn then
			LinkNpcGossipFunc_New(nNpcId, "4-1")
			return
		end
	end
	-- NPC没有兑换额度走补充提示
	if nOptionType == 0 and nNpcQuota < tOhterNpc_Data["Mineral"][nIndex][1]["Value"] then
		-- Npc_MoveNpcPos(nNpcId, 5000, 100, 100)
		-- Sys_MsgBox(tOhterNpc_Text["SysMsg"]["NPCHaveNotQuota"])
		LinkNpcGossipFunc_New(nNpcId, "6-1")
		return
	end
	-- 选择开采值 走开采值对白
	if nOptionType == 1 then
		LinkNpcGossipFunc_New(nNpcId, "5-1")
		return
	end
	-- 额度已刷新提示
	-- if nOptionType > 0 and nNpcQuota > tOhterNpc_Data["Mineral"][nIndex][1]["Value"] then
		-- Sys_MsgBox(tOhterNpc_Text["SysMsg"]["MoneyRefresh"])
		-- return
	-- end
	
	-- 判断背包有没有矿石
	local tMineralNum, nChkMineral = OhterNpc_GetMineralNum(nNpcId, nIndex)
	if not nChkMineral then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	local nNeedMoney = 0
	local nSumMineral = 0
	local nHaveItem = 0
	-- 矿石兑换表重新赋值
	local tMineralReward = CommonFunc_Copy(tOhterNpc_Reward["MineralExchange"][nIndex])
	-- 计算矿石价格
	for i = 1, 5 do
		local nMineralValue = tOhterNpc_Data["Mineral"][nIndex][i]["Value"]
		local nMineralNuM = tMineralNum[i]
		if nMineralNuM > 0 then
			nNeedMoney = nNeedMoney + (nMineralNuM * nMineralValue)
			nSumMineral = nSumMineral + nMineralNuM
			nHaveItem = nHaveItem + 1
			tMineralReward["DeleteItem"][nHaveItem] = {}
			tMineralReward["DeleteItem"][nHaveItem]["Id"] = tOhterNpc_Data["Mineral"][nIndex][i]["ItemId"]
			tMineralReward["DeleteItem"][nHaveItem]["ItemNum"] = nMineralNuM
		end
		-- nNeedMoney = nNeedMoney + (nMineralNuM * nMineralValue)
		-- nSumMineral = nSumMineral + nMineralNuM
		-- tMineralReward["DeleteItem"][i]["ItemNum"] = nMineralNuM
	end
	-- 矿车兑换额度不足
	if nChkMineral and nSumMineral <= 0 then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["NotEnoughMoney"])
		return
	elseif nSumMineral <= 0 then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	-- if not User_CanPutMoney2Bag(nNeedMoney) then
		-- LinkNpcGossipFunc_New(nNpcId, "2-1")
		-- return
	-- end
	
	local nEvent = tOhterNpc_Data["Stc"]["Event"][nIndex + 6]
	local nData = tOhterNpc_Data["Stc"]["Data"][nIndex + 6]
	-- 扣除矿石获得奖励
	-- tMineralReward["RewardMoney"]["Value"] = nNeedMoney
	tMineralReward["RewardItem"][1]["Attr"] = "0 " .. nNeedMoney
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tMineralReward) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tMineralReward)
	
	
	--battlepass 增加进度
	-- if nSumMineral>= 10 then
		-- BattlePassTaskTest_TaskAddProgress(13,10)
	-- else
		-- BattlePassTaskTest_TaskAddProgress(13,nSumMineral)
	-- end 
	
	-- 记录log
	Sys_SaveEmoneyBuy(tOhterNpc_Data["EmoneyLog"][4])
	
	-- 记录到每日银两排行榜
	local nUserId = Get_UserId()
	local nUserName = Get_UserName(nUserId)
	OhterNpc_DayRewardMoneyRank_Data(nNeedMoney, nUserId, nUserName)
	-- 矿山初探奖励
	-- OhterNpc_DoneTheFirstJob()
	-- 扣除矿车兑换额度
	if nIndex == 2 then
		nNpcQuota = nNpcQuota - nNeedMoney
		Sys_SetSynaGlobalTime(nGlobalId, nGlobalPos, nNpcQuota)
	else
		nNpcQuota = nNpcQuota - nNeedMoney
		Sys_SetSynaGlobalData(nGlobalId, nGlobalPos, nNpcQuota)
	end
	
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	
	Task_AddStatistic(nEvent, nData, nSumMineral, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	
	-- 满30W播报
	OhterNpc_UserDayRewardBroadcast(nNeedMoney)
	-- 上交银/铜矿石满数量额外获得矿山开奖券
	-- 判断是否领取
	local nHandInNum = Get_UserStatisticValue(nEvent, nData)
	if nHandInNum >= tOhterNpc_Data["HandInNum"][nIndex] and nHandInNum < 100000 then
		if User_CheckLeftSpace(1) then
			RewardTemplate_UseItemAndMsg(tOhterNpc_Reward["AdditionalReward"][nIndex])
			Task_SetStatistic(nEvent, nData, 100000, 1)
			Task_SetStcTimestamp(nEvent, nData, 0)
		end
	end
	if nIndex == 2 then
		tNpcGossip[nNpcId]["Text312"] = string.format(tOhterNpc_Text[23054]["Text312"], nSumMineral)
		tNpcGossip[nNpcId]["Text315"] = string.format(tOhterNpc_Text[23054]["Text315"], nNeedMoney)
	else
		tNpcGossip[nNpcId]["Text312"] = string.format(tOhterNpc_Text[23055]["Text312"], nSumMineral)
		tNpcGossip[nNpcId]["Text315"] = string.format(tOhterNpc_Text[23055]["Text315"], nNeedMoney)
	end
	
	LinkNpcGossipFunc_New(nNpcId, "3-1")
end

-- 兑换满30W播报
function OhterNpc_UserDayRewardBroadcast(nNeedMoney)
	local nEventMoney = tOhterNpc_Data["Stc"]["Event"][13]
	local nDataMoney = tOhterNpc_Data["Stc"]["Data"][13]
	local nUserDayReward = tOhterNpc_Data["UserDayReward"]
	-- 判断是否隔天
	if Task_StcInterval(nEventMoney, nDataMoney, 1, 4) then
		Task_SetStatistic(nEventMoney, nDataMoney, 0, 1)
		Task_SetStcTimestamp(nEventMoney, nDataMoney, 0)
	end
	-- 今日兑换的金币
	local nDayMoneyBefore = Get_UserStatisticValue(nEventMoney, nDataMoney)
	Task_AddStatistic(nEventMoney, nDataMoney, nNeedMoney, 1)
	Task_SetStcTimestamp(nEventMoney, nDataMoney, 0)
	local nDayMoneyAfter = Get_UserStatisticValue(nEventMoney, nDataMoney)
	local nUserName = Get_UserName()
	-- 累计提交300以上公告
	if nDayMoneyAfter >= nUserDayReward then
		-- Sys_SystemBroadcast(string.format(tOhterNpc_Text["Broadcast"]["RewardMoney"], nUserName))
		Sys_TalkBroadcast(string.format(tOhterNpc_Text["Broadcast"]["RewardMoney"], nUserName, nDayMoneyAfter))
	end
	-- 一次性提交超过300公告
	if nNeedMoney > nUserDayReward then
		Sys_SystemBroadcast(string.format(tOhterNpc_Text["Broadcast"]["RewardOneTime"], nUserName, nNeedMoney))
	end
end

-- 矿车兑换额度不足，兑换开采值
function OhterNpc_SubMineralOnMiner(nNpcId, nIndex, nQuality)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	local nEvent = tOhterNpc_Data["Stc"]["Event"][1]
	local nData = tOhterNpc_Data["Stc"]["Data"][1]
	-- 每日开奖卷
	local nDayRewardEvent = tOhterNpc_Data["Stc"]["Event"][nIndex + 6]
	local nDayRewardData = tOhterNpc_Data["Stc"]["Data"][nIndex + 6]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_StcInterval(nDayRewardEvent, nDayRewardData, 1, 4) then
		Task_SetStatistic(nDayRewardEvent, nDayRewardData, 0, 1)
		Task_SetStcTimestamp(nDayRewardEvent, nDayRewardData, 0)
	end
	-- 判断是否在活动上交时间
	if not Sys_ChkDayTime(tOhterNpc_Data["MineralOnMiner"]) then
		return
	end
	-- 判断背包有没有矿石
	local nItemId = tOhterNpc_Data["Mineral"][nIndex][nQuality]["ItemId"]
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	
	local nExploitation = 0
	local nMineralNuM = Get_CountItemType(nItemId, 0)
	if nMineralNuM <= 0 then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	-- 矿石兑换表重新赋值
	local nMineralValue = tOhterNpc_Data["ExploitationValue"][nIndex][nQuality]
	local tMineralReward = CommonFunc_Copy(tOhterNpc_Reward["Exploitation"][nIndex])
	tMineralReward["DeleteItem"][1] = {}
	tMineralReward["DeleteItem"][1]["Id"] = nItemId
	tMineralReward["DeleteItem"][1]["ItemNum"] = nMineralNuM
	nExploitation = nMineralNuM * nMineralValue
	
	-- 扣除矿石获得奖励
	if RewardTemplate_UseItemAndMsg(tMineralReward) then
		-- 记录log
		Sys_SaveEmoneyBuy(tOhterNpc_Data["EmoneyLog"][5])
		
		Task_AddStatistic(nEvent, nData, nExploitation, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		-- 提交数量
		Task_AddStatistic(nDayRewardEvent, nDayRewardData, nMineralNuM, 1)
		Task_SetStcTimestamp(nDayRewardEvent, nDayRewardData, 0)
		-- 增加开采值临时表
		local nUserId = Get_UserId()
		if tOhterNpc_UserHandInMineral[nUserId] == nil then
			tOhterNpc_UserHandInMineral[nUserId] = 0
		end
		tOhterNpc_UserHandInMineral[nUserId] = tOhterNpc_UserHandInMineral[nUserId] + nExploitation
		-- 设置全服上交开采值
		local nGlobalId = tOhterNpc_Data["GlobalId"]
		local nServerMiningValue = Get_SysDynaGlobalData3(nGlobalId)
		nServerMiningValue = nServerMiningValue + nExploitation
		Sys_SetSynaGlobalData3(nGlobalId, nServerMiningValue)
		-- 上交银/铜矿石满数量额外获得矿山开奖券
		-- 判断是否领取
		local nHandInNum = Get_UserStatisticValue(nDayRewardEvent, nDayRewardData)
		if nHandInNum >= tOhterNpc_Data["HandInNum"][nIndex] and nHandInNum < 100000 then
			if User_CheckLeftSpace(1) then
				RewardTemplate_UseItemAndMsg(tOhterNpc_Reward["AdditionalReward"][nIndex])
				Task_SetStatistic(nDayRewardEvent, nDayRewardData, 100000, 1)
				Task_SetStcTimestamp(nDayRewardEvent, nDayRewardData, 0)
			end
		end
		
			--battlepass 增加进度
		-- if nMineralNuM>= 10 then
			-- BattlePassTaskTest_TaskAddProgress(13,10)
		-- else
			-- BattlePassTaskTest_TaskAddProgress(13,nMineralNuM)
		-- end
	end
	tNpcGossip[nNpcId]["Text522"] = string.format(tOhterNpc_Text[nNpcId]["Text522"], nMineralNuM)
	tNpcGossip[nNpcId]["Text525"] = string.format(tOhterNpc_Text[nNpcId]["Text525"], nExploitation)
	LinkNpcGossipFunc_New(nNpcId, "5-2")
end

-- 单品质上交银/铜矿
function OhterNpc_SubMineralOnceQuality(nNpcId, nIndex, nQuality)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	local nEvent = tOhterNpc_Data["Stc"]["Event"][1]
	local nData = tOhterNpc_Data["Stc"]["Data"][1]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	-- 判断是否在活动上交时间
	if not Sys_ChkDayTime(tOhterNpc_Data["BusinessmanTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutBusinessmanTime"])
		return
	end
	-- 判断背包有没有矿石
	local nItemId = tOhterNpc_Data["Mineral"][nIndex][nQuality]["ItemId"]
	if not Item_ChkItem(nItemId) then
		tNpcGossip[23056]["Text" .. (nIndex + 4) .. "12"] = string.format(tOhterNpc_Text[23056]["Text" .. (nIndex + 4) .. "12"], tOhterNpc_Text["Dialog"]["Mineral"][nQuality])
		LinkNpcGossipFunc_New(nNpcId, (nIndex + 4) .. "-1")
		return
	end
	
	local nExploitation = 0
	local nMineralNuM = Get_CountItemType(nItemId, 0)
	if nMineralNuM <= 0 then
		tNpcGossip[23056]["Text" .. (nIndex + 4) .. "12"] = string.format(tOhterNpc_Text[23056]["Text" .. (nIndex + 4) .. "12"], tOhterNpc_Text["Dialog"]["Mineral"][nQuality])
		LinkNpcGossipFunc_New(nNpcId, (nIndex + 4) .. "-1")
		return
	end
	-- 矿石兑换表重新赋值
	local nMineralValue = tOhterNpc_Data["ExploitationValue"][nIndex][nQuality]
	local tMineralReward = CommonFunc_Copy(tOhterNpc_Reward["Exploitation"][nIndex])
	tMineralReward["DeleteItem"][1] = {}
	tMineralReward["DeleteItem"][1]["Id"] = nItemId
	tMineralReward["DeleteItem"][1]["ItemNum"] = nMineralNuM
	nExploitation = nMineralNuM * nMineralValue
	
	-- 扣除矿石获得奖励
	if RewardTemplate_UseItemAndMsg(tMineralReward) then
		-- 记录log
		Sys_SaveEmoneyBuy(tOhterNpc_Data["EmoneyLog"][5])
		
		Task_AddStatistic(nEvent, nData, nExploitation, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		-- 增加开采值临时表
		local nUserId = Get_UserId()
		if tOhterNpc_UserHandInMineral[nUserId] == nil then
			tOhterNpc_UserHandInMineral[nUserId] = 0
		end
		tOhterNpc_UserHandInMineral[nUserId] = tOhterNpc_UserHandInMineral[nUserId] + nExploitation
		-- 设置全服上交开采值
		local nGlobalId = tOhterNpc_Data["GlobalId"]
		local nServerMiningValue = Get_SysDynaGlobalData3(nGlobalId)
		nServerMiningValue = nServerMiningValue + nExploitation
		Sys_SetSynaGlobalData3(nGlobalId, nServerMiningValue)
		
			--battlepass 增加进度
		-- if nMineralNuM>= 10 then
			-- BattlePassTaskTest_TaskAddProgress(13,10)
		-- else
			-- BattlePassTaskTest_TaskAddProgress(13,nMineralNuM)
		-- end
		
	end
	tNpcGossip[nNpcId]["Text" .. nIndex.. "22"] = string.format(tOhterNpc_Text[nNpcId]["Text" .. nIndex.. "22"], nMineralNuM)
	tNpcGossip[nNpcId]["Text" .. nIndex.. "23"] = string.format(tOhterNpc_Text[nNpcId]["Text" .. nIndex.. "23"], nExploitation)
	LinkNpcGossipFunc_New(nNpcId, nIndex .. "-2")
end

-- 上交银/铜矿石获取开采值   一键上交
function OhterNpc_SubMineralRewardExploitation(nNpcId, nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	local nEvent = tOhterNpc_Data["Stc"]["Event"][1]
	local nData = tOhterNpc_Data["Stc"]["Data"][1]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	-- 判断是否在活动上交时间
	if not Sys_ChkDayTime(tOhterNpc_Data["BusinessmanTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutBusinessmanTime"])
		return
	end
	-- 判断背包有没有矿石
	local tMineralNum, nChkMineral = OhterNpc_GetMineralNum(nNpcId, nIndex)
	if not nChkMineral then
		LinkNpcGossipFunc_New(nNpcId, nIndex .. "-1")
		return
	end
	
	local nExploitation = 0
	local nSumMineral = 0
	local nHaveItem = 0
	-- 矿石兑换表重新赋值
	local tMineralReward = CommonFunc_Copy(tOhterNpc_Reward["Exploitation"][nIndex])
	-- 计算矿石价格
	for i = 1, 5 do
		local nMineralValue = tOhterNpc_Data["ExploitationValue"][nIndex][i]
		local nMineralNuM = tMineralNum[i]
		if nMineralNuM > 0 then
			nSumMineral = nSumMineral + nMineralNuM
			nHaveItem = nHaveItem + 1
			tMineralReward["DeleteItem"][nHaveItem] = {}
			tMineralReward["DeleteItem"][nHaveItem]["Id"] = tOhterNpc_Data["Mineral"][nIndex][i]["ItemId"]
			tMineralReward["DeleteItem"][nHaveItem]["ItemNum"] = nMineralNuM
			nExploitation = nExploitation + (nMineralNuM * nMineralValue)
		end
	end
	if nSumMineral <= 0 then
		LinkNpcGossipFunc_New(nNpcId, nIndex .. "-2")
		return
	end
	
	-- 扣除矿石获得奖励
	if RewardTemplate_UseItemAndMsg(tMineralReward) then
		-- 记录log
		Sys_SaveEmoneyBuy(tOhterNpc_Data["EmoneyLog"][5])
		
		Task_AddStatistic(nEvent, nData, nExploitation, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		-- 增加开采值临时表
		local nUserId = Get_UserId()
		if tOhterNpc_UserHandInMineral[nUserId] == nil then
			tOhterNpc_UserHandInMineral[nUserId] = 0
		end
		tOhterNpc_UserHandInMineral[nUserId] = tOhterNpc_UserHandInMineral[nUserId] + nExploitation
		-- 设置全服上交开采值
		local nGlobalId = tOhterNpc_Data["GlobalId"]
		local nServerMiningValue = Get_SysDynaGlobalData3(nGlobalId)
		nServerMiningValue = nServerMiningValue + nExploitation
		Sys_SetSynaGlobalData3(nGlobalId, nServerMiningValue)
		
		--battlepass 增加进度
		-- if nSumMineral>= 10 then
			-- BattlePassTaskTest_TaskAddProgress(13,10)
		-- else
			-- BattlePassTaskTest_TaskAddProgress(13,nSumMineral)
		-- end
		
	end
	tNpcGossip[nNpcId]["Text" .. nIndex.. "22"] = string.format(tOhterNpc_Text[nNpcId]["Text" .. nIndex.. "22"], nSumMineral)
	tNpcGossip[nNpcId]["Text" .. nIndex.. "23"] = string.format(tOhterNpc_Text[nNpcId]["Text" .. nIndex.. "23"], nExploitation)
	LinkNpcGossipFunc_New(nNpcId, nIndex .. "-2")
end

-- 领取开采值分红
function OhterNpc_GetMiningBonus()
	-- 判断是否拥有开采值
	local nKaiEvent = tOhterNpc_Data["Stc"]["Event"][1]
	local nKaiData = tOhterNpc_Data["Stc"]["Data"][1]
	-- 判断隔天
	if Task_StcInterval(nKaiEvent, nKaiData, 1, 4) then
		Task_SetStatistic(nKaiEvent, nKaiData, 0, 1)
		Task_SetStcTimestamp(nKaiEvent, nKaiData, 0)
	end
	
	-- 判断领取时间
	if not Sys_ChkDayTime(tOhterNpc_Data["BusinessmanTime2"]) then
		return
	end
	
	if Task_ChkStcValue(nKaiEvent, nKaiData, "<=", 0) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["HaveNotBonus"])
		return
	end
	-- 判断是否领取过
	local nEvent = tOhterNpc_Data["Stc"]["Event"][15]
	local nData = tOhterNpc_Data["Stc"]["Data"][15]
	-- 判断是否隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["HaveGetBonus"])
		return
	end
	local tMiningBonus = CommonFunc_Copy(tOhterNpc_Reward["MiningBonus"])
	-- 计算预计奖励
	local nGlobalId = tOhterNpc_Data["GlobalId"]
	-- 获取开采值奖池
	local nUserMiningValue = Get_UserStatisticValue(nKaiEvent, nKaiData)
	local nServerJackpot = tOhterNpc_Data["ExploitationJackpot"]
	local nServerMiningValue = Get_SysDynaGlobalData3(nGlobalId)
	local nRewardMoney = 0
	if nServerMiningValue == 0 then
		nRewardMoney = 0
	else
		nRewardMoney = math.ceil((nUserMiningValue / nServerMiningValue) * nServerJackpot)
	end
	if nRewardMoney == 0 then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["HaveNotBonus"])
		return
	end
	tMiningBonus["RewardItem"][1]["Attr"] = "0 " .. nRewardMoney
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tMiningBonus) then
		return
	end
	-- 重置掩码
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	RewardTemplate_UseItemAndMsg(tMiningBonus)
	-- 记录到每日排行榜
	local nUserId = Get_UserId()
	local nUserName = Get_UserName()
	OhterNpc_DayRewardMoneyRank_Data(nRewardMoney, nUserId, nUserName)
end

-- 怪物击杀掉落矿石
function OhterNpc_MonsterDrop()
	if not RewardTemplate_ChkRandomSpace(tOhterNpc_RandomMonsterDrop, 1) then
		return
	end
	local tReward = RewardTemplate_NewRandom(tOhterNpc_RandomMonsterDrop, 1)
	local nIndex = tReward[1]["tAward"][1]["Item_Index"]
	if nIndex == 7 then
		local nItemId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
		Sys_SaveEmoneyBuy(tOhterNpc_Data["EmoneyLog"][1])
	elseif nIndex == 5 then
		local nItemId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
		Sys_SaveEmoneyBuy(tOhterNpc_Data["EmoneyLog"][7])
	elseif nIndex == 6 then
		local nItemId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
		Sys_SaveEmoneyBuy(tOhterNpc_Data["EmoneyLog"][8])
	end
end

-- 击杀怪物记录
function OhterNpc_SaveKillMonster(nMonsterId)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 怪物击杀提示
	local nRandomNum = math.random(1, 300)
	if nRandomNum >= 1 and nRandomNum <= 6 then
		User_TalkChannel2005(tOhterNpc_Text["SysTalk"]["MonsterKill"][nRandomNum])
	end
	
	-- 怪物掉落矿石
	OhterNpc_MonsterDrop()
	
	local nEvent = tOhterNpc_Data["Stc"]["Event"][6]
	local nData = tOhterNpc_Data["Stc"]["Data"][6]
	-- 任务面板显示
	local nTaskId = tOhterNpc_Data["TaskId"]
	
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		-- 判断任务是否隔天
		if not Task_ChkTaskDetail(nTaskId) then
			if Task_AddTaskDetail(nTaskId) then
				Task_SetTaskDetailData1(nTaskId,0)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
				Task_SetTaskDetailData7(nTaskId,os.time())
			end
		else
			Task_SetTaskDetailData1(nTaskId,0)  --置杀怪数量
			Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
			Task_SetTaskDetailData7(nTaskId,os.time())
		end
	end
	-- 判断是否杀怪满200
	if Task_ChkStcValue(nEvent, nData, ">=", 200) then
		return
	end
	-- 记录杀怪数据
	Task_AddStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	local nStcData = Get_UserStatisticValue(nEvent,nData)
	if nStcData <= 100 then
		if not Task_ChkTaskDetail(nTaskId) then
			if Task_AddTaskDetail(nTaskId) then
				Task_SetTaskDetailData1(nTaskId,nStcData)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
				Task_SetTaskDetailData7(nTaskId,os.time())
			end
		else
			if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
				Task_SetTaskDetailData1(nTaskId,nStcData)  --置杀怪数量
				Task_SetTaskDetailCompleteFlag(nTaskId,0) --置完成标示为0
				Task_SetTaskDetailData7(nTaskId,os.time())
			end
		end
	end
	
	-- 打怪满100只，满足打开宝箱的条件
	if Task_ChkStcValue(nEvent,nData,"==",100) then
		Sys_MsgBox(tOhterNpc_Text["SysTalk"]["Open"], "OhterNpc_GotoBox", nil)
	end
	
	-- 打怪满200只奖励矿山开奖券
	if Task_ChkStcValue(nEvent,nData,"==",200) then
		Item_AddNewItem(tOhterNpc_Data["KiddieRideItemId"], "0 1")
		if User_CheckLeftSpace(1) then
			User_TalkChannel2005(tOhterNpc_Text["SysTalk"]["AwardItem"])
		else
			User_TalkChannel2005(tOhterNpc_Text["SysTalk"]["AwardNoSpace"])
		end
		Sys_SaveActionRewardLog(tOhterNpc_Data["Log"][1])
	end
end

-- 神龙岛古神灵境击杀掉落
function OhterNpc_KillMonsterDrop(nMonsterId)
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 判断背包空间
	if not RewardTemplate_ChkRandomSpace(tOhterNpc_RandomMonsterDrop, 2) then
		return
	end
	local nEvent = tOhterNpc_Data["Stc"]["Event"][11]
	local nData = tOhterNpc_Data["Stc"]["Data"][11]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 4) then
		return
	elseif Task_ChkStcValue(nEvent, nData, "==", 4) then
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		User_TalkChannel2005(tOhterNpc_Text["SysTalk"]["MonsterDropFull"])
	else
		RewardTemplate_NewRandom(tOhterNpc_RandomMonsterDrop, 2)
	end
end

-- 传送到秘矿宝箱
function OhterNpc_GotoBox()
	local nMapId = tOhterNpc_Data["MapId"]
	if Get_UserMapId() == nMapId then
		local nPosX = tOhterNpc_Data["NpcId"][5][1]["PosX"]
		local nPosY = tOhterNpc_Data["NpcId"][5][1]["PosY"]
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,23052)
	end
	
end


-- 移动铜矿车，重置一小时上交数量
function OhterNpc_MoveInCopperMiner()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 重置矿车兑换额度
	local nResetGlobalId = tOhterNpc_Data["AmountId"]
	-- Sys_ResetAllSynaGlobalData(nResetGlobalId)
	-- 标志位
	local nSignGlobalId = tOhterNpc_Data["SignGlobal"]
	local sSignNum = Get_SysDynaGlobalData1(nSignGlobalId)
	if sSignNum > 0 then
		return
	end
	-- 其他矿车补充银两
	for i = 1, 4 do
		Sys_SetSynaGlobalData(nResetGlobalId, i - 1, tOhterNpc_Data["ExchangeNum"][3])
	end
	-- 公告
	Sys_SystemBroadcast(tOhterNpc_Text["Broadcast"]["Copper"])
	Sys_TalkBroadcast(tOhterNpc_Text["Broadcast"]["Copper"])
	-- 设置标志位
	Sys_SetSynaGlobalData1(nSignGlobalId, 1)
end


-- 重置标志位
function OhterNpc_MoveOutCopperMiner()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 重置矿车兑换额度
	local nSignGlobalId = tOhterNpc_Data["SignGlobal"]
	Sys_SetSynaGlobalData1(nSignGlobalId, 0)
end

-- 移动银矿车跟黄金矿工，重置两小时上交数量
function OhterNpc_MoveInSilverMiner()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 标志位
	local nSignGlobalId = tOhterNpc_Data["SignGlobal"]
	local sSignNum = Get_SysDynaGlobalData2(nSignGlobalId)
	if sSignNum > 0 then
		return
	end
	-- 重置矿车兑换额度
	local nResetGlobalId = tOhterNpc_Data["AmountId"]
	-- 其他矿车补充银两
	for i = 1, 4 do
		Sys_SetSynaGlobalTime(nResetGlobalId, i - 1, tOhterNpc_Data["ExchangeNum"][2])
	end
	-- 移出黄金矿工
	local nNpcId = tOhterNpc_Data["NpcId"][1][1]["Id"]
	local nPosX = tOhterNpc_Data["NpcId"][1][1]["PosX"]
	local nPosY = tOhterNpc_Data["NpcId"][1][1]["PosY"]
	local nMapId = tOhterNpc_Data["MapId"]
	Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
	-- 公告
	Sys_SystemBroadcast(tOhterNpc_Text["Broadcast"]["Gold"])
	Sys_TalkBroadcast(tOhterNpc_Text["Broadcast"]["Gold"])
	-- 设置标志位
	Sys_SetSynaGlobalData2(nSignGlobalId, 1)
end


-- 五分钟移回银矿车和黄金矿工，重置矿车兑换额度
function OhterNpc_MoveOutSilverMiner()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 标志位
	local nSignGlobalId = tOhterNpc_Data["SignGlobal"]
	local sSignNum = Get_SysDynaGlobalData2(nSignGlobalId)
	if sSignNum == 0 then
		return
	end
	local nNpcId = tOhterNpc_Data["NpcId"][1][1]["Id"]
	Npc_MoveNpcPos(nNpcId,5000,100,100)
	-- 设置标志位
	Sys_SetSynaGlobalData2(nSignGlobalId, 0)
end

-- 矿洞关闭移出流浪商人
function OhterNpc_MoveInBusinessman()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 标志位
	local nSignGlobalId = tOhterNpc_Data["SignGlobal"]
	local sSignNum = Get_SysDynaGlobalData3(nSignGlobalId)
	if sSignNum > 0 then
		return
	end
	-- 移出流浪商人
	local nNpcId = tOhterNpc_Data["NpcId"][4][1]["Id"]
	local nPosX = tOhterNpc_Data["NpcId"][4][1]["PosX"]
	local nPosY = tOhterNpc_Data["NpcId"][4][1]["PosY"]
	local nMapId = tOhterNpc_Data["CityId"]
	-- 判断是否交易服
	if OhterNpc_ChkTradeServer() then
		nNpcId = tOhterNpc_Data["NpcId"][4][2]["Id"]
		nPosX = tOhterNpc_Data["NpcId"][4][2]["PosX"]
		nPosY = tOhterNpc_Data["NpcId"][4][2]["PosY"]
		nMapId = tOhterNpc_Data["TradeCityId"]
	end
	Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
	-- 创建陷阱
	Trap_CreateMapTrap(2020,1894,0,nMapId,nPosX,nPosY,0,0)
	-- 设置标志位
	Sys_SetSynaGlobalData3(nSignGlobalId, 1)
end

-- 移回流浪商人，发放黄金开采奖励
function OhterNpc_MoveOutBusinessman()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 标志位
	local nSignGlobalId = tOhterNpc_Data["SignGlobal"]
	local sSignNum = Get_SysDynaGlobalData3(nSignGlobalId)
	if sSignNum == 0 then
		return
	end
	local nGlobalId = tOhterNpc_Data["GlobalId"]
	-- 移回流浪商人
	local nNpcId = tOhterNpc_Data["NpcId"][4][1]["Id"]
	Npc_MoveNpcPos(nNpcId,5000,100,100)
	-- 删除陷阱
	Trap_DelMapTrap(1002, 2020)
	Trap_DelMapTrap(10364, 2020)
	-- -- 发放黄金开采奖励
	-- local nServerMiningValue = Get_SysDynaGlobalData3(nGlobalId)
	-- -- 获取开采值奖池
	-- local nServerJackpot = tOhterNpc_Data["ExploitationJackpot"]
	-- for nUserId, nMiningValue in pairs(tOhterNpc_UserHandInMineral) do
		-- -- 计算玩家获得银两奖励
		-- local nRewardMoney = math.ceil((nMiningValue / nServerMiningValue) * nServerJackpot)
		-- local nExistDay = tOhterNpc_Data["Letter"][1]["ExistDay"]
		-- local sSender = tOhterNpc_Data["Letter"][1]["Sender"]
		-- local sTitle = tOhterNpc_Data["Letter"][1]["Title"]
		-- local sContent = string.format(tOhterNpc_Data["Letter"][1]["Content"], nMiningValue, nServerMiningValue, nRewardMoney)
		-- Sys_SendMail(nUserId, nRewardMoney, 0, 0, 0, nExistDay, sSender, sTitle, sContent)
		-- -- 记录到每日银两排行榜
		-- if tOhterNpc_DayReward[nUserId] ~= nil then
			-- local nUserName = tOhterNpc_DayReward[nUserId]["UserName"]
			-- OhterNpc_DayRewardMoneyRank_Data(nRewardMoney, nUserId, nUserName)
		-- end
	-- end
	-- 重置玩家上交矿石开采值值
	tOhterNpc_UserHandInMineral = {}
	Sys_SetSynaGlobalData3(nGlobalId, 0)
	-- -- 重置开采值奖池
	-- Sys_SetSynaGlobalData5(nGlobalId, tOhterNpc_Data["ExploitationJackpot"])
	-- 玩家每日获得银两数据清零
	tOhterNpc_DayReward = {}
	-- 设置标志位
	Sys_SetSynaGlobalData3(nSignGlobalId, 0)
end

-- 摇摇乐第一次开奖
function OhterNpc_ShakeRewardFirst()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 标志位
	local nSignGlobalId = tOhterNpc_Data["SignGlobal"]
	local sSignNum = Get_SysDynaGlobalTime1(nSignGlobalId)
	if sSignNum > 0 then
		return
	end
	local nGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerSub = Get_SysDynaGlobalData0(nGlobalId)
	-- 重置参与人数
	nJoinUserNum = 0
	-- 无人参与
	if nServerSub == 0 then
		-- 玩家数据清零
		tOhterNpc_KiddieRideHandInData = {}
		Sys_SetSynaGlobalData0(nGlobalId, 0)
		-- 设置标志位
		Sys_SetSynaGlobalTime1(nSignGlobalId, 1)
		return
	end
	local nNum = 0
	local tRandom = CommonFunc_Copy(tOhterNpc_RandomReward)
	tRandom[1]["ItemChanceSum"] = nServerSub
	-- Sys_SystemBroadcast(tostring(#tOhterNpc_KiddieRideHandInData))
	
	for nUserId, tUserData in pairs(tOhterNpc_KiddieRideHandInData) do
		-- Sys_SystemBroadcast(tUserData["Score"])
		nNum = nNum + 1
		tRandom[1][nNum] = {}
		tRandom[1][nNum]["RandomItemChanceType"] = 2
		tRandom[1][nNum]["ItemChance"] = tUserData["Score"]
		tRandom[1][nNum]["UserId"] = nUserId
		tRandom[1][nNum]["Score"] = tUserData["Score"]
		tRandom[1][nNum]["Name"] = tUserData["Name"]
		tRandom[1][nNum]["Item_1"] = tUserData["Score"]
	end
	if nNum == 0 then
		-- 玩家数据清零
		tOhterNpc_KiddieRideHandInData = {}
		Sys_SetSynaGlobalData0(nGlobalId, 0)
		-- 设置标志位
		Sys_SetSynaGlobalTime1(nSignGlobalId, 1)
		return
	end
	-- Sys_SystemBroadcast("1")
	local fFlag, tRandomResult = Probabil_RandomAward(tRandom, 1)
	local nSuccId = tRandomResult[1]["tAward"][1]["UserId"]
	local nScore = tRandomResult[1]["tAward"][1]["Score"]
	local sName = tRandomResult[1]["tAward"][1]["Name"]
	-- Sys_SystemBroadcast("2")
	-- 邮件发奖
	local nRewardMoney = tOhterNpc_Data["Shake"][1]
	local nExistDay = tOhterNpc_Data["Letter"][2]["ExistDay"]
	local sSender = tOhterNpc_Data["Letter"][2]["Sender"]
	local sTitle = tOhterNpc_Data["Letter"][2]["Title"]
	local sContent = tOhterNpc_Data["Letter"][2]["Content"]
	local nActionId = tOhterNpc_Data["Shake"]["Action"][1]
	Sys_SendMail(nSuccId, 0, 0, nActionId, 0, nExistDay, sSender, sTitle, sContent)
	-- 记录到每日银两排行榜
	OhterNpc_DayRewardMoneyRank_Data(nRewardMoney, nSuccId, sName)
	Sys_SystemBroadcast(string.format(tOhterNpc_Text["Broadcast"]["Shake1"], sName))
	
	-- 去掉中奖玩家概率
	-- table.remove(tOhterNpc_KiddieRideHandInData, nSuccId)
	tOhterNpc_KiddieRideHandInData[nSuccId] = nil
	nServerSub = nServerSub - nScore
	Sys_SetSynaGlobalData0(nGlobalId, nServerSub)
	-- 设置标志位
	Sys_SetSynaGlobalTime1(nSignGlobalId, 1)
end


-- 摇摇乐第二次开奖
function OhterNpc_ShakeRewardSecond()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 标志位
	local nSignGlobalId = tOhterNpc_Data["SignGlobal"]
	local sSignNum = Get_SysDynaGlobalTime2(nSignGlobalId)
	if sSignNum > 0 then
		-- 设置标志位
		Sys_SetSynaGlobalTime2(nSignGlobalId, 1)
		return
	end
	local nGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerSub = Get_SysDynaGlobalData0(nGlobalId)
	-- 无人参与
	if nServerSub == 0 then
		-- 玩家数据清零
		tOhterNpc_KiddieRideHandInData = {}
		Sys_SetSynaGlobalData0(nGlobalId, 0)
		return
	end
	local nNum = 0
	local tRandom = CommonFunc_Copy(tOhterNpc_RandomReward)
	tRandom[1]["ItemChanceSum"] = nServerSub
	for nUserId, tUserData in pairs(tOhterNpc_KiddieRideHandInData) do
		nNum = nNum + 1
		tRandom[1][nNum] = {}
		tRandom[1][nNum]["RandomItemChanceType"] = 2
		tRandom[1][nNum]["ItemChance"] = tUserData["Score"]
		tRandom[1][nNum]["UserId"] = nUserId
		tRandom[1][nNum]["Score"] = tUserData["Score"]
		tRandom[1][nNum]["Name"] = tUserData["Name"]
		tRandom[1][nNum]["Item_1"] = tUserData["Score"]
	end
	if nNum == 0 then
		-- 玩家数据清零
		tOhterNpc_KiddieRideHandInData = {}
		Sys_SetSynaGlobalData0(nGlobalId, 0)
		-- 设置标志位
		Sys_SetSynaGlobalTime2(nSignGlobalId, 1)
		return
	end
	local fFlag, tRandomResult = Probabil_RandomAward(tRandom, 1)
	local nSuccId = tRandomResult[1]["tAward"][1]["UserId"]
	local nScore = tRandomResult[1]["tAward"][1]["Score"]
	local sName = tRandomResult[1]["tAward"][1]["Name"]
	-- 邮件发奖
	local nRewardMoney = tOhterNpc_Data["Shake"][2]
	local nExistDay = tOhterNpc_Data["Letter"][2]["ExistDay"]
	local sSender = tOhterNpc_Data["Letter"][2]["Sender"]
	local sTitle = tOhterNpc_Data["Letter"][2]["Title"]
	local sContent = tOhterNpc_Data["Letter"][2]["Content"]
	local nActionId = tOhterNpc_Data["Shake"]["Action"][2]
	Sys_SendMail(nSuccId, 0, 0, nActionId, 0, nExistDay, sSender, sTitle, sContent)
	-- 记录到每日银两排行榜
	OhterNpc_DayRewardMoneyRank_Data(nRewardMoney, nSuccId, sName)
	Sys_SystemBroadcast(string.format(tOhterNpc_Text["Broadcast"]["Shake2"], sName))
	
	-- 去掉中奖玩家概率
	-- table.remove(tOhterNpc_KiddieRideHandInData, nSuccId)
	tOhterNpc_KiddieRideHandInData[nSuccId] = nil
	nServerSub = nServerSub - nScore
	Sys_SetSynaGlobalData0(nGlobalId, nServerSub)
	-- 设置标志位
	Sys_SetSynaGlobalTime2(nSignGlobalId, 1)
end

-- 摇摇乐第三次开奖
function OhterNpc_ShakeRewardThird()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 标志位
	local nSignGlobalId = tOhterNpc_Data["SignGlobal"]
	local sSignNum = Get_SysDynaGlobalTime3(nSignGlobalId)
	if sSignNum > 0 then
		-- 设置标志位
		Sys_SetSynaGlobalTime3(nSignGlobalId, 1)
		return
	end
	local nGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerSub = Get_SysDynaGlobalData0(nGlobalId)
	-- 无人参与
	if nServerSub == 0 then
		-- 玩家数据清零
		tOhterNpc_KiddieRideHandInData = {}
		Sys_SetSynaGlobalData0(nGlobalId, 0)
		-- 设置标志位
		Sys_SetSynaGlobalTime3(nSignGlobalId, 1)
		return
	end
	local nNum = 0
	local tRandom = CommonFunc_Copy(tOhterNpc_RandomReward)
	tRandom[1]["ItemChanceSum"] = nServerSub
	for nUserId, tUserData in pairs(tOhterNpc_KiddieRideHandInData) do
		nNum = nNum + 1
		tRandom[1][nNum] = {}
		tRandom[1][nNum]["RandomItemChanceType"] = 2
		tRandom[1][nNum]["ItemChance"] = tUserData["Score"]
		tRandom[1][nNum]["UserId"] = nUserId
		tRandom[1][nNum]["Score"] = tUserData["Score"]
		tRandom[1][nNum]["Name"] = tUserData["Name"]
		tRandom[1][nNum]["Item_1"] = tUserData["Score"]
	end
	if nNum == 0 then
		-- 玩家数据清零
		tOhterNpc_KiddieRideHandInData = {}
		Sys_SetSynaGlobalData0(nGlobalId, 0)
		-- 设置标志位
		Sys_SetSynaGlobalTime3(nSignGlobalId, 1)
		return
	end
	local fFlag, tRandomResult = Probabil_RandomAward(tRandom, 1)
	local nSuccId = tRandomResult[1]["tAward"][1]["UserId"]
	local nScore = tRandomResult[1]["tAward"][1]["Score"]
	local sName = tRandomResult[1]["tAward"][1]["Name"]
	-- 邮件发奖
	local nRewardMoney = tOhterNpc_Data["Shake"][3]
	local nExistDay = tOhterNpc_Data["Letter"][2]["ExistDay"]
	local sSender = tOhterNpc_Data["Letter"][2]["Sender"]
	local sTitle = tOhterNpc_Data["Letter"][2]["Title"]
	local sContent = tOhterNpc_Data["Letter"][2]["Content"]
	local nActionId = tOhterNpc_Data["Shake"]["Action"][3]
	Sys_SendMail(nSuccId, 0, 0, nActionId, 0, nExistDay, sSender, sTitle, sContent)
	-- 记录到每日银两排行榜
	OhterNpc_DayRewardMoneyRank_Data(nRewardMoney, nSuccId, sName)
	Sys_SystemBroadcast(string.format(tOhterNpc_Text["Broadcast"]["Shake3"], sName))
	
	-- 玩家数据清零
	tOhterNpc_KiddieRideHandInData = {}
	Sys_SetSynaGlobalData0(nGlobalId, 0)
	-- 设置标志位
	Sys_SetSynaGlobalTime3(nSignGlobalId, 1)
end

-- 标志位清空
function OhterNpc_ResetGloalSign()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	local nSignGlobalId = tOhterNpc_Data["SignGlobal"]
	Sys_ResetAllSynaGlobalData(nSignGlobalId)
	Sys_ResetAllSynaGlobalTime(nSignGlobalId)
end

-- 掉落限量清空
function OhterNpc_ResetGloalDrop()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	local nGlobalId = tOhterNpc_Data["GlobalId"]
	Sys_SetSynaGlobalData4(nGlobalId, 0)
	Sys_SetSynaGlobalData2(nGlobalId, 0)
end

-- 获得矿渣数量
function OhterNpc_GetSlagNum()
	local tSlagNum = {}
	local fChkSlag = false
	local nSlagSum = 0
	for i = 1, 40 do
		local nSlagId = tOhterNpc_Data["SlagId"][i]
		local nSlagNum = Get_CountItemType(nSlagId, 0)
		tSlagNum[i] = nSlagNum
		nSlagSum = nSlagSum + nSlagNum
		if nSlagSum >= tOhterNpc_Data["SlagNum"] then
			fChkSlag = true
		end
	end
	return tSlagNum, fChkSlag
end

-- 熔炼矿渣
function OhterNpc_MeltingSlag(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	-- 判断背包有没有足够矿渣
	local tSlagNum, fChkSlag = OhterNpc_GetSlagNum()
	if not fChkSlag then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["NotEnoughSlag"])
		return
	end
	
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tOhterNpc_Text["SysMsg"]["NotSpace"])
		return
	end
	
	local nSumSlag = 0
	local nHaveItem = 0
	-- 矿石兑换表重新赋值
	local tSlagReward = CommonFunc_Copy(tOhterNpc_Reward["Exploitation"][4])
	-- 计算矿石数量
	for i = 1, 40 do
		-- 判断是否达到10枚矿渣
		if nSumSlag >= tOhterNpc_Data["SlagNum"] then
			break
		end
		local nSlagNuM = tSlagNum[i]
		if nSlagNuM > 0 then
			
			-- 判断增加之后是否达到10枚矿渣
			if (nSumSlag + nSlagNuM) > tOhterNpc_Data["SlagNum"] then
				nSlagNuM = tOhterNpc_Data["SlagNum"] - nSumSlag
			end
			nSumSlag = nSumSlag + nSlagNuM
			nHaveItem = nHaveItem + 1
			tSlagReward["DeleteItem"][nHaveItem] = {}
			tSlagReward["DeleteItem"][nHaveItem]["Id"] = tOhterNpc_Data["SlagId"][i]
			tSlagReward["DeleteItem"][nHaveItem]["ItemNum"] = nSlagNuM
		end
	end
	if nSumSlag < tOhterNpc_Data["SlagNum"] then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["NotEnoughSlag"])
		return
	end
	
	-- 赋值奖励
	local tRandomResult = RewardTemplate_NewRandom(tOhterNpc_Reward["Exploitation"], 5)
	local nSuccId = tRandomResult[1]["tAward"][1]["Item_1"]
	tSlagReward["RewardItem"][1] = {}
	tSlagReward["RewardItem"][1]["Id"] = nSuccId
	tSlagReward["RewardItem"][1]["Attr"] = "0 1"
	
	-- 扣除矿石获得奖励
	if RewardTemplate_UseItemAndMsg(tSlagReward) then
		local sItemName = Get_ItemtypeName(nSuccId)
		tNpcGossip[nNpcId]["Text213"] = string.format(tOhterNpc_Text[nNpcId]["Text213"], sItemName)
		LinkNpcGossipFunc_New(nNpcId, "2-1")
	end
end

-- 一键熔炼矿渣
function OhterNpc_MeltingAllSlag(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["OutTime"])
		return
	end
	-- 判断背包有没有足够矿渣
	local tSlagNum, fChkSlag = OhterNpc_GetSlagNum()
	if not fChkSlag then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["NotEnoughSlag"])
		return
	end
	
	-- if not RewardTemplate_ChkRandomSpace(tOhterNpc_Reward["Exploitation"], 5) then
		-- User_TalkChannel2005(tOhterNpc_Text["SysMsg"]["NotSpace"])
		-- return
	-- end
	-- User_TalkChannel2005("11")
	local nSumSlag = 0
	-- 矿石兑换表重新赋值
	local tSlagReward = CommonFunc_Copy(tOhterNpc_Reward["Exploitation"][4])
	-- 计算矿石数量
	for i = 1, 40 do
		local nSlagNuM = tSlagNum[i]
		if nSlagNuM > 0 then
			nSumSlag = nSumSlag + nSlagNuM
		end
	end
	if nSumSlag < tOhterNpc_Data["SlagNum"] then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["NotEnoughSlag"])
		return
	end
	-- User_TalkChannel2005("22")
	-- 随机品质铜矿
	local tQualityCopper = {}
	local nNeedSlagTime = math.floor(nSumSlag / 10)
	local nNeedSlagNum = nNeedSlagTime * 10
	for i = 1, nNeedSlagTime do
		-- 随机品质铜矿奖励
		local tRandomResult = RewardTemplate_NewRandom(tOhterNpc_Reward["Exploitation"], 5)
		local nSuccId = tRandomResult[1]["tAward"][1]["Item_1"]
		if tQualityCopper[nSuccId] == nil then
			tQualityCopper[nSuccId] = 1
		else
			tQualityCopper[nSuccId] = tQualityCopper[nSuccId] + 1
		end
	end
	-- User_TalkChannel2005("33")
	-- 奖励表赋值
	local nHaveItem = 0
	local nNowSlagNum = 0
	for i = 1, 40 do
		-- 判断是否达到计算的枚数矿渣
		if nNowSlagNum >= nNeedSlagNum then
			break
		end
		local nSlagNuM = tSlagNum[i]
		if nSlagNuM > 0 then
			-- 判断增加之后是否达到计算的枚数矿渣
			if (nNowSlagNum + nSlagNuM) > nNeedSlagNum then
				nSlagNuM = nNeedSlagNum - nNowSlagNum
			end
			nHaveItem = nHaveItem + 1
			tSlagReward["DeleteItem"][nHaveItem] = {}
			tSlagReward["DeleteItem"][nHaveItem]["Id"] = tOhterNpc_Data["SlagId"][i]
			tSlagReward["DeleteItem"][nHaveItem]["ItemNum"] = nSlagNuM
			nNowSlagNum = nNowSlagNum + nSlagNuM
		end
	end
	-- User_TalkChannel2005("nNowSlagNum:" .. nNowSlagNum .. "nNeedSlagNum" .. nNeedSlagNum)
	if nNowSlagNum < nNeedSlagNum then
		return
	end
	-- User_TalkChannel2005("44")
	-- 赋值奖励
	local nIndexNum = 0
	for nSuccId, nSlagNum in pairs(tQualityCopper) do
		nIndexNum = nIndexNum + 1
		tSlagReward["RewardItem"][nIndexNum] = {}
		tSlagReward["RewardItem"][nIndexNum]["Id"] = nSuccId
		tSlagReward["RewardItem"][nIndexNum]["Attr"] = "0 " .. nSlagNum
	end
	
	-- 扣除矿石获得奖励
	RewardTemplate_UseItemAndMsg(tSlagReward)
end

-- 玩家上线任务
function OhterNpc_UserLogin()
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 记录玩家每日获得银两基本数据
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	if tOhterNpc_DayReward[nUserId] == nil then
		tOhterNpc_DayReward[nUserId] = {}
		tOhterNpc_DayReward[nUserId]["DayRewardMoney"] = 0
		tOhterNpc_DayReward[nUserId]["UserName"] = sUserName
	end
	-- 上线领取矿山开奖券
	if User_JudgeLevelAndMetempsychosis(tOhterNpc_Data["Level"], tOhterNpc_Data["Metempsychosis"]) then
		local nDayvent = tOhterNpc_Data["Stc"]["Event"][2]
		local nDayData = tOhterNpc_Data["Stc"]["Data"][2]
		-- 判断隔天
		if Task_StcInterval(nDayvent, nDayData, 1, 4) then
			Task_SetStatistic(nDayvent, nDayData, 0, 1)
			Task_SetStcTimestamp(nDayvent, nDayData, 0)
		end
		-- 判断是否领取
		if Task_ChkStcValue(nDayvent, nDayData, "==", 0) then
			-- 判断背包
			if not User_CheckLeftSpace(1) then
				User_TalkChannel2005(tOhterNpc_Text["SysTalk"]["FullPackage"])
			end
			
			if Task_SetStatistic(nDayvent, nDayData, 1, 1) then
				Task_SetStcTimestamp(nDayvent, nDayData, 0)
				Item_AddNewItem(tOhterNpc_Data["KiddieRideItemId"], "0 1")
			end
		end
		
	end
	
	-- local nEvent = tOhterNpc_Data["Stc"]["Event"][10]
	-- local nData = tOhterNpc_Data["Stc"]["Data"][10]
	-- if Task_ChkStcValue(nEvent, nData, ">", 0) then
		-- return
	-- end
	
	-- local nTaskId2 = tOhterNpc_Data["TaskId2"]
	-- if User_JudgeLevelAndMetempsychosis(tOhterNpc_Data["Level"], tOhterNpc_Data["Metempsychosis"]) then
		-- -- 判断任务是否隔天
		-- if not Task_ChkTaskDetail(nTaskId2) then
			-- if Task_AddTaskDetail(nTaskId2) then
				-- Task_SetTaskDetailData1(nTaskId2,0)
				-- Task_SetTaskDetailCompleteFlag(nTaskId2,0)
				-- Task_SetTaskDetailData7(nTaskId2,os.time())
			-- end
		-- end
	-- end
end

-- 完成矿山初探
function OhterNpc_DoneTheFirstJob()
	local nEvent = tOhterNpc_Data["Stc"]["Event"][10]
	local nData = tOhterNpc_Data["Stc"]["Data"][10]
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return
	end
	
	local nTaskId2 = tOhterNpc_Data["TaskId2"]
	if not Task_ChkTaskDetail(nTaskId2) then
		if Task_AddTaskDetail(nTaskId2) then
			Task_SetTaskDetailData1(nTaskId2,1)
			Task_SetTaskDetailCompleteFlag(nTaskId2,1) --置完成标示为1
			Task_SetTaskDetailData7(nTaskId2,os.time())
		end
	else
		if not Task_ChkTaskDetailValue(nTaskId2,"CompleteFlag",">=",1) then
			Task_SetTaskDetailData1(nTaskId2,1)
			Task_SetTaskDetailCompleteFlag(nTaskId2,1) --置完成标示为1
			Task_SetTaskDetailData7(nTaskId2,os.time())
		end
	end
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	RewardTemplate_UseItemAndMsg(tOhterNpc_Reward["TheFirstJob"])
end


-- 竞技场积分礼包使用
function OhterNpc_HonerPackageUse(nItemId, nIndex)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nEvent = tOhterNpc_Data["HonerStc"]["Event"][nIndex]
	local nData = tOhterNpc_Data["HonerStc"]["Data"][nIndex]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	local nUserTimes = Get_UserStatisticValue(nEvent, nData) % 10000
	if nUserTimes >= tOhterNpc_Data["HonerStc"]["Times"][nIndex] then
		Sys_MsgBox(string.format(tOhterNpc_Text["SysTalk"]["HonerPackageLimit"], tOhterNpc_Data["HonerStc"]["Times"][nIndex]))
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tOhterNpc_Reward[nItemId]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tOhterNpc_Reward[nItemId])
end

-- 礼包使用
function OhterNpc_ExChangePackageUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tOhterNpc_Reward[nItemId]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tOhterNpc_Reward[nItemId])
end

-- 每日获得银两奖励排名记录
function OhterNpc_DayRewardMoneyRank_Data(nRewardMoney, nUserId, sUserName)
	local nNowUserId = nUserId or Get_UserId()
	if tOhterNpc_DayReward[nNowUserId] == nil then
		tOhterNpc_DayReward[nNowUserId] = {}
		tOhterNpc_DayReward[nNowUserId]["DayRewardMoney"] = 0
		tOhterNpc_DayReward[nNowUserId]["UserName"] = sUserName
	end
	-- 获得玩家数据
	local nUserRewardNow = tOhterNpc_DayReward[nNowUserId]["DayRewardMoney"] + nRewardMoney
	RankingFunc_SetInfo(tOhterNpc_Data["RankIndex"], nUserRewardNow, nNowUserId, sUserName)
end

-- 判断是否交易服   交易服返回true  非交易服返回false
function OhterNpc_ChkTradeServer()
	local nGlobalId = tOhterNpc_Data["TradeServer"]
	local nServerNum = Get_SysDynaGlobalData0(nGlobalId)
	if nServerNum == 2 then
		return true
	else
		return false
	end
end

----------------------------------NPC部分---------------------------------------------
-- 【矿山摇摇乐】快乐矿工
tNpcFace[6141] = 12
tNpcGossip[23051]= tNpcGossip[23051] or DefaultNpc:new{}
tNpcGossip[23051]["OptionHidden"] = 1
tNpcGossip[23051]["Text1-1"] = {111, 112, 113, 114, 120, 117, 118, 119}
tNpcGossip[23051]["Text111"] = tOhterNpc_Text[23051]["Text111"]
tNpcGossip[23051]["Text112"] = tOhterNpc_Text[23051]["Text112"]
tNpcGossip[23051]["Text113"] = tOhterNpc_Text[23051]["Text113"]
tNpcGossip[23051]["Text114"] = tOhterNpc_Text[23051]["Text114"]
-- tNpcGossip[23051]["Text115"] = tOhterNpc_Text[23051]["Text115"]
-- tNpcGossip[23051]["Text116"] = tOhterNpc_Text[23051]["Text116"]
tNpcGossip[23051]["Text117"] = tOhterNpc_Text[23051]["Text117"]
tNpcGossip[23051]["Text118"] = tOhterNpc_Text[23051]["Text118"]
tNpcGossip[23051]["Text119"] = tOhterNpc_Text[23051]["Text119"]
tNpcGossip[23051]["Text120"] = tOhterNpc_Text[23051]["Text120"]
tNpcGossip[23051]["ChkFunc1-1"] = function()
	-- 获取玩家上交矿山开奖券
	local nEvent = tOhterNpc_Data["Stc"]["Event"][3]
	local nData = tOhterNpc_Data["Stc"]["Data"][3]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	local nUserSub = Get_UserStatisticValue(nEvent, nData)
	-- 获取全服上交数量
	local nGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerSub = Get_SysDynaGlobalData0(nGlobalId)
	tNpcGossip[23051]["Text120"] = string.format(tOhterNpc_Text[23051]["Text120"], nUserSub, nServerSub)
	return true
end
tNpcGossip[23051]["tOption1-1"] = {112, 113, 114}
-- tNpcGossip[23051]["Option111"] = tOhterNpc_Text[23051]["Option111"]
-- tNpcGossip[23051]["OptionChkFunc111"] = function ()
	-- local nEvent = tOhterNpc_Data["Stc"]["Event"][2]
	-- local nData = tOhterNpc_Data["Stc"]["Data"][2]
	-- -- 判断隔天
	-- if Task_StcInterval(nEvent, nData, 1, 4) then
		-- Task_SetStatistic(nEvent, nData, 0, 1)
		-- Task_SetStcTimestamp(nEvent, nData, 0)
	-- end
	-- -- 判断是否领取
	-- if Task_ChkStcValue(nEvent, nData, ">", 0) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23051]["OptionFunc111"] = "OhterNpc_GetMineLottery</N>23051"
tNpcGossip[23051]["Option112"] = tOhterNpc_Text[23051]["Option112"]
tNpcGossip[23051]["OptionFunc112"] = "OhterNpc_JoinTheKiddieRide</N>23051"
tNpcGossip[23051]["OptionChkFunc112"] = function ()
	if not Sys_ChkDayTime(tOhterNpc_Data["KiddieRideTime"]) then
		return false
	end
	-- -- 判断是否领取矿山开奖卷
	-- local nEvent = tOhterNpc_Data["Stc"]["Event"][2]
	-- local nData = tOhterNpc_Data["Stc"]["Data"][2]
	-- -- 判断隔天
	-- if Task_StcInterval(nEvent, nData, 1, 4) then
		-- Task_SetStatistic(nEvent, nData, 0, 1)
		-- Task_SetStcTimestamp(nEvent, nData, 0)
	-- end
	-- -- 判断是否领取
	-- if Task_ChkStcValue(nEvent, nData, "<=", 0) then
		-- return false
	-- end
	return true
end
tNpcGossip[23051]["Option113"] = tOhterNpc_Text[23051]["Option113"]
tNpcGossip[23051]["OptionFunc113"] = "OhterNpc_BuyKiddieRideVolumeChk</N>23051"
tNpcGossip[23051]["OptionChkFunc113"] = function()
	local nEvent = tOhterNpc_Data["Stc"]["Event"][4]
	local nData = tOhterNpc_Data["Stc"]["Data"][4]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	-- 判断是否超过购买数量
	if Task_ChkStcValue(nEvent, nData, ">", tOhterNpc_Data["BuyKiddieRide"]["CanBuyNum"]) then
		return false
	end
	-- -- 判断是否领取矿山开奖卷
	-- local nDayEvent = tOhterNpc_Data["Stc"]["Event"][2]
	-- local nDayData = tOhterNpc_Data["Stc"]["Data"][2]
	-- -- 判断隔天
	-- if Task_StcInterval(nDayEvent, nDayData, 1, 4) then
		-- Task_SetStatistic(nDayEvent, nDayData, 0, 1)
		-- Task_SetStcTimestamp(nDayEvent, nDayData, 0)
	-- end
	-- -- 判断是否领取
	-- if Task_ChkStcValue(nDayEvent, nDayData, "<=", 0) then
		-- return false
	-- end
	return true
end
tNpcGossip[23051]["Option114"] = tOhterNpc_Text[23051]["Option114"]
-- tNpcGossip[23051]["OptionFunc114"] = "OhterNpc_OpenWebPage"
tNpcGossip[23051]["OptionPoint114"] = "4-1"
-- 参加矿山摇摇乐
tNpcGossip[23051]["Text2-1"] = {211, 212, 213, 214}
tNpcGossip[23051]["Text211"] = tOhterNpc_Text[23051]["Text211"]
tNpcGossip[23051]["Text212"] = tOhterNpc_Text[23051]["Text212"]
tNpcGossip[23051]["Text213"] = tOhterNpc_Text[23051]["Text213"]
tNpcGossip[23051]["Text214"] = tOhterNpc_Text[23051]["Text214"]
tNpcGossip[23051]["tOption2-1"] = {211, 212, 213, 214}
tNpcGossip[23051]["Option211"] = tOhterNpc_Text[23051]["Option211"]
tNpcGossip[23051]["OptionFunc211"] = "OhterNpc_KiddieRideHandInSucc</N>1</N>23051"
tNpcGossip[23051]["Option212"] = tOhterNpc_Text[23051]["Option212"]
tNpcGossip[23051]["OptionChkFunc212"] = function()
	if Get_CountItemType(tOhterNpc_Data["KiddieRideItemId"], 0) >= 5 then
		return true
	end
	return false
end
tNpcGossip[23051]["OptionFunc212"] = "OhterNpc_KiddieRideHandInSucc</N>5</N>23051"
tNpcGossip[23051]["Option213"] = tOhterNpc_Text[23051]["Option213"]
tNpcGossip[23051]["OptionChkFunc213"] = function()
	if Get_CountItemType(tOhterNpc_Data["KiddieRideItemId"], 0) >= 10 then
		return true
	end
	return false
end
tNpcGossip[23051]["OptionFunc213"] = "OhterNpc_KiddieRideHandInSucc</N>10</N>23051"
tNpcGossip[23051]["Option214"] = tOhterNpc_Text[23051]["Option214"]
tNpcGossip[23051]["OptionFunc214"] = "OhterNpc_KiddieRideInputNum</N>23051"
-- tNpcGossip[23051]["Option215"] = tOhterNpc_Text[23051]["Option215"]
-- tNpcGossip[23051]["OptionFunc211"] = "OhterNpc_JoinTheKiddieRide</N>23051"
-- 【失败，输入非法字符或超过系统判断上限数字】
tNpcGossip[23051]["Text2-2"] = {221}
tNpcGossip[23051]["Text221"] = tOhterNpc_Text[23051]["Text221"]
tNpcGossip[23051]["tOption2-2"] = {221}
tNpcGossip[23051]["Option221"] = tOhterNpc_Text[23051]["Option221"]
tNpcGossip[23051]["OptionFunc221"] = "OhterNpc_JoinTheKiddieRide</N>23051"
-- 【失败，开奖券不足】
tNpcGossip[23051]["Text2-3"] = {231}
tNpcGossip[23051]["Text231"] = tOhterNpc_Text[23051]["Text231"]
tNpcGossip[23051]["tOption2-3"] = {231}
tNpcGossip[23051]["Option231"] = tOhterNpc_Text[23051]["Option231"]
tNpcGossip[23051]["OptionPoint231"] = "1-1"
-- 【成功】
tNpcGossip[23051]["Text2-4"] = {241, 244, 242, 243}
tNpcGossip[23051]["Text241"] = tOhterNpc_Text[23051]["Text241"]
tNpcGossip[23051]["Text244"] = tOhterNpc_Text[23051]["Text244"]
tNpcGossip[23051]["Text242"] = tOhterNpc_Text[23051]["Text242"]
tNpcGossip[23051]["Text243"] = tOhterNpc_Text[23051]["Text243"]
tNpcGossip[23051]["tOption2-4"] = {241}
tNpcGossip[23051]["Option241"] = tOhterNpc_Text[23051]["Option241"]
tNpcGossip[23051]["OptionPoint241"] = "1-1"
-- 购买矿山开奖券
tNpcGossip[23051]["Text3-1"] = {311, 312}
tNpcGossip[23051]["Text311"] = tOhterNpc_Text[23051]["Text311"]
tNpcGossip[23051]["Text312"] = tOhterNpc_Text[23051]["Text312"]
tNpcGossip[23051]["tOption3-1"] = {311, 312}
tNpcGossip[23051]["Option311"] = tOhterNpc_Text[23051]["Option311"]
tNpcGossip[23051]["OptionFunc311"] = "OhterNpc_BuyKiddieRideVolume</N>23051"
tNpcGossip[23051]["Option312"] = tOhterNpc_Text[23051]["Option312"]
-- 【失败，银两不足】
tNpcGossip[23051]["Text3-2"] = {321}
tNpcGossip[23051]["Text321"] = tOhterNpc_Text[23051]["Text321"]
tNpcGossip[23051]["tOption3-2"] = {321}
tNpcGossip[23051]["Option321"] = tOhterNpc_Text[23051]["Option321"]
tNpcGossip[23051]["OptionPoint321"] = "1-1"
-- 【购买成功】
tNpcGossip[23051]["Text3-3"] = {331, 332}
tNpcGossip[23051]["Text331"] = tOhterNpc_Text[23051]["Text331"]
tNpcGossip[23051]["Text332"] = tOhterNpc_Text[23051]["Text332"]
tNpcGossip[23051]["tOption3-3"] = {331, 332}
tNpcGossip[23051]["Option331"] = tOhterNpc_Text[23051]["Option331"]
tNpcGossip[23051]["OptionFunc331"] = "OhterNpc_BuyKiddieRideVolumeChk</N>23051"
tNpcGossip[23051]["Option332"] = tOhterNpc_Text[23051]["Option332"]
-- 【获取途径】
tNpcGossip[23051]["Text4-1"] = {411, 412, 413, 414, 415, 416, 417, 418, 419, 420}
tNpcGossip[23051]["Text411"] = tOhterNpc_Text[23051]["Text411"]
tNpcGossip[23051]["Text412"] = tOhterNpc_Text[23051]["Text412"]
tNpcGossip[23051]["Text413"] = tOhterNpc_Text[23051]["Text413"]
tNpcGossip[23051]["Text414"] = tOhterNpc_Text[23051]["Text414"]
tNpcGossip[23051]["Text415"] = tOhterNpc_Text[23051]["Text415"]
tNpcGossip[23051]["Text416"] = tOhterNpc_Text[23051]["Text416"]
tNpcGossip[23051]["Text417"] = tOhterNpc_Text[23051]["Text417"]
tNpcGossip[23051]["Text418"] = tOhterNpc_Text[23051]["Text418"]
tNpcGossip[23051]["Text419"] = tOhterNpc_Text[23051]["Text419"]
tNpcGossip[23051]["Text420"] = tOhterNpc_Text[23051]["Text420"]
tNpcGossip[23051]["tOption4-1"] = {411}
tNpcGossip[23051]["Option411"] = tOhterNpc_Text[23051]["Option411"]
tNpcGossip[23051]["OptionPoint411"] = "1-1"


-- 【每日宝箱】秘矿宝箱
tNpcFace[4152] = 418
tNpcGossip[23052]= tNpcGossip[23052] or DefaultNpc:new{}
tNpcGossip[23052]["OptionHidden"] = 1
tNpcGossip[23052]["Text1-1"] = {111, 115, 117, 118}
tNpcGossip[23052]["Text111"] = tOhterNpc_Text[23052]["Text111"]
-- tNpcGossip[23052]["Text112"] = tOhterNpc_Text[23052]["Text112"]
-- tNpcGossip[23052]["Text113"] = tOhterNpc_Text[23052]["Text113"]
-- tNpcGossip[23052]["Text114"] = tOhterNpc_Text[23052]["Text114"]
tNpcGossip[23052]["Text115"] = tOhterNpc_Text[23052]["Text115"]
-- tNpcGossip[23052]["Text116"] = tOhterNpc_Text[23052]["Text116"]
tNpcGossip[23052]["Text117"] = tOhterNpc_Text[23052]["Text117"]
tNpcGossip[23052]["Text118"] = tOhterNpc_Text[23052]["Text118"]
tNpcGossip[23052]["ChkFunc1-1"] = function()
	-- 刷新进度
	-- local nGlobalId = tOhterNpc_Data["GlobalId"]
	-- local nOenHourOpen = Get_SysDynaGlobalData1(nGlobalId)
	-- -- local nSchedule = nOenHourOpen / tOhterNpc_Data["BoxOpenNum"][3]
	-- if nOenHourOpen >= tOhterNpc_Data["BoxOpenNum"][3] then
		-- nOenHourOpen = tOhterNpc_Data["BoxOpenNum"][3]
	-- end
	-- local sSchedule = ""
	-- for i = 1, 20 do
		-- if nOenHourOpen >= i then
			-- sSchedule = sSchedule .. tOhterNpc_Text["Dialog"]["ScheduleBlack"]
		-- else
			-- sSchedule = sSchedule .. tOhterNpc_Text["Dialog"]["ScheduleWhite"]
		-- end
	-- end
	-- local snOenHourOpen = ""
	-- if nOenHourOpen < 10 then
		-- snOenHourOpen = "0" .. nOenHourOpen
	-- elseif nOenHourOpen > 20 then
		-- snOenHourOpen = "20"
	-- else
		-- snOenHourOpen = tostring(nOenHourOpen)
	-- end
	-- tNpcGossip[23052]["Text113"] = string.format(tOhterNpc_Text[23052]["Text113"], sSchedule)
	-- tNpcGossip[23052]["Text112"] = string.format(tOhterNpc_Text[23052]["Text112"], snOenHourOpen)
	-- 宝箱领取次数赋值
	local nEvent = tOhterNpc_Data["Stc"]["Event"][5]
	local nData = tOhterNpc_Data["Stc"]["Data"][5]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	-- 判断是否领取
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		tNpcGossip[23052]["Text118"] = string.format(tOhterNpc_Text[23052]["Text118"], 1)
	else
		tNpcGossip[23052]["Text118"] = string.format(tOhterNpc_Text[23052]["Text118"], 0)
	end
	return true
end
tNpcGossip[23052]["tOption1-1"] = {111, 112, 113}
tNpcGossip[23052]["Option111"] = tOhterNpc_Text[23052]["Option111"]
tNpcGossip[23052]["OptionChkFunc111"] = function ()
	local nEvent = tOhterNpc_Data["Stc"]["Event"][5]
	local nData = tOhterNpc_Data["Stc"]["Data"][5]
	local nKillEvent = tOhterNpc_Data["Stc"]["Event"][6]
	local nKillData = tOhterNpc_Data["Stc"]["Data"][6]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_StcInterval(nKillEvent, nKillData, 1, 4) then
		Task_SetStatistic(nKillEvent, nKillData, 0, 1)
		Task_SetStcTimestamp(nKillEvent, nKillData, 0)
	end
	-- 判断是否领取
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return false
	end
	-- 判断击杀怪物是否达到要求
	if not Task_ChkStcValue(nKillEvent, nKillData, ">=", 100) then
		return false
	end
	return true
end
tNpcGossip[23052]["OptionPoint111"] = "1-2"
tNpcGossip[23052]["Option112"] = tOhterNpc_Text[23052]["Option112"]
tNpcGossip[23052]["OptionChkFunc112"] = function ()
	local nEvent = tOhterNpc_Data["Stc"]["Event"][5]
	local nData = tOhterNpc_Data["Stc"]["Data"][5]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	-- 判断是否领取
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return false
	end
	return true
end
tNpcGossip[23052]["Option113"] = tOhterNpc_Text[23052]["Option113"]
tNpcGossip[23052]["OptionChkFunc113"] = function ()
	local nEvent = tOhterNpc_Data["Stc"]["Event"][5]
	local nData = tOhterNpc_Data["Stc"]["Data"][5]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	-- 判断是否领取
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return true
	end
	return false
end
-- 打开宝箱
tNpcGossip[23052]["Text1-2"] = {121}
tNpcGossip[23052]["Text121"] = tOhterNpc_Text[23052]["Text121"]
tNpcGossip[23052]["tOption1-2"] = {121, 122, 123}
tNpcGossip[23052]["Option121"] = tOhterNpc_Text[23052]["Option121"]
tNpcGossip[23052]["OptionFunc121"] = "OhterNpc_DailyRewardBox</N>1"
tNpcGossip[23052]["Option122"] = tOhterNpc_Text[23052]["Option122"]
tNpcGossip[23052]["OptionFunc122"] = "OhterNpc_DailyRewardBox</N>2"
tNpcGossip[23052]["Option123"] = tOhterNpc_Text[23052]["Option123"]
tNpcGossip[23052]["OptionChkFunc123"] = function()
	-- 判断是否交易服
	local nGlobalId = tOhterNpc_Data["TradeServer"]
	local nServerNum = Get_SysDynaGlobalData0(nGlobalId)
	if nServerNum == 1 then
		return true
	end
	return false
end
tNpcGossip[23052]["OptionFunc123"] = "OhterNpc_DailyRewardBox</N>3"

-- 【矿石回收】黄金矿工
tNpcFace[6142] = 40
tNpcGossip[23053]= tNpcGossip[23053] or DefaultNpc:new{}
tNpcGossip[23053]["OptionHidden"] = 1
tNpcGossip[23053]["Text1-1"] = {111, 112, 113, 114}
tNpcGossip[23053]["Text111"] = tOhterNpc_Text[23053]["Text111"]
tNpcGossip[23053]["Text112"] = tOhterNpc_Text[23053]["Text112"]
tNpcGossip[23053]["Text113"] = tOhterNpc_Text[23053]["Text113"]
tNpcGossip[23053]["Text114"] = tOhterNpc_Text[23053]["Text114"]
tNpcGossip[23053]["tOption1-1"] = {111, 112}
tNpcGossip[23053]["Option111"] = tOhterNpc_Text[23053]["Option111"]
tNpcGossip[23053]["OptionFunc111"] = "OhterNpc_SubTheQuarts</N>23053"
tNpcGossip[23053]["Option112"] = tOhterNpc_Text[23053]["Option112"]
-- 【失败，银两满】
tNpcGossip[23053]["Text2-1"] = {211, 212}
tNpcGossip[23053]["Text211"] = tOhterNpc_Text[23053]["Text211"]
tNpcGossip[23053]["Text212"] = tOhterNpc_Text[23053]["Text212"]
tNpcGossip[23053]["tOption1-2"] = {121}
tNpcGossip[23053]["Option121"] = tOhterNpc_Text[23053]["Option121"]
-- 【失败，背包无金矿石】
tNpcGossip[23053]["Text2-2"] = {221, 222}
tNpcGossip[23053]["Text221"] = tOhterNpc_Text[23053]["Text221"]
tNpcGossip[23053]["Text222"] = tOhterNpc_Text[23053]["Text222"]
tNpcGossip[23053]["tOption2-2"] = {221}
tNpcGossip[23053]["Option221"] = tOhterNpc_Text[23053]["Option221"]
-- 【失败，输入非法字符或超过系统判断上限数字】
tNpcGossip[23053]["Text2-4"] = {241, 242}
tNpcGossip[23053]["Text241"] = tOhterNpc_Text[23053]["Text241"]
tNpcGossip[23053]["Text242"] = tOhterNpc_Text[23053]["Text242"]
tNpcGossip[23053]["tOption2-4"] = {241}
tNpcGossip[23053]["Option241"] = tOhterNpc_Text[23053]["Option241"]
tNpcGossip[23053]["OptionFunc241"] = ""
-- 【成功】
tNpcGossip[23053]["Text3-1"] = {311, 312, 313, 314, 315, 316, 317}
tNpcGossip[23053]["Text311"] = tOhterNpc_Text[23053]["Text311"]
tNpcGossip[23053]["Text312"] = tOhterNpc_Text[23053]["Text312"]
tNpcGossip[23053]["Text313"] = tOhterNpc_Text[23053]["Text313"]
tNpcGossip[23053]["Text314"] = tOhterNpc_Text[23053]["Text314"]
tNpcGossip[23053]["Text315"] = tOhterNpc_Text[23053]["Text315"]
tNpcGossip[23053]["Text316"] = tOhterNpc_Text[23053]["Text316"]
tNpcGossip[23053]["Text317"] = tOhterNpc_Text[23053]["Text317"]
tNpcGossip[23053]["tOption3-1"] = {311}
tNpcGossip[23053]["Option311"] = tOhterNpc_Text[23053]["Option311"]

-- 【矿石回收】银矿回收车
tNpcFace[4153] = 1566
tNpcGossip[23054]= tNpcGossip[23054] or DefaultNpc:new{}
tNpcGossip[23054]["OptionHidden"] = 1
tNpcGossip[23054]["Text1-1"] = {111, 112, 113, 116, 115, 114}
tNpcGossip[23054]["Text111"] = tOhterNpc_Text[23054]["Text111"]
tNpcGossip[23054]["Text112"] = tOhterNpc_Text[23054]["Text112"]
tNpcGossip[23054]["Text113"] = tOhterNpc_Text[23054]["Text113"]
tNpcGossip[23054]["Text116"] = tOhterNpc_Text[23054]["Text116"]
tNpcGossip[23054]["Text114"] = tOhterNpc_Text[23054]["Text114"]
tNpcGossip[23054]["Text115"] = tOhterNpc_Text[23054]["Text115"]
tNpcGossip[23054]["ChkFunc1-1"] = function()
	local nGlobalId = tOhterNpc_Data["AmountId"]
	local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23054]
	local nNpcQuota = Get_SysDynaGlobalTime(nGlobalId, nGlobalPos)
	tNpcGossip[23054]["Text115"] = string.format(tOhterNpc_Text[23054]["Text115"], nNpcQuota)
	-- 奖池赋值
	local nRewardGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerJackpot = Get_SysDynaGlobalData5(nRewardGlobalId)
	tNpcGossip[23054]["Text114"] = string.format(tOhterNpc_Text[23054]["Text114"], nServerJackpot)
	return true
end
tNpcGossip[23054]["tOption1-1"] = {111, 113}
tNpcGossip[23054]["Option111"] = tOhterNpc_Text[23054]["Option111"]
-- tNpcGossip[23054]["OptionChkFunc111"] = function ()
	-- local nGlobalId = tOhterNpc_Data["AmountId"]
	-- local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23054]
	-- local nNpcQuota = Get_SysDynaGlobalTime(nGlobalId, nGlobalPos)
	-- if nNpcQuota < tOhterNpc_Data["Mineral"][2][1]["Value"] then
		-- tNpcGossip[23054]["Option111"] = tOhterNpc_Text[23054]["Option113"]
		-- tNpcGossip[23054]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23054</N>2</N>1"
		-- return true
	-- end
	-- tNpcGossip[23054]["Option111"] = tOhterNpc_Text[23054]["Option111"]
	-- tNpcGossip[23054]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23054</N>2</N>0"
	-- return true
-- end
tNpcGossip[23054]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23054</N>2</N>0"
tNpcGossip[23054]["Option113"] = tOhterNpc_Text[23054]["Option113"]
tNpcGossip[23054]["OptionFunc113"] = "OhterNpc_SubTheMineral</N>23054</N>2</N>1"
-- tNpcGossip[23054]["Option112"] = tOhterNpc_Text[23054]["Option112"]
-- 【失败，银两满】
tNpcGossip[23054]["Text2-1"] = {211, 212}
tNpcGossip[23054]["Text211"] = tOhterNpc_Text[23054]["Text211"]
tNpcGossip[23054]["Text212"] = tOhterNpc_Text[23054]["Text212"]
tNpcGossip[23054]["tOption2-1"] = {211}
tNpcGossip[23054]["Option211"] = tOhterNpc_Text[23054]["Option211"]
-- 【失败，背包无银矿石】
tNpcGossip[23054]["Text2-2"] = {221, 222}
tNpcGossip[23054]["Text221"] = tOhterNpc_Text[23054]["Text221"]
tNpcGossip[23054]["Text222"] = tOhterNpc_Text[23054]["Text222"]
tNpcGossip[23054]["tOption2-2"] = {221}
tNpcGossip[23054]["Option221"] = tOhterNpc_Text[23054]["Option221"]
-- 【成功】
tNpcGossip[23054]["Text3-1"] = {311, 312, 313, 314, 315, 316}
tNpcGossip[23054]["Text311"] = tOhterNpc_Text[23054]["Text311"]
tNpcGossip[23054]["Text312"] = tOhterNpc_Text[23054]["Text312"]
tNpcGossip[23054]["Text313"] = tOhterNpc_Text[23054]["Text313"]
tNpcGossip[23054]["Text314"] = tOhterNpc_Text[23054]["Text314"]
tNpcGossip[23054]["Text315"] = tOhterNpc_Text[23054]["Text315"]
tNpcGossip[23054]["Text316"] = tOhterNpc_Text[23054]["Text316"]
tNpcGossip[23054]["tOption3-1"] = {311}
tNpcGossip[23054]["Option311"] = tOhterNpc_Text[23054]["Option311"]
-- 【当前回收矿石已经达到上限】
tNpcGossip[23054]["Text5-1"] = {511, 512, 513}
tNpcGossip[23054]["Text511"] = tOhterNpc_Text[23054]["Text511"]
tNpcGossip[23054]["Text512"] = tOhterNpc_Text[23054]["Text512"]
tNpcGossip[23054]["Text513"] = tOhterNpc_Text[23054]["Text513"]
tNpcGossip[23054]["tOption5-1"] = {511, 512, 513, 514, 515, 516}
tNpcGossip[23054]["Option511"] = tOhterNpc_Text[23054]["Option511"]
tNpcGossip[23054]["OptionChkFunc511"] = function ()
	if Item_ChkItem(tOhterNpc_Data["Mineral"][2][1]["ItemId"]) then
		return true
	else
		return false
	end
end
tNpcGossip[23054]["OptionFunc511"] = "OhterNpc_SubMineralOnMiner</N>23054</N>2</N>1"
tNpcGossip[23054]["Option512"] = tOhterNpc_Text[23054]["Option512"]
tNpcGossip[23054]["OptionChkFunc512"] = function ()
	if Item_ChkItem(tOhterNpc_Data["Mineral"][2][2]["ItemId"]) then
		return true
	else
		return false
	end
end
tNpcGossip[23054]["OptionFunc512"] = "OhterNpc_SubMineralOnMiner</N>23054</N>2</N>2"
tNpcGossip[23054]["Option513"] = tOhterNpc_Text[23054]["Option513"]
tNpcGossip[23054]["OptionChkFunc513"] = function ()
	if Item_ChkItem(tOhterNpc_Data["Mineral"][2][3]["ItemId"]) then
		return true
	else
		return false
	end
end
tNpcGossip[23054]["OptionFunc513"] = "OhterNpc_SubMineralOnMiner</N>23054</N>2</N>3"
tNpcGossip[23054]["Option514"] = tOhterNpc_Text[23054]["Option514"]
tNpcGossip[23054]["OptionChkFunc514"] = function ()
	if Item_ChkItem(tOhterNpc_Data["Mineral"][2][4]["ItemId"]) then
		return true
	else
		return false
	end
end
tNpcGossip[23054]["OptionFunc514"] = "OhterNpc_SubMineralOnMiner</N>23054</N>2</N>4"
tNpcGossip[23054]["Option515"] = tOhterNpc_Text[23054]["Option515"]
tNpcGossip[23054]["OptionChkFunc515"] = function ()
	if Item_ChkItem(tOhterNpc_Data["Mineral"][2][5]["ItemId"]) then
		return true
	else
		return false
	end
end
tNpcGossip[23054]["OptionFunc515"] = "OhterNpc_SubMineralOnMiner</N>23054</N>2</N>5"
tNpcGossip[23054]["Option516"] = tOhterNpc_Text[23054]["Option516"]
-- 开采值【成功】
tNpcGossip[23054]["Text5-2"] = {521, 522, 523, 524, 525, 526}
tNpcGossip[23054]["Text521"] = tOhterNpc_Text[23054]["Text521"]
tNpcGossip[23054]["Text522"] = tOhterNpc_Text[23054]["Text522"]
tNpcGossip[23054]["Text523"] = tOhterNpc_Text[23054]["Text523"]
tNpcGossip[23054]["Text524"] = tOhterNpc_Text[23054]["Text524"]
tNpcGossip[23054]["Text525"] = tOhterNpc_Text[23054]["Text525"]
tNpcGossip[23054]["Text526"] = tOhterNpc_Text[23054]["Text526"]
tNpcGossip[23054]["tOption5-2"] = {521}
tNpcGossip[23054]["Option521"] = tOhterNpc_Text[23054]["Option521"]
-- 【银两被换完，提示】
tNpcGossip[23054]["Text6-1"] = {611, 612, 613, 614, 615}
tNpcGossip[23054]["Text611"] = tOhterNpc_Text[23054]["Text611"]
tNpcGossip[23054]["Text612"] = tOhterNpc_Text[23054]["Text612"]
tNpcGossip[23054]["Text613"] = tOhterNpc_Text[23054]["Text613"]
tNpcGossip[23054]["Text614"] = tOhterNpc_Text[23054]["Text614"]
tNpcGossip[23054]["Text615"] = tOhterNpc_Text[23054]["Text615"]
tNpcGossip[23054]["tOption6-1"] = {611}
tNpcGossip[23054]["Option611"] = tOhterNpc_Text[23054]["Option611"]


-- 银矿回收车2
tNpcGossip[23068]= CommonFunc_Copy(tNpcGossip[23054])
tNpcGossip[23068]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23068</N>2</N>0"
tNpcGossip[23068]["OptionFunc113"] = "OhterNpc_SubTheMineral</N>23068</N>2</N>1"
-- tNpcGossip[23068]["OptionChkFunc111"] = function ()
	-- local nGlobalId = tOhterNpc_Data["AmountId"]
	-- local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23068]
	-- local nNpcQuota = Get_SysDynaGlobalTime(nGlobalId, nGlobalPos)
	-- if nNpcQuota < tOhterNpc_Data["Mineral"][2][1]["Value"] then
		-- tNpcGossip[23068]["Option111"] = tOhterNpc_Text[23054]["Option113"]
		-- tNpcGossip[23068]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23068</N>2</N>1"
		-- return true
	-- end
	-- tNpcGossip[23068]["Option111"] = tOhterNpc_Text[23054]["Option111"]
	-- tNpcGossip[23068]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23068</N>2</N>0"
	-- return true
-- end
tNpcGossip[23068]["ChkFunc1-1"] = function()
	local nGlobalId = tOhterNpc_Data["AmountId"]
	local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23068]
	local nNpcQuota = Get_SysDynaGlobalTime(nGlobalId, nGlobalPos)
	tNpcGossip[23068]["Text115"] = string.format(tOhterNpc_Text[23054]["Text115"], nNpcQuota)
	-- 奖池赋值
	local nRewardGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerJackpot = Get_SysDynaGlobalData5(nRewardGlobalId)
	tNpcGossip[23068]["Text114"] = string.format(tOhterNpc_Text[23054]["Text114"], nServerJackpot)
	return true
end

-- 银矿回收车3
tNpcGossip[23069]= CommonFunc_Copy(tNpcGossip[23054])
-- tNpcGossip[23069]["OptionChkFunc111"] = function ()
	-- local nGlobalId = tOhterNpc_Data["AmountId"]
	-- local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23069]
	-- local nNpcQuota = Get_SysDynaGlobalTime(nGlobalId, nGlobalPos)
	-- if nNpcQuota < tOhterNpc_Data["Mineral"][2][1]["Value"] then
		-- tNpcGossip[23069]["Option111"] = tOhterNpc_Text[23054]["Option113"]
		-- tNpcGossip[23069]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23069</N>2</N>1"
		-- return true
	-- end
	-- tNpcGossip[23069]["Option111"] = tOhterNpc_Text[23054]["Option111"]
	-- tNpcGossip[23069]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23069</N>2</N>0"
	-- return true
-- end
tNpcGossip[23069]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23069</N>2</N>0"
tNpcGossip[23069]["OptionFunc113"] = "OhterNpc_SubTheMineral</N>23069</N>2</N>1"
tNpcGossip[23069]["ChkFunc1-1"] = function()
	local nGlobalId = tOhterNpc_Data["AmountId"]
	local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23069]
	local nNpcQuota = Get_SysDynaGlobalTime(nGlobalId, nGlobalPos)
	tNpcGossip[23069]["Text115"] = string.format(tOhterNpc_Text[23054]["Text115"], nNpcQuota)
	-- 奖池赋值
	local nRewardGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerJackpot = Get_SysDynaGlobalData5(nRewardGlobalId)
	tNpcGossip[23069]["Text114"] = string.format(tOhterNpc_Text[23054]["Text114"], nServerJackpot)
	return true
end

-- 银矿回收车（帮派）
tNpcFace[4157] = 1566
tNpcGossip[23070]= CommonFunc_Copy(tNpcGossip[23054])
tNpcGossip[23070]["Text111"] = tOhterNpc_Text[23070]["Text111"]
tNpcGossip[23070]["Text112"] = tOhterNpc_Text[23070]["Text112"]
tNpcGossip[23070]["Text113"] = ""
tNpcGossip[23070]["Text211"] = tOhterNpc_Text[23070]["Text111"]
tNpcGossip[23070]["Text221"] = tOhterNpc_Text[23070]["Text111"]
tNpcGossip[23070]["Text311"] = tOhterNpc_Text[23070]["Text111"]
-- tNpcGossip[23070]["OptionChkFunc111"] = function ()
	-- local nGlobalId = tOhterNpc_Data["AmountId"]
	-- local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23070]
	-- local nNpcQuota = Get_SysDynaGlobalTime(nGlobalId, nGlobalPos)
	-- if nNpcQuota < tOhterNpc_Data["Mineral"][2][1]["Value"] then
		-- tNpcGossip[23070]["Option111"] = tOhterNpc_Text[23054]["Option113"]
		-- tNpcGossip[23070]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23070</N>2</N>1"
		-- return true
	-- end
	-- tNpcGossip[23070]["Option111"] = tOhterNpc_Text[23054]["Option111"]
	-- tNpcGossip[23070]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23070</N>2</N>0"
	-- return true
-- end
tNpcGossip[23070]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23070</N>2</N>0"
tNpcGossip[23070]["OptionFunc113"] = "OhterNpc_SubTheMineral</N>23070</N>2</N>1"
tNpcGossip[23070]["ChkFunc1-1"] = function()
	local nGlobalId = tOhterNpc_Data["AmountId"]
	local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23070]
	local nNpcQuota = Get_SysDynaGlobalTime(nGlobalId, nGlobalPos)
	tNpcGossip[23070]["Text115"] = string.format(tOhterNpc_Text[23054]["Text115"], nNpcQuota)
	-- 奖池赋值
	local nRewardGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerJackpot = Get_SysDynaGlobalData5(nRewardGlobalId)
	tNpcGossip[23070]["Text114"] = string.format(tOhterNpc_Text[23054]["Text114"], nServerJackpot)
	return true
end
-- 【失败，背包无银矿石】
tNpcGossip[23070]["Text4-1"] = {411, 412}
tNpcGossip[23070]["Text411"] = tOhterNpc_Text[23070]["Text411"]
tNpcGossip[23070]["Text412"] = tOhterNpc_Text[23070]["Text412"]
tNpcGossip[23070]["tOption4-1"] = {411}
tNpcGossip[23070]["Option411"] = tOhterNpc_Text[23070]["Option411"]

-- 银矿回收车（额外）
tNpcGossip[23071]= CommonFunc_Copy(tNpcGossip[23054])
-- tNpcGossip[23071]["OptionChkFunc111"] = function ()
	-- local nGlobalId = tOhterNpc_Data["AmountId"]
	-- local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23071]
	-- local nNpcQuota = Get_SysDynaGlobalTime(nGlobalId, nGlobalPos)
	-- if nNpcQuota < tOhterNpc_Data["Mineral"][2][1]["Value"] then
		-- tNpcGossip[23071]["Option111"] = tOhterNpc_Text[23054]["Option113"]
		-- tNpcGossip[23071]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23071</N>2</N>1"
		-- return true
	-- end
	-- tNpcGossip[23071]["Option111"] = tOhterNpc_Text[23054]["Option111"]
	-- tNpcGossip[23071]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23071</N>2</N>0"
	-- return true
-- end
tNpcGossip[23071]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23071</N>2</N>0"
tNpcGossip[23071]["OptionFunc113"] = "OhterNpc_SubTheMineral</N>23071</N>2</N>1"
tNpcGossip[23071]["ChkFunc1-1"] = function()
	local nGlobalId = tOhterNpc_Data["AmountId"]
	local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23071]
	local nNpcQuota = Get_SysDynaGlobalTime(nGlobalId, nGlobalPos)
	tNpcGossip[23071]["Text115"] = string.format(tOhterNpc_Text[23054]["Text115"], nNpcQuota)
	-- 奖池赋值
	local nRewardGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerJackpot = Get_SysDynaGlobalData5(nRewardGlobalId)
	tNpcGossip[23071]["Text114"] = string.format(tOhterNpc_Text[23054]["Text114"], nServerJackpot)
	return true
end

-- 【矿石回收】铜矿回收车
tNpcFace[4154] = 1567
tNpcGossip[23055]= tNpcGossip[23055] or DefaultNpc:new{}
tNpcGossip[23055]["OptionHidden"] = 1
tNpcGossip[23055]["Text1-1"] = {111, 112, 113, 116, 115, 114}
tNpcGossip[23055]["Text111"] = tOhterNpc_Text[23055]["Text111"]
tNpcGossip[23055]["Text112"] = tOhterNpc_Text[23055]["Text112"]
tNpcGossip[23055]["Text113"] = tOhterNpc_Text[23055]["Text113"]
tNpcGossip[23055]["Text116"] = tOhterNpc_Text[23055]["Text116"]
tNpcGossip[23055]["Text114"] = tOhterNpc_Text[23055]["Text114"]
tNpcGossip[23055]["Text115"] = tOhterNpc_Text[23055]["Text115"]
tNpcGossip[23055]["ChkFunc1-1"] = function()
	local nGlobalId = tOhterNpc_Data["AmountId"]
	local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23055]
	local nNpcQuota = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
	tNpcGossip[23055]["Text115"] = string.format(tOhterNpc_Text[23055]["Text115"], nNpcQuota)
	-- 奖池赋值
	local nRewardGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerJackpot = Get_SysDynaGlobalData5(nRewardGlobalId)
	tNpcGossip[23055]["Text114"] = string.format(tOhterNpc_Text[23055]["Text114"], nServerJackpot)
	return true
end
tNpcGossip[23055]["tOption1-1"] = {111, 113}
tNpcGossip[23055]["Option111"] = tOhterNpc_Text[23055]["Option111"]
-- tNpcGossip[23055]["OptionChkFunc111"] = function ()
	-- local nGlobalId = tOhterNpc_Data["AmountId"]
	-- local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23055]
	-- local nNpcQuota = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
	-- if nNpcQuota < tOhterNpc_Data["Mineral"][3][1]["Value"] then
		-- tNpcGossip[23055]["Option111"] = tOhterNpc_Text[23055]["Option113"]
		-- tNpcGossip[23055]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23055</N>3</N>1"
		-- return true
	-- end
	-- tNpcGossip[23055]["Option111"] = tOhterNpc_Text[23055]["Option111"]
	-- tNpcGossip[23055]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23055</N>3</N>0"
	-- return true
-- end
tNpcGossip[23055]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23055</N>3</N>0"
tNpcGossip[23055]["Option113"] = tOhterNpc_Text[23055]["Option113"]
tNpcGossip[23055]["OptionFunc113"] = "OhterNpc_SubTheMineral</N>23055</N>3</N>1"
-- tNpcGossip[23055]["Option112"] = tOhterNpc_Text[23055]["Option112"]
-- 【失败，银两满】
tNpcGossip[23055]["Text2-1"] = {211, 212}
tNpcGossip[23055]["Text211"] = tOhterNpc_Text[23055]["Text211"]
tNpcGossip[23055]["Text212"] = tOhterNpc_Text[23055]["Text212"]
tNpcGossip[23055]["tOption2-1"] = {211}
tNpcGossip[23055]["Option211"] = tOhterNpc_Text[23055]["Option211"]
-- 【失败，背包无铜矿石】
tNpcGossip[23055]["Text2-2"] = {221, 222}
tNpcGossip[23055]["Text221"] = tOhterNpc_Text[23055]["Text221"]
tNpcGossip[23055]["Text222"] = tOhterNpc_Text[23055]["Text222"]
tNpcGossip[23055]["tOption2-2"] = {221}
tNpcGossip[23055]["Option221"] = tOhterNpc_Text[23055]["Option221"]
-- 【成功】
tNpcGossip[23055]["Text3-1"] = {311, 312, 313, 314, 315, 316}
tNpcGossip[23055]["Text311"] = tOhterNpc_Text[23055]["Text311"]
tNpcGossip[23055]["Text312"] = tOhterNpc_Text[23055]["Text312"]
tNpcGossip[23055]["Text313"] = tOhterNpc_Text[23055]["Text313"]
tNpcGossip[23055]["Text314"] = tOhterNpc_Text[23055]["Text314"]
tNpcGossip[23055]["Text315"] = tOhterNpc_Text[23055]["Text315"]
tNpcGossip[23055]["Text316"] = tOhterNpc_Text[23055]["Text316"]
tNpcGossip[23055]["tOption3-1"] = {311}
tNpcGossip[23055]["Option311"] = tOhterNpc_Text[23055]["Option311"]
-- 【当前回收矿石已经达到上限】
tNpcGossip[23055]["Text5-1"] = {511, 512, 513}
tNpcGossip[23055]["Text511"] = tOhterNpc_Text[23055]["Text511"]
tNpcGossip[23055]["Text512"] = tOhterNpc_Text[23055]["Text512"]
tNpcGossip[23055]["Text513"] = tOhterNpc_Text[23055]["Text513"]
tNpcGossip[23055]["tOption5-1"] = {511, 512, 513, 514, 515, 516}
tNpcGossip[23055]["Option511"] = tOhterNpc_Text[23055]["Option511"]
tNpcGossip[23055]["OptionChkFunc511"] = function ()
	if Item_ChkItem(tOhterNpc_Data["Mineral"][3][1]["ItemId"]) then
		return true
	else
		return false
	end
end
tNpcGossip[23055]["OptionFunc511"] = "OhterNpc_SubMineralOnMiner</N>23055</N>3</N>1"
tNpcGossip[23055]["Option512"] = tOhterNpc_Text[23055]["Option512"]
tNpcGossip[23055]["OptionChkFunc512"] = function ()
	if Item_ChkItem(tOhterNpc_Data["Mineral"][3][2]["ItemId"]) then
		return true
	else
		return false
	end
end
tNpcGossip[23055]["OptionFunc512"] = "OhterNpc_SubMineralOnMiner</N>23055</N>3</N>2"
tNpcGossip[23055]["Option513"] = tOhterNpc_Text[23055]["Option513"]
tNpcGossip[23055]["OptionChkFunc513"] = function ()
	if Item_ChkItem(tOhterNpc_Data["Mineral"][3][3]["ItemId"]) then
		return true
	else
		return false
	end
end
tNpcGossip[23055]["OptionFunc513"] = "OhterNpc_SubMineralOnMiner</N>23055</N>3</N>3"
tNpcGossip[23055]["Option514"] = tOhterNpc_Text[23055]["Option514"]
tNpcGossip[23055]["OptionChkFunc514"] = function ()
	if Item_ChkItem(tOhterNpc_Data["Mineral"][3][4]["ItemId"]) then
		return true
	else
		return false
	end
end
tNpcGossip[23055]["OptionFunc514"] = "OhterNpc_SubMineralOnMiner</N>23055</N>3</N>4"
tNpcGossip[23055]["Option515"] = tOhterNpc_Text[23055]["Option515"]
tNpcGossip[23055]["OptionChkFunc515"] = function ()
	if Item_ChkItem(tOhterNpc_Data["Mineral"][3][5]["ItemId"]) then
		return true
	else
		return false
	end
end
tNpcGossip[23055]["OptionFunc515"] = "OhterNpc_SubMineralOnMiner</N>23055</N>3</N>5"
tNpcGossip[23055]["Option516"] = tOhterNpc_Text[23055]["Option516"]
-- 开采值【成功】
tNpcGossip[23055]["Text5-2"] = {521, 522, 523, 524, 525, 526}
tNpcGossip[23055]["Text521"] = tOhterNpc_Text[23055]["Text521"]
tNpcGossip[23055]["Text522"] = tOhterNpc_Text[23055]["Text522"]
tNpcGossip[23055]["Text523"] = tOhterNpc_Text[23055]["Text523"]
tNpcGossip[23055]["Text524"] = tOhterNpc_Text[23055]["Text524"]
tNpcGossip[23055]["Text525"] = tOhterNpc_Text[23055]["Text525"]
tNpcGossip[23055]["Text526"] = tOhterNpc_Text[23055]["Text526"]
tNpcGossip[23055]["tOption5-2"] = {521}
tNpcGossip[23055]["Option521"] = tOhterNpc_Text[23055]["Option521"]
-- 【银两被换完，提示】
tNpcGossip[23055]["Text6-1"] = {611, 612, 613, 614, 615, 616}
tNpcGossip[23055]["Text611"] = tOhterNpc_Text[23055]["Text611"]
tNpcGossip[23055]["Text612"] = tOhterNpc_Text[23055]["Text612"]
tNpcGossip[23055]["Text613"] = tOhterNpc_Text[23055]["Text613"]
tNpcGossip[23055]["Text614"] = tOhterNpc_Text[23055]["Text614"]
tNpcGossip[23055]["Text615"] = tOhterNpc_Text[23055]["Text615"]
tNpcGossip[23055]["Text616"] = tOhterNpc_Text[23055]["Text616"]
tNpcGossip[23055]["tOption6-1"] = {611}
tNpcGossip[23055]["Option611"] = tOhterNpc_Text[23055]["Option611"]


-- 铜矿回收车2
tNpcGossip[23072]= CommonFunc_Copy(tNpcGossip[23055])
-- tNpcGossip[23072]["OptionChkFunc111"] = function ()
	-- local nGlobalId = tOhterNpc_Data["AmountId"]
	-- local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23072]
	-- local nNpcQuota = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
	-- if nNpcQuota < tOhterNpc_Data["Mineral"][3][1]["Value"] then
		-- tNpcGossip[23072]["Option111"] = tOhterNpc_Text[23055]["Option113"]
		-- tNpcGossip[23072]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23072</N>3</N>1"
		-- return true
	-- end
	-- tNpcGossip[23072]["Option111"] = tOhterNpc_Text[23055]["Option111"]
	-- tNpcGossip[23072]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23072</N>3</N>0"
	-- return true
-- end
tNpcGossip[23072]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23072</N>3</N>0"
tNpcGossip[23072]["OptionFunc113"] = "OhterNpc_SubTheMineral</N>23072</N>3</N>1"
tNpcGossip[23072]["ChkFunc1-1"] = function()
	local nGlobalId = tOhterNpc_Data["AmountId"]
	local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23072]
	local nNpcQuota = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
	tNpcGossip[23072]["Text115"] = string.format(tOhterNpc_Text[23055]["Text115"], nNpcQuota)
	-- 奖池赋值
	local nRewardGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerJackpot = Get_SysDynaGlobalData5(nRewardGlobalId)
	tNpcGossip[23072]["Text114"] = string.format(tOhterNpc_Text[23055]["Text114"], nServerJackpot)
	return true
end

-- 铜矿回收车3
tNpcGossip[23073]= CommonFunc_Copy(tNpcGossip[23055])
-- tNpcGossip[23073]["OptionChkFunc111"] = function ()
	-- local nGlobalId = tOhterNpc_Data["AmountId"]
	-- local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23073]
	-- local nNpcQuota = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
	-- if nNpcQuota < tOhterNpc_Data["Mineral"][3][1]["Value"] then
		-- tNpcGossip[23073]["Option111"] = tOhterNpc_Text[23055]["Option113"]
		-- tNpcGossip[23073]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23073</N>3</N>1"
		-- return true
	-- end
	-- tNpcGossip[23073]["Option111"] = tOhterNpc_Text[23055]["Option111"]
	-- tNpcGossip[23073]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23073</N>3</N>0"
	-- return true
-- end
tNpcGossip[23073]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23073</N>3</N>0"
tNpcGossip[23073]["OptionFunc113"] = "OhterNpc_SubTheMineral</N>23073</N>3</N>1"
tNpcGossip[23073]["ChkFunc1-1"] = function()
	local nGlobalId = tOhterNpc_Data["AmountId"]
	local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23073]
	local nNpcQuota = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
	tNpcGossip[23073]["Text115"] = string.format(tOhterNpc_Text[23055]["Text115"], nNpcQuota)
	-- 奖池赋值
	local nRewardGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerJackpot = Get_SysDynaGlobalData5(nRewardGlobalId)
	tNpcGossip[23073]["Text114"] = string.format(tOhterNpc_Text[23055]["Text114"], nServerJackpot)
	return true
end

-- 铜矿回收车（帮派）
tNpcFace[4158] = 1567
tNpcGossip[23074]= CommonFunc_Copy(tNpcGossip[23055])
tNpcGossip[23074]["Text111"] = tOhterNpc_Text[23074]["Text111"]
tNpcGossip[23074]["Text112"] = tOhterNpc_Text[23074]["Text112"]
tNpcGossip[23074]["Text113"] = ""
tNpcGossip[23074]["Text211"] = tOhterNpc_Text[23074]["Text111"]
tNpcGossip[23074]["Text221"] = tOhterNpc_Text[23074]["Text111"]
tNpcGossip[23074]["Text311"] = tOhterNpc_Text[23074]["Text111"]
-- tNpcGossip[23074]["OptionChkFunc111"] = function ()
	-- local nGlobalId = tOhterNpc_Data["AmountId"]
	-- local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23074]
	-- local nNpcQuota = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
	-- if nNpcQuota < tOhterNpc_Data["Mineral"][3][1]["Value"] then
		-- tNpcGossip[23074]["Option111"] = tOhterNpc_Text[23055]["Option113"]
		-- tNpcGossip[23074]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23074</N>3</N>1"
		-- return true
	-- end
	-- tNpcGossip[23074]["Option111"] = tOhterNpc_Text[23055]["Option111"]
	-- tNpcGossip[23074]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23074</N>3</N>0"
	-- return true
-- end
tNpcGossip[23074]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23074</N>3</N>0"
tNpcGossip[23074]["OptionFunc113"] = "OhterNpc_SubTheMineral</N>23074</N>3</N>1"
tNpcGossip[23074]["ChkFunc1-1"] = function()
	local nGlobalId = tOhterNpc_Data["AmountId"]
	local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23074]
	local nNpcQuota = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
	tNpcGossip[23074]["Text115"] = string.format(tOhterNpc_Text[23055]["Text115"], nNpcQuota)
	-- 奖池赋值
	local nRewardGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerJackpot = Get_SysDynaGlobalData5(nRewardGlobalId)
	tNpcGossip[23074]["Text114"] = string.format(tOhterNpc_Text[23055]["Text114"], nServerJackpot)
	return true
end
-- 【失败，背包无铜矿石】
tNpcGossip[23074]["Text4-1"] = {411, 412}
tNpcGossip[23074]["Text411"] = tOhterNpc_Text[23074]["Text411"]
tNpcGossip[23074]["Text412"] = tOhterNpc_Text[23074]["Text412"]
tNpcGossip[23074]["tOption4-1"] = {411}
tNpcGossip[23074]["Option411"] = tOhterNpc_Text[23074]["Option411"]

-- 铜矿回收车（额外）
tNpcGossip[23075]= CommonFunc_Copy(tNpcGossip[23055])
-- tNpcGossip[23075]["OptionChkFunc111"] = function ()
	-- local nGlobalId = tOhterNpc_Data["AmountId"]
	-- local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23075]
	-- local nNpcQuota = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
	-- if nNpcQuota < tOhterNpc_Data["Mineral"][3][1]["Value"] then
		-- tNpcGossip[23075]["Option111"] = tOhterNpc_Text[23055]["Option113"]
		-- tNpcGossip[23075]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23075</N>3</N>1"
		-- return true
	-- end
	-- tNpcGossip[23075]["Option111"] = tOhterNpc_Text[23055]["Option111"]
	-- tNpcGossip[23075]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23075</N>3</N>0"
	-- return true
-- end
tNpcGossip[23075]["OptionFunc111"] = "OhterNpc_SubTheMineral</N>23075</N>3</N>0"
tNpcGossip[23075]["OptionFunc113"] = "OhterNpc_SubTheMineral</N>23075</N>3</N>1"
tNpcGossip[23075]["ChkFunc1-1"] = function()
	local nGlobalId = tOhterNpc_Data["AmountId"]
	local nGlobalPos = tOhterNpc_Data["ExchangeNpcData"][23075]
	local nNpcQuota = Get_SysDynaGlobalData(nGlobalId, nGlobalPos)
	tNpcGossip[23075]["Text115"] = string.format(tOhterNpc_Text[23055]["Text115"], nNpcQuota)
	-- 奖池赋值
	local nRewardGlobalId = tOhterNpc_Data["GlobalId"]
	local nServerJackpot = Get_SysDynaGlobalData5(nRewardGlobalId)
	tNpcGossip[23075]["Text114"] = string.format(tOhterNpc_Text[23055]["Text114"], nServerJackpot)
	return true
end


-- 【矿石回收】流浪商人
tNpcFace[6143] = 85
tNpcGossip[23056]= tNpcGossip[23056] or DefaultNpc:new{}
tNpcGossip[23056]["OptionHidden"] = 1
tNpcGossip[23056]["Text1-1"] = {111, 112, 115, 117, 118, 119}
tNpcGossip[23056]["Text111"] = tOhterNpc_Text[23056]["Text111"]
tNpcGossip[23056]["Text112"] = tOhterNpc_Text[23056]["Text112"]
-- tNpcGossip[23056]["Text113"] = tOhterNpc_Text[23056]["Text113"]
-- tNpcGossip[23056]["Text114"] = tOhterNpc_Text[23056]["Text114"]
tNpcGossip[23056]["Text115"] = tOhterNpc_Text[23056]["Text115"]
-- tNpcGossip[23056]["Text116"] = tOhterNpc_Text[23056]["Text116"]
tNpcGossip[23056]["Text117"] = tOhterNpc_Text[23056]["Text117"]
tNpcGossip[23056]["Text118"] = tOhterNpc_Text[23056]["Text118"]
tNpcGossip[23056]["Text119"] = tOhterNpc_Text[23056]["Text119"]
tNpcGossip[23056]["ChkFunc1-1"] = function()
	-- 判断是否在活动上交时间
	if not Sys_ChkDayTime(tOhterNpc_Data["BusinessmanTime"]) then
		return false
	end
	local nEvent = tOhterNpc_Data["Stc"]["Event"][1]
	local nData = tOhterNpc_Data["Stc"]["Data"][1]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	local nUserMiningValue = Get_UserStatisticValue(nEvent, nData)
	
	local nGlobalId = tOhterNpc_Data["GlobalId"]
	-- 获取开采值奖池
	local nServerJackpot = tOhterNpc_Data["ExploitationJackpot"]
	local nServerMiningValue = Get_SysDynaGlobalData3(nGlobalId)
	local nRewardMoney = 0
	if nServerMiningValue == 0 then
		nRewardMoney = 0
	else
		nRewardMoney = math.ceil((nUserMiningValue / nServerMiningValue) * nServerJackpot)
	end
	tNpcGossip[23056]["Text117"] = string.format(tOhterNpc_Text[23056]["Text117"], nServerMiningValue, nUserMiningValue)
	tNpcGossip[23056]["Text118"] = string.format(tOhterNpc_Text[23056]["Text118"], nRewardMoney)
	return true
end
tNpcGossip[23056]["tOption1-1"] = {111, 112}
tNpcGossip[23056]["Option111"] = tOhterNpc_Text[23056]["Option111"]
-- tNpcGossip[23056]["OptionFunc111"] = "OhterNpc_SubMineralRewardExploitation</N>23056</N>2"
tNpcGossip[23056]["OptionPoint111"] = "4-1"
tNpcGossip[23056]["Option112"] = tOhterNpc_Text[23056]["Option112"]
-- tNpcGossip[23056]["OptionFunc112"] = "OhterNpc_SubMineralRewardExploitation</N>23056</N>3"
tNpcGossip[23056]["OptionPoint112"] = "5-1"
-- 【活动过后，选项替换为领取开采值分红奖励】
tNpcGossip[23056]["Text1-2"] = {121, 122, 123, 124, 125, 126}
tNpcGossip[23056]["Text121"] = tOhterNpc_Text[23056]["Text121"]
tNpcGossip[23056]["Text122"] = tOhterNpc_Text[23056]["Text122"]
tNpcGossip[23056]["Text123"] = tOhterNpc_Text[23056]["Text123"]
tNpcGossip[23056]["Text124"] = tOhterNpc_Text[23056]["Text124"]
tNpcGossip[23056]["Text125"] = tOhterNpc_Text[23056]["Text125"]
tNpcGossip[23056]["Text126"] = tOhterNpc_Text[23056]["Text126"]
tNpcGossip[23056]["ChkFunc1-2"] = function()
		local nEvent = tOhterNpc_Data["Stc"]["Event"][1]
	local nData = tOhterNpc_Data["Stc"]["Data"][1]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	local nUserMiningValue = Get_UserStatisticValue(nEvent, nData)
	
	local nGlobalId = tOhterNpc_Data["GlobalId"]
	-- 获取开采值奖池
	local nServerJackpot = tOhterNpc_Data["ExploitationJackpot"]
	local nServerMiningValue = Get_SysDynaGlobalData3(nGlobalId)
	local nRewardMoney = 0
	if nServerMiningValue == 0 then
		nRewardMoney = 0
	else
		nRewardMoney = math.ceil((nUserMiningValue / nServerMiningValue) * nServerJackpot)
	end
	tNpcGossip[23056]["Text125"] = string.format(tOhterNpc_Text[23056]["Text125"], nServerMiningValue, nUserMiningValue)
	tNpcGossip[23056]["Text126"] = string.format(tOhterNpc_Text[23056]["Text126"], nRewardMoney)
	return true
end
tNpcGossip[23056]["tOption1-2"] = {121, 122, 123}
tNpcGossip[23056]["Option121"] = tOhterNpc_Text[23056]["Option121"]
tNpcGossip[23056]["OptionChkFunc121"] = function()
	-- 判断是否拥有开采值
	local nKaiEvent = tOhterNpc_Data["Stc"]["Event"][1]
	local nKaiData = tOhterNpc_Data["Stc"]["Data"][1]
	-- 判断隔天
	if Task_StcInterval(nKaiEvent, nKaiData, 1, 4) then
		Task_SetStatistic(nKaiEvent, nKaiData, 0, 1)
		Task_SetStcTimestamp(nKaiEvent, nKaiData, 0)
	end
	if Task_ChkStcValue(nKaiEvent, nKaiData, "<=", 0) then
		return false
	end
	-- 判断是否领取过
	local nEvent = tOhterNpc_Data["Stc"]["Event"][15]
	local nData = tOhterNpc_Data["Stc"]["Data"][15]
	-- 判断是否隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return false
	end
	return true
end
tNpcGossip[23056]["OptionFunc121"] = "OhterNpc_GetMiningBonus"
tNpcGossip[23056]["Option122"] = tOhterNpc_Text[23056]["Option122"]
tNpcGossip[23056]["OptionChkFunc122"] = function()
	-- 判断是否拥有开采值
	local nKaiEvent = tOhterNpc_Data["Stc"]["Event"][1]
	local nKaiData = tOhterNpc_Data["Stc"]["Data"][1]
	-- 判断隔天
	if Task_StcInterval(nKaiEvent, nKaiData, 1, 4) then
		Task_SetStatistic(nKaiEvent, nKaiData, 0, 1)
		Task_SetStcTimestamp(nKaiEvent, nKaiData, 0)
	end
	if Task_ChkStcValue(nKaiEvent, nKaiData, "<=", 0) then
		return false
	end
	-- 判断是否领取过
	local nEvent = tOhterNpc_Data["Stc"]["Event"][15]
	local nData = tOhterNpc_Data["Stc"]["Data"][15]
	-- 判断是否隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return true
	end
	return false
end
tNpcGossip[23056]["Option123"] = tOhterNpc_Text[23056]["Option123"]
-- 提交银矿石
tNpcGossip[23056]["Text4-1"] = {411}
tNpcGossip[23056]["Text411"] = tOhterNpc_Text[23056]["Text411"]
tNpcGossip[23056]["tOption4-1"] = {411, 412, 413, 414, 415, 416}
tNpcGossip[23056]["Option411"] = tOhterNpc_Text[23056]["Option411"]
tNpcGossip[23056]["OptionFunc411"] = "OhterNpc_SubMineralOnceQuality</N>23056</N>2</N>1"
tNpcGossip[23056]["Option412"] = tOhterNpc_Text[23056]["Option412"]
tNpcGossip[23056]["OptionFunc412"] = "OhterNpc_SubMineralOnceQuality</N>23056</N>2</N>2"
tNpcGossip[23056]["Option413"] = tOhterNpc_Text[23056]["Option413"]
tNpcGossip[23056]["OptionFunc413"] = "OhterNpc_SubMineralOnceQuality</N>23056</N>2</N>3"
tNpcGossip[23056]["Option414"] = tOhterNpc_Text[23056]["Option414"]
tNpcGossip[23056]["OptionFunc414"] = "OhterNpc_SubMineralOnceQuality</N>23056</N>2</N>4"
tNpcGossip[23056]["Option415"] = tOhterNpc_Text[23056]["Option415"]
tNpcGossip[23056]["OptionFunc415"] = "OhterNpc_SubMineralOnceQuality</N>23056</N>2</N>5"
tNpcGossip[23056]["Option416"] = tOhterNpc_Text[23056]["Option416"]
tNpcGossip[23056]["OptionFunc416"] = "OhterNpc_SubMineralRewardExploitation</N>23056</N>2"
-- 提交铜矿石
tNpcGossip[23056]["Text5-1"] = {511}
tNpcGossip[23056]["Text511"] = tOhterNpc_Text[23056]["Text511"]
tNpcGossip[23056]["tOption5-1"] = {511, 512, 513, 514, 515, 516}
tNpcGossip[23056]["Option511"] = tOhterNpc_Text[23056]["Option511"]
tNpcGossip[23056]["OptionFunc511"] = "OhterNpc_SubMineralOnceQuality</N>23056</N>3</N>1"
tNpcGossip[23056]["Option512"] = tOhterNpc_Text[23056]["Option512"]
tNpcGossip[23056]["OptionFunc512"] = "OhterNpc_SubMineralOnceQuality</N>23056</N>3</N>2"
tNpcGossip[23056]["Option513"] = tOhterNpc_Text[23056]["Option513"]
tNpcGossip[23056]["OptionFunc513"] = "OhterNpc_SubMineralOnceQuality</N>23056</N>3</N>3"
tNpcGossip[23056]["Option514"] = tOhterNpc_Text[23056]["Option514"]
tNpcGossip[23056]["OptionFunc514"] = "OhterNpc_SubMineralOnceQuality</N>23056</N>3</N>4"
tNpcGossip[23056]["Option515"] = tOhterNpc_Text[23056]["Option515"]
tNpcGossip[23056]["OptionFunc515"] = "OhterNpc_SubMineralOnceQuality</N>23056</N>3</N>5"
tNpcGossip[23056]["Option516"] = tOhterNpc_Text[23056]["Option516"]
tNpcGossip[23056]["OptionFunc516"] = "OhterNpc_SubMineralRewardExploitation</N>23056</N>3"
-- 【失败，背包无银矿石  单份提交】
tNpcGossip[23056]["Text6-1"] = {611, 612}
tNpcGossip[23056]["Text611"] = tOhterNpc_Text[23056]["Text611"]
tNpcGossip[23056]["Text612"] = tOhterNpc_Text[23056]["Text612"]
tNpcGossip[23056]["tOption6-1"] = {611}
tNpcGossip[23056]["Option611"] = tOhterNpc_Text[23056]["Option611"]
-- 【失败，背包无铜矿石  单份提交】
tNpcGossip[23056]["Text7-1"] = {711, 712}
tNpcGossip[23056]["Text711"] = tOhterNpc_Text[23056]["Text711"]
tNpcGossip[23056]["Text712"] = tOhterNpc_Text[23056]["Text712"]
tNpcGossip[23056]["tOption7-1"] = {711}
tNpcGossip[23056]["Option711"] = tOhterNpc_Text[23056]["Option711"]
-- 【失败，背包无银矿石】
tNpcGossip[23056]["Text2-1"] = {211, 212}
tNpcGossip[23056]["Text211"] = tOhterNpc_Text[23056]["Text211"]
tNpcGossip[23056]["Text212"] = tOhterNpc_Text[23056]["Text212"]
tNpcGossip[23056]["tOption2-1"] = {211}
tNpcGossip[23056]["Option211"] = tOhterNpc_Text[23056]["Option211"]
-- 【成功】
tNpcGossip[23056]["Text2-2"] = {221, 222, 223}
tNpcGossip[23056]["Text221"] = tOhterNpc_Text[23056]["Text221"]
tNpcGossip[23056]["Text222"] = tOhterNpc_Text[23056]["Text222"]
tNpcGossip[23056]["Text223"] = tOhterNpc_Text[23056]["Text223"]
tNpcGossip[23056]["tOption2-2"] = {221}
tNpcGossip[23056]["Option221"] = tOhterNpc_Text[23056]["Option221"]
-- 【失败，背包无铜矿石】
tNpcGossip[23056]["Text3-1"] = {311, 312}
tNpcGossip[23056]["Text311"] = tOhterNpc_Text[23056]["Text311"]
tNpcGossip[23056]["Text312"] = tOhterNpc_Text[23056]["Text312"]
tNpcGossip[23056]["tOption3-1"] = {311}
tNpcGossip[23056]["Option311"] = tOhterNpc_Text[23056]["Option311"]
-- 【成功】
tNpcGossip[23056]["Text3-2"] = {321, 322, 323}
tNpcGossip[23056]["Text321"] = tOhterNpc_Text[23056]["Text321"]
tNpcGossip[23056]["Text322"] = tOhterNpc_Text[23056]["Text322"]
tNpcGossip[23056]["Text323"] = tOhterNpc_Text[23056]["Text323"]
tNpcGossip[23056]["tOption3-2"] = {321}
tNpcGossip[23056]["Option321"] = tOhterNpc_Text[23056]["Option321"]

-- 【矿渣回收】地火熔炉
tNpcFace[4156] = 1568
tNpcGossip[23057]= tNpcGossip[23057] or DefaultNpc:new{}
tNpcGossip[23057]["OptionHidden"] = 1
tNpcGossip[23057]["Text1-1"] = {111, 112, 113}
tNpcGossip[23057]["Text111"] = tOhterNpc_Text[23057]["Text111"]
tNpcGossip[23057]["Text112"] = tOhterNpc_Text[23057]["Text112"]
tNpcGossip[23057]["Text113"] = tOhterNpc_Text[23057]["Text113"]
tNpcGossip[23057]["tOption1-1"] = {111, 112}
tNpcGossip[23057]["Option111"] = tOhterNpc_Text[23057]["Option111"]
tNpcGossip[23057]["OptionFunc111"] = "OhterNpc_MeltingSlag</N>23057"
tNpcGossip[23057]["Option112"] = tOhterNpc_Text[23057]["Option112"]
tNpcGossip[23057]["OptionFunc112"] = "OhterNpc_MeltingAllSlag</N>23057"

-- 【成功】
tNpcGossip[23057]["Text2-1"] = {211, 212, 213, 214}
tNpcGossip[23057]["Text211"] = tOhterNpc_Text[23057]["Text211"]
tNpcGossip[23057]["Text212"] = tOhterNpc_Text[23057]["Text212"]
tNpcGossip[23057]["Text213"] = tOhterNpc_Text[23057]["Text213"]
tNpcGossip[23057]["Text214"] = tOhterNpc_Text[23057]["Text214"]
tNpcGossip[23057]["tOption2-1"] = {211, 212}
tNpcGossip[23057]["Option211"] = tOhterNpc_Text[23057]["Option211"]
tNpcGossip[23057]["OptionFunc211"] = "OhterNpc_MeltingSlag</N>23057"
tNpcGossip[23057]["Option212"] = tOhterNpc_Text[23057]["Option212"]
tNpcGossip[23057]["OptionFunc212"] = "OhterNpc_MeltingAllSlag</N>23057"

---------------------------------物品部分---------------------------------------------
-- 铜矿石
tItemFace[3310012] = 1579
tItem[3310012] = tItem[3310012] or {}
tItem[3310012]["Function"] = function(nItemId,sItemName)
	OhterNpc_MineralUse(nItemId)
end
tItem[3310012]["Text1-1"] = {111, 112, 113, 114, 115, 117, 118, 119}
tItem[3310012]["Text111"] = tOhterNpc_Text[3310012]["Text111"]
tItem[3310012]["Text112"] = tOhterNpc_Text[3310012]["Text112"]
tItem[3310012]["Text113"] = tOhterNpc_Text[3310012]["Text113"]
tItem[3310012]["Text114"] = tOhterNpc_Text[3310012]["Text114"]
tItem[3310012]["Text115"] = tOhterNpc_Text[3310012]["Text115"]
-- tItem[3310012]["Text116"] = tOhterNpc_Text[3310012]["Text116"]
tItem[3310012]["Text117"] = tOhterNpc_Text[3310012]["Text117"]
tItem[3310012]["Text118"] = tOhterNpc_Text[3310012]["Text118"]
tItem[3310012]["Text119"] = tOhterNpc_Text[3310012]["Text119"]
tItem[3310012]["tOption1-1"] = {111, 112, 113, 114}
tItem[3310012]["Option111"] = tOhterNpc_Text[3310012]["Option111"]
tItem[3310012]["OptionFunc111"] = "FactionHoleFight_GotoSomeWhere</N>23055"
tItem[3310012]["Option112"] = tOhterNpc_Text[3310012]["Option112"]
tItem[3310012]["OptionFunc112"] = "FactionHoleFight_GotoSomeWhere</N>23073"
tItem[3310012]["Option113"] = tOhterNpc_Text[3310012]["Option113"]
tItem[3310012]["OptionFunc113"] = "FactionHoleFight_GotoSomeWhere</N>23072"
tItem[3310012]["Option114"] = tOhterNpc_Text[3310012]["Option114"]
tItem[3310012]["OptionFunc114"] = "FactionHoleFight_GotoSomeWhere</N>23074"
-- tItem[3310012]["Option115"] = tOhterNpc_Text[3310012]["Option115"]
-- tItem[3310012]["OptionFunc115"] = "FactionHoleFight_GotoSomeWhere</N>23075"
-- 其他品质铜矿石
tItemFace[3310013] = 1580
tItem[3310013] = tItem[3310012]
tItemFace[3310014] = 1581
tItem[3310014] = tItem[3310012]
tItemFace[3310015] = 1582
tItem[3310015] = tItem[3310012]
tItemFace[3310016] = 1583
tItem[3310016] = tItem[3310012]

-- 银矿石
tItemFace[3310007] = 1574
tItem[3310007] = tItem[3310007] or {}
tItem[3310007]["Function"] = function(nItemId,sItemName)
	OhterNpc_MineralUse(nItemId)
end
tItem[3310007]["Text1-1"] = {111, 112, 113, 114, 115, 117, 118, 119}
tItem[3310007]["Text111"] = tOhterNpc_Text[3310007]["Text111"]
tItem[3310007]["Text112"] = tOhterNpc_Text[3310007]["Text112"]
tItem[3310007]["Text113"] = tOhterNpc_Text[3310007]["Text113"]
tItem[3310007]["Text114"] = tOhterNpc_Text[3310007]["Text114"]
tItem[3310007]["Text115"] = tOhterNpc_Text[3310007]["Text115"]
-- tItem[3310007]["Text116"] = tOhterNpc_Text[3310007]["Text116"]
tItem[3310007]["Text117"] = tOhterNpc_Text[3310007]["Text117"]
tItem[3310007]["Text118"] = tOhterNpc_Text[3310007]["Text118"]
tItem[3310007]["Text119"] = tOhterNpc_Text[3310007]["Text119"]
tItem[3310007]["tOption1-1"] = {111, 112, 113, 114}
tItem[3310007]["Option111"] = tOhterNpc_Text[3310007]["Option111"]
tItem[3310007]["OptionFunc111"] = "FactionHoleFight_GotoSomeWhere</N>23054"
tItem[3310007]["Option112"] = tOhterNpc_Text[3310007]["Option112"]
tItem[3310007]["OptionFunc112"] = "FactionHoleFight_GotoSomeWhere</N>23069"
tItem[3310007]["Option113"] = tOhterNpc_Text[3310007]["Option113"]
tItem[3310007]["OptionFunc113"] = "FactionHoleFight_GotoSomeWhere</N>23068"
tItem[3310007]["Option114"] = tOhterNpc_Text[3310007]["Option114"]
tItem[3310007]["OptionFunc114"] = "FactionHoleFight_GotoSomeWhere</N>23070"
-- tItem[3310007]["Option115"] = tOhterNpc_Text[3310007]["Option115"]
-- tItem[3310007]["OptionFunc115"] = "FactionHoleFight_GotoSomeWhere</N>23071"
-- 其他品质银矿石
tItemFace[3310008] = 1575
tItem[3310008] = tItem[3310007]
tItemFace[3310009] = 1576
tItem[3310009] = tItem[3310007]
tItemFace[3310010] = 1577
tItem[3310010] = tItem[3310007]
tItemFace[3310011] = 1578
tItem[3310011] = tItem[3310007]

-- 金矿石
tItemFace[3310002] = 1569
tItem[3310002] = tItem[3310002] or {}
tItem[3310002]["Function"] = function(nItemId,sItemName)
	OhterNpc_MineralUse(nItemId)
end
tItem[3310002]["Text1-1"] = {111, 112, 113, 114, 115, 116}
tItem[3310002]["Text111"] = tOhterNpc_Text[3310002]["Text111"]
tItem[3310002]["Text112"] = tOhterNpc_Text[3310002]["Text112"]
tItem[3310002]["Text113"] = tOhterNpc_Text[3310002]["Text113"]
tItem[3310002]["Text114"] = tOhterNpc_Text[3310002]["Text114"]
tItem[3310002]["Text115"] = tOhterNpc_Text[3310002]["Text115"]
tItem[3310002]["Text116"] = tOhterNpc_Text[3310002]["Text116"]
tItem[3310002]["tOption1-1"] = {111}
tItem[3310002]["Option111"] = tOhterNpc_Text[3310002]["Option111"]
tItem[3310002]["OptionFunc111"] = "FactionHoleFight_GotoSomeWhere</N>23053"
-- 其他品质金矿石
tItemFace[3310003] = 1570
tItem[3310003] = tItem[3310002]
tItemFace[3310004] = 1571
tItem[3310004] = tItem[3310002]
tItemFace[3310005] = 1572
tItem[3310005] = tItem[3310002]
tItemFace[3310006] = 1573
tItem[3310006] = tItem[3310002]

-- 矿山开奖券
tItemFace[3310001] = 1647
tItem[3310001] = tItem[3310001] or {}
tItem[3310001]["Function"] = function(nItemId,sItemName)
	OhterNpc_CouponsUse(nItemId)
end
tItem[3310001]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124}
tItem[3310001]["Text111"] = tOhterNpc_Text[3310001]["Text111"]
tItem[3310001]["Text112"] = tOhterNpc_Text[3310001]["Text112"]
tItem[3310001]["Text113"] = tOhterNpc_Text[3310001]["Text113"]
tItem[3310001]["Text114"] = tOhterNpc_Text[3310001]["Text114"]
tItem[3310001]["Text115"] = tOhterNpc_Text[3310001]["Text115"]
tItem[3310001]["Text116"] = tOhterNpc_Text[3310001]["Text116"]
tItem[3310001]["Text117"] = tOhterNpc_Text[3310001]["Text117"]
tItem[3310001]["Text118"] = tOhterNpc_Text[3310001]["Text118"]
tItem[3310001]["Text119"] = tOhterNpc_Text[3310001]["Text119"]
tItem[3310001]["Text120"] = tOhterNpc_Text[3310001]["Text120"]
tItem[3310001]["Text121"] = tOhterNpc_Text[3310001]["Text121"]
tItem[3310001]["Text122"] = tOhterNpc_Text[3310001]["Text122"]
tItem[3310001]["Text123"] = tOhterNpc_Text[3310001]["Text123"]
tItem[3310001]["Text124"] = tOhterNpc_Text[3310001]["Text124"]
tItem[3310001]["ChkFunc1-1"] = function()
	local nIndex = 113
	local tRankData = RankingFunc_GetBeforeData(tOhterNpc_Data["RankIndex"])
	local sName = ""
	local sScore = ""
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			-- 取万位
			sScore = tostring(tRankData[i]["Score"])
			sName = tRankData[i]["UserName"]
		else
			sScore = tOhterNpc_Text["Dialog"]["RewardMoney"]
			sName = tOhterNpc_Text["Dialog"]["Name"]
		end
		tItem[3310001]["Text" .. (nIndex + i)] = string.format(tOhterNpc_Text[3310001]["Text" .. (nIndex + i)],Sys_Alignment(tostring(sName), 12, tostring(sScore), 38))
	end
	return true
end
tItem[3310001]["tOption1-1"] = {111, 112}
tItem[3310001]["Option111"] = tOhterNpc_Text[3310001]["Option111"]
tItem[3310001]["Option112"] = tOhterNpc_Text[3310001]["Option112"]
tItem[3310001]["OptionChkFunc112"] = function()
	local nMapId = tOhterNpc_Data["MapId"]
	local nUserMap = Get_UserMapId()
	if nUserMap == nMapId then
		return false
	end
	return true
end
tItem[3310001]["OptionFunc112"] = "OhterNpc_GotoBossMei"

-- 血色勋章
tItem[3310781] = tItem[3310781] or {}
tItem[3310781]["Function"] = function(nItemId,sItemName)
	OhterNpc_MedalUse(nItemId)
end

-- 矿山回城卷
tItem[3310222] = tItem[3310222] or {}
tItem[3310222]["Function"] = function(nItemId,sItemName)
	OhterNpc_ReturnRollUse(nItemId)
end

-- 竞技场万能神纹精粹包
tItem[3310366] = tItem[3310366] or {}
tItem[3310366]["Function"] = function(nItemId,sItemName)
	OhterNpc_HonerPackageUse(nItemId, 1)
end
-- 竞技场气力值礼包
tItem[3310367] = tItem[3310367] or {}
tItem[3310367]["Function"] = function(nItemId,sItemName)
	OhterNpc_HonerPackageUse(nItemId, 2)
end

-- 礼包使用
tItem[3310986] = tItem[3310986] or {}
tItem[3310986]["Function"] = function(nItemId,sItemName)
	OhterNpc_ExChangePackageUse(nItemId)
end
tItem[3310989] = tItem[3310986]
tItem[3310990] = tItem[3310986]

---------------------------------怪物部分---------------------------------------------
-- 记录数量开宝箱
local tOhterNpc_KillMonster = {}
tOhterNpc_KillMonster["Function"] = OhterNpc_SaveKillMonster
tOhterNpc_KillMonster["MonsterId"] = {4806,4824}
table.insert(tMonsterDrop_AreaLoad,tOhterNpc_KillMonster)

-- 击杀神龙岛跟古神灵境怪物掉落
local tOhterNpc_MonsterDrop = {}
tOhterNpc_MonsterDrop["Function"] = OhterNpc_KillMonsterDrop
tOhterNpc_MonsterDrop["Area"] = {11}
table.insert(tMonsterDrop_AreaLoad,tOhterNpc_MonsterDrop)

--------------------------------------时间自检-------------------------------------------
local tOhterNpc_ChkTime = {}
-- 生成铜矿车，重置一小时上交数量
tOhterNpc_ChkTime[1] = {}
tOhterNpc_ChkTime[1]["Type"] = 1
tOhterNpc_ChkTime[1]["TimeType"] = 4
tOhterNpc_ChkTime[1]["Multiple"] = {}
tOhterNpc_ChkTime[1]["Multiple"][1]  = "01:00 01:03"
tOhterNpc_ChkTime[1]["Multiple"][2]  = "02:00 02:03"
tOhterNpc_ChkTime[1]["Multiple"][3]  = "03:00 03:03"
tOhterNpc_ChkTime[1]["Multiple"][4]  = "04:00 04:03"
tOhterNpc_ChkTime[1]["Multiple"][5]  = "05:00 05:03"
tOhterNpc_ChkTime[1]["Multiple"][6]  = "06:00 06:03"
tOhterNpc_ChkTime[1]["Multiple"][7]  = "07:00 07:03"
tOhterNpc_ChkTime[1]["Multiple"][8]  = "08:00 08:03"
tOhterNpc_ChkTime[1]["Multiple"][9]  = "09:00 09:03"
tOhterNpc_ChkTime[1]["Multiple"][10] = "10:00 10:03"
tOhterNpc_ChkTime[1]["Multiple"][11] = "11:00 11:03"
tOhterNpc_ChkTime[1]["Multiple"][12] = "12:00 12:03"
tOhterNpc_ChkTime[1]["Multiple"][13] = "13:00 13:03"
tOhterNpc_ChkTime[1]["Multiple"][14] = "14:00 14:03"
tOhterNpc_ChkTime[1]["Multiple"][15] = "15:00 15:03"
tOhterNpc_ChkTime[1]["Multiple"][16] = "16:00 16:03"
tOhterNpc_ChkTime[1]["Multiple"][17] = "17:00 17:03"
tOhterNpc_ChkTime[1]["Multiple"][18] = "18:00 18:03"
tOhterNpc_ChkTime[1]["Multiple"][19] = "19:00 19:03"
tOhterNpc_ChkTime[1]["Multiple"][20] = "20:00 20:03"
tOhterNpc_ChkTime[1]["Func"] = OhterNpc_MoveInCopperMiner
table.insert(tSystemTime_InitialData,tOhterNpc_ChkTime[1])
-- 重置标志位
tOhterNpc_ChkTime[2] = {}
tOhterNpc_ChkTime[2]["Type"] = 1
tOhterNpc_ChkTime[2]["TimeType"] = 4
tOhterNpc_ChkTime[2]["Multiple"] = {}
tOhterNpc_ChkTime[2]["Multiple"][1]  = "01:05 01:06"
tOhterNpc_ChkTime[2]["Multiple"][2]  = "02:05 02:06"
tOhterNpc_ChkTime[2]["Multiple"][3]  = "03:05 03:06"
tOhterNpc_ChkTime[2]["Multiple"][4]  = "04:05 04:06"
tOhterNpc_ChkTime[2]["Multiple"][5]  = "05:05 05:06"
tOhterNpc_ChkTime[2]["Multiple"][6]  = "06:05 06:06"
tOhterNpc_ChkTime[2]["Multiple"][7]  = "07:05 07:06"
tOhterNpc_ChkTime[2]["Multiple"][8]  = "08:05 08:06"
tOhterNpc_ChkTime[2]["Multiple"][9]  = "09:05 09:06"
tOhterNpc_ChkTime[2]["Multiple"][10] = "10:05 10:06"
tOhterNpc_ChkTime[2]["Multiple"][11] = "11:05 11:06"
tOhterNpc_ChkTime[2]["Multiple"][12] = "12:05 12:06"
tOhterNpc_ChkTime[2]["Multiple"][13] = "13:05 13:06"
tOhterNpc_ChkTime[2]["Multiple"][14] = "14:05 14:06"
tOhterNpc_ChkTime[2]["Multiple"][15] = "15:05 15:06"
tOhterNpc_ChkTime[2]["Multiple"][16] = "16:05 16:06"
tOhterNpc_ChkTime[2]["Multiple"][17] = "17:05 17:06"
tOhterNpc_ChkTime[2]["Multiple"][18] = "18:05 18:06"
tOhterNpc_ChkTime[2]["Multiple"][19] = "19:05 19:06"
tOhterNpc_ChkTime[2]["Multiple"][20] = "20:05 20:06"
tOhterNpc_ChkTime[2]["Func"] = OhterNpc_MoveOutCopperMiner
table.insert(tSystemTime_InitialData,tOhterNpc_ChkTime[2])
-- 生成银矿车，重置两小时上交数量
tOhterNpc_ChkTime[3] = {}
tOhterNpc_ChkTime[3]["Type"] = 1
tOhterNpc_ChkTime[3]["TimeType"] = 4
tOhterNpc_ChkTime[3]["Multiple"] = {}
tOhterNpc_ChkTime[3]["Multiple"][1]  = "02:00 02:03"
tOhterNpc_ChkTime[3]["Multiple"][2]  = "04:00 04:03"
tOhterNpc_ChkTime[3]["Multiple"][3]  = "06:00 06:03"
tOhterNpc_ChkTime[3]["Multiple"][4]  = "08:00 08:03"
tOhterNpc_ChkTime[3]["Multiple"][5]  = "10:00 10:03"
tOhterNpc_ChkTime[3]["Multiple"][6]  = "12:00 12:03"
tOhterNpc_ChkTime[3]["Multiple"][7]  = "14:00 14:03"
tOhterNpc_ChkTime[3]["Multiple"][8]  = "16:00 16:03"
tOhterNpc_ChkTime[3]["Multiple"][9]  = "18:00 18:03"
tOhterNpc_ChkTime[3]["Multiple"][10] = "20:00 20:03"
tOhterNpc_ChkTime[3]["Func"] = OhterNpc_MoveInSilverMiner
table.insert(tSystemTime_InitialData,tOhterNpc_ChkTime[3])
-- 五分钟移回银矿车，重置银矿车兑换额度
tOhterNpc_ChkTime[4] = {}
tOhterNpc_ChkTime[4]["Type"] = 1
tOhterNpc_ChkTime[4]["TimeType"] = 4
tOhterNpc_ChkTime[4]["Multiple"] = {}
tOhterNpc_ChkTime[4]["Multiple"][1]  = "02:15 02:16"
tOhterNpc_ChkTime[4]["Multiple"][2]  = "04:15 04:16"
tOhterNpc_ChkTime[4]["Multiple"][3]  = "06:15 06:16"
tOhterNpc_ChkTime[4]["Multiple"][4]  = "08:15 08:16"
tOhterNpc_ChkTime[4]["Multiple"][5]  = "10:15 10:16"
tOhterNpc_ChkTime[4]["Multiple"][6]  = "12:15 12:16"
tOhterNpc_ChkTime[4]["Multiple"][7]  = "14:15 14:16"
tOhterNpc_ChkTime[4]["Multiple"][8]  = "16:15 16:16"
tOhterNpc_ChkTime[4]["Multiple"][9]  = "18:15 18:16"
tOhterNpc_ChkTime[4]["Multiple"][10] = "20:15 20:16"
tOhterNpc_ChkTime[4]["Func"] = OhterNpc_MoveOutSilverMiner
table.insert(tSystemTime_InitialData,tOhterNpc_ChkTime[4])
-- 矿洞关闭移出流浪商人
tOhterNpc_ChkTime[5] = {}
tOhterNpc_ChkTime[5]["Type"] = 1
tOhterNpc_ChkTime[5]["TimeType"] = 4
tOhterNpc_ChkTime[5]["Multiple"] = {}
tOhterNpc_ChkTime[5]["Multiple"][1] = "21:00 21:03"
tOhterNpc_ChkTime[5]["Func"] = OhterNpc_MoveInBusinessman
table.insert(tSystemTime_InitialData,tOhterNpc_ChkTime[5])
-- 移回流浪商人
tOhterNpc_ChkTime[6] = {}
tOhterNpc_ChkTime[6]["Type"] = 1
tOhterNpc_ChkTime[6]["TimeType"] = 4
tOhterNpc_ChkTime[6]["Multiple"] = {}
tOhterNpc_ChkTime[6]["Multiple"][1] = "00:00 00:03"
tOhterNpc_ChkTime[6]["Func"] = OhterNpc_MoveOutBusinessman
table.insert(tSystemTime_InitialData,tOhterNpc_ChkTime[6])
-- 摇摇乐第一次开奖
tOhterNpc_ChkTime[7] = {}
tOhterNpc_ChkTime[7]["Type"] = 1
tOhterNpc_ChkTime[7]["TimeType"] = 4
tOhterNpc_ChkTime[7]["Multiple"] = {}
tOhterNpc_ChkTime[7]["Multiple"][1] = "21:00 21:00"
tOhterNpc_ChkTime[7]["Func"] = OhterNpc_ShakeRewardFirst
table.insert(tSystemTime_InitialData,tOhterNpc_ChkTime[7])
-- 摇摇乐第二次开奖
tOhterNpc_ChkTime[8] = {}
tOhterNpc_ChkTime[8]["Type"] = 1
tOhterNpc_ChkTime[8]["TimeType"] = 4
tOhterNpc_ChkTime[8]["Multiple"] = {}
tOhterNpc_ChkTime[8]["Multiple"][1] = "21:01 21:01"
tOhterNpc_ChkTime[8]["Func"] = OhterNpc_ShakeRewardSecond
table.insert(tSystemTime_InitialData,tOhterNpc_ChkTime[8])
-- 摇摇乐第三次开奖
tOhterNpc_ChkTime[9] = {}
tOhterNpc_ChkTime[9]["Type"] = 1
tOhterNpc_ChkTime[9]["TimeType"] = 4
tOhterNpc_ChkTime[9]["Multiple"] = {}
tOhterNpc_ChkTime[9]["Multiple"][1] = "21:02 21:02"
tOhterNpc_ChkTime[9]["Func"] = OhterNpc_ShakeRewardThird
table.insert(tSystemTime_InitialData,tOhterNpc_ChkTime[9])
-- 掉落限量清空
tOhterNpc_ChkTime[10] = {}
tOhterNpc_ChkTime[10]["Type"] = 2
tOhterNpc_ChkTime[10]["TimeType"] = 4
tOhterNpc_ChkTime[10]["Multiple"] = {}
tOhterNpc_ChkTime[10]["Multiple"][1] = "00:00 00:00"
tOhterNpc_ChkTime[10]["Multiple"][2] = "01:00 01:00"
tOhterNpc_ChkTime[10]["Multiple"][3] = "02:00 02:00"
tOhterNpc_ChkTime[10]["Multiple"][4] = "03:00 03:00"
tOhterNpc_ChkTime[10]["Multiple"][5] = "04:00 04:00"
tOhterNpc_ChkTime[10]["Multiple"][6] = "05:00 05:00"
tOhterNpc_ChkTime[10]["Multiple"][7] = "06:00 06:00"
tOhterNpc_ChkTime[10]["Multiple"][8] = "07:00 07:00"
tOhterNpc_ChkTime[10]["Multiple"][9] = "08:00 08:00"
tOhterNpc_ChkTime[10]["Multiple"][10] = "09:00 09:00"
tOhterNpc_ChkTime[10]["Multiple"][11] = "10:00 10:00"
tOhterNpc_ChkTime[10]["Multiple"][12] = "11:00 11:00"
tOhterNpc_ChkTime[10]["Multiple"][13] = "12:00 12:00"
tOhterNpc_ChkTime[10]["Multiple"][14] = "13:00 13:00"
tOhterNpc_ChkTime[10]["Multiple"][15] = "14:00 14:00"
tOhterNpc_ChkTime[10]["Multiple"][16] = "15:00 15:00"
tOhterNpc_ChkTime[10]["Multiple"][17] = "16:00 16:00"
tOhterNpc_ChkTime[10]["Multiple"][18] = "17:00 17:00"
tOhterNpc_ChkTime[10]["Multiple"][19] = "18:00 18:00"
tOhterNpc_ChkTime[10]["Multiple"][20] = "19:00 19:00"
tOhterNpc_ChkTime[10]["Multiple"][21] = "20:00 20:00"
tOhterNpc_ChkTime[10]["Multiple"][22] = "21:00 21:00"
tOhterNpc_ChkTime[10]["Multiple"][23] = "22:00 22:00"
tOhterNpc_ChkTime[10]["Multiple"][24] = "23:00 23:00"
tOhterNpc_ChkTime[10]["Func"] = OhterNpc_ResetGloalDrop
table.insert(tSystemTime_InitialData,tOhterNpc_ChkTime[10])
-- 标志位清空
tOhterNpc_ChkTime[11] = {}
tOhterNpc_ChkTime[11]["Type"] = 1
tOhterNpc_ChkTime[11]["TimeType"] = 4
tOhterNpc_ChkTime[11]["Multiple"] = {}
tOhterNpc_ChkTime[11]["Multiple"][1] = "23:55 23:59"
tOhterNpc_ChkTime[11]["Func"] = OhterNpc_ResetGloalSign
table.insert(tSystemTime_InitialData,tOhterNpc_ChkTime[11])



-------------上线触发------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func, OhterNpc_UserLogin)


