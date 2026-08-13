------------------------------------------------------------------------------------
--Name：	190929[简体征服][活动脚本]全球万圣节活动-鬼怪收集
--Creator:	林旭
--Created:	2019/09/29
------------------------------------------------------------------------------------
-- 任务需求：
-- 前缀名：CollectGhost
------------------------------------------------------------------------------------
-- 跨服任务id
local tCollectGhost_Task = {}
	tCollectGhost_Task["id"] = 35057
	-- 简体
	tCollectGhost_Task[3600166] = {}
	tCollectGhost_Task[3600166][1] = 25004
	tCollectGhost_Task[3600166][2] = 25005
	tCollectGhost_Task[3600166][25004] = 1
	tCollectGhost_Task[3600166][25005] = 2
	-- 英文
	tCollectGhost_Task[3600167] = {}
	tCollectGhost_Task[3600167][1] = 25006
	tCollectGhost_Task[3600167][2] = 25007
	tCollectGhost_Task[3600167][25006] = 1
	tCollectGhost_Task[3600167][25007] = 2
-- 本服糖果Id和异国糖果Id
local nCollectGhost_CandyId = 3600167
local nCollectGhost_OtherCandyId = 3600166
-- 需要等级
local tCollectGhost_Level = {}
	tCollectGhost_Level["Level"] = 80
	tCollectGhost_Level["Mete"] = 0
-- 活动时间
local tCollectGhost_ActivityTime = {}
	tCollectGhost_ActivityTime["ActivityTime"] = tActivityTime["CollectGhost"]["ActivityTime"]
	tCollectGhost_ActivityTime["FirstWeek"] = tActivityTime["CollectGhost"]["FirstWeek"]
	
-- 变身需要完成任务次数
local tCollectGhost_TransformationNeedTimes = {}
	tCollectGhost_TransformationNeedTimes[1] = 2
	tCollectGhost_TransformationNeedTimes[2] = 3
	tCollectGhost_TransformationNeedTimes[3] = 3
	tCollectGhost_TransformationNeedTimes[4] = 1
	tCollectGhost_TransformationNeedTimes[5] = 5
	
-- 三星鬼怪刷新位置
local tCollectGhost_Generator = {}
	tCollectGhost_Generator["Normal"] = {}
	tCollectGhost_Generator["Normal"][1161] = {}
	tCollectGhost_Generator["Normal"][1161][1] = {MapId=1002,Posx=539,Posy=324}
	tCollectGhost_Generator["Normal"][1161][2] = {MapId=1002,Posx=592,Posy=445}
	tCollectGhost_Generator["Normal"][1161][3] = {MapId=1002,Posx=681,Posy=380}
	tCollectGhost_Generator["Normal"][1161][4] = {MapId=1002,Posx=359,Posy=688}
	tCollectGhost_Generator["Normal"][1161][5] = {MapId=1002,Posx=397,Posy=607}
	tCollectGhost_Generator["Normal"][1162] = {}
	tCollectGhost_Generator["Normal"][1162][1] = {MapId=1011,Posx=81 ,Posy=393}
	tCollectGhost_Generator["Normal"][1162][2] = {MapId=1011,Posx=332,Posy=410}
	tCollectGhost_Generator["Normal"][1162][3] = {MapId=1011,Posx=706,Posy=430}
	tCollectGhost_Generator["Normal"][1162][4] = {MapId=1011,Posx=641,Posy=770}
	tCollectGhost_Generator["Normal"][1162][5] = {MapId=1011,Posx=434,Posy=127}
	tCollectGhost_Generator["Normal"][1163] = {}
	tCollectGhost_Generator["Normal"][1163][1] = {MapId=1020,Posx=469,Posy=155}
	tCollectGhost_Generator["Normal"][1163][2] = {MapId=1020,Posx=806,Posy=603}
	tCollectGhost_Generator["Normal"][1163][3] = {MapId=1020,Posx=331,Posy=591}
	tCollectGhost_Generator["Normal"][1163][4] = {MapId=1020,Posx=694,Posy=738}
	tCollectGhost_Generator["Normal"][1163][5] = {MapId=1020,Posx=261,Posy=264}
	tCollectGhost_Generator["Normal"][1164] = {}
	tCollectGhost_Generator["Normal"][1164][1] = {MapId=1000,Posx=941,Posy=664}
	tCollectGhost_Generator["Normal"][1164][2] = {MapId=1000,Posx=630,Posy=642}
	tCollectGhost_Generator["Normal"][1164][3] = {MapId=1000,Posx=408,Posy=206}
	tCollectGhost_Generator["Normal"][1164][4] = {MapId=1000,Posx=336,Posy=397}
	tCollectGhost_Generator["Normal"][1164][5] = {MapId=1000,Posx=151,Posy=338}
	tCollectGhost_Generator["Normal"][1165] = {}
	tCollectGhost_Generator["Normal"][1165][1] = {MapId=1015,Posx=930,Posy=706}
	tCollectGhost_Generator["Normal"][1165][2] = {MapId=1015,Posx=475,Posy=634}
	tCollectGhost_Generator["Normal"][1165][3] = {MapId=1015,Posx=543,Posy=357}
	tCollectGhost_Generator["Normal"][1165][4] = {MapId=1015,Posx=349,Posy=219}
	tCollectGhost_Generator["Normal"][1165][5] = {MapId=1015,Posx=828,Posy=792}
	tCollectGhost_Generator["Normal"][1166] = {}
	tCollectGhost_Generator["Normal"][1166][1] = {MapId=10137,Posx=224,Posy=445}
	tCollectGhost_Generator["Normal"][1166][2] = {MapId=10137,Posx=437,Posy=239}
	tCollectGhost_Generator["Normal"][1166][3] = {MapId=10137,Posx=518,Posy=721}
	tCollectGhost_Generator["Normal"][1166][4] = {MapId=10137,Posx=729,Posy=521}
	tCollectGhost_Generator["Normal"][1166][5] = {MapId=10137,Posx=384,Posy=561}
	tCollectGhost_Generator["Normal"][1167] = {}
	tCollectGhost_Generator["Normal"][1167][1] = {MapId=10137,Posx=363,Posy=625}
	tCollectGhost_Generator["Normal"][1167][2] = {MapId=10137,Posx=299,Posy=248}
	tCollectGhost_Generator["Normal"][1167][3] = {MapId=10137,Posx=625,Posy=431}
	tCollectGhost_Generator["Normal"][1167][4] = {MapId=10137,Posx=660,Posy=686}
	tCollectGhost_Generator["Normal"][1167][5] = {MapId=10137,Posx=441,Posy=502}
	tCollectGhost_Generator["Normal"][1168] = {}
	tCollectGhost_Generator["Normal"][1168][1] = {MapId=10250,Posx=880,Posy=1152}
	tCollectGhost_Generator["Normal"][1168][2] = {MapId=10250,Posx=639,Posy=895}
	tCollectGhost_Generator["Normal"][1168][3] = {MapId=10250,Posx=244,Posy=552}
	tCollectGhost_Generator["Normal"][1168][4] = {MapId=10250,Posx=965,Posy=971}
	tCollectGhost_Generator["Normal"][1168][5] = {MapId=10250,Posx=619,Posy=583}
	tCollectGhost_Generator["Normal"][1169] = {}
	tCollectGhost_Generator["Normal"][1169][1] = {MapId=10250,Posx=273 ,Posy=222}
	tCollectGhost_Generator["Normal"][1169][2] = {MapId=10250,Posx=448 ,Posy=119}
	tCollectGhost_Generator["Normal"][1169][3] = {MapId=10250,Posx=765 ,Posy=404}
	tCollectGhost_Generator["Normal"][1169][4] = {MapId=10250,Posx=926 ,Posy=768}
	tCollectGhost_Generator["Normal"][1169][5] = {MapId=10250,Posx=1211,Posy=967}
	tCollectGhost_Generator["NoGift"] = {}
	tCollectGhost_Generator["NoGift"][1161] = {}
	tCollectGhost_Generator["NoGift"][1161][1] = {MapId=10364,Posx=437,Posy=297}
	tCollectGhost_Generator["NoGift"][1161][2] = {MapId=10364,Posx=307,Posy=543}
	tCollectGhost_Generator["NoGift"][1161][3] = {MapId=10364,Posx=549,Posy=674}
	tCollectGhost_Generator["NoGift"][1161][4] = {MapId=10364,Posx=686,Posy=567}
	tCollectGhost_Generator["NoGift"][1161][5] = {MapId=10364,Posx=156,Posy=405}
	tCollectGhost_Generator["NoGift"][1162] = {}  
	tCollectGhost_Generator["NoGift"][1162][1] = {MapId=10365,Posx=81 ,Posy=393}
	tCollectGhost_Generator["NoGift"][1162][2] = {MapId=10365,Posx=332,Posy=410}
	tCollectGhost_Generator["NoGift"][1162][3] = {MapId=10365,Posx=706,Posy=430}
	tCollectGhost_Generator["NoGift"][1162][4] = {MapId=10365,Posx=641,Posy=770}
	tCollectGhost_Generator["NoGift"][1162][5] = {MapId=10365,Posx=434,Posy=127}
	tCollectGhost_Generator["NoGift"][1163] = {}  
	tCollectGhost_Generator["NoGift"][1163][1] = {MapId=10366,Posx=469,Posy=155}
	tCollectGhost_Generator["NoGift"][1163][2] = {MapId=10366,Posx=806,Posy=603}
	tCollectGhost_Generator["NoGift"][1163][3] = {MapId=10366,Posx=331,Posy=591}
	tCollectGhost_Generator["NoGift"][1163][4] = {MapId=10366,Posx=694,Posy=738}
	tCollectGhost_Generator["NoGift"][1163][5] = {MapId=10366,Posx=261,Posy=264}
	tCollectGhost_Generator["NoGift"][1164] = {}  
	tCollectGhost_Generator["NoGift"][1164][1] = {MapId=10367,Posx=941,Posy=664}
	tCollectGhost_Generator["NoGift"][1164][2] = {MapId=10367,Posx=630,Posy=642}
	tCollectGhost_Generator["NoGift"][1164][3] = {MapId=10367,Posx=408,Posy=206}
	tCollectGhost_Generator["NoGift"][1164][4] = {MapId=10367,Posx=336,Posy=397}
	tCollectGhost_Generator["NoGift"][1164][5] = {MapId=10367,Posx=151,Posy=338}
	tCollectGhost_Generator["NoGift"][1165] = {}  
	tCollectGhost_Generator["NoGift"][1165][1] = {MapId=10368,Posx=930,Posy=706}
	tCollectGhost_Generator["NoGift"][1165][2] = {MapId=10368,Posx=475,Posy=634}
	tCollectGhost_Generator["NoGift"][1165][3] = {MapId=10368,Posx=543,Posy=357}
	tCollectGhost_Generator["NoGift"][1165][4] = {MapId=10368,Posx=349,Posy=219}
	tCollectGhost_Generator["NoGift"][1165][5] = {MapId=10368,Posx=828,Posy=792}
	tCollectGhost_Generator["NoGift"][1166] = {}  
	tCollectGhost_Generator["NoGift"][1166][1] = {MapId=10479,Posx=221,Posy=450}
	tCollectGhost_Generator["NoGift"][1166][2] = {MapId=10479,Posx=312,Posy=551}
	tCollectGhost_Generator["NoGift"][1166][3] = {MapId=10479,Posx=388,Posy=361}
	tCollectGhost_Generator["NoGift"][1166][4] = {MapId=10479,Posx=221,Posy=305}
	tCollectGhost_Generator["NoGift"][1166][5] = {MapId=10479,Posx=474,Posy=382}
	tCollectGhost_Generator["NoGift"][1167] = {}  
	tCollectGhost_Generator["NoGift"][1167][1] = {MapId=10480,Posx=217,Posy=437}
	tCollectGhost_Generator["NoGift"][1167][2] = {MapId=10480,Posx=343,Posy=357}
	tCollectGhost_Generator["NoGift"][1167][3] = {MapId=10480,Posx=506,Posy=255}
	tCollectGhost_Generator["NoGift"][1167][4] = {MapId=10480,Posx=613,Posy=261}
	tCollectGhost_Generator["NoGift"][1167][5] = {MapId=10480,Posx=483,Posy=365}
	tCollectGhost_Generator["NoGift"][1168] = {}  
	tCollectGhost_Generator["NoGift"][1168][1] = {MapId=10481,Posx=123,Posy=429}
	tCollectGhost_Generator["NoGift"][1168][2] = {MapId=10481,Posx=209,Posy=410}
	tCollectGhost_Generator["NoGift"][1168][3] = {MapId=10481,Posx=334,Posy=473}
	tCollectGhost_Generator["NoGift"][1168][4] = {MapId=10481,Posx=231,Posy=315}
	tCollectGhost_Generator["NoGift"][1168][5] = {MapId=10481,Posx=347,Posy=327}
	tCollectGhost_Generator["NoGift"][1169] = {}  
	tCollectGhost_Generator["NoGift"][1169][1] = {MapId=10481,Posx=387,Posy=226}
	tCollectGhost_Generator["NoGift"][1169][2] = {MapId=10481,Posx=515,Posy=284}
	tCollectGhost_Generator["NoGift"][1169][3] = {MapId=10481,Posx=392,Posy=123}
	tCollectGhost_Generator["NoGift"][1169][4] = {MapId=10481,Posx=613,Posy=261}
	tCollectGhost_Generator["NoGift"][1169][5] = {MapId=10481,Posx=487,Posy=120}
	
