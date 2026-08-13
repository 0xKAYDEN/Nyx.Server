------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]百宝箱(3.17-3.31)
--Purpose:	百宝箱
--Creator: 	范琼
--Created:	2015/02/06
------------------------------------------------------------------------------------
--掩码说明：
--141 90:背包信是否领取
--141 91:1表示已领取排名奖励，0表示未领取
--141 92:记录总 成长值
--141 93:记录今日 成长值
--141 94:是否领取过昨日冠军奖励，1领取过，0未领取
--141 95:记录第几次补领宝箱
--141 96:是否已领取每日宝箱奖励
--141 97:记录今日喂养次数
--141 98:上线触发获得初级宝箱
--141 99:判断是否是第一次点击主npc



--logID:12000310

--全局动态ID：51023 - 51026，51030-51035
--51023:记录成长值 第1名-第5名玩家id，和成长值
--51024:记录成长值 第1名-第5名玩家名字
--51025:记录成长值 第6名-第10名玩家id，和成长值
--51026:记录成长值 第6名-第10名玩家名字

--51030:记录每日仙灵珠产出量，上限10个
--51031：区分美服和欧服data0 =1 为美服；data0等于2为欧服
--51032:记录本服昨日单天冠军id,成长值，名字
--51033:记录本服今日单天冠军id,成长值，名字

--51129:记录每日喂养1-3次（一转） 龙珠的产出量，上限2个
--51130:记录每日喂养1-3次（二转） 龙珠的产出量，上限3个

--命名规则：
--TreasureBox_

-------------------------------------------数据-------------------------------------------
--活动相关时间
local tTreasureBox_ActivityTime = {}
	--美服活动时间
	tTreasureBox_ActivityTime[1] = {}
	tTreasureBox_ActivityTime[1]["NowTime"] = "2016-03-17 00:00 2016-03-31 23:59"
	tTreasureBox_ActivityTime[1]["BeforeTime"] = "2015-03-10 00:00 2016-03-16 23:59"
	--欧服活动时间
	tTreasureBox_ActivityTime[2] = {}
	tTreasureBox_ActivityTime[2]["NowTime"] = "2016-03-17 00:00 2016-04-01 08:00"
	tTreasureBox_ActivityTime[2]["BeforeTime"] = "2015-03-10 00:00 2016-03-16 23:59"
	--可显示昨日养成冠军
	tTreasureBox_ActivityTime["AfterTime"] = "2016-03-17 00:00 2016-04-01 23:59"
	--领取本服排名奖励时间
	tTreasureBox_ActivityTime["GetRankRewardTime"]={}
	--美服时间
	tTreasureBox_ActivityTime["GetRankRewardTime"][1] = "2016-04-01 00:00 2016-04-07 23:59"
	--欧服时间
	tTreasureBox_ActivityTime["GetRankRewardTime"][2] = "2016-04-01 08:00 2016-04-07 23:59"
	
local tTreasureBox_ActivityData = {}
	--全服养成排行榜链接
	tTreasureBox_ActivityData["WebAddress"] = 	"http://event.co.99.com/celestialchestrank"
	--排名
	tTreasureBox_ActivityData["GlobalRank"] = {}
	tTreasureBox_ActivityData["GlobalRank"][1] = 51023
	tTreasureBox_ActivityData["GlobalRank"][2] = 51025
	
	tTreasureBox_ActivityData["GlobalRankNmae"] = {}
	tTreasureBox_ActivityData["GlobalRankNmae"][1] = 51024	
	tTreasureBox_ActivityData["GlobalRankNmae"][2] = 51026
	
	--仙灵珠
	tTreasureBox_ActivityData["GlobalBall"] = 51030
	tTreasureBox_ActivityData["MaxData"] = 10

	--龙珠产出上限
	tTreasureBox_ActivityData["GlobalDragon_1"] = 51129
	tTreasureBox_ActivityData["Max_1"] = 2
	tTreasureBox_ActivityData["GlobalDragon_2"] = 51130
	tTreasureBox_ActivityData["Max_2"] = 3
	
	--分服
	tTreasureBox_ActivityData["GlobalSeverId"] = 51031
	--本服昨日单天冠军
	tTreasureBox_ActivityData["GlobalLastFirst"] = 51032
	--本服今日单天冠军
	tTreasureBox_ActivityData["GlobalTodayFirst"] = 51033
	
	--背包空间
	tTreasureBox_ActivityData["SpaceOne"] = 1
	tTreasureBox_ActivityData["SpaceTwo"] = 2

	--玩家等级要求
	tTreasureBox_ActivityData["Metempsychosis"] = 0
	tTreasureBox_ActivityData["Level"] = 80
	--领宝箱所需天石
	tTreasureBox_ActivityData["TS"] = 50
	
	--可寻路地图
	tTreasureBox_ActivityData["MapCanTran"] = {}
	--双龙城/清风原
	tTreasureBox_ActivityData["MapCanTran"][1] = 1002
	--云门关
	tTreasureBox_ActivityData["MapCanTran"][2] = 1000
	--市场
	tTreasureBox_ActivityData["MapCanTran"][3] = 1036
	--枫溪林
	tTreasureBox_ActivityData["MapCanTran"][4] = 1011
	--芦花荡
	tTreasureBox_ActivityData["MapCanTran"][5] = 1015
	--绝情谷
	tTreasureBox_ActivityData["MapCanTran"][6] = 1020
	
	--返回双龙城坐标
	tTreasureBox_ActivityData["TwinCity"] = {}
	tTreasureBox_ActivityData["TwinCity"]["Map"] = 1002
	tTreasureBox_ActivityData["TwinCity"]["Xpos"] = 320
	tTreasureBox_ActivityData["TwinCity"]["Ypos"] = 250
	tTreasureBox_ActivityData["TwinCity"]["Bound"] = 5
	tTreasureBox_ActivityData["TwinCity"]["NpcId"] = 19156
	
	--进入百宝园
	tTreasureBox_ActivityData["BoxCity"] = {}
	tTreasureBox_ActivityData["BoxCity"]["Map"] = 10005
	tTreasureBox_ActivityData["BoxCity"]["Xpos"] = 304
	tTreasureBox_ActivityData["BoxCity"]["Ypos"] = 313
	tTreasureBox_ActivityData["BoxCity"]["Bound"] = 3
	
	--读条3s
	tTreasureBox_ActivityData["Second"] = 3		--读条3s
	tTreasureBox_ActivityData["Action"] = 100		--读条action
	
	--每10分钟随机出现一个矿石npc	
	tTreasureBox_ActivityData["Sort"] = 1	
	tTreasureBox_ActivityData["Type"] = 2
	tTreasureBox_ActivityData["Field"] = "name"
	tTreasureBox_ActivityData["NpcId"] = 19195
	tTreasureBox_ActivityData["Lookface"] = 40220
	tTreasureBox_ActivityData["Task0"] = 94473401
	tTreasureBox_ActivityData["MapId"] = 10005
	
	tTreasureBox_ActivityData["Pos"] = {}
	tTreasureBox_ActivityData["Pos"][1] = {299,364}
	tTreasureBox_ActivityData["Pos"][2] = {239,317}
	tTreasureBox_ActivityData["Pos"][3] = {265,268}
	tTreasureBox_ActivityData["Pos"][4] = {341,268}
	tTreasureBox_ActivityData["Pos"][5] = {376,322}

--Log说明	
local tTreasureBox_Log = {}
	--领取本服排行奖励
	tTreasureBox_Log["LocalRank"] = "0,0,0,0,12000310,2[1],%d,%d"
	--补领百宝箱。
	tTreasureBox_Log["ReGetBox"] = "%d,0,0,0,12000310,2[2],%d,1"
	--领取昨日冠军奖励
	tTreasureBox_Log["LastReward"] = "0,0,0,0,12000310,2[3],%d,%d"
	--领取宝箱每日奖励
	tTreasureBox_Log["DayReward"] = "0,0,0,0,12000310,2[4],%d,%d"
	--喂养奖励(消耗天石或者灵珠)
	tTreasureBox_Log["FeedReward"] = "%d,0,%d,%d,12000310,2[5],%d[%d],%d[%d]"
	
	--消耗灵珠合成下一级灵珠，以及奖励
	tTreasureBox_Log["CompoundBall"] = "0,0,%d,9,12000310,2[6],%d,%d"
	
	--百宝箱喂到第一阶段
	tTreasureBox_Log[3008710] = "0,0,0,0,12000310,1[1],%d[2],1[%d]"
	--百宝箱喂到第二阶段
	tTreasureBox_Log[3008711] = "0,0,0,0,12000310,1[2],%d[2],1[%d]"
	--百宝箱喂到第三阶段
	tTreasureBox_Log[3008712] = "0,0,0,0,12000310,1[3],%d[2],1[%d]"
	--百宝箱喂到第四阶段
	tTreasureBox_Log[3008713] = "0,0,0,0,12000310,1[4],%d[2],1[%d]"
	--百宝箱喂到第五阶段
	tTreasureBox_Log[3008714] = "0,0,0,0,12000310,1[5],%d[2],1[%d]"
	--百宝箱喂到第六阶段
	tTreasureBox_Log[3008715] = "0,0,0,0,12000310,1[6],%d[2],1[%d]"
	--百宝箱喂到第七阶段
	tTreasureBox_Log[3008716] = "0,0,0,0,12000310,1[7],%d[2],1[%d]"
	--百宝箱喂到第八阶段
	tTreasureBox_Log[3008717] = "0,0,0,0,12000310,1[8],%d[2],1[%d]"
	--百宝箱喂到第九阶段
	tTreasureBox_Log[3008718] = "0,0,0,0,12000310,1[9],%d[2],1[%d]"

--EmoneyLog说明
local tTreasureBox_EmoneyLog = {}
	--用天石补领宝箱
	tTreasureBox_EmoneyLog["TsBox"] = ""
	
	-- 每天从百宝箱领取基础奖励	350 20101
	tTreasureBox_EmoneyLog["DayReward"] = "350	20101	0	0	1	"
	
	--用灵珠喂养
	tTreasureBox_EmoneyLog["BallFeed"] = {}
	tTreasureBox_EmoneyLog["BallFeed"][3008706] = "350	20102	0	0	1	"
	tTreasureBox_EmoneyLog["BallFeed"][3008707] = "350	20103	0	0	1	"
	tTreasureBox_EmoneyLog["BallFeed"][3008708] = "350	20104	0	0	1	"
	tTreasureBox_EmoneyLog["BallFeed"][3008709] = "350	20105	0	0	1	"
	
	--百宝箱喂养阶段
	tTreasureBox_EmoneyLog["Box"] = {}
	tTreasureBox_EmoneyLog["Box"][3008710] = "350	20106	0	0	1	"
	tTreasureBox_EmoneyLog["Box"][3008711] = "350	20107	0	0	1	"
	tTreasureBox_EmoneyLog["Box"][3008712] = "350	20108	0	0	1	"
	tTreasureBox_EmoneyLog["Box"][3008713] = "350	20109	0	0	1	"
	tTreasureBox_EmoneyLog["Box"][3008714] = "350	20110	0	0	1	"
	tTreasureBox_EmoneyLog["Box"][3008715] = "350	20111	0	0	1	"
	tTreasureBox_EmoneyLog["Box"][3008716] = "350	20112	0	0	1	"
	tTreasureBox_EmoneyLog["Box"][3008717] = "350	20113	0	0	1	"
	tTreasureBox_EmoneyLog["Box"][3008718] = "350	20114	0	0	1	"
	
	tTreasureBox_EmoneyLog["TsBall"] = {}
	--用天石代替地灵珠
	tTreasureBox_EmoneyLog["TsBall"][1] = "350	20115	1	1	1	"
	--用天石代替天灵珠
	tTreasureBox_EmoneyLog["TsBall"][9] = "350	20116	9	9	1	"
	--用天石代替仙灵珠
	tTreasureBox_EmoneyLog["TsBall"][39] = "350	20117	39	39	1	"
	--用天石代替神灵珠
	tTreasureBox_EmoneyLog["TsBall"][299] = "350	20118	299	299	1	"
	
	--用灵珠喂养/天石喂养
	tTreasureBox_EmoneyLog["BallTSFeed"] = {}
	tTreasureBox_EmoneyLog["BallTSFeed"][3008706] = "350	20119	0	0	1	"
	tTreasureBox_EmoneyLog["BallTSFeed"][3008707] = "350	20120	0	0	1	"
	tTreasureBox_EmoneyLog["BallTSFeed"][3008708] = "350	20121	0	0	1	"
	tTreasureBox_EmoneyLog["BallTSFeed"][3008709] = "350	20122	0	0	1	"
	
	tTreasureBox_EmoneyLog["BallTSFeed"][1] = "350	20119	0	0	1	"
	tTreasureBox_EmoneyLog["BallTSFeed"][9] = "350	20120	0	0	1	"
	tTreasureBox_EmoneyLog["BallTSFeed"][39] = "350	20121	0	0	1	"
	tTreasureBox_EmoneyLog["BallTSFeed"][299] = "350	20122	0	0	1	"
	
	--记录免费产出的灵珠
	tTreasureBox_EmoneyLog["Free"] = {}
	tTreasureBox_EmoneyLog["Free"][3008706] = "350	20130	0	0	1	"
	tTreasureBox_EmoneyLog["Free"][3008707] = "350	20131	0	0	1	"
	tTreasureBox_EmoneyLog["Free"][3008708] = "350	20132	0	0	1	"
	tTreasureBox_EmoneyLog["Free"][3008709] = "350	20133	0	0	1	"
	
--stc掩码	
local tTreasureBox_StcId = {}
	tTreasureBox_StcId["nEvent"] = 141
	tTreasureBox_StcId["nData"] = {}
	--记录是否已领取排行奖励
	tTreasureBox_StcId["nData"][1] = 91
	--记录总成长值
	tTreasureBox_StcId["nData"][2] = 92
	--记录今日单天成长值
	tTreasureBox_StcId["nData"][3] = 93
	--是否领取昨日冠军奖励
	tTreasureBox_StcId["nData"][4] = 94
	--记录第几次补领宝箱
	tTreasureBox_StcId["nData"][5] = 95
	--是否已领取每日宝箱奖励
	tTreasureBox_StcId["nData"][6] = 96
	--记录今日喂养次数
	tTreasureBox_StcId["nData"][7] = 97
	--上线触发获得初级宝箱
	tTreasureBox_StcId["nData"][8] = 98
	--判断是否是第一次点击主npc
	tTreasureBox_StcId["nData"][9] = 99
	
-- 上线领取过宝箱掩码
local tTreasureBox_Stc = {}
	tTreasureBox_Stc["nEvent"] = 141
	tTreasureBox_Stc["nData"] = 98
	

--本服排行奖励
local tTreasureBox_LocalRankReward = {}
	--第1名
	tTreasureBox_LocalRankReward[1] = {}
	--10000点气力值
	tTreasureBox_LocalRankReward[1]["Power"] = 10000
	--绝版永久CloudRobe外套
	tTreasureBox_LocalRankReward[1]["Item"] = {}
	tTreasureBox_LocalRankReward[1]["Item"]["nItemId"] = 189095
	tTreasureBox_LocalRankReward[1]["Item"]["NAttr"] = ""
	
	--第2名
	tTreasureBox_LocalRankReward[2] = {}
	--8000点气力值
	tTreasureBox_LocalRankReward[2]["Power"] = 8000
	--绝版180天CloudRobe外套，
	tTreasureBox_LocalRankReward[2]["Item"] = {}
	tTreasureBox_LocalRankReward[2]["Item"]["nItemId"] = 189095
	tTreasureBox_LocalRankReward[2]["Item"]["NAttr"] = "0 0 0 259200 1"
	tTreasureBox_LocalRankReward[2]["Item"]["nDay"] = 180
	
	--第3名
	tTreasureBox_LocalRankReward[3] = {}
	--6000点气力值
	tTreasureBox_LocalRankReward[3]["Power"] = 6000
	--绝版90天CloudRobe外套，
	tTreasureBox_LocalRankReward[3]["Item"] = {}
	tTreasureBox_LocalRankReward[3]["Item"]["nItemId"] = 189095
	tTreasureBox_LocalRankReward[3]["Item"]["NAttr"] = "0 0 0 129600 1"
	tTreasureBox_LocalRankReward[3]["Item"]["nDay"] = 90
	
	--第4名-第6名：
	tTreasureBox_LocalRankReward[4] = {}
	--4000点气力值
	tTreasureBox_LocalRankReward[4]["Power"] = 4000
	--绝版60天CloudRobe外套，
	tTreasureBox_LocalRankReward[4]["Item"] = {}
	tTreasureBox_LocalRankReward[4]["Item"]["nItemId"] = 189095
	tTreasureBox_LocalRankReward[4]["Item"]["NAttr"] = "0 0 0 86400 1"
	tTreasureBox_LocalRankReward[4]["Item"]["nDay"] = 60
	
	tTreasureBox_LocalRankReward[5] = tTreasureBox_LocalRankReward[4]
	tTreasureBox_LocalRankReward[6] = tTreasureBox_LocalRankReward[4]
	
	--第7名-第10名：
	tTreasureBox_LocalRankReward[7] = {}
	--2000点气力值
	tTreasureBox_LocalRankReward[7]["Power"] = 2000
	--绝版30天CloudRobe外套，
	tTreasureBox_LocalRankReward[7]["Item"] = {}
	tTreasureBox_LocalRankReward[7]["Item"]["nItemId"] = 189095
	tTreasureBox_LocalRankReward[7]["Item"]["NAttr"] = "0 0 0 43200 1"
	tTreasureBox_LocalRankReward[7]["Item"]["nDay"] = 30
	
	tTreasureBox_LocalRankReward[8] = tTreasureBox_LocalRankReward[7]
	tTreasureBox_LocalRankReward[9] = tTreasureBox_LocalRankReward[7]
	tTreasureBox_LocalRankReward[10] = tTreasureBox_LocalRankReward[7]

--昨日冠军奖励
local tTreasureBox_LastReward = {}
	tTreasureBox_LastReward["nItem"] = 200482
	tTreasureBox_LastReward["NAttr"] = "0 0 3 1440 1"

--宝箱数据
local tTreasureBox_BoxType = {
	[1] = 3008710,
	[2] = 3008711,
	[3] = 3008712,
	[4] = 3008713,
	[5] = 3008714,
	[6] = 3008715,
	[7] = 3008716,
	[8] = 3008717,
	[9] = 3008718,
}

--喂养次数对应灵珠物品
local tTreasureBox_FeedBoxBall = {
	[1] = 3008706,	--地灵珠
	[2] = 3008706,	--地灵珠
	[3] = 3008706,	--地灵珠
	[4] = 3008707,	--天灵珠
	[5] = 3008707,	--天灵珠
	[6] = 3008707,	--天灵珠
	[7] = 3008708,	--仙灵珠
	[8] = 3008708,	--仙灵珠
	[9] = 3008708,	--仙灵珠
	[10] = 3008709,	--神灵珠
}

