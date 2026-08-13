------------------------------------------------------------------------------------
--Name：            181015[英文征服][活动脚本]黑五狂欢周促销（11.20-11.30）
--Creator:      杨艳
--Created:     2018/10/22
------------------------------------------------------------------------------------


--命名前缀
--BlackFiveDayAct_

--logid： 12001194



--npc：


--物品
-- 3311164,'50CPsCoupon',
-- 3311165,'120CPsCoupon'
-- 3311166,'300CPsCoupon'
-- 3311167,'1000CPsCoupon',
-- 3311168,'30000CPsCoupon'

--怪物


--STC掩码表：
-- 185 97 背包信掩码


--------------------------------------------------数据部分-----------------------------------------------------
--物品价格和对白显示
local tBlackFiveDayAct_ItemDiaLog = {}
	tBlackFiveDayAct_ItemDiaLog[3311178] = {50,"1 +3 Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311179] = {60,"1 +3 Stone, 1 Bright Star Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311180] = {1299,"1 +6 Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311181] = {1399,"1 +6 Stone, 1 Radiant Star Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311182] = {11599,"1 +8 Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311183] = {12599,"1 +8 Stone, 1 Splendid Star Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311184] = {2599,"1 Big Permanent Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311185] = {2769,"1 Big Permanent Stone, 1 Optional P7 Armor Soul Pack"}
	tBlackFiveDayAct_ItemDiaLog[3311186] = {1199,"1 Super Rare Gem Bag"}
	tBlackFiveDayAct_ItemDiaLog[3311187] = {2399,"1 Tough Drill, 1 Super Rare Gem Bag"}
	tBlackFiveDayAct_ItemDiaLog[3311188] = {1399,"1 Tough Drill"}
	tBlackFiveDayAct_ItemDiaLog[3311189] = {25,"1 Bright Star Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311190] = {39,"2 Bright Star Stones"}
	tBlackFiveDayAct_ItemDiaLog[3311191] = {239,"1 Radiant Star Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311192] = {359,"2 Radiant Star Stones"}
	tBlackFiveDayAct_ItemDiaLog[3311193] = {2299,"1 Splendid Star Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311194] = {3499,"2 Splendid Star Stones"}
	tBlackFiveDayAct_ItemDiaLog[3311195] = {499,"1 DB Scroll"}
	tBlackFiveDayAct_ItemDiaLog[3311196] = {529,"1 DB Scroll, 1 +3 Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311197] = {2300,"300 Small Lottery Tickets"}
	tBlackFiveDayAct_ItemDiaLog[3311198] = {3499,"300 Small Lottery Tickets, 1 +6 Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311199] = {269,"1 Permanent Stone"}
	tBlackFiveDayAct_ItemDiaLog[3311200] = {299,"1 Permanent Stone, 1 Optional P7 Weapon Soul Pack"}
	tBlackFiveDayAct_ItemDiaLog[3311201] = {23399,"1 permanent 1% Blessed Gentle Antelope [Exclusive]"}
	tBlackFiveDayAct_ItemDiaLog[3311202] = {32999,"1 permanent 1% Blessed Gentle Antelope [Exclusive], Butterfly Flower garment"}
	tBlackFiveDayAct_ItemDiaLog[3311203] = {34999,"1 permanent 1% Blessed Blissful Forever Heart garment"}
	tBlackFiveDayAct_ItemDiaLog[3311204] = {105999,"1 permanent 1% Blessed Wings of Romance, Blissful Forever Heart"}
	tBlackFiveDayAct_ItemDiaLog[3311205] = {79999,"1 permanent 1% Blessed Fairy Wings"}
	tBlackFiveDayAct_ItemDiaLog[3311206] = {105999,"1 permanent 1% Blessed Fairy Wings, Blissful Forever Heart"}
	tBlackFiveDayAct_ItemDiaLog[3311207] = {79999,"1 permanent 1% Blessed Siren Song"}
	tBlackFiveDayAct_ItemDiaLog[3311208] = {105999,"1 permanent 1% Blessed Siren Song, Blissful Forever Heart"}

	tBlackFiveDayAct_ItemDiaLog[3311209] = {389,"5000 Chi Points"}
	tBlackFiveDayAct_ItemDiaLog[3311210] = {89,"3000 Potency Points"}
	tBlackFiveDayAct_ItemDiaLog[3311211] = {89,"10 Senior Training Pills (B)"}
	tBlackFiveDayAct_ItemDiaLog[3311212] = {129,"50 Favored Training Pills"}
	tBlackFiveDayAct_ItemDiaLog[3311213] = {129,"50 Special Training Pills (B)"}
	tBlackFiveDayAct_ItemDiaLog[3311214] = {799,"1 Power EXP Ball (B)"}
	tBlackFiveDayAct_ItemDiaLog[3311215] = {189,"3000-min EXP"}
	tBlackFiveDayAct_ItemDiaLog[3311216] = {8999,"100000 Chi Points"}
	tBlackFiveDayAct_ItemDiaLog[3311217] = {15,"1 Dragon Ball (B)"}
	tBlackFiveDayAct_ItemDiaLog[3311218] = {19,"1 +3 Stone (B)"}
	tBlackFiveDayAct_ItemDiaLog[3311219] = {499,"1 +6 Stone (B)"}
	tBlackFiveDayAct_ItemDiaLog[3311220] = {4499,"1 +8 Stone (B)"}
	tBlackFiveDayAct_ItemDiaLog[3311221] = {99,"1 Permanent Stone (B)"}
	tBlackFiveDayAct_ItemDiaLog[3311222] = {999,"1 Big Permanent Stone (B)"}
	tBlackFiveDayAct_ItemDiaLog[3311223] = {499,"1 Tough Drill (B)"}
	tBlackFiveDayAct_ItemDiaLog[3311224] = {199,"1 Star Drill (B)"}
	tBlackFiveDayAct_ItemDiaLog[3311225] = {50,"1 Optional P7 Weapon Soul Pack"}
	tBlackFiveDayAct_ItemDiaLog[3311226] = {50,"1 Optional P7 Armor Soul Pack"}
	tBlackFiveDayAct_ItemDiaLog[3311227] = {3300,"10000 CPs (B)"}
	tBlackFiveDayAct_ItemDiaLog[3311228] = {759,"1 Exemption Token"}

	--代金券
	tBlackFiveDayAct_ItemDiaLog[3311164] = {"50CPsCoupon",50}
	tBlackFiveDayAct_ItemDiaLog[3311165] = {"120CPsCoupon",120}
	tBlackFiveDayAct_ItemDiaLog[3311166] = {"300CPsCoupon",300}
	tBlackFiveDayAct_ItemDiaLog[3311167] = {"1000CPsCoupon",1000}
	tBlackFiveDayAct_ItemDiaLog[3311168] = {"30000CPsCoupon",30000}
	
local tBlackFiveDayAct_CouponType = {}
	tBlackFiveDayAct_CouponType[1] = {0,500}
	tBlackFiveDayAct_CouponType[2] = {500,1000}
	tBlackFiveDayAct_CouponType[3] = {1000,2000}
	tBlackFiveDayAct_CouponType[4] = {2000,5000}
	tBlackFiveDayAct_CouponType[5] = {5000,30000}
	tBlackFiveDayAct_CouponType[6] = {30000}
	
local tBlackFiveDayAct_Data = {}

	tBlackFiveDayAct_Data["Level"] = 80
	tBlackFiveDayAct_Data["Metempsychosis"] = 0
	
	-- 23495	黑五狂欢大使
	tBlackFiveDayAct_Data["Npc"] = {}
	tBlackFiveDayAct_Data["Npc"]["PosX"] = 371
	tBlackFiveDayAct_Data["Npc"]["PosY"] = 438
	tBlackFiveDayAct_Data["Npc"]["Map"] = 1002
	
	tBlackFiveDayAct_Data["RaceCourseHttps"] = "https://coevent.99.com/blackfriday1811/"
	-- 23496,'黑五特惠大使
	
	
	--代金券
	tBlackFiveDayAct_Data["Item"] = {}
	--满500
	tBlackFiveDayAct_Data["Item"][500] = {}
	tBlackFiveDayAct_Data["Item"][500][1] = 3311164
	--满1000
	tBlackFiveDayAct_Data["Item"][1000] = {}
	tBlackFiveDayAct_Data["Item"][1000][1] = 3311165
	tBlackFiveDayAct_Data["Item"][1000][2] = 3311164
	--满2000
	tBlackFiveDayAct_Data["Item"][2000] = {}
	tBlackFiveDayAct_Data["Item"][2000][1] = 3311166
	tBlackFiveDayAct_Data["Item"][2000][2] = 3311165
	tBlackFiveDayAct_Data["Item"][2000][3] = 3311164
	--满5000
	tBlackFiveDayAct_Data["Item"][5000] = {}
	tBlackFiveDayAct_Data["Item"][5000][1] = 3311167
	tBlackFiveDayAct_Data["Item"][5000][2] = 3311166
	tBlackFiveDayAct_Data["Item"][5000][3] = 3311165
	tBlackFiveDayAct_Data["Item"][5000][4] = 3311164
	--满30000
	tBlackFiveDayAct_Data["Item"][30000] = {}
	tBlackFiveDayAct_Data["Item"][30000][1] = 3311168
	tBlackFiveDayAct_Data["Item"][30000][2] = 3311167
	tBlackFiveDayAct_Data["Item"][30000][3] = 3311166
	tBlackFiveDayAct_Data["Item"][30000][4] = 3311165
	tBlackFiveDayAct_Data["Item"][30000][5] = 3311164
	
	
	--抵扣天石数
	tBlackFiveDayAct_Data["CostMoney"] = {}
	tBlackFiveDayAct_Data["CostMoney"][3311164] = 50
	tBlackFiveDayAct_Data["CostMoney"][3311165] = 120
	tBlackFiveDayAct_Data["CostMoney"][3311166] = 300
	tBlackFiveDayAct_Data["CostMoney"][3311167] = 1000
	tBlackFiveDayAct_Data["CostMoney"][3311168] = 30000
	                                   
	
local tBlackFiveDayAct_Award = {}
	-- 黑五狂欢季宝箱	3311177
	tBlackFiveDayAct_Award[3311177] = {}
	tBlackFiveDayAct_Award[3311177][1] = {}
	tBlackFiveDayAct_Award[3311177][1]["NeedEMoney"] = 1000
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"][1]["Id"] = 730006
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"][2]["Id"] = 723694
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"][3] = {}
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"][3]["Id"] = 3009002
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"][3]["Attr"] = "0 3 0 2880 1"
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"][4] = {}
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"][4]["Id"] = 3311167
	tBlackFiveDayAct_Award[3311177][1]["RewardItem"][4]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311177][1]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311177][1]["EmoneyLog"] = "350	21835	0	0	1	"
	tBlackFiveDayAct_Award[3311177][1]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311177][1]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311177][1]["RewardEffect"]["Effect"] = "angelwing"	
	
	tBlackFiveDayAct_Award[3311177][2] = {}
	tBlackFiveDayAct_Award[3311177][2]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311177][2]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311177][2]["RewardItem"][1]["Id"] = 3009001
	tBlackFiveDayAct_Award[3311177][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tBlackFiveDayAct_Award[3311177][2]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311177][2]["RewardItem"][2]["Id"] = 3311359
	tBlackFiveDayAct_Award[3311177][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311177][2]["RewardItem"][3] = {}
	tBlackFiveDayAct_Award[3311177][2]["RewardItem"][3]["Id"] = 3008994
	tBlackFiveDayAct_Award[3311177][2]["RewardItem"][3]["Attr"] = "0 5 3"
	tBlackFiveDayAct_Award[3311177][2]["RewardStrengthValue"] = {}
	tBlackFiveDayAct_Award[3311177][2]["RewardStrengthValue"]["Value"] = 500
	tBlackFiveDayAct_Award[3311177][2]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311177][2]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311177][2]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311177][2]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311178,'+3赤炼石狂欢包',9,98471500
	tBlackFiveDayAct_Award[3311178] = {}
	tBlackFiveDayAct_Award[3311178]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311178]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311178]["DeleteItem"][1]["Id"] = 3311178
	tBlackFiveDayAct_Award[3311178]["NeedEMoney"] = 50
	tBlackFiveDayAct_Award[3311178]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311178]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311178]["RewardItem"][1]["Id"] = 730003
	tBlackFiveDayAct_Award[3311178]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311178]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311178]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311178]["RewardItem"][2]["Attr"] = "0 50"
	tBlackFiveDayAct_Award[3311178]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311178]["EmoneyLog"] = "350	21771	0	0	1	"
	tBlackFiveDayAct_Award[3311178]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311178]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311178]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311179,'赤练星陨石精装包',9,984715
	tBlackFiveDayAct_Award[3311179] = {}
	tBlackFiveDayAct_Award[3311179]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311179]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311179]["DeleteItem"][1]["Id"] = 3311179
	tBlackFiveDayAct_Award[3311179]["NeedEMoney"] = 60
	tBlackFiveDayAct_Award[3311179]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311179]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311179]["RewardItem"][1]["Id"] = 730003
	tBlackFiveDayAct_Award[3311179]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311179]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311179]["RewardItem"][2]["Id"] = 3009001
	tBlackFiveDayAct_Award[3311179]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tBlackFiveDayAct_Award[3311179]["RewardItem"][3] = {}
	tBlackFiveDayAct_Award[3311179]["RewardItem"][3]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311179]["RewardItem"][3]["Attr"] = "0 60"
	tBlackFiveDayAct_Award[3311179]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311179]["EmoneyLog"] = "350	21772	0	0	1	"
	tBlackFiveDayAct_Award[3311179]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311179]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311179]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311180,'+6赤炼石狂欢包',9,98471500
	tBlackFiveDayAct_Award[3311180] = {}
	tBlackFiveDayAct_Award[3311180]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311180]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311180]["DeleteItem"][1]["Id"] = 3311180
	tBlackFiveDayAct_Award[3311180]["NeedEMoney"] = 1299
	tBlackFiveDayAct_Award[3311180]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311180]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311180]["RewardItem"][1]["Id"] = 730006
	tBlackFiveDayAct_Award[3311180]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311180]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311180]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311180]["RewardItem"][2]["Attr"] = "0 1299"
	tBlackFiveDayAct_Award[3311180]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311180]["EmoneyLog"] = "350	21773	0	0	1	"
	tBlackFiveDayAct_Award[3311180]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311180]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311180]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311181,'赤练星陨石豪华包',9,984715
	tBlackFiveDayAct_Award[3311181] = {}
	tBlackFiveDayAct_Award[3311181]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311181]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311181]["DeleteItem"][1]["Id"] = 3311181
	tBlackFiveDayAct_Award[3311181]["NeedEMoney"] = 1399
	tBlackFiveDayAct_Award[3311181]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311181]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311181]["RewardItem"][1]["Id"] = 730006
	tBlackFiveDayAct_Award[3311181]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311181]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311181]["RewardItem"][2]["Id"] = 3009002
	tBlackFiveDayAct_Award[3311181]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tBlackFiveDayAct_Award[3311181]["RewardItem"][3] = {}
	tBlackFiveDayAct_Award[3311181]["RewardItem"][3]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311181]["RewardItem"][3]["Attr"] = "0 1399"
	tBlackFiveDayAct_Award[3311181]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311181]["EmoneyLog"] = "350	21774	0	0	1	"
	tBlackFiveDayAct_Award[3311181]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311181]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311181]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311182,'+8赤炼石狂欢包',9,98471500
	tBlackFiveDayAct_Award[3311182] = {}
	tBlackFiveDayAct_Award[3311182]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311182]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311182]["DeleteItem"][1]["Id"] = 3311182
	tBlackFiveDayAct_Award[3311182]["NeedEMoney"] = 11599
	tBlackFiveDayAct_Award[3311182]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311182]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311182]["RewardItem"][1]["Id"] = 730008
	tBlackFiveDayAct_Award[3311182]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311182]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311182]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311182]["RewardItem"][2]["Attr"] = "0 11599"
	tBlackFiveDayAct_Award[3311182]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311182]["EmoneyLog"] = "350	21775	0	0	1	"
	tBlackFiveDayAct_Award[3311182]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311182]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311182]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311183,'赤练星陨石至尊包',9,984715
	tBlackFiveDayAct_Award[3311183] = {}
	tBlackFiveDayAct_Award[3311183]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311183]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311183]["DeleteItem"][1]["Id"] = 3311183
	tBlackFiveDayAct_Award[3311183]["NeedEMoney"] = 12599
	tBlackFiveDayAct_Award[3311183]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311183]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311183]["RewardItem"][1]["Id"] = 730008
	tBlackFiveDayAct_Award[3311183]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311183]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311183]["RewardItem"][2]["Id"] = 3009003
	tBlackFiveDayAct_Award[3311183]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tBlackFiveDayAct_Award[3311183]["RewardItem"][3] = {}
	tBlackFiveDayAct_Award[3311183]["RewardItem"][3]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311183]["RewardItem"][3]["Attr"] = "0 12599"
	tBlackFiveDayAct_Award[3311183]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311183]["EmoneyLog"] = "350	21776	0	0	1	"
	tBlackFiveDayAct_Award[3311183]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311183]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311183]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311184,'超大固化石狂欢包',9,984715
	tBlackFiveDayAct_Award[3311184] = {}
	tBlackFiveDayAct_Award[3311184]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311184]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311184]["DeleteItem"][1]["Id"] = 3311184
	tBlackFiveDayAct_Award[3311184]["NeedEMoney"] = 2599
	tBlackFiveDayAct_Award[3311184]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311184]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311184]["RewardItem"][1]["Id"] = 723695
	tBlackFiveDayAct_Award[3311184]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311184]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311184]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311184]["RewardItem"][2]["Attr"] = "0 2599"
	tBlackFiveDayAct_Award[3311184]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311184]["EmoneyLog"] = "350	21777	0	0	1	"
	tBlackFiveDayAct_Award[3311184]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311184]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311184]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311185,'超大固化石神魂狂欢包',9,98
	tBlackFiveDayAct_Award[3311185] = {}
	tBlackFiveDayAct_Award[3311185]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311185]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311185]["DeleteItem"][1]["Id"] = 3311185
	tBlackFiveDayAct_Award[3311185]["NeedEMoney"] = 2769
	tBlackFiveDayAct_Award[3311185]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311185]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311185]["RewardItem"][1]["Id"] = 723695
	tBlackFiveDayAct_Award[3311185]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311185]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311185]["RewardItem"][2]["Id"] = 3004248
	tBlackFiveDayAct_Award[3311185]["RewardItem"][2]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311185]["RewardItem"][3] = {}
	tBlackFiveDayAct_Award[3311185]["RewardItem"][3]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311185]["RewardItem"][3]["Attr"] = "0 2769"
	tBlackFiveDayAct_Award[3311185]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311185]["EmoneyLog"] = "350	21778	0	0	1	"
	tBlackFiveDayAct_Award[3311185]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311185]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311185]["RewardEffect"]["Effect"] = "angelwing"	
                                   
