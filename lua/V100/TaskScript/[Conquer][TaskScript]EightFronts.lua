------------------------------------------------------------------------------------
--Name：            171027[简体征服][任务脚本]新八阵图任务制作
--Creator:      陈莺
--Created:     2017/10/27
------------------------------------------------------------------------------------
--任务需求：

--命名规范：
-- EightFronts_
------------------------------------------------------------------------------------
local tEightFronts_Data = {}
	tEightFronts_Data["Level"] = 70
	tEightFronts_Data["Metempsychosis"] = 0
	tEightFronts_Data["Random"] = 1600  ---16%的概率发现破阵谜题
	tEightFronts_Data["Effect"] = "rainbow"  ---进入生门后，头上播放光效：向死而生
	tEightFronts_Data["FailEffect"] = "BodyDisapear"  ---搜索将士遗骸失败时
	tEightFronts_Data["BoxEffect"] = "angelwing"  ---开启月光宝盒时
	tEightFronts_Data["MapId"] = 5000
	tEightFronts_Data["MonsterRandom"] = 600 --惊门与伤门有6%的几率掉落破关令牌
	tEightFronts_Data["ChkAch"] = 11022  --成就
	-- 监狱地图id
	tEightFronts_Data["Jianyu"] = {6000,6010,6002,6003,6004}
	tEightFronts_Data["ItemGlobal"] = 53025
	tEightFronts_Data["Npc"] = {}
	tEightFronts_Data["Npc"][1045] = 600009  --杜门
	tEightFronts_Data["Npc"][1046] = 600011  --景门
	
	--6个门令牌id
	tEightFronts_Data["ItemId"] = {}
	tEightFronts_Data["ItemId"][1] = 721010
	tEightFronts_Data["ItemId"][2] = 721011
	tEightFronts_Data["ItemId"][3] = 721012
	tEightFronts_Data["ItemId"][4] = 721013
	tEightFronts_Data["ItemId"][5] = 721014
	tEightFronts_Data["ItemId"][6] = 721015
	---文字显示令牌顺序
	tEightFronts_Data["ItemIdType"] = {}
	tEightFronts_Data["ItemIdType"][1] = 721015
	tEightFronts_Data["ItemIdType"][2] = 721010
	tEightFronts_Data["ItemIdType"][3] = 721014
	tEightFronts_Data["ItemIdType"][4] = 721011
	tEightFronts_Data["ItemIdType"][5] = 721012
	tEightFronts_Data["ItemIdType"][6] = 721013
	
	-- boss
	tEightFronts_Data["Boss"] = {}
	tEightFronts_Data["Boss"]["GenId"] = 20269
	tEightFronts_Data["Boss"]["MapId"] = 1049
	tEightFronts_Data["Boss"]["PosX"] = 100
	tEightFronts_Data["Boss"]["PosY"] = 100
	tEightFronts_Data["Boss"]["Id"] = 3991
	
	--读条
	tEightFronts_Data["Explore"] = {}
	tEightFronts_Data["Explore"]["Secs"] = 2
	tEightFronts_Data["Explore"]["ActionId"] = 100
	
	--读条
	tEightFronts_Data["Status"] = {}
	-- 眩晕
	tEightFronts_Data["Status"][1] = {}
	tEightFronts_Data["Status"][1]["Status"] = 55
	tEightFronts_Data["Status"][1]["Power"] = 200
	tEightFronts_Data["Status"][1]["Secs"] = 3
	tEightFronts_Data["Status"][1]["Times"] = 1
	tEightFronts_Data["Status"][1]["unRemainTime"] = 1
	tEightFronts_Data["Status"][1]["unEndTime"] = 1
	tEightFronts_Data["Status"][1]["ucRecordable"] = 0
	-- 冰冻
	tEightFronts_Data["Status"][2] = {}
	tEightFronts_Data["Status"][2]["Status"] = 56
	tEightFronts_Data["Status"][2]["Power"] = 200
	tEightFronts_Data["Status"][2]["Secs"] = 3
	tEightFronts_Data["Status"][2]["Times"] = 1
	tEightFronts_Data["Status"][2]["unRemainTime"] = 1
	tEightFronts_Data["Status"][2]["unEndTime"] = 1
	tEightFronts_Data["Status"][2]["ucRecordable"] = 0
	-- 掉血
	tEightFronts_Data["Status"][3] = {}
	tEightFronts_Data["Status"][3]["Status"] = 55
	tEightFronts_Data["Status"][3]["Power"] = 200
	tEightFronts_Data["Status"][3]["Secs"] = 3
	tEightFronts_Data["Status"][3]["Times"] = 1
	tEightFronts_Data["Status"][3]["unRemainTime"] = 1
	tEightFronts_Data["Status"][3]["unEndTime"] = 1
	tEightFronts_Data["Status"][3]["ucRecordable"] = 0

	tEightFronts_Data["Log"] = {}
	-- 删除玩家身上的令牌log
	tEightFronts_Data["Log"][1] = "0,0,%d,1,12000909,3,0,0"
	-- 成就log
	tEightFronts_Data["Log"]["Ach"] = "0,0,0,0,12000773,100,11022,1"
	-- 两个迷宫上下左右位置
local tEightFronts_PosTrue = {}
	--杜门
	tEightFronts_PosTrue[21330] = {}
	tEightFronts_PosTrue[21330]["MapId"] = 1045
	tEightFronts_PosTrue[21330]["NpcId"] = {}
	tEightFronts_PosTrue[21330]["NpcId"][1] = 21331
	tEightFronts_PosTrue[21330]["NpcId"][2] = 21330
	
	tEightFronts_PosTrue[21330][1] = {} --左
	tEightFronts_PosTrue[21330][1]["PosX"] = 217
	tEightFronts_PosTrue[21330][1]["PosY"] = 504
	tEightFronts_PosTrue[21330][1]["NpcId"] = 21331
	
	tEightFronts_PosTrue[21330][2] = {} --右
	tEightFronts_PosTrue[21330][2]["PosX"] = 475
	tEightFronts_PosTrue[21330][2]["PosY"] = 196
	tEightFronts_PosTrue[21330][2]["NpcId"] = 21330
	--景门
	tEightFronts_PosTrue[21334] = {}
	tEightFronts_PosTrue[21334]["MapId"] = 1046
	tEightFronts_PosTrue[21334]["NpcId"] = {}
	tEightFronts_PosTrue[21334]["NpcId"][1] = 21335
	tEightFronts_PosTrue[21334]["NpcId"][2] = 21334
	tEightFronts_PosTrue[21334][1] = {} --上
	tEightFronts_PosTrue[21334][1]["PosX"] = 167
	tEightFronts_PosTrue[21334][1]["PosY"] = 147
	tEightFronts_PosTrue[21334][1]["NpcId"] = 21335
	
	tEightFronts_PosTrue[21334][2] = {} --下
	tEightFronts_PosTrue[21334][2]["PosX"] = 550
	tEightFronts_PosTrue[21334][2]["PosY"] = 561
	tEightFronts_PosTrue[21334][2]["NpcId"] = 21334
	
local tEightFronts_Reward = {}
	--开门通关谜题
	tEightFronts_Reward[6005] = {}
	tEightFronts_Reward[6005]["LogId"] = 12000909
	tEightFronts_Reward[6005]["RewardItem"] = {}
	tEightFronts_Reward[6005]["RewardItem"][1] = {}
	tEightFronts_Reward[6005]["RewardItem"][1]["Id"] = 3306556
	tEightFronts_Reward[6005]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_Reward[6005]["RewardEffect"] = {}
	tEightFronts_Reward[6005]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[6005]["RewardEffect"]["Effect"] = "eidolon"
	tEightFronts_Reward[6005]["Talk"] = tEightFronts_Text["Msg"]["Get"][6005]
	
	--休门通关谜题
	tEightFronts_Reward[6000] = {}
	tEightFronts_Reward[6000]["LogId"] = 12000909
	tEightFronts_Reward[6000]["RewardItem"] = {}
	tEightFronts_Reward[6000]["RewardItem"][1] = {}
	tEightFronts_Reward[6000]["RewardItem"][1]["Id"] = 3306557
	tEightFronts_Reward[6000]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_Reward[6000]["RewardEffect"] = {}
	tEightFronts_Reward[6000]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[6000]["RewardEffect"]["Effect"] = "eidolon"
	tEightFronts_Reward[6000]["Talk"] = tEightFronts_Text["Msg"]["Get"][6000]

	--惊门
	tEightFronts_Reward[6004] = {}
	tEightFronts_Reward[6004]["LogId"] = 12000909
	tEightFronts_Reward[6004]["RewardItem"] = {}
	tEightFronts_Reward[6004]["RewardItem"][1] = {}
	tEightFronts_Reward[6004]["RewardItem"][1]["Id"] = 721014
	tEightFronts_Reward[6004]["RewardItem"][1]["Attr"] = "0 1"
	--伤门
	tEightFronts_Reward[6001] = {}
	tEightFronts_Reward[6001]["LogId"] = 12000909
	tEightFronts_Reward[6001]["RewardItem"] = {}
	tEightFronts_Reward[6001]["RewardItem"][1] = {}
	tEightFronts_Reward[6001]["RewardItem"][1]["Id"] = 721011
	tEightFronts_Reward[6001]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 生门获得月光宝盒
	tEightFronts_Reward["GetItem"] = {}
	
	tEightFronts_Reward["GetItem"][1] = {}
	tEightFronts_Reward["GetItem"][1]["ItemChanceSum"] = 10000
	-- 2转以下玩家
	tEightFronts_Reward["GetItem"][1][1] ={}
	tEightFronts_Reward["GetItem"][1][1]["RandomItemChanceType"] = 2
	tEightFronts_Reward["GetItem"][1][1]["ItemChance"] = 8000
	tEightFronts_Reward["GetItem"][1][1]["RewardItem"] = {}
	tEightFronts_Reward["GetItem"][1][1]["RewardItem"][1] = {}
	tEightFronts_Reward["GetItem"][1][1]["RewardItem"][1]["Id"] = 3306558
	tEightFronts_Reward["GetItem"][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tEightFronts_Reward["GetItem"][1][1]["Log"] = "0,0,0,0,12000909,2[1],3306558,1"
	tEightFronts_Reward["GetItem"][1][1]["RewardEffect"] = {}
	tEightFronts_Reward["GetItem"][1][1]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward["GetItem"][1][1]["RewardEffect"]["Effect"] = "zf2-e290"

	tEightFronts_Reward["GetItem"][1][2] ={}
	tEightFronts_Reward["GetItem"][1][2]["RandomItemChanceType"] = 2
	tEightFronts_Reward["GetItem"][1][2]["ItemChance"] = 2000
	tEightFronts_Reward["GetItem"][1][2]["RewardItem"] = {}
	tEightFronts_Reward["GetItem"][1][2]["RewardItem"][1] = {}
	tEightFronts_Reward["GetItem"][1][2]["RewardItem"][1]["Id"] = 3306558
	tEightFronts_Reward["GetItem"][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_Reward["GetItem"][1][2]["Log"] = "0,0,0,0,12000909,2[2],3306558,1"
	tEightFronts_Reward["GetItem"][1][2]["RewardEffect"] = {}
	tEightFronts_Reward["GetItem"][1][2]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward["GetItem"][1][2]["RewardEffect"]["Effect"] = "zf2-e290"

	tEightFronts_Reward["GetItem"][2] = {}
	tEightFronts_Reward["GetItem"][2]["ItemChanceSum"] = 10000
	-- 2转以上玩家
	tEightFronts_Reward["GetItem"][2][1] ={}
	tEightFronts_Reward["GetItem"][2][1]["RandomItemChanceType"] = 2
	tEightFronts_Reward["GetItem"][2][1]["ItemChance"] = 5000
	tEightFronts_Reward["GetItem"][2][1]["RewardItem"] = {}
	tEightFronts_Reward["GetItem"][2][1]["RewardItem"][1] = {}
	tEightFronts_Reward["GetItem"][2][1]["RewardItem"][1]["Id"] = 3306558
	tEightFronts_Reward["GetItem"][2][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tEightFronts_Reward["GetItem"][2][1]["Log"] = "0,0,0,0,12000909,2[1],3306558,1"
	tEightFronts_Reward["GetItem"][2][1]["RewardEffect"] = {}
	tEightFronts_Reward["GetItem"][2][1]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward["GetItem"][2][1]["RewardEffect"]["Effect"] = "zf2-e290"

	tEightFronts_Reward["GetItem"][2][2] ={}
	tEightFronts_Reward["GetItem"][2][2]["RandomItemChanceType"] = 2
	tEightFronts_Reward["GetItem"][2][2]["ItemChance"] = 5000
	tEightFronts_Reward["GetItem"][2][2]["RewardItem"] = {}
	tEightFronts_Reward["GetItem"][2][2]["RewardItem"][1] = {}
	tEightFronts_Reward["GetItem"][2][2]["RewardItem"][1]["Id"] = 3306558
	tEightFronts_Reward["GetItem"][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_Reward["GetItem"][2][2]["Log"] = "0,0,0,0,12000909,2[2],3306558,1"
	tEightFronts_Reward["GetItem"][2][2]["RewardEffect"] = {}
	tEightFronts_Reward["GetItem"][2][2]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward["GetItem"][2][2]["RewardEffect"]["Effect"] = "zf2-e290"

	tEightFronts_Reward["GetNewItem"] = {}
	
	tEightFronts_Reward["GetNewItem"][1] = {}
	tEightFronts_Reward["GetNewItem"][1]["ItemChanceSum"] = 10000
	-- 2转以下玩家
	tEightFronts_Reward["GetNewItem"][1][1] ={}
	tEightFronts_Reward["GetNewItem"][1][1]["RandomItemChanceType"] = 2
	tEightFronts_Reward["GetNewItem"][1][1]["ItemChance"] = 8000
	tEightFronts_Reward["GetNewItem"][1][1]["RewardItem"] = {}
	tEightFronts_Reward["GetNewItem"][1][1]["RewardItem"][1] = {}
	tEightFronts_Reward["GetNewItem"][1][1]["RewardItem"][1]["Id"] = 3310883
	tEightFronts_Reward["GetNewItem"][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tEightFronts_Reward["GetNewItem"][1][1]["Log"] = "0,0,0,0,12000909,2[1],3310883,1"
	tEightFronts_Reward["GetNewItem"][1][1]["RewardEffect"] = {}
	tEightFronts_Reward["GetNewItem"][1][1]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward["GetNewItem"][1][1]["RewardEffect"]["Effect"] = "zf2-e290"

	tEightFronts_Reward["GetNewItem"][1][2] ={}
	tEightFronts_Reward["GetNewItem"][1][2]["RandomItemChanceType"] = 2
	tEightFronts_Reward["GetNewItem"][1][2]["ItemChance"] = 2000
	tEightFronts_Reward["GetNewItem"][1][2]["RewardItem"] = {}
	tEightFronts_Reward["GetNewItem"][1][2]["RewardItem"][1] = {}
	tEightFronts_Reward["GetNewItem"][1][2]["RewardItem"][1]["Id"] = 3310883
	tEightFronts_Reward["GetNewItem"][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_Reward["GetNewItem"][1][2]["Log"] = "0,0,0,0,12000909,2[2],3310883,1"
	tEightFronts_Reward["GetNewItem"][1][2]["RewardEffect"] = {}
	tEightFronts_Reward["GetNewItem"][1][2]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward["GetNewItem"][1][2]["RewardEffect"]["Effect"] = "zf2-e290"

	tEightFronts_Reward["GetNewItem"][2] = {}
	tEightFronts_Reward["GetNewItem"][2]["ItemChanceSum"] = 10000
	-- 2转以上玩家
	tEightFronts_Reward["GetNewItem"][2][1] ={}
	tEightFronts_Reward["GetNewItem"][2][1]["RandomItemChanceType"] = 2
	tEightFronts_Reward["GetNewItem"][2][1]["ItemChance"] = 5000
	tEightFronts_Reward["GetNewItem"][2][1]["RewardItem"] = {}
	tEightFronts_Reward["GetNewItem"][2][1]["RewardItem"][1] = {}
	tEightFronts_Reward["GetNewItem"][2][1]["RewardItem"][1]["Id"] = 3310883
	tEightFronts_Reward["GetNewItem"][2][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tEightFronts_Reward["GetNewItem"][2][1]["Log"] = "0,0,0,0,12000909,2[1],3310883,1"
	tEightFronts_Reward["GetNewItem"][2][1]["RewardEffect"] = {}
	tEightFronts_Reward["GetNewItem"][2][1]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward["GetNewItem"][2][1]["RewardEffect"]["Effect"] = "zf2-e290"

	tEightFronts_Reward["GetNewItem"][2][2] ={}
	tEightFronts_Reward["GetNewItem"][2][2]["RandomItemChanceType"] = 2
	tEightFronts_Reward["GetNewItem"][2][2]["ItemChance"] = 5000
	tEightFronts_Reward["GetNewItem"][2][2]["RewardItem"] = {}
	tEightFronts_Reward["GetNewItem"][2][2]["RewardItem"][1] = {}
	tEightFronts_Reward["GetNewItem"][2][2]["RewardItem"][1]["Id"] = 3310883
	tEightFronts_Reward["GetNewItem"][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_Reward["GetNewItem"][2][2]["Log"] = "0,0,0,0,12000909,2[2],3310883,1"
	tEightFronts_Reward["GetNewItem"][2][2]["RewardEffect"] = {}
	tEightFronts_Reward["GetNewItem"][2][2]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward["GetNewItem"][2][2]["RewardEffect"]["Effect"] = "zf2-e290"

	
	-- 杜门获得令牌
	tEightFronts_Reward[600009] = {}
	tEightFronts_Reward[600009]["LogId"] = 12000909
	tEightFronts_Reward[600009]["RewardItem"] = {}
	tEightFronts_Reward[600009]["RewardItem"][1] = {}
	tEightFronts_Reward[600009]["RewardItem"][1]["Id"] = 721012
	tEightFronts_Reward[600009]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_Reward[600009]["RewardEffect"] = {}
	tEightFronts_Reward[600009]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[600009]["RewardEffect"]["Effect"] = "zf2-e290"
	-- 景门获得令牌
	tEightFronts_Reward[600011] = {}
	tEightFronts_Reward[600011]["LogId"] = 12000909
	tEightFronts_Reward[600011]["RewardItem"] = {}
	tEightFronts_Reward[600011]["RewardItem"][1] = {}
	tEightFronts_Reward[600011]["RewardItem"][1]["Id"] = 721013
	tEightFronts_Reward[600011]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_Reward[600011]["RewardEffect"] = {}
	tEightFronts_Reward[600011]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[600011]["RewardEffect"]["Effect"] = "zf2-e290"

	
	-- 开门通关谜题获得令牌
	tEightFronts_Reward[3306556] = {}
	tEightFronts_Reward[3306556]["True"] = 4
	-- 成功
	tEightFronts_Reward[3306556][1] = {}
	tEightFronts_Reward[3306556][1]["LogId"] = 12000909
	tEightFronts_Reward[3306556][1]["DeleteItem"] = {}
	tEightFronts_Reward[3306556][1]["DeleteItem"][1] = {}
	tEightFronts_Reward[3306556][1]["DeleteItem"][1]["Id"] = 3306556
	tEightFronts_Reward[3306556][1]["RewardItem"] = {}
	tEightFronts_Reward[3306556][1]["RewardItem"][1] = {}
	tEightFronts_Reward[3306556][1]["RewardItem"][1]["Id"] = 721015
	tEightFronts_Reward[3306556][1]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_Reward[3306556][1]["RewardEffect"] = {}
	tEightFronts_Reward[3306556][1]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[3306556][1]["RewardEffect"]["Effect"] = "zf2-e290"
	-- 失败
	tEightFronts_Reward[3306556][2] = {}
	tEightFronts_Reward[3306556][2] ["LogId"] = 12000909
	tEightFronts_Reward[3306556][2]["DeleteItem"] = {}
	tEightFronts_Reward[3306556][2]["DeleteItem"][1] = {}
	tEightFronts_Reward[3306556][2]["DeleteItem"][1]["Id"] = 3306556

	tEightFronts_Reward[3306556][2]["RewardEffect"] = {}
	tEightFronts_Reward[3306556][2]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[3306556][2]["RewardEffect"]["Effect"] = "zf2-e290"
	-- 休门通关谜题获得令牌
	tEightFronts_Reward[3306557] = {}
	tEightFronts_Reward[3306557]["True"] = 3
	-- 成功
	tEightFronts_Reward[3306557][1] = {}
	tEightFronts_Reward[3306557][1]["LogId"] = 12000909
	tEightFronts_Reward[3306557][1]["DeleteItem"] = {}
	tEightFronts_Reward[3306557][1]["DeleteItem"][1] = {}
	tEightFronts_Reward[3306557][1]["DeleteItem"][1]["Id"] = 3306557
	tEightFronts_Reward[3306557][1]["RewardItem"] = {}
	tEightFronts_Reward[3306557][1]["RewardItem"][1] = {}
	tEightFronts_Reward[3306557][1]["RewardItem"][1]["Id"] = 721010
	tEightFronts_Reward[3306557][1]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_Reward[3306557][1]["RewardEffect"] = {}
	tEightFronts_Reward[3306557][1]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[3306557][1]["RewardEffect"]["Effect"] = "zf2-e290"
	-- 失败
	tEightFronts_Reward[3306557][2] = {}
	tEightFronts_Reward[3306557][2] ["LogId"] = 12000909
	tEightFronts_Reward[3306557][2]["DeleteItem"] = {}
	tEightFronts_Reward[3306557][2]["DeleteItem"][1] = {}
	tEightFronts_Reward[3306557][2]["DeleteItem"][1]["Id"] = 3306557

	tEightFronts_Reward[3306557][2]["RewardEffect"] = {}
	tEightFronts_Reward[3306557][2]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[3306557][2]["RewardEffect"]["Effect"] = "zf2-e290"

	-- 15级就职礼包
	tEightFronts_Reward[3310884] = {}
	tEightFronts_Reward[3310884]["LogId"] = 12000909
	tEightFronts_Reward[3310884]["DeleteItem"] = {}
	tEightFronts_Reward[3310884]["DeleteItem"][1] = {}
	tEightFronts_Reward[3310884]["DeleteItem"][1]["Id"] = 3310884
	tEightFronts_Reward[3310884]["RewardBless"] = {}
	tEightFronts_Reward[3310884]["RewardBless"]["Value"] = 72  --3天祝福时间
	tEightFronts_Reward[3310884]["RewardEffect"] = {}
	tEightFronts_Reward[3310884]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[3310884]["RewardEffect"]["Effect"] = "zf2-e290"

	-- 40级就职礼包
	tEightFronts_Reward[3310885] = {}
	tEightFronts_Reward[3310885]["LogId"] = 12000909
	tEightFronts_Reward[3310885]["DeleteItem"] = {}
	tEightFronts_Reward[3310885]["DeleteItem"][1] = {}
	tEightFronts_Reward[3310885]["DeleteItem"][1]["Id"] = 3310885
	tEightFronts_Reward[3310885]["RewardItem"] = {}
	tEightFronts_Reward[3310885]["RewardItem"][1] = {}
	tEightFronts_Reward[3310885]["RewardItem"][1]["Id"] = 723017   --昆仑雪水（赠）
	tEightFronts_Reward[3310885]["RewardItem"][1]["Attr"] = "0 3 3"
	tEightFronts_Reward[3310885]["RewardEffect"] = {}
	tEightFronts_Reward[3310885]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[3310885]["RewardEffect"]["Effect"] = "zf2-e290"
-- 70级就职礼包
	tEightFronts_Reward[3310886] = {}
	tEightFronts_Reward[3310886]["LogId"] = 12000909
	tEightFronts_Reward[3310886]["DeleteItem"] = {}
	tEightFronts_Reward[3310886]["DeleteItem"][1] = {}
	tEightFronts_Reward[3310886]["DeleteItem"][1]["Id"] = 3310886
	tEightFronts_Reward[3310886]["RewardItem"] = {}
	tEightFronts_Reward[3310886]["RewardItem"][1] = {}
	tEightFronts_Reward[3310886]["RewardItem"][1]["Id"] = 3006531
	tEightFronts_Reward[3310886]["RewardItem"][1]["Attr"] = "0 30"
	tEightFronts_Reward[3310886]["RewardEffect"] = {}
	tEightFronts_Reward[3310886]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[3310886]["RewardEffect"]["Effect"] = "zf2-e290"
-- 100级就职礼包
	tEightFronts_Reward[3310887] = {}
	tEightFronts_Reward[3310887]["LogId"] = 12000909
	tEightFronts_Reward[3310887]["DeleteItem"] = {}
	tEightFronts_Reward[3310887]["DeleteItem"][1] = {}
	tEightFronts_Reward[3310887]["DeleteItem"][1]["Id"] = 3310887
	tEightFronts_Reward[3310887]["RewardItem"] = {}
	tEightFronts_Reward[3310887]["RewardItem"][1] = {}
	tEightFronts_Reward[3310887]["RewardItem"][1]["Id"] = 3310800   --敦煌通行令（赠）
	tEightFronts_Reward[3310887]["RewardItem"][1]["Attr"] = "0 1 3"
	tEightFronts_Reward[3310887]["RewardEffect"] = {}
	tEightFronts_Reward[3310887]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[3310887]["RewardEffect"]["Effect"] = "zf2-e290"

-- 110级就职礼包
	tEightFronts_Reward[3310888] = {}
	tEightFronts_Reward[3310888]["LogId"] = 12000909
	tEightFronts_Reward[3310888]["DeleteItem"] = {}
	tEightFronts_Reward[3310888]["DeleteItem"][1] = {}
	tEightFronts_Reward[3310888]["DeleteItem"][1]["Id"] = 3310888
	tEightFronts_Reward[3310888]["RewardItem"] = {}
	tEightFronts_Reward[3310888]["RewardItem"][1] = {}
	tEightFronts_Reward[3310888]["RewardItem"][1]["Id"] = 1088000   --龙珠（赠）
	tEightFronts_Reward[3310888]["RewardItem"][1]["Attr"] = "0 1 3"
	tEightFronts_Reward[3310888]["RewardEffect"] = {}
	tEightFronts_Reward[3310888]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[3310888]["RewardEffect"]["Effect"] = "zf2-e290"
	
-- 1500赠点包
	tEightFronts_Reward[3312633] = {}
	tEightFronts_Reward[3312633]["LogId"] = 12000909
	tEightFronts_Reward[3312633]["DeleteItem"] = {}
	tEightFronts_Reward[3312633]["DeleteItem"][1] = {}
	tEightFronts_Reward[3312633]["DeleteItem"][1]["Id"] = 3312633
	tEightFronts_Reward[3312633]["RewardItem"] = {}
	tEightFronts_Reward[3312633]["RewardEMoneyMono"] = {}
	tEightFronts_Reward[3312633]["RewardEMoneyMono"]["Value"] = 1500
	tEightFronts_Reward[3312633]["RewardEMoneyMono"]["EmoneyLog"] = "1000	437	0	0	1500	"
	tEightFronts_Reward[3312633]["RewardEffect"] = {}
	tEightFronts_Reward[3312633]["RewardEffect"]["SzObj"] = "self"
	tEightFronts_Reward[3312633]["RewardEffect"]["Effect"] = "zf2-e290"

local tEightFronts_Stc = {}
	tEightFronts_Stc[1] = {}  --记录首次接诸葛八阵图任务
	tEightFronts_Stc[1]["EventType"] = 170
	tEightFronts_Stc[1]["DataType"] = 01
	
	tEightFronts_Stc[2] = {}  --记录打开月光宝盒次数
	tEightFronts_Stc[2]["EventType"] = 170
	tEightFronts_Stc[2]["DataType"] = 02
	tEightFronts_Stc[2]["Data"] = 1
	
	--记录景门/杜门随机到的是上还是下 
	-- = 1 景门上 = 2 景门下    =10 杜门上  =20杜门下
	tEightFronts_Stc[3] = {}  
	tEightFronts_Stc[3]["EventType"] = 170
	tEightFronts_Stc[3]["DataType"] = 53
	-- 记录任务阶段
	tEightFronts_Stc[4] = {}  
	tEightFronts_Stc[4]["EventType"] = 170
	tEightFronts_Stc[4]["DataType"] = 54

	-- 记录上线提示
local tEightFronts_LoginStc = {}
	tEightFronts_LoginStc[1] = {}  
	tEightFronts_LoginStc[1]["EventType"] = 187
	tEightFronts_LoginStc[1]["DataType"] = 58

	
local tEightFronts_Pos = {}
	tEightFronts_Pos[600050] = {}  --寻找璇玑
	tEightFronts_Pos[600050]["MapId"] = 1042
	tEightFronts_Pos[600050]["PosX"] = 28
	tEightFronts_Pos[600050]["PosY"] = 33
	--激情服
	tEightFronts_Pos[600003] = {}  --寻找神算子
	tEightFronts_Pos[600003]["MapId"] = 10364
	tEightFronts_Pos[600003]["PosX"] = 326
	tEightFronts_Pos[600003]["PosY"] = 350
	--奋斗服
	tEightFronts_Pos["Go"] = {}  --寻找神算子
	tEightFronts_Pos["Go"]["MapId"] = 1002
	tEightFronts_Pos["Go"]["PosX"] = 489
	tEightFronts_Pos["Go"]["PosY"] = 620
	
	tEightFronts_Pos[721010] = {}  --休门
	tEightFronts_Pos[721010]["MapId"] = 1043
	tEightFronts_Pos[721010]["PosX"] = 121
	tEightFronts_Pos[721010]["PosY"] = 109
	
	tEightFronts_Pos[721011] = {}  --伤门
	tEightFronts_Pos[721011]["MapId"] = 1044
	tEightFronts_Pos[721011]["PosX"] = 121
	tEightFronts_Pos[721011]["PosY"] = 104
	
	tEightFronts_Pos[721012] = {}  --杜门
	tEightFronts_Pos[721012]["MapId"] = 1045
	tEightFronts_Pos[721012]["PosX"] = 250
	tEightFronts_Pos[721012]["PosY"] = 100
	
	tEightFronts_Pos[721013] = {}  --景门
	tEightFronts_Pos[721013]["MapId"] = 1046
	tEightFronts_Pos[721013]["PosX"] = 325
	tEightFronts_Pos[721013]["PosY"] = 324
	
	tEightFronts_Pos[721014] = {}  --惊门
	tEightFronts_Pos[721014]["MapId"] = 1047
	tEightFronts_Pos[721014]["PosX"] = 121
	tEightFronts_Pos[721014]["PosY"] = 104
	
	tEightFronts_Pos[721015] = {}  --开门
	tEightFronts_Pos[721015]["MapId"] = 1048
	tEightFronts_Pos[721015]["PosX"] = 121
	tEightFronts_Pos[721015]["PosY"] = 109
	
	tEightFronts_Pos[1] = {}  --死门
	tEightFronts_Pos[1]["MapId"] = 1049
	tEightFronts_Pos[1]["PosX"] = 72
	tEightFronts_Pos[1]["PosY"] = 84
	
	tEightFronts_Pos[2] = {}  --生门
	tEightFronts_Pos[2]["MapId"] = 1050
	tEightFronts_Pos[2]["PosX"] = 108
	tEightFronts_Pos[2]["PosY"] = 108
	--激情服
	tEightFronts_Pos[3] = {}  --双龙城
	tEightFronts_Pos[3]["MapId"] = 10364
	tEightFronts_Pos[3]["PosX"] = 326
	tEightFronts_Pos[3]["PosY"] = 350
	--奋斗服
	tEightFronts_Pos[4] = {}  --双龙城
	tEightFronts_Pos[4]["MapId"] = 1002
	tEightFronts_Pos[4]["PosX"] = 387
	tEightFronts_Pos[4]["PosY"] = 446
	
	
local tEightFronts_Goto = {}
	
	tEightFronts_Goto[1] = {}
	tEightFronts_Goto[1]["ItemChanceSum"] = 12000
	-- 休门
	tEightFronts_Goto[1][1] ={}
	tEightFronts_Goto[1][1]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1][1]["ItemChance"] = 2000
	tEightFronts_Goto[1][1]["MapId"] = 1043
	tEightFronts_Goto[1][1]["PosX"] = 121
	tEightFronts_Goto[1][1]["PosY"] = 109
	-- 伤门
	tEightFronts_Goto[1][2] ={}
	tEightFronts_Goto[1][2]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1][2]["ItemChance"] = 2000
	tEightFronts_Goto[1][2]["MapId"] = 1044
	tEightFronts_Goto[1][2]["PosX"] = 121
	tEightFronts_Goto[1][2]["PosY"] = 104
-- 杜门
	tEightFronts_Goto[1][3] ={}
	tEightFronts_Goto[1][3]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1][3]["ItemChance"] = 2000
	tEightFronts_Goto[1][3]["MapId"] = 1045
	tEightFronts_Goto[1][3]["PosX"] = 325
	tEightFronts_Goto[1][3]["PosY"] = 324
-- 景门
	tEightFronts_Goto[1][4] ={}
	tEightFronts_Goto[1][4]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1][4]["ItemChance"] = 2000
	tEightFronts_Goto[1][4]["MapId"] = 1046
	tEightFronts_Goto[1][4]["PosX"] = 325
	tEightFronts_Goto[1][4]["PosY"] = 324
-- 惊门
	tEightFronts_Goto[1][5] ={}
	tEightFronts_Goto[1][5]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1][5]["ItemChance"] = 2000
	tEightFronts_Goto[1][5]["MapId"] = 1047
	tEightFronts_Goto[1][5]["PosX"] = 121
	tEightFronts_Goto[1][5]["PosY"] = 104
-- 开门
	tEightFronts_Goto[1][6] ={}
	tEightFronts_Goto[1][6]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1][6]["ItemChance"] = 2000
	tEightFronts_Goto[1][6]["MapId"] = 1048
	tEightFronts_Goto[1][6]["PosX"] = 121
	tEightFronts_Goto[1][6]["PosY"] = 109
-- 死门概率表
	tEightFronts_Goto[2] = {}
	tEightFronts_Goto[2]["ItemChanceSum"] = 10000
	--非死门
	tEightFronts_Goto[2][1] ={}
	tEightFronts_Goto[2][1]["RandomItemChanceType"] = 2
	tEightFronts_Goto[2][1]["ItemChance"] = 5000
	tEightFronts_Goto[2][1]["Num"] = 1  
	--进死门概率
	tEightFronts_Goto[2][2] ={}
	tEightFronts_Goto[2][2]["RandomItemChanceType"] = 2
	tEightFronts_Goto[2][2]["ItemChance"] = 5000
	tEightFronts_Goto[2][2]["Num"] = 2
	
	-- 杜门
	tEightFronts_Goto[1045] = {}
	tEightFronts_Goto[1045]["ItemChanceSum"] = 24000

	tEightFronts_Goto[1045][1] ={}
	tEightFronts_Goto[1045][1]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1045][1]["ItemChance"] = 2000
	tEightFronts_Goto[1045][1]["PosX"] = 206
	tEightFronts_Goto[1045][1]["PosY"] = 149

	tEightFronts_Goto[1045][2] ={}
	tEightFronts_Goto[1045][2]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1045][2]["ItemChance"] = 2000
	tEightFronts_Goto[1045][2]["PosX"] = 163
	tEightFronts_Goto[1045][2]["PosY"] = 187

	tEightFronts_Goto[1045][3] ={}
	tEightFronts_Goto[1045][3]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1045][3]["ItemChance"] = 2000
	tEightFronts_Goto[1045][3]["PosX"] = 163
	tEightFronts_Goto[1045][3]["PosY"] = 288

	tEightFronts_Goto[1045][4] ={}
	tEightFronts_Goto[1045][4]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1045][4]["ItemChance"] = 2000
	tEightFronts_Goto[1045][4]["PosX"] = 167
	tEightFronts_Goto[1045][4]["PosY"] = 283

	tEightFronts_Goto[1045][5] ={}
	tEightFronts_Goto[1045][5]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1045][5]["ItemChance"] = 2000
	tEightFronts_Goto[1045][5]["PosX"] = 179
	tEightFronts_Goto[1045][5]["PosY"] = 376

	tEightFronts_Goto[1045][6] ={}
	tEightFronts_Goto[1045][6]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1045][6]["ItemChance"] = 2000
	tEightFronts_Goto[1045][6]["PosX"] = 189
	tEightFronts_Goto[1045][6]["PosY"] = 438

	tEightFronts_Goto[1045][7] ={}
	tEightFronts_Goto[1045][7]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1045][7]["ItemChance"] = 2000
	tEightFronts_Goto[1045][7]["PosX"] = 220
	tEightFronts_Goto[1045][7]["PosY"] = 486
	

	tEightFronts_Goto[1045][8] ={}
	tEightFronts_Goto[1045][8]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1045][8]["ItemChance"] = 2000
	tEightFronts_Goto[1045][8]["PosX"] = 234
	tEightFronts_Goto[1045][8]["PosY"] = 525
	

	tEightFronts_Goto[1045][9] ={}
	tEightFronts_Goto[1045][9]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1045][9]["ItemChance"] = 2000
	tEightFronts_Goto[1045][9]["PosX"] = 298
	tEightFronts_Goto[1045][9]["PosY"] = 541
	
	tEightFronts_Goto[1045][10] ={}
	tEightFronts_Goto[1045][10]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1045][10]["ItemChance"] = 2000
	tEightFronts_Goto[1045][10]["PosX"] = 353
	tEightFronts_Goto[1045][10]["PosY"] = 576
	

	tEightFronts_Goto[1045][11] ={}
	tEightFronts_Goto[1045][11]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1045][11]["ItemChance"] = 2000
	tEightFronts_Goto[1045][11]["PosX"] = 408
	tEightFronts_Goto[1045][11]["PosY"] = 572
	
	tEightFronts_Goto[1045][12] ={}
	tEightFronts_Goto[1045][12]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1045][12]["ItemChance"] = 2000
	tEightFronts_Goto[1045][12]["PosX"] = 458
	tEightFronts_Goto[1045][12]["PosY"] = 569
	
	-- 景门
	tEightFronts_Goto[1046] = {}
	tEightFronts_Goto[1046]["ItemChanceSum"] = 24000

	tEightFronts_Goto[1046][1] ={}
	tEightFronts_Goto[1046][1]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1046][1]["ItemChance"] = 2000
	tEightFronts_Goto[1046][1]["PosX"] = 542
	tEightFronts_Goto[1046][1]["PosY"] = 554

	tEightFronts_Goto[1046][2] ={}
	tEightFronts_Goto[1046][2]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1046][2]["ItemChance"] = 2000
	tEightFronts_Goto[1046][2]["PosX"] = 549
	tEightFronts_Goto[1046][2]["PosY"] = 525

	tEightFronts_Goto[1046][3] ={}
	tEightFronts_Goto[1046][3]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1046][3]["ItemChance"] = 2000
	tEightFronts_Goto[1046][3]["PosX"] = 549
	tEightFronts_Goto[1046][3]["PosY"] = 466

	tEightFronts_Goto[1046][4] ={}
	tEightFronts_Goto[1046][4]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1046][4]["ItemChance"] = 2000
	tEightFronts_Goto[1046][4]["PosX"] = 560
	tEightFronts_Goto[1046][4]["PosY"] = 394

	tEightFronts_Goto[1046][5] ={}
	tEightFronts_Goto[1046][5]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1046][5]["ItemChance"] = 2000
	tEightFronts_Goto[1046][5]["PosX"] = 540
	tEightFronts_Goto[1046][5]["PosY"] = 329

	tEightFronts_Goto[1046][6] ={}
	tEightFronts_Goto[1046][6]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1046][6]["ItemChance"] = 2000
	tEightFronts_Goto[1046][6]["PosX"] = 506
	tEightFronts_Goto[1046][6]["PosY"] = 270

	tEightFronts_Goto[1046][7] ={}
	tEightFronts_Goto[1046][7]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1046][7]["ItemChance"] = 2000
	tEightFronts_Goto[1046][7]["PosX"] = 484
	tEightFronts_Goto[1046][7]["PosY"] = 223
	

	tEightFronts_Goto[1046][8] ={}
	tEightFronts_Goto[1046][8]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1046][8]["ItemChance"] = 2000
	tEightFronts_Goto[1046][8]["PosX"] = 436
	tEightFronts_Goto[1046][8]["PosY"] = 161
	

	tEightFronts_Goto[1046][9] ={}
	tEightFronts_Goto[1046][9]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1046][9]["ItemChance"] = 2000
	tEightFronts_Goto[1046][9]["PosX"] = 389
	tEightFronts_Goto[1046][9]["PosY"] = 171
	
	tEightFronts_Goto[1046][10] ={}
	tEightFronts_Goto[1046][10]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1046][10]["ItemChance"] = 2000
	tEightFronts_Goto[1046][10]["PosX"] = 327
	tEightFronts_Goto[1046][10]["PosY"] = 147
	

	tEightFronts_Goto[1046][11] ={}
	tEightFronts_Goto[1046][11]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1046][11]["ItemChance"] = 2000
	tEightFronts_Goto[1046][11]["PosX"] = 272
	tEightFronts_Goto[1046][11]["PosY"] = 143
	
	tEightFronts_Goto[1046][12] ={}
	tEightFronts_Goto[1046][12]["RandomItemChanceType"] = 2
	tEightFronts_Goto[1046][12]["ItemChance"] = 2000
	tEightFronts_Goto[1046][12]["PosX"] = 226
	tEightFronts_Goto[1046][12]["PosY"] = 137
	

	
