------------------------------------------------------------------------------------
--Name:		171114[英文征服][活动脚本]12月圣诞大促活动(12.21-12.31)
--Purpose:	12月圣诞大促活动
--Creator: 	傅伟龙
--Created:	2017/11/14
------------------------------------------------------------------------------------
--前缀DecChristmasPromotion_
-- logid: 12000937   物品使用
-- logid: 12000941   统计上交星星福袋个数

--掩码：
--170 17   记入玩家提交星星福袋个数

--全局表
--51904  data1  记入第一名id   
--       datastr1  记入第一名名称  
--       data2  记入第一名提交星星福袋个数

--51912 区分新老服
------------------------------------------------------------------------------------
--基础数据
local tDecChristmasPromotion_Cont = {}

--活动时间
tDecChristmasPromotion_Cont["BefTime"] = tActivityTime["DecChristmasPromotion"]["BefTime"]
tDecChristmasPromotion_Cont["ActTime"] = tActivityTime["DecChristmasPromotion"]["ActTime"]
tDecChristmasPromotion_Cont["LastActTime"] = tActivityTime["DecChristmasPromotion"]["LastActTime"]

--网页链接
tDecChristmasPromotion_Cont["WebLink"] = "https://coevent.99.com/xmassale2017/client"

--动态全局表
tDecChristmasPromotion_Cont["GlobalId"] = {}
tDecChristmasPromotion_Cont["GlobalId"][1] = 51904

--掩码
local tDecChristmasPromotion_Stc = {}
	tDecChristmasPromotion_Stc[1] = {}
	tDecChristmasPromotion_Stc[1]["EventType"] = 170
	tDecChristmasPromotion_Stc[1]["DataType"] = 17
	


