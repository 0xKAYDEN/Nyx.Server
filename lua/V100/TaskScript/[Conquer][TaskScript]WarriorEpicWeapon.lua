------------------------------------------------------------------------------
--Name:		[征服][任务脚本]战士史诗武器
--Purpose:	战士史诗武器任务制作
--Creator: 	郑宗胜
--Created:	2016/04/19
------------------------------------------------------------------------------
-- 命名前缀
-- WarriorEpicWeapon_

-- 任务ID	任务名字
-- 3678	威名震千古
-- 3679	神兵匣中藏
-- 3695	神兵匣中藏(过渡)
-- 3680	奇阵护神山
-- 3681	石台遇凶险
-- 3682	除魔正本心
-- 3683	衣钵终可承

--logid : 18000116
--luaini : 21013

------------------------------

--------------------------------------数据配置----------------------------------
--常量
local tWarriorEpicWeapon_Constant = {}
	tWarriorEpicWeapon_Constant["AcceptTaskTime"]="2016-09-08 00:00 2016-10-08 23:59"
	tWarriorEpicWeapon_Constant["OnlineCartoon"]=1007 --上线触发的漫画
	--战士职业编号范围
	tWarriorEpicWeapon_Constant["WarriorProMin"] = 20
	tWarriorEpicWeapon_Constant["WarriorProMax"] = 26
	
	tWarriorEpicWeapon_Constant["Level"] = 40
	tWarriorEpicWeapon_Constant["Metempsychosis"] = 0
	
	--副本标志(index=3-6，同一个副本地图，但是创建的npc不一样)
	tWarriorEpicWeapon_Constant["Instance"] ={54,55,56,56,56,56}
	
	--副本中动态npc
	tWarriorEpicWeapon_Constant["DynaNpc"]={}
	--地图2层动态npc
	tWarriorEpicWeapon_Constant["DynaNpc"][2]={}
	tWarriorEpicWeapon_Constant["DynaNpc"][2]["Lookface"]=41337
	tWarriorEpicWeapon_Constant["DynaNpc"][2]["Task0"]=97278128
	tWarriorEpicWeapon_Constant["DynaNpc"][2]["PosX"] = 51
	tWarriorEpicWeapon_Constant["DynaNpc"][2]["PosY"] = 43
	
	--地图3层动态npc
	tWarriorEpicWeapon_Constant["DynaNpc"][4]={} --男性心魔
	tWarriorEpicWeapon_Constant["DynaNpc"][4]["Lookface"]=41347
	tWarriorEpicWeapon_Constant["DynaNpc"][4]["Task0"]=97278129
	tWarriorEpicWeapon_Constant["DynaNpc"][4]["PosX"] = 49
	tWarriorEpicWeapon_Constant["DynaNpc"][4]["PosY"] = 47

	tWarriorEpicWeapon_Constant["DynaNpc"][5]={} --女性心魔
	tWarriorEpicWeapon_Constant["DynaNpc"][5]["Lookface"]=57027
	tWarriorEpicWeapon_Constant["DynaNpc"][5]["Task0"]=97278130
	tWarriorEpicWeapon_Constant["DynaNpc"][5]["PosX"] = 49
	tWarriorEpicWeapon_Constant["DynaNpc"][5]["PosY"] = 47
	
	tWarriorEpicWeapon_Constant["DynaNpc"][6]={} --上古战神
	tWarriorEpicWeapon_Constant["DynaNpc"][6]["Lookface"]=41367
	tWarriorEpicWeapon_Constant["DynaNpc"][6]["Task0"]=97278652
	tWarriorEpicWeapon_Constant["DynaNpc"][6]["PosX"] = 39
	tWarriorEpicWeapon_Constant["DynaNpc"][6]["PosY"] = 44

	
	tWarriorEpicWeapon_Constant["DynaMonster"]={}
	--地图2层动态怪物
	tWarriorEpicWeapon_Constant["DynaMonster"][2]={}
	tWarriorEpicWeapon_Constant["DynaMonster"][2]["MonsterId"]={2769}
	tWarriorEpicWeapon_Constant["DynaMonster"][2]["GenId"] = {18930}
	tWarriorEpicWeapon_Constant["DynaMonster"][2]["NeedTime"]=30

	--地图4层动态怪物
	tWarriorEpicWeapon_Constant["DynaMonster"][4]={}
	tWarriorEpicWeapon_Constant["DynaMonster"][4]["MonsterId"]={2770,2771,2772}
	tWarriorEpicWeapon_Constant["DynaMonster"][4]["GenId"] = {18931,18932,18933}
	
	tWarriorEpicWeapon_Constant["DynaMonster"][5]={}
	tWarriorEpicWeapon_Constant["DynaMonster"][5]["MonsterId"]={2770,2771,2772}
	tWarriorEpicWeapon_Constant["DynaMonster"][5]["GenId"] = {18931,18932,18933}
	
--玩家回到潇湘战神的位置
local tWarriorEpicWeapon_UserPosition = {}
	tWarriorEpicWeapon_UserPosition["MapId"] = 1004
	tWarriorEpicWeapon_UserPosition["NotGiftMapId"] = 10386
	tWarriorEpicWeapon_UserPosition["PosX"] = 38
	tWarriorEpicWeapon_UserPosition["PosY"] = 64

	--陷阱的位置
local tWarriorEpicWeapon_TrapPosition={}
	tWarriorEpicWeapon_TrapPosition["MapId"] = 10012
	tWarriorEpicWeapon_TrapPosition["PosX"] = 21
	tWarriorEpicWeapon_TrapPosition["PosY"] = 16
	
--NPC的id
local tWarriorEpicWeapon_Npc= {}
	tWarriorEpicWeapon_Npc["ZhanShen"] = 10001 --潇湘战神
	tWarriorEpicWeapon_Npc["ShangJiaoShiZhu"] = 19255 --山脚石柱
	tWarriorEpicWeapon_Npc["FengYinShiZhu"] = 19256 -- 封印石柱
	tWarriorEpicWeapon_Npc["XinMo"] = {}
	tWarriorEpicWeapon_Npc["XinMo"][1]=19257 --男性心魔
	tWarriorEpicWeapon_Npc["XinMo"][2]=19258 --女性心魔
	tWarriorEpicWeapon_Npc["ShangGuZhanShen"]=19259 --上古战神
	
--记录玩家是否在战士翻身第一个月内上线
local tWarriorEpicWeapon_Stc={}
	tWarriorEpicWeapon_Stc["EventType"]=147
	tWarriorEpicWeapon_Stc["DataType"]=14
	
---接任务和交任务相关配置
local tWarriorEpicWeapon_Task = {}
	--npcid = 10001 ，潇湘战神
	tWarriorEpicWeapon_Task[10001] = {}
	tWarriorEpicWeapon_Task[10001]["TaskId"] = 3678 --任务1：威名震千古
	tWarriorEpicWeapon_Task[10001]["PostTaskId"] = 3679 --后续任务
	tWarriorEpicWeapon_Task[10001]["PostTaskId2"] = 3695 --后续任务2
	tWarriorEpicWeapon_Task[10001]["PostNPC"] = 19253 --触发的npc,石台
	tWarriorEpicWeapon_Task[10001]["Cartoon"] = 1005-- 完成任务，播放动画
	tWarriorEpicWeapon_Task[10001]["FindNpcId"] = 10001 --40级就职礼包点击，寻路
	
	--npcid = 19253 ，石台 （地图1层）
	tWarriorEpicWeapon_Task[19253] = {}
	tWarriorEpicWeapon_Task[19253]["TaskId"] = 3695  --任务2：神兵匣中藏
	tWarriorEpicWeapon_Task[19253]["PostTaskId"] = 3680 --后续任务
	tWarriorEpicWeapon_Task[19253]["FindNpcId"] = 19255 --后续任务的npc : 山脚石柱 
	tWarriorEpicWeapon_Task[19253]["Cartoon"] = 1006
	
	
	--npcid = 19254 ，石台 （地图3层）
	tWarriorEpicWeapon_Task[19254] = {} 
	tWarriorEpicWeapon_Task[19254]["TaskId"] = 3681 --任务4：石台遇凶险
	tWarriorEpicWeapon_Task[19254]["PostTaskId"] = 3682
	
	
	--npcid=19255，山脚石柱
	tWarriorEpicWeapon_Task[19255] = {}
	tWarriorEpicWeapon_Task[19255]["AllTaskId"] = {3680,3681,3682,3683}
	tWarriorEpicWeapon_Task[19255]["AllFloor"]={2,3,{4,5},6}
	
	
	--npcid=19256，封印石柱 
	tWarriorEpicWeapon_Task[19256] = {}
	tWarriorEpicWeapon_Task[19256]["TaskId"] = 3680 --任务3 ：奇阵护神山
	tWarriorEpicWeapon_Task[19256]["PostTaskId"] = 3681
	tWarriorEpicWeapon_Task[19256]["Floor"] = 2
	tWarriorEpicWeapon_Task[19256]["Link"]="1-1" --未完成任务的链接
	tWarriorEpicWeapon_Task[19256]["CompleteLink"]="1-2" --完成任务的链接
	tWarriorEpicWeapon_Task[19256]["ChgMapId"] = 10012 --完成任务后，切换地图（原始寻路到切屏点）
	tWarriorEpicWeapon_Task[19256]["ChgPosX"]=36
	tWarriorEpicWeapon_Task[19256]["ChgPosY"]=35
	
	--npcid = 19257,心魔NPC，男
	tWarriorEpicWeapon_Task[19257] = {}
	tWarriorEpicWeapon_Task[19257]["TaskId"] = 3682
	tWarriorEpicWeapon_Task[19257]["PostTaskId"] = 3683
	tWarriorEpicWeapon_Task[19257]["Floor"] = 4
	tWarriorEpicWeapon_Task[19257]["Link"]="1-1"
	
	--npcid = 19258,心魔NPC，女
	tWarriorEpicWeapon_Task[19258] = {}
	tWarriorEpicWeapon_Task[19258]["TaskId"] = 3682
	tWarriorEpicWeapon_Task[19258]["PostTaskId"] = 3683
	tWarriorEpicWeapon_Task[19258]["Floor"] = 5
	tWarriorEpicWeapon_Task[19258]["Link"]="1-1"
	
	--npcid = 19259,上古战神NPC
	tWarriorEpicWeapon_Task[19259] = {}
	tWarriorEpicWeapon_Task[19259]["TaskId"] = 3683
	tWarriorEpicWeapon_Task[19259]["Floor"] = 6
	tWarriorEpicWeapon_Task[19259]["Link"]="1-1"
	tWarriorEpicWeapon_Task[19259]["CompleteLink"]="1-2"
	tWarriorEpicWeapon_Task[19259]["NeedSpace"] = 2
	tWarriorEpicWeapon_Task[19259]["ChgMapId"] = 1002 --完成任务后，玩家离开地图后的坐标
	tWarriorEpicWeapon_Task[19259]["ChgPosX"] = 410
	tWarriorEpicWeapon_Task[19259]["ChgPosY"] = 354
	
	
	--- 物品对应的taskId
