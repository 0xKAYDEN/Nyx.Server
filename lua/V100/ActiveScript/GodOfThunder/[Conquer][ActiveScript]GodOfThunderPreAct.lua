------------------------------------------------------------------------------------
--Name:			181228[简体征服][活动脚本]雷神预热活动
--Purpose:		雷神预热
--Creator:		吴志宏
--Created:		2018/01/03
------------------------------------------------------------------------------------
-- 前缀
-- GodOfThunderPreAct_

-- LogId 12001255

-- stc掩码说明 
-- stc 

-- 全局表记录
-- global	

--------------------------------------常量配置部分---------------------------------------
-- 常量表
local tGodOfThunderPreAct_Cont = {}
	-- 等级
	tGodOfThunderPreAct_Cont["Level"] = 80
	tGodOfThunderPreAct_Cont["Metempsychosis"] = 0
	
	-- 双龙城Id
	tGodOfThunderPreAct_Cont["TwinCity"] = {}
	tGodOfThunderPreAct_Cont["TwinCity"]["Normal"] = 1002
	-- 激情服改为市场
	tGodOfThunderPreAct_Cont["TwinCity"]["Special"] = 1036
	
	-- 记录是否刷新npc
	tGodOfThunderPreAct_Cont["RefreshGlobal"] = 53197
	
	-- 虚拟玩家ID
	tGodOfThunderPreAct_Cont["VirtualId"] = 99999999
	
	-- 默认光效
	tGodOfThunderPreAct_Cont["EffectObj"] = "self"
	tGodOfThunderPreAct_Cont["Effect"] = "zf2-e128"
	
	-- 副本ID
	tGodOfThunderPreAct_Cont["InstanceId"] = 210
	
	-- 物品
	tGodOfThunderPreAct_Cont["Item"] = {}
	-- 雷霆神魄
	tGodOfThunderPreAct_Cont["Item"]["Hammer"] = 3319134
	tGodOfThunderPreAct_Cont["Item"]["HammerPre"] = 3319300
	-- 雷霆源晶
	tGodOfThunderPreAct_Cont["Item"]["Axe"] = 3319135
	-- 假npc身上携带的物品数量
	tGodOfThunderPreAct_Cont["Item"]["AxeNum"] = 50
	-- 掉落配置
	tGodOfThunderPreAct_Cont["Item"]["Drop"] = {}
	tGodOfThunderPreAct_Cont["Item"]["Drop"]["ItemNum"] = 5
	tGodOfThunderPreAct_Cont["Item"]["Drop"]["CellX"] = 3
	tGodOfThunderPreAct_Cont["Item"]["Drop"]["CellY"] = 3
	tGodOfThunderPreAct_Cont["Item"]["Drop"]["ExistTime"] = 60
	
	-- 传送
	tGodOfThunderPreAct_Cont["ChgMap"] = {}
	-- 普通服
	tGodOfThunderPreAct_Cont["ChgMap"][1002] = {}
	tGodOfThunderPreAct_Cont["ChgMap"][1002]["PosX"] = 308
	tGodOfThunderPreAct_Cont["ChgMap"][1002]["PosY"] = 496
	tGodOfThunderPreAct_Cont["ChgMap"][1002]["Range"] = 3
	-- 激情服
	tGodOfThunderPreAct_Cont["ChgMap"][1036] = {}
	tGodOfThunderPreAct_Cont["ChgMap"][1036]["PosX"] = 246
	tGodOfThunderPreAct_Cont["ChgMap"][1036]["PosY"] = 190
	tGodOfThunderPreAct_Cont["ChgMap"][1036]["Range"] = 3
	
	-- 怪物
	tGodOfThunderPreAct_Cont["Monster"] = {}
	tGodOfThunderPreAct_Cont["Monster"]["PosX"] = 57
	tGodOfThunderPreAct_Cont["Monster"]["PosY"] = 58
	-- 怪物ID·用进副本传参来对应刷新
	tGodOfThunderPreAct_Cont["Monster"]["Id"] = {}
	tGodOfThunderPreAct_Cont["Monster"]["Id"][10] = 4951
	tGodOfThunderPreAct_Cont["Monster"]["Id"][20] = 4952
	tGodOfThunderPreAct_Cont["Monster"]["Id"][50] = 4953
	tGodOfThunderPreAct_Cont["Monster"]["Id"][88] = 4954
	tGodOfThunderPreAct_Cont["Monster"]["Id"][100] = 4955
	tGodOfThunderPreAct_Cont["Monster"]["Id"][10020] = 4956
	tGodOfThunderPreAct_Cont["Monster"]["Id"][17400] = 4957
	tGodOfThunderPreAct_Cont["Monster"]["Id"][3215] = 4958
	tGodOfThunderPreAct_Cont["Monster"]["Id"][2000] = 4959
	tGodOfThunderPreAct_Cont["Monster"]["Id"][19127] = 4960
	-- 对应Generator ID
	tGodOfThunderPreAct_Cont["Monster"]["GenId"] = {}
	tGodOfThunderPreAct_Cont["Monster"]["GenId"][4951] = 26554
	tGodOfThunderPreAct_Cont["Monster"]["GenId"][4952] = 26555
	tGodOfThunderPreAct_Cont["Monster"]["GenId"][4953] = 26556
	tGodOfThunderPreAct_Cont["Monster"]["GenId"][4954] = 26557
	tGodOfThunderPreAct_Cont["Monster"]["GenId"][4955] = 26558
	tGodOfThunderPreAct_Cont["Monster"]["GenId"][4956] = 26559
	tGodOfThunderPreAct_Cont["Monster"]["GenId"][4957] = 26560
	tGodOfThunderPreAct_Cont["Monster"]["GenId"][4958] = 26561
	tGodOfThunderPreAct_Cont["Monster"]["GenId"][4959] = 26562
	tGodOfThunderPreAct_Cont["Monster"]["GenId"][4960] = 26563
	-- 掉落雷霆神魄数
	tGodOfThunderPreAct_Cont["Monster"]["RewardNum"] = {}
	tGodOfThunderPreAct_Cont["Monster"]["RewardNum"][4951] = 10
	tGodOfThunderPreAct_Cont["Monster"]["RewardNum"][4952] = 20
	tGodOfThunderPreAct_Cont["Monster"]["RewardNum"][4953] = 50
	tGodOfThunderPreAct_Cont["Monster"]["RewardNum"][4954] = 88
	tGodOfThunderPreAct_Cont["Monster"]["RewardNum"][4955] = 100
	tGodOfThunderPreAct_Cont["Monster"]["RewardNum"][4956] = 50
	tGodOfThunderPreAct_Cont["Monster"]["RewardNum"][4957] = 50
	tGodOfThunderPreAct_Cont["Monster"]["RewardNum"][4958] = 50
	tGodOfThunderPreAct_Cont["Monster"]["RewardNum"][4959] = 50
	tGodOfThunderPreAct_Cont["Monster"]["RewardNum"][4960] = 50
	
	-- 动态Npc
	tGodOfThunderPreAct_Cont["DynaNpc"] = {}
	-- 添加副本内配置
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"] = {}
	-- 副本内雷神幻影
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["Orientation"] = 7
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["PosX"] = 57
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["PosY"] = 58
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["Task0"] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["Task0"][10] = 94488026
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["Task0"][20] = 94488027
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["Task0"][50] = 94488028
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["Task0"][88] = 94488029
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["Task0"][100] = 94488030
	-- 副本内常见NPC
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["Orientation"] = 7
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["PosX"] = 57
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["PosY"] = 58
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["Task0"] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["Task0"][10020] = 94488031
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["Task0"][17400] = 94488032
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["Task0"][3215] = 94488033
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["Task0"][2000] = 94488034
	tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["Task0"][19127] = 94488035
	
	-- 雷神幻影
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Lookface"] = 6433
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Task0"] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Task0"][10] = 94487930
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Task0"][20] = 94487931
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Task0"][50] = 94487932
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Task0"][88] = 94487933
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Task0"][100] = 94487934
	-- 朝向
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"] = {}
	-- 普通服
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][1] = 5
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][2] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][3] = 3
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][4] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][5] = 2
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][6] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][7] = 2
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][8] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][9] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][10] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][11] = 4
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][12] = 4
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][13] = 2
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][14] = 7
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][15] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][16] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][17] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][18] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1002][19] = 0
	-- 激情服
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][1] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][2] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][3] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][4] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][5] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][6] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][7] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][8] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][9] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][10] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][11] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][12] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][13] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][14] = 2
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][15] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][16] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][17] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][18] = 4
	tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][1036][19] = 2
	-- 常见npc
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Lookface"] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Lookface"][10020] = 6462
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Lookface"][17400] = 6434
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Lookface"][3215] = 6463
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Lookface"][2000] = 6464
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Lookface"][19127] = 6465
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Task0"] ={}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Task0"][10020] = 94487935
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Task0"][17400] = 94487936
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Task0"][3215] = 94487937
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Task0"][2000] = 94487938
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Task0"][19127] = 94487939
	-- 朝向
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"] = {}
	-- 普通服
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][1] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][2] = 2
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][3] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][4] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][5] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][6] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][7] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][8] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][9] = 4
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][10] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][11] = 2
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][12] = 4
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][13] = 4
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][14] = 2
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][15] = 4
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1002][16] = 4
	-- 激情服
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][1] = 2
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][2] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][3] = 2
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][4] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][5] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][6] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][7] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][8] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][9] = 6
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][10] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][11] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][12] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][13] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][14] = 4
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][15] = 0
	tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][1036][16] = 6
	-- 雷神殿宝箱
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"] = {}
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Lookface"] = 43006
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["PosX"] = 57
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["PosY"] = 58
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Task0"] = {}
	-- 10个雷霆神魄
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Task0"][4951] = 94487947
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Task0"][4952] = 94487948
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Task0"][4953] = 94487949
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Task0"][4954] = 94487950
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Task0"][4955] = 94487951
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Task0"][4956] = 94487952
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Task0"][4957] = 94487953
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Task0"][4958] = 94487954
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Task0"][4959] = 94487955
	tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Task0"][4960] = 94487956
	
	-- npc刷新
	tGodOfThunderPreAct_Cont["Refresh"] = {}
	-- 双龙城·普通服
	tGodOfThunderPreAct_Cont["Refresh"][1002] = {}
	-- 雷霆神魄刷新点
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"] = {}
	-- 随机坐标点1
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][1] = {}
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][1]["PosX"] = 304
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][1]["PosY"] = 493
	-- 随机坐标点2                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][2] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][2]["PosX"] = 328
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][2]["PosY"] = 384
	-- 随机坐标点3                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][3] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][3]["PosX"] = 362
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][3]["PosY"] = 396
	-- 随机坐标点4                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][4] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][4]["PosX"] = 390
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][4]["PosY"] = 384
	-- 随机坐标点5                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][5] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][5]["PosX"] = 392
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][5]["PosY"] = 401
	-- 随机坐标点6                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][6] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][6]["PosX"] = 370
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][6]["PosY"] = 384
	-- 随机坐标点7                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][7] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][7]["PosX"] = 391
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][7]["PosY"] = 423
	-- 随机坐标点8                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][8] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][8]["PosX"] = 352
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][8]["PosY"] = 324
	-- 随机坐标点9                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][9] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][9]["PosX"] = 297
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][9]["PosY"] = 486
	-- 随机坐标点10                                                  
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][10] = {}     
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][10]["PosX"] = 307
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][10]["PosY"] = 459
	-- 随机坐标点11                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][11] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][11]["PosX"] = 355
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][11]["PosY"] = 499
	-- 随机坐标点12                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][12] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][12]["PosX"] = 392
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][12]["PosY"] = 498
	-- 随机坐标点13                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][13] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][13]["PosX"] = 392
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][13]["PosY"] = 446
	-- 随机坐标点14                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][14] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][14]["PosX"] = 342
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][14]["PosY"] = 544
	-- 随机坐标点15                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][15] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][15]["PosX"] = 339
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][15]["PosY"] = 569
	-- 随机坐标点16                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][16] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][16]["PosX"] = 328
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][16]["PosY"] = 553
	-- 随机坐标点17                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][17] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][17]["PosX"] = 365
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][17]["PosY"] = 443
	-- 随机坐标点18                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][18] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][18]["PosX"] = 383
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][18]["PosY"] = 375
	-- 随机坐标点19                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][19] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][19]["PosX"] = 312
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Hammer"][19]["PosY"] = 443
	-- 雷霆源晶刷新点
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"] = {}
	-- 随机坐标点1
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][1] = {}
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][1]["PosX"] = 363
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][1]["PosY"] = 384
	-- 随机坐标点2 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][2] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][2]["PosX"] = 392
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][2]["PosY"] = 435
	-- 随机坐标点3 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][3] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][3]["PosX"] = 348
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][3]["PosY"] = 443
	-- 随机坐标点4 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][4] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][4]["PosX"] = 304
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][4]["PosY"] = 429
	-- 随机坐标点5 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][5] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][5]["PosX"] = 307
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][5]["PosY"] = 461
	-- 随机坐标点6 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][6] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][6]["PosX"] = 282
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][6]["PosY"] = 450
	-- 随机坐标点7 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][7] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][7]["PosX"] = 243
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][7]["PosY"] = 486
	-- 随机坐标点8 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][8] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][8]["PosX"] = 245
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][8]["PosY"] = 456
	-- 随机坐标点9 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][9] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][9]["PosX"] = 325
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][9]["PosY"] = 503
	-- 随机坐标点10     
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][10] = {}     
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][10]["PosX"] = 329
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][10]["PosY"] = 383
	-- 随机坐标点11 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][11] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][11]["PosX"] = 393
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][11]["PosY"] = 395
	-- 随机坐标点12 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][12] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][12]["PosX"] = 384
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][12]["PosY"] = 396
	-- 随机坐标点13 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][13] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][13]["PosX"] = 312
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][13]["PosY"] = 451
	-- 随机坐标点14 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][14] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][14]["PosX"] = 355
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][14]["PosY"] = 400
	-- 随机坐标点15 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][15] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][15]["PosX"] = 362
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][15]["PosY"] = 395
	-- 随机坐标点16 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][16] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][16]["PosX"] = 372
	tGodOfThunderPreAct_Cont["Refresh"][1002]["Axe"][16]["PosY"] = 395
	
	-- 双龙城·激情服
	tGodOfThunderPreAct_Cont["Refresh"][1036] = {}
	-- 雷霆神魄刷新点
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"] = {}
	-- 随机坐标点1
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][1] = {}
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][1]["PosX"] = 265
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][1]["PosY"] = 229
	-- 随机坐标点2                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][2] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][2]["PosX"] = 290
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][2]["PosY"] = 236
	-- 随机坐标点3                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][3] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][3]["PosX"] = 284
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][3]["PosY"] = 249
	-- 随机坐标点4                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][4] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][4]["PosX"] = 275
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][4]["PosY"] = 247
	-- 随机坐标点5                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][5] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][5]["PosX"] = 250
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][5]["PosY"] = 246
	-- 随机坐标点6                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][6] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][6]["PosX"] = 243
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][6]["PosY"] = 210
	-- 随机坐标点7                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][7] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][7]["PosX"] = 236
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][7]["PosY"] = 193
	-- 随机坐标点8                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][8] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][8]["PosX"] = 217
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][8]["PosY"] = 197
	-- 随机坐标点9                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][9] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][9]["PosX"] = 180
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][9]["PosY"] = 215
	-- 随机坐标点10                                                  
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][10] = {}     
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][10]["PosX"] = 206
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][10]["PosY"] = 235
	-- 随机坐标点11                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][11] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][11]["PosX"] = 248
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][11]["PosY"] = 238
	-- 随机坐标点12                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][12] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][12]["PosX"] = 244
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][12]["PosY"] = 226
	-- 随机坐标点13                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][13] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][13]["PosX"] = 244
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][13]["PosY"] = 208
	-- 随机坐标点14                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][14] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][14]["PosX"] = 256
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][14]["PosY"] = 196
	-- 随机坐标点15                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][15] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][15]["PosX"] = 296
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][15]["PosY"] = 217
	-- 随机坐标点16                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][16] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][16]["PosX"] = 320
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][16]["PosY"] = 237
	-- 随机坐标点17                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][17] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][17]["PosX"] = 285
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][17]["PosY"] = 206
	-- 随机坐标点18                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][18] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][18]["PosX"] = 241
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][18]["PosY"] = 288
	-- 随机坐标点19                                                   
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][19] = {}      
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][19]["PosX"] = 226
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Hammer"][19]["PosY"] = 278
	-- 雷霆源晶刷新点
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"] = {}
	-- 随机坐标点1
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][1] = {}
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][1]["PosX"] = 226
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][1]["PosY"] = 260
	-- 随机坐标点2 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][2] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][2]["PosX"] = 264
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][2]["PosY"] = 243
	-- 随机坐标点3 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][3] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][3]["PosX"] = 244
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][3]["PosY"] = 228
	-- 随机坐标点4 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][4] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][4]["PosX"] = 244
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][4]["PosY"] = 245
	-- 随机坐标点5 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][5] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][5]["PosX"] = 224
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][5]["PosY"] = 187
	-- 随机坐标点6 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][6] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][6]["PosX"] = 212
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][6]["PosY"] = 197
	-- 随机坐标点7 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][7] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][7]["PosX"] = 293
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][7]["PosY"] = 236
	-- 随机坐标点8  
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][8] = {}  
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][8]["PosX"] = 308
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][8]["PosY"] = 239
	-- 随机坐标点9  
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][9] = {}  
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][9]["PosX"] = 322
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][9]["PosY"] = 240
	-- 随机坐标点10 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][10] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][10]["PosX"] = 331
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][10]["PosY"] = 231
	-- 随机坐标点11 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][11] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][11]["PosX"] = 293
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][11]["PosY"] = 208
	-- 随机坐标点12 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][12] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][12]["PosX"] = 294
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][12]["PosY"] = 226
	-- 随机坐标点13 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][13] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][13]["PosX"] = 286
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][13]["PosY"] = 255
	-- 随机坐标点14 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][14] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][14]["PosX"] = 283
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][14]["PosY"] = 272
	-- 随机坐标点15 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][15] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][15]["PosX"] = 312
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][15]["PosY"] = 264
	-- 随机坐标点16 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][16] = {} 
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][16]["PosX"] = 321
	tGodOfThunderPreAct_Cont["Refresh"][1036]["Axe"][16]["PosY"] = 261
	
	
