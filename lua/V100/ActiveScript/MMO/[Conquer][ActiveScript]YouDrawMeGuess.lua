------------------------------------------------------------------------------------
--Name:		161031[简体征服][活动脚本]你画我猜活动
--Purpose:	你画我猜活动
--Creator: 	张磊
--Created:	2016/10/31
------------------------------------------------------------------------------------

-- 命名前缀
-- YouDrawMeGuess_

--LOG
--	12000548


--stc
--15195~15199

--stc(151,95)   表示上线获得背包信
--stc(151,96)   表示顽疾变身时间间隔 （10分钟）
--stc(173,54)   是否获得背包信
--stc(173,85)   记录已领取几次积分奖励
--stc(173,86)   记录个人积分
--stc(173,87)   记录图鉴解锁情况
--stc(173,88)   记录图鉴解锁情况
--stc(173,89)   记录图鉴解锁情况
--stc(173,90)   记录图鉴解锁情况
--stc(173,93)   记录已领取几次任务奖励


-----特殊stc说明：
--stc(151,97) 
--stc(151,98) 


----------------------------------------------------------------------------------数据表配置
local tYouDrawMeGuess_Cont = {}
	-- 排行榜模板序号
	tYouDrawMeGuess_Cont["nRankIndex"] = 22636
	--光效
	tYouDrawMeGuess_Cont["SzObj"] = "self"
	tYouDrawMeGuess_Cont["ItemEffect"] = "angelwing"
	-- 领奖对应分值
	tYouDrawMeGuess_Cont["Score"] = {}
	tYouDrawMeGuess_Cont["Score"][1] = 12
	tYouDrawMeGuess_Cont["Score"][2] = 20
	tYouDrawMeGuess_Cont["Score"][3] = 30
	tYouDrawMeGuess_Cont["Score"][4] = 40
	tYouDrawMeGuess_Cont["Score"][5] = 50
	-- 灵玉对应分值
	tYouDrawMeGuess_Cont["Score"][3307510] = 10
	tYouDrawMeGuess_Cont["Score"][3307511] = 2
	
	-- 全部解锁掩码值和
	tYouDrawMeGuess_Cont["TotalValue"] = 101711868
	
	tYouDrawMeGuess_Cont["Limit"] = 88
	
	tYouDrawMeGuess_Cont["Level"] = 0
	tYouDrawMeGuess_Cont["Meto"] = 1
	
	tYouDrawMeGuess_Cont["Times"] = 5
	tYouDrawMeGuess_Cont["ByMsgCp"] = 3
	tYouDrawMeGuess_Cont["GetTaskCp"] = 9
	tYouDrawMeGuess_Cont["GetTaskmoney"] = -800000
	tYouDrawMeGuess_Cont["Space"] = 1
	
	tYouDrawMeGuess_Cont["Instance"] = {}
	tYouDrawMeGuess_Cont["Instance"]["Id"] = 66
	tYouDrawMeGuess_Cont["Instance"]["Space"] = 1
	
	tYouDrawMeGuess_Cont["DynaNpc"] = {}
	tYouDrawMeGuess_Cont["DynaNpc"]["PosX"] = 52
	tYouDrawMeGuess_Cont["DynaNpc"]["PosY"] = 54
	tYouDrawMeGuess_Cont["DynaNpc"]["LookFace"] = 44116
	tYouDrawMeGuess_Cont["DynaNpc"]["Task0"] = 94480090
	
	tYouDrawMeGuess_Cont["ItemId"] = {}
	tYouDrawMeGuess_Cont["ItemId"][1] = 3301360
	tYouDrawMeGuess_Cont["ItemId"][2] = 3301361
	-- 新增物品
	tYouDrawMeGuess_Cont["NewItemId"] = {}
	tYouDrawMeGuess_Cont["NewItemId"][1] = 3307510		-- 紫灵玉
	tYouDrawMeGuess_Cont["NewItemId"][2] = 3307511		-- 青灵玉
	tYouDrawMeGuess_Cont["NewItemId"]["Handbook"] = {}
	tYouDrawMeGuess_Cont["NewItemId"]["Handbook"][1] = 3307549		-- 新增图鉴
	tYouDrawMeGuess_Cont["NewItemId"]["Handbook"][2] = 3307550		-- 新增图鉴

	tYouDrawMeGuess_Cont["Global"] = {}
	tYouDrawMeGuess_Cont["Global"][1] = {51411,51412}
	tYouDrawMeGuess_Cont["Global"][2] = {51413,51414}
	
	tYouDrawMeGuess_Cont["LeaveMap"] = {}
	tYouDrawMeGuess_Cont["LeaveMap"]["MapId"] = 1002
	tYouDrawMeGuess_Cont["LeaveMap"]["PosX"] = 354
	tYouDrawMeGuess_Cont["LeaveMap"]["PosY"] = 416
	
	tYouDrawMeGuess_Cont["Furniture"] = {}
	tYouDrawMeGuess_Cont["Furniture"][1] = 3301378
	tYouDrawMeGuess_Cont["Furniture"][2] = 3301379
	tYouDrawMeGuess_Cont["Furniture"][3] = 3301380
	
	tYouDrawMeGuess_Cont["EmoneyLog"] = {}
	-- 玩家获得赠点奖励
	tYouDrawMeGuess_Cont["EmoneyLog"][1] = "250	4026	%d	%d	1	"
	-- 玩家购买提示(3T)
	tYouDrawMeGuess_Cont["EmoneyLog"][2] = "350	20996	3	3	1	"
	-- 玩家购买参与次数(9T)
	tYouDrawMeGuess_Cont["EmoneyLog"][3] = "350	21173	9	9	1	"
	-- 玩家购买参与次数(80w银两)
	tYouDrawMeGuess_Cont["EmoneyLog"][4] = "350	21174	0	0	1	"
	-- 上交紫灵玉
	tYouDrawMeGuess_Cont["EmoneyLog"][5] = "350	21176	0	0	%d	"
	-- 上交青灵玉
	tYouDrawMeGuess_Cont["EmoneyLog"][6] = "350	21178	0	0	%d	"
	-- 完成一次免费的你画我猜
	tYouDrawMeGuess_Cont["EmoneyLog"][7] = "350	21179	0	0	1	"
	
	tYouDrawMeGuess_Cont["Effect"] = {}
	-- 击杀正确的怪物
	tYouDrawMeGuess_Cont["Effect"][1] = "zf2-e128"
	-- 彻底解锁一个片区
	tYouDrawMeGuess_Cont["Effect"][2] = "FF07"


	tYouDrawMeGuess_Cont["NormalLog"] = {}
	
	-- 单个解锁奖励    100气力值  10积分
	-- tYouDrawMeGuess_Cont["NormalLog"]["Single"] = "0,0,0,0,12000548,2,12[3301255],100[10]"
	tYouDrawMeGuess_Cont["NormalLog"]["Single"] = "0,0,0,0,12000548,2,12,100"
	-- 重复解锁     50点气力值
	tYouDrawMeGuess_Cont["NormalLog"]["Repeat"] = "0,0,0,0,12000548,2,12,50"
	
	-- 单个怪物全部解锁 50分	500气力值，变身道具/时效家具，一个随机赠点包
	-- tYouDrawMeGuess_Cont["NormalLog"]["OneMonLocked"] = "0,0,0,0,12000548,2,12[3301255][3301316],500[50][1]"
	tYouDrawMeGuess_Cont["NormalLog"]["OneMonLocked"] = "0,0,0,0,12000548,2,12[3301316],500[1]"
	
	-- 所有片区解锁LOG
	-- tYouDrawMeGuess_Cont["NormalLog"]["AllMonLocked"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301361],3000[500][1][1]"
	tYouDrawMeGuess_Cont["NormalLog"]["AllMonLocked"] = "0,0,0,0,12000548,2,12[3301316][3307550],3000[1][1]"
	
	tYouDrawMeGuess_Cont["NormalLog"]["Other"] = {}
	tYouDrawMeGuess_Cont["NormalLog"]["Other"][1] = "0,0,0,0,12000548,1[1],0,0"
	tYouDrawMeGuess_Cont["NormalLog"]["Other"][2] = "0,0,0,0,12000548,1[2],0,0"
	tYouDrawMeGuess_Cont["NormalLog"]["Other"][3] = "0,0,0,0,12000548,1[3],0,0"
	tYouDrawMeGuess_Cont["NormalLog"]["Other"][4] = "0,0,0,0,12000548,1[4],0,0"
	tYouDrawMeGuess_Cont["NormalLog"]["Other"][5] = "0,0,0,0,12000548,1[5],0,0"
	tYouDrawMeGuess_Cont["NormalLog"]["Other"][6] = "0,0,0,0,12000548,1[6],0,0"
	tYouDrawMeGuess_Cont["NormalLog"]["Other"][7] = "0,0,0,0,12000548,1[7],0,0"
	
	tYouDrawMeGuess_Cont["NormalLog"]["Other"][8] = "0,0,0,0,12000548,1[8],0,0"
	
	tYouDrawMeGuess_Cont["NormalLog"]["Other"][9] = "0,0,0,0,12000548,1[9],0,0"
	tYouDrawMeGuess_Cont["NormalLog"]["Other"][10] = "0,0,0,0,12000548,1[10],0,0"
	
	tYouDrawMeGuess_Cont["NormalLog"]["DelItem"] = "0,0,%d,1,12000548,0,0,0"
	
	
-- 奖励表
-- 单个解锁奖励 -- 100气力值  10积分
tYouDrawMeGuess_Cont["MonsterReward"] = {}
tYouDrawMeGuess_Cont["MonsterReward"]["Strength"] = 100
-- tYouDrawMeGuess_Cont["MonsterReward"]["ItemId"] = 3301255
tYouDrawMeGuess_Cont["MonsterReward"]["Attr"] = "0 10"

-- 重复解锁了  -- 50点气力值
tYouDrawMeGuess_Cont["MonsterRepeatReward"] = {}
tYouDrawMeGuess_Cont["MonsterRepeatReward"]["Strength"] = 50

-- 单个怪物全部解锁 点亮一个怪物的全部信息	50分	500气力值，变身道具/时效家具，一个随机赠点包

tYouDrawMeGuess_Cont["MonsterAllReward"] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["Strength"] = 500
tYouDrawMeGuess_Cont["MonsterAllReward"]["ItemId"] = {}
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["ItemId"][1] = {}
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["ItemId"][1]["Id"] = 3301255
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["ItemId"][1]["Attr"] = "0 50"

-- tYouDrawMeGuess_Cont["MonsterAllReward"]["ItemId"][2] = {}
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["ItemId"][2]["Id"] = 3301316
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["ItemId"][2]["Attr"] = "0 1"
tYouDrawMeGuess_Cont["MonsterAllReward"]["ItemId"][1] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["ItemId"][1]["Id"] = 3301316
tYouDrawMeGuess_Cont["MonsterAllReward"]["ItemId"][1]["Attr"] = "0 1"


-- 分怪物给道具
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][1] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][1]["ItemId"] = 3301362
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][1]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][1]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301362],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][1]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301362],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][3] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][3]["ItemId"] = 3301363
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][3]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][3]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301363],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][3]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301363],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][6] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][6]["ItemId"] = 3301365
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][6]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][6]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301365],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][6]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301365],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][9] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][9]["ItemId"] = 3301378
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][9]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][9]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301378],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][9]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301378],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][13] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][13]["ItemId"] = 3301368
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][13]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][13]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301368],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][13]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301368],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][14] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][14]["ItemId"] = 3301369
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][14]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][14]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301369],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][14]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301369],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][17] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][17]["ItemId"] = 3301379
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][17]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][17]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301379],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][17]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301379],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][19] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][19]["ItemId"] = 3301371
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][19]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][19]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301371],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][19]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301371],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][55] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][55]["ItemId"] = 3301372
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][55]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][55]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301372],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][55]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301372],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][56] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][56]["ItemId"] = 3301380
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][56]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][56]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301380],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][56]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301380],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][57] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][57]["ItemId"] = 3301374
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][57]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][57]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301374],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][57]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301374],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][58] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][58]["ItemId"] = 3301375
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][58]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][58]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301375],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][58]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301375],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][2411] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][2411]["ItemId"] = 3301376
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][2411]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][2411]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301376],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][2411]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301376],500[1][1]"

tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][2416] = {}
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][2416]["ItemId"] = 3301377
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][2416]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][2416]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301377],500[50][1][1]"
tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][2416]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301377],500[1][1]"


-- 单个片区怪物全部解锁
tYouDrawMeGuess_Cont["OneRegionAllReward"] = {}
--200	1000

tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"] = {}
tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["Strength"] = 1000
tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["ItemId"] = {}
-- tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["ItemId"][1] = {}
-- tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["ItemId"][1]["Id"] = 3301255
-- tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["ItemId"][1]["Attr"] = "0 200"

-- tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["ItemId"][2] = {}
-- tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["ItemId"][2]["Id"] = 3301316
-- tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["ItemId"][2]["Attr"] = "0 1"
tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["ItemId"][1] = {}
tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["ItemId"][1]["Id"] = 3301316
tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["ItemId"][1]["Attr"] = "0 1"

tYouDrawMeGuess_Cont["OneRegionAllReward"][1] = {}
tYouDrawMeGuess_Cont["OneRegionAllReward"][1]["ItemId"] = 3301381
tYouDrawMeGuess_Cont["OneRegionAllReward"][1]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["OneRegionAllReward"][1]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301381],1000[200][1][1]"
tYouDrawMeGuess_Cont["OneRegionAllReward"][1]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301381],1000[1][1]"

tYouDrawMeGuess_Cont["OneRegionAllReward"][2] = {}
tYouDrawMeGuess_Cont["OneRegionAllReward"][2]["ItemId"] = 3301382
tYouDrawMeGuess_Cont["OneRegionAllReward"][2]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["OneRegionAllReward"][2]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301382],1000[200][1][1]"
tYouDrawMeGuess_Cont["OneRegionAllReward"][2]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301382],1000[1][1]"

tYouDrawMeGuess_Cont["OneRegionAllReward"][3] = {}
tYouDrawMeGuess_Cont["OneRegionAllReward"][3]["ItemId"] = 3301383
tYouDrawMeGuess_Cont["OneRegionAllReward"][3]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["OneRegionAllReward"][3]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301383],1000[200][1][1]"
tYouDrawMeGuess_Cont["OneRegionAllReward"][3]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301383],1000[1][1]"

tYouDrawMeGuess_Cont["OneRegionAllReward"][4] = {}
tYouDrawMeGuess_Cont["OneRegionAllReward"][4]["ItemId"] = 3301384
tYouDrawMeGuess_Cont["OneRegionAllReward"][4]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["OneRegionAllReward"][4]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301384],1000[200][1][1]"
tYouDrawMeGuess_Cont["OneRegionAllReward"][4]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301384],1000[1][1]"

tYouDrawMeGuess_Cont["OneRegionAllReward"][5] = {}
tYouDrawMeGuess_Cont["OneRegionAllReward"][5]["ItemId"] = 3301385
tYouDrawMeGuess_Cont["OneRegionAllReward"][5]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["OneRegionAllReward"][5]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301385],1000[200][1][1]"
tYouDrawMeGuess_Cont["OneRegionAllReward"][5]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301385],1000[1][1]"

tYouDrawMeGuess_Cont["OneRegionAllReward"][6] = {}
tYouDrawMeGuess_Cont["OneRegionAllReward"][6]["ItemId"] = 3301386
tYouDrawMeGuess_Cont["OneRegionAllReward"][6]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["OneRegionAllReward"][6]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301386],1000[200][1][1]"
tYouDrawMeGuess_Cont["OneRegionAllReward"][6]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301386],1000[1][1]"

tYouDrawMeGuess_Cont["OneRegionAllReward"][7] = {}
tYouDrawMeGuess_Cont["OneRegionAllReward"][7]["ItemId"] = 3301387
tYouDrawMeGuess_Cont["OneRegionAllReward"][7]["Attr"] = "0 1"
-- tYouDrawMeGuess_Cont["OneRegionAllReward"][7]["Log"] = "0,0,0,0,12000548,2,12[3301255][3301316][3301387],1000[200][1][1]"
tYouDrawMeGuess_Cont["OneRegionAllReward"][7]["Log"] = "0,0,0,0,12000548,2,12[3301316][3301387],1000[1][1]"
	
-- 所有都解锁了
tYouDrawMeGuess_Cont["AllRegionLocked"] = {}
-- 500分	图鉴变成更华丽的名字/图标，3000气，一个随机赠点包
tYouDrawMeGuess_Cont["AllRegionLocked"]["Strength"] = 3000
tYouDrawMeGuess_Cont["AllRegionLocked"]["ItemId"] = {}
-- tYouDrawMeGuess_Cont["AllRegionLocked"]["ItemId"][1] = {}
-- tYouDrawMeGuess_Cont["AllRegionLocked"]["ItemId"][1]["Id"] = 3301255
-- tYouDrawMeGuess_Cont["AllRegionLocked"]["ItemId"][1]["Attr"] = "0 500"

-- tYouDrawMeGuess_Cont["AllRegionLocked"]["ItemId"][2] = {}
-- tYouDrawMeGuess_Cont["AllRegionLocked"]["ItemId"][2]["Id"] = 3301316
-- tYouDrawMeGuess_Cont["AllRegionLocked"]["ItemId"][2]["Attr"] = "0 1"
tYouDrawMeGuess_Cont["AllRegionLocked"]["ItemId"][1] = {}
tYouDrawMeGuess_Cont["AllRegionLocked"]["ItemId"][1]["Id"] = 3301316
tYouDrawMeGuess_Cont["AllRegionLocked"]["ItemId"][1]["Attr"] = "0 1"

-- 图鉴更新
tYouDrawMeGuess_Cont["AllRegionLocked"]["OldItem"] = 3301360
tYouDrawMeGuess_Cont["AllRegionLocked"]["NewItem"] = 3301361
tYouDrawMeGuess_Cont["AllRegionLocked"]["Attr1"] = "0 1"

-- 
tYouDrawMeGuess_Cont["Mail"] = {}
tYouDrawMeGuess_Cont["Mail"]["ExistDay"] = 30

