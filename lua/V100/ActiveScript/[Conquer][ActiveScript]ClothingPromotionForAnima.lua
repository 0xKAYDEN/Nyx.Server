------------------------------------------------------------------------------------
--Name：            190613[简体征服][活动脚本]南宫促衣会魂版
--Creator:      王贤

--Created:     2019-06-13
------------------------------------------------------------------------------------
--任务需求：
-- 【总贴】190515【简体征服】南宫促衣会魂版

-- 调整版南宫促衣会，预计更新时间6.25

-- 版本号:1.00
------------------------------------------------------------------------------------
-- stc(196, 08)  1 、地阙阁   第一格奖励
-- stc(196, 09)  2 、地阙阁   第二格奖励
-- stc(196, 10)  3 、地阙阁   第三格奖励
-- stc(196, 11)  4 、地阙阁   拆解二次确认
-- stc(196, 12)  5 、天玄阁   第一格奖励
-- stc(196, 13)  6 、天玄阁   第二格奖励
-- stc(196, 14)  7 、天玄阁   第三格奖励
-- stc(196, 15)  8 、天玄阁   拆解二次确认
-- stc(196, 16)  9 、背包信
------------------------------------------------------------------------------------
-- 前缀
-- ClothingPromotionForAnima_

-- LogId： 12001463
----------------------------------表配置部分--------------------------------------------
-- 数据表
local tClothingPromotionForAnima_Data = {}
-- 等级数据
tClothingPromotionForAnima_Data["Level"] = 80
tClothingPromotionForAnima_Data["Metempsychosis"] = 0
-- 制书册残页合成所需数量
tClothingPromotionForAnima_Data["NeedNum1"] = 20

-- 奖池保险
tClothingPromotionForAnima_Data["Global"] = 53545
-- 道具价值
tClothingPromotionForAnima_Data["ItemValue"] = {}
tClothingPromotionForAnima_Data["ItemValue"][3322043] = 80
tClothingPromotionForAnima_Data["ItemValue"][3322044] = 320
tClothingPromotionForAnima_Data["ItemValue"][3322045] = 640
tClothingPromotionForAnima_Data["ItemValue"][3322046] = 2560
tClothingPromotionForAnima_Data["ItemValue"][3322047] = 640
tClothingPromotionForAnima_Data["ItemValue"][3322048] = 5120
tClothingPromotionForAnima_Data["ItemValue"][3322049] = 640
tClothingPromotionForAnima_Data["ItemValue"][3322050] = 12800
tClothingPromotionForAnima_Data["ItemValue"][3322051] = 5120
tClothingPromotionForAnima_Data["ItemValue"][3322052] = 102400
-- 灵珠价值
tClothingPromotionForAnima_Data["ItemValue"][4200005] = 80
tClothingPromotionForAnima_Data["ItemValue"][4200007] = 320
tClothingPromotionForAnima_Data["ItemValue"][4200008] = 640
tClothingPromotionForAnima_Data["ItemValue"][4200010] = 2560
tClothingPromotionForAnima_Data["ItemValue"][4200011] = 5120

-- 兑换表
tClothingPromotionForAnima_Data["Exchange"] = {}
-- 30天时效4星外套包	换	5阶灵珠
tClothingPromotionForAnima_Data["Exchange"][3322043] = 4200005
-- 30天时效5星外套包	换	7阶灵珠
tClothingPromotionForAnima_Data["Exchange"][3322044] = 4200007
-- 高级制衣册碎片		换	8阶灵珠
tClothingPromotionForAnima_Data["Exchange"][3322049] = 4200008
-- 180天时效4星外套包	换	8阶灵珠
tClothingPromotionForAnima_Data["Exchange"][3322045] = 4200008
-- 180天时效5星外套包	换	10阶灵珠
tClothingPromotionForAnima_Data["Exchange"][3322046] = 4200010
-- 特级制衣册碎片		换	11阶灵珠
tClothingPromotionForAnima_Data["Exchange"][3322051] = 4200011

-- 入阁所需道具
tClothingPromotionForAnima_Data["NeedItem"] = {}
tClothingPromotionForAnima_Data["NeedItem"][24324] = 3322047
tClothingPromotionForAnima_Data["NeedItem"][24325] = 3322048

-- 入阁对应随机奖励
tClothingPromotionForAnima_Data["RandomReward"] = {}
-- 地阙阁
tClothingPromotionForAnima_Data["RandomReward"][24324] = {}
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardId"] = {}
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardNum"] = {}
-- 30天时效4星外套包*1
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardId"][1] = 3322043
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardNum"][1] = 1
-- 30天时效5星外套包*1
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardId"][2] = 3322044
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardNum"][2] = 1
-- 高级制衣册碎片*1
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardId"][3] = 3322049
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardNum"][3] = 1
-- 30天时效5星外套包*3
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardId"][4] = 3322044
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardNum"][4] = 3
-- 高级制衣册碎片*2
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardId"][5] = 3322049
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardNum"][5] = 2
-- 高级制衣册碎片*8
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardId"][6] = 3322049
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardNum"][6] = 8
-- 高级制衣册碎片*32
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardId"][7] = 3322049
tClothingPromotionForAnima_Data["RandomReward"][24324]["RewardNum"][7] = 32

-- 天玄阁
tClothingPromotionForAnima_Data["RandomReward"][24325] = {}
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardId"] = {}
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardNum"] = {}
-- 180天时效4星外套包*1
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardId"][1] = 3322045
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardNum"][1] = 1
-- 180天时效5星外套包*1
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardId"][2] = 3322046
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardNum"][2] = 1
-- 特级制衣册碎片*1
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardId"][3] = 3322051
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardNum"][3] = 1
-- 180天时效5星外套包*3
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardId"][4] = 3322046
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardNum"][4] = 3
-- 特级制衣册碎片*2
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardId"][5] = 3322051
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardNum"][5] = 2
-- 特级制衣册碎片*8
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardId"][6] = 3322051
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardNum"][6] = 8
-- 特级制衣册碎片*32
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardId"][7] = 3322051
tClothingPromotionForAnima_Data["RandomReward"][24325]["RewardNum"][7] = 32

-- 领奖所需时装5星外套数量
tClothingPromotionForAnima_Data["NeedNum"] = {}
tClothingPromotionForAnima_Data["NeedNum"]["BigReward"] = 15
tClothingPromotionForAnima_Data["NeedNum"]["SmallReward"] = 10


-- 金币购买灵珠玉
tClothingPromotionForAnima_Data["BuyItem"] = {}
-- 灵珠玉·地
tClothingPromotionForAnima_Data["BuyItem"][1] = {}
tClothingPromotionForAnima_Data["BuyItem"][1][1] = 32050000
tClothingPromotionForAnima_Data["BuyItem"][1][2] = 160250000
tClothingPromotionForAnima_Data["BuyItem"][1][3] = 320500000
-- 灵珠玉·天
tClothingPromotionForAnima_Data["BuyItem"][2] = {}
tClothingPromotionForAnima_Data["BuyItem"][2][1] = 256050000
tClothingPromotionForAnima_Data["BuyItem"][2][2] = 1280250000
tClothingPromotionForAnima_Data["BuyItem"][2][3] = 2560500000
-- 购买数量
tClothingPromotionForAnima_Data["BuyItem"]["BuyNum"] = {}
tClothingPromotionForAnima_Data["BuyItem"]["BuyNum"][1] = 1
tClothingPromotionForAnima_Data["BuyItem"]["BuyNum"][2] = 5
tClothingPromotionForAnima_Data["BuyItem"]["BuyNum"][3] = 10


local tClothingPromotionForAnima_Log = {}
-- 过期删除
tClothingPromotionForAnima_Log["OutTime"] = "0,0,%d,1,12001463,2,0,0"

-- 参与活动log
tClothingPromotionForAnima_Log["SmallJoinOneEmoney"] = "350	22254	0	0	1	"
tClothingPromotionForAnima_Log["SmallJoinThreeEmoney"] = "350	22255	0	0	1	"
tClothingPromotionForAnima_Log["BigJoinOneEmoney"] = "350	22256	0	0	1	"
tClothingPromotionForAnima_Log["BigJoinThreeEmoney"] = "350	22257	0	0	1	"


-- 掩码表
local tClothingPromotionForAnima_Stc = {}
tClothingPromotionForAnima_Stc["EventType"] = {}
tClothingPromotionForAnima_Stc["DataType"] = {}
-- 地阙阁
tClothingPromotionForAnima_Stc["EventType"][24324] = {}
tClothingPromotionForAnima_Stc["DataType"][24324] = {}
-- stc(196, 08)  1 、地阙阁   第一格奖励
tClothingPromotionForAnima_Stc["EventType"][24324][1] = 196
tClothingPromotionForAnima_Stc["DataType"][24324][1] = 8
-- stc(196, 09)  2 、地阙阁   第二格奖励
tClothingPromotionForAnima_Stc["EventType"][24324][2] = 196
tClothingPromotionForAnima_Stc["DataType"][24324][2] = 9
-- stc(196, 10)  3 、地阙阁   第三格奖励
tClothingPromotionForAnima_Stc["EventType"][24324][3] = 196
tClothingPromotionForAnima_Stc["DataType"][24324][3] = 10
-- stc(196, 11)  4 、地阙阁   拆解二次确认
tClothingPromotionForAnima_Stc["EventType"][24324][4] = 196
tClothingPromotionForAnima_Stc["DataType"][24324][4] = 11
-- 天玄阁
tClothingPromotionForAnima_Stc["EventType"][24325] = {}
tClothingPromotionForAnima_Stc["DataType"][24325] = {}
-- stc(196, 12)  5 、天玄阁   第一格奖励
tClothingPromotionForAnima_Stc["EventType"][24325][1] = 196
tClothingPromotionForAnima_Stc["DataType"][24325][1] = 12
-- stc(196, 13)  6 、天玄阁   第二格奖励
tClothingPromotionForAnima_Stc["EventType"][24325][2] = 196
tClothingPromotionForAnima_Stc["DataType"][24325][2] = 13
-- stc(196, 14)  7 、天玄阁   第三格奖励
tClothingPromotionForAnima_Stc["EventType"][24325][3] = 196
tClothingPromotionForAnima_Stc["DataType"][24325][3] = 14
-- stc(196, 15)  8 、天玄阁   拆解二次确认
tClothingPromotionForAnima_Stc["EventType"][24325][4] = 196
tClothingPromotionForAnima_Stc["DataType"][24325][4] = 15
-- 龙战阁主
tClothingPromotionForAnima_Stc["EventType"][24323] = {}
tClothingPromotionForAnima_Stc["DataType"][24323] = {}
-- stc(206, 20)  9 、领取南宫至宝
tClothingPromotionForAnima_Stc["EventType"][24323][1] = 206
tClothingPromotionForAnima_Stc["DataType"][24323][1] = 20
-- stc(206, 21)  10 、领取南宫珍宝
tClothingPromotionForAnima_Stc["EventType"][24323][2] = 206
tClothingPromotionForAnima_Stc["DataType"][24323][2] = 21

