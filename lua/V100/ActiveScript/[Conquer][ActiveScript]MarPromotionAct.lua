------------------------------------------------------------------------------------
--Name:		180209[英文征服][活动脚本]3月促销活动制作(3.08-3.22)
--Purpose:	3月促销活动制作
--Creator: 	傅伟龙
--Created:	2018/02/09
------------------------------------------------------------------------------------
--前缀MarPromotionAct_



------------------------------------------------------------------------------------
--基础数据
local tMarPromotionAct_Cont = {}

--活动时间
tMarPromotionAct_Cont["BefTime"] = tActivityTime["MarPromotionAct"]["BefTime"]
tMarPromotionAct_Cont["ActTime"] = tActivityTime["MarPromotionAct"]["ActTime"]



tMarPromotionAct_Cont["TimeDelay"] = 5
tMarPromotionAct_Cont["TimeType"] = 1

tMarPromotionAct_Cont["MapDrop"] = {}
tMarPromotionAct_Cont["MapDrop"]["MapId"] = 10274
tMarPromotionAct_Cont["MapDrop"]["PosX"] = 45
tMarPromotionAct_Cont["MapDrop"]["PosY"] = 45
tMarPromotionAct_Cont["MapDrop"]["Cellx"] = 25
tMarPromotionAct_Cont["MapDrop"]["Celly"] = 25
tMarPromotionAct_Cont["MapDrop"]["ExistTime"] = 5

--副本id
tMarPromotionAct_Cont["InstanceId"] = 139
-- 地图传送
tMarPromotionAct_Cont["Map"] = {}
-- tMarPromotionAct_Cont["Map"][10274] = {}
-- tMarPromotionAct_Cont["Map"][10274]["MapId"] = 10274
-- tMarPromotionAct_Cont["Map"][10274]["PosX"] = 67
-- tMarPromotionAct_Cont["Map"][10274]["PosY"] = 52
-- tMarPromotionAct_Cont["Map"][10274]["Range"] = 1

tMarPromotionAct_Cont["Map"][1002] = {}
tMarPromotionAct_Cont["Map"][1002]["MapId"] = 1002
tMarPromotionAct_Cont["Map"][1002]["PosX"] = 376
tMarPromotionAct_Cont["Map"][1002]["PosY"] = 438
tMarPromotionAct_Cont["Map"][1002]["Range"] = 1
tMarPromotionAct_Cont["Map"][1002]["NpcId"] = 22644


--掩码
local tMarPromotionAct_Stc = {}
	tMarPromotionAct_Stc[1] = {}
	tMarPromotionAct_Stc[1]["EventType"] = 173
	tMarPromotionAct_Stc[1]["DataType"] = 82

