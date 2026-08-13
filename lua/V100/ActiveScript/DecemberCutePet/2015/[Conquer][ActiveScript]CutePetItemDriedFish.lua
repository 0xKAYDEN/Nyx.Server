------------------------------------------------------------------------------------
--Name:			151125[简体征服][活动脚本]12月萌宠外套
--Purpose:		12月萌宠外套强化物品
--Creator:		黄昕哲
--Created:		2015/11/25
------------------------------------------------------------------------------------
--[[
命名前缀 CutePet_DriedFish_

--掩码说明：
--stc(139,37)
--	用于限制玩家每天掉落的喵薄荷
--	上限5个

--stc(139,38)
--	记录玩家杀怪数量
--	0-300

--stc(139,39)
--	记录喵福袋星数
--	0-5

--stc(139,49)
--	记录玩家使用喵福袋重抽的次数
--	0-5

--stc(139,50)
--	记录玩家使用喵福袋重抽的奖励
--	0-5
]]--

-------------------------------数据存储表------------------------
local tCutePet_DriedFish_Data = {}

	tCutePet_DriedFish_Data["Time"] = "2016-04-14 00:00 2016-04-27 23:59"

	--片区掉落模板时间（模板时间配置在服务器启动前方便测试，怪物掉落逻辑还是在活动时间内）
	tCutePet_DriedFish_Data["Time1"] = "2016-03-22 00:00 2016-04-27 23:59"
	
	tCutePet_DriedFish_Data["PieceToOne"] = 5
	tCutePet_DriedFish_Data["PieceBet"] = 2
	
	tCutePet_DriedFish_Data["30Days"] = 30
	tCutePet_DriedFish_Data["90Days1RD"] = "0 0 0 129600 1 0 0 1"
	tCutePet_DriedFish_Data["90Days"] = "0 0 0 129600 1"
	tCutePet_DriedFish_Data["1RD"] = "0 0 0 0 0 0 0 1"
	tCutePet_DriedFish_Data["2Num"] = "0 2"

	--气力值,洗赠失败,加光效失败,过期删除萌宠洗赠碎片/道具,萌宠光效碎片/道具,高级养成道具
	tCutePet_DriedFish_Data["Strength"] = {}
	tCutePet_DriedFish_Data["Strength"][100] = 100
	tCutePet_DriedFish_Data["Strength"][300] = 300 
	tCutePet_DriedFish_Data["Strength"][1500] = 1500
	tCutePet_DriedFish_Data["Strength"][600] = 600
	tCutePet_DriedFish_Data["Strength"][3000] = 3000
	tCutePet_DriedFish_Data["Strength"][200] = 200
	
--npc位置
local  tCutePet_DriedFish_Pos = {}
	tCutePet_DriedFish_Pos["Lady"] = {}
	tCutePet_DriedFish_Pos["Lady"]["Id"] = 18929
	tCutePet_DriedFish_Pos["Lady"]["CellX"] = 258
	tCutePet_DriedFish_Pos["Lady"]["CellY"] = 228
	tCutePet_DriedFish_Pos["Lady"]["MapId"] = 1002

--光效
local tCutePet_DriedFish_Effect = {}
	tCutePet_DriedFish_Effect["Self"] = "self"
	--灵丹升星,碎片单个赌成功,集齐碎片合成成功,发型换色成功
	tCutePet_DriedFish_Effect["Success1"] = "zf2-e280"
	--普通养成,回收赠品外套,使用灵丹获得奖励
	tCutePet_DriedFish_Effect["Award"] = "angelwing"
	--碎片单个赌失败,洗赠失败,绑光效失败
	tCutePet_DriedFish_Effect["Fail"] = "BodyDisapear"
	--洗赠成功,绑光效成功
	tCutePet_DriedFish_Effect["Success"] = "zf2-e128"
	--过期回收获得气力
	tCutePet_DriedFish_Effect["Expire"] = "disappear"
	
	--深海寻宝光效
	tCutePet_DriedFish_Effect["DeepSea"] = "zf2-e290"
	

local tCutePet_DriedFish_ItemId = {}
	--短武器外套,[1]为原始版本,[2]为光效版本,下同
	tCutePet_DriedFish_ItemId["Short"] = {}
	tCutePet_DriedFish_ItemId["Short"][1] = 360175
	tCutePet_DriedFish_ItemId["Short"][2] = 360176
	--长武器外套,[1]为原始版本,[2]为光效版本,下同
	tCutePet_DriedFish_ItemId["Long"] = {}
	tCutePet_DriedFish_ItemId["Long"][1] = 350089
	tCutePet_DriedFish_ItemId["Long"][2] = 350090
	--盾外套,[1]为原始版本,[2]为光效版本,下同
	tCutePet_DriedFish_ItemId["Shield"] = {}
	tCutePet_DriedFish_ItemId["Shield"][1] = 380045
	tCutePet_DriedFish_ItemId["Shield"][2] = 380046
	--弓外套,[1]为原始版本,[2]为光效版本,下同
	tCutePet_DriedFish_ItemId["Bow"] = {}
	tCutePet_DriedFish_ItemId["Bow"][1] = 370039
	tCutePet_DriedFish_ItemId["Bow"][2] = 370040
	
	--长短杖外套,[1]为原始版本,[2]为光效版本,下同
	tCutePet_DriedFish_ItemId["ShortStaff"] = {}
	tCutePet_DriedFish_ItemId["ShortStaff"][1] = 360185
	tCutePet_DriedFish_ItemId["ShortStaff"][2] = 360186
	
	tCutePet_DriedFish_ItemId["LongStaff"] = {}
	tCutePet_DriedFish_ItemId["LongStaff"][1] = 350094
	tCutePet_DriedFish_ItemId["LongStaff"][2] = 350095
	
	--时装外套,[1]表示不可洗赠,[2]表示可洗赠,[3]表示光效版本,[4]表示高级光效版本
	tCutePet_DriedFish_ItemId["Human"] = {}
	tCutePet_DriedFish_ItemId["Human"][1] = 193535
	tCutePet_DriedFish_ItemId["Human"][2] = 193545
	tCutePet_DriedFish_ItemId["Human"][3] = 193555
	tCutePet_DriedFish_ItemId["Human"][4] = 193565
	--坐骑外套,[1]表示不可洗赠,[2]表示可洗赠,[3]表示光效版本,[4]表示高级光效版本
	tCutePet_DriedFish_ItemId["Mount"] = {}
	tCutePet_DriedFish_ItemId["Mount"][1] = 200541
	tCutePet_DriedFish_ItemId["Mount"][2] = 200542
	tCutePet_DriedFish_ItemId["Mount"][3] = 200543
	tCutePet_DriedFish_ItemId["Mount"][4] = 200544
	
	--发型,[1]表示普通,[2]表示绑定,[3]表示高级,[4]表示高级绑定
	tCutePet_DriedFish_ItemId["Hair"] = {}
	tCutePet_DriedFish_ItemId["Hair"][1] = 3007997
	tCutePet_DriedFish_ItemId["Hair"][2] = 3007998
	tCutePet_DriedFish_ItemId["Hair"][3] = 3007999
	tCutePet_DriedFish_ItemId["Hair"][4] = 3008000

--萌宠洗赠道具（碎片）属性9 叠加100
	tCutePet_DriedFish_ItemId[3007985] = 3007985
--萌宠光效道具（碎片）属性9 叠加100
	tCutePet_DriedFish_ItemId[3007986] = 3007986
--萌宠洗赠道具 属性9，可叠加100
	tCutePet_DriedFish_ItemId[3007987] = 3007987
--萌宠光效道具 属性9，可叠加100
	tCutePet_DriedFish_ItemId[3007988] = 3007988

--光效版萌宠武器外套礼包 属性9，不可叠加
	tCutePet_DriedFish_ItemId[3007989] = 3007989
--光效版萌宠时装礼包 属性9，不可叠加
	tCutePet_DriedFish_ItemId[3007990] = 3007990
--光效版萌宠坐骑礼包 属性9，不可叠加
	tCutePet_DriedFish_ItemId[3007991] = 3007991
--萌宠外套豪华套包 属性9，不可叠加
	tCutePet_DriedFish_ItemId[3007992] = 3007992

--普通养成道具（碎片） 属性9，可叠加100
	tCutePet_DriedFish_ItemId[3007993] = 3007993
--普通养成道具 属性9，可叠加100，用于养成灵猫（抽奖）
	tCutePet_DriedFish_ItemId[3007994] = 3007994
--高级养成道具 属性9，可叠加100，用于养成灵猫（抽奖）
	tCutePet_DriedFish_ItemId[3007995] = 3007995
--灵丹 属性11，不可叠加
	tCutePet_DriedFish_ItemId[3007996] = 3007996

local tCutePet_DriedFish_Stc = {}
--掉落限制
	tCutePet_DriedFish_Stc["LootLimit"] = {}
	tCutePet_DriedFish_Stc["LootLimit"]["Event"] = 139
	tCutePet_DriedFish_Stc["LootLimit"]["Type"] = 37
	tCutePet_DriedFish_Stc["LootLimit"]["Limit"] = 20
--玩家杀怪数量
	tCutePet_DriedFish_Stc["Point"] = {}
	tCutePet_DriedFish_Stc["Point"]["Event"] = 139
	tCutePet_DriedFish_Stc["Point"]["Type"] = 38
	tCutePet_DriedFish_Stc["Point"]["Limit"] = 300
--奖励次数
	tCutePet_DriedFish_Stc["Spirit"] = {}
	tCutePet_DriedFish_Stc["Spirit"]["Event"] = 139
	tCutePet_DriedFish_Stc["Spirit"]["Type"] = 39
	tCutePet_DriedFish_Stc["Spirit"]["Limit"] = 5

	