local tClothingPromotionForAnima_RewardItemNanGong = {}
	-- ===领取南宫至宝礼盒
	-- ===索引: tClothingPromotionForAnima_RewardItemNanGong[3313781][1]
	-- ===LogStep: 5[1]
	tClothingPromotionForAnima_RewardItemNanGong[3313781] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313781][1] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313781][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardItemNanGong[3313781][1]["LogStep"] = "5[1]"
	tClothingPromotionForAnima_RewardItemNanGong[3313781][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313781][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313781][1]["RewardItem"][1]["Id"] = 3313781 -- FashionWealthPack[3313781][属性:9][叠加:0][金币:0], 【表格】南宫至宝礼盒
	tClothingPromotionForAnima_RewardItemNanGong[3313781][1]["RewardItem"][1]["Attr"] = "0 1" -- FashionWealthPack*1
	tClothingPromotionForAnima_RewardItemNanGong[3313781][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313781][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardItemNanGong[3313781][1]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardItemNanGong[3313781][2] = {}
	-- ===使用南宫至宝礼盒
	-- ===索引: tClothingPromotionForAnima_RewardItemNanGong[3313781][2]
	-- ===删除: 3313781,1
	tClothingPromotionForAnima_RewardItemNanGong[3313781][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardItemNanGong[3313781][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313781][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313781][2]["DeleteItem"][1]["Id"] = 3313781 -- 【库】FashionWealthPack[属性:9]
	tClothingPromotionForAnima_RewardItemNanGong[3313781][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313781][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313781][2]["RewardItem"][1]["Id"] = 3313783 -- GearTransformationMedal[3313783][属性:9][叠加:0][金币:0], 【表格】装备转换勋章
	tClothingPromotionForAnima_RewardItemNanGong[3313781][2]["RewardItem"][1]["Attr"] = "0 1" -- GearTransformationMedal*1
	tClothingPromotionForAnima_RewardItemNanGong[3313781][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313781][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardItemNanGong[3313781][2]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardItemNanGong[3313782] = {}
	-- ===领取南宫珍宝礼包
	-- ===索引: tClothingPromotionForAnima_RewardItemNanGong[3313782][1]
	-- ===LogStep: 5[2]
	tClothingPromotionForAnima_RewardItemNanGong[3313782][1] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313782][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardItemNanGong[3313782][1]["LogStep"] = "5[2]"
	tClothingPromotionForAnima_RewardItemNanGong[3313782][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313782][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313782][1]["RewardItem"][1]["Id"] = 3313782 -- FashionTreasurePack[3313782][属性:9][叠加:0][金币:0], 【表格】南宫珍宝礼包
	tClothingPromotionForAnima_RewardItemNanGong[3313782][1]["RewardItem"][1]["Attr"] = "0 1" -- FashionTreasurePack*1
	tClothingPromotionForAnima_RewardItemNanGong[3313782][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313782][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardItemNanGong[3313782][1]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardItemNanGong[3313782][2] = {}
	-- ===使用南宫珍宝礼包
	-- ===索引: tClothingPromotionForAnima_RewardItemNanGong[3313782][2]
	-- ===删除: 3313782,1
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["DeleteItem"][1]["Id"] = 3313782 -- 【库】FashionTreasurePack[属性:9]
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["RewardStrengthValue"] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】1W气力值
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["RewardItem"][2] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["RewardItem"][2]["Id"] = 3311821 -- SuperRuneCrystal[3311821][属性:9][叠加:10000][金币:0], 【表格】优质神纹源晶
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["RewardItem"][2]["Attr"] = "0 5 3" -- SuperRuneCrystal（赠）*5
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardItemNanGong[3313782][2]["RewardEffect"]["Effect"] = "angelwing"






-- 奖励表
local tClothingPromotionForAnima_RewardCoat = {}
	-- ===30天时效4星外套包
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322043][1]
	-- ===删除: 3322043,1
	tClothingPromotionForAnima_RewardCoat[3322043] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][1]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][1]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][1]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][1]["RewardItem"][1]["Id"] = 193205 -- 【库】洋洋得意套装[属性:0], 【表格】洋洋得意
	tClothingPromotionForAnima_RewardCoat[3322043][1][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑洋洋得意套装*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][2] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][2]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][2]["RewardItem"][1]["Id"] = 192575 -- 【库】龙凤呈祥[属性:0], 【表格】龙凤呈祥
	tClothingPromotionForAnima_RewardCoat[3322043][1][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑龙凤呈祥*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][3] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][3]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][3]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][3]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][3]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][3]["RewardItem"][1]["Id"] = 192565 -- 【库】情人之泪[属性:0], 【表格】情人之泪
	tClothingPromotionForAnima_RewardCoat[3322043][1][3]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑情人之泪*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][4] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][4]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][4]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][4]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][4]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][4]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][4]["RewardItem"][1]["Id"] = 188495 -- 【库】烈火柔情套装[属性:0], 【表格】烈火柔情套装
	tClothingPromotionForAnima_RewardCoat[3322043][1][4]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑烈火柔情套装*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][5] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][5]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][5]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][5]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][5]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][5]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][5]["RewardItem"][1]["Id"] = 189085 -- 【库】雀翎轻衫[属性:0], 【表格】雀翎轻衫
	tClothingPromotionForAnima_RewardCoat[3322043][1][5]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑雀翎轻衫*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][6] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][6]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][6]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][6]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][6]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][6]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][6]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][6]["RewardItem"][1]["Id"] = 193325 -- 【库】江山一统[属性:0], 【表格】江山一统
	tClothingPromotionForAnima_RewardCoat[3322043][1][6]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑江山一统*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][7] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][7]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][7]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][7]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][7]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][7]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][7]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][7]["RewardItem"][1]["Id"] = 193295 -- 【库】孔雀东南飞[属性:0], 【表格】孔雀东南飞
	tClothingPromotionForAnima_RewardCoat[3322043][1][7]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑孔雀东南飞*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][8] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][8]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][8]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][8]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][8]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][8]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][8]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][8]["RewardItem"][1]["Id"] = 193555 -- 【库】喵基尼【魅力版】[属性:0], 【表格】喵基尼【魅力版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][8]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑喵基尼【魅力版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][8]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][8]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][9] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][9]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][9]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][9]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][9]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][9]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][9]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][9]["RewardItem"][1]["Id"] = 189505 -- 【库】锦翎武衣【华彩版】[属性:0], 【表格】锦翎武衣【华彩版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][9]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑锦翎武衣【华彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][9]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][9]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][10] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][10]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][10]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][10]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][10]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][10]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][10]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][10]["RewardItem"][1]["Id"] = 193805 -- 【库】蓝色复兴【典藏版】[属性:8], 【表格】蓝色复兴【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][10]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑蓝色复兴【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][10]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][10]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][11] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][11]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][11]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][11]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][11]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][11]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][11]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][11]["RewardItem"][1]["Id"] = 193775 -- 【库】破晓雄鸡【典藏版】[属性:8], 【表格】破晓雄鸡【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][11]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑破晓雄鸡【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][11]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][11]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][12] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][12]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][12]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][12]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][12]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][12]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][12]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][12]["RewardItem"][1]["Id"] = 193785 -- 【库】复仇三狮【典藏版】[属性:8], 【表格】复仇三狮【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][12]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑复仇三狮【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][12]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][12]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][13] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][13]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][13]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][13]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][13]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][13]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][13]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][13]["RewardItem"][1]["Id"] = 193795 -- 【库】孤胆英雄【典藏版】[属性:8], 【表格】孤胆英雄【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][13]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑孤胆英雄【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][13]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][13]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][14] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][14]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][14]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][14]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][14]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][14]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][14]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][14]["RewardItem"][1]["Id"] = 193815 -- 【库】日耳曼战魂【典藏版】[属性:8], 【表格】日耳曼战魂【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][14]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑日耳曼战魂【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][14]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][14]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][15] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][15]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][15]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][15]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][15]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][15]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][15]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][15]["RewardItem"][1]["Id"] = 193825 -- 【库】激情西班牙【典藏版】[属性:8], 【表格】激情西班牙【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][15]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑激情西班牙【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][15]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][15]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][16] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][16]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][16]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][16]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][16]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][16]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][16]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][16]["RewardItem"][1]["Id"] = 188185 -- 【库】浪客剑魂[属性:0], 【表格】浪客剑魂 
	tClothingPromotionForAnima_RewardCoat[3322043][1][16]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑浪客剑魂*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][16]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][16]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][17] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][17]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][17]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][17]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][17]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][17]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][17]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][17]["RewardItem"][1]["Id"] = 193695 -- 【库】蝶恋花[属性:0], 【表格】蝶恋花
	tClothingPromotionForAnima_RewardCoat[3322043][1][17]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑蝶恋花*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][17]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][17]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][18] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][18]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][18]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][18]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][18]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][18]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][18]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][18]["RewardItem"][1]["Id"] = 194405 -- 【库】狐妖装【魅彩版】[属性:8], 【表格】狐妖装【魅彩版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][18]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑狐妖装【魅彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][18]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][18]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][19] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][19]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][19]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][19]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][19]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][19]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][19]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][19]["RewardItem"][1]["Id"] = 194695 -- 【库】火箭史诗【签名版】[属性:0], 【表格】火箭史诗【签名版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][19]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑火箭史诗【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][19]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][19]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][20] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][20]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][20]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][20]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][20]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][20]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][20]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][20]["RewardItem"][1]["Id"] = 194705 -- 【库】湖人王朝【签名版】[属性:0], 【表格】湖人王朝【签名版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][20]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑湖人王朝【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][20]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][20]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][21] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][21]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][21]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][21]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][21]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][21]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][21]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][21]["RewardItem"][1]["Id"] = 194715 -- 【库】骑士神话【签名版】[属性:0], 【表格】骑士神话【签名版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][21]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑骑士神话【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][21]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][21]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][22] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][22]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][22]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][22]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][22]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][22]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][22]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][22]["RewardItem"][1]["Id"] = 194725 -- 【库】勇士传奇【签名版】[属性:0], 【表格】勇士传奇【签名版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][22]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑勇士传奇【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][22]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][22]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][23] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][23]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][23]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][23]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][23]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][23]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][23]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][23]["RewardItem"][1]["Id"] = 195295 -- 【库】埃及法老王【冠军版】[属性:0], 【表格】埃及法老王【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][23]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑埃及法老王【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][23]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][23]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][24] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][24]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][24]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][24]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][24]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][24]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][24]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][24]["RewardItem"][1]["Id"] = 195305 -- 【库】欧洲红魔【冠军版】[属性:0], 【表格】欧洲红魔【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][24]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑欧洲红魔【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][24]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][24]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][25] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][25]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][25]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][25]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][25]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][25]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][25]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][25]["RewardItem"][1]["Id"] = 195315 -- 【库】桑巴勇者【冠军版】[属性:0], 【表格】桑巴勇者【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][25]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑桑巴勇者【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][25]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][25]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][26] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][26]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][26]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][26]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][26]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][26]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][26]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][26]["RewardItem"][1]["Id"] = 195325 -- 【库】潘帕斯雄鹰【冠军版】[属性:0], 【表格】潘帕斯雄鹰【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][26]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑潘帕斯雄鹰【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][26]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][26]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][27] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][27]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][27]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][27]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][27]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][27]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][27]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][27]["RewardItem"][1]["Id"] = 195335 -- 【库】葡萄牙之魂【冠军版】[属性:0], 【表格】葡萄牙之魂【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][27]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑葡萄牙之魂【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][27]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][27]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][28] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][28]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][28]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][28]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][28]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][28]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][28]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][28]["RewardItem"][1]["Id"] = 195345 -- 【库】西班牙斗士【冠军版】[属性:0], 【表格】西班牙斗士【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][28]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑西班牙斗士【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][28]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][28]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][29] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][29]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][29]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][29]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][29]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][29]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][29]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][29]["RewardItem"][1]["Id"] = 195175 -- 【库】猛龙战队【签名版】[属性:0], 【表格】猛龙战队【签名版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][29]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑猛龙战队【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][29]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][29]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][30] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][30]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][30]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][30]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][30]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][30]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][30]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][30]["RewardItem"][1]["Id"] = 195185 -- 【库】绿衫军团【签名版】[属性:0], 【表格】绿衫军团【签名版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][30]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑绿衫军团【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][30]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][30]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][31] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][31]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][31]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][31]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][31]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][31]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][31]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][31]["RewardItem"][1]["Id"] = 195195 -- 【库】76豪门【签名版】[属性:0], 【表格】76豪门【签名版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][31]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑76豪门【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][31]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][31]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][32] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][32]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][32]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][32]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][32]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][32]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][32]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][32]["RewardItem"][1]["Id"] = 195205 -- 【库】鹈鹕盛世【签名版】[属性:0], 【表格】鹈鹕盛世【签名版】
	tClothingPromotionForAnima_RewardCoat[3322043][1][32]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑鹈鹕盛世【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][32]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][32]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][1][33] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][33]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][1][33]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][33]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][33]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][1][33]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][33]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][33]["RewardItem"][1]["Id"] = 193225 -- 【库】春风得意[属性:9], 【表格】春风得意
	tClothingPromotionForAnima_RewardCoat[3322043][1][33]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑春风得意*1
	tClothingPromotionForAnima_RewardCoat[3322043][1][33]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][1][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][1][33]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardCoat[3322043][2] = {}
	-- ===30天时效4星外套包
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322043][2]
	-- ===删除: 3322043,1
	tClothingPromotionForAnima_RewardCoat[3322043][2][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][1]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][1]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][1]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][1]["RewardItem"][1]["Id"] = 200481 -- 【库】冰魄灵狮外套【十周年绝版】[属性:0], 【表格】冰魄灵狮外套【十周年绝版】
	tClothingPromotionForAnima_RewardCoat[3322043][2][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑冰魄灵狮外套【十周年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][1]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][2] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][2]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][2]["RewardItem"][1]["Id"] = 200421 -- 【库】傲世龙神外套【龙年绝版】[属性:0], 【表格】傲世龙神外套【龙年绝版】
	tClothingPromotionForAnima_RewardCoat[3322043][2][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑傲世龙神外套【龙年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][2]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][3] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][3]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][3]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][3]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][3]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][3]["RewardItem"][1]["Id"] = 200471 -- 【库】蟠蛇战辕【蛇年绝版】[属性:0], 【表格】蟠蛇战辕【蛇年绝版】
	tClothingPromotionForAnima_RewardCoat[3322043][2][3]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑蟠蛇战辕【蛇年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][3]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][4] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][4]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][4]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][4]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][4]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][4]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][4]["RewardItem"][1]["Id"] = 200495 -- 【库】马上有对象【马年绝版】[属性:0], 【表格】马上有对象【马年绝版】
	tClothingPromotionForAnima_RewardCoat[3322043][2][4]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑马上有对象【马年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][4]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][5] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][5]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][5]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][5]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][5]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][5]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][5]["RewardItem"][1]["Id"] = 200525 -- 【库】开泰宝羚【羊年绝版】[属性:0], 【表格】开泰宝羚【羊年绝版】
	tClothingPromotionForAnima_RewardCoat[3322043][2][5]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑开泰宝羚【羊年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][5]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][6] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][6]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][6]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][6]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][6]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][6]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][6]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][6]["RewardItem"][1]["Id"] = 200500 -- 【库】福来哥[属性:0], 【表格】福来哥
	tClothingPromotionForAnima_RewardCoat[3322043][2][6]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑福来哥*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][6]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][7] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][7]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][7]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][7]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][7]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][7]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][7]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][7]["RewardItem"][1]["Id"] = 200543 -- 【库】喵呜将军【魅力版】[属性:0], 【表格】喵呜将军【魅力版】
	tClothingPromotionForAnima_RewardCoat[3322043][2][7]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑喵呜将军【魅力版】*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][7]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][8] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][8]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][8]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][8]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][8]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][8]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][8]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][8]["RewardItem"][1]["Id"] = 200563 -- 【库】羊驼维克多[属性:0], 【表格】羊驼维克多
	tClothingPromotionForAnima_RewardCoat[3322043][2][8]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑羊驼维克多*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][8]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][8]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][9] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][9]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][9]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][9]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][9]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][9]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][9]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][9]["RewardItem"][1]["Id"] = 200574 -- 【库】幻雪蓝莲[属性:0], 【表格】幻雪蓝莲
	tClothingPromotionForAnima_RewardCoat[3322043][2][9]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑幻雪蓝莲*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][9]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][9]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][10] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][10]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][10]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][10]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][10]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][10]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][10]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][10]["RewardItem"][1]["Id"] = 200579 -- 【库】赤龙圣兽[属性:8], 【表格】赤龙圣兽
	tClothingPromotionForAnima_RewardCoat[3322043][2][10]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑赤龙圣兽*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][10]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][10]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][11] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][11]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][11]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][11]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][11]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][11]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][11]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][11]["RewardItem"][1]["Id"] = 200589 -- 【库】星际战鸡·无尽梦想号[属性:8], 【表格】星际战鸡·无尽梦想号
	tClothingPromotionForAnima_RewardCoat[3322043][2][11]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑星际战鸡·无尽梦想号*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][11]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][11]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][12] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][12]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][12]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][12]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][12]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][12]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][12]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][12]["RewardItem"][1]["Id"] = 200593 -- 【库】星际战鸡·无尽勇气号[属性:8], 【表格】星际战鸡·无尽勇气号
	tClothingPromotionForAnima_RewardCoat[3322043][2][12]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑星际战鸡·无尽勇气号*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][12]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][12]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][13] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][13]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][13]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][13]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][13]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][13]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][13]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][13]["RewardItem"][1]["Id"] = 200591 -- 【库】星际战鸡·无尽希望号[属性:8], 【表格】星际战鸡·无尽希望号
	tClothingPromotionForAnima_RewardCoat[3322043][2][13]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑星际战鸡·无尽希望号*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][13]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][13]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][14] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][14]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][14]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][14]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][14]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][14]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][14]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][14]["RewardItem"][1]["Id"] = 200590 -- 【库】星际战鸡·无尽探索号[属性:8], 【表格】星际战鸡·无尽探索号
	tClothingPromotionForAnima_RewardCoat[3322043][2][14]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑星际战鸡·无尽探索号*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][14]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][14]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][15] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][15]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][15]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][15]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][15]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][15]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][15]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][15]["RewardItem"][1]["Id"] = 200618 -- 【库】萨摩王子[属性:0], 【表格】萨摩王子
	tClothingPromotionForAnima_RewardCoat[3322043][2][15]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑萨摩王子*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][15]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][15]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][16] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][16]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][16]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][16]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][16]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][16]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][16]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][16]["RewardItem"][1]["Id"] = 200619 -- 【库】二哈将军[属性:0], 【表格】二哈将军
	tClothingPromotionForAnima_RewardCoat[3322043][2][16]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑二哈将军*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][16]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][16]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322043][2][17] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][17]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322043][2][17]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][17]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][17]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322043][2][17]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][17]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][17]["RewardItem"][1]["Id"] = 200620 -- 【库】金毛大帅[属性:0], 【表格】金毛大帅
	tClothingPromotionForAnima_RewardCoat[3322043][2][17]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑金毛大帅*1
	tClothingPromotionForAnima_RewardCoat[3322043][2][17]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322043][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322043][2][17]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardCoat[3322044] = {}
	-- ===30天时效5星外套包
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322044][1]
	-- ===删除: 3322044,1
	tClothingPromotionForAnima_RewardCoat[3322044][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][1][1]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][1]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][1]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][1][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][1]["RewardItem"][1]["Id"] = 189065 -- 【库】暗黑魔龙战衣【炼狱版】[属性:8], 【表格】暗黑魔龙战衣【炼狱版】
	tClothingPromotionForAnima_RewardCoat[3322044][1][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑暗黑魔龙战衣【炼狱版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][1][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][1][2] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][1][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][2]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][1][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][2]["RewardItem"][1]["Id"] = 188915 -- 【库】辉耀之刺【荣耀版】[属性:8], 【表格】辉耀之刺【荣耀版】
	tClothingPromotionForAnima_RewardCoat[3322044][1][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑辉耀之刺【荣耀版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][1][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][1][3] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][1][3]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][3]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][3]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][1][3]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][3]["RewardItem"][1]["Id"] = 193445 -- 【库】冰雪奇缘【闪耀版】[属性:8], 【表格】冰雪奇缘【闪耀版】
	tClothingPromotionForAnima_RewardCoat[3322044][1][3]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑冰雪奇缘【闪耀版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][1][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][1][4] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][1][4]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][4]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][4]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][1][4]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][4]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][4]["RewardItem"][1]["Id"] = 193565 -- 【库】喵基尼【璀璨版】[属性:0], 【表格】喵基尼【璀璨版】
	tClothingPromotionForAnima_RewardCoat[3322044][1][4]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑喵基尼【璀璨版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][1][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][1][5] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][1][5]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][5]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][5]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][1][5]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][5]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][5]["RewardItem"][1]["Id"] = 189695 -- 【库】大圣魔铠【齐天】[属性:0], 【表格】大圣魔铠【齐天】
	tClothingPromotionForAnima_RewardCoat[3322044][1][5]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑大圣魔铠【齐天】*1
	tClothingPromotionForAnima_RewardCoat[3322044][1][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][1][6] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][6]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][1][6]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][6]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][6]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][1][6]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][6]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][6]["RewardItem"][1]["Id"] = 189735 -- 【库】夏威夷阳光【泡泡版】[属性:0], 【表格】夏威夷阳光【泡泡版】
	tClothingPromotionForAnima_RewardCoat[3322044][1][6]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑夏威夷阳光【泡泡版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][1][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][1][7] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][7]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][1][7]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][7]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][7]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][1][7]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][7]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][7]["RewardItem"][1]["Id"] = 195015 -- 【库】圣诞恋歌·永爱[属性:8], 【表格】圣诞恋歌·永爱
	tClothingPromotionForAnima_RewardCoat[3322044][1][7]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑圣诞恋歌·永爱*1
	tClothingPromotionForAnima_RewardCoat[3322044][1][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][1][8] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][8]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][1][8]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][8]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][8]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][1][8]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][8]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][8]["RewardItem"][1]["Id"] = 195045 -- 【库】轻舞飞扬·盈波[属性:8], 【表格】轻舞飞扬·盈波
	tClothingPromotionForAnima_RewardCoat[3322044][1][8]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑轻舞飞扬·盈波*1
	tClothingPromotionForAnima_RewardCoat[3322044][1][8]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][1][8]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][1][9] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][9]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][1][9]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][9]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][9]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][1][9]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][9]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][9]["RewardItem"][1]["Id"] = 195075 -- 【库】福星天降【华彩版】[属性:0], 【表格】福星天降【华彩版】
	tClothingPromotionForAnima_RewardCoat[3322044][1][9]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑福星天降【华彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][1][9]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][1][9]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][1][10] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][10]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][1][10]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][10]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][10]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][1][10]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][10]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][10]["RewardItem"][1]["Id"] = 195225 -- 【库】卡牌大师【传奇版】[属性:0], 【表格】卡牌大师【传奇版】
	tClothingPromotionForAnima_RewardCoat[3322044][1][10]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑卡牌大师【传奇版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][1][10]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][1][10]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardCoat[3322044][2] = {}
	-- ===30天时效5星外套包
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322044][2]
	-- ===删除: 3322044,1
	tClothingPromotionForAnima_RewardCoat[3322044][2][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][1]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][1]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][1]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][1]["RewardItem"][1]["Id"] = 200494 -- 【库】马上有人民币【马年绝版】[属性:0], 【表格】马上有人民币【马年绝版】
	tClothingPromotionForAnima_RewardCoat[3322044][2][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑马上有人民币【马年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][1]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][2] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][2]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][2]["RewardItem"][1]["Id"] = 200524 -- 【库】至善神羚【羊年绝版】[属性:0], 【表格】至善神羚【羊年绝版】
	tClothingPromotionForAnima_RewardCoat[3322044][2][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑至善神羚【羊年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][2]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][3] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][3]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][3]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][3]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][3]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][3]["RewardItem"][1]["Id"] = 200517 -- 【库】辉耀星辰之蝎【荣耀版】[属性:0], 【表格】辉耀星辰之蝎【荣耀版】
	tClothingPromotionForAnima_RewardCoat[3322044][2][3]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑辉耀星辰之蝎【荣耀版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][3]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][4] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][4]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][4]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][4]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][4]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][4]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][4]["RewardItem"][1]["Id"] = 200531 -- 【库】暗黑赤炎魔龙【炼狱版】[属性:0], 【表格】暗黑赤炎魔龙【炼狱版】
	tClothingPromotionForAnima_RewardCoat[3322044][2][4]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑暗黑赤炎魔龙【炼狱版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][4]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][5] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][5]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][5]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][5]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][5]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][5]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][5]["RewardItem"][1]["Id"] = 200540 -- 【库】七节尾蛮荒兽【奔雷版】[属性:0], 【表格】七节尾蛮荒兽【奔雷版】
	tClothingPromotionForAnima_RewardCoat[3322044][2][5]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑七节尾蛮荒兽【奔雷版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][5]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][6] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][6]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][6]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][6]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][6]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][6]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][6]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][6]["RewardItem"][1]["Id"] = 200544 -- 【库】喵呜将军【璀璨版】[属性:0], 【表格】喵呜将军【璀璨版】
	tClothingPromotionForAnima_RewardCoat[3322044][2][6]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑喵呜将军【璀璨版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][6]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][7] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][7]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][7]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][7]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][7]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][7]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][7]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][7]["RewardItem"][1]["Id"] = 200559 -- 【库】猴王天天[属性:0], 【表格】猴王天天
	tClothingPromotionForAnima_RewardCoat[3322044][2][7]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑猴王天天*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][7]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][8] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][8]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][8]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][8]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][8]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][8]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][8]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][8]["RewardItem"][1]["Id"] = 200560 -- 【库】猴王西西[属性:0], 【表格】猴王西西
	tClothingPromotionForAnima_RewardCoat[3322044][2][8]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑猴王西西*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][8]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][8]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][9] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][9]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][9]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][9]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][9]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][9]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][9]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][9]["RewardItem"][1]["Id"] = 200581 -- 【库】焚天圣兽[属性:8], 【表格】焚天圣兽
	tClothingPromotionForAnima_RewardCoat[3322044][2][9]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑焚天圣兽*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][9]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][9]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][10] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][10]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][10]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][10]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][10]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][10]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][10]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][10]["RewardItem"][1]["Id"] = 200580 -- 【库】玄冰圣兽[属性:8], 【表格】玄冰圣兽
	tClothingPromotionForAnima_RewardCoat[3322044][2][10]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑玄冰圣兽*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][10]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][10]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][11] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][11]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][11]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][11]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][11]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][11]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][11]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][11]["RewardItem"][1]["Id"] = 200564 -- 【库】超级羊驼维克多[属性:0], 【表格】超级羊驼维克多
	tClothingPromotionForAnima_RewardCoat[3322044][2][11]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑超级羊驼维克多*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][11]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][11]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][12] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][12]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][12]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][12]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][12]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][12]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][12]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][12]["RewardItem"][1]["Id"] = 200572 -- 【库】净世白莲[属性:0], 【表格】净世白莲
	tClothingPromotionForAnima_RewardCoat[3322044][2][12]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑净世白莲*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][12]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][12]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][13] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][13]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][13]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][13]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][13]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][13]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][13]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][13]["RewardItem"][1]["Id"] = 200573 -- 【库】璀璨金莲[属性:0], 【表格】璀璨金莲
	tClothingPromotionForAnima_RewardCoat[3322044][2][13]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑璀璨金莲*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][13]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][13]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][14] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][14]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][14]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][14]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][14]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][14]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][14]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][14]["RewardItem"][1]["Id"] = 200596 -- 【库】昊天玄狐【魅幻版】[属性:0], 【表格】昊天玄狐【魅幻版】
	tClothingPromotionForAnima_RewardCoat[3322044][2][14]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑昊天玄狐【魅幻版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][14]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][14]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][15] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][15]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][15]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][15]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][15]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][15]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][15]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][15]["RewardItem"][1]["Id"] = 200592 -- 【库】星际战鸡·终极挑战号[属性:8], 【表格】星际战鸡·终极挑战号
	tClothingPromotionForAnima_RewardCoat[3322044][2][15]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑星际战鸡·终极挑战号*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][15]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][15]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][16] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][16]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][16]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][16]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][16]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][16]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][16]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][16]["RewardItem"][1]["Id"] = 200621 -- 【库】萨摩王子【炫彩版】[属性:0], 【表格】萨摩王子【炫彩版】
	tClothingPromotionForAnima_RewardCoat[3322044][2][16]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑萨摩王子【炫彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][16]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][16]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][17] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][17]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][17]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][17]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][17]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][17]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][17]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][17]["RewardItem"][1]["Id"] = 200622 -- 【库】二哈将军【炫彩版】[属性:0], 【表格】二哈将军【炫彩版】
	tClothingPromotionForAnima_RewardCoat[3322044][2][17]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑二哈将军【炫彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][17]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][17]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][18] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][18]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][18]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][18]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][18]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][18]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][18]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][18]["RewardItem"][1]["Id"] = 200623 -- 【库】金毛大帅【炫彩版】[属性:0], 【表格】金毛大帅【炫彩版】
	tClothingPromotionForAnima_RewardCoat[3322044][2][18]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑金毛大帅【炫彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][18]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][18]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][19] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][19]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][19]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][19]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][19]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][19]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][19]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][19]["RewardItem"][1]["Id"] = 200624 -- 【库】逗哥王[属性:0], 【表格】逗哥王
	tClothingPromotionForAnima_RewardCoat[3322044][2][19]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑逗哥王*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][19]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][19]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322044][2][20] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][20]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322044][2][20]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][20]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][20]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322044][2][20]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][20]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][20]["RewardItem"][1]["Id"] = 200626 -- 【库】大鱼海棠·凌波[属性:0], 【表格】大鱼海棠·凌波
	tClothingPromotionForAnima_RewardCoat[3322044][2][20]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑大鱼海棠·凌波*1
	tClothingPromotionForAnima_RewardCoat[3322044][2][20]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322044][2][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322044][2][20]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardCoat[3322045] = {}
	-- ===180天时效4星外套包
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322045][1]
	-- ===删除: 3322045,1
	tClothingPromotionForAnima_RewardCoat[3322045][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][1]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][1]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][1]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][1]["RewardItem"][1]["Id"] = 193205 -- 【库】洋洋得意套装[属性:0], 【表格】洋洋得意
	tClothingPromotionForAnima_RewardCoat[3322045][1][1]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑洋洋得意套装*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][2] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][2]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][2]["RewardItem"][1]["Id"] = 192575 -- 【库】龙凤呈祥[属性:0], 【表格】龙凤呈祥
	tClothingPromotionForAnima_RewardCoat[3322045][1][2]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑龙凤呈祥*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][3] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][3]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][3]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][3]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][3]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][3]["RewardItem"][1]["Id"] = 192565 -- 【库】情人之泪[属性:0], 【表格】情人之泪
	tClothingPromotionForAnima_RewardCoat[3322045][1][3]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑情人之泪*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][4] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][4]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][4]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][4]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][4]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][4]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][4]["RewardItem"][1]["Id"] = 188495 -- 【库】烈火柔情套装[属性:0], 【表格】烈火柔情套装
	tClothingPromotionForAnima_RewardCoat[3322045][1][4]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑烈火柔情套装*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][5] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][5]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][5]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][5]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][5]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][5]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][5]["RewardItem"][1]["Id"] = 189085 -- 【库】雀翎轻衫[属性:0], 【表格】雀翎轻衫
	tClothingPromotionForAnima_RewardCoat[3322045][1][5]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑雀翎轻衫*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][6] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][6]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][6]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][6]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][6]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][6]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][6]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][6]["RewardItem"][1]["Id"] = 193325 -- 【库】江山一统[属性:0], 【表格】江山一统
	tClothingPromotionForAnima_RewardCoat[3322045][1][6]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑江山一统*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][7] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][7]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][7]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][7]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][7]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][7]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][7]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][7]["RewardItem"][1]["Id"] = 193295 -- 【库】孔雀东南飞[属性:0], 【表格】孔雀东南飞
	tClothingPromotionForAnima_RewardCoat[3322045][1][7]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑孔雀东南飞*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][8] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][8]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][8]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][8]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][8]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][8]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][8]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][8]["RewardItem"][1]["Id"] = 193555 -- 【库】喵基尼【魅力版】[属性:0], 【表格】喵基尼【魅力版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][8]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑喵基尼【魅力版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][8]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][8]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][9] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][9]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][9]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][9]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][9]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][9]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][9]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][9]["RewardItem"][1]["Id"] = 189505 -- 【库】锦翎武衣【华彩版】[属性:0], 【表格】锦翎武衣【华彩版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][9]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑锦翎武衣【华彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][9]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][9]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][10] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][10]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][10]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][10]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][10]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][10]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][10]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][10]["RewardItem"][1]["Id"] = 193805 -- 【库】蓝色复兴【典藏版】[属性:8], 【表格】蓝色复兴【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][10]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑蓝色复兴【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][10]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][10]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][11] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][11]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][11]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][11]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][11]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][11]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][11]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][11]["RewardItem"][1]["Id"] = 193775 -- 【库】破晓雄鸡【典藏版】[属性:8], 【表格】破晓雄鸡【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][11]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑破晓雄鸡【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][11]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][11]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][12] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][12]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][12]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][12]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][12]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][12]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][12]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][12]["RewardItem"][1]["Id"] = 193785 -- 【库】复仇三狮【典藏版】[属性:8], 【表格】复仇三狮【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][12]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑复仇三狮【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][12]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][12]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][13] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][13]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][13]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][13]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][13]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][13]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][13]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][13]["RewardItem"][1]["Id"] = 193795 -- 【库】孤胆英雄【典藏版】[属性:8], 【表格】孤胆英雄【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][13]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑孤胆英雄【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][13]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][13]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][14] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][14]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][14]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][14]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][14]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][14]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][14]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][14]["RewardItem"][1]["Id"] = 193815 -- 【库】日耳曼战魂【典藏版】[属性:8], 【表格】日耳曼战魂【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][14]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑日耳曼战魂【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][14]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][14]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][15] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][15]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][15]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][15]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][15]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][15]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][15]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][15]["RewardItem"][1]["Id"] = 193825 -- 【库】激情西班牙【典藏版】[属性:8], 【表格】激情西班牙【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][15]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑激情西班牙【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][15]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][15]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][16] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][16]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][16]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][16]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][16]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][16]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][16]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][16]["RewardItem"][1]["Id"] = 188185 -- 【库】浪客剑魂[属性:0], 【表格】浪客剑魂 
	tClothingPromotionForAnima_RewardCoat[3322045][1][16]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑浪客剑魂*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][16]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][16]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][17] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][17]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][17]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][17]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][17]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][17]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][17]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][17]["RewardItem"][1]["Id"] = 193695 -- 【库】蝶恋花[属性:0], 【表格】蝶恋花
	tClothingPromotionForAnima_RewardCoat[3322045][1][17]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑蝶恋花*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][17]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][17]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][18] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][18]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][18]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][18]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][18]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][18]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][18]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][18]["RewardItem"][1]["Id"] = 194405 -- 【库】狐妖装【魅彩版】[属性:8], 【表格】狐妖装【魅彩版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][18]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑狐妖装【魅彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][18]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][18]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][19] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][19]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][19]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][19]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][19]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][19]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][19]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][19]["RewardItem"][1]["Id"] = 194695 -- 【库】火箭史诗【签名版】[属性:0], 【表格】火箭史诗【签名版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][19]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑火箭史诗【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][19]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][19]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][20] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][20]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][20]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][20]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][20]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][20]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][20]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][20]["RewardItem"][1]["Id"] = 194705 -- 【库】湖人王朝【签名版】[属性:0], 【表格】湖人王朝【签名版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][20]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑湖人王朝【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][20]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][20]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][21] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][21]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][21]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][21]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][21]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][21]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][21]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][21]["RewardItem"][1]["Id"] = 194715 -- 【库】骑士神话【签名版】[属性:0], 【表格】骑士神话【签名版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][21]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑骑士神话【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][21]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][21]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][22] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][22]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][22]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][22]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][22]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][22]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][22]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][22]["RewardItem"][1]["Id"] = 194725 -- 【库】勇士传奇【签名版】[属性:0], 【表格】勇士传奇【签名版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][22]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑勇士传奇【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][22]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][22]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][23] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][23]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][23]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][23]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][23]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][23]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][23]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][23]["RewardItem"][1]["Id"] = 195295 -- 【库】埃及法老王【冠军版】[属性:0], 【表格】埃及法老王【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][23]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑埃及法老王【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][23]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][23]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][24] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][24]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][24]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][24]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][24]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][24]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][24]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][24]["RewardItem"][1]["Id"] = 195305 -- 【库】欧洲红魔【冠军版】[属性:0], 【表格】欧洲红魔【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][24]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑欧洲红魔【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][24]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][24]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][25] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][25]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][25]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][25]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][25]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][25]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][25]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][25]["RewardItem"][1]["Id"] = 195315 -- 【库】桑巴勇者【冠军版】[属性:0], 【表格】桑巴勇者【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][25]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑桑巴勇者【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][25]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][25]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][26] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][26]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][26]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][26]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][26]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][26]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][26]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][26]["RewardItem"][1]["Id"] = 195325 -- 【库】潘帕斯雄鹰【冠军版】[属性:0], 【表格】潘帕斯雄鹰【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][26]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑潘帕斯雄鹰【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][26]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][26]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][27] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][27]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][27]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][27]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][27]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][27]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][27]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][27]["RewardItem"][1]["Id"] = 195335 -- 【库】葡萄牙之魂【冠军版】[属性:0], 【表格】葡萄牙之魂【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][27]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑葡萄牙之魂【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][27]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][27]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][28] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][28]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][28]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][28]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][28]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][28]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][28]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][28]["RewardItem"][1]["Id"] = 195345 -- 【库】西班牙斗士【冠军版】[属性:0], 【表格】西班牙斗士【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][28]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑西班牙斗士【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][28]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][28]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][29] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][29]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][29]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][29]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][29]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][29]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][29]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][29]["RewardItem"][1]["Id"] = 195175 -- 【库】猛龙战队【签名版】[属性:0], 【表格】猛龙战队【签名版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][29]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑猛龙战队【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][29]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][29]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][30] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][30]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][30]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][30]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][30]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][30]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][30]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][30]["RewardItem"][1]["Id"] = 195185 -- 【库】绿衫军团【签名版】[属性:0], 【表格】绿衫军团【签名版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][30]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑绿衫军团【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][30]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][30]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][31] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][31]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][31]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][31]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][31]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][31]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][31]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][31]["RewardItem"][1]["Id"] = 195195 -- 【库】76豪门【签名版】[属性:0], 【表格】76豪门【签名版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][31]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑76豪门【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][31]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][31]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][32] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][32]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][32]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][32]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][32]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][32]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][32]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][32]["RewardItem"][1]["Id"] = 195205 -- 【库】鹈鹕盛世【签名版】[属性:0], 【表格】鹈鹕盛世【签名版】
	tClothingPromotionForAnima_RewardCoat[3322045][1][32]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑鹈鹕盛世【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][32]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][32]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][1][33] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][33]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][1][33]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][33]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][33]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][1][33]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][33]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][33]["RewardItem"][1]["Id"] = 193225 -- 【库】春风得意[属性:9], 【表格】春风得意
	tClothingPromotionForAnima_RewardCoat[3322045][1][33]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑春风得意*1
	tClothingPromotionForAnima_RewardCoat[3322045][1][33]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][1][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][1][33]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardCoat[3322045][2] = {}
	-- ===180天时效4星外套包
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322045][2]
	-- ===删除: 3322045,1
	tClothingPromotionForAnima_RewardCoat[3322045][2][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][1]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][1]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][1]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][1]["RewardItem"][1]["Id"] = 200481 -- 【库】冰魄灵狮外套【十周年绝版】[属性:0], 【表格】冰魄灵狮外套【十周年绝版】
	tClothingPromotionForAnima_RewardCoat[3322045][2][1]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑冰魄灵狮外套【十周年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][1]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][2] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][2]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][2]["RewardItem"][1]["Id"] = 200421 -- 【库】傲世龙神外套【龙年绝版】[属性:0], 【表格】傲世龙神外套【龙年绝版】
	tClothingPromotionForAnima_RewardCoat[3322045][2][2]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑傲世龙神外套【龙年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][2]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][3] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][3]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][3]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][3]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][3]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][3]["RewardItem"][1]["Id"] = 200471 -- 【库】蟠蛇战辕【蛇年绝版】[属性:0], 【表格】蟠蛇战辕【蛇年绝版】
	tClothingPromotionForAnima_RewardCoat[3322045][2][3]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑蟠蛇战辕【蛇年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][3]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][4] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][4]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][4]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][4]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][4]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][4]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][4]["RewardItem"][1]["Id"] = 200495 -- 【库】马上有对象【马年绝版】[属性:0], 【表格】马上有对象【马年绝版】
	tClothingPromotionForAnima_RewardCoat[3322045][2][4]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑马上有对象【马年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][4]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][5] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][5]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][5]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][5]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][5]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][5]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][5]["RewardItem"][1]["Id"] = 200525 -- 【库】开泰宝羚【羊年绝版】[属性:0], 【表格】开泰宝羚【羊年绝版】
	tClothingPromotionForAnima_RewardCoat[3322045][2][5]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑开泰宝羚【羊年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][5]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][6] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][6]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][6]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][6]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][6]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][6]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][6]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][6]["RewardItem"][1]["Id"] = 200500 -- 【库】福来哥[属性:0], 【表格】福来哥
	tClothingPromotionForAnima_RewardCoat[3322045][2][6]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑福来哥*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][6]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][7] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][7]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][7]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][7]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][7]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][7]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][7]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][7]["RewardItem"][1]["Id"] = 200543 -- 【库】喵呜将军【魅力版】[属性:0], 【表格】喵呜将军【魅力版】
	tClothingPromotionForAnima_RewardCoat[3322045][2][7]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑喵呜将军【魅力版】*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][7]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][8] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][8]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][8]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][8]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][8]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][8]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][8]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][8]["RewardItem"][1]["Id"] = 200563 -- 【库】羊驼维克多[属性:0], 【表格】羊驼维克多
	tClothingPromotionForAnima_RewardCoat[3322045][2][8]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑羊驼维克多*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][8]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][8]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][9] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][9]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][9]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][9]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][9]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][9]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][9]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][9]["RewardItem"][1]["Id"] = 200574 -- 【库】幻雪蓝莲[属性:0], 【表格】幻雪蓝莲
	tClothingPromotionForAnima_RewardCoat[3322045][2][9]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑幻雪蓝莲*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][9]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][9]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][10] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][10]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][10]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][10]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][10]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][10]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][10]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][10]["RewardItem"][1]["Id"] = 200579 -- 【库】赤龙圣兽[属性:8], 【表格】赤龙圣兽
	tClothingPromotionForAnima_RewardCoat[3322045][2][10]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑赤龙圣兽*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][10]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][10]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][11] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][11]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][11]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][11]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][11]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][11]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][11]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][11]["RewardItem"][1]["Id"] = 200589 -- 【库】星际战鸡·无尽梦想号[属性:8], 【表格】星际战鸡·无尽梦想号
	tClothingPromotionForAnima_RewardCoat[3322045][2][11]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑星际战鸡·无尽梦想号*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][11]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][11]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][12] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][12]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][12]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][12]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][12]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][12]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][12]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][12]["RewardItem"][1]["Id"] = 200593 -- 【库】星际战鸡·无尽勇气号[属性:8], 【表格】星际战鸡·无尽勇气号
	tClothingPromotionForAnima_RewardCoat[3322045][2][12]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑星际战鸡·无尽勇气号*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][12]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][12]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][13] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][13]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][13]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][13]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][13]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][13]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][13]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][13]["RewardItem"][1]["Id"] = 200591 -- 【库】星际战鸡·无尽希望号[属性:8], 【表格】星际战鸡·无尽希望号
	tClothingPromotionForAnima_RewardCoat[3322045][2][13]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑星际战鸡·无尽希望号*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][13]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][13]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][14] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][14]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][14]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][14]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][14]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][14]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][14]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][14]["RewardItem"][1]["Id"] = 200590 -- 【库】星际战鸡·无尽探索号[属性:8], 【表格】星际战鸡·无尽探索号
	tClothingPromotionForAnima_RewardCoat[3322045][2][14]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑星际战鸡·无尽探索号*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][14]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][14]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][15] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][15]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][15]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][15]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][15]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][15]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][15]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][15]["RewardItem"][1]["Id"] = 200618 -- 【库】萨摩王子[属性:0], 【表格】萨摩王子
	tClothingPromotionForAnima_RewardCoat[3322045][2][15]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑萨摩王子*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][15]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][15]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][16] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][16]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][16]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][16]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][16]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][16]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][16]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][16]["RewardItem"][1]["Id"] = 200619 -- 【库】二哈将军[属性:0], 【表格】二哈将军
	tClothingPromotionForAnima_RewardCoat[3322045][2][16]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑二哈将军*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][16]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][16]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322045][2][17] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][17]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322045][2][17]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][17]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][17]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322045][2][17]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][17]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][17]["RewardItem"][1]["Id"] = 200620 -- 【库】金毛大帅[属性:0], 【表格】金毛大帅
	tClothingPromotionForAnima_RewardCoat[3322045][2][17]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑金毛大帅*1
	tClothingPromotionForAnima_RewardCoat[3322045][2][17]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322045][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322045][2][17]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardCoat[3322046] = {}
	-- ===180天时效5星外套包
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322046][1]
	-- ===删除: 3322046,1
	tClothingPromotionForAnima_RewardCoat[3322046][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][1][1]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][1]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][1]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][1][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][1]["RewardItem"][1]["Id"] = 189065 -- 【库】暗黑魔龙战衣【炼狱版】[属性:8], 【表格】暗黑魔龙战衣【炼狱版】
	tClothingPromotionForAnima_RewardCoat[3322046][1][1]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑暗黑魔龙战衣【炼狱版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][1][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][1][2] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][1][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][2]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][1][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][2]["RewardItem"][1]["Id"] = 188915 -- 【库】辉耀之刺【荣耀版】[属性:8], 【表格】辉耀之刺【荣耀版】
	tClothingPromotionForAnima_RewardCoat[3322046][1][2]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑辉耀之刺【荣耀版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][1][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][1][3] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][1][3]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][3]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][3]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][1][3]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][3]["RewardItem"][1]["Id"] = 193445 -- 【库】冰雪奇缘【闪耀版】[属性:8], 【表格】冰雪奇缘【闪耀版】
	tClothingPromotionForAnima_RewardCoat[3322046][1][3]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑冰雪奇缘【闪耀版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][1][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][1][4] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][1][4]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][4]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][4]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][1][4]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][4]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][4]["RewardItem"][1]["Id"] = 193565 -- 【库】喵基尼【璀璨版】[属性:0], 【表格】喵基尼【璀璨版】
	tClothingPromotionForAnima_RewardCoat[3322046][1][4]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑喵基尼【璀璨版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][1][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][1][5] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][1][5]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][5]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][5]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][1][5]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][5]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][5]["RewardItem"][1]["Id"] = 189695 -- 【库】大圣魔铠【齐天】[属性:0], 【表格】大圣魔铠【齐天】
	tClothingPromotionForAnima_RewardCoat[3322046][1][5]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑大圣魔铠【齐天】*1
	tClothingPromotionForAnima_RewardCoat[3322046][1][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][1][6] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][6]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][1][6]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][6]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][6]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][1][6]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][6]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][6]["RewardItem"][1]["Id"] = 189735 -- 【库】夏威夷阳光【泡泡版】[属性:0], 【表格】夏威夷阳光【泡泡版】
	tClothingPromotionForAnima_RewardCoat[3322046][1][6]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑夏威夷阳光【泡泡版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][1][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][1][7] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][7]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][1][7]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][7]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][7]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][1][7]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][7]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][7]["RewardItem"][1]["Id"] = 195015 -- 【库】圣诞恋歌·永爱[属性:8], 【表格】圣诞恋歌·永爱
	tClothingPromotionForAnima_RewardCoat[3322046][1][7]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑圣诞恋歌·永爱*1
	tClothingPromotionForAnima_RewardCoat[3322046][1][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][1][8] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][8]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][1][8]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][8]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][8]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][1][8]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][8]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][8]["RewardItem"][1]["Id"] = 195045 -- 【库】轻舞飞扬·盈波[属性:8], 【表格】轻舞飞扬·盈波
	tClothingPromotionForAnima_RewardCoat[3322046][1][8]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑轻舞飞扬·盈波*1
	tClothingPromotionForAnima_RewardCoat[3322046][1][8]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][1][8]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][1][9] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][9]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][1][9]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][9]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][9]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][1][9]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][9]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][9]["RewardItem"][1]["Id"] = 195075 -- 【库】福星天降【华彩版】[属性:0], 【表格】福星天降【华彩版】
	tClothingPromotionForAnima_RewardCoat[3322046][1][9]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑福星天降【华彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][1][9]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][1][9]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][1][10] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][10]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][1][10]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][10]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][10]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][1][10]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][10]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][10]["RewardItem"][1]["Id"] = 195225 -- 【库】卡牌大师【传奇版】[属性:0], 【表格】卡牌大师【传奇版】
	tClothingPromotionForAnima_RewardCoat[3322046][1][10]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑卡牌大师【传奇版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][1][10]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][1][10]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardCoat[3322046][2] = {}
	-- ===180天时效5星外套包
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322046][2]
	-- ===删除: 3322046,1
	tClothingPromotionForAnima_RewardCoat[3322046][2][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][1]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][1]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][1]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][1]["RewardItem"][1]["Id"] = 200494 -- 【库】马上有人民币【马年绝版】[属性:0], 【表格】马上有人民币【马年绝版】
	tClothingPromotionForAnima_RewardCoat[3322046][2][1]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑马上有人民币【马年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][1]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][2] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][2]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][2]["RewardItem"][1]["Id"] = 200524 -- 【库】至善神羚【羊年绝版】[属性:0], 【表格】至善神羚【羊年绝版】
	tClothingPromotionForAnima_RewardCoat[3322046][2][2]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑至善神羚【羊年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][2]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][3] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][3]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][3]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][3]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][3]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][3]["RewardItem"][1]["Id"] = 200517 -- 【库】辉耀星辰之蝎【荣耀版】[属性:0], 【表格】辉耀星辰之蝎【荣耀版】
	tClothingPromotionForAnima_RewardCoat[3322046][2][3]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑辉耀星辰之蝎【荣耀版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][3]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][4] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][4]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][4]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][4]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][4]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][4]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][4]["RewardItem"][1]["Id"] = 200531 -- 【库】暗黑赤炎魔龙【炼狱版】[属性:0], 【表格】暗黑赤炎魔龙【炼狱版】
	tClothingPromotionForAnima_RewardCoat[3322046][2][4]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑暗黑赤炎魔龙【炼狱版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][4]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][5] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][5]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][5]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][5]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][5]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][5]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][5]["RewardItem"][1]["Id"] = 200540 -- 【库】七节尾蛮荒兽【奔雷版】[属性:0], 【表格】七节尾蛮荒兽【奔雷版】
	tClothingPromotionForAnima_RewardCoat[3322046][2][5]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑七节尾蛮荒兽【奔雷版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][5]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][6] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][6]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][6]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][6]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][6]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][6]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][6]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][6]["RewardItem"][1]["Id"] = 200544 -- 【库】喵呜将军【璀璨版】[属性:0], 【表格】喵呜将军【璀璨版】
	tClothingPromotionForAnima_RewardCoat[3322046][2][6]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑喵呜将军【璀璨版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][6]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][7] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][7]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][7]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][7]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][7]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][7]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][7]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][7]["RewardItem"][1]["Id"] = 200559 -- 【库】猴王天天[属性:0], 【表格】猴王天天
	tClothingPromotionForAnima_RewardCoat[3322046][2][7]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑猴王天天*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][7]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][8] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][8]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][8]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][8]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][8]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][8]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][8]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][8]["RewardItem"][1]["Id"] = 200560 -- 【库】猴王西西[属性:0], 【表格】猴王西西
	tClothingPromotionForAnima_RewardCoat[3322046][2][8]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑猴王西西*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][8]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][8]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][9] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][9]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][9]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][9]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][9]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][9]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][9]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][9]["RewardItem"][1]["Id"] = 200581 -- 【库】焚天圣兽[属性:8], 【表格】焚天圣兽
	tClothingPromotionForAnima_RewardCoat[3322046][2][9]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑焚天圣兽*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][9]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][9]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][10] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][10]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][10]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][10]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][10]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][10]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][10]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][10]["RewardItem"][1]["Id"] = 200580 -- 【库】玄冰圣兽[属性:8], 【表格】玄冰圣兽
	tClothingPromotionForAnima_RewardCoat[3322046][2][10]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑玄冰圣兽*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][10]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][10]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][11] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][11]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][11]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][11]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][11]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][11]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][11]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][11]["RewardItem"][1]["Id"] = 200564 -- 【库】超级羊驼维克多[属性:0], 【表格】超级羊驼维克多
	tClothingPromotionForAnima_RewardCoat[3322046][2][11]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑超级羊驼维克多*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][11]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][11]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][12] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][12]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][12]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][12]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][12]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][12]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][12]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][12]["RewardItem"][1]["Id"] = 200572 -- 【库】净世白莲[属性:0], 【表格】净世白莲
	tClothingPromotionForAnima_RewardCoat[3322046][2][12]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑净世白莲*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][12]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][12]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][13] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][13]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][13]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][13]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][13]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][13]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][13]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][13]["RewardItem"][1]["Id"] = 200573 -- 【库】璀璨金莲[属性:0], 【表格】璀璨金莲
	tClothingPromotionForAnima_RewardCoat[3322046][2][13]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑璀璨金莲*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][13]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][13]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][14] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][14]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][14]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][14]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][14]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][14]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][14]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][14]["RewardItem"][1]["Id"] = 200596 -- 【库】昊天玄狐【魅幻版】[属性:0], 【表格】昊天玄狐【魅幻版】
	tClothingPromotionForAnima_RewardCoat[3322046][2][14]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑昊天玄狐【魅幻版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][14]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][14]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][15] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][15]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][15]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][15]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][15]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][15]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][15]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][15]["RewardItem"][1]["Id"] = 200592 -- 【库】星际战鸡·终极挑战号[属性:8], 【表格】星际战鸡·终极挑战号
	tClothingPromotionForAnima_RewardCoat[3322046][2][15]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑星际战鸡·终极挑战号*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][15]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][15]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][16] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][16]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][16]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][16]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][16]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][16]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][16]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][16]["RewardItem"][1]["Id"] = 200621 -- 【库】萨摩王子【炫彩版】[属性:0], 【表格】萨摩王子【炫彩版】
	tClothingPromotionForAnima_RewardCoat[3322046][2][16]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑萨摩王子【炫彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][16]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][16]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][17] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][17]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][17]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][17]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][17]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][17]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][17]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][17]["RewardItem"][1]["Id"] = 200622 -- 【库】二哈将军【炫彩版】[属性:0], 【表格】二哈将军【炫彩版】
	tClothingPromotionForAnima_RewardCoat[3322046][2][17]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑二哈将军【炫彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][17]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][17]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][18] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][18]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][18]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][18]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][18]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][18]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][18]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][18]["RewardItem"][1]["Id"] = 200623 -- 【库】金毛大帅【炫彩版】[属性:0], 【表格】金毛大帅【炫彩版】
	tClothingPromotionForAnima_RewardCoat[3322046][2][18]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑金毛大帅【炫彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][18]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][18]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][19] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][19]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][19]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][19]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][19]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][19]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][19]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][19]["RewardItem"][1]["Id"] = 200624 -- 【库】逗哥王[属性:0], 【表格】逗哥王
	tClothingPromotionForAnima_RewardCoat[3322046][2][19]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑逗哥王*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][19]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][19]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322046][2][20] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][20]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322046][2][20]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][20]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][20]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322046][2][20]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][20]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][20]["RewardItem"][1]["Id"] = 200626 -- 【库】大鱼海棠·凌波[属性:0], 【表格】大鱼海棠·凌波
	tClothingPromotionForAnima_RewardCoat[3322046][2][20]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑大鱼海棠·凌波*1
	tClothingPromotionForAnima_RewardCoat[3322046][2][20]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322046][2][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322046][2][20]["RewardEffect"]["Effect"] = "angelwing"



	tClothingPromotionForAnima_RewardCoat[3322050] = {}
	-- ===高级制衣册
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322050][1]
	-- ===删除: 3322050,1
	tClothingPromotionForAnima_RewardCoat[3322050][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][1]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][1]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][1]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][1]["RewardItem"][1]["Id"] = 193205 -- 【库】洋洋得意套装[属性:0], 【表格】洋洋得意
	tClothingPromotionForAnima_RewardCoat[3322050][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑洋洋得意套装*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][2] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][2]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][2]["RewardItem"][1]["Id"] = 192575 -- 【库】龙凤呈祥[属性:0], 【表格】龙凤呈祥
	tClothingPromotionForAnima_RewardCoat[3322050][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑龙凤呈祥*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][3] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][3]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][3]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][3]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][3]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][3]["RewardItem"][1]["Id"] = 192565 -- 【库】情人之泪[属性:0], 【表格】情人之泪
	tClothingPromotionForAnima_RewardCoat[3322050][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑情人之泪*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][4] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][4]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][4]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][4]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][4]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][4]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][4]["RewardItem"][1]["Id"] = 188495 -- 【库】烈火柔情套装[属性:0], 【表格】烈火柔情套装
	tClothingPromotionForAnima_RewardCoat[3322050][1][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑烈火柔情套装*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][5] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][5]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][5]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][5]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][5]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][5]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][5]["RewardItem"][1]["Id"] = 189085 -- 【库】雀翎轻衫[属性:0], 【表格】雀翎轻衫
	tClothingPromotionForAnima_RewardCoat[3322050][1][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑雀翎轻衫*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][6] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][6]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][6]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][6]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][6]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][6]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][6]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][6]["RewardItem"][1]["Id"] = 193325 -- 【库】江山一统[属性:0], 【表格】江山一统
	tClothingPromotionForAnima_RewardCoat[3322050][1][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑江山一统*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][7] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][7]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][7]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][7]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][7]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][7]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][7]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][7]["RewardItem"][1]["Id"] = 193295 -- 【库】孔雀东南飞[属性:0], 【表格】孔雀东南飞
	tClothingPromotionForAnima_RewardCoat[3322050][1][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑孔雀东南飞*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][8] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][8]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][8]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][8]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][8]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][8]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][8]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][8]["RewardItem"][1]["Id"] = 193555 -- 【库】喵基尼【魅力版】[属性:0], 【表格】喵基尼【魅力版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑喵基尼【魅力版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][8]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][8]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][9] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][9]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][9]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][9]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][9]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][9]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][9]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][9]["RewardItem"][1]["Id"] = 189505 -- 【库】锦翎武衣【华彩版】[属性:0], 【表格】锦翎武衣【华彩版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑锦翎武衣【华彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][9]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][9]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][10] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][10]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][10]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][10]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][10]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][10]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][10]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][10]["RewardItem"][1]["Id"] = 193805 -- 【库】蓝色复兴【典藏版】[属性:8], 【表格】蓝色复兴【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑蓝色复兴【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][10]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][10]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][11] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][11]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][11]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][11]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][11]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][11]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][11]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][11]["RewardItem"][1]["Id"] = 193775 -- 【库】破晓雄鸡【典藏版】[属性:8], 【表格】破晓雄鸡【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑破晓雄鸡【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][11]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][11]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][12] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][12]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][12]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][12]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][12]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][12]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][12]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][12]["RewardItem"][1]["Id"] = 193785 -- 【库】复仇三狮【典藏版】[属性:8], 【表格】复仇三狮【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑复仇三狮【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][12]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][12]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][13] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][13]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][13]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][13]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][13]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][13]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][13]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][13]["RewardItem"][1]["Id"] = 193795 -- 【库】孤胆英雄【典藏版】[属性:8], 【表格】孤胆英雄【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑孤胆英雄【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][13]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][13]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][14] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][14]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][14]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][14]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][14]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][14]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][14]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][14]["RewardItem"][1]["Id"] = 193815 -- 【库】日耳曼战魂【典藏版】[属性:8], 【表格】日耳曼战魂【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑日耳曼战魂【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][14]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][14]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][15] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][15]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][15]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][15]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][15]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][15]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][15]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][15]["RewardItem"][1]["Id"] = 193825 -- 【库】激情西班牙【典藏版】[属性:8], 【表格】激情西班牙【典藏版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑激情西班牙【典藏版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][15]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][15]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][16] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][16]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][16]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][16]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][16]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][16]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][16]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][16]["RewardItem"][1]["Id"] = 188185 -- 【库】浪客剑魂[属性:0], 【表格】浪客剑魂 
	tClothingPromotionForAnima_RewardCoat[3322050][1][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑浪客剑魂*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][16]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][16]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][17] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][17]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][17]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][17]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][17]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][17]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][17]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][17]["RewardItem"][1]["Id"] = 193695 -- 【库】蝶恋花[属性:0], 【表格】蝶恋花
	tClothingPromotionForAnima_RewardCoat[3322050][1][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑蝶恋花*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][17]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][17]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][18] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][18]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][18]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][18]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][18]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][18]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][18]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][18]["RewardItem"][1]["Id"] = 194405 -- 【库】狐妖装【魅彩版】[属性:8], 【表格】狐妖装【魅彩版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑狐妖装【魅彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][18]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][18]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][19] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][19]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][19]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][19]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][19]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][19]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][19]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][19]["RewardItem"][1]["Id"] = 194695 -- 【库】火箭史诗【签名版】[属性:0], 【表格】火箭史诗【签名版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑火箭史诗【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][19]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][19]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][20] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][20]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][20]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][20]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][20]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][20]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][20]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][20]["RewardItem"][1]["Id"] = 194705 -- 【库】湖人王朝【签名版】[属性:0], 【表格】湖人王朝【签名版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑湖人王朝【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][20]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][20]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][21] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][21]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][21]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][21]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][21]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][21]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][21]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][21]["RewardItem"][1]["Id"] = 194715 -- 【库】骑士神话【签名版】[属性:0], 【表格】骑士神话【签名版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][21]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑骑士神话【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][21]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][21]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][22] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][22]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][22]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][22]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][22]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][22]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][22]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][22]["RewardItem"][1]["Id"] = 194725 -- 【库】勇士传奇【签名版】[属性:0], 【表格】勇士传奇【签名版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑勇士传奇【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][22]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][22]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][23] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][23]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][23]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][23]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][23]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][23]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][23]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][23]["RewardItem"][1]["Id"] = 195295 -- 【库】埃及法老王【冠军版】[属性:0], 【表格】埃及法老王【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][23]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑埃及法老王【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][23]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][23]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][24] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][24]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][24]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][24]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][24]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][24]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][24]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][24]["RewardItem"][1]["Id"] = 195305 -- 【库】欧洲红魔【冠军版】[属性:0], 【表格】欧洲红魔【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][24]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑欧洲红魔【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][24]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][24]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][25] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][25]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][25]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][25]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][25]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][25]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][25]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][25]["RewardItem"][1]["Id"] = 195315 -- 【库】桑巴勇者【冠军版】[属性:0], 【表格】桑巴勇者【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][25]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑桑巴勇者【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][25]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][25]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][26] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][26]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][26]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][26]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][26]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][26]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][26]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][26]["RewardItem"][1]["Id"] = 195325 -- 【库】潘帕斯雄鹰【冠军版】[属性:0], 【表格】潘帕斯雄鹰【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][26]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑潘帕斯雄鹰【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][26]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][26]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][27] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][27]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][27]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][27]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][27]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][27]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][27]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][27]["RewardItem"][1]["Id"] = 195335 -- 【库】葡萄牙之魂【冠军版】[属性:0], 【表格】葡萄牙之魂【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][27]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑葡萄牙之魂【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][27]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][27]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][28] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][28]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][28]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][28]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][28]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][28]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][28]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][28]["RewardItem"][1]["Id"] = 195345 -- 【库】西班牙斗士【冠军版】[属性:0], 【表格】西班牙斗士【冠军版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][28]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑西班牙斗士【冠军版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][28]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][28]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][29] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][29]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][29]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][29]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][29]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][29]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][29]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][29]["RewardItem"][1]["Id"] = 195175 -- 【库】猛龙战队【签名版】[属性:0], 【表格】猛龙战队【签名版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][29]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑猛龙战队【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][29]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][29]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][30] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][30]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][30]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][30]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][30]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][30]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][30]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][30]["RewardItem"][1]["Id"] = 195185 -- 【库】绿衫军团【签名版】[属性:0], 【表格】绿衫军团【签名版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][30]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑绿衫军团【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][30]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][30]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][31] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][31]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][31]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][31]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][31]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][31]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][31]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][31]["RewardItem"][1]["Id"] = 195195 -- 【库】76豪门【签名版】[属性:0], 【表格】76豪门【签名版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][31]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑76豪门【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][31]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][31]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][32] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][32]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][32]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][32]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][32]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][32]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][32]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][32]["RewardItem"][1]["Id"] = 195205 -- 【库】鹈鹕盛世【签名版】[属性:0], 【表格】鹈鹕盛世【签名版】
	tClothingPromotionForAnima_RewardCoat[3322050][1][32]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑鹈鹕盛世【签名版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][32]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][32]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][1][33] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][33]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][1][33]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][33]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][33]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][1][33]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][33]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][33]["RewardItem"][1]["Id"] = 193225 -- 【库】春风得意[属性:9], 【表格】春风得意
	tClothingPromotionForAnima_RewardCoat[3322050][1][33]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑春风得意*1
	tClothingPromotionForAnima_RewardCoat[3322050][1][33]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][1][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][1][33]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardCoat[3322050][2] = {}
	-- ===高级制衣册
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322050][2]
	-- ===删除: 3322050,1
	tClothingPromotionForAnima_RewardCoat[3322050][2][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][1]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][1]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][1]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][1]["RewardItem"][1]["Id"] = 200481 -- 【库】冰魄灵狮外套【十周年绝版】[属性:0], 【表格】冰魄灵狮外套【十周年绝版】
	tClothingPromotionForAnima_RewardCoat[3322050][2][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑冰魄灵狮外套【十周年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][1]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][2] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][2]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][2]["RewardItem"][1]["Id"] = 200421 -- 【库】傲世龙神外套【龙年绝版】[属性:0], 【表格】傲世龙神外套【龙年绝版】
	tClothingPromotionForAnima_RewardCoat[3322050][2][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑傲世龙神外套【龙年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][2]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][3] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][3]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][3]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][3]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][3]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][3]["RewardItem"][1]["Id"] = 200471 -- 【库】蟠蛇战辕【蛇年绝版】[属性:0], 【表格】蟠蛇战辕【蛇年绝版】
	tClothingPromotionForAnima_RewardCoat[3322050][2][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑蟠蛇战辕【蛇年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][3]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][4] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][4]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][4]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][4]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][4]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][4]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][4]["RewardItem"][1]["Id"] = 200495 -- 【库】马上有对象【马年绝版】[属性:0], 【表格】马上有对象【马年绝版】
	tClothingPromotionForAnima_RewardCoat[3322050][2][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑马上有对象【马年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][4]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][5] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][5]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][5]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][5]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][5]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][5]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][5]["RewardItem"][1]["Id"] = 200525 -- 【库】开泰宝羚【羊年绝版】[属性:0], 【表格】开泰宝羚【羊年绝版】
	tClothingPromotionForAnima_RewardCoat[3322050][2][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑开泰宝羚【羊年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][5]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][6] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][6]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][6]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][6]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][6]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][6]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][6]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][6]["RewardItem"][1]["Id"] = 200500 -- 【库】福来哥[属性:0], 【表格】福来哥
	tClothingPromotionForAnima_RewardCoat[3322050][2][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑福来哥*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][6]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][7] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][7]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][7]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][7]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][7]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][7]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][7]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][7]["RewardItem"][1]["Id"] = 200543 -- 【库】喵呜将军【魅力版】[属性:0], 【表格】喵呜将军【魅力版】
	tClothingPromotionForAnima_RewardCoat[3322050][2][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑喵呜将军【魅力版】*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][7]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][8] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][8]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][8]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][8]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][8]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][8]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][8]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][8]["RewardItem"][1]["Id"] = 200563 -- 【库】羊驼维克多[属性:0], 【表格】羊驼维克多
	tClothingPromotionForAnima_RewardCoat[3322050][2][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑羊驼维克多*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][8]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][8]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][9] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][9]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][9]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][9]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][9]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][9]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][9]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][9]["RewardItem"][1]["Id"] = 200574 -- 【库】幻雪蓝莲[属性:0], 【表格】幻雪蓝莲
	tClothingPromotionForAnima_RewardCoat[3322050][2][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑幻雪蓝莲*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][9]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][9]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][10] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][10]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][10]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][10]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][10]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][10]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][10]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][10]["RewardItem"][1]["Id"] = 200579 -- 【库】赤龙圣兽[属性:8], 【表格】赤龙圣兽
	tClothingPromotionForAnima_RewardCoat[3322050][2][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑赤龙圣兽*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][10]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][10]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][11] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][11]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][11]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][11]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][11]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][11]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][11]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][11]["RewardItem"][1]["Id"] = 200589 -- 【库】星际战鸡·无尽梦想号[属性:8], 【表格】星际战鸡·无尽梦想号
	tClothingPromotionForAnima_RewardCoat[3322050][2][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑星际战鸡·无尽梦想号*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][11]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][11]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][12] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][12]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][12]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][12]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][12]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][12]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][12]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][12]["RewardItem"][1]["Id"] = 200593 -- 【库】星际战鸡·无尽勇气号[属性:8], 【表格】星际战鸡·无尽勇气号
	tClothingPromotionForAnima_RewardCoat[3322050][2][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑星际战鸡·无尽勇气号*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][12]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][12]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][13] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][13]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][13]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][13]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][13]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][13]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][13]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][13]["RewardItem"][1]["Id"] = 200591 -- 【库】星际战鸡·无尽希望号[属性:8], 【表格】星际战鸡·无尽希望号
	tClothingPromotionForAnima_RewardCoat[3322050][2][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑星际战鸡·无尽希望号*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][13]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][13]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][14] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][14]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][14]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][14]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][14]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][14]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][14]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][14]["RewardItem"][1]["Id"] = 200590 -- 【库】星际战鸡·无尽探索号[属性:8], 【表格】星际战鸡·无尽探索号
	tClothingPromotionForAnima_RewardCoat[3322050][2][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑星际战鸡·无尽探索号*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][14]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][14]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][15] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][15]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][15]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][15]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][15]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][15]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][15]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][15]["RewardItem"][1]["Id"] = 200618 -- 【库】萨摩王子[属性:0], 【表格】萨摩王子
	tClothingPromotionForAnima_RewardCoat[3322050][2][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑萨摩王子*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][15]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][15]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][16] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][16]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][16]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][16]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][16]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][16]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][16]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][16]["RewardItem"][1]["Id"] = 200619 -- 【库】二哈将军[属性:0], 【表格】二哈将军
	tClothingPromotionForAnima_RewardCoat[3322050][2][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑二哈将军*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][16]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][16]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322050][2][17] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][17]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322050][2][17]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][17]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][17]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322050][2][17]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][17]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][17]["RewardItem"][1]["Id"] = 200620 -- 【库】金毛大帅[属性:0], 【表格】金毛大帅
	tClothingPromotionForAnima_RewardCoat[3322050][2][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑金毛大帅*1
	tClothingPromotionForAnima_RewardCoat[3322050][2][17]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322050][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322050][2][17]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardCoat[3322052] = {}
	-- ===特级制衣册
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322052][1]
	-- ===删除: 3322052,1
	tClothingPromotionForAnima_RewardCoat[3322052][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][1][1]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][1]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][1]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][1][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][1]["RewardItem"][1]["Id"] = 189065 -- 【库】暗黑魔龙战衣【炼狱版】[属性:8], 【表格】暗黑魔龙战衣【炼狱版】
	tClothingPromotionForAnima_RewardCoat[3322052][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑暗黑魔龙战衣【炼狱版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][1][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][1][2] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][1][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][2]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][1][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][2]["RewardItem"][1]["Id"] = 188915 -- 【库】辉耀之刺【荣耀版】[属性:8], 【表格】辉耀之刺【荣耀版】
	tClothingPromotionForAnima_RewardCoat[3322052][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑辉耀之刺【荣耀版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][1][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][1][3] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][1][3]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][3]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][3]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][1][3]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][3]["RewardItem"][1]["Id"] = 193445 -- 【库】冰雪奇缘【闪耀版】[属性:8], 【表格】冰雪奇缘【闪耀版】
	tClothingPromotionForAnima_RewardCoat[3322052][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑冰雪奇缘【闪耀版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][1][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][1][4] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][1][4]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][4]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][4]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][1][4]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][4]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][4]["RewardItem"][1]["Id"] = 193565 -- 【库】喵基尼【璀璨版】[属性:0], 【表格】喵基尼【璀璨版】
	tClothingPromotionForAnima_RewardCoat[3322052][1][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑喵基尼【璀璨版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][1][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][1][5] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][1][5]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][5]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][5]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][1][5]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][5]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][5]["RewardItem"][1]["Id"] = 189695 -- 【库】大圣魔铠【齐天】[属性:0], 【表格】大圣魔铠【齐天】
	tClothingPromotionForAnima_RewardCoat[3322052][1][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑大圣魔铠【齐天】*1
	tClothingPromotionForAnima_RewardCoat[3322052][1][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][1][6] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][6]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][1][6]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][6]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][6]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][1][6]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][6]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][6]["RewardItem"][1]["Id"] = 189735 -- 【库】夏威夷阳光【泡泡版】[属性:0], 【表格】夏威夷阳光【泡泡版】
	tClothingPromotionForAnima_RewardCoat[3322052][1][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑夏威夷阳光【泡泡版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][1][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][1][7] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][7]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][1][7]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][7]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][7]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][1][7]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][7]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][7]["RewardItem"][1]["Id"] = 195015 -- 【库】圣诞恋歌·永爱[属性:8], 【表格】圣诞恋歌·永爱
	tClothingPromotionForAnima_RewardCoat[3322052][1][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑圣诞恋歌·永爱*1
	tClothingPromotionForAnima_RewardCoat[3322052][1][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][1][8] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][8]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][1][8]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][8]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][8]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][1][8]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][8]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][8]["RewardItem"][1]["Id"] = 195045 -- 【库】轻舞飞扬·盈波[属性:8], 【表格】轻舞飞扬·盈波
	tClothingPromotionForAnima_RewardCoat[3322052][1][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑轻舞飞扬·盈波*1
	tClothingPromotionForAnima_RewardCoat[3322052][1][8]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][1][8]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][1][9] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][9]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][1][9]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][9]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][9]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][1][9]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][9]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][9]["RewardItem"][1]["Id"] = 195075 -- 【库】福星天降【华彩版】[属性:0], 【表格】福星天降【华彩版】
	tClothingPromotionForAnima_RewardCoat[3322052][1][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑福星天降【华彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][1][9]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][1][9]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][1][10] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][10]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][1][10]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][10]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][10]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][1][10]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][10]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][10]["RewardItem"][1]["Id"] = 195225 -- 【库】卡牌大师【传奇版】[属性:0], 【表格】卡牌大师【传奇版】
	tClothingPromotionForAnima_RewardCoat[3322052][1][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑卡牌大师【传奇版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][1][10]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][1][10]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardCoat[3322052][2] = {}
	-- ===特级制衣册
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322052][2]
	-- ===删除: 3322052,1
	tClothingPromotionForAnima_RewardCoat[3322052][2][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][1]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][1]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][1]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][1]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][1]["RewardItem"][1]["Id"] = 200494 -- 【库】马上有人民币【马年绝版】[属性:0], 【表格】马上有人民币【马年绝版】
	tClothingPromotionForAnima_RewardCoat[3322052][2][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑马上有人民币【马年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][1]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][2] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][2]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][2]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][2]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][2]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][2]["RewardItem"][1]["Id"] = 200524 -- 【库】至善神羚【羊年绝版】[属性:0], 【表格】至善神羚【羊年绝版】
	tClothingPromotionForAnima_RewardCoat[3322052][2][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑至善神羚【羊年绝版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][2]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][3] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][3]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][3]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][3]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][3]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][3]["RewardItem"][1]["Id"] = 200517 -- 【库】辉耀星辰之蝎【荣耀版】[属性:0], 【表格】辉耀星辰之蝎【荣耀版】
	tClothingPromotionForAnima_RewardCoat[3322052][2][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑辉耀星辰之蝎【荣耀版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][3]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][4] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][4]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][4]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][4]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][4]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][4]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][4]["RewardItem"][1]["Id"] = 200531 -- 【库】暗黑赤炎魔龙【炼狱版】[属性:0], 【表格】暗黑赤炎魔龙【炼狱版】
	tClothingPromotionForAnima_RewardCoat[3322052][2][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑暗黑赤炎魔龙【炼狱版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][4]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][5] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][5]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][5]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][5]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][5]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][5]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][5]["RewardItem"][1]["Id"] = 200540 -- 【库】七节尾蛮荒兽【奔雷版】[属性:0], 【表格】七节尾蛮荒兽【奔雷版】
	tClothingPromotionForAnima_RewardCoat[3322052][2][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑七节尾蛮荒兽【奔雷版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][5]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][6] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][6]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][6]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][6]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][6]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][6]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][6]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][6]["RewardItem"][1]["Id"] = 200544 -- 【库】喵呜将军【璀璨版】[属性:0], 【表格】喵呜将军【璀璨版】
	tClothingPromotionForAnima_RewardCoat[3322052][2][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑喵呜将军【璀璨版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][6]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][7] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][7]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][7]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][7]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][7]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][7]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][7]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][7]["RewardItem"][1]["Id"] = 200559 -- 【库】猴王天天[属性:0], 【表格】猴王天天
	tClothingPromotionForAnima_RewardCoat[3322052][2][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑猴王天天*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][7]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][8] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][8]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][8]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][8]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][8]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][8]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][8]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][8]["RewardItem"][1]["Id"] = 200560 -- 【库】猴王西西[属性:0], 【表格】猴王西西
	tClothingPromotionForAnima_RewardCoat[3322052][2][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑猴王西西*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][8]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][8]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][9] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][9]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][9]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][9]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][9]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][9]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][9]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][9]["RewardItem"][1]["Id"] = 200581 -- 【库】焚天圣兽[属性:8], 【表格】焚天圣兽
	tClothingPromotionForAnima_RewardCoat[3322052][2][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑焚天圣兽*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][9]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][9]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][10] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][10]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][10]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][10]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][10]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][10]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][10]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][10]["RewardItem"][1]["Id"] = 200580 -- 【库】玄冰圣兽[属性:8], 【表格】玄冰圣兽
	tClothingPromotionForAnima_RewardCoat[3322052][2][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑玄冰圣兽*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][10]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][10]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][11] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][11]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][11]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][11]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][11]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][11]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][11]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][11]["RewardItem"][1]["Id"] = 200564 -- 【库】超级羊驼维克多[属性:0], 【表格】超级羊驼维克多
	tClothingPromotionForAnima_RewardCoat[3322052][2][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑超级羊驼维克多*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][11]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][11]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][12] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][12]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][12]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][12]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][12]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][12]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][12]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][12]["RewardItem"][1]["Id"] = 200572 -- 【库】净世白莲[属性:0], 【表格】净世白莲
	tClothingPromotionForAnima_RewardCoat[3322052][2][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑净世白莲*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][12]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][12]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][13] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][13]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][13]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][13]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][13]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][13]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][13]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][13]["RewardItem"][1]["Id"] = 200573 -- 【库】璀璨金莲[属性:0], 【表格】璀璨金莲
	tClothingPromotionForAnima_RewardCoat[3322052][2][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑璀璨金莲*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][13]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][13]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][14] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][14]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][14]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][14]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][14]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][14]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][14]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][14]["RewardItem"][1]["Id"] = 200596 -- 【库】昊天玄狐【魅幻版】[属性:0], 【表格】昊天玄狐【魅幻版】
	tClothingPromotionForAnima_RewardCoat[3322052][2][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑昊天玄狐【魅幻版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][14]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][14]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][15] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][15]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][15]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][15]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][15]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][15]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][15]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][15]["RewardItem"][1]["Id"] = 200592 -- 【库】星际战鸡·终极挑战号[属性:8], 【表格】星际战鸡·终极挑战号
	tClothingPromotionForAnima_RewardCoat[3322052][2][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑星际战鸡·终极挑战号*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][15]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][15]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][16] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][16]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][16]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][16]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][16]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][16]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][16]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][16]["RewardItem"][1]["Id"] = 200621 -- 【库】萨摩王子【炫彩版】[属性:0], 【表格】萨摩王子【炫彩版】
	tClothingPromotionForAnima_RewardCoat[3322052][2][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑萨摩王子【炫彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][16]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][16]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][17] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][17]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][17]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][17]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][17]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][17]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][17]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][17]["RewardItem"][1]["Id"] = 200622 -- 【库】二哈将军【炫彩版】[属性:0], 【表格】二哈将军【炫彩版】
	tClothingPromotionForAnima_RewardCoat[3322052][2][17]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑二哈将军【炫彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][17]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][17]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][18] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][18]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][18]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][18]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][18]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][18]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][18]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][18]["RewardItem"][1]["Id"] = 200623 -- 【库】金毛大帅【炫彩版】[属性:0], 【表格】金毛大帅【炫彩版】
	tClothingPromotionForAnima_RewardCoat[3322052][2][18]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑金毛大帅【炫彩版】*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][18]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][18]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][19] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][19]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][19]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][19]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][19]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][19]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][19]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][19]["RewardItem"][1]["Id"] = 200624 -- 【库】逗哥王[属性:0], 【表格】逗哥王
	tClothingPromotionForAnima_RewardCoat[3322052][2][19]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑逗哥王*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][19]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][19]["RewardEffect"]["Effect"] = "angelwing"
	tClothingPromotionForAnima_RewardCoat[3322052][2][20] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][20]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322052][2][20]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][20]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][20]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322052][2][20]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][20]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][20]["RewardItem"][1]["Id"] = 200626 -- 【库】大鱼海棠·凌波[属性:0], 【表格】大鱼海棠·凌波
	tClothingPromotionForAnima_RewardCoat[3322052][2][20]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑大鱼海棠·凌波*1
	tClothingPromotionForAnima_RewardCoat[3322052][2][20]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322052][2][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322052][2][20]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===高级制衣册残页
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322049]
	-- ===删除: 3322049,20
	-- ===LogStep: 4[1]
	tClothingPromotionForAnima_RewardCoat[3322049] = {}
	tClothingPromotionForAnima_RewardCoat[3322049]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322049]["LogStep"] = "4[1]"
	tClothingPromotionForAnima_RewardCoat[3322049]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322049]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322049]["DeleteItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322049]["DeleteItem"][1]["ItemNum"] = 20
	tClothingPromotionForAnima_RewardCoat[3322049]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322049]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322049]["RewardItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9], 【表格】高级制衣册
	tClothingPromotionForAnima_RewardCoat[3322049]["RewardItem"][1]["Attr"] = "0 1" -- 高级制衣册*1
	tClothingPromotionForAnima_RewardCoat[3322049]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322049]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322049]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardCoat[3322051] = {}
	-- ===特级制衣册残页
	-- ===索引: tClothingPromotionForAnima_RewardCoat[3322051]
	-- ===删除: 3322051,20
	-- ===LogStep: 4[2]
	tClothingPromotionForAnima_RewardCoat[3322051]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[3322051]["LogStep"] = "4[2]"
	tClothingPromotionForAnima_RewardCoat[3322051]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322051]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322051]["DeleteItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9]
	tClothingPromotionForAnima_RewardCoat[3322051]["DeleteItem"][1]["ItemNum"] = 20
	tClothingPromotionForAnima_RewardCoat[3322051]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardCoat[3322051]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardCoat[3322051]["RewardItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9], 【表格】特级制衣册
	tClothingPromotionForAnima_RewardCoat[3322051]["RewardItem"][1]["Attr"] = "0 1" -- 特级制衣册*1
	tClothingPromotionForAnima_RewardCoat[3322051]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[3322051]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[3322051]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardCoat[24324] = {}
	-- ===地阙阁直接领取
	-- ===索引: tClothingPromotionForAnima_RewardCoat[24324]
	-- ===LogStep: 4[3]
	tClothingPromotionForAnima_RewardCoat[24324]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[24324]["LogStep"] = "4[3]"
	tClothingPromotionForAnima_RewardCoat[24324]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RewardCoat[24324]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RewardCoat[24324]["RewardItem"][1]["Id"] = 
	-- tClothingPromotionForAnima_RewardCoat[24324]["RewardItem"][1]["Attr"] = 
	tClothingPromotionForAnima_RewardCoat[24324]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[24324]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[24324]["RewardEffect"]["Effect"] = "angelwing"

	
	tClothingPromotionForAnima_RewardCoat[24325] = {}
	-- ===天玄阁直接领取
	-- ===索引: tClothingPromotionForAnima_RewardCoat[24325]
	-- ===LogStep: 4[4]
	tClothingPromotionForAnima_RewardCoat[24325]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardCoat[24325]["LogStep"] = "4[4]"
	tClothingPromotionForAnima_RewardCoat[24325]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RewardCoat[24325]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RewardCoat[24325]["RewardItem"][1]["Id"] = 
	-- tClothingPromotionForAnima_RewardCoat[24325]["RewardItem"][1]["Attr"] = 
	tClothingPromotionForAnima_RewardCoat[24325]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardCoat[24325]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardCoat[24325]["RewardEffect"]["Effect"] = "angelwing"

	
	
-- 灵珠奖励

local tClothingPromotionForAnima_RewardSoul = {}
	-- ===30天时效4星外套包
	-- ===索引: tClothingPromotionForAnima_RewardSoul[3322043]
	-- ===删除: 3322043,1
	-- ===LogStep: 3[2]
	tClothingPromotionForAnima_RewardSoul[3322043] = {}
	tClothingPromotionForAnima_RewardSoul[3322043]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardSoul[3322043]["LogStep"] = "3[2]"
	tClothingPromotionForAnima_RewardSoul[3322043]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322043]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322043]["DeleteItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardSoul[3322043]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322043]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322043]["RewardItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠
	tClothingPromotionForAnima_RewardSoul[3322043]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	tClothingPromotionForAnima_RewardSoul[3322043]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tClothingPromotionForAnima_RewardSoul[3322043]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardSoul[3322043]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardSoul[3322043]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardSoul[3322044] = {}
	-- ===30天时效5星外套包
	-- ===索引: tClothingPromotionForAnima_RewardSoul[3322044]
	-- ===删除: 3322044,1
	-- ===LogStep: 3[3]
	tClothingPromotionForAnima_RewardSoul[3322044]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardSoul[3322044]["LogStep"] = "3[3]"
	tClothingPromotionForAnima_RewardSoul[3322044]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322044]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322044]["DeleteItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardSoul[3322044]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322044]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322044]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tClothingPromotionForAnima_RewardSoul[3322044]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tClothingPromotionForAnima_RewardSoul[3322044]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tClothingPromotionForAnima_RewardSoul[3322044]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardSoul[3322044]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardSoul[3322044]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardSoul[3322045] = {}
	-- ===180天时效4星外套包
	-- ===索引: tClothingPromotionForAnima_RewardSoul[322045]
	-- ===删除: 3322045,1
	-- ===LogStep: 3[4]
	tClothingPromotionForAnima_RewardSoul[3322045]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardSoul[3322045]["LogStep"] = "3[4]"
	tClothingPromotionForAnima_RewardSoul[3322045]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322045]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322045]["DeleteItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9]
	tClothingPromotionForAnima_RewardSoul[3322045]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322045]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322045]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72], 【表格】8阶灵珠
	tClothingPromotionForAnima_RewardSoul[3322045]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tClothingPromotionForAnima_RewardSoul[3322045]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tClothingPromotionForAnima_RewardSoul[3322045]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardSoul[3322045]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardSoul[3322045]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardSoul[3322046] = {}
	-- ===180天时效5星外套包
	-- ===索引: tClothingPromotionForAnima_RewardSoul[3322046]
	-- ===删除: 3322046,1
	-- ===LogStep: 3[5]
	tClothingPromotionForAnima_RewardSoul[3322046]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardSoul[3322046]["LogStep"] = "3[5]"
	tClothingPromotionForAnima_RewardSoul[3322046]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322046]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322046]["DeleteItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9]
	tClothingPromotionForAnima_RewardSoul[3322046]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322046]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322046]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72], 【表格】10阶灵珠
	tClothingPromotionForAnima_RewardSoul[3322046]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tClothingPromotionForAnima_RewardSoul[3322046]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tClothingPromotionForAnima_RewardSoul[3322046]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardSoul[3322046]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardSoul[3322046]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardSoul[3322049] = {}
	-- ===高级制衣册残页
	-- ===索引: tClothingPromotionForAnima_RewardSoul[3322049]
	-- ===删除: 3322049,1
	-- ===LogStep: 3[6]
	tClothingPromotionForAnima_RewardSoul[3322049]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardSoul[3322049]["LogStep"] = "3[6]"
	tClothingPromotionForAnima_RewardSoul[3322049]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322049]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322049]["DeleteItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9]
	tClothingPromotionForAnima_RewardSoul[3322049]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322049]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322049]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72], 【表格】8阶灵珠
	tClothingPromotionForAnima_RewardSoul[3322049]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tClothingPromotionForAnima_RewardSoul[3322049]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tClothingPromotionForAnima_RewardSoul[3322049]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardSoul[3322049]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardSoul[3322049]["RewardEffect"]["Effect"] = "angelwing"


	-- tClothingPromotionForAnima_RewardSoul[3322049][2] = {}
	-- -- ===高级制衣册残页
	-- -- ===索引: tClothingPromotionForAnima_RewardSoul[3322049][2]
	-- -- ===删除: 3322049,20
	-- -- ===LogStep: 3[7]
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["LogId"] = 12001463
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["LogStep"] = "3[7]"
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["DeleteItem"] = {}
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["DeleteItem"][1] = {}
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["DeleteItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9]
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["DeleteItem"][1]["ItemNum"] = 20
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["RewardItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9], 【表格】高级制衣册
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["RewardItem"][1]["Attr"] = "0 1" -- 高级制衣册*1
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["RewardEffect"] = {}
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tClothingPromotionForAnima_RewardSoul[3322049][2]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardSoul[3322050] = {}
	-- ===高级制衣册
	-- ===索引: tClothingPromotionForAnima_RewardSoul[3322050]
	-- ===删除: 3322050,1
	-- ===LogStep: 3[8]
	tClothingPromotionForAnima_RewardSoul[3322050]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardSoul[3322050]["LogStep"] = "3[8]"
	tClothingPromotionForAnima_RewardSoul[3322050]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322050]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322050]["DeleteItem"][1]["Id"] = 3322050 -- 【库】高级制衣册[属性:9]
	tClothingPromotionForAnima_RewardSoul[3322050]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322050]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322050]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72], 【表格】8阶灵珠
	tClothingPromotionForAnima_RewardSoul[3322050]["RewardItem"][1]["Attr"] = "0 20" -- 8阶灵珠*20
	tClothingPromotionForAnima_RewardSoul[3322050]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tClothingPromotionForAnima_RewardSoul[3322050]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardSoul[3322050]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardSoul[3322050]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardSoul[3322051] = {}
	-- ===特级制衣册残页
	-- ===索引: tClothingPromotionForAnima_RewardSoul[3322051]
	-- ===删除: 3322051,1
	-- ===LogStep: 3[9]
	tClothingPromotionForAnima_RewardSoul[3322051]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardSoul[3322051]["LogStep"] = "3[9]"
	tClothingPromotionForAnima_RewardSoul[3322051]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322051]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322051]["DeleteItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9]
	tClothingPromotionForAnima_RewardSoul[3322051]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322051]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322051]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72], 【表格】11阶灵珠
	tClothingPromotionForAnima_RewardSoul[3322051]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	tClothingPromotionForAnima_RewardSoul[3322051]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tClothingPromotionForAnima_RewardSoul[3322051]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardSoul[3322051]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardSoul[3322051]["RewardEffect"]["Effect"] = "angelwing"


	-- tClothingPromotionForAnima_RewardSoul[3322051][2] = {}
	-- -- ===特级制衣册残页
	-- -- ===索引: tClothingPromotionForAnima_RewardSoul[3322051][2]
	-- -- ===删除: 3322051,20
	-- -- ===LogStep: 3[10]
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["LogId"] = 12001463
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["LogStep"] = "3[10]"
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["DeleteItem"] = {}
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["DeleteItem"][1] = {}
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["DeleteItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9]
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["DeleteItem"][1]["ItemNum"] = 20
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["RewardItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9], 【表格】特级制衣册
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["RewardItem"][1]["Attr"] = "0 1" -- 特级制衣册*1
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["RewardEffect"] = {}
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tClothingPromotionForAnima_RewardSoul[3322051][2]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RewardSoul[3322052] = {}
	-- ===特级制衣册
	-- ===索引: tClothingPromotionForAnima_RewardSoul[3322052]
	-- ===删除: 3322052,1
	-- ===LogStep: 3[11]
	tClothingPromotionForAnima_RewardSoul[3322052]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardSoul[3322052]["LogStep"] = "3[11]"
	tClothingPromotionForAnima_RewardSoul[3322052]["DeleteItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322052]["DeleteItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322052]["DeleteItem"][1]["Id"] = 3322052 -- 【库】特级制衣册[属性:9]
	tClothingPromotionForAnima_RewardSoul[3322052]["RewardItem"] = {}
	tClothingPromotionForAnima_RewardSoul[3322052]["RewardItem"][1] = {}
	tClothingPromotionForAnima_RewardSoul[3322052]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72], 【表格】11阶灵珠
	tClothingPromotionForAnima_RewardSoul[3322052]["RewardItem"][1]["Attr"] = "0 20" -- 11阶灵珠*20
	tClothingPromotionForAnima_RewardSoul[3322052]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tClothingPromotionForAnima_RewardSoul[3322052]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardSoul[3322052]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardSoul[3322052]["RewardEffect"]["Effect"] = "angelwing"

	-- 拆解 地阙阁
	tClothingPromotionForAnima_RewardSoul[24324] = {}
	tClothingPromotionForAnima_RewardSoul[24324]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardSoul[24324]["LogStep"] = "3[1][1]"
	tClothingPromotionForAnima_RewardSoul[24324]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RewardSoul[24324]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tClothingPromotionForAnima_RewardSoul[24324]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardSoul[24324]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardSoul[24324]["RewardEffect"]["Effect"] = "angelwing"
	-- 拆解 天玄阁
	tClothingPromotionForAnima_RewardSoul[24325] = {}
	tClothingPromotionForAnima_RewardSoul[24325]["LogId"] = 12001463
	tClothingPromotionForAnima_RewardSoul[24325]["LogStep"] = "3[1][2]"
	tClothingPromotionForAnima_RewardSoul[24325]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RewardSoul[24325]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tClothingPromotionForAnima_RewardSoul[24325]["RewardEffect"] = {}
	tClothingPromotionForAnima_RewardSoul[24325]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RewardSoul[24325]["RewardEffect"]["Effect"] = "angelwing"


local tClothingPromotionForAnima_BuyItem = {}
	-- ===购买1个灵珠玉地
	-- ===索引: tClothingPromotionForAnima_BuyItem[26545][1][1]
	-- ===LogStep:6[1][1]
	tClothingPromotionForAnima_BuyItem[26545] = {}
	tClothingPromotionForAnima_BuyItem[26545][1] = {}
	tClothingPromotionForAnima_BuyItem[26545][1][1] = {}
	tClothingPromotionForAnima_BuyItem[26545][1][1]["LogId"] = 12001463
	tClothingPromotionForAnima_BuyItem[26545][1][1]["LogStep"] = "6[1][1]"
	tClothingPromotionForAnima_BuyItem[26545][1][1]["RewardItem"] = {}
	tClothingPromotionForAnima_BuyItem[26545][1][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_BuyItem[26545][1][1]["RewardItem"][1]["Id"] = 3322047 -- 灵珠玉·地[3322047][属性:9][叠加:10000][金币:0], 【表格】灵珠玉·地
	tClothingPromotionForAnima_BuyItem[26545][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 灵珠玉·地*1
	tClothingPromotionForAnima_BuyItem[26545][1][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_BuyItem[26545][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_BuyItem[26545][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_BuyItem[26545][1][2] = {}
	-- ===购买5个灵珠玉地
	-- ===索引: tClothingPromotionForAnima_BuyItem[26545][1][2]
	-- ===LogStep:6[1][2]
	tClothingPromotionForAnima_BuyItem[26545][1][2]["LogId"] = 12001463
	tClothingPromotionForAnima_BuyItem[26545][1][2]["LogStep"] = "6[1][2]"
	tClothingPromotionForAnima_BuyItem[26545][1][2]["RewardItem"] = {}
	tClothingPromotionForAnima_BuyItem[26545][1][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_BuyItem[26545][1][2]["RewardItem"][1]["Id"] = 3322047 -- 灵珠玉·地[3322047][属性:9][叠加:10000][金币:0], 【表格】灵珠玉·地
	tClothingPromotionForAnima_BuyItem[26545][1][2]["RewardItem"][1]["Attr"] = "0 5" -- 灵珠玉·地*5
	tClothingPromotionForAnima_BuyItem[26545][1][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_BuyItem[26545][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_BuyItem[26545][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_BuyItem[26545][1][3] = {}
	-- ===购买10个灵珠玉地
	-- ===索引: tClothingPromotionForAnima_BuyItem[26545][1][3]
	-- ===LogStep:6[1][3]
	tClothingPromotionForAnima_BuyItem[26545][1][3]["LogId"] = 12001463
	tClothingPromotionForAnima_BuyItem[26545][1][3]["LogStep"] = "6[1][3]"
	tClothingPromotionForAnima_BuyItem[26545][1][3]["RewardItem"] = {}
	tClothingPromotionForAnima_BuyItem[26545][1][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_BuyItem[26545][1][3]["RewardItem"][1]["Id"] = 3322047 -- 灵珠玉·地[3322047][属性:9][叠加:10000][金币:0], 【表格】灵珠玉·地
	tClothingPromotionForAnima_BuyItem[26545][1][3]["RewardItem"][1]["Attr"] = "0 10" -- 灵珠玉·地*10
	tClothingPromotionForAnima_BuyItem[26545][1][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_BuyItem[26545][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_BuyItem[26545][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_BuyItem[26545][2] = {}
	-- ===购买1个灵珠玉天
	-- ===索引: tClothingPromotionForAnima_BuyItem[26545][2][1]
	-- ===LogStep:6[2][1]
	tClothingPromotionForAnima_BuyItem[26545][2][1] = {}
	tClothingPromotionForAnima_BuyItem[26545][2][1]["LogId"] = 12001463
	tClothingPromotionForAnima_BuyItem[26545][2][1]["LogStep"] = "6[2][1]"
	tClothingPromotionForAnima_BuyItem[26545][2][1]["RewardItem"] = {}
	tClothingPromotionForAnima_BuyItem[26545][2][1]["RewardItem"][1] = {}
	tClothingPromotionForAnima_BuyItem[26545][2][1]["RewardItem"][1]["Id"] = 3322048 -- 灵珠玉·天[3322048][属性:9][叠加:10000][金币:0], 【表格】灵珠玉·天
	tClothingPromotionForAnima_BuyItem[26545][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 灵珠玉·天*1
	tClothingPromotionForAnima_BuyItem[26545][2][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_BuyItem[26545][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_BuyItem[26545][2][1]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_BuyItem[26545][2][2] = {}
	-- ===购买5个灵珠玉天
	-- ===索引: tClothingPromotionForAnima_BuyItem[26545][2][2]
	-- ===LogStep:6[2][2]
	tClothingPromotionForAnima_BuyItem[26545][2][2]["LogId"] = 12001463
	tClothingPromotionForAnima_BuyItem[26545][2][2]["LogStep"] = "6[2][2]"
	tClothingPromotionForAnima_BuyItem[26545][2][2]["RewardItem"] = {}
	tClothingPromotionForAnima_BuyItem[26545][2][2]["RewardItem"][1] = {}
	tClothingPromotionForAnima_BuyItem[26545][2][2]["RewardItem"][1]["Id"] = 3322048 -- 灵珠玉·天[3322048][属性:9][叠加:10000][金币:0], 【表格】灵珠玉·天
	tClothingPromotionForAnima_BuyItem[26545][2][2]["RewardItem"][1]["Attr"] = "0 5" -- 灵珠玉·天*5
	tClothingPromotionForAnima_BuyItem[26545][2][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_BuyItem[26545][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_BuyItem[26545][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_BuyItem[26545][2][3] = {}
	-- ===购买10个灵珠玉天
	-- ===索引: tClothingPromotionForAnima_BuyItem[26545][2][3]
	-- ===LogStep:6[2][3]
	tClothingPromotionForAnima_BuyItem[26545][2][3]["LogId"] = 12001463
	tClothingPromotionForAnima_BuyItem[26545][2][3]["LogStep"] = "6[2][3]"
	tClothingPromotionForAnima_BuyItem[26545][2][3]["RewardItem"] = {}
	tClothingPromotionForAnima_BuyItem[26545][2][3]["RewardItem"][1] = {}
	tClothingPromotionForAnima_BuyItem[26545][2][3]["RewardItem"][1]["Id"] = 3322048 -- 灵珠玉·天[3322048][属性:9][叠加:10000][金币:0], 【表格】灵珠玉·天
	tClothingPromotionForAnima_BuyItem[26545][2][3]["RewardItem"][1]["Attr"] = "0 10" -- 灵珠玉·天*10
	tClothingPromotionForAnima_BuyItem[26545][2][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_BuyItem[26545][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_BuyItem[26545][2][3]["RewardEffect"]["Effect"] = "angelwing"




local tClothingPromotionForAnima_RandomReward = {}
	-- ===地阙阁单抽概率
	-- ===索引: tClothingPromotionForAnima_RandomReward[24324][1]
	-- ===LogStep: 1[1]
	tClothingPromotionForAnima_RandomReward[24324] = {}
	tClothingPromotionForAnima_RandomReward[24324][1] = {}
	tClothingPromotionForAnima_RandomReward[24324][1]["ItemChanceSum"] = 10000
	tClothingPromotionForAnima_RandomReward[24324][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RandomReward[24324][1]["LogStep"] = " 1[1]"
	-- 30天时效4星外套包*1 + 指定奖励序号 - 42.00%
	tClothingPromotionForAnima_RandomReward[24324][1][1] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][1]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][1][1]["ItemChance"] = 4200
	tClothingPromotionForAnima_RandomReward[24324][1][1]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][1]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][1]["RewardItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9], 【表格】30天时效4星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24324][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 30天时效4星外套包*1
	tClothingPromotionForAnima_RandomReward[24324][1][1]["Index"] = 1
	tClothingPromotionForAnima_RandomReward[24324][1][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 30天时效5星外套包*1 + 指定奖励序号 - 9.00%
	tClothingPromotionForAnima_RandomReward[24324][1][2] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][2]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][1][2]["ItemChance"] = 900
	tClothingPromotionForAnima_RandomReward[24324][1][2]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][2]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][2]["RewardItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9], 【表格】30天时效5星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24324][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 30天时效5星外套包*1
	tClothingPromotionForAnima_RandomReward[24324][1][2]["Index"] = 2
	tClothingPromotionForAnima_RandomReward[24324][1][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*1 + 指定奖励序号 - 9.00%
	tClothingPromotionForAnima_RandomReward[24324][1][3] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][3]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][1][3]["ItemChance"] = 900
	tClothingPromotionForAnima_RandomReward[24324][1][3]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][3]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][3]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*1
	-- tClothingPromotionForAnima_RandomReward[24324][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 高级制衣册残页*1
	tClothingPromotionForAnima_RandomReward[24324][1][3]["Index"] = 3
	tClothingPromotionForAnima_RandomReward[24324][1][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 30天时效5星外套包*3 + 指定奖励序号 - 9.00%
	tClothingPromotionForAnima_RandomReward[24324][1][4] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][4]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][1][4]["ItemChance"] = 900
	tClothingPromotionForAnima_RandomReward[24324][1][4]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][4]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][4]["RewardItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9], 【表格】30天时效5星外套包*3
	-- tClothingPromotionForAnima_RandomReward[24324][1][4]["RewardItem"][1]["Attr"] = "0 3" -- 30天时效5星外套包*3
	tClothingPromotionForAnima_RandomReward[24324][1][4]["Index"] = 4
	tClothingPromotionForAnima_RandomReward[24324][1][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*2 + 指定奖励序号 - 30.70%
	tClothingPromotionForAnima_RandomReward[24324][1][5] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][5]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][1][5]["ItemChance"] = 3070
	tClothingPromotionForAnima_RandomReward[24324][1][5]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][5]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][5]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*2
	-- tClothingPromotionForAnima_RandomReward[24324][1][5]["RewardItem"][1]["Attr"] = "0 2" -- 高级制衣册残页*2
	tClothingPromotionForAnima_RandomReward[24324][1][5]["Index"] = 5
	tClothingPromotionForAnima_RandomReward[24324][1][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*8 + 指定奖励序号 - 0.27%
	tClothingPromotionForAnima_RandomReward[24324][1][6] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][6]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][1][6]["ItemChance"] = 27
	tClothingPromotionForAnima_RandomReward[24324][1][6]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][6]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][6]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*8
	-- tClothingPromotionForAnima_RandomReward[24324][1][6]["RewardItem"][1]["Attr"] = "0 8" -- 高级制衣册残页*8
	tClothingPromotionForAnima_RandomReward[24324][1][6]["Index"] = 6
	tClothingPromotionForAnima_RandomReward[24324][1][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*32 + 指定奖励序号 - 0.03%
	tClothingPromotionForAnima_RandomReward[24324][1][7] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][7]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][1][7]["ItemChance"] = 3
	tClothingPromotionForAnima_RandomReward[24324][1][7]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][7]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][1][7]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*32
	-- tClothingPromotionForAnima_RandomReward[24324][1][7]["RewardItem"][1]["Attr"] = "0 32" -- 高级制衣册残页*32
	tClothingPromotionForAnima_RandomReward[24324][1][7]["Index"] = 7
	tClothingPromotionForAnima_RandomReward[24324][1][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][1][7]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RandomReward[24324][2] = {}
	-- ===地阙阁三连抽单次概率
	-- ===索引: tClothingPromotionForAnima_RandomReward[24324][2]
	-- ===LogStep: 1[2]
	tClothingPromotionForAnima_RandomReward[24324][2]["ItemChanceSum"] = 10000
	tClothingPromotionForAnima_RandomReward[24324][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RandomReward[24324][2]["LogStep"] = " 1[2]"
	-- 30天时效4星外套包*1 + 指定奖励序号 - 42.00%
	tClothingPromotionForAnima_RandomReward[24324][2][1] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][1]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][2][1]["ItemChance"] = 4200
	tClothingPromotionForAnima_RandomReward[24324][2][1]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][1]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][1]["RewardItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9], 【表格】30天时效4星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24324][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 30天时效4星外套包*1
	tClothingPromotionForAnima_RandomReward[24324][2][1]["Index"] = 1
	tClothingPromotionForAnima_RandomReward[24324][2][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 30天时效5星外套包*1 + 指定奖励序号 - 10.00%
	tClothingPromotionForAnima_RandomReward[24324][2][2] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][2]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][2][2]["ItemChance"] = 1000
	tClothingPromotionForAnima_RandomReward[24324][2][2]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][2]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][2]["RewardItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9], 【表格】30天时效5星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24324][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 30天时效5星外套包*1
	tClothingPromotionForAnima_RandomReward[24324][2][2]["Index"] = 2
	tClothingPromotionForAnima_RandomReward[24324][2][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*1 + 指定奖励序号 - 9.00%
	tClothingPromotionForAnima_RandomReward[24324][2][3] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][3]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][2][3]["ItemChance"] = 900
	tClothingPromotionForAnima_RandomReward[24324][2][3]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][3]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][3]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*1
	-- tClothingPromotionForAnima_RandomReward[24324][2][3]["RewardItem"][1]["Attr"] = "0 1" -- 高级制衣册残页*1
	tClothingPromotionForAnima_RandomReward[24324][2][3]["Index"] = 3
	tClothingPromotionForAnima_RandomReward[24324][2][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 30天时效5星外套包*3 + 指定奖励序号 - 9.00%
	tClothingPromotionForAnima_RandomReward[24324][2][4] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][4]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][2][4]["ItemChance"] = 900
	tClothingPromotionForAnima_RandomReward[24324][2][4]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][4]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][4]["RewardItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9], 【表格】30天时效5星外套包*3
	-- tClothingPromotionForAnima_RandomReward[24324][2][4]["RewardItem"][1]["Attr"] = "0 3" -- 30天时效5星外套包*3
	tClothingPromotionForAnima_RandomReward[24324][2][4]["Index"] = 4
	tClothingPromotionForAnima_RandomReward[24324][2][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*2 + 指定奖励序号 - 29.90%
	tClothingPromotionForAnima_RandomReward[24324][2][5] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][5]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][2][5]["ItemChance"] = 2990
	tClothingPromotionForAnima_RandomReward[24324][2][5]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][5]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][5]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*2
	-- tClothingPromotionForAnima_RandomReward[24324][2][5]["RewardItem"][1]["Attr"] = "0 2" -- 高级制衣册残页*2
	tClothingPromotionForAnima_RandomReward[24324][2][5]["Index"] = 5
	tClothingPromotionForAnima_RandomReward[24324][2][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*8 + 指定奖励序号 - 0.09%
	tClothingPromotionForAnima_RandomReward[24324][2][6] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][6]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][2][6]["ItemChance"] = 9
	tClothingPromotionForAnima_RandomReward[24324][2][6]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][6]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][6]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*8
	-- tClothingPromotionForAnima_RandomReward[24324][2][6]["RewardItem"][1]["Attr"] = "0 8" -- 高级制衣册残页*8
	tClothingPromotionForAnima_RandomReward[24324][2][6]["Index"] = 6
	tClothingPromotionForAnima_RandomReward[24324][2][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*32 + 指定奖励序号 - 0.01%
	tClothingPromotionForAnima_RandomReward[24324][2][7] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][7]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][2][7]["ItemChance"] = 1
	tClothingPromotionForAnima_RandomReward[24324][2][7]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][7]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][2][7]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*32
	-- tClothingPromotionForAnima_RandomReward[24324][2][7]["RewardItem"][1]["Attr"] = "0 32" -- 高级制衣册残页*32
	tClothingPromotionForAnima_RandomReward[24324][2][7]["Index"] = 7
	tClothingPromotionForAnima_RandomReward[24324][2][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][2][7]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RandomReward[24324][3] = {}
	-- ===地阙阁重抽概率3个4星时
	-- ===索引: tClothingPromotionForAnima_RandomReward[24324][3]
	-- ===LogStep: 1[3]
	tClothingPromotionForAnima_RandomReward[24324][3]["ItemChanceSum"] = 10000
	tClothingPromotionForAnima_RandomReward[24324][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RandomReward[24324][3]["LogStep"] = " 1[3]"
	-- 30天时效4星外套包*1 + 指定奖励序号 - 45.00%
	tClothingPromotionForAnima_RandomReward[24324][3][1] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][1]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][3][1]["ItemChance"] = 4500
	tClothingPromotionForAnima_RandomReward[24324][3][1]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][1]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][1]["RewardItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9], 【表格】30天时效4星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24324][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 30天时效4星外套包*1
	tClothingPromotionForAnima_RandomReward[24324][3][1]["Index"] = 1
	tClothingPromotionForAnima_RandomReward[24324][3][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 30天时效5星外套包*1 + 指定奖励序号 - 15.00%
	tClothingPromotionForAnima_RandomReward[24324][3][2] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][2]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][3][2]["ItemChance"] = 1500
	tClothingPromotionForAnima_RandomReward[24324][3][2]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][2]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][2]["RewardItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9], 【表格】30天时效5星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24324][3][2]["RewardItem"][1]["Attr"] = "0 1" -- 30天时效5星外套包*1
	tClothingPromotionForAnima_RandomReward[24324][3][2]["Index"] = 2
	tClothingPromotionForAnima_RandomReward[24324][3][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*1 + 指定奖励序号 - 15.00%
	tClothingPromotionForAnima_RandomReward[24324][3][3] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][3]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][3][3]["ItemChance"] = 1500
	tClothingPromotionForAnima_RandomReward[24324][3][3]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][3]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][3]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*1
	-- tClothingPromotionForAnima_RandomReward[24324][3][3]["RewardItem"][1]["Attr"] = "0 1" -- 高级制衣册残页*1
	tClothingPromotionForAnima_RandomReward[24324][3][3]["Index"] = 3
	tClothingPromotionForAnima_RandomReward[24324][3][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 30天时效5星外套包*3 + 指定奖励序号 - 15.00%
	tClothingPromotionForAnima_RandomReward[24324][3][4] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][4]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][3][4]["ItemChance"] = 1500
	tClothingPromotionForAnima_RandomReward[24324][3][4]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][4]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][4]["RewardItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9], 【表格】30天时效5星外套包*3
	-- tClothingPromotionForAnima_RandomReward[24324][3][4]["RewardItem"][1]["Attr"] = "0 3" -- 30天时效5星外套包*3
	tClothingPromotionForAnima_RandomReward[24324][3][4]["Index"] = 4
	tClothingPromotionForAnima_RandomReward[24324][3][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][3][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*2 + 指定奖励序号 - 10.00%
	tClothingPromotionForAnima_RandomReward[24324][3][5] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][5]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][3][5]["ItemChance"] = 1000
	tClothingPromotionForAnima_RandomReward[24324][3][5]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][5]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][5]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*2
	-- tClothingPromotionForAnima_RandomReward[24324][3][5]["RewardItem"][1]["Attr"] = "0 2" -- 高级制衣册残页*2
	tClothingPromotionForAnima_RandomReward[24324][3][5]["Index"] = 5
	tClothingPromotionForAnima_RandomReward[24324][3][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][3][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*8 + 指定奖励序号 - 0.00%
	tClothingPromotionForAnima_RandomReward[24324][3][6] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][6]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][3][6]["ItemChance"] = 0
	tClothingPromotionForAnima_RandomReward[24324][3][6]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][6]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][6]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*8
	-- tClothingPromotionForAnima_RandomReward[24324][3][6]["RewardItem"][1]["Attr"] = "0 8" -- 高级制衣册残页*8
	tClothingPromotionForAnima_RandomReward[24324][3][6]["Index"] = 6
	tClothingPromotionForAnima_RandomReward[24324][3][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][3][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*32 + 指定奖励序号 - 0.00%
	tClothingPromotionForAnima_RandomReward[24324][3][7] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][7]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][3][7]["ItemChance"] = 0
	tClothingPromotionForAnima_RandomReward[24324][3][7]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][7]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][3][7]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*32
	-- tClothingPromotionForAnima_RandomReward[24324][3][7]["RewardItem"][1]["Attr"] = "0 32" -- 高级制衣册残页*32
	tClothingPromotionForAnima_RandomReward[24324][3][7]["Index"] = 7
	tClothingPromotionForAnima_RandomReward[24324][3][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][3][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][3][7]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RandomReward[24324][4] = {}
	-- ===地阙阁重抽概率2个4星、1个5星时
	-- ===索引: tClothingPromotionForAnima_RandomReward[24324][4]
	-- ===LogStep: 1[4]
	tClothingPromotionForAnima_RandomReward[24324][4]["ItemChanceSum"] = 10000
	tClothingPromotionForAnima_RandomReward[24324][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RandomReward[24324][4]["LogStep"] = " 1[4]"
	-- 30天时效4星外套包*1 + 指定奖励序号 - 37.00%
	tClothingPromotionForAnima_RandomReward[24324][4][1] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][1]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][4][1]["ItemChance"] = 3700
	tClothingPromotionForAnima_RandomReward[24324][4][1]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][1]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][1]["RewardItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9], 【表格】30天时效4星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24324][4][1]["RewardItem"][1]["Attr"] = "0 1" -- 30天时效4星外套包*1
	tClothingPromotionForAnima_RandomReward[24324][4][1]["Index"] = 1
	tClothingPromotionForAnima_RandomReward[24324][4][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][4][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 30天时效5星外套包*1 + 指定奖励序号 - 11.00%
	tClothingPromotionForAnima_RandomReward[24324][4][2] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][2]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][4][2]["ItemChance"] = 1100
	tClothingPromotionForAnima_RandomReward[24324][4][2]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][2]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][2]["RewardItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9], 【表格】30天时效5星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24324][4][2]["RewardItem"][1]["Attr"] = "0 1" -- 30天时效5星外套包*1
	tClothingPromotionForAnima_RandomReward[24324][4][2]["Index"] = 2
	tClothingPromotionForAnima_RandomReward[24324][4][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][4][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*1 + 指定奖励序号 - 11.00%
	tClothingPromotionForAnima_RandomReward[24324][4][3] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][3]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][4][3]["ItemChance"] = 1100
	tClothingPromotionForAnima_RandomReward[24324][4][3]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][3]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][3]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*1
	-- tClothingPromotionForAnima_RandomReward[24324][4][3]["RewardItem"][1]["Attr"] = "0 1" -- 高级制衣册残页*1
	tClothingPromotionForAnima_RandomReward[24324][4][3]["Index"] = 3
	tClothingPromotionForAnima_RandomReward[24324][4][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][4][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 30天时效5星外套包*3 + 指定奖励序号 - 11.00%
	tClothingPromotionForAnima_RandomReward[24324][4][4] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][4]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][4][4]["ItemChance"] = 1100
	tClothingPromotionForAnima_RandomReward[24324][4][4]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][4]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][4]["RewardItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9], 【表格】30天时效5星外套包*3
	-- tClothingPromotionForAnima_RandomReward[24324][4][4]["RewardItem"][1]["Attr"] = "0 3" -- 30天时效5星外套包*3
	tClothingPromotionForAnima_RandomReward[24324][4][4]["Index"] = 4
	tClothingPromotionForAnima_RandomReward[24324][4][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][4][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*2 + 指定奖励序号 - 30.00%
	tClothingPromotionForAnima_RandomReward[24324][4][5] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][5]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][4][5]["ItemChance"] = 3000
	tClothingPromotionForAnima_RandomReward[24324][4][5]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][5]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][5]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*2
	-- tClothingPromotionForAnima_RandomReward[24324][4][5]["RewardItem"][1]["Attr"] = "0 2" -- 高级制衣册残页*2
	tClothingPromotionForAnima_RandomReward[24324][4][5]["Index"] = 5
	tClothingPromotionForAnima_RandomReward[24324][4][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][4][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*8 + 指定奖励序号 - 0.00%
	tClothingPromotionForAnima_RandomReward[24324][4][6] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][6]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][4][6]["ItemChance"] = 0
	tClothingPromotionForAnima_RandomReward[24324][4][6]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][6]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][6]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*8
	-- tClothingPromotionForAnima_RandomReward[24324][4][6]["RewardItem"][1]["Attr"] = "0 8" -- 高级制衣册残页*8
	tClothingPromotionForAnima_RandomReward[24324][4][6]["Index"] = 6
	tClothingPromotionForAnima_RandomReward[24324][4][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][4][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*32 + 指定奖励序号 - 0.00%
	tClothingPromotionForAnima_RandomReward[24324][4][7] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][7]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][4][7]["ItemChance"] = 0
	tClothingPromotionForAnima_RandomReward[24324][4][7]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][7]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][4][7]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*32
	-- tClothingPromotionForAnima_RandomReward[24324][4][7]["RewardItem"][1]["Attr"] = "0 32" -- 高级制衣册残页*32
	tClothingPromotionForAnima_RandomReward[24324][4][7]["Index"] = 7
	tClothingPromotionForAnima_RandomReward[24324][4][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][4][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][4][7]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RandomReward[24324][5] = {}
	-- ===地阙阁三连抽重抽概率其他情况
	-- ===索引: tClothingPromotionForAnima_RandomReward[24324][5]
	-- ===LogStep: 1[5]
	tClothingPromotionForAnima_RandomReward[24324][5]["ItemChanceSum"] = 10000
	tClothingPromotionForAnima_RandomReward[24324][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RandomReward[24324][5]["LogStep"] = " 1[5]"
	-- 30天时效4星外套包*1 + 指定奖励序号 - 29.00%
	tClothingPromotionForAnima_RandomReward[24324][5][1] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][1]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][5][1]["ItemChance"] = 2900
	tClothingPromotionForAnima_RandomReward[24324][5][1]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][1]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][1]["RewardItem"][1]["Id"] = 3322043 -- 【库】30天时效4星外套包[属性:9], 【表格】30天时效4星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24324][5][1]["RewardItem"][1]["Attr"] = "0 1" -- 30天时效4星外套包*1
	tClothingPromotionForAnima_RandomReward[24324][5][1]["Index"] = 1
	tClothingPromotionForAnima_RandomReward[24324][5][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][5][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 30天时效5星外套包*1 + 指定奖励序号 - 11.00%
	tClothingPromotionForAnima_RandomReward[24324][5][2] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][2]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][5][2]["ItemChance"] = 1100
	tClothingPromotionForAnima_RandomReward[24324][5][2]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][2]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][2]["RewardItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9], 【表格】30天时效5星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24324][5][2]["RewardItem"][1]["Attr"] = "0 1" -- 30天时效5星外套包*1
	tClothingPromotionForAnima_RandomReward[24324][5][2]["Index"] = 2
	tClothingPromotionForAnima_RandomReward[24324][5][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][5][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*1 + 指定奖励序号 - 11.00%
	tClothingPromotionForAnima_RandomReward[24324][5][3] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][3]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][5][3]["ItemChance"] = 1100
	tClothingPromotionForAnima_RandomReward[24324][5][3]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][3]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][3]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*1
	-- tClothingPromotionForAnima_RandomReward[24324][5][3]["RewardItem"][1]["Attr"] = "0 1" -- 高级制衣册残页*1
	tClothingPromotionForAnima_RandomReward[24324][5][3]["Index"] = 3
	tClothingPromotionForAnima_RandomReward[24324][5][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][5][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 30天时效5星外套包*3 + 指定奖励序号 - 11.00%
	tClothingPromotionForAnima_RandomReward[24324][5][4] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][4]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][5][4]["ItemChance"] = 1100
	tClothingPromotionForAnima_RandomReward[24324][5][4]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][4]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][4]["RewardItem"][1]["Id"] = 3322044 -- 【库】30天时效5星外套包[属性:9], 【表格】30天时效5星外套包*3
	-- tClothingPromotionForAnima_RandomReward[24324][5][4]["RewardItem"][1]["Attr"] = "0 3" -- 30天时效5星外套包*3
	tClothingPromotionForAnima_RandomReward[24324][5][4]["Index"] = 4
	tClothingPromotionForAnima_RandomReward[24324][5][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][5][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*2 + 指定奖励序号 - 38.00%
	tClothingPromotionForAnima_RandomReward[24324][5][5] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][5]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][5][5]["ItemChance"] = 3800
	tClothingPromotionForAnima_RandomReward[24324][5][5]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][5]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][5]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*2
	-- tClothingPromotionForAnima_RandomReward[24324][5][5]["RewardItem"][1]["Attr"] = "0 2" -- 高级制衣册残页*2
	tClothingPromotionForAnima_RandomReward[24324][5][5]["Index"] = 5
	tClothingPromotionForAnima_RandomReward[24324][5][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][5][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*8 + 指定奖励序号 - 0.00%
	tClothingPromotionForAnima_RandomReward[24324][5][6] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][6]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][5][6]["ItemChance"] = 0
	tClothingPromotionForAnima_RandomReward[24324][5][6]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][6]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][6]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*8
	-- tClothingPromotionForAnima_RandomReward[24324][5][6]["RewardItem"][1]["Attr"] = "0 8" -- 高级制衣册残页*8
	tClothingPromotionForAnima_RandomReward[24324][5][6]["Index"] = 6
	tClothingPromotionForAnima_RandomReward[24324][5][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][5][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 高级制衣册碎片*32 + 指定奖励序号 - 0.00%
	tClothingPromotionForAnima_RandomReward[24324][5][7] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][7]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24324][5][7]["ItemChance"] = 0
	tClothingPromotionForAnima_RandomReward[24324][5][7]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][7]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24324][5][7]["RewardItem"][1]["Id"] = 3322049 -- 【库】高级制衣册残页[属性:9], 【表格】高级制衣册碎片*32
	-- tClothingPromotionForAnima_RandomReward[24324][5][7]["RewardItem"][1]["Attr"] = "0 32" -- 高级制衣册残页*32
	tClothingPromotionForAnima_RandomReward[24324][5][7]["Index"] = 7
	tClothingPromotionForAnima_RandomReward[24324][5][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24324][5][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24324][5][7]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RandomReward[24325] = {}
	-- ===天玄阁单抽概率
	-- ===索引: tClothingPromotionForAnima_RandomReward[24325][1]
	-- ===LogStep: 2[1]
	tClothingPromotionForAnima_RandomReward[24325][1] = {}
	tClothingPromotionForAnima_RandomReward[24325][1]["ItemChanceSum"] = 10000
	tClothingPromotionForAnima_RandomReward[24325][1]["LogId"] = 12001463
	tClothingPromotionForAnima_RandomReward[24325][1]["LogStep"] = " 2[1]"
	-- 180天时效4星外套包*1 + 指定奖励序号 - 42.00%
	tClothingPromotionForAnima_RandomReward[24325][1][1] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][1]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][1][1]["ItemChance"] = 4200
	tClothingPromotionForAnima_RandomReward[24325][1][1]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][1]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][1]["RewardItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9], 【表格】180天时效4星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24325][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 180天时效4星外套包*1
	tClothingPromotionForAnima_RandomReward[24325][1][1]["Index"] = 1
	tClothingPromotionForAnima_RandomReward[24325][1][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 180天时效5星外套包*1 + 指定奖励序号 - 9.00%
	tClothingPromotionForAnima_RandomReward[24325][1][2] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][2]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][1][2]["ItemChance"] = 900
	tClothingPromotionForAnima_RandomReward[24325][1][2]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][2]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][2]["RewardItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9], 【表格】180天时效5星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24325][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 180天时效5星外套包*1
	tClothingPromotionForAnima_RandomReward[24325][1][2]["Index"] = 2
	tClothingPromotionForAnima_RandomReward[24325][1][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*1 + 指定奖励序号 - 9.00%
	tClothingPromotionForAnima_RandomReward[24325][1][3] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][3]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][1][3]["ItemChance"] = 900
	tClothingPromotionForAnima_RandomReward[24325][1][3]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][3]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][3]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*1
	-- tClothingPromotionForAnima_RandomReward[24325][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 特级制衣册残页*1
	tClothingPromotionForAnima_RandomReward[24325][1][3]["Index"] = 3
	tClothingPromotionForAnima_RandomReward[24325][1][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 180天时效5星外套包*3 + 指定奖励序号 - 9.00%
	tClothingPromotionForAnima_RandomReward[24325][1][4] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][4]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][1][4]["ItemChance"] = 900
	tClothingPromotionForAnima_RandomReward[24325][1][4]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][4]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][4]["RewardItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9], 【表格】180天时效5星外套包*3
	-- tClothingPromotionForAnima_RandomReward[24325][1][4]["RewardItem"][1]["Attr"] = "0 3" -- 180天时效5星外套包*3
	tClothingPromotionForAnima_RandomReward[24325][1][4]["Index"] = 4
	tClothingPromotionForAnima_RandomReward[24325][1][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*2 + 指定奖励序号 - 30.70%
	tClothingPromotionForAnima_RandomReward[24325][1][5] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][5]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][1][5]["ItemChance"] = 3070
	tClothingPromotionForAnima_RandomReward[24325][1][5]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][5]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][5]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*2
	-- tClothingPromotionForAnima_RandomReward[24325][1][5]["RewardItem"][1]["Attr"] = "0 2" -- 特级制衣册残页*2
	tClothingPromotionForAnima_RandomReward[24325][1][5]["Index"] = 5
	tClothingPromotionForAnima_RandomReward[24325][1][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*8 + 指定奖励序号 - 0.27%
	tClothingPromotionForAnima_RandomReward[24325][1][6] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][6]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][1][6]["ItemChance"] = 27
	tClothingPromotionForAnima_RandomReward[24325][1][6]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][6]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][6]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*8
	-- tClothingPromotionForAnima_RandomReward[24325][1][6]["RewardItem"][1]["Attr"] = "0 8" -- 特级制衣册残页*8
	tClothingPromotionForAnima_RandomReward[24325][1][6]["Index"] = 6
	tClothingPromotionForAnima_RandomReward[24325][1][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*32 + 指定奖励序号 - 0.03%
	tClothingPromotionForAnima_RandomReward[24325][1][7] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][7]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][1][7]["ItemChance"] = 3
	tClothingPromotionForAnima_RandomReward[24325][1][7]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][7]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][1][7]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*32
	-- tClothingPromotionForAnima_RandomReward[24325][1][7]["RewardItem"][1]["Attr"] = "0 32" -- 特级制衣册残页*32
	tClothingPromotionForAnima_RandomReward[24325][1][7]["Index"] = 7
	tClothingPromotionForAnima_RandomReward[24325][1][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][1][7]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RandomReward[24325][2] = {}
	-- ===天玄阁三连抽单次概率
	-- ===索引: tClothingPromotionForAnima_RandomReward[24325][2]
	-- ===LogStep: 2[2]
	tClothingPromotionForAnima_RandomReward[24325][2]["ItemChanceSum"] = 10000
	tClothingPromotionForAnima_RandomReward[24325][2]["LogId"] = 12001463
	tClothingPromotionForAnima_RandomReward[24325][2]["LogStep"] = " 2[2]"
	-- 180天时效4星外套包*1 + 指定奖励序号 - 42.00%
	tClothingPromotionForAnima_RandomReward[24325][2][1] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][1]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][2][1]["ItemChance"] = 4200
	tClothingPromotionForAnima_RandomReward[24325][2][1]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][1]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][1]["RewardItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9], 【表格】180天时效4星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24325][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 180天时效4星外套包*1
	tClothingPromotionForAnima_RandomReward[24325][2][1]["Index"] = 1
	tClothingPromotionForAnima_RandomReward[24325][2][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 180天时效5星外套包*1 + 指定奖励序号 - 10.00%
	tClothingPromotionForAnima_RandomReward[24325][2][2] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][2]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][2][2]["ItemChance"] = 1000
	tClothingPromotionForAnima_RandomReward[24325][2][2]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][2]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][2]["RewardItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9], 【表格】180天时效5星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24325][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 180天时效5星外套包*1
	tClothingPromotionForAnima_RandomReward[24325][2][2]["Index"] = 2
	tClothingPromotionForAnima_RandomReward[24325][2][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*1 + 指定奖励序号 - 9.00%
	tClothingPromotionForAnima_RandomReward[24325][2][3] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][3]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][2][3]["ItemChance"] = 900
	tClothingPromotionForAnima_RandomReward[24325][2][3]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][3]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][3]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*1
	-- tClothingPromotionForAnima_RandomReward[24325][2][3]["RewardItem"][1]["Attr"] = "0 1" -- 特级制衣册残页*1
	tClothingPromotionForAnima_RandomReward[24325][2][3]["Index"] = 3
	tClothingPromotionForAnima_RandomReward[24325][2][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 180天时效5星外套包*3 + 指定奖励序号 - 9.00%
	tClothingPromotionForAnima_RandomReward[24325][2][4] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][4]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][2][4]["ItemChance"] = 900
	tClothingPromotionForAnima_RandomReward[24325][2][4]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][4]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][4]["RewardItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9], 【表格】180天时效5星外套包*3
	-- tClothingPromotionForAnima_RandomReward[24325][2][4]["RewardItem"][1]["Attr"] = "0 3" -- 180天时效5星外套包*3
	tClothingPromotionForAnima_RandomReward[24325][2][4]["Index"] = 4
	tClothingPromotionForAnima_RandomReward[24325][2][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*2 + 指定奖励序号 - 29.90%
	tClothingPromotionForAnima_RandomReward[24325][2][5] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][5]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][2][5]["ItemChance"] = 2990
	tClothingPromotionForAnima_RandomReward[24325][2][5]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][5]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][5]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*2
	-- tClothingPromotionForAnima_RandomReward[24325][2][5]["RewardItem"][1]["Attr"] = "0 2" -- 特级制衣册残页*2
	tClothingPromotionForAnima_RandomReward[24325][2][5]["Index"] = 5
	tClothingPromotionForAnima_RandomReward[24325][2][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*8 + 指定奖励序号 - 0.09%
	tClothingPromotionForAnima_RandomReward[24325][2][6] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][6]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][2][6]["ItemChance"] = 9
	tClothingPromotionForAnima_RandomReward[24325][2][6]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][6]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][6]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*8
	-- tClothingPromotionForAnima_RandomReward[24325][2][6]["RewardItem"][1]["Attr"] = "0 8" -- 特级制衣册残页*8
	tClothingPromotionForAnima_RandomReward[24325][2][6]["Index"] = 6
	tClothingPromotionForAnima_RandomReward[24325][2][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*32 + 指定奖励序号 - 0.01%
	tClothingPromotionForAnima_RandomReward[24325][2][7] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][7]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][2][7]["ItemChance"] = 1
	tClothingPromotionForAnima_RandomReward[24325][2][7]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][7]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][2][7]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*32
	-- tClothingPromotionForAnima_RandomReward[24325][2][7]["RewardItem"][1]["Attr"] = "0 32" -- 特级制衣册残页*32
	tClothingPromotionForAnima_RandomReward[24325][2][7]["Index"] = 7
	tClothingPromotionForAnima_RandomReward[24325][2][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][2][7]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RandomReward[24325][3] = {}
	-- ===天玄阁重抽概率3个4星时
	-- ===索引: tClothingPromotionForAnima_RandomReward[24325][3]
	-- ===LogStep: 2[3]
	tClothingPromotionForAnima_RandomReward[24325][3]["ItemChanceSum"] = 10000
	tClothingPromotionForAnima_RandomReward[24325][3]["LogId"] = 12001463
	tClothingPromotionForAnima_RandomReward[24325][3]["LogStep"] = " 2[3]"
	-- 180天时效4星外套包*1 + 指定奖励序号 - 45.00%
	tClothingPromotionForAnima_RandomReward[24325][3][1] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][1]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][3][1]["ItemChance"] = 4500
	tClothingPromotionForAnima_RandomReward[24325][3][1]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][1]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][1]["RewardItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9], 【表格】180天时效4星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24325][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 180天时效4星外套包*1
	tClothingPromotionForAnima_RandomReward[24325][3][1]["Index"] = 1
	tClothingPromotionForAnima_RandomReward[24325][3][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 180天时效5星外套包*1 + 指定奖励序号 - 15.00%
	tClothingPromotionForAnima_RandomReward[24325][3][2] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][2]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][3][2]["ItemChance"] = 1500
	tClothingPromotionForAnima_RandomReward[24325][3][2]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][2]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][2]["RewardItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9], 【表格】180天时效5星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24325][3][2]["RewardItem"][1]["Attr"] = "0 1" -- 180天时效5星外套包*1
	tClothingPromotionForAnima_RandomReward[24325][3][2]["Index"] = 2
	tClothingPromotionForAnima_RandomReward[24325][3][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*1 + 指定奖励序号 - 15.00%
	tClothingPromotionForAnima_RandomReward[24325][3][3] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][3]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][3][3]["ItemChance"] = 1500
	tClothingPromotionForAnima_RandomReward[24325][3][3]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][3]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][3]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*1
	-- tClothingPromotionForAnima_RandomReward[24325][3][3]["RewardItem"][1]["Attr"] = "0 1" -- 特级制衣册残页*1
	tClothingPromotionForAnima_RandomReward[24325][3][3]["Index"] = 3
	tClothingPromotionForAnima_RandomReward[24325][3][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 180天时效5星外套包*3 + 指定奖励序号 - 15.00%
	tClothingPromotionForAnima_RandomReward[24325][3][4] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][4]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][3][4]["ItemChance"] = 1500
	tClothingPromotionForAnima_RandomReward[24325][3][4]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][4]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][4]["RewardItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9], 【表格】180天时效5星外套包*3
	-- tClothingPromotionForAnima_RandomReward[24325][3][4]["RewardItem"][1]["Attr"] = "0 3" -- 180天时效5星外套包*3
	tClothingPromotionForAnima_RandomReward[24325][3][4]["Index"] = 4
	tClothingPromotionForAnima_RandomReward[24325][3][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][3][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*2 + 指定奖励序号 - 10.00%
	tClothingPromotionForAnima_RandomReward[24325][3][5] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][5]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][3][5]["ItemChance"] = 1000
	tClothingPromotionForAnima_RandomReward[24325][3][5]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][5]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][5]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*2
	-- tClothingPromotionForAnima_RandomReward[24325][3][5]["RewardItem"][1]["Attr"] = "0 2" -- 特级制衣册残页*2
	tClothingPromotionForAnima_RandomReward[24325][3][5]["Index"] = 5
	tClothingPromotionForAnima_RandomReward[24325][3][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][3][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*8 + 指定奖励序号 - 0.00%
	tClothingPromotionForAnima_RandomReward[24325][3][6] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][6]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][3][6]["ItemChance"] = 0
	tClothingPromotionForAnima_RandomReward[24325][3][6]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][6]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][6]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*8
	-- tClothingPromotionForAnima_RandomReward[24325][3][6]["RewardItem"][1]["Attr"] = "0 8" -- 特级制衣册残页*8
	tClothingPromotionForAnima_RandomReward[24325][3][6]["Index"] = 6
	tClothingPromotionForAnima_RandomReward[24325][3][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][3][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*32 + 指定奖励序号 - 0.00%
	tClothingPromotionForAnima_RandomReward[24325][3][7] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][7]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][3][7]["ItemChance"] = 0
	tClothingPromotionForAnima_RandomReward[24325][3][7]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][7]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][3][7]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*32
	-- tClothingPromotionForAnima_RandomReward[24325][3][7]["RewardItem"][1]["Attr"] = "0 32" -- 特级制衣册残页*32
	tClothingPromotionForAnima_RandomReward[24325][3][7]["Index"] = 7
	tClothingPromotionForAnima_RandomReward[24325][3][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][3][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][3][7]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RandomReward[24325][4] = {}
	-- ===天玄阁重抽概率2个4星、1个5星时
	-- ===索引: tClothingPromotionForAnima_RandomReward[24325][4]
	-- ===LogStep: 2[4]
	tClothingPromotionForAnima_RandomReward[24325][4]["ItemChanceSum"] = 10000
	tClothingPromotionForAnima_RandomReward[24325][4]["LogId"] = 12001463
	tClothingPromotionForAnima_RandomReward[24325][4]["LogStep"] = " 2[4]"
	-- 180天时效4星外套包*1 + 指定奖励序号 - 37.00%
	tClothingPromotionForAnima_RandomReward[24325][4][1] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][1]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][4][1]["ItemChance"] = 3700
	tClothingPromotionForAnima_RandomReward[24325][4][1]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][1]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][1]["RewardItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9], 【表格】180天时效4星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24325][4][1]["RewardItem"][1]["Attr"] = "0 1" -- 180天时效4星外套包*1
	tClothingPromotionForAnima_RandomReward[24325][4][1]["Index"] = 1
	tClothingPromotionForAnima_RandomReward[24325][4][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][4][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 180天时效5星外套包*1 + 指定奖励序号 - 11.00%
	tClothingPromotionForAnima_RandomReward[24325][4][2] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][2]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][4][2]["ItemChance"] = 1100
	tClothingPromotionForAnima_RandomReward[24325][4][2]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][2]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][2]["RewardItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9], 【表格】180天时效5星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24325][4][2]["RewardItem"][1]["Attr"] = "0 1" -- 180天时效5星外套包*1
	tClothingPromotionForAnima_RandomReward[24325][4][2]["Index"] = 2
	tClothingPromotionForAnima_RandomReward[24325][4][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][4][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*1 + 指定奖励序号 - 11.00%
	tClothingPromotionForAnima_RandomReward[24325][4][3] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][3]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][4][3]["ItemChance"] = 1100
	tClothingPromotionForAnima_RandomReward[24325][4][3]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][3]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][3]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*1
	-- tClothingPromotionForAnima_RandomReward[24325][4][3]["RewardItem"][1]["Attr"] = "0 1" -- 特级制衣册残页*1
	tClothingPromotionForAnima_RandomReward[24325][4][3]["Index"] = 3
	tClothingPromotionForAnima_RandomReward[24325][4][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][4][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 180天时效5星外套包*3 + 指定奖励序号 - 11.00%
	tClothingPromotionForAnima_RandomReward[24325][4][4] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][4]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][4][4]["ItemChance"] = 1100
	tClothingPromotionForAnima_RandomReward[24325][4][4]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][4]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][4]["RewardItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9], 【表格】180天时效5星外套包*3
	-- tClothingPromotionForAnima_RandomReward[24325][4][4]["RewardItem"][1]["Attr"] = "0 3" -- 180天时效5星外套包*3
	tClothingPromotionForAnima_RandomReward[24325][4][4]["Index"] = 4
	tClothingPromotionForAnima_RandomReward[24325][4][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][4][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*2 + 指定奖励序号 - 30.00%
	tClothingPromotionForAnima_RandomReward[24325][4][5] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][5]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][4][5]["ItemChance"] = 3000
	tClothingPromotionForAnima_RandomReward[24325][4][5]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][5]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][5]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*2
	-- tClothingPromotionForAnima_RandomReward[24325][4][5]["RewardItem"][1]["Attr"] = "0 2" -- 特级制衣册残页*2
	tClothingPromotionForAnima_RandomReward[24325][4][5]["Index"] = 5
	tClothingPromotionForAnima_RandomReward[24325][4][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][4][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*8 + 指定奖励序号 - 0.00%
	tClothingPromotionForAnima_RandomReward[24325][4][6] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][6]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][4][6]["ItemChance"] = 0
	tClothingPromotionForAnima_RandomReward[24325][4][6]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][6]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][6]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*8
	-- tClothingPromotionForAnima_RandomReward[24325][4][6]["RewardItem"][1]["Attr"] = "0 8" -- 特级制衣册残页*8
	tClothingPromotionForAnima_RandomReward[24325][4][6]["Index"] = 6
	tClothingPromotionForAnima_RandomReward[24325][4][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][4][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*32 + 指定奖励序号 - 0.00%
	tClothingPromotionForAnima_RandomReward[24325][4][7] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][7]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][4][7]["ItemChance"] = 0
	tClothingPromotionForAnima_RandomReward[24325][4][7]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][7]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][4][7]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*32
	-- tClothingPromotionForAnima_RandomReward[24325][4][7]["RewardItem"][1]["Attr"] = "0 32" -- 特级制衣册残页*32
	tClothingPromotionForAnima_RandomReward[24325][4][7]["Index"] = 7
	tClothingPromotionForAnima_RandomReward[24325][4][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][4][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][4][7]["RewardEffect"]["Effect"] = "angelwing"


	tClothingPromotionForAnima_RandomReward[24325][5] = {}
	-- ===天玄阁重抽概率其他情况
	-- ===索引: tClothingPromotionForAnima_RandomReward[24325][5]
	-- ===LogStep: 2[5]
	tClothingPromotionForAnima_RandomReward[24325][5]["ItemChanceSum"] = 10000
	tClothingPromotionForAnima_RandomReward[24325][5]["LogId"] = 12001463
	tClothingPromotionForAnima_RandomReward[24325][5]["LogStep"] = " 2[5]"
	-- 180天时效4星外套包*1 + 指定奖励序号 - 29.00%
	tClothingPromotionForAnima_RandomReward[24325][5][1] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][1]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][5][1]["ItemChance"] = 2900
	tClothingPromotionForAnima_RandomReward[24325][5][1]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][1]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][1]["RewardItem"][1]["Id"] = 3322045 -- 【库】180天时效4星外套包[属性:9], 【表格】180天时效4星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24325][5][1]["RewardItem"][1]["Attr"] = "0 1" -- 180天时效4星外套包*1
	tClothingPromotionForAnima_RandomReward[24325][5][1]["Index"] = 1
	tClothingPromotionForAnima_RandomReward[24325][5][1]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][5][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 180天时效5星外套包*1 + 指定奖励序号 - 11.00%
	tClothingPromotionForAnima_RandomReward[24325][5][2] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][2]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][5][2]["ItemChance"] = 1100
	tClothingPromotionForAnima_RandomReward[24325][5][2]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][2]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][2]["RewardItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9], 【表格】180天时效5星外套包*1
	-- tClothingPromotionForAnima_RandomReward[24325][5][2]["RewardItem"][1]["Attr"] = "0 1" -- 180天时效5星外套包*1
	tClothingPromotionForAnima_RandomReward[24325][5][2]["Index"] = 2
	tClothingPromotionForAnima_RandomReward[24325][5][2]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][5][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*1 + 指定奖励序号 - 11.00%
	tClothingPromotionForAnima_RandomReward[24325][5][3] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][3]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][5][3]["ItemChance"] = 1100
	tClothingPromotionForAnima_RandomReward[24325][5][3]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][3]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][3]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*1
	-- tClothingPromotionForAnima_RandomReward[24325][5][3]["RewardItem"][1]["Attr"] = "0 1" -- 特级制衣册残页*1
	tClothingPromotionForAnima_RandomReward[24325][5][3]["Index"] = 3
	tClothingPromotionForAnima_RandomReward[24325][5][3]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][5][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 180天时效5星外套包*3 + 指定奖励序号 - 11.00%
	tClothingPromotionForAnima_RandomReward[24325][5][4] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][4]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][5][4]["ItemChance"] = 1100
	tClothingPromotionForAnima_RandomReward[24325][5][4]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][4]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][4]["RewardItem"][1]["Id"] = 3322046 -- 【库】180天时效5星外套包[属性:9], 【表格】180天时效5星外套包*3
	-- tClothingPromotionForAnima_RandomReward[24325][5][4]["RewardItem"][1]["Attr"] = "0 3" -- 180天时效5星外套包*3
	tClothingPromotionForAnima_RandomReward[24325][5][4]["Index"] = 4
	tClothingPromotionForAnima_RandomReward[24325][5][4]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][5][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*2 + 指定奖励序号 - 38.00%
	tClothingPromotionForAnima_RandomReward[24325][5][5] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][5]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][5][5]["ItemChance"] = 3800
	tClothingPromotionForAnima_RandomReward[24325][5][5]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][5]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][5]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*2
	-- tClothingPromotionForAnima_RandomReward[24325][5][5]["RewardItem"][1]["Attr"] = "0 2" -- 特级制衣册残页*2
	tClothingPromotionForAnima_RandomReward[24325][5][5]["Index"] = 5
	tClothingPromotionForAnima_RandomReward[24325][5][5]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][5][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*8 + 指定奖励序号 - 0.00%
	tClothingPromotionForAnima_RandomReward[24325][5][6] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][6]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][5][6]["ItemChance"] = 0
	tClothingPromotionForAnima_RandomReward[24325][5][6]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][6]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][6]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*8
	-- tClothingPromotionForAnima_RandomReward[24325][5][6]["RewardItem"][1]["Attr"] = "0 8" -- 特级制衣册残页*8
	tClothingPromotionForAnima_RandomReward[24325][5][6]["Index"] = 6
	tClothingPromotionForAnima_RandomReward[24325][5][6]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][5][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 特级制衣册碎片*32 + 指定奖励序号 - 0.00%
	tClothingPromotionForAnima_RandomReward[24325][5][7] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][7]["RandomItemChanceType"] = 2
	tClothingPromotionForAnima_RandomReward[24325][5][7]["ItemChance"] = 0
	tClothingPromotionForAnima_RandomReward[24325][5][7]["RewardItem"] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][7]["RewardItem"][1] = {}
	-- tClothingPromotionForAnima_RandomReward[24325][5][7]["RewardItem"][1]["Id"] = 3322051 -- 【库】特级制衣册残页[属性:9], 【表格】特级制衣册碎片*32
	-- tClothingPromotionForAnima_RandomReward[24325][5][7]["RewardItem"][1]["Attr"] = "0 32" -- 特级制衣册残页*32
	tClothingPromotionForAnima_RandomReward[24325][5][7]["Index"] = 7
	tClothingPromotionForAnima_RandomReward[24325][5][7]["RewardEffect"] = {}
	tClothingPromotionForAnima_RandomReward[24325][5][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tClothingPromotionForAnima_RandomReward[24325][5][7]["RewardEffect"]["Effect"] = "angelwing"


----------------------------------逻辑部分---------------------------------------------
-- 外套礼包使用前时间判断
-- function ClothingPromotionForAnima_CoatPackTimeChk(nItemId)
	-- -- 过期删除
	-- if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- local sLog = string.format(tClothingPromotionForAnima_Log["OutTime"],nItemId)
			-- -- User_TalkChannel2005(tChildrenDay_SellIce_Text[3003771][1])
			-- Sys_SaveActionFestivalLog(sLog)
		-- end
		-- return
	-- end
-- end

-- 判断玩家身上是否拥有物品
function ClothingPromotionForAnima_CoatPackChk(nItemId)
	if not Item_ChkItem(nItemId) then
		if nItemId >= 3322043 and nItemId <= 3322046 then
			Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["NotItem1"])
		elseif nItemId == 3322049 or nItemId == 3322051 then
			Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["NotItem2"])
		elseif nItemId == 3322050 or nItemId == 3322052 then
			Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["NotItem3"])
		end
		return
	end
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 拆解外套包
function ClothingPromotionForAnima_DismantlingCoatPack(nItemId)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["NotItem1"])
		return
	end
	-- 获取当前背包的外套包数量
	local nItemNum = Get_CountItemType(nItemId, 0)
	local nGetNum = nItemNum
	-- 如果物品是制衣册，则每次只拆解一个
	if nItemId == 3322050 or nItemId == 3322052 then
		nItemNum = 1
		nGetNum = 20
	end
	local tReward = CommonFunc_Copy(tClothingPromotionForAnima_RewardSoul[nItemId])
	-- 重新配表
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	tReward["RewardItem"][1]["Attr"] = "0 ".. nGetNum
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
	-- 判断奖池
	local nGlobalId = tClothingPromotionForAnima_Data["Global"]
	local nGlobalNum = Get_SysDynaGlobalData0(nGlobalId)
	local nAddNum = tClothingPromotionForAnima_Data["ItemValue"][nItemId] * nItemNum
	if nGlobalNum < nAddNum then
		User_TalkChannel2005(tClothingPromotionForAnima_Text["Sys_Msg"]["UseFalse"])
		return
	end
	
	-- 拆解减少奖池
	Sys_SetSynaGlobalData0(nGlobalId, nGlobalNum - nAddNum)
	RewardTemplate_UseItemAndMsg(tReward)
