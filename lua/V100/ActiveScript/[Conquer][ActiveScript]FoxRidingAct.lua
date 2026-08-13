------------------------------------------------------------------------------------
--Name:		170217[简体征服][活动脚本]3月份骑宠活动
--Purpose:	3月份骑宠活动
--Creator: 	严振飞
--Created:	2017/2/17
------------------------------------------------------------------------------------
-- 命名规则：
-- FoxRidingAct_

-- Log id : 12000656

-- 掩码说明：

--157,16 记录是否上交-狐妖内丹1
--157,17 记录是否上交-狐妖内丹2
--157,18 记录是否上交-狐妖内丹3

--157,19 记录炼丹强度进度值1
--157,20 记录炼丹强度进度值2
--157,21 记录炼丹强度进度值3

--157,22 记录蕴灵丹等级
--157,26 记录是否炼制过蕴灵丹

--157,27 记录是否背包信（3302327）

--157,28 记录是击杀怪物数量

--157,54 记录是否关闭材料天石二次确认


-------------------------------------------基础数据部分-------------------------------------------
-- 掩码数据
local tFoxRidingAct_Stc = {}

--------------------------------
	-- 内丹数量
	tFoxRidingAct_Stc["AlchemyNum"] = {3302313,3302314,3302315}
	-- 狐妖内丹1
	tFoxRidingAct_Stc[3302313] = {}
	tFoxRidingAct_Stc[3302313]["EventType"] = 157
	tFoxRidingAct_Stc[3302313]["DataType"] = 16
	-- 狐妖内丹2
	tFoxRidingAct_Stc[3302314] = {}
	tFoxRidingAct_Stc[3302314]["EventType"] = 157
	tFoxRidingAct_Stc[3302314]["DataType"] = 17
	-- 狐妖内丹3
	tFoxRidingAct_Stc[3302315] = {}
	tFoxRidingAct_Stc[3302315]["EventType"] = 157
	tFoxRidingAct_Stc[3302315]["DataType"] = 18
--------------------------------
	-- 记录炼丹强度进度值1
	tFoxRidingAct_Stc[1] = {}
	tFoxRidingAct_Stc[1]["EventType"] = 157
	tFoxRidingAct_Stc[1]["DataType"] = 19
	-- 记录炼丹强度进度值2
	tFoxRidingAct_Stc[2] = {}
	tFoxRidingAct_Stc[2]["EventType"] = 157
	tFoxRidingAct_Stc[2]["DataType"] = 20
	-- 记录炼丹强度进度值3
	tFoxRidingAct_Stc[3] = {}
	tFoxRidingAct_Stc[3]["EventType"] = 157
	tFoxRidingAct_Stc[3]["DataType"] = 21
	-- 蕴灵丹等级
	tFoxRidingAct_Stc[4] = {}
	tFoxRidingAct_Stc[4]["EventType"] = 157
	tFoxRidingAct_Stc[4]["DataType"] = 22
	-- 是否炼制过蕴灵丹
	tFoxRidingAct_Stc[5] = {}
	tFoxRidingAct_Stc[5]["EventType"] = 157
	tFoxRidingAct_Stc[5]["DataType"] = 26
	-- 记录杀怪数量
	tFoxRidingAct_Stc[6] = {}
	tFoxRidingAct_Stc[6]["EventType"] = 157
	tFoxRidingAct_Stc[6]["DataType"] = 28
	tFoxRidingAct_Stc[6]["Phase_1"] = 1000
	tFoxRidingAct_Stc[6]["Phase_2"] = 3000

	-- 记录是否关闭材料天石二次确认
	tFoxRidingAct_Stc[7] = {}
	tFoxRidingAct_Stc[7]["EventType"] = 157
	tFoxRidingAct_Stc[7]["DataType"] = 54


----------------------------------------
-- 基础数据
local tFoxRidingAct_Cont = {}
	-- 活动时间
	tFoxRidingAct_Cont["BefTime"] = "2017-01-01 00:00 2017-04-17 23:59"
	tFoxRidingAct_Cont["NowTime"] = "2017-04-18 00:00 2017-05-01 23:59"
	-- 内嵌网页
	tFoxRidingAct_Cont["Web"] = "http://co.99.com/guide/event/legend_of_celestial_fox.shtml"
	-- 等级要求
	tFoxRidingAct_Cont["Level"] = 80
	tFoxRidingAct_Cont["Metempsychosis"] = 0
	-- 输入框长度
	tFoxRidingAct_Cont["OptEditLen"] = 10
	
	-- 炼丹读条数据
	tFoxRidingAct_Cont["Explore"] = {}
	tFoxRidingAct_Cont["Explore"]["Time"] = 2
	tFoxRidingAct_Cont["Explore"]["ActionId"] = 220
	-- 翻牌器类型
	tFoxRidingAct_Cont["OpenReward"] = 15

	-- 寻路数据
	tFoxRidingAct_Cont["FindNpc"] = {}
	-- 青丘狐仙寻路去炉子
	tFoxRidingAct_Cont["FindNpc"][20359] = {}
	tFoxRidingAct_Cont["FindNpc"][20359]["NpcId"] = 20360
	tFoxRidingAct_Cont["FindNpc"][20359]["MapId"] = 1002
	tFoxRidingAct_Cont["FindNpc"][20359]["PosX"] = 247
	tFoxRidingAct_Cont["FindNpc"][20359]["PosY"] = 223
	-- 炉子寻路去青丘狐仙
	tFoxRidingAct_Cont["FindNpc"][20360] = {}
	tFoxRidingAct_Cont["FindNpc"][20360]["NpcId"] = 20359
	tFoxRidingAct_Cont["FindNpc"][20360]["MapId"] = 1002
	tFoxRidingAct_Cont["FindNpc"][20360]["PosX"] = 242
	tFoxRidingAct_Cont["FindNpc"][20360]["PosY"] = 223

	-- 狐妖装【魅彩版】碎片需要数量
	tFoxRidingAct_Cont["CoatGroup"] = 15
	
	-- 炼丹材料单价
	tFoxRidingAct_Cont["CLcps"] = 9


	-- 秘法升阶需要材料
	tFoxRidingAct_Cont["MiFa"] = {}
	tFoxRidingAct_Cont["MiFa"]["ItemNum"] = 25 -- 需要各材料数
	tFoxRidingAct_Cont["MiFa"]["Emoney"] = 688 -- 需要天石数

	
----------------------------------------------------------------
-- 光效数据
local tFoxRidingAct_Effect = {}
	tFoxRidingAct_Effect["EffectObj"] = "self" 				-- 光效对象
	-----
	tFoxRidingAct_Effect["Progress"] = "zf2-e128" 			-- 读条光效
	tFoxRidingAct_Effect["MontDrop"] = "eidolon" 			-- 怪物掉落
	tFoxRidingAct_Effect["OpenNewItem"] = "zf2-e280" -- 使用青丘馈赠
	tFoxRidingAct_Effect["OpenReward"] = "coattryon" 		-- 翻牌器使用
	tFoxRidingAct_Effect["OpenPag"] = "zf2-e280" 			-- 各种礼包使用
	tFoxRidingAct_Effect["UpAlchemy"] = "zf2-e128" -- 灵丹品质升级
	tFoxRidingAct_Effect["DoAlchemy"] = "accession1-1" 		-- 精炼灵丹
	tFoxRidingAct_Effect["UpCoat"] = "FF12" 	-- 外套升级

	
	
-- 传送地图信息
local tFoxRidingAct_MapData = {}
	-- 青丘仙境(地图)
	tFoxRidingAct_MapData[1] = {}
	tFoxRidingAct_MapData[1]["MapId"] = 10129
	tFoxRidingAct_MapData[1]["Cellx"] = 254
	tFoxRidingAct_MapData[1]["Celly"] = 236
	--双龙城
	tFoxRidingAct_MapData[2] = {}
	tFoxRidingAct_MapData[2]["MapId"] = 1002
	tFoxRidingAct_MapData[2]["Cellx"] = 245
	tFoxRidingAct_MapData[2]["Celly"] = 228

-- 可寻路物品寻路配置
local tFoxRidingAct_ItemFind = {}
	tFoxRidingAct_ItemFind[3302311] = 20360
	tFoxRidingAct_ItemFind[3302313] = 20359
	tFoxRidingAct_ItemFind[3302314] = 20359
	tFoxRidingAct_ItemFind[3302315] = 20359
	
-- 物品ID数据
local tFoxRidingAct_ItemId = {}
	tFoxRidingAct_ItemId["Itemtype"] = {}
	-- 蕴灵丹ID
	tFoxRidingAct_ItemId["Itemtype"]["Alchemy"] = {}
	tFoxRidingAct_ItemId["Itemtype"]["Alchemy"][1] = 3302316
	tFoxRidingAct_ItemId["Itemtype"]["Alchemy"][2] = 3302317
	tFoxRidingAct_ItemId["Itemtype"]["Alchemy"][3] = 3302318
	tFoxRidingAct_ItemId["Itemtype"]["Alchemy"][4] = 3302319
	tFoxRidingAct_ItemId["Itemtype"]["Alchemy"][5] = 3302320
	tFoxRidingAct_ItemId["Itemtype"]["Alchemy"][6] = 3302321
	tFoxRidingAct_ItemId["Itemtype"]["Alchemy"][7] = 3302322
	tFoxRidingAct_ItemId["Itemtype"]["Alchemy"][8] = 3302323
	tFoxRidingAct_ItemId["Itemtype"]["Alchemy"][9] = 3302324
	
	-- 外套
	tFoxRidingAct_ItemId["Itemtype"]["Coat"] = {}
	tFoxRidingAct_ItemId["Itemtype"]["Coat"][1] = 200539 -- 九尾天狐(坐骑外套)
	tFoxRidingAct_ItemId["Itemtype"]["Coat"][2] = 200595 -- 昊天玄狐
	tFoxRidingAct_ItemId["Itemtype"]["Coat"][3] = 194405 -- 狐妖装【魅彩版】
	tFoxRidingAct_ItemId["Itemtype"]["Coat"][4] = 200596 -- 昊天玄狐【魅幻版】

	-- 翻牌消耗的物品（15位翻牌类型）
	tFoxRidingAct_ItemId["Itemtype"][15] = 3302554 -- 青丘馈赠（翻牌器）
	
-- 外套升级数据
local tFoxRidingAct_CoatUplev = {}
	tFoxRidingAct_CoatUplev[200539] = 200595
	tFoxRidingAct_CoatUplev[200595] = 200596

-- 外套升级显示几率
local tFoxRidingAct_ShowUpLev = {}
	-- 九尾天狐坐骑外套升级--显示成功率
	tFoxRidingAct_ShowUpLev[200539] = {}
	tFoxRidingAct_ShowUpLev[200539][1] = 0.9
	tFoxRidingAct_ShowUpLev[200539][2] = 2.7
	tFoxRidingAct_ShowUpLev[200539][3] = 4.5
	tFoxRidingAct_ShowUpLev[200539][4] = 6.3
	tFoxRidingAct_ShowUpLev[200539][5] = 9
	tFoxRidingAct_ShowUpLev[200539][6] = 13.5
	tFoxRidingAct_ShowUpLev[200539][7] = 18
	tFoxRidingAct_ShowUpLev[200539][8] = 27
	tFoxRidingAct_ShowUpLev[200539][9] = 45
	-- 无光效狐仙外套升级--显示成功率
	tFoxRidingAct_ShowUpLev[200595] = {}
	tFoxRidingAct_ShowUpLev[200595][1] = 0.1
	tFoxRidingAct_ShowUpLev[200595][2] = 0.3
	tFoxRidingAct_ShowUpLev[200595][3] = 0.5
	tFoxRidingAct_ShowUpLev[200595][4] = 0.7
	tFoxRidingAct_ShowUpLev[200595][5] = 1
	tFoxRidingAct_ShowUpLev[200595][6] = 1.5
	tFoxRidingAct_ShowUpLev[200595][7] = 2
	tFoxRidingAct_ShowUpLev[200595][8] = 3
	tFoxRidingAct_ShowUpLev[200595][9] = 5
-- 外套升级实际几率
local tFoxRidingAct_RealUpLev = {}
	-- 九尾天狐坐骑外套升级--实际成功率
	tFoxRidingAct_RealUpLev[200539] = {}
	tFoxRidingAct_RealUpLev[200539][1] = 0.9
	tFoxRidingAct_RealUpLev[200539][2] = 2.7
	tFoxRidingAct_RealUpLev[200539][3] = 4.5
	tFoxRidingAct_RealUpLev[200539][4] = 6.3
	tFoxRidingAct_RealUpLev[200539][5] = 9
	tFoxRidingAct_RealUpLev[200539][6] = 13.5
	tFoxRidingAct_RealUpLev[200539][7] = 18
	tFoxRidingAct_RealUpLev[200539][8] = 27
	tFoxRidingAct_RealUpLev[200539][9] = 45
	-- 无光效狐仙外套升级--实际成功率
	tFoxRidingAct_RealUpLev[200595] = {}
	tFoxRidingAct_RealUpLev[200595][1] = 0.096
	tFoxRidingAct_RealUpLev[200595][2] = 0.288
	tFoxRidingAct_RealUpLev[200595][3] = 0.48
	tFoxRidingAct_RealUpLev[200595][4] = 0.672
	tFoxRidingAct_RealUpLev[200595][5] = 0.96
	tFoxRidingAct_RealUpLev[200595][6] = 1.44
	tFoxRidingAct_RealUpLev[200595][7] = 1.92
	tFoxRidingAct_RealUpLev[200595][8] = 2.88
	tFoxRidingAct_RealUpLev[200595][9] = 4.8

	
-- 洗赠需要的洗赠道具数量
local tFoxRidingAct_WashNeedNun = {}
	tFoxRidingAct_WashNeedNun[194405] = 30
	tFoxRidingAct_WashNeedNun[200596] = 100


	
-------------------------------------------给奖励配置数据-------------------------------------------
-- 签到礼包给奖励
local tFoxRidingAct_QianDaoWard = {}
	tFoxRidingAct_QianDaoWard["LogId"] = 12000656
	tFoxRidingAct_QianDaoWard["RewardItem"] = {}
	tFoxRidingAct_QianDaoWard["RewardItem"][1] = {}
	tFoxRidingAct_QianDaoWard["RewardItem"][1]["Id"] = 3302311
	tFoxRidingAct_QianDaoWard["RewardItem"][1]["Attr"] = "0 10 3"


-- 取出青丘灵丹奖励配置
local tFoxRidingAct_GetYunDan = {}
	tFoxRidingAct_GetYunDan["LogId"] = 12000656
	tFoxRidingAct_GetYunDan["RewardItem"] = {}
	tFoxRidingAct_GetYunDan["RewardItem"][1] = {}
	tFoxRidingAct_GetYunDan["RewardItem"][1]["Id"] = 3302316
	tFoxRidingAct_GetYunDan["RewardItem"][1]["Attr"] = "0 1"
	tFoxRidingAct_GetYunDan["RewardNoNeedTip"] = 1 
	tFoxRidingAct_GetYunDan["LogStep"] = "1[4]"

-- 天狐之魄过期给气力值
local tFoxRidingAct_WashDel = {}
	tFoxRidingAct_WashDel["LogId"] = 12000656
	tFoxRidingAct_WashDel["RewardStrengthValue"] = {}
	tFoxRidingAct_WashDel["RewardStrengthValue"]["Value"] = 200
	tFoxRidingAct_WashDel["RewardNoNeedTip"] = 1 

-- 升级外套奖励配置
local tFoxRidingAct_GetNewCoat = {}
	-- 旧外套升级新外套
	tFoxRidingAct_GetNewCoat[200539] = {}
	tFoxRidingAct_GetNewCoat[200539]["LogId"] = 12000656
	tFoxRidingAct_GetNewCoat[200539]["DeleteItem"] = {}
	tFoxRidingAct_GetNewCoat[200539]["DeleteItem"][1] = {}
	tFoxRidingAct_GetNewCoat[200539]["DeleteItem"][1]["Id"] = 200539
	tFoxRidingAct_GetNewCoat[200539]["DeleteItem"][1]["SaveTime"]= 0 -- 删除非时效道具
	tFoxRidingAct_GetNewCoat[200539]["RewardItem"] = {}
	tFoxRidingAct_GetNewCoat[200539]["RewardItem"][1] = {}
	tFoxRidingAct_GetNewCoat[200539]["RewardItem"][1]["Id"] = 200595
	tFoxRidingAct_GetNewCoat[200539]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFoxRidingAct_GetNewCoat[200539]["RewardNoNeedTip"] = 1 
	tFoxRidingAct_GetNewCoat[200539]["LogStep"] = "1[5]"

	-- 新外套升级（光效）新外套
	tFoxRidingAct_GetNewCoat[200595] = {}
	tFoxRidingAct_GetNewCoat[200595]["LogId"] = 12000656
	tFoxRidingAct_GetNewCoat[200595]["DeleteItem"] = {}
	tFoxRidingAct_GetNewCoat[200595]["DeleteItem"][1] = {}
	tFoxRidingAct_GetNewCoat[200595]["DeleteItem"][1]["Id"] = 200595
	tFoxRidingAct_GetNewCoat[200595]["DeleteItem"][1]["SaveTime"]= 0 -- 删除非时效道具
	tFoxRidingAct_GetNewCoat[200595]["RewardItem"] = {}
	tFoxRidingAct_GetNewCoat[200595]["RewardItem"][1] = {}
	tFoxRidingAct_GetNewCoat[200595]["RewardItem"][1]["Id"] = 200596
	tFoxRidingAct_GetNewCoat[200595]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFoxRidingAct_GetNewCoat[200595]["RewardNoNeedTip"] = 1 
	tFoxRidingAct_GetNewCoat[200595]["LogStep"] = "1[5]"

-- 外套洗赠
local tFoxRidingAct_WashItem = {}
	-- 新狐妖骑宠外套（光效版）
	tFoxRidingAct_WashItem[200596] = {}
	tFoxRidingAct_WashItem[200596]["LogId"] = 12000656
	tFoxRidingAct_WashItem[200596]["DeleteItem"] = {}
	tFoxRidingAct_WashItem[200596]["DeleteItem"][1] = {}
	tFoxRidingAct_WashItem[200596]["DeleteItem"][1]["Id"] = 3302325
	tFoxRidingAct_WashItem[200596]["DeleteItem"][1]["ItemNum"] = tFoxRidingAct_WashNeedNun[200596]
	tFoxRidingAct_WashItem[200596]["DeleteItem"][2] = {}
	tFoxRidingAct_WashItem[200596]["DeleteItem"][2]["Id"] = 200596
	tFoxRidingAct_WashItem[200596]["DeleteItem"][2]["Monopoly"]= 2
	tFoxRidingAct_WashItem[200596]["DeleteItem"][2]["SaveTime"]= 0 -- 删除非时效道具
	tFoxRidingAct_WashItem[200596]["RewardItem"] = {}
	tFoxRidingAct_WashItem[200596]["RewardItem"][1] = {}
	tFoxRidingAct_WashItem[200596]["RewardItem"][1]["Id"] = 200596
	tFoxRidingAct_WashItem[200596]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tFoxRidingAct_WashItem[200596]["RewardNoNeedTip"] = 1 
	-- 新狐仙外套
	tFoxRidingAct_WashItem[194405] = {}
	tFoxRidingAct_WashItem[194405]["LogId"] = 12000656
	tFoxRidingAct_WashItem[194405]["DeleteItem"] = {}
	tFoxRidingAct_WashItem[194405]["DeleteItem"][1] = {}
	tFoxRidingAct_WashItem[194405]["DeleteItem"][1]["Id"] = 3302325
	tFoxRidingAct_WashItem[194405]["DeleteItem"][1]["ItemNum"] = tFoxRidingAct_WashNeedNun[194405]
	tFoxRidingAct_WashItem[194405]["DeleteItem"][2] = {}
	tFoxRidingAct_WashItem[194405]["DeleteItem"][2]["Id"] = 194405
	tFoxRidingAct_WashItem[194405]["DeleteItem"][2]["Monopoly"]= 2
	tFoxRidingAct_WashItem[194405]["DeleteItem"][2]["SaveTime"]= 0 -- 删除非时效道具
	tFoxRidingAct_WashItem[194405]["RewardItem"] = {}
	tFoxRidingAct_WashItem[194405]["RewardItem"][1] = {}
	tFoxRidingAct_WashItem[194405]["RewardItem"][1]["Id"] = 194405
	tFoxRidingAct_WashItem[194405]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tFoxRidingAct_WashItem[194405]["RewardNoNeedTip"] = 1 