local tDecChristmasPromotion_RewandItem = {}

	tDecChristmasPromotion_RewandItem[3306573]={}
	tDecChristmasPromotion_RewandItem[3306573][1]={}
	tDecChristmasPromotion_RewandItem[3306573][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306573][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306573][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306573][1]["DeleteItem"][1]["Id"] = 3306573
	tDecChristmasPromotion_RewandItem[3306573][1]["RewardExpTime"] = {}
	tDecChristmasPromotion_RewandItem[3306573][1]["RewardExpTime"]["Value"] = 200
	tDecChristmasPromotion_RewandItem[3306573][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tDecChristmasPromotion_RewandItem[3306573][1]["RewardExpTime"]["FullValue"] = 100
	tDecChristmasPromotion_RewandItem[3306573][1]["RewardBless"] = {}
	tDecChristmasPromotion_RewandItem[3306573][1]["RewardBless"]["Value"] = 4
	tDecChristmasPromotion_RewandItem[3306573][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306573][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--圣诞强炼丹大礼包
	tDecChristmasPromotion_RewandItem[3306574]={}
	tDecChristmasPromotion_RewandItem[3306574][1]={}
	tDecChristmasPromotion_RewandItem[3306574][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306574][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306574][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306574][1]["DeleteItem"][1]["Id"] = 3306574
	tDecChristmasPromotion_RewandItem[3306574][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306574][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306574][1]["RewardItem"][1]["Id"] = 3003124
	tDecChristmasPromotion_RewandItem[3306574][1]["RewardItem"][1]["Attr"] = "0 300"
	tDecChristmasPromotion_RewandItem[3306574][1]["RewardItem"][2] = {}
	tDecChristmasPromotion_RewandItem[3306574][1]["RewardItem"][2]["Id"] = 3306573
	tDecChristmasPromotion_RewandItem[3306574][1]["RewardItem"][2]["Attr"] = "0 1"
	tDecChristmasPromotion_RewandItem[3306574][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306574][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--圣诞抽奖券大礼包
	tDecChristmasPromotion_RewandItem[3306575]={}
	tDecChristmasPromotion_RewandItem[3306575][1]={}
	tDecChristmasPromotion_RewandItem[3306575][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306575][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306575][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306575][1]["DeleteItem"][1]["Id"] = 3306575
	tDecChristmasPromotion_RewandItem[3306575][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306575][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306575][1]["RewardItem"][1]["Id"] = 3306699
	tDecChristmasPromotion_RewandItem[3306575][1]["RewardItem"][1]["Attr"] = "0 100"
	tDecChristmasPromotion_RewandItem[3306575][1]["RewardItem"][2] = {}
	tDecChristmasPromotion_RewandItem[3306575][1]["RewardItem"][2]["Id"] = 3306573
	tDecChristmasPromotion_RewandItem[3306575][1]["RewardItem"][2]["Attr"] = "0 2"
	tDecChristmasPromotion_RewandItem[3306575][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306575][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--圣诞赤练石大礼包
	tDecChristmasPromotion_RewandItem[3306576]={}
	tDecChristmasPromotion_RewandItem[3306576][1]={}
	tDecChristmasPromotion_RewandItem[3306576][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306576][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306576][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306576][1]["DeleteItem"][1]["Id"] = 3306576
	tDecChristmasPromotion_RewandItem[3306576][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306576][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306576][1]["RewardItem"][1]["Id"] = 730008
	tDecChristmasPromotion_RewandItem[3306576][1]["RewardItem"][1]["Attr"] = "0 1"
	tDecChristmasPromotion_RewandItem[3306576][1]["RewardItem"][2] = {}
	tDecChristmasPromotion_RewandItem[3306576][1]["RewardItem"][2]["Id"] = 3306573
	tDecChristmasPromotion_RewandItem[3306576][1]["RewardItem"][2]["Attr"] = "0 10"
	tDecChristmasPromotion_RewandItem[3306576][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306576][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--圣诞回气丹大礼包
	tDecChristmasPromotion_RewandItem[3306577]={}
	tDecChristmasPromotion_RewandItem[3306577][1]={}
	tDecChristmasPromotion_RewandItem[3306577][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306577][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306577][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306577][1]["DeleteItem"][1]["Id"] = 3306577
	tDecChristmasPromotion_RewandItem[3306577][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306577][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306577][1]["RewardItem"][1]["Id"] = 3306698
	tDecChristmasPromotion_RewandItem[3306577][1]["RewardItem"][1]["Attr"] = "0 10"
	tDecChristmasPromotion_RewandItem[3306577][1]["RewardItem"][2] = {}
	tDecChristmasPromotion_RewandItem[3306577][1]["RewardItem"][2]["Id"] = 3306573
	tDecChristmasPromotion_RewandItem[3306577][1]["RewardItem"][2]["Attr"] = "0 3"
	tDecChristmasPromotion_RewandItem[3306577][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306577][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--圣诞大爆丹大礼包
	tDecChristmasPromotion_RewandItem[3306578]={}
	tDecChristmasPromotion_RewandItem[3306578][1]={}
	tDecChristmasPromotion_RewandItem[3306578][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306578][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306578][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306578][1]["DeleteItem"][1]["Id"] = 3306578
	tDecChristmasPromotion_RewandItem[3306578][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306578][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306578][1]["RewardItem"][1]["Id"] = 3003126
	tDecChristmasPromotion_RewandItem[3306578][1]["RewardItem"][1]["Attr"] = "0 100"
	tDecChristmasPromotion_RewandItem[3306578][1]["RewardItem"][2] = {}
	tDecChristmasPromotion_RewandItem[3306578][1]["RewardItem"][2]["Id"] = 3306573
	tDecChristmasPromotion_RewandItem[3306578][1]["RewardItem"][2]["Attr"] = "0 2"
	tDecChristmasPromotion_RewandItem[3306578][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306578][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--圣诞固化石大礼包
	tDecChristmasPromotion_RewandItem[3306579]={}
	tDecChristmasPromotion_RewandItem[3306579][1]={}
	tDecChristmasPromotion_RewandItem[3306579][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306579][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306579][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306579][1]["DeleteItem"][1]["Id"] = 3306579
	tDecChristmasPromotion_RewandItem[3306579][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306579][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306579][1]["RewardItem"][1]["Id"] = 723695
	tDecChristmasPromotion_RewandItem[3306579][1]["RewardItem"][1]["Attr"] = "0 1"
	tDecChristmasPromotion_RewandItem[3306579][1]["RewardItem"][2] = {}
	tDecChristmasPromotion_RewandItem[3306579][1]["RewardItem"][2]["Id"] = 3306573
	tDecChristmasPromotion_RewandItem[3306579][1]["RewardItem"][2]["Attr"] = "0 3"
	tDecChristmasPromotion_RewandItem[3306579][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306579][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--圣诞龙珠卷大礼包
	tDecChristmasPromotion_RewandItem[3306580]={}
	tDecChristmasPromotion_RewandItem[3306580][1]={}
	tDecChristmasPromotion_RewandItem[3306580][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306580][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306580][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306580][1]["DeleteItem"][1]["Id"] = 3306580
	tDecChristmasPromotion_RewandItem[3306580][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306580][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306580][1]["RewardItem"][1]["Id"] = 720028
	tDecChristmasPromotion_RewandItem[3306580][1]["RewardItem"][1]["Attr"] = "0 1"
	tDecChristmasPromotion_RewandItem[3306580][1]["RewardItem"][2] = {}
	tDecChristmasPromotion_RewandItem[3306580][1]["RewardItem"][2]["Id"] = 3306573
	tDecChristmasPromotion_RewandItem[3306580][1]["RewardItem"][2]["Attr"] = "0 1"
	tDecChristmasPromotion_RewandItem[3306580][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306580][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--圣诞骑宠大礼包
	tDecChristmasPromotion_RewandItem[3306581]={}
	tDecChristmasPromotion_RewandItem[3306581][1]={}
	tDecChristmasPromotion_RewandItem[3306581][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306581][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306581][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306581][1]["DeleteItem"][1]["Id"] = 3306581
	tDecChristmasPromotion_RewandItem[3306581][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306581][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306581][1]["RewardItem"][1]["Id"] = 3001406
	tDecChristmasPromotion_RewandItem[3306581][1]["RewardItem"][1]["Attr"] = "0 1"
	tDecChristmasPromotion_RewandItem[3306581][1]["RewardItem"][2] = {}
	tDecChristmasPromotion_RewandItem[3306581][1]["RewardItem"][2]["Id"] = 3306573
	tDecChristmasPromotion_RewandItem[3306581][1]["RewardItem"][2]["Attr"] = "0 5"
	tDecChristmasPromotion_RewandItem[3306581][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306581][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--圣诞开洞大礼包
	tDecChristmasPromotion_RewandItem[3306582]={}
	tDecChristmasPromotion_RewandItem[3306582][1]={}
	tDecChristmasPromotion_RewandItem[3306582][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306582][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306582][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306582][1]["DeleteItem"][1]["Id"] = 3306582
	tDecChristmasPromotion_RewandItem[3306582][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306582][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306582][1]["RewardItem"][1]["Id"] = 1200005
	tDecChristmasPromotion_RewandItem[3306582][1]["RewardItem"][1]["Attr"] = "0 2"
	tDecChristmasPromotion_RewandItem[3306582][1]["RewardItem"][2] = {}
	tDecChristmasPromotion_RewandItem[3306582][1]["RewardItem"][2]["Id"] = 3306573
	tDecChristmasPromotion_RewandItem[3306582][1]["RewardItem"][2]["Attr"] = "0 3"
	tDecChristmasPromotion_RewandItem[3306582][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306582][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--圣诞星陨石礼包
	tDecChristmasPromotion_RewandItem[3306583]={}
	tDecChristmasPromotion_RewandItem[3306583][1]={}
	tDecChristmasPromotion_RewandItem[3306583][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306583][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306583][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306583][1]["DeleteItem"][1]["Id"] = 3306583
	tDecChristmasPromotion_RewandItem[3306583][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306583][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306583][1]["RewardItem"][1]["Id"] = 3009002
	tDecChristmasPromotion_RewandItem[3306583][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tDecChristmasPromotion_RewandItem[3306583][1]["RewardItem"][2] = {}
	tDecChristmasPromotion_RewandItem[3306583][1]["RewardItem"][2]["Id"] = 3306573
	tDecChristmasPromotion_RewandItem[3306583][1]["RewardItem"][2]["Attr"] = "0 3"
	tDecChristmasPromotion_RewandItem[3306583][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306583][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--圣诞装饰礼包
	tDecChristmasPromotion_RewandItem[3306584]={}
	tDecChristmasPromotion_RewandItem[3306584][1]={}
	tDecChristmasPromotion_RewandItem[3306584][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306584][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306584][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306584][1]["DeleteItem"][1]["Id"] = 3306584
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][1]["Id"] = 720392
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][1]["Attr"] = "0 1 0 86400 1"
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][2] = {}
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][2]["Id"] = 720397
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][2]["Attr"] = "0 1 0 86400 1"
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][3] = {}
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][3]["Id"] = 720396
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][3]["Attr"] = "0 1 0 86400 1"
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][4] = {}
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][4]["Id"] = 726057
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][4]["Attr"] = "0 1 0 86400 1"
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][5] = {}
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][5]["Id"] = 726058
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardItem"][5]["Attr"] = "0 1 0 86400 1"
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306584][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--圣诞家具礼包
	tDecChristmasPromotion_RewandItem[3306585]={}
	tDecChristmasPromotion_RewandItem[3306585][1]={}
	tDecChristmasPromotion_RewandItem[3306585][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306585][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306585][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306585][1]["DeleteItem"][1]["Id"] = 3306585
	tDecChristmasPromotion_RewandItem[3306585][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306585][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306585][1]["RewardItem"][1]["Id"] = 3000161
	tDecChristmasPromotion_RewandItem[3306585][1]["RewardItem"][1]["Attr"] = "0 1 0 86400 1"
	tDecChristmasPromotion_RewandItem[3306585][1]["RewardItem"][2] = {}
	tDecChristmasPromotion_RewandItem[3306585][1]["RewardItem"][2]["Id"] = 3000159
	tDecChristmasPromotion_RewandItem[3306585][1]["RewardItem"][2]["Attr"] = "0 1 0 86400 1"
	tDecChristmasPromotion_RewandItem[3306585][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306585][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--星星冠军礼包
	tDecChristmasPromotion_RewandItem[3306586]={}
	tDecChristmasPromotion_RewandItem[3306586][1]={}
	tDecChristmasPromotion_RewandItem[3306586][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306586][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306586][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306586][1]["DeleteItem"][1]["Id"] = 3306586
	tDecChristmasPromotion_RewandItem[3306586][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306586][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306586][1]["RewardItem"][1]["Id"] = 193555
	tDecChristmasPromotion_RewandItem[3306586][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDecChristmasPromotion_RewandItem[3306586][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306586][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tDecChristmasPromotion_RewandItem[3306586][2]={}
	tDecChristmasPromotion_RewandItem[3306586][2]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306586][2]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306586][2]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306586][2]["DeleteItem"][1]["Id"] = 3306586
	tDecChristmasPromotion_RewandItem[3306586][2]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306586][2]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306586][2]["RewardItem"][1]["Id"] = 200543
	tDecChristmasPromotion_RewandItem[3306586][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDecChristmasPromotion_RewandItem[3306586][2]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306586][2]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	--回气丹礼盒
	tDecChristmasPromotion_RewandItem[3306698]={}
	tDecChristmasPromotion_RewandItem[3306698][1]={}
	tDecChristmasPromotion_RewandItem[3306698][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306698][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306698][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306698][1]["DeleteItem"][1]["Id"] = 3306698
	tDecChristmasPromotion_RewandItem[3306698][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306698][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306698][1]["RewardItem"][1]["Id"] = 729481
	tDecChristmasPromotion_RewandItem[3306698][1]["RewardItem"][1]["Attr"] = "0 5"
	tDecChristmasPromotion_RewandItem[3306698][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306698][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--小抽奖券礼包
	tDecChristmasPromotion_RewandItem[3306699]={}
	tDecChristmasPromotion_RewandItem[3306699][1]={}
	tDecChristmasPromotion_RewandItem[3306699][1]["LogId"] = 12000937
	tDecChristmasPromotion_RewandItem[3306699][1]["DeleteItem"] = {}
	tDecChristmasPromotion_RewandItem[3306699][1]["DeleteItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306699][1]["DeleteItem"][1]["Id"] = 3306699
	tDecChristmasPromotion_RewandItem[3306699][1]["RewardItem"] = {}
	tDecChristmasPromotion_RewandItem[3306699][1]["RewardItem"][1] = {}
	tDecChristmasPromotion_RewandItem[3306699][1]["RewardItem"][1]["Id"] = 711504
	tDecChristmasPromotion_RewandItem[3306699][1]["RewardItem"][1]["Attr"] = "0 3"
	tDecChristmasPromotion_RewandItem[3306699][1]["RewardEffect"] = {}
	tDecChristmasPromotion_RewandItem[3306699][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--log
	local tDecChristmasPromotion_log = {}
	local tDecChristmasPromotion_OutTimelog = {}
	local tDecChristmasPromotion_Emoney_log = {}
	--统计上交星星福袋个数log  %d记入玩家共提交星星福袋个数
	tDecChristmasPromotion_log[3306573] = "0,0,3306573,1,12000941,2,0,%d"
	
	--统计上交星星福袋个数Emoney_log  %d记入玩家共提交星星福袋个数
	tDecChristmasPromotion_Emoney_log[3306573] = "350	20964	0	0	%d	"
	
	--物品过期log
	tDecChristmasPromotion_OutTimelog[3306573] = "0,0,3306573,1,12000937,2,0,0"
----------------------------------NPC逻辑--------------------------------------
--提交星星
function DecChristmasPromotion_CommitStar(nNpcId,nItemId,nIndex)
	--活动时间
	if not Sys_ChkFullTime(tDecChristmasPromotion_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		User_TalkChannel2005(tDecChristmasPromotion_Text["ActTimeOut"])
		return
	end

	--判断是否有星星
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tDecChristmasPromotion_Text["NoItem"])
		return
		
	else
		local nEvent = tDecChristmasPromotion_Stc[1]["EventType"]
		local nType = tDecChristmasPromotion_Stc[1]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		local nUserId = Get_UserId()
		--提交一个
		if nIndex == 1 then
			if Item_DelItem(nItemId) then
				nData = nData + 1
			end
		else
			local nStarNum = Get_CountItemType(nItemId,0)
			if Item_ChkMulItem(nItemId,nItemId,nStarNum) and Item_DelMulItem(nItemId,nItemId,nStarNum) then
				nData = nData + nStarNum
			end
			
		end
		
		--打掩码，log
		Task_SetStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		User_TalkChannel2005(string.format(tDecChristmasPromotion_Text["CommitStar"],nData))
		Sys_SaveEmoneyBuy(string.format(tDecChristmasPromotion_Emoney_log[nItemId],nData))
		Sys_SaveActionTaskLog(string.format(tDecChristmasPromotion_log[nItemId],nData))
		
		--更新排行榜
		DecChristmasPromotion_StarRank(nUserId,nData)
	end
end


--排行榜
function DecChristmasPromotion_StarRank(nUserId,nData)
	--活动时间
	if not Sys_ChkFullTime(tDecChristmasPromotion_Cont["ActTime"]) then
		--LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nGlobalId = tDecChristmasPromotion_Cont["GlobalId"][1]
	
	local tStarRank = {}
	tStarRank["nUserId"] = Get_SysDynaGlobalData(nGlobalId,1)
	tStarRank["nUserName"] = Get_SysDynaGlobalDataStr(nGlobalId,1)
	tStarRank["nStarNum"] = Get_SysDynaGlobalData(nGlobalId,2)
	
	--更新排行榜
	if tStarRank["nStarNum"] < nData then
		tStarRank["nUserId"] = nUserId
		tStarRank["nUserName"] = Get_UserName(nUserId)
		tStarRank["nStarNum"] = nData
	else
		return
	end
	
	Sys_SetSynaGlobalData(nGlobalId,1,tStarRank["nUserId"])
	Sys_SetSynaGlobalDataStr(nGlobalId,1,tStarRank["nUserName"])
	Sys_SetSynaGlobalData(nGlobalId,2,tStarRank["nStarNum"])
	
end

--网页链接
function DecChristmasPromotion_WebLink()
	local sWebAddress = tDecChristmasPromotion_Cont["WebLink"]
	User_SendWebPage(sWebAddress)
end

----------------------------------物品逻辑--------------------------------------
function DecChristmasPromotion_OpenRewardBag(nItemId)
	if Item_ChkItem(nItemId) then
		local nSpace = RewardTemplate_GetRewardSpace(tDecChristmasPromotion_RewandItem[nItemId][1])-RewardTemplate_GetDelSpace(tDecChristmasPromotion_RewandItem[nItemId][1])
		if not(User_CheckLeftSpace(nSpace)) then
		--提示
		Sys_MsgBox(string.format(tDecChristmasPromotion_Text["MsgSpace"],nSpace))
		return 
		end
		RewardTemplate_UseItemAndMsg(tDecChristmasPromotion_RewandItem[nItemId][1])
	end
end

--星星福袋
function DecChristmasPromotion_OpenStarLuckBag(nItemId)
	if Item_ChkItem(nItemId) then
		--活动时间
		if Sys_ChkFullTime(tDecChristmasPromotion_Cont["ActTime"]) then
			return
		end
		
		--星星福袋使用时间
		if not Sys_ChkFullTime(tDecChristmasPromotion_Cont["LastActTime"]) then
			if Item_DelItem(nItemId) then
				User_TalkChannel2005(tDecChristmasPromotion_Text["StarActTimeOut"])
				Sys_SaveActionTaskLog(tDecChristmasPromotion_OutTimelog[3306573])
				return
			end
		end
		--背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tDecChristmasPromotion_RewandItem[nItemId][1])-RewardTemplate_GetDelSpace(tDecChristmasPromotion_RewandItem[nItemId][1])
		if not(User_CheckLeftSpace(nSpace)) then
		--提示
			Sys_MsgBox(string.format(tDecChristmasPromotion_Text["MsgSpace"],nSpace))
			return 
		end
		
		RewardTemplate_UseItemAndMsg(tDecChristmasPromotion_RewandItem[nItemId][1])
		
	end
end

function DecChristmasPromotion_OpenChooseBag(nItemId,nIndex)
	if Item_ChkItem(nItemId) then
	--背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tDecChristmasPromotion_RewandItem[nItemId][nIndex])-RewardTemplate_GetDelSpace(tDecChristmasPromotion_RewandItem[nItemId][nIndex])
			if not(User_CheckLeftSpace(nSpace)) then
			--提示
			Sys_MsgBox(string.format(tDecChristmasPromotion_Text["MsgSpace"],nSpace))
			return 
		end
		RewardTemplate_UseItemAndMsg(tDecChristmasPromotion_RewandItem[nItemId][nIndex])
	end
end



----------------------------------NPC模板---------------------------------------
tNpcFace[4112] = 6
tNpcGossip[22386] = tNpcGossip[22386] or DefaultNpc:new{}
tNpcGossip[22386]["OptionHidden"] = 1
tNpcGossip[22386]["DialogueText"] = tDecChristmasPromotion_Text[22386]

-- 活动前
tNpcGossip[22386]["Text1-1"] = {111,112,113}
tNpcGossip[22386]["tOption1-1"] = {111}
tNpcGossip[22386]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tDecChristmasPromotion_Cont["BefTime"])
end

