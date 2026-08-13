------------------------------------------------------------------------------------
--Name:		190131[简体征服][活动脚本]灵珠玩法-NPC部分
--Purpose:	灵珠玩法-NPC部分
--Creator: 	严振飞
--Created:	2019/01/31
------------------------------------------------------------------------------------
--前缀DragonSoulNpc_
--logid:12001285

-- #stc 掩码说明 
-- #stc(189,98) 记录玩家炉子内的灵珠ID
-- #stc(189,99) 记录玩家灵珠重置次数（最多重铸8次，8次后自动取出）


-- 灵珠说明
-- 4200001 1阶灵珠
-- 4200002 2阶灵珠
-- 4200003 3阶灵珠
-- 4200004 4阶灵珠
-- 4200005 5阶灵珠
-- 4200006 6阶灵珠
-- 4200007 7阶灵珠
-- 4200008 8阶灵珠
-- 4200009 9阶灵珠
-- 4200010 10阶灵珠
-- 4200011 11阶灵珠
-- 4200012 12阶灵珠
-- 4200013 13阶灵珠
-- 4200014 14阶灵珠
-- 4200015 15阶灵珠
-- 4200016 16阶灵珠
-- 4200017 17阶灵珠
-- 4200018 18阶灵珠


----------------------------------数据部分配置----------------------------------
local tDragonSoulNpc_Stc = {}
	-- #stc(189,98) 记录玩家炉子内的灵珠ID
	tDragonSoulNpc_Stc[1] = {}
	tDragonSoulNpc_Stc[1]["EventType"] = 189
	tDragonSoulNpc_Stc[1]["DataType"] = 98
	-- #stc(189,99) 记录玩家灵珠重置次数（最多重铸8次，8次后自动取出）
	tDragonSoulNpc_Stc[2] = {}
	tDragonSoulNpc_Stc[2]["EventType"] = 189
	tDragonSoulNpc_Stc[2]["DataType"] = 99
	tDragonSoulNpc_Stc[2]["Times"] = 8
	-- #stc(190,10) 记录玩家选择的灵珠
	tDragonSoulNpc_Stc[3] = {}
	tDragonSoulNpc_Stc[3]["EventType"] = 190
	tDragonSoulNpc_Stc[3]["DataType"] = 10
	
local tDragonSoulNpc_Data = {}
	--副本MapDoc
	tDragonSoulNpc_Data["MapDoc"] = 10428
	tDragonSoulNpc_Data["StartId"] = 4200001
	tDragonSoulNpc_Data["StartSpecialId"] = 4200003
	tDragonSoulNpc_Data["EndId"] = 4200012
	tDragonSoulNpc_Data["RecastEndId"] = 4200010
	tDragonSoulNpc_Data["BroadLev"] = 16 -- 出全服公告等级
	tDragonSoulNpc_Data["DCity"] = {}
	tDragonSoulNpc_Data["DCity"]["Normal"] = 1002
	tDragonSoulNpc_Data["DCity"]["NoGift"] = 10364
	--副本id
	tDragonSoulNpc_Data["Instancetype"] = {}
	tDragonSoulNpc_Data["Instancetype"]["Normal"] = 226
	tDragonSoulNpc_Data["Instancetype"]["NoGift"] = 227
	--寻路坐标
	tDragonSoulNpc_Data["Where"] = {}
	tDragonSoulNpc_Data["Where"]["PosX"] = 49
	tDragonSoulNpc_Data["Where"]["PosY"] = 60
	--传送点
	tDragonSoulNpc_Data["BoundTrans"] = {}
	tDragonSoulNpc_Data["BoundTrans"][1] = {}
	tDragonSoulNpc_Data["BoundTrans"][1]["MapId"] = 1002
	tDragonSoulNpc_Data["BoundTrans"][1]["PosX"] = 350
	tDragonSoulNpc_Data["BoundTrans"][1]["PosY"] = 422
	tDragonSoulNpc_Data["BoundTrans"][2] = {}
	tDragonSoulNpc_Data["BoundTrans"][2]["MapId"] = 10364
	tDragonSoulNpc_Data["BoundTrans"][2]["PosX"] = 313
	tDragonSoulNpc_Data["BoundTrans"][2]["PosY"] = 296
	--动态NPC
	tDragonSoulNpc_Data["RefreshNpc"] = {}
	tDragonSoulNpc_Data["RefreshNpc"]["Sort"] = 1
	tDragonSoulNpc_Data["RefreshNpc"]["Type"] = 2
	tDragonSoulNpc_Data["RefreshNpc"]["LookFace"] = 15370
	tDragonSoulNpc_Data["RefreshNpc"]["Action"] = 94488078
	tDragonSoulNpc_Data["RefreshNpc"]["PosX"] = 54
	tDragonSoulNpc_Data["RefreshNpc"]["PosY"] = 58
	--可以强化重铸的灵珠id范围
	tDragonSoulNpc_Data["Strengthening"] = {4200013,4200013}
	tDragonSoulNpc_Data["StrengtheningGlobal"] = 53577
	--灵珠索引差值
	tDragonSoulNpc_Data["SoulDiff"] = 4200000
	
	--网址
	tDragonSoulNpc_Data["Web"] = "https://co.99.com/guide/event/anima_introduction.shtml"
	
-- 重铸光效
local tDragonSoulNpc_Effect = {}
	tDragonSoulNpc_Effect["Obj"] = "self"
	tDragonSoulNpc_Effect["Effect"] = "glebesword"

-- 灵珠ID
local tDragonSoulNpc_ItemId = {}
	-- 灵珠等级对应ID
	-- {灵珠ID, 是否可投入炉子, 是否激情服特有的}
	tDragonSoulNpc_ItemId[1]  = {4200001 , 1} -- 1阶灵珠
	tDragonSoulNpc_ItemId[2]  = {4200002 , 1} -- 2阶灵珠
	tDragonSoulNpc_ItemId[3]  = {4200003 , 1} -- 3阶灵珠
	tDragonSoulNpc_ItemId[4]  = {4200004 , 1} -- 4阶灵珠
	tDragonSoulNpc_ItemId[5]  = {4200005 , 1} -- 5阶灵珠
	tDragonSoulNpc_ItemId[6]  = {4200006 , 1} -- 6阶灵珠
	tDragonSoulNpc_ItemId[7]  = {4200007 , 1} -- 7阶灵珠
	tDragonSoulNpc_ItemId[8]  = {4200008 , 1} -- 8阶灵珠
	tDragonSoulNpc_ItemId[9]  = {4200009 , 1} -- 9阶灵珠
	tDragonSoulNpc_ItemId[10] = {4200010 , 1} -- 10阶灵珠
	tDragonSoulNpc_ItemId[11] = {4200011 ,1} -- 11阶灵珠
	tDragonSoulNpc_ItemId[12] = {4200012, 1} -- 12阶灵珠
	tDragonSoulNpc_ItemId[13] = {4200013, 1, 1} -- 13阶灵珠
	tDragonSoulNpc_ItemId[14] = {4200014} -- 14阶灵珠
	tDragonSoulNpc_ItemId[15] = {4200015} -- 15阶灵珠
	tDragonSoulNpc_ItemId[16] = {4200016} -- 16阶灵珠
	tDragonSoulNpc_ItemId[17] = {4200017} -- 17阶灵珠
	tDragonSoulNpc_ItemId[18] = {4200018} -- 18阶灵珠

-- 邮件数据
local tDragonSoulNpc_Mail = {}
	tDragonSoulNpc_Mail[4200001] = 571091
	tDragonSoulNpc_Mail[4200002] = 571092
	tDragonSoulNpc_Mail[4200003] = 571093
	tDragonSoulNpc_Mail[4200004] = 571094
	tDragonSoulNpc_Mail[4200005] = 571095
	tDragonSoulNpc_Mail[4200006] = 571096
	tDragonSoulNpc_Mail[4200007] = 571097
	tDragonSoulNpc_Mail[4200008] = 571098
	tDragonSoulNpc_Mail[4200009] = 571099
	tDragonSoulNpc_Mail[4200010] = 571100
	tDragonSoulNpc_Mail[4200011] = 571101
	tDragonSoulNpc_Mail[4200012] = 571102
	tDragonSoulNpc_Mail[4200013] = 571103
	tDragonSoulNpc_Mail[4200014] = 571104
	tDragonSoulNpc_Mail[4200015] = 571105
	tDragonSoulNpc_Mail[4200016] = 571106
	tDragonSoulNpc_Mail[4200017] = 571107
	tDragonSoulNpc_Mail[4200018] = 571108
	-- 保存时间
	tDragonSoulNpc_Mail["ExistDay"] = 30
	
	