tYouDrawMeGuess_Cont["Mail"]["Action"] = {}
tYouDrawMeGuess_Cont["Mail"]["Action"][1] = 564724
tYouDrawMeGuess_Cont["Mail"]["Action"][2] = 564725
tYouDrawMeGuess_Cont["Mail"]["Action"][3] = 564726
tYouDrawMeGuess_Cont["Mail"]["Action"][4] = 564727
tYouDrawMeGuess_Cont["Mail"]["Action"][5] = 564727
tYouDrawMeGuess_Cont["Mail"]["Action"][6] = 564728
tYouDrawMeGuess_Cont["Mail"]["Action"][7] = 564728
tYouDrawMeGuess_Cont["Mail"]["Action"][8] = 564729
tYouDrawMeGuess_Cont["Mail"]["Action"][9] = 564729
tYouDrawMeGuess_Cont["Mail"]["Action"][10] = 564729

	
	
	tYouDrawMeGuess_Cont["InToMap"] = {}
	tYouDrawMeGuess_Cont["InToMap"][1] = {}
	tYouDrawMeGuess_Cont["InToMap"][1]["RewardItem"] = {}
	tYouDrawMeGuess_Cont["InToMap"][1]["RewardItem"][1] = {}
	-- tYouDrawMeGuess_Cont["InToMap"][1]["RewardItem"][1]["Id"] = 3301360
	tYouDrawMeGuess_Cont["InToMap"][1]["RewardItem"][1]["Id"] = 3307549
	tYouDrawMeGuess_Cont["InToMap"][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tYouDrawMeGuess_Cont["InToMap"][1]["Log"] = "0,0,0,0,12000548,2,3301360,1"
	tYouDrawMeGuess_Cont["InToMap"][1]["Log"] = "0,0,0,0,12000548,2,3307549,1"
	tYouDrawMeGuess_Cont["InToMap"][1]["Talk"] = tYouDrawMeGuess_OtherMsg["GoInMap"][1]
	
	tYouDrawMeGuess_Cont["InToMap"][2] = {}
	tYouDrawMeGuess_Cont["InToMap"][2]["RewardItem"] = {}
	tYouDrawMeGuess_Cont["InToMap"][2]["RewardItem"][1] = {}
	-- tYouDrawMeGuess_Cont["InToMap"][2]["RewardItem"][1]["Id"] = 3301361
	tYouDrawMeGuess_Cont["InToMap"][2]["RewardItem"][1]["Id"] = 3307550
	tYouDrawMeGuess_Cont["InToMap"][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tYouDrawMeGuess_Cont["InToMap"][2]["Log"] = "0,0,0,0,12000548,2,3301361,1"
	tYouDrawMeGuess_Cont["InToMap"][2]["Log"] = "0,0,0,0,12000548,2,3307550,1"
	tYouDrawMeGuess_Cont["InToMap"][2]["Talk"] = tYouDrawMeGuess_OtherMsg["GoInMap"][1]

	
	--片区坐标
	-- 清风原 311 343
	-- 枫溪林 231 259
	-- 绝情谷 569 624
	-- 大漠    480 634
	-- 芦花荡 791 569
	
	
	tYouDrawMeGuess_Cont["RegionXY"] = {}
	tYouDrawMeGuess_Cont["RegionXY"][1] = {}
	tYouDrawMeGuess_Cont["RegionXY"][1]["MapId"] = 1002
	tYouDrawMeGuess_Cont["RegionXY"][1]["PosX"] = 469
	tYouDrawMeGuess_Cont["RegionXY"][1]["PosY"] = 496
	tYouDrawMeGuess_Cont["RegionXY"][1]["CXY"] = 3
	
	tYouDrawMeGuess_Cont["RegionXY"][2] = {}
	tYouDrawMeGuess_Cont["RegionXY"][2]["MapId"] = 1011
	tYouDrawMeGuess_Cont["RegionXY"][2]["PosX"] = 231
	tYouDrawMeGuess_Cont["RegionXY"][2]["PosY"] = 259
	tYouDrawMeGuess_Cont["RegionXY"][2]["CXY"] = 3
		
	tYouDrawMeGuess_Cont["RegionXY"][3] = {}
	tYouDrawMeGuess_Cont["RegionXY"][3]["MapId"] = 1020
	tYouDrawMeGuess_Cont["RegionXY"][3]["PosX"] = 569
	tYouDrawMeGuess_Cont["RegionXY"][3]["PosY"] = 624
	tYouDrawMeGuess_Cont["RegionXY"][3]["CXY"] = 3	

	tYouDrawMeGuess_Cont["RegionXY"][4] = {}
	tYouDrawMeGuess_Cont["RegionXY"][4]["MapId"] = 1000
	tYouDrawMeGuess_Cont["RegionXY"][4]["PosX"] = 480
	tYouDrawMeGuess_Cont["RegionXY"][4]["PosY"] = 634
	tYouDrawMeGuess_Cont["RegionXY"][4]["CXY"] = 3
	
	tYouDrawMeGuess_Cont["RegionXY"][5] = {}
	tYouDrawMeGuess_Cont["RegionXY"][5]["MapId"] = 1015
	tYouDrawMeGuess_Cont["RegionXY"][5]["PosX"] = 791
	tYouDrawMeGuess_Cont["RegionXY"][5]["PosY"] = 569
	tYouDrawMeGuess_Cont["RegionXY"][5]["CXY"] = 3
	
	tYouDrawMeGuess_Cont["RegionXY"][6] = {}
	tYouDrawMeGuess_Cont["RegionXY"][6]["MapId"] = 1001
	tYouDrawMeGuess_Cont["RegionXY"][6]["PosX"] = 313
	tYouDrawMeGuess_Cont["RegionXY"][6]["PosY"] = 638
	tYouDrawMeGuess_Cont["RegionXY"][6]["CXY"] = 3
	
	tYouDrawMeGuess_Cont["RegionXY"][7] = {}
	tYouDrawMeGuess_Cont["RegionXY"][7]["MapId"] = 1926
	tYouDrawMeGuess_Cont["RegionXY"][7]["PosX"] = 336
	tYouDrawMeGuess_Cont["RegionXY"][7]["PosY"] = 353
	tYouDrawMeGuess_Cont["RegionXY"][7]["CXY"] = 3	
	
	tYouDrawMeGuess_Cont["RegionXY"][8] = {}
	tYouDrawMeGuess_Cont["RegionXY"][8]["MapId"] = 1927
	tYouDrawMeGuess_Cont["RegionXY"][8]["PosX"] = 388
	tYouDrawMeGuess_Cont["RegionXY"][8]["PosY"] = 625
	tYouDrawMeGuess_Cont["RegionXY"][8]["CXY"] = 3
	
	tYouDrawMeGuess_Cont["MsgMon"] = {}
	tYouDrawMeGuess_Cont["MsgMon"][1] = {}
	tYouDrawMeGuess_Cont["MsgMon"][1]["ItemChanceSum"] = 10000

	tYouDrawMeGuess_Cont["MsgMon"][1][1] = {}
	tYouDrawMeGuess_Cont["MsgMon"][1][1]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Cont["MsgMon"][1][1]["ItemChance"] = 2500
	tYouDrawMeGuess_Cont["MsgMon"][1][1]["Item_1"] = 1

	tYouDrawMeGuess_Cont["MsgMon"][1][2] = {}
	tYouDrawMeGuess_Cont["MsgMon"][1][2]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Cont["MsgMon"][1][2]["ItemChance"] = 2500
	tYouDrawMeGuess_Cont["MsgMon"][1][2]["Item_1"] = 1

	tYouDrawMeGuess_Cont["MsgMon"][1][3] = {}
	tYouDrawMeGuess_Cont["MsgMon"][1][3]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Cont["MsgMon"][1][3]["ItemChance"] = 2000
	tYouDrawMeGuess_Cont["MsgMon"][1][3]["Item_1"] = 1

	tYouDrawMeGuess_Cont["MsgMon"][1][4] = {}
	tYouDrawMeGuess_Cont["MsgMon"][1][4]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Cont["MsgMon"][1][4]["ItemChance"] = 1500
	tYouDrawMeGuess_Cont["MsgMon"][1][4]["Item_1"] = 1

	tYouDrawMeGuess_Cont["MsgMon"][1][5] = {}
	tYouDrawMeGuess_Cont["MsgMon"][1][5]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Cont["MsgMon"][1][5]["ItemChance"] = 1500
	tYouDrawMeGuess_Cont["MsgMon"][1][5]["Item_1"] = 1


	
	
	
local tYouDrawMeGuess_Stc = {}
--背包信
	tYouDrawMeGuess_Stc[1] = {}
	tYouDrawMeGuess_Stc[1]["EventType"] = 151
	tYouDrawMeGuess_Stc[1]["DataType"] = 96
	tYouDrawMeGuess_Stc[1]["nDelay"] = 10
	tYouDrawMeGuess_Stc[1]["nTimeType"] = 1
	
--第一二片区
	tYouDrawMeGuess_Stc[2] = {}
	tYouDrawMeGuess_Stc[2]["EventType"] = 151
	tYouDrawMeGuess_Stc[2]["DataType"] = 97

--第三四片区
	tYouDrawMeGuess_Stc[3] = {}
	tYouDrawMeGuess_Stc[3]["EventType"] = 151
	tYouDrawMeGuess_Stc[3]["DataType"] = 98
	
--第五六片区
	tYouDrawMeGuess_Stc[4] = {}
	tYouDrawMeGuess_Stc[4]["EventType"] = 151
	tYouDrawMeGuess_Stc[4]["DataType"] = 99
	
--第七片区
	tYouDrawMeGuess_Stc[5] = {}
	tYouDrawMeGuess_Stc[5]["EventType"] = 152
	tYouDrawMeGuess_Stc[5]["DataType"] = 22
	
-- 记录玩家现在接的是哪个任务 -- 存怪物ID
	tYouDrawMeGuess_Stc[6] = {}
	tYouDrawMeGuess_Stc[6]["EventType"] = 152
	tYouDrawMeGuess_Stc[6]["DataType"] = 23
	
-- 记录玩家是否第一次进入地图
	tYouDrawMeGuess_Stc[7] = {}
	tYouDrawMeGuess_Stc[7]["EventType"] = 152
	tYouDrawMeGuess_Stc[7]["DataType"] = 24
	
-- 记录玩家是免费参与的次数
	tYouDrawMeGuess_Stc[8] = {}
	tYouDrawMeGuess_Stc[8]["EventType"] = 152
	tYouDrawMeGuess_Stc[8]["DataType"] = 25
	
-- 记录玩家是否第一次获得提示
	tYouDrawMeGuess_Stc[9] = {}
	tYouDrawMeGuess_Stc[9]["EventType"] = 152
	tYouDrawMeGuess_Stc[9]["DataType"] = 52
	
-- 记录玩家解锁进度
	tYouDrawMeGuess_Stc[10] = {}
	tYouDrawMeGuess_Stc[10]["EventType"] = 152
	tYouDrawMeGuess_Stc[10]["DataType"] = 53
	
-- 记录已领取几次积分奖励
	tYouDrawMeGuess_Stc[11] = {}
	tYouDrawMeGuess_Stc[11]["EventType"] = 173
	tYouDrawMeGuess_Stc[11]["DataType"] = 85
	tYouDrawMeGuess_Stc[11]["Limit"] = 5

-- 记录个人积分
	tYouDrawMeGuess_Stc[12] = {}
	tYouDrawMeGuess_Stc[12]["EventType"] = 173
	tYouDrawMeGuess_Stc[12]["DataType"] = 86

-- 记录已领取几次任务奖励
	tYouDrawMeGuess_Stc[13] = {}
	tYouDrawMeGuess_Stc[13]["EventType"] = 173
	tYouDrawMeGuess_Stc[13]["DataType"] = 93
	
-- 怪物对应的stc掩码

local tYouDrawMeGuess_MonsterToStc = {}
	tYouDrawMeGuess_MonsterToStc[1] = {1,3,64,6,9}
	tYouDrawMeGuess_MonsterToStc[2] = {10,12,13,14,16}
	tYouDrawMeGuess_MonsterToStc[3] = {17,19,55,20,56}
	tYouDrawMeGuess_MonsterToStc[4] = {57,58,2411,2416}
	
local tYouDrawMeGuess_MonsterToEvent = {}
	tYouDrawMeGuess_MonsterToEvent[1] = {}
	tYouDrawMeGuess_MonsterToEvent[1]["EventType"] = 151
	tYouDrawMeGuess_MonsterToEvent[1]["DataType"] = 97
	
	tYouDrawMeGuess_MonsterToEvent[2] = {}
	tYouDrawMeGuess_MonsterToEvent[2]["EventType"] = 151
	tYouDrawMeGuess_MonsterToEvent[2]["DataType"] = 98

	tYouDrawMeGuess_MonsterToEvent[3] = {}
	tYouDrawMeGuess_MonsterToEvent[3]["EventType"] = 151
	tYouDrawMeGuess_MonsterToEvent[3]["DataType"] = 99
	
	tYouDrawMeGuess_MonsterToEvent[4] = {}
	tYouDrawMeGuess_MonsterToEvent[4]["EventType"] = 152
	tYouDrawMeGuess_MonsterToEvent[4]["DataType"] = 22

	-- 新增图鉴的掩码
	tYouDrawMeGuess_MonsterToEvent[5] = {}
	tYouDrawMeGuess_MonsterToEvent[5]["EventType"] = 173
	tYouDrawMeGuess_MonsterToEvent[5]["DataType"] = 87
	
	tYouDrawMeGuess_MonsterToEvent[6] = {}
	tYouDrawMeGuess_MonsterToEvent[6]["EventType"] = 173
	tYouDrawMeGuess_MonsterToEvent[6]["DataType"] = 88

	tYouDrawMeGuess_MonsterToEvent[7] = {}
	tYouDrawMeGuess_MonsterToEvent[7]["EventType"] = 173
	tYouDrawMeGuess_MonsterToEvent[7]["DataType"] = 89
	
	tYouDrawMeGuess_MonsterToEvent[8] = {}
	tYouDrawMeGuess_MonsterToEvent[8]["EventType"] = 173
	tYouDrawMeGuess_MonsterToEvent[8]["DataType"] = 90
	
	
-- 表存储  解锁信息怪物ID对应的信息【片区ID + 怪物ID】
local tYouDrawMeGuess_Monster = {}
	tYouDrawMeGuess_Monster[1] = {}
	tYouDrawMeGuess_Monster[1][1] = {1,2,4,8,16}
	tYouDrawMeGuess_Monster[1][3] = {32,64,128,256,512}
	tYouDrawMeGuess_Monster[1][64] = {1024,2048,4096,8192,16384}
	
	tYouDrawMeGuess_Monster[2] = {}	
	tYouDrawMeGuess_Monster[2][6] = {32768,65536,131072,262144,524288}
	tYouDrawMeGuess_Monster[2][9] = {1048576,2097152,4194304,8388608,16777216}	
	
	tYouDrawMeGuess_Monster[3] = {}		
	tYouDrawMeGuess_Monster[3][10] = {1,2,4,8,16}
	tYouDrawMeGuess_Monster[3][12] = {32,64,128,256,512}
	tYouDrawMeGuess_Monster[3][13] = {1024,2048,4096,8192,16384}
	
	tYouDrawMeGuess_Monster[4] = {}		
	tYouDrawMeGuess_Monster[4][14] = {32768,65536,131072,262144,524288}
	tYouDrawMeGuess_Monster[4][16] = {1048576,2097152,4194304,8388608,16777216}
	tYouDrawMeGuess_Monster[4][17] = {1,2,4,8,16}

	tYouDrawMeGuess_Monster[5] = {}	
	tYouDrawMeGuess_Monster[5][19] = {32,64,128,256,512}
	tYouDrawMeGuess_Monster[5][55] = {1024,2048,4096,8192,16384}

	tYouDrawMeGuess_Monster[6] = {}		
	tYouDrawMeGuess_Monster[6][20] = {32768,65536,131072,262144,524288}
	tYouDrawMeGuess_Monster[6][56] = {1048576,2097152,4194304,8388608,16777216}
	tYouDrawMeGuess_Monster[6][57] = {1,2,4,8,16}
	tYouDrawMeGuess_Monster[6][58] = {32,64,128,256,512}
	
	tYouDrawMeGuess_Monster[7] = {}		
	tYouDrawMeGuess_Monster[7][2411] = {1024,2048,4096,8192,16384}
	tYouDrawMeGuess_Monster[7][2416] = {32768,65536,131072,262144,524288}

	
-- 怪物提示信息表数据
local tYouDrawMeGuess_MonsterMsg = {}
	tYouDrawMeGuess_MonsterMsg[1] = {}
	tYouDrawMeGuess_MonsterMsg[1][1] = {1,2,4,8}
	tYouDrawMeGuess_MonsterMsg[1][3] = {1,2,4,8,16}
	tYouDrawMeGuess_MonsterMsg[1][64] = {1,2,4,8}

	tYouDrawMeGuess_MonsterMsg[2] = {}
	tYouDrawMeGuess_MonsterMsg[2][6] = {1,2,4,8,16}
	tYouDrawMeGuess_MonsterMsg[2][9] = {1,2,4,8,16}
	
	tYouDrawMeGuess_MonsterMsg[3] = {}
	tYouDrawMeGuess_MonsterMsg[3][10] = {1,2,4,8}
	tYouDrawMeGuess_MonsterMsg[3][12] = {1,2,4,8}
	tYouDrawMeGuess_MonsterMsg[3][13] = {1,2,4,8}
	
	tYouDrawMeGuess_MonsterMsg[4] = {}
	tYouDrawMeGuess_MonsterMsg[4][14] = {1,2,4,8}
	tYouDrawMeGuess_MonsterMsg[4][16] = {1,2,4,8,16}
	tYouDrawMeGuess_MonsterMsg[4][17] = {1,2,4,8,16}
	
	tYouDrawMeGuess_MonsterMsg[5] = {}
	tYouDrawMeGuess_MonsterMsg[5][19] = {1,2,4,8,16}
	tYouDrawMeGuess_MonsterMsg[5][55] = {1,2,4,8}
	
	tYouDrawMeGuess_MonsterMsg[6] = {}
	tYouDrawMeGuess_MonsterMsg[6][20] = {1,2,4,8,16}
	tYouDrawMeGuess_MonsterMsg[6][56] = {1,2,4,8,16}
	tYouDrawMeGuess_MonsterMsg[6][57] = {1,2,4,8,16}
	tYouDrawMeGuess_MonsterMsg[6][58] = {1,2,4,8}
	
	tYouDrawMeGuess_MonsterMsg[7] = {}
	tYouDrawMeGuess_MonsterMsg[7][2411] = {1,2,4,8}
	tYouDrawMeGuess_MonsterMsg[7][2416] = {1,2,4,8}
	
	
	
local tYouDrawMeGuess_Log = {}
	tYouDrawMeGuess_Log[1] = {}
	-- 过期删除LOG
	tYouDrawMeGuess_Log[1][1] = "0,0,%d,1,12000548,2,0,0"
	-- 变身卡Log
	tYouDrawMeGuess_Log[1][2] = "0,0,%d,1,12000548,2[%d],0,0"
	-- 家具收起log
	tYouDrawMeGuess_Log[1][3] = "0,0,0,0,12000548,2,%d,1"
	-- 获得天石LOG
	tYouDrawMeGuess_Log[1][4] = "0,0,0,0,12000548,2,3,%d"

--狐妖的天石宝盒
local	tYouDrawMeGuess_Cppack = {} 
		tYouDrawMeGuess_Cppack["Reward"] = {}
		tYouDrawMeGuess_Cppack["Reward"][1] = {}
		tYouDrawMeGuess_Cppack["Reward"][1]["ItemChanceSum"] = 10000

		tYouDrawMeGuess_Cppack["Reward"][1][1] = {}
		tYouDrawMeGuess_Cppack["Reward"][1][1]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_Cppack["Reward"][1][1]["ItemChance"] = 500
		tYouDrawMeGuess_Cppack["Reward"][1][1]["Item_1"] = 1
		tYouDrawMeGuess_Cppack["Reward"][1][1]["Start"] = 1
		tYouDrawMeGuess_Cppack["Reward"][1][1]["End"] = 10

		tYouDrawMeGuess_Cppack["Reward"][1][2] = {}
		tYouDrawMeGuess_Cppack["Reward"][1][2]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_Cppack["Reward"][1][2]["ItemChance"] = 2500
		tYouDrawMeGuess_Cppack["Reward"][1][2]["Item_1"] = 2
		tYouDrawMeGuess_Cppack["Reward"][1][2]["Start"] = 11
		tYouDrawMeGuess_Cppack["Reward"][1][2]["End"] = 20

		tYouDrawMeGuess_Cppack["Reward"][1][3] = {}
		tYouDrawMeGuess_Cppack["Reward"][1][3]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_Cppack["Reward"][1][3]["ItemChance"] = 3500
		tYouDrawMeGuess_Cppack["Reward"][1][3]["Item_1"] = 3
		tYouDrawMeGuess_Cppack["Reward"][1][3]["Start"] = 21
		tYouDrawMeGuess_Cppack["Reward"][1][3]["End"] = 30

		tYouDrawMeGuess_Cppack["Reward"][1][4] = {}
		tYouDrawMeGuess_Cppack["Reward"][1][4]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_Cppack["Reward"][1][4]["ItemChance"] = 1800
		tYouDrawMeGuess_Cppack["Reward"][1][4]["Item_1"] = 4
		tYouDrawMeGuess_Cppack["Reward"][1][4]["Start"] = 31
		tYouDrawMeGuess_Cppack["Reward"][1][4]["End"] = 40

		tYouDrawMeGuess_Cppack["Reward"][1][5] = {}
		tYouDrawMeGuess_Cppack["Reward"][1][5]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_Cppack["Reward"][1][5]["ItemChance"] = 1200
		tYouDrawMeGuess_Cppack["Reward"][1][5]["Item_1"] = 5
		tYouDrawMeGuess_Cppack["Reward"][1][5]["Start"] = 41
		tYouDrawMeGuess_Cppack["Reward"][1][5]["End"] = 50

		tYouDrawMeGuess_Cppack["Reward"][1][6] = {}
		tYouDrawMeGuess_Cppack["Reward"][1][6]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_Cppack["Reward"][1][6]["ItemChance"] = 400
		tYouDrawMeGuess_Cppack["Reward"][1][6]["Item_1"] = 6
		tYouDrawMeGuess_Cppack["Reward"][1][6]["Start"] = 51
		tYouDrawMeGuess_Cppack["Reward"][1][6]["End"] = 60

		tYouDrawMeGuess_Cppack["Reward"][1][7] = {}
		tYouDrawMeGuess_Cppack["Reward"][1][7]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_Cppack["Reward"][1][7]["ItemChance"] = 100
		tYouDrawMeGuess_Cppack["Reward"][1][7]["Item_1"] = 7
		tYouDrawMeGuess_Cppack["Reward"][1][7]["Start"] = 61
		tYouDrawMeGuess_Cppack["Reward"][1][7]["End"] = 88
		

-- 变身数据表配置
local tYouDrawMeGuess_Transform = {}
-- 3301362	【叫天鸡】幻化令
	tYouDrawMeGuess_Transform[3301362] = {}
	tYouDrawMeGuess_Transform[3301362]["Magictype"] = 13170
	tYouDrawMeGuess_Transform[3301362]["MagictypeLevel"] = 0
	tYouDrawMeGuess_Transform[3301362]["MonsterId"] = 1
	tYouDrawMeGuess_Transform[3301362]["Times"] = 300
-- 3301363	【罗罗鸟】幻化令
	tYouDrawMeGuess_Transform[3301363] = {}
	tYouDrawMeGuess_Transform[3301363]["Magictype"] = 13171
	tYouDrawMeGuess_Transform[3301363]["MagictypeLevel"] = 0
	tYouDrawMeGuess_Transform[3301363]["MonsterId"] = 3
	tYouDrawMeGuess_Transform[3301363]["Times"] = 300
-- 3301364	【破空鬼斧王】幻化令
	-- tYouDrawMeGuess_Transform[3301364] = {}
	-- tYouDrawMeGuess_Transform[3301364]["Magictype"] = 13172
	-- tYouDrawMeGuess_Transform[3301364]["MagictypeLevel"] = 0
	-- tYouDrawMeGuess_Transform[3301364]["MonsterId"] = 64
	-- tYouDrawMeGuess_Transform[3301364]["Times"] = 300
-- 3301365	【翼蛇】幻化令
	tYouDrawMeGuess_Transform[3301365] = {}
	tYouDrawMeGuess_Transform[3301365]["Magictype"] = 13173
	tYouDrawMeGuess_Transform[3301365]["MagictypeLevel"] = 0
	tYouDrawMeGuess_Transform[3301365]["MonsterId"] = 6
	tYouDrawMeGuess_Transform[3301365]["Times"] = 300
-- 3301366	【须猕猴】幻化令
	-- tYouDrawMeGuess_Transform[3301366] = {}
	-- tYouDrawMeGuess_Transform[3301366]["Magictype"] = 13174
	-- tYouDrawMeGuess_Transform[3301366]["MagictypeLevel"] = 0
	-- tYouDrawMeGuess_Transform[3301366]["MonsterId"] = 10
	-- tYouDrawMeGuess_Transform[3301366]["Times"] = 300
-- 3301367	【天雷巨猿】幻化令
	-- tYouDrawMeGuess_Transform[3301367] = {}
	-- tYouDrawMeGuess_Transform[3301367]["Magictype"] = 13175
	-- tYouDrawMeGuess_Transform[3301367]["MagictypeLevel"] = 0
	-- tYouDrawMeGuess_Transform[3301367]["MonsterId"] = 12
	-- tYouDrawMeGuess_Transform[3301367]["Times"] = 300
-- 3301368	【蛇人】幻化令
	tYouDrawMeGuess_Transform[3301368] = {}
	tYouDrawMeGuess_Transform[3301368]["Magictype"] = 13176
	tYouDrawMeGuess_Transform[3301368]["MagictypeLevel"] = 0
	tYouDrawMeGuess_Transform[3301368]["MonsterId"] = 13
	tYouDrawMeGuess_Transform[3301368]["Times"] = 300
-- 3301369	【沙怪】幻化令
	tYouDrawMeGuess_Transform[3301369] = {}
	tYouDrawMeGuess_Transform[3301369]["Magictype"] = 13177
	tYouDrawMeGuess_Transform[3301369]["MagictypeLevel"] = 0
	tYouDrawMeGuess_Transform[3301369]["MonsterId"] = 14
	tYouDrawMeGuess_Transform[3301369]["Times"] = 300
-- 3301370	【巨石怪】幻化令
	-- tYouDrawMeGuess_Transform[3301370] = {}
	-- tYouDrawMeGuess_Transform[3301370]["Magictype"] = 13178
	-- tYouDrawMeGuess_Transform[3301370]["MagictypeLevel"] = 0
	-- tYouDrawMeGuess_Transform[3301370]["MonsterId"] = 16
	-- tYouDrawMeGuess_Transform[3301370]["Times"] = 300
-- 3301371	【银羽鹰王】幻化令
	tYouDrawMeGuess_Transform[3301371] = {}
	tYouDrawMeGuess_Transform[3301371]["Magictype"] = 13179
	tYouDrawMeGuess_Transform[3301371]["MagictypeLevel"] = 0
	tYouDrawMeGuess_Transform[3301371]["MonsterId"] = 19
	tYouDrawMeGuess_Transform[3301371]["Times"] = 300
-- 3301372	【湖岛强匪】幻化令
	tYouDrawMeGuess_Transform[3301372] = {}
	tYouDrawMeGuess_Transform[3301372]["Magictype"] = 13180
	tYouDrawMeGuess_Transform[3301372]["MagictypeLevel"] = 0
	tYouDrawMeGuess_Transform[3301372]["MonsterId"] = 55
	tYouDrawMeGuess_Transform[3301372]["Times"] = 300
-- 3301373	【土墓蝠】幻化令
	-- tYouDrawMeGuess_Transform[3301373] = {}
	-- tYouDrawMeGuess_Transform[3301373]["Magictype"] = 13181
	-- tYouDrawMeGuess_Transform[3301373]["MagictypeLevel"] = 0
	-- tYouDrawMeGuess_Transform[3301373]["MonsterId"] = 20
	-- tYouDrawMeGuess_Transform[3301373]["Times"] = 300
-- 3301374	【牛怪】幻化令
	tYouDrawMeGuess_Transform[3301374] = {}
	tYouDrawMeGuess_Transform[3301374]["Magictype"] = 13182
	tYouDrawMeGuess_Transform[3301374]["MagictypeLevel"] = 0
	tYouDrawMeGuess_Transform[3301374]["MonsterId"] = 57
	tYouDrawMeGuess_Transform[3301374]["Times"] = 300
-- 3301375	【血影红魔】幻化令
	tYouDrawMeGuess_Transform[3301375] = {}
	tYouDrawMeGuess_Transform[3301375]["Magictype"] = 13183
	tYouDrawMeGuess_Transform[3301375]["MagictypeLevel"] = 0
	tYouDrawMeGuess_Transform[3301375]["MonsterId"] = 58
	tYouDrawMeGuess_Transform[3301375]["Times"] = 300
-- 3301376	【冰凌腾蛇】幻化令
	tYouDrawMeGuess_Transform[3301376] = {}
	tYouDrawMeGuess_Transform[3301376]["Magictype"] = 13184
	tYouDrawMeGuess_Transform[3301376]["MagictypeLevel"] = 0
	tYouDrawMeGuess_Transform[3301376]["MonsterId"] = 2411
	tYouDrawMeGuess_Transform[3301376]["Times"] = 300
-- 3301377	【冰煞邪刀】幻化令
	tYouDrawMeGuess_Transform[3301377] = {}
	tYouDrawMeGuess_Transform[3301377]["Magictype"] = 13185
	tYouDrawMeGuess_Transform[3301377]["MagictypeLevel"] = 0
	tYouDrawMeGuess_Transform[3301377]["MonsterId"] = 2416
	tYouDrawMeGuess_Transform[3301377]["Times"] = 300


local tYouDrawMeGuess_DynaNpc = {}
	tYouDrawMeGuess_DynaNpc["MapType"] = 1024
	tYouDrawMeGuess_DynaNpc["Type"] = 2
	
	tYouDrawMeGuess_DynaNpc["Sort"] = 32
	tYouDrawMeGuess_DynaNpc["Ownertype"] = 1
	tYouDrawMeGuess_DynaNpc["Life"] = 0
	tYouDrawMeGuess_DynaNpc["RegionType"] = 0
	tYouDrawMeGuess_DynaNpc["Base"] = 1
	tYouDrawMeGuess_DynaNpc["Linkid"] = 0
	
	
	tYouDrawMeGuess_DynaNpc["FurnitureLimit"] = {}
	tYouDrawMeGuess_DynaNpc["FurnitureLimit"][2] = 8
	tYouDrawMeGuess_DynaNpc["FurnitureLimit"][3] = 9
	tYouDrawMeGuess_DynaNpc["FurnitureLimit"][4] = 10
	tYouDrawMeGuess_DynaNpc["FurnitureLimit"][5] = 12
	tYouDrawMeGuess_DynaNpc["FurnitureLimit"][6] = 20



	

local tYouDrawMeGuess_HomeItemMsg = {}
	tYouDrawMeGuess_HomeItemMsg["Type"] = 2
	tYouDrawMeGuess_HomeItemMsg["Sort"] = 32
	tYouDrawMeGuess_HomeItemMsg["Ownertype"] = 1
	tYouDrawMeGuess_HomeItemMsg["Life"] = 0
	tYouDrawMeGuess_HomeItemMsg["RegionType"] = 0
	tYouDrawMeGuess_HomeItemMsg["Base"] = 1
	tYouDrawMeGuess_HomeItemMsg["Linkid"] = 0

	
local tYouDrawMeGuess_HomeItem = {}
-- 3301378	火精灵摆件
	tYouDrawMeGuess_HomeItem[3301378] = {}
	tYouDrawMeGuess_HomeItem[3301378]["LookFace"] = 44410
	tYouDrawMeGuess_HomeItem[3301378]["Task0"] = 94480070
	
-- 3301379	鬼刃摆件
	tYouDrawMeGuess_HomeItem[3301379] = {}
	tYouDrawMeGuess_HomeItem[3301379]["LookFace"] = 44420
	tYouDrawMeGuess_HomeItem[3301379]["Task0"] = 94480071

-- 3301380	嗜血蝙蝠摆件
	tYouDrawMeGuess_HomeItem[3301380] = {}
	tYouDrawMeGuess_HomeItem[3301380]["LookFace"] = 44430
	tYouDrawMeGuess_HomeItem[3301380]["Task0"] = 94480072

-- 3301381	叫天鸡摆件
	tYouDrawMeGuess_HomeItem[3301381] = {}
	tYouDrawMeGuess_HomeItem[3301381]["LookFace"] = 44440
	tYouDrawMeGuess_HomeItem[3301381]["Task0"] = 94480073

-- 3301382	翼蛇摆件
	tYouDrawMeGuess_HomeItem[3301382] = {}
	tYouDrawMeGuess_HomeItem[3301382]["LookFace"] = 44450
	tYouDrawMeGuess_HomeItem[3301382]["Task0"] = 94480074

-- 3301383	蛇人摆件
	tYouDrawMeGuess_HomeItem[3301383] = {}
	tYouDrawMeGuess_HomeItem[3301383]["LookFace"] = 44460
	tYouDrawMeGuess_HomeItem[3301383]["Task0"] = 94480075

-- 3301384	巨石怪摆件
	tYouDrawMeGuess_HomeItem[3301384] = {}
	tYouDrawMeGuess_HomeItem[3301384]["LookFace"] = 44470
	tYouDrawMeGuess_HomeItem[3301384]["Task0"] = 94480076

-- 3301385	银羽鹰王摆件
	tYouDrawMeGuess_HomeItem[3301385] = {}
	tYouDrawMeGuess_HomeItem[3301385]["LookFace"] = 44480
	tYouDrawMeGuess_HomeItem[3301385]["Task0"] = 94480077

-- 3301386	血翼红魔摆件
	tYouDrawMeGuess_HomeItem[3301386] = {}
	tYouDrawMeGuess_HomeItem[3301386]["LookFace"] = 44490
	tYouDrawMeGuess_HomeItem[3301386]["Task0"] = 94480078

-- 3301387	冰凌腾蛇摆件
	tYouDrawMeGuess_HomeItem[3301387] = {}
	tYouDrawMeGuess_HomeItem[3301387]["LookFace"] = 44500
	tYouDrawMeGuess_HomeItem[3301387]["Task0"] = 94480079


-- 怪物信息随机表
local tYouDrawMeGuess_MonsterRandom = {}
		tYouDrawMeGuess_MonsterRandom["Region"] = {}
		tYouDrawMeGuess_MonsterRandom["Region"][1] = {}
		tYouDrawMeGuess_MonsterRandom["Region"][1]["ItemChanceSum"] = 10000

		tYouDrawMeGuess_MonsterRandom["Region"][1][1] = {}
		tYouDrawMeGuess_MonsterRandom["Region"][1][1]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Region"][1][1]["ItemChance"] = 1600
		tYouDrawMeGuess_MonsterRandom["Region"][1][1]["Item_1"] = 1

		tYouDrawMeGuess_MonsterRandom["Region"][1][2] = {}
		tYouDrawMeGuess_MonsterRandom["Region"][1][2]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Region"][1][2]["ItemChance"] = 1400
		tYouDrawMeGuess_MonsterRandom["Region"][1][2]["Item_1"] = 2

		tYouDrawMeGuess_MonsterRandom["Region"][1][3] = {}
		tYouDrawMeGuess_MonsterRandom["Region"][1][3]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Region"][1][3]["ItemChance"] = 1400
		tYouDrawMeGuess_MonsterRandom["Region"][1][3]["Item_1"] = 3		

		tYouDrawMeGuess_MonsterRandom["Region"][1][4] = {}
		tYouDrawMeGuess_MonsterRandom["Region"][1][4]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Region"][1][4]["ItemChance"] = 1400
		tYouDrawMeGuess_MonsterRandom["Region"][1][4]["Item_1"] = 4

		tYouDrawMeGuess_MonsterRandom["Region"][1][5] = {}
		tYouDrawMeGuess_MonsterRandom["Region"][1][5]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Region"][1][5]["ItemChance"] = 1400
		tYouDrawMeGuess_MonsterRandom["Region"][1][5]["Item_1"] = 5
		
		tYouDrawMeGuess_MonsterRandom["Region"][1][6] = {}
		tYouDrawMeGuess_MonsterRandom["Region"][1][6]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Region"][1][6]["ItemChance"] = 1400
		tYouDrawMeGuess_MonsterRandom["Region"][1][6]["Item_1"] = 6		

		tYouDrawMeGuess_MonsterRandom["Region"][1][7] = {}
		tYouDrawMeGuess_MonsterRandom["Region"][1][7]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Region"][1][7]["ItemChance"] = 1400
		tYouDrawMeGuess_MonsterRandom["Region"][1][7]["Item_1"] = 7		

		
		--片区1怪物随机
		tYouDrawMeGuess_MonsterRandom["Monster"] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][1] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][1]["ItemChanceSum"] = 10000
		
		tYouDrawMeGuess_MonsterRandom["Monster"][1][1] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][1][1]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][1][1]["ItemChance"] = 4000
		tYouDrawMeGuess_MonsterRandom["Monster"][1][1]["Item_1"] = 1
		
		tYouDrawMeGuess_MonsterRandom["Monster"][1][2] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][1][2]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][1][2]["ItemChance"] = 3000
		tYouDrawMeGuess_MonsterRandom["Monster"][1][2]["Item_1"] = 3	
		
		tYouDrawMeGuess_MonsterRandom["Monster"][1][3] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][1][3]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][1][3]["ItemChance"] = 3000
		tYouDrawMeGuess_MonsterRandom["Monster"][1][3]["Item_1"] = 64		
		
		tYouDrawMeGuess_MonsterRandom["Monster"][2] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][2]["ItemChanceSum"] = 10000

		tYouDrawMeGuess_MonsterRandom["Monster"][2][1] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][2][1]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][2][1]["ItemChance"] = 5000
		tYouDrawMeGuess_MonsterRandom["Monster"][2][1]["Item_1"] = 6

		tYouDrawMeGuess_MonsterRandom["Monster"][2][2] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][2][2]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][2][2]["ItemChance"] = 5000
		tYouDrawMeGuess_MonsterRandom["Monster"][2][2]["Item_1"] = 9

		tYouDrawMeGuess_MonsterRandom["Monster"][3] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][3]["ItemChanceSum"] = 10000

		tYouDrawMeGuess_MonsterRandom["Monster"][3][1] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][3][1]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][3][1]["ItemChance"] = 4000
		tYouDrawMeGuess_MonsterRandom["Monster"][3][1]["Item_1"] = 10

		tYouDrawMeGuess_MonsterRandom["Monster"][3][2] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][3][2]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][3][2]["ItemChance"] = 3000
		tYouDrawMeGuess_MonsterRandom["Monster"][3][2]["Item_1"] = 12		
		
		tYouDrawMeGuess_MonsterRandom["Monster"][3][3] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][3][3]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][3][3]["ItemChance"] = 3000
		tYouDrawMeGuess_MonsterRandom["Monster"][3][3]["Item_1"] = 13

		tYouDrawMeGuess_MonsterRandom["Monster"][4] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][4]["ItemChanceSum"] = 10000

		tYouDrawMeGuess_MonsterRandom["Monster"][4][1] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][4][1]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][4][1]["ItemChance"] = 4000
		tYouDrawMeGuess_MonsterRandom["Monster"][4][1]["Item_1"] = 14

		tYouDrawMeGuess_MonsterRandom["Monster"][4][2] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][4][2]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][4][2]["ItemChance"] = 3000
		tYouDrawMeGuess_MonsterRandom["Monster"][4][2]["Item_1"] = 16		

		tYouDrawMeGuess_MonsterRandom["Monster"][4][3] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][4][3]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][4][3]["ItemChance"] = 3000
		tYouDrawMeGuess_MonsterRandom["Monster"][4][3]["Item_1"] = 17		
		
		tYouDrawMeGuess_MonsterRandom["Monster"][5] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][5]["ItemChanceSum"] = 10000

		tYouDrawMeGuess_MonsterRandom["Monster"][5][1] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][5][1]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][5][1]["ItemChance"] = 5000
		tYouDrawMeGuess_MonsterRandom["Monster"][5][1]["Item_1"] = 19

		tYouDrawMeGuess_MonsterRandom["Monster"][5][2] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][5][2]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][5][2]["ItemChance"] = 5000
		tYouDrawMeGuess_MonsterRandom["Monster"][5][2]["Item_1"] = 55

		tYouDrawMeGuess_MonsterRandom["Monster"][6] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][6]["ItemChanceSum"] = 10000

		tYouDrawMeGuess_MonsterRandom["Monster"][6][1] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][6][1]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][6][1]["ItemChance"] = 2500
		tYouDrawMeGuess_MonsterRandom["Monster"][6][1]["Item_1"] = 20

		tYouDrawMeGuess_MonsterRandom["Monster"][6][2] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][6][2]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][6][2]["ItemChance"] = 2500
		tYouDrawMeGuess_MonsterRandom["Monster"][6][2]["Item_1"] = 56		
			
		tYouDrawMeGuess_MonsterRandom["Monster"][6][3] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][6][3]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][6][3]["ItemChance"] = 2500
		tYouDrawMeGuess_MonsterRandom["Monster"][6][3]["Item_1"] = 57		
		
		tYouDrawMeGuess_MonsterRandom["Monster"][6][4] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][6][4]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][6][4]["ItemChance"] = 2500
		tYouDrawMeGuess_MonsterRandom["Monster"][6][4]["Item_1"] = 58

		tYouDrawMeGuess_MonsterRandom["Monster"][7] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][7]["ItemChanceSum"] = 10000

		tYouDrawMeGuess_MonsterRandom["Monster"][7][1] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][7][1]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][7][1]["ItemChance"] = 5000
		tYouDrawMeGuess_MonsterRandom["Monster"][7][1]["Item_1"] = 2411		
		
		tYouDrawMeGuess_MonsterRandom["Monster"][7][2] = {}
		tYouDrawMeGuess_MonsterRandom["Monster"][7][2]["RandomItemChanceType"] = 2
		tYouDrawMeGuess_MonsterRandom["Monster"][7][2]["ItemChance"] = 5000
		tYouDrawMeGuess_MonsterRandom["Monster"][7][2]["Item_1"] = 2416
		