-- 3311186,'优质天怒地灵礼包',9,984715
	tBlackFiveDayAct_Award[3311186] = {}
	tBlackFiveDayAct_Award[3311186]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311186]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311186]["DeleteItem"][1]["Id"] = 3311186
	tBlackFiveDayAct_Award[3311186]["NeedEMoney"] = 1199
	tBlackFiveDayAct_Award[3311186]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311186]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311186]["RewardItem"][1]["Id"] = 3006892
	tBlackFiveDayAct_Award[3311186]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311186]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311186]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311186]["RewardItem"][2]["Attr"] = "0 1199"
	tBlackFiveDayAct_Award[3311186]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311186]["EmoneyLog"] = "350	21779	0	0	1	"
	tBlackFiveDayAct_Award[3311186]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311186]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311186]["RewardEffect"]["Effect"] = "angelwing"	
                               
-- 3311187,'金钢坚钻套装狂欢包',9,9847
	tBlackFiveDayAct_Award[3311187] = {}
	tBlackFiveDayAct_Award[3311187]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311187]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311187]["DeleteItem"][1]["Id"] = 3311187
	tBlackFiveDayAct_Award[3311187]["NeedEMoney"] = 2399
	tBlackFiveDayAct_Award[3311187]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311187]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311187]["RewardItem"][1]["Id"] = 3006892
	tBlackFiveDayAct_Award[3311187]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311187]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311187]["RewardItem"][2]["Id"] = 1200005
	tBlackFiveDayAct_Award[3311187]["RewardItem"][2]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311187]["RewardItem"][3] = {}
	tBlackFiveDayAct_Award[3311187]["RewardItem"][3]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311187]["RewardItem"][3]["Attr"] = "0 2399"
	tBlackFiveDayAct_Award[3311187]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311187]["EmoneyLog"] = "350	21780	0	0	1	"
	tBlackFiveDayAct_Award[3311187]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311187]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311187]["RewardEffect"]["Effect"] = "angelwing"	

                                   