--灵猫养成情况
	tCutePet_DriedFish_Stc["Status"] = {}
	tCutePet_DriedFish_Stc["Status"]["Event"] = 139
	tCutePet_DriedFish_Stc["Status"]["Type"] = 42

--新增掩码，每次掉落时掩码+1，这个掩码值≥5时走假概率，同时值-5（走真概率不减）				
	tCutePet_DriedFish_Stc["False"] = {}
	tCutePet_DriedFish_Stc["False"]["Event"] = 139
	tCutePet_DriedFish_Stc["False"]["Type"] = 95	

local tCutePet_DriedFish_Log = {}
	tCutePet_DriedFish_Log["Id"] = 12000269
	
	--物品的过期删除
	tCutePet_DriedFish_Log["Expire"] = "0,0,%s,1,12000269,3,%s,%s"
	
	--拼碎片
	tCutePet_DriedFish_Log["PieceToOne"] = {}
	--洗赠
	tCutePet_DriedFish_Log["PieceToOne"][3007985] = "0,0,3007985,5,12000269,2,3007987,1"
	--光效
	tCutePet_DriedFish_Log["PieceToOne"][3007986] = "0,0,3007986,5,12000269,2,3007988,1"
	--养成道具
	tCutePet_DriedFish_Log["PieceToOne"][3007993] = "0,0,3007993,5,12000269,2,3007994,1"
	
	
	--赌翻倍赢
	tCutePet_DriedFish_Log["PieceBet"] = {}
	tCutePet_DriedFish_Log["PieceBet"]["Success"] = {}
	tCutePet_DriedFish_Log["PieceBet"]["Success"][3007985] = "0,0,3007985,1,12000269,1[15],3007985,2"
	tCutePet_DriedFish_Log["PieceBet"]["Success"][3007986] = "0,0,3007986,1,12000269,1[16],3007986,2"
	tCutePet_DriedFish_Log["PieceBet"]["Success"][3007993] = "0,0,3007993,1,12000269,2,3007993,2"
	
	--赌翻倍输
	tCutePet_DriedFish_Log["PieceBet"]["Fail"] = {}
	tCutePet_DriedFish_Log["PieceBet"]["Fail"][3007985] = "0,0,3007985,1,12000269,1[15],0,0"
	tCutePet_DriedFish_Log["PieceBet"]["Fail"][3007986] = "0,0,3007986,1,12000269,1[16],0,0"
	tCutePet_DriedFish_Log["PieceBet"]["Fail"][3007993] = "0,0,3007993,1,12000269,2,0,0"
	
	
	--洗赠
	tCutePet_DriedFish_Log["Monopoly"] = {}
	--多个洗赠(必成)
	tCutePet_DriedFish_Log["Monopoly"]["Mult"] = {}
	tCutePet_DriedFish_Log["Monopoly"]["Mult"][193545] = "0,0,3007987[193545],3[1],12000269,2,193545,1"
	tCutePet_DriedFish_Log["Monopoly"]["Mult"][200542] = "0,0,3007987[200542],5[1],12000269,2,200542,1"

	--单个洗赠
	tCutePet_DriedFish_Log["Monopoly"]["Single"] = {}
	--单个洗赠成功
	tCutePet_DriedFish_Log["Monopoly"]["Single"]["Success"] = {}
	tCutePet_DriedFish_Log["Monopoly"]["Single"]["Success"][193545] = "0,0,3007987[193545],1[1],12000269,1[17],193545,1"
	tCutePet_DriedFish_Log["Monopoly"]["Single"]["Success"][200542] = "0,0,3007987[200542],1[1],12000269,1[18],200542,1"
	--单个洗赠失败=>100气力值
	tCutePet_DriedFish_Log["Monopoly"]["Single"]["Fail"] = {}
	tCutePet_DriedFish_Log["Monopoly"]["Single"]["Fail"][193545] = "0,0,3007987[193545],1[1],12000269,1[17],12,100"
	tCutePet_DriedFish_Log["Monopoly"]["Single"]["Fail"][200542] = "0,0,3007987[200542],1[1],12000269,1[18],12,100"

	--加光效
	tCutePet_DriedFish_Log["AddEffect"] = {}
	--给武器加光效
	tCutePet_DriedFish_Log["AddEffect"]["Weapon"] = "0,0,3007987[%s],1[1],12000269,1,%s,1"
	--多个加光效(必成)
	tCutePet_DriedFish_Log["AddEffect"]["Mult"] = {}
	tCutePet_DriedFish_Log["AddEffect"]["Mult"][193545] = "0,0,3007987[193545],5[1],12000269,2,193555,1"
	tCutePet_DriedFish_Log["AddEffect"]["Mult"][200542] = "0,0,3007987[200542],5[1],12000269,2,200543,1"

	--单个加光效
	tCutePet_DriedFish_Log["AddEffect"]["Single"] = {}
	--单个加光效成功
	tCutePet_DriedFish_Log["AddEffect"]["Single"]["Success"] = {}
	tCutePet_DriedFish_Log["AddEffect"]["Single"]["Success"][193545] = "0,0,3007987[193545],1[1],12000269,1[19],193555,1"
	tCutePet_DriedFish_Log["AddEffect"]["Single"]["Success"][200542] = "0,0,3007987[200542],1[1],12000269,1[20],200543,1"
	--单个加光效失败=>200气力值
	tCutePet_DriedFish_Log["AddEffect"]["Single"]["Fail"] = {}
	tCutePet_DriedFish_Log["AddEffect"]["Single"]["Fail"][193545] = "0,0,3007987[193545],1[1],12000269,1[19],12,200"
	tCutePet_DriedFish_Log["AddEffect"]["Single"]["Fail"][200542] = "0,0,3007987[200542],1[1],12000269,1[20],12,200"

--打开礼包
	tCutePet_DriedFish_Log["OpenPack"] = "0,0,%s,1,12000269,2,%s,1"
	tCutePet_DriedFish_Log["OpenLuxuryPack"] = "0,0,3007992,1,12000269,2,194312[200543][3007989][3007997],1[1][2][1]"
	
--灵丹领奖
	tCutePet_DriedFish_Log["Award"] = "0,0,3007996,1,12000269,1[9],%s[4][12],1[30][30]"
	tCutePet_DriedFish_Log["AwardMaxLev"] = "0,0,3007996,1,12000269,1[9],%s[12],1[30]"

--重随灵丹奖励
	tCutePet_DriedFish_Log["RandomAward"] = "0,0,0,0,12000269,1[9],0,0"
	
--打怪掉活动道具
	tCutePet_DriedFish_Log["ItemLoot"] = "0,0,0,0,12000269,1[1],3007993,1"
	
--深海寻宝log
	tCutePet_DriedFish_Log["DeepSea"] = "0,0,711609,1,10000687,2,%s,1"
	
	local tCutePet_DriedFish_EmoneyLog = {}
	tCutePet_DriedFish_EmoneyLog["EffectWeapon"] = "250	4033	0	0	1	"
	tCutePet_DriedFish_EmoneyLog["Hair"] = "250	4038	0	0	1	"
	
	tCutePet_DriedFish_EmoneyLog["Monopoly"] = {}
	tCutePet_DriedFish_EmoneyLog["Monopoly"][193545] = "250	4035	0	0	1	"
	tCutePet_DriedFish_EmoneyLog["Monopoly"][200542] = "250	4041	0	0	1	"

	tCutePet_DriedFish_EmoneyLog["Effect"] = {}
	tCutePet_DriedFish_EmoneyLog["Effect"][193555] = "250	4036	0	0	1	"
	tCutePet_DriedFish_EmoneyLog["Effect"][200543] = "250	4042	0	0	1	"
	
------------------------------概率部分------------------------
local tCutePet_DriedFish_Rate = {}
--打怪掉活动道具的概率
	tCutePet_DriedFish_Rate["Loot"] = {}
	tCutePet_DriedFish_Rate["Loot"]["Total"] = 10000
	-- 20个以内
	tCutePet_DriedFish_Rate["Loot"][1] = 20
	tCutePet_DriedFish_Rate["Loot"][2] = 24
	tCutePet_DriedFish_Rate["Loot"][3] = 28
	tCutePet_DriedFish_Rate["Loot"][4] = 32
	tCutePet_DriedFish_Rate["Loot"][5] = 32
	-- 20个以上
	tCutePet_DriedFish_Rate["Loot"][6] = 10
	tCutePet_DriedFish_Rate["Loot"][7] = 12
	tCutePet_DriedFish_Rate["Loot"][8] = 14
	tCutePet_DriedFish_Rate["Loot"][9] = 16
	tCutePet_DriedFish_Rate["Loot"][10] = 16
	
--碎片赌翻倍的道具的概率
	tCutePet_DriedFish_Rate["PieceBet"] = {}
	tCutePet_DriedFish_Rate["PieceBet"][1] = {}
	tCutePet_DriedFish_Rate["PieceBet"][1][1] = {}
	tCutePet_DriedFish_Rate["PieceBet"][1][1]["ItemChanceSum"] = 10000

	tCutePet_DriedFish_Rate["PieceBet"][1][1][1] = {}
	tCutePet_DriedFish_Rate["PieceBet"][1][1][1]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["PieceBet"][1][1][1]["ItemChance"] = 4800
	tCutePet_DriedFish_Rate["PieceBet"][1][1][1]["Item_1"] = true

	tCutePet_DriedFish_Rate["PieceBet"][1][1][2] = {}
	tCutePet_DriedFish_Rate["PieceBet"][1][1][2]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["PieceBet"][1][1][2]["ItemChance"] = 5200
	tCutePet_DriedFish_Rate["PieceBet"][1][1][2]["Item_1"] = false