local tMarPromotionAct_RewandItem = {}
	
	--欢乐强炼丹大礼包
	tMarPromotionAct_RewandItem[3307522]={}
	tMarPromotionAct_RewandItem[3307522][1]={}
	tMarPromotionAct_RewandItem[3307522][1]["LogId"] = 12001012
	tMarPromotionAct_RewandItem[3307522][1]["DeleteItem"] = {}
	tMarPromotionAct_RewandItem[3307522][1]["DeleteItem"][1] = {}
	tMarPromotionAct_RewandItem[3307522][1]["DeleteItem"][1]["Id"] = 3307522
	tMarPromotionAct_RewandItem[3307522][1]["RewardItem"] = {}
	tMarPromotionAct_RewandItem[3307522][1]["RewardItem"][1] = {}
	tMarPromotionAct_RewandItem[3307522][1]["RewardItem"][1]["Id"] = 3003124
	tMarPromotionAct_RewandItem[3307522][1]["RewardItem"][1]["Attr"] = "0 300"
	tMarPromotionAct_RewandItem[3307522][1]["RewardItem"][2] = {}
	tMarPromotionAct_RewandItem[3307522][1]["RewardItem"][2]["Id"] = 3307521
	tMarPromotionAct_RewandItem[3307522][1]["RewardItem"][2]["Attr"] = "0 1"
	tMarPromotionAct_RewandItem[3307522][1]["RewardEffect"] = {}
	tMarPromotionAct_RewandItem[3307522][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--欢乐桃源灵玉大礼包
	tMarPromotionAct_RewandItem[3307523]={}
	tMarPromotionAct_RewandItem[3307523][1]={}
	tMarPromotionAct_RewandItem[3307523][1]["LogId"] = 12001012
	tMarPromotionAct_RewandItem[3307523][1]["DeleteItem"] = {}
	tMarPromotionAct_RewandItem[3307523][1]["DeleteItem"][1] = {}
	tMarPromotionAct_RewandItem[3307523][1]["DeleteItem"][1]["Id"] = 3307523
	tMarPromotionAct_RewandItem[3307523][1]["RewardItem"] = {}
	tMarPromotionAct_RewandItem[3307523][1]["RewardItem"][1] = {}
	tMarPromotionAct_RewandItem[3307523][1]["RewardItem"][1]["Id"] = 3306699
	tMarPromotionAct_RewandItem[3307523][1]["RewardItem"][1]["Attr"] = "0 100"
	tMarPromotionAct_RewandItem[3307523][1]["RewardItem"][2] = {}
	tMarPromotionAct_RewandItem[3307523][1]["RewardItem"][2]["Id"] = 3307521
	tMarPromotionAct_RewandItem[3307523][1]["RewardItem"][2]["Attr"] = "0 2"
	tMarPromotionAct_RewandItem[3307523][1]["RewardEffect"] = {}
	tMarPromotionAct_RewandItem[3307523][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--欢乐赤炼石大礼包
	tMarPromotionAct_RewandItem[3307524]={}
	tMarPromotionAct_RewandItem[3307524][1]={}
	tMarPromotionAct_RewandItem[3307524][1]["LogId"] = 12001012
	tMarPromotionAct_RewandItem[3307524][1]["DeleteItem"] = {}
	tMarPromotionAct_RewandItem[3307524][1]["DeleteItem"][1] = {}
	tMarPromotionAct_RewandItem[3307524][1]["DeleteItem"][1]["Id"] = 3307524
	tMarPromotionAct_RewandItem[3307524][1]["RewardItem"] = {}
	tMarPromotionAct_RewandItem[3307524][1]["RewardItem"][1] = {}
	tMarPromotionAct_RewandItem[3307524][1]["RewardItem"][1]["Id"] = 730008
	tMarPromotionAct_RewandItem[3307524][1]["RewardItem"][1]["Attr"] = "0 1"
	tMarPromotionAct_RewandItem[3307524][1]["RewardItem"][2] = {}
	tMarPromotionAct_RewandItem[3307524][1]["RewardItem"][2]["Id"] = 3307521
	tMarPromotionAct_RewandItem[3307524][1]["RewardItem"][2]["Attr"] = "0 10"
	tMarPromotionAct_RewandItem[3307524][1]["RewardEffect"] = {}
	tMarPromotionAct_RewandItem[3307524][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--欢乐回气丹大礼包
	tMarPromotionAct_RewandItem[3307525]={}
	tMarPromotionAct_RewandItem[3307525][1]={}
	tMarPromotionAct_RewandItem[3307525][1]["LogId"] = 12001012
	tMarPromotionAct_RewandItem[3307525][1]["DeleteItem"] = {}
	tMarPromotionAct_RewandItem[3307525][1]["DeleteItem"][1] = {}
	tMarPromotionAct_RewandItem[3307525][1]["DeleteItem"][1]["Id"] = 3307525
	tMarPromotionAct_RewandItem[3307525][1]["RewardItem"] = {}
	tMarPromotionAct_RewandItem[3307525][1]["RewardItem"][1] = {}
	tMarPromotionAct_RewandItem[3307525][1]["RewardItem"][1]["Id"] = 3306698
	tMarPromotionAct_RewandItem[3307525][1]["RewardItem"][1]["Attr"] = "0 10"
	tMarPromotionAct_RewandItem[3307525][1]["RewardItem"][2] = {}
	tMarPromotionAct_RewandItem[3307525][1]["RewardItem"][2]["Id"] = 3307521
	tMarPromotionAct_RewandItem[3307525][1]["RewardItem"][2]["Attr"] = "0 2"
	tMarPromotionAct_RewandItem[3307525][1]["RewardEffect"] = {}
	tMarPromotionAct_RewandItem[3307525][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	--欢乐固化石大礼包
	tMarPromotionAct_RewandItem[3307526]={}
	tMarPromotionAct_RewandItem[3307526][1]={}
	tMarPromotionAct_RewandItem[3307526][1]["LogId"] = 12001012
	tMarPromotionAct_RewandItem[3307526][1]["DeleteItem"] = {}
	tMarPromotionAct_RewandItem[3307526][1]["DeleteItem"][1] = {}
	tMarPromotionAct_RewandItem[3307526][1]["DeleteItem"][1]["Id"] = 3307526
	tMarPromotionAct_RewandItem[3307526][1]["RewardItem"] = {}
	tMarPromotionAct_RewandItem[3307526][1]["RewardItem"][1] = {}
	tMarPromotionAct_RewandItem[3307526][1]["RewardItem"][1]["Id"] = 723695
	tMarPromotionAct_RewandItem[3307526][1]["RewardItem"][1]["Attr"] = "0 1"
	tMarPromotionAct_RewandItem[3307526][1]["RewardItem"][2] = {}
	tMarPromotionAct_RewandItem[3307526][1]["RewardItem"][2]["Id"] = 3307521
	tMarPromotionAct_RewandItem[3307526][1]["RewardItem"][2]["Attr"] = "0 3"
	tMarPromotionAct_RewandItem[3307526][1]["RewardEffect"] = {}
	tMarPromotionAct_RewandItem[3307526][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--欢乐龙珠卷大礼包
	tMarPromotionAct_RewandItem[3307527]={}
	tMarPromotionAct_RewandItem[3307527][1]={}
	tMarPromotionAct_RewandItem[3307527][1]["LogId"] = 12001012
	tMarPromotionAct_RewandItem[3307527][1]["DeleteItem"] = {}
	tMarPromotionAct_RewandItem[3307527][1]["DeleteItem"][1] = {}
	tMarPromotionAct_RewandItem[3307527][1]["DeleteItem"][1]["Id"] = 3307527
	tMarPromotionAct_RewandItem[3307527][1]["RewardItem"] = {}
	tMarPromotionAct_RewandItem[3307527][1]["RewardItem"][1] = {}
	tMarPromotionAct_RewandItem[3307527][1]["RewardItem"][1]["Id"] = 720028
	tMarPromotionAct_RewandItem[3307527][1]["RewardItem"][1]["Attr"] = "0 1"
	tMarPromotionAct_RewandItem[3307527][1]["RewardItem"][2] = {}
	tMarPromotionAct_RewandItem[3307527][1]["RewardItem"][2]["Id"] = 3307521
	tMarPromotionAct_RewandItem[3307527][1]["RewardItem"][2]["Attr"] = "0 1"
	tMarPromotionAct_RewandItem[3307527][1]["RewardEffect"] = {}
	tMarPromotionAct_RewandItem[3307527][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--欢乐马匹大礼包
	tMarPromotionAct_RewandItem[3307528]={}
	tMarPromotionAct_RewandItem[3307528][1]={}
	tMarPromotionAct_RewandItem[3307528][1]["LogId"] = 12001012
	tMarPromotionAct_RewandItem[3307528][1]["DeleteItem"] = {}
	tMarPromotionAct_RewandItem[3307528][1]["DeleteItem"][1] = {}
	tMarPromotionAct_RewandItem[3307528][1]["DeleteItem"][1]["Id"] = 3307528
	tMarPromotionAct_RewandItem[3307528][1]["RewardItem"] = {}
	tMarPromotionAct_RewandItem[3307528][1]["RewardItem"][1] = {}
	tMarPromotionAct_RewandItem[3307528][1]["RewardItem"][1]["Id"] = 729365
	tMarPromotionAct_RewandItem[3307528][1]["RewardItem"][1]["Attr"] = "0 1"
	tMarPromotionAct_RewandItem[3307528][1]["RewardItem"][2] = {}
	tMarPromotionAct_RewandItem[3307528][1]["RewardItem"][2]["Id"] = 3307521
	tMarPromotionAct_RewandItem[3307528][1]["RewardItem"][2]["Attr"] = "0 5"
	tMarPromotionAct_RewandItem[3307528][1]["RewardEffect"] = {}
	tMarPromotionAct_RewandItem[3307528][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--欢乐金钢坚钻大礼包
	tMarPromotionAct_RewandItem[3307529]={}
	tMarPromotionAct_RewandItem[3307529][1]={}
	tMarPromotionAct_RewandItem[3307529][1]["LogId"] = 12001012
	tMarPromotionAct_RewandItem[3307529][1]["DeleteItem"] = {}
	tMarPromotionAct_RewandItem[3307529][1]["DeleteItem"][1] = {}
	tMarPromotionAct_RewandItem[3307529][1]["DeleteItem"][1]["Id"] = 3307529
	tMarPromotionAct_RewandItem[3307529][1]["RewardItem"] = {}
	tMarPromotionAct_RewandItem[3307529][1]["RewardItem"][1] = {}
	tMarPromotionAct_RewandItem[3307529][1]["RewardItem"][1]["Id"] = 1200005
	tMarPromotionAct_RewandItem[3307529][1]["RewardItem"][1]["Attr"] = "0 2"
	tMarPromotionAct_RewandItem[3307529][1]["RewardItem"][2] = {}
	tMarPromotionAct_RewandItem[3307529][1]["RewardItem"][2]["Id"] = 3307521
	tMarPromotionAct_RewandItem[3307529][1]["RewardItem"][2]["Attr"] = "0 3"
	tMarPromotionAct_RewandItem[3307529][1]["RewardEffect"] = {}
	tMarPromotionAct_RewandItem[3307529][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--欢乐星陨石大礼包
	tMarPromotionAct_RewandItem[3307530]={}
	tMarPromotionAct_RewandItem[3307530][1]={}
	tMarPromotionAct_RewandItem[3307530][1]["LogId"] = 12001012
	tMarPromotionAct_RewandItem[3307530][1]["DeleteItem"] = {}
	tMarPromotionAct_RewandItem[3307530][1]["DeleteItem"][1] = {}
	tMarPromotionAct_RewandItem[3307530][1]["DeleteItem"][1]["Id"] = 3307530
	tMarPromotionAct_RewandItem[3307530][1]["RewardItem"] = {}
	tMarPromotionAct_RewandItem[3307530][1]["RewardItem"][1] = {}
	tMarPromotionAct_RewandItem[3307530][1]["RewardItem"][1]["Id"] = 3009002
	tMarPromotionAct_RewandItem[3307530][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tMarPromotionAct_RewandItem[3307530][1]["RewardItem"][2] = {}
	tMarPromotionAct_RewandItem[3307530][1]["RewardItem"][2]["Id"] = 3307521
	tMarPromotionAct_RewandItem[3307530][1]["RewardItem"][2]["Attr"] = "0 3"
	tMarPromotionAct_RewandItem[3307530][1]["RewardEffect"] = {}
	tMarPromotionAct_RewandItem[3307530][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--黄色神纹精粹礼包
	tMarPromotionAct_RewandItem[3307531]={}
	tMarPromotionAct_RewandItem[3307531][1]={}
	tMarPromotionAct_RewandItem[3307531][1]["LogId"] = 12001012
	tMarPromotionAct_RewandItem[3307531][1]["DeleteItem"] = {}
	tMarPromotionAct_RewandItem[3307531][1]["DeleteItem"][1] = {}
	tMarPromotionAct_RewandItem[3307531][1]["DeleteItem"][1]["Id"] = 3307531
	tMarPromotionAct_RewandItem[3307531][1]["RewardItem"] = {}
	tMarPromotionAct_RewandItem[3307531][1]["RewardItem"][1] = {}
	tMarPromotionAct_RewandItem[3307531][1]["RewardItem"][1]["Id"] = 4050001
	tMarPromotionAct_RewandItem[3307531][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tMarPromotionAct_RewandItem[3307531][1]["RewardEffect"] = {}
	tMarPromotionAct_RewandItem[3307531][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--清心符礼包
	tMarPromotionAct_RewandItem[3307532]={}
	tMarPromotionAct_RewandItem[3307532][1]={}
	tMarPromotionAct_RewandItem[3307532][1]["LogId"] = 12001012
	tMarPromotionAct_RewandItem[3307532][1]["DeleteItem"] = {}
	tMarPromotionAct_RewandItem[3307532][1]["DeleteItem"][1] = {}
	tMarPromotionAct_RewandItem[3307532][1]["DeleteItem"][1]["Id"] = 3307532
	tMarPromotionAct_RewandItem[3307532][1]["RewardItem"] = {}
	tMarPromotionAct_RewandItem[3307532][1]["RewardItem"][1] = {}
	tMarPromotionAct_RewandItem[3307532][1]["RewardItem"][1]["Id"] = 720128
	tMarPromotionAct_RewandItem[3307532][1]["RewardItem"][1]["Attr"] = "0 3 3"
	tMarPromotionAct_RewandItem[3307532][1]["RewardEffect"] = {}
	tMarPromotionAct_RewandItem[3307532][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 必定掉落
local tMarPromotionAct_MapDrop = {}
	tMarPromotionAct_MapDrop["MustMapDrop"] = {}
	tMarPromotionAct_MapDrop["MustMapDrop"][1] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][2] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][3] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][4] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][5] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][6] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][7] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][8] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][9] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][10] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][11] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][12] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][13] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][14] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][15] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][16] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][17] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][18] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][19] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][20] = 720027
	tMarPromotionAct_MapDrop["MustMapDrop"][21] = 3002027
	tMarPromotionAct_MapDrop["MustMapDrop"][22] = 3002027
	tMarPromotionAct_MapDrop["MustMapDrop"][23] = 3002027
	tMarPromotionAct_MapDrop["MustMapDrop"][24] = 3002027
	tMarPromotionAct_MapDrop["MustMapDrop"][25] = 3002027
	tMarPromotionAct_MapDrop["MustMapDrop"][26] = 3200796
	tMarPromotionAct_MapDrop["MustMapDrop"][27] = 3200796
	tMarPromotionAct_MapDrop["MustMapDrop"][28] = 3200796
	tMarPromotionAct_MapDrop["MustMapDrop"][29] = 3200796
	tMarPromotionAct_MapDrop["MustMapDrop"][30] = 3200796
	tMarPromotionAct_MapDrop["MustMapDrop"][31] = 3003124
	tMarPromotionAct_MapDrop["MustMapDrop"][32] = 3003124
	tMarPromotionAct_MapDrop["MustMapDrop"][33] = 3003124
	tMarPromotionAct_MapDrop["MustMapDrop"][34] = 3003124
	tMarPromotionAct_MapDrop["MustMapDrop"][35] = 3003124
	tMarPromotionAct_MapDrop["MustMapDrop"][36] = 730001
	tMarPromotionAct_MapDrop["MustMapDrop"][37] = 730001
	tMarPromotionAct_MapDrop["MustMapDrop"][38] = 730001
	tMarPromotionAct_MapDrop["MustMapDrop"][39] = 730001
	tMarPromotionAct_MapDrop["MustMapDrop"][40] = 730001
	
	-- 随机掉落
	tMarPromotionAct_MapDrop["RandomMapDrop"] = {}
	tMarPromotionAct_MapDrop["RandomMapDrop"][1] = {}
	tMarPromotionAct_MapDrop["RandomMapDrop"][1]["ItemChanceSum"] = 10000
	-- 龙珠*1 10.65%
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][1] = {}
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][1]["RandomItemChanceType"] = 2
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][1]["ItemChance"] = 1065
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][1]["Item_1"] = 1088000
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][1]["Num"] = 1
	-- 明亮星陨石礼包*3 20%
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][2] = {}
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][2]["RandomItemChanceType"] = 2
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][2]["ItemChance"] = 2000
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][2]["Item_1"] = 3200467
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][2]["Num"] = 3
	
	-- 黄色神纹精粹礼包*5 40%
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][3] = {}
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][3]["RandomItemChanceType"] = 2
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][3]["ItemChance"] = 4000
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][3]["Item_1"] = 3307531
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][3]["Num"] = 5
	
	-- 清心符礼包*5 40%
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][4] = {}
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][4]["RandomItemChanceType"] = 2
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][4]["ItemChance"] = 2900
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][4]["Item_1"] = 3307532
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][4]["Num"] = 5
	
	-- +6赤炼石*1 0.05%
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][5] = {}
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][5]["RandomItemChanceType"] = 2
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][5]["ItemChance"] = 5
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][5]["Item_1"] = 730006
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][5]["Num"] = 1
	
	-- 金刚尖钻*1 0.05%
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][6] = {}
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][6]["RandomItemChanceType"] = 2
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][6]["ItemChance"] = 5
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][6]["Item_1"] = 1200005
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][6]["Num"] = 1
	
	-- 小固化石*3 0.20%
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][7] = {}
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][7]["RandomItemChanceType"] = 2
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][7]["ItemChance"] = 20
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][7]["Item_1"] = 723694
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][7]["Num"] = 3
	
	-- +6马匹*1 0.05%
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][8] = {}
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][8]["RandomItemChanceType"] = 2
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][8]["ItemChance"] = 5
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][8]["Item_1"] = 728527
	tMarPromotionAct_MapDrop["RandomMapDrop"][1][8]["Num"] = 1
	
	local tMarPromotionAct_ItemId = {}
	tMarPromotionAct_ItemId[1] = 730006
	tMarPromotionAct_ItemId[2] = 1200005
	tMarPromotionAct_ItemId[3] = 723694
	tMarPromotionAct_ItemId[4] = 728527
	
	local tMarPromotionAct_Global = {}
	
	tMarPromotionAct_Global[730006] = {}
	tMarPromotionAct_Global[730006]["Id"] = 52049
	tMarPromotionAct_Global[730006]["Pos"] = 1
	tMarPromotionAct_Global[730006]["MaxData"] = 5
	
	tMarPromotionAct_Global[1200005] = {}
	tMarPromotionAct_Global[1200005]["Id"] = 52049
	tMarPromotionAct_Global[1200005]["Pos"] = 2
	tMarPromotionAct_Global[1200005]["MaxData"] = 5
	
	tMarPromotionAct_Global[723694] = {}
	tMarPromotionAct_Global[723694]["Id"] = 52049
	tMarPromotionAct_Global[723694]["Pos"] = 3
	tMarPromotionAct_Global[723694]["MaxData"] = 10
	
	tMarPromotionAct_Global[728527] = {}
	tMarPromotionAct_Global[728527]["Id"] = 52049
	tMarPromotionAct_Global[728527]["Pos"] = 4
	tMarPromotionAct_Global[728527]["MaxData"] = 5
