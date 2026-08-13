--------------------------------------------------------------------------------
---Name:160524[英文征服][活动脚本]暑期每日签到有礼
--Creator: 	林强
--Created:	2016-05-24
--------------------------------------------------------------------------------
--luaid 40266 = V100\ActiveScript\[Conquer][ActiveScript]SummerRegister.lua
--前缀 SummerRegister_

--logid 12000412

-- stc 
--item  3200406  3200415
--14567 记录签到次数
--npc 19311
-- lookface 4182
---------------------------------------------------------------------------------------------------------





--------------------------------------------------数据区-------------------------------------------------------
local tSummerRegister_Const = {}
tSummerRegister_Const["BeginActivityTime"] = "2016-04-21 00:00 2016-06-06 23:59"
tSummerRegister_Const["ActivityTime"] = "2016-06-07 00:00 2016-06-15 23:59"


local tSummerRegister_Stc={}
--总签到
tSummerRegister_Stc["SumRegister"]={}
tSummerRegister_Stc["SumRegister"]["EventType"]=145
tSummerRegister_Stc["SumRegister"]["DataType"]=18

--连续签到
tSummerRegister_Stc["ContinueRegister"]={}
tSummerRegister_Stc["ContinueRegister"]["EventType"]=145
tSummerRegister_Stc["ContinueRegister"]["DataType"]=19
tSummerRegister_Stc["ContinueRegister"]["MaxDay"]=9
tSummerRegister_Stc["ContinueRegister"]["MinBagSpace"]=1
tSummerRegister_Stc["ContinueRegister"]["MaxBagSpace"]=2

-- 补奖励
tSummerRegister_Stc[1]={}
tSummerRegister_Stc[1]["EventType"]=145
tSummerRegister_Stc[1]["DataType"]=95

tSummerRegister_Stc[2]={}
tSummerRegister_Stc[2]["EventType"]=145
tSummerRegister_Stc[2]["DataType"]=96

--获得的礼包
local tSummerRegister_Item={}
tSummerRegister_Item["Attr"]="0 1 3"

tSummerRegister_Item[1]={}
tSummerRegister_Item[1]["RegisterID"]=3200406
tSummerRegister_Item[1]["RegisterName"]=tSummerRegister_Text["Reward"][3200406]
tSummerRegister_Item[1]["MaxRegisterID"]=3200409
tSummerRegister_Item[1]["MaxRegisterName"]=tSummerRegister_Text["Reward"][3200409]

tSummerRegister_Item[2]={}
tSummerRegister_Item[2]["RegisterID"]=3200407
tSummerRegister_Item[2]["RegisterName"]=tSummerRegister_Text["Reward"][3200407]
tSummerRegister_Item[2]["MaxRegisterID"]=3200410
tSummerRegister_Item[2]["MaxRegisterName"]=tSummerRegister_Text["Reward"][3200410]

tSummerRegister_Item[3]={}
tSummerRegister_Item[3]["RegisterID"]=3200408
tSummerRegister_Item[3]["RegisterName"]=tSummerRegister_Text["Reward"][3200408]
tSummerRegister_Item[3]["MaxRegisterID"]=3200411
tSummerRegister_Item[3]["MaxRegisterName"]=tSummerRegister_Text["Reward"][3200411]







local tSummerRegister_Reward = {}

--初级签到礼包
tSummerRegister_Reward[3200406]={}
tSummerRegister_Reward[3200406]["ChkBEmoney"]=true
tSummerRegister_Reward[3200406]["ChkBEmoneyCount"]=50
tSummerRegister_Reward[3200406]["TipFormatReward"]=tSummerRegister_Text[3200406]["TipFormatReward"]
tSummerRegister_Reward[3200406]["AddItemLog"]="350	20186	1	1	1	"
tSummerRegister_Reward[3200406][1]={}
tSummerRegister_Reward[3200406][1]["ItemChanceSum"]=10000

--同概率随机25% 以下物品直接获得
tSummerRegister_Reward[3200406][1][1]={}
tSummerRegister_Reward[3200406][1][1]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200406][1][1]["ItemChance"]=2500
tSummerRegister_Reward[3200406][1][1]["LogId"]=12000412
tSummerRegister_Reward[3200406][1][1]["LogStep"]="2"
tSummerRegister_Reward[3200406][1][1]["DelItemLog"]="3200406"
tSummerRegister_Reward[3200406][1][1]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200406][1][1]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200406][1][1]["RewardItem"]={}
--2个赠品2个经验球（赠）
tSummerRegister_Reward[3200406][1][1]["RewardItem"][1]={}
tSummerRegister_Reward[3200406][1][1]["RewardItem"][1]["Id"]=723700
tSummerRegister_Reward[3200406][1][1]["RewardItem"][1]["Attr"]="0 2 1"
tSummerRegister_Reward[3200406][1][1]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200406]["Reward"][72370002]

--同概率随机20% 以下物品直接获得
tSummerRegister_Reward[3200406][1][2]={}
tSummerRegister_Reward[3200406][1][2]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200406][1][2]["ItemChance"]=2000
tSummerRegister_Reward[3200406][1][2]["LogId"]=12000412
tSummerRegister_Reward[3200406][1][2]["LogStep"]="2"
tSummerRegister_Reward[3200406][1][2]["DelItemLog"]="3200406"
tSummerRegister_Reward[3200406][1][2]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200406][1][2]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200406][1][2]["RewardItem"]={}
--2个赠品PrayingStone(S)
tSummerRegister_Reward[3200406][1][2]["RewardItem"][1]={}
tSummerRegister_Reward[3200406][1][2]["RewardItem"][1]["Id"]=1200000
tSummerRegister_Reward[3200406][1][2]["RewardItem"][1]["Attr"]="0 2 1"
tSummerRegister_Reward[3200406][1][2]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200406]["Reward"][120000002]