end

-- 领取时装坐骑外套
function ClothingPromotionForAnima_RewardCoatPack(nItemId, nChoose, nSign)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["NotItem4"])
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tClothingPromotionForAnima_RewardCoat[nItemId][nChoose][nSign]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tClothingPromotionForAnima_RewardCoat[nItemId][nChoose][nSign])
end

-- 制衣册残页合成
function ClothingPromotionForAnima_SynthesisBookmaking(nItemId)
	local nItemNum = tClothingPromotionForAnima_Data["NeedNum1"]
	if not Item_ChkMulItem(nItemId, nItemId, nItemNum) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["NotEnoughNum1"])
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tClothingPromotionForAnima_RewardCoat[nItemId]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tClothingPromotionForAnima_RewardCoat[nItemId])
end

-- 入阁前判断
function ClothingPromotionForAnima_NpcBegin(nNpcId)
	--不在活动时间
	if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["OutTime2"])
		return
	end
	-- 判断玩家掩码
	local nEventFir = tClothingPromotionForAnima_Stc["EventType"][nNpcId][1]
	local nDataFir = tClothingPromotionForAnima_Stc["DataType"][nNpcId][1]
	local nEventSec = tClothingPromotionForAnima_Stc["EventType"][nNpcId][2]
	local nDataSec = tClothingPromotionForAnima_Stc["DataType"][nNpcId][2]
	local nEventThi = tClothingPromotionForAnima_Stc["EventType"][nNpcId][3]
	local nDataThi = tClothingPromotionForAnima_Stc["DataType"][nNpcId][3]
	
	local nCacheData1 = Get_UserStatisticValue(nEventFir,nDataFir)
	local nCacheData2 = Get_UserStatisticValue(nEventSec,nDataSec)
	local nCacheData3 = Get_UserStatisticValue(nEventThi,nDataThi)
	
	-- 之前没有抽奖遗留下的奖励
	if nCacheData1 == 0 then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 上一次是单抽
	if nCacheData2 == 0 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	-- 上一次是三抽
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

