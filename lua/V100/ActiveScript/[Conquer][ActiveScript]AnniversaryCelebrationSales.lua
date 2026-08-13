--------------------------------------------------------------------------------------------
---Name:170412[英文征服][活动脚本]5月周年大促
--Creator: 		杨晓晓
--Created:		2017-04-12
------------------------------------------------------------------------------------------
--命名前缀
--tAnniversaryCelebrationSales_
----------------------------------------------------
--log说明：
--log :12000706

local tAnniversaryCelebrationSales_Reward= {}
--40级盾牌礼包 2洞+6-5
	tAnniversaryCelebrationSales_Reward[3303114] = {}
	tAnniversaryCelebrationSales_Reward[3303114]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303114]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303114]["DeleteItem"][1]["Id"] = 3303114
	tAnniversaryCelebrationSales_Reward[3303114]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303114]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303114]["RewardItem"][1]["Id"] = 900009
	tAnniversaryCelebrationSales_Reward[3303114]["RewardItem"][1]["Attr"] ="0 1 0 0 0 0 0 5 0 0 6 255 255"
	tAnniversaryCelebrationSales_Reward[3303114]["LogId"] = 12000706
--回气丹礼包 回气丹*40；周年庆抽奖卷碎片（赠）*2
	tAnniversaryCelebrationSales_Reward[3303106] = {}
	tAnniversaryCelebrationSales_Reward[3303106]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303106]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303106]["DeleteItem"][1]["Id"] = 3303106
	tAnniversaryCelebrationSales_Reward[3303106]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303106]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303106]["RewardItem"][1]["Id"] = 3000912
	tAnniversaryCelebrationSales_Reward[3303106]["RewardItem"][1]["Attr"] ="0 4"
	tAnniversaryCelebrationSales_Reward[3303106]["RewardItem"][2] = {}
	tAnniversaryCelebrationSales_Reward[3303106]["RewardItem"][2]["Id"] = 3303115
	tAnniversaryCelebrationSales_Reward[3303106]["RewardItem"][2]["Attr"] ="0 2"
	tAnniversaryCelebrationSales_Reward[3303106]["LogId"] = 12000706
--抽奖券礼包 小抽奖券礼包*100（相当于小抽奖券*300）；周年庆抽奖卷碎片（赠）*2
	tAnniversaryCelebrationSales_Reward[3303107] = {}
	tAnniversaryCelebrationSales_Reward[3303107]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303107]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303107]["DeleteItem"][1]["Id"] = 3303107
	tAnniversaryCelebrationSales_Reward[3303107]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303107]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303107]["RewardItem"][1]["Id"] = 711504
	tAnniversaryCelebrationSales_Reward[3303107]["RewardItem"][1]["Attr"] ="0 300"
	tAnniversaryCelebrationSales_Reward[3303107]["RewardItem"][2] = {}
	tAnniversaryCelebrationSales_Reward[3303107]["RewardItem"][2]["Id"] = 3303115
	tAnniversaryCelebrationSales_Reward[3303107]["RewardItem"][2]["Attr"] ="0 2"
	tAnniversaryCelebrationSales_Reward[3303107]["LogId"] = 12000706
--固化石礼包 大固化石*1；小固化石*1；周年庆抽奖卷碎片（赠）*3
	tAnniversaryCelebrationSales_Reward[3303108] = {}
	tAnniversaryCelebrationSales_Reward[3303108]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303108]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303108]["DeleteItem"][1]["Id"] = 3303108
	tAnniversaryCelebrationSales_Reward[3303108]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303108]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303108]["RewardItem"][1]["Id"] = 723695
	tAnniversaryCelebrationSales_Reward[3303108]["RewardItem"][1]["Attr"] ="0 1"
	tAnniversaryCelebrationSales_Reward[3303108]["RewardItem"][2] = {}
	tAnniversaryCelebrationSales_Reward[3303108]["RewardItem"][2]["Id"] = 723694
	tAnniversaryCelebrationSales_Reward[3303108]["RewardItem"][2]["Attr"] ="0 1"
	tAnniversaryCelebrationSales_Reward[3303108]["RewardItem"][3] = {}
	tAnniversaryCelebrationSales_Reward[3303108]["RewardItem"][3]["Id"] = 3303115
	tAnniversaryCelebrationSales_Reward[3303108]["RewardItem"][3]["Attr"] ="0 3"
	tAnniversaryCelebrationSales_Reward[3303108]["LogId"] = 12000706