-- 重铸概率
local tDragonSoulNpc_Reward = {}
	--=========[1阶灵珠,4200001]=========
	tDragonSoulNpc_Reward[4200001] = {}
	tDragonSoulNpc_Reward[4200001]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200001]["LogId"] = 12001285
	-- 灵珠爆掉 - 53.90%
	tDragonSoulNpc_Reward[4200001][1] = {}
	tDragonSoulNpc_Reward[4200001][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200001][1]["ItemChance"] = 5390
	tDragonSoulNpc_Reward[4200001][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200001][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200001][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200001][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200001][1]["RewardExpTime"]["Value"] = 5
	-- 变成2阶灵珠 - 45.10%
	tDragonSoulNpc_Reward[4200001][2] = {}
	tDragonSoulNpc_Reward[4200001][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200001][2]["ItemChance"] = 4510
	tDragonSoulNpc_Reward[4200001][2]["Item_1"] = 4200002
	tDragonSoulNpc_Reward[4200001][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200001][2]["RewardEffect"]["Effect"] = "task062"
	-- 变成4阶灵珠 - 1.00%
	tDragonSoulNpc_Reward[4200001][3] = {}
	tDragonSoulNpc_Reward[4200001][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200001][3]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200001][3]["Item_1"] = 4200004
	tDragonSoulNpc_Reward[4200001][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200001][3]["RewardEffect"]["Effect"] = "task062"


	--=========[2阶灵珠,4200002]=========
	tDragonSoulNpc_Reward[4200002] = {}
	tDragonSoulNpc_Reward[4200002]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200002]["LogId"] = 12001285
	-- 灵珠爆掉 - 48.90%
	tDragonSoulNpc_Reward[4200002][1] = {}
	tDragonSoulNpc_Reward[4200002][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200002][1]["ItemChance"] = 4890
	tDragonSoulNpc_Reward[4200002][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200002][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200002][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200002][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200002][1]["RewardExpTime"]["Value"] = 10
	-- 保阶并额外获得1阶灵珠 - 20.10%
	tDragonSoulNpc_Reward[4200002][2] = {}
	tDragonSoulNpc_Reward[4200002][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200002][2]["ItemChance"] = 2010
	tDragonSoulNpc_Reward[4200002][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200002][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200002][2]["RewardItem"][1]["Id"] = 4200001 -- 【库】焚天·玄火(1阶)[属性:8]【表格】保阶并额外获得1阶灵珠
	tDragonSoulNpc_Reward[4200002][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200002][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200002][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200002][2]["RewardEffect"]["Effect"] = "task062"
	-- 变成3阶灵珠 - 30.00%
	tDragonSoulNpc_Reward[4200002][3] = {}
	tDragonSoulNpc_Reward[4200002][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200002][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200002][3]["Item_1"] = 4200003
	tDragonSoulNpc_Reward[4200002][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200002][3]["RewardEffect"]["Effect"] = "task062"
	-- 变成5阶灵珠 - 1.00%
	tDragonSoulNpc_Reward[4200002][4] = {}
	tDragonSoulNpc_Reward[4200002][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200002][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200002][4]["Item_1"] = 4200005
	tDragonSoulNpc_Reward[4200002][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200002][4]["RewardEffect"]["Effect"] = "task062"


	--=========[3阶灵珠,4200003]=========
	tDragonSoulNpc_Reward[4200003] = {}
	tDragonSoulNpc_Reward[4200003]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200003]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200003][1] = {}
	tDragonSoulNpc_Reward[4200003][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200003][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200003][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200003][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200003][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200003][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200003][1]["RewardExpTime"]["Value"] = 20
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200003][2] = {}
	tDragonSoulNpc_Reward[4200003][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200003][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200003][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200003][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200003][2]["RewardItem"][1]["Id"] = 4200001 -- 【库】焚天·玄火(1阶)[属性:8]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200003][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200003][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200003][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200003][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200003][3] = {}
	tDragonSoulNpc_Reward[4200003][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200003][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200003][3]["Item_1"] = 4200004
	tDragonSoulNpc_Reward[4200003][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200003][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200003][4] = {}
	tDragonSoulNpc_Reward[4200003][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200003][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200003][4]["Item_1"] = 4200006
	tDragonSoulNpc_Reward[4200003][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200003][4]["RewardEffect"]["Effect"] = "task062"


	--=========[4阶灵珠,4200004]=========
	tDragonSoulNpc_Reward[4200004] = {}
	tDragonSoulNpc_Reward[4200004]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200004]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200004][1] = {}
	tDragonSoulNpc_Reward[4200004][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200004][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200004][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200004][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200004][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200004][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200004][1]["RewardExpTime"]["Value"] = 30
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200004][2] = {}
	tDragonSoulNpc_Reward[4200004][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200004][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200004][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200004][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200004][2]["RewardItem"][1]["Id"] = 4200002 -- 【库】焚天·玄火(2阶)[属性:8]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200004][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200004][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200004][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200004][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200004][3] = {}
	tDragonSoulNpc_Reward[4200004][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200004][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200004][3]["Item_1"] = 4200005
	tDragonSoulNpc_Reward[4200004][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200004][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200004][4] = {}
	tDragonSoulNpc_Reward[4200004][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200004][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200004][4]["Item_1"] = 4200007
	tDragonSoulNpc_Reward[4200004][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200004][4]["RewardEffect"]["Effect"] = "task062"


	--=========[5阶灵珠,4200005]=========
	tDragonSoulNpc_Reward[4200005] = {}
	tDragonSoulNpc_Reward[4200005]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200005]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200005][1] = {}
	tDragonSoulNpc_Reward[4200005][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200005][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200005][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200005][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200005][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200005][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200005][1]["RewardExpTime"]["Value"] = 50
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200005][2] = {}
	tDragonSoulNpc_Reward[4200005][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200005][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200005][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200005][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200005][2]["RewardItem"][1]["Id"] = 4200003 -- 【库】焚天·玄火(3阶)[属性:8]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200005][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200005][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200005][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200005][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200005][3] = {}
	tDragonSoulNpc_Reward[4200005][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200005][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200005][3]["Item_1"] = 4200006
	tDragonSoulNpc_Reward[4200005][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200005][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200005][4] = {}
	tDragonSoulNpc_Reward[4200005][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200005][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200005][4]["Item_1"] = 4200008
	tDragonSoulNpc_Reward[4200005][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200005][4]["RewardEffect"]["Effect"] = "task062"


	--=========[6阶灵珠,4200006]=========
	tDragonSoulNpc_Reward[4200006] = {}
	tDragonSoulNpc_Reward[4200006]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200006]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200006][1] = {}
	tDragonSoulNpc_Reward[4200006][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200006][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200006][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200006][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200006][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200006][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200006][1]["RewardExpTime"]["Value"] = 100
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200006][2] = {}
	tDragonSoulNpc_Reward[4200006][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200006][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200006][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200006][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200006][2]["RewardItem"][1]["Id"] = 4200004 -- 【库】焚天·玄火(4阶)[属性:8]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200006][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200006][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200006][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200006][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200006][3] = {}
	tDragonSoulNpc_Reward[4200006][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200006][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200006][3]["Item_1"] = 4200007
	tDragonSoulNpc_Reward[4200006][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200006][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200006][4] = {}
	tDragonSoulNpc_Reward[4200006][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200006][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200006][4]["Item_1"] = 4200009
	tDragonSoulNpc_Reward[4200006][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200006][4]["RewardEffect"]["Effect"] = "task062"


	--=========[7阶灵珠,4200007]=========
	tDragonSoulNpc_Reward[4200007] = {}
	tDragonSoulNpc_Reward[4200007]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200007]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200007][1] = {}
	tDragonSoulNpc_Reward[4200007][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200007][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200007][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200007][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200007][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200007][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200007][1]["RewardExpTime"]["Value"] = 150
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200007][2] = {}
	tDragonSoulNpc_Reward[4200007][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200007][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200007][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200007][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200007][2]["RewardItem"][1]["Id"] = 4200005 -- 【库】焚天·玄火(5阶)[属性:8]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200007][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200007][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200007][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200007][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200007][3] = {}
	tDragonSoulNpc_Reward[4200007][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200007][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200007][3]["Item_1"] = 4200008
	tDragonSoulNpc_Reward[4200007][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200007][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200007][4] = {}
	tDragonSoulNpc_Reward[4200007][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200007][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200007][4]["Item_1"] = 4200010
	tDragonSoulNpc_Reward[4200007][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200007][4]["RewardEffect"]["Effect"] = "task062"


	--=========[8阶灵珠,4200008]=========
	tDragonSoulNpc_Reward[4200008] = {}
	tDragonSoulNpc_Reward[4200008]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200008]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200008][1] = {}
	tDragonSoulNpc_Reward[4200008][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200008][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200008][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200008][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200008][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200008][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200008][1]["RewardExpTime"]["Value"] = 200
	tDragonSoulNpc_Reward[4200008][1]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200008][1]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200008][1]["RewardItem"][1]["Id"] = 3321211
	tDragonSoulNpc_Reward[4200008][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200008][2] = {}
	tDragonSoulNpc_Reward[4200008][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200008][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200008][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200008][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200008][2]["RewardItem"][1]["Id"] = 4200006 -- 【库】焚天·玄火(6阶)[属性:8]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200008][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200008][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200008][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200008][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200008][3] = {}
	tDragonSoulNpc_Reward[4200008][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200008][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200008][3]["Item_1"] = 4200009
	tDragonSoulNpc_Reward[4200008][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200008][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200008][4] = {}
	tDragonSoulNpc_Reward[4200008][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200008][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200008][4]["Item_1"] = 4200011
	tDragonSoulNpc_Reward[4200008][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200008][4]["RewardEffect"]["Effect"] = "task062"


	--=========[9阶灵珠,4200009]=========
	tDragonSoulNpc_Reward[4200009] = {}
	tDragonSoulNpc_Reward[4200009]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200009]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200009][1] = {}
	tDragonSoulNpc_Reward[4200009][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200009][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200009][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200009][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200009][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200009][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200009][1]["RewardExpTime"]["Value"] = 250
	tDragonSoulNpc_Reward[4200009][1]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200009][1]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200009][1]["RewardItem"][1]["Id"] = 3321211
	tDragonSoulNpc_Reward[4200009][1]["RewardItem"][1]["Attr"] = "0 2"
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200009][2] = {}
	tDragonSoulNpc_Reward[4200009][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200009][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200009][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200009][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200009][2]["RewardItem"][1]["Id"] = 4200007 -- 【库】焚天·玄火(7阶)[属性:8]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200009][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200009][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200009][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200009][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200009][3] = {}
	tDragonSoulNpc_Reward[4200009][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200009][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200009][3]["Item_1"] = 4200010
	tDragonSoulNpc_Reward[4200009][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200009][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200009][4] = {}
	tDragonSoulNpc_Reward[4200009][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200009][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200009][4]["Item_1"] = 4200012
	tDragonSoulNpc_Reward[4200009][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200009][4]["RewardEffect"]["Effect"] = "task062"


	--=========[10灵珠,4200010]=========
	tDragonSoulNpc_Reward[4200010] = {}
	tDragonSoulNpc_Reward[4200010]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200010]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200010][1] = {}
	tDragonSoulNpc_Reward[4200010][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200010][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200010][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200010][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200010][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200010][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200010][1]["RewardExpTime"]["Value"] = 300
	tDragonSoulNpc_Reward[4200010][1]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200010][1]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200010][1]["RewardItem"][1]["Id"] = 3321211
	tDragonSoulNpc_Reward[4200010][1]["RewardItem"][1]["Attr"] = "0 4"
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200010][2] = {}
	tDragonSoulNpc_Reward[4200010][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200010][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200010][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200010][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200010][2]["RewardItem"][1]["Id"] = 4200008 -- 【库】焚天·玄火(8阶)[属性:8]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200010][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200010][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200010][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200010][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200010][3] = {}
	tDragonSoulNpc_Reward[4200010][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200010][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200010][3]["Item_1"] = 4200011
	tDragonSoulNpc_Reward[4200010][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200010][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200010][4] = {}
	tDragonSoulNpc_Reward[4200010][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200010][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200010][4]["Item_1"] = 4200013
	tDragonSoulNpc_Reward[4200010][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200010][4]["RewardEffect"]["Effect"] = "task062"


	--=========[11阶灵珠,4200011]=========
	tDragonSoulNpc_Reward[4200011] = {}
	tDragonSoulNpc_Reward[4200011]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200011]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200011][1] = {}
	tDragonSoulNpc_Reward[4200011][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200011][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200011][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200011][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200011][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200011][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200011][1]["RewardExpTime"]["Value"] = 500
	tDragonSoulNpc_Reward[4200011][1]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200011][1]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200011][1]["RewardItem"][1]["Id"] = 3321211
	tDragonSoulNpc_Reward[4200011][1]["RewardItem"][1]["Attr"] = "0 8"
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200011][2] = {}
	tDragonSoulNpc_Reward[4200011][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200011][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200011][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200011][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200011][2]["RewardItem"][1]["Id"] = 4200009 -- 【库】焚天·玄火(9阶)[属性:8]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200011][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200011][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200011][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200011][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200011][3] = {}
	tDragonSoulNpc_Reward[4200011][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200011][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200011][3]["Item_1"] = 4200012
	tDragonSoulNpc_Reward[4200011][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200011][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200011][4] = {}
	tDragonSoulNpc_Reward[4200011][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200011][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200011][4]["Item_1"] = 4200014
	tDragonSoulNpc_Reward[4200011][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200011][4]["RewardEffect"]["Effect"] = "task062"


	--=========[12阶灵珠,4200012]=========
	tDragonSoulNpc_Reward[4200012] = {}
	tDragonSoulNpc_Reward[4200012]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200012]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200012][1] = {}
	tDragonSoulNpc_Reward[4200012][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200012][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200012][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200012][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200012][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200012][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200012][1]["RewardExpTime"]["Value"] = 800
	tDragonSoulNpc_Reward[4200012][1]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200012][1]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200012][1]["RewardItem"][1]["Id"] = 3321211
	tDragonSoulNpc_Reward[4200012][1]["RewardItem"][1]["Attr"] = "0 16"
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200012][2] = {}
	tDragonSoulNpc_Reward[4200012][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200012][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200012][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200012][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200012][2]["RewardItem"][1]["Id"] = 4200010 -- 【库】焚天·玄火(10阶)[属性:8]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200012][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200012][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200012][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200012][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200012][3] = {}
	tDragonSoulNpc_Reward[4200012][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200012][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200012][3]["Item_1"] = 4200013
	tDragonSoulNpc_Reward[4200012][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200012][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200012][4] = {}
	tDragonSoulNpc_Reward[4200012][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200012][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200012][4]["Item_1"] = 4200015
	tDragonSoulNpc_Reward[4200012][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200012][4]["RewardEffect"]["Effect"] = "task062"


	--=========[13阶灵珠,4200013]=========
	tDragonSoulNpc_Reward[4200013] = {}
	tDragonSoulNpc_Reward[4200013]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200013]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200013][1] = {}
	tDragonSoulNpc_Reward[4200013][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200013][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200013][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200013][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200013][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200013][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200013][1]["RewardExpTime"]["Value"] = 1200
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200013][2] = {}
	tDragonSoulNpc_Reward[4200013][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200013][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200013][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200013][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200013][2]["RewardItem"][1]["Id"] = 4200011 -- 【库】 4200011 【cnzf库里没有该物品】[属性:]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200013][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200013][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200013][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200013][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200013][3] = {}
	tDragonSoulNpc_Reward[4200013][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200013][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200013][3]["Item_1"] = 4200014
	tDragonSoulNpc_Reward[4200013][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200013][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200013][4] = {}
	tDragonSoulNpc_Reward[4200013][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200013][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200013][4]["Item_1"] = 4200016
	tDragonSoulNpc_Reward[4200013][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200013][4]["RewardEffect"]["Effect"] = "task062"


	--=========[14阶灵珠,4200014]=========
	tDragonSoulNpc_Reward[4200014] = {}
	tDragonSoulNpc_Reward[4200014]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200014]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200014][1] = {}
	tDragonSoulNpc_Reward[4200014][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200014][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200014][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200014][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200014][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200014][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200014][1]["RewardExpTime"]["Value"] = 2000
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200014][2] = {}
	tDragonSoulNpc_Reward[4200014][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200014][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200014][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200014][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200014][2]["RewardItem"][1]["Id"] = 4200012 -- 【库】 4200012 【cnzf库里没有该物品】[属性:]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200014][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200014][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200014][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200014][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200014][3] = {}
	tDragonSoulNpc_Reward[4200014][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200014][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200014][3]["Item_1"] = 4200015
	tDragonSoulNpc_Reward[4200014][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200014][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200014][4] = {}
	tDragonSoulNpc_Reward[4200014][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200014][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200014][4]["Item_1"] = 4200017
	tDragonSoulNpc_Reward[4200014][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200014][4]["RewardEffect"]["Effect"] = "task062"


	--=========[15阶灵珠,4200015]=========
	tDragonSoulNpc_Reward[4200015] = {}
	tDragonSoulNpc_Reward[4200015]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200015]["LogId"] = 12001285
	-- 灵珠爆掉 - 44.90%
	tDragonSoulNpc_Reward[4200015][1] = {}
	tDragonSoulNpc_Reward[4200015][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200015][1]["ItemChance"] = 4490
	tDragonSoulNpc_Reward[4200015][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200015][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200015][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200015][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200015][1]["RewardExpTime"]["Value"] = 3000
	-- 保阶并额外获得低2阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200015][2] = {}
	tDragonSoulNpc_Reward[4200015][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200015][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200015][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200015][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200015][2]["RewardItem"][1]["Id"] = 4200013 -- 【库】 4200013 【cnzf库里没有该物品】[属性:]【表格】保阶并额外获得低2阶灵珠
	tDragonSoulNpc_Reward[4200015][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200015][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200015][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200015][2]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+1 - 30.00%
	tDragonSoulNpc_Reward[4200015][3] = {}
	tDragonSoulNpc_Reward[4200015][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200015][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200015][3]["Item_1"] = 4200016
	tDragonSoulNpc_Reward[4200015][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200015][3]["RewardEffect"]["Effect"] = "task062"
	-- 灵珠阶数+3 - 1.00%
	tDragonSoulNpc_Reward[4200015][4] = {}
	tDragonSoulNpc_Reward[4200015][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200015][4]["ItemChance"] = 100
	tDragonSoulNpc_Reward[4200015][4]["Item_1"] = 4200018
	tDragonSoulNpc_Reward[4200015][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200015][4]["RewardEffect"]["Effect"] = "task062"


	--=========[16阶灵珠,4200016]=========
	tDragonSoulNpc_Reward[4200016] = {}
	tDragonSoulNpc_Reward[4200016]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200016]["LogId"] = 12001285
	-- 灵珠爆掉 - 43.90%
	tDragonSoulNpc_Reward[4200016][1] = {}
	tDragonSoulNpc_Reward[4200016][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200016][1]["ItemChance"] = 4390
	tDragonSoulNpc_Reward[4200016][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200016][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200016][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200016][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200016][1]["RewardExpTime"]["Value"] = 5000
	-- 保阶并额外获得14阶灵珠 - 24.10%
	tDragonSoulNpc_Reward[4200016][2] = {}
	tDragonSoulNpc_Reward[4200016][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200016][2]["ItemChance"] = 2410
	tDragonSoulNpc_Reward[4200016][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200016][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200016][2]["RewardItem"][1]["Id"] = 4200014 -- 【库】 4200014 【cnzf库里没有该物品】[属性:]【表格】保阶并额外获得14阶灵珠
	tDragonSoulNpc_Reward[4200016][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200016][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200016][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200016][2]["RewardEffect"]["Effect"] = "task062"
	-- 变成17阶灵珠 - 30.00%
	tDragonSoulNpc_Reward[4200016][3] = {}
	tDragonSoulNpc_Reward[4200016][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200016][3]["ItemChance"] = 3000
	tDragonSoulNpc_Reward[4200016][3]["Item_1"] = 4200017
	tDragonSoulNpc_Reward[4200016][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200016][3]["RewardEffect"]["Effect"] = "task062"
	-- 变成18阶灵珠 - 2.00%
	tDragonSoulNpc_Reward[4200016][4] = {}
	tDragonSoulNpc_Reward[4200016][4]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200016][4]["ItemChance"] = 200
	tDragonSoulNpc_Reward[4200016][4]["Item_1"] = 4200018
	tDragonSoulNpc_Reward[4200016][4]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200016][4]["RewardEffect"]["Effect"] = "task062"


	--=========[17阶灵珠,4200017]=========
	tDragonSoulNpc_Reward[4200017] = {}
	tDragonSoulNpc_Reward[4200017]["ItemChanceSum"] = 10000
	tDragonSoulNpc_Reward[4200017]["LogId"] = 12001285
	-- 灵珠爆掉 - 41.00%
	tDragonSoulNpc_Reward[4200017][1] = {}
	tDragonSoulNpc_Reward[4200017][1]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200017][1]["ItemChance"] = 4100
	tDragonSoulNpc_Reward[4200017][1]["Item_1"] = 0
	tDragonSoulNpc_Reward[4200017][1]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200017][1]["RewardEffect"]["Effect"] = "task063"
	tDragonSoulNpc_Reward[4200017][1]["RewardExpTime"] = {}
	tDragonSoulNpc_Reward[4200017][1]["RewardExpTime"]["Value"] = 8000
	-- 保阶并额外获得15阶灵珠 - 26.50%
	tDragonSoulNpc_Reward[4200017][2] = {}
	tDragonSoulNpc_Reward[4200017][2]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200017][2]["ItemChance"] = 2650
	tDragonSoulNpc_Reward[4200017][2]["RewardItem"] = {}
	tDragonSoulNpc_Reward[4200017][2]["RewardItem"][1] = {}
	tDragonSoulNpc_Reward[4200017][2]["RewardItem"][1]["Id"] = 4200015 -- 【库】 4200015 【cnzf库里没有该物品】[属性:]【表格】保阶并额外获得15阶灵珠
	tDragonSoulNpc_Reward[4200017][2]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulNpc_Reward[4200017][2]["RewardItem"][1]["PreciousType"] = 301
	tDragonSoulNpc_Reward[4200017][2]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200017][2]["RewardEffect"]["Effect"] = "task062"
	-- 变成18阶灵珠 - 32.50%
	tDragonSoulNpc_Reward[4200017][3] = {}
	tDragonSoulNpc_Reward[4200017][3]["RandomItemChanceType"] = 2
	tDragonSoulNpc_Reward[4200017][3]["ItemChance"] = 3250
	tDragonSoulNpc_Reward[4200017][3]["Item_1"] = 4200018
	tDragonSoulNpc_Reward[4200017][3]["RewardEffect"] = {}
	tDragonSoulNpc_Reward[4200017][3]["RewardEffect"]["Effect"] = "task062"