-- 重置掩码
function ClothingPromotionForAnima_ResetNpcStc(nNpcId)
	-- 掩码清零
	local nEventFir = tClothingPromotionForAnima_Stc["EventType"][nNpcId][1]
	local nDataFir = tClothingPromotionForAnima_Stc["DataType"][nNpcId][1]
	local nEventSec = tClothingPromotionForAnima_Stc["EventType"][nNpcId][2]
	local nDataSec = tClothingPromotionForAnima_Stc["DataType"][nNpcId][2]
	local nEventThi = tClothingPromotionForAnima_Stc["EventType"][nNpcId][3]
	local nDataThi = tClothingPromotionForAnima_Stc["DataType"][nNpcId][3]
	
	local nStcDataFir = Get_UserStatisticValue(nEventFir, nDataFir)
	local nStcDataSec = Get_UserStatisticValue(nEventSec, nDataSec)
	-- 掩码清零，若果清零失败，置回原来的掩码，返回false
	if Task_SetStatistic(nEventFir, nDataFir, 0, 1) then
		Task_SetStcTimestamp(nEventFir, nDataFir, 0, 0)
		if Task_SetStatistic(nEventSec, nDataSec, 0, 1) then
			Task_SetStcTimestamp(nEventSec, nDataSec, 0, 0)
			if Task_SetStatistic(nEventThi, nDataThi, 0, 1) then
				Task_SetStcTimestamp(nEventThi, nDataThi, 0, 0)
				return true
			else
				Task_SetStatistic(nEventFir, nDataFir, nStcDataFir, 1)
				Task_SetStcTimestamp(nEventFir, nDataFir, 0, 0)
				Task_SetStatistic(nEventThi, nDataThi, nStcDataSec, 1)
				Task_SetStcTimestamp(nEventThi, nDataThi, 0, 0)
			end
		else
			Task_SetStatistic(nEventFir, nDataFir, nStcDataFir, 1)
			Task_SetStcTimestamp(nEventFir, nDataFir, 0, 0)
		end
	end
	return false
