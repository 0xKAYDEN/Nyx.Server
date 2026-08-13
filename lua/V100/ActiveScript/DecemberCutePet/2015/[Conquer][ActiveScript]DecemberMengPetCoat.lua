------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]12月萌宠外套活动
--Purpose:	12月萌宠外套活动
--Creator: 	郑鋆
--Created:	2015/11/27
------------------------------------------------------------------------------------

-- 命名前缀
-- DecemberMengPetCoat_

-- 掩码说明
-- 139,40	是否首次对白
-- 139,41	是否领取过喵福袋 = 1表示领取过
-- 139,42	通喵术技能等级
-- 139,43	通喵术技能当前成长值
-- 139,44	屏蔽喵薄荷防晒霜确认扣款提示
-- 139,45	屏蔽喵喵美肤身体乳确认扣款提示
-- 139,46	上线获得背包信
-- 139,47	活动期间使用正气令额外获得2个普通养成道具（碎片）(每天限1次)
-- 139,48	活动期间使用卓越功勋礼包额外获得3个普通养成道具（碎片）(每天限1次)
-- 139,58	记录玩家领取过几次5阶每1000点成长值奖励

-- 常量表
local tDecemberMengPetCoat_Constant = {}
	-- 活动时间
	tDecemberMengPetCoat_Constant["BeforeActivityTime"] = "2015-12-01 00:00 2016-04-13 23:59"
	tDecemberMengPetCoat_Constant["ActivityTime"] = "2016-04-14 00:00 2016-04-27 23:59"

	-- 等级
	tDecemberMengPetCoat_Constant["Metempsychosis"] = 0
	tDecemberMengPetCoat_Constant["Level"] = 100
	
	-- 通喵术
	tDecemberMengPetCoat_Constant["MagicType"] = 12610
	
	-- 顶级技能等级
	tDecemberMengPetCoat_Constant["MaxLev"] = 5
	-- 每天每人怪物掉落的上限
	tDecemberMengPetCoat_Constant["MaxDrop"] = 5
	tDecemberMengPetCoat_Constant["BaseValue"] = 1000
	
-- stc掩码
local tDecemberMengPetCoat_Stc = {}
	tDecemberMengPetCoat_Stc["EventType"] = 139
	tDecemberMengPetCoat_Stc["DataType"] = {}
	tDecemberMengPetCoat_Stc["DataType"][1] = 40
	tDecemberMengPetCoat_Stc["DataType"][2] = 41
	tDecemberMengPetCoat_Stc["DataType"][3] = 42
	tDecemberMengPetCoat_Stc["DataType"][4] = 43
	tDecemberMengPetCoat_Stc["DataType"][5] = 44
	tDecemberMengPetCoat_Stc["DataType"][6] = 45
	tDecemberMengPetCoat_Stc["DataType"][7] = 58
	-- 新增掩码，每次掉落时掩码+1，这个掩码值≥5时走假概率，同时值-5（走真概率不减）				
	tDecemberMengPetCoat_Stc["DataType"][8] = 95
	tDecemberMengPetCoat_Stc["MaxData"] = 105
	tDecemberMengPetCoat_Stc["Data"] = -5

-- 物品ID
local tDecemberMengPetCoat_Item = {}	
	-- 喵福袋
	tDecemberMengPetCoat_Item["MeowBag"] = 3007996
	-- 喵薄荷防晒霜
	tDecemberMengPetCoat_Item["MintSunscreen"] = 3007994
	-- 喵喵美肤身体乳
	tDecemberMengPetCoat_Item["SkinLotion"] = 3007995
	-- 7天武器外套（碎片）
	tDecemberMengPetCoat_Item["7DaysWeapon"] = 3008038
	-- 7天时装外套（碎片）
	tDecemberMengPetCoat_Item["7DaysFashion"] = 3008039	
	-- 7天坐骑外套（碎片）	
	tDecemberMengPetCoat_Item["7DaysMount"] = 3008040
	-- 7天武器外套礼包
	tDecemberMengPetCoat_Item["7DaysWeaponPackage"] = 3008041
	-- 7天时装外套礼包
	tDecemberMengPetCoat_Item["7DaysFashionPackage"] = 3008042
	-- 7天坐骑外套礼包
	tDecemberMengPetCoat_Item["7DaysMountPackage"] = 3008043
	-- 30天武器外套礼包（碎片）
	tDecemberMengPetCoat_Item["30DaysWeapon"] = 3008044
	-- 永久时装外套（碎片）
	tDecemberMengPetCoat_Item["PermanentFashion"] = 3008045
	-- 永久坐骑外套（碎片）	
	tDecemberMengPetCoat_Item["PermanentMount"] = 3008046
	-- 萌宠洗赠道具（碎片）	
	tDecemberMengPetCoat_Item["MengPetWash"] = 3007985
	-- 萌宠光效道具（碎片）	
	tDecemberMengPetCoat_Item["SproutLightEffect"] = 3007986
	-- 萌宠发型	
	tDecemberMengPetCoat_Item["MengPetHair"] = 3007997
	-- 喵薄荷
	tDecemberMengPetCoat_Item["MeowMint"] = 3007993

-- log说明
local tDecemberMengPetCoat_Log = {}
	tDecemberMengPetCoat_Log["Cultivate2"] = "0,0,0,0,12000273,1[4],%d,1"
	tDecemberMengPetCoat_Log["Cultivate3"] = "0,0,0,0,12000273,1[5],%d,1"
	tDecemberMengPetCoat_Log["Cultivate4"] = "0,0,0,0,12000273,1[6],%d,1"
	tDecemberMengPetCoat_Log["Cultivate5"] = "0,0,0,0,12000273,1[7],%d,1"
	tDecemberMengPetCoat_Log["GrowthValueReward"] = "0,0,0,0,12000273,1[8],%d,1"
	tDecemberMengPetCoat_Log["RandomReward"] = "0,0,0,0,12000273,1[9],%d,1"
	tDecemberMengPetCoat_Log["BrightVersion"] = "0,0,%d,%d,12000273,1[9],%d,1"
	tDecemberMengPetCoat_Log["Recovery7Days"] = "0,0,%d,%d,12000273,1[10],%d,%d"
	tDecemberMengPetCoat_Log["RecoveryFashion"] = "0,0,%d,%d,12000273,1[11],%d,%d"
	tDecemberMengPetCoat_Log["RecoveryMount"] = "0,0,%d,%d,12000273,1[12],%d,%d"
	
	tDecemberMengPetCoat_Log["Exp"] = "0,0,7902,1,12000273,1[1],4,30"
	tDecemberMengPetCoat_Log["Practice"] = "0,0,7902,1,12000273,1[1],6,15"
	tDecemberMengPetCoat_Log["Blessing"] = "0,0,7902,1,12000273,1[1],5,6"
	tDecemberMengPetCoat_Log["AddItem"] = "0,0,7902,1,12000273,1[1],%d,1"
	
-- 兑换外套【璀璨版】
local tDecemberMengPetCoat_BrightVersion = {}
	tDecemberMengPetCoat_BrightVersion[18930] = {}
	tDecemberMengPetCoat_BrightVersion[18930]["NeedItem"] = 193555
	tDecemberMengPetCoat_BrightVersion[18930]["RewardItem"] = 193565
	tDecemberMengPetCoat_BrightVersion[18930]["ItemAttr"] = "0 1 0 0 0 0 0 1"
	tDecemberMengPetCoat_BrightVersion[18930]["OtherItem"] = 3008024
	tDecemberMengPetCoat_BrightVersion[18930]["MsgBox"] = "MeowGini"
	tDecemberMengPetCoat_BrightVersion[18930]["ServerMsg"] = "ServerMeowGini"
	tDecemberMengPetCoat_BrightVersion[18930]["EmoneyLog"] = "250	4037	0	0	1	"

	tDecemberMengPetCoat_BrightVersion[18931] = {}
	tDecemberMengPetCoat_BrightVersion[18931]["NeedItem"] = 200543
	tDecemberMengPetCoat_BrightVersion[18931]["RewardItem"] = 200544
	tDecemberMengPetCoat_BrightVersion[18931]["ItemAttr"] = "0 1 0 0 0 0 0 1"
	tDecemberMengPetCoat_BrightVersion[18931]["MsgBox"] = "GeneralMeow"
	tDecemberMengPetCoat_BrightVersion[18931]["ServerMsg"] = "ServerGeneralMeow"
	tDecemberMengPetCoat_BrightVersion[18931]["EmoneyLog"] = "250	4043	0	0	1	"

-- 升阶经验跟奖励奖励
local tDecemberMengPetCoat_AscendOrder = {}	
	tDecemberMengPetCoat_AscendOrder[1] = {}
	tDecemberMengPetCoat_AscendOrder[1]["Exp"] = 500
	tDecemberMengPetCoat_AscendOrder[1]["ItemId"] = tDecemberMengPetCoat_Item["30DaysWeapon"]
	tDecemberMengPetCoat_AscendOrder[1]["ItemAttr"] = "0 3"
	
	tDecemberMengPetCoat_AscendOrder[2] = {}
	tDecemberMengPetCoat_AscendOrder[2]["Exp"] = 1500
	tDecemberMengPetCoat_AscendOrder[2]["ItemId"] = tDecemberMengPetCoat_Item["PermanentFashion"]
	tDecemberMengPetCoat_AscendOrder[2]["ItemAttr"] = "0 3"
	
	tDecemberMengPetCoat_AscendOrder[3] = {}
	tDecemberMengPetCoat_AscendOrder[3]["Exp"] = 3000
	tDecemberMengPetCoat_AscendOrder[3]["ItemId"] = tDecemberMengPetCoat_Item["PermanentMount"]
	tDecemberMengPetCoat_AscendOrder[3]["ItemAttr"] = "0 3"
	
	tDecemberMengPetCoat_AscendOrder[4] = {}
	tDecemberMengPetCoat_AscendOrder[4]["Exp"] = 5000
	tDecemberMengPetCoat_AscendOrder[4]["ItemId"] = tDecemberMengPetCoat_Item["MengPetWash"]
	tDecemberMengPetCoat_AscendOrder[4]["ItemAttr"] = "0 5"
	
	tDecemberMengPetCoat_AscendOrder[5] = {}
	tDecemberMengPetCoat_AscendOrder[5]["Exp"] = 0
	tDecemberMengPetCoat_AscendOrder[5]["ItemId"] = tDecemberMengPetCoat_Item["SkinLotion"]
	tDecemberMengPetCoat_AscendOrder[5]["ItemAttr"] = "0 1"
	
