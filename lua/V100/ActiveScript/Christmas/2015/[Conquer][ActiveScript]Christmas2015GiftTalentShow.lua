------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]2015年圣诞元旦活动之礼物达人秀(12.22-01.04)
--Purpose:	圣诞元旦活动之礼物达人秀
--Creator: 	兰瑞妹
--Created:	2015/09/18
------------------------------------------------------------------------------------

-- 命名前缀
-- Christmas_GiftTalentShow

-- 掩码说明
-- #stc(130,89)	记录换取银两的普通圣诞礼物个数，每天最多20个礼物
-- #stc(130,90)	记录换取银两的精品圣诞礼物个数，每天最多20个礼物
-- #stc(130,91)	记录换取银两的极品圣诞礼物个数，每天最多20个礼物
-- #stc(130,92)	记录放入圣诞礼物个数,每天最多三次
-- #stc(139,65)	记录各个品质圣诞糖果个数,每天上限99个，之后不再掉落
-- #stc(139,66)	记录各个品质圣诞袜个数,每天上限99个，之后不再掉落
-- #stc(139,67)	记录各个品质圣诞果酒个数,每天上限99个，之后不再掉落

-- 常量表
local tChristmas_GiftTalentShow_Count = {}
	tChristmas_GiftTalentShow_Count["BeforeActivityTime"] = "2017-01-22 00:00 2017-12-20 23:59"
	tChristmas_GiftTalentShow_Count["ActivityTime"] = "2017-12-21 00:00 2018-01-03 23:59"
	
	-- 玩家等级要求
	tChristmas_GiftTalentShow_Count["Metempsychosis"] = 0
	tChristmas_GiftTalentShow_Count["Level"] = 80
	
	-- 所有物品
	-- 攻略
	tChristmas_GiftTalentShow_Count["ItemStrategy"] = 3005088
	-- 普通、精品、极品圣诞糖果
	tChristmas_GiftTalentShow_Count["ItemCandy"] = {}
	tChristmas_GiftTalentShow_Count["ItemCandy"][1] =3005322
	tChristmas_GiftTalentShow_Count["ItemCandy"][2] = 3005321
	tChristmas_GiftTalentShow_Count["ItemCandy"][3] = 3005320
	-- 普通、精品、极品圣诞袜
	tChristmas_GiftTalentShow_Count["ItemSocks"] = {}
	tChristmas_GiftTalentShow_Count["ItemSocks"][1] = 3005325
	tChristmas_GiftTalentShow_Count["ItemSocks"][2] = 3005324
	tChristmas_GiftTalentShow_Count["ItemSocks"][3] = 3005323
	-- 普通、精品、极品圣诞果酒
	tChristmas_GiftTalentShow_Count["ItemWine"] = {}
	tChristmas_GiftTalentShow_Count["ItemWine"][1] = 3005328
	tChristmas_GiftTalentShow_Count["ItemWine"][2] = 3005327
	tChristmas_GiftTalentShow_Count["ItemWine"][3] = 3005326
	
	-- 礼物交换银两
	tChristmas_GiftTalentShow_Count["ExGiftMoney"] = {}
	tChristmas_GiftTalentShow_Count["ExGiftMoney"][1] = 500
	tChristmas_GiftTalentShow_Count["ExGiftMoney"][2] = 1000
	tChristmas_GiftTalentShow_Count["ExGiftMoney"][3] = 5000

	--tChristmas_GiftTalentShow_Count["LogId"] = 10002364
	-- 物品提示文字索引与log
	-- 糖果
	tChristmas_GiftTalentShow_Count[1] = {}
	tChristmas_GiftTalentShow_Count[1]["MsgBoxIndex"] = "NormalGift"
	tChristmas_GiftTalentShow_Count[1]["UserTalkIndex"] = "AwardMoney"
	tChristmas_GiftTalentShow_Count[1]["Log"] = "0,0,3005320,1,10002364,2,1,5000"
	
	tChristmas_GiftTalentShow_Count[2] = {}
	tChristmas_GiftTalentShow_Count[2]["MsgBoxIndex"] = "BetterCandy"
	tChristmas_GiftTalentShow_Count[2]["UserTalkIndex"] = "AwardItemMeteor"
	tChristmas_GiftTalentShow_Count[2]["Log"] = "0,0,3005321,1,10002364,2,1088001,1"
	
	tChristmas_GiftTalentShow_Count[3] = {}
	tChristmas_GiftTalentShow_Count[3]["MsgBoxIndex"] = "BestCandy"
	tChristmas_GiftTalentShow_Count[3]["UserTalkIndex"] = "AwardExp"
	tChristmas_GiftTalentShow_Count[3]["Log"] = "0,0,3005322,1,10002364,2,4,30"
	-- 袜
	tChristmas_GiftTalentShow_Count[4] = {}
	tChristmas_GiftTalentShow_Count[4]["MsgBoxIndex"] = "NormalGift"
	tChristmas_GiftTalentShow_Count[4]["UserTalkIndex"] = "AwardMoney"
	tChristmas_GiftTalentShow_Count[4]["Log"] = "0,0,3005323,1,10002364,2,1,5000"
	
	tChristmas_GiftTalentShow_Count[5] = {}
	tChristmas_GiftTalentShow_Count[5]["MsgBoxIndex"] = "BetterSocks"
	tChristmas_GiftTalentShow_Count[5]["UserTalkIndex"] = "AwardItemLifePotion"
	tChristmas_GiftTalentShow_Count[5]["Log"] = "0,0,3005324,1,10002364,2,1000040,1"
	
	tChristmas_GiftTalentShow_Count[6] = {}
	tChristmas_GiftTalentShow_Count[6]["MsgBoxIndex"] = "BestSocks"
	tChristmas_GiftTalentShow_Count[6]["UserTalkIndex"] = "AwardCult"
	tChristmas_GiftTalentShow_Count[6]["Log"] = "0,0,3005325,1,10002364,2,6,10"
	
	-- 果酒
	tChristmas_GiftTalentShow_Count[7] = {}
	tChristmas_GiftTalentShow_Count[7]["MsgBoxIndex"] = "NormalGift"
	tChristmas_GiftTalentShow_Count[7]["UserTalkIndex"] = "AwardMoney"
	tChristmas_GiftTalentShow_Count[7]["Log"] = "0,0,3005326,1,10002364,2,1,5000"
	
	tChristmas_GiftTalentShow_Count[8] = {}
	tChristmas_GiftTalentShow_Count[8]["MsgBoxIndex"] = "BetterWine"
	tChristmas_GiftTalentShow_Count[8]["UserTalkIndex"] = "AwardItemDiligenceBook"
	tChristmas_GiftTalentShow_Count[8]["Log"] = "0,0,3005327,1,10002364,2,723340,1"
	
	tChristmas_GiftTalentShow_Count[9] = {}
	tChristmas_GiftTalentShow_Count[9]["MsgBoxIndex"] = "BestWine"
	tChristmas_GiftTalentShow_Count[9]["UserTalkIndex"] = "AwardStreng"
	tChristmas_GiftTalentShow_Count[9]["Log"] = "0,0,3005328,1,10002364,2,12,20"
	
-- Log表
local tChristmas_GiftTalentShow_Log = {}
	tChristmas_GiftTalentShow_Log["GetItemStrategy"] = "0,0,0,0,10002364,2,3005088,1"
	tChristmas_GiftTalentShow_Log["ItemOverdue"] = "0,0,%d,1,10002364,0,0,0"
	tChristmas_GiftTalentShow_Log["ExGiftMoney"] = "0,0,%d,5,10002364,2,1,%d"
	
	tChristmas_GiftTalentShow_Log["GetStrengAward"] = "0,0,3005322,1,10002364,2,12,20"
	