---怪物对应的陷阱
local tYouDrawMeGuess_MonsterEffect = {}
	tYouDrawMeGuess_MonsterEffect[1] = "nihuawocai06"
	tYouDrawMeGuess_MonsterEffect[3] = "nihuawocai08"
	tYouDrawMeGuess_MonsterEffect[64] = "nihuawocai10"
	tYouDrawMeGuess_MonsterEffect[6] = "nihuawocai17"
	tYouDrawMeGuess_MonsterEffect[9] = "nihuawocai05"
	tYouDrawMeGuess_MonsterEffect[10] = "nihuawocai15"
	tYouDrawMeGuess_MonsterEffect[12] = "nihuawocai19"
	tYouDrawMeGuess_MonsterEffect[13] = "nihuawocai12"
	tYouDrawMeGuess_MonsterEffect[14] = "nihuawocai11"
	tYouDrawMeGuess_MonsterEffect[16] = "nihuawocai07"
	tYouDrawMeGuess_MonsterEffect[17] = "nihuawocai03"
	tYouDrawMeGuess_MonsterEffect[19] = "nihuawocai18"
	tYouDrawMeGuess_MonsterEffect[55] = "nihuawocai04"
	tYouDrawMeGuess_MonsterEffect[20] = "nihuawocai14"
	tYouDrawMeGuess_MonsterEffect[56] = "nihuawocai13"
	tYouDrawMeGuess_MonsterEffect[57] = "nihuawocai09"
	tYouDrawMeGuess_MonsterEffect[58] = "nihuawocai16"
	tYouDrawMeGuess_MonsterEffect[2411] = "nihuawocai01"
	tYouDrawMeGuess_MonsterEffect[2416] = "nihuawocai02"
	

local tYouDrawMeGuess_EffrctMap = {}
	tYouDrawMeGuess_EffrctMap["nPosx"] = 55
	tYouDrawMeGuess_EffrctMap["nPosy"] = 51

-- 若所显示湖岛强匪、须猕猴、天雷巨猿则给予2条免费提示
local tYouDrawMeGuess_OtherMonster = {}
	tYouDrawMeGuess_OtherMonster[55] = {}	
	tYouDrawMeGuess_OtherMonster[55]["Value"] = 2	
	
		
		
-- LOG
local tYouDrawMeGuess_PackLog = {}
		tYouDrawMeGuess_PackLog[3301316] = {}
		tYouDrawMeGuess_PackLog[3301316]["MonoEmoneyLog"] = "0,0,3301316,1,12000548,2,3,%d"
		
-- 奖励表
local tYouDrawMeGuess_Reward = {}
	-- 个人阶段奖励
	tYouDrawMeGuess_Reward["Level"] = {}
	-- 12积分可领
	tYouDrawMeGuess_Reward["Level"][1] = {}
	tYouDrawMeGuess_Reward["Level"][1]["RewardItem"] = {}
	tYouDrawMeGuess_Reward["Level"][1]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward["Level"][1]["RewardItem"][1]["Id"] = 3009000
	tYouDrawMeGuess_Reward["Level"][1]["RewardItem"][1]["Attr"] = "0 3 3"
	-- tYouDrawMeGuess_Reward["Level"][1]["RewardEffect"] = {}
	-- tYouDrawMeGuess_Reward["Level"][1]["RewardEffect"]["Effect"] = "zf2-e285"
	tYouDrawMeGuess_Reward["Level"][1]["LogId"] = 12000548
	-- 20积分可领
	tYouDrawMeGuess_Reward["Level"][2] = {}
	tYouDrawMeGuess_Reward["Level"][2]["RewardItem"] = {}
	tYouDrawMeGuess_Reward["Level"][2]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward["Level"][2]["RewardItem"][1]["Id"] = 3009000
	tYouDrawMeGuess_Reward["Level"][2]["RewardItem"][1]["Attr"] = "0 5 3"
	tYouDrawMeGuess_Reward["Level"][2]["RewardStrengthValue"] = {}
	tYouDrawMeGuess_Reward["Level"][2]["RewardStrengthValue"]["Value"] = 200
	-- tYouDrawMeGuess_Reward["Level"][2]["RewardEffect"] = {}
	-- tYouDrawMeGuess_Reward["Level"][2]["RewardEffect"]["Effect"] = "zf2-e285"
	tYouDrawMeGuess_Reward["Level"][2]["LogId"] = 12000548
	-- 30积分可领
	tYouDrawMeGuess_Reward["Level"][3] = {}
	tYouDrawMeGuess_Reward["Level"][3]["RewardItem"] = {}
	tYouDrawMeGuess_Reward["Level"][3]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward["Level"][3]["RewardItem"][1]["Id"] = 3003124
	tYouDrawMeGuess_Reward["Level"][3]["RewardItem"][1]["Attr"] = "0 5 3"
	tYouDrawMeGuess_Reward["Level"][3]["RewardStrengthValue"] = {}
	tYouDrawMeGuess_Reward["Level"][3]["RewardStrengthValue"]["Value"] = 300
	-- tYouDrawMeGuess_Reward["Level"][3]["RewardEffect"] = {}
	-- tYouDrawMeGuess_Reward["Level"][3]["RewardEffect"]["Effect"] = "zf2-e285"
	tYouDrawMeGuess_Reward["Level"][3]["LogId"] = 12000548
	-- 40积分可领
	tYouDrawMeGuess_Reward["Level"][4] = {}
	tYouDrawMeGuess_Reward["Level"][4]["RewardItem"] = {}
	tYouDrawMeGuess_Reward["Level"][4]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward["Level"][4]["RewardItem"][1]["Id"] = 3009001
	tYouDrawMeGuess_Reward["Level"][4]["RewardItem"][1]["Attr"] = "0 1"
	tYouDrawMeGuess_Reward["Level"][4]["RewardStrengthValue"] = {}
	tYouDrawMeGuess_Reward["Level"][4]["RewardStrengthValue"]["Value"] = 500
	-- tYouDrawMeGuess_Reward["Level"][4]["RewardEffect"] = {}
	-- tYouDrawMeGuess_Reward["Level"][4]["RewardEffect"]["Effect"] = "zf2-e285"
	tYouDrawMeGuess_Reward["Level"][4]["LogId"] = 12000548
	-- 50积分可领
	tYouDrawMeGuess_Reward["Level"][5] = {}
	tYouDrawMeGuess_Reward["Level"][5]["RewardItem"] = {}
	tYouDrawMeGuess_Reward["Level"][5]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward["Level"][5]["RewardItem"][1]["Id"] = 3009001
	tYouDrawMeGuess_Reward["Level"][5]["RewardItem"][1]["Attr"] = "0 3"
	tYouDrawMeGuess_Reward["Level"][5]["RewardItem"][2] = {}
	tYouDrawMeGuess_Reward["Level"][5]["RewardItem"][2]["Id"] = 4050001
	tYouDrawMeGuess_Reward["Level"][5]["RewardItem"][2]["Attr"] = "0 3 3"
	-- tYouDrawMeGuess_Reward["Level"][5]["RewardEffect"] = {}
	-- tYouDrawMeGuess_Reward["Level"][5]["RewardEffect"]["Effect"] = "zf2-e285"
	tYouDrawMeGuess_Reward["Level"][5]["LogId"] = 12000548
	
	-- 任务奖励
	tYouDrawMeGuess_Reward["Task"] = {}
	-- 完成5次奖励
	tYouDrawMeGuess_Reward["Task"][1] = {}
	tYouDrawMeGuess_Reward["Task"][1]["RewardItem"] = {}
	tYouDrawMeGuess_Reward["Task"][1]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward["Task"][1]["RewardItem"][1]["Id"] = 3307510
	tYouDrawMeGuess_Reward["Task"][1]["RewardItem"][1]["Attr"] = "0 1"
	tYouDrawMeGuess_Reward["Task"][1]["RewardItem"][2] = {}
	tYouDrawMeGuess_Reward["Task"][1]["RewardItem"][2]["Id"] = 4050001
	tYouDrawMeGuess_Reward["Task"][1]["RewardItem"][2]["Attr"] = "0 3 3"
	-- tYouDrawMeGuess_Reward["Task"][1]["RewardEffect"] = {}
	-- tYouDrawMeGuess_Reward["Task"][1]["RewardEffect"]["Effect"] = "zf2-e285"
	tYouDrawMeGuess_Reward["Task"][1]["LogId"] = 12000548
	tYouDrawMeGuess_Reward["Task"][1]["EmoneyLog"] = "350	21175	0	0	1	"
	-- 完成5次以上统一领取的奖励
	tYouDrawMeGuess_Reward["Task"][2] = {}
	tYouDrawMeGuess_Reward["Task"][2]["RewardItem"] = {}
	tYouDrawMeGuess_Reward["Task"][2]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward["Task"][2]["RewardItem"][1]["Id"] = 3307510
	tYouDrawMeGuess_Reward["Task"][2]["RewardItem"][1]["Attr"] = "0 1"
	tYouDrawMeGuess_Reward["Task"][2]["RewardItem"][2] = {}
	tYouDrawMeGuess_Reward["Task"][2]["RewardItem"][2]["Id"] = 4050001
	tYouDrawMeGuess_Reward["Task"][2]["RewardItem"][2]["Attr"] = "0 3 3"
	tYouDrawMeGuess_Reward["Task"][2]["RewardItem"][3] = {}
	tYouDrawMeGuess_Reward["Task"][2]["RewardItem"][3]["Id"] = 3307511
	tYouDrawMeGuess_Reward["Task"][2]["RewardItem"][3]["Attr"] = "0 %d"
	-- tYouDrawMeGuess_Reward["Task"][2]["RewardEffect"] = {}
	-- tYouDrawMeGuess_Reward["Task"][2]["RewardEffect"]["Effect"] = "zf2-e285"
	tYouDrawMeGuess_Reward["Task"][2]["LogId"] = 12000548
	tYouDrawMeGuess_Reward["Task"][2]["EmoneyLog"] = "350	21175	0	0	1	"
	-- 完成5次以上并领过一次奖励
	tYouDrawMeGuess_Reward["Task"][3] = {}
	tYouDrawMeGuess_Reward["Task"][3]["RewardItem"] = {}
	tYouDrawMeGuess_Reward["Task"][3]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward["Task"][3]["RewardItem"][1]["Id"] = 3307511
	tYouDrawMeGuess_Reward["Task"][3]["RewardItem"][1]["Attr"] = "0 %d"
	-- tYouDrawMeGuess_Reward["Task"][3]["RewardEffect"] = {}
	-- tYouDrawMeGuess_Reward["Task"][3]["RewardEffect"]["Effect"] = "zf2-e285"
	tYouDrawMeGuess_Reward["Task"][3]["LogId"] = 12000548
	tYouDrawMeGuess_Reward["Task"][3]["EmoneyLog"] = "350	21177	0	0	%d	"
	
	-- 同步简体
	-- 黄色神纹随机包（赠）
	-- 黄色神纹包
	tYouDrawMeGuess_Reward[3306919] = {}
	tYouDrawMeGuess_Reward[3306919]["ItemChanceSum"] = 10000
	
	-- 夺魂 7.70%
	tYouDrawMeGuess_Reward[3306919][1] = {}
	tYouDrawMeGuess_Reward[3306919][1]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][1]["ItemChance"] = 200
	tYouDrawMeGuess_Reward[3306919][1]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][1]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][1]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][1]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][1]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][1]["RewardItem"][1]["Id"] = 4031301
	tYouDrawMeGuess_Reward[3306919][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][1]["LogId"] = 12000960
	
	-- 破玄元 7.70%
	tYouDrawMeGuess_Reward[3306919][2] = {}
	tYouDrawMeGuess_Reward[3306919][2]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][2]["ItemChance"] = 400
	tYouDrawMeGuess_Reward[3306919][2]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][2]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][2]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][2]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][2]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][2]["RewardItem"][1]["Id"] = 4030101
	tYouDrawMeGuess_Reward[3306919][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][2]["LogId"] = 12000960
	
	-- 撼星诀 7.70%
	tYouDrawMeGuess_Reward[3306919][3] = {}
	tYouDrawMeGuess_Reward[3306919][3]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][3]["ItemChance"] = 1000
	tYouDrawMeGuess_Reward[3306919][3]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][3]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][3]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][3]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][3]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][3]["RewardItem"][1]["Id"] = 4030201
	tYouDrawMeGuess_Reward[3306919][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][3]["LogId"] = 12000960
	
	-- 血回元 7.69%
	tYouDrawMeGuess_Reward[3306919][4] = {}
	tYouDrawMeGuess_Reward[3306919][4]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][4]["ItemChance"] = 1000
	tYouDrawMeGuess_Reward[3306919][4]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][4]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][4]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][4]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][4]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][4]["RewardItem"][1]["Id"] = 4030301
	tYouDrawMeGuess_Reward[3306919][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][4]["LogId"] = 12000960
	
	-- 万物生 7.69%
	tYouDrawMeGuess_Reward[3306919][5] = {}
	tYouDrawMeGuess_Reward[3306919][5]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][5]["ItemChance"] = 800
	tYouDrawMeGuess_Reward[3306919][5]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][5]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][5]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][5]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][5]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][5]["RewardItem"][1]["Id"] = 4030401
	tYouDrawMeGuess_Reward[3306919][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][5]["LogId"] = 12000960
	
	-- 无懈可击 7.69%
	tYouDrawMeGuess_Reward[3306919][6] = {}
	tYouDrawMeGuess_Reward[3306919][6]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][6]["ItemChance"] = 1000
	tYouDrawMeGuess_Reward[3306919][6]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][6]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][6]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][6]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][6]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][6]["RewardItem"][1]["Id"] = 4030501
	tYouDrawMeGuess_Reward[3306919][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][6]["LogId"] = 12000960
	
	-- 狂暴克星 7.69%
	tYouDrawMeGuess_Reward[3306919][7] = {}
	tYouDrawMeGuess_Reward[3306919][7]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][7]["ItemChance"] = 800
	tYouDrawMeGuess_Reward[3306919][7]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][7]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][7]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][7]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][7]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][7]["RewardItem"][1]["Id"] = 4030601
	tYouDrawMeGuess_Reward[3306919][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][7]["LogId"] = 12000960
	
	-- 风卷残云 7.69%
	tYouDrawMeGuess_Reward[3306919][8] = {}
	tYouDrawMeGuess_Reward[3306919][8]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][8]["ItemChance"] = 800
	tYouDrawMeGuess_Reward[3306919][8]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][8]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][8]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][8]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][8]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][8]["RewardItem"][1]["Id"] = 4030701
	tYouDrawMeGuess_Reward[3306919][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][8]["LogId"] = 12000960
	
	-- 回灵术 7.69%
	tYouDrawMeGuess_Reward[3306919][9] = {}
	tYouDrawMeGuess_Reward[3306919][9]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][9]["ItemChance"] = 800
	tYouDrawMeGuess_Reward[3306919][9]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][9]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][9]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][9]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][9]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][9]["RewardItem"][1]["Id"] = 4030801
	tYouDrawMeGuess_Reward[3306919][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][9]["LogId"] = 12000960

	-- 杀破狼 7.69%
	tYouDrawMeGuess_Reward[3306919][10] = {}
	tYouDrawMeGuess_Reward[3306919][10]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][10]["ItemChance"] = 1000
	tYouDrawMeGuess_Reward[3306919][10]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][10]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][10]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][10]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][10]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][10]["RewardItem"][1]["Id"] = 4030901
	tYouDrawMeGuess_Reward[3306919][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][10]["LogId"] = 12000960
	
	-- 追命 7.69%
	tYouDrawMeGuess_Reward[3306919][11] = {}
	tYouDrawMeGuess_Reward[3306919][11]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][11]["ItemChance"] = 200
	tYouDrawMeGuess_Reward[3306919][11]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][11]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][11]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][11]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][11]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][11]["RewardItem"][1]["Id"] = 4031001
	tYouDrawMeGuess_Reward[3306919][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][11]["LogId"] = 12000960
	
	-- 奔雷不息 7.69%
	tYouDrawMeGuess_Reward[3306919][12] = {}
	tYouDrawMeGuess_Reward[3306919][12]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][12]["ItemChance"] = 1000
	tYouDrawMeGuess_Reward[3306919][12]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][12]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][12]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][12]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][12]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][12]["RewardItem"][1]["Id"] = 4031101
	tYouDrawMeGuess_Reward[3306919][12]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][12]["LogId"] = 12000960
	
	-- 安魂定魄 7.69%
	tYouDrawMeGuess_Reward[3306919][13] = {}
	tYouDrawMeGuess_Reward[3306919][13]["RandomItemChanceType"] = 2
	tYouDrawMeGuess_Reward[3306919][13]["ItemChance"] = 1000
	tYouDrawMeGuess_Reward[3306919][13]["RewardEffect"] = {}
	tYouDrawMeGuess_Reward[3306919][13]["RewardEffect"]["SzObj"] = tYouDrawMeGuess_Cont["SzObj"]
	tYouDrawMeGuess_Reward[3306919][13]["RewardEffect"]["Effect"] = tYouDrawMeGuess_Cont["ItemEffect"]
	tYouDrawMeGuess_Reward[3306919][13]["RewardItem"] = {}
	tYouDrawMeGuess_Reward[3306919][13]["RewardItem"][1] = {}
	tYouDrawMeGuess_Reward[3306919][13]["RewardItem"][1]["Id"] = 4031201
	tYouDrawMeGuess_Reward[3306919][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tYouDrawMeGuess_Reward[3306919][13]["LogId"] = 12000960
	
	
	
-- 排行榜模板
	tRankingFunc_Info[22636] = {}
	tRankingFunc_Info[22636]["ActiveTime"] = tActivityTime["YouDrawMeGuess"]["SandMailTime"]
	tRankingFunc_Info[22636]["DayTime"] = {}
	tRankingFunc_Info[22636]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[22636]["ResetTime"] = {}
	tRankingFunc_Info[22636]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[22636]["Global"] = {52337,52338,52339,52340}
	tRankingFunc_Info[22636]["BeforeGlobal"] = {52353,52354,52355,52356}
	tRankingFunc_Info[22636]["RankNum"] = 10
	
	tRankingFunc_Info[22636]["Mail"] = {}
	tRankingFunc_Info[22636]["Mail"]["ActiveTime"] = tActivityTime["YouDrawMeGuess"]["SandMailTime"]
	tRankingFunc_Info[22636]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[22636]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[22636]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[22636]["Mail"]["Reward"] = {}
	tRankingFunc_Info[22636]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[22636]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[22636]["Mail"]["Reward"][1]["ActionId"] = 568549
	tRankingFunc_Info[22636]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[22636]["Mail"]["Reward"][1]["Title"] = tYouDrawMeGuess_Text["MailMsg"]["Title"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][1]["Sender"] = tYouDrawMeGuess_Text["MailMsg"]["Sender"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][1]["Content"] = tYouDrawMeGuess_Text["MailMsg"]["Content"][1]
	tRankingFunc_Info[22636]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[22636]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[22636]["Mail"]["Reward"][2]["ActionId"] = 568550
	tRankingFunc_Info[22636]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[22636]["Mail"]["Reward"][2]["Title"] = tYouDrawMeGuess_Text["MailMsg"]["Title"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][2]["Sender"] = tYouDrawMeGuess_Text["MailMsg"]["Sender"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][2]["Content"] = tYouDrawMeGuess_Text["MailMsg"]["Content"][2]
	tRankingFunc_Info[22636]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[22636]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[22636]["Mail"]["Reward"][3]["ActionId"] = 568551
	tRankingFunc_Info[22636]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[22636]["Mail"]["Reward"][3]["Title"] = tYouDrawMeGuess_Text["MailMsg"]["Title"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][3]["Sender"] = tYouDrawMeGuess_Text["MailMsg"]["Sender"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][3]["Content"] = tYouDrawMeGuess_Text["MailMsg"]["Content"][3]
	tRankingFunc_Info[22636]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[22636]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[22636]["Mail"]["Reward"][4]["ActionId"] = 568552
	tRankingFunc_Info[22636]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[22636]["Mail"]["Reward"][4]["Title"] = tYouDrawMeGuess_Text["MailMsg"]["Title"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][4]["Sender"] = tYouDrawMeGuess_Text["MailMsg"]["Sender"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][4]["Content"] = tYouDrawMeGuess_Text["MailMsg"]["Content"][4]
	tRankingFunc_Info[22636]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[22636]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[22636]["Mail"]["Reward"][5]["ActionId"] = 568553
	tRankingFunc_Info[22636]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[22636]["Mail"]["Reward"][5]["Title"] = tYouDrawMeGuess_Text["MailMsg"]["Title"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][5]["Sender"] = tYouDrawMeGuess_Text["MailMsg"]["Sender"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][5]["Content"] = tYouDrawMeGuess_Text["MailMsg"]["Content"][5]
	tRankingFunc_Info[22636]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[22636]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[22636]["Mail"]["Reward"][6]["ActionId"] = 568554
	tRankingFunc_Info[22636]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[22636]["Mail"]["Reward"][6]["Title"] = tYouDrawMeGuess_Text["MailMsg"]["Title"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][6]["Sender"] = tYouDrawMeGuess_Text["MailMsg"]["Sender"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][6]["Content"] = tYouDrawMeGuess_Text["MailMsg"]["Content"][6]
	tRankingFunc_Info[22636]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[22636]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[22636]["Mail"]["Reward"][7]["ActionId"] = 568555
	tRankingFunc_Info[22636]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[22636]["Mail"]["Reward"][7]["Title"] = tYouDrawMeGuess_Text["MailMsg"]["Title"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][7]["Sender"] = tYouDrawMeGuess_Text["MailMsg"]["Sender"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][7]["Content"] = tYouDrawMeGuess_Text["MailMsg"]["Content"][7]
	tRankingFunc_Info[22636]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[22636]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[22636]["Mail"]["Reward"][8]["ActionId"] = 568556
	tRankingFunc_Info[22636]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[22636]["Mail"]["Reward"][8]["Title"] = tYouDrawMeGuess_Text["MailMsg"]["Title"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][8]["Sender"] = tYouDrawMeGuess_Text["MailMsg"]["Sender"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][8]["Content"] = tYouDrawMeGuess_Text["MailMsg"]["Content"][8]
	tRankingFunc_Info[22636]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[22636]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[22636]["Mail"]["Reward"][9]["ActionId"] = 568557
	tRankingFunc_Info[22636]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[22636]["Mail"]["Reward"][9]["Title"] = tYouDrawMeGuess_Text["MailMsg"]["Title"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][9]["Sender"] = tYouDrawMeGuess_Text["MailMsg"]["Sender"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][9]["Content"] = tYouDrawMeGuess_Text["MailMsg"]["Content"][9]
	tRankingFunc_Info[22636]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[22636]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[22636]["Mail"]["Reward"][10]["ActionId"] = 568558
	tRankingFunc_Info[22636]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[22636]["Mail"]["Reward"][10]["Title"] = tYouDrawMeGuess_Text["MailMsg"]["Title"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][10]["Sender"] = tYouDrawMeGuess_Text["MailMsg"]["Sender"]
	tRankingFunc_Info[22636]["Mail"]["Reward"][10]["Content"] = tYouDrawMeGuess_Text["MailMsg"]["Content"][10]
	

------------------------------------------------------------------------------------各种逻辑部分		
-- 同步简体逻辑
function YouDrawMeGuess_OpenGodGift(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end 
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tYouDrawMeGuess_Reward,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		return Sys_MsgBox(string.format(tYouDrawMeGuess_Text["FullBag"],nSpace))
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandomNoTip(tYouDrawMeGuess_Reward,nItemId)
	end
end

-- 使用灵玉
function YouDrawMeGuess_NewItem(nItemId)
	-- 检测时间
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_MsgBox(tYouDrawMeGuess_Text[nItemId]["OutTime"])
			-- 记录log
			local sLog = string.format(tYouDrawMeGuess_Cont["NormalLog"]["DelItem"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	
	Sys_MsgBox(tYouDrawMeGuess_Text[nItemId]["FindNpc"],"NpcPosition_PathFind</N>22636",nil)
end

-- 上交灵玉检测
function YouDrawMeGuess_HandInJadeChk(nNpcId)
	local nItemId1= tYouDrawMeGuess_Cont["NewItemId"][1]
	local nItemId2= tYouDrawMeGuess_Cont["NewItemId"][2]
	local tOption = {}
	
	-- 时间检测
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 检测背包是否有紫灵玉
	if Item_ChkItem(nItemId1) then
		table.insert(tOption,221)
	end
	
	-- 检测背包是否有青灵玉
	if Item_ChkItem(nItemId2) then
		table.insert(tOption,222)
	end
	
	-- 判断背包是否存在灵玉
	if #tOption == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	else
		table.insert(tOption,223)
		-- 取积分值
		local nEvent_12 = tYouDrawMeGuess_Stc[12]["EventType"]
		local nType_12 = tYouDrawMeGuess_Stc[12]["DataType"]
		
		-- 隔天重置掩码
		if Task_StcInterval(nEvent_12,nType_12,1,4) then
			Task_SetStatistic(nEvent_12,nType_12,0,1)
			Task_SetStcTimestamp(nEvent_12,nType_12,0)
		end
		
		local nData_12 = Get_UserStatisticValue(nEvent_12,nType_12)
		
		-- 分值判断
		if nData_12 >= tYouDrawMeGuess_Cont["Score"][5] then
			tNpcGossip[nNpcId]["Text2-2"] = {221,222}
			tNpcGossip[nNpcId]["Text222"] = string.format(tYouDrawMeGuess_Text[nNpcId]["Text222"],nData_12)
		else
			tNpcGossip[nNpcId]["Text2-2"] = {221,223}
			for i=1, 5 do
				local nNum = tYouDrawMeGuess_Cont["Score"][i]
				if nData_12 < nNum then
					local sReward = tYouDrawMeGuess_Text[nNpcId]["Reward"][i]
					tNpcGossip[nNpcId]["Text223"] = string.format(tYouDrawMeGuess_Text[nNpcId]["Text223"],nData_12,nNum,sReward)
					break
				end
			end
		end
		
		tNpcGossip[nNpcId]["tOption2-2"] = tOption
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	end
end

-- 上交灵玉
function YouDrawMeGuess_HandInJade(nNpcId,nItemId)
	local nEvent_12 = tYouDrawMeGuess_Stc[12]["EventType"]
	local nType_12 = tYouDrawMeGuess_Stc[12]["DataType"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_12,nType_12,1,4) then
		Task_SetStatistic(nEvent_12,nType_12,0,1)
		Task_SetStcTimestamp(nEvent_12,nType_12,0)
	end
	
	-- 时间检测
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 物品检测
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nItemNum = Get_CountItemType(nItemId,0)
	local nItemName = Get_ItemtypeName(nItemId)
	local nScore = tYouDrawMeGuess_Cont["Score"][nItemId] * nItemNum
	if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
		Task_AddStatistic(nEvent_12,nType_12,nScore,1)
		Task_SetStcTimestamp(nEvent_12,nType_12,0)
		
		-- 上交灵玉记emoneylog
		if nItemId == 3307510 then
			Sys_SaveEmoneyBuy(string.format(tYouDrawMeGuess_Cont["EmoneyLog"][5], nItemNum))
		elseif nItemId == 3307511 then
			Sys_SaveEmoneyBuy(string.format(tYouDrawMeGuess_Cont["EmoneyLog"][6], nItemNum))
		end
		
		-- 排行榜设置
		local nData_12 = Get_UserStatisticValue(nEvent_12,nType_12)
		local nUserId = Get_UserId()
		RankingFunc_SetInfo(tYouDrawMeGuess_Cont["nRankIndex"],nData_12,nUserId)
		
		local sTalk = string.format(tYouDrawMeGuess_Text["HandInJadeSuccess"],nItemNum,nItemName,nScore)
		Sys_MsgBox(sTalk)
	end
end


-- 领取奖励
function YouDrawMeGuess_GetReward(nNpcId)
	local nEvent_11 = tYouDrawMeGuess_Stc[11]["EventType"]
	local nType_11 = tYouDrawMeGuess_Stc[11]["DataType"]
	local nLimit_11 = tYouDrawMeGuess_Stc[11]["Limit"]
	local nEvent_12 = tYouDrawMeGuess_Stc[12]["EventType"]
	local nType_12 = tYouDrawMeGuess_Stc[12]["DataType"]
	
	-- 时间检测
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_11,nType_11,1,4) then
		Task_SetStatistic(nEvent_11,nType_11,0,1)
		Task_SetStcTimestamp(nEvent_11,nType_11,0)
	end
	if Task_StcInterval(nEvent_12,nType_12,1,4) then
		Task_SetStatistic(nEvent_12,nType_12,0,1)
		Task_SetStcTimestamp(nEvent_12,nType_12,0)
	end
	
	local nData_11 = Get_UserStatisticValue(nEvent_11,nType_11)
	local nData_12 = Get_UserStatisticValue(nEvent_12,nType_12)
	
	if nData_11 == nLimit_11 then
		return
	end
	
	-- 领奖(从低阶段奖励开始领)
	local nIndex = nData_11 + 1
	if nData_12 >= tYouDrawMeGuess_Cont["Score"][nIndex] then
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tYouDrawMeGuess_Reward["Level"][nIndex])
		if not User_CheckLeftSpace(nSpace) then
			tNpcGossip[nNpcId]["Text311"] = string.format(tYouDrawMeGuess_Text[nNpcId]["Text311"],nSpace)
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		
		Task_AddStatistic(nEvent_11,nType_11,1,1)
		Task_SetStcTimestamp(nEvent_11,nType_11,0)
		
		RewardTemplate_UseItemAndMsg(tYouDrawMeGuess_Reward["Level"][nIndex])
		-- 可继续领奖则跳转
		if nData_12 >= tYouDrawMeGuess_Cont["Score"][nIndex+1] then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
		end
	end
end

-- 领取任务奖励
function YouDrawMeGuess_GetTaskReward(nNpcId)
	-- 时间检测
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	
	local nEvent_8 = tYouDrawMeGuess_Stc[8]["EventType"]
	local nType_8 = tYouDrawMeGuess_Stc[8]["DataType"]
	local nEvent_13 = tYouDrawMeGuess_Stc[13]["EventType"]
	local nType_13 = tYouDrawMeGuess_Stc[13]["DataType"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_8,nType_8,1,4) then
		Task_SetStatistic(nEvent_8,nType_8,0,1)
		Task_SetStcTimestamp(nEvent_8,nType_8,0)
	end
	if Task_StcInterval(nEvent_13,nType_13,1,4) then
		Task_SetStatistic(nEvent_13,nType_13,0,1)
		Task_SetStcTimestamp(nEvent_13,nType_13,0)
	end
	
	local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
	local nRewardNum = nData_8-4			-- 可领奖次数
	local nData_13 = Get_UserStatisticValue(nEvent_13,nType_13)
	
	-- 无奖励可领
	if nRewardNum <= nData_13 then
		tNpcGossip[nNpcId]["Text221"] = string.format(tYouDrawMeGuess_Text[nNpcId]["Text221"],nData_8)
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	else
		local nLeft = nRewardNum - nData_13
		local bExtra = false
		local tReward = {}
		
		-- 设置奖励表
		if nLeft == 1 and nData_13 == 0 then
			tReward = CommonFunc_Copy(tYouDrawMeGuess_Reward["Task"][1])
		elseif nLeft > 1 and nData_13 == 0 then
			bExtra = true
			tReward = CommonFunc_Copy(tYouDrawMeGuess_Reward["Task"][2])
			tReward["RewardItem"][3]["Attr"] = string.format(tYouDrawMeGuess_Reward["Task"][2]["RewardItem"][3]["Attr"], nLeft-1)
		else
			tReward = CommonFunc_Copy(tYouDrawMeGuess_Reward["Task"][3])
			tReward["RewardItem"][1]["Attr"] = string.format(tYouDrawMeGuess_Reward["Task"][3]["RewardItem"][1]["Attr"], nLeft)
			tReward["EmoneyLog"] = string.format(tYouDrawMeGuess_Reward["Task"][3]["EmoneyLog"], nLeft)
		end
		
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tReward)
		if not User_CheckLeftSpace(nSpace) then
			tNpcGossip[nNpcId]["Text231"] = string.format(tYouDrawMeGuess_Text[nNpcId]["Text231"],nSpace)
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
		
		Task_AddStatistic(nEvent_13,nType_13,nLeft,1)
		Task_SetStcTimestamp(nEvent_13,nType_13,0)
		
		RewardTemplate_UseItemAndMsg(tReward)
		
		if bExtra then
			Sys_SaveEmoneyBuy(string.format(tYouDrawMeGuess_Reward["Task"][3]["EmoneyLog"], nLeft-1))
		end
	end
end

--狐妖的天石宝盒
function YouDrawMeGuess_Item(nItemId,sItemName)
	if Get_UserMonoEMoney() + tYouDrawMeGuess_Cont["Limit"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tYouDrawMeGuess_Text[nItemId]["MonoEmoneyLimit"])
		return
	end

--给天石或赠点
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local flat,tNum = Probabil_RandomAward(tYouDrawMeGuess_Cppack["Reward"],1)
		local nStart = tNum[1]["tAward"][1]["Start"]
		local nEnd = tNum[1]["tAward"][1]["End"]
		local nCp = math.random(nStart,nEnd)

		local sText = string.format(tYouDrawMeGuess_Text[nItemId]["MonoEmoney"],nCp)
		local sLog = string.format(tYouDrawMeGuess_Log[1][4],nCp)
		User_AddEMoneyMono(nCp)
		Sys_SaveActionFestivalLog(sLog)
		Sys_SaveEmoneyBuy(string.format(tYouDrawMeGuess_Cont["EmoneyLog"][1],-nCp,-nCp))
		User_TalkChannel2005(sText)
	end
end

-- 变身卡逻辑
function YouDrawMeGuess_ItemTransform(nItemId,sItemName)
	local sLog = ""
	-- 是否在可使用时间前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["YouDrawMeGuess"]["FurnitureTime"]) then
		User_TalkChannel2005(tYouDrawMeGuess_OtherMsg["TransCard"]["BeforTime"])
		return
	end
	
	if CommonFunc_GetAfterActivityTime(tActivityTime["YouDrawMeGuess"]["FurnitureTime"]) then
		if Item_DelItem(nItemId) then
			sLog = string.format(tYouDrawMeGuess_Log[1][1],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tYouDrawMeGuess_OtherMsg["TransCard"]["DeleteItem"])
		end
		return
	end
	
	-- 判断是否间隔10分钟时间
	local nEvent = tYouDrawMeGuess_Stc[1]["EventType"]
	local nType = tYouDrawMeGuess_Stc[1]["DataType"]
	local nDelay = tYouDrawMeGuess_Stc[1]["nDelay"]
	local nTimeType = tYouDrawMeGuess_Stc[1]["nTimeType"]
	
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		if not Task_StcInterval(nEvent,nType,nDelay,nTimeType) then
			User_TalkChannel2005(tYouDrawMeGuess_OtherMsg["TransCard"]["IntervalTime"])
			return
		end
	end
	-- 删除物品，变身
	if Item_DelItem(nItemId) then
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	
		local nMagictype = tYouDrawMeGuess_Transform[nItemId]["Magictype"]
		local nMagictypeLevel = tYouDrawMeGuess_Transform[nItemId]["MagictypeLevel"]
		local nMonsterId = tYouDrawMeGuess_Transform[nItemId]["MonsterId"]
		local nTimes = tYouDrawMeGuess_Transform[nItemId]["Times"]
		sLog = string.format(tYouDrawMeGuess_Log[1][2],nItemId,nMonsterId)
		Sys_SaveActionFestivalLog(sLog)
		User_TransForm(nMagictype,nMagictypeLevel,nMonsterId,nTimes)
		local sTransMsg = string.format(tYouDrawMeGuess_OtherMsg["KillMonster"][10],tYouDrawMeGuess_OtherMsg["Transform"][nItemId])
		User_TalkChannel2005(sTransMsg)
	end
