------------------------------------------------------------------------------------
--Name：            191126[英文征服][活动脚本]限时周卡基金消费返利（1.21-2.5）
--Creator:      方政
--Created:     2019-11-26
------------------------------------------------------------------------------------

-- 命名前缀
-- WeeklyFundConsumption_Rebate_

-- logid 

-- taskid

-- #stc 掩码说明 
-- #stc(210,78) 背包信
-- #stc(210,79) 当日已购买+8赤炼石（赠）礼盒
-- #stc(210,80) 当日已购买1万气力值礼盒
-- #stc(210,81) 当日已购买LuxuryRelicBox礼盒
-- #stc(210,82) 购买+8赤炼石（赠）礼盒次数
-- #stc(210,83) 购买1万气力值礼盒次数
-- #stc(210,84) 购买LuxuryRelicBox礼盒次数

-- #GlobalId 54009
--#动态存储表说明
-- #存储位	--存储说明--
--#data0--	记录单服固化石（赠）剩余数量，限300
--#data1--		记录单服3000天石（赠）礼盒剩余数量，限50
--#data2--	记录单服五星坐骑体验礼盒已剩余数量，限30
--#data3--	记录单服2颗优质神纹源晶（赠）礼盒剩余数量，限50
--#data4--	记录单服10颗神纹源晶礼盒剩余数量，限300
--#data5--	记录单服金钢坚钻剩余数量，限3


----------------------------------表配置部分--------------------------------------------
--常量表：

-- 选择后跳转对话
local tWeeklyFundConsumption_Rebate_DialogueC = {}
	tWeeklyFundConsumption_Rebate_DialogueC[3314616] = "2-1"
	tWeeklyFundConsumption_Rebate_DialogueC[3314617] = "2-2"
	tWeeklyFundConsumption_Rebate_DialogueC[3314618] = "2-3"

-- npcid
local tWeeklyFundConsumption_Rebate_NpcId = {}
	tWeeklyFundConsumption_Rebate_NpcId[1] = 25622
	tWeeklyFundConsumption_Rebate_NpcId[2] = 25623
	tWeeklyFundConsumption_Rebate_NpcId[3] = 25680

-- 返利卡id
local tWeeklyFundConsumption_Rebate_ItemId = {}
	tWeeklyFundConsumption_Rebate_ItemId["RebateCard"] = 3314620

-- Log表
local tWeeklyFundConsumption_Rebate_Log = {}
	-- 兑换消耗
	tWeeklyFundConsumption_Rebate_Log["Exchange"] = "0,0,%d,%d,12001760,3,0,0"
	-- 过期删除
	tWeeklyFundConsumption_Rebate_Log["OverDue"] = "0,0,%d,%d,12001760,2,0,0"

-- stc掩码
local tWeeklyFundConsumption_Rebate_Stc = {}
	-- 当日已购买+8赤炼石（赠）礼盒次数
	tWeeklyFundConsumption_Rebate_Stc[5] = {}
	tWeeklyFundConsumption_Rebate_Stc[5]["EventType"] = 210
	tWeeklyFundConsumption_Rebate_Stc[5]["DataType"] = 79
	-- 当日已购买1万气力值礼盒次数
	tWeeklyFundConsumption_Rebate_Stc[6] = {}
	tWeeklyFundConsumption_Rebate_Stc[6]["EventType"] = 210
	tWeeklyFundConsumption_Rebate_Stc[6]["DataType"] = 80
	-- 当日已购买LuxuryRelicBox礼盒次数
	tWeeklyFundConsumption_Rebate_Stc[7] = {}
	tWeeklyFundConsumption_Rebate_Stc[7]["EventType"] = 210
	tWeeklyFundConsumption_Rebate_Stc[7]["DataType"] = 81
	-- 购买+8赤炼石（赠）礼盒次数
	tWeeklyFundConsumption_Rebate_Stc[8] = {}
	tWeeklyFundConsumption_Rebate_Stc[8]["EventType"] = 210
	tWeeklyFundConsumption_Rebate_Stc[8]["DataType"] = 82
	-- 购买1万气力值礼盒次数
	tWeeklyFundConsumption_Rebate_Stc[9] = {}
	tWeeklyFundConsumption_Rebate_Stc[9]["EventType"] = 210
	tWeeklyFundConsumption_Rebate_Stc[9]["DataType"] = 83
	-- 购买LuxuryRelicBox礼盒次数
	tWeeklyFundConsumption_Rebate_Stc[10] = {}
	tWeeklyFundConsumption_Rebate_Stc[10]["EventType"] = 210
	tWeeklyFundConsumption_Rebate_Stc[10]["DataType"] = 84
	
-- logid
tWeeklyFundConsumption_Rebate_Cont = {}
	tWeeklyFundConsumption_Rebate_Cont["EmoneyLog"] = {}
	tWeeklyFundConsumption_Rebate_Cont["EmoneyLog"][5] = "350	22929	3300	3300	1	"
	tWeeklyFundConsumption_Rebate_Cont["EmoneyLog"][6] = "350	22930	500	500	1	"
	tWeeklyFundConsumption_Rebate_Cont["EmoneyLog"][7] = "350	22931	1700	1700	1	"
	
-- GlobalId 54009
tWeeklyFundConsumption_Rebate_GlobalId = {}
	tWeeklyFundConsumption_Rebate_GlobalId["GlobalId"] = 54009
	-- 单服限量ID：
	tWeeklyFundConsumption_Rebate_GlobalId["723694"] = 0
	tWeeklyFundConsumption_Rebate_GlobalId["3314634"] = 1
	tWeeklyFundConsumption_Rebate_GlobalId["3314619"] = 2
	tWeeklyFundConsumption_Rebate_GlobalId["3314631"] = 3
	tWeeklyFundConsumption_Rebate_GlobalId["3314633"] = 4
	tWeeklyFundConsumption_Rebate_GlobalId["1200005"] = 5