end


-- 1枚灵珠玉·地入阁   连续入阁3次
function ClothingPromotionForAnima_UseOneToJoin(nNpcId, nIndex)
	--不在活动时间
	if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["OutTime2"])
		return
	end
	-- 判断道具数量
	local nNeedItem = tClothingPromotionForAnima_Data["NeedItem"][nNpcId]
	local nNeedNum = 1
	if nIndex == 1 then
		if not Item_ChkItem(nNeedItem) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
		-- 入阁随机到的数据
		local nSign = ClothingPromotionForAnima_JoinGetRandomData(nNpcId, nIndex)
		-- 删除道具重置掩码
		if Item_DelItem(nNeedItem) then
			-- 增加奖池
			local nGlobalId = tClothingPromotionForAnima_Data["Global"]
			local nGlobalNum = Get_SysDynaGlobalData0(nGlobalId)
			local nAddNum = tClothingPromotionForAnima_Data["ItemValue"][nNeedItem]
			Sys_SetSynaGlobalData0(nGlobalId, nGlobalNum + nAddNum)
			-- 记录参与emoneylog
			if nNpcId == 24324 then
				Sys_SaveEmoneyBuy(tClothingPromotionForAnima_Log["SmallJoinOneEmoney"])
			else
				Sys_SaveEmoneyBuy(tClothingPromotionForAnima_Log["BigJoinOneEmoney"])
			end
			-- 掩码清零
			ClothingPromotionForAnima_ResetNpcStc(nNpcId)
			-- 掩码重新设值
			local nEventFir = tClothingPromotionForAnima_Stc["EventType"][nNpcId][1]
			local nDataFir = tClothingPromotionForAnima_Stc["DataType"][nNpcId][1]
			
			Task_SetStatistic(nEventFir, nDataFir, nSign, 1)
			Task_SetStcTimestamp(nEventFir, nDataFir, 0, 0)
		end
		
	elseif nIndex == 2 then
		nNeedNum = 3
		if not Item_ChkMulItem(nNeedItem, nNeedItem, nNeedNum) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
		-- 入阁随机到的数据
		local nSign = {}
		for i = 1, 3 do
			nSign[i] = ClothingPromotionForAnima_JoinGetRandomData(nNpcId, nIndex)
		end
		-- 删除道具重置掩码
		if Item_DelMulItem(nNeedItem, nNeedItem, nNeedNum) then
			-- 增加奖池
			local nGlobalId = tClothingPromotionForAnima_Data["Global"]
			local nGlobalNum = Get_SysDynaGlobalData0(nGlobalId)
			local nAddNum = tClothingPromotionForAnima_Data["ItemValue"][nNeedItem] * nNeedNum
			Sys_SetSynaGlobalData0(nGlobalId, nGlobalNum + nAddNum)
			-- 记录参与emoneylog
			if nNpcId == 24324 then
				Sys_SaveEmoneyBuy(tClothingPromotionForAnima_Log["SmallJoinThreeEmoney"])
			else
				Sys_SaveEmoneyBuy(tClothingPromotionForAnima_Log["BigJoinThreeEmoney"])
			end
			-- 掩码清零
			ClothingPromotionForAnima_ResetNpcStc(nNpcId)
			-- 掩码重新设值
			local nEventFir = tClothingPromotionForAnima_Stc["EventType"][nNpcId][1]
			local nDataFir = tClothingPromotionForAnima_Stc["DataType"][nNpcId][1]
			local nEventSec = tClothingPromotionForAnima_Stc["EventType"][nNpcId][2]
			local nDataSec = tClothingPromotionForAnima_Stc["DataType"][nNpcId][2]
			local nEventThi = tClothingPromotionForAnima_Stc["EventType"][nNpcId][3]
			local nDataThi = tClothingPromotionForAnima_Stc["DataType"][nNpcId][3]
			
			Task_SetStatistic(nEventFir, nDataFir, nSign[1], 1)
			Task_SetStcTimestamp(nEventFir, nDataFir, 0, 0)
			Task_SetStatistic(nEventSec, nDataSec, nSign[2], 1)
			Task_SetStcTimestamp(nEventSec, nDataSec, 0, 0)
			Task_SetStatistic(nEventThi, nDataThi, nSign[3], 1)
			Task_SetStcTimestamp(nEventThi, nDataThi, 0, 0)
		end
	end
	-- 重新调用NPC初次对白逻辑
	ClothingPromotionForAnima_NpcBegin(nNpcId)
