------------------------------------------------------------------------------
--Name:		[征服][任务脚本]铁扇门主线任务
--Purpose:	铁扇门主线任务制作
--Creator: 	郑宗胜
--Created:	2016/12/05
------------------------------------------------------------------------------
-- 命名前缀
-- IronGateMainTask_

--logid : 18000148
--lua ini :21051

-- 掩码说明：
-- 任务ID	任务名字
-- 3796	任务1.1 （非铁扇门职业的玩家）--铁骨引侠情
-- 3797	任务1.2 （铁扇门职业的玩家） --门派遭魔袭
-- 3798	任务2			--何处呼救声
-- 3799	任务3			--挥扇退妖魔
-- 3800	任务4			--支援传功长老
-- 3801	 	任务5			--守护皇陵
-- 3802	任务6			--一出天下惊
-- #stc :
-- #	15381 背包信
-- #	15525-保存玩家所在副本2的地图ID，用于是否显示震屏效果
-- #	15527 出副本2，是否弹出漫画
--#	15569 上线是否弹漫画
-----------------------------------------------------------数据配置-----------------------------------------------------------

local tIronGateMainTask_Constant = {}
	--fortest
	--上线获得背包信时间
	tIronGateMainTask_Constant["AcceptTaskTime"]="2016-12-08 00:00 2017-02-05 23:59"
	
	--任务等级
	tIronGateMainTask_Constant["Level"] = 15
	tIronGateMainTask_Constant["Metempsychosis"] = 0
	
	--副本索引
	tIronGateMainTask_Constant["Instance"] ={80,80,80,81,81}
	tIronGateMainTask_Constant["ChgLigthInstance"] = 80 --调整副本一亮度
	tIronGateMainTask_Constant["LigthColor"] = 14535867 --亮度配置
	--副本2
	tIronGateMainTask_Constant["InstanceTwo"]=81
	
	--公共地图出口，进入副本2,和寻路的NPC
	tIronGateMainTask_Constant["CommonMapIndex"] = 4
	tIronGateMainTask_Constant["CommonMapFind"] = 20031
	
	--垂死传功长老出休息时间，3s
	tIronGateMainTask_Constant["RelaxSeconde"]=2
	--和垂死长老对话后，读条后弹的漫画
	tIronGateMainTask_Constant["RelaxCarton"] = 1010
	
	--小师妹的npcId
	tIronGateMainTask_Constant["LittleSisterId"] = 20030
	--魔族NPC id
	tIronGateMainTask_Constant["DemonNpcId"] = 20032
	
	--阶段1和2 BOSS的Id
	tIronGateMainTask_Constant["FirstBossId"] = 2818
	tIronGateMainTask_Constant["SecondBossId"] = 2823
	
	--魔族步卒Id
	tIronGateMainTask_Constant["LittleMonsterId"] =2814
	--副本1 怪物id
	tIronGateMainTask_Constant["IntanceOneMonster"]={2814,2815}
	
	--每10秒震屏
	tIronGateMainTask_Constant["TimeDelay"]=10
	
	--传功长老处增益的状态，索引 tIronGateMainTask_Status
	tIronGateMainTask_Constant["tAddStatus"]={1,5,6}
	tIronGateMainTask_Constant["LifeStatusIndex"]=6 --增益生命的索引
	
	tIronGateMainTask_Constant["EffectOffset"] =8 --光效偏移（公共地图的光效）
	
	-- 上线弹的漫画
	tIronGateMainTask_Constant["OnlineCarton"]=1012


--掩码
local tIronGateMainTask_Stc={}
	--背包信
	tIronGateMainTask_Stc[1]={}
	tIronGateMainTask_Stc[1]["EventType"]=153
	tIronGateMainTask_Stc[1]["DataType"]=81
	
	--保存玩家所在副本2的地图ID，用于是否显示震屏效果
	tIronGateMainTask_Stc[2]={}
	tIronGateMainTask_Stc[2]["EventType"]=155
	tIronGateMainTask_Stc[2]["DataType"]=25
	
	--出副本2，是否弹出漫画
	tIronGateMainTask_Stc[3]={}
	tIronGateMainTask_Stc[3]["EventType"]=155
	tIronGateMainTask_Stc[3]["DataType"]=27
	
	--上线是否弹漫画
	tIronGateMainTask_Stc[4]={}
	tIronGateMainTask_Stc[4]["EventType"]=155
	tIronGateMainTask_Stc[4]["DataType"]=69
	
	--保存玩家所在副本2的地图ID，用于判断是否获得增益状态
	tIronGateMainTask_Stc[5]={}
	tIronGateMainTask_Stc[5]["EventType"]=155
	tIronGateMainTask_Stc[5]["DataType"]=70


---接任务和交任务相关配置
local tIronGateMainTask_TaskInfo={}
	--长老来信
	tIronGateMainTask_TaskInfo[3301710]={}
	tIronGateMainTask_TaskInfo[3301710]["TaskId"]={}
	tIronGateMainTask_TaskInfo[3301710]["TaskId"][1] =3796 --任务1.1 （非铁扇门职业的玩家）
	tIronGateMainTask_TaskInfo[3301710]["TaskId"][2] =3797 --任务1.2 （铁扇门职业的玩家）
	
	--守门弟子
	tIronGateMainTask_TaskInfo[20028]={}
	tIronGateMainTask_TaskInfo[20028]["AllTaskId"]={3797,3798,3799,3800,3801}
	tIronGateMainTask_TaskInfo[20028]["AllLinkIndex"]={1,2,3,4,5} --用于索引 tIronGateMainTask_Constant["Instance"]
	
	--传功长老
	tIronGateMainTask_TaskInfo[20029]={}
	tIronGateMainTask_TaskInfo[20029]["TaskId"]=3797
	tIronGateMainTask_TaskInfo[20029]["PostTaskId"]=3798 --后续任务
	tIronGateMainTask_TaskInfo[20029]["Link"]="1-2" --完成任务后的对白
	tIronGateMainTask_TaskInfo[20029]["Carton"] = 1009  --弹漫画
	tIronGateMainTask_TaskInfo[20029]["CreatDescNpc"]=1 --任务完成，用于围绕小师妹的怪物NPC，索引tIronGateMainTask_DescriptNpc
	tIronGateMainTask_TaskInfo[20029]["CreatDyna"]=2 --用于动态NPC(小师妹)
	
	--小师妹
	tIronGateMainTask_TaskInfo[20030]={}
	tIronGateMainTask_TaskInfo[20030]["TaskId"]=3798
	tIronGateMainTask_TaskInfo[20030]["PostTaskId"]=3799
	tIronGateMainTask_TaskInfo[20030]["Link"]="1-2"
	tIronGateMainTask_TaskInfo[20030]["CallMonsterId"]=2815 --和NPC对话，创建怪物
	tIronGateMainTask_TaskInfo[20030]["DelDescNpc"]=1 --删除装饰NPC
	-- tIronGateMainTask_TaskInfo[20030]["CreatEffect"]=6
	--小师妹的第二个任务
	tIronGateMainTask_TaskInfo[20030]["TaskId2"]=3799
	tIronGateMainTask_TaskInfo[20030]["PostTaskId2"]=3800
	tIronGateMainTask_TaskInfo[20030]["Link2"]="1-5"
	
	--垂死传功长老
	tIronGateMainTask_TaskInfo[20031]={}
	tIronGateMainTask_TaskInfo[20031]["TaskId"]=3800
	tIronGateMainTask_TaskInfo[20031]["PostTaskId"]=3801 --后续任务
	tIronGateMainTask_TaskInfo[20031]["CreatDyna"]=5 --用于创建动态NPC(魔族将军)
	tIronGateMainTask_TaskInfo[20031]["Status"]=1 --给予状态，有配，增益tIronGateMainTask_Constant["tAddStatus"]
	tIronGateMainTask_TaskInfo[20031]["AddEffect"]=2 --完成任务增加的光效
	tIronGateMainTask_TaskInfo[20031]["FindNpc"]=20032 --寻路NPC
	
	--魔族将军
	tIronGateMainTask_TaskInfo[20032]={}
	tIronGateMainTask_TaskInfo[20032]["TaskId"]=3801
	tIronGateMainTask_TaskInfo[20032]["PostTaskId"]=3801 --用于刷怪(同小师妹)，这边是怪物死亡完成任务
	tIronGateMainTask_TaskInfo[20032]["NextTaskId"]=3802 --下一个taskid
	tIronGateMainTask_TaskInfo[20032]["CallMonsterId"]=2818 --用于创建怪物
	tIronGateMainTask_TaskInfo[20032]["CreatEffect"]=5 --创建怪物增加的光效
	tIronGateMainTask_TaskInfo[20032]["CreatTraps"]=4 --创建多个陷阱，索引陷阱配置


--动态NPC
local tIronGateMainTask_DynaNpc={}
	--传功长老
	tIronGateMainTask_DynaNpc[1]={}
	tIronGateMainTask_DynaNpc[1]["Lookface"]=45290
	tIronGateMainTask_DynaNpc[1]["Task0"]=97292251
	tIronGateMainTask_DynaNpc[1]["PosX"]=126
	tIronGateMainTask_DynaNpc[1]["PosY"]=116
	
	--小师妹
	tIronGateMainTask_DynaNpc[2]={}
	tIronGateMainTask_DynaNpc[2]["Lookface"]=45302
	tIronGateMainTask_DynaNpc[2]["Task0"]=97292252
	tIronGateMainTask_DynaNpc[2]["PosX"]=155
	tIronGateMainTask_DynaNpc[2]["PosY"]=138
	
	--小师妹
	tIronGateMainTask_DynaNpc[3]={}
	tIronGateMainTask_DynaNpc[3]["Lookface"]=45302
	tIronGateMainTask_DynaNpc[3]["Task0"]=97292252
	tIronGateMainTask_DynaNpc[3]["PosX"]=155
	tIronGateMainTask_DynaNpc[3]["PosY"]=138
	
	--魔族将军
	tIronGateMainTask_DynaNpc[5]={}
	tIronGateMainTask_DynaNpc[5]["Lookface"]=51700
	tIronGateMainTask_DynaNpc[5]["Task0"]=97292254
	tIronGateMainTask_DynaNpc[5]["PosX"]=334
	tIronGateMainTask_DynaNpc[5]["PosY"]=193
	
	--以下是，怪物死亡触发对动态NPC的操作(删除传功长老，召回小师妹)
	tIronGateMainTask_DynaNpc[6]={}
	tIronGateMainTask_DynaNpc[6]["Lookface"]=45306
	tIronGateMainTask_DynaNpc[6]["Task0"]=97292252
	tIronGateMainTask_DynaNpc[6]["PosX"]=123
	tIronGateMainTask_DynaNpc[6]["PosY"]=119


--装饰NPC
local tIronGateMainTask_DescriptNpc={}
	--围绕小师妹的怪物NPC
	tIronGateMainTask_DescriptNpc[1]={}
	
	tIronGateMainTask_DescriptNpc[1][1]={}
	tIronGateMainTask_DescriptNpc[1][1]["Lookface"]=51854
	tIronGateMainTask_DescriptNpc[1][1]["Task0"]=0
	tIronGateMainTask_DescriptNpc[1][1]["PosX"]=154
	tIronGateMainTask_DescriptNpc[1][1]["PosY"]=146
	
	tIronGateMainTask_DescriptNpc[1][2]={}
	tIronGateMainTask_DescriptNpc[1][2]["Lookface"]=51855
	tIronGateMainTask_DescriptNpc[1][2]["Task0"]=0
	tIronGateMainTask_DescriptNpc[1][2]["PosX"]=148
	tIronGateMainTask_DescriptNpc[1][2]["PosY"]=142
	
	tIronGateMainTask_DescriptNpc[1][3]={}
	tIronGateMainTask_DescriptNpc[1][3]["Lookface"]=51857
	tIronGateMainTask_DescriptNpc[1][3]["Task0"]=0
	tIronGateMainTask_DescriptNpc[1][3]["PosX"]=146
	tIronGateMainTask_DescriptNpc[1][3]["PosY"]=135
	
	tIronGateMainTask_DescriptNpc[1][4]={}
	tIronGateMainTask_DescriptNpc[1][4]["Lookface"]=51850
	tIronGateMainTask_DescriptNpc[1][4]["Task0"]=0
	tIronGateMainTask_DescriptNpc[1][4]["PosX"]=157
	tIronGateMainTask_DescriptNpc[1][4]["PosY"]=133
	
	tIronGateMainTask_DescriptNpc[1][5]={}
	tIronGateMainTask_DescriptNpc[1][5]["Lookface"]=51852
	tIronGateMainTask_DescriptNpc[1][5]["Task0"]=0
	tIronGateMainTask_DescriptNpc[1][5]["PosX"]=162
	tIronGateMainTask_DescriptNpc[1][5]["PosY"]=139



