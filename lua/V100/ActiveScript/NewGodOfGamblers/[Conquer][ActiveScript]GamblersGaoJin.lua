------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]新赌神活动制作
--Creator:		翁清海
--Created:		2018/04/28
------------------------------------------------------------------------------------

--命名前缀
--GamblersGaoJin_

--logid:12001066

--------------------------------------------数据部分配置--------------------------------------------
--时间
local tGamblersGaoJin_Time = {}
	tGamblersGaoJin_Time["Activity"] = tActivityTime["NewGodOfGamblers"]["Activity"]
	
local tGamblersGaoJin_Cont = {}
	--双龙城
	tGamblersGaoJin_Cont["TwinCity"] = 1002
	--金币寻路
	tGamblersGaoJin_Cont["FindNpc"] = 22865
	--荷官小美
	tGamblersGaoJin_Cont["ExChangeNpc"] = 21491
	--等级
	tGamblersGaoJin_Cont["Level"] = 80
	tGamblersGaoJin_Cont["Metempsychosis"] = 0
	--可获得的免费道具总数
	tGamblersGaoJin_Cont["FreeItemNum"] = 3
	--翻牌器type
	tGamblersGaoJin_Cont["CardId"] = 39
	--大炮初始NPC
	tGamblersGaoJin_Cont["GunNpc"] = 22868
	--数据分离
	tGamblersGaoJin_Cont["GunSplit"] = 10
	--炮弹索引对应数量
	tGamblersGaoJin_Cont["GunIndex"] = {}
	tGamblersGaoJin_Cont["GunIndex"][1] = 270
	tGamblersGaoJin_Cont["GunIndex"][2] = 2700
	tGamblersGaoJin_Cont["GunIndex"][3] = 27000
	--碎片合成概率
	tGamblersGaoJin_Cont["ChipRandom"] = {}
	tGamblersGaoJin_Cont["ChipRandom"]["StartNum"] = 4800
	tGamblersGaoJin_Cont["ChipRandom"]["EndNum"] = 10000
	--寻路对应索引
	tGamblersGaoJin_Cont["FindIndex"] = {}
	tGamblersGaoJin_Cont["FindIndex"][3308695] = 22866
	tGamblersGaoJin_Cont["FindIndex"][3308696] = 22866
	tGamblersGaoJin_Cont["FindIndex"][3308697] = 1974
	tGamblersGaoJin_Cont["FindIndex"][3308698] = 1974
	tGamblersGaoJin_Cont["FindIndex"][200626] = 1974
	tGamblersGaoJin_Cont["FindIndex"][200625] = 1974
	--陷阱触发落脚点
	tGamblersGaoJin_Cont["Bound"] = {}
	tGamblersGaoJin_Cont["Bound"][1972] = {}
	tGamblersGaoJin_Cont["Bound"][1972]["InstanceId"] = 184
	tGamblersGaoJin_Cont["Bound"][1972]["MapDoc"] = {1002}
	tGamblersGaoJin_Cont["Bound"][1973] = {}
	tGamblersGaoJin_Cont["Bound"][1973]["MapId"] = 10339
	tGamblersGaoJin_Cont["Bound"][1973]["X"] = tNpcPos["NewGodOfGamblers"][10339][1]
	tGamblersGaoJin_Cont["Bound"][1973]["Y"] = tNpcPos["NewGodOfGamblers"][10339][2]
	tGamblersGaoJin_Cont["Bound"][1973]["MapDoc"] = {1002}
	tGamblersGaoJin_Cont["Bound"][1974] = {}
	tGamblersGaoJin_Cont["Bound"][1974]["InstanceId"] = 185
	tGamblersGaoJin_Cont["Bound"][1974]["RefreshNpc"] = 1
	tGamblersGaoJin_Cont["Bound"][1974]["MapDoc"] = {1002}
	tGamblersGaoJin_Cont["Bound"][1995] = {}
	tGamblersGaoJin_Cont["Bound"][1995]["MapId"] = 1002
	tGamblersGaoJin_Cont["Bound"][1995]["X"] = tNpcPos["NewGodOfGamblers"][1002][1]
	tGamblersGaoJin_Cont["Bound"][1995]["Y"] = tNpcPos["NewGodOfGamblers"][1002][2]
	tGamblersGaoJin_Cont["Bound"][1995]["MapDoc"] = {10340,10224,10332}
	--光效
	tGamblersGaoJin_Cont["Effect"] = {}
	tGamblersGaoJin_Cont["Effect"]["Gun"] = "JQ_zhanjinshajue"
	tGamblersGaoJin_Cont["Effect"]["Bomb"] = "bombarrow"
	--扑克牌对应索引
	tGamblersGaoJin_Cont["Poker"] = {}
	tGamblersGaoJin_Cont["Poker"][3308675] = 2
	tGamblersGaoJin_Cont["Poker"][3308676] = 2
	tGamblersGaoJin_Cont["Poker"][3308677] = 2
	tGamblersGaoJin_Cont["Poker"][3308678] = 2
	tGamblersGaoJin_Cont["Poker"][3308679] = 2
	tGamblersGaoJin_Cont["Poker"][3308680] = 3
	tGamblersGaoJin_Cont["Poker"][3308681] = 3
	tGamblersGaoJin_Cont["Poker"][3308682] = 3
	tGamblersGaoJin_Cont["Poker"][3308683] = 3
	tGamblersGaoJin_Cont["Poker"][3308684] = 3
	tGamblersGaoJin_Cont["Poker"][3308685] = 4
	tGamblersGaoJin_Cont["Poker"][3308686] = 4
	tGamblersGaoJin_Cont["Poker"][3308687] = 4
	tGamblersGaoJin_Cont["Poker"][3308688] = 4
	tGamblersGaoJin_Cont["Poker"][3308689] = 4
	tGamblersGaoJin_Cont["Poker"][3308690] = 1
	tGamblersGaoJin_Cont["Poker"][3308691] = 1
	tGamblersGaoJin_Cont["Poker"][3308692] = 1
	tGamblersGaoJin_Cont["Poker"][3308693] = 1
	tGamblersGaoJin_Cont["Poker"][3308694] = 1
	--动态NPC配置
	tGamblersGaoJin_Cont["DynNpc"] = {}
	--海王大炮(左)
	tGamblersGaoJin_Cont["DynNpc"][22867] = {}
	tGamblersGaoJin_Cont["DynNpc"][22867]["Sort"] = 1
	tGamblersGaoJin_Cont["DynNpc"][22867]["Type"] = 2
	tGamblersGaoJin_Cont["DynNpc"][22867]["LookFace"] = 41616
	tGamblersGaoJin_Cont["DynNpc"][22867]["Action"] = 94486275
	tGamblersGaoJin_Cont["DynNpc"][22867]["PosX"] = tNpcPos["NewGodOfGamblers"][22867][1][1]
	tGamblersGaoJin_Cont["DynNpc"][22867]["PosY"] = tNpcPos["NewGodOfGamblers"][22867][1][2]
	--海王大炮(中)
	tGamblersGaoJin_Cont["DynNpc"][22868] = {}
	tGamblersGaoJin_Cont["DynNpc"][22868]["Sort"] = 1
	tGamblersGaoJin_Cont["DynNpc"][22868]["Type"] = 2
	tGamblersGaoJin_Cont["DynNpc"][22868]["LookFace"] = 41645
	tGamblersGaoJin_Cont["DynNpc"][22868]["Action"] = 94486276
	tGamblersGaoJin_Cont["DynNpc"][22868]["PosX"] = tNpcPos["NewGodOfGamblers"][22868][1][1]
	tGamblersGaoJin_Cont["DynNpc"][22868]["PosY"] = tNpcPos["NewGodOfGamblers"][22868][1][2]
	--海王大炮(右)
	tGamblersGaoJin_Cont["DynNpc"][22869] = {}
	tGamblersGaoJin_Cont["DynNpc"][22869]["Sort"] = 1
	tGamblersGaoJin_Cont["DynNpc"][22869]["Type"] = 2
	tGamblersGaoJin_Cont["DynNpc"][22869]["LookFace"] = 41654
	tGamblersGaoJin_Cont["DynNpc"][22869]["Action"] = 94486277
	tGamblersGaoJin_Cont["DynNpc"][22869]["PosX"] = tNpcPos["NewGodOfGamblers"][22869][1][1]
	tGamblersGaoJin_Cont["DynNpc"][22869]["PosY"] = tNpcPos["NewGodOfGamblers"][22869][1][2]
	--动态NPC可移动位置配置
	tGamblersGaoJin_Cont["NpcPlace"] = {}
	--海王大炮(左)
	tGamblersGaoJin_Cont["NpcPlace"][22867] = {}
	tGamblersGaoJin_Cont["NpcPlace"][22867][1] = {}
	tGamblersGaoJin_Cont["NpcPlace"][22867][1]["PosX"] = tNpcPos["NewGodOfGamblers"][22867][1][1]
	tGamblersGaoJin_Cont["NpcPlace"][22867][1]["PosY"] = tNpcPos["NewGodOfGamblers"][22867][1][2]
	tGamblersGaoJin_Cont["NpcPlace"][22867][1]["LookFace"] = 41616
	tGamblersGaoJin_Cont["NpcPlace"][22867][2] = {}
	tGamblersGaoJin_Cont["NpcPlace"][22867][2]["PosX"] = tNpcPos["NewGodOfGamblers"][22867][2][1]
	tGamblersGaoJin_Cont["NpcPlace"][22867][2]["PosY"] = tNpcPos["NewGodOfGamblers"][22867][2][2]
	tGamblersGaoJin_Cont["NpcPlace"][22867][2]["LookFace"] = 41616
	tGamblersGaoJin_Cont["NpcPlace"][22867][3] = {}
	tGamblersGaoJin_Cont["NpcPlace"][22867][3]["PosX"] = tNpcPos["NewGodOfGamblers"][22867][3][1]
	tGamblersGaoJin_Cont["NpcPlace"][22867][3]["PosY"] = tNpcPos["NewGodOfGamblers"][22867][3][2]
	tGamblersGaoJin_Cont["NpcPlace"][22867][3]["LookFace"] = 41615
	--海王大炮(中)
	tGamblersGaoJin_Cont["NpcPlace"][22868] = {}
	tGamblersGaoJin_Cont["NpcPlace"][22868][1] = {}
	tGamblersGaoJin_Cont["NpcPlace"][22868][1]["PosX"] = tNpcPos["NewGodOfGamblers"][22868][1][1]
	tGamblersGaoJin_Cont["NpcPlace"][22868][1]["PosY"] = tNpcPos["NewGodOfGamblers"][22868][1][2]
	tGamblersGaoJin_Cont["NpcPlace"][22868][1]["LookFace"] = 41615
	tGamblersGaoJin_Cont["NpcPlace"][22868][2] = {}
	tGamblersGaoJin_Cont["NpcPlace"][22868][2]["PosX"] = tNpcPos["NewGodOfGamblers"][22868][2][1]
	tGamblersGaoJin_Cont["NpcPlace"][22868][2]["PosY"] = tNpcPos["NewGodOfGamblers"][22868][2][2]
	tGamblersGaoJin_Cont["NpcPlace"][22868][2]["LookFace"] = 41615
	tGamblersGaoJin_Cont["NpcPlace"][22868][3] = {}
	tGamblersGaoJin_Cont["NpcPlace"][22868][3]["PosX"] = tNpcPos["NewGodOfGamblers"][22868][3][1]
	tGamblersGaoJin_Cont["NpcPlace"][22868][3]["PosY"] = tNpcPos["NewGodOfGamblers"][22868][3][2]
	tGamblersGaoJin_Cont["NpcPlace"][22868][3]["LookFace"] = 41615
	--海王大炮(右)
	tGamblersGaoJin_Cont["NpcPlace"][22869] = {}
	tGamblersGaoJin_Cont["NpcPlace"][22869][1] = {}
	tGamblersGaoJin_Cont["NpcPlace"][22869][1]["PosX"] = tNpcPos["NewGodOfGamblers"][22869][1][1]
	tGamblersGaoJin_Cont["NpcPlace"][22869][1]["PosY"] = tNpcPos["NewGodOfGamblers"][22869][1][2]
	tGamblersGaoJin_Cont["NpcPlace"][22869][1]["LookFace"] = 41614
	tGamblersGaoJin_Cont["NpcPlace"][22869][2] = {}
	tGamblersGaoJin_Cont["NpcPlace"][22869][2]["PosX"] = tNpcPos["NewGodOfGamblers"][22869][2][1]
	tGamblersGaoJin_Cont["NpcPlace"][22869][2]["PosY"] = tNpcPos["NewGodOfGamblers"][22869][2][2]
	tGamblersGaoJin_Cont["NpcPlace"][22869][2]["LookFace"] = 41614
	tGamblersGaoJin_Cont["NpcPlace"][22869][3] = {}
	tGamblersGaoJin_Cont["NpcPlace"][22869][3]["PosX"] = tNpcPos["NewGodOfGamblers"][22869][3][1]
	tGamblersGaoJin_Cont["NpcPlace"][22869][3]["PosY"] = tNpcPos["NewGodOfGamblers"][22869][3][2]
	tGamblersGaoJin_Cont["NpcPlace"][22869][3]["LookFace"] = 41614
	--掩码配置
local tGamblersGaoJin_Stc = {}
	--骰子使用限制
	tGamblersGaoJin_Stc["Touzi"] = {}
	tGamblersGaoJin_Stc["Touzi"]["Event"] = 176
	tGamblersGaoJin_Stc["Touzi"]["Type"] = 61
	--免费物品使用
	tGamblersGaoJin_Stc["FreeItem"] = {}
	tGamblersGaoJin_Stc["FreeItem"]["Event"] = 176
	tGamblersGaoJin_Stc["FreeItem"]["Type"] = 62
	--记录玩家点击的NPCid
	tGamblersGaoJin_Stc["ClickNpc"] = {}
	tGamblersGaoJin_Stc["ClickNpc"]["Event"] = 177
	tGamblersGaoJin_Stc["ClickNpc"]["Type"] = 22
	--炮台二次确认
	tGamblersGaoJin_Stc["GunConfirm"] = {}
	tGamblersGaoJin_Stc["GunConfirm"]["Event"] = 177
	tGamblersGaoJin_Stc["GunConfirm"]["Type"] = 23
	
local tGamblersGaoJin_Log = {}
	tGamblersGaoJin_Log["DelItem"] = "0,0,%d,%d,12001066,2,0,0"
	
