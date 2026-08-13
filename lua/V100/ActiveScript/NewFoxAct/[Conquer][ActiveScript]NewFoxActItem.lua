------------------------------------------------------------------------------------
--Name:		190215[简体征服][活动脚本]狐狸骑宠活动制作-物品部分
--Purpose:	狐狸骑宠活动制作-物品部分
--Creator: 	严振飞
--Created:	2019/2/15
------------------------------------------------------------------------------------
-- 命名规则：
-- NewFoxActItem_

-- Log id : 12001301

-- 掩码说明：
--190,27 记录是否背包信(3320218)
--192,19 记录玩家对话NPC领取的丹药数
--53291  DATA0每小时全服限量
--       Data1每天全服限量
--       Data2每小时全服限量开关
--       Data3每天全服限量开关


-- 坐骑外套
-- 200637	光效坐骑（金色）
-- 200638	光效坐骑（红黑色）
-- 200639	光效坐骑（绿色）
-- 200640	光效坐骑（粉色）
-- 200641	非光效坐骑（红黑色）
-- 200642	非光效坐骑（绿色）
-- 200643	非光效坐骑（粉色）

-- 200595	昊天玄狐（3星）-- 白色
-- 200596	昊天玄狐【魅幻版】（5星）-- 白色




------------------------------------数据部分配置------------------------------------

local tNewFoxActItem_Data = {}
	tNewFoxActItem_Data["Level"] = 80
	tNewFoxActItem_Data["Mete"]  = 0
	tNewFoxActItem_Data["Strength"] = 98000
	tNewFoxActItem_Data["NpcId"] = {}
	tNewFoxActItem_Data["NpcId"][1]= 23804 -- 涂山雅雅
	tNewFoxActItem_Data["NpcId"][2]= 23807 -- 涂山美美
	tNewFoxActItem_Data["NpcId"][3]= 23927  --迷谷小仙
	
	tNewFoxActItem_Data[23804] = {}
	tNewFoxActItem_Data[23804]["MapId"] = 1002
	tNewFoxActItem_Data[23804]["PosX"]  = 328
	tNewFoxActItem_Data[23804]["PosY"]  = 440
	
	tNewFoxActItem_Data["GlobalId"] = 53291 --限量
	tNewFoxActItem_Data["ExchangeNum"] = {}
	tNewFoxActItem_Data["ExchangeNum"][1] = 15
	tNewFoxActItem_Data["ExchangeNum"][2] = 69
	
	tNewFoxActItem_Data["CompoundId"] = {3320732,3320733,3320744}
	--狐狸坐骑礼包
	tNewFoxActItem_Data["ItemId"] = {}
	--无光效
	tNewFoxActItem_Data["ItemId"][1] = {3320734,3320735,3320736,3320745}
	--有光效
	tNewFoxActItem_Data["ItemId"][2] = {3320731,3320732,3320733,3320744}
	--碎片ID
	tNewFoxActItem_Data["Debris"] = {3312192,3312199}
	--boss数据
	tNewFoxActItem_Data["Boss"] = {}
	tNewFoxActItem_Data["Boss"]["Id"] = 1044
	tNewFoxActItem_Data["Boss"]["GenId"] = 27022
	tNewFoxActItem_Data["Boss"]["MapId"] = 10459
	tNewFoxActItem_Data["Boss"]["Posx"] = 250
	tNewFoxActItem_Data["Boss"]["Posy"] = 205
	tNewFoxActItem_Data["Boss"]["DroItem1"] = 3320217
	tNewFoxActItem_Data["Boss"]["DroItemNum1"] = 20
	tNewFoxActItem_Data["Boss"]["DroItem2"] = 3320169
	tNewFoxActItem_Data["Boss"]["DroItemNum2"] = 30
	tNewFoxActItem_Data["Boss"]["DroItem3"] = 3320170
	tNewFoxActItem_Data["Boss"]["DroItemNum3"] = 10
	tNewFoxActItem_Data["Boss"]["DroItem4"] = 3312200
	tNewFoxActItem_Data["Boss"]["DroItemNum4"] = 10
	
	
	tNewFoxActItem_Data["Boss"]["ExistTime"] = 300
	tNewFoxActItem_Data["Boss"]["Cellx"] = 10
	
	
local tNewFoxActItem_Log = {}
	tNewFoxActItem_Log["DelItem"] = "0,0,%d,%d,12001301,2,0,0"
	tNewFoxActItem_Log["KilMonster"] = "0,0,0,1044,12001301,4[2],0,0"
	tNewFoxActItem_Log["Strength"] = "0,0,12,98000,12001301,4[2],0,0"
	
local tNewFoxActItem_Stc = {}
	tNewFoxActItem_Stc[1] = {}
	tNewFoxActItem_Stc[1]["EventType"] = 192
	tNewFoxActItem_Stc[1]["DataType"] = 19
	
	tNewFoxActItem_Stc[2] = {}
	tNewFoxActItem_Stc[2]["EventType"] = 193
	tNewFoxActItem_Stc[2]["DataType"] = 07
	
	tNewFoxActItem_Stc[3] = {}
	tNewFoxActItem_Stc[3]["EventType"] = 197
	tNewFoxActItem_Stc[3]["DataType"] = 00