-- 送保养品的判断
local tDecemberMengPetCoat_Judge = {}
	-- 送你1瓶喵薄荷防晒霜！
	tDecemberMengPetCoat_Judge[1] = {}
	---------- 上交的物品ID
	tDecemberMengPetCoat_Judge[1]["ItemId"] = tDecemberMengPetCoat_Item["MintSunscreen"]
	---------- 上交的物品数量
	tDecemberMengPetCoat_Judge[1]["ItemNum"] = 1
	---------- 没有相关任务物品时的索引
	tDecemberMengPetCoat_Judge[1]["NoItemIndex"] = "3-4"
	---------- 需要的背包空间
	tDecemberMengPetCoat_Judge[1]["Space"] = 2
	---------- 背包满时提示的索引
	tDecemberMengPetCoat_Judge[1]["FullIndex"] = "3-3"
	---------- 没有任务物品时需要花费的天石
	tDecemberMengPetCoat_Judge[1]["Emoney"] = 15
	---------- 花费天石的二次确认索引
	tDecemberMengPetCoat_Judge[1]["Confirm"] = "3-5"
	---------- 奖励的概率索引编号
	tDecemberMengPetCoat_Judge[1]["RandomIndex"] = 1
	---------- 抽奖的次数
	tDecemberMengPetCoat_Judge[1]["CycleTimes"] = 1
	---------- 对应的成长值
	tDecemberMengPetCoat_Judge[1]["GrowthValue"] = 15
	tDecemberMengPetCoat_Judge[1]["Effect"] = "angelwing"
	
	tDecemberMengPetCoat_Judge[1]["NoUpgradeIndex"] = {}
	tDecemberMengPetCoat_Judge[1]["NoUpgradeIndex"][1] = "4-1"
	tDecemberMengPetCoat_Judge[1]["NoUpgradeIndex"][2] = "Text411"
	tDecemberMengPetCoat_Judge[1]["UpgradeIndex"] = {}
	tDecemberMengPetCoat_Judge[1]["UpgradeIndex"][1] = "4-2"
	tDecemberMengPetCoat_Judge[1]["UpgradeIndex"][2] = "Text421"
	tDecemberMengPetCoat_Judge[1]["CumulativeIndex"] = {}
	tDecemberMengPetCoat_Judge[1]["CumulativeIndex"][1] = "4-3"
	tDecemberMengPetCoat_Judge[1]["CumulativeIndex"][2] = "Text431"
	tDecemberMengPetCoat_Judge[1]["EmoneyLog"] = "250	4030	15	15	1	"
	
	-- 二次确认
	tDecemberMengPetCoat_Judge[1]["Shield"] = {}
	tDecemberMengPetCoat_Judge[1]["Shield"]["sIndex"] = "3-4"
	tDecemberMengPetCoat_Judge[1]["Shield"]["DataType"] = 44

	-- 送你1瓶喵喵美肤身体乳！
	tDecemberMengPetCoat_Judge[2] = {}
	tDecemberMengPetCoat_Judge[2]["ItemId"] = tDecemberMengPetCoat_Item["SkinLotion"]
	tDecemberMengPetCoat_Judge[2]["ItemNum"] = 1
	tDecemberMengPetCoat_Judge[2]["NoItemIndex"] = "5-2"
	tDecemberMengPetCoat_Judge[2]["Space"] = 2
	tDecemberMengPetCoat_Judge[2]["FullIndex"] = "5-1"
	tDecemberMengPetCoat_Judge[2]["Emoney"] = 88
	tDecemberMengPetCoat_Judge[2]["Confirm"] = "5-3"
	tDecemberMengPetCoat_Judge[2]["RandomIndex"] = 2
	tDecemberMengPetCoat_Judge[2]["CycleTimes"] = 1
	tDecemberMengPetCoat_Judge[2]["GrowthValue"] = 100
	tDecemberMengPetCoat_Judge[2]["Effect"] = "gam_buss_ap"
	
	tDecemberMengPetCoat_Judge[2]["NoUpgradeIndex"] = {}
	tDecemberMengPetCoat_Judge[2]["NoUpgradeIndex"][1] = "6-1"
	tDecemberMengPetCoat_Judge[2]["NoUpgradeIndex"][2] = "Text611"
	tDecemberMengPetCoat_Judge[2]["UpgradeIndex"] = {}
	tDecemberMengPetCoat_Judge[2]["UpgradeIndex"][1] = "6-2"
	tDecemberMengPetCoat_Judge[2]["UpgradeIndex"][2] = "Text621"
	tDecemberMengPetCoat_Judge[2]["CumulativeIndex"] = {}
	tDecemberMengPetCoat_Judge[2]["CumulativeIndex"][1] = "6-3"
	tDecemberMengPetCoat_Judge[2]["CumulativeIndex"][2] = "Text631"
	tDecemberMengPetCoat_Judge[2]["EmoneyLog"] = "250	4031	88	88	1	"
	
	-- 二次确认
	tDecemberMengPetCoat_Judge[2]["Shield"] = {}
	tDecemberMengPetCoat_Judge[2]["Shield"]["sIndex"] = "5-2"
	tDecemberMengPetCoat_Judge[2]["Shield"]["DataType"] = 45

	-- 送你10瓶喵喵美肤身体乳！
	tDecemberMengPetCoat_Judge[3] = {}
	tDecemberMengPetCoat_Judge[3]["ItemId"] = tDecemberMengPetCoat_Item["SkinLotion"]
	tDecemberMengPetCoat_Judge[3]["ItemNum"] = 10
	tDecemberMengPetCoat_Judge[3]["NoItemIndex"] = "7-2"
	tDecemberMengPetCoat_Judge[3]["Space"] = 7
	tDecemberMengPetCoat_Judge[3]["FullIndex"] = "7-1"
	tDecemberMengPetCoat_Judge[3]["Emoney"] = 880
	tDecemberMengPetCoat_Judge[3]["Confirm"] = "7-3"
	tDecemberMengPetCoat_Judge[3]["RandomIndex"] = 2
	tDecemberMengPetCoat_Judge[3]["CycleTimes"] = 10
	tDecemberMengPetCoat_Judge[3]["GrowthValue"] = 1000
	tDecemberMengPetCoat_Judge[3]["Effect"] = "gam_buss_ap"
	
	tDecemberMengPetCoat_Judge[3]["NoUpgradeIndex"] = {}
	tDecemberMengPetCoat_Judge[3]["NoUpgradeIndex"][1] = "8-1"
	tDecemberMengPetCoat_Judge[3]["NoUpgradeIndex"][2] = "Text811"
	tDecemberMengPetCoat_Judge[3]["UpgradeIndex"] = {}
	tDecemberMengPetCoat_Judge[3]["UpgradeIndex"][1] = "8-2"
	tDecemberMengPetCoat_Judge[3]["UpgradeIndex"][2] = "Text822"
	tDecemberMengPetCoat_Judge[3]["CumulativeIndex"] = {}
	tDecemberMengPetCoat_Judge[3]["CumulativeIndex"][1] = "8-3"
	tDecemberMengPetCoat_Judge[3]["CumulativeIndex"][2] = "Text831"
	tDecemberMengPetCoat_Judge[3]["EmoneyLog"] = "250	4032	880	880	1	"
	
	-- 二次确认
	tDecemberMengPetCoat_Judge[3]["Shield"] = {}
	tDecemberMengPetCoat_Judge[3]["Shield"]["sIndex"] = "7-2"
	tDecemberMengPetCoat_Judge[3]["Shield"]["DataType"] = 45

