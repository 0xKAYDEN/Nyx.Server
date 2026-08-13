----------------------------------------------------------------------------
--Name:		[征服][功能脚本]转世NPC制作.lua
--Purpose:	转世相关功能
--Creator: 	郑鋆
--Created:	2018/10/18
----------------------------------------------------------------------------

-- 命名前缀
-- Reincarnation_

-- 常量数据
local tReincarnation_Constant = {}
	-- 二转任务ID
	tReincarnation_Constant["TaskId"] = 2419
	-- 转世需要的基本空间
	tReincarnation_Constant["ReferenceSpace"] = 2
	-- 特殊转世的界面ID
	tReincarnation_Constant["Special"] = 485

	-- 炼制涅磐灵石相关数据配置
	tReincarnation_Constant["Nirvana"] = {}
	tReincarnation_Constant["Nirvana"]["Emoney"] = 5
	tReincarnation_Constant["Nirvana"]["Ordinary"] = 721258
	tReincarnation_Constant["Nirvana"]["OrdinaryIndex"] = "2-5"
	tReincarnation_Constant["Nirvana"]["Gift"] = 3005329
	tReincarnation_Constant["Nirvana"]["GiftIndex"] = "2-6"
	tReincarnation_Constant["Nirvana"]["EmoneyLog"] = "350	4124"

	-- 获得涅磐灵石的几种提示
	tReincarnation_Constant["Award"] = {}
	tReincarnation_Constant["Award"]["Ordinary"] = {}
	tReincarnation_Constant["Award"]["Ordinary"][1] = "2-5"
	tReincarnation_Constant["Award"]["Ordinary"][2] = "5-7"
	tReincarnation_Constant["Award"]["Gift"] = {}
	tReincarnation_Constant["Award"]["Gift"][1] = "2-6"
	tReincarnation_Constant["Award"]["Gift"][2] = "5-8"

	-- 二转传送的坐标
	tReincarnation_Constant["Tran"] = {}
	tReincarnation_Constant["Tran"]["Lev"] = 120
	tReincarnation_Constant["Tran"]["PK"] = 100
	tReincarnation_Constant["Tran"]["MapId"] = 1700
	tReincarnation_Constant["Tran"]["ChgMap"] = {}
	tReincarnation_Constant["Tran"]["ChgMap"]["PosX"] = 607
	tReincarnation_Constant["Tran"]["ChgMap"]["PosY"] = 641
	tReincarnation_Constant["Tran"]["ChgMap"]["Range"] = 5
	tReincarnation_Constant["Tran"][1] = {260,718}
	tReincarnation_Constant["Tran"][2] = {459,815}
	tReincarnation_Constant["Tran"][3] = {598,981}
	tReincarnation_Constant["Tran"][4] = {863,874}
	tReincarnation_Constant["Tran"][5] = {728,291}
	tReincarnation_Constant["Tran"][6] = {827,486}
	tReincarnation_Constant["Tran"][7] = {992,593}
	tReincarnation_Constant["Tran"][8] = {434,460}

	-- 水魔岛外岛坐标
	tReincarnation_Constant["GlobeIsland"] = {}
	tReincarnation_Constant["GlobeIsland"]["MapId"] = 1212
	tReincarnation_Constant["GlobeIsland"]["PosX"] = 981
	tReincarnation_Constant["GlobeIsland"]["PosY"] = 1263

	-- 轮回转世的任务
	tReincarnation_Constant["Turn"] = {}
	tReincarnation_Constant["Turn"][1] = 6446
	tReincarnation_Constant["Turn"][2] = 6447

	-- 涅槃灵石
	tReincarnation_Constant["CelestialStone"] = 721259

	-- 成就
	tReincarnation_Constant["Achievement"] = {}
	tReincarnation_Constant["Achievement"][1] = 10315
	tReincarnation_Constant["Achievement"][2] = 10316
	tReincarnation_Constant["Achievement"]["LOG"] = {}
	tReincarnation_Constant["Achievement"]["LOG"][1] = "0,0,0,0,10000582,2,10315,1"
	tReincarnation_Constant["Achievement"]["LOG"][2] = "0,0,0,0,10000582,2,10316,1"

	-- 一转的等级需求
	tReincarnation_Constant["FirstReincarnat"] = {}
	tReincarnation_Constant["FirstReincarnat"][15] = 120
	tReincarnation_Constant["FirstReincarnat"][25] = 120
	tReincarnation_Constant["FirstReincarnat"][45] = 120
	tReincarnation_Constant["FirstReincarnat"][55] = 120
	tReincarnation_Constant["FirstReincarnat"][65] = 120
	tReincarnation_Constant["FirstReincarnat"][75] = 120
	tReincarnation_Constant["FirstReincarnat"][85] = 120
	tReincarnation_Constant["FirstReincarnat"][135] = 110
	tReincarnation_Constant["FirstReincarnat"][145] = 120
	tReincarnation_Constant["FirstReincarnat"][165] = 120
	tReincarnation_Constant["FirstReincarnat"][95] = 120

	-- 二转的等级需求
	tReincarnation_Constant["SecondReincarnat"] = {}
	tReincarnation_Constant["SecondReincarnat"][15] = 120
	tReincarnation_Constant["SecondReincarnat"][25] = 120
	tReincarnation_Constant["SecondReincarnat"][45] = 120
	tReincarnation_Constant["SecondReincarnat"][55] = 120
	tReincarnation_Constant["SecondReincarnat"][65] = 120
	tReincarnation_Constant["SecondReincarnat"][75] = 120
	tReincarnation_Constant["SecondReincarnat"][85] = 120
	tReincarnation_Constant["SecondReincarnat"][135] = 120
	tReincarnation_Constant["SecondReincarnat"][145] = 120
	tReincarnation_Constant["SecondReincarnat"][165] = 120
	tReincarnation_Constant["SecondReincarnat"][95] = 120

	-- 一转神佑
	tReincarnation_Constant["GodBless"] = {}
	tReincarnation_Constant["GodBless"]["Data"] = 14
	tReincarnation_Constant["GodBless"]["Index"] = 7
	tReincarnation_Constant["GodBless"]["Special"] = {}
	tReincarnation_Constant["GodBless"]["Special"]["Pro"] = 135
	tReincarnation_Constant["GodBless"]["Special"]["Lev"] = 120
	tReincarnation_Constant["GodBless"]["Special"]["EquipPos"] = {4,8}

-- 转世的背包空间，装备检查等数据
local tReincarnation_Reincarnat = {}
	-- 装备
	tReincarnation_Reincarnat["Equip"] = {}
	-- 勇士职业
	tReincarnation_Reincarnat["Equip"][15] = {}
	tReincarnation_Reincarnat["Equip"][15]["Coat"] = 137
	tReincarnation_Reincarnat["Equip"][15]["Epic"] = 614
	-- 战士职业
	tReincarnation_Reincarnat["Equip"][25] = {}
	tReincarnation_Reincarnat["Equip"][25]["Coat"] = 137
	tReincarnation_Reincarnat["Equip"][25]["Epic"] = 624
	-- 弓手职业
	tReincarnation_Reincarnat["Equip"][45] = {}
	tReincarnation_Reincarnat["Equip"][45]["Coat"] = 137
	-- 忍者职业
	tReincarnation_Reincarnat["Equip"][55] = {}
	tReincarnation_Reincarnat["Equip"][55]["Coat"] = 137
	tReincarnation_Reincarnat["Equip"][55]["Epic"] = 616
	-- 武僧职业
	tReincarnation_Reincarnat["Equip"][65] = {}
	tReincarnation_Reincarnat["Equip"][65]["Coat"] = 137
	tReincarnation_Reincarnat["Equip"][65]["Epic"] = 622
	-- 海盗职业
	tReincarnation_Reincarnat["Equip"][75] = {}
	tReincarnation_Reincarnat["Equip"][75]["Coat"] = 137
	tReincarnation_Reincarnat["Equip"][75]["Epic"] = {}
	tReincarnation_Reincarnat["Equip"][75]["Epic"][5] = 670
	tReincarnation_Reincarnat["Equip"][75]["Epic"][4] = 671
	-- 截拳师职业
	tReincarnation_Reincarnat["Equip"][85] = {}
	tReincarnation_Reincarnat["Equip"][85]["Coat"] = 137
	-- 水道士职业
	tReincarnation_Reincarnat["Equip"][135] = {}
	tReincarnation_Reincarnat["Equip"][135]["Coat"] = 137
	tReincarnation_Reincarnat["Equip"][135]["Epic"] = {}
	tReincarnation_Reincarnat["Equip"][135]["Epic"][5] = 619
	tReincarnation_Reincarnat["Equip"][135]["Epic"][4] = 620
	-- 水道士职业
	tReincarnation_Reincarnat["Equip"][145] = {}
	tReincarnation_Reincarnat["Equip"][145]["Coat"] = 137
	tReincarnation_Reincarnat["Equip"][145]["Epic"] = {}
	tReincarnation_Reincarnat["Equip"][145]["Epic"][5] = 619
	tReincarnation_Reincarnat["Equip"][145]["Epic"][4] = 620
	-- 铁扇门职业
	tReincarnation_Reincarnat["Equip"][165] = {}
	tReincarnation_Reincarnat["Equip"][165]["Coat"] = 137
	-- 雷神职业
	tReincarnation_Reincarnat["Equip"][95] = {}
	tReincarnation_Reincarnat["Equip"][95]["Coat"] = 137
	