--随机
local tGamblersGaoJin_Prob = {}
	--领取免费道具随机
	tGamblersGaoJin_Prob[22865] = {}
	tGamblersGaoJin_Prob[22865][1] = {}
	tGamblersGaoJin_Prob[22865][1]["ItemChanceSum"] = 10000
	tGamblersGaoJin_Prob[22865][1][1] = {}
	tGamblersGaoJin_Prob[22865][1][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Prob[22865][1][1]["ItemChance"] = 1000
	tGamblersGaoJin_Prob[22865][1][1]["Item_1"] = 3308670
	tGamblersGaoJin_Prob[22865][1][2] = {}
	tGamblersGaoJin_Prob[22865][1][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Prob[22865][1][2]["ItemChance"] = 2250
	tGamblersGaoJin_Prob[22865][1][2]["Item_1"] = 3308671
	tGamblersGaoJin_Prob[22865][1][3] = {}
	tGamblersGaoJin_Prob[22865][1][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Prob[22865][1][3]["ItemChance"] = 2250
	tGamblersGaoJin_Prob[22865][1][3]["Item_1"] = 3308672
	tGamblersGaoJin_Prob[22865][1][4] = {}
	tGamblersGaoJin_Prob[22865][1][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Prob[22865][1][4]["ItemChance"] = 2250
	tGamblersGaoJin_Prob[22865][1][4]["Item_1"] = 3308673
	tGamblersGaoJin_Prob[22865][1][5] = {}
	tGamblersGaoJin_Prob[22865][1][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Prob[22865][1][5]["ItemChance"] = 2250
	tGamblersGaoJin_Prob[22865][1][5]["Item_1"] = 3308674
	
	--奖励配置
local tGamblersGaoJin_Reward = {}
	--玩家金币过期使用
	tGamblersGaoJin_Reward[3303926] = {}
	tGamblersGaoJin_Reward[3303926]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3303926]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3303926]["DeleteItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3303926]["DeleteItem"][1]["ItemNum"] = 1
	tGamblersGaoJin_Reward[3303926]["RewardCultivation"] = {}
	tGamblersGaoJin_Reward[3303926]["RewardCultivation"]["Value"] = 1
	tGamblersGaoJin_Reward[3303926]["LogId"] =12001066
	-- 金币骰子
	tGamblersGaoJin_Reward[3308664] = {}
	tGamblersGaoJin_Reward[3308664]["TimeLimit"] = 3
	tGamblersGaoJin_Reward[3308664][1] = {}
	tGamblersGaoJin_Reward[3308664][1]["ItemChanceSum"] = 10000
	--50金币 25%
	tGamblersGaoJin_Reward[3308664][1][1] = {}
	tGamblersGaoJin_Reward[3308664][1][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][1][1]["ItemChance"] = 2500
	tGamblersGaoJin_Reward[3308664][1][1]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][1][1]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tGamblersGaoJin_Reward[3308664][1][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][1][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][1][1]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][1][1]["RewardItem"][1]["Attr"] = "0 50"
	tGamblersGaoJin_Reward[3308664][1][1]["Talk"] = tGamblersGaoJin_Text[3308664][1][1]
	tGamblersGaoJin_Reward[3308664][1][1]["Log"] = "0,0,3308664,1,12001066,2,3303926,50"
	--100金币 23%
	tGamblersGaoJin_Reward[3308664][1][2] = {}
	tGamblersGaoJin_Reward[3308664][1][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][1][2]["ItemChance"] = 2300
	tGamblersGaoJin_Reward[3308664][1][2]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][1][2]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tGamblersGaoJin_Reward[3308664][1][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][1][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][1][2]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][1][2]["RewardItem"][1]["Attr"] = "0 100"
	tGamblersGaoJin_Reward[3308664][1][2]["Talk"] = tGamblersGaoJin_Text[3308664][1][2]
	tGamblersGaoJin_Reward[3308664][1][2]["Log"] = "0,0,3308664,1,12001066,2,3303926,100"
	--150金币 20%
	tGamblersGaoJin_Reward[3308664][1][3] = {}
	tGamblersGaoJin_Reward[3308664][1][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][1][3]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[3308664][1][3]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][1][3]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tGamblersGaoJin_Reward[3308664][1][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][1][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][1][3]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][1][3]["RewardItem"][1]["Attr"] = "0 150"
	tGamblersGaoJin_Reward[3308664][1][3]["Talk"] = tGamblersGaoJin_Text[3308664][1][3]
	tGamblersGaoJin_Reward[3308664][1][3]["Log"] = "0,0,3308664,1,12001066,2,3303926,150"
	--200金币 17%
	tGamblersGaoJin_Reward[3308664][1][4] = {}
	tGamblersGaoJin_Reward[3308664][1][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][1][4]["ItemChance"] = 1700
	tGamblersGaoJin_Reward[3308664][1][4]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][1][4]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tGamblersGaoJin_Reward[3308664][1][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][1][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][1][4]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][1][4]["RewardItem"][1]["Attr"] = "0 200"
	tGamblersGaoJin_Reward[3308664][1][4]["Talk"] = tGamblersGaoJin_Text[3308664][1][4]
	tGamblersGaoJin_Reward[3308664][1][4]["Log"] = "0,0,3308664,1,12001066,2,3303926,200"
	--250金币 11.3%
	tGamblersGaoJin_Reward[3308664][1][5] = {}
	tGamblersGaoJin_Reward[3308664][1][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][1][5]["ItemChance"] = 1130
	tGamblersGaoJin_Reward[3308664][1][5]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][1][5]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tGamblersGaoJin_Reward[3308664][1][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][1][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][1][5]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][1][5]["RewardItem"][1]["Attr"] = "0 250"
	tGamblersGaoJin_Reward[3308664][1][5]["Talk"] = tGamblersGaoJin_Text[3308664][1][5]
	tGamblersGaoJin_Reward[3308664][1][5]["Log"] = "0,0,3308664,1,12001066,2,3303926,250"
	--3000金币 3.6%
	tGamblersGaoJin_Reward[3308664][1][6] = {}
	tGamblersGaoJin_Reward[3308664][1][6]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308664][1][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][1][6]["ItemChance"] = 360
	tGamblersGaoJin_Reward[3308664][1][6]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][1][6]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tGamblersGaoJin_Reward[3308664][1][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][1][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][1][6]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][1][6]["RewardItem"][1]["Attr"] = "0 3000"
	tGamblersGaoJin_Reward[3308664][1][6]["Talk"] = tGamblersGaoJin_Text[3308664][1][6]
	tGamblersGaoJin_Reward[3308664][1][6]["Log"] = "0,0,3308664,1,12001066,2,3303926,3000"
	--10000金币 0.1%
	tGamblersGaoJin_Reward[3308664][1][7] = {}
	tGamblersGaoJin_Reward[3308664][1][7]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308664][1][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][1][7]["ItemChance"] = 10
	tGamblersGaoJin_Reward[3308664][1][7]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][1][7]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tGamblersGaoJin_Reward[3308664][1][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][1][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][1][7]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][1][7]["RewardItem"][1]["Attr"] = "0 10000"
	tGamblersGaoJin_Reward[3308664][1][7]["Talk"] = tGamblersGaoJin_Text[3308664][1][7]
	tGamblersGaoJin_Reward[3308664][1][7]["Log"] = "0,0,3308664,1,12001066,2,3303926,10000"
	--额外赠送30金币
	tGamblersGaoJin_Reward[3308664][2] = {}
	tGamblersGaoJin_Reward[3308664][2]["ItemChanceSum"] = 10000
	--80金币 25%
	tGamblersGaoJin_Reward[3308664][2][1] = {}
	tGamblersGaoJin_Reward[3308664][2][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][2][1]["ItemChance"] = 2500
	tGamblersGaoJin_Reward[3308664][2][1]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][2][1]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][2][1]["RewardEffect"]["Effect"] = "touzi_1"
	tGamblersGaoJin_Reward[3308664][2][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][2][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][2][1]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][2][1]["RewardItem"][1]["Attr"] = "0 80"
	tGamblersGaoJin_Reward[3308664][2][1]["Talk"] = tGamblersGaoJin_Text[3308664][2][1]
	tGamblersGaoJin_Reward[3308664][2][1]["Log"] = "0,0,3308664,1,12001066,2,3303926,80"
	--130金币 23%
	tGamblersGaoJin_Reward[3308664][2][2] = {}
	tGamblersGaoJin_Reward[3308664][2][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][2][2]["ItemChance"] = 2300
	tGamblersGaoJin_Reward[3308664][2][2]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][2][2]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][2][2]["RewardEffect"]["Effect"] = "touzi_2"
	tGamblersGaoJin_Reward[3308664][2][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][2][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][2][2]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][2][2]["RewardItem"][1]["Attr"] = "0 130"
	tGamblersGaoJin_Reward[3308664][2][2]["Talk"] = tGamblersGaoJin_Text[3308664][2][2]
	tGamblersGaoJin_Reward[3308664][2][2]["Log"] = "0,0,3308664,1,12001066,2,3303926,130"
	--180金币 20%
	tGamblersGaoJin_Reward[3308664][2][3] = {}
	tGamblersGaoJin_Reward[3308664][2][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][2][3]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[3308664][2][3]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][2][3]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][2][3]["RewardEffect"]["Effect"] = "touzi_3"
	tGamblersGaoJin_Reward[3308664][2][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][2][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][2][3]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][2][3]["RewardItem"][1]["Attr"] = "0 180"
	tGamblersGaoJin_Reward[3308664][2][3]["Talk"] = tGamblersGaoJin_Text[3308664][2][3]
	tGamblersGaoJin_Reward[3308664][2][3]["Log"] = "0,0,3308664,1,12001066,2,3303926,180"
	--230金币 17%
	tGamblersGaoJin_Reward[3308664][2][4] = {}
	tGamblersGaoJin_Reward[3308664][2][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][2][4]["ItemChance"] = 1700
	tGamblersGaoJin_Reward[3308664][2][4]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][2][4]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][2][4]["RewardEffect"]["Effect"] = "touzi_4"
	tGamblersGaoJin_Reward[3308664][2][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][2][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][2][4]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][2][4]["RewardItem"][1]["Attr"] = "0 230"
	tGamblersGaoJin_Reward[3308664][2][4]["Talk"] = tGamblersGaoJin_Text[3308664][2][4]
	tGamblersGaoJin_Reward[3308664][2][4]["Log"] = "0,0,3308664,1,12001066,2,3303926,230"
	--280金币 11.3%
	tGamblersGaoJin_Reward[3308664][2][5] = {}
	tGamblersGaoJin_Reward[3308664][2][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][2][5]["ItemChance"] = 1130
	tGamblersGaoJin_Reward[3308664][2][5]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][2][5]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][2][5]["RewardEffect"]["Effect"] = "touzi_5"
	tGamblersGaoJin_Reward[3308664][2][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][2][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][2][5]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][2][5]["RewardItem"][1]["Attr"] = "0 280"
	tGamblersGaoJin_Reward[3308664][2][5]["Talk"] = tGamblersGaoJin_Text[3308664][2][5]
	tGamblersGaoJin_Reward[3308664][2][5]["Log"] = "0,0,3308664,1,12001066,2,3303926,280"
	--3030金币 3.6%
	tGamblersGaoJin_Reward[3308664][2][6] = {}
	tGamblersGaoJin_Reward[3308664][2][6]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308664][2][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][2][6]["ItemChance"] = 360
	tGamblersGaoJin_Reward[3308664][2][6]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][2][6]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][2][6]["RewardEffect"]["Effect"] = "touzi_6"
	tGamblersGaoJin_Reward[3308664][2][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][2][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][2][6]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][2][6]["RewardItem"][1]["Attr"] = "0 3030"
	tGamblersGaoJin_Reward[3308664][2][6]["Talk"] = tGamblersGaoJin_Text[3308664][2][6]
	tGamblersGaoJin_Reward[3308664][2][6]["Log"] = "0,0,3308664,1,12001066,2,3303926,3030"
	--10030金币 0.1%
	tGamblersGaoJin_Reward[3308664][2][7] = {}
	tGamblersGaoJin_Reward[3308664][2][7]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308664][2][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308664][2][7]["ItemChance"] = 10
	tGamblersGaoJin_Reward[3308664][2][7]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308664][2][7]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308664][2][7]["RewardEffect"]["Effect"] = "bombarrow"
	tGamblersGaoJin_Reward[3308664][2][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308664][2][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308664][2][7]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308664][2][7]["RewardItem"][1]["Attr"] = "0 10030"
	tGamblersGaoJin_Reward[3308664][2][7]["Talk"] = tGamblersGaoJin_Text[3308664][2][7]
	tGamblersGaoJin_Reward[3308664][2][7]["Log"] = "0,0,3308664,1,12001066,2,3303926,10030"
	
	-- 神纹精粹骰子
	tGamblersGaoJin_Reward[3308667] = {}
	tGamblersGaoJin_Reward[3308667]["TimeLimit"] = 3
	tGamblersGaoJin_Reward[3308667][1] = {}
	tGamblersGaoJin_Reward[3308667][1]["ItemChanceSum"] = 10000
	--万能神纹精粹*2 24%
	tGamblersGaoJin_Reward[3308667][1][1] = {}
	tGamblersGaoJin_Reward[3308667][1][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][1][1]["ItemChance"] = 2400
	tGamblersGaoJin_Reward[3308667][1][1]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][1][1]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tGamblersGaoJin_Reward[3308667][1][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][1][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][1][1]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][1][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tGamblersGaoJin_Reward[3308667][1][1]["Talk"] = tGamblersGaoJin_Text[3308667][1][1]
	tGamblersGaoJin_Reward[3308667][1][1]["Log"] = "0,0,3308667,1,12001066,2,4060001,2"
	--万能神纹精粹*4 23%
	tGamblersGaoJin_Reward[3308667][1][2] = {}
	tGamblersGaoJin_Reward[3308667][1][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][1][2]["ItemChance"] = 2300
	tGamblersGaoJin_Reward[3308667][1][2]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][1][2]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tGamblersGaoJin_Reward[3308667][1][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][1][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][1][2]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][1][2]["RewardItem"][1]["Attr"] = "0 4 3"
	tGamblersGaoJin_Reward[3308667][1][2]["Talk"] = tGamblersGaoJin_Text[3308667][1][2]
	tGamblersGaoJin_Reward[3308667][1][2]["Log"] = "0,0,3308667,1,12001066,2,4060001,4"
	--万能神纹精粹*6 20%
	tGamblersGaoJin_Reward[3308667][1][3] = {}
	tGamblersGaoJin_Reward[3308667][1][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][1][3]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[3308667][1][3]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][1][3]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tGamblersGaoJin_Reward[3308667][1][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][1][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][1][3]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][1][3]["RewardItem"][1]["Attr"] = "0 6 3"
	tGamblersGaoJin_Reward[3308667][1][3]["Talk"] = tGamblersGaoJin_Text[3308667][1][3]
	tGamblersGaoJin_Reward[3308667][1][3]["Log"] = "0,0,3308667,1,12001066,2,4060001,6"
	--万能神纹精粹*8 17%
	tGamblersGaoJin_Reward[3308667][1][4] = {}
	tGamblersGaoJin_Reward[3308667][1][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][1][4]["ItemChance"] = 1700
	tGamblersGaoJin_Reward[3308667][1][4]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][1][4]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tGamblersGaoJin_Reward[3308667][1][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][1][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][1][4]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][1][4]["RewardItem"][1]["Attr"] = "0 8 3"
	tGamblersGaoJin_Reward[3308667][1][4]["Talk"] = tGamblersGaoJin_Text[3308667][1][4]
	tGamblersGaoJin_Reward[3308667][1][4]["Log"] = "0,0,3308667,1,12001066,2,4060001,8"
	--万能神纹精粹*10 10.3%
	tGamblersGaoJin_Reward[3308667][1][5] = {}
	tGamblersGaoJin_Reward[3308667][1][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][1][5]["ItemChance"] = 1030
	tGamblersGaoJin_Reward[3308667][1][5]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][1][5]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tGamblersGaoJin_Reward[3308667][1][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][1][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][1][5]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][1][5]["RewardItem"][1]["Attr"] = "0 10 3"
	tGamblersGaoJin_Reward[3308667][1][5]["Talk"] = tGamblersGaoJin_Text[3308667][1][5]
	tGamblersGaoJin_Reward[3308667][1][5]["Log"] = "0,0,3308667,1,12001066,2,4060001,10"
	--万能神纹精粹*177 5.6%
	tGamblersGaoJin_Reward[3308667][1][6] = {}
	tGamblersGaoJin_Reward[3308667][1][6]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308667][1][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][1][6]["ItemChance"] = 560
	tGamblersGaoJin_Reward[3308667][1][6]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][1][6]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tGamblersGaoJin_Reward[3308667][1][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][1][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][1][6]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][1][6]["RewardItem"][1]["Attr"] = "0 177 3"
	tGamblersGaoJin_Reward[3308667][1][6]["Talk"] = tGamblersGaoJin_Text[3308667][1][6]
	tGamblersGaoJin_Reward[3308667][1][6]["Log"] = "0,0,3308667,1,12001066,2,4060001,177"
	--万能神纹精粹*324 0.1%
	tGamblersGaoJin_Reward[3308667][1][7] = {}
	tGamblersGaoJin_Reward[3308667][1][7]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308667][1][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][1][7]["ItemChance"] = 10
	tGamblersGaoJin_Reward[3308667][1][7]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][1][7]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tGamblersGaoJin_Reward[3308667][1][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][1][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][1][7]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][1][7]["RewardItem"][1]["Attr"] = "0 324 3"
	tGamblersGaoJin_Reward[3308667][1][7]["Talk"] = tGamblersGaoJin_Text[3308667][1][7]
	tGamblersGaoJin_Reward[3308667][1][7]["Log"] = "0,0,3308667,1,12001066,2,4060001,324"
	--额外赠送30金币
	tGamblersGaoJin_Reward[3308667][2] = {}
	tGamblersGaoJin_Reward[3308667][2]["ItemChanceSum"] = 10000
	--万能神纹精粹*2 24%
	tGamblersGaoJin_Reward[3308667][2][1] = {}
	tGamblersGaoJin_Reward[3308667][2][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][2][1]["ItemChance"] = 2400
	tGamblersGaoJin_Reward[3308667][2][1]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][2][1]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][2][1]["RewardEffect"]["Effect"] = "touzi_1"
	tGamblersGaoJin_Reward[3308667][2][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][2][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][2][1]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][2][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tGamblersGaoJin_Reward[3308667][2][1]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3308667][2][1]["RewardItem"][2]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308667][2][1]["RewardItem"][2]["Attr"] = "0 30"
	tGamblersGaoJin_Reward[3308667][2][1]["Talk"] = tGamblersGaoJin_Text[3308667][2][1]
	tGamblersGaoJin_Reward[3308667][2][1]["Log"] = "0,0,3308667,1,12001066,2,4060001[3303926],2[30]"
	--万能神纹精粹*4 23%
	tGamblersGaoJin_Reward[3308667][2][2] = {}
	tGamblersGaoJin_Reward[3308667][2][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][2][2]["ItemChance"] = 2300
	tGamblersGaoJin_Reward[3308667][2][2]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][2][2]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][2][2]["RewardEffect"]["Effect"] = "touzi_2"
	tGamblersGaoJin_Reward[3308667][2][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][2][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][2][2]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][2][2]["RewardItem"][1]["Attr"] = "0 4 3"
	tGamblersGaoJin_Reward[3308667][2][2]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3308667][2][2]["RewardItem"][2]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308667][2][2]["RewardItem"][2]["Attr"] = "0 30"
	tGamblersGaoJin_Reward[3308667][2][2]["Talk"] = tGamblersGaoJin_Text[3308667][2][2]
	tGamblersGaoJin_Reward[3308667][2][2]["Log"] = "0,0,3308667,1,12001066,2,4060001[3303926],4[30]"
	--万能神纹精粹*6 20%
	tGamblersGaoJin_Reward[3308667][2][3] = {}
	tGamblersGaoJin_Reward[3308667][2][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][2][3]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[3308667][2][3]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][2][3]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][2][3]["RewardEffect"]["Effect"] = "touzi_3"
	tGamblersGaoJin_Reward[3308667][2][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][2][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][2][3]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][2][3]["RewardItem"][1]["Attr"] = "0 6 3"
	tGamblersGaoJin_Reward[3308667][2][3]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3308667][2][3]["RewardItem"][2]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308667][2][3]["RewardItem"][2]["Attr"] = "0 30"
	tGamblersGaoJin_Reward[3308667][2][3]["Talk"] = tGamblersGaoJin_Text[3308667][2][3]
	tGamblersGaoJin_Reward[3308667][2][3]["Log"] = "0,0,3308667,1,12001066,2,4060001[3303926],6[30]"
	--万能神纹精粹*8 17%
	tGamblersGaoJin_Reward[3308667][2][4] = {}
	tGamblersGaoJin_Reward[3308667][2][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][2][4]["ItemChance"] = 1700
	tGamblersGaoJin_Reward[3308667][2][4]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][2][4]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][2][4]["RewardEffect"]["Effect"] = "touzi_4"
	tGamblersGaoJin_Reward[3308667][2][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][2][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][2][4]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][2][4]["RewardItem"][1]["Attr"] = "0 8 3"
	tGamblersGaoJin_Reward[3308667][2][4]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3308667][2][4]["RewardItem"][2]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308667][2][4]["RewardItem"][2]["Attr"] = "0 30"
	tGamblersGaoJin_Reward[3308667][2][4]["Talk"] = tGamblersGaoJin_Text[3308667][2][4]
	tGamblersGaoJin_Reward[3308667][2][4]["Log"] = "0,0,3308667,1,12001066,2,4060001[3303926],8[30]"
	--万能神纹精粹*10 10.3%
	tGamblersGaoJin_Reward[3308667][2][5] = {}
	tGamblersGaoJin_Reward[3308667][2][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][2][5]["ItemChance"] = 1030
	tGamblersGaoJin_Reward[3308667][2][5]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][2][5]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][2][5]["RewardEffect"]["Effect"] = "touzi_5"
	tGamblersGaoJin_Reward[3308667][2][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][2][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][2][5]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][2][5]["RewardItem"][1]["Attr"] = "0 10 3"
	tGamblersGaoJin_Reward[3308667][2][5]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3308667][2][5]["RewardItem"][2]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308667][2][5]["RewardItem"][2]["Attr"] = "0 30"
	tGamblersGaoJin_Reward[3308667][2][5]["Talk"] = tGamblersGaoJin_Text[3308667][2][5]
	tGamblersGaoJin_Reward[3308667][2][5]["Log"] = "0,0,3308667,1,12001066,2,4060001[3303926],10[30]"
	--万能神纹精粹*177 5.6%
	tGamblersGaoJin_Reward[3308667][2][6] = {}
	tGamblersGaoJin_Reward[3308667][2][6]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308667][2][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][2][6]["ItemChance"] = 560
	tGamblersGaoJin_Reward[3308667][2][6]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][2][6]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][2][6]["RewardEffect"]["Effect"] = "touzi_6"
	tGamblersGaoJin_Reward[3308667][2][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][2][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][2][6]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][2][6]["RewardItem"][1]["Attr"] = "0 177 3"
	tGamblersGaoJin_Reward[3308667][2][6]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3308667][2][6]["RewardItem"][2]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308667][2][6]["RewardItem"][2]["Attr"] = "0 30"
	tGamblersGaoJin_Reward[3308667][2][6]["Talk"] = tGamblersGaoJin_Text[3308667][2][6]
	tGamblersGaoJin_Reward[3308667][2][6]["Log"] = "0,0,3308667,1,12001066,2,4060001[3303926],177[30]"
	--万能神纹精粹*324 0.1%
	tGamblersGaoJin_Reward[3308667][2][7] = {}
	tGamblersGaoJin_Reward[3308667][2][7]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308667][2][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308667][2][7]["ItemChance"] = 10
	tGamblersGaoJin_Reward[3308667][2][7]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308667][2][7]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308667][2][7]["RewardEffect"]["Effect"] = "bombarrow"
	tGamblersGaoJin_Reward[3308667][2][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308667][2][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308667][2][7]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308667][2][7]["RewardItem"][1]["Attr"] = "0 324 3"
	tGamblersGaoJin_Reward[3308667][2][7]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3308667][2][7]["RewardItem"][2]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308667][2][7]["RewardItem"][2]["Attr"] = "0 30"
	tGamblersGaoJin_Reward[3308667][2][7]["Talk"] = tGamblersGaoJin_Text[3308667][2][7]
	tGamblersGaoJin_Reward[3308667][2][7]["Log"] = "0,0,3308667,1,12001066,2,4060001[3303926],324[30]"
	
	-- 赤炼石骰子（免费）
	tGamblersGaoJin_Reward[3308670] = {}
	tGamblersGaoJin_Reward[3308670]["TimeLimit"] = 3
	tGamblersGaoJin_Reward[3308670]["OverTimeDel"] = 1
	tGamblersGaoJin_Reward[3308670][1] = {}
	tGamblersGaoJin_Reward[3308670][1]["ItemChanceSum"] = 10000
	--赤炼石+1赠(3304295) 22%
	tGamblersGaoJin_Reward[3308670][1][1] = {}
	tGamblersGaoJin_Reward[3308670][1][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308670][1][1]["ItemChance"] = 2200
	tGamblersGaoJin_Reward[3308670][1][1]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308670][1][1]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308670][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tGamblersGaoJin_Reward[3308670][1][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308670][1][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308670][1][1]["RewardItem"][1]["Id"] = 3304295
	tGamblersGaoJin_Reward[3308670][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308670][1][1]["Talk"] = tGamblersGaoJin_Text[3308670][1]
	tGamblersGaoJin_Reward[3308670][1][1]["Log"] = "0,0,3308670,1,12001066,2,3304295,1"
	--赤炼石+1赠*2(3304421) 23%
	tGamblersGaoJin_Reward[3308670][1][2] = {}
	tGamblersGaoJin_Reward[3308670][1][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308670][1][2]["ItemChance"] = 2300
	tGamblersGaoJin_Reward[3308670][1][2]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308670][1][2]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308670][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tGamblersGaoJin_Reward[3308670][1][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308670][1][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308670][1][2]["RewardItem"][1]["Id"] = 3304421
	tGamblersGaoJin_Reward[3308670][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308670][1][2]["Talk"] = tGamblersGaoJin_Text[3308670][2]
	tGamblersGaoJin_Reward[3308670][1][2]["Log"] = "0,0,3308670,1,12001066,2,3304421,1"
	--赤炼石+1赠*3(3304422) 20%
	tGamblersGaoJin_Reward[3308670][1][3] = {}
	tGamblersGaoJin_Reward[3308670][1][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308670][1][3]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[3308670][1][3]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308670][1][3]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308670][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tGamblersGaoJin_Reward[3308670][1][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308670][1][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308670][1][3]["RewardItem"][1]["Id"] = 3304422
	tGamblersGaoJin_Reward[3308670][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308670][1][3]["Talk"] = tGamblersGaoJin_Text[3308670][3]
	tGamblersGaoJin_Reward[3308670][1][3]["Log"] = "0,0,3308670,1,12001066,2,3304422,1"
	--赤炼石+1赠*4(3304423) 17%
	tGamblersGaoJin_Reward[3308670][1][4] = {}
	tGamblersGaoJin_Reward[3308670][1][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308670][1][4]["ItemChance"] = 1700
	tGamblersGaoJin_Reward[3308670][1][4]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308670][1][4]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308670][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tGamblersGaoJin_Reward[3308670][1][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308670][1][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308670][1][4]["RewardItem"][1]["Id"] = 3304423
	tGamblersGaoJin_Reward[3308670][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308670][1][4]["Talk"] = tGamblersGaoJin_Text[3308670][4]
	tGamblersGaoJin_Reward[3308670][1][4]["Log"] = "0,0,3308670,1,12001066,2,3304423,1"
	--赤炼石+1赠*5(3304424) 11.3%
	tGamblersGaoJin_Reward[3308670][1][5] = {}
	tGamblersGaoJin_Reward[3308670][1][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308670][1][5]["ItemChance"] = 1130
	tGamblersGaoJin_Reward[3308670][1][5]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308670][1][5]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308670][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tGamblersGaoJin_Reward[3308670][1][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308670][1][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308670][1][5]["RewardItem"][1]["Id"] = 3304424
	tGamblersGaoJin_Reward[3308670][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308670][1][5]["Talk"] = tGamblersGaoJin_Text[3308670][5]
	tGamblersGaoJin_Reward[3308670][1][5]["Log"] = "0,0,3308670,1,12001066,2,3304424,1"
	--赤炼石+5赠(3304299) 6.6%
	tGamblersGaoJin_Reward[3308670][1][6] = {}
	tGamblersGaoJin_Reward[3308670][1][6]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308670][1][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308670][1][6]["ItemChance"] = 660
	tGamblersGaoJin_Reward[3308670][1][6]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308670][1][6]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308670][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tGamblersGaoJin_Reward[3308670][1][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308670][1][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308670][1][6]["RewardItem"][1]["Id"] = 3304299
	tGamblersGaoJin_Reward[3308670][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308670][1][6]["Talk"] = tGamblersGaoJin_Text[3308670][6]
	tGamblersGaoJin_Reward[3308670][1][6]["Log"] = "0,0,3308670,1,12001066,2,3304299,1"
	--赤炼石+6赠(3304301) 0.1%
	tGamblersGaoJin_Reward[3308670][1][7] = {}
	tGamblersGaoJin_Reward[3308670][1][7]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308670][1][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308670][1][7]["ItemChance"] = 10
	tGamblersGaoJin_Reward[3308670][1][7]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308670][1][7]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308670][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tGamblersGaoJin_Reward[3308670][1][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308670][1][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308670][1][7]["RewardItem"][1]["Id"] = 3304301
	tGamblersGaoJin_Reward[3308670][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308670][1][7]["Talk"] = tGamblersGaoJin_Text[3308670][7]
	tGamblersGaoJin_Reward[3308670][1][7]["Log"] = "0,0,3308670,1,12001066,2,3304301,1"
	
	-- 星陨石骰子（免费）
	tGamblersGaoJin_Reward[3308671] = {}
	tGamblersGaoJin_Reward[3308671]["TimeLimit"] = 3
	tGamblersGaoJin_Reward[3308671]["OverTimeDel"] = 1
	tGamblersGaoJin_Reward[3308671][1] = {}
	tGamblersGaoJin_Reward[3308671][1]["ItemChanceSum"] = 10000
	--微光星陨石(3304337) 22%
	tGamblersGaoJin_Reward[3308671][1][1] = {}
	tGamblersGaoJin_Reward[3308671][1][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308671][1][1]["ItemChance"] = 2200
	tGamblersGaoJin_Reward[3308671][1][1]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308671][1][1]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308671][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tGamblersGaoJin_Reward[3308671][1][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308671][1][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308671][1][1]["RewardItem"][1]["Id"] = 3304337
	tGamblersGaoJin_Reward[3308671][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308671][1][1]["Talk"] = tGamblersGaoJin_Text[3308671][1]
	tGamblersGaoJin_Reward[3308671][1][1]["Log"] = "0,0,3308671,1,12001066,2,3304337,1"
	--微光星陨石*2(3304338) 22%
	tGamblersGaoJin_Reward[3308671][1][2] = {}
	tGamblersGaoJin_Reward[3308671][1][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308671][1][2]["ItemChance"] = 2200
	tGamblersGaoJin_Reward[3308671][1][2]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308671][1][2]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308671][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tGamblersGaoJin_Reward[3308671][1][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308671][1][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308671][1][2]["RewardItem"][1]["Id"] = 3304338
	tGamblersGaoJin_Reward[3308671][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308671][1][2]["Talk"] = tGamblersGaoJin_Text[3308671][2]
	tGamblersGaoJin_Reward[3308671][1][2]["Log"] = "0,0,3308671,1,12001066,2,3304338,1"
	--微光星陨石*3(3304339) 20%
	tGamblersGaoJin_Reward[3308671][1][3] = {}
	tGamblersGaoJin_Reward[3308671][1][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308671][1][3]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[3308671][1][3]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308671][1][3]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308671][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tGamblersGaoJin_Reward[3308671][1][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308671][1][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308671][1][3]["RewardItem"][1]["Id"] = 3304339
	tGamblersGaoJin_Reward[3308671][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308671][1][3]["Talk"] = tGamblersGaoJin_Text[3308671][3]
	tGamblersGaoJin_Reward[3308671][1][3]["Log"] = "0,0,3308671,1,12001066,2,3304339,1"
	--微光星陨石*4(3304340) 18%
	tGamblersGaoJin_Reward[3308671][1][4] = {}
	tGamblersGaoJin_Reward[3308671][1][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308671][1][4]["ItemChance"] = 1800
	tGamblersGaoJin_Reward[3308671][1][4]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308671][1][4]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308671][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tGamblersGaoJin_Reward[3308671][1][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308671][1][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308671][1][4]["RewardItem"][1]["Id"] = 3304340
	tGamblersGaoJin_Reward[3308671][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308671][1][4]["Talk"] = tGamblersGaoJin_Text[3308671][4]
	tGamblersGaoJin_Reward[3308671][1][4]["Log"] = "0,0,3308671,1,12001066,2,3304340,1"
	--微光星陨石*5(3304341) 11.3%
	tGamblersGaoJin_Reward[3308671][1][5] = {}
	tGamblersGaoJin_Reward[3308671][1][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308671][1][5]["ItemChance"] = 1130
	tGamblersGaoJin_Reward[3308671][1][5]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308671][1][5]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308671][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tGamblersGaoJin_Reward[3308671][1][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308671][1][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308671][1][5]["RewardItem"][1]["Id"] = 3304341
	tGamblersGaoJin_Reward[3308671][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308671][1][5]["Talk"] = tGamblersGaoJin_Text[3308671][5]
	tGamblersGaoJin_Reward[3308671][1][5]["Log"] = "0,0,3308671,1,12001066,2,3304341,1"
	--晶莹星陨石(3304347) 6.6%
	tGamblersGaoJin_Reward[3308671][1][6] = {}
	tGamblersGaoJin_Reward[3308671][1][6]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308671][1][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308671][1][6]["ItemChance"] = 660
	tGamblersGaoJin_Reward[3308671][1][6]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308671][1][6]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308671][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tGamblersGaoJin_Reward[3308671][1][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308671][1][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308671][1][6]["RewardItem"][1]["Id"] = 3304347
	tGamblersGaoJin_Reward[3308671][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308671][1][6]["Talk"] = tGamblersGaoJin_Text[3308671][6]
	tGamblersGaoJin_Reward[3308671][1][6]["Log"] = "0,0,3308671,1,12001066,2,3304347,1"
	--璀璨星陨石(3009003) 0.1%
	tGamblersGaoJin_Reward[3308671][1][7] = {}
	tGamblersGaoJin_Reward[3308671][1][7]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308671][1][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308671][1][7]["ItemChance"] = 10
	tGamblersGaoJin_Reward[3308671][1][7]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308671][1][7]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308671][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tGamblersGaoJin_Reward[3308671][1][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308671][1][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308671][1][7]["RewardItem"][1]["Id"] = 3009003
	tGamblersGaoJin_Reward[3308671][1][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGamblersGaoJin_Reward[3308671][1][7]["Talk"] = tGamblersGaoJin_Text[3308671][7]
	tGamblersGaoJin_Reward[3308671][1][7]["Log"] = "0,0,3308671,1,12001066,2,3009003,1"
	
	-- 气力值骰子（免费）
	tGamblersGaoJin_Reward[3308672] = {}
	tGamblersGaoJin_Reward[3308672]["TimeLimit"] = 3
	tGamblersGaoJin_Reward[3308672]["OverTimeDel"] = 1
	tGamblersGaoJin_Reward[3308672][1] = {}
	tGamblersGaoJin_Reward[3308672][1]["ItemChanceSum"] = 10000
	--20气力值(3008185) 22%
	tGamblersGaoJin_Reward[3308672][1][1] = {}
	tGamblersGaoJin_Reward[3308672][1][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308672][1][1]["ItemChance"] = 2200
	tGamblersGaoJin_Reward[3308672][1][1]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308672][1][1]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308672][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tGamblersGaoJin_Reward[3308672][1][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308672][1][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308672][1][1]["RewardItem"][1]["Id"] = 3008185
	tGamblersGaoJin_Reward[3308672][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308672][1][1]["Talk"] = tGamblersGaoJin_Text[3308672][1]
	tGamblersGaoJin_Reward[3308672][1][1]["Log"] = "0,0,3308672,1,12001066,2,3008185,1"
	--30气力值(3304319) 22%
	tGamblersGaoJin_Reward[3308672][1][2] = {}
	tGamblersGaoJin_Reward[3308672][1][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308672][1][2]["ItemChance"] = 2200
	tGamblersGaoJin_Reward[3308672][1][2]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308672][1][2]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308672][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tGamblersGaoJin_Reward[3308672][1][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308672][1][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308672][1][2]["RewardItem"][1]["Id"] = 3304319
	tGamblersGaoJin_Reward[3308672][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308672][1][2]["Talk"] = tGamblersGaoJin_Text[3308672][2]
	tGamblersGaoJin_Reward[3308672][1][2]["Log"] = "0,0,3308672,1,12001066,2,3304319,1"
	--50气力值(3008186) 20%
	tGamblersGaoJin_Reward[3308672][1][3] = {}
	tGamblersGaoJin_Reward[3308672][1][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308672][1][3]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[3308672][1][3]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308672][1][3]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308672][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tGamblersGaoJin_Reward[3308672][1][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308672][1][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308672][1][3]["RewardItem"][1]["Id"] = 3008186
	tGamblersGaoJin_Reward[3308672][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308672][1][3]["Talk"] = tGamblersGaoJin_Text[3308672][3]
	tGamblersGaoJin_Reward[3308672][1][3]["Log"] = "0,0,3308672,1,12001066,2,3008186,1"
	--60气力值(3304322) 16%
	tGamblersGaoJin_Reward[3308672][1][4] = {}
	tGamblersGaoJin_Reward[3308672][1][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308672][1][4]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[3308672][1][4]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308672][1][4]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308672][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tGamblersGaoJin_Reward[3308672][1][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308672][1][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308672][1][4]["RewardItem"][1]["Id"] = 3304322
	tGamblersGaoJin_Reward[3308672][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308672][1][4]["Talk"] = tGamblersGaoJin_Text[3308672][4]
	tGamblersGaoJin_Reward[3308672][1][4]["Log"] = "0,0,3308672,1,12001066,2,3304322,1"
	--80气力值(3304323) 11%
	tGamblersGaoJin_Reward[3308672][1][5] = {}
	tGamblersGaoJin_Reward[3308672][1][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308672][1][5]["ItemChance"] = 1100
	tGamblersGaoJin_Reward[3308672][1][5]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308672][1][5]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308672][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tGamblersGaoJin_Reward[3308672][1][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308672][1][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308672][1][5]["RewardItem"][1]["Id"] = 3304323
	tGamblersGaoJin_Reward[3308672][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308672][1][5]["Talk"] = tGamblersGaoJin_Text[3308672][5]
	tGamblersGaoJin_Reward[3308672][1][5]["Log"] = "0,0,3308672,1,12001066,2,3304323,1"
	--1500气力值(3008195) 8.9%
	tGamblersGaoJin_Reward[3308672][1][6] = {}
	tGamblersGaoJin_Reward[3308672][1][6]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308672][1][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308672][1][6]["ItemChance"] = 890
	tGamblersGaoJin_Reward[3308672][1][6]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308672][1][6]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308672][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tGamblersGaoJin_Reward[3308672][1][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308672][1][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308672][1][6]["RewardItem"][1]["Id"] = 3008195
	tGamblersGaoJin_Reward[3308672][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308672][1][6]["Talk"] = tGamblersGaoJin_Text[3308672][6]
	tGamblersGaoJin_Reward[3308672][1][6]["Log"] = "0,0,3308672,1,12001066,2,3008195,1"
	--4000气力值(3008199) 0.1%
	tGamblersGaoJin_Reward[3308672][1][7] = {}
	tGamblersGaoJin_Reward[3308672][1][7]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308672][1][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308672][1][7]["ItemChance"] = 10
	tGamblersGaoJin_Reward[3308672][1][7]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308672][1][7]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308672][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tGamblersGaoJin_Reward[3308672][1][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308672][1][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308672][1][7]["RewardItem"][1]["Id"] = 3008199
	tGamblersGaoJin_Reward[3308672][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308672][1][7]["Talk"] = tGamblersGaoJin_Text[3308672][7]
	tGamblersGaoJin_Reward[3308672][1][7]["Log"] = "0,0,3308672,1,12001066,2,3008199,1"
	
	--金币骰子（免费）
	tGamblersGaoJin_Reward[3308673] = {}
	tGamblersGaoJin_Reward[3308673]["TimeLimit"] = 3
	tGamblersGaoJin_Reward[3308673]["OverTimeDel"] = 1
	tGamblersGaoJin_Reward[3308673][1] = {}
	tGamblersGaoJin_Reward[3308673][1]["ItemChanceSum"] = 10000
	--50金币 25%
	tGamblersGaoJin_Reward[3308673][1][1] = {}
	tGamblersGaoJin_Reward[3308673][1][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308673][1][1]["ItemChance"] = 2500
	tGamblersGaoJin_Reward[3308673][1][1]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308673][1][1]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308673][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tGamblersGaoJin_Reward[3308673][1][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308673][1][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308673][1][1]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308673][1][1]["RewardItem"][1]["Attr"] = "0 50"
	tGamblersGaoJin_Reward[3308673][1][1]["Talk"] = tGamblersGaoJin_Text[3308664][1][1]
	tGamblersGaoJin_Reward[3308673][1][1]["Log"] = "0,0,3308673,1,12001066,2,3303926,50"
	--100金币 23%
	tGamblersGaoJin_Reward[3308673][1][2] = {}
	tGamblersGaoJin_Reward[3308673][1][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308673][1][2]["ItemChance"] = 2300
	tGamblersGaoJin_Reward[3308673][1][2]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308673][1][2]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308673][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tGamblersGaoJin_Reward[3308673][1][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308673][1][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308673][1][2]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308673][1][2]["RewardItem"][1]["Attr"] = "0 100"
	tGamblersGaoJin_Reward[3308673][1][2]["Talk"] = tGamblersGaoJin_Text[3308664][1][2]
	tGamblersGaoJin_Reward[3308673][1][2]["Log"] = "0,0,3308673,1,12001066,2,3303926,100"
	--150金币 20%
	tGamblersGaoJin_Reward[3308673][1][3] = {}
	tGamblersGaoJin_Reward[3308673][1][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308673][1][3]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[3308673][1][3]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308673][1][3]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308673][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tGamblersGaoJin_Reward[3308673][1][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308673][1][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308673][1][3]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308673][1][3]["RewardItem"][1]["Attr"] = "0 150"
	tGamblersGaoJin_Reward[3308673][1][3]["Talk"] = tGamblersGaoJin_Text[3308664][1][3]
	tGamblersGaoJin_Reward[3308673][1][3]["Log"] = "0,0,3308673,1,12001066,2,3303926,150"
	--200金币 17%
	tGamblersGaoJin_Reward[3308673][1][4] = {}
	tGamblersGaoJin_Reward[3308673][1][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308673][1][4]["ItemChance"] = 1700
	tGamblersGaoJin_Reward[3308673][1][4]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308673][1][4]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308673][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tGamblersGaoJin_Reward[3308673][1][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308673][1][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308673][1][4]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308673][1][4]["RewardItem"][1]["Attr"] = "0 200"
	tGamblersGaoJin_Reward[3308673][1][4]["Talk"] = tGamblersGaoJin_Text[3308664][1][4]
	tGamblersGaoJin_Reward[3308673][1][4]["Log"] = "0,0,3308673,1,12001066,2,3303926,200"
	--250金币 11.3%
	tGamblersGaoJin_Reward[3308673][1][5] = {}
	tGamblersGaoJin_Reward[3308673][1][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308673][1][5]["ItemChance"] = 1130
	tGamblersGaoJin_Reward[3308673][1][5]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308673][1][5]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308673][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tGamblersGaoJin_Reward[3308673][1][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308673][1][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308673][1][5]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308673][1][5]["RewardItem"][1]["Attr"] = "0 250"
	tGamblersGaoJin_Reward[3308673][1][5]["Talk"] = tGamblersGaoJin_Text[3308664][1][5]
	tGamblersGaoJin_Reward[3308673][1][5]["Log"] = "0,0,3308673,1,12001066,2,3303926,250"
	--3000金币 3.6%
	tGamblersGaoJin_Reward[3308673][1][6] = {}
	tGamblersGaoJin_Reward[3308673][1][6]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308673][1][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308673][1][6]["ItemChance"] = 360
	tGamblersGaoJin_Reward[3308673][1][6]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308673][1][6]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308673][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tGamblersGaoJin_Reward[3308673][1][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308673][1][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308673][1][6]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308673][1][6]["RewardItem"][1]["Attr"] = "0 3000"
	tGamblersGaoJin_Reward[3308673][1][6]["Talk"] = tGamblersGaoJin_Text[3308664][1][6]
	tGamblersGaoJin_Reward[3308673][1][6]["Log"] = "0,0,3308673,1,12001066,2,3303926,3000"
	--10000金币 0.1%
	tGamblersGaoJin_Reward[3308673][1][7] = {}
	tGamblersGaoJin_Reward[3308673][1][7]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308673][1][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308673][1][7]["ItemChance"] = 10
	tGamblersGaoJin_Reward[3308673][1][7]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308673][1][7]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308673][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tGamblersGaoJin_Reward[3308673][1][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308673][1][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308673][1][7]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308673][1][7]["RewardItem"][1]["Attr"] = "0 10000"
	tGamblersGaoJin_Reward[3308673][1][7]["Talk"] = tGamblersGaoJin_Text[3308664][1][7]
	tGamblersGaoJin_Reward[3308673][1][7]["Log"] = "0,0,3308673,1,12001066,2,3303926,10000"
	
	-- 神纹精粹骰子（免费）
	tGamblersGaoJin_Reward[3308674] = {}
	tGamblersGaoJin_Reward[3308674]["OverTimeDel"] = 1
	tGamblersGaoJin_Reward[3308674]["TimeLimit"] = 3
	tGamblersGaoJin_Reward[3308674][1] = {}
	tGamblersGaoJin_Reward[3308674][1]["ItemChanceSum"] = 10000
	--万能神纹精粹*2 24%
	tGamblersGaoJin_Reward[3308674][1][1] = {}
	tGamblersGaoJin_Reward[3308674][1][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308674][1][1]["ItemChance"] = 2400
	tGamblersGaoJin_Reward[3308674][1][1]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308674][1][1]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308674][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tGamblersGaoJin_Reward[3308674][1][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308674][1][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308674][1][1]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308674][1][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tGamblersGaoJin_Reward[3308674][1][1]["Talk"] = tGamblersGaoJin_Text[3308667][1][1]
	tGamblersGaoJin_Reward[3308674][1][1]["Log"] = "0,0,3308674,1,12001066,2,4060001,2"
	--万能神纹精粹*4 23%
	tGamblersGaoJin_Reward[3308674][1][2] = {}
	tGamblersGaoJin_Reward[3308674][1][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308674][1][2]["ItemChance"] = 2300
	tGamblersGaoJin_Reward[3308674][1][2]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308674][1][2]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308674][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tGamblersGaoJin_Reward[3308674][1][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308674][1][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308674][1][2]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308674][1][2]["RewardItem"][1]["Attr"] = "0 4 3"
	tGamblersGaoJin_Reward[3308674][1][2]["Talk"] = tGamblersGaoJin_Text[3308667][1][2]
	tGamblersGaoJin_Reward[3308674][1][2]["Log"] = "0,0,3308674,1,12001066,2,4060001,4"
	--万能神纹精粹*6 20%
	tGamblersGaoJin_Reward[3308674][1][3] = {}
	tGamblersGaoJin_Reward[3308674][1][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308674][1][3]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[3308674][1][3]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308674][1][3]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308674][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tGamblersGaoJin_Reward[3308674][1][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308674][1][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308674][1][3]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308674][1][3]["RewardItem"][1]["Attr"] = "0 6 3"
	tGamblersGaoJin_Reward[3308674][1][3]["Talk"] = tGamblersGaoJin_Text[3308667][1][3]
	tGamblersGaoJin_Reward[3308674][1][3]["Log"] = "0,0,3308674,1,12001066,2,4060001,6"
	--万能神纹精粹*8 17%
	tGamblersGaoJin_Reward[3308674][1][4] = {}
	tGamblersGaoJin_Reward[3308674][1][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308674][1][4]["ItemChance"] = 1700
	tGamblersGaoJin_Reward[3308674][1][4]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308674][1][4]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308674][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tGamblersGaoJin_Reward[3308674][1][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308674][1][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308674][1][4]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308674][1][4]["RewardItem"][1]["Attr"] = "0 8 3"
	tGamblersGaoJin_Reward[3308674][1][4]["Talk"] = tGamblersGaoJin_Text[3308667][1][4]
	tGamblersGaoJin_Reward[3308674][1][4]["Log"] = "0,0,3308674,1,12001066,2,4060001,8"
	--万能神纹精粹*10 10.3%
	tGamblersGaoJin_Reward[3308674][1][5] = {}
	tGamblersGaoJin_Reward[3308674][1][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308674][1][5]["ItemChance"] = 1030
	tGamblersGaoJin_Reward[3308674][1][5]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308674][1][5]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308674][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tGamblersGaoJin_Reward[3308674][1][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308674][1][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308674][1][5]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308674][1][5]["RewardItem"][1]["Attr"] = "0 10 3"
	tGamblersGaoJin_Reward[3308674][1][5]["Talk"] = tGamblersGaoJin_Text[3308667][1][5]
	tGamblersGaoJin_Reward[3308674][1][5]["Log"] = "0,0,3308674,1,12001066,2,4060001,10"
	--万能神纹精粹*177 5.6%
	tGamblersGaoJin_Reward[3308674][1][6] = {}
	tGamblersGaoJin_Reward[3308674][1][6]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308674][1][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308674][1][6]["ItemChance"] = 560
	tGamblersGaoJin_Reward[3308674][1][6]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308674][1][6]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308674][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tGamblersGaoJin_Reward[3308674][1][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308674][1][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308674][1][6]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308674][1][6]["RewardItem"][1]["Attr"] = "0 177 3"
	tGamblersGaoJin_Reward[3308674][1][6]["Talk"] = tGamblersGaoJin_Text[3308667][1][6]
	tGamblersGaoJin_Reward[3308674][1][6]["Log"] = "0,0,3308674,1,12001066,2,4060001,177"
	--万能神纹精粹*324 0.1%
	tGamblersGaoJin_Reward[3308674][1][7] = {}
	tGamblersGaoJin_Reward[3308674][1][7]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3308674][1][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3308674][1][7]["ItemChance"] = 10
	tGamblersGaoJin_Reward[3308674][1][7]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3308674][1][7]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3308674][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tGamblersGaoJin_Reward[3308674][1][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308674][1][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308674][1][7]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308674][1][7]["RewardItem"][1]["Attr"] = "0 324 3"
	tGamblersGaoJin_Reward[3308674][1][7]["Talk"] = tGamblersGaoJin_Text[3308667][1][7]
	tGamblersGaoJin_Reward[3308674][1][7]["Log"] = "0,0,3308674,1,12001066,2,4060001,324"
	
	--100玩家金币包
	tGamblersGaoJin_Reward[3308777] = {}
	tGamblersGaoJin_Reward[3308777]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308777]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308777]["DeleteItem"][1]["Id"] = 3308777
	tGamblersGaoJin_Reward[3308777]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308777]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308777]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308777]["RewardItem"][1]["Attr"] = "0 100"
	tGamblersGaoJin_Reward[3308777]["LogId"] =12001066
	--150玩家金币包
	tGamblersGaoJin_Reward[3308778] = {}
	tGamblersGaoJin_Reward[3308778]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308778]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308778]["DeleteItem"][1]["Id"] = 3308778
	tGamblersGaoJin_Reward[3308778]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308778]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308778]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308778]["RewardItem"][1]["Attr"] = "0 150"
	tGamblersGaoJin_Reward[3308778]["LogId"] =12001066
	--200玩家金币包
	tGamblersGaoJin_Reward[3308779] = {}
	tGamblersGaoJin_Reward[3308779]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308779]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308779]["DeleteItem"][1]["Id"] = 3308779
	tGamblersGaoJin_Reward[3308779]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308779]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308779]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308779]["RewardItem"][1]["Attr"] = "0 200"
	tGamblersGaoJin_Reward[3308779]["LogId"] =12001066
	--300玩家金币包
	tGamblersGaoJin_Reward[3308780] = {}
	tGamblersGaoJin_Reward[3308780]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308780]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308780]["DeleteItem"][1]["Id"] = 3308780
	tGamblersGaoJin_Reward[3308780]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308780]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308780]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308780]["RewardItem"][1]["Attr"] = "0 300"
	tGamblersGaoJin_Reward[3308780]["LogId"] =12001066
	--400玩家金币包
	tGamblersGaoJin_Reward[3308781] = {}
	tGamblersGaoJin_Reward[3308781]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308781]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308781]["DeleteItem"][1]["Id"] = 3308781
	tGamblersGaoJin_Reward[3308781]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308781]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308781]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308781]["RewardItem"][1]["Attr"] = "0 400"
	tGamblersGaoJin_Reward[3308781]["LogId"] =12001066
	--500玩家金币包
	tGamblersGaoJin_Reward[3308782] = {}
	tGamblersGaoJin_Reward[3308782]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308782]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308782]["DeleteItem"][1]["Id"] = 3308782
	tGamblersGaoJin_Reward[3308782]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308782]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308782]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308782]["RewardItem"][1]["Attr"] = "0 500"
	tGamblersGaoJin_Reward[3308782]["LogId"] =12001066
	--1000玩家金币包
	tGamblersGaoJin_Reward[3308783] = {}
	tGamblersGaoJin_Reward[3308783]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308783]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308783]["DeleteItem"][1]["Id"] = 3308783
	tGamblersGaoJin_Reward[3308783]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308783]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308783]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308783]["RewardItem"][1]["Attr"] = "0 1000"
	tGamblersGaoJin_Reward[3308783]["LogId"] =12001066
	--1500玩家金币包
	tGamblersGaoJin_Reward[3308784] = {}
	tGamblersGaoJin_Reward[3308784]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308784]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308784]["DeleteItem"][1]["Id"] = 3308784
	tGamblersGaoJin_Reward[3308784]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308784]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308784]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308784]["RewardItem"][1]["Attr"] = "0 1500"
	tGamblersGaoJin_Reward[3308784]["LogId"] =12001066
	--2000玩家金币包
	tGamblersGaoJin_Reward[3308785] = {}
	tGamblersGaoJin_Reward[3308785]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308785]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308785]["DeleteItem"][1]["Id"] = 3308785
	tGamblersGaoJin_Reward[3308785]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308785]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308785]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308785]["RewardItem"][1]["Attr"] = "0 2000"
	tGamblersGaoJin_Reward[3308785]["LogId"] =12001066
	--3000玩家金币包
	tGamblersGaoJin_Reward[3308786] = {}
	tGamblersGaoJin_Reward[3308786]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308786]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308786]["DeleteItem"][1]["Id"] = 3308786
	tGamblersGaoJin_Reward[3308786]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308786]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308786]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308786]["RewardItem"][1]["Attr"] = "0 3000"
	tGamblersGaoJin_Reward[3308786]["LogId"] =12001066
	--4000玩家金币包
	tGamblersGaoJin_Reward[3308787] = {}
	tGamblersGaoJin_Reward[3308787]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308787]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308787]["DeleteItem"][1]["Id"] = 3308787
	tGamblersGaoJin_Reward[3308787]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308787]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308787]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308787]["RewardItem"][1]["Attr"] = "0 4000"
	tGamblersGaoJin_Reward[3308787]["LogId"] =12001066
	--5000玩家金币包
	tGamblersGaoJin_Reward[3308788] = {}
	tGamblersGaoJin_Reward[3308788]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308788]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308788]["DeleteItem"][1]["Id"] = 3308788
	tGamblersGaoJin_Reward[3308788]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308788]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308788]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308788]["RewardItem"][1]["Attr"] = "0 5000"
	tGamblersGaoJin_Reward[3308788]["LogId"] =12001066
	--50000玩家金币包
	tGamblersGaoJin_Reward[3308789] = {}
	tGamblersGaoJin_Reward[3308789]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308789]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308789]["DeleteItem"][1]["Id"] = 3308789
	tGamblersGaoJin_Reward[3308789]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308789]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308789]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308789]["RewardItem"][1]["Attr"] = "0 50000"
	tGamblersGaoJin_Reward[3308789]["LogId"] =12001066
	--2神纹精粹礼包
	tGamblersGaoJin_Reward[3308790] = {}
	tGamblersGaoJin_Reward[3308790]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308790]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308790]["DeleteItem"][1]["Id"] = 3308790
	tGamblersGaoJin_Reward[3308790]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308790]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308790]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308790]["RewardItem"][1]["Attr"] = "0 2 3"
	tGamblersGaoJin_Reward[3308790]["LogId"] =12001066
	--4神纹精粹礼包
	tGamblersGaoJin_Reward[3308791] = {}
	tGamblersGaoJin_Reward[3308791]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308791]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308791]["DeleteItem"][1]["Id"] = 3308791
	tGamblersGaoJin_Reward[3308791]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308791]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308791]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308791]["RewardItem"][1]["Attr"] = "0 4 3"
	tGamblersGaoJin_Reward[3308791]["LogId"] =12001066
	--6神纹精粹礼包
	tGamblersGaoJin_Reward[3308792] = {}
	tGamblersGaoJin_Reward[3308792]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308792]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308792]["DeleteItem"][1]["Id"] = 3308792
	tGamblersGaoJin_Reward[3308792]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308792]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308792]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308792]["RewardItem"][1]["Attr"] = "0 6 3"
	tGamblersGaoJin_Reward[3308792]["LogId"] =12001066
	--8神纹精粹礼包
	tGamblersGaoJin_Reward[3308793] = {}
	tGamblersGaoJin_Reward[3308793]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308793]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308793]["DeleteItem"][1]["Id"] = 3308793
	tGamblersGaoJin_Reward[3308793]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308793]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308793]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308793]["RewardItem"][1]["Attr"] = "0 8 3"
	tGamblersGaoJin_Reward[3308793]["LogId"] =12001066
	--10神纹精粹礼包
	tGamblersGaoJin_Reward[3308794] = {}
	tGamblersGaoJin_Reward[3308794]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308794]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308794]["DeleteItem"][1]["Id"] = 3308794
	tGamblersGaoJin_Reward[3308794]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308794]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308794]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308794]["RewardItem"][1]["Attr"] = "0 10 3"
	tGamblersGaoJin_Reward[3308794]["LogId"] =12001066
	--12神纹精粹礼包
	tGamblersGaoJin_Reward[3308795] = {}
	tGamblersGaoJin_Reward[3308795]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308795]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308795]["DeleteItem"][1]["Id"] = 3308795
	tGamblersGaoJin_Reward[3308795]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308795]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308795]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308795]["RewardItem"][1]["Attr"] = "0 12 3"
	tGamblersGaoJin_Reward[3308795]["LogId"] =12001066
	--20神纹精粹礼包
	tGamblersGaoJin_Reward[3308796] = {}
	tGamblersGaoJin_Reward[3308796]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308796]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308796]["DeleteItem"][1]["Id"] = 3308796
	tGamblersGaoJin_Reward[3308796]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308796]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308796]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308796]["RewardItem"][1]["Attr"] = "0 20 3"
	tGamblersGaoJin_Reward[3308796]["LogId"] =12001066
	--50神纹精粹礼包
	tGamblersGaoJin_Reward[3308797] = {}
	tGamblersGaoJin_Reward[3308797]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308797]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308797]["DeleteItem"][1]["Id"] = 3308797
	tGamblersGaoJin_Reward[3308797]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308797]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308797]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308797]["RewardItem"][1]["Attr"] = "0 50 3"
	tGamblersGaoJin_Reward[3308797]["LogId"] =12001066
	--177神纹精粹礼包
	tGamblersGaoJin_Reward[3308798] = {}
	tGamblersGaoJin_Reward[3308798]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308798]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308798]["DeleteItem"][1]["Id"] = 3308798
	tGamblersGaoJin_Reward[3308798]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308798]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308798]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308798]["RewardItem"][1]["Attr"] = "0 177 3"
	tGamblersGaoJin_Reward[3308798]["LogId"] =12001066
	--324神纹精粹礼包
	tGamblersGaoJin_Reward[3308799] = {}
	tGamblersGaoJin_Reward[3308799]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308799]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308799]["DeleteItem"][1]["Id"] = 3308799
	tGamblersGaoJin_Reward[3308799]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308799]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308799]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308799]["RewardItem"][1]["Attr"] = "0 324 3"
	tGamblersGaoJin_Reward[3308799]["LogId"] =12001066
	--500神纹精粹礼包
	tGamblersGaoJin_Reward[3308800] = {}
	tGamblersGaoJin_Reward[3308800]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308800]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308800]["DeleteItem"][1]["Id"] = 3308800
	tGamblersGaoJin_Reward[3308800]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308800]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308800]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308800]["RewardItem"][1]["Attr"] = "0 500 3"
	tGamblersGaoJin_Reward[3308800]["LogId"] =12001066
	--1000神纹精粹礼包
	tGamblersGaoJin_Reward[3308801] = {}
	tGamblersGaoJin_Reward[3308801]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308801]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308801]["DeleteItem"][1]["Id"] = 3308801
	tGamblersGaoJin_Reward[3308801]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308801]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308801]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308801]["RewardItem"][1]["Attr"] = "0 1000 3"
	tGamblersGaoJin_Reward[3308801]["LogId"] =12001066
	--5000神纹精粹礼包
	tGamblersGaoJin_Reward[3308802] = {}
	tGamblersGaoJin_Reward[3308802]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308802]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308802]["DeleteItem"][1]["Id"] = 3308802
	tGamblersGaoJin_Reward[3308802]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308802]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308802]["RewardItem"][1]["Id"] = 4060001
	tGamblersGaoJin_Reward[3308802]["RewardItem"][1]["Attr"] = "0 5000 3"
	tGamblersGaoJin_Reward[3308802]["LogId"] =12001066
	--小丑王碎片
	tGamblersGaoJin_Reward[3308695] = {}
	tGamblersGaoJin_Reward[3308695][1] = {}
	tGamblersGaoJin_Reward[3308695][1]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308695][1]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308695][1]["DeleteItem"][1]["Id"] = 3308695
	tGamblersGaoJin_Reward[3308695][1]["DeleteItem"][1]["ItemNum"] = 20
	tGamblersGaoJin_Reward[3308695][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308695][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308695][1]["RewardItem"][1]["Id"] = 3309101
	tGamblersGaoJin_Reward[3308695][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3308695][1]["LogId"] =12001066
	tGamblersGaoJin_Reward[3308695][1]["RewardNoNeedTip"] = 1
	tGamblersGaoJin_Reward[3308695][2] = {}
	tGamblersGaoJin_Reward[3308695][2]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308695][2]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308695][2]["DeleteItem"][1]["Id"] = 3308695
	tGamblersGaoJin_Reward[3308695][2]["DeleteItem"][1]["ItemNum"] = 1
	tGamblersGaoJin_Reward[3308695][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308695][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308695][2]["RewardItem"][1]["Id"] = 3308695
	tGamblersGaoJin_Reward[3308695][2]["RewardItem"][1]["Attr"] = "0 2"
	tGamblersGaoJin_Reward[3308695][2]["LogId"] =12001066
	tGamblersGaoJin_Reward[3308695][2]["RewardNoNeedTip"] = 1
	tGamblersGaoJin_Reward[3308695][3] = {}
	tGamblersGaoJin_Reward[3308695][3]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308695][3]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308695][3]["DeleteItem"][1]["Id"] = 3308695
	tGamblersGaoJin_Reward[3308695][3]["DeleteItem"][1]["ItemNum"] = 1
	tGamblersGaoJin_Reward[3308695][3]["RewardStrengthValue"] = {}
	tGamblersGaoJin_Reward[3308695][3]["RewardStrengthValue"]["Value"] = 200
	tGamblersGaoJin_Reward[3308695][3]["LogId"] =12001066
	--至尊小丑王碎片
	tGamblersGaoJin_Reward[3308696] = {}
	tGamblersGaoJin_Reward[3308696]["ChipAdd"] = 2
	tGamblersGaoJin_Reward[3308696][1] = {}
	tGamblersGaoJin_Reward[3308696][1]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308696][1]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308696][1]["DeleteItem"][1]["Id"] = 3308696
	tGamblersGaoJin_Reward[3308696][1]["DeleteItem"][1]["ItemNum"] = 30
	tGamblersGaoJin_Reward[3308696][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308696][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308696][1]["RewardItem"][1]["Id"] = 195225
	tGamblersGaoJin_Reward[3308696][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tGamblersGaoJin_Reward[3308696][1]["LogId"] =12001066
	tGamblersGaoJin_Reward[3308696][1]["RewardNoNeedTip"] = 1
	tGamblersGaoJin_Reward[3308696][2] = {}
	tGamblersGaoJin_Reward[3308696][2]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308696][2]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308696][2]["DeleteItem"][1]["Id"] = 3308696
	tGamblersGaoJin_Reward[3308696][2]["DeleteItem"][1]["ItemNum"] = 1
	tGamblersGaoJin_Reward[3308696][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308696][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308696][2]["RewardItem"][1]["Id"] = 3308696
	tGamblersGaoJin_Reward[3308696][2]["RewardItem"][1]["Attr"] = "0 2"
	tGamblersGaoJin_Reward[3308696][2]["LogId"] =12001066
	tGamblersGaoJin_Reward[3308696][2]["RewardNoNeedTip"] = 1
	tGamblersGaoJin_Reward[3308696][3] = {}
	tGamblersGaoJin_Reward[3308696][3]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308696][3]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308696][3]["DeleteItem"][1]["Id"] = 3308696
	tGamblersGaoJin_Reward[3308696][3]["DeleteItem"][1]["ItemNum"] = 1
	tGamblersGaoJin_Reward[3308696][3]["RewardStrengthValue"] = {}
	tGamblersGaoJin_Reward[3308696][3]["RewardStrengthValue"]["Value"] = 200
	tGamblersGaoJin_Reward[3308696][3]["LogId"] =12001066
	--大鱼海棠碎片
	tGamblersGaoJin_Reward[3308697] = {}
	tGamblersGaoJin_Reward[3308697][1] = {}
	tGamblersGaoJin_Reward[3308697][1]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308697][1]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308697][1]["DeleteItem"][1]["Id"] = 3308697
	tGamblersGaoJin_Reward[3308697][1]["DeleteItem"][1]["ItemNum"] = 20
	tGamblersGaoJin_Reward[3308697][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308697][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308697][1]["RewardItem"][1]["Id"] = 200625
	tGamblersGaoJin_Reward[3308697][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tGamblersGaoJin_Reward[3308697][1]["LogId"] =12001066
	tGamblersGaoJin_Reward[3308697][1]["RewardNoNeedTip"] = 1
	tGamblersGaoJin_Reward[3308697][2] = {}
	tGamblersGaoJin_Reward[3308697][2]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308697][2]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308697][2]["DeleteItem"][1]["Id"] = 3308697
	tGamblersGaoJin_Reward[3308697][2]["DeleteItem"][1]["ItemNum"] = 1
	tGamblersGaoJin_Reward[3308697][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308697][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308697][2]["RewardItem"][1]["Id"] = 3308697
	tGamblersGaoJin_Reward[3308697][2]["RewardItem"][1]["Attr"] = "0 2"
	tGamblersGaoJin_Reward[3308697][2]["LogId"] =12001066
	tGamblersGaoJin_Reward[3308697][2]["RewardNoNeedTip"] = 1
	tGamblersGaoJin_Reward[3308697][3] = {}
	tGamblersGaoJin_Reward[3308697][3]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308697][3]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308697][3]["DeleteItem"][1]["Id"] = 3308697
	tGamblersGaoJin_Reward[3308697][3]["DeleteItem"][1]["ItemNum"] = 1
	tGamblersGaoJin_Reward[3308697][3]["RewardStrengthValue"] = {}
	tGamblersGaoJin_Reward[3308697][3]["RewardStrengthValue"]["Value"] = 200
	tGamblersGaoJin_Reward[3308697][3]["LogId"] =12001066
	tGamblersGaoJin_Reward[3308697][4] = {}
	tGamblersGaoJin_Reward[3308697][4]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308697][4]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308697][4]["DeleteItem"][1]["Id"] = 3308697
	tGamblersGaoJin_Reward[3308697][4]["DeleteItem"][1]["ItemNum"] = 1
	tGamblersGaoJin_Reward[3308697][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308697][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308697][4]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3308697][4]["RewardItem"][1]["Attr"] = "0 500"
	tGamblersGaoJin_Reward[3308697][4]["LogId"] =12001066
	--大鱼海棠·凌波碎片
	tGamblersGaoJin_Reward[3308698] = {}
	tGamblersGaoJin_Reward[3308698]["ChipAdd"] = 2
	tGamblersGaoJin_Reward[3308698][1] = {}
	tGamblersGaoJin_Reward[3308698][1]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308698][1]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308698][1]["DeleteItem"][1]["Id"] = 3308698
	tGamblersGaoJin_Reward[3308698][1]["DeleteItem"][1]["ItemNum"] = 30
	tGamblersGaoJin_Reward[3308698][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308698][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308698][1]["RewardItem"][1]["Id"] = 200626
	tGamblersGaoJin_Reward[3308698][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tGamblersGaoJin_Reward[3308698][1]["LogId"] =12001066
	tGamblersGaoJin_Reward[3308698][1]["RewardNoNeedTip"] = 1
	tGamblersGaoJin_Reward[3308698][2] = {}
	tGamblersGaoJin_Reward[3308698][2]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308698][2]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308698][2]["DeleteItem"][1]["Id"] = 3308698
	tGamblersGaoJin_Reward[3308698][2]["DeleteItem"][1]["ItemNum"] = 1
	tGamblersGaoJin_Reward[3308698][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3308698][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3308698][2]["RewardItem"][1]["Id"] = 3308698
	tGamblersGaoJin_Reward[3308698][2]["RewardItem"][1]["Attr"] = "0 2"
	tGamblersGaoJin_Reward[3308698][2]["LogId"] =12001066
	tGamblersGaoJin_Reward[3308698][2]["RewardNoNeedTip"] = 1
	tGamblersGaoJin_Reward[3308698][3] = {}
	tGamblersGaoJin_Reward[3308698][3]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308698][3]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308698][3]["DeleteItem"][1]["Id"] = 3308698
	tGamblersGaoJin_Reward[3308698][3]["DeleteItem"][1]["ItemNum"] = 1
	tGamblersGaoJin_Reward[3308698][3]["RewardStrengthValue"] = {}
	tGamblersGaoJin_Reward[3308698][3]["RewardStrengthValue"]["Value"] = 200
	tGamblersGaoJin_Reward[3308698][3]["LogId"] =12001066
	--黑桃10
	tGamblersGaoJin_Reward[3308690] = {}
	tGamblersGaoJin_Reward[3308690]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308690]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308690]["DeleteItem"][1]["Id"] = 3308690
	tGamblersGaoJin_Reward[3308690]["RewardStrengthValue"] = {}
	tGamblersGaoJin_Reward[3308690]["RewardStrengthValue"]["Value"] = 20
	tGamblersGaoJin_Reward[3308690]["LogId"] =12001066
	--红桃10
	tGamblersGaoJin_Reward[3308675] = {}
	tGamblersGaoJin_Reward[3308675]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308675]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308675]["DeleteItem"][1]["Id"] = 3308675
	tGamblersGaoJin_Reward[3308675]["RewardStrengthValue"] = {}
	tGamblersGaoJin_Reward[3308675]["RewardStrengthValue"]["Value"] = 10
	tGamblersGaoJin_Reward[3308675]["LogId"] =12001066
	--方块10
	tGamblersGaoJin_Reward[3308680] = {}
	tGamblersGaoJin_Reward[3308680]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308680]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308680]["DeleteItem"][1]["Id"] = 3308680
	tGamblersGaoJin_Reward[3308680]["RewardStrengthValue"] = {}
	tGamblersGaoJin_Reward[3308680]["RewardStrengthValue"]["Value"] = 8
	tGamblersGaoJin_Reward[3308680]["LogId"] =12001066
	--草花10
	tGamblersGaoJin_Reward[3308685] = {}
	tGamblersGaoJin_Reward[3308685]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3308685]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3308685]["DeleteItem"][1]["Id"] = 3308685
	tGamblersGaoJin_Reward[3308685]["RewardStrengthValue"] = {}
	tGamblersGaoJin_Reward[3308685]["RewardStrengthValue"]["Value"] = 5
	tGamblersGaoJin_Reward[3308685]["LogId"] =12001066
	--+3赤炼石包
	tGamblersGaoJin_Reward[3309100] = {}
	tGamblersGaoJin_Reward[3309100]["OverTimeDel"] = 1
	tGamblersGaoJin_Reward[3309100]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3309100]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3309100]["DeleteItem"][1]["Id"] = 3309100
	tGamblersGaoJin_Reward[3309100]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3309100]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3309100]["RewardItem"][1]["Id"] = 730003
	tGamblersGaoJin_Reward[3309100]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tGamblersGaoJin_Reward[3309100]["LogId"] =12001066
	--卡牌大师可选包
	tGamblersGaoJin_Reward[3309101] = {}
	tGamblersGaoJin_Reward[3309101][1] = {}
	tGamblersGaoJin_Reward[3309101][1]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3309101][1]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3309101][1]["DeleteItem"][1]["Id"] = 3309101
	tGamblersGaoJin_Reward[3309101][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3309101][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3309101][1]["RewardItem"][1]["Id"] = 195215
	tGamblersGaoJin_Reward[3309101][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tGamblersGaoJin_Reward[3309101][1]["LogId"] =12001066
	tGamblersGaoJin_Reward[3309101][2] = {}
	tGamblersGaoJin_Reward[3309101][2]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3309101][2]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3309101][2]["DeleteItem"][1]["Id"] = 3309101
	tGamblersGaoJin_Reward[3309101][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3309101][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3309101][2]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[3309101][2]["RewardItem"][1]["Attr"] = "0 10000"
	tGamblersGaoJin_Reward[3309101][2]["LogId"] =12001066
	--卡牌大师外套包
	tGamblersGaoJin_Reward[3309611] = {}
	tGamblersGaoJin_Reward[3309611]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3309611]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3309611]["DeleteItem"][1]["Id"] = 3309611
	tGamblersGaoJin_Reward[3309611]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3309611]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3309611]["RewardItem"][1]["Id"] = 195215
	tGamblersGaoJin_Reward[3309611]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tGamblersGaoJin_Reward[3309611]["LogId"] =12001066
	--卡牌大师【传奇版】外套包
	tGamblersGaoJin_Reward[3309612] = {}
	tGamblersGaoJin_Reward[3309612]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3309612]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3309612]["DeleteItem"][1]["Id"] = 3309612
	tGamblersGaoJin_Reward[3309612]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3309612]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3309612]["RewardItem"][1]["Id"] = 195225
	tGamblersGaoJin_Reward[3309612]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tGamblersGaoJin_Reward[3309612]["LogId"] =12001066
	--大鱼海棠骑宠外套包
	tGamblersGaoJin_Reward[3309613] = {}
	tGamblersGaoJin_Reward[3309613]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3309613]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3309613]["DeleteItem"][1]["Id"] = 3309613
	tGamblersGaoJin_Reward[3309613]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3309613]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3309613]["RewardItem"][1]["Id"] = 200625
	tGamblersGaoJin_Reward[3309613]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tGamblersGaoJin_Reward[3309613]["LogId"] =12001066
	--大鱼海棠·凌波骑宠外套包
	tGamblersGaoJin_Reward[3309614] = {}
	tGamblersGaoJin_Reward[3309614]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3309614]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3309614]["DeleteItem"][1]["Id"] = 3309614
	tGamblersGaoJin_Reward[3309614]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3309614]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3309614]["RewardItem"][1]["Id"] = 200626
	tGamblersGaoJin_Reward[3309614]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tGamblersGaoJin_Reward[3309614]["LogId"] =12001066
	--非赠大鱼海棠·凌波骑宠外套包
	tGamblersGaoJin_Reward[3310848] = {}
	tGamblersGaoJin_Reward[3310848]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3310848]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3310848]["DeleteItem"][1]["Id"] = 3310848
	tGamblersGaoJin_Reward[3310848]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3310848]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3310848]["RewardItem"][1]["Id"] = 200626
	tGamblersGaoJin_Reward[3310848]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tGamblersGaoJin_Reward[3310848]["LogId"] =12001066
	--幻影魔牌发型包
	tGamblersGaoJin_Reward[3309615] = {}
	tGamblersGaoJin_Reward[3309615]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3309615]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3309615]["DeleteItem"][1]["Id"] = 3309615
	tGamblersGaoJin_Reward[3309615]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3309615]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3309615]["RewardItem"][1]["Id"] = 3309616
	tGamblersGaoJin_Reward[3309615]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[3309615]["LogId"] =12001066
	--明亮星陨石礼包
	tGamblersGaoJin_Reward[3310761] = {}
	tGamblersGaoJin_Reward[3310761]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3310761]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3310761]["DeleteItem"][1]["Id"] = 3310761
	tGamblersGaoJin_Reward[3310761]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3310761]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3310761]["RewardItem"][1]["Id"] = 3009001
	tGamblersGaoJin_Reward[3310761]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGamblersGaoJin_Reward[3310761]["LogId"] = 12001066
	--免费道具
	tGamblersGaoJin_Reward[22865] = {}
	tGamblersGaoJin_Reward[22865]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22865]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22865]["RewardItem"][1]["Id"] = 3308670
	tGamblersGaoJin_Reward[22865]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22865]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[22865]["RewardItem"][2]["Id"] = 3308671
	tGamblersGaoJin_Reward[22865]["RewardItem"][2]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22865]["RewardItem"][3] = {}
	tGamblersGaoJin_Reward[22865]["RewardItem"][3]["Id"] = 3308672
	tGamblersGaoJin_Reward[22865]["RewardItem"][3]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22865]["LogId"] =12001066
	-- 炮台
	tGamblersGaoJin_Reward[22867] = {}
	tGamblersGaoJin_Reward[22867][1] = {}
	tGamblersGaoJin_Reward[22867][1]["ItemChanceSum"] = 10000
	--大鱼海棠碎片 3308697 2.5%
	tGamblersGaoJin_Reward[22867][1][1] = {}
	tGamblersGaoJin_Reward[22867][1][1]["TellToAll"] = 1
	tGamblersGaoJin_Reward[22867][1][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][1][1]["ItemChance"] = 250
	tGamblersGaoJin_Reward[22867][1][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][1][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][1][1]["RewardItem"][1]["Id"] = 3308697
	tGamblersGaoJin_Reward[22867][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22867][1][1]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][1][1]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22867][1][1]["NpcId"] = {22871}
	--1000金币 3303926 1%
	tGamblersGaoJin_Reward[22867][1][2] = {}
	tGamblersGaoJin_Reward[22867][1][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][1][2]["ItemChance"] = 100
	tGamblersGaoJin_Reward[22867][1][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][1][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][1][2]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22867][1][2]["RewardItem"][1]["Attr"] = "0 1000"
	tGamblersGaoJin_Reward[22867][1][2]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][1][2]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22867][1][2]["NpcId"] = {22936,22937}
	--500金币 3303926 3%
	tGamblersGaoJin_Reward[22867][1][3] = {}
	tGamblersGaoJin_Reward[22867][1][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][1][3]["ItemChance"] = 300
	tGamblersGaoJin_Reward[22867][1][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][1][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][1][3]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22867][1][3]["RewardItem"][1]["Attr"] = "0 500"
	tGamblersGaoJin_Reward[22867][1][3]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][1][3]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22867][1][3]["NpcId"] = {22936,22937}
	--300金币 3303926 5%
	tGamblersGaoJin_Reward[22867][1][4] = {}
	tGamblersGaoJin_Reward[22867][1][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][1][4]["ItemChance"] = 500
	tGamblersGaoJin_Reward[22867][1][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][1][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][1][4]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22867][1][4]["RewardItem"][1]["Attr"] = "0 300"
	tGamblersGaoJin_Reward[22867][1][4]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][1][4]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22867][1][4]["NpcId"] = {22939}
	--100金币 3303926 10%
	tGamblersGaoJin_Reward[22867][1][5] = {}
	tGamblersGaoJin_Reward[22867][1][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][1][5]["ItemChance"] = 1000
	tGamblersGaoJin_Reward[22867][1][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][1][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][1][5]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22867][1][5]["RewardItem"][1]["Attr"] = "0 100"
	tGamblersGaoJin_Reward[22867][1][5]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][1][5]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22867][1][5]["NpcId"] = {22939}
	--50金币 3303926 16%
	tGamblersGaoJin_Reward[22867][1][6] = {}
	tGamblersGaoJin_Reward[22867][1][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][1][6]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[22867][1][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][1][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][1][6]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22867][1][6]["RewardItem"][1]["Attr"] = "0 50"
	tGamblersGaoJin_Reward[22867][1][6]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][1][6]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22867][1][6]["NpcId"] = {22939}
	--30金币 3303926 7.5%
	tGamblersGaoJin_Reward[22867][1][7] = {}
	tGamblersGaoJin_Reward[22867][1][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][1][7]["ItemChance"] = 750
	tGamblersGaoJin_Reward[22867][1][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][1][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][1][7]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22867][1][7]["RewardItem"][1]["Attr"] = "0 30"
	tGamblersGaoJin_Reward[22867][1][7]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][1][7]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22867][1][7]["NpcId"] = {22939}
	--10金币 3303926 5%
	tGamblersGaoJin_Reward[22867][1][8] = {}
	tGamblersGaoJin_Reward[22867][1][8]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][1][8]["ItemChance"] = 500
	tGamblersGaoJin_Reward[22867][1][8]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][1][8]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][1][8]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22867][1][8]["RewardItem"][1]["Attr"] = "0 10"
	tGamblersGaoJin_Reward[22867][1][8]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][1][8]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22867][1][8]["NpcId"] = {22939}
	--微光星陨石 3009000 20%
	tGamblersGaoJin_Reward[22867][1][9] = {}
	tGamblersGaoJin_Reward[22867][1][9]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][1][9]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[22867][1][9]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][1][9]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][1][9]["RewardItem"][1]["Id"] = 3009000
	tGamblersGaoJin_Reward[22867][1][9]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGamblersGaoJin_Reward[22867][1][9]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][1][9]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22867][1][9]["NpcId"] = {22934}
	--明亮星陨石 3009001 30%
	tGamblersGaoJin_Reward[22867][1][10] = {}
	tGamblersGaoJin_Reward[22867][1][10]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][1][10]["ItemChance"] = 3000
	tGamblersGaoJin_Reward[22867][1][10]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][1][10]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][1][10]["RewardItem"][1]["Id"] = 3009001
	tGamblersGaoJin_Reward[22867][1][10]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGamblersGaoJin_Reward[22867][1][10]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][1][10]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22867][1][10]["NpcId"] = {22934}
	--高级炮
	tGamblersGaoJin_Reward[22867][2] = {}
	tGamblersGaoJin_Reward[22867][2]["ItemChanceSum"] = 10000
	--大鱼海棠·凌波碎片 3308698 10%
	tGamblersGaoJin_Reward[22867][2][1] = {}
	tGamblersGaoJin_Reward[22867][2][1]["TellToAll"] = 1
	tGamblersGaoJin_Reward[22867][2][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][2][1]["ItemChance"] = 1000
	tGamblersGaoJin_Reward[22867][2][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][2][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][2][1]["RewardItem"][1]["Id"] = 3308698
	tGamblersGaoJin_Reward[22867][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22867][2][1]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][2][1]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22867][2][1]["NpcId"] = {22870}
	--大鱼海棠碎片 3308697 25%
	tGamblersGaoJin_Reward[22867][2][2] = {}
	tGamblersGaoJin_Reward[22867][2][2]["TellToAll"] = 1
	tGamblersGaoJin_Reward[22867][2][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][2][2]["ItemChance"] = 2500
	tGamblersGaoJin_Reward[22867][2][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][2][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][2][2]["RewardItem"][1]["Id"] = 3308697
	tGamblersGaoJin_Reward[22867][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22867][2][2]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][2][2]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22867][2][2]["NpcId"] = {22871}
	--1000金币 3303926 15%
	tGamblersGaoJin_Reward[22867][2][3] = {}
	tGamblersGaoJin_Reward[22867][2][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][2][3]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[22867][2][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][2][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][2][3]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22867][2][3]["RewardItem"][1]["Attr"] = "0 1000"
	tGamblersGaoJin_Reward[22867][2][3]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][2][3]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22867][2][3]["NpcId"] = {22936,22937}
	--500金币 3303926 14%
	tGamblersGaoJin_Reward[22867][2][4] = {}
	tGamblersGaoJin_Reward[22867][2][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][2][4]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[22867][2][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][2][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][2][4]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22867][2][4]["RewardItem"][1]["Attr"] = "0 500"
	tGamblersGaoJin_Reward[22867][2][4]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][2][4]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22867][2][4]["NpcId"] = {22936,22937}
	--300金币 3303926 14%
	tGamblersGaoJin_Reward[22867][2][5] = {}
	tGamblersGaoJin_Reward[22867][2][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][2][5]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[22867][2][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][2][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][2][5]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22867][2][5]["RewardItem"][1]["Attr"] = "0 300"
	tGamblersGaoJin_Reward[22867][2][5]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][2][5]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22867][2][5]["NpcId"] = {22939}
	--晶莹星陨石 3009002 15%
	tGamblersGaoJin_Reward[22867][2][6] = {}
	tGamblersGaoJin_Reward[22867][2][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22867][2][6]["ItemChance"] = 1700
	tGamblersGaoJin_Reward[22867][2][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22867][2][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22867][2][6]["RewardItem"][1]["Id"] = 3009002
	tGamblersGaoJin_Reward[22867][2][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGamblersGaoJin_Reward[22867][2][6]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22867][2][6]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22867][2][6]["NpcId"] = {22934}
	-- 炮台
	tGamblersGaoJin_Reward[22868] = {}
	tGamblersGaoJin_Reward[22868][1] = {}
	tGamblersGaoJin_Reward[22868][1]["ItemChanceSum"] = 10000
	--大鱼海棠碎片 3308697 2.5%
	tGamblersGaoJin_Reward[22868][1][1] = {}
	tGamblersGaoJin_Reward[22868][1][1]["TellToAll"] = 1
	tGamblersGaoJin_Reward[22868][1][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][1][1]["ItemChance"] = 250
	tGamblersGaoJin_Reward[22868][1][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][1][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][1][1]["RewardItem"][1]["Id"] = 3308697
	tGamblersGaoJin_Reward[22868][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22868][1][1]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][1][1]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22868][1][1]["NpcId"] = {22871,22872}
	--1000金币 3303926 1%
	tGamblersGaoJin_Reward[22868][1][2] = {}
	tGamblersGaoJin_Reward[22868][1][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][1][2]["ItemChance"] = 100
	tGamblersGaoJin_Reward[22868][1][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][1][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][1][2]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22868][1][2]["RewardItem"][1]["Attr"] = "0 1000"
	tGamblersGaoJin_Reward[22868][1][2]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][1][2]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22868][1][2]["NpcId"] = {22937,22938}
	--500金币 3303926 3%
	tGamblersGaoJin_Reward[22868][1][3] = {}
	tGamblersGaoJin_Reward[22868][1][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][1][3]["ItemChance"] = 300
	tGamblersGaoJin_Reward[22868][1][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][1][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][1][3]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22868][1][3]["RewardItem"][1]["Attr"] = "0 500"
	tGamblersGaoJin_Reward[22868][1][3]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][1][3]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22868][1][3]["NpcId"] = {22937,22938}
	--300金币 3303926 5%
	tGamblersGaoJin_Reward[22868][1][4] = {}
	tGamblersGaoJin_Reward[22868][1][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][1][4]["ItemChance"] = 500
	tGamblersGaoJin_Reward[22868][1][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][1][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][1][4]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22868][1][4]["RewardItem"][1]["Attr"] = "0 300"
	tGamblersGaoJin_Reward[22868][1][4]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][1][4]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22868][1][4]["NpcId"] = {22937,22938}
	--100金币 3303926 10%
	tGamblersGaoJin_Reward[22868][1][5] = {}
	tGamblersGaoJin_Reward[22868][1][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][1][5]["ItemChance"] = 1000
	tGamblersGaoJin_Reward[22868][1][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][1][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][1][5]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22868][1][5]["RewardItem"][1]["Attr"] = "0 100"
	tGamblersGaoJin_Reward[22868][1][5]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][1][5]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22868][1][5]["NpcId"] = {22937,22938}
	--50金币 3303926 16%
	tGamblersGaoJin_Reward[22868][1][6] = {}
	tGamblersGaoJin_Reward[22868][1][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][1][6]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[22868][1][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][1][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][1][6]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22868][1][6]["RewardItem"][1]["Attr"] = "0 50"
	tGamblersGaoJin_Reward[22868][1][6]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][1][6]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22868][1][6]["NpcId"] = {22937,22938}
	--30金币 3303926 7.5%
	tGamblersGaoJin_Reward[22868][1][7] = {}
	tGamblersGaoJin_Reward[22868][1][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][1][7]["ItemChance"] = 750
	tGamblersGaoJin_Reward[22868][1][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][1][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][1][7]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22868][1][7]["RewardItem"][1]["Attr"] = "0 30"
	tGamblersGaoJin_Reward[22868][1][7]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][1][7]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22868][1][7]["NpcId"] = {22937,22938}
	--10金币 3303926 5%
	tGamblersGaoJin_Reward[22868][1][8] = {}
	tGamblersGaoJin_Reward[22868][1][8]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][1][8]["ItemChance"] = 500
	tGamblersGaoJin_Reward[22868][1][8]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][1][8]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][1][8]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22868][1][8]["RewardItem"][1]["Attr"] = "0 10"
	tGamblersGaoJin_Reward[22868][1][8]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][1][8]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22868][1][8]["NpcId"] = {22937,22938}
	--赤炼石+1 730001 20%
	tGamblersGaoJin_Reward[22868][1][9] = {}
	tGamblersGaoJin_Reward[22868][1][9]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][1][9]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[22868][1][9]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][1][9]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][1][9]["RewardItem"][1]["Id"] = 730001
	tGamblersGaoJin_Reward[22868][1][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tGamblersGaoJin_Reward[22868][1][9]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][1][9]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22868][1][9]["NpcId"] = {22873}
	--赤炼石+3 730003 30%
	tGamblersGaoJin_Reward[22868][1][10] = {}
	tGamblersGaoJin_Reward[22868][1][10]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][1][10]["ItemChance"] = 3000
	tGamblersGaoJin_Reward[22868][1][10]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][1][10]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][1][10]["RewardItem"][1]["Id"] = 730003
	tGamblersGaoJin_Reward[22868][1][10]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tGamblersGaoJin_Reward[22868][1][10]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][1][10]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22868][1][10]["NpcId"] = {22873}
	--高级炮
	tGamblersGaoJin_Reward[22868][2] = {}
	tGamblersGaoJin_Reward[22868][2]["ItemChanceSum"] = 10000
	--大鱼海棠·凌波碎片 3308698 10%
	tGamblersGaoJin_Reward[22868][2][1] = {}
	tGamblersGaoJin_Reward[22868][2][1]["TellToAll"] = 1
	tGamblersGaoJin_Reward[22868][2][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][2][1]["ItemChance"] = 1000
	tGamblersGaoJin_Reward[22868][2][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][2][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][2][1]["RewardItem"][1]["Id"] = 3308698
	tGamblersGaoJin_Reward[22868][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22868][2][1]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][2][1]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22868][2][1]["NpcId"] = {22870}
	--大鱼海棠碎片 3308697 25%
	tGamblersGaoJin_Reward[22868][2][2] = {}
	tGamblersGaoJin_Reward[22868][2][2]["TellToAll"] = 1
	tGamblersGaoJin_Reward[22868][2][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][2][2]["ItemChance"] = 2500
	tGamblersGaoJin_Reward[22868][2][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][2][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][2][2]["RewardItem"][1]["Id"] = 3308697
	tGamblersGaoJin_Reward[22868][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22868][2][2]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][2][2]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22868][2][2]["NpcId"] = {22871,22872}
	--1000金币 3303926 16%
	tGamblersGaoJin_Reward[22868][2][3] = {}
	tGamblersGaoJin_Reward[22868][2][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][2][3]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[22868][2][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][2][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][2][3]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22868][2][3]["RewardItem"][1]["Attr"] = "0 1000"
	tGamblersGaoJin_Reward[22868][2][3]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][2][3]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22868][2][3]["NpcId"] = {22937,22938}
	--500金币 3303926 16%
	tGamblersGaoJin_Reward[22868][2][4] = {}
	tGamblersGaoJin_Reward[22868][2][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][2][4]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[22868][2][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][2][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][2][4]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22868][2][4]["RewardItem"][1]["Attr"] = "0 500"
	tGamblersGaoJin_Reward[22868][2][4]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][2][4]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22868][2][4]["NpcId"] = {22937,22938}
	--300金币 3303926 16%
	tGamblersGaoJin_Reward[22868][2][5] = {}
	tGamblersGaoJin_Reward[22868][2][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][2][5]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[22868][2][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][2][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][2][5]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22868][2][5]["RewardItem"][1]["Attr"] = "0 300"
	tGamblersGaoJin_Reward[22868][2][5]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][2][5]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22868][2][5]["NpcId"] = {22937,22938}
	--赤炼石+5 730005 17%
	tGamblersGaoJin_Reward[22868][2][6] = {}
	tGamblersGaoJin_Reward[22868][2][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22868][2][6]["ItemChance"] = 1700
	tGamblersGaoJin_Reward[22868][2][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22868][2][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22868][2][6]["RewardItem"][1]["Id"] = 730005
	tGamblersGaoJin_Reward[22868][2][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tGamblersGaoJin_Reward[22868][2][6]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22868][2][6]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22868][2][6]["NpcId"] = {22873}
	-- 炮台
	tGamblersGaoJin_Reward[22869] = {}
	tGamblersGaoJin_Reward[22869][1] = {}
	tGamblersGaoJin_Reward[22869][1]["ItemChanceSum"] = 10000
	--大鱼海棠碎片 3308697 2.5%
	tGamblersGaoJin_Reward[22869][1][1] = {}
	tGamblersGaoJin_Reward[22869][1][1]["TellToAll"] = 1
	tGamblersGaoJin_Reward[22869][1][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][1][1]["ItemChance"] = 250
	tGamblersGaoJin_Reward[22869][1][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][1][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][1][1]["RewardItem"][1]["Id"] = 3308697
	tGamblersGaoJin_Reward[22869][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22869][1][1]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][1][1]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22869][1][1]["NpcId"] = {22872}
	--1000金币 3303926 1%
	tGamblersGaoJin_Reward[22869][1][2] = {}
	tGamblersGaoJin_Reward[22869][1][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][1][2]["ItemChance"] = 100
	tGamblersGaoJin_Reward[22869][1][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][1][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][1][2]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22869][1][2]["RewardItem"][1]["Attr"] = "0 1000"
	tGamblersGaoJin_Reward[22869][1][2]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][1][2]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22869][1][2]["NpcId"] = {22938,22963}
	--500金币 3303926 3%
	tGamblersGaoJin_Reward[22869][1][3] = {}
	tGamblersGaoJin_Reward[22869][1][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][1][3]["ItemChance"] = 300
	tGamblersGaoJin_Reward[22869][1][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][1][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][1][3]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22869][1][3]["RewardItem"][1]["Attr"] = "0 500"
	tGamblersGaoJin_Reward[22869][1][3]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][1][3]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22869][1][3]["NpcId"] = {22938,22963}
	--300金币 3303926 5%
	tGamblersGaoJin_Reward[22869][1][4] = {}
	tGamblersGaoJin_Reward[22869][1][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][1][4]["ItemChance"] = 500
	tGamblersGaoJin_Reward[22869][1][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][1][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][1][4]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22869][1][4]["RewardItem"][1]["Attr"] = "0 300"
	tGamblersGaoJin_Reward[22869][1][4]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][1][4]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22869][1][4]["NpcId"] = {22942,22943}
	--100金币 3303926 10%
	tGamblersGaoJin_Reward[22869][1][5] = {}
	tGamblersGaoJin_Reward[22869][1][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][1][5]["ItemChance"] = 1000
	tGamblersGaoJin_Reward[22869][1][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][1][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][1][5]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22869][1][5]["RewardItem"][1]["Attr"] = "0 100"
	tGamblersGaoJin_Reward[22869][1][5]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][1][5]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22869][1][5]["NpcId"] = {22942,22943}
	--50金币 3303926 16%
	tGamblersGaoJin_Reward[22869][1][6] = {}
	tGamblersGaoJin_Reward[22869][1][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][1][6]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[22869][1][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][1][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][1][6]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22869][1][6]["RewardItem"][1]["Attr"] = "0 50"
	tGamblersGaoJin_Reward[22869][1][6]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][1][6]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22869][1][6]["NpcId"] = {22942,22943}
	--30金币 3303926 7.5%
	tGamblersGaoJin_Reward[22869][1][7] = {}
	tGamblersGaoJin_Reward[22869][1][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][1][7]["ItemChance"] = 750
	tGamblersGaoJin_Reward[22869][1][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][1][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][1][7]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22869][1][7]["RewardItem"][1]["Attr"] = "0 30"
	tGamblersGaoJin_Reward[22869][1][7]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][1][7]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22869][1][7]["NpcId"] = {22942,22943}
	--10金币 3303926 5%
	tGamblersGaoJin_Reward[22869][1][8] = {}
	tGamblersGaoJin_Reward[22869][1][8]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][1][8]["ItemChance"] = 500
	tGamblersGaoJin_Reward[22869][1][8]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][1][8]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][1][8]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22869][1][8]["RewardItem"][1]["Attr"] = "0 10"
	tGamblersGaoJin_Reward[22869][1][8]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][1][8]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22869][1][8]["NpcId"] = {22942,22943}
	--20气 3008185 20%
	tGamblersGaoJin_Reward[22869][1][9] = {}
	tGamblersGaoJin_Reward[22869][1][9]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][1][9]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[22869][1][9]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][1][9]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][1][9]["RewardItem"][1]["Id"] = 3008185
	tGamblersGaoJin_Reward[22869][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22869][1][9]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][1][9]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22869][1][9]["NpcId"] = {22935}
	--200气 3008188 30%
	tGamblersGaoJin_Reward[22869][1][10] = {}
	tGamblersGaoJin_Reward[22869][1][10]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][1][10]["ItemChance"] = 3000
	tGamblersGaoJin_Reward[22869][1][10]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][1][10]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][1][10]["RewardItem"][1]["Id"] = 3008188
	tGamblersGaoJin_Reward[22869][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22869][1][10]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][1][10]["LogStep"] = "1[1]"
	tGamblersGaoJin_Reward[22869][1][10]["NpcId"] = {22935}
	--高级炮
	tGamblersGaoJin_Reward[22869][2] = {}
	tGamblersGaoJin_Reward[22869][2]["ItemChanceSum"] = 10000
	--大鱼海棠·凌波碎片 3308698 10%
	tGamblersGaoJin_Reward[22869][2][1] = {}
	tGamblersGaoJin_Reward[22869][2][1]["TellToAll"] = 1
	tGamblersGaoJin_Reward[22869][2][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][2][1]["ItemChance"] = 1000
	tGamblersGaoJin_Reward[22869][2][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][2][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][2][1]["RewardItem"][1]["Id"] = 3308698
	tGamblersGaoJin_Reward[22869][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22869][2][1]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][2][1]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22869][2][1]["NpcId"] = {22870}
	--大鱼海棠碎片 3308697 25%
	tGamblersGaoJin_Reward[22869][2][2] = {}
	tGamblersGaoJin_Reward[22869][2][2]["TellToAll"] = 1
	tGamblersGaoJin_Reward[22869][2][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][2][2]["ItemChance"] = 2500
	tGamblersGaoJin_Reward[22869][2][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][2][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][2][2]["RewardItem"][1]["Id"] = 3308697
	tGamblersGaoJin_Reward[22869][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22869][2][2]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][2][2]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22869][2][2]["NpcId"] = {22872}
	--1000金币 3303926 16%
	tGamblersGaoJin_Reward[22869][2][3] = {}
	tGamblersGaoJin_Reward[22869][2][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][2][3]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[22869][2][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][2][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][2][3]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22869][2][3]["RewardItem"][1]["Attr"] = "0 1000"
	tGamblersGaoJin_Reward[22869][2][3]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][2][3]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22869][2][3]["NpcId"] = {22938,22963}
	--500金币 3303926 16%
	tGamblersGaoJin_Reward[22869][2][4] = {}
	tGamblersGaoJin_Reward[22869][2][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][2][4]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[22869][2][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][2][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][2][4]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22869][2][4]["RewardItem"][1]["Attr"] = "0 500"
	tGamblersGaoJin_Reward[22869][2][4]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][2][4]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22869][2][4]["NpcId"] = {22938,22963}
	--300金币 3303926 16%
	tGamblersGaoJin_Reward[22869][2][5] = {}
	tGamblersGaoJin_Reward[22869][2][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][2][5]["ItemChance"] = 1600
	tGamblersGaoJin_Reward[22869][2][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][2][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][2][5]["RewardItem"][1]["Id"] = 3303926
	tGamblersGaoJin_Reward[22869][2][5]["RewardItem"][1]["Attr"] = "0 300"
	tGamblersGaoJin_Reward[22869][2][5]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][2][5]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22869][2][5]["NpcId"] = {22942,22943}
	--2000气 3008196 17%
	tGamblersGaoJin_Reward[22869][2][6] = {}
	tGamblersGaoJin_Reward[22869][2][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[22869][2][6]["ItemChance"] = 1700
	tGamblersGaoJin_Reward[22869][2][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[22869][2][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[22869][2][6]["RewardItem"][1]["Id"] = 3008196
	tGamblersGaoJin_Reward[22869][2][6]["RewardItem"][1]["Attr"] = "0 1"
	tGamblersGaoJin_Reward[22869][2][6]["LogId"] = 12001066
	tGamblersGaoJin_Reward[22869][2][6]["LogStep"] = "1[2]"
	tGamblersGaoJin_Reward[22869][2][6]["NpcId"] = {22935}
	--同花顺
	tGamblersGaoJin_Reward["Poker"] = {}
	--黑桃同花顺
	tGamblersGaoJin_Reward["Poker"][1] = {}
	tGamblersGaoJin_Reward["Poker"][1]["DeleteItem"] = {}
	tGamblersGaoJin_Reward["Poker"][1]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward["Poker"][1]["DeleteItem"][1]["Id"] = 3308690
	tGamblersGaoJin_Reward["Poker"][1]["DeleteItem"][2] = {}
	tGamblersGaoJin_Reward["Poker"][1]["DeleteItem"][2]["Id"] = 3308691
	tGamblersGaoJin_Reward["Poker"][1]["DeleteItem"][3] = {}
	tGamblersGaoJin_Reward["Poker"][1]["DeleteItem"][3]["Id"] = 3308692
	tGamblersGaoJin_Reward["Poker"][1]["DeleteItem"][4] = {}
	tGamblersGaoJin_Reward["Poker"][1]["DeleteItem"][4]["Id"] = 3308693
	tGamblersGaoJin_Reward["Poker"][1]["DeleteItem"][5] = {}
	tGamblersGaoJin_Reward["Poker"][1]["DeleteItem"][5]["Id"] = 3308694
	tGamblersGaoJin_Reward["Poker"][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward["Poker"][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward["Poker"][1]["RewardItem"][1]["Id"] = 195225
	tGamblersGaoJin_Reward["Poker"][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tGamblersGaoJin_Reward["Poker"][1]["LogId"] =12001066
	--红桃同花顺
	tGamblersGaoJin_Reward["Poker"][2] = {}
	tGamblersGaoJin_Reward["Poker"][2]["DeleteItem"] = {}
	tGamblersGaoJin_Reward["Poker"][2]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward["Poker"][2]["DeleteItem"][1]["Id"] = 3308675
	tGamblersGaoJin_Reward["Poker"][2]["DeleteItem"][2] = {}
	tGamblersGaoJin_Reward["Poker"][2]["DeleteItem"][2]["Id"] = 3308676
	tGamblersGaoJin_Reward["Poker"][2]["DeleteItem"][3] = {}
	tGamblersGaoJin_Reward["Poker"][2]["DeleteItem"][3]["Id"] = 3308677
	tGamblersGaoJin_Reward["Poker"][2]["DeleteItem"][4] = {}
	tGamblersGaoJin_Reward["Poker"][2]["DeleteItem"][4]["Id"] = 3308678
	tGamblersGaoJin_Reward["Poker"][2]["DeleteItem"][5] = {}
	tGamblersGaoJin_Reward["Poker"][2]["DeleteItem"][5]["Id"] = 3308679
	tGamblersGaoJin_Reward["Poker"][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward["Poker"][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward["Poker"][2]["RewardItem"][1]["Id"] = 195215
	tGamblersGaoJin_Reward["Poker"][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tGamblersGaoJin_Reward["Poker"][2]["LogId"] =12001066
	--方块同花顺
	tGamblersGaoJin_Reward["Poker"][3] = {}
	tGamblersGaoJin_Reward["Poker"][3]["DeleteItem"] = {}
	tGamblersGaoJin_Reward["Poker"][3]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward["Poker"][3]["DeleteItem"][1]["Id"] = 3308680
	tGamblersGaoJin_Reward["Poker"][3]["DeleteItem"][2] = {}
	tGamblersGaoJin_Reward["Poker"][3]["DeleteItem"][2]["Id"] = 3308681
	tGamblersGaoJin_Reward["Poker"][3]["DeleteItem"][3] = {}
	tGamblersGaoJin_Reward["Poker"][3]["DeleteItem"][3]["Id"] = 3308682
	tGamblersGaoJin_Reward["Poker"][3]["DeleteItem"][4] = {}
	tGamblersGaoJin_Reward["Poker"][3]["DeleteItem"][4]["Id"] = 3308683
	tGamblersGaoJin_Reward["Poker"][3]["DeleteItem"][5] = {}
	tGamblersGaoJin_Reward["Poker"][3]["DeleteItem"][5]["Id"] = 3308684
	tGamblersGaoJin_Reward["Poker"][3]["RewardStrengthValue"] = {}
	tGamblersGaoJin_Reward["Poker"][3]["RewardStrengthValue"]["Value"] = 1500
	tGamblersGaoJin_Reward["Poker"][3]["LogId"] =12001066
	--草花同花顺
	tGamblersGaoJin_Reward["Poker"][4] = {}
	tGamblersGaoJin_Reward["Poker"][4]["DeleteItem"] = {}
	tGamblersGaoJin_Reward["Poker"][4]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward["Poker"][4]["DeleteItem"][1]["Id"] = 3308685
	tGamblersGaoJin_Reward["Poker"][4]["DeleteItem"][2] = {}
	tGamblersGaoJin_Reward["Poker"][4]["DeleteItem"][2]["Id"] = 3308686
	tGamblersGaoJin_Reward["Poker"][4]["DeleteItem"][3] = {}
	tGamblersGaoJin_Reward["Poker"][4]["DeleteItem"][3]["Id"] = 3308687
	tGamblersGaoJin_Reward["Poker"][4]["DeleteItem"][4] = {}
	tGamblersGaoJin_Reward["Poker"][4]["DeleteItem"][4]["Id"] = 3308688
	tGamblersGaoJin_Reward["Poker"][4]["DeleteItem"][5] = {}
	tGamblersGaoJin_Reward["Poker"][4]["DeleteItem"][5]["Id"] = 3308689
	tGamblersGaoJin_Reward["Poker"][4]["RewardStrengthValue"] = {}
	tGamblersGaoJin_Reward["Poker"][4]["RewardStrengthValue"]["Value"] = 800
	tGamblersGaoJin_Reward["Poker"][4]["LogId"] =12001066
	
	-- ===龙之咆哮骰子
	-- ===索引:tGamblersGaoJin_Reward[3322683][1]
	tGamblersGaoJin_Reward[3322683] = {}
	tGamblersGaoJin_Reward[3322683]["TimeLimit"] = 3
	tGamblersGaoJin_Reward[3322683][1] = {}
	tGamblersGaoJin_Reward[3322683][1]["ItemChanceSum"] = 10000
	tGamblersGaoJin_Reward[3322683][1]["LogId"] = 12001066
	-- P1龙之咆哮 - 25.00%
	tGamblersGaoJin_Reward[3322683][1][1] = {}
	tGamblersGaoJin_Reward[3322683][1][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][1][1]["ItemChance"] = 2500
	tGamblersGaoJin_Reward[3322683][1][1]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][1][1]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][1][1]["RewardEffect"]["Effect"] = "touzi_1"
	tGamblersGaoJin_Reward[3322683][1][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][1][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][1][1]["RewardItem"][1]["Id"] = 4200001 -- P1Anima[4200001][属性:72][叠加:99][金币:0], 【表格】P1龙之咆哮
	tGamblersGaoJin_Reward[3322683][1][1]["RewardItem"][1]["Attr"] = "0 1" -- P1Anima*1
	tGamblersGaoJin_Reward[3322683][1][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][1][1]["Talk"] = tGamblersGaoJin_Text[3322683][1][1]
	-- P2龙之咆哮 - 25.00%
	tGamblersGaoJin_Reward[3322683][1][2] = {}
	tGamblersGaoJin_Reward[3322683][1][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][1][2]["ItemChance"] = 2500
	tGamblersGaoJin_Reward[3322683][1][2]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][1][2]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][1][2]["RewardEffect"]["Effect"] = "touzi_2"
	tGamblersGaoJin_Reward[3322683][1][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][1][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][1][2]["RewardItem"][1]["Id"] = 4200002 -- P2Anima[4200002][属性:72][叠加:99][金币:0], 【表格】P2龙之咆哮
	tGamblersGaoJin_Reward[3322683][1][2]["RewardItem"][1]["Attr"] = "0 1" -- P2Anima*1
	tGamblersGaoJin_Reward[3322683][1][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][1][2]["Talk"] = tGamblersGaoJin_Text[3322683][1][2]
	-- P3龙之咆哮 - 20.00%
	tGamblersGaoJin_Reward[3322683][1][3] = {}
	tGamblersGaoJin_Reward[3322683][1][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][1][3]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[3322683][1][3]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][1][3]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][1][3]["RewardEffect"]["Effect"] = "touzi_3"
	tGamblersGaoJin_Reward[3322683][1][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][1][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][1][3]["RewardItem"][1]["Id"] = 4200003 -- P3Anima[4200003][属性:72][叠加:99][金币:0], 【表格】P3龙之咆哮
	tGamblersGaoJin_Reward[3322683][1][3]["RewardItem"][1]["Attr"] = "0 1" -- P3Anima*1
	tGamblersGaoJin_Reward[3322683][1][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][1][3]["Talk"] = tGamblersGaoJin_Text[3322683][1][3]
	-- P4龙之咆哮 - 15.00%
	tGamblersGaoJin_Reward[3322683][1][4] = {}
	tGamblersGaoJin_Reward[3322683][1][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][1][4]["ItemChance"] = 1500
	tGamblersGaoJin_Reward[3322683][1][4]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][1][4]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][1][4]["RewardEffect"]["Effect"] = "touzi_4"
	tGamblersGaoJin_Reward[3322683][1][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][1][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][1][4]["RewardItem"][1]["Id"] = 4200004 -- P4Anima[4200004][属性:72][叠加:99][金币:0], 【表格】P4龙之咆哮
	tGamblersGaoJin_Reward[3322683][1][4]["RewardItem"][1]["Attr"] = "0 1" -- P4Anima*1
	tGamblersGaoJin_Reward[3322683][1][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][1][4]["Talk"] = tGamblersGaoJin_Text[3322683][1][4]
	-- P3龙之咆哮*3 - 9.40%
	tGamblersGaoJin_Reward[3322683][1][5] = {}
	tGamblersGaoJin_Reward[3322683][1][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][1][5]["ItemChance"] = 940
	tGamblersGaoJin_Reward[3322683][1][5]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][1][5]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][1][5]["RewardEffect"]["Effect"] = "touzi_5"
	tGamblersGaoJin_Reward[3322683][1][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][1][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][1][5]["RewardItem"][1]["Id"] = 4200003 -- P3Anima[4200003][属性:72][叠加:99][金币:0], 【表格】P3龙之咆哮*3
	tGamblersGaoJin_Reward[3322683][1][5]["RewardItem"][1]["Attr"] = "0 3" -- P3Anima*3
	tGamblersGaoJin_Reward[3322683][1][5]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][1][5]["Talk"] = tGamblersGaoJin_Text[3322683][1][5]
	-- P5龙之咆哮 - 5.50%
	tGamblersGaoJin_Reward[3322683][1][6] = {}
	tGamblersGaoJin_Reward[3322683][1][6]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3322683][1][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][1][6]["ItemChance"] = 550
	tGamblersGaoJin_Reward[3322683][1][6]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][1][6]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][1][6]["RewardEffect"]["Effect"] = "touzi_6"
	tGamblersGaoJin_Reward[3322683][1][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][1][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][1][6]["RewardItem"][1]["Id"] = 4200005 -- P5Anima[4200005][属性:72][叠加:99][金币:0], 【表格】P5龙之咆哮
	tGamblersGaoJin_Reward[3322683][1][6]["RewardItem"][1]["Attr"] = "0 1" -- P5Anima*1
	tGamblersGaoJin_Reward[3322683][1][6]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][1][6]["Talk"] = tGamblersGaoJin_Text[3322683][1][6]
	-- P6龙之咆哮 - 0.10%
	tGamblersGaoJin_Reward[3322683][1][7] = {}
	tGamblersGaoJin_Reward[3322683][1][7]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3322683][1][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][1][7]["ItemChance"] = 10
	tGamblersGaoJin_Reward[3322683][1][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][1][7]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][1][7]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][1][7]["RewardEffect"]["Effect"] = "bombarrow"
	tGamblersGaoJin_Reward[3322683][1][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][1][7]["RewardItem"][1]["Id"] = 4200006 -- P6Anima[4200006][属性:72][叠加:99][金币:0], 【表格】P6龙之咆哮
	tGamblersGaoJin_Reward[3322683][1][7]["RewardItem"][1]["Attr"] = "0 1" -- P6Anima*1
	tGamblersGaoJin_Reward[3322683][1][7]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][1][7]["Talk"] = tGamblersGaoJin_Text[3322683][1][7]


	tGamblersGaoJin_Reward[3322683][2] = {}
	-- ===龙之咆哮骰子
	-- ===索引:tGamblersGaoJin_Reward[3322683][2]
	tGamblersGaoJin_Reward[3322683][2]["ItemChanceSum"] = 10000
	tGamblersGaoJin_Reward[3322683][2]["LogId"] = 12001066
	-- P1龙之咆哮 + 玩家金币*30 - 25.00%
	tGamblersGaoJin_Reward[3322683][2][1] = {}
	tGamblersGaoJin_Reward[3322683][2][1]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][2][1]["ItemChance"] = 2500
	tGamblersGaoJin_Reward[3322683][2][1]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][2][1]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][2][1]["RewardEffect"]["Effect"] = "touzi_1"
	tGamblersGaoJin_Reward[3322683][2][1]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][2][1]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][2][1]["RewardItem"][1]["Id"] = 4200001 -- P1Anima[4200001][属性:72][叠加:99][金币:0], 【表格】P1龙之咆哮
	tGamblersGaoJin_Reward[3322683][2][1]["RewardItem"][1]["Attr"] = "0 1" -- P1Anima*1
	tGamblersGaoJin_Reward[3322683][2][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][2][1]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3322683][2][1]["RewardItem"][2]["Id"] = 3303926 -- PlayerCoin[3303926][属性:11][叠加:10000][金币:0], 【表格】玩家金币*30
	tGamblersGaoJin_Reward[3322683][2][1]["RewardItem"][2]["Attr"] = "0 30" -- PlayerCoin*30
	tGamblersGaoJin_Reward[3322683][2][1]["Talk"] = tGamblersGaoJin_Text[3322683][2][1]
	-- P2龙之咆哮 + 玩家金币*30 - 25.00%
	tGamblersGaoJin_Reward[3322683][2][2] = {}
	tGamblersGaoJin_Reward[3322683][2][2]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][2][2]["ItemChance"] = 2500
	tGamblersGaoJin_Reward[3322683][2][2]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][2][2]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][2][2]["RewardEffect"]["Effect"] = "touzi_2"
	tGamblersGaoJin_Reward[3322683][2][2]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][2][2]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][2][2]["RewardItem"][1]["Id"] = 4200002 -- P2Anima[4200002][属性:72][叠加:99][金币:0], 【表格】P2龙之咆哮
	tGamblersGaoJin_Reward[3322683][2][2]["RewardItem"][1]["Attr"] = "0 1" -- P2Anima*1
	tGamblersGaoJin_Reward[3322683][2][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][2][2]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3322683][2][2]["RewardItem"][2]["Id"] = 3303926 -- PlayerCoin[3303926][属性:11][叠加:10000][金币:0], 【表格】玩家金币*30
	tGamblersGaoJin_Reward[3322683][2][2]["RewardItem"][2]["Attr"] = "0 30" -- PlayerCoin*30
	tGamblersGaoJin_Reward[3322683][2][2]["Talk"] = tGamblersGaoJin_Text[3322683][2][2]
	-- P3龙之咆哮 + 玩家金币*30 - 20.00%
	tGamblersGaoJin_Reward[3322683][2][3] = {}
	tGamblersGaoJin_Reward[3322683][2][3]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][2][3]["ItemChance"] = 2000
	tGamblersGaoJin_Reward[3322683][2][3]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][2][3]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][2][3]["RewardEffect"]["Effect"] = "touzi_3"
	tGamblersGaoJin_Reward[3322683][2][3]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][2][3]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][2][3]["RewardItem"][1]["Id"] = 4200003 -- P3Anima[4200003][属性:72][叠加:99][金币:0], 【表格】P3龙之咆哮
	tGamblersGaoJin_Reward[3322683][2][3]["RewardItem"][1]["Attr"] = "0 1" -- P3Anima*1
	tGamblersGaoJin_Reward[3322683][2][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][2][3]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3322683][2][3]["RewardItem"][2]["Id"] = 3303926 -- PlayerCoin[3303926][属性:11][叠加:10000][金币:0], 【表格】玩家金币*30
	tGamblersGaoJin_Reward[3322683][2][3]["RewardItem"][2]["Attr"] = "0 30" -- PlayerCoin*30
	tGamblersGaoJin_Reward[3322683][2][3]["Talk"] = tGamblersGaoJin_Text[3322683][2][3]
	-- P4龙之咆哮 + 玩家金币*30 - 15.00%
	tGamblersGaoJin_Reward[3322683][2][4] = {}
	tGamblersGaoJin_Reward[3322683][2][4]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][2][4]["ItemChance"] = 1500
	tGamblersGaoJin_Reward[3322683][2][4]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][2][4]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][2][4]["RewardEffect"]["Effect"] = "touzi_4"
	tGamblersGaoJin_Reward[3322683][2][4]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][2][4]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][2][4]["RewardItem"][1]["Id"] = 4200004 -- P4Anima[4200004][属性:72][叠加:99][金币:0], 【表格】P4龙之咆哮
	tGamblersGaoJin_Reward[3322683][2][4]["RewardItem"][1]["Attr"] = "0 1" -- P4Anima*1
	tGamblersGaoJin_Reward[3322683][2][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][2][4]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3322683][2][4]["RewardItem"][2]["Id"] = 3303926 -- PlayerCoin[3303926][属性:11][叠加:10000][金币:0], 【表格】玩家金币*30
	tGamblersGaoJin_Reward[3322683][2][4]["RewardItem"][2]["Attr"] = "0 30" -- PlayerCoin*30
	tGamblersGaoJin_Reward[3322683][2][4]["Talk"] = tGamblersGaoJin_Text[3322683][2][4]
	-- P3龙之咆哮*3 + 玩家金币*30 - 9.40%
	tGamblersGaoJin_Reward[3322683][2][5] = {}
	tGamblersGaoJin_Reward[3322683][2][5]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][2][5]["ItemChance"] = 940
	tGamblersGaoJin_Reward[3322683][2][5]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][2][5]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][2][5]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][2][5]["RewardEffect"]["Effect"] = "touzi_5"
	tGamblersGaoJin_Reward[3322683][2][5]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][2][5]["RewardItem"][1]["Id"] = 4200003 -- P3Anima[4200003][属性:72][叠加:99][金币:0], 【表格】P3龙之咆哮*3
	tGamblersGaoJin_Reward[3322683][2][5]["RewardItem"][1]["Attr"] = "0 3" -- P3Anima*3
	tGamblersGaoJin_Reward[3322683][2][5]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][2][5]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3322683][2][5]["RewardItem"][2]["Id"] = 3303926 -- PlayerCoin[3303926][属性:11][叠加:10000][金币:0], 【表格】玩家金币*30
	tGamblersGaoJin_Reward[3322683][2][5]["RewardItem"][2]["Attr"] = "0 30" -- PlayerCoin*30
	tGamblersGaoJin_Reward[3322683][2][5]["Talk"] = tGamblersGaoJin_Text[3322683][2][5]
	-- P5龙之咆哮 + 玩家金币*30 - 5.50%
	tGamblersGaoJin_Reward[3322683][2][6] = {}
	tGamblersGaoJin_Reward[3322683][2][6]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3322683][2][6]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][2][6]["ItemChance"] = 550
	tGamblersGaoJin_Reward[3322683][2][6]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][2][6]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][2][6]["RewardEffect"]["Effect"] = "touzi_6"
	tGamblersGaoJin_Reward[3322683][2][6]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][2][6]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][2][6]["RewardItem"][1]["Id"] = 4200005 -- P5Anima[4200005][属性:72][叠加:99][金币:0], 【表格】P5龙之咆哮
	tGamblersGaoJin_Reward[3322683][2][6]["RewardItem"][1]["Attr"] = "0 1" -- P5Anima*1
	tGamblersGaoJin_Reward[3322683][2][6]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][2][6]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3322683][2][6]["RewardItem"][2]["Id"] = 3303926 -- PlayerCoin[3303926][属性:11][叠加:10000][金币:0], 【表格】玩家金币*30
	tGamblersGaoJin_Reward[3322683][2][6]["RewardItem"][2]["Attr"] = "0 30" -- PlayerCoin*30
	tGamblersGaoJin_Reward[3322683][2][6]["Talk"] = tGamblersGaoJin_Text[3322683][2][6]
	-- P6龙之咆哮 + 玩家金币*30 - 0.10%
	tGamblersGaoJin_Reward[3322683][2][7] = {}
	tGamblersGaoJin_Reward[3322683][2][7]["TellToAll"] = 1
	tGamblersGaoJin_Reward[3322683][2][7]["RandomItemChanceType"] = 2
	tGamblersGaoJin_Reward[3322683][2][7]["ItemChance"] = 10
	tGamblersGaoJin_Reward[3322683][2][7]["RewardEffect"] = {}
	tGamblersGaoJin_Reward[3322683][2][7]["RewardEffect"]["SzObj"] = "self"
	tGamblersGaoJin_Reward[3322683][2][7]["RewardEffect"]["Effect"] = "bombarrow"
	tGamblersGaoJin_Reward[3322683][2][7]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322683][2][7]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322683][2][7]["RewardItem"][1]["Id"] = 4200006 -- P6Anima[4200006][属性:72][叠加:99][金币:0], 【表格】P6龙之咆哮
	tGamblersGaoJin_Reward[3322683][2][7]["RewardItem"][1]["Attr"] = "0 1" -- P6Anima*1
	tGamblersGaoJin_Reward[3322683][2][7]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tGamblersGaoJin_Reward[3322683][2][7]["RewardItem"][2] = {}
	tGamblersGaoJin_Reward[3322683][2][7]["RewardItem"][2]["Id"] = 3303926 -- PlayerCoin[3303926][属性:11][叠加:10000][金币:0], 【表格】玩家金币*30
	tGamblersGaoJin_Reward[3322683][2][7]["RewardItem"][2]["Attr"] = "0 30" -- PlayerCoin*30
	tGamblersGaoJin_Reward[3322683][2][7]["Talk"] = tGamblersGaoJin_Text[3322683][2][7]

	tGamblersGaoJin_Reward[3322686] = {}
	-- ===2阶龙之咆哮*3礼包
	-- ===索引:tGamblersGaoJin_Reward[3322686]
	-- ===删除: 3322686,1
	tGamblersGaoJin_Reward[3322686]["LogId"] = 12001066
	tGamblersGaoJin_Reward[3322686]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3322686]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3322686]["DeleteItem"][1]["Id"] = 3322686 -- 【库】 3322686 【库里没有该物品】[属性:]
	tGamblersGaoJin_Reward[3322686]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322686]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322686]["RewardItem"][1]["Id"] = 4200002 -- P2Anima[4200002][属性:72][叠加:99][金币:0], 【表格】P2龙之咆哮*3
	tGamblersGaoJin_Reward[3322686]["RewardItem"][1]["Attr"] = "0 3" -- P2Anima*3
	tGamblersGaoJin_Reward[3322686]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得

	tGamblersGaoJin_Reward[3322687] = {}
	-- ===3阶龙之咆哮*3礼包
	-- ===索引:tGamblersGaoJin_Reward[3322687]
	-- ===删除: 3322687,1
	tGamblersGaoJin_Reward[3322687]["LogId"] = 12001066
	tGamblersGaoJin_Reward[3322687]["DeleteItem"] = {}
	tGamblersGaoJin_Reward[3322687]["DeleteItem"][1] = {}
	tGamblersGaoJin_Reward[3322687]["DeleteItem"][1]["Id"] = 3322687 -- 【库】 3322687 【库里没有该物品】[属性:]
	tGamblersGaoJin_Reward[3322687]["RewardItem"] = {}
	tGamblersGaoJin_Reward[3322687]["RewardItem"][1] = {}
	tGamblersGaoJin_Reward[3322687]["RewardItem"][1]["Id"] = 4200003 -- P3Anima[4200003][属性:72][叠加:99][金币:0], 【表格】P3龙之咆哮*3
	tGamblersGaoJin_Reward[3322687]["RewardItem"][1]["Attr"] = "0 3" -- P3Anima*3
	tGamblersGaoJin_Reward[3322687]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得