-- Log
local tGodOfThunderPreAct_Log = {}
	-- 击杀副本怪
	tGodOfThunderPreAct_Log["KillMonster"] = "0,0,0,0,12001255,1[21],3319134,%d"
	
	
-- 奖励表
local tGodOfThunderPreAct_Reward = {}
	-- 开启宝箱
	tGodOfThunderPreAct_Reward["OpenBox"] = {}
	tGodOfThunderPreAct_Reward["OpenBox"]["RewardItem"] = {}
	tGodOfThunderPreAct_Reward["OpenBox"]["RewardItem"][1] = {}
	tGodOfThunderPreAct_Reward["OpenBox"]["RewardItem"][1]["Id"] = 3319300
	tGodOfThunderPreAct_Reward["OpenBox"]["RewardItem"][1]["Attr"] = "0 %d"
	tGodOfThunderPreAct_Reward["OpenBox"]["LogId"] = 12001255
	tGodOfThunderPreAct_Reward["OpenBox"]["LogStep"] = "1[22]"
	tGodOfThunderPreAct_Reward["OpenBox"]["EmoneyLog"] = "350	22018	0	0	1	"
	
	
-- 概率表
local tGodOfThunderPreAct_Random = {}
	-- 刷出假雷神的概率
	tGodOfThunderPreAct_Random["RefreshFake"] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][1] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][1]["ItemChanceSum"] = 10000
	-- 总概率10%刷出·数值非0代表刷出
	-- 10% * 35%随机携带10个雷霆神魄
	tGodOfThunderPreAct_Random["RefreshFake"][1][1] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][1][1]["RandomItemChanceType"] = 2
	tGodOfThunderPreAct_Random["RefreshFake"][1][1]["ItemChance"] = 350
	tGodOfThunderPreAct_Random["RefreshFake"][1][1]["HammerNum"] = 10
	-- 10% * 25%随机携带25个雷霆神魄    
	tGodOfThunderPreAct_Random["RefreshFake"][1][2] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][1][2]["RandomItemChanceType"] = 2
	tGodOfThunderPreAct_Random["RefreshFake"][1][2]["ItemChance"] = 250
	tGodOfThunderPreAct_Random["RefreshFake"][1][2]["HammerNum"] = 20
	-- 10% * 20%随机携带50个雷霆神魄    
	tGodOfThunderPreAct_Random["RefreshFake"][1][3] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][1][3]["RandomItemChanceType"] = 2
	tGodOfThunderPreAct_Random["RefreshFake"][1][3]["ItemChance"] = 200
	tGodOfThunderPreAct_Random["RefreshFake"][1][3]["HammerNum"] = 50
	-- 10% * 15%随机携带88个雷霆神魄 
	tGodOfThunderPreAct_Random["RefreshFake"][1][4] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][1][4]["RandomItemChanceType"] = 2
	tGodOfThunderPreAct_Random["RefreshFake"][1][4]["ItemChance"] = 150
	tGodOfThunderPreAct_Random["RefreshFake"][1][4]["HammerNum"] = 88
	-- 10% * 5%随机携带100个雷霆神魄     
	tGodOfThunderPreAct_Random["RefreshFake"][1][5] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][1][5]["RandomItemChanceType"] = 2
	tGodOfThunderPreAct_Random["RefreshFake"][1][5]["ItemChance"] = 50
	tGodOfThunderPreAct_Random["RefreshFake"][1][5]["HammerNum"] = 100
	-- 总概率90%不刷 
	tGodOfThunderPreAct_Random["RefreshFake"][1][6] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][1][6]["RandomItemChanceType"] = 2
	tGodOfThunderPreAct_Random["RefreshFake"][1][6]["ItemChance"] = 9000
	tGodOfThunderPreAct_Random["RefreshFake"][1][6]["HammerNum"] = 0
	
	-- 刷出假Npc的概率
	tGodOfThunderPreAct_Random["RefreshFake"][2] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][2]["ItemChanceSum"] = 10000
	-- 总概率1%刷出·数值非0代表刷出
	-- 1% * 20%随机日常任务大使
	tGodOfThunderPreAct_Random["RefreshFake"][2][1] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][2][1]["RandomItemChanceType"] = 2
	tGodOfThunderPreAct_Random["RefreshFake"][2][1]["ItemChance"] = 20
	tGodOfThunderPreAct_Random["RefreshFake"][2][1]["NpcId"] = 10020
	-- 1% * 20%随机国境任务大使 
	tGodOfThunderPreAct_Random["RefreshFake"][2][2] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][2][2]["RandomItemChanceType"] = 2
	tGodOfThunderPreAct_Random["RefreshFake"][2][2]["ItemChance"] = 20
	tGodOfThunderPreAct_Random["RefreshFake"][2][2]["NpcId"] = 17400
	-- 1% * 20%随机沙萱
	tGodOfThunderPreAct_Random["RefreshFake"][2][3] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][2][3]["RandomItemChanceType"] = 2
	tGodOfThunderPreAct_Random["RefreshFake"][2][3]["ItemChance"] = 20
	tGodOfThunderPreAct_Random["RefreshFake"][2][3]["NpcId"] = 3215
	-- 1% * 20%随机暹罗神医    
	tGodOfThunderPreAct_Random["RefreshFake"][2][4] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][2][4]["RandomItemChanceType"] = 2
	tGodOfThunderPreAct_Random["RefreshFake"][2][4]["ItemChance"] = 20
	tGodOfThunderPreAct_Random["RefreshFake"][2][4]["NpcId"] = 2000
	-- 1% * 20%随机朱雀仙子    
	tGodOfThunderPreAct_Random["RefreshFake"][2][5] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][2][5]["RandomItemChanceType"] = 2
	tGodOfThunderPreAct_Random["RefreshFake"][2][5]["ItemChance"] = 20
	tGodOfThunderPreAct_Random["RefreshFake"][2][5]["NpcId"] = 19127
	-- 总概率99%不刷  
	tGodOfThunderPreAct_Random["RefreshFake"][2][6] = {}
	tGodOfThunderPreAct_Random["RefreshFake"][2][6]["RandomItemChanceType"] = 2
	tGodOfThunderPreAct_Random["RefreshFake"][2][6]["ItemChance"] = 9900
	tGodOfThunderPreAct_Random["RefreshFake"][2][6]["NpcId"] = 0
	
	
	