--金刚尖钻礼包 金刚尖钻*1； 周年庆抽奖卷碎片（赠）*2
	tAnniversaryCelebrationSales_Reward[3303109] = {}
	tAnniversaryCelebrationSales_Reward[3303109]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303109]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303109]["DeleteItem"][1]["Id"] = 3303109
	tAnniversaryCelebrationSales_Reward[3303109]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303109]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303109]["RewardItem"][1]["Id"] = 1200005
	tAnniversaryCelebrationSales_Reward[3303109]["RewardItem"][1]["Attr"] ="0 1"
	tAnniversaryCelebrationSales_Reward[3303109]["RewardItem"][2] = {}
	tAnniversaryCelebrationSales_Reward[3303109]["RewardItem"][2]["Id"] = 3303115
	tAnniversaryCelebrationSales_Reward[3303109]["RewardItem"][2]["Attr"] ="0 2"
	tAnniversaryCelebrationSales_Reward[3303109]["LogId"] = 12000706
--龙珠礼包 龙珠卷*1； 周年庆抽奖卷碎片（赠）*1
	tAnniversaryCelebrationSales_Reward[3303110] = {}
	tAnniversaryCelebrationSales_Reward[3303110]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303110]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303110]["DeleteItem"][1]["Id"] = 3303110
	tAnniversaryCelebrationSales_Reward[3303110]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303110]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303110]["RewardItem"][1]["Id"] = 720028
	tAnniversaryCelebrationSales_Reward[3303110]["RewardItem"][1]["Attr"] ="0 1"
	tAnniversaryCelebrationSales_Reward[3303110]["RewardItem"][2] = {}
	tAnniversaryCelebrationSales_Reward[3303110]["RewardItem"][2]["Id"] = 3303115
	tAnniversaryCelebrationSales_Reward[3303110]["RewardItem"][2]["Attr"] ="0 1"
	tAnniversaryCelebrationSales_Reward[3303110]["LogId"] = 12000706
--赤练石+6礼包 赤练石+6*1； 周年庆抽奖卷碎片（赠）*2 
	tAnniversaryCelebrationSales_Reward[3303111] = {}
	tAnniversaryCelebrationSales_Reward[3303111]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303111]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303111]["DeleteItem"][1]["Id"] = 3303111
	tAnniversaryCelebrationSales_Reward[3303111]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303111]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303111]["RewardItem"][1]["Id"] = 730006
	tAnniversaryCelebrationSales_Reward[3303111]["RewardItem"][1]["Attr"] ="0 1"
	tAnniversaryCelebrationSales_Reward[3303111]["RewardItem"][2] = {}
	tAnniversaryCelebrationSales_Reward[3303111]["RewardItem"][2]["Id"] = 3303115
	tAnniversaryCelebrationSales_Reward[3303111]["RewardItem"][2]["Attr"] ="0 2"
	tAnniversaryCelebrationSales_Reward[3303111]["LogId"] = 12000706
--赤练石+8礼包 赤练石+8*1； 周年庆抽奖卷碎片（赠）*8
	tAnniversaryCelebrationSales_Reward[3303112] = {}
	tAnniversaryCelebrationSales_Reward[3303112]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303112]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303112]["DeleteItem"][1]["Id"] = 3303112
	tAnniversaryCelebrationSales_Reward[3303112]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303112]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303112]["RewardItem"][1]["Id"] = 730008
	tAnniversaryCelebrationSales_Reward[3303112]["RewardItem"][1]["Attr"] ="0 1"
	tAnniversaryCelebrationSales_Reward[3303112]["RewardItem"][2] = {}
	tAnniversaryCelebrationSales_Reward[3303112]["RewardItem"][2]["Id"] = 3303115
	tAnniversaryCelebrationSales_Reward[3303112]["RewardItem"][2]["Attr"] ="0 8"
	tAnniversaryCelebrationSales_Reward[3303112]["LogId"] = 12000706
--金币大礼包 两亿金币包*1； 周年庆抽奖卷碎片（赠）*2
	tAnniversaryCelebrationSales_Reward[3303113] = {}
	tAnniversaryCelebrationSales_Reward[3303113]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303113]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303113]["DeleteItem"][1]["Id"] = 3303113
	tAnniversaryCelebrationSales_Reward[3303113]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303113]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303113]["RewardItem"][1]["Id"] = 3005945
	tAnniversaryCelebrationSales_Reward[3303113]["RewardItem"][1]["Attr"] ="0 1"
	tAnniversaryCelebrationSales_Reward[3303113]["RewardItem"][2] = {}
	tAnniversaryCelebrationSales_Reward[3303113]["RewardItem"][2]["Id"] = 3303115
	tAnniversaryCelebrationSales_Reward[3303113]["RewardItem"][2]["Attr"] ="0 2"
	tAnniversaryCelebrationSales_Reward[3303113]["LogId"] = 12000706
