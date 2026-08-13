------------------------------------------------------------------------------------
--Name:			180302[简体征服][活动脚本]3月幸运树活动
--Purpose:		宝树迎春
--Creator:		wzh
--Created:		2018/03/02
------------------------------------------------------------------------------------
-- 前缀
-- LuckyTree_

-- LogId 12001015

-- stc掩码说明 
-- stc 174,48		背包信
-- stc 174,49		每日已完成任务的次数
-- stc 174,50		每日已领取幸运果的次数
-- stc 174,51		记录每日第几轮任务
-- stc 174,52		记录任务一
-- stc 174,53		记录任务二
-- stc 174,54		记录任务三
-- stc 174,55		记录任务四
-- stc 174,56		记录任务五
-- stc 174,57		记录每一轮任务完成情况
-- stc 174,58		记录每日已完成的所有任务（1）
-- stc 174,59		记录每日已完成的所有任务（2）
-- stc 174,60		记录每日已完成的所有任务奖励是否被领取（1）
-- stc 174,61		记录每日已完成的所有任务奖励是否被领取（2）
-- stc 174,62		记录杀怪任务一的杀怪数
-- stc 174,63		记录杀怪任务二的杀怪数
-- stc 174,64		记录杀怪任务三的杀怪数
-- stc 174,65		记录杀怪任务四的杀怪数
-- stc 174,66		记录杀怪任务五的杀怪数
-- stc 174,67		记录今日投资的产业(用NpcId记录)
-- stc 174,68		今日已投资幸运币数量
-- stc 174,69		今日已获得投资返利的次数
-- stc 174,70		节日是否已领取小股东分红
-- stc 181,51		拉斯维加斯服上线给直升80级礼包

-- 全局表记录
-- global	52358~52361		记录淘气池塘当前排名信息
-- global	52362~52365		记录淘气池塘昨日排名信息
-- global	52366~52369		记录摇星果林当前排名信息
-- global	52370~52373		记录摇星果林昨日排名信息
-- global	52374~52377		记录聚宝农林当前排名信息
-- global	52378~52381		记录聚宝农林昨日排名信息

--------------------------------------常量配置部分---------------------------------------
-- 常量表
local tLuckyTree_Cont = {}
	tLuckyTree_Cont["nRankIndex"] = {}
	tLuckyTree_Cont["nRankIndex"][1] = 22692
	tLuckyTree_Cont["nRankIndex"][2] = 22693
	tLuckyTree_Cont["nRankIndex"][3] = 22694
	
	tLuckyTree_Cont["Level"] = 80
	tLuckyTree_Cont["Metempsychosis"] = 0
	tLuckyTree_Cont["NeedEmoney"] = 5
	
	-- 拉斯维加斯服
	tLuckyTree_Cont["Lasvegas"] = {}
	tLuckyTree_Cont["Lasvegas"]["GlobalId"] = 52933
	tLuckyTree_Cont["Lasvegas"]["Level"] = 80
	tLuckyTree_Cont["Lasvegas"]["Metempsychosis"] = 0
	
	-- 物品配置
	tLuckyTree_Cont["Item"] = {}
	-- 幸运果
	tLuckyTree_Cont["Item"][3307582] = {}
	-- 区分二转
	tLuckyTree_Cont["Item"][3307582]["Level"] = 0
	tLuckyTree_Cont["Item"][3307582]["Metempsychosis"] = 2
	-- 幸运币
	tLuckyTree_Cont["Item"]["Coin"] = {}
	tLuckyTree_Cont["Item"]["Coin"]["Id"] = 3307583
	
	-- 光效
	tLuckyTree_Cont["Effect"] = "zf2-e129"
	
	-- 地图配置
	tLuckyTree_Cont["Map"] = {}
	tLuckyTree_Cont["Map"][1] = {}
	tLuckyTree_Cont["Map"][1]["Id"] = 1002
	tLuckyTree_Cont["Map"][1]["CellX"] = 322
	tLuckyTree_Cont["Map"][1]["CellY"] = 438
	tLuckyTree_Cont["Map"][2] = {}
	tLuckyTree_Cont["Map"][2]["Id"] = 1002
	tLuckyTree_Cont["Map"][2]["CellX"] = 322
	tLuckyTree_Cont["Map"][2]["CellY"] = 438
	tLuckyTree_Cont["Map"][17] = {}
	tLuckyTree_Cont["Map"][17]["Id"] = 1020
	tLuckyTree_Cont["Map"][17]["CellX"] = 698
	tLuckyTree_Cont["Map"][17]["CellY"] = 539
	tLuckyTree_Cont["Map"][18] = {}
	tLuckyTree_Cont["Map"][18]["Id"] = 1011
	tLuckyTree_Cont["Map"][18]["CellX"] = 720
	tLuckyTree_Cont["Map"][18]["CellY"] = 720
	tLuckyTree_Cont["Map"][19] = {}
	tLuckyTree_Cont["Map"][19]["Id"] = 1002
	tLuckyTree_Cont["Map"][19]["CellX"] = 522
	tLuckyTree_Cont["Map"][19]["CellY"] = 492
	tLuckyTree_Cont["Map"][20] = {}
	tLuckyTree_Cont["Map"][20]["Id"] = 1000
	tLuckyTree_Cont["Map"][20]["CellX"] = 808
	tLuckyTree_Cont["Map"][20]["CellY"] = 625
	tLuckyTree_Cont["Map"][21] = {}
	tLuckyTree_Cont["Map"][21]["Id"] = 1002
	tLuckyTree_Cont["Map"][21]["CellX"] = 416
	tLuckyTree_Cont["Map"][21]["CellY"] = 608
	tLuckyTree_Cont["Map"][10281] = {}
	tLuckyTree_Cont["Map"][10281]["Id"] = 10281
	tLuckyTree_Cont["Map"][10281]["CellX"] = 21
	tLuckyTree_Cont["Map"][10281]["CellY"] = 30
	tLuckyTree_Cont["Map"][10282] = {}
	tLuckyTree_Cont["Map"][10282]["Id"] = 10282
	tLuckyTree_Cont["Map"][10282]["CellX"] = 27
	tLuckyTree_Cont["Map"][10282]["CellY"] = 26
	tLuckyTree_Cont["Map"][10283] = {}
	tLuckyTree_Cont["Map"][10283]["Id"] = 10283
	tLuckyTree_Cont["Map"][10283]["CellX"] = 22
	tLuckyTree_Cont["Map"][10283]["CellY"] = 26
	
	-- 任务配置
	tLuckyTree_Cont["Task"] = {}
	tLuckyTree_Cont["Task"]["Total"] = 28
	-- 使用物品类
	-- 使用正气令
	tLuckyTree_Cont["Task"]["UseItem"] = {}
	tLuckyTree_Cont["Task"]["UseItem"][1] = {}
	tLuckyTree_Cont["Task"]["UseItem"][1]["Index"] = 1
	tLuckyTree_Cont["Task"]["UseItem"][1]["Id"] = 729304
	tLuckyTree_Cont["Task"]["UseItem"][1]["EventType"] = 108
	tLuckyTree_Cont["Task"]["UseItem"][1]["DataType"] = 00
	tLuckyTree_Cont["Task"]["UseItem"][1]["nComplete"] = 1
	tLuckyTree_Cont["Task"]["UseItem"][1]["CompleteFlagOpt"] = ">="
	-- 收集类
	tLuckyTree_Cont["Task"]["Collect"] = {}
	-- 收集3个巨猿皮
	tLuckyTree_Cont["Task"]["Collect"][1] = {}
	tLuckyTree_Cont["Task"]["Collect"][1]["Index"] = 2
	tLuckyTree_Cont["Task"]["Collect"][1]["ItemNum"] = 3
	tLuckyTree_Cont["Task"]["Collect"][1]["ItemId"] = 729088
	-- 收集3个彩石
	tLuckyTree_Cont["Task"]["Collect"][2] = {}
	tLuckyTree_Cont["Task"]["Collect"][2]["Index"] = 3
	tLuckyTree_Cont["Task"]["Collect"][2]["ItemNum"] = 3
	tLuckyTree_Cont["Task"]["Collect"][2]["ItemId"] = 729092
	-- 收集5个沙精
	tLuckyTree_Cont["Task"]["Collect"][3] = {}
	tLuckyTree_Cont["Task"]["Collect"][3]["Index"] = 4
	tLuckyTree_Cont["Task"]["Collect"][3]["ItemNum"] = 5
	tLuckyTree_Cont["Task"]["Collect"][3]["ItemId"] = 729090
	-- 收集5个金臂利爪
	tLuckyTree_Cont["Task"]["Collect"][4] = {}
	tLuckyTree_Cont["Task"]["Collect"][4]["Index"] = 5
	tLuckyTree_Cont["Task"]["Collect"][4]["ItemNum"] = 5
	tLuckyTree_Cont["Task"]["Collect"][4]["ItemId"] = 729094
	-- 收集3颗流星
	tLuckyTree_Cont["Task"]["Collect"][5] = {}
	tLuckyTree_Cont["Task"]["Collect"][5]["Index"] = 6
	tLuckyTree_Cont["Task"]["Collect"][5]["ItemNum"] = 3
	tLuckyTree_Cont["Task"]["Collect"][5]["ItemId"] = 1088001
	-- 收集1个流星卷
	tLuckyTree_Cont["Task"]["Collect"][6] = {}
	tLuckyTree_Cont["Task"]["Collect"][6]["Index"] = 7
	tLuckyTree_Cont["Task"]["Collect"][6]["ItemNum"] = 1
	tLuckyTree_Cont["Task"]["Collect"][6]["ItemId"] = 720027
	-- 收集1个神器源晶
	tLuckyTree_Cont["Task"]["Collect"][7] = {}
	tLuckyTree_Cont["Task"]["Collect"][7]["Index"] = 8
	tLuckyTree_Cont["Task"]["Collect"][7]["ItemNum"] = 1
	tLuckyTree_Cont["Task"]["Collect"][7]["ItemId"] = 3306885
	-- 收集2个强效护心丹
	tLuckyTree_Cont["Task"]["Collect"][8] = {}
	tLuckyTree_Cont["Task"]["Collect"][8]["Index"] = 9
	tLuckyTree_Cont["Task"]["Collect"][8]["ItemNum"] = 2
	tLuckyTree_Cont["Task"]["Collect"][8]["ItemId"] = 3002030
	-- 收集1个九幽魔晶
	tLuckyTree_Cont["Task"]["Collect"][9] = {}
	tLuckyTree_Cont["Task"]["Collect"][9]["Index"] = 10
	tLuckyTree_Cont["Task"]["Collect"][9]["ItemNum"] = 1
	tLuckyTree_Cont["Task"]["Collect"][9]["ItemId"] = 3303099
	-- 收集1个记忆宝珠
	tLuckyTree_Cont["Task"]["Collect"][10] = {}
	tLuckyTree_Cont["Task"]["Collect"][10]["Index"] = 11
	tLuckyTree_Cont["Task"]["Collect"][10]["ItemNum"] = 1
	tLuckyTree_Cont["Task"]["Collect"][10]["ItemId"] = 720828
	-- 收集2张房屋设计图
	tLuckyTree_Cont["Task"]["Collect"][11] = {}
	tLuckyTree_Cont["Task"]["Collect"][11]["Index"] = 12
	tLuckyTree_Cont["Task"]["Collect"][11]["ItemNum"] = 2
	tLuckyTree_Cont["Task"]["Collect"][11]["ItemId"] = 3100046
	-- 收集1个小块祝福石
	tLuckyTree_Cont["Task"]["Collect"][12] = {}
	tLuckyTree_Cont["Task"]["Collect"][12]["Index"] = 13
	tLuckyTree_Cont["Task"]["Collect"][12]["ItemNum"] = 1
	tLuckyTree_Cont["Task"]["Collect"][12]["ItemId"] = 720173
	-- 收集1个大块祝福石
	tLuckyTree_Cont["Task"]["Collect"][13] = {}
	tLuckyTree_Cont["Task"]["Collect"][13]["Index"] = 14
	tLuckyTree_Cont["Task"]["Collect"][13]["ItemNum"] = 1
	tLuckyTree_Cont["Task"]["Collect"][13]["ItemId"] = 720174
	-- 收集1个小块祈愿石
	tLuckyTree_Cont["Task"]["Collect"][14] = {}
	tLuckyTree_Cont["Task"]["Collect"][14]["Index"] = 15
	tLuckyTree_Cont["Task"]["Collect"][14]["ItemNum"] = 1
	tLuckyTree_Cont["Task"]["Collect"][14]["ItemId"] = 1200000
	-- 收集1颗灵境神草
	tLuckyTree_Cont["Task"]["Collect"][15] = {}
	tLuckyTree_Cont["Task"]["Collect"][15]["Index"] = 16
	tLuckyTree_Cont["Task"]["Collect"][15]["ItemNum"] = 1
	tLuckyTree_Cont["Task"]["Collect"][15]["ItemId"] = 3303483
	-- 杀怪类
	tLuckyTree_Cont["Task"]["Kill"] = {}
	-- 击杀3只须猕猴
	tLuckyTree_Cont["Task"]["Kill"][1] = {}
	tLuckyTree_Cont["Task"]["Kill"][1]["Index"] = 17
	tLuckyTree_Cont["Task"]["Kill"][1]["MonsterNum"] = 3
	tLuckyTree_Cont["Task"]["Kill"][1]["MonsterId"] = 10
	tLuckyTree_Cont["Task"]["Kill"][1]["StcIndex"] = 14
	-- 击杀3只火精灵
	tLuckyTree_Cont["Task"]["Kill"][2] = {}
	tLuckyTree_Cont["Task"]["Kill"][2]["Index"] = 18
	tLuckyTree_Cont["Task"]["Kill"][2]["MonsterNum"] = 3
	tLuckyTree_Cont["Task"]["Kill"][2]["MonsterId"] = 9
	tLuckyTree_Cont["Task"]["Kill"][2]["StcIndex"] = 15
	-- 击杀5只叫天鸡
	tLuckyTree_Cont["Task"]["Kill"][3] = {}
	tLuckyTree_Cont["Task"]["Kill"][3]["Index"] = 19
	tLuckyTree_Cont["Task"]["Kill"][3]["MonsterNum"] = 5
	tLuckyTree_Cont["Task"]["Kill"][3]["MonsterId"] = 1
	tLuckyTree_Cont["Task"]["Kill"][3]["StcIndex"] = 16
	-- 击杀5只沙怪
	tLuckyTree_Cont["Task"]["Kill"][4] = {}
	tLuckyTree_Cont["Task"]["Kill"][4]["Index"] = 20
	tLuckyTree_Cont["Task"]["Kill"][4]["MonsterNum"] = 5
	tLuckyTree_Cont["Task"]["Kill"][4]["MonsterId"] = 14
	tLuckyTree_Cont["Task"]["Kill"][4]["StcIndex"] = 17
	-- 击杀6只斑鸠王
	tLuckyTree_Cont["Task"]["Kill"][5] = {}
	tLuckyTree_Cont["Task"]["Kill"][5]["Index"] = 21
	tLuckyTree_Cont["Task"]["Kill"][5]["MonsterNum"] = 6
	tLuckyTree_Cont["Task"]["Kill"][5]["MonsterId"] = 2
	tLuckyTree_Cont["Task"]["Kill"][5]["StcIndex"] = 18
	-- 日常+国境类(用taskid记录的)
	tLuckyTree_Cont["Task"]["Task"] = {}
	-- 完成一次日常-祭拜先贤
	tLuckyTree_Cont["Task"]["Task"][1] = {}
	tLuckyTree_Cont["Task"]["Task"][1]["Index"] = 22
	tLuckyTree_Cont["Task"]["Task"][1]["Id"] = 6329
	tLuckyTree_Cont["Task"]["Task"][1]["nComplete"] = 1
	tLuckyTree_Cont["Task"]["Task"][1]["CompleteFlagOpt"] = "=="
	tLuckyTree_Cont["Task"]["Task"][1]["Data6"] = 1
	tLuckyTree_Cont["Task"]["Task"][1]["Data6Opt"] = "=="
	tLuckyTree_Cont["Task"]["Task"][1]["NpcId"] = 22050
	-- 完成一次日常-替天行道镇魂珠
	tLuckyTree_Cont["Task"]["Task"][2] = {}
	tLuckyTree_Cont["Task"]["Task"][2]["Index"] = 24
	tLuckyTree_Cont["Task"]["Task"][2]["Id"] = 2375
	tLuckyTree_Cont["Task"]["Task"][2]["nComplete"] = 1
	tLuckyTree_Cont["Task"]["Task"][2]["CompleteFlagOpt"] = ">="
	tLuckyTree_Cont["Task"]["Task"][2]["Data6"] = 0
	tLuckyTree_Cont["Task"]["Task"][2]["Data6Opt"] = 0
	tLuckyTree_Cont["Task"]["Task"][2]["NpcId"] = 22050
	-- 完成一次日常-材料收集
	tLuckyTree_Cont["Task"]["Task"][3] = {}
	tLuckyTree_Cont["Task"]["Task"][3]["Index"] = 25
	tLuckyTree_Cont["Task"]["Task"][3]["Id"] = 6245
	tLuckyTree_Cont["Task"]["Task"][3]["nComplete"] = 1
	tLuckyTree_Cont["Task"]["Task"][3]["CompleteFlagOpt"] = "=="
	tLuckyTree_Cont["Task"]["Task"][3]["Data6"] = 1
	tLuckyTree_Cont["Task"]["Task"][3]["Data6Opt"] = "=="
	tLuckyTree_Cont["Task"]["Task"][3]["NpcId"] = 22050
	-- 完成一次日常-募集物资
	tLuckyTree_Cont["Task"]["Task"][4] = {}
	tLuckyTree_Cont["Task"]["Task"][4]["Index"] = 26
	tLuckyTree_Cont["Task"]["Task"][4]["Id"] = 6366
	tLuckyTree_Cont["Task"]["Task"][4]["nComplete"] = 1
	tLuckyTree_Cont["Task"]["Task"][4]["CompleteFlagOpt"] = "=="
	tLuckyTree_Cont["Task"]["Task"][4]["Data6"] = 1
	tLuckyTree_Cont["Task"]["Task"][4]["Data6Opt"] = "=="
	tLuckyTree_Cont["Task"]["Task"][4]["NpcId"] = 22050
	-- 日常+国境类(用stc记录的)
	tLuckyTree_Cont["Task"]["Stc"] = {}
	-- 完成一次日常-幽兰花开
	tLuckyTree_Cont["Task"]["Stc"][1] = {}
	tLuckyTree_Cont["Task"]["Stc"][1]["Index"] = 23
	tLuckyTree_Cont["Task"]["Stc"][1]["EventType"] = 106
	tLuckyTree_Cont["Task"]["Stc"][1]["DataType"] = 99
	tLuckyTree_Cont["Task"]["Stc"][1]["nComplete"] = 20
	tLuckyTree_Cont["Task"]["Stc"][1]["CompleteFlagOpt"] = "=="
	tLuckyTree_Cont["Task"]["Stc"][1]["NpcId"] = 22050
	-- 完成一次日常-琅嬛福地
	tLuckyTree_Cont["Task"]["Stc"][2] = {}
	tLuckyTree_Cont["Task"]["Stc"][2]["Index"] = 27
	tLuckyTree_Cont["Task"]["Stc"][2]["EventType"] = 117
	tLuckyTree_Cont["Task"]["Stc"][2]["DataType"] = 91
	tLuckyTree_Cont["Task"]["Stc"][2]["nComplete"] = 1
	tLuckyTree_Cont["Task"]["Stc"][2]["CompleteFlagOpt"] = ">="
	tLuckyTree_Cont["Task"]["Stc"][2]["NpcId"] = 22050
	-- 完成一次国境-筑防设障
	tLuckyTree_Cont["Task"]["Stc"][3] = {}
	tLuckyTree_Cont["Task"]["Stc"][3]["Index"] = 28
	tLuckyTree_Cont["Task"]["Stc"][3]["EventType"] = 139
	tLuckyTree_Cont["Task"]["Stc"][3]["DataType"] = 1
	tLuckyTree_Cont["Task"]["Stc"][3]["nComplete"] = 10
	tLuckyTree_Cont["Task"]["Stc"][3]["CompleteFlagOpt"] = "=="
	tLuckyTree_Cont["Task"]["Stc"][3]["NpcId"] = 17400
	
	-- 任务完成与已领取幸运果对应的2进制位配置
	-- 使用掩码10和12记录
	tLuckyTree_Cont["Task"][1] = 1
	tLuckyTree_Cont["Task"][2] = 2
	tLuckyTree_Cont["Task"][3] = 4
	tLuckyTree_Cont["Task"][4] = 8
	tLuckyTree_Cont["Task"][5] = 16
	tLuckyTree_Cont["Task"][6] = 32
	tLuckyTree_Cont["Task"][7] = 64
	tLuckyTree_Cont["Task"][8] = 128
	tLuckyTree_Cont["Task"][9] = 256
	tLuckyTree_Cont["Task"][10] = 512
	tLuckyTree_Cont["Task"][11] = 1024
	tLuckyTree_Cont["Task"][12] = 2048
	tLuckyTree_Cont["Task"][13] = 4096
	tLuckyTree_Cont["Task"][14] = 2^13
	tLuckyTree_Cont["Task"][15] = 2^14
	tLuckyTree_Cont["Task"][16] = 2^15
	tLuckyTree_Cont["Task"][17] = 2^16
	-- 使用掩码11和13记录
	tLuckyTree_Cont["Task"][18] = 1
	tLuckyTree_Cont["Task"][19] = 2
	tLuckyTree_Cont["Task"][20] = 4
	tLuckyTree_Cont["Task"][21] = 8
	tLuckyTree_Cont["Task"][22] = 16
	tLuckyTree_Cont["Task"][23] = 32
	tLuckyTree_Cont["Task"][24] = 64
	tLuckyTree_Cont["Task"][25] = 128
	tLuckyTree_Cont["Task"][26] = 256
	tLuckyTree_Cont["Task"][27] = 512
	tLuckyTree_Cont["Task"][28] = 1024