end


-- 入阁随机数据
function ClothingPromotionForAnima_JoinGetRandomData(nNpcId, nIndex)
	-- 随机序号
	local tRandomSign = RewardTemplate_NewRandom(tClothingPromotionForAnima_RandomReward[nNpcId], nIndex)
	local nSign = tRandomSign[1]["tAward"][1]["Index"]
	-- 转化为对应的奖励和数量
	-- local nRewardId = tClothingPromotionForAnima_Data["RandomReward"][nNpcId]["RewardId"][nSign]
	-- local nRewardNum = tClothingPromotionForAnima_Data["RandomReward"][nNpcId]["RewardNum"][nSign]
	return nSign
end

-- 入阁数据拆解
function ClothingPromotionForAnima_RandomDataSplit(nNpcId, nSign)
	-- 转化为对应的奖励和数量
	local nRewardId = tClothingPromotionForAnima_Data["RandomReward"][nNpcId]["RewardId"][nSign]
	local nRewardNum = tClothingPromotionForAnima_Data["RandomReward"][nNpcId]["RewardNum"][nSign]
	return nRewardId, nRewardNum
end


-- 直接领取
function ClothingPromotionForAnima_DirectCollectionReward(nNpcId, nIndex)
	--不在活动时间
	if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["OutTime2"])
		return
	end
	-- 奖励表重新赋值
	local tReward = CommonFunc_Copy(tClothingPromotionForAnima_RewardCoat[nNpcId])
	for i = 1, nIndex do
		local nEvent = tClothingPromotionForAnima_Stc["EventType"][nNpcId][i]
		local nData = tClothingPromotionForAnima_Stc["DataType"][nNpcId][i]
		local nSign = Get_UserStatisticValue(nEvent, nData)
		-- 判断掩码值
		if nSign > 7 or nSign < 1 then
			return false
		end
		-- 获取掩码对应的奖励
		local nRewardId, nRewardNum = ClothingPromotionForAnima_RandomDataSplit(nNpcId, nSign)
		tReward["RewardItem"][i] = {}
		tReward["RewardItem"][i]["Id"] = nRewardId
		tReward["RewardItem"][i]["Attr"] = "0 " .. nRewardNum
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tReward) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["FullSpaceGet"])
		return
	end
	-- 重置掩码 领取奖励
	if ClothingPromotionForAnima_ResetNpcStc(nNpcId) then
		RewardTemplate_UseItemAndMsg(tReward)
	end
end

-- 拆解确认
function ClothingPromotionForAnima_DismantlingChk(nNpcId, nIndex)
	--不在活动时间
	if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["OutTime2"])
		return
	end
	local nEvent = tClothingPromotionForAnima_Stc["EventType"][nNpcId][4]
	local nData = tClothingPromotionForAnima_Stc["DataType"][nNpcId][4]
	-- 判断是否二次确认拆解
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		ClothingPromotionForAnima_FixDismantling(nNpcId, nIndex)
	else
		if nIndex == 1 then
			LinkNpcGossipFunc_New(nNpcId, "3-2")
		else
			LinkNpcGossipFunc_New(nNpcId, "4-2")
		end
	end
end

-- 拆解屏蔽二次确认
function ClothingPromotionForAnima_ShieldingSecondaryConfirmation(nNpcId)
	--不在活动时间
	if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["OutTime2"])
		return
	end
	-- 二次确认掩码置1
	local nEvent = tClothingPromotionForAnima_Stc["EventType"][nNpcId][4]
	local nData = tClothingPromotionForAnima_Stc["DataType"][nNpcId][4]
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0, 0)
	-- 重新调用NPC初次对白逻辑
	ClothingPromotionForAnima_NpcBegin(nNpcId)
end


-- 拆解
function ClothingPromotionForAnima_FixDismantling(nNpcId, nIndex)
	--不在活动时间
	if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["OutTime2"])
		return
	end
	-- 奖励表重新赋值
	local tReward = CommonFunc_Copy(tClothingPromotionForAnima_RewardSoul[nNpcId])
	local nAddNum = 0
	for i = 1, nIndex do
		local nEvent = tClothingPromotionForAnima_Stc["EventType"][nNpcId][i]
		local nData = tClothingPromotionForAnima_Stc["DataType"][nNpcId][i]
		local nSign = Get_UserStatisticValue(nEvent, nData)
		-- 判断掩码值
		if nSign > 7 or nSign < 1 then
			return false
		end
		-- 获取掩码对应的奖励
		local nStcId, nRewardNum = ClothingPromotionForAnima_RandomDataSplit(nNpcId, nSign)
		local nRewardId = tClothingPromotionForAnima_Data["Exchange"][nStcId]
		tReward["RewardItem"][i] = {}
		tReward["RewardItem"][i]["Id"] = nRewardId
		tReward["RewardItem"][i]["Attr"] = "0 " .. nRewardNum
		tReward["RewardItem"][i]["PreciousType"] = 307
		-- 设置增加的值
		nAddNum = nAddNum + (tClothingPromotionForAnima_Data["ItemValue"][nRewardId] * nRewardNum)
	end
	-- 判断奖池是否能拆解
	local nGlobalId = tClothingPromotionForAnima_Data["Global"]
	local nGlobalNum = Get_SysDynaGlobalData0(nGlobalId)
	if nGlobalNum < nAddNum then
		User_TalkChannel2005(tClothingPromotionForAnima_Text["Sys_Msg"]["CJFalse"])
		return
	end

	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tReward) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["FullSpaceDismantling"])
		return
	end
	-- 重置掩码 领取奖励
	if ClothingPromotionForAnima_ResetNpcStc(nNpcId) then
		-- 拆解减少奖池
		Sys_SetSynaGlobalData0(nGlobalId, nGlobalNum - nAddNum)
		RewardTemplate_UseItemAndMsg(tReward)
	end
end