end

-- 家具统一接口
function YouDrawMeGuess_HomeItemfunction(nItemId,sItemName)
		-- 是否在活动时间前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["YouDrawMeGuess"]["FurnitureTime"]) then
		return
	end
	
	-- panduan shifou 
	for k,v in pairs(tYouDrawMeGuess_Cont["Furniture"]) do
		if nItemId == v then
		
			if CommonFunc_GetAfterActivityTime(tActivityTime["YouDrawMeGuess"]["FurnitureTime"]) then
				if Item_DelItem(nItemId) then
					sLog = string.format(tYouDrawMeGuess_Log[1][1],nItemId)
					Sys_SaveActionFestivalLog(sLog)
					User_TalkChannel2005(tYouDrawMeGuess_OtherMsg["TransCard"]["DeleteItem"])
				end
				return
			end
			break
		end	
	end	

	
	-- 活动时间中
	--取玩家所在地图的id和属性,用于判断玩家是否在自己家中
	local nNowMapId = Get_UserMapId() 
	local nMapType = Get_MapType(nNowMapId)
	local nMapLev = Get_MapResLev(nNowMapId)
	--在期限内,检测地图属性是否为家庭属性1024,地图是否属于玩家
	if not Sys_ParseNumbersContain(tYouDrawMeGuess_DynaNpc["MapType"],nMapType) then
		User_TalkChannel2007(tYouDrawMeGuess_OtherMsg["HomeItemMsg"][1])
		return
	end
	if Get_MapOwnerId() ~= Get_UserId() then
		User_TalkChannel2007(tYouDrawMeGuess_OtherMsg["HomeItemMsg"][2])
		return
	end
	--当前地图为玩家的家,检测房子等级,获取家具上限
	local nFurnitureLimit = 0
	if 2 <= nMapLev and nMapLev <= 6 then
		nFurnitureLimit = tYouDrawMeGuess_DynaNpc["FurnitureLimit"][nMapLev]
	else
		User_TalkChannel2005(tYouDrawMeGuess_OtherMsg["HomeItemMsg"][3])
		return
	end
	--判断玩家房子内的家具数量
	if Get_NpcCount() >= nFurnitureLimit then
		local sErrorTip = string.format(tYouDrawMeGuess_OtherMsg["HomeItemMsg"][4],nMapLev,tYouDrawMeGuess_DynaNpc["FurnitureLimit"][nMapLev])
		User_TalkChannel2007(sErrorTip)
		return
	end
	--创建一个npc
	local nNpcType = tYouDrawMeGuess_DynaNpc["Type"]
	local nNpcLookface = tYouDrawMeGuess_HomeItem[nItemId]["LookFace"]
	Npc_RequestLayNpcByItem("</F>YouDrawMeGuess_CreateHomeNpc</N>" .. nItemId,nNpcType,nNpcLookface,0,0)

end

--
--创建npc后调用的函数
function YouDrawMeGuess_CreateHomeNpc(nItemId)
	if Item_ChkItem(nItemId) then
		local sNpcName = tYouDrawMeGuess_HomeItemName[nItemId]
		
		local nNpcType = tYouDrawMeGuess_HomeItemMsg["Type"]
		local nNpcSort = tYouDrawMeGuess_HomeItemMsg["Sort"]
		local nNpcLookFace = tYouDrawMeGuess_HomeItem[nItemId]["LookFace"]
		local nNpcOwnertype = tYouDrawMeGuess_HomeItemMsg["Ownertype"]
		local nNpcLife = tYouDrawMeGuess_HomeItemMsg["Life"]
		local nNpcRegionType = tYouDrawMeGuess_HomeItemMsg["RegionType"]
		local nNpcBase = tYouDrawMeGuess_HomeItemMsg["Base"]
		local nNpcLinkid = tYouDrawMeGuess_HomeItemMsg["Linkid"]
		local nNpcTask0 = tYouDrawMeGuess_HomeItem[nItemId]["Task0"]	
		
		
		if Npc_CreatLayNpcByItem(sNpcName,nNpcType,nNpcSort,nNpcLookFace,nNpcOwnertype,nNpcLife,nNpcRegionType,nNpcBase,nNpcLinkid,nNpcTask0) then
			Item_DelItem(nItemId)
		end
	end
end

-- 家具点击
function YouDrawMeGuess_ClickHomeNpc(nItemId)
	local sLog = ""
		-- 是否在活动时间前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["YouDrawMeGuess"]["FurnitureTime"]) then
		return
	end
	
	local nPlayerId = Get_UserId()
	local nMapOwnerId = Get_MapOwnerId()
	if nMapOwnerId ~= nPlayerId then
		return
	end
	
	
	if CommonFunc_GetAfterActivityTime(tActivityTime["YouDrawMeGuess"]["FurnitureTime"]) then
		if Npc_DelDynaByID() then
			sLog = string.format(tYouDrawMeGuess_Log[1][1],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	
	local sNpcName = Get_ItemtypeName(nItemId)	

	-- 活动时间中
	local sRecycleDialog = string.format(tYouDrawMeGuess_OtherMsg["ClickHomeNpc"]["Text111"],sNpcName)
	Sys_DialogText(sRecycleDialog)
	Sys_DialogOption(tYouDrawMeGuess_OtherMsg["ClickHomeNpc"]["Option1"],"</F>YouDrawMeGuess_SureDelHomeNpc</N>" .. nItemId)
	Sys_DialogEnd()
end

-- 确认收起家具
function YouDrawMeGuess_SureDelHomeNpc(nItemId)
	local sLog = ""
	-- 是否在活动时间前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["YouDrawMeGuess"]["FurnitureTime"]) then
		return
	end
	
	if CommonFunc_GetAfterActivityTime(tActivityTime["YouDrawMeGuess"]["FurnitureTime"]) then
		if Npc_DelDynaByID() then
			sLog = string.format(tYouDrawMeGuess_Log[1][1],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	
	--背包无空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tYouDrawMeGuess_OtherMsg["HomeItemMsg"][5])
		return
	end
	--有空间,先删除npc,给物品
	
	if Npc_DelDynaByID() then
		Item_AddItem(nItemId)
		sLog = string.format(tYouDrawMeGuess_Log[1][3],nItemId)
	end
end


-- 返回当前玩家接的是哪个片区的那个ID怪物购买了哪些怪物提示
---- 掩码值为 ： 片区*10000000+怪物ID*1000+本次获得的提示信息
----返回值：	片区    怪物ID   当前提示二进制和
function YouDrawMeGuess_ReturnMonster(nEvent,nType)
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	if nData <= 10000000 then
		return false
	end
	
	local nRegion,nMonsterId,nMonsterMsg
	
	nRegion = (nData - nData%10000000)/10000000
	nMonsterId = (nData - nRegion*10000000 - nData%1000)/1000
	nMonsterMsg = nData%1000
	return nRegion,nMonsterId,nMonsterMsg
end