--洗赠和强化物品
	tCutePet_DriedFish_Rate["Enhance"] = {}
	--时装外套
	tCutePet_DriedFish_Rate["Enhance"][193545] = {}
	tCutePet_DriedFish_Rate["Enhance"][193545][1] = {}
	tCutePet_DriedFish_Rate["Enhance"][193545][1]["ItemChanceSum"] = 10000

	tCutePet_DriedFish_Rate["Enhance"][193545][1][1] = {}
	tCutePet_DriedFish_Rate["Enhance"][193545][1][1]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Enhance"][193545][1][1]["ItemChance"] = 3000
	tCutePet_DriedFish_Rate["Enhance"][193545][1][1]["Item_1"] = true

	tCutePet_DriedFish_Rate["Enhance"][193545][1][2] = {}
	tCutePet_DriedFish_Rate["Enhance"][193545][1][2]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Enhance"][193545][1][2]["ItemChance"] = 7000
	tCutePet_DriedFish_Rate["Enhance"][193545][1][2]["Item_1"] = false
	--坐骑外套
	tCutePet_DriedFish_Rate["Enhance"][200542] = {}
	tCutePet_DriedFish_Rate["Enhance"][200542][1] = {}
	tCutePet_DriedFish_Rate["Enhance"][200542][1]["ItemChanceSum"] = 10000

	tCutePet_DriedFish_Rate["Enhance"][200542][1][1] = {}
	tCutePet_DriedFish_Rate["Enhance"][200542][1][1]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Enhance"][200542][1][1]["ItemChance"] = 1800
	tCutePet_DriedFish_Rate["Enhance"][200542][1][1]["Item_1"] = true

	tCutePet_DriedFish_Rate["Enhance"][200542][1][2] = {}
	tCutePet_DriedFish_Rate["Enhance"][200542][1][2]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Enhance"][200542][1][2]["ItemChance"] = 8200
	tCutePet_DriedFish_Rate["Enhance"][200542][1][2]["Item_1"] = false

--灵丹抽奖
	tCutePet_DriedFish_Rate["Spirit"] = {}
	tCutePet_DriedFish_Rate["Spirit"][1] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1]["ItemChanceSum"] = 10000
--普通养成道具碎片
	tCutePet_DriedFish_Rate["Spirit"][1][1][1] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1][1]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Spirit"][1][1][1]["ItemChance"] = 1700
	tCutePet_DriedFish_Rate["Spirit"][1][1][1]["Item_1"] = 3007993
--普通养成道具
	tCutePet_DriedFish_Rate["Spirit"][1][1][2] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1][2]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Spirit"][1][1][2]["ItemChance"] = 1000
	tCutePet_DriedFish_Rate["Spirit"][1][1][2]["Item_1"] = 3007994
--高级养成道具
	tCutePet_DriedFish_Rate["Spirit"][1][1][3] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1][3]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Spirit"][1][1][3]["ItemChance"] = 100
	tCutePet_DriedFish_Rate["Spirit"][1][1][3]["Item_1"] = 3007995
--7天武器外套（碎片）
	tCutePet_DriedFish_Rate["Spirit"][1][1][4] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1][4]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Spirit"][1][1][4]["ItemChance"] = 1700
	tCutePet_DriedFish_Rate["Spirit"][1][1][4]["Item_1"] = 3008038
--7天时装外套（碎片）
	tCutePet_DriedFish_Rate["Spirit"][1][1][5] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1][5]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Spirit"][1][1][5]["ItemChance"] = 1600
	tCutePet_DriedFish_Rate["Spirit"][1][1][5]["Item_1"] = 3008039
--7天坐骑外套（碎片）
	tCutePet_DriedFish_Rate["Spirit"][1][1][6] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1][6]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Spirit"][1][1][6]["ItemChance"] = 1500
	tCutePet_DriedFish_Rate["Spirit"][1][1][6]["Item_1"] = 3008040
--30天武器外套礼包（碎片）
	tCutePet_DriedFish_Rate["Spirit"][1][1][7] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1][7]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Spirit"][1][1][7]["ItemChance"] = 900
	tCutePet_DriedFish_Rate["Spirit"][1][1][7]["Item_1"] = 3008044
--永久时装外套（碎片）
	tCutePet_DriedFish_Rate["Spirit"][1][1][8] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1][8]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Spirit"][1][1][8]["ItemChance"] = 800
	tCutePet_DriedFish_Rate["Spirit"][1][1][8]["Item_1"] = 3008045
--永久坐骑外套（碎片）
	tCutePet_DriedFish_Rate["Spirit"][1][1][9] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1][9]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Spirit"][1][1][9]["ItemChance"] = 600
	tCutePet_DriedFish_Rate["Spirit"][1][1][9]["Item_1"] = 3008046
--萌宠洗赠道具（碎片）
	tCutePet_DriedFish_Rate["Spirit"][1][1][10] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1][10]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Spirit"][1][1][10]["ItemChance"] = 70
	tCutePet_DriedFish_Rate["Spirit"][1][1][10]["Item_1"] = 3007985
--萌宠光效道具（碎片）
	tCutePet_DriedFish_Rate["Spirit"][1][1][11] = {}
	tCutePet_DriedFish_Rate["Spirit"][1][1][11]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Spirit"][1][1][11]["ItemChance"] = 30
	tCutePet_DriedFish_Rate["Spirit"][1][1][11]["Item_1"] = 3007986

	--深海寻宝
	tCutePet_DriedFish_Rate["Sea"] = {}
	tCutePet_DriedFish_Rate["Sea"][1] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1]["ItemChanceSum"] = 10000
--普通养成道具碎片
	tCutePet_DriedFish_Rate["Sea"][1][1][1] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1][1]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Sea"][1][1][1]["ItemChance"] = 700
	tCutePet_DriedFish_Rate["Sea"][1][1][1]["Item_1"] = 3007993
--普通养成道具
	tCutePet_DriedFish_Rate["Sea"][1][1][2] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1][2]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Sea"][1][1][2]["ItemChance"] = 250
	tCutePet_DriedFish_Rate["Sea"][1][1][2]["Item_1"] = 3007994
--高级养成道具
	tCutePet_DriedFish_Rate["Sea"][1][1][3] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1][3]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Sea"][1][1][3]["ItemChance"] = 20
	tCutePet_DriedFish_Rate["Sea"][1][1][3]["Item_1"] = 3007995
--7天武器外套（碎片）
	tCutePet_DriedFish_Rate["Sea"][1][1][4] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1][4]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Sea"][1][1][4]["ItemChance"] = 800
	tCutePet_DriedFish_Rate["Sea"][1][1][4]["Item_1"] = 3008038
--7天时装外套（碎片）
	tCutePet_DriedFish_Rate["Sea"][1][1][5] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1][5]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Sea"][1][1][5]["ItemChance"] = 700
	tCutePet_DriedFish_Rate["Sea"][1][1][5]["Item_1"] = 3008039
--7天坐骑外套（碎片）
	tCutePet_DriedFish_Rate["Sea"][1][1][6] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1][6]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Sea"][1][1][6]["ItemChance"] = 600
	tCutePet_DriedFish_Rate["Sea"][1][1][6]["Item_1"] = 3008040
--30天武器外套礼包（碎片）
	tCutePet_DriedFish_Rate["Sea"][1][1][7] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1][7]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Sea"][1][1][7]["ItemChance"] = 400
	tCutePet_DriedFish_Rate["Sea"][1][1][7]["Item_1"] = 3008044
--永久时装外套（碎片）
	tCutePet_DriedFish_Rate["Sea"][1][1][8] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1][8]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Sea"][1][1][8]["ItemChance"] = 300
	tCutePet_DriedFish_Rate["Sea"][1][1][8]["Item_1"] = 3008045
--永久坐骑外套（碎片）
	tCutePet_DriedFish_Rate["Sea"][1][1][9] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1][9]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Sea"][1][1][9]["ItemChance"] = 200
	tCutePet_DriedFish_Rate["Sea"][1][1][9]["Item_1"] = 3008046
--萌宠洗赠道具（碎片）
	tCutePet_DriedFish_Rate["Sea"][1][1][10] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1][10]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Sea"][1][1][10]["ItemChance"] = 20
	tCutePet_DriedFish_Rate["Sea"][1][1][10]["Item_1"] = 3007985
--萌宠光效道具（碎片）
	tCutePet_DriedFish_Rate["Sea"][1][1][11] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1][11]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Sea"][1][1][11]["ItemChance"] = 10
	tCutePet_DriedFish_Rate["Sea"][1][1][11]["Item_1"] = 3007986
--桃源灵玉
	tCutePet_DriedFish_Rate["Sea"][1][1][12] = {}
	tCutePet_DriedFish_Rate["Sea"][1][1][12]["RandomItemChanceType"] = 2
	tCutePet_DriedFish_Rate["Sea"][1][1][12]["ItemChance"] = 6000
	tCutePet_DriedFish_Rate["Sea"][1][1][12]["Item_1"] = 711504
------------------------------公用逻辑部分------------------------
--掩码相关操作,sType为掩码的种类,nValue不存在时返回掩码值,参数2有值时设置掩码值
function CutePet_DriedFish_StcOpe(sType,nValue)
	local nEvent = tCutePet_DriedFish_Stc[sType]["Event"]
	local nType = tCutePet_DriedFish_Stc[sType]["Type"]
	
	--设置掩码值
	if nil ~= nValue then
		Task_SetStatistic(nEvent,nType,nValue,1,0)
		CutePet_DriedFish_TimeStamp(sType)
		return
	
	--返回掩码值
	else
		local nStcValue = Get_UserStatisticValue(nEvent,nType)
		return nStcValue
	end