--怪物位置配置
local tIronGateMainTask_Monster={}
	--魔族步卒
	tIronGateMainTask_Monster[2814]={}
	tIronGateMainTask_Monster[2814][1]={}
	tIronGateMainTask_Monster[2814][1][1]={}
	tIronGateMainTask_Monster[2814][1][1]["PosX"]=150
	tIronGateMainTask_Monster[2814][1][1]["PosY"]=134
	tIronGateMainTask_Monster[2814][1][1]["GenId"]=20866
	
	tIronGateMainTask_Monster[2814][2]={}
	tIronGateMainTask_Monster[2814][2][1]={}
	tIronGateMainTask_Monster[2814][2][1]["PosX"]=154
	tIronGateMainTask_Monster[2814][2][1]["PosY"]=133
	tIronGateMainTask_Monster[2814][2][1]["GenId"]=20867
	
	tIronGateMainTask_Monster[2814][3]={}
	tIronGateMainTask_Monster[2814][3][1]={}
	tIronGateMainTask_Monster[2814][3][1]["PosX"]=153
	tIronGateMainTask_Monster[2814][3][1]["PosY"]=141
	tIronGateMainTask_Monster[2814][3][1]["GenId"]=20868
	
	tIronGateMainTask_Monster[2814][4]={}
	tIronGateMainTask_Monster[2814][4][1]={}
	tIronGateMainTask_Monster[2814][4][1]["PosX"]=160
	tIronGateMainTask_Monster[2814][4][1]["PosY"]=141
	tIronGateMainTask_Monster[2814][4][1]["GenId"]=20869
	
	tIronGateMainTask_Monster[2814][5]={}
	tIronGateMainTask_Monster[2814][5][1]={}
	tIronGateMainTask_Monster[2814][5][1]["PosX"]=161
	tIronGateMainTask_Monster[2814][5][1]["PosY"]=135
	tIronGateMainTask_Monster[2814][5][1]["GenId"]=20870
	
	
	--魔族守卫
	tIronGateMainTask_Monster[2815]={}
	tIronGateMainTask_Monster[2815][1]={}
	tIronGateMainTask_Monster[2815][1]["PosX"]=154
	tIronGateMainTask_Monster[2815][1]["PosY"]=146
	tIronGateMainTask_Monster[2815][1]["GenId"]=20873
	
	tIronGateMainTask_Monster[2815][2]={}
	tIronGateMainTask_Monster[2815][2]["PosX"]=148
	tIronGateMainTask_Monster[2815][2]["PosY"]=142
	tIronGateMainTask_Monster[2815][2]["GenId"]=20874
	
	tIronGateMainTask_Monster[2815][3]={}
	tIronGateMainTask_Monster[2815][3]["PosX"]=146
	tIronGateMainTask_Monster[2815][3]["PosY"]=135
	tIronGateMainTask_Monster[2815][3]["GenId"]=20875
	
	tIronGateMainTask_Monster[2815][4]={}
	tIronGateMainTask_Monster[2815][4]["PosX"]=157
	tIronGateMainTask_Monster[2815][4]["PosY"]=133
	tIronGateMainTask_Monster[2815][4]["GenId"]=20876
	
	tIronGateMainTask_Monster[2815][5]={}
	tIronGateMainTask_Monster[2815][5]["PosX"]=162
	tIronGateMainTask_Monster[2815][5]["PosY"]=139
	tIronGateMainTask_Monster[2815][5]["GenId"]=20877
	
	
	--魔族将军
	tIronGateMainTask_Monster[2818]={}
	tIronGateMainTask_Monster[2818][1]={}
	tIronGateMainTask_Monster[2818][1]["PosX"]=334
	tIronGateMainTask_Monster[2818][1]["PosY"]=193
	tIronGateMainTask_Monster[2818][1]["GenId"]=20904
	
	--魔族将军阶段2
	tIronGateMainTask_Monster[2823]={}
	tIronGateMainTask_Monster[2823][1]={}
	tIronGateMainTask_Monster[2823][1]["PosX"]=334
	tIronGateMainTask_Monster[2823][1]["PosY"]=193
	tIronGateMainTask_Monster[2823][1]["GenId"]=20906


--陷阱配置
local tIronGateMainTask_Trap={}
	--副本1出口
	tIronGateMainTask_Trap[1]={}
	tIronGateMainTask_Trap[1]["TrapType"]=1606
	tIronGateMainTask_Trap[1]["Look"]=811
	tIronGateMainTask_Trap[1]["PosX"]=128
	tIronGateMainTask_Trap[1]["PosY"]=36
	
	--副本2出口
	tIronGateMainTask_Trap[2]={}
	tIronGateMainTask_Trap[2]["TrapType"]=1608
	tIronGateMainTask_Trap[2]["Look"]=811
	tIronGateMainTask_Trap[2]["PosX"]=58 --60
	tIronGateMainTask_Trap[2]["PosY"]=164 -- 173
	
	--副本2，BOSS死后动态创建的陷阱
	tIronGateMainTask_Trap[3]={}
	--第一种
	tIronGateMainTask_Trap[3][1]={}
	tIronGateMainTask_Trap[3][1][1]={}
	tIronGateMainTask_Trap[3][1][1]["TrapType"]=1615
	tIronGateMainTask_Trap[3][1][1]["Look"]=1615
	tIronGateMainTask_Trap[3][1][1]["PosX"]=344
	tIronGateMainTask_Trap[3][1][1]["PosY"]=195
	
	tIronGateMainTask_Trap[3][1][2]={}
	tIronGateMainTask_Trap[3][1][2]["TrapType"]=1615
	tIronGateMainTask_Trap[3][1][2]["Look"]=1615
	tIronGateMainTask_Trap[3][1][2]["PosX"]=355
	tIronGateMainTask_Trap[3][1][2]["PosY"]=247
	
	tIronGateMainTask_Trap[3][1][3]={}
	tIronGateMainTask_Trap[3][1][3]["TrapType"]=1615
	tIronGateMainTask_Trap[3][1][3]["Look"]=1615
	tIronGateMainTask_Trap[3][1][3]["PosX"]=336
	tIronGateMainTask_Trap[3][1][3]["PosY"]=275
	
	tIronGateMainTask_Trap[3][1][4]={}
	tIronGateMainTask_Trap[3][1][4]["TrapType"]=1615
	tIronGateMainTask_Trap[3][1][4]["Look"]=1615
	tIronGateMainTask_Trap[3][1][4]["PosX"]=306
	tIronGateMainTask_Trap[3][1][4]["PosY"]=219
	
	tIronGateMainTask_Trap[3][1][5]={}
	tIronGateMainTask_Trap[3][1][5]["TrapType"]=1615
	tIronGateMainTask_Trap[3][1][5]["Look"]=1615
	tIronGateMainTask_Trap[3][1][5]["PosX"]=255
	tIronGateMainTask_Trap[3][1][5]["PosY"]=233
	
	tIronGateMainTask_Trap[3][1][6]={}
	tIronGateMainTask_Trap[3][1][6]["TrapType"]=1615
	tIronGateMainTask_Trap[3][1][6]["Look"]=1615
	tIronGateMainTask_Trap[3][1][6]["PosX"]=198
	tIronGateMainTask_Trap[3][1][6]["PosY"]=193
	
	tIronGateMainTask_Trap[3][1][7]={}
	tIronGateMainTask_Trap[3][1][7]["TrapType"]=1615
	tIronGateMainTask_Trap[3][1][7]["Look"]=1615
	tIronGateMainTask_Trap[3][1][7]["PosX"]=168
	tIronGateMainTask_Trap[3][1][7]["PosY"]=156
	
	tIronGateMainTask_Trap[3][1][8]={}
	tIronGateMainTask_Trap[3][1][8]["TrapType"]=1615
	tIronGateMainTask_Trap[3][1][8]["Look"]=1615
	tIronGateMainTask_Trap[3][1][8]["PosX"]=138
	tIronGateMainTask_Trap[3][1][8]["PosY"]=195
	
	tIronGateMainTask_Trap[3][1][9]={}
	tIronGateMainTask_Trap[3][1][9]["TrapType"]=1615
	tIronGateMainTask_Trap[3][1][9]["Look"]=1615
	tIronGateMainTask_Trap[3][1][9]["PosX"]=100
	tIronGateMainTask_Trap[3][1][9]["PosY"]=210
	
	
	--第二种
	tIronGateMainTask_Trap[3][2]={}
	tIronGateMainTask_Trap[3][2][1]={}
	tIronGateMainTask_Trap[3][2][1]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][1]["Look"]=1616
	tIronGateMainTask_Trap[3][2][1]["PosX"]=104
	tIronGateMainTask_Trap[3][2][1]["PosY"]=200
	
	tIronGateMainTask_Trap[3][2][2]={}
	tIronGateMainTask_Trap[3][2][2]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][2]["Look"]=1616
	tIronGateMainTask_Trap[3][2][2]["PosX"]=130
	tIronGateMainTask_Trap[3][2][2]["PosY"]=218
	
	tIronGateMainTask_Trap[3][2][3]={}
	tIronGateMainTask_Trap[3][2][3]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][3]["Look"]=1616
	tIronGateMainTask_Trap[3][2][3]["PosX"]=144
	tIronGateMainTask_Trap[3][2][3]["PosY"]=201
	
	tIronGateMainTask_Trap[3][2][4]={}
	tIronGateMainTask_Trap[3][2][4]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][4]["Look"]=1616
	tIronGateMainTask_Trap[3][2][4]["PosX"]=167
	tIronGateMainTask_Trap[3][2][4]["PosY"]=194
	
	tIronGateMainTask_Trap[3][2][5]={}
	tIronGateMainTask_Trap[3][2][5]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][5]["Look"]=1616
	tIronGateMainTask_Trap[3][2][5]["PosX"]=184
	tIronGateMainTask_Trap[3][2][5]["PosY"]=181
	
	tIronGateMainTask_Trap[3][2][6]={}
	tIronGateMainTask_Trap[3][2][6]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][6]["Look"]=1616
	tIronGateMainTask_Trap[3][2][6]["PosX"]=226
	tIronGateMainTask_Trap[3][2][6]["PosY"]=188
	
	tIronGateMainTask_Trap[3][2][7]={}
	tIronGateMainTask_Trap[3][2][7]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][7]["Look"]=1616
	tIronGateMainTask_Trap[3][2][7]["PosX"]=251
	tIronGateMainTask_Trap[3][2][7]["PosY"]=196
	
	tIronGateMainTask_Trap[3][2][8]={}
	tIronGateMainTask_Trap[3][2][8]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][8]["Look"]=1616
	tIronGateMainTask_Trap[3][2][8]["PosX"]=271
	tIronGateMainTask_Trap[3][2][8]["PosY"]=223
	
	tIronGateMainTask_Trap[3][2][9]={}
	tIronGateMainTask_Trap[3][2][9]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][9]["Look"]=1616
	tIronGateMainTask_Trap[3][2][9]["PosX"]=317
	tIronGateMainTask_Trap[3][2][9]["PosY"]=220
	
	tIronGateMainTask_Trap[3][2][10]={}
	tIronGateMainTask_Trap[3][2][10]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][10]["Look"]=1616
	tIronGateMainTask_Trap[3][2][10]["PosX"]=321
	tIronGateMainTask_Trap[3][2][10]["PosY"]=199
	
	tIronGateMainTask_Trap[3][2][11]={}
	tIronGateMainTask_Trap[3][2][11]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][11]["Look"]=1616
	tIronGateMainTask_Trap[3][2][11]["PosX"]=340
	tIronGateMainTask_Trap[3][2][11]["PosY"]=194
	
	tIronGateMainTask_Trap[3][2][12]={}
	tIronGateMainTask_Trap[3][2][12]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][12]["Look"]=1616
	tIronGateMainTask_Trap[3][2][12]["PosX"]=330
	tIronGateMainTask_Trap[3][2][12]["PosY"]=180
	
	tIronGateMainTask_Trap[3][2][13]={}
	tIronGateMainTask_Trap[3][2][13]["TrapType"]=1616
	tIronGateMainTask_Trap[3][2][13]["Look"]=1616
	tIronGateMainTask_Trap[3][2][13]["PosX"]=337
	tIronGateMainTask_Trap[3][2][13]["PosY"]=242
	
	--第三种
	tIronGateMainTask_Trap[3][3]={}
	tIronGateMainTask_Trap[3][3][1]={}
	tIronGateMainTask_Trap[3][3][1]["TrapType"]=1617
	tIronGateMainTask_Trap[3][3][1]["Look"]=1617
	tIronGateMainTask_Trap[3][3][1]["PosX"]=336
	tIronGateMainTask_Trap[3][3][1]["PosY"]=209
	
	tIronGateMainTask_Trap[3][3][2]={}
	tIronGateMainTask_Trap[3][3][2]["TrapType"]=1617
	tIronGateMainTask_Trap[3][3][2]["Look"]=1617
	tIronGateMainTask_Trap[3][3][2]["PosX"]=280
	tIronGateMainTask_Trap[3][3][2]["PosY"]=232
	
	tIronGateMainTask_Trap[3][3][3]={}
	tIronGateMainTask_Trap[3][3][3]["TrapType"]=1617
	tIronGateMainTask_Trap[3][3][3]["Look"]=1617
	tIronGateMainTask_Trap[3][3][3]["PosX"]=238
	tIronGateMainTask_Trap[3][3][3]["PosY"]=206
	
	tIronGateMainTask_Trap[3][3][4]={}
	tIronGateMainTask_Trap[3][3][4]["TrapType"]=1617
	tIronGateMainTask_Trap[3][3][4]["Look"]=1617
	tIronGateMainTask_Trap[3][3][4]["PosX"]=166
	tIronGateMainTask_Trap[3][3][4]["PosY"]=178
	
	tIronGateMainTask_Trap[3][3][5]={}
	tIronGateMainTask_Trap[3][3][5]["TrapType"]=1617
	tIronGateMainTask_Trap[3][3][5]["Look"]=1617
	tIronGateMainTask_Trap[3][3][5]["PosX"]=119
	tIronGateMainTask_Trap[3][3][5]["PosY"]=202
	
	tIronGateMainTask_Trap[3][3][6]={}
	tIronGateMainTask_Trap[3][3][6]["TrapType"]=1617
	tIronGateMainTask_Trap[3][3][6]["Look"]=1617
	tIronGateMainTask_Trap[3][3][6]["PosX"]=70
	tIronGateMainTask_Trap[3][3][6]["PosY"]=168
	
	
	--第四种
	tIronGateMainTask_Trap[3][4]={}
	tIronGateMainTask_Trap[3][4][1]={}
	tIronGateMainTask_Trap[3][4][1]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][1]["Look"]=1618
	tIronGateMainTask_Trap[3][4][1]["PosX"]=311
	tIronGateMainTask_Trap[3][4][1]["PosY"]=218
	
	tIronGateMainTask_Trap[3][4][2]={}
	tIronGateMainTask_Trap[3][4][2]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][2]["Look"]=1618
	tIronGateMainTask_Trap[3][4][2]["PosX"]=295
	tIronGateMainTask_Trap[3][4][2]["PosY"]=229
	
	tIronGateMainTask_Trap[3][4][3]={}
	tIronGateMainTask_Trap[3][4][3]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][3]["Look"]=1618
	tIronGateMainTask_Trap[3][4][3]["PosX"]=271
	tIronGateMainTask_Trap[3][4][3]["PosY"]=228
	
	tIronGateMainTask_Trap[3][4][4]={}
	tIronGateMainTask_Trap[3][4][4]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][4]["Look"]=1618
	tIronGateMainTask_Trap[3][4][4]["PosX"]=242
	tIronGateMainTask_Trap[3][4][4]["PosY"]=211
	
	tIronGateMainTask_Trap[3][4][5]={}
	tIronGateMainTask_Trap[3][4][5]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][5]["Look"]=1618
	tIronGateMainTask_Trap[3][4][5]["PosX"]=232
	tIronGateMainTask_Trap[3][4][5]["PosY"]=201
	
	tIronGateMainTask_Trap[3][4][6]={}
	tIronGateMainTask_Trap[3][4][6]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][6]["Look"]=1618
	tIronGateMainTask_Trap[3][4][6]["PosX"]=237
	tIronGateMainTask_Trap[3][4][6]["PosY"]=191
	
	tIronGateMainTask_Trap[3][4][7]={}
	tIronGateMainTask_Trap[3][4][7]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][7]["Look"]=1618
	tIronGateMainTask_Trap[3][4][7]["PosX"]=216
	tIronGateMainTask_Trap[3][4][7]["PosY"]=184
	
	tIronGateMainTask_Trap[3][4][8]={}
	tIronGateMainTask_Trap[3][4][8]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][8]["Look"]=1618
	tIronGateMainTask_Trap[3][4][8]["PosX"]=195
	tIronGateMainTask_Trap[3][4][8]["PosY"]=181
	
	tIronGateMainTask_Trap[3][4][9]={}
	tIronGateMainTask_Trap[3][4][9]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][9]["Look"]=1618
	tIronGateMainTask_Trap[3][4][9]["PosX"]=170
	tIronGateMainTask_Trap[3][4][9]["PosY"]=182
	
	tIronGateMainTask_Trap[3][4][10]={}
	tIronGateMainTask_Trap[3][4][10]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][10]["Look"]=1618
	tIronGateMainTask_Trap[3][4][10]["PosX"]=159
	tIronGateMainTask_Trap[3][4][10]["PosY"]=171
	
	tIronGateMainTask_Trap[3][4][11]={}
	tIronGateMainTask_Trap[3][4][11]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][11]["Look"]=1618
	tIronGateMainTask_Trap[3][4][11]["PosX"]=158
	tIronGateMainTask_Trap[3][4][11]["PosY"]=188
	
	tIronGateMainTask_Trap[3][4][12]={}
	tIronGateMainTask_Trap[3][4][12]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][12]["Look"]=1618
	tIronGateMainTask_Trap[3][4][12]["PosX"]=149
	tIronGateMainTask_Trap[3][4][12]["PosY"]=194
	
	tIronGateMainTask_Trap[3][4][13]={}
	tIronGateMainTask_Trap[3][4][13]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][13]["Look"]=1618
	tIronGateMainTask_Trap[3][4][13]["PosX"]=133
	tIronGateMainTask_Trap[3][4][13]["PosY"]=202
	
	tIronGateMainTask_Trap[3][4][14]={}
	tIronGateMainTask_Trap[3][4][14]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][14]["Look"]=1618
	tIronGateMainTask_Trap[3][4][14]["PosX"]=122
	tIronGateMainTask_Trap[3][4][14]["PosY"]=207
	
	tIronGateMainTask_Trap[3][4][15]={}
	tIronGateMainTask_Trap[3][4][15]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][15]["Look"]=1618
	tIronGateMainTask_Trap[3][4][15]["PosX"]=100
	tIronGateMainTask_Trap[3][4][15]["PosY"]=206
	
	tIronGateMainTask_Trap[3][4][16]={}
	tIronGateMainTask_Trap[3][4][16]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][16]["Look"]=1618
	tIronGateMainTask_Trap[3][4][16]["PosX"]=77
	tIronGateMainTask_Trap[3][4][16]["PosY"]=190
	
	tIronGateMainTask_Trap[3][4][17]={}
	tIronGateMainTask_Trap[3][4][17]["TrapType"]=1618
	tIronGateMainTask_Trap[3][4][17]["Look"]=1618
	tIronGateMainTask_Trap[3][4][17]["PosX"]=70
	tIronGateMainTask_Trap[3][4][17]["PosY"]=177
	
	--boss周围触发陷阱光效（bigfire02）
	tIronGateMainTask_Trap[4]={}
	tIronGateMainTask_Trap[4][1]={}
	tIronGateMainTask_Trap[4][1][1]={}
	tIronGateMainTask_Trap[4][1][1]["TrapType"]=1619
	tIronGateMainTask_Trap[4][1][1]["Look"]=1619
	tIronGateMainTask_Trap[4][1][1]["PosX"]=325
	tIronGateMainTask_Trap[4][1][1]["PosY"]=190
	
	tIronGateMainTask_Trap[4][1][2]={}
	tIronGateMainTask_Trap[4][1][2]["TrapType"]=1619
	tIronGateMainTask_Trap[4][1][2]["Look"]=1619
	tIronGateMainTask_Trap[4][1][2]["PosX"]=329
	tIronGateMainTask_Trap[4][1][2]["PosY"]=183
	
	tIronGateMainTask_Trap[4][1][3]={}
	tIronGateMainTask_Trap[4][1][3]["TrapType"]=1619
	tIronGateMainTask_Trap[4][1][3]["Look"]=1619
	tIronGateMainTask_Trap[4][1][3]["PosX"]=342
	tIronGateMainTask_Trap[4][1][3]["PosY"]=192
	
	tIronGateMainTask_Trap[4][1][4]={}
	tIronGateMainTask_Trap[4][1][4]["TrapType"]=1619
	tIronGateMainTask_Trap[4][1][4]["Look"]=1619
	tIronGateMainTask_Trap[4][1][4]["PosX"]=341
	tIronGateMainTask_Trap[4][1][4]["PosY"]=203
	
	tIronGateMainTask_Trap[4][1][5]={}
	tIronGateMainTask_Trap[4][1][5]["TrapType"]=1619
	tIronGateMainTask_Trap[4][1][5]["Look"]=1619
	tIronGateMainTask_Trap[4][1][5]["PosX"]=348
	tIronGateMainTask_Trap[4][1][5]["PosY"]=212
	
	tIronGateMainTask_Trap[4][1][6]={}
	tIronGateMainTask_Trap[4][1][6]["TrapType"]=1619
	tIronGateMainTask_Trap[4][1][6]["Look"]=1619
	tIronGateMainTask_Trap[4][1][6]["PosX"]=332
	tIronGateMainTask_Trap[4][1][6]["PosY"]=204
	
	tIronGateMainTask_Trap[4][1][7]={}
	tIronGateMainTask_Trap[4][1][7]["TrapType"]=1619
	tIronGateMainTask_Trap[4][1][7]["Look"]=1619
	tIronGateMainTask_Trap[4][1][7]["PosX"]=327
	tIronGateMainTask_Trap[4][1][7]["PosY"]=208
	
	--boss周围触发陷阱光效（fp-lt）
	tIronGateMainTask_Trap[5]={}
	tIronGateMainTask_Trap[5][1]={}
	tIronGateMainTask_Trap[5][1][1]={}
	tIronGateMainTask_Trap[5][1][1]["TrapType"]=1620
	tIronGateMainTask_Trap[5][1][1]["Look"]=1620
	tIronGateMainTask_Trap[5][1][1]["PosX"]=325
	tIronGateMainTask_Trap[5][1][1]["PosY"]=204
	
	tIronGateMainTask_Trap[5][1][2]={}
	tIronGateMainTask_Trap[5][1][2]["TrapType"]=1620
	tIronGateMainTask_Trap[5][1][2]["Look"]=1620
	tIronGateMainTask_Trap[5][1][2]["PosX"]=337
	tIronGateMainTask_Trap[5][1][2]["PosY"]=207
	
	tIronGateMainTask_Trap[5][1][3]={}
	tIronGateMainTask_Trap[5][1][3]["TrapType"]=1620
	tIronGateMainTask_Trap[5][1][3]["Look"]=1620
	tIronGateMainTask_Trap[5][1][3]["PosX"]=322
	tIronGateMainTask_Trap[5][1][3]["PosY"]=188
	
	tIronGateMainTask_Trap[5][1][4]={}
	tIronGateMainTask_Trap[5][1][4]["TrapType"]=1620
	tIronGateMainTask_Trap[5][1][4]["Look"]=1620
	tIronGateMainTask_Trap[5][1][4]["PosX"]=344
	tIronGateMainTask_Trap[5][1][4]["PosY"]=191
	
	tIronGateMainTask_Trap[5][1][5]={}
	tIronGateMainTask_Trap[5][1][5]["TrapType"]=1620
	tIronGateMainTask_Trap[5][1][5]["Look"]=1620
	tIronGateMainTask_Trap[5][1][5]["PosX"]=331
	tIronGateMainTask_Trap[5][1][5]["PosY"]=187
	
	--播放全屏震动，在指定坐标（3个）位置处播放光效（firemagic）
	tIronGateMainTask_Trap[5][2]={}
	tIronGateMainTask_Trap[5][2][1]={}
	tIronGateMainTask_Trap[5][2][1]["TrapType"]=1621
	tIronGateMainTask_Trap[5][2][1]["Look"]=1621
	tIronGateMainTask_Trap[5][2][1]["PosX"]=325
	tIronGateMainTask_Trap[5][2][1]["PosY"]=190
	
	tIronGateMainTask_Trap[5][2][2]={}
	tIronGateMainTask_Trap[5][2][2]["TrapType"]=1621
	tIronGateMainTask_Trap[5][2][2]["Look"]=1621
	tIronGateMainTask_Trap[5][2][2]["PosX"]=329
	tIronGateMainTask_Trap[5][2][2]["PosY"]=183
	
	tIronGateMainTask_Trap[5][2][3]={}
	tIronGateMainTask_Trap[5][2][3]["TrapType"]=1621
	tIronGateMainTask_Trap[5][2][3]["Look"]=1621
	tIronGateMainTask_Trap[5][2][3]["PosX"]=341
	tIronGateMainTask_Trap[5][2][3]["PosY"]=203