local tDragonSoulNpc_Log = {}
	-- 放入灵珠
	tDragonSoulNpc_Log["PutSoul"] = "0,0,%d,1,12001285,1[1],0,0"
	-- 重铸(爆掉)
	tDragonSoulNpc_Log["RecastDel"] = "0,0,%d,1,12001285,1[3],0,0"
	-- 重铸(保阶并额外获得X阶灵珠)
	tDragonSoulNpc_Log["RecastAward"] = "0,0,0,0,12001285,1[4],%d[%d],1[1]"
	-- 重铸(变成X阶灵珠)
	tDragonSoulNpc_Log["RecastChange"] = "0,0,%d,1,12001285,1[5],%d,1"
	-- 取回背包内(正常取回)
	tDragonSoulNpc_Log["GetBack"] = "0,0,0,0,12001285,1[6],%d,1"
	-- 取回背包内(阶数满)
	tDragonSoulNpc_Log["GetBack_Lev"] = "0,0,0,0,12001285,1[7],%d,1"
	-- 取回背包内(次数满)
	tDragonSoulNpc_Log["GetBack_Time"] = "0,0,0,0,12001285,1[8],%d,1"
	-- 强化重铸消耗灵珠
	tDragonSoulNpc_Log["Strengthening"] = "0,0,%d,1,12001285,1[9],0,0"