-- 获得奖励
local tChristmas_GiftTalentShow_Award = {}
	tChristmas_GiftTalentShow_Award["AwardMoney"] = 5000
	
	tChristmas_GiftTalentShow_Award["AwardItem"] = {}
	-- 流星
	tChristmas_GiftTalentShow_Award["AwardItem"][2] = 1088001
	-- 归元灵露
	tChristmas_GiftTalentShow_Award["AwardItem"][5] = 1000040
	-- 奇门秘籍
	tChristmas_GiftTalentShow_Award["AwardItem"][8] = 723340
	-- 30分钟经验
	tChristmas_GiftTalentShow_Award["AwardExp"] = 30
	-- 10点修行值
	tChristmas_GiftTalentShow_Award["AwardCult"] = 10
	-- 20点气力值
	tChristmas_GiftTalentShow_Award["AwardStreng"] = 20
	
-- stc掩码
local tChristmas_GiftTalentShow_Stc = {}
	tChristmas_GiftTalentShow_Stc[1] = {}
	tChristmas_GiftTalentShow_Stc[1]["EventType"] = 130
	tChristmas_GiftTalentShow_Stc[1]["DataType"] = 89
	tChristmas_GiftTalentShow_Stc[1]["LimitData"] = 20
	
	tChristmas_GiftTalentShow_Stc[2] = {}
	tChristmas_GiftTalentShow_Stc[2]["EventType"] = 130
	tChristmas_GiftTalentShow_Stc[2]["DataType"] = 90
	tChristmas_GiftTalentShow_Stc[2]["LimitData"] = 20
	
	tChristmas_GiftTalentShow_Stc[3] = {}
	tChristmas_GiftTalentShow_Stc[3]["EventType"] = 130
	tChristmas_GiftTalentShow_Stc[3]["DataType"] = 91
	tChristmas_GiftTalentShow_Stc[3]["LimitData"] = 20
	
	tChristmas_GiftTalentShow_Stc[4] = {}
	tChristmas_GiftTalentShow_Stc[4]["EventType"] = 130
	tChristmas_GiftTalentShow_Stc[4]["DataType"] = 92
	tChristmas_GiftTalentShow_Stc[4]["LimitData"] = 3
	
	tChristmas_GiftTalentShow_Stc[5] = {}
	tChristmas_GiftTalentShow_Stc[5]["EventType"] = 139
	tChristmas_GiftTalentShow_Stc[5]["DataType"] = 65
	tChristmas_GiftTalentShow_Stc[5]["LimitData"] = 99
	
	tChristmas_GiftTalentShow_Stc[6] = {}
	tChristmas_GiftTalentShow_Stc[6]["EventType"] = 139
	tChristmas_GiftTalentShow_Stc[6]["DataType"] = 66
	tChristmas_GiftTalentShow_Stc[6]["LimitData"] = 99
	
	tChristmas_GiftTalentShow_Stc[7] = {}
	tChristmas_GiftTalentShow_Stc[7]["EventType"] = 139
	tChristmas_GiftTalentShow_Stc[7]["DataType"] = 67
	tChristmas_GiftTalentShow_Stc[7]["LimitData"] = 99

-- 特效
local tChristmas_GiftTalentShow_Effect = {}
	-- 掉落/合成极品光效
	tChristmas_GiftTalentShow_Effect[1] = {}
	tChristmas_GiftTalentShow_Effect[1]["EffectObj"] = "self"
	tChristmas_GiftTalentShow_Effect[1]["Effect"] = "accession"
	
	-- 掉落/合成极品光效
	tChristmas_GiftTalentShow_Effect[2] = {}
	tChristmas_GiftTalentShow_Effect[2]["EffectObj"] = "self"
	tChristmas_GiftTalentShow_Effect[2]["Effect"] = "relive"
	
	-- 转身光效
	tChristmas_GiftTalentShow_Effect[3] = {}
	tChristmas_GiftTalentShow_Effect[3]["EffectObj"] = "self"
	tChristmas_GiftTalentShow_Effect[3]["Effect"] = "zf2-e300"

-- 导师播放光效位置
local tChristmas_GiftTalentShow_EffectPos = {}
	-- 炎帝
	tChristmas_GiftTalentShow_EffectPos[1] = {}
	tChristmas_GiftTalentShow_EffectPos[1]["MapId"] = 1002
	tChristmas_GiftTalentShow_EffectPos[1]["PosX"] = 355
	tChristmas_GiftTalentShow_EffectPos[1]["PosY"] = 472
	-- 黄帝
	tChristmas_GiftTalentShow_EffectPos[2] = {}
	tChristmas_GiftTalentShow_EffectPos[2]["MapId"] = 1002
	tChristmas_GiftTalentShow_EffectPos[2]["PosX"] = 355
	tChristmas_GiftTalentShow_EffectPos[2]["PosY"] = 476
	-- 女娲
	tChristmas_GiftTalentShow_EffectPos[3] = {}
	tChristmas_GiftTalentShow_EffectPos[3]["MapId"] = 1002
	tChristmas_GiftTalentShow_EffectPos[3]["PosX"] = 355
	tChristmas_GiftTalentShow_EffectPos[3]["PosY"] = 480
-- 自动寻路位置
local tChristmas_GiftTalentShow_FindWay = {}
	-- 传送到香炉
	tChristmas_GiftTalentShow_FindWay[1] = {}
	tChristmas_GiftTalentShow_FindWay[1]["MapId"] = 1002
	tChristmas_GiftTalentShow_FindWay[1]["PosX"] = 349
	tChristmas_GiftTalentShow_FindWay[1]["PosY"] = 477
	
	-- 传送到怪物四个点
	tChristmas_GiftTalentShow_FindWay[2] = {}
	tChristmas_GiftTalentShow_FindWay[2]["MapId"] = 1002
	tChristmas_GiftTalentShow_FindWay[2]["PosX"] = 455
	tChristmas_GiftTalentShow_FindWay[2]["PosY"] = 509
	
	tChristmas_GiftTalentShow_FindWay[3] = {}
	tChristmas_GiftTalentShow_FindWay[3]["MapId"] = 1002
	tChristmas_GiftTalentShow_FindWay[3]["PosX"] = 491
	tChristmas_GiftTalentShow_FindWay[3]["PosY"] = 492
	
	tChristmas_GiftTalentShow_FindWay[4] = {}
	tChristmas_GiftTalentShow_FindWay[4]["MapId"] = 1002
	tChristmas_GiftTalentShow_FindWay[4]["PosX"] = 599
	tChristmas_GiftTalentShow_FindWay[4]["PosY"] = 464
	
	tChristmas_GiftTalentShow_FindWay[5] = {}
	tChristmas_GiftTalentShow_FindWay[5]["MapId"] = 1002
	tChristmas_GiftTalentShow_FindWay[5]["PosX"] = 565
	tChristmas_GiftTalentShow_FindWay[5]["PosY"] = 378
	
-- 选择交换圣诞礼物索引对话
local tChristmas_GiftTalentShow_ExchangeType = {"3-1","3-2","3-3"}
	
-- 礼物所对应的品质
local tChristmas_GiftTalentShow_GiftType = {1,2,3,1,2,3,1,2,3}
-- 各个品质对应的礼物名称
local tChristmas_GiftTalentShow_GiftTypeName = {1,1,1,2,2,2,3,3,3}

-- 随机各类型的物品索引值
local tChristmas_GiftTalentShow_DropGiftName = {"GiftCandy","GiftSocks","GiftWine"}
-- 打怪随机掉落物品
local tChristmas_GiftTalentShow_DropGift = {}
	tChristmas_GiftTalentShow_DropGift["DropGift"] = {}
	tChristmas_GiftTalentShow_DropGift["DropGift"][1] = {}
	tChristmas_GiftTalentShow_DropGift["DropGift"][1]["ItemChanceSum"] = 10000
	
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][1] = {}
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][1]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][1]["ItemChance"] = 3000
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][1]["Item_1"] = 1
	
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][2] = {}
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][2]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][2]["ItemChance"] = 3000
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][2]["Item_1"] = 2
	
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][3] = {}
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][3]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][3]["ItemChance"] = 3000
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][3]["Item_1"] = 3
	
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][4] = {}
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][4]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][4]["ItemChance"] = 1000
	tChristmas_GiftTalentShow_DropGift["DropGift"][1][4]["Item_1"] = nil
	
