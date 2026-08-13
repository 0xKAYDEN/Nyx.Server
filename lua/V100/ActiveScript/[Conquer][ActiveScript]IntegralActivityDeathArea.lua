------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]打怪积分活动-死亡秘境
--Purpose:	打怪积分活动-死亡秘境
--Creator: 	兰瑞妹
--Created:	2016/05/17
------------------------------------------------------------------------------------

-- 命名前缀
-- IntegralActivity_DeathArea_

-- #stc 掩码说明 
-- #stc(145,27) 背包信
-- #stc(145,28) 每日礼包兑换上限为10个 
-- #stc(145,29) 每日功勋值上限为400点
-- #stc(145,30) 每天进地图记一次log
-- 
-- GlobalId 80172
-- 礼包打开获得奖励每日上限 ==data1 1表示已获得晶莹星陨石 ==data2 1表示已获得固化石礼盒
-- ==datastr5 1标记位


-- 常量表
local tIntegralActivity_DeathArea_Count = {}
	-- 活动时间
	tIntegralActivity_DeathArea_Count["BeforeActivityTime"] = "2016-01-01 00:00 2016-09-30 23:59"
	tIntegralActivity_DeathArea_Count["ActivityTime"] = "2016-10-01 00:00 2016-10-07 23:59"
	-- 物品使用
	tIntegralActivity_DeathArea_Count["ItemUseTime"] = "2016-10-01 00:00 2016-10-09 23:59"
	-- 清理时间
	tIntegralActivity_DeathArea_Count["ClearGlobalTime"] = "2016-10-01 00:00 2016-10-09 23:59"
	
	-- 玩家等级要求
	tIntegralActivity_DeathArea_Count["Metempsychosis"] = 0
	tIntegralActivity_DeathArea_Count["Level"] = 100
	
	-- 每20功勋值兑换1个
	tIntegralActivity_DeathArea_Count["ExchangeNeedData"] = 50
	
	tIntegralActivity_DeathArea_Count["MapId"] = 10016
	tIntegralActivity_DeathArea_Count["BossId"] = 3930
	
	-- 全服每天一个
	tIntegralActivity_DeathArea_Count["GlobalId"] = 80172
	tIntegralActivity_DeathArea_Count["RewardOne"] = 10
	tIntegralActivity_DeathArea_Count["RewardTwo"] = 13
	
	-- 3008993 探宝符
	tIntegralActivity_DeathArea_Count["KillGetItem"] = 3008993
-- Log表
local tIntegralActivity_DeathArea_Log = {}
	-- 进入地图
	tIntegralActivity_DeathArea_Log["EnterDeathArea"] = "0,0,0,0,12000405,1[1],0,0"
	-- 兑换10个礼包
	tIntegralActivity_DeathArea_Log["ExchangeTen"] = "0,0,0,0,12000405,1[3],0,0"
	
-- stc掩码
local tIntegralActivity_DeathArea_Stc = {}
	-- 礼包上限
	tIntegralActivity_DeathArea_Stc[1] = {}
	tIntegralActivity_DeathArea_Stc[1]["EventType"] = 145
	tIntegralActivity_DeathArea_Stc[1]["DataType"] = 28
	tIntegralActivity_DeathArea_Stc[1]["Limit"] = 10
	-- 除魔值
	tIntegralActivity_DeathArea_Stc[2] = {}
	tIntegralActivity_DeathArea_Stc[2]["EventType"] = 145
	tIntegralActivity_DeathArea_Stc[2]["DataType"] = 29
	tIntegralActivity_DeathArea_Stc[2]["Limit"] = 500
	-- 进入地图
	tIntegralActivity_DeathArea_Stc[3] = {}
	tIntegralActivity_DeathArea_Stc[3]["EventType"] = 145
	tIntegralActivity_DeathArea_Stc[3]["DataType"] = 30
	
-- 特效
local tIntegralActivity_DeathArea_Effect = {}
	-- 击杀boss
	tIntegralActivity_DeathArea_Effect[1] = {}
	tIntegralActivity_DeathArea_Effect[1]["EffectObj"] = "self"
	tIntegralActivity_DeathArea_Effect[1]["Effect"] = "zf2-e300"
	-- 进图
	tIntegralActivity_DeathArea_Effect[2] = {}
	tIntegralActivity_DeathArea_Effect[2]["EffectObj"] = "self"
	tIntegralActivity_DeathArea_Effect[2]["Effect"] = "moveback"
	-- 出图
	tIntegralActivity_DeathArea_Effect[3] = {}
	tIntegralActivity_DeathArea_Effect[3]["EffectObj"] = "self"
	tIntegralActivity_DeathArea_Effect[3]["Effect"] = "movego"

-- 地图传送点
local tIntegralActivity_DeathArea_ChgMap = {}
	-- 传送到moxue
	tIntegralActivity_DeathArea_ChgMap[1] = {}
	tIntegralActivity_DeathArea_ChgMap[1]["MapId"] = 10016
	tIntegralActivity_DeathArea_ChgMap[1]["PosX"] = 168
	tIntegralActivity_DeathArea_ChgMap[1]["PosY"] = 484
	tIntegralActivity_DeathArea_ChgMap[1]["Range"] = 5
	tIntegralActivity_DeathArea_ChgMap[1]["Effect"] = 2
	tIntegralActivity_DeathArea_ChgMap[1]["Talk"] = "EnterDeathArea"
	-- 传送到太平殿
	tIntegralActivity_DeathArea_ChgMap[2] = {}
	tIntegralActivity_DeathArea_ChgMap[2]["MapId"] = 10018
	tIntegralActivity_DeathArea_ChgMap[2]["PosX"] = 51
	tIntegralActivity_DeathArea_ChgMap[2]["PosY"] = 55
	tIntegralActivity_DeathArea_ChgMap[2]["Range"] = 5
	tIntegralActivity_DeathArea_ChgMap[2]["Talk"] = "LeaveDeathArea"
	tIntegralActivity_DeathArea_ChgMap[2]["Effect"] = 3
	-- 中转地图
	tIntegralActivity_DeathArea_ChgMap[3] = {}
	tIntegralActivity_DeathArea_ChgMap[3]["MapId"] = 1002
	tIntegralActivity_DeathArea_ChgMap[3]["PosX"] = 244
	tIntegralActivity_DeathArea_ChgMap[3]["PosY"] = 246
	tIntegralActivity_DeathArea_ChgMap[3]["Range"] = 5
	tIntegralActivity_DeathArea_ChgMap[3]["Talk"] = "LeavePeace"
	tIntegralActivity_DeathArea_ChgMap[3]["Effect"] = 3
	