-- 养成奖励
local tDecemberMengPetCoat_DevelopRewards = {}
	tDecemberMengPetCoat_DevelopRewards[1] = {}
	tDecemberMengPetCoat_DevelopRewards[1]["ItemChanceSum"] = 10000

	tDecemberMengPetCoat_DevelopRewards[1][1] = {}
	tDecemberMengPetCoat_DevelopRewards[1][1]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[1][1]["ItemChance"] = 1800
	tDecemberMengPetCoat_DevelopRewards[1][1]["Item_1"] = tDecemberMengPetCoat_Item["7DaysWeapon"]

	tDecemberMengPetCoat_DevelopRewards[1][2] = {}
	tDecemberMengPetCoat_DevelopRewards[1][2]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[1][2]["ItemChance"] = 1500
	tDecemberMengPetCoat_DevelopRewards[1][2]["Item_1"] = tDecemberMengPetCoat_Item["7DaysFashion"]

	tDecemberMengPetCoat_DevelopRewards[1][3] = {}
	tDecemberMengPetCoat_DevelopRewards[1][3]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[1][3]["ItemChance"] = 1200
	tDecemberMengPetCoat_DevelopRewards[1][3]["Item_1"] = tDecemberMengPetCoat_Item["7DaysMount"]

	tDecemberMengPetCoat_DevelopRewards[1][4] = {}
	tDecemberMengPetCoat_DevelopRewards[1][4]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[1][4]["ItemChance"] = 700
	tDecemberMengPetCoat_DevelopRewards[1][4]["Item_1"] = tDecemberMengPetCoat_Item["7DaysWeaponPackage"]

	tDecemberMengPetCoat_DevelopRewards[1][5] = {}
	tDecemberMengPetCoat_DevelopRewards[1][5]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[1][5]["ItemChance"] = 500
	tDecemberMengPetCoat_DevelopRewards[1][5]["Item_1"] = tDecemberMengPetCoat_Item["7DaysFashionPackage"]

	tDecemberMengPetCoat_DevelopRewards[1][6] = {}
	tDecemberMengPetCoat_DevelopRewards[1][6]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[1][6]["ItemChance"] = 400
	tDecemberMengPetCoat_DevelopRewards[1][6]["Item_1"] = tDecemberMengPetCoat_Item["7DaysMountPackage"]

	tDecemberMengPetCoat_DevelopRewards[1][7] = {}
	tDecemberMengPetCoat_DevelopRewards[1][7]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[1][7]["ItemChance"] = 1500
	tDecemberMengPetCoat_DevelopRewards[1][7]["Item_1"] = tDecemberMengPetCoat_Item["30DaysWeapon"]

	tDecemberMengPetCoat_DevelopRewards[1][8] = {}
	tDecemberMengPetCoat_DevelopRewards[1][8]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[1][8]["ItemChance"] = 1200
	tDecemberMengPetCoat_DevelopRewards[1][8]["Item_1"] = tDecemberMengPetCoat_Item["PermanentFashion"]

	tDecemberMengPetCoat_DevelopRewards[1][9] = {}
	tDecemberMengPetCoat_DevelopRewards[1][9]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[1][9]["ItemChance"] = 900
	tDecemberMengPetCoat_DevelopRewards[1][9]["Item_1"] = tDecemberMengPetCoat_Item["PermanentMount"]

	tDecemberMengPetCoat_DevelopRewards[1][10] = {}
	tDecemberMengPetCoat_DevelopRewards[1][10]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[1][10]["ItemChance"] = 200
	tDecemberMengPetCoat_DevelopRewards[1][10]["Item_1"] = tDecemberMengPetCoat_Item["MengPetWash"]
	
	tDecemberMengPetCoat_DevelopRewards[1][11] = {}
	tDecemberMengPetCoat_DevelopRewards[1][11]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[1][11]["ItemChance"] = 100
	tDecemberMengPetCoat_DevelopRewards[1][11]["Item_1"] = tDecemberMengPetCoat_Item["SproutLightEffect"]

	
	tDecemberMengPetCoat_DevelopRewards[2] = {}
	tDecemberMengPetCoat_DevelopRewards[2]["ItemChanceSum"] = 10000

	tDecemberMengPetCoat_DevelopRewards[2][1] = {}
	tDecemberMengPetCoat_DevelopRewards[2][1]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[2][1]["ItemChance"] = 3000
	tDecemberMengPetCoat_DevelopRewards[2][1]["Item_1"] = tDecemberMengPetCoat_Item["30DaysWeapon"]

	tDecemberMengPetCoat_DevelopRewards[2][2] = {}
	tDecemberMengPetCoat_DevelopRewards[2][2]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[2][2]["ItemChance"] = 2400
	tDecemberMengPetCoat_DevelopRewards[2][2]["Item_1"] = tDecemberMengPetCoat_Item["PermanentFashion"]

	tDecemberMengPetCoat_DevelopRewards[2][3] = {}
	tDecemberMengPetCoat_DevelopRewards[2][3]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[2][3]["ItemChance"] = 1800
	tDecemberMengPetCoat_DevelopRewards[2][3]["Item_1"] = tDecemberMengPetCoat_Item["PermanentMount"]

	tDecemberMengPetCoat_DevelopRewards[2][4] = {}
	tDecemberMengPetCoat_DevelopRewards[2][4]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[2][4]["ItemChance"] = 1870
	tDecemberMengPetCoat_DevelopRewards[2][4]["Item_1"] = tDecemberMengPetCoat_Item["MengPetWash"]

	tDecemberMengPetCoat_DevelopRewards[2][5] = {}
	tDecemberMengPetCoat_DevelopRewards[2][5]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[2][5]["ItemChance"] = 900
	tDecemberMengPetCoat_DevelopRewards[2][5]["Item_1"] = tDecemberMengPetCoat_Item["SproutLightEffect"]

	tDecemberMengPetCoat_DevelopRewards[2][6] = {}
	tDecemberMengPetCoat_DevelopRewards[2][6]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[2][6]["ItemChance"] = 30
	tDecemberMengPetCoat_DevelopRewards[2][6]["Item_1"] = tDecemberMengPetCoat_Item["MengPetHair"]

	tDecemberMengPetCoat_DevelopRewards[7902] = {}
	tDecemberMengPetCoat_DevelopRewards[7902]["ItemChanceSum"] = 10000

	tDecemberMengPetCoat_DevelopRewards[7902][1] = {}
	tDecemberMengPetCoat_DevelopRewards[7902][1]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[7902][1]["ItemChance"] = 3000
	tDecemberMengPetCoat_DevelopRewards[7902][1]["Item_1"] = 30
	tDecemberMengPetCoat_DevelopRewards[7902][1]["Practice"] = 15
	tDecemberMengPetCoat_DevelopRewards[7902][1]["IsExp"] = true

	tDecemberMengPetCoat_DevelopRewards[7902][2] = {}
	tDecemberMengPetCoat_DevelopRewards[7902][2]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[7902][2]["ItemChance"] = 2500
	tDecemberMengPetCoat_DevelopRewards[7902][2]["Item_1"] = 15
	tDecemberMengPetCoat_DevelopRewards[7902][2]["IsPractice"] = true

	tDecemberMengPetCoat_DevelopRewards[7902][3] = {}
	tDecemberMengPetCoat_DevelopRewards[7902][3]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[7902][3]["ItemChance"] = 2500
	tDecemberMengPetCoat_DevelopRewards[7902][3]["Item_1"] = 6
	tDecemberMengPetCoat_DevelopRewards[7902][3]["IsBlessing"] = true

	tDecemberMengPetCoat_DevelopRewards[7902][4] = {}
	tDecemberMengPetCoat_DevelopRewards[7902][4]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[7902][4]["ItemChance"] = 500
	tDecemberMengPetCoat_DevelopRewards[7902][4]["Item_1"] = tDecemberMengPetCoat_Item["MeowMint"]

	tDecemberMengPetCoat_DevelopRewards[7902][5] = {}
	tDecemberMengPetCoat_DevelopRewards[7902][5]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[7902][5]["ItemChance"] = 50
	tDecemberMengPetCoat_DevelopRewards[7902][5]["Item_1"] = tDecemberMengPetCoat_Item["MintSunscreen"]

	tDecemberMengPetCoat_DevelopRewards[7902][6] = {}
	tDecemberMengPetCoat_DevelopRewards[7902][6]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[7902][6]["ItemChance"] = 500
	tDecemberMengPetCoat_DevelopRewards[7902][6]["Item_1"] = tDecemberMengPetCoat_Item["7DaysWeapon"]
	
	tDecemberMengPetCoat_DevelopRewards[7902][7] = {}
	tDecemberMengPetCoat_DevelopRewards[7902][7]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[7902][7]["ItemChance"] = 450
	tDecemberMengPetCoat_DevelopRewards[7902][7]["Item_1"] = tDecemberMengPetCoat_Item["7DaysFashion"]
	
	tDecemberMengPetCoat_DevelopRewards[7902][8] = {}
	tDecemberMengPetCoat_DevelopRewards[7902][8]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[7902][8]["ItemChance"] = 400
	tDecemberMengPetCoat_DevelopRewards[7902][8]["Item_1"] = tDecemberMengPetCoat_Item["7DaysMount"]
	
	tDecemberMengPetCoat_DevelopRewards[7902][9] = {}
	tDecemberMengPetCoat_DevelopRewards[7902][9]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[7902][9]["ItemChance"] = 50
	tDecemberMengPetCoat_DevelopRewards[7902][9]["Item_1"] = tDecemberMengPetCoat_Item["30DaysWeapon"]
	
	tDecemberMengPetCoat_DevelopRewards[7902][10] = {}
	tDecemberMengPetCoat_DevelopRewards[7902][10]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[7902][10]["ItemChance"] = 30
	tDecemberMengPetCoat_DevelopRewards[7902][10]["Item_1"] = tDecemberMengPetCoat_Item["PermanentFashion"]
	
	tDecemberMengPetCoat_DevelopRewards[7902][11] = {}
	tDecemberMengPetCoat_DevelopRewards[7902][11]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[7902][11]["ItemChance"] = 20
	tDecemberMengPetCoat_DevelopRewards[7902][11]["Item_1"] = tDecemberMengPetCoat_Item["PermanentMount"]
	
	-- 假的养成概率
	tDecemberMengPetCoat_DevelopRewards[3] = {}
	tDecemberMengPetCoat_DevelopRewards[3]["ItemChanceSum"] = 10000

	tDecemberMengPetCoat_DevelopRewards[3][1] = {}
	tDecemberMengPetCoat_DevelopRewards[3][1]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[3][1]["ItemChance"] = 2500
	tDecemberMengPetCoat_DevelopRewards[3][1]["Item_1"] = tDecemberMengPetCoat_Item["7DaysWeapon"]

	tDecemberMengPetCoat_DevelopRewards[3][2] = {}
	tDecemberMengPetCoat_DevelopRewards[3][2]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[3][2]["ItemChance"] = 2300
	tDecemberMengPetCoat_DevelopRewards[3][2]["Item_1"] = tDecemberMengPetCoat_Item["7DaysFashion"]

	tDecemberMengPetCoat_DevelopRewards[3][3] = {}
	tDecemberMengPetCoat_DevelopRewards[3][3]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[3][3]["ItemChance"] = 2100
	tDecemberMengPetCoat_DevelopRewards[3][3]["Item_1"] = tDecemberMengPetCoat_Item["7DaysMount"]

	tDecemberMengPetCoat_DevelopRewards[3][4] = {}
	tDecemberMengPetCoat_DevelopRewards[3][4]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[3][4]["ItemChance"] = 700
	tDecemberMengPetCoat_DevelopRewards[3][4]["Item_1"] = tDecemberMengPetCoat_Item["7DaysWeaponPackage"]

	tDecemberMengPetCoat_DevelopRewards[3][5] = {}
	tDecemberMengPetCoat_DevelopRewards[3][5]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[3][5]["ItemChance"] = 500
	tDecemberMengPetCoat_DevelopRewards[3][5]["Item_1"] = tDecemberMengPetCoat_Item["7DaysFashionPackage"]

	tDecemberMengPetCoat_DevelopRewards[3][6] = {}
	tDecemberMengPetCoat_DevelopRewards[3][6]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[3][6]["ItemChance"] = 400
	tDecemberMengPetCoat_DevelopRewards[3][6]["Item_1"] = tDecemberMengPetCoat_Item["7DaysMountPackage"]

	tDecemberMengPetCoat_DevelopRewards[3][7] = {}
	tDecemberMengPetCoat_DevelopRewards[3][7]["RandomItemChanceType"] = 2
	tDecemberMengPetCoat_DevelopRewards[3][7]["ItemChance"] = 1500
	tDecemberMengPetCoat_DevelopRewards[3][7]["Item_1"] = tDecemberMengPetCoat_Item["30DaysWeapon"]
	
-- 存储玩家当前选择兑换的是哪个七天时效的礼包(以玩家的ID为下标索引)
local tDecemberMengPetCoat_Register = {}

-- 兑换养成物品
local tDecemberMengPetCoat_ExchangeGifts = {}
	tDecemberMengPetCoat_ExchangeGifts[3008041] = {}
	tDecemberMengPetCoat_ExchangeGifts[3008041]["NoItem"] = "2-2"
	tDecemberMengPetCoat_ExchangeGifts[3008041]["Success"] = "2-3"
	tDecemberMengPetCoat_ExchangeGifts[3008041]["ExchangeNum"] = 1
	tDecemberMengPetCoat_ExchangeGifts[3008041]["ExchangeId"] = 3007994
	tDecemberMengPetCoat_ExchangeGifts[3008041]["ExchangeText"] = "Text231"
	tDecemberMengPetCoat_ExchangeGifts[3008041]["Log"] = tDecemberMengPetCoat_Log["Recovery7Days"]

	tDecemberMengPetCoat_ExchangeGifts[3008042] = {}
	tDecemberMengPetCoat_ExchangeGifts[3008042]["NoItem"] = "2-2"
	tDecemberMengPetCoat_ExchangeGifts[3008042]["Success"] = "2-3"
	tDecemberMengPetCoat_ExchangeGifts[3008042]["ExchangeNum"] = 1
	tDecemberMengPetCoat_ExchangeGifts[3008042]["ExchangeId"] = 3007994
	tDecemberMengPetCoat_ExchangeGifts[3008042]["ExchangeText"] = "Text231"
	tDecemberMengPetCoat_ExchangeGifts[3008042]["Log"] = tDecemberMengPetCoat_Log["Recovery7Days"]

	tDecemberMengPetCoat_ExchangeGifts[3008043] = {}
	tDecemberMengPetCoat_ExchangeGifts[3008043]["NoItem"] = "2-2"
	tDecemberMengPetCoat_ExchangeGifts[3008043]["Success"] = "2-3"
	tDecemberMengPetCoat_ExchangeGifts[3008043]["ExchangeNum"] = 1
	tDecemberMengPetCoat_ExchangeGifts[3008043]["ExchangeId"] = 3007994
	tDecemberMengPetCoat_ExchangeGifts[3008043]["ExchangeText"] = "Text231"
	tDecemberMengPetCoat_ExchangeGifts[3008043]["Log"] = tDecemberMengPetCoat_Log["Recovery7Days"]

	tDecemberMengPetCoat_ExchangeGifts[193545] = {}
	tDecemberMengPetCoat_ExchangeGifts[193545]["NoItem"] = "3-2"
	tDecemberMengPetCoat_ExchangeGifts[193545]["Success"] = "3-3"
	tDecemberMengPetCoat_ExchangeGifts[193545]["ExchangeNum"] = 3
	tDecemberMengPetCoat_ExchangeGifts[193545]["ExchangeId"] = 3007995
	tDecemberMengPetCoat_ExchangeGifts[193545]["ExchangeText"] = "Text331"
	tDecemberMengPetCoat_ExchangeGifts[193545]["Log"] = tDecemberMengPetCoat_Log["RecoveryFashion"]

	tDecemberMengPetCoat_ExchangeGifts[200542] = {}
	tDecemberMengPetCoat_ExchangeGifts[200542]["NoItem"] = "4-2"
	tDecemberMengPetCoat_ExchangeGifts[200542]["Success"] = "4-3"
	tDecemberMengPetCoat_ExchangeGifts[200542]["ExchangeNum"] = 5
	tDecemberMengPetCoat_ExchangeGifts[200542]["ExchangeId"] = 3007995
	tDecemberMengPetCoat_ExchangeGifts[200542]["ExchangeText"] = "Text431"
	tDecemberMengPetCoat_ExchangeGifts[200542]["Log"] = tDecemberMengPetCoat_Log["RecoveryMount"]

-- 10连抽的奖励文字索引
local tDecemberMengPetCoat_10EvenPumping = {812,813,814,815,816,817,818,819,8110,8111}
	
-----------------------------------------------逻辑部分--------------------------------------------
-- 领悟通喵术。
function DecemberMengPetCoat_LearnSkill()
	local nMagicType = tDecemberMengPetCoat_Constant["MagicType"]
	
	if not Magic_ChkType(nMagicType) then
		-- 学习技能
		if Magic_Learn(nMagicType) then
			local nEvent = tDecemberMengPetCoat_Stc["EventType"]
			local nType = tDecemberMengPetCoat_Stc["DataType"][3]
			local nData = Get_UserStatisticValue(nEvent,nType)
		
			if nData == 0 then
				Task_SetStatistic(nEvent,nType,1,1)
			else
				for i = 2,nData do
					-- 技能升级
					Magic_UpLev(tDecemberMengPetCoat_Constant["MagicType"])
				end
			end
		
			User_EffectAdd("self","gam_buss_ap")
			-- 提示
			User_TalkChannel2005(tDecemberMengPetCoat_Text["LearnSkill"])
		end
	end