--------------------------------------------逻辑部分配置--------------------------------------------
--物品使用
function GamblersGaoJin_ItemUse(nItemId)
	if tGamblersGaoJin_Reward[nItemId] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	
	--过期删除
	if tGamblersGaoJin_Reward[nItemId]["OverTimeDel"] ~= nil then
		if not Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
			if Item_ChkItem( nItemId) and Item_DelAllItemByType(nItemId) then
				User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["OverTime"])
			end
			return
		end
	end
	
	local nSpace = 0
	local nIndex = 1
	
	--活动时间内走另一套概率
	if Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) and tGamblersGaoJin_Reward[nItemId][2] ~= nil then
		nIndex = 2
	end
	
	--背包空间判断
	if tGamblersGaoJin_Reward[nItemId][nIndex] ~= nil and tGamblersGaoJin_Reward[nItemId][nIndex]["ItemChanceSum"] ~= nil then
		nSpace = RewardTemplate_GetRandomSpace(tGamblersGaoJin_Reward[nItemId], nIndex, nUserId)
	else
		nSpace = RewardTemplate_GetRewardSpace(tGamblersGaoJin_Reward[nItemId],nUserId)
		nSpace = nSpace - RewardTemplate_GetDelSpace(tGamblersGaoJin_Reward[nItemId],nUserId)
	end
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		User_TalkChannel2005(string.format(tGamblersGaoJin_Text["Channel2005"]["NoSpace"], nSpace))
		return
	end
	
	--时间限制
	if tGamblersGaoJin_Reward[nItemId]["TimeLimit"] ~= nil then
		local nEvent = tGamblersGaoJin_Stc["Touzi"]["Event"]
		local nType = tGamblersGaoJin_Stc["Touzi"]["Type"]
		local nDelay = tGamblersGaoJin_Reward[nItemId]["TimeLimit"]
		
		--超时检测
		if Task_StcInterval(nEvent,nType,nDelay,0,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
		
		--未超时
		if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
			User_TalkChannel2005(string.format(tGamblersGaoJin_Text["Channel2005"]["LimitTime"], nDelay))
			return
		end
		
		--掩码设置
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	--是否随机奖励
	if tGamblersGaoJin_Reward[nItemId][nIndex] ~= nil and tGamblersGaoJin_Reward[nItemId][nIndex]["ItemChanceSum"] ~= nil then
		local tAward = nil
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			tAward = RewardTemplate_NewRandom(tGamblersGaoJin_Reward[nItemId],nIndex)
		end
		
		--是否有全服公告
		if tAward and tAward[1]["tAward"][1]["TellToAll"] == 1 then
			local sUserName = Get_UserName(nUserId)
			local sItemName = Get_ItemtypeName(nItemId)
			
			local nGetItemId = 0
			local sGetItemName = ""
			
			if tAward[1]["tAward"][1]["RewardItem"] ~= nil then
				nGetItemId = tAward[1]["tAward"][1]["RewardItem"][1]["Id"]
				
				local tItemAttr = Sys_Split(tAward[1]["tAward"][1]["RewardItem"][1]["Attr"]," ")
				local nGetNum = tonumber(tItemAttr[2])
				
				if nGetNum > 1 then
					sGetItemName = Get_ItemtypeName(nGetItemId).."*"..nGetNum
				else
					sGetItemName = Get_ItemtypeName(nGetItemId)
				end
			end
			
			Sys_TalkBroadcast(string.format(tGamblersGaoJin_Text["Broadcast"]["TellToAll"],sUserName,sItemName,sGetItemName))
		end
	else
		RewardTemplate_UseItemAndMsg(tGamblersGaoJin_Reward[nItemId],nUserId)
	end
	
end

--碎片使用弹对白
function GamblersGaoJin_ChipLink(nItemId)
	if Item_ChkItem(nItemId) then
		ItemProcess(nItemId)
	end
end

--碎片使用
function GamblersGaoJin_ChipUse(nItemId, nIndex)
	if tGamblersGaoJin_Reward[nItemId] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	
	local tAward = CommonFunc_Copy(tGamblersGaoJin_Reward[nItemId][nIndex])
	
	local sItemName = tGamblersGaoJin_Text["ChipName"][nItemId]
	local nNeedNum = 0
	
	if tAward["DeleteItem"] ~= nil then
		nNeedNum = tAward["DeleteItem"][1]["ItemNum"]
		
		--数量不足
		if not Item_ChkMulItem(nItemId,nItemId,nNeedNum) then
			if nIndex == 4 then
				Sys_MsgBox(tGamblersGaoJin_Text["MsgBox"]["NoChipCoin"])
			elseif nIndex == 2 then
				sItemName = Get_ItemtypeName(nItemId)
				Sys_MsgBox(string.format(tGamblersGaoJin_Text["MsgBox"]["NoChipDouble"], sItemName))
			else
				Sys_MsgBox(string.format(tGamblersGaoJin_Text["MsgBox"]["NoChip"], nNeedNum, sItemName))
			end
			return
		end
	end
	
	--背包空间判断
	if not RewardTemplate_CheckSpace(tAward,nUserId) then
		return
	end
	
	local nStartNum = tGamblersGaoJin_Cont["ChipRandom"]["StartNum"]
	local nEndNum = tGamblersGaoJin_Cont["ChipRandom"]["EndNum"]
	
	--是否概率合成
	if nIndex == 2 and not Sys_Random(nStartNum,nEndNum) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_MsgBox(tGamblersGaoJin_Text["MsgBox"]["ChipFail"], string.format("GamblersGaoJin_ChipLink</N>%d", nItemId))
			Sys_SaveActionRewardLog(string.format(tGamblersGaoJin_Log["DelItem"],nItemId, 1))
		end
		return
	end
	
	--给奖励
	local bResult = RewardTemplate_UseItem(tAward,nUserId)
	
	if bResult then
		if nIndex == 2 then
			sChipName = Get_ItemtypeName(nItemId)
			Sys_MsgBox(string.format(tGamblersGaoJin_Text["MsgBox"]["ChipDouble"], sChipName), string.format("GamblersGaoJin_ChipLink</N>%d", nItemId))
			User_TalkChannel2005(string.format(tGamblersGaoJin_Text["Channel2005"]["ChipDouble"], sChipName))
			
			return
		elseif nIndex == 4 then
			return
		end
		
		Sys_MsgBox(string.format(tGamblersGaoJin_Text["MsgBox"]["ChipSucc"], sItemName), string.format("GamblersGaoJin_ChipLink</N>%d", nItemId))
		User_TalkChannel2005(string.format(tGamblersGaoJin_Text["Channel2005"]["ChipSucc"], sItemName))
		
		local sUserName = Get_UserName(nUserId)
		
		if tGamblersGaoJin_Reward[nItemId]["ChipAdd"] ~= nil then
			nIndex = nIndex + tGamblersGaoJin_Reward[nItemId]["ChipAdd"]
		end
		
		Sys_TalkBroadcast(string.format(tGamblersGaoJin_Text["Broadcast"]["Chip"][nIndex], sUserName, nNeedNum, sItemName, nItemId))
	end
end

--扑克牌使用
function GamblersGaoJin_PokerUse(nItemId, nIndex)
	local nPokerIndex = tGamblersGaoJin_Cont["Poker"][nItemId]
	
	--没找到相应数据
	if tGamblersGaoJin_Reward["Poker"][nPokerIndex] == nil then
		return
	end
	
	--保存未集齐的扑克牌
	local tPoker = {}
	local bFlag = true
	
	--判断是否已经集齐
	for k,v in pairs(tGamblersGaoJin_Reward["Poker"][nPokerIndex]["DeleteItem"]) do
		if not Item_ChkItem(v["Id"]) then
			table.insert(tPoker, v["Id"])
			bFlag = false
		end
	end
	
	--判断是否已经集齐
	if nIndex == 0 then
		return bFlag, tPoker
	--集齐后直接兑换
	elseif nIndex == 1 then
		RewardTemplate_UseItemAndMsg(tGamblersGaoJin_Reward["Poker"][nPokerIndex])
	--使用单张扑克牌换取奖励
	elseif nIndex == 2 then
		if tGamblersGaoJin_Reward[nItemId] ~= nil then
			RewardTemplate_UseItemAndMsg(tGamblersGaoJin_Reward[nItemId])
		end
	end
end

--扑克牌对白判断
function GamblersGaoJin_PokerChk(nItemId)
	local bFlag, tPoker = GamblersGaoJin_PokerUse(nItemId, 0)
	
	--扑克牌对应索引
	local nPokerIndex = tGamblersGaoJin_Cont["Poker"][nItemId]
	--扑克牌种
	local sPokerColor = tGamblersGaoJin_Text["Poker"]["Color"][nPokerIndex]
	--集齐后的大奖对白
	local sPokerAward = tGamblersGaoJin_Text["Poker"]["Reward"][nPokerIndex]
	--缺少的扑克牌名字
	local sPokerNeed = ""
	
	if next(tPoker) ~= nil then
		for i = 1, #tPoker do
			if i ~= 1 then
				sPokerNeed = sPokerNeed..tGamblersGaoJin_Text["Stall"]
			end
			
			sPokerNeed = sPokerNeed..string.format(tGamblersGaoJin_Text["Poker"]["ColorIndex"], Get_ItemtypeName(tPoker[i]))
		end
	end
	
	--集齐对白
	if bFlag then
		tItem[nItemId]["Text111"] = string.format(tGamblersGaoJin_Text["Poker"]["Text111"], sPokerColor, sPokerColor, sPokerAward)
		
		LinkItemGossipFunc_New(nItemId, "1-1")
	--未集齐对白
	else
		tItem[nItemId]["Text121"] = string.format(tGamblersGaoJin_Text["Poker"]["Text121"], sPokerNeed)
		tItem[nItemId]["Text122"] = string.format(tGamblersGaoJin_Text["Poker"]["Text122"], sPokerAward)
		
		--能单个兑换奖励的出相应选项
		if tGamblersGaoJin_Reward[nItemId] ~= nil then
			local nStrength = tGamblersGaoJin_Reward[nItemId]["RewardStrengthValue"]["Value"]
			tItem[nItemId]["Option122"] = string.format(tGamblersGaoJin_Text["Poker"]["Option122"], nStrength)
			tItem[nItemId]["tOption1-2"] = {121,122}
		else
			tItem[nItemId]["tOption1-2"] = {121}
		end
		
		LinkItemGossipFunc_New(nItemId, "1-2")
	end
end

--可选包使用
function GamblersGaoJin_OptionBag(nItemId, nIndex)
	if tGamblersGaoJin_Reward[nItemId] == nil then
		return
	end
	
	if tGamblersGaoJin_Reward[nItemId][nIndex] == nil then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tGamblersGaoJin_Reward[nItemId][nIndex])