-- 3311188,'金钢坚钻狂欢包',9,98471500
	tBlackFiveDayAct_Award[3311188] = {}
	tBlackFiveDayAct_Award[3311188]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311188]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311188]["DeleteItem"][1]["Id"] = 3311188
	tBlackFiveDayAct_Award[3311188]["NeedEMoney"] = 1399
	tBlackFiveDayAct_Award[3311188]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311188]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311188]["RewardItem"][1]["Id"] = 1200005
	tBlackFiveDayAct_Award[3311188]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311188]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311188]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311188]["RewardItem"][2]["Attr"] = "0 1399"
	tBlackFiveDayAct_Award[3311188]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311188]["EmoneyLog"] = "350	21781	0	0	1	"
	tBlackFiveDayAct_Award[3311188]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311188]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311188]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311189,'明亮星陨石狂欢包',9,984715
	tBlackFiveDayAct_Award[3311189] = {}
	tBlackFiveDayAct_Award[3311189]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311189]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311189]["DeleteItem"][1]["Id"] = 3311189
	tBlackFiveDayAct_Award[3311189]["NeedEMoney"] = 25
	tBlackFiveDayAct_Award[3311189]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311189]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311189]["RewardItem"][1]["Id"] = 3009001
	tBlackFiveDayAct_Award[3311189]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBlackFiveDayAct_Award[3311189]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311189]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311189]["RewardItem"][2]["Attr"] = "0 25"
	tBlackFiveDayAct_Award[3311189]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311189]["EmoneyLog"] = "350	21782	0	0	1	"
	tBlackFiveDayAct_Award[3311189]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311189]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311189]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311190,'2颗明亮星陨石狂欢包',9,984	
	tBlackFiveDayAct_Award[3311190] = {}
	tBlackFiveDayAct_Award[3311190]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311190]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311190]["DeleteItem"][1]["Id"] = 3311190
	tBlackFiveDayAct_Award[3311190]["NeedEMoney"] = 39
	tBlackFiveDayAct_Award[3311190]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311190]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311190]["RewardItem"][1]["Id"] = 3009001
	tBlackFiveDayAct_Award[3311190]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tBlackFiveDayAct_Award[3311190]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311190]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311190]["RewardItem"][2]["Attr"] = "0 39"
	tBlackFiveDayAct_Award[3311190]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311190]["EmoneyLog"] = "350	21783	0	0	1	"
	tBlackFiveDayAct_Award[3311190]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311190]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311190]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311191,'晶莹星陨石狂欢包',9,984715
	tBlackFiveDayAct_Award[3311191] = {}
	tBlackFiveDayAct_Award[3311191]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311191]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311191]["DeleteItem"][1]["Id"] = 3311191
	tBlackFiveDayAct_Award[3311191]["NeedEMoney"] = 239
	tBlackFiveDayAct_Award[3311191]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311191]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311191]["RewardItem"][1]["Id"] = 3009002
	tBlackFiveDayAct_Award[3311191]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBlackFiveDayAct_Award[3311191]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311191]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311191]["RewardItem"][2]["Attr"] = "0 239"
	tBlackFiveDayAct_Award[3311191]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311191]["EmoneyLog"] = "350	21784	0	0	1	"
	tBlackFiveDayAct_Award[3311191]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311191]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311191]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311192,'2颗晶莹星陨石狂欢包 ',9,98	
	tBlackFiveDayAct_Award[3311192] = {}
	tBlackFiveDayAct_Award[3311192]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311192]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311192]["DeleteItem"][1]["Id"] = 3311192
	tBlackFiveDayAct_Award[3311192]["NeedEMoney"] = 359
	tBlackFiveDayAct_Award[3311192]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311192]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311192]["RewardItem"][1]["Id"] = 3009002
	tBlackFiveDayAct_Award[3311192]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tBlackFiveDayAct_Award[3311192]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311192]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311192]["RewardItem"][2]["Attr"] = "0 359"
	tBlackFiveDayAct_Award[3311192]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311192]["EmoneyLog"] = "350	21785	0	0	1	"
	tBlackFiveDayAct_Award[3311192]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311192]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311192]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311193,'璀璨星陨石狂欢包',9,984715
	tBlackFiveDayAct_Award[3311193] = {}
	tBlackFiveDayAct_Award[3311193]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311193]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311193]["DeleteItem"][1]["Id"] = 3311193
	tBlackFiveDayAct_Award[3311193]["NeedEMoney"] = 2299
	tBlackFiveDayAct_Award[3311193]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311193]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311193]["RewardItem"][1]["Id"] = 3009003
	tBlackFiveDayAct_Award[3311193]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBlackFiveDayAct_Award[3311193]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311193]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311193]["RewardItem"][2]["Attr"] = "0 2299"
	tBlackFiveDayAct_Award[3311193]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311193]["EmoneyLog"] = "350	21786	0	0	1	"
	tBlackFiveDayAct_Award[3311193]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311193]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311193]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311194,'2颗璀璨星陨石狂欢包 ',9,98
	tBlackFiveDayAct_Award[3311194] = {}
	tBlackFiveDayAct_Award[3311194]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311194]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311194]["DeleteItem"][1]["Id"] = 3311194
	tBlackFiveDayAct_Award[3311194]["NeedEMoney"] = 3499
	tBlackFiveDayAct_Award[3311194]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311194]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311194]["RewardItem"][1]["Id"] = 3009003
	tBlackFiveDayAct_Award[3311194]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tBlackFiveDayAct_Award[3311194]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311194]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311194]["RewardItem"][2]["Attr"] = "0 3499"
	tBlackFiveDayAct_Award[3311194]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311194]["EmoneyLog"] = "350	21787	0	0	1	"
	tBlackFiveDayAct_Award[3311194]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311194]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311194]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311195,'龙珠卷狂欢包',9,98471500,1	
	tBlackFiveDayAct_Award[3311195] = {}
	tBlackFiveDayAct_Award[3311195]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311195]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311195]["DeleteItem"][1]["Id"] = 3311195
	tBlackFiveDayAct_Award[3311195]["NeedEMoney"] = 499
	tBlackFiveDayAct_Award[3311195]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311195]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311195]["RewardItem"][1]["Id"] = 720028
	tBlackFiveDayAct_Award[3311195]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311195]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311195]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311195]["RewardItem"][2]["Attr"] = "0 499"
	tBlackFiveDayAct_Award[3311195]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311195]["EmoneyLog"] = "350	21788	0	0	1	"
	tBlackFiveDayAct_Award[3311195]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311195]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311195]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311196,'龙珠赤炼石狂欢包',9,984715
	tBlackFiveDayAct_Award[3311196] = {}
	tBlackFiveDayAct_Award[3311196]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311196]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311196]["DeleteItem"][1]["Id"] = 3311196
	tBlackFiveDayAct_Award[3311196]["NeedEMoney"] = 529
	tBlackFiveDayAct_Award[3311196]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311196]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311196]["RewardItem"][1]["Id"] = 720028
	tBlackFiveDayAct_Award[3311196]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311196]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311196]["RewardItem"][2]["Id"] = 730003
	tBlackFiveDayAct_Award[3311196]["RewardItem"][2]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311196]["RewardItem"][3] = {}
	tBlackFiveDayAct_Award[3311196]["RewardItem"][3]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311196]["RewardItem"][3]["Attr"] = "0 529"
	tBlackFiveDayAct_Award[3311196]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311196]["EmoneyLog"] = "350	21789	0	0	1	"
	tBlackFiveDayAct_Award[3311196]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311196]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311196]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311197,'100颗桃源灵玉狂欢包',9,984	
	tBlackFiveDayAct_Award[3311197] = {}
	tBlackFiveDayAct_Award[3311197]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311197]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311197]["DeleteItem"][1]["Id"] = 3311197
	tBlackFiveDayAct_Award[3311197]["NeedEMoney"] = 2300
	tBlackFiveDayAct_Award[3311197]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311197]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311197]["RewardItem"][1]["Id"] = 711504
	tBlackFiveDayAct_Award[3311197]["RewardItem"][1]["Attr"] = "0 300 0"
	tBlackFiveDayAct_Award[3311197]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311197]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311197]["RewardItem"][2]["Attr"] = "0 2300"
	tBlackFiveDayAct_Award[3311197]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311197]["EmoneyLog"] = "350	21790	0	0	1	"
	tBlackFiveDayAct_Award[3311197]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311197]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311197]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311198,'桃源灵玉赤炼石狂欢包',9,98
	tBlackFiveDayAct_Award[3311198] = {}
	tBlackFiveDayAct_Award[3311198]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311198]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311198]["DeleteItem"][1]["Id"] = 3311198
	tBlackFiveDayAct_Award[3311198]["NeedEMoney"] = 3499
	tBlackFiveDayAct_Award[3311198]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311198]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311198]["RewardItem"][1]["Id"] = 711504
	tBlackFiveDayAct_Award[3311198]["RewardItem"][1]["Attr"] = "0 300 0"
	tBlackFiveDayAct_Award[3311198]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311198]["RewardItem"][2]["Id"] = 730006
	tBlackFiveDayAct_Award[3311198]["RewardItem"][2]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311198]["RewardItem"][3] = {}
	tBlackFiveDayAct_Award[3311198]["RewardItem"][3]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311198]["RewardItem"][3]["Attr"] = "0 3499"
	tBlackFiveDayAct_Award[3311198]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311198]["EmoneyLog"] = "350	21791	0	0	1	"
	tBlackFiveDayAct_Award[3311198]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311198]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311198]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311199,'固化石狂欢包',9,98471500,1
	tBlackFiveDayAct_Award[3311199] = {}
	tBlackFiveDayAct_Award[3311199]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311199]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311199]["DeleteItem"][1]["Id"] = 3311199
	tBlackFiveDayAct_Award[3311199]["NeedEMoney"] = 269
	tBlackFiveDayAct_Award[3311199]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311199]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311199]["RewardItem"][1]["Id"] = 723694
	tBlackFiveDayAct_Award[3311199]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311199]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311199]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311199]["RewardItem"][2]["Attr"] = "0 269"
	tBlackFiveDayAct_Award[3311199]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311199]["EmoneyLog"] = "350	21792	0	0	1	"
	tBlackFiveDayAct_Award[3311199]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311199]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311199]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311200,'固化石神魂狂欢包',9,984715
	tBlackFiveDayAct_Award[3311200] = {}
	tBlackFiveDayAct_Award[3311200]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311200]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311200]["DeleteItem"][1]["Id"] = 3311200
	tBlackFiveDayAct_Award[3311200]["NeedEMoney"] = 299
	tBlackFiveDayAct_Award[3311200]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311200]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311200]["RewardItem"][1]["Id"] = 723694
	tBlackFiveDayAct_Award[3311200]["RewardItem"][1]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311200]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311200]["RewardItem"][2]["Id"] = 3004247
	tBlackFiveDayAct_Award[3311200]["RewardItem"][2]["Attr"] = "0 1 0"
	tBlackFiveDayAct_Award[3311200]["RewardItem"][3] = {}
	tBlackFiveDayAct_Award[3311200]["RewardItem"][3]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311200]["RewardItem"][3]["Attr"] = "0 299"
	tBlackFiveDayAct_Award[3311200]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311200]["EmoneyLog"] = "350	21793	0	0	1	"
	tBlackFiveDayAct_Award[3311200]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311200]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311200]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311201,'至善神羚【羊年绝版】狂欢包
	tBlackFiveDayAct_Award[3311201] = {}
	tBlackFiveDayAct_Award[3311201]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311201]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311201]["DeleteItem"][1]["Id"] = 3311201
	tBlackFiveDayAct_Award[3311201]["NeedEMoney"] = 23399
	tBlackFiveDayAct_Award[3311201]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311201]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311201]["RewardItem"][1]["Id"] = 200524
	tBlackFiveDayAct_Award[3311201]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBlackFiveDayAct_Award[3311201]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311201]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311201]["RewardItem"][2]["Attr"] = "0 23399"
	tBlackFiveDayAct_Award[3311201]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311201]["EmoneyLog"] = "350	21794	0	0	1	"
	tBlackFiveDayAct_Award[3311201]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311201]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311201]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311202,'坐骑时装狂欢包',9,98471500
	tBlackFiveDayAct_Award[3311202] = {}
	tBlackFiveDayAct_Award[3311202]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311202]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311202]["DeleteItem"][1]["Id"] = 3311202
	tBlackFiveDayAct_Award[3311202]["NeedEMoney"] = 32999
	tBlackFiveDayAct_Award[3311202]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311202]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311202]["RewardItem"][1]["Id"] = 200524
	tBlackFiveDayAct_Award[3311202]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBlackFiveDayAct_Award[3311202]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311202]["RewardItem"][2]["Id"] = 193695
	tBlackFiveDayAct_Award[3311202]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 1"
	tBlackFiveDayAct_Award[3311202]["RewardItem"][3] = {}
	tBlackFiveDayAct_Award[3311202]["RewardItem"][3]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311202]["RewardItem"][3]["Attr"] = "0 32999"
	tBlackFiveDayAct_Award[3311202]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311202]["EmoneyLog"] = "350	21795	0	0	1	"
	tBlackFiveDayAct_Award[3311202]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311202]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311202]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311203,'BlissfulForeverHeart狂欢包
	tBlackFiveDayAct_Award[3311203] = {}
	tBlackFiveDayAct_Award[3311203]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311203]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311203]["DeleteItem"][1]["Id"] = 3311203
	tBlackFiveDayAct_Award[3311203]["NeedEMoney"] = 34999
	tBlackFiveDayAct_Award[3311203]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311203]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311203]["RewardItem"][1]["Id"] = 195045
	tBlackFiveDayAct_Award[3311203]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBlackFiveDayAct_Award[3311203]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311203]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311203]["RewardItem"][2]["Attr"] = "0 34999"
	tBlackFiveDayAct_Award[3311203]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311203]["EmoneyLog"] = "350	21796	0	0	1	"
	tBlackFiveDayAct_Award[3311203]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311203]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311203]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311204,'翅膀时装精装包',9,98471500
	tBlackFiveDayAct_Award[3311204] = {}
	tBlackFiveDayAct_Award[3311204]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311204]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311204]["DeleteItem"][1]["Id"] = 3311204
	tBlackFiveDayAct_Award[3311204]["NeedEMoney"] = 105999
	tBlackFiveDayAct_Award[3311204]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311204]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311204]["RewardItem"][1]["Id"] = 195045
	tBlackFiveDayAct_Award[3311204]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBlackFiveDayAct_Award[3311204]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311204]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311204]["RewardItem"][2]["Attr"] = "0 105999"
	tBlackFiveDayAct_Award[3311204]["RewardWing"] = {}
	tBlackFiveDayAct_Award[3311204]["RewardWing"]["TitleType"] = 6012
	tBlackFiveDayAct_Award[3311204]["RewardWing"]["TitleId"] = 6012
	tBlackFiveDayAct_Award[3311204]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311204]["EmoneyLog"] = "350	21797	0	0	1	"
	tBlackFiveDayAct_Award[3311204]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311204]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311204]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311205,'FairyWings狂欢包',9,984715
	tBlackFiveDayAct_Award[3311205] = {}
	tBlackFiveDayAct_Award[3311205]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311205]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311205]["DeleteItem"][1]["Id"] = 3311205
	tBlackFiveDayAct_Award[3311205]["NeedEMoney"] = 79999
	tBlackFiveDayAct_Award[3311205]["RewardWing"] = {}
	tBlackFiveDayAct_Award[3311205]["RewardWing"]["TitleType"] = 6005
	tBlackFiveDayAct_Award[3311205]["RewardWing"]["TitleId"] = 6005
	tBlackFiveDayAct_Award[3311205]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311205]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311205]["RewardItem"][1]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311205]["RewardItem"][1]["Attr"] = "0 79999"
	tBlackFiveDayAct_Award[3311205]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311205]["EmoneyLog"] = "350	21798	0	0	1	"
	tBlackFiveDayAct_Award[3311205]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311205]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311205]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311206,'翅膀时装典藏包',9,98471500
	tBlackFiveDayAct_Award[3311206] = {}
	tBlackFiveDayAct_Award[3311206]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311206]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311206]["DeleteItem"][1]["Id"] = 3311206
	tBlackFiveDayAct_Award[3311206]["NeedEMoney"] = 105999
	tBlackFiveDayAct_Award[3311206]["RewardWing"] = {}
	tBlackFiveDayAct_Award[3311206]["RewardWing"]["TitleType"] = 6005
	tBlackFiveDayAct_Award[3311206]["RewardWing"]["TitleId"] = 6005
	tBlackFiveDayAct_Award[3311206]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311206]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311206]["RewardItem"][1]["Id"] = 195045
	tBlackFiveDayAct_Award[3311206]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBlackFiveDayAct_Award[3311206]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311206]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311206]["RewardItem"][2]["Attr"] = "0 105999"
	tBlackFiveDayAct_Award[3311206]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311206]["EmoneyLog"] = "350	21799	0	0	1	"
	tBlackFiveDayAct_Award[3311206]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311206]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311206]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311207,'SirenSong狂欢包',9,9847150
	tBlackFiveDayAct_Award[3311207] = {}
	tBlackFiveDayAct_Award[3311207]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311207]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311207]["DeleteItem"][1]["Id"] = 3311207
	tBlackFiveDayAct_Award[3311207]["NeedEMoney"] = 79999
	tBlackFiveDayAct_Award[3311207]["RewardWing"] = {}
	tBlackFiveDayAct_Award[3311207]["RewardWing"]["TitleType"] = 6017
	tBlackFiveDayAct_Award[3311207]["RewardWing"]["TitleId"] = 6017
	tBlackFiveDayAct_Award[3311207]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311207]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311207]["RewardItem"][1]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311207]["RewardItem"][1]["Attr"] = "0 79999"
	tBlackFiveDayAct_Award[3311207]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311207]["EmoneyLog"] = "350	21800	0	0	1	"
	tBlackFiveDayAct_Award[3311207]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311207]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311207]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311208,'翅膀时装狂欢包',9,98471500
	tBlackFiveDayAct_Award[3311208] = {}
	tBlackFiveDayAct_Award[3311208]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311208]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311208]["DeleteItem"][1]["Id"] = 3311208
	tBlackFiveDayAct_Award[3311208]["NeedEMoney"] = 105999
	tBlackFiveDayAct_Award[3311208]["RewardWing"] = {}
	tBlackFiveDayAct_Award[3311208]["RewardWing"]["TitleType"] = 6017
	tBlackFiveDayAct_Award[3311208]["RewardWing"]["TitleId"] = 6017
	tBlackFiveDayAct_Award[3311208]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311208]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311208]["RewardItem"][1]["Id"] = 195045
	tBlackFiveDayAct_Award[3311208]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tBlackFiveDayAct_Award[3311208]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311208]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311208]["RewardItem"][2]["Attr"] = "0 105999"
	tBlackFiveDayAct_Award[3311208]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311208]["EmoneyLog"] = "350	21801	0	0	1	"
	tBlackFiveDayAct_Award[3311208]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311208]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311208]["RewardEffect"]["Effect"] = "angelwing"	

