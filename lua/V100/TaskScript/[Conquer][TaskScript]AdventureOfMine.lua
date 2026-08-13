----------------------------------------------------------------------------------------
--Name:		150907[简体征服][活动脚本]矿洞冒险任务改版
--Purpose:		改版
--Creator:		林辉山
--Created:		2015/09/07
----------------------------------------------------------------------------------------


--stc(138, 21)		表示最后一次使用vip的时间

--stc(138, 22) ~ stc(138, 25) 各个宝盒合成时间记录

--task_id 6467 矿洞冒险任务
--data1 炫日宝盒 当天合成记录，0表示未合成，1表示已合成
--data2 残月宝盒 当天合成记录，0表示未合成，1表示已合成
--data3 繁星宝盒 当天合成记录，0表示未合成，1表示已合成
--data4 流云宝盒 当天合成记录，0表示未合成，1表示已合成

--task_id 6476 矿洞冒险通行证任务
--不存在表示未接受任务
--data1 == 1 表示接受任务
--data1 == 2 表示完成任务

-----------------------------------------------------------------------------------------
--前缀
--AdventureOfMine_New_
---------------------------------------常量配置----------------------------------------
local tDailypoint_Data = {}
	tDailypoint_Data["ActivetyTime"] = tActivityTime["LinLang"]["ActivityTime"]
--成就-2016/02/24 zzs
local tAdventureOfMine_New_Achi ={}
tAdventureOfMine_New_Achi["AchivementMaze"] = 11027 --"迷宫也疯狂"成就标识位=position
tAdventureOfMine_New_Achi["AchivementTXZ"] = 10109 --请随意挖矿吧！ 获得矿洞通行证

local tAdventureOfMine_New_stc={}
	--表示最后一次使用vip的时间
	tAdventureOfMine_New_stc[1] = {}
	tAdventureOfMine_New_stc[1]["EventType"] = 138
	tAdventureOfMine_New_stc[1]["DataType"] = 21
	
	--最后一次合成炫日宝盒的时间
	tAdventureOfMine_New_stc[3007530] = {}
	tAdventureOfMine_New_stc[3007530]["EventType"] = 138
	tAdventureOfMine_New_stc[3007530]["DataType"] =  22

	--最后一次合成残月宝盒的时间
	tAdventureOfMine_New_stc[3007531] = {}
	tAdventureOfMine_New_stc[3007531]["EventType"] = 138
	tAdventureOfMine_New_stc[3007531]["DataType"] =  23
	
	--最后一次合成繁星宝盒的时间
	tAdventureOfMine_New_stc[3007532] = {}
	tAdventureOfMine_New_stc[3007532]["EventType"] = 138
	tAdventureOfMine_New_stc[3007532]["DataType"] =  24
	
	--最后一次合成流云宝盒的时间
	tAdventureOfMine_New_stc[3007533] = {}
	tAdventureOfMine_New_stc[3007533]["EventType"] = 138
	tAdventureOfMine_New_stc[3007533]["DataType"] =  25
	
	--用于隔周显示任务面板计时
	tAdventureOfMine_New_stc["ShowTaskPanel"] = {}
	tAdventureOfMine_New_stc["ShowTaskPanel"]["EventType"] = 144
	tAdventureOfMine_New_stc["ShowTaskPanel"]["DataType"] =  89
	
	--记录每周使用结晶的情况
	tAdventureOfMine_New_stc["UseJieJing"] = {}
	tAdventureOfMine_New_stc["UseJieJing"]["EventType"] = 145
	tAdventureOfMine_New_stc["UseJieJing"]["DataType"] = 2
	
	tAdventureOfMine_New_stc["detailPack"] = 6467
	tAdventureOfMine_New_stc["detailPass"] = 6476
	
	-- 兑换气力值数量上限
	tAdventureOfMine_New_stc["ExchangeStrength"] = {}
	tAdventureOfMine_New_stc["ExchangeStrength"]["EventType"] = 179
	tAdventureOfMine_New_stc["ExchangeStrength"]["DataType"] = 45
	
--任务怪物死亡信息
local tAdventureOfMine_New_TaskMonDie = {}
	tAdventureOfMine_New_TaskMonDie[14] = {}
	tAdventureOfMine_New_TaskMonDie[14]["NpcName"] = tAdventureOfMine_New_Text["NpcNamePrincess"]
	tAdventureOfMine_New_TaskMonDie[14]["NpcId"] = 18855
	
	tAdventureOfMine_New_TaskMonDie[17] = {}
	tAdventureOfMine_New_TaskMonDie[17]["NpcName"] = tAdventureOfMine_New_Text["NpcNameChilde"]
	tAdventureOfMine_New_TaskMonDie[17]["NpcId"] = 18856
	
--荻府公主、文府公子对应的物品
local tAdventureOfMine_New_NpcForItem = {}
	tAdventureOfMine_New_NpcForItem[18855] = 722881
	tAdventureOfMine_New_NpcForItem[18856] = 722882
	
	
--怪物对应的物品
local tAdventureOfMine_New_MonForItem = {}
	tAdventureOfMine_New_MonForItem[14] = 722881
	tAdventureOfMine_New_MonForItem[17] = 722882
	
--荻府公主、文府公子集中营位置
local tAdventureOfMine_New_NpcSetPos = {}
	tAdventureOfMine_New_NpcSetPos[1] = 5000
	tAdventureOfMine_New_NpcSetPos[2] = 58
	tAdventureOfMine_New_NpcSetPos[3] = 58
	
local tAdventureOfMine_New_Item={}
	--荻府玉佩
	tAdventureOfMine_New_Item["Difu"] = 722881
	--宇文府佩令
	tAdventureOfMine_New_Item["Wenfu"] = 722882
	--矿洞通行证
	tAdventureOfMine_New_Item["TongXingZ"] = 722880
	
	tAdventureOfMine_New_Item["Staff"] = {}
	--天刹令
	tAdventureOfMine_New_Item["Staff"][1] = 721537
	--地魁牌
	tAdventureOfMine_New_Item["Staff"][2] = 721538
	--人遁书
	tAdventureOfMine_New_Item["Staff"][3] = 721539
	
	--锁片
	tAdventureOfMine_New_Item["SuoPian"] = {}
	--炫日锁片
	tAdventureOfMine_New_Item["SuoPian"][1] = 721533
	--残月锁片
	tAdventureOfMine_New_Item["SuoPian"][2] = 721534
	--繁星锁片
	tAdventureOfMine_New_Item["SuoPian"][3] = 721535
	--流云锁片
	tAdventureOfMine_New_Item["SuoPian"][4] = 721536
	
	
	--结晶
	tAdventureOfMine_New_Item["JieJing"] = {}
	--炫日结晶
	tAdventureOfMine_New_Item["JieJing"][1] = 3007534
	--残月结晶
	tAdventureOfMine_New_Item["JieJing"][2] = 3007535
	--繁星结晶
	tAdventureOfMine_New_Item["JieJing"][3] = 3007536
	--流云结晶
	tAdventureOfMine_New_Item["JieJing"][4] = 3007537
	
	--秘制免费修炼丹
	tAdventureOfMine_New_Item["Mizhi"] = 3002926
	tAdventureOfMine_New_Item["MizhiAttr"] = "0 20"
	--强效护心丹
	tAdventureOfMine_New_Item["QHuxindan"] = 3002030
	tAdventureOfMine_New_Item["QHuxindanAttr"] = "0 10"
	
	--[[
	-- 日常任务材料
	tAdventureOfMine_New_Item["RiChang"] = {}
	-- 巨猿皮 紫蛇胆 沙精
	tAdventureOfMine_New_Item["RiChang"][1] = {729088,729089,729090}
	-- 巨锤柄 彩石 利刃
	tAdventureOfMine_New_Item["RiChang"][2] = {729091,729092,729093}
	-- 金臂利爪 银色羽毛 陌刀
	tAdventureOfMine_New_Item["RiChang"][3] = {729094,729095,729096}
	-- 蝙蝠翅 蝙蝠血 蛮牛角
	tAdventureOfMine_New_Item["RiChang"][4] = {729098,729099,729100}
	--]]
	-- 藏宝图
	tAdventureOfMine_New_Item["CangBaoTu"] = {}
	-- 炫日藏宝图
	tAdventureOfMine_New_Item["CangBaoTu"][1] = {3007504,3007505,3007506}
	-- 残月藏宝图
	tAdventureOfMine_New_Item["CangBaoTu"][2] = {3007507,3007508,3007509,3007510,3007511}
	-- 繁星藏宝图
	tAdventureOfMine_New_Item["CangBaoTu"][3] = {3007512,3007513,3007514,3007515,3007516,3007517,3007518}
	-- 流云藏宝图
	tAdventureOfMine_New_Item["CangBaoTu"][4] = {3007519,3007520,3007521,3007522,3007523,3007524,3007525,3007526,3007527}
	
	
	--地图ID索引藏宝图ID
	tAdventureOfMine_New_Item["MapIdToItem"] = {}
	-- 炫日藏宝图
	tAdventureOfMine_New_Item["MapIdToItem"][1351] = {3007504,3007505,3007506}
	-- 残月藏宝图
	tAdventureOfMine_New_Item["MapIdToItem"][1352] = {3007507,3007508,3007509,3007510,3007511}
	-- 繁星藏宝图
	tAdventureOfMine_New_Item["MapIdToItem"][1353] = {3007512,3007513,3007514,3007515,3007516,3007517,3007518}
	-- 流云藏宝图
	tAdventureOfMine_New_Item["MapIdToItem"][1354] = {3007519,3007520,3007521,3007522,3007523,3007524,3007525,3007526,3007527}
	
	
	--宝盒id
	tAdventureOfMine_New_Item["XuanRiPack"] = 3007530
	tAdventureOfMine_New_Item["CanYuePack"] = 3007531
	tAdventureOfMine_New_Item["FanXingPack"] = 3007532
	tAdventureOfMine_New_Item["LiuYunPack"] = 3007533
	
	
	--矿洞迷宫XP药水
	tAdventureOfMine_New_Item["XP"] = 3007529
	--引路蜂
	tAdventureOfMine_New_Item["YinLuFeng"] = 3007528
	
--藏宝图得到奖励
local tAdventureOfMine_New_MapReward = {}
	--炫日藏宝图
	tAdventureOfMine_New_MapReward[3007504] = {}
	tAdventureOfMine_New_MapReward[3007504]["GetExp"] = 5
	tAdventureOfMine_New_MapReward[3007504]["GetItemId"] = 721533
	tAdventureOfMine_New_MapReward[3007505] = tAdventureOfMine_New_MapReward[3007504]
	tAdventureOfMine_New_MapReward[3007506] = tAdventureOfMine_New_MapReward[3007504]

	--残月藏宝图
	tAdventureOfMine_New_MapReward[3007507] = {}
	tAdventureOfMine_New_MapReward[3007507]["GetExp"] = 10
	tAdventureOfMine_New_MapReward[3007507]["GetItemId"] = 721534
	tAdventureOfMine_New_MapReward[3007508] = tAdventureOfMine_New_MapReward[3007507]
	tAdventureOfMine_New_MapReward[3007509] = tAdventureOfMine_New_MapReward[3007507]
	tAdventureOfMine_New_MapReward[3007510] = tAdventureOfMine_New_MapReward[3007507]
	tAdventureOfMine_New_MapReward[3007511] = tAdventureOfMine_New_MapReward[3007507]

	--繁星藏宝图
	tAdventureOfMine_New_MapReward[3007512] = {}
	tAdventureOfMine_New_MapReward[3007512]["GetExp"] = 15
	tAdventureOfMine_New_MapReward[3007512]["GetItemId"] = 721535
	tAdventureOfMine_New_MapReward[3007513] = tAdventureOfMine_New_MapReward[3007512]
	tAdventureOfMine_New_MapReward[3007514] = tAdventureOfMine_New_MapReward[3007512]
	tAdventureOfMine_New_MapReward[3007515] = tAdventureOfMine_New_MapReward[3007512]
	tAdventureOfMine_New_MapReward[3007516] = tAdventureOfMine_New_MapReward[3007512]
	tAdventureOfMine_New_MapReward[3007517] = tAdventureOfMine_New_MapReward[3007512]
	tAdventureOfMine_New_MapReward[3007518] = tAdventureOfMine_New_MapReward[3007512]
	
	--流云藏宝图
	tAdventureOfMine_New_MapReward[3007519] = {}
	tAdventureOfMine_New_MapReward[3007519]["GetExp"] = 20
	tAdventureOfMine_New_MapReward[3007519]["GetItemId"] = 721536
	tAdventureOfMine_New_MapReward[3007520] = tAdventureOfMine_New_MapReward[3007519]
	tAdventureOfMine_New_MapReward[3007521] = tAdventureOfMine_New_MapReward[3007519]
	tAdventureOfMine_New_MapReward[3007522] = tAdventureOfMine_New_MapReward[3007519]
	tAdventureOfMine_New_MapReward[3007523] = tAdventureOfMine_New_MapReward[3007519]
	tAdventureOfMine_New_MapReward[3007524] = tAdventureOfMine_New_MapReward[3007519]
	tAdventureOfMine_New_MapReward[3007525] = tAdventureOfMine_New_MapReward[3007519]
	tAdventureOfMine_New_MapReward[3007526] = tAdventureOfMine_New_MapReward[3007519]
	tAdventureOfMine_New_MapReward[3007527] = tAdventureOfMine_New_MapReward[3007519]


--藏宝图对应的坐标
local tAdventureOfMine_New_MapPos = {}

	
	tAdventureOfMine_New_MapPos[3007504] = {}
	tAdventureOfMine_New_MapPos[3007504]["MapId"] = 1351
	tAdventureOfMine_New_MapPos[3007504]["Cellx"] = 203
	tAdventureOfMine_New_MapPos[3007504]["Celly"] = 210
	
	tAdventureOfMine_New_MapPos[3007505] = {}
	tAdventureOfMine_New_MapPos[3007505]["MapId"] = 1351
	tAdventureOfMine_New_MapPos[3007505]["Cellx"] = 224
	tAdventureOfMine_New_MapPos[3007505]["Celly"] = 175
	
	tAdventureOfMine_New_MapPos[3007506] = {}
	tAdventureOfMine_New_MapPos[3007506]["MapId"] = 1351
	tAdventureOfMine_New_MapPos[3007506]["Cellx"] = 380
	tAdventureOfMine_New_MapPos[3007506]["Celly"] = 273
	
	tAdventureOfMine_New_MapPos[3007507] = {}
	tAdventureOfMine_New_MapPos[3007507]["MapId"] = 1352
	tAdventureOfMine_New_MapPos[3007507]["Cellx"] = 161
	tAdventureOfMine_New_MapPos[3007507]["Celly"] = 169
	
	tAdventureOfMine_New_MapPos[3007508] = {}
	tAdventureOfMine_New_MapPos[3007508]["MapId"] = 1352
	tAdventureOfMine_New_MapPos[3007508]["Cellx"] = 314
	tAdventureOfMine_New_MapPos[3007508]["Celly"] = 330
	
	tAdventureOfMine_New_MapPos[3007509] = {}
	tAdventureOfMine_New_MapPos[3007509]["MapId"] = 1352
	tAdventureOfMine_New_MapPos[3007509]["Cellx"] = 507
	tAdventureOfMine_New_MapPos[3007509]["Celly"] = 506
	
	tAdventureOfMine_New_MapPos[3007510] = {}
	tAdventureOfMine_New_MapPos[3007510]["MapId"] = 1352
	tAdventureOfMine_New_MapPos[3007510]["Cellx"] = 486
	tAdventureOfMine_New_MapPos[3007510]["Celly"] = 290
	
	tAdventureOfMine_New_MapPos[3007511] = {}
	tAdventureOfMine_New_MapPos[3007511]["MapId"] = 1352
	tAdventureOfMine_New_MapPos[3007511]["Cellx"] = 429
	tAdventureOfMine_New_MapPos[3007511]["Celly"] = 588
	
	tAdventureOfMine_New_MapPos[3007512] = {}
	tAdventureOfMine_New_MapPos[3007512]["MapId"] = 1353
	tAdventureOfMine_New_MapPos[3007512]["Cellx"] = 166
	tAdventureOfMine_New_MapPos[3007512]["Celly"] = 200
	
	tAdventureOfMine_New_MapPos[3007513] = {}
	tAdventureOfMine_New_MapPos[3007513]["MapId"] = 1353
	tAdventureOfMine_New_MapPos[3007513]["Cellx"] = 265
	tAdventureOfMine_New_MapPos[3007513]["Celly"] = 103
	
	tAdventureOfMine_New_MapPos[3007514] = {}
	tAdventureOfMine_New_MapPos[3007514]["MapId"] = 1353
	tAdventureOfMine_New_MapPos[3007514]["Cellx"] = 321
	tAdventureOfMine_New_MapPos[3007514]["Celly"] = 238
	
	tAdventureOfMine_New_MapPos[3007515] = {}
	tAdventureOfMine_New_MapPos[3007515]["MapId"] = 1353
	tAdventureOfMine_New_MapPos[3007515]["Cellx"] = 199
	tAdventureOfMine_New_MapPos[3007515]["Celly"] = 423
	
	tAdventureOfMine_New_MapPos[3007516] = {}
	tAdventureOfMine_New_MapPos[3007516]["MapId"] = 1353
	tAdventureOfMine_New_MapPos[3007516]["Cellx"] = 660
	tAdventureOfMine_New_MapPos[3007516]["Celly"] = 442
	
	tAdventureOfMine_New_MapPos[3007517] = {}
	tAdventureOfMine_New_MapPos[3007517]["MapId"] = 1353
	tAdventureOfMine_New_MapPos[3007517]["Cellx"] = 539
	tAdventureOfMine_New_MapPos[3007517]["Celly"] = 645
	
	tAdventureOfMine_New_MapPos[3007518] = {}
	tAdventureOfMine_New_MapPos[3007518]["MapId"] = 1353
	tAdventureOfMine_New_MapPos[3007518]["Cellx"] = 478
	tAdventureOfMine_New_MapPos[3007518]["Celly"] = 708
	
	tAdventureOfMine_New_MapPos[3007519] = {}
	tAdventureOfMine_New_MapPos[3007519]["MapId"] = 1354
	tAdventureOfMine_New_MapPos[3007519]["Cellx"] = 314
	tAdventureOfMine_New_MapPos[3007519]["Celly"] = 39
	
	tAdventureOfMine_New_MapPos[3007520] = {}
	tAdventureOfMine_New_MapPos[3007520]["MapId"] = 1354
	tAdventureOfMine_New_MapPos[3007520]["Cellx"] = 199
	tAdventureOfMine_New_MapPos[3007520]["Celly"] = 463
	
	tAdventureOfMine_New_MapPos[3007521] = {}
	tAdventureOfMine_New_MapPos[3007521]["MapId"] = 1354
	tAdventureOfMine_New_MapPos[3007521]["Cellx"] = 259
	tAdventureOfMine_New_MapPos[3007521]["Celly"] = 531
	
	tAdventureOfMine_New_MapPos[3007522] = {}
	tAdventureOfMine_New_MapPos[3007522]["MapId"] = 1354
	tAdventureOfMine_New_MapPos[3007522]["Cellx"] = 424
	tAdventureOfMine_New_MapPos[3007522]["Celly"] = 654
	
	tAdventureOfMine_New_MapPos[3007523] = {}
	tAdventureOfMine_New_MapPos[3007523]["MapId"] = 1354
	tAdventureOfMine_New_MapPos[3007523]["Cellx"] = 573
	tAdventureOfMine_New_MapPos[3007523]["Celly"] = 458
	
	tAdventureOfMine_New_MapPos[3007524] = {}
	tAdventureOfMine_New_MapPos[3007524]["MapId"] = 1354
	tAdventureOfMine_New_MapPos[3007524]["Cellx"] = 529
	tAdventureOfMine_New_MapPos[3007524]["Celly"] = 263
	
	tAdventureOfMine_New_MapPos[3007525] = {}
	tAdventureOfMine_New_MapPos[3007525]["MapId"] = 1354
	tAdventureOfMine_New_MapPos[3007525]["Cellx"] = 702
	tAdventureOfMine_New_MapPos[3007525]["Celly"] = 660
	
	tAdventureOfMine_New_MapPos[3007526] = {}
	tAdventureOfMine_New_MapPos[3007526]["MapId"] = 1354
	tAdventureOfMine_New_MapPos[3007526]["Cellx"] = 599
	tAdventureOfMine_New_MapPos[3007526]["Celly"] = 827
	
	tAdventureOfMine_New_MapPos[3007527] = {}
	tAdventureOfMine_New_MapPos[3007527]["MapId"] = 1354
	tAdventureOfMine_New_MapPos[3007527]["Cellx"] = 858
	tAdventureOfMine_New_MapPos[3007527]["Celly"] = 588
	

	
local tAdventureOfMine_New_BossInfo = {}
	tAdventureOfMine_New_BossInfo[3143] ={}
	tAdventureOfMine_New_BossInfo[3143]["name"] = tAdventureOfMine_New_Text["BossName"][3143]
	tAdventureOfMine_New_BossInfo[3143]["generatorid"] = 18101
	tAdventureOfMine_New_BossInfo[3143]["pos"] = {}
	tAdventureOfMine_New_BossInfo[3143]["pos"][1] = {1351,203,210}
	tAdventureOfMine_New_BossInfo[3143]["pos"][2] = {1351,224,175}
	tAdventureOfMine_New_BossInfo[3143]["pos"][3] = {1351,380,273}

	tAdventureOfMine_New_BossInfo[3146] ={}
	tAdventureOfMine_New_BossInfo[3146]["name"] = tAdventureOfMine_New_Text["BossName"][3146]
	tAdventureOfMine_New_BossInfo[3146]["generatorid"] = 18102
	tAdventureOfMine_New_BossInfo[3146]["pos"] = {}
	tAdventureOfMine_New_BossInfo[3146]["pos"][1] = {1352,161,169}
	tAdventureOfMine_New_BossInfo[3146]["pos"][2] = {1352,314,330}
	tAdventureOfMine_New_BossInfo[3146]["pos"][3] = {1352,507,506}
	tAdventureOfMine_New_BossInfo[3146]["pos"][4] = {1352,486,290}
	tAdventureOfMine_New_BossInfo[3146]["pos"][5] = {1352,429,588}


	tAdventureOfMine_New_BossInfo[3149] ={}
	tAdventureOfMine_New_BossInfo[3149]["name"] = tAdventureOfMine_New_Text["BossName"][3149]
	tAdventureOfMine_New_BossInfo[3149]["generatorid"] = 18103
	tAdventureOfMine_New_BossInfo[3149]["pos"] = {}
	tAdventureOfMine_New_BossInfo[3149]["pos"][1] = {1353,166,200}
	tAdventureOfMine_New_BossInfo[3149]["pos"][2] = {1353,265,103}
	tAdventureOfMine_New_BossInfo[3149]["pos"][3] = {1353,321,238}
	tAdventureOfMine_New_BossInfo[3149]["pos"][4] = {1353,199,423}
	tAdventureOfMine_New_BossInfo[3149]["pos"][5] = {1353,660,442}
	tAdventureOfMine_New_BossInfo[3149]["pos"][6] = {1353,539,645}
	tAdventureOfMine_New_BossInfo[3149]["pos"][7] = {1353,478,708}

	tAdventureOfMine_New_BossInfo[3156] ={}
	tAdventureOfMine_New_BossInfo[3156]["name"] = tAdventureOfMine_New_Text["BossName"][3156]
	tAdventureOfMine_New_BossInfo[3156]["generatorid"] = 18104
	tAdventureOfMine_New_BossInfo[3156]["pos"] = {}
	tAdventureOfMine_New_BossInfo[3156]["pos"][1] = {1354,314,39}
	tAdventureOfMine_New_BossInfo[3156]["pos"][2] = {1354,199,463}
	tAdventureOfMine_New_BossInfo[3156]["pos"][3] = {1354,259,531}
	tAdventureOfMine_New_BossInfo[3156]["pos"][4] = {1354,424,654}
	tAdventureOfMine_New_BossInfo[3156]["pos"][5] = {1354,573,458}
	tAdventureOfMine_New_BossInfo[3156]["pos"][6] = {1354,529,263}
	tAdventureOfMine_New_BossInfo[3156]["pos"][7] = {1354,702,660}
	tAdventureOfMine_New_BossInfo[3156]["pos"][8] = {1354,599,827}
	tAdventureOfMine_New_BossInfo[3156]["pos"][9] = {1354,858,588}

local tAdventureOfMine_New_NPCPos = {}
	--东阁将军
	tAdventureOfMine_New_NPCPos[1351] = {488,372,1153}
	--西亭将军
	tAdventureOfMine_New_NPCPos[1352] = {670,468,1154}
	--南苑将军
	tAdventureOfMine_New_NPCPos[1353] = {788,545,1155}
	--北斋将军
	tAdventureOfMine_New_NPCPos[1354] = {900,677,1156}


	
local tAdventureOfMine_New_Const = {}
	--增加XP值
	tAdventureOfMine_New_Const["AddXp"] = 100
	tAdventureOfMine_New_Const["AddStren"] = 500
	
	--云门关地图id
	tAdventureOfMine_New_Const["CGMapId"] = 1000
	tAdventureOfMine_New_Const["CGCellx"] = 600
	tAdventureOfMine_New_Const["CGCelly"] = 664
	
	--迷宫地图
	tAdventureOfMine_New_Const["MazeBeginId"] = 1351
	tAdventureOfMine_New_Const["MazeEndId"] = 1354
	
	--恶之花材料
	tAdventureOfMine_New_Const["EvilBeginId"] = 722733
	tAdventureOfMine_New_Const["EvilEndId"] = 722739
	
	-- 云龙
	tAdventureOfMine_New_Const["YunLMapId"] = 1002
	tAdventureOfMine_New_Const["YunLCellx"] = 476
	tAdventureOfMine_New_Const["YunLCelly"] = 326
	
	--宝盒打开分级
	tAdventureOfMine_New_Const["PackLev"] = 120
	tAdventureOfMine_New_Const["PackMete"] = 2
	
	--新服开启标示，大等于1表示开启
	tAdventureOfMine_New_Const["GlobalData"] = 51131
	
	--追加赠品属性
	tAdventureOfMine_New_Const["Zeng"] = 3
	
	--点击荻府公主或者文府公子倒计时
	tAdventureOfMine_New_Const["CountDown"] = 30
	
	tAdventureOfMine_New_Const["LastBossId"] = 3156
	
	
	tAdventureOfMine_New_Const["Mete"] = 0
	tAdventureOfMine_New_Const["Lev"] = 110
	
	tAdventureOfMine_New_Const["JudeYangId"] = 3008060
	tAdventureOfMine_New_Const["JudeYangAttr"] = "0 %d 0 10080 1" --阳之玉 时效改为7天
	
	tAdventureOfMine_New_Const["7Days"] = "0 0 0 10080 1"
	tAdventureOfMine_New_Const["New7Days"] = "0 1 3 10080 1"
	
	tAdventureOfMine_New_Const["AnotherId"] = {}
	tAdventureOfMine_New_Const["AnotherId"][3008059] = 3008060
	tAdventureOfMine_New_Const["AnotherId"][3008060] = 3008059
	
	--使用阴之玉/阳之玉 超过8000点不获得气力值
	tAdventureOfMine_New_Const["StrenthValueMax"] = 8000
	
	tAdventureOfMine_New_Const["StrenthVless"] = 300
	tAdventureOfMine_New_Const["StrenthVMore"] = 1200
	
	
	--PK杀人得到物品配置
	tAdventureOfMine_New_Const["PKAward"] = {}
	--概率基数
	tAdventureOfMine_New_Const["PKAward"]["BaseData"] = 60000
	tAdventureOfMine_New_Const["PKAward"][1351] = {}
	tAdventureOfMine_New_Const["PKAward"][1351]["AwardItem"] = 721533
	tAdventureOfMine_New_Const["PKAward"][1351]["Prob"] = 20000
	
	tAdventureOfMine_New_Const["PKAward"][1352] = {}
	tAdventureOfMine_New_Const["PKAward"][1352]["AwardItem"] = 721534
	tAdventureOfMine_New_Const["PKAward"][1352]["Prob"] = 15000
	
	tAdventureOfMine_New_Const["PKAward"][1353] = {}
	tAdventureOfMine_New_Const["PKAward"][1353]["AwardItem"] = 721535
	tAdventureOfMine_New_Const["PKAward"][1353]["Prob"] = 12000
	
	tAdventureOfMine_New_Const["PKAward"][1354] = {}
	tAdventureOfMine_New_Const["PKAward"][1354]["AwardItem"] = 721536
	tAdventureOfMine_New_Const["PKAward"][1354]["Prob"] = 10000
	
	
	tAdventureOfMine_New_Const["NpcRandPos"] = {}
	tAdventureOfMine_New_Const["NpcRandPos"]["Range"] = 3
	
	tAdventureOfMine_New_Const["NpcRandPos"][1351] = {}
	tAdventureOfMine_New_Const["NpcRandPos"][1351]["Cellx"] = 480
	tAdventureOfMine_New_Const["NpcRandPos"][1351]["Celly"] = 370
	
	tAdventureOfMine_New_Const["NpcRandPos"][1352] = {}
	tAdventureOfMine_New_Const["NpcRandPos"][1352]["Cellx"] = 667
	tAdventureOfMine_New_Const["NpcRandPos"][1352]["Celly"] = 470
	
	tAdventureOfMine_New_Const["NpcRandPos"][1353] = {}
	tAdventureOfMine_New_Const["NpcRandPos"][1353]["Cellx"] = 790
	tAdventureOfMine_New_Const["NpcRandPos"][1353]["Celly"] = 550
	
	tAdventureOfMine_New_Const["NpcRandPos"][1354] = {}
	tAdventureOfMine_New_Const["NpcRandPos"][1354]["Cellx"] = 902
	tAdventureOfMine_New_Const["NpcRandPos"][1354]["Celly"] = 682
	
	--可以传送的地图id
	tAdventureOfMine_New_Const["MapCanTran"] = {}
	--双龙城/清风原
	tAdventureOfMine_New_Const["MapCanTran"][1] = 1002
	--云门关
	tAdventureOfMine_New_Const["MapCanTran"][2] = 1000
	--市场
	tAdventureOfMine_New_Const["MapCanTran"][3] = 1036
	--枫溪林
	tAdventureOfMine_New_Const["MapCanTran"][4] = 1011
	--芦花荡
	tAdventureOfMine_New_Const["MapCanTran"][5] = 1015
	--绝情谷
	tAdventureOfMine_New_Const["MapCanTran"][6] = 1020
	
	--传送到萨翁旁边
	tAdventureOfMine_New_Const["MapCanTran"]["MapId"] = 1002
	tAdventureOfMine_New_Const["MapCanTran"]["Cellx"] = 210
	tAdventureOfMine_New_Const["MapCanTran"]["Celly"] = 377
	tAdventureOfMine_New_Const["MapCanTran"]["Range"] = 3
	tAdventureOfMine_New_Const["MapCanTran"]["NpcId"] = 1152
	
	
	tAdventureOfMine_New_Const["ProbTip"] = 50
	tAdventureOfMine_New_Const["ProbTipBase"] = 10000
	
	
	tAdventureOfMine_New_Const["DailyQili"] = 3001025
	
	
	--新服活动时间
	-- tAdventureOfMine_New_Const["NewSevTime"] = "2016-05-26 00:00 2016-06-05 23:59"
	
local tAdventureOfMine_New_Attr = {}

tAdventureOfMine_New_Attr["FiveS"] = "0 5"
	
	
--锁片对应宝盒
local tAdventureOfMine_New_SToPack = {}
	tAdventureOfMine_New_SToPack[721533] = 3007530
	tAdventureOfMine_New_SToPack[721534] = 3007531
	tAdventureOfMine_New_SToPack[721535] = 3007532
	tAdventureOfMine_New_SToPack[721536] = 3007533
	
--光效配置表
local tAdventureOfMine_New_Effect = {}

	--完成任务获得通行证
	tAdventureOfMine_New_Effect["GetPass"] = "angelwing"
	--获得荻府玉佩/文府佩令
	tAdventureOfMine_New_Effect["GetYuPei"] = "angelwing"
	--进入迷宫
	tAdventureOfMine_New_Effect["EnterMine"] = "moveback"
	--离开迷宫
	tAdventureOfMine_New_Effect["OutMine"] = "movego"
	--获得引路蜂光效1
	tAdventureOfMine_New_Effect["AwardBee1"] = "flying1"
	--获得引路蜂光效2
	tAdventureOfMine_New_Effect["AwardBee2"] = "waybee"
	--获得藏宝图
	tAdventureOfMine_New_Effect["AwardMap"] = "angelwing"
	--杀死boss
	tAdventureOfMine_New_Effect["KillBoss"] = "angelwing"
	--使用藏宝图
	tAdventureOfMine_New_Effect["UseMap"] = "angelwing"
	--使用XP药水
	tAdventureOfMine_New_Effect["UseXP"] = "angelwing"
	--使用引路蜂
	tAdventureOfMine_New_Effect["UseYinlu"] = "butterfly"
	--使用宝盒
	tAdventureOfMine_New_Effect["UsePack"] = "angelwing"
	--使用结晶
	tAdventureOfMine_New_Effect["UseJieJing"] = "angelwing"
	--锁片合成锁片
	tAdventureOfMine_New_Effect["SToS"] = "angelwing"
	--锁片合成宝盒
	tAdventureOfMine_New_Effect["ToPack"] = "eidolon"
	--锁片合成锁片
	tAdventureOfMine_New_Effect["SToTXZ"] = "angelwing"
	
	--打开新做礼包
	tAdventureOfMine_New_Effect["OpenNewPack"] = "angelwing"
	
	--使用阴之玉/阳之玉
	tAdventureOfMine_New_Effect["UseJade"] = "angelwing"

local tAdventureOfMine_New_Status = {}
	tAdventureOfMine_New_Status["Status"] = 18
	tAdventureOfMine_New_Status["Power"] = 30020
	tAdventureOfMine_New_Status["Secs"] = 120
	tAdventureOfMine_New_Status["SecN"] = 20
	tAdventureOfMine_New_Status["Times"] = 1
	tAdventureOfMine_New_Status["RemainTime"] = 120
	tAdventureOfMine_New_Status["RemainTimeN"] = 20
	tAdventureOfMine_New_Status["EndTime"] = 1
	tAdventureOfMine_New_Status["Recordable"] = 0

	
--额外的锁片掉落几率
local tAdventureOfMine_New_ItemSProb = {}

	--背包中此类锁片少于<20；背包中此类锁片少于>20且<30；背包中此类锁片少于>30
	tAdventureOfMine_New_ItemSProb[3141] = {700,350,140}
	tAdventureOfMine_New_ItemSProb[3144] = {600,300,120}
	tAdventureOfMine_New_ItemSProb[3147] = {500,250,100}
	tAdventureOfMine_New_ItemSProb[3155] = {450,225,90}

	tAdventureOfMine_New_ItemSProb[3142] = {800,400,160}
	tAdventureOfMine_New_ItemSProb[3145] = {700,350,140}
	tAdventureOfMine_New_ItemSProb[3148] = {600,300,120}
	