local tCollectGhost_MoveNpc = {}
	--一星
	tCollectGhost_MoveNpc[24969]={}
	tCollectGhost_MoveNpc[24969]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24969]["NpcId"] = 24969
	tCollectGhost_MoveNpc[24969]["ActivetyMapId"] = 1002
	tCollectGhost_MoveNpc[24969]["ActivetyPosX"] = 351
	tCollectGhost_MoveNpc[24969]["ActivetyPosY"] = 446
	tCollectGhost_MoveNpc[24969]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24969]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24969]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc[24970]={}
	tCollectGhost_MoveNpc[24970]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24970]["NpcId"] = 24970
	tCollectGhost_MoveNpc[24970]["ActivetyMapId"] = 1002
	tCollectGhost_MoveNpc[24970]["ActivetyPosX"] = 295
	tCollectGhost_MoveNpc[24970]["ActivetyPosY"] = 500
	tCollectGhost_MoveNpc[24970]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24970]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24970]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc[24971]={}
	tCollectGhost_MoveNpc[24971]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24971]["NpcId"] = 24971
	tCollectGhost_MoveNpc[24971]["ActivetyMapId"] = 1002
	tCollectGhost_MoveNpc[24971]["ActivetyPosX"] = 382
	tCollectGhost_MoveNpc[24971]["ActivetyPosY"] = 530
	tCollectGhost_MoveNpc[24971]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24971]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24971]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc[24972]={}
	tCollectGhost_MoveNpc[24972]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24972]["NpcId"] = 24972
	tCollectGhost_MoveNpc[24972]["ActivetyMapId"] = 1002
	tCollectGhost_MoveNpc[24972]["ActivetyPosX"] = 395
	tCollectGhost_MoveNpc[24972]["ActivetyPosY"] = 391
	tCollectGhost_MoveNpc[24972]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24972]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24972]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc[24973]={}
	tCollectGhost_MoveNpc[24973]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24973]["NpcId"] = 24973
	tCollectGhost_MoveNpc[24973]["ActivetyMapId"] = 1002
	tCollectGhost_MoveNpc[24973]["ActivetyPosX"] = 295
	tCollectGhost_MoveNpc[24973]["ActivetyPosY"] = 369
	tCollectGhost_MoveNpc[24973]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24973]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24973]["AfterActivetyPosY"] = 100
	
	-- 二星
	tCollectGhost_MoveNpc[24974]={}
	tCollectGhost_MoveNpc[24974]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24974]["NpcId"] = 24974
	tCollectGhost_MoveNpc[24974]["ActivetyMapId"] = 1011
	tCollectGhost_MoveNpc[24974]["ActivetyPosX"] = 182
	tCollectGhost_MoveNpc[24974]["ActivetyPosY"] = 214
	tCollectGhost_MoveNpc[24974]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24974]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24974]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc[24975]={}
	tCollectGhost_MoveNpc[24975]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24975]["NpcId"] = 24975
	tCollectGhost_MoveNpc[24975]["ActivetyMapId"] = 1011
	tCollectGhost_MoveNpc[24975]["ActivetyPosX"] = 170
	tCollectGhost_MoveNpc[24975]["ActivetyPosY"] = 254
	tCollectGhost_MoveNpc[24975]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24975]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24975]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc[24976]={}
	tCollectGhost_MoveNpc[24976]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24976]["NpcId"] = 24976
	tCollectGhost_MoveNpc[24976]["ActivetyMapId"] = 1020
	tCollectGhost_MoveNpc[24976]["ActivetyPosX"] = 554
	tCollectGhost_MoveNpc[24976]["ActivetyPosY"] = 607
	tCollectGhost_MoveNpc[24976]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24976]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24976]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc[24977]={}
	tCollectGhost_MoveNpc[24977]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24977]["NpcId"] = 24977
	tCollectGhost_MoveNpc[24977]["ActivetyMapId"] = 1020
	tCollectGhost_MoveNpc[24977]["ActivetyPosX"] = 539
	tCollectGhost_MoveNpc[24977]["ActivetyPosY"] = 481
	tCollectGhost_MoveNpc[24977]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24977]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24977]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc[24978]={}
	tCollectGhost_MoveNpc[24978]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24978]["NpcId"] = 24978
	tCollectGhost_MoveNpc[24978]["ActivetyMapId"] = 1000
	tCollectGhost_MoveNpc[24978]["ActivetyPosX"] = 493
	tCollectGhost_MoveNpc[24978]["ActivetyPosY"] = 697
	tCollectGhost_MoveNpc[24978]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24978]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24978]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc[24979]={}
	tCollectGhost_MoveNpc[24979]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24979]["NpcId"] = 24979
	tCollectGhost_MoveNpc[24979]["ActivetyMapId"] = 1000
	tCollectGhost_MoveNpc[24979]["ActivetyPosX"] = 457
	tCollectGhost_MoveNpc[24979]["ActivetyPosY"] = 594
	tCollectGhost_MoveNpc[24979]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24979]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24979]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc[24980]={}
	tCollectGhost_MoveNpc[24980]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24980]["NpcId"] = 24980
	tCollectGhost_MoveNpc[24980]["ActivetyMapId"] = 1015
	tCollectGhost_MoveNpc[24980]["ActivetyPosX"] = 697
	tCollectGhost_MoveNpc[24980]["ActivetyPosY"] = 519
	tCollectGhost_MoveNpc[24980]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24980]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24980]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc[24981]={}
	tCollectGhost_MoveNpc[24981]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc[24981]["NpcId"] = 24981
	tCollectGhost_MoveNpc[24981]["ActivetyMapId"] = 1015
	tCollectGhost_MoveNpc[24981]["ActivetyPosX"] = 728
	tCollectGhost_MoveNpc[24981]["ActivetyPosY"] = 501
	tCollectGhost_MoveNpc[24981]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc[24981]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc[24981]["AfterActivetyPosY"] = 100
	