-- local WarriorEpicWeapon_Item = {}
	-- --记忆玉简
	-- WarriorEpicWeapon_Item[3200206] = {} 
	-- WarriorEpicWeapon_Item[3200206]["TaskId"] = 3679 --任务2
	-- WarriorEpicWeapon_Item[3200206]["PostTaskId"] = 3695
	-- WarriorEpicWeapon_Item[3200206]["NpcId"] = 19253 --触发的npc,石台
	
	
--奖励配置
local tWarriorEpicWeapon_Reward={}
	tWarriorEpicWeapon_Reward[10001]={}
	tWarriorEpicWeapon_Reward[10001]["RewardItem"]={}
	tWarriorEpicWeapon_Reward[10001]["RewardItem"][1] = {}
	tWarriorEpicWeapon_Reward[10001]["RewardItem"][1]["Id"] = 3200206 --记忆玉简
	tWarriorEpicWeapon_Reward[10001]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorEpicWeapon_Reward[10001]["RewardEffect"] = {}
	tWarriorEpicWeapon_Reward[10001]["RewardEffect"]["Effect"] = "MBStandard"
	tWarriorEpicWeapon_Reward[10001]["LogId"] = 18000116
	tWarriorEpicWeapon_Reward[10001]["LogStep"] = 1
	tWarriorEpicWeapon_Reward[10001]["Talk"] =tWarriorEpicWeapon_Text[3200206]["AwardUserTalk"]
	
	
	tWarriorEpicWeapon_Reward[19259]={}
	tWarriorEpicWeapon_Reward[19259]["RewardItem"]={}
	tWarriorEpicWeapon_Reward[19259]["RewardItem"][1] = {}
	tWarriorEpicWeapon_Reward[19259]["RewardItem"][1]["Id"] = 624078 --获得的物品，2把40级【精品史诗武器】
	tWarriorEpicWeapon_Reward[19259]["RewardItem"][1]["Attr"] = "0 2 3"
	tWarriorEpicWeapon_Reward[19259]["LogId"] = 18000116
	tWarriorEpicWeapon_Reward[19259]["Talk"] =tWarriorEpicWeapon_Text["AwardWeapon"]
	
	--70级就职礼包
	tWarriorEpicWeapon_Reward[3005164]={}
	tWarriorEpicWeapon_Reward[3005164][1]={} --选第一项
	tWarriorEpicWeapon_Reward[3005164][1]["RewardItem"]={}
	tWarriorEpicWeapon_Reward[3005164][1]["RewardItem"][1]={}
	tWarriorEpicWeapon_Reward[3005164][1]["RewardItem"][1]["Id"]=561139 --70级极品 镇铁棍
	tWarriorEpicWeapon_Reward[3005164][1]["RewardItem"][1]["Attr"]="0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tWarriorEpicWeapon_Reward[3005164][1]["Log"]="0,0,3005164,1,10002354,2,561139,1"
	tWarriorEpicWeapon_Reward[3005164][1]["Talk"] =tWarriorEpicWeapon_Text[3005164][1]
	tWarriorEpicWeapon_Reward[3005164][1]["DeleteItem"]={}
	tWarriorEpicWeapon_Reward[3005164][1]["DeleteItem"][1]={}
	tWarriorEpicWeapon_Reward[3005164][1]["DeleteItem"][1]["Id"] = 3005164
	tWarriorEpicWeapon_Reward[3005164][1]["DeleteItem"][1]["Attr"] = "0 1"
	
	tWarriorEpicWeapon_Reward[3005164][2]={} --选第二项
	tWarriorEpicWeapon_Reward[3005164][2]["RewardItem"]={}
	tWarriorEpicWeapon_Reward[3005164][2]["RewardItem"][1]={}
	tWarriorEpicWeapon_Reward[3005164][2]["RewardItem"][1]["Id"]=624139 --70级 极品史诗武器
	tWarriorEpicWeapon_Reward[3005164][2]["RewardItem"][1]["Attr"]="0 1 3"
	tWarriorEpicWeapon_Reward[3005164][2]["Log"]="0,0,3005164,1,18000116,2,624139,1" 
	tWarriorEpicWeapon_Reward[3005164][2]["Talk"] =tWarriorEpicWeapon_Text[3005164][2]
	tWarriorEpicWeapon_Reward[3005164][2]["DeleteItem"]={}
	tWarriorEpicWeapon_Reward[3005164][2]["DeleteItem"][1]={}
	tWarriorEpicWeapon_Reward[3005164][2]["DeleteItem"][1]["Id"] = 3005164
	tWarriorEpicWeapon_Reward[3005164][2]["DeleteItem"][1]["Attr"] = "0 1"
	
	--100级就职礼包
	tWarriorEpicWeapon_Reward[3005167] = {}
	tWarriorEpicWeapon_Reward[3005167]["Space"]  =1
	tWarriorEpicWeapon_Reward[3005167]["RewardItem"]={}
	tWarriorEpicWeapon_Reward[3005167]["RewardItem"][1]={}
	tWarriorEpicWeapon_Reward[3005167]["RewardItem"][1]["Id"]=700011 --龙恨
	tWarriorEpicWeapon_Reward[3005167]["RewardItem"][1]["Attr"]="0 1"
	tWarriorEpicWeapon_Reward[3005167]["RewardItem"][2]={}
	tWarriorEpicWeapon_Reward[3005167]["RewardItem"][2]["Id"]=624199  --100级 1D  极品史诗武器
	tWarriorEpicWeapon_Reward[3005167]["RewardItem"][2]["Attr"]="0 1 3"
	tWarriorEpicWeapon_Reward[3005167]["Log"]="0,0,3005167,1,18000116,2,624199[700011],1[1]"
	tWarriorEpicWeapon_Reward[3005167]["Talk"] =tWarriorEpicWeapon_Text[3005167]["NeverMete"][2]
	tWarriorEpicWeapon_Reward[3005167]["DeleteItem"]={}
	tWarriorEpicWeapon_Reward[3005167]["DeleteItem"][1]={}
	tWarriorEpicWeapon_Reward[3005167]["DeleteItem"][1]["Id"] = 3005167
	tWarriorEpicWeapon_Reward[3005167]["DeleteItem"][1]["Attr"] = "0 1"
	
	
	-- tWarriorEpicWeapon_Reward[3004944] = {}
	
	-- --未转世
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"]={}
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"]["Space"] = 1 --背包空间
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]={} --选第一项
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["RewardItem"]={}
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["RewardItem"][1]={}
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["RewardItem"][1]["Id"]=561199 --100级 1D 极品 熟铜棍
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["RewardItem"][1]["Attr"]="0 0 3 0 0 0 0 0 0 0 0 255 0 0 0 0 0 0 0 3"
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["RewardItem"][2]={}
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["RewardItem"][2]["Id"]=700031 --普通青虹宝石
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["RewardItem"][2]["Attr"]="0 1"
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["Log"]="0,0,3004944,1,10002354,2,561199[700031],1[1]"
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["Talk"] =tWarriorEpicWeapon_Text[3004944]["NeverMete"][1]
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["DeleteItem"]={}
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["DeleteItem"][1]={}
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["DeleteItem"][1]["Id"] = 3004944
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][1]["DeleteItem"][1]["Attr"] = "0 1"
	
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]={} --选第二项
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["RewardItem"]={}
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["RewardItem"][1]={}
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["RewardItem"][1]["Id"]=624199 --100级 1D  极品史诗武器
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["RewardItem"][1]["Attr"]="0 1 3"
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["RewardItem"][2]={}
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["RewardItem"][2]["Id"]=700031 --普通青虹宝石
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["RewardItem"][2]["Attr"]="0 1"
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["Log"]="0,0,3004944,1,18000116,2,624199[700031],1[1]"
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["Talk"] =tWarriorEpicWeapon_Text[3004944]["NeverMete"][2]
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["DeleteItem"]={}
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["DeleteItem"][1]={}
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["DeleteItem"][1]["Id"] = 3004944
	-- tWarriorEpicWeapon_Reward[3004944]["NeverMete"][2]["DeleteItem"][1]["Attr"] = "0 1"
	
	--转世
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"]["Space"] = 2 --背包空间
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]={} --选第一项
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["RewardItem"]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["RewardItem"][1]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["RewardItem"][1]["Id"]=561199 --100级 1D 极品 熟铜棍
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["RewardItem"][1]["Attr"]="0 0 3 0 0 0 0 0 0 0 0 255 0 0 0 0 0 0 0 3"
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["RewardItem"][2]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["RewardItem"][2]["Id"]=700031 --普通青虹宝石
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["RewardItem"][2]["Attr"]="0 1"
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["RewardItem"][3]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["RewardItem"][3]["Id"]=131087 --额外获得 玄铁铠
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["RewardItem"][3]["Attr"]="0 0 0 0 0 0 0 0 0 0 0 255"
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["Log"]="0,0,3004944,1,10002354,2,561199[700031][131087],1[1][1]"
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["Talk"] =tWarriorEpicWeapon_Text[3004944]["Mete"][1]
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["DeleteItem"]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["DeleteItem"][1]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["DeleteItem"][1]["Id"] = 3004944
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][1]["DeleteItem"][1]["Attr"] = "0 1"
	
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]={} --选第二项
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["RewardItem"]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["RewardItem"][1]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["RewardItem"][1]["Id"]=624199 --100级 1D  极品史诗武器
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["RewardItem"][1]["Attr"]="0 1 3"
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["RewardItem"][2]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["RewardItem"][2]["Id"]=700031 --普通青虹宝石
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["RewardItem"][2]["Attr"]="0 1"
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["RewardItem"][3]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["RewardItem"][3]["Id"]=131087 --额外获得 玄铁铠
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["RewardItem"][3]["Attr"]="0 0 0 0 0 0 0 0 0 0 0 255"
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["Log"]="0,0,3004944,1,18000116,2,624199[700031][131087],1[1][1]" 
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["Talk"] =tWarriorEpicWeapon_Text[3004944]["Mete"][2]
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["DeleteItem"]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["DeleteItem"][1]={}
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["DeleteItem"][1]["Id"] = 3004944
	-- tWarriorEpicWeapon_Reward[3004944]["Mete"][2]["DeleteItem"][1]["Attr"] = "0 1"
	
	
	