-- 转世技能继承
local tReincarnation_Skill = {}
	-- 一转技能继承
	tReincarnation_Skill[1] = {}
	-- 勇士职业
	tReincarnation_Skill[1][15] = {}
	tReincarnation_Skill[1][15][11] = {3050}
	tReincarnation_Skill[1][15][21] = {5100}
	tReincarnation_Skill[1][15][61] = {10490}
	tReincarnation_Skill[1][15][71] = {11140}
	tReincarnation_Skill[1][15][81] = {12240,12290}
	tReincarnation_Skill[1][15][161] = {12860,12870,12980,13090}
	-- 战士职业
	tReincarnation_Skill[1][25] = {}
	tReincarnation_Skill[1][25][61] = {10490}
	tReincarnation_Skill[1][25][71] = {11140}
	tReincarnation_Skill[1][25][81] = {12240,12290}
	tReincarnation_Skill[1][25][161] = {12860,12870,12980,13090}
	-- 弓手职业
	tReincarnation_Skill[1][45] = {}
	tReincarnation_Skill[1][45][11] = {5002}
	tReincarnation_Skill[1][45][21] = {5002}
	tReincarnation_Skill[1][45][41] = {5000}
	tReincarnation_Skill[1][45][61] = {10490}
	tReincarnation_Skill[1][45][71] = {11140}
	tReincarnation_Skill[1][45][81] = {12240,12290}
	tReincarnation_Skill[1][45][132] = {5002}
	tReincarnation_Skill[1][45][142] = {5002}
	tReincarnation_Skill[1][45][161] = {12860,12870,12980,13090}
	-- 忍者职业
	tReincarnation_Skill[1][55] = {}
	tReincarnation_Skill[1][55][61] = {10490}
	tReincarnation_Skill[1][55][71] = {11140}
	tReincarnation_Skill[1][55][81] = {12240,12290}
	tReincarnation_Skill[1][55][161] = {12860,12870,12980,13090}
	-- 武僧职业
	tReincarnation_Skill[1][65] = {}
	tReincarnation_Skill[1][65][71] = {11140}
	tReincarnation_Skill[1][65][81] = {12240,12290}
	tReincarnation_Skill[1][65][161] = {12860,12870,12980,13090}
	-- 海盗职业
	tReincarnation_Skill[1][75] = {}
	tReincarnation_Skill[1][75][61] = {10490}
	tReincarnation_Skill[1][75][81] = {12240,12290}
	tReincarnation_Skill[1][75][161] = {12860,12870,12980,13090}
	-- 水道士职业
	tReincarnation_Skill[1][135] = {}
	tReincarnation_Skill[1][135][61] = {10490}
	tReincarnation_Skill[1][135][71] = {11140}
	tReincarnation_Skill[1][135][81] = {12240,12290}
	tReincarnation_Skill[1][135][132] = {3090}
	tReincarnation_Skill[1][135][161] = {12860,12870,12980,13090}
	-- 火道士职业
	tReincarnation_Skill[1][145] = {}
	tReincarnation_Skill[1][145][61] = {10490}
	tReincarnation_Skill[1][145][71] = {11140}
	tReincarnation_Skill[1][145][81] = {12240,12290}
	tReincarnation_Skill[1][145][142] = {3080}
	tReincarnation_Skill[1][145][161] = {12860,12870,12980,13090}
	-- 铁扇门
	tReincarnation_Skill[1][165] = {}
	tReincarnation_Skill[1][165][61] = {10490}
	tReincarnation_Skill[1][165][71] = {11140}
	tReincarnation_Skill[1][165][81] = {12240,12290}
	tReincarnation_Skill[1][165][161] = {12860,12870,12980,13090}
	-- 雷神
	tReincarnation_Skill[1][95] = {}
	tReincarnation_Skill[1][95][61] = {10490}
	tReincarnation_Skill[1][95][71] = {11140}
	tReincarnation_Skill[1][95][81] = {12240,12290}
	tReincarnation_Skill[1][95][161] = {12860,12870,12980,13090}
	tReincarnation_Skill[1][95][91] = {15750,15790}

	-- 二转技能继承
	tReincarnation_Skill[2] = {}
	-- 勇士职业
	tReincarnation_Skill[2][15] = {}
	tReincarnation_Skill[2][15][11] = {9876,3050}
	tReincarnation_Skill[2][15][21] = {9876,5100}
	tReincarnation_Skill[2][15][41] = {9876}
	tReincarnation_Skill[2][15][51] = {9876}
	tReincarnation_Skill[2][15][61] = {9876,10490}
	tReincarnation_Skill[2][15][71] = {9876,11140}
	tReincarnation_Skill[2][15][81] = {9876,12240,12290}
	tReincarnation_Skill[2][15][132] = {9876}
	tReincarnation_Skill[2][15][142] = {9876}
	tReincarnation_Skill[2][15][161] = {9876,12860,12870,12980,13090}
	tReincarnation_Skill[2][15][91] = {9876}
	-- 战士
	tReincarnation_Skill[2][25] = {}
	tReincarnation_Skill[2][25][11] = {9876}
	tReincarnation_Skill[2][25][21] = {9876}
	tReincarnation_Skill[2][25][41] = {9876}
	tReincarnation_Skill[2][25][51] = {9876}
	tReincarnation_Skill[2][25][61] = {9876,10490}
	tReincarnation_Skill[2][25][71] = {9876,11140}
	tReincarnation_Skill[2][25][81] = {9876,12240,12290}
	tReincarnation_Skill[2][25][132] = {9876}
	tReincarnation_Skill[2][25][142] = {9876}
	tReincarnation_Skill[2][25][161] = {9876,12860,12870,12980,13090}
	tReincarnation_Skill[2][25][91] = {9876}
	-- 弓箭手
	tReincarnation_Skill[2][45] = {}
	tReincarnation_Skill[2][45][11] = {9876,5002}
	tReincarnation_Skill[2][45][21] = {9876,5002}
	tReincarnation_Skill[2][45][41] = {9876,5000}
	tReincarnation_Skill[2][45][51] = {9876}
	tReincarnation_Skill[2][45][61] = {9876,10490}
	tReincarnation_Skill[2][45][71] = {9876,11140}
	tReincarnation_Skill[2][45][81] = {9876,12240,12290}
	tReincarnation_Skill[2][45][132] = {9876,5002}
	tReincarnation_Skill[2][45][142] = {9876,5002}
	tReincarnation_Skill[2][45][161] = {9876,12860,12870,12980,13090}
	tReincarnation_Skill[2][45][91] = {9876}
	-- 忍者
	tReincarnation_Skill[2][55] = {}
	tReincarnation_Skill[2][55][11] = {9876}
	tReincarnation_Skill[2][55][21] = {9876}
	tReincarnation_Skill[2][55][41] = {9876}
	tReincarnation_Skill[2][55][51] = {9876}
	tReincarnation_Skill[2][55][61] = {9876,10490}
	tReincarnation_Skill[2][55][71] = {9876,11140}
	tReincarnation_Skill[2][55][81] = {9876,12240,12290}
	tReincarnation_Skill[2][55][132] = {9876}
	tReincarnation_Skill[2][55][142] = {9876}
	tReincarnation_Skill[2][55][161] = {9876,12860,12870,12980,13090}
	tReincarnation_Skill[2][55][91] = {9876}
	-- 武僧
	tReincarnation_Skill[2][65] = {}
	tReincarnation_Skill[2][65][11] = {9876}
	tReincarnation_Skill[2][65][21] = {9876}
	tReincarnation_Skill[2][65][41] = {9876}
	tReincarnation_Skill[2][65][51] = {9876}
	tReincarnation_Skill[2][65][61] = {9876}
	tReincarnation_Skill[2][65][71] = {9876,11140}
	tReincarnation_Skill[2][65][81] = {9876,12240,12290}
	tReincarnation_Skill[2][65][132] = {9876}
	tReincarnation_Skill[2][65][142] = {9876}
	tReincarnation_Skill[2][65][161] = {9876,12860,12870,12980,13090}
	tReincarnation_Skill[2][65][91] = {9876}
	-- 海盗
	tReincarnation_Skill[2][75] = {}
	tReincarnation_Skill[2][75][11] = {9876}
	tReincarnation_Skill[2][75][21] = {9876}
	tReincarnation_Skill[2][75][41] = {9876}
	tReincarnation_Skill[2][75][51] = {9876}
	tReincarnation_Skill[2][75][61] = {9876,10490}
	tReincarnation_Skill[2][75][71] = {9876}
	tReincarnation_Skill[2][75][81] = {9876,12240,12290}
	tReincarnation_Skill[2][75][132] = {9876}
	tReincarnation_Skill[2][75][142] = {9876}
	tReincarnation_Skill[2][75][161] = {9876,12860,12870,12980,13090}
	tReincarnation_Skill[2][75][91] = {9876}
	-- 截拳师
	tReincarnation_Skill[2][85] = {}
	tReincarnation_Skill[2][85][11] = {9876}
	tReincarnation_Skill[2][85][21] = {9876}
	tReincarnation_Skill[2][85][41] = {9876}
	tReincarnation_Skill[2][85][51] = {9876}
	tReincarnation_Skill[2][85][61] = {9876}
	tReincarnation_Skill[2][85][71] = {9876}
	tReincarnation_Skill[2][85][81] = {9876}
	tReincarnation_Skill[2][85][132] = {9876}
	tReincarnation_Skill[2][85][142] = {9876}
	tReincarnation_Skill[2][85][161] = {9876,12860,12870,12980,13090}
	tReincarnation_Skill[2][85][91] = {9876}
	-- 水道
	tReincarnation_Skill[2][135] = {}
	tReincarnation_Skill[2][135][11] = {9876}
	tReincarnation_Skill[2][135][21] = {9876}
	tReincarnation_Skill[2][135][41] = {9876}
	tReincarnation_Skill[2][135][51] = {9876}
	tReincarnation_Skill[2][135][61] = {9876,10490}
	tReincarnation_Skill[2][135][71] = {9876,11140}
	tReincarnation_Skill[2][135][81] = {9876,12240,12290}
	tReincarnation_Skill[2][135][132] = {9876,3090}
	tReincarnation_Skill[2][135][142] = {9876}
	tReincarnation_Skill[2][135][161] = {9876,12860,12870,12980,13090}
	tReincarnation_Skill[2][135][91] = {9876}
	-- 火道
	tReincarnation_Skill[2][145] = {}
	tReincarnation_Skill[2][145][11] = {9876}
	tReincarnation_Skill[2][145][21] = {9876}
	tReincarnation_Skill[2][145][41] = {9876}
	tReincarnation_Skill[2][145][51] = {9876}
	tReincarnation_Skill[2][145][61] = {9876,10490}
	tReincarnation_Skill[2][145][71] = {9876,11140}
	tReincarnation_Skill[2][145][81] = {9876,12240,12290}
	tReincarnation_Skill[2][145][132] = {9876}
	tReincarnation_Skill[2][145][142] = {9876,3080}
	tReincarnation_Skill[2][145][161] = {9876,12860,12870,12980,13090}
	tReincarnation_Skill[2][145][91] = {9876}
	-- 铁扇门
	tReincarnation_Skill[2][165] = {}
	tReincarnation_Skill[2][165][11] = {9876}
	tReincarnation_Skill[2][165][21] = {9876}
	tReincarnation_Skill[2][165][41] = {9876}
	tReincarnation_Skill[2][165][51] = {9876}
	tReincarnation_Skill[2][165][61] = {9876,10490}
	tReincarnation_Skill[2][165][71] = {9876,11140}
	tReincarnation_Skill[2][165][81] = {9876,12240,12290}
	tReincarnation_Skill[2][165][132] = {9876}
	tReincarnation_Skill[2][165][142] = {9876}
	tReincarnation_Skill[2][165][91] = {9876}
	tReincarnation_Skill[2][165][161] = {9876,12860,12870,12980,13090}
	-- 雷神
	tReincarnation_Skill[2][95] = {}
	tReincarnation_Skill[2][95][11] = {9876}
	tReincarnation_Skill[2][95][21] = {9876}
	tReincarnation_Skill[2][95][41] = {9876}
	tReincarnation_Skill[2][95][51] = {9876}
	tReincarnation_Skill[2][95][61] = {9876,10490}
	tReincarnation_Skill[2][95][71] = {9876,11140}
	tReincarnation_Skill[2][95][81] = {9876,12240,12290}
	tReincarnation_Skill[2][95][132] = {9876}
	tReincarnation_Skill[2][95][142] = {9876}
	tReincarnation_Skill[2][95][161] = {9876,12860,12870,12980,13090}
	tReincarnation_Skill[2][95][91] = {9876,15750,15790}