--灵珠数据
local tTreasureBox_BallData = {}
	--灵珠对应天石数量
	tTreasureBox_BallData["TS"] ={}
	tTreasureBox_BallData["TS"][3008706] = 1
	tTreasureBox_BallData["TS"][3008707] = 9
	tTreasureBox_BallData["TS"][3008708] = 39
	tTreasureBox_BallData["TS"][3008709] = 299

	--灵珠对应成长值
	tTreasureBox_BallData["Growup"] = {}
	tTreasureBox_BallData["Growup"][3008706] = 1
	tTreasureBox_BallData["Growup"][3008707] = 1
	tTreasureBox_BallData["Growup"][3008708] = 1
	tTreasureBox_BallData["Growup"][3008709] = 3
	
	tTreasureBox_BallData["GrowupTS"] ={}
	tTreasureBox_BallData["GrowupTS"][1] = 1
	tTreasureBox_BallData["GrowupTS"][9] = 1
	tTreasureBox_BallData["GrowupTS"][39] = 1
	tTreasureBox_BallData["GrowupTS"][299] = 3
	
	--总成长值对应宝箱（进阶）
	tTreasureBox_BallData["NextGrowBox"] = {}
	tTreasureBox_BallData["NextGrowBox"][0] = 3008710
	tTreasureBox_BallData["NextGrowBox"][10] = 3008711		--10
	tTreasureBox_BallData["NextGrowBox"][30] = 3008712		--20
	tTreasureBox_BallData["NextGrowBox"][60] = 3008713		--30
	tTreasureBox_BallData["NextGrowBox"][100] = 3008714	--40
	tTreasureBox_BallData["NextGrowBox"][150] = 3008715	--50
	tTreasureBox_BallData["NextGrowBox"][220] = 3008716	--70
	tTreasureBox_BallData["NextGrowBox"][310] = 3008717	--90
	tTreasureBox_BallData["NextGrowBox"][420] = 3008718	--110
	
	tTreasureBox_BallData["NextGrow"] = {}
	tTreasureBox_BallData["NextGrow"][3008710] = 0
	tTreasureBox_BallData["NextGrow"][3008711] = 10		--10
	tTreasureBox_BallData["NextGrow"][3008712] = 30		--20
	tTreasureBox_BallData["NextGrow"][3008713] = 60		--30
	tTreasureBox_BallData["NextGrow"][3008714] = 100	--40
	tTreasureBox_BallData["NextGrow"][3008715] = 150	--50
	tTreasureBox_BallData["NextGrow"][3008716] = 220	--70
	tTreasureBox_BallData["NextGrow"][3008717] = 310	--90
	tTreasureBox_BallData["NextGrow"][3008718] = 420	--110
	
	--下一级灵珠
	tTreasureBox_BallData["NextBall"] = {}
	tTreasureBox_BallData["NextBall"][3008706] = 3008707
	tTreasureBox_BallData["NextBall"][3008707] = 3008708
	tTreasureBox_BallData["NextBall"][3008708] = 3008709
	
	--灵珠合成奖励
	tTreasureBox_BallData["CompoundReward"] = {}
	
	-----地灵珠
	tTreasureBox_BallData["CompoundReward"][3008706] = {}
	tTreasureBox_BallData["CompoundReward"][3008706]["ItemChanceSum"] = 10000
	
	-- 20.00%	天灵珠
	-- 改为40.00%	天灵珠
	tTreasureBox_BallData["CompoundReward"][3008706][1] = {}
	tTreasureBox_BallData["CompoundReward"][3008706][1]["RandomItemChanceType"] = 2
	tTreasureBox_BallData["CompoundReward"][3008706][1]["ItemChance"] = 4000
	tTreasureBox_BallData["CompoundReward"][3008706][1]["Item_1"] =  3008707
	
	-- 40.00%	30分钟经验/15点修行值
	-- 改为20.00%	30分钟经验/15点修行值
	tTreasureBox_BallData["CompoundReward"][3008706][2] = {}
	tTreasureBox_BallData["CompoundReward"][3008706][2]["RandomItemChanceType"] = 2
	tTreasureBox_BallData["CompoundReward"][3008706][2]["ItemChance"] = 2000
	tTreasureBox_BallData["CompoundReward"][3008706][2]["Item_1"] =  4
	tTreasureBox_BallData["CompoundReward"][3008706][2]["Num"] = 30
	
	-- 30.00%	30点修行值
	-- 改为30.00%	30点气力值
	tTreasureBox_BallData["CompoundReward"][3008706][3] = {}
	tTreasureBox_BallData["CompoundReward"][3008706][3]["RandomItemChanceType"] = 2
	tTreasureBox_BallData["CompoundReward"][3008706][3]["ItemChance"] = 3000
	tTreasureBox_BallData["CompoundReward"][3008706][3]["Item_1"] =  12
	tTreasureBox_BallData["CompoundReward"][3008706][3]["Num"] = 30
	
	-- 10.00%	聚神丹（赠）/护心丹 tTreasureBox_BallData["MaxLev"][723700]
	-- 改为10.00%	免费强炼丹（赠）
	tTreasureBox_BallData["CompoundReward"][3008706][4] = {}
	tTreasureBox_BallData["CompoundReward"][3008706][4]["RandomItemChanceType"] = 2
	tTreasureBox_BallData["CompoundReward"][3008706][4]["ItemChance"] = 1000
	tTreasureBox_BallData["CompoundReward"][3008706][4]["Item_1"] =  3003124
	tTreasureBox_BallData["CompoundReward"][3008706][4]["Zeng"] = 3
	tTreasureBox_BallData["CompoundReward"][3008706][4]["NAttr"] = "0 0 3"
	
	------天灵珠
	tTreasureBox_BallData["CompoundReward"][3008707] = {}
	tTreasureBox_BallData["CompoundReward"][3008707]["ItemChanceSum"] = 10000
	
	-- 25.00%	仙灵珠
	-- 改为 30% 仙灵珠
	tTreasureBox_BallData["CompoundReward"][3008707][1] = {}
	tTreasureBox_BallData["CompoundReward"][3008707][1]["RandomItemChanceType"] = 2
	tTreasureBox_BallData["CompoundReward"][3008707][1]["ItemChance"] = 3000
	tTreasureBox_BallData["CompoundReward"][3008707][1]["Item_1"] =  3008708
	
	-- 35.00%	120分钟经验/60点修行值
	-- 改为30.00%	120分钟经验/60点修行值
	tTreasureBox_BallData["CompoundReward"][3008707][2] = {}
	tTreasureBox_BallData["CompoundReward"][3008707][2]["RandomItemChanceType"] = 2
	tTreasureBox_BallData["CompoundReward"][3008707][2]["ItemChance"] = 3000
	tTreasureBox_BallData["CompoundReward"][3008707][2]["Item_1"] =  4
	tTreasureBox_BallData["CompoundReward"][3008707][2]["Num"] = 120
	
	-- 30.00%	100点气力值
	tTreasureBox_BallData["CompoundReward"][3008707][3] = {}
	tTreasureBox_BallData["CompoundReward"][3008707][3]["RandomItemChanceType"] = 2
	tTreasureBox_BallData["CompoundReward"][3008707][3]["ItemChance"] = 3000
	tTreasureBox_BallData["CompoundReward"][3008707][3]["Item_1"] =  12
	tTreasureBox_BallData["CompoundReward"][3008707][3]["Num"] = 100
	
	-- 10.00%	究极通神丹（赠）*2
	tTreasureBox_BallData["CompoundReward"][3008707][4] = {}
	tTreasureBox_BallData["CompoundReward"][3008707][4]["RandomItemChanceType"] = 2
	tTreasureBox_BallData["CompoundReward"][3008707][4]["ItemChance"] = 1000
	tTreasureBox_BallData["CompoundReward"][3008707][4]["Item_1"] =  3003126
	tTreasureBox_BallData["CompoundReward"][3008707][4]["Num"] = 2
	tTreasureBox_BallData["CompoundReward"][3008707][4]["NAttr"] = "0 2 3"
	
	------仙灵珠
	tTreasureBox_BallData["CompoundReward"][3008708] = {}
	tTreasureBox_BallData["CompoundReward"][3008708]["ItemChanceSum"] = 10000
	
	-- 30.00%	神灵珠
	-- 改为20.00%	神灵珠
	tTreasureBox_BallData["CompoundReward"][3008708][1] = {}
	tTreasureBox_BallData["CompoundReward"][3008708][1]["RandomItemChanceType"] = 2
	tTreasureBox_BallData["CompoundReward"][3008708][1]["ItemChance"] = 2000
	tTreasureBox_BallData["CompoundReward"][3008708][1]["Item_1"] =  3008709

	-- 30.00%	600分钟经验/300点修行值
	-- 改为35.00%	600分钟经验/300点修行值
	tTreasureBox_BallData["CompoundReward"][3008708][2] = {}
	tTreasureBox_BallData["CompoundReward"][3008708][2]["RandomItemChanceType"] = 2
	tTreasureBox_BallData["CompoundReward"][3008708][2]["ItemChance"] = 3500
	tTreasureBox_BallData["CompoundReward"][3008708][2]["Item_1"] =  4
	tTreasureBox_BallData["CompoundReward"][3008708][2]["Num"] = 600
	
	-- 30.00%	300点气力值
	-- 改为35.00%	300点气力值
	tTreasureBox_BallData["CompoundReward"][3008708][3] = {}
	tTreasureBox_BallData["CompoundReward"][3008708][3]["RandomItemChanceType"] = 2
	tTreasureBox_BallData["CompoundReward"][3008708][3]["ItemChance"] = 3500
	tTreasureBox_BallData["CompoundReward"][3008708][3]["Item_1"] =  12
	tTreasureBox_BallData["CompoundReward"][3008708][3]["Num"] = 300
	
	-- 10.00%	秘制免费修炼丹*2
	tTreasureBox_BallData["CompoundReward"][3008708][4] = {}
	tTreasureBox_BallData["CompoundReward"][3008708][4]["RandomItemChanceType"] = 2
	tTreasureBox_BallData["CompoundReward"][3008708][4]["ItemChance"] = 1000
	tTreasureBox_BallData["CompoundReward"][3008708][4]["Item_1"] =  3002926
	tTreasureBox_BallData["CompoundReward"][3008708][4]["Num"] = 2
	tTreasureBox_BallData["CompoundReward"][3008708][4]["NAttr"] = "0 2"

	
	--满级替代奖励数据
		-- 2级下标：灵珠
		-- 3级下标：随机到的物品id
	--护心丹
	tTreasureBox_BallData["MaxLev"] = {}
	tTreasureBox_BallData["MaxLev"][3008706] = {}
	tTreasureBox_BallData["MaxLev"][3008706][723700] ={}
	tTreasureBox_BallData["MaxLev"][3008706][723700]["Item_1"] = 3002029
	tTreasureBox_BallData["MaxLev"][3008706][723700]["NAttr"] = "0 1 0 0 1"

	--15点修行值
	tTreasureBox_BallData["MaxLev"][3008706][4] ={}
	tTreasureBox_BallData["MaxLev"][3008706][4]["Item_1"] = 6
	tTreasureBox_BallData["MaxLev"][3008706][4]["Num"] = 15
	
	--60点修行值
	tTreasureBox_BallData["MaxLev"][3008707] = {}
	tTreasureBox_BallData["MaxLev"][3008707][4] ={}
	tTreasureBox_BallData["MaxLev"][3008707][4]["Item_1"] = 6
	tTreasureBox_BallData["MaxLev"][3008707][4]["Num"] = 60
	
	--300点修行值
	tTreasureBox_BallData["MaxLev"][3008708] = {}
	tTreasureBox_BallData["MaxLev"][3008708][4] ={}
	tTreasureBox_BallData["MaxLev"][3008708][4]["Item_1"] = 6
	tTreasureBox_BallData["MaxLev"][3008708][4]["Num"] = 300