-- 开门跟休门动态刷怪的点
local tEightFronts_MonsterPos = {}
-- 开门
	tEightFronts_MonsterPos[6005] = {}
	tEightFronts_MonsterPos[6005]["MapId"] = 1048
	tEightFronts_MonsterPos[6005]["GenId"] = 20267
	tEightFronts_MonsterPos[6005][21244] = {}
	tEightFronts_MonsterPos[6005][21244]["PosX"] = 38
	tEightFronts_MonsterPos[6005][21244]["PosY"] = 90
	tEightFronts_MonsterPos[6005][21244]["X"] = 60
	tEightFronts_MonsterPos[6005][21244]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21245] = {}
	tEightFronts_MonsterPos[6005][21245]["PosX"] = 23
	tEightFronts_MonsterPos[6005][21245]["PosY"] = 59
	tEightFronts_MonsterPos[6005][21245]["X"] = 61
	tEightFronts_MonsterPos[6005][21245]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21246] = {}
	tEightFronts_MonsterPos[6005][21246]["PosX"] = 46
	tEightFronts_MonsterPos[6005][21246]["PosY"] = 67
	tEightFronts_MonsterPos[6005][21246]["X"] = 62
	tEightFronts_MonsterPos[6005][21246]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21247] = {}
	tEightFronts_MonsterPos[6005][21247]["PosX"] = 50
	tEightFronts_MonsterPos[6005][21247]["PosY"] = 48
	tEightFronts_MonsterPos[6005][21247]["X"] = 63
	tEightFronts_MonsterPos[6005][21247]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21248] = {}
	tEightFronts_MonsterPos[6005][21248]["PosX"] = 60
	tEightFronts_MonsterPos[6005][21248]["PosY"] = 25
	tEightFronts_MonsterPos[6005][21248]["X"] = 64
	tEightFronts_MonsterPos[6005][21248]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21249] = {}
	tEightFronts_MonsterPos[6005][21249]["PosX"] = 80
	tEightFronts_MonsterPos[6005][21249]["PosY"] = 26
	tEightFronts_MonsterPos[6005][21249]["X"] = 65
	tEightFronts_MonsterPos[6005][21249]["Y"] = 60

	tEightFronts_MonsterPos[6005][21250] = {}
	tEightFronts_MonsterPos[6005][21250]["PosX"] = 83
	tEightFronts_MonsterPos[6005][21250]["PosY"] = 44
	tEightFronts_MonsterPos[6005][21250]["X"] = 66
	tEightFronts_MonsterPos[6005][21250]["Y"] = 60

	tEightFronts_MonsterPos[6005][21251] = {}
	tEightFronts_MonsterPos[6005][21251]["PosX"] = 80
	tEightFronts_MonsterPos[6005][21251]["PosY"] = 59
	tEightFronts_MonsterPos[6005][21251]["X"] = 67
	tEightFronts_MonsterPos[6005][21251]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21252] = {}
	tEightFronts_MonsterPos[6005][21252]["PosX"] = 75
	tEightFronts_MonsterPos[6005][21252]["PosY"] = 82
	tEightFronts_MonsterPos[6005][21252]["X"] = 68
	tEightFronts_MonsterPos[6005][21252]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21253] = {}
	tEightFronts_MonsterPos[6005][21253]["PosX"] = 59
	tEightFronts_MonsterPos[6005][21253]["PosY"] = 85
	tEightFronts_MonsterPos[6005][21253]["X"] = 69
	tEightFronts_MonsterPos[6005][21253]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21254] = {}
	tEightFronts_MonsterPos[6005][21254]["PosX"] = 57
	tEightFronts_MonsterPos[6005][21254]["PosY"] = 101
	tEightFronts_MonsterPos[6005][21254]["X"] = 70
	tEightFronts_MonsterPos[6005][21254]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21255] = {}
	tEightFronts_MonsterPos[6005][21255]["PosX"] = 42
	tEightFronts_MonsterPos[6005][21255]["PosY"] = 98
	tEightFronts_MonsterPos[6005][21255]["X"] = 71
	tEightFronts_MonsterPos[6005][21255]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21256] = {}
	tEightFronts_MonsterPos[6005][21256]["PosX"] = 65
	tEightFronts_MonsterPos[6005][21256]["PosY"] = 117
	tEightFronts_MonsterPos[6005][21256]["X"] = 72
	tEightFronts_MonsterPos[6005][21256]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21257] = {}
	tEightFronts_MonsterPos[6005][21257]["PosX"] = 79
	tEightFronts_MonsterPos[6005][21257]["PosY"] = 111
	tEightFronts_MonsterPos[6005][21257]["X"] = 73
	tEightFronts_MonsterPos[6005][21257]["Y"] = 60

	tEightFronts_MonsterPos[6005][21258] = {}
	tEightFronts_MonsterPos[6005][21258]["PosX"] = 84
	tEightFronts_MonsterPos[6005][21258]["PosY"] = 96
	tEightFronts_MonsterPos[6005][21258]["X"] = 74
	tEightFronts_MonsterPos[6005][21258]["Y"] = 60

	tEightFronts_MonsterPos[6005][21259] = {}
	tEightFronts_MonsterPos[6005][21259]["PosX"] = 86
	tEightFronts_MonsterPos[6005][21259]["PosY"] = 68
	tEightFronts_MonsterPos[6005][21259]["X"] = 75
	tEightFronts_MonsterPos[6005][21259]["Y"] = 60

	tEightFronts_MonsterPos[6005][21260] = {}
	tEightFronts_MonsterPos[6005][21260]["PosX"] = 107
	tEightFronts_MonsterPos[6005][21260]["PosY"] = 64
	tEightFronts_MonsterPos[6005][21260]["X"] = 76
	tEightFronts_MonsterPos[6005][21260]["Y"] = 60

	tEightFronts_MonsterPos[6005][21261] = {}
	tEightFronts_MonsterPos[6005][21261]["PosX"] = 123
	tEightFronts_MonsterPos[6005][21261]["PosY"] = 66
	tEightFronts_MonsterPos[6005][21261]["X"] = 77
	tEightFronts_MonsterPos[6005][21261]["Y"] = 60

	tEightFronts_MonsterPos[6005][21262] = {}
	tEightFronts_MonsterPos[6005][21262]["PosX"] = 115
	tEightFronts_MonsterPos[6005][21262]["PosY"] = 87
	tEightFronts_MonsterPos[6005][21262]["X"] = 78
	tEightFronts_MonsterPos[6005][21262]["Y"] = 60

	tEightFronts_MonsterPos[6005][21263] = {}
	tEightFronts_MonsterPos[6005][21263]["PosX"] = 108
	tEightFronts_MonsterPos[6005][21263]["PosY"] = 97
	tEightFronts_MonsterPos[6005][21263]["X"] = 79
	tEightFronts_MonsterPos[6005][21263]["Y"] = 60

	tEightFronts_MonsterPos[6005][21264] = {}
	tEightFronts_MonsterPos[6005][21264]["PosX"] = 98
	tEightFronts_MonsterPos[6005][21264]["PosY"] = 121
	tEightFronts_MonsterPos[6005][21264]["X"] = 80
	tEightFronts_MonsterPos[6005][21264]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21265] = {}
	tEightFronts_MonsterPos[6005][21265]["PosX"] = 96
	tEightFronts_MonsterPos[6005][21265]["PosY"] = 140
	tEightFronts_MonsterPos[6005][21265]["X"] = 81
	tEightFronts_MonsterPos[6005][21265]["Y"] = 60

	tEightFronts_MonsterPos[6005][21266] = {}
	tEightFronts_MonsterPos[6005][21266]["PosX"] = 81
	tEightFronts_MonsterPos[6005][21266]["PosY"] = 135
	tEightFronts_MonsterPos[6005][21266]["X"] = 82
	tEightFronts_MonsterPos[6005][21266]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21267] = {}
	tEightFronts_MonsterPos[6005][21267]["PosX"] = 104
	tEightFronts_MonsterPos[6005][21267]["PosY"] = 157
	tEightFronts_MonsterPos[6005][21267]["X"] = 83
	tEightFronts_MonsterPos[6005][21267]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21268] = {}
	tEightFronts_MonsterPos[6005][21268]["PosX"] = 124
	tEightFronts_MonsterPos[6005][21268]["PosY"] = 150
	tEightFronts_MonsterPos[6005][21268]["X"] = 84
	tEightFronts_MonsterPos[6005][21268]["Y"] = 60
	
	tEightFronts_MonsterPos[6005][21269] = {}
	tEightFronts_MonsterPos[6005][21269]["PosX"] = 127
	tEightFronts_MonsterPos[6005][21269]["PosY"] = 124
	tEightFronts_MonsterPos[6005][21269]["X"] = 85
	tEightFronts_MonsterPos[6005][21269]["Y"] = 60

	tEightFronts_MonsterPos[6005][21270] = {}
	tEightFronts_MonsterPos[6005][21270]["PosX"] = 151
	tEightFronts_MonsterPos[6005][21270]["PosY"] = 125
	tEightFronts_MonsterPos[6005][21270]["X"] = 86
	tEightFronts_MonsterPos[6005][21270]["Y"] = 60

	tEightFronts_MonsterPos[6005][21271] = {}
	tEightFronts_MonsterPos[6005][21271]["PosX"] = 137
	tEightFronts_MonsterPos[6005][21271]["PosY"] = 93
	tEightFronts_MonsterPos[6005][21271]["X"] = 87
	tEightFronts_MonsterPos[6005][21271]["Y"] = 60

	tEightFronts_MonsterPos[6005][21272] = {}
	tEightFronts_MonsterPos[6005][21272]["PosX"] = 167
	tEightFronts_MonsterPos[6005][21272]["PosY"] = 118
	tEightFronts_MonsterPos[6005][21272]["X"] = 88
	tEightFronts_MonsterPos[6005][21272]["Y"] = 60

	tEightFronts_MonsterPos[6005][21273] = {}
	tEightFronts_MonsterPos[6005][21273]["PosX"] = 184
	tEightFronts_MonsterPos[6005][21273]["PosY"] = 144
	tEightFronts_MonsterPos[6005][21273]["X"] = 89
	tEightFronts_MonsterPos[6005][21273]["Y"] = 60

	tEightFronts_MonsterPos[6005][21274] = {}
	tEightFronts_MonsterPos[6005][21274]["PosX"] = 157
	tEightFronts_MonsterPos[6005][21274]["PosY"] = 150
	tEightFronts_MonsterPos[6005][21274]["X"] = 90
	tEightFronts_MonsterPos[6005][21274]["Y"] = 60

	tEightFronts_MonsterPos[6005][21275] = {}
	tEightFronts_MonsterPos[6005][21275]["PosX"] = 138
	tEightFronts_MonsterPos[6005][21275]["PosY"] = 157
	tEightFronts_MonsterPos[6005][21275]["X"] = 91
	tEightFronts_MonsterPos[6005][21275]["Y"] = 60

	tEightFronts_MonsterPos[6005][21276] = {}
	tEightFronts_MonsterPos[6005][21276]["PosX"] = 127
	tEightFronts_MonsterPos[6005][21276]["PosY"] = 177
	tEightFronts_MonsterPos[6005][21276]["X"] = 92
	tEightFronts_MonsterPos[6005][21276]["Y"] = 60

	tEightFronts_MonsterPos[6005][21277] = {}
	tEightFronts_MonsterPos[6005][21277]["PosX"] = 144
	tEightFronts_MonsterPos[6005][21277]["PosY"] = 189
	tEightFronts_MonsterPos[6005][21277]["X"] = 93
	tEightFronts_MonsterPos[6005][21277]["Y"] = 60

	tEightFronts_MonsterPos[6005][21278] = {}
	tEightFronts_MonsterPos[6005][21278]["PosX"] = 162
	tEightFronts_MonsterPos[6005][21278]["PosY"] = 178
	tEightFronts_MonsterPos[6005][21278]["X"] = 94
	tEightFronts_MonsterPos[6005][21278]["Y"] = 60

	tEightFronts_MonsterPos[6005][21279] = {}
	tEightFronts_MonsterPos[6005][21279]["PosX"] = 165
	tEightFronts_MonsterPos[6005][21279]["PosY"] = 160
	tEightFronts_MonsterPos[6005][21279]["X"] = 95
	tEightFronts_MonsterPos[6005][21279]["Y"] = 60

	tEightFronts_MonsterPos[6005][21280] = {}
	tEightFronts_MonsterPos[6005][21280]["PosX"] = 182
	tEightFronts_MonsterPos[6005][21280]["PosY"] = 155
	tEightFronts_MonsterPos[6005][21280]["X"] = 96
	tEightFronts_MonsterPos[6005][21280]["Y"] = 60

	tEightFronts_MonsterPos[6005][21281] = {}
	tEightFronts_MonsterPos[6005][21281]["PosX"] = 206
	tEightFronts_MonsterPos[6005][21281]["PosY"] = 151
	tEightFronts_MonsterPos[6005][21281]["X"] = 97
	tEightFronts_MonsterPos[6005][21281]["Y"] = 60

	
	
	