end

--高进对白判断
function GamblersGaoJin_GaoJinChk()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	
	local nLevel = tGamblersGaoJin_Cont["Level"]
	local nMetempsychosis = tGamblersGaoJin_Cont["Metempsychosis"]
	
	if Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
			local nEvent = tGamblersGaoJin_Stc["FreeItem"]["Event"]
			local nType = tGamblersGaoJin_Stc["FreeItem"]["Type"]
			
			--置零，打时间戳
			Task_StcReset(nEvent,nType,nUserId)
			
			if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
				tNpcGossip[nNpcId]["Option123"] = tGamblersGaoJin_Text[nNpcId]["Option123"]..tGamblersGaoJin_Text["Text"]["GetFreeAlready"]
			else
				tNpcGossip[nNpcId]["Option123"] = tGamblersGaoJin_Text[nNpcId]["Option123"]..tGamblersGaoJin_Text["Text"]["GetFreeOnce"]
			end
			
			tNpcGossip[nNpcId]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1211}
			tNpcGossip[nNpcId]["tOption1-2"] = {122,123}
		else
			tNpcGossip[nNpcId]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211}
			tNpcGossip[nNpcId]["tOption1-2"] = {121}
		end
		
		return true
	else
		return false
	end
end

--打开商店界面
function GamblersGaoJin_OpenShop()
	--时间检测
	if not Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["NpcOverTime"])
		return
	end
	
	User_OpenDialog()