--同概率随机10% 以下物品直接获得
tSummerRegister_Reward[3200406][1][3]={}
tSummerRegister_Reward[3200406][1][3]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200406][1][3]["ItemChance"]=1000
tSummerRegister_Reward[3200406][1][3]["LogId"]=12000412
tSummerRegister_Reward[3200406][1][3]["LogStep"]="2"
tSummerRegister_Reward[3200406][1][3]["DelItemLog"]="3200406"
tSummerRegister_Reward[3200406][1][3]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200406][1][3]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200406][1][3]["RewardItem"]={}
--1个赠品1个+1赤练石（赠）
tSummerRegister_Reward[3200406][1][3]["RewardItem"][1]={}
tSummerRegister_Reward[3200406][1][3]["RewardItem"][1]["Id"]=730001
tSummerRegister_Reward[3200406][1][3]["RewardItem"][1]["Attr"]="0 1 1"
tSummerRegister_Reward[3200406][1][3]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200406]["Reward"][73000101]

--同概率随机20% 以下物品直接获得
tSummerRegister_Reward[3200406][1][4]={}
tSummerRegister_Reward[3200406][1][4]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200406][1][4]["ItemChance"]=2000
tSummerRegister_Reward[3200406][1][4]["LogId"]=12000412
tSummerRegister_Reward[3200406][1][4]["LogStep"]="2"
tSummerRegister_Reward[3200406][1][4]["DelItemLog"]="3200406"
tSummerRegister_Reward[3200406][1][4]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200406][1][4]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200406][1][4]["RewardItem"]={}
--1个赠品1个MeteorScroll（赠）
tSummerRegister_Reward[3200406][1][4]["RewardItem"][1]={}
tSummerRegister_Reward[3200406][1][4]["RewardItem"][1]["Id"]=720027
tSummerRegister_Reward[3200406][1][4]["RewardItem"][1]["Attr"]="0 1 1"
tSummerRegister_Reward[3200406][1][4]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200406]["Reward"][72002701]

--同概率随机20% 以下物品直接获得
tSummerRegister_Reward[3200406][1][5]={}
tSummerRegister_Reward[3200406][1][5]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200406][1][5]["ItemChance"]=2000
tSummerRegister_Reward[3200406][1][5]["LogId"]=12000412
tSummerRegister_Reward[3200406][1][5]["LogStep"]="2"
tSummerRegister_Reward[3200406][1][5]["DelItemLog"]="3200406"
tSummerRegister_Reward[3200406][1][5]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200406][1][5]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200406][1][5]["RewardItem"]={}
--2个赠品2瓶3倍经验药水（赠）
tSummerRegister_Reward[3200406][1][5]["RewardItem"][1]={}
tSummerRegister_Reward[3200406][1][5]["RewardItem"][1]["Id"]=728776
tSummerRegister_Reward[3200406][1][5]["RewardItem"][1]["Attr"]="0 2 1"
tSummerRegister_Reward[3200406][1][5]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200406]["Reward"][72877602]

--同概率随机5% 以下物品直接获得
tSummerRegister_Reward[3200406][1][6]={}
tSummerRegister_Reward[3200406][1][6]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200406][1][6]["ItemChance"]=500
tSummerRegister_Reward[3200406][1][6]["LogId"]=12000412
tSummerRegister_Reward[3200406][1][6]["LogStep"]="2"
tSummerRegister_Reward[3200406][1][6]["DelItemLog"]="3200406"
tSummerRegister_Reward[3200406][1][6]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200406][1][6]["EmoneyLog"]="350	20192	50	50	1	"
--50点赠点
tSummerRegister_Reward[3200406][1][6]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200406][1][6]["RewardEMoneyMono"]={}
tSummerRegister_Reward[3200406][1][6]["RewardEMoneyMono"]["Value"]=50
tSummerRegister_Reward[3200406][1][6]["RewardEMoneyMono"]["Name"]=tSummerRegister_Text[3200406]["Reward"]["EBmoney50"]

--中级签到礼包
tSummerRegister_Reward[3200407]={}
tSummerRegister_Reward[3200407]["ChkBEmoney"]=true
tSummerRegister_Reward[3200407]["ChkBEmoneyCount"]=100
tSummerRegister_Reward[3200407]["BagSpace"]=1
tSummerRegister_Reward[3200407]["TipFormatReward"]=tSummerRegister_Text[3200407]["TipFormatReward"]
tSummerRegister_Reward[3200407]["AddItemLog"]="350	20187	1	1	1	"
tSummerRegister_Reward[3200407][1]={}
tSummerRegister_Reward[3200407][1]["ItemChanceSum"]=10000
--同概率随机25% 以下物品直接获得
tSummerRegister_Reward[3200407][1][1]={}
tSummerRegister_Reward[3200407][1][1]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200407][1][1]["ItemChance"]=2500
tSummerRegister_Reward[3200407][1][1]["LogId"]=12000412
tSummerRegister_Reward[3200407][1][1]["LogStep"]="2"
tSummerRegister_Reward[3200407][1][1]["DelItemLog"]="3200407"
tSummerRegister_Reward[3200407][1][1]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200407][1][1]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200407][1][1]["RewardItem"]={}
--1个赠品1个DiligentStudyPack
tSummerRegister_Reward[3200407][1][1]["RewardItem"][1]={}
tSummerRegister_Reward[3200407][1][1]["RewardItem"][1]["Id"]=3005123
tSummerRegister_Reward[3200407][1][1]["RewardItem"][1]["Attr"]="0 1 1"
tSummerRegister_Reward[3200407][1][1]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200407]["Reward"][300512301]


