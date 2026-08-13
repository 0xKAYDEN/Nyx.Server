------------------------------------------------------------------------------------
--Name:			180927[简体征服][任务脚本]无赠服务器神秘游商部分制作
--Purpose:		神秘游商
--Creator:		吴志宏
--Created:		2018-09-27
------------------------------------------------------------------------------------
-- 前缀
-- MysteryMerchant_

-- LogId 18000185

-- stc掩码说明 
-- stc	183,61	记录这一轮是否购买了珍宝
-- stc	183,62	记录玩家参与到第几轮
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,63	记录出售珍宝数
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,64	记录珍宝1的ID
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,65	记录珍宝2的ID
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,66	记录珍宝3的ID
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,67	记录珍宝4的ID
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,68	记录珍宝5的ID
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,69	记录珍宝6的ID
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,70	记录珍宝7的ID
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,71	记录珍宝8的ID
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,72	记录珍宝1的折扣
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,73	记录珍宝2的折扣
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,74	记录珍宝3的折扣
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,75	记录珍宝4的折扣
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,76	记录珍宝5的折扣
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,77	记录珍宝6的折扣
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,78	记录珍宝7的折扣
-- (18.10.23调整为global记录，取消这部分掩码使用)stc	183,79	记录珍宝8的折扣

-- 全局表说明
-- global 53003		记录npc信息	data0记录npc所在地图	data1记录第几轮	data3~data5记录珍宝6-8号是否出售
-- global 53026		记录珍宝出售情况	data1~data5记录珍宝1-5号是否出售
-- global 53036		记录出售物品		data1~data5记录珍宝1-5号ID
-- global 53037		记录出售物品		data1~data3记录珍宝6-8号ID	data5记录出售珍宝数
-- global 53038		记录出售物品折扣		data1~data5记录珍宝1-5号折扣
-- global 53039		记录出售物品折扣		data1~data3记录珍宝6-8号折扣

---------------------------------------------常量配置部分---------------------------------------
-- 常量表
local tMysteryMerchant_Cont = {}
	-- 价格
	tMysteryMerchant_Cont["Price"] = {}
	tMysteryMerchant_Cont["Price"][1088000] = 10000000
	tMysteryMerchant_Cont["Price"][700013] = 10000000
	tMysteryMerchant_Cont["Price"][721259] = 10000000
	tMysteryMerchant_Cont["Price"][720128] = 10000000
	tMysteryMerchant_Cont["Price"][711504] = 10000000
	tMysteryMerchant_Cont["Price"][3001045] = 20000000
	tMysteryMerchant_Cont["Price"][700073] = 20000000
	tMysteryMerchant_Cont["Price"][1100003] = 20000000
	tMysteryMerchant_Cont["Price"][711083] = 20000000
	tMysteryMerchant_Cont["Price"][722057] = 20000000
	tMysteryMerchant_Cont["Price"][730005] = 30000000
	tMysteryMerchant_Cont["Price"][3009002] = 30000000
	tMysteryMerchant_Cont["Price"][3001044] = 30000000
	tMysteryMerchant_Cont["Price"][3306507] = 30000000
	tMysteryMerchant_Cont["Price"][3002926] = 30000000
	
	-- Global
	tMysteryMerchant_Cont["Global"] = {}
	-- 记录npc信息
	tMysteryMerchant_Cont["Global"]["Npc"] = 53003
	-- 18.10.19修改————添加全服限制
	tMysteryMerchant_Cont["Global"]["Limit"] = 53026
	-- 18.10.23修改————Stc个人记录修改为Global全服统一记录
	tMysteryMerchant_Cont["Global"]["Item"] = {}
	tMysteryMerchant_Cont["Global"]["Item"][1] = 53036
	tMysteryMerchant_Cont["Global"]["Item"][2] = 53037
	tMysteryMerchant_Cont["Global"]["Discount"] = {}
	tMysteryMerchant_Cont["Global"]["Discount"][1] = 53038
	tMysteryMerchant_Cont["Global"]["Discount"][2] = 53039
	
	-- npc刷新坐标
	tMysteryMerchant_Cont["Coordinate"] = {}
	-- 清风原
	tMysteryMerchant_Cont["Coordinate"][10364] = {}
	tMysteryMerchant_Cont["Coordinate"][10364]["PosX"] = 543
	tMysteryMerchant_Cont["Coordinate"][10364]["PosY"] = 374
	-- 枫溪林
	tMysteryMerchant_Cont["Coordinate"][10365] = {}
	tMysteryMerchant_Cont["Coordinate"][10365]["PosX"] = 145
	tMysteryMerchant_Cont["Coordinate"][10365]["PosY"] = 277
	-- 绝情谷
	tMysteryMerchant_Cont["Coordinate"][10366] = {}
	tMysteryMerchant_Cont["Coordinate"][10366]["PosX"] = 474
	tMysteryMerchant_Cont["Coordinate"][10366]["PosY"] = 525
	-- 大漠
	tMysteryMerchant_Cont["Coordinate"][10367] = {}
	tMysteryMerchant_Cont["Coordinate"][10367]["PosX"] = 290
	tMysteryMerchant_Cont["Coordinate"][10367]["PosY"] = 488
	-- 芦花荡
	tMysteryMerchant_Cont["Coordinate"][10368] = {}
	tMysteryMerchant_Cont["Coordinate"][10368]["PosX"] = 774
	tMysteryMerchant_Cont["Coordinate"][10368]["PosY"] = 598
	-- 敦煌
	tMysteryMerchant_Cont["Coordinate"][10369] = {}
	tMysteryMerchant_Cont["Coordinate"][10369]["PosX"] = 490
	tMysteryMerchant_Cont["Coordinate"][10369]["PosY"] = 485
	-- 冰封地穴1
	tMysteryMerchant_Cont["Coordinate"][10370] = {}
	tMysteryMerchant_Cont["Coordinate"][10370]["PosX"] = 501
	tMysteryMerchant_Cont["Coordinate"][10370]["PosY"] = 500
	-- 冰封地穴2
	tMysteryMerchant_Cont["Coordinate"][10371] = {}
	tMysteryMerchant_Cont["Coordinate"][10371]["PosX"] = 400
	tMysteryMerchant_Cont["Coordinate"][10371]["PosY"] = 517
	-- 冰封地穴3
	tMysteryMerchant_Cont["Coordinate"][10372] = {}
	tMysteryMerchant_Cont["Coordinate"][10372]["PosX"] = 393
	tMysteryMerchant_Cont["Coordinate"][10372]["PosY"] = 489
	
	