-- 随机掉落圣诞糖果
	tChristmas_GiftTalentShow_DropGift["GiftCandy"] = {}
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1] = {}
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1]["ItemChanceSum"] = 10000
	
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][1] = {}
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][1]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][1]["ItemChance"] = 9850
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][1]["Item_1"] = nil
	
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][2] = {}
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][2]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][2]["ItemChance"] = 0
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][2]["Item_1"] = 3005321
	
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][3] = {}
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][3]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][3]["ItemChance"] = 150
	tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][3]["Item_1"] = 3005322
	
	-- tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][4] = {}
	-- tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][4]["RandomItemChanceType"] = 2
	-- tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][4]["ItemChance"] = 2500
	-- tChristmas_GiftTalentShow_DropGift["GiftCandy"][1][4]["Item_1"] = nil

	-- 随机掉落圣诞袜
	tChristmas_GiftTalentShow_DropGift["GiftSocks"] = {}
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1] = {}
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1]["ItemChanceSum"] = 10000
	
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][1] = {}
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][1]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][1]["ItemChance"] = 9850
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][1]["Item_1"] = nil
	
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][2] = {}
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][2]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][2]["ItemChance"] = 0
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][2]["Item_1"] = 3005324
	
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][3] = {}
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][3]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][3]["ItemChance"] = 150
	tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][3]["Item_1"] = 3005325
	
	-- tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][4] = {}
	-- tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][4]["RandomItemChanceType"] = 2
	-- tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][4]["ItemChance"] = 2500
	-- tChristmas_GiftTalentShow_DropGift["GiftSocks"][1][4]["Item_1"] = nil
	
	-- 随机掉落圣诞果酒
	tChristmas_GiftTalentShow_DropGift["GiftWine"] = {}
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1] = {}
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1]["ItemChanceSum"] = 10000
	
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1][1] = {}
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1][1]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1][1]["ItemChance"] = 9850
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1][1]["Item_1"] = nil
	
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1][2] = {}
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1][2]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1][2]["ItemChance"] = 0
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1][2]["Item_1"] = 3005327
	
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1][3] = {}
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1][3]["RandomItemChanceType"] = 2
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1][3]["ItemChance"] = 150
	tChristmas_GiftTalentShow_DropGift["GiftWine"][1][3]["Item_1"] = 3005328
	
	-- tChristmas_GiftTalentShow_DropGift["GiftWine"][1][4] = {}
	-- tChristmas_GiftTalentShow_DropGift["GiftWine"][1][4]["RandomItemChanceType"] = 2
	-- tChristmas_GiftTalentShow_DropGift["GiftWine"][1][4]["ItemChance"] = 2500
	-- tChristmas_GiftTalentShow_DropGift["GiftWine"][1][4]["Item_1"] = nil
	
	
--全服银两限量 
local tChristmas_GiftTalentShow_GlobalId ={}
	tChristmas_GiftTalentShow_GlobalId["GlobalId"] = 51957
	tChristmas_GiftTalentShow_GlobalId["LimitAllMoney"] = 1000000

	