--同概率随机20% 以下物品直接获得
tSummerRegister_Reward[3200407][1][2]={}
tSummerRegister_Reward[3200407][1][2]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200407][1][2]["ItemChance"]=2000
tSummerRegister_Reward[3200407][1][2]["LogId"]=12000412
tSummerRegister_Reward[3200407][1][2]["LogStep"]="2"
tSummerRegister_Reward[3200407][1][2]["DelItemLog"]="3200407"
tSummerRegister_Reward[3200407][1][2]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200407][1][2]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200407][1][2]["RewardItem"]={}
--1个赠品1个 P5DragonSoulPack
tSummerRegister_Reward[3200407][1][2]["RewardItem"][1]={}
tSummerRegister_Reward[3200407][1][2]["RewardItem"][1]["Id"]=3005892
tSummerRegister_Reward[3200407][1][2]["RewardItem"][1]["Attr"]="0 1 1"
tSummerRegister_Reward[3200407][1][2]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200407]["Reward"][300589201]


--同概率随机10% 以下物品直接获得
tSummerRegister_Reward[3200407][1][3]={}
tSummerRegister_Reward[3200407][1][3]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200407][1][3]["ItemChance"]=1000
tSummerRegister_Reward[3200407][1][3]["LogId"]=12000412
tSummerRegister_Reward[3200407][1][3]["LogStep"]="2"
tSummerRegister_Reward[3200407][1][3]["DelItemLog"]="3200407"
tSummerRegister_Reward[3200407][1][3]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200407][1][3]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200407][1][3]["RewardItem"]={}
--4个赠品4个 ExpBall（赠）
tSummerRegister_Reward[3200407][1][3]["RewardItem"][1]={}
tSummerRegister_Reward[3200407][1][3]["RewardItem"][1]["Id"]=723700
tSummerRegister_Reward[3200407][1][3]["RewardItem"][1]["Attr"]="0 4 1"
tSummerRegister_Reward[3200407][1][3]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200407]["Reward"][72370004]


--同概率随机20% 以下物品直接获得
tSummerRegister_Reward[3200407][1][4]={}
tSummerRegister_Reward[3200407][1][4]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200407][1][4]["ItemChance"]=2000
tSummerRegister_Reward[3200407][1][4]["LogId"]=12000412
tSummerRegister_Reward[3200407][1][4]["LogStep"]="2"
tSummerRegister_Reward[3200407][1][4]["DelItemLog"]="3200407"
tSummerRegister_Reward[3200407][1][4]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200407][1][4]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200407][1][4]["RewardItem"]={}
--2个赠品2个 MeteorScroll（赠）
tSummerRegister_Reward[3200407][1][4]["RewardItem"][1]={}
tSummerRegister_Reward[3200407][1][4]["RewardItem"][1]["Id"]=720027
tSummerRegister_Reward[3200407][1][4]["RewardItem"][1]["Attr"]="0 2 1"
tSummerRegister_Reward[3200407][1][4]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200407]["Reward"][72002702]


--同概率随机20% 以下物品直接获得
tSummerRegister_Reward[3200407][1][5]={}
tSummerRegister_Reward[3200407][1][5]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200407][1][5]["ItemChance"]=2000
tSummerRegister_Reward[3200407][1][5]["LogId"]=12000412
tSummerRegister_Reward[3200407][1][5]["LogStep"]="2"
tSummerRegister_Reward[3200407][1][5]["DelItemLog"]="3200407"
tSummerRegister_Reward[3200407][1][5]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200407][1][5]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200407][1][5]["RewardItem"]={}
--1个赠品1个 LovelyChiPack(100Pts)（赠）
tSummerRegister_Reward[3200407][1][5]["RewardItem"][1]={}
tSummerRegister_Reward[3200407][1][5]["RewardItem"][1]["Id"]=3002027
tSummerRegister_Reward[3200407][1][5]["RewardItem"][1]["Attr"]="0 1 1"
tSummerRegister_Reward[3200407][1][5]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200407]["Reward"][300202701]


--同概率随机5% 以下物品直接获得
tSummerRegister_Reward[3200407][1][6]={}
tSummerRegister_Reward[3200407][1][6]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200407][1][6]["ItemChance"]=500
tSummerRegister_Reward[3200407][1][6]["LogId"]=12000412
tSummerRegister_Reward[3200407][1][6]["LogStep"]="2"
tSummerRegister_Reward[3200407][1][6]["DelItemLog"]="3200407"
tSummerRegister_Reward[3200407][1][6]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200407][1][6]["EmoneyLog"]="350	20193	100	100	1	"
tSummerRegister_Reward[3200407][1][6]["RewardNoNeedTip"]=1
--100点赠点
tSummerRegister_Reward[3200407][1][6]["RewardEMoneyMono"]={}
tSummerRegister_Reward[3200407][1][6]["RewardEMoneyMono"]["Value"]=100
tSummerRegister_Reward[3200407][1][6]["RewardEMoneyMono"]["Name"]=tSummerRegister_Text[3200407]["Reward"]["EBmoney100"]

--高级签到礼包
tSummerRegister_Reward[3200408]={}
tSummerRegister_Reward[3200408]["ChkBEmoney"]=true
tSummerRegister_Reward[3200408]["ChkBEmoneyCount"]=200
tSummerRegister_Reward[3200408]["TipFormatReward"]=tSummerRegister_Text[3200408]["TipFormatReward"]
tSummerRegister_Reward[3200408]["AddItemLog"]="350	20188	1	1	1	"
tSummerRegister_Reward[3200408][1]={}
tSummerRegister_Reward[3200408][1]["ItemChanceSum"]=10000
--同概率随机25% 以下物品直接获得
tSummerRegister_Reward[3200408][1][1]={}
tSummerRegister_Reward[3200408][1][1]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200408][1][1]["ItemChance"]=2500
tSummerRegister_Reward[3200408][1][1]["LogId"]=12000412
tSummerRegister_Reward[3200408][1][1]["LogStep"]="2"
tSummerRegister_Reward[3200408][1][1]["DelItemLog"]="3200408"
tSummerRegister_Reward[3200408][1][1]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200408][1][1]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200408][1][1]["RewardItem"]={}
--1个赠品1个DiligentStudyPack(赠)
tSummerRegister_Reward[3200408][1][1]["RewardItem"][1]={}
tSummerRegister_Reward[3200408][1][1]["RewardItem"][1]["Id"]=3200412
tSummerRegister_Reward[3200408][1][1]["RewardItem"][1]["Attr"]="0 1 1"
tSummerRegister_Reward[3200408][1][1]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200408]["Reward"][300512301]