local tMysteryMerchant_Stc = {}
	-- 记录这一轮是否购买了珍宝
	tMysteryMerchant_Stc[1] = {}
	tMysteryMerchant_Stc[1]["EventType"] = 183
	tMysteryMerchant_Stc[1]["DataType"] = 61
	tMysteryMerchant_Stc[1]["Clear"] = 1
	-- 记录玩家参与到第几轮
	tMysteryMerchant_Stc[2] = {}
	tMysteryMerchant_Stc[2]["EventType"] = 183
	tMysteryMerchant_Stc[2]["DataType"] = 62
	tMysteryMerchant_Stc[2]["Clear"] = 1
	-- 18.10.23调整为global记录，取消这部分掩码使用
	-- -- 记录出售珍宝数
	-- tMysteryMerchant_Stc[3] = {}
	-- tMysteryMerchant_Stc[3]["EventType"] = 183
	-- tMysteryMerchant_Stc[3]["DataType"] = 63
	-- -- 记录珍宝ID
	-- tMysteryMerchant_Stc["ItemId"]= {}
	-- tMysteryMerchant_Stc["ItemId"][1] = {}
	-- tMysteryMerchant_Stc["ItemId"][1]["EventType"] = 183
	-- tMysteryMerchant_Stc["ItemId"][1]["DataType"] = 64
	-- tMysteryMerchant_Stc["ItemId"][2] = {}
	-- tMysteryMerchant_Stc["ItemId"][2]["EventType"] = 183
	-- tMysteryMerchant_Stc["ItemId"][2]["DataType"] = 65
	-- tMysteryMerchant_Stc["ItemId"][3] = {}
	-- tMysteryMerchant_Stc["ItemId"][3]["EventType"] = 183
	-- tMysteryMerchant_Stc["ItemId"][3]["DataType"] = 66
	-- tMysteryMerchant_Stc["ItemId"][4] = {}
	-- tMysteryMerchant_Stc["ItemId"][4]["EventType"] = 183
	-- tMysteryMerchant_Stc["ItemId"][4]["DataType"] = 67
	-- tMysteryMerchant_Stc["ItemId"][5] = {}
	-- tMysteryMerchant_Stc["ItemId"][5]["EventType"] = 183
	-- tMysteryMerchant_Stc["ItemId"][5]["DataType"] = 68
	-- tMysteryMerchant_Stc["ItemId"][6] = {}
	-- tMysteryMerchant_Stc["ItemId"][6]["EventType"] = 183
	-- tMysteryMerchant_Stc["ItemId"][6]["DataType"] = 69
	-- tMysteryMerchant_Stc["ItemId"][7] = {}
	-- tMysteryMerchant_Stc["ItemId"][7]["EventType"] = 183
	-- tMysteryMerchant_Stc["ItemId"][7]["DataType"] = 70
	-- tMysteryMerchant_Stc["ItemId"][8] = {}
	-- tMysteryMerchant_Stc["ItemId"][8]["EventType"] = 183
	-- tMysteryMerchant_Stc["ItemId"][8]["DataType"] = 71
	-- -- 记录珍宝折扣
	-- tMysteryMerchant_Stc["Discount"]= {}
	-- tMysteryMerchant_Stc["Discount"][1] = {}
	-- tMysteryMerchant_Stc["Discount"][1]["EventType"] = 183
	-- tMysteryMerchant_Stc["Discount"][1]["DataType"] = 72
	-- tMysteryMerchant_Stc["Discount"][2] = {}
	-- tMysteryMerchant_Stc["Discount"][2]["EventType"] = 183
	-- tMysteryMerchant_Stc["Discount"][2]["DataType"] = 73
	-- tMysteryMerchant_Stc["Discount"][3] = {}
	-- tMysteryMerchant_Stc["Discount"][3]["EventType"] = 183
	-- tMysteryMerchant_Stc["Discount"][3]["DataType"] = 74
	-- tMysteryMerchant_Stc["Discount"][4] = {}
	-- tMysteryMerchant_Stc["Discount"][4]["EventType"] = 183
	-- tMysteryMerchant_Stc["Discount"][4]["DataType"] = 75
	-- tMysteryMerchant_Stc["Discount"][5] = {}
	-- tMysteryMerchant_Stc["Discount"][5]["EventType"] = 183
	-- tMysteryMerchant_Stc["Discount"][5]["DataType"] = 76
	-- tMysteryMerchant_Stc["Discount"][6] = {}
	-- tMysteryMerchant_Stc["Discount"][6]["EventType"] = 183
	-- tMysteryMerchant_Stc["Discount"][6]["DataType"] = 77
	-- tMysteryMerchant_Stc["Discount"][7] = {}
	-- tMysteryMerchant_Stc["Discount"][7]["EventType"] = 183
	-- tMysteryMerchant_Stc["Discount"][7]["DataType"] = 78
	-- tMysteryMerchant_Stc["Discount"][8] = {}
	-- tMysteryMerchant_Stc["Discount"][8]["EventType"] = 183
	-- tMysteryMerchant_Stc["Discount"][8]["DataType"] = 79
	
	