-- 四个随机传送点
local tIntegralActivity_DeathArea_RandomPos = {}
	tIntegralActivity_DeathArea_RandomPos[1] = {226,584}
	tIntegralActivity_DeathArea_RandomPos[2] = {229,219}
	tIntegralActivity_DeathArea_RandomPos[3] = {616,259}
	tIntegralActivity_DeathArea_RandomPos[4] = {645,637}
	
local tIntegralActivity_DeathArea_KillData = {}
	tIntegralActivity_DeathArea_KillData[3927] = 1
	tIntegralActivity_DeathArea_KillData[3928] = 2
	tIntegralActivity_DeathArea_KillData[3929] = 5
	tIntegralActivity_DeathArea_KillData[3930] = 200
	
local tIntegralActivity_DeathArea_BoosInfo = {}
	tIntegralActivity_DeathArea_BoosInfo["GeneratorId"] = 18999
	tIntegralActivity_DeathArea_BoosInfo["Pos"] = {}
	tIntegralActivity_DeathArea_BoosInfo["Pos"][1] = {253,505}
	tIntegralActivity_DeathArea_BoosInfo["Pos"][2] = {284,254}
	tIntegralActivity_DeathArea_BoosInfo["Pos"][3] = {427,418}
	tIntegralActivity_DeathArea_BoosInfo["Pos"][4] = {592,548}
	tIntegralActivity_DeathArea_BoosInfo["Pos"][5] = {530,280}
	
local tIntegralActivity_DeathArea_NeedEMonyMono = {}
	tIntegralActivity_DeathArea_NeedEMonyMono[3200371] = 50
	tIntegralActivity_DeathArea_NeedEMonyMono[3008719] = 20
	
-- 动态存储的数据
local tIntegralActivity_DeathArea_ClearGlobal = {}
	tIntegralActivity_DeathArea_ClearGlobal["Time"] = "00:00 00:02"

