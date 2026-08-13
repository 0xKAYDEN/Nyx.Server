-------------------------------------------------------------------------------------------------------------
--Name:		160203[简体征服][任务脚本]镇魔塔副本
--Creator:		林辉山
--Created:		2016/02/03
-------------------------------------------------------------------------------------------------------------

--前缀
--DemonTower_

--掩码说明
--142 00 背包信
--142 01 玩家当天选择难度，0表示未选择，1表示普通难度，2表示困难
--142 02 玩家当前选择的层数
--142 03 玩家普通难度挑战进度 0表示第一层没通过，1表示第一层通过，第二层没通过，以此类推
--142 04 玩家困难难度挑战进度
--142 05 玩家刷新星级记录
--142 06 玩家组队完成任务情况，0表示未完成，1表示完成未领奖，2表示已领奖。
--142 19 玩家当天第一次领取奖励的层数
--142 20 玩家当天第二次领取奖励的层数
--142 21 玩家当天第三次领取奖励的层数
--142 22 玩家是否杀死层数boss，0表示未杀死任意层，nSel*10+nFloor

--142 41 玩家当天刷新奖励次数

--179,25:玩家杀死最新boss层数

--taskdetail 6126
--沿用鬼锋穴诛妖任务的id。
--data1 完成挑战次数

--全服变量
--51027 Data0 全服限制只有10次得到烈焰精粹次数。Data1 每个区服每天限用道具刷出20个五星 只是困难

--
-- 729611	普通镇魂珠	98533105
-- 729612	中等镇魂珠	98533106
-- 729613	高等镇魂珠	98533107
-- 729614	至尊镇魂珠	98533108
-- 729703	帝皇镇魂珠	98533109

-----------------------------------------------------常量部分--------------------------------------------------
tDemonTower_Cont = {}

-- 炽热天石碎片 每日合成上限
tDemonTower_Cont["Stc"] = {}
tDemonTower_Cont["Stc"][4] = {}
tDemonTower_Cont["Stc"][4]["EventType"] = 173
tDemonTower_Cont["Stc"][4]["DataType"] = 22
tDemonTower_Cont["Stc"][4]["Limit"] = 5

-- 炽热天石碎片
tDemonTower_Cont[3008727] = {}
tDemonTower_Cont[3008727]["nNum"] = 9
tDemonTower_Cont[3008727]["nDoubCp"] = 88

tDemonTower_Cont[3008727]["GetCp"] = {}
tDemonTower_Cont[3008727]["GetCp"][1] = 270
tDemonTower_Cont[3008727]["GetCp"][2] = 540

---- 增加魂珠任务，加魂值
local tDemonTower_DaTask = {}
	tDemonTower_DaTask["TaskId"] = 2375
	
local tDemonTower_DaStc = {}
	tDemonTower_DaStc["Event"] = 108
	tDemonTower_DaStc["Data"] = 57

	
local tDemonTower_DaData = {}
	tDemonTower_DaData[729611] = 2500
	tDemonTower_DaData[729612] = 2000
	tDemonTower_DaData[729613] = 1500
	tDemonTower_DaData[729614] = 1000
	tDemonTower_DaData[729703] = 500
	
local tDemonTower_DaItem = {}
	tDemonTower_DaItem[1] = 729611
	tDemonTower_DaItem[2] = 729612
	tDemonTower_DaItem[3] = 729613
	tDemonTower_DaItem[4] = 729614
	tDemonTower_DaItem[5] = 729703
	
local tDemonTower_DaItemExp = {}
	tDemonTower_DaItemExp[3008956] = {30,10}
	tDemonTower_DaItemExp[3008957] = {60,20}
	tDemonTower_DaItemExp[3008958] = {90,30}
	tDemonTower_DaItemExp[3008959] = {120,40}
	tDemonTower_DaItemExp[3008960] = {150,50}
	tDemonTower_DaItemExp[3008961] = {160,50}
	tDemonTower_DaItemExp[3008962] = {180,60}
	tDemonTower_DaItemExp[3008963] = {200,60}
	tDemonTower_DaItemExp[3008964] = {240,70}
	tDemonTower_DaItemExp[3008965] = {300,90}
	tDemonTower_DaItemExp[3008966] = {320,100}
	tDemonTower_DaItemExp[3008967] = {360,100}
	tDemonTower_DaItemExp[3008968] = {400,120}
	tDemonTower_DaItemExp[3008969] = {480,150}
	tDemonTower_DaItemExp[3008970] = {600,180}
	tDemonTower_DaItemExp[3008971] = {720,200}
	tDemonTower_DaItemExp[3008972] = {40,10}
	tDemonTower_DaItemExp[3008973] = {80,20}
	tDemonTower_DaItemExp[3008974] = {50,15}
	tDemonTower_DaItemExp[3008975] = {100,30}
	
local tDemonTower_DaMonster = {}
	-- 普通
	tDemonTower_DaMonster[7976] = 200
	tDemonTower_DaMonster[7977] = 200
	tDemonTower_DaMonster[7979] = 200
	tDemonTower_DaMonster[7980] = 300
	tDemonTower_DaMonster[7981] = 300
	tDemonTower_DaMonster[7982] = 300
	tDemonTower_DaMonster[7983] = 400
	tDemonTower_DaMonster[7984] = 400
	tDemonTower_DaMonster[7985] = 500
	
	-- 困难
	tDemonTower_DaMonster[7986] = 300
	tDemonTower_DaMonster[7987] = 300
	tDemonTower_DaMonster[7989] = 400
	tDemonTower_DaMonster[7990] = 400
	tDemonTower_DaMonster[7992] = 500
	tDemonTower_DaMonster[7993] = 500
	tDemonTower_DaMonster[7995] = 600
	tDemonTower_DaMonster[7996] = 700

	tDemonTower_DaMonster[7997] = 800
	tDemonTower_DaMonster[7998] = 800
	
--镇魔塔MAPdoc
local tDemonTower_MapDoc = {}
	tDemonTower_MapDoc[1] = 4000
	tDemonTower_MapDoc[2] = 4003
	tDemonTower_MapDoc[3] = 4006
	tDemonTower_MapDoc[4] = 4008


local tDemonTower_CpCont = {}
	tDemonTower_CpCont["CpLimit"] = 999999999
	tDemonTower_CpCont["Self"] = "self"
	tDemonTower_CpCont["Effect"] = "zf2-e280"
	
	tDemonTower_CpCont[3008925] = 270
	tDemonTower_CpCont[3008926] = 540

local tDemonTower_Stc = {}
	tDemonTower_Stc["Event"] = 142
	
	tDemonTower_Stc["DataType"] = {}
	
	--选择难度
	tDemonTower_Stc["DataType"]["SelDifficult"] = 1
	--玩家当前挑战的层数
	tDemonTower_Stc["DataType"]["TakeFloor"] = 2
	--玩家挑战进度
	tDemonTower_Stc["DataType"]["Process"] = {}
	tDemonTower_Stc["DataType"]["Process"][1] = 3
	tDemonTower_Stc["DataType"]["Process"][2] = 4
	--玩家当前星级
	tDemonTower_Stc["DataType"]["Star"] = 5
	
	tDemonTower_Stc["DataType"]["TeamReward"] = 6
	
	tDemonTower_Stc["DataType"]["AwardFloor"] = {19,20,21}
	
	tDemonTower_Stc["DataType"]["BossRecord"] = 22
	
	tDemonTower_Stc["DataType"]["RefreshTimes"] = 41
	
	tDemonTower_Stc["NewFloor"]={}
	tDemonTower_Stc["NewFloor"]["EventType"] =179
	tDemonTower_Stc["NewFloor"]["DataType"] = 25
	

local tDemonTower_Const = {}
	--需要的等级和转世
	tDemonTower_Const["Mete"] = 0
	tDemonTower_Const["Lev"] = 90
	tDemonTower_Const["Level"] = G_User_MaxLev
	
	tDemonTower_Const["BoxMete"] = 2
	tDemonTower_Const["BoxLevel"] = 130
	tDemonTower_Const["BoxItemId"] =3302997
	
	--消耗次数
	tDemonTower_Const["BeginTime"] = 10
	tDemonTower_Const["EndTime"] = 100
	--刷5星
	tDemonTower_Const["Cultivation"] = 10000
	
	--邮件数据
	tDemonTower_Const["Mail"]={}
	tDemonTower_Const["Mail"]["Space"]=1
	tDemonTower_Const["Mail"]["ExistDay"]=3
	tDemonTower_Const["Mail"]["ActionId"]={}
	tDemonTower_Const["Mail"]["ActionId"][1]=569465
	tDemonTower_Const["Mail"]["ActionId"][2]=569473

	
	
	
	--开放时间
	tDemonTower_Const["OpenTime"] = "08:00 23:59"
	--基础概率
	tDemonTower_Const["BaseProb"] = 10000
	
	--全服限制只有10次兑换龙珠次数
	tDemonTower_Const["GlobalData"] = 51027
	
	--task_detail
	tDemonTower_Const["TaskId"] = 6126
	
	tDemonTower_Const["DropProb"] = 100
	tDemonTower_Const["ExchangeNum"] = 10
	--灵力精魄刷5星的数量
	tDemonTower_Const["ReFreshNum"] = 20
	
	tDemonTower_Const["SpaceNum"] = 12
	tDemonTower_Const["EndSpace"] = 12
	
	--炽热天石碎片合成得到的赠点天石数量
	tDemonTower_Const["PieceEmoney"] = 270
	--炽热天石碎片合成需要的数量
	tDemonTower_Const["PieceNum"] = 9
	--打开星月宝盒得到的锁片属性
	tDemonTower_Const["DiamondAttr"] = "0 30"
	--刷新奖励需要的修行值
	tDemonTower_Const["FreshByCul"] = 25
	--塔层内动态npctask0
	tDemonTower_Const["Task0"] = 97273658
	
	--普通难度和困难难度捐赠天石数量
	tDemonTower_Const["DonateEmoney"] = {5,9}
	
	tDemonTower_Const["NeedMeteorScroll"] = {1,2}
	
	--物品对应的任务掩码
	tDemonTower_Const["ItemToTaskId"] = {}
	tDemonTower_Const["ItemToTaskId"][3008733] = 3651
	tDemonTower_Const["ItemToTaskId"][3008734] = 3652
	
	tDemonTower_Const["StarToColor"] = {}
	tDemonTower_Const["StarToColor"][1] = "0xffffffff"
	tDemonTower_Const["StarToColor"][2] = "0xff5d86c9"
	tDemonTower_Const["StarToColor"][3] = "0xff00fa00"
	tDemonTower_Const["StarToColor"][4] = "0xffc501e7"
	tDemonTower_Const["StarToColor"][5] = "0xffffae00"
	
	--普通难度和困难难度需要的背包空间
	tDemonTower_Const["Space"] = {5,7}
	
	--封魔礼包和黄金封魔礼包需要的封魔牌数量
	tDemonTower_Const["PackNeedNum"] = {}
	tDemonTower_Const["PackNeedNum"][720948] = 3
	tDemonTower_Const["PackNeedNum"][729594] = 9
	
	--礼包对应的封魔牌不足的对白
	tDemonTower_Const["PackToTalk"] = {}
	tDemonTower_Const["PackToTalk"][720948] = "3-6"
	tDemonTower_Const["PackToTalk"][729594] = "3-5"
	
	tDemonTower_Const["JinTEMoney"] = 27
	
	--对白配置
	tDemonTower_Const["Refresh"] = {}
	--缺少天石
	tDemonTower_Const["Refresh"]["NoEMoney"] = {}
	tDemonTower_Const["Refresh"]["NoEMoney"][19127] = "6-3"
	tDemonTower_Const["Refresh"]["NoEMoney"][19129] = "3-1"
	tDemonTower_Const["Refresh"]["NoEMoney"][19147] = "2-2"
	tDemonTower_Const["Refresh"]["NoEMoney"][19138] = "5-1"
	tDemonTower_Const["Refresh"]["NoEMoney"][19139] = "5-1"
	tDemonTower_Const["Refresh"]["NoEMoney"][19140] = "5-1"
	tDemonTower_Const["Refresh"]["NoEMoney"][19141] = "5-1"
	tDemonTower_Const["Refresh"]["NoEMoney"][19142] = "5-1"
	tDemonTower_Const["Refresh"]["NoEMoney"][19143] = "5-1"
	tDemonTower_Const["Refresh"]["NoEMoney"][19144] = "5-1"
	tDemonTower_Const["Refresh"]["NoEMoney"][19145] = "5-1"
	tDemonTower_Const["Refresh"]["NoEMoney"][19146] = "5-1"
	
	--缺少修行值
	tDemonTower_Const["Refresh"]["NoCul"] = {}
	tDemonTower_Const["Refresh"]["NoCul"][19127] = "7-7"
	tDemonTower_Const["Refresh"]["NoCul"][19129] = "3-2"
	tDemonTower_Const["Refresh"]["NoCul"][19147] = "2-3"
	tDemonTower_Const["Refresh"]["NoCul"][19138] = "5-2"
	tDemonTower_Const["Refresh"]["NoCul"][19139] = "5-2"
	tDemonTower_Const["Refresh"]["NoCul"][19140] = "5-2"
	tDemonTower_Const["Refresh"]["NoCul"][19141] = "5-2"
	tDemonTower_Const["Refresh"]["NoCul"][19142] = "5-2"
	tDemonTower_Const["Refresh"]["NoCul"][19143] = "5-2"
	tDemonTower_Const["Refresh"]["NoCul"][19144] = "5-2"
	tDemonTower_Const["Refresh"]["NoCul"][19145] = "5-2"
	tDemonTower_Const["Refresh"]["NoCul"][19146] = "5-2"
	
	--缺少灵力精魄
	tDemonTower_Const["Refresh"]["NoSoul"] = {}
	tDemonTower_Const["Refresh"]["NoSoul"][19127] = "7-6"
	tDemonTower_Const["Refresh"]["NoSoul"][19129] = "3-3"
	tDemonTower_Const["Refresh"]["NoSoul"][19147] = "2-4"
	tDemonTower_Const["Refresh"]["NoSoul"][19138] = "5-3"
	tDemonTower_Const["Refresh"]["NoSoul"][19139] = "5-3"
	tDemonTower_Const["Refresh"]["NoSoul"][19140] = "5-3"
	tDemonTower_Const["Refresh"]["NoSoul"][19141] = "5-3"
	tDemonTower_Const["Refresh"]["NoSoul"][19142] = "5-3"
	tDemonTower_Const["Refresh"]["NoSoul"][19143] = "5-3"
	tDemonTower_Const["Refresh"]["NoSoul"][19144] = "5-3"
	tDemonTower_Const["Refresh"]["NoSoul"][19145] = "5-3"
	tDemonTower_Const["Refresh"]["NoSoul"][19146] = "5-3"
	
	--结束后接的对白
	tDemonTower_Const["Refresh"]["Finish"] = {}
	tDemonTower_Const["Refresh"]["Finish"][19127] = "5-2"
	tDemonTower_Const["Refresh"]["Finish"][19129] = "1-1"
	tDemonTower_Const["Refresh"]["Finish"][19147] = "1-1"
	tDemonTower_Const["Refresh"]["Finish"][19138] = "2-2"
	tDemonTower_Const["Refresh"]["Finish"][19139] = "2-2"
	tDemonTower_Const["Refresh"]["Finish"][19140] = "2-2"
	tDemonTower_Const["Refresh"]["Finish"][19141] = "2-2"
	tDemonTower_Const["Refresh"]["Finish"][19142] = "2-2"
	tDemonTower_Const["Refresh"]["Finish"][19143] = "2-2"
	tDemonTower_Const["Refresh"]["Finish"][19144] = "2-2"
	tDemonTower_Const["Refresh"]["Finish"][19145] = "2-2"
	tDemonTower_Const["Refresh"]["Finish"][19146] = "2-2"
	
	tDemonTower_Const["StatusFroze"] = {}

	tDemonTower_Const["StatusFroze"]["Status"] = 56
	tDemonTower_Const["StatusFroze"]["Power"] = 100
	tDemonTower_Const["StatusFroze"]["Secs"] = 3
	tDemonTower_Const["StatusFroze"]["Times"] = 1
	tDemonTower_Const["StatusFroze"]["RemainTime"] = 3
	tDemonTower_Const["StatusFroze"]["EndTime"] = 1
	tDemonTower_Const["StatusFroze"]["Recordable"] = 0
	
	
	--副本标志
	tDemonTower_Const["Instance"] ={}
	tDemonTower_Const["Instance"][1] = {34,35,36,37,38,39,40,41,42}
	tDemonTower_Const["Instance"][2] = {43,44,45,46,47,48,49,50,51}
	
	--动态npc箱子
	tDemonTower_Const["DyNpc"] = {40150,66,66,97273556}
	
	--mapdoc
	tDemonTower_Const["MapDoc"] = {4000,4003,4006,4008}
	
-----层数对应的lookface
	tDemonTower_Const["ToLookface"] = {}
	tDemonTower_Const["ToLookface"] = {40460,40470,40480,40490,40500,40510,40520,40530,40540}
	
	tDemonTower_Const["ToLookfaceExra"] = {40630,40640}
	
	tDemonTower_Const["FindWayToBox"] = {}
	tDemonTower_Const["FindWayToBox"]["NpcId"] = 19147
	tDemonTower_Const["FindWayToBox"]["Cellx"] = 66
	tDemonTower_Const["FindWayToBox"]["Celly"] = 66
	
	
	
-----位置配置信息
	tDemonTower_Const["MainCity"] = 1002
	tDemonTower_Const["MainCityCellx"] = 256
	tDemonTower_Const["MainCityCelly"] = 471
	tDemonTower_Const["Range"] = 3
	
	tDemonTower_Const["ToPlace"] = {}
	tDemonTower_Const["ToPlace"][1] = {1002,253,469}
	tDemonTower_Const["ToPlace"][2] = {1002,253,469}
	
	tDemonTower_Const["NpcLocation"] = {}
	--每层传送落脚点
	tDemonTower_Const["NpcLocation"][1] = {66,66}
	tDemonTower_Const["NpcLocation"][2] = {66,66}
	tDemonTower_Const["NpcLocation"][3] = {66,66}
	tDemonTower_Const["NpcLocation"][4] = {65,63}
	tDemonTower_Const["NpcLocation"][5] = {65,63}
	tDemonTower_Const["NpcLocation"][6] = {65,63}
	tDemonTower_Const["NpcLocation"][7] = {65,65}
	tDemonTower_Const["NpcLocation"][8] = {65,65}
	tDemonTower_Const["NpcLocation"][9] = {63,63}
	
	tDemonTower_Const["NpcExraLocation"] = {65,65}
	--每层对应的地图坐标
	
	tDemonTower_Const["FloorToRoad"] = {}
	tDemonTower_Const["FloorToRoad"][1] = 4009
	tDemonTower_Const["FloorToRoad"][2] = 4010
	tDemonTower_Const["FloorToRoad"][3] = 4011
	tDemonTower_Const["FloorToRoad"][4] = 4012
	tDemonTower_Const["FloorToRoad"][5] = 4013
	tDemonTower_Const["FloorToRoad"][6] = 4014
	tDemonTower_Const["FloorToRoad"][7] = 4015
	tDemonTower_Const["FloorToRoad"][8] = 4016
	tDemonTower_Const["FloorToRoad"][9] = 4017
	

	tDemonTower_Const["RoadToFloor"] = {}
	
	for i,v in pairs(tDemonTower_Const["FloorToRoad"]) do
		tDemonTower_Const["RoadToFloor"][v] = i
	end
	
	--地图里随机刷怪，先取13个点吧
	tDemonTower_Const["RandomPos"] = {}
	tDemonTower_Const["RandomPos"][1] = {60,64}
	tDemonTower_Const["RandomPos"][2] = {59,67}
	tDemonTower_Const["RandomPos"][3] = {59,70}
	tDemonTower_Const["RandomPos"][4] = {58,73}
	tDemonTower_Const["RandomPos"][5] = {61,74}
	tDemonTower_Const["RandomPos"][6] = {66,75}
	tDemonTower_Const["RandomPos"][7] = {70,76}
	tDemonTower_Const["RandomPos"][8] = {71,73}
	tDemonTower_Const["RandomPos"][9] = {72,70}
	tDemonTower_Const["RandomPos"][10] = {72,67}
	tDemonTower_Const["RandomPos"][11] = {72,63}
	tDemonTower_Const["RandomPos"][12] = {70,60}
	tDemonTower_Const["RandomPos"][13] = {65,57}
	
	--玩家传送到塔间通道的位置
	tDemonTower_Const["PosInRoad"] = {45,35}
	
	tDemonTower_Const["MapCanTran"] = {}
	--双龙城/清风原
	tDemonTower_Const["MapCanTran"][1] = 1002
	--云门关
	tDemonTower_Const["MapCanTran"][2] = 1000
	--市场
	tDemonTower_Const["MapCanTran"][3] = 1036
	--枫溪林
	tDemonTower_Const["MapCanTran"][4] = 1011
	--芦花荡
	tDemonTower_Const["MapCanTran"][5] = 1015
	--绝情谷
	tDemonTower_Const["MapCanTran"][6] = 1020
	
	--传送位置
	tDemonTower_Const["MapCanTran"]["MapId"] = 1002
	tDemonTower_Const["MapCanTran"]["Cellx"] = 256
	tDemonTower_Const["MapCanTran"]["Celly"] = 471
	tDemonTower_Const["MapCanTran"]["Range"] = 3
	tDemonTower_Const["MapCanTran"]["NpcId"] = 19127
	
----物品ID部分
	tDemonTower_Const["ItemId"] = {}
	--流星卷
	tDemonTower_Const["ItemId"]["MeteorScroll"] = 720027
	--龙珠
	tDemonTower_Const["ItemId"]["DragonBall"] = 1088000
	--烈焰精粹
	tDemonTower_Const["ItemId"]["FirePhity"] = 3008728
	--灵力精魄
	tDemonTower_Const["ItemId"]["Soul"] = 3008735
	
	--西煌简史
	tDemonTower_Const["ItemId"]["HisOfXihuang"] = 3008737
	--封魔牌
	tDemonTower_Const["ItemId"]["FengmoPai"] = 711211
	--正气令
	tDemonTower_Const["ItemId"]["ZQL"] = 729304
	
----光效部分
	tDemonTower_Const["Effect"] = {}
	tDemonTower_Const["Effect"]["Obj"] = "self"
	--碎片兑换赠点天石
	tDemonTower_Const["Effect"]["PieceToEmoney"] = "zf2-e280"
	--一键扫荡
	tDemonTower_Const["Effect"]["Sweep"] = "accession6"
	--击败boss
	tDemonTower_Const["Effect"]["KillBoss"] = "addexp01"
	--领取奖励
	tDemonTower_Const["Effect"]["AwardReward"] = "coattryon"
	--触发隐藏
	tDemonTower_Const["Effect"]["Trigger"] = "zf2-e280"
	--完成每日任务
	tDemonTower_Const["Effect"]["FinishMission"] = "zf2-e128"
	--击杀所有的怪物
	tDemonTower_Const["Effect"]["KillAll"] = "zf2-e281"
	
	--开始挑战boss
	tDemonTower_Const["Effect"]["BeginGame"] = "new_gamebegin"
	--进入镇魔塔
	tDemonTower_Const["Effect"]["EnterMove"] = "moveback"
	--离开镇魔塔
	tDemonTower_Const["Effect"]["LeaveMove"] = "movego"
	--9层boss光效
	tDemonTower_Const["Effect"]["BossFre1"] = "5fire"
	--宝箱刷新时光效
	tDemonTower_Const["Effect"]["BoxFresh"] = "zf2-e280"
	--天结散人领取奖励
	tDemonTower_Const["Effect"]["RiCh"] = "eidolon"	
	--经验礼包光效
	tDemonTower_Const["Effect"]["GetExp"] = "LevelUp"

----------------------------------------------怪物生成配置部分----------------------------------------
	
local tDemonTower_Generator = {}
	--普通难度
	tDemonTower_Generator[1] = {}
	--普通难度第一层
	tDemonTower_Generator[1][1] = {}
	--普通难度第一层第一只怪
	tDemonTower_Generator[1][1][1] = {}
	tDemonTower_Generator[1][1][1]["MonsterId"] = 7976
	tDemonTower_Generator[1][1][1]["GenId"] = 18349
	
	tDemonTower_Generator[1][2] = {}
	--普通难度第二层第一只怪
	tDemonTower_Generator[1][2][1] = {}
	tDemonTower_Generator[1][2][1]["MonsterId"] = 7977
	tDemonTower_Generator[1][2][1]["GenId"] = 18349
	tDemonTower_Generator[1][2][2] = {}
	tDemonTower_Generator[1][2][2]["MonsterId"] = 7978
	tDemonTower_Generator[1][2][2]["GenId"] = 18350
	tDemonTower_Generator[1][2][3] = {}
	tDemonTower_Generator[1][2][3]["MonsterId"] = 7978
	tDemonTower_Generator[1][2][3]["GenId"] = 18351
	tDemonTower_Generator[1][2][4] = {}
	tDemonTower_Generator[1][2][4]["MonsterId"] = 7978
	tDemonTower_Generator[1][2][4]["GenId"] = 18352
	
	tDemonTower_Generator[1][3] = {}
	tDemonTower_Generator[1][3][1] = {}
	tDemonTower_Generator[1][3][1]["MonsterId"] = 7979
	tDemonTower_Generator[1][3][1]["GenId"] = 18349
	
	tDemonTower_Generator[1][4] = {}
	tDemonTower_Generator[1][4][1] = {}
	tDemonTower_Generator[1][4][1]["MonsterId"] = 7980
	tDemonTower_Generator[1][4][1]["GenId"] = 18349
	
	tDemonTower_Generator[1][5] = {}
	tDemonTower_Generator[1][5][1] = {}
	tDemonTower_Generator[1][5][1]["MonsterId"] = 7981
	tDemonTower_Generator[1][5][1]["GenId"] = 18349
	
	tDemonTower_Generator[1][6] = {}
	tDemonTower_Generator[1][6][1] = {}
	tDemonTower_Generator[1][6][1]["MonsterId"] = 7982
	tDemonTower_Generator[1][6][1]["GenId"] = 18349
	
	tDemonTower_Generator[1][7] = {}
	tDemonTower_Generator[1][7][1] = {}
	tDemonTower_Generator[1][7][1]["MonsterId"] = 7983
	tDemonTower_Generator[1][7][1]["GenId"] = 18349
	
	tDemonTower_Generator[1][8] = {}
	tDemonTower_Generator[1][8][1] = {}
	tDemonTower_Generator[1][8][1]["MonsterId"] = 7984
	tDemonTower_Generator[1][8][1]["GenId"] = 18349
	
	tDemonTower_Generator[1][9] = {}
	tDemonTower_Generator[1][9][1] = {}
	tDemonTower_Generator[1][9][1]["MonsterId"] = 7985
	tDemonTower_Generator[1][9][1]["GenId"] = 18349
	
	
	--困难难度
	tDemonTower_Generator[2] = {}

	tDemonTower_Generator[2][1] = {}
	tDemonTower_Generator[2][1][1] = {}
	tDemonTower_Generator[2][1][1]["MonsterId"] = 7986
	tDemonTower_Generator[2][1][1]["GenId"] = 18349
	
	tDemonTower_Generator[2][2] = {}
	tDemonTower_Generator[2][2][1] = {}
	tDemonTower_Generator[2][2][1]["MonsterId"] = 7987
	tDemonTower_Generator[2][2][1]["GenId"] = 18349
	tDemonTower_Generator[2][2][2] = {}
	tDemonTower_Generator[2][2][2]["MonsterId"] = 7988
	tDemonTower_Generator[2][2][2]["GenId"] = 18350
	tDemonTower_Generator[2][2][3] = {}
	tDemonTower_Generator[2][2][3]["MonsterId"] = 7988
	tDemonTower_Generator[2][2][3]["GenId"] = 18351
	tDemonTower_Generator[2][2][4] = {}
	tDemonTower_Generator[2][2][4]["MonsterId"] = 7988
	tDemonTower_Generator[2][2][4]["GenId"] = 18352
	
	tDemonTower_Generator[2][3] = {}
	tDemonTower_Generator[2][3][1] = {}
	tDemonTower_Generator[2][3][1]["MonsterId"] = 7989
	tDemonTower_Generator[2][3][1]["GenId"] = 18349
	
	tDemonTower_Generator[2][4] = {}
	tDemonTower_Generator[2][4][1] = {}
	tDemonTower_Generator[2][4][1]["MonsterId"] = 7990
	tDemonTower_Generator[2][4][1]["GenId"] = 18349
	tDemonTower_Generator[2][4][2] = {}
	tDemonTower_Generator[2][4][2]["MonsterId"] = 7991
	tDemonTower_Generator[2][4][2]["GenId"] = 18350
	tDemonTower_Generator[2][4][3] = {}
	tDemonTower_Generator[2][4][3]["MonsterId"] = 7991
	tDemonTower_Generator[2][4][3]["GenId"] = 18351
	
	tDemonTower_Generator[2][5] = {}
	tDemonTower_Generator[2][5][1] = {}
	tDemonTower_Generator[2][5][1]["MonsterId"] = 7992
	tDemonTower_Generator[2][5][1]["GenId"] = 18349
	
	tDemonTower_Generator[2][6] = {}
	tDemonTower_Generator[2][6][1] = {}
	tDemonTower_Generator[2][6][1]["MonsterId"] = 7993
	tDemonTower_Generator[2][6][1]["GenId"] = 18349
	tDemonTower_Generator[2][6][2] = {}
	tDemonTower_Generator[2][6][2]["MonsterId"] = 7994
	tDemonTower_Generator[2][6][2]["GenId"] = 18350
	tDemonTower_Generator[2][6][3] = {}
	tDemonTower_Generator[2][6][3]["MonsterId"] = 7994
	tDemonTower_Generator[2][6][3]["GenId"] = 18351
	tDemonTower_Generator[2][6][4] = {}
	tDemonTower_Generator[2][6][4]["MonsterId"] = 7994
	tDemonTower_Generator[2][6][4]["GenId"] = 18352
	tDemonTower_Generator[2][6][5] = {}
	tDemonTower_Generator[2][6][5]["MonsterId"] = 7994
	tDemonTower_Generator[2][6][5]["GenId"] = 18353
	tDemonTower_Generator[2][6][6] = {}
	tDemonTower_Generator[2][6][6]["MonsterId"] = 7994
	tDemonTower_Generator[2][6][6]["GenId"] = 18354
	
	tDemonTower_Generator[2][7] = {}
	tDemonTower_Generator[2][7][1] = {}
	tDemonTower_Generator[2][7][1]["MonsterId"] = 7995
	tDemonTower_Generator[2][7][1]["GenId"] = 18349
	
	tDemonTower_Generator[2][8] = {}
	tDemonTower_Generator[2][8][1] = {}
	tDemonTower_Generator[2][8][1]["MonsterId"] = 7996
	tDemonTower_Generator[2][8][1]["GenId"] = 18349
	
	tDemonTower_Generator[2][9] = {}
	tDemonTower_Generator[2][9][1] = {}
	tDemonTower_Generator[2][9][1]["MonsterId"] = 7997
	tDemonTower_Generator[2][9][1]["GenId"] = 18349
	tDemonTower_Generator[2][9][2] = {}
	tDemonTower_Generator[2][9][2]["MonsterId"] = 7998
	tDemonTower_Generator[2][9][2]["GenId"] = 18350
	
	