----------------------------------------逻辑部分-------------------------------------
-- 随机坐标点`返回坐标索引序号
function GodOfThunderPreAct_RandomCoordinate(tRefresh,nCityId,sNpcName)
	local nLen = #tGodOfThunderPreAct_Cont["Refresh"][nCityId][sNpcName]
	local nRandomNum = math.random(1,nLen)
	
	if #tRefresh > 0 then
		for i=1, #tRefresh do
			if tRefresh[i] == nRandomNum then
				nRandomNum = GodOfThunderPreAct_RandomCoordinate(tRefresh,nCityId,sNpcName)
			end
		end
	end
	
	return nRandomNum
end

-- 刷新雷霆神魄或雷神幻影
function GodOfThunderPreAct_RefreshHammer()
	-- 判断是否处于总活动期间
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return false
	end
	
	local nGlobalId = tGodOfThunderPreAct_Cont["RefreshGlobal"]
	local nGlobalData0 = Get_SysDynaGlobalData(nGlobalId,0)
	-- 这一轮已刷新
	if nGlobalData0 == 1 then
		return false
	end
	
	-- 未刷新则设置当前已刷新·顺便重置用来刷新雷霆源晶的标志位
	Sys_SetSynaGlobalData(nGlobalId,0,1)
	Sys_SetSynaGlobalData(nGlobalId,1,0)
	
	-- 判断激情服
	local nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Normal"]
	-- if SpecialServer_ChkNoGiftServer() then
		-- nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Special"]
	-- end
	
	-- 删除上一轮遗留的npc
	local sNpcName = tGodOfThunderPreAct_Text["NpcName"]["Hammer"]
	Npc_DelDynaNpc(nCityId,"name",sNpcName)
	
	-- 随机10次坐标
	local tRefresh = {}
	for i=1, 10 do
		local nIndex = GodOfThunderPreAct_RandomCoordinate(tRefresh,nCityId,"Hammer")
		local nPosX = tGodOfThunderPreAct_Cont["Refresh"][nCityId]["Hammer"][nIndex]["PosX"]
		local nPosY = tGodOfThunderPreAct_Cont["Refresh"][nCityId]["Hammer"][nIndex]["PosY"]
		local nFlag,tAward = Probabil_RandomAward(tGodOfThunderPreAct_Random["RefreshFake"],1)
		local nHammerNum = tAward[1]["tAward"][1]["HammerNum"]
		
		-- 判断刷新物品还是npc
		if nHammerNum == 0 then
			local nItemId = tGodOfThunderPreAct_Cont["Item"]["Hammer"]
			nPosX = nPosX-1
			nPosY = nPosY-1
			local nCellX = tGodOfThunderPreAct_Cont["Item"]["Drop"]["CellX"]
			local nCellY = tGodOfThunderPreAct_Cont["Item"]["Drop"]["CellY"]
			local nItemNum = tGodOfThunderPreAct_Cont["Item"]["Drop"]["ItemNum"]
			local nExistTime = tGodOfThunderPreAct_Cont["Item"]["Drop"]["ExistTime"]
			
			-- 改为范围掉落5个
			-- Map_DropItem(nCityId,nPosX,nPosY,nItemId)
			Map_DropMultiItems(nCityId,nItemId,nPosX,nPosY,nCellX,nCellY,nItemNum,nExistTime)
		else
			local nLookface = tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Lookface"]
			local nOrientation = tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Orientation"][nCityId][nIndex]
			nLookface = nLookface * 10 + nOrientation
			local nTask0 = tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Task0"][nHammerNum]
			Npc_CreateDynaNpc(sNpcName,2,0,nLookface,0,0,nCityId,nPosX,nPosY,0,0,0,nTask0)
		end
		
		tRefresh[#tRefresh+1] = nIndex
	end
	
	return true
end

-- 点击雷神幻影·nHammerNum用不同task0来传参
function GodOfThunderPreAct_HammerTalk(nNpcId,nHammerNum)
	-- 判断是否处于总活动期间·已刷新的npc过期直接删除
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		-- 判断激情服
		local nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Normal"]
		-- if SpecialServer_ChkNoGiftServer() then
			-- nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Special"]
		-- end
		
		local sNpcName = tGodOfThunderPreAct_Text["NpcName"]["Hammer"]
		Npc_DelDynaNpc(nCityId,"name",sNpcName)
	
		return false
	end
	
	-- 取排行榜前10名显示·修改为不显示排行榜
	-- local tRank = RankingFunc_GetNowData(23643)
	-- for i=1, 10 do
		-- if tRank[i] ~= nil then
			-- if tRank[i]["Score"] > 0 then
				-- tNpcGossip[nNpcId]["Text11" .. 3+i] = Sys_CenterAline(tGodOfThunderPreAct_Text[nNpcId]["Text11" .. 3+i],6,tRank[i]["Score"],23,tRank[i]["UserName"],40) .. "\n"
			-- else
				-- tNpcGossip[nNpcId]["Text11" .. 3+i] = Sys_CenterAline(tGodOfThunderPreAct_Text[nNpcId]["Text11" .. 3+i],6,tGodOfThunderPreAct_Text["NoData"],23,tGodOfThunderPreAct_Text["NoData"],40) .. "\n"
			-- end
		-- else
			-- tNpcGossip[nNpcId]["Text11" .. 3+i] = Sys_CenterAline(tGodOfThunderPreAct_Text[nNpcId]["Text11" .. 3+i],6,tGodOfThunderPreAct_Text["NoData"],23,tGodOfThunderPreAct_Text["NoData"],40) .. "\n"
		-- end
	-- end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tGodOfThunderPreAct_Cont["Level"],tGodOfThunderPreAct_Cont["Metempsychosis"]) then
		-- tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115}
		tNpcGossip[nNpcId]["Text1-1"] = {1115}
		tNpcGossip[nNpcId]["tOption1-1"] = {111}
	else
		tNpcGossip[nNpcId]["Text1116"] = string.format(tGodOfThunderPreAct_Text[nNpcId]["Text1116"],nHammerNum)
		tNpcGossip[nNpcId]["OptionFunc112"] = "GodOfThunderPreAct_HammerFightConfirm</N>" .. nNpcId .. "</N>" .. nHammerNum
		-- tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1116}
		tNpcGossip[nNpcId]["Text1-1"] = {1116}
		tNpcGossip[nNpcId]["tOption1-1"] = {112}
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
	return true
end

-- 进入雷神幻影副本·二次确认
function GodOfThunderPreAct_HammerFightConfirm(nNpcId,nHammerNum)
	-- 判断是否处于总活动期间·已刷新的npc过期直接删除
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		-- 判断激情服
		local nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Normal"]
		-- if SpecialServer_ChkNoGiftServer() then
			-- nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Special"]
		-- end
		
		local sNpcName = tGodOfThunderPreAct_Text["NpcName"]["Hammer"]
		Npc_DelDynaNpc(nCityId,"name",sNpcName)
	
		return false
	end
	
	tNpcGossip[nNpcId]["OptionFunc211"] = "GodOfThunderPreAct_HammerFight</N>" .. nNpcId .. "</N>" .. nHammerNum
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	return true
end

-- 进入雷神幻影副本
function GodOfThunderPreAct_HammerFight(nNpcId,nHammerNum)
	-- 判断是否处于总活动期间·最后一波刷新的npc允许玩家过期后还能进入
	-- if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		-- return false
	-- end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tGodOfThunderPreAct_Cont["Level"],tGodOfThunderPreAct_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tGodOfThunderPreAct_Text[105]["HaveATeam"])
		return false
	end
	
	-- 判断激情服
	local nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Normal"]
	-- if SpecialServer_ChkNoGiftServer() then
		-- nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Special"]
	-- end
	
	-- 每个npc副本限制只能进入一个玩家
	local nDynaNpcId = Get_NpcId()
	if nDynaNpcId == nil or nDynaNpcId <= 0 then
		Sys_MsgBox(tGodOfThunderPreAct_Text[105]["AreadyHaveOne"])
		return false
	end
	
	-- local nNpcData0 = Get_NpcData0(nDynaNpcId)
	-- if nNpcData0 == 1 then
		-- Sys_MsgBox(tGodOfThunderPreAct_Text[105]["AreadyHaveOne"])
		-- return false
	-- end
	
	-- 删除npc
	if Npc_DelDynaNpc(nCityId,"id",nDynaNpcId) then
		-- 进入副本
		local nInstanceId = tGodOfThunderPreAct_Cont["InstanceId"]
		if User_EnterInstance(nInstanceId,0,0,0) then
			-- 设置data0为已有玩家状态
			-- Npc_SetDynaNpcData0(1,nDynaNpcId)
			
			-- 刷新副本内npc
			local sNpcName = tGodOfThunderPreAct_Text["NpcName"]["Hammer"]
			local nLookface = tGodOfThunderPreAct_Cont["DynaNpc"]["Hammer"]["Lookface"]
			local nOrientation = tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["Orientation"]
			nLookface = nLookface * 10 + nOrientation
			local nMapId = Get_UserMapId()
			local nPosX = tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["PosX"]
			local nPosY = tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["PosY"]
			local nTask0 = tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Hammer"]["Task0"][nHammerNum]
			Npc_CreateDynaNpc(sNpcName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
			
			-- 避免特殊情况·若无用可屏蔽
			-- for i, v in pairs(tGodOfThunderPreAct_Cont["Monster"]["Id"]) do 
				-- Monster_DelMonster(nMapId,v)
				-- Monster_Death(v,nMapId)
			-- end
			
			Sys_MsgBox(tGodOfThunderPreAct_Text[105]["NpcBegin"])
			User_TalkChannel2005(tGodOfThunderPreAct_Text[2005]["IntoInstance"][nNpcId])
		end
	end
	
	return true
end

-- 副本内·点击雷神幻影·nHammerNum用不同task0来传参
function GodOfThunderPreAct_InsHammerTalk(nNpcId,nHammerNum)
	tNpcGossip[nNpcId]["Text311"] = string.format(tGodOfThunderPreAct_Text[nNpcId]["Text311"],nHammerNum)
	tNpcGossip[nNpcId]["OptionFunc311"] = "GodOfThunderPreAct_HammerChallenge</N>" .. nHammerNum
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	return true
end

-- 副本内·挑战
function GodOfThunderPreAct_HammerChallenge(nHammerNum)
	-- 删除npc
	local nMapId = Get_UserMapId()
	local sNpcName = tGodOfThunderPreAct_Text["NpcName"]["Hammer"]
	
	if Npc_DelDynaNpc(nMapId,"name",sNpcName) then
		-- 刷新怪物
		local nMonsterId = tGodOfThunderPreAct_Cont["Monster"]["Id"][nHammerNum]
		local nPosX = tGodOfThunderPreAct_Cont["Monster"]["PosX"]
		local nPosY = tGodOfThunderPreAct_Cont["Monster"]["PosY"]
		local nGenId = tGodOfThunderPreAct_Cont["Monster"]["GenId"][nMonsterId]
		
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
		User_EffectAdd(tGodOfThunderPreAct_Cont["EffectObj"],tGodOfThunderPreAct_Cont["Effect"])
		return true
	end
end

-- 刷新雷霆源晶或假npc
function GodOfThunderPreAct_RefreshAxe()
	-- 判断是否处于总活动期间
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return false
	end
	
	local nGlobalId = tGodOfThunderPreAct_Cont["RefreshGlobal"]
	local nGlobalData1 = Get_SysDynaGlobalData(nGlobalId,1)
	-- 这一轮已刷新
	if nGlobalData1 == 1 then
		return false
	end
	
	-- 未刷新则设置当前已刷新·顺便重置用来刷新雷霆神魄的标志位
	Sys_SetSynaGlobalData(nGlobalId,1,1)
	Sys_SetSynaGlobalData(nGlobalId,0,0)
	
	-- 判断激情服
	local nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Normal"]
	-- if SpecialServer_ChkNoGiftServer() then
		-- nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Special"]
	-- end
	
	-- 删除上一轮遗留的npc
	for i, v in pairs(tGodOfThunderPreAct_Text["NpcName"]["Axe"]) do
		Npc_DelDynaNpc(nCityId,"name",v)
	end
	
	-- 随机5次坐标
	local tRefresh = {}
	local nNpcNum = 0
	local nVirtualId = tGodOfThunderPreAct_Cont["VirtualId"]
	for j=1, 5 do
		local nIndex = GodOfThunderPreAct_RandomCoordinate(tRefresh,nCityId,"Axe")
		local nPosX = tGodOfThunderPreAct_Cont["Refresh"][nCityId]["Axe"][nIndex]["PosX"]
		local nPosY = tGodOfThunderPreAct_Cont["Refresh"][nCityId]["Axe"][nIndex]["PosY"]
		local nFlag,tAward = Probabil_RandomAward(tGodOfThunderPreAct_Random["RefreshFake"],2)
		local nNpcId = tAward[1]["tAward"][1]["NpcId"]
		local sNpcName = tGodOfThunderPreAct_Text["NpcName"]["Axe"][nNpcId]
		
		-- 判断刷新物品还是npc`假npc每次只能刷一个
		if nNpcNum == 0 and nNpcId ~= 0 then
			nNpcNum = nNpcNum + 1
			
			-- 判断是否已有npc在榜单
			local tRank = RankingFunc_GetNowData(23643)
			local nSign = 0
			for k=1, 10 do
				if tRank[k] ~= nil then
					if tRank[k]["UserId"] == nVirtualId then
						nSign = 1
					end
				end
			end
			
			-- 榜上无npc数据则取第九名分值+1来作为npc的排行榜分值·若小于npc携带的源晶数量则用携带数量进行排行
			if nSign == 0 then
				local nScore = tGodOfThunderPreAct_Cont["Item"]["AxeNum"]
				if tRank[9] ~= nil then
					if tRank[9]["Score"] + 1 >= nScore then
						nScore = tRank[9]["Score"] + 1
					end
					
				end
				
				RankingFunc_SetInfo(23643,nScore,nVirtualId,sNpcName)
				
				-- 全服公告
				tRank = RankingFunc_GetNowData(23643)
				for m=1, 10 do
					if tRank[m] ~= nil then
						if tRank[m]["UserId"] == nVirtualId then
							local sBroadcast = string.format(tGodOfThunderPreAct_Text["BroadCast"]["IntoRank"],sNpcName,m)
							Sys_SystemBroadcast(sBroadcast)
						end
					end
				end
			end
			
			local nLookface = tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Lookface"][nNpcId]
			local nTask0 = tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Task0"][nNpcId]
			local nOrientation = tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Orientation"][nCityId][nIndex]
			nLookface = nLookface * 10 + nOrientation
			Npc_CreateDynaNpc(sNpcName,2,0,nLookface,0,0,nCityId,nPosX,nPosY,0,0,0,nTask0)
		else
			local nItemId = tGodOfThunderPreAct_Cont["Item"]["Axe"]
			nPosX = nPosX-1
			nPosY = nPosY-1
			local nCellX = tGodOfThunderPreAct_Cont["Item"]["Drop"]["CellX"]
			local nCellY = tGodOfThunderPreAct_Cont["Item"]["Drop"]["CellY"]
			local nItemNum = tGodOfThunderPreAct_Cont["Item"]["Drop"]["ItemNum"]
			local nExistTime = tGodOfThunderPreAct_Cont["Item"]["Drop"]["ExistTime"]
			
			-- 改为范围掉落5个
			-- Map_DropItem(nCityId,nPosX,nPosY,nItemId)
			Map_DropMultiItems(nCityId,nItemId,nPosX,nPosY,nCellX,nCellY,nItemNum,nExistTime)
		end
		
		tRefresh[#tRefresh+1] = nIndex
	end
	
	return true
end

-- 点击假npc
function GodOfThunderPreAct_AxeTalk(nNpcId,nFakeNpcId)
	-- 判断是否处于总活动期间·已刷新的npc过期直接删除
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		-- 判断激情服
		local nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Normal"]
		-- if SpecialServer_ChkNoGiftServer() then
			-- nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Special"]
		-- end
		
		for i, v in pairs(tGodOfThunderPreAct_Text["NpcName"]["Axe"]) do
			Npc_DelDynaNpc(nCityId,"name",v)
		end
		
		return false
	end
	
	-- 取排行榜前10名显示·修改为不显示排行榜
	-- local tRank = RankingFunc_GetNowData(23643)
	-- for i=1, 10 do
		-- if tRank[i] ~= nil then
			-- if tRank[i]["Score"] > 0 then
				-- tNpcGossip[nNpcId]["Text11" .. 3+i] = Sys_CenterAline(tGodOfThunderPreAct_Text[nNpcId]["Text11" .. 3+i],6,tRank[i]["Score"],23,tRank[i]["UserName"],40) .. "\n"
			-- else
				-- tNpcGossip[nNpcId]["Text11" .. 3+i] = Sys_CenterAline(tGodOfThunderPreAct_Text[nNpcId]["Text11" .. 3+i],6,tGodOfThunderPreAct_Text["NoData"],23,tGodOfThunderPreAct_Text["NoData"],40) .. "\n"
			-- end
		-- else
			-- tNpcGossip[nNpcId]["Text11" .. 3+i] = Sys_CenterAline(tGodOfThunderPreAct_Text[nNpcId]["Text11" .. 3+i],6,tGodOfThunderPreAct_Text["NoData"],23,tGodOfThunderPreAct_Text["NoData"],40) .. "\n"
		-- end
	-- end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tGodOfThunderPreAct_Cont["Level"],tGodOfThunderPreAct_Cont["Metempsychosis"]) then
		-- tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115}
		tNpcGossip[nNpcId]["Text1-1"] = {1115}
		tNpcGossip[nNpcId]["tOption1-1"] = {111}
	else
		tNpcGossip[nNpcId]["OptionFunc112"] = "GodOfThunderPreAct_AxeFightConfirm</N>" .. nNpcId .. "</N>" .. nFakeNpcId
		-- tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1116}
		tNpcGossip[nNpcId]["Text1-1"] = {1116}
		tNpcGossip[nNpcId]["tOption1-1"] = {112}
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
	return true