--同概率随机20% 以下物品直接获得
tSummerRegister_Reward[3200408][1][2]={}
tSummerRegister_Reward[3200408][1][2]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200408][1][2]["ItemChance"]=2000
tSummerRegister_Reward[3200408][1][2]["LogId"]=12000412
tSummerRegister_Reward[3200408][1][2]["LogStep"]="2"
tSummerRegister_Reward[3200408][1][2]["DelItemLog"]="3200408"
tSummerRegister_Reward[3200408][1][2]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200408][1][2]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200408][1][2]["RewardItem"]={}
--1个赠品1个P6DragonSoulPack(赠)
tSummerRegister_Reward[3200408][1][2]["RewardItem"][1]={}
tSummerRegister_Reward[3200408][1][2]["RewardItem"][1]["Id"]=3005893
tSummerRegister_Reward[3200408][1][2]["RewardItem"][1]["Attr"]="0 1 1"
tSummerRegister_Reward[3200408][1][2]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200408]["Reward"][300589301]


--同概率随机10% 以下物品直接获得
tSummerRegister_Reward[3200408][1][3]={}
tSummerRegister_Reward[3200408][1][3]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200408][1][3]["ItemChance"]=1000
tSummerRegister_Reward[3200408][1][3]["LogId"]=12000412
tSummerRegister_Reward[3200408][1][3]["LogStep"]="2"
tSummerRegister_Reward[3200408][1][3]["DelItemLog"]="3200408"
tSummerRegister_Reward[3200408][1][3]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200408][1][3]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200408][1][3]["RewardItem"]={}
--5个赠品5个FavoredTrainingPill（赠）
tSummerRegister_Reward[3200408][1][3]["RewardItem"][1]={}
tSummerRegister_Reward[3200408][1][3]["RewardItem"][1]["Id"]=3003124
tSummerRegister_Reward[3200408][1][3]["RewardItem"][1]["Attr"]="0 5 1"
tSummerRegister_Reward[3200408][1][3]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200408]["Reward"][300312405]


--同概率随机20% 以下物品直接获得
tSummerRegister_Reward[3200408][1][4]={}
tSummerRegister_Reward[3200408][1][4]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200408][1][4]["ItemChance"]=2000
tSummerRegister_Reward[3200408][1][4]["LogId"]=12000412
tSummerRegister_Reward[3200408][1][4]["LogStep"]="2"
tSummerRegister_Reward[3200408][1][4]["DelItemLog"]="3200408"
tSummerRegister_Reward[3200408][1][4]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200408][1][4]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200408][1][4]["RewardItem"]={}
--5个赠品5个SpecialTrainingPill（赠）
tSummerRegister_Reward[3200408][1][4]["RewardItem"][1]={}
tSummerRegister_Reward[3200408][1][4]["RewardItem"][1]["Id"]=3003125
tSummerRegister_Reward[3200408][1][4]["RewardItem"][1]["Attr"]="0 5 1"
tSummerRegister_Reward[3200408][1][4]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200408]["Reward"][300312505]


--同概率随机20% 以下物品直接获得
tSummerRegister_Reward[3200408][1][5]={}
tSummerRegister_Reward[3200408][1][5]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200408][1][5]["ItemChance"]=2000
tSummerRegister_Reward[3200408][1][5]["LogId"]=12000412
tSummerRegister_Reward[3200408][1][5]["LogStep"]="2"
tSummerRegister_Reward[3200408][1][5]["DelItemLog"]="3200408"
tSummerRegister_Reward[3200408][1][5]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200408][1][5]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200408][1][5]["RewardItem"]={}
--2个赠品2个PenitenceAmulet(赠)
tSummerRegister_Reward[3200408][1][5]["RewardItem"][1]={}
tSummerRegister_Reward[3200408][1][5]["RewardItem"][1]["Id"]=720128
tSummerRegister_Reward[3200408][1][5]["RewardItem"][1]["Attr"]="0 2 1"
tSummerRegister_Reward[3200408][1][5]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200408]["Reward"][72012802]


--同概率随机5% 以下物品直接获得
tSummerRegister_Reward[3200408][1][6]={}
tSummerRegister_Reward[3200408][1][6]["RandomItemChanceType"]=2
tSummerRegister_Reward[3200408][1][6]["ItemChance"]=500
tSummerRegister_Reward[3200408][1][6]["LogId"]=12000412
tSummerRegister_Reward[3200408][1][6]["LogStep"]="2"
tSummerRegister_Reward[3200408][1][6]["DelItemLog"]="3200408"
tSummerRegister_Reward[3200408][1][6]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200408][1][6]["EmoneyLog"]="350	20194	200	200	1	"
tSummerRegister_Reward[3200408][1][6]["RewardNoNeedTip"]=1
--200点赠点
tSummerRegister_Reward[3200408][1][6]["RewardEMoneyMono"]={}
tSummerRegister_Reward[3200408][1][6]["RewardEMoneyMono"]["Value"]=200
tSummerRegister_Reward[3200408][1][6]["RewardEMoneyMono"]["Name"]=tSummerRegister_Text[3200408]["Reward"]["EBmoney200"]