end

--掩码时间戳相关操作,sType为掩码的种类,nDays表示间隔的天数,若间隔nDays天以上,返回true,若nDays为nil,重置时间戳
function CutePet_DriedFish_TimeStamp(sType,nDays)
	local nEvent = tCutePet_DriedFish_Stc[sType]["Event"]
	local nType = tCutePet_DriedFish_Stc[sType]["Type"]
	
	--重置时间戳
	if nil == nDays then
		Task_SetStcTimestamp(nEvent,nType,0)
		
		return
	
	--返回时间是否间隔
	else
		return  Task_StcInterval(nEvent,nType,nDays,4)
	end
end

--每天重置掩码和时间戳
function CutePet_DriedFish_DailyReset()
	if CutePet_DriedFish_TimeStamp("LootLimit",1) then
		CutePet_DriedFish_StcOpe("LootLimit",0)
	end
	if CutePet_DriedFish_TimeStamp("Point",1) then
		CutePet_DriedFish_StcOpe("Point",0)
	end
	if CutePet_DriedFish_TimeStamp("Spirit",1) then
		CutePet_DriedFish_StcOpe("Spirit",0)
	end
end

--获取随机奖励
function CutePet_DriedFish_SpiritRandomAward()
	local flat,tItem1 = Probabil_RandomAward(tCutePet_DriedFish_Rate["Spirit"][1],1)
	nAwardId = tItem1[1]["tAward"][1]["Item_1"]
	return nAwardId
end

--获取深海寻宝奖励
function CutePet_DriedFish_SeaRandomAward()
	local flat,tItem1 = Probabil_RandomAward(tCutePet_DriedFish_Rate["Sea"][1],1)
	nAwardId = tItem1[1]["tAward"][1]["Item_1"]
	return nAwardId
end

------------------------------物品逻辑部分------------------------
--物品的过期删除判断
function CutePet_DriedFish_Expire(nItemId)
	local sLog = tCutePet_DriedFish_Log["Expire"]
	local nStrength = 0
	local nStrengthValue = 0
	local sSelf = tCutePet_DriedFish_Effect["Self"]
	local sEffect = tCutePet_DriedFish_Effect["Expire"]
	--未过期,返回true,继续进行
	if Sys_ChkFullTime(tCutePet_DriedFish_Data["Time"]) then
		return true
	end

	--过期的情况,删除道具
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then

		--某些道具过期变气力
		if nItemId == tCutePet_DriedFish_ItemId[3007985] then
			nStrength = 12
			nStrengthValue = tCutePet_DriedFish_Data["Strength"][300]
			User_EffectAdd(sSelf,sEffect)
			User_AddStrengthValue(nStrengthValue)
		elseif nItemId == tCutePet_DriedFish_ItemId[3007986] then
			nStrength = 12
			nStrengthValue = tCutePet_DriedFish_Data["Strength"][600]
			User_EffectAdd(sSelf,sEffect)
			User_AddStrengthValue(nStrengthValue)
		elseif nItemId == tCutePet_DriedFish_ItemId[3007987] then
			nStrength = 12
			nStrengthValue = tCutePet_DriedFish_Data["Strength"][1500]
			User_EffectAdd(sSelf,sEffect)
			User_AddStrengthValue(nStrengthValue)
		elseif nItemId == tCutePet_DriedFish_ItemId[3007988] then
			nStrength = 12
			nStrengthValue = tCutePet_DriedFish_Data["Strength"][3000]
			User_EffectAdd(sSelf,sEffect)
			User_AddStrengthValue(nStrengthValue)
		elseif nItemId == tCutePet_DriedFish_ItemId[3007995] then
			nStrength = 12
			nStrengthValue = tCutePet_DriedFish_Data["Strength"][200]
			User_EffectAdd(sSelf,sEffect)
			User_AddStrengthValue(nStrengthValue)
			
		--其余情况不给气力
		end
		--对白
		local sText = tCutePet_DriedFish_Text[nItemId]["Expire"]
		User_TalkChannel2005(sText)
		
		--记录log
		sLog = string.format(tCutePet_DriedFish_Log["Expire"],nItemId,nStrength,nStrengthValue)
		Sys_SaveActionFestivalLog(sLog)
	end
	return false
end


--5个碎片拼完整道具
function CutePet_DriedFish_PieceToOne(nPieceId,nWholeId)
	--过期删除
	if not CutePet_DriedFish_Expire(nPieceId) then
		return
	end

	local nItemNum = tCutePet_DriedFish_Data["PieceToOne"]
	--检测5个碎片
	if not Item_ChkMulItem(nPieceId,nPieceId,nItemNum) then
		--提示玩家
		User_TalkChannel2005(tCutePet_DriedFish_Text[nPieceId]["NotEnough"])
		return
	end

	--存在5个碎片,检测背包空位
	if not User_CheckLeftSpace(1) then
	
		--提示玩家
		User_TalkChannel2005(tCutePet_DriedFish_Text[nPieceId]["FullBag"])
		return
	end
	
	--有5个碎片,有空位,删除5个碎片,增加1个道具
	if Item_DelMulItem(nPieceId,nPieceId,nItemNum) then
		Item_AddItem(nWholeId)
		--提示玩家
		User_TalkChannel2005(tCutePet_DriedFish_Text[nPieceId]["Fusion"])
		local sLog = tCutePet_DriedFish_Log["PieceToOne"][nPieceId]
		Sys_SaveActionFestivalLog(sLog)
	end
end


--单个赌翻倍
function CutePet_DriedFish_PieceBet(nPieceId)
	--过期删除
	if not CutePet_DriedFish_Expire(nPieceId) then
		return
	end

	local sLog = ""
	local sText = ""
	local sSelf = tCutePet_DriedFish_Effect["Self"]
	local sEffect = ""

	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[nPieceId]["FullBag"])
		return
	end
	
	--检测碎片
	if not Item_ChkItem(nPieceId) then
		return
	end
	if Item_DelItem(nPieceId) then
		--检测背包
		if not User_CheckLeftSpace(1) then
			--提示玩家
			User_TalkChannel2005(tCutePet_DriedFish_Text[nPieceId]["FullBag"])
			return
		end
		
		--概率
		local flat,tItem = Probabil_RandomAward(tCutePet_DriedFish_Rate["PieceBet"][1],1)
		local bResult = tItem[1]["tAward"][1]["Item_1"]
		
		--赌赢
		if bResult then
			sLog = tCutePet_DriedFish_Log["PieceBet"]["Success"][nPieceId]
			sEffect = tCutePet_DriedFish_Effect["Success"]
			Item_AddItem(nPieceId,0,2)
			LinkItemGossipFunc_New(nPieceId,"2-2")
		--赌输
		else
			sLog = tCutePet_DriedFish_Log["PieceBet"]["Fail"][nPieceId]
			sEffect = tCutePet_DriedFish_Effect["Fail"]
			LinkItemGossipFunc_New(nPieceId,"2-1")
		end
		
		User_EffectAdd(sSelf,sEffect)
		Sys_SaveActionFestivalLog(sLog)
	end
end

--赌碎片判断
function CutePet_DriedFish_PieceBetFailJudge(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--洗赠
--使用单个道具洗赠
function CutePet_DriedFish_ChangeMonopolySingle(nItemId)
	local nEnhanceItem = tCutePet_DriedFish_ItemId[3007987]
	local sLog = ""
	local sText = ""
	local sSelf = tCutePet_DriedFish_Effect["Self"]
	local sEffect = ""
	local sAttr = ""

	--检测背包中是否有洗赠道具
	if not Item_ChkItem(nEnhanceItem) then
		return
	end


	--过期删除
	if not CutePet_DriedFish_Expire(nEnhanceItem) then
		return
	end

	--检测背包中是否存在可洗的赠品
	if not Item_ChkMulItem(nItemId,nItemId,1,2) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[nEnhanceItem]["LackItem"][nItemId])
		return
	end


	--都存在,删除洗赠道具,判断概率
	if Item_DelItem(nEnhanceItem) then
		local flat,tItem = Probabil_RandomAward(tCutePet_DriedFish_Rate["Enhance"][nItemId],1)
		local bResult = tItem[1]["tAward"][1]["Item_1"]
		
		--成功,非赠,1神佑
		if bResult then
			sLog = tCutePet_DriedFish_Log["Monopoly"]["Single"]["Success"][nItemId]
			sEffect = tCutePet_DriedFish_Effect["Success1"]
			sAttr = tCutePet_DriedFish_Data["1RD"]
			if Item_DelMulItem(nItemId,nItemId,1,2) then
				Item_AddNewItem(nItemId,sAttr)
				sText = tCutePet_DriedFish_Text[nEnhanceItem]["Success"][nItemId]
				Sys_SaveEmoneyBuy(tCutePet_DriedFish_EmoneyLog["Monopoly"][nItemId])
			end

		--失败
		else
			sLog = tCutePet_DriedFish_Log["Monopoly"]["Single"]["Fail"][nItemId]
			sEffect = tCutePet_DriedFish_Effect["Fail"]
			sText = tCutePet_DriedFish_Text[nEnhanceItem]["Fail"]
			User_AddStrengthValue(tCutePet_DriedFish_Data["Strength"][100])
		end
		User_TalkChannel2005(sText)
		User_EffectAdd(sSelf,sEffect)
		Sys_SaveActionFestivalLog(sLog)
	end
end