----将玩家送入地图
function YouDrawMeGuess_GoInMap(nNpcId)
	local nFBid = tYouDrawMeGuess_Cont["Instance"]["Id"]
	local nEvent = tYouDrawMeGuess_Stc[7]["EventType"]
	local nType = tYouDrawMeGuess_Stc[7]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nSpace = tYouDrawMeGuess_Cont["Instance"]["Space"]
	
	local nPosX = tYouDrawMeGuess_Cont["DynaNpc"]["PosX"]
	local nPosY = tYouDrawMeGuess_Cont["DynaNpc"]["PosY"]
	local nLookFace = tYouDrawMeGuess_Cont["DynaNpc"]["LookFace"]
	local nTask0 = tYouDrawMeGuess_Cont["DynaNpc"]["Task0"]
	local sName = tYouDrawMeGuess_DynaItemName["Name"]
	
	-- 替换成新增图鉴的ID
	-- local nOldItem = tYouDrawMeGuess_Cont["ItemId"][1]
	-- local nNewItem = tYouDrawMeGuess_Cont["ItemId"][2]
	local nOldItem = tYouDrawMeGuess_Cont["NewItemId"]["Handbook"][1]
	local nNewItem = tYouDrawMeGuess_Cont["NewItemId"]["Handbook"][2]
	
	if Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		-- 判断等级
		if not User_JudgeLevelAndMetempsychosis(tYouDrawMeGuess_Cont["Level"],tYouDrawMeGuess_Cont["Meto"]) then
			return
		end
	
		if not ActivityNotice_Map(0) then
			ActivityNotice_Msg(nActivityId,"Map")
			return
		end
	
		if nData == 0 then
			if not User_CheckLeftSpace(nSpace) then
				-- 提示  or 对白
				LinkNpcGossipFunc_New(nNpcId,"2-1")
				return
			end
			Task_SetStatistic(nEvent,nType,1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			-- 加个判断防止万一
			
			if not (Item_ChkItem(nOldItem) or Item_ChkItem(nNewItem)) then
				RewardTemplate_UseItem(tYouDrawMeGuess_Cont["InToMap"][1])
			end
		end
		User_EnterInstance(nFBid)

		local nEvent_6 = tYouDrawMeGuess_Stc[6]["EventType"]
		local nType_6 = tYouDrawMeGuess_Stc[6]["DataType"]

		local nData6 = Get_UserStatisticValue(nEvent_6,nType_6)
		
		if nData6 <= 0 then
			return
		end
		
		local nRegion,nMonsterId,nMonsterMsg = YouDrawMeGuess_ReturnMonster(nEvent_6,nType_6)
		
		-- 重新播放光效
		local nMapId = Get_UserMapId()
		local nMapDoc = Get_MapDoc(nMapId)
		local nPosX = tYouDrawMeGuess_EffrctMap["nPosx"]
		local nPosY = tYouDrawMeGuess_EffrctMap["nPosy"]
		local sEffectName = tostring(tYouDrawMeGuess_MonsterEffect[nMonsterId])
	
		
		if nMapDoc ~= 9972 then
			return
		end
		
		Map_Effect(nMapId, nPosX, nPosY, sEffectName)
		
	else
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	end
end


-- 玩家补领妖魔宝鉴
function YouDrawMeGuess_SecendReward(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	
	local nSpace = tYouDrawMeGuess_Cont["Instance"]["Space"]

	-- 替换成新增图鉴的ID
	-- for k,v in pairs(tYouDrawMeGuess_Cont["ItemId"]) do
	for k,v in pairs(tYouDrawMeGuess_Cont["NewItemId"]["Handbook"]) do
		if Item_ChkItem(v) then
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		end
	end
	
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nFlag = 1
	
	if YouDrawMeGuess_AllLocked() then
		nFlag = 2
	end
	
	RewardTemplate_UseItem(tYouDrawMeGuess_Cont["InToMap"][nFlag])
	LinkNpcGossipFunc_New(nNpcId,"6-1")
end


-- 副本npc
function YouDrawMeGuess_ClickDynaNpc(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"1")
end

-- 返回玩家免费参与的剩余次数
function YouDrawMeGuess_Times()
	local nTotalTimes = tYouDrawMeGuess_Cont["Times"]
	local nEvent = tYouDrawMeGuess_Stc[8]["EventType"]
	local nType = tYouDrawMeGuess_Stc[8]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nTimes = nTotalTimes - nData
	if nTimes > 0 then
		return nTimes
	else
		return 0
	end
end

-- 接我要参与 或者是我要付费参与
function YouDrawMeGuess_GetTask(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	
	local nEvent = tYouDrawMeGuess_Stc[6]["EventType"]
	local nType = tYouDrawMeGuess_Stc[6]["DataType"]
	
	-- 随机怪物
	local flat,tNum = Probabil_RandomAward(tYouDrawMeGuess_MonsterRandom["Region"],1)
	local nRegion = tNum[1]["tAward"][1]["Item_1"]
	
	local msg,tMonster = Probabil_RandomAward(tYouDrawMeGuess_MonsterRandom["Monster"],nRegion)
	local nMonsterId = tMonster[1]["tAward"][1]["Item_1"]
	
	-- 掩码记录怪物信息  片区*10000000+怪物ID+1000+提示信息
	local nMonsterMsg = nRegion * 10000000 + nMonsterId *1000
	
	-- 特殊怪
	if nMonsterId == 55 then
		nMonsterMsg = nMonsterMsg + tYouDrawMeGuess_OtherMonster[55]["Value"]	
	end	
	
	Task_SetStatistic(nEvent,nType,nMonsterMsg,1)
	Task_SetStcTimestamp(nEvent,nType,0)

	-- 播放怪物光效，给对白
	local nMapId = Get_UserMapId()
	local nMapDoc = Get_MapDoc(nMapId)
	local nPosX = tYouDrawMeGuess_EffrctMap["nPosx"]
	local nPosY = tYouDrawMeGuess_EffrctMap["nPosy"]
	local sEffectName = tostring(tYouDrawMeGuess_MonsterEffect[nMonsterId])
	
	Sys_SaveActionFestivalLog(tYouDrawMeGuess_Cont["NormalLog"]["Other"][9])
	
	if nMapDoc ~= 9972 then
		return
	end
	
	Map_Effect(nMapId, nPosX, nPosY, sEffectName)
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

--返回提示信息表
function YouDrawMeGuess_GoBackMsg()
	local tMsg = {}
	local nEvent = tYouDrawMeGuess_Stc[6]["EventType"]
	local nType = tYouDrawMeGuess_Stc[6]["DataType"]
	local nRegion,nMonsterId,nFlag = YouDrawMeGuess_ReturnMonster(nEvent,nType)
	local tMonMsg = CommonFunc_Copy(tYouDrawMeGuess_MonsterMsg[nRegion][nMonsterId])
	
	if nFlag == 0 then
		return tMsg
	end
	
	for k,v in ipairs(tMonMsg) do
		if Sys_ParseNumbersContain(v,nFlag) then
			table.insert(tMsg,v)
		end
	end
	
	return tMsg
end


--返回玩家现在还可购买的提示
function YouDrawMeGuess_MsgNum()
	local tNewMsg = {}
	local tMsg = CommonFunc_Copy(YouDrawMeGuess_GoBackMsg())
	local nEvent = tYouDrawMeGuess_Stc[6]["EventType"]
	local nType = tYouDrawMeGuess_Stc[6]["DataType"]
	local nRegion,nMonsterId,nFlag = YouDrawMeGuess_ReturnMonster(nEvent,nType)
	local tMonMsg = CommonFunc_Copy(tYouDrawMeGuess_MonsterMsg[nRegion][nMonsterId])
	local i = 1
	if #tMsg == #tMonMsg then
		return tNewMsg
	end
	
	-- 否则判断还可获得那个提示
	for k,v in pairs(tMsg) do
		for m,n in pairs(tMonMsg) do
			if v==n then
				tMonMsg[m]=nil
			end
		end
	end
	
	for x,y in pairs(tMonMsg) do
	
		if y~= nil then
			tNewMsg[i] = y
			i = i + 1
		end
	end
	
	
	return tNewMsg
end



-- 送我前往
function YouDrawMeGuess_GoMap(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end


-- 购买提示(免费)
function YouDrawMeGuess_ByMsg(nNpcId,sFlag)

	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	
	local tSureMsg = CommonFunc_Copy(YouDrawMeGuess_MsgNum())
	if #tSureMsg <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"7-1")
		return
	end	

	local nEvent_9 = tYouDrawMeGuess_Stc[9]["EventType"]
	local nType_9 = tYouDrawMeGuess_Stc[9]["DataType"]
	
	if Get_UserStatisticValue(nEvent_9,nType_9) ~= 0 then
		return
	end
	
	Task_SetStatistic(nEvent_9,nType_9,1,1)
	Task_SetStcTimestamp(nEvent_9,nType_9,0)
	
	-- 给提示
	local nEvent = tYouDrawMeGuess_Stc[6]["EventType"]
	local nType = tYouDrawMeGuess_Stc[6]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	nData = nData + tSureMsg[1]	
	
	Task_SetStatistic(nEvent,nType,nData,1)
	
	LinkNpcGossipFunc_New(nNpcId,sFlag)
end

-- 付费购买提示
function YouDrawMeGuess_ByMsgCp(nNpcId,sFlag)
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	
	local tSureMsg = CommonFunc_Copy(YouDrawMeGuess_MsgNum())
	if #tSureMsg <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"7-1")
		return
	end	
	
	
	
	local nNeedCp = tYouDrawMeGuess_Cont["ByMsgCp"]
	
	if Get_UserEMoney() < nNeedCp then
		LinkNpcGossipFunc_New(nNpcId,"9-1")
		return
	end
	
	if not User_AddEMoneyNew(-1*nNeedCp,12000548) then
		return
	end
	
	Sys_SaveEmoneyBuy(tYouDrawMeGuess_Cont["EmoneyLog"][2])
	
	-- 给提示
	local nEvent = tYouDrawMeGuess_Stc[6]["EventType"]
	local nType = tYouDrawMeGuess_Stc[6]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	nData = nData + tSureMsg[1]	
	
	Task_SetStatistic(nEvent,nType,nData,1)
	
	LinkNpcGossipFunc_New(nNpcId,sFlag)
end



-- 判断提示是否为第一次获得
function YouDrawMeGuess_OneMsg()
	local nEvent = tYouDrawMeGuess_Stc[9]["EventType"]
	local nType = tYouDrawMeGuess_Stc[9]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType)

	if nData > 0 then
		return false
	else
		return true
	end
end


--天石参加
function YouDrawMeGuess_GetTaskByCp(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"5-1")
end

-- 银两参加
function YouDrawMeGuess_GetTaskByMoney(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"5-2")
end

function YouDrawMeGuess_SureByCp(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	
	local nNeedCp = tYouDrawMeGuess_Cont["GetTaskCp"]
	
	if Get_UserEMoney() < nNeedCp then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	
	if not User_AddEMoneyNew(-1*nNeedCp,12000548) then
		return
	end
	
	Sys_SaveEmoneyBuy(tYouDrawMeGuess_Cont["EmoneyLog"][3])
	
	-- 花钱成功
	local nEvent = tYouDrawMeGuess_Stc[6]["EventType"]
	local nType = tYouDrawMeGuess_Stc[6]["DataType"]
	
	-- 随机怪物
	local flat,tNum = Probabil_RandomAward(tYouDrawMeGuess_MonsterRandom["Region"],1)
	local nRegion = tNum[1]["tAward"][1]["Item_1"]
	
	local msg,tMonster = Probabil_RandomAward(tYouDrawMeGuess_MonsterRandom["Monster"],nRegion)
	local nMonsterId = tMonster[1]["tAward"][1]["Item_1"]
	
	-- 掩码记录怪物信息  片区*10000000+怪物ID+1000+提示信息
	local nMonsterMsg = nRegion * 10000000 + nMonsterId *1000
	
	Task_SetStatistic(nEvent,nType,nMonsterMsg,1)
	Task_SetStcTimestamp(nEvent,nType,0)

	-- 播放怪物光效，给对白
	local nMapId = Get_UserMapId()
	local nMapDoc = Get_MapDoc(nMapId)
	local nPosX = tYouDrawMeGuess_EffrctMap["nPosx"]
	local nPosY = tYouDrawMeGuess_EffrctMap["nPosy"]
	local sEffectName = tostring(tYouDrawMeGuess_MonsterEffect[nMonsterId])
	
	if nMapDoc ~= 9972 then
		return
	end
	
	Map_Effect(nMapId, nPosX, nPosY, sEffectName)
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

function YouDrawMeGuess_SureByMoney(nNpcId)
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	
	local nNeedMoney = tYouDrawMeGuess_Cont["GetTaskmoney"]
	
	if not User_CanPutMoney2Bag(nNeedMoney) then
		LinkNpcGossipFunc_New(nNpcId,"6-2")
		return
	end
	
	if not User_AddMoney(nNeedMoney) then
		return
	end
	
	-- 花费银两参与记emoneylog
	Sys_SaveEmoneyBuy(tYouDrawMeGuess_Cont["EmoneyLog"][4])
	
	-- 花钱成功
	local nEvent = tYouDrawMeGuess_Stc[6]["EventType"]
	local nType = tYouDrawMeGuess_Stc[6]["DataType"]
	
	-- 随机怪物
	local flat,tNum = Probabil_RandomAward(tYouDrawMeGuess_MonsterRandom["Region"],1)
	local nRegion = tNum[1]["tAward"][1]["Item_1"]
	
	local msg,tMonster = Probabil_RandomAward(tYouDrawMeGuess_MonsterRandom["Monster"],nRegion)
	local nMonsterId = tMonster[1]["tAward"][1]["Item_1"]
	
	-- 掩码记录怪物信息  片区*10000000+怪物ID+1000+提示信息
	local nMonsterMsg = nRegion * 10000000 + nMonsterId *1000
	
	Task_SetStatistic(nEvent,nType,nMonsterMsg,1)
	Task_SetStcTimestamp(nEvent,nType,0)

	-- 播放怪物光效，给对白
	local nMapId = Get_UserMapId()
	local nMapDoc = Get_MapDoc(nMapId)
	local nPosX = tYouDrawMeGuess_EffrctMap["nPosx"]
	local nPosY = tYouDrawMeGuess_EffrctMap["nPosy"]
	local sEffectName = tostring(tYouDrawMeGuess_MonsterEffect[nMonsterId])
	
	if nMapDoc ~= 9972 then
		return
	end
	
	Map_Effect(nMapId, nPosX, nPosY, sEffectName)
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end


-- 玩家选择片区传送
function YouDrawMeGuess_ChgMap(nNpcId,nFlag)
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end

	-- 替换成新增图鉴的ID
	-- if not (Item_ChkItem(tYouDrawMeGuess_Cont["ItemId"][1]) or Item_ChkItem(tYouDrawMeGuess_Cont["ItemId"][2])) then
	if not (Item_ChkItem(tYouDrawMeGuess_Cont["NewItemId"]["Handbook"][1]) or Item_ChkItem(tYouDrawMeGuess_Cont["NewItemId"]["Handbook"][2])) then
		
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	local nMapId = tYouDrawMeGuess_Cont["RegionXY"][nFlag]["MapId"]
	local nPosX = tYouDrawMeGuess_Cont["RegionXY"][nFlag]["PosX"]
	local nPosY = tYouDrawMeGuess_Cont["RegionXY"][nFlag]["PosY"]
	local nCellXY = tYouDrawMeGuess_Cont["RegionXY"][nFlag]["CXY"]
	
	User_ChgMap(nMapId,nPosX,nPosY)
end

-- 
function YouDrawMeGuess_MonsterLock(nFlag,nRegion,nMonsterId)
	local nEvent = tYouDrawMeGuess_MonsterToEvent[nFlag]["EventType"]
	local nType = tYouDrawMeGuess_MonsterToEvent[nFlag]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local tMsgMon = {}
	local tMsglock = CommonFunc_Copy(tYouDrawMeGuess_Monster[nRegion][nMonsterId])
	
	for k,v in pairs(tMsglock) do
		if Sys_ParseNumbersContain(v,nData) then
			tMsgMon[k] = v
		end
	end
	
	return tMsgMon
end

--物品使用
function YouDrawMeGuess_MonsterShow(nItemId,nFlag,nRegion,nMonsterId)
	-- 新增图鉴判断
	if nItemId == 3307549 then
		nFlag = nFlag + 4
	end
	
	-- 判断玩家选择的怪物解锁了多少条信息
	local tMsg = CommonFunc_Copy(YouDrawMeGuess_MonsterLock(nFlag,nRegion,nMonsterId))
	local sMsg1 = tYouDrawMeGuess_Text["MonsterBasic"][nMonsterId]["Name"]
	local sMsg2 = tYouDrawMeGuess_Text["MonsterBasic"][nMonsterId]["Type"]
	local sMsg3 = tYouDrawMeGuess_Text["MonsterBasic"][nMonsterId]["Region"]
	local sHeadMsg = sMsg1 .. sMsg2 .. sMsg3
	
	-- tItem[3301360]["Text1011"] = string.format(tYouDrawMeGuess_Text[3301360]["Text1011"],sHeadMsg)
	-- tItem[3301360]["Text1011"] = string.format(tYouDrawMeGuess_Text[3301360]["Text1011"],sHeadMsg)
	tItem[nItemId]["Text1011"] = string.format(tYouDrawMeGuess_Text[nItemId]["Text1011"],sHeadMsg)
	tItem[nItemId]["Text1011"] = string.format(tYouDrawMeGuess_Text[nItemId]["Text1011"],sHeadMsg)
	
	for i=1,5 do
		local sLockMsg = ""
		if tMsg[i] == nil then
			sLockMsg = tYouDrawMeGuess_Text["IsLocked"]["NoLocked"]
			-- tItem[3301360]["Text101" .. i+1] = string.format(sLockMsg,string.format(tYouDrawMeGuess_Text["MonsterBasicMsg"][i],tYouDrawMeGuess_Text["MonsterBasicMsg"]["TY"]))
			tItem[nItemId]["Text101" .. i+1] = string.format(sLockMsg,string.format(tYouDrawMeGuess_Text["MonsterBasicMsg"][i],tYouDrawMeGuess_Text["MonsterBasicMsg"]["TY"]))
		else
			sLockMsg = tYouDrawMeGuess_Text["IsLocked"]["Locked"]
			-- tItem[3301360]["Text101" .. i+1] = string.format(sLockMsg,string.format(tYouDrawMeGuess_Text["MonsterBasicMsg"][i],tYouDrawMeGuess_Text["LockMsg"][nMonsterId][tMsg[i]])) .. "\n"
			tItem[nItemId]["Text101" .. i+1] = string.format(sLockMsg,string.format(tYouDrawMeGuess_Text["MonsterBasicMsg"][i],tYouDrawMeGuess_Text["LockMsg"][nMonsterId][tMsg[i]])) .. "\n"
		end
	end
	-- tItem[3301360]["OptionFunc1011"] = "YouDrawMeGuess_GobackBef</N>3301360</S>" .. (tostring((nRegion + 2)) .. "-1")
	tItem[nItemId]["OptionFunc1011"] = "YouDrawMeGuess_GobackBef</N>" .. nItemId .. "</S>" .. (tostring((nRegion + 2)) .. "-1")
	
	LinkItemGossipFunc_New(nItemId,"10-1")
end


-- 怪物死亡
function YouDrawMeGuess_BeKilled()
	-- 判断金币服
	-- if CommonFunc_ChkGoldServer() then
		-- return
	-- end
	
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	
	-- 判断玩家是否满足条件
	if not User_JudgeLevelAndMetempsychosis(tYouDrawMeGuess_Cont["Level"],tYouDrawMeGuess_Cont["Meto"]) then
		return
	end
	
	-- 判断是否有任务
	local nEvent = tYouDrawMeGuess_Stc[6]["EventType"]
	local nType = tYouDrawMeGuess_Stc[6]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	local nEvent_8 = tYouDrawMeGuess_Stc[8]["EventType"]
	local nType_8 = tYouDrawMeGuess_Stc[8]["DataType"]
	
	if nData <= 0 then
		return
	end
	
	-- 返回玩家所接任务的片区，怪物ID
	local nRegion,nMonsterId,nFlag = YouDrawMeGuess_ReturnMonster(nEvent,nType)
	
	-- 使用新图鉴的掩码
	-- local nRegionFlagNew = YouDrawMeGuess_OneMonsterLock(nRegion,nMonsterId)
	local nRegionFlagNew = YouDrawMeGuess_OneMonsterLock(nRegion,nMonsterId) + 4
	
	local nKillMonster = Get_MonsterType()
	local sKillMonsterName = Get_MonsterName()
	
	if nMonsterId ~= nKillMonster then
		User_TalkChannel2005(tYouDrawMeGuess_OtherMsg["KillMonster"][1])
		return
	end
	
	Sys_SaveActionFestivalLog(tYouDrawMeGuess_Cont["NormalLog"]["Other"][10])

	local tMsg = CommonFunc_Copy(YouDrawMeGuess_MonsterLock(nRegionFlagNew,nRegion,nMonsterId))
	local tMonsMsg = CommonFunc_Copy(tYouDrawMeGuess_Monster[nRegion][nMonsterId])
	local tlockMsg = CommonFunc_Copy(tYouDrawMeGuess_Cont["MsgMon"])

	-- 使用新图鉴的掩码
	-- local nRegionFlag = YouDrawMeGuess_OneMonsterLock(nRegion,nMonsterId)
	local nRegionFlag = YouDrawMeGuess_OneMonsterLock(nRegion,nMonsterId) + 4
	local nEvent_1 = tYouDrawMeGuess_MonsterToEvent[nRegionFlag]["EventType"]
	local nType_1 = tYouDrawMeGuess_MonsterToEvent[nRegionFlag]["DataType"]
	local nOmeLock = Get_UserStatisticValue(nEvent_1,nType_1)
	
	-- 动态修改概率表
	for i=1,5 do
		tlockMsg[1][i]["Item_1"] = tMonsMsg[i]
	end
	
	local flat,tNum = Probabil_RandomAward(tlockMsg,1)
	local nMonMssesage = tNum[1]["tAward"][1]["Item_1"]
	
	-- 判断随机到的解锁信息是否玩家已经解锁了
	local nNum = 0
	for k,v in pairs(tMsg) do
		if nMonMssesage == v then
			nNum = nNum + 1
			break
		end
	end
	
	-- 给光效
	User_EffectAdd("self",tYouDrawMeGuess_Cont["Effect"][1])
	
	if nNum ~= 0 then
		-- 说明重复了，重复了给对应的值 100气力值，10积分
		local nMonsterFlag = YouDrawMeGuess_JxMonsterLock(nMonMssesage,nRegion,nMonsterId)
		local sStrMsg = tYouDrawMeGuess_OtherMsg["JxMonster"][nMonsterFlag]
		
		Task_SetStatistic(nEvent,nType,0,1)
		
		if Task_StcInterval(nEvent_8,nType_8,1,4) then
			Task_SetStatistic(nEvent_8,nType_8,0,1)
			Task_SetStcTimestamp(nEvent_8,nType_8,0)
		end
		
		Task_AddStatistic(nEvent_8,nType_8,1,1)
		Task_SetStcTimestamp(nEvent_8,nType_8,0)
		
		local nAllTemp = YouDrawMeGuess_SetTemp()
		-- YouDrawMeGuess_RankGlobal(nAllTemp) 
		
		if User_AddStrengthValue(tYouDrawMeGuess_Cont["MonsterRepeatReward"]["Strength"]) then
			
			-- 记录LOG			
			Sys_SaveActionFestivalLog(tYouDrawMeGuess_Cont["NormalLog"]["Repeat"])
			Sys_MsgBox(string.format(tYouDrawMeGuess_OtherMsg["KillMonster"][5],sKillMonsterName,sStrMsg))
		end
		
		-- 完成一次免费的你画我猜 记emoneylog
		local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
		if nData_8 <= 5 then 
			Sys_SaveEmoneyBuy(tYouDrawMeGuess_Cont["EmoneyLog"][7])
		end
	else
		--说明没重复，给对应的奖励 50积分 500气力值 若单个怪物全解锁额外给	
		-- 掩码加  给单个奖励
		
		nOmeLock = nOmeLock + nMonMssesage
		
		Task_SetStatistic(nEvent_1,nType_1,nOmeLock,1)
		local nMonsterFlag = YouDrawMeGuess_JxMonsterLock(nMonMssesage,nRegion,nMonsterId)
		
		--100气力值  10积分
		-- if User_AddStrengthValue(tYouDrawMeGuess_Cont["MonsterReward"]["Strength"]) and Item_AddNewItem(tYouDrawMeGuess_Cont["MonsterReward"]["ItemId"],tYouDrawMeGuess_Cont["MonsterReward"]["Attr"]) then
		if User_AddStrengthValue(tYouDrawMeGuess_Cont["MonsterReward"]["Strength"]) then
			Sys_MsgBox(string.format(tYouDrawMeGuess_OtherMsg["KillMonster"][4],sKillMonsterName))
			--背包满给系统提示
			if not User_CheckLeftSpace(tYouDrawMeGuess_Cont["Space"]) then
				User_TalkChannel2005(tYouDrawMeGuess_OtherMsg["NoSpace"])
			end
			local sStrMsg = tYouDrawMeGuess_OtherMsg["JxMonster"][nMonsterFlag]
			Sys_SaveActionFestivalLog(tYouDrawMeGuess_Cont["NormalLog"]["Single"])
			User_TalkChannel2005(string.format(tYouDrawMeGuess_OtherMsg["KillMonster"][2],sKillMonsterName,sStrMsg))
		end
		
			-- 判断该怪物是否全部解锁
		if not YouDrawMeGuess_OneMonsterReward(nRegion,nMonsterId) then
			Task_SetStatistic(nEvent,nType,0,1)
		
			if Task_StcInterval(nEvent_8,nType_8,1,4) then
				Task_SetStatistic(nEvent_8,nType_8,0,1)
				Task_SetStcTimestamp(nEvent_8,nType_8,0)
			end			
			Task_AddStatistic(nEvent_8,nType_8,1,1)
			Task_SetStcTimestamp(nEvent_8,nType_8,0)
			local nAllTemp = YouDrawMeGuess_SetTemp()
			-- YouDrawMeGuess_RankGlobal(nAllTemp) 
			-- 完成一次免费的你画我猜 记emoneylog
			local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
			if nData_8 <= 5 then 
				Sys_SaveEmoneyBuy(tYouDrawMeGuess_Cont["EmoneyLog"][7])
			end
			return
		end
		local sStr1 = tYouDrawMeGuess_OtherMsg["KillMonster"][6]
		local sStr2 = ""
		-- 怪物信息全部解锁
		-- 给奖励
		
		
		User_AddStrengthValue(tYouDrawMeGuess_Cont["MonsterAllReward"]["Strength"])
		
		for k,v in pairs(tYouDrawMeGuess_Cont["MonsterAllReward"]["ItemId"]) do
			Item_AddNewItem(v["Id"],v["Attr"])
			if k == 2 then
				sStr2 = sStr2 .. Get_ItemtypeName(v["Id"])
			end
		end
		
		if tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][nMonsterId] ~= nil then
			Item_AddNewItem(tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][nMonsterId]["ItemId"],tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][nMonsterId]["Attr"])
			sStr2 = sStr2 .. "、" .. Get_ItemtypeName(tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][nMonsterId]["ItemId"])
			Sys_SaveActionFestivalLog(tYouDrawMeGuess_Cont["MonsterAllReward"]["AllRegion"][nMonsterId]["Log"])
			Sys_SaveActionFestivalLog(tYouDrawMeGuess_Cont["NormalLog"]["Other"][8])
		else
			Sys_SaveActionFestivalLog(tYouDrawMeGuess_Cont["NormalLog"]["OneMonLocked"])
			Sys_SaveActionFestivalLog(tYouDrawMeGuess_Cont["NormalLog"]["Other"][8])
		end	
		
		
		--单个怪物全部解锁的提示
		Sys_MsgBox(string.format(sStr1,sKillMonsterName,sStr2))
		
		-- 判断这个怪物的所在片区信息是否解锁了
		if not YouDrawMeGuess_AllMonsterReward(nRegion,nMonsterId) then
			Task_SetStatistic(nEvent,nType,0,1)
		
			if Task_StcInterval(nEvent_8,nType_8,1,4) then
				Task_SetStatistic(nEvent_8,nType_8,0,1)
				Task_SetStcTimestamp(nEvent_8,nType_8,0)
			end			
			Task_AddStatistic(nEvent_8,nType_8,1,1)
			Task_SetStcTimestamp(nEvent_8,nType_8,0)
			local nAllTemp = YouDrawMeGuess_SetTemp()
			-- YouDrawMeGuess_RankGlobal(nAllTemp) 
			-- 完成一次免费的你画我猜 记emoneylog
			local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
			if nData_8 <= 5 then 
				Sys_SaveEmoneyBuy(tYouDrawMeGuess_Cont["EmoneyLog"][7])
			end
			return
		end
		local sRewardName = ""
		-- 判断这个怪物的所在片区信息是否解锁了(已全部解锁)
		local nStrength = tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["Strength"]
		User_AddStrengthValue(nStrength)
		for m,n in pairs(tYouDrawMeGuess_Cont["OneRegionAllReward"]["SameReward"]["ItemId"]) do
			Item_AddNewItem(n["Id"],n["Attr"])
			if m == 2 then
				sRewardName = sRewardName .. Get_ItemtypeName(n["Id"])
			end			
		end
		
		--Item_AddNewItem(tYouDrawMeGuess_Cont["OneRegionAllReward"][nRegion]["ItemId"],tYouDrawMeGuess_Cont["OneRegionAllReward"][nRegion]["Attr"])
		local sRegionMsg = tYouDrawMeGuess_OtherMsg["KillMonster"][7]
		local sRegionName = tYouDrawMeGuess_OtherMsg["RegionName"][nRegion]
		
		--Sys_SaveActionFestivalLog(tYouDrawMeGuess_Cont["OneRegionAllReward"][nRegion]["Log"])
		Sys_SaveActionFestivalLog(tYouDrawMeGuess_Cont["NormalLog"]["Other"][nRegion])
		Sys_MsgBox(string.format(sRegionMsg,sRegionName,sRewardName))
		
		-- 判断是否所有的怪物信息都解锁了
		if not YouDrawMeGuess_AllLocked() then
			Task_SetStatistic(nEvent,nType,0,1)
		
			if Task_StcInterval(nEvent_8,nType_8,1,4) then
				Task_SetStatistic(nEvent_8,nType_8,0,1)
				Task_SetStcTimestamp(nEvent_8,nType_8,0)
			end			
			Task_AddStatistic(nEvent_8,nType_8,1,1)
			Task_SetStcTimestamp(nEvent_8,nType_8,0)
			local nAllTemp = YouDrawMeGuess_SetTemp()
			-- YouDrawMeGuess_RankGlobal(nAllTemp) 
			-- 完成一次免费的你画我猜 记emoneylog
			local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
			if nData_8 <= 5 then 
				Sys_SaveEmoneyBuy(tYouDrawMeGuess_Cont["EmoneyLog"][7])
			end
			return
		end
		
		User_EffectAdd("self",tYouDrawMeGuess_Cont["Effect"][2])
		
		-- 所有怪物解锁
		local sAllLockMsg = tYouDrawMeGuess_OtherMsg["KillMonster"][8]
		local sAllStrength = tYouDrawMeGuess_Cont["AllRegionLocked"]["Strength"]
		-- 替换成新增图鉴的ID
		-- local nOldItem = tYouDrawMeGuess_Cont["AllRegionLocked"]["OldItem"]
		-- local nNewItem = tYouDrawMeGuess_Cont["AllRegionLocked"]["NewItem"]
		local nOldItem = tYouDrawMeGuess_Cont["NewItemId"]["Handbook"][1]
		local nNewItem = tYouDrawMeGuess_Cont["NewItemId"]["Handbook"][2]
		local sAttr = tYouDrawMeGuess_Cont["AllRegionLocked"]["Attr1"]
		
		for x,y in pairs(tYouDrawMeGuess_Cont["AllRegionLocked"]["ItemId"]) do
			Item_AddNewItem(y["Id"],y["Attr"])
		end
		
		User_AddStrengthValue(sAllStrength)
		
		if Item_ChkItem(nOldItem) then
			if Item_DelItem(nOldItem) then
				Item_AddNewItem(nNewItem,sAttr)
			end
		else
			Item_AddNewItem(nNewItem,sAttr)
		end

		Sys_MsgBox(sAllLockMsg)
		Task_SetStatistic(nEvent,nType,0,1)
		
		if Task_StcInterval(nEvent_8,nType_8,1,4) then
			Task_SetStatistic(nEvent_8,nType_8,0,1)
			Task_SetStcTimestamp(nEvent_8,nType_8,0)
		end			
		Task_AddStatistic(nEvent_8,nType_8,1,1)
		Task_SetStcTimestamp(nEvent_8,nType_8,0)
		local nAllTemp = YouDrawMeGuess_SetTemp()
		-- YouDrawMeGuess_RankGlobal(nAllTemp) 
		Sys_SaveActionFestivalLog(tYouDrawMeGuess_Cont["NormalLog"]["AllMonLocked"])
		User_EffectAdd("self",tYouDrawMeGuess_Cont["Effect"][2])
		-- 完成一次免费的你画我猜 记emoneylog
		local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
		if nData_8 <= 5 then 
			Sys_SaveEmoneyBuy(tYouDrawMeGuess_Cont["EmoneyLog"][7])
		end
	end