--宝箱奖励数据
local tTreasureBox_BoxData = {}
	--每日奖励
	tTreasureBox_BoxData[3008710] = {}
	tTreasureBox_BoxData[3008710]["OpenAward"] = {}
	tTreasureBox_BoxData[3008710]["OpenAward"]["ExpTime"] = 100 --经验
	
	tTreasureBox_BoxData[3008711] = {}
	tTreasureBox_BoxData[3008711]["OpenAward"] = {}
	tTreasureBox_BoxData[3008711]["OpenAward"]["ExpTime"] = 200 --经验
	
	tTreasureBox_BoxData[3008712] = {}
	tTreasureBox_BoxData[3008712]["OpenAward"] = {}
	tTreasureBox_BoxData[3008712]["OpenAward"]["ExpTime"] = 300 --经验
	
	tTreasureBox_BoxData[3008713] = {}
	tTreasureBox_BoxData[3008713]["OpenAward"] = {}
	tTreasureBox_BoxData[3008713]["OpenAward"]["ExpTime"] = 400 --经验
	
	tTreasureBox_BoxData[3008714] = {}
	tTreasureBox_BoxData[3008714]["OpenAward"] = {}
	tTreasureBox_BoxData[3008714]["OpenAward"]["ExpTime"] = 500 --经验
	
	tTreasureBox_BoxData[3008715] = {}
	tTreasureBox_BoxData[3008715]["OpenAward"] = {}
	tTreasureBox_BoxData[3008715]["OpenAward"]["ExpTime"] = 600 --经验
	
	tTreasureBox_BoxData[3008716] = {}
	tTreasureBox_BoxData[3008716]["OpenAward"] = {}
	tTreasureBox_BoxData[3008716]["OpenAward"]["ExpTime"] = 700 --经验
	
	tTreasureBox_BoxData[3008717] = {}
	tTreasureBox_BoxData[3008717]["OpenAward"] = {}
	tTreasureBox_BoxData[3008717]["OpenAward"]["ExpTime"] = 800 --经验
	
	tTreasureBox_BoxData[3008718] = {}
	tTreasureBox_BoxData[3008718]["OpenAward"] = {}
	tTreasureBox_BoxData[3008718]["OpenAward"]["Item"] = 3008709 --神灵珠*1
	
	--进阶奖励(天石)
	tTreasureBox_BoxData[3008710]["NextAward"] = 0   --赠点天石
	tTreasureBox_BoxData[3008711]["NextAward"] = 50   --赠点天石
	tTreasureBox_BoxData[3008712]["NextAward"] = 100  --赠点天石
	tTreasureBox_BoxData[3008713]["NextAward"] = 150  --赠点天石
	tTreasureBox_BoxData[3008714]["NextAward"] = 200  --赠点天石
	tTreasureBox_BoxData[3008715]["NextAward"] = 250  --赠点天石
	tTreasureBox_BoxData[3008716]["NextAward"] = 300  --赠点天石
	tTreasureBox_BoxData[3008717]["NextAward"] = 350  --赠点天石
	tTreasureBox_BoxData[3008718]["NextAward"] = 400  --赠点天石

	--喂养经验奖励（满级给经验一半的修行值）
	tTreasureBox_BoxData["FeedExp"] = {}
	tTreasureBox_BoxData["FeedExp"][0] = 0		-- 0次
	tTreasureBox_BoxData["FeedExp"][1] = 50	-- 1-3次
	tTreasureBox_BoxData["FeedExp"][4] = 100	-- 4-6次
	tTreasureBox_BoxData["FeedExp"][7] = 150	-- 7-9次
	tTreasureBox_BoxData["FeedExp"][10] = 200	-- 10次以上
	
	--喂养随机奖励
	tTreasureBox_BoxData["Feed"] = {}
	------- 1-3次 0转，1转
	tTreasureBox_BoxData["Feed"][1] = {}
	tTreasureBox_BoxData["Feed"][1][1] ={}
	tTreasureBox_BoxData["Feed"][1][1]["ItemChanceSum"] = 10000
	--聚神丹（赠） 16%
	tTreasureBox_BoxData["Feed"][1][1][1] = {}
	tTreasureBox_BoxData["Feed"][1][1][1]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][1][1]["ItemChance"] = 1600
	tTreasureBox_BoxData["Feed"][1][1][1]["Item_1"] =  723700	
	tTreasureBox_BoxData["Feed"][1][1][1]["Zeng"] = 3
	tTreasureBox_BoxData["Feed"][1][1][1]["NAttr"] = "0 0 3"
	
	-- 玄灵秘录（赠）*4	16%
	tTreasureBox_BoxData["Feed"][1][1][2] = {}
	tTreasureBox_BoxData["Feed"][1][1][2]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][1][2]["ItemChance"] = 1600
	tTreasureBox_BoxData["Feed"][1][1][2]["Item_1"] =  723341	
	tTreasureBox_BoxData["Feed"][1][1][2]["Num"] = 4
	tTreasureBox_BoxData["Feed"][1][1][2]["Zeng"] = 3
	tTreasureBox_BoxData["Feed"][1][1][2]["NAttr"] = "0 4 3"
	
	-- 小祈愿石（赠）	16%
	tTreasureBox_BoxData["Feed"][1][1][3] = {}
	tTreasureBox_BoxData["Feed"][1][1][3]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][1][3]["ItemChance"] = 1600
	tTreasureBox_BoxData["Feed"][1][1][3]["Item_1"] =  1200000	
	tTreasureBox_BoxData["Feed"][1][1][3]["Zeng"] = 3
	tTreasureBox_BoxData["Feed"][1][1][3]["NAttr"] = "0 0 3"
	
	-- 昆仑雪水（赠）	16%
	tTreasureBox_BoxData["Feed"][1][1][4] = {}
	tTreasureBox_BoxData["Feed"][1][1][4]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][1][4]["ItemChance"] = 1600
	tTreasureBox_BoxData["Feed"][1][1][4]["Item_1"] =  723017	
	tTreasureBox_BoxData["Feed"][1][1][4]["Zeng"] = 3
	tTreasureBox_BoxData["Feed"][1][1][4]["NAttr"] = "0 0 3"
	
	-- 流星卷	16%
	tTreasureBox_BoxData["Feed"][1][1][5] = {}
	tTreasureBox_BoxData["Feed"][1][1][5]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][1][5]["ItemChance"] = 1600
	tTreasureBox_BoxData["Feed"][1][1][5]["Item_1"] =  720027	
	
	-- 龙珠	1%
	tTreasureBox_BoxData["Feed"][1][1][6] = {}
	tTreasureBox_BoxData["Feed"][1][1][6]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][1][6]["ItemChance"] = 100
	tTreasureBox_BoxData["Feed"][1][1][6]["Item_1"] =  1088000
	
	-- 良品随机宝石袋（赠）	15%
	tTreasureBox_BoxData["Feed"][1][1][7] = {}
	tTreasureBox_BoxData["Feed"][1][1][7]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][1][7]["ItemChance"] = 1500
	tTreasureBox_BoxData["Feed"][1][1][7]["Item_1"] =  3003879	
	tTreasureBox_BoxData["Feed"][1][1][7]["Zeng"] = 3
	tTreasureBox_BoxData["Feed"][1][1][7]["NAttr"] = "0 0 3"
	
	-- 记忆宝珠	4%
	tTreasureBox_BoxData["Feed"][1][1][8] = {}
	tTreasureBox_BoxData["Feed"][1][1][8]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][1][8]["ItemChance"] = 400
	tTreasureBox_BoxData["Feed"][1][1][8]["Item_1"] =  720828	
	
	--------1-3次 2转以上
	tTreasureBox_BoxData["Feed"][1][2] ={}
	tTreasureBox_BoxData["Feed"][1][2]["ItemChanceSum"] = 10000
	--通神丹（赠） 18%
	tTreasureBox_BoxData["Feed"][1][2][1] = {}
	tTreasureBox_BoxData["Feed"][1][2][1]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][2][1]["ItemChance"] = 1800
	tTreasureBox_BoxData["Feed"][1][2][1]["Item_1"] =  3003125	
	tTreasureBox_BoxData["Feed"][1][2][1]["Zeng"] = 3
	tTreasureBox_BoxData["Feed"][1][2][1]["NAttr"] = "0 0 3"
	
	-- 免费强炼丹（赠）	18%
	tTreasureBox_BoxData["Feed"][1][2][2] = {}
	tTreasureBox_BoxData["Feed"][1][2][2]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][2][2]["ItemChance"] = 1800
	tTreasureBox_BoxData["Feed"][1][2][2]["Item_1"] =  3003124	
	tTreasureBox_BoxData["Feed"][1][2][2]["Zeng"] = 3
	tTreasureBox_BoxData["Feed"][1][2][2]["NAttr"] = "0 0 3"
	
	-- 究极通神丹（赠）	10%
	tTreasureBox_BoxData["Feed"][1][2][3] = {}
	tTreasureBox_BoxData["Feed"][1][2][3]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][2][3]["ItemChance"] = 1000
	tTreasureBox_BoxData["Feed"][1][2][3]["Item_1"] =  3003126	
	tTreasureBox_BoxData["Feed"][1][2][3]["Zeng"] = 3
	tTreasureBox_BoxData["Feed"][1][2][3]["NAttr"] = "0 0 3"
	
	-- 护心丹	18%
	tTreasureBox_BoxData["Feed"][1][2][4] = {}
	tTreasureBox_BoxData["Feed"][1][2][4]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][2][4]["ItemChance"] = 1800
	tTreasureBox_BoxData["Feed"][1][2][4]["Item_1"] =  3002029	
	tTreasureBox_BoxData["Feed"][1][2][4]["NAttr"] = "0 1 0 0 1"

	-- 流星卷	16%
	tTreasureBox_BoxData["Feed"][1][2][5] = {}
	tTreasureBox_BoxData["Feed"][1][2][5]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][2][5]["ItemChance"] = 1600
	tTreasureBox_BoxData["Feed"][1][2][5]["Item_1"] =  720027	
	
	-- 龙珠	1%
	tTreasureBox_BoxData["Feed"][1][2][6] = {}
	tTreasureBox_BoxData["Feed"][1][2][6]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][2][6]["ItemChance"] = 100
	tTreasureBox_BoxData["Feed"][1][2][6]["Item_1"] =  1088000	
	
	-- 良品随机宝石袋	15%
	tTreasureBox_BoxData["Feed"][1][2][7] = {}
	tTreasureBox_BoxData["Feed"][1][2][7]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][2][7]["ItemChance"] = 1500
	tTreasureBox_BoxData["Feed"][1][2][7]["Item_1"] =  3003876	
	
	-- 20气力	4%
	tTreasureBox_BoxData["Feed"][1][2][8] = {}
	tTreasureBox_BoxData["Feed"][1][2][8]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][1][2][8]["ItemChance"] = 1500
	tTreasureBox_BoxData["Feed"][1][2][8]["Item_1"] =  3006922
	
	------第4-6次喂养
	tTreasureBox_BoxData["Feed"][4] = {}
	tTreasureBox_BoxData["Feed"][4][1] ={}
	tTreasureBox_BoxData["Feed"][4][1]["ItemChanceSum"] = 10000
	
	-- 赤炼石+1*2	7.50%
	tTreasureBox_BoxData["Feed"][4][1][1] = {}
	tTreasureBox_BoxData["Feed"][4][1][1]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][4][1][1]["ItemChance"] = 750
	tTreasureBox_BoxData["Feed"][4][1][1]["Item_1"] =  730001	
	tTreasureBox_BoxData["Feed"][4][1][1]["Num"] = 2
	tTreasureBox_BoxData["Feed"][4][1][1]["NAttr"] = "0 2"
	
	-- 马+1*2	7.50%
	tTreasureBox_BoxData["Feed"][4][1][2] = {}
	tTreasureBox_BoxData["Feed"][4][1][2]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][4][1][2]["ItemChance"] = 750
	tTreasureBox_BoxData["Feed"][4][1][2]["Item_1"] =  723855	
	tTreasureBox_BoxData["Feed"][4][1][2]["Num"] = 2
	tTreasureBox_BoxData["Feed"][4][1][2]["NAttr"] = "0 2"
	
	-- 80万银两	7.50%
	tTreasureBox_BoxData["Feed"][4][1][3] = {}
	tTreasureBox_BoxData["Feed"][4][1][3]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][4][1][3]["ItemChance"] = 750
	tTreasureBox_BoxData["Feed"][4][1][3]["Item_1"] =  723714	
	
	-- 100气力	15.00%
	tTreasureBox_BoxData["Feed"][4][1][4] = {}
	tTreasureBox_BoxData["Feed"][4][1][4]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][4][1][4]["ItemChance"] = 1500
	tTreasureBox_BoxData["Feed"][4][1][4]["Item_1"] =  3002027	
	
	-- 究极通神丹	7.50%
	tTreasureBox_BoxData["Feed"][4][1][5] = {}
	tTreasureBox_BoxData["Feed"][4][1][5]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][4][1][5]["ItemChance"] = 750
	tTreasureBox_BoxData["Feed"][4][1][5]["Item_1"] =  3003126
	
	-- 优质宝石（天地玄除外）	10.00%
	tTreasureBox_BoxData["Feed"][4][1][6] = {}
	tTreasureBox_BoxData["Feed"][4][1][6]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][4][1][6]["ItemChance"] = 1000
	tTreasureBox_BoxData["Feed"][4][1][6]["Item_1"] =  3005569
	
	-- 免费强炼丹*4	10.00%
	tTreasureBox_BoxData["Feed"][4][1][7] = {}
	tTreasureBox_BoxData["Feed"][4][1][7]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][4][1][7]["ItemChance"] = 1000
	tTreasureBox_BoxData["Feed"][4][1][7]["Item_1"] =  3003124
	tTreasureBox_BoxData["Feed"][4][1][7]["Num"] = 4
	tTreasureBox_BoxData["Feed"][4][1][7]["NAttr"] = "0 4"
	
	-- 聚神丹*5	15.00%
	tTreasureBox_BoxData["Feed"][4][1][8] = {}
	tTreasureBox_BoxData["Feed"][4][1][8]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][4][1][8]["ItemChance"] = 1500
	tTreasureBox_BoxData["Feed"][4][1][8]["Item_1"] =  723700
	tTreasureBox_BoxData["Feed"][4][1][8]["Num"] = 5
	tTreasureBox_BoxData["Feed"][4][1][8]["NAttr"] = "0 5"
	
	-- 通神丹*4	10.00%
	tTreasureBox_BoxData["Feed"][4][1][9] = {}
	tTreasureBox_BoxData["Feed"][4][1][9]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][4][1][9]["ItemChance"] = 1000
	tTreasureBox_BoxData["Feed"][4][1][9]["Item_1"] =  3003125
	tTreasureBox_BoxData["Feed"][4][1][9]["Num"] = 4
	tTreasureBox_BoxData["Feed"][4][1][9]["NAttr"] = "0 4"
	
	-- 良品玄元宝石	10.00%
	tTreasureBox_BoxData["Feed"][4][1][10] = {}
	tTreasureBox_BoxData["Feed"][4][1][10]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][4][1][10]["ItemChance"] = 1000
	tTreasureBox_BoxData["Feed"][4][1][10]["Item_1"] =  700072

	-------第7-9次 喂养
	tTreasureBox_BoxData["Feed"][7] = {}
	tTreasureBox_BoxData["Feed"][7][1] ={}
	tTreasureBox_BoxData["Feed"][7][1]["ItemChanceSum"] = 10000

	-- 龙珠	5.0%        
	tTreasureBox_BoxData["Feed"][7][1][1] = {}
	tTreasureBox_BoxData["Feed"][7][1][1]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][7][1][1]["ItemChance"] = 500
	tTreasureBox_BoxData["Feed"][7][1][1]["Item_1"] =  1088000	

	-- 赤炼石+2*2	10.00%
	tTreasureBox_BoxData["Feed"][7][1][2] = {}
	tTreasureBox_BoxData["Feed"][7][1][2]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][7][1][2]["ItemChance"] = 1000
	tTreasureBox_BoxData["Feed"][7][1][2]["Item_1"] =  730002
	tTreasureBox_BoxData["Feed"][7][1][2]["Num"] = 2
	tTreasureBox_BoxData["Feed"][7][1][2]["NAttr"] = "0 2"
	
	-- 马+2*2	10.00%
	tTreasureBox_BoxData["Feed"][7][1][3] = {}
	tTreasureBox_BoxData["Feed"][7][1][3]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][7][1][3]["ItemChance"] = 1000
	tTreasureBox_BoxData["Feed"][7][1][3]["Item_1"] =  3001414
	tTreasureBox_BoxData["Feed"][7][1][3]["Num"] = 2
	tTreasureBox_BoxData["Feed"][7][1][3]["NAttr"] = "0 2"
	
	-- 180万银两	15.00%
	tTreasureBox_BoxData["Feed"][7][1][4] = {}
	tTreasureBox_BoxData["Feed"][7][1][4]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][7][1][4]["ItemChance"] = 1500
	tTreasureBox_BoxData["Feed"][7][1][4]["Item_1"] =  723716
	
	-- 300气力	15.00%
	tTreasureBox_BoxData["Feed"][7][1][5] = {}
	tTreasureBox_BoxData["Feed"][7][1][5]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][7][1][5]["ItemChance"] = 1500
	tTreasureBox_BoxData["Feed"][7][1][5]["Item_1"] =  3008305
	
	-- 良品天怒宝石	5.00%
	tTreasureBox_BoxData["Feed"][7][1][6] = {}
	tTreasureBox_BoxData["Feed"][7][1][6]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][7][1][6]["ItemChance"] = 500
	tTreasureBox_BoxData["Feed"][7][1][6]["Item_1"] =  700102
	
	-- 良品地灵宝石	5.00%
	tTreasureBox_BoxData["Feed"][7][1][7] = {}
	tTreasureBox_BoxData["Feed"][7][1][7]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][7][1][7]["ItemChance"] = 500
	tTreasureBox_BoxData["Feed"][7][1][7]["Item_1"] =  700122
	
	-- 天道酬勤卷轴	10.00%
	tTreasureBox_BoxData["Feed"][7][1][8] = {}
	tTreasureBox_BoxData["Feed"][7][1][8]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][7][1][8]["ItemChance"] = 1000
	tTreasureBox_BoxData["Feed"][7][1][8]["Item_1"] =  3001407
	
	-- 造化天书	10.00%
	tTreasureBox_BoxData["Feed"][7][1][9] = {}
	tTreasureBox_BoxData["Feed"][7][1][9]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][7][1][9]["ItemChance"] = 1000
	tTreasureBox_BoxData["Feed"][7][1][9]["Item_1"] =  723342
	
	-- 究极通神丹*3	15.00%
	tTreasureBox_BoxData["Feed"][7][1][10] = {}
	tTreasureBox_BoxData["Feed"][7][1][10]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][7][1][10]["ItemChance"] = 1500
	tTreasureBox_BoxData["Feed"][7][1][10]["Item_1"] =  3003126
	tTreasureBox_BoxData["Feed"][7][1][10]["Num"] = 3
	tTreasureBox_BoxData["Feed"][7][1][10]["NAttr"] = "0 3"
	
	-----10次以上喂养
	tTreasureBox_BoxData["Feed"][10] = {}
	tTreasureBox_BoxData["Feed"][10][1] ={}
	tTreasureBox_BoxData["Feed"][10][1]["ItemChanceSum"] = 10000

	-- 龙珠*4	4.0%        
	tTreasureBox_BoxData["Feed"][10][1][1] = {}
	tTreasureBox_BoxData["Feed"][10][1][1]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][10][1][1]["ItemChance"] = 400
	tTreasureBox_BoxData["Feed"][10][1][1]["Item_1"] =  1088000	
	tTreasureBox_BoxData["Feed"][10][1][1]["Num"] = 4
	tTreasureBox_BoxData["Feed"][10][1][1]["NAttr"] = "0 4"
	
	-- 赤炼石+4*2	5.00%
	tTreasureBox_BoxData["Feed"][10][1][2] = {}
	tTreasureBox_BoxData["Feed"][10][1][2]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][10][1][2]["ItemChance"] = 500
	tTreasureBox_BoxData["Feed"][10][1][2]["Item_1"] =  730004	
	tTreasureBox_BoxData["Feed"][10][1][2]["Num"] = 2
	tTreasureBox_BoxData["Feed"][10][1][2]["NAttr"] = "0 2"
	
	-- 马+5	5.00%
	tTreasureBox_BoxData["Feed"][10][1][3] = {}
	tTreasureBox_BoxData["Feed"][10][1][3]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][10][1][3]["ItemChance"] = 500
	tTreasureBox_BoxData["Feed"][10][1][3]["Item_1"] =  729862	
	
	-- 2000万银两	15.00%
	tTreasureBox_BoxData["Feed"][10][1][4] = {}
	tTreasureBox_BoxData["Feed"][10][1][4]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][10][1][4]["ItemChance"] = 1500
	tTreasureBox_BoxData["Feed"][10][1][4]["Item_1"] =  723718
	
	-- 3000气力	15.00%
	tTreasureBox_BoxData["Feed"][10][1][5] = {}
	tTreasureBox_BoxData["Feed"][10][1][5]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][10][1][5]["ItemChance"] = 1500
	tTreasureBox_BoxData["Feed"][10][1][5]["Item_1"] =  3005129
	
	-- 良品天怒宝石*3	12.00%
	tTreasureBox_BoxData["Feed"][10][1][6] = {}
	tTreasureBox_BoxData["Feed"][10][1][6]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][10][1][6]["ItemChance"] = 1200
	tTreasureBox_BoxData["Feed"][10][1][6]["Item_1"] =  700102	
	tTreasureBox_BoxData["Feed"][10][1][6]["Num"] = 3
	tTreasureBox_BoxData["Feed"][10][1][6]["NAttr"] = "0 3"
	
	-- 良品地灵宝石*3	12.00%
	tTreasureBox_BoxData["Feed"][10][1][7] = {}
	tTreasureBox_BoxData["Feed"][10][1][7]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][10][1][7]["ItemChance"] = 1200
	tTreasureBox_BoxData["Feed"][10][1][7]["Item_1"] =  700122	
	tTreasureBox_BoxData["Feed"][10][1][7]["Num"] = 3
	tTreasureBox_BoxData["Feed"][10][1][7]["NAttr"] = "0 3"
	
	-- 优质玄元宝石*2	12.00%
	tTreasureBox_BoxData["Feed"][10][1][8] = {}
	tTreasureBox_BoxData["Feed"][10][1][8]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][10][1][8]["ItemChance"] = 1200
	tTreasureBox_BoxData["Feed"][10][1][8]["Item_1"] =  700073	
	tTreasureBox_BoxData["Feed"][10][1][8]["Num"] = 2
	tTreasureBox_BoxData["Feed"][10][1][8]["NAttr"] = "0 2"
	
	-- 固化石	10.00%
	tTreasureBox_BoxData["Feed"][10][1][9] = {}
	tTreasureBox_BoxData["Feed"][10][1][9]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][10][1][9]["ItemChance"] = 1000
	tTreasureBox_BoxData["Feed"][10][1][9]["Item_1"] =  723694	
	
	-- 八宝护气丹	10.00%
	tTreasureBox_BoxData["Feed"][10][1][10] = {}
	tTreasureBox_BoxData["Feed"][10][1][10]["RandomItemChanceType"] = 2
	tTreasureBox_BoxData["Feed"][10][1][10]["ItemChance"] = 1000
	tTreasureBox_BoxData["Feed"][10][1][10]["Item_1"] =  3005360	
	
------怪物掉落数据------------
	tTreasureBox_MonsterDropData = {}
	--极乐鸟
	tTreasureBox_MonsterDropData[7974] = {}
	--地灵珠
	tTreasureBox_MonsterDropData[7974]["ItemId"] = 3008706
	--总概率10000
	tTreasureBox_MonsterDropData[7974]["ItemChanceSum"] = 10000
	--掉落概率
	tTreasureBox_MonsterDropData[7974]["Chance"] = 500
	--组队每增加1人 概率提高基数
	tTreasureBox_MonsterDropData[7974]["OneChance"] = 50
	
	--幻灵神矿
	tTreasureBox_MonsterDropData[7975] = {}
	tTreasureBox_MonsterDropData[7975]["ItemChanceSum"] = 10000
	
	--地灵珠 75%
	tTreasureBox_MonsterDropData[7975][1] = {}
	tTreasureBox_MonsterDropData[7975][1]["RandomItemChanceType"] = 2
	tTreasureBox_MonsterDropData[7975][1]["ItemChance"] = 7500
	tTreasureBox_MonsterDropData[7975][1]["Item_1"] =  3008706

	--天灵珠 24%
	tTreasureBox_MonsterDropData[7975][2] = {}
	tTreasureBox_MonsterDropData[7975][2]["RandomItemChanceType"] = 2
	tTreasureBox_MonsterDropData[7975][2]["ItemChance"] = 2400
	tTreasureBox_MonsterDropData[7975][2]["Item_1"] =  3008707
	
	--仙灵珠 1%
	tTreasureBox_MonsterDropData[7975][3] = {}
	tTreasureBox_MonsterDropData[7975][3]["RandomItemChanceType"] = 2
	tTreasureBox_MonsterDropData[7975][3]["ItemChance"] = 100
	tTreasureBox_MonsterDropData[7975][3]["Item_1"] =  3008708

	tTreasureBox_MonsterDropData["Monster"] = {}
	tTreasureBox_MonsterDropData["Monster"]["Bird"] = 7974
	tTreasureBox_MonsterDropData["Monster"]["mineral"] = 7975
	
--背包信数据
local tTreasureBox_Letter ={}
	--美服时间
	tTreasureBox_Letter[1] = "2016-03-17 00:00 2016-03-31 23:59"
	--欧服时间
	tTreasureBox_Letter[2] = "2016-03-17 00:00 2016-04-01 08:00"
	
	--神谕
	tTreasureBox_Letter[3008705] = {}
	tTreasureBox_Letter[3008705]["ActivityTime"] = "2016-03-17 00:00 2016-03-31 23:59"
	tTreasureBox_Letter[3008705]["EventType"] = 141
	tTreasureBox_Letter[3008705]["DataType"] = 90
	tTreasureBox_Letter[3008705]["RewardData"] = 1
	tTreasureBox_Letter[3008705]["RewardItem"] = 3008705
	tTreasureBox_Letter[3008705]["RewardAttr"] = "0 1"
	tTreasureBox_Letter[3008705]["NeedLevel"] = 80
	tTreasureBox_Letter[3008705]["NeedMetempsychosis"] = 0
	
	tTreasureBox_Letter[3008705]["ExpTime"] = 30
	tTreasureBox_Letter[3008705]["Cultivation"] = 15
	tTreasureBox_Letter[3008705]["Pathfind"] = {}
	tTreasureBox_Letter[3008705]["Pathfind"]["PosX"] = 322
	tTreasureBox_Letter[3008705]["Pathfind"]["PosY"] = 248
	tTreasureBox_Letter[3008705]["Pathfind"]["MapId"] = 1002
	tTreasureBox_Letter[3008705]["Pathfind"]["NpcId"] = 19156
	
	--初级宝箱
	tTreasureBox_Letter[3008710] = {}
	tTreasureBox_Letter[3008710]["ActivityTime"] = "2016-03-17 00:00 2016-03-31 23:59"
	tTreasureBox_Letter[3008710]["EventType"] = 141
	tTreasureBox_Letter[3008710]["DataType"] = 98
	tTreasureBox_Letter[3008710]["RewardData"] = 1
	tTreasureBox_Letter[3008710]["RewardItem"] = 3008710
	tTreasureBox_Letter[3008710]["RewardAttr"] = "0 1"
	tTreasureBox_Letter[3008710]["NeedLevel"] = 80
	tTreasureBox_Letter[3008710]["NeedMetempsychosis"] = 0
	
local sTreasureBox_Effect = "angelwing"  		--领取奖励/获得灵珠
local sTreasureBox_EffectComBall = "zf2-e280" 	--合成灵珠
local sTreasureBox_EffectFeed = "eidolon"		--喂养宝箱
local sTreasureBox_EffectGrow = "zf2-e300"		--百宝箱升级
local sTreasureBox_EffectMoveGo = "movego" 		--进入仙灵矿场。光效
local sTreasureBox_EffectMoveBack = "moveback" 	--离开仙灵矿场光效

-------------------------------------------逻辑--------------------------------------------
--上线触发添加背包信
function TreasureBox_Online()
	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	if tTreasureBox_Letter[crossId] then
		tTreasureBox_Letter[3008705]["ActivityTime"] = tTreasureBox_Letter[crossId]
		tTreasureBox_Letter[3008710]["ActivityTime"] = tTreasureBox_Letter[crossId]
		--添加背包信
		BackpackLetter_Condition(tTreasureBox_Letter[3008705])
		--添加宝箱
		-- 如果背包中已存在宝箱，则不给
		for i,v in pairs(tTreasureBox_BoxType) do
			if Item_ChkItem(v) then
				return
			end
		end
		BackpackLetter_Condition(tTreasureBox_Letter[3008710])
	end
end

--随机规则
function TreasureBox_Match_Rule(nMinIndex,nMaxIndex)
	if nMinIndex < 0.1 then
		nMinIndex = nMinIndex *100
		nMaxIndex = nMaxIndex *100
	elseif  nMinIndex < 1 then
		nMinIndex = nMinIndex * 10
		nMaxIndex = nMaxIndex * 10
	end
	
	local nNum = math.random(1,nMaxIndex)
	if nNum <= nMinIndex then
		return true
	else
		return false
	end
end

----活动面板寻路到npc
function TreasureBox_GoToNpc()
	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	
	--是否在活动时间内
	if not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"]) then
		return 
	end
	
	local nUserMapId =Get_UserMapId()
	
	local bInCity = false
	--在主城和市场
	for i=1,6 do
		if nUserMapId == tTreasureBox_ActivityData["MapCanTran"][i] then
			bInCity = true
			break
		end
	end
	
	local nMapId = tTreasureBox_ActivityData["TwinCity"]["Map"]
	local nCellx = tTreasureBox_ActivityData["TwinCity"]["Xpos"]
	local nCelly = tTreasureBox_ActivityData["TwinCity"]["Ypos"]
	local nRange = tTreasureBox_ActivityData["TwinCity"]["Bound"]
	local nNpcId = tTreasureBox_ActivityData["TwinCity"]["NpcId"]
	
	--在各大主城，则自动寻路
	if bInCity == true then
		Sys_GotoSomeWhere(nCellx,nCelly,nMapId,nNpcId)
	else
		--1010提示
		User_TalkChannel2005(tTreasureBox_Text["NotFindWay"])
	end