end

-- 进入雷神幻影副本·二次确认
function GodOfThunderPreAct_AxeFightConfirm(nNpcId,nFakeNpcId)
	-- 判断是否处于总活动期间·已刷新的npc过期直接删除
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		-- 判断激情服
		local nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Normal"]
		-- if SpecialServer_ChkNoGiftServer() then
			-- nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Special"]
		-- end
		
		local sNpcName = tGodOfThunderPreAct_Text["NpcName"]["Hammer"]
		Npc_DelDynaNpc(nCityId,"name",sNpcName)
	
		return false
	end
	
	tNpcGossip[nNpcId]["OptionFunc211"] = "GodOfThunderPreAct_AxeFight</N>" .. nNpcId .. "</N>" .. nFakeNpcId
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	return true
end

-- 进入假npc副本
function GodOfThunderPreAct_AxeFight(nNpcId,nFakeNpcId)
	-- 判断是否处于总活动期间·最后一波刷新的npc允许玩家过期后还能进入
	-- if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		-- return false
	-- end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tGodOfThunderPreAct_Cont["Level"],tGodOfThunderPreAct_Cont["Metempsychosis"]) then
		return false
	end
	
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tGodOfThunderPreAct_Text[105]["HaveATeam"])
		return false
	end
	
	-- 判断激情服
	local nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Normal"]
	-- if SpecialServer_ChkNoGiftServer() then
		-- nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Special"]
	-- end
	
	-- 每个npc副本限制只能进入一个玩家
	local nDynaNpcId = Get_NpcId()
	if nDynaNpcId == nil or nDynaNpcId <= 0 then
		Sys_MsgBox(tGodOfThunderPreAct_Text[105]["AreadyHaveOne"])
		return false
	end
	
	-- local nNpcData0 = Get_NpcData0(nDynaNpcId)
	-- if nNpcData0 == 1 then
		-- Sys_MsgBox(tGodOfThunderPreAct_Text[105]["AreadyHaveOne"])
		-- return false
	-- end
	
	-- 删除npc
	if Npc_DelDynaNpc(nCityId,"id",nDynaNpcId) then
		-- 进入副本
		local nInstanceId = tGodOfThunderPreAct_Cont["InstanceId"]
		if User_EnterInstance(nInstanceId,0,0,0) then
			-- 设置data0为已有玩家状态
			-- Npc_SetDynaNpcData0(1,nDynaNpcId)
			
			-- 刷新副本内npc
			local sNpcName = tGodOfThunderPreAct_Text["NpcName"]["Axe"][nFakeNpcId]
			local nLookface = tGodOfThunderPreAct_Cont["DynaNpc"]["Axe"]["Lookface"][nFakeNpcId]
			local nOrientation = tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["Orientation"]
			nLookface = nLookface * 10 + nOrientation
			local nMapId = Get_UserMapId()
			local nPosX = tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["PosX"]
			local nPosY = tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["PosY"]
			local nTask0 = tGodOfThunderPreAct_Cont["DynaNpc"]["Instance"]["Axe"]["Task0"][nFakeNpcId]
			Npc_CreateDynaNpc(sNpcName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
			
			-- 避免特殊情况·若无用可屏蔽
			-- for i, v in pairs(tGodOfThunderPreAct_Cont["Monster"]["Id"]) do 
				-- Monster_DelMonster(nMapId,v)
				-- Monster_Death(v,nMapId)
			-- end
			
			Sys_MsgBox(tGodOfThunderPreAct_Text[105]["NpcBegin"])
			User_TalkChannel2005(tGodOfThunderPreAct_Text[2005]["IntoInstance"][nFakeNpcId])
		end
	end
	
	return true
end

-- 副本内·点击假npc·nHammerNum用不同task0来传参
function GodOfThunderPreAct_InsAxeTalk(nNpcId,nFakeNpcId)
	tNpcGossip[nNpcId]["OptionFunc311"] = "GodOfThunderPreAct_AxeChallenge</N>" .. nNpcId .. "</N>" .. nFakeNpcId
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	return true
end

-- 副本内·挑战
function GodOfThunderPreAct_AxeChallenge(nNpcId,nFakeNpcId)
	-- 删除npc
	local nMapId = Get_UserMapId()
	local sNpcName = tGodOfThunderPreAct_Text["NpcName"]["Axe"][nFakeNpcId]
	
	if Npc_DelDynaNpc(nMapId,"name",sNpcName) then
		-- 刷新怪物
		local nMonsterId = tGodOfThunderPreAct_Cont["Monster"]["Id"][nFakeNpcId]
		local nPosX = tGodOfThunderPreAct_Cont["Monster"]["PosX"]
		local nPosY = tGodOfThunderPreAct_Cont["Monster"]["PosY"]
		local nGenId = tGodOfThunderPreAct_Cont["Monster"]["GenId"][nMonsterId]
		
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
		User_EffectAdd(tGodOfThunderPreAct_Cont["EffectObj"],tGodOfThunderPreAct_Cont["Effect"])
		return true
	end
end

-- 击杀副本怪
function GodOfThunderPreAct_KillMonster(nMonsterId)
	-- 判断是否处于总活动期间·副本中活动过期依然可以打
	-- if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		-- return false
	-- end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tGodOfThunderPreAct_Cont["Level"],tGodOfThunderPreAct_Cont["Metempsychosis"]) then
		return false
	end
	
	local nMapId = Get_UserMapId()
	Monster_DelMonster(nMapId,nMonsterId)
	Monster_Death(nMonsterId,nMapId)
	
	-- 刷新宝箱
	local sName = tGodOfThunderPreAct_Text["NpcName"]["Box"]
	local nLookface = tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Lookface"]
	local nPosX = tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["PosX"]
	local nPosY = tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["PosY"]
	local nTask0 = tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["Task0"][nMonsterId]
	
	Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
	Sys_MsgBox(tGodOfThunderPreAct_Text[105]["NpcEnd"])
	
	local nRewardNum = tGodOfThunderPreAct_Cont["Monster"]["RewardNum"][nMonsterId]
	local sLog = string.format(tGodOfThunderPreAct_Log["KillMonster"],nRewardNum)
	Sys_SaveActionFestivalLog(sLog)
	return true