-- 奖励表
local tMysteryMerchant_Reward = {}
	-- 龙珠
	tMysteryMerchant_Reward[1088000] = {}
	tMysteryMerchant_Reward[1088000]["RewardItem"] = {}
	tMysteryMerchant_Reward[1088000]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[1088000]["RewardItem"][1]["Id"] = 1088000
	tMysteryMerchant_Reward[1088000]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[1088000]["RewardEffect"] = {}
	tMysteryMerchant_Reward[1088000]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[1088000]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[1088000]["LogId"] = 18000185
	-- 优质龙恨宝石
	tMysteryMerchant_Reward[700013] = {}
	tMysteryMerchant_Reward[700013]["RewardItem"] = {}
	tMysteryMerchant_Reward[700013]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[700013]["RewardItem"][1]["Id"] = 700013
	tMysteryMerchant_Reward[700013]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[700013]["RewardEffect"] = {}
	tMysteryMerchant_Reward[700013]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[700013]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[700013]["LogId"] = 18000185
	-- 涅槃灵石
	tMysteryMerchant_Reward[721259] = {}
	tMysteryMerchant_Reward[721259]["RewardItem"] = {}
	tMysteryMerchant_Reward[721259]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[721259]["RewardItem"][1]["Id"] = 721259
	tMysteryMerchant_Reward[721259]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[721259]["RewardEffect"] = {}
	tMysteryMerchant_Reward[721259]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[721259]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[721259]["LogId"] = 18000185
	-- 清心符*10
	tMysteryMerchant_Reward[720128] = {}
	tMysteryMerchant_Reward[720128]["RewardItem"] = {}
	tMysteryMerchant_Reward[720128]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[720128]["RewardItem"][1]["Id"] = 720128
	tMysteryMerchant_Reward[720128]["RewardItem"][1]["Attr"] = "0 10"
	tMysteryMerchant_Reward[720128]["RewardEffect"] = {}
	tMysteryMerchant_Reward[720128]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[720128]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[720128]["LogId"] = 18000185
	-- 桃源灵玉*10
	tMysteryMerchant_Reward[711504] = {}
	tMysteryMerchant_Reward[711504]["RewardItem"] = {}
	tMysteryMerchant_Reward[711504]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[711504]["RewardItem"][1]["Id"] = 711504
	tMysteryMerchant_Reward[711504]["RewardItem"][1]["Attr"] = "0 10"
	tMysteryMerchant_Reward[711504]["RewardEffect"] = {}
	tMysteryMerchant_Reward[711504]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[711504]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[711504]["LogId"] = 18000185
	-- 洗髓神露
	tMysteryMerchant_Reward[3001045] = {}
	tMysteryMerchant_Reward[3001045]["RewardItem"] = {}
	tMysteryMerchant_Reward[3001045]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3001045]["RewardItem"][1]["Id"] = 3001045
	tMysteryMerchant_Reward[3001045]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[3001045]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3001045]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3001045]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3001045]["LogId"] = 18000185
	-- 优质玄元宝石
	tMysteryMerchant_Reward[700073] = {}
	tMysteryMerchant_Reward[700073]["RewardItem"] = {}
	tMysteryMerchant_Reward[700073]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[700073]["RewardItem"][1]["Id"] = 700073
	tMysteryMerchant_Reward[700073]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[700073]["RewardEffect"] = {}
	tMysteryMerchant_Reward[700073]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[700073]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[700073]["LogId"] = 18000185
	-- 乾坤袋(小)
	tMysteryMerchant_Reward[1100003] = {}
	tMysteryMerchant_Reward[1100003]["RewardItem"] = {}
	tMysteryMerchant_Reward[1100003]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[1100003]["RewardItem"][1]["Id"] = 1100003
	tMysteryMerchant_Reward[1100003]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[1100003]["RewardEffect"] = {}
	tMysteryMerchant_Reward[1100003]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[1100003]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[1100003]["LogId"] = 18000185
	-- 乾坤九转神露
	tMysteryMerchant_Reward[711083] = {}
	tMysteryMerchant_Reward[711083]["RewardItem"] = {}
	tMysteryMerchant_Reward[711083]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[711083]["RewardItem"][1]["Id"] = 711083
	tMysteryMerchant_Reward[711083]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[711083]["RewardEffect"] = {}
	tMysteryMerchant_Reward[711083]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[711083]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[711083]["LogId"] = 18000185
	-- 九转聚神丹
	tMysteryMerchant_Reward[722057] = {}
	tMysteryMerchant_Reward[722057]["RewardItem"] = {}
	tMysteryMerchant_Reward[722057]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[722057]["RewardItem"][1]["Id"] = 722057
	tMysteryMerchant_Reward[722057]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[722057]["RewardEffect"] = {}
	tMysteryMerchant_Reward[722057]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[722057]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[722057]["LogId"] = 18000185
	-- 赤炼石+5
	tMysteryMerchant_Reward[730005] = {}
	tMysteryMerchant_Reward[730005]["RewardItem"] = {}
	tMysteryMerchant_Reward[730005]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[730005]["RewardItem"][1]["Id"] = 730005
	tMysteryMerchant_Reward[730005]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[730005]["RewardEffect"] = {}
	tMysteryMerchant_Reward[730005]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[730005]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[730005]["LogId"] = 18000185
	-- 晶莹星陨石
	tMysteryMerchant_Reward[3009002] = {}
	tMysteryMerchant_Reward[3009002]["RewardItem"] = {}
	tMysteryMerchant_Reward[3009002]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3009002]["RewardItem"][1]["Id"] = 3009002
	tMysteryMerchant_Reward[3009002]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[3009002]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3009002]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3009002]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3009002]["LogId"] = 18000185
	-- 百炼天机果
	tMysteryMerchant_Reward[3001044] = {}
	tMysteryMerchant_Reward[3001044]["RewardItem"] = {}
	tMysteryMerchant_Reward[3001044]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3001044]["RewardItem"][1]["Id"] = 3001044
	tMysteryMerchant_Reward[3001044]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[3001044]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3001044]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3001044]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3001044]["LogId"] = 18000185
	-- 黄色神纹随机包
	tMysteryMerchant_Reward[3306507] = {}
	tMysteryMerchant_Reward[3306507]["RewardItem"] = {}
	tMysteryMerchant_Reward[3306507]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3306507]["RewardItem"][1]["Id"] = 3306507
	tMysteryMerchant_Reward[3306507]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[3306507]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3306507]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3306507]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3306507]["LogId"] = 18000185
	-- 秘制免费修炼丹*10
	tMysteryMerchant_Reward[3002926] = {}
	tMysteryMerchant_Reward[3002926]["RewardItem"] = {}
	tMysteryMerchant_Reward[3002926]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3002926]["RewardItem"][1]["Id"] = 3002926
	tMysteryMerchant_Reward[3002926]["RewardItem"][1]["Attr"] = "0 10"
	tMysteryMerchant_Reward[3002926]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3002926]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3002926]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3002926]["LogId"] = 18000185
	
	-- 赤炼石+1礼包
	tMysteryMerchant_Reward[3311033] = {}
	tMysteryMerchant_Reward[3311033]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311033]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311033]["DeleteItem"][1]["Id"] = 3311033
	tMysteryMerchant_Reward[3311033]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311033]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311033]["RewardItem"][1]["Id"] = 730001
	tMysteryMerchant_Reward[3311033]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tMysteryMerchant_Reward[3311033]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311033]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311033]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311033]["LogId"] = 18000185
	-- 赤炼石+3礼包
	tMysteryMerchant_Reward[3311034] = {}
	tMysteryMerchant_Reward[3311034]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311034]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311034]["DeleteItem"][1]["Id"] = 3311034
	tMysteryMerchant_Reward[3311034]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311034]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311034]["RewardItem"][1]["Id"] = 730003
	tMysteryMerchant_Reward[3311034]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tMysteryMerchant_Reward[3311034]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311034]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311034]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311034]["LogId"] = 18000185
	-- +1马礼包
	tMysteryMerchant_Reward[3311035] = {}
	tMysteryMerchant_Reward[3311035]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311035]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311035]["DeleteItem"][1]["Id"] = 3311035
	tMysteryMerchant_Reward[3311035]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311035]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311035]["RewardItem"][1]["Id"] = 300000 
	tMysteryMerchant_Reward[3311035]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 1"
	tMysteryMerchant_Reward[3311035]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311035]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311035]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311035]["LogId"] = 12000719
	-- +3马礼包
	tMysteryMerchant_Reward[3311036] = {}
	tMysteryMerchant_Reward[3311036]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311036]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311036]["DeleteItem"][1]["Id"] = 3311036
	tMysteryMerchant_Reward[3311036]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311036]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311036]["RewardItem"][1]["Id"] = 300000 
	tMysteryMerchant_Reward[3311036]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 3"
	tMysteryMerchant_Reward[3311036]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311036]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311036]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311036]["LogId"] = 12000719
	-- 回气丹礼包
	tMysteryMerchant_Reward[3311037] = {}
	tMysteryMerchant_Reward[3311037]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311037]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311037]["DeleteItem"][1]["Id"] = 3311037
	tMysteryMerchant_Reward[3311037]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311037]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311037]["RewardItem"][1]["Id"] = 729242
	tMysteryMerchant_Reward[3311037]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[3311037]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311037]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311037]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311037]["LogId"] = 18000185
	-- 免费强炼丹*10礼包
	tMysteryMerchant_Reward[3311038] = {}
	tMysteryMerchant_Reward[3311038]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311038]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311038]["DeleteItem"][1]["Id"] = 3311038
	tMysteryMerchant_Reward[3311038]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311038]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311038]["RewardItem"][1]["Id"] = 3003124
	tMysteryMerchant_Reward[3311038]["RewardItem"][1]["Attr"] = "0 10"
	tMysteryMerchant_Reward[3311038]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311038]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311038]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311038]["LogId"] = 18000185
	-- 通神丹*5礼包
	tMysteryMerchant_Reward[3311039] = {}
	tMysteryMerchant_Reward[3311039]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311039]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311039]["DeleteItem"][1]["Id"] = 3311039
	tMysteryMerchant_Reward[3311039]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311039]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311039]["RewardItem"][1]["Id"] = 3003125
	tMysteryMerchant_Reward[3311039]["RewardItem"][1]["Attr"] = "0 5"
	tMysteryMerchant_Reward[3311039]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311039]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311039]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311039]["LogId"] = 18000185
	-- 1颗流星礼包
	tMysteryMerchant_Reward[3311507] = {}
	tMysteryMerchant_Reward[3311507]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311507]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311507]["DeleteItem"][1]["Id"] = 3311507
	tMysteryMerchant_Reward[3311507]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311507]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311507]["RewardItem"][1]["Id"] = 1088001
	tMysteryMerchant_Reward[3311507]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[3311507]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311507]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311507]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311507]["LogId"] = 18000185
	-- 1枚岫山玉礼包
	tMysteryMerchant_Reward[3311508] = {}
	tMysteryMerchant_Reward[3311508]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311508]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311508]["DeleteItem"][1]["Id"] = 3311508
	tMysteryMerchant_Reward[3311508]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311508]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311508]["RewardItem"][1]["Id"] = 3008221
	tMysteryMerchant_Reward[3311508]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[3311508]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311508]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311508]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311508]["LogId"] = 18000185
	-- 赤炼石+1礼包（次月出售）
	tMysteryMerchant_Reward[3311558] = {}
	tMysteryMerchant_Reward[3311558]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311558]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311558]["DeleteItem"][1]["Id"] = 3311558
	tMysteryMerchant_Reward[3311558]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311558]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311558]["RewardItem"][1]["Id"] = 730001
	tMysteryMerchant_Reward[3311558]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tMysteryMerchant_Reward[3311558]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311558]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311558]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311558]["LogId"] = 18000185
	-- 赤炼石+3礼包（次月出售）
	tMysteryMerchant_Reward[3311559] = {}
	tMysteryMerchant_Reward[3311559]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311559]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311559]["DeleteItem"][1]["Id"] = 3311559
	tMysteryMerchant_Reward[3311559]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311559]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311559]["RewardItem"][1]["Id"] = 730003
	tMysteryMerchant_Reward[3311559]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tMysteryMerchant_Reward[3311559]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311559]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311559]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311559]["LogId"] = 18000185
	-- +1马礼包（次月出售）
	tMysteryMerchant_Reward[3311560] = {}
	tMysteryMerchant_Reward[3311560]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311560]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311560]["DeleteItem"][1]["Id"] = 3311560
	tMysteryMerchant_Reward[3311560]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311560]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311560]["RewardItem"][1]["Id"] = 300000 
	tMysteryMerchant_Reward[3311560]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 1"
	tMysteryMerchant_Reward[3311560]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311560]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311560]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311560]["LogId"] = 12000719
	-- +3马礼包（次月出售）
	tMysteryMerchant_Reward[3311561] = {}
	tMysteryMerchant_Reward[3311561]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311561]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311561]["DeleteItem"][1]["Id"] = 3311561
	tMysteryMerchant_Reward[3311561]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311561]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311561]["RewardItem"][1]["Id"] = 300000 
	tMysteryMerchant_Reward[3311561]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 3"
	tMysteryMerchant_Reward[3311561]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311561]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311561]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311561]["LogId"] = 12000719
	-- 回气丹礼包（次月出售）
	tMysteryMerchant_Reward[3311562] = {}
	tMysteryMerchant_Reward[3311562]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311562]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311562]["DeleteItem"][1]["Id"] = 3311562
	tMysteryMerchant_Reward[3311562]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311562]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311562]["RewardItem"][1]["Id"] = 729242
	tMysteryMerchant_Reward[3311562]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[3311562]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311562]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311562]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311562]["LogId"] = 18000185
	-- 免费强炼丹*10礼包（次月出售）
	tMysteryMerchant_Reward[3311563] = {}
	tMysteryMerchant_Reward[3311563]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311563]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311563]["DeleteItem"][1]["Id"] = 3311563
	tMysteryMerchant_Reward[3311563]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311563]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311563]["RewardItem"][1]["Id"] = 3003124
	tMysteryMerchant_Reward[3311563]["RewardItem"][1]["Attr"] = "0 10"
	tMysteryMerchant_Reward[3311563]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311563]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311563]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311563]["LogId"] = 18000185
	-- 通神丹*5礼包（次月出售）
	tMysteryMerchant_Reward[3311564] = {}
	tMysteryMerchant_Reward[3311564]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311564]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311564]["DeleteItem"][1]["Id"] = 3311564
	tMysteryMerchant_Reward[3311564]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311564]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311564]["RewardItem"][1]["Id"] = 3003125
	tMysteryMerchant_Reward[3311564]["RewardItem"][1]["Attr"] = "0 5"
	tMysteryMerchant_Reward[3311564]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311564]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311564]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311564]["LogId"] = 18000185
	-- 1枚岫山玉礼包（次月出售）
	tMysteryMerchant_Reward[3311557] = {}
	tMysteryMerchant_Reward[3311557]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311557]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311557]["DeleteItem"][1]["Id"] = 3311557
	tMysteryMerchant_Reward[3311557]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311557]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311557]["RewardItem"][1]["Id"] = 3008221
	tMysteryMerchant_Reward[3311557]["RewardItem"][1]["Attr"] = "0 1"
	tMysteryMerchant_Reward[3311557]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311557]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311557]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311557]["LogId"] = 18000185
	-- 1颗微光星陨石（首月出售）
	tMysteryMerchant_Reward[3311838] = {}
	tMysteryMerchant_Reward[3311838]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311838]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311838]["DeleteItem"][1]["Id"] = 3311838
	tMysteryMerchant_Reward[3311838]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311838]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311838]["RewardItem"][1]["Id"] = 3009000
	tMysteryMerchant_Reward[3311838]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMysteryMerchant_Reward[3311838]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311838]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311838]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311838]["LogId"] = 18000185	
	-- 1颗明亮星陨石（首月出售）
	tMysteryMerchant_Reward[3311839] = {}
	tMysteryMerchant_Reward[3311839]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311839]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311839]["DeleteItem"][1]["Id"] = 3311839
	tMysteryMerchant_Reward[3311839]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311839]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311839]["RewardItem"][1]["Id"] = 3009001
	tMysteryMerchant_Reward[3311839]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMysteryMerchant_Reward[3311839]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311839]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311839]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311839]["LogId"] = 18000185	
	-- 1颗微光星陨石（次月出售）
	tMysteryMerchant_Reward[3311840] = {}
	tMysteryMerchant_Reward[3311840]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311840]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311840]["DeleteItem"][1]["Id"] = 3311840
	tMysteryMerchant_Reward[3311840]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311840]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311840]["RewardItem"][1]["Id"] = 3009000
	tMysteryMerchant_Reward[3311840]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMysteryMerchant_Reward[3311840]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311840]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311840]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311840]["LogId"] = 18000185	
	-- 1颗明亮星陨石（次月出售）
	tMysteryMerchant_Reward[3311841] = {}
	tMysteryMerchant_Reward[3311841]["DeleteItem"] = {}
	tMysteryMerchant_Reward[3311841]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward[3311841]["DeleteItem"][1]["Id"] = 3311841
	tMysteryMerchant_Reward[3311841]["RewardItem"] = {}
	tMysteryMerchant_Reward[3311841]["RewardItem"][1] = {}
	tMysteryMerchant_Reward[3311841]["RewardItem"][1]["Id"] = 3009001
	tMysteryMerchant_Reward[3311841]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMysteryMerchant_Reward[3311841]["RewardEffect"] = {}
	tMysteryMerchant_Reward[3311841]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward[3311841]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward[3311841]["LogId"] = 18000185
	
	-- 转换气力值
	tMysteryMerchant_Reward["RewandStrength"] = {}
	-- 赤炼石+1礼包
	tMysteryMerchant_Reward["RewandStrength"][3311033] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311033]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311033]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311033]["DeleteItem"][1]["Id"] = 3311033
	tMysteryMerchant_Reward["RewandStrength"][3311033]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311033]["RewardStrengthValue"]["Value"] = 6
	tMysteryMerchant_Reward["RewandStrength"][3311033]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311033]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311033]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311033]["LogId"] = 18000185
	-- 赤炼石+3礼包
	tMysteryMerchant_Reward["RewandStrength"][3311034] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311034]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311034]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311034]["DeleteItem"][1]["Id"] = 3311034
	tMysteryMerchant_Reward["RewandStrength"][3311034]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311034]["RewardStrengthValue"]["Value"] = 72
	tMysteryMerchant_Reward["RewandStrength"][3311034]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311034]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311034]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311034]["LogId"] = 18000185
	-- +1马礼包
	tMysteryMerchant_Reward["RewandStrength"][3311035] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311035]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311035]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311035]["DeleteItem"][1]["Id"] = 3311035
	tMysteryMerchant_Reward["RewandStrength"][3311035]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311035]["RewardStrengthValue"]["Value"] = 8
	tMysteryMerchant_Reward["RewandStrength"][3311035]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311035]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311035]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311035]["LogId"] = 12000719
	-- +3马礼包
	tMysteryMerchant_Reward["RewandStrength"][3311036] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311036]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311036]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311036]["DeleteItem"][1]["Id"] = 3311036
	tMysteryMerchant_Reward["RewandStrength"][3311036]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311036]["RewardStrengthValue"]["Value"] = 96
	tMysteryMerchant_Reward["RewandStrength"][3311036]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311036]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311036]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311036]["LogId"] = 12000719
	-- 回气丹礼包
	tMysteryMerchant_Reward["RewandStrength"][3311037] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311037]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311037]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311037]["DeleteItem"][1]["Id"] = 3311037
	tMysteryMerchant_Reward["RewandStrength"][3311037]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311037]["RewardStrengthValue"]["Value"] = 140
	tMysteryMerchant_Reward["RewandStrength"][3311037]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311037]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311037]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311037]["LogId"] = 18000185
	-- 免费强炼丹*10礼包
	tMysteryMerchant_Reward["RewandStrength"][3311038] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311038]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311038]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311038]["DeleteItem"][1]["Id"] = 3311038
	tMysteryMerchant_Reward["RewandStrength"][3311038]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311038]["RewardStrengthValue"]["Value"] = 60
	tMysteryMerchant_Reward["RewandStrength"][3311038]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311038]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311038]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311038]["LogId"] = 18000185
	-- 通神丹*5礼包
	tMysteryMerchant_Reward["RewandStrength"][3311039] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311039]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311039]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311039]["DeleteItem"][1]["Id"] = 3311039
	tMysteryMerchant_Reward["RewandStrength"][3311039]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311039]["RewardStrengthValue"]["Value"] = 20
	tMysteryMerchant_Reward["RewandStrength"][3311039]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311039]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311039]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311039]["LogId"] = 18000185
	-- 1颗流星礼包
	tMysteryMerchant_Reward["RewandStrength"][3311507] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311507]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311507]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311507]["DeleteItem"][1]["Id"] = 3311507
	tMysteryMerchant_Reward["RewandStrength"][3311507]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311507]["RewardStrengthValue"]["Value"] = 2
	tMysteryMerchant_Reward["RewandStrength"][3311507]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311507]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311507]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311507]["LogId"] = 18000185
	-- 1枚岫山玉礼包
	tMysteryMerchant_Reward["RewandStrength"][3311508] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311508]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311508]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311508]["DeleteItem"][1]["Id"] = 3311508
	tMysteryMerchant_Reward["RewandStrength"][3311508]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311508]["RewardStrengthValue"]["Value"] = 54
	tMysteryMerchant_Reward["RewandStrength"][3311508]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311508]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311508]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311508]["LogId"] = 18000185
	-- 赤炼石+1礼包（次月出售）
	tMysteryMerchant_Reward["RewandStrength"][3311558] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311558]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311558]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311558]["DeleteItem"][1]["Id"] = 3311558
	tMysteryMerchant_Reward["RewandStrength"][3311558]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311558]["RewardStrengthValue"]["Value"] = 6
	tMysteryMerchant_Reward["RewandStrength"][3311558]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311558]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311558]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311558]["LogId"] = 18000185
	-- 赤炼石+3礼包（次月出售）
	tMysteryMerchant_Reward["RewandStrength"][3311559] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311559]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311559]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311559]["DeleteItem"][1]["Id"] = 3311559
	tMysteryMerchant_Reward["RewandStrength"][3311559]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311559]["RewardStrengthValue"]["Value"] = 96
	tMysteryMerchant_Reward["RewandStrength"][3311559]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311559]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311559]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311559]["LogId"] = 18000185
	-- +1马礼包（次月出售）
	tMysteryMerchant_Reward["RewandStrength"][3311560] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311560]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311560]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311560]["DeleteItem"][1]["Id"] = 3311560
	tMysteryMerchant_Reward["RewandStrength"][3311560]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311560]["RewardStrengthValue"]["Value"] = 10
	tMysteryMerchant_Reward["RewandStrength"][3311560]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311560]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311560]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311560]["LogId"] = 12000719
	-- +3马礼包（次月出售）
	tMysteryMerchant_Reward["RewandStrength"][3311561] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311561]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311561]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311561]["DeleteItem"][1]["Id"] = 3311561
	tMysteryMerchant_Reward["RewandStrength"][3311561]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311561]["RewardStrengthValue"]["Value"] = 120
	tMysteryMerchant_Reward["RewandStrength"][3311561]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311561]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311561]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311561]["LogId"] = 12000719
	-- 回气丹礼包（次月出售）
	tMysteryMerchant_Reward["RewandStrength"][3311562] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311562]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311562]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311562]["DeleteItem"][1]["Id"] = 3311562
	tMysteryMerchant_Reward["RewandStrength"][3311562]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311562]["RewardStrengthValue"]["Value"] = 180
	tMysteryMerchant_Reward["RewandStrength"][3311562]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311562]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311562]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311562]["LogId"] = 18000185
	-- 免费强炼丹*10礼包（次月出售）
	tMysteryMerchant_Reward["RewandStrength"][3311563] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311563]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311563]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311563]["DeleteItem"][1]["Id"] = 3311563
	tMysteryMerchant_Reward["RewandStrength"][3311563]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311563]["RewardStrengthValue"]["Value"] = 84
	tMysteryMerchant_Reward["RewandStrength"][3311563]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311563]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311563]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311563]["LogId"] = 18000185
	-- 通神丹*5礼包（次月出售）
	tMysteryMerchant_Reward["RewandStrength"][3311564] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311564]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311564]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311564]["DeleteItem"][1]["Id"] = 3311564
	tMysteryMerchant_Reward["RewandStrength"][3311564]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311564]["RewardStrengthValue"]["Value"] = 30
	tMysteryMerchant_Reward["RewandStrength"][3311564]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311564]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311564]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311564]["LogId"] = 18000185
	-- 1枚岫山玉礼包（次月出售）
	tMysteryMerchant_Reward["RewandStrength"][3311557] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311557]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311557]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311557]["DeleteItem"][1]["Id"] = 3311557
	tMysteryMerchant_Reward["RewandStrength"][3311557]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311557]["RewardStrengthValue"]["Value"] = 54
	tMysteryMerchant_Reward["RewandStrength"][3311557]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311557]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311557]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311557]["LogId"] = 18000185
	-- 1颗微光星陨石礼包
	tMysteryMerchant_Reward["RewandStrength"][3311838] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311838]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311838]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311838]["DeleteItem"][1]["Id"] = 3311838
	tMysteryMerchant_Reward["RewandStrength"][3311838]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311838]["RewardStrengthValue"]["Value"] = 6
	tMysteryMerchant_Reward["RewandStrength"][3311838]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311838]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311838]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311838]["LogId"] = 18000185
	-- 1颗明亮星陨石礼包
	tMysteryMerchant_Reward["RewandStrength"][3311839] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311839]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311839]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311839]["DeleteItem"][1]["Id"] = 3311839
	tMysteryMerchant_Reward["RewandStrength"][3311839]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311839]["RewardStrengthValue"]["Value"] = 60
	tMysteryMerchant_Reward["RewandStrength"][3311839]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311839]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311839]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311839]["LogId"] = 18000185
	-- 1颗微光星陨石礼包（次月）
	tMysteryMerchant_Reward["RewandStrength"][3311840] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311840]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311840]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311840]["DeleteItem"][1]["Id"] = 3311840
	tMysteryMerchant_Reward["RewandStrength"][3311840]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311840]["RewardStrengthValue"]["Value"] = 6
	tMysteryMerchant_Reward["RewandStrength"][3311840]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311840]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311840]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311840]["LogId"] = 18000185
	-- 1颗明亮星陨石礼包（次月）
	tMysteryMerchant_Reward["RewandStrength"][3311841] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311841]["DeleteItem"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311841]["DeleteItem"][1] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311841]["DeleteItem"][1]["Id"] = 3311841
	tMysteryMerchant_Reward["RewandStrength"][3311841]["RewardStrengthValue"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311841]["RewardStrengthValue"]["Value"] = 80
	tMysteryMerchant_Reward["RewandStrength"][3311841]["RewardEffect"] = {}
	tMysteryMerchant_Reward["RewandStrength"][3311841]["RewardEffect"]["SzObj"] = "self"
	tMysteryMerchant_Reward["RewandStrength"][3311841]["RewardEffect"]["Effect"] = "angelwing"
	tMysteryMerchant_Reward["RewandStrength"][3311841]["LogId"] = 18000185
	
	
	