-----------------------------------------------------------------------逻辑---------------------------------------------------------------
---判断是否是战士职业玩家，返回true--是，false--否
function WarriorEpicWeapon_IsWarriorProfession()
	local nUserPro = Get_UserProfession()
	local nWarriorProMin = tWarriorEpicWeapon_Constant["WarriorProMin"]
	local nWarriorProMax = tWarriorEpicWeapon_Constant["WarriorProMax"]
	if nUserPro >= nWarriorProMin and nUserPro <= nWarriorProMax then
		return true
	else
		return false
	end
end

--玩家等级判断
function WarriorEpicWeapon_LevelJudgement()
	local nLevel = tWarriorEpicWeapon_Constant["Level"]
	local nMete = tWarriorEpicWeapon_Constant["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true --等级满足
	else
		return false
	end
end

--潇湘战神的对白响应
function WarriorEpicWeapon_ZhanShenRespon()
	local nNpcId = tWarriorEpicWeapon_Npc["ZhanShen"]
	local nTaskId = tWarriorEpicWeapon_Task[nNpcId]["TaskId"]
	-- local nPostTaskId = tWarriorEpicWeapon_Task[nNpcId]["PostTaskId"]
	local nPostTaskId2 = tWarriorEpicWeapon_Task[nNpcId]["PostTaskId2"]
	if not WarriorEpicWeapon_IsWarriorProfession() then
		if not Task_ChkTaskDetail(nTaskId) then
				return
		end
		--非战士职业,nTaskId,"CompleteFlag","==",0,才会接到这边
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	else
		--战士职业,没有任务
		if not Task_ChkTaskDetail(nTaskId) then
			--等级不足
			if not WarriorEpicWeapon_LevelJudgement() then
				LinkNpcGossipFunc_New(nNpcId,"3-1")
				return
			else
				if not Task_AddTaskDetail(nTaskId) then
					return
				end
			end
		end
		
		if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0) then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
		elseif not Task_ChkTaskDetail(nPostTaskId2) or not Task_ChkTaskDetailValue(nPostTaskId2,"CompleteFlag",">=",1) then
			LinkNpcGossipFunc_New(nNpcId,"2-3") --未完成了副本1中的任务
		-- elseif Task_ChkTaskDetailValue(nPostTaskId,"CompleteFlag","==",0) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
			-- LinkNpcGossipFunc_New(nNpcId,"2-4") --补领“记忆玉简”道具
		end
		
		
	end
	
end


--山脚石柱的响应
function WarriorEpicWeapon_ShangJiaoShiZhuRespon()
	local nNpcId = tWarriorEpicWeapon_Npc["ShangJiaoShiZhu"]
	local tAllTaskId = tWarriorEpicWeapon_Task[nNpcId]["AllTaskId"]
	local nCompleteTaskId = tAllTaskId[4] --最终的任务id
	
	if WarriorEpicWeapon_IsWarriorProfession() then
		--战士职业
		if Task_ChkTaskDetail(nCompleteTaskId) and Task_ChkTaskDetailValue(nCompleteTaskId,"CompleteFlag",">=",1) then 
			LinkNpcGossipFunc_New(nNpcId,"2-1") --完成全部任务
		else
			local tAllFloor =tWarriorEpicWeapon_Task[nNpcId]["AllFloor"]
			for i,v in pairs(tAllTaskId) do
				if Task_ChkTaskDetail(v) and Task_ChkTaskDetailValue(v,"CompleteFlag","==",0) then 
					local nSex = Get_UserSex()
					local nCurFloor = (type(tAllFloor[i]) =="table" and tAllFloor[i][nSex]) or tAllFloor[i]
					LinkNpcGossipFunc_New(nNpcId,"1-"..nCurFloor) --未完成任务，进入指定层副本
					return
				end
			end
			LinkNpcGossipFunc_New(nNpcId,"1-1") --闲聊
			
		end
	else
		--非战士职业对白
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
end


