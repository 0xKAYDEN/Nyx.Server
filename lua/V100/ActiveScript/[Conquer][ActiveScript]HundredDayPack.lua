------------------------------------------------------------------------------------
--Name：            190827[英文征服][活动脚本]百日畅玩消费包
--Creator:      洪聪敏
--Created:     2018/08/27
------------------------------------------------------------------------------------
--命名前缀：HundredDayPack_
--logid:12001614
--luaini:41493


------------------------------------------------------------------------------------
local tHundredDayPack_Cont = {}
	--有额外奖励的开启次数
	tHundredDayPack_Cont["OtherNum"] = {1,7,15,30,60,90,100}
	tHundredDayPack_Cont["ArmorOtherNum"] = {7,15,30,60,90,100}
	tHundredDayPack_Cont["Emoney"] = {}
	--百日礼包
	tHundredDayPack_Cont["Emoney"][3313691] = 188888
	tHundredDayPack_Cont["Emoney"][3323300] = 288888
	tHundredDayPack_Cont["Emoney"][3323307] = 188888
	tHundredDayPack_Cont["Emoney"][3323314] = 4999


	tHundredDayPack_Cont["Emoney"][3323294] = 99
	tHundredDayPack_Cont["Emoney"][3323295] = 89
	tHundredDayPack_Cont["Emoney"][3323296] = 79
	tHundredDayPack_Cont["Emoney"][3323297] = 599
	tHundredDayPack_Cont["Emoney"][3323298] = 1999
	tHundredDayPack_Cont["Emoney"][3323299] = 99999

	tHundredDayPack_Cont["Emoney"][3323301] = 99
	tHundredDayPack_Cont["Emoney"][3323302] = 89
	tHundredDayPack_Cont["Emoney"][3323303] = 79
	tHundredDayPack_Cont["Emoney"][3323304] = 599
	tHundredDayPack_Cont["Emoney"][3323305] = 1999
	tHundredDayPack_Cont["Emoney"][3323306] = 99999
	
	tHundredDayPack_Cont["Emoney"][3323308] = 99
	tHundredDayPack_Cont["Emoney"][3323309] = 89
	tHundredDayPack_Cont["Emoney"][3323310] = 79
	tHundredDayPack_Cont["Emoney"][3323311] = 599
	tHundredDayPack_Cont["Emoney"][3323312] = 1999
	tHundredDayPack_Cont["Emoney"][3323313] = 99999
	
	tHundredDayPack_Cont["Emoney"][3323315] = 27000
	tHundredDayPack_Cont["Emoney"][3323316] = 24000
	tHundredDayPack_Cont["Emoney"][3323317] = 20000
	tHundredDayPack_Cont["Emoney"][3323318] = 18888
	tHundredDayPack_Cont["Emoney"][3323319] = 27000
	tHundredDayPack_Cont["Emoney"][3323320] = 99999
	
	local tHundredDayPack_EmongyLog = {}
	
	tHundredDayPack_EmongyLog[3313691] = "100000	945	188888	188888	1	"
	tHundredDayPack_EmongyLog[3323300] = "100000	946	288888	288888	1	"
	tHundredDayPack_EmongyLog[3323307] = "100000	947	188888	188888	1	"
	tHundredDayPack_EmongyLog[3323314] = "100000	948	4999	4999	1	"

	
	tHundredDayPack_EmongyLog[3323294] = "100000	872	99	99	1	"
	tHundredDayPack_EmongyLog[3323295] = "100000	873	89	89	1	"
	tHundredDayPack_EmongyLog[3323296] = "100000	874	79	79	1	"
	tHundredDayPack_EmongyLog[3323297] = "100000	875	599	599	1	"
	tHundredDayPack_EmongyLog[3323298] = "100000	876	1999	1999	1	"
	tHundredDayPack_EmongyLog[3323299] = "100000	877	99999	99999	1	"

	tHundredDayPack_EmongyLog[3323301] = "100000	878	99	99	1	"
	tHundredDayPack_EmongyLog[3323302] = "100000	879	89	89	1	"
	tHundredDayPack_EmongyLog[3323303] = "100000	880	79	79	1	"
	tHundredDayPack_EmongyLog[3323304] = "100000	881	599	599	1	"
	tHundredDayPack_EmongyLog[3323305] = "100000	882	1999	1999	1	"
	tHundredDayPack_EmongyLog[3323306] = "100000	883	99999	99999	1	"
	
	tHundredDayPack_EmongyLog[3323308] = "100000	884	99	99	1	"
	tHundredDayPack_EmongyLog[3323309] = "100000	885	89	89	1	"
	tHundredDayPack_EmongyLog[3323310] = "100000	886	79	79	1	"
	tHundredDayPack_EmongyLog[3323311] = "100000	887	599	599	1	"
	tHundredDayPack_EmongyLog[3323312] = "100000	888	1999	1999	1	"
	tHundredDayPack_EmongyLog[3323313] = "100000	889	99999	99999	1	"
	
	tHundredDayPack_EmongyLog[3323315] = "100000	890	27000	27000	1	"
	tHundredDayPack_EmongyLog[3323316] = "100000	891	24000	24000	1	"
	tHundredDayPack_EmongyLog[3323317] = "100000	892	20000	20000	1	"
	tHundredDayPack_EmongyLog[3323318] = "100000	893	18888	18888	1	"
	tHundredDayPack_EmongyLog[3323319] = "100000	894	27000	27000	1	"
	tHundredDayPack_EmongyLog[3323320] = "100000	895	99999	99999	1	"
	
local tHundredDayPack_Stc = {}
	--炼气百日卡
	tHundredDayPack_Stc[3313691] = {}
	tHundredDayPack_Stc[3313691]["EventType"] = 204
	tHundredDayPack_Stc[3313691]["DataType"] = 17
	--神纹百日卡
	tHundredDayPack_Stc[3323300] = {}
	tHundredDayPack_Stc[3323300]["EventType"] = 204
	tHundredDayPack_Stc[3323300]["DataType"] = 18
	--星陨石百日卡
	tHundredDayPack_Stc[3323307] = {}
	tHundredDayPack_Stc[3323307]["EventType"] = 204
	tHundredDayPack_Stc[3323307]["DataType"] = 19
	--人物坐骑外套百日卡
	tHundredDayPack_Stc[3323314] = {}
	tHundredDayPack_Stc[3323314]["EventType"] = 204
	tHundredDayPack_Stc[3323314]["DataType"] = 20
-----------------购买掩码
	tHundredDayPack_Stc["Buy"] = {}
	--炼气百日卡
	tHundredDayPack_Stc["Buy"][3313691] = {}
	tHundredDayPack_Stc["Buy"][3313691]["EventType"] = 204
	tHundredDayPack_Stc["Buy"][3313691]["DataType"] = 96
	--神纹百日卡
	tHundredDayPack_Stc["Buy"][3323300] = {}
	tHundredDayPack_Stc["Buy"][3323300]["EventType"] = 204
	tHundredDayPack_Stc["Buy"][3323300]["DataType"] = 97
	--星陨石百日卡
	tHundredDayPack_Stc["Buy"][3323307] = {}
	tHundredDayPack_Stc["Buy"][3323307]["EventType"] = 204
	tHundredDayPack_Stc["Buy"][3323307]["DataType"] = 98
	--人物坐骑外套百日卡
	tHundredDayPack_Stc["Buy"][3323314] = {}
	tHundredDayPack_Stc["Buy"][3323314]["EventType"] = 204
	tHundredDayPack_Stc["Buy"][3323314]["DataType"] = 99



------------------------------------------------
local tHundredDayPack_BuyReward = {}
	-- ===购买练气百日卡
	-- ===索引: tHundredDayPack_BuyReward[3313691]
	tHundredDayPack_BuyReward[3313691] = {}
	tHundredDayPack_BuyReward[3313691]["LogId"] = 12001614
	tHundredDayPack_BuyReward[3313691]["RewardItem"] = {}
	tHundredDayPack_BuyReward[3313691]["RewardItem"][1] = {}
	tHundredDayPack_BuyReward[3313691]["RewardItem"][1]["Id"] = 3313691 -- 100-dayChiPack[3313691][属性:9][叠加:10000][金币:0], 【表格】练气百日卡
	tHundredDayPack_BuyReward[3313691]["RewardItem"][1]["Attr"] = "0 1" -- 100-dayChiPack*1
	tHundredDayPack_BuyReward[3313691]["RewardEffect"] = {}
	tHundredDayPack_BuyReward[3313691]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHundredDayPack_BuyReward[3313691]["RewardEffect"]["Effect"] = "angelwing"


	tHundredDayPack_BuyReward[3323300] = {}
	-- ===购买神纹百日卡
	-- ===索引: tHundredDayPack_BuyReward[3323300]
	tHundredDayPack_BuyReward[3323300]["LogId"] = 12001614
	tHundredDayPack_BuyReward[3323300]["RewardItem"] = {}
	tHundredDayPack_BuyReward[3323300]["RewardItem"][1] = {}
	tHundredDayPack_BuyReward[3323300]["RewardItem"][1]["Id"] = 3323300 -- 100-dayRunePack[3323300][属性:9][叠加:10000][金币:0], 【表格】练气百日卡
	tHundredDayPack_BuyReward[3323300]["RewardItem"][1]["Attr"] = "0 1" -- 100-dayRunePack*1
	tHundredDayPack_BuyReward[3323300]["RewardEffect"] = {}
	tHundredDayPack_BuyReward[3323300]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHundredDayPack_BuyReward[3323300]["RewardEffect"]["Effect"] = "angelwing"


	tHundredDayPack_BuyReward[3323307] = {}
	-- ===购买星陨石百日卡
	-- ===索引: tHundredDayPack_BuyReward[3323307]
	tHundredDayPack_BuyReward[3323307]["LogId"] = 12001614
	tHundredDayPack_BuyReward[3323307]["RewardItem"] = {}
	tHundredDayPack_BuyReward[3323307]["RewardItem"][1] = {}
	tHundredDayPack_BuyReward[3323307]["RewardItem"][1]["Id"] = 3323307 -- 100-dayPerfectionPack[3323307][属性:9][叠加:10000][金币:0], 【表格】星陨石百日卡
	tHundredDayPack_BuyReward[3323307]["RewardItem"][1]["Attr"] = "0 1" -- 100-dayPerfectionPack*1
	tHundredDayPack_BuyReward[3323307]["RewardEffect"] = {}
	tHundredDayPack_BuyReward[3323307]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHundredDayPack_BuyReward[3323307]["RewardEffect"]["Effect"] = "angelwing"


	tHundredDayPack_BuyReward[3323314] = {}
	-- ===购买人物坐骑外套百日卡
	-- ===索引: tHundredDayPack_BuyReward[3323314]
	tHundredDayPack_BuyReward[3323314]["LogId"] = 12001614
	tHundredDayPack_BuyReward[3323314]["RewardItem"] = {}
	tHundredDayPack_BuyReward[3323314]["RewardItem"][1] = {}
	tHundredDayPack_BuyReward[3323314]["RewardItem"][1]["Id"] = 3323314 -- 100-dayMountPack[3323314][属性:9][叠加:10000][金币:0], 【表格】人物坐骑外套百日卡
	tHundredDayPack_BuyReward[3323314]["RewardItem"][1]["Attr"] = "0 1" -- 100-dayMountPack*1
	tHundredDayPack_BuyReward[3323314]["RewardEffect"] = {}
	tHundredDayPack_BuyReward[3323314]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHundredDayPack_BuyReward[3323314]["RewardEffect"]["Effect"] = "angelwing"