-- 休门
	tEightFronts_MonsterPos[6000] = {}
	tEightFronts_MonsterPos[6000]["MapId"] = 1043
	tEightFronts_MonsterPos[6000]["GenId"] = 20268
	tEightFronts_MonsterPos[6000][21282] = {}
	tEightFronts_MonsterPos[6000][21282]["PosX"] = 38
	tEightFronts_MonsterPos[6000][21282]["PosY"] = 90
	tEightFronts_MonsterPos[6000][21282]["X"] = 79
	tEightFronts_MonsterPos[6000][21282]["Y"] = 60

	tEightFronts_MonsterPos[6000][21283] = {}
	tEightFronts_MonsterPos[6000][21283]["PosX"] = 23
	tEightFronts_MonsterPos[6000][21283]["PosY"] = 59
	tEightFronts_MonsterPos[6000][21283]["X"] = 80
	tEightFronts_MonsterPos[6000][21283]["Y"] = 60

	tEightFronts_MonsterPos[6000][21284] = {}
	tEightFronts_MonsterPos[6000][21284]["PosX"] = 46
	tEightFronts_MonsterPos[6000][21284]["PosY"] = 67
	tEightFronts_MonsterPos[6000][21284]["X"] = 81
	tEightFronts_MonsterPos[6000][21284]["Y"] = 60

	tEightFronts_MonsterPos[6000][21285] = {}
	tEightFronts_MonsterPos[6000][21285]["PosX"] = 50
	tEightFronts_MonsterPos[6000][21285]["PosY"] = 48
	tEightFronts_MonsterPos[6000][21285]["X"] = 82
	tEightFronts_MonsterPos[6000][21285]["Y"] = 60

	tEightFronts_MonsterPos[6000][21286] = {}
	tEightFronts_MonsterPos[6000][21286]["PosX"] = 60
	tEightFronts_MonsterPos[6000][21286]["PosY"] = 25
	tEightFronts_MonsterPos[6000][21286]["X"] = 82
	tEightFronts_MonsterPos[6000][21286]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21287] = {}
	tEightFronts_MonsterPos[6000][21287]["PosX"] = 80
	tEightFronts_MonsterPos[6000][21287]["PosY"] = 26
	tEightFronts_MonsterPos[6000][21287]["X"] = 84
	tEightFronts_MonsterPos[6000][21287]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21288] = {}
	tEightFronts_MonsterPos[6000][21288]["PosX"] = 83
	tEightFronts_MonsterPos[6000][21288]["PosY"] = 44
	tEightFronts_MonsterPos[6000][21288]["X"] = 85
	tEightFronts_MonsterPos[6000][21288]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21289] = {}
	tEightFronts_MonsterPos[6000][21289]["PosX"] = 80
	tEightFronts_MonsterPos[6000][21289]["PosY"] = 59
	tEightFronts_MonsterPos[6000][21289]["X"] = 86
	tEightFronts_MonsterPos[6000][21289]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21290] = {}
	tEightFronts_MonsterPos[6000][21290]["PosX"] = 75
	tEightFronts_MonsterPos[6000][21290]["PosY"] = 82
	tEightFronts_MonsterPos[6000][21290]["X"] = 87
	tEightFronts_MonsterPos[6000][21290]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21291] = {}
	tEightFronts_MonsterPos[6000][21291]["PosX"] = 59
	tEightFronts_MonsterPos[6000][21291]["PosY"] = 85
	tEightFronts_MonsterPos[6000][21291]["X"] = 88
	tEightFronts_MonsterPos[6000][21291]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21292] = {}
	tEightFronts_MonsterPos[6000][21292]["PosX"] = 57
	tEightFronts_MonsterPos[6000][21292]["PosY"] = 101
	tEightFronts_MonsterPos[6000][21292]["X"] = 89
	tEightFronts_MonsterPos[6000][21292]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21293] = {}
	tEightFronts_MonsterPos[6000][21293]["PosX"] = 42
	tEightFronts_MonsterPos[6000][21293]["PosY"] = 98
	tEightFronts_MonsterPos[6000][21293]["X"] = 90
	tEightFronts_MonsterPos[6000][21293]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21294] = {}
	tEightFronts_MonsterPos[6000][21294]["PosX"] = 65
	tEightFronts_MonsterPos[6000][21294]["PosY"] = 117
	tEightFronts_MonsterPos[6000][21294]["X"] = 91
	tEightFronts_MonsterPos[6000][21294]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21295] = {}
	tEightFronts_MonsterPos[6000][21295]["PosX"] = 79
	tEightFronts_MonsterPos[6000][21295]["PosY"] = 111
	tEightFronts_MonsterPos[6000][21295]["X"] = 92
	tEightFronts_MonsterPos[6000][21295]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21296] = {}
	tEightFronts_MonsterPos[6000][21296]["PosX"] = 84
	tEightFronts_MonsterPos[6000][21296]["PosY"] = 96
	tEightFronts_MonsterPos[6000][21296]["X"] = 93
	tEightFronts_MonsterPos[6000][21296]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21297] = {}
	tEightFronts_MonsterPos[6000][21297]["PosX"] = 86
	tEightFronts_MonsterPos[6000][21297]["PosY"] = 68
	tEightFronts_MonsterPos[6000][21297]["X"] = 60
	tEightFronts_MonsterPos[6000][21297]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21298] = {}
	tEightFronts_MonsterPos[6000][21298]["PosX"] = 107
	tEightFronts_MonsterPos[6000][21298]["PosY"] = 64
	tEightFronts_MonsterPos[6000][21298]["X"] = 60
	tEightFronts_MonsterPos[6000][21298]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21299] = {}
	tEightFronts_MonsterPos[6000][21299]["PosX"] = 123
	tEightFronts_MonsterPos[6000][21299]["PosY"] = 66
	tEightFronts_MonsterPos[6000][21299]["X"] = 60
	tEightFronts_MonsterPos[6000][21299]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21300] = {}
	tEightFronts_MonsterPos[6000][21300]["PosX"] = 115
	tEightFronts_MonsterPos[6000][21300]["PosY"] = 87
	tEightFronts_MonsterPos[6000][21300]["X"] = 60
	tEightFronts_MonsterPos[6000][21300]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21301] = {}
	tEightFronts_MonsterPos[6000][21301]["PosX"] = 108
	tEightFronts_MonsterPos[6000][21301]["PosY"] = 97
	tEightFronts_MonsterPos[6000][21301]["X"] = 60
	tEightFronts_MonsterPos[6000][21301]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21302] = {}
	tEightFronts_MonsterPos[6000][21302]["PosX"] = 98
	tEightFronts_MonsterPos[6000][21302]["PosY"] = 121
	tEightFronts_MonsterPos[6000][21302]["X"] = 61
	tEightFronts_MonsterPos[6000][21302]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21303] = {}
	tEightFronts_MonsterPos[6000][21303]["PosX"] = 96
	tEightFronts_MonsterPos[6000][21303]["PosY"] = 140
	tEightFronts_MonsterPos[6000][21303]["X"] = 62
	tEightFronts_MonsterPos[6000][21303]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21304] = {}
	tEightFronts_MonsterPos[6000][21304]["PosX"] = 81
	tEightFronts_MonsterPos[6000][21304]["PosY"] = 135
	tEightFronts_MonsterPos[6000][21304]["X"] = 63
	tEightFronts_MonsterPos[6000][21304]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21305] = {}
	tEightFronts_MonsterPos[6000][21305]["PosX"] = 104
	tEightFronts_MonsterPos[6000][21305]["PosY"] = 157
	tEightFronts_MonsterPos[6000][21305]["X"] = 64
	tEightFronts_MonsterPos[6000][21305]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21306] = {}
	tEightFronts_MonsterPos[6000][21306]["PosX"] = 124
	tEightFronts_MonsterPos[6000][21306]["PosY"] = 150
	tEightFronts_MonsterPos[6000][21306]["X"] = 65
	tEightFronts_MonsterPos[6000][21306]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21307] = {}
	tEightFronts_MonsterPos[6000][21307]["PosX"] = 127
	tEightFronts_MonsterPos[6000][21307]["PosY"] = 124
	tEightFronts_MonsterPos[6000][21307]["X"] = 66
	tEightFronts_MonsterPos[6000][21307]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21308] = {}
	tEightFronts_MonsterPos[6000][21308]["PosX"] = 151
	tEightFronts_MonsterPos[6000][21308]["PosY"] = 125
	tEightFronts_MonsterPos[6000][21308]["X"] = 67
	tEightFronts_MonsterPos[6000][21308]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21309] = {}
	tEightFronts_MonsterPos[6000][21309]["PosX"] = 137
	tEightFronts_MonsterPos[6000][21309]["PosY"] = 93
	tEightFronts_MonsterPos[6000][21309]["X"] = 68
	tEightFronts_MonsterPos[6000][21309]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21310] = {}
	tEightFronts_MonsterPos[6000][21310]["PosX"] = 167
	tEightFronts_MonsterPos[6000][21310]["PosY"] = 118
	tEightFronts_MonsterPos[6000][21310]["X"] = 69
	tEightFronts_MonsterPos[6000][21310]["Y"] = 60
	
	tEightFronts_MonsterPos[6000][21311] = {}
	tEightFronts_MonsterPos[6000][21311]["PosX"] = 184
	tEightFronts_MonsterPos[6000][21311]["PosY"] = 144
	tEightFronts_MonsterPos[6000][21311]["X"] = 70
	tEightFronts_MonsterPos[6000][21311]["Y"] = 60

	tEightFronts_MonsterPos[6000][21312] = {}
	tEightFronts_MonsterPos[6000][21312]["PosX"] = 157
	tEightFronts_MonsterPos[6000][21312]["PosY"] = 150
	tEightFronts_MonsterPos[6000][21312]["X"] = 71
	tEightFronts_MonsterPos[6000][21312]["Y"] = 60

	tEightFronts_MonsterPos[6000][21313] = {}
	tEightFronts_MonsterPos[6000][21313]["PosX"] = 138
	tEightFronts_MonsterPos[6000][21313]["PosY"] = 157
	tEightFronts_MonsterPos[6000][21313]["X"] = 72
	tEightFronts_MonsterPos[6000][21313]["Y"] = 60

	tEightFronts_MonsterPos[6000][21314] = {}
	tEightFronts_MonsterPos[6000][21314]["PosX"] = 127
	tEightFronts_MonsterPos[6000][21314]["PosY"] = 177
	tEightFronts_MonsterPos[6000][21314]["X"] = 73
	tEightFronts_MonsterPos[6000][21314]["Y"] = 60

	tEightFronts_MonsterPos[6000][21315] = {}
	tEightFronts_MonsterPos[6000][21315]["PosX"] = 144
	tEightFronts_MonsterPos[6000][21315]["PosY"] = 189
	tEightFronts_MonsterPos[6000][21315]["X"] = 74
	tEightFronts_MonsterPos[6000][21315]["Y"] = 60

	tEightFronts_MonsterPos[6000][21316] = {}
	tEightFronts_MonsterPos[6000][21316]["PosX"] = 162
	tEightFronts_MonsterPos[6000][21316]["PosY"] = 178
	tEightFronts_MonsterPos[6000][21316]["X"] = 75
	tEightFronts_MonsterPos[6000][21316]["Y"] = 60

	tEightFronts_MonsterPos[6000][21317] = {}
	tEightFronts_MonsterPos[6000][21317]["PosX"] = 165
	tEightFronts_MonsterPos[6000][21317]["PosY"] = 160
	tEightFronts_MonsterPos[6000][21317]["X"] = 76
	tEightFronts_MonsterPos[6000][21317]["Y"] = 60

	tEightFronts_MonsterPos[6000][21318] = {}
	tEightFronts_MonsterPos[6000][21318]["PosX"] = 182
	tEightFronts_MonsterPos[6000][21318]["PosY"] = 155
	tEightFronts_MonsterPos[6000][21318]["X"] = 77
	tEightFronts_MonsterPos[6000][21318]["Y"] = 60

	tEightFronts_MonsterPos[6000][21319] = {}
	tEightFronts_MonsterPos[6000][21319]["PosX"] = 206
	tEightFronts_MonsterPos[6000][21319]["PosY"] = 151
	tEightFronts_MonsterPos[6000][21319]["X"] = 78
	tEightFronts_MonsterPos[6000][21319]["Y"] = 60

	-- 打开月光宝盒
local tEightFronts_OpenBox = {}
--第一层随机
	tEightFronts_OpenBox[1] = {}
	tEightFronts_OpenBox[1]["ItemChanceSum"] = 10000
	-- 直接给物品
	tEightFronts_OpenBox[1][1] ={}
	tEightFronts_OpenBox[1][1]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[1][1]["ItemChance"] = 9650
	tEightFronts_OpenBox[1][1]["Table"] = tEightFronts_OpenBox[2]
	tEightFronts_OpenBox[1][1]["Num"] = 2
	-- 头部
	tEightFronts_OpenBox[1][2] ={}
	tEightFronts_OpenBox[1][2]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[1][2]["ItemChance"] = 50
	tEightFronts_OpenBox[1][2]["Table"] = tEightFronts_OpenBox[3]
	tEightFronts_OpenBox[1][2]["Num"] = 3
	-- 衣服
	tEightFronts_OpenBox[1][3] ={}
	tEightFronts_OpenBox[1][3]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[1][3]["ItemChance"] = 50
	tEightFronts_OpenBox[1][3]["Table"] = tEightFronts_OpenBox[4]
	tEightFronts_OpenBox[1][3]["Num"] = 4
	-- 通用法系
	tEightFronts_OpenBox[1][4] ={}
	tEightFronts_OpenBox[1][4]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[1][4]["ItemChance"] = 0--50
	tEightFronts_OpenBox[1][4]["Table"] = tEightFronts_OpenBox[5]
	tEightFronts_OpenBox[1][4]["Num"] = 5
	
	-- 武器
	tEightFronts_OpenBox[1][5] ={}
	tEightFronts_OpenBox[1][5]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[1][5]["ItemChance"] = 250
	tEightFronts_OpenBox[1][5]["Table"] = tEightFronts_OpenBox[6]
	tEightFronts_OpenBox[1][5]["Num"] = 6
	
	-- 直接给物品
	tEightFronts_OpenBox[2] = {}
	tEightFronts_OpenBox[2]["ItemChanceSum"] = 9650
	-- 晶莹星陨石
	tEightFronts_OpenBox[2][1] ={}
	tEightFronts_OpenBox[2][1]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][1]["ItemChance"] = 200
	tEightFronts_OpenBox[2][1]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][1]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][1]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][1]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][1]["RewardItem"] = {}
	tEightFronts_OpenBox[2][1]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][1]["RewardItem"][1]["Id"] = 3009002
	tEightFronts_OpenBox[2][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tEightFronts_OpenBox[2][1]["Log"] = "0,0,3306558,1,12000909,2,3009002,1"

	-- 明亮星陨石
	tEightFronts_OpenBox[2][2] ={}
	tEightFronts_OpenBox[2][2]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][2]["ItemChance"] = 1600
	tEightFronts_OpenBox[2][2]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][2]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][2]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][2]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][2]["RewardItem"] = {}
	tEightFronts_OpenBox[2][2]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][2]["RewardItem"][1]["Id"] = 3009001
	tEightFronts_OpenBox[2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tEightFronts_OpenBox[2][2]["Log"] = "0,0,3306558,1,12000909,2,3009001,1"

	-- 100气力值精装包
	tEightFronts_OpenBox[2][3] ={}
	tEightFronts_OpenBox[2][3]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][3]["ItemChance"] = 1500
	tEightFronts_OpenBox[2][3]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][3]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][3]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][3]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][3]["RewardItem"] = {}
	tEightFronts_OpenBox[2][3]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][3]["RewardItem"][1]["Id"] = 3304324
	tEightFronts_OpenBox[2][3]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_OpenBox[2][3]["Log"] = "0,0,3306558,1,12000909,2,3304324,1"

	-- 300气力值精装包
	tEightFronts_OpenBox[2][4] ={}
	tEightFronts_OpenBox[2][4]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][4]["ItemChance"] = 1000
	tEightFronts_OpenBox[2][4]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][4]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][4]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][4]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][4]["RewardItem"] = {}
	tEightFronts_OpenBox[2][4]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][4]["RewardItem"][1]["Id"] = 3304327
	tEightFronts_OpenBox[2][4]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_OpenBox[2][4]["Log"] = "0,0,3306558,1,12000909,2,3304327,1"

	-- 500气力值精装包
	tEightFronts_OpenBox[2][5] ={}
	tEightFronts_OpenBox[2][5]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][5]["ItemChance"] = 500
	tEightFronts_OpenBox[2][5]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][5]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][5]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][5]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][5]["RewardItem"] = {}
	tEightFronts_OpenBox[2][5]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][5]["RewardItem"][1]["Id"] = 3304328
	tEightFronts_OpenBox[2][5]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_OpenBox[2][5]["Log"] = "0,0,3306558,1,12000909,2,3304328,1"

	-- 究极通神丹
	tEightFronts_OpenBox[2][6] ={}
	tEightFronts_OpenBox[2][6]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][6]["ItemChance"] = 1100
	tEightFronts_OpenBox[2][6]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][6]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][6]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][6]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][6]["RewardItem"] = {}
	tEightFronts_OpenBox[2][6]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][6]["RewardItem"][1]["Id"] = 3003126
	tEightFronts_OpenBox[2][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tEightFronts_OpenBox[2][6]["Log"] = "0,0,3306558,1,12000909,2,3300579,1"
	
	-- 1000气力值精装包
	tEightFronts_OpenBox[2][7] ={}
	tEightFronts_OpenBox[2][7]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][7]["ItemChance"] = 300
	tEightFronts_OpenBox[2][7]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][7]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][7]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][7]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][7]["RewardItem"] = {}
	tEightFronts_OpenBox[2][7]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][7]["RewardItem"][1]["Id"] = 3304330
	tEightFronts_OpenBox[2][7]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_OpenBox[2][7]["Log"] = "0,0,3306558,1,12000909,2,3304330,1"
	
	-- 赤练石+2
	tEightFronts_OpenBox[2][8] ={}
	tEightFronts_OpenBox[2][8]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][8]["ItemChance"] = 1500
	tEightFronts_OpenBox[2][8]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][8]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][8]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][8]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][8]["RewardItem"] = {}
	tEightFronts_OpenBox[2][8]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][8]["RewardItem"][1]["Id"] = 730002
	tEightFronts_OpenBox[2][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tEightFronts_OpenBox[2][8]["Log"] = "0,0,3306558,1,12000909,2,730002,1"

	-- 赤练石+3?
	tEightFronts_OpenBox[2][9] ={}
	tEightFronts_OpenBox[2][9]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][9]["ItemChance"] = 500
	tEightFronts_OpenBox[2][9]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][9]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][9]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][9]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][9]["RewardItem"] = {}
	tEightFronts_OpenBox[2][9]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][9]["RewardItem"][1]["Id"] = 730003
	tEightFronts_OpenBox[2][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tEightFronts_OpenBox[2][9]["Log"] = "0,0,3306558,1,12000909,2,730003,1"

	-- 良品玄元宝石
	tEightFronts_OpenBox[2][10] ={}
	tEightFronts_OpenBox[2][10]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][10]["ItemChance"] = 500
	tEightFronts_OpenBox[2][10]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][10]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][10]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][10]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][10]["RewardItem"] = {}
	tEightFronts_OpenBox[2][10]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][10]["RewardItem"][1]["Id"] = 700072
	tEightFronts_OpenBox[2][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tEightFronts_OpenBox[2][10]["Log"] = "0,0,3306558,1,12000909,2,700072,1"

	-- 魔武通玄丹
	tEightFronts_OpenBox[2][11] ={}
	tEightFronts_OpenBox[2][11]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][11]["ItemChance"] = 300
	tEightFronts_OpenBox[2][11]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][11]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][11]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][11]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][11]["RewardItem"] = {}
	tEightFronts_OpenBox[2][11]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][11]["RewardItem"][1]["Id"] = 3303373
	tEightFronts_OpenBox[2][11]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_OpenBox[2][11]["Log"] = "0,0,3306558,1,12000909,2,3303373,1"
-- 赤练石+5
	tEightFronts_OpenBox[2][12] ={}
	tEightFronts_OpenBox[2][12]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][12]["ItemChance"] = 150
	tEightFronts_OpenBox[2][12]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][12]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][12]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][12]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][12]["RewardItem"] = {}
	tEightFronts_OpenBox[2][12]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][12]["RewardItem"][1]["Id"] = 730005
	tEightFronts_OpenBox[2][12]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tEightFronts_OpenBox[2][12]["Log"] = "0,0,3306558,1,12000909,2,730005,1"
-- 秘制免费修炼丹
	tEightFronts_OpenBox[2][13] ={}
	tEightFronts_OpenBox[2][13]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[2][13]["ItemChance"] = 500
	tEightFronts_OpenBox[2][13]["DeleteItem"] = {}
	tEightFronts_OpenBox[2][13]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[2][13]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[2][13]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[2][13]["RewardItem"] = {}
	tEightFronts_OpenBox[2][13]["RewardItem"][1] = {}
	tEightFronts_OpenBox[2][13]["RewardItem"][1]["Id"] = 3002926
	tEightFronts_OpenBox[2][13]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_OpenBox[2][13]["Log"] = "0,0,3306558,1,12000909,2,3002926,1"
-- 流星泪
	-- tEightFronts_OpenBox[2][14] ={}
	-- tEightFronts_OpenBox[2][14]["RandomItemChanceType"] = 2
	-- tEightFronts_OpenBox[2][14]["ItemChance"] = 200
	-- tEightFronts_OpenBox[2][14]["DeleteItem"] = {}
	-- tEightFronts_OpenBox[2][14]["DeleteItem"][1] = {}
	-- tEightFronts_OpenBox[2][14]["DeleteItem"][1]["Id"] = 3306558
	-- tEightFronts_OpenBox[2][14]["DeleteItem"][1]["ItemNum"] = 1
	-- tEightFronts_OpenBox[2][14]["RewardItem"] = {}
	-- tEightFronts_OpenBox[2][14]["RewardItem"][1] = {}
	-- tEightFronts_OpenBox[2][14]["RewardItem"][1]["Id"] = 1088002
	-- tEightFronts_OpenBox[2][14]["RewardItem"][1]["Attr"] = "0 1"
	-- tEightFronts_OpenBox[2][14]["Log"] = "0,0,3306558,1,12000909,2,1088002,1"
-- 涅槃灵石
	-- tEightFronts_OpenBox[2][15] ={}
	-- tEightFronts_OpenBox[2][15]["RandomItemChanceType"] = 2
	-- tEightFronts_OpenBox[2][15]["ItemChance"] = 100
	-- tEightFronts_OpenBox[2][15]["DeleteItem"] = {}
	-- tEightFronts_OpenBox[2][15]["DeleteItem"][1] = {}
	-- tEightFronts_OpenBox[2][15]["DeleteItem"][1]["Id"] = 3306558
	-- tEightFronts_OpenBox[2][15]["DeleteItem"][1]["ItemNum"] = 1
	-- tEightFronts_OpenBox[2][15]["RewardItem"] = {}
	-- tEightFronts_OpenBox[2][15]["RewardItem"][1] = {}
	-- tEightFronts_OpenBox[2][15]["RewardItem"][1]["Id"] = 721259
	-- tEightFronts_OpenBox[2][15]["RewardItem"][1]["Attr"] = "0 1"
	-- tEightFronts_OpenBox[2][15]["Log"] = "0,0,3306558,1,12000909,2,721259,1"
-- 金刚灵果
	-- tEightFronts_OpenBox[2][16] ={}
	-- tEightFronts_OpenBox[2][16]["RandomItemChanceType"] = 2
	-- tEightFronts_OpenBox[2][16]["ItemChance"] = 100
	-- tEightFronts_OpenBox[2][16]["DeleteItem"] = {}
	-- tEightFronts_OpenBox[2][16]["DeleteItem"][1] = {}
	-- tEightFronts_OpenBox[2][16]["DeleteItem"][1]["Id"] = 3306558
	-- tEightFronts_OpenBox[2][16]["DeleteItem"][1]["ItemNum"] = 1
	-- tEightFronts_OpenBox[2][16]["RewardItem"] = {}
	-- tEightFronts_OpenBox[2][16]["RewardItem"][1] = {}
	-- tEightFronts_OpenBox[2][16]["RewardItem"][1]["Id"] = 711188
	-- tEightFronts_OpenBox[2][16]["RewardItem"][1]["Attr"] = "0 1"
	-- tEightFronts_OpenBox[2][16]["Log"] = "0,0,3306558,1,12000909,2,711188,1"
-- 炫舞者就职公告
	-- tEightFronts_OpenBox[2][17] ={}
	-- tEightFronts_OpenBox[2][17]["RandomItemChanceType"] = 2
	-- tEightFronts_OpenBox[2][17]["ItemChance"] = 100
	-- tEightFronts_OpenBox[2][17]["DeleteItem"] = {}
	-- tEightFronts_OpenBox[2][17]["DeleteItem"][1] = {}
	-- tEightFronts_OpenBox[2][17]["DeleteItem"][1]["Id"] = 3306558
	-- tEightFronts_OpenBox[2][17]["DeleteItem"][1]["ItemNum"] = 1
	-- tEightFronts_OpenBox[2][17]["RewardItem"] = {}
	-- tEightFronts_OpenBox[2][17]["RewardItem"][1] = {}
	-- tEightFronts_OpenBox[2][17]["RewardItem"][1]["Id"] = 711679
	-- tEightFronts_OpenBox[2][17]["RewardItem"][1]["Attr"] = "0 1"
	-- tEightFronts_OpenBox[2][17]["Log"] = "0,0,3306558,1,12000909,2,711679,1"





	-- 头部（洞装）
	tEightFronts_OpenBox[3] = {}
	tEightFronts_OpenBox[3][1] = {}
	tEightFronts_OpenBox[3][1]["Random"] = 200
	tEightFronts_OpenBox[3][1]["ItemChanceSum"] = 2800
	-- 浑铁盔
	tEightFronts_OpenBox[3][1][1] ={}
	tEightFronts_OpenBox[3][1][1]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][1]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][1]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][1]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][1]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][1]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][1]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][1]["RewardItem"][1]["Id"] = 111006
	tEightFronts_OpenBox[3][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][1]["Log"] = "0,0,3306558,1,12000909,2,111006,1"
-- 百忍之护
	tEightFronts_OpenBox[3][1][2] ={}
	tEightFronts_OpenBox[3][1][2]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][2]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][1]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][1]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][1]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][2]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][2]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][2]["RewardItem"][1]["Id"] = 112006
	tEightFronts_OpenBox[3][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][2]["Log"] = "0,0,3306558,1,12000909,2,112006,1"
-- 獾皮帽
	tEightFronts_OpenBox[3][1][3] ={}
	tEightFronts_OpenBox[3][1][3]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][3]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][3]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][3]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][3]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][3]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][3]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][3]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][3]["RewardItem"][1]["Id"] = 113006
	tEightFronts_OpenBox[3][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][3]["Log"] = "0,0,3306558,1,12000909,2,113006,1"
-- 阴阳冠
	tEightFronts_OpenBox[3][1][4] ={}
	tEightFronts_OpenBox[3][1][4]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][4]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][4]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][4]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][4]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][4]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][4]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][4]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][4]["RewardItem"][1]["Id"] = 114006
	tEightFronts_OpenBox[3][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][4]["Log"] = "0,0,3306558,1,12000909,2,114006,1"
-- 坠青耳环
	tEightFronts_OpenBox[3][1][5] ={}
	tEightFronts_OpenBox[3][1][5]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][5]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][5]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][5]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][5]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][5]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][5]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][5]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][5]["RewardItem"][1]["Id"] = 117006
	tEightFronts_OpenBox[3][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][5]["Log"] = "0,0,3306558,1,12000909,2,117006,1"

-- 蓝布护额
	tEightFronts_OpenBox[3][1][6] ={}
	tEightFronts_OpenBox[3][1][6]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][6]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][6]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][6]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][6]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][6]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][6]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][6]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][6]["RewardItem"][1]["Id"] = 123006
	tEightFronts_OpenBox[3][1][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][6]["Log"] = "0,0,3306558,1,12000909,2,123006,1"
-- 粗布头带
	tEightFronts_OpenBox[3][1][7] ={}
	tEightFronts_OpenBox[3][1][7]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][7]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][7]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][7]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][7]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][7]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][7]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][7]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][7]["RewardItem"][1]["Id"] = 141006
	tEightFronts_OpenBox[3][1][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][7]["Log"] = "0,0,3306558,1,12000909,2,141006,1"

-- 夷情之羽
	tEightFronts_OpenBox[3][1][8] ={}
	tEightFronts_OpenBox[3][1][8]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][8]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][8]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][8]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][8]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][8]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][8]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][8]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][8]["RewardItem"][1]["Id"] = 142006
	tEightFronts_OpenBox[3][1][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][8]["Log"] = "0,0,3306558,1,12000909,2,142006,1"
-- 巡海者头饰
	tEightFronts_OpenBox[3][1][9] ={}
	tEightFronts_OpenBox[3][1][9]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][9]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][9]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][9]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][9]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][9]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][9]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][9]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][9]["RewardItem"][1]["Id"] = 144006
	tEightFronts_OpenBox[3][1][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][9]["Log"] = "0,0,3306558,1,12000909,2,144006,1"

-- 海潮头巾
	tEightFronts_OpenBox[3][1][10] ={}
	tEightFronts_OpenBox[3][1][10]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][10]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][10]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][10]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][10]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][10]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][10]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][10]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][10]["RewardItem"][1]["Id"] = 145006
	tEightFronts_OpenBox[3][1][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][10]["Log"] = "0,0,3306558,1,12000909,2,145006,1"
-- 护首铁
	tEightFronts_OpenBox[3][1][11] ={}
	tEightFronts_OpenBox[3][1][11]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][11]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][11]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][11]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][11]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][11]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][11]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][11]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][11]["RewardItem"][1]["Id"] = 118006
	tEightFronts_OpenBox[3][1][11]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][11]["Log"] = "0,0,3306558,1,12000909,2,118006,1"
-- 黄铜法箍
	tEightFronts_OpenBox[3][1][12] ={}
	tEightFronts_OpenBox[3][1][12]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][12]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][12]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][12]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][12]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][12]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][12]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][12]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][12]["RewardItem"][1]["Id"] = 143006
	tEightFronts_OpenBox[3][1][12]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][12]["Log"] = "0,0,3306558,1,12000909,2,143006,1"
-- 棉麻头巾
	tEightFronts_OpenBox[3][1][13] ={}
	tEightFronts_OpenBox[3][1][13]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][13]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][13]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][13]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][13]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][13]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][13]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][13]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][13]["RewardItem"][1]["Id"] = 148006
	tEightFronts_OpenBox[3][1][13]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][13]["Log"] = "0,0,3306558,1,12000909,2,148006,1"