end

--领取本服排名奖励。
function TreasureBox_GetLocalRankReward(nNpcId)
	--是否在领奖时间内
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	if tTreasureBox_ActivityTime["GetRankRewardTime"][crossId] then
		if not Sys_ChkFullTime(tTreasureBox_ActivityTime["GetRankRewardTime"][crossId]) then
			--过了领奖时间
			LinkNpcGossipFunc_New(nNpcId,"4-3")
			return 
		end
	else
		return 
	end
	--判断是否是前10名
	local nFlag = 0
	for k,v in pairs(tTreasureBox_ActivityData["GlobalRank"]) do
		for i = 1, 5 do 
			if  Get_SysDynaGlobalData(v,i) == Get_UserId() then
				nFlag = i+(k-1)*5
				break
			end
		end
	end
	--不在前10名中
	if  nFlag == 0 then	
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return 
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tTreasureBox_ActivityData["SpaceOne"]) then
		--背包空间不足对白
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][1]
	--是否已领取过
	if Task_ChkStcValue(nEvent,nType,"==",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--本服养成排行奖励
	if tTreasureBox_LocalRankReward[nFlag] then
		--掩码设置成已领取
		local nEvent = tTreasureBox_StcId["nEvent"]
		local nType = tTreasureBox_StcId["nData"][1]
		Task_SetStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		local tData = tTreasureBox_LocalRankReward[nFlag]
		local sLogText = tTreasureBox_Log["LocalRank"] or ""
		local sItemName = ""
		--气力值
		if tData["Power"] then
			User_AddStrengthValue(tData["Power"])
			sItemName = string.format(tTreasureBox_Text["Power"],tData["Power"])
			--打LOG
			Sys_SaveActionFestivalLog(string.format(sLogText,12,tonumber(tData["Power"])))
		end
		--物品
		if tData["Item"] then
			Item_AddNewItem(tData["Item"]["nItemId"],tData["Item"]["NAttr"])
			if tData["Item"]["nDay"] then
				sItemName = sItemName..","..tData["Item"]["nDay"]..tTreasureBox_Text["Day"]..Get_ItemtypeName(tData["Item"]["nItemId"])
			else
				sItemName = sItemName..","..tTreasureBox_Text["Forever"]..Get_ItemtypeName(tData["Item"]["nItemId"])
			end
			--打LOG
			Sys_SaveActionFestivalLog(string.format(sLogText,tonumber(tData["Item"]["nItemId"]),1))
		end
		--光效
		User_EffectAdd("self",sTreasureBox_Effect)
		--领取成功对白
		tNpcGossip[19156]["Text251"] = string.format(tTreasureBox_Text[19156]["Text251"],tonumber(nFlag),sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-5")
	end
end

--全服养成排行榜。    （弹出活动页面）
function TreasureBox_CheckAllRanks(nNpcId)
	local sWebAddress = tTreasureBox_ActivityData["WebAddress"]
	User_SendWebPage(sWebAddress)
end

--领取昨日冠军奖励。
function TreasureBox_GetLastReward(nNpcId,sTime)
	if not Sys_ChkFullTime(sTime) then
		--时间不满足
		return 
	end
	
	--是否是昨日冠军
	if Get_SysDynaGlobalData(tTreasureBox_ActivityData["GlobalLastFirst"],0) ~= Get_UserId() then
		--不是冠军
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tTreasureBox_ActivityData["SpaceOne"]) then
		--背包空间不足对白
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][4]
	--隔天清掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	
	--是否已领取
	if Task_ChkStcValue(nEvent,nType,"==",1) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--掩码设置成已领取
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][4]
	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	Item_AddNewItem(tTreasureBox_LastReward["nItem"],tTreasureBox_LastReward["NAttr"])
	--打log
	Sys_SaveActionFestivalLog(string.format(tTreasureBox_Log["LastReward"],tonumber(tTreasureBox_LastReward["nItem"]),1))
	--领取成功对白
	LinkNpcGossipFunc_New(nNpcId,"3-3")
	--2005提示
	User_TalkChannel2005(tTreasureBox_Text["LastReward"])
	--光效
	User_EffectAdd("self",sTreasureBox_Effect)
end

--掩码+给宝箱操作
function SetStc_GetBox(nNpcId,sNextWord,nTs)
	--掩码+1
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][5]
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	--取玩家总成长值
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][2]
	local nPlayerAllGrow = Get_UserStatisticValue(nEvent,nType)
	local nBoxItem = tTreasureBox_BoxType[1]
	for i = tTreasureBox_BoxType[9] , tTreasureBox_BoxType[1] ,-1 do
		if nPlayerAllGrow >= tTreasureBox_BallData["NextGrow"][i] then
			nBoxItem = tTreasureBox_BallData["NextGrowBox"][tTreasureBox_BallData["NextGrow"][i]]
			break
		end
	end
	--给原来对应的百宝箱
	Item_AddItem(nBoxItem)
	local sItemName = Get_ItemtypeName(nBoxItem)
	--打log
	Sys_SaveActionFestivalLog(string.format(tTreasureBox_Log["ReGetBox"],tonumber(nTs),tonumber(nBoxItem)))
	--接对白
	if sNextWord == "2-12" then
		tNpcGossip[19156]["Text2121"] = string.format(tTreasureBox_Text[19156]["Text2121"],Get_UserStatisticValue(nEvent,nType))
	end
	LinkNpcGossipFunc_New(nNpcId,sNextWord)
	User_TalkChannel2005(string.format(tTreasureBox_Text["ReGet"],sItemName))
end

--补领百宝箱。
function TreasureBox_ReAskBox(nNpcId)
	--活动时间
	--取分服Id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	if tTreasureBox_ActivityTime[crossId] then
		--不在活动时间
		if  not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"]) then
			return 
		end
	else
		return 
	end
	
	--检测背包中是否有百宝箱
	if Item_ChkMulItem(tTreasureBox_BoxType[1],tTreasureBox_BoxType[9],1) then
		--背包中有宝箱
		LinkNpcGossipFunc_New(nNpcId,"2-10")
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tTreasureBox_ActivityData["SpaceOne"]) then
		--背包空间不足对白
		LinkNpcGossipFunc_New(nNpcId,"2-11")
		return
	end
	
	--已免费补领次数
	--只能补领1次
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][5]
	if Get_UserStatisticValue(nEvent,nType) >= 1 then
		--已免费补领过
		LinkNpcGossipFunc_New(nNpcId,"3-12")
		return
	end
	--第1次免费
	--掩码+给宝箱操作
	SetStc_GetBox(nNpcId,"2-12",0)
end

--花天石补领宝箱
function TreasureBox_UseTSGetLastReward(nNpcId)
	--活动时间
	--取分服Id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	if tTreasureBox_ActivityTime[crossId] then
		--不在活动时间
		if  not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"]) then
			return 
		end
	else
		return 
	end
	
	--检测背包中是否有百宝箱
	if Item_ChkMulItem(tTreasureBox_BoxType[1],tTreasureBox_BoxType[9],1) then
		--背包中有宝箱
		LinkNpcGossipFunc_New(nNpcId,"3-9")
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tTreasureBox_ActivityData["SpaceOne"]) then
		--背包空间不足对白
		LinkNpcGossipFunc_New(nNpcId,"2-11")
		return
	end
	
	--检测是否有足够天石
	if Get_UserEMoney() < tTreasureBox_ActivityData["TS"] then
		--天石不足
		LinkNpcGossipFunc_New(nNpcId,"3-10")
		return
	end
	
	--扣除50天石
	if User_AddEMoney(-tTreasureBox_ActivityData["TS"]) then
		--打emoneylog
		Sys_SaveEmoneyBuy(tTreasureBox_EmoneyLog["TsBox"])	
		--掩码+给宝箱操作
		SetStc_GetBox(nNpcId,"3-11",tTreasureBox_ActivityData["TS"])
	else
		--扣天石失败
		LinkNpcGossipFunc_New(nNpcId,"3-10")
	end
	
end

--点击宝箱时，第一层对白显示数据处理
function TreasureBox_OpenBoxFirstWordCheck(nItemId)
	--是否是至尊宝箱
	local bMaxBox = false
	if nItemId == tTreasureBox_BoxType[9] then
		bMaxBox = true 
	end
	--玩家是否上排行榜
	local nRankFlag = 0
	local nIndex = 0
	for j = 1,2  do
		for i= 1, 5 do
			local nGolbalId = tTreasureBox_ActivityData["GlobalRank"][j]
			local nPlayerId = Get_SysDynaGlobalData(nGolbalId,i)
			nIndex = nIndex +1
			if 	nPlayerId == Get_UserId() then
				nRankFlag = nIndex
				break
			end
		end
	end
	--获取玩家当前阶段成长值
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][2]
	local nAllGrow = Get_UserStatisticValue(nEvent,nType) --玩家总成长值
	local nNowBoxAllGrow = tTreasureBox_BallData["NextGrow"][nItemId] --当前宝箱所需总成长值
	local nNowStepGrow = nAllGrow - nNowBoxAllGrow --当前阶段成长值
	local nNextGrow = 0 --下一阶宝箱所需成长值
	
	--至尊宝箱玩家
	if bMaxBox then
		if nRankFlag > 0 then
			--上榜玩家
			tItem[3008710]["Text1-1"] = {111,112,114}
			tItem[3008710]["Text114"] = string.format(tTreasureBox_Text[3008710]["Text114"],tostring(nNowStepGrow),tostring(nRankFlag))
		else
			tItem[3008710]["Text1-1"] = {111,112,115}
			tItem[3008710]["Text115"] = string.format(tTreasureBox_Text[3008710]["Text115"],tostring(nNowStepGrow))
		end
	else
		--非至尊宝箱玩家
		nNextGrow = tTreasureBox_BallData["NextGrow"][nItemId+1] - tTreasureBox_BallData["NextGrow"][nItemId]		
		if nRankFlag > 0 then
			--上榜玩家
			tItem[3008710]["Text1-1"] = {111,112,116}
			tItem[3008710]["Text116"] = string.format(tTreasureBox_Text[3008710]["Text116"],tostring(nNowStepGrow),tostring(nNextGrow),tostring(Get_UserStatisticValue(tTreasureBox_StcId["nEvent"],tTreasureBox_StcId["nData"][2])),tostring(nRankFlag))
		else
			tItem[3008710]["Text1-1"] = {111,112,113}
			tItem[3008710]["Text113"] = string.format(tTreasureBox_Text[3008710]["Text113"],tostring(nNowStepGrow),tostring(nNextGrow),tostring(Get_UserStatisticValue(tTreasureBox_StcId["nEvent"],tTreasureBox_StcId["nData"][2])))
		end
	end
	tItem[nItemId]["OptionFunc1"] = "tTreasureBox_OpenBoxDayWord</N>"..nItemId
	tItem[nItemId]["OptionFunc2"] = "tTreasureBox_FeedBox</N>"..nItemId
end

--返回双龙城
function TreasureBox_ReturnToTwinCity(nNpcId)
	local nMapId = tTreasureBox_ActivityData["TwinCity"]["Map"]
	local nPosX = tTreasureBox_ActivityData["TwinCity"]["Xpos"]
	local nPosY = tTreasureBox_ActivityData["TwinCity"]["Ypos"]
	local nBound = tTreasureBox_ActivityData["TwinCity"]["Bound"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBound,nBound)
	--2005提示
	User_TalkChannel2005(tTreasureBox_Text["OutOfMap"])
	--离开光效
	User_EffectAdd("self",sTreasureBox_EffectMoveBack)
end

--进入百宝园
function TreasureBox_EnterMap(nNpcId)
	local nMapId = tTreasureBox_ActivityData["BoxCity"]["Map"]
	local nPosX = tTreasureBox_ActivityData["BoxCity"]["Xpos"]
	local nPosY = tTreasureBox_ActivityData["BoxCity"]["Ypos"]
	local nBound = tTreasureBox_ActivityData["BoxCity"]["Bound"]
	if Get_NpcMapID(nNpcId) ~= Get_UserMapId() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBound,nBound)
	--2005提示
	User_TalkChannel2005(tTreasureBox_Text["EnterMap"])
	--进场光效
	User_EffectAdd("self",sTreasureBox_EffectMoveGo)
end

--------------------------------------------物品逻辑---------------------------------------
--背包信使用
function tTreasureBox_OpenBagLetter(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--取全局表里面的分服id
		local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
		if tTreasureBox_Letter[crossId] then
			tTreasureBox_Letter[nItemId]["ActivityTime"] = tTreasureBox_Letter[crossId]
		end
		--判断活动时间
		if tTreasureBox_Letter[nItemId]["ActivityTime"] and (not Sys_ChkFullTime(tTreasureBox_Letter[nItemId]["ActivityTime"])) then
			--不在活动时间内
			User_TalkChannel2005(tTreasureBox_Text[nItemId]["TimeOut"])
			return
		end
		--玩家等级
		local nLevel = Get_UserLevel()
		-- 判断是否满级
		if nLevel < G_User_MaxLev then
			local nAddExp = tTreasureBox_Letter[nItemId]["ExpTime"]
			
			User_AddExpTime(nAddExp)
			Sys_SaveActionFestivalLog(string.format("0,0,%d,1,12000106,2,4,%d",nItemId,nAddExp))

			User_TalkChannel2005(tTreasureBox_Text[nItemId]["Exp"])
		else
			if tTreasureBox_Letter[nItemId]["Cultivation"] then
				User_AddCultivation(tTreasureBox_Letter[nItemId]["Cultivation"])
				Sys_SaveActionFestivalLog(string.format("0,0,%d,1,12000106,2,6,%d",nItemId,tTreasureBox_Letter[nItemId]["Cultivation"]))
				User_TalkChannel2005(tTreasureBox_Text[nItemId]["Cultivation"])
			end
		end
		
		-- 自动寻路
		if tTreasureBox_Letter[nItemId]["Pathfind"] then 
			local nPosX = tTreasureBox_Letter[nItemId]["Pathfind"]["PosX"]
			local nPosY = tTreasureBox_Letter[nItemId]["Pathfind"]["PosY"]
			local nMapId = tTreasureBox_Letter[nItemId]["Pathfind"]["MapId"]
			local nNpcId = tTreasureBox_Letter[nItemId]["Pathfind"]["NpcId"]
			Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
		end
		
	end
end

--打开宝箱
function tTreasureBox_OpenBox(nItemId)
	--取全局表里面的分服id
	if not Item_ChkItem(nItemId) then
		return
	end
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--判断活动时间
	if tTreasureBox_ActivityTime[crossId]["NowTime"] and (not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"])) then
		--不在活动时间内
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tTreasureBox_Text["ItemOutTime"])
		end
		return
	end
	local sBoxNmae = Get_ItemtypeName(nItemId) 	--宝箱名字
	if nItemId == tTreasureBox_BoxType[9] then
		--至尊宝箱显示奖励 神灵珠
		tItem[nItemId]["Text111"] = string.format(tTreasureBox_Text[3008710]["Text117"],sBoxNmae)
	else
		--其他宝箱显示奖励 经验/修行值 ，气力值
		tItem[nItemId]["Text111"] = string.format(tTreasureBox_Text[3008710]["Text111"],sBoxNmae)
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--打开宝箱-->对白
function tTreasureBox_OpenBoxDayWord(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end

	--掩码判断
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][6]
	--隔天清掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	--是否已领取过
	if Task_ChkStcValue(nEvent,nType,"==",1) then
		-- User_TalkChannel2005(tTreasureBox_Text["FailDayReward"])
		LinkItemGossipFunc_New(nItemId,"2-3")
		return
	end
	
	local nAddNumExp = 0		--标记4 经验；标记：6 修行值
	local nExpFlag = 4
	local nAddNumPower = 0		--标记12 气力值
	local nlevel = Get_UserLevel()
	if tTreasureBox_BoxData[nItemId] then
		if tTreasureBox_BoxData[nItemId]["OpenAward"]["ExpTime"] then
			--非满级玩家
			if nlevel < G_User_MaxLev then
				nAddNumExp = tTreasureBox_BoxData[nItemId]["OpenAward"]["ExpTime"]
			else
				nAddNumExp = math.floor(tTreasureBox_BoxData[nItemId]["OpenAward"]["ExpTime"]/2)
				nExpFlag = 6
			end
			--气力值为经验的一半
			nAddNumPower = math.floor(tTreasureBox_BoxData[nItemId]["OpenAward"]["ExpTime"]/2)
		end
		if tTreasureBox_BoxData[nItemId]["OpenAward"]["Item"] then
			-- --直接给奖励
			-- tTreasureBox_OpenBoxDayReward(nItemId,0,0)
			-- return
			tItem[nItemId]["Text2-2"] = {220,223}
			tItem[nItemId]["tOption2-2"] = {17}
			tItem[nItemId]["Text220"] = string.format(tTreasureBox_Text[3008710]["Text220"],Get_ItemtypeName(nItemId))
			tItem[nItemId]["Text223"] = tTreasureBox_Text[3008710]["Text223"]
			tItem[nItemId]["OptionFunc17"] = "tTreasureBox_OpenBoxDayReward</N>"..nItemId.."</N>0</N>0"
			LinkItemGossipFunc_New(nItemId,"2-2")
			return
		end
	end
	if nExpFlag == 4 then
		tItem[nItemId]["Text2-2"] = {220,221}
		tItem[nItemId]["tOption2-2"] = {10,12}
		tItem[nItemId]["Text220"] = string.format(tTreasureBox_Text[3008710]["Text220"],Get_ItemtypeName(nItemId))
		tItem[nItemId]["Text221"] = string.format(tTreasureBox_Text[3008710]["Text221"],tonumber(nAddNumExp),tonumber(nAddNumPower))
		tItem[nItemId]["Option10"] = string.format(tTreasureBox_Text[3008710]["Option10"],tonumber(nAddNumExp))
		tItem[nItemId]["Option12"] = string.format(tTreasureBox_Text[3008710]["Option12"],tonumber(nAddNumPower))
		tItem[nItemId]["OptionFunc10"] = "tTreasureBox_OpenBoxDayReward</N>"..nItemId.."</N>"..nExpFlag.."</N>"..nAddNumExp
		tItem[nItemId]["OptionFunc12"] = "tTreasureBox_OpenBoxDayReward</N>"..nItemId.."</N>12</N>"..nAddNumPower
	
	end
	if nExpFlag == 6 then
		tItem[nItemId]["Text2-2"] = {220,222}
		tItem[nItemId]["tOption2-2"] = {11,12}
		tItem[nItemId]["Text220"] = string.format(tTreasureBox_Text[3008710]["Text220"],Get_ItemtypeName(nItemId))
		tItem[nItemId]["Text222"] = string.format(tTreasureBox_Text[3008710]["Text222"],tonumber(nAddNumExp),tonumber(nAddNumPower))
		tItem[nItemId]["Option11"] = string.format(tTreasureBox_Text[3008710]["Option11"],tonumber(nAddNumExp))
		tItem[nItemId]["Option12"] = string.format(tTreasureBox_Text[3008710]["Option12"],tonumber(nAddNumPower))
		tItem[nItemId]["OptionFunc11"] = "tTreasureBox_OpenBoxDayReward</N>"..nItemId.."</N>"..nExpFlag.."</N>"..nAddNumExp
		tItem[nItemId]["OptionFunc12"] = "tTreasureBox_OpenBoxDayReward</N>"..nItemId.."</N>12</N>"..nAddNumPower
	end
	LinkItemGossipFunc_New(nItemId,"2-2")
end

--领取宝箱每日奖励
function tTreasureBox_OpenBoxDayReward(nItemId,nExpFlag,nAddNum)
	if not Item_ChkItem(nItemId) then
		return
	end

	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--判断活动时间
	if tTreasureBox_ActivityTime[crossId]["NowTime"] and (not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"])) then
		--不在活动时间内
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tTreasureBox_Text["ItemOutTime"])
		end
		return
	end
	
	--判断背包空间
	if nItemId == tTreasureBox_BoxType[9] then
		if not User_CheckLeftSpace(tTreasureBox_ActivityData["SpaceOne"]) then
			--背包空间不足对白
			User_TalkChannel2005(tTreasureBox_Text["DayRewardNoSpace"])
			return
		end
	end
	--掩码判断
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][6]
	--设置掩码
	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	--给奖励
	local sRewardName = ""
	
	if nExpFlag == 4 then
		--给经验
		User_AddExpTime(nAddNum)
		Sys_SaveActionFestivalLog(string.format(tTreasureBox_Log["DayReward"],4,tonumber(nAddNum)))
		sRewardName = string.format(tTreasureBox_Text["Exp"],nAddNum)
		User_TalkChannel2005(string.format(tTreasureBox_Text["DayRewardTip"],sRewardName))
	end
	
	if nExpFlag == 6 then
		--给修行值
		User_AddCultivation(nAddNum)
		Sys_SaveActionFestivalLog(string.format(tTreasureBox_Log["DayReward"],6,tonumber(nAddNum)))
		sRewardName = string.format(tTreasureBox_Text["Cul"],nAddNum)
		User_TalkChannel2005(string.format(tTreasureBox_Text["DayRewardTip"],sRewardName))
	end
	
	if nExpFlag == 12 then
		--给气力值		
		User_AddStrengthValue(nAddNum)
		Sys_SaveActionFestivalLog(string.format(tTreasureBox_Log["DayReward"],12,tonumber(nAddNum)))
		sRewardName = string.format(tTreasureBox_Text["Power"],nAddNum)
		User_TalkChannel2005(string.format(tTreasureBox_Text["DayRewardTip"],sRewardName))
	end
	
	if tTreasureBox_BoxData[nItemId]["OpenAward"]["Item"] then
		--给物品
		sRewardName = Get_ItemtypeName(tTreasureBox_BoxData[nItemId]["OpenAward"]["Item"])
		Item_AddItem(tTreasureBox_BoxData[nItemId]["OpenAward"]["Item"])
		Sys_SaveActionFestivalLog(string.format(tTreasureBox_Log["DayReward"],tonumber(tTreasureBox_BoxData[nItemId]["OpenAward"]["Item"]),1))
		User_TalkChannel2005(string.format(tTreasureBox_Text["DayRewardTip"],sRewardName))
	end
	--emoneyLog
	Sys_SaveEmoneyBuy(tTreasureBox_EmoneyLog["DayReward"])
	--光效
	User_EffectAdd("self",sTreasureBox_Effect)
	