--抽奖碎片
	tAnniversaryCelebrationSales_Reward[3303115] = {}
	tAnniversaryCelebrationSales_Reward[3303115]["ItemChanceSum"] = 10000
	tAnniversaryCelebrationSales_Reward[3303115][1] = {}
	tAnniversaryCelebrationSales_Reward[3303115][1]["RandomItemChanceType"] = 2
	tAnniversaryCelebrationSales_Reward[3303115][1]["ItemChance"] = 50
	tAnniversaryCelebrationSales_Reward[3303115][1]["RewardItem"] = {}
	tAnniversaryCelebrationSales_Reward[3303115][1]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303115][1]["RewardItem"][1]["Id"] = 3303116
	tAnniversaryCelebrationSales_Reward[3303115][1]["RewardItem"][1]["Attr"] = "0 1" 
	tAnniversaryCelebrationSales_Reward[3303115][1]["GlobalId"] = 51535
	tAnniversaryCelebrationSales_Reward[3303115][1]["Pos"] = 1 
	tAnniversaryCelebrationSales_Reward[3303115][1]["MaxData"] = 1
	tAnniversaryCelebrationSales_Reward[3303115][1]["FullIndex"] = 2
	tAnniversaryCelebrationSales_Reward[3303115][1]["LogId"] = 12000706
	tAnniversaryCelebrationSales_Reward[3303115][2] = {}
	tAnniversaryCelebrationSales_Reward[3303115][2]["RandomItemChanceType"] = 2
	tAnniversaryCelebrationSales_Reward[3303115][2]["ItemChance"] = 9950
	tAnniversaryCelebrationSales_Reward[3303115][2]["RewardItem"] = {}
	tAnniversaryCelebrationSales_Reward[3303115][2]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303115][2]["RewardItem"][1]["Id"] = 3303149
	tAnniversaryCelebrationSales_Reward[3303115][2]["RewardItem"][1]["Attr"] = "0 1" 
	tAnniversaryCelebrationSales_Reward[3303115][2]["LogId"] = 12000706
--小固化石*3
	tAnniversaryCelebrationSales_Reward[3303150] = {}
	tAnniversaryCelebrationSales_Reward[3303150]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303150]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303150]["DeleteItem"][1]["Id"] = 3303150
	tAnniversaryCelebrationSales_Reward[3303150]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303150]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303150]["RewardItem"][1]["Id"] = 723694
	tAnniversaryCelebrationSales_Reward[3303150]["RewardItem"][1]["Attr"] ="0 3"
	tAnniversaryCelebrationSales_Reward[3303150]["LogId"] = 12000706
--龙珠*5
	tAnniversaryCelebrationSales_Reward[3303151] = {}
	tAnniversaryCelebrationSales_Reward[3303151]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303151]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303151]["DeleteItem"][1]["Id"] = 3303151
	tAnniversaryCelebrationSales_Reward[3303151]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303151]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303151]["RewardItem"][1]["Id"] = 1088000
	tAnniversaryCelebrationSales_Reward[3303151]["RewardItem"][1]["Attr"] ="0 5"
	tAnniversaryCelebrationSales_Reward[3303151]["LogId"] = 12000706
--100天石锁妖盒*3
	tAnniversaryCelebrationSales_Reward[3303152] = {}
	tAnniversaryCelebrationSales_Reward[3303152]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303152]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303152]["DeleteItem"][1]["Id"] = 3303152
	tAnniversaryCelebrationSales_Reward[3303152]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303152]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303152]["RewardItem"][1]["Id"] = 720652
	tAnniversaryCelebrationSales_Reward[3303152]["RewardItem"][1]["Attr"] ="0 3"
	tAnniversaryCelebrationSales_Reward[3303152]["LogId"] = 12000706