end

--随机且取出不同奖励
function GamblersGaoJin_GetProb(tGet, nNpcId)
	local flat,tNum1= Probabil_RandomAward(tGamblersGaoJin_Prob[nNpcId],1)
	local nItemId = tNum1[1]["tAward"][1]["Item_1"]
	
	local bFlag = true
	
	if next(tGet) ~= nil then
		for k,v in pairs(tGet) do
			if nItemId == v then
				bFlag = false
			end
			break
		end
	end
	
	return bFlag, nItemId
end

--获取免费道具
function GamblersGaoJin_GetFreeItem()
	--时间检测
	if not Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["NpcOverTime"])
		return
	end
	
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	
	local nEvent = tGamblersGaoJin_Stc["FreeItem"]["Event"]
	local nType = tGamblersGaoJin_Stc["FreeItem"]["Type"]
	
	--置零，打时间戳
	Task_StcReset(nEvent,nType,nUserId)
	
	--是否已领取
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	
	if tGamblersGaoJin_Reward[nNpcId] == nil then
		return
	end
	
	local tAward = CommonFunc_Copy(tGamblersGaoJin_Reward[nNpcId])
	
	--背包空间判断
	if not RewardTemplate_CheckSpace(tAward,nUserId) then
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	
	--置掩码
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	
	--保存已经随机到的奖励
	local tGet = {}
	
	--筛选奖励
	for i = 1, tGamblersGaoJin_Cont["FreeItemNum"] do
		--随机
		local bFlag, nItemId = GamblersGaoJin_GetProb(tGet, nNpcId)
		local nCalLoop = 0
		while not bFlag do
			if nCalLoop > G_CalculateLoop then
				Sys_SaveAbnormalLog("函数 GamblersGaoJin_GetFreeItem 中 [while]循环超过1000次！")
				break
			end
			nCalLoop = nCalLoop + 1
			bFlag, nItemId = GamblersGaoJin_GetProb(tGet, nNpcId)
		end
		
		table.insert(tGet, nItemId)
		
		tAward["RewardItem"][i]["Id"] = nItemId
	end
	
	--给奖励
	RewardTemplate_UseItemAndMsg(tAward,nUserId)