--------------------------------------------奖励配置-----------------------------------------------------------
local tWeeklyFundConsumption_Rebate_RewardItem = {}
	-- ===+8赤炼石（赠）礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314616]
	-- ===删除: 3314616,1
	tWeeklyFundConsumption_Rebate_RewardItem[3314616] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["DeleteItem"][1]["Id"] = 3314616 -- 【库】+8Stone(B)Pack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】赠品+8赤炼石*1 
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["RewardItem"][2] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["RewardItem"][2]["Id"] = 3314620 -- RebateCard[3314620][属性:9][叠加:10000][金币:0], 【表格】返利卡*1
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["RewardItem"][2]["Attr"] = "0 1" -- RebateCard*1
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314616]["RewardEffect"]["Effect"] = "angelwing"


	tWeeklyFundConsumption_Rebate_RewardItem[3314617] = {}
	-- ===1万气力值（赠）礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314617]
	-- ===删除: 3314617,1
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["DeleteItem"][1]["Id"] = 3314617 -- 【库】10000ChiPointsPack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["RewardStrengthValue"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】赠品气力值10000
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["RewardItem"][1]["Id"] = 3314620 -- RebateCard[3314620][属性:9][叠加:10000][金币:0], 【表格】返利卡*1
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["RewardItem"][1]["Attr"] = "0 1" -- RebateCard*1
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314617]["RewardEffect"]["Effect"] = "angelwing"


	tWeeklyFundConsumption_Rebate_RewardItem[3314618] = {}
	-- ===LuxuryRelicBox礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314618]
	-- ===删除: 3314618,1
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["DeleteItem"][1]["Id"] = 3314618 -- 【库】LuxuryRelicBoxPack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["RewardItem"][1]["Id"] = 3322774 -- LuxuryRelicBox[3322774][属性:8][叠加:1][金币:0], 【表格】非赠LuxuryRelicBox*10
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["RewardItem"][1]["Attr"] = "0 10" -- LuxuryRelicBox*10
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["RewardItem"][2] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["RewardItem"][2]["Id"] = 3314620 -- RebateCard[3314620][属性:9][叠加:10000][金币:0], 【表格】返利卡*1
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["RewardItem"][2]["Attr"] = "0 1" -- RebateCard*1
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314618]["RewardEffect"]["Effect"] = "angelwing"


	tWeeklyFundConsumption_Rebate_RewardItem[3314619] = {}
	-- ===五星坐骑体验礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314619][1]
	-- ===删除: 3314619,1
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][1]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][1]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][1]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][1]["DeleteItem"][1]["Id"] = 3314619 -- 【库】5-starMountArmorPack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][1]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][1]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][1]["RewardItem"][1]["Id"] = 205000 -- CelestialDragon(Freedom)[205000][属性:0][叠加:0][金币:0], 【表格】御天神龙【逍遥版】
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑CelestialDragon(Freedom)（赠）*1
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][1]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][1]["RewardEffect"]["Effect"] = "angelwing"


	tWeeklyFundConsumption_Rebate_RewardItem[3314619][2] = {}
	-- ===五星坐骑体验礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314619][2]
	-- ===删除: 3314619,1
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][2]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][2]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][2]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][2]["DeleteItem"][1]["Id"] = 3314619 -- 【库】5-starMountArmorPack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][2]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][2]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][2]["RewardItem"][1]["Id"] = 200652 -- FloralMoon(Perfect)[200652][属性:0][叠加:0][金币:0], 【表格】花好月圆·成双
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑FloralMoon(Perfect)（赠）*1
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][2]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][2]["RewardEffect"]["Effect"] = "angelwing"


	tWeeklyFundConsumption_Rebate_RewardItem[3314619][3] = {}
	-- ===五星坐骑体验礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314619][3]
	-- ===删除: 3314619,1
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][3]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][3]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][3]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][3]["DeleteItem"][1]["Id"] = 3314619 -- 【库】5-starMountArmorPack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][3]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][3]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][3]["RewardItem"][1]["Id"] = 205901 -- BrightMoon(Wings)[205901][属性:0][叠加:0][金币:0], 【表格】九天揽月·比翼
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑BrightMoon(Wings)（赠）*1
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][3]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314619][3]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===3颗明亮星陨石礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314628]
	-- ===删除: 3314628,1
	-- ===
	tWeeklyFundConsumption_Rebate_RewardItem[3314628] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314628]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314628]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314628]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314628]["DeleteItem"][1]["Id"] = 3314628 -- 【库】3BrightStarStonesPack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314628]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314628]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314628]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tWeeklyFundConsumption_Rebate_RewardItem[3314628]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tWeeklyFundConsumption_Rebate_RewardItem[3314628]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314628]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314628]["RewardEffect"]["Effect"] = "angelwing"


	tWeeklyFundConsumption_Rebate_RewardItem[3314629] = {}
	-- ===魔武通玄丹礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314629]
	-- ===删除: 3314629,1
	tWeeklyFundConsumption_Rebate_RewardItem[3314629]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314629]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314629]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314629]["DeleteItem"][1]["Id"] = 3314629 -- 【库】2KnowledgePillsPack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314629]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314629]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314629]["RewardItem"][1]["Id"] = 3303373 -- KnowledgePill[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹*2
	tWeeklyFundConsumption_Rebate_RewardItem[3314629]["RewardItem"][1]["Attr"] = "0 2" -- KnowledgePill*2
	tWeeklyFundConsumption_Rebate_RewardItem[3314629]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314629]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314629]["RewardEffect"]["Effect"] = "angelwing"


	tWeeklyFundConsumption_Rebate_RewardItem[3314630] = {}
	-- ===20个万能神纹精粹（赠）礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314630]
	-- ===删除: 3314630,1
	tWeeklyFundConsumption_Rebate_RewardItem[3314630]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314630]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314630]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314630]["DeleteItem"][1]["Id"] = 3314630 -- 【库】20UniversalRuneEssences(B)Pack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314630]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314630]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314630]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*20
	tWeeklyFundConsumption_Rebate_RewardItem[3314630]["RewardItem"][1]["Attr"] = "0 20 3" -- UniversalRuneEssence（赠）*20
	tWeeklyFundConsumption_Rebate_RewardItem[3314630]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314630]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314630]["RewardEffect"]["Effect"] = "angelwing"


	tWeeklyFundConsumption_Rebate_RewardItem[3314631] = {}
	-- ===2颗优质神纹源晶（赠）礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314631]
	-- ===删除: 3314631,1
	tWeeklyFundConsumption_Rebate_RewardItem[3314631]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314631]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314631]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314631]["DeleteItem"][1]["Id"] = 3314631 -- 【库】2SuperRuneCrystals(B)Pack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314631]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314631]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314631]["RewardItem"][1]["Id"] = 3311821 -- SuperRuneCrystal[3311821][属性:9][叠加:10000][金币:0], 【表格】优质神纹源晶（赠）*2
	tWeeklyFundConsumption_Rebate_RewardItem[3314631]["RewardItem"][1]["Attr"] = "0 2 3" -- SuperRuneCrystal（赠）*2
	tWeeklyFundConsumption_Rebate_RewardItem[3314631]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314631]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314631]["RewardEffect"]["Effect"] = "angelwing"


	tWeeklyFundConsumption_Rebate_RewardItem[3314632] = {}
	-- === 15个万能神纹精粹礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314632]
	-- ===删除: 3314632,1
	tWeeklyFundConsumption_Rebate_RewardItem[3314632]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314632]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314632]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314632]["DeleteItem"][1]["Id"] = 3314632 -- 【库】15UniversalRuneEssencesPack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314632]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314632]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314632]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*15
	tWeeklyFundConsumption_Rebate_RewardItem[3314632]["RewardItem"][1]["Attr"] = "0 15" -- UniversalRuneEssence*15
	tWeeklyFundConsumption_Rebate_RewardItem[3314632]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314632]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314632]["RewardEffect"]["Effect"] = "angelwing"


	tWeeklyFundConsumption_Rebate_RewardItem[3314633] = {}
	-- ===10颗神纹源晶礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314633]
	-- ===删除: 3314633,1
	tWeeklyFundConsumption_Rebate_RewardItem[3314633]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314633]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314633]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314633]["DeleteItem"][1]["Id"] = 3314633 -- 【库】10RuneCrystalsPack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314633]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314633]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314633]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶*10
	tWeeklyFundConsumption_Rebate_RewardItem[3314633]["RewardItem"][1]["Attr"] = "0 10" -- RuneCrystal*10
	tWeeklyFundConsumption_Rebate_RewardItem[3314633]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314633]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314633]["RewardEffect"]["Effect"] = "angelwing"


	tWeeklyFundConsumption_Rebate_RewardItem[3314634] = {}
	-- ===3000天石（赠）礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_RewardItem[3314634]
	-- ===删除: 3314634,1
	tWeeklyFundConsumption_Rebate_RewardItem[3314634]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_RewardItem[3314634]["DeleteItem"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314634]["DeleteItem"][1] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314634]["DeleteItem"][1]["Id"] = 3314634 -- 【库】3000CPs(B)Pack[属性:9]
	tWeeklyFundConsumption_Rebate_RewardItem[3314634]["RewardEMoneyMono"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314634]["RewardEMoneyMono"]["Value"] = 3000 -- 天石（赠）, 【需求】3000天石
	tWeeklyFundConsumption_Rebate_RewardItem[3314634]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1308"
	tWeeklyFundConsumption_Rebate_RewardItem[3314634]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_RewardItem[3314634]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_RewardItem[3314634]["RewardEffect"]["Effect"] = "angelwing"