-- 概率表
local tMysteryMerchant_Random = {}
	-- 神秘游商随机位置
	tMysteryMerchant_Random["Map"] = {}
	tMysteryMerchant_Random["Map"][1] = {}
	tMysteryMerchant_Random["Map"][1]["ItemChanceSum"] = 10000               
	-- 清风原
	tMysteryMerchant_Random["Map"][1][1] = {}
	tMysteryMerchant_Random["Map"][1][1]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Map"][1][1]["ItemChance"] = 300
	tMysteryMerchant_Random["Map"][1][1]["MapId"] = 10364
	-- 枫溪林
	tMysteryMerchant_Random["Map"][1][2] = {}
	tMysteryMerchant_Random["Map"][1][2]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Map"][1][2]["ItemChance"] = 400
	tMysteryMerchant_Random["Map"][1][2]["MapId"] = 10365
	-- 绝情谷
	tMysteryMerchant_Random["Map"][1][3] = {}
	tMysteryMerchant_Random["Map"][1][3]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Map"][1][3]["ItemChance"] = 500
	tMysteryMerchant_Random["Map"][1][3]["MapId"] = 10366
	-- 大漠
	tMysteryMerchant_Random["Map"][1][4] = {}
	tMysteryMerchant_Random["Map"][1][4]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Map"][1][4]["ItemChance"] = 600
	tMysteryMerchant_Random["Map"][1][4]["MapId"] = 10367
	-- 芦花荡
	tMysteryMerchant_Random["Map"][1][5] = {}
	tMysteryMerchant_Random["Map"][1][5]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Map"][1][5]["ItemChance"] = 600
	tMysteryMerchant_Random["Map"][1][5]["MapId"] = 10368
	-- 敦煌
	tMysteryMerchant_Random["Map"][1][6] = {}
	tMysteryMerchant_Random["Map"][1][6]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Map"][1][6]["ItemChance"] = 1600
	tMysteryMerchant_Random["Map"][1][6]["MapId"] = 10369
	-- 冰封地穴1
	tMysteryMerchant_Random["Map"][1][7] = {}
	tMysteryMerchant_Random["Map"][1][7]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Map"][1][7]["ItemChance"] = 1800
	tMysteryMerchant_Random["Map"][1][7]["MapId"] = 10370
	-- 冰封地穴2
	tMysteryMerchant_Random["Map"][1][8] = {}
	tMysteryMerchant_Random["Map"][1][8]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Map"][1][8]["ItemChance"] = 2000
	tMysteryMerchant_Random["Map"][1][8]["MapId"] = 10371
	-- 冰封地穴3
	tMysteryMerchant_Random["Map"][1][9] = {}
	tMysteryMerchant_Random["Map"][1][9]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Map"][1][9]["ItemChance"] = 2200
	tMysteryMerchant_Random["Map"][1][9]["MapId"] = 10372
	
	-- 神秘游商随机珍宝数
	tMysteryMerchant_Random["Num"] = {}
	tMysteryMerchant_Random["Num"][1] = {}
	tMysteryMerchant_Random["Num"][1]["ItemChanceSum"] = 10000               
	-- 6个
	tMysteryMerchant_Random["Num"][1][1] = {}
	tMysteryMerchant_Random["Num"][1][1]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Num"][1][1]["ItemChance"] = 4500
	tMysteryMerchant_Random["Num"][1][1]["Num"] = 6
	-- 7个
	tMysteryMerchant_Random["Num"][1][2] = {}
	tMysteryMerchant_Random["Num"][1][2]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Num"][1][2]["ItemChance"] = 3000
	tMysteryMerchant_Random["Num"][1][2]["Num"] = 7
	-- 8个
	tMysteryMerchant_Random["Num"][1][3] = {}
	tMysteryMerchant_Random["Num"][1][3]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Num"][1][3]["ItemChance"] = 2500
	tMysteryMerchant_Random["Num"][1][3]["Num"] = 8
	
	-- 随机珍宝
	tMysteryMerchant_Random["Item"] = {}
	tMysteryMerchant_Random["Item"][1] = {}
	tMysteryMerchant_Random["Item"][1]["ItemChanceSum"] = 10000               
	-- 龙珠
	tMysteryMerchant_Random["Item"][1][1] = {}
	tMysteryMerchant_Random["Item"][1][1]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][1]["ItemChance"] = 800
	tMysteryMerchant_Random["Item"][1][1]["ItemId"] = 1088000
	-- 优质龙恨宝石
	tMysteryMerchant_Random["Item"][1][2] = {}
	tMysteryMerchant_Random["Item"][1][2]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][2]["ItemChance"] = 600
	tMysteryMerchant_Random["Item"][1][2]["ItemId"] = 700013
	-- 涅槃灵石
	tMysteryMerchant_Random["Item"][1][3] = {}
	tMysteryMerchant_Random["Item"][1][3]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][3]["ItemChance"] = 400
	tMysteryMerchant_Random["Item"][1][3]["ItemId"] = 721259
	-- 清心符*10
	tMysteryMerchant_Random["Item"][1][4] = {}
	tMysteryMerchant_Random["Item"][1][4]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][4]["ItemChance"] = 800
	tMysteryMerchant_Random["Item"][1][4]["ItemId"] = 720128
	-- 桃源灵玉*10
	tMysteryMerchant_Random["Item"][1][5] = {}
	tMysteryMerchant_Random["Item"][1][5]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][5]["ItemChance"] = 800
	tMysteryMerchant_Random["Item"][1][5]["ItemId"] = 711504
	-- 洗髓神露
	tMysteryMerchant_Random["Item"][1][6] = {}
	tMysteryMerchant_Random["Item"][1][6]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][6]["ItemChance"] = 800
	tMysteryMerchant_Random["Item"][1][6]["ItemId"] = 3001045
	-- 优质玄元宝石
	tMysteryMerchant_Random["Item"][1][7] = {}
	tMysteryMerchant_Random["Item"][1][7]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][7]["ItemChance"] = 700
	tMysteryMerchant_Random["Item"][1][7]["ItemId"] = 700073
	-- 乾坤袋(小)
	tMysteryMerchant_Random["Item"][1][8] = {}
	tMysteryMerchant_Random["Item"][1][8]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][8]["ItemChance"] = 800
	tMysteryMerchant_Random["Item"][1][8]["ItemId"] = 1100003
	-- 乾坤九转神露
	tMysteryMerchant_Random["Item"][1][9] = {}
	tMysteryMerchant_Random["Item"][1][9]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][9]["ItemChance"] = 700
	tMysteryMerchant_Random["Item"][1][9]["ItemId"] = 711083
	-- 九转聚神丹
	tMysteryMerchant_Random["Item"][1][10] = {}
	tMysteryMerchant_Random["Item"][1][10]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][10]["ItemChance"] = 700
	tMysteryMerchant_Random["Item"][1][10]["ItemId"] = 722057
	-- -- 赤炼石+5
	-- tMysteryMerchant_Random["Item"][1][11] = {}
	-- tMysteryMerchant_Random["Item"][1][11]["RandomItemChanceType"] = 2
	-- tMysteryMerchant_Random["Item"][1][11]["ItemChance"] = 0
	-- tMysteryMerchant_Random["Item"][1][11]["ItemId"] = 730005
	-- 晶莹星陨石
	tMysteryMerchant_Random["Item"][1][11] = {}
	tMysteryMerchant_Random["Item"][1][11]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][11]["ItemChance"] = 700
	tMysteryMerchant_Random["Item"][1][11]["ItemId"] = 3009002
	-- 百炼天机果
	tMysteryMerchant_Random["Item"][1][12] = {}
	tMysteryMerchant_Random["Item"][1][12]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][12]["ItemChance"] = 700
	tMysteryMerchant_Random["Item"][1][12]["ItemId"] = 3001044
	-- 黄色神纹随机包
	tMysteryMerchant_Random["Item"][1][13] = {}
	tMysteryMerchant_Random["Item"][1][13]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][13]["ItemChance"] = 800
	tMysteryMerchant_Random["Item"][1][13]["ItemId"] = 3306507
	-- 秘制免费修炼丹*10
	tMysteryMerchant_Random["Item"][1][14] = {}
	tMysteryMerchant_Random["Item"][1][14]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Item"][1][14]["ItemChance"] = 700
	tMysteryMerchant_Random["Item"][1][14]["ItemId"] = 3002926
	
	-- 随机折扣
	tMysteryMerchant_Random["Discount"] = {}
	tMysteryMerchant_Random["Discount"][1] = {}
	tMysteryMerchant_Random["Discount"][1]["ItemChanceSum"] = 10000     
	-- 5折
	tMysteryMerchant_Random["Discount"][1][1] = {}
	tMysteryMerchant_Random["Discount"][1][1]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Discount"][1][1]["ItemChance"] = 700
	tMysteryMerchant_Random["Discount"][1][1]["Discount"] = 5
	-- 6折
	tMysteryMerchant_Random["Discount"][1][2] = {}
	tMysteryMerchant_Random["Discount"][1][2]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Discount"][1][2]["ItemChance"] = 1000
	tMysteryMerchant_Random["Discount"][1][2]["Discount"] = 6
	-- 7折
	tMysteryMerchant_Random["Discount"][1][3] = {}
	tMysteryMerchant_Random["Discount"][1][3]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Discount"][1][3]["ItemChance"] = 1500
	tMysteryMerchant_Random["Discount"][1][3]["Discount"] = 7
	-- 8折
	tMysteryMerchant_Random["Discount"][1][4] = {}
	tMysteryMerchant_Random["Discount"][1][4]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Discount"][1][4]["ItemChance"] = 1800
	tMysteryMerchant_Random["Discount"][1][4]["Discount"] = 8
	-- 9折
	tMysteryMerchant_Random["Discount"][1][5] = {}
	tMysteryMerchant_Random["Discount"][1][5]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Discount"][1][5]["ItemChance"] = 2300
	tMysteryMerchant_Random["Discount"][1][5]["Discount"] = 9
	-- 无折扣
	tMysteryMerchant_Random["Discount"][1][6] = {}
	tMysteryMerchant_Random["Discount"][1][6]["RandomItemChanceType"] = 2
	tMysteryMerchant_Random["Discount"][1][6]["ItemChance"] = 2700
	tMysteryMerchant_Random["Discount"][1][6]["Discount"] = 10
	
	
	
