------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]暖冬有礼大竞拍
--Creator:		翁清海
--Created:		2017/12/18
------------------------------------------------------------------------------------

--命名前缀
--IntegralAuctionNpc_

--logid:12000963

local tIntegralAuctionNpc_Time = CommonFunc_Copy(tActivityTime["IntegralAuctionNpc"])

--常量表
local tIntegralAuctionNpc_Cont = {}
	tIntegralAuctionNpc_Cont["Level"] = 80
	tIntegralAuctionNpc_Cont["Metempsychosis"] = 0
	--排行榜最多显示行数
	tIntegralAuctionNpc_Cont["TotalRank"] = 10
	--排行榜显示前5和后5排名标志，如果是前6和后4那就配6
	tIntegralAuctionNpc_Cont["DiffRank"] = 5
	--编辑框长度
	tIntegralAuctionNpc_Cont["Edit"] = 10
	--全服总气力值
	tIntegralAuctionNpc_Cont["TotalStrength"] = 100000
	--奋斗服标志
	tIntegralAuctionNpc_Cont["GlobalId"] = 52599
	--奋斗服去掉一些奖励
	tIntegralAuctionNpc_Cont["StriveItemId"] = {3301245,3301246,3301248}
	--索引对应积分
	tIntegralAuctionNpc_Cont["Score"] = {}
	tIntegralAuctionNpc_Cont["Score"][1] = 10
	tIntegralAuctionNpc_Cont["Score"][2] = 50
	tIntegralAuctionNpc_Cont["Score"][3] = 100
	tIntegralAuctionNpc_Cont["Score"][4] = 300
	tIntegralAuctionNpc_Cont["Score"][5] = 500
	--奖励索引
	tIntegralAuctionNpc_Cont["Index"] = {}
	--额外的消灭妖魔有几率掉落银票交易券特权
	tIntegralAuctionNpc_Cont["Index"][5] = 6
	--收回拍卖行银票或金票索引
	tIntegralAuctionNpc_Cont["Return"] = {}
	tIntegralAuctionNpc_Cont["Return"][3307041] = {"AuctionSilver","Second"}
	tIntegralAuctionNpc_Cont["Return"][3307043] = {"AuctionGold"}
	--收回拍卖行银票或金票对白索引
	tIntegralAuctionNpc_Cont["ReturnIndex"] = {}
	tIntegralAuctionNpc_Cont["ReturnIndex"][3307041] = 4
	tIntegralAuctionNpc_Cont["ReturnIndex"][3307043] = 5
	--金票兑换银票可兑换的范围
	tIntegralAuctionNpc_Cont["ExchangeTicket"] = {}
	tIntegralAuctionNpc_Cont["ExchangeTicket"]["Min"] = 80
	tIntegralAuctionNpc_Cont["ExchangeTicket"]["Max"] = 130
	--商品抢购价格区间
	tIntegralAuctionNpc_Cont["Buy"] = {}
	tIntegralAuctionNpc_Cont["Buy"]["Min"] = 1
	tIntegralAuctionNpc_Cont["Buy"]["Max"] = 100
	--竞拍NPCid和索引差值
	tIntegralAuctionNpc_Cont["AuctionDiff"] = 22510
	--特惠宝箱NPCid和索引差值
	tIntegralAuctionNpc_Cont["SecondDiff"] = 22515
	--众筹宝箱NPCid和索引差值
	tIntegralAuctionNpc_Cont["CrowdDiff"] = 22527
	--NPCId
	tIntegralAuctionNpc_Cont["NpcId"] = {}
	tIntegralAuctionNpc_Cont["NpcId"]["Auction"] = 22511
	tIntegralAuctionNpc_Cont["NpcId"]["Second"] = 22516
	tIntegralAuctionNpc_Cont["NpcId"]["Crowd"] = 22528
	--对白层数
	tIntegralAuctionNpc_Cont["Tier"] = {}
	tIntegralAuctionNpc_Cont["Tier"]["Auction"] = 1
	tIntegralAuctionNpc_Cont["Tier"]["Second"] = 1
	tIntegralAuctionNpc_Cont["Tier"]["Crowd"] = 3
	tIntegralAuctionNpc_Cont["Tier"]["Buy"] = 3
	
	--对白对齐
	tIntegralAuctionNpc_Cont["Align"] = {}
	--上交银票对白
	tIntegralAuctionNpc_Cont["Align"]["Hand"] = {}
	tIntegralAuctionNpc_Cont["Align"]["Hand"]["Left"] = 10
	tIntegralAuctionNpc_Cont["Align"]["Hand"]["Middle"] = 37
	--竞拍对白
	tIntegralAuctionNpc_Cont["Align"]["Auction"] = {}
	tIntegralAuctionNpc_Cont["Align"]["Auction"]["Left"] = 10
	tIntegralAuctionNpc_Cont["Align"]["Auction"]["Middle"] = 26
	tIntegralAuctionNpc_Cont["Align"]["Auction"]["Right"] = 42
	--竞拍排行榜对白
	tIntegralAuctionNpc_Cont["Align"]["AuctionRank"] = {}
	tIntegralAuctionNpc_Cont["Align"]["AuctionRank"]["Left"] = 10
	tIntegralAuctionNpc_Cont["Align"]["AuctionRank"]["Middle"] = 30
	tIntegralAuctionNpc_Cont["Align"]["AuctionRank"]["Right"] = 50
	--次高价对白
	tIntegralAuctionNpc_Cont["Align"]["Second"] = {}
	tIntegralAuctionNpc_Cont["Align"]["Second"]["Left"] = 15
	tIntegralAuctionNpc_Cont["Align"]["Second"]["Middle"] = 44
	--众筹对白
	tIntegralAuctionNpc_Cont["Align"]["Crowd"] = {}
	tIntegralAuctionNpc_Cont["Align"]["Crowd"]["Left"] = 15
	tIntegralAuctionNpc_Cont["Align"]["Crowd"]["Middle"] = 44
	--商人对白
	tIntegralAuctionNpc_Cont["Align"]["Buy"] = {}
	tIntegralAuctionNpc_Cont["Align"]["Buy"]["Left"] = 10
	tIntegralAuctionNpc_Cont["Align"]["Buy"]["Middle"] = 30
	tIntegralAuctionNpc_Cont["Align"]["Buy"]["Right"] = 50
	--需要更新的宝箱索引
	tIntegralAuctionNpc_Cont["Update"] = {}
	tIntegralAuctionNpc_Cont["Update"][1] = "Auction"
	tIntegralAuctionNpc_Cont["Update"][2] = "Second"
	tIntegralAuctionNpc_Cont["Update"][3] = "Crowd"
	--NPCId对应物品id
	tIntegralAuctionNpc_Cont["NPCItem"] = {}
	tIntegralAuctionNpc_Cont["NPCItem"][22511] = 3307041
	tIntegralAuctionNpc_Cont["NPCItem"][22512] = 3307041
	tIntegralAuctionNpc_Cont["NPCItem"][22513] = 3307041
	tIntegralAuctionNpc_Cont["NPCItem"][22514] = 3307041
	tIntegralAuctionNpc_Cont["NPCItem"][22515] = 3307043
	tIntegralAuctionNpc_Cont["NPCItem"][22528] = {}
	tIntegralAuctionNpc_Cont["NPCItem"][22528]["Item"] = 3307041
	tIntegralAuctionNpc_Cont["NPCItem"][22528]["Num"] = 100
	tIntegralAuctionNpc_Cont["NPCItem"][22529] = {}
	tIntegralAuctionNpc_Cont["NPCItem"][22529]["Item"] = 3307043
	tIntegralAuctionNpc_Cont["NPCItem"][22529]["Num"] = 1
	--次高价奖池去除一些物品
	tIntegralAuctionNpc_Cont["Second"] = {2,4,6,9,10,16,17}
	--金票掉落概率
	tIntegralAuctionNpc_Cont["DropGoldTicket"] = {}
	tIntegralAuctionNpc_Cont["DropGoldTicket"]["Start"] = 10
	tIntegralAuctionNpc_Cont["DropGoldTicket"]["End"] = 10000
	--传送点配置
	tIntegralAuctionNpc_Cont["Bound"] = {}
	tIntegralAuctionNpc_Cont["Bound"][1857] = {}
	tIntegralAuctionNpc_Cont["Bound"][1857]["MapId"] = 1002
	tIntegralAuctionNpc_Cont["Bound"][1857]["X"] = 347
	tIntegralAuctionNpc_Cont["Bound"][1857]["Y"] = 421
	tIntegralAuctionNpc_Cont["Bound"][1858] = {}
	tIntegralAuctionNpc_Cont["Bound"][1858]["MapId"] = 10253
	tIntegralAuctionNpc_Cont["Bound"][1858]["X"] = 101
	tIntegralAuctionNpc_Cont["Bound"][1858]["Y"] = 111
	tIntegralAuctionNpc_Cont["Bound"][1859] = {}
	tIntegralAuctionNpc_Cont["Bound"][1859]["MapId"] = 10254
	tIntegralAuctionNpc_Cont["Bound"][1859]["X"] = 101
	tIntegralAuctionNpc_Cont["Bound"][1859]["Y"] = 111
	tIntegralAuctionNpc_Cont["Bound"][1860] = {}
	tIntegralAuctionNpc_Cont["Bound"][1860]["MapId"] = 10255
	tIntegralAuctionNpc_Cont["Bound"][1860]["X"] = 101
	tIntegralAuctionNpc_Cont["Bound"][1860]["Y"] = 111
	tIntegralAuctionNpc_Cont["Bound"][1862] = {}
	tIntegralAuctionNpc_Cont["Bound"][1862]["MapId"] = 10263
	tIntegralAuctionNpc_Cont["Bound"][1862]["X"] = 101
	tIntegralAuctionNpc_Cont["Bound"][1862]["Y"] = 111
	--传送限制
	tIntegralAuctionNpc_Cont["NoTrans"] = {6000,10137}
	--光效配置
	tIntegralAuctionNpc_Cont["Effect"] = {}
	tIntegralAuctionNpc_Cont["Effect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Cont["Effect"]["AuctionSuc"] = "zf2-e128"
	
local tIntegralAuctionNpc_Log = {}
	tIntegralAuctionNpc_Log["DelItem"] = "0,0,%d,%d,12000963,2,0,0"
	
	tIntegralAuctionNpc_Log["Login"] = "0,0,0,0,12000963,2,3307041,100"
	tIntegralAuctionNpc_Log["Auction"] = "0,0,0,0,12000963,1[1],%d,%d"
	tIntegralAuctionNpc_Log["AuctionGuess"] = "0,0,0,0,12000963,1[2],12,1000"
	tIntegralAuctionNpc_Log["Second"] = "0,0,0,0,12000963,1[3],%d,%d"
	tIntegralAuctionNpc_Log["Crowd"] = "0,0,0,0,12000963,1[4],%d,%d"
	tIntegralAuctionNpc_Log["CrowdAttend"] = "0,0,0,0,12000963,1[5],12,50"
	tIntegralAuctionNpc_Log["GetStrength"] = "0,0,0,0,12000963,2,3308498,1"
	
local tIntegralAuctionNpc_ELog = {}
	tIntegralAuctionNpc_ELog["Auction"] = "250	4011"
	
local tIntegralAuctionNpc_Stc = {}
	--积分
	tIntegralAuctionNpc_Stc["Score"] = {}
	tIntegralAuctionNpc_Stc["Score"]["Event"] = 171
	tIntegralAuctionNpc_Stc["Score"]["Type"] = 65
	tIntegralAuctionNpc_Stc["Score"]["Save"] = 1
	tIntegralAuctionNpc_Stc["Score"]["Delay"] = 1
	tIntegralAuctionNpc_Stc["Score"]["TimeType"] = 4
	--积分奖励领掩码
	tIntegralAuctionNpc_Stc["ScoreAward"] = {}
	tIntegralAuctionNpc_Stc["ScoreAward"]["Event"] = 171
	tIntegralAuctionNpc_Stc["ScoreAward"]["Type"] = 66
	tIntegralAuctionNpc_Stc["ScoreAward"]["Save"] = 1
	tIntegralAuctionNpc_Stc["ScoreAward"]["Delay"] = 1
	tIntegralAuctionNpc_Stc["ScoreAward"]["TimeType"] = 4
	--上线获得银票掩码
	tIntegralAuctionNpc_Stc["LoginTicket"] = {}
	tIntegralAuctionNpc_Stc["LoginTicket"]["Event"] = 171
	tIntegralAuctionNpc_Stc["LoginTicket"]["Type"] = 67
	--竞拍宝箱退还银票数
	tIntegralAuctionNpc_Stc["AuctionSilver"] = {}
	tIntegralAuctionNpc_Stc["AuctionSilver"]["Event"] = 171
	tIntegralAuctionNpc_Stc["AuctionSilver"]["Type"] = 68
	--竞拍宝箱退还金票数
	tIntegralAuctionNpc_Stc["AuctionGold"] = {}
	tIntegralAuctionNpc_Stc["AuctionGold"]["Event"] = 171
	tIntegralAuctionNpc_Stc["AuctionGold"]["Type"] = 69
	--特惠宝箱退还银票数
	tIntegralAuctionNpc_Stc["Second"] = {}
	tIntegralAuctionNpc_Stc["Second"]["Event"] = 171
	tIntegralAuctionNpc_Stc["Second"]["Type"] = 70
	--怪物掉落获得银票掩码
	tIntegralAuctionNpc_Stc["DropTicket"] = {}
	tIntegralAuctionNpc_Stc["DropTicket"]["Event"] = 171
	tIntegralAuctionNpc_Stc["DropTicket"]["Type"] = 71
	tIntegralAuctionNpc_Stc["DropTicket"]["TotalRandom"] = 10000
	tIntegralAuctionNpc_Stc["DropTicket"]["Data"] = {}
	tIntegralAuctionNpc_Stc["DropTicket"]["Data"][1] = {}
	tIntegralAuctionNpc_Stc["DropTicket"]["Data"][1]["Num"] = 300
	tIntegralAuctionNpc_Stc["DropTicket"]["Data"][1]["Random"] = 500
	tIntegralAuctionNpc_Stc["DropTicket"]["Data"][2] = {}
	tIntegralAuctionNpc_Stc["DropTicket"]["Data"][2]["Num"] = 1000
	tIntegralAuctionNpc_Stc["DropTicket"]["Data"][2]["Random"] = 100
	--怪物掉落获得交易银票掩码
	tIntegralAuctionNpc_Stc["DropDealTicket"] = {}
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Event"] = 171
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Type"] = 72
	tIntegralAuctionNpc_Stc["DropDealTicket"]["TotalRandom"] = 10000
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"] = {}
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][1] = {}
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][1]["Num"] = 1000
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][1]["Random"] = 30
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][2] = {}
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][2]["Num"] = 2000
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][2]["Random"] = 25
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][3] = {}
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][3]["Num"] = 3000
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][3]["Random"] = 20
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][4] = {}
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][4]["Num"] = 4000
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][4]["Random"] = 15
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][5] = {}
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][5]["Num"] = 5000
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][5]["Random"] = 10
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][6] = {}
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][6]["Num"] = 6000
	tIntegralAuctionNpc_Stc["DropDealTicket"]["Data"][6]["Random"] = 5
	--特惠宝箱个人投注
	tIntegralAuctionNpc_Stc["SecondBox"] = {}
	tIntegralAuctionNpc_Stc["SecondBox"][1] = {}
	tIntegralAuctionNpc_Stc["SecondBox"][1][1] = {}
	tIntegralAuctionNpc_Stc["SecondBox"][1][1]["Event"] = 171
	tIntegralAuctionNpc_Stc["SecondBox"][1][1]["Type"] = 73
	tIntegralAuctionNpc_Stc["SecondBox"][1][1]["Save"] = 1
	tIntegralAuctionNpc_Stc["SecondBox"][2] = {}
	tIntegralAuctionNpc_Stc["SecondBox"][2][1] = {}
	tIntegralAuctionNpc_Stc["SecondBox"][2][1]["Event"] = 171
	tIntegralAuctionNpc_Stc["SecondBox"][2][1]["Type"] = 74
	tIntegralAuctionNpc_Stc["SecondBox"][2][1]["Save"] = 1
	tIntegralAuctionNpc_Stc["SecondBox"][3] = {}
	tIntegralAuctionNpc_Stc["SecondBox"][3][1] = {}
	tIntegralAuctionNpc_Stc["SecondBox"][3][1]["Event"] = 171
	tIntegralAuctionNpc_Stc["SecondBox"][3][1]["Type"] = 75
	tIntegralAuctionNpc_Stc["SecondBox"][3][1]["Save"] = 1
	tIntegralAuctionNpc_Stc["SecondBox"][4] = {}
	tIntegralAuctionNpc_Stc["SecondBox"][4][1] = {}
	tIntegralAuctionNpc_Stc["SecondBox"][4][1]["Event"] = 171
	tIntegralAuctionNpc_Stc["SecondBox"][4][1]["Type"] = 76
	tIntegralAuctionNpc_Stc["SecondBox"][4][1]["Save"] = 1
	tIntegralAuctionNpc_Stc["SecondBox"][5] = {}
	tIntegralAuctionNpc_Stc["SecondBox"][5][1] = {}
	tIntegralAuctionNpc_Stc["SecondBox"][5][1]["Event"] = 171
	tIntegralAuctionNpc_Stc["SecondBox"][5][1]["Type"] = 77
	tIntegralAuctionNpc_Stc["SecondBox"][5][1]["Save"] = 1
	--抢购商品抢购标志
	tIntegralAuctionNpc_Stc["Buy"] = {}
	tIntegralAuctionNpc_Stc["Buy"]["Event"] = 171
	tIntegralAuctionNpc_Stc["Buy"]["Type"] = 78
	--回收日回收银票数
	tIntegralAuctionNpc_Stc["Recycle"] = {}
	tIntegralAuctionNpc_Stc["Recycle"]["Event"] = 171
	tIntegralAuctionNpc_Stc["Recycle"]["Type"] = 79
	--气力值领取标志
	tIntegralAuctionNpc_Stc["GetStrength"] = {}
	tIntegralAuctionNpc_Stc["GetStrength"]["Event"] = 175
	tIntegralAuctionNpc_Stc["GetStrength"]["Type"] = 99
	--天石二次确认
	tIntegralAuctionNpc_Stc["Confirm"] = {}
	tIntegralAuctionNpc_Stc["Confirm"]["Event"] = 184
	tIntegralAuctionNpc_Stc["Confirm"]["Type"] = 79
	
--物品总表
local tIntegralAuctionNpc_Item = {}
	--金票
	tIntegralAuctionNpc_Item["GoldTicket"] = 3307043
	--银票
	tIntegralAuctionNpc_Item["SilverTicket"] = 3307041
	--竞拍奖池
	tIntegralAuctionNpc_Item["Auction"] = {}
	tIntegralAuctionNpc_Item["Auction"]["Big"] = {}
	tIntegralAuctionNpc_Item["Auction"]["Big"][1] = 3009003
	tIntegralAuctionNpc_Item["Auction"]["Big"][2] = 730007
	tIntegralAuctionNpc_Item["Auction"]["Big"][3] = 3311278
	tIntegralAuctionNpc_Item["Auction"]["Big"][4] = 3311279
	tIntegralAuctionNpc_Item["Auction"]["Big"][5] = 723694
	tIntegralAuctionNpc_Item["Auction"]["Small"] = {}
	tIntegralAuctionNpc_Item["Auction"]["Small"][1] = 3009002
	tIntegralAuctionNpc_Item["Auction"]["Small"][2] = 3009001
	tIntegralAuctionNpc_Item["Auction"]["Small"][3] = 730005
	tIntegralAuctionNpc_Item["Auction"]["Small"][4] = 730004
	tIntegralAuctionNpc_Item["Auction"]["Small"][5] = 3311280
	tIntegralAuctionNpc_Item["Auction"]["Small"][6] = 3311281
	tIntegralAuctionNpc_Item["Auction"]["Small"][7] = 3311282
	tIntegralAuctionNpc_Item["Auction"]["Small"][8] = 3311283
	tIntegralAuctionNpc_Item["Auction"]["Small"][9] = 3008200
	tIntegralAuctionNpc_Item["Auction"]["Small"][10] = 3008198
	tIntegralAuctionNpc_Item["Auction"]["Small"][11] = 3008196
	tIntegralAuctionNpc_Item["Auction"]["Small"][12] = 3008193
	tIntegralAuctionNpc_Item["Auction"]["Small"][13] = 3311284
	tIntegralAuctionNpc_Item["Auction"]["Small"][14] = 3008309
	tIntegralAuctionNpc_Item["Auction"]["Small"][15] = 3311285
	--抢购商品奖池
	tIntegralAuctionNpc_Item["Buy"] = {}
	tIntegralAuctionNpc_Item["Buy"][1] = {}
	tIntegralAuctionNpc_Item["Buy"][1]["Id"] = 730005
	tIntegralAuctionNpc_Item["Buy"][1]["Attr"] = "0 1 3 10080 1"
	tIntegralAuctionNpc_Item["Buy"][2] = {}
	tIntegralAuctionNpc_Item["Buy"][2]["Id"] = 730004
	tIntegralAuctionNpc_Item["Buy"][2]["Attr"] = "0 1 3 10080 1"
	tIntegralAuctionNpc_Item["Buy"][3] = {}
	tIntegralAuctionNpc_Item["Buy"][3]["Id"] = 3009002
	tIntegralAuctionNpc_Item["Buy"][3]["Attr"] = "0 1 0 2880 1"
	tIntegralAuctionNpc_Item["Buy"][4] = {}
	tIntegralAuctionNpc_Item["Buy"][4]["Id"] = 3009001
	tIntegralAuctionNpc_Item["Buy"][4]["Attr"] = "0 5 0 2880 1"
	tIntegralAuctionNpc_Item["Buy"][5] = {}
	tIntegralAuctionNpc_Item["Buy"][5]["Id"] = 3301246
	tIntegralAuctionNpc_Item["Buy"][5]["Attr"] = "0 1"
	tIntegralAuctionNpc_Item["Buy"][6] = {}
	tIntegralAuctionNpc_Item["Buy"][6]["Id"] = 3301245
	tIntegralAuctionNpc_Item["Buy"][6]["Attr"] = "0 1"
	tIntegralAuctionNpc_Item["Buy"][7] = {}
	tIntegralAuctionNpc_Item["Buy"][7]["Id"] = 3008193
	tIntegralAuctionNpc_Item["Buy"][7]["Attr"] = "0 1"
	tIntegralAuctionNpc_Item["Buy"][8] = {}
	tIntegralAuctionNpc_Item["Buy"][8]["Id"] = 3008190
	tIntegralAuctionNpc_Item["Buy"][8]["Attr"] = "0 1"
	tIntegralAuctionNpc_Item["Buy"][9] = {}
	tIntegralAuctionNpc_Item["Buy"][9]["Id"] = 3002926
	tIntegralAuctionNpc_Item["Buy"][9]["Attr"] = "0 5"
	tIntegralAuctionNpc_Item["Buy"][10] = {}
	tIntegralAuctionNpc_Item["Buy"][10]["Id"] = 3003126
	tIntegralAuctionNpc_Item["Buy"][10]["Attr"] = "0 5 3"
	tIntegralAuctionNpc_Item["Buy"][11] = {}
	tIntegralAuctionNpc_Item["Buy"][11]["Id"] = 3008221
	tIntegralAuctionNpc_Item["Buy"][11]["Attr"] = "0 10"
	
	tIntegralAuctionNpc_Item["BuySmall"] = {}
	tIntegralAuctionNpc_Item["BuySmall"][1] = {}
	tIntegralAuctionNpc_Item["BuySmall"][1]["Id"] = 3006537
	tIntegralAuctionNpc_Item["BuySmall"][1]["Attr"] = "0 1"
	tIntegralAuctionNpc_Item["BuySmall"][2] = {}
	tIntegralAuctionNpc_Item["BuySmall"][2]["Id"] = 3006922
	tIntegralAuctionNpc_Item["BuySmall"][2]["Attr"] = "0 1"
	tIntegralAuctionNpc_Item["BuySmall"][3] = {}
	tIntegralAuctionNpc_Item["BuySmall"][3]["Id"] = 3006923
	tIntegralAuctionNpc_Item["BuySmall"][3]["Attr"] = "0 1"
	tIntegralAuctionNpc_Item["BuySmall"][4] = {}
	tIntegralAuctionNpc_Item["BuySmall"][4]["Id"] = 3006925
	tIntegralAuctionNpc_Item["BuySmall"][4]["Attr"] = "0 1"
	tIntegralAuctionNpc_Item["BuySmall"][5] = {}
	tIntegralAuctionNpc_Item["BuySmall"][5]["Id"] = 3006927
	tIntegralAuctionNpc_Item["BuySmall"][5]["Attr"] = "0 1"
	tIntegralAuctionNpc_Item["BuySmall"][6] = {}
	tIntegralAuctionNpc_Item["BuySmall"][6]["Id"] = 3006928
	tIntegralAuctionNpc_Item["BuySmall"][6]["Attr"] = "0 1"
	
	--物品数量
	tIntegralAuctionNpc_Item["Num"] = {}
	tIntegralAuctionNpc_Item["Num"][3009003] = 1
	tIntegralAuctionNpc_Item["Num"][730007] = 1
	tIntegralAuctionNpc_Item["Num"][3307044] = 1
	tIntegralAuctionNpc_Item["Num"][3307045] = 1
	tIntegralAuctionNpc_Item["Num"][723694] = 3
	tIntegralAuctionNpc_Item["Num"][3009002] = 10
	tIntegralAuctionNpc_Item["Num"][3009001] = 10
	tIntegralAuctionNpc_Item["Num"][730005] = 10
	tIntegralAuctionNpc_Item["Num"][730004] = 10
	tIntegralAuctionNpc_Item["Num"][3301248] = 10
	tIntegralAuctionNpc_Item["Num"][3301246] = 20
	tIntegralAuctionNpc_Item["Num"][3008200] = 10
	tIntegralAuctionNpc_Item["Num"][3008198] = 10
	tIntegralAuctionNpc_Item["Num"][3008196] = 10
	tIntegralAuctionNpc_Item["Num"][3008193] = 10
	tIntegralAuctionNpc_Item["Num"][3307046] = 10
	tIntegralAuctionNpc_Item["Num"][3307047] = 10
	tIntegralAuctionNpc_Item["Num"][3307048] = 30
	tIntegralAuctionNpc_Item["Num"][3008265] = 1
	tIntegralAuctionNpc_Item["Num"][3008267] = 1
	tIntegralAuctionNpc_Item["Num"][3307049] = 20
	tIntegralAuctionNpc_Item["Num"][3307050] = 20
	tIntegralAuctionNpc_Item["Num"][3006745] = 10
	tIntegralAuctionNpc_Item["Num"][3006746] = 10
	tIntegralAuctionNpc_Item["Num"][3307051] = 10
	--新增
	tIntegralAuctionNpc_Item["Num"][3311278] = 1
	tIntegralAuctionNpc_Item["Num"][3311279] = 1
	tIntegralAuctionNpc_Item["Num"][3311280] = 10
	tIntegralAuctionNpc_Item["Num"][3311281] = 10
	tIntegralAuctionNpc_Item["Num"][3311282] = 10
	tIntegralAuctionNpc_Item["Num"][3311283] = 10
	tIntegralAuctionNpc_Item["Num"][3311284] = 10
	tIntegralAuctionNpc_Item["Num"][3008309] = 10
	tIntegralAuctionNpc_Item["Num"][3311285] = 10
	--物品底价
	tIntegralAuctionNpc_Item["LowPrice"] = {}
	tIntegralAuctionNpc_Item["LowPrice"][3009003] = 1800
	tIntegralAuctionNpc_Item["LowPrice"][730007] = 1800
	tIntegralAuctionNpc_Item["LowPrice"][3307044] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3307045] = 0
	tIntegralAuctionNpc_Item["LowPrice"][723694] = 320
	tIntegralAuctionNpc_Item["LowPrice"][3009002] = 150
	tIntegralAuctionNpc_Item["LowPrice"][3009001] = 15
	tIntegralAuctionNpc_Item["LowPrice"][730005] = 200
	tIntegralAuctionNpc_Item["LowPrice"][730004] = 62
	tIntegralAuctionNpc_Item["LowPrice"][3301248] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3301246] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3008200] = 300
	tIntegralAuctionNpc_Item["LowPrice"][3008198] = 180
	tIntegralAuctionNpc_Item["LowPrice"][3008196] = 120
	tIntegralAuctionNpc_Item["LowPrice"][3008193] = 60
	tIntegralAuctionNpc_Item["LowPrice"][3307046] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3307047] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3307048] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3008265] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3008267] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3307049] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3307050] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3006745] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3006746] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3307051] = 0
	tIntegralAuctionNpc_Item["LowPrice"][3311278] = 1600
	tIntegralAuctionNpc_Item["LowPrice"][3311279] = 900
	tIntegralAuctionNpc_Item["LowPrice"][3311280] = 54
	tIntegralAuctionNpc_Item["LowPrice"][3311281] = 180
	tIntegralAuctionNpc_Item["LowPrice"][3311282] = 270
	tIntegralAuctionNpc_Item["LowPrice"][3311283] = 50
	tIntegralAuctionNpc_Item["LowPrice"][3311284] = 180
	tIntegralAuctionNpc_Item["LowPrice"][3008309] = 90
	tIntegralAuctionNpc_Item["LowPrice"][3311285] = 160
	
