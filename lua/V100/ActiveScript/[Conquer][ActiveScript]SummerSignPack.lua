--------------------------------------------------------------------------------
---复用 Name:160620[英文征服][活动脚本]暑期开斋签到有礼活动制作(7.19-7.31)
-- 160705[英文征服][活动脚本]8月普天同庆有礼(8.11-8.17)
--Creator: 	许乐
--Created:	2016-07-05
--------------------------------------------------------------------------------
--前缀 SummerSignPack_

-- npc 19348
-- itemid 3200554-3200564
-- logid 12000434
-- luaid 40282
-- stc 14625-14626  14634
--------------------------------------------------------------------------------
-- 掩码说明：
-- 14625：获得背包信
-- 14626：每日签到，判断是否签到，是否领取了奖励
-- 14634：当天是否使用了福利礼包（每天可以使用一次）

-- 动态码说明：
-- 51267
-- 微光星陨石*1 3009000 单服每日最多100个，给完给100点修行值
-- 10W金币 3200560 单服每日最多1000个，给完给100点修行值
-- 狂欢游戏币*1 单服每日最多30个，给完给100点修行值		-- 改为 赤练石+2赠

-- 51268
-- 微光星陨石*2  单服每日最多100份，给完给龙珠赠
-- 狂欢游戏币*1  单服每日最多50个，给完给流星卷赠		-- 改为 赤练石+3赠*1
-- 100点非赠天石  单服每日最多10个，给完给流星卷赠

-- 51269
-- 微光星陨石*5  单服每日最多1000份，给完给大爆丹赠*4		-- 改为 明亮星陨石*1
-- 龙珠*1  单服每日最多100个，给完给大爆丹赠*4
-- 200点非赠天石  单服每日最多10个，给完给大爆丹赠*4

------------------------------------------常量表配置--------------------------------------
local tSummerSignPack_Cont = {}
	--活动期间	
	-- tSummerSignPack_Cont["BeforeActivity"] = "2015-07-10 00:00 2016-07-18 23:59"
	-- tSummerSignPack_Cont["Activity"] = "2016-07-19 00:00 2016-07-31 23:59"
	
	tSummerSignPack_Cont["BeforeActivity"] = "2015-07-10 00:00 2016-08-10 23:59"
	tSummerSignPack_Cont["Activity"] = "2016-08-11 00:00 2016-08-17 23:59"
	
	tSummerSignPack_Cont["Emoney"] = {}
	tSummerSignPack_Cont["Emoney"][3200563] = 499
	tSummerSignPack_Cont["Emoney"][3200564] = 199
	
	-- 根据玩家转世情况给对应物品
	tSummerSignPack_Cont["Metempsychosis"] = {}
	tSummerSignPack_Cont["Metempsychosis"][1] = 3200766	-- 3200555
	tSummerSignPack_Cont["Metempsychosis"][2] = 3200767	-- 3200556
	tSummerSignPack_Cont["Metempsychosis"][3] = 3200768	-- 3200557
	
local tSummerSignPack_Stc = {}
	tSummerSignPack_Stc["EventType"] = 146
	tSummerSignPack_Stc["DataType"] = {}
	tSummerSignPack_Stc["DataType"][1] = 26
	tSummerSignPack_Stc["DataType"][2] = 34
	
local tSummerSignPack_Global = {}
	tSummerSignPack_Global["GlobalIdClear"] = {51267,51268,51269}

local tSummerSignPack_NpcReward = {}
	-- 在npc处领取 3200555  清凉一夏福利包
	tSummerSignPack_NpcReward[3200555] = {}
	tSummerSignPack_NpcReward[3200555]["RewardItem"] = {}
	tSummerSignPack_NpcReward[3200555]["RewardItem"][1] = {}
	tSummerSignPack_NpcReward[3200555]["RewardItem"][1]["Id"] = 3200555
	tSummerSignPack_NpcReward[3200555]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignPack_NpcReward[3200555]["Log"] = "0,0,0,0,12000434,2,3200555,1"
	tSummerSignPack_NpcReward[3200555]["Space"] = 1
	-- 在npc处领取 3200556  骄阳似火福利包
	tSummerSignPack_NpcReward[3200556] = {}
	tSummerSignPack_NpcReward[3200556]["RewardItem"] = {}
	tSummerSignPack_NpcReward[3200556]["RewardItem"][1] = {}
	tSummerSignPack_NpcReward[3200556]["RewardItem"][1]["Id"] = 3200556
	tSummerSignPack_NpcReward[3200556]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignPack_NpcReward[3200556]["Log"] = "0,0,0,0,12000434,2,3200556,1"
	tSummerSignPack_NpcReward[3200556]["Space"] = 1
	-- 在npc处领取 3200557  激情狂欢福利包
	tSummerSignPack_NpcReward[3200557] = {}
	tSummerSignPack_NpcReward[3200557]["RewardItem"] = {}
	tSummerSignPack_NpcReward[3200557]["RewardItem"][1] = {}
	tSummerSignPack_NpcReward[3200557]["RewardItem"][1]["Id"] = 3200557
	tSummerSignPack_NpcReward[3200557]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignPack_NpcReward[3200557]["Log"] = "0,0,0,0,12000434,2,3200557,1"
	tSummerSignPack_NpcReward[3200557]["Space"] = 1
	-- 在npc处领取 3200563  夏日倾情礼包
	tSummerSignPack_NpcReward[3200563] = {}
	tSummerSignPack_NpcReward[3200563]["RewardItem"] = {}
	tSummerSignPack_NpcReward[3200563]["RewardItem"][1] = {}
	tSummerSignPack_NpcReward[3200563]["RewardItem"][1]["Id"] = 3200563
	tSummerSignPack_NpcReward[3200563]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignPack_NpcReward[3200563]["Log"] = "0,0,0,0,12000434,2,3200563,1"
	tSummerSignPack_NpcReward[3200563]["Space"] = 1
	-- 在npc处领取 3200564  夏日动感礼包
	tSummerSignPack_NpcReward[3200564] = {}
	tSummerSignPack_NpcReward[3200564]["RewardItem"] = {}
	tSummerSignPack_NpcReward[3200564]["RewardItem"][1] = {}
	tSummerSignPack_NpcReward[3200564]["RewardItem"][1]["Id"] = 3200564
	tSummerSignPack_NpcReward[3200564]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignPack_NpcReward[3200564]["Log"] = "0,0,0,0,12000434,2,3200564,1"
	tSummerSignPack_NpcReward[3200564]["Space"] = 1
	
	----------------------------------------------------分割线---------------------------------------------------------
	-- 8月普天同庆有礼(8.9)
	-- 在npc处领取 3200766  清凉一夏福利包
	tSummerSignPack_NpcReward[3200766] = {}
	tSummerSignPack_NpcReward[3200766]["RewardItem"] = {}
	tSummerSignPack_NpcReward[3200766]["RewardItem"][1] = {}
	tSummerSignPack_NpcReward[3200766]["RewardItem"][1]["Id"] = 3200766
	tSummerSignPack_NpcReward[3200766]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignPack_NpcReward[3200766]["Log"] = "0,0,0,0,12000434,2,3200766,1"
	tSummerSignPack_NpcReward[3200766]["Space"] = 1
	-- 在npc处领取 3200767  骄阳似火福利包
	tSummerSignPack_NpcReward[3200767] = {}
	tSummerSignPack_NpcReward[3200767]["RewardItem"] = {}
	tSummerSignPack_NpcReward[3200767]["RewardItem"][1] = {}
	tSummerSignPack_NpcReward[3200767]["RewardItem"][1]["Id"] = 3200767
	tSummerSignPack_NpcReward[3200767]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignPack_NpcReward[3200767]["Log"] = "0,0,0,0,12000434,2,3200767,1"
	tSummerSignPack_NpcReward[3200767]["Space"] = 1
	-- 在npc处领取 3200768  激情狂欢福利包
	tSummerSignPack_NpcReward[3200768] = {}
	tSummerSignPack_NpcReward[3200768]["RewardItem"] = {}
	tSummerSignPack_NpcReward[3200768]["RewardItem"][1] = {}
	tSummerSignPack_NpcReward[3200768]["RewardItem"][1]["Id"] = 3200768
	tSummerSignPack_NpcReward[3200768]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignPack_NpcReward[3200768]["Log"] = "0,0,0,0,12000434,2,3200768,1"
	tSummerSignPack_NpcReward[3200768]["Space"] = 1

	