-----------------------------------------------逻辑部分-----------------------------------------
-- 随机地图
function MysteryMerchant_RandomMap()
	local nGlobalId = tMysteryMerchant_Cont["Global"]["Npc"]
	local nNpcMapId =  Get_SysDynaGlobalData(nGlobalId,0)
	
	local nFlag,tAward = Probabil_RandomAward(tMysteryMerchant_Random["Map"],1)
	local nMapId = tAward[1]["tAward"][1]["MapId"]
	
	-- -- 刷在一张地图就重新随机
	-- if nNpcMapId == nMapId then
		-- nMapId = MysteryMerchant_RandomMap()
	-- end
	
	Sys_SetSynaGlobalData(nGlobalId,0,nMapId)
	return nMapId
end

-- 每小时随机位置刷新神秘游商
function MysteryMerchant_BrushNpc()
	-- 判断无赠品服务器
	if not SpecialServer_ChkNoGiftServer() then
		return false
	end
	
	-- 在global中记录第几轮
	local nGlobalId = tMysteryMerchant_Cont["Global"]["Npc"]
	local nHour = tonumber(os.date("%H"))
	-- 用1-24记录
	if nHour == 0 then
		nHour = 24
	end
	
	Sys_SetSynaGlobalData(nGlobalId,1,nHour)
	
	-- 18.10.19修改————全服限制重置
	local nLimitGlobal = tMysteryMerchant_Cont["Global"]["Limit"]
	Sys_SetSynaGlobalData(nGlobalId,3,0)
	Sys_SetSynaGlobalData(nGlobalId,4,0)
	Sys_SetSynaGlobalData(nGlobalId,5,0)
	Sys_SetSynaGlobalData(nLimitGlobal,1,0)
	Sys_SetSynaGlobalData(nLimitGlobal,2,0)
	Sys_SetSynaGlobalData(nLimitGlobal,3,0)
	Sys_SetSynaGlobalData(nLimitGlobal,4,0)
	Sys_SetSynaGlobalData(nLimitGlobal,5,0)
	
	-- 18.10.23修改————NPC刷新时重新随机珍宝
	-- 随机珍宝数
	local nFlag,tAward = Probabil_RandomAward(tMysteryMerchant_Random["Num"],1)
	local nRandomNum = tAward[1]["tAward"][1]["Num"]
	local nItemGlobal2 = tMysteryMerchant_Cont["Global"]["Item"][2]
	Sys_SetSynaGlobalData(nItemGlobal2,5,nRandomNum)
	
	for i=1, nRandomNum do
		MysteryMerchant_RandomItem(i)
	end
	
	local nMapId = MysteryMerchant_RandomMap()
	local nPosX = tMysteryMerchant_Cont["Coordinate"][nMapId]["PosX"]
	local nPosY = tMysteryMerchant_Cont["Coordinate"][nMapId]["PosY"]
	Npc_MoveNpcPos(23276,nMapId,nPosX,nPosY)
	
	local sMapName = Get_MapName(nMapId)
	
	if tMysteryMerchant_Text["MapName"][nMapId] ~= nil then
		sMapName = tMysteryMerchant_Text["MapName"][nMapId]
	end
	
	local sBroadCast = string.format(tMysteryMerchant_Text["BroadCast"]["BrushNpc"],sMapName,nPosX,nPosY)
	
	Sys_TalkBroadcast(sBroadCast)
	Sys_SystemBroadcast(sBroadCast)
	return true