--额外的令牌掉落几率
local tAdventureOfMine_New_ItemLProb = {}
	--背包中不存在该令牌概率；背包中存在该令牌概率
	tAdventureOfMine_New_ItemLProb[3142] = {160,40}
	tAdventureOfMine_New_ItemLProb[3145] = {140,36}
	tAdventureOfMine_New_ItemLProb[3148] = {120,32}
	
	tAdventureOfMine_New_ItemLProb[3141] = {80,16}
	tAdventureOfMine_New_ItemLProb[3144] = {70,14}
	tAdventureOfMine_New_ItemLProb[3147] = {60,12}
	tAdventureOfMine_New_ItemLProb[3155] = {0,0}
	
--藏宝图掉落几率
local tAdventureOfMine_New_MapProb = {}
	tAdventureOfMine_New_MapProb[3141] = 120
	tAdventureOfMine_New_MapProb[3144] = 100
	tAdventureOfMine_New_MapProb[3147] = 80
	tAdventureOfMine_New_MapProb[3155] = 60
	
	tAdventureOfMine_New_MapProb[3142] = 200
	tAdventureOfMine_New_MapProb[3145] = 160
	tAdventureOfMine_New_MapProb[3148] = 120
	
--引路蜂掉落几率
local tAdventureOfMine_New_YinLuProb = {}
	tAdventureOfMine_New_YinLuProb[3142] =170
	tAdventureOfMine_New_YinLuProb[3145] =150
	tAdventureOfMine_New_YinLuProb[3148] =130
	
	tAdventureOfMine_New_YinLuProb[3141] = 90
	tAdventureOfMine_New_YinLuProb[3144] = 80
	tAdventureOfMine_New_YinLuProb[3147] = 70
	tAdventureOfMine_New_YinLuProb[3155] = 60
	
--额外的XP药水几率，掉落5个之后不再掉落
local tAdventureOfMine_New_XpProb = {}
	tAdventureOfMine_New_XpProb[3141] = {500,0}
	tAdventureOfMine_New_XpProb[3144] = {600,0}
	tAdventureOfMine_New_XpProb[3147] = {700,0}
	tAdventureOfMine_New_XpProb[3155] = {800,0}
	
	tAdventureOfMine_New_XpProb[3142] = {800,0}
	tAdventureOfMine_New_XpProb[3145] = {900,0}
	tAdventureOfMine_New_XpProb[3148] = {1000,0}
	
local tAdventureOfMine_New_Monster = {}
	--普通怪 Boss 特殊怪
	tAdventureOfMine_New_Monster[1] = {3141,3143,3142}
	tAdventureOfMine_New_Monster[2] = {3144,3146,3145}
	tAdventureOfMine_New_Monster[3] = {3147,3149,3148}
	tAdventureOfMine_New_Monster[4] = {3155,3156}
	
	--地图坐标
local tAdventureOfMine_New_Pos={}
	tAdventureOfMine_New_Pos["MainCity"] ={1002,210,377}
	tAdventureOfMine_New_Pos["BoundRange"] = 3
	tAdventureOfMine_New_Pos[1] ={1351,16,128}
	tAdventureOfMine_New_Pos[2] ={1352,27,222}
	tAdventureOfMine_New_Pos[3] ={1353,28,270}
	tAdventureOfMine_New_Pos[4] ={1354,8,289}
	
	--打开得到xx分钟经验，XX结晶（2转120级以上）
local tAdventureOfMine_New_OpenPack = {}
	tAdventureOfMine_New_OpenPack[3007530] = {180,3007534,3200340}
	tAdventureOfMine_New_OpenPack[3007531] = {240,3007535,3200341}
	tAdventureOfMine_New_OpenPack[3007532] = {300,3007536,3200334}
	tAdventureOfMine_New_OpenPack[3007533] = {360,3007537,3200355}
	
	
local tAdventureOfMine_New_Log= {}
	
	tAdventureOfMine_New_Log["EnterMine"] = {}
	--进入矿洞一层
	tAdventureOfMine_New_Log["EnterMine"][1]= "0,0,0,0,12000215,1[1],0,0"
	
	tAdventureOfMine_New_Log["EnterMine"][2] = "0,0,%d,%d,12000215,1[3],0,0"

	tAdventureOfMine_New_Log["EnterMine"][3] ="0,0,%d,%d,12000215,1[5],0,0"

	tAdventureOfMine_New_Log["EnterMine"][4] = "0,0,%d,%d,12000215,1[7],0,0"

	
	--使用宝盒
	tAdventureOfMine_New_Log["UsePack"] = {}
	--得到经验和一个随机物品						宝盒id，随机物品id，经验分钟数，随机物品数量
	tAdventureOfMine_New_Log["UsePack"][1] = "0,0,%d,1,12000215,2,4[%d],%d[%d]"
	--得到修行值和一个随机物品					宝盒id，随机物品id，修行值，随机物品数量
	tAdventureOfMine_New_Log["UsePack"][2] = "0,0,%d,1,12000215,2,6[%d],%d[%d]"
	--得到经验、一个随机物品和一个结晶		宝盒id，随机物品id，结晶id，经验分钟数，随机物品数量
	tAdventureOfMine_New_Log["UsePack"][3] = "0,0,%d,1,12000215,2,4[%d][%d],%d[%d][1]"
	--得到修行值、一个随机物品和一个结晶	宝盒id，随机物品id，结晶id，修行值，随机物品数量
	tAdventureOfMine_New_Log["UsePack"][4] = "0,0,%d,1,12000215,2,6[%d][%d],%d[%d][1]"
	--得到经验包和一个随机物品						宝盒id，随机物品id，经验分钟数，随机物品数量
	tAdventureOfMine_New_Log["UsePack"][5] = "0,0,%d,1,12000215,2,%d[%d],1[%d]"
	--得到经验包、一个随机物品和一个结晶		宝盒id，随机物品id，结晶id，经验分钟数，随机物品数量
	tAdventureOfMine_New_Log["UsePack"][6] = "0,0,%d,1,12000215,2,%d[%d][%d],1[%d][1]"
	
	
	--杀死boss		boss id
	tAdventureOfMine_New_Log["KillBoss"] = "0,0,0,0,12000215,3,%d,0"
	
	
	tAdventureOfMine_New_Log["KillMonster"] = "0,0,0,0,12000215,3,%d,1"
	
	--使用藏宝图,得到经验，锁片
	tAdventureOfMine_New_Log["UseMapWithExp"] = "0,0,%d,1,12000215,2,4[%d],%d[5]"
	--使用藏宝图，锁片
	tAdventureOfMine_New_Log["UseMapNoExp"] = "0,0,%d,1,12000215,2,%d,5"
	
	--使用结晶
	tAdventureOfMine_New_Log["UseJieJing"] = "0,0,3007534[3007535][3007536][3007537],1[1][1][1],12000215,2,%d[%d],%d[1]"
	
	--使用引路蜂
	tAdventureOfMine_New_Log["UseBee"] = "0,0,3007528,1,12000215,0,0,0"
	
	--使用XP药水
	tAdventureOfMine_New_Log["UseXP"] = "0,0,3007529,1,12000215,0,0,0"
	
	--锁片合成宝盒
	tAdventureOfMine_New_Log["SToPack"] = "0,0,%d,17,12000215,2,%d,1"
	
	--合成炫日宝盒
	tAdventureOfMine_New_Log["SToXuanRiPack"] = "0,0,0,0,12000215,1[2],0,0"
	--合成残月宝盒
	tAdventureOfMine_New_Log["SToCanYuePack"] = "0,0,0,0,12000215,1[4],0,0"
	--合成繁星宝盒
	tAdventureOfMine_New_Log["SToFanXingPack"] = "0,0,0,0,12000215,1[6],0,0"
	--合成流云宝盒
	tAdventureOfMine_New_Log["SToLiuYunPack"] = "0,0,0,0,12000215,1[8],0,0"
	
	--锁片合成锁片
	tAdventureOfMine_New_Log["SToS"] = "0,0,%d,3,12000215,2,%d,1"
	
	--锁片合成通行证
	tAdventureOfMine_New_Log["SToTXZ"] = "0,0,721536,3,12000215,2,722880,1"
	
	--获得玉佩/佩令
	tAdventureOfMine_New_Log["AwardYuPei"] = "0,0,0,0,12000215,2,%d,1"
	--消耗荻府玉佩和文府佩令的通行证
	tAdventureOfMine_New_Log["AwardTXZ"] = "0,0,722881[722882],1[1],12000215,2,722880,1"
	
	--打开神魂、淬炼礼包
	tAdventureOfMine_New_Log["SoulRefine"] = "0,0,%d,1,12000215,2,%d,1"
	
	--同时使用阴之玉/阳之玉
	tAdventureOfMine_New_Log["UseTwoJade"] = "0,0,3008059[3008060],1[1],12000215,2,12,1200"
	
	--单据使用一个阴之玉/阳之玉
	tAdventureOfMine_New_Log["UseOneJade"] = "0,0,%d,1,12000215,2,12,300"
	
	tAdventureOfMine_New_Log["KillSomeOne"] = "0,0,0,0,12000215,2,%d,1"
	
	--新服活动用
	tAdventureOfMine_New_Log["NewSeverAc"] = "0,0,0,0,12000215,2,3002926[3002030],20[10]"
	
--概率表 10000为基数
local nAdventureOfMine_New_BaseProb = 10000


--怪物几率
local tAdventureOfMine_New_DropItemProb = {}

	--晶奴
	tAdventureOfMine_New_DropItemProb[3141] = {}
	tAdventureOfMine_New_DropItemProb[3141][1] = {}
	tAdventureOfMine_New_DropItemProb[3141][1]["ItemChanceSum"] = 10000
	
	-- 掉落炫日锁片 初始概率 掉落20个后概率 掉落30个后概率，这边仅配置初始概率。（只为方便理解）实际概率在函数中配置
	tAdventureOfMine_New_DropItemProb[3141][1][1] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][1]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][1]["ItemChance"] = 700
	tAdventureOfMine_New_DropItemProb[3141][1][1]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][1]["Item_1"] = 721533
	
	--掉落藏宝图 item_1 表示第一种张藏宝图id， sort表示藏宝图有多少种
	tAdventureOfMine_New_DropItemProb[3141][1][2] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][2]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][2]["ItemChance"] = 120
	tAdventureOfMine_New_DropItemProb[3141][1][2]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][2]["Item_1"] = 3007504
	tAdventureOfMine_New_DropItemProb[3141][1][2]["Item_Sort"] = 3
	
	--掉落日常材料 巨猿皮 有配置type表示 是掉落，而不是塞背包
	tAdventureOfMine_New_DropItemProb[3141][1][3] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][3]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][3]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3141][1][3]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][3]["Item_1"] = 729088
	tAdventureOfMine_New_DropItemProb[3141][1][3]["Type"] = 1
	
	--掉落日常材料 紫蛇胆
	tAdventureOfMine_New_DropItemProb[3141][1][4] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][4]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][4]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3141][1][4]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][4]["Item_1"] = 729089
	tAdventureOfMine_New_DropItemProb[3141][1][4]["Type"] = 1
	
	--掉落日常材料 沙精
	tAdventureOfMine_New_DropItemProb[3141][1][5] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][5]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][5]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3141][1][5]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][5]["Item_1"] = 729090
	tAdventureOfMine_New_DropItemProb[3141][1][5]["Type"] = 1
	
	--生成旋风状态
	tAdventureOfMine_New_DropItemProb[3141][1][6] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][6]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][6]["ItemChance"] = 500
	tAdventureOfMine_New_DropItemProb[3141][1][6]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][6]["Item_1"] = 2
	
	--掉落xp药水
	tAdventureOfMine_New_DropItemProb[3141][1][7] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][7]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][7]["ItemChance"] = 500
	tAdventureOfMine_New_DropItemProb[3141][1][7]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][7]["Item_1"] = 3007529
	
	--掉落天刹令
	tAdventureOfMine_New_DropItemProb[3141][1][8] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][8]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][8]["ItemChance"] = 80
	tAdventureOfMine_New_DropItemProb[3141][1][8]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][8]["Item_1"] = 721537
	tAdventureOfMine_New_DropItemProb[3141][1][8]["Type"] = 1
	
	--掉落引路蜂
	tAdventureOfMine_New_DropItemProb[3141][1][9] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][9]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][9]["ItemChance"] = 90
	tAdventureOfMine_New_DropItemProb[3141][1][9]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][9]["Item_1"] = 3007528
	
	
	--掉落 红色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3141][1][10] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][10]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][10]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3141][1][10]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][10]["Item_1"] = 722733
	tAdventureOfMine_New_DropItemProb[3141][1][10]["Type"] = 1
	
	--掉落 红色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3141][1][11] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][11]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][11]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3141][1][11]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][11]["Item_1"] = 722734
	tAdventureOfMine_New_DropItemProb[3141][1][11]["Type"] = 1
	
	--掉落 红色恶之花柄
	tAdventureOfMine_New_DropItemProb[3141][1][12] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][12]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][12]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3141][1][12]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][12]["Item_1"] = 722735
	tAdventureOfMine_New_DropItemProb[3141][1][12]["Type"] = 1
	
	--掉落 白色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3141][1][13] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][13]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][13]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3141][1][13]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][13]["Item_1"] = 722737
	tAdventureOfMine_New_DropItemProb[3141][1][13]["Type"] = 1
	
	--掉落 白色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3141][1][14] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][14]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][14]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3141][1][14]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][14]["Item_1"] = 722738
	tAdventureOfMine_New_DropItemProb[3141][1][14]["Type"] = 1
	
	--掉落 白色恶之花柄
	tAdventureOfMine_New_DropItemProb[3141][1][15] = {}
	tAdventureOfMine_New_DropItemProb[3141][1][15]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3141][1][15]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3141][1][15]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3141][1][15]["Item_1"] = 722739
	tAdventureOfMine_New_DropItemProb[3141][1][15]["Type"] = 1
	
	
	
	
	
	--修罗斩
	tAdventureOfMine_New_DropItemProb[3144] = {}
	tAdventureOfMine_New_DropItemProb[3144][1] = {}
	tAdventureOfMine_New_DropItemProb[3144][1]["ItemChanceSum"] = 10000
	
	-- 掉落残月锁片 初始概率 掉落20个后概率 掉落30个后概率，这边仅配置初始概率。其余概率在函数中配置
	tAdventureOfMine_New_DropItemProb[3144][1][1] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][1]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][1]["ItemChance"] = 600
	tAdventureOfMine_New_DropItemProb[3144][1][1]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][1]["Item_1"] = 721534
	
	--掉落藏宝图 item_1 表示第一种张藏宝图id， sort表示藏宝图有多少种
	tAdventureOfMine_New_DropItemProb[3144][1][2] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][2]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][2]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3144][1][2]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][2]["Item_1"] = 3007507
	tAdventureOfMine_New_DropItemProb[3144][1][2]["Item_Sort"] = 5
	
	--掉落日常材料 巨锤柄 有配置type表示 是掉落，而不是塞背包
	tAdventureOfMine_New_DropItemProb[3144][1][3] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][3]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][3]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3144][1][3]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][3]["Item_1"] = 729091
	tAdventureOfMine_New_DropItemProb[3144][1][3]["Type"] = 1
	
	--掉落日常材料 彩石 
	tAdventureOfMine_New_DropItemProb[3144][1][4] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][4]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][4]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3144][1][4]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][4]["Item_1"] = 729092
	tAdventureOfMine_New_DropItemProb[3144][1][4]["Type"] = 1
	
	--掉落日常材料 利刃
	tAdventureOfMine_New_DropItemProb[3144][1][5] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][5]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][5]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3144][1][5]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][5]["Item_1"] = 729093
	tAdventureOfMine_New_DropItemProb[3144][1][5]["Type"] = 1
	
	--生成旋风状态
	tAdventureOfMine_New_DropItemProb[3144][1][6] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][6]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][6]["ItemChance"] = 600
	tAdventureOfMine_New_DropItemProb[3144][1][6]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][6]["Item_1"] = 2
	
	--掉落xp药水
	tAdventureOfMine_New_DropItemProb[3144][1][7] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][7]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][7]["ItemChance"] = 600
	tAdventureOfMine_New_DropItemProb[3144][1][7]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][7]["Item_1"] = 3007529
	
	--掉落地魁牌
	tAdventureOfMine_New_DropItemProb[3144][1][8] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][8]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][8]["ItemChance"] = 70
	tAdventureOfMine_New_DropItemProb[3144][1][8]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][8]["Item_1"] = 721538
	tAdventureOfMine_New_DropItemProb[3144][1][8]["Type"] = 1
	
	--掉落引路蜂
	tAdventureOfMine_New_DropItemProb[3144][1][9] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][9]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][9]["ItemChance"] = 80
	tAdventureOfMine_New_DropItemProb[3144][1][9]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][9]["Item_1"] = 3007528
	
	--掉落 红色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3144][1][10] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][10]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][10]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3144][1][10]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][10]["Item_1"] = 722733
	tAdventureOfMine_New_DropItemProb[3144][1][10]["Type"] = 1
	
	--掉落 红色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3144][1][11] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][11]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][11]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3144][1][11]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][11]["Item_1"] = 722734
	tAdventureOfMine_New_DropItemProb[3144][1][11]["Type"] = 1
	
	--掉落 红色恶之花柄
	tAdventureOfMine_New_DropItemProb[3144][1][12] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][12]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][12]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3144][1][12]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][12]["Item_1"] = 722735
	tAdventureOfMine_New_DropItemProb[3144][1][12]["Type"] = 1
	
	--掉落 白色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3144][1][13] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][13]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][13]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3144][1][13]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][13]["Item_1"] = 722737
	tAdventureOfMine_New_DropItemProb[3144][1][13]["Type"] = 1
	
	--掉落 白色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3144][1][14] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][14]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][14]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3144][1][14]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][14]["Item_1"] = 722738
	tAdventureOfMine_New_DropItemProb[3144][1][14]["Type"] = 1
	
	--掉落 白色恶之花柄
	tAdventureOfMine_New_DropItemProb[3144][1][15] = {}
	tAdventureOfMine_New_DropItemProb[3144][1][15]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3144][1][15]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3144][1][15]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3144][1][15]["Item_1"] = 722739
	tAdventureOfMine_New_DropItemProb[3144][1][15]["Type"] = 1
	
	
	
	
	--火鹫
	tAdventureOfMine_New_DropItemProb[3147] = {}
	tAdventureOfMine_New_DropItemProb[3147][1] = {}
	tAdventureOfMine_New_DropItemProb[3147][1]["ItemChanceSum"] = 10000
	
	-- 掉落繁星锁片 初始概率 掉落20个后概率 掉落30个后概率，这边仅配置初始概率。其余概率在函数中配置
	tAdventureOfMine_New_DropItemProb[3147][1][1] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][1]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][1]["ItemChance"] = 500
	tAdventureOfMine_New_DropItemProb[3147][1][1]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][1]["Item_1"] = 721535
	
	--掉落藏宝图 item_1 表示第一种张藏宝图id， sort表示藏宝图有多少种
	tAdventureOfMine_New_DropItemProb[3147][1][2] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][2]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][2]["ItemChance"] = 80
	tAdventureOfMine_New_DropItemProb[3147][1][2]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][2]["Item_1"] = 3007512
	tAdventureOfMine_New_DropItemProb[3147][1][2]["Item_Sort"] = 7
	
	--掉落日常材料 金臂利爪 有配置type表示 是掉落，而不是塞背包
	tAdventureOfMine_New_DropItemProb[3147][1][3] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][3]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][3]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3147][1][3]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][3]["Item_1"] = 729094
	tAdventureOfMine_New_DropItemProb[3147][1][3]["Type"] = 1
	
	--掉落日常材料 银色羽毛 
	tAdventureOfMine_New_DropItemProb[3147][1][4] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][4]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][4]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3147][1][4]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][4]["Item_1"] = 729095
	tAdventureOfMine_New_DropItemProb[3147][1][4]["Type"] = 1
	
	--掉落日常材料 陌刀
	tAdventureOfMine_New_DropItemProb[3147][1][5] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][5]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][5]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3147][1][5]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][5]["Item_1"] = 729096
	tAdventureOfMine_New_DropItemProb[3147][1][5]["Type"] = 1
	
	--生成旋风状态
	tAdventureOfMine_New_DropItemProb[3147][1][6] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][6]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][6]["ItemChance"] = 700
	tAdventureOfMine_New_DropItemProb[3147][1][6]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][6]["Item_1"] = 2
	
	--掉落xp药水
	tAdventureOfMine_New_DropItemProb[3147][1][7] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][7]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][7]["ItemChance"] = 700
	tAdventureOfMine_New_DropItemProb[3147][1][7]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][7]["Item_1"] = 3007529
	
	--掉落人遁书
	tAdventureOfMine_New_DropItemProb[3147][1][8] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][8]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][8]["ItemChance"] = 60
	tAdventureOfMine_New_DropItemProb[3147][1][8]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][8]["Item_1"] = 721539
	tAdventureOfMine_New_DropItemProb[3147][1][8]["Type"] = 1
	
	--掉落引路蜂
	tAdventureOfMine_New_DropItemProb[3147][1][9] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][9]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][9]["ItemChance"] = 70
	tAdventureOfMine_New_DropItemProb[3147][1][9]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][9]["Item_1"] = 3007528
	
	--掉落 红色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3147][1][10] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][10]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][10]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3147][1][10]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][10]["Item_1"] = 722733
	tAdventureOfMine_New_DropItemProb[3147][1][10]["Type"] = 1
	
	--掉落 红色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3147][1][11] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][11]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][11]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3147][1][11]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][11]["Item_1"] = 722734
	tAdventureOfMine_New_DropItemProb[3147][1][11]["Type"] = 1
	
	--掉落 红色恶之花柄
	tAdventureOfMine_New_DropItemProb[3147][1][12] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][12]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][12]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3147][1][12]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][12]["Item_1"] = 722735
	tAdventureOfMine_New_DropItemProb[3147][1][12]["Type"] = 1
	
	--掉落 白色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3147][1][13] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][13]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][13]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3147][1][13]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][13]["Item_1"] = 722737
	tAdventureOfMine_New_DropItemProb[3147][1][13]["Type"] = 1
	
	--掉落 白色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3147][1][14] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][14]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][14]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3147][1][14]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][14]["Item_1"] = 722738
	tAdventureOfMine_New_DropItemProb[3147][1][14]["Type"] = 1
	
	--掉落 白色恶之花柄
	tAdventureOfMine_New_DropItemProb[3147][1][15] = {}
	tAdventureOfMine_New_DropItemProb[3147][1][15]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3147][1][15]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3147][1][15]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3147][1][15]["Item_1"] = 722739
	tAdventureOfMine_New_DropItemProb[3147][1][15]["Type"] = 1
	
	
	
	--牛精
	tAdventureOfMine_New_DropItemProb[3155] = {}
	tAdventureOfMine_New_DropItemProb[3155][1] = {}
	tAdventureOfMine_New_DropItemProb[3155][1]["ItemChanceSum"] = 10000
	
	-- 掉落流云锁片 初始概率 掉落20个后概率 掉落30个后概率，这边仅配置初始概率。其余概率在函数中配置
	tAdventureOfMine_New_DropItemProb[3155][1][1] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][1]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][1]["ItemChance"] = 450
	tAdventureOfMine_New_DropItemProb[3155][1][1]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][1]["Item_1"] = 721536
	
	--掉落藏宝图 item_1 表示第一种张藏宝图id， sort表示藏宝图有多少种
	tAdventureOfMine_New_DropItemProb[3155][1][2] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][2]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][2]["ItemChance"] = 60
	tAdventureOfMine_New_DropItemProb[3155][1][2]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][2]["Item_1"] = 3007519
	tAdventureOfMine_New_DropItemProb[3155][1][2]["Item_Sort"] = 9
	
	--掉落日常材料 金臂利爪 有配置type表示 是掉落，而不是塞背包
	tAdventureOfMine_New_DropItemProb[3155][1][3] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][3]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][3]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3155][1][3]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][3]["Item_1"] = 729098
	tAdventureOfMine_New_DropItemProb[3155][1][3]["Type"] = 1
	
	--掉落日常材料 银色羽毛 
	tAdventureOfMine_New_DropItemProb[3155][1][4] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][4]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][4]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3155][1][4]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][4]["Item_1"] = 729099
	tAdventureOfMine_New_DropItemProb[3155][1][4]["Type"] = 1
	
	--掉落日常材料 陌刀
	tAdventureOfMine_New_DropItemProb[3155][1][5] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][5]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][5]["ItemChance"] = 100
	tAdventureOfMine_New_DropItemProb[3155][1][5]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][5]["Item_1"] = 729100
	tAdventureOfMine_New_DropItemProb[3155][1][5]["Type"] = 1
	
	--生成旋风状态
	tAdventureOfMine_New_DropItemProb[3155][1][6] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][6]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][6]["ItemChance"] = 800
	tAdventureOfMine_New_DropItemProb[3155][1][6]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][6]["Item_1"] = 2
	
	--掉落xp药水
	tAdventureOfMine_New_DropItemProb[3155][1][7] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][7]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][7]["ItemChance"] = 800
	tAdventureOfMine_New_DropItemProb[3155][1][7]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][7]["Item_1"] = 3007529
	
	--掉落人遁书
	tAdventureOfMine_New_DropItemProb[3155][1][8] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][8]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][8]["ItemChance"] = 0
	tAdventureOfMine_New_DropItemProb[3155][1][8]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][8]["Item_1"] = 721539
	tAdventureOfMine_New_DropItemProb[3155][1][8]["Type"] = 1
	
	--掉落引路蜂
	tAdventureOfMine_New_DropItemProb[3155][1][9] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][9]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][9]["ItemChance"] = 60
	tAdventureOfMine_New_DropItemProb[3155][1][9]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][9]["Item_1"] = 3007528
	
	--掉落 红色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3155][1][10] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][10]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][10]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3155][1][10]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][10]["Item_1"] = 722733
	tAdventureOfMine_New_DropItemProb[3155][1][10]["Type"] = 1
	
	--掉落 红色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3155][1][11] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][11]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][11]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3155][1][11]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][11]["Item_1"] = 722734
	tAdventureOfMine_New_DropItemProb[3155][1][11]["Type"] = 1
	
	--掉落 红色恶之花柄
	tAdventureOfMine_New_DropItemProb[3155][1][12] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][12]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][12]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3155][1][12]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][12]["Item_1"] = 722735
	tAdventureOfMine_New_DropItemProb[3155][1][12]["Type"] = 1
	
	--掉落 白色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3155][1][13] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][13]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][13]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3155][1][13]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][13]["Item_1"] = 722737
	tAdventureOfMine_New_DropItemProb[3155][1][13]["Type"] = 1
	
	--掉落 白色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3155][1][14] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][14]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][14]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3155][1][14]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][14]["Item_1"] = 722738
	tAdventureOfMine_New_DropItemProb[3155][1][14]["Type"] = 1
	
	--掉落 白色恶之花柄
	tAdventureOfMine_New_DropItemProb[3155][1][15] = {}
	tAdventureOfMine_New_DropItemProb[3155][1][15]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3155][1][15]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3155][1][15]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3155][1][15]["Item_1"] = 722739
	tAdventureOfMine_New_DropItemProb[3155][1][15]["Type"] = 1
	
	
	--臾鬼
	tAdventureOfMine_New_DropItemProb[3142] = {}
	tAdventureOfMine_New_DropItemProb[3142][1] = {}
	tAdventureOfMine_New_DropItemProb[3142][1]["ItemChanceSum"] = 10000
	
	-- 掉落流云锁片 初始概率 掉落20个后概率 掉落30个后概率，这边仅配置初始概率。其余概率在函数中配置
	tAdventureOfMine_New_DropItemProb[3142][1][1] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][1]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][1]["ItemChance"] = 800
	tAdventureOfMine_New_DropItemProb[3142][1][1]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][1]["Item_1"] = 721533
	
	--掉落藏宝图 item_1 表示第一种张藏宝图id， sort表示藏宝图有多少种
	tAdventureOfMine_New_DropItemProb[3142][1][2] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][2]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][2]["ItemChance"] = 200
	tAdventureOfMine_New_DropItemProb[3142][1][2]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][2]["Item_1"] = 3007504
	tAdventureOfMine_New_DropItemProb[3142][1][2]["Item_Sort"] = 3
	
	--掉落日常材料 巨猿皮 有配置type表示 是掉落，而不是塞背包
	tAdventureOfMine_New_DropItemProb[3142][1][3] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][3]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][3]["ItemChance"] = 150
	tAdventureOfMine_New_DropItemProb[3142][1][3]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][3]["Item_1"] = 729088
	tAdventureOfMine_New_DropItemProb[3142][1][3]["Type"] = 1
	
	--掉落日常材料 紫蛇胆
	tAdventureOfMine_New_DropItemProb[3142][1][4] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][4]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][4]["ItemChance"] = 150
	tAdventureOfMine_New_DropItemProb[3142][1][4]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][4]["Item_1"] = 729089
	tAdventureOfMine_New_DropItemProb[3142][1][4]["Type"] = 1
	
	--掉落日常材料 沙精
	tAdventureOfMine_New_DropItemProb[3142][1][5] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][5]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][5]["ItemChance"] = 150
	tAdventureOfMine_New_DropItemProb[3142][1][5]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][5]["Item_1"] = 729090
	tAdventureOfMine_New_DropItemProb[3142][1][5]["Type"] = 1
	
	--生成旋风状态
	tAdventureOfMine_New_DropItemProb[3142][1][6] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][6]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][6]["ItemChance"] = 800
	tAdventureOfMine_New_DropItemProb[3142][1][6]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][6]["Item_1"] = 2
	
	--掉落xp药水
	tAdventureOfMine_New_DropItemProb[3142][1][7] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][7]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][7]["ItemChance"] = 800
	tAdventureOfMine_New_DropItemProb[3142][1][7]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][7]["Item_1"] = 3007529
	
	--掉落天刹令
	tAdventureOfMine_New_DropItemProb[3142][1][8] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][8]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][8]["ItemChance"] = 160
	tAdventureOfMine_New_DropItemProb[3142][1][8]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][8]["Item_1"] = 721537
	tAdventureOfMine_New_DropItemProb[3142][1][8]["Type"] = 1
	
	--掉落引路蜂
	tAdventureOfMine_New_DropItemProb[3142][1][9] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][9]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][9]["ItemChance"] = 170
	tAdventureOfMine_New_DropItemProb[3142][1][9]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][9]["Item_1"] = 3007528
	
	--掉落 红色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3142][1][10] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][10]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][10]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3142][1][10]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][10]["Item_1"] = 722733
	tAdventureOfMine_New_DropItemProb[3142][1][10]["Type"] = 1
	
	--掉落 红色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3142][1][11] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][11]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][11]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3142][1][11]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][11]["Item_1"] = 722734
	tAdventureOfMine_New_DropItemProb[3142][1][11]["Type"] = 1
	
	--掉落 红色恶之花柄
	tAdventureOfMine_New_DropItemProb[3142][1][12] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][12]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][12]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3142][1][12]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][12]["Item_1"] = 722735
	tAdventureOfMine_New_DropItemProb[3142][1][12]["Type"] = 1
	
	--掉落 白色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3142][1][13] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][13]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][13]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3142][1][13]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][13]["Item_1"] = 722737
	tAdventureOfMine_New_DropItemProb[3142][1][13]["Type"] = 1
	
	--掉落 白色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3142][1][13] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][13]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][13]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3142][1][13]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][13]["Item_1"] = 722738
	tAdventureOfMine_New_DropItemProb[3142][1][13]["Type"] = 1
	
	--掉落 白色恶之花柄
	tAdventureOfMine_New_DropItemProb[3142][1][14] = {}
	tAdventureOfMine_New_DropItemProb[3142][1][14]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3142][1][14]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3142][1][14]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3142][1][14]["Item_1"] = 722739
	tAdventureOfMine_New_DropItemProb[3142][1][14]["Type"] = 1
	
	
	
	
	--灵鼠
	tAdventureOfMine_New_DropItemProb[3145] = {}
	tAdventureOfMine_New_DropItemProb[3145][1] = {}
	tAdventureOfMine_New_DropItemProb[3145][1]["ItemChanceSum"] = 10000
	
	-- 掉落残月锁片 初始概率 掉落20个后概率 掉落30个后概率，这边仅配置初始概率。其余概率在函数中配置
	tAdventureOfMine_New_DropItemProb[3145][1][1] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][1]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][1]["ItemChance"] = 700
	tAdventureOfMine_New_DropItemProb[3145][1][1]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][1]["Item_1"] = 721534
	
	--掉落藏宝图 item_1 表示第一种张藏宝图id， sort表示藏宝图有多少种
	tAdventureOfMine_New_DropItemProb[3145][1][2] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][2]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][2]["ItemChance"] = 160
	tAdventureOfMine_New_DropItemProb[3145][1][2]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][2]["Item_1"] = 3007507
	tAdventureOfMine_New_DropItemProb[3145][1][2]["Item_Sort"] = 5
	
	--掉落日常材料 巨锤柄 有配置type表示 是掉落，而不是塞背包
	tAdventureOfMine_New_DropItemProb[3145][1][3] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][3]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][3]["ItemChance"] = 150
	tAdventureOfMine_New_DropItemProb[3145][1][3]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][3]["Item_1"] = 729091
	tAdventureOfMine_New_DropItemProb[3145][1][3]["Type"] = 1
	
	--掉落日常材料 彩石 
	tAdventureOfMine_New_DropItemProb[3145][1][4] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][4]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][4]["ItemChance"] = 150
	tAdventureOfMine_New_DropItemProb[3145][1][4]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][4]["Item_1"] = 729092
	tAdventureOfMine_New_DropItemProb[3145][1][4]["Type"] = 1
	
	--掉落日常材料 利刃
	tAdventureOfMine_New_DropItemProb[3145][1][5] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][5]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][5]["ItemChance"] = 150
	tAdventureOfMine_New_DropItemProb[3145][1][5]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][5]["Item_1"] = 729093
	tAdventureOfMine_New_DropItemProb[3145][1][5]["Type"] = 1
	
	--生成旋风状态
	tAdventureOfMine_New_DropItemProb[3145][1][6] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][6]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][6]["ItemChance"] = 900
	tAdventureOfMine_New_DropItemProb[3145][1][6]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][6]["Item_1"] = 2
	
	--掉落xp药水
	tAdventureOfMine_New_DropItemProb[3145][1][7] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][7]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][7]["ItemChance"] = 900
	tAdventureOfMine_New_DropItemProb[3145][1][7]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][7]["Item_1"] = 3007529

	--掉落地魁牌
	tAdventureOfMine_New_DropItemProb[3145][1][8] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][8]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][8]["ItemChance"] = 140
	tAdventureOfMine_New_DropItemProb[3145][1][8]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][8]["Item_1"] = 721538
	tAdventureOfMine_New_DropItemProb[3145][1][8]["Type"] = 1
	
	--掉落引路蜂
	tAdventureOfMine_New_DropItemProb[3145][1][9] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][9]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][9]["ItemChance"] = 150
	tAdventureOfMine_New_DropItemProb[3145][1][9]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][9]["Item_1"] = 3007528
	
	--掉落 红色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3145][1][10] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][10]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][10]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3145][1][10]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][10]["Item_1"] = 722733
	tAdventureOfMine_New_DropItemProb[3145][1][10]["Type"] = 1
	
	--掉落 红色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3145][1][11] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][11]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][11]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3145][1][11]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][11]["Item_1"] = 722734
	tAdventureOfMine_New_DropItemProb[3145][1][11]["Type"] = 1
	
	--掉落 红色恶之花柄
	tAdventureOfMine_New_DropItemProb[3145][1][12] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][12]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][12]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3145][1][12]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][12]["Item_1"] = 722735
	tAdventureOfMine_New_DropItemProb[3145][1][12]["Type"] = 1
	
	--掉落 白色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3145][1][13] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][13]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][13]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3145][1][13]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][13]["Item_1"] = 722737
	tAdventureOfMine_New_DropItemProb[3145][1][13]["Type"] = 1
	
	--掉落 白色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3145][1][13] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][13]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][13]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3145][1][13]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][13]["Item_1"] = 722738
	tAdventureOfMine_New_DropItemProb[3145][1][13]["Type"] = 1
	
	--掉落 白色恶之花柄
	tAdventureOfMine_New_DropItemProb[3145][1][14] = {}
	tAdventureOfMine_New_DropItemProb[3145][1][14]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3145][1][14]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3145][1][14]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3145][1][14]["Item_1"] = 722739
	tAdventureOfMine_New_DropItemProb[3145][1][14]["Type"] = 1
	
	
	
	--蝠獍
	tAdventureOfMine_New_DropItemProb[3148] = {}
	tAdventureOfMine_New_DropItemProb[3148][1] = {}
	tAdventureOfMine_New_DropItemProb[3148][1]["ItemChanceSum"] = 10000
	
	-- 掉落繁星锁片 初始概率 掉落20个后概率 掉落30个后概率，这边仅配置初始概率。其余概率在函数中配置
	tAdventureOfMine_New_DropItemProb[3148][1][1] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][1]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][1]["ItemChance"] = 600
	tAdventureOfMine_New_DropItemProb[3148][1][1]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][1]["Item_1"] = 721535
	
	--掉落藏宝图 item_1 表示第一种张藏宝图id， sort表示藏宝图有多少种
	tAdventureOfMine_New_DropItemProb[3148][1][2] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][2]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][2]["ItemChance"] = 120
	tAdventureOfMine_New_DropItemProb[3148][1][2]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][2]["Item_1"] = 3007512
	tAdventureOfMine_New_DropItemProb[3148][1][2]["Item_Sort"] = 7
	
	--掉落日常材料 金臂利爪 有配置type表示 是掉落，而不是塞背包
	tAdventureOfMine_New_DropItemProb[3148][1][3] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][3]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][3]["ItemChance"] = 150
	tAdventureOfMine_New_DropItemProb[3148][1][3]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][3]["Item_1"] = 729094
	tAdventureOfMine_New_DropItemProb[3148][1][3]["Type"] = 1
	
	--掉落日常材料 银色羽毛 
	tAdventureOfMine_New_DropItemProb[3148][1][4] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][4]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][4]["ItemChance"] = 150
	tAdventureOfMine_New_DropItemProb[3148][1][4]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][4]["Item_1"] = 729095
	tAdventureOfMine_New_DropItemProb[3148][1][4]["Type"] = 1
	
	--掉落日常材料 陌刀
	tAdventureOfMine_New_DropItemProb[3148][1][5] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][5]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][5]["ItemChance"] = 150
	tAdventureOfMine_New_DropItemProb[3148][1][5]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][5]["Item_1"] = 729096
	tAdventureOfMine_New_DropItemProb[3148][1][5]["Type"] = 1
	
	--生成旋风状态
	tAdventureOfMine_New_DropItemProb[3148][1][6] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][6]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][6]["ItemChance"] = 1000
	tAdventureOfMine_New_DropItemProb[3148][1][6]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][6]["Item_1"] = 2
	
	--掉落xp药水
	tAdventureOfMine_New_DropItemProb[3148][1][7] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][7]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][7]["ItemChance"] = 1000
	tAdventureOfMine_New_DropItemProb[3148][1][7]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][7]["Item_1"] = 3007529
	
	--掉落人遁书
	tAdventureOfMine_New_DropItemProb[3148][1][8] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][8]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][8]["ItemChance"] = 120
	tAdventureOfMine_New_DropItemProb[3148][1][8]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][8]["Item_1"] = 721539
	tAdventureOfMine_New_DropItemProb[3148][1][8]["Type"] = 1
	
	--掉落引路蜂
	tAdventureOfMine_New_DropItemProb[3148][1][9] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][9]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][9]["ItemChance"] = 130
	tAdventureOfMine_New_DropItemProb[3148][1][9]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][9]["Item_1"] = 3007528

	--掉落 红色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3148][1][10] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][10]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][10]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3148][1][10]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][10]["Item_1"] = 722733
	tAdventureOfMine_New_DropItemProb[3148][1][10]["Type"] = 1
	
	--掉落 红色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3148][1][11] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][11]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][11]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3148][1][11]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][11]["Item_1"] = 722734
	tAdventureOfMine_New_DropItemProb[3148][1][11]["Type"] = 1
	
	--掉落 红色恶之花柄
	tAdventureOfMine_New_DropItemProb[3148][1][12] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][12]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][12]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3148][1][12]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][12]["Item_1"] = 722735
	tAdventureOfMine_New_DropItemProb[3148][1][12]["Type"] = 1
	
	--掉落 白色恶之花瓣
	tAdventureOfMine_New_DropItemProb[3148][1][13] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][13]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][13]["ItemChance"] = 43
	tAdventureOfMine_New_DropItemProb[3148][1][13]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][13]["Item_1"] = 722737
	tAdventureOfMine_New_DropItemProb[3148][1][13]["Type"] = 1
	
	--掉落 白色恶之花蕊
	tAdventureOfMine_New_DropItemProb[3148][1][13] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][13]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][13]["ItemChance"] = 7
	tAdventureOfMine_New_DropItemProb[3148][1][13]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][13]["Item_1"] = 722738
	tAdventureOfMine_New_DropItemProb[3148][1][13]["Type"] = 1
	
	--掉落 白色恶之花柄
	tAdventureOfMine_New_DropItemProb[3148][1][14] = {}
	tAdventureOfMine_New_DropItemProb[3148][1][14]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3148][1][14]["ItemChance"] = 6
	tAdventureOfMine_New_DropItemProb[3148][1][14]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3148][1][14]["Item_1"] = 722739
	tAdventureOfMine_New_DropItemProb[3148][1][14]["Type"] = 1
	
	
	
	--夷光
	tAdventureOfMine_New_DropItemProb[3143] = {}
	tAdventureOfMine_New_DropItemProb[3143][1] = {}
	tAdventureOfMine_New_DropItemProb[3143][1]["ItemChanceSum"] = 10000
	
	-- 必定掉落5个炫日锁片 
	tAdventureOfMine_New_DropItemProb[3143][1][1] = {}
	tAdventureOfMine_New_DropItemProb[3143][1][1]["RandomItemChanceType"] = 1
	tAdventureOfMine_New_DropItemProb[3143][1][1]["Item_1"] = 721533
	
	--10%掉落宝盒
	tAdventureOfMine_New_DropItemProb[3143][1][2] = {}
	tAdventureOfMine_New_DropItemProb[3143][1][2]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3143][1][2]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3143][1][2]["ItemChance"] = 1000
	tAdventureOfMine_New_DropItemProb[3143][1][2]["Item_1"] = 3007530

	--必定掉落天刹令
	tAdventureOfMine_New_DropItemProb[3143][1][3] = {}
	tAdventureOfMine_New_DropItemProb[3143][1][3]["RandomItemChanceType"] = 1
	tAdventureOfMine_New_DropItemProb[3143][1][3]["Item_1"] = 721537
	tAdventureOfMine_New_DropItemProb[3143][1][3]["Type"] = 1
	
	--20%掉落引路蜂
	tAdventureOfMine_New_DropItemProb[3143][1][4] = {}
	tAdventureOfMine_New_DropItemProb[3143][1][4]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3143][1][4]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3143][1][4]["ItemChance"] = 2000
	tAdventureOfMine_New_DropItemProb[3143][1][4]["Item_1"] = 3007528
	
	--玄兜
	tAdventureOfMine_New_DropItemProb[3146] = {}
	tAdventureOfMine_New_DropItemProb[3146][1] = {}
	tAdventureOfMine_New_DropItemProb[3146][1]["ItemChanceSum"] = 10000
	
	-- 必定掉落5个残月锁片 
	tAdventureOfMine_New_DropItemProb[3146][1][1] = {}
	tAdventureOfMine_New_DropItemProb[3146][1][1]["RandomItemChanceType"] = 1
	tAdventureOfMine_New_DropItemProb[3146][1][1]["Item_1"] = 721534
	
	--10%掉落宝盒
	tAdventureOfMine_New_DropItemProb[3146][1][2] = {}
	tAdventureOfMine_New_DropItemProb[3146][1][2]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3146][1][2]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3146][1][2]["ItemChance"] = 1000
	tAdventureOfMine_New_DropItemProb[3146][1][2]["Item_1"] = 3007531

	--必定掉落地魁牌
	tAdventureOfMine_New_DropItemProb[3146][1][3] = {}
	tAdventureOfMine_New_DropItemProb[3146][1][3]["RandomItemChanceType"] = 1
	tAdventureOfMine_New_DropItemProb[3146][1][3]["Item_1"] = 721538
	tAdventureOfMine_New_DropItemProb[3146][1][3]["Type"] = 1
	
	--15%掉落引路蜂
	tAdventureOfMine_New_DropItemProb[3146][1][4] = {}
	tAdventureOfMine_New_DropItemProb[3146][1][4]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3146][1][4]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3146][1][4]["ItemChance"] = 1500
	tAdventureOfMine_New_DropItemProb[3146][1][4]["Item_1"] = 3007528
	
	--厉爪
	tAdventureOfMine_New_DropItemProb[3149] = {}
	tAdventureOfMine_New_DropItemProb[3149][1] = {}
	tAdventureOfMine_New_DropItemProb[3149][1]["ItemChanceSum"] = 10000
	
	-- 必定掉落5个繁星锁片 
	tAdventureOfMine_New_DropItemProb[3149][1][1] = {}
	tAdventureOfMine_New_DropItemProb[3149][1][1]["RandomItemChanceType"] = 1
	tAdventureOfMine_New_DropItemProb[3149][1][1]["Item_1"] = 721535
	
	--10%掉落宝盒
	tAdventureOfMine_New_DropItemProb[3149][1][2] = {}
	tAdventureOfMine_New_DropItemProb[3149][1][2]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3149][1][2]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3149][1][2]["ItemChance"] = 1000
	tAdventureOfMine_New_DropItemProb[3149][1][2]["Item_1"] = 3007532

	--必定掉落人遁书
	tAdventureOfMine_New_DropItemProb[3149][1][3] = {}
	tAdventureOfMine_New_DropItemProb[3149][1][3]["RandomItemChanceType"] = 1
	tAdventureOfMine_New_DropItemProb[3149][1][3]["Item_1"] = 721539
	tAdventureOfMine_New_DropItemProb[3149][1][3]["Type"] = 1
	
	--10%掉落引路蜂
	tAdventureOfMine_New_DropItemProb[3149][1][4] = {}
	tAdventureOfMine_New_DropItemProb[3149][1][4]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3149][1][4]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3149][1][4]["ItemChance"] = 1000
	tAdventureOfMine_New_DropItemProb[3149][1][4]["Item_1"] = 3007528
	
	
	--瑶姬
	tAdventureOfMine_New_DropItemProb[3156] = {}
	tAdventureOfMine_New_DropItemProb[3156][1] = {}
	tAdventureOfMine_New_DropItemProb[3156][1]["ItemChanceSum"] = 10000
	
	-- 必定掉落5个流云锁片 
	tAdventureOfMine_New_DropItemProb[3156][1][1] = {}
	tAdventureOfMine_New_DropItemProb[3156][1][1]["RandomItemChanceType"] = 1
	tAdventureOfMine_New_DropItemProb[3156][1][1]["Item_1"] = 721536
	
	--10%掉落宝盒
	tAdventureOfMine_New_DropItemProb[3156][1][2] = {}
	tAdventureOfMine_New_DropItemProb[3156][1][2]["RandomItemChanceType"] = 3
	tAdventureOfMine_New_DropItemProb[3156][1][2]["ItemSelfChanceSum"] = 10000
	tAdventureOfMine_New_DropItemProb[3156][1][2]["ItemChance"] = 1000
	tAdventureOfMine_New_DropItemProb[3156][1][2]["Item_1"] = 3007532
	
	