local tSummerSignPack_Reward = {}
	-- 3200555	清凉一夏福利包
	tSummerSignPack_Reward[3200555] = {}
	-- 固定奖励	
	tSummerSignPack_Reward[3200555]["RewardItem"] = {}
	tSummerSignPack_Reward[3200555]["RewardItem"][1] = {}
	tSummerSignPack_Reward[3200555]["RewardItem"][1]["Id"] = 723911
	tSummerSignPack_Reward[3200555]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200555]["RewardNoNeedTip"] = 1

	-- 随机奖励
	tSummerSignPack_Reward[3200555][1] = {}
	tSummerSignPack_Reward[3200555][1]["ItemChanceSum"] = 10000
	-- 经验球赠*1	723911 （已经是绑定的）  20%
	tSummerSignPack_Reward[3200555][1][1] = {}
	tSummerSignPack_Reward[3200555][1][1]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200555][1][1]["ItemChance"] = 2000
	tSummerSignPack_Reward[3200555][1][1]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200555][1][1]["Data"] = 723911
	tSummerSignPack_Reward[3200555][1][1]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200555][1][1]["Amount"] = 1
	tSummerSignPack_Reward[3200555][1][1]["Space"] = 2
	tSummerSignPack_Reward[3200555][1][1]["Log"] = "0,0,3200555,1,12000434,2,723911,2"
	-- 流星卷赠	720027   20%
	tSummerSignPack_Reward[3200555][1][2] = {}
	tSummerSignPack_Reward[3200555][1][2]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200555][1][2]["ItemChance"] = 2000
	tSummerSignPack_Reward[3200555][1][2]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200555][1][2]["Data"] = 720027
	tSummerSignPack_Reward[3200555][1][2]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200555][1][2]["Amount"] = 1
	tSummerSignPack_Reward[3200555][1][2]["Zeng"] = 1
	tSummerSignPack_Reward[3200555][1][2]["Space"] = 2
	tSummerSignPack_Reward[3200555][1][2]["Log"] = "0,0,3200555,1,12000434,2,723911[720027],1[1]"
	-- 100点修行值赠	20%
	tSummerSignPack_Reward[3200555][1][3] = {}
	tSummerSignPack_Reward[3200555][1][3]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200555][1][3]["ItemChance"] = 2000
	tSummerSignPack_Reward[3200555][1][3]["Item_1"] = User_AddCultivation
	tSummerSignPack_Reward[3200555][1][3]["Data"] = 100
	tSummerSignPack_Reward[3200555][1][3]["Space"] = 1
	tSummerSignPack_Reward[3200555][1][3]["Log"] = "0,0,3200555,1,12000434,2,723911[6],1[100]"
	-- 微光星陨石*1	3009000 15%
	tSummerSignPack_Reward[3200555][1][4] = {}
	tSummerSignPack_Reward[3200555][1][4]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200555][1][4]["ItemChance"] = 1500
	tSummerSignPack_Reward[3200555][1][4]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200555][1][4]["Data"] = 3009000
	tSummerSignPack_Reward[3200555][1][4]["Attr"] = "0 1 0 2880 1"
	tSummerSignPack_Reward[3200555][1][4]["Amount"] = 1
	tSummerSignPack_Reward[3200555][1][4]["Space"] = 2
	tSummerSignPack_Reward[3200555][1][4]["Log"] = "0,0,3200555,1,12000434,2,723911[3009000],1[1]"
	tSummerSignPack_Reward[3200555][1][4]["Limit"] = 100
	tSummerSignPack_Reward[3200555][1][4]["Pos"] = 0
	tSummerSignPack_Reward[3200555][1][4]["Global"] = 51267
	tSummerSignPack_Reward[3200555][1][4]["Replace"] = User_AddCultivation
	tSummerSignPack_Reward[3200555][1][4]["ReplaceData"] = 100
	tSummerSignPack_Reward[3200555][1][4]["ReplaceSpace"] = 1
	tSummerSignPack_Reward[3200555][1][4]["ReplaceLog"] = "0,0,3200555,1,12000434,2,723911[6],1[100]"
	-- 10W金币	3200560  10%
	tSummerSignPack_Reward[3200555][1][5] = {}
	tSummerSignPack_Reward[3200555][1][5]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200555][1][5]["ItemChance"] = 1000
	tSummerSignPack_Reward[3200555][1][5]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200555][1][5]["Data"] = 3200560
	tSummerSignPack_Reward[3200555][1][5]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200555][1][5]["Amount"] = 1
	tSummerSignPack_Reward[3200555][1][5]["Space"] = 2
	tSummerSignPack_Reward[3200555][1][5]["Log"] = "0,0,3200555,1,12000434,2,723911[3200560],1[1]"
	tSummerSignPack_Reward[3200555][1][5]["Limit"] = 1000
	tSummerSignPack_Reward[3200555][1][5]["Pos"] = 1
	tSummerSignPack_Reward[3200555][1][5]["Global"] = 51267
	tSummerSignPack_Reward[3200555][1][5]["Replace"] = User_AddCultivation
	tSummerSignPack_Reward[3200555][1][5]["ReplaceData"] = 100
	tSummerSignPack_Reward[3200555][1][5]["ReplaceSpace"] = 1
	tSummerSignPack_Reward[3200555][1][5]["ReplaceLog"] = "0,0,3200555,1,12000434,2,723911[6],1[100]"
	-- 龙珠赠	5%
	tSummerSignPack_Reward[3200555][1][6] = {}
	tSummerSignPack_Reward[3200555][1][6]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200555][1][6]["ItemChance"] = 500
	tSummerSignPack_Reward[3200555][1][6]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200555][1][6]["Data"] = 1088000
	tSummerSignPack_Reward[3200555][1][6]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200555][1][6]["Amount"] = 1
	tSummerSignPack_Reward[3200555][1][6]["Zeng"] = 1
	tSummerSignPack_Reward[3200555][1][6]["Space"] = 2
	tSummerSignPack_Reward[3200555][1][6]["Log"] = "0,0,3200555,1,12000434,2,723911[1088000],1[1]"
	-- 30点赠点	8%
	tSummerSignPack_Reward[3200555][1][7] = {}
	tSummerSignPack_Reward[3200555][1][7]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200555][1][7]["ItemChance"] = 800
	tSummerSignPack_Reward[3200555][1][7]["Item_1"] = User_AddEMoneyMono
	tSummerSignPack_Reward[3200555][1][7]["Data"] = 30
	tSummerSignPack_Reward[3200555][1][7]["Space"] = 1
	tSummerSignPack_Reward[3200555][1][7]["Log"] = "0,0,3200555,1,12000434,2,723911[3],1[30]"
	tSummerSignPack_Reward[3200555][1][7]["EmoneyLog"] = "350	20221	0	0	1	"
	-- 狂欢游戏币*1  3200531	 2%
	tSummerSignPack_Reward[3200555][1][8] = {}
	tSummerSignPack_Reward[3200555][1][8]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200555][1][8]["ItemChance"] = 200
	tSummerSignPack_Reward[3200555][1][8]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200555][1][8]["Data"] = 3200531
	tSummerSignPack_Reward[3200555][1][8]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200555][1][8]["Amount"] = 1
	tSummerSignPack_Reward[3200555][1][8]["Space"] = 2
	tSummerSignPack_Reward[3200555][1][8]["Log"] = "0,0,3200555,1,12000434,2,723911[3200531],1[1]"
	tSummerSignPack_Reward[3200555][1][8]["EmoneyLog"] = "350	20230	0	0	1	"
	tSummerSignPack_Reward[3200555][1][8]["Limit"] = 30
	tSummerSignPack_Reward[3200555][1][8]["Pos"] = 2
	tSummerSignPack_Reward[3200555][1][8]["Global"] = 51267
	tSummerSignPack_Reward[3200555][1][8]["Replace"] = User_AddCultivation
	tSummerSignPack_Reward[3200555][1][8]["ReplaceData"] = 100
	tSummerSignPack_Reward[3200555][1][8]["ReplaceSpace"] = 1
	tSummerSignPack_Reward[3200555][1][8]["ReplaceLog"] = "0,0,3200555,1,12000434,2,723911[6],1[100]"
	
	-- 3200556	骄阳似火福利包
	tSummerSignPack_Reward[3200556] = {}
	-- 固定奖励
	tSummerSignPack_Reward[3200556]["RewardItem"] = {}
	tSummerSignPack_Reward[3200556]["RewardItem"][1] = {}
	tSummerSignPack_Reward[3200556]["RewardItem"][1]["Id"] = 723911
	tSummerSignPack_Reward[3200556]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200556]["RewardCultivation"] = {}
	tSummerSignPack_Reward[3200556]["RewardCultivation"]["Value"] = 50
	tSummerSignPack_Reward[3200556]["RewardNoNeedTip"] = 1
	
	-- 随机奖励
	tSummerSignPack_Reward[3200556][1] = {}
	tSummerSignPack_Reward[3200556][1]["ItemChanceSum"] = 10000
	-- 流星卷赠	720027  23%
	tSummerSignPack_Reward[3200556][1][1] = {}
	tSummerSignPack_Reward[3200556][1][1]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200556][1][1]["ItemChance"] = 2300
	tSummerSignPack_Reward[3200556][1][1]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200556][1][1]["Data"] = 720027
	tSummerSignPack_Reward[3200556][1][1]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200556][1][1]["Amount"] = 1
	tSummerSignPack_Reward[3200556][1][1]["Zeng"] = 1
	tSummerSignPack_Reward[3200556][1][1]["Space"] = 2
	tSummerSignPack_Reward[3200556][1][1]["Log"] = "0,0,3200556,1,12000434,2,723911[6][720027],1[50][1]"
	-- P5神魂赠可选  3005892 （已经是绑定的，不可交易）23%
	tSummerSignPack_Reward[3200556][1][2] = {}
	tSummerSignPack_Reward[3200556][1][2]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200556][1][2]["ItemChance"] = 2300
	tSummerSignPack_Reward[3200556][1][2]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200556][1][2]["Data"] = 3005892
	tSummerSignPack_Reward[3200556][1][2]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200556][1][2]["Amount"] = 1
	tSummerSignPack_Reward[3200556][1][2]["Space"] = 2
	tSummerSignPack_Reward[3200556][1][2]["Log"] = "0,0,3200556,1,12000434,2,723911[6][3005892],1[50][1]"
	-- 微光星陨石*2	3009000  18%
	tSummerSignPack_Reward[3200556][1][3] = {}
	tSummerSignPack_Reward[3200556][1][3]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200556][1][3]["ItemChance"] = 1800
	tSummerSignPack_Reward[3200556][1][3]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200556][1][3]["Data"] = 3009000
	tSummerSignPack_Reward[3200556][1][3]["Attr"] = "0 2 0 2880 1"
	tSummerSignPack_Reward[3200556][1][3]["Amount"] = 2
	tSummerSignPack_Reward[3200556][1][3]["Space"] = 3
	tSummerSignPack_Reward[3200556][1][3]["Log"] = "0,0,3200556,1,12000434,2,723911[6][3009000],1[50][2]"
	tSummerSignPack_Reward[3200556][1][3]["Limit"] = 100
	tSummerSignPack_Reward[3200556][1][3]["Pos"] = 0
	tSummerSignPack_Reward[3200556][1][3]["Global"] = 51268
	tSummerSignPack_Reward[3200556][1][3]["Replace"] = Item_AddNewItem
	tSummerSignPack_Reward[3200556][1][3]["ReplaceData"] = 1088000
	tSummerSignPack_Reward[3200556][1][3]["ReplaceAttr"] = "0 1 3"
	tSummerSignPack_Reward[3200556][1][3]["ReplaceAmount"] = 1
	tSummerSignPack_Reward[3200556][1][3]["ReplaceZeng"] = 1
	tSummerSignPack_Reward[3200556][1][3]["ReplaceSpace"] = 2
	tSummerSignPack_Reward[3200556][1][3]["ReplaceLog"] = "0,0,3200556,1,12000434,2,723911[6][1088000],1[50][1]"
	-- 50点赠品天石	12%
	tSummerSignPack_Reward[3200556][1][4] = {}
	tSummerSignPack_Reward[3200556][1][4]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200556][1][4]["ItemChance"] = 1200
	tSummerSignPack_Reward[3200556][1][4]["Item_1"] = User_AddEMoneyMono
	tSummerSignPack_Reward[3200556][1][4]["Data"] = 50
	tSummerSignPack_Reward[3200556][1][4]["Space"] = 1
	tSummerSignPack_Reward[3200556][1][4]["Log"] = "0,0,3200556,1,12000434,2,723911[6][3],1[50][50]"
	tSummerSignPack_Reward[3200556][1][4]["EmoneyLog"] = "350	20222	0	0	1	"
	-- 赤炼石+3赠	730003  10%
	tSummerSignPack_Reward[3200556][1][5] = {}
	tSummerSignPack_Reward[3200556][1][5]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200556][1][5]["ItemChance"] = 1000
	tSummerSignPack_Reward[3200556][1][5]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200556][1][5]["Data"] = 730003
	tSummerSignPack_Reward[3200556][1][5]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200556][1][5]["Amount"] = 1
	tSummerSignPack_Reward[3200556][1][5]["Zeng"] = 1
	tSummerSignPack_Reward[3200556][1][5]["Space"] = 2
	tSummerSignPack_Reward[3200556][1][5]["Log"] = "0,0,3200556,1,12000434,2,723911[6][730003],1[50][1]"
	-- 龙珠赠 1088000	8%
	tSummerSignPack_Reward[3200556][1][6] = {}
	tSummerSignPack_Reward[3200556][1][6]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200556][1][6]["ItemChance"] = 800
	tSummerSignPack_Reward[3200556][1][6]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200556][1][6]["Data"] = 1088000
	tSummerSignPack_Reward[3200556][1][6]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200556][1][6]["Amount"] = 1
	tSummerSignPack_Reward[3200556][1][6]["Zeng"] = 1
	tSummerSignPack_Reward[3200556][1][6]["Space"] = 2
	tSummerSignPack_Reward[3200556][1][6]["Log"] = "0,0,3200556,1,12000434,2,723911[6][1088000],1[50][1]"
	-- 狂欢游戏币*1  3200531	 5%
	tSummerSignPack_Reward[3200556][1][7] = {}
	tSummerSignPack_Reward[3200556][1][7]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200556][1][7]["ItemChance"] = 500
	tSummerSignPack_Reward[3200556][1][7]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200556][1][7]["Data"] = 3200531
	tSummerSignPack_Reward[3200556][1][7]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200556][1][7]["Amount"] = 1
	tSummerSignPack_Reward[3200556][1][7]["Space"] = 2
	tSummerSignPack_Reward[3200556][1][7]["Log"] = "0,0,3200556,1,12000434,2,723911[6][3200531],1[50][1]"
	tSummerSignPack_Reward[3200556][1][7]["EmoneyLog"] = "350	20231	0	0	1	"
	tSummerSignPack_Reward[3200556][1][7]["Limit"] = 50
	tSummerSignPack_Reward[3200556][1][7]["Pos"] = 1
	tSummerSignPack_Reward[3200556][1][7]["Global"] = 51268
	tSummerSignPack_Reward[3200556][1][7]["Replace"] = Item_AddNewItem
	tSummerSignPack_Reward[3200556][1][7]["ReplaceData"] = 720027
	tSummerSignPack_Reward[3200556][1][7]["ReplaceAttr"] = "0 1 3"
	tSummerSignPack_Reward[3200556][1][7]["ReplaceAmount"] = 1
	tSummerSignPack_Reward[3200556][1][7]["ReplaceZeng"] = 1
	tSummerSignPack_Reward[3200556][1][7]["ReplaceSpace"] = 2
	tSummerSignPack_Reward[3200556][1][7]["ReplaceLog"] = "0,0,3200556,1,12000434,2,723911[6][720027],1[50][1]"
	-- 100点非赠天石	1%
	tSummerSignPack_Reward[3200556][1][8] = {}
	tSummerSignPack_Reward[3200556][1][8]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200556][1][8]["ItemChance"] = 100
	tSummerSignPack_Reward[3200556][1][8]["Item_1"] = User_AddEMoney
	tSummerSignPack_Reward[3200556][1][8]["Data"] = 100
	tSummerSignPack_Reward[3200556][1][8]["Space"] = 1
	tSummerSignPack_Reward[3200556][1][8]["Log"] = "0,0,3200556,1,12000434,2,723911[6][2],1[50][100]"
	tSummerSignPack_Reward[3200556][1][8]["EmoneyLog"] = "350	20223	0	0	1	"
	tSummerSignPack_Reward[3200556][1][8]["Limit"] = 10
	tSummerSignPack_Reward[3200556][1][8]["Pos"] = 2
	tSummerSignPack_Reward[3200556][1][8]["Global"] = 51268
	tSummerSignPack_Reward[3200556][1][8]["Replace"] = Item_AddNewItem
	tSummerSignPack_Reward[3200556][1][8]["ReplaceData"] = 720027
	tSummerSignPack_Reward[3200556][1][8]["ReplaceAttr"] = "0 1 3"
	tSummerSignPack_Reward[3200556][1][8]["ReplaceAmount"] = 1
	tSummerSignPack_Reward[3200556][1][8]["ReplaceZeng"] = 1
	tSummerSignPack_Reward[3200556][1][8]["ReplaceSpace"] = 2
	tSummerSignPack_Reward[3200556][1][8]["ReplaceLog"] = "0,0,3200556,1,12000434,2,723911[6][720027],1[50][1]"
	
	-- 3200557	激情狂欢福利包
	tSummerSignPack_Reward[3200557] = {}
	-- 固定奖励
	tSummerSignPack_Reward[3200557]["RewardStrengthValue"] = {}
	tSummerSignPack_Reward[3200557]["RewardStrengthValue"]["Value"] = 300
	tSummerSignPack_Reward[3200557]["RewardNoNeedTip"] = 1
	-- 随机奖励
	tSummerSignPack_Reward[3200557][1] = {}
	tSummerSignPack_Reward[3200557][1]["ItemChanceSum"] = 10000
	-- 狂欢游戏币*1  3200531	50%
	tSummerSignPack_Reward[3200557][1][1] = {}
	tSummerSignPack_Reward[3200557][1][1]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200557][1][1]["ItemChance"] = 5000
	tSummerSignPack_Reward[3200557][1][1]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200557][1][1]["Data"] = 3200531
	tSummerSignPack_Reward[3200557][1][1]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200557][1][1]["Amount"] = 1
	tSummerSignPack_Reward[3200557][1][1]["Zeng"] = 1
	tSummerSignPack_Reward[3200557][1][1]["Space"] = 1
	tSummerSignPack_Reward[3200557][1][1]["Log"] = "0,0,3200557,1,12000434,2,12[3200531],300[1]"
	tSummerSignPack_Reward[3200557][1][1]["EmoneyLog"] = "350	20232	0	0	1	"
	-- 强炼丹*4赠	3003124 （不是绑定的，需要做成赠品） 11%
	tSummerSignPack_Reward[3200557][1][2] = {}
	tSummerSignPack_Reward[3200557][1][2]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200557][1][2]["ItemChance"] = 1100
	tSummerSignPack_Reward[3200557][1][2]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200557][1][2]["Data"] = 3003124
	tSummerSignPack_Reward[3200557][1][2]["Attr"] = "0 4 3"
	tSummerSignPack_Reward[3200557][1][2]["Amount"] = 4
	tSummerSignPack_Reward[3200557][1][2]["Zeng"] = 1
	tSummerSignPack_Reward[3200557][1][2]["Space"] = 1
	tSummerSignPack_Reward[3200557][1][2]["Log"] = "0,0,3200557,1,12000434,2,12[3003124],300[4]"
	-- 大爆丹*4赠 3003126 （不是绑定的，需要做成赠品）	11%
	tSummerSignPack_Reward[3200557][1][3] = {}
	tSummerSignPack_Reward[3200557][1][3]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200557][1][3]["ItemChance"] = 1100
	tSummerSignPack_Reward[3200557][1][3]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200557][1][3]["Data"] = 3003126
	tSummerSignPack_Reward[3200557][1][3]["Attr"] = "0 4 3"
	tSummerSignPack_Reward[3200557][1][3]["Amount"] = 4
	tSummerSignPack_Reward[3200557][1][3]["Zeng"] = 1
	tSummerSignPack_Reward[3200557][1][3]["Space"] = 1
	tSummerSignPack_Reward[3200557][1][3]["Log"] = "0,0,3200557,1,12000434,2,12[3003126],300[4]"
	-- P6神魂可选赠  3005893 （已经是绑定的，不可交易）10%
	tSummerSignPack_Reward[3200557][1][4] = {}
	tSummerSignPack_Reward[3200557][1][4]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200557][1][4]["ItemChance"] = 1000
	tSummerSignPack_Reward[3200557][1][4]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200557][1][4]["Data"] = 3005893
	tSummerSignPack_Reward[3200557][1][4]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200557][1][4]["Amount"] = 1
	tSummerSignPack_Reward[3200557][1][4]["Zeng"] = 1
	tSummerSignPack_Reward[3200557][1][4]["Space"] = 1
	tSummerSignPack_Reward[3200557][1][4]["Log"] = "0,0,3200557,1,12000434,2,12[3005893],300[1]"
	-- 微光星陨石*5	3009000  8%
	tSummerSignPack_Reward[3200557][1][5] = {}
	tSummerSignPack_Reward[3200557][1][5]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200557][1][5]["ItemChance"] = 800
	tSummerSignPack_Reward[3200557][1][5]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200557][1][5]["Data"] = 3009000
	tSummerSignPack_Reward[3200557][1][5]["Attr"] = "0 5 0 2880 1"
	tSummerSignPack_Reward[3200557][1][5]["Amount"] = 5
	tSummerSignPack_Reward[3200557][1][5]["Space"] = 5
	tSummerSignPack_Reward[3200557][1][5]["Log"] = "0,0,3200557,1,12000434,2,12[3009000],300[5]"
	tSummerSignPack_Reward[3200557][1][5]["Limit"] = 1000
	tSummerSignPack_Reward[3200557][1][5]["Pos"] = 0
	tSummerSignPack_Reward[3200557][1][5]["Global"] = 51269
	tSummerSignPack_Reward[3200557][1][5]["Replace"] = Item_AddNewItem
	tSummerSignPack_Reward[3200557][1][5]["ReplaceData"] = 3003126 
	tSummerSignPack_Reward[3200557][1][5]["ReplaceAttr"] = "0 4 3"
	tSummerSignPack_Reward[3200557][1][5]["ReplaceAmount"] = 4
	tSummerSignPack_Reward[3200557][1][5]["ReplaceZeng"] = 1
	tSummerSignPack_Reward[3200557][1][5]["ReplaceSpace"] = 1
	tSummerSignPack_Reward[3200557][1][5]["ReplaceLog"] = "0,0,3200557,1,12000434,2,12[3003126],300[4]"
	-- 100点赠品天石	7%
	tSummerSignPack_Reward[3200557][1][6] = {}
	tSummerSignPack_Reward[3200557][1][6]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200557][1][6]["ItemChance"] = 700
	tSummerSignPack_Reward[3200557][1][6]["Item_1"] = User_AddEMoneyMono
	tSummerSignPack_Reward[3200557][1][6]["Data"] = 100
	tSummerSignPack_Reward[3200557][1][6]["Space"] = 0
	tSummerSignPack_Reward[3200557][1][6]["Log"] = "0,0,3200557,1,12000434,2,12[3],300[100]"
	tSummerSignPack_Reward[3200557][1][6]["EmoneyLog"] = "350	20224	0	0	1	"
	-- 龙珠*1 1088000	2%
	tSummerSignPack_Reward[3200557][1][7] = {}
	tSummerSignPack_Reward[3200557][1][7]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200557][1][7]["ItemChance"] = 200
	tSummerSignPack_Reward[3200557][1][7]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200557][1][7]["Data"] = 1088000
	tSummerSignPack_Reward[3200557][1][7]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200557][1][7]["Amount"] = 1
	tSummerSignPack_Reward[3200557][1][7]["Space"] = 1
	tSummerSignPack_Reward[3200557][1][7]["Log"] = "0,0,3200557,1,12000434,2,12[1088000],300[1]"
	tSummerSignPack_Reward[3200557][1][7]["Limit"] = 100
	tSummerSignPack_Reward[3200557][1][7]["Pos"] = 1
	tSummerSignPack_Reward[3200557][1][7]["Global"] = 51269
	tSummerSignPack_Reward[3200557][1][7]["Replace"] = Item_AddNewItem
	tSummerSignPack_Reward[3200557][1][7]["ReplaceData"] = 3003126
	tSummerSignPack_Reward[3200557][1][7]["ReplaceAttr"] = "0 4 3"
	tSummerSignPack_Reward[3200557][1][7]["ReplaceAmount"] = 4
	tSummerSignPack_Reward[3200557][1][7]["ReplaceZeng"] = 1
	tSummerSignPack_Reward[3200557][1][7]["ReplaceSpace"] = 1
	tSummerSignPack_Reward[3200557][1][7]["ReplaceLog"] = "0,0,3200557,1,12000434,2,12[3003126],300[4]"
	-- 200点非赠天石	1%
	tSummerSignPack_Reward[3200557][1][8] = {}
	tSummerSignPack_Reward[3200557][1][8]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200557][1][8]["ItemChance"] = 100
	tSummerSignPack_Reward[3200557][1][8]["Item_1"] = User_AddEMoney
	tSummerSignPack_Reward[3200557][1][8]["Data"] = 200
	tSummerSignPack_Reward[3200557][1][8]["Space"] = 0
	tSummerSignPack_Reward[3200557][1][8]["Log"] = "0,0,3200557,1,12000434,2,12[2],300[200]"
	tSummerSignPack_Reward[3200557][1][8]["EmoneyLog"] = "350	20225	0	0	1	"
	tSummerSignPack_Reward[3200557][1][8]["Limit"] = 10
	tSummerSignPack_Reward[3200557][1][8]["Pos"] = 2
	tSummerSignPack_Reward[3200557][1][8]["Global"] = 51269
	tSummerSignPack_Reward[3200557][1][8]["Replace"] = Item_AddNewItem
	tSummerSignPack_Reward[3200557][1][8]["ReplaceData"] = 3003126
	tSummerSignPack_Reward[3200557][1][8]["ReplaceAttr"] = "0 4 3"
	tSummerSignPack_Reward[3200557][1][8]["ReplaceAmount"] = 4
	tSummerSignPack_Reward[3200557][1][8]["ReplaceZeng"] = 1
	tSummerSignPack_Reward[3200557][1][8]["ReplaceSpace"] = 1
	tSummerSignPack_Reward[3200557][1][8]["ReplaceLog"] = "0,0,3200557,1,12000434,2,12[3003126],300[4]"
	
	-----------------------------------------------------------------------------------------------------------------
	-- 3200558	小抽奖券礼包
	tSummerSignPack_Reward[3200558] = {}
	tSummerSignPack_Reward[3200558]["DeleteItem"] = {}
	tSummerSignPack_Reward[3200558]["DeleteItem"][1] = {}
	tSummerSignPack_Reward[3200558]["DeleteItem"][1]["Id"] = 3200558
	tSummerSignPack_Reward[3200558]["RewardItem"] = {}
	tSummerSignPack_Reward[3200558]["RewardItem"][1] = {}
	tSummerSignPack_Reward[3200558]["RewardItem"][1]["Id"] = 711504
	tSummerSignPack_Reward[3200558]["RewardItem"][1]["Attr"] = "0 20"
	tSummerSignPack_Reward[3200558]["Log"] = "0,0,3200558,1,12000434,2,711504,20"
	tSummerSignPack_Reward[3200558]["Talk"] = tSummerSignPack_Text[3200558]
	tSummerSignPack_Reward[3200558]["RewardEffect"] = {}
	tSummerSignPack_Reward[3200558]["RewardEffect"]["SzObj"] = "self" --添加光效时的对象，默认为self
	tSummerSignPack_Reward[3200558]["RewardEffect"]["Effect"] = "zf2-e280" --添加光效名字
	-- 3200559	小抽奖券黄金礼包
	tSummerSignPack_Reward[3200559] = {}
	tSummerSignPack_Reward[3200559]["DeleteItem"] = {}
	tSummerSignPack_Reward[3200559]["DeleteItem"][1] = {}
	tSummerSignPack_Reward[3200559]["DeleteItem"][1]["Id"] = 3200559
	tSummerSignPack_Reward[3200559]["RewardItem"] = {}
	tSummerSignPack_Reward[3200559]["RewardItem"][1] = {}
	tSummerSignPack_Reward[3200559]["RewardItem"][1]["Id"] = 711504
	tSummerSignPack_Reward[3200559]["RewardItem"][1]["Attr"] = "0 40"
	tSummerSignPack_Reward[3200559]["Log"] = "0,0,3200559,1,12000434,2,711504,40"
	tSummerSignPack_Reward[3200559]["Talk"] = tSummerSignPack_Text[3200559]
	tSummerSignPack_Reward[3200559]["RewardEffect"] = {}
	tSummerSignPack_Reward[3200559]["RewardEffect"]["SzObj"] = "self" --添加光效时的对象，默认为self
	tSummerSignPack_Reward[3200559]["RewardEffect"]["Effect"] = "zf2-e280" --添加光效名字
	-- 3200560	富贵钱袋
	tSummerSignPack_Reward[3200560] = {}
	tSummerSignPack_Reward[3200560]["DeleteItem"] = {}
	tSummerSignPack_Reward[3200560]["DeleteItem"][1] = {}
	tSummerSignPack_Reward[3200560]["DeleteItem"][1]["Id"] = 3200560
	tSummerSignPack_Reward[3200560]["RewardMoney"] = {}
	tSummerSignPack_Reward[3200560]["RewardMoney"]["Value"] = 100000
	tSummerSignPack_Reward[3200560]["Log"] = "0,0,3200560,1,12000434,2,1,100000"
	tSummerSignPack_Reward[3200560]["RewardEffect"] = {}
	tSummerSignPack_Reward[3200560]["RewardEffect"]["SzObj"] = "self" --添加光效时的对象，默认为self
	tSummerSignPack_Reward[3200560]["RewardEffect"]["Effect"] = "zf2-e280" --添加光效名字
	-- 3200561	福气天石包
	tSummerSignPack_Reward[3200561] = {}
	tSummerSignPack_Reward[3200561]["DeleteItem"] = {}
	tSummerSignPack_Reward[3200561]["DeleteItem"][1] = {}
	tSummerSignPack_Reward[3200561]["DeleteItem"][1]["Id"] = 3200561
	tSummerSignPack_Reward[3200561]["RewardEMoney"] = {}
	tSummerSignPack_Reward[3200561]["RewardEMoney"]["Value"] = 1000
	tSummerSignPack_Reward[3200561]["Log"] = "0,0,3200561,1,12000434,2,2,1000"
	tSummerSignPack_Reward[3200561]["RewardEffect"] = {}
	tSummerSignPack_Reward[3200561]["RewardEffect"]["SzObj"] = "self" --添加光效时的对象，默认为self
	tSummerSignPack_Reward[3200561]["RewardEffect"]["Effect"] = "zf2-e280" --添加光效名字
	-- 3200562	财运天石包
	tSummerSignPack_Reward[3200562] = {}
	tSummerSignPack_Reward[3200562]["DeleteItem"] = {}
	tSummerSignPack_Reward[3200562]["DeleteItem"][1] = {}
	tSummerSignPack_Reward[3200562]["DeleteItem"][1]["Id"] = 3200562
	tSummerSignPack_Reward[3200562]["RewardEMoney"] = {}
	tSummerSignPack_Reward[3200562]["RewardEMoney"]["Value"] = 5000
	tSummerSignPack_Reward[3200562]["Log"] = "0,0,3200562,1,12000434,2,2,5000"
	tSummerSignPack_Reward[3200562]["RewardEffect"] = {}
	tSummerSignPack_Reward[3200562]["RewardEffect"]["SzObj"] = "self" --添加光效时的对象，默认为self
	tSummerSignPack_Reward[3200562]["RewardEffect"]["Effect"] = "zf2-e280" --添加光效名字