-- 墨云冠
	tEightFronts_OpenBox[3][1][14] ={}
	tEightFronts_OpenBox[3][1][14]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[3][1][14]["ItemChance"] = 200
	tEightFronts_OpenBox[3][1][14]["DeleteItem"] = {}
	tEightFronts_OpenBox[3][1][14]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[3][1][14]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[3][1][14]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[3][1][14]["RewardItem"] = {}
	tEightFronts_OpenBox[3][1][14]["RewardItem"][1] = {}
	tEightFronts_OpenBox[3][1][14]["RewardItem"][1]["Id"] = 170006
	tEightFronts_OpenBox[3][1][14]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[3][1][14]["Log"] = "0,0,3306558,1,12000909,2,170006,1"


	-- 衣服（洞装）
	tEightFronts_OpenBox[4] = {}
	tEightFronts_OpenBox[4][1] = {}
	tEightFronts_OpenBox[4][1]["Random"] = 200
	tEightFronts_OpenBox[4][1]["ItemChanceSum"] = 1900
	-- 玄素袍
	tEightFronts_OpenBox[4][1][1] ={}
	tEightFronts_OpenBox[4][1][1]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[4][1][1]["ItemChance"] = 200
	tEightFronts_OpenBox[4][1][1]["DeleteItem"] = {}
	tEightFronts_OpenBox[4][1][1]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[4][1][1]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[4][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[4][1][1]["RewardItem"] = {}
	tEightFronts_OpenBox[4][1][1]["RewardItem"][1] = {}
	tEightFronts_OpenBox[4][1][1]["RewardItem"][1]["Id"] = 101006
	tEightFronts_OpenBox[4][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[4][1][1]["Log"] = "0,0,3306558,1,12000909,2,101006,1"
-- 皮护甲
	tEightFronts_OpenBox[4][1][2] ={}
	tEightFronts_OpenBox[4][1][2]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[4][1][2]["ItemChance"] = 200
	tEightFronts_OpenBox[4][1][2]["DeleteItem"] = {}
	tEightFronts_OpenBox[4][1][2]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[4][1][2]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[4][1][2]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[4][1][2]["RewardItem"] = {}
	tEightFronts_OpenBox[4][1][2]["RewardItem"][1] = {}
	tEightFronts_OpenBox[4][1][2]["RewardItem"][1]["Id"] = 130006
	tEightFronts_OpenBox[4][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[4][1][2]["Log"] = "0,0,3306558,1,12000909,2,130006,1"
-- 牛皮铠
	tEightFronts_OpenBox[4][1][3] ={}
	tEightFronts_OpenBox[4][1][3]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[4][1][3]["ItemChance"] = 200
	tEightFronts_OpenBox[4][1][3]["DeleteItem"] = {}
	tEightFronts_OpenBox[4][1][3]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[4][1][3]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[4][1][3]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[4][1][3]["RewardItem"] = {}
	tEightFronts_OpenBox[4][1][3]["RewardItem"][1] = {}
	tEightFronts_OpenBox[4][1][3]["RewardItem"][1]["Id"] = 131006
	tEightFronts_OpenBox[4][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[4][1][3]["Log"] = "0,0,3306558,1,12000909,2,131006,1"
-- 鹿皮猎褂
	tEightFronts_OpenBox[4][1][4] ={}
	tEightFronts_OpenBox[4][1][4]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[4][1][4]["ItemChance"] = 200
	tEightFronts_OpenBox[4][1][4]["DeleteItem"] = {}
	tEightFronts_OpenBox[4][1][4]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[4][1][4]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[4][1][4]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[4][1][4]["RewardItem"] = {}
	tEightFronts_OpenBox[4][1][4]["RewardItem"][1] = {}
	tEightFronts_OpenBox[4][1][4]["RewardItem"][1]["Id"] = 133006
	tEightFronts_OpenBox[4][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[4][1][4]["Log"] = "0,0,3306558,1,12000909,2,133006,1"
-- 混元道袍
	tEightFronts_OpenBox[4][1][5] ={}
	tEightFronts_OpenBox[4][1][5]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[4][1][5]["ItemChance"] = 200
	tEightFronts_OpenBox[4][1][5]["DeleteItem"] = {}
	tEightFronts_OpenBox[4][1][5]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[4][1][5]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[4][1][5]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[4][1][5]["RewardItem"] = {}
	tEightFronts_OpenBox[4][1][5]["RewardItem"][1] = {}
	tEightFronts_OpenBox[4][1][5]["RewardItem"][1]["Id"] = 134006
	tEightFronts_OpenBox[4][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[4][1][5]["Log"] = "0,0,3306558,1,12000909,2,134006,1"
-- 下忍服
	tEightFronts_OpenBox[4][1][6] ={}
	tEightFronts_OpenBox[4][1][6]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[4][1][6]["ItemChance"] = 200
	tEightFronts_OpenBox[4][1][6]["DeleteItem"] = {}
	tEightFronts_OpenBox[4][1][6]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[4][1][6]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[4][1][6]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[4][1][6]["RewardItem"] = {}
	tEightFronts_OpenBox[4][1][6]["RewardItem"][1] = {}
	tEightFronts_OpenBox[4][1][6]["RewardItem"][1]["Id"] = 135006
	tEightFronts_OpenBox[4][1][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[4][1][6]["Log"] = "0,0,3306558,1,12000909,2,135006,1"
-- 粗葛布袍
	tEightFronts_OpenBox[4][1][7] ={}
	tEightFronts_OpenBox[4][1][7]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[4][1][7]["ItemChance"] = 200
	tEightFronts_OpenBox[4][1][7]["DeleteItem"] = {}
	tEightFronts_OpenBox[4][1][7]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[4][1][7]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[4][1][7]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[4][1][7]["RewardItem"] = {}
	tEightFronts_OpenBox[4][1][7]["RewardItem"][1] = {}
	tEightFronts_OpenBox[4][1][7]["RewardItem"][1]["Id"] = 136006
	tEightFronts_OpenBox[4][1][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[4][1][7]["Log"] = "0,0,3306558,1,12000909,2,136006,1"
-- 连身战衣【15级】
	tEightFronts_OpenBox[4][1][8] ={}
	tEightFronts_OpenBox[4][1][8]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[4][1][8]["ItemChance"] = 200
	tEightFronts_OpenBox[4][1][8]["DeleteItem"] = {}
	tEightFronts_OpenBox[4][1][8]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[4][1][8]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[4][1][8]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[4][1][8]["RewardItem"] = {}
	tEightFronts_OpenBox[4][1][8]["RewardItem"][1] = {}
	tEightFronts_OpenBox[4][1][8]["RewardItem"][1]["Id"] = 138006
	tEightFronts_OpenBox[4][1][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[4][1][8]["Log"] = "0,0,3306558,1,12000909,2,138006,1"
-- 淘浪裳
	tEightFronts_OpenBox[4][1][9] ={}
	tEightFronts_OpenBox[4][1][9]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[4][1][9]["ItemChance"] = 300
	tEightFronts_OpenBox[4][1][9]["DeleteItem"] = {}
	tEightFronts_OpenBox[4][1][9]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[4][1][9]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[4][1][9]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[4][1][9]["RewardItem"] = {}
	tEightFronts_OpenBox[4][1][9]["RewardItem"][1] = {}
	tEightFronts_OpenBox[4][1][9]["RewardItem"][1]["Id"] = 139006 
	tEightFronts_OpenBox[4][1][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[4][1][9]["Log"] = "0,0,3306558,1,12000909,2,139006,1"


	-- 通用 法系（洞装）
	tEightFronts_OpenBox[5] = {}
	tEightFronts_OpenBox[5][1] = {}
	tEightFronts_OpenBox[5][1]["Random"] = 100
	tEightFronts_OpenBox[5][1]["ItemChanceSum"] = 500
	-- 鸡心项链
	tEightFronts_OpenBox[5][1][1] ={}
	tEightFronts_OpenBox[5][1][1]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[5][1][1]["ItemChance"] = 100
	tEightFronts_OpenBox[5][1][1]["DeleteItem"] = {}
	tEightFronts_OpenBox[5][1][1]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[5][1][1]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[5][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[5][1][1]["RewardItem"] = {}
	tEightFronts_OpenBox[5][1][1]["RewardItem"][1] = {}
	tEightFronts_OpenBox[5][1][1]["RewardItem"][1]["Id"] = 120026
	tEightFronts_OpenBox[5][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[5][1][1]["Log"] = "0,0,3306558,1,12000909,2,120026,1"
-- 百花囊
	tEightFronts_OpenBox[5][1][2] ={}
	tEightFronts_OpenBox[5][1][2]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[5][1][2]["ItemChance"] = 100
	tEightFronts_OpenBox[5][1][2]["DeleteItem"] = {}
	tEightFronts_OpenBox[5][1][2]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[5][1][2]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[5][1][2]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[5][1][2]["RewardItem"] = {}
	tEightFronts_OpenBox[5][1][2]["RewardItem"][1] = {}
	tEightFronts_OpenBox[5][1][2]["RewardItem"][1]["Id"] = 121026
	tEightFronts_OpenBox[5][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[5][1][2]["Log"] = "0,0,3306558,1,12000909,2,121026,1"
-- 银戒
	tEightFronts_OpenBox[5][1][3] ={}
	tEightFronts_OpenBox[5][1][3]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[5][1][3]["ItemChance"] = 100
	tEightFronts_OpenBox[5][1][3]["DeleteItem"] = {}
	tEightFronts_OpenBox[5][1][3]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[5][1][3]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[5][1][3]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[5][1][3]["RewardItem"] = {}
	tEightFronts_OpenBox[5][1][3]["RewardItem"][1] = {}
	tEightFronts_OpenBox[5][1][3]["RewardItem"][1]["Id"] = 150036
	tEightFronts_OpenBox[5][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[5][1][3]["Log"] = "0,0,3306558,1,12000909,2,150036,1"
-- 桃木镯
	tEightFronts_OpenBox[5][1][4] ={}
	tEightFronts_OpenBox[5][1][4]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[5][1][4]["ItemChance"] = 100
	tEightFronts_OpenBox[5][1][4]["DeleteItem"] = {}
	tEightFronts_OpenBox[5][1][4]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[5][1][4]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[5][1][4]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[5][1][4]["RewardItem"] = {}
	tEightFronts_OpenBox[5][1][4]["RewardItem"][1] = {}
	tEightFronts_OpenBox[5][1][4]["RewardItem"][1]["Id"] = 152016
	tEightFronts_OpenBox[5][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[5][1][4]["Log"] = "0,0,3306558,1,12000909,2,152016,1"
-- 鹿皮靴
	tEightFronts_OpenBox[5][1][5] ={}
	tEightFronts_OpenBox[5][1][5]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[5][1][5]["ItemChance"] = 100
	tEightFronts_OpenBox[5][1][5]["DeleteItem"] = {}
	tEightFronts_OpenBox[5][1][5]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[5][1][5]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[5][1][5]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[5][1][5]["RewardItem"] = {}
	tEightFronts_OpenBox[5][1][5]["RewardItem"][1] = {}
	tEightFronts_OpenBox[5][1][5]["RewardItem"][1]["Id"] = 160036
	tEightFronts_OpenBox[5][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[5][1][5]["Log"] = "0,0,3306558,1,12000909,2,160036,1"


-- 武器（洞装）
	tEightFronts_OpenBox[6] = {}
	tEightFronts_OpenBox[6][1] = {}
	tEightFronts_OpenBox[6][1]["Random"] = 2000
	tEightFronts_OpenBox[6][1]["ItemChanceSum"] = 4800
	-- 修罗刀
	tEightFronts_OpenBox[6][1][1] ={}
	tEightFronts_OpenBox[6][1][1]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][1]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][1]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][1]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][1]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][1]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][1]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][1]["RewardItem"][1]["Id"] = 410026
	tEightFronts_OpenBox[6][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][1]["Log"] = "0,0,3306558,1,12000909,2,410026,1"
-- 青冥剑
	tEightFronts_OpenBox[6][1][2] ={}
	tEightFronts_OpenBox[6][1][2]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][2]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][2]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][2]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][2]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][2]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][2]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][2]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][2]["RewardItem"][1]["Id"] = 420026
	tEightFronts_OpenBox[6][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][2]["Log"] = "0,0,3306558,1,12000909,2,420026,1"
-- 驱邪剑
	tEightFronts_OpenBox[6][1][3] ={}
	tEightFronts_OpenBox[6][1][3]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][3]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][3]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][3]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][3]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][3]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][3]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][3]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][3]["RewardItem"][1]["Id"] = 421026
	tEightFronts_OpenBox[6][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][3]["Log"] = "0,0,3306558,1,12000909,2,421026,1"
-- 短木棒
	tEightFronts_OpenBox[6][1][4] ={}
	tEightFronts_OpenBox[6][1][4]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][4]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][4]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][4]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][4]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][4]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][4]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][4]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][4]["RewardItem"][1]["Id"] = 460026
	tEightFronts_OpenBox[6][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][4]["Log"] = "0,0,3306558,1,12000909,2,460026,1"
-- 猎弓
	tEightFronts_OpenBox[6][1][5] ={}
	tEightFronts_OpenBox[6][1][5]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][5]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][5]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][5]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][5]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][5]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][5]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][5]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][5]["RewardItem"][1]["Id"] = 500016
	tEightFronts_OpenBox[6][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][5]["Log"] = "0,0,3306558,1,12000909,2,500016,1"
-- 武藏钩镰
	tEightFronts_OpenBox[6][1][6] ={}
	tEightFronts_OpenBox[6][1][6]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][6]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][6]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][6]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][6]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][6]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][6]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][6]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][6]["RewardItem"][1]["Id"] = 511026
	tEightFronts_OpenBox[6][1][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][6]["Log"] = "0,0,3306558,1,12000909,2,511026,1"
-- 朱缨枪
	tEightFronts_OpenBox[6][1][7] ={}
	tEightFronts_OpenBox[6][1][7]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][7]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][7]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][7]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][7]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][7]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][7]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][7]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][7]["RewardItem"][1]["Id"] = 530026
	tEightFronts_OpenBox[6][1][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][7]["Log"] = "0,0,3306558,1,12000909,2,530026,1"
-- 蜡木棍
	tEightFronts_OpenBox[6][1][8] ={}
	tEightFronts_OpenBox[6][1][8]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][8]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][8]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][8]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][8]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][8]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][8]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][8]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][8]["RewardItem"][1]["Id"] = 561026
	tEightFronts_OpenBox[6][1][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][8]["Log"] = "0,0,3306558,1,12000909,2,561026,1"

-- 精钢切
	tEightFronts_OpenBox[6][1][9] ={}
	tEightFronts_OpenBox[6][1][9]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][9]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][9]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][9]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][9]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][9]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][9]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][9]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][9]["RewardItem"][1]["Id"] = 601026
	tEightFronts_OpenBox[6][1][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][9]["Log"] = "0,0,3306558,1,12000909,2,601026,1"
-- 金蝉念珠
	tEightFronts_OpenBox[6][1][10] ={}
	tEightFronts_OpenBox[6][1][10]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][10]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][10]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][10]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][10]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][10]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][10]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][10]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][10]["RewardItem"][1]["Id"] = 610026
	tEightFronts_OpenBox[6][1][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][10]["Log"] = "0,0,3306558,1,12000909,2,610026,1"
-- 勇者佩剑
	tEightFronts_OpenBox[6][1][11] ={}
	tEightFronts_OpenBox[6][1][11]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][11]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][11]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][11]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][11]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][11]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][11]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][11]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][11]["RewardItem"][1]["Id"] = 611026
	tEightFronts_OpenBox[6][1][11]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][11]["Log"] = "0,0,3306558,1,12000909,2,611026,1"
-- 中级火枪
	tEightFronts_OpenBox[6][1][12] ={}
	tEightFronts_OpenBox[6][1][12]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][12]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][12]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][12]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][12]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][12]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][12]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][12]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][12]["RewardItem"][1]["Id"] = 612026
	tEightFronts_OpenBox[6][1][12]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][12]["Log"] = "0,0,3306558,1,12000909,2,612026,1"
-- 狼牙飞刀
	tEightFronts_OpenBox[6][1][13] ={}
	tEightFronts_OpenBox[6][1][13]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][13]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][13]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][13]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][13]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][13]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][13]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][13]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][13]["RewardItem"][1]["Id"] = 613016
	tEightFronts_OpenBox[6][1][13]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][13]["Log"] = "0,0,3306558,1,12000909,2,613016,1"
-- 枣木双截棍
	tEightFronts_OpenBox[6][1][14] ={}
	tEightFronts_OpenBox[6][1][14]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][14]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][14]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][14]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][14]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][14]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][14]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][14]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][14]["RewardItem"][1]["Id"] = 617026
	tEightFronts_OpenBox[6][1][14]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][14]["Log"] = "0,0,3306558,1,12000909,2,617026,1"

-- 苍之怒焰
	tEightFronts_OpenBox[6][1][15] ={}
	tEightFronts_OpenBox[6][1][15]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][15]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][15]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][15]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][15]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][15]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][15]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][15]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][15]["RewardItem"][1]["Id"] = 624026
	tEightFronts_OpenBox[6][1][15]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][15]["Log"] = "0,0,3306558,1,12000909,2,624026,1"
-- 傲雪凌霜扇
	tEightFronts_OpenBox[6][1][16] ={}
	tEightFronts_OpenBox[6][1][16]["RandomItemChanceType"] = 2
	tEightFronts_OpenBox[6][1][16]["ItemChance"] = 300
	tEightFronts_OpenBox[6][1][16]["DeleteItem"] = {}
	tEightFronts_OpenBox[6][1][16]["DeleteItem"][1] = {}
	tEightFronts_OpenBox[6][1][16]["DeleteItem"][1]["Id"] = 3306558
	tEightFronts_OpenBox[6][1][16]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_OpenBox[6][1][16]["RewardItem"] = {}
	tEightFronts_OpenBox[6][1][16]["RewardItem"][1] = {}
	tEightFronts_OpenBox[6][1][16]["RewardItem"][1]["Id"] = 626026
	tEightFronts_OpenBox[6][1][16]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 0 255"
	tEightFronts_OpenBox[6][1][16]["Log"] = "0,0,3306558,1,12000909,2,626026,1"

-- 陷进状态
local tEightFronts_Trap ={}
	-- 降低移动速度
	tEightFronts_Trap[1] = {}
	tEightFronts_Trap[1]["Status"] = 50
	tEightFronts_Trap[1]["Power"] = 50
	tEightFronts_Trap[1]["Secs"] = 5
	tEightFronts_Trap[1]["Times"] = 1
	tEightFronts_Trap[1]["unRemainTime"] = 5
	tEightFronts_Trap[1]["unEndTime"] = 1
	tEightFronts_Trap[1]["ucRecordable"] = 0
	-- 冰冻
	tEightFronts_Trap[2] = {}
	tEightFronts_Trap[2]["Status"] = 56
	tEightFronts_Trap[2]["Power"] = 100
	tEightFronts_Trap[2]["Secs"] = 3
	tEightFronts_Trap[2]["Times"] = 1
	tEightFronts_Trap[2]["unRemainTime"] = 3
	tEightFronts_Trap[2]["unEndTime"] = 1
	tEightFronts_Trap[2]["ucRecordable"] = 0

	-- 眩晕
	tEightFronts_Trap[3] = {}
	tEightFronts_Trap[3]["Status"] = 55
	tEightFronts_Trap[3]["Power"] = 100
	tEightFronts_Trap[3]["Secs"] = 3
	tEightFronts_Trap[3]["Times"] = 1
	tEightFronts_Trap[3]["unRemainTime"] = 3
	tEightFronts_Trap[3]["unEndTime"] = 1
	tEightFronts_Trap[3]["ucRecordable"] = 0

	-- 颠倒
	tEightFronts_Trap[4] = {}
	tEightFronts_Trap[4]["Status"] = 57
	tEightFronts_Trap[4]["Power"] = 100
	tEightFronts_Trap[4]["Secs"] = 5
	tEightFronts_Trap[4]["Times"] = 1
	tEightFronts_Trap[4]["unRemainTime"] = 5
	tEightFronts_Trap[4]["unEndTime"] = 1
	tEightFronts_Trap[4]["ucRecordable"] = 0


local tEightFronts_TrapId = {}
-- 惊门陷进
	-- 冰霜
	tEightFronts_TrapId[71] = {}
	tEightFronts_TrapId[71]["Look"] = 71
	tEightFronts_TrapId[71]["MapId"] = 1047
	tEightFronts_TrapId[71]["PosX"] = 27
	tEightFronts_TrapId[71]["PosY"] = 79

	tEightFronts_TrapId[72] = {}
	tEightFronts_TrapId[72]["Look"] = 71
	tEightFronts_TrapId[72]["MapId"] = 1047
	tEightFronts_TrapId[72]["PosX"] = 107
	tEightFronts_TrapId[72]["PosY"] = 139
	
	tEightFronts_TrapId[73] = {}
	tEightFronts_TrapId[73]["Look"] = 71
	tEightFronts_TrapId[73]["MapId"] = 1047
	tEightFronts_TrapId[73]["PosX"] = 73
	tEightFronts_TrapId[73]["PosY"] = 42
	
	tEightFronts_TrapId[74] = {}
	tEightFronts_TrapId[74]["Look"] = 71
	tEightFronts_TrapId[74]["MapId"] = 1047
	tEightFronts_TrapId[74]["PosX"] = 190
	tEightFronts_TrapId[74]["PosY"] = 150
	
	tEightFronts_TrapId[75] = {}
	tEightFronts_TrapId[75]["Look"] = 71
	tEightFronts_TrapId[75]["MapId"] = 1047
	tEightFronts_TrapId[75]["PosX"] = 46
	tEightFronts_TrapId[75]["PosY"] = 65
	
	tEightFronts_TrapId[76] = {}
	tEightFronts_TrapId[76]["Look"] = 71
	tEightFronts_TrapId[76]["MapId"] = 1047
	tEightFronts_TrapId[76]["PosX"] = 118
	tEightFronts_TrapId[76]["PosY"] = 155
	
	tEightFronts_TrapId[77] = {}
	tEightFronts_TrapId[77]["Look"] = 71
	tEightFronts_TrapId[77]["MapId"] = 1047
	tEightFronts_TrapId[77]["PosX"] = 93
	tEightFronts_TrapId[77]["PosY"] = 113
	
	tEightFronts_TrapId[78] = {}
	tEightFronts_TrapId[78]["Look"] = 71
	tEightFronts_TrapId[78]["MapId"] = 1047
	tEightFronts_TrapId[78]["PosX"] = 134
	tEightFronts_TrapId[78]["PosY"] = 92
	
	-- 冰冻
	tEightFronts_TrapId[79] = {}
	tEightFronts_TrapId[79]["Look"] = 72
	tEightFronts_TrapId[79]["MapId"] = 1047
	tEightFronts_TrapId[79]["PosX"] = 22
	tEightFronts_TrapId[79]["PosY"] = 53
	
	tEightFronts_TrapId[80] = {}
	tEightFronts_TrapId[80]["Look"] = 72
	tEightFronts_TrapId[80]["MapId"] = 1047
	tEightFronts_TrapId[80]["PosX"] = 123
	tEightFronts_TrapId[80]["PosY"] = 121

	tEightFronts_TrapId[81] = {}
	tEightFronts_TrapId[81]["Look"] = 72
	tEightFronts_TrapId[81]["MapId"] = 1047
	tEightFronts_TrapId[81]["PosX"] = 76
	tEightFronts_TrapId[81]["PosY"] = 25
	
	tEightFronts_TrapId[82] = {}
	tEightFronts_TrapId[82]["Look"] = 72
	tEightFronts_TrapId[82]["MapId"] = 1047
	tEightFronts_TrapId[82]["PosX"] = 173
	tEightFronts_TrapId[82]["PosY"] = 161
	
	tEightFronts_TrapId[83] = {}
	tEightFronts_TrapId[83]["Look"] = 72
	tEightFronts_TrapId[83]["MapId"] = 1047
	tEightFronts_TrapId[83]["PosX"] = 55
	tEightFronts_TrapId[83]["PosY"] = 89
	
	tEightFronts_TrapId[84] = {}
	tEightFronts_TrapId[84]["Look"] = 72
	tEightFronts_TrapId[84]["MapId"] = 1047
	tEightFronts_TrapId[84]["PosX"] = 122
	tEightFronts_TrapId[84]["PosY"] = 140
	
	tEightFronts_TrapId[85] = {}
	tEightFronts_TrapId[85]["Look"] = 72
	tEightFronts_TrapId[85]["MapId"] = 1047
	tEightFronts_TrapId[85]["PosX"] = 85
	tEightFronts_TrapId[85]["PosY"] = 84
	
	tEightFronts_TrapId[86] = {}
	tEightFronts_TrapId[86]["Look"] = 72
	tEightFronts_TrapId[86]["MapId"] = 1047
	tEightFronts_TrapId[86]["PosX"] = 122
	tEightFronts_TrapId[86]["PosY"] = 112
	-- 眩晕
	tEightFronts_TrapId[87] = {}
	tEightFronts_TrapId[87]["Look"] = 73
	tEightFronts_TrapId[87]["MapId"] = 1047
	tEightFronts_TrapId[87]["PosX"] = 40
	tEightFronts_TrapId[87]["PosY"] = 49

	tEightFronts_TrapId[88] = {}
	tEightFronts_TrapId[88]["Look"] = 73
	tEightFronts_TrapId[88]["MapId"] = 1047
	tEightFronts_TrapId[88]["PosX"] = 156
	tEightFronts_TrapId[88]["PosY"] = 129

	tEightFronts_TrapId[89] = {}
	tEightFronts_TrapId[89]["Look"] = 73
	tEightFronts_TrapId[89]["MapId"] = 1047
	tEightFronts_TrapId[89]["PosX"] = 100
	tEightFronts_TrapId[89]["PosY"] = 56

	tEightFronts_TrapId[90] = {}
	tEightFronts_TrapId[90]["Look"] = 73
	tEightFronts_TrapId[90]["MapId"] = 1047
	tEightFronts_TrapId[90]["PosX"] = 155
	tEightFronts_TrapId[90]["PosY"] = 176

	tEightFronts_TrapId[91] = {}
	tEightFronts_TrapId[91]["Look"] = 73
	tEightFronts_TrapId[91]["MapId"] = 1047
	tEightFronts_TrapId[91]["PosX"] = 61
	tEightFronts_TrapId[91]["PosY"] = 115

	tEightFronts_TrapId[92] = {}
	tEightFronts_TrapId[92]["Look"] = 73
	tEightFronts_TrapId[92]["MapId"] = 1047
	tEightFronts_TrapId[92]["PosX"] = 105
	tEightFronts_TrapId[92]["PosY"] = 80

	tEightFronts_TrapId[93] = {}
	tEightFronts_TrapId[93]["Look"] = 73
	tEightFronts_TrapId[93]["MapId"] = 1047
	tEightFronts_TrapId[93]["PosX"] = 96
	tEightFronts_TrapId[93]["PosY"] = 125

-- 颠倒
	tEightFronts_TrapId[94] = {}
	tEightFronts_TrapId[94]["Look"] = 74
	tEightFronts_TrapId[94]["MapId"] = 1047
	tEightFronts_TrapId[94]["PosX"] = 49
	tEightFronts_TrapId[94]["PosY"] = 35

	tEightFronts_TrapId[95] = {}
	tEightFronts_TrapId[95]["Look"] = 74
	tEightFronts_TrapId[95]["MapId"] = 1047
	tEightFronts_TrapId[95]["PosX"] = 163
	tEightFronts_TrapId[95]["PosY"] = 108

	tEightFronts_TrapId[96] = {}
	tEightFronts_TrapId[96]["Look"] = 74
	tEightFronts_TrapId[96]["MapId"] = 1047
	tEightFronts_TrapId[96]["PosX"] = 73
	tEightFronts_TrapId[96]["PosY"] = 70

	tEightFronts_TrapId[97] = {}
	tEightFronts_TrapId[97]["Look"] = 74
	tEightFronts_TrapId[97]["MapId"] = 1047
	tEightFronts_TrapId[97]["PosX"] = 129
	tEightFronts_TrapId[97]["PosY"] = 180

	tEightFronts_TrapId[98] = {}
	tEightFronts_TrapId[98]["Look"] = 74
	tEightFronts_TrapId[98]["MapId"] = 1047
	tEightFronts_TrapId[98]["PosX"] = 86
	tEightFronts_TrapId[98]["PosY"] = 131

	tEightFronts_TrapId[99] = {}
	tEightFronts_TrapId[99]["Look"] = 74
	tEightFronts_TrapId[99]["MapId"] = 1047
	tEightFronts_TrapId[99]["PosX"] = 123
	tEightFronts_TrapId[99]["PosY"] = 66

	tEightFronts_TrapId[100] = {}
	tEightFronts_TrapId[100]["Look"] = 74
	tEightFronts_TrapId[100]["MapId"] = 1047
	tEightFronts_TrapId[100]["PosX"] = 98
	tEightFronts_TrapId[100]["PosY"] = 149