-- 获取重抽概率
function ClothingPromotionForAnima_GetRePumpingProbability(nNpcId)
	-- 玩家掩码
	local nEventFir = tClothingPromotionForAnima_Stc["EventType"][nNpcId][1]
	local nDataFir = tClothingPromotionForAnima_Stc["DataType"][nNpcId][1]
	local nEventSec = tClothingPromotionForAnima_Stc["EventType"][nNpcId][2]
	local nDataSec = tClothingPromotionForAnima_Stc["DataType"][nNpcId][2]
	local nEventThi = tClothingPromotionForAnima_Stc["EventType"][nNpcId][3]
	local nDataThi = tClothingPromotionForAnima_Stc["DataType"][nNpcId][3]
	
	local nCacheData1 = Get_UserStatisticValue(nEventFir,nDataFir)
	local nCacheData2 = Get_UserStatisticValue(nEventSec,nDataSec)
	local nCacheData3 = Get_UserStatisticValue(nEventThi,nDataThi)
	
	-- 四星数量
	local nIndex1 = 0
	-- 五星数量
	local nIndex2 = 0
	-- 获取四星五星数量
	if nCacheData1 == 1 then
		nIndex1 = nIndex1 + 1
	elseif nCacheData1 == 2 or nCacheData1 == 3 or nCacheData1 == 4 then
		nIndex2 = nIndex2 + 1
	end
	if nCacheData2 == 1 then
		nIndex1 = nIndex1 + 1
	elseif nCacheData2 == 2 or nCacheData2 == 3 or nCacheData2 == 4 then
		nIndex2 = nIndex2 + 1
	end
	if nCacheData3 == 1 then
		nIndex1 = nIndex1 + 1
	elseif nCacheData3 == 2 or nCacheData3 == 3 or nCacheData3 == 4 then
		nIndex2 = nIndex2 + 1
	end
	-- 获取重抽概率
	if nIndex1 == 3 then
		return 3
	elseif nIndex1 == 2 and nIndex2 == 1 then
		return 4
	else
		return 5
	end
end


-- 放弃奖励重新入阁
function ClothingPromotionForAnima_GiveUpAndJoinAgain(nNpcId)
	--不在活动时间
	if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["OutTime2"])
		return
	end
	-- 判断之前奖励
	local nIndex = ClothingPromotionForAnima_GetRePumpingProbability(nNpcId)
	-- 入阁随机到的数据
	local nSign = ClothingPromotionForAnima_JoinGetRandomData(nNpcId, nIndex)
	-- 掩码清零
	if ClothingPromotionForAnima_ResetNpcStc(nNpcId) then
		-- 掩码重新设值
		local nEventFir = tClothingPromotionForAnima_Stc["EventType"][nNpcId][1]
		local nDataFir = tClothingPromotionForAnima_Stc["DataType"][nNpcId][1]
		Task_SetStatistic(nEventFir, nDataFir, nSign, 1)
		Task_SetStcTimestamp(nEventFir, nDataFir, 0, 0)
	end
	-- 重新调用NPC初次对白逻辑
	ClothingPromotionForAnima_NpcBegin(nNpcId)
end

-- 上线自检
function ClothingPromotionForAnima_UserLogin()
	--不在活动时间
	if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		return
	end
	
	-- 二次确认掩码置0
	local nEvent1 = tClothingPromotionForAnima_Stc["EventType"][24324][4]
	local nData1 = tClothingPromotionForAnima_Stc["DataType"][24324][4]
	Task_SetStatistic(nEvent1, nData1, 0, 1)
	Task_SetStcTimestamp(nEvent1, nData1, 0, 0)
	
	local nEvent2 = tClothingPromotionForAnima_Stc["EventType"][24325][4]
	local nData2 = tClothingPromotionForAnima_Stc["DataType"][24325][4]
	Task_SetStatistic(nEvent2, nData2, 0, 1)
	Task_SetStcTimestamp(nEvent2, nData2, 0, 0)
end

-- 判断是否满足领奖条件
function ClothingPromotionForAnima_GetRewardChk(nIndex)
	local nNeedNum = tClothingPromotionForAnima_Data["NeedNum"]["BigReward"]
	if nIndex == 2 then
		nNeedNum = tClothingPromotionForAnima_Data["NeedNum"]["SmallReward"]
	end
	local nUserCoatNum = Get_UserStarLevCoatCount(1, 5)
	local nMountCoatNum = Get_UserStarLevCoatCount(2, 5)
	if nUserCoatNum >= nNeedNum and nMountCoatNum >= nNeedNum then
		return true
	end
	return false
end

-- 领取南宫奖励
function ClothingPromotionForAnima_GetNanGongReward(nItemId, nIndex)
	--不在活动时间
	if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["OutTime4"])
		return
	end
	-- 判断是否可领取
	if not ClothingPromotionForAnima_GetRewardChk(nIndex) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["Dissatisfaction"][nIndex])
		return
	end
	local nEventItem = tClothingPromotionForAnima_Stc["EventType"][24323][nIndex]
	local nDataItem = tClothingPromotionForAnima_Stc["DataType"][24323][nIndex]
	-- 已领取
	if Task_ChkStcValue(nEventItem, nDataItem, ">", 0) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["Dissatisfaction"][3])
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tClothingPromotionForAnima_RewardItemNanGong[nItemId][1]) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["FullSpaceGet"])
		return
	end
	
	-- 增加掩码获取奖励
	if Task_SetStatistic(nEventItem, nDataItem, 1, 1) then
		Task_SetStcTimestamp(nEventItem, nDataItem, 0)
		RewardTemplate_UseItemAndMsg(tClothingPromotionForAnima_RewardItemNanGong[nItemId][1])
	end
end

-- -- 购买灵珠玉判断
-- function ClothingPromotionForAnima_ChkForBuyItem(nNpcId, nIndexType, nIndexNum)
	-- --不在活动时间
	-- if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		-- Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["OutTime4"])
		-- return
	-- end
	
	-- -- 判断背包空间
	-- if not RewardTemplate_CheckSpace(tClothingPromotionForAnima_BuyItem[nNpcId][nIndexType][nIndexNum]) then
		-- Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["FullSpaceGet"])
		-- return
	-- end
	
	
	-- -- 判断金币数量
	-- local nNeedMoney = tClothingPromotionForAnima_Data["BuyItem"][nIndexType][nIndexNum]
	-- if not User_CanPutMoney2Bag(-nNeedMoney) then
		-- Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["NotEnoughMoney"])
		-- return
	-- end
	
	-- local nBuyNum = tClothingPromotionForAnima_Data["BuyItem"]["BuyNum"][nIndexNum]
	
	-- if nIndexType == 1 then
		-- tNpcGossip[nNpcId]["Text221"] = string.format(tClothingPromotionForAnima_Text[nNpcId]["Text221"], nNeedMoney, nBuyNum)
		-- tNpcGossip[nNpcId]["Option221"] = string.format(tClothingPromotionForAnima_Text[nNpcId]["Option221"], nNeedMoney)
		-- tNpcGossip[nNpcId]["OptionFunc221"] = "ClothingPromotionForAnima_BuyItem</N>" .. nNpcId .. "</N>" .. nIndexType .. "</N>" .. nIndexNum
		-- LinkNpcGossipFunc_New(nNpcId, "2-2")
	-- else
		-- tNpcGossip[nNpcId]["Text321"] = string.format(tClothingPromotionForAnima_Text[nNpcId]["Text321"], nNeedMoney, nBuyNum)
		-- tNpcGossip[nNpcId]["Option321"] = string.format(tClothingPromotionForAnima_Text[nNpcId]["Option321"], nNeedMoney)
		-- tNpcGossip[nNpcId]["OptionFunc321"] = "ClothingPromotionForAnima_BuyItem</N>" .. nNpcId .. "</N>" .. nIndexType .. "</N>" .. nIndexNum
		-- LinkNpcGossipFunc_New(nNpcId, "3-2")
	-- end
	
-- end


-- -- 购买灵珠玉
-- function ClothingPromotionForAnima_BuyItem(nNpcId, nIndexType, nIndexNum)
	-- --不在活动时间
	-- if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		-- Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["OutTime4"])
		-- return
	-- end
	
	-- -- 判断背包空间
	-- if not RewardTemplate_CheckSpace(tClothingPromotionForAnima_BuyItem[nNpcId][nIndexType][nIndexNum]) then
		-- Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["FullSpaceGet"])
		-- return
	-- end
	
	
	-- -- 判断金币数量
	-- local nNeedMoney = tClothingPromotionForAnima_Data["BuyItem"][nIndexType][nIndexNum]
	-- if not User_CanPutMoney2Bag(-nNeedMoney) then
		-- Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["NotEnoughMoney"])
		-- return
	-- end
	
	
	-- -- 扣除金币给奖励
	-- if User_AddMoney(-nNeedMoney) then
		-- RewardTemplate_UseItemAndMsg(tClothingPromotionForAnima_BuyItem[nNpcId][nIndexType][nIndexNum])
	-- end
	
-- end



----------------------------------NPC部分---------------------------------------------
-- 龙战阁主
tNpcFace[5718] = 57
tNpcGossip[24323]= tNpcGossip[24323] or DefaultNpc:new{}
tNpcGossip[24323]["OptionHidden"] = 1
tNpcGossip[24323]["DialogueText"] = tClothingPromotionForAnima_Text[24323]
-- 活动前
tNpcGossip[24323]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118}
tNpcGossip[24323]["ChkFunc1-1"]= function()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[24323]["tOption1-1"] = {111}
-- 活动后
tNpcGossip[24323]["Text1-2"] = {121, 122}
tNpcGossip[24323]["ChkFunc1-2"]= function()
	if CommonFunc_GetAfterActivityTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[24323]["tOption1-2"] = {121}
-- 活动中  等级不足
tNpcGossip[24323]["Text1-3"] = {131, 132, 133, 134, 135, 136, 137, 138}
tNpcGossip[24323]["ChkFunc1-3"]= function()
	if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		return false
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tClothingPromotionForAnima_Data["Level"], tClothingPromotionForAnima_Data["Metempsychosis"]) then
		return true
	end
	return false
end
tNpcGossip[24323]["tOption1-3"] = {131}
-- 活动中  等级满足
tNpcGossip[24323]["Text1-4"] = {141, 142, 143, 144, 145, 148, 149, 146, 147}
tNpcGossip[24323]["ChkFunc1-4"]= function()
	if not Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		return false
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tClothingPromotionForAnima_Data["Level"], tClothingPromotionForAnima_Data["Metempsychosis"]) then
		return false
	end
	return true
end
tNpcGossip[24323]["tOption1-4"] = {141, 142, 145, 143}
-- 灵珠及灵珠玉兑换
tNpcGossip[24323]["OptionFunc141"] = "User_OpenExchangeShop</N>24323"
-- 神龙阁详情
tNpcGossip[24323]["OptionPoint142"] = "2-1"
-- 领取南宫至宝礼盒
tNpcGossip[24323]["OptionPoint144"] = "3-1"
tNpcGossip[24323]["OptionChkFunc144"] = function ()
	local nEventItem = tClothingPromotionForAnima_Stc["EventType"][24323][1]
	local nDataItem = tClothingPromotionForAnima_Stc["DataType"][24323][1]
	-- 已领取
	if Task_ChkStcValue(nEventItem, nDataItem, ">", 0) then
		return false
	end
	return true
end
-- 领取南宫珍宝礼包
tNpcGossip[24323]["OptionPoint145"] = "4-1"
tNpcGossip[24323]["OptionChkFunc145"] = function ()
	local nEventItem = tClothingPromotionForAnima_Stc["EventType"][24323][2]
	local nDataItem = tClothingPromotionForAnima_Stc["DataType"][24323][2]
	-- 已领取
	if Task_ChkStcValue(nEventItem, nDataItem, ">", 0) then
		return false
	end
	return true
end

-- 如何获得灵珠玉？
tNpcGossip[24323]["OptionPoint143"] = "2-2"

-- 神龙阁详情
tNpcGossip[24323]["Text2-1"] = {211, 212, 213, 214, 215, 216, 217}
tNpcGossip[24323]["tOption2-1"] = {211}
tNpcGossip[24323]["OptionPoint211"] = "1-4"

-- 如何获得灵珠玉？
tNpcGossip[24323]["Text2-2"] = {221, 222}
tNpcGossip[24323]["tOption2-2"] = {221}
tNpcGossip[24323]["OptionPoint221"] = "1-4"

-- 领取南宫至宝礼盒
tNpcGossip[24323]["Text3-1"] = {311, 312}
tNpcGossip[24323]["tOption3-1"] = {311, 312}
tNpcGossip[24323]["OptionChkFunc311"] = function ()
	return not ClothingPromotionForAnima_GetRewardChk(1)
end
tNpcGossip[24323]["OptionFunc312"] = "ClothingPromotionForAnima_GetNanGongReward</N>3313781</N>1"
tNpcGossip[24323]["OptionChkFunc312"] = function ()
	local nEventItem = tClothingPromotionForAnima_Stc["EventType"][24323][1]
	local nDataItem = tClothingPromotionForAnima_Stc["DataType"][24323][1]
	-- 已领取
	if Task_ChkStcValue(nEventItem, nDataItem, ">", 0) then
		return false
	end
	return ClothingPromotionForAnima_GetRewardChk(1)
end

-- 领取南宫珍宝礼包
tNpcGossip[24323]["Text4-1"] = {411, 412}
tNpcGossip[24323]["tOption4-1"] = {411, 412}
tNpcGossip[24323]["OptionChkFunc411"] = function ()
	return not ClothingPromotionForAnima_GetRewardChk(2)
end
tNpcGossip[24323]["OptionFunc412"] = "ClothingPromotionForAnima_GetNanGongReward</N>3313782</N>2"
tNpcGossip[24323]["OptionChkFunc412"] = function ()
	local nEventItem = tClothingPromotionForAnima_Stc["EventType"][24323][2]
	local nDataItem = tClothingPromotionForAnima_Stc["DataType"][24323][2]
	-- 已领取
	if Task_ChkStcValue(nEventItem, nDataItem, ">", 0) then
		return false
	end
	return ClothingPromotionForAnima_GetRewardChk(2)
end

-- 地阙阁
tNpcFace[2242] = 2361
tNpcGossip[24324]= tNpcGossip[24324] or DefaultNpc:new{}
tNpcGossip[24324]["OptionHidden"] = 1
tNpcGossip[24324]["DialogueText"] = tClothingPromotionForAnima_Text[24324]
-- 主对白
tNpcGossip[24324]["Text1-1"] = {111, 112, 113, 114, 115}
tNpcGossip[24324]["tOption1-1"] = {111, 112}
tNpcGossip[24324]["OptionFunc111"] = "ClothingPromotionForAnima_UseOneToJoin</N>24324</N>1"
tNpcGossip[24324]["OptionFunc112"] = "ClothingPromotionForAnima_UseOneToJoin</N>24324</N>2"
-- 背包空间不足
tNpcGossip[24324]["Text2-1"] = {211}
tNpcGossip[24324]["tOption2-1"] = {211}
-- 灵珠玉·地不足
tNpcGossip[24324]["Text2-2"] = {221, 222}
tNpcGossip[24324]["tOption2-2"] = {221}
-- 1枚灵珠玉·地入阁 成功
tNpcGossip[24324]["Text3-1"] = {311, 312, 313, 314, 315}
tNpcGossip[24324]["ChkFunc3-1"]= function()
	local nNpcId = 24324
	local nEvent = tClothingPromotionForAnima_Stc["EventType"][nNpcId][1]
	local nData = tClothingPromotionForAnima_Stc["DataType"][nNpcId][1]
	local nIndex = Get_UserStatisticValue(nEvent, nData)
	tNpcGossip[24324]["Text313"] = string.format(tClothingPromotionForAnima_Text[24324]["Text313"], tClothingPromotionForAnima_Text["Dialog"][nNpcId][nIndex])
	return true
end

tNpcGossip[24324]["tOption3-1"] = {311, 312}
tNpcGossip[24324]["OptionFunc311"] = "ClothingPromotionForAnima_DirectCollectionReward</N>24324</N>1"
tNpcGossip[24324]["OptionFunc312"] = "ClothingPromotionForAnima_DismantlingChk</N>24324</N>1"
-- 我要拆解
tNpcGossip[24324]["Text3-2"] = {321}
tNpcGossip[24324]["ChkFunc3-2"]= function()
	local nNpcId = 24324
	local nEvent = tClothingPromotionForAnima_Stc["EventType"][nNpcId][1]
	local nData = tClothingPromotionForAnima_Stc["DataType"][nNpcId][1]
	local nSign = Get_UserStatisticValue(nEvent, nData)
	-- 获取掩码对应的奖励
	local nStcId = ClothingPromotionForAnima_RandomDataSplit(nNpcId, nSign)
	local sItemName = Get_ItemtypeName(nStcId)
	tNpcGossip[24324]["Text321"] = string.format(tClothingPromotionForAnima_Text[24324]["Text321"], sItemName)
	return true
end
tNpcGossip[24324]["tOption3-2"] = {321, 322, 323}
tNpcGossip[24324]["OptionFunc321"] = "ClothingPromotionForAnima_FixDismantling</N>24324</N>1"
tNpcGossip[24324]["OptionPoint322"] = "4-3"
-- tNpcGossip[24324]["OptionFunc322"] = "ClothingPromotionForAnima_ShieldingSecondaryConfirmation</N>24324"
-- 连续入阁3次 成功
tNpcGossip[24324]["Text4-1"] = {411, 412, 413, 414, 415, 416, 417}
tNpcGossip[24324]["ChkFunc4-1"]= function()
	local nNpcId = 24324
	local nEvent1 = tClothingPromotionForAnima_Stc["EventType"][nNpcId][1]
	local nData1 = tClothingPromotionForAnima_Stc["DataType"][nNpcId][1]
	local nEvent2 = tClothingPromotionForAnima_Stc["EventType"][nNpcId][2]
	local nData2 = tClothingPromotionForAnima_Stc["DataType"][nNpcId][2]
	local nEvent3 = tClothingPromotionForAnima_Stc["EventType"][nNpcId][3]
	local nData3 = tClothingPromotionForAnima_Stc["DataType"][nNpcId][3]
	local nIndex1 = Get_UserStatisticValue(nEvent1, nData1)
	local nIndex2 = Get_UserStatisticValue(nEvent2, nData2)
	local nIndex3 = Get_UserStatisticValue(nEvent3, nData3)
	tNpcGossip[24324]["Text413"] = string.format(tClothingPromotionForAnima_Text[24324]["Text413"], tClothingPromotionForAnima_Text["Dialog"][nNpcId][nIndex1])
	tNpcGossip[24324]["Text414"] = string.format(tClothingPromotionForAnima_Text[24324]["Text414"], tClothingPromotionForAnima_Text["Dialog"][nNpcId][nIndex2])
	tNpcGossip[24324]["Text415"] = string.format(tClothingPromotionForAnima_Text[24324]["Text415"], tClothingPromotionForAnima_Text["Dialog"][nNpcId][nIndex3])
	return true
end

tNpcGossip[24324]["tOption4-1"] = {411, 412, 413}
tNpcGossip[24324]["OptionFunc411"] = "ClothingPromotionForAnima_DirectCollectionReward</N>24324</N>3"
tNpcGossip[24324]["OptionFunc412"] = "ClothingPromotionForAnima_DismantlingChk</N>24324</N>3"
tNpcGossip[24324]["OptionPoint413"] = "4-4"
-- 一键拆解
tNpcGossip[24324]["Text4-2"] = {421}
tNpcGossip[24324]["tOption4-2"] = {421, 422, 423}
tNpcGossip[24324]["OptionFunc421"] = "ClothingPromotionForAnima_FixDismantling</N>24324</N>3"
tNpcGossip[24324]["OptionPoint422"] = "4-3"
-- 屏蔽二次确认
tNpcGossip[24324]["Text4-3"] = {431}
tNpcGossip[24324]["tOption4-3"] = {431, 432}
tNpcGossip[24324]["OptionFunc431"] = "ClothingPromotionForAnima_ShieldingSecondaryConfirmation</N>24324"
tNpcGossip[24324]["OptionFunc432"] = "ClothingPromotionForAnima_NpcBegin</N>24324"
-- 全部放弃，免费重新入阁1次
tNpcGossip[24324]["Text4-4"] = {441}
tNpcGossip[24324]["tOption4-4"] = {441, 442}
tNpcGossip[24324]["OptionFunc441"] = "ClothingPromotionForAnima_GiveUpAndJoinAgain</N>24324"



-- 天玄阁
tNpcFace[2243] = 2361
tNpcGossip[24325]= tNpcGossip[24325] or DefaultNpc:new{}
tNpcGossip[24325]["OptionHidden"] = 1
tNpcGossip[24325]["DialogueText"] = tClothingPromotionForAnima_Text[24325]
-- 主对白
tNpcGossip[24325]["Text1-1"] = {111, 112, 113, 114, 115}
tNpcGossip[24325]["tOption1-1"] = {111, 112}
tNpcGossip[24325]["OptionFunc111"] = "ClothingPromotionForAnima_UseOneToJoin</N>24325</N>1"
tNpcGossip[24325]["OptionFunc112"] = "ClothingPromotionForAnima_UseOneToJoin</N>24325</N>2"
-- 背包空间不足
tNpcGossip[24325]["Text2-1"] = {211}
tNpcGossip[24325]["tOption2-1"] = {211}
-- 灵珠玉·地不足
tNpcGossip[24325]["Text2-2"] = {221, 222}
tNpcGossip[24325]["tOption2-2"] = {221}
-- 1枚灵珠玉·地入阁 成功
tNpcGossip[24325]["Text3-1"] = {311, 312, 313, 314, 315}
tNpcGossip[24325]["ChkFunc3-1"]= function()
	local nNpcId = 24325
	local nEvent = tClothingPromotionForAnima_Stc["EventType"][nNpcId][1]
	local nData = tClothingPromotionForAnima_Stc["DataType"][nNpcId][1]
	local nIndex = Get_UserStatisticValue(nEvent, nData)
	tNpcGossip[24325]["Text313"] = string.format(tClothingPromotionForAnima_Text[24325]["Text313"], tClothingPromotionForAnima_Text["Dialog"][nNpcId][nIndex])
	return true
end

tNpcGossip[24325]["tOption3-1"] = {311, 312}
tNpcGossip[24325]["OptionFunc311"] = "ClothingPromotionForAnima_DirectCollectionReward</N>24325</N>1"
tNpcGossip[24325]["OptionFunc312"] = "ClothingPromotionForAnima_DismantlingChk</N>24325</N>1"
-- 我要拆解
tNpcGossip[24325]["Text3-2"] = {321}
tNpcGossip[24325]["ChkFunc3-2"]= function()
	local nNpcId = 24325
	local nEvent = tClothingPromotionForAnima_Stc["EventType"][nNpcId][1]
	local nData = tClothingPromotionForAnima_Stc["DataType"][nNpcId][1]
	local nSign = Get_UserStatisticValue(nEvent, nData)
	-- 获取掩码对应的奖励
	local nStcId = ClothingPromotionForAnima_RandomDataSplit(nNpcId, nSign)
	local sItemName = Get_ItemtypeName(nStcId)
	tNpcGossip[24325]["Text321"] = string.format(tClothingPromotionForAnima_Text[24325]["Text321"], sItemName)
	return true
end
tNpcGossip[24325]["tOption3-2"] = {321, 322, 323}
tNpcGossip[24325]["OptionFunc321"] = "ClothingPromotionForAnima_FixDismantling</N>24325</N>1"
tNpcGossip[24325]["OptionPoint322"] = "4-3"
-- tNpcGossip[24325]["OptionFunc322"] = "ClothingPromotionForAnima_ShieldingSecondaryConfirmation</N>24325"
-- 连续入阁3次 成功
tNpcGossip[24325]["Text4-1"] = {411, 412, 413, 414, 415, 416, 417}
tNpcGossip[24325]["ChkFunc4-1"]= function()
	local nNpcId = 24325
	local nEvent1 = tClothingPromotionForAnima_Stc["EventType"][nNpcId][1]
	local nData1 = tClothingPromotionForAnima_Stc["DataType"][nNpcId][1]
	local nEvent2 = tClothingPromotionForAnima_Stc["EventType"][nNpcId][2]
	local nData2 = tClothingPromotionForAnima_Stc["DataType"][nNpcId][2]
	local nEvent3 = tClothingPromotionForAnima_Stc["EventType"][nNpcId][3]
	local nData3 = tClothingPromotionForAnima_Stc["DataType"][nNpcId][3]
	local nIndex1 = Get_UserStatisticValue(nEvent1, nData1)
	local nIndex2 = Get_UserStatisticValue(nEvent2, nData2)
	local nIndex3 = Get_UserStatisticValue(nEvent3, nData3)
	tNpcGossip[24325]["Text413"] = string.format(tClothingPromotionForAnima_Text[24325]["Text413"], tClothingPromotionForAnima_Text["Dialog"][nNpcId][nIndex1])
	tNpcGossip[24325]["Text414"] = string.format(tClothingPromotionForAnima_Text[24325]["Text414"], tClothingPromotionForAnima_Text["Dialog"][nNpcId][nIndex2])
	tNpcGossip[24325]["Text415"] = string.format(tClothingPromotionForAnima_Text[24325]["Text415"], tClothingPromotionForAnima_Text["Dialog"][nNpcId][nIndex3])
	return true
end

tNpcGossip[24325]["tOption4-1"] = {411, 412, 413}
tNpcGossip[24325]["OptionFunc411"] = "ClothingPromotionForAnima_DirectCollectionReward</N>24325</N>3"
tNpcGossip[24325]["OptionFunc412"] = "ClothingPromotionForAnima_DismantlingChk</N>24325</N>3"
tNpcGossip[24325]["OptionPoint413"] = "4-4"
-- 一键拆解
tNpcGossip[24325]["Text4-2"] = {421}
tNpcGossip[24325]["tOption4-2"] = {421, 422, 423}
tNpcGossip[24325]["OptionFunc421"] = "ClothingPromotionForAnima_FixDismantling</N>24325</N>3"
tNpcGossip[24325]["OptionPoint422"] = "4-3"
-- 屏蔽二次确认
tNpcGossip[24325]["Text4-3"] = {431}
tNpcGossip[24325]["tOption4-3"] = {431, 432}
tNpcGossip[24325]["OptionFunc431"] = "ClothingPromotionForAnima_ShieldingSecondaryConfirmation</N>24325"
tNpcGossip[24325]["OptionFunc432"] = "ClothingPromotionForAnima_NpcBegin</N>24325"
-- 全部放弃，免费重新入阁1次
tNpcGossip[24325]["Text4-4"] = {441}
tNpcGossip[24325]["tOption4-4"] = {441, 442}
tNpcGossip[24325]["OptionFunc441"] = "ClothingPromotionForAnima_GiveUpAndJoinAgain</N>24325"



-- -- 藏宝狐嗅嗅
-- tNpcFace[4800] = 832
-- tNpcGossip[26545]= tNpcGossip[26545] or DefaultNpc:new{}
-- tNpcGossip[26545]["OptionHidden"] = 1
-- tNpcGossip[26545]["DialogueText"] = tClothingPromotionForAnima_Text[26545]
-- -- 主对白
-- tNpcGossip[26545]["Text1-1"] = {111, 112, 113}
-- tNpcGossip[26545]["tOption1-1"] = {111, 112}
-- tNpcGossip[26545]["OptionPoint111"] = "2-1"
-- tNpcGossip[26545]["OptionPoint112"] = "3-1"
-- -- 银两兑换灵珠玉·地
-- tNpcGossip[26545]["Text2-1"] = {211, 212, 213, 214, 215, 216}
-- tNpcGossip[26545]["tOption2-1"] = {211, 212, 213}
-- tNpcGossip[26545]["OptionFunc211"] = "ClothingPromotionForAnima_ChkForBuyItem</N>26545</N>1</N>1"
-- tNpcGossip[26545]["OptionFunc212"] = "ClothingPromotionForAnima_ChkForBuyItem</N>26545</N>1</N>2"
-- tNpcGossip[26545]["OptionFunc213"] = "ClothingPromotionForAnima_ChkForBuyItem</N>26545</N>1</N>3"
-- -- 银两足够，二次确认
-- tNpcGossip[26545]["Text2-2"] = {221}
-- tNpcGossip[26545]["tOption2-2"] = {221, 222}
-- tNpcGossip[26545]["OptionFunc221"] = "ClothingPromotionForAnima_BuyItem"
-- -- 银两兑换灵珠玉·天
-- tNpcGossip[26545]["Text3-1"] = {311, 312, 313, 314, 315, 316}
-- tNpcGossip[26545]["tOption3-1"] = {311, 312}
-- tNpcGossip[26545]["OptionFunc311"] = "ClothingPromotionForAnima_ChkForBuyItem</N>26545</N>2</N>1"
-- tNpcGossip[26545]["OptionFunc312"] = "ClothingPromotionForAnima_ChkForBuyItem</N>26545</N>2</N>2"
-- -- tNpcGossip[26545]["OptionFunc313"] = "ClothingPromotionForAnima_ChkForBuyItem</N>26545</N>2</N>3"
-- -- 银两足够，二次确认
-- tNpcGossip[26545]["Text3-2"] = {321}
-- tNpcGossip[26545]["tOption3-2"] = {321, 322}
-- tNpcGossip[26545]["OptionFunc321"] = "ClothingPromotionForAnima_BuyItem"



---------------------------------物品部分---------------------------------------------
--------物品无对白模板
-- tItem[3200002] = tItem[3200002] or {}
-- tItem[3200002]["Function"] = function(nItemId,sItemName)

-- end