------------------------------------奖励部分------------------------------------
	local tNewFoxActItem_Reward = {}
	-- ===小狐狸随机奖励
	tNewFoxActItem_Reward[1] = {}
	tNewFoxActItem_Reward[1]["ItemChanceSum"] = 10000
	tNewFoxActItem_Reward[1]["LogId"] = 12001301
	-- 兑换道具 - 9.00%
	tNewFoxActItem_Reward[1][1] = {}
	tNewFoxActItem_Reward[1][1]["RandomItemChanceType"] = 2
	tNewFoxActItem_Reward[1][1]["ItemChance"] = 900
	tNewFoxActItem_Reward[1][1]["RewardItem"] = {}
	tNewFoxActItem_Reward[1][1]["RewardItem"][1] = {}
	tNewFoxActItem_Reward[1][1]["RewardItem"][1]["Id"] = 3320217 -- 【库】利爪鹰魔的爪子[属性:9]【表格】兑换道具
	tNewFoxActItem_Reward[1][1]["RewardItem"][1]["Attr"] = "0 1" -- 利爪鹰魔的爪子*1
	tNewFoxActItem_Reward[1][1]["RewardEffect"] = {}
	tNewFoxActItem_Reward[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewFoxActItem_Reward[1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 初级丹 - 75.00%
	tNewFoxActItem_Reward[1][2] = {}
	tNewFoxActItem_Reward[1][2]["RandomItemChanceType"] = 2
	tNewFoxActItem_Reward[1][2]["ItemChance"] = 7500
	tNewFoxActItem_Reward[1][2]["RewardItem"] = {}
	tNewFoxActItem_Reward[1][2]["RewardItem"][1] = {}
	tNewFoxActItem_Reward[1][2]["RewardItem"][1]["Id"] = 3320169 -- 【库】合气丹[属性:9]【表格】初级丹
	tNewFoxActItem_Reward[1][2]["RewardItem"][1]["Attr"] = "0 1" -- 合气丹*1
	tNewFoxActItem_Reward[1][2]["RewardEffect"] = {}
	tNewFoxActItem_Reward[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewFoxActItem_Reward[1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 中级丹 - 15.00%
	tNewFoxActItem_Reward[1][3] = {}
	tNewFoxActItem_Reward[1][3]["RandomItemChanceType"] = 2
	tNewFoxActItem_Reward[1][3]["ItemChance"] = 1500
	tNewFoxActItem_Reward[1][3]["RewardItem"] = {}
	tNewFoxActItem_Reward[1][3]["RewardItem"][1] = {}
	tNewFoxActItem_Reward[1][3]["RewardItem"][1]["Id"] = 3320170 -- 【库】造化灵丹[属性:9]【表格】中级丹
	tNewFoxActItem_Reward[1][3]["RewardItem"][1]["Attr"] = "0 1" -- 造化灵丹*1
	tNewFoxActItem_Reward[1][3]["RewardEffect"] = {}
	tNewFoxActItem_Reward[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewFoxActItem_Reward[1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级丹 - 1.00%
	tNewFoxActItem_Reward[1][4] = {}
	tNewFoxActItem_Reward[1][4]["RandomItemChanceType"] = 2
	tNewFoxActItem_Reward[1][4]["ItemChance"] = 100
	tNewFoxActItem_Reward[1][4]["GlobalId"] = 53291
	tNewFoxActItem_Reward[1][4]["MaxData"] = 1
	tNewFoxActItem_Reward[1][4]["FullIndex"] = 1
	tNewFoxActItem_Reward[1][4]["Pos"] = 0 
	tNewFoxActItem_Reward[1][4]["RewardItem"] = {}
	tNewFoxActItem_Reward[1][4]["RewardItem"][1] = {}
	tNewFoxActItem_Reward[1][4]["RewardItem"][1]["Id"] = 3320171 -- 【库】九花玉露丸[属性:9]【表格】高级丹
	tNewFoxActItem_Reward[1][4]["RewardItem"][1]["Attr"] = "0 1" -- 九花玉露丸*1
	tNewFoxActItem_Reward[1][4]["RewardEffect"] = {}
	tNewFoxActItem_Reward[1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewFoxActItem_Reward[1][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===怪物掉落
	tNewFoxActItem_Reward[2] = {}
	tNewFoxActItem_Reward[2]["ItemChanceSum"] = 10000
	tNewFoxActItem_Reward[2]["LogId"] = 12001301
	-- 洗赠道具 - 1.00%
	tNewFoxActItem_Reward[2][1] = {}
	tNewFoxActItem_Reward[2][1]["RandomItemChanceType"] = 2
	tNewFoxActItem_Reward[2][1]["ItemChance"] = 100
	tNewFoxActItem_Reward[2][1]["GlobalId"] = 53291
	tNewFoxActItem_Reward[2][1]["MaxData"] = 1
	tNewFoxActItem_Reward[2][1]["FullIndex"] = 3
	tNewFoxActItem_Reward[2][1]["Pos"] = 1
	tNewFoxActItem_Reward[2][1]["RewardItem"] = {}
	tNewFoxActItem_Reward[2][1]["RewardItem"][1] = {}
	tNewFoxActItem_Reward[2][1]["RewardItem"][1]["Id"] = 3320172 -- 【库】星河之泪[属性:9]【表格】洗赠道具
	tNewFoxActItem_Reward[2][1]["RewardItem"][1]["Attr"] = "0 1" -- 星河之泪*1
	tNewFoxActItem_Reward[2][1]["RewardEffect"] = {}
	tNewFoxActItem_Reward[2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewFoxActItem_Reward[2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 兑换道具 - 5.00%
	tNewFoxActItem_Reward[2][2] = {}
	tNewFoxActItem_Reward[2][2]["RandomItemChanceType"] = 2
	tNewFoxActItem_Reward[2][2]["ItemChance"] = 500
	tNewFoxActItem_Reward[2][2]["RewardItem"] = {}
	tNewFoxActItem_Reward[2][2]["RewardItem"][1] = {}
	tNewFoxActItem_Reward[2][2]["RewardItem"][1]["Id"] = 3320217 -- 【库】利爪鹰魔的爪子[属性:9]【表格】兑换道具
	tNewFoxActItem_Reward[2][2]["RewardItem"][1]["Attr"] = "0 1" -- 利爪鹰魔的爪子*1
	tNewFoxActItem_Reward[2][2]["RewardEffect"] = {}
	tNewFoxActItem_Reward[2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewFoxActItem_Reward[2][2]["RewardEffect"]["Effect"] = "angelwing"
	tNewFoxActItem_Reward[2][2]["EventType"] = 193
	tNewFoxActItem_Reward[2][2]["DataType"] = 07
	tNewFoxActItem_Reward[2][2]["RewardData"] = 200
	tNewFoxActItem_Reward[2][2]["FullIndex"] = 3
	tNewFoxActItem_Reward[2][2]["RewardDelay"] = 1
	tNewFoxActItem_Reward[2][2]["RewardTimeType"] = 4
	-- 不掉落 - 94.00%
	tNewFoxActItem_Reward[2][3] = {}
	tNewFoxActItem_Reward[2][3]["RandomItemChanceType"] = 2
	tNewFoxActItem_Reward[2][3]["ItemChance"] = 9400

	-- ===合气丹礼包
	-- ===索引:tNewFoxActItem_Reward[3312722]
	-- ===删除:3312722,1
	tNewFoxActItem_Reward[3312722] = {}
	tNewFoxActItem_Reward[3312722]["LogId"] = 12001301
	tNewFoxActItem_Reward[3312722]["DeleteItem"] = {}
	tNewFoxActItem_Reward[3312722]["DeleteItem"][1] = {}
	tNewFoxActItem_Reward[3312722]["DeleteItem"][1]["Id"] = 3312722 -- 【库】HarmonyPillPack[属性:9]
	tNewFoxActItem_Reward[3312722]["RewardItem"] = {}
	tNewFoxActItem_Reward[3312722]["RewardItem"][1] = {}
	tNewFoxActItem_Reward[3312722]["RewardItem"][1]["Id"] = 3320169 -- 【库】HarmonyPill[属性:9], 【表格】HarmonyPill
	tNewFoxActItem_Reward[3312722]["RewardItem"][1]["Attr"] = "0 3" -- HarmonyPill*3
	tNewFoxActItem_Reward[3312722]["RewardEffect"] = {}
	tNewFoxActItem_Reward[3312722]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewFoxActItem_Reward[3312722]["RewardEffect"]["Effect"] = "angelwing"

------------------------------------
--外套换丹药
	-- ===3星狐狸，丹药奖励
	local tNewFoxActItem_ChangeItem  = {}
	tNewFoxActItem_ChangeItem[1] = {}
	tNewFoxActItem_ChangeItem[1]["LogId"] = 12001301
	tNewFoxActItem_ChangeItem[1]["RewardItem"] = {}
	tNewFoxActItem_ChangeItem[1]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeItem[1]["RewardItem"][1]["Id"] = 3320171 -- 【库】九花玉露丸[属性:9]【表格】高级丹药
	tNewFoxActItem_ChangeItem[1]["RewardItem"][1]["Attr"] = "0 15" -- 九花玉露丸*15


	-- ===5星狐狸，丹药奖励
	tNewFoxActItem_ChangeItem[2] = {}
	tNewFoxActItem_ChangeItem[2]["LogId"] = 12001301
	tNewFoxActItem_ChangeItem[2]["RewardItem"] = {}
	tNewFoxActItem_ChangeItem[2]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeItem[2]["RewardItem"][1]["Id"] = 3320171 -- 【库】九花玉露丸[属性:9]【表格】高级丹药
	tNewFoxActItem_ChangeItem[2]["RewardItem"][1]["Attr"] = "0 69" -- 九花玉露丸*69

--外套换外套
	-- ===梦魇魅狐礼包
	-- ===删除: 3320734,1
	tNewFoxActItem_ChangeItem[3320734] = {}
	tNewFoxActItem_ChangeItem[3320734]["LogId"] = 12001301
	tNewFoxActItem_ChangeItem[3320734]["DeleteItem"] = {}
	tNewFoxActItem_ChangeItem[3320734]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320734]["DeleteItem"][1]["Id"] = 3320734 -- 【库】梦魇魅狐礼包[属性:9]
	tNewFoxActItem_ChangeItem[3320734]["RewardItem"] = {}
	tNewFoxActItem_ChangeItem[3320734]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320734]["RewardItem"][1]["Id"] = 200641 -- 【库】梦魇魅狐[属性:0]【表格】梦魇魅狐
	tNewFoxActItem_ChangeItem[3320734]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑梦魇魅狐(赠)*1


	-- ===碧霄灵狐礼包
	-- ===删除: 3320735,1
	tNewFoxActItem_ChangeItem[3320735] = {}
	tNewFoxActItem_ChangeItem[3320735]["LogId"] = 12001301
	tNewFoxActItem_ChangeItem[3320735]["DeleteItem"] = {}
	tNewFoxActItem_ChangeItem[3320735]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320735]["DeleteItem"][1]["Id"] = 3320735 -- 【库】碧霄灵狐礼包[属性:9]
	tNewFoxActItem_ChangeItem[3320735]["RewardItem"] = {}
	tNewFoxActItem_ChangeItem[3320735]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320735]["RewardItem"][1]["Id"] = 200642 -- 【库】碧霄灵狐[属性:0]【表格】碧霄灵狐
	tNewFoxActItem_ChangeItem[3320735]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑碧霄灵狐(赠)*1


	-- ===幻月仙狐礼包
	-- ===删除: 3320736,1
	tNewFoxActItem_ChangeItem[3320736] = {}
	tNewFoxActItem_ChangeItem[3320736]["LogId"] = 12001301
	tNewFoxActItem_ChangeItem[3320736]["DeleteItem"] = {}
	tNewFoxActItem_ChangeItem[3320736]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320736]["DeleteItem"][1]["Id"] = 3320736 -- 【库】幻月仙狐礼包[属性:9]
	tNewFoxActItem_ChangeItem[3320736]["RewardItem"] = {}
	tNewFoxActItem_ChangeItem[3320736]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320736]["RewardItem"][1]["Id"] = 200643 -- 【库】幻月仙狐[属性:0]【表格】幻月仙狐
	tNewFoxActItem_ChangeItem[3320736]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑幻月仙狐(赠)*1



	-- ===昊天玄狐礼包
	-- ===删除: 3320745,1
	tNewFoxActItem_ChangeItem[3320745] = {}
	tNewFoxActItem_ChangeItem[3320745]["LogId"] = 12001301
	tNewFoxActItem_ChangeItem[3320745]["DeleteItem"] = {}
	tNewFoxActItem_ChangeItem[3320745]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320745]["DeleteItem"][1]["Id"] = 3320745 -- 【库】昊天玄狐礼包[属性:9]
	tNewFoxActItem_ChangeItem[3320745]["RewardItem"] = {}
	tNewFoxActItem_ChangeItem[3320745]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320745]["RewardItem"][1]["Id"] = 200595 -- 【库】昊天玄狐[属性:0]【表格】昊天玄狐
	tNewFoxActItem_ChangeItem[3320745]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑昊天玄狐(赠)*1



	-- ===梦魇魅狐【魅影版】礼包
	-- ===删除: 3320731,1
	tNewFoxActItem_ChangeItem[3320731] = {}
	tNewFoxActItem_ChangeItem[3320731]["LogId"] = 12001301
	tNewFoxActItem_ChangeItem[3320731]["DeleteItem"] = {}
	tNewFoxActItem_ChangeItem[3320731]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320731]["DeleteItem"][1]["Id"] = 3320731 -- 【库】梦魇魅狐【魅影版】礼包[属性:9]
	tNewFoxActItem_ChangeItem[3320731]["RewardItem"] = {}
	tNewFoxActItem_ChangeItem[3320731]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320731]["RewardItem"][1]["Id"] = 200638 -- 【库】梦魇魅狐【魅影版】[属性:0]【表格】梦魇魅狐【魅影版】
	tNewFoxActItem_ChangeItem[3320731]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑梦魇魅狐【魅影版】*1


	-- ===碧霄灵狐【缥缈版】礼包
	-- ===删除: 3320732,1
	tNewFoxActItem_ChangeItem[3320732] = {}
	tNewFoxActItem_ChangeItem[3320732]["LogId"] = 12001301
	tNewFoxActItem_ChangeItem[3320732]["DeleteItem"] = {}
	tNewFoxActItem_ChangeItem[3320732]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320732]["DeleteItem"][1]["Id"] = 3320732 -- 【库】碧霄灵狐【缥缈版】礼包[属性:9]
	tNewFoxActItem_ChangeItem[3320732]["RewardItem"] = {}
	tNewFoxActItem_ChangeItem[3320732]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320732]["RewardItem"][1]["Id"] = 200639 -- 【库】碧霄灵狐【缥缈版】[属性:0]【表格】碧霄灵狐【缥缈版】
	tNewFoxActItem_ChangeItem[3320732]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑碧霄灵狐【缥缈版】*1


	-- ===幻月仙狐【迷情版】礼包
	-- ===删除: 3320733,1
	tNewFoxActItem_ChangeItem[3320733] = {}
	tNewFoxActItem_ChangeItem[3320733]["LogId"] = 12001301
	tNewFoxActItem_ChangeItem[3320733]["DeleteItem"] = {}
	tNewFoxActItem_ChangeItem[3320733]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320733]["DeleteItem"][1]["Id"] = 3320733 -- 【库】幻月仙狐【迷情版】礼包[属性:9]
	tNewFoxActItem_ChangeItem[3320733]["RewardItem"] = {}
	tNewFoxActItem_ChangeItem[3320733]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320733]["RewardItem"][1]["Id"] = 200640 -- 【库】幻月仙狐【迷情版】[属性:0]【表格】幻月仙狐【迷情版】
	tNewFoxActItem_ChangeItem[3320733]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑幻月仙狐【迷情版】*1
	-- ===昊天玄狐【魅幻版】礼包
	-- ===删除: 3320744,1
	tNewFoxActItem_ChangeItem[3320744] = {}
	tNewFoxActItem_ChangeItem[3320744]["LogId"] = 12001301
	tNewFoxActItem_ChangeItem[3320744]["DeleteItem"] = {}
	tNewFoxActItem_ChangeItem[3320744]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320744]["DeleteItem"][1]["Id"] = 3320744 -- 【库】昊天玄狐【魅幻版】礼包[属性:9]
	tNewFoxActItem_ChangeItem[3320744]["RewardItem"] = {}
	tNewFoxActItem_ChangeItem[3320744]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeItem[3320744]["RewardItem"][1]["Id"] = 200596 -- 【库】昊天玄狐【魅幻版】[属性:0]【表格】昊天玄狐【魅幻版】
	tNewFoxActItem_ChangeItem[3320744]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑昊天玄狐【魅幻版】(赠)*1
	
	-- ===狐狸水晶
	-- ===索引:3312323
	-- ===删除: 3312323
	tNewFoxActItem_ChangeItem[3312323] = {}
	tNewFoxActItem_ChangeItem[3312323]["LogId"] = 12001301
	tNewFoxActItem_ChangeItem[3312323]["DeleteItem"] = {}
	tNewFoxActItem_ChangeItem[3312323]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeItem[3312323]["DeleteItem"][1]["Id"] = 3312323 -- 【库】狐妖水晶[属性:9]
	tNewFoxActItem_ChangeItem[3312323]["RewardItem"] = {}
	tNewFoxActItem_ChangeItem[3312323]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeItem[3312323]["RewardItem"][1]["Id"] = 200638 -- 【库】魅影魔狐【修罗版】[属性:0]【表格】魅影魔狐【修罗版】
	tNewFoxActItem_ChangeItem[3312323]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑魅影魔狐【修罗版】*1