-- 伤门陷进
-- 冰霜
	tEightFronts_TrapId[101] = {}
	tEightFronts_TrapId[101]["Look"] = 71
	tEightFronts_TrapId[101]["MapId"] = 1044
	tEightFronts_TrapId[101]["PosX"] = 27
	tEightFronts_TrapId[101]["PosY"] = 79

	tEightFronts_TrapId[102] = {}
	tEightFronts_TrapId[102]["Look"] = 71
	tEightFronts_TrapId[102]["MapId"] = 1044
	tEightFronts_TrapId[102]["PosX"] = 107
	tEightFronts_TrapId[102]["PosY"] = 139

	tEightFronts_TrapId[103] = {}
	tEightFronts_TrapId[103]["Look"] = 71
	tEightFronts_TrapId[103]["MapId"] = 1044
	tEightFronts_TrapId[103]["PosX"] = 73
	tEightFronts_TrapId[103]["PosY"] = 42

	tEightFronts_TrapId[104] = {}
	tEightFronts_TrapId[104]["Look"] = 71
	tEightFronts_TrapId[104]["MapId"] = 1044
	tEightFronts_TrapId[104]["PosX"] = 190
	tEightFronts_TrapId[104]["PosY"] = 150

	tEightFronts_TrapId[105] = {}
	tEightFronts_TrapId[105]["Look"] = 71
	tEightFronts_TrapId[105]["MapId"] = 1044
	tEightFronts_TrapId[105]["PosX"] = 46
	tEightFronts_TrapId[105]["PosY"] = 65

	tEightFronts_TrapId[106] = {}
	tEightFronts_TrapId[106]["Look"] = 71
	tEightFronts_TrapId[106]["MapId"] = 1044
	tEightFronts_TrapId[106]["PosX"] = 118
	tEightFronts_TrapId[106]["PosY"] = 155

	tEightFronts_TrapId[107] = {}
	tEightFronts_TrapId[107]["Look"] = 71
	tEightFronts_TrapId[107]["MapId"] = 1044
	tEightFronts_TrapId[107]["PosX"] = 93
	tEightFronts_TrapId[107]["PosY"] = 113

	tEightFronts_TrapId[108] = {}
	tEightFronts_TrapId[108]["Look"] = 71
	tEightFronts_TrapId[108]["MapId"] = 1044
	tEightFronts_TrapId[108]["PosX"] = 134
	tEightFronts_TrapId[108]["PosY"] = 92
-- 冰冻
	tEightFronts_TrapId[109] = {}
	tEightFronts_TrapId[109]["Look"] = 72
	tEightFronts_TrapId[109]["MapId"] = 1044
	tEightFronts_TrapId[109]["PosX"] = 22
	tEightFronts_TrapId[109]["PosY"] = 53

	tEightFronts_TrapId[110] = {}
	tEightFronts_TrapId[110]["Look"] = 72
	tEightFronts_TrapId[110]["MapId"] = 1044
	tEightFronts_TrapId[110]["PosX"] = 123
	tEightFronts_TrapId[110]["PosY"] = 121
	tEightFronts_TrapId[111] = {}
	tEightFronts_TrapId[111]["Look"] = 72
	tEightFronts_TrapId[111]["MapId"] = 1044
	tEightFronts_TrapId[111]["PosX"] = 76
	tEightFronts_TrapId[111]["PosY"] = 25
	tEightFronts_TrapId[112] = {}
	tEightFronts_TrapId[112]["Look"] = 72
	tEightFronts_TrapId[112]["MapId"] = 1044
	tEightFronts_TrapId[112]["PosX"] = 173
	tEightFronts_TrapId[112]["PosY"] = 161
	tEightFronts_TrapId[113] = {}
	tEightFronts_TrapId[113]["Look"] = 72
	tEightFronts_TrapId[113]["MapId"] = 1044
	tEightFronts_TrapId[113]["PosX"] = 55
	tEightFronts_TrapId[113]["PosY"] = 89
	tEightFronts_TrapId[114] = {}
	tEightFronts_TrapId[114]["Look"] = 72
	tEightFronts_TrapId[114]["MapId"] = 1044
	tEightFronts_TrapId[114]["PosX"] = 122
	tEightFronts_TrapId[114]["PosY"] = 140
	tEightFronts_TrapId[115] = {}
	tEightFronts_TrapId[115]["Look"] = 72
	tEightFronts_TrapId[115]["MapId"] = 1044
	tEightFronts_TrapId[115]["PosX"] = 85
	tEightFronts_TrapId[115]["PosY"] = 84
	tEightFronts_TrapId[116] = {}
	tEightFronts_TrapId[116]["Look"] = 72
	tEightFronts_TrapId[116]["MapId"] = 1044
	tEightFronts_TrapId[116]["PosX"] = 122
	tEightFronts_TrapId[116]["PosY"] = 112
	tEightFronts_TrapId[117] = {}
	tEightFronts_TrapId[117]["Look"] = 72
	tEightFronts_TrapId[117]["MapId"] = 1044
	tEightFronts_TrapId[117]["PosX"] = 40
	tEightFronts_TrapId[117]["PosY"] = 49
-- 眩晕
	tEightFronts_TrapId[118] = {}
	tEightFronts_TrapId[118]["Look"] = 73
	tEightFronts_TrapId[118]["MapId"] = 1044
	tEightFronts_TrapId[118]["PosX"] = 156
	tEightFronts_TrapId[118]["PosY"] = 129
	tEightFronts_TrapId[119] = {}
	tEightFronts_TrapId[119]["Look"] = 73
	tEightFronts_TrapId[119]["MapId"] = 1044
	tEightFronts_TrapId[119]["PosX"] = 100
	tEightFronts_TrapId[119]["PosY"] = 56
	tEightFronts_TrapId[120] = {}
	tEightFronts_TrapId[120]["Look"] = 73
	tEightFronts_TrapId[120]["MapId"] = 1044
	tEightFronts_TrapId[120]["PosX"] = 155
	tEightFronts_TrapId[120]["PosY"] = 176
	tEightFronts_TrapId[121] = {}
	tEightFronts_TrapId[121]["Look"] = 73
	tEightFronts_TrapId[121]["MapId"] = 1044
	tEightFronts_TrapId[121]["PosX"] = 61
	tEightFronts_TrapId[121]["PosY"] = 115
	tEightFronts_TrapId[122] = {}
	tEightFronts_TrapId[122]["Look"] = 73
	tEightFronts_TrapId[122]["MapId"] = 1044
	tEightFronts_TrapId[122]["PosX"] = 105
	tEightFronts_TrapId[122]["PosY"] = 80
	tEightFronts_TrapId[123] = {}
	tEightFronts_TrapId[123]["Look"] = 73
	tEightFronts_TrapId[123]["MapId"] = 1044
	tEightFronts_TrapId[123]["PosX"] = 96
	tEightFronts_TrapId[123]["PosY"] = 125
	tEightFronts_TrapId[124] = {}
	tEightFronts_TrapId[124]["Look"] = 73
	tEightFronts_TrapId[124]["MapId"] = 1044
	tEightFronts_TrapId[124]["PosX"] = 49
	tEightFronts_TrapId[124]["PosY"] = 35
-- 颠倒
	tEightFronts_TrapId[125] = {}
	tEightFronts_TrapId[125]["Look"] = 74
	tEightFronts_TrapId[125]["MapId"] = 1044
	tEightFronts_TrapId[125]["PosX"] = 163
	tEightFronts_TrapId[125]["PosY"] = 108
	tEightFronts_TrapId[126] = {}
	tEightFronts_TrapId[126]["Look"] = 74
	tEightFronts_TrapId[126]["MapId"] = 1044
	tEightFronts_TrapId[126]["PosX"] = 73
	tEightFronts_TrapId[126]["PosY"] = 70
	tEightFronts_TrapId[127] = {}
	tEightFronts_TrapId[127]["Look"] = 74
	tEightFronts_TrapId[127]["MapId"] = 1044
	tEightFronts_TrapId[127]["PosX"] = 129
	tEightFronts_TrapId[127]["PosY"] = 180
	tEightFronts_TrapId[128] = {}
	tEightFronts_TrapId[128]["Look"] = 74
	tEightFronts_TrapId[128]["MapId"] = 1044
	tEightFronts_TrapId[128]["PosX"] = 86
	tEightFronts_TrapId[128]["PosY"] = 131
	tEightFronts_TrapId[129] = {}
	tEightFronts_TrapId[129]["Look"] = 74
	tEightFronts_TrapId[129]["MapId"] = 1044
	tEightFronts_TrapId[129]["PosX"] = 123
	tEightFronts_TrapId[129]["PosY"] = 66
	tEightFronts_TrapId[130] = {}
	tEightFronts_TrapId[130]["Look"] = 74
	tEightFronts_TrapId[130]["MapId"] = 1044
	tEightFronts_TrapId[130]["PosX"] = 98
	tEightFronts_TrapId[130]["PosY"] = 149
	
local tEightFronts_GetNum = {}
	tEightFronts_GetNum[1] = {}
	tEightFronts_GetNum[1]["ItemChanceSum"] = 8000
-- 小怪
	tEightFronts_GetNum[1][1] ={}
	tEightFronts_GetNum[1][1]["RandomItemChanceType"] = 2
	tEightFronts_GetNum[1][1]["ItemChance"] = 2000
	tEightFronts_GetNum[1][1]["Num"] = 1
-- 晕眩
	tEightFronts_GetNum[1][2] ={}
	tEightFronts_GetNum[1][2]["RandomItemChanceType"] = 2
	tEightFronts_GetNum[1][2]["ItemChance"] = 2000
	tEightFronts_GetNum[1][2]["Num"] = 2
-- 减速
	tEightFronts_GetNum[1][3] ={}
	tEightFronts_GetNum[1][3]["RandomItemChanceType"] = 2
	tEightFronts_GetNum[1][3]["ItemChance"] = 2000
	tEightFronts_GetNum[1][3]["Num"] = 3
	
-- 什么都没有
	tEightFronts_GetNum[1][4] ={}
	tEightFronts_GetNum[1][4]["RandomItemChanceType"] = 2
	tEightFronts_GetNum[1][4]["ItemChance"] = 2000
	tEightFronts_GetNum[1][4]["Num"] = 4
	
local tEightFronts_GetRandomNum = {}
	tEightFronts_GetRandomNum[1] = {}
	tEightFronts_GetRandomNum[1]["ItemChanceSum"] = 10000
-- 小怪
	tEightFronts_GetRandomNum[1][1] ={}
	tEightFronts_GetRandomNum[1][1]["RandomItemChanceType"] = 2
	tEightFronts_GetRandomNum[1][1]["ItemChance"] = 5000
	tEightFronts_GetRandomNum[1][1]["Num"] = 1
-- 晕眩
	tEightFronts_GetRandomNum[1][2] ={}
	tEightFronts_GetRandomNum[1][2]["RandomItemChanceType"] = 2
	tEightFronts_GetRandomNum[1][2]["ItemChance"] = 5000
	tEightFronts_GetRandomNum[1][2]["Num"] = 2
	-- 打开月光宝盒
local tEightFronts_UseItem = {}
--第一层随机
	tEightFronts_UseItem[1] = {}
	tEightFronts_UseItem[1]["ItemChanceSum"] = 10000
	-- 直接给物品
	tEightFronts_UseItem[1][1] ={}
	tEightFronts_UseItem[1][1]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[1][1]["ItemChance"] = 9900
	tEightFronts_UseItem[1][1]["Table"] = tEightFronts_UseItem[2]
	tEightFronts_UseItem[1][1]["Num"] = 2
	-- 头部
	tEightFronts_UseItem[1][2] ={}
	tEightFronts_UseItem[1][2]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[1][2]["ItemChance"] = 10
	tEightFronts_UseItem[1][2]["Table"] = tEightFronts_UseItem[3]
	tEightFronts_UseItem[1][2]["Num"] = 3
	-- 衣服
	tEightFronts_UseItem[1][3] ={}
	tEightFronts_UseItem[1][3]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[1][3]["ItemChance"] = 10
	tEightFronts_UseItem[1][3]["Table"] = tEightFronts_UseItem[4]
	tEightFronts_UseItem[1][3]["Num"] = 4
	-- 通用法系
	tEightFronts_UseItem[1][4] ={}
	tEightFronts_UseItem[1][4]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[1][4]["ItemChance"] = 10
	tEightFronts_UseItem[1][4]["Table"] = tEightFronts_UseItem[5]
	tEightFronts_UseItem[1][4]["Num"] = 5
	
	-- 武器
	tEightFronts_UseItem[1][5] ={}
	tEightFronts_UseItem[1][5]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[1][5]["ItemChance"] = 70
	tEightFronts_UseItem[1][5]["Table"] = tEightFronts_UseItem[6]
	tEightFronts_UseItem[1][5]["Num"] = 6
	
	-- 直接给物品
	tEightFronts_UseItem[2] = {}
	tEightFronts_UseItem[2]["ItemChanceSum"] = 9900
	-- 微光星陨石
	tEightFronts_UseItem[2][1] ={}
	tEightFronts_UseItem[2][1]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][1]["ItemChance"] = 1800
	tEightFronts_UseItem[2][1]["DeleteItem"] = {}
	tEightFronts_UseItem[2][1]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][1]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][1]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][1]["RewardItem"] = {}
	tEightFronts_UseItem[2][1]["RewardItem"][1] = {}
	tEightFronts_UseItem[2][1]["RewardItem"][1]["Id"] = 3009000
	tEightFronts_UseItem[2][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tEightFronts_UseItem[2][1]["Log"] = "0,0,3310883,1,12000909,2,3009000,1"

	-- 明亮星陨石
	tEightFronts_UseItem[2][2] ={}
	tEightFronts_UseItem[2][2]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][2]["ItemChance"] = 800
	tEightFronts_UseItem[2][2]["DeleteItem"] = {}
	tEightFronts_UseItem[2][2]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][2]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][2]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][2]["RewardItem"] = {}
	tEightFronts_UseItem[2][2]["RewardItem"][1] = {}
	tEightFronts_UseItem[2][2]["RewardItem"][1]["Id"] = 3009001
	tEightFronts_UseItem[2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tEightFronts_UseItem[2][2]["Log"] = "0,0,3310883,1,12000909,2,3009001,1"

	-- 50气力值
	tEightFronts_UseItem[2][3] ={}
	tEightFronts_UseItem[2][3]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][3]["ItemChance"] = 1530
	tEightFronts_UseItem[2][3]["DeleteItem"] = {}
	tEightFronts_UseItem[2][3]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][3]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][3]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][3]["RewardStrengthValue"] = {}
	tEightFronts_UseItem[2][3]["RewardStrengthValue"]["Value"] = 50
	tEightFronts_UseItem[2][3]["Log"] = "0,0,3310883,1,12000909,2,12,50"

	-- 150气力值
	tEightFronts_UseItem[2][4] ={}
	tEightFronts_UseItem[2][4]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][4]["ItemChance"] = 500
	tEightFronts_UseItem[2][4]["DeleteItem"] = {}
	tEightFronts_UseItem[2][4]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][4]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][4]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][4]["RewardStrengthValue"] = {}
	tEightFronts_UseItem[2][4]["RewardStrengthValue"]["Value"] = 150
	tEightFronts_UseItem[2][4]["Log"] = "0,0,3310883,1,12000909,2,12,150"

	-- 300气力值
	tEightFronts_UseItem[2][5] ={}
	tEightFronts_UseItem[2][5]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][5]["ItemChance"] = 300
	tEightFronts_UseItem[2][5]["DeleteItem"] = {}
	tEightFronts_UseItem[2][5]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][5]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][5]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][5]["RewardStrengthValue"] = {}
	tEightFronts_UseItem[2][5]["RewardStrengthValue"]["Value"] = 300
	tEightFronts_UseItem[2][5]["Log"] = "0,0,3310883,1,12000909,2,12,300"

	-- 免费强练丹
	tEightFronts_UseItem[2][6] ={}
	tEightFronts_UseItem[2][6]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][6]["ItemChance"] = 500
	tEightFronts_UseItem[2][6]["DeleteItem"] = {}
	tEightFronts_UseItem[2][6]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][6]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][6]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][6]["RewardItem"] = {}
	tEightFronts_UseItem[2][6]["RewardItem"][1] = {}
	tEightFronts_UseItem[2][6]["RewardItem"][1]["Id"] = 3003124
	tEightFronts_UseItem[2][6]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_UseItem[2][6]["Log"] = "0,0,3310883,1,12000909,2,3003124,1"
	
	-- 魔武通玄丹
	tEightFronts_UseItem[2][7] ={}
	tEightFronts_UseItem[2][7]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][7]["ItemChance"] = 100
	tEightFronts_UseItem[2][7]["DeleteItem"] = {}
	tEightFronts_UseItem[2][7]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][7]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][7]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][7]["RewardItem"] = {}
	tEightFronts_UseItem[2][7]["RewardItem"][1] = {}
	tEightFronts_UseItem[2][7]["RewardItem"][1]["Id"] = 3303373
	tEightFronts_UseItem[2][7]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_UseItem[2][7]["Log"] = "0,0,3310883,1,12000909,2,3303373,1"
	
	-- 1小时3倍经验
	tEightFronts_UseItem[2][8] ={}
	tEightFronts_UseItem[2][8]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][8]["ItemChance"] = 1000
	tEightFronts_UseItem[2][8]["DeleteItem"] = {}
	tEightFronts_UseItem[2][8]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][8]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][8]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][8]["RewardExpTime"] = {}
	tEightFronts_UseItem[2][8]["RewardExpTime"]["Value"] = 300
	tEightFronts_UseItem[2][8]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tEightFronts_UseItem[2][8]["RewardExpTime"]["FullValue"] = 50
	tEightFronts_UseItem[2][8]["Log"] = "0,0,3310883,1,12000909,2,4,300"

	--6小时祝福时间
	tEightFronts_UseItem[2][9] ={}
	tEightFronts_UseItem[2][9]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][9]["ItemChance"] = 1000
	tEightFronts_UseItem[2][9]["DeleteItem"] = {}
	tEightFronts_UseItem[2][9]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][9]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][9]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][9]["RewardBless"] = {}
	tEightFronts_UseItem[2][9]["RewardBless"]["Value"] = 6
	tEightFronts_UseItem[2][9]["Log"] = "0,0,3310883,1,12000909,2,5,6"

	-- 流星
	tEightFronts_UseItem[2][10] ={}
	tEightFronts_UseItem[2][10]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][10]["ItemChance"] = 500
	tEightFronts_UseItem[2][10]["DeleteItem"] = {}
	tEightFronts_UseItem[2][10]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][10]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][10]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][10]["RewardItem"] = {}
	tEightFronts_UseItem[2][10]["RewardItem"][1] = {}
	tEightFronts_UseItem[2][10]["RewardItem"][1]["Id"] = 1088001
	tEightFronts_UseItem[2][10]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_UseItem[2][10]["Log"] = "0,0,3310883,1,12000909,2,1088001,1"
-- 强效护心丹
	tEightFronts_UseItem[2][11] ={}
	tEightFronts_UseItem[2][11]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][11]["ItemChance"] = 500
	tEightFronts_UseItem[2][11]["DeleteItem"] = {}
	tEightFronts_UseItem[2][11]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][11]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][11]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][11]["RewardItem"] = {}
	tEightFronts_UseItem[2][11]["RewardItem"][1] = {}
	tEightFronts_UseItem[2][11]["RewardItem"][1]["Id"] = 3002030
	tEightFronts_UseItem[2][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tEightFronts_UseItem[2][11]["Log"] = "0,0,3310883,1,12000909,2,3002030,1"
-- 赤炼石+1
	tEightFronts_UseItem[2][12] ={}
	tEightFronts_UseItem[2][12]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][12]["ItemChance"] = 370
	tEightFronts_UseItem[2][12]["DeleteItem"] = {}
	tEightFronts_UseItem[2][12]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][12]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][12]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][12]["RewardItem"] = {}
	tEightFronts_UseItem[2][12]["RewardItem"][1] = {}
	tEightFronts_UseItem[2][12]["RewardItem"][1]["Id"] = 730001
	tEightFronts_UseItem[2][12]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_UseItem[2][12]["Log"] = "0,0,3310883,1,12000909,2,730001,1"
-- 赤炼石+2
	tEightFronts_UseItem[2][13] ={}
	tEightFronts_UseItem[2][13]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][13]["ItemChance"] = 0
	tEightFronts_UseItem[2][13]["DeleteItem"] = {}
	tEightFronts_UseItem[2][13]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][13]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][13]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][13]["RewardItem"] = {}
	tEightFronts_UseItem[2][13]["RewardItem"][1] = {}
	tEightFronts_UseItem[2][13]["RewardItem"][1]["Id"] = 730002
	tEightFronts_UseItem[2][13]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_UseItem[2][13]["Log"] = "0,0,3310883,1,12000909,2,730002,1"
-- 赤炼石+3
	tEightFronts_UseItem[2][14] ={}
	tEightFronts_UseItem[2][14]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][14]["ItemChance"] = 0
	tEightFronts_UseItem[2][14]["GlobalId"] = tEightFronts_Data["ItemGlobal"]
	tEightFronts_UseItem[2][14]["MaxData"] = 1
	tEightFronts_UseItem[2][14]["Pos"] = 1
	tEightFronts_UseItem[2][14]["FullIndex"] = 9
	tEightFronts_UseItem[2][14]["DeleteItem"] = {}
	tEightFronts_UseItem[2][14]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][14]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][14]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][14]["RewardItem"] = {}
	tEightFronts_UseItem[2][14]["RewardItem"][1] = {}
	tEightFronts_UseItem[2][14]["RewardItem"][1]["Id"] = 730003
	tEightFronts_UseItem[2][14]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_UseItem[2][14]["Log"] = "0,0,3310883,1,12000909,2,730003,1"
-- 究极通神丹
	tEightFronts_UseItem[2][15] ={}
	tEightFronts_UseItem[2][15]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][15]["ItemChance"] = 200
	tEightFronts_UseItem[2][15]["GlobalId"] = tEightFronts_Data["ItemGlobal"]
	tEightFronts_UseItem[2][15]["MaxData"] = 1
	tEightFronts_UseItem[2][15]["Pos"] = 2
	tEightFronts_UseItem[2][15]["FullIndex"] = 9
	tEightFronts_UseItem[2][15]["DeleteItem"] = {}
	tEightFronts_UseItem[2][15]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][15]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][15]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][15]["RewardItem"] = {}
	tEightFronts_UseItem[2][15]["RewardItem"][1] = {}
	tEightFronts_UseItem[2][15]["RewardItem"][1]["Id"] = 3003126
	tEightFronts_UseItem[2][15]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_UseItem[2][15]["Log"] = "0,0,3310883,1,12000909,2,3003126,1"
-- 通神丹
	tEightFronts_UseItem[2][16] ={}
	tEightFronts_UseItem[2][16]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[2][16]["ItemChance"] = 800
	tEightFronts_UseItem[2][16]["DeleteItem"] = {}
	tEightFronts_UseItem[2][16]["DeleteItem"][1] = {}
	tEightFronts_UseItem[2][16]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[2][16]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[2][16]["RewardItem"] = {}
	tEightFronts_UseItem[2][16]["RewardItem"][1] = {}
	tEightFronts_UseItem[2][16]["RewardItem"][1]["Id"] = 3003125
	tEightFronts_UseItem[2][16]["RewardItem"][1]["Attr"] = "0 1"
	tEightFronts_UseItem[2][16]["Log"] = "0,0,3310883,1,12000909,2,3003125,1"





	-- 头部（洞装）
	tEightFronts_UseItem[3] = {}
	tEightFronts_UseItem[3][1] = {}
	tEightFronts_UseItem[3][1]["Random"] = 200
	tEightFronts_UseItem[3][1]["ItemChanceSum"] = 2800
	-- 浑铁盔
	tEightFronts_UseItem[3][1][1] ={}
	tEightFronts_UseItem[3][1][1]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][1]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][1]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][1]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][1]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][1]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][1]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][1]["RewardItem"][1]["Id"] = 111008
	tEightFronts_UseItem[3][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][1]["Log"] = "0,0,3310883,1,12000909,2,111008,1"
-- 百忍之护
	tEightFronts_UseItem[3][1][2] ={}
	tEightFronts_UseItem[3][1][2]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][2]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][1]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][1]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][1]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][2]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][2]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][2]["RewardItem"][1]["Id"] = 112008
	tEightFronts_UseItem[3][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][2]["Log"] = "0,0,3310883,1,12000909,2,112008,1"
-- 獾皮帽
	tEightFronts_UseItem[3][1][3] ={}
	tEightFronts_UseItem[3][1][3]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][3]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][3]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][3]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][3]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][3]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][3]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][3]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][3]["RewardItem"][1]["Id"] = 113008
	tEightFronts_UseItem[3][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][3]["Log"] = "0,0,3310883,1,12000909,2,113008,1"
-- 阴阳冠
	tEightFronts_UseItem[3][1][4] ={}
	tEightFronts_UseItem[3][1][4]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][4]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][4]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][4]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][4]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][4]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][4]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][4]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][4]["RewardItem"][1]["Id"] = 114008
	tEightFronts_UseItem[3][1][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][4]["Log"] = "0,0,3310883,1,12000909,2,114008,1"
-- 坠青耳环
	tEightFronts_UseItem[3][1][5] ={}
	tEightFronts_UseItem[3][1][5]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][5]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][5]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][5]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][5]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][5]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][5]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][5]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][5]["RewardItem"][1]["Id"] = 117008
	tEightFronts_UseItem[3][1][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][5]["Log"] = "0,0,3310883,1,12000909,2,117008,1"

-- 蓝布护额
	tEightFronts_UseItem[3][1][6] ={}
	tEightFronts_UseItem[3][1][6]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][6]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][6]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][6]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][6]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][6]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][6]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][6]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][6]["RewardItem"][1]["Id"] = 123008
	tEightFronts_UseItem[3][1][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][6]["Log"] = "0,0,3310883,1,12000909,2,123008,1"
-- 粗布头带
	tEightFronts_UseItem[3][1][7] ={}
	tEightFronts_UseItem[3][1][7]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][7]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][7]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][7]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][7]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][7]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][7]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][7]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][7]["RewardItem"][1]["Id"] = 141008
	tEightFronts_UseItem[3][1][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][7]["Log"] = "0,0,3310883,1,12000909,2,141008,1"

-- 夷情之羽
	tEightFronts_UseItem[3][1][8] ={}
	tEightFronts_UseItem[3][1][8]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][8]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][8]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][8]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][8]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][8]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][8]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][8]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][8]["RewardItem"][1]["Id"] = 142008
	tEightFronts_UseItem[3][1][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][8]["Log"] = "0,0,3310883,1,12000909,2,142008,1"
-- 巡海者头饰
	tEightFronts_UseItem[3][1][9] ={}
	tEightFronts_UseItem[3][1][9]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][9]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][9]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][9]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][9]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][9]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][9]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][9]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][9]["RewardItem"][1]["Id"] = 144008
	tEightFronts_UseItem[3][1][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][9]["Log"] = "0,0,3310883,1,12000909,2,144008,1"

-- 海潮头巾
	tEightFronts_UseItem[3][1][10] ={}
	tEightFronts_UseItem[3][1][10]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][10]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][10]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][10]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][10]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][10]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][10]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][10]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][10]["RewardItem"][1]["Id"] = 143008
	tEightFronts_UseItem[3][1][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][10]["Log"] = "0,0,3310883,1,12000909,2,143008,1"