--状态陷阱
local tIronGateMainTask_Status={}
	--60s 增加物理攻击 100000
	tIronGateMainTask_Status[1]={}
	tIronGateMainTask_Status[1]["Status"] = 139
	tIronGateMainTask_Status[1]["Power"] = 40000
	tIronGateMainTask_Status[1]["Secs"] =10
	tIronGateMainTask_Status[1]["Times"] = 0
	tIronGateMainTask_Status[1]["RemainTime"]= 0
	tIronGateMainTask_Status[1]["EndTime"]= 10
	
	--减速3s
	tIronGateMainTask_Status[2]={}
	tIronGateMainTask_Status[2]["Status"] = 50
	tIronGateMainTask_Status[2]["Power"] = 20
	tIronGateMainTask_Status[2]["Secs"] =8
	tIronGateMainTask_Status[2]["Times"] = 0
	tIronGateMainTask_Status[2]["RemainTime"]= 0
	tIronGateMainTask_Status[2]["EndTime"]= 8
	
	--减速5s
	tIronGateMainTask_Status[3]={}
	tIronGateMainTask_Status[3]["Status"] = 50
	tIronGateMainTask_Status[3]["Power"] = 40
	tIronGateMainTask_Status[3]["Secs"] =5
	tIronGateMainTask_Status[3]["Times"] = 0
	tIronGateMainTask_Status[3]["RemainTime"]= 0
	tIronGateMainTask_Status[3]["EndTime"]= 5
	
	--减速3s
	tIronGateMainTask_Status[4]={}
	tIronGateMainTask_Status[4]["Status"] = 50
	tIronGateMainTask_Status[4]["Power"] = 60
	tIronGateMainTask_Status[4]["Secs"] =3
	tIronGateMainTask_Status[4]["Times"] = 0
	tIronGateMainTask_Status[4]["RemainTime"]= 0
	tIronGateMainTask_Status[4]["EndTime"]= 3
	
	--60s 50%暴击
	tIronGateMainTask_Status[5]={}
	tIronGateMainTask_Status[5]["Status"] = 133
	tIronGateMainTask_Status[5]["Power"] = 50
	tIronGateMainTask_Status[5]["Secs"] =10
	tIronGateMainTask_Status[5]["Times"] = 0
	tIronGateMainTask_Status[5]["RemainTime"]= 0
	tIronGateMainTask_Status[5]["EndTime"]= 10
	
	--60s  10000 生命
	tIronGateMainTask_Status[6]={}
	tIronGateMainTask_Status[6]["Status"] = 138
	tIronGateMainTask_Status[6]["Power"] = 10000
	tIronGateMainTask_Status[6]["Secs"] =10
	tIronGateMainTask_Status[6]["Times"] = 0
	tIronGateMainTask_Status[6]["RemainTime"]= 0
	tIronGateMainTask_Status[6]["EndTime"]= 10
	
	--公共地图减速3s
	tIronGateMainTask_Status[7]={}
	tIronGateMainTask_Status[7]["Status"] = 50
	tIronGateMainTask_Status[7]["Power"] = 40
	tIronGateMainTask_Status[7]["Secs"] =3
	tIronGateMainTask_Status[7]["Times"] = 0
	tIronGateMainTask_Status[7]["RemainTime"]= 0
	tIronGateMainTask_Status[7]["EndTime"]= 3
	