-- Log
local tLuckyTree_Log = {}
	tLuckyTree_Log["Delete"] = "0,0,%d,1,12001015,0,0,0"
	tLuckyTree_Log["Emoney"] = "250	4061	5	5	1	"

-- 掩码表
local tLuckyTree_Stc = {}
	-- 上线给礼包
	tLuckyTree_Stc["Pack"] = {}
	tLuckyTree_Stc["Pack"]["EventType"] = 181
	tLuckyTree_Stc["Pack"]["DataType"] = 51
	
	tLuckyTree_Stc["Total"] = 22
	-- 每日已完成任务的次数
	tLuckyTree_Stc[1] = {}
	tLuckyTree_Stc[1]["EventType"] = 174
	tLuckyTree_Stc[1]["DataType"] = 49
	tLuckyTree_Stc[1]["Limit"] = 15
	-- 每日已领取幸运果的次数
	tLuckyTree_Stc[2] = {}
	tLuckyTree_Stc[2]["EventType"] = 174
	tLuckyTree_Stc[2]["DataType"] = 50
	tLuckyTree_Stc[2]["Limit"] = 15
	-- 记录每日第几轮任务
	tLuckyTree_Stc[3] = {}
	tLuckyTree_Stc[3]["EventType"] = 174
	tLuckyTree_Stc[3]["DataType"] = 51
	tLuckyTree_Stc[3]["Limit"] = 3
	-- 记录任务一
	tLuckyTree_Stc[4] = {}
	tLuckyTree_Stc[4]["EventType"] = 174
	tLuckyTree_Stc[4]["DataType"] = 52
	-- 记录任务二
	tLuckyTree_Stc[5] = {}
	tLuckyTree_Stc[5]["EventType"] = 174
	tLuckyTree_Stc[5]["DataType"] = 53
	-- 记录任务三
	tLuckyTree_Stc[6] = {}
	tLuckyTree_Stc[6]["EventType"] = 174
	tLuckyTree_Stc[6]["DataType"] = 54
	-- 记录任务四
	tLuckyTree_Stc[7] = {}
	tLuckyTree_Stc[7]["EventType"] = 174
	tLuckyTree_Stc[7]["DataType"] = 55
	-- 记录任务五
	tLuckyTree_Stc[8] = {}
	tLuckyTree_Stc[8]["EventType"] = 174
	tLuckyTree_Stc[8]["DataType"] = 56
	-- 记录每一轮任务完成情况
	tLuckyTree_Stc[9] = {}
	tLuckyTree_Stc[9]["EventType"] = 174
	tLuckyTree_Stc[9]["DataType"] = 57
	-- 记录每日已完成的所有任务（1）
	tLuckyTree_Stc[10] = {}
	tLuckyTree_Stc[10]["EventType"] = 174
	tLuckyTree_Stc[10]["DataType"] = 58
	-- 记录每日已完成的所有任务（2）
	tLuckyTree_Stc[11] = {}
	tLuckyTree_Stc[11]["EventType"] = 174
	tLuckyTree_Stc[11]["DataType"] = 59
	-- 记录每日已完成的所有任务奖励是否被领取（1）
	tLuckyTree_Stc[12] = {}
	tLuckyTree_Stc[12]["EventType"] = 174
	tLuckyTree_Stc[12]["DataType"] = 60
	-- 记录每日已完成的所有任务奖励是否被领取（2）
	tLuckyTree_Stc[13] = {}
	tLuckyTree_Stc[13]["EventType"] = 174
	tLuckyTree_Stc[13]["DataType"] = 61
	-- 记录杀怪任务一的杀怪数
	tLuckyTree_Stc[14] = {}
	tLuckyTree_Stc[14]["EventType"] = 174
	tLuckyTree_Stc[14]["DataType"] = 62
	-- 记录杀怪任务二的杀怪数
	tLuckyTree_Stc[15] = {}
	tLuckyTree_Stc[15]["EventType"] = 174
	tLuckyTree_Stc[15]["DataType"] = 63
	-- 记录杀怪任务三的杀怪数
	tLuckyTree_Stc[16] = {}
	tLuckyTree_Stc[16]["EventType"] = 174
	tLuckyTree_Stc[16]["DataType"] = 64
	-- 记录杀怪任务四的杀怪数
	tLuckyTree_Stc[17] = {}
	tLuckyTree_Stc[17]["EventType"] = 174
	tLuckyTree_Stc[17]["DataType"] = 65
	-- 记录杀怪任务五的杀怪数
	tLuckyTree_Stc[18] = {}
	tLuckyTree_Stc[18]["EventType"] = 174
	tLuckyTree_Stc[18]["DataType"] = 66
	
	-- 记录今日投资的产业(用NpcId记录)
	tLuckyTree_Stc[19] = {}
	tLuckyTree_Stc[19]["EventType"] = 174
	tLuckyTree_Stc[19]["DataType"] = 67
	-- 今日已投资幸运币数量
	tLuckyTree_Stc[20] = {}
	tLuckyTree_Stc[20]["EventType"] = 174
	tLuckyTree_Stc[20]["DataType"] = 68
	-- 今日已获得投资返利的次数
	tLuckyTree_Stc[21] = {}
	tLuckyTree_Stc[21]["EventType"] = 174
	tLuckyTree_Stc[21]["DataType"] = 69
	tLuckyTree_Stc[21]["Limit"] = 10
	-- 今日是否已领取小股东分红
	tLuckyTree_Stc[22] = {}
	tLuckyTree_Stc[22]["EventType"] = 174
	tLuckyTree_Stc[22]["DataType"] = 70
	