-- 外套碎片合成外套
local tFoxRidingAct_Piece2Cost = {}
	-- 人物时装合成
	tFoxRidingAct_Piece2Cost[3302326] = {}
	tFoxRidingAct_Piece2Cost[3302326]["LogId"] = 12000656
	tFoxRidingAct_Piece2Cost[3302326]["RewardItem"] = {}
	tFoxRidingAct_Piece2Cost[3302326]["RewardItem"][1] = {}
	tFoxRidingAct_Piece2Cost[3302326]["RewardItem"][1]["Id"] = 194405
	tFoxRidingAct_Piece2Cost[3302326]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tFoxRidingAct_Piece2Cost[3302326]["RewardNoNeedTip"] = 1 
	-- 坐骑外套合成
	tFoxRidingAct_Piece2Cost[3302368] = {}
	tFoxRidingAct_Piece2Cost[3302368]["LogId"] = 12000656
	tFoxRidingAct_Piece2Cost[3302368]["DeleteItem"] = {}
	tFoxRidingAct_Piece2Cost[3302368]["DeleteItem"][1] = {}
	tFoxRidingAct_Piece2Cost[3302368]["DeleteItem"][1]["Id"] = 3302368
	tFoxRidingAct_Piece2Cost[3302368]["DeleteItem"][1]["ItemNum"] = 9
	tFoxRidingAct_Piece2Cost[3302368]["RewardItem"] = {}
	tFoxRidingAct_Piece2Cost[3302368]["RewardItem"][1] = {}
	tFoxRidingAct_Piece2Cost[3302368]["RewardItem"][1]["Id"] = 200539
	tFoxRidingAct_Piece2Cost[3302368]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tFoxRidingAct_Piece2Cost[3302368]["RewardNoNeedTip"] = 1 
	
	
-- 内丹材料包
local tFoxRidingAct_ItemPag = {}
	-- 1个狐仙内丹
	tFoxRidingAct_ItemPag[1] = {}
	tFoxRidingAct_ItemPag[1]["LogId"] = 12000656
	tFoxRidingAct_ItemPag[1]["DeleteItem"] = {}
	tFoxRidingAct_ItemPag[1]["DeleteItem"][1] = {}
	tFoxRidingAct_ItemPag[1]["DeleteItem"][1]["Id"] = 3302423
	tFoxRidingAct_ItemPag[1]["RewardItem"] = {}
	tFoxRidingAct_ItemPag[1]["RewardItem"][1] = {}
	tFoxRidingAct_ItemPag[1]["RewardItem"][1]["Id"] = 3302313 -- 3种内丹随机
	tFoxRidingAct_ItemPag[1]["RewardItem"][1]["Attr"] = "0 1"

	-- 内丹个数
	tFoxRidingAct_ItemPag["Num"] = {}
	tFoxRidingAct_ItemPag["Num"][3302423] = 1
	tFoxRidingAct_ItemPag["Num"][3302424] = 2
	tFoxRidingAct_ItemPag["Num"][3302425] = 3
	tFoxRidingAct_ItemPag["Num"][3302426] = 4
	tFoxRidingAct_ItemPag["Num"][3302427] = 5
	tFoxRidingAct_ItemPag["Num"][3302428] = 8
	tFoxRidingAct_ItemPag["Num"][3302429] = 10
	tFoxRidingAct_ItemPag["Num"][3302430] = 12
	tFoxRidingAct_ItemPag["Num"][3302431] = 14
	tFoxRidingAct_ItemPag["Num"][3302432] = 15
	tFoxRidingAct_ItemPag["Num"][3302433] = 16
	tFoxRidingAct_ItemPag["Num"][3302434] = 18
	tFoxRidingAct_ItemPag["Num"][3302435] = 20
	tFoxRidingAct_ItemPag["Num"][3302436] = 22
	tFoxRidingAct_ItemPag["Num"][3302437] = 24
	tFoxRidingAct_ItemPag["Num"][3302438] = 25
	tFoxRidingAct_ItemPag["Num"][3302439] = 26
	tFoxRidingAct_ItemPag["Num"][3302440] = 28
	tFoxRidingAct_ItemPag["Num"][3302441] = 30
	tFoxRidingAct_ItemPag["Num"][3302442] = 32
	tFoxRidingAct_ItemPag["Num"][3302443] = 35
	tFoxRidingAct_ItemPag["Num"][3302444] = 45
	tFoxRidingAct_ItemPag["Num"][3302445] = 50
	tFoxRidingAct_ItemPag["Num"][3302446] = 60
	tFoxRidingAct_ItemPag["Num"][3302447] = 70
	tFoxRidingAct_ItemPag["Num"][3302448] = 80
	tFoxRidingAct_ItemPag["Num"][3302458] = 100

	
-- 时效外套礼包配置
local tFoxRidingAct_CoatPag = {}
	-- 1天时效狐妖装礼包
	tFoxRidingAct_CoatPag[3302449] = {}
	tFoxRidingAct_CoatPag[3302449]["LogId"] = 12000656
	tFoxRidingAct_CoatPag[3302449]["DeleteItem"] = {}
	tFoxRidingAct_CoatPag[3302449]["DeleteItem"][1] = {}
	tFoxRidingAct_CoatPag[3302449]["DeleteItem"][1]["Id"] = 3302449
	tFoxRidingAct_CoatPag[3302449]["RewardItem"] = {}
	tFoxRidingAct_CoatPag[3302449]["RewardItem"][1] = {}
	tFoxRidingAct_CoatPag[3302449]["RewardItem"][1]["Id"] = 194405
	tFoxRidingAct_CoatPag[3302449]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	
	-- 1天时效狐妖装礼包
	tFoxRidingAct_CoatPag[3302450] = {}
	tFoxRidingAct_CoatPag[3302450]["LogId"] = 12000656
	tFoxRidingAct_CoatPag[3302450]["DeleteItem"] = {}
	tFoxRidingAct_CoatPag[3302450]["DeleteItem"][1] = {}
	tFoxRidingAct_CoatPag[3302450]["DeleteItem"][1]["Id"] = 3302450
	tFoxRidingAct_CoatPag[3302450]["RewardItem"] = {}
	tFoxRidingAct_CoatPag[3302450]["RewardItem"][1] = {}
	tFoxRidingAct_CoatPag[3302450]["RewardItem"][1]["Id"] = 200595
	tFoxRidingAct_CoatPag[3302450]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"

	-- 1天时效狐妖装礼包
	tFoxRidingAct_CoatPag[3302451] = {}
	-- 幽游狐耳（男）
	tFoxRidingAct_CoatPag[3302451][1] = {}
	tFoxRidingAct_CoatPag[3302451][1]["LogId"] = 12000656
	tFoxRidingAct_CoatPag[3302451][1]["DeleteItem"] = {}
	tFoxRidingAct_CoatPag[3302451][1]["DeleteItem"][1] = {}
	tFoxRidingAct_CoatPag[3302451][1]["DeleteItem"][1]["Id"] = 3302451
	tFoxRidingAct_CoatPag[3302451][1]["RewardItem"] = {}
	tFoxRidingAct_CoatPag[3302451][1]["RewardItem"][1] = {}
	tFoxRidingAct_CoatPag[3302451][1]["RewardItem"][1]["Id"] = 3005977
	tFoxRidingAct_CoatPag[3302451][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 幽游狐耳（女）
	tFoxRidingAct_CoatPag[3302451][2] = {}
	tFoxRidingAct_CoatPag[3302451][2]["LogId"] = 12000656
	tFoxRidingAct_CoatPag[3302451][2]["DeleteItem"] = {}
	tFoxRidingAct_CoatPag[3302451][2]["DeleteItem"][1] = {}
	tFoxRidingAct_CoatPag[3302451][2]["DeleteItem"][1]["Id"] = 3302451
	tFoxRidingAct_CoatPag[3302451][2]["RewardItem"] = {}
	tFoxRidingAct_CoatPag[3302451][2]["RewardItem"][1] = {}
	tFoxRidingAct_CoatPag[3302451][2]["RewardItem"][1]["Id"] = 3005974
	tFoxRidingAct_CoatPag[3302451][2]["RewardItem"][1]["Attr"] = "0 1"


-- 普通礼包使用
local tFoxRidingAct_ItemWard = {}
	-- 明亮星陨石初级包
	tFoxRidingAct_ItemWard[3302452] = {}
	tFoxRidingAct_ItemWard[3302452]["LogId"] = 12000656
	tFoxRidingAct_ItemWard[3302452]["DeleteItem"] = {}
	tFoxRidingAct_ItemWard[3302452]["DeleteItem"][1] = {}
	tFoxRidingAct_ItemWard[3302452]["DeleteItem"][1]["Id"] = 3302452
	tFoxRidingAct_ItemWard[3302452]["RewardItem"] = {}
	tFoxRidingAct_ItemWard[3302452]["RewardItem"][1] = {}
	tFoxRidingAct_ItemWard[3302452]["RewardItem"][1]["Id"] = 3009001
	tFoxRidingAct_ItemWard[3302452]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- 明亮星陨石中级包
	tFoxRidingAct_ItemWard[3302453] = {}
	tFoxRidingAct_ItemWard[3302453]["NeedSpace"] = 2
	tFoxRidingAct_ItemWard[3302453]["LogId"] = 12000656
	tFoxRidingAct_ItemWard[3302453]["DeleteItem"] = {}
	tFoxRidingAct_ItemWard[3302453]["DeleteItem"][1] = {}
	tFoxRidingAct_ItemWard[3302453]["DeleteItem"][1]["Id"] = 3302453
	tFoxRidingAct_ItemWard[3302453]["RewardItem"] = {}
	tFoxRidingAct_ItemWard[3302453]["RewardItem"][1] = {}
	tFoxRidingAct_ItemWard[3302453]["RewardItem"][1]["Id"] = 3009001
	tFoxRidingAct_ItemWard[3302453]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	-- 明亮星陨石高级包
	tFoxRidingAct_ItemWard[3302454] = {}
	tFoxRidingAct_ItemWard[3302454]["NeedSpace"] = 4
	tFoxRidingAct_ItemWard[3302454]["LogId"] = 12000656
	tFoxRidingAct_ItemWard[3302454]["DeleteItem"] = {}
	tFoxRidingAct_ItemWard[3302454]["DeleteItem"][1] = {}
	tFoxRidingAct_ItemWard[3302454]["DeleteItem"][1]["Id"] = 3302454
	tFoxRidingAct_ItemWard[3302454]["RewardItem"] = {}
	tFoxRidingAct_ItemWard[3302454]["RewardItem"][1] = {}
	tFoxRidingAct_ItemWard[3302454]["RewardItem"][1]["Id"] = 3009001
	tFoxRidingAct_ItemWard[3302454]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	-- 晶莹星陨石礼包
	tFoxRidingAct_ItemWard[3302455] = {}
	tFoxRidingAct_ItemWard[3302455]["LogId"] = 12000656
	tFoxRidingAct_ItemWard[3302455]["DeleteItem"] = {}
	tFoxRidingAct_ItemWard[3302455]["DeleteItem"][1] = {}
	tFoxRidingAct_ItemWard[3302455]["DeleteItem"][1]["Id"] = 3302455
	tFoxRidingAct_ItemWard[3302455]["RewardItem"] = {}
	tFoxRidingAct_ItemWard[3302455]["RewardItem"][1] = {}
	tFoxRidingAct_ItemWard[3302455]["RewardItem"][1]["Id"] = 3009002
	tFoxRidingAct_ItemWard[3302455]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- 晶莹星陨石大礼包
	tFoxRidingAct_ItemWard[3302456] = {}
	tFoxRidingAct_ItemWard[3302456]["NeedSpace"] = 1
	tFoxRidingAct_ItemWard[3302456]["LogId"] = 12000656
	tFoxRidingAct_ItemWard[3302456]["DeleteItem"] = {}
	tFoxRidingAct_ItemWard[3302456]["DeleteItem"][1] = {}
	tFoxRidingAct_ItemWard[3302456]["DeleteItem"][1]["Id"] = 3302456
	tFoxRidingAct_ItemWard[3302456]["RewardItem"] = {}
	tFoxRidingAct_ItemWard[3302456]["RewardItem"][1] = {}
	tFoxRidingAct_ItemWard[3302456]["RewardItem"][1]["Id"] = 3009002
	tFoxRidingAct_ItemWard[3302456]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	-- 150气力值精装包
	tFoxRidingAct_ItemWard[3302457] = {}
	tFoxRidingAct_ItemWard[3302457]["LogId"] = 12000656
	tFoxRidingAct_ItemWard[3302457]["DeleteItem"] = {}
	tFoxRidingAct_ItemWard[3302457]["DeleteItem"][1] = {}
	tFoxRidingAct_ItemWard[3302457]["DeleteItem"][1]["Id"] = 3302457
	tFoxRidingAct_ItemWard[3302457]["RewardStrengthValue"] = {}
	tFoxRidingAct_ItemWard[3302457]["RewardStrengthValue"]["Value"] = 150
	
	-- 2个天狐之魄
	tFoxRidingAct_ItemWard[3302550] = {}
	tFoxRidingAct_ItemWard[3302550]["LogId"] = 12000656
	tFoxRidingAct_ItemWard[3302550]["DeleteItem"] = {}
	tFoxRidingAct_ItemWard[3302550]["DeleteItem"][1] = {}
	tFoxRidingAct_ItemWard[3302550]["DeleteItem"][1]["Id"] = 3302550
	tFoxRidingAct_ItemWard[3302550]["RewardItem"] = {}
	tFoxRidingAct_ItemWard[3302550]["RewardItem"][1] = {}
	tFoxRidingAct_ItemWard[3302550]["RewardItem"][1]["Id"] = 3302325
	tFoxRidingAct_ItemWard[3302550]["RewardItem"][1]["Attr"] = "0 2"

	-- 3个天狐之魄
	tFoxRidingAct_ItemWard[3302551] = {}
	tFoxRidingAct_ItemWard[3302551]["LogId"] = 12000656
	tFoxRidingAct_ItemWard[3302551]["DeleteItem"] = {}
	tFoxRidingAct_ItemWard[3302551]["DeleteItem"][1] = {}
	tFoxRidingAct_ItemWard[3302551]["DeleteItem"][1]["Id"] = 3302551
	tFoxRidingAct_ItemWard[3302551]["RewardItem"] = {}
	tFoxRidingAct_ItemWard[3302551]["RewardItem"][1] = {}
	tFoxRidingAct_ItemWard[3302551]["RewardItem"][1]["Id"] = 3302325
	tFoxRidingAct_ItemWard[3302551]["RewardItem"][1]["Attr"] = "0 3"

	-- 5个天狐之魄
	tFoxRidingAct_ItemWard[3302552] = {}
	tFoxRidingAct_ItemWard[3302552]["LogId"] = 12000656
	tFoxRidingAct_ItemWard[3302552]["DeleteItem"] = {}
	tFoxRidingAct_ItemWard[3302552]["DeleteItem"][1] = {}
	tFoxRidingAct_ItemWard[3302552]["DeleteItem"][1]["Id"] = 3302552
	tFoxRidingAct_ItemWard[3302552]["RewardItem"] = {}
	tFoxRidingAct_ItemWard[3302552]["RewardItem"][1] = {}
	tFoxRidingAct_ItemWard[3302552]["RewardItem"][1]["Id"] = 3302325
	tFoxRidingAct_ItemWard[3302552]["RewardItem"][1]["Attr"] = "0 5"

	-- 7个天狐之魄
	tFoxRidingAct_ItemWard[3302553] = {}
	tFoxRidingAct_ItemWard[3302553]["LogId"] = 12000656
	tFoxRidingAct_ItemWard[3302553]["DeleteItem"] = {}
	tFoxRidingAct_ItemWard[3302553]["DeleteItem"][1] = {}
	tFoxRidingAct_ItemWard[3302553]["DeleteItem"][1]["Id"] = 3302553
	tFoxRidingAct_ItemWard[3302553]["RewardItem"] = {}
	tFoxRidingAct_ItemWard[3302553]["RewardItem"][1] = {}
	tFoxRidingAct_ItemWard[3302553]["RewardItem"][1]["Id"] = 3302325
	tFoxRidingAct_ItemWard[3302553]["RewardItem"][1]["Attr"] = "0 7"

-- 狐妖装【魅彩版】碎片--过期给四星时装制衣册残页。
local tFoxRidingAct_DelGroup = {}
	tFoxRidingAct_DelGroup["LogId"] = 12000656
	tFoxRidingAct_DelGroup["RewardItem"] = {}
	tFoxRidingAct_DelGroup["RewardItem"][1] = {}
	tFoxRidingAct_DelGroup["RewardItem"][1]["Id"] = 3008266 -- 四星时装制衣册残页
	tFoxRidingAct_DelGroup["RewardItem"][1]["Attr"] = "0 %d"
	tFoxRidingAct_DelGroup["RewardNoNeedTip"] = 1 
	
-- 怪物掉落概率配置
local tFoxRidingAct_MonsterDrop = {}
	tFoxRidingAct_MonsterDrop["LogId"] = 12000656
	tFoxRidingAct_MonsterDrop["RewardItem"] = {}
	tFoxRidingAct_MonsterDrop["RewardItem"][1] = {}
	tFoxRidingAct_MonsterDrop["RewardItem"][1]["Id"] = 3302311
	tFoxRidingAct_MonsterDrop["RewardItem"][1]["Attr"] = "0 1"
	
	
-- 促衣会参数配置
local tFoxRidingAct_CuYiWard = {}
	-- 素衣阁岫山玉
	tFoxRidingAct_CuYiWard[18996] = {}
	tFoxRidingAct_CuYiWard[18996]["ItemChanceSum"] = 10000
	tFoxRidingAct_CuYiWard[18996]["NeedSpace"] = 1
	
	tFoxRidingAct_CuYiWard[18996][1] = {}
	tFoxRidingAct_CuYiWard[18996][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18996][1]["ItemChance"] = 2000
	tFoxRidingAct_CuYiWard[18996][1]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18996][1]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18996][1]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18996][1]["RewardItem"][1]["Id"] = 3302311
	tFoxRidingAct_CuYiWard[18996][1]["RewardItem"][1]["Attr"] = "0 1 3"

	tFoxRidingAct_CuYiWard[18996][2] = {}
	tFoxRidingAct_CuYiWard[18996][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18996][2]["ItemChance"] = 1800
	tFoxRidingAct_CuYiWard[18996][2]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18996][2]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18996][2]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18996][2]["RewardItem"][1]["Id"] = 3302311
	tFoxRidingAct_CuYiWard[18996][2]["RewardItem"][1]["Attr"] = "0 2 3"
	
	tFoxRidingAct_CuYiWard[18996][3] = {}
	tFoxRidingAct_CuYiWard[18996][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18996][3]["ItemChance"] = 1500
	tFoxRidingAct_CuYiWard[18996][3]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18996][3]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18996][3]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18996][3]["RewardItem"][1]["Id"] = 3302311
	tFoxRidingAct_CuYiWard[18996][3]["RewardItem"][1]["Attr"] = "0 3 3"

	tFoxRidingAct_CuYiWard[18996][4] = {}
	tFoxRidingAct_CuYiWard[18996][4]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18996][4]["ItemChance"] = 1400
	tFoxRidingAct_CuYiWard[18996][4]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18996][4]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18996][4]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18996][4]["RewardItem"][1]["Id"] = 3302311
	tFoxRidingAct_CuYiWard[18996][4]["RewardItem"][1]["Attr"] = "0 4 3"

	tFoxRidingAct_CuYiWard[18996][5] = {}
	tFoxRidingAct_CuYiWard[18996][5]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18996][5]["ItemChance"] = 1000
	tFoxRidingAct_CuYiWard[18996][5]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18996][5]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18996][5]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18996][5]["RewardItem"][1]["Id"] = 3302311
	tFoxRidingAct_CuYiWard[18996][5]["RewardItem"][1]["Attr"] = "0 5 3"

	tFoxRidingAct_CuYiWard[18996][6] = {}
	tFoxRidingAct_CuYiWard[18996][6]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18996][6]["ItemChance"] = 1000
	tFoxRidingAct_CuYiWard[18996][6]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18996][6]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18996][6]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18996][6]["RewardItem"][1]["Id"] = 3302423
	tFoxRidingAct_CuYiWard[18996][6]["RewardItem"][1]["Attr"] = "0 1"

	tFoxRidingAct_CuYiWard[18996][7] = {}
	tFoxRidingAct_CuYiWard[18996][7]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18996][7]["ItemChance"] = 800
	tFoxRidingAct_CuYiWard[18996][7]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18996][7]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18996][7]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18996][7]["RewardItem"][1]["Id"] = 3302424
	tFoxRidingAct_CuYiWard[18996][7]["RewardItem"][1]["Attr"] = "0 1"

	tFoxRidingAct_CuYiWard[18996][8] = {}
	tFoxRidingAct_CuYiWard[18996][8]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18996][8]["ItemChance"] = 500
	tFoxRidingAct_CuYiWard[18996][8]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18996][8]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18996][8]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18996][8]["RewardItem"][1]["Id"] = 3302425
	tFoxRidingAct_CuYiWard[18996][8]["RewardItem"][1]["Attr"] = "0 1"

	
	-- 锦衣阁
	tFoxRidingAct_CuYiWard[18997] = {}
	tFoxRidingAct_CuYiWard[18997]["ItemChanceSum"] = 10000
	tFoxRidingAct_CuYiWard[18997]["NeedSpace"] = 1

	tFoxRidingAct_CuYiWard[18997][1] = {}
	tFoxRidingAct_CuYiWard[18997][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18997][1]["ItemChance"] = 1800
	tFoxRidingAct_CuYiWard[18997][1]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18997][1]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18997][1]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18997][1]["RewardItem"][1]["Id"] = 3302311
	tFoxRidingAct_CuYiWard[18997][1]["RewardItem"][1]["Attr"] = "0 3"

	tFoxRidingAct_CuYiWard[18997][2] = {}
	tFoxRidingAct_CuYiWard[18997][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18997][2]["ItemChance"] = 1600
	tFoxRidingAct_CuYiWard[18997][2]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18997][2]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18997][2]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18997][2]["RewardItem"][1]["Id"] = 3302311
	tFoxRidingAct_CuYiWard[18997][2]["RewardItem"][1]["Attr"] = "0 5"
	
	tFoxRidingAct_CuYiWard[18997][3] = {}
	tFoxRidingAct_CuYiWard[18997][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18997][3]["ItemChance"] = 1400
	tFoxRidingAct_CuYiWard[18997][3]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18997][3]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18997][3]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18997][3]["RewardItem"][1]["Id"] = 3302311
	tFoxRidingAct_CuYiWard[18997][3]["RewardItem"][1]["Attr"] = "0 8"

	tFoxRidingAct_CuYiWard[18997][4] = {}
	tFoxRidingAct_CuYiWard[18997][4]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18997][4]["ItemChance"] = 1200
	tFoxRidingAct_CuYiWard[18997][4]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18997][4]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18997][4]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18997][4]["RewardItem"][1]["Id"] = 3302311
	tFoxRidingAct_CuYiWard[18997][4]["RewardItem"][1]["Attr"] = "0 10"

	tFoxRidingAct_CuYiWard[18997][5] = {}
	tFoxRidingAct_CuYiWard[18997][5]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18997][5]["ItemChance"] = 1100
	tFoxRidingAct_CuYiWard[18997][5]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18997][5]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18997][5]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18997][5]["RewardItem"][1]["Id"] = 3302311
	tFoxRidingAct_CuYiWard[18997][5]["RewardItem"][1]["Attr"] = "0 15"

	tFoxRidingAct_CuYiWard[18997][6] = {}
	tFoxRidingAct_CuYiWard[18997][6]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18997][6]["ItemChance"] = 1000
	tFoxRidingAct_CuYiWard[18997][6]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18997][6]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18997][6]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18997][6]["RewardItem"][1]["Id"] = 3302425
	tFoxRidingAct_CuYiWard[18997][6]["RewardItem"][1]["Attr"] = "0 1"

	tFoxRidingAct_CuYiWard[18997][7] = {}
	tFoxRidingAct_CuYiWard[18997][7]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18997][7]["ItemChance"] = 800
	tFoxRidingAct_CuYiWard[18997][7]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18997][7]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18997][7]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18997][7]["RewardItem"][1]["Id"] = 3302427
	tFoxRidingAct_CuYiWard[18997][7]["RewardItem"][1]["Attr"] = "0 1"

	tFoxRidingAct_CuYiWard[18997][8] = {}
	tFoxRidingAct_CuYiWard[18997][8]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18997][8]["ItemChance"] = 600
	tFoxRidingAct_CuYiWard[18997][8]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18997][8]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18997][8]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18997][8]["RewardItem"][1]["Id"] = 3302428
	tFoxRidingAct_CuYiWard[18997][8]["RewardItem"][1]["Attr"] = "0 1"

	tFoxRidingAct_CuYiWard[18997][9] = {}
	tFoxRidingAct_CuYiWard[18997][9]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18997][9]["ItemChance"] = 400
	tFoxRidingAct_CuYiWard[18997][9]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18997][9]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18997][9]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18997][9]["RewardItem"][1]["Id"] = 3302429
	tFoxRidingAct_CuYiWard[18997][9]["RewardItem"][1]["Attr"] = "0 1"
	
	tFoxRidingAct_CuYiWard[18997][10] = {}
	tFoxRidingAct_CuYiWard[18997][10]["RandomItemChanceType"] = 2
	tFoxRidingAct_CuYiWard[18997][10]["ItemChance"] = 100
	tFoxRidingAct_CuYiWard[18997][10]["LogId"] = 12000656
	tFoxRidingAct_CuYiWard[18997][10]["RewardItem"] = {}
	tFoxRidingAct_CuYiWard[18997][10]["RewardItem"][1] = {}
	tFoxRidingAct_CuYiWard[18997][10]["RewardItem"][1]["Id"] = 3302432
	tFoxRidingAct_CuYiWard[18997][10]["RewardItem"][1]["Attr"] = "0 1"
	
	