end

--小丑王对白判断
function GamblersGaoJin_XiaoChouChk()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	
	local nLevel = tGamblersGaoJin_Cont["Level"]
	local nMetempsychosis = tGamblersGaoJin_Cont["Metempsychosis"]
	
	if Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
			tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,118,119}
			tNpcGossip[nNpcId]["tOption1-1"] = {113,114}
		else
			tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
			tNpcGossip[nNpcId]["tOption1-1"] = {112}
		end
	else
		tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
		tNpcGossip[nNpcId]["tOption1-1"] = {111}
	end
	
	return true
end

--参加扑克游戏
function GamblersGaoJin_AttendGame()
	local nType = tGamblersGaoJin_Cont["CardId"]
	local nUserId = Get_UserId()
	
	GamblersGaoJin_OpenCards(nUserId,nType)
end

--打开翻牌器
function GamblersGaoJin_OpenCards(nNowUserId,nType)
	--时间检测
	if not Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["NpcOverTime"])
		return
	end
	
	local nUserId = nNowUserId or Get_UserId()
	
	User_OpenRewardInterface(nType,nUserId)
end

--打开兑换商店
function GamblersGaoJin_OpenExchangeShop()
	--时间检测
	if not Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["NpcOverTime"])
		return
	end
	
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	
	User_OpenExchangeShop(nNpcId,nUserId)