-- 护首铁
	tEightFronts_UseItem[3][1][11] ={}
	tEightFronts_UseItem[3][1][11]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][11]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][11]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][11]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][11]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][11]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][11]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][11]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][11]["RewardItem"][1]["Id"] = 118008
	tEightFronts_UseItem[3][1][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][11]["Log"] = "0,0,3310883,1,12000909,2,118008,1"
-- 黄铜法箍
	tEightFronts_UseItem[3][1][12] ={}
	tEightFronts_UseItem[3][1][12]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][12]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][12]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][12]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][12]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][12]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][12]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][12]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][12]["RewardItem"][1]["Id"] = 143008
	tEightFronts_UseItem[3][1][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][12]["Log"] = "0,0,3310883,1,12000909,2,143008,1"
-- 棉麻头巾
	tEightFronts_UseItem[3][1][13] ={}
	tEightFronts_UseItem[3][1][13]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][13]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][13]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][13]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][13]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][13]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][13]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][13]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][13]["RewardItem"][1]["Id"] = 148008
	tEightFronts_UseItem[3][1][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][13]["Log"] = "0,0,3310883,1,12000909,2,148008,1"

-- 墨云冠
	tEightFronts_UseItem[3][1][14] ={}
	tEightFronts_UseItem[3][1][14]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[3][1][14]["ItemChance"] = 200
	tEightFronts_UseItem[3][1][14]["DeleteItem"] = {}
	tEightFronts_UseItem[3][1][14]["DeleteItem"][1] = {}
	tEightFronts_UseItem[3][1][14]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[3][1][14]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[3][1][14]["RewardItem"] = {}
	tEightFronts_UseItem[3][1][14]["RewardItem"][1] = {}
	tEightFronts_UseItem[3][1][14]["RewardItem"][1]["Id"] = 170008
	tEightFronts_UseItem[3][1][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[3][1][14]["Log"] = "0,0,3310883,1,12000909,2,170008,1"


	-- 衣服（洞装）
	tEightFronts_UseItem[4] = {}
	tEightFronts_UseItem[4][1] = {}
	tEightFronts_UseItem[4][1]["Random"] = 200
	tEightFronts_UseItem[4][1]["ItemChanceSum"] = 1900
	-- 玄素袍
	tEightFronts_UseItem[4][1][1] ={}
	tEightFronts_UseItem[4][1][1]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[4][1][1]["ItemChance"] = 200
	tEightFronts_UseItem[4][1][1]["DeleteItem"] = {}
	tEightFronts_UseItem[4][1][1]["DeleteItem"][1] = {}
	tEightFronts_UseItem[4][1][1]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[4][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[4][1][1]["RewardItem"] = {}
	tEightFronts_UseItem[4][1][1]["RewardItem"][1] = {}
	tEightFronts_UseItem[4][1][1]["RewardItem"][1]["Id"] = 101008
	tEightFronts_UseItem[4][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[4][1][1]["Log"] = "0,0,3310883,1,12000909,2,101008,1"
-- 皮护甲
	tEightFronts_UseItem[4][1][2] ={}
	tEightFronts_UseItem[4][1][2]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[4][1][2]["ItemChance"] = 200
	tEightFronts_UseItem[4][1][2]["DeleteItem"] = {}
	tEightFronts_UseItem[4][1][2]["DeleteItem"][1] = {}
	tEightFronts_UseItem[4][1][2]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[4][1][2]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[4][1][2]["RewardItem"] = {}
	tEightFronts_UseItem[4][1][2]["RewardItem"][1] = {}
	tEightFronts_UseItem[4][1][2]["RewardItem"][1]["Id"] = 130008
	tEightFronts_UseItem[4][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[4][1][2]["Log"] = "0,0,3310883,1,12000909,2,130008,1"
-- 牛皮铠
	tEightFronts_UseItem[4][1][3] ={}
	tEightFronts_UseItem[4][1][3]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[4][1][3]["ItemChance"] = 200
	tEightFronts_UseItem[4][1][3]["DeleteItem"] = {}
	tEightFronts_UseItem[4][1][3]["DeleteItem"][1] = {}
	tEightFronts_UseItem[4][1][3]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[4][1][3]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[4][1][3]["RewardItem"] = {}
	tEightFronts_UseItem[4][1][3]["RewardItem"][1] = {}
	tEightFronts_UseItem[4][1][3]["RewardItem"][1]["Id"] = 131008
	tEightFronts_UseItem[4][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[4][1][3]["Log"] = "0,0,3310883,1,12000909,2,131008,1"
-- 鹿皮猎褂
	tEightFronts_UseItem[4][1][4] ={}
	tEightFronts_UseItem[4][1][4]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[4][1][4]["ItemChance"] = 200
	tEightFronts_UseItem[4][1][4]["DeleteItem"] = {}
	tEightFronts_UseItem[4][1][4]["DeleteItem"][1] = {}
	tEightFronts_UseItem[4][1][4]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[4][1][4]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[4][1][4]["RewardItem"] = {}
	tEightFronts_UseItem[4][1][4]["RewardItem"][1] = {}
	tEightFronts_UseItem[4][1][4]["RewardItem"][1]["Id"] = 133008
	tEightFronts_UseItem[4][1][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[4][1][4]["Log"] = "0,0,3310883,1,12000909,2,133008,1"
-- 混元道袍
	tEightFronts_UseItem[4][1][5] ={}
	tEightFronts_UseItem[4][1][5]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[4][1][5]["ItemChance"] = 200
	tEightFronts_UseItem[4][1][5]["DeleteItem"] = {}
	tEightFronts_UseItem[4][1][5]["DeleteItem"][1] = {}
	tEightFronts_UseItem[4][1][5]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[4][1][5]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[4][1][5]["RewardItem"] = {}
	tEightFronts_UseItem[4][1][5]["RewardItem"][1] = {}
	tEightFronts_UseItem[4][1][5]["RewardItem"][1]["Id"] = 134008
	tEightFronts_UseItem[4][1][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[4][1][5]["Log"] = "0,0,3310883,1,12000909,2,134008,1"
-- 下忍服
	tEightFronts_UseItem[4][1][6] ={}
	tEightFronts_UseItem[4][1][6]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[4][1][6]["ItemChance"] = 200
	tEightFronts_UseItem[4][1][6]["DeleteItem"] = {}
	tEightFronts_UseItem[4][1][6]["DeleteItem"][1] = {}
	tEightFronts_UseItem[4][1][6]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[4][1][6]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[4][1][6]["RewardItem"] = {}
	tEightFronts_UseItem[4][1][6]["RewardItem"][1] = {}
	tEightFronts_UseItem[4][1][6]["RewardItem"][1]["Id"] = 135008
	tEightFronts_UseItem[4][1][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[4][1][6]["Log"] = "0,0,3310883,1,12000909,2,135008,1"
-- 粗葛布袍
	tEightFronts_UseItem[4][1][7] ={}
	tEightFronts_UseItem[4][1][7]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[4][1][7]["ItemChance"] = 200
	tEightFronts_UseItem[4][1][7]["DeleteItem"] = {}
	tEightFronts_UseItem[4][1][7]["DeleteItem"][1] = {}
	tEightFronts_UseItem[4][1][7]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[4][1][7]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[4][1][7]["RewardItem"] = {}
	tEightFronts_UseItem[4][1][7]["RewardItem"][1] = {}
	tEightFronts_UseItem[4][1][7]["RewardItem"][1]["Id"] = 136008
	tEightFronts_UseItem[4][1][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[4][1][7]["Log"] = "0,0,3310883,1,12000909,2,136008,1"
-- 连身战衣【15级】
	tEightFronts_UseItem[4][1][8] ={}
	tEightFronts_UseItem[4][1][8]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[4][1][8]["ItemChance"] = 200
	tEightFronts_UseItem[4][1][8]["DeleteItem"] = {}
	tEightFronts_UseItem[4][1][8]["DeleteItem"][1] = {}
	tEightFronts_UseItem[4][1][8]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[4][1][8]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[4][1][8]["RewardItem"] = {}
	tEightFronts_UseItem[4][1][8]["RewardItem"][1] = {}
	tEightFronts_UseItem[4][1][8]["RewardItem"][1]["Id"] = 138008
	tEightFronts_UseItem[4][1][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[4][1][8]["Log"] = "0,0,3310883,1,12000909,2,138008,1"
-- 淘浪裳
	tEightFronts_UseItem[4][1][9] ={}
	tEightFronts_UseItem[4][1][9]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[4][1][9]["ItemChance"] = 300
	tEightFronts_UseItem[4][1][9]["DeleteItem"] = {}
	tEightFronts_UseItem[4][1][9]["DeleteItem"][1] = {}
	tEightFronts_UseItem[4][1][9]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[4][1][9]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[4][1][9]["RewardItem"] = {}
	tEightFronts_UseItem[4][1][9]["RewardItem"][1] = {}
	tEightFronts_UseItem[4][1][9]["RewardItem"][1]["Id"] = 139008 
	tEightFronts_UseItem[4][1][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[4][1][9]["Log"] = "0,0,3310883,1,12000909,2,139008,1"


	-- 通用 法系（洞装）
	tEightFronts_UseItem[5] = {}
	tEightFronts_UseItem[5][1] = {}
	tEightFronts_UseItem[5][1]["Random"] = 100
	tEightFronts_UseItem[5][1]["ItemChanceSum"] = 500
	-- 鸡心项链
	tEightFronts_UseItem[5][1][1] ={}
	tEightFronts_UseItem[5][1][1]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[5][1][1]["ItemChance"] = 100
	tEightFronts_UseItem[5][1][1]["DeleteItem"] = {}
	tEightFronts_UseItem[5][1][1]["DeleteItem"][1] = {}
	tEightFronts_UseItem[5][1][1]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[5][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[5][1][1]["RewardItem"] = {}
	tEightFronts_UseItem[5][1][1]["RewardItem"][1] = {}
	tEightFronts_UseItem[5][1][1]["RewardItem"][1]["Id"] = 120028
	tEightFronts_UseItem[5][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[5][1][1]["Log"] = "0,0,3310883,1,12000909,2,120028,1"
-- 百花囊
	tEightFronts_UseItem[5][1][2] ={}
	tEightFronts_UseItem[5][1][2]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[5][1][2]["ItemChance"] = 100
	tEightFronts_UseItem[5][1][2]["DeleteItem"] = {}
	tEightFronts_UseItem[5][1][2]["DeleteItem"][1] = {}
	tEightFronts_UseItem[5][1][2]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[5][1][2]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[5][1][2]["RewardItem"] = {}
	tEightFronts_UseItem[5][1][2]["RewardItem"][1] = {}
	tEightFronts_UseItem[5][1][2]["RewardItem"][1]["Id"] = 121028
	tEightFronts_UseItem[5][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[5][1][2]["Log"] = "0,0,3310883,1,12000909,2,121028,1"
-- 银戒
	tEightFronts_UseItem[5][1][3] ={}
	tEightFronts_UseItem[5][1][3]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[5][1][3]["ItemChance"] = 100
	tEightFronts_UseItem[5][1][3]["DeleteItem"] = {}
	tEightFronts_UseItem[5][1][3]["DeleteItem"][1] = {}
	tEightFronts_UseItem[5][1][3]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[5][1][3]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[5][1][3]["RewardItem"] = {}
	tEightFronts_UseItem[5][1][3]["RewardItem"][1] = {}
	tEightFronts_UseItem[5][1][3]["RewardItem"][1]["Id"] = 150038
	tEightFronts_UseItem[5][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[5][1][3]["Log"] = "0,0,3310883,1,12000909,2,150038,1"
-- 桃木镯
	tEightFronts_UseItem[5][1][4] ={}
	tEightFronts_UseItem[5][1][4]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[5][1][4]["ItemChance"] = 100
	tEightFronts_UseItem[5][1][4]["DeleteItem"] = {}
	tEightFronts_UseItem[5][1][4]["DeleteItem"][1] = {}
	tEightFronts_UseItem[5][1][4]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[5][1][4]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[5][1][4]["RewardItem"] = {}
	tEightFronts_UseItem[5][1][4]["RewardItem"][1] = {}
	tEightFronts_UseItem[5][1][4]["RewardItem"][1]["Id"] = 152018
	tEightFronts_UseItem[5][1][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[5][1][4]["Log"] = "0,0,3310883,1,12000909,2,152018,1"
-- 鹿皮靴
	tEightFronts_UseItem[5][1][5] ={}
	tEightFronts_UseItem[5][1][5]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[5][1][5]["ItemChance"] = 100
	tEightFronts_UseItem[5][1][5]["DeleteItem"] = {}
	tEightFronts_UseItem[5][1][5]["DeleteItem"][1] = {}
	tEightFronts_UseItem[5][1][5]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[5][1][5]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[5][1][5]["RewardItem"] = {}
	tEightFronts_UseItem[5][1][5]["RewardItem"][1] = {}
	tEightFronts_UseItem[5][1][5]["RewardItem"][1]["Id"] = 160038
	tEightFronts_UseItem[5][1][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[5][1][5]["Log"] = "0,0,3310883,1,12000909,2,160038,1"


-- 武器（洞装）
	tEightFronts_UseItem[6] = {}
	tEightFronts_UseItem[6][1] = {}
	tEightFronts_UseItem[6][1]["Random"] = 2000
	tEightFronts_UseItem[6][1]["ItemChanceSum"] = 4800
	-- 修罗刀
	tEightFronts_UseItem[6][1][1] ={}
	tEightFronts_UseItem[6][1][1]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][1]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][1]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][1]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][1]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][1]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][1]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][1]["RewardItem"][1]["Id"] = 410028
	tEightFronts_UseItem[6][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][1]["Log"] = "0,0,3310883,1,12000909,2,410028,1"
-- 青冥剑
	tEightFronts_UseItem[6][1][2] ={}
	tEightFronts_UseItem[6][1][2]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][2]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][2]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][2]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][2]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][2]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][2]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][2]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][2]["RewardItem"][1]["Id"] = 420028
	tEightFronts_UseItem[6][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][2]["Log"] = "0,0,3310883,1,12000909,2,420028,1"
-- 驱邪剑
	tEightFronts_UseItem[6][1][3] ={}
	tEightFronts_UseItem[6][1][3]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][3]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][3]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][3]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][3]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][3]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][3]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][3]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][3]["RewardItem"][1]["Id"] = 421028
	tEightFronts_UseItem[6][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][3]["Log"] = "0,0,3310883,1,12000909,2,421028,1"
-- 短木棒
	tEightFronts_UseItem[6][1][4] ={}
	tEightFronts_UseItem[6][1][4]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][4]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][4]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][4]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][4]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][4]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][4]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][4]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][4]["RewardItem"][1]["Id"] = 480028
	tEightFronts_UseItem[6][1][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][4]["Log"] = "0,0,3310883,1,12000909,2,480028,1"
-- 猎弓
	tEightFronts_UseItem[6][1][5] ={}
	tEightFronts_UseItem[6][1][5]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][5]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][5]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][5]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][5]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][5]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][5]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][5]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][5]["RewardItem"][1]["Id"] = 500018
	tEightFronts_UseItem[6][1][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][5]["Log"] = "0,0,3310883,1,12000909,2,500018,1"
-- 武藏钩镰
	tEightFronts_UseItem[6][1][6] ={}
	tEightFronts_UseItem[6][1][6]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][6]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][6]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][6]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][6]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][6]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][6]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][6]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][6]["RewardItem"][1]["Id"] = 511028
	tEightFronts_UseItem[6][1][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][6]["Log"] = "0,0,3310883,1,12000909,2,511028,1"
-- 朱缨枪
	tEightFronts_UseItem[6][1][7] ={}
	tEightFronts_UseItem[6][1][7]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][7]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][7]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][7]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][7]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][7]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][7]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][7]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][7]["RewardItem"][1]["Id"] = 530028
	tEightFronts_UseItem[6][1][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][7]["Log"] = "0,0,3310883,1,12000909,2,530028,1"
-- 蜡木棍
	tEightFronts_UseItem[6][1][8] ={}
	tEightFronts_UseItem[6][1][8]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][8]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][8]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][8]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][8]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][8]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][8]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][8]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][8]["RewardItem"][1]["Id"] = 561028
	tEightFronts_UseItem[6][1][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][8]["Log"] = "0,0,3310883,1,12000909,2,561028,1"

-- 精钢切
	tEightFronts_UseItem[6][1][9] ={}
	tEightFronts_UseItem[6][1][9]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][9]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][9]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][9]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][9]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][9]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][9]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][9]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][9]["RewardItem"][1]["Id"] = 601028
	tEightFronts_UseItem[6][1][9]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][9]["Log"] = "0,0,3310883,1,12000909,2,601028,1"
-- 金蝉念珠
	tEightFronts_UseItem[6][1][10] ={}
	tEightFronts_UseItem[6][1][10]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][10]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][10]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][10]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][10]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][10]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][10]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][10]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][10]["RewardItem"][1]["Id"] = 610028
	tEightFronts_UseItem[6][1][10]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][10]["Log"] = "0,0,3310883,1,12000909,2,610028,1"
-- 勇者佩剑
	tEightFronts_UseItem[6][1][11] ={}
	tEightFronts_UseItem[6][1][11]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][11]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][11]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][11]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][11]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][11]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][11]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][11]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][11]["RewardItem"][1]["Id"] = 611028
	tEightFronts_UseItem[6][1][11]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][11]["Log"] = "0,0,3310883,1,12000909,2,611028,1"
-- 中级火枪
	tEightFronts_UseItem[6][1][12] ={}
	tEightFronts_UseItem[6][1][12]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][12]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][12]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][12]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][12]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][12]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][12]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][12]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][12]["RewardItem"][1]["Id"] = 612028
	tEightFronts_UseItem[6][1][12]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][12]["Log"] = "0,0,3310883,1,12000909,2,612028,1"
-- 狼牙飞刀
	tEightFronts_UseItem[6][1][13] ={}
	tEightFronts_UseItem[6][1][13]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][13]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][13]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][13]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][13]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][13]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][13]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][13]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][13]["RewardItem"][1]["Id"] = 613018
	tEightFronts_UseItem[6][1][13]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][13]["Log"] = "0,0,3310883,1,12000909,2,613018,1"
-- 枣木双截棍
	tEightFronts_UseItem[6][1][14] ={}
	tEightFronts_UseItem[6][1][14]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][14]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][14]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][14]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][14]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][14]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][14]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][14]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][14]["RewardItem"][1]["Id"] = 617028
	tEightFronts_UseItem[6][1][14]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][14]["Log"] = "0,0,3310883,1,12000909,2,617028,1"

-- 苍之怒焰
	tEightFronts_UseItem[6][1][15] ={}
	tEightFronts_UseItem[6][1][15]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][15]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][15]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][15]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][15]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][15]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][15]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][15]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][15]["RewardItem"][1]["Id"] = 624028
	tEightFronts_UseItem[6][1][15]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][15]["Log"] = "0,0,3310883,1,12000909,2,624028,1"
-- 傲雪凌霜扇
	tEightFronts_UseItem[6][1][16] ={}
	tEightFronts_UseItem[6][1][16]["RandomItemChanceType"] = 2
	tEightFronts_UseItem[6][1][16]["ItemChance"] = 300
	tEightFronts_UseItem[6][1][16]["DeleteItem"] = {}
	tEightFronts_UseItem[6][1][16]["DeleteItem"][1] = {}
	tEightFronts_UseItem[6][1][16]["DeleteItem"][1]["Id"] = 3310883
	tEightFronts_UseItem[6][1][16]["DeleteItem"][1]["ItemNum"] = 1
	tEightFronts_UseItem[6][1][16]["RewardItem"] = {}
	tEightFronts_UseItem[6][1][16]["RewardItem"][1] = {}
	tEightFronts_UseItem[6][1][16]["RewardItem"][1]["Id"] = 626028
	tEightFronts_UseItem[6][1][16]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255"
	tEightFronts_UseItem[6][1][16]["Log"] = "0,0,3310883,1,12000909,2,626028,1"

----------------------------------逻辑部分---------------------------------------------
-----璇玑
function EightFronts_Goto(nNpcId,nTUserId)
	local nUserId = nTUserId or Get_UserId()
	local nMapId = tEightFronts_Pos[nNpcId]["MapId"]
	local nPosX = tEightFronts_Pos[nNpcId]["PosX"]
	local nPosY = tEightFronts_Pos[nNpcId]["PosY"]
	local nUserMapId = Get_UserMapId(nUserId)
	for i,j in pairs(tEightFronts_Data["Jianyu"]) do
		if j == nUserMapId then
			return
		end
	end

	User_UserRandBoundTrans(nMapId,nPosX,nPosY,3,3,1,nUserId)
	
end
---任务阶段掩码操作
function EightFronts_TaskStc(nNum,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nEvent = tEightFronts_Stc[4]["EventType"]
	local nType = tEightFronts_Stc[4]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",nNum,nNowUserId)  then
		return
	end
	Task_SetStatistic(nEvent,nType,nNum,1,nNowUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
end

----随机进入7个门
function EightFronts_GotoDoor(nNpcId)

	local nUserId = Get_UserId()
	--检测是否在监狱
	local nUserMapId = Get_UserMapId(nUserId)
	for i,j in pairs(tEightFronts_Data["Jianyu"]) do
		if j == nUserMapId then
			return
		end
	end
	local nTaskEvent = tEightFronts_Stc[4]["EventType"]
	local nTaskType = tEightFronts_Stc[4]["DataType"]
	if Task_ChkStcValue(nTaskEvent,nTaskType,">=",2,nUserId)   then
		if Task_StcInterval(nTaskEvent,nTaskType,1,4)  then
			Task_SetStatistic(nTaskEvent,nTaskType,0,1,nUserId)
			Task_SetStcTimestamp(nTaskEvent,nTaskType,0,nUserId)
		else
			return
		end
	end
	local tTab = CommonFunc_Copy(tEightFronts_Goto)
	local nItemNum = EightFronts_ChkToken()

	--玩家身上令牌＜4个时，进入死门的概率为0%
	if nItemNum < 4 then
		tTab[2]["ItemChanceSum"] = tTab[2]["ItemChanceSum"] - tEightFronts_Goto[2][2]["ItemChance"]
		tTab[2][2]["ItemChance"] = 0
	end
	-- 玩家身上有4个令牌时，进入死门概率为20%
	if nItemNum == 4 or nItemNum == 5 then
		tTab[2][1]["ItemChance"] = 8000
		tTab[2][2]["ItemChance"] = 2000
	end
	-- 玩家身上有5个令牌时，进入死门的概率为20%
	-- if nItemNum == 5 then
		-- tTab[2][1]["ItemChance"] = 8000
		-- tTab[2][2]["ItemChance"] = 2000
	-- end
	if nItemNum == 6 then
		EightFronts_Goto(2)
		--完成任务打掩码
		EightFronts_TaskStc(1)
		User_TalkChannel2005(tEightFronts_Text[600003]["Msg"]["GotoLiving"],nUserId)
		return
	end
	local flat,tNum = Probabil_RandomAward(tTab,2)  
	local nNum = tNum[1]["tAward"][1]["Num"]
		
	--=1 表示生门
	if nNum == 1 then
		local tNewTab = EightFronts_ChkTokenSetTab()
		--6个令牌都有了 进入生门
		if tNewTab[1]["ItemChanceSum"] == 0 then
			EightFronts_Goto(2)
			--完成任务打掩码
			EightFronts_TaskStc(1)
			User_TalkChannel2005(tEightFronts_Text[600003]["Msg"]["GotoLiving"],nUserId)
			return
		end
		local flat,tNum = Probabil_RandomAward(tNewTab,1)  
		local nMapId = tNum[1]["tAward"][1]["MapId"]
		local nPosX = tNum[1]["tAward"][1]["PosX"]
		local nPosY = tNum[1]["tAward"][1]["PosY"]
		--杜门与景门  迷宫随机点
		local nEvent = tEightFronts_Stc[3]["EventType"]
		local nType = tEightFronts_Stc[3]["DataType"]
		local flat,tNum = Probabil_RandomAward(tEightFronts_GetRandomNum,1)  
		local nRandom = tNum[1]["tAward"][1]["Num"]
		local nNum_1,nNum_2 = EightFronts_GetStc()
		
		--杜门
		if nMapId == tEightFronts_Goto[1][3]["MapId"] then
			if nNum_2 <= 0 then
				local nAddNum = nRandom*10
				Task_AddStatistic(nEvent,nType,nAddNum,1,nUserId)
			end
		end
		if nMapId == tEightFronts_Goto[1][4]["MapId"] then
			if nNum_1 <= 0 then
				Task_AddStatistic(nEvent,nType,nRandom,1,nUserId)
			end
		end
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,3,3,1,nUserId)
		
		local sContent = tEightFronts_Text[600003]["Msg"][nMapId]
		User_TalkChannel2005(sContent,nUserId)
		if nMapId == tEightFronts_Goto[1][3]["MapId"] or nMapId == tEightFronts_Goto[1][4]["MapId"] then
			local nNpc = tEightFronts_Data["Npc"][nMapId]
			LinkNpcGossipFunc_New(nNpc,"1-1")
		end
		return
	end
	User_UserRandBoundTrans(tEightFronts_Pos[1]["MapId"],tEightFronts_Pos[1]["PosX"],tEightFronts_Pos[1]["PosY"],3,3,1,nUserId)
	User_TalkChannel2005(tEightFronts_Text[600003]["Msg"]["FailGoto"],nUserId)
end

----两个迷宫掩码值
function EightFronts_GetStc()
	--景门
	local nNum_1 = 0
	-- 杜门
	local nNum_2 = 0
	local nUserId = Get_UserId()
	local nEvent = tEightFronts_Stc[3]["EventType"]
	local nType = tEightFronts_Stc[3]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	nNum_1 = nData%10
	nNum_2 = math.floor(nData/10)
	return nNum_1,nNum_2
end
--检测玩家身上的令牌数
function EightFronts_ChkToken()
	--令牌数量
	local nNum = 0
	for a,b in pairs(tEightFronts_Data["ItemId"]) do
		if Item_ChkItem(b) then
			nNum = nNum + 1
		end
	end
	return nNum
end

--检测玩家身上的令牌重新排表
function EightFronts_ChkTokenSetTab()
	local tTab = CommonFunc_Copy(tEightFronts_Goto)
	for a,b in pairs(tEightFronts_Data["ItemId"]) do
		if Item_ChkItem(b) then
			tTab[1]["ItemChanceSum"] = tTab[1]["ItemChanceSum"] - tEightFronts_Goto[1][a]["ItemChance"]
			tTab[1][a]["ItemChance"] = 0
		end
	end
	return tTab
end

----开门与休门将士遗骸
-- 搜索有10%的概率发现破阵谜题，90%概率刷出怪物
-- 右键破阵谜题，弹出103对白，对白内容显示为简单的算术题，
-- 玩家输入正确答案即可获得破阵领取，答案出错则删除谜题道具
function EightFronts_NpcRemains(nMonsterId,nNpcId)
	---已获得通关谜题
	local nItemId = tEightFronts_Reward[nMonsterId]["RewardItem"][1]["Id"]
	if Item_ChkItem(nItemId) then
		Sys_MsgBox(tEightFronts_Text["Msg"][nMonsterId])
		return
	end
	local nSecs = tEightFronts_Data["Explore"]["Secs"]
	local sContent = tEightFronts_Text["Msg"]["Content"]
	local nActionId = tEightFronts_Data["Explore"]["ActionId"]
	local nPosX = tEightFronts_MonsterPos[nMonsterId][nNpcId]["PosX"]
	local nPosY = tEightFronts_MonsterPos[nMonsterId][nNpcId]["PosY"]
	-- 7格外不让点
	local nUserX = Get_UserPositionX()
	local nUserY = Get_UserPositionY()
	if not EightFronts_Distance(nUserX,nUserY,nPosX,nPosY,7) then
		Sys_MsgBox(tEightFronts_Text["Msg"]["Toolong"])
		return
	end
	
	User_SetExplore(nSecs,sContent,nActionId,"EightFronts_NpcRemainsGet</N>" .. nMonsterId .. "</N>" .. nNpcId)
end

function EightFronts_NpcRemainsGet(nMonsterId,nNpcId,nUserId)
	local nMap = tEightFronts_Data["MapId"]
	local nPosX = tEightFronts_MonsterPos[nMonsterId][nNpcId]["X"]
	local nPosY = tEightFronts_MonsterPos[nMonsterId][nNpcId]["Y"]
	--移出遗体  10分钟后移回来
	Npc_MoveNpcPos(nNpcId,nMap,nPosX,nPosY)

	--20%的概率发现破阵谜题
	if Sys_Random(tEightFronts_Data["Random"],10000) then
		--判断背包空间
		if not RewardTemplate_CheckSpace(tEightFronts_Reward[nMonsterId],nUserId) then
			return
		end
		--给谜题
		RewardTemplate_UseItemAndMsg(tEightFronts_Reward[nMonsterId],nUserId)
		Sys_MsgBox(tEightFronts_Text["Msg"]["Get"][nMonsterId],nil,nil,nUserId)
		--直接弹出物品使用界面
		local nItem = Get_ItemLastAdd(nUserId)
		local nAddItemId = tEightFronts_Reward[nMonsterId]["RewardItem"][1]["Id"]
		Item_Dialog(nItem,tEightFronts_Text["Msg"]["Dialog"],"EightFronts_OptenItem</N>" .. nAddItemId,"NULL",nUserId)
		return
	end
	-- 80%概率刷出怪物
	local flat,tNum = Probabil_RandomAward(tEightFronts_GetNum,1)  
	local nNum = tNum[1]["tAward"][1]["Num"]
	-- 刷怪
	if nNum == 1 then
		local nMapId = tEightFronts_MonsterPos[nMonsterId]["MapId"]
		local nGenId = tEightFronts_MonsterPos[nMonsterId]["GenId"]

		local nPosX = tEightFronts_MonsterPos[nMonsterId][nNpcId]["PosX"]
		local nPosY = tEightFronts_MonsterPos[nMonsterId][nNpcId]["PosY"]
		Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	end
	-- 眩晕
	if nNum == 2 then
		EightFronts_Trap(0,0,3,nUserId)
	end
	-- 减速
	if nNum == 3 then
		EightFronts_Trap(0,0,1,nUserId)
	end
	-- 什么都没有==4

	--遗体播放光效
	local nEffectMapId = tEightFronts_MonsterPos[nMonsterId]["MapId"]
	local nEffectPosX = tEightFronts_MonsterPos[nMonsterId][nNpcId]["PosX"]
	local nEffectPosY = tEightFronts_MonsterPos[nMonsterId][nNpcId]["PosY"]
	Map_Effect(nEffectMapId,nEffectPosX,nEffectPosY,tEightFronts_Data["FailEffect"]) --光效

	User_TalkChannel2005(tEightFronts_Text["Msg"]["GetFail"][nNum],nUserId)
end
--判断距离=>距离内true,距离外false
function EightFronts_Distance(nUserX,nUserY,nPosX,nPosY,nNum)

	local nX_Distance = math.abs(nUserX-nPosX)
	local nY_Distance = math.abs(nUserY-nPosY)
	--比较宝藏的坐标x,y与玩家的坐标差绝对值
	if nX_Distance < nNum and nY_Distance < nNum then
		return true
	else
		return false
	end
end

---生门的孤魂野鬼
function EightFronts_GetBox(nNpcId)

--判断背包空间
	local nUserId = Get_UserId()
	local nUserMetempsychosis = Get_UserMetempsychosis(nUserId)
	local nRandomNum = 1
	if nUserMetempsychosis >= 2 then
		nRandomNum = 2
	end
	local bBan,nSpace = RewardTemplate_ChkRandomSpace(tEightFronts_Reward["GetItem"],nRandomNum)
	if not bBan then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--任务完成打掩码
	local nTaskEvent = tEightFronts_Stc[4]["EventType"]
	local nTaskType = tEightFronts_Stc[4]["DataType"]
	-- 已领取奖励或没完成任务
	if Task_ChkStcValue(nTaskEvent,nTaskType,">=",2,nUserId) or Task_ChkStcValue(nTaskEvent,nTaskType,"<",1,nUserId) then
		return
	end
	--删除玩家身上的令牌
	EightFronts_DelTaken()
	local nEvent = tEightFronts_Stc[1]["EventType"]
	local nType = tEightFronts_Stc[1]["DataType"]
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	--完成任务掩码
	Task_SetStatistic(nTaskEvent,nTaskType,2,1,nUserId)
	Task_SetStcTimestamp(nTaskEvent,nTaskType,0,nUserId)
	-- 判断转世
	-- RewardTemplate_UseItemAndMsg(tEightFronts_Reward["GetItem"])
	local tTab = CommonFunc_Copy(tEightFronts_Reward["GetItem"])
	if SpecialServer_ChkNoGiftServer() then
		tTab = CommonFunc_Copy(tEightFronts_Reward["GetNewItem"])
	end
	RewardTemplate_NewRandom(tTab,nRandomNum,nUserId)
	--传送到璇玑
	-- EightFronts_Goto(600050)
	if SpecialServer_ChkNoGiftServer() then
		EightFronts_Goto(3)
	else
		EightFronts_Goto(4)
	end
	--出提示
	User_TalkChannel2005(tEightFronts_Text["Msg"]["Goto"],nUserId)
	--广播
	local nUserName = Get_UserName(nUserId)
	local sStr = string.format(tEightFronts_Text["Msg"]["GetBroad"],nUserName)
	Sys_SystemBroadcast(sStr)
	--给成就
	local nAchPos = tEightFronts_Data["ChkAch"]
	if not User_ChkAchByAchPosition(nAchPos) then
		User_AddAchByAchPosition(nAchPos)
		Sys_SaveActionFestivalLog(tEightFronts_Data["Log"]["Ach"])
	end
end

function EightFronts_DelTaken()
	for a,b in pairs(tEightFronts_Data["ItemId"]) do
		if Item_ChkItem(b) and Item_DelItem(b) then
			local sLog = string.format(tEightFronts_Data["Log"][1],b)
			Sys_SaveActionFestivalLog(sLog)
		end
	end
end
-- 杜门与景门
-- ?使用新的迷宫地图
-- ?将幽魂NPC放到迷宫地图的出口处
-- ?传送进迷宫时有多个随机进入点
-- ?小地图与大地图不显示具体的路线，只显示玩家位置与终点位置，不可自动寻路
-- ?到达迷宫出口处于NPC对话，可以获得破关令牌，并传送出阵
function EightFronts_GetStoken(nNpcId)
--判断背包空间
	if not RewardTemplate_CheckSpace(tEightFronts_Reward[nNpcId]) then
		Sys_MsgBox(tEightFronts_Text[nNpcId]["Msg"]["NoSpace"])
		return
	end
	-- 掩码重置
	-- 1景门，2杜门
	local nNum_1,nNum_2 = EightFronts_GetStc()
	local nUserId = Get_UserId()
	local nEvent = tEightFronts_Stc[3]["EventType"]
	local nType = tEightFronts_Stc[3]["DataType"]
	local nTalNum = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nDelData = 0
	--杜门
	if nNpcId == 600009 then
		nDelData = nTalNum - nNum_2 * 10
	else
		nDelData = nTalNum - nNum_1
	end
	Task_SetStatistic(nEvent,nType,nDelData,1,nUserId)
	RewardTemplate_UseItemAndMsg(tEightFronts_Reward[nNpcId])
	-- 集齐6枚令牌、进入生门
	local nTakenNum = EightFronts_ChkToken()
	if nTakenNum >= 6 then
		Sys_MsgBox(tEightFronts_Text[nNpcId]["Msg"]["Goto"],nil,nil,nUserId)
		--进入生门
		EightFronts_Goto(2)
		--完成任务打掩码
		EightFronts_TaskStc(1)

	else
		Sys_MsgBox(tEightFronts_Text[nNpcId]["Msg"]["Get"],nil,nil,nUserId)
		--传送到璇玑
		EightFronts_Goto(600050)
	end
end
--错误方向自动寻路到对的阵魂处
function EightFronts_GotoNpc(nNum,nNpc,nNpcId)
	-- local nNpcId = tEightFronts_PosTrue[nNpc][nNum]["NpcId"]
	local nMapId = tEightFronts_PosTrue[nNpc]["MapId"]
	local nPosX = tEightFronts_PosTrue[nNpc][nNum]["PosX"]
	local nPosY = tEightFronts_PosTrue[nNpc][nNum]["PosY"]
	local nUserId = Get_UserId()
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId,nUserId)
	