--邮件总表
local tIntegralAuctionNpc_Mail = {}
	--上线获得银票
	tIntegralAuctionNpc_Mail["LoginTicket"] = {}
	tIntegralAuctionNpc_Mail["LoginTicket"]["ActionId"] = 568108
	tIntegralAuctionNpc_Mail["LoginTicket"]["ExistDay"] = 30
	--竞拍退回竞拍物品
	tIntegralAuctionNpc_Mail["AuctionReturn"] = {}
	tIntegralAuctionNpc_Mail["AuctionReturn"]["ExistDay"] = 30
	--竞拍发奖
	tIntegralAuctionNpc_Mail["AuctionAward"] = {}
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"] = {}
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3009003] = 570103
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][730007] = 570104
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3307044] = 568111
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3307045] = 568112
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][723694] = 570107
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3009002] = 570108
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3009001] = 570109
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][730005] = 570110
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][730004] = 570111
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3301248] = 568118
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3301246] = 568119
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3008200] = 570116
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3008198] = 570117
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3008196] = 570118
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3008193] = 570119
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3307046] = 568124
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3307047] = 568125
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3307048] = 568126
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3008265] = 568127
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3008267] = 568128
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3307049] = 568129
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3307050] = 568130
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3006745] = 568131
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3006746] = 568132
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3307051] = 568133
	--新增
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3311278] = 570105
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3311279] = 570106
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3311280] = 570112
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3311281] = 570113
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3311282] = 570114
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3311283] = 570115
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3311284] = 570120
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3008309] = 570121
	tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][3311285] = 570122
	tIntegralAuctionNpc_Mail["AuctionAward"]["ExistDay"] = 30
	--竞拍预测成功发奖
	tIntegralAuctionNpc_Mail["AuctionGuess"] = {}
	tIntegralAuctionNpc_Mail["AuctionGuess"]["ActionId"] = 568134
	tIntegralAuctionNpc_Mail["AuctionGuess"]["ExistDay"] = 30
	--金票众筹宝箱众筹失败给的参与奖
	tIntegralAuctionNpc_Mail["CrowdBack"] = {}
	tIntegralAuctionNpc_Mail["CrowdBack"]["ActionId"] = 568135
	tIntegralAuctionNpc_Mail["CrowdBack"]["ExistDay"] = 30
	--发放没有领取的气力值礼券
	tIntegralAuctionNpc_Mail["Strength"] = {}
	tIntegralAuctionNpc_Mail["Strength"]["ActionId"] = 568952
	tIntegralAuctionNpc_Mail["Strength"]["ExistDay"] = 30
	
--动态码表
local tIntegralAuctionNpc_GlobalData = {}
	--金票兑换银票的数据来源
	tIntegralAuctionNpc_GlobalData["Exchange"] = {}
	tIntegralAuctionNpc_GlobalData["Exchange"]["Id"] = 51975
	tIntegralAuctionNpc_GlobalData["Exchange"]["Pos"] = 0
	--每小时是否清零标志
	tIntegralAuctionNpc_GlobalData["EveryHour"] = {}
	tIntegralAuctionNpc_GlobalData["EveryHour"]["Id"] = 51975
	tIntegralAuctionNpc_GlobalData["EveryHour"]["Pos"] = 1
	--每天是否清零标志
	tIntegralAuctionNpc_GlobalData["EveryDay"] = {}
	tIntegralAuctionNpc_GlobalData["EveryDay"]["Id"] = 51975
	tIntegralAuctionNpc_GlobalData["EveryDay"]["Pos"] = 2
	--全服提交银票总数
	tIntegralAuctionNpc_GlobalData["Recycle"] = {}
	tIntegralAuctionNpc_GlobalData["Recycle"]["Id"] = 51975
	tIntegralAuctionNpc_GlobalData["Recycle"]["Pos"] = 3
	--积分竞拍相关
	tIntegralAuctionNpc_GlobalData["Auction"] = {}
	--竞拍所有id
	tIntegralAuctionNpc_GlobalData["Auction"]["Total"] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Total"][1] = 51976
	--保存竞拍宝箱竞拍的宝物
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][1] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][1][1] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][1][1]["Id"] = 51976
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][1][1]["Pos"] = 0
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][2] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][2][1] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][2][1]["Id"] = 51976
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][2][1]["Pos"] = 1
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][3] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][3][1] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][3][1]["Id"] = 51976
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][3][1]["Pos"] = 2
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][4] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][4][1] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][4][1]["Id"] = 51976
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][4][1]["Pos"] = 3
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][5] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][5][1] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][5][1]["Id"] = 51976
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][5][1]["Pos"] = 4
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][6] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][6][1] = {}
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][6][1]["Id"] = 51976
	tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][6][1]["Pos"] = 5
	--特惠宝箱相关
	tIntegralAuctionNpc_GlobalData["Second"] = {}
	--特惠宝箱所有id
	tIntegralAuctionNpc_GlobalData["Second"]["Total"] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Total"][1] = 51977
	tIntegralAuctionNpc_GlobalData["Second"]["Total"][2] = 51978
	tIntegralAuctionNpc_GlobalData["Second"]["Total"][3] = 51979
	tIntegralAuctionNpc_GlobalData["Second"]["Total"][4] = 51980
	--保存特惠宝箱竞拍的宝物
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][1][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][1][1]["Id"] = 51977
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][1][1]["Pos"] = 0
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][2] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][2][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][2][1]["Id"] = 51977
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][2][1]["Pos"] = 1
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][3] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][3][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][3][1]["Id"] = 51977
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][3][1]["Pos"] = 2
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][4] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][4][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][4][1]["Id"] = 51977
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][4][1]["Pos"] = 3
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][5] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][5][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][5][1]["Id"] = 51977
	tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][5][1]["Pos"] = 4
	--保存特惠宝箱最高价的玩家id
	tIntegralAuctionNpc_GlobalData["Second"]["Player"] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][1][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][1][1]["Id"] = 51977
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][1][1]["Pos"] = 5
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][2] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][2][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][2][1]["Id"] = 51978
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][2][1]["Pos"] = 0
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][3] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][3][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][3][1]["Id"] = 51978
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][3][1]["Pos"] = 1
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][4] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][4][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][4][1]["Id"] = 51978
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][4][1]["Pos"] = 2
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][5] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][5][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][5][1]["Id"] = 51978
	tIntegralAuctionNpc_GlobalData["Second"]["Player"][5][1]["Pos"] = 3
	--保存特惠宝箱当前最高票价
	tIntegralAuctionNpc_GlobalData["Second"]["Price"] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][1][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][1][1]["Id"] = 51978
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][1][1]["Pos"] = 4
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][2] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][2][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][2][1]["Id"] = 51978
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][2][1]["Pos"] = 5
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][3] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][3][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][3][1]["Id"] = 51979
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][3][1]["Pos"] = 0
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][4] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][4][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][4][1]["Id"] = 51979
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][4][1]["Pos"] = 1
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][5] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][5][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][5][1]["Id"] = 51979
	tIntegralAuctionNpc_GlobalData["Second"]["Price"][5][1]["Pos"] = 2
	--保存特惠宝箱当前次高票价
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][1][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][1][1]["Id"] = 51979
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][1][1]["Pos"] = 3
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][2] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][2][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][2][1]["Id"] = 51979
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][2][1]["Pos"] = 4
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][3] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][3][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][3][1]["Id"] = 51979
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][3][1]["Pos"] = 5
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][4] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][4][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][4][1]["Id"] = 51980
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][4][1]["Pos"] = 0
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][5] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][5][1] = {}
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][5][1]["Id"] = 51980
	tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][5][1]["Pos"] = 1
	
	tIntegralAuctionNpc_GlobalData["Crowd"] = {}
	
	--众筹宝箱所有id
	tIntegralAuctionNpc_GlobalData["Crowd"]["Total"] = {}
	tIntegralAuctionNpc_GlobalData["Crowd"]["Total"][1] = 51981
	
	--保存众筹宝箱的宝物
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"] = {}
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][1] = {}
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][1][1] = {}
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][1][1]["Id"] = 51981
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][1][1]["Pos"] = 0
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][1][2] = {}
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][1][2]["Id"] = 51981
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][1][2]["Pos"] = 1
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][1][3] = {}
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][1][3]["Id"] = 51981
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][1][3]["Pos"] = 2
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][2] = {}
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][2][1] = {}
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][2][1]["Id"] = 51981
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][2][1]["Pos"] = 3
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][2][2] = {}
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][2][2]["Id"] = 51981
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][2][2]["Pos"] = 4
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][2][3] = {}
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][2][3]["Id"] = 51981
	tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][2][3]["Pos"] = 5
	
	--保存银票抢购商品
	tIntegralAuctionNpc_GlobalData["Buy"] = {}
	--保存宝物id
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][1] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][1]["Id"] = 51982
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][1]["Pos"] = 0
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][2] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][2]["Id"] = 51982
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][2]["Pos"] = 1
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][3] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][3]["Id"] = 51982
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][3]["Pos"] = 2
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][4] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][4]["Id"] = 51982
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][4]["Pos"] = 3
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][5] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][5]["Id"] = 51982
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][5]["Pos"] = 4
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][6] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][6]["Id"] = 51982
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][6]["Pos"] = 5
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][7] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][7]["Id"] = 51983
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][7]["Pos"] = 0
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][8] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][8]["Id"] = 51983
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][8]["Pos"] = 1
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][9] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][9]["Id"] = 51983
	tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][9]["Pos"] = 2
	--保存宝物价格
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][1] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][1]["Id"] = 51983
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][1]["Pos"] = 3
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][2] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][2]["Id"] = 51983
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][2]["Pos"] = 4
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][3] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][3]["Id"] = 51983
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][3]["Pos"] = 5
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][4] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][4]["Id"] = 51984
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][4]["Pos"] = 0
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][5] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][5]["Id"] = 51984
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][5]["Pos"] = 1
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][6] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][6]["Id"] = 51984
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][6]["Pos"] = 2
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][7] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][7]["Id"] = 51984
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][7]["Pos"] = 3
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][8] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][8]["Id"] = 51984
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][8]["Pos"] = 4
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][9] = {}
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][9]["Id"] = 51984
	tIntegralAuctionNpc_GlobalData["Buy"]["Price"][9]["Pos"] = 5
	
--竞拍宝箱索引
local tIntegralAuctionNpc_AuctionIndex = {}

--竞拍宝箱投注表
local tIntegralAuctionNpc_AuctionBox = {}
	tIntegralAuctionNpc_AuctionBox[1] = {}
	tIntegralAuctionNpc_AuctionBox[1][1] = {}
	tIntegralAuctionNpc_AuctionBox[2] = {}
	tIntegralAuctionNpc_AuctionBox[2][1] = {}
	tIntegralAuctionNpc_AuctionBox[3] = {}
	tIntegralAuctionNpc_AuctionBox[3][1] = {}
	tIntegralAuctionNpc_AuctionBox[4] = {}
	tIntegralAuctionNpc_AuctionBox[4][1] = {}
	tIntegralAuctionNpc_AuctionBox[5] = {}
	tIntegralAuctionNpc_AuctionBox[5][1] = {}
	tIntegralAuctionNpc_AuctionBox[6] = {}
	tIntegralAuctionNpc_AuctionBox[6][1] = {}
	
--竞拍预测表
local tIntegralAuctionNpc_AuctionGuess = {}
	tIntegralAuctionNpc_AuctionGuess[1] = {}
	tIntegralAuctionNpc_AuctionGuess[2] = {}
	tIntegralAuctionNpc_AuctionGuess[3] = {}
	tIntegralAuctionNpc_AuctionGuess[4] = {}
	tIntegralAuctionNpc_AuctionGuess[5] = {}
--特惠宝箱投注表
local tIntegralAuctionNpc_SecondBox = {}
	tIntegralAuctionNpc_SecondBox[1] = {}
	tIntegralAuctionNpc_SecondBox[1][1] = {}
	tIntegralAuctionNpc_SecondBox[2] = {}
	tIntegralAuctionNpc_SecondBox[2][1] = {}
	tIntegralAuctionNpc_SecondBox[3] = {}
	tIntegralAuctionNpc_SecondBox[3][1] = {}
	tIntegralAuctionNpc_SecondBox[4] = {}
	tIntegralAuctionNpc_SecondBox[4][1] = {}
	tIntegralAuctionNpc_SecondBox[5] = {}
	tIntegralAuctionNpc_SecondBox[5][1] = {}
	
--众筹宝箱投注表
local tIntegralAuctionNpc_CrowdBox = {}
	tIntegralAuctionNpc_CrowdBox[1] = {}
	tIntegralAuctionNpc_CrowdBox[1][1] = {}
	tIntegralAuctionNpc_CrowdBox[1][2] = {}
	tIntegralAuctionNpc_CrowdBox[1][3] = {}
	tIntegralAuctionNpc_CrowdBox[2] = {}
	tIntegralAuctionNpc_CrowdBox[2][1] = {}
	tIntegralAuctionNpc_CrowdBox[2][2] = {}
	tIntegralAuctionNpc_CrowdBox[2][3] = {}
	
--众筹获奖信息表
local tIntegralAuctionNpc_CrowdBoxInfo = {}
	tIntegralAuctionNpc_CrowdBoxInfo[1] = {}
	tIntegralAuctionNpc_CrowdBoxInfo[2] = {}
	
--提交全部银票气力表
local tIntegralAuctionNpc_Strength = {}
	
--保存玩家退还的票数
local tIntegralAuctionNpc_ReturnTicket = {}
	tIntegralAuctionNpc_ReturnTicket["AuctionSilver"] = {}
	tIntegralAuctionNpc_ReturnTicket["AuctionGold"] = {}
	tIntegralAuctionNpc_ReturnTicket["Second"] = {}
	
--二进制对应值
local tIntegralAuctionNpc_ParseNumber = {}
	tIntegralAuctionNpc_ParseNumber[1] = 1
	tIntegralAuctionNpc_ParseNumber[2] = 2
	tIntegralAuctionNpc_ParseNumber[3] = 4
	tIntegralAuctionNpc_ParseNumber[4] = 8
	tIntegralAuctionNpc_ParseNumber[5] = 16
	tIntegralAuctionNpc_ParseNumber[6] = 32
	tIntegralAuctionNpc_ParseNumber[7] = 64
	tIntegralAuctionNpc_ParseNumber[8] = 128
	tIntegralAuctionNpc_ParseNumber[9] = 256
	tIntegralAuctionNpc_ParseNumber[10] = 512
	