--初级满勤礼包
tSummerRegister_Reward[3200409]={}
tSummerRegister_Reward[3200409]["BagSpace"]=2
tSummerRegister_Reward[3200409]["TipReward"]=tSummerRegister_Text[3200409]["TipReward"]
tSummerRegister_Reward[3200409]["AddItemLog"]="350	20189	1	1	1	"
tSummerRegister_Reward[3200409][1]={}
--以下物品直接获得
tSummerRegister_Reward[3200409][1][1]={}
tSummerRegister_Reward[3200409][1][1]["RandomItemChanceType"]=1
tSummerRegister_Reward[3200409][1][1]["LogId"]=12000412
tSummerRegister_Reward[3200409][1][1]["LogStep"]="2"
tSummerRegister_Reward[3200409][1][1]["DelItemLog"]="3200409"
tSummerRegister_Reward[3200409][1][1]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200409][1][1]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200409][1][1]["RewardItem"]={}
--10个赠品10个ExpBall（赠）
tSummerRegister_Reward[3200409][1][1]["RewardItem"][1]={}
tSummerRegister_Reward[3200409][1][1]["RewardItem"][1]["Id"]=723700
tSummerRegister_Reward[3200409][1][1]["RewardItem"][1]["Attr"]="0 10 1"
tSummerRegister_Reward[3200409][1][1]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200409]["Reward"][72370010]
--1个赠品1颗DragonBall（赠）
tSummerRegister_Reward[3200409][1][1]["RewardItem"][2]={}
tSummerRegister_Reward[3200409][1][1]["RewardItem"][2]["Id"]=1088000
tSummerRegister_Reward[3200409][1][1]["RewardItem"][2]["Attr"]="0 1 1"
tSummerRegister_Reward[3200409][1][1]["RewardItem"][2]["Name"]=tSummerRegister_Text[3200409]["Reward"][108800001]
--1个赠品1颗+2Stone(赠)
tSummerRegister_Reward[3200409][1][1]["RewardItem"][3]={}
tSummerRegister_Reward[3200409][1][1]["RewardItem"][3]["Id"]=730002
tSummerRegister_Reward[3200409][1][1]["RewardItem"][3]["Attr"]="0 1 1"
tSummerRegister_Reward[3200409][1][1]["RewardItem"][3]["Name"]=tSummerRegister_Text[3200409]["Reward"][73000201]

--中级满勤礼包
tSummerRegister_Reward[3200410]={}
tSummerRegister_Reward[3200410]["BagSpace"]=5
tSummerRegister_Reward[3200410]["TipReward"]=tSummerRegister_Text[3200410]["TipReward"]
tSummerRegister_Reward[3200410]["AddItemLog"]="350	20190	1	1	1	"
tSummerRegister_Reward[3200410][1]={}
--以下物品直接获得
tSummerRegister_Reward[3200410][1][1]={}
tSummerRegister_Reward[3200410][1][1]["RandomItemChanceType"]=1
tSummerRegister_Reward[3200410][1][1]["LogId"]=12000412
tSummerRegister_Reward[3200410][1][1]["LogStep"]="2"
tSummerRegister_Reward[3200410][1][1]["DelItemLog"]="3200410"
tSummerRegister_Reward[3200410][1][1]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200410][1][1]["RewardNoNeedTip"]=1
tSummerRegister_Reward[3200410][1][1]["RewardItem"]={}
--10个赠品10个ExpBall（赠）
tSummerRegister_Reward[3200410][1][1]["RewardItem"][1]={}
tSummerRegister_Reward[3200410][1][1]["RewardItem"][1]["Id"]=723700
tSummerRegister_Reward[3200410][1][1]["RewardItem"][1]["Attr"]="0 10 1"
tSummerRegister_Reward[3200410][1][1]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200410]["Reward"][72370010]
--2个赠品2颗DragonBall（赠）
tSummerRegister_Reward[3200410][1][1]["RewardItem"][2]={}
tSummerRegister_Reward[3200410][1][1]["RewardItem"][2]["Id"]=1088000
tSummerRegister_Reward[3200410][1][1]["RewardItem"][2]["Attr"]="0 2 1"
tSummerRegister_Reward[3200410][1][1]["RewardItem"][2]["Name"]=tSummerRegister_Text[3200410]["Reward"][108800002]
--1个赠品1颗+3Stone（赠）
tSummerRegister_Reward[3200410][1][1]["RewardItem"][3]={}
tSummerRegister_Reward[3200410][1][1]["RewardItem"][3]["Id"]=730003
tSummerRegister_Reward[3200410][1][1]["RewardItem"][3]["Attr"]="0 1 1"
tSummerRegister_Reward[3200410][1][1]["RewardItem"][3]["Name"]=tSummerRegister_Text[3200410]["Reward"][73000301]
--2个赠品2颗Vital~Pill（赠）
tSummerRegister_Reward[3200410][1][1]["RewardItem"][4]={}
tSummerRegister_Reward[3200410][1][1]["RewardItem"][4]["Id"]=729242
tSummerRegister_Reward[3200410][1][1]["RewardItem"][4]["Attr"]="0 2 1"
tSummerRegister_Reward[3200410][1][1]["RewardItem"][4]["Name"]=tSummerRegister_Text[3200410]["Reward"][72924202]

--高级满勤礼包
tSummerRegister_Reward[3200411]={}
tSummerRegister_Reward[3200411]["ChkBEmoney"]=true
tSummerRegister_Reward[3200411]["ChkBEmoneyCount"]=500
tSummerRegister_Reward[3200411]["BagSpace"]=9
tSummerRegister_Reward[3200411]["TipReward"]=tSummerRegister_Text[3200411]["TipReward"]
tSummerRegister_Reward[3200411]["AddItemLog"]="350	20191	1	1	1	"
tSummerRegister_Reward[3200411][1]={}
--以下物品直接获得
tSummerRegister_Reward[3200411][1][1]={}
tSummerRegister_Reward[3200411][1][1]["RandomItemChanceType"]=1
tSummerRegister_Reward[3200411][1][1]["LogId"]=12000412
tSummerRegister_Reward[3200411][1][1]["LogStep"]="2"
tSummerRegister_Reward[3200411][1][1]["DelItemLog"]="3200411"
tSummerRegister_Reward[3200411][1][1]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200411][1][1]["RewardNoNeedTip"]=1