-- #赠品商城礼包
-- 3311209,'5000气力值狂欢包',9,9
	tBlackFiveDayAct_Award[3311209] = {}
	tBlackFiveDayAct_Award[3311209]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311209]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311209]["DeleteItem"][1]["Id"] = 3311209
	tBlackFiveDayAct_Award[3311209]["NeedEMoney"] = 389
	tBlackFiveDayAct_Award[3311209]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311209]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311209]["RewardItem"][1]["Id"] = 3304200
	tBlackFiveDayAct_Award[3311209]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311209]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311209]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311209]["RewardItem"][2]["Attr"] = "0 389"
	tBlackFiveDayAct_Award[3311209]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311209]["EmoneyLog"] = "350	21802	0	0	1	"
	tBlackFiveDayAct_Award[3311209]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311209]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311209]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311210,'3000修为值狂欢包',9,9
	tBlackFiveDayAct_Award[3311210] = {}
	tBlackFiveDayAct_Award[3311210]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311210]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311210]["DeleteItem"][1]["Id"] = 3311210
	tBlackFiveDayAct_Award[3311210]["NeedEMoney"] = 89
	tBlackFiveDayAct_Award[3311210]["RewardRepairValue"] = {}
	tBlackFiveDayAct_Award[3311210]["RewardRepairValue"]["Value"] = 3000
	tBlackFiveDayAct_Award[3311210]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311210]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311210]["RewardItem"][1]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311210]["RewardItem"][1]["Attr"] = "0 89"
	tBlackFiveDayAct_Award[3311210]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311210]["EmoneyLog"] = "350	21804	0	0	1	"
	tBlackFiveDayAct_Award[3311210]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311210]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311210]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311211,'究极通神丹狂欢包',9,9
	tBlackFiveDayAct_Award[3311211] = {}
	tBlackFiveDayAct_Award[3311211]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311211]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311211]["DeleteItem"][1]["Id"] = 3311211
	tBlackFiveDayAct_Award[3311211]["NeedEMoney"] = 89
	tBlackFiveDayAct_Award[3311211]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311211]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311211]["RewardItem"][1]["Id"] = 3008309
	tBlackFiveDayAct_Award[3311211]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311211]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311211]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311211]["RewardItem"][2]["Attr"] = "0 89"
	tBlackFiveDayAct_Award[3311211]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311211]["EmoneyLog"] = "350	21805	0	0	1	"
	tBlackFiveDayAct_Award[3311211]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311211]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311211]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311212,'免费强炼丹狂欢包',9,9
	tBlackFiveDayAct_Award[3311212] = {}
	tBlackFiveDayAct_Award[3311212]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311212]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311212]["DeleteItem"][1]["Id"] = 3311212
	tBlackFiveDayAct_Award[3311212]["NeedEMoney"] = 129
	tBlackFiveDayAct_Award[3311212]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311212]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311212]["RewardItem"][1]["Id"] = 3304006
	tBlackFiveDayAct_Award[3311212]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311212]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311212]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311212]["RewardItem"][2]["Attr"] = "0 129"
	tBlackFiveDayAct_Award[3311212]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311212]["EmoneyLog"] = "350	21806	0	0	1	"
	tBlackFiveDayAct_Award[3311212]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311212]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311212]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311213,'通神丹狂欢包',9,98471
	tBlackFiveDayAct_Award[3311213] = {}
	tBlackFiveDayAct_Award[3311213]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311213]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311213]["DeleteItem"][1]["Id"] = 3311213
	tBlackFiveDayAct_Award[3311213]["NeedEMoney"] = 129
	tBlackFiveDayAct_Award[3311213]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311213]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311213]["RewardItem"][1]["Id"] = 3303400
	tBlackFiveDayAct_Award[3311213]["RewardItem"][1]["Attr"] = "0 5 3"
	tBlackFiveDayAct_Award[3311213]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311213]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311213]["RewardItem"][2]["Attr"] = "0 129"
	tBlackFiveDayAct_Award[3311213]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311213]["EmoneyLog"] = "350	21807	0	0	1	"
	tBlackFiveDayAct_Award[3311213]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311213]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311213]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311214,'九转聚神丹狂欢包',9,9	
	tBlackFiveDayAct_Award[3311214] = {}
	tBlackFiveDayAct_Award[3311214]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311214]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311214]["DeleteItem"][1]["Id"] = 3311214
	tBlackFiveDayAct_Award[3311214]["NeedEMoney"] = 799
	tBlackFiveDayAct_Award[3311214]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311214]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311214]["RewardItem"][1]["Id"] = 723744
	tBlackFiveDayAct_Award[3311214]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311214]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311214]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311214]["RewardItem"][2]["Attr"] = "0 799"
	tBlackFiveDayAct_Award[3311214]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311214]["EmoneyLog"] = "350	21808	0	0	1	"
	tBlackFiveDayAct_Award[3311214]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311214]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311214]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311215,'3000分钟经验狂欢包',9
	tBlackFiveDayAct_Award[3311215] = {}
	tBlackFiveDayAct_Award[3311215]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311215]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311215]["DeleteItem"][1]["Id"] = 3311215
	tBlackFiveDayAct_Award[3311215]["NeedEMoney"] = 189
	tBlackFiveDayAct_Award[3311215]["RewardExpTime"] = {}
	tBlackFiveDayAct_Award[3311215]["RewardExpTime"]["Value"] = 3000
	-- tBlackFiveDayAct_Award[3311215]["FullIndex"] = "RewardCultivation"
	-- tBlackFiveDayAct_Award[3311215]["FullValue"] = 15
	tBlackFiveDayAct_Award[3311215]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311215]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311215]["RewardItem"][1]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311215]["RewardItem"][1]["Attr"] = "0 189"
	tBlackFiveDayAct_Award[3311215]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311215]["EmoneyLog"] = "350	21809	0	0	1	"
	tBlackFiveDayAct_Award[3311215]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311215]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311215]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311216,'100000气力值狂欢包',9
	tBlackFiveDayAct_Award[3311216] = {}
	tBlackFiveDayAct_Award[3311216]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311216]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311216]["DeleteItem"][1]["Id"] = 3311216
	tBlackFiveDayAct_Award[3311216]["NeedEMoney"] = 8999
	tBlackFiveDayAct_Award[3311216]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311216]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311216]["RewardItem"][1]["Id"] = 3303242
	tBlackFiveDayAct_Award[3311216]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311216]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311216]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311216]["RewardItem"][2]["Attr"] = "0 8999"
	tBlackFiveDayAct_Award[3311216]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311216]["EmoneyLog"] = "350	21810	0	0	1	"
	tBlackFiveDayAct_Award[3311216]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311216]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311216]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311217,'龙珠（赠）狂欢包',9,9
	tBlackFiveDayAct_Award[3311217] = {}
	tBlackFiveDayAct_Award[3311217]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311217]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311217]["DeleteItem"][1]["Id"] = 3311217
	tBlackFiveDayAct_Award[3311217]["NeedEMoney"] = 15
	tBlackFiveDayAct_Award[3311217]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311217]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311217]["RewardItem"][1]["Id"] = 3301808
	tBlackFiveDayAct_Award[3311217]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311217]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311217]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311217]["RewardItem"][2]["Attr"] = "0 15"
	tBlackFiveDayAct_Award[3311217]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311217]["EmoneyLog"] = "350	21811	0	0	1	"
	tBlackFiveDayAct_Award[3311217]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311217]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311217]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311218,'+3赤炼石（赠）狂欢包'
	tBlackFiveDayAct_Award[3311218] = {}
	tBlackFiveDayAct_Award[3311218]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311218]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311218]["DeleteItem"][1]["Id"] = 3311218
	tBlackFiveDayAct_Award[3311218]["NeedEMoney"] = 19
	tBlackFiveDayAct_Award[3311218]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311218]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311218]["RewardItem"][1]["Id"] = 3301807
	tBlackFiveDayAct_Award[3311218]["RewardItem"][1]["Attr"] = "0 1"
	tBlackFiveDayAct_Award[3311218]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311218]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311218]["RewardItem"][2]["Attr"] = "0 19"
	tBlackFiveDayAct_Award[3311218]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311218]["EmoneyLog"] = "350	21812	0	0	1	"
	tBlackFiveDayAct_Award[3311218]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311218]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311218]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311219,'+6赤炼石（赠）狂欢包'
	tBlackFiveDayAct_Award[3311219] = {}
	tBlackFiveDayAct_Award[3311219]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311219]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311219]["DeleteItem"][1]["Id"] = 3311219
	tBlackFiveDayAct_Award[3311219]["NeedEMoney"] = 499
	tBlackFiveDayAct_Award[3311219]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311219]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311219]["RewardItem"][1]["Id"] = 3301812
	tBlackFiveDayAct_Award[3311219]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311219]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311219]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311219]["RewardItem"][2]["Attr"] = "0 499"
	tBlackFiveDayAct_Award[3311219]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311219]["EmoneyLog"] = "350	21813	0	0	1	"
	tBlackFiveDayAct_Award[3311219]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311219]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311219]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311220,'+8赤炼石（赠）狂欢包'
	tBlackFiveDayAct_Award[3311220] = {}
	tBlackFiveDayAct_Award[3311220]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311220]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311220]["DeleteItem"][1]["Id"] = 3311220
	tBlackFiveDayAct_Award[3311220]["NeedEMoney"] = 4499
	tBlackFiveDayAct_Award[3311220]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311220]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311220]["RewardItem"][1]["Id"] = 730008
	tBlackFiveDayAct_Award[3311220]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311220]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311220]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311220]["RewardItem"][2]["Attr"] = "0 4499"
	tBlackFiveDayAct_Award[3311220]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311220]["EmoneyLog"] = "350	21814	0	0	1	"
	tBlackFiveDayAct_Award[3311220]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311220]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311220]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311221,'固化石（赠）狂欢包',9
	tBlackFiveDayAct_Award[3311221] = {}
	tBlackFiveDayAct_Award[3311221]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311221]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311221]["DeleteItem"][1]["Id"] = 3311221
	tBlackFiveDayAct_Award[3311221]["NeedEMoney"] = 99
	tBlackFiveDayAct_Award[3311221]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311221]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311221]["RewardItem"][1]["Id"] = 3301809
	tBlackFiveDayAct_Award[3311221]["RewardItem"][1]["Attr"] = "0 1"
	tBlackFiveDayAct_Award[3311221]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311221]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311221]["RewardItem"][2]["Attr"] = "0 99"
	tBlackFiveDayAct_Award[3311221]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311221]["EmoneyLog"] = "350	21815	0	0	1	"
	tBlackFiveDayAct_Award[3311221]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311221]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311221]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311222,'超大固化石（赠）狂欢包
	tBlackFiveDayAct_Award[3311222] = {}
	tBlackFiveDayAct_Award[3311222]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311222]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311222]["DeleteItem"][1]["Id"] = 3311222
	tBlackFiveDayAct_Award[3311222]["NeedEMoney"] = 999
	tBlackFiveDayAct_Award[3311222]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311222]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311222]["RewardItem"][1]["Id"] = 723695
	tBlackFiveDayAct_Award[3311222]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311222]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311222]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311222]["RewardItem"][2]["Attr"] = "0 999"
	tBlackFiveDayAct_Award[3311222]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311222]["EmoneyLog"] = "350	21816	0	0	1	"
	tBlackFiveDayAct_Award[3311222]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311222]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311222]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311223,'金钢坚钻（赠）狂欢包'
	tBlackFiveDayAct_Award[3311223] = {}
	tBlackFiveDayAct_Award[3311223]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311223]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311223]["DeleteItem"][1]["Id"] = 3311223
	tBlackFiveDayAct_Award[3311223]["NeedEMoney"] = 499
	tBlackFiveDayAct_Award[3311223]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311223]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311223]["RewardItem"][1]["Id"] = 3301811
	tBlackFiveDayAct_Award[3311223]["RewardItem"][1]["Attr"] = "0 1"
	tBlackFiveDayAct_Award[3311223]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311223]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311223]["RewardItem"][2]["Attr"] = "0 499"
	tBlackFiveDayAct_Award[3311223]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311223]["EmoneyLog"] = "350	21817	0	0	1	"
	tBlackFiveDayAct_Award[3311223]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311223]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311223]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311224,'七星宝钻（赠）狂欢包'
	tBlackFiveDayAct_Award[3311224] = {}
	tBlackFiveDayAct_Award[3311224]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311224]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311224]["DeleteItem"][1]["Id"] = 3311224
	tBlackFiveDayAct_Award[3311224]["NeedEMoney"] = 199
	tBlackFiveDayAct_Award[3311224]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311224]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311224]["RewardItem"][1]["Id"] = 3301819
	tBlackFiveDayAct_Award[3311224]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311224]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311224]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311224]["RewardItem"][2]["Attr"] = "0 199"
	tBlackFiveDayAct_Award[3311224]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311224]["EmoneyLog"] = "350	21818	0	0	1	"
	tBlackFiveDayAct_Award[3311224]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311224]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311224]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311225,'7阶武器神魂可选狂欢包	
	tBlackFiveDayAct_Award[3311225] = {}
	tBlackFiveDayAct_Award[3311225]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311225]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311225]["DeleteItem"][1]["Id"] = 3311225
	tBlackFiveDayAct_Award[3311225]["NeedEMoney"] = 50
	tBlackFiveDayAct_Award[3311225]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311225]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311225]["RewardItem"][1]["Id"] = 3303657
	tBlackFiveDayAct_Award[3311225]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311225]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311225]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311225]["RewardItem"][2]["Attr"] = "0 50"
	tBlackFiveDayAct_Award[3311225]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311225]["EmoneyLog"] = "350	21819	0	0	1	"
	tBlackFiveDayAct_Award[3311225]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311225]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311225]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311226,'7阶防具神魂可选狂欢包
	tBlackFiveDayAct_Award[3311226] = {}
	tBlackFiveDayAct_Award[3311226]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311226]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311226]["DeleteItem"][1]["Id"] = 3311226
	tBlackFiveDayAct_Award[3311226]["NeedEMoney"] = 50
	tBlackFiveDayAct_Award[3311226]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311226]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311226]["RewardItem"][1]["Id"] = 3303658
	tBlackFiveDayAct_Award[3311226]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311226]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311226]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311226]["RewardItem"][2]["Attr"] = "0 50"
	tBlackFiveDayAct_Award[3311226]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311226]["EmoneyLog"] = "350	21820	0	0	1	"
	tBlackFiveDayAct_Award[3311226]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311226]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311226]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311227,'10000天石（赠）狂欢包
	tBlackFiveDayAct_Award[3311227] = {}
	tBlackFiveDayAct_Award[3311227]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311227]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311227]["DeleteItem"][1]["Id"] = 3311227
	tBlackFiveDayAct_Award[3311227]["NeedEMoney"] = 3300
	tBlackFiveDayAct_Award[3311227]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311227]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311227]["RewardItem"][1]["Id"] = 3306429
	tBlackFiveDayAct_Award[3311227]["RewardItem"][1]["Attr"] = "0 1"
	tBlackFiveDayAct_Award[3311227]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311227]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311227]["RewardItem"][2]["Attr"] = "0 3300"
	tBlackFiveDayAct_Award[3311227]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311227]["EmoneyLog"] = "350	21821	0	0	1	"
	tBlackFiveDayAct_Award[3311227]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311227]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311227]["RewardEffect"]["Effect"] = "angelwing"	
	
-- 3311228,'免试金牌狂欢包',9,984
	tBlackFiveDayAct_Award[3311228] = {}
	tBlackFiveDayAct_Award[3311228]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311228]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311228]["DeleteItem"][1]["Id"] = 3311228
	tBlackFiveDayAct_Award[3311228]["NeedEMoney"] = 759
	tBlackFiveDayAct_Award[3311228]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311228]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311228]["RewardItem"][1]["Id"] = 3309013
	tBlackFiveDayAct_Award[3311228]["RewardItem"][1]["Attr"] = "0 1"
	tBlackFiveDayAct_Award[3311228]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311228]["RewardItem"][2]["Id"] = 3311176
	tBlackFiveDayAct_Award[3311228]["RewardItem"][2]["Attr"] = "0 759"
	tBlackFiveDayAct_Award[3311228]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311228]["EmoneyLog"] = "350	21822	0	0	1	"
	tBlackFiveDayAct_Award[3311228]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311228]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311228]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- #排行榜礼包
	-- 3311288,'黑五钻石宝箱
	tBlackFiveDayAct_Award[3311288] = {}
	tBlackFiveDayAct_Award[3311288]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311288]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311288]["DeleteItem"][1]["Id"] = 3311288
	tBlackFiveDayAct_Award[3311288]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311288]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311288]["RewardItem"][1]["Id"] = 3311292
	tBlackFiveDayAct_Award[3311288]["RewardItem"][1]["Attr"] = "0 1"
	tBlackFiveDayAct_Award[3311288]["RewardItem"][2] = {}
	tBlackFiveDayAct_Award[3311288]["RewardItem"][2]["Id"] = 200575
	tBlackFiveDayAct_Award[3311288]["RewardItem"][2]["Attr"] = "0 1 3 129600 1 0 0 1"
	tBlackFiveDayAct_Award[3311288]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311288]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311288]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311288]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 3311291,'黑五青铜宝箱
	tBlackFiveDayAct_Award[3311291] = {}
	tBlackFiveDayAct_Award[3311291]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311291]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311291]["DeleteItem"][1]["Id"] = 3311291
	tBlackFiveDayAct_Award[3311291]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311291]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311291]["RewardItem"][1]["Id"] = 3306429
	tBlackFiveDayAct_Award[3311291]["RewardItem"][1]["Attr"] = "0 1"
	tBlackFiveDayAct_Award[3311291]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311291]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311291]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311291]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- (3311359,'七星宝钻碎片
	tBlackFiveDayAct_Award[3311359] = {}
	tBlackFiveDayAct_Award[3311359]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311359]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311359]["RewardItem"][1]["Id"] = 1200006
	tBlackFiveDayAct_Award[3311359]["RewardItem"][1]["Attr"] = "0 1 3"
	tBlackFiveDayAct_Award[3311359]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311359]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311359]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311359]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 3311446,'BrightPuepleRomance(B)Pack
	tBlackFiveDayAct_Award[3311446] = {}
	tBlackFiveDayAct_Award[3311446]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311446]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311446]["DeleteItem"][1]["Id"] = 3311446
	tBlackFiveDayAct_Award[3311446]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311446]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311446]["RewardItem"][1]["Id"] = 194875
	tBlackFiveDayAct_Award[3311446]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBlackFiveDayAct_Award[3311446]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311446]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311446]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311446]["RewardEffect"]["Effect"] = "angelwing"	
	
	-- 3311447,'PureLotus(B)Pack',9,984715
	tBlackFiveDayAct_Award[3311447] = {}
	tBlackFiveDayAct_Award[3311447]["DeleteItem"] = {}
	tBlackFiveDayAct_Award[3311447]["DeleteItem"][1] = {}
	tBlackFiveDayAct_Award[3311447]["DeleteItem"][1]["Id"] = 3311447
	tBlackFiveDayAct_Award[3311447]["RewardItem"] = {}
	tBlackFiveDayAct_Award[3311447]["RewardItem"][1] = {}
	tBlackFiveDayAct_Award[3311447]["RewardItem"][1]["Id"] = 200572
	tBlackFiveDayAct_Award[3311447]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tBlackFiveDayAct_Award[3311447]["LogId"] = 12001194
	tBlackFiveDayAct_Award[3311447]["RewardEffect"] = {}
	tBlackFiveDayAct_Award[3311447]["RewardEffect"]["SzObj"] = "self"
	tBlackFiveDayAct_Award[3311447]["RewardEffect"]["Effect"] = "angelwing"	
	