end

--喂养百宝箱对白。
function tTreasureBox_FeedBox(nItemId)
	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--判断活动时间
	if tTreasureBox_ActivityTime[crossId]["NowTime"] and (not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"])) then
		--不在活动时间内
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tTreasureBox_Text["ItemOutTime"])
		end
		return
	end
	
	--检测是否有宝箱
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--获取今日喂养次数
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][7]
	--隔天清掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nTodayTimes = Get_UserStatisticValue(nEvent,nType) + 1
	local nFlag = nTodayTimes
	if nFlag > 10 then
		nFlag = 10
	end
	local sBallName = Get_ItemtypeName(tTreasureBox_FeedBoxBall[nFlag])
	if tTreasureBox_FeedBoxBall[nFlag] == tTreasureBox_FeedBoxBall[1] then
		--需要地灵珠，对白
		local sFormat = string.format(tTreasureBox_Text[3008710]["Text213"],tTreasureBox_Text[3008710][1])
		tItem[nItemId]["Text211"] = string.format(tTreasureBox_Text[3008710]["Text211"],tonumber(nTodayTimes),sFormat)
	elseif tTreasureBox_FeedBoxBall[nFlag] == tTreasureBox_FeedBoxBall[4] then
		--需要天灵珠，对白
		local sFormat = string.format(tTreasureBox_Text[3008710]["Text214"],tTreasureBox_Text[3008710][2])
		tItem[nItemId]["Text211"] = string.format(tTreasureBox_Text[3008710]["Text212"],tonumber(nTodayTimes),sFormat)
	elseif tTreasureBox_FeedBoxBall[nFlag] == tTreasureBox_FeedBoxBall[7] then
		--需要仙灵珠，对白
		local sFormat = string.format(tTreasureBox_Text[3008710]["Text215"],tTreasureBox_Text[3008710][3])
		tItem[nItemId]["Text211"] = string.format(tTreasureBox_Text[3008710]["Text212"],tonumber(nTodayTimes),sFormat)
	elseif tTreasureBox_FeedBoxBall[nFlag] == tTreasureBox_FeedBoxBall[10] then
		--需要神灵珠，对白
		local sFormat = string.format(tTreasureBox_Text[3008710]["Text216"],tTreasureBox_Text[3008710][4])
		-- local sLastballName = Get_ItemtypeName(tTreasureBox_FeedBoxBall[nFlag]-1) --合成灵珠所需上一级灵珠
		tItem[nItemId]["Text211"] = string.format(tTreasureBox_Text[3008710]["Text212"],tonumber(nTodayTimes),sFormat)
	end
	tItem[nItemId]["Option4"] = string.format(tTreasureBox_Text[3008710]["Option4"],sBallName)
	tItem[nItemId]["OptionFunc4"] = "tTreasureBox_FeedBoxCheck</N>"..nItemId
	--接对白
	LinkItemGossipFunc_New(nItemId,"2-1")
end

--更新本服排行榜
function TreasureBox_ReSetLocalRanks(nPlayerAllGrow)
	--检测是否达到上榜条件（成长值达到上品宝箱）
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][2]
	if Get_UserStatisticValue(nEvent,nType) < tTreasureBox_BallData["NextGrow"][3008713] then
		return 
	end
	
	local tRankUserData={}
	--前10名
	local nIndex = 0
	for j = 1,2  do
		for i= 1, 5 do
			local nGolbalId = tTreasureBox_ActivityData["GlobalRank"][j]
			local nPlayerId = Get_SysDynaGlobalData(nGolbalId,i)
			local nGrowUp = Get_SysDynaGlobalDataStr(nGolbalId,i)
			nIndex = nIndex +1
			tRankUserData[nIndex]={}
			tRankUserData[nIndex]["PlayerId"]= nPlayerId
			tRankUserData[nIndex]["nGrowUp"] = nGrowUp == "" and 0 or tonumber(nGrowUp)
		end
	end
	--取排行榜玩家名字
	nIndex = 0
	for j = 1,2 do
		for i= 1, 5 do
			local nGolbalId = tTreasureBox_ActivityData["GlobalRankNmae"][j]
			local sPlayerName = Get_SysDynaGlobalDataStr(nGolbalId,i)
			nIndex = nIndex +1
			tRankUserData[nIndex]["PlayerName"] = sPlayerName == "" and "null" or sPlayerName
		end
	end
	
	--将玩家加入到临时排行表中
	local nIndex = #tRankUserData +1
	for i=1,10 do
		if Get_UserId() == tRankUserData[i]["PlayerId"] then
			nIndex = i
		end
	end
	tRankUserData[nIndex]={}
	tRankUserData[nIndex]["PlayerId"]= Get_UserId()
	tRankUserData[nIndex]["nGrowUp"] = nPlayerAllGrow
	tRankUserData[nIndex]["PlayerName"] = Get_UserName()
	
	local t={}
	for i=1,#tRankUserData do
		for j=1, #tRankUserData-i do	
			if  tRankUserData[j]["PlayerId"] == 0 or ( tRankUserData[j]["nGrowUp"] < tRankUserData[j+1]["nGrowUp"] and tRankUserData[j+1]["PlayerId"] ~= 0)   then
				t=tRankUserData[j];

				tRankUserData[j]=tRankUserData[j+1];

				tRankUserData[j+1]=t;
			end
		end
	end
	
	--将排序完的数据更新到全局表中
	for i =1 , 10 do
		local nUserId = tRankUserData[i]["PlayerId"]
		local nGrowUp = tRankUserData[i]["nGrowUp"]
		local sUserName = tRankUserData[i]["PlayerName"]
		if i >5 then
			Sys_SetSynaGlobalData(tTreasureBox_ActivityData["GlobalRank"][2],i-5,nUserId)
			Sys_SetSynaGlobalDataStr(tTreasureBox_ActivityData["GlobalRank"][2],i-5,tostring(nGrowUp))
			Sys_SetSynaGlobalDataStr(tTreasureBox_ActivityData["GlobalRankNmae"][2],i-5,sUserName)
		else
			Sys_SetSynaGlobalData(tTreasureBox_ActivityData["GlobalRank"][1],i,nUserId)
			Sys_SetSynaGlobalDataStr(tTreasureBox_ActivityData["GlobalRank"][1],i,tostring(nGrowUp))
			Sys_SetSynaGlobalDataStr(tTreasureBox_ActivityData["GlobalRankNmae"][1],i,sUserName)
		end
	end
	
end

--喂养宝箱获得具体奖励	
function TreasureBox_FeedBoxReward(nItemId,nSpendEmoney,nBallItem,nBallNum,nGrowUp)
	--获取今日喂养次数
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][7]
	--隔天清掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nTodayTimes = Get_UserStatisticValue(nEvent,nType) --喂养次数
	if nTodayTimes >=1 and nTodayTimes <= 3 then
		nTodayTimes = 1
	elseif nTodayTimes >=4 and nTodayTimes <= 6 then
		nTodayTimes = 4
	elseif nTodayTimes >=7 and nTodayTimes <= 9 then
		nTodayTimes = 7
	elseif nTodayTimes >= 10 then
		nTodayTimes = 10
	end
	local nLevel = Get_UserLevel() --玩家等级
	local nChosis = Get_UserMetempsychosis() --玩家转世
	
	local sAwardItemName = ""
	local nLogFlag = 4 --经验/修行值
	
	--奖励1：经验/修行值
	local nAddNum = 0
	if nLevel < G_User_MaxLev then
		--给经验
		nAddNum = tTreasureBox_BoxData["FeedExp"][nTodayTimes]
		User_AddExpTime(nAddNum)
		sAwardItemName = string.format(tTreasureBox_Text["Exp"],tonumber(nAddNum))
	else
		--给修行值
		nAddNum = math.floor(tTreasureBox_BoxData["FeedExp"][nTodayTimes]/2)
		User_AddCultivation(nAddNum)
		sAwardItemName = string.format(tTreasureBox_Text["Cul"],tonumber(nAddNum))
		nLogFlag = 6
	end
	
----奖励2：随机奖励
	local nChosisFlag = 1
	--转世标记处理
	if nTodayTimes == 1 then
		--1-3次 转世奖励不同
		if nChosis and nChosis >= 2 then		
			nChosisFlag = 2
		end
	end

	if tTreasureBox_BoxData["Feed"][nTodayTimes] and tTreasureBox_BoxData["Feed"][nTodayTimes][nChosisFlag] then	
		local flat,tItemTable = Probabil_RandomAward(tTreasureBox_BoxData["Feed"][nTodayTimes],nChosisFlag)
		local nAwardItemId = tItemTable[1]["tAward"][1]["Item_1"]
		local nZeng = tItemTable[1]["tAward"][1]["Zeng"] or 0
		local nNum =  tItemTable[1]["tAward"][1]["Num"] or 1
		local sAttr = tItemTable[1]["tAward"][1]["NAttr"] or ""
		
		--限制喂养1-3次产出的龙珠个数 每天每服2/3个(一转/二转)
		if nTodayTimes == 1 then
			if nAwardItemId == 1088000 then		
				local nGlobalId = tTreasureBox_ActivityData["GlobalDragon_"..nChosisFlag]
				local nMaxNum = tTreasureBox_ActivityData["Max_"..nChosisFlag]
				local nData = Get_SysDynaGlobalData(nGlobalId,0)
				if nData >= nMaxNum then
					nAwardItemId = 720027   --超过2/3个，则给流星卷
				else
					--设置限制数量
					local nAdd = tonumber(nData + 1)
					Sys_SetSynaGlobalData(nGlobalId,0,nAdd)
				end
			end
		end
		
		local ItemName = Get_ItemtypeName(nAwardItemId)
		--追加赠品属性
		if nZeng == 3 then
			ItemName= ItemName..tTreasureBox_Text["Zeng"]
		end
		
		sAwardItemName = sAwardItemName..","..ItemName
		
		--判断背包空间
		if not User_CheckLeftSpace(tTreasureBox_ActivityData["SpaceOne"]) then
			--背包空间不足
			User_TalkChannel2005(string.format(tTreasureBox_Text["FeedBoxNoSpace"],1))
			return
		end
		
		--添加物品
		if not Item_AddNewItem(nAwardItemId,sAttr) then
			return
		end
		
		--2005提示
		User_TalkChannel2005(string.format(tTreasureBox_Text["FeedBoxSueecss"],tonumber(nGrowUp),sAwardItemName))
		
		--打LOG
		local nBallNum = 0
		if nBallItem >0 then
			nBallNum = 1
		end
		Sys_SaveActionFestivalLog(string.format(tTreasureBox_Log["FeedReward"],tonumber(nSpendEmoney),tonumber(nBallItem),tonumber(nBallNum),tonumber(nAwardItemId),tonumber(nLogFlag),tonumber(nNum),tonumber(nAddNum)))
		
		--打emoneylog
		--宝箱喂养
		if nBallItem > 0 and tTreasureBox_EmoneyLog["BallFeed"][nBallItem] then
			--用灵珠喂养emoneylog
			Sys_SaveEmoneyBuy(tTreasureBox_EmoneyLog["BallFeed"][nBallItem])
			-- 用灵珠喂养或天石喂养emoneylog
			Sys_SaveEmoneyBuy(tTreasureBox_EmoneyLog["BallTSFeed"][nBallItem])
		end
		if nSpendEmoney > 0 and tTreasureBox_EmoneyLog["TsBall"][nSpendEmoney] then
			--用天石喂养emoneylog
			Sys_SaveEmoneyBuy(tTreasureBox_EmoneyLog["TsBall"][nSpendEmoney])
			-- 用灵珠喂养或天石喂养emoneylog
			Sys_SaveEmoneyBuy(tTreasureBox_EmoneyLog["BallTSFeed"][nSpendEmoney])
		end		
		
		--光效
		User_EffectAdd("self",sTreasureBox_EffectFeed)
	end 
end

--宝箱进阶判断处理
function TreasureBox_GrowNextBox(nItemId,nPlayerAllGrow)
	local nFlagGrow = 0
	for i = tTreasureBox_BoxType[9] , tTreasureBox_BoxType[1] ,-1 do
		if nPlayerAllGrow >= tTreasureBox_BallData["NextGrow"][i] then
			--是否是同一级宝箱
			nFlagGrow = tTreasureBox_BallData["NextGrow"][i]
			if i <= nItemId then
				--没有进阶
				return false
			else
				--进阶下一级
				--删除原宝箱
				if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
					Item_AddItem(i)
					--进阶奖励
					if tTreasureBox_BoxData[i]["NextAward"] and tTreasureBox_BoxData[i]["NextAward"] >0 then
						User_AddEMoneyMono(tTreasureBox_BoxData[i]["NextAward"])
						--弹框提示
						local sLastBoxName = Get_ItemtypeName(nItemId)
						local sNowBoxName = Get_ItemtypeName(i)
						Sys_MsgBox(string.format(tTreasureBox_Text["BoxGrowNext"],sLastBoxName,sNowBoxName,tonumber(tTreasureBox_BoxData[i]["NextAward"])))
						--光效
						User_EffectAdd("self",sTreasureBox_EffectGrow)
						-- User_TalkChannel2005(string.format(tTreasureBox_Text["BoxGrowNext"],sLastBoxName,sNowBoxName,tonumber(tTreasureBox_BoxData[i]["NextAward"])))
					end
					--打log
					if tTreasureBox_Log[i] then
						Sys_SaveActionFestivalLog(string.format(tTreasureBox_Log[i],i,tonumber(tTreasureBox_BoxData[i]["NextAward"])))
					end
					TreasureBox_OpenBoxFirstWordCheck(i)
					tTreasureBox_OpenBox(i)
					
				end
				return true
			end
		end
	end
	return false
end

--喂养宝箱成功
function tTreasureBox_SuccessFeed(nItemId,nBallItem,nBallNum,nNeedEmoney)
--获得成长值:
	--更新今日单天成长值掩码
	local nGrowUp = tTreasureBox_BallData["Growup"][nBallItem] or tTreasureBox_BallData["GrowupTS"][nNeedEmoney]	--当前可获得的成长值
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][3]
	
	--隔天清掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	
	--增加今日成长值
	local nAllGrowUp = Get_UserStatisticValue(nEvent,nType) + nGrowUp
	
	Task_SetStatistic(nEvent,nType,nAllGrowUp,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	--更新玩家总成长值
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][2]
	local nPlayerAllGrow = Get_UserStatisticValue(nEvent,nType) + nGrowUp
	Task_SetStatistic(nEvent,nType,nPlayerAllGrow,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	--与当前今日成长值冠军比较
	--获取今日养成冠军
	local nNowGolad = tTreasureBox_ActivityData["GlobalTodayFirst"]
	local nGroad = Get_SysDynaGlobalData(nNowGolad,1)	
	local sUserName = Get_SysDynaGlobalDataStr(nNowGolad,1) 
	if nGroad == "" or nGroad == nil then
		nGroad = 0
	else
		nGroad = tonumber(nGroad)
	end
	if nGroad == 0 or nGroad < nAllGrowUp then
		--更新第一名
		Sys_SetSynaGlobalData(nNowGolad,0,Get_UserId()) 	--玩家id
		Sys_SetSynaGlobalData(nNowGolad,1,nAllGrowUp)	--成长值
		Sys_SetSynaGlobalDataStr(nNowGolad,1,Get_UserName())	--玩家name
		--今日第一名更新，全服广播
		Sys_SystemBroadcast(string.format(tTreasureBox_Text["NewTodayFirst"],Get_UserName()))
	end

--更新本服排行榜
	TreasureBox_ReSetLocalRanks(nPlayerAllGrow)
--获得奖励
	TreasureBox_FeedBoxReward(nItemId,nNeedEmoney,nBallItem,nBallNum,nGrowUp)
--宝箱进阶
	if not TreasureBox_GrowNextBox(nItemId,nPlayerAllGrow) then
		--宝箱进阶成功，关闭主对白
		--点击宝箱时，第一层对白显示数据
		TreasureBox_OpenBoxFirstWordCheck(nItemId)
		--返回主对白
		tTreasureBox_OpenBox(nItemId)
	end

	
end

--喂养宝箱检测
function tTreasureBox_FeedBoxCheck(nItemId)
	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--判断活动时间
	if tTreasureBox_ActivityTime[crossId]["NowTime"] and (not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"])) then
		--不在活动时间内
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tTreasureBox_Text["ItemOutTime"])
		end
		return
	end
	
	--检测是否有宝箱
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tTreasureBox_ActivityData["SpaceTwo"]) then
		--背包空间不足对白
		-- User_TalkChannel2005(string.format(tTreasureBox_Text["FeedBoxNoSpace"],tonumber(tTreasureBox_ActivityData["SpaceTwo"])))
		tItem[nItemId]["Text431"] = string.format(tTreasureBox_Text[3008710]["Text431"],tonumber(tTreasureBox_ActivityData["SpaceTwo"]))
		LinkItemGossipFunc_New(nItemId,"4-3")
		return
	end
	
	--获取今日喂养次数
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][7]
	--隔天清掩码
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	
	--获取今日当前第几次喂养
	local nTodayTimes = Get_UserStatisticValue(nEvent,nType)+1
	if nTodayTimes > 10 then
		nTodayTimes = 10
	end
	local nBallId = tTreasureBox_FeedBoxBall[nTodayTimes]
	--删除灵珠
	if Item_ChkMulItem(nBallId,nBallId,1) and Item_DelItem(nBallId) then
		--掩码：喂养次数+1
		local nEvent = tTreasureBox_StcId["nEvent"]
		local nType = tTreasureBox_StcId["nData"][7]
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		
		--喂宝箱成功操作
		tTreasureBox_SuccessFeed(nItemId,nBallId,1,0)
	
	else
		--没有灵珠，出对白
		tItem[nItemId]["Text311"] = string.format(tTreasureBox_Text[3008710]["Text311"],Get_ItemtypeName(nBallId),tonumber(tTreasureBox_BallData["TS"][nBallId]))
		tItem[nItemId]["Option6"] = string.format(tTreasureBox_Text[3008710]["Option6"],tonumber(tTreasureBox_BallData["TS"][nBallId]))
		tItem[nItemId]["OptionFunc6"] = "tTreasureBox_FeedBoxUseTSWord</N>"..nItemId.."</N>"..nBallId
		LinkItemGossipFunc_New(nItemId,"3-1")
		return
	end

end