--宝盒打开几率配置
local tAdventureOfMine_New_PackProb = {}

	--3007530 炫日宝盒
	tAdventureOfMine_New_PackProb[3007530] = {}
	--2转120级以下
	tAdventureOfMine_New_PackProb[3007530][1] = {}
	tAdventureOfMine_New_PackProb[3007530][1]["ItemChanceSum"] = 10000
	-- 3% 得到 普通 龙恨 宝石
	tAdventureOfMine_New_PackProb[3007530][1][1] = {}
	tAdventureOfMine_New_PackProb[3007530][1][1]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][1][1]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007530][1][1]["Item_1"] = 700011
	-- 3% 得到 普通 凤吟 宝石
	tAdventureOfMine_New_PackProb[3007530][1][2] = {}
	tAdventureOfMine_New_PackProb[3007530][1][2]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][1][2]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007530][1][2]["Item_1"] = 700001
	-- 3% 得到 普通 金麟 宝石
	tAdventureOfMine_New_PackProb[3007530][1][3] = {}
	tAdventureOfMine_New_PackProb[3007530][1][3]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][1][3]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007530][1][3]["Item_1"] = 700041
	-- 3% 得到 普通 惊鸿 宝石
	tAdventureOfMine_New_PackProb[3007530][1][4] = {}
	tAdventureOfMine_New_PackProb[3007530][1][4]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][1][4]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007530][1][4]["Item_1"] = 700021
	-- 3% 得到 普通 青虹 宝石
	tAdventureOfMine_New_PackProb[3007530][1][5] = {}
	tAdventureOfMine_New_PackProb[3007530][1][5]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][1][5]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007530][1][5]["Item_1"] = 700031
	-- 3% 得到 普通 紫霞 宝石
	tAdventureOfMine_New_PackProb[3007530][1][6] = {}
	tAdventureOfMine_New_PackProb[3007530][1][6]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][1][6]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007530][1][6]["Item_1"] = 700051
	-- 3% 得到 普通 明月 宝石
	tAdventureOfMine_New_PackProb[3007530][1][7] = {}
	tAdventureOfMine_New_PackProb[3007530][1][7]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][1][7]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007530][1][7]["Item_1"] = 700061
	-- 10% 得到 流星
	tAdventureOfMine_New_PackProb[3007530][1][8] = {}
	tAdventureOfMine_New_PackProb[3007530][1][8]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][1][8]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007530][1][8]["Item_1"] = 1088001
	-- 24% 得到 聚神丹（赠）
	tAdventureOfMine_New_PackProb[3007530][1][9] = {}
	tAdventureOfMine_New_PackProb[3007530][1][9]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][1][9]["ItemChance"] = 2400
	tAdventureOfMine_New_PackProb[3007530][1][9]["Item_1"] = 3314900
	tAdventureOfMine_New_PackProb[3007530][1][9]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007530][1][9]["NAttr"] = "0 0 3"
	-- 20% 得到 玄灵秘录（赠）
	tAdventureOfMine_New_PackProb[3007530][1][10] = {}
	tAdventureOfMine_New_PackProb[3007530][1][10]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][1][10]["ItemChance"] = 2000
	tAdventureOfMine_New_PackProb[3007530][1][10]["Item_1"] = 723341
	tAdventureOfMine_New_PackProb[3007530][1][10]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007530][1][10]["NAttr"] = "0 0 3"
	-- 5% 得到 小祈愿石（赠）
	tAdventureOfMine_New_PackProb[3007530][1][11] = {}
	tAdventureOfMine_New_PackProb[3007530][1][11]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][1][11]["ItemChance"] = 500
	tAdventureOfMine_New_PackProb[3007530][1][11]["Item_1"] = 1200000
	tAdventureOfMine_New_PackProb[3007530][1][11]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007530][1][11]["NAttr"] = "0 0 3"
	-- 20% 得到 昆仑雪水（赠）
	tAdventureOfMine_New_PackProb[3007530][1][12] = {}
	tAdventureOfMine_New_PackProb[3007530][1][12]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][1][12]["ItemChance"] = 2000
	tAdventureOfMine_New_PackProb[3007530][1][12]["Item_1"] = 723017
	tAdventureOfMine_New_PackProb[3007530][1][12]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007530][1][12]["NAttr"] = "0 0 3"
	
	--2转120级以上
	tAdventureOfMine_New_PackProb[3007530][2] = {}
	tAdventureOfMine_New_PackProb[3007530][2]["ItemChanceSum"] = 10000
	-- 10% 得到 通神丹（赠）
	tAdventureOfMine_New_PackProb[3007530][2][1] = {}
	tAdventureOfMine_New_PackProb[3007530][2][1]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][2][1]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007530][2][1]["Item_1"] = 3003125
	tAdventureOfMine_New_PackProb[3007530][2][1]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007530][2][1]["NAttr"] = "0 0 3"
	-- 10% 得到 免费强炼丹（赠）
	tAdventureOfMine_New_PackProb[3007530][2][2] = {}
	tAdventureOfMine_New_PackProb[3007530][2][2]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][2][2]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007530][2][2]["Item_1"] = 3003124
	tAdventureOfMine_New_PackProb[3007530][2][2]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007530][2][2]["NAttr"] = "0 0 3"
	-- 20% 得到 强效护心丹
	tAdventureOfMine_New_PackProb[3007530][2][3] = {}
	tAdventureOfMine_New_PackProb[3007530][2][3]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][2][3]["ItemChance"] = 2000
	tAdventureOfMine_New_PackProb[3007530][2][3]["Item_1"] = 3002030
	tAdventureOfMine_New_PackProb[3007530][2][3]["NAttr"] = "0 1"
	-- 15% 得到 真气礼包
	tAdventureOfMine_New_PackProb[3007530][2][4] = {}
	tAdventureOfMine_New_PackProb[3007530][2][4]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][2][4]["ItemChance"] = 1500
	tAdventureOfMine_New_PackProb[3007530][2][4]["Item_1"] = 3006542
	-- 15% 得到 修炼礼包
	tAdventureOfMine_New_PackProb[3007530][2][5] = {}
	tAdventureOfMine_New_PackProb[3007530][2][5]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][2][5]["ItemChance"] = 1500
	tAdventureOfMine_New_PackProb[3007530][2][5]["Item_1"] = 3006543
	-- 15% 得到 红色恶之花
	tAdventureOfMine_New_PackProb[3007530][2][6] = {}
	tAdventureOfMine_New_PackProb[3007530][2][6]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][2][6]["ItemChance"] = 1500
	tAdventureOfMine_New_PackProb[3007530][2][6]["Item_1"] = 722732
	-- 15% 得到 白色恶之花
	tAdventureOfMine_New_PackProb[3007530][2][7] = {}
	tAdventureOfMine_New_PackProb[3007530][2][7]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007530][2][7]["ItemChance"] = 1500
	tAdventureOfMine_New_PackProb[3007530][2][7]["Item_1"] = 722736
	
	
	
	--3007531 残月宝盒
	tAdventureOfMine_New_PackProb[3007531] = {}
	--2转120级以下
	tAdventureOfMine_New_PackProb[3007531][1] = {}
	tAdventureOfMine_New_PackProb[3007531][1]["ItemChanceSum"] = 10000
	-- 3% 得到 普通 龙恨 宝石 *2
	tAdventureOfMine_New_PackProb[3007531][1][1] = {}
	tAdventureOfMine_New_PackProb[3007531][1][1]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][1][1]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007531][1][1]["Item_1"] = 700011
	tAdventureOfMine_New_PackProb[3007531][1][1]["Num"] =2
	tAdventureOfMine_New_PackProb[3007531][1][1]["NAttr"] = "0 2"
	
	-- 3% 得到 普通 凤吟 宝石 *2
	tAdventureOfMine_New_PackProb[3007531][1][2] = {}
	tAdventureOfMine_New_PackProb[3007531][1][2]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][1][2]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007531][1][2]["Item_1"] = 700001
	tAdventureOfMine_New_PackProb[3007531][1][2]["Num"] =2
	tAdventureOfMine_New_PackProb[3007531][1][2]["NAttr"] = "0 2"
	-- 3% 得到 普通 金麟 宝石 *2
	tAdventureOfMine_New_PackProb[3007531][1][3] = {}
	tAdventureOfMine_New_PackProb[3007531][1][3]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][1][3]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007531][1][3]["Item_1"] = 700041
	tAdventureOfMine_New_PackProb[3007531][1][3]["Num"] =2
	tAdventureOfMine_New_PackProb[3007531][1][3]["NAttr"] = "0 2"
	-- 3% 得到 普通 惊鸿 宝石 *2
	tAdventureOfMine_New_PackProb[3007531][1][4] = {}
	tAdventureOfMine_New_PackProb[3007531][1][4]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][1][4]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007531][1][4]["Item_1"] = 700021
	tAdventureOfMine_New_PackProb[3007531][1][4]["Num"] =2
	tAdventureOfMine_New_PackProb[3007531][1][4]["NAttr"] = "0 2"
	-- 3% 得到 普通 青虹 宝石 *2
	tAdventureOfMine_New_PackProb[3007531][1][5] = {}
	tAdventureOfMine_New_PackProb[3007531][1][5]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][1][5]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007531][1][5]["Item_1"] = 700031
	tAdventureOfMine_New_PackProb[3007531][1][5]["Num"] =2
	tAdventureOfMine_New_PackProb[3007531][1][5]["NAttr"] = "0 2"
	-- 3% 得到 普通 紫霞 宝石 *2
	tAdventureOfMine_New_PackProb[3007531][1][6] = {}
	tAdventureOfMine_New_PackProb[3007531][1][6]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][1][6]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007531][1][6]["Item_1"] = 700051
	tAdventureOfMine_New_PackProb[3007531][1][6]["Num"] =2
	tAdventureOfMine_New_PackProb[3007531][1][6]["NAttr"] = "0 2"
	-- 3% 得到 普通 明月 宝石 *2
	tAdventureOfMine_New_PackProb[3007531][1][7] = {}
	tAdventureOfMine_New_PackProb[3007531][1][7]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][1][7]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007531][1][7]["Item_1"] = 700061
	tAdventureOfMine_New_PackProb[3007531][1][7]["Num"] =2
	tAdventureOfMine_New_PackProb[3007531][1][7]["NAttr"] = "0 2"
	-- 6% 得到 流星卷
	tAdventureOfMine_New_PackProb[3007531][1][8] = {}
	tAdventureOfMine_New_PackProb[3007531][1][8]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][1][8]["ItemChance"] = 600
	tAdventureOfMine_New_PackProb[3007531][1][8]["Item_1"] = 720027
	-- 24% 得到 聚神丹（赠）
	tAdventureOfMine_New_PackProb[3007531][1][9] = {}
	tAdventureOfMine_New_PackProb[3007531][1][9]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][1][9]["ItemChance"] = 2400
	tAdventureOfMine_New_PackProb[3007531][1][9]["Item_1"] = 3314900
	tAdventureOfMine_New_PackProb[3007531][1][9]["Zeng"] = 3 
	tAdventureOfMine_New_PackProb[3007531][1][9]["NAttr"] = "0 0 3"
	-- 22% 得到 玄灵秘录（赠）
	tAdventureOfMine_New_PackProb[3007531][1][10] = {}
	tAdventureOfMine_New_PackProb[3007531][1][10]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][1][10]["ItemChance"] = 2200
	tAdventureOfMine_New_PackProb[3007531][1][10]["Item_1"] = 723341
	tAdventureOfMine_New_PackProb[3007531][1][10]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007531][1][10]["NAttr"] = "0 0 3"
	-- 5% 得到 小祈愿石（赠）
	tAdventureOfMine_New_PackProb[3007531][1][11] = {}
	tAdventureOfMine_New_PackProb[3007531][1][11]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][1][11]["ItemChance"] = 500
	tAdventureOfMine_New_PackProb[3007531][1][11]["Item_1"] = 1200000
	tAdventureOfMine_New_PackProb[3007531][1][11]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007531][1][11]["NAttr"] = "0 0 3"
	-- 22% 得到 昆仑雪水（赠）
	tAdventureOfMine_New_PackProb[3007531][1][12] = {}
	tAdventureOfMine_New_PackProb[3007531][1][12]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][1][12]["ItemChance"] = 2200
	tAdventureOfMine_New_PackProb[3007531][1][12]["Item_1"] = 723017
	tAdventureOfMine_New_PackProb[3007531][1][12]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007531][1][12]["NAttr"] = "0 0 3"
	
	--2转120级以上
	tAdventureOfMine_New_PackProb[3007531][2] = {}
	tAdventureOfMine_New_PackProb[3007531][2]["ItemChanceSum"] = 10000
	-- 10% 得到 通神丹（赠）
	tAdventureOfMine_New_PackProb[3007531][2][1] = {}
	tAdventureOfMine_New_PackProb[3007531][2][1]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][2][1]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007531][2][1]["Item_1"] = 3003125
	tAdventureOfMine_New_PackProb[3007531][2][1]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007531][2][1]["NAttr"] = "0 0 3"
	-- 10% 得到 免费强炼丹（赠）
	tAdventureOfMine_New_PackProb[3007531][2][2] = {}
	tAdventureOfMine_New_PackProb[3007531][2][2]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][2][2]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007531][2][2]["Item_1"] = 3003124
	tAdventureOfMine_New_PackProb[3007531][2][2]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007531][2][2]["NAttr"] = "0 0 3"
	-- 20% 得到 强效护心丹
	tAdventureOfMine_New_PackProb[3007531][2][3] = {}
	tAdventureOfMine_New_PackProb[3007531][2][3]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][2][3]["ItemChance"] = 2000
	tAdventureOfMine_New_PackProb[3007531][2][3]["Item_1"] = 3002030
	tAdventureOfMine_New_PackProb[3007531][2][3]["NAttr"] = "0 1"
	-- 15% 得到 真气礼包
	tAdventureOfMine_New_PackProb[3007531][2][4] = {}
	tAdventureOfMine_New_PackProb[3007531][2][4]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][2][4]["ItemChance"] = 1500
	tAdventureOfMine_New_PackProb[3007531][2][4]["Item_1"] = 3006542
	-- 15% 得到 修炼礼包
	tAdventureOfMine_New_PackProb[3007531][2][5] = {}
	tAdventureOfMine_New_PackProb[3007531][2][5]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][2][5]["ItemChance"] = 1500
	tAdventureOfMine_New_PackProb[3007531][2][5]["Item_1"] = 3006543
	-- 10% 得到 100气力包（赠）
	tAdventureOfMine_New_PackProb[3007531][2][6] = {}
	tAdventureOfMine_New_PackProb[3007531][2][6]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][2][6]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007531][2][6]["Item_1"] = 3002027
	tAdventureOfMine_New_PackProb[3007531][2][6]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007531][2][6]["NAttr"] = "0 0 3"
	-- 10% 得到 红色恶之花
	tAdventureOfMine_New_PackProb[3007531][2][7] = {}
	tAdventureOfMine_New_PackProb[3007531][2][7]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][2][7]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007531][2][7]["Item_1"] = 722732
	-- 10% 得到 白色恶之花
	tAdventureOfMine_New_PackProb[3007531][2][8] = {}
	tAdventureOfMine_New_PackProb[3007531][2][8]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007531][2][8]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007531][2][8]["Item_1"] = 722736
	
	
	
	
	--3007532 繁星宝盒
	tAdventureOfMine_New_PackProb[3007532] = {}
	--2转120级以下
	tAdventureOfMine_New_PackProb[3007532][1] = {}
	tAdventureOfMine_New_PackProb[3007532][1]["ItemChanceSum"] = 10000
	-- 3% 得到 良品 龙恨 宝石
	tAdventureOfMine_New_PackProb[3007532][1][1] = {}
	tAdventureOfMine_New_PackProb[3007532][1][1]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][1][1]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007532][1][1]["Item_1"] = 700012
	-- 3% 得到 良品 凤吟 宝石
	tAdventureOfMine_New_PackProb[3007532][1][2] = {}
	tAdventureOfMine_New_PackProb[3007532][1][2]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][1][2]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007532][1][2]["Item_1"] = 700002
	-- 3% 得到 良品 金麟 宝石
	tAdventureOfMine_New_PackProb[3007532][1][3] = {}
	tAdventureOfMine_New_PackProb[3007532][1][3]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][1][3]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007532][1][3]["Item_1"] = 700042
	-- 3% 得到 良品 惊鸿 宝石
	tAdventureOfMine_New_PackProb[3007532][1][4] = {}
	tAdventureOfMine_New_PackProb[3007532][1][4]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][1][4]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007532][1][4]["Item_1"] = 700022
	-- 3% 得到 良品 青虹 宝石
	tAdventureOfMine_New_PackProb[3007532][1][5] = {}
	tAdventureOfMine_New_PackProb[3007532][1][5]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][1][5]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007532][1][5]["Item_1"] = 700032
	-- 3% 得到 良品 紫霞 宝石
	tAdventureOfMine_New_PackProb[3007532][1][6] = {}
	tAdventureOfMine_New_PackProb[3007532][1][6]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][1][6]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007532][1][6]["Item_1"] = 700052
	-- 3% 得到 良品 明月 宝石
	tAdventureOfMine_New_PackProb[3007532][1][7] = {}
	tAdventureOfMine_New_PackProb[3007532][1][7]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][1][7]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007532][1][7]["Item_1"] = 700062
	-- 6% 得到 流星卷 *2
	tAdventureOfMine_New_PackProb[3007532][1][8] = {}
	tAdventureOfMine_New_PackProb[3007532][1][8]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][1][8]["ItemChance"] = 600
	tAdventureOfMine_New_PackProb[3007532][1][8]["Item_1"] = 720027
	tAdventureOfMine_New_PackProb[3007532][1][8]["Num"] =2
	tAdventureOfMine_New_PackProb[3007532][1][8]["NAttr"] = "0 2"
	-- 24% 得到 聚神丹（赠）*2
	tAdventureOfMine_New_PackProb[3007532][1][9] = {}
	tAdventureOfMine_New_PackProb[3007532][1][9]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][1][9]["ItemChance"] = 2400
	tAdventureOfMine_New_PackProb[3007532][1][9]["Item_1"] = 3314900
	tAdventureOfMine_New_PackProb[3007532][1][9]["Num"] =2
	tAdventureOfMine_New_PackProb[3007532][1][9]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007532][1][9]["NAttr"] = "0 2 3"
	-- 22% 得到 玄灵秘录（赠）*2
	tAdventureOfMine_New_PackProb[3007532][1][10] = {}
	tAdventureOfMine_New_PackProb[3007532][1][10]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][1][10]["ItemChance"] = 2200
	tAdventureOfMine_New_PackProb[3007532][1][10]["Item_1"] = 723341
	tAdventureOfMine_New_PackProb[3007532][1][10]["Num"] =2
	tAdventureOfMine_New_PackProb[3007532][1][10]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007532][1][10]["NAttr"] = "0 2 3"
	-- 5% 得到 小祈愿石（赠）*2
	tAdventureOfMine_New_PackProb[3007532][1][11] = {}
	tAdventureOfMine_New_PackProb[3007532][1][11]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][1][11]["ItemChance"] = 500
	tAdventureOfMine_New_PackProb[3007532][1][11]["Item_1"] = 1200000
	tAdventureOfMine_New_PackProb[3007532][1][11]["Num"] =2
	tAdventureOfMine_New_PackProb[3007532][1][11]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007532][1][11]["NAttr"] = "0 2 3"
	-- 22% 得到 昆仑雪水（赠）*2
	tAdventureOfMine_New_PackProb[3007532][1][12] = {}
	tAdventureOfMine_New_PackProb[3007532][1][12]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][1][12]["ItemChance"] = 2200
	tAdventureOfMine_New_PackProb[3007532][1][12]["Item_1"] = 723017
	tAdventureOfMine_New_PackProb[3007532][1][12]["Num"] =2
	tAdventureOfMine_New_PackProb[3007532][1][12]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007532][1][12]["NAttr"] = "0 2 3"
	
	--2转120级以上
	tAdventureOfMine_New_PackProb[3007532][2] = {}
	tAdventureOfMine_New_PackProb[3007532][2]["ItemChanceSum"] = 10000
	-- 10% 得到 通神丹（赠）*2
	tAdventureOfMine_New_PackProb[3007532][2][1] = {}
	tAdventureOfMine_New_PackProb[3007532][2][1]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][2][1]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007532][2][1]["Item_1"] = 3003125
	tAdventureOfMine_New_PackProb[3007532][2][1]["Num"] =2
	tAdventureOfMine_New_PackProb[3007532][2][1]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007532][2][1]["NAttr"] = "0 2 3"
	-- 10% 得到 免费强炼丹（赠）*2
	tAdventureOfMine_New_PackProb[3007532][2][2] = {}
	tAdventureOfMine_New_PackProb[3007532][2][2]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][2][2]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007532][2][2]["Item_1"] = 3003124
	tAdventureOfMine_New_PackProb[3007532][2][2]["Num"] =2
	tAdventureOfMine_New_PackProb[3007532][2][2]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007532][2][2]["NAttr"] = "0 2 3"
	-- 20% 得到 强效护心丹*2
	tAdventureOfMine_New_PackProb[3007532][2][3] = {}
	tAdventureOfMine_New_PackProb[3007532][2][3]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][2][3]["ItemChance"] = 2000
	tAdventureOfMine_New_PackProb[3007532][2][3]["Item_1"] = 3002030
	tAdventureOfMine_New_PackProb[3007532][2][3]["Num"] =2
	tAdventureOfMine_New_PackProb[3007532][2][3]["NAttr"] = "0 2"
	-- 15% 得到 真气礼包 *2
	tAdventureOfMine_New_PackProb[3007532][2][4] = {}
	tAdventureOfMine_New_PackProb[3007532][2][4]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][2][4]["ItemChance"] = 1500
	tAdventureOfMine_New_PackProb[3007532][2][4]["Item_1"] = 3006542
	tAdventureOfMine_New_PackProb[3007532][2][4]["Num"] =2
	tAdventureOfMine_New_PackProb[3007532][2][4]["NAttr"] = "0 2"
	-- 15% 得到 修炼礼包 *2
	tAdventureOfMine_New_PackProb[3007532][2][5] = {}
	tAdventureOfMine_New_PackProb[3007532][2][5]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][2][5]["ItemChance"] = 1500
	tAdventureOfMine_New_PackProb[3007532][2][5]["Item_1"] = 3006543
	tAdventureOfMine_New_PackProb[3007532][2][5]["Num"] =2
	tAdventureOfMine_New_PackProb[3007532][2][5]["NAttr"] = "0 2"
	-- 10% 得到 200气力包（赠）
	tAdventureOfMine_New_PackProb[3007532][2][6] = {}
	tAdventureOfMine_New_PackProb[3007532][2][6]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][2][6]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007532][2][6]["Item_1"] = 3001411
	tAdventureOfMine_New_PackProb[3007532][2][6]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007532][2][6]["NAttr"] = "0 0 3"
	-- 10% 得到 红色恶之花*2
	tAdventureOfMine_New_PackProb[3007532][2][7] = {}
	tAdventureOfMine_New_PackProb[3007532][2][7]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][2][7]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007532][2][7]["Item_1"] = 722732
	tAdventureOfMine_New_PackProb[3007532][2][7]["Num"] =2
	tAdventureOfMine_New_PackProb[3007532][2][7]["NAttr"] = "0 2"
	-- 10% 得到 白色恶之花*2
	tAdventureOfMine_New_PackProb[3007532][2][8] = {}
	tAdventureOfMine_New_PackProb[3007532][2][8]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007532][2][8]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007532][2][8]["Item_1"] = 722736
	tAdventureOfMine_New_PackProb[3007532][2][8]["Num"] =2
	tAdventureOfMine_New_PackProb[3007532][2][8]["NAttr"] = "0 2"
	
	
	
	
	--3007533 流云宝盒
	tAdventureOfMine_New_PackProb[3007533] = {}
	--2转120级以下
	tAdventureOfMine_New_PackProb[3007533][1] = {}
	tAdventureOfMine_New_PackProb[3007533][1]["ItemChanceSum"] = 10000
	-- 3% 得到 良品 龙恨 宝石 *1
	tAdventureOfMine_New_PackProb[3007533][1][1] = {}
	tAdventureOfMine_New_PackProb[3007533][1][1]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][1][1]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007533][1][1]["Item_1"] = 700012
	tAdventureOfMine_New_PackProb[3007533][1][1]["Num"] =1
	tAdventureOfMine_New_PackProb[3007533][1][1]["NAttr"] = "0 1"
	-- 3% 得到 良品 凤吟 宝石 *1
	tAdventureOfMine_New_PackProb[3007533][1][2] = {}
	tAdventureOfMine_New_PackProb[3007533][1][2]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][1][2]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007533][1][2]["Item_1"] = 700002
	tAdventureOfMine_New_PackProb[3007533][1][2]["Num"] =1
	tAdventureOfMine_New_PackProb[3007533][1][2]["NAttr"] = "0 1"
	-- 3% 得到 良品 金麟 宝石 *1
	tAdventureOfMine_New_PackProb[3007533][1][3] = {}
	tAdventureOfMine_New_PackProb[3007533][1][3]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][1][3]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007533][1][3]["Item_1"] = 700042
	tAdventureOfMine_New_PackProb[3007533][1][3]["Num"] =1
	tAdventureOfMine_New_PackProb[3007533][1][3]["NAttr"] = "0 1"
	-- 3% 得到 良品 惊鸿 宝石 *1
	tAdventureOfMine_New_PackProb[3007533][1][4] = {}
	tAdventureOfMine_New_PackProb[3007533][1][4]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][1][4]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007533][1][4]["Item_1"] = 700022
	tAdventureOfMine_New_PackProb[3007533][1][4]["Num"] =1
	tAdventureOfMine_New_PackProb[3007533][1][4]["NAttr"] = "0 1"
	-- 3% 得到 良品 青虹 宝石 *1
	tAdventureOfMine_New_PackProb[3007533][1][5] = {}
	tAdventureOfMine_New_PackProb[3007533][1][5]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][1][5]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007533][1][5]["Item_1"] = 700032
	tAdventureOfMine_New_PackProb[3007533][1][5]["Num"] =1
	tAdventureOfMine_New_PackProb[3007533][1][5]["NAttr"] = "0 1"
	-- 3% 得到 良品 紫霞 宝石 *1
	tAdventureOfMine_New_PackProb[3007533][1][6] = {}
	tAdventureOfMine_New_PackProb[3007533][1][6]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][1][6]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007533][1][6]["Item_1"] = 700052
	tAdventureOfMine_New_PackProb[3007533][1][6]["Num"] =1
	tAdventureOfMine_New_PackProb[3007533][1][6]["NAttr"] = "0 1"
	-- 3% 得到 良品 明月 宝石 *1
	tAdventureOfMine_New_PackProb[3007533][1][7] = {}
	tAdventureOfMine_New_PackProb[3007533][1][7]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][1][7]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007533][1][7]["Item_1"] = 700062
	tAdventureOfMine_New_PackProb[3007533][1][7]["Num"] =1
	tAdventureOfMine_New_PackProb[3007533][1][7]["NAttr"] = "0 1"
	-- 6% 得到 流星卷 *3
	tAdventureOfMine_New_PackProb[3007533][1][8] = {}
	tAdventureOfMine_New_PackProb[3007533][1][8]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][1][8]["ItemChance"] = 600
	tAdventureOfMine_New_PackProb[3007533][1][8]["Item_1"] = 720027
	tAdventureOfMine_New_PackProb[3007533][1][8]["Num"] =3
	tAdventureOfMine_New_PackProb[3007533][1][8]["NAttr"] = "0 3"
	-- 24% 得到 聚神丹（赠）*3
	tAdventureOfMine_New_PackProb[3007533][1][9] = {}
	tAdventureOfMine_New_PackProb[3007533][1][9]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][1][9]["ItemChance"] = 2400
	tAdventureOfMine_New_PackProb[3007533][1][9]["Item_1"] = 3314900
	tAdventureOfMine_New_PackProb[3007533][1][9]["Num"] =3
	tAdventureOfMine_New_PackProb[3007533][1][9]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007533][1][9]["NAttr"] = "0 3 3"
	-- 22% 得到 玄灵秘录（赠）*3
	tAdventureOfMine_New_PackProb[3007533][1][10] = {}
	tAdventureOfMine_New_PackProb[3007533][1][10]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][1][10]["ItemChance"] = 2200
	tAdventureOfMine_New_PackProb[3007533][1][10]["Item_1"] = 723341
	tAdventureOfMine_New_PackProb[3007533][1][10]["Num"] =3
	tAdventureOfMine_New_PackProb[3007533][1][10]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007533][1][10]["NAttr"] = "0 3 3"
	-- 5% 得到 小祈愿石（赠）*3
	tAdventureOfMine_New_PackProb[3007533][1][11] = {}
	tAdventureOfMine_New_PackProb[3007533][1][11]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][1][11]["ItemChance"] = 500
	tAdventureOfMine_New_PackProb[3007533][1][11]["Item_1"] = 1200000
	tAdventureOfMine_New_PackProb[3007533][1][11]["Num"] =3
	tAdventureOfMine_New_PackProb[3007533][1][11]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007533][1][11]["NAttr"] = "0 3 3"
	-- 22% 得到 昆仑雪水（赠）*3
	tAdventureOfMine_New_PackProb[3007533][1][12] = {}
	tAdventureOfMine_New_PackProb[3007533][1][12]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][1][12]["ItemChance"] = 2200
	tAdventureOfMine_New_PackProb[3007533][1][12]["Item_1"] = 723017
	tAdventureOfMine_New_PackProb[3007533][1][12]["Num"] =3
	tAdventureOfMine_New_PackProb[3007533][1][12]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007533][1][12]["NAttr"] = "0 3 3"
	
	--2转120级以上
	tAdventureOfMine_New_PackProb[3007533][2] = {}
	tAdventureOfMine_New_PackProb[3007533][2]["ItemChanceSum"] = 10000
	-- 10% 得到 通神丹（赠）*3
	tAdventureOfMine_New_PackProb[3007533][2][1] = {}
	tAdventureOfMine_New_PackProb[3007533][2][1]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][2][1]["ItemChance"] = 1000
	tAdventureOfMine_New_PackProb[3007533][2][1]["Item_1"] = 3003125
	tAdventureOfMine_New_PackProb[3007533][2][1]["Num"] =3
	tAdventureOfMine_New_PackProb[3007533][2][1]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007533][2][1]["NAttr"] = "0 3 3"
	-- 10% 得到 免费强炼丹（赠） *3
	tAdventureOfMine_New_PackProb[3007533][2][2] = {}
	tAdventureOfMine_New_PackProb[3007533][2][2]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][2][2]["ItemChance"] = 1200
	tAdventureOfMine_New_PackProb[3007533][2][2]["Item_1"] = 3003124
	tAdventureOfMine_New_PackProb[3007533][2][2]["Num"] =3
	tAdventureOfMine_New_PackProb[3007533][2][2]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007533][2][2]["NAttr"] = "0 3 3"
	-- 15% 得到 强效护心丹 *3
	tAdventureOfMine_New_PackProb[3007533][2][3] = {}
	tAdventureOfMine_New_PackProb[3007533][2][3]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][2][3]["ItemChance"] = 1500
	tAdventureOfMine_New_PackProb[3007533][2][3]["Item_1"] = 3002030
	tAdventureOfMine_New_PackProb[3007533][2][3]["Num"] = 3
	tAdventureOfMine_New_PackProb[3007533][2][3]["NAttr"] = "0 3"
	-- 15% 得到 真气礼包 *3
	tAdventureOfMine_New_PackProb[3007533][2][4] = {}
	tAdventureOfMine_New_PackProb[3007533][2][4]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][2][4]["ItemChance"] = 1500
	tAdventureOfMine_New_PackProb[3007533][2][4]["Item_1"] = 3006542
	tAdventureOfMine_New_PackProb[3007533][2][4]["Num"] =3
	tAdventureOfMine_New_PackProb[3007533][2][4]["NAttr"] = "0 3"
	-- 15% 得到 修炼礼包 *3
	tAdventureOfMine_New_PackProb[3007533][2][5] = {}
	tAdventureOfMine_New_PackProb[3007533][2][5]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][2][5]["ItemChance"] = 1500
	tAdventureOfMine_New_PackProb[3007533][2][5]["Item_1"] = 3006543
	tAdventureOfMine_New_PackProb[3007533][2][5]["Num"] =3
	tAdventureOfMine_New_PackProb[3007533][2][5]["NAttr"] = "0 3"
	-- 10% 得到 300气力包（赠）
	tAdventureOfMine_New_PackProb[3007533][2][6] = {}
	tAdventureOfMine_New_PackProb[3007533][2][6]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][2][6]["ItemChance"] = 600
	tAdventureOfMine_New_PackProb[3007533][2][6]["Item_1"] = 3001025
	tAdventureOfMine_New_PackProb[3007533][2][6]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007533][2][6]["NAttr"] = "0 0 3"
	-- 3% 得到 究极通神丹（赠）
	tAdventureOfMine_New_PackProb[3007533][2][7] = {}
	tAdventureOfMine_New_PackProb[3007533][2][7]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][2][7]["ItemChance"] = 300
	tAdventureOfMine_New_PackProb[3007533][2][7]["Item_1"] = 3003126
	tAdventureOfMine_New_PackProb[3007533][2][7]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007533][2][7]["NAttr"] = "0 0 3"
	-- 2% 得到 八宝护气丹（赠）
	tAdventureOfMine_New_PackProb[3007533][2][8] = {}
	tAdventureOfMine_New_PackProb[3007533][2][8]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][2][8]["ItemChance"] = 200
	tAdventureOfMine_New_PackProb[3007533][2][8]["Item_1"] = 3005360
	tAdventureOfMine_New_PackProb[3007533][2][8]["Zeng"] = 3
	tAdventureOfMine_New_PackProb[3007533][2][8]["NAttr"] = "0 0 3"
	-- 10% 得到 红色恶之花
	tAdventureOfMine_New_PackProb[3007533][2][9] = {}
	tAdventureOfMine_New_PackProb[3007533][2][9]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][2][9]["ItemChance"] = 1100
	tAdventureOfMine_New_PackProb[3007533][2][9]["Item_1"] = 722732
	tAdventureOfMine_New_PackProb[3007533][2][9]["Num"] = 3
	tAdventureOfMine_New_PackProb[3007533][2][9]["NAttr"] = "0 3"
	-- 10% 得到 白色恶之花
	tAdventureOfMine_New_PackProb[3007533][2][10] = {}
	tAdventureOfMine_New_PackProb[3007533][2][10]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_PackProb[3007533][2][10]["ItemChance"] = 1100
	tAdventureOfMine_New_PackProb[3007533][2][10]["Item_1"] = 722736
	tAdventureOfMine_New_PackProb[3007533][2][10]["Num"] =3
	tAdventureOfMine_New_PackProb[3007533][2][10]["NAttr"] = "0 3"
	
	
	--随机得到神魂礼包
	local tAdventureOfMine_New_Crystal = {}
	tAdventureOfMine_New_Crystal[1] = {}
	tAdventureOfMine_New_Crystal[1][1] = {}
	tAdventureOfMine_New_Crystal[1][1]["ItemChanceSum"] = 10000

	tAdventureOfMine_New_Crystal[1][1][1] = {}
	tAdventureOfMine_New_Crystal[1][1][1]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Crystal[1][1][1]["ItemChance"] = 2000
	tAdventureOfMine_New_Crystal[1][1][1]["tItem_1"] = 3008051 --四阶神魂礼包 ，20%
	tAdventureOfMine_New_Crystal[1][1][1]["Attr"] = "0 0 0 4320 1"

	tAdventureOfMine_New_Crystal[1][1][2] = {}
	tAdventureOfMine_New_Crystal[1][1][2]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Crystal[1][1][2]["ItemChance"] = 1000
	tAdventureOfMine_New_Crystal[1][1][2]["tItem_1"] = 3008052 --五阶神魂礼包 10%
	tAdventureOfMine_New_Crystal[1][1][2]["Attr"] = "0 0 0 4320 1"

	tAdventureOfMine_New_Crystal[1][1][3] = {}
	tAdventureOfMine_New_Crystal[1][1][3]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Crystal[1][1][3]["ItemChance"] = 700
	tAdventureOfMine_New_Crystal[1][1][3]["tItem_1"] = 3008053 --六阶武器神魂礼包，7%
	tAdventureOfMine_New_Crystal[1][1][3]["Attr"] = "0 0 0 4320 1"

	tAdventureOfMine_New_Crystal[1][1][4] = {}
	tAdventureOfMine_New_Crystal[1][1][4]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Crystal[1][1][4]["ItemChance"] = 1400
	tAdventureOfMine_New_Crystal[1][1][4]["tItem_1"] = 3008054 --六阶防具配饰神魂礼包，14%
	tAdventureOfMine_New_Crystal[1][1][4]["Attr"] = "0 0 0 4320 1"

	tAdventureOfMine_New_Crystal[1][1][5] = {}
	tAdventureOfMine_New_Crystal[1][1][5]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Crystal[1][1][5]["ItemChance"] = 60
	tAdventureOfMine_New_Crystal[1][1][5]["tItem_1"] = 3008055 --七阶武器神魂礼包 0.6%
	tAdventureOfMine_New_Crystal[1][1][5]["Attr"] = "0 0 0 4320 1"

	tAdventureOfMine_New_Crystal[1][1][6] = {}
	tAdventureOfMine_New_Crystal[1][1][6]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Crystal[1][1][6]["ItemChance"] = 140
	tAdventureOfMine_New_Crystal[1][1][6]["tItem_1"] = 3008056 --七阶防具配饰神魂礼包，1.4%
	tAdventureOfMine_New_Crystal[1][1][6]["Attr"] = "0 0 0 4320 1"

	tAdventureOfMine_New_Crystal[1][1][7] = {}
	tAdventureOfMine_New_Crystal[1][1][7]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Crystal[1][1][7]["ItemChance"] = 2000
	tAdventureOfMine_New_Crystal[1][1][7]["tItem_1"] = 3004260 --神魂卷轴，20%
	tAdventureOfMine_New_Crystal[1][1][7]["Attr"] = ""

	tAdventureOfMine_New_Crystal[1][1][8] = {}
	tAdventureOfMine_New_Crystal[1][1][8]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Crystal[1][1][8]["ItemChance"] = 900
	tAdventureOfMine_New_Crystal[1][1][8]["tItem_1"] = 3315497 --七阶武器神魂礼包碎片，9%
	tAdventureOfMine_New_Crystal[1][1][8]["Attr"] = ""

	tAdventureOfMine_New_Crystal[1][1][9] = {}
	tAdventureOfMine_New_Crystal[1][1][9]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Crystal[1][1][9]["ItemChance"] = 1800
	tAdventureOfMine_New_Crystal[1][1][9]["tItem_1"] = 3315498 --七阶防具配饰神魂礼包碎片，18%
	tAdventureOfMine_New_Crystal[1][1][9]["Attr"] = ""


	
	