---------------------------------------分割线-------------------------------------------------	
-- 8月普天同庆有礼(8.9)
-- 3200766	FreshBenefitPack
	tSummerSignPack_Reward[3200766] = {}
	-- 固定奖励	
	tSummerSignPack_Reward[3200766]["RewardItem"] = {}
	tSummerSignPack_Reward[3200766]["RewardItem"][1] = {}
	tSummerSignPack_Reward[3200766]["RewardItem"][1]["Id"] = 723911
	tSummerSignPack_Reward[3200766]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200766]["RewardNoNeedTip"] = 1

	-- 随机奖励
	tSummerSignPack_Reward[3200766][1] = {}
	tSummerSignPack_Reward[3200766][1]["ItemChanceSum"] = 10000
	-- 经验球赠*1	723911 （已经是绑定的）  20%
	tSummerSignPack_Reward[3200766][1][1] = {}
	tSummerSignPack_Reward[3200766][1][1]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200766][1][1]["ItemChance"] = 2000
	tSummerSignPack_Reward[3200766][1][1]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200766][1][1]["Data"] = 723911
	tSummerSignPack_Reward[3200766][1][1]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200766][1][1]["Amount"] = 1
	tSummerSignPack_Reward[3200766][1][1]["Space"] = 2
	tSummerSignPack_Reward[3200766][1][1]["Log"] = "0,0,3200766,1,12000434,2,723911,2"
	-- 流星卷赠	720027   20%
	tSummerSignPack_Reward[3200766][1][2] = {}
	tSummerSignPack_Reward[3200766][1][2]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200766][1][2]["ItemChance"] = 2000
	tSummerSignPack_Reward[3200766][1][2]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200766][1][2]["Data"] = 720027
	tSummerSignPack_Reward[3200766][1][2]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200766][1][2]["Amount"] = 1
	tSummerSignPack_Reward[3200766][1][2]["Zeng"] = 1
	tSummerSignPack_Reward[3200766][1][2]["Space"] = 2
	tSummerSignPack_Reward[3200766][1][2]["Log"] = "0,0,3200766,1,12000434,2,723911[720027],1[1]"
	-- 100点修行值赠	20%
	tSummerSignPack_Reward[3200766][1][3] = {}
	tSummerSignPack_Reward[3200766][1][3]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200766][1][3]["ItemChance"] = 2000
	tSummerSignPack_Reward[3200766][1][3]["Item_1"] = User_AddCultivation
	tSummerSignPack_Reward[3200766][1][3]["Data"] = 100
	tSummerSignPack_Reward[3200766][1][3]["Space"] = 1
	tSummerSignPack_Reward[3200766][1][3]["Log"] = "0,0,3200766,1,12000434,2,723911[6],1[100]"
	-- 微光星陨石*1	3009000 15%
	tSummerSignPack_Reward[3200766][1][4] = {}
	tSummerSignPack_Reward[3200766][1][4]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200766][1][4]["ItemChance"] = 1500
	tSummerSignPack_Reward[3200766][1][4]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200766][1][4]["Data"] = 3009000
	tSummerSignPack_Reward[3200766][1][4]["Attr"] = "0 1 0 2880 1"
	tSummerSignPack_Reward[3200766][1][4]["Amount"] = 1
	tSummerSignPack_Reward[3200766][1][4]["Space"] = 2
	tSummerSignPack_Reward[3200766][1][4]["Log"] = "0,0,3200766,1,12000434,2,723911[3009000],1[1]"
	tSummerSignPack_Reward[3200766][1][4]["Limit"] = 100
	tSummerSignPack_Reward[3200766][1][4]["Pos"] = 0
	tSummerSignPack_Reward[3200766][1][4]["Global"] = 51267
	tSummerSignPack_Reward[3200766][1][4]["Replace"] = User_AddCultivation
	tSummerSignPack_Reward[3200766][1][4]["ReplaceData"] = 100
	tSummerSignPack_Reward[3200766][1][4]["ReplaceSpace"] = 1
	tSummerSignPack_Reward[3200766][1][4]["ReplaceLog"] = "0,0,3200766,1,12000434,2,723911[6],1[100]"
	-- 10W金币	3200560  10%
	tSummerSignPack_Reward[3200766][1][5] = {}
	tSummerSignPack_Reward[3200766][1][5]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200766][1][5]["ItemChance"] = 1000
	tSummerSignPack_Reward[3200766][1][5]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200766][1][5]["Data"] = 3200560
	tSummerSignPack_Reward[3200766][1][5]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200766][1][5]["Amount"] = 1
	tSummerSignPack_Reward[3200766][1][5]["Space"] = 2
	tSummerSignPack_Reward[3200766][1][5]["Log"] = "0,0,3200766,1,12000434,2,723911[3200560],1[1]"
	tSummerSignPack_Reward[3200766][1][5]["Limit"] = 1000
	tSummerSignPack_Reward[3200766][1][5]["Pos"] = 1
	tSummerSignPack_Reward[3200766][1][5]["Global"] = 51267
	tSummerSignPack_Reward[3200766][1][5]["Replace"] = User_AddCultivation
	tSummerSignPack_Reward[3200766][1][5]["ReplaceData"] = 100
	tSummerSignPack_Reward[3200766][1][5]["ReplaceSpace"] = 1
	tSummerSignPack_Reward[3200766][1][5]["ReplaceLog"] = "0,0,3200766,1,12000434,2,723911[6],1[100]"
	-- 龙珠赠	5%
	tSummerSignPack_Reward[3200766][1][6] = {}
	tSummerSignPack_Reward[3200766][1][6]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200766][1][6]["ItemChance"] = 500
	tSummerSignPack_Reward[3200766][1][6]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200766][1][6]["Data"] = 1088000
	tSummerSignPack_Reward[3200766][1][6]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200766][1][6]["Amount"] = 1
	tSummerSignPack_Reward[3200766][1][6]["Zeng"] = 1
	tSummerSignPack_Reward[3200766][1][6]["Space"] = 2
	tSummerSignPack_Reward[3200766][1][6]["Log"] = "0,0,3200766,1,12000434,2,723911[1088000],1[1]"
	-- 30点赠点	8%
	tSummerSignPack_Reward[3200766][1][7] = {}
	tSummerSignPack_Reward[3200766][1][7]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200766][1][7]["ItemChance"] = 800
	tSummerSignPack_Reward[3200766][1][7]["Item_1"] = User_AddEMoneyMono
	tSummerSignPack_Reward[3200766][1][7]["Data"] = 30
	tSummerSignPack_Reward[3200766][1][7]["Space"] = 1
	tSummerSignPack_Reward[3200766][1][7]["Log"] = "0,0,3200766,1,12000434,2,723911[3],1[30]"
	tSummerSignPack_Reward[3200766][1][7]["EmoneyLog"] = "350	20221	0	0	1	"
	-- 改为 +2 Stone(B) 730002	2%
	tSummerSignPack_Reward[3200766][1][8] = {}
	tSummerSignPack_Reward[3200766][1][8]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200766][1][8]["ItemChance"] = 200
	tSummerSignPack_Reward[3200766][1][8]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200766][1][8]["Data"] = 730002
	tSummerSignPack_Reward[3200766][1][8]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200766][1][8]["Zeng"] = 1
	tSummerSignPack_Reward[3200766][1][8]["Amount"] = 1
	tSummerSignPack_Reward[3200766][1][8]["Space"] = 2
	tSummerSignPack_Reward[3200766][1][8]["Log"] = "0,0,3200766,1,12000434,2,723911[730002],1[1]"
	tSummerSignPack_Reward[3200766][1][8]["EmoneyLog"] = "350	20230	0	0	1	"
	tSummerSignPack_Reward[3200766][1][8]["Limit"] = 30
	tSummerSignPack_Reward[3200766][1][8]["Pos"] = 2
	tSummerSignPack_Reward[3200766][1][8]["Global"] = 51267
	tSummerSignPack_Reward[3200766][1][8]["Replace"] = User_AddCultivation
	tSummerSignPack_Reward[3200766][1][8]["ReplaceData"] = 100
	tSummerSignPack_Reward[3200766][1][8]["ReplaceSpace"] = 1
	tSummerSignPack_Reward[3200766][1][8]["ReplaceLog"] = "0,0,3200766,1,12000434,2,723911[6],1[100]"
	
	-- 3200767	ShinyBenefitPack
	tSummerSignPack_Reward[3200767] = {}
	-- 固定奖励
	tSummerSignPack_Reward[3200767]["RewardItem"] = {}
	tSummerSignPack_Reward[3200767]["RewardItem"][1] = {}
	tSummerSignPack_Reward[3200767]["RewardItem"][1]["Id"] = 723911
	tSummerSignPack_Reward[3200767]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200767]["RewardCultivation"] = {}
	tSummerSignPack_Reward[3200767]["RewardCultivation"]["Value"] = 50
	tSummerSignPack_Reward[3200767]["RewardNoNeedTip"] = 1
	
	-- 随机奖励
	tSummerSignPack_Reward[3200767][1] = {}
	tSummerSignPack_Reward[3200767][1]["ItemChanceSum"] = 10000
	-- 流星卷赠	720027  23%
	tSummerSignPack_Reward[3200767][1][1] = {}
	tSummerSignPack_Reward[3200767][1][1]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200767][1][1]["ItemChance"] = 2300
	tSummerSignPack_Reward[3200767][1][1]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200767][1][1]["Data"] = 720027
	tSummerSignPack_Reward[3200767][1][1]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200767][1][1]["Amount"] = 1
	tSummerSignPack_Reward[3200767][1][1]["Zeng"] = 1
	tSummerSignPack_Reward[3200767][1][1]["Space"] = 2
	tSummerSignPack_Reward[3200767][1][1]["Log"] = "0,0,3200767,1,12000434,2,723911[6][720027],1[50][1]"
	-- P5神魂赠可选  3005892 （已经是绑定的，不可交易）23%
	tSummerSignPack_Reward[3200767][1][2] = {}
	tSummerSignPack_Reward[3200767][1][2]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200767][1][2]["ItemChance"] = 2300
	tSummerSignPack_Reward[3200767][1][2]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200767][1][2]["Data"] = 3005892
	tSummerSignPack_Reward[3200767][1][2]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200767][1][2]["Amount"] = 1
	tSummerSignPack_Reward[3200767][1][2]["Space"] = 2
	tSummerSignPack_Reward[3200767][1][2]["Log"] = "0,0,3200767,1,12000434,2,723911[6][3005892],1[50][1]"
	-- 微光星陨石*2	3009000  18%
	tSummerSignPack_Reward[3200767][1][3] = {}
	tSummerSignPack_Reward[3200767][1][3]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200767][1][3]["ItemChance"] = 1800
	tSummerSignPack_Reward[3200767][1][3]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200767][1][3]["Data"] = 3009000
	tSummerSignPack_Reward[3200767][1][3]["Attr"] = "0 2 0 2880 1"
	tSummerSignPack_Reward[3200767][1][3]["Amount"] = 2
	tSummerSignPack_Reward[3200767][1][3]["Space"] = 3
	tSummerSignPack_Reward[3200767][1][3]["Log"] = "0,0,3200767,1,12000434,2,723911[6][3009000],1[50][2]"
	tSummerSignPack_Reward[3200767][1][3]["Limit"] = 100
	tSummerSignPack_Reward[3200767][1][3]["Pos"] = 0
	tSummerSignPack_Reward[3200767][1][3]["Global"] = 51268
	tSummerSignPack_Reward[3200767][1][3]["Replace"] = Item_AddNewItem
	tSummerSignPack_Reward[3200767][1][3]["ReplaceData"] = 1088000
	tSummerSignPack_Reward[3200767][1][3]["ReplaceAttr"] = "0 1 3"
	tSummerSignPack_Reward[3200767][1][3]["ReplaceAmount"] = 1
	tSummerSignPack_Reward[3200767][1][3]["ReplaceZeng"] = 1
	tSummerSignPack_Reward[3200767][1][3]["ReplaceSpace"] = 2
	tSummerSignPack_Reward[3200767][1][3]["ReplaceLog"] = "0,0,3200767,1,12000434,2,723911[6][1088000],1[50][1]"
	-- 50点赠品天石	12%
	tSummerSignPack_Reward[3200767][1][4] = {}
	tSummerSignPack_Reward[3200767][1][4]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200767][1][4]["ItemChance"] = 1200
	tSummerSignPack_Reward[3200767][1][4]["Item_1"] = User_AddEMoneyMono
	tSummerSignPack_Reward[3200767][1][4]["Data"] = 50
	tSummerSignPack_Reward[3200767][1][4]["Space"] = 1
	tSummerSignPack_Reward[3200767][1][4]["Log"] = "0,0,3200767,1,12000434,2,723911[6][3],1[50][50]"
	tSummerSignPack_Reward[3200767][1][4]["EmoneyLog"] = "350	20222	0	0	1	"
	-- 赤炼石+3赠	730003  10%
	tSummerSignPack_Reward[3200767][1][5] = {}
	tSummerSignPack_Reward[3200767][1][5]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200767][1][5]["ItemChance"] = 1000
	tSummerSignPack_Reward[3200767][1][5]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200767][1][5]["Data"] = 730003
	tSummerSignPack_Reward[3200767][1][5]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200767][1][5]["Amount"] = 1
	tSummerSignPack_Reward[3200767][1][5]["Zeng"] = 1
	tSummerSignPack_Reward[3200767][1][5]["Space"] = 2
	tSummerSignPack_Reward[3200767][1][5]["Log"] = "0,0,3200767,1,12000434,2,723911[6][730003],1[50][1]"
	-- 龙珠赠 1088000	8%
	tSummerSignPack_Reward[3200767][1][6] = {}
	tSummerSignPack_Reward[3200767][1][6]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200767][1][6]["ItemChance"] = 800
	tSummerSignPack_Reward[3200767][1][6]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200767][1][6]["Data"] = 1088000
	tSummerSignPack_Reward[3200767][1][6]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200767][1][6]["Amount"] = 1
	tSummerSignPack_Reward[3200767][1][6]["Zeng"] = 1
	tSummerSignPack_Reward[3200767][1][6]["Space"] = 2
	tSummerSignPack_Reward[3200767][1][6]["Log"] = "0,0,3200767,1,12000434,2,723911[6][1088000],1[50][1]"
	-- 改为 PermanentStone  723694  5%
	tSummerSignPack_Reward[3200767][1][7] = {}
	tSummerSignPack_Reward[3200767][1][7]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200767][1][7]["ItemChance"] = 500
	tSummerSignPack_Reward[3200767][1][7]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200767][1][7]["Data"] = 723694
	tSummerSignPack_Reward[3200767][1][7]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200767][1][7]["Amount"] = 1
	tSummerSignPack_Reward[3200767][1][7]["Zeng"] = 1
	tSummerSignPack_Reward[3200767][1][7]["Space"] = 2
	tSummerSignPack_Reward[3200767][1][7]["Log"] = "0,0,3200767,1,12000434,2,723911[6][723694],1[50][1]"
	tSummerSignPack_Reward[3200767][1][7]["EmoneyLog"] = "350	20231	0	0	1	"
	tSummerSignPack_Reward[3200767][1][7]["Limit"] = 50
	tSummerSignPack_Reward[3200767][1][7]["Pos"] = 1
	tSummerSignPack_Reward[3200767][1][7]["Global"] = 51268
	tSummerSignPack_Reward[3200767][1][7]["Replace"] = Item_AddNewItem
	tSummerSignPack_Reward[3200767][1][7]["ReplaceData"] = 720027
	tSummerSignPack_Reward[3200767][1][7]["ReplaceAttr"] = "0 1 3"
	tSummerSignPack_Reward[3200767][1][7]["ReplaceAmount"] = 1
	tSummerSignPack_Reward[3200767][1][7]["ReplaceZeng"] = 1
	tSummerSignPack_Reward[3200767][1][7]["ReplaceSpace"] = 2
	tSummerSignPack_Reward[3200767][1][7]["ReplaceLog"] = "0,0,3200767,1,12000434,2,723911[6][720027],1[50][1]"
	-- 100点非赠天石	1%
	tSummerSignPack_Reward[3200767][1][8] = {}
	tSummerSignPack_Reward[3200767][1][8]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200767][1][8]["ItemChance"] = 100
	tSummerSignPack_Reward[3200767][1][8]["Item_1"] = User_AddEMoney
	tSummerSignPack_Reward[3200767][1][8]["Data"] = 100
	tSummerSignPack_Reward[3200767][1][8]["Space"] = 1
	tSummerSignPack_Reward[3200767][1][8]["Log"] = "0,0,3200767,1,12000434,2,723911[6][2],1[50][100]"
	tSummerSignPack_Reward[3200767][1][8]["EmoneyLog"] = "350	20223	0	0	1	"
	tSummerSignPack_Reward[3200767][1][8]["Limit"] = 10
	tSummerSignPack_Reward[3200767][1][8]["Pos"] = 2
	tSummerSignPack_Reward[3200767][1][8]["Global"] = 51268
	tSummerSignPack_Reward[3200767][1][8]["Replace"] = Item_AddNewItem
	tSummerSignPack_Reward[3200767][1][8]["ReplaceData"] = 720027
	tSummerSignPack_Reward[3200767][1][8]["ReplaceAttr"] = "0 1 3"
	tSummerSignPack_Reward[3200767][1][8]["ReplaceAmount"] = 1
	tSummerSignPack_Reward[3200767][1][8]["ReplaceZeng"] = 1
	tSummerSignPack_Reward[3200767][1][8]["ReplaceSpace"] = 2
	tSummerSignPack_Reward[3200767][1][8]["ReplaceLog"] = "0,0,3200767,1,12000434,2,723911[6][720027],1[50][1]"
	
	-- 3200768	CrazyBenefitPack
	tSummerSignPack_Reward[3200768] = {}
	-- 固定奖励
	tSummerSignPack_Reward[3200768]["RewardStrengthValue"] = {}
	tSummerSignPack_Reward[3200768]["RewardStrengthValue"]["Value"] = 300
	tSummerSignPack_Reward[3200768]["RewardNoNeedTip"] = 1
	-- 随机奖励
	tSummerSignPack_Reward[3200768][1] = {}
	tSummerSignPack_Reward[3200768][1]["ItemChanceSum"] = 10000
	-- 改为 微光星陨石*4  3009000  50%
	tSummerSignPack_Reward[3200768][1][1] = {}
	tSummerSignPack_Reward[3200768][1][1]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200768][1][1]["ItemChance"] = 5000
	tSummerSignPack_Reward[3200768][1][1]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200768][1][1]["Data"] = 3009000
	tSummerSignPack_Reward[3200768][1][1]["Attr"] = "0 4 0 2880 1"
	tSummerSignPack_Reward[3200768][1][1]["Amount"] = 4
	tSummerSignPack_Reward[3200768][1][1]["Space"] = 4
	tSummerSignPack_Reward[3200768][1][1]["Log"] = "0,0,3200768,1,12000434,2,12[3009000],300[4]"
	tSummerSignPack_Reward[3200768][1][1]["EmoneyLog"] = "350	20232	0	0	1	"
	-- 强炼丹*4赠	3003124 （不是绑定的，需要做成赠品） 11%
	tSummerSignPack_Reward[3200768][1][2] = {}
	tSummerSignPack_Reward[3200768][1][2]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200768][1][2]["ItemChance"] = 1100
	tSummerSignPack_Reward[3200768][1][2]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200768][1][2]["Data"] = 3003124
	tSummerSignPack_Reward[3200768][1][2]["Attr"] = "0 4 3"
	tSummerSignPack_Reward[3200768][1][2]["Amount"] = 4
	tSummerSignPack_Reward[3200768][1][2]["Zeng"] = 1
	tSummerSignPack_Reward[3200768][1][2]["Space"] = 1
	tSummerSignPack_Reward[3200768][1][2]["Log"] = "0,0,3200768,1,12000434,2,12[3003124],300[4]"
	-- 大爆丹*4赠 3003126 （不是绑定的，需要做成赠品）	11%
	tSummerSignPack_Reward[3200768][1][3] = {}
	tSummerSignPack_Reward[3200768][1][3]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200768][1][3]["ItemChance"] = 1100
	tSummerSignPack_Reward[3200768][1][3]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200768][1][3]["Data"] = 3003126
	tSummerSignPack_Reward[3200768][1][3]["Attr"] = "0 4 3"
	tSummerSignPack_Reward[3200768][1][3]["Amount"] = 4
	tSummerSignPack_Reward[3200768][1][3]["Zeng"] = 1
	tSummerSignPack_Reward[3200768][1][3]["Space"] = 1
	tSummerSignPack_Reward[3200768][1][3]["Log"] = "0,0,3200768,1,12000434,2,12[3003126],300[4]"
	-- P6神魂可选赠  3005893 （已经是绑定的，不可交易）10%
	tSummerSignPack_Reward[3200768][1][4] = {}
	tSummerSignPack_Reward[3200768][1][4]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200768][1][4]["ItemChance"] = 1000
	tSummerSignPack_Reward[3200768][1][4]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200768][1][4]["Data"] = 3005893
	tSummerSignPack_Reward[3200768][1][4]["Attr"] = "0 1 3"
	tSummerSignPack_Reward[3200768][1][4]["Amount"] = 1
	tSummerSignPack_Reward[3200768][1][4]["Zeng"] = 1
	tSummerSignPack_Reward[3200768][1][4]["Space"] = 1
	tSummerSignPack_Reward[3200768][1][4]["Log"] = "0,0,3200768,1,12000434,2,12[3005893],300[1]"
	-- 改为 明亮星陨石*1  BrightStarStone  3009001  8%
	tSummerSignPack_Reward[3200768][1][5] = {}
	tSummerSignPack_Reward[3200768][1][5]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200768][1][5]["ItemChance"] = 800
	tSummerSignPack_Reward[3200768][1][5]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200768][1][5]["Data"] = 3009001
	tSummerSignPack_Reward[3200768][1][5]["Attr"] = "0 1 0 2880 1"
	tSummerSignPack_Reward[3200768][1][5]["Amount"] = 1
	tSummerSignPack_Reward[3200768][1][5]["Space"] = 1
	tSummerSignPack_Reward[3200768][1][5]["Log"] = "0,0,3200768,1,12000434,2,12[3009001],300[1]"
	tSummerSignPack_Reward[3200768][1][5]["Limit"] = 1000
	tSummerSignPack_Reward[3200768][1][5]["Pos"] = 0
	tSummerSignPack_Reward[3200768][1][5]["Global"] = 51269
	tSummerSignPack_Reward[3200768][1][5]["Replace"] = Item_AddNewItem
	tSummerSignPack_Reward[3200768][1][5]["ReplaceData"] = 3003126 
	tSummerSignPack_Reward[3200768][1][5]["ReplaceAttr"] = "0 4 3"
	tSummerSignPack_Reward[3200768][1][5]["ReplaceAmount"] = 4
	tSummerSignPack_Reward[3200768][1][5]["ReplaceZeng"] = 1
	tSummerSignPack_Reward[3200768][1][5]["ReplaceSpace"] = 1
	tSummerSignPack_Reward[3200768][1][5]["ReplaceLog"] = "0,0,3200768,1,12000434,2,12[3003126],300[4]"
	-- 100点赠品天石	7%
	tSummerSignPack_Reward[3200768][1][6] = {}
	tSummerSignPack_Reward[3200768][1][6]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200768][1][6]["ItemChance"] = 700
	tSummerSignPack_Reward[3200768][1][6]["Item_1"] = User_AddEMoneyMono
	tSummerSignPack_Reward[3200768][1][6]["Data"] = 100
	tSummerSignPack_Reward[3200768][1][6]["Space"] = 0
	tSummerSignPack_Reward[3200768][1][6]["Log"] = "0,0,3200768,1,12000434,2,12[3],300[100]"
	tSummerSignPack_Reward[3200768][1][6]["EmoneyLog"] = "350	20224	0	0	1	"
	-- 龙珠*1 1088000	2%
	tSummerSignPack_Reward[3200768][1][7] = {}
	tSummerSignPack_Reward[3200768][1][7]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200768][1][7]["ItemChance"] = 200
	tSummerSignPack_Reward[3200768][1][7]["Item_1"] = Item_AddNewItem
	tSummerSignPack_Reward[3200768][1][7]["Data"] = 1088000
	tSummerSignPack_Reward[3200768][1][7]["Attr"] = "0 1"
	tSummerSignPack_Reward[3200768][1][7]["Amount"] = 1
	tSummerSignPack_Reward[3200768][1][7]["Space"] = 1
	tSummerSignPack_Reward[3200768][1][7]["Log"] = "0,0,3200768,1,12000434,2,12[1088000],300[1]"
	tSummerSignPack_Reward[3200768][1][7]["Limit"] = 100
	tSummerSignPack_Reward[3200768][1][7]["Pos"] = 1
	tSummerSignPack_Reward[3200768][1][7]["Global"] = 51269
	tSummerSignPack_Reward[3200768][1][7]["Replace"] = Item_AddNewItem
	tSummerSignPack_Reward[3200768][1][7]["ReplaceData"] = 3003126
	tSummerSignPack_Reward[3200768][1][7]["ReplaceAttr"] = "0 4 3"
	tSummerSignPack_Reward[3200768][1][7]["ReplaceAmount"] = 4
	tSummerSignPack_Reward[3200768][1][7]["ReplaceZeng"] = 1
	tSummerSignPack_Reward[3200768][1][7]["ReplaceSpace"] = 1
	tSummerSignPack_Reward[3200768][1][7]["ReplaceLog"] = "0,0,3200768,1,12000434,2,12[3003126],300[4]"
	-- 200点非赠天石	1%
	tSummerSignPack_Reward[3200768][1][8] = {}
	tSummerSignPack_Reward[3200768][1][8]["RandomItemChanceType"] = 2
	tSummerSignPack_Reward[3200768][1][8]["ItemChance"] = 100
	tSummerSignPack_Reward[3200768][1][8]["Item_1"] = User_AddEMoney
	tSummerSignPack_Reward[3200768][1][8]["Data"] = 200
	tSummerSignPack_Reward[3200768][1][8]["Space"] = 0
	tSummerSignPack_Reward[3200768][1][8]["Log"] = "0,0,3200768,1,12000434,2,12[2],300[200]"
	tSummerSignPack_Reward[3200768][1][8]["EmoneyLog"] = "350	20225	0	0	1	"
	tSummerSignPack_Reward[3200768][1][8]["Limit"] = 10
	tSummerSignPack_Reward[3200768][1][8]["Pos"] = 2
	tSummerSignPack_Reward[3200768][1][8]["Global"] = 51269
	tSummerSignPack_Reward[3200768][1][8]["Replace"] = Item_AddNewItem
	tSummerSignPack_Reward[3200768][1][8]["ReplaceData"] = 3003126
	tSummerSignPack_Reward[3200768][1][8]["ReplaceAttr"] = "0 4 3"
	tSummerSignPack_Reward[3200768][1][8]["ReplaceAmount"] = 4
	tSummerSignPack_Reward[3200768][1][8]["ReplaceZeng"] = 1
	tSummerSignPack_Reward[3200768][1][8]["ReplaceSpace"] = 1
	tSummerSignPack_Reward[3200768][1][8]["ReplaceLog"] = "0,0,3200768,1,12000434,2,12[3003126],300[4]"