-- 奖励表
local tIntegralActivity_DeathArea_Reward = {}
	-- 使用除魔值兑换礼包
	tIntegralActivity_DeathArea_Reward[1] = {}
	tIntegralActivity_DeathArea_Reward[1]["LogId"] = 10002354	--LogId
	tIntegralActivity_DeathArea_Reward[1]["LogStep"] = "1[2]"	--记录的log步骤
	tIntegralActivity_DeathArea_Reward[1]["RewardNoNeedTip"] = 1
	tIntegralActivity_DeathArea_Reward[1]["RewardItem"] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[1]["RewardItem"][1] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[1]["RewardItem"][1]["Id"] = 3200320		--物品Id
	tIntegralActivity_DeathArea_Reward[1]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tIntegralActivity_DeathArea_Reward[1]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	tIntegralActivity_DeathArea_Reward[1]["SpeEMoneyLog"] = "350	20310	0	0	%d	"
	
	-- 打开固化石礼包 获得固化石
	tIntegralActivity_DeathArea_Reward[2] = {}
	tIntegralActivity_DeathArea_Reward[2]["Log"] = "0,0,3200356,1,12000405,2,723694,1"
	tIntegralActivity_DeathArea_Reward[2]["RewardNoNeedTip"] = 1
	tIntegralActivity_DeathArea_Reward[2]["RewardItem"] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[2]["RewardItem"][1] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[2]["RewardItem"][1]["Id"] = 723694		--物品Id
	tIntegralActivity_DeathArea_Reward[2]["RewardItem"][1]["Attr"] = "0 1 3"		--物品属性
	tIntegralActivity_DeathArea_Reward[2]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 打开固化石礼包 获得1200气力值
	tIntegralActivity_DeathArea_Reward[3] = {}
	tIntegralActivity_DeathArea_Reward[3]["Log"] = "0,0,3200356,1,12000405,2,12,1200"
	tIntegralActivity_DeathArea_Reward[3]["RewardStrengthValue"] = {}
	tIntegralActivity_DeathArea_Reward[3]["RewardStrengthValue"]["Value"] = 1200
	tIntegralActivity_DeathArea_Reward[3]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 打开降魔英豪礼包 获得50点气力
	tIntegralActivity_DeathArea_Reward[4] = {}
	tIntegralActivity_DeathArea_Reward[4]["Log"] = "0,0,3200320,1,12000405,2,12,50"
	tIntegralActivity_DeathArea_Reward[4]["RewardStrengthValue"] = {}
	tIntegralActivity_DeathArea_Reward[4]["RewardStrengthValue"]["Value"] = 50
	tIntegralActivity_DeathArea_Reward[4]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[4]["RewardEffect"]["Effect"] = "eidolon"
	-- 打开降魔英豪礼包 获得免费强炼丹*4（赠）
	tIntegralActivity_DeathArea_Reward[5] = {}
	tIntegralActivity_DeathArea_Reward[5]["Log"] = "0,0,3200320,1,12000405,2,3003124,4"
	tIntegralActivity_DeathArea_Reward[5]["RewardNoNeedTip"] = 1
	tIntegralActivity_DeathArea_Reward[5]["RewardItem"] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[5]["RewardItem"][1] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[5]["RewardItem"][1]["Id"] = 3003124		--物品Id
	tIntegralActivity_DeathArea_Reward[5]["RewardItem"][1]["Attr"] = "0 4 3"		--物品属性
	tIntegralActivity_DeathArea_Reward[5]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[5]["RewardEffect"]["Effect"] = "eidolon"
	-- 打开降魔英豪礼包 通神丹*4（赠）
	tIntegralActivity_DeathArea_Reward[6] = {}
	tIntegralActivity_DeathArea_Reward[6]["Log"] = "0,0,3200320,1,12000405,2,3003125,4"
	tIntegralActivity_DeathArea_Reward[6]["RewardNoNeedTip"] = 1
	tIntegralActivity_DeathArea_Reward[6]["RewardItem"] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[6]["RewardItem"][1] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[6]["RewardItem"][1]["Id"] = 3003125		--物品Id
	tIntegralActivity_DeathArea_Reward[6]["RewardItem"][1]["Attr"] = "0 4 3"		--物品属性
	tIntegralActivity_DeathArea_Reward[6]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[6]["RewardEffect"]["Effect"] = "eidolon"
	-- 打开降魔英豪礼包 究极通神丹（赠）
	tIntegralActivity_DeathArea_Reward[7] = {}
	tIntegralActivity_DeathArea_Reward[7]["Log"] = "0,0,3200320,1,12000405,2,3003126,1"
	tIntegralActivity_DeathArea_Reward[7]["RewardNoNeedTip"] = 1
	tIntegralActivity_DeathArea_Reward[7]["RewardItem"] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[7]["RewardItem"][1] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[7]["RewardItem"][1]["Id"] = 3003126		--物品Id
	tIntegralActivity_DeathArea_Reward[7]["RewardItem"][1]["Attr"] = "0 1 3"		--物品属性
	tIntegralActivity_DeathArea_Reward[7]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[7]["RewardEffect"]["Effect"] = "eidolon"
	-- 打开降魔英豪礼包 微光星陨石*2
	tIntegralActivity_DeathArea_Reward[8] = {}
	tIntegralActivity_DeathArea_Reward[8]["Log"] = "0,0,3200320,1,12000405,2,3009000,2"
	tIntegralActivity_DeathArea_Reward[8]["RewardItem"] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[8]["RewardItem"][1] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[8]["RewardItem"][1]["Id"] = 3009000		--物品Id
	tIntegralActivity_DeathArea_Reward[8]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"		--物品属性
	tIntegralActivity_DeathArea_Reward[8]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[8]["RewardEffect"]["Effect"] = "eidolon"
	-- 打开降魔英豪礼包 明亮星陨石
	tIntegralActivity_DeathArea_Reward[9] = {}
	tIntegralActivity_DeathArea_Reward[9]["Log"] = "0,0,3200320,1,12000405,2,3009001,1"
	tIntegralActivity_DeathArea_Reward[9]["RewardItem"] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[9]["RewardItem"][1] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[9]["RewardItem"][1]["Id"] = 3009001		--物品Id
	tIntegralActivity_DeathArea_Reward[9]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"		--物品属性
	tIntegralActivity_DeathArea_Reward[9]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[9]["RewardEffect"]["Effect"] = "eidolon"
	-- 打开降魔英豪礼包 晶莹星陨石
	tIntegralActivity_DeathArea_Reward[10] = {}
	tIntegralActivity_DeathArea_Reward[10]["Log"] = "0,0,3200320,1,12000405,2,3009002,1"
	tIntegralActivity_DeathArea_Reward[10]["RewardItem"] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[10]["RewardItem"][1] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[10]["RewardItem"][1]["Id"] = 3009002		--物品Id
	tIntegralActivity_DeathArea_Reward[10]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"		--物品属性
	tIntegralActivity_DeathArea_Reward[10]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[10]["RewardEffect"]["Effect"] = "eidolon"
	-- 打开降魔英豪礼包 20赠品天石礼包
	tIntegralActivity_DeathArea_Reward[11] = {}
	tIntegralActivity_DeathArea_Reward[11]["Log"] = "0,0,3200320,1,12000405,2,3008719,1"
	tIntegralActivity_DeathArea_Reward[11]["RewardItem"] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[11]["RewardItem"][1] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[11]["RewardItem"][1]["Id"] = 3008719		--物品Id
	tIntegralActivity_DeathArea_Reward[11]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tIntegralActivity_DeathArea_Reward[11]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[11]["RewardEffect"]["Effect"] = "eidolon"
	-- 打开降魔英豪礼包 50赠品天石
	tIntegralActivity_DeathArea_Reward[12] = {}
	tIntegralActivity_DeathArea_Reward[12]["Log"] = "0,0,3200320,1,12000405,2,3200371,1"
	tIntegralActivity_DeathArea_Reward[12]["RewardItem"] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[12]["RewardItem"][1] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[12]["RewardItem"][1]["Id"] = 3200371		--物品Id
	tIntegralActivity_DeathArea_Reward[12]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tIntegralActivity_DeathArea_Reward[12]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[12]["RewardEffect"]["Effect"] = "eidolon"
	-- 打开降魔英豪礼包 固化石礼包
	tIntegralActivity_DeathArea_Reward[13] = {}
	tIntegralActivity_DeathArea_Reward[13]["Log"] = "0,0,3200320,1,12000405,2,3200356,1"
	tIntegralActivity_DeathArea_Reward[13]["RewardItem"] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[13]["RewardItem"][1] = {}				--物品属性
	tIntegralActivity_DeathArea_Reward[13]["RewardItem"][1]["Id"] = 3200356		--物品Id
	tIntegralActivity_DeathArea_Reward[13]["RewardItem"][1]["Attr"] = "0 1"		--物品属性
	tIntegralActivity_DeathArea_Reward[13]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[13]["RewardEffect"]["Effect"] = "eidolon"
	
	-- 打开玲珑天石袋
	tIntegralActivity_DeathArea_Reward[3008719] = {}
	tIntegralActivity_DeathArea_Reward[3008719]["Log"] = "0,0,3008719,1,12000405,2,3,20"
	tIntegralActivity_DeathArea_Reward[3008719]["RewardEMoneyMono"] = {}
	tIntegralActivity_DeathArea_Reward[3008719]["RewardEMoneyMono"]["Value"] = 20
	tIntegralActivity_DeathArea_Reward[3008719]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[3008719]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 打开阳光天石袋
	tIntegralActivity_DeathArea_Reward[3200371] = {}
	tIntegralActivity_DeathArea_Reward[3200371]["Log"] = "0,0,3200371,1,12000405,2,3,50"
	tIntegralActivity_DeathArea_Reward[3200371]["RewardEMoneyMono"] = {}
	tIntegralActivity_DeathArea_Reward[3200371]["RewardEMoneyMono"]["Value"] = 50
	tIntegralActivity_DeathArea_Reward[3200371]["RewardEffect"] = {}
	tIntegralActivity_DeathArea_Reward[3200371]["RewardEffect"]["Effect"] = "angelwing"
	