local tWeeklyFundConsumption_Rebate_Reward = {}
	tWeeklyFundConsumption_Rebate_Reward[3314616] = {}
	-- ===获得+8赤炼石（赠）礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[3314616]
	tWeeklyFundConsumption_Rebate_Reward[3314616]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[3314616]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314616]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314616]["RewardItem"][1]["Id"] = 3314616 
	tWeeklyFundConsumption_Rebate_Reward[3314616]["RewardItem"][1]["Attr"] = "0 1"
	tWeeklyFundConsumption_Rebate_Reward[3314616]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314616]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[3314616]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[3314617] = {}
	-- ===获得1万气力值礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[3314617]
	tWeeklyFundConsumption_Rebate_Reward[3314617]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[3314617]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314617]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314617]["RewardItem"][1]["Id"] = 3314617
	tWeeklyFundConsumption_Rebate_Reward[3314617]["RewardItem"][1]["Attr"] = "0 1"
	tWeeklyFundConsumption_Rebate_Reward[3314617]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314617]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[3314617]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[3314618] = {}
	-- ===获得LuxuryRelicBox礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[3314618]
	tWeeklyFundConsumption_Rebate_Reward[3314618]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[3314618]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314618]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314618]["RewardItem"][1]["Id"] = 3314618
	tWeeklyFundConsumption_Rebate_Reward[3314618]["RewardItem"][1]["Attr"] = "0 1" 
	tWeeklyFundConsumption_Rebate_Reward[3314618]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314618]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[3314618]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[3314628] = {}
	-- ===获得3颗明亮星陨石礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[3314628]
	tWeeklyFundConsumption_Rebate_Reward[3314628]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[3314628]["EmoneyLog"] = "350	22937	0	0	1	"
	tWeeklyFundConsumption_Rebate_Reward[3314628]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314628]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314628]["RewardItem"][1]["Id"] = 3314628
	tWeeklyFundConsumption_Rebate_Reward[3314628]["RewardItem"][1]["Attr"] = "0 1" 
	tWeeklyFundConsumption_Rebate_Reward[3314628]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314628]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[3314628]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[3314629] = {}
	-- ===获得2颗魔武通玄丹（赠）礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[3314629]
	tWeeklyFundConsumption_Rebate_Reward[3314629]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[3314629]["EmoneyLog"] = "350	22938	0	0	1	"
	tWeeklyFundConsumption_Rebate_Reward[3314629]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314629]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314629]["RewardItem"][1]["Id"] = 3314629
	tWeeklyFundConsumption_Rebate_Reward[3314629]["RewardItem"][1]["Attr"] = "0 1" 
	tWeeklyFundConsumption_Rebate_Reward[3314629]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314629]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[3314629]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[3314630] = {}
	-- ===获得20个万能神纹精粹（赠）礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[3314630]
	tWeeklyFundConsumption_Rebate_Reward[3314630]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[3314630]["EmoneyLog"] = "350	22941	0	0	1	"
	tWeeklyFundConsumption_Rebate_Reward[3314630]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314630]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314630]["RewardItem"][1]["Id"] = 3314630
	tWeeklyFundConsumption_Rebate_Reward[3314630]["RewardItem"][1]["Attr"] = "0 1" 
	tWeeklyFundConsumption_Rebate_Reward[3314630]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314630]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[3314630]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[723694] = {}
	-- ===获得1块固化石（赠）
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[723694]
	tWeeklyFundConsumption_Rebate_Reward[723694]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[723694]["EmoneyLog"] = "350	22940	0	0	1	"
	tWeeklyFundConsumption_Rebate_Reward[723694]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[723694]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[723694]["RewardItem"][1]["Id"] = 723694
	tWeeklyFundConsumption_Rebate_Reward[723694]["RewardItem"][1]["Attr"] = "0 1 3" 
	tWeeklyFundConsumption_Rebate_Reward[723694]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[723694]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[723694]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[3314634] = {}
	-- ===获得3000天石（赠）礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[3314634]
	tWeeklyFundConsumption_Rebate_Reward[3314634]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[3314634]["EmoneyLog"] = "350	22932	0	0	1	"
	tWeeklyFundConsumption_Rebate_Reward[3314634]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314634]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314634]["RewardItem"][1]["Id"] = 3314634
	tWeeklyFundConsumption_Rebate_Reward[3314634]["RewardItem"][1]["Attr"] = "0 1" 
	tWeeklyFundConsumption_Rebate_Reward[3314634]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314634]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[3314634]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[3314619] = {}
	-- ===获得五星坐骑体验礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[3314619]
	tWeeklyFundConsumption_Rebate_Reward[3314619]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[3314619]["EmoneyLog"] = "350	22939	0	0	1	"
	tWeeklyFundConsumption_Rebate_Reward[3314619]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314619]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314619]["RewardItem"][1]["Id"] = 3314619
	tWeeklyFundConsumption_Rebate_Reward[3314619]["RewardItem"][1]["Attr"] = "0 1" 
	tWeeklyFundConsumption_Rebate_Reward[3314619]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314619]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[3314619]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[3314631] = {}
	-- ===获得2颗优质神纹源晶（赠）礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[3314631]
	tWeeklyFundConsumption_Rebate_Reward[3314631]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[3314631]["EmoneyLog"] = "350	22942	0	0	1	"
	tWeeklyFundConsumption_Rebate_Reward[3314631]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314631]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314631]["RewardItem"][1]["Id"] = 3314631
	tWeeklyFundConsumption_Rebate_Reward[3314631]["RewardItem"][1]["Attr"] = "0 1" 
	tWeeklyFundConsumption_Rebate_Reward[3314631]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314631]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[3314631]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[3303373] = {}
	-- ===获得1颗魔武通玄丹
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[3303373]
	tWeeklyFundConsumption_Rebate_Reward[3303373]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[3303373]["EmoneyLog"] = "350	22934	0	0	1	"
	tWeeklyFundConsumption_Rebate_Reward[3303373]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3303373]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[3303373]["RewardItem"][1]["Id"] = 3303373
	tWeeklyFundConsumption_Rebate_Reward[3303373]["RewardItem"][1]["Attr"] = "0 1" 
	tWeeklyFundConsumption_Rebate_Reward[3303373]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3303373]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[3303373]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[3314632] = {}
	-- ===获得15个万能神纹精粹礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[3314632]
	tWeeklyFundConsumption_Rebate_Reward[3314632]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[3314632]["EmoneyLog"] = "350	22936	0	0	1	"
	tWeeklyFundConsumption_Rebate_Reward[3314632]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314632]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314632]["RewardItem"][1]["Id"] = 3314632
	tWeeklyFundConsumption_Rebate_Reward[3314632]["RewardItem"][1]["Attr"] = "0 1" 
	tWeeklyFundConsumption_Rebate_Reward[3314632]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314632]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[3314632]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[3314633] = {}
	-- ===获得10颗神纹源晶礼盒
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[3314633]
	tWeeklyFundConsumption_Rebate_Reward[3314633]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[3314633]["EmoneyLog"] = "350	22935	0	0	1	"
	tWeeklyFundConsumption_Rebate_Reward[3314633]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314633]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314633]["RewardItem"][1]["Id"] = 3314633
	tWeeklyFundConsumption_Rebate_Reward[3314633]["RewardItem"][1]["Attr"] = "0 1" 
	tWeeklyFundConsumption_Rebate_Reward[3314633]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[3314633]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[3314633]["RewardEffect"]["Effect"] = "angelwing"
	
	tWeeklyFundConsumption_Rebate_Reward[1200005] = {}
	-- ===获得1个金钢坚钻
	-- ===索引: tWeeklyFundConsumption_Rebate_Reward[1200005]
	tWeeklyFundConsumption_Rebate_Reward[1200005]["LogId"] = 12001760
	tWeeklyFundConsumption_Rebate_Reward[1200005]["EmoneyLog"] = "350	22933	0	0	1	"
	tWeeklyFundConsumption_Rebate_Reward[1200005]["RewardItem"] = {}
	tWeeklyFundConsumption_Rebate_Reward[1200005]["RewardItem"][1] = {}
	tWeeklyFundConsumption_Rebate_Reward[1200005]["RewardItem"][1]["Id"] = 1200005
	tWeeklyFundConsumption_Rebate_Reward[1200005]["RewardItem"][1]["Attr"] = "0 1" 
	tWeeklyFundConsumption_Rebate_Reward[1200005]["RewardEffect"] = {}
	tWeeklyFundConsumption_Rebate_Reward[1200005]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeeklyFundConsumption_Rebate_Reward[1200005]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