end

-- 返回珍宝信息
function MysteryMerchant_ItemMsg(nIndex)
	-- 18.10.23修改————取Global记录
	local nItemGlobal1 = tMysteryMerchant_Cont["Global"]["Item"][1]
	local nItemGlobal2 = tMysteryMerchant_Cont["Global"]["Item"][2]
	local nDisGlobal1 = tMysteryMerchant_Cont["Global"]["Discount"][1]
	local nDisGlobal2 = tMysteryMerchant_Cont["Global"]["Discount"][2]
	local nItemId = 0
	local nDiscount = 0
	
	-- 区分Global
	if nIndex <= 5 then
		nItemId = Get_SysDynaGlobalData(nItemGlobal1,nIndex)
		nDiscount = Get_SysDynaGlobalData(nDisGlobal1,nIndex)
	else
		nItemId = Get_SysDynaGlobalData(nItemGlobal2,nIndex-5)
		nDiscount = Get_SysDynaGlobalData(nDisGlobal2,nIndex-5)
	end
	
	return nItemId,nDiscount
end

-- 随机珍宝及折扣
function MysteryMerchant_RandomItem(nIndex)
	-- 18.10.23修改————改为Global记录
	local nItemGlobal1 = tMysteryMerchant_Cont["Global"]["Item"][1]
	local nItemGlobal2 = tMysteryMerchant_Cont["Global"]["Item"][2]
	local nDisGlobal1 = tMysteryMerchant_Cont["Global"]["Discount"][1]
	local nDisGlobal2 = tMysteryMerchant_Cont["Global"]["Discount"][2]
	
	-- 随机珍宝ID
	local nFlag,tAward = Probabil_RandomAward(tMysteryMerchant_Random["Item"],1)
	local nItemId = tAward[1]["tAward"][1]["ItemId"]
	
	-- 随机折扣
	local nFlag,tAward = Probabil_RandomAward(tMysteryMerchant_Random["Discount"],1)
	local nDiscount = tAward[1]["tAward"][1]["Discount"]
	
	-- 区分Global
	if nIndex <= 5 then
		Sys_SetSynaGlobalData(nItemGlobal1,nIndex,nItemId)
		Sys_SetSynaGlobalData(nDisGlobal1,nIndex,nDiscount)
	else
		Sys_SetSynaGlobalData(nItemGlobal2,nIndex-5,nItemId)
		Sys_SetSynaGlobalData(nDisGlobal2,nIndex-5,nDiscount)
	end
	
	return true