-----------------------------------------------------------------------------------------------------------------

local tSummerSignPack_EmoneyPack = {}	
	-- 3200563	PerfectSummerPack
	tSummerSignPack_EmoneyPack[3200563] = {}
	tSummerSignPack_EmoneyPack[3200563][1] = {}
	tSummerSignPack_EmoneyPack[3200563][1]["ItemChanceSum"] = 10000
	-- 500点锁妖盒  720671	45.00%
	tSummerSignPack_EmoneyPack[3200563][1][1] = {}
	tSummerSignPack_EmoneyPack[3200563][1][1]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200563][1][1]["ItemChance"] = 4500
	tSummerSignPack_EmoneyPack[3200563][1][1]["Item_1"] = 720671
	tSummerSignPack_EmoneyPack[3200563][1][1]["Attr"] = "0 1"
	tSummerSignPack_EmoneyPack[3200563][1][1]["Amount"] = 1
	-- tSummerSignPack_EmoneyPack[3200563][1][1]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][1]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][1]["RewardItem"][1]["Id"] = 720671
	-- tSummerSignPack_EmoneyPack[3200563][1][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tSummerSignPack_EmoneyPack[3200563][1][1]["RewardItem"][1]["Amount"] = 1
	tSummerSignPack_EmoneyPack[3200563][1][1]["Log"] = "0,0,3200563[2],1[499],12000434,2,720671,1"
	tSummerSignPack_EmoneyPack[3200563][1][1]["Space"] = 1
	-- 小抽奖券*40	3200559  18.00%
	tSummerSignPack_EmoneyPack[3200563][1][2] = {}
	tSummerSignPack_EmoneyPack[3200563][1][2]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200563][1][2]["ItemChance"] = 1800
	tSummerSignPack_EmoneyPack[3200563][1][2]["Item_1"] = 3200559
	tSummerSignPack_EmoneyPack[3200563][1][2]["Attr"] = "0 1"
	tSummerSignPack_EmoneyPack[3200563][1][2]["Amount"] = 1
	-- tSummerSignPack_EmoneyPack[3200563][1][2]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][2]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][2]["RewardItem"][1]["Id"] = 3200559
	-- tSummerSignPack_EmoneyPack[3200563][1][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tSummerSignPack_EmoneyPack[3200563][1][2]["RewardItem"][1]["Amount"] = 1
	tSummerSignPack_EmoneyPack[3200563][1][2]["Log"] = "0,0,3200563[2],1[499],12000434,2,3200559,1"
	tSummerSignPack_EmoneyPack[3200563][1][2]["Space"] = 1
	-- 回气丹*5	729242  16.00%
	tSummerSignPack_EmoneyPack[3200563][1][3] = {}
	tSummerSignPack_EmoneyPack[3200563][1][3]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200563][1][3]["ItemChance"] = 1600
	tSummerSignPack_EmoneyPack[3200563][1][3]["Item_1"] = 729242
	tSummerSignPack_EmoneyPack[3200563][1][3]["Attr"] = "0 5"
	tSummerSignPack_EmoneyPack[3200563][1][3]["Amount"] = 5
	-- tSummerSignPack_EmoneyPack[3200563][1][3]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][3]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][3]["RewardItem"][1]["Id"] = 729242
	-- tSummerSignPack_EmoneyPack[3200563][1][3]["RewardItem"][1]["Attr"] = "0 5"
	-- tSummerSignPack_EmoneyPack[3200563][1][3]["RewardItem"][1]["Amount"] = 5
	tSummerSignPack_EmoneyPack[3200563][1][3]["Log"] = "0,0,3200563[2],1[499],12000434,2,729242,5"
	tSummerSignPack_EmoneyPack[3200563][1][3]["Space"] = 4
	-- +4赤练石*2	730004  14.00%
	tSummerSignPack_EmoneyPack[3200563][1][4] = {}
	tSummerSignPack_EmoneyPack[3200563][1][4]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200563][1][4]["ItemChance"] = 1400
	tSummerSignPack_EmoneyPack[3200563][1][4]["Item_1"] = 730004
	tSummerSignPack_EmoneyPack[3200563][1][4]["Attr"] = "0 2"
	tSummerSignPack_EmoneyPack[3200563][1][4]["Amount"] = 2
	-- tSummerSignPack_EmoneyPack[3200563][1][4]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][4]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][4]["RewardItem"][1]["Id"] = 730004
	-- tSummerSignPack_EmoneyPack[3200563][1][4]["RewardItem"][1]["Attr"] = "0 2"
	-- tSummerSignPack_EmoneyPack[3200563][1][4]["RewardItem"][1]["Amount"] = 2
	tSummerSignPack_EmoneyPack[3200563][1][4]["Log"] = "0,0,3200563[2],1[499],12000434,2,730004,2"
	tSummerSignPack_EmoneyPack[3200563][1][4]["Space"] = 1
	-- 小固化石*2	723694  5.00%
	tSummerSignPack_EmoneyPack[3200563][1][5] = {}
	tSummerSignPack_EmoneyPack[3200563][1][5]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200563][1][5]["ItemChance"] = 500
	tSummerSignPack_EmoneyPack[3200563][1][5]["Item_1"] = 723694
	tSummerSignPack_EmoneyPack[3200563][1][5]["Attr"] = "0 2"
	tSummerSignPack_EmoneyPack[3200563][1][5]["Amount"] = 2
	-- tSummerSignPack_EmoneyPack[3200563][1][5]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][5]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][5]["RewardItem"][1]["Id"] = 723694
	-- tSummerSignPack_EmoneyPack[3200563][1][5]["RewardItem"][1]["Attr"] = "0 2"
	-- tSummerSignPack_EmoneyPack[3200563][1][5]["RewardItem"][1]["Amount"] = 2
	tSummerSignPack_EmoneyPack[3200563][1][5]["Log"] = "0,0,3200563[2],1[499],12000434,2,723694,2"
	tSummerSignPack_EmoneyPack[3200563][1][5]["Space"] = 1
	-- 晶莹星陨石*2	3009002  1.00%
	tSummerSignPack_EmoneyPack[3200563][1][6] = {}
	tSummerSignPack_EmoneyPack[3200563][1][6]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200563][1][6]["ItemChance"] = 100
	tSummerSignPack_EmoneyPack[3200563][1][6]["Item_1"] = 3009002
	tSummerSignPack_EmoneyPack[3200563][1][6]["Attr"] = "0 2 0 2880 1"
	tSummerSignPack_EmoneyPack[3200563][1][6]["Amount"] = 2
	-- tSummerSignPack_EmoneyPack[3200563][1][6]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][6]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][6]["RewardItem"][1]["Id"] = 3009002
	-- tSummerSignPack_EmoneyPack[3200563][1][6]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	-- tSummerSignPack_EmoneyPack[3200563][1][6]["RewardItem"][1]["Amount"] = 2
	tSummerSignPack_EmoneyPack[3200563][1][6]["Log"] = "0,0,3200563[2],1[499],12000434,2,3009002,2"
	tSummerSignPack_EmoneyPack[3200563][1][6]["Space"] = 1
	-- 5000天石	3200562  1.00%
	tSummerSignPack_EmoneyPack[3200563][1][7] = {}
	tSummerSignPack_EmoneyPack[3200563][1][7]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200563][1][7]["ItemChance"] = 100
	tSummerSignPack_EmoneyPack[3200563][1][7]["Item_1"] = 3200562
	tSummerSignPack_EmoneyPack[3200563][1][7]["Attr"] = "0 1"
	tSummerSignPack_EmoneyPack[3200563][1][7]["Amount"] = 1
	-- tSummerSignPack_EmoneyPack[3200563][1][7]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][7]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200563][1][7]["RewardItem"][1]["Id"] = 3200562
	-- tSummerSignPack_EmoneyPack[3200563][1][7]["RewardItem"][1]["Attr"] = "0 1"
	-- tSummerSignPack_EmoneyPack[3200563][1][7]["RewardItem"][1]["Amount"] = 1
	tSummerSignPack_EmoneyPack[3200563][1][7]["EmoneyLog"] = "350	20229	499	499	1	"
	tSummerSignPack_EmoneyPack[3200563][1][7]["Log"] = "0,0,3200563[2],1[499],12000434,2,3200562,1"
	tSummerSignPack_EmoneyPack[3200563][1][7]["Space"] = 1