-- 获取掩码值
function WeeklyFundConsumption_Rebate_GetStcValue(nIndex,nUserId)
	local nWeeklyFundConsumption_Rebate_Event = tWeeklyFundConsumption_Rebate_Stc[nIndex]["EventType"]
	local nWeeklyFundConsumption_Rebate_Type = tWeeklyFundConsumption_Rebate_Stc[nIndex]["DataType"]
	
	local nWeeklyFundConsumption_Rebate_Data = Get_UserStatisticValue(nWeeklyFundConsumption_Rebate_Event,nWeeklyFundConsumption_Rebate_Type,nUserId)
	return nWeeklyFundConsumption_Rebate_Data
end

--设置掩码值
function WeeklyFundConsumption_Rebate_SetStcValue(nIndex,nUserId)
	local nWeeklyFundConsumption_Rebate_Event = tWeeklyFundConsumption_Rebate_Stc[nIndex]["EventType"]
	local nWeeklyFundConsumption_Rebate_Type = tWeeklyFundConsumption_Rebate_Stc[nIndex]["DataType"]
	
	if nIndex >= 4 and nIndex <= 7 then
		Task_SetStatistic(nWeeklyFundConsumption_Rebate_Event,nWeeklyFundConsumption_Rebate_Type,1,1,nUserId)
		Task_SetStcTimestamp(nWeeklyFundConsumption_Rebate_Event,nWeeklyFundConsumption_Rebate_Type,0,nUserId)
	elseif nIndex >= 8 and nIndex <= 10 then
		Task_AddStatistic(nWeeklyFundConsumption_Rebate_Event,nWeeklyFundConsumption_Rebate_Type,1,1,nUserId)
		Task_SetStcTimestamp(nWeeklyFundConsumption_Rebate_Event,nWeeklyFundConsumption_Rebate_Type,0,nUserId)
	end