-- 打开礼包
local tIntegralActivity_DeathArea_Probabil = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"] = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1] = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1]["ItemChanceSum"] = 10000
	-- 50点气力
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][1] = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][1]["RandomItemChanceType"] = 2
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][1]["ItemChance"] = 1500
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][1]["Item_1"] = 4
	-- 免费强炼丹*4（赠）
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][2] = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][2]["RandomItemChanceType"] = 2
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][2]["ItemChance"] = 640
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][2]["Item_1"] = 5
	-- 通神丹*4（赠）
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][3] = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][3]["RandomItemChanceType"] = 2
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][3]["ItemChance"] = 640
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][3]["Item_1"] = 6
	-- 究极通神丹（赠）
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][4] = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][4]["RandomItemChanceType"] = 2
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][4]["ItemChance"] = 500
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][4]["Item_1"] = 7
	-- 微光星陨石*2
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][5] = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][5]["RandomItemChanceType"] = 2
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][5]["ItemChance"] = 4000
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][5]["Item_1"] = 8
	-- 明亮星陨石
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][6] = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][6]["RandomItemChanceType"] = 2
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][6]["ItemChance"] = 1000
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][6]["Item_1"] = 9
	-- 晶莹星陨石
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][7] = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][7]["RandomItemChanceType"] = 2
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][7]["ItemChance"] = 10
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][7]["Item_1"] = 10
	-- 20赠品天石
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][8] = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][8]["RandomItemChanceType"] = 2
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][8]["ItemChance"] = 1200
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][8]["Item_1"] = 11
	-- 50赠品天石
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][9] = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][9]["RandomItemChanceType"] = 2
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][9]["ItemChance"] = 500
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][9]["Item_1"] = 12
	-- 固化石礼包
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][10] = {}
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][10]["RandomItemChanceType"] = 2
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][10]["ItemChance"] = 10
	tIntegralActivity_DeathArea_Probabil["OpenGift"][1][10]["Item_1"] = 13

--------------------------------------逻辑部分-------------------------------------------
-- 修改完成掩码
function IntegralActivity_DeathArea_ClearStc(nUserId)
	nUserId = nUserId or Get_UserId()
	local nEvent = tIntegralActivity_DeathArea_Stc[1]["EventType"]
	local nType = tIntegralActivity_DeathArea_Stc[1]["DataType"]
	-- 除魔值
	local nTotalEvent = tIntegralActivity_DeathArea_Stc[2]["EventType"]
	local nTotalType = tIntegralActivity_DeathArea_Stc[2]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		
		Task_SetStatistic(nTotalEvent,nTotalType,0,1,nUserId)
		Task_SetStcTimestamp(nTotalEvent,nTotalType,0,nUserId)
	end
end

-- 地图传送
function IntegralActivity_DeathArea_TransPos(nIndex,nUserId)
	nIndex = nIndex or 2
	nUserId = nUserId or Get_UserId()
	local nMapId = tIntegralActivity_DeathArea_ChgMap[nIndex]["MapId"]
	local nPosX = tIntegralActivity_DeathArea_ChgMap[nIndex]["PosX"]
	local nPosY = tIntegralActivity_DeathArea_ChgMap[nIndex]["PosY"]
	local nRange = tIntegralActivity_DeathArea_ChgMap[nIndex]["Range"]
	local nEvent = tIntegralActivity_DeathArea_ChgMap[nIndex]["Effect"]
	local sUserTalk = tIntegralActivity_DeathArea_ChgMap[nIndex]["Talk"]
	
	if nIndex == 1 then
		local nRealIndex = math.random(1,4)
		nPosX = tIntegralActivity_DeathArea_RandomPos[nRealIndex][1]
		nPosY = tIntegralActivity_DeathArea_RandomPos[nRealIndex][2]
	end

	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,0,nUserId)
	if sUserTalk ~= nil then
		User_TalkChannel2005(tIntegralActivity_DeathArea_Text[sUserTalk],nUserId)
	end
	User_EffectAdd(tIntegralActivity_DeathArea_Effect[nEvent]["EffectObj"],tIntegralActivity_DeathArea_Effect[nEvent]["Effect"],nUserId)
end