-- 3200564	PassionateSummerPack
	tSummerSignPack_EmoneyPack[3200564] = {}
	tSummerSignPack_EmoneyPack[3200564][1] = {}
	tSummerSignPack_EmoneyPack[3200564][1]["ItemChanceSum"] = 10000
	-- 龙珠*3	 1088000  24.00%
	tSummerSignPack_EmoneyPack[3200564][1][1] = {}
	tSummerSignPack_EmoneyPack[3200564][1][1]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200564][1][1]["ItemChance"] = 2400
	tSummerSignPack_EmoneyPack[3200564][1][1]["Item_1"] = 1088000
	tSummerSignPack_EmoneyPack[3200564][1][1]["Attr"] = "0 3"
	tSummerSignPack_EmoneyPack[3200564][1][1]["Amount"] = 3
	-- tSummerSignPack_EmoneyPack[3200564][1][1]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200564][1][1]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200564][1][1]["RewardItem"][1]["Id"] = 1088000
	-- tSummerSignPack_EmoneyPack[3200564][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tSummerSignPack_EmoneyPack[3200564][1][1]["RewardItem"][1]["Amount"] = 1
	tSummerSignPack_EmoneyPack[3200564][1][1]["Log"] = "0,0,3200564[2],1[199],12000434,2,1088000,3"
	tSummerSignPack_EmoneyPack[3200564][1][1]["Space"] = 2
	-- 明亮星陨石*4	3009001  24.00%
	tSummerSignPack_EmoneyPack[3200564][1][2] = {}
	tSummerSignPack_EmoneyPack[3200564][1][2]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200564][1][2]["ItemChance"] = 2400
	tSummerSignPack_EmoneyPack[3200564][1][2]["Item_1"] = 3009001
	tSummerSignPack_EmoneyPack[3200564][1][2]["Attr"] = "0 4 0 2880 1"
	tSummerSignPack_EmoneyPack[3200564][1][2]["Amount"] = 4
	-- tSummerSignPack_EmoneyPack[3200564][1][2]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200564][1][2]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200564][1][2]["RewardItem"][1]["Id"] = 3009001
	-- tSummerSignPack_EmoneyPack[3200564][1][2]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	-- tSummerSignPack_EmoneyPack[3200564][1][2]["RewardItem"][1]["Amount"] = 4
	tSummerSignPack_EmoneyPack[3200564][1][2]["Log"] = "0,0,3200564[2],1[199],12000434,2,3009001,4"
	tSummerSignPack_EmoneyPack[3200564][1][2]["Space"] = 3
	-- +3赤练石*2	730003  20.00%
	tSummerSignPack_EmoneyPack[3200564][1][3] = {}
	tSummerSignPack_EmoneyPack[3200564][1][3]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200564][1][3]["ItemChance"] = 2000
	tSummerSignPack_EmoneyPack[3200564][1][3]["Item_1"] = 730003
	tSummerSignPack_EmoneyPack[3200564][1][3]["Attr"] = "0 2"
	tSummerSignPack_EmoneyPack[3200564][1][3]["Amount"] = 2
	-- tSummerSignPack_EmoneyPack[3200564][1][3]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200564][1][3]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200564][1][3]["RewardItem"][1]["Id"] = 730003
	-- tSummerSignPack_EmoneyPack[3200564][1][3]["RewardItem"][1]["Attr"] = "0 2"
	-- tSummerSignPack_EmoneyPack[3200564][1][3]["RewardItem"][1]["Amount"] = 2
	tSummerSignPack_EmoneyPack[3200564][1][3]["Log"] = "0,0,3200564[2],1[199],12000434,2,730003,2"
	tSummerSignPack_EmoneyPack[3200564][1][3]["Space"] = 1
	-- 回气丹*2	729242  20.00%
	tSummerSignPack_EmoneyPack[3200564][1][4] = {}
	tSummerSignPack_EmoneyPack[3200564][1][4]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200564][1][4]["ItemChance"] = 2000
	tSummerSignPack_EmoneyPack[3200564][1][4]["Item_1"] = 729242
	tSummerSignPack_EmoneyPack[3200564][1][4]["Attr"] = "0 2"
	tSummerSignPack_EmoneyPack[3200564][1][4]["Amount"] = 2
	-- tSummerSignPack_EmoneyPack[3200564][1][4]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200564][1][4]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200564][1][4]["RewardItem"][1]["Id"] = 729242
	-- tSummerSignPack_EmoneyPack[3200564][1][4]["RewardItem"][1]["Attr"] = "0 2"
	-- tSummerSignPack_EmoneyPack[3200564][1][4]["RewardItem"][1]["Amount"] = 2
	tSummerSignPack_EmoneyPack[3200564][1][4]["Log"] = "0,0,3200564[2],1[199],12000434,2,729242,2"
	tSummerSignPack_EmoneyPack[3200564][1][4]["Space"] = 1
	-- 小抽奖券*20	3200558  10.00%
	tSummerSignPack_EmoneyPack[3200564][1][5] = {}
	tSummerSignPack_EmoneyPack[3200564][1][5]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200564][1][5]["ItemChance"] = 1000
	tSummerSignPack_EmoneyPack[3200564][1][5]["Item_1"] = 3200558
	tSummerSignPack_EmoneyPack[3200564][1][5]["Attr"] = "0 1"
	tSummerSignPack_EmoneyPack[3200564][1][5]["Amount"] = 1
	-- tSummerSignPack_EmoneyPack[3200564][1][5]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200564][1][5]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200564][1][5]["RewardItem"][1]["Id"] = 3200558
	-- tSummerSignPack_EmoneyPack[3200564][1][5]["RewardItem"][1]["Attr"] = "0 1"
	-- tSummerSignPack_EmoneyPack[3200564][1][5]["RewardItem"][1]["Amount"] = 1
	tSummerSignPack_EmoneyPack[3200564][1][5]["Log"] = "0,0,3200564[2],1[199],12000434,2,3200558,1"
	tSummerSignPack_EmoneyPack[3200564][1][5]["Space"] = 1
	-- 1000天石	3200561  2.00%
	tSummerSignPack_EmoneyPack[3200564][1][6] = {}
	tSummerSignPack_EmoneyPack[3200564][1][6]["RandomItemChanceType"] = 2
	tSummerSignPack_EmoneyPack[3200564][1][6]["ItemChance"] = 200
	tSummerSignPack_EmoneyPack[3200564][1][6]["Item_1"] = 3200561
	tSummerSignPack_EmoneyPack[3200564][1][6]["Attr"] = "0 1"
	tSummerSignPack_EmoneyPack[3200564][1][6]["Amount"] = 1
	-- tSummerSignPack_EmoneyPack[3200564][1][6]["RewardItem"] = {}
	-- tSummerSignPack_EmoneyPack[3200564][1][6]["RewardItem"][1] = {}
	-- tSummerSignPack_EmoneyPack[3200564][1][6]["RewardItem"][1]["Id"] = 3200561
	-- tSummerSignPack_EmoneyPack[3200564][1][6]["RewardItem"][1]["Attr"] = "0 1"
	-- tSummerSignPack_EmoneyPack[3200564][1][6]["RewardItem"][1]["Amount"] = 1
	tSummerSignPack_EmoneyPack[3200564][1][6]["EmoneyLog"] = "350	20228	199	199	1	"
	tSummerSignPack_EmoneyPack[3200564][1][6]["Log"] = "0,0,3200564[2],1[199],12000434,2,3200561,1"
	tSummerSignPack_EmoneyPack[3200564][1][6]["Space"] = 1
	