end

-- 隔天重置掩码
function WeeklyFundConsumption_Rebate_ResetStcValue(nIndex,nUserId)
	local nWeeklyFundConsumption_Rebate_Event = tWeeklyFundConsumption_Rebate_Stc[nIndex]["EventType"]
	local nWeeklyFundConsumption_Rebate_Type = tWeeklyFundConsumption_Rebate_Stc[nIndex]["DataType"]
	if Task_StcInterval(nWeeklyFundConsumption_Rebate_Event, nWeeklyFundConsumption_Rebate_Type,1,4,nUserId) then
		Task_SetStatistic(nWeeklyFundConsumption_Rebate_Event, nWeeklyFundConsumption_Rebate_Type,0,1,nUserId)
		Task_SetStcTimestamp(nWeeklyFundConsumption_Rebate_Event, nWeeklyFundConsumption_Rebate_Type,0,nUserId)
	end
end

----------------------------------------npc使用
----【返利嘉年华】露易丝
-- 判断当天是否已购买礼包
function WeeklyFundConsumption_Rebate_BuyChoice(nNpcId,nItemId,nIndex)
	if not Sys_ChkFullTime(tActivityTime["WeeklyFundConsumptionRebate"]["BuyTime"]) then
		return
	end
	--隔天重置掩码
	WeeklyFundConsumption_Rebate_ResetStcValue(nIndex)
	local nWeeklyFundConsumption_Rebate_Data = WeeklyFundConsumption_Rebate_GetStcValue(nIndex)
	local sWeeklyFundConsumption_Rebate_ItemName = tWeeklyFundConsumption_Rebate_Text[nNpcId]["Name"][nItemId]
	if nWeeklyFundConsumption_Rebate_Data >= 1 then
		User_TalkChannel2005(string.format(tWeeklyFundConsumption_Rebate_Text[nNpcId]["BoughtItem"],sWeeklyFundConsumption_Rebate_ItemName),nUserId)
		return
	end
	LinkNpcGossipFunc_New(nNpcId,tWeeklyFundConsumption_Rebate_DialogueC[nItemId])
end

-- 判断是否符合购买条件
function WeeklyFundConsumption_Rebate_BuyItem(nNpcId,nItemId,nPrice,nIndex1,nIndex2)
	local nWeeklyFundConsumption_Rebate_Emoney = Get_UserEMoney()
	local nWeeklyFundConsumption_Rebate_Space = RewardTemplate_GetRewardSpace(tWeeklyFundConsumption_Rebate_Reward[nItemId])
	
	-- 背包不足
	if not User_CheckLeftSpace(nWeeklyFundConsumption_Rebate_Space) then
		User_TalkChannel2005(tWeeklyFundConsumption_Rebate_Text[nNpcId]["NoSpace"],nUserId)
		return
	end
	
	-- 天石不足
	if nWeeklyFundConsumption_Rebate_Emoney < nPrice then
		User_TalkChannel2005(tWeeklyFundConsumption_Rebate_Text[nNpcId]["NoEmoney"],nUserId)
		return
	end
	
	-- 扣天石
	if not User_AddEMoney(-nPrice) then
		return
	end
	-- 打log
	Sys_SaveEmoneyBuy(tWeeklyFundConsumption_Rebate_Cont["EmoneyLog"][nIndex1])
	-- 设置掩码值
	WeeklyFundConsumption_Rebate_SetStcValue(nIndex1,nUserId)
	WeeklyFundConsumption_Rebate_SetStcValue(nIndex2,nUserId)
	-- 给物品
	RewardTemplate_UseItemAndMsg(tWeeklyFundConsumption_Rebate_Reward[nItemId])
end


----【返利嘉年华】派克
-- 兑换物品
function WeeklyFundConsumption_Rebate_Exchange(nNpcId,nItemId,nItemNum,nIndex)
	local nWeeklyFundConsumption_Rebate_ItemNum = Get_CountItemType(tWeeklyFundConsumption_Rebate_ItemId["RebateCard"],0)
	-- 玩家返利卡不足
	if not Item_ChkMulItem(tWeeklyFundConsumption_Rebate_ItemId["RebateCard"],tWeeklyFundConsumption_Rebate_ItemId["RebateCard"],nItemNum) then
		User_TalkChannel2005(tWeeklyFundConsumption_Rebate_Text[nNpcId]["NoCard"],nUserId)
		return
	end
	
	local nWeeklyFundConsumption_Rebate_Space = RewardTemplate_GetRewardSpace(tWeeklyFundConsumption_Rebate_Reward[nItemId])
	-- 背包不足
	if not User_CheckLeftSpace(nWeeklyFundConsumption_Rebate_Space) and nWeeklyFundConsumption_Rebate_ItemNum ~= nItemNum then
		User_TalkChannel2005(tWeeklyFundConsumption_Rebate_Text[nNpcId]["NoSpace"],nUserId)
		return
	end
	
	local nWeeklyFundConsumption_Rebate_GlobalId = tWeeklyFundConsumption_Rebate_GlobalId["GlobalId"]
	local nWeeklyFundConsumption_Rebate_Remain = 0
	-- 检测是否有单服数量限制
	if nIndex <= 5 then
		nWeeklyFundConsumption_Rebate_Remain = Get_SysDynaGlobalData(nWeeklyFundConsumption_Rebate_GlobalId,nIndex)
		-- 礼盒兑换完
		if nWeeklyFundConsumption_Rebate_Remain == 0 then
			User_TalkChannel2005(string.format(tWeeklyFundConsumption_Rebate_Text[nNpcId]["SoldOut"],Get_ItemtypeName(nItemId)),nUserId)
			return
		end
	end
	
	-- 扣返利卡
	if Item_ChkMulItem(tWeeklyFundConsumption_Rebate_ItemId["RebateCard"],tWeeklyFundConsumption_Rebate_ItemId["RebateCard"],nItemNum) and Item_DelMulItem(tWeeklyFundConsumption_Rebate_ItemId["RebateCard"],tWeeklyFundConsumption_Rebate_ItemId["RebateCard"],nItemNum)then
		local sWeeklyFundConsumption_Rebate_Log = tWeeklyFundConsumption_Rebate_Log["Exchange"]
		Sys_SaveActionFestivalLog(string.format(sWeeklyFundConsumption_Rebate_Log,tWeeklyFundConsumption_Rebate_ItemId["RebateCard"],nItemNum))
		-- 设置GlobalId
		if nIndex <= 5 then
			Sys_SetSynaGlobalData(nWeeklyFundConsumption_Rebate_GlobalId,nIndex,nWeeklyFundConsumption_Rebate_Remain-1)
		end
		-- 给物品
		RewardTemplate_UseItemAndMsg(tWeeklyFundConsumption_Rebate_Reward[nItemId])
	end