end

-- 掩码清零
function DecemberMengPetCoat_Reset()
	local nEvent = tDecemberMengPetCoat_Stc["EventType"]
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,tDecemberMengPetCoat_Stc["DataType"][2],1,4) then
		Task_SetStatistic(nEvent,tDecemberMengPetCoat_Stc["DataType"][2],0,1,0)
		Task_SetStcTimestamp(nEvent,tDecemberMengPetCoat_Stc["DataType"][2],0,0)
	end
end

-- 领取喵福袋。
function DecemberMengPetCoat_RewardMeowBag()
	-- 掩码清零
	DecemberMengPetCoat_Reset()
	
	local nEvent = tDecemberMengPetCoat_Stc["EventType"]
	local nType = tDecemberMengPetCoat_Stc["DataType"][2]
	
	-- 判断是否领取过
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		return
	end

	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		return
	end
	
	-- 置掩码
	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	-- 每天上线这个掩码值也-5，即给玩家每天1次走真概率的机会
	Task_AddStatistic(nEvent,tDecemberMengPetCoat_Stc["DataType"][8],tDecemberMengPetCoat_Stc["Data"],1)

	-- 给物品
	Item_AddItem(tDecemberMengPetCoat_Item["MeowBag"],0,5)
	
	-- 打log
	Sys_SaveActionFestivalLog(string.format("0,0,0,0,12000273,1[9],%d,5",tDecemberMengPetCoat_Item["MeowBag"]))
	
	User_TalkChannel2005(tDecemberMengPetCoat_Text["MeowBags"])
end

-- 送你保养品
function DecemberMengPetCoat_SendProduct(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tDecemberMengPetCoat_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	
	local nEvent = tDecemberMengPetCoat_Stc["EventType"]
	local nType = tDecemberMengPetCoat_Stc["DataType"][3]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nGrowthValue = Get_UserStatisticValue(nEvent,tDecemberMengPetCoat_Stc["DataType"][4])

	if nData >= tDecemberMengPetCoat_Constant["MaxLev"] then
		tNpcGossip[nNpcId]["Text324"] = string.format(tDecemberMengPetCoat_Text[nNpcId]["Text324"],nGrowthValue)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
	else
		tNpcGossip[nNpcId]["Text313"] = string.format(tDecemberMengPetCoat_Text[nNpcId]["Text313"],nData)
		tNpcGossip[nNpcId]["Text314"] = string.format(tDecemberMengPetCoat_Text[nNpcId]["Text314"],nGrowthValue,tDecemberMengPetCoat_AscendOrder[nData]["Exp"])
		tNpcGossip[nNpcId]["Text315"] = string.format(tDecemberMengPetCoat_Text[nNpcId]["Text315"],tDecemberMengPetCoat_Text["Skill"][nData])

		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
end

-- 送保养品
function DecemberMengPetCoat_JudgeSend(nNpcId,nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tDecemberMengPetCoat_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	
	-- 判断背包空间
	local nSpace = tDecemberMengPetCoat_Judge[nIndex]["Space"]
	
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,tDecemberMengPetCoat_Judge[nIndex]["FullIndex"])
		return
	end

	local nItemId = tDecemberMengPetCoat_Judge[nIndex]["ItemId"]
	local nItemNum = tDecemberMengPetCoat_Judge[nIndex]["ItemNum"]
	
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		LinkNpcGossipFunc_New(nNpcId,tDecemberMengPetCoat_Judge[nIndex]["NoItemIndex"])
		return
	elseif Item_DelMulItem(nItemId,nItemId,nItemNum) then
		DecemberMengPetCoat_ToReward(nNpcId,nIndex)
	end
end

-- 二次确认
function DecemberMengPetCoat_Confirmat(nNpcId,nIndex)
	local nEvent = tDecemberMengPetCoat_Stc["EventType"]
	local nType = tDecemberMengPetCoat_Judge[nIndex]["Shield"]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		LinkNpcGossipFunc_New(nNpcId,tDecemberMengPetCoat_Judge[nIndex]["Confirm"])
	else
		DecemberMengPetCoat_JudgeEmoney(nNpcId,nIndex)
	end
end

-- 屏蔽确认扣款提示
function DecemberMengPetCoat_ShieldConfirm(nNpcId,nIndex)
	local nEvent = tDecemberMengPetCoat_Stc["EventType"]
	local nType = tDecemberMengPetCoat_Judge[nIndex]["Shield"]["DataType"]
	
	Task_SetStatistic(nEvent,nType,1,1)
	LinkNpcGossipFunc_New(nNpcId,tDecemberMengPetCoat_Judge[nIndex]["Shield"]["sIndex"])
end

-- 用天石买
function DecemberMengPetCoat_JudgeEmoney(nNpcId,nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tDecemberMengPetCoat_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	
	local nEmoney = Get_UserEMoney()
	
	-- 判断玩家身上天石数量是否满足
	if nEmoney < tDecemberMengPetCoat_Judge[nIndex]["Emoney"] then
		LinkNpcGossipFunc_New(nNpcId,"3-6")
		return
	end
	
	-- 扣天石
	User_AddEMoney(-tDecemberMengPetCoat_Judge[nIndex]["Emoney"])
	Sys_SaveEmoneyBuy(tDecemberMengPetCoat_Judge[nIndex]["EmoneyLog"])
	-- 给奖励
	DecemberMengPetCoat_ToReward(nNpcId,nIndex)
end

-- 给奖励
function DecemberMengPetCoat_ToReward(nNpcId,nIndex)
	local sIndex = ""
	
	-- 养成光效
	User_EffectAdd("self",tDecemberMengPetCoat_Judge[nIndex]["Effect"])
	
	-- 加养成值
	local nGrowthValue = tDecemberMengPetCoat_Judge[nIndex]["GrowthValue"]
	local nEvent = tDecemberMengPetCoat_Stc["EventType"]
	local nLevType = tDecemberMengPetCoat_Stc["DataType"][3]
	local nExpType = tDecemberMengPetCoat_Stc["DataType"][4]
	local nLev = Get_UserStatisticValue(nEvent,nLevType)
	local nExp = Get_UserStatisticValue(nEvent,nExpType)
	local nNowExp = nExp + nGrowthValue
	local sReward = ""
	local sUpLev = ""
	local sMany = ""

	if nLev >= tDecemberMengPetCoat_Constant["MaxLev"] then
		Task_SetStatistic(nEvent,nExpType,nNowExp,1)
		
		local nRewardType = tDecemberMengPetCoat_Stc["DataType"][7]
		local nValue = Get_UserStatisticValue(nEvent,nRewardType) * tDecemberMengPetCoat_Constant["BaseValue"]
		sIndex = "NoUpgradeIndex"
		
		-- 5星之后每1000点额外赠送
		if nNowExp - nValue >= tDecemberMengPetCoat_Constant["BaseValue"] then
			sIndex = "CumulativeIndex"
			Task_AddStatistic(nEvent,nRewardType,1,1)
			-- 给升阶奖励
			Item_AddNewItem(tDecemberMengPetCoat_AscendOrder[nLev]["ItemId"],tDecemberMengPetCoat_AscendOrder[nLev]["ItemAttr"])
			-- 打log
			Sys_SaveActionFestivalLog(string.format(tDecemberMengPetCoat_Log["GrowthValueReward"],tDecemberMengPetCoat_AscendOrder[nLev]["ItemId"]))
		end
	
	elseif nNowExp >= tDecemberMengPetCoat_AscendOrder[nLev]["Exp"] then
		nNowExp = nNowExp - tDecemberMengPetCoat_AscendOrder[nLev]["Exp"]
		Task_SetStatistic(nEvent,nLevType,nLev + 1,1)
		Task_SetStatistic(nEvent,nExpType,nNowExp,1)
		-- 技能升级
		Magic_UpLev(tDecemberMengPetCoat_Constant["MagicType"])
		-- 给升阶奖励
		Item_AddNewItem(tDecemberMengPetCoat_AscendOrder[nLev]["ItemId"],tDecemberMengPetCoat_AscendOrder[nLev]["ItemAttr"])
		sUpLev = tDecemberMengPetCoat_Text["Skill"][nLev]
		-- 打log
		Sys_SaveActionFestivalLog(string.format(tDecemberMengPetCoat_Log["Cultivate" .. nLev + 1],tDecemberMengPetCoat_AscendOrder[nLev]["ItemId"]))
		User_EffectAdd("self","zf2-e128")
		sIndex = "UpgradeIndex"
	else
		Task_SetStatistic(nEvent,nExpType,nNowExp,1)
		sIndex = "NoUpgradeIndex"
	end

	local nRandomIndex = tDecemberMengPetCoat_Judge[nIndex]["RandomIndex"]
	local nTimes = tDecemberMengPetCoat_Judge[nIndex]["CycleTimes"]
	
	-- 小抽这边判断掉落掩码是否大于5，大于5的走假概率
	if nIndex == 1 then
		local nFalseType = tDecemberMengPetCoat_Stc["DataType"][8]
		
		if Task_ChkStcValue(nEvent,nFalseType,">=",tDecemberMengPetCoat_Stc["MaxData"]) then
			nRandomIndex = 3
			Task_AddStatistic(nEvent,nFalseType,tDecemberMengPetCoat_Stc["Data"],1)
		end
	end
	
	-- 获得养成奖励
	for i = 1,nTimes do
		local nFalg,tAward = Probabil_RandomAward(tDecemberMengPetCoat_DevelopRewards,nRandomIndex)
		local nRewardItemId = tAward[1]["tAward"][1]["Item_1"]
		local sItemName = Get_ItemtypeName(nRewardItemId)
		
		-- 获得物品
		Item_AddItem(nRewardItemId)
		-- 打log
		Sys_SaveActionFestivalLog(string.format(tDecemberMengPetCoat_Log["RandomReward"],nRewardItemId))
		-- 给提示
		User_TalkChannel2005(string.format(tDecemberMengPetCoat_Text["RewardItem"],sItemName))
		sReward = string.format("%s%s%s",sReward,sMany,sItemName)
		sMany = ","
		
		if nIndex == 3 then
			tNpcGossip[nNpcId]["Text" .. tDecemberMengPetCoat_10EvenPumping[i]] = string.format(tDecemberMengPetCoat_Text[nNpcId]["Text" .. tDecemberMengPetCoat_10EvenPumping[i]],sItemName)
		end
	end
	
	-- 获得奖励的提示
	local sTextIndex = tDecemberMengPetCoat_Judge[nIndex][sIndex][2]
	local sContent = tDecemberMengPetCoat_Text[sIndex]
	
	-- 判断是单抽还是10连抽
	if nIndex == 3 then
		if sUpLev ~= nil then 
			tNpcGossip[nNpcId][sTextIndex] = string.format(tDecemberMengPetCoat_Text[nNpcId][sTextIndex],sUpLev)
			sContent = string.format(sContent,nGrowthValue,sReward,sUpLev)
		else
			sContent = string.format(sContent,nGrowthValue,sReward)
		end
	else
		if sUpLev ~= nil then
			tNpcGossip[nNpcId][sTextIndex] = string.format(tDecemberMengPetCoat_Text[nNpcId][sTextIndex],sReward,sUpLev)
			sContent = string.format(sContent,nGrowthValue,sReward,sUpLev)
		else
			tNpcGossip[nNpcId][sTextIndex] = string.format(tDecemberMengPetCoat_Text[nNpcId][sTextIndex],sReward)
			sContent = string.format(sContent,nGrowthValue,sReward)
		end
	end

	User_TalkChannel2005(sContent)
	LinkNpcGossipFunc_New(nNpcId,tDecemberMengPetCoat_Judge[nIndex][sIndex][1])
end

-- 兑换外套【璀璨版】
function DecemberMengPetCoat_BrightVersion(nNpcId)
	local nNeedItemId = tDecemberMengPetCoat_BrightVersion[nNpcId]["NeedItem"]
	
	if not Item_ChkMulItem(nNeedItemId,nNeedItemId,3) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	if Item_DelMulItem(nNeedItemId,nNeedItemId,3) then
		local nRewardItem = tDecemberMengPetCoat_BrightVersion[nNpcId]["RewardItem"]
		
		Item_AddNewItem(nRewardItem,tDecemberMengPetCoat_BrightVersion[nNpcId]["ItemAttr"])
		
		if tDecemberMengPetCoat_BrightVersion[nNpcId]["OtherItem"] ~= nil then
			Item_AddItem(tDecemberMengPetCoat_BrightVersion[nNpcId]["OtherItem"])
		end
		
		-- 打log
		Sys_SaveActionFestivalLog(string.format(tDecemberMengPetCoat_Log["BrightVersion"],nNeedItemId,3,nRewardItem))
		User_EffectAdd("self","zf2-e128")
		User_TalkChannel2005(tDecemberMengPetCoat_Text[tDecemberMengPetCoat_BrightVersion[nNpcId]["MsgBox"]])
		Sys_SaveEmoneyBuy(tDecemberMengPetCoat_BrightVersion[nNpcId]["EmoneyLog"])
		-- 全服公告
		local sIndex = tDecemberMengPetCoat_BrightVersion[nNpcId]["ServerMsg"]
		local sUserName = Get_UserName()
		Sys_SystemBroadcast(string.format(tDecemberMengPetCoat_Text[sIndex],sUserName))
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	end
end

-- 设置玩家当前选择要兑换哪个七天时效礼包
function DecemberMengPetCoat_SetRegister(nNpcId,nItemId)
	local nUserId = Get_UserId()
	
	tDecemberMengPetCoat_Register[nUserId] = nItemId
	
	tNpcGossip[nNpcId]["Text211"] = string.format(tDecemberMengPetCoat_Text[nNpcId]["Text211"],tDecemberMengPetCoat_Text[nItemId])
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end
	
-- 兑换礼包
function DecemberMengPetCoat_ExchangeGifts(nNpcId,nItemNum,nItemId)
	local nUserId = Get_UserId()
	nItemId = nItemId or tDecemberMengPetCoat_Register[nUserId]

	-- 判断物品是否满足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,1) then
		LinkNpcGossipFunc_New(nNpcId,tDecemberMengPetCoat_ExchangeGifts[nItemId]["NoItem"])
		return
	end
	
	if Item_DelMulItem(nItemId,nItemId,nItemNum,1) then
		local nExchangeId = tDecemberMengPetCoat_ExchangeGifts[nItemId]["ExchangeId"]
		local nExchangeNum = nItemNum * tDecemberMengPetCoat_ExchangeGifts[nItemId]["ExchangeNum"]
		
		Item_AddItem(nExchangeId,0,nExchangeNum)
		
		-- 打log
		Sys_SaveActionFestivalLog(string.format(tDecemberMengPetCoat_ExchangeGifts[nItemId]["Log"],nItemId,nItemNum,nExchangeId,nExchangeNum))
		User_EffectAdd("self","angelwing")
		local sText = tDecemberMengPetCoat_ExchangeGifts[nItemId]["ExchangeText"]
		tNpcGossip[nNpcId][sText] = string.format(tDecemberMengPetCoat_Text[nNpcId][sText],nExchangeNum)
		LinkNpcGossipFunc_New(nNpcId,tDecemberMengPetCoat_ExchangeGifts[nItemId]["Success"])
	end
end

-- 上线时清除付款确认的掩码
function DecemberMengPetCoat_Clear()
	-- 判断活动时间
	if not Sys_ChkFullTime(tDecemberMengPetCoat_Constant["ActivityTime"]) then
		return
	end
	
	local nEvent = tDecemberMengPetCoat_Stc["EventType"]
	Task_SetStatistic(nEvent,tDecemberMengPetCoat_Stc["DataType"][5],0,1)
	Task_SetStatistic(nEvent,tDecemberMengPetCoat_Stc["DataType"][6],0,1)

	local nType = tDecemberMengPetCoat_Stc["DataType"][1]
	
	if Task_ChkStcValue(nEvent,nType,"==",0,0) then
		Task_SetStatistic(nEvent,nType,1,1,0)
	end
	
	if Task_ChkStcValue(nEvent,tDecemberMengPetCoat_Stc["DataType"][8],"<=",5) then
		Task_SetStatistic(nEvent,tDecemberMengPetCoat_Stc["DataType"][8],tDecemberMengPetCoat_Stc["MaxData"],1)
	end

	-- 判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(tDecemberMengPetCoat_Constant["Level"],tDecemberMengPetCoat_Constant["Metempsychosis"]) then
		return
	end

	-- 满足等级条件，上线即可获得通喵术技能
	DecemberMengPetCoat_LearnSkill()
	-- 满足等级条件，每天上线都可获得5个喵福袋
	DecemberMengPetCoat_RewardMeowBag()
end

-- 怪物掉落
-- 片区刷新一定数量的“幸运喵呜”，击败后获得随机奖励					
function DecemberMengPetCoat_Monster(nMonsterId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tDecemberMengPetCoat_Constant["ActivityTime"]) then
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		return
	end
	
	local nFalg,tAward = Probabil_RandomAward(tDecemberMengPetCoat_DevelopRewards,nMonsterId)
	local sLog = ""
	local sContent = ""
	
	if tAward[1]["tAward"][1]["IsExp"] == true then
		local nLevel = Get_UserLevel()
		
		if nLevel >= G_User_MaxLev then
			User_AddCultivation(tAward[1]["tAward"][1]["Practice"])
			sLog = tDecemberMengPetCoat_Log["Practice"]
			sContent = tDecemberMengPetCoat_Text["Practice"]
		else
			User_AddExpTime(tAward[1]["tAward"][1]["Item_1"])
			sLog = tDecemberMengPetCoat_Log["Exp"]
			sContent = tDecemberMengPetCoat_Text["Exp"]
		end
		
	elseif tAward[1]["tAward"][1]["IsPractice"] == true then
		User_AddCultivation(tAward[1]["tAward"][1]["Item_1"])
		sLog = tDecemberMengPetCoat_Log["Practice"]
		sContent = tDecemberMengPetCoat_Text["Practice"]
	elseif tAward[1]["tAward"][1]["IsBlessing"] == true then
		User_AddBless(tAward[1]["tAward"][1]["Item_1"])
		sLog = tDecemberMengPetCoat_Log["Blessing"]
		sContent = tDecemberMengPetCoat_Text["Blessing"]
	else
		Item_AddItem(tAward[1]["tAward"][1]["Item_1"])
		sLog = string.format(tDecemberMengPetCoat_Log["AddItem"],tAward[1]["tAward"][1]["Item_1"])
		local sItemName = Get_ItemtypeName(tAward[1]["tAward"][1]["Item_1"])
		sContent = string.format(tDecemberMengPetCoat_Text["AddItem"],sItemName)
	end
	
	-- 打log
	Sys_SaveActionFestivalLog(sLog)
	
	-- 给提示
	User_TalkChannel2005(sContent)
end

-----------------------------------------------npc配置--------------------------------------------
-- 18929,'百变喵女郎'
tNpcFace[5098] = 299
tNpcGossip[18929] = tNpcGossip[18929] or DefaultNpc:new{}
tNpcGossip[19196] = tNpcGossip[18929]
tNpcGossip[18929]["OptionHidden"] = 1
-- 【活动前对白】
tNpcGossip[18929]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[18929]["Text111"] = tDecemberMengPetCoat_Text[18929]["Text111"]
tNpcGossip[18929]["Text112"] = tDecemberMengPetCoat_Text[18929]["Text112"]
tNpcGossip[18929]["Text113"] = tDecemberMengPetCoat_Text[18929]["Text113"]
tNpcGossip[18929]["Text114"] = tDecemberMengPetCoat_Text[18929]["Text114"]
tNpcGossip[18929]["Text115"] = tDecemberMengPetCoat_Text[18929]["Text115"]
tNpcGossip[18929]["tOption1-1"] = {1}
tNpcGossip[18929]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tDecemberMengPetCoat_Constant["BeforeActivityTime"])
end