local tAdventureOfMine_New_Cuilian = {}
	tAdventureOfMine_New_Cuilian[3008057] = {}
	tAdventureOfMine_New_Cuilian[3008057][1] = {}
	tAdventureOfMine_New_Cuilian[3008057][1]["ItemChanceSum"] = 100000

	tAdventureOfMine_New_Cuilian[3008057][1][1] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][1]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][1]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][1]["Item_1"] = 724404

	tAdventureOfMine_New_Cuilian[3008057][1][2] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][2]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][2]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][2]["Item_1"] = 724409

	tAdventureOfMine_New_Cuilian[3008057][1][3] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][3]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][3]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][3]["Item_1"] = 724414

	tAdventureOfMine_New_Cuilian[3008057][1][4] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][4]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][4]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][4]["Item_1"] = 724419

	tAdventureOfMine_New_Cuilian[3008057][1][5] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][5]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][5]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][5]["Item_1"] = 724424

	tAdventureOfMine_New_Cuilian[3008057][1][6] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][6]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][6]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][6]["Item_1"] = 724429

	tAdventureOfMine_New_Cuilian[3008057][1][7] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][7]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][7]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][7]["Item_1"] = 724434

	tAdventureOfMine_New_Cuilian[3008057][1][8] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][8]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][8]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][8]["Item_1"] = 724439

	tAdventureOfMine_New_Cuilian[3008057][1][9] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][9]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][9]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][9]["Item_1"] = 724444

	tAdventureOfMine_New_Cuilian[3008057][1][10] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][10]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][10]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][10]["Item_1"] = 724453

	tAdventureOfMine_New_Cuilian[3008057][1][11] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][11]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][11]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][11]["Item_1"] = 724458

	tAdventureOfMine_New_Cuilian[3008057][1][12] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][12]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][12]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][12]["Item_1"] = 724463

	tAdventureOfMine_New_Cuilian[3008057][1][13] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][13]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][13]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][13]["Item_1"] = 724472

	tAdventureOfMine_New_Cuilian[3008057][1][14] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][14]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][14]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][14]["Item_1"] = 724477

	tAdventureOfMine_New_Cuilian[3008057][1][15] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][15]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][15]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][15]["Item_1"] = 724482

	tAdventureOfMine_New_Cuilian[3008057][1][16] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][16]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][16]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][16]["Item_1"] = 724487

	tAdventureOfMine_New_Cuilian[3008057][1][17] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][17]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][17]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][17]["Item_1"] = 724492

	tAdventureOfMine_New_Cuilian[3008057][1][18] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][18]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][18]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][18]["Item_1"] = 724497

	tAdventureOfMine_New_Cuilian[3008057][1][19] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][19]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][19]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][19]["Item_1"] = 724352

	tAdventureOfMine_New_Cuilian[3008057][1][20] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][20]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][20]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][20]["Item_1"] = 724357

	tAdventureOfMine_New_Cuilian[3008057][1][21] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][21]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][21]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][21]["Item_1"] = 724362

	tAdventureOfMine_New_Cuilian[3008057][1][22] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][22]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][22]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][22]["Item_1"] = 724367

	tAdventureOfMine_New_Cuilian[3008057][1][23] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][23]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][23]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][23]["Item_1"] = 724372

	tAdventureOfMine_New_Cuilian[3008057][1][24] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][24]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][24]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][24]["Item_1"] = 724377

	tAdventureOfMine_New_Cuilian[3008057][1][25] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][25]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][25]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][25]["Item_1"] = 724384

	tAdventureOfMine_New_Cuilian[3008057][1][26] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][26]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][26]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][26]["Item_1"] = 724389

	tAdventureOfMine_New_Cuilian[3008057][1][27] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][27]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][27]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][27]["Item_1"] = 724394

	tAdventureOfMine_New_Cuilian[3008057][1][28] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][28]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][28]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][28]["Item_1"] = 725196

	tAdventureOfMine_New_Cuilian[3008057][1][29] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][29]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][29]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][29]["Item_1"] = 725201

	tAdventureOfMine_New_Cuilian[3008057][1][30] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][30]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][30]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][30]["Item_1"] = 725206

	tAdventureOfMine_New_Cuilian[3008057][1][31] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][31]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][31]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][31]["Item_1"] = 725211

	tAdventureOfMine_New_Cuilian[3008057][1][32] = {}
	tAdventureOfMine_New_Cuilian[3008057][1][32]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008057][1][32]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008057][1][32]["Item_1"] = 3006169
	
	
	tAdventureOfMine_New_Cuilian[3008058] = {}
	tAdventureOfMine_New_Cuilian[3008058][1] = {}
	tAdventureOfMine_New_Cuilian[3008058][1]["ItemChanceSum"] = 100000

	tAdventureOfMine_New_Cuilian[3008058][1][1] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][1]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][1]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][1]["Item_1"] = 3004137

	tAdventureOfMine_New_Cuilian[3008058][1][2] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][2]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][2]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][2]["Item_1"] = 3004138

	tAdventureOfMine_New_Cuilian[3008058][1][3] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][3]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][3]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][3]["Item_1"] = 3004139

	tAdventureOfMine_New_Cuilian[3008058][1][4] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][4]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][4]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][4]["Item_1"] = 3004140

	tAdventureOfMine_New_Cuilian[3008058][1][5] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][5]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][5]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][5]["Item_1"] = 3004141

	tAdventureOfMine_New_Cuilian[3008058][1][6] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][6]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][6]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][6]["Item_1"] = 3004142

	tAdventureOfMine_New_Cuilian[3008058][1][7] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][7]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][7]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][7]["Item_1"] = 3004143

	tAdventureOfMine_New_Cuilian[3008058][1][8] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][8]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][8]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][8]["Item_1"] = 3004144

	tAdventureOfMine_New_Cuilian[3008058][1][9] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][9]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][9]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][9]["Item_1"] = 3004147

	tAdventureOfMine_New_Cuilian[3008058][1][10] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][10]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][10]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][10]["Item_1"] = 3004148

	tAdventureOfMine_New_Cuilian[3008058][1][11] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][11]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][11]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][11]["Item_1"] = 3004149

	tAdventureOfMine_New_Cuilian[3008058][1][12] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][12]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][12]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][12]["Item_1"] = 3004150

	tAdventureOfMine_New_Cuilian[3008058][1][13] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][13]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][13]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][13]["Item_1"] = 3004151

	tAdventureOfMine_New_Cuilian[3008058][1][14] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][14]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][14]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][14]["Item_1"] = 3004152

	tAdventureOfMine_New_Cuilian[3008058][1][15] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][15]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][15]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][15]["Item_1"] = 3004153

	tAdventureOfMine_New_Cuilian[3008058][1][16] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][16]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][16]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][16]["Item_1"] = 3004156

	tAdventureOfMine_New_Cuilian[3008058][1][17] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][17]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][17]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][17]["Item_1"] = 3004158

	tAdventureOfMine_New_Cuilian[3008058][1][18] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][18]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][18]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][18]["Item_1"] = 3004159

	tAdventureOfMine_New_Cuilian[3008058][1][19] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][19]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][19]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][19]["Item_1"] = 3004160

	tAdventureOfMine_New_Cuilian[3008058][1][20] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][20]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][20]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][20]["Item_1"] = 3004161

	tAdventureOfMine_New_Cuilian[3008058][1][21] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][21]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][21]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][21]["Item_1"] = 3004163

	tAdventureOfMine_New_Cuilian[3008058][1][22] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][22]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][22]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][22]["Item_1"] = 3004164

	tAdventureOfMine_New_Cuilian[3008058][1][23] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][23]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][23]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][23]["Item_1"] = 3004165

	tAdventureOfMine_New_Cuilian[3008058][1][24] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][24]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][24]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][24]["Item_1"] = 3004166

	tAdventureOfMine_New_Cuilian[3008058][1][25] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][25]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][25]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][25]["Item_1"] = 3004136

	tAdventureOfMine_New_Cuilian[3008058][1][26] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][26]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][26]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][26]["Item_1"] = 3004146

	tAdventureOfMine_New_Cuilian[3008058][1][27] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][27]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][27]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][27]["Item_1"] = 3004157

	tAdventureOfMine_New_Cuilian[3008058][1][28] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][28]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][28]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][28]["Item_1"] = 3004155

	tAdventureOfMine_New_Cuilian[3008058][1][29] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][29]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][29]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][29]["Item_1"] = 3004145

	tAdventureOfMine_New_Cuilian[3008058][1][30] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][30]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][30]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][30]["Item_1"] = 3004154

	tAdventureOfMine_New_Cuilian[3008058][1][31] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][31]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][31]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][31]["Item_1"] = 3004162

	tAdventureOfMine_New_Cuilian[3008058][1][32] = {}
	tAdventureOfMine_New_Cuilian[3008058][1][32]["RandomItemChanceType"] = 2
	tAdventureOfMine_New_Cuilian[3008058][1][32]["ItemChance"] = 3125
	tAdventureOfMine_New_Cuilian[3008058][1][32]["Item_1"] = 3006170

-- 300气力值
local tAdventureOfMine_New_Reward = {}
tAdventureOfMine_New_Reward[721536] = {}
tAdventureOfMine_New_Reward[721536]["DeleteItem"] = {}
tAdventureOfMine_New_Reward[721536]["DeleteItem"][1] = {}
tAdventureOfMine_New_Reward[721536]["DeleteItem"][1]["Id"] = 721536
tAdventureOfMine_New_Reward[721536]["DeleteItem"][1]["ItemNum"] = 20
tAdventureOfMine_New_Reward[721536]["RewardStrengthValue"] = {}
tAdventureOfMine_New_Reward[721536]["RewardStrengthValue"]["Value"] = 200
tAdventureOfMine_New_Reward[721536]["LogId"] = 12001101
tAdventureOfMine_New_Reward[721536]["RewardEffect"] = {}
tAdventureOfMine_New_Reward[721536]["RewardEffect"]["Effect"] = "zf2-e128"
	
--------------------------------------- 山中无老虎活动制作(8.25-9.07)------------------------------------------
local tNewYearPromote_GetBanana = {}
	tNewYearPromote_GetBanana["NowTime"] = "2016-08-25 00:00 2016-09-07 23:59"
	tNewYearPromote_GetBanana["EventType"] =141
	tNewYearPromote_GetBanana["DataType"] = 59
	tNewYearPromote_GetBanana["ItemId"] = 3008609
	tNewYearPromote_GetBanana["Log"] = "0,0,0,0,12000302,2,3008609,1"
	tNewYearPromote_GetBanana["Space"] = 1
---------------------------------------逻辑部分-----------------------------------------

function AdventureOfMine_New_ChgMap()
	
	local nUserMapId = Get_UserMapId()
	local nMainCityMapId = tAdventureOfMine_New_Pos["MainCity"][1]
	
	--不在双龙城则不能传送
	if nUserMapId ~= nMainCityMapId then
		User_TalkChannel2005(tAdventureOfMine_New_Text["NotMainCity"])
		return
	end
	
	local nMapId = tAdventureOfMine_New_Const["CGMapId"]
	local nCellx = tAdventureOfMine_New_Const["CGCellx"]
	local nCelly = tAdventureOfMine_New_Const["CGCelly"]
	local nRange = tAdventureOfMine_New_Pos["BoundRange"]
	
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange)
	Sys_MsgBox(tAdventureOfMine_New_Text["ChgmapTip"])

end

--传送到云龙处
function AdventureOfMine_New_TransToYunLong()
	local nUserMapId = Get_UserMapId()
	local nYunmenMapId = tAdventureOfMine_New_Const["CGMapId"]
	
	--不在云门关不能传送回去
	if nUserMapId ~= nYunmenMapId then
		User_TalkChannel2005(tAdventureOfMine_New_Text["NotYunmen"])
		return
	end
	
	local nMapId = tAdventureOfMine_New_Const["YunLMapId"]
	local nCellx = tAdventureOfMine_New_Const["YunLCellx"]
	local nCelly = tAdventureOfMine_New_Const["YunLCelly"]
	local nRange = tAdventureOfMine_New_Pos["BoundRange"]
	
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange)
	
	
end


--义不容辞
function AdventureOfMine_New_AcceptTask(nNpcId)
	
	local nMete = tAdventureOfMine_New_Const["Mete"]
	local nLev = tAdventureOfMine_New_Const["Lev"]
	
	--等级不满足
	if not User_JudgeLevelAndMetempsychosis(nLev,nMete) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	
	if not Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPass"]) then

		if Task_AddTaskDetail(tAdventureOfMine_New_stc["detailPass"]) then
		Task_SetTaskDetailData1(tAdventureOfMine_New_stc["detailPass"],1)
		Task_SetTaskDetailCompleteFlag(tAdventureOfMine_New_stc["detailPass"],0)
		Task_SetTaskDetailData5(tAdventureOfMine_New_stc["detailPass"],1)
		Task_SetTaskDetailData7(tAdventureOfMine_New_stc["detailPass"],os.time())
		else
			return
		end
	end
	--接受任务后前往沙怪处。。
	Sys_MsgBox(tAdventureOfMine_New_Text["Accept_task"],"AdventureOfMine_New_ChgMap")
end

--如果还未接取任务返回true，否则false
function AdventureOfMine_New_CheckTask1Status(nData)
	
	if not Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPass"]) then
		return nData == 0
	end
	
	if Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPass"],"CompleteFlag","==",1) then
		--判断是否隔天,隔天进行掩码重置
		if Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPass"],"6","==",0) then
			Task_SetTaskDetailCompleteFlag(tAdventureOfMine_New_stc["detailPass"],0)
			Task_SetTaskDetailData1(tAdventureOfMine_New_stc["detailPass"],0)
			Task_DelTaskDetail(tAdventureOfMine_New_stc["detailPass"])
			return nData == 0
		end
end
	
	return Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPass"], "1", "==", nData)
end
--领取奖赏
function AdventureOfMine_New_GetReward()
	local nItemDifu = tAdventureOfMine_New_Item["Difu"]
	local nItemWenfu = tAdventureOfMine_New_Item["Wenfu"]
	local nItemTXZ = tAdventureOfMine_New_Item["TongXingZ"]
	local nNpcId = Get_NpcId()
	
	--两个任务玉佩皆存在
	if Item_ChkItem(nItemDifu) and Item_ChkItem(nItemWenfu) then
		if not Item_DelItem(nItemDifu)  then
			return
		end
		if not Item_DelItem(nItemWenfu) then
			return
		end
		if not Item_AddNewItem(nItemTXZ,"") then
			return
		end
		local EfGetPass = tAdventureOfMine_New_Effect["GetPass"]
		User_EffectAdd("self",EfGetPass)
		User_TalkChannel2005(tAdventureOfMine_New_Text["GetPass"])
		local sLog =tAdventureOfMine_New_Log["AwardTXZ"]
		Sys_SaveActionFestivalLog(sLog)
		if Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPass"]) then
			Task_SetTaskDetailData1(tAdventureOfMine_New_stc["detailPass"],2)
			Task_SetTaskDetailCompleteFlag(tAdventureOfMine_New_stc["detailPass"],1)
			Task_SetTaskDetailData6(tAdventureOfMine_New_stc["detailPass"],1)
		end
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		------------------------------------------------------------------------
		-- 获得成就 10009 10109 请随意挖矿吧！ 获得矿洞通行证
		local nAchPos = tAdventureOfMine_New_Achi["AchivementTXZ"]
		local nUserId = Get_UserId()
		if not User_ChkAchByAchPosition(nAchPos,nUserId) then
			User_AddAchByAchPosition(nAchPos,nUserId)
		end
		--------------------------------------------------------------------------
		
		return
	end
		--存在一个任务玉佩
	if Item_ChkItem(nItemDifu) or Item_ChkItem(nItemWenfu) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--不存在任务玉佩
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

--荻府公主 领取玉佩
function AdventureOfMine_New_Princess(nNpcId)
	local nItemDifu = tAdventureOfMine_New_Item["Difu"]
	local nItemWenfu = tAdventureOfMine_New_Item["Wenfu"]
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tAdventureOfMine_New_Text["TaskNoSpace"])
		return
	end
	
	if not Item_AddNewItem(nItemDifu,"") then
		return
	end
	local EfGetYuPei = tAdventureOfMine_New_Effect["GetYuPei"]
	User_EffectAdd("self",EfGetYuPei)
	local sLog = string.format(tAdventureOfMine_New_Log["AwardYuPei"],nItemDifu)
	Sys_SaveActionFestivalLog(sLog)
	
	--领取后，立即移走
	Npc_MoveNpcPos(nNpcId,tAdventureOfMine_New_NpcSetPos[1],tAdventureOfMine_New_NpcSetPos[2],tAdventureOfMine_New_NpcSetPos[3])
	
	local nMapId = tAdventureOfMine_New_Const["YunLMapId"]
	local nCellx = tAdventureOfMine_New_Const["YunLCellx"]
	local nCelly = tAdventureOfMine_New_Const["YunLCelly"]
	local nRange = tAdventureOfMine_New_Pos["BoundRange"]
	
	--两个都存在
	if Item_ChkItem(nItemWenfu) then
		Sys_MsgBox(tAdventureOfMine_New_Text["GetDiWenfu"],"AdventureOfMine_New_TransToYunLong")
		return
	end
	
	--只获得荻府玉佩
	User_TalkChannel2005(tAdventureOfMine_New_Text["OnlyGetDifu"])
end

--文府公子
function AdventureOfMine_New_Childe(nNpcId)
	local nItemDifu = tAdventureOfMine_New_Item["Difu"]
	local nItemWenfu = tAdventureOfMine_New_Item["Wenfu"]
	
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tAdventureOfMine_New_Text["TaskNoSpace"])
	end
	
	if not Item_AddNewItem(nItemWenfu,"") then
		return
	end
	local EfGetYuPei = tAdventureOfMine_New_Effect["GetYuPei"]
	User_EffectAdd("self",EfGetYuPei)
	
	local sLog = string.format(tAdventureOfMine_New_Log["AwardYuPei"],nItemWenfu)
	Sys_SaveActionFestivalLog(sLog)
	
	Npc_MoveNpcPos(nNpcId,tAdventureOfMine_New_NpcSetPos[1],tAdventureOfMine_New_NpcSetPos[2],tAdventureOfMine_New_NpcSetPos[3])
	
	local nMapId = tAdventureOfMine_New_Const["YunLMapId"]
	local nCellx = tAdventureOfMine_New_Const["YunLCellx"]
	local nCelly = tAdventureOfMine_New_Const["YunLCelly"]
	local nRange = tAdventureOfMine_New_Pos["BoundRange"]
	
	--两个都存在
	if Item_ChkItem(nItemDifu) then
		Sys_MsgBox(tAdventureOfMine_New_Text["GetDiWenfu"],"AdventureOfMine_New_TransToYunLong")
		return
	end
	
	User_TalkChannel2005(tAdventureOfMine_New_Text["OnlyGetWenfu"])
end

