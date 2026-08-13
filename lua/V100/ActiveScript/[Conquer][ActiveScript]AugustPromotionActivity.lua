----------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]八月促销（线上）.lua
--Purpose:	八月促销（线上）
--Creator: 	黄啸
--Created:	2017/07/17
----------------------------------------------------------------------------

-- 命名前缀
-- tAugustPromotionActivity_

-- 动态码说明: 
-- 51634 --用来存贮销量6个物品
-- 51635 --用来存贮销量6个物品
-- 51636 --用来存贮销量1个物品

------------------------------------变量表配置----------------------------------------
--存贮二次确认后商品的天石价格
local tAugustPromotionActivity_SureAgain = 0

--开启礼包的天石数量
local tAugustPromotionActivity_EmoneyNumber = 600

--活动时间
local tAugustPromotionActivity_Constant = {}
tAugustPromotionActivity_Constant["ActivityTime"] = "2017-8-10 00:00 2017-8-24 23:59"
tAugustPromotionActivity_Constant["BeforeActivityTime"] = "2017-01-01 00:00 2017-08-09 23:59"
tAugustPromotionActivity_Constant["AfterActivityTime"] = "2017-8-25 00:00 2017-12-31 23:59"
tAugustPromotionActivity_Constant["WebSite"] = "http://event.co.99.com/summergrouppurchase/"

--团购价的档位
local tAugustPromotionActivity_Emoney = {}

--0-99,100-499,500以上
--桃源灵玉团购大礼包
tAugustPromotionActivity_Emoney[3304117] = {}
tAugustPromotionActivity_Emoney[3304117][99] = 2650
tAugustPromotionActivity_Emoney[3304117]["Aborder"] = 99
tAugustPromotionActivity_Emoney[3304117][499]= 2600
tAugustPromotionActivity_Emoney[3304117]["Bborder"] = 499
tAugustPromotionActivity_Emoney[3304117][500] = 2550
tAugustPromotionActivity_Emoney[3304117]["Cborder"] = 500
tAugustPromotionActivity_Emoney[3304117]["Global"] = 51634
tAugustPromotionActivity_Emoney[3304117]["OriginalEmoney"] = 2650
tAugustPromotionActivity_Emoney[3304117]["NowEmoney"] = 2650
tAugustPromotionActivity_Emoney[3304117]["Salnumber"] = 0
tAugustPromotionActivity_Emoney[3304117]["GlobalItem"] = 0

--明亮星陨石团购大礼包
tAugustPromotionActivity_Emoney[3304118] = {}
tAugustPromotionActivity_Emoney[3304118][99] = 340
tAugustPromotionActivity_Emoney[3304118]["Aborder"] = 99
tAugustPromotionActivity_Emoney[3304118][499]= 310
tAugustPromotionActivity_Emoney[3304118]["Bborder"] = 499
tAugustPromotionActivity_Emoney[3304118][500] = 260
tAugustPromotionActivity_Emoney[3304118]["Cborder"] = 500
tAugustPromotionActivity_Emoney[3304118]["Global"] = 51634
tAugustPromotionActivity_Emoney[3304118]["OriginalEmoney"] = 340
tAugustPromotionActivity_Emoney[3304118]["NowEmoney"] = 340
tAugustPromotionActivity_Emoney[3304118]["Salnumber"] = 0
tAugustPromotionActivity_Emoney[3304118]["GlobalItem"] = 1

--龙珠团购大礼包
tAugustPromotionActivity_Emoney[3304119] = {}
tAugustPromotionActivity_Emoney[3304119][99] = 250
tAugustPromotionActivity_Emoney[3304119]["Aborder"] = 99
tAugustPromotionActivity_Emoney[3304119][499]= 235
tAugustPromotionActivity_Emoney[3304119]["Bborder"] = 499
tAugustPromotionActivity_Emoney[3304119][500] = 220
tAugustPromotionActivity_Emoney[3304119]["Cborder"] = 500
tAugustPromotionActivity_Emoney[3304119]["Global"] = 51634
tAugustPromotionActivity_Emoney[3304119]["OriginalEmoney"] = 250
tAugustPromotionActivity_Emoney[3304119]["NowEmoney"] = 250
tAugustPromotionActivity_Emoney[3304119]["Salnumber"] = 0
tAugustPromotionActivity_Emoney[3304119]["GlobalItem"] = 2