end

--陷阱触发提示
function GamblersGaoJin_TrapTalk(nTrapId,nTrapType)
	if tGamblersGaoJin_Text["MsgBox"]["Trap"][nTrapType] == nil then
		return
	end
	
	local sFunc = string.format("GamblersGaoJin_Trap</N>%d</N>%d", nTrapId,nTrapType)
	
	Sys_MsgBox(tGamblersGaoJin_Text["MsgBox"]["Trap"][nTrapType], sFunc)
end

--陷阱触发
function GamblersGaoJin_Trap(nTrapId,nTrapType)
	
	if tGamblersGaoJin_Cont["Bound"][nTrapType] == nil then
		return
	end
	
	if nTrapType ~= 1995 then
		--时间检测
		if not Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
			User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["NpcOverTime"])
			return
		end
	end
	
	local nUserId = Get_UserId()
	
	--检查地图属性
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	
	local bMapFlag = false
	
	for k,v in pairs(tGamblersGaoJin_Cont["Bound"][nTrapType]["MapDoc"]) do
		if nMapDoc == v then
			bMapFlag = true
			break
		end
	end
	
	if not bMapFlag then
		return
	end
	
	if tGamblersGaoJin_Cont["Bound"][nTrapType]["MapId"] ~= nil then
		local nMapId = tGamblersGaoJin_Cont["Bound"][nTrapType]["MapId"]
		local nBoundX = tGamblersGaoJin_Cont["Bound"][nTrapType]["X"]
		local nBoundY = tGamblersGaoJin_Cont["Bound"][nTrapType]["Y"]
		
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1,nUserId)
	elseif tGamblersGaoJin_Cont["Bound"][nTrapType]["InstanceId"] ~= nil then
		local nInstanceId = tGamblersGaoJin_Cont["Bound"][nTrapType]["InstanceId"]
		User_EnterInstance(nInstanceId, 0, 0, 0, nUserId)
		
		--是否需要刷新NPC
		if tGamblersGaoJin_Cont["Bound"][nTrapType]["RefreshNpc"] == 1 then
			local nMapId = Get_UserMapId(nUserId)
			local bFlag = true
			
			for k,v in pairs(tGamblersGaoJin_Cont["DynNpc"]) do
				local sNpcName = tGamblersGaoJin_Text["Dynanpc"]["Name"][k]
				
				--判断是否已经存在NPC
				if Get_NpcCountByName(sNpcName,nUserId) > 0 then
					bFlag = false
				end
			end
			
			if bFlag then
				local nNpcId = tGamblersGaoJin_Cont["GunNpc"]
				
				--刷新NPC
				GamblersGaoJin_RefreshNPC(nNpcId, nMapId)
				
				--登记位置
				Sys_SetTempData(1,nMapId,nNpcId,1)
			end
		end
	end
	
end

--发射炮弹
function GamblersGaoJin_FireGun(nItemId, nItemNum, nIndex)
	--时间检测
	if not Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["NpcOverTime"])
		return
	end
	
	local nUserId = Get_UserId()
	
	local nEvent = tGamblersGaoJin_Stc["ClickNpc"]["Event"]
	local nType = tGamblersGaoJin_Stc["ClickNpc"]["Type"]
	
	--获取玩家当前点击的NPCid
	local nNpcId = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nNpcId <= 0 then
		return
	end
	
	local nGunEvent = tGamblersGaoJin_Stc["GunConfirm"]["Event"]
	local nGunType = tGamblersGaoJin_Stc["GunConfirm"]["Type"]
	
	--置零，打时间戳
	Task_StcReset(nGunEvent,nGunType,nUserId)
	
	local nData = Get_UserStatisticValue(nGunEvent,nGunType,nUserId)
	
	local nGun = nData % tGamblersGaoJin_Cont["GunSplit"]
	
	--已经屏蔽二次确认，直接发射炮弹
	if nGun > 0 then
		GamblersGaoJin_FireGunConfirm(nNpcId, nItemId, nItemNum, nIndex)
	else
		local sGunName = tGamblersGaoJin_Text["Text"]["Gun"][nIndex]
		
		--保存点击的炮弹索引
		Task_SetStatistic(nGunEvent,nGunType,nIndex * tGamblersGaoJin_Cont["GunSplit"],1,nUserId)
		
		tNpcGossip[nNpcId]["Text231"] = string.format(tGamblersGaoJin_Text[22867]["Text231"], nItemNum, sGunName)
		LinkNpcGossipFunc_New(nNpcId, "2-3")
	end
end

--发射炮弹对白判断
function GamblersGaoJin_FireGunLink(nItemId)
	local nUserId = Get_UserId()
	
	local nEvent = tGamblersGaoJin_Stc["ClickNpc"]["Event"]
	local nType = tGamblersGaoJin_Stc["ClickNpc"]["Type"]
	
	--获取玩家当前点击的NPCid
	local nNpcId = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nNpcId <= 0 then
		return
	end
	
	local nGunEvent = tGamblersGaoJin_Stc["GunConfirm"]["Event"]
	local nGunType = tGamblersGaoJin_Stc["GunConfirm"]["Type"]
	
	local nData = Get_UserStatisticValue(nGunEvent,nGunType,nUserId)
	
	local nGunIndex = math.floor(nData / tGamblersGaoJin_Cont["GunSplit"])
	
	--屏蔽二次确认功能
	if nItemId == nil then
		Task_SetStatistic(nGunEvent,nGunType,nGunIndex * tGamblersGaoJin_Cont["GunSplit"] + 1,1,nUserId)
		
		--链接至主对白
		LinkNpcGossipFunc_New(nNpcId, "1-1")
	else
		if nGunIndex > 0 then
			local nItemNum = tGamblersGaoJin_Cont["GunIndex"][nGunIndex]
			
			--确认
			GamblersGaoJin_FireGunConfirm(nNpcId, nItemId, nItemNum, nGunIndex)
		end
	end
end