local tCollectGhost_MoveNpc_NoGift = {}
	--一星
	tCollectGhost_MoveNpc_NoGift[24969]={}
	tCollectGhost_MoveNpc_NoGift[24969]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24969]["NpcId"] = 24969
	tCollectGhost_MoveNpc_NoGift[24969]["ActivetyMapId"] = 1036
	tCollectGhost_MoveNpc_NoGift[24969]["ActivetyPosX"] = 220
	tCollectGhost_MoveNpc_NoGift[24969]["ActivetyPosY"] = 234
	tCollectGhost_MoveNpc_NoGift[24969]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24969]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24969]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc_NoGift[24970]={}
	tCollectGhost_MoveNpc_NoGift[24970]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24970]["NpcId"] = 24970
	tCollectGhost_MoveNpc_NoGift[24970]["ActivetyMapId"] = 1036
	tCollectGhost_MoveNpc_NoGift[24970]["ActivetyPosX"] = 277
	tCollectGhost_MoveNpc_NoGift[24970]["ActivetyPosY"] = 175
	tCollectGhost_MoveNpc_NoGift[24970]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24970]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24970]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc_NoGift[24971]={}
	tCollectGhost_MoveNpc_NoGift[24971]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24971]["NpcId"] = 24971
	tCollectGhost_MoveNpc_NoGift[24971]["ActivetyMapId"] = 1036
	tCollectGhost_MoveNpc_NoGift[24971]["ActivetyPosX"] = 280
	tCollectGhost_MoveNpc_NoGift[24971]["ActivetyPosY"] = 259
	tCollectGhost_MoveNpc_NoGift[24971]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24971]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24971]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc_NoGift[24972]={}
	tCollectGhost_MoveNpc_NoGift[24972]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24972]["NpcId"] = 24972
	tCollectGhost_MoveNpc_NoGift[24972]["ActivetyMapId"] = 1036
	tCollectGhost_MoveNpc_NoGift[24972]["ActivetyPosX"] = 284
	tCollectGhost_MoveNpc_NoGift[24972]["ActivetyPosY"] = 284
	tCollectGhost_MoveNpc_NoGift[24972]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24972]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24972]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc_NoGift[24973]={}
	tCollectGhost_MoveNpc_NoGift[24973]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24973]["NpcId"] = 24973
	tCollectGhost_MoveNpc_NoGift[24973]["ActivetyMapId"] = 1036
	tCollectGhost_MoveNpc_NoGift[24973]["ActivetyPosX"] = 256
	tCollectGhost_MoveNpc_NoGift[24973]["ActivetyPosY"] = 285
	tCollectGhost_MoveNpc_NoGift[24973]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24973]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24973]["AfterActivetyPosY"] = 100
	
	-- 二星
	tCollectGhost_MoveNpc_NoGift[24974]={}
	tCollectGhost_MoveNpc_NoGift[24974]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24974]["NpcId"] = 24974
	tCollectGhost_MoveNpc_NoGift[24974]["ActivetyMapId"] = 10365
	tCollectGhost_MoveNpc_NoGift[24974]["ActivetyPosX"] = 170
	tCollectGhost_MoveNpc_NoGift[24974]["ActivetyPosY"] = 254
	tCollectGhost_MoveNpc_NoGift[24974]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24974]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24974]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc_NoGift[24975]={}
	tCollectGhost_MoveNpc_NoGift[24975]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24975]["NpcId"] = 24975
	tCollectGhost_MoveNpc_NoGift[24975]["ActivetyMapId"] = 10365
	tCollectGhost_MoveNpc_NoGift[24975]["ActivetyPosX"] = 182
	tCollectGhost_MoveNpc_NoGift[24975]["ActivetyPosY"] = 214
	tCollectGhost_MoveNpc_NoGift[24975]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24975]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24975]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc_NoGift[24976]={}
	tCollectGhost_MoveNpc_NoGift[24976]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24976]["NpcId"] = 24976
	tCollectGhost_MoveNpc_NoGift[24976]["ActivetyMapId"] = 10366
	tCollectGhost_MoveNpc_NoGift[24976]["ActivetyPosX"] = 554
	tCollectGhost_MoveNpc_NoGift[24976]["ActivetyPosY"] = 607
	tCollectGhost_MoveNpc_NoGift[24976]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24976]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24976]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc_NoGift[24977]={}
	tCollectGhost_MoveNpc_NoGift[24977]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24977]["NpcId"] = 24977
	tCollectGhost_MoveNpc_NoGift[24977]["ActivetyMapId"] = 10366
	tCollectGhost_MoveNpc_NoGift[24977]["ActivetyPosX"] = 539
	tCollectGhost_MoveNpc_NoGift[24977]["ActivetyPosY"] = 481
	tCollectGhost_MoveNpc_NoGift[24977]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24977]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24977]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc_NoGift[24978]={}
	tCollectGhost_MoveNpc_NoGift[24978]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24978]["NpcId"] = 24978
	tCollectGhost_MoveNpc_NoGift[24978]["ActivetyMapId"] = 10367
	tCollectGhost_MoveNpc_NoGift[24978]["ActivetyPosX"] = 493
	tCollectGhost_MoveNpc_NoGift[24978]["ActivetyPosY"] = 697
	tCollectGhost_MoveNpc_NoGift[24978]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24978]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24978]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc_NoGift[24979]={}
	tCollectGhost_MoveNpc_NoGift[24979]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24979]["NpcId"] = 24979
	tCollectGhost_MoveNpc_NoGift[24979]["ActivetyMapId"] = 10367
	tCollectGhost_MoveNpc_NoGift[24979]["ActivetyPosX"] = 457
	tCollectGhost_MoveNpc_NoGift[24979]["ActivetyPosY"] = 594
	tCollectGhost_MoveNpc_NoGift[24979]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24979]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24979]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc_NoGift[24980]={}
	tCollectGhost_MoveNpc_NoGift[24980]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24980]["NpcId"] = 24980
	tCollectGhost_MoveNpc_NoGift[24980]["ActivetyMapId"] = 10368
	tCollectGhost_MoveNpc_NoGift[24980]["ActivetyPosX"] = 697
	tCollectGhost_MoveNpc_NoGift[24980]["ActivetyPosY"] = 519
	tCollectGhost_MoveNpc_NoGift[24980]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24980]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24980]["AfterActivetyPosY"] = 100
	
	tCollectGhost_MoveNpc_NoGift[24981]={}
	tCollectGhost_MoveNpc_NoGift[24981]["ActivetyTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_MoveNpc_NoGift[24981]["NpcId"] = 24981
	tCollectGhost_MoveNpc_NoGift[24981]["ActivetyMapId"] = 10368
	tCollectGhost_MoveNpc_NoGift[24981]["ActivetyPosX"] = 728
	tCollectGhost_MoveNpc_NoGift[24981]["ActivetyPosY"] = 501
	tCollectGhost_MoveNpc_NoGift[24981]["AfterActivetyMapId"] = 5000
	tCollectGhost_MoveNpc_NoGift[24981]["AfterActivetyPosX"] = 100
	tCollectGhost_MoveNpc_NoGift[24981]["AfterActivetyPosY"] = 100
	
local tCollectGhost_ThreeStarMonsterFace = {}
	tCollectGhost_ThreeStarMonsterFace[1161] = 23346
	tCollectGhost_ThreeStarMonsterFace[1162] = 23356
	tCollectGhost_ThreeStarMonsterFace[1163] = 23366
	tCollectGhost_ThreeStarMonsterFace[1164] = 23376
	tCollectGhost_ThreeStarMonsterFace[1165] = 23386
	tCollectGhost_ThreeStarMonsterFace[1166] = 23396
	tCollectGhost_ThreeStarMonsterFace[1167] = 23406
	tCollectGhost_ThreeStarMonsterFace[1168] = 23416
	tCollectGhost_ThreeStarMonsterFace[1169] = 23426
	
	
	-- 娃娃对应鬼怪NPC
local tCollectGhost_DollToId = {}
	tCollectGhost_DollToId[3600169] = 25004
	tCollectGhost_DollToId[3600170] = 25005
	tCollectGhost_DollToId[3600171] = 25006
	tCollectGhost_DollToId[3600172] = 25007
	
	-- 鬼怪NPC对应娃娃
local tCollectGhost_IdToDoll = {}
	tCollectGhost_IdToDoll[25004] = 3600169
	tCollectGhost_IdToDoll[25005] = 3600170
	tCollectGhost_IdToDoll[25006] = 3600171
	tCollectGhost_IdToDoll[25007] = 3600172
	
	-- 鬼怪npc外形转id
local tCollectGhost_NpcLookfaceToId = {}
	tCollectGhost_NpcLookfaceToId[23346] = 24982
	tCollectGhost_NpcLookfaceToId[23356] = 24983
	tCollectGhost_NpcLookfaceToId[23366] = 24984
	tCollectGhost_NpcLookfaceToId[23376] = 24985
	tCollectGhost_NpcLookfaceToId[23386] = 24986
	tCollectGhost_NpcLookfaceToId[23396] = 24987
	tCollectGhost_NpcLookfaceToId[23406] = 24988
	tCollectGhost_NpcLookfaceToId[23416] = 24989
	tCollectGhost_NpcLookfaceToId[23426] = 24990
	
	
-- 星级对应的NPCId
local tCollectGhost_NpcId = {}
	tCollectGhost_NpcId[1] = {24969,24970,24971,24972,24973}
	tCollectGhost_NpcId[2] = {24974,24975,24976,24977,24978,24979,24980,24981}
	tCollectGhost_NpcId[3] = {24982,24983,24984,24985,24986,24987,24988,24989,24990}
	tCollectGhost_NpcId[4] = {24991,24992,25000,25001,25002}
	tCollectGhost_NpcId[5] = {25004,25005,25006,25007}
	
-- 提升收服成功率
local tCollectGhost_UpCatchStc = {EventType=206,DataType=15}
-- 完成任务次数，索引npcid，Data为星级
local tCollectGhost_FinishTaskStc = {}
	-- 一星
	tCollectGhost_FinishTaskStc[24969] = {EventType=206,DataType=29,Star=1}
	tCollectGhost_FinishTaskStc[24970] = {EventType=206,DataType=30,Star=1}
	tCollectGhost_FinishTaskStc[24971] = {EventType=206,DataType=31,Star=1}
	tCollectGhost_FinishTaskStc[24972] = {EventType=206,DataType=32,Star=1}
	tCollectGhost_FinishTaskStc[24973] = {EventType=206,DataType=33,Star=1}
	-- 二星
	tCollectGhost_FinishTaskStc[24974] = {EventType=206,DataType=34,Star=2}
	tCollectGhost_FinishTaskStc[24975] = {EventType=206,DataType=35,Star=2}
	tCollectGhost_FinishTaskStc[24976] = {EventType=206,DataType=36,Star=2}
	tCollectGhost_FinishTaskStc[24977] = {EventType=206,DataType=37,Star=2}
	tCollectGhost_FinishTaskStc[24978] = {EventType=206,DataType=38,Star=2}
	tCollectGhost_FinishTaskStc[24979] = {EventType=206,DataType=39,Star=2}
	tCollectGhost_FinishTaskStc[24980] = {EventType=206,DataType=40,Star=2}
	tCollectGhost_FinishTaskStc[24981] = {EventType=206,DataType=41,Star=2}
	-- 三星
	tCollectGhost_FinishTaskStc[24982] = {EventType=206,DataType=42,Star=3}
	tCollectGhost_FinishTaskStc[24983] = {EventType=206,DataType=43,Star=3}
	tCollectGhost_FinishTaskStc[24984] = {EventType=206,DataType=44,Star=3}
	tCollectGhost_FinishTaskStc[24985] = {EventType=206,DataType=45,Star=3}
	tCollectGhost_FinishTaskStc[24986] = {EventType=206,DataType=46,Star=3}
	tCollectGhost_FinishTaskStc[24987] = {EventType=206,DataType=47,Star=3}
	tCollectGhost_FinishTaskStc[24988] = {EventType=206,DataType=48,Star=3}
	tCollectGhost_FinishTaskStc[24989] = {EventType=206,DataType=49,Star=3}
	tCollectGhost_FinishTaskStc[24990] = {EventType=206,DataType=50,Star=3}
	-- 四星
	tCollectGhost_FinishTaskStc[24991] = {EventType=206,DataType=51,Star=4}
	tCollectGhost_FinishTaskStc[24992] = {EventType=206,DataType=52,Star=4}
	tCollectGhost_FinishTaskStc[25000] = {EventType=206,DataType=53,Star=4}
	tCollectGhost_FinishTaskStc[25001] = {EventType=206,DataType=54,Star=4}
	tCollectGhost_FinishTaskStc[25002] = {EventType=206,DataType=55,Star=4}
	-- tCollectGhost_FinishTaskStc[25003] = {EventType=206,DataType=56,Star=4}
	-- 五星
	tCollectGhost_FinishTaskStc[25004] = {EventType=206,DataType=57,Star=5}
	tCollectGhost_FinishTaskStc[25005] = {EventType=206,DataType=58,Star=5}
	tCollectGhost_FinishTaskStc[25006] = {EventType=206,DataType=59,Star=5}
	tCollectGhost_FinishTaskStc[25007] = {EventType=206,DataType=60,Star=5}
	
	-- 临时表记录分享时间
local tCollectGhost_ShareTime = {}
	tCollectGhost_ShareTime[24974] = 0
	tCollectGhost_ShareTime[24975] = 0
	tCollectGhost_ShareTime[24976] = 0
	tCollectGhost_ShareTime[24977] = 0
	tCollectGhost_ShareTime[24978] = 0
	tCollectGhost_ShareTime[24979] = 0
	tCollectGhost_ShareTime[24980] = 0
	tCollectGhost_ShareTime[24981] = 0
	tCollectGhost_ShareTime[24982] = 0
	tCollectGhost_ShareTime[24983] = 0
	tCollectGhost_ShareTime[24984] = 0
	tCollectGhost_ShareTime[24985] = 0
	tCollectGhost_ShareTime[24986] = 0
	tCollectGhost_ShareTime[24987] = 0
	tCollectGhost_ShareTime[24988] = 0
	tCollectGhost_ShareTime[24989] = 0
	tCollectGhost_ShareTime[24990] = 0
	
	-- 临时表3星怪物出现时间
local tCollectGhost_RefreshTime = {}
	tCollectGhost_RefreshTime[24982] = 0
	tCollectGhost_RefreshTime[24983] = 0
	tCollectGhost_RefreshTime[24984] = 0
	tCollectGhost_RefreshTime[24985] = 0
	tCollectGhost_RefreshTime[24986] = 0
	tCollectGhost_RefreshTime[24987] = 0
	tCollectGhost_RefreshTime[24988] = 0
	tCollectGhost_RefreshTime[24989] = 0
	tCollectGhost_RefreshTime[24990] = 0
	
	-- 临时表4星怪物出现时间
local tCollectGhost_4StarRefreshTime = {}
	tCollectGhost_4StarRefreshTime[24991] = 0
	tCollectGhost_4StarRefreshTime[24992] = 0
	tCollectGhost_4StarRefreshTime[25000] = 0
	tCollectGhost_4StarRefreshTime[25001] = 0
	tCollectGhost_4StarRefreshTime[25002] = 0
	
-- 领取奖励次数
local tCollectGhost_RewardStc = {}
	tCollectGhost_RewardStc[1] = {EventType=206,DataType=61,Times=5}
	tCollectGhost_RewardStc[2] = {EventType=206,DataType=62,Times=4}
	tCollectGhost_RewardStc[3] = {EventType=206,DataType=63,Times=3}
	tCollectGhost_RewardStc[4] = {EventType=206,DataType=64,Times=2}
	tCollectGhost_RewardStc[5] = {EventType=206,DataType=65,Times=1}
-- NPC坐标
local tCollectGhost_NpcPos = {}
	
local tCollectGhost_Reward = {}
	-- ===上交糖果给一星鬼怪
	-- ===索引: tCollectGhost_Reward[1]
	-- ===删除:3600167,3
	tCollectGhost_Reward[1] = {}
	tCollectGhost_Reward[1]["LogId"] = 12001668
	tCollectGhost_Reward[1]["DeleteItem"] = {}
	tCollectGhost_Reward[1]["DeleteItem"][1] = {}
	tCollectGhost_Reward[1]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCollectGhost_Reward[1]["DeleteItem"][1]["ItemNum"] = 3
	tCollectGhost_Reward[1]["RewardItem"] = {}
	tCollectGhost_Reward[1]["RewardItem"][1] = {}
	tCollectGhost_Reward[1]["RewardItem"][1]["Id"] = 3313807 -- 1星鬼怪礼包[3313807][属性:9][叠加:1][金币:0], 【表格】一星鬼怪礼包
	tCollectGhost_Reward[1]["RewardItem"][1]["Attr"] = "0 1" -- 1星鬼怪礼包*1
	tCollectGhost_Reward[1]["RewardEffect"] = {}
	tCollectGhost_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_Reward[1]["RewardEffect"]["Effect"] = "angelwing"

	tCollectGhost_Reward[1]["EventType"] = 206
	tCollectGhost_Reward[1]["DataType"] = 61
	tCollectGhost_Reward[1]["RewardData"] = 9999 ----每天限制的次数
	tCollectGhost_Reward[1]["RewardDelay"] = 1 ---掩码的间隔时间
	tCollectGhost_Reward[1]["RewardTimeType"] = 4 --掩码的间隔时间类型


	tCollectGhost_Reward[2] = {}
	-- ===上交糖果给二星鬼怪
	-- ===索引: tCollectGhost_Reward[2]
	-- ===删除:3600167,10
	tCollectGhost_Reward[2]["LogId"] = 12001668
	tCollectGhost_Reward[2]["DeleteItem"] = {}
	tCollectGhost_Reward[2]["DeleteItem"][1] = {}
	tCollectGhost_Reward[2]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCollectGhost_Reward[2]["DeleteItem"][1]["ItemNum"] = 10
	tCollectGhost_Reward[2]["RewardItem"] = {}
	tCollectGhost_Reward[2]["RewardItem"][1] = {}
	tCollectGhost_Reward[2]["RewardItem"][1]["Id"] = 3313808 -- 2星鬼怪礼包[3313808][属性:9][叠加:1][金币:0], 【表格】二星鬼怪礼包
	tCollectGhost_Reward[2]["RewardItem"][1]["Attr"] = "0 1" -- 2星鬼怪礼包*1
	tCollectGhost_Reward[2]["RewardEffect"] = {}
	tCollectGhost_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	tCollectGhost_Reward[2]["EventType"] = 206
	tCollectGhost_Reward[2]["DataType"] = 62
	tCollectGhost_Reward[2]["RewardData"] = 9999 ----每天限制的次数
	tCollectGhost_Reward[2]["RewardDelay"] = 1 ---掩码的间隔时间
	tCollectGhost_Reward[2]["RewardTimeType"] = 4 --掩码的间隔时间类型


	tCollectGhost_Reward[3] = {}
	-- ===上交糖果给三星鬼怪
	-- ===索引: tCollectGhost_Reward[3]
	-- ===删除:3600167,30
	tCollectGhost_Reward[3]["LogId"] = 12001668
	tCollectGhost_Reward[3]["DeleteItem"] = {}
	tCollectGhost_Reward[3]["DeleteItem"][1] = {}
	tCollectGhost_Reward[3]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCollectGhost_Reward[3]["DeleteItem"][1]["ItemNum"] = 30
	tCollectGhost_Reward[3]["RewardItem"] = {}
	tCollectGhost_Reward[3]["RewardItem"][1] = {}
	tCollectGhost_Reward[3]["RewardItem"][1]["Id"] = 3313809 -- 3星鬼怪礼包[3313809][属性:9][叠加:1][金币:0], 【表格】三星鬼怪礼包
	tCollectGhost_Reward[3]["RewardItem"][1]["Attr"] = "0 1" -- 3星鬼怪礼包*1
	tCollectGhost_Reward[3]["RewardEffect"] = {}
	tCollectGhost_Reward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_Reward[3]["RewardEffect"]["Effect"] = "angelwing"
	tCollectGhost_Reward[3]["EventType"] = 206
	tCollectGhost_Reward[3]["DataType"] = 63
	tCollectGhost_Reward[3]["RewardData"] = 9999 ----每天限制的次数
	tCollectGhost_Reward[3]["RewardDelay"] = 1 ---掩码的间隔时间
	tCollectGhost_Reward[3]["RewardTimeType"] = 4 --掩码的间隔时间类型


	tCollectGhost_Reward[4] = {}
	-- ===收服成功给四星鬼怪礼包
	-- ===索引: tCollectGhost_Reward[4][1]
	-- ===删除:3600167,5
	tCollectGhost_Reward[4][1] = {}
	tCollectGhost_Reward[4][1]["LogId"] = 12001668
	tCollectGhost_Reward[4][1]["DeleteItem"] = {}
	tCollectGhost_Reward[4][1]["DeleteItem"][1] = {}
	tCollectGhost_Reward[4][1]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCollectGhost_Reward[4][1]["DeleteItem"][1]["ItemNum"] = 5
	tCollectGhost_Reward[4][1]["RewardItem"] = {}
	tCollectGhost_Reward[4][1]["RewardItem"][1] = {}
	tCollectGhost_Reward[4][1]["RewardItem"][1]["Id"] = 3313810 -- 4星鬼怪礼包[3313810][属性:9][叠加:1][金币:0], 【表格】四星鬼怪礼包
	tCollectGhost_Reward[4][1]["RewardItem"][1]["Attr"] = "0 1" -- 4星鬼怪礼包*1
	tCollectGhost_Reward[4][1]["RewardEffect"] = {}
	tCollectGhost_Reward[4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_Reward[4][1]["RewardEffect"]["Effect"] = "angelwing"
	tCollectGhost_Reward[4][1]["EventType"] = 206
	tCollectGhost_Reward[4][1]["DataType"] = 64
	tCollectGhost_Reward[4][1]["RewardData"] = 9999 ----每天限制的次数
	tCollectGhost_Reward[4][1]["RewardDelay"] = 1 ---掩码的间隔时间
	tCollectGhost_Reward[4][1]["RewardTimeType"] = 4 --掩码的间隔时间类型


	tCollectGhost_Reward[4][2] = {}
	-- ===收服四星鬼怪失败
	-- ===索引: tCollectGhost_Reward[4][2]
	-- ===删除:3600167,5
	tCollectGhost_Reward[4][2]["LogId"] = 12001668
	tCollectGhost_Reward[4][2]["DeleteItem"] = {}
	tCollectGhost_Reward[4][2]["DeleteItem"][1] = {}
	tCollectGhost_Reward[4][2]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCollectGhost_Reward[4][2]["DeleteItem"][1]["ItemNum"] = 5
	tCollectGhost_Reward[4][2]["RewardItem"] = {}
	tCollectGhost_Reward[4][2]["RewardEffect"] = {}
	tCollectGhost_Reward[4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_Reward[4][2]["RewardEffect"]["Effect"] = "angelwing"


	tCollectGhost_Reward[5] = {}
	-- ===上交糖果给五星鬼怪
	-- ===索引: tCollectGhost_Reward[5]
	-- ===删除:3600167,3
	tCollectGhost_Reward[5]["LogId"] = 12001668
	tCollectGhost_Reward[5]["DeleteItem"] = {}
	tCollectGhost_Reward[5]["DeleteItem"][1] = {}
	tCollectGhost_Reward[5]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCollectGhost_Reward[5]["DeleteItem"][1]["ItemNum"] = 3
	tCollectGhost_Reward[5]["RewardItem"] = {}
	tCollectGhost_Reward[5]["RewardItem"][1] = {}
	tCollectGhost_Reward[5]["RewardItem"][1]["Id"] = 3600168 -- 5星鬼怪礼包[3600168][属性:137][叠加:1][金币:0], 【表格】五星鬼怪礼包
	tCollectGhost_Reward[5]["RewardItem"][1]["Attr"] = "0 1" -- 5星鬼怪礼包*1
	tCollectGhost_Reward[5]["RewardEffect"] = {}
	tCollectGhost_Reward[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_Reward[5]["RewardEffect"]["Effect"] = "angelwing"
	-- tCollectGhost_Reward[5]["EventType"] = 206
	-- tCollectGhost_Reward[5]["DataType"] = 65
	-- tCollectGhost_Reward[5]["RewardData"] = 9999 ----每天限制的次数
	-- tCollectGhost_Reward[5]["RewardDelay"] = 1 ---掩码的间隔时间
	-- tCollectGhost_Reward[5]["RewardTimeType"] = 4 --掩码的间隔时间类型
	
	
local tCollectGhost_RewardInCity = {}
	-- ===城内上交糖果给一星鬼怪
	-- ===索引: tCollectGhost_RewardInCity[1]
	-- ===删除:3600167,5
	tCollectGhost_RewardInCity[1] = {}
	tCollectGhost_RewardInCity[1]["LogId"] = 12001668
	tCollectGhost_RewardInCity[1]["DeleteItem"] = {}
	tCollectGhost_RewardInCity[1]["DeleteItem"][1] = {}
	tCollectGhost_RewardInCity[1]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCollectGhost_RewardInCity[1]["DeleteItem"][1]["ItemNum"] = 3
	tCollectGhost_RewardInCity[1]["RewardItem"] = {}
	tCollectGhost_RewardInCity[1]["RewardItem"][1] = {}
	tCollectGhost_RewardInCity[1]["RewardItem"][1]["Id"] = 3313807 -- 1星鬼怪礼包[3313807][属性:9][叠加:1][金币:0], 【表格】一星鬼怪礼包
	tCollectGhost_RewardInCity[1]["RewardItem"][1]["Attr"] = "0 1" -- 1星鬼怪礼包*1
	tCollectGhost_RewardInCity[1]["RewardEffect"] = {}
	tCollectGhost_RewardInCity[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_RewardInCity[1]["RewardEffect"]["Effect"] = "angelwing"


	tCollectGhost_RewardInCity[2] = {}
	-- ===城内上交糖果给二星鬼怪
	-- ===索引: tCollectGhost_RewardInCity[2]
	-- ===删除:3600167,50
	tCollectGhost_RewardInCity[2]["LogId"] = 12001668
	tCollectGhost_RewardInCity[2]["DeleteItem"] = {}
	tCollectGhost_RewardInCity[2]["DeleteItem"][1] = {}
	tCollectGhost_RewardInCity[2]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCollectGhost_RewardInCity[2]["DeleteItem"][1]["ItemNum"] = 50
	tCollectGhost_RewardInCity[2]["RewardItem"] = {}
	tCollectGhost_RewardInCity[2]["RewardItem"][1] = {}
	tCollectGhost_RewardInCity[2]["RewardItem"][1]["Id"] = 3313808 -- 2星鬼怪礼包[3313808][属性:9][叠加:1][金币:0], 【表格】二星鬼怪礼包
	tCollectGhost_RewardInCity[2]["RewardItem"][1]["Attr"] = "0 1" -- 2星鬼怪礼包*1
	tCollectGhost_RewardInCity[2]["RewardEffect"] = {}
	tCollectGhost_RewardInCity[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_RewardInCity[2]["RewardEffect"]["Effect"] = "angelwing"
	tCollectGhost_RewardInCity[2]["EventType"] = 206
	tCollectGhost_RewardInCity[2]["DataType"] = 62
	tCollectGhost_RewardInCity[2]["RewardData"] = 9999 ----每天限制的次数
	tCollectGhost_RewardInCity[2]["RewardDelay"] = 1 ---掩码的间隔时间
	tCollectGhost_RewardInCity[2]["RewardTimeType"] = 4 --掩码的间隔时间类型


	tCollectGhost_RewardInCity[3] = {}
	-- ===城内上交糖果给三星鬼怪
	-- ===索引: tCollectGhost_RewardInCity[3]
	-- ===删除:3600167,100
	tCollectGhost_RewardInCity[3]["LogId"] = 12001668
	tCollectGhost_RewardInCity[3]["DeleteItem"] = {}
	tCollectGhost_RewardInCity[3]["DeleteItem"][1] = {}
	tCollectGhost_RewardInCity[3]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCollectGhost_RewardInCity[3]["DeleteItem"][1]["ItemNum"] = 100
	tCollectGhost_RewardInCity[3]["RewardItem"] = {}
	tCollectGhost_RewardInCity[3]["RewardItem"][1] = {}
	tCollectGhost_RewardInCity[3]["RewardItem"][1]["Id"] = 3313809 -- 3星鬼怪礼包[3313809][属性:9][叠加:1][金币:0], 【表格】三星鬼怪礼包
	tCollectGhost_RewardInCity[3]["RewardItem"][1]["Attr"] = "0 1" -- 3星鬼怪礼包*1
	tCollectGhost_RewardInCity[3]["RewardEffect"] = {}
	tCollectGhost_RewardInCity[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_RewardInCity[3]["RewardEffect"]["Effect"] = "angelwing"
	tCollectGhost_RewardInCity[3]["EventType"] = 206
	tCollectGhost_RewardInCity[3]["DataType"] = 63
	tCollectGhost_RewardInCity[3]["RewardData"] = 9999 ----每天限制的次数
	tCollectGhost_RewardInCity[3]["RewardDelay"] = 1 ---掩码的间隔时间
	tCollectGhost_RewardInCity[3]["RewardTimeType"] = 4 --掩码的间隔时间类型


	tCollectGhost_RewardInCity[4] = {}
	-- ===城内上交糖果给四星鬼怪
	-- ===索引: tCollectGhost_RewardInCity[4]
	-- ===删除:3600167,300
	tCollectGhost_RewardInCity[4]["LogId"] = 12001668
	tCollectGhost_RewardInCity[4]["DeleteItem"] = {}
	tCollectGhost_RewardInCity[4]["DeleteItem"][1] = {}
	tCollectGhost_RewardInCity[4]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCollectGhost_RewardInCity[4]["DeleteItem"][1]["ItemNum"] = 300
	tCollectGhost_RewardInCity[4]["RewardItem"] = {}
	tCollectGhost_RewardInCity[4]["RewardItem"][1] = {}
	tCollectGhost_RewardInCity[4]["RewardItem"][1]["Id"] = 3313810 -- 4星鬼怪礼包[3313810][属性:9][叠加:1][金币:0], 【表格】四星鬼怪礼包
	tCollectGhost_RewardInCity[4]["RewardItem"][1]["Attr"] = "0 1" -- 4星鬼怪礼包*1
	tCollectGhost_RewardInCity[4]["RewardEffect"] = {}
	tCollectGhost_RewardInCity[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_RewardInCity[4]["RewardEffect"]["Effect"] = "angelwing"
	tCollectGhost_RewardInCity[4]["EventType"] = 206
	tCollectGhost_RewardInCity[4]["DataType"] = 64
	tCollectGhost_RewardInCity[4]["RewardData"] = 9999 ----每天限制的次数
	tCollectGhost_RewardInCity[4]["RewardDelay"] = 1 ---掩码的间隔时间
	tCollectGhost_RewardInCity[4]["RewardTimeType"] = 4 --掩码的间隔时间类型


	tCollectGhost_RewardInCity[5] = {}
	-- ===城内上交糖果给五星鬼怪
	-- ===索引: tCollectGhost_RewardInCity[5]
	-- ===删除:3600167,500
	tCollectGhost_RewardInCity[5]["LogId"] = 12001668
	tCollectGhost_RewardInCity[5]["DeleteItem"] = {}
	tCollectGhost_RewardInCity[5]["DeleteItem"][1] = {}
	tCollectGhost_RewardInCity[5]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCollectGhost_RewardInCity[5]["DeleteItem"][1]["ItemNum"] = 500
	tCollectGhost_RewardInCity[5]["RewardItem"] = {}
	tCollectGhost_RewardInCity[5]["RewardItem"][1] = {}
	tCollectGhost_RewardInCity[5]["RewardItem"][1]["Id"] = 3600168 -- 5星鬼怪礼包[3600168][属性:137][叠加:1][金币:0], 【表格】五星鬼怪礼包
	tCollectGhost_RewardInCity[5]["RewardItem"][1]["Attr"] = "0 1" -- 5星鬼怪礼包*1
	tCollectGhost_RewardInCity[5]["RewardEffect"] = {}
	tCollectGhost_RewardInCity[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_RewardInCity[5]["RewardEffect"]["Effect"] = "angelwing"
	
	local tCollectGhost_GetDoll = {}
	-- ===跨服获得娃娃
	-- ===索引: tCollectGhost_GetDoll[3600169]
	tCollectGhost_GetDoll[3600169] = {}
	tCollectGhost_GetDoll[3600169]["LogId"] = 12001668
	tCollectGhost_GetDoll[3600169]["RewardItem"] = {}
	tCollectGhost_GetDoll[3600169]["RewardItem"][1] = {}
	tCollectGhost_GetDoll[3600169]["RewardItem"][1]["Id"] = 3600169 -- 鬼怪娃娃[3600169][属性:137][叠加:1000][金币:0], 【表格】五星鬼怪娃娃
	tCollectGhost_GetDoll[3600169]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 鬼怪娃娃*1
	tCollectGhost_GetDoll[3600169]["RewardEffect"] = {}
	tCollectGhost_GetDoll[3600169]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_GetDoll[3600169]["RewardEffect"]["Effect"] = "angelwing"


	tCollectGhost_GetDoll[3600170] = {}
	-- ===跨服获得娃娃
	-- ===索引: tCollectGhost_GetDoll[3600170]
	tCollectGhost_GetDoll[3600170]["LogId"] = 12001668
	tCollectGhost_GetDoll[3600170]["RewardItem"] = {}
	tCollectGhost_GetDoll[3600170]["RewardItem"][1] = {}
	tCollectGhost_GetDoll[3600170]["RewardItem"][1]["Id"] = 3600170 -- 鬼怪娃娃[3600170][属性:137][叠加:1000][金币:0], 【表格】五星鬼怪娃娃
	tCollectGhost_GetDoll[3600170]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 鬼怪娃娃*1
	tCollectGhost_GetDoll[3600170]["RewardEffect"] = {}
	tCollectGhost_GetDoll[3600170]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_GetDoll[3600170]["RewardEffect"]["Effect"] = "angelwing"


	tCollectGhost_GetDoll[3600171] = {}
	-- ===跨服获得娃娃
	-- ===索引: tCollectGhost_GetDoll[3600171]
	tCollectGhost_GetDoll[3600171]["LogId"] = 12001668
	tCollectGhost_GetDoll[3600171]["RewardItem"] = {}
	tCollectGhost_GetDoll[3600171]["RewardItem"][1] = {}
	tCollectGhost_GetDoll[3600171]["RewardItem"][1]["Id"] = 3600171 -- 鬼怪娃娃[3600171][属性:137][叠加:1000][金币:0], 【表格】五星鬼怪娃娃
	tCollectGhost_GetDoll[3600171]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 鬼怪娃娃*1
	tCollectGhost_GetDoll[3600171]["RewardEffect"] = {}
	tCollectGhost_GetDoll[3600171]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_GetDoll[3600171]["RewardEffect"]["Effect"] = "angelwing"


	tCollectGhost_GetDoll[3600172] = {}
	-- ===跨服获得娃娃
	-- ===索引: tCollectGhost_GetDoll[3600172]
	tCollectGhost_GetDoll[3600172]["LogId"] = 12001668
	tCollectGhost_GetDoll[3600172]["RewardItem"] = {}
	tCollectGhost_GetDoll[3600172]["RewardItem"][1] = {}
	tCollectGhost_GetDoll[3600172]["RewardItem"][1]["Id"] = 3600172 -- 鬼怪娃娃[3600172][属性:137][叠加:1000][金币:0], 【表格】五星鬼怪娃娃
	tCollectGhost_GetDoll[3600172]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 鬼怪娃娃*1
	tCollectGhost_GetDoll[3600172]["RewardEffect"] = {}
	tCollectGhost_GetDoll[3600172]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_GetDoll[3600172]["RewardEffect"]["Effect"] = "angelwing"


local tCollectGhost_DelDoll = {}
	-- ===删除娃娃获得好感度
	-- ===索引: tCollectGhost_DelDoll[3600169]
	-- ===删除:3600169,1
	tCollectGhost_DelDoll[3600169] = {}
	tCollectGhost_DelDoll[3600169]["LogId"] = 12001668
	tCollectGhost_DelDoll[3600169]["DeleteItem"] = {}
	tCollectGhost_DelDoll[3600169]["DeleteItem"][1] = {}
	tCollectGhost_DelDoll[3600169]["DeleteItem"][1]["Id"] = 3600169 -- 【库】鬼怪娃娃[属性:137]
	tCollectGhost_DelDoll[3600169]["RewardItem"] = {}
	tCollectGhost_DelDoll[3600169]["RewardEffect"] = {}
	tCollectGhost_DelDoll[3600169]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_DelDoll[3600169]["RewardEffect"]["Effect"] = "angelwing"


	tCollectGhost_DelDoll[3600170] = {}
	-- ===删除娃娃获得好感度
	-- ===索引: tCollectGhost_DelDoll[3600170]
	-- ===删除:3600170,1
	tCollectGhost_DelDoll[3600170]["LogId"] = 12001668
	tCollectGhost_DelDoll[3600170]["DeleteItem"] = {}
	tCollectGhost_DelDoll[3600170]["DeleteItem"][1] = {}
	tCollectGhost_DelDoll[3600170]["DeleteItem"][1]["Id"] = 3600170 -- 【库】鬼怪娃娃[属性:137]
	tCollectGhost_DelDoll[3600170]["RewardItem"] = {}
	tCollectGhost_DelDoll[3600170]["RewardEffect"] = {}
	tCollectGhost_DelDoll[3600170]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_DelDoll[3600170]["RewardEffect"]["Effect"] = "angelwing"


	tCollectGhost_DelDoll[3600171] = {}
	-- ===删除娃娃获得好感度
	-- ===索引: tCollectGhost_DelDoll[3600171]
	-- ===删除:3600171,1
	tCollectGhost_DelDoll[3600171]["LogId"] = 12001668
	tCollectGhost_DelDoll[3600171]["DeleteItem"] = {}
	tCollectGhost_DelDoll[3600171]["DeleteItem"][1] = {}
	tCollectGhost_DelDoll[3600171]["DeleteItem"][1]["Id"] = 3600171 -- 【库】鬼怪娃娃[属性:137]
	tCollectGhost_DelDoll[3600171]["RewardItem"] = {}
	tCollectGhost_DelDoll[3600171]["RewardEffect"] = {}
	tCollectGhost_DelDoll[3600171]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_DelDoll[3600171]["RewardEffect"]["Effect"] = "angelwing"


	tCollectGhost_DelDoll[3600172] = {}
	-- ===删除娃娃获得好感度
	-- ===索引: tCollectGhost_DelDoll[3600172]
	-- ===删除:3600172,1
	tCollectGhost_DelDoll[3600172]["LogId"] = 12001668
	tCollectGhost_DelDoll[3600172]["DeleteItem"] = {}
	tCollectGhost_DelDoll[3600172]["DeleteItem"][1] = {}
	tCollectGhost_DelDoll[3600172]["DeleteItem"][1]["Id"] = 3600172 -- 【库】鬼怪娃娃[属性:137]
	tCollectGhost_DelDoll[3600172]["RewardItem"] = {}
	tCollectGhost_DelDoll[3600172]["RewardEffect"] = {}
	tCollectGhost_DelDoll[3600172]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_DelDoll[3600172]["RewardEffect"]["Effect"] = "angelwing"

	local tCollectGhost_Login = {}
	-- ===上线获得补偿礼包
	-- ===索引: tCollectGhost_Login
	tCollectGhost_Login["LogId"] = 12001668
	tCollectGhost_Login["RewardItem"] = {}
	tCollectGhost_Login["RewardItem"][1] = {}
	tCollectGhost_Login["RewardItem"][1]["Id"] = 3314500 -- HalloweenCompensationPack[3314500][属性:9][叠加:0][金币:0], 【表格】万圣节补偿礼包
	tCollectGhost_Login["RewardItem"][1]["Attr"] = "0 1" -- HalloweenCompensationPack*1
	tCollectGhost_Login["RewardEffect"] = {}
	tCollectGhost_Login["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_Login["RewardEffect"]["Effect"] = "angelwing"


local tCollectGhost_Compensation = {}
	-- ===打开补偿礼包
	-- ===索引: tCollectGhost_Compensation
	-- ===删除:3314500,1
	tCollectGhost_Compensation["LogId"] = 12001668
	tCollectGhost_Compensation["DeleteItem"] = {}
	tCollectGhost_Compensation["DeleteItem"][1] = {}
	tCollectGhost_Compensation["DeleteItem"][1]["Id"] = 3314500 -- 【库】HalloweenCompensationPack[属性:9]
	tCollectGhost_Compensation["RewardItem"] = {}
	tCollectGhost_Compensation["RewardItem"][1] = {}
	tCollectGhost_Compensation["RewardItem"][1]["Id"] = 3600168 -- 5-StarGhostPack[3600168][属性:137][叠加:100][金币:0], 【表格】五星鬼怪礼包
	tCollectGhost_Compensation["RewardItem"][1]["Attr"] = "0 14" -- 5-StarGhostPack*14（[错误]物品数量超10个）
	tCollectGhost_Compensation["RewardEffect"] = {}
	tCollectGhost_Compensation["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectGhost_Compensation["RewardEffect"]["Effect"] = "angelwing"
----------------------------------表配置部分--------------------------------------------


----------------------------------逻辑部分---------------------------------------------
-- 增加完成次数
function CollectGhost_AddFinishTask(nNpcId,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nEvent = tCollectGhost_FinishTaskStc[nNpcId]["EventType"]
	local nType = tCollectGhost_FinishTaskStc[nNpcId]["DataType"]
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	local nStar = tCollectGhost_FinishTaskStc[nNpcId]["Star"]
	if CollectGhost_GetFinishTask(nNpcId,nUserId) >= tCollectGhost_TransformationNeedTimes[nStar] then
		HalloweenCarnivalBaron_AddMosterStc(nNpcId,1,nUserId)
	end
	return true
end

-- 获得完成次数
function CollectGhost_GetFinishTask(nNpcId,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nEvent = tCollectGhost_FinishTaskStc[nNpcId]["EventType"]
	local nType = tCollectGhost_FinishTaskStc[nNpcId]["DataType"]
	return Get_UserStatisticValue(nEvent,nType,nUserId)
end

-- 判断是否可接当前鬼怪任务星级
function CollectGhost_JudgeAcceptTaskStar(nNpcId)
	local nUserId = Get_UserId()
	-- 没变身
	if Get_UserTransformId(nUserId) == -1 then
		return false
	end
	-- local nNpcStar = tCollectGhost_FinishTaskStc[nNpcId]["Star"]
	local nUserStar = HalloweenCarnivalBaron_GetStcValue(109,nUserId)
	return nUserStar >= 1
end

-- 判断是否在双龙城内
function CollectGhost_JudgeInCity(nNpcId)
	local nNpcId = nNpcId or Get_NpcId()
	local nNpcMapId = Get_NpcMapID(nNpcId)
	local nNpcPosX = Get_NpcPositionX(nNpcId)
	local nNpcPosY = Get_NpcPositionY(nNpcId)
	return HalloweenHappiness2019_JudgeNpcInCity(nNpcId,nNpcMapId,nNpcPosX,nNpcPosY)
end

-- 刷怪
function CollectGhost_RefreshMonster()
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local tMonsterRefresh
	if SpecialServer_ChkNoGiftServer() then
		tMonsterRefresh = tCollectGhost_Generator["NoGift"]
	else
		tMonsterRefresh = tCollectGhost_Generator["Normal"]
	end
	for k,v in pairs(tMonsterRefresh) do
		-- 第一周不刷神龙岛，古神灵境
		if not (Sys_ChkFullTime(tCollectGhost_ActivityTime["FirstWeek"]) and k >= 1166) then
			local nMonsterId = k
			local nRandom = math.random(1,5)
			local nMapId = v[nRandom]["MapId"]
			local nPosX = v[nRandom]["Posx"]
			local nPosY = v[nRandom]["Posy"]
			-- local nGenId = v[nRandom]["GenId"]
			local nGenId = 25132
			local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
			local nNpcLookface = tCollectGhost_ThreeStarMonsterFace[nMonsterId]
			local nNpcId = tCollectGhost_NpcLookfaceToId[nNpcLookface]
			if not CollectGhost_JudgeInCity(nNpcId) then
				if nMonsterNum < 1 then
					Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId,0,0,0,1)
				end
			end
		end
	end
end

-- 分享鬼怪位置
function CollectGhost_ShareNpcPos(nNpcId)
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local sUserName = Get_UserName()
	local nNpcId = nNpcId or Get_NpcId()
	--获取当前时间
	local nTime = os.time() - 86400
	local nLastTime = tCollectGhost_ShareTime[nNpcId]
	if nTime - nLastTime < 10 then
		Sys_MsgBox(tCollectGhost_Text["ShareFail"])
		return
	end
	local sNpcName = Get_NpcName(nNpcId)
	local nMapId = Get_NpcMapID(nNpcId)
	local nNpcInFact = Get_NpcId()
	local nNpcCellx = Get_NpcPositionX(nNpcId)
	local nNpcCelly = Get_NpcPositionY(nNpcId)
	if nNpcInFact ~= nNpcId then
		nMapId = Get_DynaNpcMapID(nNpcInFact)
		nNpcCellx = Get_DynaNpcPositionX(nNpcInFact)
		nNpcCelly = Get_DynaNpcPositionY(nNpcInFact)
	end
	local sMapName = Get_MapName(nMapId)
	local sText = string.format(tCollectGhost_Text["Share"],sUserName,sNpcName,sMapName,nNpcCellx,nNpcCelly,nMapId,nNpcCellx,nNpcCelly)
	Sys_SystemBroadcast(sText)
	tCollectGhost_ShareTime[nNpcId] = nTime
end

-- 我也要去找鬼怪
function CollectGhost_Click(nMapId,nCellx,nCelly)
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local nUserId = Get_UserId()
	-- 英文未二转不能进入神龙岛
	if (nMapId == 10137) or (nMapId == 10166) or (nMapId == 10250) then
		if not User_JudgeLevelAndMetempsychosis(0,2) then
			return
		end
	end
	-- 神龙岛不能传送出神龙岛
	if User_ChkShenlongIsland(nUserId) then
		if (nMapId == 10137) or (nMapId == 10166) or (nMapId == 10250) then
			User_UserRandBoundTransByShenlongIsland(nMapId,nCellx,nCelly,5,5,1,nUserId)
		end
	else
		User_UserRandBoundTrans(nMapId,nCellx,nCelly,5,5,1,nUserId)
	end
end

-- 击杀神龙岛跟古神灵境怪物
function CollectGhost_KillMonster(nMonsterId)
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local nUserMapId = Get_UserMapId()
	if nUserMapId == 10250 or nUserMapId == 10137 or (nUserMapId >= 10479 and nUserMapId <= 10481) then
		local nRandom = math.random(1000)
		if nRandom > 1 then
			return
		end
		local nUserId = Get_UserId()
		local nMapId = Get_UserMapId()
		nRandom = math.random(5)
		if Sys_ChkFullTime(tCollectGhost_ActivityTime["FirstWeek"]) then
			nRandom = math.random(3)
		end
		local nNpcId = tCollectGhost_NpcId[4][nRandom]
		if CollectGhost_JudgeInCity(nNpcId) then
			return
		end
		--获取当前时间
		local nTime = os.time() - 86400
		local nLastTime = tCollectGhost_4StarRefreshTime[nNpcId]
		local nNpcMapId = Get_NpcMapID(nNpcId)
		if nNpcMapId ~= 5000 then
			if nTime - nLastTime <= 600 then
				return
			end
		end
		local nPosX = Get_MonsterPosX()
		local nPosY = Get_MonsterPosY()
		Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
		tCollectGhost_4StarRefreshTime[nNpcId] = os.time() - 86400
		local sNpcName = Get_NpcName(nNpcId)
		local sMapName = Get_MapName(nMapId)
		Sys_TalkBroadcast(string.format(tCollectGhost_Text["RefreshMonster"],sNpcName,sMapName,nPosX,nPosY,nMapId,nPosX,nPosY))
	end
end

-- 对话三星鬼怪（动态NPC
function CollectGhost_LinkThreeStar()
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local nNpcLookface = Get_NpcLookface()
	local nNpcId = tCollectGhost_NpcLookfaceToId[nNpcLookface]
	--获取当前时间
	local nTime = os.time() - 86400
	local nLastTime = tCollectGhost_RefreshTime[nNpcId]
	local sNpcName = Get_NpcName()
	local nMapId = Get_UserMapId()
	if nTime - nLastTime >= 1800 then
		Npc_DelDynaNpc(nMapId,"name",sNpcName)
		Sys_MsgBox(tCollectGhost_Text["3StarLeave"])
		return
	end
	if not CollectGhost_JudgeAcceptTaskStar(nNpcId) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	local nUserId = Get_UserId()
	if not (HalloweenCarnivalBaron_GetMosterStc(nNpcId,nUserId) > 0) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-3")
end

-- 击杀三星鬼怪
function CollectGhost_KillThreeStarMonster(nMonsterId)
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local nMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nMapId)
	local nUserId = Get_UserId()
	local nPosX = Get_MonsterPosX()
	local nPosY = Get_MonsterPosY()
	local nNpcFace = tCollectGhost_ThreeStarMonsterFace[nMonsterId]
	local nNpcId = tCollectGhost_NpcLookfaceToId[nNpcFace]
	local sNpcName = Get_NpcName(nNpcId)
	local nActionId = 94491362
	if Get_NpcCountByName(sNpcName,nUserId) == 0 then
		Npc_CreateDynaNpc(sNpcName,2,1,nNpcFace,0,nUserId,nMapId,nPosX,nPosY,0,0,0,nActionId)
		tCollectGhost_RefreshTime[nNpcId] = os.time() - 86400
		local sMapName = Get_MapName(nMapId)
		Sys_SystemBroadcast(string.format(tCollectGhost_Text["RefreshMonster"],sNpcName,sMapName,nPosX,nPosY,nMapId,nPosX,nPosY))
	end
end

-- 获得奖励（5星需要区分
function CollectGhost_Reward(tReward,nStar,nUserId)
	local nUserId = nUserId or Get_UserId()
	
	local tCopyReward = CommonFunc_Copy(tReward)
	if nStar == 5 then
		local nNeedCandyId = CollectGhost_GetCandyIdInCross()
		tCopyReward["DeleteItem"][1]["Id"] = nNeedCandyId
	end
	local nEventType = tCollectGhost_RewardStc[nStar]["EventType"]
	local nDataType = tCollectGhost_RewardStc[nStar]["DataType"]
	local nTimes = tCollectGhost_RewardStc[nStar]["Times"]
	local nNowTimes = Get_UserStatisticValue(nEventType,nDataType,nUserId)%10000
	-- 超过次数补给鬼怪礼包
	if nNowTimes >= nTimes and not Task_StcInterval(nEventType,nDataType,1,4,nUserId) then
		tCopyReward["RewardItem"] = {}
	end
	return RewardTemplate_UseItemAndMsg(tCopyReward,nUserId)
end

-- 获得在跨服给5星鬼怪需要的糖果Id
function CollectGhost_GetCandyIdInCross()
	local nTaskId = tCollectGhost_Task["id"]
	if Get_TaskDetailData1(nTaskId) == nCollectGhost_CandyId then
		return nCollectGhost_OtherCandyId
	else
		return nCollectGhost_CandyId
	end
end

-- 增加对应npc的任务完成次数，重置时间戳
function CollectGhost_AddTaskData(nNpcId)
	local nTaskId = tCollectGhost_Task["id"]
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return false
	end
	local nNeedCandyId = CollectGhost_GetCandyIdInCross()
	local nFlag = tCollectGhost_Task[nNeedCandyId][nNpcId]
	local nTime = os.time()
	if nFlag == 1 then
		local nData = Get_TaskDetailData3(nTaskId)
		Task_SetTaskDetailData3(nTaskId,nData+1)
		Task_SetTaskDetailData4(nTaskId,1)
	else
		local nData = Get_TaskDetailData5(nTaskId)
		Task_SetTaskDetailData5(nTaskId,nData+1)
		Task_SetTaskDetailData6(nTaskId,1)
	end
	Task_SetTaskDetailData2(nTaskId,nTime)
	return true
end

-- 获得对应npc的任务完成次数
function CollectGhost_GetTaskData(nNpcId)
	local nTaskId = tCollectGhost_Task["id"]
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return 0
	end
	local nNeedCandyId = CollectGhost_GetCandyIdInCross()
	local nFlag = tCollectGhost_Task[nNeedCandyId][nNpcId]
	if nFlag == 1 then
		return Get_TaskDetailData3(nTaskId)
	else
		return Get_TaskDetailData5(nTaskId)
	end
end

-- 获得对应npc上次提交任务时间
function CollectGhost_GetTaskTime(nNpcId)
	local nTaskId = tCollectGhost_Task["id"]
	local nNeedCandyId = CollectGhost_GetCandyIdInCross()
	local nFlag = tCollectGhost_Task[nNeedCandyId][nNpcId]
	if nFlag == 1 then
		return Get_TaskDetailData4(nTaskId)
	else
		return Get_TaskDetailData6(nTaskId)
	end
end

-- 判断是否隔天
function CollectGhost_ChkTaskTime(nTime)
	local nNow = os.time()
	local sYear
	local sMonth
	local sDay
	local sNowYear
	local sNowMonth
	local sNowDay
	local sNowTime
	local sTime
	sNowTime = os.date("%Y%m%d",nNow)
	sTime = os.date("%Y%m%d",nTime)
	sYear = string.sub(sTime,1,4)
	sMonth = string.sub(sTime,5,6)
	sDay = string.sub(sTime,7,8)
	sNowYear = string.sub(sNowTime,1,4)
	sNowMonth = string.sub(sNowTime,5,6)
	sNowDay = string.sub(sNowTime,7,8)
	
	if tonumber(sYear) < tonumber(sNowYear) then
		return true
	elseif tonumber(sYear) > tonumber(sNowYear) then
		return false
	elseif tonumber(sMonth) < tonumber(sNowMonth) then
		return true
	elseif tonumber(sMonth) > tonumber(sNowMonth) then
		return false
	elseif tonumber(sDay) < tonumber(sNowDay) then
		return true
	else
		return false
	end
end

-- 跨服上交糖果
function CollectGhost_HandInCindyIn5Star(nNpcId)
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local nTaskId = tCollectGhost_Task["id"]
	local nUserId = Get_UserId()
	local nItemId = nCollectGhost_CandyId
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		if Task_AddTaskDetail(nTaskId) then
			Task_SetTaskDetailData1(nTaskId,CandyOrMischief_ReturnCandyId(nUserId),nUserId)
		else
			return
		end
	end
	local nNpcId = nNpcId or Get_NpcId()
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_SetTaskDetailData1(nTaskId,CandyOrMischief_ReturnCandyId(nUserId),nUserId)
		local nTime = Get_TaskDetailData2(nTaskId)
		local nNowTime = os.time()
		if CollectGhost_ChkTaskTime(nTime) then
			Task_SetTaskDetailData2(nTaskId,nNowTime)
			Task_SetTaskDetailData4(nTaskId,0)
			Task_SetTaskDetailData6(nTaskId,0)
		end
	end
	local nTime = CollectGhost_GetTaskTime(nNpcId)
	-- 隔天才能再给鬼怪礼包
	if nTime == 1 then
		Sys_MsgBox(tCollectGhost_Text["HasFinish"])
		return
	end
	local nStar = tCollectGhost_FinishTaskStc[nNpcId]["Star"]
	local nNeedCandyId = CollectGhost_GetCandyIdInCross()
	local tCopyReward = CommonFunc_Copy(tCollectGhost_Reward[nStar])
	tCopyReward["DeleteItem"][1]["Id"] = nNeedCandyId
	local nRewardTime1 = Get_TaskDetailData4(nTaskId)
	local nRewardTime2 = Get_TaskDetailData6(nTaskId)
	-- 隔天才能再给鬼怪礼包
	if nRewardTime1 == 1 or nRewardTime2 == 1 then
		tCopyReward["RewardItem"] = {}
	end
	-- 背包空间不足
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tCopyReward)) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	if not Item_ChkMulItem(tCopyReward["DeleteItem"][1]["Id"],tCopyReward["DeleteItem"][1]["Id"],tCopyReward["DeleteItem"][1]["ItemNum"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	if CollectGhost_AddTaskData(nNpcId) then
		HalloweenHappiness2019_HandInCindy(nNpcId)
		-- 超过次数补给鬼怪礼包
		if nRewardTime1 == 0 and nRewardTime2 == 0 then
			Sys_MsgBox(string.format(tCollectGhost_Text["GetLimit"],1,nStar))
		end
		RewardTemplate_UseItemAndMsg(tCopyReward,nUserId)
	end
end

-- 变身x星以上鬼怪
function CollectGhost_TransformRandom(nNpcId)
	local nNpcId = nNpcId or Get_NpcId()
	local nUserId = Get_UserId()
	for k,v in pairs(tCollectGhost_NpcId[1]) do
		local nFlag = HalloweenCarnivalBaron_GetMosterStc(v,nUserId) or 0
		if nFlag > 0 then
			HalloweenCarnivalBaron_TransformRandomExist()
			return true
		end
	end
	Sys_MsgBox(tCollectGhost_Text["NoTransform"])
	return false
end

-- 第一次上交糖果
function CollectGhost_FirstHandInCindy(nNpcId)
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local nNpcId = nNpcId or Get_NpcId()
	local nStar = tCollectGhost_FinishTaskStc[nNpcId]["Star"]
	-- 背包空间不足
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tCollectGhost_Reward[nStar])) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	if not Item_ChkMulItem(tCollectGhost_Reward[nStar]["DeleteItem"][1]["Id"],tCollectGhost_Reward[nStar]["DeleteItem"][1]["Id"],tCollectGhost_Reward[nStar]["DeleteItem"][1]["ItemNum"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	if CollectGhost_AddFinishTask(nNpcId) then
		HalloweenCarnivalBaron_FindOneStarMonster(nNpcId)
		CollectGhost_Reward(tCollectGhost_Reward[nStar],nStar)
		LinkNpcGossipFunc_New(nNpcId,"4-3")
	end
end

-- 上交糖果
function CollectGhost_HandInCindy(nNpcId)
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local nNpcId = nNpcId or Get_NpcId()
	-- 已提交过弹105提示
	if not CollectGhost_JudgeHandInCandy(nNpcId) then
		Sys_MsgBox(tCollectGhost_Text["HasFinish"])
		return
	end
	local nStar = tCollectGhost_FinishTaskStc[nNpcId]["Star"]
	-- 背包空间不足
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tCollectGhost_Reward[nStar])) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	if not Item_ChkMulItem(tCollectGhost_Reward[nStar]["DeleteItem"][1]["Id"],tCollectGhost_Reward[nStar]["DeleteItem"][1]["Id"],tCollectGhost_Reward[nStar]["DeleteItem"][1]["ItemNum"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	if CollectGhost_AddFinishTask(nNpcId) then
		HalloweenCarnivalBaron_FindOneStarMonster(nNpcId)
		if nStar ~= 1 then
			HalloweenHappiness2019_HandInCindy(nNpcId)
		end
		CollectGhost_Reward(tCollectGhost_Reward[nStar],nStar)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		local nEventType = tCollectGhost_RewardStc[nStar]["EventType"]
		local nDataType = tCollectGhost_RewardStc[nStar]["DataType"]
		local nTimes = tCollectGhost_RewardStc[nStar]["Times"]
		local nUserId = Get_UserId()
		local nNowTimes = Get_UserStatisticValue(nEventType,nDataType,nUserId)%10000
		-- 超过次数补给鬼怪礼包
		if nNowTimes == nTimes then
			Sys_MsgBox(string.format(tCollectGhost_Text["GetLimit"],nTimes,nStar))
		end
	end
end

-- 双龙城上交糖果
function CollectGhost_HandInCindyInCityIn5Star(nNpcId)
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local nTaskId = tCollectGhost_Task["id"]
	local nUserId = Get_UserId()
	local nItemId = nCollectGhost_CandyId
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		if Task_AddTaskDetail(nTaskId) then
			Task_SetTaskDetailData1(nTaskId,CandyOrMischief_ReturnCandyId(nUserId),nUserId)
		else
			return
		end
	end
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_SetTaskDetailData1(nTaskId,CandyOrMischief_ReturnCandyId(nUserId),nUserId)
		local nTime = Get_TaskDetailData2(nTaskId)
		local nNowTime = os.time()
		if CollectGhost_ChkTaskTime(nTime) then
			Task_SetTaskDetailData2(nTaskId,nNowTime)
			Task_SetTaskDetailData4(nTaskId,0)
			Task_SetTaskDetailData6(nTaskId,0)
		end
	end
	local nNpcId = nNpcId or Get_NpcId()
	local nTime = CollectGhost_GetTaskTime(nNpcId)
	-- 隔天才能再给鬼怪礼包
	if nTime == 1 then
		Sys_MsgBox(tCollectGhost_Text["HasFinish"])
		return
	end
	local nStar = tCollectGhost_FinishTaskStc[nNpcId]["Star"]
	local nNeedCandyId = Get_TaskDetailData1(nTaskId)
	local tCopyReward = CommonFunc_Copy(tCollectGhost_RewardInCity[nStar])
	tCopyReward["DeleteItem"][1]["Id"] = nNeedCandyId
	local nRewardTime1 = Get_TaskDetailData4(nTaskId)
	local nRewardTime2 = Get_TaskDetailData6(nTaskId)
	-- 隔天才能再给鬼怪礼包
	if nRewardTime1 == 1 or nRewardTime2 == 1 then
		-- 已获得变身且礼包达到上限
		if CollectGhost_GetTaskData(nNpcId) >= tCollectGhost_TransformationNeedTimes[5] then
			Sys_MsgBox(string.format(tCollectGhost_Text["GetLimit"],1,nStar))
			return
		end
		tCopyReward["RewardItem"] = {}
	end
	-- 背包空间不足
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tCopyReward)) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	if not Item_ChkMulItem(tCopyReward["DeleteItem"][1]["Id"],tCopyReward["DeleteItem"][1]["Id"],tCopyReward["DeleteItem"][1]["ItemNum"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"5-1")
	if CollectGhost_AddTaskData(nNpcId) then
		HalloweenHappiness2019_HandInCindy(nNpcId)
		RewardTemplate_UseItemAndMsg(tCopyReward,nUserId)
		-- 超过次数补给鬼怪礼包
		if nRewardTime1 == 0 and nRewardTime2 == 0 then
			Sys_MsgBox(string.format(tCollectGhost_Text["GetLimit"],1,nStar))
		end
	end
end

-- 双龙城上交糖果
function CollectGhost_HandInCindyInCity(nNpcId)
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local nNpcId = nNpcId or Get_NpcId()
	-- 已提交过弹105提示
	if not CollectGhost_JudgeHandInCandy(nNpcId) then
		Sys_MsgBox(tCollectGhost_Text["HasFinish"])
		return
	end
	local nStar = tCollectGhost_FinishTaskStc[nNpcId]["Star"]
	local nEventType = tCollectGhost_RewardStc[nStar]["EventType"]
	local nDataType = tCollectGhost_RewardStc[nStar]["DataType"]
	local nTimes = tCollectGhost_RewardStc[nStar]["Times"]
	local nUserId = Get_UserId()
	local nOldTimes = Get_UserStatisticValue(nEventType,nDataType,nUserId)%10000
	-- 已获得变身且礼包达到上限
	if HalloweenCarnivalBaron_GetMosterStc(nNpcId,nUserId) > 0 and nOldTimes == nTimes then
		Sys_MsgBox(string.format(tCollectGhost_Text["GetLimit"],nTimes,nStar))
		return
	end
	-- 背包空间不足
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tCollectGhost_RewardInCity[nStar])) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	if not Item_ChkMulItem(tCollectGhost_RewardInCity[nStar]["DeleteItem"][1]["Id"],tCollectGhost_RewardInCity[nStar]["DeleteItem"][1]["Id"],tCollectGhost_RewardInCity[nStar]["DeleteItem"][1]["ItemNum"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	if CollectGhost_AddFinishTask(nNpcId,nUserId) then
		CollectGhost_Reward(tCollectGhost_RewardInCity[nStar],nStar)
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		local nNowTimes = Get_UserStatisticValue(nEventType,nDataType,nUserId)%10000
		-- 超过次数补给鬼怪礼包
		if nNowTimes == nTimes then
			Sys_MsgBox(string.format(tCollectGhost_Text["GetLimit"],nTimes,nStar))
		end
	end
end

-- 收服鬼怪
function CollectGhost_Catch()
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local nNpcId = Get_NpcId()
	if not CollectGhost_JudgeAcceptTaskStar(nNpcId) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	-- 背包空间不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	local nUserId = Get_UserId()
	if CollectGhost_JudgeInCity(nNpcId) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	else
		if not CollectGhost_JudgeHandInCandy(nNpcId) then
			Sys_MsgBox(tCollectGhost_Text["HasFinish"])
			return
		end
		local nItemId = nCollectGhost_CandyId
		if  not Item_ChkMulItem(nItemId,nItemId,5) then
			Sys_MsgBox(tCollectGhost_Text["CatchNoItem"])
			return
		end
		local nProbability = Get_UserStatisticValue(tCollectGhost_UpCatchStc["EventType"],tCollectGhost_UpCatchStc["DataType"])
		if nProbability >= 8 then
			nProbability = 8
		end
		User_SetExplore(2,tCollectGhost_Text["Capturing"],220,"CollectGhost_CatchExplore</N>"..nProbability.."</N>"..nNpcId.."</N>"..nUserId,nil,nUserId)
		User_EffectAdd("self","shouyao")
	end
end

-- 收服鬼怪
function CollectGhost_CatchExplore(nProbability,nNpcId,nUserId)
	local nStar = tCollectGhost_FinishTaskStc[nNpcId]["Star"]
	if math.random(100)<= 8+nProbability then
		if CollectGhost_AddFinishTask(nNpcId,nUserId) then
			HalloweenHappiness2019_HandInCindy(nNpcId)
			-- 提升几率归零
			if Task_SetStatistic(tCollectGhost_UpCatchStc["EventType"],tCollectGhost_UpCatchStc["DataType"],0,1,nUserId) then
				if CollectGhost_Reward(tCollectGhost_Reward[nStar][1],nStar,nUserId) then
					if not CollectGhost_JudgeInCity(nNpcId) then
						Npc_MoveNpcPos(nNpcId,5000,100,100)
					end
					local sNpcName = Get_NpcName(nNpcId)
					if CollectGhost_JudgeHandInCandy(nNpcId,nUserId) then
						Sys_MsgBox(string.format(tCollectGhost_Text["CatchSuccess"],sNpcName,sNpcName),nil,nil,nUserId)
					else
						Sys_MsgBox(string.format(tCollectGhost_Text["CatchSuccessNoReward"],sNpcName,sNpcName),nil,nil,nUserId)
					end
				end
			end
		end
	else
		if Task_AddStatistic(tCollectGhost_UpCatchStc["EventType"],tCollectGhost_UpCatchStc["DataType"],1,1,nUserId) then
			CollectGhost_Reward(tCollectGhost_Reward[nStar][2],nStar,nUserId)
			local sNpcName = Get_NpcName(nNpcId)
			Sys_MsgBox(string.format(tCollectGhost_Text["CatchFail"],sNpcName),nil,nil,nUserId)
		end
	end
	User_EffectAdd("self","BodyDisapear",nUserId)
	local nEventType = tCollectGhost_RewardStc[nStar]["EventType"]
	local nDataType = tCollectGhost_RewardStc[nStar]["DataType"]
	local nTimes = tCollectGhost_RewardStc[nStar]["Times"]
	local nNowTimes = Get_UserStatisticValue(nEventType,nDataType,nUserId)%10000
	-- 超过次数补给鬼怪礼包
	if nNowTimes == nTimes then
		User_TalkChannel2005(string.format(tCollectGhost_Text["GetLimit"],nTimes,nStar),nUserId)
	end
end

---返回今天是否提交过糖果
function CollectGhost_JudgeHandInCandy(nNpcId,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nEventType = tCollectGhost_FinishTaskStc[nNpcId]["EventType"]
	local nDataType = tCollectGhost_FinishTaskStc[nNpcId]["DataType"]
	if Task_StcInterval(nEventType,nDataType,1,4,nUserId) then
		return true
	end
	return false
end

---进入全球服（Data1为本服糖果Id
function CollectGhost_EnterServer()
	local nTaskId = tCollectGhost_Task["id"]
	local nItemId = nCollectGhost_CandyId
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_SetTaskDetailData1(nTaskId,CandyOrMischief_ReturnCandyId(nUserId),nUserId)
		local nTime = Get_TaskDetailData2(nTaskId)
		local nNowTime = os.time()
		if CollectGhost_ChkTaskTime(nTime) then
			Task_SetTaskDetailData2(nTaskId,nNowTime)
			Task_SetTaskDetailData4(nTaskId,0)
			Task_SetTaskDetailData6(nTaskId,0)
		end
		return true
	end
	if Task_AddTaskDetail(nTaskId) then
		Task_SetTaskDetailData1(nTaskId,CandyOrMischief_ReturnCandyId(nUserId),nUserId)
		return true
	else
		return false
	end
end

---从5星鬼怪处获得分身
function CollectGhost_AddFinishTask5Star()
	local nCandyId = nCollectGhost_OtherCandyId
	local nUserId = Get_UserId()
	for i=1,2 do
		local nNpcId = tCollectGhost_Task[nCandyId][i]
		if CollectGhost_GetTaskData(nNpcId) >= tCollectGhost_TransformationNeedTimes[5] then
			HalloweenCarnivalBaron_AddMosterStc(nNpcId,1,nUserId)
		end
	end
end

---从5星鬼怪处获得分身
function CollectGhost_GetDoll()
	local nNpcId = Get_NpcId()
	local nItemId = tCollectGhost_IdToDoll[nNpcId]
	RewardTemplate_UseItemAndMsg(tCollectGhost_GetDoll[nItemId])
end

---返回今天是否提交过糖果
function CollectGhost_LinkNpc()
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		return
	end
	local nNpcId = Get_NpcId()
	if not User_JudgeLevelAndMetempsychosis(tCollectGhost_Level["Level"],tCollectGhost_Level["Mete"]) then
		Sys_MsgBox(tCollectGhost_Text["NoLevel"])
		return
	end
	local nStar = tCollectGhost_FinishTaskStc[nNpcId]["Star"]
	if nStar == 1 then
		-- 判断是否第一次接任务
		local nTaskId = HalloweenCarnivalBaron_WhichTask(2)
		if not Task_ChkTaskDetail(nTaskId,0) then
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		end
		-- 判断是否已完成任务
		if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId) then
			if nNpcId == 24969 then
				LinkNpcGossipFunc_New(nNpcId,"4-1")
			else
				LinkNpcGossipFunc_New(nNpcId,"5-1")
			end
			return
		end
		LinkNpcMain()
	elseif nStar < 5 then
		LinkNpcMain()
	else
		local nUserId = Get_UserId()
		local nTaskId = tCollectGhost_Task["id"]
		if not Task_ChkTaskDetail(nTaskId,nUserId) then
			if Task_AddTaskDetail(nTaskId) then
				local nItemId = CandyOrMischief_ReturnCandyId(nUserId)
				Task_SetTaskDetailData1(nTaskId,CandyOrMischief_ReturnCandyId(nUserId),nUserId)
			else
				return
			end
		end
		local nCandyId = Get_TaskDetailData1(nTaskId)
		local tText = tCollectGhost_Text
		if User_IsCross() then
			if CandyOrMischief_ReturnCandyId(nUserId) == nCollectGhost_OtherCandyId then
				tText = tCollectGhost_Special_Text
			end
		end
		tNpcGossip[nNpcId]["DialogueText"] = tText[nNpcId]
		LinkNpcGossipFunc_Judge(nNpcId)
		if User_IsCross(nUserId) then
		-- 跨服交任务，本服为上交糖果
		-- 好感度满出闲聊对白
			if HalloweenHappiness2019_ChkFavorable(nNpcId) then
				LinkNpcGossipFunc_New(nNpcId,"1-1")
				return
			end
			-- 同服出闲聊对白
			if tCollectGhost_Task[nCandyId][nNpcId] ~= nil then
				LinkNpcGossipFunc_New(nNpcId,"1-1")
			elseif CollectGhost_GetTaskData(nNpcId) < tCollectGhost_TransformationNeedTimes[5] then
				LinkNpcGossipFunc_New(nNpcId,"1-2")
			else
				LinkNpcGossipFunc_New(nNpcId,"1-3")
			end
		else
			if CollectGhost_GetTaskData(nNpcId) >= tCollectGhost_TransformationNeedTimes[5] then
				LinkNpcGossipFunc_New(nNpcId,"1-3")
				return
			else
				LinkNpcGossipFunc_New(nNpcId,"1-2")
				return
			end
		end
	end
end

---移动NPC
function CollectGhost_MoveNpc()
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		for a,b in pairs(tCollectGhost_NpcId) do
			for c,d in pairs(tCollectGhost_NpcId[a]) do
				local nNpcId = d
				local nMapId = Get_NpcMapID(nNpcId)
				if nMapId ~= 10601 then
				Npc_MoveNpcPos(nNpcId,5000,100,100)
				end
			end
		end
		return 
	end
	for a,b in pairs(tCollectGhost_MoveNpc) do
		local nNpcId = a
	-- 好感度满
		if tCollectGhost_FinishTaskStc[nNpcId]["Star"] == 1 then
			local nMapId = tCollectGhost_MoveNpc[nNpcId]["ActivetyMapId"]
			local nPosX = tCollectGhost_MoveNpc[nNpcId]["ActivetyPosX"]
			local nPosY = tCollectGhost_MoveNpc[nNpcId]["ActivetyPosY"]
			-- 激情服
			if SpecialServer_ChkNoGiftServer() then
				nMapId = tCollectGhost_MoveNpc_NoGift[nNpcId]["ActivetyMapId"]
				nPosX = tCollectGhost_MoveNpc_NoGift[nNpcId]["ActivetyPosX"]
				nPosY = tCollectGhost_MoveNpc_NoGift[nNpcId]["ActivetyPosY"]
			end
			Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
		elseif not HalloweenHappiness2019_ChkFavorable(nNpcId) then
			local nMapId = tCollectGhost_MoveNpc[nNpcId]["ActivetyMapId"]
			local nPosX = tCollectGhost_MoveNpc[nNpcId]["ActivetyPosX"]
			local nPosY = tCollectGhost_MoveNpc[nNpcId]["ActivetyPosY"]
			-- 激情服
			if SpecialServer_ChkNoGiftServer() then
				nMapId = tCollectGhost_MoveNpc_NoGift[nNpcId]["ActivetyMapId"]
				nPosX = tCollectGhost_MoveNpc_NoGift[nNpcId]["ActivetyPosX"]
				nPosY = tCollectGhost_MoveNpc_NoGift[nNpcId]["ActivetyPosY"]
			end
			Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
		end
	end
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[2321] = 198
tNpcFace[2322] = 2543
tNpcFace[2323] = 2544
tNpcFace[2324] = 2545
tNpcFace[2325] = 2546
tNpcFace[2326] = 2547
tNpcFace[2327] = 2548
tNpcFace[2328] = 2549
tNpcFace[2329] = 2550
tNpcFace[2330] = 2551
tNpcFace[2331] = 2552
tNpcFace[2332] = 2553
tNpcFace[2333] = 2554
tNpcFace[2334] = 199
tNpcFace[2335] = 2556
tNpcFace[2336] = 2557
tNpcFace[2337] = 2558
tNpcFace[2338] = 2559
tNpcFace[2339] = 2560
tNpcFace[2340] = 2561
tNpcFace[2341] = 2562
tNpcFace[2342] = 2563
tNpcFace[2343] = 2564
tNpcFace[2344] = 2565
tNpcFace[2345] = 2566
tNpcFace[2346] = 2567
tNpcFace[2347] = 2568
tNpcFace[2348] = 2569
tNpcFace[2349] = 2570
tNpcFace[2350] = 2571
tNpcFace[2351] = 2572
-- 【1星】
for k,v in pairs(tCollectGhost_NpcId[1]) do
	tNpcGossip[v] = tNpcGossip[v] or DefaultNpc:new{}
	tNpcGossip[v]["OptionHidden"] = 1
	tNpcGossip[v]["DialogueText"] = tCollectGhost_Text[v]
	
	tNpcGossip[v]["Text1-1"] = {111,112,113,114,115}
	tNpcGossip[v]["tOption1-1"] = {111}
	tNpcGossip[v]["OptionFunc111"] = "CollectGhost_HandInCindy"
	tNpcGossip[v]["ChkFunc1-1"]= function()
		local nData = CollectGhost_GetFinishTask(v)
		if CollectGhost_GetFinishTask(v) > tCollectGhost_TransformationNeedTimes[1] then
			nData = tCollectGhost_TransformationNeedTimes[1]
		end
		tNpcGossip[v]["Text114"] = string.format(tCollectGhost_Text[v]["Text114"],nData)
		return true
	end
	-- 【糖果数量不足】
	tNpcGossip[v]["Text2-1"] = {211,212}
	tNpcGossip[v]["tOption2-1"] = {211}
	-- 【糖果数量足够】
	tNpcGossip[v]["Text3-1"] = {311,312}
	tNpcGossip[v]["tOption3-1"] = {311}
	tNpcGossip[v]["ChkFunc3-1"]= function()
		local nData = CollectGhost_GetFinishTask(v)
		if nData == tCollectGhost_TransformationNeedTimes[1] then
			tNpcGossip[v]["Text312"] = tCollectGhost_Text[v]["Text312"]
		elseif nData < tCollectGhost_TransformationNeedTimes[1] then
			tNpcGossip[v]["Text312"] = string.format(tCollectGhost_Text[v]["Text313"],tCollectGhost_TransformationNeedTimes[1]-nData)
		else
			tNpcGossip[v]["Text312"] = ""
		end
		local nEventType = tCollectGhost_RewardStc[1]["EventType"]
		local nDataType = tCollectGhost_RewardStc[1]["DataType"]
		local nTimes = tCollectGhost_RewardStc[1]["Times"]
		local nUserId = Get_UserId()
		local nNowTimes = Get_UserStatisticValue(nEventType,nDataType,nUserId)%10000
		-- 超过次数补给鬼怪礼包
		if nNowTimes > nTimes then
			tNpcGossip[v]["Text311"] = tCollectGhost_Text[v]["Text3110"]
		else
			tNpcGossip[v]["Text311"] = tCollectGhost_Text[v]["Text311"]
		end
		return true
	end
	-- 首次任务
	tNpcGossip[v]["Text4-1"] = {411}
	tNpcGossip[v]["tOption4-1"] = {411}
	tNpcGossip[v]["OptionPoint411"] = "4-2"
	tNpcGossip[v]["Text4-2"] = {421,422}
	tNpcGossip[v]["tOption4-2"] = {421}
	tNpcGossip[v]["OptionFunc421"] = "CollectGhost_FirstHandInCindy"
	tNpcGossip[v]["Text4-3"] = {431,432,433,434}
	tNpcGossip[v]["tOption4-3"] = {431}
	tNpcGossip[v]["OptionFunc431"] = "NpcPosition_PathFind</N>24993"
	tNpcGossip[v]["Text5-1"] = {511}
	tNpcGossip[v]["tOption5-1"] = {511}
	tNpcGossip[v]["OptionFunc511"] = "NpcPosition_PathFind</N>24993"
	-- 背包空间不足
	tNpcGossip[v]["Text6-1"] = {611}
	tNpcGossip[v]["tOption6-1"] = {611}
end

----------2星
-- 【2星】蹑空战鬼王
for k,v in pairs(tCollectGhost_NpcId[2]) do
	tNpcGossip[v] = tNpcGossip[v] or DefaultNpc:new{}
	tNpcGossip[v]["OptionHidden"] = 1
	tNpcGossip[v]["DialogueText"] = tCollectGhost_Text[v]
	-- 【尚未变身成1星以上鬼怪】
	tNpcGossip[v]["Text1-1"] = {111}
	tNpcGossip[v]["tOption1-1"] = {112,111}
	tNpcGossip[v]["OptionFunc112"] = "CollectGhost_TransformRandom"
	tNpcGossip[v]["ChkFunc1-1"]= function()
		return not CollectGhost_JudgeAcceptTaskStar(v)
	end
	-- 【满足条件】
	tNpcGossip[v]["Text1-2"] = {121,122,123,124,125,126}
	tNpcGossip[v]["tOption1-2"] = {121,122}
	-- 给你15颗鬼怪糖果
	tNpcGossip[v]["OptionFunc121"] = "CollectGhost_HandInCindy"
	-- 分享鬼怪位置
	tNpcGossip[v]["OptionFunc122"] = "CollectGhost_ShareNpcPos"
	tNpcGossip[v]["ChkFunc1-2"]= function()
		local nData = CollectGhost_GetFinishTask(v)
		if CollectGhost_GetFinishTask(v) > tCollectGhost_TransformationNeedTimes[2] then
			nData = tCollectGhost_TransformationNeedTimes[2]
		end
		tNpcGossip[v]["Text124"] = string.format(tCollectGhost_Text[v]["Text124"],nData)
		local nHappiness = HalloweenHappiness2019_GetFavorable(v)
		tNpcGossip[v]["Text126"] = string.format(tCollectGhost_Text[v]["Text126"],nHappiness)
		
		local nUserId = Get_UserId()
		return HalloweenCarnivalBaron_GetMosterStc(v,nUserId) == 0
	end
	-- 市场外
	tNpcGossip[v]["Text1-3"] = {131,132,133,134,135,136}
	tNpcGossip[v]["tOption1-3"] = {131}
	-- 上交50颗鬼怪糖果
	tNpcGossip[v]["OptionFunc131"] = "CollectGhost_HandInCindyInCity"
	-- 【糖果数量不足】
	tNpcGossip[v]["Text2-1"] = {211,212}
	tNpcGossip[v]["tOption2-1"] = {211}
	-- 【糖果数量足够】
	tNpcGossip[v]["Text3-1"] = {311,312}
	tNpcGossip[v]["tOption3-1"] = {311}
	tNpcGossip[v]["ChkFunc3-1"]= function()
		local nData = CollectGhost_GetFinishTask(v)
		if nData == tCollectGhost_TransformationNeedTimes[2] then
			tNpcGossip[v]["Text312"] = tCollectGhost_Text[v]["Text312"]
		elseif nData < tCollectGhost_TransformationNeedTimes[2] then
			tNpcGossip[v]["Text312"] = string.format(tCollectGhost_Text[v]["Text313"],tCollectGhost_TransformationNeedTimes[2]-nData)
		else
			tNpcGossip[v]["Text312"] = ""
		end
		local nEventType = tCollectGhost_RewardStc[2]["EventType"]
		local nDataType = tCollectGhost_RewardStc[2]["DataType"]
		local nTimes = tCollectGhost_RewardStc[2]["Times"]
		local nUserId = Get_UserId()
		local nNowTimes = Get_UserStatisticValue(nEventType,nDataType,nUserId)%10000
		-- 超过次数补给鬼怪礼包
		if nNowTimes > nTimes then
			tNpcGossip[v]["Text311"] = tCollectGhost_Text[v]["Text3110"]
		else
			tNpcGossip[v]["Text311"] = tCollectGhost_Text[v]["Text311"]
		end
		return true
	end
	-- 接1、上交50颗鬼怪糖果
	-- 【糖果数量不足】
	tNpcGossip[v]["Text4-1"] = {411,412}
	tNpcGossip[v]["tOption4-1"] = {411}
	-- 【糖果数量足够】
	tNpcGossip[v]["Text5-1"] = {511,512}
	tNpcGossip[v]["tOption5-1"] = {511}
	tNpcGossip[v]["ChkFunc5-1"]= function()
		if CollectGhost_GetFinishTask(v) < tCollectGhost_TransformationNeedTimes[2] then
			tNpcGossip[v]["Text512"] = tCollectGhost_Text[v]["Text512"]
		else
			tNpcGossip[v]["Text512"] = ""
		end
		local nEventType = tCollectGhost_RewardStc[2]["EventType"]
		local nDataType = tCollectGhost_RewardStc[2]["DataType"]
		local nTimes = tCollectGhost_RewardStc[2]["Times"]
		local nUserId = Get_UserId()
		local nNowTimes = Get_UserStatisticValue(nEventType,nDataType,nUserId)%10000
		-- 超过次数补给鬼怪礼包
		if nNowTimes > nTimes then
			tNpcGossip[v]["Text511"] = tCollectGhost_Text[v]["Text5110"]
		else
			tNpcGossip[v]["Text511"] = tCollectGhost_Text[v]["Text511"]
		end
		return true
	end
	-- 背包空间不足
	tNpcGossip[v]["Text6-1"] = {611}
	tNpcGossip[v]["tOption6-1"] = {611}
end

-- 【3星】霸王叫天鸡
for k,v in pairs(tCollectGhost_NpcId[3]) do
	tNpcGossip[v] = tNpcGossip[v] or DefaultNpc:new{}
	tNpcGossip[v]["OptionHidden"] = 1
	tNpcGossip[v]["DialogueText"] = tCollectGhost_Text[v]
	-- 【尚未变身成1星以上鬼怪】
	tNpcGossip[v]["Text1-1"] = {111}
	tNpcGossip[v]["tOption1-1"] = {112,111}
	tNpcGossip[v]["OptionFunc112"] = "CollectGhost_TransformRandom</N>"..v
	tNpcGossip[v]["ChkFunc1-1"]= function()
		return not CollectGhost_JudgeAcceptTaskStar(v)
	end
	-- 【满足条件】
	tNpcGossip[v]["Text1-2"] = {121,122,123,124,125,126}
	tNpcGossip[v]["tOption1-2"] = {121,122}
	-- 给你30颗鬼怪糖果
	tNpcGossip[v]["OptionFunc121"] = "CollectGhost_HandInCindy</N>"..v
	-- 分享鬼怪位置
	tNpcGossip[v]["OptionFunc122"] = "CollectGhost_ShareNpcPos</N>"..v
	tNpcGossip[v]["ChkFunc1-2"]= function()
		local nData = CollectGhost_GetFinishTask(v)
		if CollectGhost_GetFinishTask(v) > tCollectGhost_TransformationNeedTimes[3] then
			nData = tCollectGhost_TransformationNeedTimes[3]
		end
		tNpcGossip[v]["Text124"] = string.format(tCollectGhost_Text[v]["Text124"],nData)
		local nHappiness = HalloweenHappiness2019_GetFavorable(v)
		tNpcGossip[v]["Text126"] = string.format(tCollectGhost_Text[v]["Text126"],nHappiness)
		local nUserId = Get_UserId()
		-- return HalloweenCarnivalBaron_GetMosterStc(v,nUserId) == 0
		return true
	end
	-- 市场外
	tNpcGossip[v]["Text1-3"] = {131,132,133,134,135,136}
	tNpcGossip[v]["tOption1-3"] = {131}
	-- 上交30颗鬼怪糖果
	tNpcGossip[v]["OptionFunc131"] = "CollectGhost_HandInCindyInCity</N>"..v
	-- 【糖果数量不足】
	tNpcGossip[v]["Text2-1"] = {211,212}
	tNpcGossip[v]["tOption2-1"] = {211}
	-- 【糖果数量足够】
	tNpcGossip[v]["Text3-1"] = {311,312}
	tNpcGossip[v]["tOption3-1"] = {311}
	tNpcGossip[v]["ChkFunc3-1"]= function()
		local nData = CollectGhost_GetFinishTask(v)
		if nData == tCollectGhost_TransformationNeedTimes[3] then
			tNpcGossip[v]["Text312"] = tCollectGhost_Text[v]["Text312"]
		elseif nData < tCollectGhost_TransformationNeedTimes[3] then
			tNpcGossip[v]["Text312"] = string.format(tCollectGhost_Text[v]["Text313"],tCollectGhost_TransformationNeedTimes[3]-nData)
		else
			tNpcGossip[v]["Text312"] = ""
		end
		local nEventType = tCollectGhost_RewardStc[3]["EventType"]
		local nDataType = tCollectGhost_RewardStc[3]["DataType"]
		local nTimes = tCollectGhost_RewardStc[3]["Times"]
		local nUserId = Get_UserId()
		local nNowTimes = Get_UserStatisticValue(nEventType,nDataType,nUserId)%10000
		-- 超过次数补给鬼怪礼包
		if nNowTimes > nTimes then
			tNpcGossip[v]["Text311"] = tCollectGhost_Text[v]["Text3110"]
		else
			tNpcGossip[v]["Text311"] = tCollectGhost_Text[v]["Text311"]
		end
		return true
	end
	-- 接1、上交100颗鬼怪糖果
	-- 【糖果数量不足】
	tNpcGossip[v]["Text4-1"] = {411,412}
	tNpcGossip[v]["tOption4-1"] = {411}
	-- 【糖果数量足够】
	tNpcGossip[v]["Text5-1"] = {511,512}
	tNpcGossip[v]["tOption5-1"] = {511}
	tNpcGossip[v]["ChkFunc5-1"]= function()
		if CollectGhost_GetFinishTask(v) < tCollectGhost_TransformationNeedTimes[3] then
			tNpcGossip[v]["Text512"] = tCollectGhost_Text[v]["Text512"]
		else
			tNpcGossip[v]["Text512"] = ""
		end
		local nEventType = tCollectGhost_RewardStc[3]["EventType"]
		local nDataType = tCollectGhost_RewardStc[3]["DataType"]
		local nTimes = tCollectGhost_RewardStc[3]["Times"]
		local nUserId = Get_UserId()
		local nNowTimes = Get_UserStatisticValue(nEventType,nDataType,nUserId)%10000
		-- 超过次数补给鬼怪礼包
		if nNowTimes > nTimes then
			tNpcGossip[v]["Text511"] = tCollectGhost_Text[v]["Text5110"]
		else
			tNpcGossip[v]["Text511"] = tCollectGhost_Text[v]["Text511"]
		end
		return true
	end
	-- 背包空间不足
	tNpcGossip[v]["Text6-1"] = {611}
	tNpcGossip[v]["tOption6-1"] = {611}
end

-- 【4星】赢勾
for k,v in pairs(tCollectGhost_NpcId[4]) do
	tNpcGossip[v] = tNpcGossip[v] or DefaultNpc:new{}
	tNpcGossip[v]["OptionHidden"] = 1
	tNpcGossip[v]["DialogueText"] = tCollectGhost_Text[v]
	-- 【尚未变身成1星以上鬼怪】
	tNpcGossip[v]["Text1-1"] = {111}
	tNpcGossip[v]["tOption1-1"] = {112,111}
	tNpcGossip[v]["OptionFunc112"] = "CollectGhost_TransformRandom"
	tNpcGossip[v]["ChkFunc1-1"]= function()
		return not CollectGhost_JudgeAcceptTaskStar(v)
	end
	-- 【满足条件】
	tNpcGossip[v]["Text1-2"] = {121,122,123,124,125,126}
	tNpcGossip[v]["tOption1-2"] = {121}
	-- 给你30颗鬼怪糖果
	tNpcGossip[v]["OptionFunc121"] = "CollectGhost_HandInCindyInCity"
	tNpcGossip[v]["ChkFunc1-2"]= function()
		local nUserId = Get_UserId()
		return CollectGhost_JudgeInCity(nNpcId)
	end
	-- 接1、上交100颗鬼怪糖果
	-- 【糖果数量不足】
	tNpcGossip[v]["Text4-1"] = {411,412}
	tNpcGossip[v]["tOption4-1"] = {411}
	-- 【糖果数量足够】
	tNpcGossip[v]["Text5-1"] = {511,512}
	tNpcGossip[v]["tOption5-1"] = {511}
	tNpcGossip[v]["ChkFunc5-1"]= function()
		if CollectGhost_GetFinishTask(v) < tCollectGhost_TransformationNeedTimes[4] then
			tNpcGossip[v]["Text512"] = tCollectGhost_Text[v]["Text512"]
		else
			tNpcGossip[v]["Text512"] = ""
		end
		local nEventType = tCollectGhost_RewardStc[4]["EventType"]
		local nDataType = tCollectGhost_RewardStc[4]["DataType"]
		local nTimes = tCollectGhost_RewardStc[4]["Times"]
		local nUserId = Get_UserId()
		local nNowTimes = Get_UserStatisticValue(nEventType,nDataType,nUserId)%10000
		-- 超过次数补给鬼怪礼包
		if nNowTimes > nTimes then
			tNpcGossip[v]["Text511"] = tCollectGhost_Text[v]["Text5110"]
		else
			tNpcGossip[v]["Text511"] = tCollectGhost_Text[v]["Text511"]
		end
		return true
	end
	-- 背包空间不足
	tNpcGossip[v]["Text6-1"] = {611}
	tNpcGossip[v]["tOption6-1"] = {611}
end

-- 【5星】白无常
for k,v in pairs(tCollectGhost_NpcId[5]) do
	tNpcGossip[v] = tNpcGossip[v] or DefaultNpc:new{}
	tNpcGossip[v]["OptionHidden"] = 1
	-- tNpcGossip[v]["DialogueText"] = tCollectGhost_Text[v]
	-- tNpcGossip[v]["DialogueText"] = tCollectGhost_Special_Text[v]
	-- 【尚未变身成1星以上鬼怪】
	tNpcGossip[v]["Text1-1"] = {111}
	tNpcGossip[v]["tOption1-1"] = {111,122}
	-- 【满足条件】
	tNpcGossip[v]["Text1-2"] = {121,122,123,124,125,126}
	tNpcGossip[v]["tOption1-2"] = {121}
	-- 给你3颗鬼怪糖果
	tNpcGossip[v]["OptionFunc121"] = "CollectGhost_HandInCindyIn5Star</N>"..v
	tNpcGossip[v]["ChkFunc1-2"]= function()
		local nData = CollectGhost_GetTaskData(v)
		if CollectGhost_GetTaskData(v) > tCollectGhost_TransformationNeedTimes[5] then
			nData = tCollectGhost_TransformationNeedTimes[5]
		end
		local tText = tCollectGhost_Text
		if User_IsCross() then
			local nTaskId = tCollectGhost_Task["id"]
			local nUserId = Get_UserId()
			if CandyOrMischief_ReturnCandyId(nUserId) == nCollectGhost_OtherCandyId then
				tText = tCollectGhost_Special_Text
			end
		end
		tNpcGossip[v]["Text124"] = string.format(tText[v]["Text124"],nData)
		local nHappiness = HalloweenHappiness2019_GetFavorable(v)
		tNpcGossip[v]["Text126"] = string.format(tText[v]["Text126"],nHappiness)
		local nUserId = Get_UserId()
		return CollectGhost_GetTaskData(v) < tCollectGhost_TransformationNeedTimes[5]
	end
	tNpcGossip[v]["OptionFunc122"] = "CollectGhost_GetDoll"
	tNpcGossip[v]["OptionChkFunc122"] = function()
		local nUserId = Get_UserId()
		local nCandyId = CandyOrMischief_ReturnCandyId(nUserId)
		return HalloweenHappiness2019_ChkFavorable(v) and tCollectGhost_Task[nCandyId][v] == nil
	end
	-- 市场外
	tNpcGossip[v]["Text1-3"] = {131,132,133,134,135,136}
	tNpcGossip[v]["tOption1-3"] = {131}
	-- 上交1000颗鬼怪糖果
	tNpcGossip[v]["OptionFunc131"] = "CollectGhost_HandInCindyInCityIn5Star</N>"..v
	-- 【糖果数量不足】
	tNpcGossip[v]["Text2-1"] = {211,212}
	tNpcGossip[v]["tOption2-1"] = {211}
	-- 【糖果数量足够】
	tNpcGossip[v]["Text3-1"] = {311,312}
	tNpcGossip[v]["tOption3-1"] = {311}
	tNpcGossip[v]["ChkFunc3-1"]= function()
		local nTaskId = tCollectGhost_Task["id"]
		local nRewardTime1 = Get_TaskDetailData4(nTaskId)
		local nRewardTime2 = Get_TaskDetailData6(nTaskId)
		local tText = tCollectGhost_Text
		if User_IsCross() then
			local nUserId = Get_UserId()
			if CandyOrMischief_ReturnCandyId(nUserId) == nCollectGhost_OtherCandyId then
				tText = tCollectGhost_Special_Text
			end
		end
		if nRewardTime1 == 1 or nRewardTime2 == 1 then
			tNpcGossip[v]["Text311"] = tText[v]["Text3110"]
		else
			tNpcGossip[v]["Text311"] = tText[v]["Text311"]
		end
		local nData = CollectGhost_GetTaskData(v)+1
		if nData == tCollectGhost_TransformationNeedTimes[5] then
			tNpcGossip[v]["Text312"] = tText[v]["Text312"]
		elseif nData < tCollectGhost_TransformationNeedTimes[5] then
			tNpcGossip[v]["Text312"] = string.format(tText[v]["Text313"],tCollectGhost_TransformationNeedTimes[5]-nData)
		else
			tNpcGossip[v]["Text312"] = ""
		end
		return true
	end
	-- 接1、上交100颗鬼怪糖果
	-- 【糖果数量不足】
	tNpcGossip[v]["Text4-1"] = {411,412}
	tNpcGossip[v]["tOption4-1"] = {411}
	-- 【糖果数量足够】
	tNpcGossip[v]["Text5-1"] = {511,512}
	tNpcGossip[v]["tOption5-1"] = {511}
	tNpcGossip[v]["ChkFunc5-1"]= function()
		local tText = tCollectGhost_Text
		local nTaskId = tCollectGhost_Task["id"]
		if User_IsCross() then
			local nUserId = Get_UserId()
			if CandyOrMischief_ReturnCandyId(nUserId) == nCollectGhost_OtherCandyId then
				tText = tCollectGhost_Special_Text
			end
		end
		if CollectGhost_GetFinishTask(v) < tCollectGhost_TransformationNeedTimes[5] then
			tNpcGossip[v]["Text512"] = tText[v]["Text512"]
		else
			tNpcGossip[v]["Text512"] = ""
		end
		local nRewardTime1 = Get_TaskDetailData4(nTaskId)
		local nRewardTime2 = Get_TaskDetailData6(nTaskId)
		if nRewardTime1 == 1 or nRewardTime2 == 1 then
			tNpcGossip[v]["Text511"] = tText[v]["Text5110"]
		else
			tNpcGossip[v]["Text511"] = tText[v]["Text511"]
		end
		return true
	end
	-- 背包空间不足
	tNpcGossip[v]["Text6-1"] = {611}
	tNpcGossip[v]["tOption6-1"] = {611}
end

-- 娃娃
tItemFace[3600169] = 2569
tItemFace[3600170] = 2570
tItemFace[3600171] = 2571
tItemFace[3600172] = 2572
tItem[3600169] = tItem[3600169] or {}
tItem[3600169]["Function"] = function(nItemId,sItemName)
	if User_IsCross(nUserId) then
		return
	end
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		RewardTemplate_UseItemAndMsg(tCollectGhost_DelDoll[nItemId])
		return
	end
	local nNpcId =  tCollectGhost_DollToId[nItemId]
	local nMapId,nPosX,nPosY
	if not CollectGhost_JudgeInCity(nNpcId) then
		HalloweenHappiness2019_SetFavorable(nNpcId)
	end
	nMapId,nPosX,nPosY = HalloweenHappiness2019_Move5StarNpc(nNpcId)
	RewardTemplate_UseItemAndMsg(tCollectGhost_DelDoll[nItemId])
	Sys_MsgBox(string.format(tCollectGhost_Text["5StarMoveNpc"],Get_NpcName(nNpcId),Get_MapName(nMapId),nPosX,nPosY))
end
tItem[3600170] = tItem[3600169]
tItem[3600171] = tItem[3600169]
tItem[3600172] = tItem[3600169]
tItem[3314500] = tItem[3314500] or {}
tItem[3314500]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tCollectGhost_ActivityTime["ActivityTime"]) then
		local tReward = CommonFunc_Copy(tCollectGhost_Compensation)
		tReward["RewardItem"] = {}
		RewardTemplate_UseItemAndMsg(tReward)
		return
	end
	HalloweenCarnivalBaron_AddMosterStc(25004,1,nUserId)
	HalloweenCarnivalBaron_AddMosterStc(25005,1,nUserId)
	RewardTemplate_UseItemAndMsg(tCollectGhost_Compensation)
end
---------------------------------怪物部分---------------------------------------------
-- 击杀神龙岛跟古神灵境怪物掉落
local tCollectGhost_Monster = {}
tCollectGhost_Monster["Function"] = CollectGhost_KillMonster
-- tCollectGhost_Monster["Area"] = {11}
tCollectGhost_Monster["MonsterId"] = {3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986,3992,4709,4710,4711,4712,4713,4720,4912,4935,5747,8415,8420,3967,3968,3969,4151}
table.insert(tMonsterDrop_AreaLoad,tCollectGhost_Monster)

-- 激情服击杀噩梦回廊怪物掉落
local tCollectGhost_Monster_NoGift = {}
tCollectGhost_Monster_NoGift["Function"] = CollectGhost_KillMonster
tCollectGhost_Monster_NoGift["MonsterId"] = {5018,5019,5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5278,5279,5280,5281,5282,5283,5284,5285,5286,5287,5288,5289,5290,5291,5292,5293,5294,5295,5296,5309,5310,5311,5312,5313,5314,5315,5316,5317,5318,5319,5320,5321,5322,5323,5324,5325,5326,5327,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5349,5350,5351,5352,5353,5354,5747}
table.insert(tMonsterDrop_AreaLoad_NoGift,tCollectGhost_Monster_NoGift)

local tCollectGhost_ThreeStarMonster = {}
tCollectGhost_ThreeStarMonster["Function"] = CollectGhost_KillThreeStarMonster
tCollectGhost_ThreeStarMonster["MonsterId"] = {1161,1162,1163,1164,1165,1166,1167,1168,1169}
table.insert(tMonsterDrop_AreaLoad,tCollectGhost_ThreeStarMonster)
--------------------------------------时间自检-------------------------------------------
-- 每半小时刷新小boss
local tCollectGhost_OnTime = {}
	tCollectGhost_OnTime[1] = {}
	tCollectGhost_OnTime[1]["ActivityTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_OnTime[1]["Type"] = 3
	tCollectGhost_OnTime[1]["TimeType"] = 5
	tCollectGhost_OnTime[1]["Multiple"] = {}
	tCollectGhost_OnTime[1]["Multiple"][1]  = "00 00"
	tCollectGhost_OnTime[1]["Multiple"][2]  = "10 10"
	tCollectGhost_OnTime[1]["Multiple"][3]  = "20 20"
	tCollectGhost_OnTime[1]["Multiple"][4]  = "30 30"
	tCollectGhost_OnTime[1]["Multiple"][5]  = "40 40"
	tCollectGhost_OnTime[1]["Multiple"][6]  = "50 50"
	tCollectGhost_OnTime[1]["Func"] = CollectGhost_RefreshMonster
	table.insert(tSystemTime_InitialData,tCollectGhost_OnTime[1])
	
	tCollectGhost_OnTime[2] = {}
	tCollectGhost_OnTime[2]["ActivityTime"] = tCollectGhost_ActivityTime["ActivityTime"]
	tCollectGhost_OnTime[2]["Type"] = 2 
	tCollectGhost_OnTime[2]["TimeType"] = 4  -- 日时间
	tCollectGhost_OnTime[2]["Multiple"] = {}
	tCollectGhost_OnTime[2]["Multiple"][1] = "00:00 00:02"
	tCollectGhost_OnTime[2]["Func"] = CollectGhost_MoveNpc
	table.insert(tSystemTime_InitialData,tCollectGhost_OnTime[2])

--服务器启动
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],CollectGhost_MoveNpc)