--小固化石
tAugustPromotionActivity_Emoney[723694] = {}
tAugustPromotionActivity_Emoney[723694][99] = 380
tAugustPromotionActivity_Emoney[723694]["Aborder"] = 99
tAugustPromotionActivity_Emoney[723694][499]= 370
tAugustPromotionActivity_Emoney[723694]["Bborder"] = 499
tAugustPromotionActivity_Emoney[723694][500] = 360
tAugustPromotionActivity_Emoney[723694]["Cborder"] = 500
tAugustPromotionActivity_Emoney[723694]["Global"] = 51634
tAugustPromotionActivity_Emoney[723694]["OriginalEmoney"] = 380
tAugustPromotionActivity_Emoney[723694]["NowEmoney"] = 380
tAugustPromotionActivity_Emoney[723694]["Salnumber"] = 0
tAugustPromotionActivity_Emoney[723694]["GlobalItem"] = 4

--大固化石
tAugustPromotionActivity_Emoney[723695] = {}
tAugustPromotionActivity_Emoney[723695][99] = 3750
tAugustPromotionActivity_Emoney[723695]["Aborder"] = 99
tAugustPromotionActivity_Emoney[723695][499]= 3650
tAugustPromotionActivity_Emoney[723695]["Bborder"] = 499
tAugustPromotionActivity_Emoney[723695][500] = 3550
tAugustPromotionActivity_Emoney[723695]["Cborder"] = 500
tAugustPromotionActivity_Emoney[723695]["Global"] = 51634
tAugustPromotionActivity_Emoney[723695]["OriginalEmoney"] = 3750
tAugustPromotionActivity_Emoney[723695]["NowEmoney"] = 3750
tAugustPromotionActivity_Emoney[723695]["Salnumber"] = 0
tAugustPromotionActivity_Emoney[723695]["GlobalItem"] = 5

--10000点气力值礼包
tAugustPromotionActivity_Emoney[3304121] = {}
tAugustPromotionActivity_Emoney[3304121][99] = 1200
tAugustPromotionActivity_Emoney[3304121]["Aborder"] = 99
tAugustPromotionActivity_Emoney[3304121][499]= 1100
tAugustPromotionActivity_Emoney[3304121]["Bborder"] = 499
tAugustPromotionActivity_Emoney[3304121][500] = 1000
tAugustPromotionActivity_Emoney[3304121]["Cborder"] = 500
tAugustPromotionActivity_Emoney[3304121]["Global"] = 51635
tAugustPromotionActivity_Emoney[3304121]["OriginalEmoney"] = 1200
tAugustPromotionActivity_Emoney[3304121]["NowEmoney"] = 1200
tAugustPromotionActivity_Emoney[3304121]["Salnumber"] = 0
tAugustPromotionActivity_Emoney[3304121]["GlobalItem"] = 0

--免费强炼丹团购大礼包
tAugustPromotionActivity_Emoney[3304122] = {}
tAugustPromotionActivity_Emoney[3304122][99] = 420
tAugustPromotionActivity_Emoney[3304122]["Aborder"] = 99
tAugustPromotionActivity_Emoney[3304122][499]= 380
tAugustPromotionActivity_Emoney[3304122]["Bborder"] = 499
tAugustPromotionActivity_Emoney[3304122][500] = 340
tAugustPromotionActivity_Emoney[3304122]["Cborder"] = 500
tAugustPromotionActivity_Emoney[3304122]["Global"] = 51635
tAugustPromotionActivity_Emoney[3304122]["OriginalEmoney"] = 420
tAugustPromotionActivity_Emoney[3304122]["NowEmoney"] = 420
tAugustPromotionActivity_Emoney[3304122]["Salnumber"] = 0
tAugustPromotionActivity_Emoney[3304122]["GlobalItem"] = 1

--'+6赤练石
tAugustPromotionActivity_Emoney[730006] = {}
tAugustPromotionActivity_Emoney[730006][99] = 1700
tAugustPromotionActivity_Emoney[730006]["Aborder"] = 99
tAugustPromotionActivity_Emoney[730006][499]= 1650
tAugustPromotionActivity_Emoney[730006]["Bborder"] = 499
tAugustPromotionActivity_Emoney[730006][500] = 1600
tAugustPromotionActivity_Emoney[730006]["Cborder"] = 500
tAugustPromotionActivity_Emoney[730006]["Global"] = 51635
tAugustPromotionActivity_Emoney[730006]["OriginalEmoney"] = 1700
tAugustPromotionActivity_Emoney[730006]["NowEmoney"] = 1700
tAugustPromotionActivity_Emoney[730006]["Salnumber"] = 0
tAugustPromotionActivity_Emoney[730006]["GlobalItem"] = 2