----------------------------------逻辑部分配置----------------------------------
-- 获取stc掩码值
function DragonSoulNpc_GetStcValue(nStc,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	local nEvent = tDragonSoulNpc_Stc[nStc]["EventType"]
	local nType = tDragonSoulNpc_Stc[nStc]["DataType"]
	return Get_UserStatisticValue(nEvent,nType,nNewUserId)
end

-- 设置stc掩码值
function DragonSoulNpc_SetStcValue(nStc,nData,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	local nEvent = tDragonSoulNpc_Stc[nStc]["EventType"]
	local nType = tDragonSoulNpc_Stc[nStc]["DataType"]
	Task_SetStatistic(nEvent,nType,nData,1,nNewUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNewUserId)
end

-- 增加stc掩码值
function DragonSoulNpc_AddStcValue(nStc,nData,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	local nEvent = tDragonSoulNpc_Stc[nStc]["EventType"]
	local nType = tDragonSoulNpc_Stc[nStc]["DataType"]
	Task_AddStatistic(nEvent,nType,nData,1,nNewUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNewUserId)
end

----------------------------------------
-- 炉子内（没有灵珠）
function DragonSoulNpc_NoSoul(nNpcId,nUserId)
	local nNewUserId = nUserId or Get_UserId()

	-- 炉子内有灵珠
	if DragonSoulNpc_GetStcValue(1,nNewUserId) > 0 then
		return false
	end
	
	-- 没灵珠
	tNpcGossip[nNpcId]["tOption1-1"] = {}
	for nNum , tSoul in ipairs(tDragonSoulNpc_ItemId) do
		local nSoulId = tSoul[1]
		local nIsPut = tSoul[2] or 0
		local nIsNew = tSoul[3] or 0
		
		--添加激情服判断
		if nIsNew ~= 0 and SpecialServer_ChkNoGiftServer() then
			nIsNew = 0
		end
		
		if nSoulId ~= nil and nIsPut ~= 0 and nIsNew == 0 and Item_ChkItem(nSoulId,nil,nil,nNewUserId) then
			local sSoulName = Get_ItemtypeName(nSoulId)
			local sOptText = string.format(tDragonSoulNpc_Text[nNpcId]["Option111"],sSoulName)
			local sOptFunc = string.format("DragonSoulNpc_IntoSoul</N>%d</N>%d</N>%d",nNpcId,nNum,nNewUserId)
			tNpcGossip[nNpcId]["Option11".. nNum] = sOptText
			tNpcGossip[nNpcId]["OptionFunc11".. nNum] = sOptFunc
			table.insert(tNpcGossip[nNpcId]["tOption1-1"],tonumber(11 .. nNum))
		end
	end
	
	-- 必出
	-- if next(tNpcGossip[nNpcId]["tOption1-1"]) == nil then
		table.insert(tNpcGossip[nNpcId]["tOption1-1"],1199)
	-- end
	
	-- 有选项出对白
	return tNpcGossip[nNpcId]["tOption1-1"] ~= {}
end


-- 【铸龙台上已有灵珠】
function DragonSoulNpc_HaveSoul(nNpcId,nUserId)
	local nNewUserId = nUserId or Get_UserId()

	-- 获取灵珠信息
	local nNewSoulId = DragonSoulNpc_GetStcValue(1,nNewUserId)
	local nTimes = DragonSoulNpc_GetStcValue(2,nNewUserId)
	local sSoulName = ""
	local sText121 = ""
	
	if nNewSoulId ~= 0 then
		sSoulName = Get_ItemtypeName(nNewSoulId)
		sText121 = string.format(tDragonSoulNpc_Text[nNpcId]["Text121"],sSoulName)
	else
		sText121 = tDragonSoulNpc_Text[nNpcId]["Text1211"]
	end
	
	tNpcGossip[nNpcId]["Text121"] = sText121
	
	local nData = Get_SysDynaGlobalData0(tDragonSoulNpc_Data["StrengtheningGlobal"])
	
	--可以强化重铸的灵珠且背包有这个灵珠
	if nNewSoulId >= tDragonSoulNpc_Data["Strengthening"][1] and nNewSoulId <= tDragonSoulNpc_Data["Strengthening"][2] and Item_ChkItem(nNewSoulId,nil,nil,nNewUserId) and nData > 0 then
		tNpcGossip[nNpcId]["tOption1-2"] = {121,124,123,122}
	else
		tNpcGossip[nNpcId]["tOption1-2"] = {121,123,122}
	end
	
	local nChooseId = DragonSoulNpc_GetStcValue(3,nNewUserId) + tDragonSoulNpc_Data["SoulDiff"]
	
	--升灵珠内没有灵珠，选择的是可以强化的灵珠，且背包有2个该灵珠
	if nNewSoulId == 0 and nChooseId >= tDragonSoulNpc_Data["Strengthening"][1] and nChooseId <= tDragonSoulNpc_Data["Strengthening"][2] and Item_ChkMulItem(nChooseId,nChooseId,2,nil,nil,nNewUserId) and nData > 0 then
		tNpcGossip[nNpcId]["tOption1-2"] = {121,124,123}
	end
end

----------------------------------------
-- 放入X阶灵珠
function DragonSoulNpc_IntoSoul(nNpcId,nNum,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	
	-- 炉子内有灵珠
	if DragonSoulNpc_GetStcValue(1,nNewUserId) > 0 then
		return true
	end
	
	-- 将选的灵珠放入炉子
	local nSoulId = tDragonSoulNpc_ItemId[nNum][1]
	if nSoulId ~= 0 and Item_ChkItem(nSoulId,nil,nil,nNewUserId) and Item_DelItem(nSoulId,nil,nil,nNewUserId) then
		-- 贵重物品统计
		Sys_DecNosuchStatisticCount(351,nSoulId,1)
		-- 设掩码
		DragonSoulNpc_SetStcValue(1,nSoulId,nNewUserId)
		DragonSoulNpc_SetStcValue(2,0,nNewUserId)

		-- 打log
		local sLog = string.format(tDragonSoulNpc_Log["PutSoul"],nSoulId)
		Sys_SaveActionFestivalLog(sLog,nNewUserId)

		-- 出对白
		-- LinkNpcGossipFunc_New(nNpcId,"1-2",nil,tNpcGossip[nNpcId]["nPageNum"])
		
		return true
	else
		return false
	end
end

--强化重铸
function DragonSoulNpc_Strengthening(nNpcId)
	local nUserId = Get_UserId()
	
	--判断是不是在副本内
	local nDragonSoulNpc_MapId = Get_UserMapId(nUserId)
	if Get_MapDoc(nDragonSoulNpc_MapId) ~= tDragonSoulNpc_Data["MapDoc"] then
		return
	end
	
	local nSoulId = DragonSoulNpc_GetStcValue(1,nUserId) or 0
	
	--升灵珠内没有灵珠，则放进1个
	if nSoulId == 0 then
		local nNum = DragonSoulNpc_GetStcValue(3,nUserId)
		
		if nNum == 0 then
			return
		end
		
		if not DragonSoulNpc_IntoSoul(nNpcId,nNum,nUserId) then
			return
		end
		
		nSoulId = DragonSoulNpc_GetStcValue(1,nUserId)
	end
	
	local nData = Get_SysDynaGlobalData0(tDragonSoulNpc_Data["StrengtheningGlobal"])
	
	--id不在范围内
	if nSoulId < tDragonSoulNpc_Data["Strengthening"][1] or nSoulId > tDragonSoulNpc_Data["Strengthening"][2] and Item_ChkItem(nSoulId,nil,nil,nUserId) and nData > 0 then
		return
	end
	
	local sFunc = "DragonSoulNpc_RecastLoad</N>"..nNpcId.."</N>1"
	
	--二次确认提示
	Sys_MsgBox(string.format(tDragonSoulNpc_Text["105"]["Strengthening"] ,nSoulId % 100),sFunc,nil,nUserId)
end

-- 开始重铸(读条)
function DragonSoulNpc_RecastLoad(nNpcId,nStrength,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	
	--判断是不是在副本内
	local nDragonSoulNpc_MapId = Get_UserMapId(nNewUserId)
	if Get_MapDoc(nDragonSoulNpc_MapId) ~= tDragonSoulNpc_Data["MapDoc"] then
		return
	end
	
	local nNum = DragonSoulNpc_GetStcValue(3,nNewUserId)
	
	if nNum == 0 then
		return
	end
	
	--放入灵珠
	if not DragonSoulNpc_IntoSoul(nNpcId,nNum,nNewUserId) then
		-- Sys_MsgBox(string.format(tDragonSoulNpc_Text["105"]["NoSoulItem"], nNum), "DragonSoulNpc_BoundTrans", nil, nNewUserId)
		User_TalkChannel2005(string.format(tDragonSoulNpc_Text["105"]["NoSoulItem"], nNum), nNewUserId)
		DragonSoulNpc_Buy(nNewUserId)
		return
	end
	
	local nSoulId = DragonSoulNpc_GetStcValue(1,nNewUserId) or 0
	local nTimes = DragonSoulNpc_GetStcValue(2,nNewUserId) or 0
	local nAllTimes = tDragonSoulNpc_Stc[2]["Times"]
	if nSoulId == 0 then
		return
	end
	
	--次数已达上限
	if nTimes >= nAllTimes then
		Sys_MsgBox(tDragonSoulNpc_Text["105"]["TimesMaxTip"],nil,nil,nNewUserId)
		return
	end
	
	if nStrength == nil then
		nStrength = 0
	end
	
	-- 读条
	local sLoadingText = tDragonSoulNpc_Text["Loading"]
	local sFunc = "DragonSoulNpc_RecastSoul</N>".. nNpcId.."</N>"..nStrength
	User_SetExplore(1,sLoadingText,220,sFunc)
	-- DragonSoulNpc_RecastSoul(nNpcId,nNewUserId)
	
	-- 105
	-- local sSoulName = Get_ItemtypeName(nSoulId)
	-- local sText = string.format(tDragonSoulNpc_Text["105"]["IsRecast"],sSoulName)
	-- local sFunc = "DragonSoulNpc_RecastSoul</N>".. nNpcId .."</N>".. nNewUserId
	-- Sys_MsgBox(sText,sFunc,nil,nNewUserId)
end


-- 开始重铸(执行)
function DragonSoulNpc_RecastSoul(nNpcId,nStrength, nUserId)
	local nNewUserId = nUserId or Get_UserId()
	local nSoulId = DragonSoulNpc_GetStcValue(1,nNewUserId) or 0
	local nTimes = DragonSoulNpc_GetStcValue(2,nNewUserId) or 0
	local nAllTimes = tDragonSoulNpc_Stc[2]["Times"]
	if nSoulId == 0 then
		return
	end
	
	--次数已达上限
	if nTimes >= nAllTimes then
		Sys_MsgBox(tDragonSoulNpc_Text["105"]["TimesMaxTip"],nil,nil,nNewUserId)
		return
	end
	
	-- 背包空间判断
	-- local nSpace = RewardTemplate_GetRandomSpace(tDragonSoulNpc_Reward,nSoulId,nNewUserId)
	if not User_CheckLeftSpace(1,nNewUserId) then
		local sText = string.format(tDragonSoulNpc_Text["105"]["NoSpace"],1)
		Sys_MsgBox(sText,nil,nil,nNewUserId)
		return
	end
	
	local tTotalAward = CommonFunc_Copy(tDragonSoulNpc_Reward)
	
	--是否强化重铸
	if nStrength == 1 then
		if not Item_ChkItem(nSoulId,nil,nil,nNewUserId) then
			Sys_MsgBox(string.format(tDragonSoulNpc_Text["105"]["StrengtheningNoItem"], nSoulId % 100),nil,nil,nNewUserId)
			return
		end
		
		--删除一个当前灵珠
		if not Item_DelItem(nSoulId,nil,nil,nNewUserId) then
			Sys_MsgBox(string.format(tDragonSoulNpc_Text["105"]["StrengtheningNoItem"], nSoulId % 100),nil,nil,nNewUserId)
			return
		end
		
		-- 贵重物品统计
		Sys_DecNosuchStatisticCount(351,nSoulId,1)
		
		--log
		Sys_SaveActionFestivalLog(string.format(tDragonSoulNpc_Log["Strengthening"], nSoulId),nNewUserId)
		
		--概率调整
		tTotalAward[nSoulId][1]["ItemChance"] = 0
		tTotalAward[nSoulId][2]["ItemChance"] = 0
		tTotalAward[nSoulId][3]["ItemChance"] = tTotalAward[nSoulId]["ItemChanceSum"]
		tTotalAward[nSoulId][4]["ItemChance"] = 0
	end
	
	--活动时间内不给经验，给转盘
	if tTotalAward[nSoulId][1]["RewardItem"] ~= nil then
		if Sys_ChkFullTime(tActivityTime["SpringFestivalEmoney"]["ActiveTime"]) then
			tTotalAward[nSoulId][1]["RewardExpTime"] = nil
		else
			tTotalAward[nSoulId][1]["RewardItem"] = nil
		end
	end
	
	-- 随机
	local tReward,sRewardStr = RewardTemplate_NewRandomNoTip(tTotalAward,nSoulId, nNewUserId)
	local tAward = tReward[1]["tAward"][1]
	
	-- 十八变
	EighteenChanges_Recast(nSoulId,tAward,nNewUserId)
	
	-- 爆掉
	if tAward["Item_1"] ~= nil and tAward["Item_1"] == 0 then
		-- 清空stc
		DragonSoulNpc_SetStcValue(1,0,nNewUserId)
		DragonSoulNpc_SetStcValue(2,0,nNewUserId)
		
		-- 打log
		local sLog_Del = string.format(tDragonSoulNpc_Log["RecastDel"],nSoulId)
		Sys_SaveActionFestivalLog(sLog_Del,nNewUserId)
		
		local sExpTime = ""
		
		if tAward["RewardExpTime"] ~= nil then
			local nExpTime = tAward["RewardExpTime"]["Value"]
			sExpTime = string.format(tDragonSoulNpc_Text["Exp"], nExpTime)
			
			--满级
			if Get_UserLevel(nNewUserId) >= G_User_MaxLev then
				sExpTime = tDragonSoulNpc_Text["ExpFull"]
			end
		elseif tAward["RewardItem"] ~= nil then
			sExpTime = Get_ItemtypeName(tAward["RewardItem"][1]["Id"])
			local tStr = Sys_Split(tAward["RewardItem"][1]["Attr"], " ")
			sExpTime = sExpTime.."*"..tStr[2]
		end
		
		tNpcGossip[nNpcId]["Text243"] = string.format(tDragonSoulNpc_Text[nNpcId]["Text243"], sExpTime)
		
		-- 出对白
		LinkNpcGossipFunc_New(nNpcId,"2-4",nil,tNpcGossip[nNpcId]["nPageNum"], nNewUserId)

		--战令积分返利
		BattlePassTaskTest_ScoreAdd(2,nSoulId,nNewUserId)
		
		
	-- 重铸成功、等阶不变、额外获得低阶灵珠
	elseif tAward["Item_1"] == nil and tAward["RewardItem"][1]["Id"] ~= nil then
		local nAwardId = tAward["RewardItem"][1]["Id"]
		
		-- 重铸次数+1
		DragonSoulNpc_AddStcValue(2,1,nNewUserId)
		
		-- 全服公告
		DragonSoulNpc_BroadCast(nSoulId,nNewUserId)

		
		-- 光效
		local sObj = tDragonSoulNpc_Effect["Obj"]
		local sEffect = tDragonSoulNpc_Effect["Effect"]
		User_EffectAdd("self",sEffect,nNewUserId)

		
		-- 打log
		local sLog_Award = string.format(tDragonSoulNpc_Log["RecastAward"],nSoulId,nAwardId)
		Sys_SaveActionFestivalLog(sLog_Award,nNewUserId)
		
		-- 是否自动取回
		if DragonSoulNpc_AutoBack(nNpcId,nNewUserId) then
			return
		end
		
		-- 出对白
		tNpcGossip[nNpcId]["tOption2-3"] = {231,232}
		local sSoulName = Get_ItemtypeName(nSoulId)
		local sAwardName = Get_ItemtypeName(nAwardId)
		local nNewTimes = DragonSoulNpc_GetStcValue(2,nNewUserId)
		tNpcGossip[nNpcId]["Text232"] = string.format(tDragonSoulNpc_Text[nNpcId]["Text232"],sSoulName)
		tNpcGossip[nNpcId]["Text234"] = string.format(tDragonSoulNpc_Text[nNpcId]["Text234"],sAwardName)
		tNpcGossip[nNpcId]["Text235"] = string.format(tDragonSoulNpc_Text[nNpcId]["Text235"],nNewTimes, tDragonSoulNpc_Text["Continue"])
		
		local nData = Get_SysDynaGlobalData0(tDragonSoulNpc_Data["StrengtheningGlobal"])
		
		--可以强化重铸的灵珠且背包有这个灵珠
		if nSoulId >= tDragonSoulNpc_Data["Strengthening"][1] and nSoulId <= tDragonSoulNpc_Data["Strengthening"][2] and Item_ChkItem(nSoulId,nil,nil,nNewUserId) and nData > 0 then
			tNpcGossip[nNpcId]["tOption2-3"] = {231,233,232}
		end
		
		if nNewTimes >= tDragonSoulNpc_Stc[2]["Times"] then
			tNpcGossip[nNpcId]["Text235"] = string.format(tDragonSoulNpc_Text[nNpcId]["Text235"],nNewTimes, tDragonSoulNpc_Text["NotContinue"])
			tNpcGossip[nNpcId]["tOption2-3"] = {232}
		end
		
		LinkNpcGossipFunc_New(nNpcId,"2-3",nil,tNpcGossip[nNpcId]["nPageNum"], nNewUserId)


	-- 重铸成功、灵珠升阶
	elseif tAward["Item_1"] ~= nil and tAward["Item_1"] ~= 0 then
		local nChangeId = tAward["Item_1"]
		
		-- 设置掩码
		DragonSoulNpc_SetStcValue(1,nChangeId,nNewUserId)
		
		-- 重铸次数+1
		DragonSoulNpc_AddStcValue(2,1,nNewUserId)
		
		local nAddLev = nChangeId - nSoulId
		-- 全服公告
		DragonSoulNpc_BroadCast(nChangeId,nNewUserId)
		
		
		-- 光效
		local sObj = tDragonSoulNpc_Effect["Obj"]
		local sEffect = tDragonSoulNpc_Effect["Effect"]
		User_EffectAdd("self",sEffect,nNewUserId)

		-- 打log
		local sLog_Change = string.format(tDragonSoulNpc_Log["RecastChange"],nSoulId,nChangeId)
		Sys_SaveActionFestivalLog(sLog_Change,nNewUserId)
		
		-- 是否自动取回
		if DragonSoulNpc_AutoBack(nNpcId,nNewUserId) then
			return
		end
		
		-- 出对白
		tNpcGossip[nNpcId]["tOption2-2"] = {221,222}
		local sChangeName = Get_ItemtypeName(nChangeId)
		local nAddLev = nChangeId - nSoulId
		local nNewTimes = DragonSoulNpc_GetStcValue(2,nNewUserId)
		tNpcGossip[nNpcId]["Text222"] = string.format(tDragonSoulNpc_Text[nNpcId]["Text222"],sChangeName)
		tNpcGossip[nNpcId]["Text224"] = string.format(tDragonSoulNpc_Text[nNpcId]["Text224"],nAddLev)
		tNpcGossip[nNpcId]["Text225"] = string.format(tDragonSoulNpc_Text[nNpcId]["Text225"],nNewTimes, tDragonSoulNpc_Text["Continue"])
		
		local nData = Get_SysDynaGlobalData0(tDragonSoulNpc_Data["StrengtheningGlobal"])
		
		--可以强化重铸的灵珠且背包有这个灵珠
		if nChangeId >= tDragonSoulNpc_Data["Strengthening"][1] and nChangeId <= tDragonSoulNpc_Data["Strengthening"][2] and Item_ChkItem(nChangeId,nil,nil,nNewUserId) and nData > 0 then
			tNpcGossip[nNpcId]["tOption2-2"] = {221,223,222}
		end
		
		if nNewTimes >= tDragonSoulNpc_Stc[2]["Times"] then
			tNpcGossip[nNpcId]["Text225"] = string.format(tDragonSoulNpc_Text[nNpcId]["Text225"],nNewTimes, tDragonSoulNpc_Text["NotContinue"])
			tNpcGossip[nNpcId]["tOption2-2"] = {222}
		end
		
		--重铸成功阶段
		-- if nSoulId >= 4200005 then
			-- if nAddLev >= 2 then
				-- User_AddProcessTaskSchedule(1037,0,1,nNewUserId)
			-- else
				-- User_AddProcessTaskSchedule(1036,0,1,nNewUserId)
			-- end
			
			-- User_AddProcessTaskSchedule(1038,0,nAddLev,nNewUserId)
		-- end
		-- （大于等于4级的出现的跳阶，左下角飘屏）（大于等于7级出现的跳阶，左下角和中间飘屏）
		-- （获得9阶以及以上，左下角飘屏）（获得13阶以及以上，左下角和中间飘屏）
		if nAddLev >= 3 then
			local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>23735"
			local sText1 = string.format(tDragonSoulConnectNpc_Text["STR_Dragon_Soul"],GetServerName(0),Get_UserName(nNewUserId),Get_ItemtypeName(nSoulId),Get_ItemtypeName(nChangeId),sFun)
			
			if nSoulId >= 4200003 then
				Sys_DragonSoulUpLevToAllServer(sText1,nil,1)
			elseif nSoulId >= 4200002 then
				if nChangeId >= 4200004 then
					Sys_DragonSoulUpLevToAllServer(sText1,nil,1)
				else
					Sys_DragonSoulUpLevToAllServer(sText1,nil,0)
				end
			end
		else	
			local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>23735"
			local sText1 = string.format(tDragonSoulConnectNpc_Text["STR_Dragon_Soul"],GetServerName(0),Get_UserName(nNewUserId),Get_ItemtypeName(nSoulId),Get_ItemtypeName(nChangeId),sFun)
			
			if nChangeId >= 4200004 then
				Sys_DragonSoulUpLevToAllServer(sText1,nil,1)
			elseif nChangeId >= 4200003 then
				Sys_DragonSoulUpLevToAllServer(sText1,nil,0)
			end
			
		end
		
		LinkNpcGossipFunc_New(nNpcId,"2-2",nil,tNpcGossip[nNpcId]["nPageNum"], nNewUserId)
	end
	
	--battlepass加进度
	-- BattlePassTaskTest_TaskAddProgress(11,1, nNewUserId)
	
	-- if nSoulId >= 4200005 then
		-- User_AddProcessTaskSchedule(1035,0,1,nNewUserId)
	-- end
	
end

-- 取回灵珠
function DragonSoulNpc_GetSoulBack(nNpcId,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	
	if nNpcId ~= nil then
		--判断是不是在副本内
		local nDragonSoulNpc_MapId = Get_UserMapId(nNewUserId)
		if Get_MapDoc(nDragonSoulNpc_MapId) ~= tDragonSoulNpc_Data["MapDoc"] then
			return
		end
	end
	
	local nSoulId = DragonSoulNpc_GetStcValue(1,nNewUserId) or 0

	-- 炉子内没有灵珠
	if nSoulId <= 0 then
		-- DragonSoulNpc_NoSoul(nNpcId,nNewUserId)
		
		if nNpcId ~= nil then
			LinkNpcGossipFunc_New(nNpcId,"1",nil,tNpcGossip[nNpcId]["nPageNum"])
		end
		
		return
	end

	-- 背包判断
	if not User_CheckLeftSpace(1,nNewUserId) then
		local sAutoNoSpaceText = tDragonSoulNpc_Text["105"]["AutoNoSpace"]
		Sys_MsgBox(sAutoNoSpaceText,nil,nil,nNewUserId)
		return
	end
	
	-- 重置掩码
	DragonSoulNpc_SetStcValue(1,0,nNewUserId)
	DragonSoulNpc_SetStcValue(2,0,nNewUserId)
	Item_AddNewItemAndMsg(nSoulId,"0 1",nNewUserId)
	-- 贵重物品统计
	Sys_IncNosuchStatisticCount(301,nSoulId,1)
	-- log
	local sLog = string.format(tDragonSoulNpc_Log["GetBack"],nSoulId)
	Sys_SaveActionFestivalLog(sLog,nNewUserId)

	-- 105
	local sSoulName = Get_ItemtypeName(nSoulId)
	
	local sText = string.format(tDragonSoulNpc_Text["105"]["GetBackTwinCity"],sSoulName)
	
	if SpecialServer_ChkNoGiftServer() then
		sText = string.format(tDragonSoulNpc_Text["105"]["GetBackMarket"],sSoulName)
	end
	
	if nNpcId == nil then
		sText = string.format(tDragonSoulNpc_Text["105"]["GetBack"],sSoulName)
	end
	
	Sys_MsgBox(sText)
	
	if nNpcId ~= nil then
		--传送
		DragonSoulNpc_BoundTrans()
	end
end



-- 次数满，升阶最高，出105(自动取回背包)
function DragonSoulNpc_AutoBack(nNpcId,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	local nSoulId = DragonSoulNpc_GetStcValue(1,nNewUserId) or 0
	local nNewTimes = DragonSoulNpc_GetStcValue(2,nNewUserId) or 0
	local nAllTimes = tDragonSoulNpc_Stc[2]["Times"]
	local bBack = false
	local bMail = false
	local s105Text = ""
	local sLog = ""
	
	-- 灵珠升至18阶
	local nSoulSum = #tDragonSoulNpc_ItemId
	local nMaxId = tDragonSoulNpc_ItemId[nSoulSum][1] or 0
	if nSoulId == nMaxId and nMaxId ~= 0 then
		bBack = true
		s105Text = tDragonSoulNpc_Text["105"]["LevMax"]
		if not User_CheckLeftSpace(1,nNewUserId) then
			bMail = true
			s105Text = tDragonSoulNpc_Text["105"]["LevMax_Mail"]
		end
		
		sLog = string.format(tDragonSoulNpc_Log["GetBack_Lev"],nSoulId)

	-- 重铸次数满（次数满不自动取出）
	-- elseif nNewTimes >= nAllTimes then
		-- bBack = true
		-- s105Text = tDragonSoulNpc_Text["105"]["TimesMax"]
		-- if not User_CheckLeftSpace(1,nNewUserId) then
			-- bMail = true
			-- s105Text = tDragonSoulNpc_Text["105"]["TimesMax_Mail"]
		-- end
		-- sLog = string.format(tDragonSoulNpc_Log["GetBack_Time"],nSoulId)
	end

	-- 可自动取回
	if bBack then
		local sFunc = nil
		
		-- 背包满，回到主对白
		if bMail then
			-- 重置掩码
			DragonSoulNpc_SetStcValue(1,0,nNewUserId)
			DragonSoulNpc_SetStcValue(2,0,nNewUserId)

			-- log
			Sys_SaveActionFestivalLog(sLog,nNewUserId)

			-- 发邮件
			DragonSoulNpc_Mail(nSoulId,nNewUserId)
			
		-- 取回灵珠
		elseif nSoulId ~= nil and nSoulId ~= 0 then
			-- 重置掩码
			DragonSoulNpc_SetStcValue(1,0,nNewUserId)
			DragonSoulNpc_SetStcValue(2,0,nNewUserId)
			Item_AddNewItemAndMsg(nSoulId,"0 1",nNewUserId)
			-- 贵重物品统计
			Sys_IncNosuchStatisticCount(301,nSoulId,1)
			-- log
			Sys_SaveActionFestivalLog(sLog,nNewUserId)
			
			-- 105
			sFunc = "LinkNpcGossipFunc_New</N>".. nNpcId .."</S>1"
		end
		
		Sys_MsgBox(s105Text,sFunc,nil,nNewUserId)
	end
	
	return bBack
end


-- 发邮件函数
function DragonSoulNpc_Mail(nSoulId,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	local nActionId = tDragonSoulNpc_Mail[nSoulId]
	
	-- 发邮件
	if nActionId ~= nil then
		local sSoulName = Get_ItemtypeName(nSoulId)
		local nExistDay = tDragonSoulNpc_Mail["ExistDay"]
		local sSender = tDragonSoulNpc_Text["Sender"]
		local sTitle = tDragonSoulNpc_Text["Title"]
		local sContent = string.format(tDragonSoulNpc_Text["Content"],sSoulName)
		Sys_SendMail(nNewUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		-- 贵重物品统计
		Sys_IncNosuchStatisticCount(301,nSoulId,1)
	end
end


-- 详细介绍里，开始重铸按钮判断
function DragonSoulNpc_TipBack(nNpcId)
	-- 检测玩家背包内，是否有灵珠
	-- for nNum , tSoul in ipairs(tDragonSoulNpc_ItemId) do
		-- local nSoulId = tSoul[1]
		-- local nIsPut = tSoul[2] or 0
		-- local nIsNew = tSoul[3] or 0
		
		-- --添加激情服判断
		-- if nIsNew ~= 0 and SpecialServer_ChkNoGiftServer() then
			-- nIsNew = 0
		-- end
		
		-- if nSoulId ~= nil and nIsPut ~= 0 and nIsNew == 0 and Item_ChkItem(nSoulId,nil,nil,nNewUserId) then
			-- LinkNpcGossipFunc_New(nNpcId,"1",nil,tNpcGossip[nNpcId]["nPageNum"])
			-- return
		-- end
	-- end
	
	local nDragonSoulNpc_UserId = Get_UserId()
	
	--判断是不是在副本内
	local nDragonSoulNpc_MapId = Get_UserMapId(nDragonSoulNpc_UserId)
	if Get_MapDoc(nDragonSoulNpc_MapId) ~= tDragonSoulNpc_Data["MapDoc"] then
		return
	end
	
	-- 铸龙台内有灵珠
	local nItemId = DragonSoulNpc_GetStcValue(1)
	if nItemId > 0 then
		LinkNpcGossipFunc_New(nNpcId,"1",nil,tNpcGossip[nNpcId]["nPageNum"])
		return
	end
	
	-- 已选择的灵珠
	local nChooseIndex = DragonSoulNpc_GetStcValue(3)
	if nChooseIndex > 0 and Item_ChkItem(tDragonSoulNpc_ItemId[nChooseIndex][1]) then
		LinkNpcGossipFunc_New(nNpcId,"1",nil,tNpcGossip[nNpcId]["nPageNum"])
		return
	end
	
	if nChooseIndex == 0 then
		return
	end
	
	-- 没有灵珠
	-- Sys_MsgBox(string.format(tDragonSoulNpc_Text["105"]["NoSoulItem"], nChooseIndex), "DragonSoulNpc_BoundTrans")
	User_TalkChannel2005(string.format(tDragonSoulNpc_Text["105"]["NoSoulItem"], nChooseIndex))
	DragonSoulNpc_Buy()
end

-- 出全服公告
function DragonSoulNpc_BroadCast(nSoulId,nUserId)
	local nNewUserId = nUserId or Get_UserId()
	local sUserName = Get_UserName(nNewUserId)
	local nBeginLev = tDragonSoulNpc_Data["BroadLev"]
	local nSoulLev = 0
	for nLev = nBeginLev, #tDragonSoulNpc_ItemId do
		local nId = tDragonSoulNpc_ItemId[nLev][1]
		if nSoulId == nId then
			nSoulLev = nLev
		end
	end
	
	-- 出公告
	if nSoulLev ~= 0 then
		local sBroadCast = string.format(tDragonSoulNpc_Text["BroadCast"], sUserName, nSoulLev)
		Sys_TalkBroadcast(sBroadCast)
	end
end

-- 全服公告寻路
function DragonSoulNpc_BroadGoto(nNpcId)
	local nDCityId = tDragonSoulNpc_Data["DCity"]["Normal"]
	local sNoMapText = tDragonSoulNpc_Text["NoMap"]["Normal"]
	-- 是否激情服
	if SpecialServer_ChkNoGiftServer() then
		nDCityId = tDragonSoulNpc_Data["DCity"]["NoGift"]
		sNoMapText = tDragonSoulNpc_Text["NoMap"]["NoGift"]
	end
	
	-- 在活动地图内,自动寻路
	local nUserMapId = Get_UserMapId()
	if nUserMapId == nDCityId then
		NpcPosition_PathFind(nNpcId)
	-- 激情服（双龙城也可寻路）
	elseif SpecialServer_ChkNoGiftServer() and nUserMapId == 10364 then
		NpcPosition_PathFind(nNpcId)
	-- 出系统提示
	else
		User_TalkChannel2005(sNoMapText)
	end
end

--网页链接
function DragonSoulNpc_OpenWeb()
	User_SendWebPage(tDragonSoulNpc_Data["Web"])
end

--动态NPC接入
function DragonSoulNpc_LinkNpc(nNpcId)
	LinkNpcGossipFunc_New(nNpcId, "1")
end

--刷新NPC
function DragonSoulNpc_RefreshNpc(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	local sName = tDragonSoulNpc_Text["Sender"]
	local nSort = tDragonSoulNpc_Data["RefreshNpc"]["Sort"]
	local nType = tDragonSoulNpc_Data["RefreshNpc"]["Type"]
	local nLookFace = tDragonSoulNpc_Data["RefreshNpc"]["LookFace"]
	local nAction = tDragonSoulNpc_Data["RefreshNpc"]["Action"]
	local nPosX = tDragonSoulNpc_Data["RefreshNpc"]["PosX"]
	local nPosY = tDragonSoulNpc_Data["RefreshNpc"]["PosY"]
	
	return Npc_CreateDynaNpc(sName, nType ,nSort ,nLookFace,0,0,nMapId, nPosX,nPosY,0,0,0,nAction)
end

--进入副本
function DragonSoulNpc_IntoInstance(nIndex)
	local nUserId = Get_UserId()
	
	--登记选择的灵珠
	DragonSoulNpc_SetStcValue(3,nIndex,nUserId)
	
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 1 then
		Sys_MsgBox(tDragonSoulNpc_Text["105"]["HaveTeam"])
		return
	end
	
	-- 判断激情服
	local nCityId = tDragonSoulNpc_Data["DCity"]["Normal"]
	local sText = tDragonSoulNpc_Text["105"]["NotInTwinCity"]
	local nInstanceType = tDragonSoulNpc_Data["Instancetype"]["Normal"]
	
	if SpecialServer_ChkNoGiftServer() then
		nCityId = tDragonSoulNpc_Data["DCity"]["NoGift"]
		sText = tDragonSoulNpc_Text["105"]["NotInMarket"]
		nInstanceType = tDragonSoulNpc_Data["Instancetype"]["NoGift"]
	end
	
	-- 不在双龙城
	local nMapId = Get_UserMapId()
	if nMapId ~= nCityId then
		Sys_MsgBox(sText)
		return
	end
	
	--进入副本
	if User_EnterInstance(nInstanceType,0,0,0,nUserId) then
		--刷新NPC
		DragonSoulNpc_RefreshNpc(nUserId)
		
		--提示
		local sFunc = "DragonSoulNpc_GotoSomeWhere"
		Sys_MsgBox(string.format(tDragonSoulNpc_Text["105"]["IntoRecastMap"], nIndex),sFunc,nil,nUserId)
	end
end

--使用升龙鼎重铸灵珠
function DragonSoulNpc_GotoRecast(nIndex)
	if tDragonSoulNpc_ItemId[nIndex] == nil then
		return
	end
	
	local nItemId = tDragonSoulNpc_ItemId[nIndex][1]
	local nNpcId = Get_NpcId()
	
	local nSoulId = DragonSoulNpc_GetStcValue(1)
	
	--背包中没有相应灵珠且没有未取出的灵珠
	if not Item_ChkItem(nItemId) and nSoulId <= 0 then
		tNpcGossip[nNpcId]["Text431"] = string.format(tDragonSoulNpc_Text[nNpcId]["Text431"],nIndex)
		LinkNpcGossipFunc_New(nNpcId, "4-3")
		return
	end
	
	-- local nSoulIndex = DragonSoulNpc_GetStcValue(3)
	
	--还有灵珠未取出
	if nSoulId > 0 then
		LinkNpcGossipFunc_New(nNpcId, "4-9")
		return
	end
	
	DragonSoulNpc_IntoInstance(nIndex)
end

--采取魔龙精血融合灵珠
function DragonSoulNpc_GotoKillDragon(nIndex)
	if tDragonSoulNpc_ItemId[nIndex] == nil then
		return
	end
	
	local nItemId = tDragonSoulNpc_ItemId[nIndex][1]
	local nNpcId = Get_NpcId()
	
	--背包中没有相应灵珠
	if not Item_ChkMulItem(nItemId,nItemId,2) then
		tNpcGossip[nNpcId]["Text461"] = string.format(tDragonSoulNpc_Text[nNpcId]["Text461"],nIndex)
		LinkNpcGossipFunc_New(nNpcId, "4-6")
		return
	end
	
	--进入融魂副本
	DragonSoulConnectNpc_IntoInstance(nIndex)
end

--寻路
function DragonSoulNpc_GotoSomeWhere()
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = tDragonSoulNpc_Data["Where"]["PosX"]
	local nPosY = tDragonSoulNpc_Data["Where"]["PosY"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0,nUserId)
end

--传送
function DragonSoulNpc_BoundTrans()
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	if tDragonSoulNpc_Data["BoundTrans"][nIndex] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	local nMapId = tDragonSoulNpc_Data["BoundTrans"][nIndex]["MapId"]
	local nBoundX = tDragonSoulNpc_Data["BoundTrans"][nIndex]["PosX"]
	local nBoundY = tDragonSoulNpc_Data["BoundTrans"][nIndex]["PosY"]
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1,nUserId)
	
	User_TalkChannel2005(tDragonSoulNpc_Text["105"]["GoBack"][nIndex],nUserId)
end

--副本陷阱返回
function DragonSoulNpc_GoBackToCity(nTrapId,nTrapType)
	local sText = tDragonSoulNpc_Text["105"]["GoBackTwinCity"]
	
	if SpecialServer_ChkNoGiftServer() then
		sText = tDragonSoulNpc_Text["105"]["GoBackMarket"]
	end
	
	local nUserId = Get_UserId()
	
	Sys_MsgBox(sText,"DragonSoulNpc_BoundTrans",nil,nUserId)
end

--判断背包里面是否有灵珠
function DragonSoulNpc_ChkAnima(nDragonSoulNpc_ItemId, nDragonSoulNpc_Type,nDragonSoulNpc_All)
	local nDragonSoulNpc_UserId = Get_UserId()
	--检查数量
	local nDragonSoulNpc_ItemNum = 0
	
	--1表示重铸，2表示融合，3表示冶炼
	if nDragonSoulNpc_Type == 1 then
		nDragonSoulNpc_ItemNum = 1
	elseif nDragonSoulNpc_Type == 2 then
		nDragonSoulNpc_ItemNum = 2
	elseif nDragonSoulNpc_Type == 3 then
		nDragonSoulNpc_ItemNum = 1
	else
		return
	end
	
	local nDragonSoulNpc_SoulId = DragonSoulNpc_GetStcValue(1)
	local nDragonSoulNpc_Index = DragonSoulNpc_GetStcValue(3)
	
	--是否需要全部检查
	if nDragonSoulNpc_All ~= nil then
		if nDragonSoulNpc_Type == 1 and nDragonSoulNpc_SoulId > 0 then
			return true
		end
		
		local nDragonSoulNpc_StartId = tDragonSoulNpc_Data["StartSpecialId"]
		
		if nDragonSoulNpc_Type == 2 then
			nDragonSoulNpc_StartId = tDragonSoulNpc_Data["StartId"]
		end
		
		local bDragonSoulNpc_Flag = false
		
		local nDragonSoulNpc_EndId = tDragonSoulNpc_Data["EndId"]
		
		if nDragonSoulNpc_Type == 1 then
			nDragonSoulNpc_EndId = tDragonSoulNpc_Data["RecastEndId"]
		end
		
		for i = nDragonSoulNpc_StartId, nDragonSoulNpc_EndId do
			if Item_ChkMulItem(i,i,nDragonSoulNpc_ItemNum) then
				bDragonSoulNpc_Flag = true
				break
			end
		end
		
		return bDragonSoulNpc_Flag
	end
	
	--检查物品是否足够
	if not Item_ChkMulItem(nDragonSoulNpc_ItemId,nDragonSoulNpc_ItemId,nDragonSoulNpc_ItemNum) then
		--重铸还需要检查炉子里面是否还有未取出的
		if nDragonSoulNpc_Type == 1 then
			--炉子内没有灵珠
			if nDragonSoulNpc_SoulId <= 0 then
				return false
			--炉子内有灵珠，且选择的灵珠是和选项的灵珠一致
			elseif nDragonSoulNpc_Index > 0 and tDragonSoulNpc_ItemId[nDragonSoulNpc_Index][1] ~= nDragonSoulNpc_ItemId then
				return false
			end
		else
			return false
		end
	end
	
	return true
end

--前往购买
function DragonSoulNpc_Buy(nDragonSoulNpc_NowUserId)
	local nDragonSoulNpc_UserId = nDragonSoulNpc_NowUserId or Get_UserId()
	
	--判断是否跨服
	if User_IsCross(nDragonSoulNpc_UserId) then
		User_OpenDialog(1033,25210,nDragonSoulNpc_UserId)
	else
		User_OpenDialog(436,2888,nDragonSoulNpc_UserId)
	end
end

----------------------------------模块部分配置----------------------------------
-- 【重铸灵珠】铸龙台
tNpcFace[1537] = 2093
tNpcGossip[23730] = tNpcGossip[23730] or DefaultNpc:new{}
tNpcGossip[23730]["OptionHidden"] = 1
tNpcGossip[23730]["DialogueText"] = tDragonSoulNpc_Text[23730]
tNpcGossip[23730]["nPageNum"] = 11
-- 【铸龙台上没有灵珠】
tNpcGossip[23730]["Text1-1"] = {111,112,113}
tNpcGossip[23730]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1199}
tNpcGossip[23730]["OptionPoint1199"] = "3-1"
tNpcGossip[23730]["ChkFunc1-1"] = function ()
	-- return DragonSoulNpc_NoSoul(23730)
	return false
end

-- 【铸龙台上已有灵珠】
tNpcGossip[23730]["Text1-2"] = {121,122}
tNpcGossip[23730]["tOption1-2"] = {121,123,122,124}
tNpcGossip[23730]["OptionFunc121"] = "DragonSoulNpc_RecastLoad</N>23730"
tNpcGossip[23730]["OptionFunc122"] = "DragonSoulNpc_GetSoulBack</N>23730"
tNpcGossip[23730]["OptionPoint123"] = "3-1"
tNpcGossip[23730]["OptionFunc124"] = "DragonSoulNpc_Strengthening</N>23730"
tNpcGossip[23730]["ChkFunc1-2"] = function ()
	DragonSoulNpc_HaveSoul(23730)
	return true
end
tNpcGossip[23730]["OptionChkFunc122"] = function ()
	return DragonSoulNpc_GetStcValue(1) > 0
end

-- 重铸成功、灵珠升阶
tNpcGossip[23730]["Text2-2"] = {221,222,223,224,225,226}
tNpcGossip[23730]["tOption2-2"] = {221,222,223}
tNpcGossip[23730]["OptionFunc221"] = "DragonSoulNpc_RecastLoad</N>23730"
tNpcGossip[23730]["OptionFunc222"] = "DragonSoulNpc_GetSoulBack</N>23730"
tNpcGossip[23730]["OptionFunc223"] = "DragonSoulNpc_Strengthening</N>23730"


-- 重铸成功、等阶不变、额外获得低阶灵珠
tNpcGossip[23730]["Text2-3"] = {231,232,233,234,235,236}
tNpcGossip[23730]["tOption2-3"] = {231,232,233}
tNpcGossip[23730]["OptionFunc231"] = "DragonSoulNpc_RecastLoad</N>23730"
tNpcGossip[23730]["OptionFunc232"] = "DragonSoulNpc_GetSoulBack</N>23730"
tNpcGossip[23730]["OptionFunc233"] = "DragonSoulNpc_Strengthening</N>23730"

-- 重铸失败、灵珠消失
tNpcGossip[23730]["Text2-4"] = {241,242,243,244}
tNpcGossip[23730]["tOption2-4"] = {241}
tNpcGossip[23730]["OptionPoint241"] = "1"

-- 【接2、我想了解详细规则】
tNpcGossip[23730]["Text3-1"] = {311,312}
tNpcGossip[23730]["tOption3-1"] = {311}
tNpcGossip[23730]["OptionPoint311"] = "3-2"

-- 了解灵珠重铸成功与失败情况
tNpcGossip[23730]["Text3-2"] = {321,322}
tNpcGossip[23730]["tOption3-2"] = {321}
-- tNpcGossip[23730]["OptionPoint321"] = "1"
tNpcGossip[23730]["OptionFunc321"] = "DragonSoulNpc_TipBack</N>23730"

-- 【灵珠升阶】升龙鼎
tNpcFace[2285] = 2093
tNpcGossip[23735] = tNpcGossip[23735] or DefaultNpc:new{}
tNpcGossip[23735]["OptionHidden"] = 1
tNpcGossip[23735]["DialogueText"] = tDragonSoulNpc_Text[23735]

tNpcGossip[23735]["Text1-1"] = {111,112,113}
tNpcGossip[23735]["tOption1-1"] = {111,112}
tNpcGossip[23735]["ChkFunc1-1"] = function ()
	return true
end
tNpcGossip[23735]["OptionPoint111"] = "2-1"
tNpcGossip[23735]["OptionFunc112"] = "DragonSoulNpc_OpenWeb"

--确定使用升龙鼎
tNpcGossip[23735]["Text2-1"] = {211,212,213,214}
tNpcGossip[23735]["tOption2-1"] = {211,212,213,214}
tNpcGossip[23735]["OptionPoint211"] = "3-1"
tNpcGossip[23735]["OptionPoint212"] = "3-2"
tNpcGossip[23735]["OptionPoint213"] = "3-3"

--使用升龙鼎重铸灵珠
tNpcGossip[23735]["Text3-1"] = {311,312,313,314}
tNpcGossip[23735]["tOption3-1"] = {3113,3112,3111,3110,319,318,317,316,315,314,313,3198,3199}
-- tNpcGossip[23735]["OptionFunc311"] = "DragonSoulNpc_GotoRecast</N>1"
-- tNpcGossip[23735]["OptionFunc312"] = "DragonSoulNpc_GotoRecast</N>2"
tNpcGossip[23735]["OptionFunc313"] = "DragonSoulNpc_GotoRecast</N>3"
tNpcGossip[23735]["OptionFunc314"] = "DragonSoulNpc_GotoRecast</N>4"
tNpcGossip[23735]["OptionFunc315"] = "DragonSoulNpc_GotoRecast</N>5"
tNpcGossip[23735]["OptionFunc316"] = "DragonSoulNpc_GotoRecast</N>6"
tNpcGossip[23735]["OptionFunc317"] = "DragonSoulNpc_GotoRecast</N>7"
tNpcGossip[23735]["OptionFunc318"] = "DragonSoulNpc_GotoRecast</N>8"
tNpcGossip[23735]["OptionFunc319"] = "DragonSoulNpc_GotoRecast</N>9"
tNpcGossip[23735]["OptionFunc3110"] = "DragonSoulNpc_GotoRecast</N>10"
tNpcGossip[23735]["OptionFunc3111"] = "DragonSoulNpc_GotoRecast</N>11"
tNpcGossip[23735]["OptionFunc3112"] = "DragonSoulNpc_GotoRecast</N>12"
tNpcGossip[23735]["OptionFunc3113"] = "DragonSoulNpc_GotoRecast</N>13"
tNpcGossip[23735]["OptionFunc3198"] = "DragonSoulNpc_Buy"
tNpcGossip[23735]["OptionPoint3199"] = "4-1"
tNpcGossip[23735]["OptionChkFunc313"] = function ()
	return DragonSoulNpc_ChkAnima(4200003,1)
end
tNpcGossip[23735]["OptionChkFunc314"] = function ()
	return DragonSoulNpc_ChkAnima(4200004,1)
end
tNpcGossip[23735]["OptionChkFunc315"] = function ()
	return DragonSoulNpc_ChkAnima(4200005,1)
end
tNpcGossip[23735]["OptionChkFunc316"] = function ()
	return DragonSoulNpc_ChkAnima(4200006,1)
end
tNpcGossip[23735]["OptionChkFunc317"] = function ()
	return DragonSoulNpc_ChkAnima(4200007,1)
end
tNpcGossip[23735]["OptionChkFunc318"] = function ()
	return DragonSoulNpc_ChkAnima(4200008,1)
end
tNpcGossip[23735]["OptionChkFunc319"] = function ()
	return DragonSoulNpc_ChkAnima(4200009,1)
end
tNpcGossip[23735]["OptionChkFunc3110"] = function ()
	return DragonSoulNpc_ChkAnima(4200010,1)
end
tNpcGossip[23735]["OptionChkFunc3111"] = function ()
	-- return DragonSoulNpc_ChkAnima(4200011,1)
	return false
end
tNpcGossip[23735]["OptionChkFunc3112"] = function ()
	-- return DragonSoulNpc_ChkAnima(4200012,1)
	return false
end
tNpcGossip[23735]["OptionChkFunc3113"] = function ()
	-- return SpecialServer_ChkNoGiftServer() and DragonSoulNpc_ChkAnima(4200013,1)
	return false
end
tNpcGossip[23735]["OptionChkFunc3198"] = function ()
	return (not DragonSoulNpc_ChkAnima(0,1,1))
end

--采取魔龙精血融合灵珠
tNpcGossip[23735]["Text3-2"] = {321,322,323,324,325}
tNpcGossip[23735]["tOption3-2"] = {3212,3211,3210,329,328,327,326,325,324,323,322,321,3298,3299}
tNpcGossip[23735]["OptionFunc321"] = "DragonSoulNpc_GotoKillDragon</N>1"
tNpcGossip[23735]["OptionFunc322"] = "DragonSoulNpc_GotoKillDragon</N>2"
tNpcGossip[23735]["OptionFunc323"] = "DragonSoulNpc_GotoKillDragon</N>3"
tNpcGossip[23735]["OptionFunc324"] = "DragonSoulNpc_GotoKillDragon</N>4"
tNpcGossip[23735]["OptionFunc325"] = "DragonSoulNpc_GotoKillDragon</N>5"
tNpcGossip[23735]["OptionFunc326"] = "DragonSoulNpc_GotoKillDragon</N>6"
tNpcGossip[23735]["OptionFunc327"] = "DragonSoulNpc_GotoKillDragon</N>7"
tNpcGossip[23735]["OptionFunc328"] = "DragonSoulNpc_GotoKillDragon</N>8"
tNpcGossip[23735]["OptionFunc329"] = "DragonSoulNpc_GotoKillDragon</N>9"
tNpcGossip[23735]["OptionFunc3210"] = "DragonSoulNpc_GotoKillDragon</N>10"
tNpcGossip[23735]["OptionFunc3211"] = "DragonSoulNpc_GotoKillDragon</N>11"
tNpcGossip[23735]["OptionFunc3212"] = "DragonSoulNpc_GotoKillDragon</N>12"
tNpcGossip[23735]["OptionFunc3298"] = "DragonSoulNpc_Buy"
tNpcGossip[23735]["OptionPoint3299"] = "4-4"
tNpcGossip[23735]["OptionChkFunc321"] = function ()
	return DragonSoulNpc_ChkAnima(4200001,2)
end
tNpcGossip[23735]["OptionChkFunc322"] = function ()
	return DragonSoulNpc_ChkAnima(4200002,2)
end
tNpcGossip[23735]["OptionChkFunc323"] = function ()
	return DragonSoulNpc_ChkAnima(4200003,2)
end
tNpcGossip[23735]["OptionChkFunc324"] = function ()
	return DragonSoulNpc_ChkAnima(4200004,2)
end
tNpcGossip[23735]["OptionChkFunc325"] = function ()
	return DragonSoulNpc_ChkAnima(4200005,2)
end
tNpcGossip[23735]["OptionChkFunc326"] = function ()
	return DragonSoulNpc_ChkAnima(4200006,2)
end
tNpcGossip[23735]["OptionChkFunc327"] = function ()
	return DragonSoulNpc_ChkAnima(4200007,2)
end
tNpcGossip[23735]["OptionChkFunc328"] = function ()
	return DragonSoulNpc_ChkAnima(4200008,2)
end
tNpcGossip[23735]["OptionChkFunc329"] = function ()
	return DragonSoulNpc_ChkAnima(4200009,2)
end
tNpcGossip[23735]["OptionChkFunc3210"] = function ()
	return DragonSoulNpc_ChkAnima(4200010,2)
end
tNpcGossip[23735]["OptionChkFunc3211"] = function ()
	return DragonSoulNpc_ChkAnima(4200011,2)
end
tNpcGossip[23735]["OptionChkFunc3212"] = function ()
	return DragonSoulNpc_ChkAnima(4200012,2)
end
tNpcGossip[23735]["OptionChkFunc3298"] = function ()
	return not DragonSoulNpc_ChkAnima(0,2,1)
end

--前往异界使用双鼎炼魂
tNpcGossip[23735]["Text3-3"] = {331,332,333,334}
tNpcGossip[23735]["tOption3-3"] = {331,332,333,334}
tNpcGossip[23735]["OptionFunc331"] = "DoubleStove_Trans"
tNpcGossip[23735]["OptionPoint332"] = "4-7"
tNpcGossip[23735]["OptionPoint333"] = "2-1"

--我想了解详细规则
tNpcGossip[23735]["Text4-1"] = {411,412}
tNpcGossip[23735]["tOption4-1"] = {411}
tNpcGossip[23735]["OptionPoint411"] = "4-2"

--了解灵珠重铸成功与失败情况
tNpcGossip[23735]["Text4-2"] = {421,422}
tNpcGossip[23735]["tOption4-2"] = {421}
tNpcGossip[23735]["OptionPoint421"] = "4-1"

--灵珠不足
tNpcGossip[23735]["Text4-3"] = {431}
tNpcGossip[23735]["tOption4-3"] = {431}

--我想了解详细规则
tNpcGossip[23735]["Text4-4"] = {441,442}
tNpcGossip[23735]["tOption4-4"] = {441,442,443}
tNpcGossip[23735]["OptionPoint441"] = "4-5"
tNpcGossip[23735]["OptionFunc442"] = "DragonSoulNpc_OpenWeb"
tNpcGossip[23735]["OptionPoint443"] = "3-2"

--了解灵珠重铸成功与失败情况
tNpcGossip[23735]["Text4-5"] = {451,452}
tNpcGossip[23735]["tOption4-5"] = {451,452}
tNpcGossip[23735]["OptionPoint451"] = "3-2"

--灵珠不足
tNpcGossip[23735]["Text4-6"] = {461}
tNpcGossip[23735]["tOption4-6"] = {461}

--我想了解详细规则
tNpcGossip[23735]["Text4-7"] = {471,472,473}
tNpcGossip[23735]["tOption4-7"] = {471,472,473}
tNpcGossip[23735]["OptionPoint471"] = "4-8"
tNpcGossip[23735]["OptionFunc472"] = "DragonSoulNpc_OpenWeb"
tNpcGossip[23735]["OptionPoint473"] = "3-3"

--了解灵珠重铸成功与失败情况
tNpcGossip[23735]["Text4-8"] = {481,482}
tNpcGossip[23735]["tOption4-8"] = {481,482}
tNpcGossip[23735]["OptionPoint481"] = "3-3"

--取出灵珠
tNpcGossip[23735]["Text4-9"] = {491}
tNpcGossip[23735]["tOption4-9"] = {491}
tNpcGossip[23735]["OptionFunc491"] = "DragonSoulNpc_GetSoulBack"
----------------------------------陷阱部分----------------------------------
tTrap[2277] = tTrap[2277] or {}
tTrap[2277]["Function"] = function(nTrapId,nTrapType)
	DragonSoulNpc_GoBackToCity(nTrapId,nTrapType)
end

-- tTrap[2279] = tTrap[2277]


----------------------------------中奖频道----------------------------------
function DragonSoulNpc_PrizeBroadcast(nUserName,nMainType,nSubType,nData1,nData2)
	--灵珠升级
	-- （大于等于4级的出现的跳阶，左下角飘屏）（大于等于7级出现的跳阶，左下角和中间飘屏）
	-- （获得9阶以及以上，左下角飘屏）（获得13阶以及以上，左下角和中间飘屏）
	if nMainType == 1 then
		if nData1 >= 3 then
			local sFun = "FF03FA01 </F>User_OpenDialog</N>930"
			local sText1 = string.format(tDragonSoulConnectNpc_Text["STR_Dragon_Soul"],GetServerName(0),nUserName,Get_ItemtypeName(nData2),Get_ItemtypeName(nData2+nData1),sFun)
			
			if nData2 >= 4200003 then
				return Sys_DragonSoulUpLevToAllServer(sText1,nil,1)
			elseif nData2 >= 4200002 then
				if nData1 + nData2 >= 4200004 then
					return Sys_DragonSoulUpLevToAllServer(sText1,nil,1)
				else
					return Sys_DragonSoulUpLevToAllServer(sText1,nil,0)
				end
			else
				return false
			end
		elseif nData1 >= 0 then
			local sFun = "FF03FA01 </F>User_OpenDialog</N>930"
			local sText1 = string.format(tDragonSoulConnectNpc_Text["STR_Dragon_Soul"],GetServerName(0),nUserName,Get_ItemtypeName(nData2),Get_ItemtypeName(nData2+nData1),sFun)
			if nData1 + nData2 >= 4200004 then
				return Sys_DragonSoulUpLevToAllServer(sText1,nil,1)
			elseif nData1 + nData2 >= 4200003 then
				return Sys_DragonSoulUpLevToAllServer(sText1,nil,0)
			else
				return false
			end
		end
		
	end
	
	
	--德州
	if nMainType == 2 then
		--金币中奖
		if nSubType == 0 and nData2 >= 100000000 then
			local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>6297"
			local sText2 = string.format(tDragonSoulConnectNpc_Text["STR_Texas_Money"],GetServerName(nData1),nUserName,nData2,sFun)
			if nData2 >= 300000000 then
				return Sys_DragonSoulUpLevToAllServer(sText2,nil,1)
			end
			return Sys_DragonSoulUpLevToAllServer(sText2,nil,0)
		end
		
		if nSubType == 1 and nData2 >= 5000 then
			local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>6297"
			local sText3 = string.format(tDragonSoulConnectNpc_Text["STR_Texas_EMoney"],GetServerName(nData1),nUserName,nData2,sFun)
			if nData2 >= 10000 then
				return Sys_DragonSoulUpLevToAllServer(sText3,nil,1)
			end
			return Sys_DragonSoulUpLevToAllServer(sText3,nil,0)
		end
		
		
	end
	
	-- 智取威虎山
	if nMainType == 3 then
		if nSubType == 0 and nData1 >= 200000000 then
			local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>6297"
			local sText4 = string.format(tDragonSoulConnectNpc_Text["STR_Newslot_Money"],GetServerName(0),nUserName,nData1,sFun)
			if nData1 >= 500000000 then
				return Sys_DragonSoulUpLevToAllServer(sText4,nil,1)
			end
			return Sys_DragonSoulUpLevToAllServer(sText4,nil,0)
		end
		
		if nSubType == 1 and nData1 >= 2000 then
			local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>6297"
			local sText5 = string.format(tDragonSoulConnectNpc_Text["STR_Newslot_EMoney"],GetServerName(0),nUserName,nData1,sFun)
			if nData1 >= 5000 then
				return Sys_DragonSoulUpLevToAllServer(sText5,nil,1)
			end
			return Sys_DragonSoulUpLevToAllServer(sText5,nil,0)
		end
		
		if nSubType == 2 and nData1 >= 1000000 then
			local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>6297"
			local sText6 = string.format(tDragonSoulConnectNpc_Text["STR_Newslot_SixMoney"],GetServerName(0),nUserName,nData1,sFun)
			return Sys_DragonSoulUpLevToAllServer(sText6,nil,1)
		end
		
		if nSubType == 3 and nData1 >= 100 then
			local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>6297"
			local sText7 = string.format(tDragonSoulConnectNpc_Text["STR_Newslot_SixEMoney"],GetServerName(0),nUserName,nData1,sFun)
			return Sys_DragonSoulUpLevToAllServer(sText7,nil,1)
		end
		
	end
	
	if nMainType == 4 and nData2 > 0 then
		if nData1 > 0 then
			local sFun = "FF03FA01 </F>NpcPosition_PathFind</N>923"
			local sText8 = string.format(tDragonSoulConnectNpc_Text["STR_Lottery_Ticket"],GetServerName(0),nUserName,Get_ItemtypeName(nData1),sFun)
			return Sys_DragonSoulUpLevToAllServer(sText8,nil,0)
		end 
	end
	
	if nMainType == 5 and nData2 > 0 then
		if nData1 > 0 then
			local sFun = "FF03FA01 </F>User_OpenDialog</N>852"
			local sText9 = string.format(tDragonSoulConnectNpc_Text["STR_Lottery_Pool"],GetServerName(0),nUserName,Get_ItemtypeName(nData1),sFun)
			return Sys_DragonSoulUpLevToAllServer(sText9,nil,0)
		end 
	end
	
	-- if nMainType == 4 or nMainType == 5 or nMainType ==1 or nMainType == 3 then
		-- local sContent = string.format(tDragonSoulConnectNpc_Text["UpLevRank"],nUserName,nMainType,nSubType,nData1,nData2)
		-- if nData1>= 2 then
			-- return Sys_DragonSoulUpLevToAllServer(sContent)
		-- end
		-- return Sys_DragonSoulUpLevToHomeServer(sContent)
	-- end
end


tProcessPrizeBroadcast["tFunction"] = tProcessPrizeBroadcast["tFunction"] or {}
table.insert(tProcessPrizeBroadcast["tFunction"],DragonSoulNpc_PrizeBroadcast)