--多个洗赠,必然成功,nItemId洗赠对象,nEnhanceItem洗赠道具
function CutePet_DriedFish_ChangeMonopoly(nItemId,nEnhanceItemNum)
	local nEnhanceItem = tCutePet_DriedFish_ItemId[3007987]
	local sSelf = tCutePet_DriedFish_Effect["Self"]
	local sEffect = tCutePet_DriedFish_Effect["Success"]
	local sAttr = tCutePet_DriedFish_Data["1RD"]
	
	--过期删除
	if not CutePet_DriedFish_Expire(nEnhanceItem) then
		return
	end

	--检测背包中是否存在可洗的赠品
	if not Item_ChkMulItem(nItemId,nItemId,1,2) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[nEnhanceItem]["LackItem"][nItemId])
		return
	end
	--检测背包中是否有预设数目的洗赠道具
	if not Item_ChkMulItem(nEnhanceItem,nEnhanceItem,nEnhanceItemNum) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[nEnhanceItem]["NotEnough"][nItemId])
		return
	end
	
	--都存在,删除洗赠道具和赠品,给与非赠品
	if Item_DelMulItem(nItemId,nItemId,1,2) and Item_DelMulItem(nEnhanceItem,nEnhanceItem,nEnhanceItemNum) then
		Item_AddNewItem(nItemId,sAttr)
		User_EffectAdd(sSelf,sEffect)
		Sys_SaveEmoneyBuy(tCutePet_DriedFish_EmoneyLog["Monopoly"][nItemId])
		local sLog = tCutePet_DriedFish_Log["Monopoly"]["Mult"][nItemId]
		Sys_SaveActionFestivalLog(sLog)
	end
end

--添加光效(永久非赠的无光效1神佑版本时装/坐骑外套)
--使用单个道具添加光效
function CutePet_DriedFish_AddEffectSingle(nItemId)
	local nEnhanceItem = tCutePet_DriedFish_ItemId[3007988]
	local sLog = ""
	local sText = ""
	local sSelf = tCutePet_DriedFish_Effect["Self"]
	local sEffect = ""
	local sAttr = tCutePet_DriedFish_Data["1RD"]
	local sType = ""
	--过期删除
	if not CutePet_DriedFish_Expire(nEnhanceItem) then
		return
	end
	
	--检测背包中是否有光效道具
	if not Item_ChkItem(nEnhanceItem) then
		return
	end

	--检测背包中是否存在永久非赠外套
	if not Item_ChkMulItem(nItemId,nItemId,1,0) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[nEnhanceItem]["LackItem"][nItemId])
		return
	end

	--判断外套种类
	if nItemId == tCutePet_DriedFish_ItemId["Human"][2] then
		sType = "Human"
	elseif nItemId == tCutePet_DriedFish_ItemId["Mount"][2] then
		sType = "Mount"
	end

	--都存在,删除光效道具,判断概率
	if Item_DelItem(nEnhanceItem) then
		local flat,tItem = Probabil_RandomAward(tCutePet_DriedFish_Rate["Enhance"][nItemId],1)
		local bResult = tItem[1]["tAward"][1]["Item_1"]

		--成功
		if bResult then
			sLog = tCutePet_DriedFish_Log["AddEffect"]["Single"]["Success"][nItemId]
			sEffect = tCutePet_DriedFish_Effect["Success1"]
			if Item_DelMulItem(nItemId,nItemId,1,0) then
				local nEffectItemId = tCutePet_DriedFish_ItemId[sType][3]
				Item_AddNewItem(nEffectItemId,sAttr)
				sText = tCutePet_DriedFish_Text[nEnhanceItem]["Success"][nItemId]
				local sUserName = Get_UserName()
				local sBroadCast = string.format(tCutePet_DriedFish_Text[nEnhanceItem]["BroadCast"][nItemId],sUserName)
				Sys_SystemBroadcast(sBroadCast)
				Sys_SaveEmoneyBuy(tCutePet_DriedFish_EmoneyLog["Effect"][nEffectItemId])
			end

		--失败
		else
			sLog = tCutePet_DriedFish_Log["AddEffect"]["Single"]["Fail"][nItemId]
			sEffect = tCutePet_DriedFish_Effect["Fail"]
			User_AddStrengthValue(tCutePet_DriedFish_Data["Strength"][200])
			sText = tCutePet_DriedFish_Text[nEnhanceItem]["Fail"]
		end
		User_TalkChannel2005(sText)
		User_EffectAdd(sSelf,sEffect)
		Sys_SaveActionFestivalLog(sLog)
	end
end

--多个加光效,必然成功
function CutePet_DriedFish_AddEffect(nItemId,nEnhanceItemNum)
	local nEnhanceItem = tCutePet_DriedFish_ItemId[3007988]
	local sSelf = tCutePet_DriedFish_Effect["Self"]
	local sEffect = tCutePet_DriedFish_Effect["Success"]
	local sAttr = tCutePet_DriedFish_Data["1RD"]
	local sType = ""
	local sText = ""
	if nItemId == tCutePet_DriedFish_ItemId["Human"][2] then
		sType = "Human"
	elseif nItemId == tCutePet_DriedFish_ItemId["Mount"][2] then
		sType = "Mount"
	end
	--检测背包中是否有预设数目的加光效道具
	if not Item_ChkMulItem(nEnhanceItem,nEnhanceItem,nEnhanceItemNum) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[3007988]["NotEnough"][193545])
		return
	end

	--过期删除
	if not CutePet_DriedFish_Expire(nEnhanceItem) then
		return
	end

	--检测背包中是否存在可加光效的永久非赠品
	if not Item_ChkMulItem(nItemId,nItemId,1,0) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[3007988]["LackItem"][193545])
		return
	end

	--都存在,删除加光效道具和赠品,给与非赠品
	if Item_DelMulItem(nItemId,nItemId,1,0) and Item_DelMulItem(nEnhanceItem,nEnhanceItem,nEnhanceItemNum) then
		local nEffectItemId = tCutePet_DriedFish_ItemId[sType][3]
		Item_AddNewItem(nEffectItemId,sAttr)
		sText = tCutePet_DriedFish_Text[nEnhanceItem]["Success"][nItemId]
		User_TalkChannel2005(sText)
		User_EffectAdd(sSelf,sEffect)
		local sUserName = Get_UserName()
		local sBroadCast = string.format(tCutePet_DriedFish_Text[nEnhanceItem]["BroadCast"][nItemId],sUserName)
		Sys_SystemBroadcast(sBroadCast)
		Sys_SaveEmoneyBuy(tCutePet_DriedFish_EmoneyLog["Effect"][nEffectItemId])
		local sLog = tCutePet_DriedFish_Log["AddEffect"]["Mult"][nItemId]
		Sys_SaveActionFestivalLog(sLog)
	end
end

--添加光效(30天武器外套=>90天光效版本)
function CutePet_DriedFish_AddEffectWeapon(nItemId,sWeaponType)
	local nEnhanceItem = tCutePet_DriedFish_ItemId[3007988]
	local nEffectItem = tCutePet_DriedFish_ItemId[sWeaponType][2]
	local sSelf = tCutePet_DriedFish_Effect["Self"]
	local sEffect = tCutePet_DriedFish_Effect["Success"]
	
	--检测背包中的光效道具
	if not Item_ChkItem(nEnhanceItem,0) then
		return
	end

	--过期删除
	if not CutePet_DriedFish_Expire(nEnhanceItem) then
		return
	end

	--检测背包中是否有可添加光效的30天武器外套
	if not Item_ChkMulItem(nItemId,nItemId,1,0) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[3007988]["LackItem"][nItemId])
		return
	end

	--都有的情况下,删除30天外套和光效道具,添加光效外套,duang,对白,广播,log
	if Item_DelMulItem(nItemId,nItemId,1,0) and Item_DelItem(nEnhanceItem) then
		local sAttr = tCutePet_DriedFish_Data["90Days1RD"]
		Item_AddNewItem(nEffectItem,sAttr)
		local sUserName = Get_UserName()
		local sBroadCast = string.format(tCutePet_DriedFish_Text[nEnhanceItem]["BroadCast"][nItemId],sUserName)
		Sys_SystemBroadcast(sBroadCast)
		User_EffectAdd(sSelf,sEffect)
		User_TalkChannel2005(tCutePet_DriedFish_Text[nEnhanceItem]["Success"][nItemId])
		local sLog = string.format(tCutePet_DriedFish_Log["AddEffect"]["Weapon"],nItemId,nEffectItem)
		Sys_SaveActionFestivalLog(sLog)
		Sys_SaveEmoneyBuy(tCutePet_DriedFish_EmoneyLog["EffectWeapon"])
	end
end

--------------礼包逻辑-------------
--打开礼包,获取武器外套
function CutePet_DriedFish_WeaponPack(nItemId,nAwardId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--检查背包空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[nItemId]["FullBag"])
		return
	end
	tItem[3007989]["Text121"] = tCutePet_DriedFish_Text[3007989][nAwardId] 
	tItem[3007989]["OptionFunc121"] = string.format("</F>CutePet_DriedFish_WeaponPackOpen</N>3007989</N>%d",nAwardId)
	LinkItemGossipFunc_New(nItemId,"1-2")
end

--二次确认
function CutePet_DriedFish_WeaponPackOpen(nItemId,nAwardId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--检查背包空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[nItemId]["FullBag"])
		return
	end
	if Item_DelItem(nItemId) then
		--90天神佑1
		local sAttr = tCutePet_DriedFish_Data["90Days1RD"]
		Item_AddNewItem(nAwardId,sAttr)
		local sLog = tCutePet_DriedFish_Log["OpenPack"]
		User_TalkChannel2005(tCutePet_DriedFish_Text[nItemId]["Success"][nAwardId])
		sLog = string.format(sLog,nItemId,nAwardId)
		Sys_SaveActionFestivalLog(sLog)
		Sys_SaveEmoneyBuy(tCutePet_DriedFish_EmoneyLog["EffectWeapon"])
	end