-- 进入魔穴
function IntegralActivity_DeathArea_EnterDeathArea(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tIntegralActivity_DeathArea_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 等级不足
	if not User_JudgeLevelAndMetempsychosis(tIntegralActivity_DeathArea_Count["Level"],tIntegralActivity_DeathArea_Count["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 清理掩码
	IntegralActivity_DeathArea_ClearStc()
	
	local nTotalEvent = tIntegralActivity_DeathArea_Stc[2]["EventType"]
	local nTotalType = tIntegralActivity_DeathArea_Stc[2]["DataType"]
	
	local nGetTotalData = Get_UserStatisticValue(nTotalEvent,nTotalType)
	local nTotalLimit = tIntegralActivity_DeathArea_Stc[2]["Limit"]
	if nGetTotalData >= nTotalLimit then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	local nEvent = tIntegralActivity_DeathArea_Stc[3]["EventType"]
	local nType = tIntegralActivity_DeathArea_Stc[3]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData < 1 then
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		Sys_SaveActionFestivalLog(tIntegralActivity_DeathArea_Log["EnterDeathArea"])
	end
	
	IntegralActivity_DeathArea_TransPos(1)
end

-- 换取奖赏
function IntegralActivity_DeathArea_ExchangeAward(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tIntegralActivity_DeathArea_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 等级不足
	if not User_JudgeLevelAndMetempsychosis(tIntegralActivity_DeathArea_Count["Level"],tIntegralActivity_DeathArea_Count["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 礼包个数
	local nEvent = tIntegralActivity_DeathArea_Stc[1]["EventType"]
	local nType = tIntegralActivity_DeathArea_Stc[1]["DataType"]
	
	local nTotalEvent = tIntegralActivity_DeathArea_Stc[2]["EventType"]
	local nTotalType = tIntegralActivity_DeathArea_Stc[2]["DataType"]
	
	-- 隔天清除
	IntegralActivity_DeathArea_ClearStc()
	
	-- 已获得礼包个数
	local nGetGiftNum = Get_UserStatisticValue(nEvent,nType)
	local nGiftLimit = tIntegralActivity_DeathArea_Stc[1]["Limit"]
	
	local nNeedKillData = tIntegralActivity_DeathArea_Count["ExchangeNeedData"]
	-- 除魔值
	local nTotalData = Get_UserStatisticValue(nTotalEvent,nTotalType)
	-- 剩余
	local nLeftKillData = nTotalData - nGetGiftNum*nNeedKillData
	
	-- 当天奖赏已领满
	if nGetGiftNum >= nGiftLimit then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 除魔功绩不足
	if nLeftKillData < nNeedKillData then
		local sChangeText = tIntegralActivity_DeathArea_Text[19269]["212"]
		tNpcGossip[19269]["Text212"] = string.format(sChangeText,nGetGiftNum,nGiftLimit-nGetGiftNum)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 背包空间不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	local nNowGetNum = math.floor(nLeftKillData/nNeedKillData)
	
	-- 设置掩码给奖励
	local nUseKillData = nNowGetNum*nNeedKillData
	local nAlGetNum = nGetGiftNum+nNowGetNum
	-- 已获得的礼包个数
	Task_SetStatistic(nEvent,nType,nAlGetNum,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	-- 给奖励
	for i=1,nNowGetNum do
		RewardTemplate_Reward(tIntegralActivity_DeathArea_Reward[1])
	end
	local sLog = tIntegralActivity_DeathArea_Reward[1]["SpeEMoneyLog"]
	Sys_SaveEmoneyBuy(string.format(sLog,nNowGetNum))
	
	-- 获得奖励提示
	local sShowText = ""
	local sUseText = ""
	if nAlGetNum == nGiftLimit then
		sUseText = tIntegralActivity_DeathArea_Text["GiftTenLimit"]
		sShowText = string.format(sUseText,nUseKillData,nNowGetNum)
		-- 十个再加个log
		Sys_SaveActionFestivalLog(tIntegralActivity_DeathArea_Log["ExchangeTen"])
	else
		sUseText = tIntegralActivity_DeathArea_Text["GiftNoTenLimit"]
		sShowText = string.format(sUseText,nUseKillData,nNowGetNum,nGiftLimit-nAlGetNum)
	end
	Sys_MsgBox(sShowText)
end

-- 物品使用
function IntegralActivity_DeathArea_UseItem(nItemId)
	if not Sys_ChkFullTime(tIntegralActivity_DeathArea_Count["ItemUseTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tIntegralActivity_DeathArea_Text[nItemId]["OverTime"])
		end
		return
	end
	if not User_CheckLeftSpace(2) then
		Sys_MsgBox(tIntegralActivity_DeathArea_Text[nItemId]["NoSpace"])
		return
	end 
	-- 领奖上限
	local nGlobalId = tIntegralActivity_DeathArea_Count["GlobalId"]
	
	-- 给奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nFlat,tReward = Probabil_RandomAward(tIntegralActivity_DeathArea_Probabil["OpenGift"],1)
		local nRewardIndex = tReward[1]["tAward"][1]["Item_1"]
		
		local nDataOne = Get_SysDynaGlobalData1(nGlobalId)
		local nDataTwo = Get_SysDynaGlobalData2(nGlobalId)
		local nRewardOne = tIntegralActivity_DeathArea_Count["RewardOne"]
		local nRewardTwo = tIntegralActivity_DeathArea_Count["RewardTwo"]
		-- 明亮上限一个
		if nRewardIndex == nRewardOne then
			if nDataOne == 1 then
				nRewardIndex = 8
			else
				Sys_SetSynaGlobalData1(nGlobalId,1) 
			end
		end
		-- 固化石礼包上限一个
		if nRewardIndex == nRewardTwo then
			if nDataTwo == 1 then
				nRewardIndex = 8
			else
				Sys_SetSynaGlobalData2(nGlobalId,1) 
			end
		end
	
		RewardTemplate_Reward(tIntegralActivity_DeathArea_Reward[nRewardIndex])
		local sHowText = tIntegralActivity_DeathArea_Text[nItemId][nRewardIndex]
		if nRewardIndex == nRewardOne or nRewardIndex == nRewardTwo then
			local nUserId = Get_UserId()
			local sUserName = Get_UserName(nUserId)
			Sys_SystemBroadcast(string.format(sHowText,sUserName))
		else
			if sHowText ~= nil then
				User_TalkChannel2005(sHowText)
			end
		end
	end
end

-- 固化石二次确认
function IntegralActivity_DeathArea_SureGetStone(nItemId)
	if not Sys_ChkFullTime(tIntegralActivity_DeathArea_Count["ItemUseTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tIntegralActivity_DeathArea_Text[nItemId]["OverTime"])
		end
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tIntegralActivity_DeathArea_Reward[2])
		User_TalkChannel2005(tIntegralActivity_DeathArea_Text[nItemId]["AwardStone"])
	end
end

-- 气力值二次确认
function IntegralActivity_DeathArea_SureGetStrength(nItemId)
	if not Sys_ChkFullTime(tIntegralActivity_DeathArea_Count["ItemUseTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tIntegralActivity_DeathArea_Text[nItemId]["OverTime"])
		end
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tIntegralActivity_DeathArea_Reward[3])
	end
end

-- 天石
function IntegralActivity_DeathArea_UseEMoneyItem(nItemId)
	local nNeedEMoneyMono = tIntegralActivity_DeathArea_NeedEMonyMono[nItemId]
	local nMaxEMoneyMono = Get_UserMonoEMoney()+nNeedEMoneyMono
	if nMaxEMoneyMono > G_User_MaxEmoneyMono then
		Sys_MsgBox(tIntegralActivity_DeathArea_Text["FullEMoneyMono"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tIntegralActivity_DeathArea_Reward[nItemId])
	end
end

-- 杀怪后刷怪
function IntegralActivity_DeathArea_BossBorn(nMonsterId)
	-- 获取怪物数量
	if nMonsterId == nil then
		nMonsterId = tIntegralActivity_DeathArea_Count["BossId"]
	end
	local nMapId = tIntegralActivity_DeathArea_Count["MapId"]
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	
	if nMonsterNum > 0 then
		return
	end
	
	local nIndex = math.random(1,5)
	local nPosX = tIntegralActivity_DeathArea_BoosInfo["Pos"][nIndex][1]
	local nPosY = tIntegralActivity_DeathArea_BoosInfo["Pos"][nIndex][2]
	local nGenId = tIntegralActivity_DeathArea_BoosInfo["GeneratorId"]
	
	Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	Sys_SetTempData(1,nMapId,nMonsterId,nMonsterNum+1)
	-- Map_SendBroadcastMsg(nMapId,string.format(tIntegralActivity_DeathArea_Text["BossShow"],nIndex,nPosX,nPosY))
end

function IntegralActivity_DeathArea_StartBossBorn()
	local nMonsterId = tIntegralActivity_DeathArea_Count["BossId"]
	local nMapId = tIntegralActivity_DeathArea_Count["MapId"]
	
	local nIndex = math.random(1,5)
	local nPosX = tIntegralActivity_DeathArea_BoosInfo["Pos"][nIndex][1]
	local nPosY = tIntegralActivity_DeathArea_BoosInfo["Pos"][nIndex][2]
	local nGenId = tIntegralActivity_DeathArea_BoosInfo["GeneratorId"]
	
	Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	Sys_SetTempData(1,nMapId,nMonsterId,1)
end

-- 杀怪
function IntegralActivity_DeathArea_KillDemon(nMonsterId)
	-- 总的除魔值
	local nTotalEvent = tIntegralActivity_DeathArea_Stc[2]["EventType"]
	local nTotalType = tIntegralActivity_DeathArea_Stc[2]["DataType"]
	
	-- 隔天清除
	IntegralActivity_DeathArea_ClearStc()
	
	-- 击杀Boss公告并生成
	if nMonsterId == tIntegralActivity_DeathArea_Count["BossId"] then
		local nMapId = tIntegralActivity_DeathArea_Count["MapId"]
		local sUserName = Get_UserName(nUserId)
		User_EffectAdd(tIntegralActivity_DeathArea_Effect[1]["EffectObj"],tIntegralActivity_DeathArea_Effect[1]["Effect"])
		Map_SendBroadcastMsg(nMapId,string.format(tIntegralActivity_DeathArea_Text["KillBossGM"],sUserName))
		
		-- 生成怪物
		local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
		if nMonsterNum >= 1 then
			Sys_SetTempData(1,nMapId,nMonsterId,nMonsterNum-1)
		end
		IntegralActivity_DeathArea_BossBorn(nMonsterId)
	end
	
	local nGetTotalData = Get_UserStatisticValue(nTotalEvent,nTotalType)
	local nTotalLimit = tIntegralActivity_DeathArea_Stc[2]["Limit"]
	if nGetTotalData >= nTotalLimit then
		User_TalkChannel2005(tIntegralActivity_DeathArea_Text["KillFullIntegral"])
		return
	end
	
	local nKillData = tIntegralActivity_DeathArea_KillData[nMonsterId]
	local nUserId = Get_UserId()
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum > 1 then
		User_TeamExeFuncByTeamer(2,"IntegralActivity_DeathArea_TeamAddIntegral</N>"..nKillData,nUserId)
	else
		IntegralActivity_DeathArea_TeamAddIntegral(nKillData,nUserId)
	end
	
	-- 击杀boss给奖励
	if nMonsterId == tIntegralActivity_DeathArea_Count["BossId"] then
		Item_AddNewItem(tIntegralActivity_DeathArea_Count["KillGetItem"],"0 1")
		Sys_MsgBox(tIntegralActivity_DeathArea_Text["KillGetItem"])
	end
end

function IntegralActivity_DeathArea_TeamAddIntegral(nKillData,nUserId)
	local nTotalEvent = tIntegralActivity_DeathArea_Stc[2]["EventType"]
	local nTotalType = tIntegralActivity_DeathArea_Stc[2]["DataType"]
	-- 隔天清除
	IntegralActivity_DeathArea_ClearStc(nUserId)
	
	local nGetTotalData = Get_UserStatisticValue(nTotalEvent,nTotalType,nUserId)
	local nTotalLimit = tIntegralActivity_DeathArea_Stc[2]["Limit"]
	
	local nNowTotal = nGetTotalData+nKillData
	if nNowTotal >= nTotalLimit then
		nNowTotal = nTotalLimit
	end
	
	Task_SetStatistic(nTotalEvent,nTotalType,nNowTotal,1,nUserId)
	Task_SetStcTimestamp(nTotalEvent,nTotalType,0,nUserId)
	if nNowTotal >= nTotalLimit then
		IntegralActivity_DeathArea_TransPos(2,nUserId)
		Sys_MsgBox(tIntegralActivity_DeathArea_Text["KillFullReward"],"NULL","NULL",nUserId)
	else
		User_TalkChannel2005(string.format(tIntegralActivity_DeathArea_Text["KillIntegral"],nNowTotal),nUserId)
	end
end

function IntegralActivity_DeathArea_TranMap(nNpcId)
	IntegralActivity_DeathArea_TransPos(3)
end

-- 陷阱触发
function IntegralActivity_DeathArea_Trap(nTrapId,nTrapType)
	IntegralActivity_DeathArea_TransPos(2)
end

-- 动态掩码清理
function IntegralActivity_DeathArea_ClearGlobalData()
	local nGlobalId = tIntegralActivity_DeathArea_Count["GlobalId"]
	local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId)
	
	if Sys_ChkFullTime(tIntegralActivity_DeathArea_Count["ClearGlobalTime"]) then
		if Sys_ChkDayTime(tIntegralActivity_DeathArea_ClearGlobal["Time"]) then
			if not (sDataStr5 == "1") then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"1")
				Sys_SetSynaGlobalData1(nGlobalId,0)
				Sys_SetSynaGlobalData2(nGlobalId,0)
			end
		elseif 	sDataStr5 == "1" then
			Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
		end
	end
end
--------------------------------------NPC模块-------------------------------------------
-- 太玄真人
tNpcFace[4148] = 6
tNpcGossip[19269] = tNpcGossip[19269] or DefaultNpc:new{}
tNpcGossip[19269]["OptionHidden"] = 1
-- 活动前
tNpcGossip[19269]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19269]["Text111"] = tIntegralActivity_DeathArea_Text[19269]["111"]
tNpcGossip[19269]["Text112"] = tIntegralActivity_DeathArea_Text[19269]["112"]
tNpcGossip[19269]["Text113"] = tIntegralActivity_DeathArea_Text[19269]["113"]
tNpcGossip[19269]["Text114"] = tIntegralActivity_DeathArea_Text[19269]["114"]
tNpcGossip[19269]["Text115"] = tIntegralActivity_DeathArea_Text[19269]["115"]
tNpcGossip[19269]["tOption1-1"] = {1}
tNpcGossip[19269]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tIntegralActivity_DeathArea_Count["BeforeActivityTime"])
end
tNpcGossip[19269]["Option1"] = tIntegralActivity_DeathArea_Text[19269]["Option1"]

-- 活动后
tNpcGossip[19269]["Text1-2"] = {121}
tNpcGossip[19269]["Text121"] = tIntegralActivity_DeathArea_Text[19269]["121"]
tNpcGossip[19269]["tOption1-2"] = {2}
tNpcGossip[19269]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tIntegralActivity_DeathArea_Count["ActivityTime"])
end
tNpcGossip[19269]["Option2"] = tIntegralActivity_DeathArea_Text[19269]["Option2"]

-- 活动中等级不足
tNpcGossip[19269]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[19269]["Text131"] = tIntegralActivity_DeathArea_Text[19269]["131"]
tNpcGossip[19269]["Text132"] = tIntegralActivity_DeathArea_Text[19269]["132"]
tNpcGossip[19269]["Text133"] = tIntegralActivity_DeathArea_Text[19269]["133"]
tNpcGossip[19269]["Text134"] = tIntegralActivity_DeathArea_Text[19269]["134"]
tNpcGossip[19269]["Text135"] = tIntegralActivity_DeathArea_Text[19269]["135"]
tNpcGossip[19269]["tOption1-3"] = {3}
tNpcGossip[19269]["ChkFunc1-3"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tIntegralActivity_DeathArea_Count["Level"],tIntegralActivity_DeathArea_Count["Metempsychosis"])
end
tNpcGossip[19269]["Option3"] = tIntegralActivity_DeathArea_Text[19269]["Option3"]

-- 活动中
tNpcGossip[19269]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[19269]["Text141"] = tIntegralActivity_DeathArea_Text[19269]["141"]
tNpcGossip[19269]["Text142"] = tIntegralActivity_DeathArea_Text[19269]["142"]
tNpcGossip[19269]["Text143"] = ""
tNpcGossip[19269]["Text144"] = tIntegralActivity_DeathArea_Text[19269]["144"]
tNpcGossip[19269]["Text145"] = tIntegralActivity_DeathArea_Text[19269]["145"]
tNpcGossip[19269]["tOption1-4"] = {4,5,6,7}
tNpcGossip[19269]["ChkFunc1-4"] = function ()
	local sShowText = tIntegralActivity_DeathArea_Text[19269]["143"]
	local nEvent = tIntegralActivity_DeathArea_Stc[2]["EventType"]
	local nType = tIntegralActivity_DeathArea_Stc[2]["DataType"]
	-- 隔天清除
	IntegralActivity_DeathArea_ClearStc()
	-- 已获得礼包个数
	local nGetData = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[19269]["Text143"] = string.format(sShowText,nGetData)
	
	return true
end
-- 进入魔穴
tNpcGossip[19269]["Option4"] = tIntegralActivity_DeathArea_Text[19269]["Option4"]
tNpcGossip[19269]["OptionFunc4"] = "IntegralActivity_DeathArea_EnterDeathArea</N>19269"
-- 换取奖赏
tNpcGossip[19269]["Option5"] = tIntegralActivity_DeathArea_Text[19269]["Option5"]
tNpcGossip[19269]["OptionFunc5"] = "IntegralActivity_DeathArea_ExchangeAward</N>19269"
-- 了解详情
tNpcGossip[19269]["Option6"] = tIntegralActivity_DeathArea_Text[19269]["Option6"]
tNpcGossip[19269]["OptionPoint6"] = "3-1"

tNpcGossip[19269]["Option7"] = tIntegralActivity_DeathArea_Text[19269]["Option7"]

-- 换取奖赏，除魔功绩不足
tNpcGossip[19269]["Text2-1"] = {211,212}
tNpcGossip[19269]["Text211"] = tIntegralActivity_DeathArea_Text[19269]["211"]
tNpcGossip[19269]["Text212"] = tIntegralActivity_DeathArea_Text[19269]["212"]
tNpcGossip[19269]["tOption2-1"] = {8}
tNpcGossip[19269]["Option8"] = tIntegralActivity_DeathArea_Text[19269]["Option8"]

-- 换取奖赏，当天奖赏已领满
tNpcGossip[19269]["Text2-2"] = {221}
tNpcGossip[19269]["Text221"] = tIntegralActivity_DeathArea_Text[19269]["221"]
tNpcGossip[19269]["tOption2-2"] = {9}
tNpcGossip[19269]["Option9"] = tIntegralActivity_DeathArea_Text[19269]["Option9"]

-- 换取奖赏，背包空间不足
tNpcGossip[19269]["Text2-3"] = {231}
tNpcGossip[19269]["Text231"] = tIntegralActivity_DeathArea_Text[19269]["231"]
tNpcGossip[19269]["tOption2-3"] = {10}
tNpcGossip[19269]["Option10"] = tIntegralActivity_DeathArea_Text[19269]["Option10"]

-- 了解详情
tNpcGossip[19269]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[19269]["Text311"] = tIntegralActivity_DeathArea_Text[19269]["311"]
tNpcGossip[19269]["Text312"] = tIntegralActivity_DeathArea_Text[19269]["312"]
tNpcGossip[19269]["Text313"] = tIntegralActivity_DeathArea_Text[19269]["313"]
tNpcGossip[19269]["Text314"] = tIntegralActivity_DeathArea_Text[19269]["314"]
tNpcGossip[19269]["Text315"] = tIntegralActivity_DeathArea_Text[19269]["315"]
tNpcGossip[19269]["Text316"] = tIntegralActivity_DeathArea_Text[19269]["316"]
tNpcGossip[19269]["Text317"] = tIntegralActivity_DeathArea_Text[19269]["317"]
tNpcGossip[19269]["tOption3-1"] = {11}
tNpcGossip[19269]["Option11"] = tIntegralActivity_DeathArea_Text[19269]["Option11"]

-- 无法进入地图，满200
tNpcGossip[19269]["Text3-2"] = {321}
tNpcGossip[19269]["Text321"] = tIntegralActivity_DeathArea_Text[19269]["321"]
tNpcGossip[19269]["tOption3-2"] = {12}
tNpcGossip[19269]["Option12"] = tIntegralActivity_DeathArea_Text[19269]["Option12"]

-- 太平真人
tNpcFace[4159] = 67
tNpcGossip[19299] = tNpcGossip[19299] or DefaultNpc:new{}
tNpcGossip[19299]["OptionHidden"] = 1
-- 主对白
tNpcGossip[19299]["Text1-1"] = {111,112}
tNpcGossip[19299]["Text111"] = tIntegralActivity_DeathArea_Text[19299]["111"]
tNpcGossip[19299]["Text112"] = tIntegralActivity_DeathArea_Text[19299]["112"]
tNpcGossip[19299]["tOption1-1"] = {1,2}
tNpcGossip[19299]["Option1"] = tIntegralActivity_DeathArea_Text[19299]["Option1"]
tNpcGossip[19299]["OptionFunc1"] = "IntegralActivity_DeathArea_TranMap</N>19299"
tNpcGossip[19299]["Option2"] = tIntegralActivity_DeathArea_Text[19299]["Option2"]

--------------------------------------物品模块-------------------------------------------
-- 降魔英豪礼包
tItem[3200320] = tItem[3200320] or {}
tItem[3200320]["Function"] = function(nItemId,sItemName)
	IntegralActivity_DeathArea_UseItem(nItemId)
end

-- 固化石礼盒
tItem[3200356] = tItem[3200356] or {}
-- tItem[3200356]["Function"] = function(nItemId,sItemName)
	-- IntegralActivity_DeathArea_UseItem(nItemId)
-- end

tItem[3200356]["Text1-1"] = {111}
tItem[3200356]["Text111"] = tIntegralActivity_DeathArea_Text[3200356]["111"]
tItem[3200356]["tOption1-1"] = {1,2}
-- 固化石二次确认
tItem[3200356]["Option1"] = tIntegralActivity_DeathArea_Text[3200356]["Option1"]
tItem[3200356]["OptionPoint1"] = "1-2"

-- 1200气力值
tItem[3200356]["Option2"] = tIntegralActivity_DeathArea_Text[3200356]["Option2"]
tItem[3200356]["OptionPoint2"] = "1-3"

-- 固化石二次确认
tItem[3200356]["Text1-2"] = {121}
tItem[3200356]["Text121"] = tIntegralActivity_DeathArea_Text[3200356]["121"]
tItem[3200356]["tOption1-2"] = {3,4}
tItem[3200356]["Option3"] = tIntegralActivity_DeathArea_Text[3200356]["Option3"]
tItem[3200356]["OptionFunc3"] = "IntegralActivity_DeathArea_SureGetStone</N>3200356"
tItem[3200356]["Option4"] = tIntegralActivity_DeathArea_Text[3200356]["Option4"]

-- 1200气力值二次确认
tItem[3200356]["Text1-3"] = {131}
tItem[3200356]["Text131"] = tIntegralActivity_DeathArea_Text[3200356]["131"]
tItem[3200356]["tOption1-3"] = {5,6}
tItem[3200356]["Option5"] = tIntegralActivity_DeathArea_Text[3200356]["Option5"]
tItem[3200356]["OptionFunc5"] = "IntegralActivity_DeathArea_SureGetStrength</N>3200356"
tItem[3200356]["Option6"] = tIntegralActivity_DeathArea_Text[3200356]["Option6"]

-- 玲珑天石袋
tItem[3008719] = tItem[3008719] or {}
tItem[3008719]["Function"] = function(nItemId,sItemName)
	IntegralActivity_DeathArea_UseEMoneyItem(nItemId)
end

-- 阳光天石袋
tItem[3200371] = tItem[3200371] or {}
tItem[3200371]["Function"] = function(nItemId,sItemName)
	IntegralActivity_DeathArea_UseEMoneyItem(nItemId)
end

--------------------------------------怪物模块-------------------------------------------
-- local tIntegralActivity_DeathArea_MonsterDrop = {}
-- tIntegralActivity_DeathArea_MonsterDrop["ActivityTime"] = tIntegralActivity_DeathArea_Count["ActivityTime"]
-- tIntegralActivity_DeathArea_MonsterDrop["Function"] = IntegralActivity_DeathArea_KillDemon
-- tIntegralActivity_DeathArea_MonsterDrop["MonsterId"] = {3927,3928,3929,3930}
-- table.insert(tMonsterDrop_AreaLoad,tIntegralActivity_DeathArea_MonsterDrop)
--------------------------------------陷阱模块-------------------------------------------
-- 传送点
tTrap[1421] = tTrap[1421] or {}
tTrap[1421]["Function"] = function(nTrapId,nTrapType)
	IntegralActivity_DeathArea_Trap(nTrapId,nTrapType)
end
--------------------------------------服务器启动------------------------------------------
-- 服务器启动获得刷BOSS怪
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],IntegralActivity_DeathArea_StartBossBorn)

--tOntimerMin_HM	小时/分钟（每天的00点00分到00点02分执行）
--'00:00-00:02'
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],IntegralActivity_DeathArea_ClearGlobalData)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],IntegralActivity_DeathArea_ClearGlobalData)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],IntegralActivity_DeathArea_ClearGlobalData)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],IntegralActivity_DeathArea_ClearGlobalData)
-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],IntegralActivity_DeathArea_ClearGlobalData)