end

-- 开启宝箱
function GodOfThunderPreAct_OpenBox(nMonsterId)
	local nRewardNum = tGodOfThunderPreAct_Cont["Monster"]["RewardNum"][nMonsterId]
	local tReward = CommonFunc_Copy(tGodOfThunderPreAct_Reward["OpenBox"])
	tReward["RewardItem"][1]["Attr"] = string.format(tGodOfThunderPreAct_Reward["OpenBox"]["RewardItem"][1]["Attr"],nRewardNum)
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tGodOfThunderPreAct_Text[105]["FullBag"])
		return false
	end
	
	-- 删除宝箱
	local nMapId = Get_UserMapId()
	local sName = tGodOfThunderPreAct_Text["NpcName"]["Box"]
	
	if Npc_DelDynaNpc(nMapId,"name",sName) then
		RewardTemplate_UseItemAndMsg(tReward)
		
		-- 出提示
		local nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Normal"]
		-- if SpecialServer_ChkNoGiftServer() then
			-- nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Special"]
		-- end
		
		Sys_MsgBox(string.format(tGodOfThunderPreAct_Text[105]["OpenBoxSuccess"],nRewardNum),"GodOfThunderPreAct_ChgMap</N>" .. nCityId,"NULL")
		
		-- 全服公告
		local sUserName = Get_UserName()
		local sNpcName = tGodOfThunderPreAct_Text["NpcName"]["ForMonster"][nMonsterId]
		local sBroadcast = string.format(tGodOfThunderPreAct_Text["BroadCast"]["KillMonster"],sUserName,sNpcName,nRewardNum)
		Sys_SystemBroadcast(sBroadcast)
		
		-- 加个光效
		local nPosX = tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["PosX"]
		local nPosY = tGodOfThunderPreAct_Cont["DynaNpc"]["Box"]["PosY"]
		local sEffectName = tGodOfThunderPreAct_Cont["Effect"]
		
		Map_Effect(nMapId,nPosX,nPosY,sEffectName)
		
		return true
	end