end

--打开光效版本萌宠时装/坐骑礼包,删除本身,给与外套,提示,log
function CutePet_DriedFish_SuitPack(nItemId,nAwardId)
	--检测本身
	if not Item_ChkItem(nItemId) then
		return
	end
	--检查背包空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[nItemId]["FullBag"])
		return
	end
	--删除本身
	if Item_DelItem(nItemId) then
		--神佑1
		local sAttr = tCutePet_DriedFish_Data["1RD"]
		local sLog = tCutePet_DriedFish_Log["OpenPack"]
		Item_AddNewItem(nAwardId,sAttr)
		User_TalkChannel2005(tCutePet_DriedFish_Text[nItemId]["Success"])
		sLog = string.format(sLog,nItemId,nAwardId)
		Sys_SaveActionFestivalLog(sLog)
		Sys_SaveEmoneyBuy(tCutePet_DriedFish_EmoneyLog["Effect"][nAwardId])
	end
end

--豪华外套包,打开获得光效神佑1时装+坐骑,2*光效神佑1武器外套礼包,+发型
function CutePet_DriedFish_LuxuryPack(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--检查背包空间
	if not User_CheckLeftSpace(3) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[nItemId]["FullBag"])
		return
	end
	--条件满足,删除本身,给道具
	if Item_DelItem(nItemId) then
		local nHumanSuitId = tCutePet_DriedFish_ItemId["Human"][3]
		local nMountSuitId = tCutePet_DriedFish_ItemId["Mount"][3]
		local nWeaponPackId = tCutePet_DriedFish_ItemId[3007989]
		local nHairId = tCutePet_DriedFish_ItemId["Hair"][1]
		local sAttr1 = tCutePet_DriedFish_Data["1RD"]
		local sAttr2 = tCutePet_DriedFish_Data["2Num"]
		Item_AddNewItem(nHumanSuitId,sAttr1)
		Item_AddNewItem(nMountSuitId,sAttr1)
		Item_AddNewItem(nWeaponPackId,sAttr2)
		Item_AddItem(nHairId)
		User_TalkChannel2005(tCutePet_DriedFish_Text[nItemId]["Success"])
		local sLog = tCutePet_DriedFish_Log["OpenLuxuryPack"]
		Sys_SaveActionFestivalLog(sLog)
		Sys_SaveEmoneyBuy(tCutePet_DriedFish_EmoneyLog["Effect"][193555])
		Sys_SaveEmoneyBuy(tCutePet_DriedFish_EmoneyLog["Effect"][200543])
		Sys_SaveEmoneyBuy(tCutePet_DriedFish_EmoneyLog["Hair"])
	end
end


---------------使用灵丹------------
function CutePet_DriedFish_Spirit(nItemId)
	--过期删除
	if not CutePet_DriedFish_Expire(nItemId) then
		return
	end
	
	--活动期间
	--根据灵丹星数取对白
	
	--杀怪数目=>灵力值
	local nPointLimit = tCutePet_DriedFish_Stc["Point"]["Limit"]
	local nPoint = CutePet_DriedFish_StcOpe("Point")
	
	--抽奖次数
	local nSpiritLimit = tCutePet_DriedFish_Stc["Spirit"]["Limit"]
	local nSpiritLevel = CutePet_DriedFish_StcOpe("Spirit")
	
	if nSpiritLevel >= nSpiritLimit then
		tItem[3007996]["Text111"] = tCutePet_DriedFish_Text[3007996]["Text121"]
		tItem[3007996]["Text113"] = string.format(tCutePet_DriedFish_Text[3007996]["Text113"],nSpiritLevel)
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	end

	--输入当前杀怪数,还需要的杀怪数,下一阶段星数/经验,气力值/随机奖励的名称/重抽次数
	tItem[3007996]["Text111"] = string.format(tCutePet_DriedFish_Text[3007996]["Text111"],nPoint,(nPointLimit - nPoint))
	tItem[3007996]["Text112"] = string.format(tCutePet_DriedFish_Text[3007996]["Text112"])
	tItem[3007996]["Text113"] = string.format(tCutePet_DriedFish_Text[3007996]["Text113"],nSpiritLevel)
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--直接领取奖励
function CutePet_DriedFish_GetSpiritAward(nItemId)
	--确认道具存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	--检测背包空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tCutePet_DriedFish_Text[nItemId]["FullBag"])
		return
	end

	local nAwardTime = CutePet_DriedFish_StcOpe("Spirit")
	--领取奖励次数不足
	if nAwardTime <= 0 then
		User_TalkChannel2005(tCutePet_DriedFish_Text[3007996]["NotEnough"])
		return
	end
	
	
	--奖励相关内容
	local nAwardId = CutePet_DriedFish_SpiritRandomAward()
	local nSpiritExp = 30
	local nSpiritStrength = 30
	local nLevel = Get_UserLevel()
	local sText = ""
	local sSelf = tCutePet_DriedFish_Effect["Self"]
	local sEffect = tCutePet_DriedFish_Effect["Award"]
	local sLog = ""
	local sAward = tCutePet_DriedFish_Text["Award"][nAwardId]

	

	
	--删除道具,给道具,经验,气力值,对白,光效,log
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		CutePet_DriedFish_StcOpe("Spirit",(nAwardTime -1))
		--给道具
		Item_AddItem(nAwardId)
		
		--满级的情况,仅有气力值
		if nLevel >= G_User_MaxLev then
			User_AddStrengthValue(nSpiritStrength)
			User_EffectAdd(sSelf,sEffect)
			sText = string.format(tCutePet_DriedFish_Text[3007996]["GetAwardMaxLevel"],sAward)
			User_TalkChannel2005(sText)
			sLog = string.format(tCutePet_DriedFish_Log["AwardMaxLev"],nAwardId)
			Sys_SaveActionFestivalLog(sLog)
			return
		end
		
		local nAwardTime = CutePet_DriedFish_StcOpe("Spirit")
		
		--未满级的情况,加经验
		User_AddStrengthValue(nSpiritStrength)
		User_EffectAdd(sSelf,sEffect)
		sText = string.format(tCutePet_DriedFish_Text[3007996]["GetAward"],sAward)
		User_TalkChannel2005(sText)
		sLog = string.format(tCutePet_DriedFish_Log["Award"],nAwardId)
		Sys_SaveActionFestivalLog(sLog)
		User_AddExpTime(nSpiritExp)
	end
end