tNpcGossip[18929]["Option1"] = tDecemberMengPetCoat_Text[18929]["Option1"]

-- 【活动中对白】
-- 【等级不满足条件】
tNpcGossip[18929]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[18929]["Text121"] = tDecemberMengPetCoat_Text[18929]["Text121"]
tNpcGossip[18929]["Text122"] = tDecemberMengPetCoat_Text[18929]["Text122"]
tNpcGossip[18929]["Text123"] = tDecemberMengPetCoat_Text[18929]["Text123"]
tNpcGossip[18929]["Text124"] = tDecemberMengPetCoat_Text[18929]["Text124"]
tNpcGossip[18929]["Text125"] = tDecemberMengPetCoat_Text[18929]["Text125"]
tNpcGossip[18929]["Text126"] = tDecemberMengPetCoat_Text[18929]["Text126"]
tNpcGossip[18929]["tOption1-2"] = {2}
tNpcGossip[18929]["ChkFunc1-2"] = function ()
	if not Sys_ChkFullTime(tDecemberMengPetCoat_Constant["ActivityTime"]) then
		return false
	end
	
	return not User_JudgeLevelAndMetempsychosis(tDecemberMengPetCoat_Constant["Level"],tDecemberMengPetCoat_Constant["Metempsychosis"])
end

tNpcGossip[18929]["Option2"] = tDecemberMengPetCoat_Text[18929]["Option2"]

-- 【等级满足条件?首次对白】
tNpcGossip[18929]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[18929]["Text131"] = tDecemberMengPetCoat_Text[18929]["Text131"]
tNpcGossip[18929]["Text132"] = tDecemberMengPetCoat_Text[18929]["Text132"]
tNpcGossip[18929]["Text133"] = tDecemberMengPetCoat_Text[18929]["Text133"]
tNpcGossip[18929]["Text134"] = tDecemberMengPetCoat_Text[18929]["Text134"]
tNpcGossip[18929]["Text135"] = tDecemberMengPetCoat_Text[18929]["Text135"]
tNpcGossip[18929]["tOption1-3"] = {3}
tNpcGossip[18929]["ChkFunc1-3"] = function ()
	if not Sys_ChkFullTime(tDecemberMengPetCoat_Constant["ActivityTime"]) then
		return false
	end
	
	local nEvent = tDecemberMengPetCoat_Stc["EventType"]
	local nType = tDecemberMengPetCoat_Stc["DataType"][1]
	
	if Task_ChkStcValue(nEvent,nType,"==",0,0) then
		Task_SetStatistic(nEvent,nType,1,1,0)
		return true
	else
		return false
	end
end

tNpcGossip[18929]["Option3"] = tDecemberMengPetCoat_Text[18929]["Option3"]
tNpcGossip[18929]["OptionFunc3"]="DecemberMengPetCoat_LearnSkill"

-- 【等级满足条件，转世之后技能遗忘，进行补领技能对白】
tNpcGossip[18929]["Text1-4"] = {141,142}
tNpcGossip[18929]["Text141"] = tDecemberMengPetCoat_Text[18929]["Text141"]
tNpcGossip[18929]["Text142"] = tDecemberMengPetCoat_Text[18929]["Text142"]
tNpcGossip[18929]["tOption1-4"] = {4}
tNpcGossip[18929]["ChkFunc1-4"] = function ()
	if not Sys_ChkFullTime(tDecemberMengPetCoat_Constant["ActivityTime"]) then
		return false
	end
	
	local nMagicType = tDecemberMengPetCoat_Constant["MagicType"]
	
	return not Magic_ChkType(nMagicType)
end