end

--死门中的幽魂
function EightFronts_CostEmoney(nNpcId,nNeedMoney,sFlag)
	-- 天石不足
	local nUserId = Get_UserId()
	local nUserMoney = Get_UserEMoney(nUserId)
	if nUserMoney < nNeedMoney then
		LinkNpcGossipFunc_New(nNpcId,sFlag)
		return
	end
	--扣天石
	if not User_AddEMoney(-nNeedMoney) then
		return
	end
	--花10天石进生门
	if nNeedMoney == 10 then
		EightFronts_Goto(2,nUserId)
		--完成任务打掩码
		EightFronts_TaskStc(1)
		Sys_MsgBox(tEightFronts_Text[600017]["Msg"]["Goto"],nil,nil,nUserId)
		return
	end
	--花1天石
	EightFronts_GotoDoor()
end
-- 花银两
function EightFronts_CostMoney(nNpcId,nNeedMoney)
	-- 天石不足
	local nUserId = Get_UserId()

	if not User_CanPutMoney2Bag(-nNeedMoney) then
		Sys_MsgBox(tEightFronts_Text["Msg"]["NotMoney"],nil,nil,nUserId)
		return
	end
	--扣金币
	if not User_AddMoney(-nNeedMoney) then
		return
	end
	--花1000000进生门
	if nNeedMoney == 1000000 then
		EightFronts_Goto(2,nUserId)
		--完成任务打掩码
		EightFronts_TaskStc(1)
		Sys_MsgBox(tEightFronts_Text[600017]["Msg"]["Goto"],nil,nil,nUserId)
		return
	end
	--花100000
	EightFronts_GotoDoor()
end

----------------------------------怪物逻辑---------------------------------------------
---击杀死门boss传送进生门
function EightFronts_KillBoss(nMonsterId)
	if not (SpecialServer_ChkNoGiftServer()) then
		return
	end

	local nUserId = Get_UserId()
	local nPlayerNumber = Get_UserTeamNumbers(nUserId)
	--数量减1
	local nBossId = tEightFronts_Data["Boss"]["Id"]
	local nMapId = tEightFronts_Data["Boss"]["MapId"]

	local nMonsterNum = Get_SysTempData(1,nMapId,nBossId)
	if nMonsterNum >= 1 then
	Sys_SetTempData(1,nMapId,nBossId,nMonsterNum-1)
	end

	-- 组队
	if nPlayerNumber >= 2 then
		User_TeamExeFuncByTeamer(3,"EightFronts_TeamGoto",nUserId)
		return
	end
	--单人
	EightFronts_TeamGoto(nUserId)
end
function EightFronts_TeamGoto(nTeamUserId)
	local nUserId = nTeamUserId or Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tEightFronts_Data["Boss"]["MapId"] then
		return
	end
	EightFronts_Goto(2,nUserId)
	--完成任务打掩码
	EightFronts_TaskStc(1,nUserId)
	User_TalkChannel2005(tEightFronts_Text[600003]["Msg"]["GotoLiving"],nUserId)
	--进入生门后，头上播放光效：向死而生
	User_EffectAdd("self",tEightFronts_Data["Effect"],nUserId)
	--广播
	local nName = Get_UserName(nUserId)
	local sBroadcast = string.format(tEightFronts_Text["Msg"]["KillBroad"],nName)
	Sys_SystemBroadcast(sBroadcast)
	Sys_MsgBox(tEightFronts_Text["Msg"]["KillBoss"],nil,nil,nUserId)

end

-- 惊门与伤门
-- 在阵中刷一些怪物，击败怪物，有3%的几率掉落破关令牌
function EightFronts_KillMoster(nMonsterId)
	if not (SpecialServer_ChkNoGiftServer()) then
		return
	end

	local nUserId = Get_UserId()
	if not RewardTemplate_CheckSpace(tEightFronts_Reward[nMonsterId],nUserId) then
		--提示
		return
	end

	if not Sys_Random(tEightFronts_Data["MonsterRandom"],10000) then
		User_TalkChannel2005(tEightFronts_Text["Msg"]["KillNotGet"],nUserId)
		return
	end
	RewardTemplate_UseItemAndMsg(tEightFronts_Reward[nMonsterId],nUserId)
	EightFronts_Goto(600050,nUserId)
	--加105提示
	Sys_MsgBox(tEightFronts_Text["Msg"][nMonsterId],nil,nil,nUserId)
end

----------------------------------陷进逻辑---------------------------------------------
--在阵中随机分布一些陷阱，陷阱的效果有：晕眩，冰冻，掉血
function EightFronts_Trap(nTrapType,nMapId,nNum,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nStatus = tEightFronts_Trap[nNum]["Status"]
	local nPower = tEightFronts_Trap[nNum]["Power"]
	local nSecs = tEightFronts_Trap[nNum]["Secs"]
	local nTimes = tEightFronts_Trap[nNum]["Times"]
	local nunRemainTime = tEightFronts_Trap[nNum]["unRemainTime"]
	local nunEndTime = tEightFronts_Trap[nNum]["unEndTime"]
	local nucRecordable = tEightFronts_Trap[nNum]["ucRecordable"]

	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nunRemainTime,nunEndTime,nucRecordable,0,0,nUserId)
	if nMapId ~= 0 then
		--删除陷进
		Trap_DelMapTrap(nMapId,nTrapType)
	end
	--出提示
	User_TalkChannel2005(tEightFronts_Text["Msg"]["Trap"][nNum],nUserId)
end