-- 奖励表
local tLuckyTree_Reward = {}
	-- 幸运果奖励表
	tLuckyTree_Reward[3307582] = {}
	-- 未二转
	tLuckyTree_Reward[3307582][1] = {}
	tLuckyTree_Reward[3307582][1]["ItemChanceSum"] = 10000
	-- 幸运币（赠）*3
	tLuckyTree_Reward[3307582][1][1] = {} 
	tLuckyTree_Reward[3307582][1][1]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307582][1][1]["ItemChance"] = 3000
	tLuckyTree_Reward[3307582][1][1]["RewardItem"] = {}
	tLuckyTree_Reward[3307582][1][1]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307582][1][1]["RewardItem"][1]["Id"] = 3307583
	tLuckyTree_Reward[3307582][1][1]["RewardItem"][1]["Attr"] = "0 3 3"
	tLuckyTree_Reward[3307582][1][1]["Log"] = "0,0,3307582,1,12001015,2[1],3307583,3"
	-- 幸运币（赠）*5
	tLuckyTree_Reward[3307582][1][2] = {} 
	tLuckyTree_Reward[3307582][1][2]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307582][1][2]["ItemChance"] = 2500
	tLuckyTree_Reward[3307582][1][2]["RewardItem"] = {}
	tLuckyTree_Reward[3307582][1][2]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307582][1][2]["RewardItem"][1]["Id"] = 3307583
	tLuckyTree_Reward[3307582][1][2]["RewardItem"][1]["Attr"] = "0 5 3"
	tLuckyTree_Reward[3307582][1][2]["Log"] = "0,0,3307582,1,12001015,2[1],3307583,5"
	-- 幸运币（赠）*6
	tLuckyTree_Reward[3307582][1][3] = {} 
	tLuckyTree_Reward[3307582][1][3]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307582][1][3]["ItemChance"] = 2000
	tLuckyTree_Reward[3307582][1][3]["RewardItem"] = {}
	tLuckyTree_Reward[3307582][1][3]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307582][1][3]["RewardItem"][1]["Id"] = 3307583
	tLuckyTree_Reward[3307582][1][3]["RewardItem"][1]["Attr"] = "0 6 3"
	tLuckyTree_Reward[3307582][1][3]["Log"] = "0,0,3307582,1,12001015,2[1],3307583,6"
	-- 幸运币（赠）*8
	tLuckyTree_Reward[3307582][1][4] = {} 
	tLuckyTree_Reward[3307582][1][4]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307582][1][4]["ItemChance"] = 1500
	tLuckyTree_Reward[3307582][1][4]["RewardItem"] = {}
	tLuckyTree_Reward[3307582][1][4]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307582][1][4]["RewardItem"][1]["Id"] = 3307583
	tLuckyTree_Reward[3307582][1][4]["RewardItem"][1]["Attr"] = "0 8 3"
	tLuckyTree_Reward[3307582][1][4]["Log"] = "0,0,3307582,1,12001015,2[1],3307583,8"
	-- 幸运币（赠）*10
	tLuckyTree_Reward[3307582][1][5] = {} 
	tLuckyTree_Reward[3307582][1][5]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307582][1][5]["ItemChance"] = 1000
	tLuckyTree_Reward[3307582][1][5]["RewardItem"] = {}
	tLuckyTree_Reward[3307582][1][5]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307582][1][5]["RewardItem"][1]["Id"] = 3307583
	tLuckyTree_Reward[3307582][1][5]["RewardItem"][1]["Attr"] = "0 10 3"
	tLuckyTree_Reward[3307582][1][5]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307582][1]		-- 全服公告
	tLuckyTree_Reward[3307582][1][5]["RewardBroadCastType"] = 2007
	tLuckyTree_Reward[3307582][1][5]["Log"] = "0,0,3307582,1,12001015,2[1],3307583,10"
	-- 已经二转
	tLuckyTree_Reward[3307582][2] = {}
	tLuckyTree_Reward[3307582][2]["ItemChanceSum"] = 10000
	-- 幸运币（赠）*3
	tLuckyTree_Reward[3307582][2][1] = {} 
	tLuckyTree_Reward[3307582][2][1]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307582][2][1]["ItemChance"] = 2000
	tLuckyTree_Reward[3307582][2][1]["RewardItem"] = {}
	tLuckyTree_Reward[3307582][2][1]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307582][2][1]["RewardItem"][1]["Id"] = 3307583
	tLuckyTree_Reward[3307582][2][1]["RewardItem"][1]["Attr"] = "0 3 3"
	tLuckyTree_Reward[3307582][2][1]["Log"] = "0,0,3307582,1,12001015,2[1],3307583,3"
	-- 幸运币（赠）*6
	tLuckyTree_Reward[3307582][2][2] = {} 
	tLuckyTree_Reward[3307582][2][2]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307582][2][2]["ItemChance"] = 1500
	tLuckyTree_Reward[3307582][2][2]["RewardItem"] = {}
	tLuckyTree_Reward[3307582][2][2]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307582][2][2]["RewardItem"][1]["Id"] = 3307583
	tLuckyTree_Reward[3307582][2][2]["RewardItem"][1]["Attr"] = "0 6 3"
	tLuckyTree_Reward[3307582][2][2]["Log"] = "0,0,3307582,1,12001015,2[1],3307583,6"
	-- 幸运币（赠）*8
	tLuckyTree_Reward[3307582][2][3] = {} 
	tLuckyTree_Reward[3307582][2][3]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307582][2][3]["ItemChance"] = 800
	tLuckyTree_Reward[3307582][2][3]["RewardItem"] = {}
	tLuckyTree_Reward[3307582][2][3]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307582][2][3]["RewardItem"][1]["Id"] = 3307583
	tLuckyTree_Reward[3307582][2][3]["RewardItem"][1]["Attr"] = "0 8 3"
	tLuckyTree_Reward[3307582][2][3]["Log"] = "0,0,3307582,1,12001015,2[1],3307583,8"
	-- 幸运币（赠）*10
	tLuckyTree_Reward[3307582][2][4] = {} 
	tLuckyTree_Reward[3307582][2][4]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307582][2][4]["ItemChance"] = 500
	tLuckyTree_Reward[3307582][2][4]["RewardItem"] = {}
	tLuckyTree_Reward[3307582][2][4]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307582][2][4]["RewardItem"][1]["Id"] = 3307583
	tLuckyTree_Reward[3307582][2][4]["RewardItem"][1]["Attr"] = "0 10 3"
	tLuckyTree_Reward[3307582][2][4]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307582][1]		-- 全服公告
	tLuckyTree_Reward[3307582][2][4]["RewardBroadCastType"] = 2007
	tLuckyTree_Reward[3307582][2][4]["Log"] = "0,0,3307582,1,12001015,2[1],3307583,10"
	-- 幸运币*3
	tLuckyTree_Reward[3307582][2][5] = {} 
	tLuckyTree_Reward[3307582][2][5]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307582][2][5]["ItemChance"] = 3000
	tLuckyTree_Reward[3307582][2][5]["RewardItem"] = {}
	tLuckyTree_Reward[3307582][2][5]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307582][2][5]["RewardItem"][1]["Id"] = 3307583
	tLuckyTree_Reward[3307582][2][5]["RewardItem"][1]["Attr"] = "0 3"
	tLuckyTree_Reward[3307582][2][5]["Log"] = "0,0,3307582,1,12001015,2[2],3307583,3"
	-- 幸运币*6
	tLuckyTree_Reward[3307582][2][6] = {} 
	tLuckyTree_Reward[3307582][2][6]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307582][2][6]["ItemChance"] = 1400
	tLuckyTree_Reward[3307582][2][6]["RewardItem"] = {}
	tLuckyTree_Reward[3307582][2][6]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307582][2][6]["RewardItem"][1]["Id"] = 3307583
	tLuckyTree_Reward[3307582][2][6]["RewardItem"][1]["Attr"] = "0 6"
	tLuckyTree_Reward[3307582][2][6]["Log"] = "0,0,3307582,1,12001015,2[2],3307583,6"
	-- 幸运币*10
	tLuckyTree_Reward[3307582][2][7] = {} 
	tLuckyTree_Reward[3307582][2][7]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307582][2][7]["ItemChance"] = 800
	tLuckyTree_Reward[3307582][2][7]["RewardItem"] = {}
	tLuckyTree_Reward[3307582][2][7]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307582][2][7]["RewardItem"][1]["Id"] = 3307583
	tLuckyTree_Reward[3307582][2][7]["RewardItem"][1]["Attr"] = "0 10"
	tLuckyTree_Reward[3307582][2][7]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307582][2]		-- 全服公告
	tLuckyTree_Reward[3307582][2][7]["RewardBroadCastType"] = 2005
	tLuckyTree_Reward[3307582][2][7]["Log"] = "0,0,3307582,1,12001015,2[2],3307583,10"
	
	-- 1500气力值精装包
	tLuckyTree_Reward[3307584] = {}
	tLuckyTree_Reward[3307584]["DeleteItem"] = {}
	tLuckyTree_Reward[3307584]["DeleteItem"][1] = {}
	tLuckyTree_Reward[3307584]["DeleteItem"][1]["Id"] =3307584
	tLuckyTree_Reward[3307584]["RewardStrengthValue"] = {}    
	tLuckyTree_Reward[3307584]["RewardStrengthValue"]["Value"] = 1500
	tLuckyTree_Reward[3307584]["LogId"] = 12001015
	
	-- 领取幸运果
	tLuckyTree_Reward["GetLuckFruit"] = {}
	tLuckyTree_Reward["GetLuckFruit"]["RewardItem"] = {}
	tLuckyTree_Reward["GetLuckFruit"]["RewardItem"][1] = {}
	tLuckyTree_Reward["GetLuckFruit"]["RewardItem"][1]["Id"] = 3307582
	tLuckyTree_Reward["GetLuckFruit"]["RewardItem"][1]["Attr"] = "0 %d"
	tLuckyTree_Reward["GetLuckFruit"]["RewardEffect"] = {}
	tLuckyTree_Reward["GetLuckFruit"]["RewardEffect"]["Effect"] = "zf2-e129"
	tLuckyTree_Reward["GetLuckFruit"]["Talk"] = tLuckyTree_Text[2005]["GetLuckFruit"]
	tLuckyTree_Reward["GetLuckFruit"]["LogId"] = 12001015
	
	-- 投资返利
	-- 淘气鱼塘
	tLuckyTree_Reward[3307906] = {}
	tLuckyTree_Reward[3307906]["ItemChanceSum"] = 10000  
	-- 100点气力值
	tLuckyTree_Reward[3307906][1] = {} 
	tLuckyTree_Reward[3307906][1]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307906][1]["ItemChance"] = 2800
	tLuckyTree_Reward[3307906][1]["RewardStrengthValue"] = {}    
	tLuckyTree_Reward[3307906][1]["RewardStrengthValue"]["Value"] = 100
	-- tLuckyTree_Reward[3307906][1]["Talk"] = tLuckyTree_Text[3307906]["Talk"][1]
	tLuckyTree_Reward[3307906][1]["Log"] = "0,0,3307583,1,12001015,2[1],12,100"
	-- 50点气力值
	tLuckyTree_Reward[3307906][2] = {} 
	tLuckyTree_Reward[3307906][2]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307906][2]["ItemChance"] = 3800
	tLuckyTree_Reward[3307906][2]["RewardStrengthValue"] = {}    
	tLuckyTree_Reward[3307906][2]["RewardStrengthValue"]["Value"] = 50
	-- tLuckyTree_Reward[3307906][2]["Talk"] = tLuckyTree_Text[3307906]["Talk"][2]
	tLuckyTree_Reward[3307906][2]["Log"] = "0,0,3307583,1,12001015,2[1],12,50"
	-- 200点气力值
	tLuckyTree_Reward[3307906][3] = {} 
	tLuckyTree_Reward[3307906][3]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307906][3]["ItemChance"] = 2000
	tLuckyTree_Reward[3307906][3]["RewardStrengthValue"] = {}    
	tLuckyTree_Reward[3307906][3]["RewardStrengthValue"]["Value"] = 200
	-- tLuckyTree_Reward[3307906][3]["Talk"] = tLuckyTree_Text[3307906]["Talk"][3]
	tLuckyTree_Reward[3307906][3]["Log"] = "0,0,3307583,1,12001015,2[1],12,200"
	-- 500气力值
	tLuckyTree_Reward[3307906][4] = {} 
	tLuckyTree_Reward[3307906][4]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307906][4]["ItemChance"] = 500
	tLuckyTree_Reward[3307906][4]["RewardStrengthValue"] = {}    
	tLuckyTree_Reward[3307906][4]["RewardStrengthValue"]["Value"] = 500
	tLuckyTree_Reward[3307906][4]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307906][1]		-- 全服公告
	tLuckyTree_Reward[3307906][4]["RewardBroadCastType"] = 2007
	-- tLuckyTree_Reward[3307906][4]["Talk"] = tLuckyTree_Text[3307906]["Talk"][4]
	tLuckyTree_Reward[3307906][4]["Log"] = "0,0,3307583,1,12001015,2[1],12,500"
	-- 赤炼石+5
	tLuckyTree_Reward[3307906][5] = {} 
	tLuckyTree_Reward[3307906][5]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307906][5]["ItemChance"] = 100
	tLuckyTree_Reward[3307906][5]["RewardItem"] = {}
	tLuckyTree_Reward[3307906][5]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307906][5]["RewardItem"][1]["Id"] = 730005
	tLuckyTree_Reward[3307906][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tLuckyTree_Reward[3307906][5]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307906][2]		-- 全服公告
	tLuckyTree_Reward[3307906][5]["RewardBroadCastType"] = 2007
	-- tLuckyTree_Reward[3307906][5]["Talk"] = tLuckyTree_Text[3307906]["Talk"][5]
	tLuckyTree_Reward[3307906][5]["Log"] = "0,0,3307583,1,12001015,2[1],730005,1"
	-- 岫山玉碎片
	tLuckyTree_Reward[3307906][6] = {} 
	tLuckyTree_Reward[3307906][6]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307906][6]["ItemChance"] = 800
	tLuckyTree_Reward[3307906][6]["RewardItem"] = {}
	tLuckyTree_Reward[3307906][6]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307906][6]["RewardItem"][1]["Id"] = 3008222
	tLuckyTree_Reward[3307906][6]["RewardItem"][1]["Attr"] = "0 2"
	-- tLuckyTree_Reward[3307906][6]["Talk"] = tLuckyTree_Text[3307906]["Talk"][6]
	tLuckyTree_Reward[3307906][6]["Log"] = "0,0,3307583,1,12001015,2[1],3008222,2"
	
	-- 摇星果林
	tLuckyTree_Reward[3307907] = {}
	tLuckyTree_Reward[3307907]["ItemChanceSum"] = 10000  
	-- 微光星陨石
	tLuckyTree_Reward[3307907][1] = {} 
	tLuckyTree_Reward[3307907][1]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307907][1]["ItemChance"] = 3000
	tLuckyTree_Reward[3307907][1]["RewardItem"] = {}
	tLuckyTree_Reward[3307907][1]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307907][1]["RewardItem"][1]["Id"] = 3009000
	tLuckyTree_Reward[3307907][1]["RewardItem"][1]["Attr"] = "0 2"
	-- tLuckyTree_Reward[3307907][1]["Talk"] = tLuckyTree_Text[3307907]["Talk"][1]
	tLuckyTree_Reward[3307907][1]["Log"] = "0,0,3307583,1,12001015,2[2],3009000,2"
	-- 微光星陨石
	tLuckyTree_Reward[3307907][2] = {} 
	tLuckyTree_Reward[3307907][2]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307907][2]["ItemChance"] = 2300
	tLuckyTree_Reward[3307907][2]["RewardItem"] = {}
	tLuckyTree_Reward[3307907][2]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307907][2]["RewardItem"][1]["Id"] = 3009000
	tLuckyTree_Reward[3307907][2]["RewardItem"][1]["Attr"] = "0 3"
	-- tLuckyTree_Reward[3307907][2]["Talk"] = tLuckyTree_Text[3307907]["Talk"][2]
	tLuckyTree_Reward[3307907][2]["Log"] = "0,0,3307583,1,12001015,2[2],3009000,3"
	-- 明星星陨石
	tLuckyTree_Reward[3307907][3] = {} 
	tLuckyTree_Reward[3307907][3]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307907][3]["ItemChance"] = 1800
	tLuckyTree_Reward[3307907][3]["RewardItem"] = {}
	tLuckyTree_Reward[3307907][3]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307907][3]["RewardItem"][1]["Id"] = 3009001
	tLuckyTree_Reward[3307907][3]["RewardItem"][1]["Attr"] = "0 1"
	-- tLuckyTree_Reward[3307907][3]["Talk"] = tLuckyTree_Text[3307907]["Talk"][3]
	tLuckyTree_Reward[3307907][3]["Log"] = "0,0,3307583,1,12001015,2[2],3009001,1"
	-- 明亮星陨石
	tLuckyTree_Reward[3307907][4] = {} 
	tLuckyTree_Reward[3307907][4]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307907][4]["ItemChance"] = 1500
	tLuckyTree_Reward[3307907][4]["RewardItem"] = {}
	tLuckyTree_Reward[3307907][4]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307907][4]["RewardItem"][1]["Id"] = 3009001
	tLuckyTree_Reward[3307907][4]["RewardItem"][1]["Attr"] = "0 2"
	-- tLuckyTree_Reward[3307907][4]["Talk"] = tLuckyTree_Text[3307907]["Talk"][4]
	tLuckyTree_Reward[3307907][4]["Log"] = "0,0,3307583,1,12001015,2[2],3009001,2"
	-- 明亮星陨石
	tLuckyTree_Reward[3307907][5] = {} 
	tLuckyTree_Reward[3307907][5]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307907][5]["ItemChance"] = 500
	tLuckyTree_Reward[3307907][5]["RewardItem"] = {}
	tLuckyTree_Reward[3307907][5]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307907][5]["RewardItem"][1]["Id"] = 3009001
	tLuckyTree_Reward[3307907][5]["RewardItem"][1]["Attr"] = "0 5"
	tLuckyTree_Reward[3307907][5]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307907][1]		-- 全服公告
	tLuckyTree_Reward[3307907][5]["RewardBroadCastType"] = 2007
	-- tLuckyTree_Reward[3307907][5]["Talk"] = tLuckyTree_Text[3307907]["Talk"][5]
	tLuckyTree_Reward[3307907][5]["Log"] = "0,0,3307583,1,12001015,2[2],3009001,5"
	-- 岫山玉碎片
	tLuckyTree_Reward[3307907][6] = {} 
	tLuckyTree_Reward[3307907][6]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307907][6]["ItemChance"] = 800
	tLuckyTree_Reward[3307907][6]["RewardItem"] = {}
	tLuckyTree_Reward[3307907][6]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307907][6]["RewardItem"][1]["Id"] = 3008222
	tLuckyTree_Reward[3307907][6]["RewardItem"][1]["Attr"] = "0 2"
	-- tLuckyTree_Reward[3307907][6]["Talk"] = tLuckyTree_Text[3307907]["Talk"][6]
	tLuckyTree_Reward[3307907][6]["Log"] = "0,0,3307583,1,12001015,2[2],3008222,2"
	-- 赤炼石+5
	tLuckyTree_Reward[3307907][7] = {} 
	tLuckyTree_Reward[3307907][7]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307907][7]["ItemChance"] = 100
	tLuckyTree_Reward[3307907][7]["RewardItem"] = {}
	tLuckyTree_Reward[3307907][7]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307907][7]["RewardItem"][1]["Id"] = 730005
	tLuckyTree_Reward[3307907][7]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tLuckyTree_Reward[3307907][7]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307907][2]		-- 全服公告
	tLuckyTree_Reward[3307907][7]["RewardBroadCastType"] = 2007
	-- tLuckyTree_Reward[3307907][7]["Talk"] = tLuckyTree_Text[3307907]["Talk"][7]
	tLuckyTree_Reward[3307907][7]["Log"] = "0,0,3307583,1,12001015,2[2],730005,1"
	
	-- 聚宝农田
	tLuckyTree_Reward[3307908] = {}
	tLuckyTree_Reward[3307908]["ItemChanceSum"] = 10000  
	-- 究极通神丹
	tLuckyTree_Reward[3307908][1] = {} 
	tLuckyTree_Reward[3307908][1]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307908][1]["ItemChance"] = 2500
	tLuckyTree_Reward[3307908][1]["RewardItem"] = {}
	tLuckyTree_Reward[3307908][1]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307908][1]["RewardItem"][1]["Id"] = 3003126
	tLuckyTree_Reward[3307908][1]["RewardItem"][1]["Attr"] = "0 2 3"
	-- tLuckyTree_Reward[3307908][1]["Talk"] = tLuckyTree_Text[3307908]["Talk"][1]
	tLuckyTree_Reward[3307908][1]["Log"] = "0,0,3307583,1,12001015,2[3],3003126,2"
	-- 强效护心丹
	tLuckyTree_Reward[3307908][2] = {} 
	tLuckyTree_Reward[3307908][2]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307908][2]["ItemChance"] = 3500
	tLuckyTree_Reward[3307908][2]["RewardItem"] = {}
	tLuckyTree_Reward[3307908][2]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307908][2]["RewardItem"][1]["Id"] = 3002030
	tLuckyTree_Reward[3307908][2]["RewardItem"][1]["Attr"] = "0 3"
	-- tLuckyTree_Reward[3307908][2]["Talk"] = tLuckyTree_Text[3307908]["Talk"][2]
	tLuckyTree_Reward[3307908][2]["Log"] = "0,0,3307583,1,12001015,2[3],3002030,3"
	-- 秘制免费修炼丹
	tLuckyTree_Reward[3307908][3] = {} 
	tLuckyTree_Reward[3307908][3]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307908][3]["ItemChance"] = 1000
	tLuckyTree_Reward[3307908][3]["RewardItem"] = {}
	tLuckyTree_Reward[3307908][3]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307908][3]["RewardItem"][1]["Id"] = 3002926
	tLuckyTree_Reward[3307908][3]["RewardItem"][1]["Attr"] = "0 2"
	tLuckyTree_Reward[3307908][3]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307908][1]		-- 全服公告
	tLuckyTree_Reward[3307908][3]["RewardBroadCastType"] = 2007
	-- tLuckyTree_Reward[3307908][3]["Talk"] = tLuckyTree_Text[3307908]["Talk"][3]
	tLuckyTree_Reward[3307908][3]["Log"] = "0,0,3307583,1,12001015,2[3],3002926,2"
	-- 岫山玉碎片*5
	tLuckyTree_Reward[3307908][4] = {} 
	tLuckyTree_Reward[3307908][4]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307908][4]["ItemChance"] = 600
	tLuckyTree_Reward[3307908][4]["RewardItem"] = {}
	tLuckyTree_Reward[3307908][4]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307908][4]["RewardItem"][1]["Id"] = 3008222
	tLuckyTree_Reward[3307908][4]["RewardItem"][1]["Attr"] = "0 5"
	tLuckyTree_Reward[3307908][4]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307908][2]		-- 全服公告
	tLuckyTree_Reward[3307908][4]["RewardBroadCastType"] = 2007
	-- tLuckyTree_Reward[3307908][4]["Talk"] = tLuckyTree_Text[3307908]["Talk"][4]
	tLuckyTree_Reward[3307908][4]["Log"] = "0,0,3307583,1,12001015,2[3],3008222,5"
	-- 免费强练丹
	tLuckyTree_Reward[3307908][5] = {} 
	tLuckyTree_Reward[3307908][5]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307908][5]["ItemChance"] = 2000
	tLuckyTree_Reward[3307908][5]["RewardItem"] = {}
	tLuckyTree_Reward[3307908][5]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307908][5]["RewardItem"][1]["Id"] = 3003124
	tLuckyTree_Reward[3307908][5]["RewardItem"][1]["Attr"] = "0 5 3"
	-- tLuckyTree_Reward[3307908][5]["Talk"] = tLuckyTree_Text[3307908]["Talk"][5]
	tLuckyTree_Reward[3307908][5]["Log"] = "0,0,3307583,1,12001015,2[3],3003124,5"
	-- 2千点骑宠积分大礼包
	tLuckyTree_Reward[3307908][6] = {} 
	tLuckyTree_Reward[3307908][6]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307908][6]["ItemChance"] = 400
	tLuckyTree_Reward[3307908][6]["RewardItem"] = {}
	tLuckyTree_Reward[3307908][6]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307908][6]["RewardItem"][1]["Id"] = 720901
	tLuckyTree_Reward[3307908][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tLuckyTree_Reward[3307908][6]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307908][3]		-- 全服公告
	tLuckyTree_Reward[3307908][6]["RewardBroadCastType"] = 2007
	-- tLuckyTree_Reward[3307908][6]["Talk"] = tLuckyTree_Text[3307908]["Talk"][6]
	tLuckyTree_Reward[3307908][6]["Log"] = "0,0,3307583,1,12001015,2[3],720901,1"
	
	-- 鱼塘大股东分红礼包
	tLuckyTree_Reward[3307666] = {}
	tLuckyTree_Reward[3307666]["ItemChanceSum"] = 10000  
	-- 必给奖励部分       
	tLuckyTree_Reward[3307666][1] = {}
	tLuckyTree_Reward[3307666][1]["RandomItemChanceType"] = 1
	-- 2000气力值包
	tLuckyTree_Reward[3307666][1]["RewardItem"] = {}
	tLuckyTree_Reward[3307666][1]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307666][1]["RewardItem"][1]["Id"] = 3008196
	tLuckyTree_Reward[3307666][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 100点气力值礼包
	tLuckyTree_Reward[3307666][2] = {} 
	tLuckyTree_Reward[3307666][2]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307666][2]["ItemChance"] = 4000
	tLuckyTree_Reward[3307666][2]["RewardItem"] = {}
	tLuckyTree_Reward[3307666][2]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307666][2]["RewardItem"][1]["Id"] = 3002027
	tLuckyTree_Reward[3307666][2]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward[3307666][2]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307666][1]		-- 全服公告
	tLuckyTree_Reward[3307666][2]["Log"] = "0,0,3307666,1,12001015,2,3002027[3008196],1[1]"
	-- 200点气力值包 
	tLuckyTree_Reward[3307666][3] = {} 
	tLuckyTree_Reward[3307666][3]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307666][3]["ItemChance"] = 3500
	tLuckyTree_Reward[3307666][3]["RewardItem"] = {}
	tLuckyTree_Reward[3307666][3]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307666][3]["RewardItem"][1]["Id"] = 3008188
	tLuckyTree_Reward[3307666][3]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward[3307666][3]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307666][2]		-- 全服公告
	tLuckyTree_Reward[3307666][3]["Log"] = "0,0,3307666,1,12001015,2,3008188[3008196],1[1]"
	-- 500气力值包
	tLuckyTree_Reward[3307666][4] = {} 
	tLuckyTree_Reward[3307666][4]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307666][4]["ItemChance"] = 2000
	tLuckyTree_Reward[3307666][4]["RewardItem"] = {}
	tLuckyTree_Reward[3307666][4]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307666][4]["RewardItem"][1]["Id"] = 3008190
	tLuckyTree_Reward[3307666][4]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward[3307666][4]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307666][3]		-- 全服公告
	tLuckyTree_Reward[3307666][4]["Log"] = "0,0,3307666,1,12001015,2,3008190[3008196],1[1]"
	-- 1000气力值包
	tLuckyTree_Reward[3307666][5] = {} 
	tLuckyTree_Reward[3307666][5]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307666][5]["ItemChance"] = 500
	tLuckyTree_Reward[3307666][5]["RewardItem"] = {}
	tLuckyTree_Reward[3307666][5]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307666][5]["RewardItem"][1]["Id"] = 3008193
	tLuckyTree_Reward[3307666][5]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward[3307666][5]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307666][4]		-- 全服公告
	tLuckyTree_Reward[3307666][5]["Log"] = "0,0,3307666,1,12001015,2,3008193[3008196],1[1]"
	
	-- 鱼塘二股东分红礼包
	tLuckyTree_Reward[3307667] = {}
	tLuckyTree_Reward[3307667]["ItemChanceSum"] = 10000  
	-- 必给奖励部分       
	tLuckyTree_Reward[3307667][1] = {}
	tLuckyTree_Reward[3307667][1]["RandomItemChanceType"] = 1
	-- 1500气力值包
	tLuckyTree_Reward[3307667][1]["RewardItem"] = {}
	tLuckyTree_Reward[3307667][1]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307667][1]["RewardItem"][1]["Id"] = 3008195
	tLuckyTree_Reward[3307667][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 50点气力值包
	tLuckyTree_Reward[3307667][2] = {} 
	tLuckyTree_Reward[3307667][2]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307667][2]["ItemChance"] = 4000
	tLuckyTree_Reward[3307667][2]["RewardItem"] = {}
	tLuckyTree_Reward[3307667][2]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307667][2]["RewardItem"][1]["Id"] = 3008186
	tLuckyTree_Reward[3307667][2]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward[3307667][2]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307667][1]		-- 全服公告
	tLuckyTree_Reward[3307667][2]["Log"] = "0,0,3307667,1,12001015,2,3008186[3008195],1[1]"
	-- 100点气力值礼包
	tLuckyTree_Reward[3307667][3] = {} 
	tLuckyTree_Reward[3307667][3]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307667][3]["ItemChance"] = 3000
	tLuckyTree_Reward[3307667][3]["RewardItem"] = {}
	tLuckyTree_Reward[3307667][3]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307667][3]["RewardItem"][1]["Id"] = 3002027
	tLuckyTree_Reward[3307667][3]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward[3307667][3]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307667][2]		-- 全服公告
	tLuckyTree_Reward[3307667][3]["Log"] = "0,0,3307667,1,12001015,2,3002027[3008195],1[1]"
	-- 200点气力值包 
	tLuckyTree_Reward[3307667][4] = {} 
	tLuckyTree_Reward[3307667][4]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307667][4]["ItemChance"] = 2000
	tLuckyTree_Reward[3307667][4]["RewardItem"] = {}
	tLuckyTree_Reward[3307667][4]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307667][4]["RewardItem"][1]["Id"] = 3008188
	tLuckyTree_Reward[3307667][4]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward[3307667][4]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307667][3]		-- 全服公告
	tLuckyTree_Reward[3307667][4]["Log"] = "0,0,3307667,1,12001015,2,3008188[3008195],1[1]"
	-- 500气力值包
	tLuckyTree_Reward[3307667][5] = {} 
	tLuckyTree_Reward[3307667][5]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307667][5]["ItemChance"] = 1000
	tLuckyTree_Reward[3307667][5]["RewardItem"] = {}
	tLuckyTree_Reward[3307667][5]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307667][5]["RewardItem"][1]["Id"] = 3008190
	tLuckyTree_Reward[3307667][5]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward[3307667][5]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307667][4]		-- 全服公告
	tLuckyTree_Reward[3307667][5]["Log"] = "0,0,3307667,1,12001015,2,3008190[3008195],1[1]"
	
	-- 鱼塘三股东分红礼包
	tLuckyTree_Reward[3307668] = {}
	tLuckyTree_Reward[3307668]["ItemChanceSum"] = 10000  
	-- 必给奖励部分       
	tLuckyTree_Reward[3307668][1] = {}
	tLuckyTree_Reward[3307668][1]["RandomItemChanceType"] = 1
	-- 1000气力值包
	tLuckyTree_Reward[3307668][1]["RewardItem"] = {}
	tLuckyTree_Reward[3307668][1]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307668][1]["RewardItem"][1]["Id"] = 3008193
	tLuckyTree_Reward[3307668][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 50点气力值包
	tLuckyTree_Reward[3307668][2] = {} 
	tLuckyTree_Reward[3307668][2]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307668][2]["ItemChance"] = 3000
	tLuckyTree_Reward[3307668][2]["RewardItem"] = {}
	tLuckyTree_Reward[3307668][2]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307668][2]["RewardItem"][1]["Id"] = 3008186
	tLuckyTree_Reward[3307668][2]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward[3307668][2]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307668][1]		-- 全服公告
	tLuckyTree_Reward[3307668][2]["Log"] = "0,0,3307668,1,12001015,2,3008186[3008193],1[1]"
	-- 100点气力值礼包
	tLuckyTree_Reward[3307668][3] = {} 
	tLuckyTree_Reward[3307668][3]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307668][3]["ItemChance"] = 2000
	tLuckyTree_Reward[3307668][3]["RewardItem"] = {}
	tLuckyTree_Reward[3307668][3]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307668][3]["RewardItem"][1]["Id"] = 3002027
	tLuckyTree_Reward[3307668][3]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward[3307668][3]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307668][2]		-- 全服公告
	tLuckyTree_Reward[3307668][3]["Log"] = "0,0,3307668,1,12001015,2,3002027[3008193],1[1]"
	-- 200点气力值包 
	tLuckyTree_Reward[3307668][4] = {} 
	tLuckyTree_Reward[3307668][4]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307668][4]["ItemChance"] = 1000
	tLuckyTree_Reward[3307668][4]["RewardItem"] = {}
	tLuckyTree_Reward[3307668][4]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307668][4]["RewardItem"][1]["Id"] = 3008188
	tLuckyTree_Reward[3307668][4]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward[3307668][4]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307668][3]		-- 全服公告
	tLuckyTree_Reward[3307668][4]["Log"] = "0,0,3307668,1,12001015,2,3008188[3008193],1[1]"
	-- 无奖励
	tLuckyTree_Reward[3307668][5] = {} 
	tLuckyTree_Reward[3307668][5]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307668][5]["ItemChance"] = 4000
	tLuckyTree_Reward[3307668][5]["RewardItem"] = {}
	tLuckyTree_Reward[3307668][5]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307668][4]		-- 全服公告
	tLuckyTree_Reward[3307668][5]["Log"] = "0,0,3307668,1,12001015,2,3008193,1"
	
	
	-- 果林大股东分红礼包
	tLuckyTree_Reward[3307669] = {}
	tLuckyTree_Reward[3307669]["ItemChanceSum"] = 10000  
	-- 必给奖励部分       
	tLuckyTree_Reward[3307669][1] = {}
	tLuckyTree_Reward[3307669][1]["RandomItemChanceType"] = 1
	-- 明亮星陨石
	tLuckyTree_Reward[3307669][1]["RewardItem"] = {}
	tLuckyTree_Reward[3307669][1]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307669][1]["RewardItem"][1]["Id"] = 3009001
	tLuckyTree_Reward[3307669][1]["RewardItem"][1]["Attr"] = "0 9"
	-- 明亮星陨石精装包
	tLuckyTree_Reward[3307669][2] = {} 
	tLuckyTree_Reward[3307669][2]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307669][2]["ItemChance"] = 2000
	tLuckyTree_Reward[3307669][2]["RewardItem"] = {}
	tLuckyTree_Reward[3307669][2]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307669][2]["RewardItem"][1]["Id"] = 3200864
	tLuckyTree_Reward[3307669][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tLuckyTree_Reward[3307669][2]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307669][1]		-- 全服公告
	tLuckyTree_Reward[3307669][2]["Log"] = "0,0,3307669,1,12001015,2,3200864[3009001],1[9]"
	-- 明亮星陨石精装包
	tLuckyTree_Reward[3307669][3] = {} 
	tLuckyTree_Reward[3307669][3]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307669][3]["ItemChance"] = 1400
	tLuckyTree_Reward[3307669][3]["RewardItem"] = {}
	tLuckyTree_Reward[3307669][3]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307669][3]["RewardItem"][1]["Id"] = 3200864
	tLuckyTree_Reward[3307669][3]["RewardItem"][1]["Attr"] = "0 2 3"
	tLuckyTree_Reward[3307669][3]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307669][2]		-- 全服公告
	tLuckyTree_Reward[3307669][3]["Log"] = "0,0,3307669,1,12001015,2,3200864[3009001],2[9]"
	-- 微光星陨石
	tLuckyTree_Reward[3307669][4] = {} 
	tLuckyTree_Reward[3307669][4]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307669][4]["ItemChance"] = 3000
	tLuckyTree_Reward[3307669][4]["RewardItem"] = {}
	tLuckyTree_Reward[3307669][4]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307669][4]["RewardItem"][1]["Id"] = 3009000
	tLuckyTree_Reward[3307669][4]["RewardItem"][1]["Attr"] = "0 8"
	tLuckyTree_Reward[3307669][4]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307669][3]		-- 全服公告
	tLuckyTree_Reward[3307669][4]["Log"] = "0,0,3307669,1,12001015,2,3009000[3009001],8[9]"
	-- 晶莹星陨石包
	tLuckyTree_Reward[3307669][5] = {} 
	tLuckyTree_Reward[3307669][5]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307669][5]["ItemChance"] = 100
	tLuckyTree_Reward[3307669][5]["RewardItem"] = {}
	tLuckyTree_Reward[3307669][5]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307669][5]["RewardItem"][1]["Id"] = 3009002
	tLuckyTree_Reward[3307669][5]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward[3307669][5]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307669][4]		-- 全服公告
	tLuckyTree_Reward[3307669][5]["Log"] = "0,0,3307669,1,12001015,2,3009002[3009001],1[9]"
	-- 无奖励
	tLuckyTree_Reward[3307669][6] = {} 
	tLuckyTree_Reward[3307669][6]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307669][6]["ItemChance"] = 3500
	tLuckyTree_Reward[3307669][6]["RewardItem"] = {}
	tLuckyTree_Reward[3307669][6]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307669][5]		-- 全服公告
	tLuckyTree_Reward[3307669][6]["Log"] = "0,0,3307669,1,12001015,2,3009001,9"
	
	-- 果林二股东分红礼包
	tLuckyTree_Reward[3307670] = {}
	tLuckyTree_Reward[3307670]["ItemChanceSum"] = 10000  
	-- 必给奖励部分       
	tLuckyTree_Reward[3307670][1] = {}
	tLuckyTree_Reward[3307670][1]["RandomItemChanceType"] = 1
	-- 明亮星陨石
	tLuckyTree_Reward[3307670][1]["RewardItem"] = {}
	tLuckyTree_Reward[3307670][1]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307670][1]["RewardItem"][1]["Id"] = 3009001
	tLuckyTree_Reward[3307670][1]["RewardItem"][1]["Attr"] = "0 6"
	-- 明亮星陨石精装包
	tLuckyTree_Reward[3307670][2] = {} 
	tLuckyTree_Reward[3307670][2]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307670][2]["ItemChance"] = 1000
	tLuckyTree_Reward[3307670][2]["RewardItem"] = {}
	tLuckyTree_Reward[3307670][2]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307670][2]["RewardItem"][1]["Id"] = 3200864
	tLuckyTree_Reward[3307670][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tLuckyTree_Reward[3307670][2]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307670][1]		-- 全服公告
	tLuckyTree_Reward[3307670][2]["Log"] = "0,0,3307670,1,12001015,2,3200864[3009001],1[6]"
	-- 明亮星陨石精装包
	tLuckyTree_Reward[3307670][3] = {} 
	tLuckyTree_Reward[3307670][3]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307670][3]["ItemChance"] = 500
	tLuckyTree_Reward[3307670][3]["RewardItem"] = {}
	tLuckyTree_Reward[3307670][3]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307670][3]["RewardItem"][1]["Id"] = 3200864
	tLuckyTree_Reward[3307670][3]["RewardItem"][1]["Attr"] = "0 2 3"
	tLuckyTree_Reward[3307670][3]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307670][2]		-- 全服公告
	tLuckyTree_Reward[3307670][3]["Log"] = "0,0,3307670,1,12001015,2,3200864[3009001],1[6]"
	-- 微光星陨石
	tLuckyTree_Reward[3307670][4] = {} 
	tLuckyTree_Reward[3307670][4]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307670][4]["ItemChance"] = 3000
	tLuckyTree_Reward[3307670][4]["RewardItem"] = {}
	tLuckyTree_Reward[3307670][4]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307670][4]["RewardItem"][1]["Id"] = 3009000
	tLuckyTree_Reward[3307670][4]["RewardItem"][1]["Attr"] = "0 5"
	tLuckyTree_Reward[3307670][4]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307670][3]		-- 全服公告
	tLuckyTree_Reward[3307670][4]["Log"] = "0,0,3307670,1,12001015,2,3009000[3009001],5[6]"
	-- 微光星陨石
	tLuckyTree_Reward[3307670][5] = {} 
	tLuckyTree_Reward[3307670][5]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307670][5]["ItemChance"] = 2000
	tLuckyTree_Reward[3307670][5]["RewardItem"] = {}
	tLuckyTree_Reward[3307670][5]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307670][5]["RewardItem"][1]["Id"] = 3009000
	tLuckyTree_Reward[3307670][5]["RewardItem"][1]["Attr"] = "0 8"
	tLuckyTree_Reward[3307670][5]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307670][4]		-- 全服公告
	tLuckyTree_Reward[3307670][5]["Log"] = "0,0,3307670,1,12001015,2,3009000[3009001],8[6]"
	-- 无奖励
	tLuckyTree_Reward[3307670][6] = {} 
	tLuckyTree_Reward[3307670][6]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307670][6]["ItemChance"] = 3500
	tLuckyTree_Reward[3307670][6]["RewardItem"] = {}
	tLuckyTree_Reward[3307670][6]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307670][5]		-- 全服公告
	tLuckyTree_Reward[3307670][6]["Log"] = "0,0,3307670,1,12001015,2,3009001,6"
	
	-- 果林三股东分红礼包
	tLuckyTree_Reward[3307671] = {}
	tLuckyTree_Reward[3307671]["ItemChanceSum"] = 10000  
	-- 必给奖励部分       
	tLuckyTree_Reward[3307671][1] = {}
	tLuckyTree_Reward[3307671][1]["RandomItemChanceType"] = 1
	-- 明亮星陨石
	tLuckyTree_Reward[3307671][1]["RewardItem"] = {}
	tLuckyTree_Reward[3307671][1]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307671][1]["RewardItem"][1]["Id"] = 3009001
	tLuckyTree_Reward[3307671][1]["RewardItem"][1]["Attr"] = "0 3"
	-- 明亮星陨石精装包
	tLuckyTree_Reward[3307671][2] = {} 
	tLuckyTree_Reward[3307671][2]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307671][2]["ItemChance"] = 500
	tLuckyTree_Reward[3307671][2]["RewardItem"] = {}
	tLuckyTree_Reward[3307671][2]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307671][2]["RewardItem"][1]["Id"] = 3200864
	tLuckyTree_Reward[3307671][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tLuckyTree_Reward[3307671][2]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307671][1]		-- 全服公告
	tLuckyTree_Reward[3307671][2]["Log"] = "0,0,3307671,1,12001015,2,3200864[3009001],1[3]"
	-- 微光星陨石
	tLuckyTree_Reward[3307671][3] = {} 
	tLuckyTree_Reward[3307671][3]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307671][3]["ItemChance"] = 3000
	tLuckyTree_Reward[3307671][3]["RewardItem"] = {}
	tLuckyTree_Reward[3307671][3]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307671][3]["RewardItem"][1]["Id"] = 3009000
	tLuckyTree_Reward[3307671][3]["RewardItem"][1]["Attr"] = "0 3"
	tLuckyTree_Reward[3307671][3]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307671][2]		-- 全服公告
	tLuckyTree_Reward[3307671][3]["Log"] = "0,0,3307671,1,12001015,2,3009000[3009001],3[3]"
	-- 微光星陨石
	tLuckyTree_Reward[3307671][4] = {} 
	tLuckyTree_Reward[3307671][4]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307671][4]["ItemChance"] = 2000
	tLuckyTree_Reward[3307671][4]["RewardItem"] = {}
	tLuckyTree_Reward[3307671][4]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307671][4]["RewardItem"][1]["Id"] = 3009000
	tLuckyTree_Reward[3307671][4]["RewardItem"][1]["Attr"] = "0 5"
	tLuckyTree_Reward[3307671][4]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307671][3]		-- 全服公告
	tLuckyTree_Reward[3307671][4]["Log"] = "0,0,3307671,1,12001015,2,3009000[3009001],5[3]"
	-- 微光星陨石
	tLuckyTree_Reward[3307671][5] = {} 
	tLuckyTree_Reward[3307671][5]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307671][5]["ItemChance"] = 1000
	tLuckyTree_Reward[3307671][5]["RewardItem"] = {}
	tLuckyTree_Reward[3307671][5]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307671][5]["RewardItem"][1]["Id"] = 3009000
	tLuckyTree_Reward[3307671][5]["RewardItem"][1]["Attr"] = "0 8"
	tLuckyTree_Reward[3307671][5]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307671][4]		-- 全服公告
	tLuckyTree_Reward[3307671][5]["Log"] = "0,0,3307671,1,12001015,2,3009000[3009001],8[3]"
	-- 无奖励
	tLuckyTree_Reward[3307671][6] = {} 
	tLuckyTree_Reward[3307671][6]["RandomItemChanceType"] = 2
	tLuckyTree_Reward[3307671][6]["ItemChance"] = 3500
	tLuckyTree_Reward[3307671][6]["RewardItem"] = {}
	tLuckyTree_Reward[3307671][6]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307671][5]		-- 全服公告
	tLuckyTree_Reward[3307671][6]["Log"] = "0,0,3307671,1,12001015,2,3009001,3"
	
	-- 农田大股东分红礼包
	tLuckyTree_Reward[3307672] = {}
	tLuckyTree_Reward[3307672]["DeleteItem"] = {}
	tLuckyTree_Reward[3307672]["DeleteItem"][1] = {}
	tLuckyTree_Reward[3307672]["DeleteItem"][1]["Id"] = 3307672
	tLuckyTree_Reward[3307672]["RewardItem"] = {}
	-- 秘制免费修炼丹
	tLuckyTree_Reward[3307672]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307672]["RewardItem"][1]["Id"] = 3002926
	tLuckyTree_Reward[3307672]["RewardItem"][1]["Attr"] = "0 10"
	-- 究极通神丹
	tLuckyTree_Reward[3307672]["RewardItem"][2] = {}
	tLuckyTree_Reward[3307672]["RewardItem"][2]["Id"] = 3003126
	tLuckyTree_Reward[3307672]["RewardItem"][2]["Attr"] = "0 4 3"
	-- 豪华强练丹礼盒改为直接给免费强炼丹
	tLuckyTree_Reward[3307672]["RewardItem"][3] = {}
	tLuckyTree_Reward[3307672]["RewardItem"][3]["Id"] = 3003124
	tLuckyTree_Reward[3307672]["RewardItem"][3]["Attr"] = "0 20 3"
	tLuckyTree_Reward[3307672]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307672]		-- 全服公告
	tLuckyTree_Reward[3307672]["LogId"] = 12001015
	
	-- 农田二股东分红礼包
	tLuckyTree_Reward[3307673] = {}
	tLuckyTree_Reward[3307673]["DeleteItem"] = {}
	tLuckyTree_Reward[3307673]["DeleteItem"][1] = {}
	tLuckyTree_Reward[3307673]["DeleteItem"][1]["Id"] =3307673
	tLuckyTree_Reward[3307673]["RewardItem"] = {}
	-- 秘制免费修炼丹
	tLuckyTree_Reward[3307673]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307673]["RewardItem"][1]["Id"] = 3002926
	tLuckyTree_Reward[3307673]["RewardItem"][1]["Attr"] = "0 8"
	-- 究极通神丹
	tLuckyTree_Reward[3307673]["RewardItem"][2] = {}
	tLuckyTree_Reward[3307673]["RewardItem"][2]["Id"] = 3003126
	tLuckyTree_Reward[3307673]["RewardItem"][2]["Attr"] = "0 3 3"
	-- 卓越强练丹礼盒改为直接给免费强炼丹
	tLuckyTree_Reward[3307673]["RewardItem"][3] = {}
	tLuckyTree_Reward[3307673]["RewardItem"][3]["Id"] = 3003124
	tLuckyTree_Reward[3307673]["RewardItem"][3]["Attr"] = "0 10 3"
	tLuckyTree_Reward[3307673]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307673]		-- 全服公告
	tLuckyTree_Reward[3307673]["LogId"] = 12001015
	
	-- 农田三股东分红礼包
	tLuckyTree_Reward[3307674] = {}
	tLuckyTree_Reward[3307674]["DeleteItem"] = {}
	tLuckyTree_Reward[3307674]["DeleteItem"][1] = {}
	tLuckyTree_Reward[3307674]["DeleteItem"][1]["Id"] =3307674
	tLuckyTree_Reward[3307674]["RewardItem"] = {}
	-- 秘制免费修炼丹
	tLuckyTree_Reward[3307674]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307674]["RewardItem"][1]["Id"] = 3002926
	tLuckyTree_Reward[3307674]["RewardItem"][1]["Attr"] = "0 5"
	-- 究极通神丹
	tLuckyTree_Reward[3307674]["RewardItem"][2] = {}
	tLuckyTree_Reward[3307674]["RewardItem"][2]["Id"] = 3003126
	tLuckyTree_Reward[3307674]["RewardItem"][2]["Attr"] = "0 2 3"
	-- 梦幻强练丹礼盒改为直接给免费强炼丹
	tLuckyTree_Reward[3307674]["RewardItem"][3] = {}
	tLuckyTree_Reward[3307674]["RewardItem"][3]["Id"] = 3003124
	tLuckyTree_Reward[3307674]["RewardItem"][3]["Attr"] = "0 5 3"
	tLuckyTree_Reward[3307674]["RewardBroadCast"] = tLuckyTree_Text["BroadCast"][3307674]		-- 全服公告
	tLuckyTree_Reward[3307674]["LogId"] = 12001015
	
	-- 鱼塘小股东分红礼包
	tLuckyTree_Reward[3307677] = {}
	tLuckyTree_Reward[3307677]["DeleteItem"] = {}
	tLuckyTree_Reward[3307677]["DeleteItem"][1] = {}
	tLuckyTree_Reward[3307677]["DeleteItem"][1]["Id"] = 3307677
	tLuckyTree_Reward[3307677]["RewardStrengthValue"] = {}    
	tLuckyTree_Reward[3307677]["RewardStrengthValue"]["Value"] = 500
	tLuckyTree_Reward[3307677]["LogId"] = 12001015
	
	-- 果林小股东分红礼包
	tLuckyTree_Reward[3307678] = {}
	tLuckyTree_Reward[3307678]["DeleteItem"] = {}
	tLuckyTree_Reward[3307678]["DeleteItem"][1] = {}
	tLuckyTree_Reward[3307678]["DeleteItem"][1]["Id"] = 3307678
	tLuckyTree_Reward[3307678]["RewardItem"] = {}
	-- 明亮星陨石
	tLuckyTree_Reward[3307678]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307678]["RewardItem"][1]["Id"] = 3009001
	tLuckyTree_Reward[3307678]["RewardItem"][1]["Attr"] = "0 1"
	-- 微光星陨石
	tLuckyTree_Reward[3307678]["RewardItem"][2] = {}
	tLuckyTree_Reward[3307678]["RewardItem"][2]["Id"] = 3009000
	tLuckyTree_Reward[3307678]["RewardItem"][2]["Attr"] = "0 3"
	tLuckyTree_Reward[3307678]["LogId"] = 12001015
	
	-- 农林小股东分红礼包
	tLuckyTree_Reward[3307679] = {}
	tLuckyTree_Reward[3307679]["DeleteItem"] = {}
	tLuckyTree_Reward[3307679]["DeleteItem"][1] = {}
	tLuckyTree_Reward[3307679]["DeleteItem"][1]["Id"] = 3307679
	tLuckyTree_Reward[3307679]["RewardItem"] = {}
	-- 免费强练丹
	tLuckyTree_Reward[3307679]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307679]["RewardItem"][1]["Id"] = 3003124
	tLuckyTree_Reward[3307679]["RewardItem"][1]["Attr"] = "0 5 3"
	-- 通神丹
	tLuckyTree_Reward[3307679]["RewardItem"][2] = {}
	tLuckyTree_Reward[3307679]["RewardItem"][2]["Id"] = 3003125
	tLuckyTree_Reward[3307679]["RewardItem"][2]["Attr"] = "0 5 3"
	-- 秘制免费修炼丹
	tLuckyTree_Reward[3307679]["RewardItem"][3] = {}
	tLuckyTree_Reward[3307679]["RewardItem"][3]["Id"] = 3002926
	tLuckyTree_Reward[3307679]["RewardItem"][3]["Attr"] = "0 1"
	tLuckyTree_Reward[3307679]["LogId"] = 12001015
	
	-- 2颗明亮星陨石极运包
	tLuckyTree_Reward[3307675] = {}
	tLuckyTree_Reward[3307675]["DeleteItem"] = {}
	tLuckyTree_Reward[3307675]["DeleteItem"][1] = {}
	tLuckyTree_Reward[3307675]["DeleteItem"][1]["Id"] = 3307675
	tLuckyTree_Reward[3307675]["RewardItem"] = {}
	tLuckyTree_Reward[3307675]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307675]["RewardItem"][1]["Id"] = 3009001
	tLuckyTree_Reward[3307675]["RewardItem"][1]["Attr"] = "0 2"
	tLuckyTree_Reward[3307675]["LogId"] = 12001015
	
	-- 5颗明亮星陨石极运包
	tLuckyTree_Reward[3307676] = {}
	tLuckyTree_Reward[3307676]["DeleteItem"] = {}
	tLuckyTree_Reward[3307676]["DeleteItem"][1] = {}
	tLuckyTree_Reward[3307676]["DeleteItem"][1]["Id"] = 3307676
	tLuckyTree_Reward[3307676]["RewardItem"] = {}
	tLuckyTree_Reward[3307676]["RewardItem"][1] = {}
	tLuckyTree_Reward[3307676]["RewardItem"][1]["Id"] = 3009001
	tLuckyTree_Reward[3307676]["RewardItem"][1]["Attr"] = "0 5"
	tLuckyTree_Reward[3307676]["LogId"] = 12001015
	
	-- 领取股东分红
	-- 鱼塘小股东分红礼包
	tLuckyTree_Reward["GetShareholderReward"] = {}
	tLuckyTree_Reward["GetShareholderReward"][22692] = {}
	tLuckyTree_Reward["GetShareholderReward"][22692]["RewardItem"] = {}
	tLuckyTree_Reward["GetShareholderReward"][22692]["RewardItem"][1] = {}
	tLuckyTree_Reward["GetShareholderReward"][22692]["RewardItem"][1]["Id"] = 3307677
	tLuckyTree_Reward["GetShareholderReward"][22692]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tLuckyTree_Reward["GetShareholderReward"][22692]["Talk"] = tLuckyTree_Text[2005]["GetShareholderReward"][22692]
	tLuckyTree_Reward["GetShareholderReward"][22692]["LogId"] = 12001015
	-- 果林小股东分红礼包
	tLuckyTree_Reward["GetShareholderReward"][22694] = {}
	tLuckyTree_Reward["GetShareholderReward"][22694]["RewardItem"] = {}
	tLuckyTree_Reward["GetShareholderReward"][22694]["RewardItem"][1] = {}
	tLuckyTree_Reward["GetShareholderReward"][22694]["RewardItem"][1]["Id"] = 3307678
	tLuckyTree_Reward["GetShareholderReward"][22694]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tLuckyTree_Reward["GetShareholderReward"][22694]["Talk"] = tLuckyTree_Text[2005]["GetShareholderReward"][22694]
	tLuckyTree_Reward["GetShareholderReward"][22694]["LogId"] = 12001015
	-- 农田小股东分红礼包
	tLuckyTree_Reward["GetShareholderReward"][22693] = {}
	tLuckyTree_Reward["GetShareholderReward"][22693]["RewardItem"] = {}
	tLuckyTree_Reward["GetShareholderReward"][22693]["RewardItem"][1] = {}
	tLuckyTree_Reward["GetShareholderReward"][22693]["RewardItem"][1]["Id"] = 3307679
	tLuckyTree_Reward["GetShareholderReward"][22693]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tLuckyTree_Reward["GetShareholderReward"][22693]["Talk"] = tLuckyTree_Text[2005]["GetShareholderReward"][22693]
	tLuckyTree_Reward["GetShareholderReward"][22693]["LogId"] = 12001015
	
	-- 投资返利
	-- 鱼塘
	tLuckyTree_Reward["Rebate"] = {}
	tLuckyTree_Reward["Rebate"][22692] = {}
	tLuckyTree_Reward["Rebate"][22692]["RewardItem"] = {}
	tLuckyTree_Reward["Rebate"][22692]["RewardItem"][1] = {}
	tLuckyTree_Reward["Rebate"][22692]["RewardItem"][1]["Id"] = 3307906
	tLuckyTree_Reward["Rebate"][22692]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward["Rebate"][22692]["Talk"] = tLuckyTree_Text[2005]["Rebate"][22692]
	tLuckyTree_Reward["Rebate"][22692]["LogId"] = 12001015
	-- 果林
	tLuckyTree_Reward["Rebate"][22694] = {}
	tLuckyTree_Reward["Rebate"][22694]["RewardItem"] = {}
	tLuckyTree_Reward["Rebate"][22694]["RewardItem"][1] = {}
	tLuckyTree_Reward["Rebate"][22694]["RewardItem"][1]["Id"] = 3307907
	tLuckyTree_Reward["Rebate"][22694]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward["Rebate"][22694]["Talk"] = tLuckyTree_Text[2005]["Rebate"][22694]
	tLuckyTree_Reward["Rebate"][22694]["LogId"] = 12001015
	-- 农田
	tLuckyTree_Reward["Rebate"][22693] = {}
	tLuckyTree_Reward["Rebate"][22693]["RewardItem"] = {}
	tLuckyTree_Reward["Rebate"][22693]["RewardItem"][1] = {}
	tLuckyTree_Reward["Rebate"][22693]["RewardItem"][1]["Id"] = 3307908
	tLuckyTree_Reward["Rebate"][22693]["RewardItem"][1]["Attr"] = "0 1"
	tLuckyTree_Reward["Rebate"][22693]["Talk"] = tLuckyTree_Text[2005]["Rebate"][22693]
	tLuckyTree_Reward["Rebate"][22693]["LogId"] = 12001015
	
	-- 新服升级令
	tLuckyTree_Reward[3310439] = {}
	tLuckyTree_Reward[3310439]["DeleteItem"] = {}
	tLuckyTree_Reward[3310439]["DeleteItem"][1] = {}
	tLuckyTree_Reward[3310439]["DeleteItem"][1]["Id"] = 3310439
	tLuckyTree_Reward[3310439]["RewardExp"] = {}
	tLuckyTree_Reward[3310439]["RewardExp"]["Value"] = 179442656
	tLuckyTree_Reward[3310439]["LogId"] = 12001015
	-- 上线获得新服升级令
	tLuckyTree_Reward["Login"] = {}
	tLuckyTree_Reward["Login"]["Id"] = 3310439
	tLuckyTree_Reward["Login"]["Attr"] = "0 1"
	