tSummerRegister_Reward[3200411][1][1]["RewardItem"]={}
--1个赠品1个P7DragonSoulPack(赠)
tSummerRegister_Reward[3200411][1][1]["RewardItem"][1]={}
tSummerRegister_Reward[3200411][1][1]["RewardItem"][1]["Id"]=3006233
tSummerRegister_Reward[3200411][1][1]["RewardItem"][1]["Attr"]="0 2 1"
tSummerRegister_Reward[3200411][1][1]["RewardItem"][1]["Name"]=tSummerRegister_Text[3200411]["Reward"][300623301]
--3个赠品3个SeniorTrainingPill（赠）
tSummerRegister_Reward[3200411][1][1]["RewardItem"][2]={}
tSummerRegister_Reward[3200411][1][1]["RewardItem"][2]["Id"]=3003126
tSummerRegister_Reward[3200411][1][1]["RewardItem"][2]["Attr"]="0 3 1"
tSummerRegister_Reward[3200411][1][1]["RewardItem"][2]["Name"]=tSummerRegister_Text[3200411]["Reward"][300312603]
--5个赠品5个Vital~Pill（赠）
tSummerRegister_Reward[3200411][1][1]["RewardItem"][3]={}
tSummerRegister_Reward[3200411][1][1]["RewardItem"][3]["Id"]=729242
tSummerRegister_Reward[3200411][1][1]["RewardItem"][3]["Attr"]="0 5 1"
tSummerRegister_Reward[3200411][1][1]["RewardItem"][3]["Name"]=tSummerRegister_Text[3200411]["Reward"][72924205]
--2个赠品2个+3Stone(赠)
tSummerRegister_Reward[3200411][1][1]["RewardItem"][4]={}
tSummerRegister_Reward[3200411][1][1]["RewardItem"][4]["Id"]=730003
tSummerRegister_Reward[3200411][1][1]["RewardItem"][4]["Attr"]="0 2 1"
tSummerRegister_Reward[3200411][1][1]["RewardItem"][4]["Name"]=tSummerRegister_Text[3200411]["Reward"][73000302]

--500赠点
tSummerRegister_Reward[3200411][1][1]["RewardEMoneyMono"]={}
tSummerRegister_Reward[3200411][1][1]["RewardEMoneyMono"]["Value"]=500
tSummerRegister_Reward[3200411][1][1]["RewardEMoneyMono"]["Name"]=tSummerRegister_Text[3200411]["Reward"]["EBmoney500"]




--200气力礼包
tSummerRegister_Reward[3200412]={}
tSummerRegister_Reward[3200412]["TipReward"]=tSummerRegister_Text[3200412]["TipReward"]
tSummerRegister_Reward[3200412][1]={}
--以下物品直接获得
tSummerRegister_Reward[3200412][1][1]={}
tSummerRegister_Reward[3200412][1][1]["RandomItemChanceType"]=1
tSummerRegister_Reward[3200412][1][1]["LogId"]=12000412
tSummerRegister_Reward[3200412][1][1]["LogStep"]="2"
tSummerRegister_Reward[3200412][1][1]["DelItemLog"]="3200412"
tSummerRegister_Reward[3200412][1][1]["DelItemNumLog"]="1"
tSummerRegister_Reward[3200412][1][1]["RewardNoNeedTip"]=1

--200点气力
tSummerRegister_Reward[3200412][1][1]["RewardStrengthValue"]={}
tSummerRegister_Reward[3200412][1][1]["RewardStrengthValue"]["Value"]=200


--------------------------------------------------方法区-------------------------------------------------------
--打开礼包
function SummerRegister_OpenPack(nItemId)
	--检查物品
	if not Item_ChkItem(nItemId) then
       return
    end
	--是否进行天石的上限判断
	if tSummerRegister_Reward[nItemId]["ChkBEmoney"]~=nil and  tSummerRegister_Reward[nItemId]["ChkBEmoney"] then
		local nBEmoney = Get_UserMonoEMoney()+tSummerRegister_Reward[nItemId]["ChkBEmoneyCount"]
		if nBEmoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tSummerRegister_Text["MaxBEmoney"])
			return
		end
	end
	--空间判断
	if tSummerRegister_Reward[nItemId]["BagSpace"]~=nil then
		if not User_CheckLeftSpace(tSummerRegister_Reward[nItemId]["BagSpace"]) then
			User_TalkChannel2005(string.format(tSummerRegister_Text["BagSpace"],tSummerRegister_Reward[nItemId]["BagSpace"]))
			return
		end
	end
	--删除礼包
	if not Item_DelItem(nItemId) then
		return
    end
	--给物品
	local tReturnItems=RewardTemplate_Random(tSummerRegister_Reward[nItemId],1)
	--给提示
	if tSummerRegister_Text[nItemId]["TipFormatReward"]~=nil then
		if tReturnItems[1]["tAward"][1]["RewardItem"] ~= nil then
			User_TalkChannel2005(string.format(tSummerRegister_Text[nItemId]["TipFormatReward"],tReturnItems[1]["tAward"][1]["RewardItem"][1]["Name"]))
		else
			User_TalkChannel2005(string.format(tSummerRegister_Text[nItemId]["TipFormatReward"],tReturnItems[1]["tAward"][1]["RewardEMoneyMono"]["Name"]))
		end
		
	else
		User_TalkChannel2005(tSummerRegister_Text[nItemId]["TipReward"])
	end
end