----------------------------------物品逻辑---------------------------------------------
-- 开门 休门 通关谜题
function EightFronts_Anwser(nNum,nRightNum,nItemId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	if not Item_ChkItem(nItemId,1,0,nNowUserId) then
		return
	end
	local nUserMapId = Get_UserMapId(nNowUserId)
	for i,j in pairs(tEightFronts_Data["Jianyu"]) do
		if j == nUserMapId then
			return
		end
	end
	local tTab = CommonFunc_Copy(tEightFronts_Reward[nItemId])
	tTab["True"] = nRightNum
	-- 回答正确
	if nNum == tTab["True"] then
		RewardTemplate_UseItemAndMsg(tEightFronts_Reward[nItemId][1],nNowUserId)
		Sys_MsgBox(tEightFronts_Text[nItemId]["True"],nil,nil,nNowUserId)
		--传送到璇玑
		EightFronts_Goto(600050,nNowUserId)
		return
	end
	RewardTemplate_UseItemAndMsg(tEightFronts_Reward[nItemId][2],nNowUserId)
	Sys_MsgBox(tEightFronts_Text[nItemId]["False"],nil,nil,nNowUserId)
end
-- 月光宝盒
function EightFronts_openBox(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	local nEvent = tEightFronts_Stc[2]["EventType"]
	local nType = tEightFronts_Stc[2]["DataType"]

	--隔天清零
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	--今日已打开1个
	if Task_ChkStcValue(nEvent,nType,">=",tEightFronts_Stc[2]["Data"],nUserId)  then
		Sys_MsgBox(tEightFronts_Text[3306558]["NoOpen"],nil,nil,nUserId)
		return
	end


	---随机第一层
	local flat,tNum = Probabil_RandomAward(tEightFronts_OpenBox,1)  
	local tTab = tNum[1]["tAward"][1]["Table"]
	local nNum = tNum[1]["tAward"][1]["Num"]

	-- 直接给物品
	if nNum <= 2 then
		local bBan,nSpace = RewardTemplate_ChkRandomSpace(tEightFronts_OpenBox,2,nUserId)
		if not User_CheckLeftSpace(nSpace,nUserId) then
			local sSpace = string.format(tEightFronts_Text["Msg"]["NotSpace"],nSpace)
			User_TalkChannel2005(sSpace,nUserId)
			return
		end
		---删除物品
		if not Item_DelItem(nItemId) then
			return
		end
		---打掩码
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		RewardTemplate_NewRandom(tEightFronts_OpenBox,2,nUserId)
		User_EffectAdd("self",tEightFronts_Data["BoxEffect"])
		return
	end
	-- 给装备
	local nRandom = math.random(1,10000)
	local tNewTab = CommonFunc_Copy(tEightFronts_OpenBox[nNum])
	local bBan,nSpace = RewardTemplate_ChkRandomSpace(tNewTab,1,nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		local sSpace = string.format(tEightFronts_Text["Msg"]["NotSpace"],nSpace)
		User_TalkChannel2005(sSpace,nUserId)
		return
	end
	---删除物品
	if not Item_DelItem(nItemId) then
		return
	end
	--给2个洞
	if nRandom <= tNewTab[1]["Random"] then
		for a,b in pairs(tNewTab[1]) do
			if type(b) == "table" then
				b["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
			end
		end
	end
	---打掩码
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	RewardTemplate_NewRandom(tNewTab,1,nUserId)
	User_EffectAdd("self",tEightFronts_Data["BoxEffect"])
end

-- 时间自检
function EightFronts_TimeChk()
	if not (SpecialServer_ChkNoGiftServer()) then
		return
	end
	for a,b in pairs(tEightFronts_MonsterPos) do
		local nMapId = b["MapId"]
		if type(b) == "table" then
			for k,v in pairs(b) do
				if type(v) == "table" then
					local nNpcId = k
					local nNpcMapId,nPosX,nPosY = NpcPosition_Get(nNpcId)
					--不在地图内  移出npc
					if nMapId ~= nNpcMapId then
						Npc_MoveNpcPos(nNpcId,nMapId,v["PosX"],v["PosY"])
					end
				end
			end
		end
	end
end

---1分钟后移出陷进
function EightFronts_TimeChkTrap()
	if not (SpecialServer_ChkNoGiftServer()) then
		return
	end

	for a,b in pairs(tEightFronts_TrapId) do
		local nTrapID = a
		local nMapId = b["MapId"]
		local nTrapNum = MoveTrap_GetCount(nTrapID,nMapId)
		if nTrapNum < 1 then
			local nPosX = b["PosX"]
			local nPosY = b["PosY"]
			local nLook = b["Look"]
			Trap_CreateMapTrap(nTrapID,nLook,0,nMapId,nPosX,nPosY,3,3)
		end
	end
end

---刷boss
function EightFronts_TimeChkMonster()
	if not (SpecialServer_ChkNoGiftServer()) then
		return
	end

	local nBossId = tEightFronts_Data["Boss"]["Id"]
	local nMapId = tEightFronts_Data["Boss"]["MapId"]
	local nMonsterNum = Get_SysTempData(1,nMapId,nBossId)
	if nMonsterNum >= 1 then
		return
	end
	local nPosX = tEightFronts_Data["Boss"]["PosX"]
	local nPosY = tEightFronts_Data["Boss"]["PosY"]
	local nGenId = tEightFronts_Data["Boss"]["GenId"]
	Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nBossId)
	Sys_SetTempData(1,nMapId,nBossId,nMonsterNum+1)
end

-- 判断是否是正确的npc
function EightFronts_GetNum(nNpcId,nNum)
	local nPosX = tEightFronts_PosTrue[nNpcId][nNum]["PosX"]
	local nPosY = tEightFronts_PosTrue[nNpcId][nNum]["PosY"]
	local nUserX = Get_UserPositionX()
	local nUserY = Get_UserPositionY()
	-- 1 正确  2 错误
	if EightFronts_Distance(nUserX,nUserY,nPosX,nPosY,15) then
		return 1
	else
		return 2
	end
end

----物品
function EightFronts_OptenItem(nItemId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	if not Item_ChkItem(nItemId,1,0,nNowUserId) then
		return
	end

	Sys_DialogTaskClear()
	local nNum_1 = ""
	local nNum_2 = ""
	local nRightNum = 0

	for i =1,2 do
		nNum_1 = nNum_1 .. math.random(1,9)
		nNum_2 = nNum_2 .. math.random(1,9)
	end
	nNum_1 = tonumber(nNum_1)
	nNum_2 = tonumber(nNum_2)
	if nItemId == 3306557  then 
		if nNum_1 < nNum_2 then
			local nChangNum = nNum_1
			nNum_1 = nNum_2
			nNum_2 = nChangNum
		end
		nRightNum = nNum_1 - nNum_2
	else
		nRightNum = nNum_1 + nNum_2
	end 
	local sText = string.format(tEightFronts_Text[nItemId]["Text111"],nNum_1,nNum_2)
	Sys_DialogText(sText)
	
	Sys_DialogOptEdit(tEightFronts_Text[3306556]["Msg"],32,"EightFronts_OptenItemGet</N>" .. nItemId .. "</N>" .. nRightNum .. "</N>" .. nNowUserId)
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
	
end
function EightFronts_OptenItemGet(nItemId,nRightNum,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nNum = tonumber(Get_SysAcceptStr())
	EightFronts_Anwser(nNum,nRightNum,nItemId,nNowUserId)
end


-- 服务器启动
function EightFronts_ServerStart()
	for a,b in pairs(tEightFronts_TrapId) do
		local nTrapID = a
		local nMapId = b["MapId"]
		MoveTrap_SetCount(nTrapID,nMapId,2)
	end
end

---就职礼盒
function EightFronts_UseBox(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--判断背包空间
	if not RewardTemplate_CheckSpace(tEightFronts_Reward[nItemId]) then
		
		return
	end
	RewardTemplate_UseItemAndMsg(tEightFronts_Reward[nItemId])
end


-- 新月光宝盒
function EightFronts_openNewBox(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	local nEvent = tEightFronts_Stc[2]["EventType"]
	local nType = tEightFronts_Stc[2]["DataType"]

	--隔天清零
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	--今日已打开1个
	if Task_ChkStcValue(nEvent,nType,">=",tEightFronts_Stc[2]["Data"],nUserId)  then
		Sys_MsgBox(tEightFronts_Text[3306558]["NoOpen"],nil,nil,nUserId)
		return
	end

	---随机第一层
	local flat,tNum = Probabil_RandomAward(tEightFronts_UseItem,1)  
	local tTab = tNum[1]["tAward"][1]["Table"]
	local nNum = tNum[1]["tAward"][1]["Num"]
	-- 直接给物品
	if nNum <= 2 then
		local bBan,nSpace = RewardTemplate_ChkRandomSpace(tEightFronts_UseItem,2,nUserId)
		if not User_CheckLeftSpace(nSpace,nUserId) then
			local sSpace = string.format(tEightFronts_Text["Msg"]["NotSpace"],nSpace)
			User_TalkChannel2005(sSpace,nUserId)
			return
		end
		---删除物品
		if not Item_DelItem(nItemId) then
			return
		end
		---打掩码
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		RewardTemplate_NewRandom(tEightFronts_UseItem,2,nUserId)
		User_EffectAdd("self",tEightFronts_Data["BoxEffect"])
		return
	end
	-- 给装备
	local nRandom = math.random(1,10000)
	local tNewTab = CommonFunc_Copy(tEightFronts_UseItem[nNum])
	local bBan,nSpace = RewardTemplate_ChkRandomSpace(tNewTab,1,nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		local sSpace = string.format(tEightFronts_Text["Msg"]["NotSpace"],nSpace)
		User_TalkChannel2005(sSpace,nUserId)
		return
	end
	---删除物品
	if not Item_DelItem(nItemId) then
		return
	end

	--给2个洞
	if nNum == 6 then
		if nRandom <= tNewTab[1]["Random"] then
			for a,b in pairs(tNewTab[1]) do
				if type(b) == "table" then
					b["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 255 255"
				end
			end
		end
	end
	---打掩码
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	RewardTemplate_NewRandom(tNewTab,1,nUserId)
	User_EffectAdd("self",tEightFronts_Data["BoxEffect"])
end

function EightFronts_TimeChkSetGlobal()
	if not (SpecialServer_ChkNoGiftServer()) then
		return
	end
	local nGlobal = tEightFronts_Data["ItemGlobal"]
	Sys_SetSynaGlobalData1(nGlobal,0) 
	Sys_SetSynaGlobalData2(nGlobal,0) 
end


function EightFronts_Login()
-- 无赠品服
	-- 判断服务器
	if not SpecialServer_ChkNoGiftServer() then
		return
	end
	local nUserId = Get_UserId()
	local nUserLevel = Get_UserLevel(nUserId)

	if nUserLevel <= 1 then
		Sys_MsgBox(tEightFronts_Text["Msg"]["LoginNoGit"],"NpcPosition_PathFind</N>23558")
		return
	end 
	-- 判断掩码
	local nEventType = tEightFronts_LoginStc[1]["EventType"]
	local nDataType = tEightFronts_LoginStc[1]["DataType"]
	if Task_ChkStcValue (nEventType,nDataType,">=",1) then
		return
	end
	
	-- 打掩码
	Task_SetStatistic(nEventType,nDataType,1,1)
	--无赠品服
	-- if SpecialServer_ChkNoGiftServer() then
		-- Sys_MsgBox(tEightFronts_Text["Msg"]["LoginNoGit"],"NpcPosition_PathFind</N>23558")
		-- return
	-- end
end

----------------------------------NPC部分---------------------------------------------
-- 璇玑
tNpcFace[610] = 237
tNpcGossip[600003]= tNpcGossip[600003] or DefaultNpc:new{}
tNpcGossip[600003]["OptionHidden"] = 1
tNpcGossip[600003]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120}
tNpcGossip[600003]["Text111"] = tEightFronts_Text[600003]["Text111"]
tNpcGossip[600003]["Text112"] = tEightFronts_Text[600003]["Text112"]
tNpcGossip[600003]["Text119"] = tEightFronts_Text[600003]["Text119"]
tNpcGossip[600003]["Text120"] = tEightFronts_Text[600003]["Text120"]
tNpcGossip[600003]["tOption1-1"] = {111}
tNpcGossip[600003]["Option111"] = tEightFronts_Text[600003]["Option111"]
tNpcGossip[600003]["OptionFunc111"] = "EightFronts_GotoDoor</N>600003"
tNpcGossip[600003]["Option112"] = tEightFronts_Text[600003]["Option112"]
tNpcGossip[600003]["OptionPoint112"] = "2-1"
tNpcGossip[600003]["ChkFunc1-1"]= function()
	for a,b in pairs(tEightFronts_Data["ItemIdType"]) do
		local sText = tEightFronts_Text[600003]["Text" .. 112+a]
		local sFlag = tEightFronts_Text[600003]["Flag"][1]
		if not Item_ChkItem(b) then
			sText = tEightFronts_Text[600003]["Text" .. 122+a]
		else
			sFlag = tEightFronts_Text[600003]["Flag"][2]
		end
		tNpcGossip[600003]["Text" .. 112+a] = string.format(sText,sFlag)
	end
	return true
end

-- 请教破阵之法
tNpcGossip[600003]["Text2-1"] = {211,212,213,214,215,216,212,217}
tNpcGossip[600003]["Text211"] = tEightFronts_Text[600003]["Text211"]
tNpcGossip[600003]["Text212"] = tEightFronts_Text[600003]["Text212"]
tNpcGossip[600003]["Text213"] = tEightFronts_Text[600003]["Text213"]
tNpcGossip[600003]["Text214"] = tEightFronts_Text[600003]["Text214"]
tNpcGossip[600003]["Text215"] = tEightFronts_Text[600003]["Text215"]
tNpcGossip[600003]["Text216"] = tEightFronts_Text[600003]["Text216"]
tNpcGossip[600003]["Text217"] = tEightFronts_Text[600003]["Text217"]

tNpcGossip[600003]["tOption2-1"] = {211}
tNpcGossip[600003]["Option211"] = tEightFronts_Text[600003]["Option211"]
-- tNpcGossip[600003]["OptionPoint211"] = "3-1"
-- 如何获得6枚令牌？
tNpcGossip[600003]["Text3-1"] = {311,312,313,314,315,316,317,318}
tNpcGossip[600003]["Text311"] = tEightFronts_Text[600003]["Text311"]
tNpcGossip[600003]["Text312"] = tEightFronts_Text[600003]["Text312"]
tNpcGossip[600003]["Text313"] = tEightFronts_Text[600003]["Text313"]
tNpcGossip[600003]["Text314"] = tEightFronts_Text[600003]["Text314"]
tNpcGossip[600003]["Text315"] = tEightFronts_Text[600003]["Text315"]
tNpcGossip[600003]["Text316"] = tEightFronts_Text[600003]["Text316"]
tNpcGossip[600003]["Text317"] = tEightFronts_Text[600003]["Text317"]
tNpcGossip[600003]["Text318"] = tEightFronts_Text[600003]["Text318"]
tNpcGossip[600003]["tOption3-1"] = {311}
tNpcGossip[600003]["Option311"] = tEightFronts_Text[600003]["Option311"]
tNpcGossip[600003]["OptionPoint311"] = "1-1"




---神算子
tNpcFace[620] = 7
tNpcGossip[600050]= tNpcGossip[600050] or DefaultNpc:new{}
tNpcGossip[600050]["OptionHidden"] = 1
-- 首次接【诸葛八阵图】任务、等级不足
tNpcGossip[600050]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[600050]["Text111"] = tEightFronts_Text[600050]["Text111"]
tNpcGossip[600050]["Text112"] = tEightFronts_Text[600050]["Text112"]
tNpcGossip[600050]["Text113"] = tEightFronts_Text[600050]["Text113"]
tNpcGossip[600050]["Text114"] = tEightFronts_Text[600050]["Text114"]
tNpcGossip[600050]["Text115"] = tEightFronts_Text[600050]["Text115"]
tNpcGossip[600050]["tOption1-1"] = {111}
tNpcGossip[600050]["Option111"] = tEightFronts_Text[600050]["Option111"]
tNpcGossip[600050]["ChkFunc1-1"]= function()
	return not User_JudgeLevelAndMetempsychosis(tEightFronts_Data["Level"],tEightFronts_Data["Metempsychosis"])
end
-- 非首次接【诸葛八阵图】任务、等级达到
tNpcGossip[600050]["Text1-2"] = {111,121,122,123}
tNpcGossip[600050]["Text121"] = tEightFronts_Text[600050]["Text121"]
tNpcGossip[600050]["Text122"] = tEightFronts_Text[600050]["Text122"]
tNpcGossip[600050]["Text123"] = tEightFronts_Text[600050]["Text123"]
tNpcGossip[600050]["tOption1-2"] = {121,122}
tNpcGossip[600050]["Option121"] = tEightFronts_Text[600050]["Option121"]
tNpcGossip[600050]["OptionFunc121"] = "EightFronts_Goto</N>600050"
tNpcGossip[600050]["OptionChkFunc121"] = function()
	local nTaskEvent = tEightFronts_Stc[4]["EventType"]
	local nTaskType = tEightFronts_Stc[4]["DataType"]
	if Task_ChkStcValue(nTaskEvent,nTaskType,">=",2,nUserId) and Task_StcInterval(nTaskEvent,nTaskType,1,4)  then
		Task_SetStatistic(nTaskEvent,nTaskType,0,1,nUserId)
		Task_SetStcTimestamp(nTaskEvent,nTaskType,0,nUserId)
	end
	if Task_ChkStcValue(nTaskEvent,nTaskType,">=",2,nUserId) then
		return false

	else
		return true
	end
end

tNpcGossip[600050]["Option122"] = tEightFronts_Text[600050]["Option122"]
tNpcGossip[600050]["OptionChkFunc122"] = function()
	local nTaskEvent = tEightFronts_Stc[4]["EventType"]
	local nTaskType = tEightFronts_Stc[4]["DataType"]
	if Task_ChkStcValue(nTaskEvent,nTaskType,">=",2,nUserId) and Task_StcInterval(nTaskEvent,nTaskType,1,4)  then
		Task_SetStatistic(nTaskEvent,nTaskType,0,1,nUserId)
		Task_SetStcTimestamp(nTaskEvent,nTaskType,0,nUserId)
	end
	
	if Task_ChkStcValue(nTaskEvent,nTaskType,">=",2,nUserId) then
		return true
	else
		return false
	end
end
tNpcGossip[600050]["ChkFunc1-2"]= function()
	local nUserId = Get_UserId()
	local nEvent = tEightFronts_Stc[1]["EventType"]
	local nType = tEightFronts_Stc[1]["DataType"]

	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId)  then
		return true
	else
		return false
	end
end
-- 首次接【诸葛八阵图】任务、等级达到
tNpcGossip[600050]["Text1-3"] = {111,131,132,133}
tNpcGossip[600050]["Text131"] = tEightFronts_Text[600050]["Text131"]
tNpcGossip[600050]["Text132"] = tEightFronts_Text[600050]["Text132"]
tNpcGossip[600050]["Text133"] = tEightFronts_Text[600050]["Text133"]
tNpcGossip[600050]["tOption1-3"] = {121,122}
tNpcGossip[600050]["Option131"] = tEightFronts_Text[600050]["Option131"]
tNpcGossip[600050]["OptionPoint131"] = "3-1"
tNpcGossip[600050]["ChkFunc1-3"]= function()
	local nUserId = Get_UserId()
	local nEvent = tEightFronts_Stc[1]["EventType"]
	local nType = tEightFronts_Stc[1]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId)  then
		return false
	else
		return true
	end
end
-- 【接上、先生为何所困】
tNpcGossip[600050]["Text2-1"] = {111,211,212}
tNpcGossip[600050]["Text211"] = tEightFronts_Text[600050]["Text211"]
tNpcGossip[600050]["Text212"] = tEightFronts_Text[600050]["Text212"]
tNpcGossip[600050]["tOption2-1"] = {211}
tNpcGossip[600050]["Option211"] = tEightFronts_Text[600050]["Option211"]
tNpcGossip[600050]["OptionPoint211"] = "3-1"
-- 【接上、互相讨教罢了，在下愿意一试】
tNpcGossip[600050]["Text3-1"] = {111,311}
tNpcGossip[600050]["Text311"] = tEightFronts_Text[600050]["Text311"]
tNpcGossip[600050]["tOption3-1"] = {311}
tNpcGossip[600050]["Option311"] = tEightFronts_Text[600050]["Option311"]
tNpcGossip[600050]["OptionFunc311"] = "EightFronts_Goto</N>600050"

----书童华安
-- tNpcFace[5904] = 7
tNpcGossip[21227]= tNpcGossip[600050] or DefaultNpc:new{}
-- tNpcGossip[21227]["OptionHidden"] = 1
-- 等级未达到
-- tNpcGossip[21227]["Text1-1"] = {111,112,113,114}
-- tNpcGossip[21227]["Text111"] = tEightFronts_Text[21227]["Text111"]
-- tNpcGossip[21227]["Text112"] = tEightFronts_Text[21227]["Text112"]
-- tNpcGossip[21227]["Text113"] = tEightFronts_Text[21227]["Text113"]
-- tNpcGossip[21227]["Text114"] = tEightFronts_Text[21227]["Text114"]

-- tNpcGossip[21227]["tOption1-1"] = {111}
-- tNpcGossip[21227]["Option111"] = tEightFronts_Text[21227]["Option111"]
-- tNpcGossip[21227]["ChkFunc1-1"]= function()
	-- return not User_JudgeLevelAndMetempsychosis(tEightFronts_Data["Level"],tEightFronts_Data["Metempsychosis"])
-- end
-- 等级达到
-- tNpcGossip[21227]["Text1-2"] = {111,121,122}
-- tNpcGossip[21227]["Text121"] = tEightFronts_Text[21227]["Text121"]
-- tNpcGossip[21227]["Text122"] = tEightFronts_Text[21227]["Text122"]
-- tNpcGossip[21227]["tOption1-2"] = {121}
-- tNpcGossip[21227]["Option121"] = tEightFronts_Text[21227]["Option121"]
-- tNpcGossip[21227]["OptionFunc121"] = "EightFronts_Goto</N>600003"


-- 生门的孤魂野鬼
tNpcFace[613] = 237
tNpcGossip[600018]= tNpcGossip[600018] or DefaultNpc:new{}
tNpcGossip[600018]["OptionHidden"] = 1
tNpcGossip[600018]["Text1-1"] = {111,112,113}
tNpcGossip[600018]["Text111"] = tEightFronts_Text[600018]["Text111"]
tNpcGossip[600018]["Text112"] = tEightFronts_Text[600018]["Text112"]
tNpcGossip[600018]["Text113"] = tEightFronts_Text[600018]["Text113"]
tNpcGossip[600018]["tOption1-1"] = {111}
tNpcGossip[600018]["Option111"] = tEightFronts_Text[600018]["Option111"]
tNpcGossip[600018]["OptionFunc111"] = "EightFronts_GetBox</N>600018"
-- 【背包满】
tNpcGossip[600018]["Text2-1"] = {211}
tNpcGossip[600018]["Text211"] = tEightFronts_Text[600018]["Text211"]
tNpcGossip[600018]["tOption2-1"] = {211}
tNpcGossip[600018]["Option211"] = tEightFronts_Text[600018]["Option211"]

for i = 600019,600042 do
	tNpcGossip[i]= tNpcGossip[600018] or DefaultNpc:new{}
end

-- 杜门守门人马谡
tNpcFace[331] = 71
tNpcGossip[600009]= tNpcGossip[600009] or DefaultNpc:new{}
tNpcGossip[600009]["OptionHidden"] = 1
tNpcGossip[600009]["Text1-1"] = {111,112}
tNpcGossip[600009]["Text111"] = tEightFronts_Text[600009]["Text111"]
tNpcGossip[600009]["Text112"] = tEightFronts_Text[600009]["Text112"]

tNpcGossip[600009]["tOption1-1"] = {111,112}
tNpcGossip[600009]["Option111"] = tEightFronts_Text[600009]["Option111"]
tNpcGossip[600009]["OptionFunc111"] = "EightFronts_GotoNpc</N>600009"
tNpcGossip[600009]["Option112"] = tEightFronts_Text[600009]["Option112"]
tNpcGossip[600009]["OptionFunc112"] = "EightFronts_GotoNpc</N>600009"
tNpcGossip[600009]["ChkFunc1-1"]= function()
	-- 1景门，2杜门
	local nNum_1,nNum_2 = EightFronts_GetStc()
	local nNpcId1 = tEightFronts_PosTrue[21330]["NpcId"][1]
	local nNpcId2 = tEightFronts_PosTrue[21330]["NpcId"][2]
	tNpcGossip[600009]["OptionFunc111"] = "EightFronts_GotoNpc</N>" .. 1 .. "</N>" .. 21330 .. "</N>" .. nNpcId1
	tNpcGossip[600009]["OptionFunc112"] = "EightFronts_GotoNpc</N>" .. 2 .. "</N>" .. 21330 .. "</N>" .. nNpcId2

	return true
end

-- 景门守门人姜维
tNpcFace[330] = 67
tNpcGossip[600011]= tNpcGossip[600011] or DefaultNpc:new{}
tNpcGossip[600011]["OptionHidden"] = 1
tNpcGossip[600011]["Text1-1"] = {111,112}
tNpcGossip[600011]["Text111"] = tEightFronts_Text[600011]["Text111"]
tNpcGossip[600011]["Text112"] = tEightFronts_Text[600011]["Text112"]

tNpcGossip[600011]["tOption1-1"] = {111,112}
tNpcGossip[600011]["Option111"] = tEightFronts_Text[600011]["Option111"]
tNpcGossip[600011]["OptionFunc111"] = "EightFronts_GotoNpc</N>600011"
tNpcGossip[600011]["Option112"] = tEightFronts_Text[600011]["Option112"]
tNpcGossip[600011]["OptionFunc112"] = "EightFronts_GotoNpc</N>600011"
tNpcGossip[600011]["ChkFunc1-1"]= function()
	-- 1景门，2杜门
	local nNum_1,nNum_2 = EightFronts_GetStc()
	local nNpcId1 = tEightFronts_PosTrue[21334]["NpcId"][1]
	local nNpcId2 = tEightFronts_PosTrue[21334]["NpcId"][2]
	tNpcGossip[600011]["OptionFunc111"] = "EightFronts_GotoNpc</N>" .. 1 .. "</N>" .. 21334 .. "</N>" .. nNpcId1
	tNpcGossip[600011]["OptionFunc112"] = "EightFronts_GotoNpc</N>" .. 2 .. "</N>" .. 21334 .. "</N>" .. nNpcId2
	return true
end

-- 死门的幽魂
tNpcFace[612] = 237
tNpcGossip[600017]= tNpcGossip[600017] or DefaultNpc:new{}
tNpcGossip[600017]["OptionHidden"] = 1
tNpcGossip[600017]["Text1-1"] = {112}
tNpcGossip[600017]["Text111"] = tEightFronts_Text[600017]["Text111"]
tNpcGossip[600017]["Text112"] = tEightFronts_Text[600017]["Text112"]

tNpcGossip[600017]["tOption1-1"] = {111,112}
tNpcGossip[600017]["Option111"] = tEightFronts_Text[600017]["Option111"]
tNpcGossip[600017]["OptionPoint111"] = "3-1"
tNpcGossip[600017]["Option112"] = tEightFronts_Text[600017]["Option112"]
tNpcGossip[600017]["OptionPoint112"] = "5-1"
-- tNpcGossip[600017]["OptionFunc112"] = "EightFronts_CostEmoney</N>600017</N>1</S>4-1"
-- 直接破阵（10天石）
-- 【天石不足】
tNpcGossip[600017]["Text2-1"] = {211}
tNpcGossip[600017]["Text211"] = tEightFronts_Text[600017]["Text211"]
tNpcGossip[600017]["tOption2-1"] = {211}
tNpcGossip[600017]["Option211"] = tEightFronts_Text[600017]["Option211"]

-- 【二次确认】
tNpcGossip[600017]["Text3-1"] = {311}
tNpcGossip[600017]["Text311"] = tEightFronts_Text[600017]["Text311"]
tNpcGossip[600017]["tOption3-1"] = {311,312}
tNpcGossip[600017]["Option311"] = tEightFronts_Text[600017]["Option311"]
tNpcGossip[600017]["OptionFunc311"] = "EightFronts_CostEmoney</N>600017</N>10</S>2-1"
tNpcGossip[600017]["Option312"] = tEightFronts_Text[600017]["Option312"]
tNpcGossip[600017]["OptionFunc312"] = "EightFronts_CostMoney</N>600017</N>1000000"
-- 【天石不足】1天石
tNpcGossip[600017]["Text4-1"] = {411}
tNpcGossip[600017]["Text411"] = tEightFronts_Text[600017]["Text411"]
tNpcGossip[600017]["tOption4-1"] = {411}
tNpcGossip[600017]["Option411"] = tEightFronts_Text[600017]["Option411"]

-- 【天石不足】1天石
tNpcGossip[600017]["Text5-1"] = {511}
tNpcGossip[600017]["Text511"] = tEightFronts_Text[600017]["Text511"]
tNpcGossip[600017]["tOption5-1"] = {511,512}
tNpcGossip[600017]["Option511"] = tEightFronts_Text[600017]["Option511"]
tNpcGossip[600017]["OptionFunc511"] = "EightFronts_CostEmoney</N>600017</N>1</S>4-1"
tNpcGossip[600017]["Option512"] = tEightFronts_Text[600017]["Option512"]
tNpcGossip[600017]["OptionFunc512"] = "EightFronts_CostMoney</N>600017</N>100000"


-- 开门休门幽魂
tNpcGossip[600005]= tNpcGossip[600005] or DefaultNpc:new{}
tNpcGossip[600005]["OptionHidden"] = 1
tNpcGossip[600005]["Text1-1"] = {111}
tNpcGossip[600005]["Text111"] = tEightFronts_Text[600005]["Text111"]

tNpcGossip[600005]["tOption1-1"] = {111,112}
tNpcGossip[600005]["Option111"] = tEightFronts_Text[600005]["Option111"]
tNpcGossip[600005]["OptionPoint111"] = "2-1"
tNpcGossip[600005]["Option112"] = tEightFronts_Text[600005]["Option112"]

tNpcGossip[600005]["Text2-1"] = {211}
tNpcGossip[600005]["Text211"] = tEightFronts_Text[600005]["Text211"]
tNpcGossip[600005]["tOption2-1"] = {211}
tNpcGossip[600005]["Option211"] = tEightFronts_Text[600005]["Option211"]

tNpcGossip[600015]= tNpcGossip[600005] or DefaultNpc:new{}

-- 惊门伤门幽魂
tNpcGossip[600007]= tNpcGossip[600007] or DefaultNpc:new{}
tNpcGossip[600007]["OptionHidden"] = 1
tNpcGossip[600007]["Text1-1"] = {111}
tNpcGossip[600007]["Text111"] = tEightFronts_Text[600007]["Text111"]

tNpcGossip[600007]["tOption1-1"] = {111,112}
tNpcGossip[600007]["Option111"] = tEightFronts_Text[600007]["Option111"]
tNpcGossip[600007]["OptionPoint111"] = "2-1"
tNpcGossip[600007]["Option112"] = tEightFronts_Text[600007]["Option112"]

tNpcGossip[600007]["Text2-1"] = {211}
tNpcGossip[600007]["Text211"] = tEightFronts_Text[600007]["Text211"]
tNpcGossip[600007]["tOption2-1"] = {211}
tNpcGossip[600007]["Option211"] = tEightFronts_Text[600007]["Option211"]

tNpcGossip[600013]= tNpcGossip[600007] or DefaultNpc:new{}

-- 杜门幽魂
tNpcFace[458] = 237
tNpcGossip[21330]= tNpcGossip[21330] or DefaultNpc:new{}
tNpcGossip[21330]["OptionHidden"] = 1
tNpcGossip[21330]["Text1-1"] = {111}
tNpcGossip[21330]["Text111"] = tEightFronts_Text[21330]["Text111"]

tNpcGossip[21330]["tOption1-1"] = {111}
-- tNpcGossip[21330]["Option111"] = tEightFronts_Text[21330]["Option111"]
-- tNpcGossip[21330]["OptionFunc111"] = "EightFronts_GetStoken</N>600009"
tNpcGossip[21330]["ChkFunc1-1"]= function()
	tNpcGossip[21330]["OptionFunc111"] = ""
	-- 1景门，2杜门
	local nNum_1,nNum_2 = EightFronts_GetStc()
	local nTrueNum = EightFronts_GetNum(21330,nNum_2)
	tNpcGossip[21330]["Text111"] = tEightFronts_Text[21330][nTrueNum]
	tNpcGossip[21330]["Option111"] = tEightFronts_Text[21330]["Option"][nTrueNum]
	if nTrueNum == 1 then
		tNpcGossip[21330]["OptionFunc111"] = "EightFronts_GetStoken</N>600009"
	else
		-- local sText = tEightFronts_Text[21330]["Msg"]
		-- tNpcGossip[21330]["OptionFunc111"] = "User_TalkChannel2005</S>" .. sText
		-- local nNpcId = Get_NpcId()
		local nNpcId = tEightFronts_PosTrue[21330][nNum_2]["NpcId"]
		tNpcGossip[21330]["OptionFunc111"] = "EightFronts_GotoNpc</N>" .. nNum_2 .. "</N>" .. 21330 .. "</N>" .. nNpcId
	end
	return true
end


tNpcGossip[21331]= tNpcGossip[21330] or DefaultNpc:new{}
-- tNpcGossip[21332]= tNpcGossip[21330] or DefaultNpc:new{}
-- tNpcGossip[21333]= tNpcGossip[21330] or DefaultNpc:new{}
-- 景门幽魂
tNpcGossip[21334]= tNpcGossip[21334] or DefaultNpc:new{}
tNpcGossip[21334]["OptionHidden"] = 1
tNpcGossip[21334]["Text1-1"] = {111}
tNpcGossip[21334]["Text111"] = tEightFronts_Text[21334][2]

tNpcGossip[21334]["tOption1-1"] = {111}
-- tNpcGossip[21334]["Option111"] = tEightFronts_Text[21334]["Option111"]
-- tNpcGossip[21334]["OptionFunc111"] = "EightFronts_GetStoken</N>600009"

tNpcGossip[21334]["ChkFunc1-1"]= function()
	tNpcGossip[21334]["OptionFunc111"] = ""
	-- 1景门，2杜门
	local nNum_1,nNum_2 = EightFronts_GetStc()
	local nTrueNum = EightFronts_GetNum(21334,nNum_1)
	tNpcGossip[21334]["Text111"] = tEightFronts_Text[21334][nTrueNum]
	tNpcGossip[21334]["Option111"] = tEightFronts_Text[21334]["Option"][nTrueNum]
	if nTrueNum == 1 then
		tNpcGossip[21334]["OptionFunc111"] = "EightFronts_GetStoken</N>600011"
	else
		-- local sText = tEightFronts_Text[21330]["Msg"]
		-- tNpcGossip[21334]["OptionFunc111"] = "User_TalkChannel2005</S>" .. sText
		-- local nNpcId = Get_NpcId()
		local nNpcId = tEightFronts_PosTrue[21334][nNum_1]["NpcId"]
		tNpcGossip[21334]["OptionFunc111"] = "EightFronts_GotoNpc</N>" .. nNum_1 .. "</N>" .. 21334 .. "</N>" .. nNpcId

	end
	return true
end

tNpcGossip[21335]= tNpcGossip[21334] or DefaultNpc:new{}
-- tNpcGossip[21336]= tNpcGossip[21334] or DefaultNpc:new{}
-- tNpcGossip[21337]= tNpcGossip[21334] or DefaultNpc:new{}



-- 宣传大使
tNpcFace[6233] = 184
tNpcGossip[22617]= tNpcGossip[22617] or DefaultNpc:new{}
tNpcGossip[22617]["OptionHidden"] = 1
-- 活动前
tNpcGossip[22617]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[22617]["Text111"] = tEightFronts_Text[22617]["Text111"]
tNpcGossip[22617]["Text112"] = tEightFronts_Text[22617]["Text112"]
tNpcGossip[22617]["Text113"] = tEightFronts_Text[22617]["Text113"]
tNpcGossip[22617]["Text114"] = tEightFronts_Text[22617]["Text114"]
tNpcGossip[22617]["Text115"] = tEightFronts_Text[22617]["Text115"]
tNpcGossip[22617]["Text116"] = tEightFronts_Text[22617]["Text116"]
tNpcGossip[22617]["Text117"] = tEightFronts_Text[22617]["Text117"]

tNpcGossip[22617]["tOption1-1"] = {111,112}
tNpcGossip[22617]["Option111"] = tEightFronts_Text[22617]["Option111"]
tNpcGossip[22617]["OptionFunc111"] = "NpcPosition_PathFind</N>23288"
tNpcGossip[22617]["Option112"] = tEightFronts_Text[22617]["Option112"]



---------------------------------物品部分---------------------------------------------
--------月光宝盒
tItem[3306558] = tItem[3306558] or {}
tItem[3306558]["Function"] = function(nItemId,sItemName)
	EightFronts_openBox(nItemId)
end
--------物品有对白模板
tItemFace[3306556] = 1137
tItemFace[3306557] = 1138

-- 新月光宝盒
tItem[3310883] = tItem[3310883] or {}
tItem[3310883]["Function"] = function(nItemId,sItemName)
	EightFronts_openNewBox(nItemId)
end
-- 15级就职礼包
for i = 3310884,3310888 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		EightFronts_UseBox(nItemId)
	end
end
-- 1500赠点包
tItem[3312633] = tItem[3312633] or {}
tItem[3312633]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItem(tEightFronts_Reward[3312633])
end
---------------------------------陷阱部分---------------------------------------------
--------惊门
-- 冰霜
for i = 71,78 do
	tTrap[i] = tTrap[i] or {}
	tTrap[i]["Function"] = function(nTrapId,nTrapType)
		EightFronts_Trap(nTrapType,1047,1)
	end
end
-- 冰冻
for i = 79,86 do
	tTrap[i] = tTrap[i] or {}
	tTrap[i]["Function"] = function(nTrapId,nTrapType)
		EightFronts_Trap(nTrapType,1047,2)
	end
end
-- 眩晕
for i = 87,93 do
	tTrap[i] = tTrap[i] or {}
	tTrap[i]["Function"] = function(nTrapId,nTrapType)
		EightFronts_Trap(nTrapType,1047,3)
	end
end
-- 颠倒
for i = 94,100 do
	tTrap[i] = tTrap[i] or {}
	tTrap[i]["Function"] = function(nTrapId,nTrapType)
		EightFronts_Trap(nTrapType,1047,4)
	end
end

-----伤门
-- 冰霜
for i = 101,108 do
	tTrap[i] = tTrap[i] or {}
	tTrap[i]["Function"] = function(nTrapId,nTrapType)
		EightFronts_Trap(nTrapType,1044,1)
	end
end
-- 冰冻
for i = 109,117 do
	tTrap[i] = tTrap[i] or {}
	tTrap[i]["Function"] = function(nTrapId,nTrapType)
		EightFronts_Trap(nTrapType,1044,2)
	end
end
-- 眩晕
for i = 118,124 do
	tTrap[i] = tTrap[i] or {}
	tTrap[i]["Function"] = function(nTrapId,nTrapType)
		EightFronts_Trap(nTrapType,1044,3)
	end
end
-- 颠倒
for i = 125,130 do
	tTrap[i] = tTrap[i] or {}
	tTrap[i]["Function"] = function(nTrapId,nTrapType)
		EightFronts_Trap(nTrapType,1044,4)
	end
end
---------------------------------怪物部分---------------------------------------------
tMonster[3991] = tMonster[3991] or {}  --血妖老祖
tMonster[3991]["tFunction"] = tMonster[3991]["tFunction"] or {}
table.insert(tMonster[3991]["tFunction"],EightFronts_KillBoss)

tMonster[6001] = tMonster[6001] or {}  --伤门蛮角
tMonster[6001]["tFunction"] = tMonster[6001]["tFunction"] or {}
table.insert(tMonster[6001]["tFunction"],EightFronts_KillMoster)

tMonster[6004] = tMonster[6004] or {}  --惊门蛮角
tMonster[6004]["tFunction"] = tMonster[6004]["tFunction"] or {}
table.insert(tMonster[6004]["tFunction"],EightFronts_KillMoster)


---------------------------------时间自检---------------------------------------------
-- 每10分钟执行
local tEightFronts_TimeChk = {}
-- tEightFronts_TimeChk[1] = {}
-- tEightFronts_TimeChk[1]["TimeType"] = 5
-- tEightFronts_TimeChk[1]["Multiple"] = {}
-- tEightFronts_TimeChk[1]["Multiple"][1] = "01 01"
-- tEightFronts_TimeChk[1]["Multiple"][2] = "11 11"
-- tEightFronts_TimeChk[1]["Multiple"][3] = "21 21"
-- tEightFronts_TimeChk[1]["Multiple"][4] = "31 31"
-- tEightFronts_TimeChk[1]["Multiple"][5] = "41 41"
-- tEightFronts_TimeChk[1]["Multiple"][6] = "51 51"
-- tEightFronts_TimeChk[1]["Func"] = EightFronts_TimeChk
-- table.insert(tSystemTime_InitialData,tEightFronts_TimeChk[1])
--10.19 修改为每分钟执行
tEightFronts_TimeChk[1] = {}
tEightFronts_TimeChk[1]["TimeType"] = 4
tEightFronts_TimeChk[1]["Multiple"] = {}
tEightFronts_TimeChk[1]["Multiple"][1]  = "00:00 23:59"
tEightFronts_TimeChk[1]["Func"] = EightFronts_TimeChk
table.insert(tSystemTime_InitialData,tEightFronts_TimeChk[1])

-- 陷进 每分钟执行
tEightFronts_TimeChk[2] = {}
tEightFronts_TimeChk[2]["TimeType"] = 4
tEightFronts_TimeChk[2]["Multiple"] = {}
tEightFronts_TimeChk[2]["Multiple"][1]  = "00:00 23:59"
tEightFronts_TimeChk[2]["Func"] = EightFronts_TimeChkTrap
table.insert(tSystemTime_InitialData,tEightFronts_TimeChk[2])
-- boss
tEightFronts_TimeChk[3] = {}
tEightFronts_TimeChk[3]["TimeType"] = 4
tEightFronts_TimeChk[3]["Multiple"] = {}
tEightFronts_TimeChk[3]["Multiple"][1]  = "00:00 23:59"
tEightFronts_TimeChk[3]["Func"] = EightFronts_TimeChkMonster
table.insert(tSystemTime_InitialData,tEightFronts_TimeChk[3])


-- 每20分钟执行
tEightFronts_TimeChk[4] = {}
tEightFronts_TimeChk[4]["TimeType"] = 5
tEightFronts_TimeChk[4]["Multiple"] = {}
tEightFronts_TimeChk[4]["Multiple"][1] = "01 01"
tEightFronts_TimeChk[4]["Multiple"][2] = "21 21"
tEightFronts_TimeChk[4]["Multiple"][3] = "41 41"
tEightFronts_TimeChk[4]["Func"] = EightFronts_TimeChkSetGlobal
table.insert(tSystemTime_InitialData,tEightFronts_TimeChk[4])

--服务器启动
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],EightFronts_ServerStart)



--------------------------------------上线触发-------------------------------------------
table.insert(tSystem_PlayLogin_Func,EightFronts_Login)