--随机奖励
local	tBlackFiveDayAct_RunReward = {}

-- 3311289,'黑五黄金宝箱
	tBlackFiveDayAct_RunReward[3311289] = {}
	tBlackFiveDayAct_RunReward[3311289]["ItemChanceSum"] = 10000
	
	-- 练气+1抽奖包：50%机会获得练气+1，50%机会获得3W赠品天石
	tBlackFiveDayAct_RunReward[3311289][1] = {}
	tBlackFiveDayAct_RunReward[3311289][1]["RandomItemChanceType"] = 2
	tBlackFiveDayAct_RunReward[3311289][1]["ItemChance"] = 5000
	tBlackFiveDayAct_RunReward[3311289][1]["RewardItem"] = {}
	tBlackFiveDayAct_RunReward[3311289][1]["RewardItem"][1] = {}
	tBlackFiveDayAct_RunReward[3311289][1]["RewardItem"][1]["Id"] = 3311292
	tBlackFiveDayAct_RunReward[3311289][1]["RewardItem"][1]["Attr"] = "0 1"
	tBlackFiveDayAct_RunReward[3311289][1]["LogId"] = 12001194
		
	tBlackFiveDayAct_RunReward[3311289][2] = {}
	tBlackFiveDayAct_RunReward[3311289][2]["RandomItemChanceType"] = 2
	tBlackFiveDayAct_RunReward[3311289][2]["ItemChance"] = 5000
	tBlackFiveDayAct_RunReward[3311289][2]["RewardEMoneyMono"] = {}
	tBlackFiveDayAct_RunReward[3311289][2]["RewardEMoneyMono"]["Value"] = 30000
	tBlackFiveDayAct_RunReward[3311289][2]["LogId"] = 12001194
		
-- 3311290,'黑五白银宝箱
	tBlackFiveDayAct_RunReward[3311290] = {}
	tBlackFiveDayAct_RunReward[3311290]["ItemChanceSum"] = 10000
	
	-- 练气+1抽奖包：50%机会获得练气+1，50%机会获得3W赠品天石
	tBlackFiveDayAct_RunReward[3311290][1] = {}
	tBlackFiveDayAct_RunReward[3311290][1]["RandomItemChanceType"] = 2
	tBlackFiveDayAct_RunReward[3311290][1]["ItemChance"] = 5000
	tBlackFiveDayAct_RunReward[3311290][1]["RewardItem"] = {}
	tBlackFiveDayAct_RunReward[3311290][1]["RewardItem"][1] = {}
	tBlackFiveDayAct_RunReward[3311290][1]["RewardItem"][1]["Id"] = 3311292
	tBlackFiveDayAct_RunReward[3311290][1]["RewardItem"][1]["Attr"] = "0 1"
	tBlackFiveDayAct_RunReward[3311290][1]["LogId"] = 12001194
		                       
	tBlackFiveDayAct_RunReward[3311290][2] = {}
	tBlackFiveDayAct_RunReward[3311290][2]["RandomItemChanceType"] = 2
	tBlackFiveDayAct_RunReward[3311290][2]["ItemChance"] = 5000
	tBlackFiveDayAct_RunReward[3311290][2]["RewardEMoneyMono"] = {}
	tBlackFiveDayAct_RunReward[3311290][2]["RewardEMoneyMono"]["Value"] = 30000
	tBlackFiveDayAct_RunReward[3311290][2]["LogId"] = 12001194
			
local tBlackFiveDayAct_Log = {}
	tBlackFiveDayAct_Log["DelAllItem"] = "0,0,%d,%d,12001194,2,0,0"	
	tBlackFiveDayAct_Log["DelItem"] = "0,0,%d,1,12001194,2,0,0"	
	tBlackFiveDayAct_Log["Emoney"] = "0,0,2,%d,12001194,2,0,0"	
	tBlackFiveDayAct_Log["ItemUse"] = {}
	tBlackFiveDayAct_Log["ItemUse"][3311164] = "350	21907	0	0	1	"
	tBlackFiveDayAct_Log["ItemUse"][3311165] = "350	21908	0	0	1	"
	tBlackFiveDayAct_Log["ItemUse"][3311166] = "350	21909	0	0	1	"
	tBlackFiveDayAct_Log["ItemUse"][3311167] = "350	21910	0	0	1	"
	tBlackFiveDayAct_Log["ItemUse"][3311168] = "350	21911	0	0	1	"

local tBlackFiveDayAct_Stc = {}
	tBlackFiveDayAct_Stc["EventType"] = {}
	tBlackFiveDayAct_Stc["DataType"] = {}
	
	--记录黑五狂欢季宝箱 打开次数 是否打开
	tBlackFiveDayAct_Stc["EventType"][3311177] = 185
	tBlackFiveDayAct_Stc["DataType"][3311177] = 88
	
	
	--记录天石消费
	tBlackFiveDayAct_Stc["EventType"]["Emoney"] = 185
	tBlackFiveDayAct_Stc["DataType"]["Emoney"] = 89
	
	

---------------------------------------------------逻辑部分-------------------------------------------------------
--记录消费掩码
function BlackFiveDayAct_AddCostStc(nEMoney)

	local nUserId = Get_UserId()
	local nEvent = tBlackFiveDayAct_Stc["EventType"]["Emoney"]
	local nData = tBlackFiveDayAct_Stc["DataType"]["Emoney"] 
	Task_AddStatistic(nEvent,nData,nEMoney+1,1)
	Task_SetStcTimestamp(nEvent,nData,0)

end 

--傲雪凌霜发型包
function BlackFiveDayAct_HairUse(nItemId)
	local nUserId = Get_UserId()
	
	if User_HairFaceCheckExist(0,14,nUserId) then
		Sys_MsgBox(tBlackFiveDayAct_Text["Sys"]["HairGet"], nil, nil, nUserId)
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_HairFaceAward(0,14,0,nUserId)
		Sys_SaveActionRewardLog(tBlackFiveDayAct_Log["DelItem"],nItemId, 1)
		User_TalkChannel2005(tBlackFiveDayAct_Text["Sys"]["Have"])
	end
end

--打开兑换商店
function BlackFiveDayAct_OpenExchangeShop(nNpcId)
	
	local nUserId = Get_UserId()
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	if not User_JudgeLevelAndMetempsychosis(tBlackFiveDayAct_Data["Level"],tBlackFiveDayAct_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	User_OpenExchangeShop(nNpcId,nUserId)

end

--打开天石商店
function BlackFiveDayAct_OpenEMoneyShop(nNpcId)
	local nUserId = Get_UserId()
	if Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"]) then
		User_OpenDialog()
	else
		LinkNpcGossipFunc_New(nNpcId,"1-4")
	end	
end

-- 自动寻路
function BlackFiveDayAct_MoveToNpc(nItemId)
	
	local nUserId = Get_UserId()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"]) then
		return
	end

	--判断时间 （做批量删除）
	if not Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			local nCount = Get_CountItemType(nItemId,0)
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tBlackFiveDayAct_Log["DelAllItem"],nItemId,nCount)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tBlackFiveDayAct_Text["Sys"]["OverTime"][nItemId])
			end
		end	
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tBlackFiveDayAct_Data["Level"], tBlackFiveDayAct_Data["Metempsychosis"]) then

		return
	end

	local nPosX = tBlackFiveDayAct_Data["Npc"]["PosX"]
	local nPosY = tBlackFiveDayAct_Data["Npc"]["PosY"]
	local nMapId = tBlackFiveDayAct_Data["Npc"]["Map"]
	Sys_GotoSomeWhere(nPosX, nPosY, nMapId)

end

function BlackFiveDayAct_MoveToNpc1()
	
	local nUserId = Get_UserId()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"]) then
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tBlackFiveDayAct_Data["Level"], tBlackFiveDayAct_Data["Metempsychosis"]) then
		return
	end
	local nPosX = tBlackFiveDayAct_Data["Npc"]["PosX"]
	local nPosY = tBlackFiveDayAct_Data["Npc"]["PosY"]
	local nMapId = tBlackFiveDayAct_Data["Npc"]["Map"]
	Sys_GotoSomeWhere(nPosX, nPosY, nMapId)

end


--礼包过期判断
function BlackFiveDayAct_CheckTime(nItemId)
	local sTime 
	if nItemId == 3311177 then
		sTime = tActivityTime["BlackFiveDayAct"]["PackUse"]
		
		
	else
		sTime = tActivityTime["BlackFiveDayAct"]["ItemUse"]
	end 
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(sTime) then
		return
	end
	
	if not Sys_ChkFullTime(sTime) then
		local nCount = Get_CountItemType(nItemId,0)
		if nCount > 0 then
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tBlackFiveDayAct_Log["DelAllItem"],nItemId,nCount)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tBlackFiveDayAct_Text["Sys"]["OverTime"][3311177])
			end
		end	
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")

end

function BlackFiveDayAct_OpenPack(nItemId,nFlag)
	
	if not Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["PackUse"]) then
		local nCount = Get_CountItemType(nItemId,0)
		if nCount > 0 then
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tBlackFiveDayAct_Log["DelAllItem"],nItemId,nCount)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tBlackFiveDayAct_Text["Sys"]["OverTime"][3311177])
			end
		end	
		return
	end

	local nEvent = tBlackFiveDayAct_Stc["EventType"][3311177]
	local nData = tBlackFiveDayAct_Stc["DataType"][3311177] 
	local nUserId = Get_UserId()
	-- 判断是否隔天
	if not Task_StcInterval(nEvent,nData,1,4,nUserId) then
		Sys_MsgBox(tBlackFiveDayAct_Text["Sys"]["HaveGet"])
		return
	end
	--背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tBlackFiveDayAct_Award[nItemId][nFlag])
	if not User_CheckLeftSpace(nSpace) then
		local sStr = string.format(tBlackFiveDayAct_Text["Sys"]["NoSpace"],nSpace)
		Sys_MsgBox(sStr)
		return
	end	
	--判断物品
	if not Item_ChkItem(nItemId) then
		return	
	end	
	
	local nUserData = Get_UserStatisticValue(nEvent,nData,nUserId)
	if nUserData > 9 then
		local nCount = Get_CountItemType(nItemId,0)
		if nCount > 0 then
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tBlackFiveDayAct_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tBlackFiveDayAct_Text["Sys"]["NoTime"])
			end
		end	
		return
	end 
	if nFlag == 1 then
		--天石判断
		if Get_UserEMoney() < tBlackFiveDayAct_Award[nItemId][1]["NeedEMoney"] then
			Sys_MsgBox(tBlackFiveDayAct_Text["Sys"]["NoMoney"])
			return
		else
			if User_AddEMoney(-tBlackFiveDayAct_Award[nItemId][1]["NeedEMoney"]) then
				Task_AddStatistic(nEvent,nData,1,1)
				Task_SetStcTimestamp(nEvent,nData,0)
				BlackFiveDayAct_AddCostStc(tBlackFiveDayAct_Award[nItemId][1]["NeedEMoney"])
				local sDelItemLog = string.format(tBlackFiveDayAct_Log["Emoney"],tBlackFiveDayAct_Award[nItemId][1]["NeedEMoney"])
				Sys_SaveActionFestivalLog(sDelItemLog)
				-- Sys_SaveEmoneyBuy(tBlackFiveDayAct_Log["EmoneyLog"][nItemId])
				RewardTemplate_UseItemAndMsg(tBlackFiveDayAct_Award[nItemId][1])
			end
		end
	
	else
		if nUserData == 9 then
			local nCount = Get_CountItemType(nItemId,0)
			if nCount > 0 then
				if Item_DelAllItemByType(nItemId) then
					local sDelItemLog = string.format(tBlackFiveDayAct_Log["DelItem"],nItemId)
					Sys_SaveActionFestivalLog(sDelItemLog)
					User_TalkChannel2005(tBlackFiveDayAct_Text["Sys"]["NoTime"])
				end
			end	
		end 
			
		Task_AddStatistic(nEvent,nData,1,1)
		Task_SetStcTimestamp(nEvent,nData,0)
	
		RewardTemplate_UseItemAndMsg(tBlackFiveDayAct_Award[nItemId][2])
	end
end 

--判断付费礼包所获代金券种类
function BlackFiveDayAct_SetCouponType(nEmoney)
	for k,v in pairs(tBlackFiveDayAct_CouponType) do
		if k ~= #tBlackFiveDayAct_CouponType then
			if nEmoney >=v[1] and nEmoney < v[2] then
				return v[1]	
			end
		else
			if nEmoney >=v[1] then
				return v[1]	
			end
		end
	end
end 

--判断背包中有何种代金券 没有返回false  有返回true 和 表 表结构 t[i]["Id"]  t[i]["Num"]
function BlackFiveDayAct_CheckCoupon(nEmoneyFlag)
	local tItem = {}
	local nIndex = 1
	-- local nBagNum 
	if nEmoneyFlag == 0 then
		return tItem ,false
	end 
	for a,b in pairs(tBlackFiveDayAct_Data["Item"][nEmoneyFlag]) do
		if Item_ChkItem(b) then
			tItem[nIndex] = {}
			-- nBagNum = Get_CountItemType(b,0)
			tItem[nIndex]["Id"] = b
			-- tItem[nIndex]["Num"] = nBagNum
			nIndex = nIndex + 1	
		end
	end
	if nIndex == 1 then
		return tItem , false
	else
		return tItem , true
	end