-- 概率表
local tLuckyTree_Random = {}
	-- 返利概率
	tLuckyTree_Random["HandInCoin"] = {}
	tLuckyTree_Random["HandInCoin"][1] = {}
	tLuckyTree_Random["HandInCoin"][1]["ItemChanceSum"] = 10000
	-- 10%概率给奖励               
	tLuckyTree_Random["HandInCoin"][1][1] = {}
	tLuckyTree_Random["HandInCoin"][1][1]["RandomItemChanceType"] = 2
	tLuckyTree_Random["HandInCoin"][1][1]["ItemChance"] = 1000
	tLuckyTree_Random["HandInCoin"][1][1]["Num"] = 1
	-- 90%概率无奖励           
	tLuckyTree_Random["HandInCoin"][1][2] = {}
	tLuckyTree_Random["HandInCoin"][1][2]["RandomItemChanceType"] = 2
	tLuckyTree_Random["HandInCoin"][1][2]["ItemChance"] = 9000
	tLuckyTree_Random["HandInCoin"][1][2]["Num"] = 0
	
	
-- 排行榜模板
	-- 淘气池塘
	tRankingFunc_Info[22692] = {}
	tRankingFunc_Info[22692]["ActiveTime"] = tActivityTime["LuckyTree"]["RankActivityTime"]
	tRankingFunc_Info[22692]["DayTime"] = {}
	tRankingFunc_Info[22692]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[22692]["ResetTime"] = {}
	tRankingFunc_Info[22692]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[22692]["Global"] = {52358,52359,52360,52361}
	tRankingFunc_Info[22692]["BeforeGlobal"] = {52362,52363,52364,52365}
	tRankingFunc_Info[22692]["RankNum"] = 10
	
	tRankingFunc_Info[22692]["Mail"] = {}
	tRankingFunc_Info[22692]["Mail"]["ActiveTime"] = tActivityTime["LuckyTree"]["RankActivityTime"]
	tRankingFunc_Info[22692]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[22692]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[22692]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[22692]["Mail"]["Reward"] = {}
	tRankingFunc_Info[22692]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[22692]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[22692]["Mail"]["Reward"][1]["ActionId"] = 568770
	tRankingFunc_Info[22692]["Mail"]["Reward"][1]["ExistDay"] = 2
	tRankingFunc_Info[22692]["Mail"]["Reward"][1]["Title"] = tLuckyTree_Text["Mail"][22692]["Title"]
	tRankingFunc_Info[22692]["Mail"]["Reward"][1]["Sender"] = tLuckyTree_Text["Mail"][22692]["Sender"]
	tRankingFunc_Info[22692]["Mail"]["Reward"][1]["Content"] = tLuckyTree_Text["Mail"][22692]["Content"][1]
	tRankingFunc_Info[22692]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[22692]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[22692]["Mail"]["Reward"][2]["ActionId"] = 568771
	tRankingFunc_Info[22692]["Mail"]["Reward"][2]["ExistDay"] = 2
	tRankingFunc_Info[22692]["Mail"]["Reward"][2]["Title"] = tLuckyTree_Text["Mail"][22692]["Title"]
	tRankingFunc_Info[22692]["Mail"]["Reward"][2]["Sender"] = tLuckyTree_Text["Mail"][22692]["Sender"]
	tRankingFunc_Info[22692]["Mail"]["Reward"][2]["Content"] = tLuckyTree_Text["Mail"][22692]["Content"][2]
	tRankingFunc_Info[22692]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[22692]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[22692]["Mail"]["Reward"][3]["ActionId"] = 568772
	tRankingFunc_Info[22692]["Mail"]["Reward"][3]["ExistDay"] = 2
	tRankingFunc_Info[22692]["Mail"]["Reward"][3]["Title"] = tLuckyTree_Text["Mail"][22692]["Title"]
	tRankingFunc_Info[22692]["Mail"]["Reward"][3]["Sender"] = tLuckyTree_Text["Mail"][22692]["Sender"]
	tRankingFunc_Info[22692]["Mail"]["Reward"][3]["Content"] = tLuckyTree_Text["Mail"][22692]["Content"][3]
	
	-- 摇星果林
	tRankingFunc_Info[22694] = {}
	tRankingFunc_Info[22694]["ActiveTime"] = tActivityTime["LuckyTree"]["RankActivityTime"]
	tRankingFunc_Info[22694]["DayTime"] = {}
	tRankingFunc_Info[22694]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[22694]["ResetTime"] = {}
	tRankingFunc_Info[22694]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[22694]["Global"] = {52366,52367,52368,52369}
	tRankingFunc_Info[22694]["BeforeGlobal"] = {52370,52371,52372,52373}
	tRankingFunc_Info[22694]["RankNum"] = 10
	
	tRankingFunc_Info[22694]["Mail"] = {}
	tRankingFunc_Info[22694]["Mail"]["ActiveTime"] = tActivityTime["LuckyTree"]["RankActivityTime"]
	tRankingFunc_Info[22694]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[22694]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[22694]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[22694]["Mail"]["Reward"] = {}
	tRankingFunc_Info[22694]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[22694]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[22694]["Mail"]["Reward"][1]["ActionId"] = 568773
	tRankingFunc_Info[22694]["Mail"]["Reward"][1]["ExistDay"] = 2
	tRankingFunc_Info[22694]["Mail"]["Reward"][1]["Title"] = tLuckyTree_Text["Mail"][22694]["Title"]
	tRankingFunc_Info[22694]["Mail"]["Reward"][1]["Sender"] = tLuckyTree_Text["Mail"][22694]["Sender"]
	tRankingFunc_Info[22694]["Mail"]["Reward"][1]["Content"] = tLuckyTree_Text["Mail"][22694]["Content"][1]
	tRankingFunc_Info[22694]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[22694]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[22694]["Mail"]["Reward"][2]["ActionId"] = 568774
	tRankingFunc_Info[22694]["Mail"]["Reward"][2]["ExistDay"] = 2
	tRankingFunc_Info[22694]["Mail"]["Reward"][2]["Title"] = tLuckyTree_Text["Mail"][22694]["Title"]
	tRankingFunc_Info[22694]["Mail"]["Reward"][2]["Sender"] = tLuckyTree_Text["Mail"][22694]["Sender"]
	tRankingFunc_Info[22694]["Mail"]["Reward"][2]["Content"] = tLuckyTree_Text["Mail"][22694]["Content"][2]
	tRankingFunc_Info[22694]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[22694]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[22694]["Mail"]["Reward"][3]["ActionId"] = 568775
	tRankingFunc_Info[22694]["Mail"]["Reward"][3]["ExistDay"] = 2
	tRankingFunc_Info[22694]["Mail"]["Reward"][3]["Title"] = tLuckyTree_Text["Mail"][22694]["Title"]
	tRankingFunc_Info[22694]["Mail"]["Reward"][3]["Sender"] = tLuckyTree_Text["Mail"][22694]["Sender"]
	tRankingFunc_Info[22694]["Mail"]["Reward"][3]["Content"] = tLuckyTree_Text["Mail"][22694]["Content"][3]

	-- 聚宝农田
	tRankingFunc_Info[22693] = {}
	tRankingFunc_Info[22693]["ActiveTime"] = tActivityTime["LuckyTree"]["RankActivityTime"]
	tRankingFunc_Info[22693]["DayTime"] = {}
	tRankingFunc_Info[22693]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[22693]["ResetTime"] = {}
	tRankingFunc_Info[22693]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[22693]["Global"] = {52374,52375,52376,52377}
	tRankingFunc_Info[22693]["BeforeGlobal"] = {52378,52379,52380,52381}
	tRankingFunc_Info[22693]["RankNum"] = 10
	
	tRankingFunc_Info[22693]["Mail"] = {}
	tRankingFunc_Info[22693]["Mail"]["ActiveTime"] = tActivityTime["LuckyTree"]["RankActivityTime"]
	tRankingFunc_Info[22693]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[22693]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[22693]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[22693]["Mail"]["Reward"] = {}
	tRankingFunc_Info[22693]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[22693]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[22693]["Mail"]["Reward"][1]["ActionId"] = 568776
	tRankingFunc_Info[22693]["Mail"]["Reward"][1]["ExistDay"] = 2
	tRankingFunc_Info[22693]["Mail"]["Reward"][1]["Title"] = tLuckyTree_Text["Mail"][22693]["Title"]
	tRankingFunc_Info[22693]["Mail"]["Reward"][1]["Sender"] = tLuckyTree_Text["Mail"][22693]["Sender"]
	tRankingFunc_Info[22693]["Mail"]["Reward"][1]["Content"] = tLuckyTree_Text["Mail"][22693]["Content"][1]
	tRankingFunc_Info[22693]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[22693]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[22693]["Mail"]["Reward"][2]["ActionId"] = 568777
	tRankingFunc_Info[22693]["Mail"]["Reward"][2]["ExistDay"] = 2
	tRankingFunc_Info[22693]["Mail"]["Reward"][2]["Title"] = tLuckyTree_Text["Mail"][22693]["Title"]
	tRankingFunc_Info[22693]["Mail"]["Reward"][2]["Sender"] = tLuckyTree_Text["Mail"][22693]["Sender"]
	tRankingFunc_Info[22693]["Mail"]["Reward"][2]["Content"] = tLuckyTree_Text["Mail"][22693]["Content"][2]
	tRankingFunc_Info[22693]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[22693]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[22693]["Mail"]["Reward"][3]["ActionId"] = 568778
	tRankingFunc_Info[22693]["Mail"]["Reward"][3]["ExistDay"] = 2
	tRankingFunc_Info[22693]["Mail"]["Reward"][3]["Title"] = tLuckyTree_Text["Mail"][22693]["Title"]
	tRankingFunc_Info[22693]["Mail"]["Reward"][3]["Sender"] = tLuckyTree_Text["Mail"][22693]["Sender"]
	tRankingFunc_Info[22693]["Mail"]["Reward"][3]["Content"] = tLuckyTree_Text["Mail"][22693]["Content"][3]