--签到
function SummerRegister_Register(nNpcId)
	if Task_ChkStcValue(tSummerRegister_Stc["SumRegister"]["EventType"],tSummerRegister_Stc["SumRegister"]["DataType"],"~=",0) then
		--判断是否隔天
		if not Task_StcInterval(tSummerRegister_Stc["SumRegister"]["EventType"],tSummerRegister_Stc["SumRegister"]["DataType"],1,4) then
			LinkNpcGossipFunc_New(nNpcId,"8-1")
			return
		end
	end
	
	local nContinue=Get_UserStatisticValue(tSummerRegister_Stc["ContinueRegister"]["EventType"],tSummerRegister_Stc["ContinueRegister"]["DataType"])
	local nBagSpace=tSummerRegister_Stc["ContinueRegister"]["MinBagSpace"]
	
	if( nContinue==tSummerRegister_Stc["ContinueRegister"]["MaxDay"]-1) then
		nBagSpace=tSummerRegister_Stc["ContinueRegister"]["MaxBagSpace"]
	end
	
	--判断背包
	if not User_CheckLeftSpace(nBagSpace) then
		tNpcGossip[nNpcId]["Text711"] = string.format(tSummerRegister_Text[nNpcId]["Text711"],nBagSpace)
		LinkNpcGossipFunc_New(nNpcId,"7-1")
		return
	end
	
	--记录签到次数
	Task_AddStatistic(tSummerRegister_Stc["SumRegister"]["EventType"],tSummerRegister_Stc["SumRegister"]["DataType"],1,1)
	Task_SetStcTimestamp(tSummerRegister_Stc["SumRegister"]["EventType"],tSummerRegister_Stc["SumRegister"]["DataType"],0)
	
	if not Task_StcInterval(tSummerRegister_Stc["ContinueRegister"]["EventType"],tSummerRegister_Stc["ContinueRegister"]["DataType"],2,4) then
		Task_AddStatistic(tSummerRegister_Stc["ContinueRegister"]["EventType"],tSummerRegister_Stc["ContinueRegister"]["DataType"],1,1)
	else
		Task_SetStatistic(tSummerRegister_Stc["ContinueRegister"]["EventType"],tSummerRegister_Stc["ContinueRegister"]["DataType"],1,1)
	end
	Task_SetStcTimestamp(tSummerRegister_Stc["ContinueRegister"]["EventType"],tSummerRegister_Stc["ContinueRegister"]["DataType"],0)
	
	local nMetempsychosis=Get_UserMetempsychosis()+1
	if nMetempsychosis >= 3 then
		nMetempsychosis = 3
		if Task_ChkStcValue(tSummerRegister_Stc["SumRegister"]["EventType"],tSummerRegister_Stc["SumRegister"]["DataType"],"==",1) then
			local nEvent = tSummerRegister_Stc[1]["EventType"]
			local nType = tSummerRegister_Stc[1]["DataType"]
			Task_SetStatistic(nEvent,nType,1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
	end
	Item_AddNewItem(tSummerRegister_Item[nMetempsychosis]["RegisterID"],tSummerRegister_Item["Attr"])
	User_TalkChannel2005(string.format(tSummerRegister_Text[19311]["RewardTip"],tSummerRegister_Item[nMetempsychosis]["RegisterName"]))
	
	local nItemId = tSummerRegister_Item[nMetempsychosis]["RegisterID"]
	if tSummerRegister_Reward[nItemId]["AddItemLog"]~=nil then
		Sys_SaveEmoneyBuy(tSummerRegister_Reward[nItemId]["AddItemLog"])
	end
	
	if nBagSpace==tSummerRegister_Stc["ContinueRegister"]["MaxBagSpace"] then
		Item_AddNewItem(tSummerRegister_Item[nMetempsychosis]["MaxRegisterID"],tSummerRegister_Item["Attr"])
		User_TalkChannel2005(string.format(tSummerRegister_Text[19311]["RewardTip"],tSummerRegister_Item[nMetempsychosis]["MaxRegisterName"]))
		LinkNpcGossipFunc_New(nNpcId,"9-1")
	else
		LinkNpcGossipFunc_New(nNpcId,"6-1")
	end
end

--查看签到次数对白
function SummerRegister_ShowRegister(nNpcId)
	if Task_StcInterval(tSummerRegister_Stc["ContinueRegister"]["EventType"],tSummerRegister_Stc["ContinueRegister"]["DataType"],2,4) then
		Task_SetStatistic(tSummerRegister_Stc["ContinueRegister"]["EventType"],tSummerRegister_Stc["ContinueRegister"]["DataType"],0,1)
	end
	local nSum=Get_UserStatisticValue(tSummerRegister_Stc["SumRegister"]["EventType"],tSummerRegister_Stc["SumRegister"]["DataType"])
	local nContinue=Get_UserStatisticValue(tSummerRegister_Stc["ContinueRegister"]["EventType"],tSummerRegister_Stc["ContinueRegister"]["DataType"])
	tNpcGossip[nNpcId]["Text522"]=string.format(tSummerRegister_Text[nNpcId]["Text522"],nSum)
	tNpcGossip[nNpcId]["Text533"]=string.format(tSummerRegister_Text[nNpcId]["Text533"],nContinue)
	LinkNpcGossipFunc_New(nNpcId,"5-1")
end

function SummerRegister_Online()
	local nEvent = tSummerRegister_Stc[1]["EventType"]
	local nType = tSummerRegister_Stc[1]["DataType"]
	
	-- 不需要补奖励
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		return
	end
	
	local nNewEvent = tSummerRegister_Stc[2]["EventType"]
	local nNewType = tSummerRegister_Stc[2]["DataType"]
	-- 已经领了
	if Task_ChkStcValue(nNewEvent,nNewType,">=",1) then
		return
	end
	
	--记录签到次数
	if Task_ChkStcValue(tSummerRegister_Stc["SumRegister"]["EventType"],tSummerRegister_Stc["SumRegister"]["DataType"],">=",1) and (Get_UserMetempsychosis() >= 3) then
		Task_SetStatistic(nNewEvent,nNewType,1,1)
		Task_SetStcTimestamp(nNewEvent,nNewType,0)
		Item_AddNewItem(tSummerRegister_Item[3]["RegisterID"],tSummerRegister_Item["Attr"])
		User_TalkChannel2005(string.format(tSummerRegister_Text[19311]["RewardTip"],tSummerRegister_Item[3]["RegisterName"]))
		local nItemId = tSummerRegister_Item[3]["RegisterID"]
		if tSummerRegister_Reward[nItemId]["AddItemLog"]~=nil then
			Sys_SaveEmoneyBuy(tSummerRegister_Reward[nItemId]["AddItemLog"])
		end
	end
	
end


---------------------------------------------------------物品模板--------------------------------------------------------------------------------
tItem[3200406]=tItem[3200406] or {}
tItem[3200406]["Function"]=function(nItemId,sItemName)
    SummerRegister_OpenPack(nItemId)
end

tItem[3200407]=tItem[3200406]
tItem[3200408]=tItem[3200406]
tItem[3200409]=tItem[3200406]
tItem[3200410]=tItem[3200406]
tItem[3200411]=tItem[3200406]
tItem[3200412]=tItem[3200406]


-------------------------------------------------------NPC模块-----------------------------------------------------------------------------------

tNpcFace[4182] = 112
--夏日清爽大使
tNpcGossip[19311] = tNpcGossip[19311] or DefaultNpc:new{}
tNpcGossip[19311]["OptionHidden"] = 1


--活动前对白
tNpcGossip[19311]["Text1-1"] = {111,122,133,144}
tNpcGossip[19311]["tOption1-1"] = {111}
tNpcGossip[19311]["Option111"]=tSummerRegister_Text[19311]["Option111"]
tNpcGossip[19311]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tSummerRegister_Const["BeginActivityTime"])
end
 
 
--活动后对白
tNpcGossip[19311]["Text1-2"] = {211,222}
tNpcGossip[19311]["tOption1-2"] = {222}
tNpcGossip[19311]["Option222"]=tSummerRegister_Text[19311]["Option222"]
tNpcGossip[19311]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tSummerRegister_Const["ActivityTime"])
end