end

--检测物品
function BlackFiveDayAct_CheckItem(nItemId)
	if Item_ChkItem(nItemId) then
		return true	
	else
		return false
	end
end 

function BlackFiveDayAct_CheckDiaLog(nItemId)
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveDayAct"]["ItemUse"]) then
		return false
	end
	
	if not Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ItemUse"]) then
		local nCount = Get_CountItemType(nItemId,0)
		if nCount > 0 then
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tBlackFiveDayAct_Log["DelAllItem"],nItemId,nCount)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tBlackFiveDayAct_Text["Sys"]["OverTime"][3311177])
			end
		end	
		return false
	end
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tBlackFiveDayAct_Data["Level"], tBlackFiveDayAct_Data["Metempsychosis"]) then
		return false
	end
	
	return true
end

--礼包主对白
function BlackFiveDayAct_ItemDiaLog(nItemId)
	if not BlackFiveDayAct_CheckDiaLog(nItemId) then
		return 
	end 
	local nEmoney = tBlackFiveDayAct_ItemDiaLog[nItemId][1]
	Sys_DialogItemFace(nItemId)
	Sys_DialogText(string.format(tBlackFiveDayAct_TextStr["Str11"] ,nEmoney,tBlackFiveDayAct_ItemDiaLog[nItemId][2]))
	Sys_DialogText(tBlackFiveDayAct_TextStr["Str12"])
	
	Sys_DialogOption(string.format(tBlackFiveDayAct_TextOption["OptionStr11"],nEmoney),"</F>BlackFiveDayAct_ItemDiaLogUseCP</N>"..nItemId.."</N>"..nEmoney)
	local nEmoneyFlag = BlackFiveDayAct_SetCouponType(nEmoney)
	local tItem,b = BlackFiveDayAct_CheckCoupon(nEmoneyFlag)
	if b then 
		Sys_DialogOption(tBlackFiveDayAct_TextOption["OptionStr12"],"</F>BlackFiveDayAct_AddOption</N>"..nItemId.."</N>"..nEmoney)
	end 
	Sys_DialogOption(tBlackFiveDayAct_TextOption["OptionStr13"],"</F>NULL")
	Sys_DialogEnd()
	
end

--天石二次确认对白
function BlackFiveDayAct_ItemDiaLogUseCP(nItemId,nEmoney)
	Sys_DialogItemFace(nItemId)
	Sys_DialogText(string.format(tBlackFiveDayAct_TextStr["Str21"],nEmoney))
	Sys_DialogOption(tBlackFiveDayAct_TextOption["OptionStr21"],"</F>BlackFiveDayAct_SureBuy</N>"..nItemId.."</N>"..nEmoney)
	Sys_DialogOption(tBlackFiveDayAct_TextOption["OptionStr13"],"</F>NULL")
	Sys_DialogEnd()
end 


function BlackFiveDayAct_SureBuy(nItemId,nEmoney)
	if not BlackFiveDayAct_CheckDiaLog() then
		return
	end 
	--判断物品
	if not Item_ChkItem(nItemId) then
		return	
	end	
	
	local nUserId = Get_UserId()
	--背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tBlackFiveDayAct_Award[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		local sStr = string.format(tBlackFiveDayAct_Text["Sys"]["NoSpace"],nSpace)
		Sys_MsgBox(sStr)
		return
	end	
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tBlackFiveDayAct_Text["Sys"]["NoMoney"])
		return
	else
		if User_AddEMoney(-nEmoney) then
			-- Sys_SaveEmoneyBuy(tBlackFiveDayAct_Log["EmoneyLog"][nItemId])
			local sDelItemLog = string.format(tBlackFiveDayAct_Log["Emoney"],nEmoney)
			Sys_SaveActionFestivalLog(sDelItemLog)
			BlackFiveDayAct_AddCostStc(nEmoney)
			RewardTemplate_UseItemAndMsg(tBlackFiveDayAct_Award[nItemId])
		end
	end
	
end 

--代金券对白
function BlackFiveDayAct_AddOption(nItemId,nEmoney)
	local nEmoneyFlag = BlackFiveDayAct_SetCouponType(nEmoney)
	local tItem,boolean = BlackFiveDayAct_CheckCoupon(nEmoneyFlag)
	
	if boolean and tItem ~= nil then 
		Sys_DialogItemFace(nItemId)
		Sys_DialogText(string.format(tBlackFiveDayAct_TextStr["Str31"],tBlackFiveDayAct_ItemDiaLog[nItemId][2],nEmoney))
		Sys_DialogText(tBlackFiveDayAct_TextStr["Str32"])
		
		for a,b in pairs(tItem) do
			local nItemIdType = b["Id"]
			local nNeedEmoney = nEmoney-tBlackFiveDayAct_ItemDiaLog[nItemIdType][2]
			Sys_DialogOption(string.format(tBlackFiveDayAct_TextOption["OptionStr31"],tBlackFiveDayAct_ItemDiaLog[nItemIdType][1],nNeedEmoney),"</F>BlackFiveDayAct_ItemDiaLogUseCoupon</N>"..nItemId.."</N>"..nItemIdType.."</N>"..nNeedEmoney)
		end 
		Sys_DialogOption(tBlackFiveDayAct_TextOption["OptionStr13"],"</F>NULL")
		Sys_DialogEnd()
	end
	
end 

--代金券二次确认对白
function BlackFiveDayAct_ItemDiaLogUseCoupon(nItemId,nItemIdType,nNeedEmoney) 
	
	Sys_DialogItemFace(nItemId)
	Sys_DialogText(string.format(tBlackFiveDayAct_TextStr["Str41"],tBlackFiveDayAct_ItemDiaLog[nItemIdType][1],nNeedEmoney))
	
	Sys_DialogOption(tBlackFiveDayAct_TextOption["OptionStr21"],"</F>BlackFiveDayAct_SureBuyUseCoupon</N>"..nItemId.."</N>"..nItemIdType.."</N>"..nNeedEmoney)
	Sys_DialogOption(tBlackFiveDayAct_TextOption["OptionStr13"],"</F>NULL")
	Sys_DialogEnd()
end 

function BlackFiveDayAct_SureBuyUseCoupon(nItemId,nItemIdType,nNeedEmoney)
	if not BlackFiveDayAct_CheckDiaLog() then
		return
	end 
	local nUserId = Get_UserId()
	--判断物品
	if not Item_ChkItem(nItemId) then
		return	
	end	
	--判断代金券
	if not BlackFiveDayAct_CheckItem(nItemIdType) then
		Sys_MsgBox(tBlackFiveDayAct_Text["Sys"]["NoItem"])
		return
	end 
	
	--背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tBlackFiveDayAct_Award[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		local sStr = string.format(tBlackFiveDayAct_Text["Sys"]["NoSpace"],nSpace)
		Sys_MsgBox(sStr)
		return
	end	
	if Get_UserEMoney() < nNeedEmoney then
		Sys_MsgBox(tBlackFiveDayAct_Text["Sys"]["NoMoney"])
		return
	else
		if User_AddEMoney(-nNeedEmoney) and Item_DelItem(nItemIdType) then
			if tBlackFiveDayAct_Log["ItemUse"][nItemIdType] ~= nil then 
				Sys_SaveEmoneyBuy(tBlackFiveDayAct_Log["ItemUse"][nItemIdType])
			end 
			local sDelItemLog = string.format(tBlackFiveDayAct_Log["Emoney"],nNeedEmoney)
			Sys_SaveActionFestivalLog(sDelItemLog)
			BlackFiveDayAct_AddCostStc(nNeedEmoney)
			RewardTemplate_UseItemAndMsg(tBlackFiveDayAct_Award[nItemId])
		end
	end
end 

--可选包
function BlackFiveDayAct_Option(nFlag,nItemId,nEmoney)
	local nUserId = Get_UserId()
	if not BlackFiveDayAct_CheckDiaLog(nItemId) then 
		return
	end 

	--判断物品
	if not Item_ChkItem(nItemId) then
		return	
	end	
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tBlackFiveDayAct_Text["Sys"]["NoMoney"])
		return
	else
		if User_AddEMoney(-nEmoney) then
			-- Sys_SaveEmoneyBuy(tBlackFiveDayAct_Log["EmoneyLog"][nItemId])
			RewardTemplate_UseItemAndMsg(tBlackFiveDayAct_Award[nFlag])
		end
	end

end


function BlackFiveDayAct_ItemUse(nItemId)
	local nUserId = Get_UserId()
	if nItemId == 3311289 or nItemId == 3311290 then 
		--随机奖励
		local nSpaceRun = RewardTemplate_GetRandomSpace(tBlackFiveDayAct_RunReward,nItemId,nUserId)
		if not User_CheckLeftSpace(nSpaceRun) then
			local sStr = string.format(tBlackFiveDayAct_Text["Sys"]["NoSpace"],nSpaceRun)
			Sys_MsgBox(sStr)
			return
		end	
		--赠点上限判断
		if Get_UserMonoEMoney() + tBlackFiveDayAct_RunReward[3311289][2]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tBlackFiveDayAct_Text["Sys"]["EmoneyMoMoLimit"])
			return
		end
		
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tBlackFiveDayAct_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				RewardTemplate_NewRandom(tBlackFiveDayAct_RunReward,nItemId,nUserId)	
			end
		end	

	else
		local nSpace = RewardTemplate_GetRewardSpace(tBlackFiveDayAct_Award[nItemId])
		if not User_CheckLeftSpace(nSpace) then
			local sStr = string.format(tBlackFiveDayAct_Text["Sys"]["NoSpace"],nSpace)
			Sys_MsgBox(sStr)
			return
		end	
		RewardTemplate_UseItemAndMsg(tBlackFiveDayAct_Award[nItemId])	
	end 
		
	
end 

--七星宝钻碎片合成
function BlackFiveDayAct_ItemChange(nItemId)
	local nUserId = Get_UserId()
	
	if not Item_ChkMulItem(nItemId,nItemId,9) then
		Sys_MsgBox(tBlackFiveDayAct_Text["Sys"]["Fail"])
		return
	end
	--背包空间判断
	if not  RewardTemplate_CheckSpace(tBlackFiveDayAct_Award[nItemId],nUserId) then 
		User_TalkChannel2005(tBlackFiveDayAct_Text["Sys"]["NoBag"])
		return
	end 
	
	if Item_DelMulItem(nItemId,nItemId,9) then
		local sDelItemLog = string.format(tBlackFiveDayAct_Log["DelAllItem"],nItemId,9)
		Sys_SaveActionFestivalLog(sDelItemLog)
		Sys_MsgBox(tBlackFiveDayAct_Text["Sys"]["Vec"])
		RewardTemplate_UseItem(tBlackFiveDayAct_Award[nItemId])
		
	end
	
end 

function BlackFiveDayAct_PackageUse(nItemId)

	RewardTemplate_UseItem(tBlackFiveDayAct_Award[nItemId])

end

---------------------------------------------npc部分-------------------------------------------
-- 23495,'黑五狂欢大使',32,63806
tNpcFace[6380] = 71

tNpcGossip[23495] = tNpcGossip[23495] or DefaultNpc:new{}
tNpcGossip[23495]["OptionHidden"] = 1
tNpcGossip[23495]["DialogueText"] = tBlackFiveDayAct_Text[23495]

--活动时间前
tNpcGossip[23495]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23495]["Text111"] = tBlackFiveDayAct_Text[23495]["Text111"]
tNpcGossip[23495]["Text112"] = tBlackFiveDayAct_Text[23495]["Text112"]
tNpcGossip[23495]["Text113"] = tBlackFiveDayAct_Text[23495]["Text113"]
tNpcGossip[23495]["Text114"] = tBlackFiveDayAct_Text[23495]["Text114"]
tNpcGossip[23495]["Text115"] = tBlackFiveDayAct_Text[23495]["Text115"]
tNpcGossip[23495]["Text116"] = tBlackFiveDayAct_Text[23495]["Text116"]

tNpcGossip[23495]["tOption1-1"] = {111}
tNpcGossip[23495]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23495]["Option111"] = tBlackFiveDayAct_Text[23495]["Option111"] 

--等级不足 
tNpcGossip[23495]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[23495]["Text121"] = tBlackFiveDayAct_Text[23495]["Text121"]
tNpcGossip[23495]["Text122"] = tBlackFiveDayAct_Text[23495]["Text122"]
tNpcGossip[23495]["Text123"] = tBlackFiveDayAct_Text[23495]["Text123"]
tNpcGossip[23495]["Text124"] = tBlackFiveDayAct_Text[23495]["Text124"]
tNpcGossip[23495]["Text125"] = tBlackFiveDayAct_Text[23495]["Text125"]
tNpcGossip[23495]["Text126"] = tBlackFiveDayAct_Text[23495]["Text126"]

tNpcGossip[23495]["tOption1-2"] = {121}
tNpcGossip[23495]["ChkFunc1-2"] = function()

	return not User_JudgeLevelAndMetempsychosis(tBlackFiveDayAct_Data["Level"],tBlackFiveDayAct_Data["Metempsychosis"]) and Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
	
end
tNpcGossip[23495]["Option121"] = tBlackFiveDayAct_Text[23495]["Option121"] 

--等级达到
tNpcGossip[23495]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[23495]["Text131"] = tBlackFiveDayAct_Text[23495]["Text131"]
tNpcGossip[23495]["Text132"] = tBlackFiveDayAct_Text[23495]["Text132"]
tNpcGossip[23495]["Text133"] = tBlackFiveDayAct_Text[23495]["Text133"]
tNpcGossip[23495]["Text134"] = tBlackFiveDayAct_Text[23495]["Text134"]
tNpcGossip[23495]["Text135"] = tBlackFiveDayAct_Text[23495]["Text135"]
tNpcGossip[23495]["Text136"] = tBlackFiveDayAct_Text[23495]["Text136"]
     
tNpcGossip[23495]["tOption1-3"] = {131}
tNpcGossip[23495]["ChkFunc1-3"] = function()
	
	return User_JudgeLevelAndMetempsychosis(tBlackFiveDayAct_Data["Level"],tBlackFiveDayAct_Data["Metempsychosis"]) and Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23495]["Option131"] = tBlackFiveDayAct_Text[23495]["Option131"] 

tNpcGossip[23495]["OptionFunc131"] = "BlackFiveDayAct_OpenExchangeShop</N>23495"

--活动时间后
tNpcGossip[23495]["Text1-4"] = {141}
tNpcGossip[23495]["Text141"] = tBlackFiveDayAct_Text[23495]["Text141"]
         