----------------------------------------逻辑部分-------------------------------------
-- 隔天重置掩码
function LuckyTree_ClearStc()
	local nFlag = 0
	for i=1,tLuckyTree_Stc["Total"] do
		local nEvent = tLuckyTree_Stc[i]["EventType"]
		local nType = tLuckyTree_Stc[i]["DataType"]
		
		-- 隔天重置掩码
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			nFlag = 1
		end
	end
	
	-- 替天行道镇魂珠重置掩码(其他task日常任务data6自动清)
	local nTaskId = tLuckyTree_Cont["Task"]["Task"][2]["Id"]
	if Task_ChkTaskDetail(nTaskId) then
		if Task_DetailInterval(nTaskId,1,4) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",tLuckyTree_Cont["Task"]["Task"][2]["CompleteFlagOpt"],tLuckyTree_Cont["Task"]["Task"][2]["nComplete"]) then
			Task_SetTaskDetailCompleteFlag(nTaskId,0,0)
			Task_DelTaskDetail(nTaskId)
			Task_AddTaskDetail(nTaskId)
			Task_SetTaskDetailData1(nTaskId,0)
			Task_SetTaskDetailData7(nTaskId,os.time())
		end
	end
	
	for i,v in ipairs(tLuckyTree_Cont["Task"]["Stc"]) do
		local nEvent = v["EventType"]
		local nType = v["DataType"]
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
	end
	
	-- 正气令掩码重置
	local nEvent = tLuckyTree_Cont["Task"]["UseItem"][1]["EventType"]
	local nType = tLuckyTree_Cont["Task"]["UseItem"][1]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		local nData = Get_UserStatisticValue(nEvent,nType)
		local nNowSingleData = nData%10000
		local nNowTotalData = (nData - nNowSingleData)/10000
		nData = nNowTotalData*10000
		Task_SetStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	-- 判断是否重置过
	if nFlag == 0 then
		return false
	else
		return true
	end
end

-- 使用物品检测
function LuckyTree_UseItemChk(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 活动时间检测
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then 
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 记录删除log
			local sLog = string.format(tLuckyTree_Log["Delete"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			
			User_TalkChannel2005(tLuckyTree_Text[2005]["OutTime"][nItemId])
		end
		return false
	end
	
	return true
end

-- 使用幸运果
function LuckyTree_UseLuckFruit(nItemId)
	-- 使用物品检测
	if not LuckyTree_UseItemChk(nItemId) then
		return
	end
	
	-- 判断二转
	local nIndex = 1
	if not User_JudgeLevelAndMetempsychosis(tLuckyTree_Cont["Item"][nItemId]["Level"],tLuckyTree_Cont["Item"][nItemId]["Metempsychosis"]) then
		nIndex = 1
	else
		nIndex = 2
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tLuckyTree_Reward[nItemId],nIndex)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tLuckyTree_Text[2005]["FullBag"])
		return
	end
	
	-- 删物品给奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tLuckyTree_Reward[nItemId],nIndex)
	end
end

-- 使用幸运币
function LuckyTree_UseLuckCoin(nItemId)
	-- 使用物品检测
	if not LuckyTree_UseItemChk(nItemId) then
		return
	end
	
	LuckyTree_PathFind(22670,1)
end

-- 使用礼包
function LuckyTree_UsePack(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tLuckyTree_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tLuckyTree_Text[105]["FullBag"],nSpace))
		return
	end
	
	RewardTemplate_UseItem(tLuckyTree_Reward[nItemId])
end

-- 寻路
function LuckyTree_PathFind(nNpcId,nIndex)
	-- 活动时间检测
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then 
		return
	end
	
	-- 判断地图
	if Get_UserMapId() ~= tLuckyTree_Cont["Map"][1]["Id"] and nIndex == 1 then
		User_TalkChannel2005(tLuckyTree_Text[105]["NotInMap"][nNpcId])
		return
	end
	
	NpcPosition_PathFind(nNpcId)
end

-- 显示任务列表
function LuckyTree_ShowTask(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nEvent_3 = tLuckyTree_Stc[3]["EventType"]
	local nType_3 = tLuckyTree_Stc[3]["DataType"]
	local nLimit_3 = tLuckyTree_Stc[3]["Limit"]
	
	-- 隔天重置掩码
	LuckyTree_ClearStc()
	
	local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3)
	
	-- 判断是否今日第一次参与
	if nData_3 == 0 then
		-- 刷新所有任务
		LuckyTree_RefreshAllTask()
		-- 设置为第一轮任务
		Task_SetStatistic(nEvent_3,nType_3,1,1)
		Task_SetStcTimestamp(nEvent_3,nType_3,0)
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 刷新所有任务
function LuckyTree_RefreshAllTask()
	-- 防止随机到重复的任务，先重置任务1-任务5的掩码
	for i=4, 8 do
		local nEvent = tLuckyTree_Stc[i]["EventType"]
		local nType = tLuckyTree_Stc[i]["DataType"]
		
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	for i=4, 8 do
		local nEvent = tLuckyTree_Stc[i]["EventType"]
		local nType = tLuckyTree_Stc[i]["DataType"]
		local nRandomTask = LuckyTree_RandomTask()
		
		Task_SetStatistic(nEvent,nType,nRandomTask,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		-- 判断日常+国境类任务
		LuckyTree_ChkTask(nRandomTask)
	end
end

-- 判断正气令使用、日常+国境类任务
function LuckyTree_ChkTask(nRandomTask)
	local nEvent_1 = tLuckyTree_Stc[1]["EventType"]
	local nType_1 = tLuckyTree_Stc[1]["DataType"]
	-- 判断是否使用过正气令
	for i, v in ipairs(tLuckyTree_Cont["Task"]["UseItem"]) do
		if nRandomTask == v["Index"] then
			local nTaskEvent = v["EventType"]
			local nTaskType = v["DataType"]
			local nTaskData = Get_UserStatisticValue(nTaskEvent,nTaskType)
			
			-- 判断对应任务是否完成
			if math.fmod(nTaskData,10000) >= v["nComplete"] then
				local nEvent_10 = tLuckyTree_Stc[10]["EventType"]
				local nType_10 = tLuckyTree_Stc[10]["DataType"]
				
				local nData10 = Get_UserStatisticValue(nEvent_10,nType_10)
				local nCompleteFlag = tLuckyTree_Cont["Task"][nRandomTask]
				
				if Sys_ParseNumbersContain(nCompleteFlag,nData10) then 
					return
				end
				
				-- 接受该任务前已使用正气令则直接置任务状态为已完成
				Task_AddStatistic(nEvent_10,nType_10,nCompleteFlag,1)
				Task_SetStcTimestamp(nEvent_10,nType_10,0)
				Task_AddStatistic(nEvent_1,nType_1,1,1)
				Task_SetStcTimestamp(nEvent_1,nType_1,0)
			end
		end
	end
	
	-- 用task记录的状态
	for i, v in ipairs(tLuckyTree_Cont["Task"]["Task"]) do
		if nRandomTask == v["Index"] then
			local nTaskId = v["Id"]
			
			-- 判断Task掩码是否存在
			if not Task_ChkTaskDetail(nTaskId) then
				return
			end
			
			-- 判断对应任务是否完成
			local nFlag = 0
			if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",v["CompleteFlagOpt"],v["nComplete"]) then
				if v["Data6"] ~= 0 then
					if Task_ChkTaskDetailValue(nTaskId,"6",v["Data6Opt"],v["Data6"]) then
						nFlag = 1
					end
				else
					nFlag = 1 
				end
			end
			
			if nFlag == 1 then
				local nEvent_11 = tLuckyTree_Stc[11]["EventType"]
				local nType_11 = tLuckyTree_Stc[11]["DataType"]
				local nData11 = Get_UserStatisticValue(nEvent_11,nType_11)
				local nCompleteFlag = tLuckyTree_Cont["Task"][nRandomTask]
				
				if Sys_ParseNumbersContain(nCompleteFlag,nData11) then 
					return
				end
				
				-- 接受该任务前已完成对应日常或国境任务则直接置任务状态为已完成
				Task_AddStatistic(nEvent_11,nType_11,nCompleteFlag,1)
				Task_SetStcTimestamp(nEvent_11,nType_11,0)
				Task_AddStatistic(nEvent_1,nType_1,1,1)
				Task_SetStcTimestamp(nEvent_1,nType_1,0)
			end
		end
	end
	
	-- 用stc记录的状态
	for i, v in ipairs(tLuckyTree_Cont["Task"]["Stc"]) do
		if nRandomTask == v["Index"] then
			local nTaskEvent = v["EventType"]
			local nTaskType = v["DataType"]
			
			-- 判断对应任务是否完成
			if Task_ChkStcValue(nTaskEvent,nTaskType,v["CompleteFlagOpt"],v["nComplete"]) then
				local nEvent_11 = tLuckyTree_Stc[11]["EventType"]
				local nType_11 = tLuckyTree_Stc[11]["DataType"]
				local nData11 = Get_UserStatisticValue(nEvent_11,nType_11)
				local nCompleteFlag = tLuckyTree_Cont["Task"][nRandomTask]
				
				if Sys_ParseNumbersContain(nCompleteFlag,nData11) then 
					return
				end
				
				-- 接受该任务前已完成对应日常或国境任务则直接置任务状态为已完成
				Task_AddStatistic(nEvent_11,nType_11,nCompleteFlag,1)
				Task_SetStcTimestamp(nEvent_11,nType_11,0)
				Task_AddStatistic(nEvent_1,nType_1,1,1)
				Task_SetStcTimestamp(nEvent_1,nType_1,0)
			end
		end
	end
end

-- 随机任务
function LuckyTree_RandomTask()
	local nRandomTask = math.random(1,tLuckyTree_Cont["Task"]["Total"])
	
	-- 取消上交祝福石的两个任务与国境任务   取消上交祈愿石任务  取消九幽魔晶上交任务  取消琅环福地任务
	if nRandomTask == 13 or nRandomTask == 14 or nRandomTask == 15 or nRandomTask == 28 or nRandomTask == 10 or nRandomTask == 27 then 
		nRandomTask = LuckyTree_RandomTask()
	end
	
	for i=4, 8 do
		local nEvent = tLuckyTree_Stc[i]["EventType"]
		local nType = tLuckyTree_Stc[i]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		
		-- 与本轮其他任务重复则重新随机
		if nRandomTask == nData then
			nRandomTask = LuckyTree_RandomTask()
		end
	end
	
	-- 与今日已完成任务重复则重新随机
	local nEvent_10 = tLuckyTree_Stc[10]["EventType"]
	local nType_10 = tLuckyTree_Stc[10]["DataType"]
	local nEvent_11 = tLuckyTree_Stc[11]["EventType"]
	local nType_11 = tLuckyTree_Stc[11]["DataType"]
	
	local nData10 = Get_UserStatisticValue(nEvent_10,nType_10)
	local nData11 = Get_UserStatisticValue(nEvent_11,nType_11)
	
	if nRandomTask <= 17 and Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nRandomTask],nData10) then 
		nRandomTask = LuckyTree_RandomTask()
	elseif nRandomTask > 17 and Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nRandomTask],nData11) then 
		nRandomTask = LuckyTree_RandomTask()
	end
	
	return nRandomTask
end