---------------------------------------------------------------
--过期给气力

local tNewFoxActItem_ChangeStrengthValue = {}
	-- ===3320169
	tNewFoxActItem_ChangeStrengthValue[3320169] ={}
	tNewFoxActItem_ChangeStrengthValue[3320169]["LogId"] = 12001301
	tNewFoxActItem_ChangeStrengthValue[3320169]["RewardStrengthValue"] = {}
	tNewFoxActItem_ChangeStrengthValue[3320169]["RewardStrengthValue"]["Value"] = 250 -- 气力值


	-- ===3320170
	tNewFoxActItem_ChangeStrengthValue[3320170] = {}
	tNewFoxActItem_ChangeStrengthValue[3320170]["LogId"] = 12001301
	tNewFoxActItem_ChangeStrengthValue[3320170]["RewardStrengthValue"] = {}
	tNewFoxActItem_ChangeStrengthValue[3320170]["RewardStrengthValue"]["Value"] = 1000 -- 气力值



	-- ===3320171
	tNewFoxActItem_ChangeStrengthValue[3320171] = {}
	tNewFoxActItem_ChangeStrengthValue[3320171]["LogId"] = 12001301
	tNewFoxActItem_ChangeStrengthValue[3320171]["RewardStrengthValue"] = {}
	tNewFoxActItem_ChangeStrengthValue[3320171]["RewardStrengthValue"]["Value"] = 2000 -- 气力值

--碎片过期给气力
	-- ===3320169
	tNewFoxActItem_ChangeStrengthValue["NoTime"] ={}
	tNewFoxActItem_ChangeStrengthValue["NoTime"]["LogId"] = 12001301
	tNewFoxActItem_ChangeStrengthValue["NoTime"]["RewardStrengthValue"] = {}
	tNewFoxActItem_ChangeStrengthValue["NoTime"]["RewardStrengthValue"]["Value"] = 100 -- 气力值
	