--------------------------------------逻辑部分-------------------------------------------
--玩家等级判断
function Christmas_GiftTalentShow_LevelJudgement()
	local nLevel = tChristmas_GiftTalentShow_Count["Level"]
	local nMete = tChristmas_GiftTalentShow_Count["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

-- 上交礼物
function Christmas_GiftTalentShow_HandinGift(nNpcId)
	if not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 判断上交礼物次数
	local nEvent = tChristmas_GiftTalentShow_Stc[4]["EventType"]
	local nType = tChristmas_GiftTalentShow_Stc[4]["DataType"]
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		else
			if Task_ChkStcValue(nEvent,nType,">=",tChristmas_GiftTalentShow_Stc[4]["LimitData"]) then
				LinkNpcGossipFunc_New(nNpcId,"2-8")
				return
			end
		end
	end
	
	-- 自动寻路香炉
	Sys_MsgBox(tChristmas_GiftTalentShow_Text["FindCenser"],"Christmas_GiftTalentShow_FindCenser")
end

-- 自动寻路香炉
function Christmas_GiftTalentShow_FindCenser()
	local nMapId = tChristmas_GiftTalentShow_FindWay[1]["MapId"]
	local nPosX = tChristmas_GiftTalentShow_FindWay[1]["PosX"]
	local nPosY = tChristmas_GiftTalentShow_FindWay[1]["PosY"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

-- 领取礼物达人攻略
function Christmas_GiftTalentShow_TalentStrategy(nNpcId)
	if not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	if not Christmas_GiftTalentShow_LevelJudgement() then
		return
	end
	
	-- 判断是否有攻略
	if Item_ChkItem(tChristmas_GiftTalentShow_Count["ItemStrategy"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tChristmas_GiftTalentShow_Text["BagFull"])
		return
	end
	
	-- 领取礼物达人攻略
	Item_AddItem(tChristmas_GiftTalentShow_Count["ItemStrategy"])
	User_TalkChannel2005(tChristmas_GiftTalentShow_Text["AddItemStrategy"])
	Sys_SaveActionFestivalLog(tChristmas_GiftTalentShow_Log["GetItemStrategy"])
	
end
--时间自检重置100w银两
function Christmas_GiftTalentShow_RetAllMoney()
	local nAllData2 = Get_SysDynaGlobalData2(tChristmas_GiftTalentShow_GlobalId["GlobalId"])
	if nAllData2 == 1 then 
		return
	end
	Sys_SetSynaGlobalData2(tChristmas_GiftTalentShow_GlobalId["GlobalId"],1)
	Sys_SetSynaGlobalData0(tChristmas_GiftTalentShow_GlobalId["GlobalId"],0)

end

function Christmas_GiftTalentShow_RetAllData2()
	local nAllData2 = Get_SysDynaGlobalData2(tChristmas_GiftTalentShow_GlobalId["GlobalId"])
	if nAllData2 == 1 then
		Sys_SetSynaGlobalData2(tChristmas_GiftTalentShow_GlobalId["GlobalId"],0)
	end
end

-- 用礼物换取银两
function Christmas_GiftTalentShow_ExchangeMoney(nNpcId)
	if not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	if not Christmas_GiftTalentShow_LevelJudgement() then
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-6")
end

-- 选择上交的类别
function Christmas_GiftTalentShow_ExchangeType(nNpcId,nGiftType)
	if not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- nGiftType == 1 普通 ==2 精品  == 3极品
	LinkNpcGossipFunc_New(nNpcId,tChristmas_GiftTalentShow_ExchangeType[nGiftType])
end

-- 选择具体的上交物品换取银两
function Christmas_GiftTalentShow_ExGiftMoney(nNpcId,nGiftType)
	if not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	
	--全服限制100w兑银两换  杨艳修改
	local nAllData0 = Get_SysDynaGlobalData0(tChristmas_GiftTalentShow_GlobalId["GlobalId"])
	local nLimitMoney = tChristmas_GiftTalentShow_GlobalId["LimitAllMoney"]
	if nAllData0 >= nLimitMoney then
		Sys_MsgBox(tChristmas_GiftTalentShow_Text["LimitAllMoney"])
		return
	end
	
	
	-- nGiftType == 0,3,6 普通 ==1,4,7 精品  == 2,5,8极品
	-- nGiftIndex == 1 普通 ==2 精品  == 3极品
	local nGiftID = tChristmas_GiftTalentShow_Count["ItemCandy"][3]+nGiftType
	local nGiftIndex = tChristmas_GiftTalentShow_GiftType[nGiftType+1]
	
	-- 不同品质的银两奖励
	local nExGiftMoney = tChristmas_GiftTalentShow_Count["ExGiftMoney"][nGiftIndex]
	-- 判断上交物品个数
	if Item_ChkMulItem(nGiftID,nGiftID,5) then
		-- 判断银两满了
		if User_CanPutMoney2Bag(nExGiftMoney) then
			local nEvent = tChristmas_GiftTalentShow_Stc[nGiftIndex]["EventType"]
			local nType = tChristmas_GiftTalentShow_Stc[nGiftIndex]["DataType"]
			if Item_DelMulItem(nGiftID,nGiftID,5) then 
				Task_AddStatistic(nEvent,nType,5,1)
				Task_SetStcTimestamp(nEvent,nType,0)
				--记录全服银两上线掩码
				local  nAllMoneyData = nExGiftMoney+nAllData0
				Sys_SetSynaGlobalData0(tChristmas_GiftTalentShow_GlobalId["GlobalId"],nAllMoneyData)
				
				-- 添加银两
				User_AddMoney(nExGiftMoney)
				Sys_SaveActionFestivalLog(string.format(tChristmas_GiftTalentShow_Log["ExGiftMoney"],nGiftID,nExGiftMoney))
				User_TalkChannel2005(string.format(tChristmas_GiftTalentShow_Text["ExchangeSuccess"],nExGiftMoney))
			end
		else
			Sys_MsgBox(tChristmas_GiftTalentShow_Text["MoneyLimit"])
		end
	else
		-- 获取所对应的物品名称
		local nGiftTypeName = tChristmas_GiftTalentShow_GiftTypeName[nGiftType+1]
		Sys_MsgBox(string.format(tChristmas_GiftTalentShow_Text["GiftName"][nGiftIndex],tChristmas_GiftTalentShow_Text["GiftType"][nGiftTypeName]))
	end
	
end 

-- 放入礼物
function Christmas_GiftTalentShow_PutGift(nNpcId)
	if not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	local nEvent = tChristmas_GiftTalentShow_Stc[4]["EventType"]
	local nType = tChristmas_GiftTalentShow_Stc[4]["DataType"]
	
	-- 判断今日参加次数是否超过3次
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		else
			if Task_ChkStcValue(nEvent,nType,">=",tChristmas_GiftTalentShow_Stc[4]["LimitData"]) then
				LinkNpcGossipFunc_New(nNpcId,"2-1")
				return
			end
		end
	end
	
	-- 具体放入的礼物
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 放入圣诞糖果
function Christmas_GiftTalentShow_GiftCandy(nNpcId)
	if not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(string.format(tChristmas_GiftTalentShow_Text["NoAssignGift"],tChristmas_GiftTalentShow_Text["GiftType"][1]))
		return
	end
	
	-- 判断有礼物否
	if not Christmas_GiftTalentShow_PutGiftExist(tChristmas_GiftTalentShow_Count["ItemCandy"],nNpcId) then
		return
	end
	-- 对应品质给予奖励
	for i,v in pairs(tChristmas_GiftTalentShow_Count["ItemCandy"]) do
		local nGiftID = v
		if Item_ChkItem(nGiftID) then
			if Item_DelItem(nGiftID) then
				Christmas_GiftTalentShow_PutGiftSetStc()
				if i == 1 then
					Christmas_GiftTalentShow_BestGiftAward(nGiftID)
					return
				elseif i == 2 then
					Christmas_GiftTalentShow_BetterGiftAward(nGiftID,1,3)
					return
				else
					Christmas_GiftTalentShow_NormalGiftAward(nGiftID,3)
					return
				end
			end
		end
	end
end

-- 放入圣诞袜
function Christmas_GiftTalentShow_GiftSocks(nNpcId)
	if not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(string.format(tChristmas_GiftTalentShow_Text["NoAssignGift"],tChristmas_GiftTalentShow_Text["GiftType"][2]))
		return
	end
	
	-- 判断有礼物否
	if not Christmas_GiftTalentShow_PutGiftExist(tChristmas_GiftTalentShow_Count["ItemSocks"],nNpcId) then
		return
	end
	-- 对应品质给予奖励
	for i,v in pairs(tChristmas_GiftTalentShow_Count["ItemSocks"]) do
		local nGiftID = v
		if Item_ChkItem(nGiftID) then
			if Item_DelItem(nGiftID) then
				Christmas_GiftTalentShow_PutGiftSetStc()
				if i == 1 then
					Christmas_GiftTalentShow_BestGiftAward(nGiftID)
					return
				elseif i == 2 then
					Christmas_GiftTalentShow_BetterGiftAward(nGiftID,2,3)
					return
				else
					Christmas_GiftTalentShow_NormalGiftAward(nGiftID,2)
					return
				end
			end
		end
	end
end

-- 放入圣诞果酒
function Christmas_GiftTalentShow_GiftWine(nNpcId)
	if not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(string.format(tChristmas_GiftTalentShow_Text["NoAssignGift"],tChristmas_GiftTalentShow_Text["GiftType"][3]))
		return
	end
	
	-- 判断有礼物否
	if not Christmas_GiftTalentShow_PutGiftExist(tChristmas_GiftTalentShow_Count["ItemWine"],nNpcId) then
		return
	end
	-- 对应品质给予奖励
	for i,v in pairs(tChristmas_GiftTalentShow_Count["ItemWine"]) do
		local nGiftID = v
		if Item_ChkItem(nGiftID) then
			if Item_DelItem(nGiftID) then
				Christmas_GiftTalentShow_PutGiftSetStc()
				if i == 1 then
					Christmas_GiftTalentShow_BestGiftAward(nGiftID)
					return
				elseif i == 2 then
					Christmas_GiftTalentShow_BetterGiftAward(nGiftID,1,2)
					return
				else
					Christmas_GiftTalentShow_NormalGiftAward(nGiftID,1)
					return
				end
			end
		end
	end
end

-- 判断有礼物
function Christmas_GiftTalentShow_PutGiftExist(tChristmasGift,nNpcId)
	local nItemExist = 0
	for i,v in pairs(tChristmasGift) do
		local nGiftID = v
		if not Item_ChkItem(nGiftID) then
			nItemExist = nItemExist + 1
		end
	end
	if nItemExist == 3 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	else
		return true
	end
end

-- 放入礼物掩码设置
function Christmas_GiftTalentShow_PutGiftSetStc()
	local nEvent = tChristmas_GiftTalentShow_Stc[4]["EventType"]
	local nType = tChristmas_GiftTalentShow_Stc[4]["DataType"]
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
end

-- 导师播放光效
function Christmas_GiftTalentShow_LeaderEffect(nLeaderIndex)
	local nMapId = tChristmas_GiftTalentShow_EffectPos[nLeaderIndex]["MapId"]
	local nPosX = tChristmas_GiftTalentShow_EffectPos[nLeaderIndex]["PosX"]
	local nPosY = tChristmas_GiftTalentShow_EffectPos[nLeaderIndex]["PosY"]
	Map_Effect(nMapId,nPosX,nPosY,tChristmas_GiftTalentShow_Effect[3]["Effect"])
end

-- 寻路去杀怪
function Christmas_GiftTalentShow_FindWayMonster(nNpcId)
	-- 获得寻路怪物坐标索引值
	local nFindIndex = math.random(2,5)
	
	local nMapId = tChristmas_GiftTalentShow_FindWay[nFindIndex]["MapId"]
	local nPosX = tChristmas_GiftTalentShow_FindWay[nFindIndex]["PosX"]
	local nPosY = tChristmas_GiftTalentShow_FindWay[nFindIndex]["PosY"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

-- 普通礼物的奖励
function Christmas_GiftTalentShow_NormalGiftAward(nGiftID,nLeaderIndex)
	Christmas_GiftTalentShow_LeaderEffect(nLeaderIndex)
	-- 奖励5000银两
	User_AddMoney(tChristmas_GiftTalentShow_Award["AwardMoney"])
	
	local nAwardID = nGiftID - tChristmas_GiftTalentShow_Count["ItemCandy"][3]+1
	-- 提示文字和log
	Christmas_GiftTalentShow_GiftTipLog(nAwardID,nLeaderIndex)
end

-- 精品礼物的奖励
function Christmas_GiftTalentShow_BetterGiftAward(nGiftID,nLeaderIndex,nLeaderIndex1)
	local nAwardID = nGiftID - tChristmas_GiftTalentShow_Count["ItemCandy"][3]+1
	
	-- 播放导师身上光效
	Christmas_GiftTalentShow_LeaderEffect(nLeaderIndex)
	Christmas_GiftTalentShow_LeaderEffect(nLeaderIndex1)
	
	-- 获得精品对应物品
	Item_AddItem(tChristmas_GiftTalentShow_Award["AwardItem"][nAwardID])
	
	Christmas_GiftTalentShow_GiftTipLog(nAwardID)
end

-- 极品礼物的奖励
function Christmas_GiftTalentShow_BestGiftAward(nGiftID)
	-- 播放导师身上光效
	local nAwardID = nGiftID - tChristmas_GiftTalentShow_Count["ItemCandy"][3]+1
	local nLevel = Get_UserLevel()
	
	for i=1,#tChristmas_GiftTalentShow_EffectPos do
		Christmas_GiftTalentShow_LeaderEffect(i)
	end
	if nAwardID == 3 then 
		-- 极品糖果
		if nLevel < G_User_MaxLev then
			-- 未达到满级获得30分钟经验
			User_AddExpTime(tChristmas_GiftTalentShow_Award["AwardExp"])
		else
			-- 20点气力值
			User_AddStrengthValue(tChristmas_GiftTalentShow_Award["AwardStreng"])
			Sys_SaveActionFestivalLog(tChristmas_GiftTalentShow_Log["GetStrengAward"])
			Sys_MsgBox(tChristmas_GiftTalentShow_Text["BestMaxLevelCandy"])
			User_TalkChannel2005(tChristmas_GiftTalentShow_Text["AwardStreng"])
			return
		end
	elseif nAwardID == 6 then
		-- 极品圣诞袜 10点修行值
		User_AddCultivation(tChristmas_GiftTalentShow_Award["AwardCult"])
	elseif nAwardID == 9 then
		-- 极品圣诞果酒 -- 20点气力值
		User_AddStrengthValue(tChristmas_GiftTalentShow_Award["AwardStreng"])
	end
	
	Christmas_GiftTalentShow_GiftTipLog(nAwardID)
end

-- 各礼物log和提示文字
function Christmas_GiftTalentShow_GiftTipLog(nAwardID,nLeaderIndex)
	local sLog = tChristmas_GiftTalentShow_Count[nAwardID]["Log"]
	local sMsgBox = tChristmas_GiftTalentShow_Count[nAwardID]["MsgBoxIndex"]
	local sUserTalk = tChristmas_GiftTalentShow_Count[nAwardID]["UserTalkIndex"]
	
	Sys_SaveActionFestivalLog(sLog)
	if nLeaderIndex ~= nil then
		Sys_MsgBox(string.format(tChristmas_GiftTalentShow_Text[sMsgBox],tChristmas_GiftTalentShow_Text["Leader"][nLeaderIndex],tChristmas_GiftTalentShow_Text["Leader"][nLeaderIndex]))
	else
		Sys_MsgBox(tChristmas_GiftTalentShow_Text[sMsgBox])
	end
	User_TalkChannel2005(tChristmas_GiftTalentShow_Text[sUserTalk])
end

-- 物品使用
function Christmas_GiftTalentShow_UseItem(nItemId)
	-- 判断是否在活动时间
	if not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChristmas_GiftTalentShow_Log["ItemOverdue"],nItemId))
			User_TalkChannel2005(tChristmas_GiftTalentShow_Text["ItemOverdue"])
		end
		return
	end
	
	if nItemId ~= tChristmas_GiftTalentShow_Count["ItemStrategy"] then
		User_TalkChannel2005(tChristmas_GiftTalentShow_Text["ItemTip"])
	end
	
	if not Christmas_GiftTalentShow_LevelJudgement() then
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 击杀怪物
function Christmas_GiftTalentShow_KillMonster()
	if not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) then
		return
	end
	
	if not Christmas_GiftTalentShow_LevelJudgement() then
		return
	end
	
	-- 随机掉落物品类型（糖果，袜，果酒之一）
	local nFlat,tDropItemType = Probabil_RandomAward(tChristmas_GiftTalentShow_DropGift["DropGift"],1)
	local nDropItemIndex = tDropItemType[1]["tAward"][1]["Item_1"]
	
	if nDropItemIndex ~= nil then
		local nStcIndex = nDropItemIndex+4
		local nEvent = tChristmas_GiftTalentShow_Stc[nStcIndex]["EventType"]
		local nType = tChristmas_GiftTalentShow_Stc[nStcIndex]["DataType"]
		
		-- 判断礼物掉落是否隔天
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
		
		-- 判断礼物个数是否达到99
		if Task_ChkStcValue(nEvent,nType,">=",tChristmas_GiftTalentShow_Stc[nStcIndex]["LimitData"]) then
			return
		end
	
		local sIndex = tChristmas_GiftTalentShow_DropGiftName[nDropItemIndex]
		local nFlat,tDropGift = Probabil_RandomAward(tChristmas_GiftTalentShow_DropGift[sIndex],1)
		-- 获得掉落物品的ID
		local nDropGiftID = tDropGift[1]["tAward"][1]["Item_1"]
		if nDropGiftID ~= nil then
			Christmas_GiftTalentShow_DropGift(nDropGiftID,nStcIndex)
		end
	end
end

-- 杀怪获得随机圣诞礼物
function Christmas_GiftTalentShow_DropGift(nDropGiftID,nStcIndex)
	-- 礼物个数加1
	local nEvent = tChristmas_GiftTalentShow_Stc[nStcIndex]["EventType"]
	local nType = tChristmas_GiftTalentShow_Stc[nStcIndex]["DataType"]
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	-- 掉落物品
	Monster_SysDropItem(nDropGiftID)
	-- 极品播放特效
	if nDropGiftID == tChristmas_GiftTalentShow_Count["ItemCandy"][1] then
		User_EffectAdd(tChristmas_GiftTalentShow_Effect[1]["EffectObj"],tChristmas_GiftTalentShow_Effect[1]["Effect"])
	elseif (nDropGiftID == tChristmas_GiftTalentShow_Count["ItemWine"][1]) or (nDropGiftID == tChristmas_GiftTalentShow_Count["ItemSocks"][1]) then
		User_EffectAdd(tChristmas_GiftTalentShow_Effect[2]["EffectObj"],tChristmas_GiftTalentShow_Effect[2]["Effect"])
	end
	
	-- 玩家频道广播
	local nGiftIndex = nDropGiftID - tChristmas_GiftTalentShow_Count["ItemCandy"][3]+1
	local nGetGiftQuality = tChristmas_GiftTalentShow_GiftType[nGiftIndex]
	local nGiftTypeName = tChristmas_GiftTalentShow_GiftTypeName[nGiftIndex]
	User_TalkChannel2007(string.format(tChristmas_GiftTalentShow_Text["DropItemType"][nGetGiftQuality],tChristmas_GiftTalentShow_Text["GiftType"][nGiftTypeName]))
end

--------------------------------------NPC模块-------------------------------------------
-- 礼物达人
tNpcFace[3289] = 4
tNpcGossip[17242] = tNpcGossip[17242] or DefaultNpc:new{}
tNpcGossip[17242]["OptionHidden"] = 1
-- 活动前
tNpcGossip[17242]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[17242]["Text111"] = tChristmas_GiftTalentShow_Text[17242]["111"]
tNpcGossip[17242]["Text112"] = tChristmas_GiftTalentShow_Text[17242]["112"]
tNpcGossip[17242]["Text113"] = tChristmas_GiftTalentShow_Text[17242]["113"]
tNpcGossip[17242]["Text114"] = tChristmas_GiftTalentShow_Text[17242]["114"]
tNpcGossip[17242]["Text115"] = tChristmas_GiftTalentShow_Text[17242]["115"]
tNpcGossip[17242]["tOption1-1"] = {1}
tNpcGossip[17242]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["BeforeActivityTime"])
end	