tNpcGossip[23495]["tOption1-4"] = {141}
tNpcGossip[23495]["ChkFunc1-4"] = function()
	return not Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23495]["Option141"] = tBlackFiveDayAct_Text[23495]["Option141"] 


-- 23496,'黑五特惠大使',32,63816
tNpcFace[6381] = 181

tNpcGossip[23496] = tNpcGossip[23496] or DefaultNpc:new{}
tNpcGossip[23496]["OptionHidden"] = 1
tNpcGossip[23496]["DialogueText"] = tBlackFiveDayAct_Text[23496]

--活动时间前
tNpcGossip[23496]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23496]["Text111"] = tBlackFiveDayAct_Text[23496]["Text111"]
tNpcGossip[23496]["Text112"] = tBlackFiveDayAct_Text[23496]["Text112"]
tNpcGossip[23496]["Text113"] = tBlackFiveDayAct_Text[23496]["Text113"]
tNpcGossip[23496]["Text114"] = tBlackFiveDayAct_Text[23496]["Text114"]
tNpcGossip[23496]["Text115"] = tBlackFiveDayAct_Text[23496]["Text115"]
tNpcGossip[23496]["Text116"] = tBlackFiveDayAct_Text[23496]["Text116"]

tNpcGossip[23496]["tOption1-1"] = {111}
tNpcGossip[23496]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23496]["Option111"] = tBlackFiveDayAct_Text[23496]["Option111"] 

--等级不足 
tNpcGossip[23496]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[23496]["Text121"] = tBlackFiveDayAct_Text[23496]["Text121"]
tNpcGossip[23496]["Text122"] = tBlackFiveDayAct_Text[23496]["Text122"]
tNpcGossip[23496]["Text123"] = tBlackFiveDayAct_Text[23496]["Text123"]
tNpcGossip[23496]["Text124"] = tBlackFiveDayAct_Text[23496]["Text124"]
tNpcGossip[23496]["Text125"] = tBlackFiveDayAct_Text[23496]["Text125"]
tNpcGossip[23496]["Text126"] = tBlackFiveDayAct_Text[23496]["Text126"]  
  
tNpcGossip[23496]["tOption1-2"] = {121}
tNpcGossip[23496]["ChkFunc1-2"] = function()

	return not User_JudgeLevelAndMetempsychosis(tBlackFiveDayAct_Data["Level"],tBlackFiveDayAct_Data["Metempsychosis"]) and Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23496]["Option121"] = tBlackFiveDayAct_Text[23496]["Option121"] 

--等级达到
tNpcGossip[23496]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[23496]["Text131"] = tBlackFiveDayAct_Text[23496]["Text131"]
tNpcGossip[23496]["Text132"] = tBlackFiveDayAct_Text[23496]["Text132"]
tNpcGossip[23496]["Text133"] = tBlackFiveDayAct_Text[23496]["Text133"]
tNpcGossip[23496]["Text134"] = tBlackFiveDayAct_Text[23496]["Text134"]
tNpcGossip[23496]["Text135"] = tBlackFiveDayAct_Text[23496]["Text135"]
tNpcGossip[23496]["Text136"] = tBlackFiveDayAct_Text[23496]["Text136"]     
     
tNpcGossip[23496]["tOption1-3"] = {131,132}
tNpcGossip[23496]["ChkFunc1-3"] = function()
	
	return User_JudgeLevelAndMetempsychosis(tBlackFiveDayAct_Data["Level"],tBlackFiveDayAct_Data["Metempsychosis"]) and Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23496]["Option131"] = tBlackFiveDayAct_Text[23496]["Option131"] 

tNpcGossip[23496]["OptionFunc131"] = "BlackFiveDayAct_OpenEMoneyShop</N>23496"
tNpcGossip[23496]["OptionFunc132"] = "User_SendWebPage</S>"..tBlackFiveDayAct_Data["RaceCourseHttps"]

--活动时间后
tNpcGossip[23496]["Text1-4"] = {141}
tNpcGossip[23496]["Text141"] = tBlackFiveDayAct_Text[23496]["Text141"]
          
tNpcGossip[23496]["tOption1-4"] = {141}
tNpcGossip[23496]["ChkFunc1-4"] = function()
	return not Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23496]["Option141"] = tBlackFiveDayAct_Text[23496]["Option141"] 


-- 23497,'黑五促销大使',32,63826
tNpcFace[6382] = 184

tNpcGossip[23497] = tNpcGossip[23497] or DefaultNpc:new{}
tNpcGossip[23497]["OptionHidden"] = 1
tNpcGossip[23497]["DialogueText"] = tBlackFiveDayAct_Text[23497]

--活动时间前
tNpcGossip[23497]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23497]["Text111"] = tBlackFiveDayAct_Text[23497]["Text111"]
tNpcGossip[23497]["Text112"] = tBlackFiveDayAct_Text[23497]["Text112"]
tNpcGossip[23497]["Text113"] = tBlackFiveDayAct_Text[23497]["Text113"]
tNpcGossip[23497]["Text114"] = tBlackFiveDayAct_Text[23497]["Text114"]
tNpcGossip[23497]["Text115"] = tBlackFiveDayAct_Text[23497]["Text115"]
tNpcGossip[23497]["Text116"] = tBlackFiveDayAct_Text[23497]["Text116"]
          
tNpcGossip[23497]["tOption1-1"] = {111}
tNpcGossip[23497]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23497]["Option111"] = tBlackFiveDayAct_Text[23497]["Option111"] 

--等级不足 
tNpcGossip[23497]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[23497]["Text121"] = tBlackFiveDayAct_Text[23497]["Text121"]
tNpcGossip[23497]["Text122"] = tBlackFiveDayAct_Text[23497]["Text122"]
tNpcGossip[23497]["Text123"] = tBlackFiveDayAct_Text[23497]["Text123"]
tNpcGossip[23497]["Text124"] = tBlackFiveDayAct_Text[23497]["Text124"]
tNpcGossip[23497]["Text125"] = tBlackFiveDayAct_Text[23497]["Text125"]
tNpcGossip[23497]["Text126"] = tBlackFiveDayAct_Text[23497]["Text126"]  
  
tNpcGossip[23497]["tOption1-2"] = {121}
tNpcGossip[23497]["ChkFunc1-2"] = function()

	return not User_JudgeLevelAndMetempsychosis(tBlackFiveDayAct_Data["Level"],tBlackFiveDayAct_Data["Metempsychosis"]) and Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23497]["Option121"] = tBlackFiveDayAct_Text[23497]["Option121"] 

--等级达到
tNpcGossip[23497]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[23497]["Text131"] = tBlackFiveDayAct_Text[23497]["Text131"]
tNpcGossip[23497]["Text132"] = tBlackFiveDayAct_Text[23497]["Text132"]
tNpcGossip[23497]["Text133"] = tBlackFiveDayAct_Text[23497]["Text133"]
tNpcGossip[23497]["Text134"] = tBlackFiveDayAct_Text[23497]["Text134"]
tNpcGossip[23497]["Text135"] = tBlackFiveDayAct_Text[23497]["Text135"]
tNpcGossip[23497]["Text136"] = tBlackFiveDayAct_Text[23497]["Text136"]  
  
tNpcGossip[23497]["tOption1-3"] = {131,132}
tNpcGossip[23497]["ChkFunc1-3"] = function()
	
	return User_JudgeLevelAndMetempsychosis(tBlackFiveDayAct_Data["Level"],tBlackFiveDayAct_Data["Metempsychosis"]) and Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23497]["Option131"] = tBlackFiveDayAct_Text[23497]["Option131"] 
tNpcGossip[23497]["Option132"] = tBlackFiveDayAct_Text[23497]["Option132"]

tNpcGossip[23497]["OptionFunc131"] = "BlackFiveDayAct_OpenEMoneyShop</N>23497"
tNpcGossip[23497]["OptionFunc132"] = "User_SendWebPage</S>"..tBlackFiveDayAct_Data["RaceCourseHttps"]

--活动时间后
tNpcGossip[23497]["Text1-4"] = {141}
tNpcGossip[23497]["Text141"] = tBlackFiveDayAct_Text[23497]["Text141"]
           
tNpcGossip[23497]["tOption1-4"] = {141}
tNpcGossip[23497]["ChkFunc1-4"] = function()
	return not Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23497]["Option141"] = tBlackFiveDayAct_Text[23497]["Option141"] 


-- (23509,'宣传大使
tNpcFace[6387] = 189

tNpcGossip[23509] = tNpcGossip[23509] or DefaultNpc:new{}
tNpcGossip[23509]["OptionHidden"] = 1
tNpcGossip[23509]["DialogueText"] = tBlackFiveDayAct_Text[23509]

--活动时间前
tNpcGossip[23509]["Text1-1"] = {111,112,113,114}
tNpcGossip[23509]["Text111"] = tBlackFiveDayAct_Text[23509]["Text111"]
tNpcGossip[23509]["Text112"] = tBlackFiveDayAct_Text[23509]["Text112"]
tNpcGossip[23509]["Text113"] = tBlackFiveDayAct_Text[23509]["Text113"]
tNpcGossip[23509]["Text114"] = tBlackFiveDayAct_Text[23509]["Text114"]
      
tNpcGossip[23509]["tOption1-1"] = {111}
tNpcGossip[23509]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23509]["Option111"] = tBlackFiveDayAct_Text[23509]["Option111"] 

--等级不足 
tNpcGossip[23509]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[23509]["Text121"] = tBlackFiveDayAct_Text[23509]["Text121"]
tNpcGossip[23509]["Text122"] = tBlackFiveDayAct_Text[23509]["Text122"]
tNpcGossip[23509]["Text123"] = tBlackFiveDayAct_Text[23509]["Text123"]
tNpcGossip[23509]["Text124"] = tBlackFiveDayAct_Text[23509]["Text124"]
tNpcGossip[23509]["Text125"] = tBlackFiveDayAct_Text[23509]["Text125"]
         
tNpcGossip[23509]["tOption1-2"] = {121}
tNpcGossip[23509]["ChkFunc1-2"] = function()

	return not User_JudgeLevelAndMetempsychosis(tBlackFiveDayAct_Data["Level"],tBlackFiveDayAct_Data["Metempsychosis"]) and Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23509]["Option121"] = tBlackFiveDayAct_Text[23509]["Option121"] 

--等级达到
tNpcGossip[23509]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[23509]["Text131"] = tBlackFiveDayAct_Text[23509]["Text131"]
tNpcGossip[23509]["Text132"] = tBlackFiveDayAct_Text[23509]["Text132"]
tNpcGossip[23509]["Text133"] = tBlackFiveDayAct_Text[23509]["Text133"]
tNpcGossip[23509]["Text134"] = tBlackFiveDayAct_Text[23509]["Text134"]
tNpcGossip[23509]["Text135"] = tBlackFiveDayAct_Text[23509]["Text135"]
tNpcGossip[23509]["Text136"] = tBlackFiveDayAct_Text[23509]["Text136"]  
           
tNpcGossip[23509]["tOption1-3"] = {131}
tNpcGossip[23509]["ChkFunc1-3"] = function()
	
	return User_JudgeLevelAndMetempsychosis(tBlackFiveDayAct_Data["Level"],tBlackFiveDayAct_Data["Metempsychosis"]) and Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23509]["Option131"] = tBlackFiveDayAct_Text[23509]["Option131"] 

tNpcGossip[23509]["OptionFunc131"] = "BlackFiveDayAct_MoveToNpc1"

--活动时间后
tNpcGossip[23509]["Text1-4"] = {141}
tNpcGossip[23509]["Text141"] = tBlackFiveDayAct_Text[23509]["Text141"]
           
tNpcGossip[23509]["tOption1-4"] = {141}
tNpcGossip[23509]["ChkFunc1-4"] = function()
	return not Sys_ChkFullTime(tActivityTime["BlackFiveDayAct"]["ActivityTime"])
end
tNpcGossip[23509]["Option141"] = tBlackFiveDayAct_Text[23509]["Option141"] 

tNpcGossip[23537] = tNpcGossip[23509] or DefaultNpc:new{}
tNpcGossip[23538] = tNpcGossip[23509] or DefaultNpc:new{}
tNpcGossip[23539] = tNpcGossip[23509] or DefaultNpc:new{}


---------------------------------物品部分---------------------------------------------

-- 3311176,'黑五狂欢币',9,9
tItem[3311176] = tItem[3311176] or {}
tItem[3311176]["Function"] = function(nItemId,sItemName)
	BlackFiveDayAct_MoveToNpc(nItemId)
end

-- 3311164,'50CPsCoupon',
-- 3311165,'120CPsCoupon'
-- 3311166,'300CPsCoupon'
-- 3311167,'1000CPsCoupon',
-- 3311168,'30000CPsCoupon'
tItem[3311164] = tItem[3311176] or {}
tItem[3311165] = tItem[3311176] or {}
tItem[3311166] = tItem[3311176] or {}
tItem[3311167] = tItem[3311176] or {}
tItem[3311168] = tItem[3311176] or {}

-- 3311177,'黑五狂欢季宝箱'
tItem[3311177] = tItem[3311177] or {}
tItem[3311177]["Function"] = function(nItemId,sItemName)
	BlackFiveDayAct_CheckTime(nItemId)
end

tItemFace[3311177] = 1904
tItem[3311177]["Text1-1"] = {111,112,113,114,115,116,117,118}
tItem[3311177]["Text111"] = tBlackFiveDayAct_Text[3311177]["Text111"]
tItem[3311177]["Text112"] = tBlackFiveDayAct_Text[3311177]["Text112"]
tItem[3311177]["Text113"] = tBlackFiveDayAct_Text[3311177]["Text113"]
tItem[3311177]["Text114"] = tBlackFiveDayAct_Text[3311177]["Text114"]
tItem[3311177]["Text115"] = tBlackFiveDayAct_Text[3311177]["Text115"]
tItem[3311177]["Text116"] = tBlackFiveDayAct_Text[3311177]["Text116"]
tItem[3311177]["Text117"] = tBlackFiveDayAct_Text[3311177]["Text117"]
tItem[3311177]["Text118"] = tBlackFiveDayAct_Text[3311177]["Text118"]
tItem[3311177]["ChkFunc1-1"] = function()
	
	local nUserId = Get_UserId()
	local nEvent = tBlackFiveDayAct_Stc["EventType"][3311177]
	local nData = tBlackFiveDayAct_Stc["DataType"][3311177] 
	local nUserData = Get_UserStatisticValue(nEvent,nData,nUserId)

	if nUserData <= 0 then
		return true
	end
	LinkItemGossipFunc_New(3311177,"1-2")