--自动寻路的位置配置
local tIronGateMainTask_FindPosi={}
	tIronGateMainTask_FindPosi[3796]={}
	tIronGateMainTask_FindPosi[3796]["FindMapId"] = 1004 --自动寻路的地图 找 职业NPC
	tIronGateMainTask_FindPosi[3796]["FindNotGiftMapId"] = 10386
	tIronGateMainTask_FindPosi[3796]["FindPosX"] = 76
	tIronGateMainTask_FindPosi[3796]["FindPosY"] = 59
	tIronGateMainTask_FindPosi[3796]["FindNpcId"] = 19634
	
	tIronGateMainTask_FindPosi[3797]={}
	tIronGateMainTask_FindPosi[3797]["FindMapId"] = 1002
	tIronGateMainTask_FindPosi[3797]["FindPosX"] = 429
	tIronGateMainTask_FindPosi[3797]["FindPosY"] = 742
	tIronGateMainTask_FindPosi[3797]["FindNpcId"] = 20028
	
	--传功长老位置
	tIronGateMainTask_FindPosi[20029]={}
	tIronGateMainTask_FindPosi[20029]["FindPosX"] = 126
	tIronGateMainTask_FindPosi[20029]["FindPosY"] = 116
	
	--小师妹位置
	tIronGateMainTask_FindPosi[20030]={}
	tIronGateMainTask_FindPosi[20030]["FindPosX"] = 155
	tIronGateMainTask_FindPosi[20030]["FindPosY"] = 138
	
	--垂死的传功长老
	tIronGateMainTask_FindPosi[20031]={}
	tIronGateMainTask_FindPosi[20031]["FindPosX"] = 354
	tIronGateMainTask_FindPosi[20031]["FindPosY"] = 286
	
	--魔族将军
	tIronGateMainTask_FindPosi[20032]={}
	tIronGateMainTask_FindPosi[20032]["FindPosX"] = 334
	tIronGateMainTask_FindPosi[20032]["FindPosY"] = 193
	
	
	--副本1的出口
	tIronGateMainTask_FindPosi[1]={}
	tIronGateMainTask_FindPosi[1]["FindPosX"] = 128
	tIronGateMainTask_FindPosi[1]["FindPosY"] = 36
	
	--小师妹第二处位置
	tIronGateMainTask_FindPosi[2]={}
	tIronGateMainTask_FindPosi[2]["FindPosX"] = 123
	tIronGateMainTask_FindPosi[2]["FindPosY"] = 119
	
	--副本2出口
	tIronGateMainTask_FindPosi[3]={}
	tIronGateMainTask_FindPosi[3]["FindPosX"] = 58
	tIronGateMainTask_FindPosi[3]["FindPosY"] = 164
	
	--副本1出口，进入公共地图，寻路到公共地图出口
	tIronGateMainTask_FindPosi[1606]={}
	tIronGateMainTask_FindPosi[1606]["MapId"] =10089
	tIronGateMainTask_FindPosi[1606]["FindPosX"] = 28
	tIronGateMainTask_FindPosi[1606]["FindPosY"] = 89
	
	--寻找铁扇门主
	tIronGateMainTask_FindPosi[1608]={}
	tIronGateMainTask_FindPosi[1608]["MapId"]=1004
	tIronGateMainTask_FindPosi[1608]["NotGiftMapId"]=10386
	tIronGateMainTask_FindPosi[1608]["FindPosX"] = 42
	tIronGateMainTask_FindPosi[1608]["FindPosY"] = 35



--切换地图位置配置
local tIronGateMainTask_ChgPosi={}
	--副本1出口 传送位置（传到 公共地图）
	tIronGateMainTask_ChgPosi[1606]={}
	tIronGateMainTask_ChgPosi[1606]["MapId"]=10089
	tIronGateMainTask_ChgPosi[1606]["PosX"] = 133
	tIronGateMainTask_ChgPosi[1606]["PosY"] = 90
	
	--副本2出来传送位置 （传到 守门弟子）
	tIronGateMainTask_ChgPosi[1608]={}
	tIronGateMainTask_ChgPosi[1608]["MapId"]=1002
	tIronGateMainTask_ChgPosi[1608]["PosX"] = 432 --161
	tIronGateMainTask_ChgPosi[1608]["PosY"] = 747 --382
	tIronGateMainTask_ChgPosi[1608]["Carton"] = 1011 --传送出来弹漫画
	tIronGateMainTask_ChgPosi[1608]["Stauts"] = 1 --有增益状态，出来需要删除
	
	--从副本离开
	tIronGateMainTask_ChgPosi[1609]={}
	tIronGateMainTask_ChgPosi[1609]["MapId"]=1002
	tIronGateMainTask_ChgPosi[1609]["PosX"] = 498
	tIronGateMainTask_ChgPosi[1609]["PosY"] = 505
	
	tIronGateMainTask_ChgPosi[1610]={}
	tIronGateMainTask_ChgPosi[1610]["MapId"]=1002
	tIronGateMainTask_ChgPosi[1610]["PosX"] = 498
	tIronGateMainTask_ChgPosi[1610]["PosY"] = 505
	
	tIronGateMainTask_ChgPosi[1611]={}
	tIronGateMainTask_ChgPosi[1611]["MapId"]=1002
	tIronGateMainTask_ChgPosi[1611]["PosX"] = 498
	tIronGateMainTask_ChgPosi[1611]["PosY"] = 505
	tIronGateMainTask_ChgPosi[1611]["Stauts"] = 1  --有增益状态，出来需要删除


--光效配置
local tIronGateMainTask_Effect={}
	--传到 公共地图的光效
	tIronGateMainTask_Effect[1]="tsm_run"
	--垂死传功长老出加的龙的光效
	tIronGateMainTask_Effect[2]="fighter_tsm"
	--屏幕效果的光效
	tIronGateMainTask_Effect[3]="Attack35r"
	--垂死的传功长老出读条时 播放的光效
	tIronGateMainTask_Effect[4]="zf2-e300"
	--与魔头npc对话，放出boss时，加个新光效（firemagic）
	tIronGateMainTask_Effect[5]="firemagic"
	--魔族守卫刷出来的时候加个光效（f-taoist-999）
	-- tIronGateMainTask_Effect[6]="f-taoist-999"


local tIronGateMainTask_Reward={}
	--上线的玩家都将收到1封背包信
	tIronGateMainTask_Reward["Online"]={}
	tIronGateMainTask_Reward["Online"]["RewardItem"] = {}
	tIronGateMainTask_Reward["Online"]["RewardItem"][1] = {}
	tIronGateMainTask_Reward["Online"]["RewardItem"][1]["Id"] = 3301710 --长老来信
	tIronGateMainTask_Reward["Online"]["RewardItem"][1]["Attr"] = "0 1"
	tIronGateMainTask_Reward["Online"]["LogId"] =18000148
	tIronGateMainTask_Reward["Online"]["Talk"]=tIronGateMainTask_Text["OnlineAward"]


---------------------------------------------------------------逻辑-----------------------------------------------------------

--自动寻路
function IronGateMainTask_FindPathByTaskId(nTaskId,nUserMapId)
	if tIronGateMainTask_FindPosi[nTaskId]~=nil then
		local nMapId = nUserMapId or tIronGateMainTask_FindPosi[nTaskId]["FindMapId"]
		-- 判断激情服
		if SpecialServer_ChkNoGiftServer() and nTaskId == 3796 then
			nMapId = nUserMapId or tIronGateMainTask_FindPosi[nTaskId]["FindNotGiftMapId"]
		end
		local nPosX = tIronGateMainTask_FindPosi[nTaskId]["FindPosX"]
		local nPosY = tIronGateMainTask_FindPosi[nTaskId]["FindPosY"]
		local nNpcId = tIronGateMainTask_FindPosi[nTaskId]["FindNpcId"]
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	end
end


function IronGateMainTask_FindPathByIndex(nIndex,nUserMapId)
	local nMapId = nUserMapId or Get_UserMapId()
	if tIronGateMainTask_FindPosi[nIndex]~=nil then
		local nPosX = tIronGateMainTask_FindPosi[nIndex]["FindPosX"]
		local nPosY = tIronGateMainTask_FindPosi[nIndex]["FindPosY"]
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nIndex)
	end
end


--使用长老来信
	-- 非铁扇门职业的玩家，接取任务1.1
	-- 铁扇门职业的玩家，接取任务1.2
function IronGateMainTask_UseBackLetter(nItemId)
	
	local nTaskId
	if IronGateMainTask_IsIronGatePro() then
		nTaskId =tIronGateMainTask_TaskInfo[nItemId]["TaskId"][2]
	else
		nTaskId =tIronGateMainTask_TaskInfo[nItemId]["TaskId"][1]
	end
	
	if Item_ChkItem(nItemId) then
		if not Task_ChkTaskDetail(nTaskId) then
			--没有接受任务1
			if Task_AddTaskDetail(nTaskId) then
				Item_DelItem(nItemId)
				IronGateMainTask_FindPathByTaskId(nTaskId)
			end
		else
			Item_DelItem(nItemId)
			IronGateMainTask_FindPathByTaskId(nTaskId)
		end
	end
	
end


--得到性别对应名称
function IronGateMainTask_GetSexName()
	--1，表示男性;
	--2，表示女性
	local nUserId = Get_UserId()
	local nSex = Get_UserSex(nUserId)
	return tIronGateMainTask_Text["SexName"][nSex]
end