end

-- 设置玩家解锁进度 并返回现在的进度
function YouDrawMeGuess_SetTemp()
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	
	local nEvent = tYouDrawMeGuess_Stc[10]["EventType"]
	local nType = tYouDrawMeGuess_Stc[10]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	return nData
end


-- 返回玩家现在所有的进度
-- function YouDrawMeGuess_AllTempValue()
	-- local nAlllock = tYouDrawMeGuess_Cont["TotalValue"]
	-- local nSum = 0
	
	-- for k,v in pairs(tYouDrawMeGuess_MonsterToEvent) do
		-- local nEvent = v["EventType"]
		-- local nType = v["DataType"]
		-- local nData = Get_UserStatisticValue(nEvent,nType)
		-- nSum = nSum + nData
	-- end

	-- return nSum
-- end


-- 解析当前解锁的是怪物的那个部分数据
function YouDrawMeGuess_JxMonsterLock(nMonMssesage,nRegion,nMonsterId)
	local tMonMsg = CommonFunc_Copy(tYouDrawMeGuess_Monster[nRegion][nMonsterId])	
	local nFlag = 0
	for k,v in pairs(tMonMsg) do
		if nMonMssesage == v then
			nFlag = k
			return nFlag
		end
	end
	return nFlag
end


-- 单个怪物某条信息解锁对应的存储的stc表
function YouDrawMeGuess_OneMonsterLock(nRegion,nMonsterId)
	-- 去当前这只怪物使用的是哪个掩码进行记录解锁信息
	local tMonToStc = CommonFunc_Copy(tYouDrawMeGuess_MonsterToStc)
	local nStcFlag = 0
	
	for k,v in pairs(tYouDrawMeGuess_MonsterToStc) do
		for m,n in pairs(v) do
			if n == nMonsterId then
				nStcFlag = k
				return nStcFlag
			end
		end
	end
	return nStcFlag
end


-- 返回单个怪物所有信息是否解锁完成
function YouDrawMeGuess_OneMonsterReward(nRegion,nMonsterId)
	local nFlag = YouDrawMeGuess_OneMonsterLock(nRegion,nMonsterId)
	
	if nFlag <= 0 or nFlag > 4 then
		return
	end
	
	-- 使用新图鉴的掩码
	nFlag = nFlag + 4
	
	local nEvent = tYouDrawMeGuess_MonsterToEvent[nFlag]["EventType"]
	local nType = tYouDrawMeGuess_MonsterToEvent[nFlag]["DataType"]
	local nOmeLock = Get_UserStatisticValue(nEvent,nType)
	
	-- 去这只怪物对应的表存储信息
	local tMonMsg = CommonFunc_Copy(tYouDrawMeGuess_Monster[nRegion][nMonsterId])
	local nLength = #tMonMsg
	local nNumFlag = 0
	
	for k,v in pairs(tMonMsg) do
		if Sys_ParseNumbersContain(v,nOmeLock) then
			nNumFlag = nNumFlag + 1
		end	
	end
	
	-- 判断对应的怪物是否全部解锁
	if nLength ~= nNumFlag then
		return false
	else
		return true
	end
end

--返回该片区是否全部解锁
function YouDrawMeGuess_AllMonsterReward(nRegion,nMonsterId)
	local tAllRegionMon = CommonFunc_Copy(tYouDrawMeGuess_Monster[nRegion])
	
	for k,v in pairs(tAllRegionMon) do
		if not YouDrawMeGuess_OneMonsterReward(nRegion,k) then
			return false
		end
	end
	return true
end





-- 是否全部解锁
function YouDrawMeGuess_AllLocked()
	local nAlllock = tYouDrawMeGuess_Cont["TotalValue"]
	local nSum = 0
	
	-- for k,v in pairs(tYouDrawMeGuess_MonsterToEvent) do
		-- local nEvent = v["EventType"]
		-- local nType = v["DataType"]
		-- local nData = Get_UserStatisticValue(nEvent,nType)
		-- nSum = nSum + nData
	-- end
	
	for i=5,8 do
		local nEvent = tYouDrawMeGuess_MonsterToEvent[i]["EventType"]
		local nType = tYouDrawMeGuess_MonsterToEvent[i]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		nSum = nSum + nData
	end

	if nSum == nAlllock then
		return true
	else
		return false
	end
end

-- 查看排行版
function YouDrawMeGuess_Rank(nItemId)
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"11-1")
end


--排行榜排序
-- 处理排行榜数据
function YouDrawMeGuess_RankGlobal(nAllNum) 
	local tRankUserData = {}
	-- 取前10名玩家
	local nIndex = 0
	for j = 1,2  do
		for i = 1, 5 do
			local nGlobalId = tYouDrawMeGuess_Cont["Global"][j][1]
			local nGradeNum = Get_SysDynaGlobalData(nGlobalId,i)
			local sPlayerName = Get_SysDynaGlobalDataStr(nGlobalId,i)
			nIndex = nIndex +1
			tRankUserData[nIndex] = {}
			tRankUserData[nIndex]["GradeNum"] = nGradeNum == "" and 0 or nGradeNum
			tRankUserData[nIndex]["PlayerName"] = sPlayerName == "" and "null" or sPlayerName
		end
	end
	
	-- 取排行榜玩家id
	nIndex = 0
	for j = 1,2 do
		for i= 1, 5 do
			local nGlobalId = tYouDrawMeGuess_Cont["Global"][j][2]
			local nPlayerId = Get_SysDynaGlobalData(nGlobalId,i)
			nIndex = nIndex +1
			tRankUserData[nIndex]["PlayerId"] = nPlayerId
		end
	end

	-- 将玩家加入到临时排行表中
	local nIndex = #tRankUserData + 1
	for i = 1,10 do
		if Get_UserId() == tRankUserData[i]["PlayerId"] then
			nIndex = i
		end
	end
	tRankUserData[nIndex] = {}
	tRankUserData[nIndex]["GradeNum"] = nAllNum
	tRankUserData[nIndex]["PlayerName"] = Get_UserName()
	tRankUserData[nIndex]["PlayerId"] = Get_UserId()
	
	local t = {}
	for i = 1,#tRankUserData do
		for j = 1, #tRankUserData - i do	
			if tRankUserData[j]["PlayerId"] == 0 or (tRankUserData[j]["GradeNum"] < tRankUserData[j+1]["GradeNum"] and tRankUserData[j+1]["PlayerId"] ~= 0) then
				t = tRankUserData[j]
				tRankUserData[j] = tRankUserData[j+1]
				tRankUserData[j+1] = t
			end
		end
	end
	
	-- 将排序完的数据更新到全局表中
	for i = 1,10 do
		local nGradeNum = tRankUserData[i]["GradeNum"]
		local sUserName = tRankUserData[i]["PlayerName"]
		local nUserId = tRankUserData[i]["PlayerId"]
		
		if nGradeNum == 0 then
			sUserName = ""
			nUserId = 0
		end
		
		if i > 5 then
			Sys_SetSynaGlobalData(tYouDrawMeGuess_Cont["Global"][2][1],i-5,nGradeNum)
			Sys_SetSynaGlobalDataStr(tYouDrawMeGuess_Cont["Global"][2][1],i-5,sUserName)
			Sys_SetSynaGlobalData(tYouDrawMeGuess_Cont["Global"][2][2],i-5,nUserId)
		else
			Sys_SetSynaGlobalData(tYouDrawMeGuess_Cont["Global"][1][1],i,nGradeNum)
			Sys_SetSynaGlobalDataStr(tYouDrawMeGuess_Cont["Global"][1][1],i,sUserName)
			Sys_SetSynaGlobalData(tYouDrawMeGuess_Cont["Global"][1][2],i,nUserId)
		end
	end
end

-- 获取当前排行中的玩家在第几名
function YouDrawMeGuess_JudgeLocalRank()
	local nRank = 0
	local sName = ""
	local nProcess = 0
	
	-- 取玩家id
	for j = 1,2 do
		for i = 1,5 do
			local nGlobalId = tYouDrawMeGuess_Cont["Global"][j][2]
			if Get_SysDynaGlobalData(nGlobalId,i) == Get_UserId() then
				--当前玩家所在名次
				nRank = i + (j-1) * 5
				sName = Get_UserName(Get_SysDynaGlobalData(nGlobalId,i))
				break
			end
		end
	end
	
	-- 玩家名字和进度值
	for k = 1,2 do
		for v = 1,5 do
			local nGlobalId = tYouDrawMeGuess_Cont["Global"][k][1]
			if Get_SysDynaGlobalDataStr(nGlobalId,v) == Get_UserName() then
				nProcess = Get_SysDynaGlobalData(nGlobalId,v)
				break
			end
		end
	end
	
	local tTable = {}
	table.insert(tTable,nRank)
	table.insert(tTable,sName)
	table.insert(tTable,nProcess)
	return tTable
end

-- 取出前10名玩家的userid
function YouDrawMeGuess_GetRankUserId()
	-- 取排行榜玩家id
	local tRankUserData = {}
	local nIndex = 0
	for j = 1,2 do
		for i= 1, 5 do
			local nGlobalId = tYouDrawMeGuess_Cont["Global"][j][2]
			local nPlayerId = Get_SysDynaGlobalData(nGlobalId,i)
			nIndex = nIndex +1
			tRankUserData[nIndex] = nPlayerId
		end
	end

	return tRankUserData
end