--究极通神丹团购大礼包，20个大爆丹礼包
tAugustPromotionActivity_Emoney[3304124] = {}
tAugustPromotionActivity_Emoney[3304124][99] = 420
tAugustPromotionActivity_Emoney[3304124]["Aborder"] = 99
tAugustPromotionActivity_Emoney[3304124][499]= 380
tAugustPromotionActivity_Emoney[3304124]["Bborder"] = 499
tAugustPromotionActivity_Emoney[3304124][500] = 340
tAugustPromotionActivity_Emoney[3304124]["Cborder"] = 500
tAugustPromotionActivity_Emoney[3304124]["Global"] = 51635
tAugustPromotionActivity_Emoney[3304124]["OriginalEmoney"] = 420
tAugustPromotionActivity_Emoney[3304124]["NowEmoney"] = 420
tAugustPromotionActivity_Emoney[3304124]["Salnumber"] = 0
tAugustPromotionActivity_Emoney[3304124]["GlobalItem"] = 3

--+8赤练石
tAugustPromotionActivity_Emoney[730008] = {}
tAugustPromotionActivity_Emoney[730008][49] = 15999
tAugustPromotionActivity_Emoney[730008]["Aborder"] = 49
tAugustPromotionActivity_Emoney[730008][99] = 15599
tAugustPromotionActivity_Emoney[730008]["Bborder"] = 99
tAugustPromotionActivity_Emoney[730008][100] = 14999
tAugustPromotionActivity_Emoney[730008]["Cborder"] = 100
tAugustPromotionActivity_Emoney[730008]["Global"] = 51635
tAugustPromotionActivity_Emoney[730008]["OriginalEmoney"] = 15999
tAugustPromotionActivity_Emoney[730008]["NowEmoney"] = 15999
tAugustPromotionActivity_Emoney[730008]["Salnumber"] = 0
tAugustPromotionActivity_Emoney[730008]["GlobalItem"] = 4

--金刚坚钻
tAugustPromotionActivity_Emoney[1200005] = {}
tAugustPromotionActivity_Emoney[1200005][49] = 1599
tAugustPromotionActivity_Emoney[1200005]["Aborder"] = 49
tAugustPromotionActivity_Emoney[1200005][99] = 1499
tAugustPromotionActivity_Emoney[1200005]["Bborder"] = 99
tAugustPromotionActivity_Emoney[1200005][100] = 1399
tAugustPromotionActivity_Emoney[1200005]["Cborder"] = 100
tAugustPromotionActivity_Emoney[1200005]["Global"] = 51635
tAugustPromotionActivity_Emoney[1200005]["OriginalEmoney"] = 1599
tAugustPromotionActivity_Emoney[1200005]["NowEmoney"] = 1599
tAugustPromotionActivity_Emoney[1200005]["Salnumber"] = 0
tAugustPromotionActivity_Emoney[1200005]["GlobalItem"] = 5

--龙珠卷
tAugustPromotionActivity_Emoney[720028] = {}
tAugustPromotionActivity_Emoney[720028][49] = 800
tAugustPromotionActivity_Emoney[720028]["Aborder"] = 49
tAugustPromotionActivity_Emoney[720028][99] = 750
tAugustPromotionActivity_Emoney[720028]["Bborder"] = 99
tAugustPromotionActivity_Emoney[720028][100] = 700
tAugustPromotionActivity_Emoney[720028]["Cborder"] = 100
tAugustPromotionActivity_Emoney[720028]["Global"] = 51636
tAugustPromotionActivity_Emoney[720028]["OriginalEmoney"] = 800
tAugustPromotionActivity_Emoney[720028]["NowEmoney"] = 800
tAugustPromotionActivity_Emoney[720028]["Salnumber"] = 0
tAugustPromotionActivity_Emoney[720028]["GlobalItem"] = 0

--得到物品礼包模板
local tAugustPromotionActivity_Award = {}
tAugustPromotionActivity_Award[3304117] = {}
tAugustPromotionActivity_Award[3304117]["RewardItem"] = {}
tAugustPromotionActivity_Award[3304117]["RewardItem"][1] = {}
tAugustPromotionActivity_Award[3304117]["RewardItem"][1]["Id"] = 3304117
tAugustPromotionActivity_Award[3304117]["RewardItem"][1]["Attr"] = "0 1 "
tAugustPromotionActivity_Award[3304117]["LogId"] = 12000784


tAugustPromotionActivity_Award[3304118] = {}
tAugustPromotionActivity_Award[3304118]["RewardItem"] = {}
tAugustPromotionActivity_Award[3304118]["RewardItem"][1] = {}
tAugustPromotionActivity_Award[3304118]["RewardItem"][1]["Id"] = 3304118
tAugustPromotionActivity_Award[3304118]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tAugustPromotionActivity_Award[3304118]["LogId"] = 12000784