-- 一键领取幸运果
function LuckyTree_OneKeyGetLuckFruit(nNpcId,nLink)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nEvent_1 = tLuckyTree_Stc[1]["EventType"]
	local nType_1 = tLuckyTree_Stc[1]["DataType"]
	local nEvent_2 = tLuckyTree_Stc[2]["EventType"]
	local nType_2 = tLuckyTree_Stc[2]["DataType"]
	local nEvent_10 = tLuckyTree_Stc[10]["EventType"]
	local nType_10 = tLuckyTree_Stc[10]["DataType"]
	local nEvent_11 = tLuckyTree_Stc[11]["EventType"]
	local nType_11 = tLuckyTree_Stc[11]["DataType"]
	local nEvent_12 = tLuckyTree_Stc[12]["EventType"]
	local nType_12 = tLuckyTree_Stc[12]["DataType"]
	local nEvent_13 = tLuckyTree_Stc[13]["EventType"]
	local nType_13 = tLuckyTree_Stc[13]["DataType"]
	
	-- 隔天重置掩码
	if LuckyTree_ClearStc() then
		User_TalkChannel2005(tLuckyTree_Text[2005]["Reset"])
		return
	end
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	local nData_10 = Get_UserStatisticValue(nEvent_10,nType_10)
	local nData_11 = Get_UserStatisticValue(nEvent_11,nType_11)
	
	-- 判断领取次数
	local nRewardNum = nData_1 - nData_2
	if nRewardNum <= 0 then
		return
	end
	
	local tReward = CommonFunc_Copy(tLuckyTree_Reward["GetLuckFruit"])
	tReward["RewardItem"][1]["Attr"] = string.format(tLuckyTree_Reward["GetLuckFruit"]["RewardItem"][1]["Attr"], nRewardNum)
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		tNpcGossip[nNpcId]["Text311"] = string.format(tLuckyTree_Text[22669]["Text311"],nSpace)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	tReward["Talk"] = string.format(tLuckyTree_Reward["GetLuckFruit"]["Talk"],nRewardNum)
	
	Task_SetStatistic(nEvent_2,nType_2,nData_1,1)
	Task_SetStcTimestamp(nEvent_2,nType_2,0)
	Task_SetStatistic(nEvent_12,nType_12,nData_10,1)
	Task_SetStcTimestamp(nEvent_12,nType_12,0)
	Task_SetStatistic(nEvent_13,nType_13,nData_11,1)
	Task_SetStcTimestamp(nEvent_13,nType_13,0)
	
	RewardTemplate_UseItem(tReward)
	
	if nLink == 1 then
		LinkNpcGossipFunc_New(nNpcId,"1")
		return
	else
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
end

-- 具体任务
function LuckyTree_TaskDetail(nNpcId,nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nEvent = tLuckyTree_Stc[nIndex]["EventType"]
	local nType = tLuckyTree_Stc[nIndex]["DataType"]
	
	-- 隔天重置掩码
	if LuckyTree_ClearStc() then
		User_TalkChannel2005(tLuckyTree_Text[2005]["Reset"])
		return false
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 判断任务1-5是否已完成
	local nEvent_10 = tLuckyTree_Stc[10]["EventType"]
	local nType_10 = tLuckyTree_Stc[10]["DataType"]
	local nEvent_11 = tLuckyTree_Stc[11]["EventType"]
	local nType_11 = tLuckyTree_Stc[11]["DataType"]
	local nEvent_12 = tLuckyTree_Stc[12]["EventType"]
	local nType_12 = tLuckyTree_Stc[12]["DataType"]
	local nEvent_13 = tLuckyTree_Stc[13]["EventType"]
	local nType_13 = tLuckyTree_Stc[13]["DataType"]
	
	local nData10 = Get_UserStatisticValue(nEvent_10,nType_10)
	local nData11 = Get_UserStatisticValue(nEvent_11,nType_11)
	local nData12 = Get_UserStatisticValue(nEvent_12,nType_12)
	local nData13 = Get_UserStatisticValue(nEvent_13,nType_13)
	
	if nData <= 17 and Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nData],nData10) then
		tNpcGossip[nNpcId]["Text323"] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_CenterAline(tLuckyTree_Text["Task"][nData],27))
		-- 是否可领取幸运果
		if Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nData],nData12) then
			tNpcGossip[nNpcId]["tOption3-2"] = {322}
		else
			tNpcGossip[nNpcId]["OptionFunc321"] = "LuckyTree_GetLuckyFruit</N>22669</N>" .. nData
			tNpcGossip[nNpcId]["tOption3-2"] = {321,322}
		end
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return false
	elseif nData > 17 and Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nData],nData11) then
		tNpcGossip[nNpcId]["Text323"] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_CenterAline(tLuckyTree_Text["Task"][nData],27))
		-- 是否可领取幸运果
		if Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nData],nData13) then
			tNpcGossip[nNpcId]["tOption3-2"] = {322}
		else
			tNpcGossip[nNpcId]["OptionFunc321"] = "LuckyTree_GetLuckyFruit</N>22669</N>" .. nData
			tNpcGossip[nNpcId]["tOption3-2"] = {321,322}
		end
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return false
	end
	
	-- 未完成任务--区分任务类型
	-- 使用物品类任务
	for i,v in ipairs(tLuckyTree_Cont["Task"]["UseItem"]) do
		if nData == v["Index"] then
			tNpcGossip[nNpcId]["Text333"] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_CenterAline(tLuckyTree_Text["Task"][nData],27))
			local nItemId = v["Id"]
			local sItemName = Get_ItemtypeName(nItemId)
			-- tNpcGossip[nNpcId]["Text334"] = string.format(tLuckyTree_Text[nNpcId]["Text334"],sItemName)
			LinkNpcGossipFunc_New(nNpcId,"3-3")
			return
		end
	end
	-- 上交物品类任务
	for i,v in ipairs(tLuckyTree_Cont["Task"]["Collect"]) do
		if nData == v["Index"] then
			tNpcGossip[nNpcId]["Text343"] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_CenterAline(tLuckyTree_Text["Task"][nData],27))
			local nItemNum = v["ItemNum"]
			local nItemId = v["ItemId"]
			local sItemName = Get_ItemtypeName(nItemId)
			-- tNpcGossip[nNpcId]["Text344"] = string.format(tLuckyTree_Text[nNpcId]["Text344"],nItemNum,sItemName)
			tNpcGossip[nNpcId]["Option341"] = string.format(tLuckyTree_Text[nNpcId]["Option341"],nItemNum,sItemName)
			tNpcGossip[nNpcId]["OptionFunc341"] = "LuckyTree_HandInItem</N>22669" .. "</N>" .. nData
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return
		end
	end
	-- 击杀类任务
	for i,v in ipairs(tLuckyTree_Cont["Task"]["Kill"]) do
		if nData == v["Index"] then
			local sText = string.format(tLuckyTree_Text[105]["GotoKillMonster"],tLuckyTree_Text["Task"][nData])
			Sys_MsgBox(sText,"LuckyTree_FindMonster</N>" .. nData,nil)
			return
		end
	end
	-- 日常+国境类任务
	for i,v in ipairs(tLuckyTree_Cont["Task"]["Task"]) do
		if nData == v["Index"] then
			local sText = string.format(tLuckyTree_Text[105]["GotoFinishTheTask"],tLuckyTree_Text["Task"][nData])
			local nNpcId = v["NpcId"]
			Sys_MsgBox(sText,"LuckyTree_PathFind</N>" .. nNpcId .. "</N>2",nil)
			return
		end
	end
	for i,v in ipairs(tLuckyTree_Cont["Task"]["Stc"]) do
		if nData == v["Index"] then
			local sText = string.format(tLuckyTree_Text[105]["GotoFinishTheTask"],tLuckyTree_Text["Task"][nData])
			local nNpcId = v["NpcId"]
			Sys_MsgBox(sText,"LuckyTree_PathFind</N>" .. nNpcId .. "</N>2",nil)
			return
		end
	end
end

-- 上交物品
function LuckyTree_HandInItem(nNpcId,nData)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 隔天重置掩码
	if LuckyTree_ClearStc() then
		User_TalkChannel2005(tLuckyTree_Text[2005]["Reset"])
		return false
	end
	
	-- 判断任务
	for i,v in ipairs(tLuckyTree_Cont["Task"]["Collect"]) do
		if nData == v["Index"] then
			local nItemNum = v["ItemNum"]
			local nItemId = v["ItemId"]
			local sItemName = Get_ItemtypeName(nItemId)
			local nEvent_1 = tLuckyTree_Stc[1]["EventType"]
			local nType_1 = tLuckyTree_Stc[1]["DataType"]
			local nEvent_10 = tLuckyTree_Stc[10]["EventType"]
			local nType_10 = tLuckyTree_Stc[10]["DataType"]
			local nCompleteFlag = tLuckyTree_Cont["Task"][nData]
			
			local nNumber1 = 0
			local nNumber2 = 0
			-- 获取赠品数量
			if Item_ChkItem(nItemId,2) then
				nNumber1 = Get_CountItemType(nItemId,0,2)		-- 赠
			end
			-- 获取非赠数量
			if Item_ChkItem(nItemId,0) then
				nNumber2 = Get_CountItemType(nItemId,0,0)		-- 非赠
			end
			
			-- 判断是否已完成
			if Sys_ParseNumbersContain(nCompleteFlag,nData10) then 
				return
			end
			
			-- 判断背包物品
			-- if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
			if nNumber1 + nNumber2 < nItemNum then
				tNpcGossip[nNpcId]["Text411"] = string.format(tLuckyTree_Text[nNpcId]["Text411"],nItemNum,sItemName)
				LinkNpcGossipFunc_New(nNpcId,"4-1")
				return
			end
			
			-- 删物品
			local nFlag = 0
			local nDelNum1 = 0
			local nDelNum2 = 0
			-- 优先删赠判断
			if nNumber1 >= nItemNum then		-- 赠品足够上交
				nDelNum1 = nItemNum
				if Item_ChkMulItem(nItemId,nItemId,nDelNum1,2) and Item_DelMulItem(nItemId,nItemId,nDelNum1,2) then
					nFlag = 1
				end
			elseif nNumber1 == 0 then
				nDelNum2 = nItemNum
				if Item_ChkMulItem(nItemId,nItemId,nDelNum2,0) and Item_DelMulItem(nItemId,nItemId,nDelNum2,0) then
					nFlag = 1
				end
			else
				nDelNum1 = nNumber1
				nDelNum2 = nItemNum - nDelNum1
				if Item_ChkMulItem(nItemId,nItemId,nDelNum1,2) and Item_DelMulItem(nItemId,nItemId,nDelNum1,2) and Item_ChkMulItem(nItemId,nItemId,nDelNum2,0) and Item_DelMulItem(nItemId,nItemId,nDelNum2,0) then
					nFlag = 1
				end
			end
			
			if nFlag == 1 then
				tNpcGossip[nNpcId]["Text421"] = string.format(tLuckyTree_Text[nNpcId]["Text421"],nItemNum,sItemName)
				tNpcGossip[nNpcId]["OptionFunc421"] = "LuckyTree_GetLuckyFruit</N>" .. nNpcId .. "</N>" .. nData
				
				-- 置掩码
				Task_AddStatistic(nEvent_1,nType_1,1,1)
				Task_SetStcTimestamp(nEvent_1,nType_1,0)
				Task_AddStatistic(nEvent_10,nType_10,nCompleteFlag,1)
				Task_SetStcTimestamp(nEvent_10,nType_10,0)
				
				User_TalkChannel2005(string.format(tLuckyTree_Text[2005]["HandInSuccesed"],nItemNum,sItemName))
				LinkNpcGossipFunc_New(nNpcId,"4-2")
				return
			end
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
	end
end

-- 寻怪
function LuckyTree_FindMonster(nTaskId)
	-- 活动时间检测
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then 
		return
	end
	
	local nMapId = tLuckyTree_Cont["Map"][nTaskId]["Id"]
	local nCellX = tLuckyTree_Cont["Map"][nTaskId]["CellX"]
	local nCellY = tLuckyTree_Cont["Map"][nTaskId]["CellY"]
	
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1)
end

-- 领取幸运果
function LuckyTree_GetLuckyFruit(nNpcId,nData)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nEvent_2 = tLuckyTree_Stc[2]["EventType"]
	local nType_2 = tLuckyTree_Stc[2]["DataType"]
	local nEvent_12 = tLuckyTree_Stc[12]["EventType"]
	local nType_12 = tLuckyTree_Stc[12]["DataType"]
	local nEvent_13 = tLuckyTree_Stc[13]["EventType"]
	local nType_13 = tLuckyTree_Stc[13]["DataType"]
	
	-- 隔天重置掩码
	if LuckyTree_ClearStc() then
		User_TalkChannel2005(tLuckyTree_Text[2005]["Reset"])
		return
	end
	
	local nRewardNum = 1
	local tReward = CommonFunc_Copy(tLuckyTree_Reward["GetLuckFruit"])
	tReward["RewardItem"][1]["Attr"] = string.format(tLuckyTree_Reward["GetLuckFruit"]["RewardItem"][1]["Attr"], nRewardNum)
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		tNpcGossip[nNpcId]["Text311"] = string.format(tLuckyTree_Text[nNpcId]["Text311"],nSpace)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	tReward["Talk"] = string.format(tLuckyTree_Reward["GetLuckFruit"]["Talk"],nRewardNum)
	
	Task_AddStatistic(nEvent_2,nType_2,1,1)
	Task_SetStcTimestamp(nEvent_2,nType_2,0)
	
	if nData <= 17 then
		Task_AddStatistic(nEvent_12,nType_12,tLuckyTree_Cont["Task"][nData],1)
		Task_SetStcTimestamp(nEvent_12,nType_12,0)
	else
		Task_AddStatistic(nEvent_13,nType_13,tLuckyTree_Cont["Task"][nData],1)
		Task_SetStcTimestamp(nEvent_13,nType_13,0)
	end
	
	RewardTemplate_UseItem(tReward)
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 刷新部分任务（5天石）
function LuckyTree_RefreshSomeTask(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 判断天石是否充足
	local nUserEmoney = Get_UserEMoney()
	if nUserEmoney < tLuckyTree_Cont["NeedEmoney"] then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	else
		LinkNpcGossipFunc_New(nNpcId,"3-6")
		return
	end
end

-- 刷新部分任务二次确认
function LuckyTree_RefreshConfirm(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nEvent_10 = tLuckyTree_Stc[10]["EventType"]
	local nType_10 = tLuckyTree_Stc[10]["DataType"]
	local nEvent_11 = tLuckyTree_Stc[11]["EventType"]
	local nType_11 = tLuckyTree_Stc[11]["DataType"]
	
	-- 隔天重置掩码
	if LuckyTree_ClearStc() then
		User_TalkChannel2005(tLuckyTree_Text[2005]["Reset"])
		return
	end
	
	local nData10 = Get_UserStatisticValue(nEvent_10,nType_10)
	local nData11 = Get_UserStatisticValue(nEvent_11,nType_11)
	
	local nUserEmoney = Get_UserEMoney()
	if nUserEmoney < tLuckyTree_Cont["NeedEmoney"] then
		return
	end
	
	if User_AddEMoney(-tLuckyTree_Cont["NeedEmoney"]) then
		Sys_SaveEmoneyBuy(tLuckyTree_Log["Emoney"])
		
		-- 判断任务1-5是否已完成
		local tChangeTask = {}		-- 记录被刷新的任务，避免重复
		local i = 4
		local nCalLoop = 0
		while i <= 8 do
			if nCalLoop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 LuckyTree_RefreshConfirm 中 [while]循环超过1000次！")
				break
			end
			nCalLoop = nCalLoop + 1
			local nEvent = tLuckyTree_Stc[i]["EventType"]
			local nType = tLuckyTree_Stc[i]["DataType"]
			local nData = Get_UserStatisticValue(nEvent,nType)
			
			if nData <= 17 and not Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nData],nData10) then 
				local nRandomTask = LuckyTree_RandomTask()
				table.insert(tChangeTask,nData)
				local nFlag = 0
				for i,v in ipairs(tChangeTask) do
					if v == nRandomTask then
						nFlag = 1
					end
				end
				
				if nFlag == 1 then
					i = i - 1
				else
					Task_SetStatistic(nEvent,nType,nRandomTask,1)
					Task_SetStcTimestamp(nEvent,nType,0)
					-- 判断日常+国境类任务
					LuckyTree_ChkTask(nRandomTask)
				end
			elseif nData > 17 and not Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nData],nData11) then 
				local nRandomTask = LuckyTree_RandomTask()
				table.insert(tChangeTask,nData)
				local nFlag = 0
				for i,v in ipairs(tChangeTask) do
					if v == nRandomTask then
						nFlag = 1
					end
				end
				
				if nFlag == 1 then
					i = i - 1
				else
					Task_SetStatistic(nEvent,nType,nRandomTask,1)
					Task_SetStcTimestamp(nEvent,nType,0)
					-- 判断日常+国境类任务
					LuckyTree_ChkTask(nRandomTask)
				end
			end
			
			i = i + 1
		end
		
		User_TalkChannel2005(tLuckyTree_Text[2005]["Refresh"])
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end
end

-- 刷新下一轮任务
function LuckyTree_RefreshNextRoundTask(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nEvent_3 = tLuckyTree_Stc[3]["EventType"]
	local nType_3 = tLuckyTree_Stc[3]["DataType"]
	local nLimit_3 = tLuckyTree_Stc[3]["Limit"]
	
	-- 隔天重置掩码
	if LuckyTree_ClearStc() then
		User_TalkChannel2005(tLuckyTree_Text[2005]["Reset"])
		return
	end
	
	-- 刷新所有任务
	LuckyTree_RefreshAllTask()
	-- 设置为下一轮任务
	Task_AddStatistic(nEvent_3,nType_3,1,1)
	Task_SetStcTimestamp(nEvent_3,nType_3,0)
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 任务怪死亡触发
function LuckyTree_ChkKillTask(nMonsterId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		return false
	end
	
	-- 隔天重置掩码
	if LuckyTree_ClearStc() then
		User_TalkChannel2005(tLuckyTree_Text[2005]["Reset"])
		return false
	end
	
	-- 匹配怪物id
	for i,v in ipairs(tLuckyTree_Cont["Task"]["Kill"]) do
		if nMonsterId == v["MonsterId"] then
			local nFlag = 0
			-- 是否接取对应任务
			for j=4, 8 do
				local nEvent = tLuckyTree_Stc[j]["EventType"]
				local nType = tLuckyTree_Stc[j]["DataType"]
				local nData = Get_UserStatisticValue(nEvent,nType)
				local nEvent_1 = tLuckyTree_Stc[1]["EventType"]
				local nType_1 = tLuckyTree_Stc[1]["DataType"]
				local nEvent_10 = tLuckyTree_Stc[10]["EventType"]
				local nType_10 = tLuckyTree_Stc[10]["DataType"]
				local nData10 = Get_UserStatisticValue(nEvent_10,nType_10)
				local nEvent_11 = tLuckyTree_Stc[11]["EventType"]
				local nType_11 = tLuckyTree_Stc[11]["DataType"]
				local nData11 = Get_UserStatisticValue(nEvent_11,nType_11)
				
				if nData == v["Index"] then
					-- 是否已完成
					if nData <= 17 and Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nData],nData10) then 
						return false
					elseif nData > 17 and Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nData],nData11) then 
						return false
					end
					
					local nStcIndex = v["StcIndex"]
					local nEvent_KillNum = tLuckyTree_Stc[nStcIndex]["EventType"]
					local nType_KillNum = tLuckyTree_Stc[nStcIndex]["DataType"]
					
					Task_AddStatistic(nEvent_KillNum,nType_KillNum,1,1)
					Task_SetStcTimestamp(nEvent_KillNum,nType_KillNum,0)
					
					local nKillNum = Get_UserStatisticValue(nEvent_KillNum,nType_KillNum)
					
					-- 判断本次击杀是否完成任务
					if nKillNum  == v["MonsterNum"] then
						if nData <= 17 then
							Task_AddStatistic(nEvent_1,nType_1,1,1)
							Task_SetStcTimestamp(nEvent_1,nType_1,0)
							Task_AddStatistic(nEvent_10,nType_10,tLuckyTree_Cont["Task"][nData],1)
							Task_SetStcTimestamp(nEvent_10,nType_10,0)
						else
							Task_AddStatistic(nEvent_1,nType_1,1,1)
							Task_SetStcTimestamp(nEvent_1,nType_1,0)
							Task_AddStatistic(nEvent_11,nType_11,tLuckyTree_Cont["Task"][nData],1)
							Task_SetStcTimestamp(nEvent_11,nType_11,0)
						end
						local sText = string.format(tLuckyTree_Text[105]["FinishTheTask"],tLuckyTree_Text["Task"][nData])
						Sys_MsgBox(sText,"LuckyTree_BackToTwinCity</N>2)",nil)
						return
					end
				end
			end
		end
	end
end

-- 使用正气令
function LuckyTree_UseChiToken()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		return false
	end
	
	-- 隔天重置掩码
	if LuckyTree_ClearStc() then
		return false
	end
	
	-- 判断是否接取任务
	for i=4,8 do
		local nEvent = tLuckyTree_Stc[i]["EventType"]
		local nType = tLuckyTree_Stc[i]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		if nData == tLuckyTree_Cont["Task"]["UseItem"][1]["Index"] then
			local nEvent_1 = tLuckyTree_Stc[1]["EventType"]
			local nType_1 = tLuckyTree_Stc[1]["DataType"]
			local nEvent_10 = tLuckyTree_Stc[10]["EventType"]
			local nType_10 = tLuckyTree_Stc[10]["DataType"]
			local nData10 = Get_UserStatisticValue(nEvent_10,nType_10)
			local nCompleteFlag = tLuckyTree_Cont["Task"][nData]
			
			if Sys_ParseNumbersContain(nCompleteFlag,nData10) then 
				return
			end
			
			-- 使用正气令置掩码为完成状态
			Task_AddStatistic(nEvent_10,nType_10,nCompleteFlag,1)
			Task_SetStcTimestamp(nEvent_10,nType_10,0)
			Task_AddStatistic(nEvent_1,nType_1,1,1)
			Task_SetStcTimestamp(nEvent_1,nType_1,0)
			return
		end
	end
end

-- 传送进投资地图
function LuckyTree_IntoInvestMap(nNpcId,nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nMapId = tLuckyTree_Cont["Map"][nIndex]["Id"]
	local nCellX = tLuckyTree_Cont["Map"][nIndex]["CellX"]
	local nCellY = tLuckyTree_Cont["Map"][nIndex]["CellY"]
	
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1)
end