--动态npc的响应
function WarriorEpicWeapon_NpcGuard(nNpcId)
	local nTaskId = tWarriorEpicWeapon_Task[nNpcId]["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0) then
		--任务未完成的对白
		LinkNpcGossipFunc_New(nNpcId,tWarriorEpicWeapon_Task[nNpcId]["Link"])
		
	elseif Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		--任务完成的对白
		if tWarriorEpicWeapon_Task[nNpcId]["CompleteLink"] ~= nil then
			LinkNpcGossipFunc_New(nNpcId,tWarriorEpicWeapon_Task[nNpcId]["CompleteLink"])
		end
	end
	
end



---完成任务1 :威名震千古
function WarriorEpicWeapon_HandOverTask1(nNpcId)
	local nTaskId = tWarriorEpicWeapon_Task[nNpcId]["TaskId"]
	local nPostTaskId = tWarriorEpicWeapon_Task[nNpcId]["PostTaskId"]
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	--data1 置1，同时完成任务
	Task_SetTaskDetailData1(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	
	User_EffectAdd("self","angelwing")
	
	--战士职业的第二层对白:接取第二个任务
	if WarriorEpicWeapon_IsWarriorProfession() then
		--设置接取任务2:神兵匣中藏
		if not Task_ChkTaskDetail(nPostTaskId) then
			if not Task_AddTaskDetail(nPostTaskId) then
				return
			end
		end
		LinkNpcGossipFunc_New(nNpcId,"2-3")
	end
	
	--播放动画
	User_NoviceTeaching(tWarriorEpicWeapon_Task[nNpcId]["Cartoon"])
end


---完成任务2 ：神兵匣中藏,同时接取任务任务3
function WarriorEpicWeapon_HandOverTask2(nNpcId)
	local nTaskId = tWarriorEpicWeapon_Task[nNpcId]["TaskId"]
	local nPostTaskId = tWarriorEpicWeapon_Task[nNpcId]["PostTaskId"]
	
	if not Task_ChkTaskDetail(nTaskId) or not WarriorEpicWeapon_IsWarriorProfession() then
		return
	end
	
	--完成任务:神兵匣中藏
	Task_SetTaskDetailData1(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	User_EffectAdd("self","angelwing")
	
	--接取任务3
	if not Task_AddTaskDetail(nPostTaskId) then
		return
	end
	
	--将玩家传送到潇湘战神旁边位置
	local nMapId = tWarriorEpicWeapon_UserPosition["MapId"]
	-- 判断激情服
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tWarriorEpicWeapon_UserPosition["NotGiftMapId"]
	end
	local nPosX =tWarriorEpicWeapon_UserPosition["PosX"]
	local nPosY =tWarriorEpicWeapon_UserPosition["PosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5)
	
	User_TalkChannel2005(tWarriorEpicWeapon_Text["ComeBack"])
	
	--跳到对白
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	
end


---自动寻路
function WarriorEpicWeapon_FindPath(nNpcId)
	local nPostNpcId = tWarriorEpicWeapon_Task[nNpcId]["FindNpcId"]  --寻路的npc
	local nMapId = Get_NpcMapID(nPostNpcId)
	local nPosX =Get_NpcPositionX(nPostNpcId)
	local nPosY =Get_NpcPositionY(nPostNpcId)
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nPostNpcId)
end


--- 传送
function WarriorEpicWeapon_ChgMap(nNpcId)
	local nMapId = tWarriorEpicWeapon_Task[nNpcId]["ChgMapId"]
	local nPosX =tWarriorEpicWeapon_Task[nNpcId]["ChgPosX"]
	local nPosY =tWarriorEpicWeapon_Task[nNpcId]["ChgPosY"]
	User_RecordPoint(nMapId,nPosX,nPosY)
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5)
	--进入地图的提示:针对中转地图，写死。。。
	if tWarriorEpicWeapon_Text[nNpcId]["EnterMap"] ~=nil then
		User_TalkChannel2005(tWarriorEpicWeapon_Text[nNpcId]["EnterMap"])
		Sys_MsgBox(tWarriorEpicWeapon_Text[nNpcId]["EnterMap"],string.format("Sys_GotoSomeWhere</N>%d</N>%d</N>%d",tWarriorEpicWeapon_TrapPosition["PosX"],tWarriorEpicWeapon_TrapPosition["PosY"] ,tWarriorEpicWeapon_TrapPosition["MapId"]))
	end
end


--进入副本，nCount 副本标志的索引
function WarriorEpicWeapon_Enter(nFloor)
	--将玩家传送到指定层副本
	local nInstance = tWarriorEpicWeapon_Constant["Instance"][nFloor]
	User_EnterInstance(nInstance)
	--进入副本地图的提示
	if tWarriorEpicWeapon_Text["Instance"][nFloor] ~= nil then
		User_TalkChannel2005(tWarriorEpicWeapon_Text["Instance"][nFloor])
		-- 弹窗自动寻路
		if tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]~= nil and tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]["PosX"]~=nil and tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]["PosY"]~=nil then
			local nPosX,nPosY = tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]["PosX"],tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]["PosY"]
			local nMapId = Get_UserMapId()
			Sys_MsgBox(tWarriorEpicWeapon_Text["Instance"][nFloor],string.format("Sys_GotoSomeWhere</N>%d</N>%d</N>%d",nPosX,nPosY,nMapId))
		end
	end
	
	local nUserId = Get_UserId()
	--删除怪物
	if tWarriorEpicWeapon_Constant["DynaMonster"][nFloor] ~= nil then
		WarriorEpicWeapon_DelDynaMonster(nFloor,nUserId)
	end
	
	--创建npc
	if tWarriorEpicWeapon_Constant["DynaNpc"][nFloor] ~= nil then
		WarriorEpicWeapon_CreateDynaNpc(nFloor,nUserId)
	end
	
end

-- 创建动态npc
function WarriorEpicWeapon_CreateDynaNpc(nFloor,nUserId)
	local sNpcName = tWarriorEpicWeapon_Text["NpcName"][nFloor]
	local nLookFace = tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]["Lookface"]
	local nUserMapId =Get_UserMapId(nUserId)
	local nCellx = tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]["PosX"]
	local nCelly = tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]["PosY"]
	local nTask0=tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]["Task0"]
	
	if Get_NpcCountByName(sNpcName,nUserId) == 0 then
		Npc_CreateDynaNpc(sNpcName,2,0,nLookFace,0,0,nUserMapId,nCellx,nCelly,0,0,0,nTask0)
	end
end

--删除动态npc
function WarriorEpicWeapon_DelDynaNpc(nFloor)
	local nUserMapId =Get_UserMapId()
	local sNpcName = tWarriorEpicWeapon_Text["NpcName"][nFloor]
	
	if Get_NpcCountByName(sNpcName) > 0 then
		return Npc_DelDynaNpc(nUserMapId,"name",sNpcName)
	end
end



---完成任务4，传送到地图4，自动接取任务5
function WarriorEpicWeapon_HandOverTask4(nNpcId)
	local nTaskId = tWarriorEpicWeapon_Task[nNpcId]["TaskId"]
	local nPostTaskId = tWarriorEpicWeapon_Task[nNpcId]["PostTaskId"]
	
	if not Task_ChkTaskDetail(nTaskId) or not WarriorEpicWeapon_IsWarriorProfession() then
		return
	end
	
		--data1 置1，完成任务
	Task_SetTaskDetailData1(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	User_EffectAdd("self","angelwing")
	
	--接受下一个任务
	if not Task_AddTaskDetail(nPostTaskId) then
		return
	end
	
	--传送到地图4
	local nSex = Get_UserSex()
	if nSex== 1 then --对应男性心魔npc
		WarriorEpicWeapon_Enter(4)
	else
		WarriorEpicWeapon_Enter(5)
	end
	
end


---使用“记忆玉简"
function WarriorEpicWeapon_AwardMemoryItem(nNpcId)
	local nPostTaskId = tWarriorEpicWeapon_Task[nNpcId]["PostTaskId"]
	local nPostTaskId2 = tWarriorEpicWeapon_Task[nNpcId]["PostTaskId2"]
	-- local nAwardItem = tWarriorEpicWeapon_Reward[nNpcId]["RewardItem"][1]["Id"] --记忆玉简
	
		--背包空间不足
	-- if not User_CheckLeftSpace(1) then
		-- User_TalkChannel2005(tWarriorEpicWeapon_Text[nAwardItem]["NoSpace"])
		-- return
	-- end
	
	if not WarriorEpicWeapon_IsWarriorProfession() then
		return
	end
	
	--设置接取任务2:神兵匣中藏
	if not Task_ChkTaskDetail(nPostTaskId) then
		if not Task_AddTaskDetail(nPostTaskId) then
			return
		end
	end
	
	--获得道具
	-- if not Item_ChkItem(nAwardItem) then
		-- RewardTemplate_Reward(tWarriorEpicWeapon_Reward[nNpcId])
	-- else
		-- --已经有了
		-- LinkNpcGossipFunc_New(nNpcId,"2-5")
	-- end
	
		--data1 置1，改变任务面板显示
	if Task_ChkTaskDetailValue(nPostTaskId,"CompleteFlag","==",0) then
		Task_SetTaskDetailData1(nPostTaskId,1)
		Task_SetTaskDetailCompleteFlag(nPostTaskId,1)
	end
		
		--接下一个任务
		if not Task_ChkTaskDetail(nPostTaskId2) then
			if not Task_AddTaskDetail(nPostTaskId2) then
				return
			end
		end
		
		--切换地图,进入副本1
		WarriorEpicWeapon_Enter(1)
		
		User_TalkChannel2005(tWarriorEpicWeapon_Text["UseMemoryItem"])
		--链接到Npc对白
		LinkNpcGossipFunc_New(tWarriorEpicWeapon_Task[nNpcId]["PostNPC"],"3-1")
		
end


---使用“记忆玉简”
-- function WarriorEpicWeapon_UseMemoryItem(nItemId)
	-- local nTaskId = WarriorEpicWeapon_Item[nItemId]["TaskId"]
	-- local nPostTaskId = WarriorEpicWeapon_Item[nItemId]["PostTaskId"]
	-- local nNpcId = WarriorEpicWeapon_Item[nItemId]["NpcId"]
	
	-- if not Task_ChkTaskDetail(nTaskId) or not WarriorEpicWeapon_IsWarriorProfession() then
		-- return
	-- end
	
	-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		
		-- --切换地图,进入副本1
		-- WarriorEpicWeapon_Enter(1)
		
		-- --data1 置1，改变任务面板显示
		-- Task_SetTaskDetailData1(nTaskId,1)
		-- Task_SetTaskDetailCompleteFlag(nTaskId,1)
		
		-- --借下一个任务
		-- if not Task_AddTaskDetail(nPostTaskId) then
			-- return
		-- end
		
		-- User_TalkChannel2005(tWarriorEpicWeapon_Text["UseMemoryItem"])
		-- --链接到Npc对白
		-- LinkNpcGossipFunc_New(nNpcId,"3-1")
	-- end
	
-- end


---破解法阵
function WarriorEpicWeapon_DecodeBattle(nNpcId)
	local nUserMapId =Get_UserMapId()
	local nFloor = tWarriorEpicWeapon_Task[nNpcId]["Floor"]
	local nPosX = tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]["PosX"]
	local nPosY = tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]["PosY"]
	
	local nGenId = tWarriorEpicWeapon_Constant["DynaMonster"][nFloor]["GenId"][1]
	local nMonsterId = tWarriorEpicWeapon_Constant["DynaMonster"][nFloor]["MonsterId"][1]
	local nNeedTime = tWarriorEpicWeapon_Constant["DynaMonster"][nFloor]["NeedTime"]--需要在30秒内击破石柱
	
	--删除npc
	if not WarriorEpicWeapon_DelDynaNpc(nFloor) then
		return
	end
	
	--创建怪物
	if Get_SysTempData(1,nUserMapId,nMonsterId) == 0 then
		-- 添加怪物计数
		Sys_SetTempData(1,nUserMapId,nMonsterId,1)
		Monster_AddMonster(nUserMapId,nPosX-3,nPosY,nGenId,nMonsterId)
	end
	
	--倒计时
	User_SetTimer(nNeedTime,string.format("WarriorEpicWeapon_TimeOver</N>%d",nNpcId),0)