--守门师弟的响应
function IronGateMainTask_DefenceNpcLink(nNpcId)
	local tAllTaskId = tIronGateMainTask_TaskInfo[nNpcId]["AllTaskId"]
	local nCompleteTaskId = tAllTaskId[#tAllTaskId] --最终的任务id
	
	if IronGateMainTask_IsIronGatePro() then
		--铁扇门职业
		if Task_ChkTaskDetail(nCompleteTaskId) and Task_ChkTaskDetailValue(nCompleteTaskId,"CompleteFlag",">=",1) then 
			--完成全部任务
			LinkNpcGossipFunc_New(nNpcId,"4-1")
			
		else
			local tAllLinkIndex =tIronGateMainTask_TaskInfo[nNpcId]["AllLinkIndex"]
			for i,v in pairs(tAllTaskId) do
				if Task_ChkTaskDetail(v) and Task_ChkTaskDetailValue(v,"CompleteFlag","==",0) then 
					local nCurIndex = tAllLinkIndex[i]
					LinkNpcGossipFunc_New(nNpcId,"1-"..nCurIndex) --未完成任务，进入指定层副本的对白
					return
				end
			end
			--闲聊
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			
		end
	else
		--非铁扇门职业
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end
end



--传功长老的响应/垂死的传功长老的响应
function IronGateMainTask_ChuangGongNpcLink(nNpcId)
	local nTaskId =tIronGateMainTask_TaskInfo[nNpcId]["TaskId"]
	local nPostTaskId =tIronGateMainTask_TaskInfo[nNpcId]["PostTaskId"]
	--有接任务1.2 才响应
	if Task_ChkTaskDetail(nTaskId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	elseif Task_ChkTaskDetail(nPostTaskId) and Task_ChkTaskDetailValue(nPostTaskId,"CompleteFlag","==",0) then
		--完成了当前任务，接了下一个任务
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	elseif Task_ChkTaskDetail(nPostTaskId) and Task_ChkTaskDetailValue(nPostTaskId,"CompleteFlag","==",1) then
		--完成下一个任务
		LinkNpcGossipFunc_New(nNpcId,"1-5")
	end
end


--小师妹的响应
function IronGateMainTask_LittleSisterNpcLink(nNpcId)
	local nTaskId =tIronGateMainTask_TaskInfo[nNpcId]["TaskId"] --3798
	local nPostTaskId =tIronGateMainTask_TaskInfo[nNpcId]["PostTaskId"] --3799
	local nPostTaskId2 =tIronGateMainTask_TaskInfo[nNpcId]["PostTaskId2"] --3800 任务4
	
	--接取了任务2，未完成
	if Task_ChkTaskDetail(nTaskId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	elseif Task_ChkTaskDetail(nPostTaskId) and Task_ChkTaskDetailValue(nPostTaskId,"CompleteFlag","==",0)and (Get_TaskDetailData1(nPostTaskId) == 0) then
		--完成任务2，任务3 未击杀怪物
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	elseif Task_ChkTaskDetail(nPostTaskId) and Task_ChkTaskDetailValue(nPostTaskId,"CompleteFlag","==",0) and (Get_TaskDetailData1(nPostTaskId) == 1) then
		--完成任务2，任务3 已经击杀怪物
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	elseif Task_ChkTaskDetail(nPostTaskId2) and Task_ChkTaskDetailValue(nPostTaskId,"CompleteFlag","==",1) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
	end
	
end


--魔族将军的响应
function IronGateMainTask_GeneralNpcLink(nNpcId)
	local nTaskId =tIronGateMainTask_TaskInfo[nNpcId]["TaskId"]
	--有接任务才响应
	if Task_ChkTaskDetail(nTaskId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
end



--完成任务，接取下一个
function IronGateMainTask_CompleteTask(nNpcId)
	local nTaskId = tIronGateMainTask_TaskInfo[nNpcId]["TaskId"]
	local nPostTaskId = tIronGateMainTask_TaskInfo[nNpcId]["PostTaskId"]
	
	if not Task_ChkTaskDetail(nTaskId) or not IronGateMainTask_IsIronGatePro() then
		return
	end
	
	--完成任务
	Task_SetTaskDetailData1(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	User_EffectAdd("self","angelwing")
	
	--接取下一个任务
	if not Task_AddTaskDetail(nPostTaskId) then
		return
	end
	
	
	local nUserMapId =Get_UserMapId()
	--创建装饰NPC
	if tIronGateMainTask_TaskInfo[nNpcId]["CreatDescNpc"] ~= nil then
		local nDescIndex = tIronGateMainTask_TaskInfo[nNpcId]["CreatDescNpc"]
		IronGateMainTask_CreatDescNpc(nDescIndex,nUserMapId)
	end
	
	--创建NPC
	if tIronGateMainTask_TaskInfo[nNpcId]["CreatDyna"] ~= nil then
		local nFloor = tIronGateMainTask_TaskInfo[nNpcId]["CreatDyna"]
		IronGateMainTask_CreateDynaNpc(nFloor,nUserMapId)
	end
	
	--接对白
	if tIronGateMainTask_TaskInfo[nNpcId]["Link"] ~=nil then
		LinkNpcGossipFunc_New(nNpcId,tIronGateMainTask_TaskInfo[nNpcId]["Link"])
	end
	
	--弹漫画
	if tIronGateMainTask_TaskInfo[nNpcId]["Carton"] ~=nil then
		User_NoviceTeaching(tIronGateMainTask_TaskInfo[nNpcId]["Carton"])
	end
	
	--垂死的传功长老，处加状态
	if tIronGateMainTask_TaskInfo[nNpcId]["Status"] ~=nil then
		local nEvent = tIronGateMainTask_Stc[5]["EventType"]
		local nData = tIronGateMainTask_Stc[5]["DataType"]
		local nSaveMapId = Get_UserStatisticValue(nEvent,nData)
		--在副本2地图才获得增益
		if nSaveMapId ==nUserMapId then
			IronGateMainTask_AddManyStatus() --获得增益效果
		end
		
	end
	
	--加光效
	if tIronGateMainTask_TaskInfo[nNpcId]["AddEffect"] ~=nil then
		--玩家绑定龙的光效等
		local nEffectIndex = tIronGateMainTask_TaskInfo[nNpcId]["AddEffect"]
		IronGateMainTask_AddEffect(nEffectIndex)
	end
	
	--自动寻路 NPC
	if tIronGateMainTask_TaskInfo[nNpcId]["FindNpc"] ~=nil then
		local nFindNpcId = tIronGateMainTask_TaskInfo[nNpcId]["FindNpc"]
		IronGateMainTask_FindPathByIndex(nFindNpcId)
	end
	
end


--完成任务3 (特殊的完成任务，小师妹身上的第二个任务)
function IronGateMainTask_CompleteTask3(nNpcId)
	local nTaskId = tIronGateMainTask_TaskInfo[nNpcId]["TaskId2"]
	local nPostTaskId = tIronGateMainTask_TaskInfo[nNpcId]["PostTaskId2"]
	
	if not Task_ChkTaskDetail(nTaskId) or not IronGateMainTask_IsIronGatePro() then
		return
	end
	
	--完成任务
	Task_SetTaskDetailData1(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	User_EffectAdd("self","angelwing")
	
	--接取下一个任务
	if not Task_AddTaskDetail(nPostTaskId) then
		return
	end
	
	--创建副本1的出口陷阱
	local nUserMapId = Get_UserMapId()
	IronGateMainTask_CreateTrap(1,nUserMapId)
	
	--接对白
	if tIronGateMainTask_TaskInfo[nNpcId]["Link2"] ~=nil then
		LinkNpcGossipFunc_New(nNpcId,tIronGateMainTask_TaskInfo[nNpcId]["Link2"])
	end
	
end



--垂死的传功长老,设置玩家读条
function IronGateMainTask_SetRelaxExplore(nNpcId)
	local nSecs = tIronGateMainTask_Constant["RelaxSeconde"]
	local sFunc = string.format("IronGateMainTask_RelaxForSecond</N>%d",nNpcId)
	--播放光效
	IronGateMainTask_AddEffect(4)
	--读条
	User_SetExplore(nSecs,tIronGateMainTask_Text["RelaxContent"],220,sFunc)
end


--垂死的传功长老,让玩家停留几秒，做出相应光效、漫画的响应
function IronGateMainTask_RelaxForSecond(nNpcId,nUserId)
	--播放全屏光效：屏幕效果,包括震动1,缩放2,变暗变亮4,由DATA来指定
	-- User_Screffect(1,nUserId)
	IronGateMainTask_AddEffect(3,nUserId)
	
	--链接NPC对白，接不了对白:LinkNpcGossipFunc_New(nNpcId,"1-4")
	local sFunc = string.format("LinkNpcGossipFunc_New</N>%d</S>1-4",nNpcId)
	Sys_MsgBox(tIronGateMainTask_Text["HasTalk"],sFunc,sFunc,nUserId)
	
	--弹漫画
	User_NoviceTeaching(tIronGateMainTask_Constant["RelaxCarton"],nUserId)
	
end


--判断是否组队,true 有队伍，false没有队伍(一个人的队伍，默认没有队伍，否则执行全队触发有问题)
function IronGateMainTask_IsHasTeam()
	local nUserId = Get_UserId()
	--返回玩家当前队伍的人数(包含队长)
	local nTeamCount=Get_UserTeamNumbers(nUserId)
	return nTeamCount > 1
end

--进入副本
function IronGateMainTask_EnterInstance(nFloor,nFindNpcId)
	--不允许组队进入
	if IronGateMainTask_IsHasTeam() then
		Sys_MsgBox(tIronGateMainTask_Text["HasTeam"])
		return
	end
	
	--将玩家传送到指定层副本
	local nInstance = tIronGateMainTask_Constant["Instance"][nFloor]
	if User_EnterInstance(nInstance) then
		local nUserMapId = Get_UserMapId()
		
		--调整副本一亮度
		if nInstance == tIronGateMainTask_Constant["ChgLigthInstance"] then
			Map_ChangeLight(nUserMapId,tIronGateMainTask_Constant["LigthColor"])
		end
		
		--保存副本2的地图ID，用来判断是否增益
		if nInstance == tIronGateMainTask_Constant["InstanceTwo"] then
			local nEvent = tIronGateMainTask_Stc[5]["EventType"]
			local nData = tIronGateMainTask_Stc[5]["DataType"]
			Task_SetStatistic(nEvent,nData,nUserMapId,1)
		end
		
		--创建动态npc
		if tIronGateMainTask_DynaNpc[nFloor] ~= nil then
			if nFloor == 3 then
				--小师妹这边要判断，是否杀完怪，2种情况的NPC位置不同
				local nPostTaskId =tIronGateMainTask_TaskInfo[nFindNpcId]["PostTaskId"] --3799
				if Task_ChkTaskDetail(nPostTaskId) and Task_ChkTaskDetailValue(nPostTaskId,"CompleteFlag","==",0)and (Get_TaskDetailData1(nPostTaskId) == 1) then
					--已经杀完怪，在第六个位置创建
					IronGateMainTask_CreateDynaNpc(6,nUserMapId)
				else
					IronGateMainTask_CreateDynaNpc(nFloor,nUserMapId)
				end
				
			else
				IronGateMainTask_CreateDynaNpc(nFloor,nUserMapId)
			end
		end
		
		--进入副本地图的提示，弹窗自动寻路
		if tIronGateMainTask_Text["Instance"][nFloor] ~= nil then
			local sFunc = string.format("IronGateMainTask_FindPathByIndex</N>%d</N>%d",nFindNpcId,nUserMapId)
			Sys_MsgBox(tIronGateMainTask_Text["Instance"][nFloor],sFunc,sFunc)
			User_TalkChannel2005(tIronGateMainTask_Text["Instance"][nFloor])
		end
		
	end
end


--创建装饰NPC
function IronGateMainTask_CreatDescNpc(nDescIndex,nMapId)
	local nUserMapId = nMapId or Get_UserMapId()
	local tDescriptNpcs = tIronGateMainTask_DescriptNpc[nDescIndex]
	local sDescNpcName = tIronGateMainTask_Text["DescNpcName"][nDescIndex]
	if Get_NpcCountByName(sDescNpcName) == 0 then
		--创建多个
		for i,v in pairs(tDescriptNpcs) do
			local nLookFace = v["Lookface"]
			local nCellx = v["PosX"]
			local nCelly = v["PosY"]
			local nTask0=v["Task0"]
			Npc_CreateDynaNpc(sDescNpcName,2,0,nLookFace,0,0,nUserMapId,nCellx,nCelly,0,0,0,nTask0)
		end
	end
end


-- 创建动态npc，配置tIronGateMainTask_Text，tIronGateMainTask_DynaNpc
function IronGateMainTask_CreateDynaNpc(nFloor,nMapId)
	local nUserMapId = nMapId or Get_UserMapId()
	local sNpcName = tIronGateMainTask_Text["NpcName"][nFloor]
	local nLookFace = tIronGateMainTask_DynaNpc[nFloor]["Lookface"]
	local nCellx = tIronGateMainTask_DynaNpc[nFloor]["PosX"]
	local nCelly = tIronGateMainTask_DynaNpc[nFloor]["PosY"]
	local nTask0=tIronGateMainTask_DynaNpc[nFloor]["Task0"]
	
	if Get_NpcCountByName(sNpcName) == 0 then
		Npc_CreateDynaNpc(sNpcName,2,0,nLookFace,0,0,nUserMapId,nCellx,nCelly,0,0,0,nTask0)
	end
end


--删除动态npc，配置tIronGateMainTask_Text
function IronGateMainTask_DelDynaNpc(nFloor)
	local nUserMapId =Get_UserMapId()
	local sNpcName = tIronGateMainTask_Text["NpcName"][nFloor]
	
	if Get_NpcCountByName(sNpcName) > 0 then
		return Npc_DelDynaNpc(nUserMapId,"name",sNpcName)
	else
		return true
	end
end


--删除装饰NPC
function IronGateMainTask_DelDescNpc(nDescIndex)
	local nUserMapId =Get_UserMapId()
	local sNpcName = tIronGateMainTask_Text["DescNpcName"][nDescIndex]
	if Get_NpcCountByName(sNpcName) > 0 then
		return Npc_DelDynaNpc(nUserMapId,"name",sNpcName)
	else
		return true
	end
	
end



--通过小师妹/魔族将军召唤出怪物
function IronGateMainTask_CallMonster(nNpcId,nFloor)
	--删除装饰NPC
	if tIronGateMainTask_TaskInfo[nNpcId]["DelDescNpc"] ~=nil then
		local nDescIndex = tIronGateMainTask_TaskInfo[nNpcId]["DelDescNpc"]
		if not IronGateMainTask_DelDescNpc(nDescIndex) then
			return
		end
	end
	
	--先删除NPC
	if not IronGateMainTask_DelDynaNpc(nFloor) then
		return
	end
	
	--任务面板怪物计数清0
	local nPostTaskId = tIronGateMainTask_TaskInfo[nNpcId]["PostTaskId"]
	if Task_ChkTaskDetailValue(nPostTaskId,"CompleteFlag","==",0) then
		Task_SetTaskDetailData1(nPostTaskId,0)
	end
	
	--在创建怪物,5只魔族步卒,2只魔族守卫
	--改为 ：与小师妹对话后，刷2只魔族守卫，魔族守卫的逻辑是：守卫死亡后刷3只魔族步卒在玩家附近
	local nUserMapId =Get_UserMapId()
	if tIronGateMainTask_TaskInfo[nNpcId]["CallMonsterId"]~=nil then
		local nMonsterId = tIronGateMainTask_TaskInfo[nNpcId]["CallMonsterId"]
		IronGateMainTask_CreatMonster(nMonsterId,nUserMapId)
	end
	
	--出现怪物提示
	if tIronGateMainTask_Text["MonsterCome"][nNpcId] ~=nil then
		Sys_MsgBox(tIronGateMainTask_Text["MonsterCome"][nNpcId])
		User_TalkChannel2005(tIronGateMainTask_Text["MonsterCome"][nNpcId])
	end
	
	--怪物出现的光效
	if tIronGateMainTask_TaskInfo[nNpcId]["CreatEffect"] ~=nil then
		local nEffectIndex = tIronGateMainTask_TaskInfo[nNpcId]["CreatEffect"]
		local sEffectName = tIronGateMainTask_Effect[nEffectIndex]
		local nMonsterId = tIronGateMainTask_Constant["FirstBossId"]
		--在怪物位置播放
		local nPosX = tIronGateMainTask_Monster[nMonsterId][1]["PosX"]
		local nPosY = tIronGateMainTask_Monster[nMonsterId][1]["PosY"]
		Map_Effect(nUserMapId,nPosX,nPosY,sEffectName)
	end
	
	--刷陷阱特效
	if tIronGateMainTask_TaskInfo[nNpcId]["CreatTraps"] ~=nil then
		local nTrapIndex = tIronGateMainTask_TaskInfo[nNpcId]["CreatTraps"]
		IronGateMainTask_CreatInstance2Trap(nTrapIndex,nUserMapId)
	end
	
end



--创建怪物
function IronGateMainTask_CreatMonster(nMonsterId,nMapId)
	local nUserMapId =nMapId or Get_UserMapId()
	if Get_SysTempData(1,nUserMapId,nMonsterId) == 0 then
		for i=1,#tIronGateMainTask_Monster[nMonsterId] do
			local nPosX = tIronGateMainTask_Monster[nMonsterId][i]["PosX"]
			local nPosY = tIronGateMainTask_Monster[nMonsterId][i]["PosY"]
			local nGenId = tIronGateMainTask_Monster[nMonsterId][i]["GenId"]
			Monster_AddAndCount(nUserMapId,nPosX,nPosY,nGenId,nMonsterId)
		end
	end
end


--创建副本2的多种陷阱
--nTemp 索引 tIronGateMainTask_Trap
function IronGateMainTask_CreatInstance2Trap(nTemp,nMapId)
	local nUserMapId =  nMapId or Get_UserMapId()
	local tAllTrap  = tIronGateMainTask_Trap[nTemp]
	--nType 第几种 tCurTrapType 当前种类型的陷阱所有位置
	for nType,tCurTrapType in pairs (tIronGateMainTask_Trap[nTemp]) do
		for nIndex,k in pairs (tCurTrapType) do
			local nTrapType = tIronGateMainTask_Trap[nTemp][nType][nIndex]["TrapType"]
			local nLook = tIronGateMainTask_Trap[nTemp][nType][nIndex]["Look"]
			local nPosX = tIronGateMainTask_Trap[nTemp][nType][nIndex]["PosX"]
			local nPosY = tIronGateMainTask_Trap[nTemp][nType][nIndex]["PosY"]
			Trap_CreateMapTrap(nTrapType,nLook,0,nUserMapId,nPosX,nPosY,15,15)
		end
	end
end


--指定位置创建单个陷阱,nUserMapId玩家所在地图，nIndex配置索引
function IronGateMainTask_CreateTrap(nIndex,nMapId)
	local nUserMapId =  nMapId or Get_UserMapId()
	local nTrapType = tIronGateMainTask_Trap[nIndex]["TrapType"]
	local nLook = tIronGateMainTask_Trap[nIndex]["Look"]
	local nPosX = tIronGateMainTask_Trap[nIndex]["PosX"]
	local nPosY = tIronGateMainTask_Trap[nIndex]["PosY"]
	Trap_CreateMapTrap(nTrapType,nLook,0,nUserMapId,nPosX,nPosY,3,3)
end


--切换地图的陷阱响应
function IronGateMainTask_ChgMapTrapRespon(nTrapType)
	--删除增益状态（副本2的出口和入口）
	if tIronGateMainTask_ChgPosi[nTrapType]["Stauts"] ~=nil then
		--删除增益光效和状态
		IronGateMainTask_DelEffect(2)
		IronGateMainTask_ReduceManyStatus()
	end
	
	local nMapId= tIronGateMainTask_ChgPosi[nTrapType]["MapId"]
	local nPosX= tIronGateMainTask_ChgPosi[nTrapType]["PosX"]
	local nPosY = tIronGateMainTask_ChgPosi[nTrapType]["PosY"]
	--判断是否在副本2,掩码2 是在杀完BOSS才会赋值，掩码5进入副本2赋值，杀死BOSS清零
	local nSaveMapId1 = Get_UserStatisticValue(tIronGateMainTask_Stc[2]["EventType"],tIronGateMainTask_Stc[2]["DataType"])
	local nSaveMapId2 = Get_UserStatisticValue(tIronGateMainTask_Stc[5]["EventType"],tIronGateMainTask_Stc[5]["DataType"])
	if nSaveMapId1 == Get_UserMapId()  or nSaveMapId2 ==Get_UserMapId() then
		--玩家在副本2不需要检测地图属性，地图属性有限制无法chgmap
		if not User_UserRandBoundTrans(nMapId,nPosX,nPosY,3,3,0) then
			return
		end
	else
		if not User_UserRandBoundTrans(nMapId,nPosX,nPosY,3,3,1) then
			return
		end
	end
	
	
	--切换地图提示
	if tIronGateMainTask_Text["TrapChgMap"][nTrapType]~=nil then
		if tIronGateMainTask_FindPosi[nTrapType] ~=nil then
			local nFindMapId = tIronGateMainTask_FindPosi[nTrapType]["MapId"]
			-- 判断激情服
			if SpecialServer_ChkNoGiftServer() and nTrapType == 1608 then
				nFindMapId = tIronGateMainTask_FindPosi[nTrapType]["NotGiftMapId"]
			end
			Sys_MsgBox(tIronGateMainTask_Text["TrapChgMap"][nTrapType],string.format("IronGateMainTask_FindPathByIndex</N>%d</N>%d",nTrapType,nFindMapId))
		else
			Sys_MsgBox(tIronGateMainTask_Text["TrapChgMap"][nTrapType])
		end
		User_TalkChannel2005(tIronGateMainTask_Text["TrapChgMap"][nTrapType])
	end
	
	
	--弹漫画
	if tIronGateMainTask_ChgPosi[nTrapType]["Carton"] ~= nil then
		-- 副本2出口 出来弹漫画3
		local nEvent = tIronGateMainTask_Stc[3]["EventType"]
		local nData = tIronGateMainTask_Stc[3]["DataType"]
		if not Task_ChkStcValue(nEvent,nData,">=",1) then
			Task_SetStatistic(nEvent,nData,1,1)
			Task_SetStcTimestamp(nEvent,nData,0)
			User_NoviceTeaching(tIronGateMainTask_ChgPosi[nTrapType]["Carton"]) --设置弹出漫画
		end
	end
	
end


--增加光效
function IronGateMainTask_AddEffect(nEffectIndex,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local sEffectName = tIronGateMainTask_Effect[nEffectIndex]
	if sEffectName~=nil then
		User_EffectAdd("self",sEffectName,nNowUserId)
	end
end


--删除光效
function IronGateMainTask_DelEffect(nEffectIndex,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local sEffectName = tIronGateMainTask_Effect[nEffectIndex]
	if sEffectName~=nil then
		return User_EffectDel("self",sEffectName,nNowUserId)
	end
end


--公共地图出去的陷阱响应
function IronGateMainTask_CommonTrapRespon()
	--有队伍
	if IronGateMainTask_IsHasTeam() then
		Sys_MsgBox(tIronGateMainTask_Text["HasTeam"])
		return
	end
	
	--删除进入公共地图增加的光效
	IronGateMainTask_DelEffect(1)
	
	--进入副本2，同时点击弹窗自动寻路到垂死的传功长老
	local nFloor = tIronGateMainTask_Constant["CommonMapIndex"]
	local nFindNpcId = tIronGateMainTask_Constant["CommonMapFind"]
	IronGateMainTask_EnterInstance(nFloor,nFindNpcId)
end


--状态陷阱触发
function IronGateMainTask_AddStatus(nStatusIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nStatus = tIronGateMainTask_Status[nStatusIndex]["Status"]
	local nPower = tIronGateMainTask_Status[nStatusIndex]["Power"]
	local nSecs =tIronGateMainTask_Status[nStatusIndex]["Secs"]
	local nTimes =tIronGateMainTask_Status[nStatusIndex]["Times"]
	local nRemainTime = tIronGateMainTask_Status[nStatusIndex]["RemainTime"]
	local nEndTime =  tIronGateMainTask_Status[nStatusIndex]["EndTime"]
	
	--增加状态
	if User_ChkRoleStatus(nStatus,nUserId) then
		if not User_DelRoleStatus(nStatus,nUserId) then
			return
		end
	end
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,0,1,0,nUserId)
	
	--增加的状态提示
	if tIronGateMainTask_Text["Status"][nStatusIndex] ~= nil then
		Sys_MsgBox(tIronGateMainTask_Text["Status"][nStatusIndex],"IronGateMainTask_FindPathByIndex</N>3","NULL",nUserId)
		-- User_TalkChannel2005(tIronGateMainTask_Text["Status"][nStatusIndex])
	end
	
end


--与垂死的长老对话，增加状态和自动寻路
function IronGateMainTask_ToKillMonster(nNpcId)
	local nUserId = Get_UserId()
	local nCurMapId = Get_UserMapId(nUserId)
	local nEvent = tIronGateMainTask_Stc[5]["EventType"]
	local nData = tIronGateMainTask_Stc[5]["DataType"]
	local nSaveMapId = Get_UserStatisticValue(nEvent,nData,nUserId)
	--不在副本地图
	if nSaveMapId ~=nCurMapId then
		return
	end
	
	local tStatus= tIronGateMainTask_Constant["tAddStatus"]
	local bIsHasStatus = false --是否有增益状态
	for i=1,#tStatus do
		local nStatusIndex = tStatus[i]
		local nStatus = tIronGateMainTask_Status[nStatusIndex]["Status"]
		if User_ChkRoleStatus(nStatus,nUserId) then
			bIsHasStatus = true --有增益了
		end
	end
	
	--没有增益才去增加状态
	if bIsHasStatus == false then
		IronGateMainTask_AddManyStatus()
		
	end
	
	--先删除龙的光效（不管有没有），在新增
	IronGateMainTask_DelEffect(2)
	IronGateMainTask_AddEffect(2)
	
	--自动寻路
	IronGateMainTask_FindPathByIndex(nNpcId)
end



--增加多种增益状态：攻击，生命，暴击
function IronGateMainTask_AddManyStatus(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tIronGateMainTask_Stc[5]["EventType"]
	local nData = tIronGateMainTask_Stc[5]["DataType"]
	local nCurMapId = Get_UserMapId(nUserId)
	local nSaveMapId = Get_UserStatisticValue(nEvent,nData,nUserId)
	--在副本中则继续获得增益
	if nSaveMapId == nCurMapId then
		--增加多种增益状态
		local tStatus = tIronGateMainTask_Constant["tAddStatus"]
		for i=1,#tStatus do
			local nStatusIndex = tStatus[i]
			IronGateMainTask_AddStatus(nStatusIndex,nUserId)
			if nStatusIndex== tIronGateMainTask_Constant["LifeStatusIndex"] then
				--增加生命
				local nAddLife = tIronGateMainTask_Status[nStatusIndex]["Power"]
				User_AddLife(nAddLife,nUserId)
			end
		end
		--增加倒计时，在副本中则继续获得增益
		local nTimeDelay = tIronGateMainTask_Constant["TimeDelay"]
		--User_SetTimer(nTimeDelay,"IronGateMainTask_AddManyStatus",0,nUserId)
	end
end


--删除多种增益状态：攻击，生命，暴击
function IronGateMainTask_ReduceManyStatus()
	local nUserId = Get_UserId()
	local nEvent = tIronGateMainTask_Stc[5]["EventType"]
	local nData = tIronGateMainTask_Stc[5]["DataType"]
	--是否获得增益的效果保存所在的地图置0
	Task_SetStatistic(nEvent,nData,0,1,nUserId)
	
	local tStatus= tIronGateMainTask_Constant["tAddStatus"]
	for i=1,#tStatus do
		local nStatusIndex = tStatus[i]
		local nStatus = tIronGateMainTask_Status[nStatusIndex]["Status"]
		if User_ChkRoleStatus(nStatus,nUserId) then
			if not User_DelRoleStatus(nStatus,nUserId) then
				return
			end
			
		end
	end
	
end


--减少怪物数量,返回之前的怪物数量 和 减少后的数量
--eg：之前刷2只，则 nBeforeCount=2，nMonsterCount=1
function IronGateMainTask_ReduceMonsterData(nMonsterId,nMapId)
	local nUserMapId =nMapId or Get_UserMapId()
	local nBeforeCount = Get_SysTempData(1,nUserMapId,nMonsterId)
	local nMonsterCount = nBeforeCount - 1
	nMonsterCount = nMonsterCount > 0 and nMonsterCount or 0
	Sys_SetTempData(1,nUserMapId,nMonsterId,nMonsterCount)
	return nBeforeCount,nMonsterCount
end


--魔族守卫,刷3只魔族步卒，改为刷1只
function IronGateMainTask_ShouWeiMonsterDied(nMonsterId)
	local nUserMapId =Get_UserMapId()
	local nCreatMonsterId = tIronGateMainTask_Constant["LittleMonsterId"]
	--减少怪物数量
	local nBeforeCount = IronGateMainTask_ReduceMonsterData(nMonsterId,nUserMapId)
	
	--创建新的怪物(原先刷2只，nBeforeCount=2 或者=1)
	if nBeforeCount~=0 and tIronGateMainTask_Monster[nCreatMonsterId][nBeforeCount]~=nil then
		local tMonster = tIronGateMainTask_Monster[nCreatMonsterId][nBeforeCount]
		for i=1,#tMonster do
			local nPosX = tMonster[i]["PosX"]
			local nPosY = tMonster[i]["PosY"]
			local nGenId = tMonster[i]["GenId"]
			Monster_AddAndCount(nUserMapId,nPosX,nPosY,nGenId,nCreatMonsterId)
		end
	end
	
end


--副本1的怪物是否都死亡
function IronGateMainTask_ChkOneMonsterAllDied(nUserMapId)
	local tMonster = tIronGateMainTask_Constant["IntanceOneMonster"]
	for i,nMonsterId in pairs (tMonster) do
		if Get_SysTempData(1,nUserMapId,nMonsterId) ~= 0 then
			--还有小怪存活
			return false
		end
	end
	--全部死亡
	return true
end


--魔族步卒怪物死亡
function IronGateMainTask_DemonMonsterDied(nMonsterId)
	
	--减少怪物数量
	local nUserMapId = Get_UserMapId()
	IronGateMainTask_ReduceMonsterData(nMonsterId,nUserMapId)
	
	--有接取任务3，且杀死全部魔族怪物
	local nNpcId = tIronGateMainTask_Constant["LittleSisterId"]
	local nPostTaskId = tIronGateMainTask_TaskInfo[nNpcId]["PostTaskId"]
	if Task_ChkTaskDetail(nPostTaskId) and Task_ChkTaskDetailValue(nPostTaskId,"CompleteFlag","==",0) then 
		--怪物全部死亡
		if IronGateMainTask_ChkOneMonsterAllDied(nUserMapId) then
			--面板设置杀完怪物
			Task_SetTaskDetailData1(nPostTaskId,1)
			
			--删除传功长老，创建回小师妹
			IronGateMainTask_DelDynaNpc(1)
			IronGateMainTask_CreateDynaNpc(6,nUserMapId)
			
			--提示，且自动寻路
			Sys_MsgBox(tIronGateMainTask_Text["KillAllDemon"],"IronGateMainTask_FindPathByIndex</N>2")
		end
	end
	
end


--魔族祭司怪物死亡
--在公共地图中杀怪，每杀1只给个系统提示，杀怪数量大于等于5只时给个弹框提示。
--公共地图的光效，改成每击杀1只公共地图中的怪物就播放1次。105弹框可以去掉了。
function IronGateMainTask_JiSiMonsterDied()
	--增加光效和提示
	local nMapId = Get_UserMapId()
	local nPosX = Get_UserPositionX() -tIronGateMainTask_Constant["EffectOffset"]
	local nPosY = Get_UserPositionY()
	local sEffectName = tIronGateMainTask_Effect[1]
	--去掉光效
	-- Map_Effect(nMapId,nPosX,nPosY,sEffectName)
	User_TalkChannel2005(tIronGateMainTask_Text["TrapChgMap"][1606])
end


--魔族将军阶段1死亡,召唤阶段2
function IronGateMainTask_GeneralOneMonsterDied(nMonsterId)
	--减少怪物数量
	local nUserMapId = Get_UserMapId()
	local nBeforeCount,nMonsterCount = IronGateMainTask_ReduceMonsterData(nMonsterId,nUserMapId)
	
	if nMonsterCount == 0 then
		--屏幕抖屏
		User_Screffect(1)
		
		--弹窗提示
		Sys_MsgBox(tIronGateMainTask_Text["GeneralOneDied"])
		User_TalkChannel2005(tIronGateMainTask_Text["GeneralOneDied"])
		
		--创建阶段2的怪物
		local nCreatBossId = tIronGateMainTask_Constant["SecondBossId"]
		IronGateMainTask_CreatMonster(nCreatBossId,nUserMapId)
		
		--刷陷阱特效
		IronGateMainTask_CreatInstance2Trap(5,nUserMapId)
	end
end


--魔族将军阶段2怪物死亡
function IronGateMainTask_GeneralMonsterDied(nMonsterId)
	--减少怪物数量
	local nUserMapId = Get_UserMapId()
	local nBeforeCount,nMonsterCount = IronGateMainTask_ReduceMonsterData(nMonsterId,nUserMapId)
	
	--完成任务5
	local nNpcId = tIronGateMainTask_Constant["DemonNpcId"]
	local nTaskId = tIronGateMainTask_TaskInfo[nNpcId]["TaskId"]
	local nPostTaskId = tIronGateMainTask_TaskInfo[nNpcId]["NextTaskId"]
	if Task_ChkTaskDetail(nTaskId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0) then 
		--怪物全部死亡
		if nMonsterCount == 0 then
			--面板设置杀完怪物
			Task_SetTaskDetailData1(nTaskId,1)
			Task_SetTaskDetailCompleteFlag(nTaskId,1)
			
			--接取下一个任务
			if not Task_AddTaskDetail(nPostTaskId) then
				return
			end
			
			--提示
			local sFunc = "IronGateMainTask_FindPathByIndex</N>3"
			Sys_MsgBox(tIronGateMainTask_Text["GeneralMonsterDied"],sFunc)
			User_TalkChannel2005(tIronGateMainTask_Text["GeneralMonsterDied"])
			
			--创建副本2的陷阱
			IronGateMainTask_CreatInstance2Trap(3,nUserMapId)
			IronGateMainTask_CreateTrap(2,nUserMapId)
			
			--删除龙的光效
			local nUserId= Get_UserId()
			IronGateMainTask_DelEffect(2,nUserId)
			
			--删除传功长老处增益状态
			IronGateMainTask_ReduceManyStatus()
			
			
			--增加倒计时屏幕效果，在地图内每10秒震屏
			local nEvent = tIronGateMainTask_Stc[2]["EventType"]
			local nData = tIronGateMainTask_Stc[2]["DataType"]
			local nTimeDelay = tIronGateMainTask_Constant["TimeDelay"]
			Task_SetStatistic(nEvent,nData,nUserMapId,1,nUserId) --保存所在的地图
			User_Screffect(1,nUserId)
			User_SetTimer(nTimeDelay,"IronGateMainTask_SetScreenEffect",0,nUserId)
		end
	end
	
end


--增加倒计时屏幕效果，在地图内每10秒震屏
function IronGateMainTask_SetScreenEffect(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nEvent = tIronGateMainTask_Stc[2]["EventType"]
	local nData = tIronGateMainTask_Stc[2]["DataType"]
	local nCurMapId = Get_UserMapId(nNowUserId)
	local nSaveMapId = Get_UserStatisticValue(nEvent,nData,nNowUserId)
	--还在副本内则触发震动效果，继续倒计时
	if nSaveMapId == nCurMapId then
		local nTimeDelay = tIronGateMainTask_Constant["TimeDelay"]
		User_Screffect(1,nNowUserId)
		--User_SetTimer(nTimeDelay,"IronGateMainTask_SetScreenEffect",0,nNowUserId)
	end
end


--检测是否是铁扇门职业，true--是，false--否
function IronGateMainTask_IsIronGatePro(nPro)
	local nUserPro = nPro or Get_UserProfession()
	--G_PRO_IroFan0=160 见习铁扇门
	-- G_PRO_IroFan5=165--钻石扇门
	return  G_PRO_IroFan0 <= nUserPro  and nUserPro <=G_PRO_IroFan5
end

--铁扇门职业，放弃任务
function IronGateMainTask_GiveUpTask(nEndTaskId)
	--玩家是铁扇门，不能删除
	local nUserPro = Get_UserProfession()
	if IronGateMainTask_IsIronGatePro(nUserPro) then
		return
	end
	
	local nBeginTaskId = 3797
	for nTaskId=nEndTaskId,nBeginTaskId,-1 do
		if Task_ChkTaskDetail(nTaskId) then
			--完成的任务置0，才能删除
			Task_SetTaskDetailData1(nTaskId,0)
			Task_SetTaskDetailCompleteFlag(nTaskId,0)
			Task_DelTaskDetail(nTaskId)
		end
	end
	
end

----非铁扇门职业的任务，铁扇门才能放弃任务
function IronGateMainTask_NotIronGiveUpTask(nTaskId)
	--非铁扇门不能删除
	if not IronGateMainTask_IsIronGatePro(nUserPro) then
		return
	end
	if Task_ChkTaskDetail(nTaskId) then
		--完成的任务置0，才能删除
		Task_SetTaskDetailData1(nTaskId,0)
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_DelTaskDetail(nTaskId)
	end
	
end

--- 所有等级40（含）以上 上线的玩家都将收到1封背包信
function IronGateMainTask_Online()
	--不在活动时间
	local sAccetpTaskTime = tIronGateMainTask_Constant["AcceptTaskTime"]
	if not Sys_ChkFullTime(sAccetpTaskTime) then
		return 
	end
	
	--铁扇门更新后一个月内，玩家首次上线时触发图片弹框，fortest
	local nShowEvent = tIronGateMainTask_Stc[4]["EventType"]
	local nShowData = tIronGateMainTask_Stc[4]["DataType"]
	if not Task_ChkStcValue(nShowEvent,nShowData,">=",1) then
		--打掩码
		Task_SetStatistic(nShowEvent,nShowData,1,1)
		Task_SetStcTimestamp(nShowEvent,nShowData,0)
		
		--弹漫画
		User_NoviceTeaching(tIronGateMainTask_Constant["OnlineCarton"])
	end
	
	
	--背包空间不足
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tIronGateMainTask_Text["NoSpaceAward"])
		return
	end
	
	--等级不满足
	local nNeedLev = tIronGateMainTask_Constant["Level"]
	local nNeedMete = tIronGateMainTask_Constant["Metempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nNeedLev,nNeedMete) then
		return
	end
	
	--没有获得，则获得背包信
	local nEventType = tIronGateMainTask_Stc[1]["EventType"]
	local nDataType = tIronGateMainTask_Stc[1]["DataType"]
	if not Task_ChkStcValue(nEventType,nDataType,">=",1) then
		--打掩码
		Task_SetStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		
		--获得背包信
		RewardTemplate_Reward(tIronGateMainTask_Reward["Online"])
	end
	
end


-----------------------------------NPC逻辑-----------------------------------
--守门弟子
tNpcFace[4528] = 13

tNpcGossip[20028]= tNpcGossip[20028] or DefaultNpc:new{}
tNpcGossip[20028]["OptionHidden"] = 1

--守门弟子进入：掌门来信
tNpcGossip[20028]["Text1-1"] = {111,112}
tNpcGossip[20028]["Text111"] = tIronGateMainTask_Text[20028]["Text111"]
tNpcGossip[20028]["Text112"] = tIronGateMainTask_Text[20028]["Text112"]
tNpcGossip[20028]["ChkFunc1-1"] = function ()
	local nSex =Get_UserSex()
	tNpcGossip[20028]["Text111"]=tIronGateMainTask_Text[20028]["Text111"][nSex]
	return true
end

tNpcGossip[20028]["tOption1-1"] = {111,112}
tNpcGossip[20028]["Option111"] = tIronGateMainTask_Text[20028]["Option111"] --我这就去
tNpcGossip[20028]["OptionFunc111"] = "IronGateMainTask_EnterInstance</N>1</N>20029"

tNpcGossip[20028]["Option112"] = tIronGateMainTask_Text[20028]["Option112"]

--守门弟子进入：营救小师妹
tNpcGossip[20028]["Text1-2"] = {121}
tNpcGossip[20028]["Text121"] = tIronGateMainTask_Text[20028]["Text121"]

tNpcGossip[20028]["tOption1-2"] = {121}
tNpcGossip[20028]["Option121"] = tIronGateMainTask_Text[20028]["Option121"]
tNpcGossip[20028]["OptionFunc121"] = "IronGateMainTask_EnterInstance</N>2</N>20030"

--守门弟子进入：支援传功长老
tNpcGossip[20028]["Text1-3"] = {131}
tNpcGossip[20028]["Text131"] = tIronGateMainTask_Text[20028]["Text131"]

tNpcGossip[20028]["tOption1-3"] = {131}
tNpcGossip[20028]["Option131"] = tIronGateMainTask_Text[20028]["Option131"]
tNpcGossip[20028]["OptionFunc131"] = "IronGateMainTask_EnterInstance</N>3</N>20030"

--守门弟子进入：守护皇陵
tNpcGossip[20028]["Text1-4"] = {141}
tNpcGossip[20028]["Text141"] = tIronGateMainTask_Text[20028]["Text141"]

tNpcGossip[20028]["tOption1-4"] = {141}
tNpcGossip[20028]["Option141"] = tIronGateMainTask_Text[20028]["Option141"]
tNpcGossip[20028]["OptionFunc141"] = "IronGateMainTask_ChgMapTrapRespon</N>1606"

--守门弟子进入：击败大魔头
tNpcGossip[20028]["Text1-5"] = {151}
tNpcGossip[20028]["Text151"] = tIronGateMainTask_Text[20028]["Text151"]

tNpcGossip[20028]["tOption1-5"] = {151}
tNpcGossip[20028]["Option151"] = tIronGateMainTask_Text[20028]["Option151"]
tNpcGossip[20028]["OptionFunc151"] = "IronGateMainTask_EnterInstance</N>5</N>20032"


--玩家不是铁扇门
tNpcGossip[20028]["Text2-1"] = {211}
tNpcGossip[20028]["Text211"] = tIronGateMainTask_Text[20028]["Text211"]

tNpcGossip[20028]["tOption2-1"] = {211}
tNpcGossip[20028]["Option211"] = tIronGateMainTask_Text[20028]["Option211"]

--玩家是铁扇门，未接受任务
tNpcGossip[20028]["Text3-1"] = {311}
tNpcGossip[20028]["Text311"] = tIronGateMainTask_Text[20028]["Text311"][1]
tNpcGossip[20028]["ChkFunc3-1"] = function ()
	local nSex =Get_UserSex()
	tNpcGossip[20028]["Text311"]=tIronGateMainTask_Text[20028]["Text311"][nSex]
	return true
end

tNpcGossip[20028]["tOption3-1"] = {311}
tNpcGossip[20028]["Option311"] = tIronGateMainTask_Text[20028]["Option311"]

--玩家是铁扇门，完成所有任务
tNpcGossip[20028]["Text4-1"] = {411}
tNpcGossip[20028]["Text411"] = tIronGateMainTask_Text[20028]["Text411"][1]
tNpcGossip[20028]["ChkFunc4-1"] = function ()
	local nSex =Get_UserSex()
	tNpcGossip[20028]["Text411"]=tIronGateMainTask_Text[20028]["Text411"][nSex]
	return true
end
tNpcGossip[20028]["tOption4-1"] = {411}
tNpcGossip[20028]["Option411"] = tIronGateMainTask_Text[20028]["Option411"]


--传功长老
tNpcFace[4529] = 67

tNpcGossip[20029]= tNpcGossip[20029] or DefaultNpc:new{}
tNpcGossip[20029]["OptionHidden"] = 1

--传功长老：掌门来信
tNpcGossip[20029]["Text1-1"] = {111,112,113,114}
tNpcGossip[20029]["Text111"] = tIronGateMainTask_Text[20029]["Text111"]
tNpcGossip[20029]["Text112"] = tIronGateMainTask_Text[20029]["Text112"]
tNpcGossip[20029]["Text113"] = tIronGateMainTask_Text[20029]["Text113"]
tNpcGossip[20029]["Text114"] = tIronGateMainTask_Text[20029]["Text114"]
tNpcGossip[20029]["ChkFunc1-1"] = function ()
	local sUserName =Get_UserName()
	tNpcGossip[20029]["Text113"] = string.format(tIronGateMainTask_Text[20029]["Text113"],sUserName)
	return true
end

tNpcGossip[20029]["tOption1-1"] = {111}
tNpcGossip[20029]["Option111"] = tIronGateMainTask_Text[20029]["Option111"]
tNpcGossip[20029]["OptionFunc111"] = "IronGateMainTask_CompleteTask</N>20029"

--传功长老：掌门来信任务完成后的对白
tNpcGossip[20029]["Text1-2"] = {121,122}
tNpcGossip[20029]["Text121"] = tIronGateMainTask_Text[20029]["Text121"]
tNpcGossip[20029]["Text122"] = tIronGateMainTask_Text[20029]["Text122"]


tNpcGossip[20029]["tOption1-2"] = {121}
tNpcGossip[20029]["Option121"] = tIronGateMainTask_Text[20029]["Option121"]
tNpcGossip[20029]["OptionFunc121"] = "IronGateMainTask_FindPathByIndex</N>20030"




--传功长老：掌门来信任务完成后的对白
tNpcGossip[20029]["Text1-5"] = {111,112,151}
tNpcGossip[20029]["Text151"] = tIronGateMainTask_Text[20029]["Text151"]

tNpcGossip[20029]["tOption1-5"] = {151}
tNpcGossip[20029]["Option151"] = tIronGateMainTask_Text[20029]["Option151"]



--小师妹
tNpcFace[4530] = 155

tNpcGossip[20030]= tNpcGossip[20030] or DefaultNpc:new{}
tNpcGossip[20030]["OptionHidden"] = 1

--与小师妹对话
tNpcGossip[20030]["Text1-1"] = {111}
tNpcGossip[20030]["Text111"] = tIronGateMainTask_Text[20030]["Text111"][1]
tNpcGossip[20030]["ChkFunc1-1"] = function ()
	local nSex =Get_UserSex()
	tNpcGossip[20030]["Text111"] = tIronGateMainTask_Text[20030]["Text111"][nSex]
	return true
end

tNpcGossip[20030]["tOption1-1"] = {111}
tNpcGossip[20030]["Option111"] = tIronGateMainTask_Text[20030]["Option111"]
tNpcGossip[20030]["OptionFunc111"] = "IronGateMainTask_CompleteTask</N>20030"


--对话完成
tNpcGossip[20030]["Text1-2"] = {121}
tNpcGossip[20030]["Text121"] = tIronGateMainTask_Text[20030]["Text121"][1]
tNpcGossip[20030]["ChkFunc1-2"] = function ()
	local nSex =Get_UserSex()
	tNpcGossip[20030]["Text121"] = tIronGateMainTask_Text[20030]["Text121"][nSex]
	return true
end

tNpcGossip[20030]["tOption1-2"] = {121}
tNpcGossip[20030]["Option121"] = tIronGateMainTask_Text[20030]["Option121"]
tNpcGossip[20030]["OptionFunc121"] = "IronGateMainTask_CallMonster</N>20030</N>2"

--击败魔族守卫 完成
tNpcGossip[20030]["Text1-3"] = {132,133,131}
tNpcGossip[20030]["Text132"] = tIronGateMainTask_Text[20030]["Text132"]
tNpcGossip[20030]["Text133"] = tIronGateMainTask_Text[20030]["Text133"]
tNpcGossip[20030]["Text131"] = tIronGateMainTask_Text[20030]["Text131"][1]
tNpcGossip[20030]["ChkFunc1-3"] = function ()
	local nSex =Get_UserSex()
	tNpcGossip[20030]["Text131"] = tIronGateMainTask_Text[20030]["Text131"][nSex]
	return true
end
tNpcGossip[20030]["tOption1-3"] = {131}
tNpcGossip[20030]["Option131"] = tIronGateMainTask_Text[20030]["Option131"]
tNpcGossip[20030]["OptionPoint131"] = "1-4"


tNpcGossip[20030]["Text1-4"] = {141,142}
tNpcGossip[20030]["Text141"] = tIronGateMainTask_Text[20030]["Text141"]
tNpcGossip[20030]["Text142"] = tIronGateMainTask_Text[20030]["Text142"]

tNpcGossip[20030]["tOption1-4"] = {141}
tNpcGossip[20030]["Option141"] = tIronGateMainTask_Text[20030]["Option141"]
tNpcGossip[20030]["OptionFunc141"] = "IronGateMainTask_CompleteTask3</N>20030"

--小师妹：支援传功长老
tNpcGossip[20030]["Text1-5"] = {132,133,151}
tNpcGossip[20030]["Text151"] = tIronGateMainTask_Text[20030]["Text151"][1]
tNpcGossip[20030]["ChkFunc1-5"] = function ()
	local nSex =Get_UserSex()
	tNpcGossip[20030]["Text151"] = tIronGateMainTask_Text[20030]["Text151"][nSex]
	return true
end
tNpcGossip[20030]["tOption1-5"] = {151,152}
tNpcGossip[20030]["Option151"] = tIronGateMainTask_Text[20030]["Option151"]
tNpcGossip[20030]["OptionFunc151"] = "IronGateMainTask_FindPathByIndex</N>1"
tNpcGossip[20030]["Option152"] = tIronGateMainTask_Text[20030]["Option152"]


--垂死的传功长老
tNpcFace[4531] = 67

tNpcGossip[20031]= tNpcGossip[20031] or DefaultNpc:new{}
tNpcGossip[20031]["OptionHidden"] = 1

tNpcGossip[20031]["Text1-1"] = {111,112,113,114}
tNpcGossip[20031]["Text111"] = tIronGateMainTask_Text[20031]["Text111"]
tNpcGossip[20031]["Text112"] = tIronGateMainTask_Text[20031]["Text112"]
tNpcGossip[20031]["Text113"] = tIronGateMainTask_Text[20031]["Text113"]
tNpcGossip[20031]["Text114"] = tIronGateMainTask_Text[20031]["Text114"]
tNpcGossip[20031]["ChkFunc1-1"] = function ()
	local sUserName = Get_UserName()
	tNpcGossip[20031]["Text113"] = string.format(tIronGateMainTask_Text[20031]["Text113"],sUserName)
	return true
end
tNpcGossip[20031]["tOption1-1"] = {111}
tNpcGossip[20031]["Option111"] = tIronGateMainTask_Text[20031]["Option111"]
tNpcGossip[20031]["OptionPoint111"] = "1-3"


tNpcGossip[20031]["Text1-3"] = {131,132}
tNpcGossip[20031]["Text131"] = tIronGateMainTask_Text[20031]["Text131"][1]
tNpcGossip[20031]["Text132"] = tIronGateMainTask_Text[20031]["Text132"][1]
tNpcGossip[20031]["ChkFunc1-3"] = function ()
	local nUserId = Get_UserId()
	if User_GetIroFanMode(nUserId) then 
		--近战
		tNpcGossip[20031]["Text131"] = tIronGateMainTask_Text[20031]["Text131"][1]
		tNpcGossip[20031]["Text132"] = tIronGateMainTask_Text[20031]["Text132"][1]
	else
		tNpcGossip[20031]["Text131"] = tIronGateMainTask_Text[20031]["Text131"][2]
		tNpcGossip[20031]["Text132"] = tIronGateMainTask_Text[20031]["Text132"][2]
	end
	return true
end

tNpcGossip[20031]["tOption1-3"] = {131}
tNpcGossip[20031]["Option131"] = tIronGateMainTask_Text[20031]["Option131"]
tNpcGossip[20031]["OptionFunc131"] = "IronGateMainTask_SetRelaxExplore</N>20031"

tNpcGossip[20031]["Text1-4"] = {111,112,142,143}
tNpcGossip[20031]["Text142"] = tIronGateMainTask_Text[20031]["Text142"]
tNpcGossip[20031]["Text143"] = tIronGateMainTask_Text[20031]["Text143"]

tNpcGossip[20031]["tOption1-4"] = {141}
tNpcGossip[20031]["Option141"] = tIronGateMainTask_Text[20031]["Option141"]
-- tNpcGossip[20031]["OptionFunc141"] = "IronGateMainTask_CompleteTask</N>20031"
tNpcGossip[20031]["OptionPoint141"] = "1-6"

tNpcGossip[20031]["Text1-6"] = {161,162}
tNpcGossip[20031]["Text161"] = tIronGateMainTask_Text[20031]["Text161"]
tNpcGossip[20031]["Text162"] = tIronGateMainTask_Text[20031]["Text162"]

tNpcGossip[20031]["tOption1-6"] = {161}
tNpcGossip[20031]["Option161"] = tIronGateMainTask_Text[20031]["Option161"]
tNpcGossip[20031]["OptionFunc161"] = "IronGateMainTask_CompleteTask</N>20031"


--完成当前任务
tNpcGossip[20031]["Text1-2"] = {121,122}
tNpcGossip[20031]["Text121"] = tIronGateMainTask_Text[20031]["Text121"]
tNpcGossip[20031]["Text122"] = tIronGateMainTask_Text[20031]["Text122"]

tNpcGossip[20031]["tOption1-2"] = {121}
tNpcGossip[20031]["Option121"] = tIronGateMainTask_Text[20031]["Option121"]
tNpcGossip[20031]["OptionFunc121"] = "IronGateMainTask_ToKillMonster</N>20032"

--完成任务5
tNpcGossip[20031]["Text1-5"] = {151,152}
tNpcGossip[20031]["Text151"] = tIronGateMainTask_Text[20031]["Text151"]
tNpcGossip[20031]["Text152"] = tIronGateMainTask_Text[20031]["Text152"]

tNpcGossip[20031]["tOption1-5"] = {151}
tNpcGossip[20031]["Option151"] = tIronGateMainTask_Text[20031]["Option151"]



--魔族将军
tNpcFace[5170] = 62

tNpcGossip[20032]= tNpcGossip[20032] or DefaultNpc:new{}
tNpcGossip[20032]["OptionHidden"] = 1

tNpcGossip[20032]["Text1-1"] = {111,112,113,114}
tNpcGossip[20032]["Text111"] = tIronGateMainTask_Text[20032]["Text111"]
tNpcGossip[20032]["Text112"] = tIronGateMainTask_Text[20032]["Text112"]
tNpcGossip[20032]["Text113"] = tIronGateMainTask_Text[20032]["Text113"]
tNpcGossip[20032]["Text114"] = tIronGateMainTask_Text[20032]["Text114"]

tNpcGossip[20032]["tOption1-1"] = {111}
tNpcGossip[20032]["Option111"] = tIronGateMainTask_Text[20032]["Option111"]
tNpcGossip[20032]["OptionFunc111"] = "IronGateMainTask_CallMonster</N>20032</N>5"



-----------------------------------物品逻辑-----------------------------------
--长老来信
tItem[3301710] = tItem[3301710] or {}

--铁扇门职业
tItem[3301710]["Text1-1"] ={111,112,113}
tItem[3301710]["Text111"] = tIronGateMainTask_Text[3301710]["Text111"]
tItem[3301710]["Text112"] = tIronGateMainTask_Text[3301710]["Text112"]
tItem[3301710]["Text113"] = tIronGateMainTask_Text[3301710]["Text113"]
tItem[3301710]["ChkFunc1-1"] = IronGateMainTask_IsIronGatePro

tItem[3301710]["tOption1-1"]={111}
tItem[3301710]["Option111"]=tIronGateMainTask_Text[3301710]["Option111"]
tItem[3301710]["OptionFunc111"]="IronGateMainTask_UseBackLetter</N>3301710"

--非铁扇门职业
tItem[3301710]["Text1-2"] ={121,122,123}
tItem[3301710]["Text121"] = tIronGateMainTask_Text[3301710]["Text121"]
tItem[3301710]["Text122"] = tIronGateMainTask_Text[3301710]["Text122"]
tItem[3301710]["Text123"] = tIronGateMainTask_Text[3301710]["Text123"]
tItem[3301710]["ChkFunc1-2"] = function()
	return not IronGateMainTask_IsIronGatePro()
end
tItem[3301710]["tOption1-2"]={121}
tItem[3301710]["Option121"]=tIronGateMainTask_Text[3301710]["Option121"]
tItem[3301710]["OptionFunc121"]="IronGateMainTask_UseBackLetter</N>3301710"

-------------------------------------陷阱模板部分----------------------------------
--副本1的出口
tTrap[1606] = tTrap[1606] or {}
tTrap[1606]["Function"] = function (nTrapId,nTrapType)
	Sys_MsgBox(tIronGateMainTask_Text["TrapRespon"][nTrapType],string.format("IronGateMainTask_ChgMapTrapRespon</N>%d",nTrapType))
end

--公共地图的陷阱，进入副本2
tTrap[1607] = tTrap[1607] or {}
tTrap[1607]["Function"] = function (nTrapId,nTrapType)
	Sys_MsgBox(tIronGateMainTask_Text["TrapRespon"][nTrapType],"IronGateMainTask_CommonTrapRespon")
end



--副本2出口
tTrap[1608] = tTrap[1608] or {}
tTrap[1608]["Function"] = function (nTrapId,nTrapType)
	Sys_MsgBox(tIronGateMainTask_Text["TrapRespon"][nTrapType],string.format("IronGateMainTask_ChgMapTrapRespon</N>%d",nTrapType))
end

--副本1入口
tTrap[1609] = tTrap[1609] or {}
tTrap[1609]["Function"] = function (nTrapId,nTrapType)
	Sys_MsgBox(tIronGateMainTask_Text["TrapRespon"][nTrapType],string.format("IronGateMainTask_ChgMapTrapRespon</N>%d",nTrapType))
end

--公共地图入口
tTrap[1610] = tTrap[1610] or {}
tTrap[1610]["Function"] = function (nTrapId,nTrapType)
	Sys_MsgBox(tIronGateMainTask_Text["TrapRespon"][nTrapType],string.format("IronGateMainTask_ChgMapTrapRespon</N>%d",nTrapType))
end

--副本2入口
tTrap[1611] = tTrap[1611] or {}
tTrap[1611]["Function"] = function (nTrapId,nTrapType)
	Sys_MsgBox(tIronGateMainTask_Text["TrapRespon"][nTrapType],string.format("IronGateMainTask_ChgMapTrapRespon</N>%d",nTrapType))
end

--血陷阱（动态）
tTrap[1618] = tTrap[1618] or {}
tTrap[1618]["Function"] = function (nTrapId,nTrapType)
	--增加减速状态
	local nStatusIndex = math.random(2,4)
	IronGateMainTask_AddStatus(nStatusIndex)
	--删除陷阱
	Trap_EraseMapTrap(nTrapId)
end

--公共地图装饰
tTrap[1622] = tTrap[1622] or {}
tTrap[1622]["Function"] = function (nTrapId,nTrapType)
	IronGateMainTask_AddStatus(7)
end

-----------------------------------怪物模板配置---------------------------------
--魔族步卒
tMonster[2814] = tMonster[2814] or {}
tMonster[2814]["tFunction"] = tMonster[2814]["tFunction"] or {}
table.insert(tMonster[2814]["tFunction"],IronGateMainTask_DemonMonsterDied)


--魔族守卫
tMonster[2815] = tMonster[2815] or {}
tMonster[2815]["tFunction"] = tMonster[2815]["tFunction"] or {}
table.insert(tMonster[2815]["tFunction"],IronGateMainTask_ShouWeiMonsterDied)


--魔族祭司
tMonster[2817] = tMonster[2817] or {}
tMonster[2817]["tFunction"] = tMonster[2817]["tFunction"] or {}
table.insert(tMonster[2817]["tFunction"],IronGateMainTask_JiSiMonsterDied)


--魔族将军 阶段1 
tMonster[2818] = tMonster[2818] or {}
tMonster[2818]["tFunction"] = tMonster[2818]["tFunction"] or {}
table.insert(tMonster[2818]["tFunction"],IronGateMainTask_GeneralOneMonsterDied)

--魔族将军 阶段2
tMonster[2823] = tMonster[2823] or {}
tMonster[2823]["tFunction"] = tMonster[2823]["tFunction"] or {}
table.insert(tMonster[2823]["tFunction"],IronGateMainTask_GeneralMonsterDied)

-----------------------------------上线触发-----------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,IronGateMainTask_Online)