end

-- 返回双龙城
function GodOfThunderPreAct_TrapBackCity()
	-- 判断激情服
	local nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Normal"]
	-- if SpecialServer_ChkNoGiftServer() then
		-- nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Special"]
	-- end
	
	Sys_MsgBox(tGodOfThunderPreAct_Text[105]["BackToTwinCity"][nCityId],"GodOfThunderPreAct_ChgMap</N>" .. nCityId,"NULL")
end

-- 传送
function GodOfThunderPreAct_ChgMap(nMapId)
	local nCellX = tGodOfThunderPreAct_Cont["ChgMap"][nMapId]["PosX"]
	local nCellY = tGodOfThunderPreAct_Cont["ChgMap"][nMapId]["PosY"]
	local nRange = tGodOfThunderPreAct_Cont["ChgMap"][nMapId]["Range"]
	
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,nRange,nRange,1)
end

-- 服务器启动
function GodOfThunderPreAct_ServerStart()
	-- 判断是否处于总活动期间
	if not Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
		return false
	end
	
	-- 判断激情服
	local nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Normal"]
	-- if SpecialServer_ChkNoGiftServer() then
		-- nCityId = tGodOfThunderPreAct_Cont["TwinCity"]["Special"]
	-- end
	
	-- 删除遗留npc·注意动态npc名不能跟其他活动冲突·避免错删
	local sNpcName = tGodOfThunderPreAct_Text["NpcName"]["Hammer"]
	Npc_DelDynaNpc(nCityId,"name",sNpcName)
	
	for i, v in pairs(tGodOfThunderPreAct_Text["NpcName"]["Axe"]) do
		Npc_DelDynaNpc(nCityId,"name",v)
	end