end

---倒计时时间到
function WarriorEpicWeapon_TimeOver(nNpcId,nUserId)
	local nFloor = tWarriorEpicWeapon_Task[nNpcId]["Floor"]
	local nTaskId = tWarriorEpicWeapon_Task[nNpcId]["TaskId"]
	--任务未完成
	if Task_ChkTaskDetail(nTaskId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0,nUserId) then
		--存在怪物，则删除
		WarriorEpicWeapon_DelDynaMonster(nFloor,nUserId)
	
		--npc不在，则创建
		WarriorEpicWeapon_CreateDynaNpc(nFloor,nUserId)
	end
	
end

--删除怪物
function WarriorEpicWeapon_DelDynaMonster(nFloor,nUserId)
	local nUserMapId =Get_UserMapId(nUserId)
	local tMonsterId = tWarriorEpicWeapon_Constant["DynaMonster"][nFloor]["MonsterId"]
	local tGenId =tWarriorEpicWeapon_Constant["DynaMonster"][nFloor]["GenId"]
	
	for i,v in pairs(tMonsterId) do
		local nMonsterNum = Get_SysTempData(1,nUserMapId,v) --怪物数量
		if nMonsterNum >= 1 then
			Sys_SetTempData(1,nUserMapId,v,nMonsterNum-1)
			Monster_DelMonster(nUserMapId,v) 
		end
	end
	
end

---石柱 怪物死亡 
function WarriorEpicWeapon_StoneMonsterDied(nMonsterId)
	local nNpcId =tWarriorEpicWeapon_Npc["FengYinShiZhu"]
	local nTaskId = tWarriorEpicWeapon_Task[nNpcId]["TaskId"]
	local nPostTaskId = tWarriorEpicWeapon_Task[nNpcId]["PostTaskId"]
	local nFloor = tWarriorEpicWeapon_Task[nNpcId]["Floor"]
	local nUserId = Get_UserId()
	
	--减少怪物数量
	local nUserMapId = Get_UserMapId()
	local nMonsterNum = Get_SysTempData(1,nUserMapId,nMonsterId)
	Sys_SetTempData(1,nUserMapId,nMonsterId,0)
	
	if not Task_ChkTaskDetail(nTaskId) or not WarriorEpicWeapon_IsWarriorProfession() then
		return
	end
	
	--创建动态npc
	WarriorEpicWeapon_CreateDynaNpc(nFloor,nUserId)
	
	--data1 置1，完成任务3
	Task_SetTaskDetailData1(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	User_EffectAdd("self","angelwing")
	
	--自动接取任务4
	if not Task_AddTaskDetail(nPostTaskId) then
		return
	end
	
	--105提示，点击确定后，切换到中转地图
	Sys_MsgBox(tWarriorEpicWeapon_Text["CompSysMsg"],string.format("</F>WarriorEpicWeapon_ChgMap</N>%d",nNpcId))
	
end


---挑战心魔
function WarriorEpicWeapon_ChallengeHeartMonster()
	local nSex = Get_UserSex()
	local nNpcId=tWarriorEpicWeapon_Npc["XinMo"][nSex]
	local nFloor = tWarriorEpicWeapon_Task[nNpcId]["Floor"]
	
	--删除npc
	if not WarriorEpicWeapon_DelDynaNpc(nFloor) then
		return
	end
	
	local nUserMapId=Get_UserMapId()
	local nUserMete = Get_UserMetempsychosis()
	local nPosX = tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]["PosX"]
	local nPosY = tWarriorEpicWeapon_Constant["DynaNpc"][nFloor]["PosY"]
	local nMonsterId
	local nGenId
	
	if nUserMete <= 1 then 
		nMonsterId= tWarriorEpicWeapon_Constant["DynaMonster"][nFloor]["MonsterId"][nUserMete+1]
		nGenId = tWarriorEpicWeapon_Constant["DynaMonster"][nFloor]["GenId"][nUserMete+1]
	else
		nMonsterId= tWarriorEpicWeapon_Constant["DynaMonster"][nFloor]["MonsterId"][3]
		nGenId  = tWarriorEpicWeapon_Constant["DynaMonster"][nFloor]["GenId"][3]
	end
	--根据玩家转世情况移入不同的心魔BOSS
	if Get_SysTempData(1,nUserMapId,nMonsterId) == 0 then
		-- 添加怪物计数
		Sys_SetTempData(1,nUserMapId,nMonsterId,1)
		Monster_AddMonster(nUserMapId,nPosX,nPosY,nGenId,nMonsterId)
		User_EffectAdd("self","Attack35r")
	end
	
end