local tSummerSignPack_Effect = {}
	tSummerSignPack_Effect[1] = "self"
	tSummerSignPack_Effect[2] = "zf2-e280"
	
local tSummerSignPack_Log = {}
	tSummerSignPack_Log["OutTime"] = "0,0,%d,1,12000434,2,0,0"
	
	tSummerSignPack_Log["GetSignPack"] = {}
	tSummerSignPack_Log["GetSignPack"][3200555] = "350	20218	0	0	1	"
	tSummerSignPack_Log["GetSignPack"][3200556] = "350	20219	0	0	1	"
	tSummerSignPack_Log["GetSignPack"][3200557] = "350	20220	0	0	1	"
	
	tSummerSignPack_Log["GetSignPack"][3200766] = "350	20218	0	0	1	"
	tSummerSignPack_Log["GetSignPack"][3200767] = "350	20219	0	0	1	"
	tSummerSignPack_Log["GetSignPack"][3200768] = "350	20220	0	0	1	"
	
	tSummerSignPack_Log["UseEmoney"] = {}
	tSummerSignPack_Log["UseEmoney"][3200564] = "350	20226	199	199	1	"
	tSummerSignPack_Log["UseEmoney"][3200563] = "350	20227	499	499	1	"


-------------------------------------------逻辑部分----------------------------------
-- 领取签到福利(可无限补领)
function SummerSignPack_Sign(nNpcId)
	if not Sys_ChkFullTime(tSummerSignPack_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end

	-- 判断是否领取过签到礼包
	local nEvent = tSummerSignPack_Stc["EventType"]
	local nType = tSummerSignPack_Stc["DataType"][1]
	
	local nData = 0
	if Task_ChkStcValue(nEvent,nType,">",0) then
		nData = Get_UserStatisticValue(nEvent,nType)
	end
	
	-- 背包中已有此礼包，不可以再领取
	if nData > 0 then
		if Item_ChkItem(nData) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		else
			if not User_CheckLeftSpace(1) then
				LinkNpcGossipFunc_New(nNpcId,"2-1")
				return	
			end
			
			Task_SetStatistic(nEvent,nType,nData,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
			RewardTemplate_Reward(tSummerSignPack_NpcReward[nData])

			local sName = Get_ItemtypeName(nData)
			User_TalkChannel2005(string.format(tSummerSignPack_Text[nNpcId]["Success"],sName))
			Sys_SaveEmoneyBuy(tSummerSignPack_Log["GetSignPack"][nData])
			return
		end
	end

	local nUserMete = Get_UserMetempsychosis()
	local nItemId = tSummerSignPack_Cont["Metempsychosis"][1]
	if nUserMete == 0 then
		nItemId = tSummerSignPack_Cont["Metempsychosis"][1]
	elseif nUserMete == 1 then
		nItemId = tSummerSignPack_Cont["Metempsychosis"][2]
	else
		nItemId = tSummerSignPack_Cont["Metempsychosis"][3]
	end
	
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return	
	end
	
	Task_SetStatistic(nEvent,nType,nItemId,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	RewardTemplate_Reward(tSummerSignPack_NpcReward[nItemId])

	local sName = Get_ItemtypeName(nItemId)
	User_TalkChannel2005(string.format(tSummerSignPack_Text[nNpcId]["Success"],sName))
	Sys_SaveEmoneyBuy(tSummerSignPack_Log["GetSignPack"][nItemId])
end

-- 领取付费礼包
function SummerSignPack_GetEmoneyPack(nNpcId,nItemId)
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return	
	end
	
	local sName = Get_ItemtypeName(nItemId)
	-- 背包中已有此礼包，不可以再领取
	if Item_ChkItem(nItemId) then
		tNpcGossip[nNpcId]["Text331"] = string.format(tSummerSignPack_Text[nNpcId]["Text331"],sName)
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return	
	end
	
	RewardTemplate_Reward(tSummerSignPack_NpcReward[nItemId])
	User_TalkChannel2005(tSummerSignPack_Text[nNpcId][nItemId])
end

-- 3200545	清凉一夏福利包
-- 3200556	骄阳似火福利包
-- 3200557	激情狂欢福利包

-- 8月普天同庆有礼(8.9)
-- 3200766	清凉一夏福利包
-- 3200767	骄阳似火福利包
-- 3200768	激情狂欢福利包
-- 使用签到礼包
function SummerSignPack_UsePack(nItemId)
	if not Sys_ChkFullTime(tSummerSignPack_Cont["Activity"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tSummerSignPack_Log["OutTime"],nItemId))
			User_TalkChannel2005(tSummerSignPack_Text["OutTime"])
			return
		end
	end

	-- 判断打开的掩码
	local nEvent = tSummerSignPack_Stc["EventType"]
	local nType = tSummerSignPack_Stc["DataType"][2]
	if Task_ChkStcValue(nEvent,nType,">",0) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		else
			User_TalkChannel2005(tSummerSignPack_Text["OpenOnce"])
			return
		end
	end

	if Item_ChkItem(nItemId) then
		local nFlat,tAward = Probabil_RandomAward(tSummerSignPack_Reward[nItemId],1)
		local sFunc = tAward[1]["tAward"][1]["Item_1"]
		local nData = tAward[1]["tAward"][1]["Data"]
		local sLog = tAward[1]["tAward"][1]["Log"]
		local nSpace = tAward[1]["tAward"][1]["Space"]
		
		local sEmoneyLog = ""
		local sAttr = ""
		local nAmount = 1
		local nFlag = false
		local nCul = 0
		
		local sTalk = string.format(tSummerSignPack_Text["RewardTip"],tSummerSignPack_Text["RegularReward"][nItemId])
		local sRewardName = ""
		local sZeng = tSummerSignPack_Text["Zeng"]

		-- 先判断随机的奖励是什么，根据随机的奖励，加上固定奖励，计算背包空间，和动态码上限值，最后再给奖励
		if sFunc == User_AddCultivation then
			
		elseif sFunc == User_AddEMoneyMono then 
			-- 给赠点天石
			local nEmoneyMono = Get_UserMonoEMoney()
			-- 天石赠满
			if nData + nEmoneyMono >= G_User_MaxEmoneyMono then
				User_TalkChannel2005(tSummerSignPack_Text["FullEmoneyMono"])
				return
			end
			sEmoneyLog = tAward[1]["tAward"][1]["EmoneyLog"]
		elseif sFunc == User_AddEMoney then 
			-- 给非赠天石
			
			--判断动态码上限
			local nLimit = tAward[1]["tAward"][1]["Limit"]
			local nPos = tAward[1]["tAward"][1]["Pos"]
			local nGlobal = tAward[1]["tAward"][1]["Global"]
			local nReplace = tAward[1]["tAward"][1]["Replace"]
			local nNum = Get_SysDynaGlobalData(nGlobal,nPos)
			if nNum >= nLimit then  --超过上限，则给其他物品
				nData = tAward[1]["tAward"][1]["ReplaceData"]
				sAttr = tAward[1]["tAward"][1]["ReplaceAttr"]
				nSpace = tAward[1]["tAward"][1]["ReplaceSpace"]
				
				nFlag = true  -- 达到上限标志
				sLog = tAward[1]["tAward"][1]["ReplaceLog"]
				
			else
				local nEmoney = Get_UserEMoney()
				-- 天石满
				if nData + nEmoney >= G_User_MaxEmoney then
					User_TalkChannel2005(tSummerSignPack_Text["FullEmoney"])
					return
				end
				
				sEmoneyLog = tAward[1]["tAward"][1]["EmoneyLog"]
			end
			
		else		-- 给物品
			sAttr = tAward[1]["tAward"][1]["Attr"]
			nAmount = tAward[1]["tAward"][1]["Amount"]
			if tAward[1]["tAward"][1]["Global"] then
				--判断动态码上限
				local nLimit = tAward[1]["tAward"][1]["Limit"]
				local nPos = tAward[1]["tAward"][1]["Pos"]
				local nGlobal = tAward[1]["tAward"][1]["Global"]
				local nReplace = tAward[1]["tAward"][1]["Replace"]
				local nNum = Get_SysDynaGlobalData(nGlobal,nPos)
				if nNum >= nLimit then  --超过上限，则给其他奖励
					nData = tAward[1]["tAward"][1]["ReplaceData"]
					
					if nReplace == Item_AddNewItem then
						sAttr = tAward[1]["tAward"][1]["ReplaceAttr"]
						nAmount = tAward[1]["tAward"][1]["ReplaceAmount"]
					else
						nCul = nData
					end
					
					nFlag = true -- 达到上限标志
					sLog = tAward[1]["tAward"][1]["ReplaceLog"]
				end
			end

			-- -- 计算背包
			-- if nData == 3009000 then		-- 微光星陨石*n
				-- if nItemId == 3200556 then
					-- nSpace = nSpace + 2
				-- elseif nItemId == 3200557 then
					-- nSpace = nSpace + 5
				-- end
			-- else
				-- nSpace = nSpace + 1
			-- end
		end
	
		--判断背包空间
		if nSpace ~= 0 then
			if not User_CheckLeftSpace(nSpace) then
				User_TalkChannel2005(string.format(tSummerSignPack_Text["NoSpace"],nSpace))
				return
			end
		end
		
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- 设置签到掩码
			Task_SetStatistic(nEvent,nType,1,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)

			-- 获得固定奖励
			RewardTemplate_Reward(tSummerSignPack_Reward[nItemId])
			
			--获得随机奖励
			if sFunc == User_AddCultivation then
				-- 给修行值
				User_AddCultivation(nData)
				sRewardName = string.format(tSummerSignPack_Text["Cul"],nData)
			elseif sFunc == User_AddEMoneyMono then 
				-- 给赠点天石
				User_AddEMoneyMono(nData)
				sRewardName = string.format(tSummerSignPack_Text["EmoneyMono"],nData)
			elseif sFunc == User_AddEMoney then
				-- 给天石
				if nFlag then
					-- 超过上限标志
					Item_AddNewItem(nData,sAttr)
					local sName = Get_ItemtypeName(nData)
					-- 给赠的物品
					if tAward[1]["tAward"][1]["ReplaceZeng"] then
						sName = sName .. sZeng
					end
					sRewardName = string.format(tSummerSignPack_Text["Item"],nAmount,sName)
				else
					if tAward[1]["tAward"][1]["Global"] then
						-- 设置动态码
						local nPos = tAward[1]["tAward"][1]["Pos"]
						local nGlobal = tAward[1]["tAward"][1]["Global"]
						local nNum = Get_SysDynaGlobalData(nGlobal,nPos)
						Sys_SetSynaGlobalData(nGlobal,nPos,nNum+1)
					end
					User_AddEMoney(nData)
					sRewardName = string.format(tSummerSignPack_Text["Emoney"],nData)
				end
			else
				-- 给物品
				if nFlag then
					-- 超过上限标志
					if nCul > 0 then
						User_AddCultivation(nData)
						sRewardName = string.format(tSummerSignPack_Text["Cul"],nData)
					else
						Item_AddNewItem(nData,sAttr)
						local sName = Get_ItemtypeName(nData)
						-- 给赠的物品
						if tAward[1]["tAward"][1]["Zeng"] then
							sName = sName .. sZeng
						end
						sRewardName = string.format(tSummerSignPack_Text["Item"],nAmount,sName)
					end
				else
					if tAward[1]["tAward"][1]["Global"] then
						-- 设置动态码
						local nPos = tAward[1]["tAward"][1]["Pos"]
						local nGlobal = tAward[1]["tAward"][1]["Global"]
						local nNum = Get_SysDynaGlobalData(nGlobal,nPos)
						Sys_SetSynaGlobalData(nGlobal,nPos,nNum+1)
					end
					
					Item_AddNewItem(nData,sAttr)
					
					local sName = Get_ItemtypeName(nData)
					-- 给赠的物品
					if tAward[1]["tAward"][1]["Zeng"] then
						sName = sName .. sZeng
					end
					
					sRewardName = string.format(tSummerSignPack_Text["Item"],nAmount,sName)
				end
			end
			
			Sys_SaveActionFestivalLog(sLog)
			if sEmoneyLog ~= nil then
				Sys_SaveEmoneyBuy(sEmoneyLog)
			end
			User_EffectAdd(tSummerSignPack_Effect[1],tSummerSignPack_Effect[2])

			sTalk = sTalk .. sRewardName
			User_TalkChannel2005(sTalk)
		-- end
	end
end

-- 3200563	夏日倾情礼包
-- 3200564	夏日动感礼包
-- 使用付费礼包
function SummerSignPack_UseEmoneyPack(nItemId)
	if Item_ChkItem(nItemId) then
		local nUserEmoney = Get_UserEMoney()
		local nNeedEmoney = tSummerSignPack_Cont["Emoney"][nItemId]
		if nUserEmoney < nNeedEmoney then
			Sys_MsgBox(tSummerSignPack_Text[nItemId]["NoEmoney"])
			return
		end

		local nFlat,tAward = Probabil_RandomAward(tSummerSignPack_EmoneyPack[nItemId],1)
		local nData = tAward[1]["tAward"][1]["Item_1"]
		local sAttr = tAward[1]["tAward"][1]["Attr"]
		local nAmount = tAward[1]["tAward"][1]["Amount"]
		local nSpace = tAward[1]["tAward"][1]["Space"]
		local sNormalLog = tAward[1]["tAward"][1]["Log"]
		
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tSummerSignPack_Text[3200563]["Nospace"],nSpace))
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- 随机奖励
			User_AddEMoney((-1)*nNeedEmoney)
			Item_AddNewItem(nData,sAttr)
			
			if tAward[1]["tAward"][1]["EmoneyLog"] then
				local sLog = tAward[1]["tAward"][1]["EmoneyLog"]
				Sys_SaveEmoneyBuy(sLog)
			end
			User_TalkChannel2005(string.format(tSummerSignPack_Text[nItemId]["AwardItem"],nAmount,Get_ItemtypeName(nData)))
			Sys_SaveEmoneyBuy(tSummerSignPack_Log["UseEmoney"][nItemId])
			Sys_SaveActionFestivalLog(sNormalLog)
			User_EffectAdd(tSummerSignPack_Effect[1],tSummerSignPack_Effect[2])
			
			-- local tGetReward = RewardTemplate_Random(tSummerSignPack_EmoneyPack[nItemId],1)
			-- local nRewardItemId = tGetReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			-- local nAmount = tGetReward[1]["tAward"][1]["RewardItem"][1]["Amount"]
			-- User_TalkChannel2005(string.format(tSummerSignPack_Text[nItemId]["AwardItem"],nAmount,Get_ItemtypeName(nRewardItemId)))
			-- if tGetReward[1]["tAward"][1]["RewardItem"][1]["EmoneyLog"] then
				-- local sLog = tGetReward[1]["tAward"][1]["RewardItem"][1]["EmoneyLog"]
				-- Sys_SaveEmoneyBuy(sLog)
			-- end
		end
	end
end

-- 每天单服限制数量 清零
function SummerSignPack_ReSetGlobal()
	for i = 1,3 do
		local nGlobalId = tSummerSignPack_Global["GlobalIdClear"][i]
		Sys_ResetAllSynaGlobalData(nGlobalId)
	end
end

-------------------------------------------npc模板----------------------------------
-- 19348	福利宝贝猪
tNpcFace[4223] = 191
tNpcGossip[19348] = tNpcGossip[19348] or DefaultNpc:new{}
tNpcGossip[19348]["OptionHidden"] = 1

--活动前对白
tNpcGossip[19348]["Text1-1"] = {111,112,113}
tNpcGossip[19348]["Text111"] = tSummerSignPack_Text[19348]["Text111"]
tNpcGossip[19348]["Text112"] = tSummerSignPack_Text[19348]["Text112"]
tNpcGossip[19348]["Text113"] = tSummerSignPack_Text[19348]["Text113"]
tNpcGossip[19348]["tOption1-1"] = {1}
tNpcGossip[19348]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tSummerSignPack_Cont["BeforeActivity"])
end
tNpcGossip[19348]["Option1"] = tSummerSignPack_Text[19348]["Option1"]