--使用天石代替灵珠
function tTreasureBox_FeedBoxUseTSWord(nItemId,nBallId)
	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--判断活动时间
	if tTreasureBox_ActivityTime[crossId]["NowTime"] and (not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"])) then
		return
	end
	local nNeedEmoney = tTreasureBox_BallData["TS"][nBallId]
	tItem[nItemId]["Text411"] = string.format(tTreasureBox_Text[3008710]["Text411"],tonumber(nNeedEmoney),Get_ItemtypeName(nBallId))
	tItem[nItemId]["OptionFunc8"] = "TreasureBox_FeedBoxUseTS</N>"..nItemId.."</N>"..nNeedEmoney
	--接对白
	LinkItemGossipFunc_New(nItemId,"4-1")
end

--天石代替灵珠 二次确认
function TreasureBox_FeedBoxUseTS(nItemId,nNeedEmoney)
	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--判断活动时间
	if tTreasureBox_ActivityTime[crossId]["NowTime"] and (not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"])) then
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tTreasureBox_ActivityData["SpaceTwo"]) then
		--背包空间不足对白
		-- User_TalkChannel2005(string.format(tTreasureBox_Text["FeedBoxNoSpace"],tonumber(tTreasureBox_ActivityData["SpaceTwo"])))
		tItem[nItemId]["Text431"] = string.format(tTreasureBox_Text[3008710]["Text431"],tonumber(tTreasureBox_ActivityData["SpaceTwo"]))
		LinkItemGossipFunc_New(nItemId,"4-3")
		return
	end

	if nNeedEmoney > Get_UserEMoney() then
		--天石不足
		-- User_TalkChannel2005(string.format(tTreasureBox_Text["FeedBoxFailTS"],tonumber(nNeedEmoney)))
		tItem[nItemId]["Text421"] = string.format(tTreasureBox_Text[3008710]["Text421"],tonumber(nNeedEmoney))
		LinkItemGossipFunc_New(nItemId,"4-2")
		return
	end
	
	--扣天石
	if User_AddEMoney(-nNeedEmoney) then
		--喂宝箱成功操作
		--获取今日喂养次数
		local nEvent = tTreasureBox_StcId["nEvent"]
		local nType = tTreasureBox_StcId["nData"][7]
		--隔天清掩码
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		tTreasureBox_SuccessFeed(nItemId,0,0,nNeedEmoney)
	end
end

--合成灵珠处理
function tTreasureBox_CompoundNextBall(nItemId)
	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--判断活动时间
	if tTreasureBox_ActivityTime[crossId]["NowTime"] and (not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"])) then
		--不在活动时间内
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tTreasureBox_Text["ItemOutTime"])
		end
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tTreasureBox_ActivityData["SpaceOne"]) then
		--背包空间不足对白
		-- User_TalkChannel2005(string.format(tTreasureBox_Text["BallNoSpace"],tonumber(tTreasureBox_ActivityData["SpaceOne"])))
		tItem[nItemId]["Text131"] = string.format(tTreasureBox_Text[3008706]["Text131"],tonumber(tTreasureBox_ActivityData["SpaceOne"]))
		LinkItemGossipFunc_New(nItemId,"1-3")
		return
	end
	
	--检测是否有9个珠子
	if Item_ChkMulItem(nItemId,nItemId,9) and Item_DelMulItem(nItemId,nItemId,9) then
		local nLevel = Get_UserLevel() --玩家等级
		local sAwardItemName = ""
		--奖励：随机奖励
		if tTreasureBox_BallData["CompoundReward"][nItemId] then
			local flat,tItemTable = Probabil_RandomAward(tTreasureBox_BallData["CompoundReward"],nItemId)
			local nRewardItemId = tItemTable[1]["tAward"][1]["Item_1"]
			local nZeng = tItemTable[1]["tAward"][1]["Zeng"] or 0
			local nNum =  tItemTable[1]["tAward"][1]["Num"] or 1
			local sAttr = tItemTable[1]["tAward"][1]["NAttr"] or ""	
				
			if nLevel == G_User_MaxLev and tTreasureBox_BallData["MaxLev"][nItemId] and tTreasureBox_BallData["MaxLev"][nItemId][nRewardItemId] then
				--满级
				local nNewRewardItemId = tTreasureBox_BallData["MaxLev"][nItemId][nRewardItemId]["Item_1"]
				nZeng = tTreasureBox_BallData["MaxLev"][nItemId][nRewardItemId]["Zeng"] or 0
				nNum = tTreasureBox_BallData["MaxLev"][nItemId][nRewardItemId]["Num"] or 1
				sAttr = tTreasureBox_BallData["MaxLev"][nItemId][nRewardItemId]["NAttr"] or ""
				
				nRewardItemId = nNewRewardItemId 
			end
			
			if nRewardItemId == 4 then
				--经验
				User_AddExpTime(nNum)
				sAwardItemName = string.format(tTreasureBox_Text["Exp"],nNum)
			elseif nRewardItemId == 6 then
				--修行值
				User_AddCultivation(nNum)
				sAwardItemName = string.format(tTreasureBox_Text["Cul"],nNum)
			elseif nRewardItemId == 12 then
				--气力值
				User_AddStrengthValue(nNum)
				sAwardItemName = string.format(tTreasureBox_Text["Power"],nNum)
			else
				--物品
				Item_AddNewItem(nRewardItemId,sAttr)
				local sItemName = Get_ItemtypeName(nRewardItemId)
				--追加赠品属性
				if nZeng == 3 then
					sItemName= sItemName..tTreasureBox_Text["Zeng"]
				end
				sAwardItemName = sItemName
				if nRewardItemId == 3008707 or nRewardItemId == 3008708 or nRewardItemId == 3008709 then
					local sLog = tTreasureBox_EmoneyLog["Free"][nRewardItemId]
					Sys_SaveEmoneyBuy(sLog)
				end
			end
			--光效
			User_EffectAdd("self",sTreasureBox_EffectComBall)
			--打LOG
			Sys_SaveActionFestivalLog(string.format(tTreasureBox_Log["CompoundBall"],tonumber(nItemId),tonumber(nRewardItemId),tonumber(nNum)))
			--改提示形式
			if nRewardItemId == 3008707 or nRewardItemId == 3008708 or nRewardItemId == 3008709 then
				Sys_MsgBox(string.format(tTreasureBox_Text["GetBall"],sAwardItemName))
				tItem[nItemId]["Text151"] = string.format(tTreasureBox_Text[3008706]["Text151"],sAwardItemName)
				LinkItemGossipFunc_New(nItemId,"1-5")
			else
				-- User_TalkChannel2005(string.format(tTreasureBox_Text["GetOtherFromBall"],sAwardItemName))
				local nNextId = tonumber(nItemId+1)
				tItem[nItemId]["Text141"] = string.format(tTreasureBox_Text[3008706]["Text141"],Get_ItemtypeName(nNextId),sAwardItemName)
				LinkItemGossipFunc_New(nItemId,"1-4")
			end
		end
	else
		--灵珠不足
		-- User_TalkChannel2005(string.format(tTreasureBox_Text["NoBall"],Get_ItemtypeName(nItemId)))
		tItem[nItemId]["Text121"] = string.format(tTreasureBox_Text[3008706]["Text121"],Get_ItemtypeName(nItemId))
		LinkItemGossipFunc_New(nItemId,"1-2")
	end
	
end

--怪物掉落---------------------------------------
function TreasureBox_MonsterDrop(nMonsterTypeId)
	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--判断活动时间
	if tTreasureBox_ActivityTime[crossId]["NowTime"] and (not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"])) then
		return
	end
	
	--极乐鸟
	if nMonsterTypeId == tTreasureBox_MonsterDropData["Monster"]["Bird"] then
		local nTeamPeople = Get_UserTeamNumbers()
		local nDrop = tTreasureBox_MonsterDropData[nMonsterTypeId]["Chance"] 
		
		--玩家组队，每多一个人增加0.5%的概率
		if nTeamPeople > 0 then
			nDrop = nDrop + (nTeamPeople-1)*tTreasureBox_MonsterDropData[nMonsterTypeId]["OneChance"]
			--最高概率上限7%
			if nDrop > 700 then
				nDrop = 700
			end
		end
		
		if TreasureBox_Match_Rule(nDrop,tTreasureBox_MonsterDropData[nMonsterTypeId]["ItemChanceSum"]) then
			--背包判断
			if  User_CheckLeftSpace(tTreasureBox_ActivityData["SpaceOne"]) then
				local nGetItem = tTreasureBox_MonsterDropData[nMonsterTypeId]["ItemId"]
				Item_AddItem(nGetItem)
				local sLog = tTreasureBox_EmoneyLog["Free"][nGetItem]
				Sys_SaveEmoneyBuy(sLog)
				User_TalkChannel2005(tTreasureBox_Text["KillbirdGetBall"])
				User_EffectAdd("self",sTreasureBox_Effect)		
			else
				User_TalkChannel2005(tTreasureBox_Text["MonsteNoSpace"])
			end
		end
	end
	
	-- --神矿
	-- if nMonsterTypeId == tTreasureBox_MonsterDropData["Monster"]["mineral"] then
		-- local flat,tItemTable = Probabil_RandomAward(tTreasureBox_MonsterDropData,nMonsterTypeId)
		-- local nItemId = tItemTable[1]["tAward"][1]["Item_1"]
		-- --背包判断
		-- if  User_CheckLeftSpace(tTreasureBox_ActivityData["SpaceOne"]) then
			-- Item_AddItem(nItemId)
			-- local sItemName = Get_ItemtypeName(nItemId)
			-- User_TalkChannel2005(string.format(tTreasureBox_Text["KillBoxGetBall"],sItemName))
			-- User_EffectAdd("self",sTreasureBox_Effect)
		-- else
			-- User_TalkChannel2005(tTreasureBox_Text["MonsteNoSpace"])
		-- end
	-- end
	
	--百分之1概率出现提示
	if  TreasureBox_Match_Rule(100,10000) then
		User_TalkChannel2005(tTreasureBox_Text["MonsteTips"])
	end
end

--矿石读条
function TreasureBox_ReadStone()
	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--判断活动时间
	if tTreasureBox_ActivityTime[crossId]["NowTime"] and (not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"])) then
		return
	end

	--读条3s 采集
	local nSecs = tTreasureBox_ActivityData["Second"]
	local nActionId = tTreasureBox_ActivityData["Action"]
	local sContent = tTreasureBox_Text["Get"]
	User_SetExplore(nSecs,sContent,nActionId,"TreasureBox_AfterReadStone")
end

--读条后的操作
function TreasureBox_AfterReadStone()
	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--判断活动时间
	if tTreasureBox_ActivityTime[crossId]["NowTime"] and (not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"])) then
		return
	end

	--删除动态npc
	local sField = tTreasureBox_ActivityData["Field"]
	local sData = tTreasureBox_Text["StoneName"]
	local nMapId = tTreasureBox_ActivityData["BoxCity"]["Map"]
	
	local nUserId = Get_UserId()
	local nNpcNum = Get_NpcCountByName(sData,nUserId)
	if nNpcNum >= 1 then
		if Npc_DelDynaNpc(nMapId,sField,sData) then
		--神矿
			local flat,tItemTable = Probabil_RandomAward(tTreasureBox_MonsterDropData,7975)
			local nItemId = tItemTable[1]["tAward"][1]["Item_1"]
			--背包判断
			if User_CheckLeftSpace(tTreasureBox_ActivityData["SpaceOne"]) then
				if nItemId == 3008708 then		--限制采矿得到的仙灵珠个数 每天每服10个
					local nGlobalId = tTreasureBox_ActivityData["GlobalBall"]
					local nMaxNum = tTreasureBox_ActivityData["MaxData"]
					local nData = Get_SysDynaGlobalData(nGlobalId,0)
					if nData >= nMaxNum then
						nItemId = 3008707   --超过10个，则给天灵珠
					else
						--设置限制数量
						local nAdd = tonumber(nData + 1)
						Sys_SetSynaGlobalData(nGlobalId,0,nAdd)
					end
				end
				Item_AddItem(nItemId)
				local sLog = tTreasureBox_EmoneyLog["Free"][nItemId]
				Sys_SaveEmoneyBuy(sLog)
				local sItemName = Get_ItemtypeName(nItemId)
				User_TalkChannel2005(string.format(tTreasureBox_Text["KillBoxGetBall"],sItemName))
				User_EffectAdd("self",sTreasureBox_Effect)
			else
				User_TalkChannel2005(tTreasureBox_Text["MonsteNoSpace"])
			end
		end
	else
		Sys_MsgBox(tTreasureBox_Text["NotGet"])
	end
end

--每10分钟随机出现一个矿石
function TreasureBox_CreateDyneStone()
	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--判断活动时间
	if tTreasureBox_ActivityTime[crossId]["NowTime"] and (not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"])) then
		return
	end
	
	--如果存在 先删除动态npc
	local sField = tTreasureBox_ActivityData["Field"]
	local sData = tTreasureBox_Text["StoneName"]
	local nMapId = tTreasureBox_ActivityData["BoxCity"]["Map"]
	Npc_DelDynaNpc(nMapId,sField,sData)
	
	--创建动态npc
	local nRand = math.random(1,5)
	local sName = tTreasureBox_Text["StoneName"]
	local nNpcType = tTreasureBox_ActivityData["Type"]
	local nSort = tTreasureBox_ActivityData["Sort"]
	local nLookFace = tTreasureBox_ActivityData["Lookface"]
	local nMapId = tTreasureBox_ActivityData["MapId"]
	local nPosX = tTreasureBox_ActivityData["Pos"][nRand][1]
	local nPosY = tTreasureBox_ActivityData["Pos"][nRand][2]
	-- local nPosX = tTreasureBox_ActivityData["Pos"][1][1]
	-- local nPosY = tTreasureBox_ActivityData["Pos"][1][2]
	
	local nTask0 = tTreasureBox_ActivityData["Task0"]
	local nNpcId = tTreasureBox_ActivityData["NpcId"]
	Npc_CreateDynaNpc(sName,nNpcType,nSort,nLookFace,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
end

--时间自检---------------------------------------
function TreasureBox_ReSeFeedtRanks()
	--更新昨日单天冠军
	local nNowGolad = tTreasureBox_ActivityData["GlobalTodayFirst"]
	local nPlayerId = Get_SysDynaGlobalData(nNowGolad,0)
	local nGroad = Get_SysDynaGlobalData(nNowGolad,1)	
	local sUserName = Get_SysDynaGlobalDataStr(nNowGolad,1) 
	
	--更新第一名
	local nLastGolad = tTreasureBox_ActivityData["GlobalLastFirst"]
	Sys_SetSynaGlobalData(nLastGolad,0,nPlayerId) 	--玩家id
	Sys_SetSynaGlobalData(nLastGolad,1,nGroad)	--成长值
	Sys_SetSynaGlobalDataStr(nLastGolad,1,sUserName)	--玩家name
	--更新今日单天冠军
	Sys_SetSynaGlobalData(nNowGolad,0,0) 	--玩家id
	Sys_SetSynaGlobalData(nNowGolad,1,0)	--成长值
	Sys_SetSynaGlobalDataStr(nNowGolad,1,"")	--玩家name
	
	--仙灵珠产出限制
	local nGlobalId = tTreasureBox_ActivityData["GlobalBall"]
	Sys_SetSynaGlobalData(nGlobalId,0,0)
	
	--龙珠产出上限
	local nGlobalId_1 = tTreasureBox_ActivityData["GlobalDragon_1"]
	Sys_SetSynaGlobalData(nGlobalId_1,0,0)
	local nGlobalId_2 = tTreasureBox_ActivityData["GlobalDragon_2"]
	Sys_SetSynaGlobalData(nGlobalId_2,0,0)
	
end

--------------------------------------------NPC模版----------------------------------------
--聚宝仙翁
---NPC头像
tNpcFace[4020] = 6

tNpcGossip[19156] = tNpcGossip[19156] or DefaultNpc:new{}
tNpcGossip[19156]["OptionHidden"] = 1

-- 活动时间前
tNpcGossip[19156]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19156]["Text111"] = tTreasureBox_Text[19156]["Text111"]
tNpcGossip[19156]["Text112"] = tTreasureBox_Text[19156]["Text112"]
tNpcGossip[19156]["Text113"] = tTreasureBox_Text[19156]["Text113"][1]
tNpcGossip[19156]["Text114"] = tTreasureBox_Text[19156]["Text114"]
tNpcGossip[19156]["Text115"] = tTreasureBox_Text[19156]["Text115"]
--检测是否在活动时间前
tNpcGossip[19156]["ChkFunc1-1"] = function ()
	--取分服Id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--显示时间
	tNpcGossip[19156]["Text113"] = tTreasureBox_Text[19156]["Text113"][crossId]
	
	if tTreasureBox_ActivityTime[crossId] then
		return Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["BeforeTime"])
	else
		return false
	end
end

tNpcGossip[19156]["tOption1-1"] = {1}
--你漏了什么材料吧。
tNpcGossip[19156]["Option1"] = tTreasureBox_Text[19156]["Option1"]

--活动时间之后
tNpcGossip[19156]["Text1-2"] = {121,122,123,124}
tNpcGossip[19156]["Text121"] = tTreasureBox_Text[19156]["Text121"]
tNpcGossip[19156]["Text122"] = tTreasureBox_Text[19156]["Text122"]
tNpcGossip[19156]["Text123"] = tTreasureBox_Text[19156]["Text123"]
tNpcGossip[19156]["Text124"] = tTreasureBox_Text[19156]["Text124"]
--检测是否显示对白
tNpcGossip[19156]["ChkFunc1-2"] = function ()
	--取分服Id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	if tTreasureBox_ActivityTime[crossId] then
		--不在活动时间前 也不在活动时间
		if not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["BeforeTime"]) and not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"]) then
			return true
		else
			return false
		end
	else
		return false
	end
end

tNpcGossip[19156]["tOption1-2"] = {2,3,4,5,6}
--A、	本服养成排行榜。
tNpcGossip[19156]["Option2"] = tTreasureBox_Text[19156]["Option2"]
tNpcGossip[19156]["OptionFunc2"] = "LinkNpcGossipFunc_New</N>19156</S>2-1"
--B、	领取本服排名奖励。 
tNpcGossip[19156]["Option3"] = tTreasureBox_Text[19156]["Option3"]
tNpcGossip[19156]["OptionFunc3"] = "TreasureBox_GetLocalRankReward</N>19156"
--C、	全服养成排行榜。    （弹出活动页面）
tNpcGossip[19156]["Option4"] = tTreasureBox_Text[19156]["Option4"]
tNpcGossip[19156]["OptionFunc4"] = "TreasureBox_CheckAllRanks</N>19156"
--D、	查看昨日养成冠军。  （仅2016年3月25日显示，之后屏蔽）
tNpcGossip[19156]["Option5"] = tTreasureBox_Text[19156]["Option5"]
tNpcGossip[19156]["OptionChkFunc5"] = function ()
	return Sys_ChkFullTime(tTreasureBox_ActivityTime["AfterTime"])
end
tNpcGossip[19156]["OptionFunc5"] = "LinkNpcGossipFunc_New</N>19156</S>2-6"
--E、	我只是路过。
tNpcGossip[19156]["Option6"] = tTreasureBox_Text[19156]["Option6"]

--本服养成排行榜 2-1
tNpcGossip[19156]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222,223,224,225}
tNpcGossip[19156]["Text211"] = tTreasureBox_Text[19156]["Text211"]
tNpcGossip[19156]["Text212"] = tTreasureBox_Text[19156]["Text212"]
tNpcGossip[19156]["Text213"] = tTreasureBox_Text[19156]["Text213"]
tNpcGossip[19156]["Text214"] = tTreasureBox_Text[19156]["Text214"]
tNpcGossip[19156]["Text215"] = tTreasureBox_Text[19156]["Text215"]
tNpcGossip[19156]["Text216"] = tTreasureBox_Text[19156]["Text216"]
tNpcGossip[19156]["Text217"] = tTreasureBox_Text[19156]["Text217"]
tNpcGossip[19156]["Text218"] = tTreasureBox_Text[19156]["Text218"]
tNpcGossip[19156]["Text219"] = tTreasureBox_Text[19156]["Text219"]
tNpcGossip[19156]["Text220"] = tTreasureBox_Text[19156]["Text220"]
tNpcGossip[19156]["Text221"] = tTreasureBox_Text[19156]["Text221"]
tNpcGossip[19156]["Text222"] = tTreasureBox_Text[19156]["Text222"]
tNpcGossip[19156]["Text223"] = tTreasureBox_Text[19156]["Text223"]
tNpcGossip[19156]["Text224"] = tTreasureBox_Text[19156]["Text224"]
tNpcGossip[19156]["Text225"] = tTreasureBox_Text[19156]["Text225"]
tNpcGossip[19156]["tOption2-1"] = {7}
--我知道了
tNpcGossip[19156]["Option7"] = tTreasureBox_Text[19156]["Option100"]
-- tNpcGossip[19156]["OptionPoint7"] = "2-7"

--显示排行玩家信息
tNpcGossip[19156]["ChkFunc2-1"] =function ()
	--是否在活动时间内
	--取分服Id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--不在活动时间前 也不在活动时间
	if not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["BeforeTime"]) and not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"]) then
		--活动时间之后
		tNpcGossip[19156]["Option7"] = tTreasureBox_Text[19156]["Option7"]
		tNpcGossip[19156]["OptionPoint7"] = nil
		
	elseif Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"]) then
		--活动中
		--查看其它排名情况。
		tNpcGossip[19156]["Option7"] = tTreasureBox_Text[19156]["Option100"]
		tNpcGossip[19156]["OptionPoint7"] = "2-7"
	end

	local tRankUserData={}
	--取排行榜玩家id，和成长值
	local nIndex = 0
	for j = 1,2  do
		for i= 1, 5 do
			local nGolbalId = tTreasureBox_ActivityData["GlobalRank"][j]
			local nPlayerId = Get_SysDynaGlobalData(nGolbalId,i)
			local nGroad = Get_SysDynaGlobalDataStr(nGolbalId,i)
			nIndex = nIndex +1
			tRankUserData[nIndex]={}
			tRankUserData[nIndex][1]= nPlayerId
			tRankUserData[nIndex][2] = nGroad == "" and 0 or tonumber(nGroad)		
		end
	end
	--取排行榜玩家名字
	nIndex = 0
	for j = 1,2 do
		for i =1,5 do 
			local nGolbalId = tTreasureBox_ActivityData["GlobalRankNmae"][j]
			nIndex = nIndex +1
			tRankUserData[nIndex][3] = Get_SysDynaGlobalDataStr(nGolbalId,i)
		end
	end
	local leftNum = 214
	for i = 1 ,10 do
		--成长值
		local nGroad = tRankUserData[i][2]
		--玩家名字
		local sUserName  = (tRankUserData[i][3] == "" or tRankUserData[i][3] == "null") and tTreasureBox_Text["UserMiss"] or tRankUserData[i][3]
		local nUserNameLen = string.len(sUserName)
		for i=1,19-nUserNameLen do
			sUserName = sUserName.." "
		end
		tNpcGossip[19156]["Text"..leftNum+i]=string.format(tTreasureBox_Text[19156]["Text"..leftNum+i],sUserName,nGroad)
	end
	
	return true