---心魔BOSS死亡,nNpcId 心魔的id
function WarriorEpicWeapon_HeartMonsterDied(nMonsterId)
	local nSex = Get_UserSex()
	local nNpcId = tWarriorEpicWeapon_Npc["XinMo"][nSex]
	local nNextNpcId = tWarriorEpicWeapon_Npc["ShangGuZhanShen"]
	local nTaskId = tWarriorEpicWeapon_Task[nNpcId]["TaskId"]
	local nNextTaskId = tWarriorEpicWeapon_Task[nNpcId]["PostTaskId"]
	
	local nFloor = tWarriorEpicWeapon_Task[nNextNpcId]["Floor"]
	
		--减少怪物数量
	local nUserMapId = Get_UserMapId()
	local nMonsterNum = Get_SysTempData(1,nUserMapId,nMonsterId)
	Sys_SetTempData(1,nUserMapId,nMonsterId,0)
	
	if not Task_ChkTaskDetail(nTaskId) or not WarriorEpicWeapon_IsWarriorProfession() then
		return
	end
	
	--data1 置1，完成任务5
	Task_SetTaskDetailData1(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	User_EffectAdd("self","angelwing")
	
	--接受下一个任务
	if not Task_AddTaskDetail(nNextTaskId) then
		return
	end
	
	--在地图3移入上古战神NPC 
	WarriorEpicWeapon_CreateDynaNpc(nFloor)
	
	--与上古战神对话,改为不自动对话
	-- LinkNpcGossipFunc_New(nNextNpcId,"1-1")
end


---战士职业的玩家完成任务
function WarriorEpicWeapon_WarrioProCompTask(nNpcId)
	local nTaskId = tWarriorEpicWeapon_Task[nNpcId]["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId) or not WarriorEpicWeapon_IsWarriorProfession() then
		return
	end
	
	--背包空间不足对白提示
	if not User_CheckLeftSpace(tWarriorEpicWeapon_Task[nNpcId]["NeedSpace"]) then
		User_TalkChannel2005(tWarriorEpicWeapon_Text["NoSpace"])
		return
	end
	
	--已结领取
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		return
	end
	--完成任务6
	Task_SetTaskDetailData1(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	User_EffectAdd("self","angelwing")
	
	RewardTemplate_Reward(tWarriorEpicWeapon_Reward[nNpcId])
end

--完成全部任务离开地图
function WarriorEpicWeapon_Leave(nNpcId)
	--玩家切换地图
	WarriorEpicWeapon_ChgMap(nNpcId)
	
	--删除上古战神
	local nFloor = tWarriorEpicWeapon_Task[nNpcId]["Floor"] 
	WarriorEpicWeapon_DelDynaNpc(nFloor)
end



--使用就职礼包
function WarriorEpicWeapon_UsePack(nItemId)
	Sys_DialogTaskClear()
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--使用70级就职礼包--nItemId，选择物品--nOption
function tWarriorEpicWeapon_ChooseOf70Pack(nItemId,nOption)
	RewardTemplate_UseItem(tWarriorEpicWeapon_Reward[nItemId][nOption])
end

--使用100级就职礼包--nItemId，选择物品--nOption
-- function tWarriorEpicWeapon_ChooseOf100Pack(nItemId,nOption)
	-- local sIsMete = (Get_UserMetempsychosis() == 0 and "NeverMete") or "Mete" --是否转世
	
	-- if not User_CheckLeftSpace(tWarriorEpicWeapon_Reward[nItemId][sIsMete]["Space"]) then
		-- User_TalkChannel2005(tWarriorEpicWeapon_Text[nItemId]["NoSpace"])
		-- return
	-- end
	
	-- RewardTemplate_UseItem(tWarriorEpicWeapon_Reward[nItemId][sIsMete][nOption])
-- end

function WarriorEpicWeapon_ChooseOf100Pack(nItemId)

	if not User_CheckLeftSpace(tWarriorEpicWeapon_Reward[nItemId]["Space"]) then
		User_TalkChannel2005(tWarriorEpicWeapon_Text[nItemId]["NoSpace"])
		return
	end
	
	RewardTemplate_UseItem(tWarriorEpicWeapon_Reward[nItemId])
end

--陷阱触发
function WarriorEpicWeapon_TrapRespon()
	--进入副本3
	WarriorEpicWeapon_Enter(3)
end

--- 上线接任务
function WarriorEpicWeapon_Online()
	local nTaskId = 3678
	local sAccetpTaskTime = tWarriorEpicWeapon_Constant["AcceptTaskTime"]
	
	--战士翻身更新后一个月内，玩家首次上线时触发图片弹框，
	-- 展示一张战神崛起主题的图片，下方标上如何获取武器也就是提示去寻找哪个NPC
	local nEventType = tWarriorEpicWeapon_Stc["EventType"]
	local nDataType = tWarriorEpicWeapon_Stc["DataType"]
	if Sys_ChkFullTime(sAccetpTaskTime) and not Task_ChkStcValue(nEventType,nDataType,">=",1) then
		--打掩码
		Task_SetStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		
		--弹漫画
		User_NoviceTeaching(tWarriorEpicWeapon_Constant["OnlineCartoon"])
	end
	
	--第一个任务已经存在
	if Task_ChkTaskDetail(nTaskId) then
		return
	end

	--战士职业（编号：20~26）等级小于40级的不接取任务
	local nUserPro = Get_UserProfession()
	local nUserId = Get_UserId()
	if (nUserPro >= 20 and nUserPro <= 26) and (Get_UserLevel(nUserId) < 40) then
		return
	end
	
	--针对非战士职业,只在规定时间内，接取任务
	if not (nUserPro >= 20 and nUserPro <= 26) and not Sys_ChkFullTime(sAccetpTaskTime) then
		return
	end
	
	--自动接取任务1：威名震千古
	Task_AddTaskDetail(nTaskId)
end


-----------------------------------Npc模板配置-----------------------------------
---潇湘战神
tNpcFace[5000] = 8

tNpcGossip[10001] = tNpcGossip[10001] or DefaultNpc:new{}
tNpcGossip[10001]["OptionHidden"] = 1

--非战士职业的对白
tNpcGossip[10001]["Text1-1"] = {111,112,113}
tNpcGossip[10001]["Text111"] = tWarriorEpicWeapon_Text[10001]["Text111"]
tNpcGossip[10001]["Text112"] = tWarriorEpicWeapon_Text[10001]["Text112"]
tNpcGossip[10001]["Text113"] = tWarriorEpicWeapon_Text[10001]["Text113"]
tNpcGossip[10001]["tOption1-1"] = {1}
tNpcGossip[10001]["Option1"] = tWarriorEpicWeapon_Text[10001]["Option1"] --我对上古战神的故事很感兴趣
tNpcGossip[10001]["OptionPoint1"]="1-2"

tNpcGossip[10001]["Text1-2"] = {121,122}
tNpcGossip[10001]["Text121"] = tWarriorEpicWeapon_Text[10001]["Text121"]
tNpcGossip[10001]["Text122"] = tWarriorEpicWeapon_Text[10001]["Text122"]
tNpcGossip[10001]["tOption1-2"] = {2}
tNpcGossip[10001]["Option2"] = tWarriorEpicWeapon_Text[10001]["Option3"] --阅读古籍
tNpcGossip[10001]["OptionFunc2"] = "WarriorEpicWeapon_HandOverTask1</N>10001"


--战士职业玩家的对白
tNpcGossip[10001]["Text2-1"] = {211,212,213}
tNpcGossip[10001]["Text211"] = tWarriorEpicWeapon_Text[10001]["Text111"]
tNpcGossip[10001]["Text212"] = tWarriorEpicWeapon_Text[10001]["Text112"]
tNpcGossip[10001]["Text213"] = tWarriorEpicWeapon_Text[10001]["Text113"]
tNpcGossip[10001]["tOption2-1"] = {4}
tNpcGossip[10001]["Option4"] = tWarriorEpicWeapon_Text[10001]["Option2"] --听说你得到了一本古籍？
tNpcGossip[10001]["OptionPoint4"]="2-2"

tNpcGossip[10001]["Text2-2"] = {221,222,223}
tNpcGossip[10001]["Text221"] = tWarriorEpicWeapon_Text[10001]["Text221"]
tNpcGossip[10001]["Text222"] = tWarriorEpicWeapon_Text[10001]["Text222"]
tNpcGossip[10001]["Text223"] = tWarriorEpicWeapon_Text[10001]["Text223"]
tNpcGossip[10001]["tOption2-2"] = {5}
tNpcGossip[10001]["Option5"] = tWarriorEpicWeapon_Text[10001]["Option3"]
tNpcGossip[10001]["OptionFunc5"] = "WarriorEpicWeapon_HandOverTask1</N>10001"

--战士职业玩家的对白：接取任务2
tNpcGossip[10001]["Text2-3"] = {231,232}
tNpcGossip[10001]["Text231"] = tWarriorEpicWeapon_Text[10001]["Text231"]
tNpcGossip[10001]["Text232"] = tWarriorEpicWeapon_Text[10001]["Text232"]
tNpcGossip[10001]["tOption2-3"] = {6}
tNpcGossip[10001]["Option6"] = tWarriorEpicWeapon_Text[10001]["Option4"] --使用记忆玉简
tNpcGossip[10001]["OptionFunc6"] = "WarriorEpicWeapon_AwardMemoryItem</N>10001"

--战士职业玩家的对白：已结接取任务2 ，补领“记忆玉简”道具
-- tNpcGossip[10001]["Text2-4"] = {241}
-- tNpcGossip[10001]["Text241"] = tWarriorEpicWeapon_Text[10001]["Text241"]
-- tNpcGossip[10001]["tOption2-4"] = {7}
-- tNpcGossip[10001]["Option7"] = tWarriorEpicWeapon_Text[10001]["Option5"] --补领“记忆玉简”道具
-- tNpcGossip[10001]["OptionFunc7"] = "WarriorEpicWeapon_AwardMemoryItem</N>10001"

--已经有道具了
-- tNpcGossip[10001]["Text2-5"] = {251}
-- tNpcGossip[10001]["Text251"] = tWarriorEpicWeapon_Text[10001]["Text251"]
-- tNpcGossip[10001]["tOption2-5"] = {8}
-- tNpcGossip[10001]["Option8"] = tWarriorEpicWeapon_Text[10001]["Option6"]

--等级不足
tNpcGossip[10001]["Text3-1"] = {311}
tNpcGossip[10001]["Text311"] = tWarriorEpicWeapon_Text[10001]["Text311"]
tNpcGossip[10001]["tOption3-1"] = {9}
tNpcGossip[10001]["Option9"] = tWarriorEpicWeapon_Text[10001]["Option9"]



---石台（地图1层）
-- tNpcFace[4131] = 7
tNpcGossip[19253] = tNpcGossip[19253] or DefaultNpc:new{}
tNpcGossip[19253]["OptionHidden"] = 1

--交“神兵匣中藏”的对白
tNpcGossip[19253]["Text1-1"] = {111}
tNpcGossip[19253]["Text111"] = tWarriorEpicWeapon_Text[19253]["Text111"]
tNpcGossip[19253]["tOption1-1"] = {1}
tNpcGossip[19253]["Option1"] = tWarriorEpicWeapon_Text[19253]["Option1"] 
tNpcGossip[19253]["OptionFunc1"] = "WarriorEpicWeapon_HandOverTask2</N>19253"

--自动寻路到山脚石柱
tNpcGossip[19253]["Text2-1"] = {211}
tNpcGossip[19253]["Text211"] = tWarriorEpicWeapon_Text[19253]["Text211"]
tNpcGossip[19253]["tOption2-1"] = {2}
tNpcGossip[19253]["Option2"] = tWarriorEpicWeapon_Text[19253]["Option2"] --刚才发生了什么？
tNpcGossip[19253]["OptionPoint2"]="2-2"

tNpcGossip[19253]["Text2-2"] = {221,222}
tNpcGossip[19253]["Text221"] = tWarriorEpicWeapon_Text[19253]["Text221"]
tNpcGossip[19253]["Text222"] = tWarriorEpicWeapon_Text[19253]["Text222"]
tNpcGossip[19253]["tOption2-2"] = {4}
tNpcGossip[19253]["Option4"] = tWarriorEpicWeapon_Text[19253]["Option4"] --跟随指引前行
tNpcGossip[19253]["OptionFunc4"] = "WarriorEpicWeapon_FindPath</N>19253"

tNpcGossip[19253]["Text3-1"] = {311,312}
tNpcGossip[19253]["Text311"] = tWarriorEpicWeapon_Text[19253]["Text311"]
tNpcGossip[19253]["Text312"] = tWarriorEpicWeapon_Text[19253]["Text312"]
tNpcGossip[19253]["tOption3-1"] = {3}
tNpcGossip[19253]["Option3"] = tWarriorEpicWeapon_Text[19253]["Option3"] --究竟是怎么回事？
tNpcGossip[19253]["OptionFunc3"] = string.format("User_NoviceTeaching</N>%d",tWarriorEpicWeapon_Task[19253]["Cartoon"])

---石台（地图3层）
-- tNpcFace[4131] = 7
tNpcGossip[19254] = tNpcGossip[19254] or DefaultNpc:new{}
tNpcGossip[19254]["OptionHidden"] = 1

tNpcGossip[19254]["Text1-1"] = {111,112,113}
tNpcGossip[19254]["Text111"] = tWarriorEpicWeapon_Text[19254]["Text111"]
tNpcGossip[19254]["Text112"] = tWarriorEpicWeapon_Text[19254]["Text112"]
tNpcGossip[19254]["Text113"] = tWarriorEpicWeapon_Text[19254]["Text113"]
tNpcGossip[19254]["ChkFunc1-1"] = function ()
	local nTaskId = tWarriorEpicWeapon_Task[19254]["TaskId"]
	return Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",0)
end
tNpcGossip[19254]["tOption1-1"] = {1}
tNpcGossip[19254]["Option1"] = tWarriorEpicWeapon_Text[19254]["Option1"] -- 打开匣子
tNpcGossip[19254]["OptionPoint1"]="2-1"

--闲聊
tNpcGossip[19254]["Text1-2"] = {121,122}
tNpcGossip[19254]["Text121"] = tWarriorEpicWeapon_Text[19254]["Text121"]
tNpcGossip[19254]["Text122"] = tWarriorEpicWeapon_Text[19254]["Text122"]
tNpcGossip[19254]["tOption1-2"] = {3}
tNpcGossip[19254]["Option3"] = tWarriorEpicWeapon_Text[19254]["Option3"]

--交任务4
tNpcGossip[19254]["Text2-1"] = {211,212}
tNpcGossip[19254]["Text211"] = tWarriorEpicWeapon_Text[19254]["Text211"]
tNpcGossip[19254]["Text212"] = tWarriorEpicWeapon_Text[19254]["Text212"]
tNpcGossip[19254]["tOption2-1"] = {2}
tNpcGossip[19254]["Option2"] = tWarriorEpicWeapon_Text[19254]["Option2"]
tNpcGossip[19254]["OptionFunc2"] = "WarriorEpicWeapon_HandOverTask4</N>19254"


---山脚石柱
-- tNpcFace[4132] = 7
tNpcGossip[19255] = tNpcGossip[19255] or DefaultNpc:new{}
tNpcGossip[19255]["OptionHidden"] = 1

--闲聊
tNpcGossip[19255]["Text1-1"] = {111}
tNpcGossip[19255]["Text111"] = tWarriorEpicWeapon_Text[19255]["Text311"]
tNpcGossip[19255]["tOption1-1"] = {1}
tNpcGossip[19255]["Option1"] = tWarriorEpicWeapon_Text[19255]["Option4"] 

--任务未完成，进入指定副本
tNpcGossip[19255]["Text1-2"] = {121,122,123}
tNpcGossip[19255]["Text121"] = tWarriorEpicWeapon_Text[19255]["Text111"]
tNpcGossip[19255]["Text122"] = tWarriorEpicWeapon_Text[19255]["Text112"]
tNpcGossip[19255]["Text123"] = tWarriorEpicWeapon_Text[19255]["Text113"]
tNpcGossip[19255]["tOption1-2"] = {2}
tNpcGossip[19255]["Option2"] = tWarriorEpicWeapon_Text[19255]["Option1"] --上山，传送到地图2
tNpcGossip[19255]["OptionFunc2"] ="WarriorEpicWeapon_Enter</N>2"
-- tNpcGossip[19255]["Option3"] = tWarriorEpicWeapon_Text[19255]["Option2"] --过一会儿再说。

tNpcGossip[19255]["Text1-3"] = {131,132,133}
tNpcGossip[19255]["Text131"] = tWarriorEpicWeapon_Text[19255]["Text111"]
tNpcGossip[19255]["Text132"] = tWarriorEpicWeapon_Text[19255]["Text112"]
tNpcGossip[19255]["Text133"] = tWarriorEpicWeapon_Text[19255]["Text113"]
tNpcGossip[19255]["tOption1-3"] = {4,5}
tNpcGossip[19255]["Option4"] = tWarriorEpicWeapon_Text[19255]["Option1"]
tNpcGossip[19255]["OptionFunc4"] =  "WarriorEpicWeapon_Enter</N>3"
tNpcGossip[19255]["Option5"] = tWarriorEpicWeapon_Text[19255]["Option2"]

tNpcGossip[19255]["Text1-4"] = {141,142,143}
tNpcGossip[19255]["Text141"] = tWarriorEpicWeapon_Text[19255]["Text111"]
tNpcGossip[19255]["Text142"] = tWarriorEpicWeapon_Text[19255]["Text112"]
tNpcGossip[19255]["Text143"] = tWarriorEpicWeapon_Text[19255]["Text113"]
tNpcGossip[19255]["tOption1-4"] = {6,7}
tNpcGossip[19255]["Option6"] = tWarriorEpicWeapon_Text[19255]["Option1"]
tNpcGossip[19255]["OptionFunc6"] =  "WarriorEpicWeapon_Enter</N>4"
tNpcGossip[19255]["Option7"] = tWarriorEpicWeapon_Text[19255]["Option2"]

tNpcGossip[19255]["Text1-5"] = {151,152,153}
tNpcGossip[19255]["Text151"] = tWarriorEpicWeapon_Text[19255]["Text111"]
tNpcGossip[19255]["Text152"] = tWarriorEpicWeapon_Text[19255]["Text112"]
tNpcGossip[19255]["Text153"] = tWarriorEpicWeapon_Text[19255]["Text113"]
tNpcGossip[19255]["tOption1-5"] = {8,9}
tNpcGossip[19255]["Option8"] = tWarriorEpicWeapon_Text[19255]["Option1"] 
tNpcGossip[19255]["OptionFunc8"] =  "WarriorEpicWeapon_Enter</N>5"
tNpcGossip[19255]["Option9"] = tWarriorEpicWeapon_Text[19255]["Option2"] 

tNpcGossip[19255]["Text1-6"] = {161,162,163}
tNpcGossip[19255]["Text161"] = tWarriorEpicWeapon_Text[19255]["Text111"]
tNpcGossip[19255]["Text162"] = tWarriorEpicWeapon_Text[19255]["Text112"]
tNpcGossip[19255]["Text163"] = tWarriorEpicWeapon_Text[19255]["Text113"]
tNpcGossip[19255]["tOption1-6"] = {10,11}
tNpcGossip[19255]["Option10"] = tWarriorEpicWeapon_Text[19255]["Option1"]
tNpcGossip[19255]["OptionFunc10"] =  "WarriorEpicWeapon_Enter</N>6"
tNpcGossip[19255]["Option11"] = tWarriorEpicWeapon_Text[19255]["Option2"]

tNpcGossip[19255]["Text2-1"] = {211,212,213}
tNpcGossip[19255]["Text211"] = tWarriorEpicWeapon_Text[19255]["Text211"]
tNpcGossip[19255]["Text212"] = tWarriorEpicWeapon_Text[19255]["Text212"]
tNpcGossip[19255]["Text213"] = tWarriorEpicWeapon_Text[19255]["Text213"]
tNpcGossip[19255]["tOption2-1"] = {12}
tNpcGossip[19255]["Option12"] = tWarriorEpicWeapon_Text[19255]["Option3"] 

---封印石柱
-- tNpcFace[4133] = 7
tNpcGossip[19256] = tNpcGossip[19256] or DefaultNpc:new{}
tNpcGossip[19256]["OptionHidden"] = 1

--未完成任务3
tNpcGossip[19256]["Text1-1"] = {111,112,113}
tNpcGossip[19256]["Text111"] = tWarriorEpicWeapon_Text[19256]["Text111"]
tNpcGossip[19256]["Text112"] = tWarriorEpicWeapon_Text[19256]["Text112"]
tNpcGossip[19256]["Text113"] = tWarriorEpicWeapon_Text[19256]["Text113"]
tNpcGossip[19256]["tOption1-1"] = {1}
tNpcGossip[19256]["Option1"] = tWarriorEpicWeapon_Text[19256]["Option1"] --尝试破解法阵
tNpcGossip[19256]["OptionFunc1"] = "WarriorEpicWeapon_DecodeBattle</N>19256"
-- tNpcGossip[19256]["Option2"] = tWarriorEpicWeapon_Text[19256]["Option2"]

--任务3 完成
tNpcGossip[19256]["Text1-2"] = {121}
tNpcGossip[19256]["Text121"] = tWarriorEpicWeapon_Text[19256]["Text211"]
tNpcGossip[19256]["tOption1-2"] = {3}
tNpcGossip[19256]["Option3"] = tWarriorEpicWeapon_Text[19256]["Option3"] --点击，切换到中转地图
tNpcGossip[19256]["OptionFunc3"] = "WarriorEpicWeapon_ChgMap</N>19256"


---心魔NPC，男
tNpcFace[4134] = 62

tNpcGossip[19257] = tNpcGossip[19257] or DefaultNpc:new{}
tNpcGossip[19257]["OptionHidden"] = 1

tNpcGossip[19257]["Text1-1"] = {111,112}
tNpcGossip[19257]["Text111"] = tWarriorEpicWeapon_Text[19257]["Text111"]
tNpcGossip[19257]["Text112"] = tWarriorEpicWeapon_Text[19257]["Text112"]
tNpcGossip[19257]["tOption1-1"] = {1}
tNpcGossip[19257]["Option1"] = tWarriorEpicWeapon_Text[19257]["Option1"] --你休想！
tNpcGossip[19257]["OptionFunc1"] = "WarriorEpicWeapon_ChallengeHeartMonster"


---心魔NPC，女
tNpcFace[4135] = 153
tNpcFace[5702] = 153
tNpcGossip[19258] = tNpcGossip[19257] or DefaultNpc:new{}


---上古战神NPC
tNpcFace[4136] = 67
tNpcGossip[19259] = tNpcGossip[19259] or DefaultNpc:new{}
tNpcGossip[19259]["OptionHidden"] = 1

tNpcGossip[19259]["Text1-1"] = {111,112,113}
tNpcGossip[19259]["Text111"] = tWarriorEpicWeapon_Text[19259]["Text111"]
tNpcGossip[19259]["Text112"] = tWarriorEpicWeapon_Text[19259]["Text112"]
tNpcGossip[19259]["Text113"] = tWarriorEpicWeapon_Text[19259]["Text113"]
tNpcGossip[19259]["tOption1-1"] = {1}
tNpcGossip[19259]["Option1"] = tWarriorEpicWeapon_Text[19259]["Option1"] --愿闻其详。
tNpcGossip[19259]["OptionPoint1"]="2-1"

--退出副本地图
tNpcGossip[19259]["Text1-2"] = {121,122}
tNpcGossip[19259]["Text121"] = tWarriorEpicWeapon_Text[19259]["Text121"]
tNpcGossip[19259]["Text122"] = tWarriorEpicWeapon_Text[19259]["Text122"]
tNpcGossip[19259]["tOption1-2"] = {5}
tNpcGossip[19259]["Option5"] = tWarriorEpicWeapon_Text[19259]["Option5"] --我要回去
tNpcGossip[19259]["OptionFunc5"] = "WarriorEpicWeapon_Leave</N>19259"


tNpcGossip[19259]["Text2-1"] = {211,212,213}
tNpcGossip[19259]["Text211"] = tWarriorEpicWeapon_Text[19259]["Text211"]
tNpcGossip[19259]["Text212"] = tWarriorEpicWeapon_Text[19259]["Text212"]
tNpcGossip[19259]["Text213"] = tWarriorEpicWeapon_Text[19259]["Text213"]
tNpcGossip[19259]["tOption2-1"] = {2}
tNpcGossip[19259]["Option2"] = tWarriorEpicWeapon_Text[19259]["Option2"] --原来如此。
tNpcGossip[19259]["OptionPoint2"]="2-2"

tNpcGossip[19259]["Text2-2"] = {221,222,223,224}
tNpcGossip[19259]["Text221"] = tWarriorEpicWeapon_Text[19259]["Text221"]
tNpcGossip[19259]["Text222"] = tWarriorEpicWeapon_Text[19259]["Text222"]
tNpcGossip[19259]["Text223"] = tWarriorEpicWeapon_Text[19259]["Text223"]
tNpcGossip[19259]["Text224"] = tWarriorEpicWeapon_Text[19259]["Text224"]
tNpcGossip[19259]["tOption2-2"] = {3}
tNpcGossip[19259]["Option3"] = tWarriorEpicWeapon_Text[19259]["Option3"] --竟有此事
tNpcGossip[19259]["OptionPoint3"]="2-3"

tNpcGossip[19259]["Text2-3"] = {231,232,233,234}
tNpcGossip[19259]["Text231"] = tWarriorEpicWeapon_Text[19259]["Text231"]
tNpcGossip[19259]["Text232"] = tWarriorEpicWeapon_Text[19259]["Text232"]
tNpcGossip[19259]["Text233"] = tWarriorEpicWeapon_Text[19259]["Text233"]
tNpcGossip[19259]["Text234"] = tWarriorEpicWeapon_Text[19259]["Text234"]
tNpcGossip[19259]["tOption2-3"] = {4}
tNpcGossip[19259]["Option4"] = tWarriorEpicWeapon_Text[19259]["Option4"] -- 谨遵教诲！
tNpcGossip[19259]["OptionFunc4"] = "WarriorEpicWeapon_WarrioProCompTask</N>19259"

--二层，装饰:上古战神的灵识
tNpcGossip[19265] = tNpcGossip[19265] or DefaultNpc:new{}
tNpcGossip[19265]["OptionHidden"] = 1

tNpcGossip[19265]["Text1-1"] = {111,112}
tNpcGossip[19265]["Text111"] = tWarriorEpicWeapon_Text[19265]["Text111"]
tNpcGossip[19265]["Text112"] = tWarriorEpicWeapon_Text[19265]["Text112"]
tNpcGossip[19265]["tOption1-1"] = {1}
tNpcGossip[19265]["Option1"] = tWarriorEpicWeapon_Text[19265]["Option1"]

-----------------------------------物品模板配置---------------------------------
---记忆玉简
tItem[3200206] = tItem[3200206] or {}
tItem[3200206]["Function"] = function(nItemId,sItemName)
	WarriorEpicWeapon_UseMemoryItem(nItemId)
end

--40级就职礼包对白
tItem[3005161] = tItem[3005161] or {}
tItem[3005161]["Text1-1"] ={111,112}
tItem[3005161]["Text111"] = tWarriorEpicWeapon_Text[3005161]["Text111"]
tItem[3005161]["Text112"] = tWarriorEpicWeapon_Text[3005161]["Text112"]
tItem[3005161]["tOption1-1"] = {1}
tItem[3005161]["Option1"] = tWarriorEpicWeapon_Text[3005161]["Option1"] 
tItem[3005161]["OptionFunc1"] ="WarriorEpicWeapon_FindPath</N>10001"

--70级就职礼包
tItem[3005164] = tItem[3005164] or {}
tItem[3005164]["Text1-1"] ={111}
tItem[3005164]["Text111"] = tWarriorEpicWeapon_Text[3005164]["Text111"]
tItem[3005164]["tOption1-1"] = {1,2}
tItem[3005164]["Option1"] = tWarriorEpicWeapon_Text[3005164]["Option1"] 
tItem[3005164]["OptionFunc1"] ="tWarriorEpicWeapon_ChooseOf70Pack</N>3005164</N>1"

tItem[3005164]["Option2"] = tWarriorEpicWeapon_Text[3005164]["Option2"] 
tItem[3005164]["OptionFunc2"] ="tWarriorEpicWeapon_ChooseOf70Pack</N>3005164</N>2"

--100级就职礼包
-- tItem[3005167] = tItem[3005167] or {}
-- -- tItem[3005167]["Text1-1"] ={111}
-- -- tItem[3005167]["Text111"] =tWarriorEpicWeapon_Text[3005167]["Text111"] 
-- -- tItem[3005167]["tOption1-1"] = {1,2}
-- -- tItem[3005167]["Option1"] = tWarriorEpicWeapon_Text[3005167]["Option1"]
-- -- tItem[3005167]["OptionFunc1"] ="tWarriorEpicWeapon_ChooseOf100Pack</N>3005167</N>1"

-- -- tItem[3005167]["Option2"] =tWarriorEpicWeapon_Text[3005167]["Option2"]
-- -- tItem[3005167]["OptionFunc2"] ="tWarriorEpicWeapon_ChooseOf100Pack</N>3005167</N>2"
-- tItem[3005167]["Function"] = function(nItemId,nItemName)
	-- tWarriorEpicWeapon_ChooseOf100Pack(3005167)
-- end
-------------------------------------陷阱模板部分----------------------------------

tTrap[1444] = tTrap[1444] or {}
tTrap[1444]["Function"] = function ()
	WarriorEpicWeapon_TrapRespon()
end

-----------------------------------怪物模板配置---------------------------------
--封印石柱
tMonster[2769] = tMonster[2769] or {}
tMonster[2769]["tFunction"] = tMonster[2769]["tFunction"] or {}
table.insert(tMonster[2769]["tFunction"],WarriorEpicWeapon_StoneMonsterDied)

--简单心魔
tMonster[2770] = tMonster[2770] or {}
tMonster[2770]["tFunction"] = tMonster[2770]["tFunction"] or {}
table.insert(tMonster[2770]["tFunction"],WarriorEpicWeapon_HeartMonsterDied)

--普通心魔
tMonster[2771] = tMonster[2771] or {}
tMonster[2771]["tFunction"] = tMonster[2771]["tFunction"] or {}
table.insert(tMonster[2771]["tFunction"],WarriorEpicWeapon_HeartMonsterDied)

--困难心魔
tMonster[2772] = tMonster[2772] or {}
tMonster[2772]["tFunction"] = tMonster[2772]["tFunction"] or {}
table.insert(tMonster[2772]["tFunction"],WarriorEpicWeapon_HeartMonsterDied)
-----------------------------------上线触发-----------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,WarriorEpicWeapon_Online)