--log
local tMarPromotionAct_log = {}
tMarPromotionAct_log["Log"] = "0,0,3307521,1,12001012,1,%d,%d"
local tMarPromotionAct_EmoneyLog = {}
tMarPromotionAct_EmoneyLog[3307521] = "350	21180	0	0	1	"
tMarPromotionAct_EmoneyLog[730006] = "350	21181	0	0	%d	"
tMarPromotionAct_EmoneyLog[1200005] = "350	21182	0	0	%d	"
tMarPromotionAct_EmoneyLog[723694] = "350	21183	0	0	%d	"
tMarPromotionAct_EmoneyLog[728527] = "350	21184	0	0	%d	"

local tMarPromotionAct_OutTimelog = {}
tMarPromotionAct_OutTimelog[3307521] = "0,0,3307521,1,12001012,2,0,0"
----------------------------------NPC逻辑--------------------------------------
function MarPromotionAct_OpenEmoneyShop(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tMarPromotionAct_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	User_OpenDialog()
end

function MarPromotionAct_ClearGlobal()
	--活动时间
	if not Sys_ChkFullTime(tMarPromotionAct_Cont["ActTime"]) then
		return
	end
	
	local nGlobalId = tMarPromotionAct_Global[730006]["Id"]
	
	for i = 1,4 do
		Sys_SetSynaGlobalData(nGlobalId,i,0)
	end
end
----------------------------------物品逻辑--------------------------------------
function MarPromotionAct_OpenRewardBag(nItemId)
	if Item_ChkItem(nItemId) then
		local nSpace = RewardTemplate_GetRewardSpace(tMarPromotionAct_RewandItem[nItemId][1])-RewardTemplate_GetDelSpace(tMarPromotionAct_RewandItem[nItemId][1])
		if not(User_CheckLeftSpace(nSpace)) then
		--提示
		Sys_MsgBox(string.format(tMarPromotionAct_Text["MsgSpace"],nSpace))
		return 
		end
		RewardTemplate_UseItemAndMsg(tMarPromotionAct_RewandItem[nItemId][1])
	end
end

-- 进入副本
function MarPromotionAct_ChgMap()
	local nInstanceId = tMarPromotionAct_Cont["InstanceId"]
	User_EnterInstance(nInstanceId)
	User_TalkChannel2005(tMarPromotionAct_Text["ChgPlace"])
end

--传送回双龙城
function MarPromotionAct_FromMap(nUserId)
	local nMapId = tMarPromotionAct_Cont["Map"][1002]["MapId"]
	local nPoX = tMarPromotionAct_Cont["Map"][1002]["PosX"]
	local nPoY = tMarPromotionAct_Cont["Map"][1002]["PosY"]
	local nRange = tMarPromotionAct_Cont["Map"][1002]["Range"]
	User_UserRandBoundTrans(nMapId,nPoX,nPoY,nRange,nRange,1,nUserId)
end

--物品掉落
function MarPromotionAct_MapDrop()
	
	
	local nFlag,tAward = Probabil_RandomAward(tMarPromotionAct_MapDrop["RandomMapDrop"],1)
	local nItemId = tAward[1]["tAward"][1]["Item_1"]
	local nNum = tAward[1]["tAward"][1]["Num"]

	if nItemId ~= 0 then
		for i = 1,4 do
			if nItemId == tMarPromotionAct_ItemId[i] then
				local nGlobalId = tMarPromotionAct_Global[nItemId]["Id"]
				local nPos = tMarPromotionAct_Global[nItemId]["Pos"]
				local nMaxData = tMarPromotionAct_Global[nItemId]["MaxData"]
				local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
				
				if nData >= nMaxData then
					nItemId = tMarPromotionAct_MapDrop["RandomMapDrop"][1][3]["Item_1"]
					nNum = tMarPromotionAct_MapDrop["RandomMapDrop"][1][3]["Num"]
				else
					nData = nData + 1
					Sys_SetSynaGlobalData(nGlobalId,nPos,nData)
					Sys_SaveEmoneyBuy(string.format(tMarPromotionAct_EmoneyLog[nItemId],nNum))
				end
			end
		end
		
		local nMapId = Get_UserMapId()
		local nPosX = tMarPromotionAct_Cont["MapDrop"]["PosX"]
		local nPosY = tMarPromotionAct_Cont["MapDrop"]["PosY"]
		local nCellx = tMarPromotionAct_Cont["MapDrop"]["Cellx"]
		local nCelly = tMarPromotionAct_Cont["MapDrop"]["Celly"]
		local nExistTime = tMarPromotionAct_Cont["MapDrop"]["ExistTime"]
		
		for k,v in pairs(tMarPromotionAct_MapDrop["MustMapDrop"]) do
			Map_DropMultiItems(nMapId,v,nPosX,nPosY,nCellx,nCelly,1,nExistTime)
		end
		
		for j = 1,nNum do
			Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,nCellx,nCelly,1,nExistTime)
		end
		
		Sys_SaveEmoneyBuy(tMarPromotionAct_EmoneyLog[3307521])
		Sys_SaveActionFestivalLog(string.format(tMarPromotionAct_log["Log"],nItemId,nNum))
	end