--小抽奖券礼包*3
	tAnniversaryCelebrationSales_Reward[3303153] = {}
	tAnniversaryCelebrationSales_Reward[3303153]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303153]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303153]["DeleteItem"][1]["Id"] = 3303153
	tAnniversaryCelebrationSales_Reward[3303153]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303153]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303153]["RewardItem"][1]["Id"] = 724002
	tAnniversaryCelebrationSales_Reward[3303153]["RewardItem"][1]["Attr"] ="0 3"
	tAnniversaryCelebrationSales_Reward[3303153]["LogId"] = 12000706
	--极品+6PrideFan礼盒 
	tAnniversaryCelebrationSales_Reward[3303192] = {}
	tAnniversaryCelebrationSales_Reward[3303192]["LogId"] = 12000706
	tAnniversaryCelebrationSales_Reward[3303192]["RewardItem"] = {}
	tAnniversaryCelebrationSales_Reward[3303192]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303192]["RewardItem"][1]["Id"] = 626029
	tAnniversaryCelebrationSales_Reward[3303192]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tAnniversaryCelebrationSales_Reward[3303192]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303192]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303192]["DeleteItem"][1]["Id"] = 3303192
	--极品+6MysticWindrobe礼盒 
	tAnniversaryCelebrationSales_Reward[3303193] = {}
	tAnniversaryCelebrationSales_Reward[3303193]["LogId"] = 12000706
	tAnniversaryCelebrationSales_Reward[3303193]["RewardItem"] = {}
	tAnniversaryCelebrationSales_Reward[3303193]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303193]["RewardItem"][1]["Id"] = 101009
	tAnniversaryCelebrationSales_Reward[3303193]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tAnniversaryCelebrationSales_Reward[3303193]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303193]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303193]["DeleteItem"][1]["Id"] = 3303193
	--极品+6DarkCloudHat礼盒 
	tAnniversaryCelebrationSales_Reward[3303194] = {}
	tAnniversaryCelebrationSales_Reward[3303194]["LogId"] = 12000706
	tAnniversaryCelebrationSales_Reward[3303194]["RewardItem"] = {}
	tAnniversaryCelebrationSales_Reward[3303194]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303194]["RewardItem"][1]["Id"] = 170009
	tAnniversaryCelebrationSales_Reward[3303194]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tAnniversaryCelebrationSales_Reward[3303194]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303194]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303194]["DeleteItem"][1]["Id"] = 3303194
	--+6苍之怒焰礼包(拳套)
	tAnniversaryCelebrationSales_Reward[3303195] = {}
	tAnniversaryCelebrationSales_Reward[3303195]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303195]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303195]["DeleteItem"][1]["Id"] = 3303195
	tAnniversaryCelebrationSales_Reward[3303195]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303195]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303195]["RewardItem"][1]["Id"] = 624029
	tAnniversaryCelebrationSales_Reward[3303195]["RewardItem"][1]["Attr"] ="0 1 0 0 0 0 0 5 0 0 6 255 255"
	tAnniversaryCelebrationSales_Reward[3303195]["LogId"] = 12000706
	--+6无为如意拂尘礼包
	tAnniversaryCelebrationSales_Reward[3303196] = {}
	tAnniversaryCelebrationSales_Reward[3303196]["DeleteItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303196]["DeleteItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303196]["DeleteItem"][1]["Id"] = 3303196
	tAnniversaryCelebrationSales_Reward[3303196]["RewardItem"] = {} 
	tAnniversaryCelebrationSales_Reward[3303196]["RewardItem"][1] = {}
	tAnniversaryCelebrationSales_Reward[3303196]["RewardItem"][1]["Id"] = 619029
	tAnniversaryCelebrationSales_Reward[3303196]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 6"
	tAnniversaryCelebrationSales_Reward[3303196]["LogId"] = 12000706
-------------------------------逻辑部分--------------------------------
function AnniversaryCelebration_Open(nItemId)
	--随机轮盘
	if not Item_ChkMulItem(nItemId,nItemId,3) then
		return
		User_TalkChannel2005(tAnniversaryCelebrationSales_Text["NoEnough"])
	end
	if Item_ChkMulItem(nItemId,nItemId,3) and Item_DelMulItem(nItemId,nItemId,3) then
		RewardTemplate_NewRandom(tAnniversaryCelebrationSales_Reward,nItemId)
	end
end

------------------------------物品模板---------------------------
--高端促销礼包打开
tItem[3303114] = tItem[3303114] or {}
tItem[3303114]["Function"] = function(nItemId)
	RewardTemplate_UseItemAndMsg(tAnniversaryCelebrationSales_Reward[nItemId])
end
tItem[3303106] = tItem[3303114] or {}
tItem[3303107] = tItem[3303114] or {}
tItem[3303108] = tItem[3303114] or {}
tItem[3303109] = tItem[3303114] or {}
tItem[3303110] = tItem[3303114] or {}
tItem[3303111] = tItem[3303114] or {}
tItem[3303112] = tItem[3303114] or {}
tItem[3303113] = tItem[3303114] or {}
tItem[3303150] = tItem[3303114] or {}
tItem[3303151] = tItem[3303114] or {}
tItem[3303152] = tItem[3303114] or {}
tItem[3303153] = tItem[3303114] or {}
tItem[3303192] = tItem[3303114] or {}
tItem[3303193] = tItem[3303114] or {}
tItem[3303194] = tItem[3303114] or {}
tItem[3303195] = tItem[3303114] or {}
tItem[3303196] = tItem[3303114] or {}

--碎片打开
tItem[3303115] = tItem[3303115] or {}
tItem[3303115]["Function"] = function(nItemId,sItemName)
	AnniversaryCelebration_Open(nItemId)
end

--AnniversaryFloralCirclet
tItem[3303116] = tItem[3303116] or {}
tItem[3303116]["Function"] = function(nItemId,sItemName)
RouletteMould_Main(3852)
end

--AnniversaryFloralCirclet
tItem[3303149] = tItem[3303149] or {}
tItem[3303149]["Function"] = function(nItemId,sItemName)
RouletteMould_Main(3853)
end