--活动后
tNpcGossip[22386]["Text1-2"] = {121}
tNpcGossip[22386]["tOption1-2"] = {121}
tNpcGossip[22386]["ChkFunc1-2"] = function ()
	return not (Sys_ChkFullTime(tDecChristmasPromotion_Cont["ActTime"]) or Sys_ChkFullTime(tDecChristmasPromotion_Cont["LastActTime"]))
end

-- 活动中
tNpcGossip[22386]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[22386]["tOption1-3"] = {131,135,132,133,134}
--tNpcGossip[22386]["OptionFunc131"] = "DecChristmasPromotion_CommitStar</N>22386</N>3306573"
tNpcGossip[22386]["OptionFunc131"] = "DecChristmasPromotion_CommitStar</N>22386</N>3306573</N>1"
tNpcGossip[22386]["OptionFunc135"] = "DecChristmasPromotion_CommitStar</N>22386</N>3306573</N>2"
tNpcGossip[22386]["OptionFunc133"] = "DecChristmasPromotion_WebLink"
-- tNpcGossip[22386]["OptionPoint131"] = "2-3"
tNpcGossip[22386]["OptionPoint132"] = "2-1"
tNpcGossip[22386]["OptionPoint134"] = "2-2"
tNpcGossip[22386]["ChkFunc1-3"] = function ()
	return  Sys_ChkFullTime(tDecChristmasPromotion_Cont["ActTime"]) or Sys_ChkFullTime(tDecChristmasPromotion_Cont["LastActTime"])