tAugustPromotionActivity_Award[3304119] = {}
tAugustPromotionActivity_Award[3304119]["RewardItem"] = {}
tAugustPromotionActivity_Award[3304119]["RewardItem"][1] = {}
tAugustPromotionActivity_Award[3304119]["RewardItem"][1]["Id"] = 3304119
tAugustPromotionActivity_Award[3304119]["RewardItem"][1]["Attr"] = "0 1 "
tAugustPromotionActivity_Award[3304119]["LogId"] = 12000784


tAugustPromotionActivity_Award[723694] = {}
tAugustPromotionActivity_Award[723694]["RewardItem"] = {}
tAugustPromotionActivity_Award[723694]["RewardItem"][1] = {}
tAugustPromotionActivity_Award[723694]["RewardItem"][1]["Id"] = 723694
tAugustPromotionActivity_Award[723694]["RewardItem"][1]["Attr"] = "0 1 "
tAugustPromotionActivity_Award[723694]["LogId"] = 12000784

tAugustPromotionActivity_Award[723695] = {}
tAugustPromotionActivity_Award[723695]["RewardItem"] = {}
tAugustPromotionActivity_Award[723695]["RewardItem"][1] = {}
tAugustPromotionActivity_Award[723695]["RewardItem"][1]["Id"] = 723695
tAugustPromotionActivity_Award[723695]["RewardItem"][1]["Attr"] = "0 1 "
tAugustPromotionActivity_Award[723695]["LogId"] = 12000784

tAugustPromotionActivity_Award[3304121] = {}
tAugustPromotionActivity_Award[3304121]["RewardItem"] = {}
tAugustPromotionActivity_Award[3304121]["RewardItem"][1] = {}
tAugustPromotionActivity_Award[3304121]["RewardItem"][1]["Id"] = 3304121
tAugustPromotionActivity_Award[3304121]["RewardItem"][1]["Attr"] = "0 1 "
tAugustPromotionActivity_Award[3304121]["LogId"] = 12000784

tAugustPromotionActivity_Award[3304122] = {}
tAugustPromotionActivity_Award[3304122]["RewardItem"] = {}
tAugustPromotionActivity_Award[3304122]["RewardItem"][1] = {}
tAugustPromotionActivity_Award[3304122]["RewardItem"][1]["Id"] = 3304122
tAugustPromotionActivity_Award[3304122]["RewardItem"][1]["Attr"] = "0 1 "
tAugustPromotionActivity_Award[3304122]["LogId"] = 12000784

tAugustPromotionActivity_Award[730006] = {}
tAugustPromotionActivity_Award[730006]["RewardItem"] = {}
tAugustPromotionActivity_Award[730006]["RewardItem"][1] = {}
tAugustPromotionActivity_Award[730006]["RewardItem"][1]["Id"] = 730006
tAugustPromotionActivity_Award[730006]["RewardItem"][1]["Attr"] = "0 1 "
tAugustPromotionActivity_Award[730006]["LogId"] = 12000784

tAugustPromotionActivity_Award[3304124] = {}
tAugustPromotionActivity_Award[3304124]["RewardItem"] = {}
tAugustPromotionActivity_Award[3304124]["RewardItem"][1] = {}
tAugustPromotionActivity_Award[3304124]["RewardItem"][1]["Id"] = 3304124
tAugustPromotionActivity_Award[3304124]["RewardItem"][1]["Attr"] = "0 1 "
tAugustPromotionActivity_Award[3304124]["LogId"] = 12000784

tAugustPromotionActivity_Award[730008] = {}
tAugustPromotionActivity_Award[730008]["RewardItem"] = {}
tAugustPromotionActivity_Award[730008]["RewardItem"][1] = {}
tAugustPromotionActivity_Award[730008]["RewardItem"][1]["Id"] = 730008
tAugustPromotionActivity_Award[730008]["RewardItem"][1]["Attr"] = "0 1 "
tAugustPromotionActivity_Award[730008]["LogId"] = 12000784

tAugustPromotionActivity_Award[1200005] = {}
tAugustPromotionActivity_Award[1200005]["RewardItem"] = {}
tAugustPromotionActivity_Award[1200005]["RewardItem"][1] = {}
tAugustPromotionActivity_Award[1200005]["RewardItem"][1]["Id"] = 1200005
tAugustPromotionActivity_Award[1200005]["RewardItem"][1]["Attr"] = "0 1 "
tAugustPromotionActivity_Award[1200005]["LogId"] = 12000784