tNpcGossip[18929]["Option4"] = tDecemberMengPetCoat_Text[18929]["Option4"]
tNpcGossip[18929]["OptionFunc4"]="DecemberMengPetCoat_LearnSkill"

-- 【等级满足条件?领悟通喵术之后对白】
tNpcGossip[18929]["Text1-5"] = {151,152,153,154,155}
tNpcGossip[18929]["Text151"] = tDecemberMengPetCoat_Text[18929]["Text151"]
tNpcGossip[18929]["Text152"] = tDecemberMengPetCoat_Text[18929]["Text152"]
tNpcGossip[18929]["Text153"] = tDecemberMengPetCoat_Text[18929]["Text153"]
tNpcGossip[18929]["Text154"] = tDecemberMengPetCoat_Text[18929]["Text154"]
tNpcGossip[18929]["Text155"] = tDecemberMengPetCoat_Text[18929]["Text155"]
tNpcGossip[18929]["tOption1-5"] = {7,6,8}
tNpcGossip[18929]["ChkFunc1-5"] = function ()
	return Sys_ChkFullTime(tDecemberMengPetCoat_Constant["ActivityTime"])
end

tNpcGossip[18929]["Option5"] = tDecemberMengPetCoat_Text[18929]["Option5"]
tNpcGossip[18929]["OptionFunc5"]="DecemberMengPetCoat_RewardMeowBag</N>18929"
tNpcGossip[18929]["OptionChkFunc5"] = function ()
	DecemberMengPetCoat_Reset()

	return Task_ChkStcValue(tDecemberMengPetCoat_Stc["EventType"],tDecemberMengPetCoat_Stc["DataType"][2],"==",0)
end

tNpcGossip[18929]["Option6"] = tDecemberMengPetCoat_Text[18929]["Option6"]
tNpcGossip[18929]["OptionFunc6"]="DecemberMengPetCoat_SendProduct</N>18929"
tNpcGossip[18929]["Option7"] = tDecemberMengPetCoat_Text[18929]["Option7"]
tNpcGossip[18929]["OptionPoint7"]="10-1"
tNpcGossip[18929]["Option8"] = tDecemberMengPetCoat_Text[18929]["Option8"]

-- 【活动后对白】
tNpcGossip[18929]["Text1-6"] = {161}
tNpcGossip[18929]["Text161"] = tDecemberMengPetCoat_Text[18929]["Text161"]
tNpcGossip[18929]["tOption1-6"] = {9}

tNpcGossip[18929]["Option9"] = tDecemberMengPetCoat_Text[18929]["Option9"]

-- 【接A，领取喵福袋。】
tNpcGossip[18929]["Text2-1"] = {211}
tNpcGossip[18929]["Text211"] = tDecemberMengPetCoat_Text[18929]["Text211"]
tNpcGossip[18929]["tOption2-1"] = {10}

tNpcGossip[18929]["Option10"] = tDecemberMengPetCoat_Text[18929]["Option10"]

tNpcGossip[18929]["Text2-2"] = {221}
tNpcGossip[18929]["Text221"] = tDecemberMengPetCoat_Text[18929]["Text221"]
tNpcGossip[18929]["tOption2-2"] = {11}

tNpcGossip[18929]["Option11"] = tDecemberMengPetCoat_Text[18929]["Option11"]

tNpcGossip[18929]["Text2-3"] = {231}
tNpcGossip[18929]["Text231"] = tDecemberMengPetCoat_Text[18929]["Text231"]
tNpcGossip[18929]["tOption2-3"] = {12}

tNpcGossip[18929]["Option12"] = tDecemberMengPetCoat_Text[18929]["Option12"]
tNpcGossip[18929]["OptionFunc12"]="DecemberMengPetCoat_RewardMeowBag</N>18929</N>1"

-- 【接B，送你保养品啦！】
tNpcGossip[18929]["Text3-1"] = {311,312,313,314,315}
tNpcGossip[18929]["Text311"] = tDecemberMengPetCoat_Text[18929]["Text311"]
tNpcGossip[18929]["Text312"] = tDecemberMengPetCoat_Text[18929]["Text312"]
tNpcGossip[18929]["Text313"] = tDecemberMengPetCoat_Text[18929]["Text313"]
tNpcGossip[18929]["Text314"] = tDecemberMengPetCoat_Text[18929]["Text314"]
tNpcGossip[18929]["Text315"] = tDecemberMengPetCoat_Text[18929]["Text315"]
tNpcGossip[18929]["tOption3-1"] = {13,14,15,16,17}

tNpcGossip[18929]["Text3-2"] = {321,322,323,324,325}
tNpcGossip[18929]["Text321"] = tDecemberMengPetCoat_Text[18929]["Text321"]
tNpcGossip[18929]["Text322"] = tDecemberMengPetCoat_Text[18929]["Text322"]
tNpcGossip[18929]["Text323"] = tDecemberMengPetCoat_Text[18929]["Text323"]
tNpcGossip[18929]["Text324"] = tDecemberMengPetCoat_Text[18929]["Text324"]
tNpcGossip[18929]["Text325"] = tDecemberMengPetCoat_Text[18929]["Text325"]
tNpcGossip[18929]["tOption3-2"] = {13,14,15,16,17}

tNpcGossip[18929]["Option13"] = tDecemberMengPetCoat_Text[18929]["Option13"]
tNpcGossip[18929]["OptionFunc13"]="DecemberMengPetCoat_JudgeSend</N>18929</N>1"
tNpcGossip[18929]["Option14"] = tDecemberMengPetCoat_Text[18929]["Option14"]
tNpcGossip[18929]["OptionFunc14"]="DecemberMengPetCoat_JudgeSend</N>18929</N>2"
tNpcGossip[18929]["Option15"] = tDecemberMengPetCoat_Text[18929]["Option15"]
tNpcGossip[18929]["OptionFunc15"]="DecemberMengPetCoat_JudgeSend</N>18929</N>3"
tNpcGossip[18929]["Option16"] = tDecemberMengPetCoat_Text[18929]["Option16"]
tNpcGossip[18929]["OptionPoint16"]="9-1"
tNpcGossip[18929]["Option17"] = tDecemberMengPetCoat_Text[18929]["Option17"]
tNpcGossip[18929]["OptionPoint17"]="1"
tNpcGossip[18929]["Option18"] = tDecemberMengPetCoat_Text[18929]["Option18"]

-- 【接a、给你喵薄荷防晒霜！】
tNpcGossip[18929]["Text3-3"] = {331}
tNpcGossip[18929]["Text331"] = tDecemberMengPetCoat_Text[18929]["Text331"]
tNpcGossip[18929]["tOption3-3"] = {19}
tNpcGossip[18929]["Option19"] = tDecemberMengPetCoat_Text[18929]["Option19"]

tNpcGossip[18929]["Text3-4"] = {341,342}
tNpcGossip[18929]["Text341"] = tDecemberMengPetCoat_Text[18929]["Text341"]
tNpcGossip[18929]["Text342"] = tDecemberMengPetCoat_Text[18929]["Text342"]
tNpcGossip[18929]["tOption3-4"] = {20,31}
tNpcGossip[18929]["Option20"] = tDecemberMengPetCoat_Text[18929]["Option20"]
tNpcGossip[18929]["OptionFunc20"]="DecemberMengPetCoat_Confirmat</N>18929</N>1"

-- 接1，这就给你买
tNpcGossip[18929]["Text3-5"] = {351,352}
tNpcGossip[18929]["Text351"] = tDecemberMengPetCoat_Text[18929]["Text351"]
tNpcGossip[18929]["Text352"] = tDecemberMengPetCoat_Text[18929]["Text352"]
tNpcGossip[18929]["tOption3-5"] = {21,22,23}
tNpcGossip[18929]["Option21"] = tDecemberMengPetCoat_Text[18929]["Option21"]
tNpcGossip[18929]["OptionFunc21"]="DecemberMengPetCoat_JudgeEmoney</N>18929</N>1"
tNpcGossip[18929]["Option22"] = tDecemberMengPetCoat_Text[18929]["Option22"]
tNpcGossip[18929]["OptionPoint22"]="3-7"
tNpcGossip[18929]["Option23"] = tDecemberMengPetCoat_Text[18929]["Option23"]

-- 接1.1、失败，天石不足
tNpcGossip[18929]["Text3-6"] = {361}
tNpcGossip[18929]["Text361"] = tDecemberMengPetCoat_Text[18929]["Text361"]
tNpcGossip[18929]["tOption3-6"] = {24}
tNpcGossip[18929]["Option24"] = tDecemberMengPetCoat_Text[18929]["Option24"]

-- 接1.2、取消二次确认
tNpcGossip[18929]["Text3-7"] = {371,372}
tNpcGossip[18929]["Text371"] = tDecemberMengPetCoat_Text[18929]["Text371"]
tNpcGossip[18929]["Text372"] = tDecemberMengPetCoat_Text[18929]["Text372"]
tNpcGossip[18929]["tOption3-7"] = {25}
tNpcGossip[18929]["Option25"] = tDecemberMengPetCoat_Text[18929]["Option25"]
tNpcGossip[18929]["OptionFunc25"]="DecemberMengPetCoat_ShieldConfirm</N>18929</N>1"

-- 接a、1.1，成功?未达到升级值
tNpcGossip[18929]["Text4-1"] = {411}
tNpcGossip[18929]["Text411"] = tDecemberMengPetCoat_Text[18929]["Text411"]
tNpcGossip[18929]["tOption4-1"] = {26}
tNpcGossip[18929]["Option26"] = tDecemberMengPetCoat_Text[18929]["Option26"]
tNpcGossip[18929]["OptionFunc26"]="DecemberMengPetCoat_SendProduct</N>18929"

-- 接a、1.1，成功?达到升级值未达5星
tNpcGossip[18929]["Text4-2"] = {421}
tNpcGossip[18929]["Text421"] = tDecemberMengPetCoat_Text[18929]["Text421"]
tNpcGossip[18929]["tOption4-2"] = {27}
tNpcGossip[18929]["Option27"] = tDecemberMengPetCoat_Text[18929]["Option27"]
tNpcGossip[18929]["OptionFunc27"]="DecemberMengPetCoat_SendProduct</N>18929"

-- 接a、1.1，成功?5星之后每1000点额外赠送
tNpcGossip[18929]["Text4-3"] = {431,432}
tNpcGossip[18929]["Text431"] = tDecemberMengPetCoat_Text[18929]["Text431"]
tNpcGossip[18929]["Text432"] = tDecemberMengPetCoat_Text[18929]["Text432"]
tNpcGossip[18929]["tOption4-3"] = {28}
tNpcGossip[18929]["Option28"] = tDecemberMengPetCoat_Text[18929]["Option28"]
tNpcGossip[18929]["OptionFunc28"]="DecemberMengPetCoat_SendProduct</N>18929"

-- 【接b、给你喵喵美肤身体乳！】
-- 接b，失败，背包满
tNpcGossip[18929]["Text5-1"] = {511}
tNpcGossip[18929]["Text511"] = tDecemberMengPetCoat_Text[18929]["Text511"]
tNpcGossip[18929]["tOption5-1"] = {29}
tNpcGossip[18929]["Option29"] = tDecemberMengPetCoat_Text[18929]["Option29"]

-- 接b，失败，没有喵喵美肤身体乳
tNpcGossip[18929]["Text5-2"] = {521,522}
tNpcGossip[18929]["Text521"] = tDecemberMengPetCoat_Text[18929]["Text521"]
tNpcGossip[18929]["Text522"] = tDecemberMengPetCoat_Text[18929]["Text522"]
tNpcGossip[18929]["tOption5-2"] = {30,31}
tNpcGossip[18929]["Option30"] = tDecemberMengPetCoat_Text[18929]["Option30"]
tNpcGossip[18929]["OptionFunc30"]="DecemberMengPetCoat_Confirmat</N>18929</N>2"
tNpcGossip[18929]["Option31"] = tDecemberMengPetCoat_Text[18929]["Option31"]