-- 传送回双龙城
function LuckyTree_BackToTwinCity(nIndex)
	local nMapId = tLuckyTree_Cont["Map"][nIndex]["Id"]
	local nCellX = tLuckyTree_Cont["Map"][nIndex]["CellX"]
	local nCellY = tLuckyTree_Cont["Map"][nIndex]["CellY"]
	
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1)
end

-- 投资幸运币
function LuckyTree_HandInCoin(nNpcId,nNumber)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		return false
	end
	
	-- 隔天重置掩码
	LuckyTree_ClearStc() 
	
	local nEvent_19 = tLuckyTree_Stc[19]["EventType"]
	local nType_19 = tLuckyTree_Stc[19]["DataType"]
	local nData_19 = Get_UserStatisticValue(nEvent_19,nType_19)
	local nEvent_20 = tLuckyTree_Stc[20]["EventType"]
	local nType_20 = tLuckyTree_Stc[20]["DataType"]
	local nEvent_21 = tLuckyTree_Stc[21]["EventType"]
	local nType_21 = tLuckyTree_Stc[21]["DataType"]
	local nLimit_21 = tLuckyTree_Stc[21]["Limit"]
	local nData_21 = Get_UserStatisticValue(nEvent_21,nType_21)
	local nEvent_22 = tLuckyTree_Stc[22]["EventType"]
	local nType_22 = tLuckyTree_Stc[22]["DataType"]
	local nData_22 = Get_UserStatisticValue(nEvent_22,nType_22)
	
	-- 判断是否已投资其他产业
	if nData_19 ~= nNpcId and nData_19 ~= 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 获得返利10次并未出过提示则出一次105提示
	if nData_21 == nLimit_21 then
		Sys_MsgBox(tLuckyTree_Text[105]["AwardTen"],"LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. "1",nil)
		Task_AddStatistic(nEvent_21,nType_21,1,1)
		Task_SetStcTimestamp(nEvent_21,nType_21,0)
		return
	end
	
	local nItemId = tLuckyTree_Cont["Item"]["Coin"]["Id"]
	local nNumber1 = 0
	local nNumber2 = 0
	-- 获取赠品数量
	if Item_ChkItem(nItemId,2) then
		nNumber1 = Get_CountItemType(nItemId,0,2)		-- 赠
	end
	-- 获取非赠数量
	if Item_ChkItem(nItemId,0) then
		nNumber2 = Get_CountItemType(nItemId,0,0)		-- 非赠
	end
	
	-- 投资所有
	if nNumber == 10 then
		nNumber = nNumber1 + nNumber2
		if nNumber == 0 then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	end
	
	-- 检测物品是否足够
	-- if not Item_ChkMulItem(nItemId,nItemId,nNumber) then
	if nNumber1 + nNumber2 < nNumber then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 判断背包空间（返利做成礼包，只用判断一格背包空间）
	local nSpace = RewardTemplate_GetRewardSpace(tLuckyTree_Reward["Rebate"][nNpcId])
	
	-- 是否已领取分红奖励
	if nData_22 ~= 1 then
		nSpace = nSpace + 1			-- 加1判断可能获得的分红奖励
	end
	
	if not User_CheckLeftSpace(nSpace) then
		tNpcGossip[nNpcId]["Text231"] = string.format(tLuckyTree_Text[nNpcId]["Text231"],nSpace)
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 删物品
	local nFlag = 0
	local nDelNum1 = 0
	local nDelNum2 = 0
	-- 优先删赠判断
	if nNumber1 >= nNumber then		-- 赠品足够上交
		nDelNum1 = nNumber
		if Item_ChkMulItem(nItemId,nItemId,nDelNum1,2) and Item_DelMulItem(nItemId,nItemId,nDelNum1,2) then
			nFlag = 1
		end
	elseif nNumber1 == 0 then
		nDelNum2 = nNumber
		if Item_ChkMulItem(nItemId,nItemId,nDelNum2,0) and Item_DelMulItem(nItemId,nItemId,nDelNum2,0) then
			nFlag = 1
		end
	else
		nDelNum1 = nNumber1
		nDelNum2 = nNumber - nDelNum1
		if Item_ChkMulItem(nItemId,nItemId,nDelNum1,2) and Item_DelMulItem(nItemId,nItemId,nDelNum1,2) and Item_ChkMulItem(nItemId,nItemId,nDelNum2,0) and Item_DelMulItem(nItemId,nItemId,nDelNum2,0) then
			nFlag = 1
		end
	end
	
	
	if nFlag == 1 then
		-- 投资产业置掩码
		Task_SetStatistic(nEvent_19,nType_19,nNpcId,1)
		Task_SetStcTimestamp(nEvent_19,nType_19,0)
		-- 投资数量置掩码
		Task_AddStatistic(nEvent_20,nType_20,nNumber,1)
		Task_SetStcTimestamp(nEvent_20,nType_20,0)
		
		nData_19 = Get_UserStatisticValue(nEvent_19,nType_19)
		local nData_20 = Get_UserStatisticValue(nEvent_20,nType_20)
		
		-- 是否投资5次
		if nData_20 >= 5 and nData_22 ~= 1 then
			Task_SetStatistic(nEvent_22,nType_22,1,1)
			Task_SetStcTimestamp(nEvent_22,nType_22,0)
			RewardTemplate_UseItem(tLuckyTree_Reward["GetShareholderReward"][nData_19])
			Sys_MsgBox(tLuckyTree_Text[105]["GetShareholderReward"][nData_19])
		end
		
		-- 设置排行榜
		RankingFunc_SetInfo(nNpcId,nData_20)
		User_TalkChannel2005(string.format(tLuckyTree_Text[2005]["HandIn"],nNumber,nData_20))
		
		for i=1,nNumber do
			-- 获得过10次返利奖励则不给奖励
			nData_21 = Get_UserStatisticValue(nEvent_21,nType_21)
			if nData_21 >= 10 then
				-- 给光效
				User_EffectAdd("self",tLuckyTree_Cont["Effect"])
				LinkNpcGossipFunc_New(nNpcId,"1-1")
				return
			end
			
			local nFlag,tAward = Probabil_RandomAward(tLuckyTree_Random["HandInCoin"],1)
			local nNum = tAward[1]["tAward"][1]["Num"]
			if nNum == 1 then
				-- 投资返利获奖次数+1
				Task_AddStatistic(nEvent_21,nType_21,1,1)
				Task_SetStcTimestamp(nEvent_21,nType_21,0)
				
				RewardTemplate_UseItem(tLuckyTree_Reward["Rebate"][nNpcId])
			end
		end
		
		-- 给光效
		User_EffectAdd("self",tLuckyTree_Cont["Effect"])
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
end

-- 使用1-3名股东分红礼包
function LuckyTree_UseShareholderPack(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tLuckyTree_Reward,nItemId)
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tLuckyTree_Text[105]["FullBag"],nSpace))
		return
	end
	
	-- 删物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tLuckyTree_Reward,nItemId)
	end
end

-- 每两小时出全服公告
function LuckyTree_BroadCast()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		return false
	end
	
	for i,v in ipairs(tLuckyTree_Cont["nRankIndex"]) do
		local nGlobalId = tRankingFunc_Info[v]["BeforeGlobal"][1]
		local nScore = Get_SysDynaGlobalData(nGlobalId,0)
		local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,0)
		if nScore == 0 then
			return
		else
			Sys_TalkBroadcast(string.format(tLuckyTree_Text["BroadCast"]["Winner"][v],sUserName))
		end
	end
end

-- 领取股东分红
function LuckyTree_GetShareholderReward(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nEvent_19 = tLuckyTree_Stc[19]["EventType"]
	local nType_19 = tLuckyTree_Stc[19]["DataType"]
	local nEvent_20 = tLuckyTree_Stc[20]["EventType"]
	local nType_20 = tLuckyTree_Stc[20]["DataType"]
	local nEvent_22 = tLuckyTree_Stc[22]["EventType"]
	local nType_22 = tLuckyTree_Stc[22]["DataType"]
	
	-- 隔天重置掩码
	if Task_ChkStcValue(nEvent_20,nType_20,">=",5) then
		if LuckyTree_ClearStc() then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	else
		LuckyTree_ClearStc()
	end
	
	local nData_19 = Get_UserStatisticValue(nEvent_19,nType_19)
	local nData_20 = Get_UserStatisticValue(nEvent_20,nType_20)
	local nData_22 = Get_UserStatisticValue(nEvent_22,nType_22)
	
	-- 是否投资5次
	if nData_20 < 5 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	elseif nData_20 >= 5 and nData_19 ~= 0 then
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tLuckyTree_Reward["GetShareholderReward"][nData_19])
		if not User_CheckLeftSpace(nSpace) then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
		
		Task_SetStatistic(nEvent_22,nType_22,1,1)
		Task_SetStcTimestamp(nEvent_22,nType_22,0)
		RewardTemplate_UseItem(tLuckyTree_Reward["GetShareholderReward"][nData_19])
	end
end

-- 完成日常+国境类任务
function LuckyTree_FinishTask(nIndex,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then
		return false
	end
	
	-- 隔天重置掩码
	local nFlag = 0
	for i=1,tLuckyTree_Stc["Total"] do
		local nEvent = tLuckyTree_Stc[i]["EventType"]
		local nType = tLuckyTree_Stc[i]["DataType"]
		
		-- 隔天重置掩码
		if Task_StcInterval(nEvent,nType,1,4,nNowUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nNowUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
			nFlag = 1
		end
	end
	
	if nFlag == 1 then
		return false
	end
	
	-- 判断是否接取活动任务
	for i=4,8 do
		local nEvent = tLuckyTree_Stc[i]["EventType"]
		local nType = tLuckyTree_Stc[i]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
		if nData == nIndex then
			local nEvent_1 = tLuckyTree_Stc[1]["EventType"]
			local nType_1 = tLuckyTree_Stc[1]["DataType"]
			local nEvent_11 = tLuckyTree_Stc[11]["EventType"]
			local nType_11 = tLuckyTree_Stc[11]["DataType"]
			local nData11 = Get_UserStatisticValue(nEvent_11,nType_11,nNowUserId)
			local nCompleteFlag = tLuckyTree_Cont["Task"][nData]
			
			if Sys_ParseNumbersContain(nCompleteFlag,nData11) then 
				return
			end
			
			-- 置任务掩码为完成状态
			Task_AddStatistic(nEvent_1,nType_1,1,1,nNowUserId)
			Task_SetStcTimestamp(nEvent_1,nType_1,0,nNowUserId)
			Task_AddStatistic(nEvent_11,nType_11,nCompleteFlag,1,nNowUserId)
			Task_SetStcTimestamp(nEvent_11,nType_11,0,nNowUserId)
			return
		end
	end
end

-- 使用返利礼包
function LuckyTree_UseRandomPack(nItemId)
	-- 使用物品检测
	if not LuckyTree_UseItemChk(nItemId) then
		return
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tLuckyTree_Reward,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tLuckyTree_Text[105]["FullBag"],nSpace))
		return
	end
	
	-- 删物品给奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tLuckyTree_Reward,nItemId)
	end
end

-- 超链接
function LuckyTree_Hyperlink(nNpcId,nIndex)
	-- 活动时间检测
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) then 
		return
	end
	
	Sys_MsgBox(tLuckyTree_Text[105]["PathFind"],"LuckyTree_PathFind</N>" .. nNpcId .. "</N>" .. nIndex,nil)
end

-- 上线给直升80级礼包
function LuckyTree_GivePack()
	-- 判断拉斯维加斯服
	local nGlobalId = tLuckyTree_Cont["Lasvegas"]["GlobalId"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId,0)
	
	if nGlobalData ~= 0 then
		return false
	end
	
	-- 判断等级与转世·超过80级或转世则不给
	local nUserId = Get_UserId()
	
	if User_JudgeLevelAndMetempsychosis(tLuckyTree_Cont["Lasvegas"]["Level"],tLuckyTree_Cont["Lasvegas"]["Metempsychosis"],nUserId) then
		return false
	end
	
	-- 判断是否已获得
	local nEvent_Pack = tLuckyTree_Stc["Pack"]["EventType"]
	local nType_Pack = tLuckyTree_Stc["Pack"]["DataType"]
	
	if Task_ChkStcValue(nEvent_Pack,nType_Pack,"==",1,nUserId) then
		return false
	end
	
	Task_SetStatistic(nEvent_Pack,nType_Pack,1,1,nUserId)
	Task_SetStcTimestamp(nEvent_Pack,nType_Pack,0,nUserId)
	
	local nItemId = tLuckyTree_Reward["Login"]["Id"]
	local sAttr = tLuckyTree_Reward["Login"]["Attr"]
	Item_AddNewItem(nItemId,sAttr,nUserId)
	User_TalkChannel2005(tLuckyTree_Text[2005]["Login"],nUserId)
end

----------------------------------------模板部分-------------------------------------
-------------------------------NPC模板
-- 幸运树 22669
tNpcFace[3543] = 1387
tNpcGossip[22669] = tNpcGossip[22669] or DefaultNpc:new{}
tNpcGossip[22669]["OptionHidden"] = 1
tNpcGossip[22669]["DialogueText"] = tLuckyTree_Text[22669]

-- 活动前
tNpcGossip[22669]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[22669]["tOption1-1"] = {111}
tNpcGossip[22669]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["LuckyTree"]["BeforeTime"])
end

-- 活动后
tNpcGossip[22669]["Text1-2"] = {121,122,123}
tNpcGossip[22669]["tOption1-2"] = {121}
tNpcGossip[22669]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["LuckyTree"]["AfterTime"])
end

-- 活动中（等级不足）
tNpcGossip[22669]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[22669]["tOption1-3"] = {131}
tNpcGossip[22669]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tLuckyTree_Cont["Level"],tLuckyTree_Cont["Metempsychosis"])
end

-- 活动中（满足参与条件并且未完成所有小任务）
tNpcGossip[22669]["Text1-4"] = {141,142,143,144,145,146,147}
tNpcGossip[22669]["tOption1-4"] = {141,142,143}
tNpcGossip[22669]["ChkFunc1-4"] = function ()
	local nEvent_1 = tLuckyTree_Stc[1]["EventType"]
	local nType_1 = tLuckyTree_Stc[1]["DataType"]
	local nLimit_1 = tLuckyTree_Stc[1]["Limit"]
	local nEvent_2 = tLuckyTree_Stc[2]["EventType"]
	local nType_2 = tLuckyTree_Stc[2]["DataType"]
	local nLimit_2 = tLuckyTree_Stc[2]["Limit"]
	
	-- 判断活动时间与等级
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) or not User_JudgeLevelAndMetempsychosis(tLuckyTree_Cont["Level"],tLuckyTree_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 隔天重置掩码
	LuckyTree_ClearStc()
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	-- 判断是否完成所有小任务
	if nData_1 == nLimit_1 then
		return false
	end
	
	-- 判断是否有未领取的幸运果
	if nData_2 < nData_1 then
		tNpcGossip[22669]["tOption1-4"] = {142,143}
	else
		tNpcGossip[22669]["tOption1-4"] = {141,143}
	end
	
	return true
end

-- 活动中（满足参与条件并且完成所有小任务）
tNpcGossip[22669]["Text1-5"] = {151,152,153,154,155,156,157}
tNpcGossip[22669]["tOption1-5"] = {151,152}
tNpcGossip[22669]["ChkFunc1-5"] = function ()
	-- 判断活动时间与等级
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) or not User_JudgeLevelAndMetempsychosis(tLuckyTree_Cont["Level"],tLuckyTree_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 隔天重置掩码
	LuckyTree_ClearStc()
	
	local nEvent_1 = tLuckyTree_Stc[1]["EventType"]
	local nType_1 = tLuckyTree_Stc[1]["DataType"]
	local nLimit_1 = tLuckyTree_Stc[1]["Limit"]
	local nEvent_2 = tLuckyTree_Stc[2]["EventType"]
	local nType_2 = tLuckyTree_Stc[2]["DataType"]
	local nLimit_2 = tLuckyTree_Stc[2]["Limit"]
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	-- 判断是否完成所有小任务
	if nData_1 ~= nLimit_1 then
		return false
	end
	
	-- 判断是否有未领取的幸运果
	if nData_2 < nData_1 then
		tNpcGossip[22669]["tOption1-5"] = {151,152}
	else
		tNpcGossip[22669]["tOption1-5"] = {152}
	end
	
	return true
end

tNpcGossip[22669]["OptionFunc141"] = "LuckyTree_ShowTask</N>22669" 
tNpcGossip[22669]["OptionFunc142"] = "LuckyTree_ShowTask</N>22669" 
tNpcGossip[22669]["OptionFunc151"] = "LuckyTree_OneKeyGetLuckFruit</N>22669</N>1" 


-- 获取生命之源（显示任务列表）
tNpcGossip[22669]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tNpcGossip[22669]["tOption2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[22669]["ChkFunc2-1"] = function ()
	-- 判断活动时间与等级
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) or not User_JudgeLevelAndMetempsychosis(tLuckyTree_Cont["Level"],tLuckyTree_Cont["Metempsychosis"]) then
		return false
	end
	
	local nEvent_1 = tLuckyTree_Stc[1]["EventType"]
	local nType_1 = tLuckyTree_Stc[1]["DataType"]
	local nEvent_2 = tLuckyTree_Stc[2]["EventType"]
	local nType_2 = tLuckyTree_Stc[2]["DataType"]
	local nEvent_3 = tLuckyTree_Stc[3]["EventType"]
	local nType_3 = tLuckyTree_Stc[3]["DataType"]
	
	-- 隔天重置掩码
	if LuckyTree_ClearStc() then
		User_TalkChannel2005(tLuckyTree_Text[2005]["Reset"])
		return false
	end
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3)
	
	tNpcGossip[22669]["Text211"] = string.format(tLuckyTree_Text[22669]["Text211"],nData_3)
	for i=4,8 do
		local nEvent = tLuckyTree_Stc[i]["EventType"]
		local nType = tLuckyTree_Stc[i]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		
		local sText = string.format(tLuckyTree_Text[22669]["Text21" .. i-1],tLuckyTree_Text["Task"][nData])
		
		-- 判断任务1-5是否已完成以及是否已摘取幸运果
		local nEvent_10 = tLuckyTree_Stc[10]["EventType"]
		local nType_10 = tLuckyTree_Stc[10]["DataType"]
		local nEvent_11 = tLuckyTree_Stc[11]["EventType"]
		local nType_11 = tLuckyTree_Stc[11]["DataType"]
		local nEvent_12 = tLuckyTree_Stc[12]["EventType"]
		local nType_12 = tLuckyTree_Stc[12]["DataType"]
		local nEvent_13 = tLuckyTree_Stc[13]["EventType"]
		local nType_13 = tLuckyTree_Stc[13]["DataType"]
	
		local nData10 = Get_UserStatisticValue(nEvent_10,nType_10)
		local nData11 = Get_UserStatisticValue(nEvent_11,nType_11)
		local nData12 = Get_UserStatisticValue(nEvent_12,nType_12)
		local nData13 = Get_UserStatisticValue(nEvent_13,nType_13)
	
		if nData <= 17 and Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nData],nData10) then
			if nData <= 17 and Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nData],nData12) then  
				tNpcGossip[22669]["Text21" .. i-1] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_Alignment(sText,0,tLuckyTree_Text["Task"]["Complete"],52))
				tNpcGossip[22669]["Option21" .. i-2] = string.format(tLuckyTree_Text["NewDialog"]["Text222"],tLuckyTree_Text[22669]["Option21" .. i-2],tLuckyTree_Text["Task"]["Complete"])
			else
				tNpcGossip[22669]["Text21" .. i-1] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_Alignment(sText,0,tLuckyTree_Text["Task"]["Pick"],52))
				tNpcGossip[22669]["Option21" .. i-2] = string.format(tLuckyTree_Text["NewDialog"]["Text222"],tLuckyTree_Text[22669]["Option21" .. i-2],tLuckyTree_Text["Task"]["Pick"])
			end
		elseif nData > 17 and Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nData],nData11) then 
			if nData > 17 and Sys_ParseNumbersContain(tLuckyTree_Cont["Task"][nData],nData13) then 
				tNpcGossip[22669]["Text21" .. i-1] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_Alignment(sText,0,tLuckyTree_Text["Task"]["Complete"],52))
				tNpcGossip[22669]["Option21" .. i-2] = string.format(tLuckyTree_Text["NewDialog"]["Text222"],tLuckyTree_Text[22669]["Option21" .. i-2],tLuckyTree_Text["Task"]["Complete"])
			else
				tNpcGossip[22669]["Text21" .. i-1] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_Alignment(sText,0,tLuckyTree_Text["Task"]["Pick"],52))
				tNpcGossip[22669]["Option21" .. i-2] = string.format(tLuckyTree_Text["NewDialog"]["Text222"],tLuckyTree_Text[22669]["Option21" .. i-2],tLuckyTree_Text["Task"]["Pick"])
			end
		else
			tNpcGossip[22669]["Text21" .. i-1] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],sText)
			tNpcGossip[22669]["Option21" .. i-2] = tLuckyTree_Text[22669]["Option21" .. i-2]
		end
	end
	
	-- 判断是否有未领取的幸运果
	if nData_2 < nData_1 then
		-- 判断是否完成该轮所有任务
		if nData_3*5 == nData_1 then
			if nData_3 == 3 then
				tNpcGossip[22669]["tOption2-1"] = {211,212,213,214,215,216}
			else
				tNpcGossip[22669]["tOption2-1"] = {211,212,213,214,215,216,218}
			end
		else
			tNpcGossip[22669]["tOption2-1"] = {211,212,213,214,215,216,217}
		end
	else
		-- 判断是否完成该轮所有任务
		if nData_3*5 == nData_1 then
			if nData_3 == 3 then
				tNpcGossip[22669]["tOption2-1"] = {212,213,214,215,216}
			else
				tNpcGossip[22669]["tOption2-1"] = {212,213,214,215,216,218}
			end
		else
			tNpcGossip[22669]["tOption2-1"] = {212,213,214,215,216,217}
		end
	end
	
	return true