--碎片合成
	tNewFoxActItem_ChangeStrengthValue[3312192] = {}
	tNewFoxActItem_ChangeStrengthValue[3312192]["LogId"] = 12001301
	tNewFoxActItem_ChangeStrengthValue[3312192]["DeleteItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312192]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312192]["DeleteItem"][1]["Id"] = 3312192
	tNewFoxActItem_ChangeStrengthValue[3312192]["DeleteItem"][1]["ItemNum"] = 20
	tNewFoxActItem_ChangeStrengthValue[3312192]["RewardItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312192]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312192]["RewardItem"][1]["Id"] = 200595
	tNewFoxActItem_ChangeStrengthValue[3312192]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNewFoxActItem_ChangeStrengthValue[3312192]["RewardEffect"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312192]["RewardEffect"]["SzObj"] = "self"
	tNewFoxActItem_ChangeStrengthValue[3312192]["RewardEffect"]["Effect"] = "angelwing"
	
	tNewFoxActItem_ChangeStrengthValue[3312193] = {}
	tNewFoxActItem_ChangeStrengthValue[3312193]["LogId"] = 12001301
	tNewFoxActItem_ChangeStrengthValue[3312193]["DeleteItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312193]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312193]["DeleteItem"][1]["Id"] = 3312193
	tNewFoxActItem_ChangeStrengthValue[3312193]["DeleteItem"][1]["ItemNum"] = 20
	tNewFoxActItem_ChangeStrengthValue[3312193]["RewardItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312193]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312193]["RewardItem"][1]["Id"] = 200643
	tNewFoxActItem_ChangeStrengthValue[3312193]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNewFoxActItem_ChangeStrengthValue[3312193]["RewardEffect"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312193]["RewardEffect"]["SzObj"] = "self"
	tNewFoxActItem_ChangeStrengthValue[3312193]["RewardEffect"]["Effect"] = "angelwing"
	
	tNewFoxActItem_ChangeStrengthValue[3312194] = {}
	tNewFoxActItem_ChangeStrengthValue[3312194]["LogId"] = 12001301
	tNewFoxActItem_ChangeStrengthValue[3312194]["DeleteItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312194]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312194]["DeleteItem"][1]["Id"] = 3312194
	tNewFoxActItem_ChangeStrengthValue[3312194]["DeleteItem"][1]["ItemNum"] = 20
	tNewFoxActItem_ChangeStrengthValue[3312194]["RewardItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312194]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312194]["RewardItem"][1]["Id"] = 200642
	tNewFoxActItem_ChangeStrengthValue[3312194]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNewFoxActItem_ChangeStrengthValue[3312194]["RewardEffect"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312194]["RewardEffect"]["SzObj"] = "self"
	tNewFoxActItem_ChangeStrengthValue[3312194]["RewardEffect"]["Effect"] = "angelwing"
	
	tNewFoxActItem_ChangeStrengthValue[3312195] = {}
	tNewFoxActItem_ChangeStrengthValue[3312195]["LogId"] = 12001301
	tNewFoxActItem_ChangeStrengthValue[3312195]["DeleteItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312195]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312195]["DeleteItem"][1]["Id"] = 3312195
	tNewFoxActItem_ChangeStrengthValue[3312195]["DeleteItem"][1]["ItemNum"] = 20
	tNewFoxActItem_ChangeStrengthValue[3312195]["RewardItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312195]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312195]["RewardItem"][1]["Id"] = 200641
	tNewFoxActItem_ChangeStrengthValue[3312195]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tNewFoxActItem_ChangeStrengthValue[3312195]["RewardEffect"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312195]["RewardEffect"]["SzObj"] = "self"
	tNewFoxActItem_ChangeStrengthValue[3312195]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tNewFoxActItem_ChangeStrengthValue[3312196] = {}
	tNewFoxActItem_ChangeStrengthValue[3312196]["LogId"] = 12001301
	tNewFoxActItem_ChangeStrengthValue[3312196]["DeleteItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312196]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312196]["DeleteItem"][1]["Id"] = 3312196
	tNewFoxActItem_ChangeStrengthValue[3312196]["DeleteItem"][1]["ItemNum"] = 20
	tNewFoxActItem_ChangeStrengthValue[3312196]["RewardItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312196]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312196]["RewardItem"][1]["Id"] = 200596
	tNewFoxActItem_ChangeStrengthValue[3312196]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNewFoxActItem_ChangeStrengthValue[3312196]["RewardEffect"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312196]["RewardEffect"]["SzObj"] = "self"
	tNewFoxActItem_ChangeStrengthValue[3312196]["RewardEffect"]["Effect"] = "angelwing"
	
	tNewFoxActItem_ChangeStrengthValue[3312197] = {}
	tNewFoxActItem_ChangeStrengthValue[3312197]["LogId"] = 12001301
	tNewFoxActItem_ChangeStrengthValue[3312197]["DeleteItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312197]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312197]["DeleteItem"][1]["Id"] = 3312197
	tNewFoxActItem_ChangeStrengthValue[3312197]["DeleteItem"][1]["ItemNum"] = 20
	tNewFoxActItem_ChangeStrengthValue[3312197]["RewardItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312197]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312197]["RewardItem"][1]["Id"] = 200640
	tNewFoxActItem_ChangeStrengthValue[3312197]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNewFoxActItem_ChangeStrengthValue[3312197]["RewardEffect"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312197]["RewardEffect"]["SzObj"] = "self"
	tNewFoxActItem_ChangeStrengthValue[3312197]["RewardEffect"]["Effect"] = "angelwing"
	
	tNewFoxActItem_ChangeStrengthValue[3312198] = {}
	tNewFoxActItem_ChangeStrengthValue[3312198]["LogId"] = 12001301
	tNewFoxActItem_ChangeStrengthValue[3312198]["DeleteItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312198]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312198]["DeleteItem"][1]["Id"] = 3312198
	tNewFoxActItem_ChangeStrengthValue[3312198]["DeleteItem"][1]["ItemNum"] = 20
	tNewFoxActItem_ChangeStrengthValue[3312198]["RewardItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312198]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312198]["RewardItem"][1]["Id"] = 200639
	tNewFoxActItem_ChangeStrengthValue[3312198]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNewFoxActItem_ChangeStrengthValue[3312198]["RewardEffect"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312198]["RewardEffect"]["SzObj"] = "self"
	tNewFoxActItem_ChangeStrengthValue[3312198]["RewardEffect"]["Effect"] = "angelwing"
	
	tNewFoxActItem_ChangeStrengthValue[3312199] = {}
	tNewFoxActItem_ChangeStrengthValue[3312199]["LogId"] = 12001301
	tNewFoxActItem_ChangeStrengthValue[3312199]["DeleteItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312199]["DeleteItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312199]["DeleteItem"][1]["Id"] = 3312199
	tNewFoxActItem_ChangeStrengthValue[3312199]["DeleteItem"][1]["ItemNum"] = 20
	tNewFoxActItem_ChangeStrengthValue[3312199]["RewardItem"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312199]["RewardItem"][1] = {}
	tNewFoxActItem_ChangeStrengthValue[3312199]["RewardItem"][1]["Id"] = 200638
	tNewFoxActItem_ChangeStrengthValue[3312199]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tNewFoxActItem_ChangeStrengthValue[3312199]["RewardEffect"] = {}
	tNewFoxActItem_ChangeStrengthValue[3312199]["RewardEffect"]["SzObj"] = "self"
	tNewFoxActItem_ChangeStrengthValue[3312199]["RewardEffect"]["Effect"] = "angelwing"
---------------------------------------------------------------洗赠
	-- ===梦魇魅狐
	-- ===删除:3320172
	local tNewFoxActItem_RidGift = {}
	tNewFoxActItem_RidGift[200641] = {}
	tNewFoxActItem_RidGift[200641]["LogId"] = 12001301
	tNewFoxActItem_RidGift[200641]["DeleteItem"] = {}
	tNewFoxActItem_RidGift[200641]["DeleteItem"][1] = {}
	tNewFoxActItem_RidGift[200641]["DeleteItem"][1]["Id"] = 3320172 -- 【库】星河之泪[属性:9]
	tNewFoxActItem_RidGift[200641]["RewardItem"] = {}
	tNewFoxActItem_RidGift[200641]["RewardItem"][1] = {}
	tNewFoxActItem_RidGift[200641]["RewardItem"][1]["Id"] = 200641 -- 【库】梦魇魅狐[属性:0]【表格】梦魇魅狐【魅影版】
	tNewFoxActItem_RidGift[200641]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑梦魇魅狐【魅影版】*1


	-- ===碧霄灵狐
	-- ===删除:3320172
	tNewFoxActItem_RidGift[200642] = {}
	tNewFoxActItem_RidGift[200642]["LogId"] = 12001301
	tNewFoxActItem_RidGift[200642]["DeleteItem"] = {}
	tNewFoxActItem_RidGift[200642]["DeleteItem"][1] = {}
	tNewFoxActItem_RidGift[200642]["DeleteItem"][1]["Id"] = 3320172 -- 【库】星河之泪[属性:9]
	tNewFoxActItem_RidGift[200642]["RewardItem"] = {}
	tNewFoxActItem_RidGift[200642]["RewardItem"][1] = {}
	tNewFoxActItem_RidGift[200642]["RewardItem"][1]["Id"] = 200642 -- 【库】碧霄灵狐[属性:0]【表格】碧霄灵狐【缥缈版】
	tNewFoxActItem_RidGift[200642]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑碧霄灵狐【缥缈版】*1


	-- ===幻月仙狐
	-- ===删除:3320172
	tNewFoxActItem_RidGift[200643] = {}
	tNewFoxActItem_RidGift[200643]["LogId"] = 12001301
	tNewFoxActItem_RidGift[200643]["DeleteItem"] = {}
	tNewFoxActItem_RidGift[200643]["DeleteItem"][1] = {}
	tNewFoxActItem_RidGift[200643]["DeleteItem"][1]["Id"] = 3320172 -- 【库】星河之泪[属性:9]
	tNewFoxActItem_RidGift[200643]["RewardItem"] = {}
	tNewFoxActItem_RidGift[200643]["RewardItem"][1] = {}
	tNewFoxActItem_RidGift[200643]["RewardItem"][1]["Id"] = 200643 -- 【库】幻月仙狐【迷情版】[属性:0]【表格】幻月仙狐【迷情版】
	tNewFoxActItem_RidGift[200643]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑幻月仙狐【迷情版】*1


	-- ===昊天玄狐
	-- ===删除:3320172
	tNewFoxActItem_RidGift[200595] = {}
	tNewFoxActItem_RidGift[200595]["LogId"] = 12001301
	tNewFoxActItem_RidGift[200595]["DeleteItem"] = {}
	tNewFoxActItem_RidGift[200595]["DeleteItem"][1] = {}
	tNewFoxActItem_RidGift[200595]["DeleteItem"][1]["Id"] = 3320172 -- 【库】星河之泪[属性:9]
	tNewFoxActItem_RidGift[200595]["RewardItem"] = {}
	tNewFoxActItem_RidGift[200595]["RewardItem"][1] = {}
	tNewFoxActItem_RidGift[200595]["RewardItem"][1]["Id"] = 200595 -- 【库】昊天玄狐【魅幻版】[属性:0]【表格】昊天玄狐【魅幻版】
	tNewFoxActItem_RidGift[200595]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑昊天玄狐【魅幻版】*1
--------------huafei
local tNewFoxActItem_BuyWheel = {}
	-- ===购买转盘
	-- ===索引:tNewFoxActItem_BuyWheel[1]
	-- ===
	tNewFoxActItem_BuyWheel[1] = {}
	tNewFoxActItem_BuyWheel[1]["LogId"] = 12001301
	tNewFoxActItem_BuyWheel[1]["RewardItem"] = {}
	tNewFoxActItem_BuyWheel[1]["RewardItem"][1] = {}
	tNewFoxActItem_BuyWheel[1]["RewardItem"][1]["Id"] = 3312453 -- 【库】LunarWheel[属性:9], 【表格】LunarWheel
	tNewFoxActItem_BuyWheel[1]["RewardItem"][1]["Attr"] = "0 1" -- LunarWheel*1
	tNewFoxActItem_BuyWheel[1]["RewardItem"][2] = {}
	tNewFoxActItem_BuyWheel[1]["RewardItem"][2]["Id"] = 3312454 -- 【库】AzureWheel[属性:9], 【表格】AzureWheel
	tNewFoxActItem_BuyWheel[1]["RewardItem"][2]["Attr"] = "0 1" -- AzureWheel*1
	tNewFoxActItem_BuyWheel[1]["RewardItem"][3] = {}
	tNewFoxActItem_BuyWheel[1]["RewardItem"][3]["Id"] = 3312455 -- 【库】ShadowWheel[属性:9], 【表格】ShadowWheel
	tNewFoxActItem_BuyWheel[1]["RewardItem"][3]["Attr"] = "0 1" -- ShadowWheel*1
	tNewFoxActItem_BuyWheel[1]["RewardEMoney"] = {}
	tNewFoxActItem_BuyWheel[1]["RewardEMoney"]["Value"] = -1
	tNewFoxActItem_BuyWheel[1]["RewardEMoney"]["EmoneyLog"] = "350	22167	1	1	0	"

	-- ===补领转盘
	-- ===索引:tNewFoxActItem_BuyWheel[3312453]
	-- ===
	tNewFoxActItem_BuyWheel[3312453] = {}
	tNewFoxActItem_BuyWheel[3312453]["LogId"] = 12001301
	tNewFoxActItem_BuyWheel[3312453]["RewardItem"] = {}
	tNewFoxActItem_BuyWheel[3312453]["RewardItem"][1] = {}
	tNewFoxActItem_BuyWheel[3312453]["RewardItem"][1]["Id"] = 3312453 -- 【库】LunarWheel[属性:9], 【表格】LunarWheel
	tNewFoxActItem_BuyWheel[3312453]["RewardItem"][1]["Attr"] = "0 1" -- LunarWheel*1

	-- ===补领转盘
	-- ===索引:tNewFoxActItem_BuyWheel[3312454]
	-- ===
	tNewFoxActItem_BuyWheel[3312454] = {}
	tNewFoxActItem_BuyWheel[3312454]["LogId"] = 12001301
	tNewFoxActItem_BuyWheel[3312454]["RewardItem"] = {}
	tNewFoxActItem_BuyWheel[3312454]["RewardItem"][1] = {}
	tNewFoxActItem_BuyWheel[3312454]["RewardItem"][1]["Id"] = 3312454 -- 【库】AzureWheel[属性:9], 【表格】AzureWheel
	tNewFoxActItem_BuyWheel[3312454]["RewardItem"][1]["Attr"] = "0 1" -- AzureWheel*1

	-- ===补领转盘
	-- ===索引:tNewFoxActItem_BuyWheel[3312455]
	-- ===
	tNewFoxActItem_BuyWheel[3312455] = {}
	tNewFoxActItem_BuyWheel[3312455]["LogId"] = 12001301
	tNewFoxActItem_BuyWheel[3312455]["RewardItem"] = {}
	tNewFoxActItem_BuyWheel[3312455]["RewardItem"][1] = {}
	tNewFoxActItem_BuyWheel[3312455]["RewardItem"][1]["Id"] = 3312455 -- 【库】ShadowWheel[属性:9], 【表格】ShadowWheel
	tNewFoxActItem_BuyWheel[3312455]["RewardItem"][1]["Attr"] = "0 1" -- ShadowWheel*1

------------------------------------逻辑部分配置------------------------------------
-- 是否活动时间内，过期删除
function NewFoxActItem_DelItem(nItemId,sItemName,nUserId)
	local nUserId = nUserId or Get_UserId()
	local sTime = tActivityTime["NewFoxAct"]["ActiveTime"]
	
	-- 时间外删除
	if not Sys_ChkFullTime(sTime) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId,nil,nil,nUserId) and Item_DelAllItemByType(nItemId,nUserId) then
			
			Sys_SaveActionRewardLog(string.format(tNewFoxActItem_Log["DelItem"],nItemId,nNum),nUserId)
			local tReward = CommonFunc_Copy(tNewFoxActItem_ChangeStrengthValue[nItemId])
			tReward["RewardStrengthValue"]["Value"] = tReward["RewardStrengthValue"]["Value"] * nNum
			RewardTemplate_UseItemAndMsg(tReward)
			User_TalkChannel2005(tNewFoxActNpc_Text["MsgBox"]["DelItem"],nUserId)
		end
		return true
	end
	
	return false
end



-- 喂养道具，寻路至NPC
function NewFoxActItem_FindNpc(nItemId,sItemName,nIndex)
	-- 过期删除
	if NewFoxActItem_DelItem(nItemId,sItemName) then
		return
	end
	
	-- 寻路
	local nNpcId = tNewFoxActItem_Data["NpcId"][nIndex]
	NpcPosition_PathFind(nNpcId)
end

--每小时清除限量掩码
function NewFoxActItem_ClearGloba()
	local nGlobalId = tNewFoxActItem_Data["GlobalId"]
	local nData2 = Get_SysDynaGlobalData2(nGlobalId)
	if nData2 == 0 then 
		Sys_SetSynaGlobalData(nGlobalId,0,0)
		Sys_SetSynaGlobalData(nGlobalId,2,1)
	end
end
--每天清除限量掩码
function NewFoxActItem_ClearGlobaDay()
	local nGlobalId = tNewFoxActItem_Data["GlobalId"]
	local nData3 = Get_SysDynaGlobalData3(nGlobalId)
	if nData3 == 0 then 
		Sys_SetSynaGlobalData(nGlobalId,1,0)
		Sys_SetSynaGlobalData(nGlobalId,3,1)
	end
end
--清除每小时限量开关
function NewFoxActItem_ClearGlobaSwitch()
	local nGlobalId = tNewFoxActItem_Data["GlobalId"]
	local nData2 = Get_SysDynaGlobalData2(nGlobalId)
	if nData2 == 1 then 
		Sys_SetSynaGlobalData(nGlobalId,2,0)
	end
end

--每天清除限量开关
function NewFoxActItem_ClearGlobaDaySwitch()
	local nGlobalId = tNewFoxActItem_Data["GlobalId"]
	local nData3 = Get_SysDynaGlobalData3(nGlobalId)
	if nData3 == 1 then 
		Sys_SetSynaGlobalData(nGlobalId,3,0)
	end
end

--小狐狸对话随机给奖励
function NewFoxActItem_GetItem(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = tNewFoxActItem_Stc[1]["EventType"]
	local nType = tNewFoxActItem_Stc[1]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end

	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ActiveTime"]) then
		return
	end
	
	-- 检测背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tNewFoxActItem_Reward,1,nUserId)
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoSpace"])
	end
	
	if Task_ChkStcValue(nEvent,nType,">=",5,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	if Task_AddStatistic(nEvent,nType,1,1,nUserId) then
		local tReward,sRewardStr = RewardTemplate_NewRandomNoTip(tNewFoxActItem_Reward,1,nUserId)
		tNpcGossip[nNpcId]["Text121"] = string.format(tNewFoxActNpc_Text[nNpcId]["Text121"],sRewardStr)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	end
end
--怪物掉落
function NewFoxActItem_KillMonster()
	local nUserId = Get_UserId()
	local nEvent = tNewFoxActItem_Stc[2]["EventType"]
	local nType = tNewFoxActItem_Stc[2]["DataType"]
	local nNpcId = tNewFoxActItem_Data["NpcId"][3]
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ActiveTime"]) then
		return
	end
	
	--隔天重置掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	-- 检测背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tNewFoxActItem_Reward,1,nUserId)
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoSpace"])
	end
	
	--检测是否达到限量
	RewardTemplate_NewRandomNoTip(tNewFoxActItem_Reward,2,nUserId)
	if Task_ChkStcValue(nEvent,nType,"==",200) then
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["Limit"],string.format("NpcPosition_PathFind</N>%d",nNpcId),nil,nUserId)
		return
	end
end
--外套礼包换丹药
--nIndex:1 换丹药  2 换外套
function NewFoxActItem_Change(nItemId,nIndex)
	local nUserId = Get_UserId()
	if nIndex == 1 then
		local nRewardIndex = NewFoxActItem_JudgeItemId(nItemId)
		if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
			RewardTemplate_UseItemAndMsg(tNewFoxActItem_ChangeItem[nRewardIndex],nUserId)
			return
		end
	else
		RewardTemplate_UseItemAndMsg(tNewFoxActItem_ChangeItem[nItemId],nUserId)
	end
end

--获取当前礼包有无光效
function NewFoxActItem_JudgeItemId(nItemId)
	local nRewardIndex = 0
	for i,v in pairs(tNewFoxActItem_Data["ItemId"]) do
		for ii,vv in pairs(v) do
			if nItemId == vv then
				nRewardIndex = i
				return nRewardIndex
			end
		end
	end
end
--洗赠道具
function NewFoxActItem_RidGift(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1,2) then
		LinkItemGossipFunc_New(3320172,"1-2")
		return
	end
	local sItemName = Get_ItemtypeName(nItemId)
	tItem[3320172]["Text131"] = string.format(tNewFoxActNpc_Text[3320172]["Text131"],sItemName,sItemName)
	tItem[3320172]["OptionFunc131"] = string.format("NewFoxActItem_ChgCoat</N>%d",nItemId)
	LinkItemGossipFunc_New(3320172,"1-3")
end
--确认洗赠
function NewFoxActItem_ChgCoat(nItemId)
	--检测背包中是否存在可洗的赠品
	if not Item_ChkMulItem(nItemId,nItemId,1,2) then
		LinkItemGossipFunc_New(nItemId,"1-2")
		return
	end
	if Item_DelMulItem(nItemId,nItemId,1,2,0,nUserId,0) then
		RewardTemplate_UseItemAndMsg(tNewFoxActItem_RidGift[nItemId])
	end
end
--使用外套礼包
function NewFoxActItem_ExchgngeText(nItemId)
	local sItemName = Get_ItemtypeName(nItemId)
	local nIndex = NewFoxActItem_JudgeItemId(nItemId)
	local sGetItem = ""
	local nExchangeNum = tNewFoxActItem_Data["ExchangeNum"][nIndex]
	if nIndex == 1 then
		sGetItem = string.sub(sItemName,1,14)
	else
		sGetItem = string.sub(sItemName,1,28)
	end
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["DialogueText"] =tNewFoxActNpc_Text["Item"]
	tItem[nItemId]["Text1-1"] = {111,112}
	tItem[nItemId]["tOption1-1"] ={111,112,113}
	tItem[nItemId]["ChkFunc1-1"] =function()
		tItem[nItemId]["Text111"] = string.format(tNewFoxActNpc_Text["Item"]["Text111"],sGetItem)
		tItem[nItemId]["Text112"] = string.format(tNewFoxActNpc_Text["Item"]["Text112"],nExchangeNum)
		return true
	end
	tItem[nItemId]["OptionChkFunc112"] = function ()
		tItem[nItemId]["Option112"] = string.format(tNewFoxActNpc_Text["Item"]["Option112"],nExchangeNum)
		return true
	end

	tItem[nItemId]["OptionPoint111"] = "1-2"
	tItem[nItemId]["OptionPoint112"] = "1-3"

	tItem[nItemId]["Text1-2"] = {121}
	tItem[nItemId]["tOption1-2"] ={121,122}
	tItem[nItemId]["ChkFunc1-2"] =function()
		tItem[nItemId]["Text121"] =  string.format(tNewFoxActNpc_Text["Item"]["Text121"],sGetItem)
		return true
	end
	tItem[nItemId]["Text1-3"] = {131}
	tItem[nItemId]["tOption1-3"] ={131,132}
	tItem[nItemId]["ChkFunc1-3"] =function()
		tItem[nItemId]["Text131"] =  string.format(tNewFoxActNpc_Text["Item"]["Text131"],sGetItem,nExchangeNum)
		return true
	end
	
	
	tItem[nItemId]["OptionFunc121"] = "NewFoxActItem_Change</N>"..nItemId.."</N>2"
	tItem[nItemId]["OptionFunc131"] = "NewFoxActItem_Change</N>"..nItemId.."</N>1"


end
--每天八点出105刷怪
function NewFoxActItem_AddMonster()
	
	local nMonsterId = tNewFoxActItem_Data["Boss"]["Id"] 
	local nPosX = tNewFoxActItem_Data["Boss"]["Posx"] 
	local nPosY = tNewFoxActItem_Data["Boss"]["Posy"] 
	local nGenId = tNewFoxActItem_Data["Boss"]["GenId"] 
	local nMapId = tNewFoxActItem_Data["Boss"]["MapId"] 
	
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	
	if nMonsterNum == 0 then 
		Sys_SystemBroadcast(tNewFoxActNpc_Text["MsgBox"]["AddMonster"])
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	end
end
--boss 死亡 掉落一百个兑换道具
function NewFoxActItem_KillBoss(nMonsterId)
	Monster_Death(nMonsterId,Get_UserMapId())
	local nPosX = tNewFoxActItem_Data["Boss"]["Posx"] 
	local nPosY = tNewFoxActItem_Data["Boss"]["Posy"]  
	local nMapId = tNewFoxActItem_Data["Boss"]["MapId"] 
	local nItemId1 = tNewFoxActItem_Data["Boss"]["DroItem1"]
	local nItemNum1 = tNewFoxActItem_Data["Boss"]["DroItemNum1"]
	local nItemId2 = tNewFoxActItem_Data["Boss"]["DroItem2"]
	local nItemNum2 = tNewFoxActItem_Data["Boss"]["DroItemNum2"]
	local nItemId3 = tNewFoxActItem_Data["Boss"]["DroItem3"]
	local nItemNum3 = tNewFoxActItem_Data["Boss"]["DroItemNum3"]
	local nItemId4 = tNewFoxActItem_Data["Boss"]["DroItem4"]
	local nItemNum4 = tNewFoxActItem_Data["Boss"]["DroItemNum4"]
	
	local nExistTime = tNewFoxActItem_Data["Boss"]["ExistTime"]
	local nCellx = tNewFoxActItem_Data["Boss"]["Cellx"]
	local nCelly = tNewFoxActItem_Data["Boss"]["Cellx"]
	
	-- 杀怪LOG
	Sys_SaveActionFestivalLog(tNewFoxActItem_Log["KilMonster"])
	Map_DropMultiItems(nMapId, nItemId1, nPosX, nPosY, nCellx, nCelly, nItemNum1, nExistTime)
	Map_DropMultiItems(nMapId, nItemId2, nPosX, nPosY, nCellx, nCelly, nItemNum2, nExistTime)
	Map_DropMultiItems(nMapId, nItemId3, nPosX, nPosY, nCellx, nCelly, nItemNum3, nExistTime)
	Map_DropMultiItems(nMapId, nItemId4, nPosX, nPosY, nCellx, nCelly, nItemNum4, nExistTime)

end
function NewFoxAcItem_OpenShop(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["DelTime"]) then
		return
	end
	User_OpenExchangeShop(nNpcId)
end
--全服公告
function NewFoxActItem_MonsterBroad()
	Sys_SystemBroadcast(tNewFoxActNpc_Text["MsgBox"]["AddMonster"])
end
--点击公告寻路
function NewFoxActItem_ClckBroadCast(nNpcId)
	local nUserId = Get_UserId()
	local nMapId = tNewFoxActItem_Data[nNpcId]["MapId"]
	local nPosX = tNewFoxActItem_Data[nNpcId]["PosX"] 
	local nPosY = tNewFoxActItem_Data[nNpcId]["PosY"] 
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end
--全地图执行
function NewFoxActItem_MonsterMap()
	local nMapId = tNewFoxActItem_Data["Boss"]["MapId"]
	local sFunc = "NewFoxActItem_UserChgMap"
	Map_UserExeFunc(nMapId,-1,sFunc)
end
function NewFoxActItem_UserChgMap(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nPosX = tNewFoxActItem_Data["Boss"]["Posx"] 
	local nPosY = tNewFoxActItem_Data["Boss"]["Posy"]  
	local nMapId = tNewFoxActItem_Data["Boss"]["MapId"] 
	local sFunc = string.format("User_ChgMap</N>%d</N>%d</N>%d</N>%d</N>%d",nMapId,nPosX,nPosY,0,nUserId)
	Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["Monster"],sFunc,nil,nUserId)
	
end
function NewFoxActItem_UseItem(nItemId,sItemName,nUserId)
	local nUserId = nUserId or Get_UserId()

	-- 时间外删除
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["DelTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId,nil,nil,nUserId) and Item_DelAllItemByType(nItemId,nUserId) then
			
			Sys_SaveActionRewardLog(string.format(tNewFoxActItem_Log["DelItem"],nItemId,nNum),nUserId)
			local tReward = CommonFunc_Copy(tNewFoxActItem_ChangeStrengthValue["NoTime"])
			tReward["RewardStrengthValue"]["Value"] = tReward["RewardStrengthValue"]["Value"] * nNum
			RewardTemplate_UseItemAndMsg(tReward)
			User_TalkChannel2005(tNewFoxActNpc_Text["MsgBox"]["DelItem"],nUserId)
			return
		end
	end
	local nNeedNum =tNewFoxActItem_ChangeStrengthValue[nItemId]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nNeedNum) then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoEnoughItem"])
		return
	end
	RewardTemplate_UseItemAndMsg(tNewFoxActItem_ChangeStrengthValue[nItemId])
	
end
--狐狸水晶合成
function NewFoxActItem_CrystalCompound(nItemId)
	local nUserId = Get_UserId()
	local nNeedStrength = tNewFoxActItem_Data["Strength"]
	local nUserStrength = Get_UserStrengthValue(nUserId)
	if nUserStrength < nNeedStrength then
		LinkItemGossipFunc_New(nItemId,"1-2")
		return
	end
	
	
	if not RewardTemplate_CheckSpace(tNewFoxActItem_ChangeItem[nItemId],nUserId) then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoSpace"])
		return
	end
	
	--给奖励
	if User_AddStrengthValue(-nNeedStrength,nUserId) then 
		Sys_SaveActionFestivalLog(tNewFoxActItem_Log["Strength"])
		RewardTemplate_UseItemAndMsg(tNewFoxActItem_ChangeItem[nItemId],nUserId)
	end
	
end
--购买转盘
function NewFoxAcItem_BuyWheels()
	local nEmoney = -1 * tNewFoxActItem_BuyWheel[1]["RewardEMoney"]["Value"]
	local nUserId = Get_UserId()
	local nUserEmoney = Get_UserEMoney(nUserId)
	local nEvent = tNewFoxActItem_Stc[3]["EventType"]
	local nType = tNewFoxActItem_Stc[3]["DataType"]
	
	
	
	if nUserEmoney < nEmoney then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["NoEmoneyBuy"])
		return
	end
	
	if Task_SetStatistic(nEvent,nType,1,1,nUserId) and Task_SetStcTimestamp(nEvent,nType,0,nUserId) then
		RewardTemplate_UseItemAndMsg(tNewFoxActItem_BuyWheel[1],nUserId)
	end
end
--补领转盘
function NewFoxAcItem_GetWheelsAgain(nItemId)
	local nEvent = tNewFoxActItem_Stc[3]["EventType"]
	local nType = tNewFoxActItem_Stc[3]["DataType"]
	
	
	if Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(tNewFoxActNpc_Text["MsgBox"]["HaveItem"])
		return
	elseif  Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		RewardTemplate_UseItemAndMsg(tNewFoxActItem_BuyWheel[nItemId],nUserId)
	end
end
------------------------------------模块部分配置------------------------------------
tItemFace[3312192]=2176
tItemFace[3312193]=2177
tItemFace[3312194]=2178
tItemFace[3312195]=2179
tItemFace[3312196]=2180
tItemFace[3312197]=2181
tItemFace[3312198]=2182
tItemFace[3312199]=2183
tItemFace[3312323]=2199

--合气丹礼包
tItem[3312722] = tItem[3312722] or {}
tItem[3312722]["Function"] = function(nItemId, sItemName)
	local nUserId = Get_UserId()
	RewardTemplate_UseItemAndMsg(tNewFoxActItem_Reward[nItemId],nUserId)
end

--狐狸水晶
tItem[3312323] = tItem[3312323] or {}
tItem[3312323]["DialogueText"]=tNewFoxActNpc_Text[3312323]
tItem[3312323]["Text1-1"]={111}
tItem[3312323]["tOption1-1"]={111,112}
tItem[3312323]["OptionFunc111"] = "NewFoxActItem_CrystalCompound</N>3312323"

--气力不足
tItem[3312323]["Text1-2"]={121}
tItem[3312323]["tOption1-2"]={121}


-- 3320169,'合气丹'
-- 3320170,'造化灵丹'
-- 3320171,'九花玉露丸'
tItem[3320169] = tItem[3320169] or {}
tItem[3320170] = tItem[3320169] or {}
tItem[3320171] = tItem[3320169] or {}
tItem[3320169]["Function"] = function(nItemId, sItemName)
	NewFoxActItem_FindNpc(nItemId,sItemName,1)
end
--利爪鹰魔的爪子
tItem[3320217] = tItem[3320217] or {}
tItem[3320217]["Function"] = function(nItemId, sItemName)
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ActiveTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId,nil,nil,nUserId) and Item_DelAllItemByType(nItemId,nUserId) then
			User_TalkChannel2005(tNewFoxActNpc_Text["MsgBox"]["DelItem"])
			return
		end
	end
	
	-- 寻路
	local nNpcId = tNewFoxActItem_Data["NpcId"][2]
	NpcPosition_PathFind(nNpcId)
end
--碎片

tItem[3312192] = tItem[3312192] or {}
tItem[3312192]["Function"] = function(nItemId, sItemName)
	local nUserId = Get_UserId()
	NewFoxActItem_UseItem(nItemId,sItemName,nUserId)
end
tItem[3312193] = tItem[3312192]
tItem[3312194] = tItem[3312192]
tItem[3312195] = tItem[3312192]
tItem[3312196] = tItem[3312192]
tItem[3312197] = tItem[3312192]
tItem[3312198] = tItem[3312192]
tItem[3312199] = tItem[3312192]

-- 3320172,'星河之泪'【洗赠道具】
tItemFace[3320172] = 2175
tItem[3320172] = tItem[3320172] or {}
tItem[3320172]["DialogueText"]=tNewFoxActNpc_Text[3320172]
tItem[3320172]["Text1-1"]={111}
tItem[3320172]["tOption1-1"]={111,112,113,114,115,116}

tItem[3320172]["OptionChkFunc111"] = function ()
	if not Item_ChkMulItem(200641,200641,1,2) then
		return false
	else       
		return true
	end
end
tItem[3320172]["OptionChkFunc112"] = function ()
	if not Item_ChkMulItem(200642,200642,1,2) then
		return false
	else
		return true
	end
end
tItem[3320172]["OptionChkFunc113"] = function ()
	if not Item_ChkMulItem(200643,200643,1,2) then
		return false
	else       
		return true
	end
end
tItem[3320172]["OptionChkFunc114"] = function ()
	if not Item_ChkMulItem(200595,200595,1,2) then
		return false
	else       
		return true
	end
end


tItem[3320172]["OptionChkFunc115"] = function ()
	if not (Item_ChkMulItem(200641,200643,1,2) or Item_ChkMulItem(200595,200595,1,2)) then
		return true
	else
		return false
	end
end
tItem[3320172]["OptionFunc111"] = "NewFoxActItem_RidGift</N>200641"
tItem[3320172]["OptionFunc112"] = "NewFoxActItem_RidGift</N>200642"
tItem[3320172]["OptionFunc113"] = "NewFoxActItem_RidGift</N>200643"
tItem[3320172]["OptionFunc114"] = "NewFoxActItem_RidGift</N>200595"
--没有外套
tItem[3320172]["Text1-2"]={121}
tItem[3320172]["tOption1-2"]={121}
--二次确认
tItem[3320172]["Text1-3"]={131}
tItem[3320172]["tOption1-3"]={131,132}
tItem[3320172]["OptionFunc131"] = "NewFoxActItem_ChgCoat"
tItem[3320172]["OptionPoint132"] = "1"

--3320731,'梦魇魅狐【魅影版】礼包'
--3320732,'碧霄灵狐【缥缈版】礼包'
--3320733,'幻月仙狐【迷情版】礼包'
--3320744,'昊天玄狐【魅幻版】礼包'
--3320734,'梦魇魅狐礼包'
--3320735,'碧霄灵狐礼包'
--3320736,'幻月仙狐礼包'
--3320745,'昊天玄狐礼包'

tItemFace[3320731]=2136
tItemFace[3320732]=2137
tItemFace[3320733]=2138
tItemFace[3320744]=2139
tItemFace[3320734]=2136
tItemFace[3320735]=2137
tItemFace[3320736]=2138
tItemFace[3320745]=2140
-- for nItemId = 3320731,3320736 do
	-- NewFoxActItem_ExchgngeText(nItemId)
-- end
-- for nItemId = 3320744,3320745 do
	-- NewFoxActItem_ExchgngeText(nItemId)
-- end
tItem[3320731] = tItem[3320731] or {}
tItem[3320731]["DialogueText"]=tNewFoxActNpc_Text[3320731]
tItem[3320731]["Text1-1"]={111,112}
tItem[3320731]["tOption1-1"]={111,112}
tItem[3320731]["OptionPoint111"] = "1-2"
tItem[3320731]["OptionPoint112"] = "1-3"

tItem[3320731]["Text1-2"] = {121}
tItem[3320731]["tOption1-2"] ={121,122}
tItem[3320731]["Text1-3"] = {131}
tItem[3320731]["tOption1-3"] ={131,132}

tItem[3320731]["OptionFunc121"] = "NewFoxActItem_Change</N>3320731</N>2"
tItem[3320731]["OptionFunc131"] = "NewFoxActItem_Change</N>3320731</N>1"



tItem[3320732] = tItem[3320732] or {}
tItem[3320732]["DialogueText"]=tNewFoxActNpc_Text[3320732]
tItem[3320732]["Text1-1"]={111,112}
tItem[3320732]["tOption1-1"]={111,112}
tItem[3320732]["OptionPoint111"] = "1-2"
tItem[3320732]["OptionPoint112"] = "1-3"

tItem[3320732]["Text1-2"] = {121}
tItem[3320732]["tOption1-2"] ={121,122}
tItem[3320732]["Text1-3"] = {131}
tItem[3320732]["tOption1-3"] ={131,132}

tItem[3320732]["OptionFunc121"] = "NewFoxActItem_Change</N>3320732</N>2"
tItem[3320732]["OptionFunc131"] = "NewFoxActItem_Change</N>3320732</N>1"

tItem[3320733] = tItem[3320733] or {}
tItem[3320733]["DialogueText"]=tNewFoxActNpc_Text[3320733]
tItem[3320733]["Text1-1"]={111,112}
tItem[3320733]["tOption1-1"]={111,112}
tItem[3320733]["OptionPoint111"] = "1-2"
tItem[3320733]["OptionPoint112"] = "1-3"

tItem[3320733]["Text1-2"] = {121}
tItem[3320733]["tOption1-2"] ={121,122}
tItem[3320733]["Text1-3"] = {131}
tItem[3320733]["tOption1-3"] ={131,132}

tItem[3320733]["OptionFunc121"] = "NewFoxActItem_Change</N>3320733</N>2"
tItem[3320733]["OptionFunc131"] = "NewFoxActItem_Change</N>3320733</N>1"


tItem[3320734] = tItem[3320734] or {}
tItem[3320734]["DialogueText"]=tNewFoxActNpc_Text[3320734]
tItem[3320734]["Text1-1"]={111,112}
tItem[3320734]["tOption1-1"]={111,112}
tItem[3320734]["OptionPoint111"] = "1-2"
tItem[3320734]["OptionPoint112"] = "1-3"

tItem[3320734]["Text1-2"] = {121}
tItem[3320734]["tOption1-2"] ={121,122}
tItem[3320734]["Text1-3"] = {131}
tItem[3320734]["tOption1-3"] ={131,132}

tItem[3320734]["OptionFunc121"] = "NewFoxActItem_Change</N>3320734</N>2"
tItem[3320734]["OptionFunc131"] = "NewFoxActItem_Change</N>3320734</N>1"


tItem[3320735] = tItem[3320735] or {}
tItem[3320735]["DialogueText"]=tNewFoxActNpc_Text[3320735]
tItem[3320735]["Text1-1"]={111,112}
tItem[3320735]["tOption1-1"]={111,112}
tItem[3320735]["OptionPoint111"] = "1-2"
tItem[3320735]["OptionPoint112"] = "1-3"

tItem[3320735]["Text1-2"] = {121}
tItem[3320735]["tOption1-2"] ={121,122}
tItem[3320735]["Text1-3"] = {131}
tItem[3320735]["tOption1-3"] ={131,132}

tItem[3320735]["OptionFunc121"] = "NewFoxActItem_Change</N>3320735</N>2"
tItem[3320735]["OptionFunc131"] = "NewFoxActItem_Change</N>3320735</N>1"

tItem[3320736] = tItem[3320736] or {}
tItem[3320736]["DialogueText"]=tNewFoxActNpc_Text[3320736]
tItem[3320736]["Text1-1"]={111,112}
tItem[3320736]["tOption1-1"]={111,112}
tItem[3320736]["OptionPoint111"] = "1-2"
tItem[3320736]["OptionPoint112"] = "1-3"

tItem[3320736]["Text1-2"] = {121}
tItem[3320736]["tOption1-2"] ={121,122}
tItem[3320736]["Text1-3"] = {131}
tItem[3320736]["tOption1-3"] ={131,132}

tItem[3320736]["OptionFunc121"] = "NewFoxActItem_Change</N>3320736</N>2"
tItem[3320736]["OptionFunc131"] = "NewFoxActItem_Change</N>3320736</N>1"

tItem[3320744] = tItem[3320744] or {}
tItem[3320744]["DialogueText"]=tNewFoxActNpc_Text[3320744]
tItem[3320744]["Text1-1"]={111,112}
tItem[3320744]["tOption1-1"]={111,112}
tItem[3320744]["OptionPoint111"] = "1-2"
tItem[3320744]["OptionPoint112"] = "1-3"

tItem[3320744]["Text1-2"] = {121}
tItem[3320744]["tOption1-2"] ={121,122}
tItem[3320744]["Text1-3"] = {131}
tItem[3320744]["tOption1-3"] ={131,132}

tItem[3320744]["OptionFunc121"] = "NewFoxActItem_Change</N>3320744</N>2"
tItem[3320744]["OptionFunc131"] = "NewFoxActItem_Change</N>3320744</N>1"

tItem[3320745] = tItem[3320745] or {}
tItem[3320745]["DialogueText"]=tNewFoxActNpc_Text[3320745]
tItem[3320745]["Text1-1"]={111,112}
tItem[3320745]["tOption1-1"]={111,112}
tItem[3320745]["OptionPoint111"] = "1-2"
tItem[3320745]["OptionPoint112"] = "1-3"

tItem[3320745]["Text1-2"] = {121}
tItem[3320745]["tOption1-2"] ={121,122}
tItem[3320745]["Text1-3"] = {131}
tItem[3320745]["tOption1-3"] ={131,132}

tItem[3320745]["OptionFunc121"] = "NewFoxActItem_Change</N>3320745</N>2"
tItem[3320745]["OptionFunc131"] = "NewFoxActItem_Change</N>3320745</N>1"


-- tItem[3320173] = tItem[3312200] or {}
-- tItem[3312200] = tItem[3312200] or {}
-- tItem[3312200]["Function"] = function(nItemId, sItemName)
	-- User_OpenDialog(924)
-- end

------------------------------------NPC部分------------------------------------
tNpcFace[1553]=831
tNpcFace[1645]=32


tNpcGossip[23809]=tNpcGossip[23809] or DefaultNpc:new{}
tNpcGossip[23809]["OptionHidden"]=1
tNpcGossip[23809]["DialogueText"]=tNewFoxActNpc_Text[23809]
tNpcGossip[23809]["Text1-1"]={111}
tNpcGossip[23809]["tOption1-1"]={111,112}
tNpcGossip[23809]["OptionFunc111"] = "NewFoxActItem_GetItem</N>23809"

--领取成功
tNpcGossip[23809]["Text1-2"]={121}
tNpcGossip[23809]["tOption1-2"]={121}
--领取超过五次
tNpcGossip[23809]["Text1-3"]={131}
tNpcGossip[23809]["tOption1-3"]={131}

tNpcGossip[23854]= tNpcGossip[23809] or DefaultNpc:new{}
tNpcGossip[23855]= tNpcGossip[23809] or DefaultNpc:new{}


tNpcGossip[23927]=tNpcGossip[23927] or DefaultNpc:new{}
tNpcGossip[23927]["OptionHidden"]=1
tNpcGossip[23927]["DialogueText"]=tNewFoxActNpc_Text[23927]
tNpcGossip[23927]["Text1-1"]={111,112,113,114}
tNpcGossip[23927]["tOption1-1"]={111}
tNpcGossip[23927]["ChkFunc1-1"] = function()
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[23927]["Text112"] = ""
	else
		tNpcGossip[23927]["Text113"] = ""
	end
	return true
end
tNpcGossip[23927]["OptionFunc111"] = "NewFoxAcItem_OpenShop</N>23927"

--涂山苏苏
tNpcGossip[23995]=tNpcGossip[23995] or DefaultNpc:new{}
tNpcGossip[23995]["OptionHidden"]=1
tNpcGossip[23995]["DialogueText"]=tNewFoxActNpc_Text[23995]
--活动前
tNpcGossip[23995]["Text1-1"]={111,112,113,114,115,116,117,118}
tNpcGossip[23995]["tOption1-1"]={111}
tNpcGossip[23995]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["NewFoxAct"]["BefTime"]) then
		return true
	end
end

--活动后
tNpcGossip[23995]["Text1-2"]={121,122}
tNpcGossip[23995]["tOption1-2"]={121}
tNpcGossip[23995]["ChkFunc1-2"] = function()
	if not Sys_ChkFullTime(tActivityTime["NewFoxAct"]["ChgCoatTime"]) then
		return true
	end
end

--活动中 等级不满足
tNpcGossip[23995]["Text1-3"]={131,132,133,134,135,136,137,138}
tNpcGossip[23995]["tOption1-3"]={131}
tNpcGossip[23995]["ChkFunc1-3"] = function()
	-- 判断等级
	local nLevel = tNewFoxActItem_Data["Level"]
	local nMete = tNewFoxActItem_Data["Mete"] 
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end
--活动中 等级满足
tNpcGossip[23995]["Text1-4"]={141,142,143,144,145,146,147,148}
tNpcGossip[23995]["tOption1-4"]={141,142}

tNpcGossip[23995]["OptionChkFunc141"] = function()
	local nEvent = tNewFoxActItem_Stc[3]["EventType"]
	local nType = tNewFoxActItem_Stc[3]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return false
	else
		return true
	end
end
tNpcGossip[23995]["OptionChkFunc142"] = function()
	local nEvent = tNewFoxActItem_Stc[3]["EventType"]
	local nType = tNewFoxActItem_Stc[3]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return true
	else
		return false 
	end
end
tNpcGossip[23995]["OptionPoint141"] = "1-5"
tNpcGossip[23995]["OptionPoint142"] = "1-6"
--购买转盘
tNpcGossip[23995]["Text1-5"]={151,152}
tNpcGossip[23995]["tOption1-5"]={151,152}
tNpcGossip[23995]["OptionFunc151"] = "NewFoxAcItem_BuyWheels"
--补领转盘
tNpcGossip[23995]["Text1-6"]={161}
tNpcGossip[23995]["tOption1-6"]={161,162,163}
tNpcGossip[23995]["OptionFunc161"] = "NewFoxAcItem_GetWheelsAgain</N>3312453"
tNpcGossip[23995]["OptionFunc162"] = "NewFoxAcItem_GetWheelsAgain</N>3312454"
tNpcGossip[23995]["OptionFunc163"] = "NewFoxAcItem_GetWheelsAgain</N>3312455"
------------------------------------时间自检------------------------------------
local tNewFoxActItem_ClearGlobal = {}
	--每小时清除限量
	tNewFoxActItem_ClearGlobal[1] = {}
	tNewFoxActItem_ClearGlobal[1]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	tNewFoxActItem_ClearGlobal[1]["Type"] = 2
	tNewFoxActItem_ClearGlobal[1]["TimeType"] = 5
	tNewFoxActItem_ClearGlobal[1]["Time"] = "02 03"
	tNewFoxActItem_ClearGlobal[1]["Func"] = NewFoxActItem_ClearGloba
	--每天清除限量
	tNewFoxActItem_ClearGlobal[2] = {}
	tNewFoxActItem_ClearGlobal[2]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	tNewFoxActItem_ClearGlobal[2]["Type"] = 2
	tNewFoxActItem_ClearGlobal[2]["TimeType"] = 4
	tNewFoxActItem_ClearGlobal[2]["Time"] = "00:02 00:03"
	tNewFoxActItem_ClearGlobal[2]["Func"] = NewFoxActItem_ClearGlobaDay
	
	--清除每小时限量开关
	tNewFoxActItem_ClearGlobal[3] = {}
	tNewFoxActItem_ClearGlobal[3]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	tNewFoxActItem_ClearGlobal[3]["Type"] = 2
	tNewFoxActItem_ClearGlobal[3]["TimeType"] = 5
	tNewFoxActItem_ClearGlobal[3]["Time"] = "00 01"
	tNewFoxActItem_ClearGlobal[3]["Func"] = NewFoxActItem_ClearGlobaSwitch
	--每天清除限量开关
	tNewFoxActItem_ClearGlobal[4] = {}
	tNewFoxActItem_ClearGlobal[4]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	tNewFoxActItem_ClearGlobal[4]["Type"] = 2
	tNewFoxActItem_ClearGlobal[4]["TimeType"] = 4
	tNewFoxActItem_ClearGlobal[4]["Time"] = "00:00 00:01"
	tNewFoxActItem_ClearGlobal[4]["Func"] = NewFoxActItem_ClearGlobaDaySwitch
	--每天八点刷怪
	tNewFoxActItem_ClearGlobal[5] = {}
	tNewFoxActItem_ClearGlobal[5]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	tNewFoxActItem_ClearGlobal[5]["Type"] = 2
	tNewFoxActItem_ClearGlobal[5]["TimeType"] = 4
	tNewFoxActItem_ClearGlobal[5]["Multiple"] = {}
	tNewFoxActItem_ClearGlobal[5]["Multiple"][1] = "18:00 18:00"
	tNewFoxActItem_ClearGlobal[5]["Multiple"][2] = "22:20 22:20"
	tNewFoxActItem_ClearGlobal[5]["Func"] = NewFoxActItem_AddMonster

	--七点五十五全服公告刷怪
	tNewFoxActItem_ClearGlobal[6] = {}
	tNewFoxActItem_ClearGlobal[6]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	tNewFoxActItem_ClearGlobal[6]["Type"] = 2
	tNewFoxActItem_ClearGlobal[6]["TimeType"] = 4
	tNewFoxActItem_ClearGlobal[6]["Multiple"] = {}
	tNewFoxActItem_ClearGlobal[6]["Multiple"][1] = "17:55 18:00"
	tNewFoxActItem_ClearGlobal[6]["Multiple"][2] = "22:15 22:20"
	tNewFoxActItem_ClearGlobal[6]["Func"] = NewFoxActItem_MonsterBroad
	
	--地图内弹窗
	tNewFoxActItem_ClearGlobal[7] = {}
	tNewFoxActItem_ClearGlobal[7]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	tNewFoxActItem_ClearGlobal[7]["Type"] = 2
	tNewFoxActItem_ClearGlobal[7]["TimeType"] = 4
	tNewFoxActItem_ClearGlobal[7]["Multiple"] = {}
	tNewFoxActItem_ClearGlobal[7]["Multiple"][1] = "17:59 18:00"
	tNewFoxActItem_ClearGlobal[7]["Multiple"][2] = "22:19 22:20"
	tNewFoxActItem_ClearGlobal[7]["Func"] = NewFoxActItem_MonsterMap
	
	
	table.insert(tSystemTime_InitialData,tNewFoxActItem_ClearGlobal[1])
	table.insert(tSystemTime_InitialData,tNewFoxActItem_ClearGlobal[2])
	table.insert(tSystemTime_InitialData,tNewFoxActItem_ClearGlobal[3])
	table.insert(tSystemTime_InitialData,tNewFoxActItem_ClearGlobal[4])
	table.insert(tSystemTime_InitialData,tNewFoxActItem_ClearGlobal[5])
	table.insert(tSystemTime_InitialData,tNewFoxActItem_ClearGlobal[6])
	table.insert(tSystemTime_InitialData,tNewFoxActItem_ClearGlobal[7])
--------------------------------------------击杀怪物---------------------------------------
local tNewFoxActItem_KillMonster = {}
	tNewFoxActItem_KillMonster[1] = {}
	tNewFoxActItem_KillMonster[1]["Function"] = NewFoxActItem_KillMonster
	tNewFoxActItem_KillMonster[1]["MonsterId"] = {1081}
	tNewFoxActItem_KillMonster[2] = {}
	tNewFoxActItem_KillMonster[2]["Function"] = NewFoxActItem_KillBoss
	tNewFoxActItem_KillMonster[2]["MonsterId"] = {1044}
table.insert(tMonsterDrop_AreaLoad,tNewFoxActItem_KillMonster[1])
table.insert(tMonsterDrop_AreaLoad,tNewFoxActItem_KillMonster[2])