tAugustPromotionActivity_Award[720028] = {}
tAugustPromotionActivity_Award[720028]["RewardItem"] = {}
tAugustPromotionActivity_Award[720028]["RewardItem"][1] = {}
tAugustPromotionActivity_Award[720028]["RewardItem"][1]["Id"] = 720028
tAugustPromotionActivity_Award[720028]["RewardItem"][1]["Attr"] = "0 1 "
tAugustPromotionActivity_Award[720028]["LogId"] = 12000784

local tAugustPromotionActivity_Goods = {}
tAugustPromotionActivity_Goods[1] = {3304117,"Text157","Option55","Text257"}
tAugustPromotionActivity_Goods[2] = {3304118,"Text147","Option42","Text247"}
tAugustPromotionActivity_Goods[3] = {3304119,"Text145","Option4","Text245"}
--tAugustPromotionActivity_Goods[4] = {3304120,"Text148","Option43","Text248"}
tAugustPromotionActivity_Goods[4] = {3304121,"Text156","Option54","Text256"}
tAugustPromotionActivity_Goods[5] = {3304122,"Text154","Option52","Text254"}
tAugustPromotionActivity_Goods[6] = {730006,"Text149","Option44","Text249"}
tAugustPromotionActivity_Goods[7] = {3304124,"Text155","Option53","Text255"}
tAugustPromotionActivity_Goods[8] = {723694,"Text151","Option46","Text251"}
tAugustPromotionActivity_Goods[9] = {723695,"Text152","Option5","Text252"}
tAugustPromotionActivity_Goods[10] = {730008,"Text150","Option45","Text250"}
tAugustPromotionActivity_Goods[11] = {1200005,"Text153","Option51","Text253"}
tAugustPromotionActivity_Goods[12] = {720028,"Text146","Option41","Text246"}

local tAugustPromotionActivity_OpenGift = {}
--桃源灵玉团购大礼包
tAugustPromotionActivity_OpenGift[3304117] = {}
tAugustPromotionActivity_OpenGift[3304117]["RewardItem"] = {}
tAugustPromotionActivity_OpenGift[3304117]["RewardItem"][1] = {}
tAugustPromotionActivity_OpenGift[3304117]["RewardItem"][1]["Id"] = 711504
tAugustPromotionActivity_OpenGift[3304117]["RewardItem"][1]["Attr"] = "0 300 "
tAugustPromotionActivity_OpenGift[3304117]["LogId"] = 12000784
tAugustPromotionActivity_OpenGift[3304117]["DeleteItem"]={}
tAugustPromotionActivity_OpenGift[3304117]["DeleteItem"][1]={}
tAugustPromotionActivity_OpenGift[3304117]["DeleteItem"][1]["Id"]=3304117



--明亮星陨石团购大礼包
tAugustPromotionActivity_OpenGift[3304118] = {}
tAugustPromotionActivity_OpenGift[3304118]["RewardItem"] = {}
tAugustPromotionActivity_OpenGift[3304118]["RewardItem"][1] = {}
tAugustPromotionActivity_OpenGift[3304118]["RewardItem"][1]["Id"] = 3009001
tAugustPromotionActivity_OpenGift[3304118]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
tAugustPromotionActivity_OpenGift[3304118]["LogId"] = 12000784
tAugustPromotionActivity_OpenGift[3304118]["DeleteItem"]={}
tAugustPromotionActivity_OpenGift[3304118]["DeleteItem"][1]={}
tAugustPromotionActivity_OpenGift[3304118]["DeleteItem"][1]["Id"]=3304118



--龙珠团购大礼包
tAugustPromotionActivity_OpenGift[3304119] = {}
tAugustPromotionActivity_OpenGift[3304119]["RewardItem"] = {}
tAugustPromotionActivity_OpenGift[3304119]["RewardItem"][1] = {}
tAugustPromotionActivity_OpenGift[3304119]["RewardItem"][1]["Id"] = 1088000
tAugustPromotionActivity_OpenGift[3304119]["RewardItem"][1]["Attr"] = "0 3"
tAugustPromotionActivity_OpenGift[3304119]["LogId"] = 12000784
tAugustPromotionActivity_OpenGift[3304119]["DeleteItem"]={}
tAugustPromotionActivity_OpenGift[3304119]["DeleteItem"][1]={}
tAugustPromotionActivity_OpenGift[3304119]["DeleteItem"][1]["Id"]=3304119