--进入迷宫第nStep层
function AdventureOfMine_New_EnterTheMine(nStep)
	--第一层记录一下log,且显示任务面板
	if nStep == 1 then
		if not Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPack"]) then
			if Task_AddTaskDetail(tAdventureOfMine_New_stc["detailPack"]) then
				---------------------------------------------------------------------------------
				-- 优化
				-- 判断当前玩家合成宝盒的掩码是否>0
				--锁片和宝盒的ID
				for i = 721533,721536 do
					local nItemId = tAdventureOfMine_New_SToPack[i]
					local nEvent = tAdventureOfMine_New_stc[nItemId]["EventType"]
					local nType = tAdventureOfMine_New_stc[nItemId]["DataType"]
			
					local nCount = Get_UserStatisticValue(nEvent,nType,0) --本周合成宝盒的次数,任务面板显示
					--宝盒每周只能合成3次,没有隔周的情况
					if not Task_StcInterval(nEvent,nType,1,5) then					
						--如果是炫日宝盒
						if nItemId == tAdventureOfMine_New_Item["XuanRiPack"] then
							Task_SetTaskDetailData1(tAdventureOfMine_New_stc["detailPack"],nCount)
						end
						--如果是残月宝盒
						if nItemId == tAdventureOfMine_New_Item["CanYuePack"] then
							Task_SetTaskDetailData2(tAdventureOfMine_New_stc["detailPack"],nCount)
						end
						--如果是繁星宝盒
						if nItemId == tAdventureOfMine_New_Item["FanXingPack"] then
							Task_SetTaskDetailData3(tAdventureOfMine_New_stc["detailPack"],nCount)
						end
						--如果是流云宝盒
						if nItemId == tAdventureOfMine_New_Item["LiuYunPack"] then
							Task_SetTaskDetailData4(tAdventureOfMine_New_stc["detailPack"],nCount)
						end
					end
				end
				--在sql这边还有set time 0
				Task_SetTaskDetailCompleteFlag(tAdventureOfMine_New_stc["detailPack"],0)
				Task_SetTaskDetailData5(tAdventureOfMine_New_stc["detailPack"],1)
				Task_SetTaskDetailData7(tAdventureOfMine_New_stc["detailPack"],os.time())
				
				-- 4种宝盒都合成过3次的情况 任务完成
				if Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPack"],"1","==",3) and Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPack"],"2","==",3) and Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPack"],"3","==",3) and Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPack"],"4","==",3) then
					Task_SetTaskDetailData1(tAdventureOfMine_New_stc["detailPack"],0)
					Task_SetTaskDetailData2(tAdventureOfMine_New_stc["detailPack"],0)
					Task_SetTaskDetailData3(tAdventureOfMine_New_stc["detailPack"],0)
					Task_SetTaskDetailData4(tAdventureOfMine_New_stc["detailPack"],0)
					Task_SetTaskDetailData6(tAdventureOfMine_New_stc["detailPack"],1)
					Task_SetTaskDetailCompleteFlag(tAdventureOfMine_New_stc["detailPack"],1)
					--重置任务面板的显示时间
					Task_SetStatistic(tAdventureOfMine_New_stc["ShowTaskPanel"]["EventType"], tAdventureOfMine_New_stc["ShowTaskPanel"]["DataType"], 1,1)
					Task_SetStcTimestamp(tAdventureOfMine_New_stc["ShowTaskPanel"]["EventType"],tAdventureOfMine_New_stc["ShowTaskPanel"]["DataType"],0)
				end
			end
			---------------------------------------------------------------------------------
		else
			--如果任务已经完成
			if Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPack"],"CompleteFlag","==",1) then
				--判断是否隔天,隔天进行掩码重置
				-- if Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPack"],"6","==",0) then
					-- Task_SetTaskDetailCompleteFlag(tAdventureOfMine_New_stc["detailPack"],0)
					-- Task_SetTaskDetailData5(tAdventureOfMine_New_stc["detailPack"],1)
				-- end
				
				-- 隔周显示面板,6000多段的task_detail掩码（用于日常任务），隔天会自动清data6和时间戳
				--所以用stc码来计时间，判断是否隔周
				local nEvent = tAdventureOfMine_New_stc["ShowTaskPanel"]["EventType"]
				local nType = tAdventureOfMine_New_stc["ShowTaskPanel"]["DataType"]
				if	Task_StcInterval(nEvent, nType,1,5) then
					Task_SetStatistic(nEvent,nType,0,1)
					Task_SetStcTimestamp(nEvent,nType,0)
					Task_SetTaskDetailCompleteFlag(tAdventureOfMine_New_stc["detailPack"],0)
					Task_SetTaskDetailData5(tAdventureOfMine_New_stc["detailPack"],1)
				 end
				 
			end
		end
		
	Sys_SaveActionFestivalLog(tAdventureOfMine_New_Log["EnterMine"][nStep])
	end
	local EfEnter = tAdventureOfMine_New_Effect["EnterMine"]
	User_EffectAdd("self",EfEnter)
	User_RecordPoint(tAdventureOfMine_New_Pos["MainCity"][1],tAdventureOfMine_New_Pos["MainCity"][2],tAdventureOfMine_New_Pos["MainCity"][3])
	
	local nMapId= tAdventureOfMine_New_Pos[nStep][1]
	local nCellx = tAdventureOfMine_New_Pos[nStep][2]
	local nCelly = tAdventureOfMine_New_Pos[nStep][3]
	
	local nRange = tAdventureOfMine_New_Pos["BoundRange"]
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange)
	
	local nUserId = Get_UserId()
	if nUserId == 0 then
		Sys_SaveAbnormalLog("FlagID is 2")
	end
	
	User_TalkChannel2005(tAdventureOfMine_New_Text["EnterFloor"][nStep])
	User_TalkChannel2005(tAdventureOfMine_New_Text["EnterFloor2"][nStep])
end

--回到主城
function AdventureOfMine_New_TPToMainCity()
	local nMapId= tAdventureOfMine_New_Pos["MainCity"][1]
	local nCellx = tAdventureOfMine_New_Pos["MainCity"][2]
	local nCelly = tAdventureOfMine_New_Pos["MainCity"][3]
	local nRange = tAdventureOfMine_New_Pos["BoundRange"]
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange)
	local EfOut = tAdventureOfMine_New_Effect["OutMine"]
	User_EffectAdd("self",EfOut)
end
--我有 天刹令/地魁牌/人遁书
function AdventureOfMine_New_IOwnStaff(nStep)
	local nNpcId = Get_NpcId()
	--不存在令牌
	if not Item_ChkItem(tAdventureOfMine_New_Item["Staff"][nStep-1],1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	if not Item_DelItem(tAdventureOfMine_New_Item["Staff"][nStep-1],1) then
		return
	end
	local sLog = string.format(tAdventureOfMine_New_Log["EnterMine"][nStep],tAdventureOfMine_New_Item["Staff"][nStep-1],1) 
	Sys_SaveActionFestivalLog(sLog)
	AdventureOfMine_New_EnterTheMine(nStep)

	
end
--我有通行证
function AdventureOfMine_New_IOwnTXZ(nStep)
	local nNpcId = Get_NpcId()
	if not Item_ChkItem(tAdventureOfMine_New_Item["TongXingZ"],1) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	if not Item_DelItem(tAdventureOfMine_New_Item["TongXingZ"],1) then
		return
	end
	local sLog = string.format(tAdventureOfMine_New_Log["EnterMine"][nStep],tAdventureOfMine_New_Item["TongXingZ"],1) 
	Sys_SaveActionFestivalLog(sLog)
	AdventureOfMine_New_EnterTheMine(nStep)
	
end
--我是VIP
function AdventureOfMine_New_IAMVIP(nStep)
	local nNpcId = Get_NpcId()
	local nVipLev = Get_UserVip()
	if nVipLev <1 then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	local nEvent = tAdventureOfMine_New_stc[1]["EventType"]
	local nType = tAdventureOfMine_New_stc[1]["DataType"]
	
	local sLog = string.format(tAdventureOfMine_New_Log["EnterMine"][nStep],0,0) 
--判断是否满足vip使用间隔，满足则进入下一层
	--还未曾进入过
	if Task_ChkStcValue(nEvent, nType,"==",0) then
		Task_SetStatistic(nEvent, nType, 1, 1)
		Task_SetStcTimestamp(nEvent,nType, 0)
		
		Sys_SaveActionFestivalLog(sLog)
		AdventureOfMine_New_EnterTheMine(nStep)
		return
	end
	--stctime所记录的时间
	local nStcTime = Get_UserStcTimestampValue(nEvent,nType)
	--当前时间
	local nNowTime = os.time()
	--VIP进入下一层免费间隔时间
	local nInterVal = 86400 *(8-nVipLev)
	--VIP进入下一层还剩下时间
	local nRestTime = nInterVal - (nNowTime-nStcTime)
	
	--<=0 表示可以免费进入
	if nRestTime <= 0 then
		Task_SetStcTimestamp(nEvent, nType, 0)
		Sys_SaveActionFestivalLog(sLog)
		AdventureOfMine_New_EnterTheMine(nStep)
		return
	end
	
	--剩余天数
	local nRestDay = math.floor(nRestTime/86400)
	--剩余小时
	local nRestHour = math.floor(nRestTime/3600)%24
	--剩余分钟
	local nRestMin = math.floor(nRestTime/60)%60
	--剩余秒数
	local nRestSec = nRestTime%60
	
	tNpcGossip[nNpcId]["Text231"]=string.format(tAdventureOfMine_New_Text[nNpcId]["Text231"],nRestDay,nRestHour,nRestMin,nRestSec)
	LinkNpcGossipFunc_New(nNpcId,"2-3")


end


--------怪物死亡逻辑
--四种普通怪 nStep表示第几层
function AdventureOfMine_New_NormalDeath(nMonsterId)

	local nProbTip = tAdventureOfMine_New_Const["ProbTip"]
	local nProbBase = tAdventureOfMine_New_Const["ProbTipBase"]


	--0.5%出引路蜂提示
	if Sys_Random(nProbTip,nProbBase) then
		
		local nUserId = Get_UserId()
		if nUserId == 0 then
			Sys_SaveAbnormalLog("FlagID is 3")
		end
		
		User_TalkChannel2005(tAdventureOfMine_New_Text["KillMonsterBee"])
	end
	
	local nUserMapId =Get_UserMapId()
	--不是最后一层
	if tAdventureOfMine_New_Const["MazeEndId"] ~= nUserMapId then
		if Sys_Random(nProbTip,nProbBase) then
			
			local nUserId = Get_UserId()
			if nUserId == 0 then
				Sys_SaveAbnormalLog("FlagID is 4")
			end
			
			User_TalkChannel2005(tAdventureOfMine_New_Text["KillMonsterPass"][nUserMapId])
		end
	end
	
	--将要塞进背包的物品
	local tBagItem = {}
	
	--重新分配锁片掉落的概率
	
	if Item_ChkMulItem(tAdventureOfMine_New_DropItemProb[nMonsterId][1][1]["Item_1"],tAdventureOfMine_New_DropItemProb[nMonsterId][1][1]["Item_1"],30) then
		tAdventureOfMine_New_DropItemProb[nMonsterId][1][1]["ItemChance"] = tAdventureOfMine_New_ItemSProb[nMonsterId][3]
	elseif Item_ChkMulItem(tAdventureOfMine_New_DropItemProb[nMonsterId][1][1]["Item_1"],tAdventureOfMine_New_DropItemProb[nMonsterId][1][1]["Item_1"],20) then
		tAdventureOfMine_New_DropItemProb[nMonsterId][1][1]["ItemChance"] = tAdventureOfMine_New_ItemSProb[nMonsterId][2]
	else
		tAdventureOfMine_New_DropItemProb[nMonsterId][1][1]["ItemChance"] =tAdventureOfMine_New_ItemSProb[nMonsterId][1]
	end
	
	--重新分配XP药水的概率
	local nItemIdXp =tAdventureOfMine_New_Item["XP"]
	if Item_ChkMulItem(nItemIdXp,nItemIdXp,5) then
		tAdventureOfMine_New_DropItemProb[nMonsterId][1][7]["ItemChance"] = tAdventureOfMine_New_XpProb[nMonsterId][2]
	else
		tAdventureOfMine_New_DropItemProb[nMonsterId][1][7]["ItemChance"] = tAdventureOfMine_New_XpProb[nMonsterId][1]
	end
	
	--重新配置藏宝图掉落概率
	--第一张藏宝图id
	local nMapBeginId= tAdventureOfMine_New_DropItemProb[nMonsterId][1][2]["Item_1"]
	--本层藏宝图种类数量
	local nSort =tAdventureOfMine_New_DropItemProb[nMonsterId][1][2]["Item_Sort"]
	--只要有一个本层藏宝图存在，就不能掉落其他本层藏宝图
	local bExist = false
	for i=nMapBeginId , nMapBeginId+nSort-1 do
		if Item_ChkItem(i) then
				tAdventureOfMine_New_DropItemProb[nMonsterId][1][2]["ItemChance"] = 0
				bExist =true
			break
		end
	end
	--如果不存在，则设置回原来概率
	if bExist == false then
		tAdventureOfMine_New_DropItemProb[nMonsterId][1][2]["ItemChance"] = tAdventureOfMine_New_MapProb[nMonsterId]
	end
	

	--令牌存在即降低概率
	if Item_ChkItem(tAdventureOfMine_New_DropItemProb[nMonsterId][1][8]["Item_1"]) then
		tAdventureOfMine_New_DropItemProb[nMonsterId][1][8]["ItemChance"] = tAdventureOfMine_New_ItemLProb[nMonsterId][2]
	else
		tAdventureOfMine_New_DropItemProb[nMonsterId][1][8]["ItemChance"] = tAdventureOfMine_New_ItemLProb[nMonsterId][1]
	end
	
	--引路蜂存在5个则不掉落引路蜂
	local nItemBeeId = tAdventureOfMine_New_DropItemProb[nMonsterId][1][9]["Item_1"]
	if Item_ChkMulItem(nItemBeeId,nItemBeeId,5) then
		tAdventureOfMine_New_DropItemProb[nMonsterId][1][9]["ItemChance"] = 0
	else
		tAdventureOfMine_New_DropItemProb[nMonsterId][1][9]["ItemChance"] = tAdventureOfMine_New_YinLuProb[nMonsterId]
	end

	
	local flat,tAward = Probabil_RandomAward(tAdventureOfMine_New_DropItemProb[nMonsterId],1)
	
	local nSize = #tAward[1]["tSelfItemChanceAward"] or 0
	if nSize == 0 then
		return
	end
	
	for i,v in pairs(tAward[1]["tSelfItemChanceAward"]) do
		local nItemId = v["Item_1"]
		local nItemDropType = v["Type"]
		local nItemSort = v["Item_Sort"]
		--旋风状态
		if nItemId == 2 then
			local nUserId = Get_UserId()
			local nStatus = tAdventureOfMine_New_Status["Status"]
			local nPower = tAdventureOfMine_New_Status["Power"]
			local nSecs = tAdventureOfMine_New_Status["SecN"]
			local nTimes = tAdventureOfMine_New_Status["Times"]
			local nRemainTime = tAdventureOfMine_New_Status["RemainTimeN"]
			local nEndTime = tAdventureOfMine_New_Status["EndTime"]
			local nRecordable = tAdventureOfMine_New_Status["Recordable"]
			User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
			User_TalkChannel2005(tAdventureOfMine_New_Text["InCyclone"])
		else
			--如果有配置物品种类，则是藏宝图，重新获得id
			if type(nItemSort) == "number" then
				nItemId=nItemId + math.random(1,nItemSort) - 1
			end
			--掉落到地图
			if type(nItemDropType) == "number" then
				--如果是恶之花材料,则二转才可掉落
				if nItemId >= tAdventureOfMine_New_Const["EvilBeginId"] and nItemId <= tAdventureOfMine_New_Const["EvilEndId"] then
					local nUserMete = Get_UserMetempsychosis()
					if nUserMete >= 2 then
						Monster_SysDropItem(nItemId)
					end
				else
					Monster_SysDropItem(nItemId)
				end

				--掉落的是令牌，加文字提示
				if nItemId >= tAdventureOfMine_New_Item["Staff"][1] and nItemId <= tAdventureOfMine_New_Item["Staff"][3] then
					local sDropTip = string.format(tAdventureOfMine_New_Text["KillMonDrop"],Get_ItemtypeName(nItemId))
					User_TalkChannel2005(sDropTip)
				end
			else
				table.insert(tBagItem,nItemId)
			end
		end
	end

	--没有任何塞背包的
	if #tBagItem ==0 then
		return
	end
	
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tAdventureOfMine_New_Text["TaskNoSpace"])
		return
	end
	--对于有背包空间的，至少会塞1个物品，其余物品不塞进去
	for i,v in pairs (tBagItem) do
		if User_CheckLeftSpace(1) then
			if not Item_AddNewItem(v,"") then
				return
			end
			
			--奖励为炫日、残月、繁星、流云锁片时接入黑五狂欢周
			local nBlackItemId = v
			local nNum = 1
			if nBlackItemId == 721533 or nBlackItemId == 721534 or nBlackItemId == 721535 or nBlackItemId == 721536 then 
				BlackFiveCarnivalWeek_LockSheet(nBlackItemId,nNum)
			end 
			
			local sLog = string.format(tAdventureOfMine_New_Log["KillMonster"],v)
			Sys_SaveActionFestivalLog(sLog)
			--获得藏宝图，播光效
			local nTipItemId = v
			--是引路蜂，播放光效
			if v == tAdventureOfMine_New_Item["YinLuFeng"] then
				User_EffectAdd("self",tAdventureOfMine_New_Effect["AwardBee1"])
				User_EffectAdd("self",tAdventureOfMine_New_Effect["AwardBee2"])
			end
			
			--如果是藏宝图
			if v >= tAdventureOfMine_New_Item["CangBaoTu"][1][1] and v <=tAdventureOfMine_New_Item["CangBaoTu"][4][9] then
				User_EffectAdd("self",tAdventureOfMine_New_Effect["AwardMap"])
				nTipItemId= tAdventureOfMine_New_Item["CangBaoTu"][1][1]
			end
			AdventureOfMine_New_AwardItemTip(nTipItemId)
		end
	end
end

--杀怪得到物品提示
function AdventureOfMine_New_AwardItemTip(nItemId)
	if tAdventureOfMine_New_Text["AwardItemTip"][nItemId] ~= nil then
		User_TalkChannel2005(tAdventureOfMine_New_Text["AwardItemTip"][nItemId])
	end
end

--boos 怪掉落
function AdventureOfMine_New_BossDeath(nMonsterId)
	--杀死，即将boss的temp置0
	local nMapId = tAdventureOfMine_New_BossInfo[nMonsterId]["pos"][1][1]
	Sys_SetTempData(1,nMapId,nMonsterId,0)

	--获得物品表
	local tBagItem = {}
	--必定掉5个锁片
	table.insert(tBagItem, tAdventureOfMine_New_DropItemProb[nMonsterId][1][1]["Item_1"])
	--掉落宝盒
	if Sys_Random(tAdventureOfMine_New_DropItemProb[nMonsterId][1][2]["ItemChance"],tAdventureOfMine_New_DropItemProb[nMonsterId][1][2]["ItemSelfChanceSum"]) then
		table.insert(tBagItem,tAdventureOfMine_New_DropItemProb[nMonsterId][1][2]["Item_1"])
	end
	
	--不是最后一层怪，则会掉令牌，可能掉引路蜂
	if nMonsterId ~= tAdventureOfMine_New_Const["LastBossId"] then
		--必定掉落令牌
		local nLItemId= tAdventureOfMine_New_DropItemProb[nMonsterId][1][3]["Item_1"]
		Monster_SysDropItem(nLItemId)
		local sDropTip = string.format(tAdventureOfMine_New_Text["KillMonDrop"],Get_ItemtypeName(nLItemId))
		User_TalkChannel2005(sDropTip)
		--几率得引路蜂
		if not Item_ChkItem(tAdventureOfMine_New_DropItemProb[nMonsterId][1][4]["Item_1"]) then
			if Sys_Random(tAdventureOfMine_New_DropItemProb[nMonsterId][1][4]["ItemChance"],tAdventureOfMine_New_DropItemProb[nMonsterId][1][4]["ItemSelfChanceSum"]) then
				table.insert(tBagItem,tAdventureOfMine_New_DropItemProb[nMonsterId][1][4]["Item_1"])
			end
		end
	end
	
	--没有得到物品
	if #tBagItem ==0 then
		return
	end
	--没有背包空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tAdventureOfMine_New_Text["TaskNoSpace"] )
		return
	end
	--对于有背包空间的，至少会塞1个物品，其余物品不塞进去
	local sAwardDesc = tAdventureOfMine_New_Text["BossDeath"][nMonsterId]
	for i,v in pairs (tBagItem) do
		if User_CheckLeftSpace(1) then
			local sItemName = Get_ItemtypeName(v)
			if i == 1 then
				local sAttr = tAdventureOfMine_New_Attr["FiveS"]
				if not Item_AddNewItem(v,sAttr) then
					return
				end
				
				sAwardDesc=string.format(tGlobalFormat[3],sAwardDesc,tAdventureOfMine_New_Text["TextFive"],sItemName)
			else
				Item_AddNewItem(v,"")
				sAwardDesc=string.format(tGlobalFormat[3],sAwardDesc,tAdventureOfMine_New_Text["TextOne"],sItemName)
			end
			--奖励为炫日、残月、繁星、流云锁片时接入黑五狂欢周
			local nBlackItemId = v
			local nNum = 5
			if nBlackItemId == 721533 or nBlackItemId == 721534 or nBlackItemId == 721535 or nBlackItemId == 721536 then 
				BlackFiveCarnivalWeek_LockSheet(nBlackItemId,nNum)
			end 
		end
	end
	sAwardDesc=string.format(tGlobalFormat[2],sAwardDesc,tAdventureOfMine_New_Text["FullStop"])
	local sLog = string.format(tAdventureOfMine_New_Log["KillBoss"],nMonsterId)
	Sys_SaveActionFestivalLog(sLog)
	User_EffectAdd("self",tAdventureOfMine_New_Effect["KillBoss"])
	User_TalkChannel2005(sAwardDesc)
end

--判断玩家是否在某点范围内
--nRange为范围大小
--返回false 表示不在该地图内
--返回true表示在该区域内
function AdventureOfMine_New_CheckPointRange(nMapId,nCellx,nCelly,nRange)
	local nUserMapId =Get_UserMapId()
	local nUserCellx = Get_UserPositionX()
	local nUserCelly = Get_UserPositionY()
	if nMapId ~= nUserMapId then
		return false
	end
	if nUserCellx >= nCellx-nRange and nUserCellx <= nCellx+nRange and nUserCelly >= nCelly-nRange and nUserCelly <= nCelly+nRange then
		return true
	else
		return false
	end
end

--使用藏宝图
function AdventureOfMine_New_UseMap(nItemId)
	
	local nMapId = tAdventureOfMine_New_MapPos[nItemId]["MapId"]
	local nCellx = tAdventureOfMine_New_MapPos[nItemId]["Cellx"]
	local nCelly = tAdventureOfMine_New_MapPos[nItemId]["Celly"]

	if not AdventureOfMine_New_CheckPointRange(nMapId,nCellx,nCelly,7) then
		--参数1：层数，参数2：x坐标，参数3：y坐标
		local sNotPlace = string.format(tAdventureOfMine_New_Text["MapNotPlace"],nMapId-1350,nCellx,nCelly)
		User_TalkChannel2005(sNotPlace)
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	local nLevel = Get_UserLevel()
	

	local sLog = string.format(tAdventureOfMine_New_Log["UseMapNoExp"],nItemId,tAdventureOfMine_New_MapReward[nItemId]["GetItemId"])
	if nLevel < G_User_MaxLev then
		User_AddExpTime(tAdventureOfMine_New_MapReward[nItemId]["GetExp"])
		sLog = string.format(tAdventureOfMine_New_Log["UseMapWithExp"],nItemId,tAdventureOfMine_New_MapReward[nItemId]["GetItemId"],tAdventureOfMine_New_MapReward[nItemId]["GetExp"])
	end
	
	--增加五个锁片
	local sAttr = tAdventureOfMine_New_Attr["FiveS"]
	if not Item_AddNewItem(tAdventureOfMine_New_MapReward[nItemId]["GetItemId"],sAttr) then
		return
	end
	--奖励为炫日、残月、繁星、流云锁片时接入黑五狂欢周
	local nBlackItemId = tAdventureOfMine_New_MapReward[nItemId]["GetItemId"]
	local nNum = 5
	if nBlackItemId == 721533 or nBlackItemId == 721534 or nBlackItemId == 721535 or nBlackItemId == 721536 then 
		BlackFiveCarnivalWeek_LockSheet(nBlackItemId,nNum)
	end 
	
	
	User_TalkChannel2005(tAdventureOfMine_New_Text["UseMap"][nItemId])
	User_EffectAdd("self",tAdventureOfMine_New_Effect["UseMap"])
	Sys_SaveActionFestivalLog(sLog)
end


--使用XP药水
function AdventureOfMine_New_UseXP(nItemId)
	local nUserMapId =Get_UserMapId()
	
	if nUserMapId <tAdventureOfMine_New_Const["MazeBeginId"] or nUserMapId > tAdventureOfMine_New_Const["MazeEndId"] then
		User_TalkChannel2005(tAdventureOfMine_New_Text["XPNotPlace"])
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	User_AddXp(tAdventureOfMine_New_Const["AddXp"])
	User_TalkChannel2005(tAdventureOfMine_New_Text["UseXP"])
	local sLog = tAdventureOfMine_New_Log["UseXP"]
	Sys_SaveActionFestivalLog(sLog)
	User_EffectAdd("self",tAdventureOfMine_New_Effect["UseXP"])
end

--寻路到本层NPC
function AdventureOfMine_New_FindWayToNPC(nItemId)
	local nUserMapId =Get_UserMapId()
	if nUserMapId <tAdventureOfMine_New_Const["MazeBeginId"] or nUserMapId > tAdventureOfMine_New_Const["MazeEndId"] then
		return
	end
	
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tAdventureOfMine_New_Text["NoBee"])
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	User_EffectAdd("self", tAdventureOfMine_New_Effect["UseYinlu"])
	
	--玩家增加旋风状态
	-- local nUserId = Get_UserId()
	-- local nStatus = tAdventureOfMine_New_Status["Status"]
	-- local nPower = tAdventureOfMine_New_Status["Power"]
	-- local nSecs = tAdventureOfMine_New_Status["Secs"]
	-- local nTimes = tAdventureOfMine_New_Status["Times"]
	-- local nRemainTime = tAdventureOfMine_New_Status["RemainTime"]
	-- local nEndTime = tAdventureOfMine_New_Status["EndTime"]
	-- local nRecordable = tAdventureOfMine_New_Status["Recordable"]
	-- User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
	local sLog = tAdventureOfMine_New_Log["UseBee"]
	Sys_SaveActionFestivalLog(sLog)
	
	Sys_MsgBox(tAdventureOfMine_New_Text["UseYinLu"])
	
	local nRange = tAdventureOfMine_New_Const["NpcRandPos"]["Range"]

	local nCellx = tAdventureOfMine_New_Const["NpcRandPos"][nUserMapId]["Cellx"]
	local nCelly = tAdventureOfMine_New_Const["NpcRandPos"][nUserMapId]["Celly"]
	
	
	--Sys_GotoSomeWhere(tAdventureOfMine_New_NPCPos[nUserMapId][1],tAdventureOfMine_New_NPCPos[nUserMapId][2],nUserMapId,tAdventureOfMine_New_NPCPos[nUserMapId][3])
	User_UserRandBoundTrans(nUserMapId,nCellx,nCelly,nRange,nRange,1)
end

--使用引路蜂
function AdventureOfMine_New_UseYinlufeng(nItemId)

	local nUserMapId =Get_UserMapId()
	if nUserMapId <tAdventureOfMine_New_Const["MazeBeginId"] or nUserMapId > tAdventureOfMine_New_Const["MazeEndId"] then
		User_TalkChannel2005(tAdventureOfMine_New_Text["YinLuNotPlace"])
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end




--使用宝盒
function AdventureOfMine_New_UsePack(nThisItemId)
	local nLevel = Get_UserLevel()
	local nMete = Get_UserMetempsychosis()
	local sLog = ""
	local nLevelTime = 129		--129级分界点

	if not User_JudgeLevelAndMetempsychosis(tAdventureOfMine_New_Const["PackLev"],tAdventureOfMine_New_Const["PackMete"]) then
		local nSpace = 1
		if nLevel <= nLevelTime then
			nSpace = nSpace + 1
		end
		
		-- 2016欧洲杯
		if Sys_ChkFullTime("2016-06-16 00:00 2016-07-16 23:59") and nThisItemId == tAdventureOfMine_New_Item["LiuYunPack"] then
			nSpace = nSpace + 1
		end
		
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(tAdventureOfMine_New_Text["OpenPackNoSpace"])
			return
		end
		
		
		
		local flat,tItem = Probabil_RandomAward(tAdventureOfMine_New_PackProb[nThisItemId],1)
		local nItemId = tItem[1]["tAward"][1]["Item_1"]
		local nZeng = tItem[1]["tAward"][1]["Zeng"] or 0
		local nNum =  tItem[1]["tAward"][1]["Num"] or 1
		local sAwardItemName = Get_ItemtypeName(nItemId)
		local sAttr = tItem[1]["tAward"][1]["NAttr"] or ""
		--追加赠品属性
		if nZeng == tAdventureOfMine_New_Const["Zeng"] then
			sAwardItemName= string.format(tGlobalFormat[2],sAwardItemName,tAdventureOfMine_New_Text["TextBound"])
		end

		if not Item_DelItem(nThisItemId) then
			return
		end
		--140级获得修行值，否则获得经验
		if nLevel == G_User_MaxLev then
			User_AddCultivation(tAdventureOfMine_New_OpenPack[nThisItemId][1]/2)
			if not Item_AddNewItem(nItemId,sAttr) then
				return
			end
			sLog = tAdventureOfMine_New_Log["UsePack"][2]
			sLog=string.format(sLog,nThisItemId,nItemId,tAdventureOfMine_New_OpenPack[nThisItemId][1]/2,nNum)
			Sys_SaveActionFestivalLog(sLog)
			local sAwardTip = string.format(tAdventureOfMine_New_Text["OpenPack"][nThisItemId][2],nNum,sAwardItemName)
			User_TalkChannel2005(sAwardTip)
		else
			local sAwardTip = ""
			if nLevel <= nLevelTime then
				if not Item_AddNewItem(tAdventureOfMine_New_OpenPack[nThisItemId][3],"0 1 0 1440 1") then
					return
				end
				sLog = tAdventureOfMine_New_Log["UsePack"][5]
				sLog = string.format(sLog,nThisItemId,tAdventureOfMine_New_OpenPack[nThisItemId][3],nItemId,nNum)
				sAwardTip = string.format(tAdventureOfMine_New_Text["OpenPack"][nThisItemId][5],nNum,sAwardItemName)
			else
				User_AddExpTime(tAdventureOfMine_New_OpenPack[nThisItemId][1])
				sLog = tAdventureOfMine_New_Log["UsePack"][1]
				sLog = string.format(sLog,nThisItemId,nItemId,tAdventureOfMine_New_OpenPack[nThisItemId][1],nNum)
				sAwardTip = string.format(tAdventureOfMine_New_Text["OpenPack"][nThisItemId][1],nNum,sAwardItemName)
			end
			
			if not Item_AddNewItem(nItemId,sAttr) then
				return
			end

			User_TalkChannel2005(sAwardTip)
		end
	else
		local nSpace = 2
		if nLevel <= nLevelTime then
			nSpace = nSpace + 1
		end
		
		-- 2016欧洲杯
		if Sys_ChkFullTime("2016-06-16 00:00 2016-07-16 23:59") and nThisItemId == tAdventureOfMine_New_Item["LiuYunPack"] then
			nSpace = nSpace + 1
		end
		
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(tAdventureOfMine_New_Text["OpenPackNoSpace"])
			return
		end
		
		local flat,tItem = Probabil_RandomAward(tAdventureOfMine_New_PackProb[nThisItemId],2)
		local nItemId = tItem[1]["tAward"][1]["Item_1"]
		local nZeng = tItem[1]["tAward"][1]["Zeng"] or 0
		local nNum =  tItem[1]["tAward"][1]["Num"] or 1
		local sAttr = tItem[1]["tAward"][1]["NAttr"] or ""
		
		
		--如果是流云宝盒的话，额外再增加判断
		if nThisItemId == tAdventureOfMine_New_Item["LiuYunPack"] then
			--如果已经有日常气力小礼包了，且随机到的是日常气力小礼包，就给通神丹
			if Item_ChkItem(tAdventureOfMine_New_Const["DailyQili"],1) and nItemId == tAdventureOfMine_New_Const["DailyQili"] then
				nItemId = tAdventureOfMine_New_PackProb[nThisItemId][2][1]["Item_1"]
				nNum = tAdventureOfMine_New_PackProb[nThisItemId][2][1]["Num"]
				nZeng = tAdventureOfMine_New_PackProb[nThisItemId][2][1]["Zeng"]
				sAttr = tAdventureOfMine_New_PackProb[nThisItemId][2][1]["NAttr"]
			end
		end
		local sAwardItemName = Get_ItemtypeName(nItemId)
		--追加赠品属性
		if nZeng == tAdventureOfMine_New_Const["Zeng"] then
			sAwardItemName= string.format(tGlobalFormat[2],sAwardItemName,tAdventureOfMine_New_Text["TextBound"])
		end
		if not Item_DelItem(nThisItemId) then
			return
		end
		--140级获得修行值，否则获得经验
		if nLevel == G_User_MaxLev then
			User_AddCultivation(tAdventureOfMine_New_OpenPack[nThisItemId][1]/2)
			if not Item_AddNewItem(tAdventureOfMine_New_OpenPack[nThisItemId][2],"") then
				return
			end
			if not Item_AddNewItem(nItemId,sAttr) then
				return
			end
			sLog = tAdventureOfMine_New_Log["UsePack"][4]
			sLog = string.format(sLog,nThisItemId,nItemId,tAdventureOfMine_New_OpenPack[nThisItemId][1]/2,tAdventureOfMine_New_OpenPack[nThisItemId][2],nNum)
			local sAwardTip = string.format(tAdventureOfMine_New_Text["OpenPack"][nThisItemId][4],nNum,sAwardItemName)
			User_TalkChannel2005(sAwardTip)

		else
			local sAwardTip = ""
			if nLevel <= nLevelTime then
				if not Item_AddNewItem(tAdventureOfMine_New_OpenPack[nThisItemId][3],"0 1 0 1440 1") then
					return
				end
				sLog = tAdventureOfMine_New_Log["UsePack"][6]
				sLog = string.format(sLog,nThisItemId,tAdventureOfMine_New_OpenPack[nThisItemId][3],nItemId,tAdventureOfMine_New_OpenPack[nThisItemId][2],nNum)
				sAwardTip = string.format(tAdventureOfMine_New_Text["OpenPack"][nThisItemId][6],nNum,sAwardItemName)
			else
				User_AddExpTime(tAdventureOfMine_New_OpenPack[nThisItemId][1])
				sLog = tAdventureOfMine_New_Log["UsePack"][3]
				sLog = string.format(sLog,nThisItemId,nItemId,tAdventureOfMine_New_OpenPack[nThisItemId][1],tAdventureOfMine_New_OpenPack[nThisItemId][2],nNum)
				sAwardTip = string.format(tAdventureOfMine_New_Text["OpenPack"][nThisItemId][3],nNum,sAwardItemName)
			end
			
			if not Item_AddNewItem(tAdventureOfMine_New_OpenPack[nThisItemId][2],"") then
				return
			end
			if not Item_AddNewItem(nItemId,sAttr) then
				return
			end

			User_TalkChannel2005(sAwardTip)
		end
	end
	

	--外套仓库，岫山玉
	-- if nThisItemId == tAdventureOfMine_New_Item["LiuYunPack"] then
		-- if not CoatWarehouse_Sale_ActAwardXiuJade() then
			-- return
		-- end
	-- end
	
	-- 2016欧洲杯
	if nThisItemId == tAdventureOfMine_New_Item["LiuYunPack"] then
		EuropeanCup_Promot_RewardItem(1)
	end
	
	Sys_SaveActionFestivalLog(sLog)
	User_EffectAdd("self",tAdventureOfMine_New_Effect["UsePack"])
end