-- 接1，这就给你买
tNpcGossip[18929]["Text5-3"] = {531,532}
tNpcGossip[18929]["Text531"] = tDecemberMengPetCoat_Text[18929]["Text531"]
tNpcGossip[18929]["Text532"] = tDecemberMengPetCoat_Text[18929]["Text532"]
tNpcGossip[18929]["tOption5-3"] = {32,33,34}
tNpcGossip[18929]["Option32"] = tDecemberMengPetCoat_Text[18929]["Option32"]
tNpcGossip[18929]["OptionFunc32"]="DecemberMengPetCoat_JudgeEmoney</N>18929</N>2"
tNpcGossip[18929]["Option33"] = tDecemberMengPetCoat_Text[18929]["Option33"]
tNpcGossip[18929]["OptionPoint33"]="5-4"
tNpcGossip[18929]["Option34"] = tDecemberMengPetCoat_Text[18929]["Option34"]

-- 接1.2、取消二次确认
tNpcGossip[18929]["Text5-4"] = {541,542}
tNpcGossip[18929]["Text541"] = tDecemberMengPetCoat_Text[18929]["Text541"]
tNpcGossip[18929]["Text542"] = tDecemberMengPetCoat_Text[18929]["Text542"]
tNpcGossip[18929]["tOption5-4"] = {35}
tNpcGossip[18929]["Option35"] = tDecemberMengPetCoat_Text[18929]["Option35"]
tNpcGossip[18929]["OptionFunc35"]="DecemberMengPetCoat_ShieldConfirm</N>18929</N>2"

-- 接b、1.1，成功?未达到升级值
tNpcGossip[18929]["Text6-1"] = {611}
tNpcGossip[18929]["Text611"] = tDecemberMengPetCoat_Text[18929]["Text611"]
tNpcGossip[18929]["tOption6-1"] = {36}
tNpcGossip[18929]["Option36"] = tDecemberMengPetCoat_Text[18929]["Option36"]
tNpcGossip[18929]["OptionFunc36"]="DecemberMengPetCoat_SendProduct</N>18929"

-- 接b、1.1，成功?达到升级值未达5星
tNpcGossip[18929]["Text6-2"] = {621}
tNpcGossip[18929]["Text621"] = tDecemberMengPetCoat_Text[18929]["Text621"]
tNpcGossip[18929]["tOption6-2"] = {37}
tNpcGossip[18929]["Option37"] = tDecemberMengPetCoat_Text[18929]["Option37"]
tNpcGossip[18929]["OptionFunc37"]="DecemberMengPetCoat_SendProduct</N>18929"

-- 接b、1.1，成功?5星之后每1000点额外赠送
tNpcGossip[18929]["Text6-3"] = {631,632}
tNpcGossip[18929]["Text631"] = tDecemberMengPetCoat_Text[18929]["Text631"]
tNpcGossip[18929]["Text632"] = tDecemberMengPetCoat_Text[18929]["Text632"]
tNpcGossip[18929]["tOption6-3"] = {38}
tNpcGossip[18929]["Option38"] = tDecemberMengPetCoat_Text[18929]["Option38"]
tNpcGossip[18929]["OptionFunc38"]="DecemberMengPetCoat_SendProduct</N>18929"

-- 【接c、给你10瓶喵喵美肤身体乳！】
-- 接c，失败，背包满
tNpcGossip[18929]["Text7-1"] = {711}
tNpcGossip[18929]["Text711"] = tDecemberMengPetCoat_Text[18929]["Text711"]
tNpcGossip[18929]["tOption7-1"] = {39}
tNpcGossip[18929]["Option39"] = tDecemberMengPetCoat_Text[18929]["Option39"]

-- 接c，失败，没有喵喵美肤身体乳
tNpcGossip[18929]["Text7-2"] = {721,722}
tNpcGossip[18929]["Text721"] = tDecemberMengPetCoat_Text[18929]["Text721"]
tNpcGossip[18929]["Text722"] = tDecemberMengPetCoat_Text[18929]["Text722"]
tNpcGossip[18929]["tOption7-2"] = {40,41}
tNpcGossip[18929]["Option40"] = tDecemberMengPetCoat_Text[18929]["Option40"]
tNpcGossip[18929]["OptionFunc40"]="DecemberMengPetCoat_Confirmat</N>18929</N>3"
tNpcGossip[18929]["Option41"] = tDecemberMengPetCoat_Text[18929]["Option41"]

-- 接1，这就给你买
tNpcGossip[18929]["Text7-3"] = {731,732}
tNpcGossip[18929]["Text731"] = tDecemberMengPetCoat_Text[18929]["Text731"]
tNpcGossip[18929]["Text732"] = tDecemberMengPetCoat_Text[18929]["Text732"]
tNpcGossip[18929]["tOption7-3"] = {42,43,44}
tNpcGossip[18929]["Option42"] = tDecemberMengPetCoat_Text[18929]["Option42"]
tNpcGossip[18929]["OptionFunc42"]="DecemberMengPetCoat_JudgeEmoney</N>18929</N>3"
tNpcGossip[18929]["Option43"] = tDecemberMengPetCoat_Text[18929]["Option43"]
tNpcGossip[18929]["OptionPoint43"]="7-5"
tNpcGossip[18929]["Option44"] = tDecemberMengPetCoat_Text[18929]["Option44"]

--接1.1、失败，天石不足
tNpcGossip[18929]["Text7-4"] = {741}
tNpcGossip[18929]["Text741"] = tDecemberMengPetCoat_Text[18929]["Text741"]
tNpcGossip[18929]["tOption7-4"] = {45}
tNpcGossip[18929]["Option45"] = tDecemberMengPetCoat_Text[18929]["Option45"]

-- 接1.2、取消二次确认
tNpcGossip[18929]["Text7-5"] = {751,752}
tNpcGossip[18929]["Text751"] = tDecemberMengPetCoat_Text[18929]["Text751"]
tNpcGossip[18929]["Text752"] = tDecemberMengPetCoat_Text[18929]["Text752"]
tNpcGossip[18929]["tOption7-5"] = {46}
tNpcGossip[18929]["Option46"] = tDecemberMengPetCoat_Text[18929]["Option46"]
tNpcGossip[18929]["OptionFunc46"]="DecemberMengPetCoat_ShieldConfirm</N>18929</N>3"

-- 接c、1.1，成功?未达到升级值
tNpcGossip[18929]["Text8-1"] = {811,812,813,814,815,816,817,818,819,8110,8111}
tNpcGossip[18929]["Text811"] = tDecemberMengPetCoat_Text[18929]["Text811"]
tNpcGossip[18929]["tOption8-1"] = {47}
tNpcGossip[18929]["Option47"] = tDecemberMengPetCoat_Text[18929]["Option47"]
tNpcGossip[18929]["OptionFunc47"]="DecemberMengPetCoat_SendProduct</N>18929"

-- 接b、1.1，成功?达到升级值未达5星
tNpcGossip[18929]["Text8-2"] = {821,812,813,814,815,816,817,818,819,8110,8111,822}
tNpcGossip[18929]["Text821"] = tDecemberMengPetCoat_Text[18929]["Text821"]
tNpcGossip[18929]["tOption8-2"] = {62}
tNpcGossip[18929]["Option62"] = tDecemberMengPetCoat_Text[18929]["Option62"]
tNpcGossip[18929]["OptionFunc62"]="DecemberMengPetCoat_SendProduct</N>18929"

-- 接c、1.1，成功?5星之后每1000点额外赠送
tNpcGossip[18929]["Text8-3"] = {831,812,813,814,815,816,817,818,819,8110,8111,832}
tNpcGossip[18929]["Text831"] = tDecemberMengPetCoat_Text[18929]["Text831"]
tNpcGossip[18929]["Text832"] = tDecemberMengPetCoat_Text[18929]["Text832"]
tNpcGossip[18929]["tOption8-3"] = {48}
tNpcGossip[18929]["Option48"] = tDecemberMengPetCoat_Text[18929]["Option48"]
tNpcGossip[18929]["OptionFunc48"]="DecemberMengPetCoat_SendProduct</N>18929"

-- 【接d、查询成长值与奖励】
tNpcGossip[18929]["Text9-1"] = {911,912,919,913,920,914,915,916,917,918,921}
tNpcGossip[18929]["Text911"] = tDecemberMengPetCoat_Text[18929]["Text911"]
tNpcGossip[18929]["Text912"] = tDecemberMengPetCoat_Text[18929]["Text912"]
tNpcGossip[18929]["Text919"] = tDecemberMengPetCoat_Text[18929]["Text919"]
tNpcGossip[18929]["Text913"] = tDecemberMengPetCoat_Text[18929]["Text913"]
tNpcGossip[18929]["Text920"] = tDecemberMengPetCoat_Text[18929]["Text920"]
tNpcGossip[18929]["Text914"] = tDecemberMengPetCoat_Text[18929]["Text914"]
tNpcGossip[18929]["Text915"] = tDecemberMengPetCoat_Text[18929]["Text915"]
tNpcGossip[18929]["Text916"] = tDecemberMengPetCoat_Text[18929]["Text916"]
tNpcGossip[18929]["Text917"] = tDecemberMengPetCoat_Text[18929]["Text917"]
tNpcGossip[18929]["Text918"] = tDecemberMengPetCoat_Text[18929]["Text918"]
tNpcGossip[18929]["Text921"] = tDecemberMengPetCoat_Text[18929]["Text921"]
tNpcGossip[18929]["tOption9-1"] = {49,50}
tNpcGossip[18929]["Option49"] = tDecemberMengPetCoat_Text[18929]["Option49"]
tNpcGossip[18929]["OptionFunc49"]="DecemberMengPetCoat_SendProduct</N>18929"
tNpcGossip[18929]["Option50"] = tDecemberMengPetCoat_Text[18929]["Option50"]

-- 【接C，了解活动详情】
tNpcGossip[18929]["Text10-1"] = {1011,1012,1013}
tNpcGossip[18929]["Text1011"] = tDecemberMengPetCoat_Text[18929]["Text1011"]
tNpcGossip[18929]["Text1012"] = tDecemberMengPetCoat_Text[18929]["Text1012"]
tNpcGossip[18929]["Text1013"] = tDecemberMengPetCoat_Text[18929]["Text1013"]
tNpcGossip[18929]["tOption10-1"] = {51,52,53,54}
tNpcGossip[18929]["Option51"] = tDecemberMengPetCoat_Text[18929]["Option51"]
tNpcGossip[18929]["OptionPoint51"]="10-2"
tNpcGossip[18929]["Option52"] = tDecemberMengPetCoat_Text[18929]["Option52"]
tNpcGossip[18929]["OptionPoint52"]="10-3"
tNpcGossip[18929]["Option53"] = tDecemberMengPetCoat_Text[18929]["Option53"]
tNpcGossip[18929]["OptionPoint53"]="1"
tNpcGossip[18929]["Option54"] = tDecemberMengPetCoat_Text[18929]["Option54"]

-- 【接a、如何获得保养品？】
tNpcGossip[18929]["Text10-2"] = {1021,1022,1023,1024,1025,1026,1027,1028}
tNpcGossip[18929]["Text1021"] = tDecemberMengPetCoat_Text[18929]["Text1021"]
tNpcGossip[18929]["Text1022"] = tDecemberMengPetCoat_Text[18929]["Text1022"]
tNpcGossip[18929]["Text1023"] = tDecemberMengPetCoat_Text[18929]["Text1023"]
tNpcGossip[18929]["Text1024"] = tDecemberMengPetCoat_Text[18929]["Text1024"]
tNpcGossip[18929]["Text1025"] = tDecemberMengPetCoat_Text[18929]["Text1025"]
tNpcGossip[18929]["Text1026"] = tDecemberMengPetCoat_Text[18929]["Text1026"]
tNpcGossip[18929]["Text1027"] = tDecemberMengPetCoat_Text[18929]["Text1027"]
tNpcGossip[18929]["Text1028"] = tDecemberMengPetCoat_Text[18929]["Text1028"]
tNpcGossip[18929]["tOption10-2"] = {55,56}
tNpcGossip[18929]["Option55"] = tDecemberMengPetCoat_Text[18929]["Option55"]
tNpcGossip[18929]["OptionPoint55"]="10-1"
tNpcGossip[18929]["Option56"] = tDecemberMengPetCoat_Text[18929]["Option56"]