--气力值团购大礼包
tAugustPromotionActivity_OpenGift[3304121] = {}
tAugustPromotionActivity_OpenGift[3304121]["RewardStrengthValue"] = {}
tAugustPromotionActivity_OpenGift[3304121]["RewardStrengthValue"]["Value"] = 10000
tAugustPromotionActivity_OpenGift[3304121]["LogId"] = 12000784
tAugustPromotionActivity_OpenGift[3304121]["DeleteItem"]={}
tAugustPromotionActivity_OpenGift[3304121]["DeleteItem"][1]={}
tAugustPromotionActivity_OpenGift[3304121]["DeleteItem"][1]["Id"]=3304121


--免费强炼丹团购大礼包
tAugustPromotionActivity_OpenGift[3304122] = {}
tAugustPromotionActivity_OpenGift[3304122]["RewardItem"] = {}
tAugustPromotionActivity_OpenGift[3304122]["RewardItem"][1] = {}
tAugustPromotionActivity_OpenGift[3304122]["RewardItem"][1]["Id"] = 3003124
tAugustPromotionActivity_OpenGift[3304122]["RewardItem"][1]["Attr"] = "0 100"
tAugustPromotionActivity_OpenGift[3304122]["LogId"] = 12000784
tAugustPromotionActivity_OpenGift[3304122]["DeleteItem"]={}
tAugustPromotionActivity_OpenGift[3304122]["DeleteItem"][1]={}
tAugustPromotionActivity_OpenGift[3304122]["DeleteItem"][1]["Id"]=3304122



--600天石豪华大礼包（存在天石满的情况）
tAugustPromotionActivity_OpenGift[3304123] = {}
tAugustPromotionActivity_OpenGift[3304123]["RewardEMoney"] = {}
tAugustPromotionActivity_OpenGift[3304123]["RewardEMoney"]["Value"] = 600
tAugustPromotionActivity_OpenGift[3304123]["LogId"] = 12000784
tAugustPromotionActivity_OpenGift[3304123]["DeleteItem"]={}
tAugustPromotionActivity_OpenGift[3304123]["DeleteItem"][1]={}
tAugustPromotionActivity_OpenGift[3304123]["DeleteItem"][1]["Id"]=3304123


--究极通神丹团购大礼包
tAugustPromotionActivity_OpenGift[3304124] = {}
tAugustPromotionActivity_OpenGift[3304124]["RewardItem"] = {}
tAugustPromotionActivity_OpenGift[3304124]["RewardItem"][1] = {}
tAugustPromotionActivity_OpenGift[3304124]["RewardItem"][1]["Id"] = 3003126
tAugustPromotionActivity_OpenGift[3304124]["RewardItem"][1]["Attr"] = "0 20"
tAugustPromotionActivity_OpenGift[3304124]["LogId"] = 12000784
tAugustPromotionActivity_OpenGift[3304124]["DeleteItem"]={}
tAugustPromotionActivity_OpenGift[3304124]["DeleteItem"][1]={}
tAugustPromotionActivity_OpenGift[3304124]["DeleteItem"][1]["Id"]=3304124



------------------------------------逻辑----------------------------------------


--购买商品
function AugustPromotionActivity_BuyGood(nNpcId)
	
	LinkNpcGossipFunc_New(nNpcId,"1-4")
	
end

--前往活动页面
function AugustPromotionActivity_GoActivityPage()
	User_SendWebPage(tAugustPromotionActivity_Constant["WebSite"])
end

--存储动态表,获取商品的销量
function AugustPromotionActivity_SaveGlobal(nItemId)
	
	local nNum = Get_SysDynaGlobalData(tAugustPromotionActivity_Emoney[nItemId]["Global"],tAugustPromotionActivity_Emoney[nItemId]["GlobalItem"])
	return nNum
end

--改变界面
function AugustPromotionActivity_ChangePage(nItemId,sText,nNum,sBorder,sOption,sNew)
	
	local nBorderNumber = tAugustPromotionActivity_Emoney[nItemId][sBorder]
	
	local nEmoney = tAugustPromotionActivity_Emoney[nItemId][nBorderNumber]
	
	local nReurn = tAugustPromotionActivity_Emoney[nItemId]["OriginalEmoney"] - nEmoney
	
	
	--商品当前的价格
	tAugustPromotionActivity_Emoney[nItemId]["NowEmoney"] = nEmoney
	
	tNpcGossip[21980][sText] = Sys_Alignment(tAugustPromotionActivity_Text[21980][sNew],1,nNum,52,string.format(tAugustPromotionActivity_Text[21980]["Text445"],nReurn),73) .. "\n"
	--tNpcGossip[21980][sText] = string.format(tAugustPromotionActivity_Text[21980][sText],nEmoney,nNum,nReurn)
	
	tNpcGossip[21980][sOption] = string.format(tAugustPromotionActivity_Text[21980][sOption],tAugustPromotionActivity_Emoney[nItemId]["OriginalEmoney"])
	