-- 判断是提示次数是否已满
function YouDrawMeGuess_ChkByMsg(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return
	end

	local tSureMsg = CommonFunc_Copy(YouDrawMeGuess_MsgNum())
	if #tSureMsg <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"7-1")
	else
		LinkNpcGossipFunc_New(nNpcId,"8-1")
	end
end

-- 离开副本地图
function YouDrawMeGuess_LeaveMap()

	local nMapId = tYouDrawMeGuess_Cont["LeaveMap"]["MapId"]
	local nPosX = tYouDrawMeGuess_Cont["LeaveMap"]["PosX"]
	local nPosY = tYouDrawMeGuess_Cont["LeaveMap"]["PosY"]
	User_ChgMap(nMapId,nPosX,nPosY)
end

-- 查看其它片区
function YouDrawMeGuess_MsgGoBack(nItemId)
	if Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		LinkItemGossipFunc_New(nItemId,"2-1")
	else
		LinkItemGossipFunc_New(nItemId,"1-2")
	end
end


function YouDrawMeGuess_GobackBef(nItemId,nDialog)
	LinkItemGossipFunc_New(nItemId,nDialog)
end


-- 00:00 发邮件
function YouDrawMeGuess_RewardMail()
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	
	-- 发邮件：
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["SandMailTime"]) then
		return
	end
	
	--1.取出前10名玩家的userid
	local tUserRankReward = CommonFunc_Copy(YouDrawMeGuess_GetRankUserId())
	
	for k,v in ipairs(tUserRankReward) do
		if v ~= nil and v ~= 0 then
			local nActionId = tYouDrawMeGuess_Cont["Mail"]["Action"][k]
			local nExistDay = tYouDrawMeGuess_Cont["Mail"]["ExistDay"]
			local sSender = tYouDrawMeGuess_OtherMsg["MailMsg"]["Sender"]
			local sTitle = tYouDrawMeGuess_OtherMsg["MailMsg"]["Title"]
			local sContent = string.format(tYouDrawMeGuess_OtherMsg["MailMsg"]["Content"],k)
			Sys_SendMail(v,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		end
	end
	
	-- 清除动态码
	for m,n in pairs(tYouDrawMeGuess_Cont["Global"]) do
		for x,y in pairs(n) do
			Sys_ResetAllSynaGlobalData(y)
			Sys_ResetAllSynaGlobalDataStr(y)
		end
	end
end


------------------------------------------------------------------------------------模版配置部分
tItemFace[3301360] = 1125
tItemFace[3301361] = 1126
tItemFace[3307509] = 1351
tItemFace[3307510] = 1352
tItemFace[3307511] = 1353
tItemFace[3307549] = 1125
tItemFace[3307550] = 1126

-- 新增物品
-- 紫灵玉、青灵玉
tItem[3307510] = tItem[3307510] or {}
tItem[3307511] = tItem[3307510] or {}
tItem[3307510]["Function"] = function(nItemId,sItemName)
	YouDrawMeGuess_NewItem(nItemId,sItemName)
end

tItem[3301316] = tItem[3301316] or {}
tItem[3301316]["Function"] = function(nItemId,sItemName)
	YouDrawMeGuess_Item(nItemId,sItemName)
end

-- 变身卡数据
for k,v in pairs(tYouDrawMeGuess_Transform) do
	tItem[k] = tItem[k] or {}
	tItem[k]["Function"] = function(nItemId,sItemName)
		YouDrawMeGuess_ItemTransform(nItemId,sItemName)
	end
end

-- 家具统一接口

for k,v in pairs(tYouDrawMeGuess_HomeItem) do
	tItem[k] = tItem[k] or {}
	tItem[k]["Function"] = function(nItemId,sItemName)
		YouDrawMeGuess_HomeItemfunction(nItemId,sItemName)
	end
end

-- 未完全解锁的图鉴
-- 3301360
tItem[3301360] = tItem[3301360] or {}

tItem[3301360]["Text1-1"] = {111,112}
tItem[3301360]["Text111"] = tYouDrawMeGuess_Text[3301360]["Text111"]
tItem[3301360]["Text112"] = tYouDrawMeGuess_Text[3301360]["Text112"]


tItem[3301360]["tOption1-1"] = {111,112,115,114}
tItem[3301360]["Option111"] = tYouDrawMeGuess_Text[3301360]["Option111"]
tItem[3301360]["OptionPoint111"] = "2-1"
tItem[3301360]["Option112"] = tYouDrawMeGuess_Text[3301360]["Option112"]
tItem[3301360]["OptionChkFunc112"] = function ()
	return Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"])
end



tItem[3301360]["OptionFunc112"] = "YouDrawMeGuess_Rank</N>3301360"
-- tItem[3301360]["Option113"] = tYouDrawMeGuess_Text[3301360]["Option113"]
-- tItem[3301360]["OptionFunc113"] = ""
tItem[3301360]["Option114"] = tYouDrawMeGuess_Text[3301360]["Option114"]
tItem[3301360]["Option115"] = tYouDrawMeGuess_Text[3301360]["Option115"]
tItem[3301360]["OptionFunc115"] = "YouDrawMeGuess_LeaveMap"
tItem[3301360]["OptionChkFunc115"] = function ()
	return Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"])
end

tItem[3301360]["Text1-2"] = {121,122}
tItem[3301360]["Text121"] = tYouDrawMeGuess_Text[3301360]["Text121"]
tItem[3301360]["Text122"] = tYouDrawMeGuess_Text[3301360]["Text122"]
tItem[3301360]["tOption1-2"] = {121,122,123,124,125,126,127}
tItem[3301360]["Option121"] = tYouDrawMeGuess_Text[3301360]["Option121"]
tItem[3301360]["OptionPoint121"] = "3-1"
tItem[3301360]["Option122"] = tYouDrawMeGuess_Text[3301360]["Option122"]
tItem[3301360]["OptionPoint122"] = "4-1"
tItem[3301360]["Option123"] = tYouDrawMeGuess_Text[3301360]["Option123"]
tItem[3301360]["OptionPoint123"] = "5-1"
tItem[3301360]["Option124"] = tYouDrawMeGuess_Text[3301360]["Option124"]
tItem[3301360]["OptionPoint124"] = "6-1"
tItem[3301360]["Option125"] = tYouDrawMeGuess_Text[3301360]["Option125"]
tItem[3301360]["OptionPoint125"] = "7-1"
tItem[3301360]["Option126"] = tYouDrawMeGuess_Text[3301360]["Option126"]
tItem[3301360]["OptionPoint126"] = "8-1"
tItem[3301360]["Option127"] = tYouDrawMeGuess_Text[3301360]["Option127"]
tItem[3301360]["OptionPoint127"] = "9-1"


tItem[3301360]["Text2-1"] = {211}
tItem[3301360]["Text211"] = tYouDrawMeGuess_Text[3301360]["Text211"]
tItem[3301360]["tOption2-1"] = {211,212,213,214,215,216,217}
tItem[3301360]["Option211"] = tYouDrawMeGuess_Text[3301360]["Option211"]
tItem[3301360]["OptionPoint211"] = "3-1"
tItem[3301360]["Option212"] = tYouDrawMeGuess_Text[3301360]["Option212"]
tItem[3301360]["OptionPoint212"] = "4-1"
tItem[3301360]["Option213"] = tYouDrawMeGuess_Text[3301360]["Option213"]
tItem[3301360]["OptionPoint213"] = "5-1"
tItem[3301360]["Option214"] = tYouDrawMeGuess_Text[3301360]["Option214"]
tItem[3301360]["OptionPoint214"] = "6-1"
tItem[3301360]["Option215"] = tYouDrawMeGuess_Text[3301360]["Option215"]
tItem[3301360]["OptionPoint215"] = "7-1"
tItem[3301360]["Option216"] = tYouDrawMeGuess_Text[3301360]["Option216"]
tItem[3301360]["OptionPoint216"] = "8-1"
tItem[3301360]["Option217"] = tYouDrawMeGuess_Text[3301360]["Option217"]
tItem[3301360]["OptionPoint217"] = "9-1"


--清风源
tItem[3301360]["Text3-1"] = {311}
tItem[3301360]["Text311"] = tYouDrawMeGuess_Text[3301360]["Text311"]
tItem[3301360]["tOption3-1"] = {311,312,313,314,315}
tItem[3301360]["Option311"] = tYouDrawMeGuess_Text[3301360]["Option311"]
tItem[3301360]["OptionFunc311"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>1</N>1</N>1"
tItem[3301360]["Option312"] = tYouDrawMeGuess_Text[3301360]["Option312"]
tItem[3301360]["OptionFunc312"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>1</N>1</N>3"
tItem[3301360]["Option313"] = tYouDrawMeGuess_Text[3301360]["Option313"]
tItem[3301360]["OptionFunc313"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>1</N>1</N>64"
tItem[3301360]["Option314"] = tYouDrawMeGuess_Text[3301360]["Option314"]
tItem[3301360]["OptionFunc314"] = "YouDrawMeGuess_MsgGoBack</N>3301360"

tItem[3301360]["Option315"] = tYouDrawMeGuess_Text[3301360]["Option315"]


--接（2）枫溪林
tItem[3301360]["Text4-1"] = {411}
tItem[3301360]["Text411"] = tYouDrawMeGuess_Text[3301360]["Text411"]
tItem[3301360]["tOption4-1"] = {411,412,414,415}
tItem[3301360]["Option411"] = tYouDrawMeGuess_Text[3301360]["Option411"]
tItem[3301360]["OptionFunc411"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>1</N>2</N>6"
tItem[3301360]["Option412"] = tYouDrawMeGuess_Text[3301360]["Option412"]
tItem[3301360]["OptionFunc412"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>1</N>2</N>9"
tItem[3301360]["Option414"] = tYouDrawMeGuess_Text[3301360]["Option414"]
tItem[3301360]["OptionFunc414"] = "YouDrawMeGuess_MsgGoBack</N>3301360"


tItem[3301360]["Option415"] = tYouDrawMeGuess_Text[3301360]["Option415"]


--接（3）绝情谷
tItem[3301360]["Text5-1"] = {511}
tItem[3301360]["Text511"] = tYouDrawMeGuess_Text[3301360]["Text511"]
tItem[3301360]["tOption5-1"] = {511,512,513,514,515}
tItem[3301360]["Option511"] = tYouDrawMeGuess_Text[3301360]["Option511"]
tItem[3301360]["OptionFunc511"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>2</N>3</N>10"
tItem[3301360]["Option512"] = tYouDrawMeGuess_Text[3301360]["Option512"]
tItem[3301360]["OptionFunc512"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>2</N>3</N>12"
tItem[3301360]["Option513"] = tYouDrawMeGuess_Text[3301360]["Option513"]
tItem[3301360]["OptionFunc513"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>2</N>3</N>13"
tItem[3301360]["Option514"] = tYouDrawMeGuess_Text[3301360]["Option514"]
tItem[3301360]["OptionFunc514"] = "YouDrawMeGuess_MsgGoBack</N>3301360"

tItem[3301360]["Option515"] = tYouDrawMeGuess_Text[3301360]["Option515"]

--接（4）大漠
tItem[3301360]["Text6-1"] = {611}
tItem[3301360]["Text611"] = tYouDrawMeGuess_Text[3301360]["Text611"]
tItem[3301360]["tOption6-1"] = {611,612,613,614,615}
tItem[3301360]["Option611"] = tYouDrawMeGuess_Text[3301360]["Option611"]
tItem[3301360]["OptionFunc611"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>2</N>4</N>14"
tItem[3301360]["Option612"] = tYouDrawMeGuess_Text[3301360]["Option612"]
tItem[3301360]["OptionFunc612"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>2</N>4</N>16"
tItem[3301360]["Option613"] = tYouDrawMeGuess_Text[3301360]["Option613"]
tItem[3301360]["OptionFunc613"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>3</N>4</N>17"
tItem[3301360]["Option614"] = tYouDrawMeGuess_Text[3301360]["Option614"]
tItem[3301360]["OptionFunc614"] = "YouDrawMeGuess_MsgGoBack</N>3301360"
tItem[3301360]["Option615"] = tYouDrawMeGuess_Text[3301360]["Option615"]

--芦花荡
tItem[3301360]["Text7-1"] = {711}
tItem[3301360]["Text711"] = tYouDrawMeGuess_Text[3301360]["Text711"]
tItem[3301360]["tOption7-1"] = {711,712,714,715}
tItem[3301360]["Option711"] = tYouDrawMeGuess_Text[3301360]["Option711"]
tItem[3301360]["OptionFunc711"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>3</N>5</N>19"
tItem[3301360]["Option712"] = tYouDrawMeGuess_Text[3301360]["Option712"]
tItem[3301360]["OptionFunc712"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>3</N>5</N>55"
tItem[3301360]["Option714"] = tYouDrawMeGuess_Text[3301360]["Option714"]
tItem[3301360]["OptionFunc714"] = "YouDrawMeGuess_MsgGoBack</N>3301360"

tItem[3301360]["Option715"] = tYouDrawMeGuess_Text[3301360]["Option715"]

--敦煌
tItem[3301360]["Text8-1"] = {811}
tItem[3301360]["Text811"] = tYouDrawMeGuess_Text[3301360]["Text811"]
tItem[3301360]["tOption8-1"] = {811,812,813,814,815,816}
tItem[3301360]["Option811"] = tYouDrawMeGuess_Text[3301360]["Option811"]
tItem[3301360]["OptionFunc811"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>3</N>6</N>20"
tItem[3301360]["Option812"] = tYouDrawMeGuess_Text[3301360]["Option812"]
tItem[3301360]["OptionFunc812"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>3</N>6</N>56"
tItem[3301360]["Option813"] = tYouDrawMeGuess_Text[3301360]["Option813"]
tItem[3301360]["OptionFunc813"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>4</N>6</N>57"
tItem[3301360]["Option814"] = tYouDrawMeGuess_Text[3301360]["Option814"]
tItem[3301360]["OptionFunc814"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>4</N>6</N>58"
tItem[3301360]["Option815"] = tYouDrawMeGuess_Text[3301360]["Option815"]
tItem[3301360]["OptionFunc815"] = "YouDrawMeGuess_MsgGoBack</N>3301360"

tItem[3301360]["Option816"] = tYouDrawMeGuess_Text[3301360]["Option816"]

--冰封地穴
tItem[3301360]["Text9-1"] = {911}
tItem[3301360]["Text911"] = tYouDrawMeGuess_Text[3301360]["Text911"]
tItem[3301360]["tOption9-1"] = {911,912,914,915}
tItem[3301360]["Option911"] = tYouDrawMeGuess_Text[3301360]["Option911"]
tItem[3301360]["OptionFunc911"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>4</N>7</N>2411"
tItem[3301360]["Option912"] = tYouDrawMeGuess_Text[3301360]["Option912"]
tItem[3301360]["OptionFunc912"] = "YouDrawMeGuess_MonsterShow</N>3301360</N>4</N>7</N>2416"
tItem[3301360]["Option914"] = tYouDrawMeGuess_Text[3301360]["Option914"]
tItem[3301360]["OptionFunc914"] = "YouDrawMeGuess_MsgGoBack</N>3301360"

tItem[3301360]["Option915"] = tYouDrawMeGuess_Text[3301360]["Option915"]

--怪物统一对白
--统一
tItem[3301360]["Text10-1"] = {1011,1012,1013,1014,1015,1016,1017}
tItem[3301360]["Text1011"] = tYouDrawMeGuess_Text[3301360]["Text1011"]
tItem[3301360]["Text1012"] = tYouDrawMeGuess_Text[3301360]["Text1012"]
tItem[3301360]["Text1013"] = tYouDrawMeGuess_Text[3301360]["Text1013"]
tItem[3301360]["Text1014"] = tYouDrawMeGuess_Text[3301360]["Text1014"]
tItem[3301360]["Text1015"] = tYouDrawMeGuess_Text[3301360]["Text1015"]
tItem[3301360]["Text1016"] = tYouDrawMeGuess_Text[3301360]["Text1016"]
tItem[3301360]["Text1017"] = tYouDrawMeGuess_Text[3301360]["Text1017"]
tItem[3301360]["tOption10-1"] = {1011,1012}
tItem[3301360]["Option1011"] = tYouDrawMeGuess_Text[3301360]["Option1011"]
tItem[3301360]["OptionFunc1011"] = ""
tItem[3301360]["Option1012"] = tYouDrawMeGuess_Text[3301360]["Option1012"]




tItem[3301360]["Text11-1"] = {1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,11115,11116,11117}
tItem[3301360]["Text1111"] = tYouDrawMeGuess_Text[3301360]["Text1111"]
tItem[3301360]["Text1112"] = tYouDrawMeGuess_Text[3301360]["Text1112"]
tItem[3301360]["Text1113"] = tYouDrawMeGuess_Text[3301360]["Text1113"]
tItem[3301360]["Text1114"] = tYouDrawMeGuess_Text[3301360]["Text1114"]
tItem[3301360]["Text1115"] = tYouDrawMeGuess_Text[3301360]["Text1115"]
tItem[3301360]["Text1116"] = tYouDrawMeGuess_Text[3301360]["Text1116"]
tItem[3301360]["Text1117"] = tYouDrawMeGuess_Text[3301360]["Text1117"]
tItem[3301360]["Text1118"] = tYouDrawMeGuess_Text[3301360]["Text1118"]
tItem[3301360]["Text1119"] = tYouDrawMeGuess_Text[3301360]["Text1119"]
tItem[3301360]["Text1120"] = tYouDrawMeGuess_Text[3301360]["Text1120"]
tItem[3301360]["Text1121"] = tYouDrawMeGuess_Text[3301360]["Text1121"]
tItem[3301360]["Text1122"] = tYouDrawMeGuess_Text[3301360]["Text1122"]
tItem[3301360]["Text1123"] = tYouDrawMeGuess_Text[3301360]["Text1123"]
tItem[3301360]["Text1124"] = tYouDrawMeGuess_Text[3301360]["Text1124"]
tItem[3301360]["Text11115"] = tYouDrawMeGuess_Text[3301360]["Text11115"]
tItem[3301360]["Text11116"] = tYouDrawMeGuess_Text[3301360]["Text11116"]
tItem[3301360]["Text11117"] = tYouDrawMeGuess_Text[3301360]["Text11117"]
tItem[3301360]["ChkFunc11-1"] = function()
	local tRankUserData = {}
	--取排行榜玩家名称 进度值
	local nIndex = 0
	for j = 1,2  do
		for i = 1, 5 do
			local nGlobalId = tYouDrawMeGuess_Cont["Global"][j][1]
			nIndex = nIndex + 1
			tRankUserData[nIndex] = {}
			tRankUserData[nIndex][1] = Get_SysDynaGlobalData(nGlobalId,i)
			tRankUserData[nIndex][2] = Get_SysDynaGlobalDataStr(nGlobalId,i)
		end
	end

	local leftNum = 1113
	local rankNum = 1130
	local tipNum = 1140
	for i = 1 ,10 do
		--进度值
		local nTempGrade = tRankUserData[i][1]
		--玩家名字
		local sUserName  = (tRankUserData[i][2] == "" or tRankUserData[i][2] == "null") and tYouDrawMeGuess_Text["None"] or tRankUserData[i][2]
		tItem[3301360]["Text"..leftNum+i] = Sys_Alignment(tYouDrawMeGuess_Text[3301360]["Text"..rankNum+i],1,tostring(nTempGrade),16,tYouDrawMeGuess_Text[3301360]["Text"..tipNum+i],25,sUserName,45) .. "\n"
		
	end
	
	local tUserRank = CommonFunc_Copy(YouDrawMeGuess_JudgeLocalRank())
	if tUserRank[1] == 0 then
		tItem[3301360]["Text11116"] = string.format(tYouDrawMeGuess_Text[3301360]["Text11116"],tYouDrawMeGuess_Text[3301360]["UserMsg"][1])
	else
		local sStr = string.format(tYouDrawMeGuess_Text[3301360]["UserMsg"][2],tUserRank[1])
		tItem[3301360]["Text11116"] = string.format(tYouDrawMeGuess_Text[3301360]["Text11116"],sStr)
	end
	
	return true
end

tItem[3301360]["tOption11-1"] = {1111}
tItem[3301360]["Option1111"] = tYouDrawMeGuess_Text[3301360]["Option1111"]



-- 高级宝鉴
tItem[3301361] = tItem[3301360] or {}


-- 之前的图鉴保留，本次活动使用新增的图鉴
-- 未完全解锁的图鉴
-- 3307549
tItem[3307549] = tItem[3307549] or {}

tItem[3307549]["Text1-1"] = {111,112}
tItem[3307549]["Text111"] = tYouDrawMeGuess_Text[3307549]["Text111"]
tItem[3307549]["Text112"] = tYouDrawMeGuess_Text[3307549]["Text112"]


-- tItem[3307549]["tOption1-1"] = {111,112,115,114}
tItem[3307549]["tOption1-1"] = {111,115,114}
tItem[3307549]["Option111"] = tYouDrawMeGuess_Text[3307549]["Option111"]
tItem[3307549]["OptionPoint111"] = "2-1"
tItem[3307549]["Option112"] = tYouDrawMeGuess_Text[3307549]["Option112"]
tItem[3307549]["OptionChkFunc112"] = function ()
	return Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"])
end



tItem[3307549]["OptionFunc112"] = "YouDrawMeGuess_Rank</N>3307549"
-- tItem[3307549]["Option113"] = tYouDrawMeGuess_Text[3307549]["Option113"]
-- tItem[3307549]["OptionFunc113"] = ""
tItem[3307549]["Option114"] = tYouDrawMeGuess_Text[3307549]["Option114"]
tItem[3307549]["Option115"] = tYouDrawMeGuess_Text[3307549]["Option115"]
tItem[3307549]["OptionFunc115"] = "YouDrawMeGuess_LeaveMap"
tItem[3307549]["OptionChkFunc115"] = function ()
	return Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"])
end

tItem[3307549]["Text1-2"] = {121,122}
tItem[3307549]["Text121"] = tYouDrawMeGuess_Text[3307549]["Text121"]
tItem[3307549]["Text122"] = tYouDrawMeGuess_Text[3307549]["Text122"]
tItem[3307549]["tOption1-2"] = {121,122,123,124,125,126,127}
tItem[3307549]["Option121"] = tYouDrawMeGuess_Text[3307549]["Option121"]
tItem[3307549]["OptionPoint121"] = "3-1"
tItem[3307549]["Option122"] = tYouDrawMeGuess_Text[3307549]["Option122"]
tItem[3307549]["OptionPoint122"] = "4-1"
tItem[3307549]["Option123"] = tYouDrawMeGuess_Text[3307549]["Option123"]
tItem[3307549]["OptionPoint123"] = "5-1"
tItem[3307549]["Option124"] = tYouDrawMeGuess_Text[3307549]["Option124"]
tItem[3307549]["OptionPoint124"] = "6-1"
tItem[3307549]["Option125"] = tYouDrawMeGuess_Text[3307549]["Option125"]
tItem[3307549]["OptionPoint125"] = "7-1"
tItem[3307549]["Option126"] = tYouDrawMeGuess_Text[3307549]["Option126"]
tItem[3307549]["OptionPoint126"] = "8-1"
tItem[3307549]["Option127"] = tYouDrawMeGuess_Text[3307549]["Option127"]
tItem[3307549]["OptionPoint127"] = "9-1"


tItem[3307549]["Text2-1"] = {211}
tItem[3307549]["Text211"] = tYouDrawMeGuess_Text[3307549]["Text211"]
tItem[3307549]["tOption2-1"] = {211,212,213,214,215,216,217}
tItem[3307549]["Option211"] = tYouDrawMeGuess_Text[3307549]["Option211"]
tItem[3307549]["OptionPoint211"] = "3-1"
tItem[3307549]["Option212"] = tYouDrawMeGuess_Text[3307549]["Option212"]
tItem[3307549]["OptionPoint212"] = "4-1"
tItem[3307549]["Option213"] = tYouDrawMeGuess_Text[3307549]["Option213"]
tItem[3307549]["OptionPoint213"] = "5-1"
tItem[3307549]["Option214"] = tYouDrawMeGuess_Text[3307549]["Option214"]
tItem[3307549]["OptionPoint214"] = "6-1"
tItem[3307549]["Option215"] = tYouDrawMeGuess_Text[3307549]["Option215"]
tItem[3307549]["OptionPoint215"] = "7-1"
tItem[3307549]["Option216"] = tYouDrawMeGuess_Text[3307549]["Option216"]
tItem[3307549]["OptionPoint216"] = "8-1"
tItem[3307549]["Option217"] = tYouDrawMeGuess_Text[3307549]["Option217"]
tItem[3307549]["OptionPoint217"] = "9-1"


--清风源
tItem[3307549]["Text3-1"] = {311}
tItem[3307549]["Text311"] = tYouDrawMeGuess_Text[3307549]["Text311"]
tItem[3307549]["tOption3-1"] = {311,312,313,314,315}
tItem[3307549]["Option311"] = tYouDrawMeGuess_Text[3307549]["Option311"]
tItem[3307549]["OptionFunc311"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>1</N>1</N>1"
tItem[3307549]["Option312"] = tYouDrawMeGuess_Text[3307549]["Option312"]
tItem[3307549]["OptionFunc312"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>1</N>1</N>3"
tItem[3307549]["Option313"] = tYouDrawMeGuess_Text[3307549]["Option313"]
tItem[3307549]["OptionFunc313"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>1</N>1</N>64"
tItem[3307549]["Option314"] = tYouDrawMeGuess_Text[3307549]["Option314"]
tItem[3307549]["OptionFunc314"] = "YouDrawMeGuess_MsgGoBack</N>3307549"

tItem[3307549]["Option315"] = tYouDrawMeGuess_Text[3307549]["Option315"]


--接（2）枫溪林
tItem[3307549]["Text4-1"] = {411}
tItem[3307549]["Text411"] = tYouDrawMeGuess_Text[3307549]["Text411"]
tItem[3307549]["tOption4-1"] = {411,412,414,415}
tItem[3307549]["Option411"] = tYouDrawMeGuess_Text[3307549]["Option411"]
tItem[3307549]["OptionFunc411"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>1</N>2</N>6"
tItem[3307549]["Option412"] = tYouDrawMeGuess_Text[3307549]["Option412"]
tItem[3307549]["OptionFunc412"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>1</N>2</N>9"
tItem[3307549]["Option414"] = tYouDrawMeGuess_Text[3307549]["Option414"]
tItem[3307549]["OptionFunc414"] = "YouDrawMeGuess_MsgGoBack</N>3307549"


tItem[3307549]["Option415"] = tYouDrawMeGuess_Text[3307549]["Option415"]


--接（3）绝情谷
tItem[3307549]["Text5-1"] = {511}
tItem[3307549]["Text511"] = tYouDrawMeGuess_Text[3307549]["Text511"]
tItem[3307549]["tOption5-1"] = {511,512,513,514,515}
tItem[3307549]["Option511"] = tYouDrawMeGuess_Text[3307549]["Option511"]
tItem[3307549]["OptionFunc511"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>2</N>3</N>10"
tItem[3307549]["Option512"] = tYouDrawMeGuess_Text[3307549]["Option512"]
tItem[3307549]["OptionFunc512"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>2</N>3</N>12"
tItem[3307549]["Option513"] = tYouDrawMeGuess_Text[3307549]["Option513"]
tItem[3307549]["OptionFunc513"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>2</N>3</N>13"
tItem[3307549]["Option514"] = tYouDrawMeGuess_Text[3307549]["Option514"]
tItem[3307549]["OptionFunc514"] = "YouDrawMeGuess_MsgGoBack</N>3307549"

tItem[3307549]["Option515"] = tYouDrawMeGuess_Text[3307549]["Option515"]

--接（4）大漠
tItem[3307549]["Text6-1"] = {611}
tItem[3307549]["Text611"] = tYouDrawMeGuess_Text[3307549]["Text611"]
tItem[3307549]["tOption6-1"] = {611,612,613,614,615}
tItem[3307549]["Option611"] = tYouDrawMeGuess_Text[3307549]["Option611"]
tItem[3307549]["OptionFunc611"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>2</N>4</N>14"
tItem[3307549]["Option612"] = tYouDrawMeGuess_Text[3307549]["Option612"]
tItem[3307549]["OptionFunc612"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>2</N>4</N>16"
tItem[3307549]["Option613"] = tYouDrawMeGuess_Text[3307549]["Option613"]
tItem[3307549]["OptionFunc613"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>3</N>4</N>17"
tItem[3307549]["Option614"] = tYouDrawMeGuess_Text[3307549]["Option614"]
tItem[3307549]["OptionFunc614"] = "YouDrawMeGuess_MsgGoBack</N>3307549"
tItem[3307549]["Option615"] = tYouDrawMeGuess_Text[3307549]["Option615"]

--芦花荡
tItem[3307549]["Text7-1"] = {711}
tItem[3307549]["Text711"] = tYouDrawMeGuess_Text[3307549]["Text711"]
tItem[3307549]["tOption7-1"] = {711,712,714,715}
tItem[3307549]["Option711"] = tYouDrawMeGuess_Text[3307549]["Option711"]
tItem[3307549]["OptionFunc711"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>3</N>5</N>19"
tItem[3307549]["Option712"] = tYouDrawMeGuess_Text[3307549]["Option712"]
tItem[3307549]["OptionFunc712"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>3</N>5</N>55"
tItem[3307549]["Option714"] = tYouDrawMeGuess_Text[3307549]["Option714"]
tItem[3307549]["OptionFunc714"] = "YouDrawMeGuess_MsgGoBack</N>3307549"

tItem[3307549]["Option715"] = tYouDrawMeGuess_Text[3307549]["Option715"]

--敦煌
tItem[3307549]["Text8-1"] = {811}
tItem[3307549]["Text811"] = tYouDrawMeGuess_Text[3307549]["Text811"]
tItem[3307549]["tOption8-1"] = {811,812,813,814,815,816}
tItem[3307549]["Option811"] = tYouDrawMeGuess_Text[3307549]["Option811"]
tItem[3307549]["OptionFunc811"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>3</N>6</N>20"
tItem[3307549]["Option812"] = tYouDrawMeGuess_Text[3307549]["Option812"]
tItem[3307549]["OptionFunc812"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>3</N>6</N>56"
tItem[3307549]["Option813"] = tYouDrawMeGuess_Text[3307549]["Option813"]
tItem[3307549]["OptionFunc813"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>4</N>6</N>57"
tItem[3307549]["Option814"] = tYouDrawMeGuess_Text[3307549]["Option814"]
tItem[3307549]["OptionFunc814"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>4</N>6</N>58"
tItem[3307549]["Option815"] = tYouDrawMeGuess_Text[3307549]["Option815"]
tItem[3307549]["OptionFunc815"] = "YouDrawMeGuess_MsgGoBack</N>3307549"

tItem[3307549]["Option816"] = tYouDrawMeGuess_Text[3307549]["Option816"]

--冰封地穴
tItem[3307549]["Text9-1"] = {911}
tItem[3307549]["Text911"] = tYouDrawMeGuess_Text[3307549]["Text911"]
tItem[3307549]["tOption9-1"] = {911,912,914,915}
tItem[3307549]["Option911"] = tYouDrawMeGuess_Text[3307549]["Option911"]
tItem[3307549]["OptionFunc911"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>4</N>7</N>2411"
tItem[3307549]["Option912"] = tYouDrawMeGuess_Text[3307549]["Option912"]
tItem[3307549]["OptionFunc912"] = "YouDrawMeGuess_MonsterShow</N>3307549</N>4</N>7</N>2416"
tItem[3307549]["Option914"] = tYouDrawMeGuess_Text[3307549]["Option914"]
tItem[3307549]["OptionFunc914"] = "YouDrawMeGuess_MsgGoBack</N>3307549"

tItem[3307549]["Option915"] = tYouDrawMeGuess_Text[3307549]["Option915"]

--怪物统一对白
--统一
tItem[3307549]["Text10-1"] = {1011,1012,1013,1014,1015,1016,1017}
tItem[3307549]["Text1011"] = tYouDrawMeGuess_Text[3307549]["Text1011"]
tItem[3307549]["Text1012"] = tYouDrawMeGuess_Text[3307549]["Text1012"]
tItem[3307549]["Text1013"] = tYouDrawMeGuess_Text[3307549]["Text1013"]
tItem[3307549]["Text1014"] = tYouDrawMeGuess_Text[3307549]["Text1014"]
tItem[3307549]["Text1015"] = tYouDrawMeGuess_Text[3307549]["Text1015"]
tItem[3307549]["Text1016"] = tYouDrawMeGuess_Text[3307549]["Text1016"]
tItem[3307549]["Text1017"] = tYouDrawMeGuess_Text[3307549]["Text1017"]
tItem[3307549]["tOption10-1"] = {1011,1012}
tItem[3307549]["Option1011"] = tYouDrawMeGuess_Text[3307549]["Option1011"]
tItem[3307549]["OptionFunc1011"] = ""
tItem[3307549]["Option1012"] = tYouDrawMeGuess_Text[3307549]["Option1012"]




-- tItem[3307549]["Text11-1"] = {1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,11115,11116,11117}
-- tItem[3307549]["Text1111"] = tYouDrawMeGuess_Text[3307549]["Text1111"]
-- tItem[3307549]["Text1112"] = tYouDrawMeGuess_Text[3307549]["Text1112"]
-- tItem[3307549]["Text1113"] = tYouDrawMeGuess_Text[3307549]["Text1113"]
-- tItem[3307549]["Text1114"] = tYouDrawMeGuess_Text[3307549]["Text1114"]
-- tItem[3307549]["Text1115"] = tYouDrawMeGuess_Text[3307549]["Text1115"]
-- tItem[3307549]["Text1116"] = tYouDrawMeGuess_Text[3307549]["Text1116"]
-- tItem[3307549]["Text1117"] = tYouDrawMeGuess_Text[3307549]["Text1117"]
-- tItem[3307549]["Text1118"] = tYouDrawMeGuess_Text[3307549]["Text1118"]
-- tItem[3307549]["Text1119"] = tYouDrawMeGuess_Text[3307549]["Text1119"]
-- tItem[3307549]["Text1120"] = tYouDrawMeGuess_Text[3307549]["Text1120"]
-- tItem[3307549]["Text1121"] = tYouDrawMeGuess_Text[3307549]["Text1121"]
-- tItem[3307549]["Text1122"] = tYouDrawMeGuess_Text[3307549]["Text1122"]
-- tItem[3307549]["Text1123"] = tYouDrawMeGuess_Text[3307549]["Text1123"]
-- tItem[3307549]["Text1124"] = tYouDrawMeGuess_Text[3307549]["Text1124"]
-- tItem[3307549]["Text11115"] = tYouDrawMeGuess_Text[3307549]["Text11115"]
-- tItem[3307549]["Text11116"] = tYouDrawMeGuess_Text[3307549]["Text11116"]
-- tItem[3307549]["Text11117"] = tYouDrawMeGuess_Text[3307549]["Text11117"]
-- tItem[3307549]["ChkFunc11-1"] = function()
	-- local tRankUserData = {}
	-- --取排行榜玩家名称 进度值
	-- local nIndex = 0
	-- for j = 1,2  do
		-- for i = 1, 5 do
			-- local nGlobalId = tYouDrawMeGuess_Cont["Global"][j][1]
			-- nIndex = nIndex + 1
			-- tRankUserData[nIndex] = {}
			-- tRankUserData[nIndex][1] = Get_SysDynaGlobalData(nGlobalId,i)
			-- tRankUserData[nIndex][2] = Get_SysDynaGlobalDataStr(nGlobalId,i)
		-- end
	-- end

	-- local leftNum = 1113
	-- local rankNum = 1130
	-- local tipNum = 1140
	-- for i = 1 ,10 do
		-- --进度值
		-- local nTempGrade = tRankUserData[i][1]
		-- --玩家名字
		-- local sUserName  = (tRankUserData[i][2] == "" or tRankUserData[i][2] == "null") and tYouDrawMeGuess_Text["None"] or tRankUserData[i][2]
		-- tItem[3307549]["Text"..leftNum+i] = Sys_Alignment(tYouDrawMeGuess_Text[3307549]["Text"..rankNum+i],1,tostring(nTempGrade),16,tYouDrawMeGuess_Text[3307549]["Text"..tipNum+i],25,sUserName,45) .. "\n"
		
	-- end
	
	-- local tUserRank = CommonFunc_Copy(YouDrawMeGuess_JudgeLocalRank())
	-- if tUserRank[1] == 0 then
		-- tItem[3307549]["Text11116"] = string.format(tYouDrawMeGuess_Text[3307549]["Text11116"],tYouDrawMeGuess_Text[3307549]["UserMsg"][1])
	-- else
		-- local sStr = string.format(tYouDrawMeGuess_Text[3307549]["UserMsg"][2],tUserRank[1])
		-- tItem[3307549]["Text11116"] = string.format(tYouDrawMeGuess_Text[3307549]["Text11116"],sStr)
	-- end
	
	-- return true
-- end

tItem[3307549]["tOption11-1"] = {1111}
tItem[3307549]["Option1111"] = tYouDrawMeGuess_Text[3307549]["Option1111"]



-- 高级宝鉴
tItem[3307550] = tItem[3307549] or {}

-- 黄色神纹随机包（赠）
tItem[3306919] = tItem[3306919] or {}
tItem[3306919]["Function"] = function(nItemId,sItemName)
	YouDrawMeGuess_OpenGodGift(nItemId)
end

------------------------------------------------------------------------------------NPC模版
tNpcFace[4410] = 179
tNpcFace[3538] = 156
tNpcGossip[19809] = tNpcGossip[19809] or DefaultNpc:new{}
tNpcGossip[19809]["OptionHidden"] = 1

tNpcGossip[19809]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[19809]["Text111"] = tYouDrawMeGuess_Text[19809]["Text111"]
tNpcGossip[19809]["Text112"] = tYouDrawMeGuess_Text[19809]["Text112"]
tNpcGossip[19809]["Text113"] = tYouDrawMeGuess_Text[19809]["Text113"]
tNpcGossip[19809]["Text114"] = tYouDrawMeGuess_Text[19809]["Text114"]
tNpcGossip[19809]["Text115"] = tYouDrawMeGuess_Text[19809]["Text115"]
tNpcGossip[19809]["Text116"] = tYouDrawMeGuess_Text[19809]["Text116"]
tNpcGossip[19809]["Text117"] = tYouDrawMeGuess_Text[19809]["Text117"]
tNpcGossip[19809]["tOption1-1"] = {111}
tNpcGossip[19809]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"])
end

tNpcGossip[19809]["Option111"] = tYouDrawMeGuess_Text[19809]["Option111"]


tNpcGossip[19809]["Text1-2"] = {121}
tNpcGossip[19809]["Text121"] = tYouDrawMeGuess_Text[19809]["Text121"]
tNpcGossip[19809]["tOption1-2"] = {121}
tNpcGossip[19809]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"])
end

tNpcGossip[19809]["Option121"] = tYouDrawMeGuess_Text[19809]["Option121"]


tNpcGossip[19809]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[19809]["Text131"] = tYouDrawMeGuess_Text[19809]["Text131"]
tNpcGossip[19809]["Text132"] = tYouDrawMeGuess_Text[19809]["Text132"]
tNpcGossip[19809]["Text133"] = tYouDrawMeGuess_Text[19809]["Text133"]
tNpcGossip[19809]["Text134"] = tYouDrawMeGuess_Text[19809]["Text134"]
tNpcGossip[19809]["Text135"] = tYouDrawMeGuess_Text[19809]["Text135"]
tNpcGossip[19809]["Text136"] = tYouDrawMeGuess_Text[19809]["Text136"]
tNpcGossip[19809]["Text137"] = tYouDrawMeGuess_Text[19809]["Text137"]
tNpcGossip[19809]["tOption1-3"] = {131}
tNpcGossip[19809]["ChkFunc1-3"] = function()
	return not User_JudgeLevelAndMetempsychosis(tYouDrawMeGuess_Cont["Level"],tYouDrawMeGuess_Cont["Meto"])
end

tNpcGossip[19809]["Option131"] = tYouDrawMeGuess_Text[19809]["Option131"]

tNpcGossip[19809]["Text1-4"] = {141,142,143,144,145,146,147}
tNpcGossip[19809]["Text141"] = tYouDrawMeGuess_Text[19809]["Text141"]
tNpcGossip[19809]["Text142"] = tYouDrawMeGuess_Text[19809]["Text142"]
tNpcGossip[19809]["Text143"] = tYouDrawMeGuess_Text[19809]["Text143"]
tNpcGossip[19809]["Text144"] = tYouDrawMeGuess_Text[19809]["Text144"]
tNpcGossip[19809]["Text145"] = tYouDrawMeGuess_Text[19809]["Text145"]
tNpcGossip[19809]["Text146"] = tYouDrawMeGuess_Text[19809]["Text146"]
tNpcGossip[19809]["Text147"] = tYouDrawMeGuess_Text[19809]["Text147"]
tNpcGossip[19809]["tOption1-4"] = {141,142,143,144}


tNpcGossip[19809]["Option141"] = tYouDrawMeGuess_Text[19809]["Option141"]
tNpcGossip[19809]["OptionFunc141"] = "YouDrawMeGuess_GoInMap</N>19809"
tNpcGossip[19809]["Option142"] = tYouDrawMeGuess_Text[19809]["Option142"]
tNpcGossip[19809]["OptionChkFunc142"] = function()
	local nEvent = tYouDrawMeGuess_Stc[7]["EventType"]
	local nType = tYouDrawMeGuess_Stc[7]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	-- 替换成新增图鉴的ID
	-- local nOldItem = tYouDrawMeGuess_Cont["AllRegionLocked"]["OldItem"]
	-- local nNewItem = tYouDrawMeGuess_Cont["AllRegionLocked"]["NewItem"]
	local nOldItem = tYouDrawMeGuess_Cont["NewItemId"]["Handbook"][1]
	local nNewItem = tYouDrawMeGuess_Cont["NewItemId"]["Handbook"][2]
	
	
	return nData ~= 0 and  not (Item_ChkItem(nOldItem) or Item_ChkItem(nNewItem))
end


tNpcGossip[19809]["OptionFunc142"] = "YouDrawMeGuess_SecendReward</N>19809"
tNpcGossip[19809]["Option143"] = tYouDrawMeGuess_Text[19809]["Option143"]
tNpcGossip[19809]["OptionPoint143"] = "3-1"
tNpcGossip[19809]["Option144"] = tYouDrawMeGuess_Text[19809]["Option144"]



tNpcGossip[19809]["Text2-1"] = {211}
tNpcGossip[19809]["Text211"] = tYouDrawMeGuess_Text[19809]["Text211"]
tNpcGossip[19809]["tOption2-1"] = {211}
tNpcGossip[19809]["Option211"] = tYouDrawMeGuess_Text[19809]["Option211"]


tNpcGossip[19809]["Text3-1"] = {311,312,313,314}
tNpcGossip[19809]["Text311"] = tYouDrawMeGuess_Text[19809]["Text311"]
tNpcGossip[19809]["Text312"] = tYouDrawMeGuess_Text[19809]["Text312"]
tNpcGossip[19809]["Text313"] = tYouDrawMeGuess_Text[19809]["Text313"]
tNpcGossip[19809]["Text314"] = tYouDrawMeGuess_Text[19809]["Text314"]
tNpcGossip[19809]["tOption3-1"] = {311}
tNpcGossip[19809]["Option311"] = tYouDrawMeGuess_Text[19809]["Option311"]


tNpcGossip[19809]["Text4-1"] = {411}
tNpcGossip[19809]["Text411"] = tYouDrawMeGuess_Text[19809]["Text411"]
tNpcGossip[19809]["tOption4-1"] = {411}
tNpcGossip[19809]["Option411"] = tYouDrawMeGuess_Text[19809]["Option411"]

tNpcGossip[19809]["Text5-1"] = {511}
tNpcGossip[19809]["Text511"] = tYouDrawMeGuess_Text[19809]["Text511"]
tNpcGossip[19809]["tOption5-1"] = {511}
tNpcGossip[19809]["Option511"] = tYouDrawMeGuess_Text[19809]["Option511"]

tNpcGossip[19809]["Text6-1"] = {611}
tNpcGossip[19809]["Text611"] = tYouDrawMeGuess_Text[19809]["Text611"]
tNpcGossip[19809]["tOption6-1"] = {611}
tNpcGossip[19809]["Option611"] = tYouDrawMeGuess_Text[19809]["Option611"]



tNpcFace[4411] = 1122
tNpcGossip[19810] = tNpcGossip[19810] or DefaultNpc:new{}
tNpcGossip[19810]["OptionHidden"] = 1

tNpcGossip[19810]["Text1-1"] = {111,112,113}
tNpcGossip[19810]["Text111"] = tYouDrawMeGuess_Text[19810]["Text111"]
tNpcGossip[19810]["Text112"] = tYouDrawMeGuess_Text[19810]["Text112"]
tNpcGossip[19810]["Text113"] = tYouDrawMeGuess_Text[19810]["Text113"]
-- tNpcGossip[19810]["tOption1-1"] = {111,112,114,113}
tNpcGossip[19810]["tOption1-1"] = {111,112,115,116,114,113}
tNpcGossip[19810]["ChkFunc1-1"] = function()
	local nEvent = tYouDrawMeGuess_Stc[6]["EventType"]
	local nType = tYouDrawMeGuess_Stc[6]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	local nTimes = YouDrawMeGuess_Times()
	if nTimes <= 0 then
		-- tNpcGossip[19810]["tOption1-1"] = {112,114,113}
		tNpcGossip[19810]["tOption1-1"] = {112,115,116,114,113}
	else
		tNpcGossip[19810]["Option111"] = string.format(tYouDrawMeGuess_Text[19810]["Option111"],nTimes)
		-- tNpcGossip[19810]["tOption1-1"] = {111,114,113}
		tNpcGossip[19810]["tOption1-1"] = {111,116,114,113}
	end	
	
	return nData == 0
end

tNpcGossip[19810]["Option111"] = tYouDrawMeGuess_Text[19810]["Option111"]
tNpcGossip[19810]["OptionFunc111"] = "YouDrawMeGuess_GetTask</N>19810"
tNpcGossip[19810]["Option112"] = tYouDrawMeGuess_Text[19810]["Option112"]
tNpcGossip[19810]["OptionFunc112"] = "YouDrawMeGuess_GetTaskByCp</N>19810"
tNpcGossip[19810]["Option113"] = tYouDrawMeGuess_Text[19810]["Option113"]
tNpcGossip[19810]["Option114"] = tYouDrawMeGuess_Text[19810]["Option114"]
tNpcGossip[19810]["OptionFunc114"] = "YouDrawMeGuess_LeaveMap"
-- 新增选项
tNpcGossip[19810]["Option115"] = tYouDrawMeGuess_Text[19810]["Option115"]
tNpcGossip[19810]["OptionFunc115"] = "YouDrawMeGuess_GetTaskByMoney</N>19810"
tNpcGossip[19810]["Option116"] = tYouDrawMeGuess_Text[19810]["Option116"]
tNpcGossip[19810]["OptionFunc116"] = "YouDrawMeGuess_GetTaskReward</N>19810"

tNpcGossip[19810]["Text1-2"] = {121}
tNpcGossip[19810]["Text121"] = tYouDrawMeGuess_Text[19810]["Text121"]
-- tNpcGossip[19810]["Text122"] = tYouDrawMeGuess_Text[19810]["Text122"]
-- tNpcGossip[19810]["Text123"] = tYouDrawMeGuess_Text[19810]["Text123"]
-- tNpcGossip[19810]["Text124"] = tYouDrawMeGuess_Text[19810]["Text124"]
-- tNpcGossip[19810]["Text125"] = tYouDrawMeGuess_Text[19810]["Text125"]
-- tNpcGossip[19810]["Text126"] = tYouDrawMeGuess_Text[19810]["Text126"]
tNpcGossip[19810]["tOption1-2"] = {121,122,124,123}
tNpcGossip[19810]["ChkFunc1-2"] = function()
	local tMsg = CommonFunc_Copy(YouDrawMeGuess_GoBackMsg()) 
	local nEvent = tYouDrawMeGuess_Stc[6]["EventType"]
	local nType = tYouDrawMeGuess_Stc[6]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nLength = #tMsg
	local m = 1
	
	local nRegion,nMonsterId,nFlag = YouDrawMeGuess_ReturnMonster(nEvent,nType)	
	
	if nLength == nil or nLength <=0 then
		tNpcGossip[19810]["Text1-2"] = {121}
		return true
	end
	tNpcGossip[19810]["Text1-2"] = {121}
	for i=122,(122 + nLength - 1) do
			local nNumFlag = tostring(i - 121)
			
			tNpcGossip[19810]["Text" .. i] = string.format(tYouDrawMeGuess_Text["MonsterMsg"][nRegion][nMonsterId][tMsg[m]],nNumFlag)	

			local nNum = 0
			for k,v in pairs(tNpcGossip[19810]["Text1-2"]) do
				if v == i then
					nNum = nNum + 1
				end
			end
			
			if nNum == 0 then			
				table.insert(tNpcGossip[19810]["Text1-2"],i)
			end
			m = m+1
	end
	return true
end

tNpcGossip[19810]["Option121"] = tYouDrawMeGuess_Text[19810]["Option121"]
tNpcGossip[19810]["OptionFunc121"] = "YouDrawMeGuess_GoMap</N>19810"
tNpcGossip[19810]["Option122"] = tYouDrawMeGuess_Text[19810]["Option122"]
tNpcGossip[19810]["OptionFunc122"] = "YouDrawMeGuess_ByMsg</N>19810</S>1-2"
tNpcGossip[19810]["OptionChkFunc122"] = function()
	return YouDrawMeGuess_OneMsg()
end

tNpcGossip[19810]["Option123"] = tYouDrawMeGuess_Text[19810]["Option123"]
tNpcGossip[19810]["Option124"] = tYouDrawMeGuess_Text[19810]["Option124"]

tNpcGossip[19810]["OptionFunc124"] = "YouDrawMeGuess_ChkByMsg</N>19810"
tNpcGossip[19810]["OptionChkFunc124"] = function()
	return (not YouDrawMeGuess_OneMsg()) and (#CommonFunc_Copy(YouDrawMeGuess_MsgNum()) > 0)
end




--我要参与（剩X次）】
tNpcGossip[19810]["Text2-1"] = {211,212}
tNpcGossip[19810]["Text211"] = tYouDrawMeGuess_Text[19810]["Text211"]
tNpcGossip[19810]["Text212"] = tYouDrawMeGuess_Text[19810]["Text212"]
-- tNpcGossip[19810]["Text213"] = tYouDrawMeGuess_Text[19810]["Text213"]
-- tNpcGossip[19810]["Text214"] = tYouDrawMeGuess_Text[19810]["Text214"]
-- tNpcGossip[19810]["Text215"] = tYouDrawMeGuess_Text[19810]["Text215"]
-- tNpcGossip[19810]["Text216"] = tYouDrawMeGuess_Text[19810]["Text216"]
-- tNpcGossip[19810]["Text217"] = tYouDrawMeGuess_Text[19810]["Text217"]
tNpcGossip[19810]["ChkFunc2-1"] = function()
	local tMsg = CommonFunc_Copy(YouDrawMeGuess_GoBackMsg()) 
	local nEvent = tYouDrawMeGuess_Stc[6]["EventType"]
	local nType = tYouDrawMeGuess_Stc[6]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nLength = #tMsg
	local m = 1
	
	local nRegion,nMonsterId,nFlag = YouDrawMeGuess_ReturnMonster(nEvent,nType)	
	
	if nLength == nil or nLength <=0 then
		tNpcGossip[19810]["Text2-1"] = {211,212}
		return true
	end
	tNpcGossip[19810]["Text2-1"] = {211,212}
	for i=213,(213 + nLength - 1) do
			local nNumFlag = i - 212
			tNpcGossip[19810]["Text" .. i] = string.format(tYouDrawMeGuess_Text["MonsterMsg"][nRegion][nMonsterId][tMsg[m]],nNumFlag)
			local nNum = 0
			for k,v in pairs(tNpcGossip[19810]["Text2-1"]) do
				if v == i then
					nNum = nNum + 1
				end
			end
			
			if nNum == 0 then			
				table.insert(tNpcGossip[19810]["Text2-1"],i)
			end
			m = m+1
	end
	return true
end




tNpcGossip[19810]["tOption2-1"] = {211,212,214,213}
tNpcGossip[19810]["Option211"] = tYouDrawMeGuess_Text[19810]["Option211"]
tNpcGossip[19810]["OptionFunc211"] = "YouDrawMeGuess_GoMap</N>19810"
tNpcGossip[19810]["Option212"] = tYouDrawMeGuess_Text[19810]["Option212"]
tNpcGossip[19810]["OptionChkFunc212"] = function()
	return YouDrawMeGuess_OneMsg()
end
tNpcGossip[19810]["OptionFunc212"] = "YouDrawMeGuess_ByMsg</N>19810</S>2-1"
tNpcGossip[19810]["Option213"] = tYouDrawMeGuess_Text[19810]["Option213"]

tNpcGossip[19810]["Option214"] = tYouDrawMeGuess_Text[19810]["Option214"]
tNpcGossip[19810]["OptionChkFunc214"] = function()
	return (not YouDrawMeGuess_OneMsg()) and (#CommonFunc_Copy(YouDrawMeGuess_MsgNum()) > 0)
end
tNpcGossip[19810]["OptionFunc214"] = "YouDrawMeGuess_ChkByMsg</N>19810"

--领取奖励（无奖励）
tNpcGossip[19810]["Text2-2"] = {221,222,223}
tNpcGossip[19810]["Text221"] = tYouDrawMeGuess_Text[19810]["Text221"]
tNpcGossip[19810]["Text222"] = tYouDrawMeGuess_Text[19810]["Text222"]
tNpcGossip[19810]["Text223"] = tYouDrawMeGuess_Text[19810]["Text223"]
tNpcGossip[19810]["tOption2-2"] = {221}

-- 领取奖励（背包满）
--领取奖励（无奖励）
tNpcGossip[19810]["Text2-2"] = {221,222,223}
tNpcGossip[19810]["Text221"] = tYouDrawMeGuess_Text[19810]["Text221"]
tNpcGossip[19810]["Text222"] = tYouDrawMeGuess_Text[19810]["Text222"]
tNpcGossip[19810]["Text223"] = tYouDrawMeGuess_Text[19810]["Text223"]
tNpcGossip[19810]["tOption2-2"] = {221}
tNpcGossip[19810]["Option221"] = tYouDrawMeGuess_Text[19810]["Option221"]

--【接1、送我前往，失败，没有《妖魔宝鉴》】
tNpcGossip[19810]["Text2-3"] = {231}
tNpcGossip[19810]["Text231"] = tYouDrawMeGuess_Text[19810]["Text231"]
tNpcGossip[19810]["tOption2-3"] = {231}
tNpcGossip[19810]["Option231"] = tYouDrawMeGuess_Text[19810]["Option231"]

--【接1、送我前往，成功】
tNpcGossip[19810]["Text4-1"] = {411}
tNpcGossip[19810]["Text411"] = tYouDrawMeGuess_Text[19810]["Text411"]
tNpcGossip[19810]["tOption4-1"] = {411,412,413,414,415,416,417,419,418}
tNpcGossip[19810]["Option411"] = tYouDrawMeGuess_Text[19810]["Option411"]
tNpcGossip[19810]["OptionFunc411"] = "YouDrawMeGuess_ChgMap</N>19810</N>1"
tNpcGossip[19810]["Option412"] = tYouDrawMeGuess_Text[19810]["Option412"]
tNpcGossip[19810]["OptionFunc412"] = "YouDrawMeGuess_ChgMap</N>19810</N>2"
tNpcGossip[19810]["Option413"] = tYouDrawMeGuess_Text[19810]["Option413"]
tNpcGossip[19810]["OptionFunc413"] = "YouDrawMeGuess_ChgMap</N>19810</N>3"
tNpcGossip[19810]["Option414"] = tYouDrawMeGuess_Text[19810]["Option414"]
tNpcGossip[19810]["OptionFunc414"] = "YouDrawMeGuess_ChgMap</N>19810</N>4"
tNpcGossip[19810]["Option415"] = tYouDrawMeGuess_Text[19810]["Option415"]
tNpcGossip[19810]["OptionFunc415"] = "YouDrawMeGuess_ChgMap</N>19810</N>5"
tNpcGossip[19810]["Option416"] = tYouDrawMeGuess_Text[19810]["Option416"]
tNpcGossip[19810]["OptionFunc416"] = "YouDrawMeGuess_ChgMap</N>19810</N>6"
tNpcGossip[19810]["Option417"] = tYouDrawMeGuess_Text[19810]["Option417"]
tNpcGossip[19810]["OptionFunc417"] = "YouDrawMeGuess_ChgMap</N>19810</N>7"
tNpcGossip[19810]["Option418"] = tYouDrawMeGuess_Text[19810]["Option418"]

tNpcGossip[19810]["Option419"] = tYouDrawMeGuess_Text[19810]["Option419"]
tNpcGossip[19810]["OptionFunc419"] = "YouDrawMeGuess_ChgMap</N>19810</N>8"

--【接2）我要参与（27天石）】
tNpcGossip[19810]["Text5-1"] = {511,512}
tNpcGossip[19810]["Text511"] = tYouDrawMeGuess_Text[19810]["Text511"]
tNpcGossip[19810]["Text512"] = tYouDrawMeGuess_Text[19810]["Text512"]
tNpcGossip[19810]["tOption5-1"] = {511,512}
tNpcGossip[19810]["Option511"] = tYouDrawMeGuess_Text[19810]["Option511"]
tNpcGossip[19810]["OptionFunc511"] = "YouDrawMeGuess_SureByCp</N>19810"
tNpcGossip[19810]["Option512"] = tYouDrawMeGuess_Text[19810]["Option512"]

-- 我要参与（80w银两）】
tNpcGossip[19810]["Text5-2"] = {521,522}
tNpcGossip[19810]["Text521"] = tYouDrawMeGuess_Text[19810]["Text521"]
tNpcGossip[19810]["Text522"] = tYouDrawMeGuess_Text[19810]["Text522"]
tNpcGossip[19810]["tOption5-2"] = {521,522}
tNpcGossip[19810]["Option521"] = tYouDrawMeGuess_Text[19810]["Option521"]
tNpcGossip[19810]["OptionFunc521"] = "YouDrawMeGuess_SureByMoney</N>19810"
tNpcGossip[19810]["Option522"] = tYouDrawMeGuess_Text[19810]["Option522"]

--【接【1】确定花费27天石，天石不足】
tNpcGossip[19810]["Text6-1"] = {611}
tNpcGossip[19810]["Text611"] = tYouDrawMeGuess_Text[19810]["Text611"]
tNpcGossip[19810]["tOption6-1"] = {611}
tNpcGossip[19810]["Option611"] = tYouDrawMeGuess_Text[19810]["Option611"]

-- 确定花费80w银两，银两不足
tNpcGossip[19810]["Text6-2"] = {621}
tNpcGossip[19810]["Text621"] = tYouDrawMeGuess_Text[19810]["Text621"]
tNpcGossip[19810]["tOption6-2"] = {621}
tNpcGossip[19810]["Option621"] = tYouDrawMeGuess_Text[19810]["Option621"]

--【接2、我要提示，失败，提示已全部获得】
tNpcGossip[19810]["Text7-1"] = {711}
tNpcGossip[19810]["Text711"] = tYouDrawMeGuess_Text[19810]["Text711"]
tNpcGossip[19810]["tOption7-1"] = {711}
tNpcGossip[19810]["Option711"] = tYouDrawMeGuess_Text[19810]["Option711"]

--【接2、我要提示，成功，非本日第1次获取提示】
tNpcGossip[19810]["Text8-1"] = {811}
tNpcGossip[19810]["Text811"] = tYouDrawMeGuess_Text[19810]["Text811"]
tNpcGossip[19810]["tOption8-1"] = {811,812}
tNpcGossip[19810]["Option811"] = tYouDrawMeGuess_Text[19810]["Option811"]
tNpcGossip[19810]["OptionFunc811"] = "YouDrawMeGuess_ByMsgCp</N>19810</S>1-2"
tNpcGossip[19810]["Option812"] = tYouDrawMeGuess_Text[19810]["Option812"]

--【接（1）确定花费3天石，失败，天石不足】
tNpcGossip[19810]["Text9-1"] = {911}
tNpcGossip[19810]["Text911"] = tYouDrawMeGuess_Text[19810]["Text911"]
tNpcGossip[19810]["tOption9-1"] = {911}
tNpcGossip[19810]["Option911"] = tYouDrawMeGuess_Text[19810]["Option911"]

-- 狐妖阿蓝
tNpcGossip[22636] = tNpcGossip[22636] or DefaultNpc:new{}
tNpcGossip[22636]["OptionHidden"] = 1
tNpcGossip[22636]["DialogueText"] = tYouDrawMeGuess_Text[22636]
-- 活动前
tNpcGossip[22636]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[22636]["tOption1-1"] = {111}
tNpcGossip[22636]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"])
end
-- 活动后
tNpcGossip[22636]["Text1-2"] = {121}
tNpcGossip[22636]["tOption1-2"] = {121}
tNpcGossip[22636]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"])
end
-- 活动中，不满足条件
tNpcGossip[22636]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[22636]["tOption1-3"] = {131}
tNpcGossip[22636]["ChkFunc1-3"] = function ()
	-- 时间检测
	if Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tYouDrawMeGuess_Cont["Level"],tYouDrawMeGuess_Cont["Meto"]) then
		return true
	end
	
	return false
end

-- 活动中，满足条件
tNpcGossip[22636]["Text1-4"] = {141,142,143,144,145,146,147}
tNpcGossip[22636]["tOption1-4"] = {141,142,143,144}
tNpcGossip[22636]["ChkFunc1-4"] = function ()
	local nEvent_11 = tYouDrawMeGuess_Stc[11]["EventType"]
	local nType_11 = tYouDrawMeGuess_Stc[11]["DataType"]
	local nLimit_11 = tYouDrawMeGuess_Stc[11]["Limit"]
	local nEvent_12 = tYouDrawMeGuess_Stc[12]["EventType"]
	local nType_12 = tYouDrawMeGuess_Stc[12]["DataType"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_12,nType_12,1,4) then
		Task_SetStatistic(nEvent_12,nType_12,0,1)
		Task_SetStcTimestamp(nEvent_12,nType_12,0)
	end
	if Task_StcInterval(nEvent_11,nType_11,1,4) then
		Task_SetStatistic(nEvent_11,nType_11,0,1)
		Task_SetStcTimestamp(nEvent_11,nType_11,0)
	end
	
	local nData_11 = Get_UserStatisticValue(nEvent_11,nType_11)
	local nData_12 = Get_UserStatisticValue(nEvent_12,nType_12)
	
	-- 时间与等级检测
	if Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tYouDrawMeGuess_Cont["Level"],tYouDrawMeGuess_Cont["Meto"]) then
		if nData_11 == nLimit_11 then
			tNpcGossip[22636]["tOption1-4"] = {141,143,144}
		elseif nData_12 < tYouDrawMeGuess_Cont["Score"][nData_11 + 1] then
			tNpcGossip[22636]["tOption1-4"] = {141,143,144}
		else
			tNpcGossip[22636]["tOption1-4"] = {141,142,144}
		end
		return true
	end
	
	return false
end

tNpcGossip[22636]["OptionFunc141"] = "YouDrawMeGuess_HandInJadeChk</N>22636"
tNpcGossip[22636]["OptionPoint142"] = "2-3"
tNpcGossip[22636]["OptionPoint143"] = "2-3"
tNpcGossip[22636]["OptionPoint144"] = "2-4"

-- 灵玉不足
tNpcGossip[22636]["Text2-1"] = {211,212}
tNpcGossip[22636]["tOption2-1"] = {211}

-- 上交灵玉
tNpcGossip[22636]["Text2-2"] = {221,222,223}
tNpcGossip[22636]["tOption2-2"] = {221,222,223}

-- 查看积分奖励
tNpcGossip[22636]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310}
tNpcGossip[22636]["tOption2-3"] = {231,232}
tNpcGossip[22636]["ChkFunc2-3"] = function ()
	local nEvent_11 = tYouDrawMeGuess_Stc[11]["EventType"]
	local nType_11 = tYouDrawMeGuess_Stc[11]["DataType"]
	local nLimit_11 = tYouDrawMeGuess_Stc[11]["Limit"]
	local nEvent_12 = tYouDrawMeGuess_Stc[12]["EventType"]
	local nType_12 = tYouDrawMeGuess_Stc[12]["DataType"]
	
	-- 时间检测
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return false
	end
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_11,nType_11,1,4) then
		Task_SetStatistic(nEvent_11,nType_11,0,1)
		Task_SetStcTimestamp(nEvent_11,nType_11,0)
	end
	if Task_StcInterval(nEvent_12,nType_12,1,4) then
		Task_SetStatistic(nEvent_12,nType_12,0,1)
		Task_SetStcTimestamp(nEvent_12,nType_12,0)
	end
	
	local nData_11 = Get_UserStatisticValue(nEvent_11,nType_11)
	local nData_12 = Get_UserStatisticValue(nEvent_12,nType_12)
	
	-- 判断对应奖励是否被领取
	for i=1, nLimit_11 do
		if nData_11 >= i then
			tNpcGossip[22636]["Text23" .. i+3] = tYouDrawMeGuess_Text[22636]["Text23" .. i+3] .. tYouDrawMeGuess_Text["AlreadyReward"] .. "\n"
		else
			tNpcGossip[22636]["Text23" .. i+3] = tYouDrawMeGuess_Text[22636]["Text23" .. i+3] .. "\n"
		end
	end
	
	tNpcGossip[22636]["Text2310"] = string.format(tYouDrawMeGuess_Text[22636]["Text2310"],nData_12)
	
	-- 判断是否有奖励可以领取
	if nData_11 == nLimit_11 then 
		tNpcGossip[22636]["tOption2-3"] = {232}
	elseif nData_12 < tYouDrawMeGuess_Cont["Score"][nData_11 + 1] then
		tNpcGossip[22636]["tOption2-3"] = {232}
	else
		tNpcGossip[22636]["tOption2-3"] = {231,232}
	end
	return true
end

-- 查看排行榜
tNpcGossip[22636]["Text2-4"] = {241,242,243,244,245,246,247,248,249,2410,2411,2412,2413,2414,2415,2416}
tNpcGossip[22636]["tOption2-4"] = {241}
tNpcGossip[22636]["ChkFunc2-4"] = function ()
	local nEvent_12 = tYouDrawMeGuess_Stc[12]["EventType"]
	local nType_12 = tYouDrawMeGuess_Stc[12]["DataType"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_12,nType_12,1,4) then
		Task_SetStatistic(nEvent_12,nType_12,0,1)
		Task_SetStcTimestamp(nEvent_12,nType_12,0)
	end
	
	-- 时间检测
	if not Sys_ChkFullTime(tActivityTime["YouDrawMeGuess"]["ActivityTime"]) then
		return false
	end
	
	local tText = {241,242,243}
	-- 获取当前排行榜的数据
	local nIndex = tYouDrawMeGuess_Cont["nRankIndex"]
	local nRankNum = tRankingFunc_Info[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	local nGlobalIndex = 1
	local nPos = 0
	for i = 1,nRankNum do
		local nGlobalId = tRankingFunc_Info[nIndex]["Global"][nGlobalIndex]
		
		if nGlobalId == nil then
			break
		end

		local nScore = Get_SysDynaGlobalData(nGlobalId,nPos)
		-- local nUserId = Get_SysDynaGlobalData(nGlobalId,nPos + 1)
		local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
		
		if nScore == 0 then
			tNpcGossip[22636]["Text24" .. i+3] = Sys_Alignment(tYouDrawMeGuess_Text[22636]["Text24" .. i+3],8,tYouDrawMeGuess_Text[22636]["None"],20,tYouDrawMeGuess_Text[22636]["None"],50) .. "\n"
		else
			tNpcGossip[22636]["Text24" .. i+3] = Sys_Alignment(tYouDrawMeGuess_Text[22636]["Text24" .. i+3],8,tostring(nScore),20,sUserName,50) .. "\n"
		end
		if i >= 7 then
			table.insert(tText, 2403+i)
		else
			table.insert(tText, 243+i)
		end
		
		if nPos == 4 then
			nPos = 0
			nGlobalIndex = nGlobalIndex + 1
		else
			nPos = nPos + 2
		end
	end
	
	table.insert(tText,2414)
	table.insert(tText,2415)
	
	local nData_12 = Get_UserStatisticValue(nEvent_12,nType_12)
	tNpcGossip[22636]["Text2416"] = string.format(tYouDrawMeGuess_Text[22636]["Text2416"],nData_12)
	table.insert(tText,2416)
	tNpcGossip[22636]["Text2-4"] = tText
	return true
end

tNpcGossip[22636]["OptionFunc221"] = "YouDrawMeGuess_HandInJade</N>22636</N>3307510"
tNpcGossip[22636]["OptionFunc222"] = "YouDrawMeGuess_HandInJade</N>22636</N>3307511"
tNpcGossip[22636]["OptionFunc231"] = "YouDrawMeGuess_GetReward</N>22636"
tNpcGossip[22636]["OptionPoint241"] = "3-2"

-- 背包空间不足
tNpcGossip[22636]["Text3-1"] = {311}
tNpcGossip[22636]["tOption3-1"] = {311}

-- 积分排行奖励
tNpcGossip[22636]["Text3-2"] = {321,322,323,324,325,326,327,328,329,3210,3211,3212,3213,3214}
tNpcGossip[22636]["tOption3-2"] = {321}

---------------------------------------------------------------- 怪物模版--------------------------------------------
-- 片区怪掉落配置
local tYouDrawMeGuess_AreaLoad = {}
	tYouDrawMeGuess_AreaLoad["ActivityTime"] = tActivityTime["YouDrawMeGuess"]["ActivityTime"]
	tYouDrawMeGuess_AreaLoad["Function"] = YouDrawMeGuess_BeKilled
	tYouDrawMeGuess_AreaLoad["Area"] = {1,2,3,4,5,6,7}

table.insert(tMonsterDrop_AreaLoad,tYouDrawMeGuess_AreaLoad)


-------------------------------------------------------------时间自检模版
-- 00:00 发送邮件，同时清除动态码
-- 改为新版时间自检
-- local tYouDrawMeGuess_SendMail = {}
	-- tYouDrawMeGuess_SendMail["TimeType"] = 4
	-- tYouDrawMeGuess_SendMail["Time"] = "00:00 00:00"
	-- tYouDrawMeGuess_SendMail["Func"] = YouDrawMeGuess_RewardMail
-- table.insert(tSystemTime_InitialData,tYouDrawMeGuess_SendMail)

-- 旧版时间自检
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],YouDrawMeGuess_RewardMail)

-------------------------------------------------------------陷阱
tTrap[1510] = tTrap[1510] or {}
tTrap[1510]["Function"] = function (nTrapId,nTrapType)
	YouDrawMeGuess_LeaveMap()
end