--自动寻路到喵女郎
function CutePet_DriedFish_AutoFindWay()
	local nNpcId = tCutePet_DriedFish_Pos["Lady"]["Id"]
	local nPosX = tCutePet_DriedFish_Pos["Lady"]["CellX"]
	local nPosY = tCutePet_DriedFish_Pos["Lady"]["CellY"]
	local nMapId = tCutePet_DriedFish_Pos["Lady"]["MapId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	User_TalkChannel2005(tCutePet_DriedFish_Text[3007995]["AutoFindWay"])
end


--------------怪物逻辑部分-------------
--杀死怪物得到1灵力,300灵力自动升星
function CutePet_DriedFish_Loot()
	--非活动期间
	if not Sys_ChkFullTime(tCutePet_DriedFish_Data["Time"]) then
		return
	end

	--每天重置
	CutePet_DriedFish_DailyReset()
	
	--分数相关
	CutePet_DriedFish_PointUp()
	--怪物按灵猫等级掉落道具
	CutePet_DriedFish_ItemLoot()
end

--灵丹分数和星数上升
function CutePet_DriedFish_PointUp()
	--身上没灵丹
	if not Item_ChkItem(tCutePet_DriedFish_ItemId[3007996]) then
		return
	end
	
	local nSpiritLimit = tCutePet_DriedFish_Stc["Spirit"]["Limit"]
	local nSpiritLevel = CutePet_DriedFish_StcOpe("Spirit")
	--超过5星
	if nSpiritLevel >= nSpiritLimit then
		return
	end
	--当前玩家分数++
	local nPoint = CutePet_DriedFish_StcOpe("Point")
	local nPointLimit = tCutePet_DriedFish_Stc["Point"]["Limit"]
	nPoint = nPoint + 1
	User_TalkChannel2005(tCutePet_DriedFish_Text[3007996]["Kill"])
	--根据玩家分数,判断


	--超过要求分数,判断掩码情况,
	--分数超出但是抽奖机会不到上限,设置掩码
	if (nPoint >= nPointLimit) and (CutePet_DriedFish_StcOpe("Spirit") <= 5) then
		local nAwardTime = CutePet_DriedFish_StcOpe("Spirit") + 1
		CutePet_DriedFish_StcOpe("Spirit",nAwardTime)
		
		
		CutePet_DriedFish_StcOpe("Point",0)
		
		local sSelf = tCutePet_DriedFish_Effect["Self"]
		local sEffect = tCutePet_DriedFish_Effect["Success1"]
		User_EffectAdd(sSelf,sEffect)
		User_TalkChannel2005(tCutePet_DriedFish_Text[3007996]["Up"])
		return
	end

	--未超过要求的情况,分数+1
	CutePet_DriedFish_StcOpe("Point",nPoint)
end

--怪物掉落物品
function CutePet_DriedFish_ItemLoot()
	--背包已满则不掉落
	if not User_CheckLeftSpace(1) then
		return
	end

	--已掉落5个则不再掉落
	local nLootLimitEvent = tCutePet_DriedFish_Stc["LootLimit"]["Event"]
	local nLootLimitType = tCutePet_DriedFish_Stc["LootLimit"]["Type"]
	local nLootLimit = tCutePet_DriedFish_Stc["LootLimit"]["Limit"]

	--根据分数取概率
	local nStatusEvent = tCutePet_DriedFish_Stc["Status"]["Event"]
	local nStatusType = tCutePet_DriedFish_Stc["Status"]["Type"]
	local nStatus = Get_UserStatisticValue(nStatusEvent,nStatusType)
	
	if (nStatus == 0) or (nStatus == nil) then
		nStatus = 1
	end
	
	if Task_ChkStcValue(nLootLimitEvent,nLootLimitType,">=",nLootLimit) then
		nStatus = nStatus + 5
	end
	
	local nRate = tCutePet_DriedFish_Rate["Loot"][nStatus]
	local nResult = math.random(1,tCutePet_DriedFish_Rate["Loot"]["Total"])
	--no drop
	if nResult > nRate then
		return
	end
	
	--掉落,先加掩码,塞背包,提示
	Task_AddStatistic(nLootLimitEvent,nLootLimitType,1,1,0)
	-- 新增掩码，每次掉落时掩码+1，这个掩码值≥5时走假概率，同时值-5（走真概率不减）				
	Task_AddStatistic(tCutePet_DriedFish_Stc["False"]["Event"],tCutePet_DriedFish_Stc["False"]["Type"],1,1,0)

	Item_AddItem(tCutePet_DriedFish_ItemId[3007993])
	Sys_MsgBox(tCutePet_DriedFish_Text["Loot"])
	Sys_SaveActionFestivalLog(tCutePet_DriedFish_Log["ItemLoot"])
end

------------------------------物品模版部分------------------------
--萌宠洗赠道具（碎片）属性9 叠加100
tItem[3007985] = tItem[3007985] or {}
tItem[3007985]["Function"] = function(nItemId,sItemName)
	if CutePet_DriedFish_Expire(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

tItem[3007985]["Text1-1"] = {111}
tItem[3007985]["Text111"] = tCutePet_DriedFish_Text[3007985]["Text111"]
tItem[3007985]["tOption1-1"] = {111,112}
tItem[3007985]["Option111"] = tCutePet_DriedFish_Text[3007985]["Option111"]
tItem[3007985]["OptionFunc111"] = "</F>CutePet_DriedFish_PieceBet</N>3007985"
tItem[3007985]["Option112"] = tCutePet_DriedFish_Text[3007985]["Option112"]
tItem[3007985]["OptionFunc112"] = "</F>CutePet_DriedFish_PieceToOne</N>3007985</N>3007987"

tItem[3007985]["Text2-1"] = {211}
tItem[3007985]["Text211"] = tCutePet_DriedFish_Text[3007985]["Text211"]
tItem[3007985]["tOption2-1"] = {211}
tItem[3007985]["Option211"] = tCutePet_DriedFish_Text[3007985]["Option211"]
tItem[3007985]["OptionFunc211"] = "</F>CutePet_DriedFish_PieceBetFailJudge</N>3007985"

tItem[3007985]["Text2-2"] = {221}
tItem[3007985]["Text221"] = tCutePet_DriedFish_Text[3007985]["Success"]
tItem[3007985]["tOption2-2"] = {221}
tItem[3007985]["Option221"] = tCutePet_DriedFish_Text[3007985]["Option211"]
tItem[3007985]["OptionPoint221"] = "1-1"

--萌宠光效道具（碎片）属性9 叠加100
tItem[3007986] = tItem[3007986] or {}
tItem[3007986]["Function"] = function(nItemId,sItemName)
	if CutePet_DriedFish_Expire(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

tItem[3007986]["Text1-1"] = {111}
tItem[3007986]["Text111"] = tCutePet_DriedFish_Text[3007986]["Text111"]
tItem[3007986]["tOption1-1"] = {111,112}
tItem[3007986]["Option111"] = tCutePet_DriedFish_Text[3007986]["Option111"]
tItem[3007986]["OptionFunc111"] = "</F>CutePet_DriedFish_PieceBet</N>3007986"
tItem[3007986]["Option112"] = tCutePet_DriedFish_Text[3007986]["Option112"]
tItem[3007986]["OptionFunc112"] = "</F>CutePet_DriedFish_PieceToOne</N>3007986</N>3007988"

tItem[3007986]["Text2-1"] = {211}
tItem[3007986]["Text211"] = tCutePet_DriedFish_Text[3007986]["Text211"]
tItem[3007986]["tOption2-1"] = {211}
tItem[3007986]["Option211"] = tCutePet_DriedFish_Text[3007986]["Option211"]
tItem[3007986]["OptionFunc211"] = "</F>CutePet_DriedFish_PieceBetFailJudge</N>3007986"

tItem[3007986]["Text2-2"] = {221}
tItem[3007986]["Text221"] = tCutePet_DriedFish_Text[3007986]["Success"]
tItem[3007986]["tOption2-2"] = {221}
tItem[3007986]["Option221"] = tCutePet_DriedFish_Text[3007986]["Option211"]
tItem[3007986]["OptionPoint221"] = "1-1"

--萌宠洗赠道具 属性9，可叠加100
tItem[3007987] = tItem[3007987] or {}
tItem[3007987]["Function"] = function(nItemId,sItemName)
	if CutePet_DriedFish_Expire(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

tItem[3007987]["Text1-1"] = {111}
tItem[3007987]["Text111"] = tCutePet_DriedFish_Text[3007987]["Text111"]
tItem[3007987]["tOption1-1"] = {111,112}
tItem[3007987]["Option111"] = tCutePet_DriedFish_Text[3007987]["Option111"]
tItem[3007987]["OptionPoint111"] = "2-1"
tItem[3007987]["Option112"] = tCutePet_DriedFish_Text[3007987]["Option112"]
tItem[3007987]["OptionPoint112"] = "2-2"

tItem[3007987]["Text2-1"] = {211}
tItem[3007987]["Text211"] = tCutePet_DriedFish_Text[3007987]["Text211"]
tItem[3007987]["tOption2-1"] = {211,212}
tItem[3007987]["Option211"] = tCutePet_DriedFish_Text[3007987]["Option211"]
tItem[3007987]["OptionFunc211"] = "</F>CutePet_DriedFish_ChangeMonopolySingle</N>193545"
tItem[3007987]["Option212"] = tCutePet_DriedFish_Text[3007987]["Option212"]
tItem[3007987]["OptionFunc212"] = "</F>CutePet_DriedFish_ChangeMonopoly</N>193545</N>3"

tItem[3007987]["Text2-2"] = {221}
tItem[3007987]["Text221"] = tCutePet_DriedFish_Text[3007987]["Text221"]
tItem[3007987]["tOption2-2"] = {221,222}
tItem[3007987]["Option221"] = tCutePet_DriedFish_Text[3007987]["Option221"]
tItem[3007987]["OptionFunc221"] = "</F>CutePet_DriedFish_ChangeMonopolySingle</N>200542"
tItem[3007987]["Option222"] = tCutePet_DriedFish_Text[3007987]["Option222"]
tItem[3007987]["OptionFunc222"] = "</F>CutePet_DriedFish_ChangeMonopoly</N>200542</N>5"

--萌宠光效道具 属性9，可叠加100
tItem[3007988] = tItem[3007988] or {}
tItem[3007988]["Function"] = function(nItemId,sItemName)
	if CutePet_DriedFish_Expire(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

tItem[3007988]["Text1-1"] = {111}
tItem[3007988]["Text111"] = tCutePet_DriedFish_Text[3007988]["Text111"]
tItem[3007988]["tOption1-1"] = {111,112,113}
tItem[3007988]["Option111"] = tCutePet_DriedFish_Text[3007988]["Option111"]
tItem[3007988]["OptionPoint111"] = "2-1"
tItem[3007988]["Option112"] = tCutePet_DriedFish_Text[3007988]["Option112"]
tItem[3007988]["OptionPoint112"] = "2-2"
tItem[3007988]["Option113"] = tCutePet_DriedFish_Text[3007988]["Option113"]
tItem[3007988]["OptionPoint113"] = "2-3"

tItem[3007988]["Text2-1"] = {211}
tItem[3007988]["Text211"] = tCutePet_DriedFish_Text[3007988]["Text211"]
tItem[3007988]["tOption2-1"] = {211,212}
tItem[3007988]["Option211"] = tCutePet_DriedFish_Text[3007988]["Option211"]
tItem[3007988]["OptionFunc211"] = "</F>CutePet_DriedFish_AddEffectSingle</N>193545"
tItem[3007988]["Option212"] = tCutePet_DriedFish_Text[3007988]["Option212"]
tItem[3007988]["OptionFunc212"] = "</F>CutePet_DriedFish_AddEffect</N>193545</N>3"

tItem[3007988]["Text2-2"] = {221}
tItem[3007988]["Text221"] = tCutePet_DriedFish_Text[3007988]["Text221"]
tItem[3007988]["tOption2-2"] = {221,222}
tItem[3007988]["Option221"] = tCutePet_DriedFish_Text[3007988]["Option221"]
tItem[3007988]["OptionFunc221"] = "</F>CutePet_DriedFish_AddEffectSingle</N>200542"
tItem[3007988]["Option222"] = tCutePet_DriedFish_Text[3007988]["Option222"]
tItem[3007988]["OptionFunc222"] = "</F>CutePet_DriedFish_AddEffect</N>200542</N>5"

tItem[3007988]["Text2-3"] = {231}
tItem[3007988]["Text231"] = tCutePet_DriedFish_Text[3007988]["Text231"]
tItem[3007988]["tOption2-3"] = {231,232,233,234,235,236}
tItem[3007988]["Option231"] = tCutePet_DriedFish_Text[3007988]["Option231"]
tItem[3007988]["OptionFunc231"] = "</F>CutePet_DriedFish_AddEffectWeapon</N>360175</S>Short"
tItem[3007988]["Option232"] = tCutePet_DriedFish_Text[3007988]["Option232"]
tItem[3007988]["OptionFunc232"] = "</F>CutePet_DriedFish_AddEffectWeapon</N>350089</S>Long"
tItem[3007988]["Option233"] = tCutePet_DriedFish_Text[3007988]["Option233"]
tItem[3007988]["OptionFunc233"] = "</F>CutePet_DriedFish_AddEffectWeapon</N>360185</S>ShortStaff"
tItem[3007988]["Option234"] = tCutePet_DriedFish_Text[3007988]["Option234"]
tItem[3007988]["OptionFunc234"] = "</F>CutePet_DriedFish_AddEffectWeapon</N>350094</S>LongStaff"
tItem[3007988]["Option235"] = tCutePet_DriedFish_Text[3007988]["Option235"]
tItem[3007988]["OptionFunc235"] = "</F>CutePet_DriedFish_AddEffectWeapon</N>370039</S>Bow"
tItem[3007988]["Option236"] = tCutePet_DriedFish_Text[3007988]["Option236"]
tItem[3007988]["OptionFunc236"] = "</F>CutePet_DriedFish_AddEffectWeapon</N>380045</S>Shield"

--光效版萌宠武器外套礼包 属性9，不可叠加
--打开任选1件90天光效版神佑1萌宠武器外套：短武器、长武器、弓、盾
tItem[3007989] = tItem[3007989] or {}
tItem[3007989]["Text1-1"] = {111}
tItem[3007989]["Text111"] = tCutePet_DriedFish_Text[3007989]["Text111"]
tItem[3007989]["tOption1-1"] = {111,112,113,114,115,116}
-- 绒绒喵星杖[魅力版]（短武器）360176
-- 萌萌喵王杖[魅力版]（短武器）360186
-- 酷酷喵星杖[魅力版]（长武器）350090
-- 萌萌喵王杖[魅力版]（长武器）350095
tItem[3007989]["Option111"] = tCutePet_DriedFish_Text[3007989]["Option111"]
tItem[3007989]["OptionFunc111"] = "</F>CutePet_DriedFish_WeaponPack</N>3007989</N>360176"
tItem[3007989]["Option112"] = tCutePet_DriedFish_Text[3007989]["Option112"]
tItem[3007989]["OptionFunc112"] = "</F>CutePet_DriedFish_WeaponPack</N>3007989</N>360186"
tItem[3007989]["Option113"] = tCutePet_DriedFish_Text[3007989]["Option113"]
tItem[3007989]["OptionFunc113"] = "</F>CutePet_DriedFish_WeaponPack</N>3007989</N>350090"
tItem[3007989]["Option114"] = tCutePet_DriedFish_Text[3007989]["Option114"]
tItem[3007989]["OptionFunc114"] = "</F>CutePet_DriedFish_WeaponPack</N>3007989</N>350095"
tItem[3007989]["Option115"] = tCutePet_DriedFish_Text[3007989]["Option115"]
tItem[3007989]["OptionFunc115"] = "</F>CutePet_DriedFish_WeaponPack</N>3007989</N>370040"
tItem[3007989]["Option116"] = tCutePet_DriedFish_Text[3007989]["Option116"]
tItem[3007989]["OptionFunc116"] = "</F>CutePet_DriedFish_WeaponPack</N>3007989</N>380046"

tItem[3007989]["Text1-2"] = {121}
tItem[3007989]["Text121"] = tCutePet_DriedFish_Text[3007989]["Text121"]
tItem[3007989]["tOption1-2"] = {121}
tItem[3007989]["Option121"] = tCutePet_DriedFish_Text[3007989]["Option121"]
tItem[3007989]["OptionFunc121"] = "</F>CutePet_DriedFish_WeaponPackOpen</N>3007989</N>%d"




--光效版萌宠时装礼包 属性9，不可叠加
tItem[3007990] = tItem[3007990] or {}
tItem[3007990]["Function"] = function(nItemId,sItemName)
	local nAwardId = tCutePet_DriedFish_ItemId["Human"][3]
	CutePet_DriedFish_SuitPack(nItemId,nAwardId)
end
--光效版萌宠坐骑礼包 属性9，不可叠加
tItem[3007991] = tItem[3007991] or {}
tItem[3007991]["Function"] = function(nItemId,sItemName)
	local nAwardId = tCutePet_DriedFish_ItemId["Mount"][3]
	CutePet_DriedFish_SuitPack(nItemId,nAwardId)
end

--萌宠外套豪华套包 属性9，不可叠加
tItem[3007992] = tItem[3007992] or {}
tItem[3007992]["Function"] = function(nItemId,sItemName)
	CutePet_DriedFish_LuxuryPack(nItemId)
end


--普通养成道具（碎片） 属性9，可叠加100
tItem[3007993] = tItem[3007993] or {}
tItem[3007993]["Function"] = function(nItemId,sItemName)
	--未过期的情况
	if CutePet_DriedFish_Expire(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

tItem[3007993]["Text1-1"] = {111}
tItem[3007993]["Text111"] = tCutePet_DriedFish_Text[3007993]["Text111"]
tItem[3007993]["tOption1-1"] = {111,112}
tItem[3007993]["Option111"] = tCutePet_DriedFish_Text[3007993]["Option111"]
tItem[3007993]["OptionFunc111"] = "</F>CutePet_DriedFish_PieceBet</N>3007993"
tItem[3007993]["Option112"] = tCutePet_DriedFish_Text[3007993]["Option112"]
tItem[3007993]["OptionFunc112"] = "</F>CutePet_DriedFish_PieceToOne</N>3007993</N>3007994"

tItem[3007993]["Text2-1"] = {211}
tItem[3007993]["Text211"] = tCutePet_DriedFish_Text[3007993]["Text211"]
tItem[3007993]["tOption2-1"] = {211}
tItem[3007993]["Option211"] = tCutePet_DriedFish_Text[3007993]["Option211"]
tItem[3007993]["OptionFunc211"] = "</F>CutePet_DriedFish_PieceBetFailJudge</N>3007993"

tItem[3007993]["Text2-2"] = {221}
tItem[3007993]["Text221"] = tCutePet_DriedFish_Text[3007993]["Success"]
tItem[3007993]["tOption2-2"] = {221}
tItem[3007993]["Option221"] = tCutePet_DriedFish_Text[3007993]["Option211"]
tItem[3007993]["OptionPoint221"] = "1-1"

--普通养成道具 属性9，可叠加100，用于养成灵猫（抽奖）
tItem[3007994] = tItem[3007994] or {}
tItem[3007994]["Function"] = function(nItemId,sItemName)
	--未过期的情况
	if CutePet_DriedFish_Expire(nItemId) then
		CutePet_DriedFish_AutoFindWay()
	end
end

--高级养成道具 属性9，可叠加100，用于养成灵猫（抽奖）
tItem[3007995] = tItem[3007995] or {}
tItem[3007995]["Function"] = function(nItemId,sItemName)
	--未过期的情况
	if CutePet_DriedFish_Expire(nItemId) then
		CutePet_DriedFish_AutoFindWay()
	end
end

--灵丹 属性11，不可叠加
tItem[3007996] = tItem[3007996] or {}
tItem[3007996]["Function"] = function(nItemId,sItemName)
	CutePet_DriedFish_DailyReset()
	--未过期的情况
	if CutePet_DriedFish_Expire(nItemId) then
		CutePet_DriedFish_Spirit(nItemId)
	end
end

tItem[3007996]["Text1-1"] = {111,112,113,114}
tItem[3007996]["Text111"] = tCutePet_DriedFish_Text[3007996]["Text111"]
tItem[3007996]["Text112"] = tCutePet_DriedFish_Text[3007996]["Text112"]
tItem[3007996]["Text113"] = tCutePet_DriedFish_Text[3007996]["Text113"]
tItem[3007996]["tOption1-1"] = {111}
tItem[3007996]["Option111"] = tCutePet_DriedFish_Text[3007996]["Option111"]
tItem[3007996]["OptionFunc111"] = "</F>CutePet_DriedFish_GetSpiritAward</N>3007996"



------------------------------------------修改深海寻宝部分-----------------------------------------
function CutePet_DriedFish_DeepSeaAward()
	local nAwardId = CutePet_DriedFish_SeaRandomAward()
	local sAwardName  = tCutePet_DriedFish_Text["Award"][nAwardId]
	local sLog = tCutePet_DriedFish_Log["DeepSea"]
	
	--对白
	local sText = string.format(tCutePet_DriedFish_Text["Award"]["Text"],sAwardName)
	
	--广播
	local sUserName = Get_UserName()
	local sBroadcast = string.format(tCutePet_DriedFish_Text["Award"]["BroadCast"],sUserName,sAwardName)
	
	sLog = string.format(sLog,nAwardId)
	Item_AddItem(nAwardId)
	Sys_SaveActionLog(sLog)
	Sys_MsgBox(sText)
	User_TalkChannel2007(sBroadcast)
	
	local sSelf = tCutePet_DriedFish_Effect["Self"]
	local sEffect = tCutePet_DriedFish_Effect["DeepSea"]
	User_EffectAdd(sSelf,sEffect)
end

--全片区怪物
-- local tCutePet_DriedFish_MonsterTemplate = {}
-- tCutePet_DriedFish_MonsterTemplate["ActivityTime"] = tCutePet_DriedFish_Data["Time"]
-- tCutePet_DriedFish_MonsterTemplate["Function"] = CutePet_DriedFish_Loot

-- table.insert(tMonsterDrop_AreaLoad,tCutePet_DriedFish_MonsterTemplate)