end


--商品详情的页面
function AugustPromotionActivity_ShopMenu()

	for i,v in ipairs(tAugustPromotionActivity_Goods) do
		
		local nNum =  AugustPromotionActivity_SaveGlobal(v[1])
		
		
		if  nNum <= tAugustPromotionActivity_Emoney[v[1]]["Aborder"] then
			AugustPromotionActivity_ChangePage(v[1],v[2],nNum,"Aborder",v[3],v[4])
			
			elseif nNum <= tAugustPromotionActivity_Emoney[v[1]]["Bborder"] then
				AugustPromotionActivity_ChangePage(v[1],v[2],nNum,"Bborder",v[3],v[4])
			
				else
					AugustPromotionActivity_ChangePage(v[1],v[2],nNum,"Cborder",v[3],v[4])
		end
		--AugustPromotionActivity_ChangePage(v[1],v[2],nNum,"Aborder",v[3],v[4])
	end
	
end

--买促销商品具体
function AugustPromotionActivity_BugGoodsItem(nItemId,nNpcId)
	local nEmoney = tAugustPromotionActivity_Emoney[nItemId]["OriginalEmoney"]
	
	
	--二次确认
	tAugustPromotionActivity_SureAgain = nItemId
	LinkNpcGossipFunc_New(nNpcId,"1-7")
end

--下一页和上一页
function AugustPromotionActivity_NextandLast(nNum,nNpcId)
	if nNum == 1 then
		LinkNpcGossipFunc_New(nNpcId,"1-8")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-4")
	end
end


--改变动态变量表
function AugustPromotionActivity_ChangeGlobal(nItemId)
	local nGlobalId
	local nGlobalData

	nGlobalId = tAugustPromotionActivity_Emoney[nItemId]["Global"]
	nGlobalData = Get_SysDynaGlobalData(nGlobalId,tAugustPromotionActivity_Emoney[nItemId]["GlobalItem"])
	Sys_SetSynaGlobalData(nGlobalId,tAugustPromotionActivity_Emoney[nItemId]["GlobalItem"],nGlobalData + 1)
end
--二次确认
function AugustPromotionActivity_SureAgain(nNpcId)
	local nItemId = tAugustPromotionActivity_SureAgain
	
	local nEMoney = tAugustPromotionActivity_Emoney[nItemId]["OriginalEmoney"]
	
	--Get_UserEMoney()
	--判断天石
	if tonumber(nEMoney) > Get_UserEMoney() then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(1) then 
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	
	
	--扣除天石
	
	if User_AddEMoney(-nEMoney) then
		
		--改变动态变量
		AugustPromotionActivity_ChangeGlobal(nItemId)
		
		--添加物品
		RewardTemplate_UseItemAndMsg(tAugustPromotionActivity_Award[nItemId])
	end
end

--打开礼包
function AugustPromotionActivity_OpenGift(nItemId)

	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	if nItemId == tAugustPromotionActivity_OpenGift[3304123]["DeleteItem"][1]["Id"] then
	--天石已满的情况
		local UserEmoney = Get_UserEMoney() + tAugustPromotionActivity_EmoneyNumber
		if UserEmoney > G_User_MaxEmoney then
			User_TalkChannel2005(tAugustPromotionActivity_Text["Emoney"])
			return false
		end
	end
	
	--正常开启礼包
	RewardTemplate_UseItemAndMsg(tAugustPromotionActivity_OpenGift[nItemId])
end
------------------------------------npc模板----------------------------------------
tNpcFace[4978]=119
tNpcGossip[21980] = tNpcGossip[21980] or DefaultNpc:new{}
tNpcGossip[21980]["OptionHidden"] = 1
tNpcGossip[21980]["DialogueText"] = tAugustPromotionActivity_Text[21980]

--活动前
tNpcGossip[21980]["Text1-1"] = {111,112,113}
tNpcGossip[21980]["tOption1-1"] = {1}
tNpcGossip[21980]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tAugustPromotionActivity_Constant["BeforeActivityTime"])
end

--活动后
tNpcGossip[21980]["Text1-2"] = {121}
tNpcGossip[21980]["tOption1-2"] = {2}
tNpcGossip[21980]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tAugustPromotionActivity_Constant["ActivityTime"])
end

--活动中
tNpcGossip[21980]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[21980]["tOption1-3"] = {3,31}

tNpcGossip[21980]["OptionFunc3"] = "AugustPromotionActivity_BuyGood</N>21980"
tNpcGossip[21980]["OptionFunc31"] = "AugustPromotionActivity_GoActivityPage"