local tHundredDayPack_Reward = {}
	-- ===炼气百日卡第1次打开
	-- ===索引: tHundredDayPack_Reward[3313691][1]
	-- ===LogStep: 1[1]
	tHundredDayPack_Reward[3313691] = {}
	tHundredDayPack_Reward[3313691][1] = {}
	tHundredDayPack_Reward[3313691][1]["LogId"] = 12001614
	tHundredDayPack_Reward[3313691][1]["LogStep"] = "1[1]"
	tHundredDayPack_Reward[3313691][1]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3313691][1]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值
	tHundredDayPack_Reward[3313691][1]["RewardItem"] = {}
	tHundredDayPack_Reward[3313691][1]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3313691][1]["RewardItem"][1]["Id"] = 711903 -- 【库】ChiBooster(+1)[属性:9], 【表格】1~Chi~Booster~(+1)
	tHundredDayPack_Reward[3313691][1]["RewardItem"][1]["Attr"] = "0 1" -- ChiBooster(+1)*1



	-- ===炼气百日卡第7次打开
	-- ===索引: tHundredDayPack_Reward[3313691][7]
	-- ===LogStep: 1[7]

	tHundredDayPack_Reward[3313691][7] = {}
	tHundredDayPack_Reward[3313691][7]["LogId"] = 12001614
	tHundredDayPack_Reward[3313691][7]["LogStep"] = "1[7]"
	tHundredDayPack_Reward[3313691][7]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3313691][7]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值
	tHundredDayPack_Reward[3313691][7]["RewardItem"] = {}
	tHundredDayPack_Reward[3313691][7]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3313691][7]["RewardItem"][1]["Id"] = 3323294 -- 【库】7thTimeChiPack[属性:9], 【表格】炼气礼盒7次超值包
	tHundredDayPack_Reward[3313691][7]["RewardItem"][1]["Attr"] = "0 1" -- 7thTimeChiPack*1



	-- ===炼气百日卡第15次打开
	-- ===索引: tHundredDayPack_Reward[3313691][15]
	-- ===LogStep: 1[15]

	tHundredDayPack_Reward[3313691][15] = {}
	tHundredDayPack_Reward[3313691][15]["LogId"] = 12001614
	tHundredDayPack_Reward[3313691][15]["LogStep"] = "1[15]"
	tHundredDayPack_Reward[3313691][15]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3313691][15]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值
	tHundredDayPack_Reward[3313691][15]["RewardItem"] = {}
	tHundredDayPack_Reward[3313691][15]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3313691][15]["RewardItem"][1]["Id"] = 3323295 -- 【库】15thTimeChiPack[属性:9], 【表格】炼气礼盒15次超值包
	tHundredDayPack_Reward[3313691][15]["RewardItem"][1]["Attr"] = "0 1" -- 15thTimeChiPack*1



	-- ===炼气百日卡第30次打开
	-- ===索引: tHundredDayPack_Reward[3313691][30]
	-- ===LogStep: 1[30]

	tHundredDayPack_Reward[3313691][30] = {}
	tHundredDayPack_Reward[3313691][30]["LogId"] = 12001614
	tHundredDayPack_Reward[3313691][30]["LogStep"] = "1[30]"
	tHundredDayPack_Reward[3313691][30]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3313691][30]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值
	tHundredDayPack_Reward[3313691][30]["RewardItem"] = {}
	tHundredDayPack_Reward[3313691][30]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3313691][30]["RewardItem"][1]["Id"] = 3323296 -- 【库】30thTimeChiPack[属性:9], 【表格】炼气礼盒30次超值包
	tHundredDayPack_Reward[3313691][30]["RewardItem"][1]["Attr"] = "0 1" -- 30thTimeChiPack*1



	-- ===炼气百日卡第60次打开
	-- ===索引: tHundredDayPack_Reward[3313691][60]
	-- ===LogStep: 1[60]

	tHundredDayPack_Reward[3313691][60] = {}
	tHundredDayPack_Reward[3313691][60]["LogId"] = 12001614
	tHundredDayPack_Reward[3313691][60]["LogStep"] = "1[60]"
	tHundredDayPack_Reward[3313691][60]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3313691][60]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值
	tHundredDayPack_Reward[3313691][60]["RewardItem"] = {}
	tHundredDayPack_Reward[3313691][60]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3313691][60]["RewardItem"][1]["Id"] = 3323297 -- 【库】60thTimeChiPack[属性:9], 【表格】炼气礼盒60次超值包
	tHundredDayPack_Reward[3313691][60]["RewardItem"][1]["Attr"] = "0 1" -- 60thTimeChiPack*1



	-- ===炼气百日卡第90次打开
	-- ===索引: tHundredDayPack_Reward[3313691][90]
	-- ===LogStep: 1[90]

	tHundredDayPack_Reward[3313691][90] = {}
	tHundredDayPack_Reward[3313691][90]["LogId"] = 12001614
	tHundredDayPack_Reward[3313691][90]["LogStep"] = "1[90]"
	tHundredDayPack_Reward[3313691][90]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3313691][90]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值
	tHundredDayPack_Reward[3313691][90]["RewardItem"] = {}
	tHundredDayPack_Reward[3313691][90]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3313691][90]["RewardItem"][1]["Id"] = 3323298 -- 【库】90thTimeChiPack[属性:9], 【表格】炼气礼盒90次超值包
	tHundredDayPack_Reward[3313691][90]["RewardItem"][1]["Attr"] = "0 1" -- 90thTimeChiPack*1



	-- ===炼气百日卡第100次打开
	-- ===索引: tHundredDayPack_Reward[3313691][100]
	-- ===删除: 3313691,1
	-- ===LogStep: 1[100]

	tHundredDayPack_Reward[3313691][100] = {}
	tHundredDayPack_Reward[3313691][100]["LogId"] = 12001614
	tHundredDayPack_Reward[3313691][100]["LogStep"] = "1[100]"
	tHundredDayPack_Reward[3313691][100]["DeleteItem"] = {}
	tHundredDayPack_Reward[3313691][100]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3313691][100]["DeleteItem"][1]["Id"] = 3313691 -- 【库】100-dayChiPack[属性:9]
	tHundredDayPack_Reward[3313691][100]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3313691][100]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值
	tHundredDayPack_Reward[3313691][100]["RewardItem"] = {}
	tHundredDayPack_Reward[3313691][100]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3313691][100]["RewardItem"][1]["Id"] = 3323299 -- 【库】100thTimeChiPack[属性:9], 【表格】炼气礼盒100次超值包
	tHundredDayPack_Reward[3313691][100]["RewardItem"][1]["Attr"] = "0 1" -- 100thTimeChiPack*1



	-- ===炼气百日卡常规打开
	-- ===索引: tHundredDayPack_Reward[3313691][2]
	-- ===LogStep: 1[%d]

	tHundredDayPack_Reward[3313691][2] = {}
	tHundredDayPack_Reward[3313691][2]["LogId"] = 12001614
	tHundredDayPack_Reward[3313691][2]["LogStep"] = "1[%d]"
	tHundredDayPack_Reward[3313691][2]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3313691][2]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值



	-- ===炼气礼盒7次超值包打开
	-- ===索引: tHundredDayPack_Reward[3323294]
	-- ===删除: 3323294,1
	-- ===
	tHundredDayPack_Reward[3323294] = {}
	tHundredDayPack_Reward[3323294]["LogId"] = 12001614
	tHundredDayPack_Reward[3323294]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323294]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323294]["DeleteItem"][1]["Id"] = 3323294 -- 【库】7thTimeChiPack[属性:9]
	tHundredDayPack_Reward[3323294]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3323294]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000点气力值



	-- ===炼气礼盒15次超值包
	-- ===索引: tHundredDayPack_Reward[3323295]
	-- ===删除: 3323295,1
	-- ===
	tHundredDayPack_Reward[3323295] = {}
	tHundredDayPack_Reward[3323295]["LogId"] = 12001614
	tHundredDayPack_Reward[3323295]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323295]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323295]["DeleteItem"][1]["Id"] = 3323295 -- 【库】15thTimeChiPack[属性:9]
	tHundredDayPack_Reward[3323295]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3323295]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000点气力值



	-- ===炼气礼盒30次超值包
	-- ===索引: tHundredDayPack_Reward[3323296]
	-- ===删除: 3323296,1
	-- ===
	tHundredDayPack_Reward[3323296] = {}
	tHundredDayPack_Reward[3323296]["LogId"] = 12001614
	tHundredDayPack_Reward[3323296]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323296]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323296]["DeleteItem"][1]["Id"] = 3323296 -- 【库】30thTimeChiPack[属性:9]
	tHundredDayPack_Reward[3323296]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3323296]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000点气力值



	-- ===炼气礼盒60次超值包
	-- ===索引: tHundredDayPack_Reward[3323297]
	-- ===删除: 3323297,1
	-- ===
	tHundredDayPack_Reward[3323297] = {}
	tHundredDayPack_Reward[3323297]["LogId"] = 12001614
	tHundredDayPack_Reward[3323297]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323297]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323297]["DeleteItem"][1]["Id"] = 3323297 -- 【库】60thTimeChiPack[属性:9]
	tHundredDayPack_Reward[3323297]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3323297]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】50000点气力值



	-- ===炼气礼盒90次超值包
	-- ===索引: tHundredDayPack_Reward[3323298]
	-- ===删除: 3323298,1
	-- ===
	tHundredDayPack_Reward[3323298] = {}
	tHundredDayPack_Reward[3323298]["LogId"] = 12001614
	tHundredDayPack_Reward[3323298]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323298]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323298]["DeleteItem"][1]["Id"] = 3323298 -- 【库】90thTimeChiPack[属性:9]
	tHundredDayPack_Reward[3323298]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3323298]["RewardStrengthValue"]["Value"] = 120000 -- 气力值, 【需求】120000点气力值



	-- ===炼气礼盒100次超值包
	-- ===索引: tHundredDayPack_Reward[3323299]
	-- ===删除: 3323299,1
	-- ===
	tHundredDayPack_Reward[3323299] = {}
	tHundredDayPack_Reward[3323299]["LogId"] = 12001614
	tHundredDayPack_Reward[3323299]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323299]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323299]["DeleteItem"][1]["Id"] = 3323299 -- 【库】100thTimeChiPack[属性:9]
	tHundredDayPack_Reward[3323299]["RewardStrengthValue"] = {}
	tHundredDayPack_Reward[3323299]["RewardStrengthValue"]["Value"] = 6000000 -- 气力值, 【需求】6000000点气力值



	-- ===神纹百日卡第1次打开
	-- ===索引: tHundredDayPack_Reward[3323300][1]
	-- ===LogStep: 1[1]
	tHundredDayPack_Reward[3323300] = {}
	tHundredDayPack_Reward[3323300][1] = {}
	tHundredDayPack_Reward[3323300][1]["LogId"] = 12001614
	tHundredDayPack_Reward[3323300][1]["LogStep"] = "1[1]"
	tHundredDayPack_Reward[3323300][1]["RewardItem"] = {}
	tHundredDayPack_Reward[3323300][1]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323300][1]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*1000
	tHundredDayPack_Reward[3323300][1]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence*1000
	tHundredDayPack_Reward[3323300][1]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323300][1]["RewardItem"][2]["Id"] = 3323321 -- 【库】+9RareYellowRuneTicket[属性:9], 【表格】（+9）稀有黄色神纹兑换券
	tHundredDayPack_Reward[3323300][1]["RewardItem"][2]["Attr"] = "0 3" -- +9RareYellowRuneTicket*3



	-- ===神纹百日卡第7次打开
	-- ===索引: tHundredDayPack_Reward[3323300][1]
	-- ===LogStep: 1[7]

	tHundredDayPack_Reward[3323300][7] = {}
	tHundredDayPack_Reward[3323300][7]["LogId"] = 12001614
	tHundredDayPack_Reward[3323300][7]["LogStep"] = "1[7]"
	tHundredDayPack_Reward[3323300][7]["RewardItem"] = {}
	tHundredDayPack_Reward[3323300][7]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323300][7]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*1000
	tHundredDayPack_Reward[3323300][7]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence*1000
	tHundredDayPack_Reward[3323300][7]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323300][7]["RewardItem"][2]["Id"] = 3323301 -- 【库】7thTimeRunePack[属性:9], 【表格】7thTimeRunePack
	tHundredDayPack_Reward[3323300][7]["RewardItem"][2]["Attr"] = "0 1" -- 7thTimeRunePack*1



	-- ===神纹百日卡第15次打开
	-- ===索引: tHundredDayPack_Reward[3323300][1]
	-- ===LogStep: 1[15]

	tHundredDayPack_Reward[3323300][15] = {}
	tHundredDayPack_Reward[3323300][15]["LogId"] = 12001614
	tHundredDayPack_Reward[3323300][15]["LogStep"] = "1[15]"
	tHundredDayPack_Reward[3323300][15]["RewardItem"] = {}
	tHundredDayPack_Reward[3323300][15]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323300][15]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*1000
	tHundredDayPack_Reward[3323300][15]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence*1000
	tHundredDayPack_Reward[3323300][15]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323300][15]["RewardItem"][2]["Id"] = 3323302 -- 【库】15thTimeRunePack[属性:9], 【表格】15thTimeRunePack
	tHundredDayPack_Reward[3323300][15]["RewardItem"][2]["Attr"] = "0 1" -- 15thTimeRunePack*1



	-- ===神纹百日卡第30次打开
	-- ===索引: tHundredDayPack_Reward[3323300][1]
	-- ===LogStep: 1[30]

	tHundredDayPack_Reward[3323300][30] = {}
	tHundredDayPack_Reward[3323300][30]["LogId"] = 12001614
	tHundredDayPack_Reward[3323300][30]["LogStep"] = "1[30]"
	tHundredDayPack_Reward[3323300][30]["RewardItem"] = {}
	tHundredDayPack_Reward[3323300][30]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323300][30]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*1000
	tHundredDayPack_Reward[3323300][30]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence*1000
	tHundredDayPack_Reward[3323300][30]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323300][30]["RewardItem"][2]["Id"] = 3323303 -- 【库】30thTimeRunePack[属性:9], 【表格】30thTimeRunePack
	tHundredDayPack_Reward[3323300][30]["RewardItem"][2]["Attr"] = "0 1" -- 30thTimeRunePack*1



	-- ===神纹百日卡第60次打开
	-- ===索引: tHundredDayPack_Reward[3323300][1]
	-- ===LogStep: 1[60]

	tHundredDayPack_Reward[3323300][60] = {}
	tHundredDayPack_Reward[3323300][60]["LogId"] = 12001614
	tHundredDayPack_Reward[3323300][60]["LogStep"] = "1[60]"
	tHundredDayPack_Reward[3323300][60]["RewardItem"] = {}
	tHundredDayPack_Reward[3323300][60]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323300][60]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*1000
	tHundredDayPack_Reward[3323300][60]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence*1000
	tHundredDayPack_Reward[3323300][60]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323300][60]["RewardItem"][2]["Id"] = 3323304 -- 【库】60thTimeRunePack[属性:9], 【表格】60thTimeRunePack
	tHundredDayPack_Reward[3323300][60]["RewardItem"][2]["Attr"] = "0 1" -- 60thTimeRunePack*1



	-- ===神纹百日卡第90次打开
	-- ===索引: tHundredDayPack_Reward[3323300][90]
	-- ===LogStep: 1[90]

	tHundredDayPack_Reward[3323300][90] = {}
	tHundredDayPack_Reward[3323300][90]["LogId"] = 12001614
	tHundredDayPack_Reward[3323300][90]["LogStep"] = "1[90]"
	tHundredDayPack_Reward[3323300][90]["RewardItem"] = {}
	tHundredDayPack_Reward[3323300][90]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323300][90]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*1000
	tHundredDayPack_Reward[3323300][90]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence*1000
	tHundredDayPack_Reward[3323300][90]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323300][90]["RewardItem"][2]["Id"] = 3323305 -- 【库】90thTimeRunePack[属性:9], 【表格】90thTimeRunePack
	tHundredDayPack_Reward[3323300][90]["RewardItem"][2]["Attr"] = "0 1" -- 90thTimeRunePack*1



	-- ===神纹百日卡第100次打开
	-- ===索引: tHundredDayPack_Reward[3323300][100]
	-- ===删除: 3323300,1
	-- ===LogStep: 1[100]

	tHundredDayPack_Reward[3323300][100] = {}
	tHundredDayPack_Reward[3323300][100]["LogId"] = 12001614
	tHundredDayPack_Reward[3323300][100]["LogStep"] = "1[100]"
	tHundredDayPack_Reward[3323300][100]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323300][100]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323300][100]["DeleteItem"][1]["Id"] = 3323300 -- 【库】100-dayRunePack[属性:9]
	tHundredDayPack_Reward[3323300][100]["RewardItem"] = {}
	tHundredDayPack_Reward[3323300][100]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323300][100]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*1000
	tHundredDayPack_Reward[3323300][100]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence*1000
	tHundredDayPack_Reward[3323300][100]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323300][100]["RewardItem"][2]["Id"] = 3323306 -- 【库】100thTimeRunePack[属性:9], 【表格】100thTimeRunePack
	tHundredDayPack_Reward[3323300][100]["RewardItem"][2]["Attr"] = "0 1" -- 100thTimeRunePack*1



	-- ===神纹百日卡常规打开
	-- ===索引: tHundredDayPack_Reward[3323300][2]
	-- ===LogStep: 1[%d]

	tHundredDayPack_Reward[3323300][2] = {}
	tHundredDayPack_Reward[3323300][2]["LogId"] = 12001614
	tHundredDayPack_Reward[3323300][2]["LogStep"] = "1[%d]"
	tHundredDayPack_Reward[3323300][2]["RewardItem"] = {}
	tHundredDayPack_Reward[3323300][2]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323300][2]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*1000
	tHundredDayPack_Reward[3323300][2]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence*1000



	-- ===神纹礼盒7次超值包打开
	-- ===索引: tHundredDayPack_Reward[3323301]
	-- ===删除: 3323301,1
	-- ===
	tHundredDayPack_Reward[3323301] = {}
	tHundredDayPack_Reward[3323301]["LogId"] = 12001614
	tHundredDayPack_Reward[3323301]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323301]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323301]["DeleteItem"][1]["Id"] = 3323301 -- 【库】7thTimeRunePack[属性:9]
	tHundredDayPack_Reward[3323301]["RewardItem"] = {}
	tHundredDayPack_Reward[3323301]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323301]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*100
	tHundredDayPack_Reward[3323301]["RewardItem"][1]["Attr"] = "0 100 3" -- UniversalRuneEssence*100
	tHundredDayPack_Reward[3323301]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323301]["RewardItem"][2]["Id"] = 3323321 -- 【库】+9RareYellowRuneTicket[属性:9], 【表格】（+9）稀有黄色神纹兑换券*1
	tHundredDayPack_Reward[3323301]["RewardItem"][2]["Attr"] = "0 1" -- +9RareYellowRuneTicket*1



	-- ===神纹礼盒15次超值包
	-- ===索引: tHundredDayPack_Reward[3323302]
	-- ===删除: 3323302,1
	-- ===
	tHundredDayPack_Reward[3323302] = {}
	tHundredDayPack_Reward[3323302]["LogId"] = 12001614
	tHundredDayPack_Reward[3323302]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323302]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323302]["DeleteItem"][1]["Id"] = 3323302 -- 【库】15thTimeRunePack[属性:9]
	tHundredDayPack_Reward[3323302]["RewardItem"] = {}
	tHundredDayPack_Reward[3323302]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323302]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*100
	tHundredDayPack_Reward[3323302]["RewardItem"][1]["Attr"] = "0 100 3" -- UniversalRuneEssence*100
	tHundredDayPack_Reward[3323302]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323302]["RewardItem"][2]["Id"] = 3323321 -- 【库】+9RareYellowRuneTicket[属性:9], 【表格】（+9）稀有黄色神纹兑换券*1
	tHundredDayPack_Reward[3323302]["RewardItem"][2]["Attr"] = "0 1" -- +9RareYellowRuneTicket*1



	-- ===神纹礼盒30次超值包
	-- ===索引: tHundredDayPack_Reward[3323303]
	-- ===删除: 3323296,1
	-- ===
	tHundredDayPack_Reward[3323303] = {}
	tHundredDayPack_Reward[3323303]["LogId"] = 12001614
	tHundredDayPack_Reward[3323303]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323303]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323303]["DeleteItem"][1]["Id"] = 3323303 -- 【库】15thTimeRunePack[属性:9]
	tHundredDayPack_Reward[3323303]["RewardItem"] = {}
	tHundredDayPack_Reward[3323303]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323303]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*100
	tHundredDayPack_Reward[3323303]["RewardItem"][1]["Attr"] = "0 100 3" -- UniversalRuneEssence*100
	tHundredDayPack_Reward[3323303]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323303]["RewardItem"][2]["Id"] = 3323321 -- 【库】+9RareYellowRuneTicket[属性:9], 【表格】（+9）稀有黄色神纹兑换券*1
	tHundredDayPack_Reward[3323303]["RewardItem"][2]["Attr"] = "0 1" -- +9RareYellowRuneTicket*1



	-- ===神纹礼盒60次超值包
	-- ===索引: tHundredDayPack_Reward[3323304]
	-- ===删除: 3323304,1
	-- ===
	tHundredDayPack_Reward[3323304] = {}
	tHundredDayPack_Reward[3323304]["LogId"] = 12001614
	tHundredDayPack_Reward[3323304]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323304]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323304]["DeleteItem"][1]["Id"] = 3323304 -- 【库】60thTimeRunePack[属性:9]
	tHundredDayPack_Reward[3323304]["RewardItem"] = {}
	tHundredDayPack_Reward[3323304]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323304]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*600
	tHundredDayPack_Reward[3323304]["RewardItem"][1]["Attr"] = "0 600 3" -- UniversalRuneEssence*600
	tHundredDayPack_Reward[3323304]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323304]["RewardItem"][2]["Id"] = 3323321 -- 【库】+9RareYellowRuneTicket[属性:9], 【表格】（+9）稀有黄色神纹兑换券*1
	tHundredDayPack_Reward[3323304]["RewardItem"][2]["Attr"] = "0 1" -- +9RareYellowRuneTicket*1



	-- ===神纹礼盒90次超值包
	-- ===索引: tHundredDayPack_Reward[3323305]
	-- ===删除: 3323305,1
	-- ===
	tHundredDayPack_Reward[3323305] = {}
	tHundredDayPack_Reward[3323305]["LogId"] = 12001614
	tHundredDayPack_Reward[3323305]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323305]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323305]["DeleteItem"][1]["Id"] = 3323305 -- 【库】90thTimeRunePack[属性:9]
	tHundredDayPack_Reward[3323305]["RewardItem"] = {}
	tHundredDayPack_Reward[3323305]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323305]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*2000
	tHundredDayPack_Reward[3323305]["RewardItem"][1]["Attr"] = "0 2000 3" -- UniversalRuneEssence*2000
	tHundredDayPack_Reward[3323305]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323305]["RewardItem"][2]["Id"] = 3323321 -- 【库】+9RareYellowRuneTicket[属性:9], 【表格】（+9）稀有黄色神纹兑换券*1
	tHundredDayPack_Reward[3323305]["RewardItem"][2]["Attr"] = "0 1" -- +9RareYellowRuneTicket*1



	-- ===神纹礼盒100次超值包
	-- ===索引: tHundredDayPack_Reward[3323306]
	-- ===删除: 3323306,1
	-- ===
	tHundredDayPack_Reward[3323306] = {}
	tHundredDayPack_Reward[3323306]["LogId"] = 12001614
	tHundredDayPack_Reward[3323306]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323306]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323306]["DeleteItem"][1]["Id"] = 3323306 -- 【库】100thTimeRunePack[属性:9]
	tHundredDayPack_Reward[3323306]["RewardItem"] = {}
	tHundredDayPack_Reward[3323306]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323306]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹*100000
	tHundredDayPack_Reward[3323306]["RewardItem"][1]["Attr"] = "0 100000 3" -- UniversalRuneEssence*100000
	tHundredDayPack_Reward[3323306]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323306]["RewardItem"][2]["Id"] = 3323321 -- 【库】+9RareYellowRuneTicket[属性:9], 【表格】（+9）稀有黄色神纹兑换券*1
	tHundredDayPack_Reward[3323306]["RewardItem"][2]["Attr"] = "0 1" -- +9RareYellowRuneTicket*1



	-- ===星陨石百日卡第1次打开
	-- ===索引: tHundredDayPack_Reward[3323307][1]
	-- ===LogStep: 1[1]
	tHundredDayPack_Reward[3323307] = {}
	tHundredDayPack_Reward[3323307][1] = {}
	tHundredDayPack_Reward[3323307][1]["LogId"] = 12001614
	tHundredDayPack_Reward[3323307][1]["LogStep"] = "1[1]"
	tHundredDayPack_Reward[3323307][1]["RewardItem"] = {}
	tHundredDayPack_Reward[3323307][1]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323307][1]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tHundredDayPack_Reward[3323307][1]["RewardItem"][1]["Attr"] = "0 12 0 2880 1" -- 2天时效(激活)的RadiantStarStone*12
	tHundredDayPack_Reward[3323307][1]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323307][1]["RewardItem"][2]["Id"] = 192635 -- 【库】Winner-take-all[属性:0], 【表格】Winner-take-all
	tHundredDayPack_Reward[3323307][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑Winner-take-all（赠）*1



	-- ===星陨石百日卡第7次打开
	-- ===索引: tHundredDayPack_Reward[3323307][7]
	-- ===LogStep: 1[7]
	tHundredDayPack_Reward[3323307][7] = {}
	tHundredDayPack_Reward[3323307][7]["LogId"] = 12001614
	tHundredDayPack_Reward[3323307][7]["LogStep"] = "1[7]"
	tHundredDayPack_Reward[3323307][7]["RewardItem"] = {}
	tHundredDayPack_Reward[3323307][7]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323307][7]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tHundredDayPack_Reward[3323307][7]["RewardItem"][1]["Attr"] = "0 12 0 2880 1" -- 2天时效(激活)的RadiantStarStone*12
	tHundredDayPack_Reward[3323307][7]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323307][7]["RewardItem"][2]["Id"] = 3323308 -- 【库】7thTimePerfectionPack[属性:9], 【表格】精炼礼盒7次超值包
	tHundredDayPack_Reward[3323307][7]["RewardItem"][2]["Attr"] = "0 1" -- 7thTimePerfectionPack*1



	-- ===星陨石百日卡第15次打开
	-- ===索引: tHundredDayPack_Reward[3323307][15]
	-- ===LogStep: 1[15]

	tHundredDayPack_Reward[3323307][15] = {}
	tHundredDayPack_Reward[3323307][15]["LogId"] = 12001614
	tHundredDayPack_Reward[3323307][15]["LogStep"] = "1[15]"
	tHundredDayPack_Reward[3323307][15]["RewardItem"] = {}
	tHundredDayPack_Reward[3323307][15]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323307][15]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tHundredDayPack_Reward[3323307][15]["RewardItem"][1]["Attr"] = "0 12 0 2880 1" -- 2天时效(激活)的RadiantStarStone*12
	tHundredDayPack_Reward[3323307][15]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323307][15]["RewardItem"][2]["Id"] = 3323309 -- 【库】15thTimePerfectionPack[属性:9], 【表格】精炼礼盒15次超值包
	tHundredDayPack_Reward[3323307][15]["RewardItem"][2]["Attr"] = "0 1" -- 15thTimePerfectionPack*1



	-- ===星陨石百日卡第30次打开
	-- ===索引: tHundredDayPack_Reward[3323307][30]
	-- ===LogStep: 1[30]

	tHundredDayPack_Reward[3323307][30] = {}
	tHundredDayPack_Reward[3323307][30]["LogId"] = 12001614
	tHundredDayPack_Reward[3323307][30]["LogStep"] = "1[30]"
	tHundredDayPack_Reward[3323307][30]["RewardItem"] = {}
	tHundredDayPack_Reward[3323307][30]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323307][30]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tHundredDayPack_Reward[3323307][30]["RewardItem"][1]["Attr"] = "0 12 0 2880 1" -- 2天时效(激活)的RadiantStarStone*12
	tHundredDayPack_Reward[3323307][30]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323307][30]["RewardItem"][2]["Id"] = 3323310 -- 【库】30thTimePerfectionPack[属性:9], 【表格】精炼礼盒30次超值包
	tHundredDayPack_Reward[3323307][30]["RewardItem"][2]["Attr"] = "0 1" -- 30thTimePerfectionPack*1



	-- ===星陨石百日卡第60次打开
	-- ===索引: tHundredDayPack_Reward[3323307][60]
	-- ===LogStep: 1[60]

	tHundredDayPack_Reward[3323307][60] = {}
	tHundredDayPack_Reward[3323307][60]["LogId"] = 12001614
	tHundredDayPack_Reward[3323307][60]["LogStep"] = "1[60]"
	tHundredDayPack_Reward[3323307][60]["RewardItem"] = {}
	tHundredDayPack_Reward[3323307][60]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323307][60]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tHundredDayPack_Reward[3323307][60]["RewardItem"][1]["Attr"] = "0 12 0 2880 1" -- 2天时效(激活)的RadiantStarStone*12
	tHundredDayPack_Reward[3323307][60]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323307][60]["RewardItem"][2]["Id"] = 3323311 -- 【库】60thTimePerfectionPack[属性:9], 【表格】炼气礼盒60次超值包
	tHundredDayPack_Reward[3323307][60]["RewardItem"][2]["Attr"] = "0 1" -- 60thTimePerfectionPack*1



	-- ===星陨石百日卡第90次打开
	-- ===索引: tHundredDayPack_Reward[3323307][90]
	-- ===LogStep: 1[90]

	tHundredDayPack_Reward[3323307][90] = {}
	tHundredDayPack_Reward[3323307][90]["LogId"] = 12001614
	tHundredDayPack_Reward[3323307][90]["LogStep"] = "1[90]"
	tHundredDayPack_Reward[3323307][90]["RewardItem"] = {}
	tHundredDayPack_Reward[3323307][90]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323307][90]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tHundredDayPack_Reward[3323307][90]["RewardItem"][1]["Attr"] = "0 12 0 2880 1" -- 2天时效(激活)的RadiantStarStone*12
	tHundredDayPack_Reward[3323307][90]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323307][90]["RewardItem"][2]["Id"] = 3323312 -- 【库】90thTimePerfectionPack[属性:9], 【表格】精炼礼盒90次超值包
	tHundredDayPack_Reward[3323307][90]["RewardItem"][2]["Attr"] = "0 1" -- 90thTimePerfectionPack*1



	-- ===星陨石百日卡第100次打开
	-- ===索引: tHundredDayPack_Reward[3323307][100]
	-- ===删除: 3323307,1
	-- ===LogStep: 1[100]

	tHundredDayPack_Reward[3323307][100] = {}
	tHundredDayPack_Reward[3323307][100]["LogId"] = 12001614
	tHundredDayPack_Reward[3323307][100]["LogStep"] = "1[100]"
	tHundredDayPack_Reward[3323307][100]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323307][100]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323307][100]["DeleteItem"][1]["Id"] = 3323307 -- 【库】100-dayPerfectionPack[属性:9]
	tHundredDayPack_Reward[3323307][100]["RewardItem"] = {}
	tHundredDayPack_Reward[3323307][100]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323307][100]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tHundredDayPack_Reward[3323307][100]["RewardItem"][1]["Attr"] = "0 12 0 2880 1" -- 2天时效(激活)的RadiantStarStone*12
	tHundredDayPack_Reward[3323307][100]["RewardItem"][2] = {}
	tHundredDayPack_Reward[3323307][100]["RewardItem"][2]["Id"] = 3323313 -- 【库】100thTimePerfectionPack[属性:9], 【表格】精炼礼盒100次超值包
	tHundredDayPack_Reward[3323307][100]["RewardItem"][2]["Attr"] = "0 1" -- 100thTimePerfectionPack*1



	-- ===星陨石百日卡常规打开
	-- ===索引: tHundredDayPack_Reward[3323307][2]
	-- ===LogStep: 1[%d]

	tHundredDayPack_Reward[3323307][2] = {}
	tHundredDayPack_Reward[3323307][2]["LogId"] = 12001614
	tHundredDayPack_Reward[3323307][2]["LogStep"] = "1[%d]"
	tHundredDayPack_Reward[3323307][2]["RewardItem"] = {}
	tHundredDayPack_Reward[3323307][2]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323307][2]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tHundredDayPack_Reward[3323307][2]["RewardItem"][1]["Attr"] = "0 12 0 2880 1" -- 2天时效(激活)的RadiantStarStone*12



	-- ===精炼礼盒7次超值包打开
	-- ===索引: tHundredDayPack_Reward[3323308]
	-- ===删除: 3323308,1
	-- ===
	tHundredDayPack_Reward[3323308] = {}
	tHundredDayPack_Reward[3323308]["LogId"] = 12001614
	tHundredDayPack_Reward[3323308]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323308]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323308]["DeleteItem"][1]["Id"] = 3323308 -- 【库】7thTimePerfectionPack[属性:9]
	tHundredDayPack_Reward[3323308]["RewardItem"] = {}
	tHundredDayPack_Reward[3323308]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323308]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*1
	tHundredDayPack_Reward[3323308]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1



	-- ===精炼礼盒15次超值包
	-- ===索引: tHundredDayPack_Reward[3323309]
	-- ===删除: 3323309,1
	-- ===
	tHundredDayPack_Reward[3323309] = {}
	tHundredDayPack_Reward[3323309]["LogId"] = 12001614
	tHundredDayPack_Reward[3323309]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323309]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323309]["DeleteItem"][1]["Id"] = 3323309 -- 【库】15thTimePerfectionPack[属性:9]
	tHundredDayPack_Reward[3323309]["RewardItem"] = {}
	tHundredDayPack_Reward[3323309]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323309]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*1
	tHundredDayPack_Reward[3323309]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1



	-- ===精炼礼盒30次超值包
	-- ===索引: tHundredDayPack_Reward[3323310]
	-- ===删除: 3323310,1
	-- ===
	tHundredDayPack_Reward[3323310] = {}
	tHundredDayPack_Reward[3323310]["LogId"] = 12001614
	tHundredDayPack_Reward[3323310]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323310]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323310]["DeleteItem"][1]["Id"] = 3323310 -- 【库】30thTimePerfectionPack[属性:9]
	tHundredDayPack_Reward[3323310]["RewardItem"] = {}
	tHundredDayPack_Reward[3323310]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323310]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*1
	tHundredDayPack_Reward[3323310]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1



	-- ===精炼礼盒60次超值包
	-- ===索引: tHundredDayPack_Reward[3323311]
	-- ===删除: 3323311,1
	-- ===
	tHundredDayPack_Reward[3323311] = {}
	tHundredDayPack_Reward[3323311]["LogId"] = 12001614
	tHundredDayPack_Reward[3323311]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323311]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323311]["DeleteItem"][1]["Id"] = 3323311 -- 【库】60thTimePerfectionPack[属性:9]
	tHundredDayPack_Reward[3323311]["RewardItem"] = {}
	tHundredDayPack_Reward[3323311]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323311]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*5
	tHundredDayPack_Reward[3323311]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5



	-- ===精炼礼盒90次超值包
	-- ===索引: tHundredDayPack_Reward[3323312]
	-- ===删除: 3323312,1
	-- ===
	tHundredDayPack_Reward[3323312] = {}
	tHundredDayPack_Reward[3323312]["LogId"] = 12001614
	tHundredDayPack_Reward[3323312]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323312]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323312]["DeleteItem"][1]["Id"] = 3323312 -- 【库】90thTimePerfectionPack[属性:9]
	tHundredDayPack_Reward[3323312]["RewardItem"] = {}
	tHundredDayPack_Reward[3323312]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323312]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*14
	tHundredDayPack_Reward[3323312]["RewardItem"][1]["Attr"] = "0 14 0 2880 1" -- 2天时效(激活)的RadiantStarStone*14



	-- ===精炼礼盒100次超值包
	-- ===索引: tHundredDayPack_Reward[3323313]
	-- ===删除: 3323313,1
	-- ===
	tHundredDayPack_Reward[3323313] = {}
	tHundredDayPack_Reward[3323313]["LogId"] = 12001614
	tHundredDayPack_Reward[3323313]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323313]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323313]["DeleteItem"][1]["Id"] = 3323313 -- 【库】100thTimePerfectionPack[属性:9]
	tHundredDayPack_Reward[3323313]["RewardItem"] = {}
	tHundredDayPack_Reward[3323313]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323313]["RewardItem"][1]["Id"] = 3323324 -- 【库】700RadiantStarStonesBox[属性:9], 【表格】晶莹星陨石*700
	tHundredDayPack_Reward[3323313]["RewardItem"][1]["Attr"] = "0 1" -- 70RadiantStarStonesBox*1



	-- ===700晶莹星陨石礼包
	-- ===索引: tHundredDayPack_Reward[3323324]
	-- ===删除: 3323324,1
	-- ===
	tHundredDayPack_Reward[3323324] = {}
	tHundredDayPack_Reward[3323324]["LogId"] = 12001614
	tHundredDayPack_Reward[3323324]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323324]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323324]["DeleteItem"][1]["Id"] = 3323324 -- 【库】700RadiantStarStonesBox[属性:9]
	tHundredDayPack_Reward[3323324]["RewardItem"] = {}
	tHundredDayPack_Reward[3323324]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323324]["RewardItem"][1]["Id"] = 3313692 -- 【库】70RadiantStarStonesBox[属性:9], 【表格】70晶莹星陨石礼包
	tHundredDayPack_Reward[3323324]["RewardItem"][1]["Attr"] = "0 10" -- 70RadiantStarStonesBox*10



	-- ===70晶莹星陨石礼包
	-- ===索引: tHundredDayPack_Reward[3313692]
	-- ===删除: 3313692,1
	-- ===
	tHundredDayPack_Reward[3313692] = {}
	tHundredDayPack_Reward[3313692]["LogId"] = 12001614
	tHundredDayPack_Reward[3313692]["DeleteItem"] = {}
	tHundredDayPack_Reward[3313692]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3313692]["DeleteItem"][1]["Id"] = 3313692 -- 【库】70RadiantStarStonesBox[属性:9]
	tHundredDayPack_Reward[3313692]["RewardItem"] = {}
	tHundredDayPack_Reward[3313692]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3313692]["RewardItem"][1]["Id"] = 3304583 -- 【库】10RadiantStarStonesBox[属性:11], 【表格】10晶莹星陨石礼包
	tHundredDayPack_Reward[3313692]["RewardItem"][1]["Attr"] = "0 7" -- 10RadiantStarStonesBox*7



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][1]
	-- ===删除: 3323314,1
	-- ===
	tHundredDayPack_Reward[3323314] = {}
	tHundredDayPack_Reward[3323314][1] = {}
	tHundredDayPack_Reward[3323314][1]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][1]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][1]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][1]["RewardItem"][1]["Id"] = 187325 -- 【库】GotTalent[属性:9], 【表格】GotTalent
	tHundredDayPack_Reward[3323314][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑GotTalent*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][2]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][2] = {}
	tHundredDayPack_Reward[3323314][2]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][2]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][2]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][2]["RewardItem"][1]["Id"] = 187575 -- 【库】AnniversarySuit(Female)[属性:0], 【表格】AnniversarySuit(Female)
	tHundredDayPack_Reward[3323314][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑AnniversarySuit(Female)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][3]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][3] = {}
	tHundredDayPack_Reward[3323314][3]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][3]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][3]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][3]["RewardItem"][1]["Id"] = 188185 -- 【库】SoulofSword[属性:0], 【表格】SoulofSword
	tHundredDayPack_Reward[3323314][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SoulofSword（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][4]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][4] = {}
	tHundredDayPack_Reward[3323314][4]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][4]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][4]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][4]["RewardItem"][1]["Id"] = 188265 -- 【库】DreamGarment[属性:0], 【表格】DreamGarment
	tHundredDayPack_Reward[3323314][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑DreamGarment（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][5]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][5] = {}
	tHundredDayPack_Reward[3323314][5]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][5]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][5]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][5]["RewardItem"][1]["Id"] = 188675 -- 【库】DreamofYouth[属性:0], 【表格】DreamofYouth
	tHundredDayPack_Reward[3323314][5]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑DreamofYouth（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][6]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][6] = {}
	tHundredDayPack_Reward[3323314][6]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][6]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][6]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][6]["RewardItem"][1]["Id"] = 188915 -- 【库】GoldCloth(Saint)[属性:8], 【表格】GoldCloth(Saint)
	tHundredDayPack_Reward[3323314][6]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑GoldCloth(Saint)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][7]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][7] = {}
	tHundredDayPack_Reward[3323314][7]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][7]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][7]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][7]["RewardItem"][1]["Id"] = 189065 -- 【库】RobeofDarkness(Hades)(WithHelmet)[属性:8], 【表格】RobeofDarkness(Hades)(WithHelmet)
	tHundredDayPack_Reward[3323314][7]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑RobeofDarkness(Hades)(WithHelmet)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][8]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][8] = {}
	tHundredDayPack_Reward[3323314][8]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][8]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][8]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][8]["RewardItem"][1]["Id"] = 189085 -- 【库】FairyTale[属性:0], 【表格】FairyTale
	tHundredDayPack_Reward[3323314][8]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FairyTale（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][9]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][9] = {}
	tHundredDayPack_Reward[3323314][9]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][9]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][9]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][9]["RewardItem"][1]["Id"] = 189135 -- 【库】ArmorofHolyLight[属性:9], 【表格】ArmorofHolyLight
	tHundredDayPack_Reward[3323314][9]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ArmorofHolyLight*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][10]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][10] = {}
	tHundredDayPack_Reward[3323314][10]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][10]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][10]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][10]["RewardItem"][1]["Id"] = 189145 -- 【库】Hero`sArmor[属性:9], 【表格】Hero`sArmor
	tHundredDayPack_Reward[3323314][10]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑Hero`sArmor*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][11]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][11] = {}
	tHundredDayPack_Reward[3323314][11]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][11]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][11]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][11]["RewardItem"][1]["Id"] = 189265 -- 【库】BlazingRomance[属性:0], 【表格】BlazingRomance
	tHundredDayPack_Reward[3323314][11]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BlazingRomance（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][12]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][12] = {}
	tHundredDayPack_Reward[3323314][12]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][12]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][12]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][12]["RewardItem"][1]["Id"] = 189645 -- 【库】ArabicPride[属性:8], 【表格】ArabicPride
	tHundredDayPack_Reward[3323314][12]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ArabicPride（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][13]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][13] = {}
	tHundredDayPack_Reward[3323314][13]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][13]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][13]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][13]["RewardItem"][1]["Id"] = 189675 -- 【库】BubbleSwimsuit[属性:0], 【表格】BubbleSwimsuit
	tHundredDayPack_Reward[3323314][13]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BubbleSwimsuit（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][14]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][14] = {}
	tHundredDayPack_Reward[3323314][14]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][14]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][14]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][14]["RewardItem"][1]["Id"] = 189695 -- 【库】MonkeyKingArmor(Heaven)[属性:0], 【表格】MonkeyKingArmor(Heaven)
	tHundredDayPack_Reward[3323314][14]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑MonkeyKingArmor(Heaven)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][15]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][15] = {}
	tHundredDayPack_Reward[3323314][15]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][15]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][15]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][15]["RewardItem"][1]["Id"] = 192125 -- 【库】DreamyFairySuit[属性:0], 【表格】DreamyFairySuit
	tHundredDayPack_Reward[3323314][15]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑DreamyFairySuit（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][16]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][16] = {}
	tHundredDayPack_Reward[3323314][16]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][16]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][16]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][16]["RewardItem"][1]["Id"] = 192165 -- 【库】AnniversarySuit(Male)[属性:0], 【表格】AnniversarySuit(Male)
	tHundredDayPack_Reward[3323314][16]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑AnniversarySuit(Male)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][17]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][17] = {}
	tHundredDayPack_Reward[3323314][17]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][17]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][17]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][17]["RewardItem"][1]["Id"] = 192425 -- 【库】ColorOfWind[属性:0], 【表格】ColorOfWind
	tHundredDayPack_Reward[3323314][17]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ColorOfWind（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][18]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][18] = {}
	tHundredDayPack_Reward[3323314][18]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][18]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][18]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][18]["RewardItem"][1]["Id"] = 192495 -- 【库】MidsummerSuit[属性:0], 【表格】MidsummerSuit
	tHundredDayPack_Reward[3323314][18]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑MidsummerSuit（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][19]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][19] = {}
	tHundredDayPack_Reward[3323314][19]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][19]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][19]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][19]["RewardItem"][1]["Id"] = 192525 -- 【库】SpringShirt[属性:0], 【表格】SpringShirt
	tHundredDayPack_Reward[3323314][19]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SpringShirt（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][20]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][20] = {}
	tHundredDayPack_Reward[3323314][20]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][20]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][20]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][20]["RewardItem"][1]["Id"] = 192615 -- 【库】ImperialRobe[属性:0], 【表格】ImperialRobe
	tHundredDayPack_Reward[3323314][20]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ImperialRobe（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][21]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][21] = {}
	tHundredDayPack_Reward[3323314][21]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][21]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][21]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][21]["RewardItem"][1]["Id"] = 192625 -- 【库】ChivalrousDream[属性:0], 【表格】ChivalrousDream
	tHundredDayPack_Reward[3323314][21]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ChivalrousDream（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][22]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][22] = {}
	tHundredDayPack_Reward[3323314][22]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][22]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][22]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][22]["RewardItem"][1]["Id"] = 192635 -- 【库】Winner-take-all[属性:0], 【表格】Winner-take-all
	tHundredDayPack_Reward[3323314][22]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑Winner-take-all（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][23]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][23] = {}
	tHundredDayPack_Reward[3323314][23]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][23]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][23]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][23]["RewardItem"][1]["Id"] = 192645 -- 【库】WizardRobe[属性:0], 【表格】WizardRobe
	tHundredDayPack_Reward[3323314][23]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑WizardRobe（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][24]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][24] = {}
	tHundredDayPack_Reward[3323314][24]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][24]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][24]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][24]["RewardItem"][1]["Id"] = 192695 -- 【库】EvilPumpkin[属性:0], 【表格】EvilPumpkin
	tHundredDayPack_Reward[3323314][24]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑EvilPumpkin（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][25]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][25] = {}
	tHundredDayPack_Reward[3323314][25]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][25]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][25]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][25]["RewardItem"][1]["Id"] = 192785 -- 【库】FlameDance[属性:0], 【表格】FlameDance
	tHundredDayPack_Reward[3323314][25]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FlameDance（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][26]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][26] = {}
	tHundredDayPack_Reward[3323314][26]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][26]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][26]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][26]["RewardItem"][1]["Id"] = 193115 -- 【库】XmasBunny[属性:0], 【表格】XmasBunny
	tHundredDayPack_Reward[3323314][26]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑XmasBunny（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][27]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][27] = {}
	tHundredDayPack_Reward[3323314][27]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][27]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][27]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][27]["RewardItem"][1]["Id"] = 193195 -- 【库】FreedomSuit[属性:0], 【表格】FreedomSuit
	tHundredDayPack_Reward[3323314][27]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FreedomSuit（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][28]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][28] = {}
	tHundredDayPack_Reward[3323314][28]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][28]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][28]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][28]["RewardItem"][1]["Id"] = 193205 -- 【库】PrideofTriumph[属性:0], 【表格】PrideofTriumph
	tHundredDayPack_Reward[3323314][28]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑PrideofTriumph（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][29]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][29] = {}
	tHundredDayPack_Reward[3323314][29]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][29]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][29]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][29]["RewardItem"][1]["Id"] = 193225 -- 【库】PrideofSuccess[属性:9], 【表格】PrideofSuccess
	tHundredDayPack_Reward[3323314][29]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑PrideofSuccess*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][30]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][30] = {}
	tHundredDayPack_Reward[3323314][30]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][30]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][30]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][30]["RewardItem"][1]["Id"] = 193275 -- 【库】RobeofDarkness(Hades)(NoHelmet)[属性:8], 【表格】RobeofDarkness(Hades)(NoHelmet)
	tHundredDayPack_Reward[3323314][30]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑RobeofDarkness(Hades)(NoHelmet)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][31]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][31] = {}
	tHundredDayPack_Reward[3323314][31]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][31]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][31]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][31]["RewardItem"][1]["Id"] = 193295 -- 【库】SongofDespair[属性:0], 【表格】SongofDespair
	tHundredDayPack_Reward[3323314][31]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SongofDespair（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][32]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][32] = {}
	tHundredDayPack_Reward[3323314][32]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][32]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][32]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][32]["RewardItem"][1]["Id"] = 193325 -- 【库】AspirationJacket[属性:0], 【表格】AspirationJacket
	tHundredDayPack_Reward[3323314][32]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑AspirationJacket（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][33]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][33] = {}
	tHundredDayPack_Reward[3323314][33]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][33]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][33]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][33]["RewardItem"][1]["Id"] = 193445 -- 【库】FrozenFantasy(Glaze)[属性:8], 【表格】FrozenFantasy(Glaze)
	tHundredDayPack_Reward[3323314][33]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FrozenFantasy(Glaze)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][34]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][34] = {}
	tHundredDayPack_Reward[3323314][34]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][34]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][34]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][34]["RewardItem"][1]["Id"] = 193525 -- 【库】FrozenFantasy(Glory)[属性:8], 【表格】FrozenFantasy(Glory)
	tHundredDayPack_Reward[3323314][34]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FrozenFantasy(Glory)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][35]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][35] = {}
	tHundredDayPack_Reward[3323314][35]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][35]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][35]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][35]["RewardItem"][1]["Id"] = 193555 -- 【库】LavaCatRobe(Charm)[属性:0], 【表格】LavaCatRobe(Charm)
	tHundredDayPack_Reward[3323314][35]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑LavaCatRobe(Charm)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][36]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][36] = {}
	tHundredDayPack_Reward[3323314][36]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][36]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][36]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][36]["RewardItem"][1]["Id"] = 193565 -- 【库】LavaCatRobe(Star)[属性:0], 【表格】LavaCatRobe(Star)
	tHundredDayPack_Reward[3323314][36]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑LavaCatRobe(Star)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][37]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][37] = {}
	tHundredDayPack_Reward[3323314][37]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][37]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][37]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][37]["RewardItem"][1]["Id"] = 193625 -- 【库】ButterflyRose[属性:0], 【表格】ButterflyRose
	tHundredDayPack_Reward[3323314][37]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ButterflyRose（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][38]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][38] = {}
	tHundredDayPack_Reward[3323314][38]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][38]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][38]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][38]["RewardItem"][1]["Id"] = 193685 -- 【库】ColorOfBreeze[属性:0], 【表格】ColorOfBreeze
	tHundredDayPack_Reward[3323314][38]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ColorOfBreeze（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][39]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][39] = {}
	tHundredDayPack_Reward[3323314][39]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][39]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][39]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][39]["RewardItem"][1]["Id"] = 193695 -- 【库】ButterflyFlower[属性:0], 【表格】ButterflyFlower
	tHundredDayPack_Reward[3323314][39]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ButterflyFlower（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][40]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][40] = {}
	tHundredDayPack_Reward[3323314][40]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][40]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][40]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][40]["RewardItem"][1]["Id"] = 193775 -- 【库】DaybreakRooster(Legend)[属性:8], 【表格】DaybreakRooster(Legend)
	tHundredDayPack_Reward[3323314][40]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑DaybreakRooster(Legend)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][41]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][41] = {}
	tHundredDayPack_Reward[3323314][41]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][41]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][41]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][41]["RewardItem"][1]["Id"] = 193785 -- 【库】LionofFury(Legend)[属性:8], 【表格】LionofFury(Legend)
	tHundredDayPack_Reward[3323314][41]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑LionofFury(Legend)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][42]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][42] = {}
	tHundredDayPack_Reward[3323314][42]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][42]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][42]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][42]["RewardItem"][1]["Id"] = 193795 -- 【库】ValiantHero(Legend)[属性:8], 【表格】ValiantHero(Legend)
	tHundredDayPack_Reward[3323314][42]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ValiantHero(Legend)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][43]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][43] = {}
	tHundredDayPack_Reward[3323314][43]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][43]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][43]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][43]["RewardItem"][1]["Id"] = 193805 -- 【库】BlueResurgence(Legend)[属性:8], 【表格】BlueResurgence(Legend)
	tHundredDayPack_Reward[3323314][43]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BlueResurgence(Legend)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][44]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][44] = {}
	tHundredDayPack_Reward[3323314][44]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][44]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][44]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][44]["RewardItem"][1]["Id"] = 193815 -- 【库】GermanyJersey(Legend)[属性:8], 【表格】GermanyJersey(Legend)
	tHundredDayPack_Reward[3323314][44]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑GermanyJersey(Legend)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][45]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][45] = {}
	tHundredDayPack_Reward[3323314][45]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][45]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][45]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][45]["RewardItem"][1]["Id"] = 193825 -- 【库】SpainJersey(Legend)[属性:8], 【表格】SpainJersey(Legend)
	tHundredDayPack_Reward[3323314][45]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SpainJersey(Legend)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][46]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][46] = {}
	tHundredDayPack_Reward[3323314][46]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][46]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][46]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][46]["RewardItem"][1]["Id"] = 194385 -- 【库】StarryAngelicRobe[属性:8], 【表格】StarryAngelicRobe
	tHundredDayPack_Reward[3323314][46]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑StarryAngelicRobe（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][47]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][47] = {}
	tHundredDayPack_Reward[3323314][47]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][47]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][47]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][47]["RewardItem"][1]["Id"] = 194395 -- 【库】LunarAngelicRobe[属性:8], 【表格】LunarAngelicRobe
	tHundredDayPack_Reward[3323314][47]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑LunarAngelicRobe（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][48]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][48] = {}
	tHundredDayPack_Reward[3323314][48]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][48]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][48]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][48]["RewardItem"][1]["Id"] = 194405 -- 【库】FoxSpirit(Charm)[属性:8], 【表格】FoxSpirit(Charm)
	tHundredDayPack_Reward[3323314][48]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FoxSpirit(Charm)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][49]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][49] = {}
	tHundredDayPack_Reward[3323314][49]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][49]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][49]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][49]["RewardItem"][1]["Id"] = 194695 -- 【库】EpicofACRockets(Signed)[属性:0], 【表格】EpicofACRockets(Signed)
	tHundredDayPack_Reward[3323314][49]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑EpicofACRockets(Signed)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][50]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][50] = {}
	tHundredDayPack_Reward[3323314][50]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][50]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][50]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][50]["RewardItem"][1]["Id"] = 194705 -- 【库】DynastyofTCLakers(Signed)[属性:0], 【表格】DynastyofTCLakers(Signed)
	tHundredDayPack_Reward[3323314][50]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑DynastyofTCLakers(Signed)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][51]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][51] = {}
	tHundredDayPack_Reward[3323314][51]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][51]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][51]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][51]["RewardItem"][1]["Id"] = 194715 -- 【库】MythofDCCavaliers(Signed)[属性:0], 【表格】MythofDCCavaliers(Signed)
	tHundredDayPack_Reward[3323314][51]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑MythofDCCavaliers(Signed)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][52]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][52] = {}
	tHundredDayPack_Reward[3323314][52]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][52]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][52]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][52]["RewardItem"][1]["Id"] = 194725 -- 【库】LegendofBCWarriors(Signed)[属性:0], 【表格】LegendofBCWarriors(Signed)
	tHundredDayPack_Reward[3323314][52]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑LegendofBCWarriors(Signed)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][53]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][53] = {}
	tHundredDayPack_Reward[3323314][53]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][53]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][53]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][53]["RewardItem"][1]["Id"] = 194875 -- 【库】BrightPurpleRomance[属性:8], 【表格】BrightPurpleRomance
	tHundredDayPack_Reward[3323314][53]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BrightPurpleRomance（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][54]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][54] = {}
	tHundredDayPack_Reward[3323314][54]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][54]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][54]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][54]["RewardItem"][1]["Id"] = 194885 -- 【库】SacredWarriorGarment[属性:0], 【表格】SacredWarriorGarment
	tHundredDayPack_Reward[3323314][54]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredWarriorGarment（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][55]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][55] = {}
	tHundredDayPack_Reward[3323314][55]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][55]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][55]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][55]["RewardItem"][1]["Id"] = 194895 -- 【库】SacredTrojanGarment[属性:0], 【表格】SacredTrojanGarment
	tHundredDayPack_Reward[3323314][55]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredTrojanGarment（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][56]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][56] = {}
	tHundredDayPack_Reward[3323314][56]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][56]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][56]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][56]["RewardItem"][1]["Id"] = 194905 -- 【库】SacredNinjaGarment[属性:0], 【表格】SacredNinjaGarment
	tHundredDayPack_Reward[3323314][56]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredNinjaGarment（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][57]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][57] = {}
	tHundredDayPack_Reward[3323314][57]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][57]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][57]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][57]["RewardItem"][1]["Id"] = 194915 -- 【库】SacredMonkGarment[属性:0], 【表格】SacredMonkGarment
	tHundredDayPack_Reward[3323314][57]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredMonkGarment（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][58]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][58] = {}
	tHundredDayPack_Reward[3323314][58]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][58]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][58]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][58]["RewardItem"][1]["Id"] = 194925 -- 【库】SacredPirateGarment[属性:0], 【表格】SacredPirateGarment
	tHundredDayPack_Reward[3323314][58]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredPirateGarment（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][59]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][59] = {}
	tHundredDayPack_Reward[3323314][59]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][59]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][59]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][59]["RewardItem"][1]["Id"] = 194935 -- 【库】SacredArcherGarment[属性:0], 【表格】SacredArcherGarment
	tHundredDayPack_Reward[3323314][59]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredArcherGarment（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][60]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][60] = {}
	tHundredDayPack_Reward[3323314][60]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][60]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][60]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][60]["RewardItem"][1]["Id"] = 194945 -- 【库】SacredTaoistGarment[属性:0], 【表格】SacredTaoistGarment
	tHundredDayPack_Reward[3323314][60]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SacredTaoistGarment（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][61]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][61] = {}
	tHundredDayPack_Reward[3323314][61]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][61]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][61]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][61]["RewardItem"][1]["Id"] = 195015 -- 【库】ChristmasHarmony[属性:8], 【表格】ChristmasHarmony
	tHundredDayPack_Reward[3323314][61]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ChristmasHarmony（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][62]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][62] = {}
	tHundredDayPack_Reward[3323314][62]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][62]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][62]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][62]["RewardItem"][1]["Id"] = 195045 -- 【库】BlissfulForeverHeart[属性:8], 【表格】BlissfulForeverHeart
	tHundredDayPack_Reward[3323314][62]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BlissfulForeverHeart（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][63]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][63] = {}
	tHundredDayPack_Reward[3323314][63]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][63]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][63]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][63]["RewardItem"][1]["Id"] = 195075 -- 【库】BlessedStar(Splendor)[属性:0], 【表格】BlessedStar(Splendor)
	tHundredDayPack_Reward[3323314][63]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BlessedStar(Splendor)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][64]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][64] = {}
	tHundredDayPack_Reward[3323314][64]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][64]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][64]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][64]["RewardItem"][1]["Id"] = 195175 -- 【库】GloryofRaptors(Signed)[属性:0], 【表格】GloryofRaptors(Signed)
	tHundredDayPack_Reward[3323314][64]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑GloryofRaptors(Signed)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][65]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][65] = {}
	tHundredDayPack_Reward[3323314][65]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][65]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][65]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][65]["RewardItem"][1]["Id"] = 195185 -- 【库】VigorofCeltics(Signed)[属性:0], 【表格】VigorofCeltics(Signed)
	tHundredDayPack_Reward[3323314][65]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑VigorofCeltics(Signed)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][66]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][66] = {}
	tHundredDayPack_Reward[3323314][66]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][66]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][66]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][66]["RewardItem"][1]["Id"] = 195195 -- 【库】PowerofSixers(Signed)[属性:0], 【表格】PowerofSixers(Signed)
	tHundredDayPack_Reward[3323314][66]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑PowerofSixers(Signed)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][67]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][67] = {}
	tHundredDayPack_Reward[3323314][67]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][67]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][67]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][67]["RewardItem"][1]["Id"] = 195205 -- 【库】RisingofPelicans(Signed)[属性:0], 【表格】RisingofPelicans(Signed)
	tHundredDayPack_Reward[3323314][67]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑RisingofPelicans(Signed)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][68]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][68] = {}
	tHundredDayPack_Reward[3323314][68]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][68]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][68]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][68]["RewardItem"][1]["Id"] = 195225 -- 【库】PokerMaster(Legend)[属性:0], 【表格】PokerMaster(Legend)
	tHundredDayPack_Reward[3323314][68]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑PokerMaster(Legend)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][69]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][69] = {}
	tHundredDayPack_Reward[3323314][69]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][69]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][69]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][69]["RewardItem"][1]["Id"] = 195295 -- 【库】EgyptianKingJersey(Champion)[属性:0], 【表格】EgyptianKingJersey(Champion)
	tHundredDayPack_Reward[3323314][69]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑EgyptianKingJersey(Champion)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][70]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][70] = {}
	tHundredDayPack_Reward[3323314][70]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][70]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][70]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][70]["RewardItem"][1]["Id"] = 195305 -- 【库】BelgianDevilJersey(Champion)[属性:0], 【表格】BelgianDevilJersey(Champion)
	tHundredDayPack_Reward[3323314][70]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BelgianDevilJersey(Champion)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][71]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][71] = {}
	tHundredDayPack_Reward[3323314][71]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][71]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][71]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][71]["RewardItem"][1]["Id"] = 195315 -- 【库】BrazilianHeroJersey(Champion)[属性:0], 【表格】BrazilianHeroJersey(Champion)
	tHundredDayPack_Reward[3323314][71]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BrazilianHeroJersey(Champion)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][72]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][72] = {}
	tHundredDayPack_Reward[3323314][72]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][72]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][72]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][72]["RewardItem"][1]["Id"] = 195325 -- 【库】PampasEagleJersey(Champion)[属性:0], 【表格】PampasEagleJersey(Champion)
	tHundredDayPack_Reward[3323314][72]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑PampasEagleJersey(Champion)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][73]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][73] = {}
	tHundredDayPack_Reward[3323314][73]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][73]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][73]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][73]["RewardItem"][1]["Id"] = 195335 -- 【库】PortugalSoulJersey(Champion)[属性:0], 【表格】PortugalSoulJersey(Champion)
	tHundredDayPack_Reward[3323314][73]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑PortugalSoulJersey(Champion)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][74]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][74] = {}
	tHundredDayPack_Reward[3323314][74]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][74]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][74]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][74]["RewardItem"][1]["Id"] = 195345 -- 【库】SpanishFighterJersey(Champion)[属性:0], 【表格】SpanishFighterJersey(Champion)
	tHundredDayPack_Reward[3323314][74]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SpanishFighterJersey(Champion)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][75]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][75] = {}
	tHundredDayPack_Reward[3323314][75]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][75]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][75]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][75]["RewardItem"][1]["Id"] = 195365 -- 【库】LegendofWarriors(Champion)[属性:0], 【表格】LegendofWarriors(Champion)
	tHundredDayPack_Reward[3323314][75]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑LegendofWarriors(Champion)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][76]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][76] = {}
	tHundredDayPack_Reward[3323314][76]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][76]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][76]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][76]["RewardItem"][1]["Id"] = 195405 -- 【库】BlossomRomance(Charm)[属性:0], 【表格】BlossomRomance(Charm)
	tHundredDayPack_Reward[3323314][76]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BlossomRomance(Charm)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][77]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][77] = {}
	tHundredDayPack_Reward[3323314][77]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][77]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][77]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][77]["RewardItem"][1]["Id"] = 195425 -- 【库】ImperialDragonArmor[属性:0], 【表格】ImperialDragonArmor
	tHundredDayPack_Reward[3323314][77]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ImperialDragonArmor（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][78]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][78] = {}
	tHundredDayPack_Reward[3323314][78]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][78]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][78]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][78]["RewardItem"][1]["Id"] = 195485 -- 【库】InvincibleEastern(Supreme)[属性:0], 【表格】InvincibleEastern(Supreme)
	tHundredDayPack_Reward[3323314][78]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑InvincibleEastern(Supreme)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][79]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][79] = {}
	tHundredDayPack_Reward[3323314][79]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][79]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][79]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][79]["RewardItem"][1]["Id"] = 195515 -- 【库】TaleofSwordsman[属性:0], 【表格】TaleofSwordsman
	tHundredDayPack_Reward[3323314][79]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑TaleofSwordsman（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][80]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][80] = {}
	tHundredDayPack_Reward[3323314][80]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][80]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][80]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][80]["RewardItem"][1]["Id"] = 195545 -- 【库】CrystalLove(Star)[属性:0], 【表格】CrystalLove(Star)
	tHundredDayPack_Reward[3323314][80]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑CrystalLove(Star)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][81]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][81] = {}
	tHundredDayPack_Reward[3323314][81]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][81]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][81]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][81]["RewardItem"][1]["Id"] = 195575 -- 【库】CommanderRobe(Wealth)[属性:8], 【表格】CommanderRobe(Wealth)
	tHundredDayPack_Reward[3323314][81]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑CommanderRobe(Wealth)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][82]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][82] = {}
	tHundredDayPack_Reward[3323314][82]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][82]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][82]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][82]["RewardItem"][1]["Id"] = 195605 -- 【库】RockingRomance(Fantasy)[属性:0], 【表格】RockingRomance(Fantasy)
	tHundredDayPack_Reward[3323314][82]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑RockingRomance(Fantasy)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][83]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][83] = {}
	tHundredDayPack_Reward[3323314][83]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][83]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][83]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][83]["RewardItem"][1]["Id"] = 195645 -- 【库】StarSea(Hymn)[属性:0], 【表格】StarSea(Hymn)
	tHundredDayPack_Reward[3323314][83]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑StarSea(Hymn)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][84]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][84] = {}
	tHundredDayPack_Reward[3323314][84]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][84]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][84]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][84]["RewardItem"][1]["Id"] = 195715 -- 【库】FlamingWarrior(Elite)[属性:0], 【表格】FlamingWarrior(Elite)
	tHundredDayPack_Reward[3323314][84]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FlamingWarrior(Elite)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][85]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][85] = {}
	tHundredDayPack_Reward[3323314][85]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][85]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][85]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][85]["RewardItem"][1]["Id"] = 195795 -- 【库】SweetnessofLove(Eternal)[属性:0], 【表格】SweetnessofLove(Eternal)
	tHundredDayPack_Reward[3323314][85]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SweetnessofLove(Eternal)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][86]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][86] = {}
	tHundredDayPack_Reward[3323314][86]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][86]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][86]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][86]["RewardItem"][1]["Id"] = 195845 -- 【库】RemoteRomance(Firmness)[属性:0], 【表格】RemoteRomance(Firmness)
	tHundredDayPack_Reward[3323314][86]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑RemoteRomance(Firmness)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][87]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][87] = {}
	tHundredDayPack_Reward[3323314][87]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][87]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][87]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][87]["RewardItem"][1]["Id"] = 195865 -- 【库】ImperialLeader(Supreme)[属性:0], 【表格】ImperialLeader(Supreme)
	tHundredDayPack_Reward[3323314][87]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ImperialLeader(Supreme)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][88]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][88] = {}
	tHundredDayPack_Reward[3323314][88]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][88]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][88]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][88]["RewardItem"][1]["Id"] = 200449 -- 【库】SomersaultCloud[属性:0], 【表格】SomersaultCloud
	tHundredDayPack_Reward[3323314][88]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SomersaultCloud（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][89]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][89] = {}
	tHundredDayPack_Reward[3323314][89]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][89]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][89]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][89]["RewardItem"][1]["Id"] = 200471 -- 【库】LightningSnake[属性:0], 【表格】LightningSnake
	tHundredDayPack_Reward[3323314][89]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑LightningSnake（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][90]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][90] = {}
	tHundredDayPack_Reward[3323314][90]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][90]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][90]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][90]["RewardItem"][1]["Id"] = 200477 -- 【库】SnowFox[属性:0], 【表格】SnowFox
	tHundredDayPack_Reward[3323314][90]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SnowFox（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][91]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][91] = {}
	tHundredDayPack_Reward[3323314][91]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][91]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][91]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][91]["RewardItem"][1]["Id"] = 200482 -- 【库】WingedFrostcatArmor[属性:0], 【表格】WingedFrostcatArmor
	tHundredDayPack_Reward[3323314][91]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑WingedFrostcatArmor（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][92]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][92] = {}
	tHundredDayPack_Reward[3323314][92]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][92]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][92]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][92]["RewardItem"][1]["Id"] = 200495 -- 【库】LoveHorse[属性:0], 【表格】LoveHorse
	tHundredDayPack_Reward[3323314][92]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑LoveHorse（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][93]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][93] = {}
	tHundredDayPack_Reward[3323314][93]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][93]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][93]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][93]["RewardItem"][1]["Id"] = 200500 -- 【库】Fuleco[属性:0], 【表格】Fuleco
	tHundredDayPack_Reward[3323314][93]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑Fuleco（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][94]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][94] = {}
	tHundredDayPack_Reward[3323314][94]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][94]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][94]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][94]["RewardItem"][1]["Id"] = 200517 -- 【库】KingOfScorpions(Saint)[属性:0], 【表格】KingOfScorpions(Saint)
	tHundredDayPack_Reward[3323314][94]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑KingOfScorpions(Saint)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][95]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][95] = {}
	tHundredDayPack_Reward[3323314][95]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][95]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][95]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][95]["RewardItem"][1]["Id"] = 200525 -- 【库】BrightAntelope[属性:0], 【表格】BrightAntelope
	tHundredDayPack_Reward[3323314][95]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑BrightAntelope（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][96]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][96] = {}
	tHundredDayPack_Reward[3323314][96]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][96]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][96]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][96]["RewardItem"][1]["Id"] = 200531 -- 【库】FieryDragon(Hades)[属性:0], 【表格】FieryDragon(Hades)
	tHundredDayPack_Reward[3323314][96]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FieryDragon(Hades)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][97]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][97] = {}
	tHundredDayPack_Reward[3323314][97]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][97]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][97]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][97]["RewardItem"][1]["Id"] = 200537 -- 【库】HolyLotus(Goddess)[属性:0], 【表格】HolyLotus(Goddess)
	tHundredDayPack_Reward[3323314][97]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑HolyLotus(Goddess)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][98]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][98] = {}
	tHundredDayPack_Reward[3323314][98]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][98]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][98]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][98]["RewardItem"][1]["Id"] = 200540 -- 【库】SavageBeast[属性:0], 【表格】SavageBeast
	tHundredDayPack_Reward[3323314][98]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SavageBeast（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][99]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][99] = {}
	tHundredDayPack_Reward[3323314][99]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][99]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][99]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][99]["RewardItem"][1]["Id"] = 200543 -- 【库】GeneralCat(Charm)[属性:0], 【表格】GeneralCat(Charm)
	tHundredDayPack_Reward[3323314][99]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑GeneralCat(Charm)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][100]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][100] = {}
	tHundredDayPack_Reward[3323314][100]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][100]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][100]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][100]["RewardItem"][1]["Id"] = 200544 -- 【库】GeneralCat(Star)[属性:0], 【表格】GeneralCat(Star)
	tHundredDayPack_Reward[3323314][100]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑GeneralCat(Star)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][101]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][101] = {}
	tHundredDayPack_Reward[3323314][101]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][101]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][101]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][101]["RewardItem"][1]["Id"] = 200549 -- 【库】SoulKylin[属性:0], 【表格】SoulKylin
	tHundredDayPack_Reward[3323314][101]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SoulKylin（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][102]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][102] = {}
	tHundredDayPack_Reward[3323314][102]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][102]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][102]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][102]["RewardItem"][1]["Id"] = 200559 -- 【库】SolarMonkey[属性:0], 【表格】SolarMonkey
	tHundredDayPack_Reward[3323314][102]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SolarMonkey（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][103]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][103] = {}
	tHundredDayPack_Reward[3323314][103]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][103]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][103]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][103]["RewardItem"][1]["Id"] = 200563 -- 【库】VictorAlpaca[属性:0], 【表格】VictorAlpaca
	tHundredDayPack_Reward[3323314][103]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑VictorAlpaca（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][104]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][104] = {}
	tHundredDayPack_Reward[3323314][104]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][104]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][104]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][104]["RewardItem"][1]["Id"] = 200564 -- 【库】SuperVictorAlpaca[属性:0], 【表格】SuperVictorAlpaca
	tHundredDayPack_Reward[3323314][104]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SuperVictorAlpaca（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][105]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][105] = {}
	tHundredDayPack_Reward[3323314][105]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][105]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][105]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][105]["RewardItem"][1]["Id"] = 200589 -- 【库】StarRoosterEndlessDream[属性:8], 【表格】StarRoosterEndlessDream
	tHundredDayPack_Reward[3323314][105]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑StarRoosterEndlessDream（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][106]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][106] = {}
	tHundredDayPack_Reward[3323314][106]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][106]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][106]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][106]["RewardItem"][1]["Id"] = 200590 -- 【库】StarRoosterEndlessExplorer[属性:8], 【表格】StarRoosterEndlessExplorer
	tHundredDayPack_Reward[3323314][106]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑StarRoosterEndlessExplorer（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][107]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][107] = {}
	tHundredDayPack_Reward[3323314][107]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][107]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][107]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][107]["RewardItem"][1]["Id"] = 200591 -- 【库】StarRoosterEndlessHope[属性:8], 【表格】StarRoosterEndlessHope
	tHundredDayPack_Reward[3323314][107]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑StarRoosterEndlessHope（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][108]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][108] = {}
	tHundredDayPack_Reward[3323314][108]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][108]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][108]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][108]["RewardItem"][1]["Id"] = 200592 -- 【库】StarRoosterUltimateChallenge[属性:8], 【表格】StarRoosterUltimateChallenge
	tHundredDayPack_Reward[3323314][108]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑StarRoosterUltimateChallenge（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][109]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][109] = {}
	tHundredDayPack_Reward[3323314][109]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][109]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][109]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][109]["RewardItem"][1]["Id"] = 200601 -- 【库】StarRoosterGreatCourage[属性:0], 【表格】StarRoosterGreatCourage
	tHundredDayPack_Reward[3323314][109]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑StarRoosterGreatCourage（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][110]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][110] = {}
	tHundredDayPack_Reward[3323314][110]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][110]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][110]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][110]["RewardItem"][1]["Id"] = 200613 -- 【库】FierceCloud[属性:0], 【表格】FierceCloud
	tHundredDayPack_Reward[3323314][110]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FierceCloud（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][111]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][111] = {}
	tHundredDayPack_Reward[3323314][111]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][111]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][111]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][111]["RewardItem"][1]["Id"] = 200614 -- 【库】PacificCloud[属性:0], 【表格】PacificCloud
	tHundredDayPack_Reward[3323314][111]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑PacificCloud（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][112]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][112] = {}
	tHundredDayPack_Reward[3323314][112]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][112]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][112]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][112]["RewardItem"][1]["Id"] = 200623 -- 【库】RadiantGoldenRetriever[属性:0], 【表格】RadiantGoldenRetriever
	tHundredDayPack_Reward[3323314][112]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑RadiantGoldenRetriever（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][113]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][113] = {}
	tHundredDayPack_Reward[3323314][113]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][113]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][113]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][113]["RewardItem"][1]["Id"] = 200624 -- 【库】Superdog[属性:0], 【表格】Superdog
	tHundredDayPack_Reward[3323314][113]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑Superdog（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][114]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][114] = {}
	tHundredDayPack_Reward[3323314][114]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][114]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][114]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][114]["RewardItem"][1]["Id"] = 200626 -- 【库】GiantFish(Ripple)[属性:0], 【表格】GiantFish(Ripple)
	tHundredDayPack_Reward[3323314][114]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑GiantFish(Ripple)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][115]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][115] = {}
	tHundredDayPack_Reward[3323314][115]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][115]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][115]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][115]["RewardItem"][1]["Id"] = 200629 -- 【库】AuspiciousCloud[属性:0], 【表格】AuspiciousCloud
	tHundredDayPack_Reward[3323314][115]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑AuspiciousCloud（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][116]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][116] = {}
	tHundredDayPack_Reward[3323314][116]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][116]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][116]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][116]["RewardItem"][1]["Id"] = 200632 -- 【库】GiantFish(Gold)[属性:0], 【表格】GiantFish(Gold)
	tHundredDayPack_Reward[3323314][116]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑GiantFish(Gold)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][117]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][117] = {}
	tHundredDayPack_Reward[3323314][117]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][117]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][117]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][117]["RewardItem"][1]["Id"] = 200638 -- 【库】ShadowFox(Shura)[属性:0], 【表格】ShadowFox(Shura)
	tHundredDayPack_Reward[3323314][117]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ShadowFox(Shura)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][118]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][118] = {}
	tHundredDayPack_Reward[3323314][118]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][118]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][118]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][118]["RewardItem"][1]["Id"] = 200639 -- 【库】AzureFox(Freedom)[属性:0], 【表格】AzureFox(Freedom)
	tHundredDayPack_Reward[3323314][118]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑AzureFox(Freedom)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][119]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][119] = {}
	tHundredDayPack_Reward[3323314][119]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][119]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][119]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][119]["RewardItem"][1]["Id"] = 200647 -- 【库】SeaDragon(Holy)[属性:0], 【表格】SeaDragon(Holy)
	tHundredDayPack_Reward[3323314][119]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SeaDragon(Holy)（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][120]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][120] = {}
	tHundredDayPack_Reward[3323314][120]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][120]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][120]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][120]["RewardItem"][1]["Id"] = 200655 -- 【库】SolarKylin[属性:0], 【表格】SolarKylin
	tHundredDayPack_Reward[3323314][120]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑SolarKylin（赠）*1



	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][121]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][121] = {}
	tHundredDayPack_Reward[3323314][121]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][121]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][121]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][121]["RewardItem"][1]["Id"] = 205000 -- 【库】CelestialDragon(Freedom)[属性:0], 【表格】CelestialDragon(Freedom)
	tHundredDayPack_Reward[3323314][121]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑CelestialDragon(Freedom)（赠）*1

	-- ===坐骑百日礼盒打开
	-- ===索引: tHundredDayPack_Reward[3323314][122]
	-- ===删除: 3323314,1
	-- ===

	tHundredDayPack_Reward[3323314][122] = {}
	tHundredDayPack_Reward[3323314][122]["LogId"] = 12001614
	tHundredDayPack_Reward[3323314][122]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323314][122]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323314][122]["DeleteItem"][1]["Id"] = 3323314 -- 【库】100-dayMountPack[属性:9]
	tHundredDayPack_Reward[3323314][122]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314][122]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314][122]["RewardItem"][1]["Id"] = 205900 -- 【库】PerfectBliss[属性:0], 【表格】PerfectBliss
	tHundredDayPack_Reward[3323314][122]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑PerfectBliss（赠）*1


	
	
	tHundredDayPack_Reward[3323314]["Other"] = {}
	--第7次打开
	tHundredDayPack_Reward[3323314]["Other"][7] = {}
	tHundredDayPack_Reward[3323314]["Other"][7]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314]["Other"][7]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314]["Other"][7]["RewardItem"][1]["Id"] = 3323315 -- 【库】7thTimeMountPack(B)[属性:9], 【表格】10张10亿爵位捐献凭证
	tHundredDayPack_Reward[3323314]["Other"][7]["RewardItem"][1]["Attr"] = "0 1" -- 7thTimeMountPack*1
	--第15次打开
	tHundredDayPack_Reward[3323314]["Other"][15] = {}
	tHundredDayPack_Reward[3323314]["Other"][15]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314]["Other"][15]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314]["Other"][15]["RewardItem"][1]["Id"] = 3323316 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10张10亿爵位捐献凭证
	tHundredDayPack_Reward[3323314]["Other"][15]["RewardItem"][1]["Attr"] = "0 1" -- BillionContributionVoucher(B)*10
	--第30次打开
	tHundredDayPack_Reward[3323314]["Other"][30] = {}
	tHundredDayPack_Reward[3323314]["Other"][30]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314]["Other"][30]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314]["Other"][30]["RewardItem"][1]["Id"] = 3323317 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10张10亿爵位捐献凭证
	tHundredDayPack_Reward[3323314]["Other"][30]["RewardItem"][1]["Attr"] = "0 1" -- BillionContributionVoucher(B)*10
	--第60次打开
	tHundredDayPack_Reward[3323314]["Other"][60] = {}
	tHundredDayPack_Reward[3323314]["Other"][60]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314]["Other"][60]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314]["Other"][60]["RewardItem"][1]["Id"] = 3323318 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10张10亿爵位捐献凭证
	tHundredDayPack_Reward[3323314]["Other"][60]["RewardItem"][1]["Attr"] = "0 1" -- BillionContributionVoucher(B)*10
	--第90次打开
	tHundredDayPack_Reward[3323314]["Other"][90] = {}
	tHundredDayPack_Reward[3323314]["Other"][90]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314]["Other"][90]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314]["Other"][90]["RewardItem"][1]["Id"] = 3323319 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10张10亿爵位捐献凭证
	tHundredDayPack_Reward[3323314]["Other"][90]["RewardItem"][1]["Attr"] = "0 1" -- BillionContributionVoucher(B)*10
	--第100次打开
	tHundredDayPack_Reward[3323314]["Other"][100] = {}
	tHundredDayPack_Reward[3323314]["Other"][100]["RewardItem"] = {}
	tHundredDayPack_Reward[3323314]["Other"][100]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323314]["Other"][100]["RewardItem"][1]["Id"] = 3323320 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10张10亿爵位捐献凭证
	tHundredDayPack_Reward[3323314]["Other"][100]["RewardItem"][1]["Attr"] = "0 1" -- BillionContributionVoucher(B)*10


	
	
	


	-- ===坐骑礼盒7次超值包
	-- ===索引: tHundredDayPack_Reward[3323315]
	-- ===删除: 3323315,1
	-- ===
	tHundredDayPack_Reward[3323315] = {}
	tHundredDayPack_Reward[3323315]["LogId"] = 12001614
	tHundredDayPack_Reward[3323315]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323315]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323315]["DeleteItem"][1]["Id"] = 3323315 -- 【库】7thTimeMountPack[属性:9]
	tHundredDayPack_Reward[3323315]["RewardItem"] = {}
	tHundredDayPack_Reward[3323315]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323315]["RewardItem"][1]["Id"] = 3320151 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10张10亿爵位捐献凭证
	tHundredDayPack_Reward[3323315]["RewardItem"][1]["Attr"] = "0 10" -- BillionContributionVoucher(B)*10



	-- ===坐骑礼盒15次超值包
	-- ===索引: tHundredDayPack_Reward[3323316]
	-- ===删除: 3323316,1
	-- ===
	tHundredDayPack_Reward[3323316] = {}
	tHundredDayPack_Reward[3323316]["LogId"] = 12001614
	tHundredDayPack_Reward[3323316]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323316]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323316]["DeleteItem"][1]["Id"] = 3323316 -- 【库】15thTimeMountPack[属性:9]
	tHundredDayPack_Reward[3323316]["RewardItem"] = {}
	tHundredDayPack_Reward[3323316]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323316]["RewardItem"][1]["Id"] = 3320151 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10张10亿爵位捐献凭证
	tHundredDayPack_Reward[3323316]["RewardItem"][1]["Attr"] = "0 10" -- BillionContributionVoucher(B)*10



	-- ===坐骑礼盒30次超值包
	-- ===索引: tHundredDayPack_Reward[3323317]
	-- ===删除: 3323317,1
	-- ===
	tHundredDayPack_Reward[3323317] = {}
	tHundredDayPack_Reward[3323317]["LogId"] = 12001614
	tHundredDayPack_Reward[3323317]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323317]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323317]["DeleteItem"][1]["Id"] = 3323317 -- 【库】30thTimeMountPack[属性:9]
	tHundredDayPack_Reward[3323317]["RewardItem"] = {}
	tHundredDayPack_Reward[3323317]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323317]["RewardItem"][1]["Id"] = 3320151 -- 【库】BillionContributionVoucher(B)[属性:9], 【表格】10张10亿爵位捐献凭证
	tHundredDayPack_Reward[3323317]["RewardItem"][1]["Attr"] = "0 10" -- BillionContributionVoucher(B)*10



	-- ===坐骑礼盒60次超值包
	-- ===索引: tHundredDayPack_Reward[3323318]
	-- ===删除: 3323318,1
	-- ===
	tHundredDayPack_Reward[3323318] = {}
	tHundredDayPack_Reward[3323318]["LogId"] = 12001614
	tHundredDayPack_Reward[3323318]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323318]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323318]["DeleteItem"][1]["Id"] = 3323318 -- 【库】60thTimeMountPack[属性:9]
	tHundredDayPack_Reward[3323318]["RewardItem"] = {}
	tHundredDayPack_Reward[3323318]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323318]["RewardItem"][1]["Id"] = 3311873 -- 【库】EpicMateriaSelectionBag[属性:0], 【表格】史诗武器转换道具
	tHundredDayPack_Reward[3323318]["RewardItem"][1]["Attr"] = "0 1 3" -- EpicMateriaSelectionBag*1



	-- ===坐骑礼盒90次超值包
	-- ===索引: tHundredDayPack_Reward[3323319]
	-- ===删除: 3323319,1
	-- ===
	tHundredDayPack_Reward[3323319] = {}
	tHundredDayPack_Reward[3323319]["LogId"] = 12001614
	tHundredDayPack_Reward[3323319]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323319]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323319]["DeleteItem"][1]["Id"] = 3323319 -- 【库】90thTimeMountPack[属性:9]
	tHundredDayPack_Reward[3323319]["RewardItem"] = {}
	tHundredDayPack_Reward[3323319]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323319]["RewardItem"][1]["Id"] = 3312777 -- 【库】Optional+1RareYellowRuneBag(B)[属性:9], 【表格】1个赠可选黄色稀有神纹
	tHundredDayPack_Reward[3323319]["RewardItem"][1]["Attr"] = "0 1" -- Optional+1RareYellowRuneBag(B)*1



	-- ===坐骑礼盒100次超值包
	-- ===索引: tHundredDayPack_Reward[3323320]
	-- ===删除: 3323320,1
	-- ===
	tHundredDayPack_Reward[3323320] = {}
	tHundredDayPack_Reward[3323320]["LogId"] = 12001614
	tHundredDayPack_Reward[3323320]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323320]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323320]["DeleteItem"][1]["Id"] = 3323320 -- 【库】100thTimeMountPack[属性:9]
	tHundredDayPack_Reward[3323320]["RewardItem"] = {}
	tHundredDayPack_Reward[3323320]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323320]["RewardItem"][1]["Id"] = 711903 -- 【库】ChiBooster(+1)[属性:9], 【表格】自创武功+1券*6
	tHundredDayPack_Reward[3323320]["RewardItem"][1]["Attr"] = "0 6" -- ChiBooster(+1)*6

	
	
	
	
	
	
	
	
	
	
	
	
	
	-- ===9稀有黄色神纹兑换券
	-- ===索引: tHundredDayPack_Reward[3323321]
	-- ===删除: 3323321,9
	-- ===
	tHundredDayPack_Reward[3323321] = {}
	tHundredDayPack_Reward[3323321]["LogId"] = 12001614
	tHundredDayPack_Reward[3323321]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323321]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323321]["DeleteItem"][1]["Id"] = 3323321 -- 【库】+9RareYellowRuneTicket[属性:9]
	tHundredDayPack_Reward[3323321]["DeleteItem"][1]["ItemNum"] = 10
	tHundredDayPack_Reward[3323321]["RewardItem"] = {}
	tHundredDayPack_Reward[3323321]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323321]["RewardItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9], 【表格】+9RareYellowRuneSelectionPack
	tHundredDayPack_Reward[3323321]["RewardItem"][1]["Attr"] = "0 1" -- +9RareYellowRuneSelectionPack*1



		-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][1]
	-- ===删除: 3323322,1
	-- ===
	tHundredDayPack_Reward[3323322] = {}
	tHundredDayPack_Reward[3323322][1] = {}
	tHundredDayPack_Reward[3323322][1]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][1]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][1]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][1]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][1]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][1]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][1]["RewardItem"][1]["Id"] = 4031409 -- 【库】QuickMount(+9)[属性:8], 【表格】策马扬鞭
	tHundredDayPack_Reward[3323322][1]["RewardItem"][1]["Attr"] = "0 1 3" -- QuickMount(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][2]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][2] = {}
	tHundredDayPack_Reward[3323322][2]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][2]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][2]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][2]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][2]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][2]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][2]["RewardItem"][1]["Id"] = 4031509 -- 【库】Breakdown(+9)[属性:8], 【表格】攻城掠地
	tHundredDayPack_Reward[3323322][2]["RewardItem"][1]["Attr"] = "0 1 3" -- Breakdown(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][3]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][3] = {}
	tHundredDayPack_Reward[3323322][3]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][3]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][3]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][3]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][3]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][3]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][3]["RewardItem"][1]["Id"] = 4031609 -- 【库】Barrier(+9)[属性:8], 【表格】玄武护体
	tHundredDayPack_Reward[3323322][3]["RewardItem"][1]["Attr"] = "0 1 3" -- Barrier(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][4]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][4] = {}
	tHundredDayPack_Reward[3323322][4]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][4]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][4]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][4]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][4]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][4]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][4]["RewardItem"][1]["Id"] = 4032009 -- 【库】Sanctity(+9)[属性:8], 【表格】神罗天尊
	tHundredDayPack_Reward[3323322][4]["RewardItem"][1]["Attr"] = "0 1 3" -- Sanctity(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][5]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][5] = {}
	tHundredDayPack_Reward[3323322][5]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][5]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][5]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][5]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][5]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][5]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][5]["RewardItem"][1]["Id"] = 4032109 -- 【库】FireBlast(+9)[属性:8], 【表格】爆炎诀
	tHundredDayPack_Reward[3323322][5]["RewardItem"][1]["Attr"] = "0 1 3" -- FireBlast(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][6]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][6] = {}
	tHundredDayPack_Reward[3323322][6]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][6]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][6]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][6]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][6]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][6]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][6]["RewardItem"][1]["Id"] = 4032209 -- 【库】Serenity(+9)[属性:8], 【表格】清心诀
	tHundredDayPack_Reward[3323322][6]["RewardItem"][1]["Attr"] = "0 1 3" -- Serenity(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][7]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][7] = {}
	tHundredDayPack_Reward[3323322][7]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][7]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][7]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][7]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][7]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][7]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][7]["RewardItem"][1]["Id"] = 4032309 -- 【库】Wonder(+9)[属性:8], 【表格】天衣无缝
	tHundredDayPack_Reward[3323322][7]["RewardItem"][1]["Attr"] = "0 1 3" -- Wonder(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][8]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][8] = {}
	tHundredDayPack_Reward[3323322][8]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][8]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][8]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][8]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][8]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][8]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][8]["RewardItem"][1]["Id"] = 4032409 -- 【库】SoulChant(+9)[属性:8], 【表格】祭灵诀
	tHundredDayPack_Reward[3323322][8]["RewardItem"][1]["Attr"] = "0 1 3" -- SoulChant(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][9]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][9] = {}
	tHundredDayPack_Reward[3323322][9]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][9]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][9]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][9]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][9]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][9]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][9]["RewardItem"][1]["Id"] = 4032509 -- 【库】WideSwipe(+9)[属性:8], 【表格】横扫千军
	tHundredDayPack_Reward[3323322][9]["RewardItem"][1]["Attr"] = "0 1 3" -- WideSwipe(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][10]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][10] = {}
	tHundredDayPack_Reward[3323322][10]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][10]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][10]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][10]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][10]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][10]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][10]["RewardItem"][1]["Id"] = 4032609 -- 【库】Nirvana(+9)[属性:8], 【表格】涅槃重生
	tHundredDayPack_Reward[3323322][10]["RewardItem"][1]["Attr"] = "0 1 3" -- Nirvana(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][11]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][11] = {}
	tHundredDayPack_Reward[3323322][11]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][11]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][11]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][11]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][11]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][11]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][11]["RewardItem"][1]["Id"] = 4032709 -- 【库】Sharpness(+9)[属性:8], 【表格】锋芒毕露
	tHundredDayPack_Reward[3323322][11]["RewardItem"][1]["Attr"] = "0 1 3" -- Sharpness(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][12]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][12] = {}
	tHundredDayPack_Reward[3323322][12]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][12]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][12]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][12]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][12]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][12]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][12]["RewardItem"][1]["Id"] = 4032809 -- 【库】Evocation(+9)[属性:8], 【表格】魂兮归来
	tHundredDayPack_Reward[3323322][12]["RewardItem"][1]["Attr"] = "0 1 3" -- Evocation(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][13]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][13] = {}
	tHundredDayPack_Reward[3323322][13]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][13]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][13]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][13]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][13]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][13]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][13]["RewardItem"][1]["Id"] = 4032909 -- 【库】Overwhelm(+9)[属性:8], 【表格】例无虚发
	tHundredDayPack_Reward[3323322][13]["RewardItem"][1]["Attr"] = "0 1 3" -- Overwhelm(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][14]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][14] = {}
	tHundredDayPack_Reward[3323322][14]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][14]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][14]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][14]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][14]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][14]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][14]["RewardItem"][1]["Id"] = 4033009 -- 【库】Judgment(+9)[属性:8], 【表格】审判
	tHundredDayPack_Reward[3323322][14]["RewardItem"][1]["Attr"] = "0 1 3" -- Judgment(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][15]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][15] = {}
	tHundredDayPack_Reward[3323322][15]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][15]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][15]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][15]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][15]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][15]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][15]["RewardItem"][1]["Id"] = 4033309 -- 【库】DeadlySight(+9)[属性:8], 【表格】致命准星
	tHundredDayPack_Reward[3323322][15]["RewardItem"][1]["Attr"] = "0 1 3" -- DeadlySight(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][16]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][16] = {}
	tHundredDayPack_Reward[3323322][16]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][16]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][16]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][16]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][16]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][16]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][16]["RewardItem"][1]["Id"] = 4033409 -- 【库】TacitStrike(+9)[属性:8], 【表格】会心一击
	tHundredDayPack_Reward[3323322][16]["RewardItem"][1]["Attr"] = "0 1 3" -- TacitStrike(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][17]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][17] = {}
	tHundredDayPack_Reward[3323322][17]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][17]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][17]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][17]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][17]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][17]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][17]["RewardItem"][1]["Id"] = 4033909 -- 【库】ReverseMagic(+9)[属性:8], 【表格】斗转星移
	tHundredDayPack_Reward[3323322][17]["RewardItem"][1]["Attr"] = "0 1 3" -- ReverseMagic(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][18]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][18] = {}
	tHundredDayPack_Reward[3323322][18]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][18]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][18]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][18]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][18]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][18]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][18]["RewardItem"][1]["Id"] = 4034009 -- 【库】DivineShield(+9)[属性:8], 【表格】乾坤护法
	tHundredDayPack_Reward[3323322][18]["RewardItem"][1]["Attr"] = "0 1 3" -- DivineShield(+9)（赠）*1



	-- ===（+9）稀有黄色神纹可选包（赠）
	-- ===索引: tHundredDayPack_Reward[3323322][19]
	-- ===删除: 3323322,1
	-- ===

	tHundredDayPack_Reward[3323322][19] = {}
	tHundredDayPack_Reward[3323322][19]["LogId"] = 12001614
	tHundredDayPack_Reward[3323322][19]["DeleteItem"] = {}
	tHundredDayPack_Reward[3323322][19]["DeleteItem"][1] = {}
	tHundredDayPack_Reward[3323322][19]["DeleteItem"][1]["Id"] = 3323322 -- 【库】+9RareYellowRuneSelectionPack[属性:9]
	tHundredDayPack_Reward[3323322][19]["RewardItem"] = {}
	tHundredDayPack_Reward[3323322][19]["RewardItem"][1] = {}
	tHundredDayPack_Reward[3323322][19]["RewardItem"][1]["Id"] = 4034109 -- 【库】Deterrence(+9)[属性:8], 【表格】威慑
	tHundredDayPack_Reward[3323322][19]["RewardItem"][1]["Attr"] = "0 1 3" -- Deterrence(+9)（赠）*1


-----------------------------------逻辑部分------------------------------------------------------------------------------


--打开百日礼盒
function HundredDayPack_OpenGif(nItemId,sItemName)
	local nUserId = Get_UserId()
	local nEvent = tHundredDayPack_Stc[nItemId]["EventType"]
	local nType =  tHundredDayPack_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1 --获取玩家下一次要打开的次数
	
	if Task_ChkStcValue(nEvent,nType,">=",100,nUserId) then
		if Item_ChkMulItem(nItemId,nItemId,1) then
			Item_DelMulItem(nItemId,nItemId,1)
		end
		return
	end
	
	--常规打开索引都是2
	local nIndex = 2
	--一天只可打开一次
	if not Task_StcInterval(nEvent,nType,1,4) then
		Sys_MsgBox(tHundredDayPack_Text["NoTime"],sFunc,sFailFunc,nUserId)
		return
	end
	
	--检查是否是可额外获取的次数
	for i,v in pairs (tHundredDayPack_Cont["OtherNum"]) do 
		if nData == v then
			nIndex = nData
		end
	end
	
	local tReward = CommonFunc_Copy(tHundredDayPack_Reward[nItemId][nIndex])
	
	--背包空间检测
	if not RewardTemplate_CheckSpace(tReward,nUserId) then
		local nNeedSpace = RewardTemplate_GetRewardSpace(tReward,nUserId)
		local sText = string.format(tHundredDayPack_Text["NoSpace"],nNeedSpace)
		Sys_MsgBox(sText,nil,nil,nUserId)
		return
	end
	
	
	if nIndex == 2 then
		tReward["LogStep"] = string.format(tHundredDayPack_Reward[nItemId][nIndex]["LogStep"],nData)
	end
	
	if Task_AddStatistic(nEvent,nType,1,1,nUserId) and Task_SetStcTimestamp(nEvent,nType,0,nUserId) then
		RewardTemplate_UseItemAndMsg(tReward,nUserId)
	end
end



--打开坐骑百日包
function HundredDayPack_OpenArmor(nItemId,nIndex)
	local nUserId = Get_UserId()
	local nEvent = tHundredDayPack_Stc[nItemId]["EventType"]
	local nType =  tHundredDayPack_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1 --获取玩家下一次要打开的次数

	if Task_ChkStcValue(nEvent,nType,">=",100,nUserId) then
		if Item_ChkMulItem(nItemId,nItemId,1) then
			Item_DelMulItem(nItemId,nItemId,1)
		end
		return
	end
	
	--一天只可打开一次
	if not Task_StcInterval(nEvent,nType,1,4) then
		Sys_MsgBox(tHundredDayPack_Text["NoTime"],sFunc,sFailFunc,nUserId)
		return
	end
	
	--背包空间检测
	local nNeedSpace = RewardTemplate_GetRewardSpace(tHundredDayPack_Reward[nItemId][nIndex],nUserId) + 1
	if not User_CheckLeftSpace(nNeedSpace,nUserId) then
		local sText = string.format(tHundredDayPack_Text["NoSpace"],nNeedSpace)
		Sys_MsgBox(sText,nil,nil,nUserId)
		return
	end
	
	if Task_AddStatistic(nEvent,nType,1,1,nUserId) and Task_SetStcTimestamp(nEvent,nType,0,nUserId) then
		RewardTemplate_UseItemAndMsg(tHundredDayPack_Reward[nItemId][nIndex],nUserId)
		--检查是否是可额外获取的次数
		for i,v in pairs (tHundredDayPack_Cont["ArmorOtherNum"]) do 
			if nData == v then
				RewardTemplate_UseItemAndMsg(tHundredDayPack_Reward[nItemId]["Other"][nData],nUserId)
			end
		end
		
		if Task_ChkStcValue(nEvent,nType,">=",100,nUserId) then
			if Item_ChkMulItem(nItemId,nItemId,1) then
				Item_DelMulItem(nItemId,nItemId,1)
			end
		end
	end
end
--打开普通礼包
function  HundredDayPack_OpenEmoney(nItemId)
	local nUserId = Get_UserId()
	local nNeedEmoney = tHundredDayPack_Cont["Emoney"][nItemId]
	local sEmoneyLog = tHundredDayPack_EmongyLog[nItemId]
	local nUserEmoney = Get_UserEMoney(nUserId)
	local sItemName = Get_ItemtypeName(nItemId)
	
	
	--背包空间检测
	if not RewardTemplate_CheckSpace(tHundredDayPack_Reward[nItemId],nUserId) then
		local nNeedSpace = RewardTemplate_GetRewardSpace(tHundredDayPack_Reward[nItemId],nUserId)
		local sText = string.format(tHundredDayPack_Text["NoSpace"],nNeedSpace)
		Sys_MsgBox(sText,nil,nil,nUserId)
		return
	end
	--物品检测
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(string.format(tHundredDayPack_Text["NoItem"],sItemName),nil,nil,nUserId)
		return
	end
	--天石检测
	if nUserEmoney < nNeedEmoney then
		Sys_MsgBox(tHundredDayPack_Text["NoEMoney"])
		return
	end
	--给奖励
	if User_AddEMoney(-nNeedEmoney,nUserId) then
		Sys_SaveEmoneyBuy(sEmoneyLog,nUserId)
		RewardTemplate_UseItemAndMsg(tHundredDayPack_Reward[nItemId],nUserId)
	end
	
end
--打开神纹可选包
function HundredDayPack_OpenRunePack(nItemId,nIndex)
	local nUserId = Get_UserId()
	RewardTemplate_UseItemAndMsg(tHundredDayPack_Reward[nItemId][nIndex],nUserId)
end

--购买礼包
function HundredDayPack_BuyPack(nItemId,nNpcId)
	local nUserId = Get_UserId()
	local nNeedEmoney = tHundredDayPack_Cont["Emoney"][nItemId]
	local sEmoneyLog = tHundredDayPack_EmongyLog[nItemId]
	local nUserEmoney = Get_UserEMoney(nUserId)
	local nEvent = tHundredDayPack_Stc["Buy"][nItemId]["EventType"]
	local nType =  tHundredDayPack_Stc["Buy"][nItemId]["DataType"]
	
	--每人限购1个
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--背包空间检测
	if not RewardTemplate_CheckSpace(tHundredDayPack_BuyReward[nItemId],nUserId) then
		local nNeedSpace = RewardTemplate_GetRewardSpace(tHundredDayPack_BuyReward[nItemId],nUserId)
		local sText = string.format(tHundredDayPack_Text["NoSpace"],nNeedSpace)
		Sys_MsgBox(sText,nil,nil,nUserId)
		return
	end
	--天石检测
	if nUserEmoney < nNeedEmoney then
		Sys_MsgBox(tHundredDayPack_Text["NoEMoney"])
		return
	end
	
	--给奖励
	if User_AddEMoney(-nNeedEmoney,nUserId) then
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		Sys_SaveEmoneyBuy(sEmoneyLog,nUserId)
		RewardTemplate_UseItemAndMsg(tHundredDayPack_BuyReward[nItemId],nUserId)
	end
	
end
-------------------------------------------------------------------------------------------------------------------------
--普通百日卡
tItem[3313691]=tItem[3313691]or{}
tItem[3313691]["Function"]=function(nItemId,sItemName)
	HundredDayPack_OpenGif(nItemId,sItemName)
end
tItem[3323300]=tItem[3313691]
tItem[3323307]=tItem[3313691]



--坐骑百日卡
tItemFace[3323314]=524
tItem[3323314] = tItem[3323314] or {}
tItem[3323314]["DialogueText"]=tHundredDayPack_Text[3323314]
tItem[3323314]["Text1-1"]={111}
tItem[3323314]["tOption1-1"]={111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,
145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,
179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,
213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,}
tItem[3323314]["OptionFunc111"] = "HundredDayPack_OpenArmor</N>3323314</N>1"
tItem[3323314]["OptionFunc112"] = "HundredDayPack_OpenArmor</N>3323314</N>2"
tItem[3323314]["OptionFunc113"] = "HundredDayPack_OpenArmor</N>3323314</N>3"
tItem[3323314]["OptionFunc114"] = "HundredDayPack_OpenArmor</N>3323314</N>4"
tItem[3323314]["OptionFunc115"] = "HundredDayPack_OpenArmor</N>3323314</N>5"
tItem[3323314]["OptionFunc116"] = "HundredDayPack_OpenArmor</N>3323314</N>6"
tItem[3323314]["OptionFunc117"] = "HundredDayPack_OpenArmor</N>3323314</N>7"
tItem[3323314]["OptionFunc118"] = "HundredDayPack_OpenArmor</N>3323314</N>8"
tItem[3323314]["OptionFunc119"] = "HundredDayPack_OpenArmor</N>3323314</N>9"
tItem[3323314]["OptionFunc120"] = "HundredDayPack_OpenArmor</N>3323314</N>10"
tItem[3323314]["OptionFunc121"] = "HundredDayPack_OpenArmor</N>3323314</N>11"
tItem[3323314]["OptionFunc122"] = "HundredDayPack_OpenArmor</N>3323314</N>12"
tItem[3323314]["OptionFunc123"] = "HundredDayPack_OpenArmor</N>3323314</N>13"
tItem[3323314]["OptionFunc124"] = "HundredDayPack_OpenArmor</N>3323314</N>14"
tItem[3323314]["OptionFunc125"] = "HundredDayPack_OpenArmor</N>3323314</N>15"
tItem[3323314]["OptionFunc126"] = "HundredDayPack_OpenArmor</N>3323314</N>16"
tItem[3323314]["OptionFunc127"] = "HundredDayPack_OpenArmor</N>3323314</N>17"
tItem[3323314]["OptionFunc128"] = "HundredDayPack_OpenArmor</N>3323314</N>18"
tItem[3323314]["OptionFunc129"] = "HundredDayPack_OpenArmor</N>3323314</N>19"
tItem[3323314]["OptionFunc130"] = "HundredDayPack_OpenArmor</N>3323314</N>20"
tItem[3323314]["OptionFunc131"] = "HundredDayPack_OpenArmor</N>3323314</N>21"
tItem[3323314]["OptionFunc132"] = "HundredDayPack_OpenArmor</N>3323314</N>22"
tItem[3323314]["OptionFunc133"] = "HundredDayPack_OpenArmor</N>3323314</N>23"
tItem[3323314]["OptionFunc134"] = "HundredDayPack_OpenArmor</N>3323314</N>24"
tItem[3323314]["OptionFunc135"] = "HundredDayPack_OpenArmor</N>3323314</N>25"
tItem[3323314]["OptionFunc136"] = "HundredDayPack_OpenArmor</N>3323314</N>26"
tItem[3323314]["OptionFunc137"] = "HundredDayPack_OpenArmor</N>3323314</N>27"
tItem[3323314]["OptionFunc138"] = "HundredDayPack_OpenArmor</N>3323314</N>28"
tItem[3323314]["OptionFunc139"] = "HundredDayPack_OpenArmor</N>3323314</N>29"
tItem[3323314]["OptionFunc140"] = "HundredDayPack_OpenArmor</N>3323314</N>30"
tItem[3323314]["OptionFunc141"] = "HundredDayPack_OpenArmor</N>3323314</N>31"
tItem[3323314]["OptionFunc142"] = "HundredDayPack_OpenArmor</N>3323314</N>32"
tItem[3323314]["OptionFunc143"] = "HundredDayPack_OpenArmor</N>3323314</N>33"
tItem[3323314]["OptionFunc144"] = "HundredDayPack_OpenArmor</N>3323314</N>34"
tItem[3323314]["OptionFunc145"] = "HundredDayPack_OpenArmor</N>3323314</N>35"
tItem[3323314]["OptionFunc146"] = "HundredDayPack_OpenArmor</N>3323314</N>36"
tItem[3323314]["OptionFunc147"] = "HundredDayPack_OpenArmor</N>3323314</N>37"
tItem[3323314]["OptionFunc148"] = "HundredDayPack_OpenArmor</N>3323314</N>38"
tItem[3323314]["OptionFunc149"] = "HundredDayPack_OpenArmor</N>3323314</N>39"
tItem[3323314]["OptionFunc150"] = "HundredDayPack_OpenArmor</N>3323314</N>40"
tItem[3323314]["OptionFunc151"] = "HundredDayPack_OpenArmor</N>3323314</N>41"
tItem[3323314]["OptionFunc152"] = "HundredDayPack_OpenArmor</N>3323314</N>42"
tItem[3323314]["OptionFunc153"] = "HundredDayPack_OpenArmor</N>3323314</N>43"
tItem[3323314]["OptionFunc154"] = "HundredDayPack_OpenArmor</N>3323314</N>44"
tItem[3323314]["OptionFunc155"] = "HundredDayPack_OpenArmor</N>3323314</N>45"
tItem[3323314]["OptionFunc156"] = "HundredDayPack_OpenArmor</N>3323314</N>46"
tItem[3323314]["OptionFunc157"] = "HundredDayPack_OpenArmor</N>3323314</N>47"
tItem[3323314]["OptionFunc158"] = "HundredDayPack_OpenArmor</N>3323314</N>48"
tItem[3323314]["OptionFunc159"] = "HundredDayPack_OpenArmor</N>3323314</N>49"
tItem[3323314]["OptionFunc160"] = "HundredDayPack_OpenArmor</N>3323314</N>50"
tItem[3323314]["OptionFunc161"] = "HundredDayPack_OpenArmor</N>3323314</N>51"
tItem[3323314]["OptionFunc162"] = "HundredDayPack_OpenArmor</N>3323314</N>52"
tItem[3323314]["OptionFunc163"] = "HundredDayPack_OpenArmor</N>3323314</N>53"
tItem[3323314]["OptionFunc164"] = "HundredDayPack_OpenArmor</N>3323314</N>54"
tItem[3323314]["OptionFunc165"] = "HundredDayPack_OpenArmor</N>3323314</N>55"
tItem[3323314]["OptionFunc166"] = "HundredDayPack_OpenArmor</N>3323314</N>56"
tItem[3323314]["OptionFunc167"] = "HundredDayPack_OpenArmor</N>3323314</N>57"
tItem[3323314]["OptionFunc168"] = "HundredDayPack_OpenArmor</N>3323314</N>58"
tItem[3323314]["OptionFunc169"] = "HundredDayPack_OpenArmor</N>3323314</N>59"
tItem[3323314]["OptionFunc170"] = "HundredDayPack_OpenArmor</N>3323314</N>60"
tItem[3323314]["OptionFunc171"] = "HundredDayPack_OpenArmor</N>3323314</N>61"
tItem[3323314]["OptionFunc172"] = "HundredDayPack_OpenArmor</N>3323314</N>62"
tItem[3323314]["OptionFunc173"] = "HundredDayPack_OpenArmor</N>3323314</N>63"
tItem[3323314]["OptionFunc174"] = "HundredDayPack_OpenArmor</N>3323314</N>64"
tItem[3323314]["OptionFunc175"] = "HundredDayPack_OpenArmor</N>3323314</N>65"
tItem[3323314]["OptionFunc176"] = "HundredDayPack_OpenArmor</N>3323314</N>66"
tItem[3323314]["OptionFunc177"] = "HundredDayPack_OpenArmor</N>3323314</N>67"
tItem[3323314]["OptionFunc178"] = "HundredDayPack_OpenArmor</N>3323314</N>68"
tItem[3323314]["OptionFunc179"] = "HundredDayPack_OpenArmor</N>3323314</N>69"
tItem[3323314]["OptionFunc180"] = "HundredDayPack_OpenArmor</N>3323314</N>70"
tItem[3323314]["OptionFunc181"] = "HundredDayPack_OpenArmor</N>3323314</N>71"
tItem[3323314]["OptionFunc182"] = "HundredDayPack_OpenArmor</N>3323314</N>72"
tItem[3323314]["OptionFunc183"] = "HundredDayPack_OpenArmor</N>3323314</N>73"
tItem[3323314]["OptionFunc184"] = "HundredDayPack_OpenArmor</N>3323314</N>74"
tItem[3323314]["OptionFunc185"] = "HundredDayPack_OpenArmor</N>3323314</N>75"
tItem[3323314]["OptionFunc186"] = "HundredDayPack_OpenArmor</N>3323314</N>76"
tItem[3323314]["OptionFunc187"] = "HundredDayPack_OpenArmor</N>3323314</N>77"
tItem[3323314]["OptionFunc188"] = "HundredDayPack_OpenArmor</N>3323314</N>78"
tItem[3323314]["OptionFunc189"] = "HundredDayPack_OpenArmor</N>3323314</N>79"
tItem[3323314]["OptionFunc190"] = "HundredDayPack_OpenArmor</N>3323314</N>80"
tItem[3323314]["OptionFunc191"] = "HundredDayPack_OpenArmor</N>3323314</N>81"
tItem[3323314]["OptionFunc192"] = "HundredDayPack_OpenArmor</N>3323314</N>82"
tItem[3323314]["OptionFunc193"] = "HundredDayPack_OpenArmor</N>3323314</N>83"
tItem[3323314]["OptionFunc194"] = "HundredDayPack_OpenArmor</N>3323314</N>84"
tItem[3323314]["OptionFunc195"] = "HundredDayPack_OpenArmor</N>3323314</N>85"
tItem[3323314]["OptionFunc196"] = "HundredDayPack_OpenArmor</N>3323314</N>86"
tItem[3323314]["OptionFunc197"] = "HundredDayPack_OpenArmor</N>3323314</N>87"
tItem[3323314]["OptionFunc198"] = "HundredDayPack_OpenArmor</N>3323314</N>88"
tItem[3323314]["OptionFunc199"] = "HundredDayPack_OpenArmor</N>3323314</N>89"
tItem[3323314]["OptionFunc200"] = "HundredDayPack_OpenArmor</N>3323314</N>90"
tItem[3323314]["OptionFunc201"] = "HundredDayPack_OpenArmor</N>3323314</N>91"
tItem[3323314]["OptionFunc202"] = "HundredDayPack_OpenArmor</N>3323314</N>92"
tItem[3323314]["OptionFunc203"] = "HundredDayPack_OpenArmor</N>3323314</N>93"
tItem[3323314]["OptionFunc204"] = "HundredDayPack_OpenArmor</N>3323314</N>94"
tItem[3323314]["OptionFunc205"] = "HundredDayPack_OpenArmor</N>3323314</N>95"
tItem[3323314]["OptionFunc206"] = "HundredDayPack_OpenArmor</N>3323314</N>96"
tItem[3323314]["OptionFunc207"] = "HundredDayPack_OpenArmor</N>3323314</N>97"
tItem[3323314]["OptionFunc208"] = "HundredDayPack_OpenArmor</N>3323314</N>98"
tItem[3323314]["OptionFunc209"] = "HundredDayPack_OpenArmor</N>3323314</N>99"
tItem[3323314]["OptionFunc210"] = "HundredDayPack_OpenArmor</N>3323314</N>100"
tItem[3323314]["OptionFunc211"] = "HundredDayPack_OpenArmor</N>3323314</N>101"
tItem[3323314]["OptionFunc212"] = "HundredDayPack_OpenArmor</N>3323314</N>102"
tItem[3323314]["OptionFunc213"] = "HundredDayPack_OpenArmor</N>3323314</N>103"
tItem[3323314]["OptionFunc214"] = "HundredDayPack_OpenArmor</N>3323314</N>104"
tItem[3323314]["OptionFunc215"] = "HundredDayPack_OpenArmor</N>3323314</N>105"
tItem[3323314]["OptionFunc216"] = "HundredDayPack_OpenArmor</N>3323314</N>106"
tItem[3323314]["OptionFunc217"] = "HundredDayPack_OpenArmor</N>3323314</N>107"
tItem[3323314]["OptionFunc218"] = "HundredDayPack_OpenArmor</N>3323314</N>108"
tItem[3323314]["OptionFunc219"] = "HundredDayPack_OpenArmor</N>3323314</N>109"
tItem[3323314]["OptionFunc220"] = "HundredDayPack_OpenArmor</N>3323314</N>110"
tItem[3323314]["OptionFunc221"] = "HundredDayPack_OpenArmor</N>3323314</N>111"
tItem[3323314]["OptionFunc222"] = "HundredDayPack_OpenArmor</N>3323314</N>112"
tItem[3323314]["OptionFunc223"] = "HundredDayPack_OpenArmor</N>3323314</N>113"
tItem[3323314]["OptionFunc224"] = "HundredDayPack_OpenArmor</N>3323314</N>114"
tItem[3323314]["OptionFunc225"] = "HundredDayPack_OpenArmor</N>3323314</N>115"
tItem[3323314]["OptionFunc226"] = "HundredDayPack_OpenArmor</N>3323314</N>116"
tItem[3323314]["OptionFunc227"] = "HundredDayPack_OpenArmor</N>3323314</N>117"
tItem[3323314]["OptionFunc228"] = "HundredDayPack_OpenArmor</N>3323314</N>118"
tItem[3323314]["OptionFunc229"] = "HundredDayPack_OpenArmor</N>3323314</N>119"
tItem[3323314]["OptionFunc230"] = "HundredDayPack_OpenArmor</N>3323314</N>120"
tItem[3323314]["OptionFunc231"] = "HundredDayPack_OpenArmor</N>3323314</N>121"
tItem[3323314]["OptionFunc232"] = "HundredDayPack_OpenArmor</N>3323314</N>122"







tItemFace[3323294]=1930
tItemFace[3323295]=2431
tItemFace[3323296]=2495
tItemFace[3323297]=2463
tItemFace[3323298]=2073
tItemFace[3323299]=2451

tItemFace[3323301]=2496
tItemFace[3323302]=2497
tItemFace[3323303]=1547
tItemFace[3323304]=1905
tItemFace[3323305]=1906
tItemFace[3323306]=1925

tItemFace[3323308]=1098
tItemFace[3323309]=2404
tItemFace[3323310]=2405
tItemFace[3323311]=2498
tItemFace[3323312]=2499
tItemFace[3323313]=3391

tItemFace[3323315]=1532
tItemFace[3323316]=2115
tItemFace[3323317]=1165
tItemFace[3323318]=1418
tItemFace[3323319]=1448
tItemFace[3323320]=2198





--练气7次包
tItem[3323294]=tItem[3323294]or{}
tItem[3323294]["DialogueText"]=tHundredDayPack_Text[3323294]
tItem[3323294]["Text1-1"]={111}
tItem[3323294]["tOption1-1"]={111,112}
tItem[3323294]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323294]["Text1-2"]={121}
tItem[3323294]["tOption1-2"]={121,122}
tItem[3323294]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323294"

--炼气礼盒15次超值包
tItem[3323295]=tItem[3323295]or{}
tItem[3323295]["DialogueText"]=tHundredDayPack_Text[3323295]
tItem[3323295]["Text1-1"]={111}
tItem[3323295]["tOption1-1"]={111,112}
tItem[3323295]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323295]["Text1-2"]={121}
tItem[3323295]["tOption1-2"]={121,122}
tItem[3323295]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323295"

--炼气礼盒30次超值包
tItem[3323296]=tItem[3323296]or{}
tItem[3323296]["DialogueText"]=tHundredDayPack_Text[3323296]
tItem[3323296]["Text1-1"]={111}
tItem[3323296]["tOption1-1"]={111,112}
tItem[3323296]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323296]["Text1-2"]={121}
tItem[3323296]["tOption1-2"]={121,122}
tItem[3323296]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323296"

--炼气礼盒60次超值包
tItem[3323297]=tItem[3323297]or{}
tItem[3323297]["DialogueText"]=tHundredDayPack_Text[3323297]
tItem[3323297]["Text1-1"]={111}
tItem[3323297]["tOption1-1"]={111,112}
tItem[3323297]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323297]["Text1-2"]={121}
tItem[3323297]["tOption1-2"]={121,122}
tItem[3323297]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323297"

--炼气礼盒90次超值包
tItem[3323298]=tItem[3323298]or{}
tItem[3323298]["DialogueText"]=tHundredDayPack_Text[3323298]
tItem[3323298]["Text1-1"]={111}
tItem[3323298]["tOption1-1"]={111,112}
tItem[3323298]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323298]["Text1-2"]={121}
tItem[3323298]["tOption1-2"]={121,122}
tItem[3323298]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323298"

--炼气礼盒100次超值包
tItem[3323299]=tItem[3323299]or{}
tItem[3323299]["DialogueText"]=tHundredDayPack_Text[3323299]
tItem[3323299]["Text1-1"]={111}
tItem[3323299]["tOption1-1"]={111,112}
tItem[3323299]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323299]["Text1-2"]={121}
tItem[3323299]["tOption1-2"]={121,122}
tItem[3323299]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323299"


--神纹礼盒7次超值包
tItem[3323301]=tItem[3323301]or{}
tItem[3323301]["DialogueText"]=tHundredDayPack_Text[3323301]
tItem[3323301]["Text1-1"]={111}
tItem[3323301]["tOption1-1"]={111,112}
tItem[3323301]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323301]["Text1-2"]={121}
tItem[3323301]["tOption1-2"]={121,122}
tItem[3323301]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323301"

--神纹礼盒15次超值包
tItem[3323302]=tItem[3323302]or{}
tItem[3323302]["DialogueText"]=tHundredDayPack_Text[3323302]
tItem[3323302]["Text1-1"]={111}
tItem[3323302]["tOption1-1"]={111,112}
tItem[3323302]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323302]["Text1-2"]={121}
tItem[3323302]["tOption1-2"]={121,122}
tItem[3323302]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323302"

--神纹礼盒30次超值包
tItem[3323303]=tItem[3323303]or{}
tItem[3323303]["DialogueText"]=tHundredDayPack_Text[3323303]
tItem[3323303]["Text1-1"]={111}
tItem[3323303]["tOption1-1"]={111,112}
tItem[3323303]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323303]["Text1-2"]={121}
tItem[3323303]["tOption1-2"]={121,122}
tItem[3323303]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323303"

--神纹礼盒60次超值包
tItem[3323304]=tItem[3323304]or{}
tItem[3323304]["DialogueText"]=tHundredDayPack_Text[3323304]
tItem[3323304]["Text1-1"]={111}
tItem[3323304]["tOption1-1"]={111,112}
tItem[3323304]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323304]["Text1-2"]={121}
tItem[3323304]["tOption1-2"]={121,122}
tItem[3323304]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323304"

--神纹礼盒90次超值包
tItem[3323305]=tItem[3323305]or{}
tItem[3323305]["DialogueText"]=tHundredDayPack_Text[3323305]
tItem[3323305]["Text1-1"]={111}
tItem[3323305]["tOption1-1"]={111,112}
tItem[3323305]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323305]["Text1-2"]={121}
tItem[3323305]["tOption1-2"]={121,122}
tItem[3323305]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323305"

--神纹礼盒100次超值包
tItem[3323306]=tItem[3323306]or{}
tItem[3323306]["DialogueText"]=tHundredDayPack_Text[3323306]
tItem[3323306]["Text1-1"]={111}
tItem[3323306]["tOption1-1"]={111,112}
tItem[3323306]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323306]["Text1-2"]={121}
tItem[3323306]["tOption1-2"]={121,122}
tItem[3323306]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323306"

--精炼礼盒7次超值包
tItem[3323308]=tItem[3323308]or{}
tItem[3323308]["DialogueText"]=tHundredDayPack_Text[3323308]
tItem[3323308]["Text1-1"]={111}
tItem[3323308]["tOption1-1"]={111,112}
tItem[3323308]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323308]["Text1-2"]={121}
tItem[3323308]["tOption1-2"]={121,122}
tItem[3323308]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323308"

--精炼礼盒15次超值包
tItem[3323309]=tItem[3323309]or{}
tItem[3323309]["DialogueText"]=tHundredDayPack_Text[3323309]
tItem[3323309]["Text1-1"]={111}
tItem[3323309]["tOption1-1"]={111,112}
tItem[3323309]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323309]["Text1-2"]={121}
tItem[3323309]["tOption1-2"]={121,122}
tItem[3323309]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323309"

--精炼礼盒30次超值包
tItem[3323310]=tItem[3323310]or{}
tItem[3323310]["DialogueText"]=tHundredDayPack_Text[3323310]
tItem[3323310]["Text1-1"]={111}
tItem[3323310]["tOption1-1"]={111,112}
tItem[3323310]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323310]["Text1-2"]={121}
tItem[3323310]["tOption1-2"]={121,122}
tItem[3323310]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323310"

--精炼礼盒60次超值包
tItem[3323311]=tItem[3323311]or{}
tItem[3323311]["DialogueText"]=tHundredDayPack_Text[3323311]
tItem[3323311]["Text1-1"]={111}
tItem[3323311]["tOption1-1"]={111,112}
tItem[3323311]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323311]["Text1-2"]={121}
tItem[3323311]["tOption1-2"]={121,122}
tItem[3323311]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323311"


--精炼礼盒90次超值包
tItem[3323312]=tItem[3323312]or{}
tItem[3323312]["DialogueText"]=tHundredDayPack_Text[3323312]
tItem[3323312]["Text1-1"]={111}
tItem[3323312]["tOption1-1"]={111,112}
tItem[3323312]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323312]["Text1-2"]={121}
tItem[3323312]["tOption1-2"]={121,122}
tItem[3323312]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323312"


--精炼礼盒100次超值包
tItem[3323313]=tItem[3323313]or{}
tItem[3323313]["DialogueText"]=tHundredDayPack_Text[3323313]
tItem[3323313]["Text1-1"]={111}
tItem[3323313]["tOption1-1"]={111,112}
tItem[3323313]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323313]["Text1-2"]={121}
tItem[3323313]["tOption1-2"]={121,122}
tItem[3323313]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323313"


--坐骑礼盒7次超值包
tItem[3323315]=tItem[3323315]or{}
tItem[3323315]["DialogueText"]=tHundredDayPack_Text[3323315]
tItem[3323315]["Text1-1"]={111}
tItem[3323315]["tOption1-1"]={111,112}
tItem[3323315]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323315]["Text1-2"]={121}
tItem[3323315]["tOption1-2"]={121,122}
tItem[3323315]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323315"

--坐骑礼盒15次超值包
tItem[3323316]=tItem[3323316]or{}
tItem[3323316]["DialogueText"]=tHundredDayPack_Text[3323316]
tItem[3323316]["Text1-1"]={111}
tItem[3323316]["tOption1-1"]={111,112}
tItem[3323316]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323316]["Text1-2"]={121}
tItem[3323316]["tOption1-2"]={121,122}
tItem[3323316]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323316"

--坐骑礼盒30次超值包
tItem[3323317]=tItem[3323317]or{}
tItem[3323317]["DialogueText"]=tHundredDayPack_Text[3323317]
tItem[3323317]["Text1-1"]={111}
tItem[3323317]["tOption1-1"]={111,112}
tItem[3323317]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323317]["Text1-2"]={121}
tItem[3323317]["tOption1-2"]={121,122}
tItem[3323317]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323317"

--坐骑礼盒60次超值包
tItem[3323318]=tItem[3323318]or{}
tItem[3323318]["DialogueText"]=tHundredDayPack_Text[3323318]
tItem[3323318]["Text1-1"]={111}
tItem[3323318]["tOption1-1"]={111,112}
tItem[3323318]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323318]["Text1-2"]={121}
tItem[3323318]["tOption1-2"]={121,122}
tItem[3323318]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323318"


--坐骑礼盒90次超值包
tItem[3323319]=tItem[3323319]or{}
tItem[3323319]["DialogueText"]=tHundredDayPack_Text[3323319]
tItem[3323319]["Text1-1"]={111}
tItem[3323319]["tOption1-1"]={111,112}
tItem[3323319]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323319]["Text1-2"]={121}
tItem[3323319]["tOption1-2"]={121,122}
tItem[3323319]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323319"

--坐骑礼盒100次超值包
tItem[3323320]=tItem[3323320]or{}
tItem[3323320]["DialogueText"]=tHundredDayPack_Text[3323320]
tItem[3323320]["Text1-1"]={111}
tItem[3323320]["tOption1-1"]={111,112}
tItem[3323320]["OptionPoint111"] = "1-2"

--二次确认
tItem[3323320]["Text1-2"]={121}
tItem[3323320]["tOption1-2"]={121,122}
tItem[3323320]["OptionFunc121"] = "HundredDayPack_OpenEmoney</N>3323320"


--（+9）稀有黄色神纹可选包（赠）
tItem[3323322]=tItem[3323322]or{}
tItem[3323322]["DialogueText"]=tHundredDayPack_Text[3323322]
tItem[3323322]["Text1-1"]={111}
tItem[3323322]["tOption1-1"]={111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119}
tItem[3323322]["OptionFunc111"] = "HundredDayPack_OpenRunePack</N>3323322</N>1 "
tItem[3323322]["OptionFunc112"] = "HundredDayPack_OpenRunePack</N>3323322</N>2 "
tItem[3323322]["OptionFunc113"] = "HundredDayPack_OpenRunePack</N>3323322</N>3 "
tItem[3323322]["OptionFunc114"] = "HundredDayPack_OpenRunePack</N>3323322</N>4 "
tItem[3323322]["OptionFunc115"] = "HundredDayPack_OpenRunePack</N>3323322</N>5 "
tItem[3323322]["OptionFunc116"] = "HundredDayPack_OpenRunePack</N>3323322</N>6 "
tItem[3323322]["OptionFunc117"] = "HundredDayPack_OpenRunePack</N>3323322</N>7 "
tItem[3323322]["OptionFunc118"] = "HundredDayPack_OpenRunePack</N>3323322</N>8 "
tItem[3323322]["OptionFunc119"] = "HundredDayPack_OpenRunePack</N>3323322</N>9 "
tItem[3323322]["OptionFunc1110"] = "HundredDayPack_OpenRunePack</N>3323322</N>10"
tItem[3323322]["OptionFunc1111"] = "HundredDayPack_OpenRunePack</N>3323322</N>11"
tItem[3323322]["OptionFunc1112"] = "HundredDayPack_OpenRunePack</N>3323322</N>12"
tItem[3323322]["OptionFunc1113"] = "HundredDayPack_OpenRunePack</N>3323322</N>13"
tItem[3323322]["OptionFunc1114"] = "HundredDayPack_OpenRunePack</N>3323322</N>14"
tItem[3323322]["OptionFunc1115"] = "HundredDayPack_OpenRunePack</N>3323322</N>15"
tItem[3323322]["OptionFunc1116"] = "HundredDayPack_OpenRunePack</N>3323322</N>16"
tItem[3323322]["OptionFunc1117"] = "HundredDayPack_OpenRunePack</N>3323322</N>17"
tItem[3323322]["OptionFunc1118"] = "HundredDayPack_OpenRunePack</N>3323322</N>18"
tItem[3323322]["OptionFunc1119"] = "HundredDayPack_OpenRunePack</N>3323322</N>19"

--星陨石礼包
tItem[3323324]=tItem[3323324] or{}
tItem[3323324]["Function"]=function(nItemId,sItemName)
	local nUserId = Get_UserId()
	RewardTemplate_UseItemAndMsg(tHundredDayPack_Reward[nItemId],nUserId)
end
tItem[3313692]=tItem[3323324]
tItem[3323321]=tItem[3323324]


-----------------------------------------------------------------------------------------------
tNpcFace[6184]=13
tNpcGossip[24909]=tNpcGossip[24909]	or	DefaultNpc:new{}
tNpcGossip[24909]["OptionHidden"]=1
tNpcGossip[24909]["DialogueText"]=tHundredDayPack_Text[24909]


tNpcGossip[24909]["Text1-1"]={111,112,113,114,115,116,117,118}
tNpcGossip[24909]["tOption1-1"]={111,112,113,114}
tNpcGossip[24909]["OptionPoint111"] = "3-1"
tNpcGossip[24909]["OptionPoint112"] = "4-1"
tNpcGossip[24909]["OptionPoint113"] = "5-1"
tNpcGossip[24909]["OptionPoint114"] = "6-1"

tNpcGossip[24909]["OptionFunc311"] = "HundredDayPack_BuyPack</N>3313691</N>24909"
tNpcGossip[24909]["OptionFunc411"] = "HundredDayPack_BuyPack</N>3323300</N>24909"
tNpcGossip[24909]["OptionFunc511"] = "HundredDayPack_BuyPack</N>3323307</N>24909"
tNpcGossip[24909]["OptionFunc611"] = "HundredDayPack_BuyPack</N>3323314</N>24909"


tNpcGossip[24909]["Text2-1"]={211}
tNpcGossip[24909]["tOption2-1"]={211}

tNpcGossip[24909]["Text3-1"]={311}
tNpcGossip[24909]["tOption3-1"]={311,312}

tNpcGossip[24909]["Text4-1"]={411}
tNpcGossip[24909]["tOption4-1"]={411,412}

tNpcGossip[24909]["Text5-1"]={511}
tNpcGossip[24909]["tOption5-1"]={511,512}

tNpcGossip[24909]["Text6-1"]={611}
tNpcGossip[24909]["tOption6-1"]={611,612}