end

--------------------------------------物品使用
-- 五星坐骑体验礼盒使用
function WeeklyFundConsumption_Rebate_GetItem(nItemId,nChooseItemId,nUserId)
	RewardTemplate_UseItemAndMsg(tWeeklyFundConsumption_Rebate_RewardItem[nItemId][nChooseItemId])
end




----------------------------------NPC部分---------------------------------------------
----【返利嘉年华】露易丝
tNpcFace[5713] = 159
tNpcGossip[25622] = tNpcGossip[25622] or DefaultNpc:new{}
tNpcGossip[25622]["OptionHidden"] = 1
tNpcGossip[25622]["DialogueText"] = tWeeklyFundConsumption_Rebate_Text[25622] 
-- 活动前
tNpcGossip[25622]["Text1-1"] = {111,112,113,114}
tNpcGossip[25622]["tOption1-1"] = {111}
tNpcGossip[25622]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["WeeklyFundConsumptionRebate"]["BuyTime"])
end

-- 兑换时间
tNpcGossip[25622]["Text1-2"] = {121}
tNpcGossip[25622]["tOption1-2"] = {121}
tNpcGossip[25622]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["WeeklyFundConsumptionRebate"]["ExchangeTime"])
end

-- 活动后
tNpcGossip[25622]["Text1-3"] = {131}
tNpcGossip[25622]["tOption1-3"] = {131}
tNpcGossip[25622]["ChkFunc1-3"] = function ()
	return not Sys_ChkFullTime(tActivityTime["WeeklyFundConsumptionRebate"]["ActivityTime"])
end

-- 活动中
tNpcGossip[25622]["Text1-4"] = {141,142,143,144}
tNpcGossip[25622]["tOption1-4"] = {141,142,143,144}
tNpcGossip[25622]["ChkFunc1-4"] = function ()
	local nData8 = WeeklyFundConsumption_Rebate_GetStcValue(8)
	local nData9 = WeeklyFundConsumption_Rebate_GetStcValue(9)
	local nData10 = WeeklyFundConsumption_Rebate_GetStcValue(10)
	tNpcGossip[25622]["Option141"] = string.format(tWeeklyFundConsumption_Rebate_Text[25622]["Option141"],nData8)
	tNpcGossip[25622]["Option142"] = string.format(tWeeklyFundConsumption_Rebate_Text[25622]["Option142"],nData9)
	tNpcGossip[25622]["Option143"] = string.format(tWeeklyFundConsumption_Rebate_Text[25622]["Option143"],nData10)
	return true
end
-- 1、选择购买+8赤炼石（赠）礼盒
tNpcGossip[25622]["OptionFunc141"] = "WeeklyFundConsumption_Rebate_BuyChoice</N>25622</N>3314616</N>5"
-- 2、选择购买1万气力值礼盒
tNpcGossip[25622]["OptionFunc142"] = "WeeklyFundConsumption_Rebate_BuyChoice</N>25622</N>3314617</N>6"
-- 3、选择购买LuxuryRelicBox礼盒
tNpcGossip[25622]["OptionFunc143"] = "WeeklyFundConsumption_Rebate_BuyChoice</N>25622</N>3314618</N>7"

-- 接1、我要购买+8赤炼石（赠）礼盒
tNpcGossip[25622]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[25622]["tOption2-1"] = {211,212}
tNpcGossip[25622]["OptionPoint211"] = "3-1"
-- 接1-1、立即购买
-- 【二次确认】
tNpcGossip[25622]["Text3-1"] = {311}
tNpcGossip[25622]["tOption3-1"] = {311,312}
tNpcGossip[25622]["OptionFunc311"] = "WeeklyFundConsumption_Rebate_BuyItem</N>25622</N>3314616</N>3300</N>5</N>8"

-- 接2、我要购买1万气力值礼盒
tNpcGossip[25622]["Text2-2"] = {221,222,223,224,225,226,227}
tNpcGossip[25622]["tOption2-2"] = {221,222}
tNpcGossip[25622]["OptionPoint221"] = "3-2"
-- 接2-1、立即购买
-- 【二次确认】
tNpcGossip[25622]["Text3-2"] = {321}
tNpcGossip[25622]["tOption3-2"] = {321,322}
tNpcGossip[25622]["OptionFunc321"] = "WeeklyFundConsumption_Rebate_BuyItem</N>25622</N>3314617</N>500</N>6</N>9"

-- 接3、我要购买LuxuryRelicBox礼盒
tNpcGossip[25622]["Text2-3"] = {231,232,233,234,235,236,237}
tNpcGossip[25622]["tOption2-3"] = {231,232}
tNpcGossip[25622]["OptionPoint231"] = "3-3"
-- 接3-1、立即购买
-- 【二次确认】
tNpcGossip[25622]["Text3-3"] = {331}
tNpcGossip[25622]["tOption3-3"] = {331,332}
tNpcGossip[25622]["OptionFunc331"] = "WeeklyFundConsumption_Rebate_BuyItem</N>25622</N>3314618</N>1700</N>7</N>10"

-- 【返利嘉年华】派克(除绿色新服)
tNpcFace[5714] = 13
tNpcGossip[25623] = tNpcGossip[25623] or DefaultNpc:new{}
tNpcGossip[25623]["OptionHidden"] = 1
tNpcGossip[25623]["DialogueText"] = tWeeklyFundConsumption_Rebate_Text[25623] 
-- 兑换开始前
tNpcGossip[25623]["Text1-1"] = {111,112,113,114}
tNpcGossip[25623]["tOption1-1"] = {111}
tNpcGossip[25623]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["WeeklyFundConsumptionRebate"]["ExchangeTime"])
end