------------------------------------------------奖励配置部分---------------------------------------------
--说明：根据层数和难度来索引
--第一索引为层数
--第二索引为难度。1表示普通，2表示困难
local tDemonTower_Award = {}
	--肯定得到的3008727
	tDemonTower_Award["MustAward"] = 3008727
	
	--第一层
	tDemonTower_Award[1] = {}
	--第一层普通难度
	tDemonTower_Award[1][1] = {}
	--第一层普通难度的额外奖励
	tDemonTower_Award[1][1]["Exra"] = {}
	--第一层普通难度的额外奖励第一部分
	tDemonTower_Award[1][1]["Exra"][1] = {}
	--第一层普通难度的额外奖励第一部分执行函数
	tDemonTower_Award[1][1]["Exra"][1]["Func"] = Item_AddItem
	--第一层普通难度的额外奖励第一部分执行参数
	tDemonTower_Award[1][1]["Exra"][1]["Param"] = "3002030 0 1"
	--第一层普通难度的固定奖励
	tDemonTower_Award[1][1]["Regular"] = {} 
	--第一层普通难度的1星固定奖励
	tDemonTower_Award[1][1]["Regular"][1] = {}
	
	--第一层普通难度的1星固定奖励第一部分
	tDemonTower_Award[1][1]["Regular"][1][1] = {}
	tDemonTower_Award[1][1]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[1][1]["Regular"][1][1]["Param"] = "3008956 0 0 0 1440 1"
	
	--第一层普通难度的2星固定奖励
	tDemonTower_Award[1][1]["Regular"][2] = {}
	--第一层普通难度的2星固定奖励第一部分
	tDemonTower_Award[1][1]["Regular"][2][1] = {}
	tDemonTower_Award[1][1]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[1][1]["Regular"][2][1]["Param"] = "3008957 0 0 0 1440 1"
	
	--第一层普通难度的3星固定奖励
	tDemonTower_Award[1][1]["Regular"][3] = {}
	--第一层普通难度的3星固定奖励第一部分
	tDemonTower_Award[1][1]["Regular"][3][1] = {}
	tDemonTower_Award[1][1]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[1][1]["Regular"][3][1]["Param"] = "3008958 0 0 0 1440 1"
	tDemonTower_Award[1][1]["Regular"][3][2] = {}
	tDemonTower_Award[1][1]["Regular"][3][2]["Func"] = Item_AddItem
	tDemonTower_Award[1][1]["Regular"][3][2]["Param"] = "3002030 0 1"
	
	--第一层普通难度的4星固定奖励
	tDemonTower_Award[1][1]["Regular"][4] = {}
	--第一层普通难度的4星固定奖励第一部分
	tDemonTower_Award[1][1]["Regular"][4][1] = {}
	tDemonTower_Award[1][1]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[1][1]["Regular"][4][1]["Param"] = "3008959 0 0 0 1440 1"
	tDemonTower_Award[1][1]["Regular"][4][2] = {}
	tDemonTower_Award[1][1]["Regular"][4][2]["Func"] = Item_AddItem
	tDemonTower_Award[1][1]["Regular"][4][2]["Param"] = "3002030 0 2"
	
	--第一层普通难度的5星固定奖励
	tDemonTower_Award[1][1]["Regular"][5] = {}
	--第一层普通难度的5星固定奖励第一部分
	tDemonTower_Award[1][1]["Regular"][5][1] = {}
	tDemonTower_Award[1][1]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[1][1]["Regular"][5][1]["Param"] = "3008962 0 0 0 1440 1"
	tDemonTower_Award[1][1]["Regular"][5][2] = {}
	tDemonTower_Award[1][1]["Regular"][5][2]["Func"] = Item_AddItem
	tDemonTower_Award[1][1]["Regular"][5][2]["Param"] = "3002030 0 3"
	
	
	--第一层困难难度
	tDemonTower_Award[1][2] = {}
	tDemonTower_Award[1][2]["Exra"] = {}
	tDemonTower_Award[1][2]["Exra"][1] = {}
	tDemonTower_Award[1][2]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[1][2]["Exra"][1]["Param"] = "3002030 0 3"
	tDemonTower_Award[1][2]["Regular"] = {} 
	tDemonTower_Award[1][2]["Regular"][1] = {}
	tDemonTower_Award[1][2]["Regular"][1][1] = {}
	tDemonTower_Award[1][2]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[1][2]["Regular"][1][1]["Param"] = "3008957 0 0 0 1440 1"
	
	tDemonTower_Award[1][2]["Regular"][2] = {}
	tDemonTower_Award[1][2]["Regular"][2][1] = {}
	tDemonTower_Award[1][2]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[1][2]["Regular"][2][1]["Param"] = "3008959 0 0 0 1440 1"
	tDemonTower_Award[1][2]["Regular"][2][2] = {}
	tDemonTower_Award[1][2]["Regular"][2][2]["Func"] = Item_AddItem
	tDemonTower_Award[1][2]["Regular"][2][2]["Param"] = "3002030  0 1"
	
	tDemonTower_Award[1][2]["Regular"][3] = {}
	tDemonTower_Award[1][2]["Regular"][3][1] = {}
	tDemonTower_Award[1][2]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[1][2]["Regular"][3][1]["Param"] = "3008962 0 0 0 1440 1"
	tDemonTower_Award[1][2]["Regular"][3][2] = {}
	tDemonTower_Award[1][2]["Regular"][3][2]["Func"] = Item_AddItem
	tDemonTower_Award[1][2]["Regular"][3][2]["Param"] = "3002030 0 2"
	
	tDemonTower_Award[1][2]["Regular"][4] = {}
	tDemonTower_Award[1][2]["Regular"][4][1] = {}
	tDemonTower_Award[1][2]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[1][2]["Regular"][4][1]["Param"] = "3008964 0 0 0 1440 1"
	tDemonTower_Award[1][2]["Regular"][4][2] = {}
	tDemonTower_Award[1][2]["Regular"][4][2]["Func"] = Item_AddItem
	tDemonTower_Award[1][2]["Regular"][4][2]["Param"] = "3002030 0 3"
	
	tDemonTower_Award[1][2]["Regular"][5] = {}
	tDemonTower_Award[1][2]["Regular"][5][1] = {}
	tDemonTower_Award[1][2]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[1][2]["Regular"][5][1]["Param"] = "3008967 0 0 0 1440 1"
	tDemonTower_Award[1][2]["Regular"][5][2] = {}
	tDemonTower_Award[1][2]["Regular"][5][2]["Func"] = Item_AddItem
	tDemonTower_Award[1][2]["Regular"][5][2]["Param"] = "3002030 0 5"
	
	
	--第二层
	tDemonTower_Award[2] = {}
	tDemonTower_Award[2][1] = {}
	tDemonTower_Award[2][1]["Exra"] = {}
	tDemonTower_Award[2][1]["Exra"][1] = {}
	tDemonTower_Award[2][1]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[2][1]["Exra"][1]["Param"] = "3314911"
	tDemonTower_Award[2][1]["Regular"] = {} 
	tDemonTower_Award[2][1]["Regular"][1] = {}
	tDemonTower_Award[2][1]["Regular"][1][1] = {}
	tDemonTower_Award[2][1]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[2][1]["Regular"][1][1]["Param"] = "3008956 0 0 0 1440 1"
	
	tDemonTower_Award[2][1]["Regular"][2] = {}
	tDemonTower_Award[2][1]["Regular"][2][1] = {}
	tDemonTower_Award[2][1]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[2][1]["Regular"][2][1]["Param"] = "3008957 0 0 0 1440 1"
	
	tDemonTower_Award[2][1]["Regular"][3] = {}
	tDemonTower_Award[2][1]["Regular"][3][1] = {}
	tDemonTower_Award[2][1]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[2][1]["Regular"][3][1]["Param"] = "3008958 0 0 0 1440 1"
	tDemonTower_Award[2][1]["Regular"][3][2] = {}
	tDemonTower_Award[2][1]["Regular"][3][2]["Func"] = Item_AddItem
	tDemonTower_Award[2][1]["Regular"][3][2]["Param"] = "3314911"
	
	tDemonTower_Award[2][1]["Regular"][4] = {}
	tDemonTower_Award[2][1]["Regular"][4][1] = {}
	tDemonTower_Award[2][1]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[2][1]["Regular"][4][1]["Param"] = "3008959 0 0 0 1440 1"
	tDemonTower_Award[2][1]["Regular"][4][2] = {}
	tDemonTower_Award[2][1]["Regular"][4][2]["Func"] = Item_AddItem
	tDemonTower_Award[2][1]["Regular"][4][2]["Param"] = "3314911 0 2"
	
	tDemonTower_Award[2][1]["Regular"][5] = {}
	tDemonTower_Award[2][1]["Regular"][5][1] = {}
	tDemonTower_Award[2][1]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[2][1]["Regular"][5][1]["Param"] = "3008962 0 0 0 1440 1"
	tDemonTower_Award[2][1]["Regular"][5][2] = {}
	tDemonTower_Award[2][1]["Regular"][5][2]["Func"] = Item_AddItem
	tDemonTower_Award[2][1]["Regular"][5][2]["Param"] = "3314911 0 3"
	
	--第二层困难难度
	tDemonTower_Award[2][2] = {}
	tDemonTower_Award[2][2]["Exra"] = {}
	tDemonTower_Award[2][2]["Exra"][1] = {}
	tDemonTower_Award[2][2]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[2][2]["Exra"][1]["Param"] = "3314911 0 3"
	tDemonTower_Award[2][2]["Regular"] = {} 
	tDemonTower_Award[2][2]["Regular"][1] = {}
	tDemonTower_Award[2][2]["Regular"][1][1] = {}
	tDemonTower_Award[2][2]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[2][2]["Regular"][1][1]["Param"] = "3008957 0 0 0 1440 1"
	
	tDemonTower_Award[2][2]["Regular"][2] = {}
	tDemonTower_Award[2][2]["Regular"][2][1] = {}
	tDemonTower_Award[2][2]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[2][2]["Regular"][2][1]["Param"] = "3008959 0 0 0 1440 1"
	tDemonTower_Award[2][2]["Regular"][2][2] = {}
	tDemonTower_Award[2][2]["Regular"][2][2]["Func"] = Item_AddItem
	tDemonTower_Award[2][2]["Regular"][2][2]["Param"] = "3314911"
	
	tDemonTower_Award[2][2]["Regular"][3] = {}
	tDemonTower_Award[2][2]["Regular"][3][1] = {}
	tDemonTower_Award[2][2]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[2][2]["Regular"][3][1]["Param"] = "3008962 0 0 0 1440 1"
	tDemonTower_Award[2][2]["Regular"][3][2] = {}
	tDemonTower_Award[2][2]["Regular"][3][2]["Func"] = Item_AddItem
	tDemonTower_Award[2][2]["Regular"][3][2]["Param"] = "3314911 0 2"
	
	tDemonTower_Award[2][2]["Regular"][4] = {}
	tDemonTower_Award[2][2]["Regular"][4][1] = {}
	tDemonTower_Award[2][2]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[2][2]["Regular"][4][1]["Param"] = "3008964 0 0 0 1440 1"
	tDemonTower_Award[2][2]["Regular"][4][2] = {}
	tDemonTower_Award[2][2]["Regular"][4][2]["Func"] = Item_AddItem
	tDemonTower_Award[2][2]["Regular"][4][2]["Param"] = "3314911 0 3"
	
	tDemonTower_Award[2][2]["Regular"][5] = {}
	tDemonTower_Award[2][2]["Regular"][5][1] = {}
	tDemonTower_Award[2][2]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[2][2]["Regular"][5][1]["Param"] = "3008967 0 0 0 1440 1"
	tDemonTower_Award[2][2]["Regular"][5][2] = {}
	tDemonTower_Award[2][2]["Regular"][5][2]["Func"] = Item_AddItem
	tDemonTower_Award[2][2]["Regular"][5][2]["Param"] = "3314911 0 5"
	
	
	--第三层
	tDemonTower_Award[3] = {}
	tDemonTower_Award[3][1] = {}
	tDemonTower_Award[3][1]["Exra"] = {}
	tDemonTower_Award[3][1]["Exra"][1] = {}
	tDemonTower_Award[3][1]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[3][1]["Exra"][1]["Param"] = "3314912"
	tDemonTower_Award[3][1]["Regular"] = {} 
	tDemonTower_Award[3][1]["Regular"][1] = {}
	tDemonTower_Award[3][1]["Regular"][1][1] = {}
	tDemonTower_Award[3][1]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[3][1]["Regular"][1][1]["Param"] = "3008956 0 0 0 1440 1"
	
	tDemonTower_Award[3][1]["Regular"][2] = {}
	tDemonTower_Award[3][1]["Regular"][2][1] = {}
	tDemonTower_Award[3][1]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[3][1]["Regular"][2][1]["Param"] = "3008957 0 0 0 1440 1"
	
	tDemonTower_Award[3][1]["Regular"][3] = {}
	tDemonTower_Award[3][1]["Regular"][3][1] = {}
	tDemonTower_Award[3][1]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[3][1]["Regular"][3][1]["Param"] = "3008958 0 0 0 1440 1"
	tDemonTower_Award[3][1]["Regular"][3][2] = {}
	tDemonTower_Award[3][1]["Regular"][3][2]["Func"] = Item_AddItem
	tDemonTower_Award[3][1]["Regular"][3][2]["Param"] = "3314912"
	
	tDemonTower_Award[3][1]["Regular"][4] = {}
	tDemonTower_Award[3][1]["Regular"][4][1] = {}
	tDemonTower_Award[3][1]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[3][1]["Regular"][4][1]["Param"] = "3008959 0 0 0 1440 1"
	tDemonTower_Award[3][1]["Regular"][4][2] = {}
	tDemonTower_Award[3][1]["Regular"][4][2]["Func"] = Item_AddItem
	tDemonTower_Award[3][1]["Regular"][4][2]["Param"] = "3314912 0 2"
	
	tDemonTower_Award[3][1]["Regular"][5] = {}
	tDemonTower_Award[3][1]["Regular"][5][1] = {}
	tDemonTower_Award[3][1]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[3][1]["Regular"][5][1]["Param"] = "3008962 0 0 0 1440 1"
	tDemonTower_Award[3][1]["Regular"][5][2] = {}
	tDemonTower_Award[3][1]["Regular"][5][2]["Func"] = Item_AddItem
	tDemonTower_Award[3][1]["Regular"][5][2]["Param"] = "3314912 0 3"
	
	--第三层困难难度
	tDemonTower_Award[3][2] = {}
	tDemonTower_Award[3][2]["Exra"] = {}
	tDemonTower_Award[3][2]["Exra"][1] = {}
	tDemonTower_Award[3][2]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[3][2]["Exra"][1]["Param"] = "3314912 0 3"
	tDemonTower_Award[3][2]["Regular"] = {} 
	tDemonTower_Award[3][2]["Regular"][1] = {}
	tDemonTower_Award[3][2]["Regular"][1][1] = {}
	tDemonTower_Award[3][2]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[3][2]["Regular"][1][1]["Param"] = "3008957 0 0 0 1440 1"
	
	tDemonTower_Award[3][2]["Regular"][2] = {}
	tDemonTower_Award[3][2]["Regular"][2][1] = {}
	tDemonTower_Award[3][2]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[3][2]["Regular"][2][1]["Param"] = "3008959 0 0 0 1440 1"
	tDemonTower_Award[3][2]["Regular"][2][2] = {}
	tDemonTower_Award[3][2]["Regular"][2][2]["Func"] = Item_AddItem
	tDemonTower_Award[3][2]["Regular"][2][2]["Param"] = "3314912"
	
	tDemonTower_Award[3][2]["Regular"][3] = {}
	tDemonTower_Award[3][2]["Regular"][3][1] = {}
	tDemonTower_Award[3][2]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[3][2]["Regular"][3][1]["Param"] = "3008962 0 0 0 1440 1"
	tDemonTower_Award[3][2]["Regular"][3][2] = {}
	tDemonTower_Award[3][2]["Regular"][3][2]["Func"] = Item_AddItem
	tDemonTower_Award[3][2]["Regular"][3][2]["Param"] = "3314912 0 2"
	
	tDemonTower_Award[3][2]["Regular"][4] = {}
	tDemonTower_Award[3][2]["Regular"][4][1] = {}
	tDemonTower_Award[3][2]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[3][2]["Regular"][4][1]["Param"] = "3008964 0 0 0 1440 1"
	tDemonTower_Award[3][2]["Regular"][4][2] = {}
	tDemonTower_Award[3][2]["Regular"][4][2]["Func"] = Item_AddItem
	tDemonTower_Award[3][2]["Regular"][4][2]["Param"] = "3314912 0 3"
	
	tDemonTower_Award[3][2]["Regular"][5] = {}
	tDemonTower_Award[3][2]["Regular"][5][1] = {}
	tDemonTower_Award[3][2]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[3][2]["Regular"][5][1]["Param"] = "3008967 0 0 0 1440 1"
	tDemonTower_Award[3][2]["Regular"][5][2] = {}
	tDemonTower_Award[3][2]["Regular"][5][2]["Func"] = Item_AddItem
	tDemonTower_Award[3][2]["Regular"][5][2]["Param"] = "3314912 0 5"
	
	
	--第四层
	tDemonTower_Award[4] = {}
	tDemonTower_Award[4][1] = {}
	tDemonTower_Award[4][1]["Exra"] = {}
	tDemonTower_Award[4][1]["Exra"][1] = {}
	tDemonTower_Award[4][1]["Exra"][1]["Prob"] = 3500
	tDemonTower_Award[4][1]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[4][1]["Exra"][1]["Param"] = "3008729"
	tDemonTower_Award[4][1]["Regular"] = {} 
	tDemonTower_Award[4][1]["Regular"][1] = {}
	tDemonTower_Award[4][1]["Regular"][1][1] = {}
	tDemonTower_Award[4][1]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[4][1]["Regular"][1][1]["Param"] = "3008972 0 0 0 1440 1"
	
	tDemonTower_Award[4][1]["Regular"][2] = {}
	tDemonTower_Award[4][1]["Regular"][2][1] = {}
	tDemonTower_Award[4][1]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[4][1]["Regular"][2][1]["Param"] = "3008973 0 0 0 1440 1"
	
	tDemonTower_Award[4][1]["Regular"][3] = {}
	tDemonTower_Award[4][1]["Regular"][3][1] = {}
	tDemonTower_Award[4][1]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[4][1]["Regular"][3][1]["Param"] = "3008959 0 0 0 1440 1"
	tDemonTower_Award[4][1]["Regular"][3][2] = {}
	tDemonTower_Award[4][1]["Regular"][3][2]["Func"] = User_AddCultivation
	tDemonTower_Award[4][1]["Regular"][3][2]["Param"] = "40"
	
	tDemonTower_Award[4][1]["Regular"][4] = {}
	tDemonTower_Award[4][1]["Regular"][4][1] = {}
	tDemonTower_Award[4][1]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[4][1]["Regular"][4][1]["Param"] = "3008961 0 0 0 1440 1"
	tDemonTower_Award[4][1]["Regular"][4][2] = {}
	tDemonTower_Award[4][1]["Regular"][4][2]["Func"] = User_AddCultivation
	tDemonTower_Award[4][1]["Regular"][4][2]["Param"] = "80"
	
	tDemonTower_Award[4][1]["Regular"][5] = {}
	tDemonTower_Award[4][1]["Regular"][5][1] = {}
	tDemonTower_Award[4][1]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[4][1]["Regular"][5][1]["Param"] = "3008964 0 0 0 1440 1"
	tDemonTower_Award[4][1]["Regular"][5][2] = {}
	tDemonTower_Award[4][1]["Regular"][5][2]["Func"] = User_AddCultivation
	tDemonTower_Award[4][1]["Regular"][5][2]["Param"] = "120"
	
	--第四层困难难度
	tDemonTower_Award[4][2] = {}
	tDemonTower_Award[4][2]["Exra"] = {}
	tDemonTower_Award[4][2]["Exra"][1] = {}
	tDemonTower_Award[4][2]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[4][2]["Exra"][1]["Param"] = "3008729"
	tDemonTower_Award[4][2]["Regular"] = {} 
	tDemonTower_Award[4][2]["Regular"][1] = {}
	tDemonTower_Award[4][2]["Regular"][1][1] = {}
	tDemonTower_Award[4][2]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[4][2]["Regular"][1][1]["Param"] = "3008973 0 0 0 1440 1"
	
	tDemonTower_Award[4][2]["Regular"][2] = {}
	tDemonTower_Award[4][2]["Regular"][2][1] = {}
	tDemonTower_Award[4][2]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[4][2]["Regular"][2][1]["Param"] = "3008961 0 0 0 1440 1"
	tDemonTower_Award[4][2]["Regular"][2][2] = {}
	tDemonTower_Award[4][2]["Regular"][2][2]["Func"] = User_AddCultivation
	tDemonTower_Award[4][2]["Regular"][2][2]["Param"] = "40"
	
	tDemonTower_Award[4][2]["Regular"][3] = {}
	tDemonTower_Award[4][2]["Regular"][3][1] = {}
	tDemonTower_Award[4][2]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[4][2]["Regular"][3][1]["Param"] = "3008964 0 0 0 1440 1"
	tDemonTower_Award[4][2]["Regular"][3][2] = {}
	tDemonTower_Award[4][2]["Regular"][3][2]["Func"] = User_AddCultivation
	tDemonTower_Award[4][2]["Regular"][3][2]["Param"] = "80"
	
	tDemonTower_Award[4][2]["Regular"][4] = {}
	tDemonTower_Award[4][2]["Regular"][4][1] = {}
	tDemonTower_Award[4][2]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[4][2]["Regular"][4][1]["Param"] = "3008966 0 0 0 1440 1"
	tDemonTower_Award[4][2]["Regular"][4][2] = {}
	tDemonTower_Award[4][2]["Regular"][4][2]["Func"] = User_AddCultivation
	tDemonTower_Award[4][2]["Regular"][4][2]["Param"] = "120"
	
	tDemonTower_Award[4][2]["Regular"][5] = {}
	tDemonTower_Award[4][2]["Regular"][5][1] = {}
	tDemonTower_Award[4][2]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[4][2]["Regular"][5][1]["Param"] = "3008969 0 0 0 1440 1"
	tDemonTower_Award[4][2]["Regular"][5][2] = {}
	tDemonTower_Award[4][2]["Regular"][5][2]["Func"] = User_AddCultivation
	tDemonTower_Award[4][2]["Regular"][5][2]["Param"] = "200"
	
	
	--第五层
	tDemonTower_Award[5] = {}
	tDemonTower_Award[5][1] = {}
	tDemonTower_Award[5][1]["Exra"] = {}
	tDemonTower_Award[5][1]["Exra"][1] = {}
	tDemonTower_Award[5][1]["Exra"][1]["Prob"] = 3500
	tDemonTower_Award[5][1]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[5][1]["Exra"][1]["Param"] = "3007311"
	tDemonTower_Award[5][1]["Regular"] = {} 
	tDemonTower_Award[5][1]["Regular"][1] = {}
	tDemonTower_Award[5][1]["Regular"][1][1] = {}
	tDemonTower_Award[5][1]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[5][1]["Regular"][1][1]["Param"] = "3008972 0 0 0 1440 1"
	
	tDemonTower_Award[5][1]["Regular"][2] = {}
	tDemonTower_Award[5][1]["Regular"][2][1] = {}
	tDemonTower_Award[5][1]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[5][1]["Regular"][2][1]["Param"] = "3008973 0 0 0 1440 1"
	
	tDemonTower_Award[5][1]["Regular"][3] = {}
	tDemonTower_Award[5][1]["Regular"][3][1] = {}
	tDemonTower_Award[5][1]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[5][1]["Regular"][3][1]["Param"] = "3008959 0 0 0 1440 1"
	tDemonTower_Award[5][1]["Regular"][3][2] = {}
	tDemonTower_Award[5][1]["Regular"][3][2]["Func"] = User_AddCultivation
	tDemonTower_Award[5][1]["Regular"][3][2]["Param"] = "40"
	
	tDemonTower_Award[5][1]["Regular"][4] = {}
	tDemonTower_Award[5][1]["Regular"][4][1] = {}
	tDemonTower_Award[5][1]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[5][1]["Regular"][4][1]["Param"] = "3008961 0 0 0 1440 1"
	tDemonTower_Award[5][1]["Regular"][4][2] = {}
	tDemonTower_Award[5][1]["Regular"][4][2]["Func"] = User_AddCultivation
	tDemonTower_Award[5][1]["Regular"][4][2]["Param"] = "80"
	
	tDemonTower_Award[5][1]["Regular"][5] = {}
	tDemonTower_Award[5][1]["Regular"][5][1] = {}
	tDemonTower_Award[5][1]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[5][1]["Regular"][5][1]["Param"] = "3008964 0 0 0 1440 1"
	tDemonTower_Award[5][1]["Regular"][5][2] = {}
	tDemonTower_Award[5][1]["Regular"][5][2]["Func"] = User_AddCultivation
	tDemonTower_Award[5][1]["Regular"][5][2]["Param"] = "120"
	
	--第五层困难难度
	tDemonTower_Award[5][2] = {}
	tDemonTower_Award[5][2]["Exra"] = {}
	tDemonTower_Award[5][2]["Exra"][1] = {}
	tDemonTower_Award[5][2]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[5][2]["Exra"][1]["Param"] = "3007311"
	tDemonTower_Award[5][2]["Regular"] = {} 
	tDemonTower_Award[5][2]["Regular"][1] = {}
	tDemonTower_Award[5][2]["Regular"][1][1] = {}
	tDemonTower_Award[5][2]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[5][2]["Regular"][1][1]["Param"] = "3008973 0 0 0 1440 1"
	
	tDemonTower_Award[5][2]["Regular"][2] = {}
	tDemonTower_Award[5][2]["Regular"][2][1] = {}
	tDemonTower_Award[5][2]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[5][2]["Regular"][2][1]["Param"] = "3008961 0 0 0 1440 1"
	tDemonTower_Award[5][2]["Regular"][2][2] = {}
	tDemonTower_Award[5][2]["Regular"][2][2]["Func"] = User_AddCultivation
	tDemonTower_Award[5][2]["Regular"][2][2]["Param"] = "40"
	
	tDemonTower_Award[5][2]["Regular"][3] = {}
	tDemonTower_Award[5][2]["Regular"][3][1] = {}
	tDemonTower_Award[5][2]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[5][2]["Regular"][3][1]["Param"] = "3008964 0 0 0 1440 1"
	tDemonTower_Award[5][2]["Regular"][3][2] = {}
	tDemonTower_Award[5][2]["Regular"][3][2]["Func"] = User_AddCultivation
	tDemonTower_Award[5][2]["Regular"][3][2]["Param"] = "80"
	
	tDemonTower_Award[5][2]["Regular"][4] = {}
	tDemonTower_Award[5][2]["Regular"][4][1] = {}
	tDemonTower_Award[5][2]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[5][2]["Regular"][4][1]["Param"] = "3008966 0 0 0 1440 1"
	tDemonTower_Award[5][2]["Regular"][4][2] = {}
	tDemonTower_Award[5][2]["Regular"][4][2]["Func"] = User_AddCultivation
	tDemonTower_Award[5][2]["Regular"][4][2]["Param"] = "120"
	
	tDemonTower_Award[5][2]["Regular"][5] = {}
	tDemonTower_Award[5][2]["Regular"][5][1] = {}
	tDemonTower_Award[5][2]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[5][2]["Regular"][5][1]["Param"] = "3008969 0 0 0 1440 1"
	tDemonTower_Award[5][2]["Regular"][5][2] = {}
	tDemonTower_Award[5][2]["Regular"][5][2]["Func"] = User_AddCultivation
	tDemonTower_Award[5][2]["Regular"][5][2]["Param"] = "200"
	
	
	--第六层
	tDemonTower_Award[6] = {}
	tDemonTower_Award[6][1] = {}
	tDemonTower_Award[6][1]["Exra"] = {}
	tDemonTower_Award[6][1]["Exra"][1] = {}
	tDemonTower_Award[6][1]["Exra"][1]["Prob"] = 3500
	tDemonTower_Award[6][1]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[6][1]["Exra"][1]["Param"] = "3008730"
	tDemonTower_Award[6][1]["Regular"] = {} 
	tDemonTower_Award[6][1]["Regular"][1] = {}
	tDemonTower_Award[6][1]["Regular"][1][1] = {}
	tDemonTower_Award[6][1]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[6][1]["Regular"][1][1]["Param"] = "3008974 0 0 0 1440 1"
	
	tDemonTower_Award[6][1]["Regular"][2] = {}
	tDemonTower_Award[6][1]["Regular"][2][1] = {}
	tDemonTower_Award[6][1]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[6][1]["Regular"][2][1]["Param"] = "3008975 0 0 0 1440 1"
	
	tDemonTower_Award[6][1]["Regular"][3] = {}
	tDemonTower_Award[6][1]["Regular"][3][1] = {}
	tDemonTower_Award[6][1]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[6][1]["Regular"][3][1]["Param"] = "3008960 0 0 0 1440 1"
	tDemonTower_Award[6][1]["Regular"][3][2] = {}
	tDemonTower_Award[6][1]["Regular"][3][2]["Func"] = User_AddCultivation
	tDemonTower_Award[6][1]["Regular"][3][2]["Param"] = "50"
	
	tDemonTower_Award[6][1]["Regular"][4] = {}
	tDemonTower_Award[6][1]["Regular"][4][1] = {}
	tDemonTower_Award[6][1]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[6][1]["Regular"][4][1]["Param"] = "3008963 0 0 0 1440 1"
	tDemonTower_Award[6][1]["Regular"][4][2] = {}
	tDemonTower_Award[6][1]["Regular"][4][2]["Func"] = User_AddCultivation
	tDemonTower_Award[6][1]["Regular"][4][2]["Param"] = "100"
	
	tDemonTower_Award[6][1]["Regular"][5] = {}
	tDemonTower_Award[6][1]["Regular"][5][1] = {}
	tDemonTower_Award[6][1]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[6][1]["Regular"][5][1]["Param"] = "3008965 0 0 0 1440 1"
	tDemonTower_Award[6][1]["Regular"][5][2] = {}
	tDemonTower_Award[6][1]["Regular"][5][2]["Func"] = User_AddCultivation
	tDemonTower_Award[6][1]["Regular"][5][2]["Param"] = "150"
	
	--第六层困难难度
	tDemonTower_Award[6][2] = {}
	tDemonTower_Award[6][2]["Exra"] = {}
	tDemonTower_Award[6][2]["Exra"][1] = {}
	tDemonTower_Award[6][2]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[6][2]["Exra"][1]["Param"] = "3008730"
	tDemonTower_Award[6][2]["Regular"] = {} 
	tDemonTower_Award[6][2]["Regular"][1] = {}
	tDemonTower_Award[6][2]["Regular"][1][1] = {}
	tDemonTower_Award[6][2]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[6][2]["Regular"][1][1]["Param"] = "3008975 0 0 0 1440 1"
	
	tDemonTower_Award[6][2]["Regular"][2] = {}
	tDemonTower_Award[6][2]["Regular"][2][1] = {}
	tDemonTower_Award[6][2]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[6][2]["Regular"][2][1]["Param"] = "3008963 0 0 0 1440 1"
	tDemonTower_Award[6][2]["Regular"][2][2] = {}
	tDemonTower_Award[6][2]["Regular"][2][2]["Func"] = User_AddCultivation
	tDemonTower_Award[6][2]["Regular"][2][2]["Param"] = "50"
	
	tDemonTower_Award[6][2]["Regular"][3] = {}
	tDemonTower_Award[6][2]["Regular"][3][1] = {}
	tDemonTower_Award[6][2]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[6][2]["Regular"][3][1]["Param"] = "3008965 0 0 0 1440 1"
	tDemonTower_Award[6][2]["Regular"][3][2] = {}
	tDemonTower_Award[6][2]["Regular"][3][2]["Func"] = User_AddCultivation
	tDemonTower_Award[6][2]["Regular"][3][2]["Param"] = "100"
	
	tDemonTower_Award[6][2]["Regular"][4] = {}
	tDemonTower_Award[6][2]["Regular"][4][1] = {}
	tDemonTower_Award[6][2]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[6][2]["Regular"][4][1]["Param"] = "3008968 0 0 0 1440 1"
	tDemonTower_Award[6][2]["Regular"][4][2] = {}
	tDemonTower_Award[6][2]["Regular"][4][2]["Func"] = User_AddCultivation
	tDemonTower_Award[6][2]["Regular"][4][2]["Param"] = "150"
	
	tDemonTower_Award[6][2]["Regular"][5] = {}
	tDemonTower_Award[6][2]["Regular"][5][1] = {}
	tDemonTower_Award[6][2]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[6][2]["Regular"][5][1]["Param"] = "3008970 0 0 0 1440 1"
	tDemonTower_Award[6][2]["Regular"][5][2] = {}
	tDemonTower_Award[6][2]["Regular"][5][2]["Func"] = User_AddCultivation
	tDemonTower_Award[6][2]["Regular"][5][2]["Param"] = "250"
	
	
	--第七层
	tDemonTower_Award[7] = {}
	tDemonTower_Award[7][1] = {}
	tDemonTower_Award[7][1]["Exra"] = {}
	tDemonTower_Award[7][1]["Exra"][1] = {}
	tDemonTower_Award[7][1]["Exra"][1]["Prob"] = 3500
	tDemonTower_Award[7][1]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[7][1]["Exra"][1]["Param"] = "3008731"
	tDemonTower_Award[7][1]["Regular"] = {} 
	tDemonTower_Award[7][1]["Regular"][1] = {}
	tDemonTower_Award[7][1]["Regular"][1][1] = {}
	tDemonTower_Award[7][1]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[7][1]["Regular"][1][1]["Param"] = "3008974 0 0 0 1440 1"
	
	tDemonTower_Award[7][1]["Regular"][2] = {}
	tDemonTower_Award[7][1]["Regular"][2][1] = {}
	tDemonTower_Award[7][1]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[7][1]["Regular"][2][1]["Param"] = "3008975 0 0 0 1440 1"
	
	tDemonTower_Award[7][1]["Regular"][3] = {}
	tDemonTower_Award[7][1]["Regular"][3][1] = {}
	tDemonTower_Award[7][1]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[7][1]["Regular"][3][1]["Param"] = "3008960 0 0 0 1440 1"
	tDemonTower_Award[7][1]["Regular"][3][2] = {}
	tDemonTower_Award[7][1]["Regular"][3][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[7][1]["Regular"][3][2]["Param"] = "50"
	
	tDemonTower_Award[7][1]["Regular"][4] = {}
	tDemonTower_Award[7][1]["Regular"][4][1] = {}
	tDemonTower_Award[7][1]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[7][1]["Regular"][4][1]["Param"] = "3008963 0 0 0 1440 1"
	tDemonTower_Award[7][1]["Regular"][4][2] = {}
	tDemonTower_Award[7][1]["Regular"][4][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[7][1]["Regular"][4][2]["Param"] = "100"
	
	tDemonTower_Award[7][1]["Regular"][5] = {}
	tDemonTower_Award[7][1]["Regular"][5][1] = {}
	tDemonTower_Award[7][1]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[7][1]["Regular"][5][1]["Param"] = "3008965 0 0 0 1440 1"
	tDemonTower_Award[7][1]["Regular"][5][2] = {}
	tDemonTower_Award[7][1]["Regular"][5][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[7][1]["Regular"][5][2]["Param"] = "150"
	
	--第七层困难难度
	tDemonTower_Award[7][2] = {}
	tDemonTower_Award[7][2]["Exra"] = {}
	tDemonTower_Award[7][2]["Exra"][1] = {}
	tDemonTower_Award[7][2]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[7][2]["Exra"][1]["Param"] = "3008731"
	tDemonTower_Award[7][2]["Regular"] = {} 
	tDemonTower_Award[7][2]["Regular"][1] = {}
	tDemonTower_Award[7][2]["Regular"][1][1] = {}
	tDemonTower_Award[7][2]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[7][2]["Regular"][1][1]["Param"] = "3008975 0 0 0 1440 1"
	
	tDemonTower_Award[7][2]["Regular"][2] = {}
	tDemonTower_Award[7][2]["Regular"][2][1] = {}
	tDemonTower_Award[7][2]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[7][2]["Regular"][2][1]["Param"] = "3008963 0 0 0 1440 1"
	tDemonTower_Award[7][2]["Regular"][2][2] = {}
	tDemonTower_Award[7][2]["Regular"][2][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[7][2]["Regular"][2][2]["Param"] = "50"
	
	tDemonTower_Award[7][2]["Regular"][3] = {}
	tDemonTower_Award[7][2]["Regular"][3][1] = {}
	tDemonTower_Award[7][2]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[7][2]["Regular"][3][1]["Param"] = "3008965 0 0 0 1440 1"
	tDemonTower_Award[7][2]["Regular"][3][2] = {}
	tDemonTower_Award[7][2]["Regular"][3][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[7][2]["Regular"][3][2]["Param"] = "100"
	
	tDemonTower_Award[7][2]["Regular"][4] = {}
	tDemonTower_Award[7][2]["Regular"][4][1] = {}
	tDemonTower_Award[7][2]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[7][2]["Regular"][4][1]["Param"] = "3008968 0 0 0 1440 1"
	tDemonTower_Award[7][2]["Regular"][4][2] = {}
	tDemonTower_Award[7][2]["Regular"][4][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[7][2]["Regular"][4][2]["Param"] = "150"
	
	tDemonTower_Award[7][2]["Regular"][5] = {}
	tDemonTower_Award[7][2]["Regular"][5][1] = {}
	tDemonTower_Award[7][2]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[7][2]["Regular"][5][1]["Param"] = "3008970 0 0 0 1440 1"
	tDemonTower_Award[7][2]["Regular"][5][2] = {}
	tDemonTower_Award[7][2]["Regular"][5][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[7][2]["Regular"][5][2]["Param"] = "250"
	
	
	--第八层
	tDemonTower_Award[8] = {}
	tDemonTower_Award[8][1] = {}
	tDemonTower_Award[8][1]["Exra"] = {}
	tDemonTower_Award[8][1]["Exra"][1] = {}
	tDemonTower_Award[8][1]["Exra"][1]["Prob"] = 3500
	tDemonTower_Award[8][1]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[8][1]["Exra"][1]["Param"] = "3002308"
	tDemonTower_Award[8][1]["Regular"] = {} 
	tDemonTower_Award[8][1]["Regular"][1] = {}
	tDemonTower_Award[8][1]["Regular"][1][1] = {}
	tDemonTower_Award[8][1]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[8][1]["Regular"][1][1]["Param"] = "3008974 0 0 0 1440 1"
	
	tDemonTower_Award[8][1]["Regular"][2] = {}
	tDemonTower_Award[8][1]["Regular"][2][1] = {}
	tDemonTower_Award[8][1]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[8][1]["Regular"][2][1]["Param"] = "3008975 0 0 0 1440 1"
	
	tDemonTower_Award[8][1]["Regular"][3] = {}
	tDemonTower_Award[8][1]["Regular"][3][1] = {}
	tDemonTower_Award[8][1]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[8][1]["Regular"][3][1]["Param"] = "3008960 0 0 0 1440 1"
	tDemonTower_Award[8][1]["Regular"][3][2] = {}
	tDemonTower_Award[8][1]["Regular"][3][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[8][1]["Regular"][3][2]["Param"] = "60"
	
	tDemonTower_Award[8][1]["Regular"][4] = {}
	tDemonTower_Award[8][1]["Regular"][4][1] = {}
	tDemonTower_Award[8][1]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[8][1]["Regular"][4][1]["Param"] = "3008963 0 0 0 1440 1"
	tDemonTower_Award[8][1]["Regular"][4][2] = {}
	tDemonTower_Award[8][1]["Regular"][4][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[8][1]["Regular"][4][2]["Param"] = "120"
	
	tDemonTower_Award[8][1]["Regular"][5] = {}
	tDemonTower_Award[8][1]["Regular"][5][1] = {}
	tDemonTower_Award[8][1]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[8][1]["Regular"][5][1]["Param"] = "3008965 0 0 0 1440 1"
	tDemonTower_Award[8][1]["Regular"][5][2] = {}
	tDemonTower_Award[8][1]["Regular"][5][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[8][1]["Regular"][5][2]["Param"] = "180"
	
	--第八层困难难度
	tDemonTower_Award[8][2] = {}
	tDemonTower_Award[8][2]["Exra"] = {}
	tDemonTower_Award[8][2]["Exra"][1] = {}
	tDemonTower_Award[8][2]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[8][2]["Exra"][1]["Param"] = "3002308"
	tDemonTower_Award[8][2]["Regular"] = {} 
	tDemonTower_Award[8][2]["Regular"][1] = {}
	tDemonTower_Award[8][2]["Regular"][1][1] = {}
	tDemonTower_Award[8][2]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[8][2]["Regular"][1][1]["Param"] = "3008975 0 0 0 1440 1"
	
	tDemonTower_Award[8][2]["Regular"][2] = {}
	tDemonTower_Award[8][2]["Regular"][2][1] = {}
	tDemonTower_Award[8][2]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[8][2]["Regular"][2][1]["Param"] = "3008963 0 0 0 1440 1"
	tDemonTower_Award[8][2]["Regular"][2][2] = {}
	tDemonTower_Award[8][2]["Regular"][2][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[8][2]["Regular"][2][2]["Param"] = "60"
	
	tDemonTower_Award[8][2]["Regular"][3] = {}
	tDemonTower_Award[8][2]["Regular"][3][1] = {}
	tDemonTower_Award[8][2]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[8][2]["Regular"][3][1]["Param"] = "3008965 0 0 0 1440 1"
	tDemonTower_Award[8][2]["Regular"][3][2] = {}
	tDemonTower_Award[8][2]["Regular"][3][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[8][2]["Regular"][3][2]["Param"] = "120"
	
	tDemonTower_Award[8][2]["Regular"][4] = {}
	tDemonTower_Award[8][2]["Regular"][4][1] = {}
	tDemonTower_Award[8][2]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[8][2]["Regular"][4][1]["Param"] = "3008968 0 0 0 1440 1"
	tDemonTower_Award[8][2]["Regular"][4][2] = {}
	tDemonTower_Award[8][2]["Regular"][4][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[8][2]["Regular"][4][2]["Param"] = "180"
	
	tDemonTower_Award[8][2]["Regular"][5] = {}
	tDemonTower_Award[8][2]["Regular"][5][1] = {}
	tDemonTower_Award[8][2]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[8][2]["Regular"][5][1]["Param"] = "3008970 0 0 0 1440 1"
	tDemonTower_Award[8][2]["Regular"][5][2] = {}
	tDemonTower_Award[8][2]["Regular"][5][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[8][2]["Regular"][5][2]["Param"] = "300"
	
	
	--第九层
	tDemonTower_Award[9] = {}
	tDemonTower_Award[9][1] = {}
	tDemonTower_Award[9][1]["Exra"] = {}
	tDemonTower_Award[9][1]["Exra"][1] = {}
	tDemonTower_Award[9][1]["Exra"][1]["Prob"] = 3500
	tDemonTower_Award[9][1]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[9][1]["Exra"][1]["Param"] = "3008732"
	tDemonTower_Award[9][1]["Regular"] = {} 
	tDemonTower_Award[9][1]["Regular"][1] = {}
	tDemonTower_Award[9][1]["Regular"][1][1] = {}
	tDemonTower_Award[9][1]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[9][1]["Regular"][1][1]["Param"] = "3008957 0 0 0 1440 1"
	
	tDemonTower_Award[9][1]["Regular"][2] = {}
	tDemonTower_Award[9][1]["Regular"][2][1] = {}
	tDemonTower_Award[9][1]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[9][1]["Regular"][2][1]["Param"] = "3008959 0 0 0 1440 1"
	
	tDemonTower_Award[9][1]["Regular"][3] = {}
	tDemonTower_Award[9][1]["Regular"][3][1] = {}
	tDemonTower_Award[9][1]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[9][1]["Regular"][3][1]["Param"] = "3008962 0 0 0 1440 1"
	tDemonTower_Award[9][1]["Regular"][3][2] = {}
	tDemonTower_Award[9][1]["Regular"][3][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[9][1]["Regular"][3][2]["Param"] = "100"
	
	tDemonTower_Award[9][1]["Regular"][4] = {}
	tDemonTower_Award[9][1]["Regular"][4][1] = {}
	tDemonTower_Award[9][1]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[9][1]["Regular"][4][1]["Param"] = "3008964 0 0 0 1440 1"
	tDemonTower_Award[9][1]["Regular"][4][2] = {}
	tDemonTower_Award[9][1]["Regular"][4][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[9][1]["Regular"][4][2]["Param"] = "200"
	
	tDemonTower_Award[9][1]["Regular"][5] = {}
	tDemonTower_Award[9][1]["Regular"][5][1] = {}
	tDemonTower_Award[9][1]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[9][1]["Regular"][5][1]["Param"] = "3008967 0 0 0 1440 1"
	tDemonTower_Award[9][1]["Regular"][5][2] = {}
	tDemonTower_Award[9][1]["Regular"][5][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[9][1]["Regular"][5][2]["Param"] = "300"
	
	--第九层困难难度
	tDemonTower_Award[9][2] = {}
	tDemonTower_Award[9][2]["Exra"] = {}
	tDemonTower_Award[9][2]["Exra"][1] = {}
	tDemonTower_Award[9][2]["Exra"][1]["Func"] = Item_AddItem
	tDemonTower_Award[9][2]["Exra"][1]["Param"] = "3008732"
	tDemonTower_Award[9][2]["Regular"] = {} 
	tDemonTower_Award[9][2]["Regular"][1] = {}
	tDemonTower_Award[9][2]["Regular"][1][1] = {}
	tDemonTower_Award[9][2]["Regular"][1][1]["Func"] = Item_AddItem
	tDemonTower_Award[9][2]["Regular"][1][1]["Param"] = "3008959 0 0 0 1440 1"
	
	tDemonTower_Award[9][2]["Regular"][2] = {}
	tDemonTower_Award[9][2]["Regular"][2][1] = {}
	tDemonTower_Award[9][2]["Regular"][2][1]["Func"] = Item_AddItem
	tDemonTower_Award[9][2]["Regular"][2][1]["Param"] = "3008964 0 0 0 1440 1"
	tDemonTower_Award[9][2]["Regular"][2][2] = {}
	tDemonTower_Award[9][2]["Regular"][2][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[9][2]["Regular"][2][2]["Param"] = "100"
	
	tDemonTower_Award[9][2]["Regular"][3] = {}
	tDemonTower_Award[9][2]["Regular"][3][1] = {}
	tDemonTower_Award[9][2]["Regular"][3][1]["Func"] = Item_AddItem
	tDemonTower_Award[9][2]["Regular"][3][1]["Param"] = "3008967 0 0 0 1440 1"
	tDemonTower_Award[9][2]["Regular"][3][2] = {}
	tDemonTower_Award[9][2]["Regular"][3][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[9][2]["Regular"][3][2]["Param"] = "200"
	
	tDemonTower_Award[9][2]["Regular"][4] = {}
	tDemonTower_Award[9][2]["Regular"][4][1] = {}
	tDemonTower_Award[9][2]["Regular"][4][1]["Func"] = Item_AddItem
	tDemonTower_Award[9][2]["Regular"][4][1]["Param"] = "3008969 0 0 0 1440 1"
	tDemonTower_Award[9][2]["Regular"][4][2] = {}
	tDemonTower_Award[9][2]["Regular"][4][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[9][2]["Regular"][4][2]["Param"] = "300"
	
	tDemonTower_Award[9][2]["Regular"][5] = {}
	tDemonTower_Award[9][2]["Regular"][5][1] = {}
	tDemonTower_Award[9][2]["Regular"][5][1]["Func"] = Item_AddItem
	tDemonTower_Award[9][2]["Regular"][5][1]["Param"] = "3008971 0 0 0 1440 1"
	tDemonTower_Award[9][2]["Regular"][5][2] = {}
	tDemonTower_Award[9][2]["Regular"][5][2]["Func"] = User_AddStrengthValue
	tDemonTower_Award[9][2]["Regular"][5][2]["Param"] = "500"

	
-- 炽热天石碎片
local tDemonTower_EmoneyDouble = {}
	tDemonTower_EmoneyDouble[1] = {}
	tDemonTower_EmoneyDouble[1]["DeleteItem"] = {}
	tDemonTower_EmoneyDouble[1]["DeleteItem"][1] = {}
	tDemonTower_EmoneyDouble[1]["DeleteItem"][1]["Id"] = 3008727
	tDemonTower_EmoneyDouble[1]["DeleteItem"][1]["ItemNum"] = 9
	tDemonTower_EmoneyDouble[1]["RewardEMoneyMono"] = {}
	tDemonTower_EmoneyDouble[1]["RewardEMoneyMono"]["Value"] = 270
	tDemonTower_EmoneyDouble[1]["Log"] = "0,0,3008727,9,12000530,2,3,270"

	tDemonTower_EmoneyDouble[2] = {}
	tDemonTower_EmoneyDouble[2]["DeleteItem"] = {}
	tDemonTower_EmoneyDouble[2]["DeleteItem"][1] = {}
	tDemonTower_EmoneyDouble[2]["DeleteItem"][1]["Id"] = 3008727
	tDemonTower_EmoneyDouble[2]["DeleteItem"][1]["ItemNum"] = 9
	tDemonTower_EmoneyDouble[2]["RewardEMoneyMono"] = {}
	tDemonTower_EmoneyDouble[2]["RewardEMoneyMono"]["Value"] = 540
	tDemonTower_EmoneyDouble[2]["Log"] = "0,0,3008727,9,12000530,2,3,540"
	
	
--------------------------------------------------概率配置部分------------------------------------------------

local tDemonTower_Prob = {}
	tDemonTower_Prob["Star"] = {}
	--普通奖励星级概率
	tDemonTower_Prob["Star"][1] = {}
	tDemonTower_Prob["Star"][1]["ItemChanceSum"] = 10000

	tDemonTower_Prob["Star"][1][1] = {}
	tDemonTower_Prob["Star"][1][1]["RandomItemChanceType"] = 2
	tDemonTower_Prob["Star"][1][1]["ItemChance"] = 3000
	tDemonTower_Prob["Star"][1][1]["Item_1"] = 1

	tDemonTower_Prob["Star"][1][2] = {}
	tDemonTower_Prob["Star"][1][2]["RandomItemChanceType"] = 2
	tDemonTower_Prob["Star"][1][2]["ItemChance"] = 3000
	tDemonTower_Prob["Star"][1][2]["Item_1"] = 2

	tDemonTower_Prob["Star"][1][3] = {}
	tDemonTower_Prob["Star"][1][3]["RandomItemChanceType"] = 2
	tDemonTower_Prob["Star"][1][3]["ItemChance"] = 2400
	tDemonTower_Prob["Star"][1][3]["Item_1"] = 3

	tDemonTower_Prob["Star"][1][4] = {}
	tDemonTower_Prob["Star"][1][4]["RandomItemChanceType"] = 2
	tDemonTower_Prob["Star"][1][4]["ItemChance"] = 1200
	tDemonTower_Prob["Star"][1][4]["Item_1"] = 4

	tDemonTower_Prob["Star"][1][5] = {}
	tDemonTower_Prob["Star"][1][5]["RandomItemChanceType"] = 2
	tDemonTower_Prob["Star"][1][5]["ItemChance"] = 400
	tDemonTower_Prob["Star"][1][5]["Item_1"] = 5
	
	--困难奖励星级概率
	tDemonTower_Prob["Star"][2] = {}
	tDemonTower_Prob["Star"][2]["ItemChanceSum"] = 10000

	tDemonTower_Prob["Star"][2][1] = {}
	tDemonTower_Prob["Star"][2][1]["RandomItemChanceType"] = 2
	tDemonTower_Prob["Star"][2][1]["ItemChance"] = 3600
	tDemonTower_Prob["Star"][2][1]["Item_1"] = 1

	tDemonTower_Prob["Star"][2][2] = {}
	tDemonTower_Prob["Star"][2][2]["RandomItemChanceType"] = 2
	tDemonTower_Prob["Star"][2][2]["ItemChance"] = 3600
	tDemonTower_Prob["Star"][2][2]["Item_1"] = 2

	tDemonTower_Prob["Star"][2][3] = {}
	tDemonTower_Prob["Star"][2][3]["RandomItemChanceType"] = 2
	tDemonTower_Prob["Star"][2][3]["ItemChance"] = 1800
	tDemonTower_Prob["Star"][2][3]["Item_1"] = 3

	tDemonTower_Prob["Star"][2][4] = {}
	tDemonTower_Prob["Star"][2][4]["RandomItemChanceType"] = 2
	tDemonTower_Prob["Star"][2][4]["ItemChance"] = 800
	tDemonTower_Prob["Star"][2][4]["Item_1"] = 4

	tDemonTower_Prob["Star"][2][5] = {}
	tDemonTower_Prob["Star"][2][5]["RandomItemChanceType"] = 2
	tDemonTower_Prob["Star"][2][5]["ItemChance"] = 200
	tDemonTower_Prob["Star"][2][5]["Item_1"] = 5


	tDemonTower_Prob[3008735] = {}
	tDemonTower_Prob[3008735][1] = {}
	tDemonTower_Prob[3008735][1]["ItemChanceSum"] = 10000

	tDemonTower_Prob[3008735][1][1] = {}
	tDemonTower_Prob[3008735][1][1]["RandomItemChanceType"] = 2
	tDemonTower_Prob[3008735][1][1]["ItemChance"] = 6000
	tDemonTower_Prob[3008735][1][1]["Item_1"] = 3

	tDemonTower_Prob[3008735][1][2] = {}
	tDemonTower_Prob[3008735][1][2]["RandomItemChanceType"] = 2
	tDemonTower_Prob[3008735][1][2]["ItemChance"] = 3000
	tDemonTower_Prob[3008735][1][2]["Item_1"] = 4

	tDemonTower_Prob[3008735][1][3] = {}
	tDemonTower_Prob[3008735][1][3]["RandomItemChanceType"] = 2
	tDemonTower_Prob[3008735][1][3]["ItemChance"] = 1000
	tDemonTower_Prob[3008735][1][3]["Item_1"] = 5


--------------------------------------------------Log-----------------------------------------------------------
local tDemonTower_Log = {}
	
	tDemonTower_Log["Emoney"] = {}
	
	tDemonTower_Log["Emoney"]["Refresh"] = "350	4427	1	1	1	"
	tDemonTower_Log["Emoney"]["Swap"] = {}
	tDemonTower_Log["Emoney"]["Swap"][1] = "350	4428	5	5	1	"
	tDemonTower_Log["Emoney"]["Swap"][2] = "350	4429	9	9	1	"
	
	tDemonTower_Log["Emoney"]["JinTian"] = "350	4133	27	27	1	"
	
	tDemonTower_Log["Emoney"]["Zengdian"] = "350	4439	0	0	270	"
	
	--碎片兑换赠点天石
	tDemonTower_Log["PieceToEmoney"] = "0,0,3008727,9,18000087,2,3,270"
	--烈焰精粹兑换成功
	tDemonTower_Log["PithySucc"] = "0,0,3008728[720027],1[1],18000087,2,1088000,1"
	--星月宝盒选择锁片
	tDemonTower_Log["SelDiamond"] = "0,0,3008732,1,18000087,2,%d,30"
	
	--玩家使用天石捐赠
	tDemonTower_Log["DonateByEmoney"] = "0,0,2,%d,18000087,2,0,0"
	--玩家使用流星卷捐赠
	tDemonTower_Log["DonateByMeteorScroll"] = "0,0,720027,%d,18000087,2,0,0"
	--玩家使用天石刷新
	tDemonTower_Log["RefreshByEmoney"] = "0,0,2,1,18000087,2,0,0"
	--玩家使用修行值刷新
	tDemonTower_Log["RefreshByCul"] = "0,0,6,25,18000087,2,0,0"
	--玩家使用灵力精魄刷新
	tDemonTower_Log["RefreshBySoul"] = "0,0,3008735,1,18000087,2,0,0"
	--得到灵力精魄
	tDemonTower_Log["AwardSoul"] = "0,0,0,0,18000087,2,3008735,1"
	
	--领取原禁天精英奖励
	tDemonTower_Log["AwardJinTian"] = "0,0,0,0,18000087,2,6[711211][729304],100[3][1]"
	
	--使用禁天灭妖符
	tDemonTower_Log["UseMieYao"] = "0,0,3600012,1,18000087,2,0,0"
	
	--兑换封魔礼包
	tDemonTower_Log["AwardFPack"] = {}
	tDemonTower_Log["AwardFPack"][720948] = "0,0,711211,3,18000087,2,720948,1"
	tDemonTower_Log["AwardFPack"][729594] = "0,0,711211,9,18000087,2,729594,1"
	--使用经验礼包获得经验
	tDemonTower_Log["AwardFPack"]["GetExp"] = "0,0,%d,1,18000087,2,4,%d"
	tDemonTower_Log["AwardFPack"]["GetStreng"] = "0,0,%d,1,18000087,2,12,%d"
	
	
--固定奖励，包含经验
	tDemonTower_Log["AwardByExp"] = {}
	--普通难度
	tDemonTower_Log["AwardByExp"][1] = {}
	--普通难度1层
	tDemonTower_Log["AwardByExp"][1][1] = {}
	tDemonTower_Log["AwardByExp"][1][1][1] = "0,0,0,0,18000087,2,3008727[3008956],1[1]"
	tDemonTower_Log["AwardByExp"][1][1][2] = "0,0,0,0,18000087,2,3008727[3008957],1[1]"
	tDemonTower_Log["AwardByExp"][1][1][3] = "0,0,0,0,18000087,2,3008727[3008958][3002030],1[1][1]"
	tDemonTower_Log["AwardByExp"][1][1][4] = "0,0,0,0,18000087,2,3008727[3008959][3002030],1[1][2]"
	tDemonTower_Log["AwardByExp"][1][1][5] = "0,0,0,0,18000087,2,3008727[3008962][3002030],1[1][3]"
	
	tDemonTower_Log["AwardByExp"][1][2] = {}
	tDemonTower_Log["AwardByExp"][1][2][1] = "0,0,0,0,18000087,2,3008727[3008956],1[1]"
	tDemonTower_Log["AwardByExp"][1][2][2] = "0,0,0,0,18000087,2,3008727[3008957],1[1]"
	tDemonTower_Log["AwardByExp"][1][2][3] = "0,0,0,0,18000087,2,3008727[3008958][3314911],1[1][1]"
	tDemonTower_Log["AwardByExp"][1][2][4] = "0,0,0,0,18000087,2,3008727[3008959][3314911],1[1][2]"
	tDemonTower_Log["AwardByExp"][1][2][5] = "0,0,0,0,18000087,2,3008727[3008962][3314911],1[1][3]"
	
	tDemonTower_Log["AwardByExp"][1][3] = {}
	tDemonTower_Log["AwardByExp"][1][3][1] = "0,0,0,0,18000087,2,3008727[3008956],1[1]"
	tDemonTower_Log["AwardByExp"][1][3][2] = "0,0,0,0,18000087,2,3008727[3008957],1[1]"
	tDemonTower_Log["AwardByExp"][1][3][3] = "0,0,0,0,18000087,2,3008727[3008958][3314912],1[1][1]"
	tDemonTower_Log["AwardByExp"][1][3][4] = "0,0,0,0,18000087,2,3008727[3008959][3314912],1[1][2]"
	tDemonTower_Log["AwardByExp"][1][3][5] = "0,0,0,0,18000087,2,3008727[3008962][3314912],1[1][3]"
	
	tDemonTower_Log["AwardByExp"][1][4] = {}
	tDemonTower_Log["AwardByExp"][1][4][1] = "0,0,0,0,18000087,2,3008727[3008972],1[1]"
	tDemonTower_Log["AwardByExp"][1][4][2] = "0,0,0,0,18000087,2,3008727[3008973],1[1]"
	tDemonTower_Log["AwardByExp"][1][4][3] = "0,0,0,0,18000087,2,3008727[3008959][6],1[1][40]"
	tDemonTower_Log["AwardByExp"][1][4][4] = "0,0,0,0,18000087,2,3008727[3008961][6],1[1][80]"
	tDemonTower_Log["AwardByExp"][1][4][5] = "0,0,0,0,18000087,2,3008727[3008964][6],1[1][120]"
	
	tDemonTower_Log["AwardByExp"][1][5] = {}
	tDemonTower_Log["AwardByExp"][1][5][1] = "0,0,0,0,18000087,2,3008727[3008972],1[1]"
	tDemonTower_Log["AwardByExp"][1][5][2] = "0,0,0,0,18000087,2,3008727[3008973],1[1]"
	tDemonTower_Log["AwardByExp"][1][5][3] = "0,0,0,0,18000087,2,3008727[3008959][6],1[1][40]"
	tDemonTower_Log["AwardByExp"][1][5][4] = "0,0,0,0,18000087,2,3008727[3008961][6],1[1][80]"
	tDemonTower_Log["AwardByExp"][1][5][5] = "0,0,0,0,18000087,2,3008727[3008964][6],1[1][120]"
	
	tDemonTower_Log["AwardByExp"][1][6] = {}
	tDemonTower_Log["AwardByExp"][1][6][1] = "0,0,0,0,18000087,2,3008727[3008974],1[1]"
	tDemonTower_Log["AwardByExp"][1][6][2] = "0,0,0,0,18000087,2,3008727[3008975],1[1]"
	tDemonTower_Log["AwardByExp"][1][6][3] = "0,0,0,0,18000087,2,3008727[3008960][6],1[1][50]"
	tDemonTower_Log["AwardByExp"][1][6][4] = "0,0,0,0,18000087,2,3008727[3008963][6],1[1][100]"
	tDemonTower_Log["AwardByExp"][1][6][5] = "0,0,0,0,18000087,2,3008727[3008965][6],1[1][150]"
	
	tDemonTower_Log["AwardByExp"][1][7] = {}
	tDemonTower_Log["AwardByExp"][1][7][1] = "0,0,0,0,18000087,2,3008727[3008974],1[1]"
	tDemonTower_Log["AwardByExp"][1][7][2] = "0,0,0,0,18000087,2,3008727[3008975],1[1]"
	tDemonTower_Log["AwardByExp"][1][7][3] = "0,0,0,0,18000087,2,3008727[3008960][12],1[1][50]"
	tDemonTower_Log["AwardByExp"][1][7][4] = "0,0,0,0,18000087,2,3008727[3008963][12],1[1][100]"
	tDemonTower_Log["AwardByExp"][1][7][5] = "0,0,0,0,18000087,2,3008727[3008965][12],1[1][150]"
	
	tDemonTower_Log["AwardByExp"][1][8] = {}
	tDemonTower_Log["AwardByExp"][1][8][1] = "0,0,0,0,18000087,2,3008727[3008974],1[1]"
	tDemonTower_Log["AwardByExp"][1][8][2] = "0,0,0,0,18000087,2,3008727[3008975],1[1]"
	tDemonTower_Log["AwardByExp"][1][8][3] = "0,0,0,0,18000087,2,3008727[3008960][12],1[1][50]"
	tDemonTower_Log["AwardByExp"][1][8][4] = "0,0,0,0,18000087,2,3008727[3008963][12],1[1][100]"
	tDemonTower_Log["AwardByExp"][1][8][5] = "0,0,0,0,18000087,2,3008727[3008965][12],1[1][150]"
	
	tDemonTower_Log["AwardByExp"][1][9] = {}
	tDemonTower_Log["AwardByExp"][1][9][1] = "0,0,0,0,18000087,2,3008727[3008957],1[1]"
	tDemonTower_Log["AwardByExp"][1][9][2] = "0,0,0,0,18000087,2,3008727[3008959],1[1]"
	tDemonTower_Log["AwardByExp"][1][9][3] = "0,0,0,0,18000087,2,3008727[3008962][12],1[1][60]"
	tDemonTower_Log["AwardByExp"][1][9][4] = "0,0,0,0,18000087,2,3008727[3008964][12],1[1][120]"
	tDemonTower_Log["AwardByExp"][1][9][5] = "0,0,0,0,18000087,2,3008727[3008967][12],1[1][180]"
	
	
	
	tDemonTower_Log["AwardByExp"][2] = {}
	--普通难度1层
	tDemonTower_Log["AwardByExp"][2][1] = {}
	tDemonTower_Log["AwardByExp"][2][1][1] = "0,0,0,0,18000087,2,3008727[3008957],1[1]"
	tDemonTower_Log["AwardByExp"][2][1][2] = "0,0,0,0,18000087,2,3008727[3008959][3002030],1[1][1]"
	tDemonTower_Log["AwardByExp"][2][1][3] = "0,0,0,0,18000087,2,3008727[3008962][3002030],1[1][2]"
	tDemonTower_Log["AwardByExp"][2][1][4] = "0,0,0,0,18000087,2,3008727[3008964][3002030],1[1][3]"
	tDemonTower_Log["AwardByExp"][2][1][5] = "0,0,0,0,18000087,2,3008727[3008967][3002030],1[1][5]"
	
	tDemonTower_Log["AwardByExp"][2][2] = {}
	tDemonTower_Log["AwardByExp"][2][2][1] = "0,0,0,0,18000087,2,3008727[3008957],1[1]"
	tDemonTower_Log["AwardByExp"][2][2][2] = "0,0,0,0,18000087,2,3008727[3008959][3314911],1[1][1]"
	tDemonTower_Log["AwardByExp"][2][2][3] = "0,0,0,0,18000087,2,3008727[3008962][3314911],1[1][2]"
	tDemonTower_Log["AwardByExp"][2][2][4] = "0,0,0,0,18000087,2,3008727[3008964][3314911],1[1][3]"
	tDemonTower_Log["AwardByExp"][2][2][5] = "0,0,0,0,18000087,2,3008727[3008967][3314911],1[1][5]"
	
	
	tDemonTower_Log["AwardByExp"][2][3] = {}
	tDemonTower_Log["AwardByExp"][2][3][1] = "0,0,0,0,18000087,2,3008727[3008957],1[1]"
	tDemonTower_Log["AwardByExp"][2][3][2] = "0,0,0,0,18000087,2,3008727[3008959][3314912],1[1][1]"
	tDemonTower_Log["AwardByExp"][2][3][3] = "0,0,0,0,18000087,2,3008727[3008962][3314912],1[1][2]"
	tDemonTower_Log["AwardByExp"][2][3][4] = "0,0,0,0,18000087,2,3008727[3008964][3314912],1[1][3]"
	tDemonTower_Log["AwardByExp"][2][3][5] = "0,0,0,0,18000087,2,3008727[3008967][3314912],1[1][5]"
	
	tDemonTower_Log["AwardByExp"][2][4] = {}
	tDemonTower_Log["AwardByExp"][2][4][1] = "0,0,0,0,18000087,2,3008727[3008973],1[1]"
	tDemonTower_Log["AwardByExp"][2][4][2] = "0,0,0,0,18000087,2,3008727[3008961][6],1[1][40]"
	tDemonTower_Log["AwardByExp"][2][4][3] = "0,0,0,0,18000087,2,3008727[3008964][6],1[1][80]"
	tDemonTower_Log["AwardByExp"][2][4][4] = "0,0,0,0,18000087,2,3008727[3008966][6],1[1][120]"
	tDemonTower_Log["AwardByExp"][2][4][5] = "0,0,0,0,18000087,2,3008727[3008969][6],1[1][200]"
	
	tDemonTower_Log["AwardByExp"][2][5] = {}
	tDemonTower_Log["AwardByExp"][2][5][1] = "0,0,0,0,18000087,2,3008727[3008973],1[1]"
	tDemonTower_Log["AwardByExp"][2][5][2] = "0,0,0,0,18000087,2,3008727[3008961][6],1[1][40]"
	tDemonTower_Log["AwardByExp"][2][5][3] = "0,0,0,0,18000087,2,3008727[3008964][6],1[1][80]"
	tDemonTower_Log["AwardByExp"][2][5][4] = "0,0,0,0,18000087,2,3008727[3008966][6],1[1][120]"
	tDemonTower_Log["AwardByExp"][2][5][5] = "0,0,0,0,18000087,2,3008727[3008969][6],1[1][200]"
	
	tDemonTower_Log["AwardByExp"][2][6] = {}
	tDemonTower_Log["AwardByExp"][2][6][1] = "0,0,0,0,18000087,2,3008727[3008975],1[1]"
	tDemonTower_Log["AwardByExp"][2][6][2] = "0,0,0,0,18000087,2,3008727[3008963][6],1[1][50]"
	tDemonTower_Log["AwardByExp"][2][6][3] = "0,0,0,0,18000087,2,3008727[3008965][6],1[1][100]"
	tDemonTower_Log["AwardByExp"][2][6][4] = "0,0,0,0,18000087,2,3008727[3008968][6],1[1][150]"
	tDemonTower_Log["AwardByExp"][2][6][5] = "0,0,0,0,18000087,2,3008727[3008970][6],1[1][250]"
	
	tDemonTower_Log["AwardByExp"][2][7] = {}
	tDemonTower_Log["AwardByExp"][2][7][1] = "0,0,0,0,18000087,2,3008727[3008975],1[1]"
	tDemonTower_Log["AwardByExp"][2][7][2] = "0,0,0,0,18000087,2,3008727[3008963][12],1[1][50]"
	tDemonTower_Log["AwardByExp"][2][7][3] = "0,0,0,0,18000087,2,3008727[3008965][12],1[1][100]"
	tDemonTower_Log["AwardByExp"][2][7][4] = "0,0,0,0,18000087,2,3008727[3008968][12],1[1][150]"
	tDemonTower_Log["AwardByExp"][2][7][5] = "0,0,0,0,18000087,2,3008727[3008970][12],1[1][250]"
	
	tDemonTower_Log["AwardByExp"][2][8] = {}
	tDemonTower_Log["AwardByExp"][2][8][1] = "0,0,0,0,18000087,2,3008727[3008975],1[1]"
	tDemonTower_Log["AwardByExp"][2][8][2] = "0,0,0,0,18000087,2,3008727[3008963][12],1[1][50]"
	tDemonTower_Log["AwardByExp"][2][8][3] = "0,0,0,0,18000087,2,3008727[3008965][12],1[1][100]"
	tDemonTower_Log["AwardByExp"][2][8][4] = "0,0,0,0,18000087,2,3008727[3008968][12],1[1][150]"
	tDemonTower_Log["AwardByExp"][2][8][5] = "0,0,0,0,18000087,2,3008727[3008970][12],1[1][250]"
	
	tDemonTower_Log["AwardByExp"][2][9] = {}
	tDemonTower_Log["AwardByExp"][2][9][1] = "0,0,0,0,18000087,2,3008727[3008959],1[1]"
	tDemonTower_Log["AwardByExp"][2][9][2] = "0,0,0,0,18000087,2,3008727[3008964][12],1[1][60]"
	tDemonTower_Log["AwardByExp"][2][9][3] = "0,0,0,0,18000087,2,3008727[3008967][12],1[1][120]"
	tDemonTower_Log["AwardByExp"][2][9][4] = "0,0,0,0,18000087,2,3008727[3008969][12],1[1][180]"
	tDemonTower_Log["AwardByExp"][2][9][5] = "0,0,0,0,18000087,2,3008727[3008971][12],1[1][300]"
	
	
	--固定奖励，不包含经验
	tDemonTower_Log["AwardNoExp"] = {}
	--普通难度
	tDemonTower_Log["AwardNoExp"][1] = {}
	--普通难度1层
	tDemonTower_Log["AwardNoExp"][1][1] = {}
	tDemonTower_Log["AwardNoExp"][1][1][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][1][2] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][1][3] = "0,0,0,0,18000087,2,3008727[3002030],1[1]"
	tDemonTower_Log["AwardNoExp"][1][1][4] = "0,0,0,0,18000087,2,3008727[3002030],1[2]"
	tDemonTower_Log["AwardNoExp"][1][1][5] = "0,0,0,0,18000087,2,3008727[3002030],1[3]"
	
	tDemonTower_Log["AwardNoExp"][1][2] = {}
	tDemonTower_Log["AwardNoExp"][1][2][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][2][2] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][2][3] = "0,0,0,0,18000087,2,3008727[3314911],1[1]"
	tDemonTower_Log["AwardNoExp"][1][2][4] = "0,0,0,0,18000087,2,3008727[3314911],1[2]"
	tDemonTower_Log["AwardNoExp"][1][2][5] = "0,0,0,0,18000087,2,3008727[3314911],1[3]"
	
	tDemonTower_Log["AwardNoExp"][1][3] = {}
	tDemonTower_Log["AwardNoExp"][1][3][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][3][2] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][3][3] = "0,0,0,0,18000087,2,3008727[3314912],1[1]"
	tDemonTower_Log["AwardNoExp"][1][3][4] = "0,0,0,0,18000087,2,3008727[3314912],1[2]"
	tDemonTower_Log["AwardNoExp"][1][3][5] = "0,0,0,0,18000087,2,3008727[3314912],1[3]"
	
	tDemonTower_Log["AwardNoExp"][1][4] = {}
	tDemonTower_Log["AwardNoExp"][1][4][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][4][2] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][4][3] = "0,0,0,0,18000087,2,3008727[6],1[40]"
	tDemonTower_Log["AwardNoExp"][1][4][4] = "0,0,0,0,18000087,2,3008727[6],1[80]"
	tDemonTower_Log["AwardNoExp"][1][4][5] = "0,0,0,0,18000087,2,3008727[6],1[120]"
	
	tDemonTower_Log["AwardNoExp"][1][5] = {}
	tDemonTower_Log["AwardNoExp"][1][5][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][5][2] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][5][3] = "0,0,0,0,18000087,2,3008727[6],1[40]"
	tDemonTower_Log["AwardNoExp"][1][5][4] = "0,0,0,0,18000087,2,3008727[6],1[80]"
	tDemonTower_Log["AwardNoExp"][1][5][5] = "0,0,0,0,18000087,2,3008727[6],1[120]"
	
	tDemonTower_Log["AwardNoExp"][1][6] = {}
	tDemonTower_Log["AwardNoExp"][1][6][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][6][2] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][6][3] = "0,0,0,0,18000087,2,3008727[6],1[50]"
	tDemonTower_Log["AwardNoExp"][1][6][4] = "0,0,0,0,18000087,2,3008727[6],1[100]"
	tDemonTower_Log["AwardNoExp"][1][6][5] = "0,0,0,0,18000087,2,3008727[6],1[150]"
	
	tDemonTower_Log["AwardNoExp"][1][7] = {}
	tDemonTower_Log["AwardNoExp"][1][7][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][7][2] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][7][3] = "0,0,0,0,18000087,2,3008727[12],1[50]"
	tDemonTower_Log["AwardNoExp"][1][7][4] = "0,0,0,0,18000087,2,3008727[12],1[100]"
	tDemonTower_Log["AwardNoExp"][1][7][5] = "0,0,0,0,18000087,2,3008727[12],1[150]"
	
	tDemonTower_Log["AwardNoExp"][1][8] = {}
	tDemonTower_Log["AwardNoExp"][1][8][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][8][2] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][8][3] = "0,0,0,0,18000087,2,3008727[12],1[50]"
	tDemonTower_Log["AwardNoExp"][1][8][4] = "0,0,0,0,18000087,2,3008727[12],1[100]"
	tDemonTower_Log["AwardNoExp"][1][8][5] = "0,0,0,0,18000087,2,3008727[12],1[150]"
	
	tDemonTower_Log["AwardNoExp"][1][9] = {}
	tDemonTower_Log["AwardNoExp"][1][9][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][9][2] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][1][9][3] = "0,0,0,0,18000087,2,3008727[12],1[60]"
	tDemonTower_Log["AwardNoExp"][1][9][4] = "0,0,0,0,18000087,2,3008727[12],1[120]"
	tDemonTower_Log["AwardNoExp"][1][9][5] = "0,0,0,0,18000087,2,3008727[12],1[180]"
	
	
	
	tDemonTower_Log["AwardNoExp"][2] = {}
	--普通难度1层
	tDemonTower_Log["AwardNoExp"][2][1] = {}
	tDemonTower_Log["AwardNoExp"][2][1][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][2][1][2] = "0,0,0,0,18000087,2,3008727[3002030],1[1]"
	tDemonTower_Log["AwardNoExp"][2][1][3] = "0,0,0,0,18000087,2,3008727[3002030],1[2]"
	tDemonTower_Log["AwardNoExp"][2][1][4] = "0,0,0,0,18000087,2,3008727[3002030],1[3]"
	tDemonTower_Log["AwardNoExp"][2][1][5] = "0,0,0,0,18000087,2,3008727[3002030],1[5]"
	
	tDemonTower_Log["AwardNoExp"][2][2] = {}
	tDemonTower_Log["AwardNoExp"][2][2][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][2][2][2] = "0,0,0,0,18000087,2,3008727[3314911],1[1]"
	tDemonTower_Log["AwardNoExp"][2][2][3] = "0,0,0,0,18000087,2,3008727[3314911],1[2]"
	tDemonTower_Log["AwardNoExp"][2][2][4] = "0,0,0,0,18000087,2,3008727[3314911],1[3]"
	tDemonTower_Log["AwardNoExp"][2][2][5] = "0,0,0,0,18000087,2,3008727[3314911],1[5]"
	
	
	tDemonTower_Log["AwardNoExp"][2][3] = {}
	tDemonTower_Log["AwardNoExp"][2][3][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][2][3][2] = "0,0,0,0,18000087,2,3008727[3314912],1[1]"
	tDemonTower_Log["AwardNoExp"][2][3][3] = "0,0,0,0,18000087,2,3008727[3314912],1[2]"
	tDemonTower_Log["AwardNoExp"][2][3][4] = "0,0,0,0,18000087,2,3008727[3314912],1[3]"
	tDemonTower_Log["AwardNoExp"][2][3][5] = "0,0,0,0,18000087,2,3008727[3314912],1[5]"
	
	tDemonTower_Log["AwardNoExp"][2][4] = {}
	tDemonTower_Log["AwardNoExp"][2][4][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][2][4][2] = "0,0,0,0,18000087,2,3008727[6],1[40]"
	tDemonTower_Log["AwardNoExp"][2][4][3] = "0,0,0,0,18000087,2,3008727[6],1[80]"
	tDemonTower_Log["AwardNoExp"][2][4][4] = "0,0,0,0,18000087,2,3008727[6],1[120]"
	tDemonTower_Log["AwardNoExp"][2][4][5] = "0,0,0,0,18000087,2,3008727[6],1[200]"
	
	tDemonTower_Log["AwardNoExp"][2][5] = {}
	tDemonTower_Log["AwardNoExp"][2][5][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][2][5][2] = "0,0,0,0,18000087,2,3008727[6],1[40]"
	tDemonTower_Log["AwardNoExp"][2][5][3] = "0,0,0,0,18000087,2,3008727[6],1[80]"
	tDemonTower_Log["AwardNoExp"][2][5][4] = "0,0,0,0,18000087,2,3008727[6],1[120]"
	tDemonTower_Log["AwardNoExp"][2][5][5] = "0,0,0,0,18000087,2,3008727[6],1[200]"
	
	tDemonTower_Log["AwardNoExp"][2][6] = {}
	tDemonTower_Log["AwardNoExp"][2][6][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][2][6][2] = "0,0,0,0,18000087,2,3008727[6],1[50]"
	tDemonTower_Log["AwardNoExp"][2][6][3] = "0,0,0,0,18000087,2,3008727[6],1[100]"
	tDemonTower_Log["AwardNoExp"][2][6][4] = "0,0,0,0,18000087,2,3008727[6],1[150]"
	tDemonTower_Log["AwardNoExp"][2][6][5] = "0,0,0,0,18000087,2,3008727[6],1[250]"
	
	tDemonTower_Log["AwardNoExp"][2][7] = {}
	tDemonTower_Log["AwardNoExp"][2][7][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][2][7][2] = "0,0,0,0,18000087,2,3008727[12],1[50]"
	tDemonTower_Log["AwardNoExp"][2][7][3] = "0,0,0,0,18000087,2,3008727[12],1[100]"
	tDemonTower_Log["AwardNoExp"][2][7][4] = "0,0,0,0,18000087,2,3008727[12],1[150]"
	tDemonTower_Log["AwardNoExp"][2][7][5] = "0,0,0,0,18000087,2,3008727[12],1[250]"
	
	tDemonTower_Log["AwardNoExp"][2][8] = {}
	tDemonTower_Log["AwardNoExp"][2][8][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][2][8][2] = "0,0,0,0,18000087,2,3008727[12],1[50]"
	tDemonTower_Log["AwardNoExp"][2][8][3] = "0,0,0,0,18000087,2,3008727[12],1[100]"
	tDemonTower_Log["AwardNoExp"][2][8][4] = "0,0,0,0,18000087,2,3008727[12],1[150]"
	tDemonTower_Log["AwardNoExp"][2][8][5] = "0,0,0,0,18000087,2,3008727[12],1[250]"
	
	tDemonTower_Log["AwardNoExp"][2][9] = {}
	tDemonTower_Log["AwardNoExp"][2][9][1] = "0,0,0,0,18000087,2,3008727,1"
	tDemonTower_Log["AwardNoExp"][2][9][2] = "0,0,0,0,18000087,2,3008727[12],1[60]"
	tDemonTower_Log["AwardNoExp"][2][9][3] = "0,0,0,0,18000087,2,3008727[12],1[120]"
	tDemonTower_Log["AwardNoExp"][2][9][4] = "0,0,0,0,18000087,2,3008727[12],1[180]"
	tDemonTower_Log["AwardNoExp"][2][9][5] = "0,0,0,0,18000087,2,3008727[12],1[300]"	
	
	
	tDemonTower_Log["ExraAward"] = {}
	tDemonTower_Log["ExraAward"][1] = "0,0,0,0,18000087,2,3002030,1"
	tDemonTower_Log["ExraAward"][2] = "0,0,0,0,18000087,2,3314911,1"
	tDemonTower_Log["ExraAward"][3] = "0,0,0,0,18000087,2,3314912,1"
	tDemonTower_Log["ExraAward"][4] = "0,0,0,0,18000087,2,3008729,1"
	tDemonTower_Log["ExraAward"][5] = "0,0,0,0,18000087,2,3007311,1"
	tDemonTower_Log["ExraAward"][6] = "0,0,0,0,18000087,2,3008730,1"
	tDemonTower_Log["ExraAward"][7] = "0,0,0,0,18000087,2,3008731,1"
	tDemonTower_Log["ExraAward"][8] = "0,0,0,0,18000087,2,3002308,1"
	tDemonTower_Log["ExraAward"][9] = "0,0,0,0,18000087,2,3008732,1"
	
	tDemonTower_Log["Super"] = "0,0,0,0,18000087,2,3008728,1"
	
	--设计要求的log
	tDemonTower_Log["Stage"] = {}
	--普通难度
	tDemonTower_Log["Stage"][1] = {}
	--玩家挑战普通镇魔塔第1层
	tDemonTower_Log["Stage"][1][1] = "0,0,0,0,18000087,1[1],0,0"
	tDemonTower_Log["Stage"][1][2] = "0,0,0,0,18000087,1[2],0,0"
	tDemonTower_Log["Stage"][1][3] = "0,0,0,0,18000087,1[3],0,0"
	tDemonTower_Log["Stage"][1][4] = "0,0,0,0,18000087,1[4],0,0"
	tDemonTower_Log["Stage"][1][5] = "0,0,0,0,18000087,1[5],0,0"
	tDemonTower_Log["Stage"][1][6] = "0,0,0,0,18000087,1[6],0,0"
	tDemonTower_Log["Stage"][1][7] = "0,0,0,0,18000087,1[7],0,0"
	tDemonTower_Log["Stage"][1][8] = "0,0,0,0,18000087,1[8],0,0"
	tDemonTower_Log["Stage"][1][9] = "0,0,0,0,18000087,1[9],0,0"
	--困难难度
	tDemonTower_Log["Stage"][2] = {}
	--玩家挑战困难镇魔塔第1层
	tDemonTower_Log["Stage"][2][1] = "0,0,0,0,18000087,1[10],0,0"
	tDemonTower_Log["Stage"][2][2] = "0,0,0,0,18000087,1[11],0,0"
	tDemonTower_Log["Stage"][2][3] = "0,0,0,0,18000087,1[12],0,0"
	tDemonTower_Log["Stage"][2][4] = "0,0,0,0,18000087,1[13],0,0"
	tDemonTower_Log["Stage"][2][5] = "0,0,0,0,18000087,1[14],0,0"
	tDemonTower_Log["Stage"][2][6] = "0,0,0,0,18000087,1[15],0,0"
	tDemonTower_Log["Stage"][2][7] = "0,0,0,0,18000087,1[16],0,0"
	tDemonTower_Log["Stage"][2][8] = "0,0,0,0,18000087,1[17],0,0"
	tDemonTower_Log["Stage"][2][9] = "0,0,0,0,18000087,1[18],0,0"
	
	
	tDemonTower_Log["NewStage"] = {}
	tDemonTower_Log["NewStage"]["SwapByMete"] = {}
	tDemonTower_Log["NewStage"]["SwapByMete"][1] = "0,0,0,0,18000100,1[1],0,0"
	tDemonTower_Log["NewStage"]["SwapByMete"][2] = "0,0,0,0,18000100,1[2],0,0"
	
	tDemonTower_Log["NewStage"]["FreshByCul"] = "0,0,0,0,18000100,1[3],0,0"
	tDemonTower_Log["NewStage"]["FreshByItem"] = "0,0,0,0,18000100,1[4],0,0"
	
	tDemonTower_Log["NewStage"]["GetMonoCp"] = "0,0,%d,1,18000100,2,3,%d"
	
	tDemonTower_Log["NewStage"]["GetPack"] = "0,0,0,1,18000100,1[5],0,0"
	tDemonTower_Log["NewStage"]["TeamKill"] = "0,0,0,1,18000100,1[6],0,0"
	
local tDemonTower_EmoneyLog = {}
	tDemonTower_EmoneyLog[1] = "350	4888	88	88	1	"
	
	tDemonTower_Log["NewStage"]["BoxByCul"] = "0,0,0,1,18000100,1[3],%d,0"
--勇闯奖励
local tDemonTower_AddAward={}
	--老服
	tDemonTower_AddAward["Old"]={}
	tDemonTower_AddAward["Old"]["LogId"]=18000100
	tDemonTower_AddAward["Old"]["RewardCultivation"]={}
	tDemonTower_AddAward["Old"]["RewardCultivation"]["Value"]=100
	tDemonTower_AddAward["Old"]["RewardGoldenLeague"]={}
	tDemonTower_AddAward["Old"]["RewardGoldenLeague"]["Value"]=200
	tDemonTower_AddAward["Old"]["RewardItem"]={}
	tDemonTower_AddAward["Old"]["RewardItem"][1]={}
	tDemonTower_AddAward["Old"]["RewardItem"][1]["Id"]=729304
	tDemonTower_AddAward["Old"]["RewardItem"][1]["Attr"]="0 1"
	tDemonTower_AddAward["Old"]["RewardItem"][2]={}
	tDemonTower_AddAward["Old"]["RewardItem"][2]["Id"]=711211
	tDemonTower_AddAward["Old"]["RewardItem"][2]["Attr"]="0 3"

	--新服
	tDemonTower_AddAward["New"]={}
	tDemonTower_AddAward["New"]["LogId"]=18000100
	tDemonTower_AddAward["New"]["RewardCultivation"]={}
	tDemonTower_AddAward["New"]["RewardCultivation"]["Value"]=100
	tDemonTower_AddAward["New"]["RewardGoldenLeague"]={}
	tDemonTower_AddAward["New"]["RewardGoldenLeague"]["Value"]=200
	tDemonTower_AddAward["New"]["RewardItem"]={}
	tDemonTower_AddAward["New"]["RewardItem"][1]={}
	tDemonTower_AddAward["New"]["RewardItem"][1]["Id"]=729304
	tDemonTower_AddAward["New"]["RewardItem"][1]["Attr"]="0 1"
	tDemonTower_AddAward["New"]["RewardItem"][2]={}
	tDemonTower_AddAward["New"]["RewardItem"][2]["Id"]=711211
	tDemonTower_AddAward["New"]["RewardItem"][2]["Attr"]="0 3"
	tDemonTower_AddAward["New"]["RewardItem"][3]={}
	tDemonTower_AddAward["New"]["RewardItem"][3]["Id"]=3008912
	tDemonTower_AddAward["New"]["RewardItem"][3]["Attr"]="0 1"

--------------------------------------------------逻辑部分------------------------------------------------------

--使用炽热天石碎片
function DemonTower_UseEmoneyPiece(nItemId)

	local nNeedNum = tDemonTower_Const["PieceNum"]
	--数量不足
	if not Item_ChkMulItem(nItemId,nItemId,nNeedNum) then
		User_TalkChannel2005(tDemonTower_Text["PieceNoNum"])
		return
	end
	
	--赠点天石数量达到上限
	if (Get_UserMonoEMoney() + tDemonTower_Const["PieceEmoney"]) > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tDemonTower_Text["PieceMuchEmoney"])
		return
	end
	
	if not Item_DelMulItem(nItemId,nItemId,nNeedNum) then
		return
	end
	
	User_AddEMoneyMono(tDemonTower_Const["PieceEmoney"])
	
	User_TalkChannel2005(tDemonTower_Text["PieceSucc"])
	
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfStyle = tDemonTower_Const["Effect"]["PieceToEmoney"]
	
	User_EffectAdd(EfObj,EfStyle)
	
	local sLog = tDemonTower_Log["PieceToEmoney"]
	Sys_SaveActionFestivalLog(sLog)
	
	local sEmoneyLog = tDemonTower_Log["Emoney"]["Zengdian"]
	Sys_SaveEmoneyBuy(sEmoneyLog)
end

--使用烈焰精粹
function DemonTower_UsePithyOfFire(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nMeteorScrollId =tDemonTower_Const["ItemId"]["MeteorScroll"]
	
	if not Item_ChkItem(nMeteorScrollId) then
		User_TalkChannel2005(tDemonTower_Text["PithyNoMeteorScroll"])
		return
	end
	
	local sAttr = ""
	local sText = tDemonTower_Text["PithyExChange"]
	--不存在非赠
	if not Item_ChkItem(nMeteorScrollId,0) then
		sAttr = "0 0 3"
		sText = tDemonTower_Text["PithyExChangeZ"]
	end
	
	--删除烈焰精粹
	if not Item_DelItem(nItemId) then
		return
	end
	--删除流星卷
	if not Item_DelItem(nMeteorScrollId) then
		return
	end
	
	local nDragonBallId = tDemonTower_Const["ItemId"]["DragonBall"]
	
	if not Item_AddNewItem(nDragonBallId,sAttr) then
		return
	end
	
	User_TalkChannel2005(sText)
	
	local sLog = tDemonTower_Log["PithySucc"]
	Sys_SaveActionFestivalLog(sLog)
	
end

--星月宝盒
function DemonTower_MoonsPack(nThisItemId,nSelItemId)
	if not Item_ChkItem(nThisItemId) then
		return
	end
	
	--背包空间判断
	if not User_CheckLeftSpace(1)then
		Sys_MsgBox(tDemonTower_Text[nThisItemId]["NoSpace"])
		return 
	end 
	
	if not Item_DelItem(nThisItemId) then
		return
	end
	
	local sAttr = tDemonTower_Const["DiamondAttr"]
	if not Item_AddNewItem(nSelItemId,sAttr) then
		return
	end
	
	--奖励为炫日、残月、繁星、流云锁片时接入黑五狂欢周
	local nItemId = nSelItemId
	local nNum = 30
	if nItemId == 721533 or nItemId == 721534 or nItemId == 721535 or nItemId == 721536 then 
		BlackFiveCarnivalWeek_LockSheet(nItemId,nNum)
	end 
	
	local sText = string.format(tDemonTower_Text[nThisItemId]["Award"],Get_ItemtypeName(nSelItemId))
	User_TalkChannel2005(sText)
	
	local sLog = string.format(tDemonTower_Log["SelDiamond"],nSelItemId)
	Sys_SaveActionFestivalLog(sLog)
	
end

--重设1-4文字
--1-4文字
-- "    阁下的挑战还顺利么？若有吩咐，尽管与在下说便是。\n"
 -- "    今日挑战难度：%s\n"
 -- "    剩余领奖次数：%d次（最多显示3次）"
 -- "我要继续挑战。（前往第%d层）"
 -- "我要选择挑战层数。"
 -- "我想了解详情。"
 -- "告辞！"
function DemonTower_ResetText14(nNpcId)
	
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nDataSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTypeProcess = tDemonTower_Stc["DataType"]["Process"][nDataSel]
	
	local nDataTimes = DemonTower_GetExistTimes()
	tNpcGossip[nNpcId]["Text142"] = string.format(tDemonTower_Text[nNpcId]["Text142"],tDemonTower_Text["Difficult"][nDataSel])
	tNpcGossip[nNpcId]["Text143"] = string.format(tDemonTower_Text[nNpcId]["Text143"],nDataTimes)
	
	local nDataProcess = Get_UserStatisticValue(nEvent,nTypeProcess)
	
	--不是第九层
	if nDataProcess ~= 9 then
		nDataProcess = nDataProcess + 1
	end
	tNpcGossip[nNpcId]["Option141"] = string.format(tDemonTower_Text[nNpcId]["Option141"],nDataProcess)
	tNpcGossip[nNpcId]["OptionFunc141"] = "DemonTower_IWannaBySelf</N>"..nNpcId.."</N>"..nDataSel.."</N>"..nDataProcess
	return true
end

--我想继续挑战选项
--难度
--进度/层数
function DemonTower_IWannaGoon(nNpcId,nSel,nFloor)
	-- if not Sys_ChkDayTime(tDemonTower_Const["OpenTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- return
	-- end
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	--记录当前选择的层数
	Task_SetStatistic(nEvent,nTypeTakeFloor,nFloor,1)
	tNpcGossip[nNpcId]["OptionFunc411"] = "DemonTower_IWannaBySelf</N>"..nNpcId.."</N>"..nSel.."</N>"..nFloor
	tNpcGossip[nNpcId]["OptionFunc412"] = "DemonTower_IWannaDonate</N>"..nNpcId.."</N>"..nSel.."</N>"..nFloor
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end


--选择难度
function DemonTower_SelDifficult(nNpcId,nSel)
	-- if not Sys_ChkDayTime(tDemonTower_Const["OpenTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- return
	-- end
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeProcess = tDemonTower_Stc["DataType"]["Process"][nSel]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nDataProcess = Get_UserStatisticValue(nEvent,nTypeProcess)
	
	Task_SetStatistic(nEvent,nTypeSel,nSel,1)
	Task_SetStcTimestamp(nEvent,nTypeSel,0)
	
	if nDataProcess == 9 then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	local nMainCityMapId = tDemonTower_Const["MainCity"]
	local nUserMapId = Get_UserMapId()
	
	if nUserMapId ~= nMainCityMapId then
		User_TalkChannel2005(tDemonTower_Text["NotPlace"])
		return
	end
	
	--如果还没挑战成功当前难度的第一层的话，就直接传送到当前难度第一层。
	--否则出对白
	if nDataProcess ~= 0 then
		if nDataProcess ~= 9 then
			nDataProcess = nDataProcess + 1
		end
		-- tNpcGossip[nNpcId]["Text312"] = string.format(tDemonTower_Text[nNpcId]["Text312"],nDataProcess)
		-- tNpcGossip[nNpcId]["OptionFunc311"] = "DemonTower_IWannaBySelf</N>"..nNpcId.."</N>"..nSel.."</N>"..nDataProcess
		-- LinkNpcGossipFunc_New(nNpcId,"3-1")
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	local nTypeTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	--记录当前选择的层数
	Task_SetStatistic(nEvent,nTypeTakeFloor,1,1)
	
	local nInstance = tDemonTower_Const["Instance"][nSel][1]
	if not User_EnterInstance(nInstance) then
		return
	end
	
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfStyle =  tDemonTower_Const["Effect"]["EnterMove"]
	User_EffectAdd(EfObj,EfStyle)
	
	DemonTower_CreateDynaNpc(nSel,1)
	
	local sText = string.format(tDemonTower_Text["EnterTower"],tDemonTower_Text["Difficult"][nSel],1,tDemonTower_Text["BossName"][nSel][1])
	User_TalkChannel2005(sText)
	
end

--我想亲自挑战
function DemonTower_IWannaBySelf(nNpcId,nSel,nProcess)
	-- if not Sys_ChkDayTime(tDemonTower_Const["OpenTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- return
	-- end
	local nMainCityMapId = tDemonTower_Const["MainCity"]
	local nUserMapId = Get_UserMapId()
	
	if nUserMapId ~= nMainCityMapId then
		User_TalkChannel2005(tDemonTower_Text["NotPlace"])
		return
	end
	
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	--记录当前选择的层数
	Task_SetStatistic(nEvent,nTypeTakeFloor,nProcess,1)
	
	local nInstance = tDemonTower_Const["Instance"][nSel][nProcess]
	if not User_EnterInstance(nInstance) then
		User_TalkChannel2005(tDemonTower_Text["YouAreMaster"])
		return
	end
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfStyle =  tDemonTower_Const["Effect"]["EnterMove"]
	User_EffectAdd(EfObj,EfStyle)
	DemonTower_CreateDynaNpc(nSel,nProcess)
	local sText = string.format(tDemonTower_Text["EnterTower"],tDemonTower_Text["Difficult"][nSel],nProcess,tDemonTower_Text["BossName"][nSel][nProcess])
	User_TalkChannel2005(sText)
end

--我想捐赠
function DemonTower_IWannaDonate(nNpcId,nSel,nFloor)
	-- if not Sys_ChkDayTime(tDemonTower_Const["OpenTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- return
	-- end
	
	if not DemonTower_ChkFloorOpen(nFloor+1) then
		LinkNpcGossipFunc_New(nNpcId,"8-1")
		return
	end
	
	if not DemonTower_ChkTakeThisFloor(nFloor) then
		local sTextBossName = tDemonTower_Text["BossName"][nSel][nFloor]
		local sTextDifficult = tDemonTower_Text["Difficult"][nSel]
		tNpcGossip[nNpcId]["Text781"] = string.format(tDemonTower_Text[nNpcId]["Text781"],sTextDifficult,nFloor,sTextBossName)
		LinkNpcGossipFunc_New(nNpcId,"7-8")
		return
	end
	
	local nEvent = tDemonTower_Stc["Event"]
	local nDataTimes = DemonTower_GetExistTimes()
	--已经没有领取次数了
	if nDataTimes == 0 then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	
	LinkNpcGossipFunc_New(nNpcId,"5-2")
	
end

--选择挑战的层塔
function DemonTower_SelectFloor(nNpcId,nSelFloor)
	-- if not Sys_ChkDayTime(tDemonTower_Const["OpenTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- return
	-- end
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTypeTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	--记录当前选择的层数
	Task_SetStatistic(nEvent,nTypeTakeFloor,nSelFloor,1)
	tNpcGossip[nNpcId]["OptionFunc531"] = "DemonTower_IWannaBySelf</N>"..nNpcId.."</N>"..nSel.."</N>"..nSelFloor
	tNpcGossip[nNpcId]["OptionFunc532"] = "DemonTower_DonateBySelFloor</N>"..nNpcId.."</N>"..nSel.."</N>"..nSelFloor
	LinkNpcGossipFunc_New(nNpcId,"5-3")
end

--选择塔层的捐赠
function DemonTower_DonateBySelFloor(nNpcId,nSel,nSelFloor)
	-- if not Sys_ChkDayTime(tDemonTower_Const["OpenTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- return
	-- end
	if not DemonTower_ChkFloorOpen(nSelFloor+1) then
		LinkNpcGossipFunc_New(nNpcId,"8-1")
		return
	end
	local nDataTimes = DemonTower_GetExistTimes()
	--已经没有领取次数了
	if nDataTimes == 0 then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	if not DemonTower_ChkTakeThisFloor(nSelFloor) then
		local sTextBossName = tDemonTower_Text["BossName"][nSel][nSelFloor]
		local sTextDifficult = tDemonTower_Text["Difficult"][nSel]
		tNpcGossip[nNpcId]["Text781"] = string.format(tDemonTower_Text[nNpcId]["Text781"],sTextDifficult,nSelFloor,sTextBossName)
		LinkNpcGossipFunc_New(nNpcId,"7-8")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"5-2")
end

--使用天石扫荡
function DemonTower_ConfirmUseEmoney(nNpcId,nSel,nFloor)
	-- if not Sys_ChkDayTime(tDemonTower_Const["OpenTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- return
	-- end
	if not DemonTower_ChkFloorOpen(nFloor+1) then
		LinkNpcGossipFunc_New(nNpcId,"8-1")
		return
	end
	local nDataTimes = DemonTower_GetExistTimes()
	--已经没有领取次数了
	if nDataTimes == 0 then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	--是否还能领取此层奖励
	if not DemonTower_ChkTakeThisFloor(nFloor) then
		LinkNpcGossipFunc_New(nNpcId,"7-8")
		return
	end
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]
	local nStar = Get_UserStatisticValue(nEvent,nTypeStar)
	local nUserEMoney = Get_UserEMoney()
	local nNeedNum = tDemonTower_Const["DonateEmoney"][nSel]
	--天石不足
	if nUserEMoney < nNeedNum then
		LinkNpcGossipFunc_New(nNpcId,"6-3")
		return
	end
	
	local nNeedSpace = tDemonTower_Const["Space"][nSel]
	--背包空间不足
	if not User_CheckLeftSpace(nNeedSpace) then
		tNpcGossip[nNpcId]["Text732"] = string.format(tDemonTower_Text[nNpcId]["Text732"],nNeedSpace)
		LinkNpcGossipFunc_New(nNpcId,"7-3")
		return
	end
	
	--设置领取掩码
	if not DemonTower_SetFloorStc(nFloor) then
		return
	end
	
	Task_SetStatistic(nEvent,nTypeStar,0,1)
	Task_SetStcTimestamp(nEvent,nTypeStar,0)
	User_AddEMoney(-1*nNeedNum)
	local sLogUseEmoney = string.format(tDemonTower_Log["DonateByEmoney"],nNeedNum)
	Sys_SaveActionFestivalLog(sLogUseEmoney)
	
	--获得奖励
	DemonTower_GetRewardReal(nSel,nFloor,nStar,1)
	
	
	local sEmoneyLog= tDemonTower_Log["Emoney"]["Swap"][nSel]
	Sys_SaveEmoneyBuy(sEmoneyLog)
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfSweep = tDemonTower_Const["Effect"]["Sweep"]
	User_EffectAdd(EfObj,EfSweep)
	LinkNpcGossipFunc_New(nNpcId,"7-4")
	
	--背包满直接给邮件奖励
	DemonTower_SendMail()
end

--使用流星卷扫荡
function DemonTower_ConfirmDonateMeteorScroll(nNpcId,nSel,nFloor)
	-- if not Sys_ChkDayTime(tDemonTower_Const["OpenTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- return
	-- end
	if not DemonTower_ChkFloorOpen(nFloor+1) then
		LinkNpcGossipFunc_New(nNpcId,"8-1")
		return
	end
	local nDataTimes = DemonTower_GetExistTimes()
	--已经没有领取次数了
	if nDataTimes == 0 then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	--是否还能领取此层奖励
	if not DemonTower_ChkTakeThisFloor(nFloor) then
		LinkNpcGossipFunc_New(nNpcId,"7-8")
		return
	end
	
	local nItemId = tDemonTower_Const["ItemId"]["MeteorScroll"]
	local nNeedNum = tDemonTower_Const["NeedMeteorScroll"][nSel]
	
	--流星卷不足
	if not Item_ChkMulItem(nItemId,nItemId,nNeedNum,0) then
		LinkNpcGossipFunc_New(nNpcId,"7-5")
		return
	end
	
	--背包空间不足
	if not User_CheckLeftSpace(1) then
		tNpcGossip[nNpcId]["Text732"] = string.format(tDemonTower_Text[nNpcId]["Text732"],1)
		LinkNpcGossipFunc_New(nNpcId,"7-3")
		return
	end

	if not Item_DelMulItem(nItemId,nItemId,nNeedNum,0) then
		return
	end
	
	local sUseItemLog = string.format(tDemonTower_Log["DonateByMeteorScroll"],nNeedNum)
	Sys_SaveActionFestivalLog(sUseItemLog)
	
	local sStageLog = tDemonTower_Log["NewStage"]["SwapByMete"][nSel]
	Sys_SaveActionFestivalLog(sStageLog)
	
	local nEvent = tDemonTower_Stc["Event"]
	
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]
	local nStar = Get_UserStatisticValue(nEvent,nTypeStar)
	--设置领取掩码
	if not DemonTower_SetFloorStc(nFloor) then
		return
	end
	
	Task_SetStatistic(nEvent,nTypeStar,0,1)
	Task_SetStcTimestamp(nEvent,nTypeStar,0)
	
	--获得奖励
	DemonTower_GetRewardReal(nSel,nFloor,nStar,1)
	
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfSweep = tDemonTower_Const["Effect"]["Sweep"]
	User_EffectAdd(EfObj,EfSweep)
	LinkNpcGossipFunc_New(nNpcId,"7-4")
	
	--背包满直接给邮件奖励
	DemonTower_SendMail()
end

-- 添加四星二次判断刷新
function DemonTower_ReFreshRewardFourStar(nNpcId,nFlag)
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]

	local nStar = Get_UserStatisticValue(nEvent,nTypeStar)
	
	if nStar == 4 then
		tNpcGossip[nNpcId]["OptionFunc1000011"] = "DemonTower_SureFresh</N>" .. nNpcId .. "</N>" .. nFlag
		LinkNpcGossipFunc_New(nNpcId,"10000-1")
	else
		if nFlag == 1 then
			DemonTower_ReFreshRewardByEmoney(nNpcId)
		elseif nFlag == 2 then
			DemonTower_ReFreshRewardByCul(nNpcId)
		elseif nFlag == 3 then
			DemonTower_ReFreshRewardBySoul(nNpcId)
		elseif nFlag == 4 then
			DemonTower_ReFreshRewardOneByCul(nNpcId)
		end
	end
end

-- 二次确认操作
function DemonTower_SureFresh(nNpcId,nFlag)
	if nFlag == 1 then
		DemonTower_ReFreshRewardByEmoney(nNpcId)
	elseif nFlag == 2 then
		DemonTower_ReFreshRewardByCul(nNpcId)
	elseif nFlag == 3 then
		DemonTower_ReFreshRewardBySoul(nNpcId)
	elseif nFlag == 4 then
		DemonTower_ReFreshRewardOneByCul(nNpcId)
	end
end



--用天石刷新奖励
function DemonTower_ReFreshRewardByEmoney(nNpcId)
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	
	local nUserMapId = Get_UserMapId()
	
	local sTextBossName = tDemonTower_Text["BossName"][nSel][nFloor]
	--如果是在塔内的npc
	if 19129 == nNpcId then
		if DemonTower_ChkExistMonster(nSel,nUserMapId) then
			tNpcGossip[nNpcId]["Text241"] = string.format(tDemonTower_Text[nNpcId]["Text241"],sTextBossName)
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	end
	
	
	local nUserEmoney = Get_UserEMoney()
	if nUserEmoney < 1 then
		local sTip = tDemonTower_Const["Refresh"]["NoEMoney"][nNpcId]
		LinkNpcGossipFunc_New(nNpcId,sTip)
		return
	end
	
	User_AddEMoney(-1)
	DemonTower_AddFreshTimes()
	
	
	
	local flat,tItem = Probabil_RandomAward(tDemonTower_Prob["Star"],nSel)
	local nStar = tItem[1]["tAward"][1]["Item_1"]
	
	Task_SetStatistic(nEvent,nTypeStar,nStar,1)
	Task_SetStcTimestamp(nEvent,nTypeStar,0)
	
	local sLog = tDemonTower_Log["RefreshByEmoney"]
	Sys_SaveActionFestivalLog(sLog)
	
	local sEmoneyLog= tDemonTower_Log["Emoney"]["Refresh"]
	Sys_SaveEmoneyBuy(sEmoneyLog)
	local sFinishTip = tDemonTower_Const["Refresh"]["Finish"][nNpcId]
	LinkNpcGossipFunc_New(nNpcId,sFinishTip)
	
end

--通过修行值刷新
function DemonTower_ReFreshRewardByCul(nNpcId)
	
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	
	local nUserMapId = Get_UserMapId()
	
	local sTextBossName = tDemonTower_Text["BossName"][nSel][nFloor]
	--如果是在塔内的npc
	if 19129 == nNpcId then
		if DemonTower_ChkExistMonster(nSel,nUserMapId) then
			tNpcGossip[nNpcId]["Text241"] = string.format(tDemonTower_Text[nNpcId]["Text241"],sTextBossName)
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	end
	
	
	local nUserCul = Get_UserCultivation()
	local nNeedCul = tDemonTower_Const["FreshByCul"]
	if nUserCul < nNeedCul then
		local sTip = tDemonTower_Const["Refresh"]["NoCul"][nNpcId]
		LinkNpcGossipFunc_New(nNpcId,sTip)
		return
	end
	
	User_AddCultivation(-1*nNeedCul)
	DemonTower_AddFreshTimes()
	local flat,tItem = Probabil_RandomAward(tDemonTower_Prob["Star"],nSel)
	local nStar = tItem[1]["tAward"][1]["Item_1"]
	
	Task_SetStatistic(nEvent,nTypeStar,nStar,1)
	Task_SetStcTimestamp(nEvent,nTypeStar,0)
	
	local sLog = tDemonTower_Log["RefreshByCul"]
	Sys_SaveActionFestivalLog(sLog)
	local sStageLog = tDemonTower_Log["NewStage"]["FreshByCul"]
	Sys_SaveActionFestivalLog(sStageLog)
	local sFinishTip = tDemonTower_Const["Refresh"]["Finish"][nNpcId]
	LinkNpcGossipFunc_New(nNpcId,sFinishTip)
end

--修行值一键刷5星
function DemonTower_ReFreshRewardOneByCul(nNpcId)
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]

	local nUserMapId = Get_UserMapId()
	
	--非困难类型
	if Task_ChkStcValue(nEvent,nTypeSel,"<",2) then
		User_TalkChannel2005(tDemonTower_Text["NoDiff"])
		return
	end
	--已被释放
	if DemonTower_ChkExistMonster(nSel,nUserMapId) then
		tNpcGossip[nNpcId]["Text241"] = string.format(tDemonTower_Text[nNpcId]["Text241"],sTextBossName)
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--修行值不足
	local nTimes = math.random(tDemonTower_Const["BeginTime"],tDemonTower_Const["EndTime"])
	local nNeedCul = nTimes * tDemonTower_Const["FreshByCul"]
	if Get_UserCultivation() < nNeedCul then
		local sTip = tDemonTower_Const["Refresh"]["NoCul"][nNpcId]
		LinkNpcGossipFunc_New(nNpcId,sTip)
		return
	end
	--修行值减少
	User_AddCultivation(-1*nNeedCul)
	DemonTower_AddFreshTimes(nTimes)
	--设5星
	Task_SetStatistic(nEvent,nTypeStar,5,1)
	Task_SetStcTimestamp(nEvent,nTypeStar,0)
	--提示
	User_TalkChannel2005(string.format(tDemonTower_Text["RefreshByCul"],nTimes,nNeedCul))
	
	local sStageLog = string.format(tDemonTower_Log["NewStage"]["BoxByCul"],nNeedCul)
	Sys_SaveActionFestivalLog(sStageLog)
	
	local sFinishTip = tDemonTower_Const["Refresh"]["Finish"][nNpcId]
	LinkNpcGossipFunc_New(nNpcId,sFinishTip)
end

--通过灵力精魂刷新
function DemonTower_ReFreshRewardBySoul(nNpcId)

	local nEvent = tDemonTower_Stc["Event"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	
	local nUserMapId = Get_UserMapId()
	
	local sTextBossName = tDemonTower_Text["BossName"][nSel][nFloor]
	--如果是在塔内的npc
	if 19129 == nNpcId then
		if DemonTower_ChkExistMonster(nSel,nUserMapId) then
			tNpcGossip[nNpcId]["Text241"] = string.format(tDemonTower_Text[nNpcId]["Text241"],sTextBossName)
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	end
	
	
	local nItemId = tDemonTower_Const["ItemId"]["Soul"]
	if not Item_ChkItem(nItemId) then
		local sTip = tDemonTower_Const["Refresh"]["NoSoul"][nNpcId]
		LinkNpcGossipFunc_New(nNpcId,sTip)
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	DemonTower_AddFreshTimes()
	local flat,tItem = Probabil_RandomAward(tDemonTower_Prob[nItemId],1)
	local nStar = tItem[1]["tAward"][1]["Item_1"]
	
	if nStar == 5 then
		local nGloBalData = tDemonTower_Const["GlobalData"]
		local nData = Get_SysDynaGlobalData1(nGloBalData)
		if nData >= tDemonTower_Const["ReFreshNum"] then
			nStar = 4
		else
			Sys_SetSynaGlobalData1(nGloBalData,nData+1)
		end
	end
	
	Task_SetStatistic(nEvent,nTypeStar,nStar,1)
	Task_SetStcTimestamp(nEvent,nTypeStar,0)
	
	local sLog = tDemonTower_Log["RefreshBySoul"]
	Sys_SaveActionFestivalLog(sLog)
	
	local sStageLog = tDemonTower_Log["NewStage"]["FreshByItem"]
	Sys_SaveActionFestivalLog(sStageLog)
	local sFinishTip = tDemonTower_Const["Refresh"]["Finish"][nNpcId]
	LinkNpcGossipFunc_New(nNpcId,sFinishTip)
end

--领取组队奖励
function DemonTower_GetTeamReward(nNpcId)
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeTR = tDemonTower_Stc["DataType"]["TeamReward"]
	
	if Task_StcInterval(nEvent,nTypeTR,1,4) then
		Task_SetStatistic(nEvent,nTypeTR,0,1)
		Task_SetStcTimestamp(nEvent,nTypeTR,0)
	end
	
	local nDataTR = Get_UserStatisticValue(nEvent,nTypeTR)
	--0表示未完成，1表示完成未领奖，2表示已领奖。
	
	if nDataTR == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	if nDataTR == 2 then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	Task_SetStatistic(nEvent,nTypeTR,2,1)
	Task_SetStcTimestamp(nEvent,nTypeTR,0)
	
	if not Item_AddNewItem(3008733,"") then
		return
	end
	
	
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfSweep = tDemonTower_Const["Effect"]["FinishMission"]
	User_EffectAdd(EfObj,EfSweep)
	
	--添加领取侠士礼包的LOG
	Sys_SaveActionFestivalLog(tDemonTower_Log["NewStage"]["GetPack"])
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

--开始挑战
function DemonTower_BeginChallenge(nNpcId)
	
	-- if not Sys_ChkDayTime(tDemonTower_Const["OpenTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"4-2")
		-- return
	-- end
	local nTimes = DemonTower_GetExistTimes()
	
	if nTimes == 0 then
		Sys_MsgBox(tDemonTower_Text["ThreeTimes"])
		return
	end
	
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	local nMapFlag = false
	
	--当前地图还有怪物存在
	local nUserMapId = Get_UserMapId()
	
	for k,v in pairs(tDemonTower_MapDoc) do
		if Get_MapDoc(nUserMapId) == v then
			nMapFlag = true
			break
		end
	end

	if not nMapFlag then
		return
	end
	
	local sTextBossName = tDemonTower_Text["BossName"][nSel][nFloor]
	if DemonTower_ChkExistMonster(nSel,nUserMapId) then
		tNpcGossip[nNpcId]["Text241"] = string.format(tDemonTower_Text[nNpcId]["Text241"],sTextBossName)
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	if nFloor == nil then
		return
	end
	
	--检查是否还能挑战此层，不能的话则提示
	if not DemonTower_ChkTakeThisFloor(nFloor) then
		tNpcGossip[nNpcId]["Text251"] = string.format(tDemonTower_Text[nNpcId]["Text251"],sTextBossName)
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	if Get_NpcCountByName(tDemonTower_Text["BoxName"]) > 0 then
		Npc_DelDynaNpc(nUserMapId,"name",tDemonTower_Text["BoxName"])
	end
	DemonTower_DelDynaNpc(nSel,nFloor)
	
	local tTable = tDemonTower_Generator[nSel][nFloor]
	
	for i,v in pairs(tTable) do
		local nMonsterId = v["MonsterId"]
		local nGenId = v["GenId"]
		if i == 1 then
			-- 添加怪物计数
			local nMonNum = Get_SysTempData(1,nUserMapId,nMonsterId)
			Sys_SetTempData(1,nUserMapId,nMonsterId,nMonNum + 1)
	
			Monster_AddMonster(nUserMapId,65,68,nGenId,nMonsterId)
			if nFloor == 9 then
				local EfType = tDemonTower_Const["Effect"]["BossFre1"]
				Map_Effect(nUserMapId,65,68,EfType)
			end
		else
			local nPosNum = #tDemonTower_Const["RandomPos"]
			local nRandomNum = math.random(1,nPosNum)
			local tPos = tDemonTower_Const["RandomPos"][nRandomNum]
			
			-- 添加怪物计数
			local nMonNum = Get_SysTempData(1,nUserMapId,nMonsterId)
			Sys_SetTempData(1,nUserMapId,nMonsterId,nMonNum + 1)
			-- User_TalkChannel2005(tostring(Get_SysTempData(1,nUserMapId,nMonsterId)) .. "=====")
			Monster_AddMonster(nUserMapId,tPos[1],tPos[2],nGenId,nMonsterId)
		end
	end
	User_Screffect(1)
	local sTextBossName = tDemonTower_Text["BossName"][nSel][nFloor]
	local sText = string.format(tDemonTower_Text["BeginChallenge"],sTextBossName,sTextBossName,sTextBossName)
	User_TalkChannel2005(sText)
	
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfStyle = tDemonTower_Const["Effect"]["BeginGame"]
	
	User_EffectAdd(EfObj,EfStyle)
	
end

--返回塔间通道
function DemonTower_BackToRoad(nNpcId)
	
	local nEvent = tDemonTower_Stc["Event"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	
	--如果挑战本层成功了，则进入下一层的塔间通道
	if not DemonTower_ChkTakeThisFloor(nFloor) then
		nFloor = nFloor + 1
	end
	
	if nFloor > 9 then
		nFloor = 9
	end
	
	local nRoadMap = tDemonTower_Const["FloorToRoad"][nFloor]
	local nCellx = tDemonTower_Const["PosInRoad"][1]
	local nCelly = tDemonTower_Const["PosInRoad"][2]
	
	User_ChgMap(nRoadMap,nCellx,nCelly,1)
	
end

--返回双龙城
function DemonTower_BackToMainCity()	
	DemonTower_LeaveToCity()
end

function DemonTower_GoToMainCity()	
	Sys_MsgBox(tDemonTower_Text["Msg"]["Leave"],"DemonTower_LeaveToCity")
end

function DemonTower_LeaveToCity()
	local nMapId = tDemonTower_Const["MainCity"]
	local nCellx = tDemonTower_Const["MainCityCellx"]
	local nCelly = tDemonTower_Const["MainCityCelly"]
	local nRange = tDemonTower_Const["Range"]
	
	if Get_UserLife() < 1 then
		return
	end
	
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange,1)
	
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfStyle =  tDemonTower_Const["Effect"]["LeaveMove"]
	User_EffectAdd(EfObj,EfStyle)
	--背包满直接给邮件奖励
	DemonTower_SendMail()
end

function DemonTower_SendMail()
	local nTaskId = tDemonTower_Const["TaskId"]
	local tAward = tDemonTower_AddAward["Old"]
	--不存在任务
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	--没完成
	if Task_ChkTaskDetailValue(nTaskId,"1","<",1) then
		return
	end
	--已经领过奖励
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) and Task_ChkTaskDetailValue(nTaskId,"6","==",1) then
		return
	end
	--层数
	local nTaskData = Get_TaskDetailData1(nTaskId)
	local nEventType=tDemonTower_Stc["NewFloor"]["EventType"]
	local nDataType=tDemonTower_Stc["NewFloor"]["DataType"]
	local nFloor = Get_UserStatisticValue(nEventType,nDataType)

	--置掩码
	Task_SetTaskDetailData6(nTaskId,1)
	Task_SetTaskDetailData1(nTaskId,0)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)

	--难度
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nDataSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local sDiffName =tDemonTower_Text["Difficult"][nDataSel]
	local nActionId = tDemonTower_Const["Mail"]["ActionId"][1]
	local sRewardName = tDemonTower_Text["RewardName"][1]

	--新服判断(英文去除)
	--if Get_SysDynaGlobalData1(51131) > 0 then
	--	nActionId = tDemonTower_Const["Mail"]["ActionId"][2]
	--	sRewardName = tDemonTower_Text["RewardName"][2]
	--	
	--	tAward = tDemonTower_AddAward["New"]
	--end
	
	--191211[英文征服][活动脚本]老玩家召回（1.7-1.31）
	RecallOfOldPlayers_CompleteTask(1)
	
	local nSpace = RewardTemplate_GetRewardSpace(tAward)
	--背包有空间
	if User_CheckLeftSpace(nSpace) then
		local Flag,sRewardStr = RewardTemplate_UseItem(tAward)
		Sys_MsgBox(string.format(tDemonTower_Text["TaskComplete"],sRewardStr))
	else
		--发邮件
		local nUserId = Get_UserId()
		local sTitle = tDemonTower_Text["Mail"]["Title"]
		local sSender = tDemonTower_Text["Mail"]["Sender"]
		local nExistDay = tDemonTower_Const["Mail"]["ExistDay"]
		local sContent = string.format(tDemonTower_Text["Mail"]["Content"],nFloor,sDiffName,sRewardName)
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	end

	Task_AddActivityTaskSchedule(4)
	Sys_SaveActionFestivalLog(tDemonTower_Log["AwardJinTian"])
	NewTaskItem_AddProcessTask()
end

--重设塔间通道npc文字
function DemonTower_ResetText19138(nNpcId)
	
	local nUserMapId = Get_UserMapId()
	local nFloor = tDemonTower_Const["RoadToFloor"][nUserMapId]
	tNpcGossip[nNpcId]["Text111"] =string.format(tDemonTower_Text[nNpcId]["Text111"],nFloor)
	tNpcGossip[nNpcId]["Option111"] = string.format(tDemonTower_Text[nNpcId]["Option111"],nFloor)
end


--进入下一层的塔间通道
function DemonTower_GoToNextRoad(nNpcId)
	local nEvent = tDemonTower_Stc["Event"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	
	if nFloor == 9 then
		
		return
	end
	nFloor = nFloor + 1
	local nRoadMap = tDemonTower_Const["FloorToRoad"][nFloor]
	local nCellx = tDemonTower_Const["PosInRoad"][1]
	local nCelly = tDemonTower_Const["PosInRoad"][2]
	
	User_ChgMap(nRoadMap,nCellx,nCelly,1)
	
end

--我要挑战下一层
function DemonTower_TakeTheNextFloor(nNpcId)
	
	local nUserMapId = Get_UserMapId()
	local nFloor = tDemonTower_Const["RoadToFloor"][nUserMapId]
	
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	
	if nFloor == nil then
		if nUserMapId == nil then
			Sys_SaveAbnormalLog("nUserMapId is nil")
		else
			local nCount = 0
			for i,v in pairs(tDemonTower_Const["RoadToFloor"]) do
				if i == nUserMapId then
					nCount = nCount + 1
				end
			end
			if nCount == 0 then
				Sys_SaveAbnormalLog("nUserMapId==" .. tostring(nUserMapId))
			end
		end
		return
	end
	
	if not DemonTower_ChkFloorOpen(nFloor) then
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		return
	end
	
	local nTypeTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	--记录当前选择的层数
	Task_SetStatistic(nEvent,nTypeTakeFloor,nFloor,1)

	local nInstance = tDemonTower_Const["Instance"][nSel][nFloor]
	
	if not User_EnterInstance(nInstance) then
		return
	end

	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfStyle =  tDemonTower_Const["Effect"]["EnterMove"]
	User_EffectAdd(EfObj,EfStyle)
	DemonTower_CreateDynaNpc(nSel,nFloor)
	
	local sText = string.format(tDemonTower_Text["EnterTower"],tDemonTower_Text["Difficult"][nSel],nFloor,tDemonTower_Text["BossName"][nSel][nFloor])
	User_TalkChannel2005(sText)
	
end

--重设宝箱文字
function DemonTower_ResetGiftBoxText(nNpcId)
	local nEvent = tDemonTower_Stc["Event"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local sBossName = tDemonTower_Text["BossName"][nSel][nFloor]
	local nFreshTimes = DemonTower_GetFreshTimes()
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]

	local nStar = Get_UserStatisticValue(nEvent,nTypeStar)
	
	--还未有星级
	if nStar == 0 then
		local flat,tItem = Probabil_RandomAward(tDemonTower_Prob["Star"],nSel)
		nStar = tItem[1]["tAward"][1]["Item_1"]
		Task_SetStatistic(nEvent,nTypeStar,nStar,1)
		Task_SetStcTimestamp(nEvent,nTypeStar,0)
	end
	
	local nDataTimes = DemonTower_GetExistTimes()
	local nUserLev = Get_UserLevel()
	
	if nUserLev >= G_User_MaxLev then
	
	end
	
	local sTextColor = tDemonTower_Const["StarToColor"][nStar]
	local sAwardText = tDemonTower_Text["Awards_tip"][nFloor][nSel][nStar]
	--满级提示不一样
	if nUserLev >= G_User_MaxLev then
		sAwardText = tDemonTower_Text["AwardsNoExp_tip"][nFloor][nSel][nStar]
	end
	local sExraAwardText = tDemonTower_Text["Awards"][nFloor][nSel]["Exra"]
	
	local sTextStar = tDemonTower_Text["Star" .. nStar]
	
	local nAllSpace = tDemonTower_Const["SpaceNum"]
	local nRealSpace = nAllSpace - nStar
	local nEndSpace = tDemonTower_Const["EndSpace"] - nStar
	local sTextSpace = string.rep(" ",nRealSpace)
	local sTextEnd = string.rep(" ",nEndSpace)
	local sTextPin = tDemonTower_Text["StarToPin"][nStar]
	-- tNpcGossip[nNpcId]["Text111"] = string.format(tDemonTower_Text[nNpcId]["Text111"],sAwardText)
	tNpcGossip[nNpcId]["Text113"] = string.format(tDemonTower_Text[nNpcId]["Text113"],sTextColor,sAwardText,sTextPin)
	-- tNpcGossip[nNpcId]["Text114"] = string.format(tDemonTower_Text[nNpcId]["Text114"],sTextSpace,sTextColor,sAwardText,sTextStar,sTextEnd)
	local sStarNum = ""
	if nStar == 1 then
		sStarNum = string.format(tDemonTower_Text["StarNum"],nStar)
	else
		sStarNum = string.format(tDemonTower_Text["StarNums"],nStar)
	end
	tNpcGossip[nNpcId]["Text114"] = string.format(tDemonTower_Text[nNpcId]["Text114"],sTextColor,sAwardText,sStarNum)
	
	tNpcGossip[nNpcId]["Text116"] = string.format(tDemonTower_Text[nNpcId]["Text116"],nFreshTimes)
	-- tNpcGossip[nNpcId]["Text117"] = string.format(tDemonTower_Text[nNpcId]["Text117"],sExraAwardText)
	
end

--宝箱获得奖励
function DemonTower_GetReward(nNpcId)
	
	local nEvent = tDemonTower_Stc["Event"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]
	local nStar = Get_UserStatisticValue(nEvent,nTypeStar)
	local nTypeBossRec = tDemonTower_Stc["DataType"]["BossRecord"]
	if not DemonTower_ChkTakeThisFloor(nFloor) then
		if nFloor == 9 then
			LinkNpcGossipFunc_New(nNpcId,"2-6")
		else
			LinkNpcGossipFunc_New(nNpcId,"2-5")
		end
		return
	end
	local sTextBossName = tDemonTower_Text["BossName"][nSel][nFloor]
		--今日无领奖次数了
	if DemonTower_GetExistTimes() == 0 then
		tNpcGossip[nNpcId]["Text121"] = string.format(tDemonTower_Text[nNpcId]["Text121"],sTextBossName)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nRecordData = Get_UserStatisticValue(nEvent,nTypeBossRec)
	if Task_ChkStcValue(nEvent,nTypeBossRec,"~=",nSel*10+nFloor) then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	
	local nNeedSpace = tDemonTower_Const["Space"][nSel]
	
	---获得1个晶莹星陨石绝对低价优惠卷碎片
	if Sys_ChkFullTime(tActivityTime["BuyAsteroids"]["Now_Time"]) then
		nNeedSpace = nNeedSpace +1
	end
	
	if not User_CheckLeftSpace(nNeedSpace) then
		tNpcGossip[nNpcId]["Text211"] = string.format(tDemonTower_Text[nNpcId]["Text211"],nNeedSpace)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	

	local nTypeRefresh = tDemonTower_Stc["DataType"]["RefreshTimes"]
	Task_SetStatistic(nEvent,nTypeRefresh,0,1)
	Task_SetStcTimestamp(nEvent,nTypeRefresh,0)
	
	--设置领取掩码
	if not DemonTower_SetFloorStc(nFloor) then
		return
	end
	--清星级
	Task_SetStatistic(nEvent,nTypeStar,0,1)
	Task_SetStcTimestamp(nEvent,nTypeStar,0)
	
	--获得奖励
	local sTextAward = ""
	local nTypeBossRec = tDemonTower_Stc["DataType"]["BossRecord"]
	Task_SetStatistic(nEvent,nTypeBossRec,0,1)
	Task_SetStcTimestamp(nEvent,nTypeBossRec,0)
	
	local nItemId = tDemonTower_Award["MustAward"]
	
	if not Item_AddNewItem(nItemId,"") then
		return false
	end
	
	--固定奖励
	local tTable = tDemonTower_Award[nFloor][nSel]["Regular"][nStar]
	local nUserLev = Get_UserLevel()
	for i,v in pairs(tTable) do
		--如果是加经验，而且已不满级，才能进行加经验操作
		local Fun = v["Func"]
		local tParam2 = v["Param"]
		if Fun == User_AddExpTime then
			if nUserLev < G_User_MaxLev then
				Fun(table.unpack(DemonTower_Split(tParam2," ")))
			end
		else
			Fun(table.unpack(DemonTower_Split(tParam2," ")))
		end
	end
	
	--2转140以上玩家打开困难镇魔塔5星宝箱额外获得1个灭邪晶玉
	local nBoxMete = tDemonTower_Const["BoxMete"]
	local nBoxLevel = tDemonTower_Const["BoxLevel"]
	if User_JudgeLevelAndMetempsychosis(nBoxLevel,nBoxMete) then
		if nSel == 2 and nStar == 5 then
			local nNewItemId = tDemonTower_Const["BoxItemId"]
			if Item_AddNewItem(nNewItemId,"") then
				Sys_SaveActionFestivalLog(string.format(tDemonTower_Log["NewStage"]["BoxByCul"],nNewItemId))
				User_TalkChannel2005(string.format(tRewardTemplate_Text["Main"],Get_ItemtypeName(nNewItemId)))
			end
		end
	end
	
	local sAwardText = string.format(tDemonTower_Text["AwardText"],tDemonTower_Text["Awards"][nFloor][nSel][nStar])
	--满级提示不一样
	-- if nUserLev >= G_User_MaxLev then
		-- sAwardText = string.format(tDemonTower_Text["AwardText"],tDemonTower_Text["AwardsNoExp"][nFloor][nSel][nStar])
	-- end
	
	local sNorLog = tDemonTower_Log["AwardByExp"][nSel][nFloor][nStar]
	
	-- if nUserLev >= G_User_MaxLev then
		-- sNorLog = tDemonTower_Log["AwardNoExp"][nSel][nFloor][nStar]
		-- User_TalkChannel2005(tDemonTower_Text["MaxLev1"])
	-- end
	Sys_SaveActionFestivalLog(sNorLog)
	
	
	--额外奖励
	-- local nProb = tDemonTower_Award[nFloor][nSel]["Exra"][1]["Prob"]
	-- local nBaseProb = tDemonTower_Const["BaseProb"]
	-- local Func = tDemonTower_Award[nFloor][nSel]["Exra"][1]["Func"]
	-- local tParam1 = tDemonTower_Award[nFloor][nSel]["Exra"][1]["Param"]
	-- local sExraLog = tDemonTower_Log["ExraAward"][nFloor]
	
	-- if nProb == nil then
		-- Func(table.unpack(DemonTower_Split(tParam1," ")))
		-- local sExraText = string.format(tDemonTower_Text["ExraAward"],tDemonTower_Text["Awards"][nFloor][nSel]["Exra"])
		-- Sys_SaveActionFestivalLog(sExraLog)
		-- sAwardText = string.sub(sAwardText,1,string.len(sAwardText)-2)
		-- sAwardText = sAwardText..sExraText
	-- else
		-- if Sys_Random(nProb,nBaseProb) then
			-- Func(table.unpack(DemonTower_Split(tParam1," ")))
			-- local sExraText = string.format(tDemonTower_Text["ExraAward"],tDemonTower_Text["Awards"][nFloor][nSel]["Exra"])
			-- Sys_SaveActionFestivalLog(sExraLog)
			-- sAwardText = string.sub(sAwardText,1,string.len(sAwardText)-2)
			-- sAwardText = sAwardText..sExraText
		-- end
	-- end
	
	--人品超级爆发奖励
	-- if nSel == 2 then
		-- local nProbDrop = tDemonTower_Const["DropProb"]
		-- local nGlobData = tDemonTower_Const["GlobalData"]
		-- local nExchangeData = Get_SysDynaGlobalData0(nGlobData)
		-- if nExchangeData <= tDemonTower_Const["ExchangeNum"] then
			-- if Sys_Random(nProbDrop,nBaseProb) then
				-- Sys_SetSynaGlobalData0(nGlobData,nExchangeData+1)
				-- if not Item_AddNewItem(tDemonTower_Const["ItemId"]["FirePhity"],"") then
					-- return false
				-- end
				-- User_TalkChannel2005(tDemonTower_Text["WhatTheLuck"])
				-- local sSuperLog = tDemonTower_Log["Super"]
				-- Sys_SaveActionFestivalLog(sSuperLog)
			-- end
		-- end
	-- end
	
	-----获得1个晶莹星陨石绝对低价优惠卷碎片
	BuyAsteroids_Reward(2)
	
	---1月神纹月活动 通关第9层获得黄色神纹精粹
	if Sys_ChkFullTime(tActivityTime["JanRuneImproveMon"]["ActivityTime"]) then
		if nFloor==9 then
			JanRuneImproveMon_DemonTowerReward(nSel)
		end
	end 
	
	
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfSweep = tDemonTower_Const["Effect"]["AwardReward"]
	User_EffectAdd(EfObj,EfSweep)
	
	local sLogStage = tDemonTower_Log["Stage"][nSel][nFloor]
	Sys_SaveActionFestivalLog(sLogStage)
	
	tNpcGossip[nNpcId]["Text281"] = string.format(tDemonTower_Text[nNpcId]["Text281"],sAwardText)
	LinkNpcGossipFunc_New(nNpcId,"2-8")
	
end

--选择层数是否已开放
function DemonTower_ChkFloorOpen(nFloor)
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTypeProcess = tDemonTower_Stc["DataType"]["Process"][nSel]
	local nProcess = Get_UserStatisticValue(nEvent,nTypeProcess)
	
	return (nProcess+1) >= nFloor
end

--怪物死亡
function DemonTower_MonsterDie()
	local nEvent = tDemonTower_Stc["Event"]

	local nTeamNumber =  Get_UserTeamNumbers()
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTypeBossRec = tDemonTower_Stc["DataType"]["BossRecord"]
	local nUserMapId = Get_UserMapId()
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	
	local nMonNum = Get_SysTempData(1,nUserMapId,Get_MonsterType())
	
	if nMonNum > 0 then
		local nBossNum = nMonNum - 1
		Sys_SetTempData(1,nUserMapId,Get_MonsterType(),nBossNum)
	else
		Sys_SetTempData(1,nUserMapId,Get_MonsterType(),0)
	end	

	--已经可以领奖了。
	if not DemonTower_ChkExistMonster(nSel,nUserMapId) then
		
		if nTeamNumber > 1 then
			User_TeamExeFuncByTeamer(2,"DemonTower_MonsterFunStc</N>"..nSel.."</N>"..nFloor)
		else
			Task_SetStatistic(nEvent,nTypeBossRec,nSel*10+nFloor,1)
			Task_SetStcTimestamp(nEvent,nTypeBossRec,0)
			local EfObj = tDemonTower_Const["Effect"]["Obj"]
			local EfSweep = tDemonTower_Const["Effect"]["KillAll"]
			User_EffectAdd(EfObj,EfSweep)
			local sMsgText = string.format(tDemonTower_Text["KillAll"],nFloor)
			Sys_MsgBox(sMsgText,"DemonTower_FindWayToBox")
		end
		
		if Get_NpcCountByName(tDemonTower_Text["BoxName"]) > 0 then
			Npc_DelDynaNpc(nUserMapId,"name",tDemonTower_Text["BoxName"])
		end
		Npc_CreateDynaNpc(tDemonTower_Text["BoxName"],2,0,tDemonTower_Const["DyNpc"][1],0,0,nUserMapId,tDemonTower_Const["DyNpc"][2],tDemonTower_Const["DyNpc"][3],0,0,0,tDemonTower_Const["DyNpc"][4])
		
		local EfStyle = tDemonTower_Const["Effect"]["BoxFresh"]
		
		Map_Effect(nUserMapId,tDemonTower_Const["DyNpc"][2],tDemonTower_Const["DyNpc"][3],EfStyle)
	end
	
	
	-- 添加魂值
	local nTdTask = tDemonTower_DaTask["TaskId"]
	local nTdEvent = tDemonTower_DaStc["Event"]
	local nTdData = tDemonTower_DaStc["Data"]
	local nTdItemId = 0
	local nMonsterId = Get_MonsterType()
	local nTdUserId = Get_UserId()
	if Task_ChkTaskDetail(nTdTask) and Get_TaskDetailData3(nTdTask,nTdUserId) ~= 1 then
		
	
		for k,v in pairs(tDemonTower_DaItem) do
			if Item_ChkItem(v) then
				nTdItemId = v
				break
			end
		end
		
		if nTdItemId ~= 0 and tDemonTower_DaMonster[nMonsterId] ~= nil then
			if Get_UserStatisticValue(nTdEvent,nTdData,nTdUserId) >= tDemonTower_DaData[nTdItemId] then
				User_TalkChannel2005(tDemonTower_Text["Msg"]["FullHZ"])
				Task_SetTaskDetailData3(nTdTask,1,nTdUserId)
			else
				Task_AddStatistic(nTdEvent,nTdData,tDemonTower_DaMonster[nMonsterId],1,nTdUserId)
				User_TalkChannel2005(string.format(tDemonTower_Text["Msg"]["GetHZ"],tDemonTower_DaMonster[nMonsterId]))
				
				if Get_UserStatisticValue(nTdEvent,nTdData,nTdUserId) >= tDemonTower_DaData[nTdItemId] then
					User_TalkChannel2005(tDemonTower_Text["Msg"]["FullHZ"])
					Task_SetTaskDetailData3(nTdTask,1,nTdUserId)				
				end			
			end
		end
	end
end

--怪物死亡全队执行函数
function DemonTower_MonsterFunStc(nSel,nFloor,nUserId)
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfSweep = tDemonTower_Const["Effect"]["KillAll"]
	User_EffectAdd(EfObj,EfSweep,nUserId)
	
	local nEvent = tDemonTower_Stc["Event"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nTypeBossRec = tDemonTower_Stc["DataType"]["BossRecord"]
	
	-- 添加组队杀死LOG ： 有领奖次数才进行添加
	local nDataTime = DemonTower_GetExistTimes()
	if nDataTime > 0 then
		local nUserMapId = Get_UserMapId(nUserId)
		local nPlayerNum = Map_GetUserNum(nUserMapId,0)
		if nPlayerNum > 1 then
			Sys_SaveActionFestivalLog(tDemonTower_Log["NewStage"]["TeamKill"])
		end
	end	
	Task_SetStatistic(nEvent,nTypeBossRec,nSel*10+nFloor,1,nUserId)
	Task_SetStcTimestamp(nEvent,nTypeBossRec,0,nUserId)
	
	local sMsgText = string.format(tDemonTower_Text["KillAll"],nFloor)
	Sys_MsgBox(sMsgText,"DemonTower_FindWayToBox")
	local nTypeTeam = tDemonTower_Stc["DataType"]["TeamReward"]
	if Task_StcInterval(nEvent,nTypeTeam,1,4,nUserId) then
		Task_SetStatistic(nEvent,nTypeTeam,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nTypeTeam,0,nUserId)
	end
	
	local nTeamData = Get_UserStatisticValue(nEvent,nTypeTeam,nUserId)
	if nTeamData ~= 2 then
		Task_SetStatistic(nEvent,nTypeTeam,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nTypeTeam,0,nUserId)
	end
end

--自动寻路到宝箱
function DemonTower_FindWayToBox()
	--关闭自动挂机
	User_StopHangUp()
	
	local nUserMapDoc = Get_MapDoc()
	local bInMap = false
	for i,v in pairs(tDemonTower_Const["MapDoc"]) do
		if v == nUserMapDoc then
			bInMap = true
			break
		end
	end
	if bInMap == false then
		return
	end
	
	local nNpcId = tDemonTower_Const["FindWayToBox"]["NpcId"]
	local nCellx = tDemonTower_Const["FindWayToBox"]["Cellx"]
	local nCelly = tDemonTower_Const["FindWayToBox"]["Celly"] + 4
	local nUserMapId = Get_UserMapId()
	
	Sys_GotoSomeWhere(nCellx,nCelly,nUserMapId,nNpcId)
	
end

--重设塔层内npc文字
function DemonTower_ResetText19129_11(nNpcId)
	
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]
	local nStar = Get_UserStatisticValue(nEvent,nTypeStar)
	local nDataTimes = DemonTower_GetExistTimes()
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	--还没刷新奖励，则刷新第一次星级
	if nStar == 0 then
		local flat,tItem = Probabil_RandomAward(tDemonTower_Prob["Star"],nSel)
		nStar = tItem[1]["tAward"][1]["Item_1"]

		Task_SetStatistic(nEvent,nTypeStar,nStar,1)
		Task_SetStcTimestamp(nEvent,nTypeStar,0)
	end
	
	local nNeedEMoney = tDemonTower_Const["DonateEmoney"][nSel]
	local nNeedMeteorScroll = tDemonTower_Const["NeedMeteorScroll"][nSel]
	local nRefreshTimes = DemonTower_GetFreshTimes()
	
	local sTextStar = tDemonTower_Text["Star" .. nStar]
	
	local sTextExra = tDemonTower_Text["Awards"][nFloor][nSel]["Exra"]
	
	tNpcGossip[nNpcId]["Text111"] = string.format(tDemonTower_Text[nNpcId]["Text111"],tDemonTower_Text["BossSay"][1][nFloor][1])
	tNpcGossip[nNpcId]["Text112"] = string.format(tDemonTower_Text[nNpcId]["Text112"],tDemonTower_Text["BossSay"][1][nFloor][2])
	
	
	local sTextColor = tDemonTower_Const["StarToColor"][nStar]
	local sAwardText = tDemonTower_Text["Awards_tip"][nFloor][nSel][nStar]
	local nUserLev = Get_UserLevel()
	if nUserLev >= G_User_MaxLev then
		sAwardText = tDemonTower_Text["AwardsNoExp_tip"][nFloor][nSel][nStar]
	end
	
	local sExraAwardText = tDemonTower_Text["Awards"][nFloor][nSel]["Exra"]
	local sTextStar = tDemonTower_Text["Star" .. nStar]
	
	local nAllSpace = tDemonTower_Const["SpaceNum"]
	local nRealSpace = nAllSpace - nStar
	local nEndSpace = tDemonTower_Const["EndSpace"] - nStar
	local sTextSpace = string.rep(" ",nRealSpace)
	local sTextEnd = string.rep(" ",nEndSpace)
	local sTextPin = tDemonTower_Text["StarToPin"][nStar]
	
	tNpcGossip[nNpcId]["Text115"] = string.format(tDemonTower_Text[nNpcId]["Text115"],sTextColor,sAwardText,sTextPin)
	-- tNpcGossip[nNpcId]["Text116"] = string.format(tDemonTower_Text[nNpcId]["Text116"],sTextSpace,sTextColor,sAwardText,sTextStar,sTextEnd)
	local sStarNum = ""
	if nStar == 1 then
		sStarNum = string.format(tDemonTower_Text["StarNum"],nStar)
	else
		sStarNum = string.format(tDemonTower_Text["StarNums"],nStar)
	end
	tNpcGossip[nNpcId]["Text116"] = string.format(tDemonTower_Text[nNpcId]["Text116"],sTextColor,sAwardText,sStarNum)
	tNpcGossip[nNpcId]["Text118"] = string.format(tDemonTower_Text[nNpcId]["Text118"],nRefreshTimes)

end

--判断塔层内是否还存在怪物
function DemonTower_ChkExistMonster(nSel,nMapId)
	local nEvent = tDemonTower_Stc["Event"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	
	local tTable = tDemonTower_Generator[nSel][nFloor]
	local nUserMapId = Get_UserMapId()
	
	for i,v in pairs(tTable) do
		local nMonsterId = v["MonsterId"]
		local nGenId = v["GenId"]
		
		if Get_SysTempData(1,nUserMapId,nMonsterId) > 0 then
			-- User_TalkChannel2005(tostring(Get_SysTempData(1,nUserMapId,nMonsterId)))
			return true
		end
	end
	
	return false
end

--获得还剩下的次数
function DemonTower_GetExistTimes()
	local nEvent = tDemonTower_Stc["Event"]
	local nType = tDemonTower_Stc["DataType"]["AwardFloor"]
	--隔天处理
	DemonTower_TaskInteval()
	local nTimes = 0
	
	for i,v in pairs(nType) do
		--隔天判断
		if Task_StcInterval(nEvent,v,1,4) then
			Task_SetStatistic(nEvent,v,0,1)
			Task_SetStcTimestamp(nEvent,v,0)
		end
		--=0的话才可以挑战
		if Task_ChkStcValue(nEvent,v,"==",0) then
			nTimes =nTimes +1
		end
	end
	return nTimes
end

--检查是否还可以挑战本层
function DemonTower_ChkTakeThisFloor(nFloor)
	
	local nEvent = tDemonTower_Stc["Event"]
	local nType = tDemonTower_Stc["DataType"]["AwardFloor"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTimes = 0
	
	for i,v in pairs(nType) do
		--隔天判断
		if Task_StcInterval(nEvent,v,1,4) then
			Task_SetStatistic(nEvent,v,0,1)
			Task_SetStcTimestamp(nEvent,v,0)
		end
		--只要有一个相等的话，就不能再打了
		if Task_ChkStcValue(nEvent,v,"==",nSel*10+nFloor) then
			return false
		end
	end
	
	return true
	
end

--记录当天已经领取了对应层的奖励
function DemonTower_SetFloorStc(nFloor)
	--隔天处理
	DemonTower_TaskInteval()
	local nEvent = tDemonTower_Stc["Event"]
	local nType = tDemonTower_Stc["DataType"]["AwardFloor"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTypeProcess = tDemonTower_Stc["DataType"]["Process"][nSel]
	local nProcess = Get_UserStatisticValue(nEvent,nTypeProcess)
	local nTaskId = tDemonTower_Const["TaskId"]
	--检测掩码是否存在
	if not Task_ChkTaskDetail(nTaskId) then
		return false
	end
	local nTaskData = Get_TaskDetailData1(nTaskId)
	for i,v in pairs(nType) do
		if Task_ChkStcValue(nEvent,v,"==",0) then
			Task_SetStatistic(nEvent,v,nSel*10+nFloor,1)
			
			Task_SetStcTimestamp(nEvent,v,0)
			if Task_ChkTaskDetailValue(nTaskId,"6","==",1) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) then

				else	
					Task_SetTaskDetailData1(nTaskId,nTaskData+1)
					--记录当前层数
					local nEventType=tDemonTower_Stc["NewFloor"]["EventType"]
					local nDataType=tDemonTower_Stc["NewFloor"]["DataType"]
	
					Task_SetStatistic(nEventType,nDataType,nFloor,1)
					Task_SetStcTimestamp(nEventType,nDataType,0)
				end
			
			
			--如果进度还未保存
			if nFloor-1 >= nProcess then
				Task_SetStatistic(nEvent,nTypeProcess,nFloor,1)
				Task_SetStcTimestamp(nEvent,nTypeProcess,0)
			end
			return true
		end
	end
	return false
end

--检测是否开放困难难度
--通过简单第9层则开放
function DemonTower_ChkOpenDifficult()
	local nEvent = tDemonTower_Stc["Event"]
	local nType = tDemonTower_Stc["DataType"]["Process"][1]
	return Task_ChkStcValue(nEvent,nType,">=",9)
end

--创建的动态npc 西煌馈赠
function DemonTower_DynaNpc(nNpcId)
	local nEvent = tDemonTower_Stc["Event"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local sTextBossName = tDemonTower_Text["BossName"][nSel][nFloor]
	local nTypeBossRec = tDemonTower_Stc["DataType"]["BossRecord"]
	
	--隔天不清掉
	-- if Task_StcInterval(nEvent,nTypeBossRec,1,4) then
		-- Task_SetStatistic(nEvent,nTypeBossRec,0,1)
		-- Task_SetStcTimestamp(nEvent,nTypeBossRec,0)
	-- end
	
	--今日不能再领取该层奖励了
	if not DemonTower_ChkTakeThisFloor(nFloor) then
		if nFloor == 9 then
			LinkNpcGossipFunc_New(nNpcId,"2-6")
		else
			LinkNpcGossipFunc_New(nNpcId,"2-5")
		end
		return
	end
	
	--今日无领奖次数了
	if DemonTower_GetExistTimes() == 0 then
		tNpcGossip[nNpcId]["Text121"] = string.format(tDemonTower_Text[nNpcId]["Text121"],sTextBossName)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nRecordData = Get_UserStatisticValue(nEvent,nTypeBossRec)
	if Task_ChkStcValue(nEvent,nTypeBossRec,"~=",nSel*10+nFloor) then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")

end

--塔间通道的捐赠
function DemonTower_DonateInRoad(nNpcId)
	local nUserMapId = Get_UserMapId()
	local nFloor = tDemonTower_Const["RoadToFloor"][nUserMapId]

	local nEvent = tDemonTower_Stc["Event"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nDataTimes = DemonTower_GetExistTimes()
	--已经没有领取次数了
	if nDataTimes == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	if not DemonTower_ChkFloorOpen(nFloor+1) then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	
	if not DemonTower_ChkTakeThisFloor(nFloor) then
		local sTextBossName = tDemonTower_Text["BossName"][nSel][nFloor]
		local sTextDifficult = tDemonTower_Text["Difficult"][nSel]
		tNpcGossip[nNpcId]["Text471"] = string.format(tDemonTower_Text[nNpcId]["Text471"],sTextDifficult,nFloor,sTextBossName)
		LinkNpcGossipFunc_New(nNpcId,"4-7")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-2")
	
end

--捐赠天石
function DemonTower_DonateEmoneyInRoad(nNpcId,nSel,nFloor)
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]
	local nDataTimes = DemonTower_GetExistTimes()
	--已经没有领取次数了
	if nDataTimes == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--是否还能领取此层奖励
	if not DemonTower_ChkFloorOpen(nFloor) then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	
	if not DemonTower_ChkTakeThisFloor(nFloor) then
		local sTextBossName = tDemonTower_Text["BossName"][nSel][nFloor]
		local sTextDifficult = tDemonTower_Text["Difficult"][nSel]
		tNpcGossip[nNpcId]["Text471"] = string.format(tDemonTower_Text[nNpcId]["Text471"],sTextDifficult,nFloor,sTextBossName)
		LinkNpcGossipFunc_New(nNpcId,"4-7")
		return
	end
	
	local nUserEMoney = Get_UserEMoney()
	local nNeedNum = tDemonTower_Const["DonateEmoney"][nSel]
	--天石不足
	if nUserEMoney < nNeedNum then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	local nNeedSpace = tDemonTower_Const["Space"][nSel]
	
	if not User_CheckLeftSpace(nNeedSpace) then
		tNpcGossip[nNpcId]["Text432"] = string.format(tDemonTower_Text[nNpcId]["Text432"],nNeedSpace)
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	local nStar = Get_UserStatisticValue(nEvent,nTypeStar)
	
	--设置领取掩码
	if not DemonTower_SetFloorStc(nFloor) then
		return
	end
	
	--设置
	Task_SetStatistic(nEvent,nTypeStar,0,1)
	Task_SetStcTimestamp(nEvent,nTypeStar,0)
	
	User_AddEMoney(-1*nNeedNum)
	local sLogUseEmoney = string.format(tDemonTower_Log["DonateByEmoney"],nNeedNum)
	Sys_SaveActionFestivalLog(sLogUseEmoney)
	
	--获得奖励
	DemonTower_GetRewardReal(nSel,nFloor,nStar,1)
	
	local sEmoneyLog= tDemonTower_Log["Emoney"]["Swap"][nSel]
	Sys_SaveEmoneyBuy(sEmoneyLog)
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfSweep = tDemonTower_Const["Effect"]["Sweep"]
	User_EffectAdd(EfObj,EfSweep)
	
	--背包满直接给邮件奖励
	DemonTower_SendMail()
	--扫荡完成后，传送到下一层塔间通道
	if nFloor == 9 then
		return
	end
	
	nFloor = nFloor + 1
	local nNextMapId = tDemonTower_Const["FloorToRoad"][nFloor]
	local nPosX = tDemonTower_Const["PosInRoad"][1]
	local nPosY = tDemonTower_Const["PosInRoad"][2]
	User_ChgMap(nNextMapId,nPosX,nPosY,1)
	
end

--捐赠流星卷
function DemonTower_DonateScrollInRoad(nNpcId,nSel,nFloor)
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]
	local nDataTimes = DemonTower_GetExistTimes()
	--已经没有领取次数了
	if nDataTimes == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--是否还能领取此层奖励
	if not DemonTower_ChkFloorOpen(nFloor) then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	
	if not DemonTower_ChkTakeThisFloor(nFloor) then
		local sTextBossName = tDemonTower_Text["BossName"][nSel][nFloor]
		local sTextDifficult = tDemonTower_Text["Difficult"][nSel]
		tNpcGossip[nNpcId]["Text471"] = string.format(tDemonTower_Text[nNpcId]["Text471"],sTextDifficult,nFloor,sTextBossName)
		LinkNpcGossipFunc_New(nNpcId,"4-7")
		return
	end
	
	
	local nItemId = tDemonTower_Const["ItemId"]["MeteorScroll"]
	local nNeedNum = tDemonTower_Const["NeedMeteorScroll"][nSel]
	
	--流星卷不足
	if not Item_ChkMulItem(nItemId,nItemId,nNeedNum) then
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end

	--背包空间不足
	if not User_CheckLeftSpace(1) then
		tNpcGossip[nNpcId]["Text432"] = string.format(tDemonTower_Text[nNpcId]["Text432"],1)
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	if not Item_DelMulItem(nItemId,nItemId,nNeedNum) then
		return
	end
	
	local sUseItemLog = string.format(tDemonTower_Log["DonateByMeteorScroll"],nNeedNum)
	Sys_SaveActionFestivalLog(sUseItemLog)
	
	local sStageLog = tDemonTower_Log["NewStage"]["SwapByMete"][nSel]
	Sys_SaveActionFestivalLog(sStageLog)

	
	local nStar = Get_UserStatisticValue(nEvent,nTypeStar)
	--设置领取掩码
	if not DemonTower_SetFloorStc(nFloor) then
		return
	end
	
	Task_SetStatistic(nEvent,nTypeStar,0,1)
	Task_SetStcTimestamp(nEvent,nTypeStar,0)
	
	--获得奖励
	DemonTower_GetRewardReal(nSel,nFloor,nStar,1)
	
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfSweep = tDemonTower_Const["Effect"]["Sweep"]
	User_EffectAdd(EfObj,EfSweep)
	
	--背包满直接给邮件奖励
	DemonTower_SendMail()
	
	--扫荡完成后，传送到下一层塔间通道
	if nFloor == 9 then
		return
	end
	
	nFloor = nFloor + 1
	local nNextMapId = tDemonTower_Const["FloorToRoad"][nFloor]
	local nPosX = tDemonTower_Const["PosInRoad"][1]
	local nPosY = tDemonTower_Const["PosInRoad"][2]
	User_ChgMap(nNextMapId,nPosX,nPosY,1)
	
end

--重设镇魔塔守卫文字
function DemonTower_ResetText52(nNpcId)
	
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]
	local nStar = Get_UserStatisticValue(nEvent,nTypeStar)
	local nDataTimes = DemonTower_GetExistTimes()
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	--还没刷新奖励，则刷新第一次星级
	if nStar == 0 then
		local flat,tItem = Probabil_RandomAward(tDemonTower_Prob["Star"],nSel)
		nStar = tItem[1]["tAward"][1]["Item_1"]

		Task_SetStatistic(nEvent,nTypeStar,nStar,1)
		Task_SetStcTimestamp(nEvent,nTypeStar,0)
	end
	
	local nNeedEMoney = tDemonTower_Const["DonateEmoney"][nSel]
	local nNeedMeteorScroll = tDemonTower_Const["NeedMeteorScroll"][nSel]
	
	local nFreshTimes = DemonTower_GetFreshTimes()
	
	local sTextColor = tDemonTower_Const["StarToColor"][nStar]
	local sAwardText = tDemonTower_Text["Awards_tip"][nFloor][nSel][nStar]
	local nUserLev = Get_UserLevel()
	if nUserLev >= G_User_MaxLev then
		sAwardText = tDemonTower_Text["AwardsNoExp_tip"][nFloor][nSel][nStar]
	end
	local sExraAwardText = tDemonTower_Text["Awards"][nFloor][nSel]["Exra"]
	local sTextStar = tDemonTower_Text["Star" .. nStar]
	
	local nAllSpace = tDemonTower_Const["SpaceNum"]
	local nRealSpace = nAllSpace - nStar
	local nEndSpace = tDemonTower_Const["EndSpace"] - nStar
	local sTextSpace = string.rep(" ",nRealSpace)
	local sTextEnd = string.rep(" ",nEndSpace)
	local sTextPin = tDemonTower_Text["StarToPin"][nStar]
	
	tNpcGossip[nNpcId]["Text523"] = string.format(tDemonTower_Text[nNpcId]["Text523"],sTextColor,sAwardText,sTextPin)
	-- tNpcGossip[nNpcId]["Text524"] = string.format(tDemonTower_Text[nNpcId]["Text524"],sTextSpace,sTextColor,sAwardText,sTextStar,sTextEnd)
	local sStarNum = ""
	if nStar == 1 then
		sStarNum = string.format(tDemonTower_Text["StarNum"],nStar)
	else
		sStarNum = string.format(tDemonTower_Text["StarNums"],nStar)
	end
	tNpcGossip[nNpcId]["Text524"] = string.format(tDemonTower_Text[nNpcId]["Text524"],sTextColor,sAwardText,sStarNum)
	tNpcGossip[nNpcId]["Text526"] = string.format(tDemonTower_Text[nNpcId]["Text526"],nFreshTimes)
	
	tNpcGossip[nNpcId]["Option521"] = string.format(tDemonTower_Text[nNpcId]["Option521"],nNeedEMoney)
	tNpcGossip[nNpcId]["OptionFunc521"] = "DemonTower_ConfirmUseEmoney</N>"..nNpcId.."</N>"..nSel.."</N>"..nFloor
	tNpcGossip[nNpcId]["Option522"] = string.format(tDemonTower_Text[nNpcId]["Option522"],nNeedMeteorScroll)
	tNpcGossip[nNpcId]["OptionFunc522"] = "DemonTower_ConfirmDonateMeteorScroll</N>"..nNpcId.."</N>"..nSel.."</N>"..nFloor
	
	
end

--得到奖励
function DemonTower_GetRewardReal(nSel,nFloor,nStar,nType)
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeBossRec = tDemonTower_Stc["DataType"]["BossRecord"]
	Task_SetStatistic(nEvent,nTypeBossRec,0,1)
	Task_SetStcTimestamp(nEvent,nTypeBossRec,0)
	local nItemId = tDemonTower_Award["MustAward"]
	local nTypeRefresh = tDemonTower_Stc["DataType"]["RefreshTimes"]
	Task_SetStatistic(nEvent,nTypeRefresh,0,1)
	Task_SetStcTimestamp(nEvent,nTypeRefresh,0)
	if not Item_AddNewItem(nItemId,"") then
		return false
	end
	
	--固定奖励
	local tTable = tDemonTower_Award[nFloor][nSel]["Regular"][nStar]
	local nUserLev = Get_UserLevel()
	for i,v in pairs(tTable) do
		--如果是加经验，而且已不满级，才能进行加经验操作
		local Fun = v["Func"]
		local tParam2 = v["Param"]
		if Fun == User_AddExpTime then
			if nUserLev < G_User_MaxLev then
				Fun(table.unpack(DemonTower_Split(tParam2," ")))
			end
		else
			Fun(table.unpack(DemonTower_Split(tParam2," ")))
		end
	end
	 
	local sAwardText = string.format(tDemonTower_Text["AwardText"],tDemonTower_Text["Awards"][nFloor][nSel][nStar])
	if nUserLev >= G_User_MaxLev then
		
		sAwardText = string.format(tDemonTower_Text["AwardText"],tDemonTower_Text["AwardsNoExp"][nFloor][nSel][nStar])
	end
	local sNorLog = tDemonTower_Log["AwardByExp"][nSel][nFloor][nStar]
	
	if nUserLev >= G_User_MaxLev then
		sNorLog = tDemonTower_Log["AwardNoExp"][nSel][nFloor][nStar]
		-- sAwardText = sAwardText..tDemonTower_Text["MaxLev"]
	end
	Sys_SaveActionFestivalLog(sNorLog)
	User_TalkChannel2005(sAwardText)
	
	--扫荡不给额外奖励
	if nType == nil then
		--额外奖励
		local nProb = tDemonTower_Award[nFloor][nSel]["Exra"][1]["Prob"]
		local nBaseProb = tDemonTower_Const["BaseProb"]
		local Func = tDemonTower_Award[nFloor][nSel]["Exra"][1]["Func"]
		local tParam1 = tDemonTower_Award[nFloor][nSel]["Exra"][1]["Param"]
		local sExraLog = tDemonTower_Log["ExraAward"][nFloor]
		
		if nProb == nil then
			Func(table.unpack(DemonTower_Split(tParam1," ")))
			local sExraText = string.format(tDemonTower_Text["ExraAward2"],tDemonTower_Text["Awards"][nFloor][nSel]["Exra"])
			Sys_SaveActionFestivalLog(sExraLog)
			User_TalkChannel2005(sExraText)
		else
			if Sys_Random(nProb,nBaseProb) then
				Func(table.unpack(DemonTower_Split(tParam1," ")))
				local sExraText = string.format(tDemonTower_Text["ExraAward2"],tDemonTower_Text["Awards"][nFloor][nSel]["Exra"])
				Sys_SaveActionFestivalLog(sExraLog)
				User_TalkChannel2005(sExraText)
			end
		end
		
		--人品超级爆发奖励
		if nSel == 2 then
			local nProbDrop = tDemonTower_Const["DropProb"]
			local nGlobData = tDemonTower_Const["GlobalData"]
			local nExchangeData = Get_SysDynaGlobalData0(nGlobData)
			if nExchangeData <= tDemonTower_Const["ExchangeNum"] then
				if Sys_Random(nProbDrop,nBaseProb) then
					Sys_SetSynaGlobalData0(nGlobData,nExchangeData+1)
					if not Item_AddNewItem(tDemonTower_Const["ItemId"]["FirePhity"],"") then
						return false
					end
					User_TalkChannel2005(tDemonTower_Text["WhatTheLuck"])
					local sSuperLog = tDemonTower_Log["Super"]
					Sys_SaveActionFestivalLog(sSuperLog)
				end
			end
		end
	end
	--2转140以上玩家打开困难镇魔塔5星宝箱额外获得1个灭邪晶玉
	local nBoxMete = tDemonTower_Const["BoxMete"]
	local nBoxLevel = tDemonTower_Const["BoxLevel"]
	if User_JudgeLevelAndMetempsychosis(nBoxLevel,nBoxMete) then
		if nSel == 2 and nStar == 5 then
			local nNewItemId = tDemonTower_Const["BoxItemId"]
			if Item_AddNewItem(nNewItemId,"") then
				Sys_SaveActionFestivalLog(string.format(tDemonTower_Log["NewStage"]["BoxByCul"],nNewItemId))
				User_TalkChannel2005(string.format(tRewardTemplate_Text["Main"],Get_ItemtypeName(nNewItemId)))
			end
		end
	end
	
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfSweep = tDemonTower_Const["Effect"]["AwardReward"]
	User_EffectAdd(EfObj,EfSweep)
	
	
	local sLogStage = tDemonTower_Log["Stage"][nSel][nFloor]
	Sys_SaveActionFestivalLog(sLogStage)
end

--了解详情页面的我要继续挑战
function DemonTower_BackToTake(nNpcId)
	
	local nEvent = tDemonTower_Stc["Event"]
	--选择难度
	local nType = tDemonTower_Stc["DataType"]["SelDifficult"]
	
	--隔天置0
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-4")
	end
	
end

--挑战下一层
function DemonTower_BoxTakeNextFloor()
	
	local nEvent = tDemonTower_Stc["Event"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	
	--选择难度
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	
	nFloor = nFloor +1
	Task_SetStatistic(nEvent,nTakeFloor,nFloor,1)
	
	local nInstance = tDemonTower_Const["Instance"][nSel][nFloor]
	if not User_EnterInstance(nInstance) then
		return
	end
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfStyle =  tDemonTower_Const["Effect"]["EnterMove"]
	User_EffectAdd(EfObj,EfStyle)
	DemonTower_CreateDynaNpc(nSel,nFloor)
	
	local sText = string.format(tDemonTower_Text["EnterTower"],tDemonTower_Text["Difficult"][nSel],nFloor,tDemonTower_Text["BossName"][nSel][nFloor])
	User_TalkChannel2005(sText)
	
end

--零点的时间自检
function DemonTower_SysChk()
	
	local nGlobalData = tDemonTower_Const["GlobalData"]
	Sys_SetSynaGlobalData0(nGlobalData,0)
	Sys_SetSynaGlobalData1(nGlobalData,0) 
	
end


--使用转盘
function DemonTower_UseWheel(nItemId)
	
	local nTaskId = tDemonTower_Const["ItemToTaskId"][nItemId]
	
	local nOpt = 0
	
--判断任务是否可以创建
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	User_TaskReward(nTaskId,nOpt)
	
end

--抽取
function DemonTower_Draw(nItemId)
	
	local nTaskId = tDemonTower_Const["ItemToTaskId"][nItemId]
	
--轮盘抽奖
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end

	if not Task_ChkTaskDetail(nTaskId) then
	-- 新增任务掩码 
		Task_AddTaskDetail(nTaskId)
	end

	User_TaskReward(nTaskId,1) --轮盘抽奖
end

--十连抽
function DemonTower_TenDraw(nItemId)
	
	User_TalkChannel2005(tDemonTower_Text["NoOpen"])
end

--传送到任务地点
function DemonTower_TransToAc()
	
	if Get_UserLife() < 1 then
		return
	end
	
	local nUserMapId =Get_UserMapId()
	
	local bInCity = false
	--在主城和市场
	for i=1,6 do
		if nUserMapId == tDemonTower_Const["MapCanTran"][i] then
			bInCity = true
			break
		end
	end
	
	local nMapId = tDemonTower_Const["MapCanTran"]["MapId"]
	local nCellx = tDemonTower_Const["MapCanTran"]["Cellx"]
	local nCelly = tDemonTower_Const["MapCanTran"]["Celly"]
	local nRange = tDemonTower_Const["MapCanTran"]["Range"]
	local nNpcId = tDemonTower_Const["MapCanTran"]["NpcId"]
	
	DemonTower_BeginTask()
	--在各大主城，则传送
	if bInCity == true then
		--不在市场，则记录位置
		-- if tDemonTower_Const["Maket"] ~= nUserMapId then
		-- local nPosX = Get_UserPositionX()
		-- local nPosY = Get_UserPositionY()
		-- User_RecordPoint(nUserMapId,nPosX,nPosY)
		-- end
		User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange,1)
	else
		Sys_GotoSomeWhere(nCellx,nCelly,nMapId,nNpcId)
	end
	
end

--获得灵力精魄，外部调用
function DemonTower_AwardItem()
	
	local nItemId = tDemonTower_Const["ItemId"]["Soul"]
	local bSpace = true
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tDemonTower_Text["AwardSoulNoSpace"])
		bSpace = false
	end
	
	if not Item_AddNewItem(nItemId,"") then
		return false
	end
	
	if bSpace == true then
		User_TalkChannel2005(tDemonTower_Text["AwardSoul"])
	end
	local sLog = tDemonTower_Log["AwardSoul"]
	Sys_SaveActionFestivalLog(sLog)
	return true
	
end

--创建对应难度和层数的动态npc
function DemonTower_CreateDynaNpc(nSel,nFloor)
	
	local nUserMapId =Get_UserMapId()
	--如果是困难难度第9层 
	-- if nSel == 2 and nFloor == 9 then
		
		-- local nCellx1 = tDemonTower_Const["NpcLocation"][nFloor][1]
		-- local nCelly1 = tDemonTower_Const["NpcLocation"][nFloor][2]
		
		-- local nCellx2 = tDemonTower_Const["NpcExraLocation"][1]
		-- local nCelly2 = tDemonTower_Const["NpcExraLocation"][1]
		
		-- local sNpcName1 = tDemonTower_Text["BossNameExra"][1]
		-- local sNpcName2 = tDemonTower_Text["BossNameExra"][2]
		
		-- local nLookFace1 = tDemonTower_Const["ToLookfaceExra"][1]
		-- local nLookFace2 = tDemonTower_Const["ToLookfaceExra"][2]
		
		-- 不存在才创建
		-- if Get_NpcCountByName(sNpcName1) == 0 then
			-- Npc_CreateDynaNpc(sNpcName1,2,0,nLookFace1,0,0,nUserMapId,nCellx1,nCelly1,0,0,0,tDemonTower_Const["Task0"])
		-- end
		
		-- if Get_NpcCountByName(sNpcName2) == 0 then
			-- Npc_CreateDynaNpc(sNpcName2,2,0,nLookFace2,0,0,nUserMapId,nCellx2,nCelly2,0,0,0,tDemonTower_Const["Task0"])
		-- end
	-- else
		
	-- end
	--当前已经有箱子npc存在
	if Get_NpcCountByName(tDemonTower_Text["BoxName"]) ~= 0 then
		return
	end
	
	--当前有怪物存在
	if DemonTower_ChkExistMonster(nSel,nUserMapId) then
		return
	end
	
	local nCellx = tDemonTower_Const["NpcLocation"][nFloor][1]
	local nCelly = tDemonTower_Const["NpcLocation"][nFloor][2]
	local sNpcName = tDemonTower_Text["BossName"][nSel][nFloor]
	if nSel ==2 and nFloor == 9 then
		sNpcName = tDemonTower_Text["BossNameExra"][1]
	end
	local nLookFace = tDemonTower_Const["ToLookface"][nFloor]
	if Get_NpcCountByName(sNpcName) == 0 then
		Npc_CreateDynaNpc(sNpcName,2,0,nLookFace,0,0,nUserMapId,nCellx,nCelly,0,0,0,tDemonTower_Const["Task0"])
	end
	
end

--删除动态npc
function DemonTower_DelDynaNpc(nSel,nFloor)
	
	local nUserMapId =Get_UserMapId()
	-- 如果是困难难度第9层 
	-- if nSel == 2 and nFloor == 9 then
		
		-- local nCellx1 = tDemonTower_Const["NpcLocation"][nFloor][1]
		-- local nCelly1 = tDemonTower_Const["NpcLocation"][nFloor][2]
		
		-- local nCellx2 = tDemonTower_Const["NpcExraLocation"][1]
		-- local nCelly2 = tDemonTower_Const["NpcExraLocation"][1]
		
		-- local sNpcName1 = tDemonTower_Text["BossNameExra"][1]
		-- local sNpcName2 = tDemonTower_Text["BossNameExra"][2]
		
		-- local nLookFace1 = tDemonTower_Const["ToLookfaceExra"][1]
		-- local nLookFace2 = tDemonTower_Const["ToLookfaceExra"][2]
		
		-- 不存在才创建
		-- if Get_NpcCountByName(sNpcName1) > 0 then
			-- Npc_DelDynaNpc(nUserMapId,"name",sNpcName1)
		-- end
		
		-- if Get_NpcCountByName(sNpcName2) > 0 then
			-- Npc_DelDynaNpc(nUserMapId,"name",sNpcName2)
		-- end
	-- else
	local nCellx = tDemonTower_Const["NpcLocation"][nFloor][1]
	local nCelly = tDemonTower_Const["NpcLocation"][nFloor][2]
	local sNpcName = tDemonTower_Text["BossName"][nSel][nFloor]
	local nLookFace = tDemonTower_Const["ToLookface"][nFloor]
	if nSel ==2 and nFloor == 9 then
		sNpcName = tDemonTower_Text["BossNameExra"][1]
	end
	if Get_NpcCountByName(sNpcName) > 0 then
		Npc_DelDynaNpc(nUserMapId,"name",sNpcName)
	end
	
end

--塔层内npc入口
function DemonTower_NpcGuard(nNpcId)
	
	-- if not Sys_ChkDayTime(tDemonTower_Const["OpenTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"4-2")
		-- return
	-- end
	
	local nEvent = tDemonTower_Stc["Event"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	
	local nDataTime = DemonTower_GetExistTimes()
	
	if nDataTime == 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	--还可以挑战本层，即未挑战成功
	if DemonTower_ChkTakeThisFloor(nFloor) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	local sBossName = tDemonTower_Text["BossName"][nSel][nFloor]
	
	local sToNext = ""
	if nFloor ~= 9 then
		sToNext = tDemonTower_Text["CanToFloorNine"]
	end
	
	tNpcGossip[nNpcId]["Text121"] = string.format(tDemonTower_Text[nNpcId]["Text121"],tDemonTower_Text["BossSay"][2][nFloor][1])
	tNpcGossip[nNpcId]["Text122"] = string.format(tDemonTower_Text[nNpcId]["Text122"],tDemonTower_Text["BossSay"][2][nFloor][2])
	tNpcGossip[nNpcId]["Text123"] = string.format(tDemonTower_Text[nNpcId]["Text123"],sBossName,sToNext)
	LinkNpcGossipFunc_New(nNpcId,"1-2")
	
	
end

--获得刷新次数
function DemonTower_GetFreshTimes()
	local nEvent = tDemonTower_Stc["Event"]
	local nType = tDemonTower_Stc["DataType"]["RefreshTimes"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	return Get_UserStatisticValue(nEvent,nType)
end

--增加刷新次数
function DemonTower_AddFreshTimes(nTimes)

	local nRefreshTimes = nTimes or 1
	local nEvent = tDemonTower_Stc["Event"]
	local nType = tDemonTower_Stc["DataType"]["RefreshTimes"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	Task_AddStatistic(nEvent,nType,nRefreshTimes,1)
	Task_SetStcTimestamp(nEvent,nType,0)
end

--重设塔间通道捐赠文字
function DemonTower_ResetDonateTextInRoad(nNpcId)
	local nEvent = tDemonTower_Stc["Event"]
	local nUserMapId = Get_UserMapId()
	local nFloor = tDemonTower_Const["RoadToFloor"][nUserMapId]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local nSel = Get_UserStatisticValue(nEvent,nTypeSel)
	
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]

	local nStar = Get_UserStatisticValue(nEvent,nTypeStar)
	
	--还未有星级
	if nStar == 0 then
		local flat,tItem = Probabil_RandomAward(tDemonTower_Prob["Star"],nSel)
		nStar = tItem[1]["tAward"][1]["Item_1"]
		Task_SetStatistic(nEvent,nTypeStar,nStar,1)
		Task_SetStcTimestamp(nEvent,nTypeStar,0)
	end
	local sTextStar = tDemonTower_Text["Star" .. nStar]
	local nDataTimes = DemonTower_GetExistTimes()
	local nUserLev = Get_UserLevel()
	local sAwardText = tDemonTower_Text["Awards_tip"][nFloor][nSel][nStar]
	if nUserLev >= G_User_MaxLev then
		sAwardText = tDemonTower_Text["AwardsNoExp_tip"][nFloor][nSel][nStar]
	end
	local nFreshTimes = DemonTower_GetFreshTimes()
	
	local nNeedEmoney = tDemonTower_Const["DonateEmoney"][nSel]
	
	local nNeedMeteorScroll = tDemonTower_Const["NeedMeteorScroll"][nSel]
	
	local sTextColor = tDemonTower_Const["StarToColor"][nStar]
	local sExraAwardText = tDemonTower_Text["Awards"][nFloor][nSel]["Exra"]
	
	local nAllSpace = tDemonTower_Const["SpaceNum"]
	local nRealSpace = nAllSpace - nStar
	local nEndSpace = tDemonTower_Const["EndSpace"] - nStar
	local sTextSpace = string.rep(" ",nRealSpace)
	local sTextEnd = string.rep(" ",nEndSpace)
	local sTextPin = tDemonTower_Text["StarToPin"][nStar]
	-- tNpcGossip[nNpcId]["Text111"] = string.format(tDemonTower_Text[nNpcId]["Text111"],sAwardText)
	tNpcGossip[nNpcId]["Text223"] = string.format(tDemonTower_Text[nNpcId]["Text223"],sTextColor,sAwardText,sTextPin)
	-- tNpcGossip[nNpcId]["Text224"] = string.format(tDemonTower_Text[nNpcId]["Text224"],sTextSpace,sTextColor,sAwardText,sTextStar,sTextEnd)
	local sStarNum = ""
	if nStar == 1 then
		sStarNum = string.format(tDemonTower_Text["StarNum"],nStar)
	else
		sStarNum = string.format(tDemonTower_Text["StarNums"],nStar)
	end
	tNpcGossip[nNpcId]["Text224"] = string.format(tDemonTower_Text[nNpcId]["Text224"],sTextColor,sAwardText,sStarNum)
	tNpcGossip[nNpcId]["Text226"] = string.format(tDemonTower_Text[nNpcId]["Text226"],nFreshTimes)
	
	
	tNpcGossip[nNpcId]["Option221"] = string.format(tDemonTower_Text[nNpcId]["Option221"],nNeedEmoney)
	tNpcGossip[nNpcId]["Option222"] = string.format(tDemonTower_Text[nNpcId]["Option222"],nNeedMeteorScroll)

	tNpcGossip[nNpcId]["OptionFunc221"] = "DemonTower_DonateEmoneyInRoad</N>"..nNpcId.."</N>"..nSel.."</N>"..nFloor
	tNpcGossip[nNpcId]["OptionFunc222"] = "DemonTower_DonateScrollInRoad</N>"..nNpcId.."</N>"..nSel.."</N>"..nFloor
	
end

--检查当前是否为5星
function DemonTower_ChkStarIsFive()
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeStar = tDemonTower_Stc["DataType"]["Star"]
	return Task_ChkStcValue(nEvent,nTypeStar,"==",5)
	
end
--刷修行值选项，困难才可以有这个选项
function DemonTower_ChkCultivation()
	--难度
	local nEvent = tDemonTower_Stc["Event"]
	local nType = tDemonTower_Stc["DataType"]["SelDifficult"]
	
	local nUserCul = Get_UserCultivation()
	if Task_ChkStcValue(nEvent,nType,">=",2) and (nUserCul >= tDemonTower_Const["Cultivation"]) then
		return true
	else
		return false
	end
end
--冻住
function DemonTower_FrozeBody()
	
	local tStatus = tDemonTower_Const["StatusFroze"]
	local nStatus = tStatus["Status"]
	local nPower = tStatus["Power"]
	local nSecs = tStatus["Secs"]
	local nTimes = tStatus["Times"]
	local nunRemainTime = tStatus["RemainTime"]
	local nunEndTime = tStatus["EndTime"]
	local nucRecordable = tStatus["Recordable"]
	local nUserId = Get_UserId()
	
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nunRemainTime,nunEndTime,nucRecordable,0,0,nUserId)
end

--打开内嵌页
--西煌简史物品的
function DemonTower_OpenWebSite()
	User_SendWebDialog("http://zf.99.com/activity/2016xhjs/xhjs.shtml")
end

function DemonTower_OpenWebSiteProcess()
	User_SendWebDialog("http://zf.99.com/activity/2016zyt/index.shtml?")
end

--领取西煌简史
function DemonTower_ReceiveHis(nNpcId)
	local nItemId = tDemonTower_Const["ItemId"]["HisOfXihuang"]
	if Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	if not Item_AddNewItem(nItemId,"") then
		return
	end
	
	User_TalkChannel2005(tDemonTower_Text["AwardHis"])
	
end

--接任务面板的任务
function DemonTower_BeginTask()
	
	local nTaskId = tDemonTower_Const["TaskId"]
	local nEvent = tDemonTower_Stc["Event"]
	local nTypeSel = tDemonTower_Stc["DataType"]["SelDifficult"]
	local tTypeTake = tDemonTower_Stc["DataType"]["AwardFloor"]
	--不存在任务的话，就接受任务
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_SetTaskDetailData5(nTaskId,1)
		Task_SetTaskDetailData7(nTaskId,os.time())
		--重设难度
		Task_SetStatistic(nEvent,nTypeSel,0,1)
		Task_SetStcTimestamp(nEvent,nTypeSel,0)
		
		--重设挑战层数
		-- for i,v in pairs(tTypeTake) do
			-- Task_SetStatistic(nEvent,v,0,1)
			-- Task_SetStcTimestamp(nEvent,v,0)
		-- end
		return
	end
	
	--隔天处理
	DemonTower_TaskInteval()
	
end

--隔天处理
function DemonTower_TaskInteval()
	local nTaskId = tDemonTower_Const["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	--隔天且完成任务，才能重置
	if Task_ChkTaskDetailValue(nTaskId,"6","==",0) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) then
		Task_SetTaskDetailData1(nTaskId,0)
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_SetTaskDetailData5(nTaskId,1)
		Task_SetTaskDetailData6(nTaskId,1)
	end
end

--兑换封魔礼包
function DemonTower_ExPack(nNpcId,nPackId)
	--背包空间不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	
	local nItemFengmo = tDemonTower_Const["ItemId"]["FengmoPai"]
	local nNeedNum = tDemonTower_Const["PackNeedNum"][nPackId]
	--封魔牌不足
	if not Item_ChkMulItem(nItemFengmo,nItemFengmo,nNeedNum) then
		local sText = tDemonTower_Const["PackToTalk"][nPackId]
		LinkNpcGossipFunc_New(nNpcId,sText)
		return
	end
	
	if not Item_DelMulItem(nItemFengmo,nItemFengmo,nNeedNum) then
		return
	end
	
	if not Item_AddNewItem(nPackId,"") then
		return
	end
	
	local sAwardText = tDemonTower_Text["AwardFPack"][nPackId]
	User_TalkChannel2005(sAwardText)
	
	local sLog = tDemonTower_Log["AwardFPack"][nPackId]
	Sys_SaveActionFestivalLog(sLog)
end

--领取禁天奖励
function DemonTower_GetJinTianAward(nNpcId)
	
	local nTaskId = tDemonTower_Const["TaskId"]
	--没任务
	if not Task_ChkTaskDetail(nTaskId) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--没完成
	if Task_ChkTaskDetailValue(nTaskId,"1","<",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--已经领过奖励
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) and Task_ChkTaskDetailValue(nTaskId,"6","==",1) then
		return
	end
	
	if not User_CheckLeftSpace(3) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	DemonTower_JinTianAwardReal()
end

function DemonTower_JinTianAwardReal()
	local nTaskId = tDemonTower_Const["TaskId"]
	Task_SetTaskDetailData6(nTaskId,1)
	Task_SetTaskDetailData1(nTaskId,0)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	
	local nItemFM = tDemonTower_Const["ItemId"]["FengmoPai"]
	local nItemZQL=  tDemonTower_Const["ItemId"]["ZQL"]

	Item_AddNewItem(nItemFM,"0 3")
	Item_AddNewItem(nItemZQL,"")
	
	
	
	
	-- if Get_SysDynaGlobalData1(51131) > 0 then
	-- --日新月异礼包
		-- Item_AddNewItem(3008912,"")
		-- User_TalkChannel2005(tDemonTower_Text["AwardNewSer"])
	-- end
	User_AddCultivation(100)
	GoldenLeaguePoints_Add(200)
	
	local sTextAward = tDemonTower_Text["AwardAll"]
	User_TalkChannel2005(sTextAward)
	
	local EfObj = tDemonTower_Const["Effect"]["Obj"]
	local EfStyle = tDemonTower_Const["Effect"]["RiCh"]
	User_EffectAdd(EfObj,EfStyle)
	
	local sLog = tDemonTower_Log["AwardJinTian"]
	Task_AddActivityTaskSchedule(4)
	Sys_SaveActionFestivalLog(sLog)
	NewTaskItem_AddProcessTask()
end

--用天石完成禁天
function DemonTower_GetJinTianAwardByEmoney(nNpcId)
	
	local nTaskId = tDemonTower_Const["TaskId"]
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_SetTaskDetailData5(nTaskId,1)
		Task_SetTaskDetailData7(nTaskId,os.time())
	end
	--没任务
	-- if not Task_ChkTaskDetail(nTaskId) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-2")
		-- return
	-- end
	
	--没完成
	-- if Task_ChkTaskDetailValue(nTaskId,"1","<",3) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-2")
		-- return
	-- end
	
	--已经领过奖励
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) and Task_ChkTaskDetailValue(nTaskId,"6","==",1) then
		return
	end
	
	local nUserEmoney = Get_UserEMoney()
	local nNeedMoney = tDemonTower_Const["JinTEMoney"]
	
	if nUserEmoney < nNeedMoney then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return 
	end
	
	if not User_CheckLeftSpace(3) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	User_AddEMoney(-1*nNeedMoney)
	DemonTower_JinTianAwardReal()
	local sEmoneyLog = tDemonTower_Log["Emoney"]["JinTian"]
	Sys_SaveEmoneyBuy(sEmoneyLog)
end

function DemonTower_GetJinTianAwardByItem(nNpcId,nItemId)
	
	local nTaskId = tDemonTower_Const["TaskId"]
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_SetTaskDetailData5(nTaskId,1)
		Task_SetTaskDetailData7(nTaskId,os.time())
	end
	
	--没任务
	-- if not Task_ChkTaskDetail(nTaskId) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-2")
		-- return
	-- end
	
	--没完成
	-- if Task_ChkTaskDetailValue(nTaskId,"1","<",3) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-2")
		-- return
	-- end
	
	--已经领过奖励
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) and Task_ChkTaskDetailValue(nTaskId,"6","==",1) then
		return
	end
	
	--检测物品是否存在
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	DemonTower_JinTianAwardReal()
	
	local sLog = tDemonTower_Log["UseMieYao"]
	Sys_SaveActionFestivalLog(sLog)
end

function DemonTower_BackToPlace(nType)
	
	local nRange = tDemonTower_Const["Range"]
	
	local nMapId = tDemonTower_Const["ToPlace"][nType][1]
	local nCellx = tDemonTower_Const["ToPlace"][nType][2]
	local nCelly = tDemonTower_Const["ToPlace"][nType][3]
	
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange,1)

end

--使用背包信
function DemonTower_UseTheLetter(nItemId)
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	local nRet = User_AddExpOrCultureValue(30)
	local sText = tDemonTower_Text[nItemId]["Award"][nRet]
	User_TalkChannel2005(sText)
	
	DemonTower_TransToAc()
end

function DemonTower_Split(s, p)
    local rt = {}
	string.gsub(s, '[^'..p..']+', function(w) table.insert(rt,tonumber(w)) end )
    return rt
end

-- 礼包打开
-- function DemonTower_UseCpPack(nItemId)
	-- local nUserMonoCp = Get_UserMonoEMoney()
	-- local nRewardmonoCp = tDemonTower_CpCont[nItemId]
	-- local nMonoLimit = tDemonTower_CpCont["CpLimit"]
	
	-- if nUserMonoCp > (nMonoLimit - nRewardmonoCp) then
		-- User_TalkChannel2005(tDemonTower_Text["Msg"]["CpMore"])
		-- return
	-- end
	
	-- 删除礼包，给奖励
	-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- User_AddEMoneyMono(nRewardmonoCp)
		-- local sLog = string.format(tDemonTower_Log["NewStage"]["GetMonoCp"],nItemId,nRewardmonoCp)
		-- local sMsg = string.format(tDemonTower_Text["Msg"]["GetCp"],nRewardmonoCp)
		-- local sSelf = tDemonTower_CpCont["Self"]
		-- local sEffect = tDemonTower_CpCont["Effect"]
		-- Sys_SaveActionFestivalLog(sLog)
		-- User_TalkChannel2005(sMsg)
		-- User_EffectAdd(sSelf,sEffect)
	-- end
-- end

function DemonTower_OpenExpPack(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end

	if Get_UserLevel() >= tDemonTower_Const["Level"] then
		User_AddStrengthValue(tDemonTower_DaItemExp[nItemId][2])
		Sys_SaveActionFestivalLog(string.format(tDemonTower_Log["AwardFPack"]["GetStreng"],nItemId,tDemonTower_DaItemExp[nItemId][2]))
		User_TalkChannel2005(string.format(tDemonTower_Text["Msg"]["GetStreng"],tDemonTower_DaItemExp[nItemId][2]))
	else	
		User_AddExpTime(tDemonTower_DaItemExp[nItemId][1])
		User_TalkChannel2005(string.format(tDemonTower_Text["Msg"]["GetExp"],tDemonTower_DaItemExp[nItemId][1]))
		Sys_SaveActionFestivalLog(string.format(tDemonTower_Log["AwardFPack"]["GetExp"],nItemId,tDemonTower_DaItemExp[nItemId][1]))
	end
	User_EffectAdd("self",tDemonTower_Const["Effect"]["GetExp"])
end
	
--- 炽热天石碎片
function DemonTower_EmoneyMono(nItemId,nFlag)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 新增炽热天石每日限制 yxy 2018.02.05 --
	local nEvent = tDemonTower_Cont["Stc"][4]["EventType"]
	local nType = tDemonTower_Cont["Stc"][4]["DataType"] 
	local nLimit = tDemonTower_Cont["Stc"][4]["Limit"]
	local nUserId = Get_UserId()
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	if Task_ChkStcValue(nEvent,nType,">=",nLimit,nUserId) then
		LinkItemGossipFunc_New(nItemId,"3-1")
		return
	end
	------------------------------------------
	
	-- 判断有没有9个碎片
	local nNum = tDemonTower_Cont[nItemId]["nNum"]
	local nDoubleNeedCp = tDemonTower_Cont[nItemId]["nDoubCp"]
	local nGetCp = tDemonTower_Cont[nItemId]["GetCp"][nFlag]

	
	if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		User_TalkChannel2005(tDemonTower_Text["PieceNoNum"])
		return
	end
	
	if Get_UserEMoney() + nGetCp > G_User_MaxEmoneyMono then
		Sys_MsgBox(tRewardTemplate_Text["EMoney"])
		return
	end
	
	if nFlag == 2 then
		if Get_UserEMoney() < nDoubleNeedCp then
			Sys_MsgBox(tRewardTemplate_Text["CostEMoney"])
			return
		end
		User_AddEMoney(-nDoubleNeedCp)
		Sys_SaveEmoneyBuy(tDemonTower_EmoneyLog[1])
	end
	-- 新增炽热天石每日限制 yxy 2018.02.05 --
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	------------------------------------------
	RewardTemplate_UseItem(tDemonTower_EmoneyDouble[nFlag])
	if nFlag == 2 then
		User_EffectAdd("self", "new_ErLongTengFei")
	end
end

------------------------------------------------Npc模块-------------------------------------------

tNpcFace[4012] = 14
tNpcGossip[19127] = tNpcGossip[19127] or DefaultNpc:new{}
tNpcGossip[19127]["OptionHidden"] = 1

tNpcGossip[19127]["nPageNum"] = 10

--
tNpcGossip[19127]["Text10000-1"] = {1000011}
tNpcGossip[19127]["Text1000011"] = tDemonTower_Text[19127]["Text1000011"]
tNpcGossip[19127]["tOption10000-1"] = {1000011,1000012}
tNpcGossip[19127]["Option1000011"] = tDemonTower_Text[19127]["Option1000011"]
tNpcGossip[19127]["OptionFunc1000011"] = ""
tNpcGossip[19127]["Option1000012"] = tDemonTower_Text[19127]["Option1000012"]

--时间还没到
tNpcGossip[19127]["Text1-1"] = {111,112}
tNpcGossip[19127]["Text111"] = tDemonTower_Text[19127]["Text111"]
tNpcGossip[19127]["Text112"] = tDemonTower_Text[19127]["Text112"]
tNpcGossip[19127]["tOption1-1"] = {111}
tNpcGossip[19127]["ChkFunc1-1"] = function()
	-- return not Sys_ChkDayTime(tDemonTower_Const["OpenTime"])
	return false
end

tNpcGossip[19127]["Option111"] = tDemonTower_Text[19127]["Option111"]

--等级不满足
tNpcGossip[19127]["Text1-2"] = {121,122,123}
tNpcGossip[19127]["Text121"] = tDemonTower_Text[19127]["Text121"]
tNpcGossip[19127]["Text122"] = tDemonTower_Text[19127]["Text122"]
tNpcGossip[19127]["Text123"] = tDemonTower_Text[19127]["Text123"]
tNpcGossip[19127]["tOption1-2"] = {121}
tNpcGossip[19127]["ChkFunc1-2"] = function()
	return not User_JudgeLevelAndMetempsychosis(tDemonTower_Const["Lev"],tDemonTower_Const["Mete"])
end

tNpcGossip[19127]["Option121"] = tDemonTower_Text[19127]["Option121"]

--主对白（今日未选择难度）
tNpcGossip[19127]["Text1-3"] = {131,132,133}
tNpcGossip[19127]["Text131"] = tDemonTower_Text[19127]["Text131"]
tNpcGossip[19127]["Text132"] = tDemonTower_Text[19127]["Text132"]
tNpcGossip[19127]["Text133"] = tDemonTower_Text[19127]["Text133"]
tNpcGossip[19127]["tOption1-3"] = {132,131,133,134}
tNpcGossip[19127]["ChkFunc1-3"] = function()

	--判断任务，添加任务
	if not Task_ChkTaskDetail(tDemonTower_Const["TaskId"]) then
		Task_AddTaskDetail(tDemonTower_Const["TaskId"])
		Task_SetTaskDetailCompleteFlag(tDemonTower_Const["TaskId"],0)
		Task_SetTaskDetailData5(tDemonTower_Const["TaskId"],1)
		Task_SetTaskDetailData7(tDemonTower_Const["TaskId"],os.time())
	end
	
	local nEvent = tDemonTower_Stc["Event"]
	--选择难度
	local nType = tDemonTower_Stc["DataType"]["SelDifficult"]
	
	--隔天置0
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	return Task_ChkStcValue(nEvent,nType,"==",0)
end

tNpcGossip[19127]["Option131"] = tDemonTower_Text[19127]["Option131"]
tNpcGossip[19127]["OptionFunc131"] = "DemonTower_SelDifficult</N>19127</N>1"
tNpcGossip[19127]["Option132"] = tDemonTower_Text[19127]["Option132"]
tNpcGossip[19127]["OptionFunc132"] = "DemonTower_SelDifficult</N>19127</N>2"
tNpcGossip[19127]["OptionChkFunc132"] = function()
	return DemonTower_ChkOpenDifficult()
end
tNpcGossip[19127]["Option133"] = tDemonTower_Text[19127]["Option133"]
tNpcGossip[19127]["OptionPoint133"] = "2-2"
tNpcGossip[19127]["Option134"] = tDemonTower_Text[19127]["Option134"]

--主对白（今日已选择难度）
tNpcGossip[19127]["Text1-4"] = {141,142,143}
tNpcGossip[19127]["Text141"] = tDemonTower_Text[19127]["Text141"]
tNpcGossip[19127]["Text142"] = tDemonTower_Text[19127]["Text142"]
tNpcGossip[19127]["Text143"] = tDemonTower_Text[19127]["Text143"]
tNpcGossip[19127]["tOption1-4"] = {141,142,144}
tNpcGossip[19127]["ChkFunc1-4"] = function()
	return DemonTower_ResetText14(19127)
end

tNpcGossip[19127]["Option141"] = tDemonTower_Text[19127]["Option141"]
tNpcGossip[19127]["OptionFunc141"] = "DemonTower_IWannaBySelf</N>19127</N>1</N>0"
tNpcGossip[19127]["Option142"] = tDemonTower_Text[19127]["Option142"]
tNpcGossip[19127]["OptionPoint142"] = "4-2"
tNpcGossip[19127]["Option143"] = tDemonTower_Text[19127]["Option143"]
tNpcGossip[19127]["OptionPoint143"] = "2-2"
tNpcGossip[19127]["Option144"] = tDemonTower_Text[19127]["Option144"]



--主对白（今日未选择难度）->我要挑战镇魔塔
tNpcGossip[19127]["Text2-1"] = {211}
tNpcGossip[19127]["Text211"] = tDemonTower_Text[19127]["Text211"]
tNpcGossip[19127]["tOption2-1"] = {212,211,213}
tNpcGossip[19127]["Option211"] = tDemonTower_Text[19127]["Option211"]
tNpcGossip[19127]["OptionFunc211"] = "DemonTower_SelDifficult</N>19127</N>1"
tNpcGossip[19127]["Option212"] = tDemonTower_Text[19127]["Option212"]
tNpcGossip[19127]["OptionFunc212"] = "DemonTower_SelDifficult</N>19127</N>2"
tNpcGossip[19127]["OptionChkFunc212"] = function()
	return DemonTower_ChkOpenDifficult()
end
tNpcGossip[19127]["Option213"] = tDemonTower_Text[19127]["Option213"]

--主对白（今日未选择难度）->我想了解详情
tNpcGossip[19127]["Text2-2"] = {221,222,223}
tNpcGossip[19127]["Text221"] = tDemonTower_Text[19127]["Text221"]
tNpcGossip[19127]["Text222"] = tDemonTower_Text[19127]["Text222"]
tNpcGossip[19127]["Text223"] = tDemonTower_Text[19127]["Text223"]
tNpcGossip[19127]["tOption2-2"] = {221,222}
tNpcGossip[19127]["Option221"] = tDemonTower_Text[19127]["Option221"]
tNpcGossip[19127]["OptionFunc221"] = "DemonTower_BackToTake</N>19127"
tNpcGossip[19127]["Option222"] = tDemonTower_Text[19127]["Option222"]

--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战
tNpcGossip[19127]["Text3-1"] = {311,312,313}
tNpcGossip[19127]["Text311"] = tDemonTower_Text[19127]["Text311"]
tNpcGossip[19127]["Text312"] = tDemonTower_Text[19127]["Text312"]
tNpcGossip[19127]["Text313"] = tDemonTower_Text[19127]["Text313"]
tNpcGossip[19127]["tOption3-1"] = {311,312,313}
tNpcGossip[19127]["Option311"] = tDemonTower_Text[19127]["Option311"]
tNpcGossip[19127]["OptionFunc311"] = "DemonTower_IWannaBySelf</N>19127</N>1</N>1"
tNpcGossip[19127]["Option312"] = tDemonTower_Text[19127]["Option312"]
tNpcGossip[19127]["OptionPoint312"] = "4-2"
tNpcGossip[19127]["Option313"] = tDemonTower_Text[19127]["Option313"]

--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我要继续挑战
tNpcGossip[19127]["Text4-1"] = {411}
tNpcGossip[19127]["Text411"] = tDemonTower_Text[19127]["Text411"]
tNpcGossip[19127]["tOption4-1"] = {411,412}
tNpcGossip[19127]["Option411"] = tDemonTower_Text[19127]["Option411"]
tNpcGossip[19127]["OptionFunc411"] = "DemonTower_IWannaBySelf</N>19127</N>1</N>1"
tNpcGossip[19127]["Option412"] = tDemonTower_Text[19127]["Option412"]
tNpcGossip[19127]["OptionFunc412"] = "DemonTower_IWannaDonate</N>19127</N>1</N>0"

--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我想选择挑战塔层
tNpcGossip[19127]["Text4-2"] = {421}
tNpcGossip[19127]["Text421"] = tDemonTower_Text[19127]["Text421"]
tNpcGossip[19127]["tOption4-2"] = {421,422,423,424,425,426,427,428,429,4210}
tNpcGossip[19127]["Option421"] = tDemonTower_Text[19127]["Option421"]
tNpcGossip[19127]["OptionFunc421"] = "DemonTower_SelectFloor</N>19127</N>1"

tNpcGossip[19127]["Option422"] = tDemonTower_Text[19127]["Option422"]
tNpcGossip[19127]["OptionFunc422"] = "DemonTower_SelectFloor</N>19127</N>2"
tNpcGossip[19127]["OptionChkFunc422"] = function()
	return DemonTower_ChkFloorOpen(2)
end
tNpcGossip[19127]["Option423"] = tDemonTower_Text[19127]["Option423"]
tNpcGossip[19127]["OptionFunc423"] = "DemonTower_SelectFloor</N>19127</N>3"
tNpcGossip[19127]["OptionChkFunc423"] = function()
	return DemonTower_ChkFloorOpen(3)
end
tNpcGossip[19127]["Option424"] = tDemonTower_Text[19127]["Option424"]
tNpcGossip[19127]["OptionFunc424"] = "DemonTower_SelectFloor</N>19127</N>4"
tNpcGossip[19127]["OptionChkFunc424"] = function()
	return DemonTower_ChkFloorOpen(4)
end
tNpcGossip[19127]["Option425"] = tDemonTower_Text[19127]["Option425"]
tNpcGossip[19127]["OptionFunc425"] = "DemonTower_SelectFloor</N>19127</N>5"
tNpcGossip[19127]["OptionChkFunc425"] = function()
	return DemonTower_ChkFloorOpen(5)
end
tNpcGossip[19127]["Option426"] = tDemonTower_Text[19127]["Option426"]
tNpcGossip[19127]["OptionFunc426"] = "DemonTower_SelectFloor</N>19127</N>6"
tNpcGossip[19127]["OptionChkFunc426"] = function()
	return DemonTower_ChkFloorOpen(6)
end
tNpcGossip[19127]["Option427"] = tDemonTower_Text[19127]["Option427"]
tNpcGossip[19127]["OptionFunc427"] = "DemonTower_SelectFloor</N>19127</N>7"
tNpcGossip[19127]["OptionChkFunc427"] = function()
	return DemonTower_ChkFloorOpen(7)
end
tNpcGossip[19127]["Option428"] = tDemonTower_Text[19127]["Option428"]
tNpcGossip[19127]["OptionFunc428"] = "DemonTower_SelectFloor</N>19127</N>8"
tNpcGossip[19127]["OptionChkFunc428"] = function()
	return DemonTower_ChkFloorOpen(8)
end
tNpcGossip[19127]["Option429"] = tDemonTower_Text[19127]["Option429"]
tNpcGossip[19127]["OptionFunc429"] = "DemonTower_SelectFloor</N>19127</N>9"
tNpcGossip[19127]["OptionChkFunc429"] = function()
	return DemonTower_ChkFloorOpen(9)
end
tNpcGossip[19127]["Option4210"] = tDemonTower_Text[19127]["Option4210"]
tNpcGossip[19127]["OptionPoint4210"] = "1-4"

--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我要继续挑战->我要捐赠(失败)
tNpcGossip[19127]["Text5-1"] = {511,512}
tNpcGossip[19127]["Text511"] = tDemonTower_Text[19127]["Text511"]
tNpcGossip[19127]["Text512"] = tDemonTower_Text[19127]["Text512"]
tNpcGossip[19127]["tOption5-1"] = {511}
tNpcGossip[19127]["Option511"] = tDemonTower_Text[19127]["Option511"]

--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我要继续挑战->我要捐赠(成功)
tNpcGossip[19127]["Text5-2"] = {521,522,523,524,525,526}
tNpcGossip[19127]["Text521"] = tDemonTower_Text[19127]["Text521"]
tNpcGossip[19127]["Text522"] = tDemonTower_Text[19127]["Text522"]
tNpcGossip[19127]["Text523"] = tDemonTower_Text[19127]["Text523"]
tNpcGossip[19127]["Text524"] = tDemonTower_Text[19127]["Text524"]
tNpcGossip[19127]["Text525"] = tDemonTower_Text[19127]["Text525"]
tNpcGossip[19127]["Text526"] = tDemonTower_Text[19127]["Text526"]
tNpcGossip[19127]["tOption5-2"] = {523,521,524,522,525,527,526}
tNpcGossip[19127]["Option521"] = tDemonTower_Text[19127]["Option521"]
tNpcGossip[19127]["OptionFunc521"] = "DemonTower_ConfirmUseEmoney</N>19127</N>1</N>1"
tNpcGossip[19127]["Option522"] = tDemonTower_Text[19127]["Option522"]
tNpcGossip[19127]["OptionFunc522"] = "DemonTower_ConfirmDonateMeteorScroll</N>19127</N>1</N>1"
tNpcGossip[19127]["Option523"] = tDemonTower_Text[19127]["Option523"]
tNpcGossip[19127]["OptionFunc523"] = "DemonTower_ReFreshRewardFourStar</N>19127</N>1"
tNpcGossip[19127]["OptionChkFunc523"] = function()
	return not DemonTower_ChkStarIsFive()
end
tNpcGossip[19127]["Option524"] = tDemonTower_Text[19127]["Option524"]
tNpcGossip[19127]["OptionFunc524"] = "DemonTower_ReFreshRewardFourStar</N>19127</N>2"
tNpcGossip[19127]["OptionChkFunc524"] = function()
	return not DemonTower_ChkStarIsFive()
end
tNpcGossip[19127]["Option525"] = tDemonTower_Text[19127]["Option525"]
tNpcGossip[19127]["OptionFunc525"] = "DemonTower_ReFreshRewardFourStar</N>19127</N>3"
tNpcGossip[19127]["OptionChkFunc525"] = function()
	return not DemonTower_ChkStarIsFive() and Item_ChkItem(3008735)
end
tNpcGossip[19127]["Option526"] = tDemonTower_Text[19127]["Option526"]
tNpcGossip[19127]["ChkFunc5-2"] = function()
	DemonTower_ResetText52(19127)
	return true
end
tNpcGossip[19127]["Option527"] = tDemonTower_Text[19127]["Option527"]
tNpcGossip[19127]["OptionFunc527"] = "DemonTower_ReFreshRewardFourStar</N>19127</N>4"
tNpcGossip[19127]["OptionChkFunc527"] = function()
	return not DemonTower_ChkStarIsFive() and DemonTower_ChkCultivation()
end


--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我想选择挑战塔层->成功
tNpcGossip[19127]["Text5-3"] = {531,532,533}
tNpcGossip[19127]["Text531"] = tDemonTower_Text[19127]["Text531"]
tNpcGossip[19127]["Text532"] = tDemonTower_Text[19127]["Text532"]
tNpcGossip[19127]["Text533"] = tDemonTower_Text[19127]["Text533"]
tNpcGossip[19127]["tOption5-3"] = {531,532,533}
tNpcGossip[19127]["Option531"] = tDemonTower_Text[19127]["Option531"]
tNpcGossip[19127]["OptionFunc531"] = "DemonTower_IWannaBySelf</N>19127</N>1</N>1"
tNpcGossip[19127]["Option532"] = tDemonTower_Text[19127]["Option532"]
tNpcGossip[19127]["OptionFunc532"] = "DemonTower_DonateBySelFloor</N>19127</N>1</N>1"
tNpcGossip[19127]["OptionChkFunc532"] = function()
	local nEvent = tDemonTower_Stc["Event"]
	local nTakeFloor = tDemonTower_Stc["DataType"]["TakeFloor"]
	local nFloor = Get_UserStatisticValue(nEvent,nTakeFloor)
	return DemonTower_ChkFloorOpen(nFloor+1)
end
tNpcGossip[19127]["Option533"] = tDemonTower_Text[19127]["Option533"]


--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我要继续挑战->我要捐赠(成功)->捐赠天石
tNpcGossip[19127]["Text6-1"] = {611}
tNpcGossip[19127]["Text611"] = tDemonTower_Text[19127]["Text611"]
tNpcGossip[19127]["tOption6-1"] = {611,612}
tNpcGossip[19127]["Option611"] = tDemonTower_Text[19127]["Option611"]
tNpcGossip[19127]["OptionFunc611"] = "DemonTower_ConfirmUseEmoney</N>19127"
tNpcGossip[19127]["Option612"] = tDemonTower_Text[19127]["Option612"]

--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我要继续挑战->我要捐赠(成功)->捐赠流星卷
tNpcGossip[19127]["Text6-2"] = {621}
tNpcGossip[19127]["Text621"] = tDemonTower_Text[19127]["Text621"]
tNpcGossip[19127]["tOption6-2"] = {621,622}
tNpcGossip[19127]["Option621"] = tDemonTower_Text[19127]["Option621"]
tNpcGossip[19127]["OptionFunc621"] = "DemonTower_ConfirmDonateMeteorScroll"
tNpcGossip[19127]["Option622"] = tDemonTower_Text[19127]["Option622"]

--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我要继续挑战->我要捐赠(成功)->刷新奖励（失败）
tNpcGossip[19127]["Text6-3"] = {631}
tNpcGossip[19127]["Text631"] = tDemonTower_Text[19127]["Text631"]
tNpcGossip[19127]["tOption6-3"] = {631}
tNpcGossip[19127]["Option631"] = tDemonTower_Text[19127]["Option631"]

--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我要继续挑战->我要捐赠(成功)->捐赠天石->成功
tNpcGossip[19127]["Text7-1"] = {711}
tNpcGossip[19127]["Text711"] = tDemonTower_Text[19127]["Text711"]
tNpcGossip[19127]["tOption7-1"] = {711}
tNpcGossip[19127]["Option711"] = tDemonTower_Text[19127]["Option711"]
tNpcGossip[19127]["OptionPoint711"] = "1-4"

--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我要继续挑战->我要捐赠(成功)->捐赠天石->失败，天石不足
tNpcGossip[19127]["Text7-2"] = {721}
tNpcGossip[19127]["Text721"] = tDemonTower_Text[19127]["Text721"]
tNpcGossip[19127]["tOption7-2"] = {721}
tNpcGossip[19127]["Option721"] = tDemonTower_Text[19127]["Option721"]

--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我要继续挑战->我要捐赠(成功)->捐赠天石->失败，背包空间不足
tNpcGossip[19127]["Text7-3"] = {731,732}
tNpcGossip[19127]["Text731"] = tDemonTower_Text[19127]["Text731"]
tNpcGossip[19127]["Text732"] = tDemonTower_Text[19127]["Text732"]
tNpcGossip[19127]["tOption7-3"] = {731}
tNpcGossip[19127]["Option731"] = tDemonTower_Text[19127]["Option731"]

--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我要继续挑战->我要捐赠(成功)->捐赠流星卷->成功
tNpcGossip[19127]["Text7-4"] = {741}
tNpcGossip[19127]["Text741"] = tDemonTower_Text[19127]["Text741"]
tNpcGossip[19127]["tOption7-4"] = {741}
tNpcGossip[19127]["Option741"] = tDemonTower_Text[19127]["Option741"]
tNpcGossip[19127]["OptionPoint741"] = "1-4"

--主对白（今日未选择难度）->我要挑战镇魔塔->选择难度成功,非初次挑战->我要继续挑战->我要捐赠(成功)->捐赠流星卷->失败，流星卷不足
tNpcGossip[19127]["Text7-5"] = {751}
tNpcGossip[19127]["Text751"] = tDemonTower_Text[19127]["Text751"]
tNpcGossip[19127]["tOption7-5"] = {751}
tNpcGossip[19127]["Option751"] = tDemonTower_Text[19127]["Option751"]

tNpcGossip[19127]["Text7-6"] = {761}
tNpcGossip[19127]["Text761"] = tDemonTower_Text[19127]["Text761"]
tNpcGossip[19127]["tOption7-6"] = {761}
tNpcGossip[19127]["Option761"] = tDemonTower_Text[19127]["Option761"]

tNpcGossip[19127]["Text7-7"] = {771}
tNpcGossip[19127]["Text771"] = tDemonTower_Text[19127]["Text771"]
tNpcGossip[19127]["tOption7-7"] = {771}
tNpcGossip[19127]["Option771"] = tDemonTower_Text[19127]["Option771"]

tNpcGossip[19127]["Text7-8"] = {781}
tNpcGossip[19127]["Text781"] = tDemonTower_Text[19127]["Text781"]
tNpcGossip[19127]["tOption7-8"] = {781}
tNpcGossip[19127]["Option781"] = tDemonTower_Text[19127]["Option781"]

tNpcGossip[19127]["Text8-1"] = {811}
tNpcGossip[19127]["Text811"] = tDemonTower_Text[19127]["Text811"]
tNpcGossip[19127]["tOption8-1"] = {811}
tNpcGossip[19127]["Option811"] = tDemonTower_Text[19127]["Option811"]
tNpcGossip[19127]["OptionFunc811"] = "DemonTower_BackToTake</N>19127"


--扫地道人
tNpcFace[4013] = 6
tNpcGossip[19128] = tNpcGossip[19128] or DefaultNpc:new{}
tNpcGossip[19128]["OptionHidden"] = 1

tNpcGossip[19128]["Text1-1"] = {111,112}
tNpcGossip[19128]["Text111"] = tDemonTower_Text[19128]["Text111"]
tNpcGossip[19128]["Text112"] = tDemonTower_Text[19128]["Text112"]
tNpcGossip[19128]["tOption1-1"] = {111}
tNpcGossip[19128]["ChkFunc1-1"] = function()
	-- return not Sys_ChkDayTime(tDemonTower_Const["OpenTime"])
	return false
end

tNpcGossip[19128]["Option111"] = tDemonTower_Text[19128]["Option111"]

tNpcGossip[19128]["Text1-2"] = {121,122,123}
tNpcGossip[19128]["Text121"] = tDemonTower_Text[19128]["Text121"]
tNpcGossip[19128]["Text122"] = tDemonTower_Text[19128]["Text122"]
tNpcGossip[19128]["Text123"] = tDemonTower_Text[19128]["Text123"]
tNpcGossip[19128]["tOption1-2"] = {121}
tNpcGossip[19128]["ChkFunc1-2"] = function()
	return not User_JudgeLevelAndMetempsychosis(tDemonTower_Const["Lev"],tDemonTower_Const["Mete"])
end

tNpcGossip[19128]["Option121"] = tDemonTower_Text[19128]["Option121"]

tNpcGossip[19128]["Text1-3"] = {131,132,133}
tNpcGossip[19128]["Text131"] = tDemonTower_Text[19128]["Text131"]
tNpcGossip[19128]["Text132"] = tDemonTower_Text[19128]["Text132"]
tNpcGossip[19128]["Text133"] = tDemonTower_Text[19128]["Text133"]
tNpcGossip[19128]["tOption1-3"] = {131,132}

tNpcGossip[19128]["Option131"] = tDemonTower_Text[19128]["Option131"]
tNpcGossip[19128]["OptionFunc131"] = "DemonTower_GetTeamReward</N>19128"
tNpcGossip[19128]["Option132"] = tDemonTower_Text[19128]["Option132"]


tNpcGossip[19128]["Text2-1"] = {211}
tNpcGossip[19128]["Text211"] = tDemonTower_Text[19128]["Text211"]
tNpcGossip[19128]["tOption2-1"] = {211}
tNpcGossip[19128]["Option211"] = tDemonTower_Text[19128]["Option211"]

tNpcGossip[19128]["Text2-2"] = {221}
tNpcGossip[19128]["Text221"] = tDemonTower_Text[19128]["Text221"]
tNpcGossip[19128]["tOption2-2"] = {221}
tNpcGossip[19128]["Option221"] = tDemonTower_Text[19128]["Option221"]

tNpcGossip[19128]["Text2-3"] = {231,232}
tNpcGossip[19128]["Text231"] = tDemonTower_Text[19128]["Text231"]
tNpcGossip[19128]["Text232"] = tDemonTower_Text[19128]["Text232"]
tNpcGossip[19128]["tOption2-3"] = {231}
tNpcGossip[19128]["Option231"] = tDemonTower_Text[19128]["Option231"]

tNpcGossip[19128]["Text2-4"] = {241}
tNpcGossip[19128]["Text241"] = tDemonTower_Text[19128]["Text241"]
tNpcGossip[19128]["tOption2-4"] = {241}
tNpcGossip[19128]["Option241"] = tDemonTower_Text[19128]["Option241"]


--镇魔塔守卫
-- tNpcFace[4014] = 0
tNpcGossip[19129] = tNpcGossip[19129] or DefaultNpc:new{}
tNpcGossip[19129]["OptionHidden"] = 1


tNpcGossip[19129]["Text1-1"] = {111,112,114,115,116,117,118}
tNpcGossip[19129]["Text111"] = tDemonTower_Text[19129]["Text111"]
tNpcGossip[19129]["Text112"] = tDemonTower_Text[19129]["Text112"]
tNpcGossip[19129]["Text113"] = tDemonTower_Text[19129]["Text113"]
tNpcGossip[19129]["Text114"] = tDemonTower_Text[19129]["Text114"]
tNpcGossip[19129]["Text115"] = tDemonTower_Text[19129]["Text115"]
tNpcGossip[19129]["Text116"] = tDemonTower_Text[19129]["Text116"]
tNpcGossip[19129]["Text117"] = tDemonTower_Text[19129]["Text117"]
tNpcGossip[19129]["Text118"] = tDemonTower_Text[19129]["Text118"]
tNpcGossip[19129]["tOption1-1"] = {112,113,114,111,115,116}
tNpcGossip[19129]["ChkFunc1-1"] = function()
	DemonTower_ResetText19129_11(19129)
	return true
end


tNpcGossip[19129]["Option111"] = tDemonTower_Text[19129]["Option111"]
tNpcGossip[19129]["OptionFunc111"] = "DemonTower_BeginChallenge</N>19129"
tNpcGossip[19129]["Option112"] = tDemonTower_Text[19129]["Option112"]
tNpcGossip[19129]["OptionFunc112"] = "DemonTower_ReFreshRewardFourStar</N>19129</N>1"
tNpcGossip[19129]["OptionChkFunc112"] = function()
	return not DemonTower_ChkStarIsFive()
end
tNpcGossip[19129]["Option113"] = tDemonTower_Text[19129]["Option113"]
tNpcGossip[19129]["OptionFunc113"] = "DemonTower_ReFreshRewardFourStar</N>19129</N>2"
tNpcGossip[19129]["OptionChkFunc113"] = function()
	return not DemonTower_ChkStarIsFive()
end
tNpcGossip[19129]["Option114"] = tDemonTower_Text[19129]["Option114"]
tNpcGossip[19129]["OptionFunc114"] = "DemonTower_ReFreshRewardFourStar</N>19129</N>3"
tNpcGossip[19129]["OptionChkFunc114"] = function()
	return not DemonTower_ChkStarIsFive() and Item_ChkItem(3008735)
end
tNpcGossip[19129]["Option115"] = tDemonTower_Text[19129]["Option115"]
tNpcGossip[19129]["OptionPoint115"] = "2-1"

tNpcGossip[19129]["Option116"] = tDemonTower_Text[19129]["Option116"]
tNpcGossip[19129]["OptionFunc116"] = "DemonTower_ReFreshRewardFourStar</N>19129</N>4"
tNpcGossip[19129]["OptionChkFunc116"] = function()
	return not DemonTower_ChkStarIsFive() and DemonTower_ChkCultivation()
end

tNpcGossip[19129]["Text10000-1"] = {1000011}
tNpcGossip[19129]["Text1000011"] = tDemonTower_Text[19129]["Text1000011"]
tNpcGossip[19129]["tOption10000-1"] = {1000011,1000012}
tNpcGossip[19129]["Option1000011"] = tDemonTower_Text[19129]["Option1000011"]
tNpcGossip[19129]["OptionFunc1000011"] = ""
tNpcGossip[19129]["Option1000012"] = tDemonTower_Text[19129]["Option1000012"]


--接返回塔间通道
tNpcGossip[19129]["Text2-1"] = {211}
tNpcGossip[19129]["Text211"] = tDemonTower_Text[19129]["Text211"]
tNpcGossip[19129]["tOption2-1"] = {211,212}
tNpcGossip[19129]["Option211"] = tDemonTower_Text[19129]["Option211"]
tNpcGossip[19129]["OptionFunc211"] = "DemonTower_BackToRoad</N>19129"
tNpcGossip[19129]["Option212"] = tDemonTower_Text[19129]["Option212"]

--接离开镇魔塔
tNpcGossip[19129]["Text2-2"] = {221}
tNpcGossip[19129]["Text221"] = tDemonTower_Text[19129]["Text221"]
tNpcGossip[19129]["tOption2-2"] = {221,222}
tNpcGossip[19129]["Option221"] = tDemonTower_Text[19129]["Option221"]
tNpcGossip[19129]["OptionFunc221"] = "DemonTower_BackToMainCity</N>19129"
tNpcGossip[19129]["Option222"] = tDemonTower_Text[19129]["Option222"]

--成功挑战后
tNpcGossip[19129]["Text1-2"] = {121,122,123}
tNpcGossip[19129]["Text121"] = tDemonTower_Text[19129]["Text121"]
tNpcGossip[19129]["Text122"] = tDemonTower_Text[19129]["Text122"]
tNpcGossip[19129]["Text123"] = tDemonTower_Text[19129]["Text123"]
tNpcGossip[19129]["tOption1-2"] = {121,122}
tNpcGossip[19129]["ChkFunc1-2"] = function()
	return true
end

tNpcGossip[19129]["Option121"] = tDemonTower_Text[19129]["Option121"]
tNpcGossip[19129]["OptionFunc121"] = "DemonTower_BackToRoad"
tNpcGossip[19129]["OptionChkFunc121"] = function()
	local nEvent = tDemonTower_Stc["Event"]
	local nType = tDemonTower_Stc["DataType"]["TakeFloor"]
	return Task_ChkStcValue(nEvent,nType,"~=",9)
end
tNpcGossip[19129]["Option122"] = tDemonTower_Text[19129]["Option122"]
tNpcGossip[19129]["OptionFunc122"] = "DemonTower_BackToMainCity</N>19129"

--成功挑战后
tNpcGossip[19129]["Text2-3"] = {231}
tNpcGossip[19129]["Text231"] = tDemonTower_Text[19129]["Text231"]
tNpcGossip[19129]["tOption2-3"] = {231,232}
tNpcGossip[19129]["Option231"] = tDemonTower_Text[19129]["Option231"]
tNpcGossip[19129]["OptionFunc231"] = "DemonTower_GoToNextRoad</N>19129"
tNpcGossip[19129]["Option232"] = tDemonTower_Text[19129]["Option232"]

tNpcGossip[19129]["Text2-4"] = {241}
tNpcGossip[19129]["Text241"] = tDemonTower_Text[19129]["Text241"]
tNpcGossip[19129]["tOption2-4"] = {241}
tNpcGossip[19129]["Option241"] = tDemonTower_Text[19129]["Option241"]

tNpcGossip[19129]["Text2-5"] = {251}
tNpcGossip[19129]["Text251"] = tDemonTower_Text[19129]["Text251"]
tNpcGossip[19129]["tOption2-5"] = {251}
tNpcGossip[19129]["Option251"] = tDemonTower_Text[19129]["Option251"]

tNpcGossip[19129]["Text3-1"] = {311}
tNpcGossip[19129]["Text311"] = tDemonTower_Text[19129]["Text311"]
tNpcGossip[19129]["tOption3-1"] = {311}
tNpcGossip[19129]["Option311"] = tDemonTower_Text[19129]["Option311"]

tNpcGossip[19129]["Text3-2"] = {321}
tNpcGossip[19129]["Text321"] = tDemonTower_Text[19129]["Text321"]
tNpcGossip[19129]["tOption3-2"] = {321}
tNpcGossip[19129]["Option321"] = tDemonTower_Text[19129]["Option321"]

tNpcGossip[19129]["Text3-3"] = {331}
tNpcGossip[19129]["Text331"] = tDemonTower_Text[19129]["Text331"]
tNpcGossip[19129]["tOption3-3"] = {331}
tNpcGossip[19129]["Option331"] = tDemonTower_Text[19129]["Option331"]

tNpcGossip[19129]["Text4-1"] = {411}
tNpcGossip[19129]["Text411"] = tDemonTower_Text[19129]["Text411"]
tNpcGossip[19129]["tOption4-1"] = {411}
tNpcGossip[19129]["Option411"] = tDemonTower_Text[19129]["Option411"]
tNpcGossip[19129]["OptionFunc411"] = "DemonTower_BackToMainCity"

tNpcGossip[19129]["Text4-2"] = {421,422}
tNpcGossip[19129]["Text421"] = tDemonTower_Text[19129]["Text421"]
tNpcGossip[19129]["Text422"] = tDemonTower_Text[19129]["Text422"]
tNpcGossip[19129]["tOption4-2"] = {421}
tNpcGossip[19129]["Option421"] = tDemonTower_Text[19129]["Option421"]
tNpcGossip[19129]["OptionFunc421"] = "DemonTower_BackToMainCity"


--塔间通道的镇魔塔守卫
tNpcFace[4035] = 23
tNpcFace[4036] = 23
tNpcFace[4037] = 23
tNpcFace[4038] = 23
tNpcFace[4039] = 23
tNpcFace[4040] = 23
tNpcFace[4041] = 23
tNpcFace[4042] = 23
tNpcFace[4043] = 23
tNpcFace[4044] = 23

tNpcGossip[19138] = tNpcGossip[19138] or DefaultNpc:new{}
tNpcGossip[19138]["OptionHidden"] = 1

tNpcGossip[19138]["Text1-1"] = {111,112,113}
tNpcGossip[19138]["Text111"] = tDemonTower_Text[19138]["Text111"]
tNpcGossip[19138]["Text112"] = tDemonTower_Text[19138]["Text112"]
tNpcGossip[19138]["Text113"] = tDemonTower_Text[19138]["Text113"]
tNpcGossip[19138]["tOption1-1"] = {111,112,113,114}
tNpcGossip[19138]["ChkFunc1-1"] = function()
	DemonTower_ResetText19138(19138)
	return true
end

tNpcGossip[19138]["Option111"] = tDemonTower_Text[19138]["Option111"]
tNpcGossip[19138]["OptionFunc111"] = "DemonTower_TakeTheNextFloor</N>19138"
tNpcGossip[19138]["Option112"] = tDemonTower_Text[19138]["Option112"]
tNpcGossip[19138]["OptionFunc112"] = "DemonTower_DonateInRoad</N>19138"
tNpcGossip[19138]["OptionChkFunc112"] = function()
	local nUserMapId = Get_UserMapId()
	local nFloor = tDemonTower_Const["RoadToFloor"][nUserMapId]
	return DemonTower_ChkFloorOpen(nFloor+1)
end
tNpcGossip[19138]["Option113"] = tDemonTower_Text[19138]["Option113"]
tNpcGossip[19138]["OptionPoint113"] = "4-6"
tNpcGossip[19138]["Option114"] = tDemonTower_Text[19138]["Option114"]

tNpcGossip[19138]["Text10000-1"] = {1000011}
tNpcGossip[19138]["Text1000011"] = tDemonTower_Text[19138]["Text1000011"]
tNpcGossip[19138]["tOption10000-1"] = {1000011,1000012}
tNpcGossip[19138]["Option1000011"] = tDemonTower_Text[19138]["Option1000011"]
tNpcGossip[19138]["OptionFunc1000011"] = ""
tNpcGossip[19138]["Option1000012"] = tDemonTower_Text[19138]["Option1000012"]

--接我要捐赠(失败)
tNpcGossip[19138]["Text2-1"] = {211,212}
tNpcGossip[19138]["Text211"] = tDemonTower_Text[19138]["Text211"]
tNpcGossip[19138]["Text212"] = tDemonTower_Text[19138]["Text212"]
tNpcGossip[19138]["tOption2-1"] = {211}
tNpcGossip[19138]["Option211"] = tDemonTower_Text[19138]["Option211"]

--接我要捐赠(成功)
tNpcGossip[19138]["Text2-2"] = {221,222,223,224,225,226}
tNpcGossip[19138]["Text221"] = tDemonTower_Text[19138]["Text221"]
tNpcGossip[19138]["Text222"] = tDemonTower_Text[19138]["Text222"]
tNpcGossip[19138]["Text223"] = tDemonTower_Text[19138]["Text223"]
tNpcGossip[19138]["Text224"] = tDemonTower_Text[19138]["Text224"]
tNpcGossip[19138]["Text225"] = tDemonTower_Text[19138]["Text225"]
tNpcGossip[19138]["Text226"] = tDemonTower_Text[19138]["Text226"]

tNpcGossip[19138]["tOption2-2"] = {223,221,224,222,225,227,226}
tNpcGossip[19138]["Option221"] = tDemonTower_Text[19138]["Option221"]
tNpcGossip[19138]["OptionFunc221"] = "DemonTower_DonateEmoneyInRoad</N>19138"
tNpcGossip[19138]["Option222"] = tDemonTower_Text[19138]["Option222"]
tNpcGossip[19138]["OptionFunc222"] = "DemonTower_DonateScrollInRoad</N>19138"
tNpcGossip[19138]["Option223"] = tDemonTower_Text[19138]["Option223"]
tNpcGossip[19138]["OptionFunc223"] = "DemonTower_ReFreshRewardFourStar</N>19138</N>1"
tNpcGossip[19138]["OptionChkFunc223"] = function()
	return not DemonTower_ChkStarIsFive()
end
tNpcGossip[19138]["Option224"] = tDemonTower_Text[19138]["Option224"]
tNpcGossip[19138]["OptionFunc224"] = "DemonTower_ReFreshRewardFourStar</N>19138</N>2"
tNpcGossip[19138]["OptionChkFunc224"] = function()
	return not DemonTower_ChkStarIsFive()
end
tNpcGossip[19138]["Option225"] = tDemonTower_Text[19138]["Option225"]
tNpcGossip[19138]["OptionFunc225"] = "DemonTower_ReFreshRewardFourStar</N>19138</N>3"
tNpcGossip[19138]["OptionChkFunc225"] = function()
	return not DemonTower_ChkStarIsFive() and Item_ChkItem(3008735)
end
tNpcGossip[19138]["Option226"] = tDemonTower_Text[19138]["Option226"]

tNpcGossip[19138]["Option227"] = tDemonTower_Text[19138]["Option227"]
tNpcGossip[19138]["OptionFunc227"] = "DemonTower_ReFreshRewardFourStar</N>19138</N>4"
tNpcGossip[19138]["OptionChkFunc227"] = function()
	return not DemonTower_ChkStarIsFive() and DemonTower_ChkCultivation()
end

tNpcGossip[19138]["ChkFunc2-2"] = function()
	DemonTower_ResetDonateTextInRoad(19138)
	return true
end


--接我要捐赠(成功)->捐赠天石
tNpcGossip[19138]["Text3-1"] = {311}
tNpcGossip[19138]["Text311"] = tDemonTower_Text[19138]["Text311"]
tNpcGossip[19138]["tOption3-1"] = {311,312}
tNpcGossip[19138]["Option311"] = tDemonTower_Text[19138]["Option311"]
tNpcGossip[19138]["OptionFunc311"] = "DemonTower_ConfirmUseEmoneyInRoad</N>19138"
tNpcGossip[19138]["Option312"] = tDemonTower_Text[19138]["Option312"]

--接我要捐赠(成功)->捐赠天石->成功
tNpcGossip[19138]["Text4-1"] = {411}
tNpcGossip[19138]["Text411"] = tDemonTower_Text[19138]["Text411"]
tNpcGossip[19138]["tOption4-1"] = {411}
tNpcGossip[19138]["Option411"] = tDemonTower_Text[19138]["Option411"]

--接我要捐赠(成功)->捐赠天石->失败，天石不足
tNpcGossip[19138]["Text4-2"] = {421}
tNpcGossip[19138]["Text421"] = tDemonTower_Text[19138]["Text421"]
tNpcGossip[19138]["tOption4-2"] = {421}
tNpcGossip[19138]["Option421"] = tDemonTower_Text[19138]["Option421"]

--接我要捐赠(成功)->捐赠天石->失败，背包空间不足
tNpcGossip[19138]["Text4-3"] = {431,432}
tNpcGossip[19138]["Text431"] = tDemonTower_Text[19138]["Text431"]
tNpcGossip[19138]["Text432"] = tDemonTower_Text[19138]["Text432"]
tNpcGossip[19138]["tOption4-3"] = {431}
tNpcGossip[19138]["Option431"] = tDemonTower_Text[19138]["Option431"]

--接我要捐赠(成功)->捐赠流星
tNpcGossip[19138]["Text3-2"] = {321}
tNpcGossip[19138]["Text321"] = tDemonTower_Text[19138]["Text321"]
tNpcGossip[19138]["tOption3-2"] = {321,322}
tNpcGossip[19138]["Option321"] = tDemonTower_Text[19138]["Option321"]
tNpcGossip[19138]["OptionFunc321"] = ""
tNpcGossip[19138]["Option322"] = tDemonTower_Text[19138]["Option322"]

--接我要捐赠(成功)->捐赠流星->失败，流星卷不足
tNpcGossip[19138]["Text4-4"] = {441}
tNpcGossip[19138]["Text441"] = tDemonTower_Text[19138]["Text441"]
tNpcGossip[19138]["tOption4-4"] = {441}
tNpcGossip[19138]["Option441"] = tDemonTower_Text[19138]["Option441"]

tNpcGossip[19138]["Text4-5"] = {451}
tNpcGossip[19138]["Text451"] = tDemonTower_Text[19138]["Text451"]
tNpcGossip[19138]["tOption4-5"] = {451}
tNpcGossip[19138]["Option451"] = tDemonTower_Text[19138]["Option451"]
tNpcGossip[19138]["OptionPoint451"] = "1-1"

tNpcGossip[19138]["Text4-6"] = {461}
tNpcGossip[19138]["Text461"] = tDemonTower_Text[19138]["Text461"]
tNpcGossip[19138]["tOption4-6"] = {461,462}
tNpcGossip[19138]["Option461"] = tDemonTower_Text[19138]["Option461"]
tNpcGossip[19138]["OptionFunc461"] = "DemonTower_BackToMainCity"
tNpcGossip[19138]["Option462"] = tDemonTower_Text[19138]["Option462"]

tNpcGossip[19138]["Text4-7"] = {471}
tNpcGossip[19138]["Text471"] = tDemonTower_Text[19138]["Text471"]
tNpcGossip[19138]["tOption4-7"] = {471}
tNpcGossip[19138]["Option471"] = tDemonTower_Text[19138]["Option471"]

tNpcGossip[19138]["Text5-1"] = {511}
tNpcGossip[19138]["Text511"] = tDemonTower_Text[19138]["Text511"]
tNpcGossip[19138]["tOption5-1"] = {511}
tNpcGossip[19138]["Option511"] = tDemonTower_Text[19138]["Option511"]

tNpcGossip[19138]["Text5-2"] = {521}
tNpcGossip[19138]["Text521"] = tDemonTower_Text[19138]["Text521"]
tNpcGossip[19138]["tOption5-2"] = {521}
tNpcGossip[19138]["Option521"] = tDemonTower_Text[19138]["Option521"]

tNpcGossip[19138]["Text5-3"] = {531}
tNpcGossip[19138]["Text531"] = tDemonTower_Text[19138]["Text531"]
tNpcGossip[19138]["tOption5-3"] = {531}
tNpcGossip[19138]["Option531"] = tDemonTower_Text[19138]["Option531"]

tNpcGossip[19138]["Text5-4"] = {541}
tNpcGossip[19138]["Text541"] = tDemonTower_Text[19138]["Text541"]
tNpcGossip[19138]["tOption5-4"] = {541}
tNpcGossip[19138]["Option541"] = tDemonTower_Text[19138]["Option541"]


tNpcGossip[19139] = tNpcGossip[19138]
tNpcGossip[19140] = tNpcGossip[19138]
tNpcGossip[19141] = tNpcGossip[19138]
tNpcGossip[19142] = tNpcGossip[19138]
tNpcGossip[19143] = tNpcGossip[19138]
tNpcGossip[19144] = tNpcGossip[19138]
tNpcGossip[19145] = tNpcGossip[19138]
tNpcGossip[19146] = tNpcGossip[19138]




-- tNpcFace[4015] = 0
tNpcGossip[19147] = tNpcGossip[19147] or DefaultNpc:new{}
tNpcGossip[19147]["OptionHidden"] = 1


--今日还有领奖次数
tNpcGossip[19147]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[19147]["Text111"] = tDemonTower_Text[19147]["Text111"]
tNpcGossip[19147]["Text112"] = tDemonTower_Text[19147]["Text112"]
tNpcGossip[19147]["Text113"] = tDemonTower_Text[19147]["Text113"]
tNpcGossip[19147]["Text114"] = tDemonTower_Text[19147]["Text114"]
tNpcGossip[19147]["Text115"] = tDemonTower_Text[19147]["Text115"]
tNpcGossip[19147]["Text116"] = tDemonTower_Text[19147]["Text116"]
tNpcGossip[19147]["Text117"] = tDemonTower_Text[19147]["Text117"]
tNpcGossip[19147]["tOption1-1"] = {111,114,112,113,116}
tNpcGossip[19147]["ChkFunc1-1"] = function()
	DemonTower_ResetGiftBoxText(19147)
	return true
end

tNpcGossip[19147]["Option111"] = tDemonTower_Text[19147]["Option111"]
tNpcGossip[19147]["OptionFunc111"] = "DemonTower_GetReward</N>19147"
tNpcGossip[19147]["Option112"] = tDemonTower_Text[19147]["Option112"]
tNpcGossip[19147]["OptionFunc112"] = "DemonTower_ReFreshRewardFourStar</N>19147</N>1"
tNpcGossip[19147]["OptionChkFunc112"] = function()
	return not DemonTower_ChkStarIsFive()
end
tNpcGossip[19147]["Option113"] = tDemonTower_Text[19147]["Option113"]
tNpcGossip[19147]["OptionFunc113"] = "DemonTower_ReFreshRewardFourStar</N>19147</N>2"
tNpcGossip[19147]["OptionChkFunc113"] = function()
	return not DemonTower_ChkStarIsFive()
end
tNpcGossip[19147]["Option114"] = tDemonTower_Text[19147]["Option114"]
tNpcGossip[19147]["OptionFunc114"] = "DemonTower_ReFreshRewardFourStar</N>19147</N>3"
tNpcGossip[19147]["OptionChkFunc114"] = function()
	return not DemonTower_ChkStarIsFive()
end
tNpcGossip[19147]["Option115"] = tDemonTower_Text[19147]["Option115"]

tNpcGossip[19147]["Option116"] = tDemonTower_Text[19147]["Option116"]
tNpcGossip[19147]["OptionFunc116"] = "DemonTower_ReFreshRewardFourStar</N>19147</N>4"
tNpcGossip[19147]["OptionChkFunc116"] = function()
	return not DemonTower_ChkStarIsFive() and DemonTower_ChkCultivation()
end

tNpcGossip[19147]["Text10000-1"] = {1000011}
tNpcGossip[19147]["Text1000011"] = tDemonTower_Text[19147]["Text1000011"]
tNpcGossip[19147]["tOption10000-1"] = {1000011,1000012}
tNpcGossip[19147]["Option1000011"] = tDemonTower_Text[19147]["Option1000011"]
tNpcGossip[19147]["OptionFunc1000011"] = ""
tNpcGossip[19147]["Option1000012"] = tDemonTower_Text[19147]["Option1000012"]

--今日已无领奖次数
tNpcGossip[19147]["Text1-2"] = {121,122}
tNpcGossip[19147]["Text121"] = tDemonTower_Text[19147]["Text121"]
tNpcGossip[19147]["Text122"] = tDemonTower_Text[19147]["Text122"]
tNpcGossip[19147]["tOption1-2"] = {121}
tNpcGossip[19147]["ChkFunc1-2"] = function()
	return true
end

tNpcGossip[19147]["Option121"] = tDemonTower_Text[19147]["Option121"]

tNpcGossip[19147]["Text2-1"] = {211}
tNpcGossip[19147]["Text211"] = tDemonTower_Text[19147]["Text211"]
tNpcGossip[19147]["tOption2-1"] = {211}
tNpcGossip[19147]["Option211"] = tDemonTower_Text[19147]["Option211"]

tNpcGossip[19147]["Text2-2"] = {221}
tNpcGossip[19147]["Text221"] = tDemonTower_Text[19147]["Text221"]
tNpcGossip[19147]["tOption2-2"] = {221}
tNpcGossip[19147]["Option221"] = tDemonTower_Text[19147]["Option221"]

tNpcGossip[19147]["Text2-3"] = {231}
tNpcGossip[19147]["Text231"] = tDemonTower_Text[19147]["Text231"]
tNpcGossip[19147]["tOption2-3"] = {231}
tNpcGossip[19147]["Option231"] = tDemonTower_Text[19147]["Option231"]

tNpcGossip[19147]["Text2-4"] = {241}
tNpcGossip[19147]["Text241"] = tDemonTower_Text[19147]["Text241"]
tNpcGossip[19147]["tOption2-4"] = {241}
tNpcGossip[19147]["Option241"] = tDemonTower_Text[19147]["Option241"]
tNpcGossip[19147]["OptionPoint241"] = "1-1"

tNpcGossip[19147]["Text2-5"] = {251}
tNpcGossip[19147]["Text251"] = tDemonTower_Text[19147]["Text251"]
tNpcGossip[19147]["tOption2-5"] = {251,252}
tNpcGossip[19147]["Option251"] = tDemonTower_Text[19147]["Option251"]
tNpcGossip[19147]["OptionFunc251"] = "DemonTower_BackToRoad"
tNpcGossip[19147]["OptionChkFunc251"] = function()
	local nEvent = tDemonTower_Stc["Event"]
	local nType = tDemonTower_Stc["DataType"]["TakeFloor"]
	return Task_ChkStcValue(nEvent,nType,"~=",9)
end
tNpcGossip[19147]["Option252"] = tDemonTower_Text[19147]["Option252"]
tNpcGossip[19147]["OptionFunc252"] = "DemonTower_BackToMainCity"

tNpcGossip[19147]["Text2-6"] = {261}
tNpcGossip[19147]["Text261"] = tDemonTower_Text[19147]["Text261"]
tNpcGossip[19147]["tOption2-6"] = {261}
tNpcGossip[19147]["Option261"] = tDemonTower_Text[19147]["Option261"]
tNpcGossip[19147]["OptionFunc261"] = "DemonTower_BackToMainCity"

tNpcGossip[19147]["Text2-7"] = {271}
tNpcGossip[19147]["Text271"] = tDemonTower_Text[19147]["Text271"]
tNpcGossip[19147]["tOption2-7"] = {271}
tNpcGossip[19147]["Option271"] = tDemonTower_Text[19147]["Option271"]

tNpcGossip[19147]["Text2-8"] = {281}
tNpcGossip[19147]["Text281"] = tDemonTower_Text[19147]["Text281"]
tNpcGossip[19147]["tOption2-8"] = {281,282}
tNpcGossip[19147]["Option281"] = tDemonTower_Text[19147]["Option281"]
tNpcGossip[19147]["OptionFunc281"] = "DemonTower_BackToRoad"
tNpcGossip[19147]["OptionChkFunc281"] = function()
	local nEvent = tDemonTower_Stc["Event"]
	local nType = tDemonTower_Stc["DataType"]["TakeFloor"]
	return Task_ChkStcValue(nEvent,nType,"~=",9)
end
tNpcGossip[19147]["Option282"] = tDemonTower_Text[19147]["Option282"]

tNpcGossip[19147]["OptionFunc282"] = "DemonTower_BackToMainCity"


tNpcFace[4076] = 6
tNpcGossip[19224] = tNpcGossip[19224] or DefaultNpc:new{}
tNpcGossip[19224]["OptionHidden"] = 1

tNpcGossip[19224]["Text1-1"] = {111,112,113}
tNpcGossip[19224]["Text111"] = tDemonTower_Text[19224]["Text111"]
tNpcGossip[19224]["Text112"] = tDemonTower_Text[19224]["Text112"]
tNpcGossip[19224]["Text113"] = tDemonTower_Text[19224]["Text113"]
tNpcGossip[19224]["tOption1-1"] = {111,112,113}
tNpcGossip[19224]["ChkFunc1-1"] = function()
	return true
end

tNpcGossip[19224]["Option111"] = tDemonTower_Text[19224]["Option111"]
tNpcGossip[19224]["OptionFunc111"] = "DemonTower_OpenWebSiteProcess"
tNpcGossip[19224]["Option112"] = tDemonTower_Text[19224]["Option112"]
tNpcGossip[19224]["OptionPoint112"] = "2-1"
tNpcGossip[19224]["Option113"] = tDemonTower_Text[19224]["Option113"]

tNpcGossip[19224]["Text2-1"] = {211,212,213}
tNpcGossip[19224]["Text211"] = tDemonTower_Text[19224]["Text211"]
tNpcGossip[19224]["Text212"] = tDemonTower_Text[19224]["Text212"]
tNpcGossip[19224]["Text213"] = tDemonTower_Text[19224]["Text213"]
tNpcGossip[19224]["tOption2-1"] = {211,212}
tNpcGossip[19224]["Option211"] = tDemonTower_Text[19224]["Option211"]
tNpcGossip[19224]["OptionFunc211"] = "DemonTower_ReceiveHis</N>19224"
tNpcGossip[19224]["Option212"] = tDemonTower_Text[19224]["Option212"]

tNpcGossip[19224]["Text3-1"] = {311,312}
tNpcGossip[19224]["Text311"] = tDemonTower_Text[19224]["Text311"]
tNpcGossip[19224]["Text312"] = tDemonTower_Text[19224]["Text312"]
tNpcGossip[19224]["tOption3-1"] = {311}
tNpcGossip[19224]["Option311"] = tDemonTower_Text[19224]["Option311"]

tNpcGossip[19224]["Text3-2"] = {321}
tNpcGossip[19224]["Text321"] = tDemonTower_Text[19224]["Text321"]
tNpcGossip[19224]["tOption3-2"] = {321}
tNpcGossip[19224]["Option321"] = tDemonTower_Text[19224]["Option321"]

--天结散人
tNpcFace[779] = 67
tNpcGossip[8233] = tNpcGossip[8233] or DefaultNpc:new{}
tNpcGossip[8233]["OptionHidden"] = 1

tNpcGossip[8233]["Text1-1"] = {111,112}
tNpcGossip[8233]["Text111"] = tDemonTower_Text[8233]["Text111"]
tNpcGossip[8233]["Text112"] = tDemonTower_Text[8233]["Text112"]
tNpcGossip[8233]["tOption1-1"] = {111,112,113,114}
tNpcGossip[8233]["ChkFunc1-1"] = function()
	return true
end

tNpcGossip[8233]["Option111"] = tDemonTower_Text[8233]["Option111"]
tNpcGossip[8233]["OptionFunc111"] = "DemonTower_TransToAc</N>8233"
tNpcGossip[8233]["Option112"] = tDemonTower_Text[8233]["Option112"]
tNpcGossip[8233]["OptionFunc112"] = "DemonTower_GetJinTianAward</N>8233"
tNpcGossip[8233]["OptionChkFunc112"] = function()
	local nTaskId = tDemonTower_Const["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId) then
		return false
	end
	
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",1) and Task_ChkTaskDetailValue(nTaskId,"6","==",1) then
		return false
	end
	return true
end
tNpcGossip[8233]["Option113"] = tDemonTower_Text[8233]["Option113"]
tNpcGossip[8233]["OptionPoint113"] = "2-3"
tNpcGossip[8233]["Option114"] = tDemonTower_Text[8233]["Option114"]


tNpcGossip[8233]["Text2-1"] = {211}
tNpcGossip[8233]["Text211"] = tDemonTower_Text[8233]["Text211"]
tNpcGossip[8233]["tOption2-1"] = {211}
tNpcGossip[8233]["Option211"] = tDemonTower_Text[8233]["Option211"]

tNpcGossip[8233]["Text2-2"] = {221,222}
tNpcGossip[8233]["Text221"] = tDemonTower_Text[8233]["Text221"]
tNpcGossip[8233]["Text222"] = tDemonTower_Text[8233]["Text222"]
tNpcGossip[8233]["tOption2-2"] = {221,222,223}
tNpcGossip[8233]["Option221"] = tDemonTower_Text[8233]["Option221"]
tNpcGossip[8233]["OptionFunc221"] = "DemonTower_GetJinTianAwardByEmoney</N>8233"
tNpcGossip[8233]["Option222"] = tDemonTower_Text[8233]["Option222"]
tNpcGossip[8233]["OptionFunc222"] = "DemonTower_GetJinTianAwardByItem</N>8233</N>3600012"
tNpcGossip[8233]["Option223"] = tDemonTower_Text[8233]["Option223"]

tNpcGossip[8233]["Text2-3"] = {231,232}
tNpcGossip[8233]["Text231"] = tDemonTower_Text[8233]["Text231"]
tNpcGossip[8233]["Text232"] = tDemonTower_Text[8233]["Text232"]
tNpcGossip[8233]["tOption2-3"] = {231,232,233}
tNpcGossip[8233]["Option231"] = tDemonTower_Text[8233]["Option231"]
tNpcGossip[8233]["OptionFunc231"] = "DemonTower_ExPack</N>8233</N>720948"
tNpcGossip[8233]["Option232"] = tDemonTower_Text[8233]["Option232"]
tNpcGossip[8233]["OptionFunc232"] = "DemonTower_ExPack</N>8233</N>729594"
tNpcGossip[8233]["Option233"] = tDemonTower_Text[8233]["Option233"]



tNpcGossip[8233]["Text3-1"] = {311}
tNpcGossip[8233]["Text311"] = tDemonTower_Text[8233]["Text311"]
tNpcGossip[8233]["tOption3-1"] = {311}
tNpcGossip[8233]["Option311"] = tDemonTower_Text[8233]["Option311"]


tNpcGossip[8233]["Text3-2"] = {321}
tNpcGossip[8233]["Text321"] = tDemonTower_Text[8233]["Text321"]
tNpcGossip[8233]["tOption3-2"] = {321}
tNpcGossip[8233]["Option321"] = tDemonTower_Text[8233]["Option321"]


tNpcGossip[8233]["Text3-3"] = {331}
tNpcGossip[8233]["Text331"] = tDemonTower_Text[8233]["Text331"]
tNpcGossip[8233]["tOption3-3"] = {331}
tNpcGossip[8233]["Option331"] = tDemonTower_Text[8233]["Option331"]


tNpcGossip[8233]["Text3-4"] = {341,342}
tNpcGossip[8233]["Text341"] = tDemonTower_Text[8233]["Text341"]
tNpcGossip[8233]["Text342"] = tDemonTower_Text[8233]["Text342"]
tNpcGossip[8233]["tOption3-4"] = {341}
tNpcGossip[8233]["Option341"] = tDemonTower_Text[8233]["Option341"]

tNpcGossip[8233]["Text3-5"] = {351,352}
tNpcGossip[8233]["Text351"] = tDemonTower_Text[8233]["Text351"]
tNpcGossip[8233]["Text352"] = tDemonTower_Text[8233]["Text352"]
tNpcGossip[8233]["tOption3-5"] = {351}
tNpcGossip[8233]["Option351"] = tDemonTower_Text[8233]["Option351"]

tNpcGossip[8233]["Text3-6"] = {361,362}
tNpcGossip[8233]["Text361"] = tDemonTower_Text[8233]["Text361"]
tNpcGossip[8233]["Text362"] = tDemonTower_Text[8233]["Text362"]
tNpcGossip[8233]["tOption3-6"] = {361}
tNpcGossip[8233]["Option361"] = tDemonTower_Text[8233]["Option361"]

tNpcFace[28] = 1
tNpcGossip[19231] = tNpcGossip[19231] or DefaultNpc:new{}
tNpcGossip[19231]["OptionHidden"] = 1

tNpcGossip[19231]["Text1-1"] = {111}
tNpcGossip[19231]["Text111"] = tDemonTower_Text[19231]["Text111"]
tNpcGossip[19231]["tOption1-1"] = {111,112,113}
tNpcGossip[19231]["ChkFunc1-1"] = function()
	return true
end

tNpcGossip[19231]["Option111"] = tDemonTower_Text[19231]["Option111"]
tNpcGossip[19231]["OptionFunc111"] = "DemonTower_BackToPlace</N>1"
tNpcGossip[19231]["Option112"] = tDemonTower_Text[19231]["Option112"]
tNpcGossip[19231]["OptionFunc112"] = "DemonTower_BackToPlace</N>2"
tNpcGossip[19231]["Option113"] = tDemonTower_Text[19231]["Option113"]


tNpcGossip[19225] = tNpcGossip[19225] or DefaultNpc:new{}
tNpcGossip[19225]["OptionHidden"] = 1
tNpcGossip[19225]["Text1-1"] = {111,112}
tNpcGossip[19225]["Text111"] = tDemonTower_Text[19225]["Text111"]
tNpcGossip[19225]["Text112"] = tDemonTower_Text[19225]["Text112"]
tNpcGossip[19225]["tOption1-1"] = {111}
tNpcGossip[19225]["ChkFunc1-1"] = function()
	return true
end

tNpcGossip[19225]["Option111"] = tDemonTower_Text[19225]["Option111"]

---------------------------------------------------物品模块-------------------------------------------------


-- 炽热天石碎片
tItemFace[3008727] = 1329
tItem[3008727] = tItem[3008727] or {}
tItem[3008727]["Function"] = function(nItemId,sItemName)
	--DemonTower_UseEmoneyPiece(nItemId)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
--炽热天石碎片
tItem[3008727]["Text1-1"] = {111,112}
tItem[3008727]["Text111"] = tDemonTower_Text[3008727]["Text111"]
tItem[3008727]["Text112"] = tDemonTower_Text[3008727]["Text112"]
tItem[3008727]["tOption1-1"] = {111,112}
tItem[3008727]["Option111"] = tDemonTower_Text[3008727]["Option111"]
tItem[3008727]["OptionFunc111"] = "DemonTower_EmoneyMono</N>3008727</N>1"
tItem[3008727]["Option112"] = tDemonTower_Text[3008727]["Option112"]
tItem[3008727]["OptionPoint112"] = "2-1"

--炽热天石碎片   翻倍合成
tItem[3008727]["Text2-1"] = {211}
tItem[3008727]["Text211"] = tDemonTower_Text[3008727]["Text211"]
tItem[3008727]["tOption2-1"] = {211,212}
tItem[3008727]["Option211"] = tDemonTower_Text[3008727]["Option211"]
tItem[3008727]["OptionFunc211"] = "DemonTower_EmoneyMono</N>3008727</N>2"
tItem[3008727]["Option212"] = tDemonTower_Text[3008727]["Option212"]

--炽热天石碎片   合成达到上限
tItem[3008727]["Text3-1"] = {311}
tItem[3008727]["Text311"] = tDemonTower_Text[3008727]["Text311"]
tItem[3008727]["tOption3-1"] = {311}
tItem[3008727]["Option311"] = tDemonTower_Text[3008727]["Option311"]


-- 烈焰精粹
tItem[3008728] = tItem[3008728] or {}
tItem[3008728]["Function"] = function(nItemId,sItemName)
	DemonTower_UsePithyOfFire(nItemId)
end

-- 3008925	海蓝天石赠礼包
-- tItem[3008925] = tItem[3008925] or {}
-- tItem[3008925]["Function"] = function(nItemId,sItemName)
	-- DemonTower_UseCpPack(nItemId)
-- end

-- 3008926	翡翠天石赠礼包
-- tItem[3008926] = tItem[3008926] or {}
-- tItem[3008926]["Function"] = function(nItemId,sItemName)
	-- DemonTower_UseCpPack(nItemId)
-- end



-- 星月宝盒
tItem[3008732] = tItem[3008732] or {}
tItem[3008732]["Text1-1"] = {111}
tItem[3008732]["Text111"] = tDemonTower_Text[3008732]["Text111"]
tItem[3008732]["tOption1-1"] = {111,112,113,114}
tItem[3008732]["Option111"] = tDemonTower_Text[3008732]["Option111"]
tItem[3008732]["OptionFunc111"] = "DemonTower_MoonsPack</N>3008732</N>721533"
tItem[3008732]["Option112"] = tDemonTower_Text[3008732]["Option112"]
tItem[3008732]["OptionFunc112"] = "DemonTower_MoonsPack</N>3008732</N>721534"
tItem[3008732]["Option113"] = tDemonTower_Text[3008732]["Option113"]
tItem[3008732]["OptionFunc113"] = "DemonTower_MoonsPack</N>3008732</N>721535"
tItem[3008732]["Option114"] = tDemonTower_Text[3008732]["Option114"]
tItem[3008732]["OptionFunc114"] = "DemonTower_MoonsPack</N>3008732</N>721536"

-- 侠士同心礼包
tItem[3008733] = tItem[3008733] or {}
tItem[3008733]["Function"] = function(nItemId,sItemName)
	-- DemonTower_UseWheel(nItemId)
	RouletteMould_Main(tDemonTower_Const["ItemToTaskId"][nItemId])
end

-- 绝世武器外套礼盒
tItem[3008734] = tItem[3008734] or {}
tItem[3008734]["Function"] = function(nItemId,sItemName)
	-- DemonTower_UseWheel(nItemId)
	RouletteMould_Main(tDemonTower_Const["ItemToTaskId"][nItemId])
end

--西煌简史
tItem[3008737] = tItem[3008737] or {}
tItem[3008737]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenWebSite(nItemId)
end

-- 经验礼包
tItem[3008956] = tItem[3008956] or {}
tItem[3008956]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008957] = tItem[3008957] or {}
tItem[3008957]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008958] = tItem[3008958] or {}
tItem[3008958]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008959] = tItem[3008959] or {}
tItem[3008959]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008960] = tItem[3008960] or {}
tItem[3008960]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008961] = tItem[3008961] or {}
tItem[3008961]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008962] = tItem[3008962] or {}
tItem[3008962]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008963] = tItem[3008963] or {}
tItem[3008963]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008964] = tItem[3008964] or {}
tItem[3008964]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008965] = tItem[3008965] or {}
tItem[3008965]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008966] = tItem[3008966] or {}
tItem[3008966]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008967] = tItem[3008967] or {}
tItem[3008967]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008968] = tItem[3008968] or {}
tItem[3008968]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008969] = tItem[3008969] or {}
tItem[3008969]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008970] = tItem[3008970] or {}
tItem[3008970]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008971] = tItem[3008971] or {}
tItem[3008971]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008972] = tItem[3008972] or {}
tItem[3008972]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008973] = tItem[3008973] or {}
tItem[3008973]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008974] = tItem[3008974] or {}
tItem[3008974]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008975] = tItem[3008975] or {}
tItem[3008975]["Function"] = function(nItemId,sItemName)
	DemonTower_OpenExpPack(nItemId)
end

tItem[3008726] = tItem[3008726] or {}
tItem[3008726]["Text1-1"] = {111,112,113}
tItem[3008726]["Text111"] = tDemonTower_Text[3008726]["Text111"]
tItem[3008726]["Text112"] = tDemonTower_Text[3008726]["Text112"]
tItem[3008726]["Text113"] = tDemonTower_Text[3008726]["Text113"]
tItem[3008726]["tOption1-1"] = {111}
tItem[3008726]["Option111"] = tDemonTower_Text[3008726]["Option111"]
tItem[3008726]["OptionFunc111"] = "DemonTower_UseTheLetter</N>3008726"

----------------------------------------------------陷阱--------------------------------------------------------

tTrap[1410] = tTrap[1410] or {}
tTrap[1410]["Function"] = function (nTrapId,nTrapType)
	DemonTower_GoToMainCity()
end

tTrap[1413] = tTrap[1413] or {}
tTrap[1413]["Function"] = function (nTrapId,nTrapType)
	DemonTower_FrozeBody()
end
---------------------------------------------------怪物模块---------------------------------------------------


local tDemonTower_Monster = {}
	tDemonTower_Monster["Function"] = DemonTower_MonsterDie
	tDemonTower_Monster["MonsterId"] = {7976,7977,7978,7979,7980,7981,7982,7983,7984,7985,7986,7987,7988,7989,7990,7991,7992,7993,7994,7995,7996,7997,7998}
table.insert(tMonsterDrop_AreaLoad,tDemonTower_Monster)


--------------------------------------------------时间自检---------------------------------------------------

--时间函数触发
--00 00
tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],DemonTower_SysChk)