--使用XX结晶
-- 每周前2次使用结晶各可获得阳之玉、6级房屋建材包、岫山玉各2个，
-- 第三次使用获得3种道具各3个（注意岫山玉只有南宫促衣会活动开放时才会获得）
function AdventureOfMine_New_UseJieJing(nThisItemId)
	--结晶是否足够
	for nItemId = tAdventureOfMine_New_Item["JieJing"][1],tAdventureOfMine_New_Item["JieJing"][4] do
		if not Item_ChkItem(nItemId) then
			User_TalkChannel2005(tAdventureOfMine_New_Text["LessJieJing"])
			return
		end
	end
	
	local nEvent = tAdventureOfMine_New_stc["UseJieJing"]["EventType"]
	local nType = tAdventureOfMine_New_stc["UseJieJing"]["DataType"]
	local nCount = Get_UserStatisticValue(nEvent,nType,0) --本周使用结晶的次数
	
	--判断背包空间，新服活动需要更多的背包空间
	local nNeedSpace = 4 --需要的背包空间= 神魂1 + 阳之玉2+房屋1
	local nGloAc = tAdventureOfMine_New_Const["GlobalData"]
	local nDataOpen = Get_SysDynaGlobalData1(nGloAc)
	if nDataOpen == 1 then --新服
		nNeedSpace = nNeedSpace + 2 --新服会额外获得强炼和护心丹
	end
	if Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		nNeedSpace =nNeedSpace + 1 --南宫开放期间
	end
	if (not Task_StcInterval(nEvent, nType,1,5)) and nCount == 2 then
		nNeedSpace =nNeedSpace + 1 --未隔周，每周第3次期间
	end
	--鸡年年兽活动获得 稀有课本随机包,每次合成获得1个
	if Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		nNeedSpace = nNeedSpace +1
	end
	-- 日常得积分
	-- if Sys_ChkFullTime(tDailypoint_Data["ActivetyTime"]) then
		-- if not CommonFunc_ChkGoldServer() then
			-- if (not Task_StcInterval(nEvent, nType,1,5)) and nCount == 2 then
				 -- nNeedSpace = nNeedSpace +1
			-- end	
		-- end
	 -- end
	--新服主题周 每周额外产出部分
	if Sys_ChkFullTime(NewServerWeeks_GetActTime("ActAllTime")) then
		local nWeek = NewServerWeeks_ChkWeekTime()
		nNeedSpace = nNeedSpace + tNewSeverActivity_GetActSpace(1,nWeek)
	end

	if not User_CheckLeftSpace(nNeedSpace) then
		User_TalkChannel2005(string.format(tAdventureOfMine_New_Text["NoSpace"],nNeedSpace))
		return
	end
	
	--判断本周是否可以合成，结晶每周只能合成3次,隔周重新计
	if Task_StcInterval(nEvent, nType,1,5) then
		--隔周了, 第一次使用结晶，掩码置1，重置时间搓
		nCount = 1
		Task_SetStatistic(nEvent, nType, 1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	else
		if not Task_ChkStcValue(nEvent, nType, ">=", 3, 0) then
			nCount = nCount +1
			Task_AddStatistic(nEvent, nType, 1, 1)
			Task_SetStcTimestamp(nEvent,nType,0)
		else
			User_TalkChannel2005(tAdventureOfMine_New_Text["OverTime"])
			return
		end
	end
	
	--删除结晶
	for nItemId = tAdventureOfMine_New_Item["JieJing"][1],tAdventureOfMine_New_Item["JieJing"][4] do
		if not Item_DelItem(nItemId) then
			return
		end
	end
	
	-- 新增----------------------------------------------------------------------------------------------------
	--年兽促销背包判断
	-- 山中无老虎活动制作(8.25-9.07)
	if not User_CheckLeftSpace(tNewYearPromote_GetBanana["Space"]) then
		User_TalkChannel2005(tNewYearPromote_Text[3008588]["NotSpace"])
		return
	end
	------------------------------------------------------------------------------------------------------

	--随机获得神魂
	local flat,tItem = Probabil_RandomAward(tAdventureOfMine_New_Crystal[1],1)
	
	local nAwardItemId = tItem[1]["tAward"][1]["tItem_1"]
	local sAttr = tItem[1]["tAward"][1]["Attr"]
	
	--获得随机神魂
	if not Item_AddNewItem(nAwardItemId,sAttr) then
		return
	end
	
	local nJudeId = tAdventureOfMine_New_Const["JudeYangId"]
	local sJudeAttr = tAdventureOfMine_New_Const["JudeYangAttr"]
	local nAwardCount = (nCount ==3 and  3) or 2 --获得的数量：前2次，2个；第3次，3个
	local sJudeAttr = string.format(tAdventureOfMine_New_Const["JudeYangAttr"],nAwardCount)
	--获得阳之玉
	if not Item_AddNewItem(nJudeId,sJudeAttr) then
		return
	end
	
	local sAwardText = string.format(tAdventureOfMine_New_Text["UseJieJing"],nAwardCount,tAdventureOfMine_New_Text["AwardSoulName"][nAwardItemId])
	User_TalkChannel2005(sAwardText)
	User_EffectAdd("self",tAdventureOfMine_New_Effect["UseJieJing"])
	local sLog = string.format(tAdventureOfMine_New_Log["UseJieJing"],nAwardItemId,nJudeId,nAwardCount)
	Sys_SaveActionFestivalLog(sLog)
	
	-- 新增----------------------------------------------------------------------------------------------------
	-- 年兽促销获得香蕉
	-- 山中无老虎活动制作(8.25-9.07)
	if Sys_ChkFullTime(tNewYearPromote_GetBanana["NowTime"]) then
		if Task_StcInterval(tNewYearPromote_GetBanana["EventType"],tNewYearPromote_GetBanana["DataType"],1,4) then
			Task_SetStatistic(tNewYearPromote_GetBanana["EventType"],tNewYearPromote_GetBanana["DataType"],0,1,0)
			Task_SetStcTimestamp(tNewYearPromote_GetBanana["EventType"],tNewYearPromote_GetBanana["DataType"],0,0)
		end
		if Task_ChkStcValue(tNewYearPromote_GetBanana["EventType"],tNewYearPromote_GetBanana["DataType"],"<",1) then
			Task_SetStatistic(tNewYearPromote_GetBanana["EventType"],tNewYearPromote_GetBanana["DataType"],1,1,0)
			Task_SetStcTimestamp(tNewYearPromote_GetBanana["EventType"],tNewYearPromote_GetBanana["DataType"],0,0)
			Item_AddItem(tNewYearPromote_GetBanana["ItemId"])
			Sys_SaveActionFestivalLog(tNewYearPromote_GetBanana["Log"])
			User_TalkChannel2005(tNewYearPromote_Text["GetBanana"])
		end
	end
	------------------------------------------------------------------------------------------------------
	
	--新服活动额外获得
	AdventureOfMine_New_NewServerAc()
	
	--岫山玉
	-- CoatWarehouse_Sale_ActAwardXiuJade()
	--AdventureOfMine_New_ActAwardXiuJade(nAwardCount)已改成同一个接口
	CoatWarehouse_Zhanchang_ActAwardXiuJade()
	
	--获得随机积分卡
	-- if (not Task_StcInterval(nEvent, nType,1,5)) and nCount == 3 then
		 -- Dailypoint_RewardDraw(5)
	-- end

	--鸡年年兽活动获得 稀有课本随机包,每次合成获得1个
	ItemOutputOfNien_AwardBookRandomPack(1)
	
	----新服主题周 每周额外产出部分
	tNewSeverActivity_GetAward(1)
	
	-- --------新加--------------
	-- if not User_CheckLeftSpace(1) then
		-- User_TalkChannel2005(tTheSixthHouse_Text["FullBag"])
		-- return
	-- end
	
	--获得六级房屋材料
	local nItem =  3008100
	Item_AddNewItem(nItem,string.format("0 %d",nAwardCount))
	local sStr = string.format("0,0,0,0,10003003,2[4],3008100,%d",nAwardCount)   -- 矿洞冒险中获得建材log
	Sys_SaveActionFestivalLog(sStr)
	User_TalkChannel2005(string.format(tAdventureOfMine_New_Text["GetResource"],nAwardCount))

	--获得成就：迷宫也疯狂---2016/02/24 zzs
	local nAchPos = tAdventureOfMine_New_Achi["AchivementMaze"] --成就标识位=position
	local nUserId = Get_UserId()
	if not  User_ChkAchByAchPosition(nAchPos,nUserId) then
		User_AddAchByAchPosition(nAchPos,nUserId)
	end
end

--获得岫山玉,获得的数量：旧服 2,2,3 ，新服 6,6,9
function AdventureOfMine_New_ActAwardXiuJade(nAwardCount)
	local nUserId = nNowUserId or Get_UserId()
	if not Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		return
	end
	
	local nDataAc = tAdventureOfMine_New_Const["GlobalData"]
	--新服时间获得是旧服的3倍
	if Get_SysDynaGlobalData1(nDataAc) > 0 then
		nAwardCount = nAwardCount*3
	end
	
	local sAttr = string.format("0 %d",nAwardCount)
	local nXiuJade = tCoatWarehouse_Sale_Const["ItemId"]["XiuJade"]
	
	if not Item_AddNewItem(nXiuJade,sAttr,nUserId) then
		return
	end
	local sUserTakl = string.gsub(tCoatWarehouse_Sale_Text["AwardXiu"][1],'一',nAwardCount)
	User_TalkChannel2005(sUserTakl,nUserId)
	local sXiuLog = string.format("0,0,0,0,12000286,2,%d,%d",nXiuJade,nAwardCount)
	Sys_SaveActionFestivalLog(sXiuLog,nUserId)

end


--新服活动用,额外获得10颗秘制免费修炼丹，和5颗强效护心丹
function AdventureOfMine_New_NewServerAc()
	-- if not Sys_ChkFullTime(tAdventureOfMine_New_Const["NewSevTime"]) then
		-- return
	-- end
	
	--新服活动
	local nGloAc = tAdventureOfMine_New_Const["GlobalData"]
	local nDataOpen = Get_SysDynaGlobalData1(nGloAc)
	--未开启
	if nDataOpen == 0 then
		return
	end
	
	--秘制免费修炼丹
	local nItem1 = tAdventureOfMine_New_Item["Mizhi"]
	local nItem1Attr = tAdventureOfMine_New_Item["MizhiAttr"]
	--强效护心丹
	local nItem2 = tAdventureOfMine_New_Item["QHuxindan"]
	local nItem2Attr = tAdventureOfMine_New_Item["QHuxindanAttr"]
	
	if not Item_AddNewItem(nItem1,nItem1Attr) then
		return
	end
	
	if not Item_AddNewItem(nItem2,nItem2Attr) then
		return
	end
	
	local sText = tAdventureOfMine_New_Text["NewAcAw"]
	User_TalkChannel2005(sText)
	
	local sLog = tAdventureOfMine_New_Log["NewSeverAc"]
	Sys_SaveActionFestivalLog(sLog)
end

--锁片合成锁片
function AdventureOfMine_New_ToSuoPian(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,3) then
		User_TalkChannel2005(tAdventureOfMine_New_Text[nItemId]["NoNumToS"])
		return
	end
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tAdventureOfMine_New_Text["TaskNoSpace"] )
		return
	end
	if not Item_DelMulItem(nItemId,nItemId,3) then
		return
	end
	if not Item_AddNewItem(nItemId+1,"") then
		return
	end
	User_TalkChannel2005(tAdventureOfMine_New_Text[nItemId]["GetSuoPain"])
	User_EffectAdd("self",tAdventureOfMine_New_Effect["SToS"])
	local sLog = string.format(tAdventureOfMine_New_Log["SToS"],nItemId,nItemId+1)
	Sys_SaveActionFestivalLog(sLog)
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--锁片合成宝盒
function AdventureOfMine_New_ToBaoHe(nItemId)
	--宝盒ID
	local nAddItemId = tAdventureOfMine_New_SToPack[nItemId]
	local nEvent = tAdventureOfMine_New_stc[nAddItemId]["EventType"]
	local nType = tAdventureOfMine_New_stc[nAddItemId]["DataType"]
	
	
	if not Item_ChkMulItem(nItemId,nItemId,17) then
		User_TalkChannel2005(tAdventureOfMine_New_Text[nItemId]["NoNumToP"])
		return
	end
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tAdventureOfMine_New_Text["TaskNoSpace"] )
		return
	end
	
	local nCount = Get_UserStatisticValue(nEvent,nType,0) --本周合成宝盒的次数,任务面板显示
	--宝盒每周只能合成3次,隔周重新计
	if Task_StcInterval(nEvent, nType,1,5) then
		--隔周了, 下面合成了宝石，掩码置1，重置时间搓
		nCount = 1
		Task_SetStatistic(nEvent, nType, 1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	else
		if not Task_ChkStcValue(nEvent, nType, ">=", 3, 0) then
			nCount = nCount +1
			Task_AddStatistic(nEvent, nType, 1, 1)
			Task_SetStcTimestamp(nEvent,nType,0)
		else
			User_TalkChannel2005(tAdventureOfMine_New_Text["AlreadyToPack"])
			return
		end
	end
	
	--如果是炫日宝盒
	if nAddItemId == tAdventureOfMine_New_Item["XuanRiPack"] then
		if Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPack"]) then
			Task_SetTaskDetailData1(tAdventureOfMine_New_stc["detailPack"],nCount)
		end
		Sys_SaveActionFestivalLog(tAdventureOfMine_New_Log["SToXuanRiPack"])
	end
	--如果是残月宝盒
	if nAddItemId == tAdventureOfMine_New_Item["CanYuePack"] then
		if Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPack"]) then
			Task_SetTaskDetailData2(tAdventureOfMine_New_stc["detailPack"],nCount)
		end
		Sys_SaveActionFestivalLog(tAdventureOfMine_New_Log["SToCanYuePack"])
	end
	--如果是繁星宝盒
	if nAddItemId == tAdventureOfMine_New_Item["FanXingPack"] then
		if Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPack"]) then
			Task_SetTaskDetailData3(tAdventureOfMine_New_stc["detailPack"],nCount)
		end
		Sys_SaveActionFestivalLog(tAdventureOfMine_New_Log["SToFanXingPack"])
	end
	--如果是流云宝盒
	if nAddItemId == tAdventureOfMine_New_Item["LiuYunPack"] then
		if Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPack"]) then
			Task_SetTaskDetailData4(tAdventureOfMine_New_stc["detailPack"],nCount)
		end
		Sys_SaveActionFestivalLog(tAdventureOfMine_New_Log["SToLiuYunPack"])
	end
	if Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPack"]) then
		if Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPack"],"1","==",3) and Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPack"],"2","==",3) and Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPack"],"3","==",3) and Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPack"],"4","==",3) then
			Task_SetTaskDetailData1(tAdventureOfMine_New_stc["detailPack"],0)
			Task_SetTaskDetailData2(tAdventureOfMine_New_stc["detailPack"],0)
			Task_SetTaskDetailData3(tAdventureOfMine_New_stc["detailPack"],0)
			Task_SetTaskDetailData4(tAdventureOfMine_New_stc["detailPack"],0)
			Task_SetTaskDetailData6(tAdventureOfMine_New_stc["detailPack"],1)
			Task_SetTaskDetailCompleteFlag(tAdventureOfMine_New_stc["detailPack"],1)
			--重置任务面板的显示时间
			Task_SetStatistic(tAdventureOfMine_New_stc["ShowTaskPanel"]["EventType"], tAdventureOfMine_New_stc["ShowTaskPanel"]["DataType"], 1,1)
			Task_SetStcTimestamp(tAdventureOfMine_New_stc["ShowTaskPanel"]["EventType"],tAdventureOfMine_New_stc["ShowTaskPanel"]["DataType"],0)
		end
	end
	if not Item_DelMulItem(nItemId,nItemId,17) then
		return
	end
	if not Item_AddNewItem(nAddItemId,"") then
		return
	end
	User_TalkChannel2005(tAdventureOfMine_New_Text[nItemId]["GetBaoHe"])
	User_EffectAdd("self",tAdventureOfMine_New_Effect["ToPack"])
	local sLog = string.format(tAdventureOfMine_New_Log["SToPack"],nItemId,nAddItemId)
	Sys_SaveActionFestivalLog(sLog)
	
end

--锁片合成通行证
function AdventureOfMine_New_ToTXZ(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,3) then
		User_TalkChannel2005(tAdventureOfMine_New_Text[nItemId]["NoNumToT"])
		return
	end
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tAdventureOfMine_New_Text["TaskNoSpace"] )
		return
	end
	if not Item_DelMulItem(nItemId,nItemId,3) then
		return
	end
	if not Item_AddNewItem(tAdventureOfMine_New_Item["TongXingZ"],"") then
		return
	end
	User_TalkChannel2005(tAdventureOfMine_New_Text[nItemId]["GetTXZ"])
	User_EffectAdd("self",tAdventureOfMine_New_Effect["SToTXZ"])
	local sLog = tAdventureOfMine_New_Log["SToTXZ"]
	Sys_SaveActionFestivalLog(sLog)
	
	LinkItemGossipFunc_New(nItemId,"1-1")
	------------------------------------------------------------------------
	-- 获得成就 10009 10109 请随意挖矿吧！ 获得矿洞通行证 
	local nAchPos = tAdventureOfMine_New_Achi["AchivementTXZ"]
	local nUserId = Get_UserId()
	if not User_ChkAchByAchPosition(nAchPos,nUserId) then
		User_AddAchByAchPosition(nAchPos,nUserId)
	end	
	--------------------------------------------------------------------------
	
end


--系统自检
--使用TmpData来记录boss是否刷新
function AdventureOfMine_New_SysChk()
	for i,v in pairs(tAdventureOfMine_New_BossInfo) do
		if Get_SysTempData(1,v["pos"][1][1],i) == 0 then
			local nSel = math.random(1,#v["pos"])
			Sys_SetTempData(1,v["pos"][1][1],i,1)
			Monster_AddMonster(v["pos"][nSel][1],v["pos"][nSel][2],v["pos"][nSel][3],v["generatorid"],i)
			local sBossShowUp = tAdventureOfMine_New_Text["BossShowUp"][i]
			Map_SendBroadcastMsg(v["pos"][1][1],string.format(sBossShowUp,v["pos"][nSel][2],v["pos"][nSel][3]))
		end
	end
end

--鬼刃、沙怪死亡
function AdventureOfMine_New_TaskMonDie(nMonsterId)

	--玩家身上无任务，或者不在此任务阶段
	if not Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPass"]) then
		return 
	end
	
	if not Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPass"],"1","==",1) then
		return
	end
	
	local nItemId = tAdventureOfMine_New_MonForItem[nMonsterId]
	
	--如果已经检测到相关任务物品，则不出现NPC
	if Item_ChkItem(nItemId) then
		
		return
	end
	
	local nNpcId = tAdventureOfMine_New_TaskMonDie[nMonsterId]["NpcId"]


	if Sys_Random(20,100) then
		local nUserMapId = Get_UserMapId()
		local nUserCellx = Get_UserPositionX()
		local nUserCelly = Get_UserPositionY()
		--当前地图上已经存在该npc
		if Get_NpcCountByName(tAdventureOfMine_New_TaskMonDie[nMonsterId]["NpcName"]) > 0 then
			User_TalkChannel2005(tAdventureOfMine_New_Text["AlExistNpc"][nNpcId])
			return
		end
		
		Npc_MoveNpcPos(nNpcId,nUserMapId,nUserCellx+2,nUserCelly+2)
		local nCountDown = tAdventureOfMine_New_Const["CountDown"]
		User_SetTimer(nCountDown,"AdventureOfMine_New_TimeEnd</N>"..nMonsterId.."</N>"..nNpcId,1)
		User_TalkChannel2005(tAdventureOfMine_New_Text["Appear"][nNpcId])
	end
end


--30s过去
function AdventureOfMine_New_TimeEnd(nMonsterId,nNpcId,nUserId)
	if Get_NpcCountByName(tAdventureOfMine_New_TaskMonDie[nMonsterId]["NpcName"],nUserId) == 0 then
		return
	end
	Npc_MoveNpcPos(nNpcId,tAdventureOfMine_New_NpcSetPos[1],tAdventureOfMine_New_NpcSetPos[2],tAdventureOfMine_New_NpcSetPos[3])
	local nItemId = tAdventureOfMine_New_NpcForItem[nNpcId]

	
	--如果已经完成任务了
	if not Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPass"],nUserId) then
		return
	end
	
	if Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPass"],"1","==",2,nUserId) then
		return
	end
	
	if not Item_ChkItem(nItemId,1,0,nUserId) then
		User_TalkChannel2005(tAdventureOfMine_New_Text["Disappear"][nNpcId],nUserId)
	end
end


--陷阱传送回双龙城
function AdventureOfMine_New_TransToMain()
	
	
	local nMapId = tAdventureOfMine_New_Pos["MainCity"][1]
	local nBoundX = tAdventureOfMine_New_Pos["MainCity"][2]
	local nBoundY = tAdventureOfMine_New_Pos["MainCity"][3]
	local nRange = tAdventureOfMine_New_Pos["BoundRange"]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,nRange,nRange)
end

--放弃6476任务 矿洞冒险通行证任务
function AdventureOfMine_New_TaskDetailDelete6476()
	--任务不存在
	if not Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPass"]) then
		return
	end
	--任务已完成
	if Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPass"],"CompleteFlag","==",1) then
		return
	end
	
	--荻府玉佩
	local nItemDifu = tAdventureOfMine_New_Item["Difu"]
	--宇文府佩令
	local nItemWenfu = tAdventureOfMine_New_Item["Wenfu"]
	
	--删除任务相关的物品
	if Item_ChkItem(nItemDifu) then
		if not Item_DelItem(nItemDifu) then
			return
		end
	end
	
	if Item_ChkItem(nItemWenfu) then
		if not Item_DelItem(nItemWenfu) then
			return
		end
	end
	
	Task_DelTaskDetail(tAdventureOfMine_New_stc["detailPass"])
	User_TalkChannel2005(tAdventureOfMine_New_Text["DeleteTask6476"])
end

--放弃矿洞冒险任务
function AdventureOfMine_New_TaskDetailDelete6467()
	--任务不存在
	if not Task_ChkTaskDetail(tAdventureOfMine_New_stc["detailPack"]) then
		return
	end
	--任务已完成
	if Task_ChkTaskDetailValue(tAdventureOfMine_New_stc["detailPack"],"CompleteFlag","==",1) then
		return
	end

	Task_DelTaskDetail(tAdventureOfMine_New_stc["detailPack"])
	
	User_TalkChannel2005(tAdventureOfMine_New_Text["DeleteTask6467"])
end


--判断本层藏宝图是否存在
function AdventureOfMine_New_ChkMapExist()
	
	local nUserMapId = Get_UserMapId()
	--不在迷宫
	if nUserMapId <tAdventureOfMine_New_Const["MazeBeginId"] or nUserMapId > tAdventureOfMine_New_Const["MazeEndId"] then
		return false
	end
	
	for i,v in pairs(tAdventureOfMine_New_Item["MapIdToItem"][nUserMapId]) do
		--有该层任意地图
		if Item_ChkItem(v) then
			return true
		end
	end
	
	return false
end


function AdventureOfMine_New_FindWayToMap(nItemId)
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	local nItemId = 0
	
	local nUserMapId = Get_UserMapId()
	--不在迷宫
	if nUserMapId <tAdventureOfMine_New_Const["MazeBeginId"] or nUserMapId > tAdventureOfMine_New_Const["MazeEndId"] then
		return 
	end
	
	--查询存在的物品ID
	for i,v in pairs(tAdventureOfMine_New_Item["MapIdToItem"][nUserMapId]) do
		--有该层任意地图
		if Item_ChkItem(v) then
			nItemId = v
		end
	end

	if nItemId == 0 then
		return
	end
	
	local nMapId = tAdventureOfMine_New_MapPos[nItemId]["MapId"]
	local nCellx = tAdventureOfMine_New_MapPos[nItemId]["Cellx"]
	local nCelly = tAdventureOfMine_New_MapPos[nItemId]["Celly"]
	
	User_EffectAdd("self", tAdventureOfMine_New_Effect["UseYinlu"])
	
	--玩家增加旋风状态
	-- local nUserId = Get_UserId()
	-- local nStatus = tAdventureOfMine_New_Status["Status"]
	-- local nPower = tAdventureOfMine_New_Status["Power"]
	-- local nSecs = tAdventureOfMine_New_Status["Secs"]
	-- local nTimes = tAdventureOfMine_New_Status["Times"]
	-- local nRemainTime = tAdventureOfMine_New_Status["RemainTime"]
	-- local nEndTime = tAdventureOfMine_New_Status["EndTime"]
	-- local nRecordable = tAdventureOfMine_New_Status["Recordable"]
	-- User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
	local sLog = tAdventureOfMine_New_Log["UseBee"]
	Sys_SaveActionFestivalLog(sLog)
	Sys_MsgBox(tAdventureOfMine_New_Text["UseBeeToMap"])
	--Sys_GotoSomeWhere(nCellx,nCelly,nMapId)
	
	local nRange = tAdventureOfMine_New_Const["NpcRandPos"]["Range"]


	
	
	--Sys_GotoSomeWhere(tAdventureOfMine_New_NPCPos[nUserMapId][1],tAdventureOfMine_New_NPCPos[nUserMapId][2],nUserMapId,tAdventureOfMine_New_NPCPos[nUserMapId][3])
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange,1)
	
end


function AdventureOfMine_New_SawengEnter(nNpcId)
	local nMete = tAdventureOfMine_New_Const["Mete"]
	local nLev = tAdventureOfMine_New_Const["Lev"]
	
	--等级不满足
	if not User_JudgeLevelAndMetempsychosis(nLev,nMete) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	AdventureOfMine_New_EnterTheMine(1)

	--矿洞冒险增加副职业修行月令牌
	if nNpcId == 1152 then
		SecondProGrowth_SendTicket(3)
	end

end



--神魂、淬炼礼包选择
function AdventureOfMine_New_SouRefinelSel(nThisItemId,nAwardItemId,sOptionText)
	
	local sOptionText = tAdventureOfMine_New_Text[nThisItemId][sOptionText]
	
	--重设对白文字
	tItem[nThisItemId]["Text411"] = string.format(tAdventureOfMine_New_Text[nThisItemId]["Text411"],sOptionText)
	--重设选项函数
	tItem[nThisItemId]["OptionFunc411"] = "AdventureOfMine_New_SoulRefineAward</N>"..nThisItemId.."</N>"..nAwardItemId
	
	LinkItemGossipFunc_New(nThisItemId,"4-1")
	
	
end

--确认选择获得物品
function AdventureOfMine_New_SoulRefineAward(nThisItemId,nAwardItemId)
	
	if not Item_ChkItem(nThisItemId) then
		User_TalkChannel2005(tAdventureOfMine_New_Text["NoThisItem"])
		return
	end
	
	if not Item_DelItem(nThisItemId) then
		return
	end
	
	if not Item_AddNewItem(nAwardItemId,tAdventureOfMine_New_Const["7Days"]) then
		return
	end
	
	local sLog = string.format(tAdventureOfMine_New_Log["SoulRefine"],nThisItemId,nAwardItemId)
	Sys_SaveActionFestivalLog(sLog)
	
	local sAwardText = string.format(tAdventureOfMine_New_Text["ExchangeSucc"],Get_ItemtypeName(nAwardItemId))
	
	User_TalkChannel2005(sAwardText)
	User_EffectAdd("self",tAdventureOfMine_New_Effect["OpenNewPack"])
end

--使用阴之玉/阳之玉
function AdventureOfMine_New_UseJade(nItemId)
	
	local nAnotherId = tAdventureOfMine_New_Const["AnotherId"][nItemId]
	
	--不存在另外一个
	if not Item_ChkItem(nAnotherId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	end
	
	local nStrenghValueMax = tAdventureOfMine_New_Const["StrenthValueMax"]
	--气力值大等于8000
	if Get_UserStrengthValue() >= nStrenghValueMax then
		User_TalkChannel2005(tAdventureOfMine_New_Text["TooMuchStren"])
		return
	end
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	if not Item_DelItem(nAnotherId) then
		return
	end
	
	local nAwardValue = tAdventureOfMine_New_Const["StrenthVMore"]
	User_AddStrengthValue(nAwardValue)
	User_TalkChannel2005(tAdventureOfMine_New_Text["AwardStrenmore"])
	local sLog = tAdventureOfMine_New_Log["UseTwoJade"]
	User_EffectAdd("self",tAdventureOfMine_New_Effect["UseJade"])
	Sys_SaveActionFestivalLog(sLog)
end

--确认单独使用阴之玉/阳之玉
function AdventureOfMine_New_UseOneJade(nItemId)
	local nStrenghValueMax = tAdventureOfMine_New_Const["StrenthValueMax"]
	--气力值大于8000
	if Get_UserStrengthValue() >= nStrenghValueMax then
		User_TalkChannel2005(tAdventureOfMine_New_Text["TooMuchStren"])
		return
	end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	local nAwardValue = tAdventureOfMine_New_Const["StrenthVless"]
	User_AddStrengthValue(nAwardValue)
	User_TalkChannel2005(tAdventureOfMine_New_Text["AwardStrenless"])
	local sLog = string.format(tAdventureOfMine_New_Log["UseOneJade"],nItemId)
	User_EffectAdd("self",tAdventureOfMine_New_Effect["UseJade"])
	Sys_SaveActionFestivalLog(sLog)

end

--使用淬炼礼包
function AdventureOfMine_New_UseCuilianPack(nItemId,nItemIndex)
	local nMonopoly = 0
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
	end
	
	if not Item_ChkItem(nItemId,nMonopoly) then
		return
	end
	
	if not Item_DelItem(nItemId,nMonopoly) then
		return
	end
	
	local flat,tItem = Probabil_RandomAward(tAdventureOfMine_New_Cuilian[nItemId],1)
	
	local nAwardItemId = tItem[1]["tAward"][1]["Item_1"]
	local sAwardAttr = tAdventureOfMine_New_Const["7Days"]
	if nItemIndex == 2 then
		sAwardAttr = tAdventureOfMine_New_Const["New7Days"]
	end
	
	if not Item_AddNewItem(nAwardItemId,sAwardAttr) then
		return
	end
	
	local sLog = string.format(tAdventureOfMine_New_Log["SoulRefine"],nItemId,nAwardItemId)
	Sys_SaveActionFestivalLog(sLog)
	
	local sMonopoly = tStandardize_RewardPoolProps_Text["Monopoly"][nItemIndex]
	local sAdventureOfMine_Basic = tStandardize_RewardPoolProps_Text["Monopoly"][3]
	local sAdventureOfMine_Text = string.format(sAdventureOfMine_Basic,tAdventureOfMine_New_Text["RefineName"][nAwardItemId],sMonopoly)
	local sAwardText = string.format(tAdventureOfMine_New_Text["ExchangeSucc"],sAdventureOfMine_Text)
	User_TalkChannel2005(sAwardText)
	User_EffectAdd("self",tAdventureOfMine_New_Effect["OpenNewPack"])
	
end

--80000001 玩家pk杀人触发
function AdventureOfMine_New_PlayerPk(nUserId,nTargetId)
	local nUserMapId =Get_UserMapId(nUserId)
	
	if nUserMapId <tAdventureOfMine_New_Const["MazeBeginId"] or nUserMapId > tAdventureOfMine_New_Const["MazeEndId"] then
		return
	end
	
	local nBaseProb = tAdventureOfMine_New_Const["PKAward"]["BaseData"]
	local nAwardItem = tAdventureOfMine_New_Const["PKAward"][nUserMapId]["AwardItem"]
	local nProb = tAdventureOfMine_New_Const["PKAward"][nUserMapId]["Prob"]
	
	--未走到概率
	if not Sys_Random(nProb,nBaseProb) then
		return
	end
	
	if not User_CheckLeftSpace(1,nUserId) then
		return
	end
	--获得物品
	if not Item_AddNewItem(nAwardItem,"",nUserId) then
		return
	end
	
	local sLog = string.format(tAdventureOfMine_New_Log["KillSomeOne"],nAwardItem)
	Sys_SaveActionFestivalLog(sLog,nUserId)
	
	local sAwardItemName = tAdventureOfMine_New_Text["KillItemName"][nAwardItem]
	
	local sText = string.format(tAdventureOfMine_New_Text["KillAward"],sAwardItemName)

	User_TalkChannel2005(sText,nUserId)
end

--活动公告，参加按钮
function AdventureOfMine_New_JoinTheGame()
	local nUserLife = Get_UserLife()
	if nUserLife < 1 then
		return
	end
	
	local nUserMapId =Get_UserMapId()
	
	local bInCity = false
	--在主城和市场
	for i=1,6 do
		if nUserMapId == tAdventureOfMine_New_Const["MapCanTran"][i] then
			bInCity = true
			break
		end
	end
	
	local nMapId = tAdventureOfMine_New_Const["MapCanTran"]["MapId"]
	local nCellx = tAdventureOfMine_New_Const["MapCanTran"]["Cellx"]
	local nCelly = tAdventureOfMine_New_Const["MapCanTran"]["Celly"]
	local nRange = tAdventureOfMine_New_Const["MapCanTran"]["Range"]
	local nNpcId = tAdventureOfMine_New_Const["MapCanTran"]["NpcId"]
	
	--在各大主城，则传送
	if bInCity == true then
		User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange,1)
	else
		Sys_GotoSomeWhere(nCellx,nCelly,nMapId,nNpcId)
	end
	
end