end

function MarPromotionAct_MakeHappyRoll(nItemId)
	local nNpcId = Get_NpcId()
	if not Sys_ChkFullTime(tMarPromotionAct_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nMapId = Get_UserMapId()
	
	if nMapId == 10137 or nMapId == 10250 then
		User_TalkChannel2005(tMarPromotionAct_Text["NoFromMap"])
		return
	end
	
	local nEvent = tMarPromotionAct_Stc[1]["EventType"]
	local nType = tMarPromotionAct_Stc[1]["DataType"]
	
	if Task_StcInterval(nEvent,nType,6,0) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	if Get_UserStatisticValue(nEvent,nType) == 1 then
		User_TalkChannel2005(tMarPromotionAct_Text["NoFromMap"])
		return
	end
	
	if Item_ChkItem(nItemId) then
		if Item_DelItem(nItemId) then
			-- 设计时器
			Task_SetStatistic(nEvent,nType,1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			
			local nTimeDelay = tMarPromotionAct_Cont["TimeDelay"]
			local nTimeType = tMarPromotionAct_Cont["TimeType"]
			if nTimeDelay <= 0 then
				return
			end
			
			local sFunc = "MarPromotionAct_FromMap"
			User_SetTimer(nTimeDelay,sFunc,nTimeType)
			-- 传送地图
			MarPromotionAct_ChgMap()
			MarPromotionAct_MapDrop()
		end
	else
		local nNpcId = Get_NpcId()
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	end
end

function MarPromotionAct_AutoRead(nItemId)
	if not Sys_ChkFullTime(tMarPromotionAct_Cont["ActTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tMarPromotionAct_Text["PlaceOutTime"])
			Sys_SaveActionFestivalLog(tMarPromotionAct_OutTimelog[3307521])
		return
		end
	end
	
	local nMapId = tMarPromotionAct_Cont["Map"][1002]["MapId"]
	local nPosX = tMarPromotionAct_Cont["Map"][1002]["PosX"]
	local nPosY = tMarPromotionAct_Cont["Map"][1002]["PosY"]
	local nGotoNpcId = tMarPromotionAct_Cont["Map"][1002]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nGotoNpcId)
end
----------------------------------NPC模板---------------------------------------
tNpcFace[4121] = 18
tNpcGossip[22644] = tNpcGossip[22644] or DefaultNpc:new{}
tNpcGossip[22644]["OptionHidden"] = 1
tNpcGossip[22644]["DialogueText"] = tMarPromotionAct_Text[22644]

-- 活动前
tNpcGossip[22644]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[22644]["tOption1-1"] = {111}
tNpcGossip[22644]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tMarPromotionAct_Cont["BefTime"])
end

--活动后
tNpcGossip[22644]["Text1-2"] = {121}
tNpcGossip[22644]["tOption1-2"] = {121}
tNpcGossip[22644]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tMarPromotionAct_Cont["ActTime"]) 
end

-- 活动中
tNpcGossip[22644]["Text1-3"] = {131,132,133,134}
tNpcGossip[22644]["tOption1-3"] = {131,132,133}
tNpcGossip[22644]["OptionFunc131"] = "MarPromotionAct_OpenEmoneyShop</N>22644"
tNpcGossip[22644]["OptionPoint132"] = "2-1"
tNpcGossip[22644]["ChkFunc1-3"] = function ()
	return  Sys_ChkFullTime(tMarPromotionAct_Cont["ActTime"])
end

tNpcGossip[22644]["Text2-1"] = {211,212}
tNpcGossip[22644]["tOption2-1"] = {211}
tNpcGossip[22644]["OptionFunc211"] = "MarPromotionAct_MakeHappyRoll</N>3307521"

tNpcGossip[22644]["Text2-2"] = {221,222}
tNpcGossip[22644]["tOption2-2"] = {221}



--------------------------------物品模板--------------------------------------
tItemFace[3307533] = 1366

tItemFace[3307521] = 1367
-- tItem[3307521] = tItem[3307521] or {}
-- tItem[3307521]["DialogueText"] = tMarPromotionAct_Text[3307521]
-- tItem[3307521]["Text1-1"] = {111,112}
-- tItem[3307521]["tOption1-1"] = {111}
-- tItem[3307521]["OptionFunc111"] = "MarPromotionAct_MakeHappyRoll</N>3307521"
tItem[3307521] = tItem[3307521] or {}
tItem[3307521]["Function"] = function(nItemId,sItemName)
	MarPromotionAct_AutoRead(nItemId)
end

tItem[3307522] = tItem[3307522] or {}
tItem[3307522]["Function"] = function(nItemId,sItemName)
	MarPromotionAct_OpenRewardBag(nItemId)
end

tItem[3307523] = tItem[3307522] or {}
tItem[3307524] = tItem[3307522] or {}
tItem[3307525] = tItem[3307522] or {}
tItem[3307526] = tItem[3307522] or {}
tItem[3307527] = tItem[3307522] or {}
tItem[3307528] = tItem[3307522] or {}
tItem[3307529] = tItem[3307522] or {}
tItem[3307530] = tItem[3307522] or {}
tItem[3307531] = tItem[3307522] or {}
tItem[3307532] = tItem[3307522] or {}


--------------------------------时间自检--------------------------------------
-- 清理全局表
-- local tMarPromotionAct_ClearGlobal = {}
	-- tMarPromotionAct_ClearGlobal[1] = {}
	-- tMarPromotionAct_ClearGlobal[1]["TimeType"] = 4
	-- tMarPromotionAct_ClearGlobal[1]["Time"] = "00:00 00:00"
	-- tMarPromotionAct_ClearGlobal[1]["Func"] = MarPromotionAct_ClearGlobal
-- table.insert(tSystemTime_InitialData,tMarPromotionAct_ClearGlobal[1])