-- stc掩码数据
local tReincarnation_Stc = {}
	-- 二转任务掩码
	tReincarnation_Stc["TwoTurn"] = {}
	tReincarnation_Stc["TwoTurn"]["EventType"] = 61
	tReincarnation_Stc["TwoTurn"]["DataType"] = 0
	tReincarnation_Stc["TwoTurn"]["Data"] = 4

-- 龙珠物品数据
local tReincarnation_DragonBall = {}
	tReincarnation_DragonBall["Lev"] = 70
	tReincarnation_DragonBall[1] = {}
	tReincarnation_DragonBall[1]["DeleteItem"] = {}
	tReincarnation_DragonBall[1]["DeleteItem"][1] = {}
	tReincarnation_DragonBall[1]["DeleteItem"][1]["Id"] = 1088000
	tReincarnation_DragonBall[1]["DeleteItem"][1]["ItemNum"] = 10
	tReincarnation_DragonBall[2] = {}
	tReincarnation_DragonBall[2]["DeleteItem"] = {}
	tReincarnation_DragonBall[2]["DeleteItem"][1] = {}
	tReincarnation_DragonBall[2]["DeleteItem"][1]["Id"] = 720028
	tReincarnation_DragonBall[2]["DeleteItem"][1]["ItemNum"] = 1
	tReincarnation_DragonBall[3] = {}
	tReincarnation_DragonBall[3]["DeleteItem"] = {}
	tReincarnation_DragonBall[3]["DeleteItem"][1] = {}
	tReincarnation_DragonBall[3]["DeleteItem"][1]["Id"] = 3200822
	tReincarnation_DragonBall[3]["DeleteItem"][1]["ItemNum"] = 1
	tReincarnation_DragonBall[4] = {}
	tReincarnation_DragonBall[4]["DeleteItem"] = {}
	tReincarnation_DragonBall[4]["DeleteItem"][1] = {}
	tReincarnation_DragonBall[4]["DeleteItem"][1]["Id"] = 3300376
	tReincarnation_DragonBall[4]["DeleteItem"][1]["ItemNum"] = 1

-- 需要删除的任务ID
local tReincarnation_DelTaskId = {1823,1824,1825,1826,1827,1828,1829,1830,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,
		1842,1843,1844,1845,1846,1847,1848,1849,1850,1851,1852,1793,1794,1795,1796,1797,1798,1799,1800,1801,1802,1803,1804,1805,
		1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1741,1742,1743,1744,1745,1746,1747,
		1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1781,1782,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1711,
		1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,
		1736,1737,1738,1739,1740}


-- 需要置零的stc
local tReincarnation_DelStc = {}
	tReincarnation_DelStc[1] = {["EventType"] = 42,["DataType"] = 9,["Data"] = 0}
	tReincarnation_DelStc[2] = {["EventType"] = 42,["DataType"] = 10,["Data"] = 0}
	tReincarnation_DelStc[3] = {["EventType"] = 42,["DataType"] = 11,["Data"] = 0}
	tReincarnation_DelStc[4] = {["EventType"] = 42,["DataType"] = 12,["Data"] = 0}
	tReincarnation_DelStc[5] = {["EventType"] = 42,["DataType"] = 13,["Data"] = 0}
	tReincarnation_DelStc[6] = {["EventType"] = 38,["DataType"] = 1,["Data"] = 1}
	tReincarnation_DelStc[7] = {["EventType"] = 38,["DataType"] = 2,["Data"] = 1}
	tReincarnation_DelStc[8] = {["EventType"] = 38,["DataType"] = 3,["Data"] = 1}
	tReincarnation_DelStc[9] = {["EventType"] = 38,["DataType"] = 4,["Data"] = 0}
	tReincarnation_DelStc[10] = {["EventType"] = 41,["DataType"] = 0,["Data"] = 1}
	tReincarnation_DelStc[11] = {["EventType"] = 41,["DataType"] = 2,["Data"] = 10}
	tReincarnation_DelStc[12] = {["EventType"] = 42,["DataType"] = 0,["Data"] = 0}
	tReincarnation_DelStc[13] = {["EventType"] = 42,["DataType"] = 1,["Data"] = 0}
	tReincarnation_DelStc[14] = {["EventType"] = 42,["DataType"] = 2,["Data"] = 0}
	tReincarnation_DelStc[15] = {["EventType"] = 41,["DataType"] = 9,["Data"] = 1}
	tReincarnation_DelStc[16] = {["EventType"] = 41,["DataType"] = 10,["Data"] = 0}
	tReincarnation_DelStc[17] = {["EventType"] = 41,["DataType"] = 3,["Data"] = 1}
	tReincarnation_DelStc[18] = {["EventType"] = 41,["DataType"] = 4,["Data"] = 0}
	tReincarnation_DelStc[19] = {["EventType"] = 41,["DataType"] = 5,["Data"] = 1}
	tReincarnation_DelStc[20] = {["EventType"] = 41,["DataType"] = 6,["Data"] = 0}
	tReincarnation_DelStc[21] = {["EventType"] = 41,["DataType"] = 7,["Data"] = 0}
	tReincarnation_DelStc[22] = {["EventType"] = 41,["DataType"] = 8,["Data"] = 0}
	tReincarnation_DelStc[23] = {["EventType"] = 43,["DataType"] = 0,["Data"] = 1}
	tReincarnation_DelStc[24] = {["EventType"] = 43,["DataType"] = 1,["Data"] = 0}
	tReincarnation_DelStc[25] = {["EventType"] = 43,["DataType"] = 2,["Data"] = 0}
	tReincarnation_DelStc[26] = {["EventType"] = 42,["DataType"] = 3,["Data"] = 0}
	tReincarnation_DelStc[27] = {["EventType"] = 42,["DataType"] = 4,["Data"] = 0}
	tReincarnation_DelStc[28] = {["EventType"] = 42,["DataType"] = 5,["Data"] = 0}
	tReincarnation_DelStc[29] = {["EventType"] = 42,["DataType"] = 6,["Data"] = 0}
	tReincarnation_DelStc[30] = {["EventType"] = 42,["DataType"] = 7,["Data"] = 0}
	tReincarnation_DelStc[31] = {["EventType"] = 42,["DataType"] = 8,["Data"] = 0}
	tReincarnation_DelStc[32] = {["EventType"] = 42,["DataType"] = 14,["Data"] = 0}
	tReincarnation_DelStc[33] = {["EventType"] = 47,["DataType"] = 0,["Data"] = 0}
	tReincarnation_DelStc[34] = {["EventType"] = 47,["DataType"] = 1,["Data"] = 0}
	tReincarnation_DelStc[35] = {["EventType"] = 47,["DataType"] = 2,["Data"] = 0}
	tReincarnation_DelStc[36] = {["EventType"] = 47,["DataType"] = 3,["Data"] = 0}
	tReincarnation_DelStc[37] = {["EventType"] = 47,["DataType"] = 5,["Data"] = 0}
	tReincarnation_DelStc[38] = {["EventType"] = 47,["DataType"] = 7,["Data"] = 0}
	tReincarnation_DelStc[39] = {["EventType"] = 47,["DataType"] = 10,["Data"] = 0}
	tReincarnation_DelStc[40] = {["EventType"] = 47,["DataType"] = 25,["Data"] = 0}
	tReincarnation_DelStc[41] = {["EventType"] = 47,["DataType"] = 26,["Data"] = 0}
	tReincarnation_DelStc[42] = {["EventType"] = 47,["DataType"] = 28,["Data"] = 0}
	tReincarnation_DelStc[43] = {["EventType"] = 47,["DataType"] = 29,["Data"] = 0}
	tReincarnation_DelStc[44] = {["EventType"] = 47,["DataType"] = 30,["Data"] = 0}
	tReincarnation_DelStc[45] = {["EventType"] = 47,["DataType"] = 27,["Data"] = 0}
	tReincarnation_DelStc[46] = {["EventType"] = 46,["DataType"] = 22,["Data"] = 10}
	tReincarnation_DelStc[47] = {["EventType"] = 46,["DataType"] = 23,["Data"] = 0}
	tReincarnation_DelStc[48] = {["EventType"] = 46,["DataType"] = 24,["Data"] = 0}
	tReincarnation_DelStc[49] = {["EventType"] = 46,["DataType"] = 25,["Data"] = 0}
	tReincarnation_DelStc[50] = {["EventType"] = 46,["DataType"] = 26,["Data"] = 0}
	tReincarnation_DelStc[51] = {["EventType"] = 46,["DataType"] = 27,["Data"] = 0}
	tReincarnation_DelStc[52] = {["EventType"] = 46,["DataType"] = 28,["Data"] = 0}
	tReincarnation_DelStc[53] = {["EventType"] = 46,["DataType"] = 29,["Data"] = 0}
	tReincarnation_DelStc[54] = {["EventType"] = 47,["DataType"] = 15,["Data"] = 0}
	tReincarnation_DelStc[55] = {["EventType"] = 47,["DataType"] = 16,["Data"] = 0}
	tReincarnation_DelStc[56] = {["EventType"] = 47,["DataType"] = 17,["Data"] = 0}
	tReincarnation_DelStc[57] = {["EventType"] = 47,["DataType"] = 19,["Data"] = 0}
	tReincarnation_DelStc[58] = {["EventType"] = 49,["DataType"] = 3,["Data"] = 20}
	tReincarnation_DelStc[59] = {["EventType"] = 49,["DataType"] = 2,["Data"] = 0}
	tReincarnation_DelStc[60] = {["EventType"] = 49,["DataType"] = 1,["Data"] = 0}
	tReincarnation_DelStc[61] = {["EventType"] = 48,["DataType"] = 10,["Data"] = 1}
	tReincarnation_DelStc[62] = {["EventType"] = 48,["DataType"] = 11,["Data"] = 0}
	tReincarnation_DelStc[63] = {["EventType"] = 48,["DataType"] = 12,["Data"] = 0}
	tReincarnation_DelStc[64] = {["EventType"] = 46,["DataType"] = 6,["Data"] = 10}
	tReincarnation_DelStc[65] = {["EventType"] = 41,["DataType"] = 12,["Data"] = 0}