--给炮弹奖励
function GamblersGaoJin_GiveGunAward(tReward, nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	local tAward = RewardTemplate_NewRandom(tReward, nIndex, nUserId)
	
	local nAwardItem = tAward[1]["tAward"][1]["RewardItem"][1]["Id"]
	
	local tItemAttr = Sys_Split(tAward[1]["tAward"][1]["RewardItem"][1]["Attr"]," ")
	local nAwardNum = tonumber(tItemAttr[2])
	
	local sTalk = Get_ItemtypeName(nAwardItem)
	
	--获得的物品是赤炼石
	if math.floor(nAwardItem / 10) == 73000 then
		sTalk = sTalk.."+"..tostring(nAwardItem % 10)..tGamblersGaoJin_Text["Mono"]
	end
	
	if nAwardNum > 1 then
		sTalk = sTalk.."*"..nAwardNum
	end
	
	local tTargetId = tAward[1]["tAward"][1]["NpcId"]
	local nRandom = math.random(1, #tTargetId)
	local nTatgetId = tTargetId[nRandom]
	
	local sNpcName = Get_NpcName(nTatgetId)
	
	--是否有全服公告
	if tAward[1]["tAward"][1]["TellToAll"] == 1 then
		local sUserName = Get_UserName(nUserId)
		
		Sys_TalkBroadcast(string.format(tGamblersGaoJin_Text["Broadcast"]["FireBig"],sUserName,sTalk, nAwardItem))
	end
	
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = Get_NpcPositionX(nTatgetId)
	local nPosY = Get_NpcPositionY(nTatgetId)
	local sEffectName = tGamblersGaoJin_Cont["Effect"]["Bomb"]
	
	--奖励位置光效
	Map_Effect(nMapId, nPosX, nPosY, sEffectName)
	
	return sTalk, sNpcName
end

--确认发射炮弹
function GamblersGaoJin_FireGunConfirm(nNpcId, nItemId, nItemNum, nIndex)
	--时间检测
	if not Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["NpcOverTime"])
		return
	end
	
	local nUserId = Get_UserId()
	
	--荷官小美信息
	local nExChangeNpc = tGamblersGaoJin_Cont["ExChangeNpc"]
	local nExChangeNpcPosX = Get_NpcPositionX(nExChangeNpc)
	local nExChangeNpcPosY = Get_NpcPositionY(nExChangeNpc)
	local sExChangeNpcName = Get_NpcName(nExChangeNpc)
	
	-- 金币不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		tNpcGossip[nNpcId]["Text213"] = string.format(tGamblersGaoJin_Text[22867]["Text213"], sExChangeNpcName, nExChangeNpcPosX, nExChangeNpcPosY)
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	
	local nLimit = Get_ItemtypeAccumulateLimit(nItemId)
	nLimit = (nLimit == 0 and 1 ) or nLimit
	local nDelSpace =  math.floor(nItemNum / nLimit)
	
	--是否十连抽
	if nIndex == 3 then
		nSpace = RewardTemplate_GetRandomSpace(tGamblersGaoJin_Reward[nNpcId],nIndex - 1,nUserId)
		nSpace = nSpace * 10 - nDelSpace
	else
		nSpace = RewardTemplate_GetRandomSpace(tGamblersGaoJin_Reward[nNpcId],nIndex,nUserId)
	end
	
	--背包满
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	
	--删除物品
	if not Item_DelMulItem(nItemId,nItemId,nItemNum,nil,nil,nUserId) then
		tNpcGossip[nNpcId]["Text213"] = string.format(tGamblersGaoJin_Text[22867]["Text213"], sExChangeNpcName, nExChangeNpcPosX, nExChangeNpcPosY)
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	
	--是否十连抽
	if nIndex == 3 then
		for i = 1, 10 do
			local sAward = GamblersGaoJin_GiveGunAward(tGamblersGaoJin_Reward[nNpcId], nIndex - 1, nUserId)
			
			tNpcGossip[nNpcId]["Text24"..(i + 2)] = string.format(tGamblersGaoJin_Text[22867]["Text24"..(i + 2)], sAward)
		end
		
		LinkNpcGossipFunc_New(nNpcId, "2-4")
		
	else
		--奖励
		local sTalk,sNpcName = GamblersGaoJin_GiveGunAward(tGamblersGaoJin_Reward[nNpcId], nIndex, nUserId)
		
		local sFunc = string.format("GamblersGaoJin_FireGunConfirm</N>%d</N>%d</N>%d</N>%d", nNpcId, nItemId, nItemNum, nIndex)
		
		--提示
		Sys_MsgBox(string.format(tGamblersGaoJin_Text["MsgBox"]["FireSucc"], sNpcName, sTalk), sFunc, nil, nUserId)
	end
	
	--以下为播放光效逻辑
	local nMapId = Get_UserMapId(nUserId)
	
	--获取当前炮台位置
	local nPlaceIndex = Get_SysTempData(1,nMapId,nNpcId)
	
	if nPlaceIndex <= 0 then
		return
	end
	
	local nPosX = tGamblersGaoJin_Cont["NpcPlace"][nNpcId][nPlaceIndex]["PosX"]
	local nPosY = tGamblersGaoJin_Cont["NpcPlace"][nNpcId][nPlaceIndex]["PosY"]
	local sEffectName = tGamblersGaoJin_Cont["Effect"]["Gun"]
	
	--炮台光效
	Map_Effect(nMapId, nPosX, nPosY, sEffectName)
end

--移动炮台
function GamblersGaoJin_MoveBattery(sDirection)
	local nUserId = Get_UserId()
	
	local nEvent = tGamblersGaoJin_Stc["ClickNpc"]["Event"]
	local nType = tGamblersGaoJin_Stc["ClickNpc"]["Type"]
	
	--获取NPCid
	local nNpcId = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nNpcId <= 0 then
		return
	end
	
	local nMapId = Get_UserMapId(nUserId)
	
	--获取当前炮台位置
	local nPlaceIndex = Get_SysTempData(1,nMapId,nNpcId)
	
	if nPlaceIndex <= 0 then
		return
	end
	
	--即将删除的NPC
	local nDelNpcId = nNpcId
	
	--移动方向判断
	--向左移，且不是在当前炮台最左边
	if sDirection == "Left" and nPlaceIndex ~= 1 then
		nPlaceIndex = nPlaceIndex - 1
	--向左移，在当前炮台最左边
	elseif sDirection == "Left" and nPlaceIndex == 1 then
		--左边还有炮台
		if tGamblersGaoJin_Cont["NpcPlace"][nNpcId - 1] ~= nil then
			nNpcId = nNpcId - 1
			nPlaceIndex = #tGamblersGaoJin_Cont["NpcPlace"][nNpcId]
		--左边没有炮台
		else
			return
		end
	--向右移，且不是在当前炮台最右边
	elseif sDirection == "Right" and nPlaceIndex ~= #tGamblersGaoJin_Cont["NpcPlace"][nNpcId] then
		nPlaceIndex = nPlaceIndex + 1
	--向右移，在当前炮台最右边
	elseif sDirection == "Right" and nPlaceIndex == #tGamblersGaoJin_Cont["NpcPlace"][nNpcId] then
		--右边还有炮台
		if tGamblersGaoJin_Cont["NpcPlace"][nNpcId + 1] ~= nil then
			nNpcId = nNpcId + 1
			nPlaceIndex = 1
		--右边没有炮台
		else
			return
		end
	else
		return
	end
	
	--删除NPC
	local bFlag = Npc_DelDynaNpc(nMapId,"name",tGamblersGaoJin_Text["Dynanpc"]["Name"][nDelNpcId])
	
	if not bFlag then
		return
	end
	
	local nPosX = tGamblersGaoJin_Cont["NpcPlace"][nNpcId][nPlaceIndex]["PosX"]
	local nPosY = tGamblersGaoJin_Cont["NpcPlace"][nNpcId][nPlaceIndex]["PosY"]
	local nLookFace = tGamblersGaoJin_Cont["NpcPlace"][nNpcId][nPlaceIndex]["LookFace"]
	
	--重刷NPC
	GamblersGaoJin_RefreshNPC(nNpcId, nMapId, nPosX, nPosY, nLookFace)
	
	--登记位置
	Sys_SetTempData(1,nMapId,nNpcId,nPlaceIndex)
	
	--接主对白
	GamblersGaoJin_Link(nNpcId)
end

--刷新动态NPC
function GamblersGaoJin_RefreshNPC(nNpcId, nMapId, nNowPosX, nNowPosY, nNowLookFace)
	--无名称数据
	if tGamblersGaoJin_Text["Dynanpc"]["Name"][nNpcId] == nil then
		return
	end
	
	--无相关数据配置
	if tGamblersGaoJin_Cont["DynNpc"][nNpcId] == nil then
		return
	end
	
	local sName = tGamblersGaoJin_Text["Dynanpc"]["Name"][nNpcId]
	local nSort = tGamblersGaoJin_Cont["DynNpc"][nNpcId]["Sort"]
	local nType = tGamblersGaoJin_Cont["DynNpc"][nNpcId]["Type"]
	local nLookFace = nNowLookFace or tGamblersGaoJin_Cont["DynNpc"][nNpcId]["LookFace"]
	local nAction = tGamblersGaoJin_Cont["DynNpc"][nNpcId]["Action"]
	local nPosX = nNowPosX or tGamblersGaoJin_Cont["DynNpc"][nNpcId]["PosX"]
	local nPosY = nNowPosY or tGamblersGaoJin_Cont["DynNpc"][nNpcId]["PosY"]
	
	return Npc_CreateDynaNpc(sName, nType ,nSort ,nLookFace,0,0,nMapId, nPosX,nPosY,0,0,0,nAction)
end

--动态NPC接入
function GamblersGaoJin_Link(nNpcId)
	if nNpcId == nil then
		return
	end
	
	local nUserId = Get_UserId()
	local nLevel = tGamblersGaoJin_Cont["Level"]
	local nMetempsychosis = tGamblersGaoJin_Cont["Metempsychosis"]
	
	--条件判断
	if Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
			local nMapId = Get_UserMapId(nUserId)
			local nPlaceIndex = Get_SysTempData(1,nMapId,nNpcId)
			
			tNpcGossip[nNpcId]["tOption1-1"] = {}
			
			table.insert(tNpcGossip[nNpcId]["tOption1-1"], 113)
			table.insert(tNpcGossip[nNpcId]["tOption1-1"], 114)
			table.insert(tNpcGossip[nNpcId]["tOption1-1"], 115)
			
			--位置判断
			--可以向左移的情况（不在当前炮台最左边或者左边还有炮台）
			if nPlaceIndex ~= 1 or tGamblersGaoJin_Cont["NpcPlace"][nNpcId - 1] ~= nil then
				table.insert(tNpcGossip[nNpcId]["tOption1-1"], 116)
			end
			
			--可以向右移的情况（不在当前炮台最右边或者右边还有炮台）
			if nPlaceIndex ~= #tGamblersGaoJin_Cont["NpcPlace"][nNpcId] or tGamblersGaoJin_Cont["NpcPlace"][nNpcId + 1] ~= nil then
				table.insert(tNpcGossip[nNpcId]["tOption1-1"], 117)
			end
			
			LinkNpcGossipFunc_New(nNpcId, "1-1")
		else
			LinkNpcGossipFunc_New(nNpcId, "1-3")
		end
	else
		LinkNpcGossipFunc_New(nNpcId, "1-2")
	end
	
	local nEvent = tGamblersGaoJin_Stc["ClickNpc"]["Event"]
	local nType = tGamblersGaoJin_Stc["ClickNpc"]["Type"]
	
	Task_SetStatistic(nEvent,nType,nNpcId,1,nUserId)
end

--超链接
function GamblersGaoJin_Hyperlink(nItemId)
	--时间检测
	if not Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["NpcOverTime"])
		return
	end
	
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	local nIndex = tGamblersGaoJin_Cont["FindIndex"][nItemId]
	
	local nPosX = tNpcPos["NewGodOfGamblers"][nIndex][2]
	local nPosY = tNpcPos["NewGodOfGamblers"][nIndex][3]
	
	local sNoFindFunc = string.format(tGamblersGaoJin_Text["MsgBox"]["NoFind"], nPosX, nPosY)
	
	--不在双龙城
	if nMapId ~= tGamblersGaoJin_Cont["TwinCity"] then
		Sys_MsgBox(sNoFindFunc)
		return
	end
	
	local nNpcId = 0
	
	if nIndex > 20000 then
		nNpcId = nIndex
	end
	
	local sFunc = string.format("Sys_GotoSomeWhere</N>%d</N>%d</N>%d</N>%d", nPosX,nPosY,nMapId,nNpcId)
	local sFailFunc = string.format("Sys_MsgBox</S>%s", sNoFindFunc)
	
	Sys_MsgBox(tGamblersGaoJin_Text["MsgBox"]["Find"][nIndex],sFunc,sFailFunc,nUserId)
end

--发型卡使用
function GamblersGaoJin_HairUse(nItemId)
	local nUserId = Get_UserId()
	
	if User_HairFaceCheckExist(0,75,nUserId) then
		Sys_MsgBox(tGamblersGaoJin_Text["MsgBox"]["HairGet"], nil, nil, nUserId)
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_HairFaceAward(0,75,0,nUserId)
		Sys_SaveActionRewardLog(string.format(tGamblersGaoJin_Log["DelItem"],nItemId, 1))
		User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["HairGet"])
	end
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--高进
tNpcFace[6063] = 50
tNpcGossip[22865] = tNpcGossip[22865] or DefaultNpc:new{}
tNpcGossip[22865]["DialogueText"] = tGamblersGaoJin_Text[22865]
tNpcGossip[22865]["OptionHidden"] = 1

--活动时间前
tNpcGossip[22865]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[22865]["tOption1-1"] = {111}
tNpcGossip[22865]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tGamblersGaoJin_Time["Activity"])
end

--活动时间内
tNpcGossip[22865]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211}
tNpcGossip[22865]["tOption1-2"] = {121,122,123}
tNpcGossip[22865]["ChkFunc1-2"] = function()
	return GamblersGaoJin_GaoJinChk()
end
tNpcGossip[22865]["OptionFunc122"] = "GamblersGaoJin_OpenExchangeShop"--玩家商城
tNpcGossip[22865]["OptionFunc123"] = "GamblersGaoJin_GetFreeItem"--免费领取道具

--活动时间后
tNpcGossip[22865]["Text1-3"] = {131,132,133,134}
tNpcGossip[22865]["tOption1-3"] = {131}
tNpcGossip[22865]["ChkFunc1-3"] = function()
	return CommonFunc_GetAfterActivityTime(tGamblersGaoJin_Time["Activity"])
end

--背包满
tNpcGossip[22865]["Text2-1"] = {211}
tNpcGossip[22865]["tOption2-1"] = {211}

--已领取
tNpcGossip[22865]["Text2-2"] = {221}
tNpcGossip[22865]["tOption2-2"] = {221}

--小丑王
tNpcFace[6064] = 1472
tNpcGossip[22866] = tNpcGossip[22866] or DefaultNpc:new{}
tNpcGossip[22866]["DialogueText"] = tGamblersGaoJin_Text[22866]
tNpcGossip[22866]["OptionHidden"] = 1

tNpcGossip[22866]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[22866]["tOption1-1"] = {111,112,113,114}
tNpcGossip[22866]["ChkFunc1-1"] = function()
	return GamblersGaoJin_XiaoChouChk()
end
tNpcGossip[22866]["OptionFunc113"] = "GamblersGaoJin_AttendGame"--参加扑克游戏
tNpcGossip[22866]["OptionFunc114"] = "GamblersGaoJin_OpenExchangeShop"--兑换扑克组合大奖

--海王大炮
tNpcFace[4161] = 1473

tNpcGossip[22867] = tNpcGossip[22867] or DefaultNpc:new{}
tNpcGossip[22867]["DialogueText"] = tGamblersGaoJin_Text[22867]
tNpcGossip[22867]["OptionHidden"] = 1

--条件满足
tNpcGossip[22867]["Text1-1"] = {111,112,113,114,115,116,118,119}
tNpcGossip[22867]["tOption1-1"] = {113,114,115,116,117}
tNpcGossip[22867]["OptionFunc113"] = "GamblersGaoJin_FireGun</N>3303926</N>270</N>1"--发射普通激光弹（270玩家金币）
tNpcGossip[22867]["OptionFunc114"] = "GamblersGaoJin_FireGun</N>3303926</N>2700</N>2"--发射镭射激光弹（2700玩家金币）
tNpcGossip[22867]["OptionFunc115"] = "GamblersGaoJin_FireGun</N>3303926</N>27000</N>3"--发射10镭射激光弹（27000玩家金币）
tNpcGossip[22867]["OptionFunc116"] = "GamblersGaoJin_MoveBattery</S>Left"--向左移
tNpcGossip[22867]["OptionFunc117"] = "GamblersGaoJin_MoveBattery</S>Right"--向左移

--时间不满足
tNpcGossip[22867]["Text1-2"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[22867]["tOption1-2"] = {111}

--等级不足
tNpcGossip[22867]["Text1-3"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[22867]["tOption1-3"] = {112}

--物品不足
tNpcGossip[22867]["Text2-1"] = {211,212,213}
tNpcGossip[22867]["tOption2-1"] = {211}

--背包满
tNpcGossip[22867]["Text2-2"] = {221}
tNpcGossip[22867]["tOption2-2"] = {221}

--二次确认
tNpcGossip[22867]["Text2-3"] = {231}
tNpcGossip[22867]["tOption2-3"] = {231,232}
tNpcGossip[22867]["OptionFunc231"] = "GamblersGaoJin_FireGunLink</N>3303926"--确认发射炮弹
tNpcGossip[22867]["OptionFunc232"] = "GamblersGaoJin_FireGunLink"--屏蔽二次确认

--发射10镭射激光弹奖励对白
tNpcGossip[22867]["Text2-4"] = {241,242,243,244,245,246,247,248,249,2410,2411,2412,2413}
tNpcGossip[22867]["tOption2-4"] = {241,242}
tNpcGossip[22867]["OptionFunc241"] = "GamblersGaoJin_FireGun</N>3303926</N>2700</N>2"--发射镭射激光弹（2700玩家金币）
tNpcGossip[22867]["OptionFunc242"] = "GamblersGaoJin_FireGun</N>3303926</N>27000</N>3"--发射10镭射激光弹（27000玩家金币）

--海王大炮
tNpcFace[4164] = 1473
tNpcFace[4165] = 1473

tNpcGossip[22868] = tNpcGossip[22867]
tNpcGossip[22869] = tNpcGossip[22867]

---------------------------------------------物品模块---------------------------------------------
--头好玩家邀请函
tItemFace[3308662] = 1474

--金币
tItem[3303926] = tItem[3303926] or {}
tItem[3303926]["Function"] = function(nItemId,sItemName)
	--过期删除
	if Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		NpcPosition_PathFind(tGamblersGaoJin_Cont["FindNpc"])
	else
		local tAward = CommonFunc_Copy(tGamblersGaoJin_Reward[nItemId])
		local nNum = Get_CountItemType(nItemId, 0)
		
		tAward["DeleteItem"][1]["ItemNum"] = nNum
		tAward["RewardCultivation"]["Value"] = nNum
	
		RewardTemplate_UseItemAndMsg(tAward)
	end
end

--金币骰子
tItem[3308664] = tItem[3308664] or {}
tItem[3308664]["Function"] = function(nItemId,sItemName)
	GamblersGaoJin_ItemUse(nItemId)
end

--金币奖盘
tItem[3308665] = tItem[3308665] or {}
tItem[3308665]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		RouletteMould_Main(3967)
	else
		RouletteMould_Main(3966)
	end
end

--金币赢家礼盒
tItem[3308666] = tItem[3308666] or {}
tItem[3308666]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		RouletteMould_Main(3969)
	else
		RouletteMould_Main(3968)
	end
end

--神纹精粹骰子
tItem[3308667] = tItem[3308667] or {}
tItem[3308667]["Function"] = function(nItemId,sItemName)
	GamblersGaoJin_ItemUse(nItemId)
end

--神纹精粹奖盘
tItem[3308668] = tItem[3308668] or {}
tItem[3308668]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		RouletteMould_Main(3971)
	else
		RouletteMould_Main(3970)
	end
end

--神纹精粹赢家礼盒
tItem[3308669] = tItem[3308669] or {}
tItem[3308669]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		RouletteMould_Main(3973)
	else
		RouletteMould_Main(3972)
	end
end

--赤炼石骰子（免费）
tItem[3308670] = tItem[3308670] or {}
tItem[3308670]["Function"] = function(nItemId,sItemName)
	GamblersGaoJin_ItemUse(nItemId)
end

--星陨石骰子（免费）
tItem[3308671] = tItem[3308671] or {}
tItem[3308671]["Function"] = function(nItemId,sItemName)
	GamblersGaoJin_ItemUse(nItemId)
end

--气力值骰子（免费）
tItem[3308672] = tItem[3308672] or {}
tItem[3308672]["Function"] = function(nItemId,sItemName)
	GamblersGaoJin_ItemUse(nItemId)
end

--金币骰子（免费）
tItem[3308673] = tItem[3308673] or {}
tItem[3308673]["Function"] = function(nItemId,sItemName)
	GamblersGaoJin_ItemUse(nItemId)
end

--神纹精粹骰子（免费）
tItem[3308674] = tItem[3308674] or {}
tItem[3308674]["Function"] = function(nItemId,sItemName)
	GamblersGaoJin_ItemUse(nItemId)
end

--金币包
--3308777 3308778 3308779 3308780 3308781 3308782
--3308783 3308784 3308785 3308786 3308787 3308788 3308789
for i = 3308777, 3308789 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		GamblersGaoJin_ItemUse(nItemId)
	end
end

--神纹精粹包
--3308790 3308791 3308792 3308793 3308794 3308795
--3308796 3308797 3308798 3308799 3308800 3308801 3308802
for i = 3308790, 3308802 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		GamblersGaoJin_ItemUse(nItemId)
	end
end

--+3赤炼石包
tItem[3309100] = tItem[3309100] or {}
tItem[3309100]["Function"] = function(nItemId,sItemName)
	GamblersGaoJin_ItemUse(nItemId)
end

--卡牌大师外套包
tItem[3309611] = tItem[3309100] or {}
--卡牌大师【传奇版】外套包
tItem[3309612] = tItem[3309100] or {}
--大鱼海棠骑宠外套包
tItem[3309613] = tItem[3309100] or {}
--大鱼海棠·凌波骑宠外套包
tItem[3309614] = tItem[3309100] or {}
tItem[3310848] = tItem[3309100] or {}

--幻影魔牌发型包
tItem[3309615] = tItem[3309100] or {}
--明亮星陨石礼包
tItem[3310761] = tItem[3309100] or {}
--幻影魔牌
tItemFace[3309616] = 1599
tItem[3309616] = tItem[3309616] or {}
tItem[3309616]["DialogueText"] = tGamblersGaoJin_Text[3309616]
tItem[3309616]["Text1-1"] = {111}
tItem[3309616]["ChkFunc1-1"] = function() return true end
tItem[3309616]["tOption1-1"] = {111,112}
tItem[3309616]["OptionFunc111"] = "GamblersGaoJin_HairUse</N>3309616"

--外套碎片
--3308695 3308696 小丑王
--3308697 3308698 大鱼海棠
for i = 3308695, 3308698 do
	tItemFace[i] = i - 3307189
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		if Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
			LinkItemGossipFunc_New(nItemId, "1-1")
		else
			--过期给气
			local nNum = Get_CountItemType(nItemId,0)
			local tAward = CommonFunc_Copy(tGamblersGaoJin_Reward[i][3])
			tAward["DeleteItem"][1]["ItemNum"] = nNum
			tAward["RewardStrengthValue"]["Value"] = tAward["RewardStrengthValue"]["Value"] * nNum
			RewardTemplate_UseItemAndMsg(tAward)
		end
	end
	tItem[i]["DialogueText"] = tGamblersGaoJin_Text[i]
	tItem[i]["Text1-1"] = {111,112}
	
	if tGamblersGaoJin_Text[i]["Option113"] ~= nil then
		tItem[i]["tOption1-1"] = {111,112,113}
		tItem[i]["OptionPoint113"] = "2-1"
		
		tItem[i]["Text2-1"] = {211}
		tItem[i]["tOption2-1"] = {211,212}
		tItem[i]["OptionFunc211"] = string.format("GamblersGaoJin_ChipUse</N>%d</N>4", i)
	else
		tItem[i]["tOption1-1"] = {111,112}
	end
	
	tItem[i]["OptionFunc111"] = string.format("GamblersGaoJin_ChipUse</N>%d</N>1", i)
	tItem[i]["OptionFunc112"] = string.format("GamblersGaoJin_ChipUse</N>%d</N>2", i)
end


--扑克牌
--红桃 3308675 3308676 3308677 3308678 3308679
--方块 3308680 3308681 3308682 3308683 3308684
--草花 3308685 3308686 3308687 3308688 3308689
--黑桃 3308690 3308691 3308692 3308693 3308694
for i = 3308675, 3308694 do
	tItemFace[i] = i - 3307189
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		--过期删除
		if not Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
			if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
				User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["OverTime"])
			end
		else
			GamblersGaoJin_PokerChk(nItemId)
		end
	end
	tItem[i]["DialogueText"] = tGamblersGaoJin_Text["Poker"]
	tItem[i]["Text1-1"] = {111}
	tItem[i]["tOption1-1"] = {111,112}
	tItem[i]["OptionFunc111"] = string.format("GamblersGaoJin_PokerUse</N>%d</N>1", i)
	tItem[i]["Text1-2"] = {121,122,123}
	tItem[i]["tOption1-2"] = {121,122}
	tItem[i]["OptionFunc121"] = "NpcPosition_PathFind</N>22866"
	tItem[i]["OptionFunc122"] = string.format("GamblersGaoJin_PokerUse</N>%d</N>2", i)
end

--卡牌大师可选包
tItemFace[3309101] = 1591
tItem[3309101] = tItem[3309101] or {}
tItem[3309101]["Function"] = function(nItemId,sItemName)
	--过期删除
	if not Sys_ChkFullTime(tActivityTime["NewGodOfGamblers"]["DelTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tGamblersGaoJin_Text["Channel2005"]["OverTime"])
		end
	else
		LinkItemGossipFunc_New(nItemId, "1-1")
	end
end
tItem[3309101]["DialogueText"] = tGamblersGaoJin_Text[3309101]
tItem[3309101]["Text1-1"] = {111}
tItem[3309101]["tOption1-1"] = {111,112}
tItem[3309101]["OptionFunc111"] = "GamblersGaoJin_OptionBag</N>3309101</N>1"
tItem[3309101]["OptionFunc112"] = "GamblersGaoJin_OptionBag</N>3309101</N>2"

--龙之咆哮骰子
tItem[3322683] = tItem[3322683] or {}
tItem[3322683]["Function"] = function(nItemId,sItemName)
	GamblersGaoJin_ItemUse(nItemId)
end

--龙之咆哮奖盘
tItem[3322684] = tItem[3322684] or {}
tItem[3322684]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		RouletteMould_Main(4198)
	else
		RouletteMould_Main(4199)
	end
end

--龙之咆哮大奖盘
tItem[3322685] = tItem[3322685] or {}
tItem[3322685]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tGamblersGaoJin_Time["Activity"]) then
		RouletteMould_Main(4200)
	else
		RouletteMould_Main(4201)
	end
end

--P2Anima*3
tItem[3322686] = tItem[3322686] or {}
tItem[3322686]["Function"] = function(nItemId,sItemName)
	GamblersGaoJin_ItemUse(nItemId)
end

--P3Anima*3
tItem[3322687] = tItem[3322686]

---------------------------------------------怪物模块---------------------------------------------

---------------------------------------------陷阱模块---------------------------------------------
for i = 1972, 1974 do
	tTrap[i] = tTrap[i] or {}
	tTrap[i]["Function"] = function(nTrapId,nTrapType)
		GamblersGaoJin_TrapTalk(nTrapId,nTrapType)
	end
end

tTrap[1995] = tTrap[1995] or {}
tTrap[1995]["Function"] = function(nTrapId,nTrapType)
	GamblersGaoJin_TrapTalk(nTrapId,nTrapType)
end
--------------------------------------翻牌器-------------------------------------------
tCardsLotteryAgainCost[39] = tCardsLotteryAgainCost[39] or {}
tCardsLotteryAgainCost[39]["tFunction"] = tCardsLotteryAgainCost[39]["tFunction"] or {}
table.insert(tCardsLotteryAgainCost[39]["tFunction"],GamblersGaoJin_OpenCards)