end


----------------------------------------模板部分-------------------------------------
-------------------------------NPC模板
-- 雷神幻影
tNpcFace[6433] = 84

tNpcGossip[23652] = tNpcGossip[23652] or DefaultNpc:new{}
tNpcGossip[23652]["OptionHidden"] = 1
tNpcGossip[23652]["DialogueText"] = tGodOfThunderPreAct_Text[23652]

-- 对白
tNpcGossip[23652]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116}
tNpcGossip[23652]["tOption1-1"] = {111,112}

-- 二次确认
tNpcGossip[23652]["Text2-1"] = {211}
tNpcGossip[23652]["tOption2-1"] = {211}

-- 副本内对白
tNpcGossip[23652]["Text3-1"] = {311}
tNpcGossip[23652]["tOption3-1"] = {311}


-- 假npc
tNpcFace[6434] = 92
tNpcFace[6462] = 84
tNpcFace[6463] = 67
tNpcFace[6464] = 67
tNpcFace[6465] = 14
tNpcGossip[23653] = tNpcGossip[23653] or DefaultNpc:new{}
tNpcGossip[23653]["OptionHidden"] = 1
tNpcGossip[23653]["DialogueText"] = tGodOfThunderPreAct_Text[23653]

-- 对白
tNpcGossip[23653]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116}
tNpcGossip[23653]["tOption1-1"] = {111,112}