end

--背包空间不足 2-2
tNpcGossip[19156]["Text2-2"] = {226}
tNpcGossip[19156]["Text226"] = tTreasureBox_Text[19156]["Text226"]
tNpcGossip[19156]["tOption2-2"] = {8}
tNpcGossip[19156]["Option8"] = tTreasureBox_Text[19156]["Option8"]

--未进前10 2-3
tNpcGossip[19156]["Text2-3"] = {231}
tNpcGossip[19156]["Text231"] = tTreasureBox_Text[19156]["Text231"]
tNpcGossip[19156]["tOption2-3"] = {9}
tNpcGossip[19156]["Option9"] = tTreasureBox_Text[19156]["Option9"]

--已领取排行奖励 2-4
tNpcGossip[19156]["Text2-4"] = {241}
tNpcGossip[19156]["Text241"] = tTreasureBox_Text[19156]["Text241"]
tNpcGossip[19156]["tOption2-4"] = {10}
tNpcGossip[19156]["Option10"] = tTreasureBox_Text[19156]["Option10"]

--领取排行奖励成功 2-5
tNpcGossip[19156]["Text2-5"] = {251}
tNpcGossip[19156]["Text251"] = tTreasureBox_Text[19156]["Text251"]
tNpcGossip[19156]["tOption2-5"] = {11}
tNpcGossip[19156]["Option11"] = tTreasureBox_Text[19156]["Option11"]

--查看昨日养成冠军 --> 2-6
tNpcGossip[19156]["Text2-6"] = {261,262,263,264,265}
tNpcGossip[19156]["Text261"] = tTreasureBox_Text[19156]["Text261"]
tNpcGossip[19156]["Text262"] = tTreasureBox_Text[19156]["Text262"]
tNpcGossip[19156]["Text263"] = tTreasureBox_Text[19156]["Text263"]
tNpcGossip[19156]["Text264"] = tTreasureBox_Text[19156]["Text264"]
tNpcGossip[19156]["Text265"] = tTreasureBox_Text[19156]["Text265"]
tNpcGossip[19156]["tOption2-6"] = {13,12}
--领取昨日冠军奖励
tNpcGossip[19156]["Option12"] = tTreasureBox_Text[19156]["Option12"]
--查看其它排名情况
tNpcGossip[19156]["Option13"] = tTreasureBox_Text[19156]["Option13"]
tNpcGossip[19156]["OptionPoint13"] = "2-7"

tNpcGossip[19156]["ChkFunc2-6"] =function ()
	if not Sys_ChkFullTime(tTreasureBox_ActivityTime["AfterTime"]) then
		return false
	end
	--取当前第一名id和成长值,名字
	local nGolbalId = tTreasureBox_ActivityData["GlobalLastFirst"]
	local nPlayerId = Get_SysDynaGlobalData(nGolbalId,0)
	local nGroad = Get_SysDynaGlobalData(nGolbalId,1)	
	local sUserName = Get_SysDynaGlobalDataStr(nGolbalId,1) 

	nGroad = nGroad == "" and 0 or tonumber(nGroad)	
	sUserName  = (sUserName == "" or sUserName == "null") and tTreasureBox_Text["UserMiss"] or sUserName
	tNpcGossip[19156]["Text262"]=string.format(tTreasureBox_Text[19156]["Text262"],sUserName)
	tNpcGossip[19156]["Text263"]=string.format(tTreasureBox_Text[19156]["Text263"],tonumber(nGroad))
	return true
end

--a、	领取昨日冠军奖励。
tNpcGossip[19156]["OptionFunc12"] = "TreasureBox_GetLastReward</N>19156</S>"..tTreasureBox_ActivityTime["AfterTime"]

--不是冠军 3-1
tNpcGossip[19156]["Text3-1"] = {311}
tNpcGossip[19156]["Text311"] = tTreasureBox_Text[19156]["Text311"]
tNpcGossip[19156]["tOption3-1"] = {14}
tNpcGossip[19156]["Option14"] = tTreasureBox_Text[19156]["Option14"]

--已领取昨日冠军奖励 3-2
tNpcGossip[19156]["Text3-2"] = {321}
tNpcGossip[19156]["Text321"] = tTreasureBox_Text[19156]["Text321"]
tNpcGossip[19156]["tOption3-2"] = {15}
tNpcGossip[19156]["Option15"] = tTreasureBox_Text[19156]["Option15"]

--成功领取昨日冠军奖励 3-3
tNpcGossip[19156]["Text3-3"] = {331,332}
tNpcGossip[19156]["Text331"] = tTreasureBox_Text[19156]["Text331"]
tNpcGossip[19156]["Text332"] = tTreasureBox_Text[19156]["Text332"]
tNpcGossip[19156]["tOption3-3"] = {16}
tNpcGossip[19156]["Option16"] = tTreasureBox_Text[19156]["Option16"]

--B、	领取本服排名奖励。 -->领奖时间过期 4-3
tNpcGossip[19156]["Text4-3"] = {431}
tNpcGossip[19156]["Text431"] = tTreasureBox_Text[19156]["Text431"]
tNpcGossip[19156]["tOption4-3"] = {53}
tNpcGossip[19156]["Option53"] = tTreasureBox_Text[19156]["Option53"]

-----活动中
tNpcGossip[19156]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[19156]["Text131"] = tTreasureBox_Text[19156]["Text131"]
tNpcGossip[19156]["Text132"] = tTreasureBox_Text[19156]["Text132"]
tNpcGossip[19156]["Text136"] = tTreasureBox_Text[19156]["Text136"]
tNpcGossip[19156]["Text133"] = tTreasureBox_Text[19156]["Text133"][1]
tNpcGossip[19156]["Text134"] = tTreasureBox_Text[19156]["Text134"]
tNpcGossip[19156]["Text135"] = tTreasureBox_Text[19156]["Text135"]
tNpcGossip[19156]["ChkFunc1-3"] =function ()
	--是否在活动时间内
	--取分服Id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	
	--显示时间
	tNpcGossip[19156]["Text133"] = tTreasureBox_Text[19156]["Text133"][crossId]
	
	--检测玩家等级，等级条件不满足不显示
	local nLevel = tTreasureBox_ActivityData["Level"]
	local nMetempsychosis = tTreasureBox_ActivityData["Metempsychosis"]
	
	local nFirstEvent = tTreasureBox_StcId["nEvent"]
	local nFirstType = tTreasureBox_StcId["nData"][9]

	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		--是否是第一次点击此npc
		if Task_ChkStcValue(nFirstEvent,nFirstType,">=",1) then
			tNpcGossip[19156]["Text1-3"] = {136,133,135}
		else
			tNpcGossip[19156]["Text1-3"] = {131,132,133,135}
		end	
	else
		tNpcGossip[19156]["Text1-3"] = {131,132,133,134,135}
	end
	
	if tTreasureBox_ActivityTime[crossId] then
		--不在活动时间
		if  not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"]) then
			return false
		end
	else
		return false
	end
	
	--检测是否补领宝箱
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][5]
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		tNpcGossip[19156]["tOption1-3"] = {18,19,21,23} 
	else
		--检测是否背包中有宝箱
		if Item_ChkMulItem(tTreasureBox_BoxType[1],tTreasureBox_BoxType[9],1) then
			tNpcGossip[19156]["tOption1-3"] = {18,19,21,23} 
		else
			tNpcGossip[19156]["tOption1-3"] = {18,19,21,22,23} 
		end
	end
	Task_SetStatistic(nFirstEvent,nFirstType,1,1,0)
	return true
end
tNpcGossip[19156]["tOption1-3"] = {18,19,21,22,23} 

--1、	进入仙灵矿场。
tNpcGossip[19156]["Option18"] = tTreasureBox_Text[19156]["Option18"]
tNpcGossip[19156]["OptionChkFunc18"] = function ()
	--检测玩家等级，等级条件不满足不显示
	local nLevel = tTreasureBox_ActivityData["Level"]
	local nMetempsychosis = tTreasureBox_ActivityData["Metempsychosis"] 
	return User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) 	 	
end
tNpcGossip[19156]["OptionFunc18"] = "TreasureBox_EnterMap</N>19156"

--2、	查看排名情况。
tNpcGossip[19156]["Option19"] = tTreasureBox_Text[19156]["Option19"]
tNpcGossip[19156]["OptionChkFunc19"] = tNpcGossip[19156]["OptionChkFunc18"]
tNpcGossip[19156]["OptionPoint19"] = "2-7"

--4、	都有哪些奖励？
tNpcGossip[19156]["Option21"] = tTreasureBox_Text[19156]["Option21"]
tNpcGossip[19156]["OptionChkFunc21"] = tNpcGossip[19156]["OptionChkFunc18"]
tNpcGossip[19156]["OptionPoint21"] = "2-9"

--5、	补领百宝箱。 [1补领3次后将改选项换为：补领百宝箱（50点天石）。]
tNpcGossip[19156]["Option22"] = tTreasureBox_Text[19156]["Option22"]
tNpcGossip[19156]["OptionChkFunc22"] = tNpcGossip[19156]["OptionChkFunc18"]
tNpcGossip[19156]["OptionFunc22"] = "TreasureBox_ReAskBox</N>19156"
tNpcGossip[19156]["OptionChkFunc22"] = function ()
	--如果玩家上线没有领取过宝箱则不显示补领宝箱选项
	local nEvent = tTreasureBox_Stc["nEvent"]
	local nType = tTreasureBox_Stc["nData"]
	
	if Task_ChkStcValue(nEvent,nType,">",0) then
		return true
	else
		return false
	end	
end



--6、	我记在心上了。
tNpcGossip[19156]["Option23"] = tTreasureBox_Text[19156]["Option23"]
tNpcGossip[19156]["OptionChkFunc23"] = function ()
	--检测玩家等级，等级条件不满足不显示
	local nLevel = tTreasureBox_ActivityData["Level"]
	local nMetempsychosis = tTreasureBox_ActivityData["Metempsychosis"] 
	return not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) 	 	
end

--查看养成排行榜--> 2-7
tNpcGossip[19156]["Text2-7"] = {271,272}
tNpcGossip[19156]["Text271"] = tTreasureBox_Text[19156]["Text271"]
tNpcGossip[19156]["Text272"] = tTreasureBox_Text[19156]["Text272"]
tNpcGossip[19156]["tOption2-7"] = {24,25,26,27}--,28}
--A、	本服养成排行榜。
tNpcGossip[19156]["Option24"] = tTreasureBox_Text[19156]["Option24"]
tNpcGossip[19156]["OptionPoint24"] = "2-1"
--B、	全服养成排行榜。    （弹出活动页面）
tNpcGossip[19156]["Option25"] = tTreasureBox_Text[19156]["Option25"]
tNpcGossip[19156]["OptionFunc25"] = "TreasureBox_CheckAllRanks</N>19156"
--C、	查看今日养成情况。
tNpcGossip[19156]["Option26"] = tTreasureBox_Text[19156]["Option26"]
tNpcGossip[19156]["OptionPoint26"] = "3-4"
--D、	查看昨日养成冠军。
tNpcGossip[19156]["Option27"] = tTreasureBox_Text[19156]["Option27"]
tNpcGossip[19156]["OptionPoint27"] = "2-6"
--E、	我明白了。
tNpcGossip[19156]["Option28"] = tTreasureBox_Text[19156]["Option28"]


--查看今日养成情况。--> 3-4
tNpcGossip[19156]["Text3-4"] = {341,342,343,344,345}
tNpcGossip[19156]["Text341"] = tTreasureBox_Text[19156]["Text341"]
tNpcGossip[19156]["Text342"] = tTreasureBox_Text[19156]["Text342"]
tNpcGossip[19156]["Text343"] = tTreasureBox_Text[19156]["Text343"]
tNpcGossip[19156]["Text344"] = tTreasureBox_Text[19156]["Text344"]
tNpcGossip[19156]["Text345"] = tTreasureBox_Text[19156]["Text345"]
tNpcGossip[19156]["tOption3-4"] = {29}
--查看其它排名情况。
tNpcGossip[19156]["Option29"] = tTreasureBox_Text[19156]["Option29"]
tNpcGossip[19156]["OptionPoint29"] = "2-7"

tNpcGossip[19156]["ChkFunc3-4"] =function ()
	--获取今日养成冠军
	local nNowGolad = tTreasureBox_ActivityData["GlobalTodayFirst"]
	local nGroad = Get_SysDynaGlobalData(nNowGolad,1)	
	local sUserName = Get_SysDynaGlobalDataStr(nNowGolad,1) 
	
	--取玩家今日成长值
	--隔天清掩码
	local nEvent = tTreasureBox_StcId["nEvent"]
	local nType = tTreasureBox_StcId["nData"][3]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nMyGroad = Get_UserStatisticValue(nEvent,nType)
	
	nGroad = nGroad == "" and 0 or tonumber(nGroad)	
	sUserName  = (sUserName == "" or sUserName == "null") and tTreasureBox_Text["UserMiss"] or sUserName
	tNpcGossip[19156]["Text342"] = string.format(tTreasureBox_Text[19156]["Text342"],sUserName)
	tNpcGossip[19156]["Text343"] = string.format(tTreasureBox_Text[19156]["Text343"],tonumber(nGroad))
	tNpcGossip[19156]["Text344"] = string.format(tTreasureBox_Text[19156]["Text344"],tonumber(nMyGroad))
	return true
end

--了解详情--> 2-8
tNpcGossip[19156]["Text2-8"] = {281,282,283,284,285,286,287}
tNpcGossip[19156]["Text281"] = tTreasureBox_Text[19156]["Text281"]
tNpcGossip[19156]["Text282"] = tTreasureBox_Text[19156]["Text282"]
tNpcGossip[19156]["Text283"] = tTreasureBox_Text[19156]["Text283"]
tNpcGossip[19156]["Text284"] = tTreasureBox_Text[19156]["Text284"]
tNpcGossip[19156]["Text285"] = tTreasureBox_Text[19156]["Text285"]
tNpcGossip[19156]["Text286"] = tTreasureBox_Text[19156]["Text286"]
tNpcGossip[19156]["Text287"] = tTreasureBox_Text[19156]["Text287"]
tNpcGossip[19156]["tOption2-8"] = {30}--,31}
--A、	如何获得灵珠？
tNpcGossip[19156]["Option30"] = tTreasureBox_Text[19156]["Option30"]
tNpcGossip[19156]["OptionPoint30"] = "3-5"
--B、	这是我应该做的。
tNpcGossip[19156]["Option31"] = tTreasureBox_Text[19156]["Option31"]

--如何获得灵珠？--> 3-5
tNpcGossip[19156]["Text3-5"] = {351,352,353,354,355,356,357,358}
tNpcGossip[19156]["Text351"] = tTreasureBox_Text[19156]["Text351"]
tNpcGossip[19156]["Text352"] = tTreasureBox_Text[19156]["Text352"]
tNpcGossip[19156]["Text353"] = tTreasureBox_Text[19156]["Text353"]
tNpcGossip[19156]["Text354"] = tTreasureBox_Text[19156]["Text354"]
tNpcGossip[19156]["Text355"] = tTreasureBox_Text[19156]["Text355"]
tNpcGossip[19156]["Text356"] = tTreasureBox_Text[19156]["Text356"]
tNpcGossip[19156]["Text357"] = tTreasureBox_Text[19156]["Text357"]
tNpcGossip[19156]["Text358"] = tTreasureBox_Text[19156]["Text358"]
tNpcGossip[19156]["tOption3-5"] = {32}
tNpcGossip[19156]["Option32"] = tTreasureBox_Text[19156]["Option32"]
tNpcGossip[19156]["OptionPoint32"] = "2-9"

--4、	都有哪些奖励？--> 2-9
tNpcGossip[19156]["Text2-9"] = {291,292,293,294}
tNpcGossip[19156]["Text291"] = tTreasureBox_Text[19156]["Text291"]
tNpcGossip[19156]["Text292"] = tTreasureBox_Text[19156]["Text292"]
tNpcGossip[19156]["Text293"] = tTreasureBox_Text[19156]["Text293"]
tNpcGossip[19156]["Text294"] = tTreasureBox_Text[19156]["Text294"]
tNpcGossip[19156]["tOption2-9"] = {20,33,34,35}--,36}


--3、	了解详情。
tNpcGossip[19156]["Option20"] = tTreasureBox_Text[19156]["Option20"]
tNpcGossip[19156]["OptionPoint20"] = "2-8"

--A、	了解回馈奖励。
tNpcGossip[19156]["Option33"] = tTreasureBox_Text[19156]["Option33"]
tNpcGossip[19156]["OptionPoint33"] = "3-6"
--B、	了解养成奖励。
tNpcGossip[19156]["Option34"] = tTreasureBox_Text[19156]["Option34"]
tNpcGossip[19156]["OptionPoint34"] = "3-7"
--C、	了解排名奖励。
tNpcGossip[19156]["Option35"] = tTreasureBox_Text[19156]["Option35"]
tNpcGossip[19156]["OptionPoint35"] = "3-8"
--D、	奖励真是丰富。
tNpcGossip[19156]["Option36"] = tTreasureBox_Text[19156]["Option36"]

--了解回馈奖励。--> 3-6
tNpcGossip[19156]["Text3-6"] = {361,362,363,364,365,366,367,368}
tNpcGossip[19156]["Text361"] = tTreasureBox_Text[19156]["Text361"]
tNpcGossip[19156]["Text362"] = tTreasureBox_Text[19156]["Text362"]
tNpcGossip[19156]["Text363"] = tTreasureBox_Text[19156]["Text363"]
tNpcGossip[19156]["Text364"] = tTreasureBox_Text[19156]["Text364"]
tNpcGossip[19156]["Text365"] = tTreasureBox_Text[19156]["Text365"]
tNpcGossip[19156]["Text366"] = tTreasureBox_Text[19156]["Text366"]
tNpcGossip[19156]["Text367"] = tTreasureBox_Text[19156]["Text367"]
tNpcGossip[19156]["Text368"] = tTreasureBox_Text[19156]["Text368"]
tNpcGossip[19156]["tOption3-6"] = {37}
tNpcGossip[19156]["Option37"] = tTreasureBox_Text[19156]["Option37"]
tNpcGossip[19156]["OptionPoint37"] = "2-9"