-- 外套分解数据
local FoxRidingAct_SplitAwardInfo = {}
	FoxRidingAct_SplitAwardInfo[200539] = {}
	FoxRidingAct_SplitAwardInfo[200539]["RewardItem"] = {}
	FoxRidingAct_SplitAwardInfo[200539]["RewardItem"][1] = {}
	FoxRidingAct_SplitAwardInfo[200539]["RewardItem"][1]["Id"] = 3302427
	FoxRidingAct_SplitAwardInfo[200539]["RewardItem"][1]["Attr"] = "0 1"
	FoxRidingAct_SplitAwardInfo[200539]["LogId"] = 12000656
	
	FoxRidingAct_SplitAwardInfo[192345] = {}
	FoxRidingAct_SplitAwardInfo[192345]["LogId"] = 12000656
	
	FoxRidingAct_SplitAwardInfo[192345][1]={}
	FoxRidingAct_SplitAwardInfo[192345][1]["ItemChanceSum"] = 10000
	FoxRidingAct_SplitAwardInfo[192345][1][1] = {}
	FoxRidingAct_SplitAwardInfo[192345][1][1]["RandomItemChanceType"] = 2
	FoxRidingAct_SplitAwardInfo[192345][1][1]["ItemChance"] = 9950
	FoxRidingAct_SplitAwardInfo[192345][1][1]["RewardItem"] = {}
	FoxRidingAct_SplitAwardInfo[192345][1][1]["RewardItem"][1]={}
	FoxRidingAct_SplitAwardInfo[192345][1][1]["RewardItem"][1]["Id"] = 3302427
	FoxRidingAct_SplitAwardInfo[192345][1][1]["RewardItem"][1]["Attr"] = "0 1"

	FoxRidingAct_SplitAwardInfo[192345][1][2] = {}
	FoxRidingAct_SplitAwardInfo[192345][1][2]["RandomItemChanceType"] = 2
	FoxRidingAct_SplitAwardInfo[192345][1][2]["ItemChance"] = 50
	FoxRidingAct_SplitAwardInfo[192345][1][2]["RewardItem"] = {}
	FoxRidingAct_SplitAwardInfo[192345][1][2]["RewardItem"][1]={}
	FoxRidingAct_SplitAwardInfo[192345][1][2]["RewardItem"][1]["Id"] = 3302326
	FoxRidingAct_SplitAwardInfo[192345][1][2]["RewardItem"][1]["Attr"] = "0 1"
	
-------------------------------------------几率数据-------------------------------------------