-- 30天时效4星外套包
tItemFace[3322043] = 2352
tItem[3322043] = tItem[3322043] or {}
tItem[3322043]["DialogueText"] = tClothingPromotionForAnima_Text[3322043]
tItem[3322043]["Text1-1"] = {111, 112, 113, 114, 115}
-- tItem[3322043]["Function"] = function(nItemId,sItemName)
	-- ClothingPromotionForAnima_CoatPackTimeChk(nItemId)
-- end
tItem[3322043]["tOption1-1"] = {111, 112}
tItem[3322043]["OptionFunc111"] = "ClothingPromotionForAnima_CoatPackChk</N>3322043"
tItem[3322043]["OptionPoint112"] = "3-1"
-- 一键拆解二次确认
tItem[3322043]["Text2-1"] = {211, 212}
tItem[3322043]["ChkFunc2-1"] = function()
	-- 拆解重新赋值
	local nItemNum = Get_CountItemType(3322043, 0)
	tItem[3322043]["Text211"] = string.format(tClothingPromotionForAnima_Text[3322043]["Text211"], nItemNum)
	tItem[3322043]["Text212"] = string.format(tClothingPromotionForAnima_Text[3322043]["Text212"], nItemNum)
	return true
end
tItem[3322043]["tOption2-1"] = {211, 212}
tItem[3322043]["OptionFunc211"] = "ClothingPromotionForAnima_DismantlingCoatPack</N>3322043"
-- 领取时装坐骑外套
tItem[3322043]["Text3-1"] = {311}
tItem[3322043]["tOption3-1"] = {311, 312}
tItem[3322043]["OptionPoint311"] = "3-2"
tItem[3322043]["OptionPoint312"] = "3-3"
-- 时装外套
tItem[3322043]["Text3-2"] = {321}
tItem[3322043]["tOption3-2"] = {321,322,323,324,325,326,327,328,3210,3211,3212,3213,3214,3215,3216,3217,3218,3219,3220,3221,3222,3223,3224,3225,3226,3227,3228,3229,3230,3231,3232,3233}
tItem[3322043]["OptionFunc321"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>1"
tItem[3322043]["OptionFunc322"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>2"
tItem[3322043]["OptionFunc323"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>3"
tItem[3322043]["OptionFunc324"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>4"
tItem[3322043]["OptionFunc325"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>5"
tItem[3322043]["OptionFunc326"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>6"
tItem[3322043]["OptionFunc327"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>7"
tItem[3322043]["OptionFunc328"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>8"
-- tItem[3322043]["OptionFunc329"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>9"
tItem[3322043]["OptionFunc3210"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>10"
tItem[3322043]["OptionFunc3211"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>11"
tItem[3322043]["OptionFunc3212"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>12"
tItem[3322043]["OptionFunc3213"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>13"
tItem[3322043]["OptionFunc3214"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>14"
tItem[3322043]["OptionFunc3215"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>15"
tItem[3322043]["OptionFunc3216"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>16"
tItem[3322043]["OptionFunc3217"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>17"
tItem[3322043]["OptionFunc3218"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>18"
tItem[3322043]["OptionFunc3219"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>19"
tItem[3322043]["OptionFunc3220"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>20"
tItem[3322043]["OptionFunc3221"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>21"
tItem[3322043]["OptionFunc3222"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>22"
tItem[3322043]["OptionFunc3223"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>23"
tItem[3322043]["OptionFunc3224"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>24"
tItem[3322043]["OptionFunc3225"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>25"
tItem[3322043]["OptionFunc3226"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>26"
tItem[3322043]["OptionFunc3227"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>27"
tItem[3322043]["OptionFunc3228"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>28"
tItem[3322043]["OptionFunc3229"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>29"
tItem[3322043]["OptionFunc3230"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>30"
tItem[3322043]["OptionFunc3231"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>31"
tItem[3322043]["OptionFunc3232"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>32"
tItem[3322043]["OptionFunc3233"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>1</N>33"
-- 坐骑外套
tItem[3322043]["Text3-3"] = {331}
tItem[3322043]["tOption3-3"] = {331,332,333,334,335,336,337,338,339,3310,3311,3312,3313,3314,3315,3316,3317}
tItem[3322043]["OptionFunc331"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>1"
tItem[3322043]["OptionFunc332"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>2"
tItem[3322043]["OptionFunc333"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>3"
tItem[3322043]["OptionFunc334"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>4"
tItem[3322043]["OptionFunc335"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>5"
tItem[3322043]["OptionFunc336"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>6"
tItem[3322043]["OptionFunc337"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>7"
tItem[3322043]["OptionFunc338"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>8"
tItem[3322043]["OptionFunc339"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>9"
tItem[3322043]["OptionFunc3310"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>10"
tItem[3322043]["OptionFunc3311"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>11"
tItem[3322043]["OptionFunc3312"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>12"
tItem[3322043]["OptionFunc3313"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>13"
tItem[3322043]["OptionFunc3314"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>14"
tItem[3322043]["OptionFunc3315"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>15"
tItem[3322043]["OptionFunc3316"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>16"
tItem[3322043]["OptionFunc3317"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322043</N>2</N>17"



-- 30天时效5星外套包
tItemFace[3322044] = 2353
tItem[3322044] = tItem[3322044] or {}
tItem[3322044]["DialogueText"] = tClothingPromotionForAnima_Text[3322044]
tItem[3322044]["Text1-1"] = {111, 112, 113, 114, 115}
-- tItem[3322044]["Function"] = function(nItemId,sItemName)
	-- ClothingPromotionForAnima_CoatPackTimeChk(nItemId)
-- end
tItem[3322044]["tOption1-1"] = {111, 112}
tItem[3322044]["OptionFunc111"] = "ClothingPromotionForAnima_CoatPackChk</N>3322044"
tItem[3322044]["OptionPoint112"] = "3-1"
-- 一键拆解二次确认
tItem[3322044]["Text2-1"] = {211, 212}
tItem[3322044]["ChkFunc2-1"] = function()
	-- 拆解重新赋值
	local nItemNum = Get_CountItemType(3322044, 0)
	tItem[3322044]["Text211"] = string.format(tClothingPromotionForAnima_Text[3322044]["Text211"], nItemNum)
	tItem[3322044]["Text212"] = string.format(tClothingPromotionForAnima_Text[3322044]["Text212"], nItemNum)
	return true
end
tItem[3322044]["tOption2-1"] = {211, 212}
tItem[3322044]["OptionFunc211"] = "ClothingPromotionForAnima_DismantlingCoatPack</N>3322044"
-- 领取时装坐骑外套
tItem[3322044]["Text3-1"] = {311}
tItem[3322044]["tOption3-1"] = {311, 312}
tItem[3322044]["OptionPoint311"] = "3-2"
tItem[3322044]["OptionPoint312"] = "3-3"
-- 时装外套
tItem[3322044]["Text3-2"] = {321}
tItem[3322044]["tOption3-2"] = {321,322,323,324,325,327,328,329,3210}
tItem[3322044]["OptionFunc321"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>1</N>1"
tItem[3322044]["OptionFunc322"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>1</N>2"
tItem[3322044]["OptionFunc323"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>1</N>3"
tItem[3322044]["OptionFunc324"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>1</N>4"
tItem[3322044]["OptionFunc325"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>1</N>5"
-- tItem[3322044]["OptionFunc326"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>1</N>6"
tItem[3322044]["OptionFunc327"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>1</N>7"
tItem[3322044]["OptionFunc328"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>1</N>8"
tItem[3322044]["OptionFunc329"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>1</N>9"
tItem[3322044]["OptionFunc3210"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>1</N>10"
-- 坐骑外套
tItem[3322044]["Text3-3"] = {331}
tItem[3322044]["tOption3-3"] = {331,332,333,334,335,336,337,338,3310,3311,3312,3313,3314,3315,3316,3317,3318,3319,3320}
tItem[3322044]["OptionFunc331"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>1"
tItem[3322044]["OptionFunc332"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>2"
tItem[3322044]["OptionFunc333"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>3"
tItem[3322044]["OptionFunc334"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>4"
tItem[3322044]["OptionFunc335"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>5"
tItem[3322044]["OptionFunc336"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>6"
tItem[3322044]["OptionFunc337"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>7"
tItem[3322044]["OptionFunc338"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>8"
-- tItem[3322044]["OptionFunc339"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>9"
tItem[3322044]["OptionFunc3310"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>10"
tItem[3322044]["OptionFunc3311"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>11"
tItem[3322044]["OptionFunc3312"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>12"
tItem[3322044]["OptionFunc3313"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>13"
tItem[3322044]["OptionFunc3314"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>14"
tItem[3322044]["OptionFunc3315"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>15"
tItem[3322044]["OptionFunc3316"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>16"
tItem[3322044]["OptionFunc3317"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>17"
tItem[3322044]["OptionFunc3318"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>18"
tItem[3322044]["OptionFunc3319"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>19"
tItem[3322044]["OptionFunc3320"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322044</N>2</N>20"


-- 180天时效4星外套包
tItemFace[3322045] = 2354
tItem[3322045] = tItem[3322045] or {}
tItem[3322045]["DialogueText"] = tClothingPromotionForAnima_Text[3322045]
tItem[3322045]["Text1-1"] = {111, 112, 113, 114, 115}
-- tItem[3322045]["Function"] = function(nItemId,sItemName)
	-- ClothingPromotionForAnima_CoatPackTimeChk(nItemId)
-- end
tItem[3322045]["tOption1-1"] = {111, 112}
tItem[3322045]["OptionFunc111"] = "ClothingPromotionForAnima_CoatPackChk</N>3322045"
tItem[3322045]["OptionPoint112"] = "3-1"
-- 一键拆解二次确认
tItem[3322045]["Text2-1"] = {211, 212}
tItem[3322045]["ChkFunc2-1"] = function()
	-- 拆解重新赋值
	local nItemNum = Get_CountItemType(3322045, 0)
	tItem[3322045]["Text211"] = string.format(tClothingPromotionForAnima_Text[3322045]["Text211"], nItemNum)
	tItem[3322045]["Text212"] = string.format(tClothingPromotionForAnima_Text[3322045]["Text212"], nItemNum)
	return true
end
tItem[3322045]["tOption2-1"] = {211, 212}
tItem[3322045]["OptionFunc211"] = "ClothingPromotionForAnima_DismantlingCoatPack</N>3322045"
-- 领取时装坐骑外套
tItem[3322045]["Text3-1"] = {311}
tItem[3322045]["tOption3-1"] = {311, 312}
tItem[3322045]["OptionPoint311"] = "3-2"
tItem[3322045]["OptionPoint312"] = "3-3"
-- 时装外套
tItem[3322045]["Text3-2"] = {321}
tItem[3322045]["tOption3-2"] = {321,322,323,324,325,326,327,328,3210,3211,3212,3213,3214,3215,3216,3217,3218,3219,3220,3221,3222,3223,3224,3225,3226,3227,3228,3229,3230,3231,3232,3233}
tItem[3322045]["OptionFunc321"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>1"
tItem[3322045]["OptionFunc322"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>2"
tItem[3322045]["OptionFunc323"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>3"
tItem[3322045]["OptionFunc324"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>4"
tItem[3322045]["OptionFunc325"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>5"
tItem[3322045]["OptionFunc326"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>6"
tItem[3322045]["OptionFunc327"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>7"
tItem[3322045]["OptionFunc328"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>8"
-- tItem[3322045]["OptionFunc329"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>9"
tItem[3322045]["OptionFunc3210"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>10"
tItem[3322045]["OptionFunc3211"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>11"
tItem[3322045]["OptionFunc3212"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>12"
tItem[3322045]["OptionFunc3213"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>13"
tItem[3322045]["OptionFunc3214"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>14"
tItem[3322045]["OptionFunc3215"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>15"
tItem[3322045]["OptionFunc3216"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>16"
tItem[3322045]["OptionFunc3217"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>17"
tItem[3322045]["OptionFunc3218"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>18"
tItem[3322045]["OptionFunc3219"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>19"
tItem[3322045]["OptionFunc3220"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>20"
tItem[3322045]["OptionFunc3221"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>21"
tItem[3322045]["OptionFunc3222"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>22"
tItem[3322045]["OptionFunc3223"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>23"
tItem[3322045]["OptionFunc3224"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>24"
tItem[3322045]["OptionFunc3225"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>25"
tItem[3322045]["OptionFunc3226"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>26"
tItem[3322045]["OptionFunc3227"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>27"
tItem[3322045]["OptionFunc3228"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>28"
tItem[3322045]["OptionFunc3229"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>29"
tItem[3322045]["OptionFunc3230"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>30"
tItem[3322045]["OptionFunc3231"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>31"
tItem[3322045]["OptionFunc3232"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>32"
tItem[3322045]["OptionFunc3233"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>1</N>33"
-- 坐骑外套
tItem[3322045]["Text3-3"] = {331}
tItem[3322045]["tOption3-3"] = {331,332,333,334,335,336,337,338,339,3310,3311,3312,3313,3314,3315,3316,3317}
tItem[3322045]["OptionFunc331"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>1"
tItem[3322045]["OptionFunc332"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>2"
tItem[3322045]["OptionFunc333"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>3"
tItem[3322045]["OptionFunc334"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>4"
tItem[3322045]["OptionFunc335"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>5"
tItem[3322045]["OptionFunc336"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>6"
tItem[3322045]["OptionFunc337"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>7"
tItem[3322045]["OptionFunc338"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>8"
tItem[3322045]["OptionFunc339"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>9"
tItem[3322045]["OptionFunc3310"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>10"
tItem[3322045]["OptionFunc3311"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>11"
tItem[3322045]["OptionFunc3312"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>12"
tItem[3322045]["OptionFunc3313"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>13"
tItem[3322045]["OptionFunc3314"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>14"
tItem[3322045]["OptionFunc3315"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>15"
tItem[3322045]["OptionFunc3316"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>16"
tItem[3322045]["OptionFunc3317"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322045</N>2</N>17"



-- 180天时效5星外套包
tItemFace[3322046] = 2355
tItem[3322046] = tItem[3322046] or {}
tItem[3322046]["DialogueText"] = tClothingPromotionForAnima_Text[3322046]
tItem[3322046]["Text1-1"] = {111, 112, 113, 114, 115}
-- tItem[3322046]["Function"] = function(nItemId,sItemName)
	-- ClothingPromotionForAnima_CoatPackTimeChk(nItemId)
-- end
tItem[3322046]["tOption1-1"] = {111, 112}
tItem[3322046]["OptionFunc111"] = "ClothingPromotionForAnima_CoatPackChk</N>3322046"
tItem[3322046]["OptionPoint112"] = "3-1"
-- 一键拆解二次确认
tItem[3322046]["Text2-1"] = {211, 212}
tItem[3322046]["ChkFunc2-1"] = function()
	-- 拆解重新赋值
	local nItemNum = Get_CountItemType(3322046, 0)
	tItem[3322046]["Text211"] = string.format(tClothingPromotionForAnima_Text[3322046]["Text211"], nItemNum)
	tItem[3322046]["Text212"] = string.format(tClothingPromotionForAnima_Text[3322046]["Text212"], nItemNum)
	return true
end
tItem[3322046]["tOption2-1"] = {211, 212}
tItem[3322046]["OptionFunc211"] = "ClothingPromotionForAnima_DismantlingCoatPack</N>3322046"
-- 领取时装坐骑外套
tItem[3322046]["Text3-1"] = {311}
tItem[3322046]["tOption3-1"] = {311, 312}
tItem[3322046]["OptionPoint311"] = "3-2"
tItem[3322046]["OptionPoint312"] = "3-3"
-- 时装外套
tItem[3322046]["Text3-2"] = {321}
tItem[3322046]["tOption3-2"] = {321,322,323,324,325,327,328,329,3210}
tItem[3322046]["OptionFunc321"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>1</N>1"
tItem[3322046]["OptionFunc322"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>1</N>2"
tItem[3322046]["OptionFunc323"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>1</N>3"
tItem[3322046]["OptionFunc324"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>1</N>4"
tItem[3322046]["OptionFunc325"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>1</N>5"
-- tItem[3322046]["OptionFunc326"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>1</N>6"
tItem[3322046]["OptionFunc327"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>1</N>7"
tItem[3322046]["OptionFunc328"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>1</N>8"
tItem[3322046]["OptionFunc329"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>1</N>9"
tItem[3322046]["OptionFunc3210"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>1</N>10"
-- 坐骑外套
tItem[3322046]["Text3-3"] = {331}
tItem[3322046]["tOption3-3"] = {331,332,333,334,335,336,337,338,3310,3311,3312,3313,3314,3315,3316,3317,3318,3319,3320}
tItem[3322046]["OptionFunc331"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>1"
tItem[3322046]["OptionFunc332"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>2"
tItem[3322046]["OptionFunc333"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>3"
tItem[3322046]["OptionFunc334"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>4"
tItem[3322046]["OptionFunc335"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>5"
tItem[3322046]["OptionFunc336"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>6"
tItem[3322046]["OptionFunc337"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>7"
tItem[3322046]["OptionFunc338"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>8"
-- tItem[3322046]["OptionFunc339"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>9"
tItem[3322046]["OptionFunc3310"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>10"
tItem[3322046]["OptionFunc3311"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>11"
tItem[3322046]["OptionFunc3312"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>12"
tItem[3322046]["OptionFunc3313"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>13"
tItem[3322046]["OptionFunc3314"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>14"
tItem[3322046]["OptionFunc3315"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>15"
tItem[3322046]["OptionFunc3316"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>16"
tItem[3322046]["OptionFunc3317"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>17"
tItem[3322046]["OptionFunc3318"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>18"
tItem[3322046]["OptionFunc3319"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>19"
tItem[3322046]["OptionFunc3320"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322046</N>2</N>20"


-- 灵珠玉·地
tItem[3322047] = tItem[3322047] or {}
tItem[3322047]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断活动时间
	if Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		NpcPosition_PathFind(24324)
		return
	else
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["OutTime3"])
		return
	end
end

-- 灵珠玉·天
tItem[3322048] = tItem[3322048] or {}
tItem[3322048]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断活动时间
	if Sys_ChkFullTime(tActivityTime["ClothingPromotionForAnima"]["ActivityTime"]) then
		NpcPosition_PathFind(24325)
		return
	else
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["OutTime3"])
		return
	end
end



-- 高级制衣册残页
tItemFace[3322049] = 2356
tItem[3322049] = tItem[3322049] or {}
tItem[3322049]["DialogueText"] = tClothingPromotionForAnima_Text[3322049]
tItem[3322049]["Text1-1"] = {111, 112, 113, 114, 115}
-- tItem[3322049]["Function"] = function(nItemId,sItemName)
	-- ClothingPromotionForAnima_CoatPackTimeChk(nItemId)
-- end
tItem[3322049]["tOption1-1"] = {111, 112}
tItem[3322049]["OptionFunc111"] = "ClothingPromotionForAnima_CoatPackChk</N>3322049"
tItem[3322049]["OptionFunc112"] = "ClothingPromotionForAnima_SynthesisBookmaking</N>3322049"
-- 一键拆解二次确认
tItem[3322049]["Text2-1"] = {211, 212}
tItem[3322049]["ChkFunc2-1"] = function()
	-- 拆解重新赋值
	local nItemNum = Get_CountItemType(3322049, 0)
	tItem[3322049]["Text211"] = string.format(tClothingPromotionForAnima_Text[3322049]["Text211"], nItemNum)
	tItem[3322049]["Text212"] = string.format(tClothingPromotionForAnima_Text[3322049]["Text212"], nItemNum)
	return true
end
tItem[3322049]["tOption2-1"] = {211, 212}
tItem[3322049]["OptionFunc211"] = "ClothingPromotionForAnima_DismantlingCoatPack</N>3322049"


-- 高级制衣册
tItemFace[3322050] = 2357
tItem[3322050] = tItem[3322050] or {}
tItem[3322050]["DialogueText"] = tClothingPromotionForAnima_Text[3322050]
tItem[3322050]["Text1-1"] = {111, 112, 113, 114, 115}
-- tItem[3322050]["Function"] = function(nItemId,sItemName)
	-- ClothingPromotionForAnima_CoatPackTimeChk(nItemId)
-- end
tItem[3322050]["tOption1-1"] = {111, 112}
tItem[3322050]["OptionFunc111"] = "ClothingPromotionForAnima_CoatPackChk</N>3322050"
tItem[3322050]["OptionPoint112"] = "3-1"
-- 一键拆解二次确认
tItem[3322050]["Text2-1"] = {211, 212}
tItem[3322050]["tOption2-1"] = {211, 212}
tItem[3322050]["OptionFunc211"] = "ClothingPromotionForAnima_DismantlingCoatPack</N>3322050"
-- 领取时装坐骑外套
tItem[3322050]["Text3-1"] = {311}
tItem[3322050]["tOption3-1"] = {311, 312}
tItem[3322050]["OptionPoint311"] = "3-2"
tItem[3322050]["OptionPoint312"] = "3-3"
-- 时装外套
tItem[3322050]["Text3-2"] = {321}
tItem[3322050]["tOption3-2"] = {321,322,323,324,325,326,327,328,3210,3211,3212,3213,3214,3215,3216,3217,3218,3219,3220,3221,3222,3223,3224,3225,3226,3227,3228,3229,3230,3231,3232,3233}
tItem[3322050]["OptionFunc321"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>1"
tItem[3322050]["OptionFunc322"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>2"
tItem[3322050]["OptionFunc323"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>3"
tItem[3322050]["OptionFunc324"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>4"
tItem[3322050]["OptionFunc325"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>5"
tItem[3322050]["OptionFunc326"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>6"
tItem[3322050]["OptionFunc327"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>7"
tItem[3322050]["OptionFunc328"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>8"
-- tItem[3322050]["OptionFunc329"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>9"
tItem[3322050]["OptionFunc3210"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>10"
tItem[3322050]["OptionFunc3211"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>11"
tItem[3322050]["OptionFunc3212"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>12"
tItem[3322050]["OptionFunc3213"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>13"
tItem[3322050]["OptionFunc3214"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>14"
tItem[3322050]["OptionFunc3215"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>15"
tItem[3322050]["OptionFunc3216"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>16"
tItem[3322050]["OptionFunc3217"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>17"
tItem[3322050]["OptionFunc3218"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>18"
tItem[3322050]["OptionFunc3219"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>19"
tItem[3322050]["OptionFunc3220"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>20"
tItem[3322050]["OptionFunc3221"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>21"
tItem[3322050]["OptionFunc3222"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>22"
tItem[3322050]["OptionFunc3223"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>23"
tItem[3322050]["OptionFunc3224"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>24"
tItem[3322050]["OptionFunc3225"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>25"
tItem[3322050]["OptionFunc3226"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>26"
tItem[3322050]["OptionFunc3227"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>27"
tItem[3322050]["OptionFunc3228"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>28"
tItem[3322050]["OptionFunc3229"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>29"
tItem[3322050]["OptionFunc3230"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>30"
tItem[3322050]["OptionFunc3231"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>31"
tItem[3322050]["OptionFunc3232"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>32"
tItem[3322050]["OptionFunc3233"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>1</N>33"
-- 坐骑外套
tItem[3322050]["Text3-3"] = {331}
tItem[3322050]["tOption3-3"] = {331,332,333,334,335,336,337,338,339,3310,3311,3312,3313,3314,3315,3316,3317}
tItem[3322050]["OptionFunc331"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>1"
tItem[3322050]["OptionFunc332"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>2"
tItem[3322050]["OptionFunc333"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>3"
tItem[3322050]["OptionFunc334"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>4"
tItem[3322050]["OptionFunc335"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>5"
tItem[3322050]["OptionFunc336"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>6"
tItem[3322050]["OptionFunc337"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>7"
tItem[3322050]["OptionFunc338"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>8"
tItem[3322050]["OptionFunc339"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>9"
tItem[3322050]["OptionFunc3310"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>10"
tItem[3322050]["OptionFunc3311"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>11"
tItem[3322050]["OptionFunc3312"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>12"
tItem[3322050]["OptionFunc3313"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>13"
tItem[3322050]["OptionFunc3314"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>14"
tItem[3322050]["OptionFunc3315"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>15"
tItem[3322050]["OptionFunc3316"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>16"
tItem[3322050]["OptionFunc3317"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322050</N>2</N>17"


-- 特级制衣册残页
tItemFace[3322051] = 2358
tItem[3322051] = tItem[3322051] or {}
tItem[3322051]["DialogueText"] = tClothingPromotionForAnima_Text[3322051]
tItem[3322051]["Text1-1"] = {111, 112, 113, 114, 115}
-- tItem[3322051]["Function"] = function(nItemId,sItemName)
	-- ClothingPromotionForAnima_CoatPackTimeChk(nItemId)
-- end
tItem[3322051]["tOption1-1"] = {111, 112}
tItem[3322051]["OptionFunc111"] = "ClothingPromotionForAnima_CoatPackChk</N>3322051"
tItem[3322051]["OptionFunc112"] = "ClothingPromotionForAnima_SynthesisBookmaking</N>3322051"
-- 一键拆解二次确认
tItem[3322051]["Text2-1"] = {211, 212}
tItem[3322051]["ChkFunc2-1"] = function()
	-- 拆解重新赋值
	local nItemNum = Get_CountItemType(3322051, 0)
	tItem[3322051]["Text211"] = string.format(tClothingPromotionForAnima_Text[3322051]["Text211"], nItemNum)
	tItem[3322051]["Text212"] = string.format(tClothingPromotionForAnima_Text[3322051]["Text212"], nItemNum)
	return true
end
tItem[3322051]["tOption2-1"] = {211, 212}
tItem[3322051]["OptionFunc211"] = "ClothingPromotionForAnima_DismantlingCoatPack</N>3322051"



-- 特级制衣册
tItemFace[3322052] = 2359
tItem[3322052] = tItem[3322052] or {}
tItem[3322052]["DialogueText"] = tClothingPromotionForAnima_Text[3322052]
tItem[3322052]["Text1-1"] = {111, 112, 113, 114, 115}
-- tItem[3322052]["Function"] = function(nItemId,sItemName)
	-- ClothingPromotionForAnima_CoatPackTimeChk(nItemId)
-- end
tItem[3322052]["tOption1-1"] = {111, 112}
tItem[3322052]["OptionFunc111"] = "ClothingPromotionForAnima_CoatPackChk</N>3322052"
tItem[3322052]["OptionPoint112"] = "3-1"
-- 一键拆解二次确认
tItem[3322052]["Text2-1"] = {211, 212}
tItem[3322052]["tOption2-1"] = {211, 212}
tItem[3322052]["OptionFunc211"] = "ClothingPromotionForAnima_DismantlingCoatPack</N>3322052"
-- 领取时装坐骑外套
tItem[3322052]["Text3-1"] = {311}
tItem[3322052]["tOption3-1"] = {311, 312}
tItem[3322052]["OptionPoint311"] = "3-2"
tItem[3322052]["OptionPoint312"] = "3-3"
-- 时装外套
tItem[3322052]["Text3-2"] = {321}
tItem[3322052]["tOption3-2"] = {321,322,323,324,325,327,328,329,3210}
tItem[3322052]["OptionFunc321"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>1</N>1"
tItem[3322052]["OptionFunc322"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>1</N>2"
tItem[3322052]["OptionFunc323"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>1</N>3"
tItem[3322052]["OptionFunc324"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>1</N>4"
tItem[3322052]["OptionFunc325"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>1</N>5"
-- tItem[3322052]["OptionFunc326"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>1</N>6"
tItem[3322052]["OptionFunc327"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>1</N>7"
tItem[3322052]["OptionFunc328"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>1</N>8"
tItem[3322052]["OptionFunc329"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>1</N>9"
tItem[3322052]["OptionFunc3210"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>1</N>10"
-- 坐骑外套
tItem[3322052]["Text3-3"] = {331}
tItem[3322052]["tOption3-3"] = {331,332,333,334,335,336,337,338,339,3310,3311,3312,3313,3314,3315,3316,3317,3318,3319,3320}
tItem[3322052]["OptionFunc331"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>1"
tItem[3322052]["OptionFunc332"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>2"
tItem[3322052]["OptionFunc333"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>3"
tItem[3322052]["OptionFunc334"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>4"
tItem[3322052]["OptionFunc335"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>5"
tItem[3322052]["OptionFunc336"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>6"
tItem[3322052]["OptionFunc337"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>7"
tItem[3322052]["OptionFunc338"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>8"
tItem[3322052]["OptionFunc339"]  = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>9"
tItem[3322052]["OptionFunc3310"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>10"
tItem[3322052]["OptionFunc3311"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>11"
tItem[3322052]["OptionFunc3312"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>12"
tItem[3322052]["OptionFunc3313"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>13"
tItem[3322052]["OptionFunc3314"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>14"
tItem[3322052]["OptionFunc3315"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>15"
tItem[3322052]["OptionFunc3316"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>16"
tItem[3322052]["OptionFunc3317"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>17"
tItem[3322052]["OptionFunc3318"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>18"
tItem[3322052]["OptionFunc3319"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>19"
tItem[3322052]["OptionFunc3320"] = "ClothingPromotionForAnima_RewardCoatPack</N>3322052</N>2</N>20"


-- 南宫至宝礼盒
tItem[3313781] = tItem[3313781] or {}
tItem[3313781]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tClothingPromotionForAnima_RewardItemNanGong[nItemId][2]) then
		Sys_MsgBox(tClothingPromotionForAnima_Text["Sys_Msg"]["FullSpaceGet"])
		return
	end
	RewardTemplate_UseItemAndMsg(tClothingPromotionForAnima_RewardItemNanGong[nItemId][2])
	
end
tItem[3313782] = tItem[3313781]

---------------------------------上线自检---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func, ClothingPromotionForAnima_UserLogin)