-- 奖励部分
local tReincarnation_Reward = {}
	-- 快速炼制涅磐灵石配置
	tReincarnation_Reward["Nirvana"] = {}
	tReincarnation_Reward["Nirvana"]["Ordinary"] = {}
	tReincarnation_Reward["Nirvana"]["Ordinary"]["LogId"] = 10002358
	tReincarnation_Reward["Nirvana"]["Ordinary"]["DeleteItem"] = {}
	tReincarnation_Reward["Nirvana"]["Ordinary"]["DeleteItem"][1] = {}
	tReincarnation_Reward["Nirvana"]["Ordinary"]["DeleteItem"][1]["Id"] = 721258
	tReincarnation_Reward["Nirvana"]["Ordinary"]["RewardItem"] = {}
	tReincarnation_Reward["Nirvana"]["Ordinary"]["RewardItem"][1] = {}
	tReincarnation_Reward["Nirvana"]["Ordinary"]["RewardItem"][1]["Id"] = 721259
	tReincarnation_Reward["Nirvana"]["Ordinary"]["RewardItem"][1]["Attr"] = "0 1"
	tReincarnation_Reward["Nirvana"]["Ordinary"]["RewardEffect"] = {}
	tReincarnation_Reward["Nirvana"]["Ordinary"]["RewardEffect"]["SzObj"] = "self"
	tReincarnation_Reward["Nirvana"]["Ordinary"]["RewardEffect"]["Effect"] = "angelwing"
	tReincarnation_Reward["Nirvana"]["Gift"] = {}
	tReincarnation_Reward["Nirvana"]["Gift"]["LogId"] = 10002358
	tReincarnation_Reward["Nirvana"]["Gift"]["DeleteItem"] = {}
	tReincarnation_Reward["Nirvana"]["Gift"]["DeleteItem"][1] = {}
	tReincarnation_Reward["Nirvana"]["Gift"]["DeleteItem"][1]["Id"] = 3005329
	tReincarnation_Reward["Nirvana"]["Gift"]["RewardItem"] = {}
	tReincarnation_Reward["Nirvana"]["Gift"]["RewardItem"][1] = {}
	tReincarnation_Reward["Nirvana"]["Gift"]["RewardItem"][1]["Id"] = 721259
	tReincarnation_Reward["Nirvana"]["Gift"]["RewardItem"][1]["Attr"] = "0 1 3"
	tReincarnation_Reward["Nirvana"]["Gift"]["RewardEffect"] = {}
	tReincarnation_Reward["Nirvana"]["Gift"]["RewardEffect"]["SzObj"] = "self"
	tReincarnation_Reward["Nirvana"]["Gift"]["RewardEffect"]["Effect"] = "angelwing"

	-- 正常炼制涅磐灵石配置
	tReincarnation_Reward["Normal"] = {}
	tReincarnation_Reward["Normal"]["Ordinary"] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["LogId"] = 10002358
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][1] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][1]["Id"] = 721258
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][2] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][2]["Id"] = 700001
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][3] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][3]["Id"] = 700011
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][4] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][4]["Id"] = 700021
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][5] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][5]["Id"] = 700031
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][6] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][6]["Id"] = 700041
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][7] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][7]["Id"] = 700051
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][8] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["DeleteItem"][8]["Id"] = 700061
	tReincarnation_Reward["Normal"]["Ordinary"]["RewardItem"] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["RewardItem"][1] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["RewardItem"][1]["Id"] = 721259
	tReincarnation_Reward["Normal"]["Ordinary"]["RewardItem"][1]["Attr"] = "0 1"
	tReincarnation_Reward["Normal"]["Ordinary"]["RewardEffect"] = {}
	tReincarnation_Reward["Normal"]["Ordinary"]["RewardEffect"]["SzObj"] = "self"
	tReincarnation_Reward["Normal"]["Ordinary"]["RewardEffect"]["Effect"] = "angelwing"

	tReincarnation_Reward["Normal"]["Gift"] = {}
	tReincarnation_Reward["Normal"]["Gift"]["LogId"] = 10002358
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"] = {}
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][1] = {}
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][1]["Id"] = 3005329
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][2] = {}
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][2]["Id"] = 700001
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][3] = {}
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][3]["Id"] = 700011
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][4] = {}
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][4]["Id"] = 700021
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][5] = {}
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][5]["Id"] = 700031
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][6] = {}
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][6]["Id"] = 700041
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][7] = {}
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][7]["Id"] = 700051
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][8] = {}
	tReincarnation_Reward["Normal"]["Gift"]["DeleteItem"][8]["Id"] = 700061
	tReincarnation_Reward["Normal"]["Gift"]["RewardItem"] = {}
	tReincarnation_Reward["Normal"]["Gift"]["RewardItem"][1] = {}
	tReincarnation_Reward["Normal"]["Gift"]["RewardItem"][1]["Id"] = 721259
	tReincarnation_Reward["Normal"]["Gift"]["RewardItem"][1]["Attr"] = "0 1 3"
	tReincarnation_Reward["Normal"]["Gift"]["RewardEffect"] = {}
	tReincarnation_Reward["Normal"]["Gift"]["RewardEffect"]["SzObj"] = "self"
	tReincarnation_Reward["Normal"]["Gift"]["RewardEffect"]["Effect"] = "angelwing"

	-- 获得优质宝石
	tReincarnation_Reward["RewardGemstone"] = {}
	-- 优质凤吟
	tReincarnation_Reward["RewardGemstone"][700003] = {}
	tReincarnation_Reward["RewardGemstone"][700003]["LogId"] = 10002358
	tReincarnation_Reward["RewardGemstone"][700003]["RewardItem"] = {}
	tReincarnation_Reward["RewardGemstone"][700003]["RewardItem"][1] = {}
	tReincarnation_Reward["RewardGemstone"][700003]["RewardItem"][1]["Id"] = 700003
	tReincarnation_Reward["RewardGemstone"][700003]["RewardItem"][1]["Attr"] = "0 1"

	-- 优质龙恨
	tReincarnation_Reward["RewardGemstone"][700013] = {}
	tReincarnation_Reward["RewardGemstone"][700013]["LogId"] = 10002358
	tReincarnation_Reward["RewardGemstone"][700013]["RewardItem"] = {}
	tReincarnation_Reward["RewardGemstone"][700013]["RewardItem"][1] = {}
	tReincarnation_Reward["RewardGemstone"][700013]["RewardItem"][1]["Id"] = 700013
	tReincarnation_Reward["RewardGemstone"][700013]["RewardItem"][1]["Attr"] = "0 1"

	-- 优质惊鸿
	tReincarnation_Reward["RewardGemstone"][700023] = {}
	tReincarnation_Reward["RewardGemstone"][700023]["LogId"] = 10002358
	tReincarnation_Reward["RewardGemstone"][700023]["RewardItem"] = {}
	tReincarnation_Reward["RewardGemstone"][700023]["RewardItem"][1] = {}
	tReincarnation_Reward["RewardGemstone"][700023]["RewardItem"][1]["Id"] = 700023
	tReincarnation_Reward["RewardGemstone"][700023]["RewardItem"][1]["Attr"] = "0 1"

	-- 优质青虹
	tReincarnation_Reward["RewardGemstone"][700033] = {}
	tReincarnation_Reward["RewardGemstone"][700033]["LogId"] = 10002358
	tReincarnation_Reward["RewardGemstone"][700033]["RewardItem"] = {}
	tReincarnation_Reward["RewardGemstone"][700033]["RewardItem"][1] = {}
	tReincarnation_Reward["RewardGemstone"][700033]["RewardItem"][1]["Id"] = 700033
	tReincarnation_Reward["RewardGemstone"][700033]["RewardItem"][1]["Attr"] = "0 1"

	-- 优质金麟
	tReincarnation_Reward["RewardGemstone"][700043] = {}
	tReincarnation_Reward["RewardGemstone"][700043]["LogId"] = 10002358
	tReincarnation_Reward["RewardGemstone"][700043]["RewardItem"] = {}
	tReincarnation_Reward["RewardGemstone"][700043]["RewardItem"][1] = {}
	tReincarnation_Reward["RewardGemstone"][700043]["RewardItem"][1]["Id"] = 700043
	tReincarnation_Reward["RewardGemstone"][700043]["RewardItem"][1]["Attr"] = "0 1"

	-- 优质紫霞
	tReincarnation_Reward["RewardGemstone"][700053] = {}
	tReincarnation_Reward["RewardGemstone"][700053]["LogId"] = 10002358
	tReincarnation_Reward["RewardGemstone"][700053]["RewardItem"] = {}
	tReincarnation_Reward["RewardGemstone"][700053]["RewardItem"][1] = {}
	tReincarnation_Reward["RewardGemstone"][700053]["RewardItem"][1]["Id"] = 700053
	tReincarnation_Reward["RewardGemstone"][700053]["RewardItem"][1]["Attr"] = "0 1"

	-- 优质明月
	tReincarnation_Reward["RewardGemstone"][700063] = {}
	tReincarnation_Reward["RewardGemstone"][700063]["LogId"] = 10002358
	tReincarnation_Reward["RewardGemstone"][700063]["RewardItem"] = {}
	tReincarnation_Reward["RewardGemstone"][700063]["RewardItem"][1] = {}
	tReincarnation_Reward["RewardGemstone"][700063]["RewardItem"][1]["Id"] = 700063
	tReincarnation_Reward["RewardGemstone"][700063]["RewardItem"][1]["Attr"] = "0 1"

	-- 奋斗服额外的宝石礼包
	tReincarnation_Reward["StrugglingSuit"] = {}
	tReincarnation_Reward["StrugglingSuit"]["LogId"] = 10002358
	tReincarnation_Reward["StrugglingSuit"]["RewardItem"] = {}
	tReincarnation_Reward["StrugglingSuit"]["RewardItem"][1] = {}
	tReincarnation_Reward["StrugglingSuit"]["RewardItem"][1]["Id"] = 3307815
	tReincarnation_Reward["StrugglingSuit"]["RewardItem"][1]["Attr"] = "0 1"

-- 老的几个职业特殊玩法
local tReincarnation_Special = {}
	-- 当前老职业互转
	tReincarnation_Special["Pro"] = {15,25,45,135,145}
	-- 勇士职业
	tReincarnation_Special[11] = {}
	tReincarnation_Special[11]["LogId"] = 10002358
	tReincarnation_Special[11]["RewardItem"] = {}
	tReincarnation_Special[11]["RewardItem"][1] = {}
	tReincarnation_Special[11]["RewardItem"][1]["Id"] = 410077
	tReincarnation_Special[11]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 0 0 0 0 0 0 200"
	-- 战士职业
	tReincarnation_Special[21] = {}
	tReincarnation_Special[21]["LogId"] = 10002358
	tReincarnation_Special[21]["RewardItem"] = {}
	tReincarnation_Special[21]["RewardItem"][1] = {}
	tReincarnation_Special[21]["RewardItem"][1]["Id"] = 410077
	tReincarnation_Special[21]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 0 0 0 0 0 0 200"
	-- 弓手职业
	tReincarnation_Special[41] = {}
	tReincarnation_Special[41]["LogId"] = 10002358
	tReincarnation_Special[41]["RewardItem"] = {}
	tReincarnation_Special[41]["RewardItem"][1] = {}
	tReincarnation_Special[41]["RewardItem"][1]["Id"] = 500067
	tReincarnation_Special[41]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 0 0 0 0 0 0 203"
	-- 水道职业
	tReincarnation_Special[132] = {}
	tReincarnation_Special[132]["LogId"] = 10002358
	tReincarnation_Special[132]["RewardItem"] = {}
	tReincarnation_Special[132]["RewardItem"][1] = {}
	tReincarnation_Special[132]["RewardItem"][1]["Id"] = 421077
	tReincarnation_Special[132]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 0 0 0 0 0 0 202"
	-- 火道职业
	tReincarnation_Special[142] = {}
	tReincarnation_Special[142]["LogId"] = 10002358
	tReincarnation_Special[142]["RewardItem"] = {}
	tReincarnation_Special[142]["RewardItem"][1] = {}
	tReincarnation_Special[142]["RewardItem"][1]["Id"] = 421077
	tReincarnation_Special[142]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 0 0 0 0 0 0 201"