end

--查询星星状态
tNpcGossip[22386]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[22386]["tOption2-1"] = {211}
tNpcGossip[22386]["ChkFunc2-1"] = function ()
	--活动时间
	if (Sys_ChkFullTime(tDecChristmasPromotion_Cont["ActTime"]) or Sys_ChkFullTime(tDecChristmasPromotion_Cont["LastActTime"])) then
	
		local nGlobalId = tDecChristmasPromotion_Cont["GlobalId"][1]
		local nEvent = tDecChristmasPromotion_Stc[1]["EventType"]
		local nType = tDecChristmasPromotion_Stc[1]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		
		local tStarRank = {}

		tStarRank["nUserId"] = Get_SysDynaGlobalData(nGlobalId,1)
		tStarRank["nUserName"] = Get_SysDynaGlobalDataStr(nGlobalId,1)
		tStarRank["nStarNum"] = Get_SysDynaGlobalData(nGlobalId,2)
		
		if tStarRank["nUserName"] == "" or tStarRank["nUserName"] == nil then
			tStarRank["nUserName"] = tDecChristmasPromotion_Text["null"]
			tNpcGossip[22386]["Text214"] = string.format(tDecChristmasPromotion_Text[22386]["Text214"],tStarRank["nUserName"])
			tNpcGossip[22386]["Text217"] = string.format(tDecChristmasPromotion_Text[22386]["Text217"],nData)
			tNpcGossip[22386]["Text2-1"] = {211,212,214,215,216,217}
		else
			tNpcGossip[22386]["Text213"] = string.format(tDecChristmasPromotion_Text[22386]["Text213"],tStarRank["nUserName"],tStarRank["nStarNum"])
			tNpcGossip[22386]["Text217"] = string.format(tDecChristmasPromotion_Text[22386]["Text217"],nData)
			tNpcGossip[22386]["Text2-1"] = {211,212,213,215,216,217}
		end
		
		return true
	
	else 
		return false
	end