-- 兑换结束后
tNpcGossip[25623]["Text1-2"] = {121}
tNpcGossip[25623]["tOption1-2"] = {121}
tNpcGossip[25623]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["WeeklyFundConsumptionRebate"]["ExchangeTime"])
end

-- 活动中
tNpcGossip[25623]["Text1-3"] = {131,132,133,134}
tNpcGossip[25623]["tOption1-3"] = {131,132,133,134,135,136,137,138} 
tNpcGossip[25623]["OptionPoint131"] = "2-1"
tNpcGossip[25623]["OptionPoint132"] = "2-2"
tNpcGossip[25623]["OptionPoint133"] = "2-3"
tNpcGossip[25623]["OptionPoint134"] = "2-4"
tNpcGossip[25623]["OptionPoint135"] = "2-5"
tNpcGossip[25623]["OptionPoint136"] = "2-6"
tNpcGossip[25623]["OptionPoint137"] = "2-7"
tNpcGossip[25623]["ChkFunc1-3"] = function ()
	local nData0 = Get_SysDynaGlobalData(tWeeklyFundConsumption_Rebate_GlobalId["GlobalId"],0)
	local nData1 = Get_SysDynaGlobalData(tWeeklyFundConsumption_Rebate_GlobalId["GlobalId"],1)
	local nData2 = Get_SysDynaGlobalData(tWeeklyFundConsumption_Rebate_GlobalId["GlobalId"],2)
	local nData3 = Get_SysDynaGlobalData(tWeeklyFundConsumption_Rebate_GlobalId["GlobalId"],3)
	tNpcGossip[25623]["Option134"] = string.format(tWeeklyFundConsumption_Rebate_Text[25623]["Option134"],nData0)
	tNpcGossip[25623]["Option135"] = string.format(tWeeklyFundConsumption_Rebate_Text[25623]["Option135"],nData1)
	tNpcGossip[25623]["Option136"] = string.format(tWeeklyFundConsumption_Rebate_Text[25623]["Option136"],nData2)
	tNpcGossip[25623]["Option137"] = string.format(tWeeklyFundConsumption_Rebate_Text[25623]["Option137"],nData3)
	return true
end

-- 兑换3颗明亮星陨石礼盒
tNpcGossip[25623]["Text2-1"] = {211,212}
tNpcGossip[25623]["tOption2-1"] = {211,212} 
tNpcGossip[25623]["OptionFunc211"] = "WeeklyFundConsumption_Rebate_Exchange</N>25623</N>3314628</N>1</N>6"
-- 兑换2颗魔武通玄丹（赠）礼盒
tNpcGossip[25623]["Text2-2"] = {221,222}
tNpcGossip[25623]["tOption2-2"] = {221,222} 
tNpcGossip[25623]["OptionFunc221"] = "WeeklyFundConsumption_Rebate_Exchange</N>25623</N>3314629</N>1</N>6"
-- 兑换20个万能神纹精粹（赠）礼盒
tNpcGossip[25623]["Text2-3"] = {231,232}
tNpcGossip[25623]["tOption2-3"] = {231,232} 
tNpcGossip[25623]["OptionFunc231"] = "WeeklyFundConsumption_Rebate_Exchange</N>25623</N>3314630</N>1</N>6"
-- 兑换1块固化石（赠）
tNpcGossip[25623]["Text2-4"] = {241,242}
tNpcGossip[25623]["tOption2-4"] = {241,242} 
tNpcGossip[25623]["OptionFunc241"] = "WeeklyFundConsumption_Rebate_Exchange</N>25623</N>723694</N>2</N>0"
-- 兑换3000天石（赠）礼盒
tNpcGossip[25623]["Text2-5"] = {251,252}
tNpcGossip[25623]["tOption2-5"] = {251,252} 
tNpcGossip[25623]["OptionFunc251"] = "WeeklyFundConsumption_Rebate_Exchange</N>25623</N>3314634</N>10</N>1"
-- 兑换五星坐骑体验礼盒
tNpcGossip[25623]["Text2-6"] = {261,262}
tNpcGossip[25623]["tOption2-6"] = {261,262} 
tNpcGossip[25623]["OptionFunc261"] = "WeeklyFundConsumption_Rebate_Exchange</N>25623</N>3314619</N>15</N>2"
-- 兑换2颗优质神纹源晶（赠）礼盒
tNpcGossip[25623]["Text2-7"] = {271,272}
tNpcGossip[25623]["tOption2-7"] = {271,272} 
tNpcGossip[25623]["OptionFunc271"] = "WeeklyFundConsumption_Rebate_Exchange</N>25623</N>3314631</N>24</N>3"

-- 【返利嘉年华】派克（绿色新服）
tNpcFace[5787] = 13
tNpcGossip[25680] = tNpcGossip[25680] or DefaultNpc:new{}
tNpcGossip[25680]["OptionHidden"] = 1
tNpcGossip[25680]["DialogueText"] = tWeeklyFundConsumption_Rebate_Text[25680] 
-- 兑换开始前
tNpcGossip[25680]["Text1-1"] = {111,112,113,114}
tNpcGossip[25680]["tOption1-1"] = {111}
tNpcGossip[25680]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["WeeklyFundConsumptionRebate"]["ExchangeTime"])
end

-- 兑换结束后
tNpcGossip[25680]["Text1-2"] = {121}
tNpcGossip[25680]["tOption1-2"] = {121}
tNpcGossip[25680]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["WeeklyFundConsumptionRebate"]["ExchangeTime"])
end