tNpcGossip[17242]["Option1"] = tChristmas_GiftTalentShow_Text[17242]["Option1"]

-- 活动中
-- 不符合条件对白
tNpcGossip[17242]["Text1-2"] = {121,122}
tNpcGossip[17242]["Text121"] = tChristmas_GiftTalentShow_Text[17242]["121"]
tNpcGossip[17242]["Text122"] = tChristmas_GiftTalentShow_Text[17242]["122"]
tNpcGossip[17242]["tOption1-2"] = {2}
tNpcGossip[17242]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) and (not Christmas_GiftTalentShow_LevelJudgement())
end	
tNpcGossip[17242]["Option2"] = tChristmas_GiftTalentShow_Text[17242]["Option2"]

-- 符合条件对白
tNpcGossip[17242]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[17242]["Text131"] = tChristmas_GiftTalentShow_Text[17242]["131"]
tNpcGossip[17242]["Text132"] = tChristmas_GiftTalentShow_Text[17242]["132"]
tNpcGossip[17242]["Text133"] = tChristmas_GiftTalentShow_Text[17242]["133"]
tNpcGossip[17242]["Text134"] = tChristmas_GiftTalentShow_Text[17242]["134"]
tNpcGossip[17242]["Text135"] = tChristmas_GiftTalentShow_Text[17242]["135"]
tNpcGossip[17242]["tOption1-3"] = {3,4,5,6,7}
tNpcGossip[17242]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) and Christmas_GiftTalentShow_LevelJudgement()
end	