--了解养成奖励。--> 3-7
tNpcGossip[19156]["Text3-7"] = {371,372,373,374,375,376,377,378,379,380,381,382,383}
tNpcGossip[19156]["Text371"] = tTreasureBox_Text[19156]["Text371"]
tNpcGossip[19156]["Text372"] = tTreasureBox_Text[19156]["Text372"]
tNpcGossip[19156]["Text373"] = tTreasureBox_Text[19156]["Text373"]
tNpcGossip[19156]["Text374"] = tTreasureBox_Text[19156]["Text374"]
tNpcGossip[19156]["Text375"] = tTreasureBox_Text[19156]["Text375"]
tNpcGossip[19156]["Text376"] = tTreasureBox_Text[19156]["Text376"]
tNpcGossip[19156]["Text377"] = tTreasureBox_Text[19156]["Text377"]
tNpcGossip[19156]["Text378"] = tTreasureBox_Text[19156]["Text378"]
tNpcGossip[19156]["Text379"] = tTreasureBox_Text[19156]["Text379"]
tNpcGossip[19156]["Text380"] = tTreasureBox_Text[19156]["Text380"]
tNpcGossip[19156]["Text381"] = tTreasureBox_Text[19156]["Text381"]
tNpcGossip[19156]["Text382"] = tTreasureBox_Text[19156]["Text382"]
tNpcGossip[19156]["Text383"] = tTreasureBox_Text[19156]["Text383"]
tNpcGossip[19156]["tOption3-7"] = {38}
tNpcGossip[19156]["Option38"] = tTreasureBox_Text[19156]["Option38"]
tNpcGossip[19156]["OptionPoint38"] = "2-9"

-- 了解排名奖励。--> 3-8
tNpcGossip[19156]["Text3-8"] = {384,385,386,387,388}
tNpcGossip[19156]["Text384"] = tTreasureBox_Text[19156]["Text384"]
tNpcGossip[19156]["Text385"] = tTreasureBox_Text[19156]["Text385"]
tNpcGossip[19156]["Text386"] = tTreasureBox_Text[19156]["Text386"]
tNpcGossip[19156]["Text387"] = tTreasureBox_Text[19156]["Text387"]
tNpcGossip[19156]["Text388"] = tTreasureBox_Text[19156]["Text388"]
tNpcGossip[19156]["tOption3-8"] = {39,40}--,41}
--A、	了解本服排名奖励。
tNpcGossip[19156]["Option39"] = tTreasureBox_Text[19156]["Option39"]
tNpcGossip[19156]["OptionPoint39"] = "4-1"
--B、	了解全服排名奖励。
tNpcGossip[19156]["Option40"] = tTreasureBox_Text[19156]["Option40"]
tNpcGossip[19156]["OptionPoint40"] = "4-2"
--C、	离开。
tNpcGossip[19156]["Option41"] = tTreasureBox_Text[19156]["Option41"]

--A、	了解本服排名奖励。--> 4-1
tNpcGossip[19156]["Text4-1"] = {411,412,413,414,415,416,417,418,419}
tNpcGossip[19156]["Text411"] = tTreasureBox_Text[19156]["Text411"]
tNpcGossip[19156]["Text412"] = tTreasureBox_Text[19156]["Text412"]
tNpcGossip[19156]["Text413"] = tTreasureBox_Text[19156]["Text413"]
tNpcGossip[19156]["Text414"] = tTreasureBox_Text[19156]["Text414"]
tNpcGossip[19156]["Text415"] = tTreasureBox_Text[19156]["Text415"]
tNpcGossip[19156]["Text416"] = tTreasureBox_Text[19156]["Text416"]
tNpcGossip[19156]["Text417"] = tTreasureBox_Text[19156]["Text417"]
tNpcGossip[19156]["Text418"] = tTreasureBox_Text[19156]["Text418"]
tNpcGossip[19156]["Text419"] = tTreasureBox_Text[19156]["Text419"]
tNpcGossip[19156]["tOption4-1"] = {42}
tNpcGossip[19156]["Option42"] = tTreasureBox_Text[19156]["Option42"]
tNpcGossip[19156]["OptionPoint42"] = "2-9"

--B、	了解全服排名奖励。 --> 4-2
tNpcGossip[19156]["Text4-2"] = {421,422,423,424,425,426,427,428,429,430}
tNpcGossip[19156]["Text421"] = tTreasureBox_Text[19156]["Text421"]
tNpcGossip[19156]["Text422"] = tTreasureBox_Text[19156]["Text422"]
tNpcGossip[19156]["Text423"] = tTreasureBox_Text[19156]["Text423"]
tNpcGossip[19156]["Text424"] = tTreasureBox_Text[19156]["Text424"]
tNpcGossip[19156]["Text425"] = tTreasureBox_Text[19156]["Text425"]
tNpcGossip[19156]["Text426"] = tTreasureBox_Text[19156]["Text426"]
tNpcGossip[19156]["Text427"] = tTreasureBox_Text[19156]["Text427"]
tNpcGossip[19156]["Text428"] = tTreasureBox_Text[19156]["Text428"]
tNpcGossip[19156]["Text429"] = tTreasureBox_Text[19156]["Text429"]
tNpcGossip[19156]["Text430"] = tTreasureBox_Text[19156]["Text430"]
tNpcGossip[19156]["tOption4-2"] = {43}
tNpcGossip[19156]["Option43"] = tTreasureBox_Text[19156]["Option43"]
tNpcGossip[19156]["OptionPoint43"] = "2-9"

--5、	补领百宝箱。 --> 失败、已有百宝箱 2-10
tNpcGossip[19156]["Text2-10"] = {2101}
tNpcGossip[19156]["Text2101"] = tTreasureBox_Text[19156]["Text2101"]
tNpcGossip[19156]["tOption2-10"] = {44}
tNpcGossip[19156]["Option44"] = tTreasureBox_Text[19156]["Option44"]

--5、	补领百宝箱。 --> 失败、背包满 2-11
tNpcGossip[19156]["Text2-11"] = {2111}
tNpcGossip[19156]["Text2111"] = tTreasureBox_Text[19156]["Text2111"]
tNpcGossip[19156]["tOption2-11"] = {45}
tNpcGossip[19156]["Option45"] = tTreasureBox_Text[19156]["Option45"]

--5、	补领百宝箱。 --> 前3次补领百宝箱 2-12
tNpcGossip[19156]["Text2-12"] = {2121}
tNpcGossip[19156]["Text2121"] = tTreasureBox_Text[19156]["Text2121"]
tNpcGossip[19156]["tOption2-12"] = {46}
tNpcGossip[19156]["Option46"] = tTreasureBox_Text[19156]["Option46"]

--5、	补领百宝箱。 --> 已免费补领过3次、二次确认 2-13
tNpcGossip[19156]["Text2-13"] = {2131}
tNpcGossip[19156]["Text2131"] = tTreasureBox_Text[19156]["Text2131"]
tNpcGossip[19156]["tOption2-13"] = {47,48}
--A、	确认补领
tNpcGossip[19156]["Option47"] = tTreasureBox_Text[19156]["Option47"]
tNpcGossip[19156]["Option48"] = tTreasureBox_Text[19156]["Option48"]
tNpcGossip[19156]["OptionFunc47"] = "TreasureBox_UseTSGetLastReward</N>19156"

--A、	确认补领 --> 失败、已有百宝箱 3-9
tNpcGossip[19156]["Text3-9"] = {391}
tNpcGossip[19156]["Text391"] = tTreasureBox_Text[19156]["Text391"]
tNpcGossip[19156]["tOption3-9"] = {49}
tNpcGossip[19156]["Option49"] = tTreasureBox_Text[19156]["Option49"]

--A、	确认补领 --> 失败、天石不足 3-10
tNpcGossip[19156]["Text3-10"] = {3101}
tNpcGossip[19156]["Text3101"] = tTreasureBox_Text[19156]["Text3101"]
tNpcGossip[19156]["tOption3-10"] = {50}
tNpcGossip[19156]["Option50"] = tTreasureBox_Text[19156]["Option50"]

--A、	确认补领 --> 成功 3-11
tNpcGossip[19156]["Text3-11"] = {3111}
tNpcGossip[19156]["Text3111"] = tTreasureBox_Text[19156]["Text3111"]
tNpcGossip[19156]["tOption3-11"] = {51}
tNpcGossip[19156]["Option51"] = tTreasureBox_Text[19156]["Option51"]

--A、	确认补领 --> 失败 已补领过 3-12
tNpcGossip[19156]["Text3-12"] = {3121}
tNpcGossip[19156]["Text3121"] = tTreasureBox_Text[19156]["Text3121"]
tNpcGossip[19156]["tOption3-12"] = {52}
tNpcGossip[19156]["Option52"] = tTreasureBox_Text[19156]["Option52"]

----仙灵矿主（仙灵矿场NPC）
tNpcFace[4021] = 19

tNpcGossip[19157] = tNpcGossip[19157] or DefaultNpc:new{}
tNpcGossip[19157]["OptionHidden"] = 1

tNpcGossip[19157]["Text1-1"] = {111,112,113}
tNpcGossip[19157]["Text111"] = tTreasureBox_Text[19157]["Text111"]
tNpcGossip[19157]["Text112"] = tTreasureBox_Text[19157]["Text112"]
tNpcGossip[19157]["Text113"] = tTreasureBox_Text[19157]["Text113"]
tNpcGossip[19157]["tOption1-1"] = {1,2}
--A、	请送我回去。
tNpcGossip[19157]["Option1"] = tTreasureBox_Text[19157]["Option1"]
tNpcGossip[19157]["OptionFunc1"] = "TreasureBox_ReturnToTwinCity</N>19157"
tNpcGossip[19157]["Option2"] = tTreasureBox_Text[19157]["Option2"]


---------------------------------------------物品模版---------------------------------------
--背包信
tItem[3008705] = tItem[3008705] or {}

tItem[3008705]["Text1-1"] = {111,112}
tItem[3008705]["Text111"] = tTreasureBox_Text[3008705]["Text111"]
tItem[3008705]["Text112"] = tTreasureBox_Text[3008705]["Text112"]
tItem[3008705]["tOption1-1"] = {1}
tItem[3008705]["Option1"] = tTreasureBox_Text[3008705]["Option1"]

tItem[3008705]["Function"] = function(nItemId,sItemName)
	tItem[3008705]["OptionFunc1"] = "tTreasureBox_OpenBagLetter</N>"..nItemId
	LinkItemGossipFunc_New(nItemId,"1-1")
end


----------------宝箱
----初级宝箱
tItem[3008710] = tItem[3008710] or {}
tItem[3008710]["Text1-1"] = {111,113}
tItem[3008710]["Text111"] = tTreasureBox_Text[3008710]["Text111"]
tItem[3008710]["Text113"] = tTreasureBox_Text[3008710]["Text113"]
tItem[3008710]["Text114"] = tTreasureBox_Text[3008710]["Text114"]
tItem[3008710]["Text115"] = tTreasureBox_Text[3008710]["Text115"]
tItem[3008710]["Text116"] = tTreasureBox_Text[3008710]["Text116"]
tItem[3008710]["Text117"] = tTreasureBox_Text[3008710]["Text117"]
tItem[3008710]["tOption1-1"] = {2,1}
--A、	打开百宝箱。
tItem[3008710]["Option1"] = tTreasureBox_Text[3008710]["Option1"]
-- tItem[3008710]["OptionFunc1"] = "tTreasureBox_OpenBoxDayReward</N>3008710"
--B、	喂养百宝箱。
tItem[3008710]["Option2"] = tTreasureBox_Text[3008710]["Option2"]
-- tItem[3008710]["OptionFunc2"] = "tTreasureBox_FeedBox</N>3008710"
--C、	收起百宝箱。
-- tItem[3008710]["Option3"] = tTreasureBox_Text[3008710]["Option3"]

tItem[3008710]["Function"] = function(nItemId,sItemName)
	TreasureBox_OpenBoxFirstWordCheck(nItemId)
	tTreasureBox_OpenBox(nItemId)
	-- LinkItemGossipFunc_New(nItemId,"1-1")
end

--B、	喂养百宝箱。--> 二次确认 2-1
tItem[3008710]["Text2-1"] = {211}
tItem[3008710]["Text211"] = tTreasureBox_Text[3008710]["Text211"]
tItem[3008710]["tOption2-1"] = {4,5}
--a)	使用【灵珠名】喂养。
tItem[3008710]["Option4"] = tTreasureBox_Text[3008710]["Option4"]
-- tItem[3008710]["OptionFunc4"] = "tTreasureBox_FeedBoxCheck</N>"..nItemId
tItem[3008710]["Option5"] = tTreasureBox_Text[3008710]["Option5"]

--使用【灵珠名】喂养。-->失败、无该灵珠
tItem[3008710]["Text3-1"] = {311}
tItem[3008710]["Text311"] = tTreasureBox_Text[3008710]["Text311"]
tItem[3008710]["tOption3-1"] = {6,7}
--a、	使用天石抵扣。
tItem[3008710]["Option6"] = tTreasureBox_Text[3008710]["Option6"]

tItem[3008710]["Option7"] = tTreasureBox_Text[3008710]["Option7"]

--a、	使用天石抵扣。-->二次确认
tItem[3008710]["Text4-1"] = {411}
tItem[3008710]["Text411"] = tTreasureBox_Text[3008710]["Text411"]
tItem[3008710]["tOption4-1"] = {8,9}
--确认
tItem[3008710]["Option8"] = tTreasureBox_Text[3008710]["Option8"]
tItem[3008710]["Option9"] = tTreasureBox_Text[3008710]["Option9"]

--失败、天石不足
tItem[3008710]["Text4-2"] = {421}
tItem[3008710]["Text421"] = tTreasureBox_Text[3008710]["Text421"]
tItem[3008710]["tOption4-2"] = {14}
tItem[3008710]["Option14"] = tTreasureBox_Text[3008710]["Option14"]

--失败、背包满
tItem[3008710]["Text4-3"] = {431}
tItem[3008710]["Text431"] = tTreasureBox_Text[3008710]["Text431"]
tItem[3008710]["tOption4-3"] = {15}
tItem[3008710]["Option15"] = tTreasureBox_Text[3008710]["Option15"]

--打开宝箱-->选奖励对白2-2
tItem[3008710]["Text2-2"] = {220,221}
tItem[3008710]["Text220"] = tTreasureBox_Text[3008710]["Text220"]
tItem[3008710]["Text221"] = tTreasureBox_Text[3008710]["Text221"]
tItem[3008710]["Text222"] = tTreasureBox_Text[3008710]["Text222"]
tItem[3008710]["Text223"] = tTreasureBox_Text[3008710]["Text223"]
tItem[3008710]["tOption2-2"] = {10,11,12}
--我要%d分钟经验
tItem[3008710]["Option10"] = tTreasureBox_Text[3008710]["Option10"]
--我要%d点气力值
tItem[3008710]["Option11"] = tTreasureBox_Text[3008710]["Option11"]
--收起宝箱
tItem[3008710]["Option12"] = tTreasureBox_Text[3008710]["Option12"]
tItem[3008710]["Option17"] = tTreasureBox_Text[3008710]["Option17"]
-- tItem[3008710]["Option13"] = tTreasureBox_Text[3008710]["Option13"]

--失败、当日已开启
tItem[3008710]["Text2-3"] = {231}
tItem[3008710]["Text231"] = tTreasureBox_Text[3008710]["Text231"]
tItem[3008710]["tOption2-3"] = {16}
tItem[3008710]["Option16"] = tTreasureBox_Text[3008710]["Option16"]

for i=3008711,3008718 do
	tItem[i] = tItem[3008710]
end

--灵珠
tItem[3008706] = tItem[3008706] or {}
tItem[3008706]["Text1-1"] = {111}
tItem[3008706]["Text111"] = tTreasureBox_Text[3008706]["Text111"]
tItem[3008706]["tOption1-1"] = {1,2}
tItem[3008706]["Option1"] = tTreasureBox_Text[3008706]["Option1"]
tItem[3008706]["Option2"] = tTreasureBox_Text[3008706]["Option2"]
tItem[3008706]["Function"] = function(nItemId,sItemName)
	--取全局表里面的分服id
	local crossId = Get_SysDynaGlobalData0(tTreasureBox_ActivityData["GlobalSeverId"])
	--判断活动时间
	if tTreasureBox_ActivityTime[crossId]["NowTime"] and (not Sys_ChkFullTime(tTreasureBox_ActivityTime[crossId]["NowTime"])) then
		--不在活动时间内
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tTreasureBox_Text["ItemOutTime"])
		end
		return
	end
	local sNowBallName = Get_ItemtypeName(nItemId)
	local sNextBallName = Get_ItemtypeName(tTreasureBox_BallData["NextBall"][nItemId])
	tItem[nItemId]["Text111"] = string.format(tTreasureBox_Text[3008706]["Text111"],sNowBallName,sNextBallName)
	tItem[nItemId]["Option1"] = string.format(tTreasureBox_Text[3008706]["Option1"],sNextBallName)
	tItem[nItemId]["OptionFunc1"] = "tTreasureBox_CompoundNextBall</N>"..nItemId
	LinkItemGossipFunc_New(nItemId,"1-1")
end
--失败、数量不足
tItem[3008706]["Text1-2"] = {121}
tItem[3008706]["Text121"] = tTreasureBox_Text[3008706]["Text121"]
tItem[3008706]["tOption1-2"] = {3}
tItem[3008706]["Option3"] = tTreasureBox_Text[3008706]["Option3"]
--失败、背包满
tItem[3008706]["Text1-3"] = {131}
tItem[3008706]["Text131"] = tTreasureBox_Text[3008706]["Text131"]
tItem[3008706]["tOption1-3"] = {4}
tItem[3008706]["Option4"] = tTreasureBox_Text[3008706]["Option4"]
--合成失败
tItem[3008706]["Text1-4"] = {141}
tItem[3008706]["Text141"] = tTreasureBox_Text[3008706]["Text141"]
tItem[3008706]["tOption1-4"] = {5}
tItem[3008706]["Option5"] = tTreasureBox_Text[3008706]["Option5"]
tItem[3008706]["OptionPoint5"] = "1-1"
--合成成功
tItem[3008706]["Text1-5"] = {151}
tItem[3008706]["Text151"] = tTreasureBox_Text[3008706]["Text151"]
tItem[3008706]["tOption1-5"] = {6}
tItem[3008706]["Option6"] = tTreasureBox_Text[3008706]["Option6"]
tItem[3008706]["OptionPoint6"] = "1-1"

for i = 3008707,3008708 do
	tItem[i] = tItem[3008706]
end
----------------------------------------------怪物模版---------------------------------------
-- //极乐鸟
-- tMonster[7974] = tMonster[7974] or {}
-- tMonster[7974]["tFunction"] = tMonster[7974]["tFunction"] or {}
-- table.insert(tMonster[7974]["tFunction"],TreasureBox_MonsterDrop)

-- -- //神矿
-- tMonster[7975] = tMonster[7975] or {}
-- tMonster[7975]["tFunction"] = tMonster[7975]["tFunction"] or {}
-- table.insert(tMonster[7975]["tFunction"],TreasureBox_MonsterDrop)

----------------------------------------------时间自检---------------------------------------
--更新排行数据
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],TreasureBox_ReSeFeedtRanks)

--每10分钟随机出现一个矿石npc	
-- tOntimerMin_M[00] = tOntimerMin_M[00] or {}
-- table.insert(tOntimerMin_M[00],TreasureBox_CreateDyneStone)
-- tOntimerMin_M[10] = tOntimerMin_M[10] or {}
-- table.insert(tOntimerMin_M[10],TreasureBox_CreateDyneStone)
-- tOntimerMin_M[20] = tOntimerMin_M[20] or {}
-- table.insert(tOntimerMin_M[20],TreasureBox_CreateDyneStone)
-- tOntimerMin_M[30] = tOntimerMin_M[30] or {}
-- table.insert(tOntimerMin_M[30],TreasureBox_CreateDyneStone)
-- tOntimerMin_M[40] = tOntimerMin_M[40] or {}
-- table.insert(tOntimerMin_M[40],TreasureBox_CreateDyneStone)
-- tOntimerMin_M[50] = tOntimerMin_M[50] or {}
-- table.insert(tOntimerMin_M[50],TreasureBox_CreateDyneStone)

----------------------------------------------上线触发---------------------------------------
-- table.insert(tSystem_PlayLogin_Func,TreasureBox_Online)