--活动中对白
tNpcGossip[19311]["Text1-3"] = {111,122,133,144}
tNpcGossip[19311]["tOption1-3"] = {311,322,333}
tNpcGossip[19311]["Option311"]=tSummerRegister_Text[19311]["Option311"]
tNpcGossip[19311]["Option322"]=tSummerRegister_Text[19311]["Option322"]
tNpcGossip[19311]["Option333"]=tSummerRegister_Text[19311]["Option333"]

--对应的三个方法
tNpcGossip[19311]["OptionFunc311"]="SummerRegister_Register</N>19311"
tNpcGossip[19311]["OptionFunc322"]="SummerRegister_ShowRegister</N>19311"
tNpcGossip[19311]["OptionFunc333"]="LinkNpcGossipFunc_New</N>19311</S>4-1"

--了解奖励对白
tNpcGossip[19311]["Text4-1"] = {411,422,433,444,455,466,477,488,499,400}
tNpcGossip[19311]["tOption4-1"] = {411}
tNpcGossip[19311]["Option411"]=tSummerRegister_Text[19311]["Option411"]

--查看签到次数对白
tNpcGossip[19311]["Text5-1"] = {511,522,533}
tNpcGossip[19311]["tOption5-1"] = {411}

--签到成功，未满勤
tNpcGossip[19311]["Text6-1"] = {611}
tNpcGossip[19311]["tOption6-1"] = {611}
tNpcGossip[19311]["Option611"]=tSummerRegister_Text[19311]["Option611"]

--背包不足
tNpcGossip[19311]["Text7-1"] = {711}
tNpcGossip[19311]["tOption7-1"] = {711}
tNpcGossip[19311]["Option711"]=tSummerRegister_Text[19311]["Option711"]

--签到失败
tNpcGossip[19311]["Text8-1"] = {811}
tNpcGossip[19311]["tOption8-1"] = {411}

--满勤签到
tNpcGossip[19311]["Text9-1"] = {911}
tNpcGossip[19311]["tOption9-1"] = {611}

tNpcGossip[19311]["Text111"] = tSummerRegister_Text[19311]["Text111"]
tNpcGossip[19311]["Text122"] = tSummerRegister_Text[19311]["Text122"]
tNpcGossip[19311]["Text133"] = tSummerRegister_Text[19311]["Text133"]
tNpcGossip[19311]["Text144"] = tSummerRegister_Text[19311]["Text144"]
tNpcGossip[19311]["Text211"] = tSummerRegister_Text[19311]["Text211"]
tNpcGossip[19311]["Text222"] = tSummerRegister_Text[19311]["Text222"]

tNpcGossip[19311]["Text411"] = tSummerRegister_Text[19311]["Text411"]
tNpcGossip[19311]["Text422"] = tSummerRegister_Text[19311]["Text422"]
tNpcGossip[19311]["Text433"] = tSummerRegister_Text[19311]["Text433"]
tNpcGossip[19311]["Text444"] = tSummerRegister_Text[19311]["Text444"]
tNpcGossip[19311]["Text455"] = tSummerRegister_Text[19311]["Text455"]
tNpcGossip[19311]["Text466"] = tSummerRegister_Text[19311]["Text466"]
tNpcGossip[19311]["Text477"] = tSummerRegister_Text[19311]["Text477"]
tNpcGossip[19311]["Text488"] = tSummerRegister_Text[19311]["Text488"]
tNpcGossip[19311]["Text499"] = tSummerRegister_Text[19311]["Text499"]
tNpcGossip[19311]["Text400"] = tSummerRegister_Text[19311]["Text400"]

tNpcGossip[19311]["Text511"] = tSummerRegister_Text[19311]["Text511"]
tNpcGossip[19311]["Text611"] = tSummerRegister_Text[19311]["Text611"]

tNpcGossip[19311]["Text811"] = tSummerRegister_Text[19311]["Text811"]
tNpcGossip[19311]["Text911"] = tSummerRegister_Text[19311]["Text911"]


-- -- 上限触发
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,SummerRegister_Online)