end

-- 购买珍宝
function MysteryMerchant_BuyItem(nNpcId,nIndex)
	-- 判断无赠品服务器
	if not SpecialServer_ChkNoGiftServer() then
		return false
	end
	
	-- 18.10.19修改————添加全服限制判断
	local nGlobalId = tMysteryMerchant_Cont["Global"]["Npc"]
	local nLimitGlobal = tMysteryMerchant_Cont["Global"]["Limit"]
	local nSale = 1
	if nIndex <= 5 then
		nSale = Get_SysDynaGlobalData(nLimitGlobal,nIndex)
	else
		nSale = Get_SysDynaGlobalData(nGlobalId,nIndex-3)
	end
	
	if nSale == 1 then
		Sys_MsgBox(tMysteryMerchant_Text[105]["AlreadySale"])
		return false
	end
	
	local nEvent_1 = tMysteryMerchant_Stc[1]["EventType"]
	local nType_1 = tMysteryMerchant_Stc[1]["DataType"]
	local nClearTime_1 = tMysteryMerchant_Stc[1]["Clear"]
	local nEvent_2 = tMysteryMerchant_Stc[2]["EventType"]
	local nType_2 = tMysteryMerchant_Stc[2]["DataType"]
	local nClearTime_2 = tMysteryMerchant_Stc[2]["Clear"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	if Task_StcInterval(nEvent_2,nType_2,nClearTime_2,4) then
		Task_SetStatistic(nEvent_2,nType_2,0,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
	end
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	-- 异常·已购买
	if nData_1 == 1 then
		return false
	end
	
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	local nTurn =  Get_SysDynaGlobalData(nGlobalId,1)
	-- 不在这一轮购买时间内
	if nData_2 ~= nTurn then
		return false
	end
	
	local nItemId,nDiscount = MysteryMerchant_ItemMsg(nIndex)
	local sItemName = Get_ItemtypeName(nItemId)
	if tMysteryMerchant_Text["ItemName"][nItemId] ~= nil then
		sItemName = tMysteryMerchant_Text["ItemName"][nItemId]
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMysteryMerchant_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tMysteryMerchant_Text[105]["FullBag"],nSpace))
		return false
	end
	
	local nOldPrice = tMysteryMerchant_Cont["Price"][nItemId]
	local nNowPrice = nOldPrice * nDiscount/10
	-- 银两不足
	if not User_CanPutMoney2Bag(-nNowPrice) then
		Sys_MsgBox(string.format(tMysteryMerchant_Text[105]["MoneyNotEnough"],sItemName))
		return false
	end
	
	-- 二次确认
	tNpcGossip[nNpcId]["Text211"] = string.format(tMysteryMerchant_Text[nNpcId]["Text211"],nNowPrice,sItemName)
	tNpcGossip[nNpcId]["OptionFunc211"] = "MysteryMerchant_BuyItemConfirm</N>" .. nIndex
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	return true
end