end


--了解促销详情
tNpcGossip[22386]["Text2-2"] = {221,222,223,224,225,226,227,228,229}
tNpcGossip[22386]["tOption2-2"] = {221}

-- tNpcGossip[22386]["Text2-3"] = {}
-- tNpcGossip[22386]["tOption2-3"] = {231,232}
-- tNpcGossip[22386]["OptionFunc231"] = "DecChristmasPromotion_CommitStar</N>22386</N>3306573</N>1"
-- tNpcGossip[22386]["OptionFunc232"] = "DecChristmasPromotion_CommitStar</N>22386</N>3306573</N>2"
-- tNpcGossip[22386]["ChkFunc2-3"] = function ()
	-- if not Sys_ChkFullTime(tDecChristmasPromotion_Cont["ActTime"]) then
		-- return false
	-- end
	
	-- return true
-- end

tNpcGossip[22386]["Text2-4"] = {121}
tNpcGossip[22386]["tOption2-4"] = {121}
--------------------------------物品模板--------------------------------------

tItem[3306573] = tItem[3306573] or {}
tItem[3306573]["Function"] = function(nItemId,sItemName)
	DecChristmasPromotion_OpenStarLuckBag(nItemId)
end

tItem[3306574] = tItem[3306574] or {}
tItem[3306574]["Function"] = function(nItemId,sItemName)
	DecChristmasPromotion_OpenRewardBag(nItemId)
end
tItem[3306575] = tItem[3306574] or {}
tItem[3306576] = tItem[3306574] or {}
tItem[3306577] = tItem[3306574] or {}
tItem[3306578] = tItem[3306574] or {}
tItem[3306579] = tItem[3306574] or {}
tItem[3306580] = tItem[3306574] or {}
tItem[3306581] = tItem[3306574] or {}
tItem[3306582] = tItem[3306574] or {}
tItem[3306583] = tItem[3306574] or {}
tItem[3306584] = tItem[3306574] or {}
tItem[3306585] = tItem[3306574] or {}
tItem[3306698] = tItem[3306574] or {}
tItem[3306699] = tItem[3306574] or {}


tItemFace[3306586] = 1121
tItem[3306586] = tItem[3306586] or {}
tItem[3306586]["DialogueText"] = tDecChristmasPromotion_Text[3306586]
tItem[3306586]["Text1-1"] = {111,112}
tItem[3306586]["tOption1-1"] = {111,112,113}
tItem[3306586]["OptionFunc111"] = "DecChristmasPromotion_OpenChooseBag</N>3306586</N>1"
tItem[3306586]["OptionFunc112"] = "DecChristmasPromotion_OpenChooseBag</N>3306586</N>2"