end

tNpcGossip[22669]["OptionFunc211"] = "LuckyTree_OneKeyGetLuckFruit</N>22669</N>2"
tNpcGossip[22669]["OptionFunc212"] = "LuckyTree_TaskDetail</N>22669</N>4"
tNpcGossip[22669]["OptionFunc213"] = "LuckyTree_TaskDetail</N>22669</N>5"
tNpcGossip[22669]["OptionFunc214"] = "LuckyTree_TaskDetail</N>22669</N>6"
tNpcGossip[22669]["OptionFunc215"] = "LuckyTree_TaskDetail</N>22669</N>7"
tNpcGossip[22669]["OptionFunc216"] = "LuckyTree_TaskDetail</N>22669</N>8"
tNpcGossip[22669]["OptionFunc217"] = "LuckyTree_RefreshSomeTask</N>22669"
tNpcGossip[22669]["OptionFunc218"] = "LuckyTree_RefreshNextRoundTask</N>22669"


-- 一键领取背包满
tNpcGossip[22669]["Text3-1"] = {311}
tNpcGossip[22669]["tOption3-1"] = {311}

-- 任务已完成
tNpcGossip[22669]["Text3-2"] = {321,322,323,324,325}
tNpcGossip[22669]["tOption3-2"] = {321,322}

-- 任务未完成--使用物品类任务
tNpcGossip[22669]["Text3-3"] = {331,332,333,334,335}
tNpcGossip[22669]["tOption3-3"] = {331}

-- 任务未完成--收集类任务
tNpcGossip[22669]["Text3-4"] = {341,342,343,344,345}
tNpcGossip[22669]["tOption3-4"] = {341,342}

-- 天石不足
tNpcGossip[22669]["Text3-5"] = {351}
tNpcGossip[22669]["tOption3-5"] = {351}

-- 天石二次确认
tNpcGossip[22669]["Text3-6"] = {361}
tNpcGossip[22669]["tOption3-6"] = {361,362}

-- tNpcGossip[22669]["OptionFunc321"] = "LuckyTree_GetLuckyFruit</N>22669"
tNpcGossip[22669]["OptionPoint322"] = "2-1"
tNpcGossip[22669]["OptionPoint331"] = "2-1"
-- tNpcGossip[22669]["OptionFunc341"] = "LuckyTree_HandInItem</N>22669"
tNpcGossip[22669]["OptionPoint342"] = "2-1"
tNpcGossip[22669]["OptionFunc361"] = "LuckyTree_RefreshConfirm</N>22669"


-- 物品不足
tNpcGossip[22669]["Text4-1"] = {411}
tNpcGossip[22669]["tOption4-1"] = {411}

-- 上交成功
tNpcGossip[22669]["Text4-2"] = {421}
tNpcGossip[22669]["tOption4-2"] = {421,422}

tNpcGossip[22669]["OptionPoint411"] = "2-1"
tNpcGossip[22669]["OptionPoint422"] = "2-1"

-- 巴飞特 22670
tNpcFace[3544] = 1388
tNpcGossip[22670] = tNpcGossip[22670] or DefaultNpc:new{}
tNpcGossip[22670]["OptionHidden"] = 1
tNpcGossip[22670]["DialogueText"] = tLuckyTree_Text[22670]

-- 活动前
tNpcGossip[22670]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[22670]["tOption1-1"] = {111}
tNpcGossip[22670]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["LuckyTree"]["BeforeTime"])
end

-- 活动后
tNpcGossip[22670]["Text1-2"] = {121,122,123}
tNpcGossip[22670]["tOption1-2"] = {121}
tNpcGossip[22670]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["LuckyTree"]["AfterTime"])
end

-- 活动中（等级不足）
tNpcGossip[22670]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[22670]["tOption1-3"] = {131}
tNpcGossip[22670]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tLuckyTree_Cont["Level"],tLuckyTree_Cont["Metempsychosis"])
end

-- 活动中（等级达到）
tNpcGossip[22670]["Text1-4"] = {141,142,143,147,144,145,146}
tNpcGossip[22670]["tOption1-4"] = {141,142,143}
tNpcGossip[22670]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tLuckyTree_Cont["Level"],tLuckyTree_Cont["Metempsychosis"])
end

tNpcGossip[22670]["OptionFunc141"] = "LuckyTree_IntoInvestMap</N>22670</N>10281"
tNpcGossip[22670]["OptionFunc142"] = "LuckyTree_IntoInvestMap</N>22670</N>10283"
tNpcGossip[22670]["OptionFunc143"] = "LuckyTree_IntoInvestMap</N>22670</N>10282"


-- 淘气鱼塘
tNpcFace[3539] = 1394
tNpcGossip[22692] = tNpcGossip[22692] or DefaultNpc:new{}
tNpcGossip[22692]["OptionHidden"] = 1
tNpcGossip[22692]["DialogueText"] = tLuckyTree_Text[22692]

-- 活动中
tNpcGossip[22692]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1112,1111}
tNpcGossip[22692]["tOption1-1"] = {111,112,113}
tNpcGossip[22692]["ChkFunc1-1"] = function ()
	-- 检测活动时间与等级
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) or not User_JudgeLevelAndMetempsychosis(tLuckyTree_Cont["Level"],tLuckyTree_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 隔天重置掩码
	LuckyTree_ClearStc()
	
	local tRank = RankingFunc_GetNowData(22692)
	
	for i=1,3 do
		if tRank[i] == nil then
			tNpcGossip[22692]["Text11" .. i+4] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_CenterAline(tLuckyTree_Text[22692]["Text11" .. i+4],4,tLuckyTree_Text["NoData"],16,tLuckyTree_Text["NoData"],28,tLuckyTree_Text[22692]["Reward"][i],56))
		elseif tRank[i]["Score"] >= 0 then
			local nScore = tRank[i]["Score"]
			local sUserName = tRank[i]["UserName"]
			tNpcGossip[22692]["Text11" .. i+4] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_CenterAline(tLuckyTree_Text[22692]["Text11" .. i+4],4,tostring(nScore),16,sUserName,28,tLuckyTree_Text[22692]["Reward"][i],56))
		end
	end
	
	local nEvent_19 = tLuckyTree_Stc[19]["EventType"]
	local nType_19 = tLuckyTree_Stc[19]["DataType"]
	local nData_19 = Get_UserStatisticValue(nEvent_19,nType_19)
	local nEvent_20 = tLuckyTree_Stc[20]["EventType"]
	local nType_20 = tLuckyTree_Stc[20]["DataType"]
	local nData_20 = Get_UserStatisticValue(nEvent_20,nType_20)
	
	-- 判断是否投资该产业
	if nData_19 == 22692 then
		tNpcGossip[22692]["Text1111"] = string.format(tLuckyTree_Text[22692]["Text1111"],nData_20)
	else
		tNpcGossip[22692]["Text1111"] = string.format(tLuckyTree_Text[22692]["Text1111"],0)
	end
	
	local nGlobalId = tRankingFunc_Info[22692]["BeforeGlobal"][1]
	local nScore = Get_SysDynaGlobalData(nGlobalId,0)
	local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,0)
	if nScore == 0 then
		tNpcGossip[22692]["Text1112"] = string.format(tLuckyTree_Text[22692]["Text1112"],tLuckyTree_Text["NoData"])
	else
		tNpcGossip[22692]["Text1112"] = string.format(tLuckyTree_Text[22692]["Text1112"],sUserName)
	end
	
	return true
end

tNpcGossip[22692]["OptionFunc111"] = "LuckyTree_HandInCoin</N>22692</N>5"
tNpcGossip[22692]["OptionFunc112"] = "LuckyTree_HandInCoin</N>22692</N>10"
tNpcGossip[22692]["OptionFunc113"] = "LuckyTree_BackToTwinCity</N>1"

-- 已投资其他产业
tNpcGossip[22692]["Text2-1"] = {211}
tNpcGossip[22692]["tOption2-1"] = {211}

-- 没有幸运币
tNpcGossip[22692]["Text2-2"] = {221,222}
tNpcGossip[22692]["tOption2-2"] = {221}

-- 背包已满
tNpcGossip[22692]["Text2-3"] = {231}
tNpcGossip[22692]["tOption2-3"] = {231}


-- 摇星果林
tNpcFace[3541] = 1395
tNpcGossip[22694] = tNpcGossip[22694] or DefaultNpc:new{}
tNpcGossip[22694]["OptionHidden"] = 1
tNpcGossip[22694]["DialogueText"] = tLuckyTree_Text[22694]

-- 活动中
tNpcGossip[22694]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1112,1111}
tNpcGossip[22694]["tOption1-1"] = {111,112,113}
tNpcGossip[22694]["ChkFunc1-1"] = function ()
	-- 检测活动时间与等级
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) or not User_JudgeLevelAndMetempsychosis(tLuckyTree_Cont["Level"],tLuckyTree_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 隔天重置掩码
	LuckyTree_ClearStc()
	
	local tRank = RankingFunc_GetNowData(22694)
	
	for i=1,3 do
		if tRank[i] == nil then
			tNpcGossip[22694]["Text11" .. i+4] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_CenterAline(tLuckyTree_Text[22694]["Text11" .. i+4],4,tLuckyTree_Text["NoData"],16,tLuckyTree_Text["NoData"],28,tLuckyTree_Text[22694]["Reward"][i],56))
		elseif tRank[i]["Score"] >= 0 then
			local nScore = tRank[i]["Score"]
			local sUserName = tRank[i]["UserName"]
			tNpcGossip[22694]["Text11" .. i+4] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_CenterAline(tLuckyTree_Text[22694]["Text11" .. i+4],4,tostring(nScore),16,sUserName,28,tLuckyTree_Text[22694]["Reward"][i],56))
		end
	end
	
	local nEvent_19 = tLuckyTree_Stc[19]["EventType"]
	local nType_19 = tLuckyTree_Stc[19]["DataType"]
	local nData_19 = Get_UserStatisticValue(nEvent_19,nType_19)
	local nEvent_20 = tLuckyTree_Stc[20]["EventType"]
	local nType_20 = tLuckyTree_Stc[20]["DataType"]
	local nData_20 = Get_UserStatisticValue(nEvent_20,nType_20)
	
	-- 判断是否投资该产业
	if nData_19 == 22694 then
		tNpcGossip[22694]["Text1111"] = string.format(tLuckyTree_Text[22694]["Text1111"],nData_20)
	else
		tNpcGossip[22694]["Text1111"] = string.format(tLuckyTree_Text[22694]["Text1111"],0)
	end
	
	local nGlobalId = tRankingFunc_Info[22694]["BeforeGlobal"][1]
	local nScore = Get_SysDynaGlobalData(nGlobalId,0)
	local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,0)
	if nScore == 0 then
		tNpcGossip[22694]["Text1112"] = string.format(tLuckyTree_Text[22694]["Text1112"],tLuckyTree_Text["NoData"])
	else
		tNpcGossip[22694]["Text1112"] = string.format(tLuckyTree_Text[22694]["Text1112"],sUserName)
	end
	
	return true
end

tNpcGossip[22694]["OptionFunc111"] = "LuckyTree_HandInCoin</N>22694</N>5"
tNpcGossip[22694]["OptionFunc112"] = "LuckyTree_HandInCoin</N>22694</N>10"
tNpcGossip[22694]["OptionFunc113"] = "LuckyTree_BackToTwinCity</N>1"

-- 已投资其他产业
tNpcGossip[22694]["Text2-1"] = {211}
tNpcGossip[22694]["tOption2-1"] = {211}

-- 没有幸运币
tNpcGossip[22694]["Text2-2"] = {221,222}
tNpcGossip[22694]["tOption2-2"] = {221}

-- 背包已满
tNpcGossip[22694]["Text2-3"] = {231}
tNpcGossip[22694]["tOption2-3"] = {231}



-- 聚宝农田
tNpcFace[3540] = 1396
tNpcGossip[22693] = tNpcGossip[22693] or DefaultNpc:new{}
tNpcGossip[22693]["OptionHidden"] = 1
tNpcGossip[22693]["DialogueText"] = tLuckyTree_Text[22693]

-- 活动中
tNpcGossip[22693]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1112,1111}
tNpcGossip[22693]["tOption1-1"] = {111,112,113}
tNpcGossip[22693]["ChkFunc1-1"] = function ()
	-- 检测活动时间与等级
	if not Sys_ChkFullTime(tActivityTime["LuckyTree"]["ActivityTime"]) or not User_JudgeLevelAndMetempsychosis(tLuckyTree_Cont["Level"],tLuckyTree_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 隔天重置掩码
	LuckyTree_ClearStc()
	
	local tRank = RankingFunc_GetNowData(22693)
	
	for i=1,3 do
		if tRank[i] == nil then
			tNpcGossip[22693]["Text11" .. i+4] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_CenterAline(tLuckyTree_Text[22693]["Text11" .. i+4],4,tLuckyTree_Text["NoData"],16,tLuckyTree_Text["NoData"],28,tLuckyTree_Text[22693]["Reward"][i],56))
		elseif tRank[i]["Score"] >= 0 then
			local nScore = tRank[i]["Score"]
			local sUserName = tRank[i]["UserName"]
			tNpcGossip[22693]["Text11" .. i+4] = string.format(tLuckyTree_Text["NewDialog"]["Text111"],Sys_CenterAline(tLuckyTree_Text[22693]["Text11" .. i+4],4,tostring(nScore),16,sUserName,28,tLuckyTree_Text[22693]["Reward"][i],56))
		end
	end
	
	local nEvent_19 = tLuckyTree_Stc[19]["EventType"]
	local nType_19 = tLuckyTree_Stc[19]["DataType"]
	local nData_19 = Get_UserStatisticValue(nEvent_19,nType_19)
	local nEvent_20 = tLuckyTree_Stc[20]["EventType"]
	local nType_20 = tLuckyTree_Stc[20]["DataType"]
	local nData_20 = Get_UserStatisticValue(nEvent_20,nType_20)
	
	-- 判断是否投资该产业
	if nData_19 == 22693 then
		tNpcGossip[22693]["Text1111"] = string.format(tLuckyTree_Text[22693]["Text1111"],nData_20)
	else
		tNpcGossip[22693]["Text1111"] = string.format(tLuckyTree_Text[22693]["Text1111"],0)
	end
	
	local nGlobalId = tRankingFunc_Info[22693]["BeforeGlobal"][1]
	local nScore = Get_SysDynaGlobalData(nGlobalId,0)
	local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,0)
	if nScore == 0 then
		tNpcGossip[22693]["Text1112"] = string.format(tLuckyTree_Text[22693]["Text1112"],tLuckyTree_Text["NoData"])
	else
		tNpcGossip[22693]["Text1112"] = string.format(tLuckyTree_Text[22693]["Text1112"],sUserName)
	end
	
	return true
end

tNpcGossip[22693]["OptionFunc111"] = "LuckyTree_HandInCoin</N>22693</N>5"
tNpcGossip[22693]["OptionFunc112"] = "LuckyTree_HandInCoin</N>22693</N>10"
tNpcGossip[22693]["OptionFunc113"] = "LuckyTree_BackToTwinCity</N>1"

-- 已投资其他产业
tNpcGossip[22693]["Text2-1"] = {211}
tNpcGossip[22693]["tOption2-1"] = {211}

-- 没有幸运币
tNpcGossip[22693]["Text2-2"] = {221,222}
tNpcGossip[22693]["tOption2-2"] = {221}

-- 背包已满
tNpcGossip[22694]["Text2-3"] = {231}
tNpcGossip[22694]["tOption2-3"] = {231}



-------------------------------物品模板
-- 物品头像
-- 幸运树的枝叶
tItemFace[3307581] = 1380

-- 幸运果
tItem[3307582] = tItem[3307582] or {}
tItem[3307582]["Function"] = function(nItemId,sItemName)
	LuckyTree_UseLuckFruit(nItemId)
end

-- 幸运币
tItem[3307583] = tItem[3307583] or {}
tItem[3307583]["Function"] = function(nItemId,sItemName)
	LuckyTree_UseLuckCoin(nItemId)
end

-- 1500气力值精装包
tItem[3307584] = tItem[3307584] or {}
tItem[3307584]["Function"] = function(nItemId,sItemName)
	LuckyTree_UsePack(nItemId)
end

-- 使用池塘、果林1-3名股东分红礼包
tItem[3307666] = tItem[3307666] or {}
tItem[3307667] = tItem[3307666] or {}
tItem[3307668] = tItem[3307666] or {}
tItem[3307669] = tItem[3307666] or {}
tItem[3307670] = tItem[3307666] or {}
tItem[3307671] = tItem[3307666] or {}
tItem[3307666]["Function"] = function(nItemId,sItemName)
	LuckyTree_UseShareholderPack(nItemId)
end

-- 使用农林1-3名股东分红礼包
tItem[3307672] = tItem[3307672] or {}
tItem[3307673] = tItem[3307672] or {}
tItem[3307674] = tItem[3307672] or {}

-- 使用小股东礼包
tItem[3307677] = tItem[3307672] or {}
tItem[3307678] = tItem[3307672] or {}
tItem[3307679] = tItem[3307672] or {}
tItem[3307672]["Function"] = function(nItemId,sItemName)
	LuckyTree_UsePack(nItemId)
end

-- 2颗明亮星陨石极运包
tItem[3307675] = tItem[3307675] or {}
-- 5颗明亮星陨石极运包
tItem[3307676] = tItem[3307675] or {}
tItem[3307675]["Function"] = function(nItemId,sItemName)
	LuckyTree_UsePack(nItemId)
end

-- 鱼塘返利礼包
tItem[3307906] = tItem[3307906] or {}
-- 果林返利礼包
tItem[3307907] = tItem[3307906] or {}
-- 农田返利礼包
tItem[3307908] = tItem[3307906] or {}
tItem[3307906]["Function"] = function(nItemId,sItemName)
	LuckyTree_UseRandomPack(nItemId)
end

-- 新服升级令
tItem[3310439] = tItem[3310439] or {}
tItem[3310439]["Function"] = function(nItemId,sItemName)
	-- 判断拉斯维加斯服
	local nGlobalId = tLuckyTree_Cont["Lasvegas"]["GlobalId"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId,0)
	
	if nGlobalData ~= 0 then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 记录删除log
			local sLog = string.format(tLuckyTree_Log["Delete"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return false
	end
	
	-- 判断等级与转世
	if User_JudgeLevelAndMetempsychosis(tLuckyTree_Cont["Lasvegas"]["Level"],tLuckyTree_Cont["Lasvegas"]["Metempsychosis"],nUserId) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 记录删除log
			local sLog = string.format(tLuckyTree_Log["Delete"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		
		if User_JudgeLevelAndMetempsychosis(0,1) then
			User_TalkChannel2005(tLuckyTree_Text[2005]["BeenReborn"])
		else
			User_TalkChannel2005(tLuckyTree_Text[2005]["Already80"])
		end
		
		return false
	end
	
	RewardTemplate_UseItemAndMsg(tLuckyTree_Reward[nItemId])
	local nUserLevel = Get_UserLevel()
	User_TalkChannel2005(string.format(tLuckyTree_Text[2005]["UpLev"],nUserLevel))
end


-------------------------------怪物掉落
local tLuckyTree_Monster = {}
	-- 任务怪
	tLuckyTree_Monster[1] = {}
	tLuckyTree_Monster[1]["Function"] = LuckyTree_ChkKillTask
	tLuckyTree_Monster[1]["MonsterId"] = {1,2,9,10,14}
	table.insert(tMonsterDrop_AreaLoad,tLuckyTree_Monster[1])
	
-------------------------------陷阱模板
tTrap[1925] = tTrap[1925] or {}
tTrap[1925]["Function"] = function(nTrapId,nTrapType)
	LuckyTree_BackToTwinCity(1)
end


------------------------------时间自检
local tLuckyTree_OnTime = {}
	-- 每2小时全服公告
	tLuckyTree_OnTime[1] = {}
	tLuckyTree_OnTime[1]["Type"] = 2
	tLuckyTree_OnTime[1]["TimeType"] = 4
	tLuckyTree_OnTime[1]["Multiple"] = {}
	tLuckyTree_OnTime[1]["Multiple"][1]  = "00:00 00:00"
	tLuckyTree_OnTime[1]["Multiple"][2]  = "02:00 02:00"
	tLuckyTree_OnTime[1]["Multiple"][3]  = "04:00 04:00"
	tLuckyTree_OnTime[1]["Multiple"][4]  = "06:00 06:00"
	tLuckyTree_OnTime[1]["Multiple"][5]  = "08:00 08:00"
	tLuckyTree_OnTime[1]["Multiple"][6]  = "10:00 10:00"
	tLuckyTree_OnTime[1]["Multiple"][7]  = "12:00 12:00"
	tLuckyTree_OnTime[1]["Multiple"][8]  = "14:00 14:00"
	tLuckyTree_OnTime[1]["Multiple"][9]  = "16:00 16:00"
	tLuckyTree_OnTime[1]["Multiple"][10] = "18:00 18:00"
	tLuckyTree_OnTime[1]["Multiple"][11] = "20:00 20:00"
	tLuckyTree_OnTime[1]["Multiple"][12] = "22:00 22:00"
	tLuckyTree_OnTime[1]["Func"] = LuckyTree_BroadCast
	
table.insert(tSystemTime_InitialData,tLuckyTree_OnTime[1])

---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,LuckyTree_GivePack)