tNpcGossip[17242]["Option3"] = tChristmas_GiftTalentShow_Text[17242]["Option3"]
tNpcGossip[17242]["OptionFunc3"]="Christmas_GiftTalentShow_HandinGift</N>17242"

tNpcGossip[17242]["Option4"] = tChristmas_GiftTalentShow_Text[17242]["Option4"]
tNpcGossip[17242]["OptionFunc4"]="Christmas_GiftTalentShow_TalentStrategy</N>17242"

tNpcGossip[17242]["Option5"] = tChristmas_GiftTalentShow_Text[17242]["Option5"]
tNpcGossip[17242]["OptionFunc5"]="Christmas_GiftTalentShow_ExchangeMoney</N>17242"

tNpcGossip[17242]["Option6"] = tChristmas_GiftTalentShow_Text[17242]["Option6"]
tNpcGossip[17242]["OptionPoint6"]="2-1"

tNpcGossip[17242]["Option7"] = tChristmas_GiftTalentShow_Text[17242]["Option7"]

-- 活动后
tNpcGossip[17242]["Text1-4"] = {141}
tNpcGossip[17242]["Text141"] = tChristmas_GiftTalentShow_Text[17242]["141"]
tNpcGossip[17242]["tOption1-4"] = {8}
tNpcGossip[17242]["Option8"] = tChristmas_GiftTalentShow_Text[17242]["Option8"]
tNpcGossip[17242]["ChkFunc1-4"] = function ()
	return not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"])
end	

-- 活动详情介绍
tNpcGossip[17242]["Text2-1"] = {211,212,213}
tNpcGossip[17242]["Text211"] = tChristmas_GiftTalentShow_Text[17242]["211"]
tNpcGossip[17242]["Text212"] = tChristmas_GiftTalentShow_Text[17242]["212"]
tNpcGossip[17242]["Text213"] = tChristmas_GiftTalentShow_Text[17242]["213"]
tNpcGossip[17242]["tOption2-1"] = {10,11,12}
tNpcGossip[17242]["Option10"] = tChristmas_GiftTalentShow_Text[17242]["Option10"]
tNpcGossip[17242]["OptionPoint10"]="2-3"
tNpcGossip[17242]["Option11"] = tChristmas_GiftTalentShow_Text[17242]["Option11"]
tNpcGossip[17242]["OptionPoint11"]="1"
tNpcGossip[17242]["Option12"] = tChristmas_GiftTalentShow_Text[17242]["Option12"]

-- 达人秀奖励是什么
tNpcGossip[17242]["Text2-3"] = {231,232,233}
tNpcGossip[17242]["Text231"] = tChristmas_GiftTalentShow_Text[17242]["231"]
tNpcGossip[17242]["Text232"] = tChristmas_GiftTalentShow_Text[17242]["232"]
tNpcGossip[17242]["Text233"] = tChristmas_GiftTalentShow_Text[17242]["233"]
tNpcGossip[17242]["tOption2-3"] = {13,14}
tNpcGossip[17242]["Option13"] = tChristmas_GiftTalentShow_Text[17242]["Option13"]
tNpcGossip[17242]["OptionPoint13"]="2-1"
tNpcGossip[17242]["Option14"] = tChristmas_GiftTalentShow_Text[17242]["Option12"]

-- 成功领取
tNpcGossip[17242]["Text2-5"] = {251}
tNpcGossip[17242]["Text251"] = tChristmas_GiftTalentShow_Text[17242]["251"]
tNpcGossip[17242]["tOption2-5"] = {15}
tNpcGossip[17242]["Option15"] = tChristmas_GiftTalentShow_Text[17242]["Option15"]

-- 用礼物换取银两
tNpcGossip[17242]["Text2-6"] = {261,262}
tNpcGossip[17242]["Text261"] = tChristmas_GiftTalentShow_Text[17242]["261"]
tNpcGossip[17242]["Text262"] = tChristmas_GiftTalentShow_Text[17242]["262"]
tNpcGossip[17242]["tOption2-6"] = {18,19,20,21,23}

-- tNpcGossip[17242]["Option16"] = tChristmas_GiftTalentShow_Text[17242]["Option16"]
-- tNpcGossip[17242]["OptionFunc16"]="Christmas_GiftTalentShow_ExchangeType</N>17242</N>1"
-- tNpcGossip[17242]["OptionChkFunc16"] = function ()
	-- local nEvent = tChristmas_GiftTalentShow_Stc[1]["EventType"]
	-- local nType = tChristmas_GiftTalentShow_Stc[1]["DataType"]
	
	-- if Task_ChkStcValue(nEvent,nType,"==",0) then
		-- return true
	-- elseif Task_StcInterval(nEvent,nType,1,4) then
		-- Task_SetStatistic(nEvent,nType,0,1)
		-- Task_SetStcTimestamp(nEvent,nType,0)
		-- return true
	-- elseif not Task_ChkStcValue(nEvent,nType,">=",tChristmas_GiftTalentShow_Stc[1]["LimitData"]) then
		-- return true
	-- end
	
	-- return false
-- end

-- tNpcGossip[17242]["Option17"] = tChristmas_GiftTalentShow_Text[17242]["Option17"]
-- tNpcGossip[17242]["OptionPoint17"]="2-7"
-- tNpcGossip[17242]["OptionChkFunc17"] = function ()
	-- local nEvent = tChristmas_GiftTalentShow_Stc[1]["EventType"]
	-- local nType = tChristmas_GiftTalentShow_Stc[1]["DataType"]
	
	-- if Task_ChkStcValue(nEvent,nType,"~=",0) then
		-- if not Task_StcInterval(nEvent,nType,1,4) then
			-- if Task_ChkStcValue(nEvent,nType,">=",tChristmas_GiftTalentShow_Stc[1]["LimitData"]) then
				-- return true
			-- end
		-- end
	-- end
	
	-- return false
-- end

tNpcGossip[17242]["Option18"] = tChristmas_GiftTalentShow_Text[17242]["Option18"]
tNpcGossip[17242]["OptionFunc18"]="Christmas_GiftTalentShow_ExchangeType</N>17242</N>2"
tNpcGossip[17242]["OptionChkFunc18"] = function ()
	local nEvent = tChristmas_GiftTalentShow_Stc[2]["EventType"]
	local nType = tChristmas_GiftTalentShow_Stc[2]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		return true
	elseif Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		return true
	elseif not Task_ChkStcValue(nEvent,nType,">=",tChristmas_GiftTalentShow_Stc[2]["LimitData"]) then
		return true
	end
	
	return false
	
end

tNpcGossip[17242]["Option19"] = tChristmas_GiftTalentShow_Text[17242]["Option19"]
tNpcGossip[17242]["OptionPoint19"] = "2-7"
tNpcGossip[17242]["OptionChkFunc19"] = function ()
	local nEvent = tChristmas_GiftTalentShow_Stc[2]["EventType"]
	local nType = tChristmas_GiftTalentShow_Stc[2]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,"~=",0) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			if Task_ChkStcValue(nEvent,nType,">=",tChristmas_GiftTalentShow_Stc[2]["LimitData"]) then
				return true
			end
		end
	end
	
	return false