local tFoxRidingAct_Porb = {}
	-- 三个内丹炼蕴灵丹几率表
	tFoxRidingAct_Porb[1] = {}
	tFoxRidingAct_Porb[1][1] = {}
	tFoxRidingAct_Porb[1][1]["ItemChanceSum"] = 10000

	tFoxRidingAct_Porb[1][1][1] = {}
	tFoxRidingAct_Porb[1][1][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[1][1][1]["ItemChance"] = 5000
	tFoxRidingAct_Porb[1][1][1]["Item_1"] = 0

	tFoxRidingAct_Porb[1][1][2] = {}
	tFoxRidingAct_Porb[1][1][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[1][1][2]["ItemChance"] = 4000
	tFoxRidingAct_Porb[1][1][2]["Item_1"] = 1

	tFoxRidingAct_Porb[1][1][3] = {}
	tFoxRidingAct_Porb[1][1][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[1][1][3]["ItemChance"] = 1000
	tFoxRidingAct_Porb[1][1][3]["Item_1"] = 2
	
	
------ 精炼蕴灵丹几率表(编号对应等级+1)----------------------
	tFoxRidingAct_Porb[2] = {}
	-- 0级精炼(编号对应等级+1)
	tFoxRidingAct_Porb[2][1] = {}
	tFoxRidingAct_Porb[2][1]["ItemChanceSum"] = 10000

	tFoxRidingAct_Porb[2][1][1] = {}
	tFoxRidingAct_Porb[2][1][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][1][1]["ItemChance"] = 7500
	tFoxRidingAct_Porb[2][1][1]["Item_1"] = 0

	tFoxRidingAct_Porb[2][1][2] = {}
	tFoxRidingAct_Porb[2][1][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][1][2]["ItemChance"] = 2000
	tFoxRidingAct_Porb[2][1][2]["Item_1"] = 1

	tFoxRidingAct_Porb[2][1][3] = {}
	tFoxRidingAct_Porb[2][1][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][1][3]["ItemChance"] = 500
	tFoxRidingAct_Porb[2][1][3]["Item_1"] = 2

	-- 1级精炼(编号对应等级+1)
	tFoxRidingAct_Porb[2][2] = {}
	tFoxRidingAct_Porb[2][2]["ItemChanceSum"] = 10000

	tFoxRidingAct_Porb[2][2][1] = {}
	tFoxRidingAct_Porb[2][2][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][2][1]["ItemChance"] = 8550
	tFoxRidingAct_Porb[2][2][1]["Item_1"] = 1

	tFoxRidingAct_Porb[2][2][2] = {}
	tFoxRidingAct_Porb[2][2][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][2][2]["ItemChance"] = 1250
	tFoxRidingAct_Porb[2][2][2]["Item_1"] = 2

	tFoxRidingAct_Porb[2][2][3] = {}
	tFoxRidingAct_Porb[2][2][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][2][3]["ItemChance"] = 200
	tFoxRidingAct_Porb[2][2][3]["Item_1"] = 3

	-- 2级精炼(编号对应等级+1)
	tFoxRidingAct_Porb[2][3] = {}
	tFoxRidingAct_Porb[2][3]["ItemChanceSum"] = 10000

	tFoxRidingAct_Porb[2][3][1] = {}
	tFoxRidingAct_Porb[2][3][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][3][1]["ItemChance"] = 8650
	tFoxRidingAct_Porb[2][3][1]["Item_1"] = 2

	tFoxRidingAct_Porb[2][3][2] = {}
	tFoxRidingAct_Porb[2][3][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][3][2]["ItemChance"] = 1250
	tFoxRidingAct_Porb[2][3][2]["Item_1"] = 3

	tFoxRidingAct_Porb[2][3][3] = {}
	tFoxRidingAct_Porb[2][3][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][3][3]["ItemChance"] = 100
	tFoxRidingAct_Porb[2][3][3]["Item_1"] = 4
	
	-- 3级精炼(编号对应等级+1)
	tFoxRidingAct_Porb[2][4] = {}
	tFoxRidingAct_Porb[2][4]["ItemChanceSum"] = 10000

	tFoxRidingAct_Porb[2][4][1] = {}
	tFoxRidingAct_Porb[2][4][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][4][1]["ItemChance"] = 8700
	tFoxRidingAct_Porb[2][4][1]["Item_1"] = 3

	tFoxRidingAct_Porb[2][4][2] = {}
	tFoxRidingAct_Porb[2][4][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][4][2]["ItemChance"] = 1250
	tFoxRidingAct_Porb[2][4][2]["Item_1"] = 4

	tFoxRidingAct_Porb[2][4][3] = {}
	tFoxRidingAct_Porb[2][4][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][4][3]["ItemChance"] = 50
	tFoxRidingAct_Porb[2][4][3]["Item_1"] = 5
	
	-- 4级精炼(编号对应等级+1)
	tFoxRidingAct_Porb[2][5] = {}
	tFoxRidingAct_Porb[2][5]["ItemChanceSum"] = 10000

	tFoxRidingAct_Porb[2][5][1] = {}
	tFoxRidingAct_Porb[2][5][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][5][1]["ItemChance"] = 9117
	tFoxRidingAct_Porb[2][5][1]["Item_1"] = 4

	tFoxRidingAct_Porb[2][5][2] = {}
	tFoxRidingAct_Porb[2][5][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][5][2]["ItemChance"] = 833
	tFoxRidingAct_Porb[2][5][2]["Item_1"] = 5

	tFoxRidingAct_Porb[2][5][3] = {}
	tFoxRidingAct_Porb[2][5][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][5][3]["ItemChance"] = 50
	tFoxRidingAct_Porb[2][5][3]["Item_1"] = 6

	-- 5级精炼(编号对应等级+1)
	tFoxRidingAct_Porb[2][6] = {}
	tFoxRidingAct_Porb[2][6]["ItemChanceSum"] = 10000

	tFoxRidingAct_Porb[2][6][1] = {}
	tFoxRidingAct_Porb[2][6][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][6][1]["ItemChance"] = 9450
	tFoxRidingAct_Porb[2][6][1]["Item_1"] = 5

	tFoxRidingAct_Porb[2][6][2] = {}
	tFoxRidingAct_Porb[2][6][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][6][2]["ItemChance"] = 500
	tFoxRidingAct_Porb[2][6][2]["Item_1"] = 6

	tFoxRidingAct_Porb[2][6][3] = {}
	tFoxRidingAct_Porb[2][6][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][6][3]["ItemChance"] = 50
	tFoxRidingAct_Porb[2][6][3]["Item_1"] = 7
	
	-- 6级精炼(编号对应等级+1)
	tFoxRidingAct_Porb[2][7] = {}
	tFoxRidingAct_Porb[2][7]["ItemChanceSum"] = 10000

	tFoxRidingAct_Porb[2][7][1] = {}
	tFoxRidingAct_Porb[2][7][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][7][1]["ItemChance"] = 9500
	tFoxRidingAct_Porb[2][7][1]["Item_1"] = 6

	tFoxRidingAct_Porb[2][7][2] = {}
	tFoxRidingAct_Porb[2][7][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][7][2]["ItemChance"] = 500
	tFoxRidingAct_Porb[2][7][2]["Item_1"] = 7

	tFoxRidingAct_Porb[2][7][3] = {}
	tFoxRidingAct_Porb[2][7][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][7][3]["ItemChance"] = 0
	tFoxRidingAct_Porb[2][7][3]["Item_1"] = 8

	-- 7级精炼(编号对应等级+1)
	tFoxRidingAct_Porb[2][8] = {}
	tFoxRidingAct_Porb[2][8]["ItemChanceSum"] = 10000

	tFoxRidingAct_Porb[2][8][1] = {}
	tFoxRidingAct_Porb[2][8][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][8][1]["ItemChance"] = 9750
	tFoxRidingAct_Porb[2][8][1]["Item_1"] = 7

	tFoxRidingAct_Porb[2][8][2] = {}
	tFoxRidingAct_Porb[2][8][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][8][2]["ItemChance"] = 250
	tFoxRidingAct_Porb[2][8][2]["Item_1"] = 8

	tFoxRidingAct_Porb[2][8][3] = {}
	tFoxRidingAct_Porb[2][8][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][8][3]["ItemChance"] = 0
	tFoxRidingAct_Porb[2][8][3]["Item_1"] = 9
	
	-- 8级精炼(编号对应等级+1)
	tFoxRidingAct_Porb[2][9] = {}
	tFoxRidingAct_Porb[2][9]["ItemChanceSum"] = 10000

	tFoxRidingAct_Porb[2][9][1] = {}
	tFoxRidingAct_Porb[2][9][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][9][1]["ItemChance"] = 9875
	tFoxRidingAct_Porb[2][9][1]["Item_1"] = 8

	tFoxRidingAct_Porb[2][9][2] = {}
	tFoxRidingAct_Porb[2][9][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_Porb[2][9][2]["ItemChance"] = 125
	tFoxRidingAct_Porb[2][9][2]["Item_1"] = 9
	
------ 秘法升阶几率表 ----------------------
local tFoxRidingAct_MiFaPorb = {}
	-- 1级精炼（秘法升阶）
	tFoxRidingAct_MiFaPorb[1] = {}
	tFoxRidingAct_MiFaPorb[1][1] = {}
	tFoxRidingAct_MiFaPorb[1][1]["ItemChanceSum"] = 10000
	
	tFoxRidingAct_MiFaPorb[1][1][1] = {}
	tFoxRidingAct_MiFaPorb[1][1][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][1][1]["ItemChance"] = 10000
	tFoxRidingAct_MiFaPorb[1][1][1]["Item_1"] = 7

	-- 2级精炼（秘法升阶）
	tFoxRidingAct_MiFaPorb[1][2] = {}
	tFoxRidingAct_MiFaPorb[1][2]["ItemChanceSum"] = 10000

	tFoxRidingAct_MiFaPorb[1][2][1] = {}
	tFoxRidingAct_MiFaPorb[1][2][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][2][1]["ItemChance"] = 8000
	tFoxRidingAct_MiFaPorb[1][2][1]["Item_1"] = 7

	tFoxRidingAct_MiFaPorb[1][2][2] = {}
	tFoxRidingAct_MiFaPorb[1][2][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][2][2]["ItemChance"] = 2000
	tFoxRidingAct_MiFaPorb[1][2][2]["Item_1"] = 8

	-- 3级精炼（秘法升阶）
	tFoxRidingAct_MiFaPorb[1][3] = {}
	tFoxRidingAct_MiFaPorb[1][3]["ItemChanceSum"] = 10000

	tFoxRidingAct_MiFaPorb[1][3][1] = {}
	tFoxRidingAct_MiFaPorb[1][3][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][3][1]["ItemChance"] = 6000
	tFoxRidingAct_MiFaPorb[1][3][1]["Item_1"] = 7

	tFoxRidingAct_MiFaPorb[1][3][2] = {}
	tFoxRidingAct_MiFaPorb[1][3][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][3][2]["ItemChance"] = 4000
	tFoxRidingAct_MiFaPorb[1][3][2]["Item_1"] = 8

	-- 4级精炼（秘法升阶）
	tFoxRidingAct_MiFaPorb[1][4] = {}
	tFoxRidingAct_MiFaPorb[1][4]["ItemChanceSum"] = 10000

	tFoxRidingAct_MiFaPorb[1][4][1] = {}
	tFoxRidingAct_MiFaPorb[1][4][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][4][1]["ItemChance"] = 4000
	tFoxRidingAct_MiFaPorb[1][4][1]["Item_1"] = 7

	tFoxRidingAct_MiFaPorb[1][4][2] = {}
	tFoxRidingAct_MiFaPorb[1][4][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][4][2]["ItemChance"] = 6000
	tFoxRidingAct_MiFaPorb[1][4][2]["Item_1"] = 8

	-- 5级精炼（秘法升阶）
	tFoxRidingAct_MiFaPorb[1][5] = {}
	tFoxRidingAct_MiFaPorb[1][5]["ItemChanceSum"] = 10000

	tFoxRidingAct_MiFaPorb[1][5][1] = {}
	tFoxRidingAct_MiFaPorb[1][5][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][5][1]["ItemChance"] = 0
	tFoxRidingAct_MiFaPorb[1][5][1]["Item_1"] = 7

	tFoxRidingAct_MiFaPorb[1][5][2] = {}
	tFoxRidingAct_MiFaPorb[1][5][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][5][2]["ItemChance"] = 10000
	tFoxRidingAct_MiFaPorb[1][5][2]["Item_1"] = 8

	-- 6级精炼（秘法升阶）
	tFoxRidingAct_MiFaPorb[1][6] = {}
	tFoxRidingAct_MiFaPorb[1][6]["ItemChanceSum"] = 10000

	tFoxRidingAct_MiFaPorb[1][6][1] = {}
	tFoxRidingAct_MiFaPorb[1][6][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][6][1]["ItemChance"] = 8000
	tFoxRidingAct_MiFaPorb[1][6][1]["Item_1"] = 8

	tFoxRidingAct_MiFaPorb[1][6][2] = {}
	tFoxRidingAct_MiFaPorb[1][6][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][6][2]["ItemChance"] = 2000
	tFoxRidingAct_MiFaPorb[1][6][2]["Item_1"] = 9

	-- 7级精炼（秘法升阶）
	tFoxRidingAct_MiFaPorb[1][7] = {}
	tFoxRidingAct_MiFaPorb[1][7]["ItemChanceSum"] = 10000

	tFoxRidingAct_MiFaPorb[1][7][1] = {}
	tFoxRidingAct_MiFaPorb[1][7][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][7][1]["ItemChance"] = 5500
	tFoxRidingAct_MiFaPorb[1][7][1]["Item_1"] = 8

	tFoxRidingAct_MiFaPorb[1][7][2] = {}
	tFoxRidingAct_MiFaPorb[1][7][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][7][2]["ItemChance"] = 4500
	tFoxRidingAct_MiFaPorb[1][7][2]["Item_1"] = 9
	
	-- 8级精炼（秘法升阶
	tFoxRidingAct_MiFaPorb[1][8] = {}
	tFoxRidingAct_MiFaPorb[1][8]["ItemChanceSum"] = 10000

	tFoxRidingAct_MiFaPorb[1][8][1] = {}
	tFoxRidingAct_MiFaPorb[1][8][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_MiFaPorb[1][8][1]["ItemChance"] = 10000
	tFoxRidingAct_MiFaPorb[1][8][1]["Item_1"] = 9
	
	
------ 青丘灵丹升级外套几率表 ----------------------
local tFoxRidingAct_CoatPorb = {}
------ 灵丹通用几率表
	tFoxRidingAct_CoatPorb[1] = {}
	tFoxRidingAct_CoatPorb[1]["ItemChanceSum"] = 100000

	tFoxRidingAct_CoatPorb[1][1] = {}
	tFoxRidingAct_CoatPorb[1][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_CoatPorb[1][1]["ItemChance"] = 50000
	tFoxRidingAct_CoatPorb[1][1]["Item_1"] = true

	tFoxRidingAct_CoatPorb[1][2] = {}
	tFoxRidingAct_CoatPorb[1][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_CoatPorb[1][2]["ItemChance"] = 50000
	tFoxRidingAct_CoatPorb[1][2]["Item_1"] = false


-------------------------------------------
	-- 内丹材料包几率
local tFoxRidingAct_PagPorb = {}
	tFoxRidingAct_PagPorb[1] = {}
	tFoxRidingAct_PagPorb[1][1] = {}
	tFoxRidingAct_PagPorb[1][1]["ItemChanceSum"] = 9000

	tFoxRidingAct_PagPorb[1][1][1] = {}
	tFoxRidingAct_PagPorb[1][1][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_PagPorb[1][1][1]["ItemChance"] = 3000
	tFoxRidingAct_PagPorb[1][1][1]["Item_1"] = 3302313

	tFoxRidingAct_PagPorb[1][1][2] = {}
	tFoxRidingAct_PagPorb[1][1][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_PagPorb[1][1][2]["ItemChance"] = 3000
	tFoxRidingAct_PagPorb[1][1][2]["Item_1"] = 3302314

	tFoxRidingAct_PagPorb[1][1][3] = {}
	tFoxRidingAct_PagPorb[1][1][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_PagPorb[1][1][3]["ItemChance"] = 3000
	tFoxRidingAct_PagPorb[1][1][3]["Item_1"] = 3302315
	
-------------------------------------------
	-- 怪物掉落几率
local tFoxRidingAct_MonsterPorb = {}
	-- 1-1000只几率
	tFoxRidingAct_MonsterPorb[1] = {}
	tFoxRidingAct_MonsterPorb[1]["ItemChanceSum"] = 10000

	tFoxRidingAct_MonsterPorb[1][1] = {}
	tFoxRidingAct_MonsterPorb[1][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_MonsterPorb[1][1]["ItemChance"] = 300
	tFoxRidingAct_MonsterPorb[1][1]["Item_1"] = true

	tFoxRidingAct_MonsterPorb[1][2] = {}
	tFoxRidingAct_MonsterPorb[1][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_MonsterPorb[1][2]["ItemChance"] = 9700
	tFoxRidingAct_MonsterPorb[1][2]["Item_1"] = false
	-- 1001-3000只几率
	tFoxRidingAct_MonsterPorb[2] = {}
	tFoxRidingAct_MonsterPorb[2]["ItemChanceSum"] = 10000

	tFoxRidingAct_MonsterPorb[2][1] = {}
	tFoxRidingAct_MonsterPorb[2][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_MonsterPorb[2][1]["ItemChance"] = 100
	tFoxRidingAct_MonsterPorb[2][1]["Item_1"] = true

	tFoxRidingAct_MonsterPorb[2][2] = {}
	tFoxRidingAct_MonsterPorb[2][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_MonsterPorb[2][2]["ItemChance"] = 9900
	tFoxRidingAct_MonsterPorb[2][2]["Item_1"] = false
	-- 3001以上几率
	tFoxRidingAct_MonsterPorb[3] = {}
	tFoxRidingAct_MonsterPorb[3]["ItemChanceSum"] = 10000

	tFoxRidingAct_MonsterPorb[3][1] = {}
	tFoxRidingAct_MonsterPorb[3][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_MonsterPorb[3][1]["ItemChance"] = 50
	tFoxRidingAct_MonsterPorb[3][1]["Item_1"] = true

	tFoxRidingAct_MonsterPorb[3][2] = {}
	tFoxRidingAct_MonsterPorb[3][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_MonsterPorb[3][2]["ItemChance"] = 9950
	tFoxRidingAct_MonsterPorb[3][2]["Item_1"] = false
	
	
-------------------------------------------
-- 狐妖装【魅彩版】碎片合成几率
local tFoxRidingAct_GroupPorb = {}
	tFoxRidingAct_GroupPorb[1] = {}
	tFoxRidingAct_GroupPorb[1]["ItemChanceSum"] = 10000

	tFoxRidingAct_GroupPorb[1][1] = {}
	tFoxRidingAct_GroupPorb[1][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_GroupPorb[1][1]["ItemChance"] = 1500
	tFoxRidingAct_GroupPorb[1][1]["Item_1"] = true

	tFoxRidingAct_GroupPorb[1][2] = {}
	tFoxRidingAct_GroupPorb[1][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_GroupPorb[1][2]["ItemChance"] = 8500
	tFoxRidingAct_GroupPorb[1][2]["Item_1"] = false

	

----------------------------青丘馈赠--几率给奖励配置----------------------------
-- 青丘馈赠(3302312)参数配置
local tFoxRidingAct_FreeOpen = {}
	-- 第一次免费开启
	tFoxRidingAct_FreeOpen[3302312] = {}
	tFoxRidingAct_FreeOpen[3302312]["ItemChanceSum"] = 10000
	tFoxRidingAct_FreeOpen[3302312]["NeedSpace"] = 2
	
	tFoxRidingAct_FreeOpen[3302312][1] = {}
	tFoxRidingAct_FreeOpen[3302312][1]["RandomItemChanceType"] = 2
	tFoxRidingAct_FreeOpen[3302312][1]["ItemChance"] = 1500
	tFoxRidingAct_FreeOpen[3302312][1]["RewardItem"] = {}
	tFoxRidingAct_FreeOpen[3302312][1]["RewardItem"][1] = {}
	tFoxRidingAct_FreeOpen[3302312][1]["RewardItem"][1]["Id"] = 3302449 -- 1天狐妖装【魅彩版】礼包
	tFoxRidingAct_FreeOpen[3302312][1]["RewardItem"][1]["Attr"] = "0 1"
	tFoxRidingAct_FreeOpen[3302312][1]["RewardItem"][2] = {}
	tFoxRidingAct_FreeOpen[3302312][1]["RewardItem"][2]["Id"] = 3302554 -- 青丘馈赠（翻牌）
	tFoxRidingAct_FreeOpen[3302312][1]["RewardItem"][2]["Attr"] = "0 1"
	tFoxRidingAct_FreeOpen[3302312][1]["Log"] = "0,0,3302312,1,12000656,2,3302449[3302554],1[1]"

	tFoxRidingAct_FreeOpen[3302312][2] = {}
	tFoxRidingAct_FreeOpen[3302312][2]["RandomItemChanceType"] = 2
	tFoxRidingAct_FreeOpen[3302312][2]["ItemChance"] = 1500
	tFoxRidingAct_FreeOpen[3302312][2]["RewardItem"] = {}
	tFoxRidingAct_FreeOpen[3302312][2]["RewardItem"][1] = {}
	tFoxRidingAct_FreeOpen[3302312][2]["RewardItem"][1]["Id"] = 3302450 -- 3天昊天玄狐礼包
	tFoxRidingAct_FreeOpen[3302312][2]["RewardItem"][1]["Attr"] = "0 1"
	tFoxRidingAct_FreeOpen[3302312][2]["RewardItem"][2] = {}
	tFoxRidingAct_FreeOpen[3302312][2]["RewardItem"][2]["Id"] = 3302554 -- 青丘馈赠（翻牌）
	tFoxRidingAct_FreeOpen[3302312][2]["RewardItem"][2]["Attr"] = "0 1"
	tFoxRidingAct_FreeOpen[3302312][2]["Log"] = "0,0,3302312,1,12000656,2,3302450[3302554],1[1]"

	tFoxRidingAct_FreeOpen[3302312][3] = {}
	tFoxRidingAct_FreeOpen[3302312][3]["RandomItemChanceType"] = 2
	tFoxRidingAct_FreeOpen[3302312][3]["ItemChance"] = 2500
	tFoxRidingAct_FreeOpen[3302312][3]["RewardItem"] = {}
	tFoxRidingAct_FreeOpen[3302312][3]["RewardItem"][1] = {}
	tFoxRidingAct_FreeOpen[3302312][3]["RewardItem"][1]["Id"] = 3302423 -- 1份青丘灵丹材料
	tFoxRidingAct_FreeOpen[3302312][3]["RewardItem"][1]["Attr"] = "0 1"
	tFoxRidingAct_FreeOpen[3302312][3]["RewardItem"][2] = {}
	tFoxRidingAct_FreeOpen[3302312][3]["RewardItem"][2]["Id"] = 3302554 -- 青丘馈赠（翻牌）
	tFoxRidingAct_FreeOpen[3302312][3]["RewardItem"][2]["Attr"] = "0 1"
	tFoxRidingAct_FreeOpen[3302312][3]["Log"] = "0,0,3302312,1,12000656,2,3302423[3302554],1[1]"

	tFoxRidingAct_FreeOpen[3302312][4] = {}
	tFoxRidingAct_FreeOpen[3302312][4]["RandomItemChanceType"] = 2
	tFoxRidingAct_FreeOpen[3302312][4]["ItemChance"] = 2000
	tFoxRidingAct_FreeOpen[3302312][4]["RewardItem"] = {}
	tFoxRidingAct_FreeOpen[3302312][4]["RewardItem"][1] = {}
	tFoxRidingAct_FreeOpen[3302312][4]["RewardItem"][1]["Id"] = 3302424 -- 2份青丘灵丹材料
	tFoxRidingAct_FreeOpen[3302312][4]["RewardItem"][1]["Attr"] = "0 1"
	tFoxRidingAct_FreeOpen[3302312][4]["RewardItem"][2] = {}
	tFoxRidingAct_FreeOpen[3302312][4]["RewardItem"][2]["Id"] = 3302554 -- 青丘馈赠（翻牌）
	tFoxRidingAct_FreeOpen[3302312][4]["RewardItem"][2]["Attr"] = "0 1"
	tFoxRidingAct_FreeOpen[3302312][4]["Log"] = "0,0,3302312,1,12000656,2,3302424[3302554],1[1]"

	tFoxRidingAct_FreeOpen[3302312][5] = {}
	tFoxRidingAct_FreeOpen[3302312][5]["RandomItemChanceType"] = 2
	tFoxRidingAct_FreeOpen[3302312][5]["ItemChance"] = 1500
	tFoxRidingAct_FreeOpen[3302312][5]["RewardItem"] = {}
	tFoxRidingAct_FreeOpen[3302312][5]["RewardItem"][1] = {}
	tFoxRidingAct_FreeOpen[3302312][5]["RewardItem"][1]["Id"] = 3302425 -- 3份青丘灵丹材料
	tFoxRidingAct_FreeOpen[3302312][5]["RewardItem"][1]["Attr"] = "0 1"
	tFoxRidingAct_FreeOpen[3302312][5]["RewardItem"][2] = {}
	tFoxRidingAct_FreeOpen[3302312][5]["RewardItem"][2]["Id"] = 3302554 -- 青丘馈赠（翻牌）
	tFoxRidingAct_FreeOpen[3302312][5]["RewardItem"][2]["Attr"] = "0 1"
	tFoxRidingAct_FreeOpen[3302312][5]["Log"] = "0,0,3302312,1,12000656,2,3302425[3302554],1[1]"
	
	tFoxRidingAct_FreeOpen[3302312][6] = {}
	tFoxRidingAct_FreeOpen[3302312][6]["RandomItemChanceType"] = 2
	tFoxRidingAct_FreeOpen[3302312][6]["ItemChance"] = 1000
	tFoxRidingAct_FreeOpen[3302312][6]["RewardItem"] = {}
	tFoxRidingAct_FreeOpen[3302312][6]["RewardItem"][1] = {}
	tFoxRidingAct_FreeOpen[3302312][6]["RewardItem"][1]["Id"] = 3302427 -- 5份青丘灵丹材料
	tFoxRidingAct_FreeOpen[3302312][6]["RewardItem"][1]["Attr"] = "0 1"
	tFoxRidingAct_FreeOpen[3302312][6]["RewardItem"][2] = {}
	tFoxRidingAct_FreeOpen[3302312][6]["RewardItem"][2]["Id"] = 3302554 -- 青丘馈赠（翻牌）
	tFoxRidingAct_FreeOpen[3302312][6]["RewardItem"][2]["Attr"] = "0 1"
	tFoxRidingAct_FreeOpen[3302312][6]["Log"] = "0,0,3302312,1,12000656,2,3302427[3302554],1[1]"



-------------------------------------------LOG数据部分-------------------------------------------
-- Log数据
local tFoxRidingAct_Log = {}
	-- 上交内丹
	tFoxRidingAct_Log["HandInAlchemy"] = "0,0,%d,1,12000656,1[1],0,0"
	-- 内丹炼制蕴灵丹
	tFoxRidingAct_Log["DoAlchemy"] = "0,0,3302313[3302314][3302315],1[1][1],12000656,1[2],%d,0"
	-- 精炼内丹
	tFoxRidingAct_Log["RefineAlchemy"] = "0,0,%d,1,12000656,1[3],%d,%d"
	-- 秘法升阶
	tFoxRidingAct_Log["MiFaUpLev"] = {}
	tFoxRidingAct_Log["MiFaUpLev"]["Item"] = "0,0,3302313[3302314][3302315],%d[%d][%d],12000656,1[3],%d,%d"
	tFoxRidingAct_Log["MiFaUpLev"]["EMoney"] = "0,0,2,%d,12000656,1[3],%d,%d"

	--取出内丹
	tFoxRidingAct_Log["GetAlchemy"] = "0,0,0,0,12000656,1[4],%d,1"
	-- 删除物品
	tFoxRidingAct_Log["DelItem"] = "0,0,%d,%d,12000656,2,0,0"
	-- 升级外套--成功
	tFoxRidingAct_Log["UpCoatSuccess"] = "0,0,%d[%d],1[%d],12000656,1[5],%d,1"
	-- 升级外套--失败
	tFoxRidingAct_Log["UpCoatFail"] = "0,0,%d,%d,12000656,1[5],0,%d"

	-- 狐妖装【魅彩版】碎片合成失败
	tFoxRidingAct_Log["GroupFail"] = "0,0,%d,1,12000656,2,0,0"
	
	-- 使用付费翻牌器
	tFoxRidingAct_Log["OpenReward"] = "0,0,%d,1,12000656,2,0,0"

	
-- Emoney Log
local tFoxRidingAct_EmoneyLog = {}
	-- 玩家支付天石代替材料炼制青丘灵丹  
	tFoxRidingAct_EmoneyLog["Cps2HandIn"] = "250	4053	%d	%d	1	"
	-- 玩家支付天石代替材料炼制秘法精炼  
	tFoxRidingAct_EmoneyLog["Cps2Refine"] = "250	4054	%d	%d	1	"

	
-------------------------------------------函数部分-------------------------------------------
-- 打开内嵌网页
function FoxRidingAct_OpenWeb(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	local sPszParam = tFoxRidingAct_Cont["Web"]
	 User_SendWebPage(sPszParam)
end


-- 切换地图
function FoxRidingAct_ChgMap(nType)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nUserMapId = Get_UserMapId()
	local nUserCellx = Get_UserPositionX()
	local nUserCelly = Get_UserPositionY()

	-- 切地图
	local nChgMapId = tFoxRidingAct_MapData[nType]["MapId"]
	local nChgCellx = tFoxRidingAct_MapData[nType]["Cellx"]
	local nChgCelly = tFoxRidingAct_MapData[nType]["Celly"]
	if User_ChgMap(nChgMapId,nChgCellx,nChgCelly) then
		--提示
		User_TalkChannel2005(tFoxRidingAct_Text["ChgMap"][nType])
	end
end
	
-- 寻路函数
function FoxRidingAct_FindNpc(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nNewNpcId = tFoxRidingAct_Cont["FindNpc"][nNpcId]["NpcId"]
	local nMapId = tFoxRidingAct_Cont["FindNpc"][nNpcId]["MapId"]
	local nPosX = tFoxRidingAct_Cont["FindNpc"][nNpcId]["PosX"]
	local nPosY = tFoxRidingAct_Cont["FindNpc"][nNpcId]["PosY"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNewNpcId)
end
	
	
	
-- 打开兑换商店
function FoxRidingAct_OpenShop(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	User_OpenExchangeShop(nNpcId)
end


-------------------------------------------
-- 重置进度值
function FoxRidingAct_ResetProgress(nUserId)
	local nUserId = nUserId or Get_UserId()
	for i = 1,3 do
		local nEvent = tFoxRidingAct_Stc[i]["EventType"]
		local nType = tFoxRidingAct_Stc[i]["DataType"]
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
	end
end

-- 清空丹炉
function FoxRidingAct_ClearStove(nNpcId)
	-- 清空放入的内丹
	for i,v in ipairs(tFoxRidingAct_Stc["AlchemyNum"]) do
		local nEvent = tFoxRidingAct_Stc[v]["EventType"]
		local nType = tFoxRidingAct_Stc[v]["DataType"]
		Task_SetStatistic(nEvent,nType,0,1)
	end
	
	-- 重置进度值
	FoxRidingAct_ResetProgress()
	
	-- 重置（等级+炼制记录）
	local nEvent_4 = tFoxRidingAct_Stc[4]["EventType"]
	local nType_4 = tFoxRidingAct_Stc[4]["DataType"]
	local nEvent_5 = tFoxRidingAct_Stc[5]["EventType"]
	local nType_5 = tFoxRidingAct_Stc[5]["DataType"]
	Task_SetStatistic(nEvent_4,nType_4,0,1)
	Task_SetStatistic(nEvent_5,nType_5,0,1)
	
	-- 接回初始对白
	FoxRidingAct_StoveNpcMain(nNpcId)
end
-------------------------------------------
-- 上交 -- 二次确认清除
function FoxRidingAct_DeleteIsOpt1(nNpcId,nItemId,nEMoney,sItemName)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 置掩码
	local nEvent_7 = tFoxRidingAct_Stc[7]["EventType"]
	local nType_7 = tFoxRidingAct_Stc[7]["DataType"]
	Task_SetStatistic(nEvent_7,nType_7,1,1)
	Task_SetStcTimestamp(nEvent_7,nType_7,0)
	
	-- 返回上一层
	local sItemName = Get_ItemtypeName(nItemId)
	local nEMoney = tFoxRidingAct_Cont["CLcps"]
	local sText161 = string.format(tFoxRidingAct_Text[nNpcId]["Text161"],sItemName,nEMoney)
	local sOptText161 = string.format(tFoxRidingAct_Text[nNpcId]["Option161"],nEMoney,sItemName)
	local sOptFunc = string.format("FoxRidingAct_IsCps2HandIn</N>%d</N>%d</N>%d</S>%s",nNpcId,nItemId,nEMoney,sItemName)
	tNpcGossip[nNpcId]["Text161"] = sText161
	tNpcGossip[nNpcId]["Option161"] = sOptText161
	tNpcGossip[nNpcId]["OptionFunc161"] = sOptFunc
	LinkNpcGossipFunc_New(nNpcId,"1-6")
end

-- 精炼 -- 二次确认清除
function FoxRidingAct_DeleteIsOpt2(nNpcId,nItemId,nEMoney,sItemName,nUserId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 置掩码
	local nEvent_7 = tFoxRidingAct_Stc[7]["EventType"]
	local nType_7 = tFoxRidingAct_Stc[7]["DataType"]
	Task_SetStatistic(nEvent_7,nType_7,1,1,nUserId)
	Task_SetStcTimestamp(nEvent_7,nType_7,0,nUserId)
	
	-- 返回上一层
	local sItemName = Get_ItemtypeName(nItemId)
	local nEMoney = tFoxRidingAct_Cont["CLcps"]
	local sText211 = string.format(tFoxRidingAct_Text[nNpcId]["Text211"],sItemName,nEMoney)
	local sOptText211 = string.format(tFoxRidingAct_Text[nNpcId]["Option211"],nEMoney,sItemName)
	local sOptFunc = string.format("FoxRidingAct_IsCps2Refine</N>%d</N>%d</N>%d</S>%s</N>%d",nNpcId,nItemId,nEMoney,sItemName,nUserId)
	tNpcGossip[nNpcId]["Text211"] = sText211
	tNpcGossip[nNpcId]["Option211"] = sOptText211
	tNpcGossip[nNpcId]["OptionFunc211"] = sOptFunc
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end


-- 上交 -- 上交前判断
function FoxRidingAct_DoCps2HandIn(nNpcId,nItemId,nEMoney,sItemName)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 天石不够
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEMoney) then
		local sText181 = string.format(tFoxRidingAct_Text[nNpcId]["Text181"],sItemName)
		tNpcGossip[nNpcId]["Text181"] = sText181
		LinkNpcGossipFunc_New(nNpcId,"1-8")
		return
	end
	
	if User_AddEMoney(-nEMoney) then
		-- 记录对应掩码
		local nEvent = tFoxRidingAct_Stc[nItemId]["EventType"]
		local nType = tFoxRidingAct_Stc[nItemId]["DataType"]
		Task_SetStatistic(nEvent,nType,1,1)
		local sLog = string.format(tFoxRidingAct_Log["HandInAlchemy"],nItemId)
		local sEmoneyLog = string.format(tFoxRidingAct_EmoneyLog["Cps2HandIn"],nEMoney,nEMoney)
		Sys_SaveActionFestivalLog(sLog)
		Sys_SaveEmoneyBuy(sEmoneyLog)
		-- 刷新主对白
		FoxRidingAct_StoveNpcMain(nNpcId)
	end
end


-- 上交 -- 天石替代材料（二次确认）
function FoxRidingAct_IsCps2HandIn(nNpcId,nItemId,nEMoney,sItemName)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 是否跳过二次确认
	local nEvent_7 = tFoxRidingAct_Stc[7]["EventType"]
	local nType_7 = tFoxRidingAct_Stc[7]["DataType"] 
	if not Task_ChkStcValue(nEvent_7,nType_7,"==",0) then
		if not Task_StcInterval(nEvent_7,nType_7,1,4) then
			FoxRidingAct_DoCps2HandIn(nNpcId,nItemId,nEMoney,sItemName)
			return
		end
	end
	
	local sText171 = string.format(tFoxRidingAct_Text[nNpcId]["Text171"],nEMoney,sItemName)
	local sOptText171 = string.format(tFoxRidingAct_Text[nNpcId]["Option171"],nEMoney)
	local sOptFunc171 = string.format("FoxRidingAct_DoCps2HandIn</N>%d</N>%d</N>%d</S>%s",nNpcId,nItemId,nEMoney,sItemName)
	local sOptFunc172 = string.format("FoxRidingAct_DeleteIsOpt1</N>%d</N>%d</N>%d</S>%s",nNpcId,nItemId,nEMoney,sItemName)
	tNpcGossip[nNpcId]["Text171"] = sText171
	tNpcGossip[nNpcId]["Option171"] = sOptText171
	tNpcGossip[nNpcId]["OptionFunc171"] = sOptFunc171
	tNpcGossip[nNpcId]["OptionFunc172"] = sOptFunc172
	LinkNpcGossipFunc_New(nNpcId,"1-7")
end
	
	
-- 放入内丹
function FoxRidingAct_HandInAlchemy(nNpcId,nItemId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 有对应内丹，删除内丹
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 记录对应掩码
		local nEvent = tFoxRidingAct_Stc[nItemId]["EventType"]
		local nType = tFoxRidingAct_Stc[nItemId]["DataType"]
		Task_SetStatistic(nEvent,nType,1,1)
		local sLog = string.format(tFoxRidingAct_Log["HandInAlchemy"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
		
		-- 刷新主对白
		FoxRidingAct_StoveNpcMain(nNpcId)
		
	
	-- 没有对应内丹
	else
		local sItemName = Get_ItemtypeName(nItemId)
		local nEMoney = tFoxRidingAct_Cont["CLcps"]
		local sText161 = string.format(tFoxRidingAct_Text[nNpcId]["Text161"],sItemName,nEMoney)
		local sOptText161 = string.format(tFoxRidingAct_Text[nNpcId]["Option161"],nEMoney,sItemName)
		local sOptFunc = string.format("FoxRidingAct_IsCps2HandIn</N>%d</N>%d</N>%d</S>%s",nNpcId,nItemId,nEMoney,sItemName)
		tNpcGossip[nNpcId]["Text161"] = sText161
		tNpcGossip[nNpcId]["Option161"] = sOptText161
		tNpcGossip[nNpcId]["OptionFunc161"] = sOptFunc
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
end

-- 精炼 -- 是否有材料检测
function FoxRidingAct_ChkRefineItem(nNpcId,nNumber,nUserId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 有材料
	local nItemId = tFoxRidingAct_Stc["AlchemyNum"][nNumber]
	if Item_ChkItem(nItemId,1,0,nUserId) and Item_DelItem(nItemId,1,0,nUserId) then
		FoxRidingAct_RefineAlchemy(nNpcId,nItemId,nUserId)
		return
	end

	-- 没材料
	local sItemName = Get_ItemtypeName(nItemId)
	local nEMoney = tFoxRidingAct_Cont["CLcps"]
	local sText211 = string.format(tFoxRidingAct_Text[nNpcId]["Text211"],sItemName,nEMoney)
	local sOptText211 = string.format(tFoxRidingAct_Text[nNpcId]["Option211"],nEMoney,sItemName)
	local sOptFunc = string.format("FoxRidingAct_IsCps2Refine</N>%d</N>%d</N>%d</S>%s</N>%d",nNpcId,nItemId,nEMoney,sItemName,nUserId)
	tNpcGossip[nNpcId]["Text211"] = sText211
	tNpcGossip[nNpcId]["Option211"] = sOptText211
	tNpcGossip[nNpcId]["OptionFunc211"] = sOptFunc
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 精炼 -- 天石替代材料（二次确认）
function FoxRidingAct_IsCps2Refine(nNpcId,nItemId,nEMoney,sItemName,nUserId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 是否跳过二次确认
	local nEvent_7 = tFoxRidingAct_Stc[7]["EventType"]
	local nType_7 = tFoxRidingAct_Stc[7]["DataType"] 
	if not Task_ChkStcValue(nEvent_7,nType_7,"==",0) then
		if not Task_StcInterval(nEvent_7,nType_7,1,4) then
			FoxRidingAct_DoCps2Refine(nNpcId,nItemId,nEMoney,sItemName,nUserId)
			return
		end
	end

	local sText311 = string.format(tFoxRidingAct_Text[nNpcId]["Text311"],nEMoney,sItemName)
	local sOptText311 = string.format(tFoxRidingAct_Text[nNpcId]["Option311"],nEMoney)
	local sOptFunc311 = string.format("FoxRidingAct_DoCps2Refine</N>%d</N>%d</N>%d</N>%s</N>%d",nNpcId,nItemId,nEMoney,sItemName,nUserId)
	local sOptFunc312 = string.format("FoxRidingAct_DeleteIsOpt2</N>%d</N>%d</N>%d</N>%s</N>%d",nNpcId,nItemId,nEMoney,sItemName,nUserId)
	tNpcGossip[nNpcId]["Text311"] = sText311
	tNpcGossip[nNpcId]["Option311"] = sOptText311
	tNpcGossip[nNpcId]["OptionFunc311"] = sOptFunc311
	tNpcGossip[nNpcId]["OptionFunc312"] = sOptFunc312
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 精炼 -- 精炼前判断
function FoxRidingAct_DoCps2Refine(nNpcId,nItemId,nEMoney,sItemName,nUserId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 天石不够
	local nUserEmoney = Get_UserEMoney(nUserId)
	if not (nUserEmoney >= nEMoney) then
		local sText181 = string.format(tFoxRidingAct_Text[nNpcId]["Text181"],sItemName)
		LinkNpcGossipFunc_New(nNpcId,"1-8")
		return
	end
	
	if User_AddEMoney(-nEMoney,nUserId) then
		FoxRidingAct_RefineAlchemy(nNpcId,nItemId,nUserId)
		local sEmoneyLog = string.format(tFoxRidingAct_EmoneyLog["Cps2HandIn"],nEMoney,nEMoney)
		Sys_SaveEmoneyBuy(sEmoneyLog)
	end
end


-- 精炼蕴灵丹
function FoxRidingAct_RefineAlchemy(nNpcId,nItemId,nUserId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nUserId = nUserId or Get_UserId()
	local sItemName = Get_ItemtypeName(nItemId)

	local nEvent_4 = tFoxRidingAct_Stc[4]["EventType"]
	local nType_4 = tFoxRidingAct_Stc[4]["DataType"]
	local nAlchemyLev = Get_UserStatisticValue(nEvent_4,nType_4,nUserId)
	local nPorbNum = nAlchemyLev + 1
	-- 走炼丹几率
	local flat,tItem_1 = Probabil_RandomAward(tFoxRidingAct_Porb[2],nPorbNum)
	local nNewAlchemyLev = tItem_1[1]["tAward"][1]["Item_1"]
	
	-- 设置新的等级
	Task_SetStatistic(nEvent_4,nType_4,nNewAlchemyLev,1,nUserId)
	-- Task_SetStcTimestamp(nEvent_4,nType_4,0,nUserId)
	
	-- 重置进度值
	FoxRidingAct_ResetProgress()
	
	local sLog = string.format(tFoxRidingAct_Log["RefineAlchemy"],nItemId,nAlchemyLev,nNewAlchemyLev)
	Sys_SaveActionFestivalLog(sLog)
	
	-- 刷新光效
	local nMapId = tFoxRidingAct_Cont["FindNpc"][20359]["MapId"]
	local nPosX = tFoxRidingAct_Cont["FindNpc"][20359]["PosX"]
	local nPosY = tFoxRidingAct_Cont["FindNpc"][20359]["PosY"]
	Map_Effect(nMapId,nPosX,nPosY,tFoxRidingAct_Effect["DoAlchemy"]) 
	local sAlchemyLev = tFoxRidingAct_Text["Number"][nNewAlchemyLev]
	
	-- 失败，精炼失败
	if nNewAlchemyLev == nAlchemyLev then
		-- 系统提示+直接返回主对白
		local sText261 = string.format(tFoxRidingAct_Text[nNpcId]["RefineFail"][nItemId],sItemName)
		User_TalkChannel2005(sText261)
		FoxRidingAct_StoveNpcMain(nNpcId)
		
		
	-- 成功，青丘灵丹进阶
	else
		-- 随机出对白
		local nTextNum = math.random(1,3)
		local sText27X = string.format(tFoxRidingAct_Text[nNpcId]["Text27".. nTextNum],sAlchemyLev)
		tNpcGossip[nNpcId]["Text2-7"] = {tonumber("27".. nTextNum)}
		tNpcGossip[nNpcId]["Text27".. nTextNum] = sText27X
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["UpAlchemy"])
		
		-- 精炼7级以上全服公告
		if nNewAlchemyLev >= 7 then
			local sUserName = Get_UserName(nUserId)
			Sys_SystemBroadcast(string.format(tFoxRidingAct_Text["SysBroad"]["DoAlchemy"],sUserName,sAlchemyLev))
		end
	end
end


-- 炼丹读条执行
function FoxRidingAct_DoExplore(nNpcId,nUserId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 走炼丹几率
	local flat,tItem_1 = Probabil_RandomAward(tFoxRidingAct_Porb[1],1)
	local nAlchemyLev = tItem_1[1]["tAward"][1]["Item_1"]
	
	-- 重置进度值
	FoxRidingAct_ResetProgress(nUserId)
	
	-- 设置蕴灵丹等级
	local nEvent_4 = tFoxRidingAct_Stc[4]["EventType"]
	local nType_4 = tFoxRidingAct_Stc[4]["DataType"]
	Task_SetStatistic(nEvent_4,nType_4,nAlchemyLev,1,nUserId)
	
	-- 记录是否炼制过蕴灵丹
	local nEvent_5 = tFoxRidingAct_Stc[5]["EventType"]
	local nType_5 = tFoxRidingAct_Stc[5]["DataType"]
	Task_SetStatistic(nEvent_5,nType_5,1,1,nUserId)
	
	-- 显示对白+log
	sLog = string.format(tFoxRidingAct_Log["DoAlchemy"],nAlchemyLev)
	Sys_SaveActionFestivalLog(sLog,nUserId)
	local sFunc = string.format("FoxRidingAct_HaveYunDan</N>%d</N>%d",nNpcId,nUserId)
	
	-- 0阶出未成型对白
	if nAlchemyLev ~= 0 then
		local sAlchemyLev = tFoxRidingAct_Text["Number"][nAlchemyLev]
		Sys_MsgBox(string.format(tFoxRidingAct_Text["DoAlchemy"],sAlchemyLev),sFunc,"NULL",nUserId)
	else
		Sys_MsgBox(tFoxRidingAct_Text["DoAlchemy_0"],sFunc,"NULL",nUserId)
	end
	User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["Progress"],nUserId)
end



-- 开始炼丹（三个内丹炼蕴灵丹）
function FoxRidingAct_DoAlchemy(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 是否上交全部内丹
	for i,v in ipairs(tFoxRidingAct_Stc["AlchemyNum"]) do
		local nEvent = tFoxRidingAct_Stc[v]["EventType"]
		local nType = tFoxRidingAct_Stc[v]["DataType"]
		if Task_ChkStcValue(nEvent,nType,"==",0) then
			FoxRidingAct_StoveNpcMain(nNpcId)
			return
		end
	end
	
	-- 读条炼丹
	local nUserId = Get_UserId()
	local nSecs = tFoxRidingAct_Cont["Explore"]["Time"]
	local sContent = tFoxRidingAct_Text["Explore"]
	local nActionId = tFoxRidingAct_Cont["Explore"]["ActionId"]
	local sFunc = string.format("FoxRidingAct_DoExplore</N>%d",nNpcId)
	User_SetExplore(nSecs,sContent,nActionId,sFunc)
end


-- 取出青丘灵丹（二次确认）
function FoxRidingAct_IsGetYunDan(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 空间不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-8")
		return
	end
	
	local nEvent_4 = tFoxRidingAct_Stc[4]["EventType"]
	local nType_4 = tFoxRidingAct_Stc[4]["DataType"]
	local nAlchemyLev = Get_UserStatisticValue(nEvent_4,nType_4,nUserId)
	local sAlchemyLev = tFoxRidingAct_Text["Number"][nAlchemyLev]
	local nBallUpLev_1 = tFoxRidingAct_ShowUpLev[200539][nAlchemyLev]
	local nBallUpLev_2 = tFoxRidingAct_ShowUpLev[200595][nAlchemyLev]

	-- 组合对标
	local sText241 = string.format(tFoxRidingAct_Text[nNpcId]["Text241"],sAlchemyLev)
	local sText243 = string.format(tFoxRidingAct_Text[nNpcId]["Text243"],nBallUpLev_1)
	local sText244 = string.format(tFoxRidingAct_Text[nNpcId]["Text244"],nBallUpLev_2)
	local sText247 = string.format(tFoxRidingAct_Text[nNpcId]["Text247"],sAlchemyLev)
	tNpcGossip[nNpcId]["Text241"] = sText241
	tNpcGossip[nNpcId]["Text243"] = sText243
	tNpcGossip[nNpcId]["Text244"] = sText244
	tNpcGossip[nNpcId]["Text247"] = sText247

	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

-- 取出青丘灵丹（执行取出）
function FoxRidingAct_GetYunDan(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 空间不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-8")
		return
	end
	
	local nEvent_4 = tFoxRidingAct_Stc[4]["EventType"]
	local nType_4 = tFoxRidingAct_Stc[4]["DataType"]
	local nAlchemyLev = Get_UserStatisticValue(nEvent_4,nType_4,nUserId)
	
	-- 为0阶直接跳出
	if nAlchemyLev == 0 then
		return
	end

	-- 清空丹炉
	FoxRidingAct_ClearStove(nNpcId)

	-- 给青丘灵丹
	local nItemId = tFoxRidingAct_ItemId["Itemtype"]["Alchemy"][nAlchemyLev]
	tFoxRidingAct_GetYunDan["RewardItem"][1]["Id"] = nItemId
	
	if RewardTemplate_UseItem(tFoxRidingAct_GetYunDan) then
		-- 出提示
		local sLog = string.format(tFoxRidingAct_Log["GetAlchemy"],nItemId)
		local sText = string.format(tFoxRidingAct_Text["GetAlchemy"],Get_ItemtypeName(nItemId))
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(sText)
	end
end


-- 已有蕴灵丹对白
function FoxRidingAct_HaveYunDan(nNpcId,nUserId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	local nUserId = nUserId or Get_UserId()
	local nEvent_4 = tFoxRidingAct_Stc[4]["EventType"]
	local nType_4 = tFoxRidingAct_Stc[4]["DataType"]
	local nAlchemyLev = Get_UserStatisticValue(nEvent_4,nType_4,nUserId)
	-- 确认外套升级几率
	local nBallUpLev_1 = 0 --九尾天狐坐骑外套升级成功率
	local nBallUpLev_2 = 0 --无光效狐仙外套升级成功率

	if nAlchemyLev ~= 0 then
		nBallUpLev_1 = tFoxRidingAct_ShowUpLev[200539][nAlchemyLev]
		nBallUpLev_2 = tFoxRidingAct_ShowUpLev[200595][nAlchemyLev]
	end
	-- 组合炉子强度
	local tTemp = {}
	for i = 1, 3 do
		local sTemp = ""
		local nEvent = tFoxRidingAct_Stc[i]["EventType"]
		local nType = tFoxRidingAct_Stc[i]["DataType"]
		local nNum = Get_UserStatisticValue(nEvent,nType,nUserId)
		if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then 
			nNum = math.random(1,20)
			Task_SetStatistic(nEvent,nType,nNum,1,nUserId)
		end
		
		for j = 1,nNum do
			sTemp = sTemp .. tFoxRidingAct_Text[nNpcId]["Text1511"]
		end
		tTemp[i] = sTemp
	end
	
	-- 重置对白
	local sText152X = string.format(tFoxRidingAct_Text[nNpcId]["Text152".. nAlchemyLev],nBallUpLev_1,nBallUpLev_2)
	local sText152 = string.format(tFoxRidingAct_Text[nNpcId]["Text152"],sText152X)
	local sText153 = string.format(tFoxRidingAct_Text[nNpcId]["Text153"],tTemp[1])
	local sText154 = string.format(tFoxRidingAct_Text[nNpcId]["Text154"],tTemp[2])
	local sText155 = string.format(tFoxRidingAct_Text[nNpcId]["Text155"],tTemp[3])
	tNpcGossip[nNpcId]["Text152"] = sText152
	tNpcGossip[nNpcId]["Text153"] = sText153
	tNpcGossip[nNpcId]["Text154"] = sText154
	tNpcGossip[nNpcId]["Text155"] = sText155
	
	-- 对白重置
	if nAlchemyLev == 0 then
		tNpcGossip[nNpcId]["Text158"] = tFoxRidingAct_Text[nNpcId]["Text158"]
	else
		tNpcGossip[nNpcId]["Text158"] = tFoxRidingAct_Text[nNpcId]["Text1512"]
	end
	
	-- 初始化选项
	tNpcGossip[nNpcId]["tOption1-5"] = {}
	
	-- 选项处理(内丹)
	local fNewTemp = true
	for nNumber,v in ipairs(tFoxRidingAct_Stc["AlchemyNum"]) do
		-- 蕴灵丹9级不能炼
		if nAlchemyLev >= 9 then
			fNewTemp = false
			break
		end
	
		if Item_ChkItem(v,1,0,nUserId) then
			fNewTemp = false
		end
		
		table.insert(tNpcGossip[nNpcId]["tOption1-5"],tonumber("15".. nNumber))
		tNpcGossip[nNpcId]["OptionFunc15".. nNumber] = string.format("FoxRidingAct_ChkRefineItem</N>%d</N>%d</N>%d",nNpcId,nNumber,nUserId)
	end
	
	-- "秘法升阶"选项，9阶不显示
	if nAlchemyLev >= 1 and nAlchemyLev < 9 then
		local sOptFunc = string.format("FoxRidingAct_UpByMiFa</N>%d</N>%d",nNpcId,nUserId)
		tNpcGossip[nNpcId]["OptionFunc1510"] = sOptFunc
		table.insert(tNpcGossip[nNpcId]["tOption1-5"],1510)
	end
	
	-- 如何获得炼丹材料“选项”
	-- if fNewTemp then
		-- table.insert(tNpcGossip[nNpcId]["tOption1-5"],154)
	-- end
	
	-- 选项处理(可选显示)
	if nAlchemyLev >= 1 then
		table.insert(tNpcGossip[nNpcId]["tOption1-5"],155)
	else
		table.insert(tNpcGossip[nNpcId]["tOption1-5"],156)
	end
	
	-- 必须显示选项
	table.insert(tNpcGossip[nNpcId]["tOption1-5"],157)
	table.insert(tNpcGossip[nNpcId]["tOption1-5"],158)
	
	
	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,"1-5")
end

--------------
-- 秘法升阶段主函数
function FoxRidingAct_UpByMiFa(nNpcId,nUserId)
	local nUserId = nUserId or Get_UserId()
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 检测材料是否足够
	local nItemNum = tFoxRidingAct_Cont["MiFa"]["ItemNum"]
	for i,v in ipairs(tFoxRidingAct_Stc["AlchemyNum"]) do
		-- 材料不足对白
		if not Item_ChkMulItem(v,v,nItemNum,1,0,nUserId) then
			-- 对白
			local nEMoney = tFoxRidingAct_Cont["MiFa"]["Emoney"]
			local sText513 = string.format(tFoxRidingAct_Text[nNpcId]["Text513"],nItemNum)
			local sText516 = string.format(tFoxRidingAct_Text[nNpcId]["Text516"],nEMoney)
			tNpcGossip[nNpcId]["Text513"] = sText513
			tNpcGossip[nNpcId]["Text516"] = sText516
			
			-- 选项
			local sOptText = string.format(tFoxRidingAct_Text[nNpcId]["Option511"],nEMoney)
			tNpcGossip[nNpcId]["Option511"] = sOptText
			
			local sOptFunc511 = string.format("FoxRidingAct_IsMiFaByEMoney</N>%d</N>%d</N>%d",nNpcId,nEMoney,nUserId)
			tNpcGossip[nNpcId]["OptionFunc511"] = sOptFunc511
			
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		end
	end
	
	-- 材料足够的对白
	local sText413 = string.format(tFoxRidingAct_Text[nNpcId]["Text413"],nItemNum)
	tNpcGossip[nNpcId]["Text413"] = sText413
	
	-- 选项
	local sOptFunc411 = string.format("FoxRidingAct_DoMiFaByItem</N>%d</N>%d",nNpcId,nUserId)
	tNpcGossip[nNpcId]["OptionFunc411"] = sOptFunc411
	
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

-- 秘法升级 --用材料
function FoxRidingAct_DoMiFaByItem(nNpcId,nUserId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 检测材料是否足够
	local nItemNum = tFoxRidingAct_Cont["MiFa"]["ItemNum"]
	for _,v in ipairs(tFoxRidingAct_Stc["AlchemyNum"]) do
		if not Item_ChkMulItem(v,v,nItemNum,1,0,nUserId) then
			local sText = string.format(tFoxRidingAct_Text[nNpcId]["Text421"],nItemNum)
			tNpcGossip[nNpcId]["Text421"] = sText
			LinkNpcGossipFunc_New(nNpcId,"4-2")
			return
		end
	end
	
	-- 删除材料
	for _,k in ipairs(tFoxRidingAct_Stc["AlchemyNum"]) do
		if Item_ChkMulItem(k,k,nItemNum,1,0,nUserId) then
			Item_DelMulItem(k,k,nItemNum,1,0,nUserId)
		else
			return
		end
	end
	
	-- 执行秘法升级
	FoxRidingAct_DoUpMiFa(nNpcId,nItemNum,"Item",nUserId)
end

-- 秘法升级 -- 用天石（二次确认）
function FoxRidingAct_IsMiFaByEMoney(nNpcId,nEMoney,nUserId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 出二次确认对白
	local sText = string.format(tFoxRidingAct_Text[nNpcId]["Text522"],nEMoney)
	local sOptText = string.format(tFoxRidingAct_Text[nNpcId]["Option521"],nEMoney)
	local sOptFunc = string.format("FoxRidingAct_DoMiFaByEMoney</N>%d</N>%d</N>%d",nNpcId,nEMoney,nUserId)
	tNpcGossip[nNpcId]["Text522"] = sText
	tNpcGossip[nNpcId]["Option521"] = sOptText
	tNpcGossip[nNpcId]["OptionFunc521"] = sOptFunc
	LinkNpcGossipFunc_New(nNpcId,"5-2")
end

-- 秘法升级 -- 用天石
function FoxRidingAct_DoMiFaByEMoney(nNpcId,nEMoney,nUserId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 天石不够
	local nUserEmoney = Get_UserEMoney(nUserId)
	if not (nUserEmoney >= nEMoney) then
		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return
	end
	
	-- 扣天石
	if User_AddEMoney(-nEMoney,nUserId) then
		FoxRidingAct_DoUpMiFa(nNpcId,nEMoney,"EMoney",nUserId)
		local sEmoneyLog = string.format(tFoxRidingAct_EmoneyLog["Cps2Refine"],nEMoney,nEMoney)
		Sys_SaveEmoneyBuy(sEmoneyLog)
	end
end


-- 秘法升级 -- 执行升级
function FoxRidingAct_DoUpMiFa(nNpcId,nNum,sUpType,nUserId)
	-- 走几率
	local nEvent_4 = tFoxRidingAct_Stc[4]["EventType"]
	local nType_4 = tFoxRidingAct_Stc[4]["DataType"]
	local nAlchemyLev = Get_UserStatisticValue(nEvent_4,nType_4,nUserId)
	
	-- 9阶灵丹跳出
	if nAlchemyLev >= 9 then
		return
	end
	
	local flat,tItem_1 = Probabil_RandomAward(tFoxRidingAct_MiFaPorb[1],nAlchemyLev)
	local nNewAlchemyLev = tItem_1[1]["tAward"][1]["Item_1"]

	-- 设置新的等级
	Task_SetStatistic(nEvent_4,nType_4,nNewAlchemyLev,1,nUserId)

	-- 重置进度值
	FoxRidingAct_ResetProgress(nUserId)
	
	local sAlchemyLev = tFoxRidingAct_Text["Number"][nNewAlchemyLev]
	local sLog = ""
	local sDialog = ""
	-- 材料的对白处理
	if sUpType == "Item" then
		tNpcGossip[nNpcId]["Text431"] = string.format(tFoxRidingAct_Text[nNpcId]["Text431"],nNum,sAlchemyLev)
		sLog = string.format(tFoxRidingAct_Log["MiFaUpLev"]["Item"],nNum,nNum,nNum,nAlchemyLev,nNewAlchemyLev)
		sDialog = "4-3"
		
	-- 天石的对白处理
	elseif sUpType == "EMoney" then
		tNpcGossip[nNpcId]["Text541"] = string.format(tFoxRidingAct_Text[nNpcId]["Text541"],nNum,sAlchemyLev)
		sLog = string.format(tFoxRidingAct_Log["MiFaUpLev"]["EMoney"],nNum,nAlchemyLev,nNewAlchemyLev)
		sDialog = "5-4"
	end
	
	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,sDialog)
	
	-- 光效
	Sys_SaveActionFestivalLog(sLog)
	User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["UpAlchemy"])
	
	-- 精炼7级以上全服公告
	if nNewAlchemyLev >= 7 then
		local sUserName = Get_UserName(nUserId)
		Sys_SystemBroadcast(string.format(tFoxRidingAct_Text["SysBroad"]["DoAlchemy"],sUserName,sAlchemyLev))
	end
end


--------------

-- 九转乾坤炼丹炉（npc接入）
function FoxRidingAct_StoveNpcMain(nNpcId)
	local nNpcId = nNpcId or Get_NpcId()
	-- 活动前
	if Sys_ChkFullTime(tFoxRidingAct_Cont["BefTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 活动后
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 活动中（等级不足）
	local nLevel = tFoxRidingAct_Cont["Level"]
	local nMete = tFoxRidingAct_Cont["Metempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
------ 活动中（满足条件）
	local tAlchemy = {} -- 记录内丹名字
	local nAlreadyNum = 0 -- 记录已放入内丹数量
	local fScience = false -- 记录是否有材料
	
	-- 初始化选项
	tNpcGossip[nNpcId]["tOption1-4"] = {}
	
	-- 检测内丹上交情况
	for i,v in ipairs(tFoxRidingAct_Stc["AlchemyNum"]) do
		local nEvent = tFoxRidingAct_Stc[v]["EventType"]
		local nType = tFoxRidingAct_Stc[v]["DataType"]
		if Task_ChkStcValue(nEvent,nType,"==",0) then
			tAlchemy[i] = tFoxRidingAct_Text[nNpcId]["Text141".. i]
		else
			tAlchemy[i] = tFoxRidingAct_Text[nNpcId]["Text142".. i]
			nAlreadyNum = nAlreadyNum + 1
		end
		
		-- 背包内是否有对应内丹
		if Item_ChkItem(v)  then
			fScience = true
		end
		
		-- 是否已上交
		if Task_ChkStcValue(nEvent,nType,"==",0) then
			-- 选项处理
			table.insert(tNpcGossip[nNpcId]["tOption1-4"],tonumber("14".. i))
			tNpcGossip[nNpcId]["OptionFunc14".. i] = string.format("FoxRidingAct_HandInAlchemy</N>%d</N>%d",nNpcId,v)
		end
	end
	
	local nEvent_5 = tFoxRidingAct_Stc[5]["EventType"]
	local nType_5 = tFoxRidingAct_Stc[5]["DataType"]

	if Task_ChkStcValue(nEvent_5,nType_5,"==",0) then
		-- 对白处理
		tNpcGossip[nNpcId]["Text144"] = string.format(tFoxRidingAct_Text[nNpcId]["Text144"],tAlchemy[1],tAlchemy[2],tAlchemy[3])

		-- 出“开始炼丹”选项
		if nAlreadyNum >= #tFoxRidingAct_Stc["AlchemyNum"] then
			table.insert(tNpcGossip[nNpcId]["tOption1-4"],1411)
			
		-- 没有材料，出“如何获得炼丹材料”选项
		-- elseif  not fScience then
			-- table.insert(tNpcGossip[nNpcId]["tOption1-4"],1412)
		end
		
		
		-- if not fScience then
			-- table.insert(tNpcGossip[nNpcId]["tOption1-4"],1412)
		-- end
		
		-- 出必要选项
		for nOption = 1413,1414 do
			table.insert(tNpcGossip[nNpcId]["tOption1-4"],nOption)
		end
		
		LinkNpcGossipFunc_New(nNpcId,"1-4")
	else
		FoxRidingAct_HaveYunDan(nNpcId)
	end
end

--------------------------------------------
-- 促衣会产出接口
-- nNpcId = 18996 素衣阁岫山玉
-- nNpcId = 18997 锦衣阁
-- 需要1个背包空间，在促衣会脚本那边判断
function FoxRidingAct_CuYiHui(nNpcId,nTimes)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		return 
	end
	
	local tTemp = CommonFunc_Copy(tFoxRidingAct_CuYiWard)
	
	-- 为三连抽
	if nTimes >= 3 then
		for i,v in ipairs(tTemp[nNpcId]) do
			local tItemAttr = Sys_Split(v["RewardItem"][1]["Attr"]," ")
			local nRewardNum = tonumber(tItemAttr[2]) * 3
			if tItemAttr[3] ~= nil then
				v["RewardItem"][1]["Attr"] = string.format("0 %d 3",nRewardNum)
			else
				v["RewardItem"][1]["Attr"] = string.format("0 %d",nRewardNum)
			end
		end
	end
	
	-- 随机给奖励
	RewardTemplate_Random(tTemp,nNpcId)
end

--------------------------------------------
-- 其他脚本取活动时间
function FoxRidingAct_GetActivityTime()
	return tFoxRidingAct_Cont["NowTime"]
end

-- 每日签到礼包
function FoxRidingAct_QianDaoPag()
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		return
	end
	
	-- 给奖励
	RewardTemplate_UseItem(tFoxRidingAct_QianDaoWard)
end


--------------------------------------------
--骑宠活动分解额外获得
function FoxRidingAct_SplitAward(nCoatId)
	--获得时间判断
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		return
	end
	
	--九尾天狐坐骑外套
	if nCoatId == 200539 then
		RewardTemplate_UseItem(FoxRidingAct_SplitAwardInfo[200539])
	end
	
	--狐妖装
	if nCoatId == 192345 or nCoatId == 194405 then
		RewardTemplate_Random(FoxRidingAct_SplitAwardInfo[192345],1)
	end
end

--------------------------------------------物品使用逻辑----------------------------------------
-- 活动时间外删除道具
function FoxRidingAct_IsDelItem(nItemId,sItemStr,nUserId)
	local nUserId = nUserId or Get_UserId()
	-- 活动后
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			local sItemStr = sItemStr or nItemId
			local sLog = string.format(tFoxRidingAct_Log["DelItem"],nItemId,nItemNum)
			Sys_SaveActionFestivalLog(sLog,nUserId)
			User_TalkChannel2005(tFoxRidingAct_Text["DelItem"][sItemStr],nUserId)
		end
		return false
	end
	
	return true
end

--------------------------------------------
-- 青丘灵丹升级外套（赠）属性处理
function FoxRidingAct_AlchemyMono(nCoatId,nItemMono)
	local nNewCoatId = tFoxRidingAct_CoatUplev[nCoatId]
	local sOldCoatName =  Get_ItemtypeName(nCoatId)
	local sNewCoatName = Get_ItemtypeName(nNewCoatId)
	
	-- 为赠品外套
	if nItemMono == 2 then
		sOldCoatName = sOldCoatName..tFoxRidingAct_Text[3302316]["Text2110"]
		sNewCoatName = sNewCoatName..tFoxRidingAct_Text[3302316]["Text2110"]
	end
	
	return sOldCoatName,sNewCoatName,nNewCoatId
end


-- 青丘灵丹
function FoxRidingAct_AlchemyItem(nItemId)
	-- 活动时间
	if not FoxRidingAct_IsDelItem(nItemId,"Alchemy") then
		return
	end

	-- 确定灵丹等级
	local nAlchemyLev = 0
	for i,v in ipairs(tFoxRidingAct_ItemId["Itemtype"]["Alchemy"]) do
		if v == nItemId then
			nAlchemyLev = i
		end
	end
	
	-- 确定升级几率（显示用）
	local nBallUpLev_1 = tFoxRidingAct_ShowUpLev[200539][nAlchemyLev]
	local nBallUpLev_2 = tFoxRidingAct_ShowUpLev[200595][nAlchemyLev]
	local sAlchemyLev = tFoxRidingAct_Text["Number"][nAlchemyLev]
	
	-- 组合对白
	local sText111 = string.format(tFoxRidingAct_Text[3302316]["Text111"],sAlchemyLev)
	local sText113 = string.format(tFoxRidingAct_Text[3302316]["Text113"],nBallUpLev_1)
	local sText114 = string.format(tFoxRidingAct_Text[3302316]["Text114"],nBallUpLev_2)
	local sText116 = string.format(tFoxRidingAct_Text[3302316]["Text116"],sAlchemyLev)
	tItem[3302316]["Text111"] = sText111
	tItem[3302316]["Text113"] = sText113
	tItem[3302316]["Text114"] = sText114
	tItem[3302316]["Text116"] = sText116

	-- 重置选项
	tItem[3302316]["tOption1-1"] = {}
	
	-- 升级外套选项
	for i = 1, 2 do
		local nCoatId = tFoxRidingAct_ItemId["Itemtype"]["Coat"][i]
		local nBallUpLev = tFoxRidingAct_ShowUpLev[nCoatId][nAlchemyLev]
		-- 存在（非增）的 -- 非时效
		if Item_ChkMulItem(nCoatId,nCoatId,1,0,0,0,0) then
			table.insert(tItem[3302316]["tOption1-1"],tonumber("11".. i))
			tItem[3302316]["OptionFunc11".. i] = string.format("FoxRidingAct_InputDialog</N>%d</N>%d</N>%d</N>%d</S>%s",nItemId,0,nCoatId,nAlchemyLev,nBallUpLev)
		end
		
		-- 存在（赠）的 -- 非时效
		if Item_ChkMulItem(nCoatId,nCoatId,1,2,0,0,0) then
			table.insert(tItem[3302316]["tOption1-1"],tonumber("11".. (i + 2)))
			tItem[3302316]["OptionFunc11".. (i + 2)] = string.format("FoxRidingAct_InputDialog</N>%d</N>%d</N>%d</N>%d</S>%s",nItemId,2,nCoatId,nAlchemyLev,nBallUpLev)
		end
	end
	
	-- 没有外套
	if next(tItem[3302316]["tOption1-1"]) == nil then
		table.insert(tItem[3302316]["tOption1-1"],115)
	else
		table.insert(tItem[3302316]["tOption1-1"],116)
	end
	
	-- 出对白
	LinkItemGossipFunc_New(3302316,"1-1")
end

-- 出输入对白
function FoxRidingAct_InputDialog(nItemId,nItemMono,nCoatId,nAlchemyLev,nBallUpLev)
	local nBallUpLev = tonumber(nBallUpLev)
	-- 活动时间
	if not FoxRidingAct_IsDelItem(nItemId,"Alchemy") then
		return
	end

	-- 没有外套
	if not Item_ChkMulItem(nCoatId,nCoatId,1,nItemMono,0,0,0) then
		return
	end
	
	-- 没有材料
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 计算100%需要多少枚
	local nNeedNum = math.ceil(100 / nBallUpLev)

	-- 取外套名
	local sOldCoatName,sNewCoatName = FoxRidingAct_AlchemyMono(nCoatId,nItemMono)
	local sAlchemyLev = tFoxRidingAct_Text["Number"][nAlchemyLev]
	
	-- 组合对白
	local sDialogText1 = string.format(tFoxRidingAct_Text[3302316]["Text211"],sOldCoatName,sNewCoatName)
	local sDialogText2 = string.format(tFoxRidingAct_Text[3302316]["Text212"],sAlchemyLev,nBallUpLev)
	local sDialogText3 = string.format(tFoxRidingAct_Text[3302316]["Text213"],nNeedNum,sAlchemyLev)
	local sDialogText4 = tFoxRidingAct_Text[3302316]["Text214"]

	local nOptEditLen = tFoxRidingAct_Cont["OptEditLen"]
	local sOptEditText = tFoxRidingAct_Text[3302316]["Option211"]
	local sOptEditFunc = string.format("FoxRidingAct_IsUpCoat</N>%d</N>%d</N>%d</N>%d</S>%s</N>%d",nItemId,nItemMono,nCoatId,nAlchemyLev,nBallUpLev,nNeedNum)
	local sOptFunc = string.format("</F>FoxRidingAct_AlchemyItem</N>%d",nItemId)
	Sys_DialogText(sDialogText1)
	Sys_DialogText(sDialogText2)
	Sys_DialogText(sDialogText3)
	Sys_DialogText(sDialogText4)
	Sys_DialogOptEdit(sOptEditText,nOptEditLen,sOptEditFunc)
	Sys_DialogOption(tFoxRidingAct_Text[3302316]["Option212"],sOptFunc)
	Sys_DialogItemFace(3302316)
	Sys_DialogEnd()
end


-- 输入数量处理
function FoxRidingAct_IsUpCoat(nItemId,nItemMono,nCoatId,nAlchemyLev,nBallUpLev,nNeedNum)
	-- 活动时间
	if not FoxRidingAct_IsDelItem(nItemId,"Alchemy") then
		return
	end
	
	-- 返回上一页函数
	local sBackFunc = string.format("FoxRidingAct_InputDialog</N>%d</N>%d</N>%d</N>%d</S>%s",nItemId,nItemMono,nCoatId,nAlchemyLev,nBallUpLev)
	
	local nInputNum = tonumber(Get_SysAcceptStr())
	-- 输入非法字符
	if type(nInputNum) ~= "number" or nInputNum <= 0 then
		tItem[3302316]["OptionFunc231"] = sBackFunc
		LinkItemGossipFunc_New(3302316,"2-3")
		return
	end
	
	-- 输入值是否大于需求数量
	local sAlchemyLev = tFoxRidingAct_Text["Number"][nAlchemyLev]
	if nInputNum > nNeedNum then
		local sText221 = string.format(tFoxRidingAct_Text[3302316]["Text221"],nNeedNum,sAlchemyLev,sAlchemyLev)
		tItem[3302316]["Text221"] = sText221
		tItem[3302316]["OptionFunc221"] = sBackFunc
		LinkItemGossipFunc_New(3302316,"2-2")
		return
	end
	
	-- 是否有外套 -- 非时效的
	if not Item_ChkMulItem(nCoatId,nCoatId,1,nItemMono,0,0,0) then
		tItem[3302316]["OptionFunc131"] = string.format("FoxRidingAct_AlchemyItem</N>%d",nItemId)
		LinkItemGossipFunc_New(3302316,"1-3")
		return
	end
	
	-- 是否有足够数量的灵丹
	if not Item_ChkMulItem(nItemId,nItemId,nInputNum) then
		tItem[3302316]["Text121"] = string.format(tFoxRidingAct_Text[3302316]["Text121"],sAlchemyLev)
		LinkItemGossipFunc_New(3302316,"1-2")
		return
	end
	
	-- 对白处理
	local nUpProb = 0
	if nInputNum == nNeedNum then
		nUpProb = 100
	else
		nUpProb = nBallUpLev * nInputNum
	end
	
	-- 取外套名
	local sOldCoatName,sNewCoatName = FoxRidingAct_AlchemyMono(nCoatId,nItemMono)
	local sText311 = string.format(tFoxRidingAct_Text[3302316]["Text311"],nInputNum,sAlchemyLev,sOldCoatName,sNewCoatName)
	local sText312 = string.format(tFoxRidingAct_Text[3302316]["Text312"],nUpProb)
	local sOptFunc1 = string.format("FoxRidingAct_UpCoat</N>%d</N>%d</N>%d</N>%d</S>%s</N>%d",nItemId,nItemMono,nCoatId,nAlchemyLev,nUpProb,nInputNum)
	local sOptFunc2 = string.format("FoxRidingAct_AlchemyItem</N>%d",nItemId)
	tItem[3302316]["Text311"] = sText311
	tItem[3302316]["Text312"] = sText312
	tItem[3302316]["OptionFunc311"] = sOptFunc1
	tItem[3302316]["OptionFunc312"] = sOptFunc2
	LinkItemGossipFunc_New(3302316,"3-1")
end


-- 升级外套
function FoxRidingAct_UpCoat(nItemId,nItemMono,nCoatId,nAlchemyLev,nUpProb,nInputNum)
	local nUpProb = tonumber(nUpProb)
	-- 活动时间
	if not FoxRidingAct_IsDelItem(nItemId,"Alchemy") then
		return
	end

	-- 是否有外套
	if not Item_ChkItem(nCoatId,nItemMono) then
		LinkItemGossipFunc_New(3302316,"1-3")
		return
	end
	
	if Item_ChkMulItem(nItemId,nItemId,nInputNum) and Item_DelMulItem(nItemId,nItemId,nInputNum) then
		if nUpProb >= 100 then
			nUpProb = 100
		else
			local nRealProb = tFoxRidingAct_RealUpLev[nCoatId][nAlchemyLev]
			nUpProb = nInputNum *  nRealProb
		end
		
		local tTemp = CommonFunc_Copy(tFoxRidingAct_CoatPorb)
		tTemp[1][1]["ItemChance"] = nUpProb * 1000
		tTemp[1][2]["ItemChance"] = tTemp[1]["ItemChanceSum"] - tTemp[1][1]["ItemChance"]

		local flat,tItem_1 = Probabil_RandomAward(tTemp,1)
		local fUpLev = tItem_1[1]["tAward"][1]["Item_1"]
		
		local sItemName = Get_ItemtypeName(nItemId)
		local sLog = ""
		local sText = ""
		-- 成功
		if fUpLev then
			local tGetNewCoat = CommonFunc_Copy(tFoxRidingAct_GetNewCoat[nCoatId])
			
			-- 为非赠外套，升级为非赠
			if nItemMono == 0 then
				tGetNewCoat["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
			end
			
			if RewardTemplate_UseItem(tGetNewCoat) then
				User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["UpCoat"])
				
				-- 出提示
				local sOldCoatName,sNewCoatName,nNewCoatId = FoxRidingAct_AlchemyMono(nCoatId,nItemMono)
				sLog = string.format(tFoxRidingAct_Log["UpCoatSuccess"],nCoatId,nItemId,nInputNum,nNewCoatId)
				sText = string.format(tFoxRidingAct_Text["UpCoatSuccess"],nInputNum,sItemName,sOldCoatName,sNewCoatName)
				
				-- 全服公告
				local sUserName = Get_UserName()
				Sys_SystemBroadcast(string.format(tFoxRidingAct_Text["SysBroad"]["UpCoat"],sUserName,sNewCoatName))
			end
		-- 失败
		else
			sLog = string.format(tFoxRidingAct_Log["UpCoatFail"],nItemId,nInputNum,nCoatId)
			sText = string.format(tFoxRidingAct_Text["UpCoatFail"],sItemName)
		end
		
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(sText)
		
	--灵丹数量不够
	else
		local sAlchemyLev = tFoxRidingAct_Text["Number"][nAlchemyLev]
		tItem[3302316]["Text121"] = string.format(tFoxRidingAct_Text[3302316]["Text121"],sAlchemyLev)
		LinkItemGossipFunc_New(3302316,"1-2")
		return
	end
end


--------------------------------------------
-- 洗赠道具使用
function FoxRidingAct_WashBund(nItemId,sItemName)
	-- 活动时间外给气力
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			local tTemp = CommonFunc_Copy(tFoxRidingAct_WashDel)
			tTemp["RewardStrengthValue"]["Value"] = tTemp["RewardStrengthValue"]["Value"] * nItemNum
			
			if RewardTemplate_UseItem(tTemp) then
				local sText = string.format(tFoxRidingAct_Text["DelItem"][nItemId],tTemp["RewardStrengthValue"]["Value"])
				User_TalkChannel2005(sText)
			end
		end
		return
	end

	-- 对白处理
	local nCoatId_3 = tFoxRidingAct_ItemId["Itemtype"]["Coat"][3]
	local nCoatId_4 = tFoxRidingAct_ItemId["Itemtype"]["Coat"][4]
	local sCoatName_3 = Get_ItemtypeName(nCoatId_3)
	local sCoatName_4 = Get_ItemtypeName(nCoatId_4)
	local nNeedNun_3 = tFoxRidingAct_WashNeedNun[nCoatId_3]
	local nNeedNun_4 = tFoxRidingAct_WashNeedNun[nCoatId_4]

	local sText111 = string.format(tFoxRidingAct_Text[nItemId]["Text111"],sCoatName_3,nNeedNun_3,sItemName)
	local sText112 = string.format(tFoxRidingAct_Text[nItemId]["Text112"],sCoatName_4,nNeedNun_4,sItemName)
	tItem[nItemId]["Text111"] = sText111
	tItem[nItemId]["Text112"] = sText112

	-- 选项处理
	tItem[nItemId]["tOption1-1"] = {}
	
	-- 洗赠外套选项
	for i = 1, 2 do
		local nCoatNo = i + 2
		local nCoatId = tFoxRidingAct_ItemId["Itemtype"]["Coat"][nCoatNo]
		-- 有外套且--非时效的
		if Item_ChkMulItem(nCoatId,nCoatId,1,2,0,0,0) then
			local sCoatName = Get_ItemtypeName(nCoatId)
			table.insert(tItem[nItemId]["tOption1-1"],tonumber("11".. i))
			tItem[nItemId]["Option11".. i] = string.format(tFoxRidingAct_Text[nItemId]["Option111"],sCoatName)
			tItem[nItemId]["OptionFunc11".. i] = string.format("FoxRidingAct_DoWash</N>%d</N>%d</N>%d",nItemId,nCoatNo,nCoatId)
		end
	end

	-- 没有外套
	if tItem[nItemId]["tOption1-1"][1] == nil then
		table.insert(tItem[nItemId]["tOption1-1"],113)
	else
		table.insert(tItem[nItemId]["tOption1-1"],114)
	end

	-- 出对白
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 开始洗赠
function FoxRidingAct_DoWash(nItemId,nCoat,nCoatId)
	-- 是否有外套（赠）--非时效的
	if not Item_ChkMulItem(nCoatId,nCoatId,1,2,0,0,0) then
		LinkItemGossipFunc_New(nItemId,"1-2")
		return
	end
	
	local nNeedNun = tFoxRidingAct_WashNeedNun[nCoatId]
	
	-- 道具不足
	if not Item_ChkMulItem(nItemId,nItemId,nNeedNun) then
		LinkItemGossipFunc_New(nItemId,"1-3")
		return
	end
	
	-- 给新外套
	if RewardTemplate_UseItem(tFoxRidingAct_WashItem[nCoatId]) then
		User_TalkChannel2005(tFoxRidingAct_Text["DoWash"][nCoat])
		User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["OpenPag"])
	end
end

--------------------------------------------
-- 九尾天狐坐骑外套碎片
function FoxRidingAct_CoatPiece(nItemId,sItemName)
	-- 数量不够
	local nItemNum = tFoxRidingAct_Piece2Cost[nItemId]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		local sText = string.format(tFoxRidingAct_Text["NoCoatPiece"],nItemNum)
		User_TalkChannel2005(sText)
		return
	end
	
	-- 空间不足
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tFoxRidingAct_Text["NoSpace"][nItemId])
		return
	end
	
	-- 给（赠）外套
	if RewardTemplate_UseItem(tFoxRidingAct_Piece2Cost[nItemId]) then
		local sCoatName = Get_ItemtypeName(tFoxRidingAct_Piece2Cost[nItemId]["RewardItem"][1]["Id"])
		local sTalk = string.format(tFoxRidingAct_Text["Piece2Coat"],nItemNum,sCoatName)
		User_TalkChannel2005(sTalk)
		User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["OpenPag"])
	end
end


--------------------------------------------
-- 狐妖装【魅彩版】碎片
function FoxRidingAct_CoatGroup(nItemId,nItemNum)
	-- 空间不足
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tFoxRidingAct_Text["NoSpace"][nItemId])
		return
	end

	-- 数量够删除
	if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
		local sTalkText = ""
		
		-- 直接合成
		if nItemNum >= tFoxRidingAct_Cont["CoatGroup"] then
			if RewardTemplate_UseItem(tFoxRidingAct_Piece2Cost[nItemId]) then
				local sTalkText = tFoxRidingAct_Text[nItemId]["Success"][nItemNum]
				User_TalkChannel2005(sTalkText)
				User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["OpenPag"])
			end
		-- 几率合成
		else
			local flat,tItem_1 = Probabil_RandomAward(tFoxRidingAct_GroupPorb,1)
			local fGroup = tItem_1[1]["tAward"][1]["Item_1"]
			
			-- 成功
			if fGroup then
				if RewardTemplate_UseItem(tFoxRidingAct_Piece2Cost[nItemId]) then
					local sTalkText = tFoxRidingAct_Text[nItemId]["Success"][nItemNum]
					User_TalkChannel2005(sTalkText)
					User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["OpenPag"])
				end
			-- 失败
			else
				LinkItemGossipFunc_New(nItemId,"2-1")
				local sLog = string.format(tFoxRidingAct_Log["GroupFail"],nItemId)
				Sys_SaveActionFestivalLog(sLog)
			end
		end
	-- 数量不够
	else
		local sText = tFoxRidingAct_Text[nItemId]["NoCoatPiece"][nItemNum]
		User_TalkChannel2005(sText)
		Sys_MsgBox(sText)
		return
	end
end

--------------------------------------------
-- 幽游狐耳交易包（区分男女）
function FoxRidingAct_CatEarHair(nItemId)
	-- 没有礼包
	if not Item_ChkItem(nItemId) then 
		LinkItemGossipFunc_New(nItemId,"1-2")
		return
	end
	
	local nSex = Get_UserSex()
	if RewardTemplate_UseItem(tFoxRidingAct_CoatPag[nItemId][nSex]) then
		User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["OpenPag"])
	end
end


--------------------------------------------
-- 内丹材料包
function FoxRidingAct_NeiDanPag(nItemId)

	-- 时间判断
	if not FoxRidingAct_IsDelItem(nItemId,"NeiDanPag") then
		return
	end
	
	-- 空间不足
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tFoxRidingAct_Text["NoSpace"]["DatumPag"])
		return
	end
	
	-- 随机获得的材料ID
	local flat,tItem_1 = Probabil_RandomAward(tFoxRidingAct_PagPorb[1],1)
	local nNewItem = tItem_1[1]["tAward"][1]["Item_1"]

	-- 重置给材料配置
	local tTemp = CommonFunc_Copy(tFoxRidingAct_ItemPag[1])
	tTemp["DeleteItem"][1]["Id"] = nItemId
	tTemp["RewardItem"][1]["Id"] = nNewItem
	tTemp["RewardItem"][1]["Attr"] = string.format("0 %d",tFoxRidingAct_ItemPag["Num"][nItemId])
	
	-- 给材料
	if RewardTemplate_UseItem(tTemp) then
		User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["OpenPag"])
	end
end


--------------------------------------------



-- 翻牌器使用（免费）
function FoxRidingAct_OpenFree(nItemId)
	-- 时间判断
	if not FoxRidingAct_IsDelItem(nItemId) then
		return
	end

	-- 背包空间判断
	if not User_CheckLeftSpace(tFoxRidingAct_FreeOpen[nItemId]["NeedSpace"]) then
		Sys_MsgBox(tFoxRidingAct_Text[nItemId]["NoSpace"])
		return
	end
	
	-- 给随机奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Random(tFoxRidingAct_FreeOpen,nItemId)
		User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["OpenNewItem"])
	end
end


-- 翻牌器使用(3302554)
function FoxRidingAct_OpenReward(nItemId)
	-- 时间判断
	if not FoxRidingAct_IsDelItem(nItemId) then
		return
	end

	-- 是否翻牌物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_OpenRewardInterface(tFoxRidingAct_Cont["OpenReward"])
		
		-- log + 光效
		local sLog = string.format(tFoxRidingAct_Log["OpenReward"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
		User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["OpenReward"])
	end
end

--------------------------------------------
-- 重新翻牌
function FoxRidingAct_AgainOpenReward(nUserId,nType)

	local nItemId = tFoxRidingAct_ItemId["Itemtype"][nType]
	-- 时间判断
	if not FoxRidingAct_IsDelItem(nItemId,nItemId,nUserId) then
		return
	end

	if nType ~= tFoxRidingAct_Cont["OpenReward"] then
		 return
	end
	
	-- 是否翻牌物品
	if Item_ChkItem(nItemId,1,0,nUserId) and Item_DelItem(nItemId,1,0,nUserId) then
		User_OpenRewardInterface(nType,nUserId)
	end
end

--------------------------------------------
-- 时效外套礼包
function FoxRidingAct_CoatPag(nItemId)
	-- 时间判断
	if not FoxRidingAct_IsDelItem(nItemId) then
		return
	end

	-- 给材料
	if RewardTemplate_UseItem(tFoxRidingAct_CoatPag[nItemId]) then
		User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["OpenPag"])
	end
end


--------------------------------------------怪物触发逻辑----------------------------------------
-- 小怪怪物触发
function FoxRidingAct_SmallMonster(nMonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		return
	end

	-- 空间不足
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tFoxRidingAct_Text["NoSpace"][nMonsterId])
		return
	end
	
	-- 确定掉落几率区间
	local nEvent_6 = tFoxRidingAct_Stc[6]["EventType"]
	local nType_6 = tFoxRidingAct_Stc[6]["DataType"]
	
	-- 隔天清掩码
	if not Task_ChkStcValue(nEvent_6,nType_6,"==",0) then
		if Task_StcInterval(nEvent_6,nType_6,1,4) then
			Task_SetStatistic(nEvent_6,nType_6,0,1)
			Task_SetStcTimestamp(nEvent_6,nType_6,0)
		end
	end
	
	local nPhase_1 = tFoxRidingAct_Stc[6]["Phase_1"]
	local nPhase_2 = tFoxRidingAct_Stc[6]["Phase_2"]
	
	-- 击杀数量
	Task_AddStatistic(nEvent_6,nType_6,1,0)
	Task_SetStcTimestamp(nEvent_6,nType_6,0)
	
	-- 确认几率区间
	local nPhase = 0
	if Task_ChkStcValue(nEvent_6,nType_6,"<=",nPhase_1) then 
		nPhase = 1
	elseif Task_ChkStcValue(nEvent_6,nType_6,"<=",nPhase_2) then 
		nPhase = 2
	else
		nPhase = 3
	end
	
	-- 走几率
	local flat,tItem_1 = Probabil_RandomAward(tFoxRidingAct_MonsterPorb,nPhase)
	local fDrop = tItem_1[1]["tAward"][1]["Item_1"]
	
	if fDrop then
		-- 给灵玉
		if RewardTemplate_UseItem(tFoxRidingAct_MonsterDrop) then
			User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["MontDrop"])
		end
	end
end

-- 中怪掉落
function FoxRidingAct_MidMonster(nMonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		return
	end
	
	-- 空间不足
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tFoxRidingAct_Text["NoSpace"][nMonsterId])
		return
	end
	
	-- 给灵玉
	if RewardTemplate_UseItem(tFoxRidingAct_MonsterDrop) then
		User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["MontDrop"])
	end
end




--------------------------------------------NPC模版----------------------------------------
-- 20359	青丘狐仙
tNpcFace[5291] = 112
tNpcGossip[20359] = tNpcGossip[20359] or DefaultNpc:new{}
tNpcGossip[20359]["OptionHidden"] = 1
tNpcGossip[20359]["DialogueText"] = tFoxRidingAct_Text[20359]
-- 活动前
tNpcGossip[20359]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[20359]["tOption1-1"] = {111}
tNpcGossip[20359]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tFoxRidingAct_Cont["BefTime"])
end
-- 活动后
tNpcGossip[20359]["Text1-2"] = {121,122}
tNpcGossip[20359]["tOption1-2"] = {121,122}
tNpcGossip[20359]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"])
end
-- 活动中（等级不足）
tNpcGossip[20359]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[20359]["tOption1-3"] = {131}
tNpcGossip[20359]["ChkFunc1-3"] = function()
	return not User_JudgeLevelAndMetempsychosis(tFoxRidingAct_Cont["Level"],tFoxRidingAct_Cont["Metempsychosis"])
end
-- 活动中（满足条件）
tNpcGossip[20359]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[20359]["tOption1-4"] = {141,142,143,144}
tNpcGossip[20359]["OptionFunc141"] = "FoxRidingAct_ChgMap</N>1"
tNpcGossip[20359]["OptionFunc142"] = "FoxRidingAct_OpenShop</N>20359"
tNpcGossip[20359]["OptionFunc143"] = "FoxRidingAct_OpenWeb</N>20359"

-- tNpcGossip[20359]["OptionPoint143"] = "2-1"
-- 规则说明
tNpcGossip[20359]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110}
tNpcGossip[20359]["tOption2-1"] = {211}
tNpcGossip[20359]["OptionFunc211"] = "FoxRidingAct_FindNpc</N>20359"


-- 20360	九转乾坤炼丹炉
tNpcFace[4664] = 407
tNpcGossip[20360] = tNpcGossip[20360] or DefaultNpc:new{}
tNpcGossip[20360]["OptionHidden"] = 1
tNpcGossip[20360]["DialogueText"] = tFoxRidingAct_Text[20360]
-- 活动前
tNpcGossip[20360]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20360]["tOption1-1"] = {111}
-- 活动后
tNpcGossip[20360]["Text1-2"] = {121,122}
tNpcGossip[20360]["tOption1-2"] = {121}
-- 活动中（等级不足）
tNpcGossip[20360]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[20360]["tOption1-3"] = {131}
-- 活动中（三个内丹炼制蕴灵丹）
tNpcGossip[20360]["Text1-4"] = {141,142,143,144,145,146,147,148,149,1410}
tNpcGossip[20360]["tOption1-4"] = {141,142,143,1411,1412,1413,1414}
tNpcGossip[20360]["OptionFunc1411"] = "FoxRidingAct_DoAlchemy</N>20360"
tNpcGossip[20360]["OptionPoint1412"] = "2-2"
tNpcGossip[20360]["OptionPoint1413"] = "2-3"
-- tNpcGossip[20360]["OptionChkFunc1411"] = function ()
	-- 是否显示“开始炼丹”选项
	-- for i,v in ipairs(tFoxRidingAct_Stc["AlchemyNum"]) do
		-- local nEvent = tFoxRidingAct_Stc[v]["EventType"]
		-- local nType = tFoxRidingAct_Stc[v]["DataType"]
		-- if Task_ChkStcValue(nEvent,nType,"==",0) then
			-- return false
		-- end
	-- end
	
	-- return true
-- end
-- 活动中（炼制蕴灵丹失败，药渣继续炼）
tNpcGossip[20360]["Text1-5"] = {151,1530,152,1531,153,154,155,156,157,158}
tNpcGossip[20360]["tOption1-5"] = {151,152,153,1510,154,155,156,157,158}
tNpcGossip[20360]["OptionPoint154"] = "2-2"
tNpcGossip[20360]["OptionFunc155"] = "FoxRidingAct_IsGetYunDan</N>20360"
tNpcGossip[20360]["OptionPoint156"] = "2-5"
tNpcGossip[20360]["OptionPoint157"] = "2-3"
tNpcGossip[20360]["OptionPoint1510"] = "2-3"


-- 上交 -- 没有对应内丹
tNpcGossip[20360]["Text1-6"] = {161,162,163}
tNpcGossip[20360]["tOption1-6"] = {161,162}
tNpcGossip[20360]["OptionFunc161"] = ""
tNpcGossip[20360]["OptionFunc162"] = "FoxRidingAct_FindNpc</N>20360"
-- 上交 -- 花费天石（二次确认）
tNpcGossip[20360]["Text1-7"] = {171}
tNpcGossip[20360]["tOption1-7"] = {171,172,173}
-- 上交 -- 失败天石不足
tNpcGossip[20360]["Text1-8"] = {181}
tNpcGossip[20360]["tOption1-8"] = {181}

-- 精炼 -- 没有对应内丹
tNpcGossip[20360]["Text2-1"] = {211,212,213}
tNpcGossip[20360]["tOption2-1"] = {211,212}
tNpcGossip[20360]["OptionFunc211"] = ""
tNpcGossip[20360]["OptionFunc212"] = "FoxRidingAct_FindNpc</N>20360"
-- 精炼 -- 花费天石（二次确认）
tNpcGossip[20360]["Text3-1"] = {311}
tNpcGossip[20360]["tOption3-1"] = {311,312,313}

-- 如何获得炼丹材料
tNpcGossip[20360]["Text2-2"] = {221,222}
tNpcGossip[20360]["tOption2-2"] = {221,222}
tNpcGossip[20360]["OptionFunc221"] = "FoxRidingAct_FindNpc</N>20360"
-- 炼丹法门
tNpcGossip[20360]["Text2-3"] = {231,232,233,234,235,236,237,238,239}
tNpcGossip[20360]["tOption2-3"] = {231}
tNpcGossip[20360]["OptionPoint231"] = "2-2"
-- 取出青丘灵丹(二次确认)
tNpcGossip[20360]["Text2-4"] = {241,242,243,244,245,246,247,248}
tNpcGossip[20360]["tOption2-4"] = {241,242}
tNpcGossip[20360]["OptionFunc241"] = "FoxRidingAct_GetYunDan</N>20360"
-- 清空丹炉重新来过（二次确认）
tNpcGossip[20360]["Text2-5"] = {251,252}
tNpcGossip[20360]["tOption2-5"] = {251,252}
tNpcGossip[20360]["OptionFunc251"] = "FoxRidingAct_ClearStove</N>20360"
-- 失败，精炼失败
tNpcGossip[20360]["Text2-6"] = {261,262}
tNpcGossip[20360]["tOption2-6"] = {261}
tNpcGossip[20360]["OptionFunc261"] = "FoxRidingAct_StoveNpcMain</N>20360"
-- 成功，青丘灵丹进阶
tNpcGossip[20360]["Text2-7"] = {271,272}
tNpcGossip[20360]["tOption2-7"] = {271}
tNpcGossip[20360]["OptionFunc271"] = "FoxRidingAct_StoveNpcMain</N>20360"
-- 空间不足
tNpcGossip[20360]["Text2-8"] = {281}
tNpcGossip[20360]["tOption2-8"] = {281}

-- 秘法升阶 -- 材料足够对白
tNpcGossip[20360]["Text4-1"] = {411,412,413,414,415}
tNpcGossip[20360]["tOption4-1"] = {411,412}
tNpcGossip[20360]["OptionFunc412"] = "FoxRidingAct_StoveNpcMain</N>20360"
-- 材料不足
tNpcGossip[20360]["Text4-2"] = {421,422}
tNpcGossip[20360]["tOption4-2"] = {421}
tNpcGossip[20360]["OptionFunc421"] = "FoxRidingAct_StoveNpcMain</N>20360"
-- 升级成功
tNpcGossip[20360]["Text4-3"] = {431}
tNpcGossip[20360]["tOption4-3"] = {431}
tNpcGossip[20360]["OptionFunc431"] = "FoxRidingAct_StoveNpcMain</N>20360"


-- 秘法升阶 -- 材料不足的对白
tNpcGossip[20360]["Text5-1"] = {511,512,513,514,515,516}
tNpcGossip[20360]["tOption5-1"] = {511,512,513}
tNpcGossip[20360]["OptionPoint512"] = "2-2"
tNpcGossip[20360]["OptionFunc513"] = "FoxRidingAct_StoveNpcMain</N>20360"
-- 秘法升级 -- 用天石（二次确认）
tNpcGossip[20360]["Text5-2"] = {521,522}
tNpcGossip[20360]["tOption5-2"] = {521,522}
tNpcGossip[20360]["OptionFunc522"] = "FoxRidingAct_StoveNpcMain</N>20360"
-- 天石不足
tNpcGossip[20360]["Text5-3"] = {531}
tNpcGossip[20360]["tOption5-3"] = {531}
tNpcGossip[20360]["OptionFunc531"] = "FoxRidingAct_StoveNpcMain</N>20360"
-- 升级成功
tNpcGossip[20360]["Text5-4"] = {541}
tNpcGossip[20360]["tOption5-4"] = {541}
tNpcGossip[20360]["OptionFunc541"] = "FoxRidingAct_StoveNpcMain</N>20360"




--------------------------------------------
-- 20386	地图内传送使
tNpcFace[4663] = 74
tNpcGossip[20386] = tNpcGossip[20386] or DefaultNpc:new{}
tNpcGossip[20386]["OptionHidden"] = 1
tNpcGossip[20386]["DialogueText"] = tFoxRidingAct_Text[20386]
-- 活动前
tNpcGossip[20386]["Text1-1"] = {111,112}
tNpcGossip[20386]["tOption1-1"] = {111,112}
tNpcGossip[20386]["OptionFunc111"] = "FoxRidingAct_ChgMap</N>2"



--------------------------------------------物品模版----------------------------------------
-- 3302311	狐妖灵玉
tItem[3302311] = tItem[3302311] or {}
tItem[3302313] = tItem[3302311] or {}
tItem[3302314] = tItem[3302311] or {}
tItem[3302315] = tItem[3302311] or {}
tItem[3302311]["Function"] = function(nItemId, sItemName)
	-- 活动时间
	if not FoxRidingAct_IsDelItem(nItemId) then
		return
	end
	
	-- 时间内寻路
	FoxRidingAct_FindNpc(tFoxRidingAct_ItemFind[nItemId])
end

--------------------------------------------
-- 青丘馈赠（免费直接使用）
tItem[3302312] = tItem[3302312] or {}
tItem[3302312]["Function"] = function(nItemId, sItemName)
	FoxRidingAct_OpenFree(nItemId)
end


----------------------
-- 青丘馈赠（付费翻牌器）
tItem[3302554] = tItem[3302554] or {}
tItem[3302554]["Function"] = function(nItemId, sItemName)
	FoxRidingAct_OpenReward(nItemId)
end


--------------------------------------------
-- 青丘灵丹
tItemFace[3302316] = 402
tItem[3302316] = tItem[3302316] or {}
tItem[3302317] = tItem[3302316] or {}
tItem[3302318] = tItem[3302316] or {}
tItem[3302319] = tItem[3302316] or {}
tItem[3302320] = tItem[3302316] or {}
tItem[3302321] = tItem[3302316] or {}
tItem[3302322] = tItem[3302316] or {}
tItem[3302323] = tItem[3302316] or {}
tItem[3302324] = tItem[3302316] or {}
tItem[3302316]["DialogueText"] =tFoxRidingAct_Text[3302316]
tItem[3302316]["Function"] = function(nItemId, sItemName)
	FoxRidingAct_AlchemyItem(nItemId)
end
-- 主对白
tItem[3302316]["Text1-1"] = {111,112,113,114,115,116}
tItem[3302316]["tOption1-1"] = {111,112,113,114,115,116}
-- 失败没有灵丹
tItem[3302316]["Text1-2"] = {121}
tItem[3302316]["tOption1-2"] = {121}
-- 失败，背包中没有这件外套
tItem[3302316]["Text1-3"] = {131}
tItem[3302316]["tOption1-3"] = {131}
tItem[3302316]["OptionFunc131"] = ""

-- 失败没有灵丹
tItem[3302316]["Text1-4"] = {141}
tItem[3302316]["tOption1-4"] = {141}

--使用数量过多
tItem[3302316]["Text2-2"] = {221}
tItem[3302316]["tOption2-2"] = {221}
tItem[3302316]["OptionFunc221"] = ""

--输入了非法字符
tItem[3302316]["Text2-3"] = {231}
tItem[3302316]["tOption2-3"] = {231}
tItem[3302316]["OptionFunc231"] = ""

-- 二次确认对白
tItem[3302316]["Text3-1"] = {311,312}
tItem[3302316]["tOption3-1"] = {311,312}
tItem[3302316]["OptionFunc311"] = ""
tItem[3302316]["OptionFunc312"] = ""



--------------------------------------------
-- 洗赠道具
tItemFace[3302325] = 403
tItem[3302325] = tItem[3302325] or {}
tItem[3302325]["DialogueText"] = tFoxRidingAct_Text[3302325]
tItem[3302325]["Function"] = function(nItemId, sItemName)
	FoxRidingAct_WashBund(nItemId,sItemName)
end
tItem[3302325]["Text1-1"] = {111,112}
tItem[3302325]["tOption1-1"] = {111,112,113,114}
tItem[3302325]["OptionFunc111"] = ""
-- 没有外套（赠）
tItem[3302325]["Text1-2"] = {121}
tItem[3302325]["tOption1-2"] = {121}
-- 失败，洗赠道具数量不足
tItem[3302325]["Text1-3"] = {131}
tItem[3302325]["tOption1-3"] = {131}


--------------------------------------------
-- 九尾天狐坐骑外套碎片
tItem[3302368] = tItem[3302368] or {}
tItem[3302368]["Function"] = function(nItemId, sItemName)
	FoxRidingAct_CoatPiece(nItemId,sItemName)
end

--------------------------------------------
-- 狐妖装【魅彩版】碎片
tItemFace[3302326] = 404
tItem[3302326] = tItem[3302326] or {}
tItem[3302326]["DialogueText"] = tFoxRidingAct_Text[3302326]
tItem[3302326]["Function"] = function(nItemId, sItemName)
	-- 时间判断
	if not Sys_ChkFullTime(tFoxRidingAct_Cont["NowTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			local tTemp = CommonFunc_Copy(tFoxRidingAct_DelGroup)
			tTemp["RewardItem"][1]["Attr"] = string.format(tTemp["RewardItem"][1]["Attr"],nItemNum)
			if RewardTemplate_UseItem(tTemp) then
				local sText = string.format(tFoxRidingAct_Text["DelItem"][nItemId],nItemNum)
				User_TalkChannel2005(sText)
			end
		end
		return
	end
	
	-- 出主对白
	LinkItemGossipFunc_New(nItemId,"1-1")
end
-- 主对白
tItem[3302326]["Text1-1"] = {111,112,113}
tItem[3302326]["tOption1-1"] = {111,112,113}
tItem[3302326]["OptionFunc111"] = "FoxRidingAct_CoatGroup</N>3302326</N>1"
tItem[3302326]["OptionFunc112"] = string.format("FoxRidingAct_CoatGroup</N>3302326</N>%d",tFoxRidingAct_Cont["CoatGroup"])
-- 几率合成失败
tItem[3302326]["Text2-1"] = {211}
tItem[3302326]["tOption2-1"] = {211}
tItem[3302326]["OptionPoint211"] = "1-1"


--------------------------------------------
-- 内丹材料包
tItem[3302423] = tItem[3302423] or {}
tItem[3302424] = tItem[3302423] or {}
tItem[3302425] = tItem[3302423] or {}
tItem[3302426] = tItem[3302423] or {}
tItem[3302427] = tItem[3302423] or {}
tItem[3302428] = tItem[3302423] or {}
tItem[3302429] = tItem[3302423] or {}
tItem[3302430] = tItem[3302423] or {}
tItem[3302431] = tItem[3302423] or {}
tItem[3302432] = tItem[3302423] or {}
tItem[3302433] = tItem[3302423] or {}
tItem[3302434] = tItem[3302423] or {}
tItem[3302435] = tItem[3302423] or {}
tItem[3302436] = tItem[3302423] or {}
tItem[3302437] = tItem[3302423] or {}
tItem[3302438] = tItem[3302423] or {}
tItem[3302439] = tItem[3302423] or {}
tItem[3302440] = tItem[3302423] or {}
tItem[3302441] = tItem[3302423] or {}
tItem[3302442] = tItem[3302423] or {}
tItem[3302443] = tItem[3302423] or {}
tItem[3302444] = tItem[3302423] or {}
tItem[3302445] = tItem[3302423] or {}
tItem[3302446] = tItem[3302423] or {}
tItem[3302447] = tItem[3302423] or {}
tItem[3302448] = tItem[3302423] or {}
tItem[3302458] = tItem[3302423] or {}
tItem[3302423]["Function"] = function(nItemId, sItemName)
	FoxRidingAct_NeiDanPag(nItemId,sItemName)
end

--------------------------------------------
-- 时效外套礼包
tItem[3302449] = tItem[3302449] or {}
tItem[3302450] = tItem[3302449] or {}
tItem[3302449]["Function"] = function(nItemId, sItemName)
	FoxRidingAct_CoatPag(nItemId,sItemName)
end

--------------------------------------------
-- 幽游狐耳交易包（区分男女）
tItemFace[3302451] = 406
tItem[3302451] = tItem[3302451] or {}
tItem[3302451]["DialogueText"] = tFoxRidingAct_Text[3302451]
-- 主对白
tItem[3302451]["Text1-1"] = {111}
tItem[3302451]["tOption1-1"] = {111,112}
tItem[3302451]["OptionFunc111"] = "FoxRidingAct_CatEarHair</N>3302451"
-- 没有外套
tItem[3302451]["Text1-2"] = {121}
tItem[3302451]["tOption1-2"] = {121}


--------------------------------------------
-- 有时效的礼包
tItem[3302452] = tItem[3302452] or {}
tItem[3302453] = tItem[3302452] or {}
tItem[3302454] = tItem[3302452] or {}
tItem[3302455] = tItem[3302452] or {}
tItem[3302456] = tItem[3302452] or {}

tItem[3302550] = tItem[3302452] or {}
tItem[3302551] = tItem[3302452] or {}
tItem[3302552] = tItem[3302452] or {}
tItem[3302553] = tItem[3302452] or {}
tItem[3302452]["Function"] = function(nItemId, sItemName)
	-- 时间判断
	if not FoxRidingAct_IsDelItem(nItemId) then
		return
	end
	
	-- 背包空间判断
	if tFoxRidingAct_ItemWard[nItemId]["NeedSpace"] ~= nil then
		if not User_CheckLeftSpace(tFoxRidingAct_ItemWard[nItemId]["NeedSpace"]) then
			User_TalkChannel2005(tFoxRidingAct_Text["NoSpace"][nItemId])
			return
		end
	end
	
	if RewardTemplate_UseItem(tFoxRidingAct_ItemWard[nItemId]) then
		User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["OpenPag"])
	end
end

--------------------------------------------
-- 没时效的礼包
tItem[3302457] = tItem[3302457] or {}
tItem[3302457]["Function"] = function(nItemId, sItemName)
	if RewardTemplate_UseItem(tFoxRidingAct_ItemWard[nItemId]) then
		User_EffectAdd(tFoxRidingAct_Effect["EffectObj"],tFoxRidingAct_Effect["OpenPag"])
	end
end


--------------------------------------------
-- 背包信头像
tItemFace[3302327] = 405

--------------------------------------------
-- 再抽一次配置
tCardsLotteryAgainCost[15] = tCardsLotteryAgainCost[15] or {}
tCardsLotteryAgainCost[15]["tFunction"] = tCardsLotteryAgainCost[15]["tFunction"] or {}
table.insert(tCardsLotteryAgainCost[15]["tFunction"],FoxRidingAct_AgainOpenReward)

--------------------------------------------
-- 怪物触发
-- tMonster[4278] = tMonster[4278] or {}
-- tMonster[4278]["tFunction"] = tMonster[4278]["tFunction"] or {}
-- table.insert(tMonster[4278]["tFunction"],FoxRidingAct_SmallMonster)

-- tMonster[4279] = tMonster[4279] or {}
-- tMonster[4279]["tFunction"] = tMonster[4279]["tFunction"] or {}
-- table.insert(tMonster[4279]["tFunction"],FoxRidingAct_MidMonster)

-- tMonster[4280] = tMonster[4280] or {}
-- tMonster[4280]["tFunction"] = tMonster[4280]["tFunction"] or {}
-- table.insert(tMonster[4280]["tFunction"],FoxRidingAct_MidMonster)