local tIntegralAuctionNpc_Reward = {}
	--积分奖励配置
	tIntegralAuctionNpc_Reward["Score"] = {}
	tIntegralAuctionNpc_Reward["Score"][1] = {}
	tIntegralAuctionNpc_Reward["Score"][1]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward["Score"][1]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward["Score"][1]["RewardItem"][1]["Id"] = 3009001
	tIntegralAuctionNpc_Reward["Score"][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tIntegralAuctionNpc_Reward["Score"][1]["LogId"] =12000963
	tIntegralAuctionNpc_Reward["Score"][2] = {}
	tIntegralAuctionNpc_Reward["Score"][2]["RewardStrengthValue"] = {}
	tIntegralAuctionNpc_Reward["Score"][2]["RewardStrengthValue"]["Value"] = 100
	tIntegralAuctionNpc_Reward["Score"][2]["LogId"] =12000963
	tIntegralAuctionNpc_Reward["Score"][3] = {}
	tIntegralAuctionNpc_Reward["Score"][3]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward["Score"][3]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward["Score"][3]["RewardItem"][1]["Id"] = 3009001
	tIntegralAuctionNpc_Reward["Score"][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tIntegralAuctionNpc_Reward["Score"][3]["LogId"] =12000963
	tIntegralAuctionNpc_Reward["Score"][4] = {}
	tIntegralAuctionNpc_Reward["Score"][4]["RewardStrengthValue"] = {}
	tIntegralAuctionNpc_Reward["Score"][4]["RewardStrengthValue"]["Value"] = 800
	tIntegralAuctionNpc_Reward["Score"][4]["LogId"] =12000963
	--金票兑换银票奖励配置
	tIntegralAuctionNpc_Reward["Exchange"] = {}
	tIntegralAuctionNpc_Reward["Exchange"]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward["Exchange"]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward["Exchange"]["DeleteItem"][1]["Id"] = 3307043
	tIntegralAuctionNpc_Reward["Exchange"]["DeleteItem"][1]["ItemNum"] = 1
	tIntegralAuctionNpc_Reward["Exchange"]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward["Exchange"]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward["Exchange"]["RewardItem"][1]["Id"] = 3307041
	tIntegralAuctionNpc_Reward["Exchange"]["RewardItem"][1]["Attr"] = "0 %d"
	tIntegralAuctionNpc_Reward["Exchange"]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward["Exchange"]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward["Exchange"]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward["Exchange"]["RewardNoNeedTip"] = 1
	tIntegralAuctionNpc_Reward["Exchange"]["LogId"] = 12000963
	--金票兑换修行值奖励配置
	tIntegralAuctionNpc_Reward[3307043] = {}
	tIntegralAuctionNpc_Reward[3307043]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3307043]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3307043]["DeleteItem"][1]["Id"] = 3307043
	tIntegralAuctionNpc_Reward[3307043]["DeleteItem"][1]["ItemNum"] = 1
	tIntegralAuctionNpc_Reward[3307043]["RewardCultivation"] = {}
	tIntegralAuctionNpc_Reward[3307043]["RewardCultivation"]["Value"] = 1
	tIntegralAuctionNpc_Reward[3307043]["LogId"] = 12000963
	--银票兑换修行值奖励配置
	tIntegralAuctionNpc_Reward[3307041] = {}
	tIntegralAuctionNpc_Reward[3307041]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3307041]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3307041]["DeleteItem"][1]["Id"] = 3307041
	tIntegralAuctionNpc_Reward[3307041]["DeleteItem"][1]["ItemNum"] = 100
	tIntegralAuctionNpc_Reward[3307041]["RewardCultivation"] = {}
	tIntegralAuctionNpc_Reward[3307041]["RewardCultivation"]["Value"] = 1
	tIntegralAuctionNpc_Reward[3307041]["LogId"] = 12000963
	
	tIntegralAuctionNpc_Reward["Return"] = {}
	--收回拍卖行银票
	tIntegralAuctionNpc_Reward["Return"][3307041] = {}
	tIntegralAuctionNpc_Reward["Return"][3307041]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward["Return"][3307041]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward["Return"][3307041]["RewardItem"][1]["Id"] = 3307041
	tIntegralAuctionNpc_Reward["Return"][3307041]["RewardItem"][1]["Attr"] = "0 1"
	tIntegralAuctionNpc_Reward["Return"][3307041]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward["Return"][3307041]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward["Return"][3307041]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward["Return"][3307041]["LogId"] = 12000963
	--收回拍卖行金票
	tIntegralAuctionNpc_Reward["Return"][3307043] = {}
	tIntegralAuctionNpc_Reward["Return"][3307043]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward["Return"][3307043]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward["Return"][3307043]["RewardItem"][1]["Id"] = 3307043
	tIntegralAuctionNpc_Reward["Return"][3307043]["RewardItem"][1]["Attr"] = "0 1"
	tIntegralAuctionNpc_Reward["Return"][3307043]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward["Return"][3307043]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward["Return"][3307043]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward["Return"][3307043]["LogId"] = 12000963
	--回收日兑换气力
	tIntegralAuctionNpc_Reward["Recycle"] = {}
	tIntegralAuctionNpc_Reward["Recycle"]["RewardStrengthValue"] = {}
	tIntegralAuctionNpc_Reward["Recycle"]["RewardStrengthValue"]["Value"] = 0
	tIntegralAuctionNpc_Reward["Recycle"]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward["Recycle"]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward["Recycle"]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward["Recycle"]["LogId"] = 12000963
	tIntegralAuctionNpc_Reward["Recycle"]["LogStep"] = "1[6]"
	--抢购商人处抢购物品配置
	tIntegralAuctionNpc_Reward["Buy"] = {}
	tIntegralAuctionNpc_Reward["Buy"]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward["Buy"]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward["Buy"]["DeleteItem"][1]["Id"] = 3307041
	tIntegralAuctionNpc_Reward["Buy"]["DeleteItem"][1]["ItemNum"] = 1
	tIntegralAuctionNpc_Reward["Buy"]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward["Buy"]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward["Buy"]["RewardItem"][1]["Id"] = 0
	tIntegralAuctionNpc_Reward["Buy"]["RewardItem"][1]["Attr"] = "0 1"
	tIntegralAuctionNpc_Reward["Buy"]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward["Buy"]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward["Buy"]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward["Buy"]["LogId"] = 12000963
	--掉落银票
	tIntegralAuctionNpc_Reward["DropTicket"] = {}
	tIntegralAuctionNpc_Reward["DropTicket"]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward["DropTicket"]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward["DropTicket"]["RewardItem"][1]["Id"] = 3307041
	tIntegralAuctionNpc_Reward["DropTicket"]["RewardItem"][1]["Attr"] = "0 1"
	tIntegralAuctionNpc_Reward["DropTicket"]["LogId"] = 12000963
	--掉落银票交易券
	tIntegralAuctionNpc_Reward["DropDealTicket"] = {}
	tIntegralAuctionNpc_Reward["DropDealTicket"]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward["DropDealTicket"]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward["DropDealTicket"]["RewardItem"][1]["Id"] = 3307042
	tIntegralAuctionNpc_Reward["DropDealTicket"]["RewardItem"][1]["Attr"] = "0 1"
	tIntegralAuctionNpc_Reward["DropDealTicket"]["LogId"] = 12000963
	--掉落金票
	tIntegralAuctionNpc_Reward["DropGoldTicket"] = {}
	tIntegralAuctionNpc_Reward["DropGoldTicket"]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward["DropGoldTicket"]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward["DropGoldTicket"]["RewardItem"][1]["Id"] = 3307043
	tIntegralAuctionNpc_Reward["DropGoldTicket"]["RewardItem"][1]["Attr"] = "0 1"
	tIntegralAuctionNpc_Reward["DropGoldTicket"]["LogId"] = 12000963
	
	--50000修为值包
	tIntegralAuctionNpc_Reward[3311278] = {}
	tIntegralAuctionNpc_Reward[3311278]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311278]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311278]["DeleteItem"][1]["Id"] = 3311278
	tIntegralAuctionNpc_Reward[3311278]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311278]["RewardRepairValue"]["Value"] = 50000
	tIntegralAuctionNpc_Reward[3311278]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311278]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311278]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311278]["LogId"] = 12000963
	--15000点气力值包
	tIntegralAuctionNpc_Reward[3311279] = {}
	tIntegralAuctionNpc_Reward[3311279]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311279]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311279]["DeleteItem"][1]["Id"] = 3311279
	tIntegralAuctionNpc_Reward[3311279]["RewardStrengthValue"] = {}
	tIntegralAuctionNpc_Reward[3311279]["RewardStrengthValue"]["Value"] = 15000
	tIntegralAuctionNpc_Reward[3311279]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311279]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311279]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311279]["LogId"] = 12000963
	--万能神纹精粹*30
	tIntegralAuctionNpc_Reward[3311280] = {}
	tIntegralAuctionNpc_Reward[3311280]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311280]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311280]["DeleteItem"][1]["Id"] = 3311280
	tIntegralAuctionNpc_Reward[3311280]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311280]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311280]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311280]["RewardItem"][1]["Attr"] = "0 30"
	tIntegralAuctionNpc_Reward[3311280]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311280]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311280]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311280]["LogId"] = 12000963
	--万能神纹精粹*100
	tIntegralAuctionNpc_Reward[3311281] = {}
	tIntegralAuctionNpc_Reward[3311281]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311281]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311281]["DeleteItem"][1]["Id"] = 3311281
	tIntegralAuctionNpc_Reward[3311281]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311281]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311281]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311281]["RewardItem"][1]["Attr"] = "0 100"
	tIntegralAuctionNpc_Reward[3311281]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311281]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311281]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311281]["LogId"] = 12000963
	--8000修为值包
	tIntegralAuctionNpc_Reward[3311282] = {}
	tIntegralAuctionNpc_Reward[3311282]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311282]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311282]["DeleteItem"][1]["Id"] = 3311282
	tIntegralAuctionNpc_Reward[3311282]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311282]["RewardRepairValue"]["Value"] = 8000
	tIntegralAuctionNpc_Reward[3311282]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311282]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311282]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311282]["LogId"] = 12000963
	--1500修为值包
	tIntegralAuctionNpc_Reward[3311283] = {}
	tIntegralAuctionNpc_Reward[3311283]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311283]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311283]["DeleteItem"][1]["Id"] = 3311283
	tIntegralAuctionNpc_Reward[3311283]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311283]["RewardRepairValue"]["Value"] = 1500
	tIntegralAuctionNpc_Reward[3311283]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311283]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311283]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311283]["LogId"] = 12000963
	--免费修炼丹包
	tIntegralAuctionNpc_Reward[3311284] = {}
	tIntegralAuctionNpc_Reward[3311284]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311284]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311284]["DeleteItem"][1]["Id"] = 3311284
	tIntegralAuctionNpc_Reward[3311284]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311284]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311284]["RewardItem"][1]["Id"] = 3002926
	tIntegralAuctionNpc_Reward[3311284]["RewardItem"][1]["Attr"] = "0 10"
	tIntegralAuctionNpc_Reward[3311284]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311284]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311284]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311284]["LogId"] = 12000963
	--岫山玉包
	tIntegralAuctionNpc_Reward[3311285] = {}
	tIntegralAuctionNpc_Reward[3311285]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311285]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311285]["DeleteItem"][1]["Id"] = 3311285
	tIntegralAuctionNpc_Reward[3311285]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311285]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311285]["RewardItem"][1]["Id"] = 3008221
	tIntegralAuctionNpc_Reward[3311285]["RewardItem"][1]["Attr"] = "0 10"
	tIntegralAuctionNpc_Reward[3311285]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311285]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311285]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311285]["LogId"] = 12000963
	--50修为值包
	tIntegralAuctionNpc_Reward[3311300] = {}
	tIntegralAuctionNpc_Reward[3311300]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311300]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311300]["DeleteItem"][1]["Id"] = 3311300
	tIntegralAuctionNpc_Reward[3311300]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311300]["RewardRepairValue"]["Value"] = 50
	tIntegralAuctionNpc_Reward[3311300]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311300]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311300]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311300]["LogId"] = 12000963
	--150修为值包
	tIntegralAuctionNpc_Reward[3311301] = {}
	tIntegralAuctionNpc_Reward[3311301]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311301]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311301]["DeleteItem"][1]["Id"] = 3311301
	tIntegralAuctionNpc_Reward[3311301]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311301]["RewardRepairValue"]["Value"] = 150
	tIntegralAuctionNpc_Reward[3311301]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311301]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311301]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311301]["LogId"] = 12000963
	--200修为值包
	tIntegralAuctionNpc_Reward[3311302] = {}
	tIntegralAuctionNpc_Reward[3311302]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311302]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311302]["DeleteItem"][1]["Id"] = 3311302
	tIntegralAuctionNpc_Reward[3311302]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311302]["RewardRepairValue"]["Value"] = 200
	tIntegralAuctionNpc_Reward[3311302]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311302]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311302]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311302]["LogId"] = 12000963
	--300修为值包
	tIntegralAuctionNpc_Reward[3311303] = {}
	tIntegralAuctionNpc_Reward[3311303]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311303]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311303]["DeleteItem"][1]["Id"] = 3311303
	tIntegralAuctionNpc_Reward[3311303]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311303]["RewardRepairValue"]["Value"] = 300
	tIntegralAuctionNpc_Reward[3311303]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311303]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311303]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311303]["LogId"] = 12000963
	--450修为值包
	tIntegralAuctionNpc_Reward[3311304] = {}
	tIntegralAuctionNpc_Reward[3311304]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311304]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311304]["DeleteItem"][1]["Id"] = 3311304
	tIntegralAuctionNpc_Reward[3311304]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311304]["RewardRepairValue"]["Value"] = 450
	tIntegralAuctionNpc_Reward[3311304]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311304]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311304]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311304]["LogId"] = 12000963
	--600修为值包
	tIntegralAuctionNpc_Reward[3311305] = {}
	tIntegralAuctionNpc_Reward[3311305]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311305]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311305]["DeleteItem"][1]["Id"] = 3311305
	tIntegralAuctionNpc_Reward[3311305]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311305]["RewardRepairValue"]["Value"] = 600
	tIntegralAuctionNpc_Reward[3311305]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311305]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311305]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311305]["LogId"] = 12000963
	--1000修为值包
	tIntegralAuctionNpc_Reward[3311306] = {}
	tIntegralAuctionNpc_Reward[3311306]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311306]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311306]["DeleteItem"][1]["Id"] = 3311306
	tIntegralAuctionNpc_Reward[3311306]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311306]["RewardRepairValue"]["Value"] = 1000
	tIntegralAuctionNpc_Reward[3311306]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311306]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311306]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311306]["LogId"] = 12000963
	--2000修为值包
	tIntegralAuctionNpc_Reward[3311307] = {}
	tIntegralAuctionNpc_Reward[3311307]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311307]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311307]["DeleteItem"][1]["Id"] = 3311307
	tIntegralAuctionNpc_Reward[3311307]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311307]["RewardRepairValue"]["Value"] = 2000
	tIntegralAuctionNpc_Reward[3311307]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311307]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311307]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311307]["LogId"] = 12000963
	--3600修为值包
	tIntegralAuctionNpc_Reward[3311308] = {}
	tIntegralAuctionNpc_Reward[3311308]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311308]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311308]["DeleteItem"][1]["Id"] = 3311308
	tIntegralAuctionNpc_Reward[3311308]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311308]["RewardRepairValue"]["Value"] = 3600
	tIntegralAuctionNpc_Reward[3311308]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311308]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311308]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311308]["LogId"] = 12000963
	--4000修为值包
	tIntegralAuctionNpc_Reward[3311309] = {}
	tIntegralAuctionNpc_Reward[3311309]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311309]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311309]["DeleteItem"][1]["Id"] = 3311309
	tIntegralAuctionNpc_Reward[3311309]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311309]["RewardRepairValue"]["Value"] = 4000
	tIntegralAuctionNpc_Reward[3311309]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311309]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311309]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311309]["LogId"] = 12000963
	--6000修为值包
	tIntegralAuctionNpc_Reward[3311310] = {}
	tIntegralAuctionNpc_Reward[3311310]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311310]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311310]["DeleteItem"][1]["Id"] = 3311310
	tIntegralAuctionNpc_Reward[3311310]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311310]["RewardRepairValue"]["Value"] = 6000
	tIntegralAuctionNpc_Reward[3311310]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311310]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311310]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311310]["LogId"] = 12000963
	--7500修为值包
	tIntegralAuctionNpc_Reward[3311311] = {}
	tIntegralAuctionNpc_Reward[3311311]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311311]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311311]["DeleteItem"][1]["Id"] = 3311311
	tIntegralAuctionNpc_Reward[3311311]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311311]["RewardRepairValue"]["Value"] = 7500
	tIntegralAuctionNpc_Reward[3311311]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311311]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311311]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311311]["LogId"] = 12000963
	--15000修为值包
	tIntegralAuctionNpc_Reward[3311312] = {}
	tIntegralAuctionNpc_Reward[3311312]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311312]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311312]["DeleteItem"][1]["Id"] = 3311312
	tIntegralAuctionNpc_Reward[3311312]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311312]["RewardRepairValue"]["Value"] = 15000
	tIntegralAuctionNpc_Reward[3311312]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311312]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311312]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311312]["LogId"] = 12000963
	--75000修为值包
	tIntegralAuctionNpc_Reward[3311313] = {}
	tIntegralAuctionNpc_Reward[3311313]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311313]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311313]["DeleteItem"][1]["Id"] = 3311313
	tIntegralAuctionNpc_Reward[3311313]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311313]["RewardRepairValue"]["Value"] = 75000
	tIntegralAuctionNpc_Reward[3311313]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311313]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311313]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311313]["LogId"] = 12000963
	--500修为值包
	tIntegralAuctionNpc_Reward[3311336] = {}
	tIntegralAuctionNpc_Reward[3311336]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311336]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311336]["DeleteItem"][1]["Id"] = 3311336
	tIntegralAuctionNpc_Reward[3311336]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311336]["RewardRepairValue"]["Value"] = 500
	tIntegralAuctionNpc_Reward[3311336]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311336]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311336]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311336]["LogId"] = 12000963
	--3000修为值包
	tIntegralAuctionNpc_Reward[3311337] = {}
	tIntegralAuctionNpc_Reward[3311337]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311337]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311337]["DeleteItem"][1]["Id"] = 3311337
	tIntegralAuctionNpc_Reward[3311337]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311337]["RewardRepairValue"]["Value"] = 3000
	tIntegralAuctionNpc_Reward[3311337]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311337]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311337]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311337]["LogId"] = 12000963
	--5000修为值包
	tIntegralAuctionNpc_Reward[3311338] = {}
	tIntegralAuctionNpc_Reward[3311338]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311338]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311338]["DeleteItem"][1]["Id"] = 3311338
	tIntegralAuctionNpc_Reward[3311338]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311338]["RewardRepairValue"]["Value"] = 5000
	tIntegralAuctionNpc_Reward[3311338]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311338]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311338]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311338]["LogId"] = 12000963
	--10000修为值包
	tIntegralAuctionNpc_Reward[3311339] = {}
	tIntegralAuctionNpc_Reward[3311339]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311339]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311339]["DeleteItem"][1]["Id"] = 3311339
	tIntegralAuctionNpc_Reward[3311339]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311339]["RewardRepairValue"]["Value"] = 10000
	tIntegralAuctionNpc_Reward[3311339]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311339]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311339]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311339]["LogId"] = 12000963
	--12000修为值包
	tIntegralAuctionNpc_Reward[3311340] = {}
	tIntegralAuctionNpc_Reward[3311340]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311340]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311340]["DeleteItem"][1]["Id"] = 3311340
	tIntegralAuctionNpc_Reward[3311340]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311340]["RewardRepairValue"]["Value"] = 12000
	tIntegralAuctionNpc_Reward[3311340]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311340]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311340]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311340]["LogId"] = 12000963
	--18000修为值包
	tIntegralAuctionNpc_Reward[3311341] = {}
	tIntegralAuctionNpc_Reward[3311341]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311341]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311341]["DeleteItem"][1]["Id"] = 3311341
	tIntegralAuctionNpc_Reward[3311341]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311341]["RewardRepairValue"]["Value"] = 18000
	tIntegralAuctionNpc_Reward[3311341]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311341]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311341]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311341]["LogId"] = 12000963
	--25000修为值包
	tIntegralAuctionNpc_Reward[3311342] = {}
	tIntegralAuctionNpc_Reward[3311342]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311342]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311342]["DeleteItem"][1]["Id"] = 3311342
	tIntegralAuctionNpc_Reward[3311342]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311342]["RewardRepairValue"]["Value"] = 25000
	tIntegralAuctionNpc_Reward[3311342]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311342]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311342]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311342]["LogId"] = 12000963
	--36000修为值包
	tIntegralAuctionNpc_Reward[3311343] = {}
	tIntegralAuctionNpc_Reward[3311343]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311343]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311343]["DeleteItem"][1]["Id"] = 3311343
	tIntegralAuctionNpc_Reward[3311343]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311343]["RewardRepairValue"]["Value"] = 36000
	tIntegralAuctionNpc_Reward[3311343]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311343]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311343]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311343]["LogId"] = 12000963
	--55000修为值包
	tIntegralAuctionNpc_Reward[3311344] = {}
	tIntegralAuctionNpc_Reward[3311344]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311344]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311344]["DeleteItem"][1]["Id"] = 3311344
	tIntegralAuctionNpc_Reward[3311344]["RewardRepairValue"] = {}
	tIntegralAuctionNpc_Reward[3311344]["RewardRepairValue"]["Value"] = 55000
	tIntegralAuctionNpc_Reward[3311344]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311344]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311344]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311344]["LogId"] = 12000963
	--5个万能神纹精粹包
	tIntegralAuctionNpc_Reward[3311345] = {}
	tIntegralAuctionNpc_Reward[3311345]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311345]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311345]["DeleteItem"][1]["Id"] = 3311345
	tIntegralAuctionNpc_Reward[3311345]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311345]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311345]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311345]["RewardItem"][1]["Attr"] = "0 5"
	tIntegralAuctionNpc_Reward[3311345]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311345]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311345]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311345]["LogId"] = 12000963
	--15个万能神纹精粹包
	tIntegralAuctionNpc_Reward[3311346] = {}
	tIntegralAuctionNpc_Reward[3311346]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311346]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311346]["DeleteItem"][1]["Id"] = 3311346
	tIntegralAuctionNpc_Reward[3311346]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311346]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311346]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311346]["RewardItem"][1]["Attr"] = "0 15"
	tIntegralAuctionNpc_Reward[3311346]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311346]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311346]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311346]["LogId"] = 12000963
	--50个万能神纹精粹包
	tIntegralAuctionNpc_Reward[3311347] = {}
	tIntegralAuctionNpc_Reward[3311347]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311347]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311347]["DeleteItem"][1]["Id"] = 3311347
	tIntegralAuctionNpc_Reward[3311347]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311347]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311347]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311347]["RewardItem"][1]["Attr"] = "0 50"
	tIntegralAuctionNpc_Reward[3311347]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311347]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311347]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311347]["LogId"] = 12000963
	--150个万能神纹精粹包
	tIntegralAuctionNpc_Reward[3311348] = {}
	tIntegralAuctionNpc_Reward[3311348]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311348]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311348]["DeleteItem"][1]["Id"] = 3311348
	tIntegralAuctionNpc_Reward[3311348]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311348]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311348]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311348]["RewardItem"][1]["Attr"] = "0 150"
	tIntegralAuctionNpc_Reward[3311348]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311348]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311348]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311348]["LogId"] = 12000963
	--300个万能神纹精粹包
	tIntegralAuctionNpc_Reward[3311349] = {}
	tIntegralAuctionNpc_Reward[3311349]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311349]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311349]["DeleteItem"][1]["Id"] = 3311349
	tIntegralAuctionNpc_Reward[3311349]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311349]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311349]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311349]["RewardItem"][1]["Attr"] = "0 300"
	tIntegralAuctionNpc_Reward[3311349]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311349]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311349]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311349]["LogId"] = 12000963
	--500个万能神纹精粹包
	tIntegralAuctionNpc_Reward[3311350] = {}
	tIntegralAuctionNpc_Reward[3311350]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311350]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311350]["DeleteItem"][1]["Id"] = 3311350
	tIntegralAuctionNpc_Reward[3311350]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311350]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311350]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311350]["RewardItem"][1]["Attr"] = "0 500"
	tIntegralAuctionNpc_Reward[3311350]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311350]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311350]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311350]["LogId"] = 12000963
	--1000个万能神纹精粹包
	tIntegralAuctionNpc_Reward[3311351] = {}
	tIntegralAuctionNpc_Reward[3311351]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311351]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311351]["DeleteItem"][1]["Id"] = 3311351
	tIntegralAuctionNpc_Reward[3311351]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311351]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311351]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311351]["RewardItem"][1]["Attr"] = "0 1000"
	tIntegralAuctionNpc_Reward[3311351]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311351]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311351]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311351]["LogId"] = 12000963
	--1500个万能神纹精粹包
	tIntegralAuctionNpc_Reward[3311352] = {}
	tIntegralAuctionNpc_Reward[3311352]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311352]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311352]["DeleteItem"][1]["Id"] = 3311352
	tIntegralAuctionNpc_Reward[3311352]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311352]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311352]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311352]["RewardItem"][1]["Attr"] = "0 1500"
	tIntegralAuctionNpc_Reward[3311352]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311352]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311352]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311352]["LogId"] = 12000963
	--5星时装外套可选包
	tIntegralAuctionNpc_Reward[3311353] = {}
	tIntegralAuctionNpc_Reward[3311353][1] = {}
	tIntegralAuctionNpc_Reward[3311353][1]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311353][1]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311353][1]["DeleteItem"][1]["Id"] = 3311353
	tIntegralAuctionNpc_Reward[3311353][1]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311353][1]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311353][1]["RewardItem"][1]["Id"] = 188915
	tIntegralAuctionNpc_Reward[3311353][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tIntegralAuctionNpc_Reward[3311353][1]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311353][1]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311353][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311353][1]["LogId"] = 12000963
	tIntegralAuctionNpc_Reward[3311353][2] = {}
	tIntegralAuctionNpc_Reward[3311353][2]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311353][2]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311353][2]["DeleteItem"][1]["Id"] = 3311353
	tIntegralAuctionNpc_Reward[3311353][2]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311353][2]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311353][2]["RewardItem"][1]["Id"] = 189065
	tIntegralAuctionNpc_Reward[3311353][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tIntegralAuctionNpc_Reward[3311353][2]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311353][2]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311353][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311353][2]["LogId"] = 12000963
	--5星坐骑外套可选包
	tIntegralAuctionNpc_Reward[3311354] = {}
	tIntegralAuctionNpc_Reward[3311354][1] = {}
	tIntegralAuctionNpc_Reward[3311354][1]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311354][1]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311354][1]["DeleteItem"][1]["Id"] = 3311354
	tIntegralAuctionNpc_Reward[3311354][1]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311354][1]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311354][1]["RewardItem"][1]["Id"] = 200524
	tIntegralAuctionNpc_Reward[3311354][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tIntegralAuctionNpc_Reward[3311354][1]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311354][1]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311354][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311354][1]["LogId"] = 12000963
	tIntegralAuctionNpc_Reward[3311354][2] = {}
	tIntegralAuctionNpc_Reward[3311354][2]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311354][2]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311354][2]["DeleteItem"][1]["Id"] = 3311354
	tIntegralAuctionNpc_Reward[3311354][2]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311354][2]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311354][2]["RewardItem"][1]["Id"] = 200517
	tIntegralAuctionNpc_Reward[3311354][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tIntegralAuctionNpc_Reward[3311354][2]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311354][2]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311354][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311354][2]["LogId"] = 12000963
	tIntegralAuctionNpc_Reward[3311354][3] = {}
	tIntegralAuctionNpc_Reward[3311354][3]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311354][3]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311354][3]["DeleteItem"][1]["Id"] = 3311354
	tIntegralAuctionNpc_Reward[3311354][3]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311354][3]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311354][3]["RewardItem"][1]["Id"] = 200531
	tIntegralAuctionNpc_Reward[3311354][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tIntegralAuctionNpc_Reward[3311354][3]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311354][3]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311354][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311354][3]["LogId"] = 12000963
	--大明通宝
	tIntegralAuctionNpc_Reward[3311372] = {}
	tIntegralAuctionNpc_Reward[3311372]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311372]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311372]["DeleteItem"][1]["Id"] = 3311372
	tIntegralAuctionNpc_Reward[3311372]["DeleteItem"][1]["ItemNum"] = 1
	tIntegralAuctionNpc_Reward[3311372]["RewardStrengthValue"] = {}
	tIntegralAuctionNpc_Reward[3311372]["RewardStrengthValue"]["Value"] = 2
	tIntegralAuctionNpc_Reward[3311372]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311372]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311372]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311372]["LogId"] = 12000963
	--250个万能神纹精粹包
	tIntegralAuctionNpc_Reward[3311386] = {}
	tIntegralAuctionNpc_Reward[3311386]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311386]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311386]["DeleteItem"][1]["Id"] = 3311386
	tIntegralAuctionNpc_Reward[3311386]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311386]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311386]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311386]["RewardItem"][1]["Attr"] = "0 250"
	tIntegralAuctionNpc_Reward[3311386]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311386]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311386]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311386]["LogId"] = 12000963
	--600个万能神纹精粹包
	tIntegralAuctionNpc_Reward[3311387] = {}
	tIntegralAuctionNpc_Reward[3311387]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311387]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311387]["DeleteItem"][1]["Id"] = 3311387
	tIntegralAuctionNpc_Reward[3311387]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311387]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311387]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311387]["RewardItem"][1]["Attr"] = "0 600"
	tIntegralAuctionNpc_Reward[3311387]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311387]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311387]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311387]["LogId"] = 12000963
	--3个万能神纹精粹包
	tIntegralAuctionNpc_Reward[3311388] = {}
	tIntegralAuctionNpc_Reward[3311388]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311388]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311388]["DeleteItem"][1]["Id"] = 3311388
	tIntegralAuctionNpc_Reward[3311388]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311388]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311388]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311388]["RewardItem"][1]["Attr"] = "0 3"
	tIntegralAuctionNpc_Reward[3311388]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311388]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311388]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311388]["LogId"] = 12000963
	--10个万能神纹精粹包
	tIntegralAuctionNpc_Reward[3311389] = {}
	tIntegralAuctionNpc_Reward[3311389]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311389]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311389]["DeleteItem"][1]["Id"] = 3311389
	tIntegralAuctionNpc_Reward[3311389]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311389]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311389]["RewardItem"][1]["Id"] = 4060001
	tIntegralAuctionNpc_Reward[3311389]["RewardItem"][1]["Attr"] = "0 10"
	tIntegralAuctionNpc_Reward[3311389]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311389]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311389]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311389]["LogId"] = 12000963
	--10个大明通宝包
	tIntegralAuctionNpc_Reward[3311429] = {}
	tIntegralAuctionNpc_Reward[3311429]["EMoneyCost"] = 10
	tIntegralAuctionNpc_Reward[3311429]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311429]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311429]["DeleteItem"][1]["Id"] = 3311429
	tIntegralAuctionNpc_Reward[3311429]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311429]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311429]["RewardItem"][1]["Id"] = 3311372
	tIntegralAuctionNpc_Reward[3311429]["RewardItem"][1]["Attr"] = "0 10"
	tIntegralAuctionNpc_Reward[3311429]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311429]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311429]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311429]["LogId"] = 12000963
	--100个大明通宝包
	tIntegralAuctionNpc_Reward[3311430] = {}
	tIntegralAuctionNpc_Reward[3311430]["EMoneyCost"] = 99
	tIntegralAuctionNpc_Reward[3311430]["DeleteItem"] = {}
	tIntegralAuctionNpc_Reward[3311430]["DeleteItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311430]["DeleteItem"][1]["Id"] = 3311430
	tIntegralAuctionNpc_Reward[3311430]["RewardItem"] = {}
	tIntegralAuctionNpc_Reward[3311430]["RewardItem"][1] = {}
	tIntegralAuctionNpc_Reward[3311430]["RewardItem"][1]["Id"] = 3311372
	tIntegralAuctionNpc_Reward[3311430]["RewardItem"][1]["Attr"] = "0 100"
	tIntegralAuctionNpc_Reward[3311430]["RewardEffect"] = {}
	tIntegralAuctionNpc_Reward[3311430]["RewardEffect"]["SzObj"] = "self"
	tIntegralAuctionNpc_Reward[3311430]["RewardEffect"]["Effect"] = "zf2-e128"
	tIntegralAuctionNpc_Reward[3311430]["LogId"] = 12000963
	
---------------------------------------------逻辑模块---------------------------------------------
--二进制掩码设置
function IntegralAuctionNpc_SetParseNumber(sIndex, nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nParse = tIntegralAuctionNpc_ParseNumber[nIndex]
	
	local nEvent = tIntegralAuctionNpc_Stc[sIndex]["Event"]
	local nType = tIntegralAuctionNpc_Stc[sIndex]["Type"]
	local nSave = tIntegralAuctionNpc_Stc[sIndex]["Save"]
	local nDelay = tIntegralAuctionNpc_Stc[sIndex]["Delay"]
	local nTimeType = tIntegralAuctionNpc_Stc[sIndex]["TimeType"]
	
	--置零，打时间戳
	Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	
	return Task_AddStatistic(nEvent,nType,nParse,nSave,nUserId)
end

--二进制掩码判断
function IntegralAuctionNpc_IsGetParseNumber(sIndex, nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nParse = tIntegralAuctionNpc_ParseNumber[nIndex]
	
	local nEvent = tIntegralAuctionNpc_Stc[sIndex]["Event"]
	local nType = tIntegralAuctionNpc_Stc[sIndex]["Type"]
	local nDelay = tIntegralAuctionNpc_Stc[sIndex]["Delay"]
	local nTimeType = tIntegralAuctionNpc_Stc[sIndex]["TimeType"]
	
	--置零，打时间戳
	Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if Sys_ParseNumbersContain(nParse,nData) then
		return true
	else
		return false
	end
end

--奋斗服判断
function IntegralAuctionNpc_StriveServer()
	local nGlobalId = tIntegralAuctionNpc_Cont["GlobalId"]
	
	if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
		return true
	else
		return false
	end
end

--竞拍积分奖励
function IntegralAuctionNpc_ScoreAward()
	--时间检测
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	local nEvent = tIntegralAuctionNpc_Stc["Score"]["Event"]
	local nType = tIntegralAuctionNpc_Stc["Score"]["Type"]
	local nDelay = tIntegralAuctionNpc_Stc["Score"]["Delay"]
	local nTimeType = tIntegralAuctionNpc_Stc["Score"]["TimeType"]
	
	--置零，打时间戳
	Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	
	--获取当前积分
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	--显示积分
	tNpcGossip[nNpcId]["Text2110"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text2110"], nData)
	
	local nIndex = 0
	
	local nLeft = tIntegralAuctionNpc_Cont["Align"]["Hand"]["Left"]
	local nMiddle = tIntegralAuctionNpc_Cont["Align"]["Hand"]["Middle"]
	
	--选项显示是否已领取
	for i = 1, #tIntegralAuctionNpc_Cont["Score"] do
		local sAlreadyGet = ""
		
		if IntegralAuctionNpc_IsGetParseNumber("ScoreAward", i, nUserId) then
			sAlreadyGet = tIntegralAuctionNpc_Text["AlreadyGet"]
			nIndex = i
		end
		
		local nNum = tIntegralAuctionNpc_Cont["Score"][i]
		local sAwardName = tIntegralAuctionNpc_Text["ScoreAward"][i]
		
		local sTotal = Sys_CenterAline(tostring(nNum),nLeft,sAwardName..sAlreadyGet,nMiddle)
		
		tNpcGossip[nNpcId]["Text21"..(i + 3)] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text21"..(i + 3)], sTotal)
	end
	
	local nTotalNum = tIntegralAuctionNpc_Cont["Score"][#tIntegralAuctionNpc_Cont["Score"]]
	local nNextNum = tIntegralAuctionNpc_Cont["Score"][nIndex + 1] or 0
	
	local nAllNum = nTotalNum - (tIntegralAuctionNpc_Cont["Score"][nIndex] or 0)
	local nCurNum = nNextNum - (tIntegralAuctionNpc_Cont["Score"][nIndex] or 0)
	
	tNpcGossip[nNpcId]["tOption2-1"] = {}
	
	--当前可上交的最低一档银票数
	if nCurNum > 0 then
		tNpcGossip[nNpcId]["Option211"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Option211"], nNextNum)
		table.insert(tNpcGossip[nNpcId]["tOption2-1"], 211)
	end
	
	--当前可上交的最大银票数
	if nAllNum > 0 and nCurNum ~= nAllNum then
		tNpcGossip[nNpcId]["Option212"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Option212"], nTotalNum)
		table.insert(tNpcGossip[nNpcId]["tOption2-1"], 212)
	end
	
	if next(tNpcGossip[nNpcId]["tOption2-1"]) == nil then
		table.insert(tNpcGossip[nNpcId]["tOption2-1"], 213)
	end
	
	LinkNpcGossipFunc_New(nNpcId, "2-1")
end

--领取积分奖励
function IntegralAuctionNpc_GetScoreAward(nFlag)
	--时间检测
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	local nEvent = tIntegralAuctionNpc_Stc["Score"]["Event"]
	local nType = tIntegralAuctionNpc_Stc["Score"]["Type"]
	local nDelay = tIntegralAuctionNpc_Stc["Score"]["Delay"]
	local nTimeType = tIntegralAuctionNpc_Stc["Score"]["TimeType"]
	
	--置零，打时间戳
	Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	
	--获取当前积分
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	local nIndex = 0
	
	local nTotalIndex =  #tIntegralAuctionNpc_Cont["Score"]
	
	for i = 1, nTotalIndex do
		if nData >= tIntegralAuctionNpc_Cont["Score"][i] then
			nIndex = i
		end
	end
	
	nIndex = nIndex + 1
	
	if tIntegralAuctionNpc_Cont["Score"][nIndex] == nil then
		return
	end
	
	--当前需要的累计积分
	local nScore = tIntegralAuctionNpc_Cont["Score"][nIndex]
	
	--保存所有可领的奖励索引
	local tAwardIndex = {}
	
	--上交最大银票数，领取全部奖励
	if nFlag == nil then
		nScore = tIntegralAuctionNpc_Cont["Score"][nTotalIndex]
		
		for i = 1, nTotalIndex do
			if not IntegralAuctionNpc_IsGetParseNumber("ScoreAward", i, nUserId) then
				table.insert(tAwardIndex, i)
			end
		end
		
	--上交当前银票数，领取当前奖励
	else
		table.insert(tAwardIndex, nIndex)
	end
	
	--当前可以获取下一阶段奖励的积分，即银票数量
	local nCurNum = nScore - nData
	
	local nItemTypeId = tIntegralAuctionNpc_Item["SilverTicket"]
	
	--银票数量不够
	if not Item_ChkMulItem(nItemTypeId,nItemTypeId,nCurNum) then
		tNpcGossip[nNpcId]["Text311"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text311"], nCurNum, nScore)
		LinkNpcGossipFunc_New(nNpcId, "3-1")
		return
	end
	
	--已领奖
	if IntegralAuctionNpc_IsGetParseNumber("ScoreAward", nIndex, nUserId) then
		tNpcGossip[nNpcId]["Text321"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text321"], nScore)
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end
	
	--保存总共的奖励
	local tAwardTotal = {}
	
	--保存总共的背包空间
	local nSpace = 0
	
	for k,v in pairs(tAwardIndex) do
		if tIntegralAuctionNpc_Reward["Score"][v] ~= nil then
			nSpace = nSpace + RewardTemplate_GetRewardSpace(tIntegralAuctionNpc_Reward["Score"][v],nUserId)
			tAwardTotal[v] = CommonFunc_Copy(tIntegralAuctionNpc_Reward["Score"][v])
		else
			tAwardTotal[v] = {}
		end
	end
	
	--背包空间判断
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		tNpcGossip[nNpcId]["Text331"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text331"], nSpace, nScore)
		LinkNpcGossipFunc_New(nNpcId, "3-3")
		return
	end
	
	--扣除物品
	if not Item_DelMulItem(nItemTypeId,nItemTypeId,nCurNum) then
		tNpcGossip[nNpcId]["Text311"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text311"], nCurNum)
		LinkNpcGossipFunc_New(nNpcId, "3-1")
		return
	end
	
	--扣除物品log
	Sys_SaveActionRewardLog(string.format(tIntegralAuctionNpc_Log["DelItem"], nItemTypeId, nCurNum))
	
	Task_AddStatistic(nEvent,nType,nCurNum,1,nUserId)
	
	for k,v in pairs(tAwardTotal) do
		--置掩码
		if IntegralAuctionNpc_SetParseNumber("ScoreAward", k, nUserId) then
			--给普通奖励
			if next(v) ~= nil then
				RewardTemplate_UseItemAndMsg(v,nUserId)
			end
			
			--给特殊奖励(特权之类的，只有置掩码)
			if tIntegralAuctionNpc_Cont["Index"][k] ~= nil then
				local nAwardIndex = tIntegralAuctionNpc_Cont["Index"][k]
				
				IntegralAuctionNpc_SetParseNumber("ScoreAward", nAwardIndex, nUserId)
			end
		end
	end
	
	--以下为给提示逻辑
	
	if nFlag == nil then
		local sTotalText = ""
		
		for k,v in pairs(tAwardIndex) do
			sTotalText = sTotalText..tIntegralAuctionNpc_Text["Enter"]..tIntegralAuctionNpc_Text["ScoreAward"][v]
		end
		
		tNpcGossip[nNpcId]["Text352"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text352"], tIntegralAuctionNpc_Cont["Score"][nTotalIndex], sTotalText)
		LinkNpcGossipFunc_New(nNpcId, "3-5")
	else
		--不是最后一阶段奖励
		if nIndex ~= nTotalIndex then
			local nNextScore = tIntegralAuctionNpc_Cont["Score"][nIndex + 1]
			tNpcGossip[nNpcId]["Text342"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text342"], nScore, tIntegralAuctionNpc_Text["ScoreAward"][nIndex])
			tNpcGossip[nNpcId]["Text343"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text343"], nNextScore, tIntegralAuctionNpc_Text["ScoreAward"][nIndex + 1])
			
			LinkNpcGossipFunc_New(nNpcId, "3-4")
		--是最后一次
		else
			tNpcGossip[nNpcId]["Text352"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text352"], nScore, tIntegralAuctionNpc_Text["ScoreAward"][nIndex])
			LinkNpcGossipFunc_New(nNpcId, "3-5")
		end
	end
end

--显示当前时段可兑换的银票数量
function IntegralAuctionNpc_DisplayExchangeNum()
	--时间检测
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ReturnTime"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nNpcId = Get_NpcId()
	local nGlobalId = tIntegralAuctionNpc_GlobalData["Exchange"]["Id"]
	local nPos = tIntegralAuctionNpc_GlobalData["Exchange"]["Pos"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	--没有信息，则重新刷新
	if nGlobalData <= 0 then
		IntegralAuctionNpc_ExChangeTicketNum()
		nGlobalData = Get_SysDynaGlobalData(nGlobalId,nPos)
	end
	
	tNpcGossip[nNpcId]["Text223"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text223"], nGlobalData)
	
	LinkNpcGossipFunc_New(nNpcId, "2-2")
end

--收回拍卖行银票或金票
function IntegralAuctionNpc_BackTicket(nItemTypeId)
	--时间检测
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	
	--保存掩码总数
	local tStc = CommonFunc_Copy(tIntegralAuctionNpc_Cont["Return"][nItemTypeId])
	
	--对白索引
	local nIndex = tIntegralAuctionNpc_Cont["ReturnIndex"][nItemTypeId]
	
	--先把临时表数据存到玩家身上
	for k,v in pairs(tStc) do
		local nEvent = tIntegralAuctionNpc_Stc[v]["Event"]
		local nType = tIntegralAuctionNpc_Stc[v]["Type"]
		
		local nTicket = tIntegralAuctionNpc_ReturnTicket[v][nUserId] or 0
		
		if nTicket > 0 then
			--先把临时表的数据清除
			tIntegralAuctionNpc_ReturnTicket[v][nUserId] = nil
			
			--添加到玩家掩码
			Task_AddStatistic(nEvent,nType,nTicket,1,nUserId)
		end
	end
	
	--进行对白判断
	for k,v in pairs(tStc) do
		local nEvent = tIntegralAuctionNpc_Stc[v]["Event"]
		local nType = tIntegralAuctionNpc_Stc[v]["Type"]
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		tNpcGossip[nNpcId]["Text2"..nIndex..(k + 2)] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text2"..nIndex..(k + 2)], nData)
	end
	
	LinkNpcGossipFunc_New(nNpcId, "2-"..nIndex)
end

--确认收回银票
function IntegralAuctionNpc_ConfirmBackTicket(nItemTypeId)
	--时间检测
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	
	--保存可收回的票总数
	local nTotalNum = 0
	
	--保存掩码总数
	local tStc = CommonFunc_Copy(tIntegralAuctionNpc_Cont["Return"][nItemTypeId])
	
	for k,v in pairs(tStc) do
		local nEvent = tIntegralAuctionNpc_Stc[v]["Event"]
		local nType = tIntegralAuctionNpc_Stc[v]["Type"]
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		nTotalNum = nTotalNum + nData
	end
	
	local sTicketName = tIntegralAuctionNpc_Text["TicketName"][nItemTypeId]
	
	--没有可收回的票
	if nTotalNum == 0 then
		tNpcGossip[nNpcId]["Text371"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text371"], sTicketName)
		LinkNpcGossipFunc_New(nNpcId, "3-7")
		return
	end
	
	local tAward = CommonFunc_Copy(tIntegralAuctionNpc_Reward["Return"][nItemTypeId])
	
	tAward["RewardItem"][1]["Attr"] = "0 "..nTotalNum
	tAward["Talk"] = string.format(tIntegralAuctionNpc_Text["Channel2005"]["Return"], nTotalNum, sTicketName)
	
	--空间不足
	if not RewardTemplate_CheckSpace(tAward) then
		LinkNpcGossipFunc_New(nNpcId, "3-8")
		return
	end
	
	--掩码操作
	for k,v in pairs(tStc) do
		local nEvent = tIntegralAuctionNpc_Stc[v]["Event"]
		local nType = tIntegralAuctionNpc_Stc[v]["Type"]
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		if nData > 0 then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
		end
	end
	
	--给奖
	RewardTemplate_UseItem(tAward)
end

--金票兑换银票
function IntegralAuctionNpc_GoldToSilverTicket(nNum)
	--时间检测
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ReturnTime"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nNpcId = Get_NpcId()
	local nItemTypeId = tIntegralAuctionNpc_Item["GoldTicket"]
	
	--检查有没有金票
	if not Item_ChkItem(nItemTypeId) then
		LinkNpcGossipFunc_New(nNpcId, "3-6")
		return
	end
	
	local nItemNum = 0
	
	if nNum ~= nil then
		nItemNum = nNum
	else
		nItemNum = Get_CountItemType(nItemTypeId,0)
	end
	
	local tAward = CommonFunc_Copy(tIntegralAuctionNpc_Reward["Exchange"])
	local nGlobalId = tIntegralAuctionNpc_GlobalData["Exchange"]["Id"]
	local nPos = tIntegralAuctionNpc_GlobalData["Exchange"]["Pos"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	if nGlobalData <= 0 then
		return
	end
	
	local nExchangeNum = nGlobalData * nItemNum
	
	tAward["RewardItem"][1]["Attr"] = string.format(tAward["RewardItem"][1]["Attr"], nExchangeNum)
	tAward["DeleteItem"][1]["ItemNum"] = nItemNum
	
	--兑换
	local bFlag = RewardTemplate_UseItem(tAward)
	
	--兑换成功后提示
	if bFlag then
		User_TalkChannel2005(string.format(tIntegralAuctionNpc_Text["Channel2005"]["ExchangeSuc"], nExchangeNum))
	end
end

--回收日
function IntegralAuctionNpc_Recycle(nItemTypeId)
	--时间检测
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ReturnTime"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	--获取物品个数
	local nItemNum = Get_CountItemType(nItemTypeId,0)
	local nNpcId = Get_NpcId()
	
	--背包没有可回收的物品
	if nItemNum <= 0 then
		LinkNpcGossipFunc_New(nNpcId, "2-6")
		return
	end
	
	--扣除物品
	if not Item_DelMulItem(nItemTypeId,nItemTypeId,nItemNum) then
		LinkNpcGossipFunc_New(nNpcId, "2-6")
		return
	end
	
	--扣除物品log
	Sys_SaveActionRewardLog(string.format(tIntegralAuctionNpc_Log["DelItem"], nItemTypeId, nItemNum))
	
	--置掩码
	local nUserId = Get_UserId()
	local nEvent = tIntegralAuctionNpc_Stc["Recycle"]["Event"]
	local nType = tIntegralAuctionNpc_Stc["Recycle"]["Type"]
	
	Task_AddStatistic(nEvent,nType,nItemNum,1,nUserId)
	
	--置全服动态码
	local nGlobalId = tIntegralAuctionNpc_GlobalData["Recycle"]["Id"]
	local nPos = tIntegralAuctionNpc_GlobalData["Recycle"]["Pos"]
	
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	--上交后总票数
	local nAddData = nData + nItemNum
	
	Sys_SetSynaGlobalData(nGlobalId,nPos,nAddData)
	
	--加入提交全部银票气力表
	table.insert(tIntegralAuctionNpc_Strength, nUserId)
	
	--提示
	User_TalkChannel2005(string.format(tIntegralAuctionNpc_Text["Channel2005"]["RecycleHand"], nItemNum, nAddData))
end

--上交银票数量获取
function IntegralAuctionNpc_GetRecycle(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tIntegralAuctionNpc_Stc["Recycle"]["Event"]
	local nType = tIntegralAuctionNpc_Stc["Recycle"]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	local nGlobalId = tIntegralAuctionNpc_GlobalData["Recycle"]["Id"]
	local nPos = tIntegralAuctionNpc_GlobalData["Recycle"]["Pos"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	local nTotal = tIntegralAuctionNpc_Cont["TotalStrength"]
	local nStrength = math.floor(nData * nTotal / nGlobalData + 0.5)
	local nPercent = math.floor(nData * 100 / nGlobalData + 0.5)
	
	return nData, nGlobalData, nStrength, nPercent
end

--领取气力值奖励
function IntegralAuctionNpc_GetRecycleAward(nIndex)
	local nUserId = Get_UserId()
	
	local nNpcId = 0
	
	if nIndex == nil then
		nNpcId = Get_NpcId()
	end
	
	if nNpcId > 0 then
		--时间检测
		if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["MainNpcTime"]) then
			User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
			return
		end
	end
	
	local nEvent = tIntegralAuctionNpc_Stc["GetStrength"]["Event"]
	local nType = tIntegralAuctionNpc_Stc["GetStrength"]["Type"]
	local nStrengthData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	local nData, nGlobalData, nStrength, nPercent = IntegralAuctionNpc_GetRecycle()
	
	--已领取或无可领取气力
	if nStrengthData > 0 or nData <= 0 then
		if nNpcId > 0 then
			LinkNpcGossipFunc_New(nNpcId, "2-7")
		end
		
		if nIndex ~= nil then
			Sys_MsgBox(tIntegralAuctionNpc_Text["MsgBox"]["NoStrength"])
		end
		return
	end
	
	--置掩码
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	
	--给奖
	local tAward = CommonFunc_Copy(tIntegralAuctionNpc_Reward["Recycle"])
	
	tAward["RewardStrengthValue"]["Value"] = nStrength
	
	if nIndex ~= nil then
		tAward["DeleteItem"] = {}
		tAward["DeleteItem"][1] = {}
		tAward["DeleteItem"][1]["Id"] = nIndex
		tAward["Talk"] = string.format(tIntegralAuctionNpc_Text["Channel2005"]["GetStrength"], nData, nPercent, nStrength)
	end
	
	RewardTemplate_UseItemAndMsg(tAward,nUserId)
end

--金票银票兑换修行值
function IntegralAuctionNpc_ExChangeCultivation(nItemTypeId)
	--时间检测
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["MainNpcTime"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	if tIntegralAuctionNpc_Reward[nItemTypeId] == nil then
		return
	end
	
	local nNpcId = Get_NpcId()
	local tAward = CommonFunc_Copy(tIntegralAuctionNpc_Reward[nItemTypeId])
	local nNum = tAward["DeleteItem"][1]["ItemNum"]
	
	--判断数量是否足够
	if not Item_ChkMulItem(nItemTypeId,nItemTypeId,nNum) then
		local sItemName = Get_ItemtypeName(nItemTypeId)
		tNpcGossip[nNpcId]["Text231"] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text231"], sItemName)
		LinkNpcGossipFunc_New(nNpcId, "2-3")
		return
	end
	
	RewardTemplate_UseItemAndMsg(tAward)
end

--竞拍宝箱对白显示
function IntegralAuctionNpc_AuctionChk()
	local nNpcId = Get_NpcId()
	local nInitNpcId = tIntegralAuctionNpc_Cont["NpcId"]["Auction"]
	local nIndex = nNpcId - tIntegralAuctionNpc_Cont["AuctionDiff"]
	--判断是几号宝箱
	local sAuctionBox = tIntegralAuctionNpc_Text["AuctionBox"][nNpcId]
	--判断是什么宝箱
	local sAuctionName = tIntegralAuctionNpc_Text["AuctionName"][nNpcId]
	
	local nNum = 0
	
	tNpcGossip[nNpcId]["Text111"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text111"], sAuctionBox)
	tNpcGossip[nNpcId]["Text117"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text117"], sAuctionName)
	tNpcGossip[nNpcId]["Text118"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text118"], sAuctionName)
	
	for i = 1, tIntegralAuctionNpc_Cont["Tier"]["Auction"] do
		local sTotal = ""
		
		--获取动态码上的宝物信息
		local nTreasureGlobalId = tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][nIndex][i]["Id"]
		local nTreasurePos = tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][nIndex][i]["Pos"]
		local nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
		--获取价格信息
		local nPrice = 0
		
		local sItemName = ""
		
		if nTreasureGlobalData <= 0 then
			--动态码上没有宝物信息，重新刷新
			IntegralAuctionNpc_AuctionUpdate("Auction")
			--重新获取
			nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
		end
		
		if nTreasureGlobalData > 0 then
			sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
			
			--宝物数量
			nNum = tIntegralAuctionNpc_Item["Num"][nTreasureGlobalData]
			
			--显示宝物数量，名字
			local sBoxInfo = nNum..tIntegralAuctionNpc_Text["Part"]..sItemName
			local nLeft = tIntegralAuctionNpc_Cont["Align"]["Auction"]["Left"]
			local nMiddle = tIntegralAuctionNpc_Cont["Align"]["Auction"]["Middle"]
			
			--显示最低得手标价
			if tIntegralAuctionNpc_AuctionBox[nIndex][i][nNum] ~= nil then
				nPrice = tIntegralAuctionNpc_AuctionBox[nIndex][i][nNum]["Price"]
			else
				nPrice = 0
			end
			
			sTotal = Sys_CenterAline(sBoxInfo,nLeft,nPrice..sAuctionName,nMiddle)
		end
		
		tNpcGossip[nNpcId]["Text11"..(i + 4)] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text11"..(i + 4)], sTotal)
		tNpcGossip[nNpcId]["Option11"..i] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Option11"..i], sItemName)
	end
	
	if nNum == 1 then
		tNpcGossip[nNpcId]["Text119"] = tIntegralAuctionNpc_Text[nInitNpcId]["Text1110"]
	else
		tNpcGossip[nNpcId]["Text119"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text119"], nNum)
	end
	
	tNpcGossip[nNpcId]["tOption1-1"] = {}
	
	local nUserId = Get_UserId()
	local nLevel = tIntegralAuctionNpc_Cont["Level"]
	local nMetempsychosis = tIntegralAuctionNpc_Cont["Metempsychosis"]
	
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 114)
	elseif not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 115)
	else
		if Sys_ChkDayTime(tIntegralAuctionNpc_Time["AuctionBefore"]) then
			table.insert(tNpcGossip[nNpcId]["tOption1-1"], 113)
		elseif Sys_ChkDayTime(tIntegralAuctionNpc_Time["AuctionCan"]) then
			table.insert(tNpcGossip[nNpcId]["tOption1-1"], 111)
		else
			table.insert(tNpcGossip[nNpcId]["tOption1-1"], 114)
		end
		
		if Sys_ChkDayTime(tIntegralAuctionNpc_Time["AuctionForecast"]) then
			table.insert(tNpcGossip[nNpcId]["tOption1-1"], 112)
		end
	end
	
	return true
end

--次高价宝箱对白显示
function IntegralAuctionNpc_SecondChk()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nInitNpcId = tIntegralAuctionNpc_Cont["NpcId"]["Second"]
	local nIndex = nNpcId - tIntegralAuctionNpc_Cont["SecondDiff"]
	
	local sAuctionName = tIntegralAuctionNpc_Text["AuctionName"][nNpcId]
	
	tNpcGossip[nNpcId]["Text111"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text111"], nIndex)
	
	for i = 1, tIntegralAuctionNpc_Cont["Tier"]["Second"] do
		local sTotal = ""
		
		--获取动态码上的宝物信息
		local nTreasureGlobalId = tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][nIndex][i]["Id"]
		local nTreasurePos = tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][nIndex][i]["Pos"]
		local nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
		--获取动态码上的最高价格信息
		-- local nPriceGlobalId = tIntegralAuctionNpc_GlobalData["Second"]["Price"][nIndex][i]["Id"]
		-- local nPricePos = tIntegralAuctionNpc_GlobalData["Second"]["Price"][nIndex][i]["Pos"]
		-- local nPriceGlobalData = Get_SysDynaGlobalData(nPriceGlobalId,nPricePos)
		--获取动态码上的次高价格信息
		-- local nSecondPriceGlobalId = tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][nIndex][i]["Id"]
		-- local nSecondPricePos = tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][nIndex][i]["Pos"]
		-- local nSecondPriceData = Get_SysDynaGlobalData(nSecondPriceGlobalId,nSecondPricePos)
		--获取个人投注
		local nEvent = tIntegralAuctionNpc_Stc["SecondBox"][nIndex][i]["Event"]
		local nType = tIntegralAuctionNpc_Stc["SecondBox"][nIndex][i]["Type"]
		
		--置零，打时间戳
		Task_StcReset(nEvent,nType,nUserId)
		
		local nStcData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		local sItemName = ""
		
		if nTreasureGlobalData <= 0 then
			--动态码上没有宝物信息，重新刷新
			IntegralAuctionNpc_AuctionUpdate("Second")
			--重新获取
			nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
		end
		
		if nTreasureGlobalData > 0 then
			sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
			local nLeft = tIntegralAuctionNpc_Cont["Align"]["Second"]["Left"]
			local nMiddle = tIntegralAuctionNpc_Cont["Align"]["Second"]["Middle"]
			
			sTotal = Sys_CenterAline(sItemName,nLeft,nStcData..sAuctionName,nMiddle)
		end
		
		tNpcGossip[nNpcId]["Text11"..(i + 4)] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text11"..(i + 4)], sTotal)
		tNpcGossip[nNpcId]["Option11"..i] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Option11"..i], sItemName)
	end
	
	tNpcGossip[nNpcId]["tOption1-1"] = {}
	
	local nUserId = Get_UserId()
	local nLevel = tIntegralAuctionNpc_Cont["Level"]
	local nMetempsychosis = tIntegralAuctionNpc_Cont["Metempsychosis"]
	
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 114)
	elseif not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 115)
	elseif Sys_ChkDayTime(tIntegralAuctionNpc_Time["AuctionBefore"]) then
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 113)
	elseif Sys_ChkDayTime(tIntegralAuctionNpc_Time["SecondCan"]) then
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 111)
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 112)
	else
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 114)
	end
	
	return true
end

--众筹宝箱对白显示（开奖前）
function IntegralAuctionNpc_CrowdChk1()
	local nNpcId = Get_NpcId()
	local nInitNpcId = tIntegralAuctionNpc_Cont["NpcId"]["Crowd"]
	local sBoxName = tIntegralAuctionNpc_Text["AuctionName"][nNpcId]
	local nIndex = nNpcId - tIntegralAuctionNpc_Cont["CrowdDiff"]
	
	tNpcGossip[nNpcId]["Text111"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text111"], sBoxName)
	
	local nLeft = tIntegralAuctionNpc_Cont["Align"]["Crowd"]["Left"]
	local nMiddle = tIntegralAuctionNpc_Cont["Align"]["Crowd"]["Middle"]
	
	for i = 1, tIntegralAuctionNpc_Cont["Tier"]["Crowd"] do
		--获取动态码上的宝物信息
		local nTreasureGlobalId = tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][nIndex][i]["Id"]
		local nTreasurePos = tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][nIndex][i]["Pos"]
		local nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
		
		local sItemName = ""
		local sItemNameAdd = ""
		--宝物数量
		local nNum = 0
		
		if nTreasureGlobalData <= 0 then
			--动态码上没有宝物信息，重新刷新
			IntegralAuctionNpc_AuctionUpdate("Crowd")
			--重新获取
			nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
		end
		
		if nTreasureGlobalData > 0 then
			sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
			nNum = tIntegralAuctionNpc_Item["Num"][nTreasureGlobalData]
			sItemNameAdd = nNum..tIntegralAuctionNpc_Text["Part"]..sItemName
		end
		
		--众筹人数
		local nPeopleNum = 0
		
		if next(tIntegralAuctionNpc_CrowdBox[nIndex][i]) ~= nil then
			for k,v in pairs(tIntegralAuctionNpc_CrowdBox[nIndex][i]) do
				nPeopleNum = nPeopleNum + 1
			end
		end
		
		local sCrowdAwardNum = tIntegralAuctionNpc_Text["CrowdAwardNumNo"]
		
		if nPeopleNum > 0 then
			sCrowdAwardNum = string.format(tIntegralAuctionNpc_Text["CrowdAwardNum"], nPeopleNum)
		end
		
		local sTotal = Sys_CenterAline(sItemNameAdd,nLeft,sCrowdAwardNum,nMiddle)
		
		tNpcGossip[nNpcId]["Text11"..(i + 4)] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text11"..(i + 4)], sTotal)
		
		tNpcGossip[nNpcId]["Option11"..i] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Option11"..i], sItemName)
	end
	
	--不在众筹时间
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		return false
	end
	
	--众筹时间已过
	if not Sys_ChkDayTime(tIntegralAuctionNpc_Time["AuctionBefore"]) and not Sys_ChkDayTime(tIntegralAuctionNpc_Time["CrowdCan"]) then
		return false
	end
	
	local nUserId = Get_UserId()
	local nLevel = tIntegralAuctionNpc_Cont["Level"]
	local nMetempsychosis = tIntegralAuctionNpc_Cont["Metempsychosis"]
	local bFlag = false
	local nAwardId = 0
	
	--在众筹投注表中判断是否投过
	for k,v in pairs(tIntegralAuctionNpc_CrowdBox[nIndex]) do
		if next(v) ~= nil and v[nUserId] ~= nil then
			bFlag = true
			nAwardId = v[nUserId]["Item"]
			break
		end
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
		tNpcGossip[nNpcId]["tOption1-1"] = {117}
	--众筹未开始
	elseif Sys_ChkDayTime(tIntegralAuctionNpc_Time["AuctionBefore"]) then
		tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
		tNpcGossip[nNpcId]["tOption1-1"] = {115}
	--判断是不是投过
	elseif bFlag then
		local sAwardName = tIntegralAuctionNpc_Text["ItemName"][nAwardId] or Get_ItemtypeName(nAwardId)
		local sAwardNameText = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text1111"], sAwardName)
		
		tNpcGossip[nNpcId]["Text1111"] = tIntegralAuctionNpc_Text["Enter"]..sAwardNameText
		tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1111}
		tNpcGossip[nNpcId]["tOption1-1"] = {116,114}
	else
		local nItemNum = tIntegralAuctionNpc_Cont["NPCItem"][nNpcId]["Num"]
		
		tNpcGossip[nNpcId]["Text1110"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text1110"], nItemNum, sBoxName)
		tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110}
		tNpcGossip[nNpcId]["tOption1-1"] = {111,112,113,114}
	end
	
	return true
end

--众筹宝箱对白显示（开奖后）
function IntegralAuctionNpc_CrowdChk2()
	if Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		if Sys_ChkDayTime(tIntegralAuctionNpc_Time["AuctionBefore"]) or Sys_ChkDayTime(tIntegralAuctionNpc_Time["CrowdCan"]) then
			return false
		end
	end
	
	local nNpcId = Get_NpcId()
	local nInitNpcId = tIntegralAuctionNpc_Cont["NpcId"]["Crowd"]
	local nIndex = nNpcId - tIntegralAuctionNpc_Cont["CrowdDiff"]
	local sBoxName = tIntegralAuctionNpc_Text["AuctionName"][nNpcId]
	
	tNpcGossip[nNpcId]["Text121"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text121"], sBoxName)
	
	--执行开奖逻辑
	IntegralAuctionNpc_CrowdOpen()
	
	--保存临时奖励表
	local tAward = {}
	
	if next(tIntegralAuctionNpc_CrowdBoxInfo[nIndex]) ~= nil then
		for k,v in pairs(tIntegralAuctionNpc_CrowdBoxInfo[nIndex]) do
			local tTemp = {}
			tTemp["Name"] = k
			tTemp["Item"] = v
			
			table.insert(tAward, tTemp)
		end
	end
	
	local nTotalRank = tIntegralAuctionNpc_Cont["TotalRank"]
	
	for i = 1, nTotalRank do
		if tAward[i] == nil then
			tNpcGossip[nNpcId]["Text12"..(i + 3)] = ""
		else
			local sItemName = ""
			
			if tAward[i]["Item"] > 0 then
				sItemName = tIntegralAuctionNpc_Text["ItemName"][tAward[i]["Item"]] or Get_ItemtypeName(tAward[i]["Item"])
			end
			
			local sTotal = string.format(tIntegralAuctionNpc_Text["CrowdAward"], tAward[i]["Name"], sItemName)
			
			tNpcGossip[nNpcId]["Text12"..(i + 3)] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text12"..(i + 3)], sTotal)
		end
	end
	
	--无人获奖
	if next(tAward) == nil then
		tNpcGossip[nNpcId]["Text124"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text124"], tIntegralAuctionNpc_Text["CrowdAwardNull"])
	end
	
	return true
end

--沈万商对白显示
function IntegralAuctionNpc_BuyChk()
	local nNpcId = Get_NpcId()
	
	local tBoxAwardName = {}
	
	for k,v in pairs(tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"]) do
		--获取动态码上的宝物信息
		local nTreasureGlobalData = Get_SysDynaGlobalData(v["Id"],v["Pos"])
		--获取动态码上的宝物价格
		local nPriceGlobalId = tIntegralAuctionNpc_GlobalData["Buy"]["Price"][k]["Id"]
		local nPricePos = tIntegralAuctionNpc_GlobalData["Buy"]["Price"][k]["Pos"]
		local nPriceGlobalData = Get_SysDynaGlobalData(nPriceGlobalId,nPricePos)
		
		--没有宝物信息，刷新
		if nTreasureGlobalData <= 0 then
			IntegralAuctionNpc_BuyBoxRefrash()
			nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
		end
		
		local sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
		
		local tItemAttr = {}
		
		for k,v in pairs(tIntegralAuctionNpc_Item["Buy"]) do
			if nTreasureGlobalData == v["Id"] then
				tItemAttr = Sys_Split(v["Attr"]," ")
				if tonumber(tItemAttr[2]) > 1 then
					sItemName = sItemName.."*"..tItemAttr[2]
				end
				break
			end
		end
		
		tBoxAwardName[k] = {}
		tBoxAwardName[k]["Item"] = sItemName
		tBoxAwardName[k]["Price"] = nPriceGlobalData
	end
	
	local nLeft = tIntegralAuctionNpc_Cont["Align"]["Buy"]["Left"]
	local nMiddle = tIntegralAuctionNpc_Cont["Align"]["Buy"]["Middle"]
	local nRight = tIntegralAuctionNpc_Cont["Align"]["Buy"]["Right"]
	
	local sTotal = ""
	
	local nTier = tIntegralAuctionNpc_Cont["Tier"]["Buy"]
	
	for i = 1, nTier do
		sTotal = Sys_CenterAline(tBoxAwardName[nTier * i - 2]["Item"],nLeft,tBoxAwardName[nTier * i - 1]["Item"],nMiddle,tBoxAwardName[nTier * i]["Item"],nRight)
		
		tNpcGossip[nNpcId]["Text11"..(i + 3)] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text11"..(i + 3)], sTotal)
	end
	
	tNpcGossip[nNpcId]["tOption1-1"] = {}
	
	local nUserId = Get_UserId()
	local nLevel = tIntegralAuctionNpc_Cont["Level"]
	local nMetempsychosis = tIntegralAuctionNpc_Cont["Metempsychosis"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		tNpcGossip[nNpcId]["tOption1-1"] = {1111}
		return true
	end
	
	for i = 1, #tBoxAwardName do
		if tBoxAwardName[i]["Price"] > 0 then
			tNpcGossip[nNpcId]["Option11"..i] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Option11"..i], tBoxAwardName[i]["Item"], tBoxAwardName[i]["Price"])
			table.insert(tNpcGossip[nNpcId]["tOption1-1"], 110 + i)
		end
	end
	
	if next(tNpcGossip[nNpcId]["tOption1-1"]) == nil then
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 1110)
	end
	
	return true
end

--竞拍投注宝物
function IntegralAuctionNpc_EditTreasureBet(nTreasureIndex, nGuess)
	--时间检测
	if not Sys_ChkFullTime(tActivityTime["DoubleEleven2018"]["ActTime"]) or not Sys_ChkDayTime(tIntegralAuctionNpc_Time["AuctionCan"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nInitNpcId = tIntegralAuctionNpc_Cont["NpcId"]["Auction"]
	local nIndex = nNpcId - tIntegralAuctionNpc_Cont["AuctionDiff"]
	local sAuctionName = tIntegralAuctionNpc_Text["AuctionName"][nNpcId] or ""
	
	local bFlag = false
	
	--新增沈管家判断
	if nNpcId == 23500 then
		nIndex = nTreasureIndex
		nTreasureIndex = 1
		nInitNpcId = nNpcId
		bFlag = true
	end
	
	--获取动态码上的宝物信息
	local nTreasureGlobalId = tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][nIndex][nTreasureIndex]["Id"]
	local nTreasurePos = tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][nIndex][nTreasureIndex]["Pos"]
	local nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
	
	local nNum = 0
	local sItemName = ""
	
	--宝物数量和名字
	if nTreasureGlobalData > 0 then
		nNum = tIntegralAuctionNpc_Item["Num"][nTreasureGlobalData]
		sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
	end
	
	--猜测最高成交价格
	if nGuess ~= nil then
		--获取当前总成交价
		local nTotalPrice = 0
		
		if next(tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex]) ~= nil then
			for k,v in pairs(tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex]) do
				nTotalPrice = nTotalPrice + v["Price"]
			end
		end
		
		local sAuctionBox = tIntegralAuctionNpc_Text["AuctionBox"][nNpcId]
		
		--已经预测过了
		if tIntegralAuctionNpc_AuctionGuess[nIndex][nUserId] ~= nil then
			local nGuessPrice = tIntegralAuctionNpc_AuctionGuess[nIndex][nUserId]
			
			tNpcGossip[nNpcId]["Text241"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text241"], sAuctionBox, nGuessPrice, sAuctionName)
			tNpcGossip[nNpcId]["Text242"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text242"], sAuctionBox, nTotalPrice, sAuctionName)
			
			LinkNpcGossipFunc_New(nNpcId, "2-4")
			return
		end
		
		Sys_DialogText(string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text231"], sAuctionBox, nNum))
		Sys_DialogText(tIntegralAuctionNpc_Text[nInitNpcId]["Text232"])
		Sys_DialogText(string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text233"], nTotalPrice, sAuctionName))
		
		Sys_DialogOptEdit("",tIntegralAuctionNpc_Cont["Edit"],"IntegralAuctionNpc_TreasureGuess")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	else
		local sTotal = ""
		local nPrice = 0
		local sUserName = tIntegralAuctionNpc_Text["Null"]
		
		local nLeft = tIntegralAuctionNpc_Cont["Align"]["AuctionRank"]["Left"]
		local nMiddle = tIntegralAuctionNpc_Cont["Align"]["AuctionRank"]["Middle"]
		local nRight = tIntegralAuctionNpc_Cont["Align"]["AuctionRank"]["Right"]
		
		--宝物多于1个
		if nNum > 1 then
			--保存自己的排名信息
			local sOwnRank = tIntegralAuctionNpc_Text["Null"]
			local sOwnPrice = tIntegralAuctionNpc_Text["NullNum"]
			--总共可显示排名数
			local nTotalRank = tIntegralAuctionNpc_Cont["TotalRank"]
			--实际总排名数
			local nMaxRank = #tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex]
			
			if next(tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex]) ~= nil then
				for i = 1, nMaxRank do
					if nUserId == tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i]["Id"] then
						sOwnRank = tostring(i)
						sOwnPrice = tostring(tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i]["Price"])..sAuctionName
						break
					end
				end
			end
			
			if nNum > nTotalRank then
				sItemName = sItemName..tIntegralAuctionNpc_Text["AuctionMore"]
			end
			
			local sItemText = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text2214"], nNum, sItemName)
			
			if bFlag then
				sItemText = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text2214"], sItemName)
			end
			
			tNpcGossip[nNpcId]["Text2214"] = sItemText
			
			if sOwnRank == tIntegralAuctionNpc_Text["Null"] then
				tNpcGossip[nNpcId]["Text2215"] = ""
				tNpcGossip[nNpcId]["Option221"] = tIntegralAuctionNpc_Text[nInitNpcId]["Option221"]
				tNpcGossip[nNpcId]["Option222"] = tIntegralAuctionNpc_Text[nInitNpcId]["Option222"]
			else
				tNpcGossip[nNpcId]["Text2215"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text2215"], sOwnRank, sOwnPrice)
				tNpcGossip[nNpcId]["Option221"] = tIntegralAuctionNpc_Text["AuctionAddOption"]
				tNpcGossip[nNpcId]["Option222"] = tIntegralAuctionNpc_Text["AuctionAddOptionNo"]
			end
			
			--读取排行榜
			for i = 1, nTotalRank do
				nPrice = 0
				sUserName = tIntegralAuctionNpc_Text["Null"]
				local nNewRank = i
				
				--实际总排名数超出了可显示的排名数，需要调整，只显示前5和后5
				if nMaxRank > nTotalRank then
					--前5名不变，只显示后5名
					if nNewRank > tIntegralAuctionNpc_Cont["DiffRank"] then
						nNewRank = nNewRank + nMaxRank - nTotalRank
					end
				end
				
				--当前排名有信息
				if tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nNewRank] ~= nil then
					nPrice = tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nNewRank]["Price"] or 0
					sUserName = tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nNewRank]["Name"] or tIntegralAuctionNpc_Text["Null"]
				end
				
				if bFlag then
					sAuctionName = tIntegralAuctionNpc_Text["EMoney"]
				end
				
				local sPrice = tIntegralAuctionNpc_Text["Null"]
				
				if nPrice > 0 then
					sPrice = nPrice..sAuctionName
				end
				
				sTotal = Sys_CenterAline(tostring(nNewRank),nLeft,sPrice,nMiddle, sUserName, nRight)
				
				--第一名必须显示，其他的有排名信息才显示
				-- if i ~= 1 and nPrice == 0 then
					-- tNpcGossip[nNpcId]["Text22"..(i + 2)] = ""
				-- else
					tNpcGossip[nNpcId]["Text22"..(i + 2)] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text22"..(i + 2)], sTotal)
				-- end
			end
			
			LinkNpcGossipFunc_New(nNpcId, "2-2")
		--宝物就1个
		else
			if tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][1] ~= nil then
				nPrice = tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][1]["Price"] or 0
				sUserName = tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][1]["Name"] or tIntegralAuctionNpc_Text["Null"]
			end
			
			if bFlag then
				sAuctionName = tIntegralAuctionNpc_Text["EMoney"]
			end
			
			sTotal = Sys_CenterAline(sItemName,nLeft,nPrice..sAuctionName,nMiddle, sUserName, nRight)
			
			tNpcGossip[nNpcId]["Text213"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text213"], sTotal)
			
			if sUserName == Get_UserName(nUserId) then
				tNpcGossip[nNpcId]["Option211"] = tIntegralAuctionNpc_Text["AuctionAddOption"]
				tNpcGossip[nNpcId]["Option212"] = tIntegralAuctionNpc_Text["AuctionAddOptionNo"]
			else
				tNpcGossip[nNpcId]["Option211"] = tIntegralAuctionNpc_Text[nInitNpcId]["Option211"]
				tNpcGossip[nNpcId]["Option212"] = tIntegralAuctionNpc_Text[nInitNpcId]["Option212"]
			end
			
			LinkNpcGossipFunc_New(nNpcId, "2-1")
		end
		
		--保存玩家选择的宝物索引
		if bFlag then
			tIntegralAuctionNpc_AuctionIndex[nUserId] = nIndex
		else
			tIntegralAuctionNpc_AuctionIndex[nUserId] = nTreasureIndex
		end
	end
end

--我要投注
function IntegralAuctionNpc_ConfirmTreasureBet()
	--时间检测
	if not Sys_ChkFullTime(tActivityTime["DoubleEleven2018"]["ActTime"]) or not Sys_ChkDayTime(tIntegralAuctionNpc_Time["AuctionCan"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nUserId = Get_UserId()
	
	--玩家选择的宝物索引是否还存在
	if tIntegralAuctionNpc_AuctionIndex[nUserId] == nil then
		return
	end
	
	local nTreasureIndex = tIntegralAuctionNpc_AuctionIndex[nUserId]
	
	local nNpcId = Get_NpcId()
	local nInitNpcId = tIntegralAuctionNpc_Cont["NpcId"]["Auction"]
	local nIndex = nNpcId - tIntegralAuctionNpc_Cont["AuctionDiff"]
	local sAuctionName = tIntegralAuctionNpc_Text["AuctionName"][nNpcId] or ""
	
	local nNowIndex = nTreasureIndex
	
	--新增沈管家判断
	if nNpcId == 23500 then
		nIndex = nTreasureIndex
		nTreasureIndex = 1
		nInitNpcId = nNpcId
		sAuctionName = tIntegralAuctionNpc_Text["EMoney"]
	end
	
	--动态码上面的宝物信息
	local nTreasureGlobalId = tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][nIndex][nTreasureIndex]["Id"]
	local nTreasurePos = tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][nIndex][nTreasureIndex]["Pos"]
	local nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
	
	local nNum = 0
	local sItemName = ""
	--获取宝物底价
	local nLowPrice = 0
	local nPrice = 0
	
	if nTreasureGlobalData > 0 then
		nNum = tIntegralAuctionNpc_Item["Num"][nTreasureGlobalData]
		sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
		nLowPrice = tIntegralAuctionNpc_Item["LowPrice"][nTreasureGlobalData]
	end
	
	--判断榜中是否有自己
	local bFlag = false
	
	--保存第一名票数
	local nTopPrice = 0
	
	--保存排名
	local nRank = 0
	
	if next(tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex]) ~= nil then
		for k,v in pairs(tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex]) do
			if nUserId == v["Id"] then
				bFlag = true
				nPrice = v["Price"]
				nRank = k
				break
			end
		end
		
		--获取第一名票数
		if tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][1] ~= nil then
			nTopPrice = tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][1]["Price"]
		end
	end
	
	local tText = {}
	
	tText[1] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text311"], Sys_CenterAline(sItemName, 30))
	
	local sEdtFunc = string.format("IntegralAuctionNpc_TreasureBet</N>%d", nNowIndex)
	
	local tOption = {}
	local tOptionTemp = {}
	
	--保存需要投注的票数
	local nNeedPrice = 0
	
	--自己在排行榜内
	if bFlag then
		tText[2] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text314"], nPrice, sAuctionName)
		tText[3] = tIntegralAuctionNpc_Text[nInitNpcId]["Text315"]
		
		--自己不是第一
		if nRank ~= 1 then
			nNeedPrice = nTopPrice - nPrice + 1
			
			--如果投注后的值比底价还低，那就置为底价
			if nTopPrice + 1 < nLowPrice then
				nNeedPrice = nLowPrice - nPrice
			end
			
			--需要加注多少才能超过第一名
			tOptionTemp[1] = {}
			tOptionTemp[1]["Text"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Option311"], nNeedPrice, sAuctionName)
			tOptionTemp[1]["Option"] = string.format("</F>IntegralAuctionNpc_TreasureBet</N>%d</N>%d", nNowIndex, nNeedPrice)
			
			table.insert(tOption, tOptionTemp[1])
		end
	else
		--最低得手标价
		if tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nNum] ~= nil then
			nPrice = tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nNum]["Price"]
		else
			nPrice = 0
		end
		
		local nNowLowPrice = nPrice
		
		if nNowLowPrice < nLowPrice then
			nNowLowPrice = nLowPrice
		end
		
		tText[2] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text312"], nNowLowPrice, sAuctionName)
		tText[3] = tIntegralAuctionNpc_Text[nInitNpcId]["Text313"]
		
		nNeedPrice = nTopPrice + 1
		
		--如果投注后的值比底价还低，那就置为底价
		if nTopPrice + 1 < nLowPrice then
			nNeedPrice = nLowPrice
		end
		
		--需要投注多少才能超过第一名
		tOptionTemp[1] = {}
		tOptionTemp[1]["Text"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Option311"], nNeedPrice, sAuctionName)
		tOptionTemp[1]["Option"] = string.format("</F>IntegralAuctionNpc_TreasureBet</N>%d</N>%d", nNowIndex, nNeedPrice)
		
		table.insert(tOption, tOptionTemp[1])
		--第一名不等于最后一名的时候
		if nTopPrice ~= nPrice then
			tOptionTemp[2] = {}
			tOptionTemp[2]["Text"] = " "
			
			nNeedPrice = nPrice + 1
		
			--如果投注后的值比底价还低，那就置为底价
			if nPrice + 1 < nLowPrice then
				nNeedPrice = nLowPrice
			end
			
			--需要投注多少才能超过最后一名
			tOptionTemp[3] = {}
			tOptionTemp[3]["Text"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Option312"], nNeedPrice, sAuctionName)
			tOptionTemp[3]["Option"] = string.format("</F>IntegralAuctionNpc_TreasureBet</N>%d</N>%d", nNowIndex, nNeedPrice)
			
			table.insert(tOption, tOptionTemp[2])
			table.insert(tOption, tOptionTemp[3])
		end
	end
	
	--新增屏蔽二次确认选项
	if nNpcId == 23500 then
		local nEvent = tIntegralAuctionNpc_Stc["Confirm"]["Event"]
		local nType = tIntegralAuctionNpc_Stc["Confirm"]["Type"]
		
		--是否已经屏蔽
		if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
			if next(tOption) ~= nil then
				tOptionTemp[4] = {}
				tOptionTemp[4]["Text"] = " "
				
				table.insert(tOption, tOptionTemp[4])
			end
			
			tOptionTemp[5] = {}
			tOptionTemp[5]["Text"] = tIntegralAuctionNpc_Text[nInitNpcId]["Option313"]
			tOptionTemp[5]["Option"] = "</F>IntegralAuctionNpc_LinkConfirm</N>"..nNpcId.."</N>"..nUserId
			
			table.insert(tOption, tOptionTemp[5])
		end
	end
	
	for i = 1, #tText do
		Sys_DialogText(tText[i])
	end
	
	Sys_DialogOptEdit("",tIntegralAuctionNpc_Cont["Edit"], sEdtFunc)
	
	if next(tOption) ~= nil then
		for i = 1, #tOption do
			Sys_DialogOption(tOption[i]["Text"],tOption[i]["Option"])
		end
	end
	
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--连接二次确认对白
function IntegralAuctionNpc_LinkConfirm(nNpcId, nUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	Sys_DialogText(tIntegralAuctionNpc_Text[nNpcId]["Text421"])
	Sys_DialogOption(tIntegralAuctionNpc_Text[nNpcId]["Option421"],"</F>IntegralAuctionNpc_NotConfirm</N>"..nUserId)
	Sys_DialogOption(tIntegralAuctionNpc_Text[nNpcId]["Option422"],"</F>IntegralAuctionNpc_ConfirmTreasureBet")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--屏蔽二次确认
function IntegralAuctionNpc_NotConfirm(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tIntegralAuctionNpc_Stc["Confirm"]["Event"]
	local nType = tIntegralAuctionNpc_Stc["Confirm"]["Type"]
	
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	
	--重新刷新对白
	IntegralAuctionNpc_ConfirmTreasureBet()
end

--竞拍投注
function IntegralAuctionNpc_TreasureBet(nTreasureIndex, nNowNum, nConfirm)
	--时间检测
	if not Sys_ChkFullTime(tActivityTime["DoubleEleven2018"]["ActTime"]) or not Sys_ChkDayTime(tIntegralAuctionNpc_Time["AuctionCan"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nNpcId = Get_NpcId()
	local nIndex = nNpcId - tIntegralAuctionNpc_Cont["AuctionDiff"]
	local sAuctionName = tIntegralAuctionNpc_Text["AuctionName"][nNpcId] or ""
	
	--新增沈管家判断
	if nNpcId == 23500 then
		nIndex = nTreasureIndex
		nTreasureIndex = 1
		sAuctionName = tIntegralAuctionNpc_Text["EMoney"]
	end
	
	local nNum = nNowNum or tonumber(Get_SysAcceptStr())
	
	--格式检查
	if nNum == nil or type(nNum) ~= "number" or nNum%1 ~= 0 or nNum <= 0 then
		Sys_MsgBox(string.format(tIntegralAuctionNpc_Text["MsgBox"]["AuctionFormat"], sAuctionName))
		return
	end
	
	local nTreasureGlobalId = tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][nIndex][nTreasureIndex]["Id"]
	local nTreasurePos = tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][nIndex][nTreasureIndex]["Pos"]
	local nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
	
	--没有宝物信息，异常退出
	if nTreasureGlobalData <= 0 then
		return
	end
	
	--获取宝物名称
	local sItemName = ""
	
	if nTreasureGlobalData > 0 then
		sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
	end
	
	local nUserId = Get_UserId()
	
	local sItemIndex = "AuctionSilver"
	
	--新增检查天石逻辑
	if nNpcId == 23500 then
		local nEMoney =  Get_UserEMoney(nUserId)
		
		if nEMoney < nNum then
			Sys_MsgBox(string.format(tIntegralAuctionNpc_Text["MsgBox"]["AuctionNoItem"], sAuctionName))
			return
		end
	else
		local nItemTypeId = tIntegralAuctionNpc_Cont["NPCItem"][nNpcId]
		
		if nItemTypeId == tIntegralAuctionNpc_Item["SilverTicket"] then
			sItemIndex = "AuctionSilver"
		else
			sItemIndex = "AuctionGold"
		end
		
		--数量检查
		if not Item_ChkMulItem(nItemTypeId,nItemTypeId,nNum) then
			Sys_MsgBox(string.format(tIntegralAuctionNpc_Text["MsgBox"]["AuctionNoItem"], sAuctionName))
			return
		end
	end
	
	local nEvent = tIntegralAuctionNpc_Stc["Confirm"]["Event"]
	local nType = tIntegralAuctionNpc_Stc["Confirm"]["Type"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	--判断榜中是否有自己
	local bFlag = false
	local nOwnRank = 0
	local nOwnPrice = 0
	
	if next(tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex]) ~= nil then
		for k,v in pairs(tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex]) do
			if nUserId == v["Id"] then
				bFlag = true
				nOwnRank = k
				nOwnPrice = v["Price"]
				break
			end
		end
	end
	
	--天石二次确认
	if nNpcId == 23500 and nConfirm == nil and nData == 0 then
		local sOptionFunc = string.format("</F>IntegralAuctionNpc_TreasureBet</N>%d</N>%d</N>1", nIndex, nNum)
		local sText = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text411"], nNum, sItemName)
		local sOption1 = tIntegralAuctionNpc_Text[nNpcId]["Option411"]
		local sOption2 = tIntegralAuctionNpc_Text[nNpcId]["Option412"]
		
		--玩家在排行榜内
		if nOwnRank > 0 then
			sText = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text412"], nNum, sItemName)
			sOption1 = tIntegralAuctionNpc_Text[nNpcId]["Option413"]
			sOption2 = tIntegralAuctionNpc_Text[nNpcId]["Option414"]
		end
		
		Sys_DialogText(sText)
		Sys_DialogOption(sOption1, sOptionFunc)
		Sys_DialogOption(sOption2)
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	
	--宝物数量
	local nTreasureNum = tIntegralAuctionNpc_Item["Num"][nTreasureGlobalData]
	--获取宝物底价
	local nLowPrice = tIntegralAuctionNpc_Item["LowPrice"][nTreasureGlobalData]
	
	--获取价格信息
	local nPrice = 0
	
	--获取当前排行榜最低票价
	if next(tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex]) ~= nil then
		if tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nTreasureNum] ~= nil then
			nPrice = tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nTreasureNum]["Price"] or 0
		end
	end
	
	local sFunc = "IntegralAuctionNpc_EditTreasureBet</N>"..nIndex
	
	--判断投注是否高于底价，否则失败，不在排行榜内才进行判断，在榜内可以随意投
	if nNum < nLowPrice and (not bFlag) then
		Sys_MsgBox(tIntegralAuctionNpc_Text["MsgBox"]["AuctionFail"], sFunc)
		return
	end
	
	--判断是否大于最低投注，不大于即投注失败，不在排行榜内才进行判断，在榜内可以随意投
	if nNum <= nPrice and (not bFlag) then
		Sys_MsgBox(tIntegralAuctionNpc_Text["MsgBox"]["AuctionFail"], sFunc)
		return
	end
	
	--新增扣除天石逻辑
	if nNpcId == 23500 then
		local sEmoneyBuyLog = tIntegralAuctionNpc_ELog["Auction"]
		
		if not User_AddEMoneyAndLog(-nNum,sEmoneyBuyLog,nUserId) then
			return
		end
	else
		local nItemTypeId = tIntegralAuctionNpc_Cont["NPCItem"][nNpcId]
		
		--扣除物品
		if not Item_DelMulItem(nItemTypeId,nItemTypeId,nNum) then
			Sys_MsgBox(string.format(tIntegralAuctionNpc_Text["MsgBox"]["AuctionNoItem"], sAuctionName))
			return
		end
		
		--扣除物品log
		Sys_SaveActionRewardLog(string.format(tIntegralAuctionNpc_Log["DelItem"], nItemTypeId, nNum))
	end
	--自己总共投的票数
	local nTotalNum = nNum + nOwnPrice
	
	--榜中有自己
	if bFlag then
		--先更新自己的信息
		tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nOwnRank]["Price"] = nTotalNum
		
		--名次上移
		if tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nOwnRank - 1] ~= nil then
			if nTotalNum > tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nOwnRank - 1]["Price"] then
				--循环当前名次往上的名次
				for i = nOwnRank, 2, -1 do
					if tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i - 1] ~= nil then
						local nFrontPrice = tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i - 1]["Price"]
						local nBackPrice = tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i]["Price"]
						
						--比前一名多
						if nBackPrice > nFrontPrice then
							--用一个临时表暂存
							local tTemp = CommonFunc_Copy(tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i - 1])
							
							tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i - 1] = CommonFunc_Copy(tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i])
							tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i] = CommonFunc_Copy(tTemp)
						end
					end
				end
			end
		end
	--榜中没有自己
	else
		local nUserName = Get_UserName(nUserId)
		
		--当前玩家插入排行榜
		--第一名有没有人
		if tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][1] == nil then
			tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][1] = {}
			tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][1]["Id"] = nUserId
			tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][1]["Name"] = nUserName
			tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][1]["Price"] = nTotalNum
		else
			--实际排行榜人数
			local nMaxRank = #tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex]
			
			--比最后一名票数还低，这种情况只能插空位，在最后一名后面新增一个排名
			if nTotalNum <= tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nMaxRank]["Price"] then
				--确保当前排名低于最高排名
				if nMaxRank >= nTreasureNum then
					nMaxRank = nTreasureNum - 1
				end
				
				tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nMaxRank + 1] = {}
				tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nMaxRank + 1]["Id"] = nUserId
				tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nMaxRank + 1]["Name"] = nUserName
				tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nMaxRank + 1]["Price"] = nTotalNum
			--否则必定会挤进排行榜，挤进去的话如果最后一名被踢，给最后一名退票
			else
				--判断榜内还有没空位，没有空位则退回最后一位玩家的票
				local nBackUserId = 0
				local nBackNum = 0
				
				if tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nTreasureNum] ~= nil then
					nBackUserId = tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nTreasureNum]["Id"]
					nBackNum = tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][nTreasureNum]["Price"]
				end
				
				--当前玩家插入排行榜
				for i = 1, nMaxRank do
					if nTotalNum > tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i]["Price"] then
						--其他人名次下移
						for j = nMaxRank, i, -1 do
							if j < nTreasureNum then
								tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][j + 1] = CommonFunc_Copy(tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][j])
							end
						end
						
						--自己替换当前排名信息
						tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i]["Id"] = nUserId
						tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i]["Name"] = nUserName
						tIntegralAuctionNpc_AuctionBox[nIndex][nTreasureIndex][i]["Price"] = nTotalNum
						break
					end
				end
				
				--是否进行退票操作
				if nBackUserId > 0 and nBackNum > 0 then
					--进行退票掩码操作
					--local nBackEvent = tIntegralAuctionNpc_Stc[sItemIndex]["Event"]
					--local nBackType = tIntegralAuctionNpc_Stc[sItemIndex]["Type"]
					
					--Task_AddStatistic(nBackEvent,nBackType,nBackNum,1,nBackUserId)
					
					--往退票临时数据上添加数据
					if tIntegralAuctionNpc_ReturnTicket[sItemIndex][nBackUserId] == nil then
						tIntegralAuctionNpc_ReturnTicket[sItemIndex][nBackUserId] = nBackNum
					else
						local nNowBackNum = tIntegralAuctionNpc_ReturnTicket[sItemIndex][nBackUserId]
						tIntegralAuctionNpc_ReturnTicket[sItemIndex][nBackUserId] = nNowBackNum + nBackNum
					end
					
					local sAuctionBox = tIntegralAuctionNpc_Text["AuctionBox"][nNpcId] or ""
					local nExistDay = tIntegralAuctionNpc_Mail["AuctionReturn"]["ExistDay"]
					local sSender = tIntegralAuctionNpc_Text["Mail"]["Sender"]
					local sTitle = tIntegralAuctionNpc_Text["Mail"]["Title"]
					local sContent = string.format(tIntegralAuctionNpc_Text["Mail"]["Content"]["AuctionBack"], sAuctionBox, sAuctionName)
					local nEmoney = 0
					
					if nNpcId == 23500 then
						local sRank = tIntegralAuctionNpc_Text["Rank"]["OnlyOne"]
						
						if nTreasureNum > 1 then
							sRank = string.format(tIntegralAuctionNpc_Text["Rank"]["All"], nTreasureNum)
						end
						
						nEmoney = nBackNum
						sSender = tIntegralAuctionNpc_Text["Mail"]["New"]["Sender"]
						sTitle = tIntegralAuctionNpc_Text["Mail"]["New"]["Title"]
						sContent = string.format(tIntegralAuctionNpc_Text["Mail"]["New"]["Content"]["Back"], sItemName, sRank, nEmoney)
					end
					
					--发邮件，仅说明
					Sys_SendMail(nBackUserId,0,nEmoney,0,0,nExistDay,sSender,sTitle,sContent)
				end
			end
		end
	end
	
	--提示
	local sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
	
	local sMsgBox = string.format(tIntegralAuctionNpc_Text["MsgBox"]["AuctionSuc"], sItemName)
	
	-- if nTreasureNum == 1 then
		-- sMsgBox = string.format(tIntegralAuctionNpc_Text["MsgBox"]["AuctionSuc1"], nTreasureNum, sItemName)
	-- else
		-- sMsgBox = string.format(tIntegralAuctionNpc_Text["MsgBox"]["AuctionSuc"], nTreasureNum, sItemName)
	-- end
	
	Sys_MsgBox(sMsgBox, "LinkNpcMain")
	
	--播光效
	local sSzObj = tIntegralAuctionNpc_Cont["Effect"]["SzObj"]
	local sEffect = tIntegralAuctionNpc_Cont["Effect"]["AuctionSuc"]
	
	User_EffectAdd(sSzObj,sEffect,nUserId)