end

tNpcGossip[17242]["Option20"] = tChristmas_GiftTalentShow_Text[17242]["Option20"]
tNpcGossip[17242]["OptionFunc20"]="Christmas_GiftTalentShow_ExchangeType</N>17242</N>3"
tNpcGossip[17242]["OptionChkFunc20"] = function ()
	local nEvent = tChristmas_GiftTalentShow_Stc[3]["EventType"]
	local nType = tChristmas_GiftTalentShow_Stc[3]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		return true
	elseif Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		return true
	elseif not Task_ChkStcValue(nEvent,nType,">=",tChristmas_GiftTalentShow_Stc[3]["LimitData"]) then
		return true
	end
	
	return false
end

tNpcGossip[17242]["Option21"] = tChristmas_GiftTalentShow_Text[17242]["Option21"]
tNpcGossip[17242]["OptionPoint21"]="2-7"
tNpcGossip[17242]["OptionChkFunc21"] = function ()
	local nEvent = tChristmas_GiftTalentShow_Stc[3]["EventType"]
	local nType = tChristmas_GiftTalentShow_Stc[3]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,"~=",0) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			if Task_ChkStcValue(nEvent,nType,">=",tChristmas_GiftTalentShow_Stc[3]["LimitData"]) then
				return true
			end
		end
	end
	
	return false
end

-- tNpcGossip[17242]["Option22"] = tChristmas_GiftTalentShow_Text[17242]["Option22"]
-- tNpcGossip[17242]["OptionPoint22"]="1"
tNpcGossip[17242]["Option23"] = tChristmas_GiftTalentShow_Text[17242]["Option23"]

-- 当天已完成提示
tNpcGossip[17242]["Text2-7"] = {271,272}
tNpcGossip[17242]["Text271"] = tChristmas_GiftTalentShow_Text[17242]["271"]
tNpcGossip[17242]["Text272"] = tChristmas_GiftTalentShow_Text[17242]["272"]
tNpcGossip[17242]["tOption2-7"] = {24}
tNpcGossip[17242]["Option24"] = tChristmas_GiftTalentShow_Text[17242]["Option24"]

-- 已经参加过三次礼物达人秀
tNpcGossip[17242]["Text2-8"] = {281,282}
tNpcGossip[17242]["Text281"] = tChristmas_GiftTalentShow_Text[17243]["211"]
tNpcGossip[17242]["Text282"] = tChristmas_GiftTalentShow_Text[17243]["212"]
tNpcGossip[17242]["tOption2-8"] = {25}
tNpcGossip[17242]["Option25"] = tChristmas_GiftTalentShow_Text[17243]["Option6"]

-- 普通圣诞礼物
tNpcGossip[17242]["Text3-1"] = {311}
tNpcGossip[17242]["Text311"] = tChristmas_GiftTalentShow_Text[17242]["311"]
tNpcGossip[17242]["tOption3-1"] = {26,27,28,29}
tNpcGossip[17242]["Option26"] = tChristmas_GiftTalentShow_Text[17242]["Option26"]
tNpcGossip[17242]["OptionFunc26"]="Christmas_GiftTalentShow_ExGiftMoney</N>17242</N>0"
tNpcGossip[17242]["Option27"] = tChristmas_GiftTalentShow_Text[17242]["Option27"]
tNpcGossip[17242]["OptionFunc27"]="Christmas_GiftTalentShow_ExGiftMoney</N>17242</N>3"
tNpcGossip[17242]["Option28"] = tChristmas_GiftTalentShow_Text[17242]["Option28"]
tNpcGossip[17242]["OptionFunc28"]="Christmas_GiftTalentShow_ExGiftMoney</N>17242</N>6"
tNpcGossip[17242]["Option29"] = tChristmas_GiftTalentShow_Text[17242]["Option29"]
tNpcGossip[17242]["OptionPoint29"]="2-6"

-- 精品圣诞礼物
tNpcGossip[17242]["Text3-2"] = {321}
tNpcGossip[17242]["Text321"] = tChristmas_GiftTalentShow_Text[17242]["321"]
tNpcGossip[17242]["tOption3-2"] = {30,31,32,33}
tNpcGossip[17242]["Option30"] = tChristmas_GiftTalentShow_Text[17242]["Option30"]
tNpcGossip[17242]["OptionFunc30"]="Christmas_GiftTalentShow_ExGiftMoney</N>17242</N>1"
tNpcGossip[17242]["Option31"] = tChristmas_GiftTalentShow_Text[17242]["Option31"]
tNpcGossip[17242]["OptionFunc31"]="Christmas_GiftTalentShow_ExGiftMoney</N>17242</N>4"
tNpcGossip[17242]["Option32"] = tChristmas_GiftTalentShow_Text[17242]["Option32"]
tNpcGossip[17242]["OptionFunc32"]="Christmas_GiftTalentShow_ExGiftMoney</N>17242</N>7"
tNpcGossip[17242]["Option33"] = tChristmas_GiftTalentShow_Text[17242]["Option33"]
tNpcGossip[17242]["OptionPoint33"]="2-6"

-- 极品圣诞礼物
tNpcGossip[17242]["Text3-3"] = {311}
tNpcGossip[17242]["Text331"] = tChristmas_GiftTalentShow_Text[17242]["331"]
tNpcGossip[17242]["tOption3-3"] = {34,35,36,37}
tNpcGossip[17242]["Option34"] = tChristmas_GiftTalentShow_Text[17242]["Option34"]
tNpcGossip[17242]["OptionFunc34"]="Christmas_GiftTalentShow_ExGiftMoney</N>17242</N>2"
tNpcGossip[17242]["Option35"] = tChristmas_GiftTalentShow_Text[17242]["Option35"]
tNpcGossip[17242]["OptionFunc35"]="Christmas_GiftTalentShow_ExGiftMoney</N>17242</N>5"
tNpcGossip[17242]["Option36"] = tChristmas_GiftTalentShow_Text[17242]["Option36"]
tNpcGossip[17242]["OptionFunc36"]="Christmas_GiftTalentShow_ExGiftMoney</N>17242</N>8"
tNpcGossip[17242]["Option37"] = tChristmas_GiftTalentShow_Text[17242]["Option37"]
tNpcGossip[17242]["OptionPoint37"]="2-6"

--------------------------------------------香炉
-- tNpcFace[87] = 188
tNpcGossip[17243] = tNpcGossip[17243] or DefaultNpc:new{}
tNpcGossip[17243]["OptionHidden"] = 1
-- 活动前
tNpcGossip[17243]["Text1-1"] = {111,112}
tNpcGossip[17243]["Text111"] = tChristmas_GiftTalentShow_Text[17243]["111"]
tNpcGossip[17243]["Text112"] = tChristmas_GiftTalentShow_Text[17243]["112"]
tNpcGossip[17243]["tOption1-1"] = {1}
tNpcGossip[17243]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["BeforeActivityTime"])
end	

tNpcGossip[17243]["Option1"] = tChristmas_GiftTalentShow_Text[17243]["Option1"]

-- 活动中
-- 不符合条件对白
tNpcGossip[17243]["Text1-2"] = {121}
tNpcGossip[17243]["Text121"] = tChristmas_GiftTalentShow_Text[17243]["121"]
tNpcGossip[17243]["tOption1-2"] = {2}
tNpcGossip[17243]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) and (not Christmas_GiftTalentShow_LevelJudgement())
end	

tNpcGossip[17243]["Option2"] = tChristmas_GiftTalentShow_Text[17243]["Option2"]

-- 符合条件对白
tNpcGossip[17243]["Text1-3"] = {131}
tNpcGossip[17243]["Text131"] = tChristmas_GiftTalentShow_Text[17243]["131"]
tNpcGossip[17243]["tOption1-3"] = {3,4}
tNpcGossip[17243]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"]) and Christmas_GiftTalentShow_LevelJudgement()
end	

tNpcGossip[17243]["Option3"] = tChristmas_GiftTalentShow_Text[17243]["Option3"]
tNpcGossip[17243]["OptionFunc3"] = "Christmas_GiftTalentShow_PutGift</N>17243"
tNpcGossip[17243]["Option4"] = tChristmas_GiftTalentShow_Text[17243]["Option4"]