-- 兑换气力值
function AdventureOfMine_New_ExchangStrength(nItemId)
	if not Item_ChkMulItem(nItemId, nItemId, 20) then
		Sys_MsgBox(tOhterNpc_Text["SysMsg"]["NotEnoughNum"])
		return
	end
	
	local nEvent = tAdventureOfMine_New_stc["ExchangeStrength"]["EventType"]
	local nType = tAdventureOfMine_New_stc["ExchangeStrength"]["DataType"]
	if Task_StcInterval(nEvent, nType,1,4) then
		Task_SetStatistic(nEvent, nType, 0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	Task_AddStatistic(nEvent, nType, 1, 1)
	Task_SetStcTimestamp(nEvent, nType, 0)
	
	RewardTemplate_UseItemAndMsg(tAdventureOfMine_New_Reward[nItemId])
end

---------------------------------------npc模块------------------------------------------
-------------npc 云龙


tNpcFace[890] = 31
tNpcGossip[3100] = tNpcGossip[3100] or DefaultNpc:new{}
tNpcGossip[3100]["OptionHidden"] = 1

--未接取任务
tNpcGossip[3100]["Text1-1"] = {111,112}
tNpcGossip[3100]["Text111"] = tAdventureOfMine_New_Text[3100]["Text111"]
tNpcGossip[3100]["Text112"] = tAdventureOfMine_New_Text[3100]["Text112"]
tNpcGossip[3100]["tOption1-1"] = {1,2,3}
tNpcGossip[3100]["ChkFunc1-1"] = function()
	return AdventureOfMine_New_CheckTask1Status(0)
end


--义不容辞
tNpcGossip[3100]["Option1"] = tAdventureOfMine_New_Text[3100]["Option1"]
tNpcGossip[3100]["OptionFunc1"]="AdventureOfMine_New_AcceptTask</N>3100"
--了解活动详情
tNpcGossip[3100]["Option2"] = tAdventureOfMine_New_Text[3100]["Option2"]
tNpcGossip[3100]["OptionPoint2"]="2-1"
--无能为力
tNpcGossip[3100]["Option3"] = tAdventureOfMine_New_Text[3100]["Option3"]

--任务中
tNpcGossip[3100]["Text1-2"] = {121}
tNpcGossip[3100]["Text121"] = tAdventureOfMine_New_Text[3100]["Text121"]
tNpcGossip[3100]["tOption1-2"] = {4,5}
tNpcGossip[3100]["ChkFunc1-2"] = function()
	return AdventureOfMine_New_CheckTask1Status(1)
end
--领取奖赏
tNpcGossip[3100]["Option4"] = tAdventureOfMine_New_Text[3100]["Option4"]
tNpcGossip[3100]["OptionFunc4"]="AdventureOfMine_New_GetReward"
--定不负所托
tNpcGossip[3100]["Option5"] = tAdventureOfMine_New_Text[3100]["Option5"]

--任务完成
--任务中
tNpcGossip[3100]["Text1-3"] = {131}
tNpcGossip[3100]["Text131"] = tAdventureOfMine_New_Text[3100]["Text131"]
tNpcGossip[3100]["tOption1-3"] = {6}
tNpcGossip[3100]["ChkFunc1-3"] = function()
	return AdventureOfMine_New_CheckTask1Status(2)
end
tNpcGossip[3100]["Option6"] = tAdventureOfMine_New_Text[3100]["Option6"]

--活动详情
tNpcGossip[3100]["Text2-1"] = {211,212}
tNpcGossip[3100]["Text211"] = tAdventureOfMine_New_Text[3100]["Text211"]
tNpcGossip[3100]["Text212"] = tAdventureOfMine_New_Text[3100]["Text212"]
tNpcGossip[3100]["tOption2-1"] = {7}
tNpcGossip[3100]["Option7"] = tAdventureOfMine_New_Text[3100]["Option7"]

--玩家选择领取奖赏，但未解救出人质
tNpcGossip[3100]["Text2-2"] = {221}
tNpcGossip[3100]["Text221"] = tAdventureOfMine_New_Text[3100]["Text221"]
tNpcGossip[3100]["tOption2-2"] = {8}
tNpcGossip[3100]["Option8"] = tAdventureOfMine_New_Text[3100]["Option8"]

--玩家选择领取奖赏，但只救出一个人质
tNpcGossip[3100]["Text2-3"] = {231}
tNpcGossip[3100]["Text231"] = tAdventureOfMine_New_Text[3100]["Text231"]
tNpcGossip[3100]["tOption2-3"] = {9}
tNpcGossip[3100]["Option9"] = tAdventureOfMine_New_Text[3100]["Option9"]

--玩家选择领取奖赏，背包满失败
tNpcGossip[3100]["Text2-4"] = {241}
tNpcGossip[3100]["Text241"] = tAdventureOfMine_New_Text[3100]["Text241"]
tNpcGossip[3100]["tOption2-4"] = {10}
tNpcGossip[3100]["Option10"] = tAdventureOfMine_New_Text[3100]["Option10"]

--玩家选择领取奖赏，领取奖赏成功
tNpcGossip[3100]["Text2-5"] = {251}
tNpcGossip[3100]["Text251"] = tAdventureOfMine_New_Text[3100]["Text251"]
tNpcGossip[3100]["tOption2-5"] = {11}
tNpcGossip[3100]["Option11"] = tAdventureOfMine_New_Text[3100]["Option11"]

--玩家选择义不容辞，等级不足
tNpcGossip[3100]["Text2-6"] = {261}
tNpcGossip[3100]["Text261"] = tAdventureOfMine_New_Text[3100]["Text261"]
tNpcGossip[3100]["tOption2-6"] = {12}
tNpcGossip[3100]["Option12"] = tAdventureOfMine_New_Text[3100]["Option12"]



-----------npc 荻府公主
tNpcFace[2750] = 120
tNpcGossip[18855] = tNpcGossip[18855] or DefaultNpc:new{}
tNpcGossip[18855]["OptionHidden"] = 1


tNpcGossip[18855]["Text1-1"] = {111}
tNpcGossip[18855]["Text111"] = tAdventureOfMine_New_Text[18855]["Text111"]
tNpcGossip[18855]["tOption1-1"] = {1}
tNpcGossip[18855]["ChkFunc1-1"] = function()
	return AdventureOfMine_New_CheckTask1Status(0)
end
tNpcGossip[18855]["Option1"] = tAdventureOfMine_New_Text[18855]["Option1"]

tNpcGossip[18855]["Text1-2"] = {121}
tNpcGossip[18855]["Text121"] = tAdventureOfMine_New_Text[18855]["Text121"]
tNpcGossip[18855]["tOption1-2"] = {2}
tNpcGossip[18855]["OptionFunc2"]="AdventureOfMine_New_Princess</N>18855"
tNpcGossip[18855]["ChkFunc1-2"] = function()
	return AdventureOfMine_New_CheckTask1Status(1) and not Item_ChkItem(tAdventureOfMine_New_Item["Difu"])
end
tNpcGossip[18855]["Option2"] = tAdventureOfMine_New_Text[18855]["Option2"]

tNpcGossip[18855]["Text1-3"] = {131}
tNpcGossip[18855]["Text131"] = tAdventureOfMine_New_Text[18855]["Text131"]
tNpcGossip[18855]["tOption1-3"] = {3}
tNpcGossip[18855]["ChkFunc1-3"] = function()
	return AdventureOfMine_New_CheckTask1Status(2) or Item_ChkItem(tAdventureOfMine_New_Item["Difu"])
end
tNpcGossip[18855]["Option3"] = tAdventureOfMine_New_Text[18855]["Option3"]

----------npc 文府公子
tNpcFace[2751] = 29
tNpcGossip[18856] = tNpcGossip[18856] or DefaultNpc:new{}
tNpcGossip[18856]["OptionHidden"] = 1

tNpcGossip[18856]["Text1-1"] = {111}
tNpcGossip[18856]["Text111"] = tAdventureOfMine_New_Text[18856]["Text111"]
tNpcGossip[18856]["tOption1-1"] = {1}
tNpcGossip[18856]["ChkFunc1-1"] = function()
	return AdventureOfMine_New_CheckTask1Status(0)
end
tNpcGossip[18856]["Option1"] = tAdventureOfMine_New_Text[18856]["Option1"]

tNpcGossip[18856]["Text1-2"] = {121}
tNpcGossip[18856]["Text121"] = tAdventureOfMine_New_Text[18856]["Text121"]
tNpcGossip[18856]["tOption1-2"] = {2}
tNpcGossip[18856]["OptionFunc2"]="AdventureOfMine_New_Childe</N>18856"
tNpcGossip[18856]["ChkFunc1-2"] = function()
	return AdventureOfMine_New_CheckTask1Status(1) and not Item_ChkItem(tAdventureOfMine_New_Item["Wenfu"])
end
tNpcGossip[18856]["Option2"] = tAdventureOfMine_New_Text[18856]["Option2"]

tNpcGossip[18856]["Text1-3"] = {131}
tNpcGossip[18856]["Text131"] = tAdventureOfMine_New_Text[18856]["Text131"]
tNpcGossip[18856]["tOption1-3"] = {3}
tNpcGossip[18856]["ChkFunc1-3"] = function()
	return AdventureOfMine_New_CheckTask1Status(2) or Item_ChkItem(tAdventureOfMine_New_Item["Wenfu"])
end
tNpcGossip[18856]["Option3"] = tAdventureOfMine_New_Text[18856]["Option3"]

----------npc 萨翁
tNpcFace[652] = 63
tNpcGossip[1152] = tNpcGossip[1152] or DefaultNpc:new{}
tNpcGossip[1152]["OptionHidden"] = 1

----1级对话
tNpcGossip[1152]["Text1-1"] = {111,112,113}
tNpcGossip[1152]["Text111"] = tAdventureOfMine_New_Text[1152]["Text111"]
tNpcGossip[1152]["Text112"] = tAdventureOfMine_New_Text[1152]["Text112"]
tNpcGossip[1152]["Text113"] = tAdventureOfMine_New_Text[1152]["Text113"]
tNpcGossip[1152]["tOption1-1"] = {1,2,3}
tNpcGossip[1152]["ChkFunc1-1"] = function()
	return true
end
--在下愿意前往迷宫
tNpcGossip[1152]["Option1"] = tAdventureOfMine_New_Text[1152]["Option1"]
tNpcGossip[1152]["OptionFunc1"]="AdventureOfMine_New_SawengEnter</N>1152"
--还请告知详情
tNpcGossip[1152]["Option2"] = tAdventureOfMine_New_Text[1152]["Option2"]
tNpcGossip[1152]["OptionPoint2"]="2-1"

tNpcGossip[1152]["Option3"] = tAdventureOfMine_New_Text[1152]["Option3"]

----了解详情
tNpcGossip[1152]["Text2-1"] = {211,212}
tNpcGossip[1152]["Text211"] = tAdventureOfMine_New_Text[1152]["Text211"]
tNpcGossip[1152]["Text212"] = tAdventureOfMine_New_Text[1152]["Text212"]
tNpcGossip[1152]["tOption2-1"] = {211,4,5,6,7}

tNpcGossip[1152]["Option211"] = tAdventureOfMine_New_Text[1152]["Option211"]
tNpcGossip[1152]["OptionPoint211"]="3-3"

tNpcGossip[1152]["Option4"] = tAdventureOfMine_New_Text[1152]["Option4"]
tNpcGossip[1152]["OptionPoint4"]="3-1"

tNpcGossip[1152]["Option5"] = tAdventureOfMine_New_Text[1152]["Option5"]
tNpcGossip[1152]["OptionPoint5"]="3-2"

tNpcGossip[1152]["Option6"] = tAdventureOfMine_New_Text[1152]["Option6"]
tNpcGossip[1152]["OptionPoint6"]="1-1"

tNpcGossip[1152]["Option7"] = tAdventureOfMine_New_Text[1152]["Option7"]


--等级不足
tNpcGossip[1152]["Text2-2"] = {221}
tNpcGossip[1152]["Text221"] = tAdventureOfMine_New_Text[1152]["Text221"]
tNpcGossip[1152]["tOption2-2"] = {221}

tNpcGossip[1152]["Option221"] = tAdventureOfMine_New_Text[1152]["Option221"]


----查看宝盒奖励
tNpcGossip[1152]["Text3-1"] = {311,312,313,314,315}
tNpcGossip[1152]["Text311"] = tAdventureOfMine_New_Text[1152]["Text311"]
tNpcGossip[1152]["Text312"] = tAdventureOfMine_New_Text[1152]["Text312"]
tNpcGossip[1152]["Text313"] = tAdventureOfMine_New_Text[1152]["Text313"]
tNpcGossip[1152]["Text314"] = tAdventureOfMine_New_Text[1152]["Text314"]
tNpcGossip[1152]["Text315"] = tAdventureOfMine_New_Text[1152]["Text315"]

tNpcGossip[1152]["tOption3-1"] = {8,9}

tNpcGossip[1152]["Option8"] = tAdventureOfMine_New_Text[1152]["Option8"]

tNpcGossip[1152]["Option9"] = tAdventureOfMine_New_Text[1152]["Option9"]
tNpcGossip[1152]["OptionPoint9"]="2-1"

----如何进入迷宫下一层
tNpcGossip[1152]["Text3-2"] = {321,322,323,324,325,326,327}
tNpcGossip[1152]["Text321"] = tAdventureOfMine_New_Text[1152]["Text321"]
tNpcGossip[1152]["Text322"] = tAdventureOfMine_New_Text[1152]["Text322"]
tNpcGossip[1152]["Text323"] = tAdventureOfMine_New_Text[1152]["Text323"]
tNpcGossip[1152]["Text324"] = tAdventureOfMine_New_Text[1152]["Text324"]
tNpcGossip[1152]["Text325"] = tAdventureOfMine_New_Text[1152]["Text325"]
tNpcGossip[1152]["Text326"] = tAdventureOfMine_New_Text[1152]["Text326"]
tNpcGossip[1152]["Text327"] = tAdventureOfMine_New_Text[1152]["Text327"]
tNpcGossip[1152]["tOption3-2"] = {10,11,12}
tNpcGossip[1152]["Option10"] = tAdventureOfMine_New_Text[1152]["Option10"]
tNpcGossip[1152]["Option11"] = tAdventureOfMine_New_Text[1152]["Option11"]
tNpcGossip[1152]["Option12"] = tAdventureOfMine_New_Text[1152]["Option12"]
tNpcGossip[1152]["OptionPoint11"]="4-1"
tNpcGossip[1152]["OptionPoint12"]="2-1"

--如何获得锁片
tNpcGossip[1152]["Text3-3"] = {331,332,333,334,335}
tNpcGossip[1152]["Text331"] = tAdventureOfMine_New_Text[1152]["Text331"]
tNpcGossip[1152]["Text332"] = tAdventureOfMine_New_Text[1152]["Text332"]
tNpcGossip[1152]["Text333"] = tAdventureOfMine_New_Text[1152]["Text333"]
tNpcGossip[1152]["Text334"] = tAdventureOfMine_New_Text[1152]["Text334"]
tNpcGossip[1152]["Text335"] = tAdventureOfMine_New_Text[1152]["Text335"]
tNpcGossip[1152]["tOption3-3"] = {331,332}
tNpcGossip[1152]["Option331"] = tAdventureOfMine_New_Text[1152]["Option331"]
tNpcGossip[1152]["Option332"] = tAdventureOfMine_New_Text[1152]["Option332"]
tNpcGossip[1152]["OptionPoint332"]="2-1"


--VIP特权查询

tNpcGossip[1152]["Text4-1"] = {411,412,413,414,415,416}
tNpcGossip[1152]["Text411"] = tAdventureOfMine_New_Text[1152]["Text411"]
tNpcGossip[1152]["Text412"] = tAdventureOfMine_New_Text[1152]["Text412"]
tNpcGossip[1152]["Text413"] = tAdventureOfMine_New_Text[1152]["Text413"]
tNpcGossip[1152]["Text414"] = tAdventureOfMine_New_Text[1152]["Text414"]
tNpcGossip[1152]["Text415"] = tAdventureOfMine_New_Text[1152]["Text415"]
tNpcGossip[1152]["Text416"] = tAdventureOfMine_New_Text[1152]["Text416"]

tNpcGossip[1152]["tOption4-1"] = {13}







--------NPC 东阁将军
tNpcFace[653] = 31
tNpcGossip[1153] = tNpcGossip[1153] or DefaultNpc:new{}
tNpcGossip[1153]["OptionHidden"] = 1

----1级对话
tNpcGossip[1153]["Text1-1"] = {111}
tNpcGossip[1153]["Text111"] = tAdventureOfMine_New_Text[1153]["Text111"]
tNpcGossip[1153]["tOption1-1"] = {1,2,3,4,5}
tNpcGossip[1153]["ChkFunc1-1"] = function()
	return true
end
--我有天刹令
tNpcGossip[1153]["Option1"] = tAdventureOfMine_New_Text[1153]["Option1"]
tNpcGossip[1153]["OptionFunc1"]="AdventureOfMine_New_IOwnStaff</N>2"

--我有通行证
tNpcGossip[1153]["Option2"] = tAdventureOfMine_New_Text[1153]["Option2"]
tNpcGossip[1153]["OptionFunc2"]="AdventureOfMine_New_IOwnTXZ</N>2"

--VIP免费进入下一层
tNpcGossip[1153]["Option3"] = tAdventureOfMine_New_Text[1153]["Option3"]
tNpcGossip[1153]["OptionFunc3"]="AdventureOfMine_New_IAMVIP</N>2"

--离开迷宫
tNpcGossip[1153]["Option4"] = tAdventureOfMine_New_Text[1153]["Option4"]
tNpcGossip[1153]["OptionPoint4"]="2-5"

--我还是再看看
tNpcGossip[1153]["Option5"] = tAdventureOfMine_New_Text[1153]["Option5"]

--我有天刹令->没有天刹令
tNpcGossip[1153]["Text2-1"] = {211}
tNpcGossip[1153]["Text211"] = tAdventureOfMine_New_Text[1153]["Text211"]
tNpcGossip[1153]["tOption2-1"] = {6}
tNpcGossip[1153]["Option6"] = tAdventureOfMine_New_Text[1153]["Option6"]

--我有通行证->没有通行证
tNpcGossip[1153]["Text2-2"] = {221}
tNpcGossip[1153]["Text221"] = tAdventureOfMine_New_Text[1153]["Text221"]
tNpcGossip[1153]["tOption2-2"] = {7}
tNpcGossip[1153]["Option7"] = tAdventureOfMine_New_Text[1153]["Option7"]

--我是VIP->小于免费进入间隔时间
tNpcGossip[1153]["Text2-3"] = {231}
tNpcGossip[1153]["Text231"] = tAdventureOfMine_New_Text[1153]["Text231"]
tNpcGossip[1153]["tOption2-3"] = {8}
tNpcGossip[1153]["Option8"] = tAdventureOfMine_New_Text[1153]["Option8"]

--我是VIP->不是VIP
tNpcGossip[1153]["Text2-4"] = {241}
tNpcGossip[1153]["Text241"] = tAdventureOfMine_New_Text[1153]["Text241"]
tNpcGossip[1153]["tOption2-4"] = {9}
tNpcGossip[1153]["Option9"] = tAdventureOfMine_New_Text[1153]["Option9"]

--离开迷宫->二次确认
tNpcGossip[1153]["Text2-5"] = {251}
tNpcGossip[1153]["Text251"] = tAdventureOfMine_New_Text[1153]["Text251"]
tNpcGossip[1153]["tOption2-5"] = {10}
tNpcGossip[1153]["Option10"] = tAdventureOfMine_New_Text[1153]["Option10"]
tNpcGossip[1153]["OptionFunc10"]="AdventureOfMine_New_TPToMainCity"

--------NPC 西亭将军
tNpcFace[654] = 31
tNpcGossip[1154] = tNpcGossip[1154] or DefaultNpc:new{}
tNpcGossip[1154]["OptionHidden"] = 1

----1级对话
tNpcGossip[1154]["Text1-1"] = {111}
tNpcGossip[1154]["Text111"] = tAdventureOfMine_New_Text[1154]["Text111"]
tNpcGossip[1154]["tOption1-1"] = {1,2,3,4,5}
tNpcGossip[1154]["ChkFunc1-1"] = function()
	return true
end
--我有天刹令
tNpcGossip[1154]["Option1"] = tAdventureOfMine_New_Text[1154]["Option1"]
tNpcGossip[1154]["OptionFunc1"]="AdventureOfMine_New_IOwnStaff</N>3"

--我有通行证
tNpcGossip[1154]["Option2"] = tAdventureOfMine_New_Text[1154]["Option2"]
tNpcGossip[1154]["OptionFunc2"]="AdventureOfMine_New_IOwnTXZ</N>3"

--VIP免费进入下一层
tNpcGossip[1154]["Option3"] = tAdventureOfMine_New_Text[1154]["Option3"]
tNpcGossip[1154]["OptionFunc3"]="AdventureOfMine_New_IAMVIP</N>3"

--离开迷宫
tNpcGossip[1154]["Option4"] = tAdventureOfMine_New_Text[1154]["Option4"]
tNpcGossip[1154]["OptionPoint4"]="2-5"

--我还是再看看
tNpcGossip[1154]["Option5"] = tAdventureOfMine_New_Text[1154]["Option5"]

--我有天刹令->没有天刹令
tNpcGossip[1154]["Text2-1"] = {211}
tNpcGossip[1154]["Text211"] = tAdventureOfMine_New_Text[1154]["Text211"]
tNpcGossip[1154]["tOption2-1"] = {6}
tNpcGossip[1154]["Option6"] = tAdventureOfMine_New_Text[1154]["Option6"]

--我有通行证->没有通行证
tNpcGossip[1154]["Text2-2"] = {221}
tNpcGossip[1154]["Text221"] = tAdventureOfMine_New_Text[1154]["Text221"]
tNpcGossip[1154]["tOption2-2"] = {7}
tNpcGossip[1154]["Option7"] = tAdventureOfMine_New_Text[1154]["Option7"]

--我是VIP->小于免费进入间隔时间
tNpcGossip[1154]["Text2-3"] = {231}
tNpcGossip[1154]["Text231"] = tAdventureOfMine_New_Text[1154]["Text231"]
tNpcGossip[1154]["tOption2-3"] = {8}
tNpcGossip[1154]["Option8"] = tAdventureOfMine_New_Text[1154]["Option8"]

--我是VIP->不是VIP
tNpcGossip[1154]["Text2-4"] = {241}
tNpcGossip[1154]["Text241"] = tAdventureOfMine_New_Text[1154]["Text241"]
tNpcGossip[1154]["tOption2-4"] = {9}
tNpcGossip[1154]["Option9"] = tAdventureOfMine_New_Text[1154]["Option9"]

--离开迷宫->二次确认
tNpcGossip[1154]["Text2-5"] = {251}
tNpcGossip[1154]["Text251"] = tAdventureOfMine_New_Text[1154]["Text251"]
tNpcGossip[1154]["tOption2-5"] = {10}
tNpcGossip[1154]["Option10"] = tAdventureOfMine_New_Text[1154]["Option10"]
tNpcGossip[1154]["OptionFunc10"]="AdventureOfMine_New_TPToMainCity"




--------NPC 南苑将军
tNpcFace[655] = 31

tNpcGossip[1155] = tNpcGossip[1155] or DefaultNpc:new{}
tNpcGossip[1155]["OptionHidden"] = 1

----1级对话
tNpcGossip[1155]["Text1-1"] = {111}
tNpcGossip[1155]["Text111"] = tAdventureOfMine_New_Text[1155]["Text111"]
tNpcGossip[1155]["tOption1-1"] = {1,2,3,4,5}
tNpcGossip[1155]["ChkFunc1-1"] = function()
	return true
end
--我有天刹令
tNpcGossip[1155]["Option1"] = tAdventureOfMine_New_Text[1155]["Option1"]
tNpcGossip[1155]["OptionFunc1"]="AdventureOfMine_New_IOwnStaff</N>4"

--我有通行证
tNpcGossip[1155]["Option2"] = tAdventureOfMine_New_Text[1155]["Option2"]
tNpcGossip[1155]["OptionFunc2"]="AdventureOfMine_New_IOwnTXZ</N>4"

--VIP免费进入下一层
tNpcGossip[1155]["Option3"] = tAdventureOfMine_New_Text[1155]["Option3"]
tNpcGossip[1155]["OptionFunc3"]="AdventureOfMine_New_IAMVIP</N>4"

--离开迷宫
tNpcGossip[1155]["Option4"] = tAdventureOfMine_New_Text[1155]["Option4"]
tNpcGossip[1155]["OptionPoint4"]="2-5"

--我还是再看看
tNpcGossip[1155]["Option5"] = tAdventureOfMine_New_Text[1155]["Option5"]

--我有天刹令->没有天刹令
tNpcGossip[1155]["Text2-1"] = {211}
tNpcGossip[1155]["Text211"] = tAdventureOfMine_New_Text[1155]["Text211"]
tNpcGossip[1155]["tOption2-1"] = {6}
tNpcGossip[1155]["Option6"] = tAdventureOfMine_New_Text[1155]["Option6"]

--我有通行证->没有通行证
tNpcGossip[1155]["Text2-2"] = {221}
tNpcGossip[1155]["Text221"] = tAdventureOfMine_New_Text[1155]["Text221"]
tNpcGossip[1155]["tOption2-2"] = {7}
tNpcGossip[1155]["Option7"] = tAdventureOfMine_New_Text[1155]["Option7"]

--我是VIP->小于免费进入间隔时间
tNpcGossip[1155]["Text2-3"] = {231}
tNpcGossip[1155]["Text231"] = tAdventureOfMine_New_Text[1155]["Text231"]
tNpcGossip[1155]["tOption2-3"] = {8}
tNpcGossip[1155]["Option8"] = tAdventureOfMine_New_Text[1155]["Option8"]

--我是VIP->不是VIP
tNpcGossip[1155]["Text2-4"] = {241}
tNpcGossip[1155]["Text241"] = tAdventureOfMine_New_Text[1155]["Text241"]
tNpcGossip[1155]["tOption2-4"] = {9}
tNpcGossip[1155]["Option9"] = tAdventureOfMine_New_Text[1155]["Option9"]

--离开迷宫->二次确认
tNpcGossip[1155]["Text2-5"] = {251}
tNpcGossip[1155]["Text251"] = tAdventureOfMine_New_Text[1155]["Text251"]
tNpcGossip[1155]["tOption2-5"] = {10}
tNpcGossip[1155]["Option10"] = tAdventureOfMine_New_Text[1155]["Option10"]
tNpcGossip[1155]["OptionFunc10"]="AdventureOfMine_New_TPToMainCity"




--------NPC 北斋将军
tNpcFace[656] = 31
tNpcGossip[1156] = tNpcGossip[1156] or DefaultNpc:new{}
tNpcGossip[1156]["OptionHidden"] = 1
tNpcGossip[1156]["ChkFunc1-1"] = function()
	return true
end

tNpcGossip[1156]["Text1-1"] = {111}
tNpcGossip[1156]["Text111"] = tAdventureOfMine_New_Text[1156]["Text111"]
tNpcGossip[1156]["tOption1-1"] = {1,2}
--我想回城
tNpcGossip[1156]["Option1"] = tAdventureOfMine_New_Text[1156]["Option1"]
tNpcGossip[1156]["OptionPoint1"]="2-1"

--我想再看看
tNpcGossip[1156]["Option2"] = tAdventureOfMine_New_Text[1156]["Option2"]

tNpcGossip[1156]["Text2-1"] = {211}
tNpcGossip[1156]["Text211"] = tAdventureOfMine_New_Text[1156]["Text211"]
tNpcGossip[1156]["tOption2-1"] = {3}
tNpcGossip[1156]["Option3"] = tAdventureOfMine_New_Text[1156]["Option3"]
tNpcGossip[1156]["OptionFunc3"]="AdventureOfMine_New_TPToMainCity"









-----------------------------------------------怪物模块-------------------------------------------

-- 3141 晶奴
tMonster[3141] = tMonster[3141] or {}
tMonster[3141]["tFunction"] = tMonster[3141]["tFunction"] or {}
table.insert(tMonster[3141]["tFunction"],AdventureOfMine_New_NormalDeath)

-- 3142 臾鬼
tMonster[3142] = tMonster[3142] or {}
tMonster[3142]["tFunction"] = tMonster[3142]["tFunction"] or {}
table.insert(tMonster[3142]["tFunction"],AdventureOfMine_New_NormalDeath)

-- 3143 夷光
tMonster[3143] = tMonster[3143] or {}
tMonster[3143]["tFunction"] = tMonster[3143]["tFunction"] or {}
table.insert(tMonster[3143]["tFunction"],AdventureOfMine_New_BossDeath)

-- 3144 修罗斩
tMonster[3144] = tMonster[3144] or {}
tMonster[3144]["tFunction"] = tMonster[3144]["tFunction"] or {}
table.insert(tMonster[3144]["tFunction"],AdventureOfMine_New_NormalDeath)

-- 3145 灵鼠
tMonster[3145] = tMonster[3145] or {}
tMonster[3145]["tFunction"] = tMonster[3145]["tFunction"] or {}
table.insert(tMonster[3145]["tFunction"],AdventureOfMine_New_NormalDeath)

-- 3146 玄兜
tMonster[3146] = tMonster[3146] or {}
tMonster[3146]["tFunction"] = tMonster[3146]["tFunction"] or {}
table.insert(tMonster[3146]["tFunction"],AdventureOfMine_New_BossDeath)

-- 3147 火鹫
tMonster[3147] = tMonster[3147] or {}
tMonster[3147]["tFunction"] = tMonster[3147]["tFunction"] or {}
table.insert(tMonster[3147]["tFunction"],AdventureOfMine_New_NormalDeath)

-- 3148 蝠獍
tMonster[3148] = tMonster[3148] or {}
tMonster[3148]["tFunction"] = tMonster[3148]["tFunction"] or {}
table.insert(tMonster[3148]["tFunction"],AdventureOfMine_New_NormalDeath)

-- 3149 厉爪
tMonster[3149] = tMonster[3149] or {}
tMonster[3149]["tFunction"] = tMonster[3149]["tFunction"] or {}
table.insert(tMonster[3149]["tFunction"],AdventureOfMine_New_BossDeath)

-- 3155 牛精
tMonster[3155] = tMonster[3155] or {}
tMonster[3155]["tFunction"] = tMonster[3155]["tFunction"] or {}
table.insert(tMonster[3155]["tFunction"],AdventureOfMine_New_NormalDeath)

-- 3156 瑶姬
tMonster[3156] = tMonster[3156] or {}
tMonster[3156]["tFunction"] = tMonster[3156]["tFunction"] or {}
table.insert(tMonster[3156]["tFunction"],AdventureOfMine_New_BossDeath)


-- 14 沙怪
tMonster[14] = tMonster[14] or {}
tMonster[14]["tFunction"] = tMonster[14]["tFunction"] or {}
table.insert(tMonster[14]["tFunction"],AdventureOfMine_New_TaskMonDie)

-- 17 鬼刃
tMonster[17] = tMonster[17] or {}
tMonster[17]["tFunction"] = tMonster[17]["tFunction"] or {}
table.insert(tMonster[17]["tFunction"],AdventureOfMine_New_TaskMonDie)

------------------------------------------物品模块---------------------------------------------

--藏宝图 
tItem[3007504] = tItem[3007504] or {}
tItem[3007504]["Function"] = function(nItemId, sItemName)
	AdventureOfMine_New_UseMap(nItemId)
end
tItem[3007505] =tItem[3007504]
tItem[3007506] =tItem[3007504] 

tItem[3007507] = tItem[3007504]
tItem[3007508] = tItem[3007504]
tItem[3007509] = tItem[3007504] 
tItem[3007510] = tItem[3007504]
tItem[3007511] = tItem[3007504] 

tItem[3007512] = tItem[3007504]
tItem[3007513] = tItem[3007504]
tItem[3007514] = tItem[3007504] 
tItem[3007515] = tItem[3007504]
tItem[3007516] = tItem[3007504] 
tItem[3007517] = tItem[3007504] 
tItem[3007518] = tItem[3007504]

tItem[3007519] = tItem[3007504]
tItem[3007520] = tItem[3007504]
tItem[3007521] = tItem[3007504] 
tItem[3007522] = tItem[3007504]
tItem[3007523] = tItem[3007504] 
tItem[3007524] = tItem[3007504] 
tItem[3007525] = tItem[3007504]
tItem[3007526] = tItem[3007504] 
tItem[3007527] = tItem[3007504]



--矿洞迷宫XP药水
tItem[3007529] = tItem[3007529] or {}
tItem[3007529]["Function"] = function(nItemId, sItemName)
	AdventureOfMine_New_UseXP(nItemId)
end

--XX宝盒
tItem[3007530] = tItem[3007530] or {}
tItem[3007530]["Function"] = function(nItemId, sItemName)
	AdventureOfMine_New_UsePack(nItemId)
end

tItem[3007531] = tItem[3007530]
tItem[3007532] = tItem[3007530]
tItem[3007533] = tItem[3007530]

--XX结晶
tItem[3007534] = tItem[3007534] or {}
tItem[3007534]["Function"] = function(nItemId, sItemName)
	AdventureOfMine_New_UseJieJing(nItemId)
end
tItem[3007535] = tItem[3007534]
tItem[3007536] = tItem[3007534]
tItem[3007537] = tItem[3007534]



--引路蜂
tItem[3007528] = tItem[3007528] or {}
tItem[3007528]["Function"] = function(nItemId, sItemName)
	AdventureOfMine_New_UseYinlufeng(nItemId)
end


tItem[3007528]["Text1-1"] = {111}
tItem[3007528]["Text111"] = tAdventureOfMine_New_Text[3007528]["Text111"]
tItem[3007528]["tOption1-1"] = {1,2,3}

--立即前往
tItem[3007528]["Option1"] = tAdventureOfMine_New_Text[3007528]["Option1"]
tItem[3007528]["OptionFunc1"]="AdventureOfMine_New_FindWayToNPC</N>3007528"
tItem[3007528]["Option2"] = tAdventureOfMine_New_Text[3007528]["Option2"]
tItem[3007528]["OptionChkFunc2"] =function()
	return AdventureOfMine_New_ChkMapExist()
end
tItem[3007528]["OptionFunc2"]="AdventureOfMine_New_FindWayToMap</N>3007528"
--取消
tItem[3007528]["Option3"] = tAdventureOfMine_New_Text[3007528]["Option3"]


--炫日锁片
tItem[721533] = tItem[721533] or {}
tItem[721533]["Text1-1"] = {111}
tItem[721533]["Text111"] = tAdventureOfMine_New_Text[721533]["Text111"]
tItem[721533]["tOption1-1"] = {2,1,3}

tItem[721533]["Option1"] = tAdventureOfMine_New_Text[721533]["Option1"]
tItem[721533]["OptionFunc1"]="AdventureOfMine_New_ToSuoPian</N>721533"
tItem[721533]["Option2"] = tAdventureOfMine_New_Text[721533]["Option2"]
tItem[721533]["OptionFunc2"]="AdventureOfMine_New_ToBaoHe</N>721533"
tItem[721533]["Option3"] = tAdventureOfMine_New_Text[721533]["Option3"]

--残月锁片
tItem[721534] = tItem[721534] or {}
tItem[721534]["Text1-1"] = {111}
tItem[721534]["Text111"] = tAdventureOfMine_New_Text[721534]["Text111"]
tItem[721534]["tOption1-1"] = {2,1,3}

tItem[721534]["Option1"] = tAdventureOfMine_New_Text[721534]["Option1"]
tItem[721534]["OptionFunc1"]="AdventureOfMine_New_ToSuoPian</N>721534"
tItem[721534]["Option2"] = tAdventureOfMine_New_Text[721534]["Option2"]
tItem[721534]["OptionFunc2"]="AdventureOfMine_New_ToBaoHe</N>721534"
tItem[721534]["Option3"] = tAdventureOfMine_New_Text[721534]["Option3"]

--繁星锁片
tItem[721535] = tItem[721535] or {}
tItem[721535]["Text1-1"] = {111}
tItem[721535]["Text111"] = tAdventureOfMine_New_Text[721535]["Text111"]
tItem[721535]["tOption1-1"] = {2,1,3}

tItem[721535]["Option1"] = tAdventureOfMine_New_Text[721535]["Option1"]
tItem[721535]["OptionFunc1"]="AdventureOfMine_New_ToSuoPian</N>721535"
tItem[721535]["Option2"] = tAdventureOfMine_New_Text[721535]["Option2"]
tItem[721535]["OptionFunc2"]="AdventureOfMine_New_ToBaoHe</N>721535"
tItem[721535]["Option3"] = tAdventureOfMine_New_Text[721535]["Option3"]

--流云锁片
tItem[721536] = tItem[721536] or {}
tItem[721536]["Text1-1"] = {111}
tItem[721536]["Text111"] = tAdventureOfMine_New_Text[721536]["Text111"]
tItem[721536]["tOption1-1"] = {2,1,6,3}

tItem[721536]["Option1"] = tAdventureOfMine_New_Text[721536]["Option1"]
tItem[721536]["OptionFunc1"]="AdventureOfMine_New_ToTXZ</N>721536"
tItem[721536]["Option2"] = tAdventureOfMine_New_Text[721536]["Option2"]
tItem[721536]["OptionFunc2"]="AdventureOfMine_New_ToBaoHe</N>721536"
tItem[721536]["Option6"] = tAdventureOfMine_New_Text[721536]["Option6"]
tItem[721536]["OptionFunc6"]="AdventureOfMine_New_ExchangStrength</N>721536"
tItem[721536]["OptionChkFunc6"] = function ()
	local nEvent = tAdventureOfMine_New_stc["ExchangeStrength"]["EventType"]
	local nType = tAdventureOfMine_New_stc["ExchangeStrength"]["DataType"]
	if Task_StcInterval(nEvent, nType,1,4) then
		Task_SetStatistic(nEvent, nType, 0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	if Task_ChkStcValue(nEvent, nType, ">=", 10) then
		return false
	end
	return true
end
tItem[721536]["Option3"] = tAdventureOfMine_New_Text[721536]["Option3"]

-----------------------------------------------20151207新增物品内容--------------------------------------


--四阶神魂礼包
--第一页
tItem[3008051] = tItem[3008051] or {}

tItem[3008051]["Text1-1"] = {111}
tItem[3008051]["Text111"] = tAdventureOfMine_New_Text[3008051]["Text111"]
tItem[3008051]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3008051]["Option111"] = tAdventureOfMine_New_Text[3008051]["Option111"]
tItem[3008051]["OptionFunc111"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>800014</S>Option111"
tItem[3008051]["Option112"] = tAdventureOfMine_New_Text[3008051]["Option112"]
tItem[3008051]["OptionFunc112"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>800015</S>Option112"
tItem[3008051]["Option113"] = tAdventureOfMine_New_Text[3008051]["Option113"]
tItem[3008051]["OptionFunc113"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>800214</S>Option113"
tItem[3008051]["Option114"] = tAdventureOfMine_New_Text[3008051]["Option114"]
tItem[3008051]["OptionFunc114"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>800613</S>Option114"
tItem[3008051]["Option115"] = tAdventureOfMine_New_Text[3008051]["Option115"]
tItem[3008051]["OptionFunc115"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>800913</S>Option115"
tItem[3008051]["Option116"] = tAdventureOfMine_New_Text[3008051]["Option116"]
tItem[3008051]["OptionFunc116"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>800803</S>Option116"
tItem[3008051]["Option117"] = tAdventureOfMine_New_Text[3008051]["Option117"]
tItem[3008051]["OptionPoint117"]="2-1"
tItem[3008051]["Option118"] = tAdventureOfMine_New_Text[3008051]["Option118"]


--第二页
tItem[3008051]["Text2-1"] = {211}
tItem[3008051]["Text211"] = tAdventureOfMine_New_Text[3008051]["Text211"]
tItem[3008051]["tOption2-1"] = {211,212,213,214,215,216,217,218}
tItem[3008051]["Option211"] = tAdventureOfMine_New_Text[3008051]["Option211"]
tItem[3008051]["OptionFunc211"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>800808</S>Option211"
tItem[3008051]["Option212"] = tAdventureOfMine_New_Text[3008051]["Option212"]
tItem[3008051]["OptionFunc212"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>800720</S>Option212"
tItem[3008051]["Option213"] = tAdventureOfMine_New_Text[3008051]["Option213"]
tItem[3008051]["OptionFunc213"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>800016</S>Option213"
tItem[3008051]["Option214"] = tAdventureOfMine_New_Text[3008051]["Option214"]
tItem[3008051]["OptionFunc214"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>800253</S>Option214"
tItem[3008051]["Option215"] = tAdventureOfMine_New_Text[3008051]["Option215"]
tItem[3008051]["OptionFunc215"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>800512</S>Option215"
tItem[3008051]["Option216"] = tAdventureOfMine_New_Text[3008051]["Option216"]
tItem[3008051]["OptionFunc216"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>801002</S>Option216"
tItem[3008051]["Option217"] = tAdventureOfMine_New_Text[3008051]["Option217"]
tItem[3008051]["OptionPoint217"] = "1-1"
tItem[3008051]["Option218"] = tAdventureOfMine_New_Text[3008051]["Option218"]
tItem[3008051]["OptionPoint218"]="3-1"

--第三页
tItem[3008051]["Text3-1"] = {311}
tItem[3008051]["Text311"] = tAdventureOfMine_New_Text[3008051]["Text311"]
tItem[3008051]["tOption3-1"] = {311,312,313,314,317,318,315,316}
tItem[3008051]["Option311"] = tAdventureOfMine_New_Text[3008051]["Option311"]
tItem[3008051]["OptionFunc311"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>801102</S>Option311"
tItem[3008051]["Option312"] = tAdventureOfMine_New_Text[3008051]["Option312"]
tItem[3008051]["OptionFunc312"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>823052</S>Option312"
tItem[3008051]["Option313"] = tAdventureOfMine_New_Text[3008051]["Option313"]
tItem[3008051]["OptionFunc313"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>823053</S>Option313"
tItem[3008051]["Option314"] = tAdventureOfMine_New_Text[3008051]["Option314"]
tItem[3008051]["OptionFunc314"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>823054</S>Option314"
tItem[3008051]["Option317"] = tAdventureOfMine_New_Text[3008051]["Option317"]
tItem[3008051]["OptionFunc317"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>801208</S>Option317"
tItem[3008051]["Option318"] = tAdventureOfMine_New_Text[3008051]["Option318"]
tItem[3008051]["OptionFunc318"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>801210</S>Option318"
tItem[3008051]["Option315"] = tAdventureOfMine_New_Text[3008051]["Option315"]
tItem[3008051]["OptionPoint315"] = "2-1"
tItem[3008051]["Option316"] = tAdventureOfMine_New_Text[3008051]["Option316"]
tItem[3008051]["OptionPoint316"]="5-1"

--第四页
tItem[3008051]["Text5-1"] = {511}
tItem[3008051]["Text511"] = tAdventureOfMine_New_Text[3008051]["Text511"]
tItem[3008051]["tOption5-1"] = {511,514,515,512,513}
tItem[3008051]["Option511"] = tAdventureOfMine_New_Text[3008051]["Option511"]
tItem[3008051]["OptionFunc511"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>801304</S>Option511"
tItem[3008051]["Option514"] = tAdventureOfMine_New_Text[3008051]["Option514"]
tItem[3008051]["OptionFunc514"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>827004</S>Option514"
tItem[3008051]["Option515"] = tAdventureOfMine_New_Text[3008051]["Option515"]
tItem[3008051]["OptionFunc515"] = "AdventureOfMine_New_SouRefinelSel</N>3008051</N>827005</S>Option515"



tItem[3008051]["Option512"] = tAdventureOfMine_New_Text[3008051]["Option512"]
tItem[3008051]["OptionPoint512"] = "3-1"
tItem[3008051]["Option513"] = tAdventureOfMine_New_Text[3008051]["Option513"]

tItem[3008051]["Text4-1"] = {411}
tItem[3008051]["Text411"] = tAdventureOfMine_New_Text[3008051]["Text411"]
tItem[3008051]["tOption4-1"] = {411,412}
tItem[3008051]["Option411"] = tAdventureOfMine_New_Text[3008051]["Option411"]
tItem[3008051]["OptionFunc411"] = "AdventureOfMine_New_SoulRefineAward</N>3008051</N>801102"
tItem[3008051]["Option412"] = tAdventureOfMine_New_Text[3008051]["Option412"]



--五阶神魂礼包
tItem[3008052] = tItem[3008052] or {}

tItem[3008052]["Text1-1"] = {111}
tItem[3008052]["Text111"] = tAdventureOfMine_New_Text[3008052]["Text111"]
tItem[3008052]["tOption1-1"] = {111,112,113,114,115,116}
tItem[3008052]["Option111"] = tAdventureOfMine_New_Text[3008052]["Option111"]
tItem[3008052]["OptionFunc111"] = "AdventureOfMine_New_SouRefinelSel</N>3008052</N>820056</S>Option111"
tItem[3008052]["Option112"] = tAdventureOfMine_New_Text[3008052]["Option112"]
tItem[3008052]["OptionFunc112"] = "AdventureOfMine_New_SouRefinelSel</N>3008052</N>820057</S>Option112"
tItem[3008052]["Option113"] = tAdventureOfMine_New_Text[3008052]["Option113"]
tItem[3008052]["OptionFunc113"] = "AdventureOfMine_New_SouRefinelSel</N>3008052</N>800415</S>Option113"
tItem[3008052]["Option114"] = tAdventureOfMine_New_Text[3008052]["Option114"]
tItem[3008052]["OptionFunc114"] = "AdventureOfMine_New_SouRefinelSel</N>3008052</N>821030</S>Option114"
tItem[3008052]["Option115"] = tAdventureOfMine_New_Text[3008052]["Option115"]
tItem[3008052]["OptionFunc115"] = "AdventureOfMine_New_SouRefinelSel</N>3008052</N>821028</S>Option115"
tItem[3008052]["Option116"] = tAdventureOfMine_New_Text[3008052]["Option116"]


tItem[3008052]["Text4-1"] = {411}
tItem[3008052]["Text411"] = tAdventureOfMine_New_Text[3008052]["Text411"]
tItem[3008052]["tOption4-1"] = {411,412}
tItem[3008052]["Option411"] = tAdventureOfMine_New_Text[3008052]["Option411"]
tItem[3008052]["OptionFunc411"] = "AdventureOfMine_New_SoulRefineAward</N>3008052</N>801102"
tItem[3008052]["Option412"] = tAdventureOfMine_New_Text[3008052]["Option412"]



--六阶武器神魂礼包
tItem[3008053] = tItem[3008053] or {}

tItem[3008053]["Text1-1"] = {111}
tItem[3008053]["Text111"] = tAdventureOfMine_New_Text[3008053]["Text111"]
tItem[3008053]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3008053]["Option111"] = tAdventureOfMine_New_Text[3008053]["Option111"]
tItem[3008053]["OptionFunc111"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>800000</S>Option111"
tItem[3008053]["Option112"] = tAdventureOfMine_New_Text[3008053]["Option112"]
tItem[3008053]["OptionFunc112"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>800110</S>Option112"
tItem[3008053]["Option113"] = tAdventureOfMine_New_Text[3008053]["Option113"]
tItem[3008053]["OptionFunc113"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>800320</S>Option113"
tItem[3008053]["Option114"] = tAdventureOfMine_New_Text[3008053]["Option114"]
tItem[3008053]["OptionFunc114"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>800616</S>Option114"
tItem[3008053]["Option115"] = tAdventureOfMine_New_Text[3008053]["Option115"]
tItem[3008053]["OptionFunc115"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>800916</S>Option115"
tItem[3008053]["Option116"] = tAdventureOfMine_New_Text[3008053]["Option116"]
tItem[3008053]["OptionFunc116"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>800809</S>Option116"
tItem[3008053]["Option117"] = tAdventureOfMine_New_Text[3008053]["Option117"]
tItem[3008053]["OptionPoint117"] = "2-1"
tItem[3008053]["Option118"] = tAdventureOfMine_New_Text[3008053]["Option118"]


tItem[3008053]["Text2-1"] = {211}
tItem[3008053]["Text211"] = tAdventureOfMine_New_Text[3008053]["Text211"]
tItem[3008053]["tOption2-1"] = {211,212,213,214,215,216,217,218}
tItem[3008053]["Option211"] = tAdventureOfMine_New_Text[3008053]["Option211"]
tItem[3008053]["OptionFunc211"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>800804</S>Option211"
tItem[3008053]["Option212"] = tAdventureOfMine_New_Text[3008053]["Option212"]
tItem[3008053]["OptionFunc212"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>800722</S>Option212"
tItem[3008053]["Option213"] = tAdventureOfMine_New_Text[3008053]["Option213"]
tItem[3008053]["OptionFunc213"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>800017</S>Option213"
tItem[3008053]["Option214"] = tAdventureOfMine_New_Text[3008053]["Option214"]
tItem[3008053]["OptionFunc214"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>800254</S>Option214"
tItem[3008053]["Option215"] = tAdventureOfMine_New_Text[3008053]["Option215"]
tItem[3008053]["OptionFunc215"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>800513</S>Option215"
tItem[3008053]["Option216"] = tAdventureOfMine_New_Text[3008053]["Option216"]
tItem[3008053]["OptionFunc216"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>800421</S>Option216"
tItem[3008053]["Option217"] = tAdventureOfMine_New_Text[3008053]["Option217"]
tItem[3008053]["OptionPoint217"] = "1-1"
tItem[3008053]["Option218"] = tAdventureOfMine_New_Text[3008053]["Option218"]
tItem[3008053]["OptionPoint218"] = "3-1"

tItem[3008053]["Text3-1"] = {311}
tItem[3008053]["Text311"] = tAdventureOfMine_New_Text[3008053]["Text311"]
tItem[3008053]["tOption3-1"] = {311,312,315,316,317,318,313,314}
tItem[3008053]["Option311"] = tAdventureOfMine_New_Text[3008053]["Option311"]
tItem[3008053]["OptionFunc311"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>801003</S>Option311"
tItem[3008053]["Option312"] = tAdventureOfMine_New_Text[3008053]["Option312"]
tItem[3008053]["OptionFunc312"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>801103</S>Option312"
tItem[3008053]["Option315"] = tAdventureOfMine_New_Text[3008053]["Option315"]
tItem[3008053]["OptionFunc315"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>801212</S>Option315"
tItem[3008053]["Option316"] = tAdventureOfMine_New_Text[3008053]["Option316"]
tItem[3008053]["OptionFunc316"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>801214</S>Option316"
tItem[3008053]["Option317"] = tAdventureOfMine_New_Text[3008053]["Option317"]
tItem[3008053]["OptionFunc317"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>801306</S>Option317"
tItem[3008053]["Option318"] = tAdventureOfMine_New_Text[3008053]["Option318"]
tItem[3008053]["OptionFunc318"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>827006</S>Option318"

tItem[3008053]["Option313"] = tAdventureOfMine_New_Text[3008053]["Option313"]
tItem[3008053]["OptionPoint313"] = "2-1"
tItem[3008053]["Option314"] = tAdventureOfMine_New_Text[3008053]["Option314"]
tItem[3008053]["OptionPoint314"] = "5-1"

tItem[3008053]["Text5-1"] = {311}
tItem[3008053]["Text511"] = tAdventureOfMine_New_Text[3008053]["Text311"]
tItem[3008053]["tOption5-1"] = {511,512,513,514,515}
tItem[3008053]["Option511"] = tAdventureOfMine_New_Text[3008053]["Option511"]
tItem[3008053]["OptionFunc511"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>827007</S>Option511"
tItem[3008053]["Option512"] = tAdventureOfMine_New_Text[3008053]["Option512"]
tItem[3008053]["OptionFunc512"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>827008</S>Option512"
tItem[3008053]["Option513"] = tAdventureOfMine_New_Text[3008053]["Option513"]
tItem[3008053]["OptionFunc513"] = "AdventureOfMine_New_SouRefinelSel</N>3008053</N>827009</S>Option513"

tItem[3008053]["Option514"] = tAdventureOfMine_New_Text[3008053]["Option514"]
tItem[3008053]["OptionPoint514"] = "3-1"
tItem[3008053]["Option515"] = tAdventureOfMine_New_Text[3008053]["Option515"]



tItem[3008053]["Text4-1"] = {411}
tItem[3008053]["Text411"] = tAdventureOfMine_New_Text[3008053]["Text411"]
tItem[3008053]["tOption4-1"] = {411,412}
tItem[3008053]["Option411"] = tAdventureOfMine_New_Text[3008053]["Option411"]
tItem[3008053]["OptionFunc411"] = "AdventureOfMine_New_SoulRefineAward</N>3008053</N>801102"
tItem[3008053]["Option412"] = tAdventureOfMine_New_Text[3008053]["Option412"]


--六阶防具神魂礼包
tItem[3008054] = tItem[3008054] or {}

tItem[3008054]["Text1-1"] = {111}
tItem[3008054]["Text111"] = tAdventureOfMine_New_Text[3008054]["Text111"]
tItem[3008054]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3008054]["Option111"] = tAdventureOfMine_New_Text[3008054]["Option111"]
tItem[3008054]["OptionFunc111"] = "AdventureOfMine_New_SouRefinelSel</N>3008054</N>822053</S>Option111"
tItem[3008054]["Option112"] = tAdventureOfMine_New_Text[3008054]["Option112"]
tItem[3008054]["OptionFunc112"] = "AdventureOfMine_New_SouRefinelSel</N>3008054</N>822055</S>Option112"
tItem[3008054]["Option113"] = tAdventureOfMine_New_Text[3008054]["Option113"]
tItem[3008054]["OptionFunc113"] = "AdventureOfMine_New_SouRefinelSel</N>3008054</N>820071</S>Option113"
tItem[3008054]["Option114"] = tAdventureOfMine_New_Text[3008054]["Option114"]
tItem[3008054]["OptionFunc114"] = "AdventureOfMine_New_SouRefinelSel</N>3008054</N>820072</S>Option114"
tItem[3008054]["Option115"] = tAdventureOfMine_New_Text[3008054]["Option115"]
tItem[3008054]["OptionFunc115"] = "AdventureOfMine_New_SouRefinelSel</N>3008054</N>824017</S>Option115"
tItem[3008054]["Option116"] = tAdventureOfMine_New_Text[3008054]["Option116"]
tItem[3008054]["OptionFunc116"] = "AdventureOfMine_New_SouRefinelSel</N>3008054</N>823055</S>Option116"
tItem[3008054]["Option117"] = tAdventureOfMine_New_Text[3008054]["Option117"]
tItem[3008054]["OptionPoint117"] = "2-1"
tItem[3008054]["Option118"] = tAdventureOfMine_New_Text[3008054]["Option118"]

tItem[3008054]["Text2-1"] = {211}
tItem[3008054]["Text211"] = tAdventureOfMine_New_Text[3008054]["Text211"]
tItem[3008054]["tOption2-1"] = {211,212,213,214,215,216}
tItem[3008054]["Option211"] = tAdventureOfMine_New_Text[3008054]["Option211"]
tItem[3008054]["OptionFunc211"] = "AdventureOfMine_New_SouRefinelSel</N>3008054</N>823057</S>Option211"
tItem[3008054]["Option212"] = tAdventureOfMine_New_Text[3008054]["Option212"]
tItem[3008054]["OptionFunc212"] = "AdventureOfMine_New_SouRefinelSel</N>3008054</N>823056</S>Option212"
tItem[3008054]["Option213"] = tAdventureOfMine_New_Text[3008054]["Option213"]
tItem[3008054]["OptionFunc213"] = "AdventureOfMine_New_SouRefinelSel</N>3008054</N>821032</S>Option213"
tItem[3008054]["Option214"] = tAdventureOfMine_New_Text[3008054]["Option214"]
tItem[3008054]["OptionFunc214"] = "AdventureOfMine_New_SouRefinelSel</N>3008054</N>821031</S>Option214"
tItem[3008054]["Option215"] = tAdventureOfMine_New_Text[3008054]["Option215"]
tItem[3008054]["OptionPoint215"] = "1-1"
tItem[3008054]["Option216"] = tAdventureOfMine_New_Text[3008054]["Option216"]

tItem[3008054]["Text4-1"] = {411}
tItem[3008054]["Text411"] = tAdventureOfMine_New_Text[3008054]["Text411"]
tItem[3008054]["tOption4-1"] = {411,412}
tItem[3008054]["Option411"] = tAdventureOfMine_New_Text[3008054]["Option411"]
tItem[3008054]["OptionFunc411"] = "AdventureOfMine_New_SoulRefineAward</N>3008054</N>801102"
tItem[3008054]["Option412"] = tAdventureOfMine_New_Text[3008054]["Option412"]


--七阶武器神魂礼包
tItem[3008055] = tItem[3008055] or {}

tItem[3008055]["Text1-1"] = {111}
tItem[3008055]["Text111"] = tAdventureOfMine_New_Text[3008055]["Text111"]
tItem[3008055]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3008055]["Option111"] = tAdventureOfMine_New_Text[3008055]["Option111"]
tItem[3008055]["OptionFunc111"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>800020</S>Option111"
tItem[3008055]["Option112"] = tAdventureOfMine_New_Text[3008055]["Option112"]
tItem[3008055]["OptionFunc112"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>800111</S>Option112"
tItem[3008055]["Option113"] = tAdventureOfMine_New_Text[3008055]["Option113"]
tItem[3008055]["OptionFunc113"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>800215</S>Option113"
tItem[3008055]["Option114"] = tAdventureOfMine_New_Text[3008055]["Option114"]
tItem[3008055]["OptionFunc114"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>800811</S>Option114"
tItem[3008055]["Option115"] = tAdventureOfMine_New_Text[3008055]["Option115"]
tItem[3008055]["OptionFunc115"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>800810</S>Option115"
tItem[3008055]["Option116"] = tAdventureOfMine_New_Text[3008055]["Option116"]
tItem[3008055]["OptionFunc116"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>800142</S>Option116"
tItem[3008055]["Option117"] = tAdventureOfMine_New_Text[3008055]["Option117"]
tItem[3008055]["OptionPoint117"] = "2-1"
tItem[3008055]["Option118"] = tAdventureOfMine_New_Text[3008055]["Option118"]

tItem[3008055]["Text2-1"] = {211}
tItem[3008055]["Text211"] = tAdventureOfMine_New_Text[3008055]["Text211"]
tItem[3008055]["tOption2-1"] = {211,212,213,214,215,216,217,218}
tItem[3008055]["Option211"] = tAdventureOfMine_New_Text[3008055]["Option211"]
tItem[3008055]["OptionFunc211"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>800917</S>Option211"
tItem[3008055]["Option212"] = tAdventureOfMine_New_Text[3008055]["Option212"]
tItem[3008055]["OptionFunc212"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>800255</S>Option212"
tItem[3008055]["Option213"] = tAdventureOfMine_New_Text[3008055]["Option213"]
tItem[3008055]["OptionFunc213"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>800422</S>Option213"
tItem[3008055]["Option214"] = tAdventureOfMine_New_Text[3008055]["Option214"]
tItem[3008055]["OptionFunc214"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>800522</S>Option214"
tItem[3008055]["Option215"] = tAdventureOfMine_New_Text[3008055]["Option215"]
tItem[3008055]["OptionFunc215"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>800618</S>Option215"
tItem[3008055]["Option216"] = tAdventureOfMine_New_Text[3008055]["Option216"]
tItem[3008055]["OptionFunc216"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>800725</S>Option216"
tItem[3008055]["Option217"] = tAdventureOfMine_New_Text[3008055]["Option217"]
tItem[3008055]["OptionPoint217"] = "1-1"
tItem[3008055]["Option218"] = tAdventureOfMine_New_Text[3008055]["Option218"]
tItem[3008055]["OptionPoint218"] = "3-1"

tItem[3008055]["Text3-1"] = {311}
tItem[3008055]["Text311"] = tAdventureOfMine_New_Text[3008055]["Text311"]
tItem[3008055]["tOption3-1"] = {311,312,315,316,317,318,313,314}
tItem[3008055]["Option311"] = tAdventureOfMine_New_Text[3008055]["Option311"]
tItem[3008055]["OptionFunc311"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>801004</S>Option311"
tItem[3008055]["Option312"] = tAdventureOfMine_New_Text[3008055]["Option312"]
tItem[3008055]["OptionFunc312"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>801104</S>Option312"
tItem[3008055]["Option315"] = tAdventureOfMine_New_Text[3008055]["Option315"]
tItem[3008055]["OptionFunc315"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>801216</S>Option315"
tItem[3008055]["Option316"] = tAdventureOfMine_New_Text[3008055]["Option316"]
tItem[3008055]["OptionFunc316"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>801218</S>Option316"
tItem[3008055]["Option317"] = tAdventureOfMine_New_Text[3008055]["Option317"]
tItem[3008055]["OptionFunc317"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>801308</S>Option317"
tItem[3008055]["Option318"] = tAdventureOfMine_New_Text[3008055]["Option318"]
tItem[3008055]["OptionFunc318"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>827010</S>Option318"

tItem[3008055]["Option313"] = tAdventureOfMine_New_Text[3008055]["Option313"]
tItem[3008055]["OptionPoint313"] = "2-1"
tItem[3008055]["Option314"] = tAdventureOfMine_New_Text[3008055]["Option314"]
tItem[3008055]["OptionPoint314"] = "5-1"

tItem[3008055]["Text5-1"] = {311}
tItem[3008055]["Text511"] = tAdventureOfMine_New_Text[3008055]["Text311"]
tItem[3008055]["tOption5-1"] = {511,512,513,514,515}
tItem[3008055]["Option511"] = tAdventureOfMine_New_Text[3008055]["Option511"]
tItem[3008055]["OptionFunc511"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>827011</S>Option511"
tItem[3008055]["Option512"] = tAdventureOfMine_New_Text[3008055]["Option512"]
tItem[3008055]["OptionFunc512"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>827012</S>Option512"
tItem[3008055]["Option513"] = tAdventureOfMine_New_Text[3008055]["Option513"]
tItem[3008055]["OptionFunc513"] = "AdventureOfMine_New_SouRefinelSel</N>3008055</N>827013</S>Option513"

tItem[3008055]["Option514"] = tAdventureOfMine_New_Text[3008055]["Option514"]
tItem[3008055]["OptionPoint514"] = "3-1"
tItem[3008055]["Option515"] = tAdventureOfMine_New_Text[3008055]["Option515"]





tItem[3008055]["Text4-1"] = {411}
tItem[3008055]["Text411"] = tAdventureOfMine_New_Text[3008055]["Text411"]
tItem[3008055]["tOption4-1"] = {411,412}
tItem[3008055]["Option411"] = tAdventureOfMine_New_Text[3008055]["Option411"]
tItem[3008055]["OptionFunc411"] = "AdventureOfMine_New_SoulRefineAward</N>3008055</N>801102"
tItem[3008055]["Option412"] = tAdventureOfMine_New_Text[3008055]["Option412"]


--七阶防具神魂礼包
tItem[3008056] = tItem[3008056] or {}

tItem[3008056]["Text1-1"] = {111}
tItem[3008056]["Text111"] = tAdventureOfMine_New_Text[3008056]["Text111"]
tItem[3008056]["tOption1-1"] = {111,112,113,114,115,116}
tItem[3008056]["Option111"] = tAdventureOfMine_New_Text[3008056]["Option111"]
tItem[3008056]["OptionPoint111"] = "2-1"
tItem[3008056]["Option112"] = tAdventureOfMine_New_Text[3008056]["Option112"]
tItem[3008056]["OptionPoint112"] = "2-2"
tItem[3008056]["Option113"] = tAdventureOfMine_New_Text[3008056]["Option113"]
tItem[3008056]["OptionPoint113"] = "2-3"
tItem[3008056]["Option114"] = tAdventureOfMine_New_Text[3008056]["Option114"]
tItem[3008056]["OptionPoint114"] = "2-4"
tItem[3008056]["Option115"] = tAdventureOfMine_New_Text[3008056]["Option115"]
tItem[3008056]["OptionPoint115"] = "2-5"
tItem[3008056]["Option116"] = tAdventureOfMine_New_Text[3008056]["Option116"]

tItem[3008056]["Text2-1"] = {211}
tItem[3008056]["Text211"] = tAdventureOfMine_New_Text[3008056]["Text211"]
tItem[3008056]["tOption2-1"] = {211,212,213,214,215,216}
tItem[3008056]["Option211"] = tAdventureOfMine_New_Text[3008056]["Option211"]
tItem[3008056]["OptionFunc211"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>820073</S>Option211"
tItem[3008056]["Option212"] = tAdventureOfMine_New_Text[3008056]["Option212"]
tItem[3008056]["OptionFunc212"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>820074</S>Option212"
tItem[3008056]["Option213"] = tAdventureOfMine_New_Text[3008056]["Option213"]
tItem[3008056]["OptionFunc213"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>820075</S>Option213"
tItem[3008056]["Option214"] = tAdventureOfMine_New_Text[3008056]["Option214"]
tItem[3008056]["OptionFunc214"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>820076</S>Option214"
tItem[3008056]["Option215"] = tAdventureOfMine_New_Text[3008056]["Option215"]
tItem[3008056]["OptionPoint215"] = "1-1"
tItem[3008056]["Option216"] = tAdventureOfMine_New_Text[3008056]["Option216"]


tItem[3008056]["Text2-2"] = {221}
tItem[3008056]["Text221"] = tAdventureOfMine_New_Text[3008056]["Text221"]
tItem[3008056]["tOption2-2"] = {221,222,223,224}
tItem[3008056]["Option221"] = tAdventureOfMine_New_Text[3008056]["Option221"]
tItem[3008056]["OptionFunc221"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>822071</S>Option221"
tItem[3008056]["Option222"] = tAdventureOfMine_New_Text[3008056]["Option222"]
tItem[3008056]["OptionFunc222"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>822072</S>Option222"
tItem[3008056]["Option223"] = tAdventureOfMine_New_Text[3008056]["Option223"]
tItem[3008056]["OptionPoint223"] = "1-1"
tItem[3008056]["Option224"] = tAdventureOfMine_New_Text[3008056]["Option224"]

tItem[3008056]["Text2-3"] = {231}
tItem[3008056]["Text231"] = tAdventureOfMine_New_Text[3008056]["Text231"]
tItem[3008056]["tOption2-3"] = {231,232,233,234}
tItem[3008056]["Option231"] = tAdventureOfMine_New_Text[3008056]["Option231"]
tItem[3008056]["OptionFunc231"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>821034</S>Option231"
tItem[3008056]["Option232"] = tAdventureOfMine_New_Text[3008056]["Option232"]
tItem[3008056]["OptionFunc232"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>821033</S>Option232"
tItem[3008056]["Option233"] = tAdventureOfMine_New_Text[3008056]["Option233"]
tItem[3008056]["OptionPoint233"] = "1-1"
tItem[3008056]["Option234"] = tAdventureOfMine_New_Text[3008056]["Option234"]

tItem[3008056]["Text2-4"] = {241}
tItem[3008056]["Text241"] = tAdventureOfMine_New_Text[3008056]["Text241"]
tItem[3008056]["tOption2-4"] = {241,242,243,244,245,246,247}
tItem[3008056]["Option241"] = tAdventureOfMine_New_Text[3008056]["Option241"]
tItem[3008056]["OptionFunc241"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>823058</S>Option241"
tItem[3008056]["Option242"] = tAdventureOfMine_New_Text[3008056]["Option242"]
tItem[3008056]["OptionFunc242"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>823059</S>Option242"
tItem[3008056]["Option243"] = tAdventureOfMine_New_Text[3008056]["Option243"]
tItem[3008056]["OptionFunc243"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>823061</S>Option243"
tItem[3008056]["Option244"] = tAdventureOfMine_New_Text[3008056]["Option244"]
tItem[3008056]["OptionFunc244"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>823062</S>Option244"
tItem[3008056]["Option245"] = tAdventureOfMine_New_Text[3008056]["Option245"]
tItem[3008056]["OptionFunc245"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>823060</S>Option245"
tItem[3008056]["Option246"] = tAdventureOfMine_New_Text[3008056]["Option246"]
tItem[3008056]["OptionPoint246"] = "1-1"
tItem[3008056]["Option247"] = tAdventureOfMine_New_Text[3008056]["Option247"]

tItem[3008056]["Text2-5"] = {251}
tItem[3008056]["Text251"] = tAdventureOfMine_New_Text[3008056]["Text251"]
tItem[3008056]["tOption2-5"] = {251,252,253,254,255}
tItem[3008056]["Option251"] = tAdventureOfMine_New_Text[3008056]["Option251"]
tItem[3008056]["OptionFunc251"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>824018</S>Option251"
tItem[3008056]["Option252"] = tAdventureOfMine_New_Text[3008056]["Option252"]
tItem[3008056]["OptionFunc252"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>824019</S>Option252"
tItem[3008056]["Option253"] = tAdventureOfMine_New_Text[3008056]["Option253"]
tItem[3008056]["OptionFunc253"] = "AdventureOfMine_New_SouRefinelSel</N>3008056</N>824020</S>Option253"
tItem[3008056]["Option254"] = tAdventureOfMine_New_Text[3008056]["Option254"]
tItem[3008056]["OptionPoint254"] = "1-1"
tItem[3008056]["Option255"] = tAdventureOfMine_New_Text[3008056]["Option255"]


tItem[3008056]["Text4-1"] = {411}
tItem[3008056]["Text411"] = tAdventureOfMine_New_Text[3008056]["Text411"]
tItem[3008056]["tOption4-1"] = {411,412}
tItem[3008056]["Option411"] = tAdventureOfMine_New_Text[3008056]["Option411"]
tItem[3008056]["OptionFunc411"] = "AdventureOfMine_New_SoulRefineAward</N>3008056</N>801102"
tItem[3008056]["Option412"] = tAdventureOfMine_New_Text[3008056]["Option412"]


--极品淬炼礼包
tItem[3008057] = tItem[3008057] or {}
tItem[3008057]["Function"] = function(nItemId, sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	AdventureOfMine_New_UseCuilianPack(nItemId,nItemIndex)
end

--神品淬炼礼包
tItem[3008058] = tItem[3008058] or {}
tItem[3008058]["Function"] = function(nItemId, sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	AdventureOfMine_New_UseCuilianPack(nItemId,nItemIndex)
end


--阴之玉
tItem[3008059] = tItem[3008059] or {}
tItem[3008059]["Function"] = function(nItemId, sItemName)
	AdventureOfMine_New_UseJade(nItemId)
end

tItem[3008059]["Text1-1"] = {111,112}
tItem[3008059]["Text111"] = tAdventureOfMine_New_Text[3008059]["Text111"]
tItem[3008059]["Text112"] = tAdventureOfMine_New_Text[3008059]["Text112"]
tItem[3008059]["tOption1-1"] = {111,112}
tItem[3008059]["Option111"] = tAdventureOfMine_New_Text[3008059]["Option111"]
tItem[3008059]["OptionFunc111"] = "AdventureOfMine_New_UseOneJade</N>3008059"
tItem[3008059]["Option112"] = tAdventureOfMine_New_Text[3008059]["Option112"]



--阳之玉
tItem[3008060] = tItem[3008060] or {}
tItem[3008060]["Function"] = function(nItemId, sItemName)
	AdventureOfMine_New_UseJade(nItemId)
end

tItem[3008060]["Text1-1"] = {111,112}
tItem[3008060]["Text111"] = tAdventureOfMine_New_Text[3008060]["Text111"]
tItem[3008060]["Text112"] = tAdventureOfMine_New_Text[3008060]["Text112"]
tItem[3008060]["tOption1-1"] = {111,112}
tItem[3008060]["Option111"] = tAdventureOfMine_New_Text[3008060]["Option111"]
tItem[3008060]["OptionFunc111"] = "AdventureOfMine_New_UseOneJade</N>3008060"
tItem[3008060]["Option112"] = tAdventureOfMine_New_Text[3008060]["Option112"]


-------------------------------------------------陷阱模块----------------------------------------------------

tTrap[1378] = tTrap[1378] or {}
tTrap[1378]["Function"] = function (nTrapId,nTrapType)
	AdventureOfMine_New_TransToMain()
end

-------------------------------------------------配置数据----------------------------------------------------
--时间函数触发
--00 00
tOntimerMin_M[00] = tOntimerMin_M[00] or {}
table.insert(tOntimerMin_M[00],AdventureOfMine_New_SysChk)

--30 30
tOntimerMin_M[30] = tOntimerMin_M[30] or {}
table.insert(tOntimerMin_M[30],AdventureOfMine_New_SysChk)


--------------------------------------------玩家pk杀人触发--------------------------------------------------

tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"],AdventureOfMine_New_PlayerPk)