end

tItem[3311177]["tOption1-1"] = {111}
tItem[3311177]["Option111"] = tBlackFiveDayAct_Text[3311177]["Option111"]
tItem[3311177]["OptionPoint111"] = "2-1"

--2~10次 打开
tItem[3311177]["Text1-2"] = {121,122,123,124,125,126,127,128}
tItem[3311177]["Text121"] = tBlackFiveDayAct_Text[3311177]["Text121"]
tItem[3311177]["Text122"] = tBlackFiveDayAct_Text[3311177]["Text122"]
tItem[3311177]["Text123"] = tBlackFiveDayAct_Text[3311177]["Text123"]
tItem[3311177]["Text124"] = tBlackFiveDayAct_Text[3311177]["Text124"]
tItem[3311177]["Text125"] = tBlackFiveDayAct_Text[3311177]["Text125"]
tItem[3311177]["Text126"] = tBlackFiveDayAct_Text[3311177]["Text126"]
tItem[3311177]["Text127"] = tBlackFiveDayAct_Text[3311177]["Text127"]
tItem[3311177]["Text128"] = tBlackFiveDayAct_Text[3311177]["Text128"]
tItem[3311177]["ChkFunc1-2"] = function()
	
	local nUserId = Get_UserId()
	local nEvent = tBlackFiveDayAct_Stc["EventType"][3311177]
	local nData = tBlackFiveDayAct_Stc["DataType"][3311177] 
	local nUserData = Get_UserStatisticValue(nEvent,nData,nUserId)
	local nTimes = 10-nUserData
	if nTimes < 0 then
		nTimes = 0
	end 
	tItem[3311177]["Text123"] = string.format(tBlackFiveDayAct_Text[3311177]["Text123"],nTimes)
	if Task_StcInterval(nEvent,nData,1,4,nUserId) then
		-- Task_SetStcTimestamp(nEvent,nData,0,nUserId)
		tItem[3311177]["Option121"] = tBlackFiveDayAct_Text[3311177]["Option121"]
	else
		tItem[3311177]["Option121"] = tBlackFiveDayAct_Text[3311177]["Option1211"]
	end
	
	if nUserData > 0 then
		return true
	end
end

tItem[3311177]["tOption1-2"] = {121}
tItem[3311177]["Option121"] = tBlackFiveDayAct_Text[3311177]["Option121"]
tItem[3311177]["OptionFunc121"] = "BlackFiveDayAct_OpenPack</N>3311177</N>2"

tItem[3311177]["Text2-1"] = {211,212}
tItem[3311177]["Text211"] = tBlackFiveDayAct_Text[3311177]["Text211"]
tItem[3311177]["Text212"] = tBlackFiveDayAct_Text[3311177]["Text212"]

tItem[3311177]["tOption2-1"] = {211,212}
tItem[3311177]["Option211"] = tBlackFiveDayAct_Text[3311177]["Option211"]
tItem[3311177]["OptionFunc211"] = "BlackFiveDayAct_OpenPack</N>3311177</N>1"
tItem[3311177]["Option212"] = tBlackFiveDayAct_Text[3311177]["Option212"]


-- 3311178,'+3赤炼石狂欢包',9,98471500,
tItemFace[3311178] = 758
tItem[3311178] = tItem[3311178] or {}
tItem[3311178]["Function"] = function(nItemId,sItemName)
	BlackFiveDayAct_ItemDiaLog(nItemId)
end


-- 3311179,'赤练星陨石精装包',9,9847150
-- 3311180,'+6赤炼石狂欢包',9,98471500,
-- 3311181,'赤练星陨石豪华包',9,9847150
-- 3311182,'+8赤炼石狂欢包',9,98471500,
-- 3311183,'赤练星陨石至尊包',9,9847150
-- 3311184,'超大固化石狂欢包',9,9847150
-- 3311185,'超大固化石神魂狂欢包',9,984
tItemFace[3311179] = 1905
tItemFace[3311180] = 761
tItemFace[3311181] = 1906
tItemFace[3311182] = 1452
tItemFace[3311183] = 1925
tItemFace[3311184] = 1455
tItemFace[3311185] = 1031
tItemFace[3311186] = 1547

tItem[3311179] = tItem[3311178] or {}
tItem[3311180] = tItem[3311178] or {}
tItem[3311181] = tItem[3311178] or {}
tItem[3311182] = tItem[3311178] or {}
tItem[3311183] = tItem[3311178] or {}
tItem[3311184] = tItem[3311178] or {}
tItem[3311185] = tItem[3311178] or {}

-- 3311186,'优质天怒地灵礼包',9,9847150
tItem[3311186] = tItem[3311178] or {}
-- tItem[3311186]["Function"] = function(nItemId,sItemName)
	-- BlackFiveDayAct_CheckTime(nItemId)
-- end

-- tItem[3311186]["Text1-1"] = {111}
-- tItem[3311186]["Text111"] = tBlackFiveDayAct_Text[3311186]["Text111"]
-- tItem[3311186]["tOption1-1"] = {111, 112}
-- tItem[3311186]["Option111"] = tBlackFiveDayAct_Text[3311186]["Option111"]
-- tItem[3311186]["OptionPoint111"] = "2-1"
-- tItem[3311186]["Option112"] = tBlackFiveDayAct_Text[3311186]["Option112"]
-- tItem[3311186]["OptionPoint112"] = "2-2"

-- tItem[3311186]["Text2-1"] = {211}
-- tItem[3311186]["Text211"] = tBlackFiveDayAct_Text[3311186]["Text211"]
   
-- tItem[3311186]["tOption2-1"] = {211,212}
-- tItem[3311186]["Option211"] = tBlackFiveDayAct_Text[3311186]["Option211"]
-- tItem[3311186]["OptionFunc211"] = "BlackFiveDayAct_Option</N>3003126</N>3311186</N>1199"
-- tItem[3311186]["Option212"] = tBlackFiveDayAct_Text[3311186]["Option212"]

-- tItem[3311186]["Text2-2"] = {221}
-- tItem[3311186]["Text221"] = tBlackFiveDayAct_Text[3311186]["Text221"]
   
-- tItem[3311186]["tOption2-2"] = {221,222}
-- tItem[3311186]["Option221"] = tBlackFiveDayAct_Text[3311186]["Option221"]
-- tItem[3311186]["OptionFunc221"] = "BlackFiveDayAct_Option</N>3003126</N>3311186</N>1199"
-- tItem[3311186]["Option222"] = tBlackFiveDayAct_Text[3311186]["Option222"]
                                  
-- 3311187,'金钢坚钻套装狂欢包',9,98471                             
-- 3311188,'金钢坚钻狂欢包',9,98471500,
-- 3311189,'明亮星陨石狂欢包',9,9847150
-- 3311190,'2颗明亮星陨石狂欢包',9,9847
-- 3311191,'晶莹星陨石狂欢包',9,9847150
-- 3311192,'2颗晶莹星陨石狂欢包 ',9,984
-- 3311193,'璀璨星陨石狂欢包',9,9847150
-- 3311194,'2颗璀璨星陨石狂欢包 ',9,984
-- 3311195,'龙珠卷狂欢包',9,98471500,10
-- 3311196,'龙珠赤炼石狂欢包',9,9847150
-- 3311197,'100颗桃源灵玉狂欢包',9,9847
-- 3311198,'桃源灵玉赤炼石狂欢包',9,984
-- 3311199,'固化石狂欢包',9,98471500,10
-- 3311200,'固化石神魂狂欢包',9,9847150
-- 3311201,'至善神羚【羊年绝版】狂欢包'
-- 3311202,'坐骑时装狂欢包',9,98471500,
-- 3311203,'BlissfulForeverHeart狂欢包'
-- 3311204,'翅膀时装精装包',9,98471500,
-- 3311205,'FairyWings狂欢包',9,9847150
-- 3311206,'翅膀时装典藏包',9,98471500,
-- 3311207,'SirenSong狂欢包',9,98471500
-- 3311208,'翅膀时装狂欢包',9,98471500,
tItemFace[3311187] = 1405
tItemFace[3311188] = 1188
tItemFace[3311189] = 1453
tItemFace[3311190] = 1907
tItemFace[3311191] = 1454
tItemFace[3311192] = 1908
tItemFace[3311193] = 1909
tItemFace[3311194] = 1910
tItemFace[3311195] = 1456
tItemFace[3311196] = 1785
tItemFace[3311197] = 1911
tItemFace[3311198] = 1757
tItemFace[3311199] = 1187
tItemFace[3311200] = 772
tItemFace[3311201] = 1059
tItemFace[3311202] = 1006
tItemFace[3311203] = 1469
tItemFace[3311204] = 1009
tItemFace[3311205] = 1007
tItemFace[3311206] = 525
tItemFace[3311207] = 1912
tItemFace[3311208] = 1008

tItem[3311187] = tItem[3311178] or {}
tItem[3311188] = tItem[3311178] or {}
tItem[3311189] = tItem[3311178] or {}
tItem[3311190] = tItem[3311178] or {}
tItem[3311191] = tItem[3311178] or {}
tItem[3311192] = tItem[3311178] or {}
tItem[3311193] = tItem[3311178] or {}
tItem[3311194] = tItem[3311178] or {}
tItem[3311195] = tItem[3311178] or {}
tItem[3311196] = tItem[3311178] or {}
tItem[3311197] = tItem[3311178] or {}
tItem[3311198] = tItem[3311178] or {}
tItem[3311199] = tItem[3311178] or {}
tItem[3311200] = tItem[3311178] or {}
tItem[3311201] = tItem[3311178] or {}
tItem[3311202] = tItem[3311178] or {}
tItem[3311203] = tItem[3311178] or {}
tItem[3311204] = tItem[3311178] or {}
tItem[3311205] = tItem[3311178] or {}
tItem[3311206] = tItem[3311178] or {}
tItem[3311207] = tItem[3311178] or {}
tItem[3311208] = tItem[3311178] or {}

-- #赠品商城礼包
-- 3311209,'5000气力值狂欢包',9,98
-- 3311210,'3000修为值狂欢包',9,98
-- 3311211,'究极通神丹狂欢包',9,98
-- 3311212,'免费强炼丹狂欢包',9,98
-- 3311213,'通神丹狂欢包',9,984715
-- 3311214,'九转聚神丹狂欢包',9,98
-- 3311215,'3000分钟经验狂欢包',9,
-- 3311216,'100000气力值狂欢包',9,
-- 3311217,'龙珠（赠）狂欢包',9,98
-- 3311218,'+3赤炼石（赠）狂欢包',
-- 3311219,'+6赤炼石（赠）狂欢包',
-- 3311220,'+8赤炼石（赠）狂欢包',
-- 3311221,'固化石（赠）狂欢包',9,
-- 3311222,'超大固化石（赠）狂欢包
-- 3311223,'金钢坚钻（赠）狂欢包',
-- 3311224,'七星宝钻（赠）狂欢包',
-- 3311225,'7阶武器神魂可选狂欢包'
-- 3311226,'7阶防具神魂可选狂欢包'
-- 3311227,'10000天石（赠）狂欢包'
-- 3311228,'免试金牌狂欢包',9,9847
tItemFace[3311209] = 1913
tItemFace[3311210] = 1914
tItemFace[3311211] = 1915
tItemFace[3311212] = 1916
tItemFace[3311213] = 1917
tItemFace[3311214] = 1918
tItemFace[3311215] = 1919
tItemFace[3311216] = 1920
tItemFace[3311217] = 1921
tItemFace[3311218] = 758
tItemFace[3311219] = 1450
tItemFace[3311220] = 763
tItemFace[3311221] = 1187
tItemFace[3311222] = 1455
tItemFace[3311223] = 1188
tItemFace[3311224] = 1922
tItemFace[3311225] = 671
tItemFace[3311226] = 643
tItemFace[3311227] = 1923
tItemFace[3311228] = 1924

tItem[3311209] = tItem[3311178] or {}
tItem[3311210] = tItem[3311178] or {}
tItem[3311211] = tItem[3311178] or {}
tItem[3311212] = tItem[3311178] or {}
tItem[3311213] = tItem[3311178] or {}
tItem[3311214] = tItem[3311178] or {}
tItem[3311215] = tItem[3311178] or {}
tItem[3311216] = tItem[3311178] or {}
tItem[3311217] = tItem[3311178] or {}
tItem[3311218] = tItem[3311178] or {}
tItem[3311219] = tItem[3311178] or {}
tItem[3311220] = tItem[3311178] or {}
tItem[3311221] = tItem[3311178] or {}
tItem[3311222] = tItem[3311178] or {}
tItem[3311223] = tItem[3311178] or {}
tItem[3311224] = tItem[3311178] or {}
tItem[3311225] = tItem[3311178] or {}
tItem[3311226] = tItem[3311178] or {}
tItem[3311227] = tItem[3311178] or {}
tItem[3311228] = tItem[3311178] or {}


-- 3311288,'黑五钻石宝箱
tItem[3311288] = tItem[3311288] or {}
tItem[3311288]["Function"] = function(nItemId,sItemName)
	BlackFiveDayAct_ItemUse(nItemId)
end


-- 3311289,'黑五黄金宝箱
-- 3311290,'黑五白银宝箱
-- 3311291,'黑五青铜宝箱
tItem[3311289] = tItem[3311288] or {}
tItem[3311290] = tItem[3311288] or {}
tItem[3311291] = tItem[3311288] or {}

-- (3311359,'七星宝钻碎片  1926
tItem[3311359] = tItem[3311359] or {}
tItem[3311359]["Function"] = function(nItemId,sItemName)
	BlackFiveDayAct_ItemChange(nItemId)
end

--傲雪凌霜发型包  3311401
tItemFace[3311401] = 1930
tItem[3311401] = tItem[3311401] or {}
tItem[3311401]["DialogueText"] = tBlackFiveDayAct_Text[3311401]
tItem[3311401]["Text1-1"] = {111}
tItem[3311401]["ChkFunc1-1"] = function() return true end
tItem[3311401]["tOption1-1"] = {111,112}
tItem[3311401]["OptionFunc111"] = "BlackFiveDayAct_HairUse</N>3311401"



-- 3311446,'BrightPuepleRomance(B)Pack
tItem[3311446] = tItem[3311446] or {}
tItem[3311446]["Function"] = function(nItemId,sItemName)
	BlackFiveDayAct_PackageUse(nItemId)
end

-- 3311447,'PureLotus(B)Pack',9,984715
tItem[3311447] = tItem[3311447] or {}
tItem[3311447]["Function"] = function(nItemId,sItemName)
	BlackFiveDayAct_PackageUse(nItemId)
end