-- 活动中
tNpcGossip[25680]["Text1-3"] = {131,132,133,134}
tNpcGossip[25680]["tOption1-3"] = {131,132,133,134,135,136,137} 
tNpcGossip[25680]["OptionPoint131"] = "2-1"
tNpcGossip[25680]["OptionPoint132"] = "2-2"
tNpcGossip[25680]["OptionPoint133"] = "2-3"
tNpcGossip[25680]["OptionPoint134"] = "2-4"
tNpcGossip[25680]["OptionPoint135"] = "2-5"
tNpcGossip[25680]["OptionPoint136"] = "2-6"
tNpcGossip[25680]["ChkFunc1-3"] = function ()
	local nData4 = Get_SysDynaGlobalData(tWeeklyFundConsumption_Rebate_GlobalId["GlobalId"],4)
	local nData2 = Get_SysDynaGlobalData(tWeeklyFundConsumption_Rebate_GlobalId["GlobalId"],2)
	local nData5 = Get_SysDynaGlobalData(tWeeklyFundConsumption_Rebate_GlobalId["GlobalId"],5)
	tNpcGossip[25680]["Option134"] = string.format(tWeeklyFundConsumption_Rebate_Text[25680]["Option134"],nData4)
	tNpcGossip[25680]["Option135"] = string.format(tWeeklyFundConsumption_Rebate_Text[25680]["Option135"],nData2)
	tNpcGossip[25680]["Option136"] = string.format(tWeeklyFundConsumption_Rebate_Text[25680]["Option136"],nData5)
	return true
end

-- 兑换3颗明亮星陨石礼盒
tNpcGossip[25680]["Text2-1"] = {211,212}
tNpcGossip[25680]["tOption2-1"] = {211,212} 
tNpcGossip[25680]["OptionFunc211"] = "WeeklyFundConsumption_Rebate_Exchange</N>25680</N>3314628</N>1</N>6"
-- 兑换1颗魔武通玄丹
tNpcGossip[25680]["Text2-2"] = {221,222}
tNpcGossip[25680]["tOption2-2"] = {221,222} 
tNpcGossip[25680]["OptionFunc221"] = "WeeklyFundConsumption_Rebate_Exchange</N>25680</N>3303373</N>1</N>6"
-- 兑换15个万能神纹精粹礼盒
tNpcGossip[25680]["Text2-3"] = {231,232}
tNpcGossip[25680]["tOption2-3"] = {231,232} 
tNpcGossip[25680]["OptionFunc231"] = "WeeklyFundConsumption_Rebate_Exchange</N>25680</N>3314632</N>1</N>6"
-- 兑换10颗神纹源晶礼盒
tNpcGossip[25680]["Text2-4"] = {241,242}
tNpcGossip[25680]["tOption2-4"] = {241,242} 
tNpcGossip[25680]["OptionFunc241"] = "WeeklyFundConsumption_Rebate_Exchange</N>25680</N>3314633</N>10</N>4"
-- 兑换五星坐骑体验礼盒
tNpcGossip[25680]["Text2-5"] = {251,252}
tNpcGossip[25680]["tOption2-5"] = {251,252} 
tNpcGossip[25680]["OptionFunc251"] = "WeeklyFundConsumption_Rebate_Exchange</N>25680</N>3314619</N>15</N>2"
-- 兑换1个金钢坚钻
tNpcGossip[25680]["Text2-6"] = {261,262}
tNpcGossip[25680]["tOption2-6"] = {261,262} 
tNpcGossip[25680]["OptionFunc261"] = "WeeklyFundConsumption_Rebate_Exchange</N>25680</N>1200005</N>24</N>5"

---------------------------------物品部分---------------------------------------------
-- 五星坐骑体验礼盒
tItemFace[3314619] = 1007
tItem[3314619] = tItem[3314619] or {}
tItem[3314619]["Text1-1"] = {111}
tItem[3314619]["Text111"] = tWeeklyFundConsumption_Rebate_Text[3314619]["Text111"]
tItem[3314619]["tOption1-1"] = {111,112,113,114}
tItem[3314619]["Option111"] = tWeeklyFundConsumption_Rebate_Text[3314619]["Option111"]
tItem[3314619]["Option112"] = tWeeklyFundConsumption_Rebate_Text[3314619]["Option112"]
tItem[3314619]["Option113"] = tWeeklyFundConsumption_Rebate_Text[3314619]["Option113"]
tItem[3314619]["Option114"] = tWeeklyFundConsumption_Rebate_Text[3314619]["Option114"]
tItem[3314619]["OptionFunc111"]="WeeklyFundConsumption_Rebate_GetItem</N>3314619</N>1"
tItem[3314619]["OptionFunc112"]="WeeklyFundConsumption_Rebate_GetItem</N>3314619</N>2"
tItem[3314619]["OptionFunc113"]="WeeklyFundConsumption_Rebate_GetItem</N>3314619</N>3"

-- 返利卡
tItem[3314620] = tItem[3314620] or {}
tItem[3314620]["Function"] = function(nItemId,sItemName)
	local nWeeklyFundConsumption_Rebate_NpcId = tWeeklyFundConsumption_Rebate_NpcId[2]
	local nWeeklyFundConsumption_Rebate_ItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tActivityTime["WeeklyFundConsumptionRebate"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)then
			User_TalkChannel2005(tWeeklyFundConsumption_Rebate_Text[nItemId]["OverDue"],nUserId)
			local sWeeklyFundConsumption_Rebate_Log = tWeeklyFundConsumption_Rebate_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sWeeklyFundConsumption_Rebate_Log,nItemId,nWeeklyFundConsumption_Rebate_ItemNum))
		end
		return
	end
	NpcPosition_PathFind(nWeeklyFundConsumption_Rebate_NpcId)
end



-- 赤练石礼盒
tItem[3314616] = tItem[3314616] or {}
tItem[3314616]["Function"] = function(nItemId,sItemName)
	local nWeeklyFundConsumption_Rebate_ItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tActivityTime["WeeklyFundConsumptionRebate"]["BuyTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)then
			User_TalkChannel2005(tWeeklyFundConsumption_Rebate_Text[nItemId]["OverDue"],nUserId)
			local sWeeklyFundConsumption_Rebate_Log = tWeeklyFundConsumption_Rebate_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sWeeklyFundConsumption_Rebate_Log,nItemId,nWeeklyFundConsumption_Rebate_ItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tWeeklyFundConsumption_Rebate_RewardItem[nItemId])
end
-- 1万气力值（赠）礼盒
tItem[3314617] = tItem[3314616]
-- LuxuryRelicBox礼盒
tItem[3314618] = tItem[3314616]
-- 兑换商店物品
tItem[3314628] = tItem[3314628] or {}
tItem[3314628]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tWeeklyFundConsumption_Rebate_RewardItem[nItemId])
end
tItem[3314629] = tItem[3314628]
tItem[3314630] = tItem[3314628]
tItem[3314631] = tItem[3314628]
tItem[3314632] = tItem[3314628]
tItem[3314633] = tItem[3314628]
tItem[3314634] = tItem[3314628]