-- 活动后
tNpcGossip[17243]["Text1-4"] = {141}
tNpcGossip[17243]["Text141"] = tChristmas_GiftTalentShow_Text[17243]["141"]
tNpcGossip[17243]["tOption1-4"] = {5}
tNpcGossip[17243]["Option5"] = tChristmas_GiftTalentShow_Text[17243]["Option5"]
tNpcGossip[17243]["ChkFunc1-4"] = function ()
	return not Sys_ChkFullTime(tChristmas_GiftTalentShow_Count["ActivityTime"])
end	

-- 当天已参加三次
tNpcGossip[17243]["Text2-1"] = {211,212}
tNpcGossip[17243]["Text211"] = tChristmas_GiftTalentShow_Text[17243]["211"]
tNpcGossip[17243]["Text212"] = tChristmas_GiftTalentShow_Text[17243]["212"]
tNpcGossip[17243]["tOption2-1"] = {6}
tNpcGossip[17243]["Option6"] = tChristmas_GiftTalentShow_Text[17243]["Option6"]

-- 选择制作好的圣诞礼物
tNpcGossip[17243]["Text2-2"] = {221}
tNpcGossip[17243]["Text221"] = tChristmas_GiftTalentShow_Text[17243]["221"]
tNpcGossip[17243]["tOption2-2"] = {7,8,9,10}
tNpcGossip[17243]["Option7"] = tChristmas_GiftTalentShow_Text[17243]["Option7"]
tNpcGossip[17243]["OptionFunc7"] = "Christmas_GiftTalentShow_GiftCandy</N>17243"
tNpcGossip[17243]["Option8"] = tChristmas_GiftTalentShow_Text[17243]["Option8"]
tNpcGossip[17243]["OptionFunc8"] = "Christmas_GiftTalentShow_GiftSocks</N>17243"
tNpcGossip[17243]["Option9"] = tChristmas_GiftTalentShow_Text[17243]["Option9"]
tNpcGossip[17243]["OptionFunc9"] = "Christmas_GiftTalentShow_GiftWine</N>17243"
tNpcGossip[17243]["Option10"] = tChristmas_GiftTalentShow_Text[17243]["Option10"]

-- 没有圣诞礼物，寻路去怪物
tNpcGossip[17243]["Text2-3"] = {231}
tNpcGossip[17243]["Text231"] = tChristmas_GiftTalentShow_Text[17243]["231"]
tNpcGossip[17243]["tOption2-3"] = {11,12}
tNpcGossip[17243]["Option11"] = tChristmas_GiftTalentShow_Text[17243]["Option11"]
tNpcGossip[17243]["OptionFunc11"] = "Christmas_GiftTalentShow_FindWayMonster</N>17243"
tNpcGossip[17243]["Option12"] = tChristmas_GiftTalentShow_Text[17243]["Option12"]

-------------------------------------物品使用模块-----------------------------------
-- 礼物达人攻略
tItem[3005088] = tItem[3005088] or {}
tItem[3005088]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas_GiftTalentShow_Count["ItemStrategy"]
	
	Christmas_GiftTalentShow_UseItem(nItemId)
end
tItem[3005088]["Text1-1"] = {111,112,113}
tItem[3005088]["Text111"] = tChristmas_GiftTalentShow_Text[3005088]["111"]
tItem[3005088]["Text112"] = tChristmas_GiftTalentShow_Text[3005088]["112"]
tItem[3005088]["Text113"] = tChristmas_GiftTalentShow_Text[3005088]["113"]
tItem[3005088]["tOption1-1"] = {1}
tItem[3005088]["Option1"] = tChristmas_GiftTalentShow_Text[3005088]["Option1"]
tItem[3005088]["OptionPoint1"] = "1-2"

-- 攻略达人秀奖励是什么
tItem[3005088]["Text1-2"] = {121,122,123}
tItem[3005088]["Text121"] = tChristmas_GiftTalentShow_Text[3005088]["121"]
tItem[3005088]["Text122"] = tChristmas_GiftTalentShow_Text[3005088]["122"]
tItem[3005088]["Text123"] = tChristmas_GiftTalentShow_Text[3005088]["123"]
tItem[3005088]["tOption1-2"] = {2}
tItem[3005088]["Option2"] = tChristmas_GiftTalentShow_Text[3005088]["Option2"]
tItem[3005088]["OptionPoint2"] = "1"


-- 其余物品
tItem[3005320] = tItem[3005320] or {}
tItem[3005320]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas_GiftTalentShow_Count["ItemCandy"][3]
	
	Christmas_GiftTalentShow_UseItem(nItemId)
end

tItem[3005321] = tItem[3005321] or {}
tItem[3005321]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas_GiftTalentShow_Count["ItemCandy"][2]
	
	Christmas_GiftTalentShow_UseItem(nItemId)
end
tItem[3005322] = tItem[3005322] or {}
tItem[3005322]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas_GiftTalentShow_Count["ItemCandy"][1]
	
	Christmas_GiftTalentShow_UseItem(nItemId)
end
tItem[3005323] = tItem[3005323] or {}
tItem[3005323]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas_GiftTalentShow_Count["ItemSocks"][3]
	
	Christmas_GiftTalentShow_UseItem(nItemId)
end
tItem[3005324] = tItem[3005324] or {}
tItem[3005324]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas_GiftTalentShow_Count["ItemSocks"][2]
	
	Christmas_GiftTalentShow_UseItem(nItemId)
end
tItem[3005325] = tItem[3005325] or {}
tItem[3005325]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas_GiftTalentShow_Count["ItemSocks"][1]
	
	Christmas_GiftTalentShow_UseItem(nItemId)
end
tItem[3005326] = tItem[3005326] or {}
tItem[3005326]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas_GiftTalentShow_Count["ItemWine"][3]
	
	Christmas_GiftTalentShow_UseItem(nItemId)
end
tItem[3005327] = tItem[3005327] or {}
tItem[3005327]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas_GiftTalentShow_Count["ItemWine"][2]
	
	Christmas_GiftTalentShow_UseItem(nItemId)
end
tItem[3005328] = tItem[3005328] or {}
tItem[3005328]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas_GiftTalentShow_Count["ItemWine"][1]
	
	Christmas_GiftTalentShow_UseItem(nItemId)
end
----------------------------------------怪物掉落物品逻辑-------------------------------------------------
--时间自检重置100w银两
-- local tChristmas_GiftTalentShow_Time = {}
-- tChristmas_GiftTalentShow_Time["Type"] = 2
-- tChristmas_GiftTalentShow_Time["TimeType"] = 4
-- tChristmas_GiftTalentShow_Time["Multiple"] = {}
-- tChristmas_GiftTalentShow_Time["Multiple"][1]  = "00:00 00:03"
-- tChristmas_GiftTalentShow_Time["Func"] = Christmas_GiftTalentShow_RetAllMoney
-- table.insert(tSystemTime_InitialData,tChristmas_GiftTalentShow_Time)


-- local tChristmas_GiftTalentShow_Time2 = {}
-- tChristmas_GiftTalentShow_Time2["Type"] = 2
-- tChristmas_GiftTalentShow_Time2["TimeType"] = 4
-- tChristmas_GiftTalentShow_Time2["Multiple"] = {}
-- tChristmas_GiftTalentShow_Time2["Multiple"][1]  = "00:04 00:06"
-- tChristmas_GiftTalentShow_Time2["Func"] = Christmas_GiftTalentShow_RetAllData2
-- table.insert(tSystemTime_InitialData,tChristmas_GiftTalentShow_Time2)



-- local tChristmas_GiftTalentShow_KillMonster = {}
-- tChristmas_GiftTalentShow_KillMonster["ActivityTime"] = tChristmas_GiftTalentShow_Count["ActivityTime"]
-- tChristmas_GiftTalentShow_KillMonster["Function"] = Christmas_GiftTalentShow_KillMonster
-- table.insert(tMonsterDrop_AreaLoad,tChristmas_GiftTalentShow_KillMonster)