--活动中对白
tNpcGossip[19348]["Text1-2"] = {121,122,123}
tNpcGossip[19348]["Text121"] = tSummerSignPack_Text[19348]["Text121"]
tNpcGossip[19348]["Text122"] = tSummerSignPack_Text[19348]["Text122"]
tNpcGossip[19348]["Text123"] = tSummerSignPack_Text[19348]["Text123"]
tNpcGossip[19348]["tOption1-2"] = {2,3,4}
tNpcGossip[19348]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tSummerSignPack_Cont["Activity"]) 
end
tNpcGossip[19348]["Option2"] = tSummerSignPack_Text[19348]["Option2"]
tNpcGossip[19348]["OptionFunc2"] = "SummerSignPack_Sign</N>19348"
tNpcGossip[19348]["Option3"] = tSummerSignPack_Text[19348]["Option3"]
tNpcGossip[19348]["OptionPoint3"] = "3-1"
tNpcGossip[19348]["Option4"] = tSummerSignPack_Text[19348]["Option4"]

--活动后对白
tNpcGossip[19348]["Text1-3"] = {131}
tNpcGossip[19348]["Text131"] = tSummerSignPack_Text[19348]["Text131"]
tNpcGossip[19348]["tOption1-3"] = {5}
tNpcGossip[19348]["Option5"] = tSummerSignPack_Text[19348]["Option5"]