end

--预测今日最高标价
function IntegralAuctionNpc_TreasureGuess()
	--时间检测
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) or not Sys_ChkDayTime(tIntegralAuctionNpc_Time["AuctionForecast"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nNum = tonumber(Get_SysAcceptStr())
	
	--格式检查
	if nNum == nil or type(nNum) ~= "number" or nNum%1 ~= 0 or nNum <= 0 then
		Sys_MsgBox(tIntegralAuctionNpc_Text["MsgBox"]["AuctionFormatGuess"])
		return
	end
	
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	local nIndex = nNpcId - tIntegralAuctionNpc_Cont["AuctionDiff"]
	
	--登记进竞拍预测表
	tIntegralAuctionNpc_AuctionGuess[nIndex][nUserId] = nNum
	
	Sys_MsgBox(string.format(tIntegralAuctionNpc_Text["MsgBox"]["AuctionForecast"], nNum))
end

--特惠宝箱投注输入框
function IntegralAuctionNpc_EditSecondBet(nTreasureIndex)
	--时间检测
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) or not Sys_ChkDayTime(tIntegralAuctionNpc_Time["SecondCan"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nInitNpcId = tIntegralAuctionNpc_Cont["NpcId"]["Second"]
	local nIndex = nNpcId - tIntegralAuctionNpc_Cont["SecondDiff"]
	
	--获取动态码上的宝物信息
	local nTreasureGlobalId = tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][nIndex][nTreasureIndex]["Id"]
	local nTreasurePos = tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][nIndex][nTreasureIndex]["Pos"]
	local nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
	
	local sItemName = ""
	
	if nTreasureGlobalData > 0 then
		sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
	end
	
	--获取个人投注
	local nSecondEvent = tIntegralAuctionNpc_Stc["SecondBox"][nIndex][nTreasureIndex]["Event"]
	local nSecondType = tIntegralAuctionNpc_Stc["SecondBox"][nIndex][nTreasureIndex]["Type"]
	local nSecondSave = tIntegralAuctionNpc_Stc["SecondBox"][nIndex][nTreasureIndex]["Save"]
	
	--置零，打时间戳
	Task_StcReset(nSecondEvent,nSecondType,nUserId)
	
	local nStcData = Get_UserStatisticValue(nSecondEvent,nSecondType,nUserId)
	
	local sTextIndex = "Text213"
	
	--判断是否已经投过
	if tIntegralAuctionNpc_SecondBox[nIndex][nTreasureIndex][nUserId] ~= nil then
		sTextIndex = "Text214"
	end
	
	Sys_DialogText(string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text211"], sItemName))
	Sys_DialogText(string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text212"], nStcData))
	Sys_DialogText(tIntegralAuctionNpc_Text[nInitNpcId][sTextIndex])
	Sys_DialogOptEdit("",tIntegralAuctionNpc_Cont["Edit"],string.format("IntegralAuctionNpc_SecondBet</N>%d", nTreasureIndex))
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--特惠宝箱投注
function IntegralAuctionNpc_SecondBet(nTreasureIndex)
	--时间检测
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) or not Sys_ChkDayTime(tIntegralAuctionNpc_Time["SecondCan"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nNum = tonumber(Get_SysAcceptStr())
	
	--格式检查
	if nNum == nil or type(nNum) ~= "number" or nNum%1 ~= 0 or nNum <= 0 then
		Sys_MsgBox(tIntegralAuctionNpc_Text["MsgBox"]["SecondFormat"])
		return
	end
	
	local nItemTypeId = tIntegralAuctionNpc_Item["SilverTicket"]
	local nNpcId = Get_NpcId()
	local sAuctionName = tIntegralAuctionNpc_Text["AuctionName"][nNpcId]
	
	--数量检查
	if not Item_ChkMulItem(nItemTypeId,nItemTypeId,nNum) then
		Sys_MsgBox(string.format(tIntegralAuctionNpc_Text["MsgBox"]["AuctionNoItem"], sAuctionName))
		return
	end
	
	local nIndex = nNpcId - tIntegralAuctionNpc_Cont["SecondDiff"]
	
	--获取动态码上的最高价格信息
	local nPriceGlobalId = tIntegralAuctionNpc_GlobalData["Second"]["Price"][nIndex][nTreasureIndex]["Id"]
	local nPricePos = tIntegralAuctionNpc_GlobalData["Second"]["Price"][nIndex][nTreasureIndex]["Pos"]
	local nPriceGlobalData = Get_SysDynaGlobalData(nPriceGlobalId,nPricePos)
	
	local nUserId = Get_UserId()
	
	--获取个人投注
	local nSecondEvent = tIntegralAuctionNpc_Stc["SecondBox"][nIndex][nTreasureIndex]["Event"]
	local nSecondType = tIntegralAuctionNpc_Stc["SecondBox"][nIndex][nTreasureIndex]["Type"]
	local nSecondSave = tIntegralAuctionNpc_Stc["SecondBox"][nIndex][nTreasureIndex]["Save"]
	
	--置零，打时间戳
	Task_StcReset(nSecondEvent,nSecondType,nUserId)
	
	local nStcData = Get_UserStatisticValue(nSecondEvent,nSecondType,nUserId)
	
	nStcData = nStcData + nNum
	
	--投注总量和最高价相同
	if nStcData == nPriceGlobalData then
		Sys_MsgBox(tIntegralAuctionNpc_Text["MsgBox"]["SecondFail"])
		return
	end
	
	--扣除物品
	if not Item_DelMulItem(nItemTypeId,nItemTypeId,nNum) then
		Sys_MsgBox(string.format(tIntegralAuctionNpc_Text["MsgBox"]["AuctionNoItem"], sAuctionName))
		return
	end
	
	--扣除物品log
	Sys_SaveActionRewardLog(string.format(tIntegralAuctionNpc_Log["DelItem"], nItemTypeId, nNum))
	
	--获取动态码上的次高价格信息
	local nSecondPriceGlobalId = tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][nIndex][nTreasureIndex]["Id"]
	local nSecondPricePos = tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][nIndex][nTreasureIndex]["Pos"]
	local nSecondPriceData = Get_SysDynaGlobalData(nSecondPriceGlobalId,nSecondPricePos)
	
	--最高价登记的玩家id
	local nPlayerGlobalId = tIntegralAuctionNpc_GlobalData["Second"]["Player"][nIndex][nTreasureIndex]["Id"]
	local nPlayerPos = tIntegralAuctionNpc_GlobalData["Second"]["Player"][nIndex][nTreasureIndex]["Pos"]
	local nPlayerPriceData = Get_SysDynaGlobalData(nPlayerGlobalId,nPlayerPos)
	
	Task_AddStatistic(nSecondEvent,nSecondType,nNum,nSecondSave,nUserId)
	
	--重新获取新的总投注数量
	nStcData = Get_UserStatisticValue(nSecondEvent,nSecondType,nUserId)
	
	--判断是不是大于最高投注
	if nStcData > nPriceGlobalData then
		--替换最高价
		Sys_SetSynaGlobalData(nPriceGlobalId,nPricePos,nStcData)
		--当前的最高价是自己投的,没必要替换
		if nUserId ~= nPlayerPriceData then
			--替换最高价玩家id
			Sys_SetSynaGlobalData(nPlayerGlobalId,nPlayerPos,nUserId)
			--替换次高价
			Sys_SetSynaGlobalData(nSecondPriceGlobalId,nSecondPricePos,nPriceGlobalData)
		end
	--判断是不是大于次高投注
	elseif nStcData ~= nPriceGlobalData and nStcData > nSecondPriceData then
		--替换次高价
		Sys_SetSynaGlobalData(nSecondPriceGlobalId,nSecondPricePos,nStcData)
	end
	
	--保存投注信息
	tIntegralAuctionNpc_SecondBox[nIndex][nTreasureIndex][nUserId] = nStcData
	
	--获取动态码上的宝物信息
	local nTreasureGlobalId = tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][nIndex][nTreasureIndex]["Id"]
	local nTreasurePos = tIntegralAuctionNpc_GlobalData["Second"]["Treasure"][nIndex][nTreasureIndex]["Pos"]
	local nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
	
	local sItemName = ""
	
	if nTreasureGlobalData > 0 then
		sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
	end
	
	Sys_MsgBox(string.format(tIntegralAuctionNpc_Text["MsgBox"]["SecondSuc"], nStcData, sItemName))
	
	--播光效
	local sSzObj = tIntegralAuctionNpc_Cont["Effect"]["SzObj"]
	local sEffect = tIntegralAuctionNpc_Cont["Effect"]["AuctionSuc"]
	
	User_EffectAdd(sSzObj,sEffect,nUserId)
end

--众筹投注
function IntegralAuctionNpc_CrowdBet(nTreasureIndex)
	local nNpcId = Get_NpcId()
	local nInitNpcId = tIntegralAuctionNpc_Cont["NpcId"]["Crowd"]
	local nIndex = nNpcId - tIntegralAuctionNpc_Cont["CrowdDiff"]
	local sBoxName = tIntegralAuctionNpc_Text["AuctionName"][nNpcId]
	
	--不在众筹时间
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) or not Sys_ChkDayTime(tIntegralAuctionNpc_Time["CrowdCan"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nItemTypeId = tIntegralAuctionNpc_Cont["NPCItem"][nNpcId]["Item"]
	local nNum = tIntegralAuctionNpc_Cont["NPCItem"][nNpcId]["Num"]
	
	--获取动态码上的宝物信息
	local nTreasureGlobalId = tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][nIndex][nTreasureIndex]["Id"]
	local nTreasurePos = tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"][nIndex][nTreasureIndex]["Pos"]
	local nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
	
	if nTreasureGlobalData <= 0 then
		return
	end
	
	--数量检查
	if not Item_ChkMulItem(nItemTypeId,nItemTypeId,nNum) or not Item_DelMulItem(nItemTypeId,nItemTypeId,nNum) then
		tNpcGossip[nNpcId]["Text211"] = string.format(tIntegralAuctionNpc_Text[nInitNpcId]["Text211"], sBoxName)
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	
	--扣除物品log
	Sys_SaveActionRewardLog(string.format(tIntegralAuctionNpc_Log["DelItem"], nItemTypeId, nNum))
	
	local nUserId = Get_UserId()
	
	--登记进众筹宝箱投注表
	local nUserName = Get_UserName(nUserId)
	
	tIntegralAuctionNpc_CrowdBox[nIndex][nTreasureIndex][nUserId] = {}
	tIntegralAuctionNpc_CrowdBox[nIndex][nTreasureIndex][nUserId]["Item"] = nTreasureGlobalData
	tIntegralAuctionNpc_CrowdBox[nIndex][nTreasureIndex][nUserId]["Name"] = nUserName
	
	--回到主对白
	LinkNpcMain()
	
	--播光效
	local sSzObj = tIntegralAuctionNpc_Cont["Effect"]["SzObj"]
	local sEffect = tIntegralAuctionNpc_Cont["Effect"]["AuctionSuc"]
	
	User_EffectAdd(sSzObj,sEffect,nUserId)
end

--众筹开奖
function IntegralAuctionNpc_CrowdOpen()
	for k,v in pairs(tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"]) do
		for i,j in pairs(v) do
			--获取动态码上的宝物信息
			local nGlobalData = Get_SysDynaGlobalData(j["Id"],j["Pos"])
			
			if nGlobalData > 0 then
				--获取宝物数量
				local nNum = tIntegralAuctionNpc_Item["Num"][nGlobalData]
				
				--保存投注玩家信息
				local tCrowd = CommonFunc_Copy(tIntegralAuctionNpc_CrowdBox[k][i])
				--保存玩家id
				local tCrowdTemp = {}
				
				--众筹投注表有内容
				if next(tCrowd) ~= nil then
					local bFlag = true
					
					for m,n in pairs(tCrowd) do
						table.insert(tCrowdTemp, m)
						
						if tIntegralAuctionNpc_CrowdBox[k][i][m]["IsGet"] ~= nil then
							bFlag = false
						end
					end
					
					--计数
					local nCount = 0
					
					if bFlag then
						for m,n in pairs(tCrowd) do
							--从保存的玩家id中随机选择一个
							local nUserIndex = math.random(1, #tCrowdTemp)
							local nUserId = tCrowdTemp[nUserIndex]
							
							--判断已经被选
							local nCalLoop = 0
							while tIntegralAuctionNpc_CrowdBox[k][i][nUserId]["IsGet"] ~= nil do
								if nCalLoop > G_CalculateLoop then	
									Sys_SaveAbnormalLog("函数 IntegralAuctionNpc_CrowdOpen 中 [while]循环超过1000次！")
									break
								end
								nCalLoop = nCalLoop + 1
								nUserIndex = math.random(1, #tCrowdTemp)
								nUserId = tCrowdTemp[nUserIndex]
							end
							
							--超出可以领的宝物数量
							if nCount >= nNum then
								tIntegralAuctionNpc_CrowdBox[k][i][nUserId]["IsGet"] = false
							else
								tIntegralAuctionNpc_CrowdBox[k][i][nUserId]["IsGet"] = true
								
								local sUserName = tIntegralAuctionNpc_CrowdBox[k][i][nUserId]["Name"]
								
								--保存到获奖信息表
								tIntegralAuctionNpc_CrowdBoxInfo[k][sUserName] = tIntegralAuctionNpc_CrowdBox[k][i][nUserId]["Item"]
							end
							
							nCount = nCount + 1
						end
					end
				end
			end
		end
	end
end

--小时掩码判断
function IntegralAuctionNpc_BuyStcChk(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nBuyEvent = tIntegralAuctionNpc_Stc["Buy"]["Event"]
	local nBuyType = tIntegralAuctionNpc_Stc["Buy"]["Type"]
	
	--获取当前时间
	local nTime = os.time() - 86400
	local nHour = tonumber(os.date("%H", nTime))
	
	--置零，打时间戳
	Task_StcReset(nBuyEvent,nBuyType,nUserId)
	
	local nBuyData = Get_UserStatisticValue(nBuyEvent,nBuyType,nUserId)
	
	local nFlagGet = math.floor(nBuyData / 100)
	local nFlagHour = nBuyData % 100
	
	if nFlagHour == nHour and nFlagGet >= 1 then
		return true
	else
		if nFlagGet >= 1 then
			Task_SetStatistic(nBuyEvent,nBuyType,nFlagHour,1,nUserId)
		end
		
		return false
	end
end

--小时掩码设置
function IntegralAuctionNpc_BuyStcSet(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nBuyEvent = tIntegralAuctionNpc_Stc["Buy"]["Event"]
	local nBuyType = tIntegralAuctionNpc_Stc["Buy"]["Type"]
	
	--获取当前时间
	local nTime = os.time() - 86400
	local nHour = tonumber(os.date("%H", nTime))
	
	Task_SetStatistic(nBuyEvent,nBuyType,nHour + 100,1,nUserId)
end

--抢购商品
function IntegralAuctionNpc_BuyBet(nIndex)
	--时间判断
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	
	--自己是否抢购过
	if IntegralAuctionNpc_BuyStcChk(nUserId) then
		LinkNpcGossipFunc_New(nNpcId, "2-4")
		return
	end
	
	--获取动态码上的宝物数量
	local nPriceGlobalId = tIntegralAuctionNpc_GlobalData["Buy"]["Price"][nIndex]["Id"]
	local nPricePos = tIntegralAuctionNpc_GlobalData["Buy"]["Price"][nIndex]["Pos"]
	local nPriceGlobalData = Get_SysDynaGlobalData(nPriceGlobalId,nPricePos)
	
	--已被抢购
	if nPriceGlobalData <= 0 then
		LinkNpcGossipFunc_New(nNpcId, "2-3")
		return
	end
	
	local nItemTypeId = tIntegralAuctionNpc_Item["SilverTicket"]
	
	--银票不够
	if not Item_ChkMulItem(nItemTypeId,nItemTypeId,nPriceGlobalData) then
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	
	--获取动态码上的宝物信息
	local nTreasureGlobalId = tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][nIndex]["Id"]
	local nTreasurePos = tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"][nIndex]["Pos"]
	local nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
	
	if nTreasureGlobalData <= 0 then
		LinkNpcGossipFunc_New(nNpcId, "2-3")
		return
	end
	
	local sAttr = ""
	local tItemAttr = {}
	local sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
	
	for k,v in pairs(tIntegralAuctionNpc_Item["Buy"]) do
		if nTreasureGlobalData == v["Id"] then
			sAttr = v["Attr"]
			tItemAttr = Sys_Split(v["Attr"]," ")
			if tonumber(tItemAttr[2]) > 1 then
				sItemName = sItemName.."*"..tItemAttr[2]
			end
			break
		end
	end
	
	local tAward = CommonFunc_Copy(tIntegralAuctionNpc_Reward["Buy"])
	
	tAward["DeleteItem"][1]["ItemNum"] = nPriceGlobalData
	tAward["RewardItem"][1]["Id"] = nTreasureGlobalData
	tAward["RewardItem"][1]["Attr"] = sAttr
	tAward["Talk"] = string.format(tIntegralAuctionNpc_Text["Channel2005"]["BuySuc"], sItemName)
	
	--背包空间不足
	if not RewardTemplate_CheckSpace(tAward) then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	
	--清空宝物价格信息，使得后面的人不能购买
	Sys_SetSynaGlobalData(nPriceGlobalId,nPricePos, 0)
	
	--设置是否抢购过的掩码
	IntegralAuctionNpc_BuyStcSet(nUserId)
	
	--给奖
	RewardTemplate_UseItem(tAward)
	
	Sys_MsgBox(tAward["Talk"])
end

--上线给银票
function IntegralAuctionNpc_Login()
	--时间判断
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		return
	end
	
	local nUserId = Get_UserId()
	
	--等级判断
	local nLevel = tIntegralAuctionNpc_Cont["Level"]
	local nMetempsychosis = tIntegralAuctionNpc_Cont["Metempsychosis"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return
	end
	
	local nEvent = tIntegralAuctionNpc_Stc["LoginTicket"]["Event"]
	local nType = tIntegralAuctionNpc_Stc["LoginTicket"]["Type"]
	
	--置零，打时间戳
	Task_StcReset(nEvent,nType,nUserId)
	
	--判断当天是否发过奖
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return
	end
	
	--置掩码
	if not Task_AddStatistic(nEvent,nType,1,1,nUserId) then
		return
	end
	
	local nActionId = tIntegralAuctionNpc_Mail["LoginTicket"]["ActionId"]
	local nExistDay = tIntegralAuctionNpc_Mail["LoginTicket"]["ExistDay"]
	local sSender = tIntegralAuctionNpc_Text["Mail"]["Sender"]
	local sTitle = tIntegralAuctionNpc_Text["Mail"]["Title"]
	local sContent = tIntegralAuctionNpc_Text["Mail"]["Content"]["LoginTicket"]
	
	--发邮件
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	
	Sys_SaveActionRewardLog(tIntegralAuctionNpc_Log["Login"],nUserId)
end

--每小时更新一次
function IntegralAuctionNpc_EveryHour()
	local nGlobalId = tIntegralAuctionNpc_GlobalData["EveryHour"]["Id"]
	local nPos = tIntegralAuctionNpc_GlobalData["EveryHour"]["Pos"]
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	if nData <= 0 then
		Sys_SetSynaGlobalData(nGlobalId,nPos,1)
		IntegralAuctionNpc_ExChangeTicketNum()
		IntegralAuctionNpc_BuyBoxRefrash()
	end
end

--每小时更新一次的标志位重新归零
function IntegralAuctionNpc_EveryHourToZero()
	local nGlobalId = tIntegralAuctionNpc_GlobalData["EveryHour"]["Id"]
	local nPos = tIntegralAuctionNpc_GlobalData["EveryHour"]["Pos"]
	
	Sys_SetSynaGlobalData(nGlobalId,nPos,0)
end

--每小时更新一次金票兑换银票可以兑换的数量
function IntegralAuctionNpc_ExChangeTicketNum()
	local nGlobalId = tIntegralAuctionNpc_GlobalData["Exchange"]["Id"]
	local nPos = tIntegralAuctionNpc_GlobalData["Exchange"]["Pos"]
	local nMin = tIntegralAuctionNpc_Cont["ExchangeTicket"]["Min"]
	local nMax = tIntegralAuctionNpc_Cont["ExchangeTicket"]["Max"]
	
	local nData = math.random(nMin,nMax)
	
	Sys_SetSynaGlobalData(nGlobalId,nPos,nData)
end

--每小时更新一次抢购宝箱的宝物内容
function IntegralAuctionNpc_BuyBoxRefrash()
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		return
	end
	
	--当前服务器是否奋斗服
	local bServerFlag = IntegralAuctionNpc_StriveServer()
	
	--用来保存筛选后的奖池
	local tAwardAfter = {}
	
	tAwardAfter["Buy"] = {}
	tAwardAfter["BuySmall"] = {}
	
	for i = 1, #tIntegralAuctionNpc_Item["Buy"] do
		local bFlag = true
		local nItemRandom = tIntegralAuctionNpc_Item["Buy"][i]["Id"]
		
		--奋斗服去掉一些奖励
		if bServerFlag then
			for k,v in pairs(tIntegralAuctionNpc_Cont["StriveItemId"]) do
				if nItemRandom == v then
					bFlag = false
					break
				end
			end
		end
		
		if bFlag then
			table.insert(tAwardAfter["Buy"], nItemRandom)
		end
	end
	
	for i = 1, #tIntegralAuctionNpc_Item["BuySmall"] do
		table.insert(tAwardAfter["BuySmall"], tIntegralAuctionNpc_Item["BuySmall"][i]["Id"])
	end
	
	--用来保存奖池中的奖励是否被选
	local tAwardTemp = {}
		--普通奖池
		tAwardTemp["Buy"] = {}
		--小奖池
		tAwardTemp["BuySmall"] = {}
	
	for i = 1, #tAwardAfter["Buy"] do
		tAwardTemp["Buy"][i] = false
	end
	
	for i = 1, #tAwardAfter["BuySmall"] do
		tAwardTemp["BuySmall"][i] = false
	end
	
	local tBoxAward = {}
	
	local sIndex = ""
	
	for k,v in pairs(tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"]) do
		if k > tIntegralAuctionNpc_Cont["Tier"]["Buy"] then
			sIndex = "BuySmall"
		else
			sIndex = "Buy"
		end
		
		--奖池中选一件
		local nItemIndex = math.random(1, #tAwardAfter[sIndex])
		
		--判断是否被选，是被选过的重新选择
		local nCalLoop = 0
		while tAwardTemp[sIndex][nItemIndex] do
			if nCalLoop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 IntegralAuctionNpc_BuyBoxRefrash 中 [while]循环超过1000次！")
				break
			end
			nCalLoop = nCalLoop + 1
			nItemIndex = math.random(1,#tAwardAfter[sIndex])
		end
		
		--标记被选
		tAwardTemp[sIndex][nItemIndex] = true
		
		local nItemId = tAwardAfter[sIndex][nItemIndex]
		
		tBoxAward[k] = {}
		tBoxAward[k]["Item"] = nItemId
		tBoxAward[k]["Select"] = false
	end
	
	--奖品随机顺序
	for k,v in pairs(tIntegralAuctionNpc_GlobalData["Buy"]["Treasure"]) do
		local nIndex = math.random(1, #tBoxAward)
		
		local nCalLoopNew = 0
		while tBoxAward[nIndex]["Select"] do
			if nCalLoopNew > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 IntegralAuctionNpc_BuyBoxRefrash 1 中 [while]循环超过1000次！")
				break
			end
			nCalLoopNew = nCalLoopNew + 1
			nIndex = math.random(1, #tBoxAward)
		end
		
		tBoxAward[nIndex]["Select"] = true
		
		--保存奖励至动态码
		Sys_SetSynaGlobalData(v["Id"],v["Pos"],tBoxAward[nIndex]["Item"])
		
		local nMin = tIntegralAuctionNpc_Cont["Buy"]["Min"]
		local nMax = tIntegralAuctionNpc_Cont["Buy"]["Max"]
		local nRandom = math.random(nMin, nMax)
		
		local nGlobalId = tIntegralAuctionNpc_GlobalData["Buy"]["Price"][k]["Id"]
		local nGlobalPos = tIntegralAuctionNpc_GlobalData["Buy"]["Price"][k]["Pos"]
		
		--保存价格至动态码
		Sys_SetSynaGlobalData(nGlobalId,nGlobalPos,nRandom)
	end
end

--宝物更新
function IntegralAuctionNpc_RandomUpdate(nRow, nCol, sIndex)
	--当前服务器是否奋斗服
	local bServerFlag = IntegralAuctionNpc_StriveServer()
	
	--保存筛选后的奖励总表
	local tTotalAward = {}
	
	--小奖池
	local tSmallAward = {}
	
	for i = 1, #tIntegralAuctionNpc_Item["Auction"]["Small"] do
		local bFlag = true
		
		--筛选一些不需要的奖励
		if tIntegralAuctionNpc_Cont[sIndex] ~= nil then
			for k,v in pairs(tIntegralAuctionNpc_Cont[sIndex]) do
				if i == v then
					bFlag = false
					break
				end
			end
		end
		
		local nTempItem = tIntegralAuctionNpc_Item["Auction"]["Small"][i]
		
		local bServerItemFlag = true
		
		--奋斗服去掉一些奖励
		if bServerFlag then
			for k,v in pairs(tIntegralAuctionNpc_Cont["StriveItemId"]) do
				if nTempItem == v then
					bServerItemFlag = false
					break
				end
			end
		end
		
		if bFlag and bServerItemFlag then
			table.insert(tSmallAward, nTempItem)
		end
	end
	
	local nItem = 0
	
	--是否有大奖标志
	if sIndex ~= "Crowd" then
		--从大奖池中挑一件
		local nRandom = math.random(1,#tIntegralAuctionNpc_Item["Auction"]["Big"])
		nItem = tIntegralAuctionNpc_Item["Auction"]["Big"][nRandom]
		
		--大奖加入小奖池
		--table.insert(tSmallAward, nItem)
	end
	
	--用来保存奖池中的奖励是否被选
	local tSmallAwardTemp = {}
	
	for i = 1, #tSmallAward do
		tSmallAwardTemp[i] = false
	end
	
	local nSmallItem = 0
	local nSmallIndex = 0
	
	for i = 1, nRow do
		tTotalAward[i] = {}
		
		for j = 1, nCol do
			--第一个直接置为大奖
			if i ==1 and j == 1 then
				tTotalAward[i][j] = nItem
			else
				--从奖池中随机一件宝物
				nSmallIndex = math.random(1,#tSmallAward)
				
				--判断是否被选，是被选过的重新选择
				local nCalLoopNewNew = 0
				while tSmallAwardTemp[nSmallIndex] do
					if nCalLoopNewNew > G_CalculateLoop then
						Sys_SaveAbnormalLog("函数 IntegralAuctionNpc_RandomUpdate 中 [while]循环超过1000次！")
						break
					end
					nCalLoopNewNew = nCalLoopNewNew + 1
					nSmallIndex = math.random(1,#tSmallAward)
				end
				
				--标记被选
				tSmallAwardTemp[nSmallIndex] = true
				
				nSmallItem = tSmallAward[nSmallIndex]
				
				--是否有大奖，再判断最后一个，如果还没选到大奖，直接置为大奖
				-- if nItem > 0 and (not tSmallAwardTemp[#tSmallAward]) and i == nRow and j == nCol then
					-- nSmallItem = nItem
				-- end
				
				tTotalAward[i][j] = nSmallItem
			end
		end
	end
	
	return tTotalAward
end

--每天更新一次宝箱上面的竞拍宝物
function IntegralAuctionNpc_TotalUpdate()
	local nGlobalId = tIntegralAuctionNpc_GlobalData["EveryDay"]["Id"]
	local nPos = tIntegralAuctionNpc_GlobalData["EveryDay"]["Pos"]
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	if nData <= 0 then
		Sys_SetSynaGlobalData(nGlobalId,nPos,1)
		
		-- for k,v in pairs(tIntegralAuctionNpc_Cont["Update"]) do
			-- IntegralAuctionNpc_AuctionUpdate(v)
		-- end
		
		IntegralAuctionNpc_AuctionUpdate("Auction")
		
		--清空众筹获奖信息表
		-- tIntegralAuctionNpc_CrowdBoxInfo[1] = {}
		-- tIntegralAuctionNpc_CrowdBoxInfo[2] = {}
	end
end

--每天更新一次的标志位重新归零
function IntegralAuctionNpc_EveryDayToZero()
	local nGlobalId = tIntegralAuctionNpc_GlobalData["EveryDay"]["Id"]
	local nPos = tIntegralAuctionNpc_GlobalData["EveryDay"]["Pos"]
	
	Sys_SetSynaGlobalData(nGlobalId,nPos,0)
end

--更新宝箱上面的竞拍宝物
function IntegralAuctionNpc_AuctionUpdate(sIndex)
	--清空当前所有信息
	for k,v in pairs(tIntegralAuctionNpc_GlobalData[sIndex]["Total"]) do
		Sys_ResetAllSynaGlobalData(v)
		Sys_ResetAllSynaGlobalDataStr(v)
	end
	
	local nRow = #tIntegralAuctionNpc_GlobalData[sIndex]["Treasure"]
	local nCol = #tIntegralAuctionNpc_GlobalData[sIndex]["Treasure"][1]
	
	--保存筛选后的奖励总表
	local tTotalAward = IntegralAuctionNpc_RandomUpdate(nRow, nCol, sIndex)
	
	for k,v in pairs(tIntegralAuctionNpc_GlobalData[sIndex]["Treasure"]) do
		for i,j in pairs(v) do
			Sys_SetSynaGlobalData(j["Id"],j["Pos"],tTotalAward[k][i])
		end
	end
end

--判断哪个玩家猜测离最高竞拍价格最近
function IntegralAuctionNpc_JudgeAuctionGuess(nForecast, nIndex)
	if tIntegralAuctionNpc_AuctionGuess[nIndex] == nil or next(tIntegralAuctionNpc_AuctionGuess[nIndex]) == nil then
		return 0,0
	end
	
	local tForecast = {}
	
	--保存玩家猜测值与真实值之差
	for k,v in pairs(tIntegralAuctionNpc_AuctionGuess[nIndex]) do
		if v >= nForecast then
			tForecast[k] = v - nForecast
		else
			tForecast[k] = nForecast - v
		end
	end
	
	local nMin = 0
	local nCount = 0
	
	--找出差值最小的数
	for k,v in pairs(tForecast) do
		if nCount == 0 or nMin > v then
			nMin = v
		end
		
		nCount = nCount + 1
	end
	
	--找出差值最小的玩家
	for k,v in pairs(tForecast) do
		if nMin == v then
			return k, tIntegralAuctionNpc_AuctionGuess[nIndex][k]
		end
	end
end

--每天竞拍宝物发奖
function IntegralAuctionNpc_AuctionGiveAward()
	for k,v in pairs(tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"]) do
		local nForecast = 0
		local nNpcId = k + tIntegralAuctionNpc_Cont["AuctionDiff"]
		local sAuctionBox = tIntegralAuctionNpc_Text["AuctionBox"][nNpcId] or ""
		local sAuctionName = tIntegralAuctionNpc_Text["AuctionName"][nNpcId] or ""
		
		for i,j in pairs(v) do
			--获取动态码上的宝物信息
			local nTreasureGlobalData = Get_SysDynaGlobalData(j["Id"],j["Pos"])
			
			--获取当前总成交价
			local nTotalPrice = 0
			
			local sItemName = ""
			
			if nTreasureGlobalData > 0 then
				sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
			end
			
			if next(tIntegralAuctionNpc_AuctionBox[k][i]) ~= nil then
				for m,n in pairs(tIntegralAuctionNpc_AuctionBox[k][i]) do
					if next(n) ~= nil then
						--竞拍玩家发奖
						if n["Id"] > 0 and nTreasureGlobalData > 0 then
							local nActionId = tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][nTreasureGlobalData] or 0
							local nExistDay = tIntegralAuctionNpc_Mail["AuctionAward"]["ExistDay"]
							local sSender = tIntegralAuctionNpc_Text["Mail"]["New"]["Sender"]
							local sTitle = tIntegralAuctionNpc_Text["Mail"]["New"]["Title"]
							local sContent = string.format(tIntegralAuctionNpc_Text["Mail"]["New"]["Content"]["Succ"], n["Price"], sItemName)
							
							--发邮件
							Sys_SendMail(n["Id"],0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
							
							Sys_SaveActionRewardLog(string.format(tIntegralAuctionNpc_Log["Auction"], nTreasureGlobalData ,1), n["Id"])
							
							DoubleEleven2018_ContrastRich_CpsRecord(n["Price"],n["Id"])
						end
						
						--统计总成交价
						nTotalPrice = nTotalPrice + n["Price"]
					end
				end
			end
			
			--保存最大值
			if nForecast < nTotalPrice then
				nForecast = nTotalPrice
			end
		end
		
		--猜测最高成交价格最接近的给奖
		local nGuessUserId, nGuessPrice = IntegralAuctionNpc_JudgeAuctionGuess(nForecast, k)
		
		if nGuessUserId > 0 and nForecast > 0 then
			local nActionId = tIntegralAuctionNpc_Mail["AuctionGuess"]["ActionId"]
			local nExistDay = tIntegralAuctionNpc_Mail["AuctionGuess"]["ExistDay"]
			local sSender = tIntegralAuctionNpc_Text["Mail"]["Sender"]
			local sTitle = tIntegralAuctionNpc_Text["Mail"]["Title"]
			local sContent = string.format(tIntegralAuctionNpc_Text["Mail"]["Content"]["AuctionGuess"], sAuctionBox, nGuessPrice, nForecast)
			
			--发邮件
			Sys_SendMail(nGuessUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			
			Sys_SaveActionRewardLog(tIntegralAuctionNpc_Log["AuctionGuess"], nGuessUserId)
		end
	end
	
	--清空竞拍宝箱投注表
	for i = 1, #tIntegralAuctionNpc_AuctionBox do
		for j = 1, #tIntegralAuctionNpc_AuctionBox[i] do
			tIntegralAuctionNpc_AuctionBox[i][j] = {}
		end
	end
	
	--清空竞拍预测表
	for i = 1, #tIntegralAuctionNpc_AuctionGuess do
		tIntegralAuctionNpc_AuctionGuess[i] = {}
	end
end

--每天次高价宝箱发奖
function IntegralAuctionNpc_SecondGiveAward()
	for k,v in pairs(tIntegralAuctionNpc_GlobalData["Second"]["Treasure"]) do
		for i,j in pairs(v) do
			--获取动态码上的最高价格信息
			local nPriceGlobalId = tIntegralAuctionNpc_GlobalData["Second"]["Price"][k][i]["Id"]
			local nPricePos = tIntegralAuctionNpc_GlobalData["Second"]["Price"][k][i]["Pos"]
			local nPriceGlobalData = Get_SysDynaGlobalData(nPriceGlobalId,nPricePos)
			--获取动态码上的次高价格信息
			local nSecondPriceGlobalId = tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][k][i]["Id"]
			local nSecondPricePos = tIntegralAuctionNpc_GlobalData["Second"]["SecondPrice"][k][i]["Pos"]
			local nSecondPriceData = Get_SysDynaGlobalData(nSecondPriceGlobalId,nSecondPricePos)
			--最高价登记的玩家id
			local nPlayerGlobalId = tIntegralAuctionNpc_GlobalData["Second"]["Player"][k][i]["Id"]
			local nPlayerPos = tIntegralAuctionNpc_GlobalData["Second"]["Player"][k][i]["Pos"]
			local nPlayerPriceData = Get_SysDynaGlobalData(nPlayerGlobalId,nPlayerPos)
			
			--获取动态码上的宝物信息
			local nTreasureGlobalData = Get_SysDynaGlobalData(j["Id"],j["Pos"])
			
			local sItemName = ""
			
			if nTreasureGlobalData > 0 then
				sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
			end
			
			if nPlayerPriceData > 0 and nTreasureGlobalData > 0 then
				local nActionId = tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][nTreasureGlobalData] or 0
				local nExistDay = tIntegralAuctionNpc_Mail["AuctionAward"]["ExistDay"]
				local sSender = tIntegralAuctionNpc_Text["Mail"]["Sender"]
				local sTitle = tIntegralAuctionNpc_Text["Mail"]["Title"]
				local sContent = string.format(tIntegralAuctionNpc_Text["Mail"]["Content"]["SecondAward"], k, nPriceGlobalData, nSecondPriceData, sItemName)
				
				--发邮件
				Sys_SendMail(nPlayerPriceData,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
				
				Sys_SaveActionRewardLog(string.format(tIntegralAuctionNpc_Log["Second"], nTreasureGlobalData, 1), nPlayerPriceData)
			end
			
			--退票操作
			if tIntegralAuctionNpc_SecondBox[k][i] ~= nil and next(tIntegralAuctionNpc_SecondBox[k][i]) ~= nil then
				for m,n in pairs(tIntegralAuctionNpc_SecondBox[k][i]) do
					--local nBackEvent = tIntegralAuctionNpc_Stc["Second"]["Event"]
					--local nBackType = tIntegralAuctionNpc_Stc["Second"]["Type"]
					
					local nReturnTicket = 0
					
					--当前最高的玩家只退差价
					if m == nPlayerPriceData then
						--Task_AddStatistic(nBackEvent,nBackType,nPriceGlobalData - nSecondPriceData,1,m)
						
						nReturnTicket = nPriceGlobalData - nSecondPriceData
					--其余人全退另外发邮件
					else
						--Task_AddStatistic(nBackEvent,nBackType,n,1,m)
						
						local sContent = string.format(tIntegralAuctionNpc_Text["Mail"]["Content"]["SecondFail"], k)
						local nExistDay = tIntegralAuctionNpc_Mail["AuctionReturn"]["ExistDay"]
						local sSender = tIntegralAuctionNpc_Text["Mail"]["Sender"]
						local sTitle = tIntegralAuctionNpc_Text["Mail"]["Title"]
						
						--发邮件
						Sys_SendMail(m,0,0,0,0,nExistDay,sSender,sTitle,sContent)
						
						nReturnTicket = n
					end
					
					--往退票临时数据上添加数据
					if tIntegralAuctionNpc_ReturnTicket["Second"][m] == nil then
						tIntegralAuctionNpc_ReturnTicket["Second"][m] = nReturnTicket
					else
						local nNowBackNum = tIntegralAuctionNpc_ReturnTicket["Second"][m]
						tIntegralAuctionNpc_ReturnTicket["Second"][m] = nNowBackNum + nReturnTicket
					end
				end
			end
		end
	end
	
	--清空当前玩家信息
	for k,v in pairs(tIntegralAuctionNpc_GlobalData["Second"]["Player"]) do
		for i,j in pairs(v) do
			Sys_SetSynaGlobalData(j["Id"],j["Pos"],0)
		end
	end
	
	--清空特惠宝箱投注表
	for i = 1, #tIntegralAuctionNpc_SecondBox do
		for j = 1, #tIntegralAuctionNpc_SecondBox[i] do
			tIntegralAuctionNpc_SecondBox[i][j] = {}
		end
	end
end

--每天众筹宝箱发奖
function IntegralAuctionNpc_CrowdGiveAward()
	--先进行开奖逻辑
	IntegralAuctionNpc_CrowdOpen()
	
	for k,v in pairs(tIntegralAuctionNpc_GlobalData["Crowd"]["Treasure"]) do
		for i,j in pairs(v) do
			--获取动态码上的宝物信息
			local nTreasureGlobalData = Get_SysDynaGlobalData(j["Id"],j["Pos"])
			
			local sItemName = ""
			
			if nTreasureGlobalData > 0 then
				sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
			end
			
			local tCrowd = CommonFunc_Copy(tIntegralAuctionNpc_CrowdBox[k][i])
			
			if tCrowd ~= nil and next(tCrowd) ~= nil then
				--m保存的是玩家id
				for m,n in pairs(tCrowd) do
					--发放众筹奖励
					if m > 0 and n["IsGet"] ~= nil and n["IsGet"] and nTreasureGlobalData > 0 then
						local nActionId = tIntegralAuctionNpc_Mail["AuctionAward"]["ActionId"][nTreasureGlobalData] or 0
						local nExistDay = tIntegralAuctionNpc_Mail["AuctionAward"]["ExistDay"]
						local sSender = tIntegralAuctionNpc_Text["Mail"]["Sender"]
						local sTitle = tIntegralAuctionNpc_Text["Mail"]["Title"]
						local sContent = string.format(tIntegralAuctionNpc_Text["Mail"]["Content"]["CrowdAward"], sItemName)
						
						--发邮件
						Sys_SendMail(m,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
						
						Sys_SaveActionRewardLog(string.format(tIntegralAuctionNpc_Log["Crowd"], nTreasureGlobalData, 1), m)
						
						--全服公告
						if n["Name"] ~= nil then
							Sys_TalkBroadcast(string.format(tIntegralAuctionNpc_Text["Broadcast"]["CrowdAward"], n["Name"], sItemName))
						end
					--金票众筹宝箱没有拿到奖励的发放安慰奖
					elseif m > 0 and n["IsGet"] ~= nil and (not n["IsGet"]) and k > 1 then
						local nActionId = tIntegralAuctionNpc_Mail["CrowdBack"]["ActionId"]
						local nExistDay = tIntegralAuctionNpc_Mail["CrowdBack"]["ExistDay"]
						local sSender = tIntegralAuctionNpc_Text["Mail"]["Sender"]
						local sTitle = tIntegralAuctionNpc_Text["Mail"]["Title"]
						local sContent = tIntegralAuctionNpc_Text["Mail"]["Content"]["CrowdBack"]
						
						--发邮件
						Sys_SendMail(m,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
						
						Sys_SaveActionRewardLog(tIntegralAuctionNpc_Log["CrowdAttend"], m)
					end
				end
			end
		end
	end
	
	--清空众筹宝箱投注表
	for i = 1, #tIntegralAuctionNpc_CrowdBox do
		for j = 1, #tIntegralAuctionNpc_CrowdBox[i] do
			tIntegralAuctionNpc_CrowdBox[i][j] = {}
		end
	end
end

--回收日气力奖励发奖
function IntegralAuctionNpc_GetStrengthRecycle()
	if next(tIntegralAuctionNpc_Strength) == nil then
		return
	end
	
	local nEvent = tIntegralAuctionNpc_Stc["GetStrength"]["Event"]
	local nType = tIntegralAuctionNpc_Stc["GetStrength"]["Type"]
	
	for k,v in pairs(tIntegralAuctionNpc_Strength) do
		local nStrengthData = Get_UserStatisticValue(nEvent,nType,v)
		
		--判断是否已经在回收日领取过
		if nStrengthData < 1 then
			local nActionId = tIntegralAuctionNpc_Mail["Strength"]["ActionId"]
			local nExistDay = tIntegralAuctionNpc_Mail["Strength"]["ExistDay"]
			local sSender = tIntegralAuctionNpc_Text["Mail"]["Sender"]
			local sTitle = tIntegralAuctionNpc_Text["Mail"]["Title"]
			local nData, nGlobalData, nStrength, nPercent = IntegralAuctionNpc_GetRecycle(v)
			
			local sContent = tIntegralAuctionNpc_Text["Mail"]["Content"]["GetStrength"]
			
			sContent = string.format(sContent, nData, nPercent, nStrength)
			
			--发邮件
			Sys_SendMail(v,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			
			Sys_SaveActionRewardLog(tIntegralAuctionNpc_Log["GetStrength"], v)
		end
	end
	
	--发奖后把表清空，防止重复发奖
	tIntegralAuctionNpc_Strength = {}
end

--掉落通用
function IntegralAuctionNpc_KillMonsterDrop(sIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	local tAward = CommonFunc_Copy(tIntegralAuctionNpc_Reward[sIndex])
	
	--空间不足
	if not RewardTemplate_CheckSpace(tAward, nUserId) then
		sItemName = Get_ItemtypeName(tAward["RewardItem"][1]["Id"])
		User_TalkChannel2005(string.format(tIntegralAuctionNpc_Text["Channel2005"]["DropNoSpace"], sItemName), nUserId)
		return
	end
	
	local nStartNum = 0
	local nEndNum = 0
	
	local nEvent = 0
	local nType = 0
	
	--是否有掩码控制
	if tIntegralAuctionNpc_Stc[sIndex] == nil then
		nStartNum = tIntegralAuctionNpc_Cont["DropGoldTicket"]["Start"]
		nEndNum = tIntegralAuctionNpc_Cont["DropGoldTicket"]["End"]
	else
		nEndNum = tIntegralAuctionNpc_Stc[sIndex]["TotalRandom"]
		nEvent = tIntegralAuctionNpc_Stc[sIndex]["Event"]
		nType = tIntegralAuctionNpc_Stc[sIndex]["Type"]
		
		Task_StcReset(nEvent,nType,nUserId)
		
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		--计算掉落概率在第几档
		for i = 1, #tIntegralAuctionNpc_Stc[sIndex]["Data"] do
			if nData < tIntegralAuctionNpc_Stc[sIndex]["Data"][i]["Num"] then
				nStartNum = tIntegralAuctionNpc_Stc[sIndex]["Data"][i]["Random"]
				break
			end
		end
		
		--掉落数量超出已配置的最大值，则概率配置在最后一档
		if nStartNum == 0 then
			local nIndex = #tIntegralAuctionNpc_Stc[sIndex]["Data"]
			nStartNum = tIntegralAuctionNpc_Stc[sIndex]["Data"][nIndex]["Random"]
		end
	end
	
	--概率掉落
	if Sys_Random(nStartNum,nEndNum) then
		if nEvent ~= 0 or nType ~= 0 then
			Task_AddStatistic(nEvent,nType,1,1,nUserId)
		end
		
		RewardTemplate_UseItemAndMsg(tAward, nUserId)
	end
end

--怪物掉落
function IntegralAuctionNpc_KillMonster()
	--时间判断
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		return
	end
	
	local nUserId = Get_UserId()
	
	--掉落银票
	IntegralAuctionNpc_KillMonsterDrop("DropTicket", nUserId)
	
	--掉落银票交易券（有掉落特权）
	if IntegralAuctionNpc_IsGetParseNumber("ScoreAward", tIntegralAuctionNpc_Cont["Index"][5], nUserId) then
		IntegralAuctionNpc_KillMonsterDrop("DropDealTicket", nUserId)
	end
	
	--掉落金票
	IntegralAuctionNpc_KillMonsterDrop("DropGoldTicket", nUserId)
end

--切屏
function IntegralAuctionNpc_Trans(nTrapType)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	
	--传送限制
	for k,v in pairs(tIntegralAuctionNpc_Cont["NoTrans"]) do
		if nMapDoc == v then
			Sys_MsgBox(tIntegralAuctionNpc_Text["MsgBox"]["NoTrans"][v], nil, nil, nUserId)
			return
		end
	end
	
	IntegralAuctionNpc_Trap(nil,nTrapType)
end

function IntegralAuctionNpc_Trap(nTrapId,nTrapType)
	if tIntegralAuctionNpc_Cont["Bound"][nTrapType] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	local nMapId = tIntegralAuctionNpc_Cont["Bound"][nTrapType]["MapId"]
	local nBoundX = tIntegralAuctionNpc_Cont["Bound"][nTrapType]["X"]
	local nBoundY = tIntegralAuctionNpc_Cont["Bound"][nTrapType]["Y"]
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1,nUserId)
end

--寻路
function IntegralAuctionNpc_Where(nNpcId)
	--时间检测
	if not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		User_TalkChannel2005(tIntegralAuctionNpc_Text["Channel2005"]["End"])
		return
	end
	
	local nUserId = Get_UserId()
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)
	local nMapId = Get_NpcMapID(nNpcId)
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId,nUserId)
end

--全服邀请
function IntegralAuctionNpc_TransToNpc()
	Sys_TalkBroadcast(tIntegralAuctionNpc_Text["Broadcast"]["AttendBuy"])
end

function IntegralAuctionNpc_ChkLevel()
	local nUserId = Get_UserId()
	local nLevel = tIntegralAuctionNpc_Cont["Level"]
	local nMetempsychosis = tIntegralAuctionNpc_Cont["Metempsychosis"]
	
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return true
	else
		return false
	end
end

--判断玩家是否已经在榜上
function IntegralAuctionNpc_ChkGuanjiaRank(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nIndex = 0
	
	for i = 1, 6 do
		if next(tIntegralAuctionNpc_AuctionBox[i][1]) ~= nil then
			for k,v in pairs(tIntegralAuctionNpc_AuctionBox[i][1]) do
				if v["Id"] == nUserId then
					nIndex = i
					break
				end
			end
		end
		
		if nIndex ~= 0 then
			break
		end
	end
	
	return nIndex
end

--沈管家对白判断
function IntegralAuctionNpc_GuanJiaChk()
	local nNpcId = Get_NpcId()
	
	--不在活动时间
	if not Sys_ChkFullTime(tActivityTime["DoubleEleven2018"]["ActTime"]) then
		return false
	end
	
	local nIndex = IntegralAuctionNpc_ChkGuanjiaRank()
	
	--等级判断
	if IntegralAuctionNpc_ChkLevel() then
		--每日竞拍时间判断
		if Sys_ChkDayTime(tIntegralAuctionNpc_Time["AuctionCan"]) then
			if nIndex == 0 then
				tNpcGossip[nNpcId]["tOption1-2"] = {123,124,125,126,127,128}
			else
				tNpcGossip[nNpcId]["tOption1-2"] = {122 + nIndex}
			end
			
		else
			tNpcGossip[nNpcId]["tOption1-2"] = {122}
		end
	else
		tNpcGossip[nNpcId]["tOption1-2"] = {121}
	end
	
	
	
	for i = 1, 6 do
		local sTotal = ""
		
		--获取动态码上的宝物信息
		local nTreasureGlobalId = tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][i][1]["Id"]
		local nTreasurePos = tIntegralAuctionNpc_GlobalData["Auction"]["Treasure"][i][1]["Pos"]
		local nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
		
		--获取价格信息
		local nPrice = 0
		
		local sItemName = ""
		
		if nTreasureGlobalData <= 0 then
			--动态码上没有宝物信息，重新刷新
			IntegralAuctionNpc_AuctionUpdate("Auction")
			--重新获取
			nTreasureGlobalData = Get_SysDynaGlobalData(nTreasureGlobalId,nTreasurePos)
		end
		
		if nTreasureGlobalData > 0 then
			sItemName = tIntegralAuctionNpc_Text["ItemName"][nTreasureGlobalData] or Get_ItemtypeName(nTreasureGlobalData)
			
			--宝物数量
			local nNum = tIntegralAuctionNpc_Item["Num"][nTreasureGlobalData]
			
			local nLeft = tIntegralAuctionNpc_Cont["Align"]["Auction"]["Left"]
			local nMiddle = tIntegralAuctionNpc_Cont["Align"]["Auction"]["Middle"]
			local nRight = tIntegralAuctionNpc_Cont["Align"]["Auction"]["Right"]
			
			--显示最低得手标价
			if tIntegralAuctionNpc_AuctionBox[i][1][nNum] ~= nil then
				nPrice = tIntegralAuctionNpc_AuctionBox[i][1][nNum]["Price"]
			else
				nPrice = 0
			end
			
			--获取宝物底价
			local nLowPrice = tIntegralAuctionNpc_Item["LowPrice"][nTreasureGlobalData]
			
			if nPrice < nLowPrice then
				nPrice = nLowPrice
			end
			
			local sAuctionName = nPrice..tIntegralAuctionNpc_Text["EMoney"]
			
			sTotal = Sys_CenterAline(sItemName,nLeft,tostring(nNum),nMiddle,sAuctionName,nRight)
			
			if nIndex == i then
				sTotal = sTotal..tIntegralAuctionNpc_Text["AlreadyAuction"]
				sItemName = tIntegralAuctionNpc_Text["AuctionAddOption"]..sItemName
			else
				sItemName = tIntegralAuctionNpc_Text["AuctionOption"]..sItemName
			end
		end
		
		tNpcGossip[nNpcId]["Text12"..(i + 4)] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Text12"..(i + 4)], sTotal)
		tNpcGossip[nNpcId]["Option12"..(i + 2)] = string.format(tIntegralAuctionNpc_Text[nNpcId]["Option12"..(i + 2)], sItemName)
		
	end
	
	return true
end

--二次确认掩码清零
function IntegralAuctionNpc_ConfirmToZero()
	local nUserId = Get_UserId()
	local nEvent = tIntegralAuctionNpc_Stc["Confirm"]["Event"]
	local nType = tIntegralAuctionNpc_Stc["Confirm"]["Type"]
	
	Task_SetStatistic(nEvent,nType,0,1,nUserId)
end

--可选包打开
function IntegralAuctionNpc_ChooseBagOpen(nItemId, nIndex)
	--未配置奖励数据
	if tIntegralAuctionNpc_Reward[nItemId] == nil then
		return
	end
	
	if tIntegralAuctionNpc_Reward[nItemId][nIndex] == nil then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tIntegralAuctionNpc_Reward[nItemId][nIndex])
end

---------------------------------------------NPC模块---------------------------------------------
-- --贾世德
-- tNpcFace[1129] = 90
-- tNpcGossip[22510] = tNpcGossip[22510] or DefaultNpc:new{}
-- tNpcGossip[22510]["DialogueText"] = tIntegralAuctionNpc_Text[22510]
-- tNpcGossip[22510]["OptionHidden"] = 1

-- --活动时间前
-- tNpcGossip[22510]["Text1-1"] = {111,112,113,114,115,116,117,118}
-- tNpcGossip[22510]["tOption1-1"] = {111}
-- tNpcGossip[22510]["ChkFunc1-1"] = function()
	-- return CommonFunc_GetBeforeActivityTime(tIntegralAuctionNpc_Time["ActivityTime"])
-- end

-- --活动时间内
-- tNpcGossip[22510]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1214,1215,1216}
-- tNpcGossip[22510]["tOption1-2"] = {121,122,123,124,125}
-- tNpcGossip[22510]["ChkFunc1-2"] = function()
	-- local nUserId = Get_UserId()
	-- local nLevel = tIntegralAuctionNpc_Cont["Level"]
	-- local nMetempsychosis = tIntegralAuctionNpc_Cont["Metempsychosis"]
	-- if Sys_ChkFullTime(tIntegralAuctionNpc_Time["ActivityTime"]) then
		-- if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
			-- tNpcGossip[22510]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1214,1216}
			-- tNpcGossip[22510]["tOption1-2"] = {122,123,124,125}
		-- else
			-- tNpcGossip[22510]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1214,1215,1216}
			-- tNpcGossip[22510]["tOption1-2"] = {121}
		-- end
		
		-- return true
	-- else
		-- return false
	-- end
-- end
-- tNpcGossip[22510]["OptionFunc122"] = "IntegralAuctionNpc_ScoreAward"--今日竞拍积分奖励
-- tNpcGossip[22510]["OptionFunc123"] = "IntegralAuctionNpc_DisplayExchangeNum"--金票兑换银票
-- tNpcGossip[22510]["OptionFunc124"] = "IntegralAuctionNpc_BackTicket</N>3307041"--收回拍卖行银票
-- tNpcGossip[22510]["OptionFunc125"] = "IntegralAuctionNpc_BackTicket</N>3307043"--收回拍卖行金票

-- --回收日
-- tNpcGossip[22510]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310}
-- tNpcGossip[22510]["tOption1-3"] = {131,132}
-- tNpcGossip[22510]["ChkFunc1-3"] = function()
	-- if CommonFunc_GetAfterActivityTime(tIntegralAuctionNpc_Time["ActivityTime"]) and Sys_ChkFullTime(tIntegralAuctionNpc_Time["ReturnTime"]) then
		-- local nData, nGlobalData = IntegralAuctionNpc_GetRecycle()
		-- tNpcGossip[22510]["Text1310"] = string.format(tIntegralAuctionNpc_Text[22510]["Text1310"], nData, nGlobalData)
		-- return true
	-- else
		-- return false
	-- end
-- end
-- tNpcGossip[22510]["OptionFunc131"] = "IntegralAuctionNpc_Recycle</N>3307041"--上交全部银票
-- tNpcGossip[22510]["OptionFunc132"] = "IntegralAuctionNpc_DisplayExchangeNum"--金票兑换银票

-- --活动时间后，在回收日之后
-- tNpcGossip[22510]["Text1-4"] = {141,142,143,144,145,146}
-- tNpcGossip[22510]["tOption1-4"] = {141,142,143}
-- tNpcGossip[22510]["ChkFunc1-4"] = function()
	-- if CommonFunc_GetAfterActivityTime(tIntegralAuctionNpc_Time["ActivityTime"]) and (not Sys_ChkFullTime(tIntegralAuctionNpc_Time["ReturnTime"])) then
		-- local nEvent = tIntegralAuctionNpc_Stc["GetStrength"]["Event"]
		-- local nType = tIntegralAuctionNpc_Stc["GetStrength"]["Type"]
		-- local nStrengthData = Get_UserStatisticValue(nEvent,nType)
		-- local nData, nGlobalData, nStrength, nPercent = IntegralAuctionNpc_GetRecycle()
		-- local nTotal = tIntegralAuctionNpc_Cont["TotalStrength"]
		-- if nData > 0 and nStrengthData < 1 then
			-- tNpcGossip[22510]["Text146"] = string.format(tIntegralAuctionNpc_Text[22510]["Text146"], nData, nPercent, nStrength)
			-- tNpcGossip[22510]["Text1-4"] = {141,142,143,144,145,146}
			-- tNpcGossip[22510]["tOption1-4"] = {141,142,143}
		-- else
			-- tNpcGossip[22510]["Text1-4"] = {141,142,143,144,145}
			-- tNpcGossip[22510]["tOption1-4"] = {141,142}
		-- end
		-- return true
	-- else
		-- return false
	-- end
-- end
-- tNpcGossip[22510]["OptionFunc141"] = "IntegralAuctionNpc_ExChangeCultivation</N>3307041"--兑换1点修行值(100银票)
-- tNpcGossip[22510]["OptionFunc142"] = "IntegralAuctionNpc_ExChangeCultivation</N>3307043"--兑换1点修行值(1张金票)
-- tNpcGossip[22510]["OptionFunc143"] = "IntegralAuctionNpc_GetRecycleAward"--领取气力值奖励

-- --今日竞拍积分奖励
-- tNpcGossip[22510]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110}
-- tNpcGossip[22510]["tOption2-1"] = {211,212,213}
-- tNpcGossip[22510]["OptionFunc211"] = "IntegralAuctionNpc_GetScoreAward</N>1"--上交当前阶段银票
-- tNpcGossip[22510]["OptionFunc212"] = "IntegralAuctionNpc_GetScoreAward"--上交全部银票
-- tNpcGossip[22510]["OptionFunc213"] = "LinkNpcMain"

-- --金票兑换银票
-- tNpcGossip[22510]["Text2-2"] = {221,222,223,224,225}
-- tNpcGossip[22510]["tOption2-2"] = {221,222}
-- tNpcGossip[22510]["OptionFunc221"] = "IntegralAuctionNpc_GoldToSilverTicket</N>1"--兑换1张
-- tNpcGossip[22510]["OptionFunc222"] = "IntegralAuctionNpc_GoldToSilverTicket"--兑换全部

-- --金票银票兑换修行值不够
-- tNpcGossip[22510]["Text2-3"] = {231}
-- tNpcGossip[22510]["tOption2-3"] = {231}

-- --收回拍卖行银票
-- tNpcGossip[22510]["Text2-4"] = {241,242,243,244,245}
-- tNpcGossip[22510]["tOption2-4"] = {241}
-- tNpcGossip[22510]["OptionFunc241"] = "IntegralAuctionNpc_ConfirmBackTicket</N>3307041"--确认收回

-- --收回拍卖行金票
-- tNpcGossip[22510]["Text2-5"] = {251,252,253,254}
-- tNpcGossip[22510]["tOption2-5"] = {251}
-- tNpcGossip[22510]["OptionFunc251"] = "IntegralAuctionNpc_ConfirmBackTicket</N>3307043"--确认收回

-- --银票兑换珍宝无银票
-- tNpcGossip[22510]["Text2-6"] = {261}
-- tNpcGossip[22510]["tOption2-6"] = {261}

-- --领取气力值奖励（已领）
-- tNpcGossip[22510]["Text2-7"] = {271}
-- tNpcGossip[22510]["tOption2-7"] = {271}

-- --领取积分奖励（积分不够）
-- tNpcGossip[22510]["Text3-1"] = {311}
-- tNpcGossip[22510]["tOption3-1"] = {311}

-- --领取积分奖励（已领）
-- tNpcGossip[22510]["Text3-2"] = {321}
-- tNpcGossip[22510]["tOption3-2"] = {321}

-- --领取积分奖励（空间不足）
-- tNpcGossip[22510]["Text3-3"] = {331}
-- tNpcGossip[22510]["tOption3-3"] = {331}

-- --领取积分奖励（领奖成功对白）
-- tNpcGossip[22510]["Text3-4"] = {341,342,343,344}
-- tNpcGossip[22510]["tOption3-4"] = {341}
-- tNpcGossip[22510]["OptionFunc341"] = "IntegralAuctionNpc_ScoreAward"

-- --领取积分奖励（领奖成功对白，当前是最后一个奖励）
-- tNpcGossip[22510]["Text3-5"] = {351,352,353,354}
-- tNpcGossip[22510]["tOption3-5"] = {351}
-- tNpcGossip[22510]["OptionFunc351"] = "IntegralAuctionNpc_ScoreAward"

-- --金票兑换银票不够
-- tNpcGossip[22510]["Text3-6"] = {361}
-- tNpcGossip[22510]["tOption3-6"] = {361}

-- --没有可回收的票
-- tNpcGossip[22510]["Text3-7"] = {371}
-- tNpcGossip[22510]["tOption3-7"] = {371}

-- --回收背包空间满
-- tNpcGossip[22510]["Text3-8"] = {381}
-- tNpcGossip[22510]["tOption3-8"] = {381}

-- --1号竞拍宝箱
-- tNpcGossip[22511] = tNpcGossip[22511] or DefaultNpc:new{}
-- tNpcGossip[22511]["DialogueText"] = tIntegralAuctionNpc_Text[22511]
-- tNpcGossip[22511]["OptionHidden"] = 1

-- tNpcGossip[22511]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
-- tNpcGossip[22511]["tOption1-1"] = {111,112,113,114,115}
-- tNpcGossip[22511]["ChkFunc1-1"] = function()
	-- return IntegralAuctionNpc_AuctionChk()
-- end
-- tNpcGossip[22511]["OptionFunc111"] = "IntegralAuctionNpc_EditTreasureBet</N>1"--我要投注宝物1
-- tNpcGossip[22511]["OptionFunc112"] = "IntegralAuctionNpc_EditTreasureBet</N>1</N>1"--预测今日最高标价

-- --我要投注（宝物就一个）
-- tNpcGossip[22511]["Text2-1"] = {211,212,213,214,215}
-- tNpcGossip[22511]["tOption2-1"] = {211,212}
-- tNpcGossip[22511]["OptionFunc211"] = "IntegralAuctionNpc_ConfirmTreasureBet"

-- --我要投注（宝物有好多个）
-- tNpcGossip[22511]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212,2213,2214,2215,2216}
-- tNpcGossip[22511]["tOption2-2"] = {221,222}
-- tNpcGossip[22511]["OptionFunc221"] = "IntegralAuctionNpc_ConfirmTreasureBet"

-- --已预测过的对白
-- tNpcGossip[22511]["Text2-4"] = {241,242}
-- tNpcGossip[22511]["tOption2-4"] = {241}

-- --2号竞拍宝箱
-- tNpcGossip[22512] = CommonFunc_Copy(tNpcGossip[22511])
-- --3号竞拍宝箱
-- tNpcGossip[22513] = CommonFunc_Copy(tNpcGossip[22511])
-- --4号竞拍宝箱
-- tNpcGossip[22514] = CommonFunc_Copy(tNpcGossip[22511])
-- --金票竞拍宝箱
-- tNpcGossip[22515] = CommonFunc_Copy(tNpcGossip[22511])
-- tNpcGossip[22515]["OptionChkFunc112"] = function() return false end

-- --1号特惠宝箱
-- tNpcGossip[22516] = tNpcGossip[22516] or DefaultNpc:new{}
-- tNpcGossip[22516]["DialogueText"] = tIntegralAuctionNpc_Text[22516]
-- tNpcGossip[22516]["OptionHidden"] = 1

-- tNpcGossip[22516]["Text1-1"] = {111,112,113,114,115,116,117,118}
-- tNpcGossip[22516]["tOption1-1"] = {111,112,113,114,115}
-- tNpcGossip[22516]["ChkFunc1-1"] = function()
	-- return IntegralAuctionNpc_SecondChk()
-- end
-- tNpcGossip[22516]["OptionFunc111"] = "IntegralAuctionNpc_EditSecondBet</N>1"--我要投注宝物1
-- tNpcGossip[22516]["OptionPoint112"] = "2-2"--如何参加次高价竞拍？

-- --如何参加次高价竞拍？
-- tNpcGossip[22516]["Text2-2"] = {221,222,223,224,225,226,227,228}
-- tNpcGossip[22516]["tOption2-2"] = {221}
-- tNpcGossip[22516]["OptionFunc221"] = "LinkNpcMain"

-- --2号特惠宝箱
-- tNpcGossip[22517] = CommonFunc_Copy(tNpcGossip[22516])
-- --3号特惠宝箱
-- tNpcGossip[22518] = CommonFunc_Copy(tNpcGossip[22516])
-- --4号特惠宝箱
-- tNpcGossip[22519] = CommonFunc_Copy(tNpcGossip[22516])
-- --5号特惠宝箱
-- tNpcGossip[22520] = CommonFunc_Copy(tNpcGossip[22516])

-- --银票众筹宝箱
-- tNpcGossip[22528] = tNpcGossip[22528] or DefaultNpc:new{}
-- tNpcGossip[22528]["DialogueText"] = tIntegralAuctionNpc_Text[22528]
-- tNpcGossip[22528]["OptionHidden"] = 1

-- tNpcGossip[22528]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}
-- tNpcGossip[22528]["tOption1-1"] = {111,112,113,114,115,116,117}
-- tNpcGossip[22528]["ChkFunc1-1"] = function()
	-- return IntegralAuctionNpc_CrowdChk1()
-- end
-- tNpcGossip[22528]["OptionFunc111"] = "IntegralAuctionNpc_CrowdBet</N>1"--我要投注宝物1
-- tNpcGossip[22528]["OptionFunc112"] = "IntegralAuctionNpc_CrowdBet</N>2"--我要投注宝物2
-- tNpcGossip[22528]["OptionFunc113"] = "IntegralAuctionNpc_CrowdBet</N>3"--我要投注宝物3
-- tNpcGossip[22528]["OptionPoint114"] = "2-2"--如何参与众筹？

-- tNpcGossip[22528]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1214,1215}
-- tNpcGossip[22528]["tOption1-2"] = {121}
-- tNpcGossip[22528]["ChkFunc1-2"] = function()
	-- return IntegralAuctionNpc_CrowdChk2()
-- end

-- tNpcGossip[22528]["Text2-1"] = {211}
-- tNpcGossip[22528]["tOption2-1"] = {211}

-- --如何参与众筹？
-- tNpcGossip[22528]["Text2-2"] = {221,222,223,224,225,226,227}
-- tNpcGossip[22528]["tOption2-2"] = {221}
-- tNpcGossip[22528]["OptionFunc221"] = "LinkNpcMain"

-- --金票众筹宝箱
-- tNpcGossip[22529] = CommonFunc_Copy(tNpcGossip[22528])

-- --沈万商
-- tNpcFace[1149] = 56
-- tNpcGossip[22538] = tNpcGossip[22538] or DefaultNpc:new{}
-- tNpcGossip[22538]["DialogueText"] = tIntegralAuctionNpc_Text[22538]
-- tNpcGossip[22538]["OptionHidden"] = 1

-- tNpcGossip[22538]["Text1-1"] = {111,112,113,114,115,116,117}
-- tNpcGossip[22538]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}
-- tNpcGossip[22538]["ChkFunc1-1"] = function()
	-- return IntegralAuctionNpc_BuyChk()
-- end
-- tNpcGossip[22538]["OptionFunc111"] = "IntegralAuctionNpc_BuyBet</N>1"--抢购商品1
-- tNpcGossip[22538]["OptionFunc112"] = "IntegralAuctionNpc_BuyBet</N>2"--抢购商品2
-- tNpcGossip[22538]["OptionFunc113"] = "IntegralAuctionNpc_BuyBet</N>3"--抢购商品3
-- tNpcGossip[22538]["OptionFunc114"] = "IntegralAuctionNpc_BuyBet</N>4"--抢购商品4
-- tNpcGossip[22538]["OptionFunc115"] = "IntegralAuctionNpc_BuyBet</N>5"--抢购商品5
-- tNpcGossip[22538]["OptionFunc116"] = "IntegralAuctionNpc_BuyBet</N>6"--抢购商品6
-- tNpcGossip[22538]["OptionFunc117"] = "IntegralAuctionNpc_BuyBet</N>7"--抢购商品7
-- tNpcGossip[22538]["OptionFunc118"] = "IntegralAuctionNpc_BuyBet</N>8"--抢购商品8
-- tNpcGossip[22538]["OptionFunc119"] = "IntegralAuctionNpc_BuyBet</N>9"--抢购商品9

-- --银票不够
-- tNpcGossip[22538]["Text2-1"] = {211}
-- tNpcGossip[22538]["tOption2-1"] = {211}

-- --背包满
-- tNpcGossip[22538]["Text2-2"] = {221}
-- tNpcGossip[22538]["tOption2-2"] = {221}

-- --已被人抢购走了
-- tNpcGossip[22538]["Text2-3"] = {231}
-- tNpcGossip[22538]["tOption2-3"] = {231}

-- --自己是否已经抢购过
-- tNpcGossip[22538]["Text2-4"] = {241}
-- tNpcGossip[22538]["tOption2-4"] = {241}

-- --沈管家
-- tNpcFace[4167] = 77
-- tNpcGossip[23500] = tNpcGossip[23500] or DefaultNpc:new{}
-- tNpcGossip[23500]["DialogueText"] = tIntegralAuctionNpc_Text[23500]
-- tNpcGossip[23500]["OptionHidden"] = 1
-- --活动时间前
-- tNpcGossip[23500]["Text1-1"] = {111,112,113,114,115,116}
-- tNpcGossip[23500]["tOption1-1"] = {111}
-- tNpcGossip[23500]["ChkFunc1-1"] = function()
	-- return CommonFunc_GetBeforeActivityTime(tActivityTime["DoubleEleven2018"]["ActTime"])
-- end

-- --活动时间内
-- tNpcGossip[23500]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213}
-- tNpcGossip[23500]["tOption1-2"] = {121,122,123,124,125,126,127,128,129}
-- tNpcGossip[23500]["ChkFunc1-2"] = function()
	-- return IntegralAuctionNpc_GuanJiaChk()
-- end
-- tNpcGossip[23500]["OptionFunc123"] = "IntegralAuctionNpc_EditTreasureBet</N>1"
-- tNpcGossip[23500]["OptionFunc124"] = "IntegralAuctionNpc_EditTreasureBet</N>2"
-- tNpcGossip[23500]["OptionFunc125"] = "IntegralAuctionNpc_EditTreasureBet</N>3"
-- tNpcGossip[23500]["OptionFunc126"] = "IntegralAuctionNpc_EditTreasureBet</N>4"
-- tNpcGossip[23500]["OptionFunc127"] = "IntegralAuctionNpc_EditTreasureBet</N>5"
-- tNpcGossip[23500]["OptionFunc128"] = "IntegralAuctionNpc_EditTreasureBet</N>6"
-- tNpcGossip[23500]["OptionPoint129"] = "2-3"

-- --活动时间后
-- tNpcGossip[23500]["Text1-3"] = {131,132}
-- tNpcGossip[23500]["tOption1-3"] = {131}
-- tNpcGossip[23500]["ChkFunc1-3"] = function()
	-- return CommonFunc_GetAfterActivityTime(tActivityTime["DoubleEleven2018"]["ActTime"])
-- end

-- --竞拍宝物，只有一个
-- tNpcGossip[23500]["Text2-1"] = {211,212,213,214}
-- tNpcGossip[23500]["tOption2-1"] = {211,212}
-- tNpcGossip[23500]["OptionFunc211"] = "IntegralAuctionNpc_ConfirmTreasureBet"
-- tNpcGossip[23500]["OptionFunc212"] = "LinkNpcMain"

-- --竞拍宝物，不止一个
-- tNpcGossip[23500]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212,2213,2214,2215}
-- tNpcGossip[23500]["tOption2-2"] = {221,222}
-- tNpcGossip[23500]["OptionFunc221"] = "IntegralAuctionNpc_ConfirmTreasureBet"
-- tNpcGossip[23500]["OptionFunc222"] = "LinkNpcMain"

-- --竞拍规则
-- tNpcGossip[23500]["Text2-3"] = {231,232,233,234,235,236}
-- tNpcGossip[23500]["tOption2-3"] = {231}
-- tNpcGossip[23500]["OptionFunc231"] = "LinkNpcMain"

-- --沈来宝
-- tNpcFace[4176] = 25
-- tNpcGossip[23503] = tNpcGossip[23503] or DefaultNpc:new{}
-- tNpcGossip[23503]["DialogueText"] = tIntegralAuctionNpc_Text[23503]
-- tNpcGossip[23503]["OptionHidden"] = 1
-- --活动时间前
-- tNpcGossip[23503]["Text1-1"] = {111,112,113,114}
-- tNpcGossip[23503]["tOption1-1"] = {111}
-- tNpcGossip[23503]["ChkFunc1-1"] = function()
	-- return CommonFunc_GetBeforeActivityTime(tActivityTime["DoubleEleven2018"]["ActTime"])
-- end
-- --活动时间内
-- tNpcGossip[23503]["Text1-2"] = {121,122,123}
-- tNpcGossip[23503]["tOption1-2"] = {121,122}
-- tNpcGossip[23503]["ChkFunc1-2"] = function()
	-- return Sys_ChkFullTime(tActivityTime["DoubleEleven2018"]["ActTime"])
-- end
-- tNpcGossip[23503]["OptionFunc122"] = "User_OpenDialog"
-- tNpcGossip[23503]["OptionChkFunc122"] = function()
	-- return IntegralAuctionNpc_ChkLevel()
 -- end
-- tNpcGossip[23503]["OptionChkFunc121"] = function()
	-- return not IntegralAuctionNpc_ChkLevel()
 -- end

-- --活动时间后
-- tNpcGossip[23503]["Text1-3"] = {131,132}
-- tNpcGossip[23503]["tOption1-3"] = {131}
-- tNpcGossip[23503]["ChkFunc1-3"] = function()
	-- return CommonFunc_GetAfterActivityTime(tActivityTime["DoubleEleven2018"]["ActTime"])
-- end

-- ---------------------------------------------物品模块---------------------------------------------
-- --周年有礼气力券
-- tItem[3308498] = tItem[3308498] or {}
-- tItem[3308498]["Function"] = function(nItemTypeId,sItemName)
	-- IntegralAuctionNpc_GetRecycleAward(nItemTypeId)
-- end

-- --50000修为值包
-- tItem[3311278] = tItem[3311278] or {}
-- tItem[3311278]["Function"] = function(nItemTypeId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tIntegralAuctionNpc_Reward[nItemTypeId])
-- end
-- --15000点气力值包
-- tItem[3311279] = tItem[3311278]
-- --万能神纹精粹*30
tItem[3311280] = tItem[3311280] or {}
tItem[3311280]["Function"] = function(nItemTypeId,sItemName)
	RewardTemplate_UseItemAndMsg(tIntegralAuctionNpc_Reward[nItemTypeId])
end
-- --万能神纹精粹*100
-- tItem[3311281] = tItem[3311278]
-- --8000修为值包
tItem[3311282] = tItem[3311282] or  {}
tItem[3311282]["Function"] = function(nItemTypeId,sItemName)
	RewardTemplate_UseItemAndMsg(tIntegralAuctionNpc_Reward[nItemTypeId])
end
--1500修为值包
tItem[3311283] = tItem[3311282]
-- --免费修炼丹包
-- tItem[3311284] = tItem[3311278]
-- --岫山玉包
-- tItem[3311285] = tItem[3311278]
-- --50修为值包
-- tItem[3311300] = tItem[3311278]
-- --150修为值包
-- tItem[3311301] = tItem[3311278]
-- --200修为值包
-- tItem[3311302] = tItem[3311278]
--300修为值包
tItem[3311303] = tItem[3311282]
-- --450修为值包
-- tItem[3311304] = tItem[3311278]
-- --600修为值包
-- tItem[3311305] = tItem[3311278]
-- --1000修为值包
tItem[3311306] = tItem[3311282]
-- --2000修为值包
tItem[3311307] = tItem[3311282]
-- --3600修为值包
-- tItem[3311308] = tItem[3311278]
-- --4000修为值包
-- tItem[3311309] = tItem[3311278]
-- --6000修为值包
-- tItem[3311310] = tItem[3311278]
-- --7500修为值包
-- tItem[3311311] = tItem[3311278]
-- --15000修为值包
-- tItem[3311312] = tItem[3311278]
-- --75000修为值包
-- tItem[3311313] = tItem[3311278]
-- --500修为值包
-- tItem[3311336] = tItem[3311278]
-- --3000修为值包
tItem[3311337] = tItem[3311282]
-- --5000修为值包
tItem[3311338] = tItem[3311282]
--10000修为值包
tItem[3311339] = tItem[3311282]
-- --12000修为值包
-- tItem[3311340] = tItem[3311278]
-- --18000修为值包
-- tItem[3311341] = tItem[3311278]
-- --25000修为值包
-- tItem[3311342] = tItem[3311278]
-- --36000修为值包
-- tItem[3311343] = tItem[3311278]
-- --55000修为值包
-- tItem[3311344] = tItem[3311278]
-- --5个万能神纹精粹包
-- tItem[3311345] = tItem[3311278]
-- --15个万能神纹精粹包
-- tItem[3311346] = tItem[3311278]
--50个万能神纹精粹包
tItem[3311347] = tItem[3311347] or {}
tItem[3311347]["Function"] = function(nItemTypeId,sItemName)
	RewardTemplate_UseItemAndMsg(tIntegralAuctionNpc_Reward[nItemTypeId])
end
-- --150个万能神纹精粹包
-- tItem[3311348] = tItem[3311278]
-- --300个万能神纹精粹包
tItem[3311349] = tItem[3311349] or {}
tItem[3311349]["Function"] = function(nItemTypeId,sItemName)
	RewardTemplate_UseItemAndMsg(tIntegralAuctionNpc_Reward[nItemTypeId])
end
-- --500个万能神纹精粹包
-- tItem[3311350] = tItem[3311278]
-- --1000个万能神纹精粹包
-- tItem[3311351] = tItem[3311278]
-- --1500个万能神纹精粹包
-- tItem[3311352] = tItem[3311278]
-- --250个万能神纹精粹包
-- tItem[3311386] = tItem[3311278]
-- --600个万能神纹精粹包
-- tItem[3311387] = tItem[3311278]
-- --3个万能神纹精粹包
-- tItem[3311388] = tItem[3311278]
-- --10个万能神纹精粹包
tItem[3311389] = tItem[3311389] or {}
tItem[3311389]["Function"] = function(nItemTypeId,sItemName)
	RewardTemplate_UseItemAndMsg(tIntegralAuctionNpc_Reward[nItemTypeId])
end
-- --5星时装外套可选包
-- tItemFace[3311353] = 1659
-- tItem[3311353] = {}
-- tItem[3311353]["DialogueText"] = tIntegralAuctionNpc_Text[3311353]
-- tItem[3311353]["Text1-1"] = {111}
-- tItem[3311353]["ChkFunc1-1"] = function() return true end
-- tItem[3311353]["tOption1-1"] = {111,112}
-- tItem[3311353]["OptionFunc111"] = "IntegralAuctionNpc_ChooseBagOpen</N>3311353</N>1"
-- tItem[3311353]["OptionFunc112"] = "IntegralAuctionNpc_ChooseBagOpen</N>3311353</N>2"
-- --5星坐骑外套可选包
-- tItemFace[3311354] = 1660
-- tItem[3311354] = {}
-- tItem[3311354]["DialogueText"] = tIntegralAuctionNpc_Text[3311354]
-- tItem[3311354]["Text1-1"] = {111}
-- tItem[3311354]["ChkFunc1-1"] = function() return true end
-- tItem[3311354]["tOption1-1"] = {111,112,113}
-- tItem[3311354]["OptionFunc111"] = "IntegralAuctionNpc_ChooseBagOpen</N>3311354</N>1"
-- tItem[3311354]["OptionFunc112"] = "IntegralAuctionNpc_ChooseBagOpen</N>3311354</N>2"
-- tItem[3311354]["OptionFunc113"] = "IntegralAuctionNpc_ChooseBagOpen</N>3311354</N>3"

-- --大明通宝
-- tItem[3311372] = tItem[3311372] or {}
-- tItem[3311372]["Function"] = function(nItemId,sItemName)
	-- if not Sys_ChkFullTime(tActivityTime["DoubleEleven2018"]["ActTime"]) then
		-- local nCount = Get_CountItemType(nItemId, 0)
		
		-- if nCount > 0 then
			-- local tAward = CommonFunc_Copy(tIntegralAuctionNpc_Reward[nItemId])
			
			-- tAward["DeleteItem"][1]["ItemNum"] = nCount
			-- tAward["RewardStrengthValue"]["Value"] = tAward["RewardStrengthValue"]["Value"] * nCount
			
			-- RewardTemplate_UseItemAndMsg(tAward)
		-- end
		
		-- return
	-- end
	
	-- NpcPosition_PathFind(23502)
-- end

-- --10个大明通宝包
-- tItem[3311429] = tItem[3311429] or {}
-- tItem[3311429]["Function"] = function(nItemId,sItemName)
	-- local nUserId = Get_UserId()
	
	-- if not Sys_ChkFullTime(tActivityTime["DoubleEleven2018"]["ActTime"]) then
		-- local nCount = Get_CountItemType(nItemId, 0)
		
		-- if Item_ChkMulItem(nItemId,nItemId,nCount) and Item_DelMulItem(nItemId,nItemId,nCount) then
			-- Sys_SaveActionRewardLog(string.format(tIntegralAuctionNpc_Log["DelItem"], nItemId, nCount))
			-- User_TalkChannel2005(tLuaRes[10004], nUserId)
		-- end
		
		-- return
	-- end
	
	-- local bFlag = RewardTemplate_UseItemAndMsg(tIntegralAuctionNpc_Reward[nItemId], nUserId)
	
	-- if bFlag then
		-- DoubleEleven2018_ContrastRich_CpsRecord(tIntegralAuctionNpc_Reward[nItemId]["EMoneyCost"],nUserId)
	-- end
-- end

-- --100个大明通宝包
-- tItem[3311430] = tItem[3311429]
-- ---------------------------------------------怪物模块---------------------------------------------
-- --片区怪
-- local tIntegralAuctionNpc_Monster = {}
	-- tIntegralAuctionNpc_Monster["ActivityTime"] = tIntegralAuctionNpc_Time["ActivityTime"]
	-- tIntegralAuctionNpc_Monster["Function"] = IntegralAuctionNpc_KillMonster
	-- tIntegralAuctionNpc_Monster["Area"] = {}
-- -- table.insert(tMonsterDrop_AreaLoad,tIntegralAuctionNpc_Monster)

-- ---------------------------------------------上线触发---------------------------------------------
-- -- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- -- table.insert(tSystem_PlayLogin_Func,IntegralAuctionNpc_Login)

-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,IntegralAuctionNpc_ConfirmToZero)

-- ---------------------------------------------时间自检---------------------------------------------

-- local IntegralAuctionNpc_TimeChk = {}
	-- --每小时更新一次
	-- IntegralAuctionNpc_TimeChk[1] = {}
	-- IntegralAuctionNpc_TimeChk[1]["ActivityTime"] = tIntegralAuctionNpc_Time["ReturnTime"]
	-- IntegralAuctionNpc_TimeChk[1]["TimeType"] = 5
	-- IntegralAuctionNpc_TimeChk[1]["Time"] = "00 01"
	-- IntegralAuctionNpc_TimeChk[1]["Func"] = IntegralAuctionNpc_EveryHour
-- -- table.insert(tSystemTime_InitialData,IntegralAuctionNpc_TimeChk[1])
	-- --每小时更新一次的标志位重新归零
	-- IntegralAuctionNpc_TimeChk[2] = {}
	-- IntegralAuctionNpc_TimeChk[2]["ActivityTime"] = tIntegralAuctionNpc_Time["ReturnTime"]
	-- IntegralAuctionNpc_TimeChk[2]["TimeType"] = 5
	-- IntegralAuctionNpc_TimeChk[2]["Time"] = "02 03"
	-- IntegralAuctionNpc_TimeChk[2]["Func"] = IntegralAuctionNpc_EveryHourToZero
-- -- table.insert(tSystemTime_InitialData,IntegralAuctionNpc_TimeChk[2])
	-- --每天更新一次宝箱上面的竞拍宝物
	-- IntegralAuctionNpc_TimeChk[3] = {}
	-- IntegralAuctionNpc_TimeChk[3]["ActivityTime"] = tActivityTime["DoubleEleven2018"]["ActTime"]
	-- IntegralAuctionNpc_TimeChk[3]["TimeType"] = 4
	-- IntegralAuctionNpc_TimeChk[3]["Time"] = "00:00 00:01"
	-- IntegralAuctionNpc_TimeChk[3]["Func"] = IntegralAuctionNpc_TotalUpdate
-- table.insert(tSystemTime_InitialData,IntegralAuctionNpc_TimeChk[3])
	-- --每天更新一次的标志位重新归零
	-- IntegralAuctionNpc_TimeChk[4] = {}
	-- IntegralAuctionNpc_TimeChk[4]["ActivityTime"] = tActivityTime["DoubleEleven2018"]["ActTime"]
	-- IntegralAuctionNpc_TimeChk[4]["TimeType"] = 4
	-- IntegralAuctionNpc_TimeChk[4]["Time"] = "00:02 00:03"
	-- IntegralAuctionNpc_TimeChk[4]["Func"] = IntegralAuctionNpc_EveryDayToZero
-- table.insert(tSystemTime_InitialData,IntegralAuctionNpc_TimeChk[4])
	-- --每天竞拍宝物发奖
	-- IntegralAuctionNpc_TimeChk[5] = {}
	-- IntegralAuctionNpc_TimeChk[5]["ActivityTime"] = tActivityTime["DoubleEleven2018"]["ActTime"]
	-- IntegralAuctionNpc_TimeChk[5]["TimeType"] = 4
	-- IntegralAuctionNpc_TimeChk[5]["Time"] = "20:00 20:01"
	-- IntegralAuctionNpc_TimeChk[5]["Func"] = IntegralAuctionNpc_AuctionGiveAward
-- table.insert(tSystemTime_InitialData,IntegralAuctionNpc_TimeChk[5])
	-- --每天次高价宝箱发奖
	-- IntegralAuctionNpc_TimeChk[6] = {}
	-- IntegralAuctionNpc_TimeChk[6]["ActivityTime"] = tIntegralAuctionNpc_Time["ActivityTime"]
	-- IntegralAuctionNpc_TimeChk[6]["TimeType"] = 4
	-- IntegralAuctionNpc_TimeChk[6]["Time"] = "19:30 19:31"
	-- IntegralAuctionNpc_TimeChk[6]["Func"] = IntegralAuctionNpc_SecondGiveAward
-- -- table.insert(tSystemTime_InitialData,IntegralAuctionNpc_TimeChk[6])
	-- --每天众筹宝箱发奖
	-- IntegralAuctionNpc_TimeChk[7] = {}
	-- IntegralAuctionNpc_TimeChk[7]["ActivityTime"] = tIntegralAuctionNpc_Time["ActivityTime"]
	-- IntegralAuctionNpc_TimeChk[7]["TimeType"] = 4
	-- IntegralAuctionNpc_TimeChk[7]["Time"] = "19:00 19:01"
	-- IntegralAuctionNpc_TimeChk[7]["Func"] = IntegralAuctionNpc_CrowdGiveAward
-- -- table.insert(tSystemTime_InitialData,IntegralAuctionNpc_TimeChk[7])
-- --每小时抢购开始前出全服链接
	-- IntegralAuctionNpc_TimeChk[8] = {}
	-- IntegralAuctionNpc_TimeChk[8]["ActivityTime"] = tIntegralAuctionNpc_Time["ActivityTime"]
	-- IntegralAuctionNpc_TimeChk[8]["TimeType"] = 5
	-- IntegralAuctionNpc_TimeChk[8]["Time"] = "59 59"
	-- IntegralAuctionNpc_TimeChk[8]["Func"] = IntegralAuctionNpc_TransToNpc
-- -- table.insert(tSystemTime_InitialData,IntegralAuctionNpc_TimeChk[8])
-- --回收日后一天补发未领取气力奖励
	-- IntegralAuctionNpc_TimeChk[9] = {}
	-- IntegralAuctionNpc_TimeChk[9]["ActivityTime"] = tActivityTime["IntegralAuctionNpc"]["GetStrengthTime"]
	-- IntegralAuctionNpc_TimeChk[9]["TimeType"] = 4
	-- IntegralAuctionNpc_TimeChk[9]["Time"] = "00:00 00:01"
	-- IntegralAuctionNpc_TimeChk[9]["Func"] = IntegralAuctionNpc_GetStrengthRecycle
-- -- table.insert(tSystemTime_InitialData,IntegralAuctionNpc_TimeChk[9])

-- ---------------------------------------------陷阱模块---------------------------------------------
-- for i = 1857, 1862 do
	-- if i ~= 1861 then
		-- tTrap[i] = tTrap[i] or {}
		-- tTrap[i]["Function"] = function(nTrapId,nTrapType)
			-- IntegralAuctionNpc_Trap(nTrapId,nTrapType)
		-- end
	-- end
-- end


