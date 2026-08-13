-----------------------------------------------------------------------------------------------------
--Name:			170217[英文征服][活动脚本]3月帮派建设大促
--Purpose:		3月帮派建设大促
--Creator: 		杨晓晓
--Created:		2017/02/17
------------------------------------------------------------------------------------------------------
--命名前缀
--tMarchFactionSales_
------------------------------------------------------------------------------------------------------
--logid : 12000651

--常量表配置
local tMarchFactionSales_Cont = {}
	--活动时间
	tMarchFactionSales_Cont["ActivityTime"] = "2017-03-16 00:00 2017-04-08 23:59"
--物品表
local	tMarchFactionSales_Reward = {}
--配置奖励表
	--+6苍之怒焰（赠）礼包(拳套)
	tMarchFactionSales_Reward[3302680] = {}
	tMarchFactionSales_Reward[3302680]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302680]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302680]["DeleteItem"][1]["Id"] = 3302680
	tMarchFactionSales_Reward[3302680]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302680]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302680]["RewardItem"][1]["Id"] = 624029
	tMarchFactionSales_Reward[3302680]["RewardItem"][1]["Attr"] ="0 1 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302680]["LogId"] = 12000651
	--+6无为如意拂尘（赠）礼包
	tMarchFactionSales_Reward[3302681] = {}
	tMarchFactionSales_Reward[3302681]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302681]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302681]["DeleteItem"][1]["Id"] = 3302681
	tMarchFactionSales_Reward[3302681]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302681]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302681]["RewardItem"][1]["Id"] = 619029
	tMarchFactionSales_Reward[3302681]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 6"
	tMarchFactionSales_Reward[3302681]["LogId"] = 12000651
	
	--雷神版本新增非赠装备购买
	--+6苍之怒焰（赠）礼包(拳套)
	tMarchFactionSales_Reward[3320432] = {}
	tMarchFactionSales_Reward[3320432]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3320432]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320432]["DeleteItem"][1]["Id"] = 3320432
	tMarchFactionSales_Reward[3320432]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3320432]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320432]["RewardItem"][1]["Id"] = 624029
	tMarchFactionSales_Reward[3320432]["RewardItem"][1]["Attr"] ="0 1 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320432]["LogId"] = 12000651
	--+6无为如意拂尘（赠）礼包
	tMarchFactionSales_Reward[3320433] = {}
	tMarchFactionSales_Reward[3320433]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3320433]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320433]["DeleteItem"][1]["Id"] = 3320433
	tMarchFactionSales_Reward[3320433]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3320433]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320433]["RewardItem"][1]["Id"] = 619029
	tMarchFactionSales_Reward[3320433]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 6"
	tMarchFactionSales_Reward[3320433]["LogId"] = 12000651
	
	--雷神金币
	tMarchFactionSales_Reward[3320661] = {}
	tMarchFactionSales_Reward[3320661]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3320661]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320661]["DeleteItem"][1]["Id"] = 3320661
	tMarchFactionSales_Reward[3320661]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3320661]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320661]["RewardItem"][1]["Id"] = 624029
	tMarchFactionSales_Reward[3320661]["RewardItem"][1]["Attr"] ="0 1 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320661]["LogId"] = 12000651
	--+6无为如意拂尘（赠）礼包
	tMarchFactionSales_Reward[3320662] = {}
	tMarchFactionSales_Reward[3320662]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3320662]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320662]["DeleteItem"][1]["Id"] = 3320662
	tMarchFactionSales_Reward[3320662]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3320662]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320662]["RewardItem"][1]["Id"] = 619029
	tMarchFactionSales_Reward[3320662]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 6"
	tMarchFactionSales_Reward[3320662]["LogId"] = 12000651
	
	--3月+8赤练石包：赤练石+8*1；送花岗岩*250
	tMarchFactionSales_Reward[3302374] = {}
	tMarchFactionSales_Reward[3302374][1] = {}
	tMarchFactionSales_Reward[3302374][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302374][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302374][1]["DeleteItem"][1]["Id"] = 3302374
	tMarchFactionSales_Reward[3302374][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302374][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302374][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302374][1]["RewardItem"][1]["Attr"] = "0 250" 
	tMarchFactionSales_Reward[3302374][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302374][1]["RewardItem"][2]["Id"] = 730008
	tMarchFactionSales_Reward[3302374][1]["RewardItem"][2]["Attr"] = "0 1" 
	tMarchFactionSales_Reward[3302374][1]["LogId"] = 12000651
	
	tMarchFactionSales_Reward[3302374][2] = {}
	tMarchFactionSales_Reward[3302374][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302374][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302374][2]["DeleteItem"][1]["Id"] = 3302374
	tMarchFactionSales_Reward[3302374][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302374][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302374][2]["RewardItem"][1]["Id"] = 730008
	tMarchFactionSales_Reward[3302374][2]["RewardItem"][1]["Attr"] = "0 1"
	tMarchFactionSales_Reward[3302374][2]["LogId"] = 12000651
	--3月回气丹包：回气丹*50；送花岗岩*40
	tMarchFactionSales_Reward[3302375] = {}
	tMarchFactionSales_Reward[3302375][1] = {}
	tMarchFactionSales_Reward[3302375][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302375][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302375][1]["DeleteItem"][1]["Id"] = 3302375
	tMarchFactionSales_Reward[3302375][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302375][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302375][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302375][1]["RewardItem"][1]["Attr"] = "0 40" 
	tMarchFactionSales_Reward[3302375][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302375][1]["RewardItem"][2]["Id"] = 3005473
	tMarchFactionSales_Reward[3302375][1]["RewardItem"][2]["Attr"] = "0 5" 
	tMarchFactionSales_Reward[3302375][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302375][2] = {}
	tMarchFactionSales_Reward[3302375][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302375][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302375][2]["DeleteItem"][1]["Id"] = 3302375
	tMarchFactionSales_Reward[3302375][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302375][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302375][2]["RewardItem"][1]["Id"] = 3005473
	tMarchFactionSales_Reward[3302375][2]["RewardItem"][1]["Attr"] = "0 5"
	tMarchFactionSales_Reward[3302375][2]["LogId"] = 12000651
	--3月大爆丹包：大爆丹*100；送花岗岩*33
	tMarchFactionSales_Reward[3302376] = {}
	tMarchFactionSales_Reward[3302376][1] = {}
	tMarchFactionSales_Reward[3302376][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302376][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302376][1]["DeleteItem"][1]["Id"] = 3302376
	tMarchFactionSales_Reward[3302376][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302376][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302376][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302376][1]["RewardItem"][1]["Attr"] = "0 33" 
	tMarchFactionSales_Reward[3302376][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302376][1]["RewardItem"][2]["Id"] = 3003126
	tMarchFactionSales_Reward[3302376][1]["RewardItem"][2]["Attr"] = "0 100" 
	tMarchFactionSales_Reward[3302376][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302376][2] = {}
	tMarchFactionSales_Reward[3302376][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302376][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302376][2]["DeleteItem"][1]["Id"] = 3302376
	tMarchFactionSales_Reward[3302376][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302376][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302376][2]["RewardItem"][1]["Id"] = 3003126
	tMarchFactionSales_Reward[3302376][2]["RewardItem"][1]["Attr"] = "0 100"
	tMarchFactionSales_Reward[3302376][2]["LogId"] = 12000651
	--3月大固化石包：大固化石*1；送花岗岩*35
	tMarchFactionSales_Reward[3302377] = {}
	tMarchFactionSales_Reward[3302377][1] = {}
	tMarchFactionSales_Reward[3302377][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302377][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302377][1]["DeleteItem"][1]["Id"] = 3302377
	tMarchFactionSales_Reward[3302377][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302377][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302377][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302377][1]["RewardItem"][1]["Attr"] = "0 35" 
	tMarchFactionSales_Reward[3302377][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302377][1]["RewardItem"][2]["Id"] = 723695
	tMarchFactionSales_Reward[3302377][1]["RewardItem"][2]["Attr"] = "0 1" 
	tMarchFactionSales_Reward[3302377][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302377][2] = {}
	tMarchFactionSales_Reward[3302377][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302377][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302377][2]["DeleteItem"][1]["Id"] = 3302377
	tMarchFactionSales_Reward[3302377][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302377][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302377][2]["RewardItem"][1]["Id"] = 723695
	tMarchFactionSales_Reward[3302377][2]["RewardItem"][1]["Attr"] = "0 1"
	tMarchFactionSales_Reward[3302377][2]["LogId"] = 12000651
	--3月龙珠卷包：龙珠卷*1，送花岗岩*16
	tMarchFactionSales_Reward[3302378] = {}
	tMarchFactionSales_Reward[3302378][1] = {}
	tMarchFactionSales_Reward[3302378][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302378][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302378][1]["DeleteItem"][1]["Id"] = 3302378
	tMarchFactionSales_Reward[3302378][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302378][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302378][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302378][1]["RewardItem"][1]["Attr"] = "0 16" 
	tMarchFactionSales_Reward[3302378][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302378][1]["RewardItem"][2]["Id"] = 720028
	tMarchFactionSales_Reward[3302378][1]["RewardItem"][2]["Attr"] = "0 1" 
	tMarchFactionSales_Reward[3302378][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302378][2] = {}
	tMarchFactionSales_Reward[3302378][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302378][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302378][2]["DeleteItem"][1]["Id"] = 3302378
	tMarchFactionSales_Reward[3302378][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302378][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302378][2]["RewardItem"][1]["Id"] = 720028
	tMarchFactionSales_Reward[3302378][2]["RewardItem"][1]["Attr"] = "0 1"
	tMarchFactionSales_Reward[3302378][2]["LogId"] = 12000651
	--3月稀有马包：可选+6稀有马*1，送花岗岩*70
	tMarchFactionSales_Reward[3302379] = {}
	tMarchFactionSales_Reward[3302379][1] = {}
	tMarchFactionSales_Reward[3302379][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302379][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302379][1]["DeleteItem"][1]["Id"] = 3302379
	tMarchFactionSales_Reward[3302379][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302379][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302379][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302379][1]["RewardItem"][1]["Attr"] = "0 70" 
	tMarchFactionSales_Reward[3302379][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302379][1]["RewardItem"][2]["Id"] = 3004820
	tMarchFactionSales_Reward[3302379][1]["RewardItem"][2]["Attr"] = "0 1" 
	tMarchFactionSales_Reward[3302379][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302379][2] = {}
	tMarchFactionSales_Reward[3302379][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302379][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302379][2]["DeleteItem"][1]["Id"] = 3302379
	tMarchFactionSales_Reward[3302379][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302379][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302379][2]["RewardItem"][1]["Id"] = 3004820
	tMarchFactionSales_Reward[3302379][2]["RewardItem"][1]["Attr"] = "0 1"
	tMarchFactionSales_Reward[3302379][2]["LogId"] = 12000651
	--3月金币包：2亿金币，送花岗岩*33
	tMarchFactionSales_Reward[3302380] = {}
	tMarchFactionSales_Reward[3302380][1] = {}
	tMarchFactionSales_Reward[3302380][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302380][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302380][1]["DeleteItem"][1]["Id"] = 3302380
	tMarchFactionSales_Reward[3302380][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302380][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302380][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302380][1]["RewardItem"][1]["Attr"] = "0 33" 
	tMarchFactionSales_Reward[3302380][1]["RewardMoney"] = {}
	tMarchFactionSales_Reward[3302380][1]["RewardMoney"]["Value"] = 200000000 
	tMarchFactionSales_Reward[3302380][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302380][2] = {}
	tMarchFactionSales_Reward[3302380][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302380][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302380][2]["DeleteItem"][1]["Id"] = 3302380
	tMarchFactionSales_Reward[3302380][2]["RewardMoney"] = {}
	tMarchFactionSales_Reward[3302380][2]["RewardMoney"]["Value"] = 200000000 
	tMarchFactionSales_Reward[3302380][2]["LogId"] = 12000651
	--3月金刚尖钻包：金刚尖钻*2，送花岗岩*30
	tMarchFactionSales_Reward[3302381] = {}
	tMarchFactionSales_Reward[3302381][1] = {}
	tMarchFactionSales_Reward[3302381][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302381][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302381][1]["DeleteItem"][1]["Id"] = 3302381
	tMarchFactionSales_Reward[3302381][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302381][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302381][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302381][1]["RewardItem"][1]["Attr"] = "0 30" 
	tMarchFactionSales_Reward[3302381][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302381][1]["RewardItem"][2]["Id"] = 1200005
	tMarchFactionSales_Reward[3302381][1]["RewardItem"][2]["Attr"] = "0 2" 
	tMarchFactionSales_Reward[3302381][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302381][2] = {}
	tMarchFactionSales_Reward[3302381][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302381][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302381][2]["DeleteItem"][1]["Id"] = 3302381
	tMarchFactionSales_Reward[3302381][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302381][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302381][2]["RewardItem"][1]["Id"] = 1200005
	tMarchFactionSales_Reward[3302381][2]["RewardItem"][1]["Attr"] = "0 2"
	tMarchFactionSales_Reward[3302381][2]["LogId"] = 12000651

	--3月赤练石+5包：赤练石+5*1，送花岗岩*7
	tMarchFactionSales_Reward[3302382] = {}
	tMarchFactionSales_Reward[3302382][1] = {}
	tMarchFactionSales_Reward[3302382][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302382][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302382][1]["DeleteItem"][1]["Id"] = 3302382
	tMarchFactionSales_Reward[3302382][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302382][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302382][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302382][1]["RewardItem"][1]["Attr"] = "0 7" 
	tMarchFactionSales_Reward[3302382][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302382][1]["RewardItem"][2]["Id"] = 730005
	tMarchFactionSales_Reward[3302382][1]["RewardItem"][2]["Attr"] = "0 1" 
	tMarchFactionSales_Reward[3302382][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302382][2] = {}
	tMarchFactionSales_Reward[3302382][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302382][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302382][2]["DeleteItem"][1]["Id"] = 3302382
	tMarchFactionSales_Reward[3302382][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302382][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302382][2]["RewardItem"][1]["Id"] = 730005
	tMarchFactionSales_Reward[3302382][2]["RewardItem"][1]["Attr"] = "0 1"
	tMarchFactionSales_Reward[3302382][2]["LogId"] = 12000651
	--3月小固化石包：小固化石*1，送花岗岩*3
	tMarchFactionSales_Reward[3302383] = {}
	tMarchFactionSales_Reward[3302383][1] = {}
	tMarchFactionSales_Reward[3302383][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302383][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302383][1]["DeleteItem"][1]["Id"] = 3302383
	tMarchFactionSales_Reward[3302383][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302383][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302383][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302383][1]["RewardItem"][1]["Attr"] = "0 3" 
	tMarchFactionSales_Reward[3302383][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302383][1]["RewardItem"][2]["Id"] = 723694
	tMarchFactionSales_Reward[3302383][1]["RewardItem"][2]["Attr"] = "0 1" 
	tMarchFactionSales_Reward[3302383][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302383][2] = {}
	tMarchFactionSales_Reward[3302383][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302383][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302383][2]["DeleteItem"][1]["Id"] = 3302383
	tMarchFactionSales_Reward[3302383][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302383][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302383][2]["RewardItem"][1]["Id"] = 723694
	tMarchFactionSales_Reward[3302383][2]["RewardItem"][1]["Attr"] = "0 1"
	tMarchFactionSales_Reward[3302383][2]["LogId"] = 12000651
	--3月龙珠包：龙珠*2，送花岗岩*3
	tMarchFactionSales_Reward[3302384] = {}
	tMarchFactionSales_Reward[3302384][1] = {}
	tMarchFactionSales_Reward[3302384][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302384][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302384][1]["DeleteItem"][1]["Id"] = 3302384
	tMarchFactionSales_Reward[3302384][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302384][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302384][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302384][1]["RewardItem"][1]["Attr"] = "0 3" 
	tMarchFactionSales_Reward[3302384][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302384][1]["RewardItem"][2]["Id"] = 1088000
	tMarchFactionSales_Reward[3302384][1]["RewardItem"][2]["Attr"] = "0 2" 
	tMarchFactionSales_Reward[3302384][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302384][2] = {}
	tMarchFactionSales_Reward[3302384][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302384][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302384][2]["DeleteItem"][1]["Id"] = 3302384
	tMarchFactionSales_Reward[3302384][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302384][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302384][2]["RewardItem"][1]["Id"] = 1088000
	tMarchFactionSales_Reward[3302384][2]["RewardItem"][1]["Attr"] = "0 2"
	tMarchFactionSales_Reward[3302384][2]["LogId"] = 12000651
	--3月玄元包：极品玄元*1，送花岗岩*6
	tMarchFactionSales_Reward[3302385] = {}
	tMarchFactionSales_Reward[3302385][1] = {}
	tMarchFactionSales_Reward[3302385][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302385][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302385][1]["DeleteItem"][1]["Id"] = 3302385
	tMarchFactionSales_Reward[3302385][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302385][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302385][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302385][1]["RewardItem"][1]["Attr"] = "0 6" 
	tMarchFactionSales_Reward[3302385][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302385][1]["RewardItem"][2]["Id"] = 700073
	tMarchFactionSales_Reward[3302385][1]["RewardItem"][2]["Attr"] = "0 1" 
	tMarchFactionSales_Reward[3302385][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302385][2] = {}
	tMarchFactionSales_Reward[3302385][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302385][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302385][2]["DeleteItem"][1]["Id"] = 3302385
	tMarchFactionSales_Reward[3302385][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302385][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302385][2]["RewardItem"][1]["Id"] = 700073
	tMarchFactionSales_Reward[3302385][2]["RewardItem"][1]["Attr"] = "0 1"
	tMarchFactionSales_Reward[3302385][2]["LogId"] = 12000651
	--3月玉瓶包：净水玉瓶*1，送花岗岩*7
	tMarchFactionSales_Reward[3302386] = {}
	tMarchFactionSales_Reward[3302386][1] = {}
	tMarchFactionSales_Reward[3302386][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302386][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302386][1]["DeleteItem"][1]["Id"] = 3302386
	tMarchFactionSales_Reward[3302386][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302386][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302386][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302386][1]["RewardItem"][1]["Attr"] = "0 7" 
	tMarchFactionSales_Reward[3302386][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302386][1]["RewardItem"][2]["Id"] = 2100045
	tMarchFactionSales_Reward[3302386][1]["RewardItem"][2]["Attr"] = "0 1" 
	tMarchFactionSales_Reward[3302386][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302386][2] = {}
	tMarchFactionSales_Reward[3302386][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302386][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302386][2]["DeleteItem"][1]["Id"] = 3302386
	tMarchFactionSales_Reward[3302386][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302386][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302386][2]["RewardItem"][1]["Id"] = 2100045
	tMarchFactionSales_Reward[3302386][2]["RewardItem"][1]["Attr"] = "0 1"
	tMarchFactionSales_Reward[3302386][2]["LogId"] = 12000651
	--3月葫芦包：宝葫芦*1，送花岗岩*10
	tMarchFactionSales_Reward[3302387] = {}
	tMarchFactionSales_Reward[3302387][1] = {}
	tMarchFactionSales_Reward[3302387][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302387][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302387][1]["DeleteItem"][1]["Id"] = 3302387
	tMarchFactionSales_Reward[3302387][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302387][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302387][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302387][1]["RewardItem"][1]["Attr"] = "0 10" 
	tMarchFactionSales_Reward[3302387][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302387][1]["RewardItem"][2]["Id"] = 2100025
	tMarchFactionSales_Reward[3302387][1]["RewardItem"][2]["Attr"] = "0 1" 
	tMarchFactionSales_Reward[3302387][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302387][2] = {}
	tMarchFactionSales_Reward[3302387][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302387][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302387][2]["DeleteItem"][1]["Id"] = 3302387
	tMarchFactionSales_Reward[3302387][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302387][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302387][2]["RewardItem"][1]["Id"] = 2100025
	tMarchFactionSales_Reward[3302387][2]["RewardItem"][1]["Attr"] = "0 1"
	tMarchFactionSales_Reward[3302387][2]["LogId"] = 12000651
	--3月金刚尖钻包小：金刚坚钻*1，送花岗岩*15
	tMarchFactionSales_Reward[3302388] = {}
	tMarchFactionSales_Reward[3302388][1] = {}
	tMarchFactionSales_Reward[3302388][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302388][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302388][1]["DeleteItem"][1]["Id"] = 3302388
	tMarchFactionSales_Reward[3302388][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302388][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302388][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302388][1]["RewardItem"][1]["Attr"] = "0 15" 
	tMarchFactionSales_Reward[3302388][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302388][1]["RewardItem"][2]["Id"] = 1200005
	tMarchFactionSales_Reward[3302388][1]["RewardItem"][2]["Attr"] = "0 1" 
	tMarchFactionSales_Reward[3302388][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302388][2] = {}
	tMarchFactionSales_Reward[3302388][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302388][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302388][2]["DeleteItem"][1]["Id"] = 3302388
	tMarchFactionSales_Reward[3302388][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302388][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302388][2]["RewardItem"][1]["Id"] = 1200005
	tMarchFactionSales_Reward[3302388][2]["RewardItem"][1]["Attr"] = "0 1"
	tMarchFactionSales_Reward[3302388][2]["LogId"] = 12000651
	--3月强练丹包：强练丹*100，送花岗岩*7
	tMarchFactionSales_Reward[3302389] = {}
	tMarchFactionSales_Reward[3302389][1] = {}
	tMarchFactionSales_Reward[3302389][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302389][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302389][1]["DeleteItem"][1]["Id"] = 3302389
	tMarchFactionSales_Reward[3302389][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302389][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302389][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302389][1]["RewardItem"][1]["Attr"] = "0 7" 
	tMarchFactionSales_Reward[3302389][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302389][1]["RewardItem"][2]["Id"] = 3003124
	tMarchFactionSales_Reward[3302389][1]["RewardItem"][2]["Attr"] = "0 100" 
	tMarchFactionSales_Reward[3302389][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302389][2] = {}
	tMarchFactionSales_Reward[3302389][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302389][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302389][2]["DeleteItem"][1]["Id"] = 3302389
	tMarchFactionSales_Reward[3302389][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302389][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302389][2]["RewardItem"][1]["Id"] = 3003124
	tMarchFactionSales_Reward[3302389][2]["RewardItem"][1]["Attr"] = "0 100"
	tMarchFactionSales_Reward[3302389][2]["LogId"] = 12000651
	--3月大爆丹包：大爆丹*20，送花岗岩*7
	tMarchFactionSales_Reward[3302390] = {}
	tMarchFactionSales_Reward[3302390][1] = {}
	tMarchFactionSales_Reward[3302390][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302390][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302390][1]["DeleteItem"][1]["Id"] = 3302390
	tMarchFactionSales_Reward[3302390][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302390][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302390][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302390][1]["RewardItem"][1]["Attr"] = "0 7" 
	tMarchFactionSales_Reward[3302390][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302390][1]["RewardItem"][2]["Id"] = 3003126
	tMarchFactionSales_Reward[3302390][1]["RewardItem"][2]["Attr"] = "0 20" 
	tMarchFactionSales_Reward[3302390][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302390][2] = {}
	tMarchFactionSales_Reward[3302390][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302390][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302390][2]["DeleteItem"][1]["Id"] = 3302390
	tMarchFactionSales_Reward[3302390][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302390][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302390][2]["RewardItem"][1]["Id"] = 3003126
	tMarchFactionSales_Reward[3302390][2]["RewardItem"][1]["Attr"] = "0 20"
	tMarchFactionSales_Reward[3302390][2]["LogId"] = 12000651
	--3月回气丹包小：回气丹*10，送花岗岩*10
	tMarchFactionSales_Reward[3302391] = {}
	tMarchFactionSales_Reward[3302391][1] = {}
	tMarchFactionSales_Reward[3302391][1]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302391][1]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302391][1]["DeleteItem"][1]["Id"] = 3302391
	tMarchFactionSales_Reward[3302391][1]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302391][1]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302391][1]["RewardItem"][1]["Id"] = 3005912
	tMarchFactionSales_Reward[3302391][1]["RewardItem"][1]["Attr"] = "0 10" 
	tMarchFactionSales_Reward[3302391][1]["RewardItem"][2] = {}
	tMarchFactionSales_Reward[3302391][1]["RewardItem"][2]["Id"] = 3005473
	tMarchFactionSales_Reward[3302391][1]["RewardItem"][2]["Attr"] = "0 1" 
	tMarchFactionSales_Reward[3302391][1]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302391][2] = {}
	tMarchFactionSales_Reward[3302391][2]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302391][2]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302391][2]["DeleteItem"][1]["Id"] = 3302391
	tMarchFactionSales_Reward[3302391][2]["RewardItem"] = {} 
	tMarchFactionSales_Reward[3302391][2]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302391][2]["RewardItem"][1]["Id"] = 3005473
	tMarchFactionSales_Reward[3302391][2]["RewardItem"][1]["Attr"] = "0 1"
	tMarchFactionSales_Reward[3302391][2]["LogId"] = 1200058

	--坚固保护罩礼盒 
	tMarchFactionSales_Reward[3302370] = {}
	tMarchFactionSales_Reward[3302370]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302370]["RewardItem"] = {}
	tMarchFactionSales_Reward[3302370]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302370]["RewardItem"][1]["Id"] = 3003500
	tMarchFactionSales_Reward[3302370]["RewardItem"][1]["Attr"] = "0 1"
	tMarchFactionSales_Reward[3302370]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302370]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302370]["DeleteItem"][1]["Id"] = 3302370
	--极品+6PrideFan(B)礼盒 
	tMarchFactionSales_Reward[3302491] = {}
	tMarchFactionSales_Reward[3302491]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302491]["RewardItem"] = {}
	tMarchFactionSales_Reward[3302491]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302491]["RewardItem"][1]["Id"] = 626029
	tMarchFactionSales_Reward[3302491]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302491]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302491]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302491]["DeleteItem"][1]["Id"] = 3302491
	--极品+6MysticWindrobe(B)礼盒 
	tMarchFactionSales_Reward[3302492] = {}
	tMarchFactionSales_Reward[3302492]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302492]["RewardItem"] = {}
	tMarchFactionSales_Reward[3302492]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302492]["RewardItem"][1]["Id"] = 101009
	tMarchFactionSales_Reward[3302492]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302492]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302492]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302492]["DeleteItem"][1]["Id"] = 3302492
	--极品+6DarkCloudHat(B)礼盒 
	tMarchFactionSales_Reward[3302493] = {}
	tMarchFactionSales_Reward[3302493]["LogId"] = 12000651
	tMarchFactionSales_Reward[3302493]["RewardItem"] = {}
	tMarchFactionSales_Reward[3302493]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3302493]["RewardItem"][1]["Id"] = 170009
	tMarchFactionSales_Reward[3302493]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302493]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3302493]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3302493]["DeleteItem"][1]["Id"] = 3302493
	
	--雷神版本新增非赠装备购买
	--极品+6PrideFan(B)礼盒 
	tMarchFactionSales_Reward[3320388] = {}
	tMarchFactionSales_Reward[3320388]["LogId"] = 12000651
	tMarchFactionSales_Reward[3320388]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320388]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320388]["RewardItem"][1]["Id"] = 626029
	tMarchFactionSales_Reward[3320388]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320388]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3320388]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320388]["DeleteItem"][1]["Id"] = 3320388
	
	tMarchFactionSales_Reward[3321425] = {}
	tMarchFactionSales_Reward[3321425]["LogId"] = 12000651
	tMarchFactionSales_Reward[3321425]["RewardItem"] = {}
	tMarchFactionSales_Reward[3321425]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3321425]["RewardItem"][1]["Id"] = 626029
	tMarchFactionSales_Reward[3321425]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321425]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3321425]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3321425]["DeleteItem"][1]["Id"] = 3321425
	
	tMarchFactionSales_Reward[3312564] = {}
	tMarchFactionSales_Reward[3312564]["LogId"] = 12000651
	tMarchFactionSales_Reward[3312564]["RewardItem"] = {}
	tMarchFactionSales_Reward[3312564]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3312564]["RewardItem"][1]["Id"] = 626029
	tMarchFactionSales_Reward[3312564]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312564]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3312564]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3312564]["DeleteItem"][1]["Id"] = 3312564
	
	tMarchFactionSales_Reward[3312614] = {}
	tMarchFactionSales_Reward[3312614]["LogId"] = 12000651
	tMarchFactionSales_Reward[3312614]["RewardItem"] = {}
	tMarchFactionSales_Reward[3312614]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3312614]["RewardItem"][1]["Id"] = 626029
	tMarchFactionSales_Reward[3312614]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312614]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3312614]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3312614]["DeleteItem"][1]["Id"] = 3312614
	
	--极品+6MysticWindrobe(B)礼盒 
	tMarchFactionSales_Reward[3320389] = {}
	tMarchFactionSales_Reward[3320389]["LogId"] = 12000651
	tMarchFactionSales_Reward[3320389]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320389]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320389]["RewardItem"][1]["Id"] = 101009
	tMarchFactionSales_Reward[3320389]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320389]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3320389]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320389]["DeleteItem"][1]["Id"] = 3320389
	
	tMarchFactionSales_Reward[3321424] = {}
	tMarchFactionSales_Reward[3321424]["LogId"] = 12000651
	tMarchFactionSales_Reward[3321424]["RewardItem"] = {}
	tMarchFactionSales_Reward[3321424]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3321424]["RewardItem"][1]["Id"] = 101009
	tMarchFactionSales_Reward[3321424]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321424]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3321424]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3321424]["DeleteItem"][1]["Id"] = 3321424
	
	tMarchFactionSales_Reward[3312563] = {}
	tMarchFactionSales_Reward[3312563]["LogId"] = 12000651
	tMarchFactionSales_Reward[3312563]["RewardItem"] = {}
	tMarchFactionSales_Reward[3312563]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3312563]["RewardItem"][1]["Id"] = 101009
	tMarchFactionSales_Reward[3312563]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312563]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3312563]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3312563]["DeleteItem"][1]["Id"] = 3312563
	
	tMarchFactionSales_Reward[3312613] = {}
	tMarchFactionSales_Reward[3312613]["LogId"] = 12000651
	tMarchFactionSales_Reward[3312613]["RewardItem"] = {}
	tMarchFactionSales_Reward[3312613]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3312613]["RewardItem"][1]["Id"] = 101009
	tMarchFactionSales_Reward[3312613]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312613]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3312613]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3312613]["DeleteItem"][1]["Id"] = 3312613
	
	--极品+6DarkCloudHat(B)礼盒 
	tMarchFactionSales_Reward[3320390] = {}
	tMarchFactionSales_Reward[3320390]["LogId"] = 12000651
	tMarchFactionSales_Reward[3320390]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320390]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320390]["RewardItem"][1]["Id"] = 170009
	tMarchFactionSales_Reward[3320390]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320390]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3320390]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320390]["DeleteItem"][1]["Id"] = 3320390
	
	tMarchFactionSales_Reward[3321423] = {}
	tMarchFactionSales_Reward[3321423]["LogId"] = 12000651
	tMarchFactionSales_Reward[3321423]["RewardItem"] = {}
	tMarchFactionSales_Reward[3321423]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3321423]["RewardItem"][1]["Id"] = 170009
	tMarchFactionSales_Reward[3321423]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321423]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3321423]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3321423]["DeleteItem"][1]["Id"] = 3321423
	
	tMarchFactionSales_Reward[3312562] = {}
	tMarchFactionSales_Reward[3312562]["LogId"] = 12000651
	tMarchFactionSales_Reward[3312562]["RewardItem"] = {}
	tMarchFactionSales_Reward[3312562]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3312562]["RewardItem"][1]["Id"] = 170009
	tMarchFactionSales_Reward[3312562]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312562]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3312562]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3312562]["DeleteItem"][1]["Id"] = 3312562
	
	tMarchFactionSales_Reward[3312612] = {}
	tMarchFactionSales_Reward[3312612]["LogId"] = 12000651
	tMarchFactionSales_Reward[3312612]["RewardItem"] = {}
	tMarchFactionSales_Reward[3312612]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3312612]["RewardItem"][1]["Id"] = 170009
	tMarchFactionSales_Reward[3312612]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312612]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3312612]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3312612]["DeleteItem"][1]["Id"] = 3312612
	
	--雷神金币促销新增物品
	--极品+6PrideFan(B)礼盒 
	tMarchFactionSales_Reward[3320576] = {}
	tMarchFactionSales_Reward[3320576]["LogId"] = 12000651
	tMarchFactionSales_Reward[3320576]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320576]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320576]["RewardItem"][1]["Id"] = 626029
	tMarchFactionSales_Reward[3320576]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320576]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3320576]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320576]["DeleteItem"][1]["Id"] = 3320576
	--极品+6MysticWindrobe(B)礼盒 
	tMarchFactionSales_Reward[3320577] = {}
	tMarchFactionSales_Reward[3320577]["LogId"] = 12000651
	tMarchFactionSales_Reward[3320577]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320577]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320577]["RewardItem"][1]["Id"] = 101009
	tMarchFactionSales_Reward[3320577]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320577]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3320577]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320577]["DeleteItem"][1]["Id"] = 3320577
	--极品+6DarkCloudHat(B)礼盒 
	tMarchFactionSales_Reward[3320578] = {}
	tMarchFactionSales_Reward[3320578]["LogId"] = 12000651
	tMarchFactionSales_Reward[3320578]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320578]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320578]["RewardItem"][1]["Id"] = 170009
	tMarchFactionSales_Reward[3320578]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320578]["DeleteItem"] = {} 
	tMarchFactionSales_Reward[3320578]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320578]["DeleteItem"][1]["Id"] = 3320578
	
	
	tMarchFactionSales_Reward[3302592] = {}
	tMarchFactionSales_Reward[3302592]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302592]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302592]["DeleteItem"][1]["Id"]= 3302592
	tMarchFactionSales_Reward[3302592]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302592]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302592]["RewardItem"][1]["Id"]= 150139
	tMarchFactionSales_Reward[3302592]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302592]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302593] = {}
	tMarchFactionSales_Reward[3302593]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302593]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302593]["DeleteItem"][1]["Id"]= 3302593
	tMarchFactionSales_Reward[3302593]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302593]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302593]["RewardItem"][1]["Id"]= 120129
	tMarchFactionSales_Reward[3302593]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302593]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302594] = {}
	tMarchFactionSales_Reward[3302594]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302594]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302594]["DeleteItem"][1]["Id"]= 3302594
	tMarchFactionSales_Reward[3302594]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302594]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302594]["RewardItem"][1]["Id"]= 160139
	tMarchFactionSales_Reward[3302594]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302594]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302595] = {}
	tMarchFactionSales_Reward[3302595]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302595]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302595]["DeleteItem"][1]["Id"]= 3302595
	tMarchFactionSales_Reward[3302595]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302595]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302595]["RewardItem"][1]["Id"]= 117069
	tMarchFactionSales_Reward[3302595]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302595]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302596] = {}
	tMarchFactionSales_Reward[3302596]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302596]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302596]["DeleteItem"][1]["Id"]= 3302596
	tMarchFactionSales_Reward[3302596]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302596]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302596]["RewardItem"][1]["Id"]= 121129
	tMarchFactionSales_Reward[3302596]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302596]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302597] = {}
	tMarchFactionSales_Reward[3302597]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302597]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302597]["DeleteItem"][1]["Id"]= 3302597
	tMarchFactionSales_Reward[3302597]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302597]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302597]["RewardItem"][1]["Id"]= 152129
	tMarchFactionSales_Reward[3302597]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302597]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302598] = {}
	tMarchFactionSales_Reward[3302598]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302598]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302598]["DeleteItem"][1]["Id"]= 3302598
	tMarchFactionSales_Reward[3302598]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302598]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302598]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3302598]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 4 255"
	tMarchFactionSales_Reward[3302598]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302599] = {}
	tMarchFactionSales_Reward[3302599]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302599]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302599]["DeleteItem"][1]["Id"]= 3302599
	tMarchFactionSales_Reward[3302599]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302599]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302599]["RewardItem"][1]["Id"]= 201009
	tMarchFactionSales_Reward[3302599]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 4 255"
	tMarchFactionSales_Reward[3302599]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302600] = {}
	tMarchFactionSales_Reward[3302600]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302600]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302600]["DeleteItem"][1]["Id"]= 3302600
	tMarchFactionSales_Reward[3302600]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302600]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302600]["RewardItem"][1]["Id"]= 203009
	tMarchFactionSales_Reward[3302600]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 4"
	tMarchFactionSales_Reward[3302600]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302601] = {}
	tMarchFactionSales_Reward[3302601]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302601]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302601]["DeleteItem"][1]["Id"]= 3302601
	tMarchFactionSales_Reward[3302601]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302601]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302601]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3302601]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255 200"
	tMarchFactionSales_Reward[3302601]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302602] = {}
	tMarchFactionSales_Reward[3302602]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302602]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302602]["DeleteItem"][1]["Id"]= 3302602
	tMarchFactionSales_Reward[3302602]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302602]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302602]["RewardItem"][1]["Id"]= 613129
	tMarchFactionSales_Reward[3302602]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302602]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302603] = {}
	tMarchFactionSales_Reward[3302603]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302603]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302603]["DeleteItem"][1]["Id"]= 3302603
	tMarchFactionSales_Reward[3302603]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302603]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302603]["RewardItem"][1]["Id"]= 511139
	tMarchFactionSales_Reward[3302603]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302603]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302604] = {}
	tMarchFactionSales_Reward[3302604]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302604]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302604]["DeleteItem"][1]["Id"]= 3302604
	tMarchFactionSales_Reward[3302604]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302604]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302604]["RewardItem"][1]["Id"]= 610139
	tMarchFactionSales_Reward[3302604]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302604]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302605] = {}
	tMarchFactionSales_Reward[3302605]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302605]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302605]["DeleteItem"][1]["Id"]= 3302605
	tMarchFactionSales_Reward[3302605]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302605]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302605]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3302605]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302605]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302606] = {}
	tMarchFactionSales_Reward[3302606]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302606]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302606]["DeleteItem"][1]["Id"]= 3302606
	tMarchFactionSales_Reward[3302606]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302606]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302606]["RewardItem"][1]["Id"]= 420139
	tMarchFactionSales_Reward[3302606]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302606]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302607] = {}
	tMarchFactionSales_Reward[3302607]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302607]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302607]["DeleteItem"][1]["Id"]= 3302607
	tMarchFactionSales_Reward[3302607]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302607]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302607]["RewardItem"][1]["Id"]= 480139
	tMarchFactionSales_Reward[3302607]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302607]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302608] = {}
	tMarchFactionSales_Reward[3302608]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302608]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302608]["DeleteItem"][1]["Id"]= 3302608
	tMarchFactionSales_Reward[3302608]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302608]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302608]["RewardItem"][1]["Id"]= 421139
	tMarchFactionSales_Reward[3302608]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302608]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302609] = {}
	tMarchFactionSales_Reward[3302609]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302609]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302609]["DeleteItem"][1]["Id"]= 3302609
	tMarchFactionSales_Reward[3302609]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302609]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302609]["RewardItem"][1]["Id"]= 500129
	tMarchFactionSales_Reward[3302609]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302609]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302610] = {}
	tMarchFactionSales_Reward[3302610]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302610]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302610]["DeleteItem"][1]["Id"]= 3302610
	tMarchFactionSales_Reward[3302610]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302610]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302610]["RewardItem"][1]["Id"]= 561139
	tMarchFactionSales_Reward[3302610]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302610]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302611] = {}
	tMarchFactionSales_Reward[3302611]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302611]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302611]["DeleteItem"][1]["Id"]= 3302611
	tMarchFactionSales_Reward[3302611]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302611]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302611]["RewardItem"][1]["Id"]= 560139
	tMarchFactionSales_Reward[3302611]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302611]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302612] = {}
	tMarchFactionSales_Reward[3302612]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302612]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302612]["DeleteItem"][1]["Id"]= 3302612
	tMarchFactionSales_Reward[3302612]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302612]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302612]["RewardItem"][1]["Id"]= 900049
	tMarchFactionSales_Reward[3302612]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302612]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302613] = {}
	tMarchFactionSales_Reward[3302613]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302613]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302613]["DeleteItem"][1]["Id"]= 3302613
	tMarchFactionSales_Reward[3302613]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302613]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302613]["RewardItem"][1]["Id"]= 601139
	tMarchFactionSales_Reward[3302613]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302613]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302614] = {}
	tMarchFactionSales_Reward[3302614]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302614]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302614]["DeleteItem"][1]["Id"]= 3302614
	tMarchFactionSales_Reward[3302614]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302614]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302614]["RewardItem"][1]["Id"]= 611139
	tMarchFactionSales_Reward[3302614]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302614]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302615] = {}
	tMarchFactionSales_Reward[3302615]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302615]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302615]["DeleteItem"][1]["Id"]= 3302615
	tMarchFactionSales_Reward[3302615]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302615]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302615]["RewardItem"][1]["Id"]= 612139
	tMarchFactionSales_Reward[3302615]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3302615]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302616] = {}
	tMarchFactionSales_Reward[3302616]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302616]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302616]["DeleteItem"][1]["Id"]= 3302616
	tMarchFactionSales_Reward[3302616]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302616]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302616]["RewardItem"][1]["Id"]= 130069
	tMarchFactionSales_Reward[3302616]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302616]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302617] = {}
	tMarchFactionSales_Reward[3302617]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302617]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302617]["DeleteItem"][1]["Id"]= 3302617
	tMarchFactionSales_Reward[3302617]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302617]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302617]["RewardItem"][1]["Id"]= 134069
	tMarchFactionSales_Reward[3302617]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302617]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302618] = {}
	tMarchFactionSales_Reward[3302618]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302618]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302618]["DeleteItem"][1]["Id"]= 3302618
	tMarchFactionSales_Reward[3302618]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302618]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302618]["RewardItem"][1]["Id"]= 136069
	tMarchFactionSales_Reward[3302618]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302618]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302619] = {}
	tMarchFactionSales_Reward[3302619]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302619]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302619]["DeleteItem"][1]["Id"]= 3302619
	tMarchFactionSales_Reward[3302619]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302619]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302619]["RewardItem"][1]["Id"]= 139069
	tMarchFactionSales_Reward[3302619]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302619]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302620] = {}
	tMarchFactionSales_Reward[3302620]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302620]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302620]["DeleteItem"][1]["Id"]= 3302620
	tMarchFactionSales_Reward[3302620]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302620]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302620]["RewardItem"][1]["Id"]= 135069
	tMarchFactionSales_Reward[3302620]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302620]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302621] = {}
	tMarchFactionSales_Reward[3302621]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302621]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302621]["DeleteItem"][1]["Id"]= 3302621
	tMarchFactionSales_Reward[3302621]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302621]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302621]["RewardItem"][1]["Id"]= 133049
	tMarchFactionSales_Reward[3302621]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302621]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302622] = {}
	tMarchFactionSales_Reward[3302622]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302622]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302622]["DeleteItem"][1]["Id"]= 3302622
	tMarchFactionSales_Reward[3302622]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302622]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302622]["RewardItem"][1]["Id"]= 131069
	tMarchFactionSales_Reward[3302622]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302622]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302623] = {}
	tMarchFactionSales_Reward[3302623]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302623]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302623]["DeleteItem"][1]["Id"]= 3302623
	tMarchFactionSales_Reward[3302623]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302623]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302623]["RewardItem"][1]["Id"]= 118069
	tMarchFactionSales_Reward[3302623]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302623]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302624] = {}
	tMarchFactionSales_Reward[3302624]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302624]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302624]["DeleteItem"][1]["Id"]= 3302624
	tMarchFactionSales_Reward[3302624]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302624]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302624]["RewardItem"][1]["Id"]= 114069
	tMarchFactionSales_Reward[3302624]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302624]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302625] = {}
	tMarchFactionSales_Reward[3302625]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302625]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302625]["DeleteItem"][1]["Id"]= 3302625
	tMarchFactionSales_Reward[3302625]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302625]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302625]["RewardItem"][1]["Id"]= 123069
	tMarchFactionSales_Reward[3302625]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302625]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302626] = {}
	tMarchFactionSales_Reward[3302626]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302626]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302626]["DeleteItem"][1]["Id"]= 3302626
	tMarchFactionSales_Reward[3302626]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302626]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302626]["RewardItem"][1]["Id"]= 143069
	tMarchFactionSales_Reward[3302626]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302626]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302627] = {}
	tMarchFactionSales_Reward[3302627]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302627]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302627]["DeleteItem"][1]["Id"]= 3302627
	tMarchFactionSales_Reward[3302627]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302627]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302627]["RewardItem"][1]["Id"]= 145069
	tMarchFactionSales_Reward[3302627]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302627]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302628] = {}
	tMarchFactionSales_Reward[3302628]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302628]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302628]["DeleteItem"][1]["Id"]= 3302628
	tMarchFactionSales_Reward[3302628]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302628]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302628]["RewardItem"][1]["Id"]= 142039
	tMarchFactionSales_Reward[3302628]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302628]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302629] = {}
	tMarchFactionSales_Reward[3302629]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302629]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302629]["DeleteItem"][1]["Id"]= 3302629
	tMarchFactionSales_Reward[3302629]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302629]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302629]["RewardItem"][1]["Id"]= 111069
	tMarchFactionSales_Reward[3302629]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302629]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302630] = {}
	tMarchFactionSales_Reward[3302630]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302630]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302630]["DeleteItem"][1]["Id"]= 3302630
	tMarchFactionSales_Reward[3302630]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302630]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302630]["RewardItem"][1]["Id"]= 138069
	tMarchFactionSales_Reward[3302630]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302630]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302631] = {}
	tMarchFactionSales_Reward[3302631]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302631]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302631]["DeleteItem"][1]["Id"]= 3302631
	tMarchFactionSales_Reward[3302631]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302631]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302631]["RewardItem"][1]["Id"]= 148069
	tMarchFactionSales_Reward[3302631]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302631]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302632] = {}
	tMarchFactionSales_Reward[3302632]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302632]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302632]["DeleteItem"][1]["Id"]= 3302632
	tMarchFactionSales_Reward[3302632]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302632]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302632]["RewardItem"][1]["Id"]= 617139
	tMarchFactionSales_Reward[3302632]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3302632]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320378] = {}
	tMarchFactionSales_Reward[3320378]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320378]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320378]["DeleteItem"][1]["Id"]= 3320378
	tMarchFactionSales_Reward[3320378]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320378]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320378]["RewardItem"][1]["Id"]= 617139
	tMarchFactionSales_Reward[3320378]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320378]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321393] = {}
	tMarchFactionSales_Reward[3321393]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321393]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321393]["DeleteItem"][1]["Id"]= 3321393
	tMarchFactionSales_Reward[3321393]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321393]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321393]["RewardItem"][1]["Id"]= 617139
	tMarchFactionSales_Reward[3321393]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321393]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321447] = {}
	tMarchFactionSales_Reward[3321447]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321447]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321447]["DeleteItem"][1]["Id"]= 3321447
	tMarchFactionSales_Reward[3321447]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321447]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321447]["RewardItem"][1]["Id"]= 617139
	tMarchFactionSales_Reward[3321447]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321447]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312582] = {}
	tMarchFactionSales_Reward[3312582]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312582]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312582]["DeleteItem"][1]["Id"]= 3312582
	tMarchFactionSales_Reward[3312582]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312582]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312582]["RewardItem"][1]["Id"]= 617139
	tMarchFactionSales_Reward[3312582]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312582]["LogId"]= 12000651
	
	--雷神版本金币促销
	tMarchFactionSales_Reward[3320579] = {}
	tMarchFactionSales_Reward[3320579]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320579]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320579]["DeleteItem"][1]["Id"]= 3320579
	tMarchFactionSales_Reward[3320579]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320579]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320579]["RewardItem"][1]["Id"]= 150139
	tMarchFactionSales_Reward[3320579]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320579]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320580] = {}
	tMarchFactionSales_Reward[3320580]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320580]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320580]["DeleteItem"][1]["Id"]= 3320580
	tMarchFactionSales_Reward[3320580]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320580]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320580]["RewardItem"][1]["Id"]= 120129
	tMarchFactionSales_Reward[3320580]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320580]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320581] = {}
	tMarchFactionSales_Reward[3320581]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320581]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320581]["DeleteItem"][1]["Id"]= 3320581
	tMarchFactionSales_Reward[3320581]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320581]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320581]["RewardItem"][1]["Id"]= 160139
	tMarchFactionSales_Reward[3320581]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320581]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320582] = {}
	tMarchFactionSales_Reward[3320582]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320582]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320582]["DeleteItem"][1]["Id"]= 3320582
	tMarchFactionSales_Reward[3320582]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320582]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320582]["RewardItem"][1]["Id"]= 117069
	tMarchFactionSales_Reward[3320582]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320582]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320583] = {}
	tMarchFactionSales_Reward[3320583]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320583]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320583]["DeleteItem"][1]["Id"]= 3320583
	tMarchFactionSales_Reward[3320583]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320583]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320583]["RewardItem"][1]["Id"]= 121129
	tMarchFactionSales_Reward[3320583]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320583]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320584] = {}
	tMarchFactionSales_Reward[3320584]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320584]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320584]["DeleteItem"][1]["Id"]= 3320584
	tMarchFactionSales_Reward[3320584]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320584]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320584]["RewardItem"][1]["Id"]= 152129
	tMarchFactionSales_Reward[3320584]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320584]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320585] = {}
	tMarchFactionSales_Reward[3320585]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320585]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320585]["DeleteItem"][1]["Id"]= 3320585
	tMarchFactionSales_Reward[3320585]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320585]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320585]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3320585]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 4 255"
	tMarchFactionSales_Reward[3320585]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320586] = {}
	tMarchFactionSales_Reward[3320586]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320586]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320586]["DeleteItem"][1]["Id"]= 3320586
	tMarchFactionSales_Reward[3320586]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320586]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320586]["RewardItem"][1]["Id"]= 201009
	tMarchFactionSales_Reward[3320586]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 4 255"
	tMarchFactionSales_Reward[3320586]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320587] = {}
	tMarchFactionSales_Reward[3320587]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320587]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320587]["DeleteItem"][1]["Id"]= 3320587
	tMarchFactionSales_Reward[3320587]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320587]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320587]["RewardItem"][1]["Id"]= 203009
	tMarchFactionSales_Reward[3320587]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 4"
	tMarchFactionSales_Reward[3320587]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320588] = {}
	tMarchFactionSales_Reward[3320588]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320588]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320588]["DeleteItem"][1]["Id"]= 3320588
	tMarchFactionSales_Reward[3320588]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320588]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320588]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3320588]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255 200"
	tMarchFactionSales_Reward[3320588]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320589] = {}
	tMarchFactionSales_Reward[3320589]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320589]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320589]["DeleteItem"][1]["Id"]= 3320589
	tMarchFactionSales_Reward[3320589]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320589]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320589]["RewardItem"][1]["Id"]= 613129
	tMarchFactionSales_Reward[3320589]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320589]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320590] = {}
	tMarchFactionSales_Reward[3320590]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320590]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320590]["DeleteItem"][1]["Id"]= 3320590
	tMarchFactionSales_Reward[3320590]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320590]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320590]["RewardItem"][1]["Id"]= 511139
	tMarchFactionSales_Reward[3320590]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320590]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320591] = {}
	tMarchFactionSales_Reward[3320591]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320591]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320591]["DeleteItem"][1]["Id"]= 3320591
	tMarchFactionSales_Reward[3320591]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320591]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320591]["RewardItem"][1]["Id"]= 610139
	tMarchFactionSales_Reward[3320591]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320591]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320592] = {}
	tMarchFactionSales_Reward[3320592]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320592]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320592]["DeleteItem"][1]["Id"]= 3320592
	tMarchFactionSales_Reward[3320592]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320592]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320592]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3320592]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320592]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320593] = {}
	tMarchFactionSales_Reward[3320593]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320593]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320593]["DeleteItem"][1]["Id"]= 3320593
	tMarchFactionSales_Reward[3320593]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320593]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320593]["RewardItem"][1]["Id"]= 420139
	tMarchFactionSales_Reward[3320593]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320593]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320594] = {}
	tMarchFactionSales_Reward[3320594]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320594]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320594]["DeleteItem"][1]["Id"]= 3320594
	tMarchFactionSales_Reward[3320594]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320594]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320594]["RewardItem"][1]["Id"]= 480139
	tMarchFactionSales_Reward[3320594]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320594]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320595] = {}
	tMarchFactionSales_Reward[3320595]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320595]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320595]["DeleteItem"][1]["Id"]= 3320595
	tMarchFactionSales_Reward[3320595]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320595]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320595]["RewardItem"][1]["Id"]= 421139
	tMarchFactionSales_Reward[3320595]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320595]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320596] = {}
	tMarchFactionSales_Reward[3320596]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320596]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320596]["DeleteItem"][1]["Id"]= 3320596
	tMarchFactionSales_Reward[3320596]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320596]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320596]["RewardItem"][1]["Id"]= 500129
	tMarchFactionSales_Reward[3320596]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320596]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320597] = {}
	tMarchFactionSales_Reward[3320597]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320597]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320597]["DeleteItem"][1]["Id"]= 3320597
	tMarchFactionSales_Reward[3320597]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320597]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320597]["RewardItem"][1]["Id"]= 561139
	tMarchFactionSales_Reward[3320597]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320597]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320598] = {}
	tMarchFactionSales_Reward[3320598]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320598]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320598]["DeleteItem"][1]["Id"]= 3320598
	tMarchFactionSales_Reward[3320598]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320598]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320598]["RewardItem"][1]["Id"]= 560139
	tMarchFactionSales_Reward[3320598]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320598]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320599] = {}
	tMarchFactionSales_Reward[3320599]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320599]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320599]["DeleteItem"][1]["Id"]= 3320599
	tMarchFactionSales_Reward[3320599]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320599]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320599]["RewardItem"][1]["Id"]= 900049
	tMarchFactionSales_Reward[3320599]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320599]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320600] = {}
	tMarchFactionSales_Reward[3320600]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320600]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320600]["DeleteItem"][1]["Id"]= 3320600
	tMarchFactionSales_Reward[3320600]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320600]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320600]["RewardItem"][1]["Id"]= 601139
	tMarchFactionSales_Reward[3320600]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320600]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320601] = {}
	tMarchFactionSales_Reward[3320601]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320601]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320601]["DeleteItem"][1]["Id"]= 3320601
	tMarchFactionSales_Reward[3320601]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320601]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320601]["RewardItem"][1]["Id"]= 611139
	tMarchFactionSales_Reward[3320601]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320601]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320602] = {}
	tMarchFactionSales_Reward[3320602]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320602]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320602]["DeleteItem"][1]["Id"]= 3320602
	tMarchFactionSales_Reward[3320602]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320602]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320602]["RewardItem"][1]["Id"]= 612139
	tMarchFactionSales_Reward[3320602]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320602]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320603] = {}
	tMarchFactionSales_Reward[3320603]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320603]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320603]["DeleteItem"][1]["Id"]= 3320603
	tMarchFactionSales_Reward[3320603]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320603]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320603]["RewardItem"][1]["Id"]= 130069
	tMarchFactionSales_Reward[3320603]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320603]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320604] = {}
	tMarchFactionSales_Reward[3320604]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320604]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320604]["DeleteItem"][1]["Id"]= 3320604
	tMarchFactionSales_Reward[3320604]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320604]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320604]["RewardItem"][1]["Id"]= 134069
	tMarchFactionSales_Reward[3320604]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320604]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320605] = {}
	tMarchFactionSales_Reward[3320605]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320605]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320605]["DeleteItem"][1]["Id"]= 3320605
	tMarchFactionSales_Reward[3320605]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320605]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320605]["RewardItem"][1]["Id"]= 136069
	tMarchFactionSales_Reward[3320605]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320605]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320606] = {}
	tMarchFactionSales_Reward[3320606]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320606]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320606]["DeleteItem"][1]["Id"]= 3320606
	tMarchFactionSales_Reward[3320606]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320606]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320606]["RewardItem"][1]["Id"]= 139069
	tMarchFactionSales_Reward[3320606]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320606]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320607] = {}
	tMarchFactionSales_Reward[3320607]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320607]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320607]["DeleteItem"][1]["Id"]= 3320607
	tMarchFactionSales_Reward[3320607]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320607]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320607]["RewardItem"][1]["Id"]= 135069
	tMarchFactionSales_Reward[3320607]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320607]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320608] = {}
	tMarchFactionSales_Reward[3320608]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320608]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320608]["DeleteItem"][1]["Id"]= 3320608
	tMarchFactionSales_Reward[3320608]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320608]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320608]["RewardItem"][1]["Id"]= 133049
	tMarchFactionSales_Reward[3320608]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320608]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320609] = {}
	tMarchFactionSales_Reward[3320609]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320609]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320609]["DeleteItem"][1]["Id"]= 3320609
	tMarchFactionSales_Reward[3320609]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320609]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320609]["RewardItem"][1]["Id"]= 131069
	tMarchFactionSales_Reward[3320609]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320609]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320610] = {}
	tMarchFactionSales_Reward[3320610]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320610]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320610]["DeleteItem"][1]["Id"]= 3320610
	tMarchFactionSales_Reward[3320610]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320610]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320610]["RewardItem"][1]["Id"]= 118069
	tMarchFactionSales_Reward[3320610]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320610]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320611] = {}
	tMarchFactionSales_Reward[3320611]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320611]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320611]["DeleteItem"][1]["Id"]= 3320611
	tMarchFactionSales_Reward[3320611]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320611]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320611]["RewardItem"][1]["Id"]= 114069
	tMarchFactionSales_Reward[3320611]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320611]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320612] = {}
	tMarchFactionSales_Reward[3320612]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320612]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320612]["DeleteItem"][1]["Id"]= 3320612
	tMarchFactionSales_Reward[3320612]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320612]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320612]["RewardItem"][1]["Id"]= 123069
	tMarchFactionSales_Reward[3320612]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320612]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320613] = {}
	tMarchFactionSales_Reward[3320613]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320613]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320613]["DeleteItem"][1]["Id"]= 3320613
	tMarchFactionSales_Reward[3320613]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320613]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320613]["RewardItem"][1]["Id"]= 143069
	tMarchFactionSales_Reward[3320613]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320613]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320614] = {}
	tMarchFactionSales_Reward[3320614]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320614]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320614]["DeleteItem"][1]["Id"]= 3320614
	tMarchFactionSales_Reward[3320614]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320614]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320614]["RewardItem"][1]["Id"]= 145069
	tMarchFactionSales_Reward[3320614]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320614]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320615] = {}
	tMarchFactionSales_Reward[3320615]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320615]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320615]["DeleteItem"][1]["Id"]= 3320615
	tMarchFactionSales_Reward[3320615]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320615]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320615]["RewardItem"][1]["Id"]= 142039
	tMarchFactionSales_Reward[3320615]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320615]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320616] = {}
	tMarchFactionSales_Reward[3320616]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320616]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320616]["DeleteItem"][1]["Id"]= 3320616
	tMarchFactionSales_Reward[3320616]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320616]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320616]["RewardItem"][1]["Id"]= 111069
	tMarchFactionSales_Reward[3320616]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320616]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320617] = {}
	tMarchFactionSales_Reward[3320617]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320617]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320617]["DeleteItem"][1]["Id"]= 3320617
	tMarchFactionSales_Reward[3320617]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320617]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320617]["RewardItem"][1]["Id"]= 138069
	tMarchFactionSales_Reward[3320617]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320617]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320618] = {}
	tMarchFactionSales_Reward[3320618]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320618]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320618]["DeleteItem"][1]["Id"]= 3320618
	tMarchFactionSales_Reward[3320618]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320618]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320618]["RewardItem"][1]["Id"]= 148069
	tMarchFactionSales_Reward[3320618]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320618]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320619] = {}
	tMarchFactionSales_Reward[3320619]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320619]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320619]["DeleteItem"][1]["Id"]= 3320619
	tMarchFactionSales_Reward[3320619]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320619]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320619]["RewardItem"][1]["Id"]= 617139
	tMarchFactionSales_Reward[3320619]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320619]["LogId"]= 12000651
	
	--雷神版本新增非赠装备购买
	tMarchFactionSales_Reward[3320338] = {}
	tMarchFactionSales_Reward[3320338]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320338]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320338]["DeleteItem"][1]["Id"]= 3320338
	tMarchFactionSales_Reward[3320338]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320338]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320338]["RewardItem"][1]["Id"]= 150139
	tMarchFactionSales_Reward[3320338]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320338]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321409] = {}
	tMarchFactionSales_Reward[3321409]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321409]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321409]["DeleteItem"][1]["Id"]= 3321409
	tMarchFactionSales_Reward[3321409]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321409]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321409]["RewardItem"][1]["Id"]= 150139
	tMarchFactionSales_Reward[3321409]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321409]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321463] = {}
	tMarchFactionSales_Reward[3321463]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321463]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321463]["DeleteItem"][1]["Id"]= 3321463
	tMarchFactionSales_Reward[3321463]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321463]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321463]["RewardItem"][1]["Id"]= 150139
	tMarchFactionSales_Reward[3321463]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321463]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312598] = {}
	tMarchFactionSales_Reward[3312598]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312598]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312598]["DeleteItem"][1]["Id"]= 3312598
	tMarchFactionSales_Reward[3312598]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312598]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312598]["RewardItem"][1]["Id"]= 150139
	tMarchFactionSales_Reward[3312598]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312598]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320339] = {}
	tMarchFactionSales_Reward[3320339]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320339]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320339]["DeleteItem"][1]["Id"]= 3320339
	tMarchFactionSales_Reward[3320339]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320339]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320339]["RewardItem"][1]["Id"]= 120129
	tMarchFactionSales_Reward[3320339]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320339]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321400] = {}
	tMarchFactionSales_Reward[3321400]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321400]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321400]["DeleteItem"][1]["Id"]= 3321400
	tMarchFactionSales_Reward[3321400]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321400]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321400]["RewardItem"][1]["Id"]= 120129
	tMarchFactionSales_Reward[3321400]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321400]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321454] = {}
	tMarchFactionSales_Reward[3321454]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321454]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321454]["DeleteItem"][1]["Id"]= 3321454
	tMarchFactionSales_Reward[3321454]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321454]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321454]["RewardItem"][1]["Id"]= 120129
	tMarchFactionSales_Reward[3321454]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321454]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312589] = {}
	tMarchFactionSales_Reward[3312589]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312589]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312589]["DeleteItem"][1]["Id"]= 3312589
	tMarchFactionSales_Reward[3312589]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312589]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312589]["RewardItem"][1]["Id"]= 120129
	tMarchFactionSales_Reward[3312589]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312589]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320340] = {}
	tMarchFactionSales_Reward[3320340]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320340]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320340]["DeleteItem"][1]["Id"]= 3320340
	tMarchFactionSales_Reward[3320340]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320340]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320340]["RewardItem"][1]["Id"]= 160139
	tMarchFactionSales_Reward[3320340]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320340]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321382] = {}
	tMarchFactionSales_Reward[3321382]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321382]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321382]["DeleteItem"][1]["Id"]= 3321382
	tMarchFactionSales_Reward[3321382]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321382]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321382]["RewardItem"][1]["Id"]= 160139
	tMarchFactionSales_Reward[3321382]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321382]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321436] = {}
	tMarchFactionSales_Reward[3321436]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321436]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321436]["DeleteItem"][1]["Id"]= 3321436
	tMarchFactionSales_Reward[3321436]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321436]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321436]["RewardItem"][1]["Id"]= 160139
	tMarchFactionSales_Reward[3321436]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321436]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312571] = {}
	tMarchFactionSales_Reward[3312571]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312571]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312571]["DeleteItem"][1]["Id"]= 3312571
	tMarchFactionSales_Reward[3312571]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312571]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312571]["RewardItem"][1]["Id"]= 160139
	tMarchFactionSales_Reward[3312571]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312571]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320341] = {}
	tMarchFactionSales_Reward[3320341]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320341]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320341]["DeleteItem"][1]["Id"]= 3320341
	tMarchFactionSales_Reward[3320341]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320341]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320341]["RewardItem"][1]["Id"]= 117069
	tMarchFactionSales_Reward[3320341]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320341]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321391] = {}
	tMarchFactionSales_Reward[3321391]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321391]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321391]["DeleteItem"][1]["Id"]= 3321391
	tMarchFactionSales_Reward[3321391]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321391]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321391]["RewardItem"][1]["Id"]= 117069
	tMarchFactionSales_Reward[3321391]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321391]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321445] = {}
	tMarchFactionSales_Reward[3321445]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321445]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321445]["DeleteItem"][1]["Id"]= 3321445
	tMarchFactionSales_Reward[3321445]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321445]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321445]["RewardItem"][1]["Id"]= 117069
	tMarchFactionSales_Reward[3321445]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321445]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312580] = {}
	tMarchFactionSales_Reward[3312580]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312580]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312580]["DeleteItem"][1]["Id"]= 3312580
	tMarchFactionSales_Reward[3312580]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312580]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312580]["RewardItem"][1]["Id"]= 117069
	tMarchFactionSales_Reward[3312580]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312580]["LogId"]= 12000651
	
	
	tMarchFactionSales_Reward[3320342] = {}
	tMarchFactionSales_Reward[3320342]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320342]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320342]["DeleteItem"][1]["Id"]= 3320342
	tMarchFactionSales_Reward[3320342]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320342]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320342]["RewardItem"][1]["Id"]= 121129
	tMarchFactionSales_Reward[3320342]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320342]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321379] = {}
	tMarchFactionSales_Reward[3321379]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321379]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321379]["DeleteItem"][1]["Id"]= 3321379
	tMarchFactionSales_Reward[3321379]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321379]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321379]["RewardItem"][1]["Id"]= 121129
	tMarchFactionSales_Reward[3321379]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321379]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321433] = {}
	tMarchFactionSales_Reward[3321433]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321433]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321433]["DeleteItem"][1]["Id"]= 3321433
	tMarchFactionSales_Reward[3321433]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321433]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321433]["RewardItem"][1]["Id"]= 121129
	tMarchFactionSales_Reward[3321433]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321433]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312568] = {}
	tMarchFactionSales_Reward[3312568]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312568]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312568]["DeleteItem"][1]["Id"]= 3312568
	tMarchFactionSales_Reward[3312568]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312568]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312568]["RewardItem"][1]["Id"]= 121129
	tMarchFactionSales_Reward[3312568]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312568]["LogId"]= 12000651
	
	
	tMarchFactionSales_Reward[3320343] = {}
	tMarchFactionSales_Reward[3320343]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320343]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320343]["DeleteItem"][1]["Id"]= 3320343
	tMarchFactionSales_Reward[3320343]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320343]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320343]["RewardItem"][1]["Id"]= 152129
	tMarchFactionSales_Reward[3320343]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320343]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321384] = {}
	tMarchFactionSales_Reward[3321384]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321384]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321384]["DeleteItem"][1]["Id"]= 3321384
	tMarchFactionSales_Reward[3321384]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321384]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321384]["RewardItem"][1]["Id"]= 152129
	tMarchFactionSales_Reward[3321384]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321384]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321438] = {}
	tMarchFactionSales_Reward[3321438]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321438]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321438]["DeleteItem"][1]["Id"]= 3321438
	tMarchFactionSales_Reward[3321438]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321438]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321438]["RewardItem"][1]["Id"]= 152129
	tMarchFactionSales_Reward[3321438]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321438]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312573] = {}
	tMarchFactionSales_Reward[3312573]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312573]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312573]["DeleteItem"][1]["Id"]= 3312573
	tMarchFactionSales_Reward[3312573]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312573]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312573]["RewardItem"][1]["Id"]= 152129
	tMarchFactionSales_Reward[3312573]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312573]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320344] = {}
	tMarchFactionSales_Reward[3320344]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320344]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320344]["DeleteItem"][1]["Id"]= 3320344
	tMarchFactionSales_Reward[3320344]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320344]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320344]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3320344]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 4 255"
	tMarchFactionSales_Reward[3320344]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321417] = {}
	tMarchFactionSales_Reward[3321417]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321417]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321417]["DeleteItem"][1]["Id"]= 3321417
	tMarchFactionSales_Reward[3321417]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321417]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321417]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3321417]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 4 255"
	tMarchFactionSales_Reward[3321417]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321471] = {}
	tMarchFactionSales_Reward[3321471]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321471]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321471]["DeleteItem"][1]["Id"]= 3321471
	tMarchFactionSales_Reward[3321471]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321471]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321471]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3321471]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 4 255"
	tMarchFactionSales_Reward[3321471]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320344] = {}
	tMarchFactionSales_Reward[3320344]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320344]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320344]["DeleteItem"][1]["Id"]= 3320344
	tMarchFactionSales_Reward[3320344]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320344]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320344]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3320344]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 4 255"
	tMarchFactionSales_Reward[3320344]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321417] = {}
	tMarchFactionSales_Reward[3321417]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321417]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321417]["DeleteItem"][1]["Id"]= 3321417
	tMarchFactionSales_Reward[3321417]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321417]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321417]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3321417]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 8 255 255"
	tMarchFactionSales_Reward[3321417]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321471] = {}
	tMarchFactionSales_Reward[3321471]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321471]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321471]["DeleteItem"][1]["Id"]= 3321471
	tMarchFactionSales_Reward[3321471]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321471]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321471]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3321471]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 8 255 255"
	tMarchFactionSales_Reward[3321471]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312606] = {}
	tMarchFactionSales_Reward[3312606]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312606]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312606]["DeleteItem"][1]["Id"]= 3312606
	tMarchFactionSales_Reward[3312606]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312606]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312606]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3312606]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 8 255 255"
	tMarchFactionSales_Reward[3312606]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320345] = {}
	tMarchFactionSales_Reward[3320345]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320345]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320345]["DeleteItem"][1]["Id"]= 3320345
	tMarchFactionSales_Reward[3320345]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320345]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320345]["RewardItem"][1]["Id"]= 201009
	tMarchFactionSales_Reward[3320345]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 4 255"
	tMarchFactionSales_Reward[3320345]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321392] = {}
	tMarchFactionSales_Reward[3321392]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321392]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321392]["DeleteItem"][1]["Id"]= 3321392
	tMarchFactionSales_Reward[3321392]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321392]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321392]["RewardItem"][1]["Id"]= 201009
	tMarchFactionSales_Reward[3321392]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 8 255 255"
	tMarchFactionSales_Reward[3321392]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321446] = {}
	tMarchFactionSales_Reward[3321446]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321446]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321446]["DeleteItem"][1]["Id"]= 3321446
	tMarchFactionSales_Reward[3321446]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321446]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321446]["RewardItem"][1]["Id"]= 201009
	tMarchFactionSales_Reward[3321446]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 8 255 255"
	tMarchFactionSales_Reward[3321446]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312581] = {}
	tMarchFactionSales_Reward[3312581]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312581]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312581]["DeleteItem"][1]["Id"]= 3312581
	tMarchFactionSales_Reward[3312581]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312581]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312581]["RewardItem"][1]["Id"]= 201009
	tMarchFactionSales_Reward[3312581]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 8 255 255"
	tMarchFactionSales_Reward[3312581]["LogId"]= 12000651

	
	tMarchFactionSales_Reward[3320346] = {}
	tMarchFactionSales_Reward[3320346]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320346]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320346]["DeleteItem"][1]["Id"]= 3320346
	tMarchFactionSales_Reward[3320346]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320346]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320346]["RewardItem"][1]["Id"]= 203009
	tMarchFactionSales_Reward[3320346]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 4"
	tMarchFactionSales_Reward[3320346]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321388] = {}
	tMarchFactionSales_Reward[3321388]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321388]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321388]["DeleteItem"][1]["Id"]= 3321388
	tMarchFactionSales_Reward[3321388]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321388]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321388]["RewardItem"][1]["Id"]= 203009
	tMarchFactionSales_Reward[3321388]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 8"
	tMarchFactionSales_Reward[3321388]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321442] = {}
	tMarchFactionSales_Reward[3321442]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321442]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321442]["DeleteItem"][1]["Id"]= 3321442
	tMarchFactionSales_Reward[3321442]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321442]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321442]["RewardItem"][1]["Id"]= 203009
	tMarchFactionSales_Reward[3321442]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 8"
	tMarchFactionSales_Reward[3321442]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312577] = {}
	tMarchFactionSales_Reward[3312577]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312577]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312577]["DeleteItem"][1]["Id"]= 3312577
	tMarchFactionSales_Reward[3312577]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312577]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312577]["RewardItem"][1]["Id"]= 203009
	tMarchFactionSales_Reward[3312577]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 8"
	tMarchFactionSales_Reward[3312577]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320347] = {}
	tMarchFactionSales_Reward[3320347]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320347]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320347]["DeleteItem"][1]["Id"]= 3320347
	tMarchFactionSales_Reward[3320347]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320347]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320347]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3320347]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255 200"
	tMarchFactionSales_Reward[3320347]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321407] = {}
	tMarchFactionSales_Reward[3321407]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321407]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321407]["DeleteItem"][1]["Id"]= 3321407
	tMarchFactionSales_Reward[3321407]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321407]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321407]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3321407]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255 200"
	tMarchFactionSales_Reward[3321407]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321461] = {}
	tMarchFactionSales_Reward[3321461]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321461]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321461]["DeleteItem"][1]["Id"]= 3321461
	tMarchFactionSales_Reward[3321461]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321461]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321461]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3321461]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255 200"
	tMarchFactionSales_Reward[3321461]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312596] = {}
	tMarchFactionSales_Reward[3312596]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312596]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312596]["DeleteItem"][1]["Id"]= 3312596
	tMarchFactionSales_Reward[3312596]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312596]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312596]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3312596]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255 200"
	tMarchFactionSales_Reward[3312596]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320348] = {}
	tMarchFactionSales_Reward[3320348]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320348]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320348]["DeleteItem"][1]["Id"]= 3320348
	tMarchFactionSales_Reward[3320348]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320348]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320348]["RewardItem"][1]["Id"]= 613129
	tMarchFactionSales_Reward[3320348]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320348]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321395] = {}
	tMarchFactionSales_Reward[3321395]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321395]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321395]["DeleteItem"][1]["Id"]= 3321395
	tMarchFactionSales_Reward[3321395]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321395]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321395]["RewardItem"][1]["Id"]= 613129
	tMarchFactionSales_Reward[3321395]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321395]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321449] = {}
	tMarchFactionSales_Reward[3321449]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321449]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321449]["DeleteItem"][1]["Id"]= 3321449
	tMarchFactionSales_Reward[3321449]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321449]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321449]["RewardItem"][1]["Id"]= 613129
	tMarchFactionSales_Reward[3321449]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321449]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312584] = {}
	tMarchFactionSales_Reward[3312584]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312584]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312584]["DeleteItem"][1]["Id"]= 3312584
	tMarchFactionSales_Reward[3312584]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312584]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312584]["RewardItem"][1]["Id"]= 613129
	tMarchFactionSales_Reward[3312584]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312584]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320349] = {}
	tMarchFactionSales_Reward[3320349]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320349]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320349]["DeleteItem"][1]["Id"]= 3320349
	tMarchFactionSales_Reward[3320349]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320349]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320349]["RewardItem"][1]["Id"]= 511139
	tMarchFactionSales_Reward[3320349]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320349]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321410] = {}
	tMarchFactionSales_Reward[3321410]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321410]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321410]["DeleteItem"][1]["Id"]= 3321410
	tMarchFactionSales_Reward[3321410]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321410]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321410]["RewardItem"][1]["Id"]= 511139
	tMarchFactionSales_Reward[3321410]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321410]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321464] = {}
	tMarchFactionSales_Reward[3321464]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321464]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321464]["DeleteItem"][1]["Id"]= 3321464
	tMarchFactionSales_Reward[3321464]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321464]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321464]["RewardItem"][1]["Id"]= 511139
	tMarchFactionSales_Reward[3321464]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321464]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312599] = {}
	tMarchFactionSales_Reward[3312599]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312599]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312599]["DeleteItem"][1]["Id"]= 3312599
	tMarchFactionSales_Reward[3312599]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312599]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312599]["RewardItem"][1]["Id"]= 511139
	tMarchFactionSales_Reward[3312599]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312599]["LogId"]= 12000651
	
	
	tMarchFactionSales_Reward[3320350] = {}
	tMarchFactionSales_Reward[3320350]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320350]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320350]["DeleteItem"][1]["Id"]= 3320350
	tMarchFactionSales_Reward[3320350]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320350]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320350]["RewardItem"][1]["Id"]= 610139
	tMarchFactionSales_Reward[3320350]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320350]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321380] = {}
	tMarchFactionSales_Reward[3321380]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321380]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321380]["DeleteItem"][1]["Id"]= 3321380
	tMarchFactionSales_Reward[3321380]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321380]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321380]["RewardItem"][1]["Id"]= 610139
	tMarchFactionSales_Reward[3321380]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321380]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321434] = {}
	tMarchFactionSales_Reward[3321434]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321434]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321434]["DeleteItem"][1]["Id"]= 3321434
	tMarchFactionSales_Reward[3321434]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321434]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321434]["RewardItem"][1]["Id"]= 610139
	tMarchFactionSales_Reward[3321434]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321434]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312569] = {}
	tMarchFactionSales_Reward[3312569]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312569]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312569]["DeleteItem"][1]["Id"]= 3312569
	tMarchFactionSales_Reward[3312569]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312569]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312569]["RewardItem"][1]["Id"]= 610139
	tMarchFactionSales_Reward[3312569]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312569]["LogId"]= 12000651
	
	
	
	tMarchFactionSales_Reward[3320351] = {}
	tMarchFactionSales_Reward[3320351]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320351]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320351]["DeleteItem"][1]["Id"]= 3320351
	tMarchFactionSales_Reward[3320351]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320351]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320351]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3320351]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320351]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321381] = {}
	tMarchFactionSales_Reward[3321381]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321381]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321381]["DeleteItem"][1]["Id"]= 3321381
	tMarchFactionSales_Reward[3321381]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321381]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321381]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3321381]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321381]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321435] = {}
	tMarchFactionSales_Reward[3321435]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321435]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321435]["DeleteItem"][1]["Id"]= 3321435
	tMarchFactionSales_Reward[3321435]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321435]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321435]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3321435]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321435]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312570] = {}
	tMarchFactionSales_Reward[3312570]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312570]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312570]["DeleteItem"][1]["Id"]= 3312570
	tMarchFactionSales_Reward[3312570]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312570]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312570]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3312570]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312570]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320352] = {}
	tMarchFactionSales_Reward[3320352]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320352]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320352]["DeleteItem"][1]["Id"]= 3320352
	tMarchFactionSales_Reward[3320352]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320352]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320352]["RewardItem"][1]["Id"]= 420139
	tMarchFactionSales_Reward[3320352]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320352]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321414] = {}
	tMarchFactionSales_Reward[3321414]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321414]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321414]["DeleteItem"][1]["Id"]= 3321414
	tMarchFactionSales_Reward[3321414]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321414]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321414]["RewardItem"][1]["Id"]= 420139
	tMarchFactionSales_Reward[3321414]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321414]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321468] = {}
	tMarchFactionSales_Reward[3321468]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321468]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321468]["DeleteItem"][1]["Id"]= 3321468
	tMarchFactionSales_Reward[3321468]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321468]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321468]["RewardItem"][1]["Id"]= 420139
	tMarchFactionSales_Reward[3321468]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321468]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312603] = {}
	tMarchFactionSales_Reward[3312603]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312603]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312603]["DeleteItem"][1]["Id"]= 3312603
	tMarchFactionSales_Reward[3312603]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312603]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312603]["RewardItem"][1]["Id"]= 420139
	tMarchFactionSales_Reward[3312603]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312603]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320353] = {}
	tMarchFactionSales_Reward[3320353]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320353]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320353]["DeleteItem"][1]["Id"]= 3320353
	tMarchFactionSales_Reward[3320353]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320353]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320353]["RewardItem"][1]["Id"]= 480139
	tMarchFactionSales_Reward[3320353]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320353]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321386] = {}
	tMarchFactionSales_Reward[3321386]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321386]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321386]["DeleteItem"][1]["Id"]= 3321386
	tMarchFactionSales_Reward[3321386]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321386]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321386]["RewardItem"][1]["Id"]= 480139
	tMarchFactionSales_Reward[3321386]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321386]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321440] = {}
	tMarchFactionSales_Reward[3321440]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321440]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321440]["DeleteItem"][1]["Id"]= 3321440
	tMarchFactionSales_Reward[3321440]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321440]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321440]["RewardItem"][1]["Id"]= 480139
	tMarchFactionSales_Reward[3321440]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321440]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312575] = {}
	tMarchFactionSales_Reward[3312575]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312575]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312575]["DeleteItem"][1]["Id"]= 3312575
	tMarchFactionSales_Reward[3312575]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312575]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312575]["RewardItem"][1]["Id"]= 480139
	tMarchFactionSales_Reward[3312575]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312575]["LogId"]= 12000651
	
	
	tMarchFactionSales_Reward[3320354] = {}
	tMarchFactionSales_Reward[3320354]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320354]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320354]["DeleteItem"][1]["Id"]= 3320354
	tMarchFactionSales_Reward[3320354]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320354]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320354]["RewardItem"][1]["Id"]= 421139
	tMarchFactionSales_Reward[3320354]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320354]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321378] = {}
	tMarchFactionSales_Reward[3321378]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321378]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321378]["DeleteItem"][1]["Id"]= 3321378
	tMarchFactionSales_Reward[3321378]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321378]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321378]["RewardItem"][1]["Id"]= 421139
	tMarchFactionSales_Reward[3321378]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321378]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321432] = {}
	tMarchFactionSales_Reward[3321432]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321432]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321432]["DeleteItem"][1]["Id"]= 3321432
	tMarchFactionSales_Reward[3321432]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321432]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321432]["RewardItem"][1]["Id"]= 421139
	tMarchFactionSales_Reward[3321432]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321432]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312567] = {}
	tMarchFactionSales_Reward[3312567]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312567]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312567]["DeleteItem"][1]["Id"]= 3312567
	tMarchFactionSales_Reward[3312567]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312567]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312567]["RewardItem"][1]["Id"]= 421139
	tMarchFactionSales_Reward[3312567]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312567]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320355] = {}
	tMarchFactionSales_Reward[3320355]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320355]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320355]["DeleteItem"][1]["Id"]= 3320355
	tMarchFactionSales_Reward[3320355]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320355]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320355]["RewardItem"][1]["Id"]= 500129
	tMarchFactionSales_Reward[3320355]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320355]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321383] = {}
	tMarchFactionSales_Reward[3321383]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321383]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321383]["DeleteItem"][1]["Id"]= 3321383
	tMarchFactionSales_Reward[3321383]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321383]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321383]["RewardItem"][1]["Id"]= 500129
	tMarchFactionSales_Reward[3321383]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321383]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321437] = {}
	tMarchFactionSales_Reward[3321437]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321437]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321437]["DeleteItem"][1]["Id"]= 3321437
	tMarchFactionSales_Reward[3321437]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321437]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321437]["RewardItem"][1]["Id"]= 500129
	tMarchFactionSales_Reward[3321437]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321437]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312572] = {}
	tMarchFactionSales_Reward[3312572]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312572]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312572]["DeleteItem"][1]["Id"]= 3312572
	tMarchFactionSales_Reward[3312572]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312572]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312572]["RewardItem"][1]["Id"]= 500129
	tMarchFactionSales_Reward[3312572]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312572]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320356] = {}
	tMarchFactionSales_Reward[3320356]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320356]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320356]["DeleteItem"][1]["Id"]= 3320356
	tMarchFactionSales_Reward[3320356]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320356]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320356]["RewardItem"][1]["Id"]= 561139
	tMarchFactionSales_Reward[3320356]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320356]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321420] = {}
	tMarchFactionSales_Reward[3321420]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321420]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321420]["DeleteItem"][1]["Id"]= 3321420
	tMarchFactionSales_Reward[3321420]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321420]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321420]["RewardItem"][1]["Id"]= 561139
	tMarchFactionSales_Reward[3321420]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321420]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312559] = {}
	tMarchFactionSales_Reward[3312559]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312559]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312559]["DeleteItem"][1]["Id"]= 3312559
	tMarchFactionSales_Reward[3312559]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312559]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312559]["RewardItem"][1]["Id"]= 561139
	tMarchFactionSales_Reward[3312559]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312559]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312609] = {}
	tMarchFactionSales_Reward[3312609]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312609]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312609]["DeleteItem"][1]["Id"]= 3312609
	tMarchFactionSales_Reward[3312609]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312609]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312609]["RewardItem"][1]["Id"]= 561139
	tMarchFactionSales_Reward[3312609]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312609]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320357] = {}
	tMarchFactionSales_Reward[3320357]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320357]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320357]["DeleteItem"][1]["Id"]= 3320357
	tMarchFactionSales_Reward[3320357]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320357]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320357]["RewardItem"][1]["Id"]= 560139
	tMarchFactionSales_Reward[3320357]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320357]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321413] = {}
	tMarchFactionSales_Reward[3321413]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321413]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321413]["DeleteItem"][1]["Id"]= 3321413
	tMarchFactionSales_Reward[3321413]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321413]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321413]["RewardItem"][1]["Id"]= 560139
	tMarchFactionSales_Reward[3321413]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321413]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321467] = {}
	tMarchFactionSales_Reward[3321467]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321467]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321467]["DeleteItem"][1]["Id"]= 3321467
	tMarchFactionSales_Reward[3321467]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321467]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321467]["RewardItem"][1]["Id"]= 560139
	tMarchFactionSales_Reward[3321467]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321467]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312602] = {}
	tMarchFactionSales_Reward[3312602]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312602]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312602]["DeleteItem"][1]["Id"]= 3312602
	tMarchFactionSales_Reward[3312602]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312602]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312602]["RewardItem"][1]["Id"]= 560139
	tMarchFactionSales_Reward[3312602]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312602]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320358] = {}
	tMarchFactionSales_Reward[3320358]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320358]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320358]["DeleteItem"][1]["Id"]= 3320358
	tMarchFactionSales_Reward[3320358]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320358]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320358]["RewardItem"][1]["Id"]= 900049
	tMarchFactionSales_Reward[3320358]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320358]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321411] = {}
	tMarchFactionSales_Reward[3321411]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321411]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321411]["DeleteItem"][1]["Id"]= 3321411
	tMarchFactionSales_Reward[3321411]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321411]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321411]["RewardItem"][1]["Id"]= 900049
	tMarchFactionSales_Reward[3321411]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321411]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321465] = {}
	tMarchFactionSales_Reward[3321465]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321465]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321465]["DeleteItem"][1]["Id"]= 3321465
	tMarchFactionSales_Reward[3321465]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321465]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321465]["RewardItem"][1]["Id"]= 900049
	tMarchFactionSales_Reward[3321465]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321465]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312600] = {}
	tMarchFactionSales_Reward[3312600]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312600]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312600]["DeleteItem"][1]["Id"]= 3312600
	tMarchFactionSales_Reward[3312600]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312600]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312600]["RewardItem"][1]["Id"]= 900049
	tMarchFactionSales_Reward[3312600]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312600]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320359] = {}
	tMarchFactionSales_Reward[3320359]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320359]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320359]["DeleteItem"][1]["Id"]= 3320359
	tMarchFactionSales_Reward[3320359]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320359]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320359]["RewardItem"][1]["Id"]= 601139
	tMarchFactionSales_Reward[3320359]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320359]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321394] = {}
	tMarchFactionSales_Reward[3321394]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321394]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321394]["DeleteItem"][1]["Id"]= 3321394
	tMarchFactionSales_Reward[3321394]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321394]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321394]["RewardItem"][1]["Id"]= 601139
	tMarchFactionSales_Reward[3321394]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321394]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321448] = {}
	tMarchFactionSales_Reward[3321448]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321448]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321448]["DeleteItem"][1]["Id"]= 3321448
	tMarchFactionSales_Reward[3321448]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321448]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321448]["RewardItem"][1]["Id"]= 601139
	tMarchFactionSales_Reward[3321448]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321448]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312583] = {}
	tMarchFactionSales_Reward[3312583]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312583]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312583]["DeleteItem"][1]["Id"]= 3312583
	tMarchFactionSales_Reward[3312583]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312583]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312583]["RewardItem"][1]["Id"]= 601139
	tMarchFactionSales_Reward[3312583]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312583]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320360] = {}
	tMarchFactionSales_Reward[3320360]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320360]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320360]["DeleteItem"][1]["Id"]= 3320360
	tMarchFactionSales_Reward[3320360]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320360]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320360]["RewardItem"][1]["Id"]= 611139
	tMarchFactionSales_Reward[3320360]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320360]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321408] = {}
	tMarchFactionSales_Reward[3321408]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321408]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321408]["DeleteItem"][1]["Id"]= 3321408
	tMarchFactionSales_Reward[3321408]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321408]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321408]["RewardItem"][1]["Id"]= 611139
	tMarchFactionSales_Reward[3321408]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321408]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321462] = {}
	tMarchFactionSales_Reward[3321462]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321462]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321462]["DeleteItem"][1]["Id"]= 3321462
	tMarchFactionSales_Reward[3321462]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321462]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321462]["RewardItem"][1]["Id"]= 611139
	tMarchFactionSales_Reward[3321462]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321462]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312597] = {}
	tMarchFactionSales_Reward[3312597]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312597]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312597]["DeleteItem"][1]["Id"]= 3312597
	tMarchFactionSales_Reward[3312597]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312597]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312597]["RewardItem"][1]["Id"]= 611139
	tMarchFactionSales_Reward[3312597]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312597]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320361] = {}
	tMarchFactionSales_Reward[3320361]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320361]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320361]["DeleteItem"][1]["Id"]= 3320361
	tMarchFactionSales_Reward[3320361]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320361]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320361]["RewardItem"][1]["Id"]= 612139
	tMarchFactionSales_Reward[3320361]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255 255"
	tMarchFactionSales_Reward[3320361]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321406] = {}
	tMarchFactionSales_Reward[3321406]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321406]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321406]["DeleteItem"][1]["Id"]= 3321406
	tMarchFactionSales_Reward[3321406]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321406]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321406]["RewardItem"][1]["Id"]= 612139
	tMarchFactionSales_Reward[3321406]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321406]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321460] = {}
	tMarchFactionSales_Reward[3321460]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321460]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321460]["DeleteItem"][1]["Id"]= 3321460
	tMarchFactionSales_Reward[3321460]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321460]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321460]["RewardItem"][1]["Id"]= 612139
	tMarchFactionSales_Reward[3321460]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321460]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312595] = {}
	tMarchFactionSales_Reward[3312595]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312595]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312595]["DeleteItem"][1]["Id"]= 3312595
	tMarchFactionSales_Reward[3312595]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312595]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312595]["RewardItem"][1]["Id"]= 612139
	tMarchFactionSales_Reward[3312595]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312595]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320362] = {}
	tMarchFactionSales_Reward[3320362]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320362]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320362]["DeleteItem"][1]["Id"]= 3320362
	tMarchFactionSales_Reward[3320362]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320362]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320362]["RewardItem"][1]["Id"]= 130069
	tMarchFactionSales_Reward[3320362]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320362]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321418] = {}
	tMarchFactionSales_Reward[3321418]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321418]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321418]["DeleteItem"][1]["Id"]= 3321418
	tMarchFactionSales_Reward[3321418]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321418]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321418]["RewardItem"][1]["Id"]= 130069
	tMarchFactionSales_Reward[3321418]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321418]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312557] = {}
	tMarchFactionSales_Reward[3312557]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312557]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312557]["DeleteItem"][1]["Id"]= 3312557
	tMarchFactionSales_Reward[3312557]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312557]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312557]["RewardItem"][1]["Id"]= 130069
	tMarchFactionSales_Reward[3312557]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312557]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312607] = {}
	tMarchFactionSales_Reward[3312607]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312607]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312607]["DeleteItem"][1]["Id"]= 3312607
	tMarchFactionSales_Reward[3312607]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312607]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312607]["RewardItem"][1]["Id"]= 130069
	tMarchFactionSales_Reward[3312607]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312607]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320363] = {}
	tMarchFactionSales_Reward[3320363]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320363]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320363]["DeleteItem"][1]["Id"]= 3320363
	tMarchFactionSales_Reward[3320363]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320363]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320363]["RewardItem"][1]["Id"]= 134069
	tMarchFactionSales_Reward[3320363]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320363]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321416] = {}
	tMarchFactionSales_Reward[3321416]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321416]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321416]["DeleteItem"][1]["Id"]= 3321416
	tMarchFactionSales_Reward[3321416]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321416]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321416]["RewardItem"][1]["Id"]= 134069
	tMarchFactionSales_Reward[3321416]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321416]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321470] = {}
	tMarchFactionSales_Reward[3321470]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321470]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321470]["DeleteItem"][1]["Id"]= 3321470
	tMarchFactionSales_Reward[3321470]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321470]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321470]["RewardItem"][1]["Id"]= 134069
	tMarchFactionSales_Reward[3321470]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321470]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312605] = {}
	tMarchFactionSales_Reward[3312605]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312605]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312605]["DeleteItem"][1]["Id"]= 3312605
	tMarchFactionSales_Reward[3312605]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312605]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312605]["RewardItem"][1]["Id"]= 134069
	tMarchFactionSales_Reward[3312605]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312605]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320364] = {}
	tMarchFactionSales_Reward[3320364]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320364]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320364]["DeleteItem"][1]["Id"]= 3320364
	tMarchFactionSales_Reward[3320364]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320364]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320364]["RewardItem"][1]["Id"]= 136069
	tMarchFactionSales_Reward[3320364]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320364]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321399] = {}
	tMarchFactionSales_Reward[3321399]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321399]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321399]["DeleteItem"][1]["Id"]= 3321399
	tMarchFactionSales_Reward[3321399]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321399]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321399]["RewardItem"][1]["Id"]= 136069
	tMarchFactionSales_Reward[3321399]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321399]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321453] = {}
	tMarchFactionSales_Reward[3321453]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321453]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321453]["DeleteItem"][1]["Id"]= 3321453
	tMarchFactionSales_Reward[3321453]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321453]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321453]["RewardItem"][1]["Id"]= 136069
	tMarchFactionSales_Reward[3321453]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321453]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312588] = {}
	tMarchFactionSales_Reward[3312588]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312588]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312588]["DeleteItem"][1]["Id"]= 3312588
	tMarchFactionSales_Reward[3312588]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312588]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312588]["RewardItem"][1]["Id"]= 136069
	tMarchFactionSales_Reward[3312588]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312588]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320365] = {}
	tMarchFactionSales_Reward[3320365]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320365]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320365]["DeleteItem"][1]["Id"]= 3320365
	tMarchFactionSales_Reward[3320365]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320365]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320365]["RewardItem"][1]["Id"]= 139069
	tMarchFactionSales_Reward[3320365]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320365]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321404] = {}
	tMarchFactionSales_Reward[3321404]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321404]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321404]["DeleteItem"][1]["Id"]= 3321404
	tMarchFactionSales_Reward[3321404]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321404]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321404]["RewardItem"][1]["Id"]= 139069
	tMarchFactionSales_Reward[3321404]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321404]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321458] = {}
	tMarchFactionSales_Reward[3321458]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321458]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321458]["DeleteItem"][1]["Id"]= 3321458
	tMarchFactionSales_Reward[3321458]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321458]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321458]["RewardItem"][1]["Id"]= 139069
	tMarchFactionSales_Reward[3321458]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321458]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312593] = {}
	tMarchFactionSales_Reward[3312593]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312593]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312593]["DeleteItem"][1]["Id"]= 3312593
	tMarchFactionSales_Reward[3312593]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312593]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312593]["RewardItem"][1]["Id"]= 139069
	tMarchFactionSales_Reward[3312593]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312593]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320366] = {}
	tMarchFactionSales_Reward[3320366]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320366]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320366]["DeleteItem"][1]["Id"]= 3320366
	tMarchFactionSales_Reward[3320366]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320366]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320366]["RewardItem"][1]["Id"]= 135069
	tMarchFactionSales_Reward[3320366]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320366]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321402] = {}
	tMarchFactionSales_Reward[3321402]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321402]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321402]["DeleteItem"][1]["Id"]= 3321402
	tMarchFactionSales_Reward[3321402]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321402]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321402]["RewardItem"][1]["Id"]= 135069
	tMarchFactionSales_Reward[3321402]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321402]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321456] = {}
	tMarchFactionSales_Reward[3321456]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321456]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321456]["DeleteItem"][1]["Id"]= 3321456
	tMarchFactionSales_Reward[3321456]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321456]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321456]["RewardItem"][1]["Id"]= 135069
	tMarchFactionSales_Reward[3321456]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321456]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312591] = {}
	tMarchFactionSales_Reward[3312591]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312591]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312591]["DeleteItem"][1]["Id"]= 3312591
	tMarchFactionSales_Reward[3312591]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312591]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312591]["RewardItem"][1]["Id"]= 135069
	tMarchFactionSales_Reward[3312591]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312591]["LogId"]= 12000651
	
	
	tMarchFactionSales_Reward[3320367] = {}
	tMarchFactionSales_Reward[3320367]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320367]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320367]["DeleteItem"][1]["Id"]= 3320367
	tMarchFactionSales_Reward[3320367]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320367]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320367]["RewardItem"][1]["Id"]= 133049
	tMarchFactionSales_Reward[3320367]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320367]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321376] = {}
	tMarchFactionSales_Reward[3321376]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321376]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321376]["DeleteItem"][1]["Id"]= 3321376
	tMarchFactionSales_Reward[3321376]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321376]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321376]["RewardItem"][1]["Id"]= 133049
	tMarchFactionSales_Reward[3321376]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321376]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321430] = {}
	tMarchFactionSales_Reward[3321430]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321430]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321430]["DeleteItem"][1]["Id"]= 3321430
	tMarchFactionSales_Reward[3321430]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321430]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321430]["RewardItem"][1]["Id"]= 133049
	tMarchFactionSales_Reward[3321430]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321430]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312565] = {}
	tMarchFactionSales_Reward[3312565]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312565]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312565]["DeleteItem"][1]["Id"]= 3312565
	tMarchFactionSales_Reward[3312565]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312565]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312565]["RewardItem"][1]["Id"]= 133049
	tMarchFactionSales_Reward[3312565]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312565]["LogId"]= 12000651
	
	
	--新增雷神装备赠品
	--+4
	tMarchFactionSales_Reward[3321364] = {}
	tMarchFactionSales_Reward[3321364]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321364]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321364]["DeleteItem"][1]["Id"]= 3321364
	tMarchFactionSales_Reward[3321364]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321364]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321364]["RewardItem"][1]["Id"]= 147009
	tMarchFactionSales_Reward[3321364]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3321364]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321365] = {}
	tMarchFactionSales_Reward[3321365]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321365]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321365]["DeleteItem"][1]["Id"]= 3321365
	tMarchFactionSales_Reward[3321365]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321365]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321365]["RewardItem"][1]["Id"]= 102009
	tMarchFactionSales_Reward[3321365]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3321365]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321366] = {}
	tMarchFactionSales_Reward[3321366]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321366]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321366]["DeleteItem"][1]["Id"]= 3321366
	tMarchFactionSales_Reward[3321366]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321366]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321366]["RewardItem"][1]["Id"]= 681029
	tMarchFactionSales_Reward[3321366]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3321366]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321367] = {}
	tMarchFactionSales_Reward[3321367]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321367]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321367]["DeleteItem"][1]["Id"]= 3321367
	tMarchFactionSales_Reward[3321367]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321367]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321367]["RewardItem"][1]["Id"]= 680029
	tMarchFactionSales_Reward[3321367]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3321367]["LogId"]= 12000651
	
	--+6
	tMarchFactionSales_Reward[3321368] = {}
	tMarchFactionSales_Reward[3321368]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321368]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321368]["DeleteItem"][1]["Id"]= 3321368
	tMarchFactionSales_Reward[3321368]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321368]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321368]["RewardItem"][1]["Id"]= 147009
	tMarchFactionSales_Reward[3321368]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3321368]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321369] = {}
	tMarchFactionSales_Reward[3321369]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321369]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321369]["DeleteItem"][1]["Id"]= 3321369
	tMarchFactionSales_Reward[3321369]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321369]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321369]["RewardItem"][1]["Id"]= 102009
	tMarchFactionSales_Reward[3321369]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3321369]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321370] = {}
	tMarchFactionSales_Reward[3321370]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321370]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321370]["DeleteItem"][1]["Id"]= 3321370
	tMarchFactionSales_Reward[3321370]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321370]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321370]["RewardItem"][1]["Id"]= 681029
	tMarchFactionSales_Reward[3321370]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3321370]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321371] = {}
	tMarchFactionSales_Reward[3321371]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321371]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321371]["DeleteItem"][1]["Id"]= 3321371
	tMarchFactionSales_Reward[3321371]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321371]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321371]["RewardItem"][1]["Id"]= 680029
	tMarchFactionSales_Reward[3321371]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3321371]["LogId"]= 12000651
	
	--+8
	tMarchFactionSales_Reward[3321372] = {}
	tMarchFactionSales_Reward[3321372]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321372]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321372]["DeleteItem"][1]["Id"]= 3321372
	tMarchFactionSales_Reward[3321372]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321372]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321372]["RewardItem"][1]["Id"]= 147009
	tMarchFactionSales_Reward[3321372]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321372]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321373] = {}
	tMarchFactionSales_Reward[3321373]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321373]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321373]["DeleteItem"][1]["Id"]= 3321373
	tMarchFactionSales_Reward[3321373]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321373]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321373]["RewardItem"][1]["Id"]= 102009
	tMarchFactionSales_Reward[3321373]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321373]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321374] = {}
	tMarchFactionSales_Reward[3321374]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321374]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321374]["DeleteItem"][1]["Id"]= 3321374
	tMarchFactionSales_Reward[3321374]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321374]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321374]["RewardItem"][1]["Id"]= 681029
	tMarchFactionSales_Reward[3321374]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321374]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321375] = {}
	tMarchFactionSales_Reward[3321375]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321375]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321375]["DeleteItem"][1]["Id"]= 3321375
	tMarchFactionSales_Reward[3321375]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321375]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321375]["RewardItem"][1]["Id"]= 680029
	tMarchFactionSales_Reward[3321375]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321375]["LogId"]= 12000651
	
	--新增雷神装备赠品金币
	--+4
	tMarchFactionSales_Reward[3312537] = {}
	tMarchFactionSales_Reward[3312537]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312537]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312537]["DeleteItem"][1]["Id"]= 3312537
	tMarchFactionSales_Reward[3312537]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312537]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312537]["RewardItem"][1]["Id"]= 147009
	tMarchFactionSales_Reward[3312537]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3312537]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312538] = {}
	tMarchFactionSales_Reward[3312538]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312538]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312538]["DeleteItem"][1]["Id"]= 3312538
	tMarchFactionSales_Reward[3312538]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312538]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312538]["RewardItem"][1]["Id"]= 102009
	tMarchFactionSales_Reward[3312538]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3312538]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312539] = {}
	tMarchFactionSales_Reward[3312539]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312539]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312539]["DeleteItem"][1]["Id"]= 3312539
	tMarchFactionSales_Reward[3312539]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312539]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312539]["RewardItem"][1]["Id"]= 681029
	tMarchFactionSales_Reward[3312539]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3312539]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312540] = {}
	tMarchFactionSales_Reward[3312540]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312540]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312540]["DeleteItem"][1]["Id"]= 3312540
	tMarchFactionSales_Reward[3312540]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312540]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312540]["RewardItem"][1]["Id"]= 680029
	tMarchFactionSales_Reward[3312540]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3312540]["LogId"]= 12000651
	
	--+6
	tMarchFactionSales_Reward[3312541] = {}
	tMarchFactionSales_Reward[3312541]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312541]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312541]["DeleteItem"][1]["Id"]= 3312541
	tMarchFactionSales_Reward[3312541]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312541]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312541]["RewardItem"][1]["Id"]= 147009
	tMarchFactionSales_Reward[3312541]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3312541]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312542] = {}
	tMarchFactionSales_Reward[3312542]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312542]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312542]["DeleteItem"][1]["Id"]= 3312542
	tMarchFactionSales_Reward[3312542]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312542]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312542]["RewardItem"][1]["Id"]= 102009
	tMarchFactionSales_Reward[3312542]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3312542]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312543] = {}
	tMarchFactionSales_Reward[3312543]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312543]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312543]["DeleteItem"][1]["Id"]= 3312543
	tMarchFactionSales_Reward[3312543]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312543]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312543]["RewardItem"][1]["Id"]= 681029
	tMarchFactionSales_Reward[3312543]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3312543]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312544] = {}
	tMarchFactionSales_Reward[3312544]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312544]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312544]["DeleteItem"][1]["Id"]= 3312544
	tMarchFactionSales_Reward[3312544]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312544]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312544]["RewardItem"][1]["Id"]= 680029
	tMarchFactionSales_Reward[3312544]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3312544]["LogId"]= 12000651
	
	--+8
	tMarchFactionSales_Reward[3312545] = {}
	tMarchFactionSales_Reward[3312545]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312545]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312545]["DeleteItem"][1]["Id"]= 3312545
	tMarchFactionSales_Reward[3312545]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312545]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312545]["RewardItem"][1]["Id"]= 147009
	tMarchFactionSales_Reward[3312545]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312545]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312546] = {}
	tMarchFactionSales_Reward[3312546]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312546]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312546]["DeleteItem"][1]["Id"]= 3312546
	tMarchFactionSales_Reward[3312546]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312546]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312546]["RewardItem"][1]["Id"]= 102009
	tMarchFactionSales_Reward[3312546]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312546]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312547] = {}
	tMarchFactionSales_Reward[3312547]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312547]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312547]["DeleteItem"][1]["Id"]= 3312547
	tMarchFactionSales_Reward[3312547]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312547]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312547]["RewardItem"][1]["Id"]= 681029
	tMarchFactionSales_Reward[3312547]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312547]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312548] = {}
	tMarchFactionSales_Reward[3312548]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312548]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312548]["DeleteItem"][1]["Id"]= 3312548
	tMarchFactionSales_Reward[3312548]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312548]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312548]["RewardItem"][1]["Id"]= 680029
	tMarchFactionSales_Reward[3312548]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312548]["LogId"]= 12000651
	
	--新增雷神装备非赠品
	--+4
	tMarchFactionSales_Reward[3321559] = {}
	tMarchFactionSales_Reward[3321559]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321559]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321559]["DeleteItem"][1]["Id"]= 3321559
	tMarchFactionSales_Reward[3321559]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321559]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321559]["RewardItem"][1]["Id"]= 147009
	tMarchFactionSales_Reward[3321559]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3321559]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321560] = {}
	tMarchFactionSales_Reward[3321560]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321560]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321560]["DeleteItem"][1]["Id"]= 3321560
	tMarchFactionSales_Reward[3321560]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321560]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321560]["RewardItem"][1]["Id"]= 102009
	tMarchFactionSales_Reward[3321560]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3321560]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321561] = {}
	tMarchFactionSales_Reward[3321561]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321561]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321561]["DeleteItem"][1]["Id"]= 3321561
	tMarchFactionSales_Reward[3321561]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321561]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321561]["RewardItem"][1]["Id"]= 681029
	tMarchFactionSales_Reward[3321561]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3321561]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321562] = {}
	tMarchFactionSales_Reward[3321562]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321562]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321562]["DeleteItem"][1]["Id"]= 3321562
	tMarchFactionSales_Reward[3321562]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321562]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321562]["RewardItem"][1]["Id"]= 680029
	tMarchFactionSales_Reward[3321562]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3321562]["LogId"]= 12000651
	
	--+6
	tMarchFactionSales_Reward[3321563] = {}
	tMarchFactionSales_Reward[3321563]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321563]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321563]["DeleteItem"][1]["Id"]= 3321563
	tMarchFactionSales_Reward[3321563]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321563]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321563]["RewardItem"][1]["Id"]= 147009
	tMarchFactionSales_Reward[3321563]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3321563]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321564] = {}
	tMarchFactionSales_Reward[3321564]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321564]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321564]["DeleteItem"][1]["Id"]= 3321564
	tMarchFactionSales_Reward[3321564]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321564]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321564]["RewardItem"][1]["Id"]= 102009
	tMarchFactionSales_Reward[3321564]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3321564]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321565] = {}
	tMarchFactionSales_Reward[3321565]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321565]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321565]["DeleteItem"][1]["Id"]= 3321565
	tMarchFactionSales_Reward[3321565]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321565]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321565]["RewardItem"][1]["Id"]= 681029
	tMarchFactionSales_Reward[3321565]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3321565]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321566] = {}
	tMarchFactionSales_Reward[3321566]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321566]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321566]["DeleteItem"][1]["Id"]= 3321566
	tMarchFactionSales_Reward[3321566]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321566]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321566]["RewardItem"][1]["Id"]= 680029
	tMarchFactionSales_Reward[3321566]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3321566]["LogId"]= 12000651
	
	--+8
	tMarchFactionSales_Reward[3321426] = {}
	tMarchFactionSales_Reward[3321426]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321426]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321426]["DeleteItem"][1]["Id"]= 3321426
	tMarchFactionSales_Reward[3321426]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321426]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321426]["RewardItem"][1]["Id"]= 147009
	tMarchFactionSales_Reward[3321426]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321426]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321427] = {}
	tMarchFactionSales_Reward[3321427]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321427]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321427]["DeleteItem"][1]["Id"]= 3321427
	tMarchFactionSales_Reward[3321427]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321427]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321427]["RewardItem"][1]["Id"]= 102009
	tMarchFactionSales_Reward[3321427]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321427]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321428] = {}
	tMarchFactionSales_Reward[3321428]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321428]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321428]["DeleteItem"][1]["Id"]= 3321428
	tMarchFactionSales_Reward[3321428]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321428]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321428]["RewardItem"][1]["Id"]= 681029
	tMarchFactionSales_Reward[3321428]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321428]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321429] = {}
	tMarchFactionSales_Reward[3321429]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321429]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321429]["DeleteItem"][1]["Id"]= 3321429
	tMarchFactionSales_Reward[3321429]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321429]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321429]["RewardItem"][1]["Id"]= 680029
	tMarchFactionSales_Reward[3321429]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321429]["LogId"]= 12000651
	
	
	
	tMarchFactionSales_Reward[3320368] = {}
	tMarchFactionSales_Reward[3320368]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320368]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320368]["DeleteItem"][1]["Id"]= 3320368
	tMarchFactionSales_Reward[3320368]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320368]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320368]["RewardItem"][1]["Id"]= 131069
	tMarchFactionSales_Reward[3320368]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320368]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321421] = {}
	tMarchFactionSales_Reward[3321421]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321421]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321421]["DeleteItem"][1]["Id"]= 3321421
	tMarchFactionSales_Reward[3321421]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321421]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321421]["RewardItem"][1]["Id"]= 131069
	tMarchFactionSales_Reward[3321421]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321421]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312560] = {}
	tMarchFactionSales_Reward[3312560]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312560]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312560]["DeleteItem"][1]["Id"]= 3312560
	tMarchFactionSales_Reward[3312560]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312560]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312560]["RewardItem"][1]["Id"]= 131069
	tMarchFactionSales_Reward[3312560]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312560]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312610] = {}
	tMarchFactionSales_Reward[3312610]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312610]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312610]["DeleteItem"][1]["Id"]= 3312610
	tMarchFactionSales_Reward[3312610]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312610]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312610]["RewardItem"][1]["Id"]= 131069
	tMarchFactionSales_Reward[3312610]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312610]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320369] = {}
	tMarchFactionSales_Reward[3320369]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320369]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320369]["DeleteItem"][1]["Id"]= 3320369
	tMarchFactionSales_Reward[3320369]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320369]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320369]["RewardItem"][1]["Id"]= 118069
	tMarchFactionSales_Reward[3320369]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320369]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321419] = {}
	tMarchFactionSales_Reward[3321419]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321419]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321419]["DeleteItem"][1]["Id"]= 3321419
	tMarchFactionSales_Reward[3321419]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321419]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321419]["RewardItem"][1]["Id"]= 118069
	tMarchFactionSales_Reward[3321419]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321419]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312558] = {}
	tMarchFactionSales_Reward[3312558]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312558]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312558]["DeleteItem"][1]["Id"]= 3312558
	tMarchFactionSales_Reward[3312558]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312558]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312558]["RewardItem"][1]["Id"]= 118069
	tMarchFactionSales_Reward[3312558]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312558]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312608] = {}
	tMarchFactionSales_Reward[3312608]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312608]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312608]["DeleteItem"][1]["Id"]= 3312608
	tMarchFactionSales_Reward[3312608]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312608]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312608]["RewardItem"][1]["Id"]= 118069
	tMarchFactionSales_Reward[3312608]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312608]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320370] = {}
	tMarchFactionSales_Reward[3320370]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320370]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320370]["DeleteItem"][1]["Id"]= 3320370
	tMarchFactionSales_Reward[3320370]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320370]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320370]["RewardItem"][1]["Id"]= 114069
	tMarchFactionSales_Reward[3320370]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320370]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321415] = {}
	tMarchFactionSales_Reward[3321415]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321415]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321415]["DeleteItem"][1]["Id"]= 3321415
	tMarchFactionSales_Reward[3321415]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321415]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321415]["RewardItem"][1]["Id"]= 114069
	tMarchFactionSales_Reward[3321415]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321415]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321469] = {}
	tMarchFactionSales_Reward[3321469]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321469]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321469]["DeleteItem"][1]["Id"]= 3321469
	tMarchFactionSales_Reward[3321469]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321469]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321469]["RewardItem"][1]["Id"]= 114069
	tMarchFactionSales_Reward[3321469]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321469]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312604] = {}
	tMarchFactionSales_Reward[3312604]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312604]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312604]["DeleteItem"][1]["Id"]= 3312604
	tMarchFactionSales_Reward[3312604]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312604]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312604]["RewardItem"][1]["Id"]= 114069
	tMarchFactionSales_Reward[3312604]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312604]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320371] = {}
	tMarchFactionSales_Reward[3320371]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320371]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320371]["DeleteItem"][1]["Id"]= 3320371
	tMarchFactionSales_Reward[3320371]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320371]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320371]["RewardItem"][1]["Id"]= 123069
	tMarchFactionSales_Reward[3320371]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320371]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321401] = {}
	tMarchFactionSales_Reward[3321401]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321401]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321401]["DeleteItem"][1]["Id"]= 3321401
	tMarchFactionSales_Reward[3321401]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321401]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321401]["RewardItem"][1]["Id"]= 123069
	tMarchFactionSales_Reward[3321401]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321401]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321455] = {}
	tMarchFactionSales_Reward[3321455]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321455]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321455]["DeleteItem"][1]["Id"]= 3321455
	tMarchFactionSales_Reward[3321455]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321455]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321455]["RewardItem"][1]["Id"]= 123069
	tMarchFactionSales_Reward[3321455]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321455]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312590] = {}
	tMarchFactionSales_Reward[3312590]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312590]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312590]["DeleteItem"][1]["Id"]= 3312590
	tMarchFactionSales_Reward[3312590]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312590]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312590]["RewardItem"][1]["Id"]= 123069
	tMarchFactionSales_Reward[3312590]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312590]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320372] = {}
	tMarchFactionSales_Reward[3320372]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320372]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320372]["DeleteItem"][1]["Id"]= 3320372
	tMarchFactionSales_Reward[3320372]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320372]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320372]["RewardItem"][1]["Id"]= 143069
	tMarchFactionSales_Reward[3320372]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320372]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321398] = {}
	tMarchFactionSales_Reward[3321398]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321398]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321398]["DeleteItem"][1]["Id"]= 3321398
	tMarchFactionSales_Reward[3321398]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321398]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321398]["RewardItem"][1]["Id"]= 143069
	tMarchFactionSales_Reward[3321398]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321398]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321452] = {}
	tMarchFactionSales_Reward[3321452]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321452]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321452]["DeleteItem"][1]["Id"]= 3321452
	tMarchFactionSales_Reward[3321452]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321452]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321452]["RewardItem"][1]["Id"]= 143069
	tMarchFactionSales_Reward[3321452]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321452]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312587] = {}
	tMarchFactionSales_Reward[3312587]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312587]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312587]["DeleteItem"][1]["Id"]= 3312587
	tMarchFactionSales_Reward[3312587]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312587]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312587]["RewardItem"][1]["Id"]= 143069
	tMarchFactionSales_Reward[3312587]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312587]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320373] = {}
	tMarchFactionSales_Reward[3320373]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320373]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320373]["DeleteItem"][1]["Id"]= 3320373
	tMarchFactionSales_Reward[3320373]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320373]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320373]["RewardItem"][1]["Id"]= 145069
	tMarchFactionSales_Reward[3320373]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320373]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321405] = {}
	tMarchFactionSales_Reward[3321405]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321405]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321405]["DeleteItem"][1]["Id"]= 3321405
	tMarchFactionSales_Reward[3321405]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321405]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321405]["RewardItem"][1]["Id"]= 145069
	tMarchFactionSales_Reward[3321405]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321405]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321459] = {}
	tMarchFactionSales_Reward[3321459]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321459]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321459]["DeleteItem"][1]["Id"]= 3321459
	tMarchFactionSales_Reward[3321459]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321459]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321459]["RewardItem"][1]["Id"]= 145069
	tMarchFactionSales_Reward[3321459]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321459]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312594] = {}
	tMarchFactionSales_Reward[3312594]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312594]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312594]["DeleteItem"][1]["Id"]= 3312594
	tMarchFactionSales_Reward[3312594]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312594]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312594]["RewardItem"][1]["Id"]= 145069
	tMarchFactionSales_Reward[3312594]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312594]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320374] = {}
	tMarchFactionSales_Reward[3320374]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320374]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320374]["DeleteItem"][1]["Id"]= 3320374
	tMarchFactionSales_Reward[3320374]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320374]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320374]["RewardItem"][1]["Id"]= 142039
	tMarchFactionSales_Reward[3320374]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320374]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321377] = {}
	tMarchFactionSales_Reward[3321377]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321377]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321377]["DeleteItem"][1]["Id"]= 3321377
	tMarchFactionSales_Reward[3321377]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321377]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321377]["RewardItem"][1]["Id"]= 142039
	tMarchFactionSales_Reward[3321377]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321377]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321431] = {}
	tMarchFactionSales_Reward[3321431]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321431]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321431]["DeleteItem"][1]["Id"]= 3321431
	tMarchFactionSales_Reward[3321431]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321431]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321431]["RewardItem"][1]["Id"]= 142039
	tMarchFactionSales_Reward[3321431]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321431]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312566] = {}
	tMarchFactionSales_Reward[3312566]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312566]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312566]["DeleteItem"][1]["Id"]= 3312566
	tMarchFactionSales_Reward[3312566]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312566]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312566]["RewardItem"][1]["Id"]= 142039
	tMarchFactionSales_Reward[3312566]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312566]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320375] = {}
	tMarchFactionSales_Reward[3320375]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320375]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320375]["DeleteItem"][1]["Id"]= 3320375
	tMarchFactionSales_Reward[3320375]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320375]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320375]["RewardItem"][1]["Id"]= 111069
	tMarchFactionSales_Reward[3320375]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320375]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321422] = {}
	tMarchFactionSales_Reward[3321422]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321422]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321422]["DeleteItem"][1]["Id"]= 3321422
	tMarchFactionSales_Reward[3321422]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321422]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321422]["RewardItem"][1]["Id"]= 111069
	tMarchFactionSales_Reward[3321422]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321422]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312561] = {}
	tMarchFactionSales_Reward[3312561]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312561]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312561]["DeleteItem"][1]["Id"]= 3312561
	tMarchFactionSales_Reward[3312561]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312561]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312561]["RewardItem"][1]["Id"]= 111069
	tMarchFactionSales_Reward[3312561]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312561]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312611] = {}
	tMarchFactionSales_Reward[3312611]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312611]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312611]["DeleteItem"][1]["Id"]= 3312611
	tMarchFactionSales_Reward[3312611]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312611]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312611]["RewardItem"][1]["Id"]= 111069
	tMarchFactionSales_Reward[3312611]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312611]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3320376] = {}
	tMarchFactionSales_Reward[3320376]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320376]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320376]["DeleteItem"][1]["Id"]= 3320376
	tMarchFactionSales_Reward[3320376]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320376]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320376]["RewardItem"][1]["Id"]= 138069
	tMarchFactionSales_Reward[3320376]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320376]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321387] = {}
	tMarchFactionSales_Reward[3321387]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321387]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321387]["DeleteItem"][1]["Id"]= 3321387
	tMarchFactionSales_Reward[3321387]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321387]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321387]["RewardItem"][1]["Id"]= 138069
	tMarchFactionSales_Reward[3321387]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321387]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321441] = {}
	tMarchFactionSales_Reward[3321441]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321441]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321441]["DeleteItem"][1]["Id"]= 3321441
	tMarchFactionSales_Reward[3321441]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321441]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321441]["RewardItem"][1]["Id"]= 138069
	tMarchFactionSales_Reward[3321441]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321441]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312576] = {}
	tMarchFactionSales_Reward[3312576]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312576]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312576]["DeleteItem"][1]["Id"]= 3312576
	tMarchFactionSales_Reward[3312576]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312576]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312576]["RewardItem"][1]["Id"]= 138069
	tMarchFactionSales_Reward[3312576]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312576]["LogId"]= 12000651
	
	
	tMarchFactionSales_Reward[3320377] = {}
	tMarchFactionSales_Reward[3320377]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320377]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320377]["DeleteItem"][1]["Id"]= 3320377
	tMarchFactionSales_Reward[3320377]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320377]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320377]["RewardItem"][1]["Id"]= 148069
	tMarchFactionSales_Reward[3320377]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320377]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321385] = {}
	tMarchFactionSales_Reward[3321385]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321385]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321385]["DeleteItem"][1]["Id"]= 3321385
	tMarchFactionSales_Reward[3321385]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321385]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321385]["RewardItem"][1]["Id"]= 148069
	tMarchFactionSales_Reward[3321385]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321385]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3321439] = {}
	tMarchFactionSales_Reward[3321439]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3321439]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3321439]["DeleteItem"][1]["Id"]= 3321439
	tMarchFactionSales_Reward[3321439]["RewardItem"]= {}
	tMarchFactionSales_Reward[3321439]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3321439]["RewardItem"][1]["Id"]= 148069
	tMarchFactionSales_Reward[3321439]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321439]["LogId"]= 12000651
	
	tMarchFactionSales_Reward[3312574] = {}
	tMarchFactionSales_Reward[3312574]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3312574]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3312574]["DeleteItem"][1]["Id"]= 3312574
	tMarchFactionSales_Reward[3312574]["RewardItem"]= {}
	tMarchFactionSales_Reward[3312574]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3312574]["RewardItem"][1]["Id"]= 148069
	tMarchFactionSales_Reward[3312574]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312574]["LogId"]= 12000651
	
	
	tMarchFactionSales_Reward[3302633] = {}
	tMarchFactionSales_Reward[3302633]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302633]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302633]["DeleteItem"][1]["Id"]= 3302633
	tMarchFactionSales_Reward[3302633]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302633]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302633]["RewardItem"][1]["Id"]= 150139
	tMarchFactionSales_Reward[3302633]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302633]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302634] = {}
	tMarchFactionSales_Reward[3302634]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302634]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302634]["DeleteItem"][1]["Id"]= 3302634
	tMarchFactionSales_Reward[3302634]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302634]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302634]["RewardItem"][1]["Id"]= 120129
	tMarchFactionSales_Reward[3302634]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302634]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302635] = {}
	tMarchFactionSales_Reward[3302635]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302635]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302635]["DeleteItem"][1]["Id"]= 3302635
	tMarchFactionSales_Reward[3302635]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302635]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302635]["RewardItem"][1]["Id"]= 160139
	tMarchFactionSales_Reward[3302635]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302635]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302636] = {}
	tMarchFactionSales_Reward[3302636]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302636]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302636]["DeleteItem"][1]["Id"]= 3302636
	tMarchFactionSales_Reward[3302636]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302636]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302636]["RewardItem"][1]["Id"]= 117069
	tMarchFactionSales_Reward[3302636]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302636]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302637] = {}
	tMarchFactionSales_Reward[3302637]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302637]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302637]["DeleteItem"][1]["Id"]= 3302637
	tMarchFactionSales_Reward[3302637]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302637]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302637]["RewardItem"][1]["Id"]= 121129
	tMarchFactionSales_Reward[3302637]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302637]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302638] = {}
	tMarchFactionSales_Reward[3302638]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302638]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302638]["DeleteItem"][1]["Id"]= 3302638
	tMarchFactionSales_Reward[3302638]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302638]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302638]["RewardItem"][1]["Id"]= 152129
	tMarchFactionSales_Reward[3302638]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302638]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302639] = {}
	tMarchFactionSales_Reward[3302639]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302639]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302639]["DeleteItem"][1]["Id"]= 3302639
	tMarchFactionSales_Reward[3302639]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302639]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302639]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3302639]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 6 255 255"
	tMarchFactionSales_Reward[3302639]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302640] = {}
	tMarchFactionSales_Reward[3302640]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302640]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302640]["DeleteItem"][1]["Id"]= 3302640
	tMarchFactionSales_Reward[3302640]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302640]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302640]["RewardItem"][1]["Id"]= 201009
	tMarchFactionSales_Reward[3302640]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 6 255 255"
	tMarchFactionSales_Reward[3302640]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302641] = {}
	tMarchFactionSales_Reward[3302641]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302641]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302641]["DeleteItem"][1]["Id"]= 3302641
	tMarchFactionSales_Reward[3302641]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302641]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302641]["RewardItem"][1]["Id"]= 203009
	tMarchFactionSales_Reward[3302641]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 6"
	tMarchFactionSales_Reward[3302641]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302642] = {}
	tMarchFactionSales_Reward[3302642]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302642]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302642]["DeleteItem"][1]["Id"]= 3302642
	tMarchFactionSales_Reward[3302642]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302642]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302642]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3302642]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255 200"
	tMarchFactionSales_Reward[3302642]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302643] = {}
	tMarchFactionSales_Reward[3302643]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302643]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302643]["DeleteItem"][1]["Id"]= 3302643
	tMarchFactionSales_Reward[3302643]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302643]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302643]["RewardItem"][1]["Id"]= 613129
	tMarchFactionSales_Reward[3302643]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302643]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302644] = {}
	tMarchFactionSales_Reward[3302644]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302644]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302644]["DeleteItem"][1]["Id"]= 3302644
	tMarchFactionSales_Reward[3302644]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302644]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302644]["RewardItem"][1]["Id"]= 511139
	tMarchFactionSales_Reward[3302644]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302644]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302645] = {}
	tMarchFactionSales_Reward[3302645]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302645]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302645]["DeleteItem"][1]["Id"]= 3302645
	tMarchFactionSales_Reward[3302645]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302645]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302645]["RewardItem"][1]["Id"]= 610139
	tMarchFactionSales_Reward[3302645]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302645]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302646] = {}
	tMarchFactionSales_Reward[3302646]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302646]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302646]["DeleteItem"][1]["Id"]= 3302646
	tMarchFactionSales_Reward[3302646]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302646]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302646]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3302646]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302646]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302647] = {}
	tMarchFactionSales_Reward[3302647]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302647]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302647]["DeleteItem"][1]["Id"]= 3302647
	tMarchFactionSales_Reward[3302647]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302647]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302647]["RewardItem"][1]["Id"]= 420139
	tMarchFactionSales_Reward[3302647]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302647]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302648] = {}
	tMarchFactionSales_Reward[3302648]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302648]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302648]["DeleteItem"][1]["Id"]= 3302648
	tMarchFactionSales_Reward[3302648]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302648]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302648]["RewardItem"][1]["Id"]= 480139
	tMarchFactionSales_Reward[3302648]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302648]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302649] = {}
	tMarchFactionSales_Reward[3302649]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302649]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302649]["DeleteItem"][1]["Id"]= 3302649
	tMarchFactionSales_Reward[3302649]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302649]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302649]["RewardItem"][1]["Id"]= 421139
	tMarchFactionSales_Reward[3302649]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302649]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302650] = {}
	tMarchFactionSales_Reward[3302650]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302650]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302650]["DeleteItem"][1]["Id"]= 3302650
	tMarchFactionSales_Reward[3302650]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302650]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302650]["RewardItem"][1]["Id"]= 500129
	tMarchFactionSales_Reward[3302650]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302650]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302651] = {}
	tMarchFactionSales_Reward[3302651]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302651]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302651]["DeleteItem"][1]["Id"]= 3302651
	tMarchFactionSales_Reward[3302651]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302651]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302651]["RewardItem"][1]["Id"]= 561139
	tMarchFactionSales_Reward[3302651]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302651]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302652] = {}
	tMarchFactionSales_Reward[3302652]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302652]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302652]["DeleteItem"][1]["Id"]= 3302652
	tMarchFactionSales_Reward[3302652]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302652]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302652]["RewardItem"][1]["Id"]= 560139
	tMarchFactionSales_Reward[3302652]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302652]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302653] = {}
	tMarchFactionSales_Reward[3302653]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302653]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302653]["DeleteItem"][1]["Id"]= 3302653
	tMarchFactionSales_Reward[3302653]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302653]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302653]["RewardItem"][1]["Id"]= 900049
	tMarchFactionSales_Reward[3302653]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302653]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302654] = {}
	tMarchFactionSales_Reward[3302654]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302654]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302654]["DeleteItem"][1]["Id"]= 3302654
	tMarchFactionSales_Reward[3302654]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302654]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302654]["RewardItem"][1]["Id"]= 601139
	tMarchFactionSales_Reward[3302654]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302654]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302655] = {}
	tMarchFactionSales_Reward[3302655]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302655]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302655]["DeleteItem"][1]["Id"]= 3302655
	tMarchFactionSales_Reward[3302655]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302655]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302655]["RewardItem"][1]["Id"]= 611139
	tMarchFactionSales_Reward[3302655]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302655]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302656] = {}
	tMarchFactionSales_Reward[3302656]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302656]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302656]["DeleteItem"][1]["Id"]= 3302656
	tMarchFactionSales_Reward[3302656]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302656]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302656]["RewardItem"][1]["Id"]= 612139
	tMarchFactionSales_Reward[3302656]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302656]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302657] = {}
	tMarchFactionSales_Reward[3302657]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302657]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302657]["DeleteItem"][1]["Id"]= 3302657
	tMarchFactionSales_Reward[3302657]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302657]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302657]["RewardItem"][1]["Id"]= 130069
	tMarchFactionSales_Reward[3302657]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302657]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302658] = {}
	tMarchFactionSales_Reward[3302658]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302658]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302658]["DeleteItem"][1]["Id"]= 3302658
	tMarchFactionSales_Reward[3302658]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302658]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302658]["RewardItem"][1]["Id"]= 134069
	tMarchFactionSales_Reward[3302658]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302658]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302659] = {}
	tMarchFactionSales_Reward[3302659]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302659]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302659]["DeleteItem"][1]["Id"]= 3302659
	tMarchFactionSales_Reward[3302659]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302659]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302659]["RewardItem"][1]["Id"]= 136069
	tMarchFactionSales_Reward[3302659]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302659]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302660] = {}
	tMarchFactionSales_Reward[3302660]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302660]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302660]["DeleteItem"][1]["Id"]= 3302660
	tMarchFactionSales_Reward[3302660]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302660]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302660]["RewardItem"][1]["Id"]= 139069
	tMarchFactionSales_Reward[3302660]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302660]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302661] = {}
	tMarchFactionSales_Reward[3302661]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302661]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302661]["DeleteItem"][1]["Id"]= 3302661
	tMarchFactionSales_Reward[3302661]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302661]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302661]["RewardItem"][1]["Id"]= 135069
	tMarchFactionSales_Reward[3302661]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302661]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302662] = {}
	tMarchFactionSales_Reward[3302662]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302662]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302662]["DeleteItem"][1]["Id"]= 3302662
	tMarchFactionSales_Reward[3302662]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302662]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302662]["RewardItem"][1]["Id"]= 133049
	tMarchFactionSales_Reward[3302662]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302662]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302663] = {}
	tMarchFactionSales_Reward[3302663]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302663]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302663]["DeleteItem"][1]["Id"]= 3302663
	tMarchFactionSales_Reward[3302663]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302663]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302663]["RewardItem"][1]["Id"]= 131069
	tMarchFactionSales_Reward[3302663]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302663]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302664] = {}
	tMarchFactionSales_Reward[3302664]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302664]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302664]["DeleteItem"][1]["Id"]= 3302664
	tMarchFactionSales_Reward[3302664]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302664]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302664]["RewardItem"][1]["Id"]= 118069
	tMarchFactionSales_Reward[3302664]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302664]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302665] = {}
	tMarchFactionSales_Reward[3302665]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302665]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302665]["DeleteItem"][1]["Id"]= 3302665
	tMarchFactionSales_Reward[3302665]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302665]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302665]["RewardItem"][1]["Id"]= 114069
	tMarchFactionSales_Reward[3302665]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302665]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302666] = {}
	tMarchFactionSales_Reward[3302666]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302666]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302666]["DeleteItem"][1]["Id"]= 3302666
	tMarchFactionSales_Reward[3302666]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302666]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302666]["RewardItem"][1]["Id"]= 123069
	tMarchFactionSales_Reward[3302666]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302666]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302667] = {}
	tMarchFactionSales_Reward[3302667]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302667]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302667]["DeleteItem"][1]["Id"]= 3302667
	tMarchFactionSales_Reward[3302667]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302667]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302667]["RewardItem"][1]["Id"]= 143069
	tMarchFactionSales_Reward[3302667]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302667]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302668] = {}
	tMarchFactionSales_Reward[3302668]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302668]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302668]["DeleteItem"][1]["Id"]= 3302668
	tMarchFactionSales_Reward[3302668]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302668]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302668]["RewardItem"][1]["Id"]= 145069
	tMarchFactionSales_Reward[3302668]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302668]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302669] = {}
	tMarchFactionSales_Reward[3302669]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302669]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302669]["DeleteItem"][1]["Id"]= 3302669
	tMarchFactionSales_Reward[3302669]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302669]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302669]["RewardItem"][1]["Id"]= 142039
	tMarchFactionSales_Reward[3302669]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302669]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302670] = {}
	tMarchFactionSales_Reward[3302670]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302670]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302670]["DeleteItem"][1]["Id"]= 3302670
	tMarchFactionSales_Reward[3302670]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302670]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302670]["RewardItem"][1]["Id"]= 111069
	tMarchFactionSales_Reward[3302670]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302670]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302671] = {}
	tMarchFactionSales_Reward[3302671]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302671]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302671]["DeleteItem"][1]["Id"]= 3302671
	tMarchFactionSales_Reward[3302671]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302671]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302671]["RewardItem"][1]["Id"]= 138069
	tMarchFactionSales_Reward[3302671]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302671]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302672] = {}
	tMarchFactionSales_Reward[3302672]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302672]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302672]["DeleteItem"][1]["Id"]= 3302672
	tMarchFactionSales_Reward[3302672]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302672]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302672]["RewardItem"][1]["Id"]= 148069
	tMarchFactionSales_Reward[3302672]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302672]["LogId"]= 12000651
	tMarchFactionSales_Reward[3302673] = {}
	tMarchFactionSales_Reward[3302673]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3302673]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3302673]["DeleteItem"][1]["Id"]= 3302673
	tMarchFactionSales_Reward[3302673]["RewardItem"]= {}
	tMarchFactionSales_Reward[3302673]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3302673]["RewardItem"][1]["Id"]= 617139
	tMarchFactionSales_Reward[3302673]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3302673]["LogId"]= 12000651
	
	--雷神金币促销
	tMarchFactionSales_Reward[3320620] = {}
	tMarchFactionSales_Reward[3320620]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320620]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320620]["DeleteItem"][1]["Id"]= 3320620
	tMarchFactionSales_Reward[3320620]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320620]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320620]["RewardItem"][1]["Id"]= 150139
	tMarchFactionSales_Reward[3320620]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320620]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320621] = {}
	tMarchFactionSales_Reward[3320621]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320621]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320621]["DeleteItem"][1]["Id"]= 3320621
	tMarchFactionSales_Reward[3320621]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320621]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320621]["RewardItem"][1]["Id"]= 120129
	tMarchFactionSales_Reward[3320621]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320621]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320622] = {}
	tMarchFactionSales_Reward[3320622]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320622]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320622]["DeleteItem"][1]["Id"]= 3320622
	tMarchFactionSales_Reward[3320622]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320622]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320622]["RewardItem"][1]["Id"]= 160139
	tMarchFactionSales_Reward[3320622]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320622]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320623] = {}
	tMarchFactionSales_Reward[3320623]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320623]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320623]["DeleteItem"][1]["Id"]= 3320623
	tMarchFactionSales_Reward[3320623]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320623]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320623]["RewardItem"][1]["Id"]= 117069
	tMarchFactionSales_Reward[3320623]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320623]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320624] = {}
	tMarchFactionSales_Reward[3320624]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320624]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320624]["DeleteItem"][1]["Id"]= 3320624
	tMarchFactionSales_Reward[3320624]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320624]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320624]["RewardItem"][1]["Id"]= 121129
	tMarchFactionSales_Reward[3320624]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320624]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320625] = {}
	tMarchFactionSales_Reward[3320625]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320625]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320625]["DeleteItem"][1]["Id"]= 3320625
	tMarchFactionSales_Reward[3320625]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320625]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320625]["RewardItem"][1]["Id"]= 152129
	tMarchFactionSales_Reward[3320625]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320625]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320626] = {}
	tMarchFactionSales_Reward[3320626]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320626]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320626]["DeleteItem"][1]["Id"]= 3320626
	tMarchFactionSales_Reward[3320626]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320626]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320626]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3320626]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 6 255 255"
	tMarchFactionSales_Reward[3320626]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320627] = {}
	tMarchFactionSales_Reward[3320627]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320627]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320627]["DeleteItem"][1]["Id"]= 3320627
	tMarchFactionSales_Reward[3320627]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320627]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320627]["RewardItem"][1]["Id"]= 201009
	tMarchFactionSales_Reward[3320627]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 6 255 255"
	tMarchFactionSales_Reward[3320627]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320628] = {}
	tMarchFactionSales_Reward[3320628]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320628]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320628]["DeleteItem"][1]["Id"]= 3320628
	tMarchFactionSales_Reward[3320628]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320628]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320628]["RewardItem"][1]["Id"]= 203009
	tMarchFactionSales_Reward[3320628]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 1 0 0 6"
	tMarchFactionSales_Reward[3320628]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320629] = {}
	tMarchFactionSales_Reward[3320629]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320629]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320629]["DeleteItem"][1]["Id"]= 3320629
	tMarchFactionSales_Reward[3320629]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320629]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320629]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3320629]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255 200"
	tMarchFactionSales_Reward[3320629]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320630] = {}
	tMarchFactionSales_Reward[3320630]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320630]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320630]["DeleteItem"][1]["Id"]= 3320630
	tMarchFactionSales_Reward[3320630]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320630]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320630]["RewardItem"][1]["Id"]= 613129
	tMarchFactionSales_Reward[3320630]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320630]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320631] = {}
	tMarchFactionSales_Reward[3320631]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320631]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320631]["DeleteItem"][1]["Id"]= 3320631
	tMarchFactionSales_Reward[3320631]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320631]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320631]["RewardItem"][1]["Id"]= 511139
	tMarchFactionSales_Reward[3320631]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320631]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320632] = {}
	tMarchFactionSales_Reward[3320632]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320632]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320632]["DeleteItem"][1]["Id"]= 3320632
	tMarchFactionSales_Reward[3320632]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320632]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320632]["RewardItem"][1]["Id"]= 610139
	tMarchFactionSales_Reward[3320632]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320632]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320633] = {}
	tMarchFactionSales_Reward[3320633]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320633]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320633]["DeleteItem"][1]["Id"]= 3320633
	tMarchFactionSales_Reward[3320633]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320633]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320633]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3320633]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320633]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320634] = {}
	tMarchFactionSales_Reward[3320634]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320634]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320634]["DeleteItem"][1]["Id"]= 3320634
	tMarchFactionSales_Reward[3320634]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320634]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320634]["RewardItem"][1]["Id"]= 420139
	tMarchFactionSales_Reward[3320634]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320634]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320635] = {}
	tMarchFactionSales_Reward[3320635]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320635]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320635]["DeleteItem"][1]["Id"]= 3320635
	tMarchFactionSales_Reward[3320635]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320635]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320635]["RewardItem"][1]["Id"]= 480139
	tMarchFactionSales_Reward[3320635]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320635]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320636] = {}
	tMarchFactionSales_Reward[3320636]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320636]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320636]["DeleteItem"][1]["Id"]= 3320636
	tMarchFactionSales_Reward[3320636]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320636]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320636]["RewardItem"][1]["Id"]= 421139
	tMarchFactionSales_Reward[3320636]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320636]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320637] = {}
	tMarchFactionSales_Reward[3320637]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320637]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320637]["DeleteItem"][1]["Id"]= 3320637
	tMarchFactionSales_Reward[3320637]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320637]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320637]["RewardItem"][1]["Id"]= 500129
	tMarchFactionSales_Reward[3320637]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320637]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320638] = {}
	tMarchFactionSales_Reward[3320638]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320638]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320638]["DeleteItem"][1]["Id"]= 3320638
	tMarchFactionSales_Reward[3320638]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320638]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320638]["RewardItem"][1]["Id"]= 561139
	tMarchFactionSales_Reward[3320638]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320638]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320639] = {}
	tMarchFactionSales_Reward[3320639]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320639]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320639]["DeleteItem"][1]["Id"]= 3320639
	tMarchFactionSales_Reward[3320639]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320639]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320639]["RewardItem"][1]["Id"]= 560139
	tMarchFactionSales_Reward[3320639]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320639]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320640] = {}
	tMarchFactionSales_Reward[3320640]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320640]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320640]["DeleteItem"][1]["Id"]= 3320640
	tMarchFactionSales_Reward[3320640]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320640]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320640]["RewardItem"][1]["Id"]= 900049
	tMarchFactionSales_Reward[3320640]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320640]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320641] = {}
	tMarchFactionSales_Reward[3320641]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320641]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320641]["DeleteItem"][1]["Id"]= 3320641
	tMarchFactionSales_Reward[3320641]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320641]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320641]["RewardItem"][1]["Id"]= 601139
	tMarchFactionSales_Reward[3320641]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320641]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320642] = {}
	tMarchFactionSales_Reward[3320642]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320642]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320642]["DeleteItem"][1]["Id"]= 3320642
	tMarchFactionSales_Reward[3320642]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320642]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320642]["RewardItem"][1]["Id"]= 611139
	tMarchFactionSales_Reward[3320642]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320642]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320643] = {}
	tMarchFactionSales_Reward[3320643]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320643]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320643]["DeleteItem"][1]["Id"]= 3320643
	tMarchFactionSales_Reward[3320643]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320643]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320643]["RewardItem"][1]["Id"]= 612139
	tMarchFactionSales_Reward[3320643]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320643]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320644] = {}
	tMarchFactionSales_Reward[3320644]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320644]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320644]["DeleteItem"][1]["Id"]= 3320644
	tMarchFactionSales_Reward[3320644]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320644]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320644]["RewardItem"][1]["Id"]= 130069
	tMarchFactionSales_Reward[3320644]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320644]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320645] = {}
	tMarchFactionSales_Reward[3320645]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320645]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320645]["DeleteItem"][1]["Id"]= 3320645
	tMarchFactionSales_Reward[3320645]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320645]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320645]["RewardItem"][1]["Id"]= 134069
	tMarchFactionSales_Reward[3320645]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320645]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320646] = {}
	tMarchFactionSales_Reward[3320646]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320646]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320646]["DeleteItem"][1]["Id"]= 3320646
	tMarchFactionSales_Reward[3320646]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320646]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320646]["RewardItem"][1]["Id"]= 136069
	tMarchFactionSales_Reward[3320646]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320646]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320647] = {}
	tMarchFactionSales_Reward[3320647]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320647]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320647]["DeleteItem"][1]["Id"]= 3320647
	tMarchFactionSales_Reward[3320647]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320647]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320647]["RewardItem"][1]["Id"]= 139069
	tMarchFactionSales_Reward[3320647]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320647]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320648] = {}
	tMarchFactionSales_Reward[3320648]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320648]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320648]["DeleteItem"][1]["Id"]= 3320648
	tMarchFactionSales_Reward[3320648]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320648]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320648]["RewardItem"][1]["Id"]= 135069
	tMarchFactionSales_Reward[3320648]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320648]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320649] = {}
	tMarchFactionSales_Reward[3320649]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320649]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320649]["DeleteItem"][1]["Id"]= 3320649
	tMarchFactionSales_Reward[3320649]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320649]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320649]["RewardItem"][1]["Id"]= 133049
	tMarchFactionSales_Reward[3320649]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320649]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320650] = {}
	tMarchFactionSales_Reward[3320650]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320650]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320650]["DeleteItem"][1]["Id"]= 3320650
	tMarchFactionSales_Reward[3320650]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320650]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320650]["RewardItem"][1]["Id"]= 131069
	tMarchFactionSales_Reward[3320650]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320650]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320651] = {}
	tMarchFactionSales_Reward[3320651]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320651]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320651]["DeleteItem"][1]["Id"]= 3320651
	tMarchFactionSales_Reward[3320651]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320651]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320651]["RewardItem"][1]["Id"]= 118069
	tMarchFactionSales_Reward[3320651]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320651]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320652] = {}
	tMarchFactionSales_Reward[3320652]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320652]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320652]["DeleteItem"][1]["Id"]= 3320652
	tMarchFactionSales_Reward[3320652]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320652]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320652]["RewardItem"][1]["Id"]= 114069
	tMarchFactionSales_Reward[3320652]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320652]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320653] = {}
	tMarchFactionSales_Reward[3320653]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320653]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320653]["DeleteItem"][1]["Id"]= 3320653
	tMarchFactionSales_Reward[3320653]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320653]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320653]["RewardItem"][1]["Id"]= 123069
	tMarchFactionSales_Reward[3320653]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320653]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320654] = {}
	tMarchFactionSales_Reward[3320654]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320654]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320654]["DeleteItem"][1]["Id"]= 3320654
	tMarchFactionSales_Reward[3320654]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320654]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320654]["RewardItem"][1]["Id"]= 143069
	tMarchFactionSales_Reward[3320654]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320654]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320655] = {}
	tMarchFactionSales_Reward[3320655]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320655]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320655]["DeleteItem"][1]["Id"]= 3320655
	tMarchFactionSales_Reward[3320655]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320655]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320655]["RewardItem"][1]["Id"]= 145069
	tMarchFactionSales_Reward[3320655]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320655]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320656] = {}
	tMarchFactionSales_Reward[3320656]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320656]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320656]["DeleteItem"][1]["Id"]= 3320656
	tMarchFactionSales_Reward[3320656]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320656]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320656]["RewardItem"][1]["Id"]= 142039
	tMarchFactionSales_Reward[3320656]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320656]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320657] = {}
	tMarchFactionSales_Reward[3320657]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320657]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320657]["DeleteItem"][1]["Id"]= 3320657
	tMarchFactionSales_Reward[3320657]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320657]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320657]["RewardItem"][1]["Id"]= 111069
	tMarchFactionSales_Reward[3320657]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320657]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320658] = {}
	tMarchFactionSales_Reward[3320658]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320658]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320658]["DeleteItem"][1]["Id"]= 3320658
	tMarchFactionSales_Reward[3320658]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320658]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320658]["RewardItem"][1]["Id"]= 138069
	tMarchFactionSales_Reward[3320658]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320658]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320659] = {}
	tMarchFactionSales_Reward[3320659]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320659]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320659]["DeleteItem"][1]["Id"]= 3320659
	tMarchFactionSales_Reward[3320659]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320659]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320659]["RewardItem"][1]["Id"]= 148069
	tMarchFactionSales_Reward[3320659]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320659]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320660] = {}
	tMarchFactionSales_Reward[3320660]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320660]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320660]["DeleteItem"][1]["Id"]= 3320660
	tMarchFactionSales_Reward[3320660]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320660]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320660]["RewardItem"][1]["Id"]= 617139
	tMarchFactionSales_Reward[3320660]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320660]["LogId"]= 12000651
	
	--雷神版本新增非赠装备购买
	tMarchFactionSales_Reward[3320391] = {}
	tMarchFactionSales_Reward[3320391]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320391]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320391]["DeleteItem"][1]["Id"]= 3320391
	tMarchFactionSales_Reward[3320391]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320391]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320391]["RewardItem"][1]["Id"]= 150139
	tMarchFactionSales_Reward[3320391]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320391]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320392] = {}
	tMarchFactionSales_Reward[3320392]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320392]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320392]["DeleteItem"][1]["Id"]= 3320392
	tMarchFactionSales_Reward[3320392]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320392]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320392]["RewardItem"][1]["Id"]= 120129
	tMarchFactionSales_Reward[3320392]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320392]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320393] = {}
	tMarchFactionSales_Reward[3320393]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320393]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320393]["DeleteItem"][1]["Id"]= 3320393
	tMarchFactionSales_Reward[3320393]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320393]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320393]["RewardItem"][1]["Id"]= 160139
	tMarchFactionSales_Reward[3320393]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320393]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320394] = {}
	tMarchFactionSales_Reward[3320394]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320394]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320394]["DeleteItem"][1]["Id"]= 3320394
	tMarchFactionSales_Reward[3320394]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320394]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320394]["RewardItem"][1]["Id"]= 117069
	tMarchFactionSales_Reward[3320394]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320394]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320395] = {}
	tMarchFactionSales_Reward[3320395]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320395]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320395]["DeleteItem"][1]["Id"]= 3320395
	tMarchFactionSales_Reward[3320395]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320395]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320395]["RewardItem"][1]["Id"]= 121129
	tMarchFactionSales_Reward[3320395]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320395]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320396] = {}
	tMarchFactionSales_Reward[3320396]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320396]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320396]["DeleteItem"][1]["Id"]= 3320396
	tMarchFactionSales_Reward[3320396]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320396]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320396]["RewardItem"][1]["Id"]= 152129
	tMarchFactionSales_Reward[3320396]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320396]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320397] = {}
	tMarchFactionSales_Reward[3320397]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320397]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320397]["DeleteItem"][1]["Id"]= 3320397
	tMarchFactionSales_Reward[3320397]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320397]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320397]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3320397]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 6 255 255"
	tMarchFactionSales_Reward[3320397]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320398] = {}
	tMarchFactionSales_Reward[3320398]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320398]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320398]["DeleteItem"][1]["Id"]= 3320398
	tMarchFactionSales_Reward[3320398]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320398]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320398]["RewardItem"][1]["Id"]= 201009
	tMarchFactionSales_Reward[3320398]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 6 255 255"
	tMarchFactionSales_Reward[3320398]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320399] = {}
	tMarchFactionSales_Reward[3320399]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320399]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320399]["DeleteItem"][1]["Id"]= 3320399
	tMarchFactionSales_Reward[3320399]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320399]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320399]["RewardItem"][1]["Id"]= 203009
	tMarchFactionSales_Reward[3320399]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 1 0 0 6"
	tMarchFactionSales_Reward[3320399]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320400] = {}
	tMarchFactionSales_Reward[3320400]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320400]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320400]["DeleteItem"][1]["Id"]= 3320400
	tMarchFactionSales_Reward[3320400]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320400]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320400]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3320400]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255 200"
	tMarchFactionSales_Reward[3320400]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320401] = {}
	tMarchFactionSales_Reward[3320401]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320401]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320401]["DeleteItem"][1]["Id"]= 3320401
	tMarchFactionSales_Reward[3320401]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320401]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320401]["RewardItem"][1]["Id"]= 613129
	tMarchFactionSales_Reward[3320401]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320401]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320402] = {}
	tMarchFactionSales_Reward[3320402]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320402]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320402]["DeleteItem"][1]["Id"]= 3320402
	tMarchFactionSales_Reward[3320402]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320402]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320402]["RewardItem"][1]["Id"]= 511139
	tMarchFactionSales_Reward[3320402]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320402]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320403] = {}
	tMarchFactionSales_Reward[3320403]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320403]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320403]["DeleteItem"][1]["Id"]= 3320403
	tMarchFactionSales_Reward[3320403]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320403]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320403]["RewardItem"][1]["Id"]= 610139
	tMarchFactionSales_Reward[3320403]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320403]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320404] = {}
	tMarchFactionSales_Reward[3320404]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320404]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320404]["DeleteItem"][1]["Id"]= 3320404
	tMarchFactionSales_Reward[3320404]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320404]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320404]["RewardItem"][1]["Id"]= 410139
	tMarchFactionSales_Reward[3320404]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320404]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320405] = {}
	tMarchFactionSales_Reward[3320405]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320405]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320405]["DeleteItem"][1]["Id"]= 3320405
	tMarchFactionSales_Reward[3320405]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320405]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320405]["RewardItem"][1]["Id"]= 420139
	tMarchFactionSales_Reward[3320405]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320405]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320406] = {}
	tMarchFactionSales_Reward[3320406]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320406]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320406]["DeleteItem"][1]["Id"]= 3320406
	tMarchFactionSales_Reward[3320406]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320406]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320406]["RewardItem"][1]["Id"]= 480139
	tMarchFactionSales_Reward[3320406]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320406]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320407] = {}
	tMarchFactionSales_Reward[3320407]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320407]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320407]["DeleteItem"][1]["Id"]= 3320407
	tMarchFactionSales_Reward[3320407]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320407]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320407]["RewardItem"][1]["Id"]= 421139
	tMarchFactionSales_Reward[3320407]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320407]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320408] = {}
	tMarchFactionSales_Reward[3320408]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320408]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320408]["DeleteItem"][1]["Id"]= 3320408
	tMarchFactionSales_Reward[3320408]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320408]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320408]["RewardItem"][1]["Id"]= 500129
	tMarchFactionSales_Reward[3320408]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320408]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320409] = {}
	tMarchFactionSales_Reward[3320409]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320409]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320409]["DeleteItem"][1]["Id"]= 3320409
	tMarchFactionSales_Reward[3320409]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320409]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320409]["RewardItem"][1]["Id"]= 561139
	tMarchFactionSales_Reward[3320409]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320409]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320410] = {}
	tMarchFactionSales_Reward[3320410]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320410]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320410]["DeleteItem"][1]["Id"]= 3320410
	tMarchFactionSales_Reward[3320410]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320410]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320410]["RewardItem"][1]["Id"]= 560139
	tMarchFactionSales_Reward[3320410]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320410]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320411] = {}
	tMarchFactionSales_Reward[3320411]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320411]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320411]["DeleteItem"][1]["Id"]= 3320411
	tMarchFactionSales_Reward[3320411]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320411]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320411]["RewardItem"][1]["Id"]= 900049
	tMarchFactionSales_Reward[3320411]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320411]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320412] = {}
	tMarchFactionSales_Reward[3320412]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320412]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320412]["DeleteItem"][1]["Id"]= 3320412
	tMarchFactionSales_Reward[3320412]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320412]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320412]["RewardItem"][1]["Id"]= 601139
	tMarchFactionSales_Reward[3320412]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320412]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320413] = {}
	tMarchFactionSales_Reward[3320413]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320413]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320413]["DeleteItem"][1]["Id"]= 3320413
	tMarchFactionSales_Reward[3320413]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320413]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320413]["RewardItem"][1]["Id"]= 611139
	tMarchFactionSales_Reward[3320413]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320413]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320414] = {}
	tMarchFactionSales_Reward[3320414]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320414]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320414]["DeleteItem"][1]["Id"]= 3320414
	tMarchFactionSales_Reward[3320414]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320414]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320414]["RewardItem"][1]["Id"]= 612139
	tMarchFactionSales_Reward[3320414]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320414]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320415] = {}
	tMarchFactionSales_Reward[3320415]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320415]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320415]["DeleteItem"][1]["Id"]= 3320415
	tMarchFactionSales_Reward[3320415]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320415]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320415]["RewardItem"][1]["Id"]= 130069
	tMarchFactionSales_Reward[3320415]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320415]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320416] = {}
	tMarchFactionSales_Reward[3320416]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320416]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320416]["DeleteItem"][1]["Id"]= 3320416
	tMarchFactionSales_Reward[3320416]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320416]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320416]["RewardItem"][1]["Id"]= 134069
	tMarchFactionSales_Reward[3320416]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320416]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320417] = {}
	tMarchFactionSales_Reward[3320417]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320417]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320417]["DeleteItem"][1]["Id"]= 3320417
	tMarchFactionSales_Reward[3320417]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320417]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320417]["RewardItem"][1]["Id"]= 136069
	tMarchFactionSales_Reward[3320417]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320417]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320418] = {}
	tMarchFactionSales_Reward[3320418]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320418]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320418]["DeleteItem"][1]["Id"]= 3320418
	tMarchFactionSales_Reward[3320418]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320418]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320418]["RewardItem"][1]["Id"]= 139069
	tMarchFactionSales_Reward[3320418]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320418]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320419] = {}
	tMarchFactionSales_Reward[3320419]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320419]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320419]["DeleteItem"][1]["Id"]= 3320419
	tMarchFactionSales_Reward[3320419]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320419]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320419]["RewardItem"][1]["Id"]= 135069
	tMarchFactionSales_Reward[3320419]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320419]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320420] = {}
	tMarchFactionSales_Reward[3320420]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320420]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320420]["DeleteItem"][1]["Id"]= 3320420
	tMarchFactionSales_Reward[3320420]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320420]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320420]["RewardItem"][1]["Id"]= 133049
	tMarchFactionSales_Reward[3320420]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320420]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320421] = {}
	tMarchFactionSales_Reward[3320421]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320421]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320421]["DeleteItem"][1]["Id"]= 3320421
	tMarchFactionSales_Reward[3320421]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320421]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320421]["RewardItem"][1]["Id"]= 131069
	tMarchFactionSales_Reward[3320421]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320421]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320422] = {}
	tMarchFactionSales_Reward[3320422]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320422]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320422]["DeleteItem"][1]["Id"]= 3320422
	tMarchFactionSales_Reward[3320422]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320422]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320422]["RewardItem"][1]["Id"]= 118069
	tMarchFactionSales_Reward[3320422]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320422]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320423] = {}
	tMarchFactionSales_Reward[3320423]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320423]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320423]["DeleteItem"][1]["Id"]= 3320423
	tMarchFactionSales_Reward[3320423]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320423]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320423]["RewardItem"][1]["Id"]= 114069
	tMarchFactionSales_Reward[3320423]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320423]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320424] = {}
	tMarchFactionSales_Reward[3320424]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320424]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320424]["DeleteItem"][1]["Id"]= 3320424
	tMarchFactionSales_Reward[3320424]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320424]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320424]["RewardItem"][1]["Id"]= 123069
	tMarchFactionSales_Reward[3320424]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320424]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320425] = {}
	tMarchFactionSales_Reward[3320425]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320425]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320425]["DeleteItem"][1]["Id"]= 3320425
	tMarchFactionSales_Reward[3320425]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320425]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320425]["RewardItem"][1]["Id"]= 143069
	tMarchFactionSales_Reward[3320425]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320425]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320426] = {}
	tMarchFactionSales_Reward[3320426]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320426]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320426]["DeleteItem"][1]["Id"]= 3320426
	tMarchFactionSales_Reward[3320426]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320426]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320426]["RewardItem"][1]["Id"]= 145069
	tMarchFactionSales_Reward[3320426]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320426]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320427] = {}
	tMarchFactionSales_Reward[3320427]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320427]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320427]["DeleteItem"][1]["Id"]= 3320427
	tMarchFactionSales_Reward[3320427]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320427]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320427]["RewardItem"][1]["Id"]= 142039
	tMarchFactionSales_Reward[3320427]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320427]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320428] = {}
	tMarchFactionSales_Reward[3320428]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320428]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320428]["DeleteItem"][1]["Id"]= 3320428
	tMarchFactionSales_Reward[3320428]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320428]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320428]["RewardItem"][1]["Id"]= 111069
	tMarchFactionSales_Reward[3320428]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320428]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320429] = {}
	tMarchFactionSales_Reward[3320429]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320429]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320429]["DeleteItem"][1]["Id"]= 3320429
	tMarchFactionSales_Reward[3320429]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320429]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320429]["RewardItem"][1]["Id"]= 138069
	tMarchFactionSales_Reward[3320429]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320429]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320430] = {}
	tMarchFactionSales_Reward[3320430]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320430]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320430]["DeleteItem"][1]["Id"]= 3320430
	tMarchFactionSales_Reward[3320430]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320430]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320430]["RewardItem"][1]["Id"]= 148069
	tMarchFactionSales_Reward[3320430]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320430]["LogId"]= 12000651
	tMarchFactionSales_Reward[3320431] = {}
	tMarchFactionSales_Reward[3320431]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3320431]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3320431]["DeleteItem"][1]["Id"]= 3320431
	tMarchFactionSales_Reward[3320431]["RewardItem"]= {}
	tMarchFactionSales_Reward[3320431]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3320431]["RewardItem"][1]["Id"]= 617139
	tMarchFactionSales_Reward[3320431]["RewardItem"][1]["Attr"]= "0 0 0 0 0 0 0 5 0 0 6 255 255"
	tMarchFactionSales_Reward[3320431]["LogId"]= 12000651
	
	