-- 【接b、如何获得魅力版或璀璨版的宝贝？】
tNpcGossip[18929]["Text10-3"] = {1031,1032,1033}
tNpcGossip[18929]["Text1031"] = tDecemberMengPetCoat_Text[18929]["Text1031"]
tNpcGossip[18929]["Text1032"] = tDecemberMengPetCoat_Text[18929]["Text1032"]
tNpcGossip[18929]["Text1033"] = tDecemberMengPetCoat_Text[18929]["Text1033"]
tNpcGossip[18929]["tOption10-3"] = {57,58,59}
tNpcGossip[18929]["Option57"] = tDecemberMengPetCoat_Text[18929]["Option57"]
tNpcGossip[18929]["OptionPoint57"]="10-4"
tNpcGossip[18929]["Option58"] = tDecemberMengPetCoat_Text[18929]["Option58"]
tNpcGossip[18929]["OptionPoint58"]="10-1"
tNpcGossip[18929]["Option59"] = tDecemberMengPetCoat_Text[18929]["Option59"]

-- 接1，那璀璨版呢？
tNpcGossip[18929]["Text10-4"] = {1041,1042}
tNpcGossip[18929]["Text1041"] = tDecemberMengPetCoat_Text[18929]["Text1041"]
tNpcGossip[18929]["Text1042"] = tDecemberMengPetCoat_Text[18929]["Text1042"]
tNpcGossip[18929]["tOption10-4"] = {60}
tNpcGossip[18929]["Option60"] = tDecemberMengPetCoat_Text[18929]["Option60"]

-- 18930,'喵基尼【璀璨版】'

tNpcGossip[18930] = tNpcGossip[18930] or DefaultNpc:new{}
tNpcGossip[19197] = tNpcGossip[18930]
tNpcGossip[18930]["OptionHidden"] = 1

tNpcGossip[18930]["Text1-1"] = {111,112}
tNpcGossip[18930]["Text111"] = tDecemberMengPetCoat_Text[18930]["Text111"]
tNpcGossip[18930]["Text112"] = tDecemberMengPetCoat_Text[18930]["Text112"]
tNpcGossip[18930]["tOption1-1"] = {1,2}
tNpcGossip[18930]["Option1"] = tDecemberMengPetCoat_Text[18930]["Option1"]
tNpcGossip[18930]["OptionFunc1"]="DecemberMengPetCoat_BrightVersion</N>18930"
tNpcGossip[18930]["Option2"] = tDecemberMengPetCoat_Text[18930]["Option2"]

-- 接A，失败，物品数量不足
tNpcGossip[18930]["Text2-1"] = {211}
tNpcGossip[18930]["Text211"] = tDecemberMengPetCoat_Text[18930]["Text211"]
tNpcGossip[18930]["tOption2-1"] = {3}
tNpcGossip[18930]["Option3"] = tDecemberMengPetCoat_Text[18930]["Option3"]

tNpcGossip[18930]["Text2-2"] = {221}
tNpcGossip[18930]["Text221"] = tDecemberMengPetCoat_Text[18930]["Text221"]
tNpcGossip[18930]["tOption2-2"] = {4}
tNpcGossip[18930]["Option4"] = tDecemberMengPetCoat_Text[18930]["Option4"]

tNpcGossip[18943] = tNpcGossip[18930]
tNpcGossip[19198] = tNpcGossip[18930]
-- 18931,'喵呜将军【璀璨版】'

tNpcGossip[18931] = tNpcGossip[18931] or DefaultNpc:new{}
tNpcGossip[19199] = tNpcGossip[18931]


tNpcGossip[18931]["OptionHidden"] = 1

tNpcGossip[18931]["Text1-1"] = {111,112}
tNpcGossip[18931]["Text111"] = tDecemberMengPetCoat_Text[18931]["Text111"]
tNpcGossip[18931]["Text112"] = tDecemberMengPetCoat_Text[18931]["Text112"]
tNpcGossip[18931]["tOption1-1"] = {1,2}
tNpcGossip[18931]["Option1"] = tDecemberMengPetCoat_Text[18931]["Option1"]
tNpcGossip[18931]["OptionFunc1"]="DecemberMengPetCoat_BrightVersion</N>18931"
tNpcGossip[18931]["Option2"] = tDecemberMengPetCoat_Text[18931]["Option2"]

-- 接A，失败，物品数量不足
tNpcGossip[18931]["Text2-1"] = {211}
tNpcGossip[18931]["Text211"] = tDecemberMengPetCoat_Text[18931]["Text211"]
tNpcGossip[18931]["tOption2-1"] = {3}
tNpcGossip[18931]["Option3"] = tDecemberMengPetCoat_Text[18931]["Option3"]

tNpcGossip[18931]["Text2-2"] = {221}
tNpcGossip[18931]["Text221"] = tDecemberMengPetCoat_Text[18931]["Text221"]
tNpcGossip[18931]["tOption2-2"] = {4}
tNpcGossip[18931]["Option4"] = tDecemberMengPetCoat_Text[18931]["Option4"]

-- 18932,'喵仆'
tNpcFace[5101] = 300
tNpcGossip[18932] = tNpcGossip[18932] or DefaultNpc:new{}
tNpcGossip[19200] = tNpcGossip[18932]
tNpcGossip[18932]["OptionHidden"] = 1

tNpcGossip[18932]["Text1-1"] = {111,112,113}
tNpcGossip[18932]["Text111"] = tDecemberMengPetCoat_Text[18932]["Text111"]
tNpcGossip[18932]["Text112"] = tDecemberMengPetCoat_Text[18932]["Text112"]
tNpcGossip[18932]["Text113"] = tDecemberMengPetCoat_Text[18932]["Text113"]
tNpcGossip[18932]["tOption1-1"] = {1,2,3,4,5,6}
tNpcGossip[18932]["Option1"] = tDecemberMengPetCoat_Text[18932]["Option1"]
tNpcGossip[18932]["OptionFunc1"]="DecemberMengPetCoat_SetRegister</N>18932</N>3008043"
tNpcGossip[18932]["Option2"] = tDecemberMengPetCoat_Text[18932]["Option2"]
tNpcGossip[18932]["OptionFunc2"]="DecemberMengPetCoat_SetRegister</N>18932</N>3008042"
tNpcGossip[18932]["Option3"] = tDecemberMengPetCoat_Text[18932]["Option3"]
tNpcGossip[18932]["OptionFunc3"]="DecemberMengPetCoat_SetRegister</N>18932</N>3008041"
tNpcGossip[18932]["Option4"] = tDecemberMengPetCoat_Text[18932]["Option4"]
tNpcGossip[18932]["OptionPoint4"]="3-1"
tNpcGossip[18932]["Option5"] = tDecemberMengPetCoat_Text[18932]["Option5"]
tNpcGossip[18932]["OptionPoint5"]="4-1"
tNpcGossip[18932]["Option6"] = tDecemberMengPetCoat_Text[18932]["Option6"]

-- 【接ABC，7天时效礼包】
tNpcGossip[18932]["Text2-1"] = {211}
tNpcGossip[18932]["Text211"] = tDecemberMengPetCoat_Text[18932]["Text211"]
tNpcGossip[18932]["tOption2-1"] = {7,8,9,10}
tNpcGossip[18932]["Option7"] = tDecemberMengPetCoat_Text[18932]["Option7"]
tNpcGossip[18932]["OptionFunc7"]="DecemberMengPetCoat_ExchangeGifts</N>18932</N>1"
tNpcGossip[18932]["Option8"] = tDecemberMengPetCoat_Text[18932]["Option8"]
tNpcGossip[18932]["OptionFunc8"]="DecemberMengPetCoat_ExchangeGifts</N>18932</N>5"
tNpcGossip[18932]["Option9"] = tDecemberMengPetCoat_Text[18932]["Option9"]
tNpcGossip[18932]["OptionPoint9"]="1"
tNpcGossip[18932]["Option10"] = tDecemberMengPetCoat_Text[18932]["Option10"]

tNpcGossip[18932]["Text2-2"] = {221}
tNpcGossip[18932]["Text221"] = tDecemberMengPetCoat_Text[18932]["Text221"]
tNpcGossip[18932]["tOption2-2"] = {11}
tNpcGossip[18932]["Option11"] = tDecemberMengPetCoat_Text[18932]["Option11"]

tNpcGossip[18932]["Text2-3"] = {231}
tNpcGossip[18932]["Text231"] = tDecemberMengPetCoat_Text[18932]["Text231"]
tNpcGossip[18932]["tOption2-3"] = {12}
tNpcGossip[18932]["Option12"] = tDecemberMengPetCoat_Text[18932]["Option12"]

--【接D，永久时效的喵基尼时装外套】
tNpcGossip[18932]["Text3-1"] = {311}
tNpcGossip[18932]["Text311"] = tDecemberMengPetCoat_Text[18932]["Text311"]
tNpcGossip[18932]["tOption3-1"] = {13}
tNpcGossip[18932]["Option13"] = tDecemberMengPetCoat_Text[18932]["Option13"]
tNpcGossip[18932]["OptionFunc13"]="DecemberMengPetCoat_ExchangeGifts</N>18932</N>1</N>193545"

tNpcGossip[18932]["Text3-2"] = {321}
tNpcGossip[18932]["Text321"] = tDecemberMengPetCoat_Text[18932]["Text321"]
tNpcGossip[18932]["tOption3-2"] = {14}
tNpcGossip[18932]["Option14"] = tDecemberMengPetCoat_Text[18932]["Option14"]

tNpcGossip[18932]["Text3-3"] = {331}
tNpcGossip[18932]["Text331"] = tDecemberMengPetCoat_Text[18932]["Text331"]
tNpcGossip[18932]["tOption3-3"] = {15}
tNpcGossip[18932]["Option15"] = tDecemberMengPetCoat_Text[18932]["Option15"]

-- 【接D，永久时效的喵呜将军骑宠外套（赠）】
tNpcGossip[18932]["Text4-1"] = {411}
tNpcGossip[18932]["Text411"] = tDecemberMengPetCoat_Text[18932]["Text411"]
tNpcGossip[18932]["tOption4-1"] = {16}
tNpcGossip[18932]["Option16"] = tDecemberMengPetCoat_Text[18932]["Option16"]
tNpcGossip[18932]["OptionFunc16"]="DecemberMengPetCoat_ExchangeGifts</N>18932</N>1</N>200542"

tNpcGossip[18932]["Text4-2"] = {421}
tNpcGossip[18932]["Text421"] = tDecemberMengPetCoat_Text[18932]["Text421"]
tNpcGossip[18932]["tOption4-2"] = {17}
tNpcGossip[18932]["Option17"] = tDecemberMengPetCoat_Text[18932]["Option17"]

tNpcGossip[18932]["Text4-3"] = {431}
tNpcGossip[18932]["Text431"] = tDecemberMengPetCoat_Text[18932]["Text431"]
tNpcGossip[18932]["tOption4-3"] = {18}
tNpcGossip[18932]["Option18"] = tDecemberMengPetCoat_Text[18932]["Option18"]

-- tMonster[7902] = tMonster[7902] or {}
-- tMonster[7902]["tFunction"] = tMonster[7902]["tFunction"] or {}
-- table.insert(tMonster[7902]["tFunction"],DecemberMengPetCoat_Monster)

-- 上限触发
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,DecemberMengPetCoat_Clear)