-- 二次确认
tNpcGossip[23653]["Text2-1"] = {211}
tNpcGossip[23653]["tOption2-1"] = {211}

-- 副本内对白
tNpcGossip[23653]["Text3-1"] = {311}
tNpcGossip[23653]["tOption3-1"] = {311}


-------------------------------怪物掉落
local tGodOfThunderPreAct_Monster = {}
	-- 击杀副本怪
	tGodOfThunderPreAct_Monster[1] = {}
	tGodOfThunderPreAct_Monster[1]["Function"] = GodOfThunderPreAct_KillMonster
	tGodOfThunderPreAct_Monster[1]["MonsterId"] = {4951,4952,4953,4954,4955,4956,4957,4958,4959,4960}
	table.insert(tMonsterDrop_AreaLoad,tGodOfThunderPreAct_Monster[1])


-------------------------------时间自检
local tGodOfThunderPreAct_OnTime = {}
	-- 刷新雷霆神魄
	tGodOfThunderPreAct_OnTime[1] = {}
	tGodOfThunderPreAct_OnTime[1]["Type"] = 6
	tGodOfThunderPreAct_OnTime[1]["TimeType"] = 5  -- 小时时间
	tGodOfThunderPreAct_OnTime[1]["Multiple"] = {}
	tGodOfThunderPreAct_OnTime[1]["Multiple"][1] = "00 01"
	tGodOfThunderPreAct_OnTime[1]["Multiple"][2] = "15 16"
	tGodOfThunderPreAct_OnTime[1]["Multiple"][3] = "30 31"
	tGodOfThunderPreAct_OnTime[1]["Multiple"][4] = "45 46"
	tGodOfThunderPreAct_OnTime[1]["Func"] = GodOfThunderPreAct_RefreshHammer
	table.insert(tSystemTime_InitialData,tGodOfThunderPreAct_OnTime[1])
	-- 刷新雷霆源晶
	tGodOfThunderPreAct_OnTime[2] = {}
	tGodOfThunderPreAct_OnTime[2]["Type"] = 6
	tGodOfThunderPreAct_OnTime[2]["TimeType"] = 5  -- 小时时间
	tGodOfThunderPreAct_OnTime[2]["Multiple"] = {}
	tGodOfThunderPreAct_OnTime[2]["Multiple"][1] = "05 06"
	tGodOfThunderPreAct_OnTime[2]["Multiple"][2] = "20 21"
	tGodOfThunderPreAct_OnTime[2]["Multiple"][3] = "35 36"
	tGodOfThunderPreAct_OnTime[2]["Multiple"][4] = "50 51"
	tGodOfThunderPreAct_OnTime[2]["Func"] = GodOfThunderPreAct_RefreshAxe
	table.insert(tSystemTime_InitialData,tGodOfThunderPreAct_OnTime[2])


-------------------------------服务器启动
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],GodOfThunderPreAct_ServerStart)