--购买商品界面
tNpcGossip[21980]["Text1-4"] = {141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158}
tNpcGossip[21980]["tOption1-4"] = {4,41,42,43,44,45,46,47}
tNpcGossip[21980]["ChkFunc1-4"] = function ()

	--1.天石售价
	--2.当前销量
	--3.当前可返现
	--4.选项中的天石售价
	AugustPromotionActivity_ShopMenu()
	return true
	
end
tNpcGossip[21980]["OptionFunc4"] = "AugustPromotionActivity_BugGoodsItem</N>3304119</N>21980"
tNpcGossip[21980]["OptionFunc41"] = "AugustPromotionActivity_BugGoodsItem</N>720028</N>21980"
tNpcGossip[21980]["OptionFunc42"] = "AugustPromotionActivity_BugGoodsItem</N>3304118</N>21980"
tNpcGossip[21980]["OptionFunc43"] = "AugustPromotionActivity_BugGoodsItem</N>3304120</N>21980"
tNpcGossip[21980]["OptionFunc44"] = "AugustPromotionActivity_BugGoodsItem</N>730006</N>21980"
tNpcGossip[21980]["OptionFunc45"] = "AugustPromotionActivity_BugGoodsItem</N>730008</N>21980"
tNpcGossip[21980]["OptionFunc46"] = "AugustPromotionActivity_BugGoodsItem</N>723694</N>21980"
tNpcGossip[21980]["OptionFunc47"] = "AugustPromotionActivity_NextandLast</N>1</N>21980"

--天石不足
tNpcGossip[21980]["Text1-5"] = {160}
tNpcGossip[21980]["tOption1-5"] = {6}

--背包空间不足
tNpcGossip[21980]["Text1-6"] = {170}
tNpcGossip[21980]["tOption1-6"] = {7}


--二次确认
tNpcGossip[21980]["Text1-7"] = {180}
tNpcGossip[21980]["tOption1-7"] = {8,81}
tNpcGossip[21980]["OptionFunc8"] = "AugustPromotionActivity_SureAgain</N>21980"
tNpcGossip[21980]["ChkFunc1-7"] = function()
	local nItemId = tAugustPromotionActivity_SureAgain
	
	--当前天石价格
	local nEmoney = tAugustPromotionActivity_Emoney[nItemId]["OriginalEmoney"]
	
	--当前商品名称
	local sItemName = Get_ItemtypeName(nItemId)
	
	--重写确认语句中的天石价格和购买物品
	tNpcGossip[21980]["Text180"] = string.format(tAugustPromotionActivity_Text[21980]["Text180"],nEmoney,sItemName)
	return true
end

--下一页面
tNpcGossip[21980]["Text1-8"] = tNpcGossip[21980]["Text1-4"]
tNpcGossip[21980]["tOption1-8"] = {5,51,52,53,54,55,56}
tNpcGossip[21980]["OptionFunc5"] = "AugustPromotionActivity_BugGoodsItem</N>723695</N>21980"
tNpcGossip[21980]["OptionFunc51"] = "AugustPromotionActivity_BugGoodsItem</N>1200005</N>21980"
tNpcGossip[21980]["OptionFunc52"] = "AugustPromotionActivity_BugGoodsItem</N>3304122</N>21980"
tNpcGossip[21980]["OptionFunc53"] = "AugustPromotionActivity_BugGoodsItem</N>3304124</N>21980"
tNpcGossip[21980]["OptionFunc54"] = "AugustPromotionActivity_BugGoodsItem</N>3304121</N>21980"
tNpcGossip[21980]["OptionFunc55"] = "AugustPromotionActivity_BugGoodsItem</N>3304117</N>21980"
tNpcGossip[21980]["OptionFunc56"] = "AugustPromotionActivity_NextandLast</N>2</N>21980"
tNpcGossip[21980]["ChkFunc1-8"] = function ()

	--1.天石售价
	--2.当前销量
	--3.当前可返现
	--4.选项中的天石售价
	AugustPromotionActivity_ShopMenu()
	return true
end

--------------------------------------物品模板-----------------------------------
tItem[3304117] = tItem[3304117] or {}
tItem[3304117]["Function"] = function (nItemId,sItemName)
	AugustPromotionActivity_OpenGift(nItemId)
end

tItem[3304118] = tItem[3304117]
tItem[3304119] = tItem[3304117]
tItem[3304121] = tItem[3304117]
tItem[3304122] = tItem[3304117]
tItem[3304123] = tItem[3304117]
tItem[3304124] = tItem[3304117]