-- 二次确认
function MysteryMerchant_BuyItemConfirm(nIndex)
	-- 判断无赠品服务器
	if not SpecialServer_ChkNoGiftServer() then
		return false
	end
	
	-- 18.10.19修改————添加全服限制判断
	local nGlobalId = tMysteryMerchant_Cont["Global"]["Npc"]
	local nLimitGlobal = tMysteryMerchant_Cont["Global"]["Limit"]
	local nSale = 1
	if nIndex <= 5 then
		nSale = Get_SysDynaGlobalData(nLimitGlobal,nIndex)
	else
		nSale = Get_SysDynaGlobalData(nGlobalId,nIndex-3)
	end
	
	if nSale == 1 then
		Sys_MsgBox(tMysteryMerchant_Text[105]["AlreadySale"])
		return false
	end
	
	local nEvent_1 = tMysteryMerchant_Stc[1]["EventType"]
	local nType_1 = tMysteryMerchant_Stc[1]["DataType"]
	local nClearTime_1 = tMysteryMerchant_Stc[1]["Clear"]
	local nEvent_2 = tMysteryMerchant_Stc[2]["EventType"]
	local nType_2 = tMysteryMerchant_Stc[2]["DataType"]
	local nClearTime_2 = tMysteryMerchant_Stc[2]["Clear"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	if Task_StcInterval(nEvent_2,nType_2,nClearTime_2,4) then
		Task_SetStatistic(nEvent_2,nType_2,0,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
	end
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	-- 异常·已购买
	if nData_1 == 1 then
		return false
	end
	
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	local nTurn =  Get_SysDynaGlobalData(nGlobalId,1)
	-- 不在这一轮购买时间内
	if nData_2 ~= nTurn then
		return false
	end
	
	local nItemId,nDiscount = MysteryMerchant_ItemMsg(nIndex)
	local sItemName = Get_ItemtypeName(nItemId)
	if tMysteryMerchant_Text["ItemName"][nItemId] ~= nil then
		sItemName = tMysteryMerchant_Text["ItemName"][nItemId]
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMysteryMerchant_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tMysteryMerchant_Text[105]["FullBag"],nSpace))
		return false
	end
	
	local nOldPrice = tMysteryMerchant_Cont["Price"][nItemId]
	local nNowPrice = nOldPrice * nDiscount/10
	-- 银两不足
	if not User_CanPutMoney2Bag(-nNowPrice) then
		Sys_MsgBox(string.format(tMysteryMerchant_Text[105]["MoneyNotEnough"],sItemName))
		return false
	end
	
	-- 扣银两
	if User_AddMoney(-nNowPrice) then
		-- 18.10.19修改————添加全服限制
		if nIndex <= 5 then
			Sys_SetSynaGlobalData(nLimitGlobal,nIndex,1)
		else
			Sys_SetSynaGlobalData(nGlobalId,nIndex-3,1)
		end
		
		-- 置掩码为已购买
		Task_SetStatistic(nEvent_1,nType_1,1,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
		
		RewardTemplate_UseItemAndMsg(tMysteryMerchant_Reward[nItemId])
		Sys_MsgBox(string.format(tMysteryMerchant_Text[105]["BuySuccess"],nNowPrice,sItemName))
		
		-- 五折购买出全服公告
		if nDiscount == 5 then
			local sUserName = Get_UserName()
			local sBroadCast = string.format(tMysteryMerchant_Text["BroadCost"],sUserName)
			Sys_SystemBroadcast(sBroadCast)
		end
	end
	
	return true
end

-- 转换气力值
function MysteryMerchant_ExchangeStrength(nItemId)
	-- 判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		return false
	end
	
	RewardTemplate_UseItemAndMsg(tMysteryMerchant_Reward["RewandStrength"][nItemId])
	return true
end



-----------------------------------------------模板部分-----------------------------------------
-------------------------------NPC模板
-- 布基道
tNpcFace[3159] = 35
tNpcGossip[23276] = tNpcGossip[23276] or DefaultNpc:new{}
tNpcGossip[23276]["OptionHidden"] = 1
tNpcGossip[23276]["DialogueText"] = tMysteryMerchant_Text[23276]

-- 出售列表
tNpcGossip[23276]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113}
tNpcGossip[23276]["tOption1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[23276]["ChkFunc1-1"] = function ()
	-- 判断无赠品服务器
	if not SpecialServer_ChkNoGiftServer() then
		return false
	end
	
	local nEvent_1 = tMysteryMerchant_Stc[1]["EventType"]
	local nType_1 = tMysteryMerchant_Stc[1]["DataType"]
	local nClearTime_1 = tMysteryMerchant_Stc[1]["Clear"]
	local nEvent_2 = tMysteryMerchant_Stc[2]["EventType"]
	local nType_2 = tMysteryMerchant_Stc[2]["DataType"]
	local nClearTime_2 = tMysteryMerchant_Stc[2]["Clear"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	if Task_StcInterval(nEvent_2,nType_2,nClearTime_2,4) then
		Task_SetStatistic(nEvent_2,nType_2,0,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
	end
	
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	local nGlobalId = tMysteryMerchant_Cont["Global"]["Npc"]
	local nTurn = Get_SysDynaGlobalData(nGlobalId,1)
	
	-- 这一轮未打开过商店
	if nData_2 ~= nTurn then
		-- 设置为未购买
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
		
		-- 设置为已打开过
		Task_SetStatistic(nEvent_2,nType_2,nTurn,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
	end
	
	-- 显示出售珍宝信息
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	local tText = {111,112,113}
	local tOption = {}
	-- 18.10.23修改————取Global记录
	local nItemGlobal2 = tMysteryMerchant_Cont["Global"]["Item"][2]
	local nSaleNum = Get_SysDynaGlobalData(nItemGlobal2,5)
	for i=1, nSaleNum do
		local nItemId,nDiscount = MysteryMerchant_ItemMsg(i)
		local sItemName = Get_ItemtypeName(nItemId)
		if tMysteryMerchant_Text["ItemName"][nItemId] ~= nil then
			sItemName = tMysteryMerchant_Text["ItemName"][nItemId]
		end
		
		local nOldPrice = tMysteryMerchant_Cont["Price"][nItemId]
		local sPrice = string.format(tMysteryMerchant_Text["Money"],nOldPrice)
		local sDiscount = string.format(tMysteryMerchant_Text["Discount"],nDiscount)
		
		-- 18.10.19修改————添加全服限制判断
		local nLimitGlobal = tMysteryMerchant_Cont["Global"]["Limit"]
		local nSale = 1
		if i <= 5 then
			nSale = Get_SysDynaGlobalData(nLimitGlobal,i)
		else
			nSale = Get_SysDynaGlobalData(nGlobalId,i-3)
		end
		
		if nSale == 1 then
			tNpcGossip[23276]["Text11" .. i+3] = Sys_CenterAline(tMysteryMerchant_Text[23276]["Text11" .. i+3],7,sItemName,26,sPrice,47,sDiscount,62) .. tMysteryMerchant_Text["AlreadySale"] .. "\n"
		else
			tNpcGossip[23276]["Text11" .. i+3] = Sys_CenterAline(tMysteryMerchant_Text[23276]["Text11" .. i+3],7,sItemName,26,sPrice,47,sDiscount,62) .. "\n"
		end
		
		if i > 6 then
			tText[#tText+1] = 1103 + i
		else
			tText[#tText+1] = 113 + i
		end
		
		-- 未购买过才显示购买选项
		if nData_1 == 0 then
			local nNowPrice = nOldPrice * nDiscount/10
			tNpcGossip[23276]["Option11" .. i] = string.format(tMysteryMerchant_Text[23276]["Option11" .. i],nNowPrice)
			
			-- 18.10.19修改————添加全服限制判断
			if nSale == 0 then
				tOption[#tOption+1] = 110 + i
			end
		end
	end
	
	tText[#tText+1] = 1112
	tText[#tText+1] = 1113
	tNpcGossip[23276]["Text1-1"] = tText
	
	tOption[#tOption+1] = 119
	tNpcGossip[23276]["tOption1-1"] = tOption
	return true
end

tNpcGossip[23276]["OptionFunc111"] = "MysteryMerchant_BuyItem</N>23276</N>1"
tNpcGossip[23276]["OptionFunc112"] = "MysteryMerchant_BuyItem</N>23276</N>2"
tNpcGossip[23276]["OptionFunc113"] = "MysteryMerchant_BuyItem</N>23276</N>3"
tNpcGossip[23276]["OptionFunc114"] = "MysteryMerchant_BuyItem</N>23276</N>4"
tNpcGossip[23276]["OptionFunc115"] = "MysteryMerchant_BuyItem</N>23276</N>5"
tNpcGossip[23276]["OptionFunc116"] = "MysteryMerchant_BuyItem</N>23276</N>6"
tNpcGossip[23276]["OptionFunc117"] = "MysteryMerchant_BuyItem</N>23276</N>7"
tNpcGossip[23276]["OptionFunc118"] = "MysteryMerchant_BuyItem</N>23276</N>8"


-- 出售列表
tNpcGossip[23276]["Text2-1"] = {211}
tNpcGossip[23276]["tOption2-1"] = {211,212}


-------------------------------物品模板
-- 赤炼石+1礼包
tItem[3311033] = tItem[3311033] or {}
-- 赤炼石+3礼包
tItem[3311034] = tItem[3311033] or {}
-- 马匹+1礼包
tItem[3311035] = tItem[3311033] or {}
-- 马匹+3礼包
tItem[3311036] = tItem[3311033] or {}
-- 回气丹礼包
tItem[3311037] = tItem[3311033] or {}
-- 免费强炼丹*10礼包
tItem[3311038] = tItem[3311033] or {}
-- 通神丹*5礼包
tItem[3311039] = tItem[3311033] or {}
-- 1颗流星礼包
tItem[3311507] = tItem[3311033] or {}
-- 1枚岫山玉礼包
tItem[3311508] = tItem[3311033] or {}
-- 赤炼石+1礼包（次月出售）
tItem[3311558] = tItem[3311033] or {}
-- 赤炼石+3礼包（次月出售）
tItem[3311559] = tItem[3311033] or {}
-- 马匹+1礼包（次月出售）
tItem[3311560] = tItem[3311033] or {}
-- 马匹+3礼包（次月出售）
tItem[3311561] = tItem[3311033] or {}
-- 回气丹礼包（次月出售）
tItem[3311562] = tItem[3311033] or {}
-- 免费强炼丹*10礼包（次月出售）
tItem[3311563] = tItem[3311033] or {}
-- 通神丹*5礼包（次月出售）
tItem[3311564] = tItem[3311033] or {}
-- 1枚岫山玉礼包（次月出售）
tItem[3311557] = tItem[3311033] or {}
-- 1颗微光星陨石礼包
tItem[3311838] = tItem[3311033] or {}
-- 1颗明亮星陨石礼包
tItem[3311839] = tItem[3311033] or {}
-- 1颗微光星陨石礼包（次月出售）
tItem[3311840] = tItem[3311033] or {}
-- 1颗明亮星陨石礼包（次月出售）
tItem[3311841] = tItem[3311033] or {}
tItem[3311033]["Function"] = function(nItemId,sItemName)
	-- 判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断无赠品服务器
	if not SpecialServer_ChkNoGiftServer() then
		local nStrength = tMysteryMerchant_Reward["RewandStrength"][nItemId]["RewardStrengthValue"]["Value"]
		Sys_MsgBox(string.format(tMysteryMerchant_Text[105]["NoGiftServer"],nStrength),"MysteryMerchant_ExchangeStrength</N>" .. nItemId,"NULL")
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMysteryMerchant_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tMysteryMerchant_Text[105]["NoSpace"])
		return false
	end
	
	RewardTemplate_UseItemAndMsg(tMysteryMerchant_Reward[nItemId])
	return true
end


-------------------------------时间自检
local tMysteryMerchant_OnTime = {}
	-- 随机刷新神秘商人
	tMysteryMerchant_OnTime[1] = {}
	tMysteryMerchant_OnTime[1]["Type"] = 1  -- 刷新npc
	tMysteryMerchant_OnTime[1]["TimeType"] = 5  -- 小时时间
	tMysteryMerchant_OnTime[1]["Multiple"] = {}
	tMysteryMerchant_OnTime[1]["Multiple"][1] = "00 00"
	tMysteryMerchant_OnTime[1]["Func"] = MysteryMerchant_BrushNpc
	table.insert(tSystemTime_InitialData,tMysteryMerchant_OnTime[1])
	