----180209[英文征服][活动脚本]2月赠品大狂欢添加出售物品  2.22 - 2.28
	tMarchFactionSales_Reward[3307508] = {}
	tMarchFactionSales_Reward[3307508]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3307508]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3307508]["DeleteItem"][1]["Id"]= 3307508
	tMarchFactionSales_Reward[3307508]["RewardItem"]= {}
	tMarchFactionSales_Reward[3307508]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3307508]["RewardItem"][1]["Id"]= 151019
	tMarchFactionSales_Reward[3307508]["RewardItem"][1]["Attr"]= "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3307508]["LogId"]= 12000651
	--180320[英文征服][活动脚本]4月新服活动（4.19）
	--风雷翅
	tMarchFactionSales_Reward[3307860] = {}
	tMarchFactionSales_Reward[3307860]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3307860]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3307860]["DeleteItem"][1]["Id"]= 3307860
	tMarchFactionSales_Reward[3307860]["RewardItem"]= {}
	tMarchFactionSales_Reward[3307860]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3307860]["RewardItem"][1]["Id"]= 204009
	tMarchFactionSales_Reward[3307860]["RewardItem"][1]["Attr"]= "0 1 3"
	tMarchFactionSales_Reward[3307860]["LogId"]= 12000651
	--凌霄扇
	tMarchFactionSales_Reward[3307861] = {}
	tMarchFactionSales_Reward[3307861]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3307861]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3307861]["DeleteItem"][1]["Id"]= 3307861
	tMarchFactionSales_Reward[3307861]["RewardItem"]= {}
	tMarchFactionSales_Reward[3307861]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3307861]["RewardItem"][1]["Id"]= 201009
	tMarchFactionSales_Reward[3307861]["RewardItem"][1]["Attr"]= "0 1 3"
	tMarchFactionSales_Reward[3307861]["LogId"]= 12000651
	--混元塔
	tMarchFactionSales_Reward[3307862] = {}
	tMarchFactionSales_Reward[3307862]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3307862]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3307862]["DeleteItem"][1]["Id"]= 3307862
	tMarchFactionSales_Reward[3307862]["RewardItem"]= {}
	tMarchFactionSales_Reward[3307862]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3307862]["RewardItem"][1]["Id"]= 202009
	tMarchFactionSales_Reward[3307862]["RewardItem"][1]["Attr"]= "0 1 3"
	tMarchFactionSales_Reward[3307862]["LogId"]= 12000651
	--马鞭
	tMarchFactionSales_Reward[3307863] = {}
	tMarchFactionSales_Reward[3307863]["DeleteItem"]= {}
	tMarchFactionSales_Reward[3307863]["DeleteItem"][1]= {}
	tMarchFactionSales_Reward[3307863]["DeleteItem"][1]["Id"]= 3307863
	tMarchFactionSales_Reward[3307863]["RewardItem"]= {}
	tMarchFactionSales_Reward[3307863]["RewardItem"][1]= {}
	tMarchFactionSales_Reward[3307863]["RewardItem"][1]["Id"]= 203009
	tMarchFactionSales_Reward[3307863]["RewardItem"][1]["Attr"]= "0 1 3"
	tMarchFactionSales_Reward[3307863]["LogId"]= 12000651
	-----------------------------	【英文征服】5月赠品大狂欢 （5.24-6.7）--------------------------
	-- 极品15级铁头
	tMarchFactionSales_Reward[3308773] = {}
	tMarchFactionSales_Reward[3308773]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3308773]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3308773]["DeleteItem"][1]["Id"] = 3308773
	tMarchFactionSales_Reward[3308773]["RewardItem"] = {}
	tMarchFactionSales_Reward[3308773]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3308773]["RewardItem"][1]["Id"] = 170009
	tMarchFactionSales_Reward[3308773]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3308773]["LogId"] = 12000651
	-- 极品15级铁衣
	tMarchFactionSales_Reward[3308774] = {}
	tMarchFactionSales_Reward[3308774]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3308774]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3308774]["DeleteItem"][1]["Id"] = 3308774
	tMarchFactionSales_Reward[3308774]["RewardItem"] = {}
	tMarchFactionSales_Reward[3308774]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3308774]["RewardItem"][1]["Id"] = 101009
	tMarchFactionSales_Reward[3308774]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3308774]["LogId"] = 12000651
	-- 极品15级铁扇武器
	tMarchFactionSales_Reward[3308775] = {}
	tMarchFactionSales_Reward[3308775]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3308775]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3308775]["DeleteItem"][1]["Id"] = 3308775
	tMarchFactionSales_Reward[3308775]["RewardItem"] = {}
	tMarchFactionSales_Reward[3308775]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3308775]["RewardItem"][1]["Id"] = 626029
	tMarchFactionSales_Reward[3308775]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3308775]["LogId"] = 12000651
	-- 极品15级狂战武器
	tMarchFactionSales_Reward[3308776] = {}
	tMarchFactionSales_Reward[3308776]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3308776]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3308776]["DeleteItem"][1]["Id"] = 3308776
	tMarchFactionSales_Reward[3308776]["RewardItem"] = {}
	tMarchFactionSales_Reward[3308776]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3308776]["RewardItem"][1]["Id"] = 624029
	tMarchFactionSales_Reward[3308776]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3308776]["LogId"] = 12000651
	
	--雷神金币
	-- 极品15级铁头
	tMarchFactionSales_Reward[3320664] = {}
	tMarchFactionSales_Reward[3320664]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3320664]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320664]["DeleteItem"][1]["Id"] = 3320664
	tMarchFactionSales_Reward[3320664]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320664]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320664]["RewardItem"][1]["Id"] = 170009
	tMarchFactionSales_Reward[3320664]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320664]["LogId"] = 12000651
	-- 极品15级铁衣
	tMarchFactionSales_Reward[3320665] = {}
	tMarchFactionSales_Reward[3320665]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3320665]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320665]["DeleteItem"][1]["Id"] = 3320665
	tMarchFactionSales_Reward[3320665]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320665]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320665]["RewardItem"][1]["Id"] = 101009
	tMarchFactionSales_Reward[3320665]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320665]["LogId"] = 12000651
	-- 极品15级铁扇武器
	tMarchFactionSales_Reward[3320666] = {}
	tMarchFactionSales_Reward[3320666]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3320666]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320666]["DeleteItem"][1]["Id"] = 3320666
	tMarchFactionSales_Reward[3320666]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320666]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320666]["RewardItem"][1]["Id"] = 626029
	tMarchFactionSales_Reward[3320666]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320666]["LogId"] = 12000651
	-- 极品15级狂战武器
	tMarchFactionSales_Reward[3320667] = {}
	tMarchFactionSales_Reward[3320667]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3320667]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320667]["DeleteItem"][1]["Id"] = 3320667
	tMarchFactionSales_Reward[3320667]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320667]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320667]["RewardItem"][1]["Id"] = 624029
	tMarchFactionSales_Reward[3320667]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320667]["LogId"] = 12000651
	
	--雷神版本新增非赠装备购买
	-- 极品15级铁头
	tMarchFactionSales_Reward[3320380] = {}
	tMarchFactionSales_Reward[3320380]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3320380]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320380]["DeleteItem"][1]["Id"] = 3320380
	tMarchFactionSales_Reward[3320380]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320380]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320380]["RewardItem"][1]["Id"] = 170009
	tMarchFactionSales_Reward[3320380]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320380]["LogId"] = 12000651
	-- 极品15级铁衣
	tMarchFactionSales_Reward[3320381] = {}
	tMarchFactionSales_Reward[3320381]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3320381]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320381]["DeleteItem"][1]["Id"] = 3320381
	tMarchFactionSales_Reward[3320381]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320381]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320381]["RewardItem"][1]["Id"] = 101009
	tMarchFactionSales_Reward[3320381]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320381]["LogId"] = 12000651
	-- 极品15级铁扇武器
	tMarchFactionSales_Reward[3320382] = {}
	tMarchFactionSales_Reward[3320382]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3320382]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320382]["DeleteItem"][1]["Id"] = 3320382
	tMarchFactionSales_Reward[3320382]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320382]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320382]["RewardItem"][1]["Id"] = 626029
	tMarchFactionSales_Reward[3320382]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320382]["LogId"] = 12000651
	-- 极品15级狂战武器
	tMarchFactionSales_Reward[3320383] = {}
	tMarchFactionSales_Reward[3320383]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3320383]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3320383]["DeleteItem"][1]["Id"] = 3320383
	tMarchFactionSales_Reward[3320383]["RewardItem"] = {}
	tMarchFactionSales_Reward[3320383]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3320383]["RewardItem"][1]["Id"] = 624029
	tMarchFactionSales_Reward[3320383]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 3 0 0 4 255"
	tMarchFactionSales_Reward[3320383]["LogId"] = 12000651
	
	-- 极品15级狂战武器
	tMarchFactionSales_Reward[3321412] = {}
	tMarchFactionSales_Reward[3321412]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3321412]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3321412]["DeleteItem"][1]["Id"] = 3321412
	tMarchFactionSales_Reward[3321412]["RewardItem"] = {}
	tMarchFactionSales_Reward[3321412]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3321412]["RewardItem"][1]["Id"] = 624029
	tMarchFactionSales_Reward[3321412]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321412]["LogId"] = 12000651

	-- 极品15级狂战武器
	tMarchFactionSales_Reward[3321466] = {}
	tMarchFactionSales_Reward[3321466]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3321466]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3321466]["DeleteItem"][1]["Id"] = 3321466
	tMarchFactionSales_Reward[3321466]["RewardItem"] = {}
	tMarchFactionSales_Reward[3321466]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3321466]["RewardItem"][1]["Id"] = 624029
	tMarchFactionSales_Reward[3321466]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3321466]["LogId"] = 12000651
	
	-- 极品15级狂战武器
	tMarchFactionSales_Reward[3312601] = {}
	tMarchFactionSales_Reward[3312601]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3312601]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3312601]["DeleteItem"][1]["Id"] = 3312601
	tMarchFactionSales_Reward[3312601]["RewardItem"] = {}
	tMarchFactionSales_Reward[3312601]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3312601]["RewardItem"][1]["Id"] = 624029
	tMarchFactionSales_Reward[3312601]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 0 7 0 0 8 255 255"
	tMarchFactionSales_Reward[3312601]["LogId"] = 12000651
	--------------------------------2020~1月新年促销--------------------------------
	-- ===2洞+8-7勇士杵赠
	-- ===索引: tMarchFactionSales_Reward[3314806]
	-- ===删除: 3314806,1
	tMarchFactionSales_Reward[3314806] = {}
	tMarchFactionSales_Reward[3314806]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314806]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314806]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314806]["DeleteItem"][1]["Id"] = 3314806 -- 【库】+8IronScepterPack(B)[属性:9]
	tMarchFactionSales_Reward[3314806]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314806]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314806]["RewardItem"][1]["Id"] = 481029 -- IronScepter[481029][属性:0][叠加:0][金币:550], 【表格】2洞+8-7勇士杵赠
	tMarchFactionSales_Reward[3314806]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 0 0 8 255 255" -- 2洞7%神佑（追加+8）IronScepter（赠）*1
	tMarchFactionSales_Reward[3314806]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314806]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314806]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314807] = {}
	-- ===2洞+8-7勇士杵非赠
	-- ===索引: tMarchFactionSales_Reward[3314807]
	-- ===删除: 3314807,1
	tMarchFactionSales_Reward[3314807]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314807]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314807]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314807]["DeleteItem"][1]["Id"] = 3314807 -- 【库】+8IronScepterPack[属性:9]
	tMarchFactionSales_Reward[3314807]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314807]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314807]["RewardItem"][1]["Id"] = 481029 -- IronScepter[481029][属性:0][叠加:0][金币:550], 【表格】2洞+8-7勇士杵非赠
	tMarchFactionSales_Reward[3314807]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 0 0 8 255 255" -- 2洞7%神佑（追加+8）IronScepter*1
	tMarchFactionSales_Reward[3314807]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314807]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314807]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314808] = {}
	-- ===1洞+4拂尘赠
	-- ===索引: tMarchFactionSales_Reward[3314808]
	-- ===删除: 3314808,1
	tMarchFactionSales_Reward[3314808]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314808]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314808]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314808]["DeleteItem"][1]["Id"] = 3314808 -- 【库】+4DesireHossuPack(B)[属性:9]
	tMarchFactionSales_Reward[3314808]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314808]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314808]["RewardItem"][1]["Id"] = 619029 -- DragonRuler[619029][属性:0][叠加:0][金币:1100], 【表格】1洞+4拂尘赠
	tMarchFactionSales_Reward[3314808]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4 255" -- 1洞（追加+4）DragonRuler（赠）*1
	tMarchFactionSales_Reward[3314808]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314808]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314808]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314809] = {}
	-- ===1+6拂尘赠
	-- ===索引: tMarchFactionSales_Reward[3314809]
	-- ===删除: 3314809,1
	tMarchFactionSales_Reward[3314809]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314809]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314809]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314809]["DeleteItem"][1]["Id"] = 3314809 -- 【库】+6DesireHossuPack(B)[属性:9]
	tMarchFactionSales_Reward[3314809]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314809]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314809]["RewardItem"][1]["Id"] = 619029 -- DragonRuler[619029][属性:0][叠加:0][金币:1100], 【表格】2洞+6拂尘赠
	tMarchFactionSales_Reward[3314809]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 6 255" -- 1洞（追加+6）DragonRuler（赠）*1
	tMarchFactionSales_Reward[3314809]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314809]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314809]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314810] = {}
	-- ===2洞+8拂尘赠
	-- ===索引: tMarchFactionSales_Reward[3314810]
	-- ===删除: 3314810,1
	tMarchFactionSales_Reward[3314810]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314810]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314810]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314810]["DeleteItem"][1]["Id"] = 3314810 -- 【库】+8DesireHossuPack(B)[属性:9]
	tMarchFactionSales_Reward[3314810]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314810]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314810]["RewardItem"][1]["Id"] = 619029 -- DragonRuler[619029][属性:0][叠加:0][金币:1100], 【表格】2洞+8拂尘赠
	tMarchFactionSales_Reward[3314810]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 8 255 255" -- 2洞（追加+8）DragonRuler（赠）*1
	tMarchFactionSales_Reward[3314810]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314810]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314810]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314811] = {}
	-- ===1洞+4拂尘赠
	-- ===索引: tMarchFactionSales_Reward[3314811]
	-- ===删除: 3314811,1
	tMarchFactionSales_Reward[3314811]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314811]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314811]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314811]["DeleteItem"][1]["Id"] = 3314811 -- 【库】+4DesireHossuPack[属性:9]
	tMarchFactionSales_Reward[3314811]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314811]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314811]["RewardItem"][1]["Id"] = 619029 -- DragonRuler[619029][属性:0][叠加:0][金币:1100], 【表格】1洞+4拂尘
	tMarchFactionSales_Reward[3314811]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 4 255" -- 1洞（追加+4）DragonRuler*1
	tMarchFactionSales_Reward[3314811]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314811]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314811]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314812] = {}
	-- ===2洞+6拂尘赠
	-- ===索引: tMarchFactionSales_Reward[3314812]
	-- ===删除: 3314812,1
	tMarchFactionSales_Reward[3314812]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314812]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314812]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314812]["DeleteItem"][1]["Id"] = 3314812 -- 【库】+6DesireHossuPack[属性:9]
	tMarchFactionSales_Reward[3314812]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314812]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314812]["RewardItem"][1]["Id"] = 619029 -- DragonRuler[619029][属性:0][叠加:0][金币:1100], 【表格】2洞+6拂尘
	tMarchFactionSales_Reward[3314812]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 6 255" -- 1洞（追加+6）DragonRuler*1
	tMarchFactionSales_Reward[3314812]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314812]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314812]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314813] = {}
	-- ===2洞+8拂尘赠
	-- ===索引: tMarchFactionSales_Reward[3314813]
	-- ===删除: 3314813,1
	tMarchFactionSales_Reward[3314813]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314813]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314813]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314813]["DeleteItem"][1]["Id"] = 3314813 -- 【库】+8DesireHossuPack[属性:9]
	tMarchFactionSales_Reward[3314813]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314813]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314813]["RewardItem"][1]["Id"] = 619029 -- DragonRuler[619029][属性:0][叠加:0][金币:1100], 【表格】2洞+8拂尘
	tMarchFactionSales_Reward[3314813]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 8 255 255" -- 2洞（追加+8）DragonRuler*1
	tMarchFactionSales_Reward[3314813]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314813]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314813]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314814] = {}
	-- ===8个万能神纹精粹
	-- ===索引: tMarchFactionSales_Reward[3314814]
	-- ===删除: 3314814,1
	tMarchFactionSales_Reward[3314814]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314814]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314814]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314814]["DeleteItem"][1]["Id"] = 3314814 -- 【库】RuneCrystal(B)Pack[属性:9]
	tMarchFactionSales_Reward[3314814]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314814]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314814]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】8个万能神纹精粹
	tMarchFactionSales_Reward[3314814]["RewardItem"][1]["Attr"] = "0 8 3" -- UniversalRuneEssence（赠）*8
	tMarchFactionSales_Reward[3314814]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314814]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314814]["RewardEffect"]["Effect"] = "angelwing"

	tMarchFactionSales_Reward[3314890] = {}
	-- ===5个黄色神纹精粹包
	-- ===索引: tMarchFactionSales_Reward[3314890]
	-- ===删除: 3314890,1
	tMarchFactionSales_Reward[3314890]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314890]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314890]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314890]["DeleteItem"][1]["Id"] = 3314890 -- 【库】YellowRuneEssence(B)*5[属性:9]
	tMarchFactionSales_Reward[3314890]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314890]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314890]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】5个黄色神纹精粹
	tMarchFactionSales_Reward[3314890]["RewardItem"][1]["Attr"] = "0 5 3" -- YellowRuneEssence（赠）*5
	tMarchFactionSales_Reward[3314890]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314890]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314890]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314815] = {}
	-- ===1洞+4-3勇士杵赠
	-- ===索引: tMarchFactionSales_Reward[3314815]
	-- ===删除: 3314815,1
	tMarchFactionSales_Reward[3314815]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314815]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314815]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314815]["DeleteItem"][1]["Id"] = 3314815 -- 【库】+4IronScepterPack(B)[属性:9]
	tMarchFactionSales_Reward[3314815]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314815]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314815]["RewardItem"][1]["Id"] = 481029 -- IronScepter[481029][属性:0][叠加:0][金币:550], 【表格】1洞+4-3勇士杵赠
	tMarchFactionSales_Reward[3314815]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）IronScepter（赠）*1
	tMarchFactionSales_Reward[3314815]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314815]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314815]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314816] = {}
	-- ===2洞+6-5勇士杵赠
	-- ===索引: tMarchFactionSales_Reward[3314816]
	-- ===删除: 3314816,1
	tMarchFactionSales_Reward[3314816]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314816]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314816]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314816]["DeleteItem"][1]["Id"] = 3314816 -- 【库】+6IronScepterPack(B)[属性:9]
	tMarchFactionSales_Reward[3314816]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314816]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314816]["RewardItem"][1]["Id"] = 481029 -- IronScepter[481029][属性:0][叠加:0][金币:550], 【表格】2洞+6-5勇士杵赠
	tMarchFactionSales_Reward[3314816]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6 255 255" -- 2洞5%神佑（追加+6）IronScepter（赠）*1
	tMarchFactionSales_Reward[3314816]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314816]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314816]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314817] = {}
	-- ===2洞+8-7勇士杵赠
	-- ===索引: tMarchFactionSales_Reward[3314817]
	-- ===删除: 3314817,1
	tMarchFactionSales_Reward[3314817]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314817]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314817]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314817]["DeleteItem"][1]["Id"] = 3314817 -- 【库】+8IronScepterPack(B)[属性:9]
	tMarchFactionSales_Reward[3314817]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314817]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314817]["RewardItem"][1]["Id"] = 481029 -- IronScepter[481029][属性:0][叠加:0][金币:550], 【表格】2洞+8-7勇士杵赠
	tMarchFactionSales_Reward[3314817]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 0 0 8 255 255" -- 2洞7%神佑（追加+8）IronScepter（赠）*1
	tMarchFactionSales_Reward[3314817]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314817]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314817]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314884] = {}
	-- ===1洞+4拂尘赠
	-- ===索引: tMarchFactionSales_Reward[3314884]
	-- ===删除: 3314884,1
	tMarchFactionSales_Reward[3314884]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314884]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314884]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314884]["DeleteItem"][1]["Id"] = 3314884 -- 【库】+4DesireHossuPack(B)[属性:9]
	tMarchFactionSales_Reward[3314884]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314884]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314884]["RewardItem"][1]["Id"] = 619029 -- DragonRuler[619029][属性:0][叠加:0][金币:1100], 【表格】1洞+4拂尘赠
	tMarchFactionSales_Reward[3314884]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 4 255" -- 1洞（追加+4）DragonRuler（赠）*1
	tMarchFactionSales_Reward[3314884]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314884]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314884]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314885] = {}
	-- ===2洞+6拂尘赠
	-- ===索引: tMarchFactionSales_Reward[3314885]
	-- ===删除: 3314885,1
	tMarchFactionSales_Reward[3314885]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314885]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314885]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314885]["DeleteItem"][1]["Id"] = 3314885 -- 【库】+6DesireHossuPack(B)[属性:9]
	tMarchFactionSales_Reward[3314885]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314885]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314885]["RewardItem"][1]["Id"] = 619029 -- DragonRuler[619029][属性:0][叠加:0][金币:1100], 【表格】2洞+6拂尘赠
	tMarchFactionSales_Reward[3314885]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 6 255" -- 1洞（追加+6）DragonRuler（赠）*1
	tMarchFactionSales_Reward[3314885]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314885]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314885]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314886] = {}
	-- ===2洞+8拂尘赠
	-- ===索引: tMarchFactionSales_Reward[3314886]
	-- ===删除: 3314886,1
	tMarchFactionSales_Reward[3314886]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314886]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314886]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314886]["DeleteItem"][1]["Id"] = 3314886 -- 【库】+8DesireHossuPack(B)[属性:9]
	tMarchFactionSales_Reward[3314886]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314886]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314886]["RewardItem"][1]["Id"] = 619029 -- DragonRuler[619029][属性:0][叠加:0][金币:1100], 【表格】2洞+8拂尘赠
	tMarchFactionSales_Reward[3314886]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 8 255 255" -- 2洞（追加+8）DragonRuler（赠）*1
	tMarchFactionSales_Reward[3314886]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314886]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314886]["RewardEffect"]["Effect"] = "angelwing"

	
	tMarchFactionSales_Reward[3314916] = {}
	-- ===HellWaith（1-Handed）Pack
	-- ===索引: tMarchFactionSales_Reward[3314916]
	-- ===删除: 3314916,1
	tMarchFactionSales_Reward[3314916]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314916]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314916]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314916]["DeleteItem"][1]["Id"] = 3314916 -- 【库】HellWaith(1-Handed)Pack[属性:9]
	tMarchFactionSales_Reward[3314916]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314916]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314916]["RewardItem"][1]["Id"] = 360222 -- HellWaith[360222][属性:0][叠加:0][金币:0], 【表格】HellWaith（1-Handed）Pack
	tMarchFactionSales_Reward[3314916]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑HellWaith（赠）*1
	tMarchFactionSales_Reward[3314916]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314916]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314916]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314917] = {}
	-- ===ChocolateHeart（1-Handed）Pack
	-- ===索引: tMarchFactionSales_Reward[3314917]
	-- ===删除: 3314917,1
	tMarchFactionSales_Reward[3314917]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314917]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314917]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314917]["DeleteItem"][1]["Id"] = 3314917 -- 【库】ChocolateHeart(1-Handed)Pack[属性:9]
	tMarchFactionSales_Reward[3314917]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314917]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314917]["RewardItem"][1]["Id"] = 360291 -- ChocolateHeart(Dazzle)[360291][属性:0][叠加:0][金币:0], 【表格】ChocolateHeart（1-Handed）Pack
	tMarchFactionSales_Reward[3314917]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ChocolateHeart(Dazzle)（赠）*1
	tMarchFactionSales_Reward[3314917]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314917]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314917]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314918] = {}
	-- ===ChocolateHeart（2-Handed）Pack
	-- ===索引: tMarchFactionSales_Reward[3314918]
	-- ===删除: 3314918,1
	tMarchFactionSales_Reward[3314918]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314918]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314918]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314918]["DeleteItem"][1]["Id"] = 3314918 -- 【库】ChocolateHeart(2-Handed)Pack[属性:9]
	tMarchFactionSales_Reward[3314918]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314918]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314918]["RewardItem"][1]["Id"] = 350030 -- ChocolateHeart(Dazzle)[350030][属性:0][叠加:0][金币:0], 【表格】ChocolateHeart（2-Handed）Pack
	tMarchFactionSales_Reward[3314918]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ChocolateHeart(Dazzle)（赠）*1
	tMarchFactionSales_Reward[3314918]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314918]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314918]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314919] = {}
	-- ===ImmortalShieldPack
	-- ===索引: tMarchFactionSales_Reward[3314919]
	-- ===删除: 3314919,1
	tMarchFactionSales_Reward[3314919]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314919]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314919]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314919]["DeleteItem"][1]["Id"] = 3314919 -- 【库】ImmortalShieldPack[属性:9]
	tMarchFactionSales_Reward[3314919]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314919]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314919]["RewardItem"][1]["Id"] = 380010 -- ImmortalShield[380010][属性:0][叠加:0][金币:0], 【表格】ImmortalShieldPack
	tMarchFactionSales_Reward[3314919]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ImmortalShield（赠）*1
	tMarchFactionSales_Reward[3314919]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314919]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314919]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314920] = {}
	-- ===HeavenThunderPack
	-- ===索引: tMarchFactionSales_Reward[3314920]
	-- ===删除: 3314920,1
	tMarchFactionSales_Reward[3314920]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314920]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314920]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314920]["DeleteItem"][1]["Id"] = 3314920 -- 【库】HeavenThunderPack[属性:9]
	tMarchFactionSales_Reward[3314920]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314920]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314920]["RewardItem"][1]["Id"] = 370008 -- HeavenThunder[370008][属性:0][叠加:0][金币:0], 【表格】HeavenThunderPack
	tMarchFactionSales_Reward[3314920]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑HeavenThunder（赠）*1
	tMarchFactionSales_Reward[3314920]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314920]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314920]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314921] = {}
	-- ===GlitteringWavePack
	-- ===索引: tMarchFactionSales_Reward[3314921]
	-- ===删除: 3314921,1
	tMarchFactionSales_Reward[3314921]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314921]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314921]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314921]["DeleteItem"][1]["Id"] = 3314921 -- 【库】GlitteringWavePack[属性:9]
	tMarchFactionSales_Reward[3314921]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314921]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314921]["RewardItem"][1]["Id"] = 360220 -- GlitteringWave[360220][属性:0][叠加:0][金币:0], 【表格】GlitteringWavePack
	tMarchFactionSales_Reward[3314921]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑GlitteringWave（赠）*1
	tMarchFactionSales_Reward[3314921]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314921]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314921]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314922] = {}
	-- ===ShatteredRainbowPack
	-- ===索引: tMarchFactionSales_Reward[3314922]
	-- ===删除: 3314922,1
	tMarchFactionSales_Reward[3314922]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314922]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314922]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314922]["DeleteItem"][1]["Id"] = 3314922 -- 【库】ShatteredRainbowPack[属性:9]
	tMarchFactionSales_Reward[3314922]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314922]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314922]["RewardItem"][1]["Id"] = 350022 -- ShatteredRainbow[350022][属性:0][叠加:0][金币:0], 【表格】ShatteredRainbowPack
	tMarchFactionSales_Reward[3314922]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ShatteredRainbow（赠）*1
	tMarchFactionSales_Reward[3314922]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314922]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314922]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314923] = {}
	-- ===PirateKing`sFlagPack
	-- ===索引: tMarchFactionSales_Reward[3314923]
	-- ===删除: 3314923,1
	tMarchFactionSales_Reward[3314923]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314923]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314923]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314923]["DeleteItem"][1]["Id"] = 3314923 -- 【库】PirateKing`sFlagPack[属性:9]
	tMarchFactionSales_Reward[3314923]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314923]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314923]["RewardItem"][1]["Id"] = 360047 -- PirateKing`sFlag[360047][属性:0][叠加:0][金币:0], 【表格】PirateKing`sFlagPack
	tMarchFactionSales_Reward[3314923]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑PirateKing`sFlag（赠）*1
	tMarchFactionSales_Reward[3314923]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314923]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314923]["RewardEffect"]["Effect"] = "angelwing"


	tMarchFactionSales_Reward[3314924] = {}
	-- ===TomatoUmbrellaPack
	-- ===索引: tMarchFactionSales_Reward[3314924]
	-- ===删除: 3314924,1
	tMarchFactionSales_Reward[3314924]["LogId"] = 12000651
	tMarchFactionSales_Reward[3314924]["DeleteItem"] = {}
	tMarchFactionSales_Reward[3314924]["DeleteItem"][1] = {}
	tMarchFactionSales_Reward[3314924]["DeleteItem"][1]["Id"] = 3314924 -- 【库】TomatoUmbrellaPack[属性:9]
	tMarchFactionSales_Reward[3314924]["RewardItem"] = {}
	tMarchFactionSales_Reward[3314924]["RewardItem"][1] = {}
	tMarchFactionSales_Reward[3314924]["RewardItem"][1]["Id"] = 350118 -- TomatoUmbrella[350118][属性:0][叠加:0][金币:0], 【表格】TomatoUmbrellaPack
	tMarchFactionSales_Reward[3314924]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑TomatoUmbrella（赠）*1
	tMarchFactionSales_Reward[3314924]["RewardEffect"] = {}
	tMarchFactionSales_Reward[3314924]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMarchFactionSales_Reward[3314924]["RewardEffect"]["Effect"] = "angelwing"



------------------------------------------逻辑部分---------------------------------------------------
--礼包给奖励
function MarchFactionSales_OpenChoose(nItemId)
	--使用时间判断
	if not Sys_ChkFullTime(tMarchFactionSales_Cont["ActivityTime"] ) then
		RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId][2])
	else
		RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId][1])
	end
end
------------------------------------------物品部分---------------------------------------------------

--坚固保护罩礼盒
tItem[3302370] = tItem[3302370] or {}
tItem[3302370]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId])
end
--3月+8赤练石包
tItem[3302374] = tItem[3302374] or {}
tItem[3302374]["Function"] = function(nItemId)
	MarchFactionSales_OpenChoose(nItemId)
end
--3月回气丹包
tItem[3302375] = tItem[3302374]
--3月大爆丹包
tItem[3302376] = tItem[3302374]
--3月大固化石包
tItem[3302377] = tItem[3302374]
--3月龙珠卷包
tItem[3302378] = tItem[3302374]
--3月稀有马包
tItem[3302379] = tItem[3302374]
--3月金币包
tItem[3302380] = tItem[3302374]
--3月金刚尖钻包
tItem[3302381] = tItem[3302374]
--3月赤练石+5包
tItem[3302382] = tItem[3302374]
--3月小固化石包
tItem[3302383] = tItem[3302374]
--3月龙珠包
tItem[3302384] = tItem[3302374]
--3月玄元包
tItem[3302385] = tItem[3302374]
--3月玉瓶包
tItem[3302386] = tItem[3302374]
--3月葫芦包
tItem[3302387] = tItem[3302374]
--3月金刚尖钻包小
tItem[3302388] = tItem[3302374]
--3月强练丹包
tItem[3302389] = tItem[3302374]
--3月大爆丹包
tItem[3302390] = tItem[3302374]
--3月回气丹包小
tItem[3302391] = tItem[3302374]

tItem[3302592] = tItem[3302592] or {}
tItem[3302592]["Function"] = function(nItemId,sItemName)
	
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	-- local nCutTip = CommonPackage_ExitTicket() 
	--若不是打折物品，则直接打开该礼包
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tMarchFactionSales_Reward[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	-- --判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end
end

tItem[3302593] = tItem[3302592] or {}
tItem[3302594] = tItem[3302592] or {}
tItem[3302595] = tItem[3302592] or {}
tItem[3302596] = tItem[3302592] or {}
tItem[3302597] = tItem[3302592] or {}
tItem[3302598] = tItem[3302592] or {}
tItem[3302599] = tItem[3302592] or {}
tItem[3302600] = tItem[3302592] or {}
tItem[3302601] = tItem[3302592] or {}
tItem[3302602] = tItem[3302592] or {}
tItem[3302603] = tItem[3302592] or {}
tItem[3302604] = tItem[3302592] or {}
tItem[3302605] = tItem[3302592] or {}
tItem[3302606] = tItem[3302592] or {}
tItem[3302607] = tItem[3302592] or {}
tItem[3302608] = tItem[3302592] or {}
tItem[3302609] = tItem[3302592] or {}
tItem[3302610] = tItem[3302592] or {}
tItem[3302611] = tItem[3302592] or {}
tItem[3302612] = tItem[3302592] or {}
tItem[3302613] = tItem[3302592] or {}
tItem[3302614] = tItem[3302592] or {}
tItem[3302615] = tItem[3302592] or {}
tItem[3302616] = tItem[3302592] or {}
tItem[3302617] = tItem[3302592] or {}
tItem[3302618] = tItem[3302592] or {}
tItem[3302619] = tItem[3302592] or {}
tItem[3302620] = tItem[3302592] or {}
tItem[3302621] = tItem[3302592] or {}
tItem[3302622] = tItem[3302592] or {}
tItem[3302623] = tItem[3302592] or {}
tItem[3302624] = tItem[3302592] or {}
-- 极品15级铁头
tItem[3308773] = tItem[3302592] or {}
-- 极品15级铁衣
tItem[3308774] = tItem[3302592] or {}
-- 极品15级铁扇武器
tItem[3308775] = tItem[3302592] or {}
-- 极品15级狂战武器
tItem[3308776] = tItem[3302592] or {}
	--+6无为如意拂尘（赠）礼包
tItem[3302681] = tItem[3302592] or {}



--雷神版本新增非赠装备购买
tItem[3320338] = tItem[3320338] or {}
tItem[3320338]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	-- local nCutTip = CommonPackage_ExitTicket() 
		--若不是打折物品，则直接打开该礼包
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tMarchFactionSales_Reward[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	--判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		
		-- 有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end

end

tItem[3320339] = tItem[3320338] or {}
tItem[3320340] = tItem[3320338] or {}
tItem[3320341] = tItem[3320338] or {}

--礼包打开
tItem[3321391] = tItem[3320338] or {}
tItem[3321392] = tItem[3320338] or {}
tItem[3321393] = tItem[3320338] or {}
tItem[3321394] = tItem[3320338] or {}
tItem[3321395] = tItem[3320338] or {}

tItem[3321445] = tItem[3320338] or {}
tItem[3321446] = tItem[3320338] or {}
tItem[3321447] = tItem[3320338] or {}
tItem[3321448] = tItem[3320338] or {}
tItem[3321449] = tItem[3320338] or {}

tItem[3312580] = tItem[3320338] or {}
tItem[3312581] = tItem[3320338] or {}
tItem[3312582] = tItem[3320338] or {}
tItem[3312583] = tItem[3320338] or {}
tItem[3312584] = tItem[3320338] or {}


tItem[3320342] = tItem[3320338] or {}
tItem[3320343] = tItem[3320338] or {}
tItem[3320344] = tItem[3320338] or {}
tItem[3320345] = tItem[3320338] or {}
tItem[3320346] = tItem[3320338] or {}
tItem[3320347] = tItem[3320338] or {}
tItem[3320348] = tItem[3320338] or {}
tItem[3320349] = tItem[3320338] or {}
tItem[3320350] = tItem[3320338] or {}
tItem[3320351] = tItem[3320338] or {}
tItem[3320352] = tItem[3320338] or {}
tItem[3320353] = tItem[3320338] or {}
tItem[3320354] = tItem[3320338] or {}
tItem[3320355] = tItem[3320338] or {}
tItem[3320356] = tItem[3320338] or {}
tItem[3320357] = tItem[3320338] or {}
tItem[3320358] = tItem[3320338] or {}
tItem[3320359] = tItem[3320338] or {}
tItem[3320360] = tItem[3320338] or {}
tItem[3320361] = tItem[3320338] or {}
tItem[3320362] = tItem[3320338] or {}
tItem[3320363] = tItem[3320338] or {}
tItem[3320364] = tItem[3320338] or {}
tItem[3320365] = tItem[3320338] or {}
tItem[3320366] = tItem[3320338] or {}
tItem[3320367] = tItem[3320338] or {}
tItem[3320368] = tItem[3320338] or {}
tItem[3320369] = tItem[3320338] or {}
tItem[3320370] = tItem[3320338] or {}
tItem[3320371] = tItem[3320338] or {}
tItem[3320372] = tItem[3320338] or {}

tItem[3321398] = tItem[3320338] or {}
tItem[3321399] = tItem[3320338] or {}
tItem[3321400] = tItem[3320338] or {}
tItem[3321401] = tItem[3320338] or {}
tItem[3321402] = tItem[3320338] or {}


tItem[3321404] = tItem[3320338] or {}
tItem[3321405] = tItem[3320338] or {}
tItem[3321406] = tItem[3320338] or {}
tItem[3321407] = tItem[3320338] or {}
tItem[3321408] = tItem[3320338] or {}
tItem[3321409] = tItem[3320338] or {}
tItem[3321410] = tItem[3320338] or {}
tItem[3321411] = tItem[3320338] or {}
tItem[3321412] = tItem[3320338] or {}
tItem[3321413] = tItem[3320338] or {}
tItem[3321414] = tItem[3320338] or {}
tItem[3321415] = tItem[3320338] or {}
tItem[3321416] = tItem[3320338] or {}
tItem[3321417] = tItem[3320338] or {}
tItem[3321418] = tItem[3320338] or {}

tItem[3321419] = tItem[3320338] or {}
tItem[3321420] = tItem[3320338] or {}
tItem[3321421] = tItem[3320338] or {}
tItem[3321422] = tItem[3320338] or {}
tItem[3321423] = tItem[3320338] or {}
tItem[3321424] = tItem[3320338] or {}
tItem[3321425] = tItem[3320338] or {}

tItem[3312558] = tItem[3320338] or {}
tItem[3312559] = tItem[3320338] or {}
tItem[3312560] = tItem[3320338] or {}
tItem[3312561] = tItem[3320338] or {}
tItem[3312562] = tItem[3320338] or {}
tItem[3312563] = tItem[3320338] or {}
tItem[3312564] = tItem[3320338] or {}

tItem[3312608] = tItem[3320338] or {}
tItem[3312609] = tItem[3320338] or {}
tItem[3312610] = tItem[3320338] or {}
tItem[3312611] = tItem[3320338] or {}
tItem[3312612] = tItem[3320338] or {}
tItem[3312613] = tItem[3320338] or {}
tItem[3312614] = tItem[3320338] or {}

tItem[3321458] = tItem[3320338] or {}
tItem[3321459] = tItem[3320338] or {}
tItem[3321460] = tItem[3320338] or {}
tItem[3321461] = tItem[3320338] or {}
tItem[3321462] = tItem[3320338] or {}
tItem[3321463] = tItem[3320338] or {}
tItem[3321464] = tItem[3320338] or {}
tItem[3321465] = tItem[3320338] or {}
tItem[3321466] = tItem[3320338] or {}
tItem[3321467] = tItem[3320338] or {}
tItem[3321468] = tItem[3320338] or {}
tItem[3321469] = tItem[3320338] or {}
tItem[3321470] = tItem[3320338] or {}
tItem[3321471] = tItem[3320338] or {}
tItem[3312557] = tItem[3320338] or {}

tItem[3312593] = tItem[3320338] or {}
tItem[3312594] = tItem[3320338] or {}
tItem[3312595] = tItem[3320338] or {}
tItem[3312596] = tItem[3320338] or {}
tItem[3312597] = tItem[3320338] or {}
tItem[3312598] = tItem[3320338] or {}
tItem[3312599] = tItem[3320338] or {}
tItem[3312600] = tItem[3320338] or {}
tItem[3312601] = tItem[3320338] or {}
tItem[3312602] = tItem[3320338] or {}
tItem[3312603] = tItem[3320338] or {}
tItem[3312604] = tItem[3320338] or {}
tItem[3312605] = tItem[3320338] or {}
tItem[3312606] = tItem[3320338] or {}
tItem[3312607] = tItem[3320338] or {}



tItem[3321452] = tItem[3320338] or {}
tItem[3321453] = tItem[3320338] or {}
tItem[3321454] = tItem[3320338] or {}
tItem[3321455] = tItem[3320338] or {}
tItem[3321456] = tItem[3320338] or {}

tItem[3312587] = tItem[3320338] or {}
tItem[3312588] = tItem[3320338] or {}
tItem[3312589] = tItem[3320338] or {}
tItem[3312590] = tItem[3320338] or {}
tItem[3312591] = tItem[3320338] or {}


tItem[3320373] = tItem[3320338] or {}
tItem[3320374] = tItem[3320338] or {}
tItem[3320375] = tItem[3320338] or {}
tItem[3320376] = tItem[3320338] or {}
tItem[3320377] = tItem[3320338] or {}
tItem[3320378] = tItem[3320338] or {}

--雷神金币
tItem[3320579] = tItem[3320338] or {}
tItem[3320580] = tItem[3320338] or {}
tItem[3320581] = tItem[3320338] or {}
tItem[3320582] = tItem[3320338] or {}
tItem[3320583] = tItem[3320338] or {}
tItem[3320584] = tItem[3320338] or {}
tItem[3320585] = tItem[3320338] or {}
tItem[3320586] = tItem[3320338] or {}
tItem[3320587] = tItem[3320338] or {}
tItem[3320588] = tItem[3320338] or {}
tItem[3320589] = tItem[3320338] or {}
tItem[3320590] = tItem[3320338] or {}
tItem[3320591] = tItem[3320338] or {}
tItem[3320592] = tItem[3320338] or {}
tItem[3320593] = tItem[3320338] or {}
tItem[3320594] = tItem[3320338] or {}
tItem[3320595] = tItem[3320338] or {}
tItem[3320596] = tItem[3320338] or {}
tItem[3320597] = tItem[3320338] or {}
tItem[3320598] = tItem[3320338] or {}
tItem[3320599] = tItem[3320338] or {}
tItem[3320600] = tItem[3320338] or {}
tItem[3320601] = tItem[3320338] or {}
tItem[3320602] = tItem[3320338] or {}
tItem[3320603] = tItem[3320338] or {}
tItem[3320604] = tItem[3320338] or {}
tItem[3320605] = tItem[3320338] or {}
tItem[3320606] = tItem[3320338] or {}
tItem[3320607] = tItem[3320338] or {}
tItem[3320608] = tItem[3320338] or {}
tItem[3320609] = tItem[3320338] or {}
tItem[3320610] = tItem[3320338] or {}
tItem[3320611] = tItem[3320338] or {}
tItem[3320612] = tItem[3320338] or {}
tItem[3320613] = tItem[3320338] or {}
tItem[3320614] = tItem[3320338] or {}
tItem[3320615] = tItem[3320338] or {}
tItem[3320616] = tItem[3320338] or {}
tItem[3320617] = tItem[3320338] or {}
tItem[3320618] = tItem[3320338] or {}
tItem[3320619] = tItem[3320338] or {}

--雷神职业新增物品
tItem[3321364] = tItem[3302592] or {}
tItem[3321365] = tItem[3302592] or {}
tItem[3321366] = tItem[3302592] or {}
tItem[3321367] = tItem[3302592] or {}
tItem[3321368] = tItem[3302592] or {}
tItem[3321369] = tItem[3302592] or {}
tItem[3321370] = tItem[3302592] or {}
tItem[3321371] = tItem[3302592] or {}
tItem[3321372] = tItem[3320338] or {}
tItem[3321373] = tItem[3320338] or {}
tItem[3321374] = tItem[3320338] or {}
tItem[3321375] = tItem[3320338] or {}


tItem[3321559] = tItem[3320338] or {}
tItem[3321560] = tItem[3320338] or {}
tItem[3321561] = tItem[3320338] or {}
tItem[3321562] = tItem[3320338] or {}
tItem[3321563] = tItem[3320338] or {}
tItem[3321564] = tItem[3320338] or {}
tItem[3321565] = tItem[3320338] or {}
tItem[3321566] = tItem[3320338] or {}
tItem[3321426] = tItem[3320338] or {}
tItem[3321427] = tItem[3320338] or {}
tItem[3321428] = tItem[3320338] or {}
tItem[3321429] = tItem[3320338] or {}

tItem[3312537] = tItem[3320338] or {}
tItem[3312538] = tItem[3320338] or {}
tItem[3312539] = tItem[3320338] or {}
tItem[3312540] = tItem[3320338] or {}
tItem[3312541] = tItem[3320338] or {}
tItem[3312542] = tItem[3320338] or {}
tItem[3312543] = tItem[3320338] or {}
tItem[3312544] = tItem[3320338] or {}
tItem[3312545] = tItem[3320338] or {}
tItem[3312546] = tItem[3320338] or {}
tItem[3312547] = tItem[3320338] or {}
tItem[3312548] = tItem[3320338] or {}


tItem[3302625] = tItem[3302592] or {}
tItem[3302626] = tItem[3302592] or {}
tItem[3302627] = tItem[3302592] or {}
tItem[3302628] = tItem[3302592] or {}
tItem[3302629] = tItem[3302592] or {}
tItem[3302630] = tItem[3302592] or {}
tItem[3302631] = tItem[3302592] or {}
tItem[3302632] = tItem[3302592] or {}


tItem[3302633] = tItem[3302592] or {}


--雷神版本新增非赠装备购买
tItem[3320391] = tItem[3302633] or {}
tItem[3320392] = tItem[3302633] or {}
tItem[3320393] = tItem[3302633] or {}
tItem[3320394] = tItem[3302633] or {}
tItem[3320395] = tItem[3302633] or {}
tItem[3320396] = tItem[3302633] or {}
tItem[3320397] = tItem[3302633] or {}
tItem[3320398] = tItem[3302633] or {}
tItem[3320399] = tItem[3302633] or {}
tItem[3320400] = tItem[3302633] or {}
tItem[3320401] = tItem[3302633] or {}
tItem[3320402] = tItem[3302633] or {}
tItem[3320403] = tItem[3302633] or {}
tItem[3320404] = tItem[3302633] or {}
tItem[3320405] = tItem[3302633] or {}
tItem[3320406] = tItem[3302633] or {}
tItem[3320407] = tItem[3302633] or {}
tItem[3320408] = tItem[3302633] or {}
tItem[3320409] = tItem[3302633] or {}
tItem[3320410] = tItem[3302633] or {}
tItem[3320411] = tItem[3302633] or {}
tItem[3320412] = tItem[3302633] or {}
tItem[3320413] = tItem[3302633] or {}
tItem[3320414] = tItem[3302633] or {}
tItem[3320415] = tItem[3302633] or {}
tItem[3320416] = tItem[3302633] or {}
tItem[3320417] = tItem[3302633] or {}
tItem[3320418] = tItem[3302633] or {}
tItem[3320419] = tItem[3302633] or {}
tItem[3320420] = tItem[3302633] or {}
tItem[3320421] = tItem[3302633] or {}
tItem[3320422] = tItem[3302633] or {}
tItem[3320423] = tItem[3302633] or {}
tItem[3320424] = tItem[3302633] or {}
tItem[3320425] = tItem[3302633] or {}
tItem[3320426] = tItem[3302633] or {}
tItem[3320427] = tItem[3302633] or {}
tItem[3320428] = tItem[3302633] or {}
tItem[3320429] = tItem[3302633] or {}
tItem[3320430] = tItem[3302633] or {}
tItem[3320431] = tItem[3302633] or {}

--雷神金币
tItem[3320620] = tItem[3302633] or {}
tItem[3320621] = tItem[3302633] or {}
tItem[3320622] = tItem[3302633] or {}
tItem[3320623] = tItem[3302633] or {}
tItem[3320624] = tItem[3302633] or {}
tItem[3320625] = tItem[3302633] or {}
tItem[3320626] = tItem[3302633] or {}
tItem[3320627] = tItem[3302633] or {}
tItem[3320628] = tItem[3302633] or {}
tItem[3320629] = tItem[3302633] or {}
tItem[3320630] = tItem[3302633] or {}
tItem[3320631] = tItem[3302633] or {}
tItem[3320632] = tItem[3302633] or {}
tItem[3320633] = tItem[3302633] or {}
tItem[3320634] = tItem[3302633] or {}
tItem[3320635] = tItem[3302633] or {}
tItem[3320636] = tItem[3302633] or {}
tItem[3320637] = tItem[3302633] or {}
tItem[3320638] = tItem[3302633] or {}
tItem[3320639] = tItem[3302633] or {}
tItem[3320640] = tItem[3302633] or {}
tItem[3320641] = tItem[3302633] or {}
tItem[3320642] = tItem[3302633] or {}
tItem[3320643] = tItem[3302633] or {}
tItem[3320644] = tItem[3302633] or {}
tItem[3320645] = tItem[3302633] or {}
tItem[3320646] = tItem[3302633] or {}
tItem[3320647] = tItem[3302633] or {}
tItem[3320648] = tItem[3302633] or {}
tItem[3320649] = tItem[3302633] or {}
tItem[3320650] = tItem[3302633] or {}
tItem[3320651] = tItem[3302633] or {}
tItem[3320652] = tItem[3302633] or {}
tItem[3320653] = tItem[3302633] or {}
tItem[3320654] = tItem[3302633] or {}
tItem[3320655] = tItem[3302633] or {}
tItem[3320656] = tItem[3302633] or {}
tItem[3320657] = tItem[3302633] or {}
tItem[3320658] = tItem[3302633] or {}
tItem[3320659] = tItem[3302633] or {}
tItem[3320660] = tItem[3302633] or {}

tItem[3321376] = tItem[3302633] or {}
tItem[3321430] = tItem[3302633] or {}
tItem[3312565] = tItem[3302633] or {}
tItem[3321377] = tItem[3302633] or {}
tItem[3321378] = tItem[3302633] or {}
tItem[3321379] = tItem[3302633] or {}
tItem[3321380] = tItem[3302633] or {}
tItem[3321381] = tItem[3302633] or {}
tItem[3321382] = tItem[3302633] or {}
tItem[3321383] = tItem[3302633] or {}
tItem[3321384] = tItem[3302633] or {}
tItem[3321385] = tItem[3302633] or {}
tItem[3321386] = tItem[3302633] or {}
tItem[3321387] = tItem[3302633] or {}
tItem[3321388] = tItem[3302633] or {}
tItem[3321431] = tItem[3302633] or {}
tItem[3321432] = tItem[3302633] or {}
tItem[3321433] = tItem[3302633] or {}
tItem[3321434] = tItem[3302633] or {}
tItem[3321435] = tItem[3302633] or {}
tItem[3321436] = tItem[3302633] or {}
tItem[3321437] = tItem[3302633] or {}
tItem[3321438] = tItem[3302633] or {}
tItem[3321439] = tItem[3302633] or {}
tItem[3321440] = tItem[3302633] or {}
tItem[3321441] = tItem[3302633] or {}
tItem[3321442] = tItem[3302633] or {}
tItem[3312566] = tItem[3302633] or {}
tItem[3312567] = tItem[3302633] or {}
tItem[3312568] = tItem[3302633] or {}
tItem[3312569] = tItem[3302633] or {}
tItem[3312570] = tItem[3302633] or {}
tItem[3312571] = tItem[3302633] or {}
tItem[3312572] = tItem[3302633] or {}
tItem[3312573] = tItem[3302633] or {}
tItem[3312574] = tItem[3302633] or {}
tItem[3312575] = tItem[3302633] or {}
tItem[3312576] = tItem[3302633] or {}
tItem[3312577] = tItem[3302633] or {}


tItem[3302634] = tItem[3302592] or {}
tItem[3302635] = tItem[3302592] or {}
tItem[3302636] = tItem[3302592] or {}
tItem[3302637] = tItem[3302592] or {}
tItem[3302638] = tItem[3302592] or {}
tItem[3302639] = tItem[3302592] or {}
tItem[3302640] = tItem[3302592] or {}
tItem[3302641] = tItem[3302592] or {}
tItem[3302642] = tItem[3302592] or {}
tItem[3302643] = tItem[3302592] or {}
tItem[3302644] = tItem[3302592] or {}
tItem[3302645] = tItem[3302592] or {}
tItem[3302646] = tItem[3302592] or {}
tItem[3302647] = tItem[3302592] or {}
tItem[3302648] = tItem[3302592] or {}
tItem[3302649] = tItem[3302592] or {}
tItem[3302650] = tItem[3302592] or {}
tItem[3302651] = tItem[3302592] or {}
tItem[3302652] = tItem[3302592] or {}
tItem[3302653] = tItem[3302592] or {}
tItem[3302654] = tItem[3302592] or {}
tItem[3302655] = tItem[3302592] or {}
tItem[3302656] = tItem[3302592] or {}
tItem[3302657] = tItem[3302592] or {}
tItem[3302658] = tItem[3302592] or {}
tItem[3302659] = tItem[3302592] or {}
tItem[3302660] = tItem[3302592] or {}
tItem[3302661] = tItem[3302592] or {}
tItem[3302662] = tItem[3302592] or {}
tItem[3302663] = tItem[3302592] or {}
tItem[3302664] = tItem[3302592] or {}
tItem[3302665] = tItem[3302592] or {}
tItem[3302666] = tItem[3302592] or {}
tItem[3302667] = tItem[3302592] or {}
tItem[3302668] = tItem[3302592] or {}
tItem[3302669] = tItem[3302592] or {}
tItem[3302670] = tItem[3302592] or {}
tItem[3302671] = tItem[3302592] or {}
tItem[3302672] = tItem[3302592] or {}
tItem[3302673] = tItem[3302592] or {}

--极品+6PrideFan(B)礼盒
tItem[3302491] = tItem[3302592] or {}

--极品+6MysticWindrobe(B)礼盒
tItem[3302492] = tItem[3302592] or {}

--极品+6DarkCloudHat(B)礼盒
tItem[3302493] = tItem[3302592] or {}

	--+6苍之怒焰（赠）礼包
tItem[3302680] = tItem[3302592] or {}

--雷神版本新增非赠装备购买
tItem[3320432] = tItem[3302680] or {}
tItem[3320433] = tItem[3302680] or {}

--雷神金币
tItem[3320661] = tItem[3302680] or {}
tItem[3320662] = tItem[3302680] or {}

tItem[3307508] = tItem[3307508] or {}
tItem[3307508]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId])
end

tItem[3307860] = tItem[3307860] or {}
tItem[3307860]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId])
end
tItem[3307861] = tItem[3307861] or {}
tItem[3307861]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId])
end
tItem[3307862] = tItem[3307861] or {}
tItem[3307862]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId])
end
tItem[3307863] = tItem[3307863] or {}
tItem[3307863]["Function"] = function(nItemId,sItemName)
  RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId])
end
----------------------【英文征服】5月赠品大狂欢 （5.24-6.7）----------------------


--雷神版本新增非赠装备购买
tItem[3320380] = tItem[3308776] or {}
tItem[3320381] = tItem[3308776] or {}
tItem[3320382] = tItem[3308776] or {}
tItem[3320383] = tItem[3308776] or {}

--雷神金币
tItem[3320664] = tItem[3308776] or {}
tItem[3320665] = tItem[3308776] or {}
tItem[3320666] = tItem[3308776] or {}
tItem[3320667] = tItem[3308776] or {}

--雷神版本新增非赠装备购买
tItem[3320388] = tItem[3302493] or {}
tItem[3320389] = tItem[3302493] or {}
tItem[3320390] = tItem[3302493] or {}

--雷神金币
tItem[3320576] = tItem[3302493] or {}
tItem[3320577] = tItem[3302493] or {}
tItem[3320578] = tItem[3302493] or {}
--------------------------------2020~1月新年促销--------------------------------
tItem[3314806] = tItem[3314806] or {}
tItem[3314806]["Function"] = function(nItemId,sItemName)
	
	-- 若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket() 
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tMarchFactionSales_Reward[nItemId]) + WarriorsPromotion_JudgeSpace(nItemId)
	
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	--判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end
	
	-- local nSpace = RewardTemplate_GetRewardSpace(tMarchFactionSales_Reward[nItemId]) + WarriorsPromotion_JudgeSpace(nItemId)
	-- if User_CheckLeftSpace(nSpace) then
		-- if RewardTemplate_UseItemAndMsg(tMarchFactionSales_Reward[nItemId]) then
			-- WarriorsPromotion_JudgeNinjaItem(nItemId)
		-- end
	-- else
		-- --提示
		-- Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
		-- return 
	-- end
end
tItem[3314807] = tItem[3314806]
tItem[3314808] = tItem[3314806]
tItem[3314809] = tItem[3314806]
tItem[3314810] = tItem[3314806]
tItem[3314811] = tItem[3314806]
tItem[3314812] = tItem[3314806]
tItem[3314813] = tItem[3314806]
tItem[3314814] = tItem[3314806]
tItem[3314815] = tItem[3314806]
tItem[3314816] = tItem[3314806]
tItem[3314817] = tItem[3314806]
tItem[3314884] = tItem[3314806]
tItem[3314885] = tItem[3314806]
tItem[3314886] = tItem[3314806]
tItem[3314890] = tItem[3314806]
tItem[3314916] = tItem[3314806]
tItem[3314917] = tItem[3314806]
tItem[3314918] = tItem[3314806]
tItem[3314919] = tItem[3314806]
tItem[3314920] = tItem[3314806]
tItem[3314921] = tItem[3314806]
tItem[3314922] = tItem[3314806]
tItem[3314923] = tItem[3314806]
tItem[3314924] = tItem[3314806]