-- 储存玩家信息
local tReincarnation_UserInfo = {}

-----------------------------------------------------------------------逻辑部分-----------------------------------------------------
-- 设置玩家的转世、等级、职业称号信息
function Reincarnation_SetUserInfo(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nLev = Get_UserLevel(nUserId)
	local nPro = Get_UserProfession(nUserId)
	local nMetempsychosis = Get_UserMetempsychosis(nUserId)

	tReincarnation_UserInfo[nUserId] = {}
	tReincarnation_UserInfo[nUserId]["Lev"] = nLev
	tReincarnation_UserInfo[nUserId]["Pro"] = nPro
	tReincarnation_UserInfo[nUserId]["Metempsychosis"] = nMetempsychosis
end

-- 设置玩家的选择(1表示普通转世，2表示神佑转世)
function Reincarnation_SetChoose(nChoose,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)

	tReincarnation_UserInfo[nUserId]["Choose"] = nChoose
end

-- 设置玩家选择的转世职业
function Reincarnation_SetChoosePro(nChoose,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)

	tReincarnation_UserInfo[nUserId]["ChoosePro"] = nChoose
end

-- 设置玩家现在进行的是一转还是二转(1表示一转，2表示二转)
function Reincarnation_SetReincarnat(nReincarnat,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)

	tReincarnation_UserInfo[nUserId]["Reincarnat"] = nReincarnat
end

-- 获取玩家的转世、等级、职业称号信息
function Reincarnation_GetUserInfo(nUserId)
	if tReincarnation_UserInfo[nUserId] == nil then
		Reincarnation_SetUserInfo(nUserId)
	end

	return tReincarnation_UserInfo[nUserId]
end

-- 获取玩家转世等级
function Reincarnation_GetMetempsychosis(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)
	return tUserInfo["Metempsychosis"]
end

-- 获取玩家选择转世职业
function Reincarnation_GetChoosePro(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)

	return tUserInfo["ChoosePro"]
end

-- 获取玩家进行的一转还是二转
function Reincarnation_GetReincarnat(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)

	return tUserInfo["Reincarnat"]
end

-- 获取玩家选择的是宝石还是神佑(1表示普通宝石转世，2表示神佑转世)
function Reincarnation_GetChoose(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)

	return tUserInfo["Choose"]
end

-- 获取玩家外套检测类型
function Reincarnation_GetCoat(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nPro = Reincarnation_GetPro(nUserId)

	return tReincarnation_Reincarnat["Equip"][nPro]["Coat"]
end

-- 获取玩家职业
function Reincarnation_GetPro(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)
	return tUserInfo["Pro"]
end

-- 获取玩家等级
function Reincarnation_GetLev(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)
	return tUserInfo["Lev"]
end

-- 获取stc掩码值
function Reincarnation_GetStc(sIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tReincarnation_Stc[sIndex]["EventType"]
	local nType = tReincarnation_Stc[sIndex]["DataType"]

	if nEvent == nil or nType == nil then
		return 0
	end

	return Get_UserStatisticValue(nEvent,nType,nUserId)
end

-- 获取玩家史诗武器检测类型
function Reincarnation_GetEpic(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)
	local nPro = tUserInfo["Pro"]
	
	return tReincarnation_Reincarnat["Equip"][nPro]["Epic"]
end

-- 检查玩家转世等级
function Reincarnation_ChkMetempsychosis(nMetempsychosis,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nUserMetempsychosis = Reincarnation_GetMetempsychosis(nUserId)

	return nUserMetempsychosis == nMetempsychosis
end

-- 检查玩家等级
function Reincarnation_ChkLev(nLev,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)
	return tUserInfo["Lev"] >= nLev
end

-- 检查玩家职称
function Reincarnation_ChkPro(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)
	local nPro = tUserInfo["Pro"]

	if tReincarnation_Constant["FirstReincarnat"][nPro] == nil then
		return false
	end

	return true
end

-- 检测玩家身上是否有净尘纤水
function Reincarnation_ChkCleanWater()
	if Item_ChkItem(tReincarnation_Constant["Nirvana"]["Ordinary"]) then
		return tReincarnation_Constant["Nirvana"]["Ordinary"]
	elseif Item_ChkItem(tReincarnation_Constant["Nirvana"]["Gift"]) then
		return tReincarnation_Constant["Nirvana"]["Gift"]
	end
	
	return 0
end

-- 检测是否有涅槃灵石
function Reincarnation_ChkCelestialStone(nNpcId)
	if not Item_ChkItem(tReincarnation_Constant["CelestialStone"]) then
		-- 检测是否拥有净尘纤水
		local nItemId = Reincarnation_ChkCleanWater()
		
		if nItemId == 0 then
			LinkNpcGossipFunc_New(nNpcId,"5-6")
			return
		end

		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return false
	end

	return true
end

-- 检测玩家职业称号和等级
function Reincarnation_ChkProAndLev(nNpcId,sNoPro,sIndex,sNoLev,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local tUserInfo = Reincarnation_GetUserInfo(nUserId)
	local nPro = tUserInfo["Pro"]

	-- 检测职称
	if tReincarnation_Constant["FirstReincarnat"][nPro] == nil then
		LinkNpcGossipFunc_New(nNpcId,sNoPro)
		return false
	end

	local nLev = tReincarnation_Constant[sIndex][nPro]

	-- 检测玩家等级
	if tUserInfo["Lev"] < nLev then
		LinkNpcGossipFunc_New(nNpcId,sNoLev)
		return false
	end

	return true
end

-- 检查玩家外套
function Reincarnation_ChkCoat(nNpcId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()

	if not Reincarnation_ChkPro(nUserId) then
		return false
	end

	local nCoat = Reincarnation_GetCoat(nUserId)
	if User_EquipCheck(3,nCoat,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"7-4")
		return false
	end

	return true
end

-- 检测是否是老职业互转
function Reincarnation_ChkOldOccupat(nNowPro,nChoosePro)
	if tReincarnation_Special[nChoosePro] == nil then
		return false
	end

	for i,v in pairs (tReincarnation_Special["Pro"]) do
		if v == nNowPro then
			return true
		end
	end

	return false
end

-- 史诗武器检测
function Reincarnation_ChkEpic(nNpcId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEpic = Reincarnation_GetEpic(nUserId)

	if nEpic == nil then
		return true
	end

	-- 判断史诗武器配置的是表还是数字
	local nMainWeapon = 0
	local nSecondaryWeapon = 0

	if type(nEpic) == "table" then
		nMainWeapon = nEpic[4]
		nSecondaryWeapon = nEpic[5]
	else
		nMainWeapon = nEpic
		nSecondaryWeapon = nEpic
	end

	local nReincarnat = Reincarnation_GetReincarnat(nUserId)
	local nChoose = Reincarnation_GetChoose(nUserId)

	-- 检测玩家身上是否带有特殊装备
	if User_EquipCheck(5,nSecondaryWeapon,nUserId) then
		if not User_UnequipItem(5,nUserId) then
			return false
		end
		if not User_UnequipItem(4,nUserId) then
			return false
		end
	elseif User_EquipCheck(4,nMainWeapon,nUserId) then
		if not User_UnequipItem(4,nUserId) then
			return false
		end
	end

	return true
end

-- 删除任务
function Reincarnation_DelTask(nUserId)
	for i,v in pairs (tReincarnation_DelTaskId) do
		if Task_ChkTaskDetail(v) then
			Task_SetTaskDetailCompleteFlag(v,2,nUserId)
			Task_DelTaskDetail(v,nUserId)
		end
	end
end

-- stc掩码置零
function Reincarnation_DelStc(nUserId)
	for i,v in pairs(tReincarnation_DelStc) do
		local nEvent = v["EventType"]
		local nType = v["DataType"]
		local nData = v["Data"]

		Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	end
end

-- 轮回转世的任务置完成
function Reincarnation_SetTaskCompleteFlag(nReincarnat,nUserId)
	local nTaskId = tReincarnation_Constant["Turn"][nReincarnat]

	if Task_ChkTaskDetail(nTaskId) then
		Task_SetTaskDetailCompleteFlag(nTaskId,1)
	end
end

-- 转世时背包空间判断
function Reincarnation_ChkSpace(nNpcId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nSpace = tReincarnation_Constant["ReferenceSpace"]
	local nDelSpace = 0

	-- 判断是一转还是二转
	local nReincarnat = Reincarnation_GetReincarnat(nUserId)
	if nReincarnat == 1 then
		nDelSpace = 1
	end

	-- 判断是选择普通宝石还是神佑
	local nChoose = Reincarnation_GetChoose(nUserId)
	if nChoose == 1 then
		nSpace = nSpace + 1
		-- 判断是否是奋斗服
		-- if SpecialServer_ChkStrugglingSuit() then
			-- nSpace = nSpace + 1
		-- end
	end

	-- 判断是否是老职业
	local nChoosePro = Reincarnation_GetChoosePro(nUserId)
	local nPro = Reincarnation_GetPro(nUserId)
	if Reincarnation_ChkOldOccupat(nPro,nChoosePro) then
		nSpace = nSpace + 1
	end

	nSpace = nSpace - nDelSpace

	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		tNpcGossip[300500]["Text771"] = string.format(tReincarnation_Text[300500]["Text771"],nSpace)
		LinkNpcGossipFunc_New(nNpcId,"7-7")
		return false
	end

	return true
end

-- 转世时的二次确认判断
function Reincarnation_FirstConfirmat(nNpcId,sNoItem,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nReincarnat = Reincarnation_GetReincarnat(nUserId)

	-- 判断背包空间
	if not Reincarnation_ChkSpace(nNpcId,nUserId) then
		return false
	end

	-- 判断是否第一次转世
	if nReincarnat == 1 then
		-- 判断是有涅槃灵石
		if not Item_ChkItem(tReincarnation_Constant["CelestialStone"]) then
			LinkNpcGossipFunc_New(nNpcId,sNoItem)
			return false
		end
	end

	-- 玩家装备检查
	if not Reincarnation_ChkCoat(nNpcId,nUserId) then
		return false
	end

	-- 史诗武器的判断
	if not Reincarnation_ChkEpic(nNpcId,nUserId) then
		return false
	end

	return true
end

-- 玩家转世
function Reincarnation_Rebirth(nUserId)
	local nSex = Get_UserSex(nUserId)
	local nLook = 8
	local nProf = Reincarnation_GetChoosePro(nUserId)
	local nMetepsycosis = Reincarnation_GetReincarnat(nUserId)

	if nSex == 2 then
		nLook = 7
	end

	nProf = CommonFunc_OldProChangeNewPro(nProf)
	return User_Rebirth(nProf,nLook,nMetepsycosis,nUserId)
end

-- 继承原有职业的部分技能
function Reincarnation_Inherit(nUserId)
	local nChoosePro = Reincarnation_GetChoosePro(nUserId)
	local nPro = Reincarnation_GetPro(nUserId)
	local nReincarnat = Reincarnation_GetReincarnat(nUserId)
	
	if tReincarnation_Skill[nReincarnat] == nil then
		return true
	end

	-- 判断该职业是否有需要继承技能的配置
	if tReincarnation_Skill[nReincarnat][nPro] == nil then
		return true
	end

	-- 判断选择要转世的职业是否有需要继承技能的配置
	if tReincarnation_Skill[nReincarnat][nPro][nChoosePro] == nil then
		return true
	end

	for i,v in pairs(tReincarnation_Skill[nReincarnat][nPro][nChoosePro]) do
		if not Magic_ChkType(v,nUserId) then
			Magic_Learn(v,nUserId)
		end
	end

	return true
end

-- 添加成就
function Reincarnation_Achievement(nReincarnat,nUserId)
	local nAchPos = tReincarnation_Constant["Achievement"][nReincarnat]
	local sLog = tReincarnation_Constant["Achievement"]["LOG"][nReincarnat]
	if not User_ChkAchByAchPosition(nAchPos,nUserId) then
		-- 添加成就
		if User_AddAchByAchPosition(nAchPos,nUserId) then
			Sys_SaveActionFuncLog(sLog,nUserId)
		end
	end
	
end

-- 装备添加神佑
function Reincarnation_AddGod(nUserId)
	local nData = tReincarnation_Constant["GodBless"]["Data"]
	local nIndex = tReincarnation_Constant["GodBless"]["Index"]

	-- 判断是否有符合神佑的装备
	if not User_EquipSelect(0,nData,"==",0,nIndex,nUserId) then
		return
	end

	-- 水道120级以下特殊判断
	local nPro = Reincarnation_GetPro(nUserId)
	local nLev = Reincarnation_GetLev(nUserId)
	if (nPro == tReincarnation_Constant["GodBless"]["Special"]["Pro"]) and nLev < tReincarnation_Constant["GodBless"]["Special"]["Lev"] then
		local bHave =false

		for i,v in pairs(tReincarnation_Constant["GodBless"]["Special"]["EquipPos"]) do
			if User_EquipSelect(v,nData,"==",0,nIndex,nUserId) then
				bHave = true
				break
			end
		end

		if not bHave then
			return
		end
	end

	-- 添加神佑
	local nMark =  Get_UserVarData(nIndex)
	local nItemId = Get_EquipIDByPos(nMark)
	Item_SetItemInt(nItemId,G_ITEM_ReduceDmg,1,1)
end

-------------------------------------------------------------------------------------------逻辑部分-------------------------------------------------------
-- 正常炼制涅磐灵石
function Reincarnation_Normal(nNpcId,sNoCleanWater,sNoItem,nAwardItem)
	local nItemId = Reincarnation_ChkCleanWater()

	-- 判断玩家身上是否有净尘纤水
	if nItemId == 0 then
		-- 无净尘纤水
		LinkNpcGossipFunc_New(nNpcId,sNoCleanWater)
		return
	end

	if nItemId == tReincarnation_Constant["Nirvana"]["Ordinary"] then
		Reincarnation_RewardNirvana(nNpcId,"Ordinary",sNoItem,nAwardItem)
		return
	end

	Reincarnation_RewardNirvana(nNpcId,"Gift",sNoItem,nAwardItem)
end

-- 正常炼制获得涅磐灵石
function Reincarnation_RewardNirvana(nNpcId,sIndex,sNoItem,nAwardItem)
	-- 给奖励
	local nFlag,sAward = RewardTemplate_UseItemAndMsg(tReincarnation_Reward["Normal"][sIndex])

	-- 没有七种宝石
	if not nFlag then
		LinkNpcGossipFunc_New(nNpcId,sNoItem)
		return
	end

	-- 出提示
	local sAwardItem = tReincarnation_Constant["Award"][sIndex][nAwardItem]
	LinkNpcGossipFunc_New(nNpcId,sAwardItem)
end

-- 快速炼制涅磐灵石
function Reincarnation_Fast(nNpcId,sNoCleanWater,nAwardItem)
	local nEmoneyNum = tReincarnation_Constant["Nirvana"]["Emoney"]
	local nUserEmoney = Get_UserEMoney()

	-- 判断玩家身上天石数量
	if nUserEmoney < nEmoneyNum then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end

	local nItemId = Reincarnation_ChkCleanWater()

	-- 判断玩家身上是否有净尘纤水
	if nItemId == 0 then
		-- 无净尘纤水
		LinkNpcGossipFunc_New(nNpcId,sNoCleanWater)
		return
	end

	if nItemId == tReincarnation_Constant["Nirvana"]["Ordinary"] then
		Reincarnation_FastRewardNirvana(nNpcId,"Ordinary",nAwardItem)
		return
	end

	Reincarnation_FastRewardNirvana(nNpcId,"Gift",nAwardItem)
end

-- 快速炼制获得涅磐灵石
function Reincarnation_FastRewardNirvana(nNpcId,sIndex,nAwardItem) 
	-- 背包空间判断
	if not RewardTemplate_CheckSpace(tReincarnation_Reward["Nirvana"][sIndex]) then
		return
	end

	-- 删除天石
	if not User_AddEMoneyAndLog(-tReincarnation_Constant["Nirvana"]["Emoney"],tReincarnation_Constant["Nirvana"]["EmoneyLog"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end

	-- 给奖励
	RewardTemplate_UseItemAndMsg(tReincarnation_Reward["Nirvana"][sIndex])
	-- 出提示
	local sAwardItem = tReincarnation_Constant["Award"][sIndex][nAwardItem]
	LinkNpcGossipFunc_New(nNpcId,sAwardItem)
end

-- 前往水魔岛外岛。
function Reincarnation_TranGlobeIsland()
	local nMapId = tReincarnation_Constant["GlobeIsland"]["MapId"]
	local nPosX = tReincarnation_Constant["GlobeIsland"]["PosX"]
	local nPosY = tReincarnation_Constant["GlobeIsland"]["PosY"]

	if User_ChgMap(nMapId,nPosX,nPosY) then
		Sys_MsgBox(tReincarnation_Text["ChgMapGlobeIsland"])
	end
end

-- 龙珠洗点
function Reincarnation_DragonBallWashing(nNpcId)
	-- 判断是否转世了
	if Reincarnation_ChkMetempsychosis(0) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end

	-- 判断是否达到70级
	if not Reincarnation_ChkLev(tReincarnation_DragonBall["Lev"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end

	-- 判断玩家身上是否有10个龙珠
	if not Reincarnation_ChkDragonBall(nNpcId) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end

	-- 重新分配属性点
	if User_ResetPoint() then
		LinkNpcGossipFunc_New(nNpcId,"3-5")
	end
end

-- 检测玩家身上是否有10个龙珠
function Reincarnation_ChkDragonBall(nNpcId)
	local nUserId = Get_UserId()
	for i = 1,4 do
		local nItemId = tReincarnation_DragonBall[i]["DeleteItem"][1]["Id"]
		local nItemNum = tReincarnation_DragonBall[i]["DeleteItem"][1]["ItemNum"]

		if Item_ChkMulItem(nItemId,nItemId,nItemNum,1,0,nUserId) then
			if RewardTemplate_DelItem(tReincarnation_DragonBall[i],nUserId) then
				return true
			end
		end
	end

	return false
end

-- 特殊转世
function Reincarnation_Special(nNpcId)
	-- 判断玩家转世次数
	local nUserId = nNowUserId or Get_UserId()
	local nMetempsychosis = Reincarnation_GetMetempsychosis(nNowUserId)

	if nMetempsychosis < 2 then
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end

	-- 打开特殊转世的界面
	User_OpenDialog(tReincarnation_Constant["Special"])
end

-- 请送我去孽镜深渊。
function Reincarnation_Tran(nNpcId)
	local nRandom = math.random(1,8)
	local nMapId = tReincarnation_Constant["Tran"]["MapId"]
	local nPosX = tReincarnation_Constant["Tran"][nRandom][1]
	local nPosY = tReincarnation_Constant["Tran"][nRandom][2]

	User_ChgMap(nMapId,nPosX,nPosY)
end

-- 我愿转世重生
function Reincarnation_WishReincarnat(nNpcId)

	local nUserId = Get_UserId()

	-- 检查玩家是否达到最高职称和等级
	if not Reincarnation_ChkProAndLev(nNpcId,"5-2","FirstReincarnat","5-1",nUserId) then
		return
	end

	-- 无赠品服务器判断
	if SpecialServer_ChkNoGiftServer() then
		-- 背包空间判断
		if not Reincarnation_ChkSpace(nNpcId,nUserId) then
			return
		end

		-- 判断是有涅槃灵石
		if not Item_ChkItem(tReincarnation_Constant["CelestialStone"]) then
			LinkNpcGossipFunc_New(nNpcId,"6-1")
			return
		end

		Reincarnation_SetReincarnat(1,nUserId)
		LinkNpcGossipFunc_New(nNpcId,"8-1")
		return
	end

	-- 判断是有涅槃灵石
	if not Reincarnation_ChkCelestialStone(nNpcId) then
		return
	end

	-- 满足转世条件
	LinkNpcGossipFunc_New(nNpcId,"7-1")
end

-- 确定普通转世。/神佑转世
function Reincarnation_OrdinaryReincarnat(nNpcId,nChoose)
	local nUserId = Get_UserId()

	-- 必要的判断
	if not Reincarnation_FirstConfirmat(nNpcId,"6-1",nUserId) then
		return false
	end

	-- 检测玩家称号和等级
	if not Reincarnation_ChkProAndLev(nNpcId,"7-6","FirstReincarnat","7-5",nUserId) then
		return false
	end

	-- 设置选择普通转世
	Reincarnation_SetChoose(nChoose,nUserId)
	Reincarnation_SetReincarnat(1,nUserId)

	-- 一转水道等级判断
	if nChoose == 2 then
		local nPro = Reincarnation_GetPro(nUserId)

		-- 判断是否水道
		if nPro == tReincarnation_Constant["GodBless"]["Special"]["Pro"] then
			local nLev = Reincarnation_GetLev(nUserId)

			if nLev < tReincarnation_Constant["GodBless"]["Special"]["Lev"] then
				LinkNpcGossipFunc_New(nNpcId,"7-9")
				return
			end
		end
	end
	
	-- 出选择职业对白
	LinkNpcGossipFunc_New(nNpcId,"8-1")
end

-- 选择职业
function Reincarnation_ChoosePro(nNpcId,nChoose)
	local nPro = Reincarnation_GetPro()

	if tReincarnation_Text[300500]["Choose"][nPro] == nil then
		return
	end

	local sText = tReincarnation_Text[300500]["Choose"][nPro][nChoose]
	if type(sText) == "table" then
		local nSex = Get_UserSex()
		sText = tReincarnation_Text[300500]["Choose"][nPro][nChoose][nSex]
	end

	-- 设置玩家选择的转世职业
	Reincarnation_SetChoosePro(nChoose)

	-- 出相应的对白
	tNpcGossip[300500]["Text821"] = sText
	LinkNpcGossipFunc_New(nNpcId,"8-2")
end

-- 我愿意转世
function Reincarnation_WillingToReincarnate(nNpcId)
	local nReincarnat = Reincarnation_GetReincarnat()

	-- 判断进行的一转还是二转
	if nReincarnat == 2 then
		Reincarnation_Process(nNpcId)
		return
	end

	-- 判断是否无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		Reincarnation_Process(nNpcId)
		return
	end

	local nChoose = Reincarnation_GetChoose()

	-- 判断选择的是宝石还是神佑
	if nChoose == 1 then
		LinkNpcGossipFunc_New(nNpcId,"8-3")
	else
		LinkNpcGossipFunc_New(nNpcId,"7-8")
	end
end

-- 转世流程
function Reincarnation_Process(nNpcId,nChooseGem,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nReincarnat = Reincarnation_GetReincarnat(nUserId)
	local nChoose = Reincarnation_GetChoose(nUserId)

	-- 必要的判断
	if not Reincarnation_FirstConfirmat(nNpcId,"8-5",nUserId) then
		return false
	end

	-- 一转时删除涅槃灵石
	if nReincarnat == 1 then
		if not Item_DelItem(tReincarnation_Constant["CelestialStone"]) then
			return false
		end
	end

	-- 转世
	if not Reincarnation_Reincarnat() then
		return false
	end

	if nReincarnat == 1 and (not SpecialServer_ChkNoGiftServer()) then
		-- 判断选择宝石还是神佑
		if nChoose == 1 then
			RewardTemplate_UseItemAndMsg(tReincarnation_Reward["RewardGemstone"][nChooseGem])
			-- 奋斗服额外给一个宝石礼包
			-- if SpecialServer_ChkStrugglingSuit() then
				-- RewardTemplate_UseItemAndMsg(tReincarnation_Reward["StrugglingSuit"])
			-- end
		else
			Reincarnation_AddGod(nUserId)
		end
	end

	-- 老职业特殊玩法
	Reincarnation_OldPro(nReincarnat,nUserId)

	-- 转世后续掩码等处理
	Reincarnation_FirstReincarnat(nReincarnat,nUserId)
	
	--额外给奖励
	if nReincarnat == 2 then
		local nPro = Reincarnation_GetPro(nUserId)
		local nChoosePro = Reincarnation_GetChoosePro(nUserId)
		-- if nPro ~= 55 and nChoosePro == 51 then
		if nChoosePro == 51 then
			NinjaFinalCelebration_ZhuanZhiReward(nUserId)
		end 
	end 
end

-- 转世及技能处理
function Reincarnation_Reincarnat()
	local nUserId = Get_UserId()
	
	-- 玩家转世
	if not Reincarnation_Rebirth(nUserId) then
		return false
	end

	-- 转世技能处理
	if not User_RebirthSkill(nUserId) then
		return false
	end

	-- 继承原有职业的部分技能
	if not Reincarnation_Inherit(nUserId) then
		return false
	end

	-- 转世遗忘技能
	if not User_UnlearnSkill(nUserId) then
		return false
	end

	return true
end

-- 转世操作
function Reincarnation_FirstReincarnat(nReincarnat,nUserId)
	-- 播放光效
	User_EffectAdd("self","zf2-e128",nUserId)
	-- 放焰火
	Map_FireWorks(nUserId)

	-- 检测成就
	Reincarnation_Achievement(nReincarnat,nUserId)

	-- 转世公告
	local sText = string.format(tReincarnation_Text["Reincarnat"][nReincarnat],Get_UserName(nUserId))
	Sys_SystemBroadcast(sText)

	-- 置任务完成
	Reincarnation_SetTaskCompleteFlag(nReincarnat,nUserId)
	-- 删除片区任务及馈赠任务掩码
	Reincarnation_DelTask(nUserId)
	Reincarnation_DelStc(nUserId)
end

-- 炼制涅槃灵石
function Reincarnation_Refining(nNpcId)
	local nItemId = Reincarnation_ChkCleanWater()

	-- 判断玩家身上是否有净尘纤水
	if nItemId == 0 then
		-- 无净尘纤水
		LinkNpcGossipFunc_New(nNpcId,"6-4")
		return
	end

	LinkNpcGossipFunc_New(nNpcId,"6-3")
end

-- 我愿去见识一番
function Reincarnation_TwoTurnTask(nNpcId)
	local nUserId = Get_UserId()

	-- 判断玩家等级
	if not Reincarnation_ChkLev(tReincarnation_Constant["Tran"]["Lev"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"9-1")
		return
	end

	-- 判断职业称号
	if not Reincarnation_ChkPro(nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"9-2")
		return
	end

	-- 检测PK值
	local nPk = Get_UserPk(nUserId)

	if nPk >= tReincarnation_Constant["Tran"]["PK"] then
		User_TalkChannel2005(tReincarnation_Text["PK"],nUserId)
		return
	end

	-- 传送到孽镜深渊
	local nMapId = tReincarnation_Constant["Tran"]["MapId"]
	local nBoundX = tReincarnation_Constant["Tran"]["ChgMap"]["PosX"]
	local nBoundY = tReincarnation_Constant["Tran"]["ChgMap"]["PosY"]
	local nRange = tReincarnation_Constant["Tran"]["ChgMap"]["Range"]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,nRange,nRange,0,nUserId)
	User_TalkChannel2005(tReincarnation_Text["ChgMap"],nUserId)
end

-- 接二转对白
function Reincarnation_TwoTurnDialogue(nNpcId)
	local nUserId = Get_UserId()

	-- 判断玩家等级
	if not Reincarnation_ChkLev(tReincarnation_Constant["Tran"]["Lev"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"10-1")
		return
	end

	-- 判断玩家转世次数
	if not Reincarnation_ChkMetempsychosis(1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	-- 玩家装备检查
	if not Reincarnation_ChkCoat(nNpcId,nUserId) then
		return false
	end

	Reincarnation_SetReincarnat(2,nUserId)
	LinkNpcGossipFunc_New(nNpcId,"8-1")
end

-- 老职业特殊玩法
function Reincarnation_OldPro(nReincarnat,nUserId)
	local nChoosePro = Reincarnation_GetChoosePro(nUserId)
	local nPro = Reincarnation_GetPro(nUserId)

	-- 判断是否一转
	if nReincarnat ~= 1 then
		return
	end

	-- 判断是否老职业互转
	if not Reincarnation_ChkOldOccupat(nPro,nChoosePro) then
		return
	end

	RewardTemplate_UseItemAndMsg(tReincarnation_Special[nChoosePro])
end

-----------------------------------------------------------------npc模板-----------------------------------------------------------
-- 天机道长
tNpcFace[4298] = 7
tNpcGossip[300500] = tNpcGossip[300500] or DefaultNpc:new{}
tNpcGossip[300500]["OptionHidden"] = 1
tNpcGossip[300500]["DialogueText"] = tReincarnation_Text[300500]

-- 未转
tNpcGossip[300500]["Text1-1"] = {111,112,113,114}
tNpcGossip[300500]["tOption1-1"] = {111,112,113}
tNpcGossip[300500]["ChkFunc1-1"] = function ()
	Reincarnation_SetUserInfo()
	return Reincarnation_ChkMetempsychosis(0)
end

-- 我愿转世重生
tNpcGossip[300500]["OptionFunc111"] = "Reincarnation_WishReincarnat</N>300500"
-- 我想炼制涅槃灵石。
tNpcGossip[300500]["OptionPoint112"] = "2-1"

-- 一转已完成二转任务
tNpcGossip[300500]["Text1-2"] = {121,122,123,124}
tNpcGossip[300500]["tOption1-2"] = {121,122,112,113}
tNpcGossip[300500]["ChkFunc1-2"] = function ()
	if not Reincarnation_ChkMetempsychosis(1) then
		return false
	end
	
	local nUserData = Reincarnation_GetStc("TwoTurn")
	local nData = tReincarnation_Stc["TwoTurn"]["Data"]
	
	if nUserData == nData then
		return true
	end
	
	local nTaskId = tReincarnation_Constant["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId) then
		return false
	end
	
	if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) then
		return false
	end
	
	return true
end

-- 我愿二度转世重生。
tNpcGossip[300500]["OptionFunc121"] = "Reincarnation_TwoTurnDialogue</N>300500"
-- 我想重新分配属性点。
tNpcGossip[300500]["OptionPoint122"] = "3-1"

-- 一转未完成二转任务
tNpcGossip[300500]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[300500]["tOption1-3"] = {131,132,122,112,133}
tNpcGossip[300500]["ChkFunc1-3"] = function ()
	-- 判断是否无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[300500]["Text134"] = tReincarnation_Text[300500]["Text134NoGift"]
	end
	
	return Reincarnation_ChkMetempsychosis(1)
end

-- 我愿去见识一番。
tNpcGossip[300500]["OptionFunc131"] = "Reincarnation_TwoTurnTask</N>300500"
tNpcGossip[300500]["OptionChkFunc131"] = function ()
	if SpecialServer_ChkNoGiftServer() then
		return false
	end
	
	return true
end

-- 查看二转流程。
tNpcGossip[300500]["OptionFunc132"] = "NoGiftMonster_TwoRebirth"
tNpcGossip[300500]["OptionChkFunc132"] = function ()
	if SpecialServer_ChkNoGiftServer() then
		return true
	end
	
	return false
end

-- 二转以上
tNpcGossip[300500]["Text1-4"] = {141,142,143,144}
tNpcGossip[300500]["tOption1-4"] = {141,122,142,112,143}

-- 我想进行特别转世。
tNpcGossip[300500]["OptionPoint141"] = "4-1"
-- 请送我去孽镜深渊。
tNpcGossip[300500]["OptionFunc142"] = "Reincarnation_Tran</N>300500"

-- 我想炼制涅槃灵石。
tNpcGossip[300500]["Text2-1"] = {211,212}
tNpcGossip[300500]["tOption2-1"] = {211,212}
tNpcGossip[300500]["OptionFunc211"] = "Reincarnation_Normal</N>300500</S>2-3</S>2-7</N>1"
tNpcGossip[300500]["OptionPoint212"] = "2-2"

-- 快速炼制涅磐灵石。（5点天石）
tNpcGossip[300500]["Text2-2"] = {221,222}
tNpcGossip[300500]["tOption2-2"] = {221,222}
tNpcGossip[300500]["OptionFunc221"] = "Reincarnation_Fast</N>300500</S>2-3</N>1"

-- 无净尘纤水
tNpcGossip[300500]["Text2-3"] = {231}
tNpcGossip[300500]["tOption2-3"] = {231}

-- 天石不足
tNpcGossip[300500]["Text2-4"] = {241}
tNpcGossip[300500]["tOption2-4"] = {241}

-- 获得涅磐灵石
tNpcGossip[300500]["Text2-5"] = {251}
tNpcGossip[300500]["tOption2-5"] = {251}

-- 获得涅磐灵石(赠)
tNpcGossip[300500]["Text2-6"] = {261}
tNpcGossip[300500]["tOption2-6"] = {261}

-- 无七种宝石
tNpcGossip[300500]["Text2-7"] = {271}
tNpcGossip[300500]["tOption2-7"] = {271}

-- 我想重新分配属性点。
tNpcGossip[300500]["Text3-1"] = {311}
tNpcGossip[300500]["tOption3-1"] = {311,312}
tNpcGossip[300500]["OptionFunc311"] = "Reincarnation_DragonBallWashing</N>300500"

-- 还未转世
tNpcGossip[300500]["Text3-2"] = {321}
tNpcGossip[300500]["tOption3-2"] = {321}

-- 还未70级
tNpcGossip[300500]["Text3-3"] = {331}
tNpcGossip[300500]["tOption3-3"] = {331}

-- 身上没有10颗龙珠
tNpcGossip[300500]["Text3-4"] = {341}
tNpcGossip[300500]["tOption3-4"] = {341}

-- 分配成功
tNpcGossip[300500]["Text3-5"] = {351}
tNpcGossip[300500]["tOption3-5"] = {351}

-- 特殊转世
tNpcGossip[300500]["Text4-1"] = {411,412,413}
tNpcGossip[300500]["tOption4-1"] = {411,412}
-- 我愿意转世。
tNpcGossip[300500]["OptionPoint411"] = "4-3"
-- 如何获得乾坤九转神露。
tNpcGossip[300500]["OptionPoint412"] = "4-2"

tNpcGossip[300500]["Text4-2"] = {421}
tNpcGossip[300500]["tOption4-2"] = {421}

tNpcGossip[300500]["Text4-3"] = {431,432}
tNpcGossip[300500]["tOption4-3"] = {431,432}
tNpcGossip[300500]["OptionFunc431"] = "Reincarnation_Special</N>300500"

tNpcGossip[300500]["Text4-4"] = {441}
tNpcGossip[300500]["tOption4-4"] = {441}

-- 一转等级不满足
tNpcGossip[300500]["Text5-1"] = {511}
tNpcGossip[300500]["tOption5-1"] = {511}

-- 一转职业称号不满足
tNpcGossip[300500]["Text5-2"] = {521}
tNpcGossip[300500]["tOption5-2"] = {521}

-- 无涅槃灵石，有净尘纤水
tNpcGossip[300500]["Text5-3"] = {531,532,533}
tNpcGossip[300500]["tOption5-3"] = {531,532}
tNpcGossip[300500]["OptionFunc531"] = "Reincarnation_Normal</N>300500</S>5-6</S>5-5</N>2"
tNpcGossip[300500]["OptionPoint532"] = "5-4"

-- 快速炼制涅槃灵石。（5天石）
tNpcGossip[300500]["Text5-4"] = {541}
tNpcGossip[300500]["tOption5-4"] = {541,542}
tNpcGossip[300500]["OptionFunc541"] = "Reincarnation_Fast</N>300500</S>5-6</N>2"

-- 无七种宝石
tNpcGossip[300500]["Text5-5"] = {551,552}
tNpcGossip[300500]["tOption5-5"] = {551}

-- 无涅槃灵石，无净尘纤水
tNpcGossip[300500]["Text5-6"] = {561,562,563}
tNpcGossip[300500]["tOption5-6"] = {561,562}
tNpcGossip[300500]["OptionFunc562"] = "Reincarnation_TranGlobeIsland"

-- 获得涅磐灵石
tNpcGossip[300500]["Text5-7"] = {571}
tNpcGossip[300500]["tOption5-7"] = {571}
tNpcGossip[300500]["OptionPoint571"] = "7-1"

-- 获得涅磐灵石(赠)
tNpcGossip[300500]["Text5-8"] = {581}
tNpcGossip[300500]["tOption5-8"] = {581}
tNpcGossip[300500]["OptionPoint581"] = "7-1"

-- 无涅槃灵石不能转世
tNpcGossip[300500]["Text6-1"] = {611}
tNpcGossip[300500]["tOption6-1"] = {611,612}
tNpcGossip[300500]["OptionPoint611"] = "6-2"

-- 如何获得涅槃灵石？
tNpcGossip[300500]["Text6-2"] = {621,622,623}
tNpcGossip[300500]["tOption6-2"] = {621,562}
tNpcGossip[300500]["OptionFunc621"] = "Reincarnation_Refining</N>300500"

-- 炼制涅槃灵石。
tNpcGossip[300500]["Text6-3"] = {631,632}
tNpcGossip[300500]["tOption6-3"] = {631,632}
tNpcGossip[300500]["OptionFunc631"] = "Reincarnation_Normal</N>300500</S>5-6</S>5-5</N>2"
tNpcGossip[300500]["OptionPoint632"] = "6-5"

-- 无净尘纤水
tNpcGossip[300500]["Text6-4"] = {641,642}
tNpcGossip[300500]["tOption6-4"] = {641}

-- 快速炼制涅磐灵石。（5点天石）
tNpcGossip[300500]["Text6-5"] = {651,652}
tNpcGossip[300500]["tOption6-5"] = {651,652}
tNpcGossip[300500]["OptionFunc651"] = "Reincarnation_Fast</N>300500</S>5-6</N>2"

-- 满足转世条件，选择神佑或者宝石
tNpcGossip[300500]["Text7-1"] = {711,712,713}
tNpcGossip[300500]["tOption7-1"] = {711,712,713}
tNpcGossip[300500]["OptionPoint711"] = "7-3"
tNpcGossip[300500]["OptionPoint712"] = "7-2"

-- 选择优质宝石
tNpcGossip[300500]["Text7-2"] = {721,722,723}
tNpcGossip[300500]["tOption7-2"] = {721,713}
tNpcGossip[300500]["OptionFunc721"] = "Reincarnation_OrdinaryReincarnat</N>300500</N>1"

-- 选择神佑
tNpcGossip[300500]["Text7-3"] = {731,732,733}
tNpcGossip[300500]["tOption7-3"] = {731,713}
tNpcGossip[300500]["OptionFunc731"] = "Reincarnation_OrdinaryReincarnat</N>300500</N>2"

tNpcGossip[300500]["Text7-4"] = {741}
tNpcGossip[300500]["tOption7-4"] = {741}

-- 等级未满足
tNpcGossip[300500]["Text7-5"] = {751}
tNpcGossip[300500]["tOption7-5"] = {751}

-- 职称未满足
tNpcGossip[300500]["Text7-6"] = {761}
tNpcGossip[300500]["tOption7-6"] = {761}

-- 背包空间不足
tNpcGossip[300500]["Text7-7"] = {771}
tNpcGossip[300500]["tOption7-7"] = {771}

-- 神佑的二次确认
tNpcGossip[300500]["Text7-8"] = {781,782}
tNpcGossip[300500]["tOption7-8"] = {781,782}
tNpcGossip[300500]["OptionFunc781"] = "Reincarnation_Process</N>300500"

-- 一转水道未达到120级选择神佑转世
tNpcGossip[300500]["Text7-9"] = {791,792}
tNpcGossip[300500]["tOption7-9"] = {791,792}
tNpcGossip[300500]["OptionPoint791"] = "8-1"

-- 一转选择职业界面
tNpcGossip[300500]["Text8-1"] = {811}
tNpcGossip[300500]["tOption8-1"] = {8102,811,812,813,814,815,816,817,818,819,820,8101}
tNpcGossip[300500]["ChkFunc8-1"] = function ()
	local nPro = Reincarnation_GetPro()
	local sText = tReincarnation_Text[300500]["Current"][nPro]

	if type(sText) == "table" then
		local nSex = Get_UserSex()
		sText = tReincarnation_Text[300500]["Current"][nPro][nSex]
	end

	tNpcGossip[300500]["Text811"] = sText

	-- 判断性别
	local nSex = Get_UserSex()
	if nSex == 2 then 
		tNpcGossip[300500]["tOption8-1"] = {8102,811,812,813,814,815,816,818,819,820,8101}
	else
		tNpcGossip[300500]["tOption8-1"] = {8102,811,812,813,814,815,816,817,819,820,8101}
	end

	return true
end

tNpcGossip[300500]["OptionFunc811"] = "Reincarnation_ChoosePro</N>300500</N>11"
tNpcGossip[300500]["OptionFunc812"] = "Reincarnation_ChoosePro</N>300500</N>21"
tNpcGossip[300500]["OptionFunc813"] = "Reincarnation_ChoosePro</N>300500</N>41"
tNpcGossip[300500]["OptionFunc814"] = "Reincarnation_ChoosePro</N>300500</N>132"
tNpcGossip[300500]["OptionFunc815"] = "Reincarnation_ChoosePro</N>300500</N>142"
tNpcGossip[300500]["OptionFunc816"] = "Reincarnation_ChoosePro</N>300500</N>51"
tNpcGossip[300500]["OptionFunc817"] = "Reincarnation_ChoosePro</N>300500</N>61"
tNpcGossip[300500]["OptionFunc818"] = "Reincarnation_ChoosePro</N>300500</N>61"
tNpcGossip[300500]["OptionFunc819"] = "Reincarnation_ChoosePro</N>300500</N>71"
tNpcGossip[300500]["OptionFunc820"] = "Reincarnation_ChoosePro</N>300500</N>81"
tNpcGossip[300500]["OptionFunc8101"] = "Reincarnation_ChoosePro</N>300500</N>161"
tNpcGossip[300500]["OptionFunc8102"] = "Reincarnation_ChoosePro</N>300500</N>91"

tNpcGossip[300500]["Text8-2"] = {821}
tNpcGossip[300500]["tOption8-2"] = {821,822}
tNpcGossip[300500]["OptionFunc821"] = "Reincarnation_WillingToReincarnate</N>300500"

-- 选择优质宝石
tNpcGossip[300500]["Text8-3"] = {831,832}
tNpcGossip[300500]["tOption8-3"] = {831,832,833,834,835,836,837}
tNpcGossip[300500]["OptionFunc831"] = "Reincarnation_Process</N>300500</N>700003"
tNpcGossip[300500]["OptionFunc832"] = "Reincarnation_Process</N>300500</N>700013"
tNpcGossip[300500]["OptionFunc833"] = "Reincarnation_Process</N>300500</N>700023"
tNpcGossip[300500]["OptionFunc834"] = "Reincarnation_Process</N>300500</N>700033"
tNpcGossip[300500]["OptionFunc835"] = "Reincarnation_Process</N>300500</N>700043"
tNpcGossip[300500]["OptionFunc836"] = "Reincarnation_Process</N>300500</N>700053"
tNpcGossip[300500]["OptionFunc837"] = "Reincarnation_Process</N>300500</N>700063"

-- 背包空间不足
tNpcGossip[300500]["Text8-4"] = {841}
tNpcGossip[300500]["tOption8-4"] = {841}

-- 没有涅磐灵石
tNpcGossip[300500]["Text8-5"] = {851}
tNpcGossip[300500]["tOption8-5"] = {851}

-- 身上穿戴着特殊武器
tNpcGossip[300500]["Text8-6"] = {861}
tNpcGossip[300500]["tOption8-6"] = {861}

-- 我愿去见识一番。(未达到等级)
tNpcGossip[300500]["Text9-1"] = {911,912}
tNpcGossip[300500]["tOption9-1"] = {911}

-- 我愿去见识一番。(未获得最高职称)
tNpcGossip[300500]["Text9-2"] = {921,922}
tNpcGossip[300500]["tOption9-2"] = {921}

-- 等级不够
tNpcGossip[300500]["Text11-1"] = {1111,1112}
tNpcGossip[300500]["tOption11-1"] = {1111}