-- 接2：领取签到福利。
-- 【背包满】
tNpcGossip[19348]["Text2-1"] = {211}
tNpcGossip[19348]["Text211"] = tSummerSignPack_Text[19348]["Text211"]
tNpcGossip[19348]["tOption2-1"] = {6}
tNpcGossip[19348]["Option6"] = tSummerSignPack_Text[19348]["Option6"]

-- 【已领过福利】
tNpcGossip[19348]["Text2-2"] = {221}
tNpcGossip[19348]["Text221"] = tSummerSignPack_Text[19348]["Text221"]
tNpcGossip[19348]["tOption2-2"] = {7}
tNpcGossip[19348]["Option7"] = tSummerSignPack_Text[19348]["Option7"]

--接3：幸运开奖专区。
tNpcGossip[19348]["Text3-1"] = {311,312}
tNpcGossip[19348]["Text311"] = tSummerSignPack_Text[19348]["Text311"]
tNpcGossip[19348]["Text312"] = tSummerSignPack_Text[19348]["Text312"]
tNpcGossip[19348]["tOption3-1"] = {8,9,10}
tNpcGossip[19348]["Option8"] = tSummerSignPack_Text[19348]["Option8"]
tNpcGossip[19348]["OptionFunc8"] = "SummerSignPack_GetEmoneyPack</N>19348</N>3200563"
tNpcGossip[19348]["Option9"] = tSummerSignPack_Text[19348]["Option9"]
tNpcGossip[19348]["OptionFunc9"] = "SummerSignPack_GetEmoneyPack</N>19348</N>3200564"
tNpcGossip[19348]["Option10"] = tSummerSignPack_Text[19348]["Option10"]

-- 【背包满】
tNpcGossip[19348]["Text3-2"] = {321}
tNpcGossip[19348]["Text321"] = tSummerSignPack_Text[19348]["Text321"]
tNpcGossip[19348]["tOption3-2"] = {11}
tNpcGossip[19348]["Option11"] = tSummerSignPack_Text[19348]["Option11"]
-- 【已有礼包】
tNpcGossip[19348]["Text3-3"] = {331}
tNpcGossip[19348]["Text331"] = tSummerSignPack_Text[19348]["Text331"]
tNpcGossip[19348]["tOption3-3"] = {12}
tNpcGossip[19348]["Option12"] = tSummerSignPack_Text[19348]["Option12"]


-------------------------------------------物品模板----------------------------------
-- 3200545	清凉一夏福利包
tItem[3200555] = tItem[3200555] or {}
tItem[3200555]["Function"] = function(nItemId,sItemName)
    SummerSignPack_UsePack(nItemId)
end
tItem[3200556]=tItem[3200555]	-- 3200556	骄阳似火福利包
tItem[3200557]=tItem[3200555]	-- 3200557	激情狂欢福利包

tItem[3200766]=tItem[3200555]	-- 3200766	骄阳似火福利包
tItem[3200767]=tItem[3200555]	-- 3200767	激情狂欢福利包
tItem[3200768]=tItem[3200555]	-- 3200768	激情狂欢福利包

-- 3200558	小抽奖券礼包
tItem[3200558] = tItem[3200558] or {}
tItem[3200558]["Function"] = function(nItemId,sItemName)
    RewardTemplate_UseItem(tSummerSignPack_Reward[nItemId])
end
tItem[3200559] = tItem[3200558]	-- 3200559	小抽奖券黄金礼包
tItem[3200560] = tItem[3200558]	-- 3200560	富贵钱袋
tItem[3200561] = tItem[3200558]	-- 3200561	福气天石包
tItem[3200562] = tItem[3200558]	-- 3200562	财运天石包


-- 3200563	夏日倾情礼包
tItem[3200563] = tItem[3200563] or {}
tItem[3200563]["Text1-1"] = {111}
tItem[3200563]["Text111"] = tSummerSignPack_Text[3200563]["Text111"]
tItem[3200563]["tOption1-1"] = {1,2}
tItem[3200563]["Option1"] = tSummerSignPack_Text[3200563]["Option1"]
tItem[3200563]["OptionPoint1"]="2-1"
tItem[3200563]["Option2"] = tSummerSignPack_Text[3200563]["Option2"]
-- 二次确认
tItem[3200563]["Text2-1"] = {211}
tItem[3200563]["Text211"] = tSummerSignPack_Text[3200563]["Text211"]
tItem[3200563]["tOption2-1"] = {3,4}
tItem[3200563]["Option3"] = tSummerSignPack_Text[3200563]["Option3"]
tItem[3200563]["OptionFunc3"]="SummerSignPack_UseEmoneyPack</N>3200563"
tItem[3200563]["Option4"] = tSummerSignPack_Text[3200563]["Option4"]

-- 3200564	夏日动感礼包
tItem[3200564] = tItem[3200564] or {}
tItem[3200564]["Text1-1"] = {111}
tItem[3200564]["Text111"] = tSummerSignPack_Text[3200564]["Text111"]
tItem[3200564]["tOption1-1"] = {1,2}
tItem[3200564]["Option1"] = tSummerSignPack_Text[3200564]["Option1"]
tItem[3200564]["OptionPoint1"]="2-1"
tItem[3200564]["Option2"] = tSummerSignPack_Text[3200564]["Option2"]
-- 二次确认
tItem[3200564]["Text2-1"] = {211}
tItem[3200564]["Text211"] = tSummerSignPack_Text[3200564]["Text211"]
tItem[3200564]["tOption2-1"] = {3,4}
tItem[3200564]["Option3"] = tSummerSignPack_Text[3200564]["Option3"]
tItem[3200564]["OptionFunc3"]="SummerSignPack_UseEmoneyPack</N>3200564"
tItem[3200564]["Option4"] = tSummerSignPack_Text[3200564]["Option4"]
	

-------------------------------------时间检测---------------------------------------------
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],SummerSignPack_ReSetGlobal)


	