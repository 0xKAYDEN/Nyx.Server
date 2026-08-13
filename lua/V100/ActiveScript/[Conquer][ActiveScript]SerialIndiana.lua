------------------------------------------------------------------------------------
--Name:			161231[英文征服][活动脚本]连环夺宝活动
--Creator:		兰瑞妹
--Created:		2016/12/31
------------------------------------------------------------------------------------
-- 前缀
-- SerialIndiana_
-----------------------------------------------------------
-- #stc 掩码说明 
-- #stc(156,28) 背包信
-- #二进制掩码
-- #stc(156,29)  ==含1表示已参加每日练习赛 ==含2表示已参加每日正式赛
-- #stc(156,30) 玩家当天当前积分
-- #stc(156,31) 玩家活动期间总积分
-- #练习赛关卡
	-- #stc(156,32) 免费闯关次数 == 10次上限
	-- #stc(156,33) 付费闯关次数 == 10次上限
	-- #二进制掩码
	-- #stc(156,34) 当前10119层关卡是否参与过
					-- #含2^1表示已参加第一层，含2^2参加第二层，含2^3是第三层，含2^4是第四层，含2^5是第五层
					-- #含2^6表示已参加第六层，含2^7参加第七层，含2^8是第八层，含2^9是第九层
	-- #stc(156,35) 当前10120层关卡是否参与过
	-- #stc(156,36) 当前10121层关卡是否参与过
	-- #stc(156,37) 当前10122层关卡是否参与过
	-- #stc(156,38) 当前10123层关卡是否参与过
	-- #stc(156,39) 当前10124层关卡是否参与过
	-- #stc(156,40) 当前10125层关卡是否参与过
	-- #stc(156,41) 当前10126层关卡是否参与过
	-- #stc(156,42) 当前10127层关卡是否参与过
-- #正式赛关卡
	-- #stc(156,43) 免费闯关次数 == 10次上限
	-- #stc(156,44) 付费闯关次数 == 10次上限
	-- #二进制掩码
	-- #stc(156,45) 当前10119层关卡是否参与过
					-- #含2^1表示该层第一层，含2^2参加第二层，含2^3是第三层，含2^4是第四层，含2^5是第五层
					-- #含2^6表示第六层，含2^7参加第七层，含2^8是第八层，含2^9是第九层
	-- #stc(156,46) 当前10120层关卡是否参与过
	-- #stc(156,47) 当前10121层关卡是否参与过
	-- #stc(156,48) 当前10122层关卡是否参与过
	-- #stc(156,49) 当前10123层关卡是否参与过
	-- #stc(156,50) 当前10124层关卡是否参与过
	-- #stc(156,51) 当前10125层关卡是否参与过
	-- #stc(156,52) 当前10126层关卡是否参与过
	-- #stc(156,53) 当前10127层关卡是否参与过
	
-----------------------------------------------------------
-- #动态存储表说明
-- #竞技挑战宝箱单服每日积分排行榜
-- {52899,52900,52901,52902};globalBefore{52907,52908,52909,52910}

-- #竞技挑战宝箱单服总积分排行榜	
-- {52903,52904,52905,52906}

-- #正式比赛关卡人数
---[51465]	data0 data1 data2 data3 data4 data5 datastr0 datastr1 datastr2 10119地图1-9层玩家数量以此类推
---[51466]	data0 data1 data2 data3 data4 data5 datastr0 datastr1 datastr2 10120地图10-18层玩家数量以此类推
---[51467]	data0 data1 data2 data3 data4 data5 datastr0 datastr1 datastr2 10121地图19-27层玩家数量以此类推
---[51468]	data0 data1 data2 data3 data4 data5 datastr0 datastr1 datastr2 10122地图28-36层玩家数量以此类推
---[51469]	data0 data1 data2 data3 data4 data5 datastr0 datastr1 datastr2 10123地图37-45层玩家数量以此类推
---[51470]	data0 data1 data2 data3 data4 data5 datastr0 datastr1 datastr2 10124地图46-54层玩家数量以此类推
---[51471]	data0 data1 data2 data3 data4 data5 datastr0 datastr1 datastr2 10125地图55-63层玩家数量以此类推
---[51472]	data0 data1 data2 data3 data4 data5 datastr0 datastr1 datastr2 10126地图64-72层玩家数量以此类推
---[51473]	data0 data1 data2 data3 data4 data5 datastr0 datastr1 datastr2 10127地图73-81层玩家数量以此类推

-----------------------------------------------------------
-- logid:12000623

---------------------------------------------------------------

--排行榜模板配置
--日排行榜
tRankingFunc_Info[20228] = {}
tRankingFunc_Info[20228]["DayTime"] = {}
tRankingFunc_Info[20228]["DayTime"][1] = tActivityTime["SerialIndiana"]["DayTime"]--00:00 23:59
tRankingFunc_Info[20228]["ResetTime"] = {}
tRankingFunc_Info[20228]["ResetTime"][1] = tActivityTime["SerialIndiana"]["DayRankReset"]--19:30 19:31
tRankingFunc_Info[20228]["Global"] = {52899,52900,52901,52902}
tRankingFunc_Info[20228]["BeforeGlobal"] = {52907,52908,52909,52910}
tRankingFunc_Info[20228]["RankNum"] = 10
tRankingFunc_Info[20228]["RankMode"] = 1
tRankingFunc_Info[20228]["Mail"] = {}
tRankingFunc_Info[20228]["Mail"]["ActiveTime"] = tActivityTime["SerialIndiana"]["Activity"]--2018-08-28 00:00 2018-09-10 23:59
tRankingFunc_Info[20228]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[20228]["Mail"]["RewardTime"][1] = tActivityTime["SerialIndiana"]["DayRankTime"]--19:32 19:35
--1
tRankingFunc_Info[20228]["Mail"]["Reward"] = {}
tRankingFunc_Info[20228]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[20228]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[20228]["Mail"]["Reward"][1]["ActionId"] = 94481516
tRankingFunc_Info[20228]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[20228]["Mail"]["Reward"][1]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20228]["Mail"]["Reward"][1]["Title"] = tSerialIndiana_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[20228]["Mail"]["Reward"][1]["Content"] = tSerialIndiana_Text["Mail"]["Day"]["Content1"]
--2
tRankingFunc_Info[20228]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[20228]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[20228]["Mail"]["Reward"][2]["ActionId"] = 94481519
tRankingFunc_Info[20228]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[20228]["Mail"]["Reward"][2]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20228]["Mail"]["Reward"][2]["Title"] = tSerialIndiana_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[20228]["Mail"]["Reward"][2]["Content"] = tSerialIndiana_Text["Mail"]["Day"]["Content2"]
--3
tRankingFunc_Info[20228]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[20228]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[20228]["Mail"]["Reward"][3]["ActionId"] = 94481522
tRankingFunc_Info[20228]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[20228]["Mail"]["Reward"][3]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20228]["Mail"]["Reward"][3]["Title"] = tSerialIndiana_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[20228]["Mail"]["Reward"][3]["Content"] = tSerialIndiana_Text["Mail"]["Day"]["Content3"]
--4-6
tRankingFunc_Info[20228]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[20228]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[20228]["Mail"]["Reward"][4]["ActionId"] = 94481525
tRankingFunc_Info[20228]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[20228]["Mail"]["Reward"][4]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20228]["Mail"]["Reward"][4]["Title"] = tSerialIndiana_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[20228]["Mail"]["Reward"][4]["Content"] = tSerialIndiana_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[20228]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[20228]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[20228]["Mail"]["Reward"][5]["ActionId"] = 94481525
tRankingFunc_Info[20228]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[20228]["Mail"]["Reward"][5]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20228]["Mail"]["Reward"][5]["Title"] = tSerialIndiana_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[20228]["Mail"]["Reward"][5]["Content"] = tSerialIndiana_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[20228]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[20228]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[20228]["Mail"]["Reward"][6]["ActionId"] = 94481525
tRankingFunc_Info[20228]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[20228]["Mail"]["Reward"][6]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20228]["Mail"]["Reward"][6]["Title"] = tSerialIndiana_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[20228]["Mail"]["Reward"][6]["Content"] = tSerialIndiana_Text["Mail"]["Day"]["Content"]
--7-10
tRankingFunc_Info[20228]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[20228]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[20228]["Mail"]["Reward"][7]["ActionId"] = 94481528
tRankingFunc_Info[20228]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[20228]["Mail"]["Reward"][7]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20228]["Mail"]["Reward"][7]["Title"] = tSerialIndiana_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[20228]["Mail"]["Reward"][7]["Content"] = tSerialIndiana_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[20228]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[20228]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[20228]["Mail"]["Reward"][8]["ActionId"] = 94481528
tRankingFunc_Info[20228]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[20228]["Mail"]["Reward"][8]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20228]["Mail"]["Reward"][8]["Title"] = tSerialIndiana_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[20228]["Mail"]["Reward"][8]["Content"] = tSerialIndiana_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[20228]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[20228]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[20228]["Mail"]["Reward"][9]["ActionId"] = 94481528
tRankingFunc_Info[20228]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[20228]["Mail"]["Reward"][9]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20228]["Mail"]["Reward"][9]["Title"] = tSerialIndiana_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[20228]["Mail"]["Reward"][9]["Content"] = tSerialIndiana_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[20228]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[20228]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[20228]["Mail"]["Reward"][10]["ActionId"] = 94481528
tRankingFunc_Info[20228]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[20228]["Mail"]["Reward"][10]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20228]["Mail"]["Reward"][10]["Title"] = tSerialIndiana_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[20228]["Mail"]["Reward"][10]["Content"] = tSerialIndiana_Text["Mail"]["Day"]["Content"]


--总排行榜
tRankingFunc_Info[20229] = {}
tRankingFunc_Info[20229]["DayTime"] = {}
tRankingFunc_Info[20229]["DayTime"][1] = tActivityTime["SerialIndiana"]["DayTime"]--00:00 23:59
tRankingFunc_Info[20229]["Reset"] = 1
tRankingFunc_Info[20229]["Global"] = {52903,52904,52905,52906}
tRankingFunc_Info[20229]["RankNum"] = 10
tRankingFunc_Info[20229]["RankMode"] = 1
tRankingFunc_Info[20229]["Mail"] = {}
tRankingFunc_Info[20229]["Mail"]["ActiveTime"] = tActivityTime["SerialIndiana"]["TotalRankTime"]--2018-09-10 00:00 2018-09-11 00:00
tRankingFunc_Info[20229]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[20229]["Mail"]["RewardTime"][1] = tActivityTime["SerialIndiana"]["TotalRankReward"]--23:55 23:59
--1
tRankingFunc_Info[20229]["Mail"]["Reward"] = {}
tRankingFunc_Info[20229]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[20229]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[20229]["Mail"]["Reward"][1]["ActionId"] = 94481501
tRankingFunc_Info[20229]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[20229]["Mail"]["Reward"][1]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20229]["Mail"]["Reward"][1]["Title"] = tSerialIndiana_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[20229]["Mail"]["Reward"][1]["Content"] = tSerialIndiana_Text["Mail"]["Total"]["Content1"]
--2
tRankingFunc_Info[20229]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[20229]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[20229]["Mail"]["Reward"][2]["ActionId"] = 94481504
tRankingFunc_Info[20229]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[20229]["Mail"]["Reward"][2]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20229]["Mail"]["Reward"][2]["Title"] = tSerialIndiana_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[20229]["Mail"]["Reward"][2]["Content"] = tSerialIndiana_Text["Mail"]["Total"]["Content2"]
--3
tRankingFunc_Info[20229]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[20229]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[20229]["Mail"]["Reward"][3]["ActionId"] = 94481507
tRankingFunc_Info[20229]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[20229]["Mail"]["Reward"][3]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20229]["Mail"]["Reward"][3]["Title"] = tSerialIndiana_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[20229]["Mail"]["Reward"][3]["Content"] = tSerialIndiana_Text["Mail"]["Total"]["Content3"]
--4-6
tRankingFunc_Info[20229]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[20229]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[20229]["Mail"]["Reward"][4]["ActionId"] = 94481510
tRankingFunc_Info[20229]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[20229]["Mail"]["Reward"][4]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20229]["Mail"]["Reward"][4]["Title"] = tSerialIndiana_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[20229]["Mail"]["Reward"][4]["Content"] = tSerialIndiana_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[20229]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[20229]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[20229]["Mail"]["Reward"][5]["ActionId"] = 94481510
tRankingFunc_Info[20229]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[20229]["Mail"]["Reward"][5]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20229]["Mail"]["Reward"][5]["Title"] = tSerialIndiana_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[20229]["Mail"]["Reward"][5]["Content"] = tSerialIndiana_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[20229]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[20229]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[20229]["Mail"]["Reward"][6]["ActionId"] = 94481510
tRankingFunc_Info[20229]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[20229]["Mail"]["Reward"][6]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20229]["Mail"]["Reward"][6]["Title"] = tSerialIndiana_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[20229]["Mail"]["Reward"][6]["Content"] = tSerialIndiana_Text["Mail"]["Total"]["Content"]
--7-10
tRankingFunc_Info[20229]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[20229]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[20229]["Mail"]["Reward"][7]["ActionId"] = 94481513
tRankingFunc_Info[20229]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[20229]["Mail"]["Reward"][7]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20229]["Mail"]["Reward"][7]["Title"] = tSerialIndiana_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[20229]["Mail"]["Reward"][7]["Content"] = tSerialIndiana_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[20229]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[20229]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[20229]["Mail"]["Reward"][8]["ActionId"] = 94481513
tRankingFunc_Info[20229]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[20229]["Mail"]["Reward"][8]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20229]["Mail"]["Reward"][8]["Title"] = tSerialIndiana_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[20229]["Mail"]["Reward"][8]["Content"] = tSerialIndiana_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[20229]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[20229]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[20229]["Mail"]["Reward"][9]["ActionId"] = 94481513
tRankingFunc_Info[20229]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[20229]["Mail"]["Reward"][9]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20229]["Mail"]["Reward"][9]["Title"] = tSerialIndiana_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[20229]["Mail"]["Reward"][9]["Content"] = tSerialIndiana_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[20229]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[20229]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[20229]["Mail"]["Reward"][10]["ActionId"] = 94481513
tRankingFunc_Info[20229]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[20229]["Mail"]["Reward"][10]["Sender"] = tSerialIndiana_Text["Mail"]["Sender"]
tRankingFunc_Info[20229]["Mail"]["Reward"][10]["Title"] = tSerialIndiana_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[20229]["Mail"]["Reward"][10]["Content"] = tSerialIndiana_Text["Mail"]["Total"]["Content"]



local tSerialIndiana_Cont = {}
	tSerialIndiana_Cont["Activity"] = tActivityTime["SerialIndiana"]["Activity"]
	tSerialIndiana_Cont["RankTime"] = tActivityTime["SerialIndiana"]["Activity"]
	-- 总榜发奖时间
	tSerialIndiana_Cont["TotalRankTime"] = tActivityTime["SerialIndiana"]["TotalRankTime"]
	-- 邮件物品使用时间
	tSerialIndiana_Cont["MailUseItem"] = tActivityTime["SerialIndiana"]["MailUseItem"]
	-- 竞技挑战时间
	tSerialIndiana_Cont["BeforSpecialTime"] = tActivityTime["SerialIndiana"]["BeforSpecialTime"] -- 活动前5分钟
	tSerialIndiana_Cont["SpecialTime"] = tActivityTime["SerialIndiana"]["SpecialTime"] -- 活动期间
	tSerialIndiana_Cont["SpecialNewTime"] = tActivityTime["SerialIndiana"]["SpecialNewTime"] -- 对白需要活动期间
	tSerialIndiana_Cont["EndSpecialTime"] = tActivityTime["SerialIndiana"]["EndSpecialTime"] -- 正式赛活动结束
	--每日清理动态码时间
	tSerialIndiana_Cont["ClearTime"] = tActivityTime["SerialIndiana"]["ClearTime"]
	tSerialIndiana_Cont["ClearGlobalTime"] = tActivityTime["SerialIndiana"]["ClearGlobalTime"]
	
	-- 玩家等级要求80级
	tSerialIndiana_Cont["Metempsychosis"] = 0
	tSerialIndiana_Cont["Level"] = 80
	
	-- 限时5分钟
	tSerialIndiana_Cont["TimeLimit"] = 300
	-- 怪物GenId
	tSerialIndiana_Cont["GenId"] = 20997
	-- 怪物Id
	tSerialIndiana_Cont["MonsterId"] = 4277
	-- 排名10个
	tSerialIndiana_Cont["RankingNum"] = 10
	-- 失血百分比
	tSerialIndiana_Cont["DecLifePec"] = 50
	-- 宝箱第一个npc
	tSerialIndiana_Cont["BoxNpcId"] = 20229
	-- 邮件物品的起始id
	tSerialIndiana_Cont["MaxId"] = 3302289
	tSerialIndiana_Cont["MinId"] = 3302298
	tSerialIndiana_Cont["SpeId"] = 3302367
	-- 单关总层数
	tSerialIndiana_Cont["MapLayerMax"] = 9
	-- emoney
	tSerialIndiana_Cont["EMoney"] = 9
	
-- Log
local tSerialIndiana_Log = {}
	-- 玩家参加练习赛
	tSerialIndiana_Log["JoinPratice"] = "0,0,0,0,12000623,1[1],0,0"
	-- 玩家参加正式赛
	tSerialIndiana_Log["JoinGame"] = "0,0,0,0,12000623,1[2],0,0"
	-- 玩家获得积分(nMapId，nNpcId，第几层，增加积分，今天总积分，总榜总积分)
	tSerialIndiana_Log["GetScore"] = "%d,%d,%d,%d,12000623,1[3],%d,%d"
	-- 玩家离开活动地图
	tSerialIndiana_Log["OutMap"] = "0,0,0,0,12000623,1[4],0,0"
	-- 物品过期删除
	tSerialIndiana_Log["ItemOverDue"] = "0,0,%d,1,12000623,2,0,0"
	-- 清掩码打log
	tSerialIndiana_Log["StcInterval"] = "0,0,0,0,12000623,3,%d,%d"
	-- emoney_log
	tSerialIndiana_Log["Free"] = "350	20486	0	0	%d	"
	tSerialIndiana_Log["Buy"] = "350	20487	9	9	1	"
	
	
	
-- 光效
local tSerialIndiana_Effect = {}
	-- 领取宝箱奖励光效
	tSerialIndiana_Effect[1] = {}
	tSerialIndiana_Effect[1]["EffectObj"] = "self"
	tSerialIndiana_Effect[1]["Effect"] = "angelwing"
	-- 层数上升光效
	tSerialIndiana_Effect[2] = {}
	tSerialIndiana_Effect[2]["EffectObj"] = "self"
	tSerialIndiana_Effect[2]["Effect"] = "moveback"
	-- 层数下降光效
	tSerialIndiana_Effect[3] = {}
	tSerialIndiana_Effect[3]["EffectObj"] = "self"
	tSerialIndiana_Effect[3]["Effect"] = "movego"
	-- 扣血光效
	tSerialIndiana_Effect[4] = {}
	tSerialIndiana_Effect[4]["EffectObj"] = "self"
	tSerialIndiana_Effect[4]["Effect"] = "attach_accept"

	-- 层数字数特效
local tSerialIndiana_MapEffect = {}
	tSerialIndiana_MapEffect[1] = "CountK1-1"
	tSerialIndiana_MapEffect[2] = "CountK2-1"
	tSerialIndiana_MapEffect[3] = "CountK3-1"
	tSerialIndiana_MapEffect[4] = "CountK4-1"
	tSerialIndiana_MapEffect[5] = "CountK5-1"
	tSerialIndiana_MapEffect[6] = "CountK6-1"
	tSerialIndiana_MapEffect[7] = "CountK7-1"
	tSerialIndiana_MapEffect[8] = "CountK8-1"
	tSerialIndiana_MapEffect[9] = "CountK9-1"
	tSerialIndiana_MapEffect[10] = "CountK0-1"
	
-- 掩码
local tSerialIndiana_Stc = {}
	-- 普通掩码
	tSerialIndiana_Stc[1] = {}
	-- 每日练习赛
	tSerialIndiana_Stc[1][1] = {}
	tSerialIndiana_Stc[1][1]["EventType"] = 156
	tSerialIndiana_Stc[1][1]["DataType"] = 29
	tSerialIndiana_Stc[1][1]["AddStc"] = 1
	--每日正式赛
	tSerialIndiana_Stc[1][2] = {}
	tSerialIndiana_Stc[1][2]["EventType"] = 156
	tSerialIndiana_Stc[1][2]["DataType"] = 29
	tSerialIndiana_Stc[1][2]["AddStc"] = 2
	-- 玩家当天当前积分
	tSerialIndiana_Stc[1][3] = {}
	tSerialIndiana_Stc[1][3]["EventType"] = 156
	tSerialIndiana_Stc[1][3]["DataType"] = 30
	-- 玩家活动期间总积分
	tSerialIndiana_Stc[1][4] = {}
	tSerialIndiana_Stc[1][4]["EventType"] = 156
	tSerialIndiana_Stc[1][4]["DataType"] = 31
	-- 练习赛关卡
	tSerialIndiana_Stc[2] = {}
	--免费闯关
	tSerialIndiana_Stc[2][1] = {}
	tSerialIndiana_Stc[2][1]["EventType"] = 156
	tSerialIndiana_Stc[2][1]["DataType"] = 32
	tSerialIndiana_Stc[2][1]["AddStc"] = 1
	tSerialIndiana_Stc[2][1]["Limit"] = 10
	-- 付费闯关
	tSerialIndiana_Stc[2][2] = {}
	tSerialIndiana_Stc[2][2]["EventType"] = 156
	tSerialIndiana_Stc[2][2]["DataType"] = 33
	tSerialIndiana_Stc[2][2]["AddStc"] = 1
	tSerialIndiana_Stc[2][2]["Limit"] = 10
	tSerialIndiana_Stc[2][10119] = {}
	tSerialIndiana_Stc[2][10119]["EventType"] = 156
	tSerialIndiana_Stc[2][10119]["DataType"] = 34
	tSerialIndiana_Stc[2][10119]["Layer"] = 1
	tSerialIndiana_Stc[2][10120] = {}
	tSerialIndiana_Stc[2][10120]["EventType"] = 156
	tSerialIndiana_Stc[2][10120]["DataType"] = 35
	tSerialIndiana_Stc[2][10120]["Layer"] = 2
	tSerialIndiana_Stc[2][10121] = {}
	tSerialIndiana_Stc[2][10121]["EventType"] = 156
	tSerialIndiana_Stc[2][10121]["DataType"] = 36
	tSerialIndiana_Stc[2][10121]["Layer"] = 3
	tSerialIndiana_Stc[2][10122] = {}
	tSerialIndiana_Stc[2][10122]["EventType"] = 156
	tSerialIndiana_Stc[2][10122]["DataType"] = 37
	tSerialIndiana_Stc[2][10122]["Layer"] = 4
	tSerialIndiana_Stc[2][10123] = {}
	tSerialIndiana_Stc[2][10123]["EventType"] = 156
	tSerialIndiana_Stc[2][10123]["DataType"] = 38
	tSerialIndiana_Stc[2][10123]["Layer"] = 5
	tSerialIndiana_Stc[2][10124] = {}
	tSerialIndiana_Stc[2][10124]["EventType"] = 156
	tSerialIndiana_Stc[2][10124]["DataType"] = 39
	tSerialIndiana_Stc[2][10124]["Layer"] = 6
	tSerialIndiana_Stc[2][10125] = {}
	tSerialIndiana_Stc[2][10125]["EventType"] = 156
	tSerialIndiana_Stc[2][10125]["DataType"] = 40
	tSerialIndiana_Stc[2][10125]["Layer"] = 7
	tSerialIndiana_Stc[2][10126] = {}
	tSerialIndiana_Stc[2][10126]["EventType"] = 156
	tSerialIndiana_Stc[2][10126]["DataType"] = 41
	tSerialIndiana_Stc[2][10126]["Layer"] = 8
	tSerialIndiana_Stc[2][10127] = {}
	tSerialIndiana_Stc[2][10127]["EventType"] = 156
	tSerialIndiana_Stc[2][10127]["DataType"] = 42
	tSerialIndiana_Stc[2][10127]["Layer"] = 9
	-- 正式赛关卡
	tSerialIndiana_Stc[3] = {}
	--免费闯关
	tSerialIndiana_Stc[3][1] = {}
	tSerialIndiana_Stc[3][1]["EventType"] = 156
	tSerialIndiana_Stc[3][1]["DataType"] = 43
	tSerialIndiana_Stc[3][1]["AddStc"] = 1
	tSerialIndiana_Stc[3][1]["Limit"] = 10
	-- 付费闯关
	tSerialIndiana_Stc[3][2] = {}
	tSerialIndiana_Stc[3][2]["EventType"] = 156
	tSerialIndiana_Stc[3][2]["DataType"] = 44
	tSerialIndiana_Stc[3][2]["AddStc"] = 1
	tSerialIndiana_Stc[3][2]["Limit"] = 10
	tSerialIndiana_Stc[3][10119] = {}
	tSerialIndiana_Stc[3][10119]["EventType"] = 156
	tSerialIndiana_Stc[3][10119]["DataType"] = 45
	tSerialIndiana_Stc[3][10119]["Layer"] = 1
	tSerialIndiana_Stc[3][10120] = {}
	tSerialIndiana_Stc[3][10120]["EventType"] = 156
	tSerialIndiana_Stc[3][10120]["DataType"] = 46
	tSerialIndiana_Stc[3][10120]["Layer"] = 2
	tSerialIndiana_Stc[3][10121] = {}
	tSerialIndiana_Stc[3][10121]["EventType"] = 156
	tSerialIndiana_Stc[3][10121]["DataType"] = 47
	tSerialIndiana_Stc[3][10121]["Layer"] = 3
	tSerialIndiana_Stc[3][10122] = {}
	tSerialIndiana_Stc[3][10122]["EventType"] = 156
	tSerialIndiana_Stc[3][10122]["DataType"] = 48
	tSerialIndiana_Stc[3][10122]["Layer"] = 4
	tSerialIndiana_Stc[3][10123] = {}
	tSerialIndiana_Stc[3][10123]["EventType"] = 156
	tSerialIndiana_Stc[3][10123]["DataType"] = 49
	tSerialIndiana_Stc[3][10123]["Layer"] = 5
	tSerialIndiana_Stc[3][10124] = {}
	tSerialIndiana_Stc[3][10124]["EventType"] = 156
	tSerialIndiana_Stc[3][10124]["DataType"] = 50
	tSerialIndiana_Stc[3][10124]["Layer"] = 6
	tSerialIndiana_Stc[3][10125] = {}
	tSerialIndiana_Stc[3][10125]["EventType"] = 156
	tSerialIndiana_Stc[3][10125]["DataType"] = 51
	tSerialIndiana_Stc[3][10125]["Layer"] = 7
	tSerialIndiana_Stc[3][10126] = {}
	tSerialIndiana_Stc[3][10126]["EventType"] = 156
	tSerialIndiana_Stc[3][10126]["DataType"] = 52
	tSerialIndiana_Stc[3][10126]["Layer"] = 8
	tSerialIndiana_Stc[3][10127] = {}
	tSerialIndiana_Stc[3][10127]["EventType"] = 156
	tSerialIndiana_Stc[3][10127]["DataType"] = 53
	tSerialIndiana_Stc[3][10127]["Layer"] = 9
	
-- 动态码
--排行榜部分重写,此部分弃用
local tSerialIndiana_GlobalData = {}
	-- 竞技挑战宝箱单服每日积分排行榜
	tSerialIndiana_GlobalData[1] = {51457,51458,51459,51460}
	-- 竞技挑战宝箱单服总积分排行榜
	tSerialIndiana_GlobalData[2] = {51461,51462,51463,51464}
	-- 最快通关奖励
	tSerialIndiana_GlobalData[3] = 51460
	-- 正式比赛关卡人数
	tSerialIndiana_GlobalData[4] = {51465,51466,51467,51468,51469,51470,51471,51472,51473}
	
-- lua表存放排行榜数据
-- 竞技挑战宝箱单服每日积分排行榜
local tSerialIndiana_DayRankingData = {}
-- 竞技挑战宝箱单服总积分排行榜
local tSerialIndiana_TotalRankingData = {}
-- 关卡人数
local tSerialIndiana_LayerNum = {}
-- 玩家正式赛还是练习赛
local tSerialIndiana_RaceType = {}
-- 排行榜文字Text
local tSerialIndiana_RankingText = {"Text214","Text215","Text216","Text217","Text218","Text219","Text220","Text221","Text222","Text223"}

-- 物品id
local tSerialIndiana_Item = {}
	-- 问号靴
	tSerialIndiana_Item[1] = 3302120
	-- 火箭靴
	tSerialIndiana_Item[2] = 3302121
	-- 退关券
	tSerialIndiana_Item[3] = 3302122
	-- 单关券
	tSerialIndiana_Item[4] = 3302123
	-- 冲刺券
	tSerialIndiana_Item[5] = 3302124
	-- 翻倍券
	tSerialIndiana_Item[6] = 3302125

	-- 物品对应选项
local tSerialIndiana_OptionIndex = {}
	-- 问号靴
	tSerialIndiana_OptionIndex[1] = "Option3210"
	-- 火箭靴
	tSerialIndiana_OptionIndex[2] = "Option3211"
	-- 退关券
	tSerialIndiana_OptionIndex[3] = "Option3212"
	-- 单关券
	tSerialIndiana_OptionIndex[4] = "Option322"
	-- 冲刺券
	tSerialIndiana_OptionIndex[5] = "Option325"
	-- 翻倍券
	tSerialIndiana_OptionIndex[6] = "Option328"
	
-- 免费闯关选项
local tSerialIndiana_FreeOptionIndex = {"Option321","Option324","Option327"}
-- 天石闯关选项
local tSerialIndiana_BuyOptionIndex = {"Option323","Option326","Option329"}
-- 翻倍闯关选项
local tSerialIndiana_DoubleOptionIndex = {"Option327","Option328","Option329"}
-- 背包中没有该物品
local tSerialIndiana_NoItemIndex = {"4-4","3-9","4-1"}
-- 天石闯关
local tSerialIndiana_EmoneyIndex = {}
	-- 天石不足对白
	tSerialIndiana_EmoneyIndex["NoEmoney"] = {"3-3","3-7","4-2"}
	-- 二次确认
	tSerialIndiana_EmoneyIndex["SecondSure"] = {"3-4","3-8","4-3"}
	tSerialIndiana_EmoneyIndex["SecondSureText"] = {"Text341","Text381","Text431"}
	tSerialIndiana_EmoneyIndex["SecondSureOption"] = {"OptionFunc341","OptionFunc381","OptionFunc431"}

-- 闯关成功提示
local tSerialIndiana_PassIndex = {}
	tSerialIndiana_PassIndex[1] = "SuccessConfirm"
	tSerialIndiana_PassIndex[2] = "UseSinglePass"
	tSerialIndiana_PassIndex[3] = "SprintPass"
	tSerialIndiana_PassIndex[4] = "UseSprintPass"
	tSerialIndiana_PassIndex[5] = "DoublePass"
	tSerialIndiana_PassIndex[6] = "UseDoublePass"
	tSerialIndiana_PassIndex[7] = "UseQuestionSus"
	tSerialIndiana_PassIndex[8] = "UseQuestionFail"
	tSerialIndiana_PassIndex[9] = "UseFireItem"
	tSerialIndiana_PassIndex[10] = "UseBackItem"

--全服邀请设置（位置设置待测试时候决定）
local tSerialIndiana_Invite ={}
	tSerialIndiana_Invite["MapId"] = 1002
	tSerialIndiana_Invite["Activity_Invite_1"] = "level >= 80"
	tSerialIndiana_Invite["Activity_InviteId"] = 5
	--全服邀请任意8个点
	tSerialIndiana_Invite["Invite_Pos"] ={}
	tSerialIndiana_Invite["Invite_Pos"][1] = {}
	tSerialIndiana_Invite["Invite_Pos"][1]["X"] = 364
	tSerialIndiana_Invite["Invite_Pos"][1]["Y"] = 439
	tSerialIndiana_Invite["Invite_Pos"][2] = {}
	tSerialIndiana_Invite["Invite_Pos"][2]["X"] = 366
	tSerialIndiana_Invite["Invite_Pos"][2]["Y"] = 440
	tSerialIndiana_Invite["Invite_Pos"][3] = {}
	tSerialIndiana_Invite["Invite_Pos"][3]["X"] = 369
	tSerialIndiana_Invite["Invite_Pos"][3]["Y"] = 443
	tSerialIndiana_Invite["Invite_Pos"][4] = {}
	tSerialIndiana_Invite["Invite_Pos"][4]["X"] = 371
	tSerialIndiana_Invite["Invite_Pos"][4]["Y"] = 442
	tSerialIndiana_Invite["Invite_Pos"][5] = {}
	tSerialIndiana_Invite["Invite_Pos"][5]["X"] = 372
	tSerialIndiana_Invite["Invite_Pos"][5]["Y"] = 439
	tSerialIndiana_Invite["Invite_Pos"][6] = {}
	tSerialIndiana_Invite["Invite_Pos"][6]["X"] = 371
	tSerialIndiana_Invite["Invite_Pos"][6]["Y"] = 445
	tSerialIndiana_Invite["Invite_Pos"][7] = {}
	tSerialIndiana_Invite["Invite_Pos"][7]["X"] = 366
	tSerialIndiana_Invite["Invite_Pos"][7]["Y"] = 441
	tSerialIndiana_Invite["Invite_Pos"][8] = {}
	tSerialIndiana_Invite["Invite_Pos"][8]["X"] = 368
	tSerialIndiana_Invite["Invite_Pos"][8]["Y"] = 440
	--全服邀请对白
	tSerialIndiana_Invite["InviteSendId"] = 10583   --英文征服 ini/StrRes.ini  序号顺延，提示框对白
	tSerialIndiana_Invite["InviteSendOkId"] = 10584		--英文征服 ini/StrRes.ini  序号顺延，传送进入提示语
	--全服邀请倒计时
	tSerialIndiana_Invite["InviteCountDown"] = 30

-- 地图传送
local tSerialIndiana_ChgMap = {}
	-- 传送到双龙城
	tSerialIndiana_ChgMap[1] = {}
	tSerialIndiana_ChgMap[1]["MapId"] = 1002
	tSerialIndiana_ChgMap[1]["PosX"] = 370
	tSerialIndiana_ChgMap[1]["PosY"] = 440
	tSerialIndiana_ChgMap[1]["Range"] = 5
	tSerialIndiana_ChgMap[1]["Effect"] = 2
	tSerialIndiana_ChgMap[1]["Talk"] = "OutMap"
	-- 传送到大赢家竞技场
	tSerialIndiana_ChgMap[2] = {}
	tSerialIndiana_ChgMap[2]["MapId"] = 10119
	tSerialIndiana_ChgMap[2]["PosX"] = 670
	tSerialIndiana_ChgMap[2]["PosY"] = 674
	tSerialIndiana_ChgMap[2]["Range"] = 3
	tSerialIndiana_ChgMap[2]["Talk"] = "EnterMap"
	
-- 升层坐标
local tSerialIndiana_UpLayerMap = {}
	tSerialIndiana_UpLayerMap[1] = {670,674}
	tSerialIndiana_UpLayerMap[2] = {592,599}
	tSerialIndiana_UpLayerMap[3] = {520,525}
	tSerialIndiana_UpLayerMap[4] = {447,449}
	tSerialIndiana_UpLayerMap[5] = {366,373}
	tSerialIndiana_UpLayerMap[6] = {291,297}
	tSerialIndiana_UpLayerMap[7] = {214,221}
	tSerialIndiana_UpLayerMap[8] = {139,146}
	tSerialIndiana_UpLayerMap[9] = {63,69}

-- 地图坐标
local tSerialIndiana_MapPos = {}
	-- x y坐标一样
	-- 索引为层数，9的倍数
	tSerialIndiana_MapPos[1] = 666
	tSerialIndiana_MapPos[2] = 590
	tSerialIndiana_MapPos[3] = 517
	tSerialIndiana_MapPos[4] = 441
	tSerialIndiana_MapPos[5] = 364
	tSerialIndiana_MapPos[6] = 289
	tSerialIndiana_MapPos[7] = 212
	tSerialIndiana_MapPos[8] = 137
	tSerialIndiana_MapPos[9] = 61
	
-- 地图id
local tSerialIndiana_MapId = {}
	tSerialIndiana_MapId[1] = 10119
	tSerialIndiana_MapId[2] = 10120
	tSerialIndiana_MapId[3] = 10121
	tSerialIndiana_MapId[4] = 10122
	tSerialIndiana_MapId[5] = 10123
	tSerialIndiana_MapId[6] = 10124
	tSerialIndiana_MapId[7] = 10125
	tSerialIndiana_MapId[8] = 10126
	tSerialIndiana_MapId[9] = 10127
	
-- 普通挑战
-- 宝箱奖励
local tSerialIndiana_BoxRewardRand = {}
	-- 奖励数值范围
	tSerialIndiana_BoxRewardRand["Num"] = {}
	tSerialIndiana_BoxRewardRand["Num"][10119] = {28,32}
	tSerialIndiana_BoxRewardRand["Num"][10120] = {30,34}
	tSerialIndiana_BoxRewardRand["Num"][10121] = {32,36}
	tSerialIndiana_BoxRewardRand["Num"][10122] = {34,38}
	tSerialIndiana_BoxRewardRand["Num"][10123] = {36,40}
	tSerialIndiana_BoxRewardRand["Num"][10124] = {38,42}
	tSerialIndiana_BoxRewardRand["Num"][10125] = {40,44}
	tSerialIndiana_BoxRewardRand["Num"][10126] = {42,46}
	tSerialIndiana_BoxRewardRand["Num"][10127] = {44,48}
	-- 奖励类型概率
	-- 1-9层
	tSerialIndiana_BoxRewardRand["Type"] = {}
	tSerialIndiana_BoxRewardRand["Type"][10119] = {}
	tSerialIndiana_BoxRewardRand["Type"][10119][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10119][1]["ItemChanceSum"] = 10000
	tSerialIndiana_BoxRewardRand["Type"][10119][1][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10119][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10119][1][1]["ItemChance"] = 4000
	tSerialIndiana_BoxRewardRand["Type"][10119][1][1]["Item_1"] = 1		-- 经验

	tSerialIndiana_BoxRewardRand["Type"][10119][1][2] = {}
	tSerialIndiana_BoxRewardRand["Type"][10119][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10119][1][2]["ItemChance"] = 2900
	tSerialIndiana_BoxRewardRand["Type"][10119][1][2]["Item_1"] = 2		-- 修行

	tSerialIndiana_BoxRewardRand["Type"][10119][1][3] = {}
	tSerialIndiana_BoxRewardRand["Type"][10119][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10119][1][3]["ItemChance"] = 3000
	tSerialIndiana_BoxRewardRand["Type"][10119][1][3]["Item_1"] = 3		-- 气力
	
	tSerialIndiana_BoxRewardRand["Type"][10119][1][4] = {}
	tSerialIndiana_BoxRewardRand["Type"][10119][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10119][1][4]["ItemChance"] = 100
	tSerialIndiana_BoxRewardRand["Type"][10119][1][4]["Item_1"] = 4		-- 赠点

	-- 10-18层
	tSerialIndiana_BoxRewardRand["Type"][10120] = {}
	tSerialIndiana_BoxRewardRand["Type"][10120][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10120][1]["ItemChanceSum"] = 10000
	tSerialIndiana_BoxRewardRand["Type"][10120][1][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10120][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10120][1][1]["ItemChance"] = 3800
	tSerialIndiana_BoxRewardRand["Type"][10120][1][1]["Item_1"] = 1		-- 经验

	tSerialIndiana_BoxRewardRand["Type"][10120][1][2] = {}
	tSerialIndiana_BoxRewardRand["Type"][10120][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10120][1][2]["ItemChance"] = 2800
	tSerialIndiana_BoxRewardRand["Type"][10120][1][2]["Item_1"] = 2		-- 修行

	tSerialIndiana_BoxRewardRand["Type"][10120][1][3] = {}
	tSerialIndiana_BoxRewardRand["Type"][10120][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10120][1][3]["ItemChance"] = 3200
	tSerialIndiana_BoxRewardRand["Type"][10120][1][3]["Item_1"] = 3		-- 气力
	
	tSerialIndiana_BoxRewardRand["Type"][10120][1][4] = {}
	tSerialIndiana_BoxRewardRand["Type"][10120][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10120][1][4]["ItemChance"] = 200
	tSerialIndiana_BoxRewardRand["Type"][10120][1][4]["Item_1"] = 4		-- 赠点
	
	-- 19-27层
	tSerialIndiana_BoxRewardRand["Type"][10121] = {}
	tSerialIndiana_BoxRewardRand["Type"][10121][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10121][1]["ItemChanceSum"] = 10000
	tSerialIndiana_BoxRewardRand["Type"][10121][1][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10121][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10121][1][1]["ItemChance"] = 3600
	tSerialIndiana_BoxRewardRand["Type"][10121][1][1]["Item_1"] = 1		-- 经验

	tSerialIndiana_BoxRewardRand["Type"][10121][1][2] = {}
	tSerialIndiana_BoxRewardRand["Type"][10121][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10121][1][2]["ItemChance"] = 2700
	tSerialIndiana_BoxRewardRand["Type"][10121][1][2]["Item_1"] = 2		-- 修行

	tSerialIndiana_BoxRewardRand["Type"][10121][1][3] = {}
	tSerialIndiana_BoxRewardRand["Type"][10121][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10121][1][3]["ItemChance"] = 3400
	tSerialIndiana_BoxRewardRand["Type"][10121][1][3]["Item_1"] = 3		-- 气力
	
	tSerialIndiana_BoxRewardRand["Type"][10121][1][4] = {}
	tSerialIndiana_BoxRewardRand["Type"][10121][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10121][1][4]["ItemChance"] = 300
	tSerialIndiana_BoxRewardRand["Type"][10121][1][4]["Item_1"] = 4		-- 赠点
	
	-- 28-36层
	tSerialIndiana_BoxRewardRand["Type"][10122] = {}
	tSerialIndiana_BoxRewardRand["Type"][10122][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10122][1]["ItemChanceSum"] = 10000
	tSerialIndiana_BoxRewardRand["Type"][10122][1][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10122][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10122][1][1]["ItemChance"] = 3400
	tSerialIndiana_BoxRewardRand["Type"][10122][1][1]["Item_1"] = 1		-- 经验

	tSerialIndiana_BoxRewardRand["Type"][10122][1][2] = {}
	tSerialIndiana_BoxRewardRand["Type"][10122][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10122][1][2]["ItemChance"] = 2600
	tSerialIndiana_BoxRewardRand["Type"][10122][1][2]["Item_1"] = 2		-- 修行

	tSerialIndiana_BoxRewardRand["Type"][10122][1][3] = {}
	tSerialIndiana_BoxRewardRand["Type"][10122][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10122][1][3]["ItemChance"] = 3600
	tSerialIndiana_BoxRewardRand["Type"][10122][1][3]["Item_1"] = 3		-- 气力
	
	tSerialIndiana_BoxRewardRand["Type"][10122][1][4] = {}
	tSerialIndiana_BoxRewardRand["Type"][10122][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10122][1][4]["ItemChance"] = 400
	tSerialIndiana_BoxRewardRand["Type"][10122][1][4]["Item_1"] = 4		-- 赠点
	
	-- 37-45层
	tSerialIndiana_BoxRewardRand["Type"][10123] = {}
	tSerialIndiana_BoxRewardRand["Type"][10123][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10123][1]["ItemChanceSum"] = 10000
	tSerialIndiana_BoxRewardRand["Type"][10123][1][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10123][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10123][1][1]["ItemChance"] = 3200
	tSerialIndiana_BoxRewardRand["Type"][10123][1][1]["Item_1"] = 1		-- 经验

	tSerialIndiana_BoxRewardRand["Type"][10123][1][2] = {}
	tSerialIndiana_BoxRewardRand["Type"][10123][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10123][1][2]["ItemChance"] = 2500
	tSerialIndiana_BoxRewardRand["Type"][10123][1][2]["Item_1"] = 2		-- 修行

	tSerialIndiana_BoxRewardRand["Type"][10123][1][3] = {}
	tSerialIndiana_BoxRewardRand["Type"][10123][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10123][1][3]["ItemChance"] = 3800
	tSerialIndiana_BoxRewardRand["Type"][10123][1][3]["Item_1"] = 3		-- 气力
	
	tSerialIndiana_BoxRewardRand["Type"][10123][1][4] = {}
	tSerialIndiana_BoxRewardRand["Type"][10123][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10123][1][4]["ItemChance"] = 500
	tSerialIndiana_BoxRewardRand["Type"][10123][1][4]["Item_1"] = 4		-- 赠点
	
	-- 46-54层
	tSerialIndiana_BoxRewardRand["Type"][10124] = {}
	tSerialIndiana_BoxRewardRand["Type"][10124][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10124][1]["ItemChanceSum"] = 10000
	tSerialIndiana_BoxRewardRand["Type"][10124][1][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10124][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10124][1][1]["ItemChance"] = 3000
	tSerialIndiana_BoxRewardRand["Type"][10124][1][1]["Item_1"] = 1		-- 经验

	tSerialIndiana_BoxRewardRand["Type"][10124][1][2] = {}
	tSerialIndiana_BoxRewardRand["Type"][10124][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10124][1][2]["ItemChance"] = 2400
	tSerialIndiana_BoxRewardRand["Type"][10124][1][2]["Item_1"] = 2		-- 修行

	tSerialIndiana_BoxRewardRand["Type"][10124][1][3] = {}
	tSerialIndiana_BoxRewardRand["Type"][10124][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10124][1][3]["ItemChance"] = 4000
	tSerialIndiana_BoxRewardRand["Type"][10124][1][3]["Item_1"] = 3		-- 气力
	
	tSerialIndiana_BoxRewardRand["Type"][10124][1][4] = {}
	tSerialIndiana_BoxRewardRand["Type"][10124][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10124][1][4]["ItemChance"] = 600
	tSerialIndiana_BoxRewardRand["Type"][10124][1][4]["Item_1"] = 4		-- 赠点
	
	-- 55-63层
	tSerialIndiana_BoxRewardRand["Type"][10125] = {}
	tSerialIndiana_BoxRewardRand["Type"][10125][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10125][1]["ItemChanceSum"] = 10000
	tSerialIndiana_BoxRewardRand["Type"][10125][1][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10125][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10125][1][1]["ItemChance"] = 2800
	tSerialIndiana_BoxRewardRand["Type"][10125][1][1]["Item_1"] = 1		-- 经验

	tSerialIndiana_BoxRewardRand["Type"][10125][1][2] = {}
	tSerialIndiana_BoxRewardRand["Type"][10125][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10125][1][2]["ItemChance"] = 2300
	tSerialIndiana_BoxRewardRand["Type"][10125][1][2]["Item_1"] = 2		-- 修行

	tSerialIndiana_BoxRewardRand["Type"][10125][1][3] = {}
	tSerialIndiana_BoxRewardRand["Type"][10125][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10125][1][3]["ItemChance"] = 4200
	tSerialIndiana_BoxRewardRand["Type"][10125][1][3]["Item_1"] = 3		-- 气力
	
	tSerialIndiana_BoxRewardRand["Type"][10125][1][4] = {}
	tSerialIndiana_BoxRewardRand["Type"][10125][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10125][1][4]["ItemChance"] = 700
	tSerialIndiana_BoxRewardRand["Type"][10125][1][4]["Item_1"] = 4		-- 赠点
	
	-- 64-72层
	tSerialIndiana_BoxRewardRand["Type"][10126] = {}
	tSerialIndiana_BoxRewardRand["Type"][10126][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10126][1]["ItemChanceSum"] = 10000
	tSerialIndiana_BoxRewardRand["Type"][10126][1][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10126][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10126][1][1]["ItemChance"] = 2600
	tSerialIndiana_BoxRewardRand["Type"][10126][1][1]["Item_1"] = 1		-- 经验

	tSerialIndiana_BoxRewardRand["Type"][10126][1][2] = {}
	tSerialIndiana_BoxRewardRand["Type"][10126][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10126][1][2]["ItemChance"] = 2200
	tSerialIndiana_BoxRewardRand["Type"][10126][1][2]["Item_1"] = 2		-- 修行

	tSerialIndiana_BoxRewardRand["Type"][10126][1][3] = {}
	tSerialIndiana_BoxRewardRand["Type"][10126][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10126][1][3]["ItemChance"] = 4400
	tSerialIndiana_BoxRewardRand["Type"][10126][1][3]["Item_1"] = 3		-- 气力
	
	tSerialIndiana_BoxRewardRand["Type"][10126][1][4] = {}
	tSerialIndiana_BoxRewardRand["Type"][10126][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10126][1][4]["ItemChance"] = 800
	tSerialIndiana_BoxRewardRand["Type"][10126][1][4]["Item_1"] = 4		-- 赠点
	
	-- 73-81层
	tSerialIndiana_BoxRewardRand["Type"][10127] = {}
	tSerialIndiana_BoxRewardRand["Type"][10127][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10127][1]["ItemChanceSum"] = 10000
	tSerialIndiana_BoxRewardRand["Type"][10127][1][1] = {}
	tSerialIndiana_BoxRewardRand["Type"][10127][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10127][1][1]["ItemChance"] = 2400
	tSerialIndiana_BoxRewardRand["Type"][10127][1][1]["Item_1"] = 1		-- 经验

	tSerialIndiana_BoxRewardRand["Type"][10127][1][2] = {}
	tSerialIndiana_BoxRewardRand["Type"][10127][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10127][1][2]["ItemChance"] = 2100
	tSerialIndiana_BoxRewardRand["Type"][10127][1][2]["Item_1"] = 2		-- 修行

	tSerialIndiana_BoxRewardRand["Type"][10127][1][3] = {}
	tSerialIndiana_BoxRewardRand["Type"][10127][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10127][1][3]["ItemChance"] = 4600
	tSerialIndiana_BoxRewardRand["Type"][10127][1][3]["Item_1"] = 3		-- 气力
	
	tSerialIndiana_BoxRewardRand["Type"][10127][1][4] = {}
	tSerialIndiana_BoxRewardRand["Type"][10127][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxRewardRand["Type"][10127][1][4]["ItemChance"] = 900
	tSerialIndiana_BoxRewardRand["Type"][10127][1][4]["Item_1"] = 4		-- 赠点
	
	-- 获得奖励的类型函数
	tSerialIndiana_BoxRewardRand["Function"] = {}
	tSerialIndiana_BoxRewardRand["Function"][1] = SerialIndiana_AddExpTime
	tSerialIndiana_BoxRewardRand["Function"][2] = SerialIndiana_AddCultivation
	tSerialIndiana_BoxRewardRand["Function"][3] = SerialIndiana_AddStrengthValue
	tSerialIndiana_BoxRewardRand["Function"][4] = SerialIndiana_AddEMoneyMono
	tSerialIndiana_BoxRewardRand["Function"][5] = SerialIndiana_AddBoxIntegral

	-- 倍数
	tSerialIndiana_BoxRewardRand["Double"] = {}
	tSerialIndiana_BoxRewardRand["Double"][1] = 2		-- 当层数尾数逢3时，宝箱奖励为基础奖励的2倍。
	tSerialIndiana_BoxRewardRand["Double"][2] = 3		-- 当层数尾数逢9时，宝箱奖励为基础奖励的3倍。
	tSerialIndiana_BoxRewardRand["Double"][3] = 5		-- 竞技挑战中，每个宝箱第1个领取奖励的玩家可获得普通挑战的5倍奖励。
	
-- 宝箱奖励
local tSerialIndiana_BoxOpenReward = {}
	-- 经验值
	tSerialIndiana_BoxOpenReward[1] = {}
	tSerialIndiana_BoxOpenReward[1]["LogId"] = 12000623
	tSerialIndiana_BoxOpenReward[1]["RewardExpTime"] = {}
	tSerialIndiana_BoxOpenReward[1]["RewardExpTime"]["Value"] = 1
	tSerialIndiana_BoxOpenReward[1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"	
	tSerialIndiana_BoxOpenReward[1]["RewardExpTime"]["FullValue"] = 1					
	tSerialIndiana_BoxOpenReward[1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12000623,2,6,%d"
	tSerialIndiana_BoxOpenReward[1]["RewardEffect"] = {}
	tSerialIndiana_BoxOpenReward[1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 修行
	tSerialIndiana_BoxOpenReward[2] = {}
	tSerialIndiana_BoxOpenReward[2]["LogId"] = 12000623
	tSerialIndiana_BoxOpenReward[2]["RewardCultivation"] = {}
	tSerialIndiana_BoxOpenReward[2]["RewardCultivation"]["Value"] = 1
	tSerialIndiana_BoxOpenReward[2]["RewardEffect"] = {}
	tSerialIndiana_BoxOpenReward[2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 气力
	tSerialIndiana_BoxOpenReward[3] = {}
	tSerialIndiana_BoxOpenReward[3]["LogId"] = 12000623
	tSerialIndiana_BoxOpenReward[3]["RewardStrengthValue"] = {}
	tSerialIndiana_BoxOpenReward[3]["RewardStrengthValue"]["Value"] = 1
	tSerialIndiana_BoxOpenReward[3]["RewardEffect"] = {}
	tSerialIndiana_BoxOpenReward[3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 赠点
	tSerialIndiana_BoxOpenReward[4] = {}
	tSerialIndiana_BoxOpenReward[4]["LogId"] = 12000623
	tSerialIndiana_BoxOpenReward[4]["RewardEMoneyMono"] = {}
	tSerialIndiana_BoxOpenReward[4]["RewardEMoneyMono"]["Value"] = 1
	tSerialIndiana_BoxOpenReward[4]["RewardEffect"] = {}
	tSerialIndiana_BoxOpenReward[4]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 给通用物品表
local tSerialIndiana_UsuallyReward = {}
	-- 进入地图给随机符
	tSerialIndiana_UsuallyReward[1] = {}
	tSerialIndiana_UsuallyReward[1]["RewardItem"] = {}
	tSerialIndiana_UsuallyReward[1]["RewardItem"][1] = {}
	tSerialIndiana_UsuallyReward[1]["RewardItem"][1]["Id"] = 3302120
	tSerialIndiana_UsuallyReward[1]["RewardItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UsuallyReward[1]["LogId"] = 12000623
	tSerialIndiana_UsuallyReward[1]["RewardEffect"] = {}
	tSerialIndiana_UsuallyReward[1]["RewardEffect"]["Effect"] = "angelwing"
	
	--给单个物品
	tSerialIndiana_UsuallyReward[2] = {}
	tSerialIndiana_UsuallyReward[2]["LogId"] = 12000623
	tSerialIndiana_UsuallyReward[2]["RewardItem"] = {}
	tSerialIndiana_UsuallyReward[2]["RewardItem"][1] = {}
	tSerialIndiana_UsuallyReward[2]["RewardItem"][1]["Id"] = 0
	tSerialIndiana_UsuallyReward[2]["RewardItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UsuallyReward[2]["RewardEffect"] = {}
	tSerialIndiana_UsuallyReward[2]["RewardEffect"]["Effect"] = "angelwing"
	
-- 外套礼包
local tSerialIndiana_UseCoatItem = {}
	-- 洋洋得意（赠）
	tSerialIndiana_UseCoatItem[1] = {}
	tSerialIndiana_UseCoatItem[1]["DeleteItem"] = {}
	tSerialIndiana_UseCoatItem[1]["DeleteItem"][1] = {}
	tSerialIndiana_UseCoatItem[1]["DeleteItem"][1]["Id"] = 3302285
	tSerialIndiana_UseCoatItem[1]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseCoatItem[1]["RewardItem"] = {}
	tSerialIndiana_UseCoatItem[1]["RewardItem"][1] = {}
	tSerialIndiana_UseCoatItem[1]["RewardItem"][1]["Id"] = 193205
	tSerialIndiana_UseCoatItem[1]["RewardItem"][1]["Attr"] = "0 1 3 %d %d 0 0 1"
	tSerialIndiana_UseCoatItem[1]["Log"] = "0,0,%d,1,12000623,2,193205,1"
	tSerialIndiana_UseCoatItem[1]["RewardEffect"] = {}
	tSerialIndiana_UseCoatItem[1]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙凤呈祥（赠）
	tSerialIndiana_UseCoatItem[2] = {}
	tSerialIndiana_UseCoatItem[2]["DeleteItem"] = {}
	tSerialIndiana_UseCoatItem[2]["DeleteItem"][1] = {}
	tSerialIndiana_UseCoatItem[2]["DeleteItem"][1]["Id"] = 3302285
	tSerialIndiana_UseCoatItem[2]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseCoatItem[2]["RewardItem"] = {}
	tSerialIndiana_UseCoatItem[2]["RewardItem"][1] = {}
	tSerialIndiana_UseCoatItem[2]["RewardItem"][1]["Id"] = 192575
	tSerialIndiana_UseCoatItem[2]["RewardItem"][1]["Attr"] = "0 1 3 %d %d 0 0 1"
	tSerialIndiana_UseCoatItem[2]["Log"] = "0,0,%d,1,12000623,2,192575,1"
	tSerialIndiana_UseCoatItem[2]["RewardEffect"] = {}
	tSerialIndiana_UseCoatItem[2]["RewardEffect"]["Effect"] = "angelwing"
	-- 雀羚轻衫（赠）
	tSerialIndiana_UseCoatItem[3] = {}
	tSerialIndiana_UseCoatItem[3]["DeleteItem"] = {}
	tSerialIndiana_UseCoatItem[3]["DeleteItem"][1] = {}
	tSerialIndiana_UseCoatItem[3]["DeleteItem"][1]["Id"] = 3302285
	tSerialIndiana_UseCoatItem[3]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseCoatItem[3]["RewardItem"] = {}
	tSerialIndiana_UseCoatItem[3]["RewardItem"][1] = {}
	tSerialIndiana_UseCoatItem[3]["RewardItem"][1]["Id"] = 189085
	tSerialIndiana_UseCoatItem[3]["RewardItem"][1]["Attr"] = "0 1 3 %d %d 0 0 1"
	tSerialIndiana_UseCoatItem[3]["Log"] = "0,0,%d,1,12000623,2,189085,1"
	tSerialIndiana_UseCoatItem[3]["RewardEffect"] = {}
	tSerialIndiana_UseCoatItem[3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3302285,'大赢家永久外套礼包',
	tSerialIndiana_UseCoatItem[3302285] = {}
	tSerialIndiana_UseCoatItem[3302285]["Time"] = 0
	tSerialIndiana_UseCoatItem[3302285]["Active"] = 0
	-- 3302286,'大赢家时效外套豪华包
	tSerialIndiana_UseCoatItem[3302286] = {}
	tSerialIndiana_UseCoatItem[3302286]["Time"] = 259200
	tSerialIndiana_UseCoatItem[3302286]["Active"] = 1
	-- 3302287,'大赢家时效外套精装包
	tSerialIndiana_UseCoatItem[3302287] = {}
	tSerialIndiana_UseCoatItem[3302287]["Time"] = 129600
	tSerialIndiana_UseCoatItem[3302287]["Active"] = 1
	-- 3302288,'大赢家时效外套礼包',
	tSerialIndiana_UseCoatItem[3302288] = {}
	tSerialIndiana_UseCoatItem[3302288]["Time"] = 86400
	tSerialIndiana_UseCoatItem[3302288]["Active"] = 1

-- 礼包打开
local tSerialIndiana_UseRewarItem = {}
	-- 大赢家冠军礼包 3302289
	tSerialIndiana_UseRewarItem[3302289] = {}
	tSerialIndiana_UseRewarItem[3302289]["NeedSpace"] = 4
	tSerialIndiana_UseRewarItem[3302289]["DeleteItem"] = {}
	tSerialIndiana_UseRewarItem[3302289]["DeleteItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302289]["DeleteItem"][1]["Id"] = 3302289
	tSerialIndiana_UseRewarItem[3302289]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302289]["RewardItem"] = {}
	tSerialIndiana_UseRewarItem[3302289]["RewardItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302289]["RewardItem"][1]["Id"] = 3302285--永久外套三选一
	tSerialIndiana_UseRewarItem[3302289]["RewardItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302289]["RewardItem"][2] = {}
	tSerialIndiana_UseRewarItem[3302289]["RewardItem"][2]["Id"] = 3009002--晶莹星陨石*2
	tSerialIndiana_UseRewarItem[3302289]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tSerialIndiana_UseRewarItem[3302289]["RewardItem"][3] = {}
	tSerialIndiana_UseRewarItem[3302289]["RewardItem"][3]["Id"] = 4060001--万能神纹精粹*50
	tSerialIndiana_UseRewarItem[3302289]["RewardItem"][3]["Attr"] = "0 50 3"
	tSerialIndiana_UseRewarItem[3302289]["RewardStrengthValue"] = {}
	tSerialIndiana_UseRewarItem[3302289]["RewardStrengthValue"]["Value"] = 10000
	tSerialIndiana_UseRewarItem[3302289]["LogId"] = 12000623
	tSerialIndiana_UseRewarItem[3302289]["RewardEffect"] = {}
	tSerialIndiana_UseRewarItem[3302289]["RewardEffect"]["Effect"] = "angelwing"
	-- 大赢家亚军礼包 3302290
	tSerialIndiana_UseRewarItem[3302290] = {}
	tSerialIndiana_UseRewarItem[3302290]["NeedSpace"] = 3
	tSerialIndiana_UseRewarItem[3302290]["DeleteItem"] = {}
	tSerialIndiana_UseRewarItem[3302290]["DeleteItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302290]["DeleteItem"][1]["Id"] = 3302290
	tSerialIndiana_UseRewarItem[3302290]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302290]["RewardItem"] = {}
	tSerialIndiana_UseRewarItem[3302290]["RewardItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302290]["RewardItem"][1]["Id"] = 3302286--180外套三选一
	tSerialIndiana_UseRewarItem[3302290]["RewardItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302290]["RewardItem"][2] = {}
	tSerialIndiana_UseRewarItem[3302290]["RewardItem"][2]["Id"] = 3009002--晶莹星陨石*1
	tSerialIndiana_UseRewarItem[3302290]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tSerialIndiana_UseRewarItem[3302290]["RewardItem"][3] = {}
	tSerialIndiana_UseRewarItem[3302290]["RewardItem"][3]["Id"] = 4060001--万能神纹精粹*40
	tSerialIndiana_UseRewarItem[3302290]["RewardItem"][3]["Attr"] = "0 40 3"
	tSerialIndiana_UseRewarItem[3302290]["RewardStrengthValue"] = {}
	tSerialIndiana_UseRewarItem[3302290]["RewardStrengthValue"]["Value"] = 8000
	tSerialIndiana_UseRewarItem[3302290]["LogId"] = 12000623
	tSerialIndiana_UseRewarItem[3302290]["RewardEffect"] = {}
	tSerialIndiana_UseRewarItem[3302290]["RewardEffect"]["Effect"] = "angelwing"
	-- 大赢家季军礼包 3302291
	tSerialIndiana_UseRewarItem[3302291] = {}
	tSerialIndiana_UseRewarItem[3302291]["NeedSpace"] = 10
	tSerialIndiana_UseRewarItem[3302291]["DeleteItem"] = {}
	tSerialIndiana_UseRewarItem[3302291]["DeleteItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302291]["DeleteItem"][1]["Id"] = 3302291
	tSerialIndiana_UseRewarItem[3302291]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302291]["RewardItem"] = {}
	tSerialIndiana_UseRewarItem[3302291]["RewardItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302291]["RewardItem"][1]["Id"] = 3302287--90外套三选一
	tSerialIndiana_UseRewarItem[3302291]["RewardItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302291]["RewardItem"][2] = {}
	tSerialIndiana_UseRewarItem[3302291]["RewardItem"][2]["Id"] = 3009001--明亮星陨石*8
	tSerialIndiana_UseRewarItem[3302291]["RewardItem"][2]["Attr"] = "0 8 0 2880 1"
	tSerialIndiana_UseRewarItem[3302291]["RewardItem"][3] = {}
	tSerialIndiana_UseRewarItem[3302291]["RewardItem"][3]["Id"] = 4060001--万能神纹精粹*30
	tSerialIndiana_UseRewarItem[3302291]["RewardItem"][3]["Attr"] = "0 30 3"
	tSerialIndiana_UseRewarItem[3302291]["RewardStrengthValue"] = {}
	tSerialIndiana_UseRewarItem[3302291]["RewardStrengthValue"]["Value"] = 6000
	tSerialIndiana_UseRewarItem[3302291]["LogId"] = 12000623
	tSerialIndiana_UseRewarItem[3302291]["RewardEffect"] = {}
	tSerialIndiana_UseRewarItem[3302291]["RewardEffect"]["Effect"] = "angelwing"
	-- 大赢家豪强礼包 3302292  
	tSerialIndiana_UseRewarItem[3302292] = {}
	tSerialIndiana_UseRewarItem[3302292]["NeedSpace"] = 5
	tSerialIndiana_UseRewarItem[3302292]["DeleteItem"] = {}
	tSerialIndiana_UseRewarItem[3302292]["DeleteItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302292]["DeleteItem"][1]["Id"] = 3302292
	tSerialIndiana_UseRewarItem[3302292]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302292]["RewardItem"] = {}
	tSerialIndiana_UseRewarItem[3302292]["RewardItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302292]["RewardItem"][1]["Id"] = 3302288--60外套二选一
	tSerialIndiana_UseRewarItem[3302292]["RewardItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302292]["RewardItem"][2] = {}
	tSerialIndiana_UseRewarItem[3302292]["RewardItem"][2]["Id"] = 3009001--明亮星陨石*5
	tSerialIndiana_UseRewarItem[3302292]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tSerialIndiana_UseRewarItem[3302292]["RewardItem"][3] = {}
	tSerialIndiana_UseRewarItem[3302292]["RewardItem"][3]["Id"] = 4060001--万能神纹精粹*20
	tSerialIndiana_UseRewarItem[3302292]["RewardItem"][3]["Attr"] = "0 20 3"
	tSerialIndiana_UseRewarItem[3302292]["RewardStrengthValue"] = {}
	tSerialIndiana_UseRewarItem[3302292]["RewardStrengthValue"]["Value"] = 5000
	tSerialIndiana_UseRewarItem[3302292]["LogId"] = 12000623
	tSerialIndiana_UseRewarItem[3302292]["RewardEffect"] = {}
	tSerialIndiana_UseRewarItem[3302292]["RewardEffect"]["Effect"] = "angelwing"
	-- 大赢家勇士礼包 3302293  
	tSerialIndiana_UseRewarItem[3302293] = {}
	tSerialIndiana_UseRewarItem[3302293]["NeedSpace"] = 3
	tSerialIndiana_UseRewarItem[3302293]["DeleteItem"] = {}
	tSerialIndiana_UseRewarItem[3302293]["DeleteItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302293]["DeleteItem"][1]["Id"] = 3302293
	tSerialIndiana_UseRewarItem[3302293]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302293]["RewardItem"] = {}
	tSerialIndiana_UseRewarItem[3302293]["RewardItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302293]["RewardItem"][1]["Id"] = 189085--30天外套
	tSerialIndiana_UseRewarItem[3302293]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSerialIndiana_UseRewarItem[3302293]["RewardItem"][2] = {}
	tSerialIndiana_UseRewarItem[3302293]["RewardItem"][2]["Id"] = 3009001--明亮星陨石*3
	tSerialIndiana_UseRewarItem[3302293]["RewardItem"][2]["Attr"] = "0 3 0 2880 1"
	tSerialIndiana_UseRewarItem[3302293]["RewardItem"][3] = {}
	tSerialIndiana_UseRewarItem[3302293]["RewardItem"][3]["Id"] = 4060001--万能神纹精粹*10
	tSerialIndiana_UseRewarItem[3302293]["RewardItem"][3]["Attr"] = "0 10 3"
	tSerialIndiana_UseRewarItem[3302293]["RewardStrengthValue"] = {}
	tSerialIndiana_UseRewarItem[3302293]["RewardStrengthValue"]["Value"] = 3000
	tSerialIndiana_UseRewarItem[3302293]["LogId"] = 12000623
	tSerialIndiana_UseRewarItem[3302293]["RewardEffect"] = {}
	tSerialIndiana_UseRewarItem[3302293]["RewardEffect"]["Effect"] = "angelwing"

	-- 每日积分冠军礼包 3302294
	tSerialIndiana_UseRewarItem[3302294] = {}
	tSerialIndiana_UseRewarItem[3302294]["NeedSpace"] = 7
	tSerialIndiana_UseRewarItem[3302294]["DeleteItem"] = {}
	tSerialIndiana_UseRewarItem[3302294]["DeleteItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302294]["DeleteItem"][1]["Id"] = 3302294
	tSerialIndiana_UseRewarItem[3302294]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302294]["RewardItem"] = {}
	tSerialIndiana_UseRewarItem[3302294]["RewardItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302294]["RewardItem"][1]["Id"] = 3003126--究极通神丹*10
	tSerialIndiana_UseRewarItem[3302294]["RewardItem"][1]["Attr"] = "0 10 3"
	tSerialIndiana_UseRewarItem[3302294]["RewardItem"][2] = {}
	tSerialIndiana_UseRewarItem[3302294]["RewardItem"][2]["Id"] = 3009001--明亮星陨石*5
	tSerialIndiana_UseRewarItem[3302294]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tSerialIndiana_UseRewarItem[3302294]["RewardItem"][3] = {}
	tSerialIndiana_UseRewarItem[3302294]["RewardItem"][3]["Id"] = 4050001--黄色神纹精粹*20
	tSerialIndiana_UseRewarItem[3302294]["RewardItem"][3]["Attr"] = "0 20 3"
	tSerialIndiana_UseRewarItem[3302294]["RewardStrengthValue"] = {}
	tSerialIndiana_UseRewarItem[3302294]["RewardStrengthValue"]["Value"] = 1000
	tSerialIndiana_UseRewarItem[3302294]["LogId"] = 12000623
	tSerialIndiana_UseRewarItem[3302294]["RewardEffect"] = {}
	tSerialIndiana_UseRewarItem[3302294]["RewardEffect"]["Effect"] = "angelwing"
	-- 每日积分亚军礼包 3302295
	tSerialIndiana_UseRewarItem[3302295] = {}
	tSerialIndiana_UseRewarItem[3302295]["NeedSpace"] = 5
	tSerialIndiana_UseRewarItem[3302295]["DeleteItem"] = {}
	tSerialIndiana_UseRewarItem[3302295]["DeleteItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302295]["DeleteItem"][1]["Id"] = 3302295
	tSerialIndiana_UseRewarItem[3302295]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302295]["RewardItem"] = {}
	tSerialIndiana_UseRewarItem[3302295]["RewardItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302295]["RewardItem"][1]["Id"] = 3003126--究极通神丹*6
	tSerialIndiana_UseRewarItem[3302295]["RewardItem"][1]["Attr"] = "0 6 3"
	tSerialIndiana_UseRewarItem[3302295]["RewardItem"][2] = {}
	tSerialIndiana_UseRewarItem[3302295]["RewardItem"][2]["Id"] = 3009001--明亮星陨石*3
	tSerialIndiana_UseRewarItem[3302295]["RewardItem"][2]["Attr"] = "0 3 0 2880 1"
	tSerialIndiana_UseRewarItem[3302295]["RewardItem"][3] = {}
	tSerialIndiana_UseRewarItem[3302295]["RewardItem"][3]["Id"] = 4050001--黄色神纹精粹*15
	tSerialIndiana_UseRewarItem[3302295]["RewardItem"][3]["Attr"] = "0 15 3"
	tSerialIndiana_UseRewarItem[3302295]["RewardStrengthValue"] = {}
	tSerialIndiana_UseRewarItem[3302295]["RewardStrengthValue"]["Value"] = 800
	tSerialIndiana_UseRewarItem[3302295]["LogId"] = 12000623
	tSerialIndiana_UseRewarItem[3302295]["RewardEffect"] = {}
	tSerialIndiana_UseRewarItem[3302295]["RewardEffect"]["Effect"] = "angelwing"
	-- 每日积分季军礼包 3302296
	tSerialIndiana_UseRewarItem[3302296] = {}
	tSerialIndiana_UseRewarItem[3302296]["NeedSpace"] = 4
	tSerialIndiana_UseRewarItem[3302296]["DeleteItem"] = {}
	tSerialIndiana_UseRewarItem[3302296]["DeleteItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302296]["DeleteItem"][1]["Id"] = 3302296
	tSerialIndiana_UseRewarItem[3302296]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302296]["RewardItem"] = {}
	tSerialIndiana_UseRewarItem[3302296]["RewardItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302296]["RewardItem"][1]["Id"] = 3003124--免费强炼丹*5
	tSerialIndiana_UseRewarItem[3302296]["RewardItem"][1]["Attr"] = "0 5 3"
	tSerialIndiana_UseRewarItem[3302296]["RewardItem"][2] = {}
	tSerialIndiana_UseRewarItem[3302296]["RewardItem"][2]["Id"] = 3009001--明亮星陨石*2
	tSerialIndiana_UseRewarItem[3302296]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tSerialIndiana_UseRewarItem[3302296]["RewardItem"][3] = {}
	tSerialIndiana_UseRewarItem[3302296]["RewardItem"][3]["Id"] = 4050001--黄色神纹精粹*10
	tSerialIndiana_UseRewarItem[3302296]["RewardItem"][3]["Attr"] = "0 10 3"
	tSerialIndiana_UseRewarItem[3302296]["RewardStrengthValue"] = {}
	tSerialIndiana_UseRewarItem[3302296]["RewardStrengthValue"]["Value"] = 600
	tSerialIndiana_UseRewarItem[3302296]["LogId"] = 12000623
	tSerialIndiana_UseRewarItem[3302296]["RewardEffect"] = {}
	tSerialIndiana_UseRewarItem[3302296]["RewardEffect"]["Effect"] = "angelwing"
	-- 每日4-6礼包 3302297
	tSerialIndiana_UseRewarItem[3302297] = {}
	tSerialIndiana_UseRewarItem[3302297]["NeedSpace"] = 3
	tSerialIndiana_UseRewarItem[3302297]["DeleteItem"] = {}
	tSerialIndiana_UseRewarItem[3302297]["DeleteItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302297]["DeleteItem"][1]["Id"] = 3302297
	tSerialIndiana_UseRewarItem[3302297]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302297]["RewardItem"] = {}
	tSerialIndiana_UseRewarItem[3302297]["RewardItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302297]["RewardItem"][1]["Id"] = 3003124--免费强炼丹*3
	tSerialIndiana_UseRewarItem[3302297]["RewardItem"][1]["Attr"] = "0 3 3"
	tSerialIndiana_UseRewarItem[3302297]["RewardItem"][2] = {}
	tSerialIndiana_UseRewarItem[3302297]["RewardItem"][2]["Id"] = 3009001--明亮星陨石*1
	tSerialIndiana_UseRewarItem[3302297]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tSerialIndiana_UseRewarItem[3302297]["RewardItem"][3] = {}
	tSerialIndiana_UseRewarItem[3302297]["RewardItem"][3]["Id"] = 4050001--黄色神纹精粹*5
	tSerialIndiana_UseRewarItem[3302297]["RewardItem"][3]["Attr"] = "0 5 3"
	tSerialIndiana_UseRewarItem[3302297]["RewardStrengthValue"] = {}
	tSerialIndiana_UseRewarItem[3302297]["RewardStrengthValue"]["Value"] = 400
	tSerialIndiana_UseRewarItem[3302297]["LogId"] = 12000623
	tSerialIndiana_UseRewarItem[3302297]["RewardEffect"] = {}
	tSerialIndiana_UseRewarItem[3302297]["RewardEffect"]["Effect"] = "angelwing"
	-- 每日7-10礼包 3302298
	tSerialIndiana_UseRewarItem[3302298] = {}
	tSerialIndiana_UseRewarItem[3302298]["NeedSpace"] = 7
	tSerialIndiana_UseRewarItem[3302298]["DeleteItem"] = {}
	tSerialIndiana_UseRewarItem[3302298]["DeleteItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302298]["DeleteItem"][1]["Id"] = 3302298
	tSerialIndiana_UseRewarItem[3302298]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302298]["RewardItem"] = {}
	tSerialIndiana_UseRewarItem[3302298]["RewardItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302298]["RewardItem"][1]["Id"] = 3003124--免费强炼丹*2
	tSerialIndiana_UseRewarItem[3302298]["RewardItem"][1]["Attr"] = "0 2 3"
	tSerialIndiana_UseRewarItem[3302298]["RewardItem"][2] = {}
	tSerialIndiana_UseRewarItem[3302298]["RewardItem"][2]["Id"] = 3009000--微光星陨石*5
	tSerialIndiana_UseRewarItem[3302298]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	tSerialIndiana_UseRewarItem[3302298]["RewardItem"][3] = {}
	tSerialIndiana_UseRewarItem[3302298]["RewardItem"][3]["Id"] = 4050001--黄色神纹精粹*3
	tSerialIndiana_UseRewarItem[3302298]["RewardItem"][3]["Attr"] = "0 3 3"
	tSerialIndiana_UseRewarItem[3302298]["RewardStrengthValue"] = {}
	tSerialIndiana_UseRewarItem[3302298]["RewardStrengthValue"]["Value"] = 100
	tSerialIndiana_UseRewarItem[3302298]["LogId"] = 12000623
	tSerialIndiana_UseRewarItem[3302298]["RewardEffect"] = {}
	tSerialIndiana_UseRewarItem[3302298]["RewardEffect"]["Effect"] = "angelwing"
	-- 最快通关奖励 3302367
	tSerialIndiana_UseRewarItem[3302367] = {}
	tSerialIndiana_UseRewarItem[3302367]["DeleteItem"] = {}
	tSerialIndiana_UseRewarItem[3302367]["DeleteItem"][1] = {}
	tSerialIndiana_UseRewarItem[3302367]["DeleteItem"][1]["Id"] = 3302367
	tSerialIndiana_UseRewarItem[3302367]["DeleteItem"][1]["Attr"] = "0 1"
	tSerialIndiana_UseRewarItem[3302367]["RewardStrengthValue"] = {}
	tSerialIndiana_UseRewarItem[3302367]["RewardStrengthValue"]["Value"] = 500
	tSerialIndiana_UseRewarItem[3302367]["Log"] = "0,0,3302367,1,12000623,2,12,500"
	tSerialIndiana_UseRewarItem[3302367]["RewardEffect"] = {}
	tSerialIndiana_UseRewarItem[3302367]["RewardEffect"]["Effect"] = "angelwing"
	
-- 上升层概率表
local tSerialIndiana_LayorRandom = {}
	-- 免费上升
	-- 免费上升2-5层
	tSerialIndiana_LayorRandom["Free"]= {}
	tSerialIndiana_LayorRandom["Free"][1] = {}
	tSerialIndiana_LayorRandom["Free"][1]["ItemChanceSum"] = 10000
	tSerialIndiana_LayorRandom["Free"][1][1] = {}
	tSerialIndiana_LayorRandom["Free"][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Free"][1][1]["ItemChance"] = 3000
	tSerialIndiana_LayorRandom["Free"][1][1]["Item_1"] = 2 -- 层数

	tSerialIndiana_LayorRandom["Free"][1][2] = {}
	tSerialIndiana_LayorRandom["Free"][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Free"][1][2]["ItemChance"] = 5000
	tSerialIndiana_LayorRandom["Free"][1][2]["Item_1"] = 3

	tSerialIndiana_LayorRandom["Free"][1][3] = {}
	tSerialIndiana_LayorRandom["Free"][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Free"][1][3]["ItemChance"] = 1000
	tSerialIndiana_LayorRandom["Free"][1][3]["Item_1"] = 4
	
	tSerialIndiana_LayorRandom["Free"][1][4] = {}
	tSerialIndiana_LayorRandom["Free"][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Free"][1][4]["ItemChance"] = 1000
	tSerialIndiana_LayorRandom["Free"][1][4]["Item_1"] = 5
	
	-- 付费上升2-5层
	tSerialIndiana_LayorRandom["Pay"] = {}
	tSerialIndiana_LayorRandom["Pay"][1] = {}
	tSerialIndiana_LayorRandom["Pay"][1]["ItemChanceSum"] = 10000
	tSerialIndiana_LayorRandom["Pay"][1][1] = {}
	tSerialIndiana_LayorRandom["Pay"][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Pay"][1][1]["ItemChance"] = 500
	tSerialIndiana_LayorRandom["Pay"][1][1]["Item_1"] = 2 -- 层数

	tSerialIndiana_LayorRandom["Pay"][1][2] = {}
	tSerialIndiana_LayorRandom["Pay"][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Pay"][1][2]["ItemChance"] = 1000
	tSerialIndiana_LayorRandom["Pay"][1][2]["Item_1"] = 3

	tSerialIndiana_LayorRandom["Pay"][1][3] = {}
	tSerialIndiana_LayorRandom["Pay"][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Pay"][1][3]["ItemChance"] = 6500
	tSerialIndiana_LayorRandom["Pay"][1][3]["Item_1"] = 4
	
	tSerialIndiana_LayorRandom["Pay"][1][4] = {}
	tSerialIndiana_LayorRandom["Pay"][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Pay"][1][4]["ItemChance"] = 2000
	tSerialIndiana_LayorRandom["Pay"][1][4]["Item_1"] = 5
	
	-- 随机符升层概率
	tSerialIndiana_LayorRandom[3302120] = {}
	tSerialIndiana_LayorRandom[3302120][1] = {}
	tSerialIndiana_LayorRandom[3302120][1]["ItemChanceSum"] = 10000
	tSerialIndiana_LayorRandom[3302120][1][1] = {}
	tSerialIndiana_LayorRandom[3302120][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302120][1][1]["ItemChance"] = 7000
	tSerialIndiana_LayorRandom[3302120][1][1]["Item_1"] = "Up" -- 上升

	tSerialIndiana_LayorRandom[3302120][1][2] = {}
	tSerialIndiana_LayorRandom[3302120][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302120][1][2]["ItemChance"] = 3000
	tSerialIndiana_LayorRandom[3302120][1][2]["Item_1"] = "Down"  -- 下架
	
	-- 升层符，随机上升1-10层
	tSerialIndiana_LayorRandom[3302121] = {}
	tSerialIndiana_LayorRandom[3302121][1] = {}
	tSerialIndiana_LayorRandom[3302121][1]["ItemChanceSum"] = 10000
	tSerialIndiana_LayorRandom[3302121][1][1] = {}
	tSerialIndiana_LayorRandom[3302121][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302121][1][1]["ItemChance"] = 300
	tSerialIndiana_LayorRandom[3302121][1][1]["Item_1"] = 1 -- 层数
	tSerialIndiana_LayorRandom[3302121][1][2] = {}
	tSerialIndiana_LayorRandom[3302121][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302121][1][2]["ItemChance"] = 500
	tSerialIndiana_LayorRandom[3302121][1][2]["Item_1"] = 2 -- 层数
	tSerialIndiana_LayorRandom[3302121][1][3] = {}
	tSerialIndiana_LayorRandom[3302121][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302121][1][3]["ItemChance"] = 700
	tSerialIndiana_LayorRandom[3302121][1][3]["Item_1"] = 3 -- 层数
	tSerialIndiana_LayorRandom[3302121][1][4] = {}
	tSerialIndiana_LayorRandom[3302121][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302121][1][4]["ItemChance"] = 1500
	tSerialIndiana_LayorRandom[3302121][1][4]["Item_1"] = 4 -- 层数
	tSerialIndiana_LayorRandom[3302121][1][5] = {}
	tSerialIndiana_LayorRandom[3302121][1][5]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302121][1][5]["ItemChance"] = 3000
	tSerialIndiana_LayorRandom[3302121][1][5]["Item_1"] = 5 -- 层数
	tSerialIndiana_LayorRandom[3302121][1][6] = {}
	tSerialIndiana_LayorRandom[3302121][1][6]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302121][1][6]["ItemChance"] = 1500
	tSerialIndiana_LayorRandom[3302121][1][6]["Item_1"] = 6 -- 层数
	tSerialIndiana_LayorRandom[3302121][1][7] = {}
	tSerialIndiana_LayorRandom[3302121][1][7]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302121][1][7]["ItemChance"] = 1000
	tSerialIndiana_LayorRandom[3302121][1][7]["Item_1"] = 7 -- 层数
	tSerialIndiana_LayorRandom[3302121][1][8] = {}
	tSerialIndiana_LayorRandom[3302121][1][8]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302121][1][8]["ItemChance"] = 700
	tSerialIndiana_LayorRandom[3302121][1][8]["Item_1"] = 8 -- 层数
	tSerialIndiana_LayorRandom[3302121][1][9] = {}
	tSerialIndiana_LayorRandom[3302121][1][9]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302121][1][9]["ItemChance"] = 500
	tSerialIndiana_LayorRandom[3302121][1][9]["Item_1"] = 9 -- 层数
	tSerialIndiana_LayorRandom[3302121][1][10] = {}
	tSerialIndiana_LayorRandom[3302121][1][10]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302121][1][10]["ItemChance"] = 300
	tSerialIndiana_LayorRandom[3302121][1][10]["Item_1"] = 10 -- 层数
	
	-- 降层符，随机下降1-5层
	tSerialIndiana_LayorRandom[3302122] = {}
	tSerialIndiana_LayorRandom[3302122][1] = {}
	tSerialIndiana_LayorRandom[3302122][1]["ItemChanceSum"] = 10000
	tSerialIndiana_LayorRandom[3302122][1][1] = {}
	tSerialIndiana_LayorRandom[3302122][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302122][1][1]["ItemChance"] = 1000
	tSerialIndiana_LayorRandom[3302122][1][1]["Item_1"] = 1 -- 层数
	tSerialIndiana_LayorRandom[3302122][1][2] = {}
	tSerialIndiana_LayorRandom[3302122][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302122][1][2]["ItemChance"] = 2000
	tSerialIndiana_LayorRandom[3302122][1][2]["Item_1"] = 2 -- 层数
	tSerialIndiana_LayorRandom[3302122][1][3] = {}
	tSerialIndiana_LayorRandom[3302122][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302122][1][3]["ItemChance"] = 4000
	tSerialIndiana_LayorRandom[3302122][1][3]["Item_1"] = 3 -- 层数
	tSerialIndiana_LayorRandom[3302122][1][4] = {}
	tSerialIndiana_LayorRandom[3302122][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302122][1][4]["ItemChance"] = 2000
	tSerialIndiana_LayorRandom[3302122][1][4]["Item_1"] = 4 -- 层数
	tSerialIndiana_LayorRandom[3302122][1][5] = {}
	tSerialIndiana_LayorRandom[3302122][1][5]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom[3302122][1][5]["ItemChance"] = 1000
	tSerialIndiana_LayorRandom[3302122][1][5]["Item_1"] = 5 -- 层数
	
	-- 随机上升5-20层
	tSerialIndiana_LayorRandom["Up"] = {}
	tSerialIndiana_LayorRandom["Up"][1] = {}
	tSerialIndiana_LayorRandom["Up"][1]["ItemChanceSum"] = 10000
	tSerialIndiana_LayorRandom["Up"][1][1] = {}
	tSerialIndiana_LayorRandom["Up"][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][1]["ItemChance"] = 1000
	tSerialIndiana_LayorRandom["Up"][1][1]["Item_1"] = 5 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][2] = {}
	tSerialIndiana_LayorRandom["Up"][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][2]["ItemChance"] = 1000
	tSerialIndiana_LayorRandom["Up"][1][2]["Item_1"] = 6 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][3] = {}
	tSerialIndiana_LayorRandom["Up"][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][3]["ItemChance"] = 1000
	tSerialIndiana_LayorRandom["Up"][1][3]["Item_1"] = 7 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][4] = {}
	tSerialIndiana_LayorRandom["Up"][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][4]["ItemChance"] = 1000
	tSerialIndiana_LayorRandom["Up"][1][4]["Item_1"] = 8 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][5] = {}
	tSerialIndiana_LayorRandom["Up"][1][5]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][5]["ItemChance"] = 1000
	tSerialIndiana_LayorRandom["Up"][1][5]["Item_1"] = 9 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][6] = {}
	tSerialIndiana_LayorRandom["Up"][1][6]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][6]["ItemChance"] = 600
	tSerialIndiana_LayorRandom["Up"][1][6]["Item_1"] = 10 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][7] = {}
	tSerialIndiana_LayorRandom["Up"][1][7]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][7]["ItemChance"] = 600
	tSerialIndiana_LayorRandom["Up"][1][7]["Item_1"] = 11 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][8] = {}
	tSerialIndiana_LayorRandom["Up"][1][8]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][8]["ItemChance"] = 600
	tSerialIndiana_LayorRandom["Up"][1][8]["Item_1"] = 12 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][9] = {}
	tSerialIndiana_LayorRandom["Up"][1][9]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][9]["ItemChance"] = 600
	tSerialIndiana_LayorRandom["Up"][1][9]["Item_1"] = 13 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][10] = {}
	tSerialIndiana_LayorRandom["Up"][1][10]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][10]["ItemChance"] = 600
	tSerialIndiana_LayorRandom["Up"][1][10]["Item_1"] = 14 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][11] = {}
	tSerialIndiana_LayorRandom["Up"][1][11]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][11]["ItemChance"] = 500
	tSerialIndiana_LayorRandom["Up"][1][11]["Item_1"] = 15 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][12] = {}
	tSerialIndiana_LayorRandom["Up"][1][12]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][12]["ItemChance"] = 300
	tSerialIndiana_LayorRandom["Up"][1][12]["Item_1"] = 16 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][13] = {}
	tSerialIndiana_LayorRandom["Up"][1][13]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][13]["ItemChance"] = 300
	tSerialIndiana_LayorRandom["Up"][1][13]["Item_1"] = 17 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][14] = {}
	tSerialIndiana_LayorRandom["Up"][1][14]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][14]["ItemChance"] = 300
	tSerialIndiana_LayorRandom["Up"][1][14]["Item_1"] = 18 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][15] = {}
	tSerialIndiana_LayorRandom["Up"][1][15]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][15]["ItemChance"] = 300
	tSerialIndiana_LayorRandom["Up"][1][15]["Item_1"] = 19 -- 层数
	tSerialIndiana_LayorRandom["Up"][1][16] = {}
	tSerialIndiana_LayorRandom["Up"][1][16]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Up"][1][16]["ItemChance"] = 300
	tSerialIndiana_LayorRandom["Up"][1][16]["Item_1"] = 20 -- 层数
	
	-- 随机下降1-10层
	tSerialIndiana_LayorRandom["Down"] = {}
	tSerialIndiana_LayorRandom["Down"][1] = {}
	tSerialIndiana_LayorRandom["Down"][1]["ItemChanceSum"] = 10000
	tSerialIndiana_LayorRandom["Down"][1][1] = {}
	tSerialIndiana_LayorRandom["Down"][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Down"][1][1]["ItemChance"] = 2500
	tSerialIndiana_LayorRandom["Down"][1][1]["Item_1"] = 1 -- 层数
	tSerialIndiana_LayorRandom["Down"][1][2] = {}
	tSerialIndiana_LayorRandom["Down"][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Down"][1][2]["ItemChance"] = 2000
	tSerialIndiana_LayorRandom["Down"][1][2]["Item_1"] = 2 -- 层数
	tSerialIndiana_LayorRandom["Down"][1][3] = {}
	tSerialIndiana_LayorRandom["Down"][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Down"][1][3]["ItemChance"] = 1500
	tSerialIndiana_LayorRandom["Down"][1][3]["Item_1"] = 3 -- 层数
	tSerialIndiana_LayorRandom["Down"][1][4] = {}
	tSerialIndiana_LayorRandom["Down"][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Down"][1][4]["ItemChance"] = 1000
	tSerialIndiana_LayorRandom["Down"][1][4]["Item_1"] = 4 -- 层数
	tSerialIndiana_LayorRandom["Down"][1][5] = {}
	tSerialIndiana_LayorRandom["Down"][1][5]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Down"][1][5]["ItemChance"] = 700
	tSerialIndiana_LayorRandom["Down"][1][5]["Item_1"] = 5 -- 层数
	tSerialIndiana_LayorRandom["Down"][1][6] = {}
	tSerialIndiana_LayorRandom["Down"][1][6]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Down"][1][6]["ItemChance"] = 700
	tSerialIndiana_LayorRandom["Down"][1][6]["Item_1"] = 6 -- 层数
	tSerialIndiana_LayorRandom["Down"][1][7] = {}
	tSerialIndiana_LayorRandom["Down"][1][7]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Down"][1][7]["ItemChance"] = 500
	tSerialIndiana_LayorRandom["Down"][1][7]["Item_1"] = 7 -- 层数
	tSerialIndiana_LayorRandom["Down"][1][8] = {}
	tSerialIndiana_LayorRandom["Down"][1][8]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Down"][1][8]["ItemChance"] = 500
	tSerialIndiana_LayorRandom["Down"][1][8]["Item_1"] = 8 -- 层数
	tSerialIndiana_LayorRandom["Down"][1][9] = {}
	tSerialIndiana_LayorRandom["Down"][1][9]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Down"][1][9]["ItemChance"] = 300
	tSerialIndiana_LayorRandom["Down"][1][9]["Item_1"] = 9 -- 层数
	tSerialIndiana_LayorRandom["Down"][1][10] = {}
	tSerialIndiana_LayorRandom["Down"][1][10]["RandomItemChanceType"] = 2
	tSerialIndiana_LayorRandom["Down"][1][10]["ItemChance"] = 300
	tSerialIndiana_LayorRandom["Down"][1][10]["Item_1"] = 10 -- 层数
	
-- 宝箱开启获得状态概率
local tSerialIndiana_BoxOpenStatus = {}
	tSerialIndiana_BoxOpenStatus["OpenBox"] = {}
	tSerialIndiana_BoxOpenStatus["OpenBox"][1] = {}
	tSerialIndiana_BoxOpenStatus["OpenBox"][1]["ItemChanceSum"] = 10000
	-- 正常
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][1] = {}
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][1]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][1]["ItemChance"] = 7500
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][1]["Item_1"] = 1
	-- 出现怪物
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][2] = {}
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][2]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][2]["ItemChance"] = 1000
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][2]["Item_1"] = 4277
	-- 眩晕
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][3] = {}
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][3]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][3]["ItemChance"] = 300
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][3]["Item_1"] = 3
	-- 反向
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][4] = {}
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][4]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][4]["ItemChance"] = 500
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][4]["Item_1"] = 4
	-- 扣血
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][5] = {}
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][5]["RandomItemChanceType"] = 2
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][5]["ItemChance"] = 700
	tSerialIndiana_BoxOpenStatus["OpenBox"][1][5]["Item_1"] = 5
	
-- 宝箱开启状态对应
local tSerialIndiana_UserStaus = {}
	-- 出现怪物
	-- 眩晕
	tSerialIndiana_UserStaus[3] = {}
	tSerialIndiana_UserStaus[3]["Status"] = 55
	tSerialIndiana_UserStaus[3]["Power"] = 100
	tSerialIndiana_UserStaus[3]["Secs"] = 3
	tSerialIndiana_UserStaus[3]["Times"] = 1
	tSerialIndiana_UserStaus[3]["RemainTime"] = 3
	tSerialIndiana_UserStaus[3]["EndTime"] = 1
	tSerialIndiana_UserStaus[3]["Recordable"] = 0
	tSerialIndiana_UserStaus[3]["Index"] = "Vertigo"
	-- 反向
	tSerialIndiana_UserStaus[4] = {}
	tSerialIndiana_UserStaus[4]["Status"] = 57
	tSerialIndiana_UserStaus[4]["Power"] = 100
	tSerialIndiana_UserStaus[4]["Secs"] = 3
	tSerialIndiana_UserStaus[4]["Times"] = 1
	tSerialIndiana_UserStaus[4]["RemainTime"] = 3
	tSerialIndiana_UserStaus[4]["EndTime"] = 1
	tSerialIndiana_UserStaus[4]["Recordable"] = 0
	tSerialIndiana_UserStaus[4]["Index"] = "Reverse"
	-- 扣血
	
-- 怪物死亡掉落
local tSerialIndiana_MonsterDropItem = {}
	-- 随机符
	tSerialIndiana_MonsterDropItem[4277] = {}
	tSerialIndiana_MonsterDropItem[4277]["ItemChanceSum"] = 10000
	tSerialIndiana_MonsterDropItem[4277][1] = {}
	tSerialIndiana_MonsterDropItem[4277][1]["RandomItemChanceType"] = 2
	tSerialIndiana_MonsterDropItem[4277][1]["ItemChance"] = 2100
	tSerialIndiana_MonsterDropItem[4277][1]["Item_1"] = 3302120
	-- 升级符
	tSerialIndiana_MonsterDropItem[4277][2] = {}
	tSerialIndiana_MonsterDropItem[4277][2]["RandomItemChanceType"] = 2
	tSerialIndiana_MonsterDropItem[4277][2]["ItemChance"] = 1500
	tSerialIndiana_MonsterDropItem[4277][2]["Item_1"] = 3302121
	-- 上升1
	tSerialIndiana_MonsterDropItem[4277][3] = {}
	tSerialIndiana_MonsterDropItem[4277][3]["RandomItemChanceType"] = 2
	tSerialIndiana_MonsterDropItem[4277][3]["ItemChance"] = 500
	tSerialIndiana_MonsterDropItem[4277][3]["Item_1"] = 3302123
	-- 上升2~5
	tSerialIndiana_MonsterDropItem[4277][4] = {}
	tSerialIndiana_MonsterDropItem[4277][4]["RandomItemChanceType"] = 2
	tSerialIndiana_MonsterDropItem[4277][4]["ItemChance"] = 300
	tSerialIndiana_MonsterDropItem[4277][4]["Item_1"] = 3302124
	-- 翻倍升层
	tSerialIndiana_MonsterDropItem[4277][5] = {}
	tSerialIndiana_MonsterDropItem[4277][5]["RandomItemChanceType"] = 2
	tSerialIndiana_MonsterDropItem[4277][5]["ItemChance"] = 100
	tSerialIndiana_MonsterDropItem[4277][5]["Item_1"] = 3302125
	-- 退层
	tSerialIndiana_MonsterDropItem[4277][6] = {}
	tSerialIndiana_MonsterDropItem[4277][6]["RandomItemChanceType"] = 2
	tSerialIndiana_MonsterDropItem[4277][6]["ItemChance"] = 500
	tSerialIndiana_MonsterDropItem[4277][6]["Item_1"] = 3302122
	-- 无
	tSerialIndiana_MonsterDropItem[4277][7] = {}
	tSerialIndiana_MonsterDropItem[4277][7]["RandomItemChanceType"] = 2
	tSerialIndiana_MonsterDropItem[4277][7]["ItemChance"] = 5000
	tSerialIndiana_MonsterDropItem[4277][7]["Item_1"] = 0

-- 邮件发奖
local tSerialIndiana_SendMailReward = {}
	-- 总榜
	tSerialIndiana_SendMailReward["Total"] = {}
	tSerialIndiana_SendMailReward["Total"]["ExistDay"] = 30
	-- 索引对应名次
	tSerialIndiana_SendMailReward["Total"][1] = 94481501
	tSerialIndiana_SendMailReward["Total"][2] = 94481504
	tSerialIndiana_SendMailReward["Total"][3] = 94481507
	tSerialIndiana_SendMailReward["Total"][4] = 94481510
	tSerialIndiana_SendMailReward["Total"][7] = 94481513
	-- 奖励物品
	tSerialIndiana_SendMailReward["Total"]["RewardItem"] = {}
	tSerialIndiana_SendMailReward["Total"]["RewardItem"][1] = 3302289
	tSerialIndiana_SendMailReward["Total"]["RewardItem"][2] = 3302290
	tSerialIndiana_SendMailReward["Total"]["RewardItem"][3] = 3302291
	tSerialIndiana_SendMailReward["Total"]["RewardItem"][4] = 3302292
	tSerialIndiana_SendMailReward["Total"]["RewardItem"][7] = 3302293
	-- 每日
	tSerialIndiana_SendMailReward["Day"] = {}
	tSerialIndiana_SendMailReward["Day"]["ExistDay"] = 30
	-- 索引对应名次
	tSerialIndiana_SendMailReward["Day"][1] = 94481516
	tSerialIndiana_SendMailReward["Day"][2] = 94481519
	tSerialIndiana_SendMailReward["Day"][3] = 94481522
	tSerialIndiana_SendMailReward["Day"][4] = 94481525
	tSerialIndiana_SendMailReward["Day"][7] = 94481528
	-- 奖励物品
	tSerialIndiana_SendMailReward["Day"]["RewardItem"] = {}
	tSerialIndiana_SendMailReward["Day"]["RewardItem"][1] = 3302294
	tSerialIndiana_SendMailReward["Day"]["RewardItem"][2] = 3302295
	tSerialIndiana_SendMailReward["Day"]["RewardItem"][3] = 3302296
	tSerialIndiana_SendMailReward["Day"]["RewardItem"][4] = 3302297
	tSerialIndiana_SendMailReward["Day"]["RewardItem"][7] = 3302298
	-- 最快
	tSerialIndiana_SendMailReward["Fast"] = {}
	tSerialIndiana_SendMailReward["Fast"]["ExistDay"] = 30
	tSerialIndiana_SendMailReward["Fast"]["ActionID"] = 94481531
	
------------------------------------------------逻辑部分-------------------------------------------------
-- 测试 Reset---
function SerialIndiana_Reset()
	for i,v in pairs(tSerialIndiana_Stc) do
		for a,b in pairs(v) do
			local nEvent = b["EventType"]
			local nType = b["DataType"]
			Task_SetStatistic(nEvent,nType,0,1) 
			Task_SetStcTimestamp(nEvent,nType,0)
		end
	end
end
function SerialIndiana_ResetGlobal(nIndex)
	for i,v in pairs(tSerialIndiana_GlobalData[nIndex]) do
		Sys_ResetAllSynaGlobalData(v)
		Sys_ResetAllSynaGlobalDataStr(v)
	end
end
-- 测试--- 
-- 检测二进制掩码
function SerialIndiana_ChkStcValue(nStcType,nIndex,nNeedChkNum)
	local nEvent = tSerialIndiana_Stc[nStcType][nIndex]["EventType"]
	local nType = tSerialIndiana_Stc[nStcType][nIndex]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	local nChkNum = tSerialIndiana_Stc[nStcType][nIndex]["AddStc"] or nNeedChkNum

	if Sys_ParseNumbersContain(nChkNum,nValue) then
		return true
	else
		return false
	end
end

-- 设置二进制掩码值
function SerialIndiana_AddStcValue(nStcType,nIndex,nNum)
	local nEvent = tSerialIndiana_Stc[nStcType][nIndex]["EventType"]
	local nType = tSerialIndiana_Stc[nStcType][nIndex]["DataType"]
	local nAddStc = tSerialIndiana_Stc[nStcType][nIndex]["AddStc"] or nNum

	Task_AddStatistic(nEvent,nType,nAddStc,1) 
	Task_SetStcTimestamp(nEvent,nType,0)
end

-- 获取掩码
function SerialIndiana_GetStcValue(nStcType,nIndex)
	local nEvent = tSerialIndiana_Stc[nStcType][nIndex]["EventType"]
	local nType = tSerialIndiana_Stc[nStcType][nIndex]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	
	return nValue
end

-- 隔天检测
function SerialIndiana_ChkStcInterval()
	for i,v in pairs(tSerialIndiana_Stc) do
		for a,b in pairs(v) do
			local nEvent = b["EventType"]
			local nType = b["DataType"]
			-- 总积分是不重置
			if nType ~= 31 and Task_StcInterval(nEvent,nType,1,4) then
				Task_SetStatistic(nEvent,nType,0,1) 
				Task_SetStcTimestamp(nEvent,nType,0)
				
				-- 记录log
				local sLog = tSerialIndiana_Log["StcInterval"]
				Sys_SaveActionFestivalLog(string.format(sLog,nEvent,nType))
			end
		end
	end
end 

-- 地图传送
function SerialIndiana_TransPos(nIndex,nType,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nMapId = tSerialIndiana_ChgMap[nIndex]["MapId"]
	local nPosX = tSerialIndiana_ChgMap[nIndex]["PosX"]
	local nPosY = tSerialIndiana_ChgMap[nIndex]["PosY"]
	local nRange = tSerialIndiana_ChgMap[nIndex]["Range"]
	local nEvent = tSerialIndiana_ChgMap[nIndex]["Effect"]
	local sUserTalk = tSerialIndiana_ChgMap[nIndex]["Talk"]

	if nMapId == tSerialIndiana_ChgMap[1]["MapId"] or nMapId == tSerialIndiana_ChgMap[2]["MapId"] then
		--清除身上道具
		for i,v in pairs(tSerialIndiana_Item) do
			if Item_ChkItem(v,0,0,nNowUserId) and Item_DelAllItemByType(v,nNowUserId) then 
				local sLog = tSerialIndiana_Log["ItemOverDue"]
				Sys_SaveActionFestivalLog(string.format(sLog,v),nNowUserId)
			end
		end
	end
	
	if nMapId == tSerialIndiana_ChgMap[1]["MapId"] then
		-- 记录点，避免玩家复活传回地图
		local nCellx = nPosX + nRange
		local nCelly = nPosY + nRange
		User_RecordPoint(nMapId,nCellx,nCelly,nNowUserId)
		
	end
	
	if nIndex == 1 then
		local sLog = tSerialIndiana_Log["OutMap"]
		Sys_SaveActionFestivalLog(tSerialIndiana_Log["OutMap"], nNowUserId)
	end
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,0,nNowUserId)
	if sUserTalk ~= nil and nType == nil then
		User_TalkChannel2005(tSerialIndiana_Text[sUserTalk],nNowUserId)
	end
	
	if nMapId == tSerialIndiana_ChgMap[2]["MapId"] then
		local nUserPosX = Get_UserPositionX(nNowUserId)
		local nUserPosY = Get_UserPositionY(nNowUserId)
		Map_Effect(nMapId,nUserPosX-5,nUserPosY-4,tSerialIndiana_MapEffect[1])
	end
	if nEvent ~= nil then
		User_EffectAdd(tSerialIndiana_Effect[nEvent]["EffectObj"],tSerialIndiana_Effect[nEvent]["Effect"],nNowUserId)
	end
end

-- 关卡尾数逢3或者9
function SerialIndiana_CheckPoint(nTotalLayer,nNum)
	local sNum = string.sub(tostring(nTotalLayer),-1,-1)
	if sNum == tostring(nNum) then
		return true
	else
		return false
	end
end

-- 当前关卡
function SerialIndiana_GetNowLayer(nNpcId,nMapId)
	local nLayerMap = SerialIndiana_GetOutMapLayer(nMapId)
	nLayerMap = (nLayerMap-1)*tSerialIndiana_Cont["MapLayerMax"]
	local nLayer = SerialIndiana_GetInMapLayer(nNpcId)
	return nLayerMap+nLayer
end

-- 获取当前地图内层数
function SerialIndiana_GetInMapLayer(nNpcId)
	local nLayer = 0
	local nPosX = Get_NpcPositionX(nNpcId)
	for a,b in pairs(tSerialIndiana_MapPos) do
		if b == nPosX then
			nLayer = a
		end
	end
	return nLayer
end

-- 所在地图
function SerialIndiana_GetOutMapLayer(nMapId)
	local nLayerMap = 0
	for i,v in pairs(tSerialIndiana_MapId) do
		if v == nMapId then
			nLayerMap = i
		end
	end
	return nLayerMap
end

-- 换算分秒
function SerialIndiana_GetMinuteSec(nTime)
	local nMinute = math.floor(nTime/60)
	local nSecond = nTime - nMinute*60
	local sText = tSerialIndiana_Text[20228]["Time"]
	local sMinuteText = string.format(sText,nMinute,nSecond)
	return sMinuteText
end
------------------------------------------------排行榜--------------------------

-- 刷新排行榜数据库
function SerialIndiana_RankingDataBase(nUserId,sUserName,nScore,nIndex,nRanking)
	local nGlobalId,nPos = SerialIndiana_GetPos(nIndex,nRanking)
	Sys_SetSynaGlobalData(nGlobalId,nPos,nUserId)
	Sys_SetSynaGlobalData(nGlobalId,nPos+1,nScore)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sUserName)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,"0")
end

-- 只刷新分数
function SerialIndiana_RankingScore(nScore,nIndex,nRanking)
	local nGlobalId,nPos = SerialIndiana_GetPos(nIndex,nRanking)
	Sys_SetSynaGlobalData(nGlobalId,nPos+1,nScore)
end

-- 只刷新领奖
function SerialIndiana_RankingReward(sReward,nIndex,nRanking)
	local nGlobalId,nPos = SerialIndiana_GetPos(nIndex,nRanking)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,sReward)
end

-- 获得ID和Pos
function SerialIndiana_GetPos(nIndex,nRanking)
	local nTableIndex = math.ceil(nRanking/3)
	local tGlobalId = tSerialIndiana_GlobalData[nIndex]
	local nGlobalId = tGlobalId[nTableIndex]
	local nPos = nRanking - (nTableIndex-1)*3
	if nPos == 1 then
		nPos = 0
	elseif nPos == 2 then
		nPos = 2
	elseif nPos == 2 then
		nPos = 4
	end
	return nGlobalId,nPos
end

-- 刷新关卡人数
function SerialIndiana_RefreshNum(nGlobalId,nInMapIdIndex,nNum)
	if nInMapIdIndex <= 6 then
		Sys_SetSynaGlobalData(nGlobalId,nInMapIdIndex-1,nNum)
	else
		Sys_SetSynaGlobalDataStr(nGlobalId,math.abs(7-nInMapIdIndex),tostring(nNum))
	end
end

------------------------------------------------npc 库洛洛 20228-------------------------------------------------
-- 排行榜 
function SerialIndiana_ReadRankingData()
	tSerialIndiana_DayRankingData = {}
	tSerialIndiana_TotalRankingData = {}
	--每日积分
	SerialIndiana_OperationRankingData(tSerialIndiana_DayRankingData,tSerialIndiana_GlobalData[1])

	--总榜
	SerialIndiana_OperationRankingData(tSerialIndiana_TotalRankingData,tSerialIndiana_GlobalData[2])
	
	--关卡人数
	SerialIndiana_MapToGlobalData()
end

function SerialIndiana_OperationRankingData(tRanking,tGlobal)
	for i,v in pairs(tGlobal) do
		for a=1,3 do
			local nIndex = (a-1)*2
			local nUserId = Get_SysDynaGlobalData(v,nIndex)
			if nUserId ~= 0 then
				local sUserName = Get_SysDynaGlobalDataStr(v,nIndex)
				local nScore = Get_SysDynaGlobalData(v,nIndex+1)
				local sReward = tonumber(Get_SysDynaGlobalDataStr(v,nIndex+1))
				table.insert(tRanking,{UserId = nUserId,UserName=sUserName,Score=nScore,Reward=sReward})
			end
		end
	end
end

-- 地图关卡对应的关卡人数
function SerialIndiana_MapToGlobalData()
	tSerialIndiana_LayerNum = {}
	for i,v in pairs(tSerialIndiana_GlobalData[4]) do
		tSerialIndiana_LayerNum[v] = {}
		for a=0,5 do
			local nNum = Get_SysDynaGlobalData(v,a)
			table.insert(tSerialIndiana_LayerNum[v],nNum)
		end
		for b=0,2 do
			local nNum = tonumber(Get_SysDynaGlobalDataStr(v,b))
			table.insert(tSerialIndiana_LayerNum[v],nNum)
		end
	end
end

-- nType [1] = "大赢家积分总榜"
-- nType [2] = "每日积分排行榜"
function SerialIndiana_RankingList(nNpcId,nType)
	SerialIndiana_NewRankingData(nNpcId,nType)
	if nType == 1 then
		-- 活动后大赢家积分总榜
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	elseif nType == 2 then
		-- 排行榜未确定
		if not Sys_ChkDayTime(tSerialIndiana_Cont["SpecialTime"]) and not Sys_ChkDayTime(tSerialIndiana_Cont["EndSpecialTime"])  then
			LinkNpcGossipFunc_New(nNpcId,"3-5")
			return
		end
		-- 每日积分排行榜
		LinkNpcGossipFunc_New(nNpcId,"2-3")
	else
		-- 大赢家积分总榜
		LinkNpcGossipFunc_New(nNpcId,"2-4")
	end
end

-- 读取排行榜数据
function SerialIndiana_RankingData(nNpcId,nType)
	local tRankingList = {}
	if nType == 1 then
		tRankingList = tSerialIndiana_DayRankingData
	else
		tRankingList = tSerialIndiana_TotalRankingData
	end
	for i,v in pairs(tRankingList) do
		local sTextIndex = tSerialIndiana_RankingText[i]
		local sText = tSerialIndiana_Text[nNpcId][sTextIndex]
		tNpcGossip[nNpcId][sTextIndex] = string.format(sText,v.Score,v.UserName)
	end
	local nLong = #tRankingList+1
	for j=10,nLong,-1 do
		local sTextIndex = tSerialIndiana_RankingText[j]
		tNpcGossip[nNpcId][sTextIndex] = ""
	end	
end

-- 新写读取排行榜数据
function SerialIndiana_NewRankingData(nNpcId,nType)
	local tRankingList = {}
	--RankingFunc_GetNowData()
	if nType == 3 then
		tRankingList = RankingFunc_GetNowData(20229)
	else
		if not Sys_ChkDayTime(tActivityTime["SerialIndiana"]["SpecialTime"]) then
			tRankingList = RankingFunc_GetBeforeData(20228)
		else
			tRankingList = RankingFunc_GetNowData(20228)
		end
		
	end
	
	for i,v in pairs(tRankingList) do
		local sTextIndex = tSerialIndiana_RankingText[i]
		-- local sText = tSerialIndiana_Text[nNpcId][sTextIndex]
		local sLeft = i
		local nLeft = 8
		local sMiddle = v.Score
		local nMiddle = 32
		local sRight = v.UserName
		local nRight = 61
		nRight = nRight - string.len(sMiddle)

		tNpcGossip[nNpcId][sTextIndex] = Sys_Alignment(sLeft,nLeft,sMiddle,nMiddle,sRight,nRight).."\n"
		-- tNpcGossip[nNpcId][sTextIndex] = string.format(sText,v.Score,v.UserName)
	end
	local nLong = #tRankingList+1
	for j=10,nLong,-1 do
		local sTextIndex = tSerialIndiana_RankingText[j]
		tNpcGossip[nNpcId][sTextIndex] = ""
	end	
end

-- 参加练习赛
function SerialIndiana_JoinPratice(nNpcId)
	-- 是否活动时间
	if not Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	-- 是否正式比赛前5分钟
	if Sys_ChkDayTime(tSerialIndiana_Cont["BeforSpecialTime"]) then
		Sys_MsgBox(tSerialIndiana_Text["FormalAgo"])
		return
	end
	
	-- 隔天检测
	SerialIndiana_ChkStcInterval()
	-- 今日已经已挑战
	if SerialIndiana_ChkStcValue(1,1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 正式比赛已经开始
	if Sys_ChkDayTime(tSerialIndiana_Cont["SpecialTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tSerialIndiana_Text[nNpcId]["EnterMapNoSpace"])
		return
	end
	
	-- 置掩码
	SerialIndiana_AddStcValue(1,1)
	-- 大赢家竞技场
	SerialIndiana_TransPos(2)
	--给随机符
	RewardTemplate_UseItemAndMsg(tSerialIndiana_UsuallyReward[1])
	-- 打log
	Sys_SaveActionFestivalLog(tSerialIndiana_Log["JoinPratice"])
	-- 倒计时5分钟
	local nTime = tSerialIndiana_Cont["TimeLimit"]
	local nUserId = Get_UserId()
	User_SetTimer(nTime,"SerialIndiana_Countdown",1,nUserId)
end

-- 倒计时结束
function SerialIndiana_Countdown(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	if nMapId == tSerialIndiana_ChgMap[1]["MapId"] then
		return
	end
	-- 回双龙城
	SerialIndiana_TransPos(1,0,nUserId)
	User_TalkChannel2005(tSerialIndiana_Text["PracticeAllOut"],nUserId)
end

-- 参加正式比赛
function SerialIndiana_JoinGame(nNpcId)
	-- 是否活动时间
	if not Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 当前并非活动时间
	if not Sys_ChkDayTime(tSerialIndiana_Cont["SpecialTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	-- 隔天检测
	SerialIndiana_ChkStcInterval()
	
	-- 今日已经已挑战
	if SerialIndiana_ChkStcValue(1,2) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tSerialIndiana_Text[nNpcId]["EnterMapNoSpace"])
		return
	end
	
	-- 置掩码
	SerialIndiana_AddStcValue(1,2)
	-- 大赢家竞技场
	SerialIndiana_TransPos(2)
	--给随机符
	RewardTemplate_UseItemAndMsg(tSerialIndiana_UsuallyReward[1])
	-- 打log
	Sys_SaveActionFestivalLog(tSerialIndiana_Log["JoinGame"])
end

-- 最快通关奖励
function SerialIndiana_FastPassReward(nNpcId)
	-- 是否活动时间
	if not Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 正式比赛未结束
	if Sys_ChkDayTime(tSerialIndiana_Cont["SpecialTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nGlobalId = tSerialIndiana_GlobalData[3]
	local nUserId = Get_SysDynaGlobalData(nGlobalId,2)
	-- 成功，但今日无人通关
	if nUserId == 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	-- 最快通关
	if nUserId > 0 then
		local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,2)
		-- 几分几秒
		local nTime = Get_SysDynaGlobalData(nGlobalId,3)
		local sTimeText = SerialIndiana_GetMinuteSec(nTime)
		local nSex = Get_UserSex(nUserId)
		-- 他/她
		local sSex = tSerialIndiana_Text[nNpcId]["Sex"][nSex]
		local sText = tSerialIndiana_Text[nNpcId]["Text421"] 
		tNpcGossip[nNpcId]["Text421"] = string.format(sText,sUserName,sSex,sTimeText)
		local sText = tSerialIndiana_Text[nNpcId]["Text423"] 
		tNpcGossip[nNpcId]["Text423"] = string.format(sText,sUserName)
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
end
------------------------------------------------npc 宝箱 20229-------------------------------------------------
-- 获得奖励 -经验
function SerialIndiana_AddExpTime(nValue)
	local tReward = CommonFunc_Copy(tSerialIndiana_BoxOpenReward[1])
	tReward["RewardExpTime"]["Value"] = nValue
	tReward["RewardExpTime"]["FullValue"] = nValue
	local sLog = tSerialIndiana_BoxOpenReward[1]["RewardExpTime"]["FullLog"]
	tReward["RewardExpTime"]["FullLog"] = string.format(sLog,nValue)
	RewardTemplate_UseItemAndMsg(tReward)
end

-- 获得奖励 -修行
function SerialIndiana_AddCultivation(nValue)
	local tReward = CommonFunc_Copy(tSerialIndiana_BoxOpenReward[2])
	tReward["RewardCultivation"]["Value"] = nValue
	RewardTemplate_UseItemAndMsg(tReward)
end

-- 获得奖励 -气力
function SerialIndiana_AddStrengthValue(nValue)
	local tReward = CommonFunc_Copy(tSerialIndiana_BoxOpenReward[3])
	tReward["RewardStrengthValue"]["Value"] = nValue
	RewardTemplate_UseItemAndMsg(tReward)
end

-- 获得奖励 -赠点
function SerialIndiana_AddEMoneyMono(nValue)
	local tReward = CommonFunc_Copy(tSerialIndiana_BoxOpenReward[4])
	tReward["RewardEMoneyMono"]["Value"] = nValue
	RewardTemplate_UseItemAndMsg(tReward)
end

-- 开启宝箱状态
function SerialIndiana_OpenBox()
	-- 判断地图有怪物否
	local nMapId = tonumber(Get_UserMapId())
	local nMonsterId = tSerialIndiana_Cont["MonsterId"]
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	-- if nMonsterNum > 0 then
		-- Sys_MsgBox(tSerialIndiana_Text["OpenBox"]["MonsterLife"])
		-- return false
	-- end
	local nFlag,tAward = Probabil_RandomAward(tSerialIndiana_BoxOpenStatus["OpenBox"],1)
	local nIndex = tAward[1]["tAward"][1]["Item_1"]
	
	if nIndex == 1 then
		-- 正常状态
		return true
	elseif nIndex == nMonsterId then
		-- 出现怪物
		local nMapId = Get_UserMapId()
		local nPosX = Get_UserPositionX()
		local nPosY = Get_UserPositionY()
		local nGenId = tSerialIndiana_Cont["GenId"]
		Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId)
		-- Sys_SetTempData(1,nMapId,nMonsterId,1)
		return false
	elseif nIndex == 3 or nIndex == 4 then
		SerialIndiana_Status(nIndex)
		return false
	else
		User_DecLifePercent(tSerialIndiana_Cont["DecLifePec"],1)
		local sTip = tSerialIndiana_Text["OpenBox"]["BuckleLife"]
		User_EffectAdd(tSerialIndiana_Effect[4]["EffectObj"],tSerialIndiana_Effect[4]["Effect"])
		Sys_MsgBox(sTip)
		return false
	end
end

-- 玩家加状态
function SerialIndiana_Status(nIndex,sTalkIndex)
	local nStatus = tSerialIndiana_UserStaus[nIndex]["Status"]
	local nPower = tSerialIndiana_UserStaus[nIndex]["Power"]
	local nSecs = tSerialIndiana_UserStaus[nIndex]["Secs"]
	local nTimes = tSerialIndiana_UserStaus[nIndex]["Times"]
	local nRemainTime = tSerialIndiana_UserStaus[nIndex]["RemainTime"]
	local nEndTime = tSerialIndiana_UserStaus[nIndex]["EndTime"]
	local nRecordable = tSerialIndiana_UserStaus[nIndex]["Recordable"]
	local sIndex = tSerialIndiana_UserStaus[nIndex]["Index"]
	local nUserId = Get_UserId()
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
	Sys_MsgBox(tSerialIndiana_Text["OpenBox"][sIndex])
end

-- 领取奖励
function SerialIndiana_RewardBox(nNpcId,nType)
	local nNpcId = Get_NpcId()
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayerMap = SerialIndiana_GetInMapLayer(nNpcId)
	local nLayer = SerialIndiana_GetOutMapLayer(nMapId)
	local nEmoneyMono = Get_UserMonoEMoney()
	local nUserId = Get_UserId()
	
	-- 不在大赢家地图，选项点击退出
	if nLayer == 0 then
		return
	end
	
	--判断是否在活动地图
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= nMapId then
		return
	end
	-- 天石赠已满
	if nEmoneyMono + nLayer > G_User_MaxEmoneyMono then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	if nType == 2 then
		--非正式比赛
		if Sys_ChkDayTime(tSerialIndiana_Cont["Activity"]) then
			return
		end
	end
	
	-- 宝箱开启状态
	if not SerialIndiana_OpenBox() then
		return
	end
	
	-- 置掩码
	SerialIndiana_AddStcValue(nType,nMapId,2^nLayerMap)	
	--给奖励
	local nFlag,tAward = Probabil_RandomAward(tSerialIndiana_BoxRewardRand["Type"][nMapId],1)

	local nRewardType = tonumber(tAward[1]["tAward"][1]["Item_1"])
	local nNum = math.random(tSerialIndiana_BoxRewardRand["Num"][nMapId][1],tSerialIndiana_BoxRewardRand["Num"][nMapId][2])
	local nPlusNum = 1
	local nTotalLayer = nLayerMap+9*(nLayer-1)
	local nUserNum = 0
	if nType == 3 then
		if not Sys_ChkDayTime(tSerialIndiana_Cont["SpecialTime"]) then
			local nMapId = Get_UserMapId(nUserId)
			if nMapId == tSerialIndiana_ChgMap[1]["MapId"] then
				return
			end
			-- 回双龙城
			SerialIndiana_TransPos(1,0,nUserId)
			return
		end
		local nScore = nTotalLayer
		-- 每日积分
		SerialIndiana_AddStcValue(1,3,nScore)
		-- 总积分
		SerialIndiana_AddStcValue(1,4,nScore)
		
		-- 刷新排行榜
		local nDayScore = SerialIndiana_GetStcValue(1,3)
		RankingFunc_SetInfo(20228,nDayScore,nUserId)
		local nTotalScore = SerialIndiana_GetStcValue(1,4)
		RankingFunc_SetInfo(20229,nTotalScore,nUserId)
		
		-- 打log
		local sLog = tSerialIndiana_Log["GetScore"]
		Sys_SaveActionFestivalLog(string.format(sLog,nMapId,nNpcId,nTotalLayer,nScore,nDayScore,nTotalScore))
		
		-- 正式比赛第一个领奖
		local nMapIdIndex = SerialIndiana_GetOutMapLayer(nMapId)
		local nInMapIdIndex = SerialIndiana_GetInMapLayer(nNpcId)
		local nNewGlobalId = tSerialIndiana_GlobalData[4][nMapIdIndex]
		nUserNum = tSerialIndiana_LayerNum[nNewGlobalId][nInMapIdIndex] or 0
		
		if nUserNum == 0 then
			nPlusNum = 5
			-- 最快通关
			if nNpcId == 20309 then
				local nUserId = Get_UserId()
				local sUserName = Get_UserName(nUserId)
				local nEvent = tSerialIndiana_Stc[1][2]["EventType"]
				local nType = tSerialIndiana_Stc[1][2]["DataType"]
				local nNowTime = os.time() - Get_UserStcTimestampValue(nEvent,nType)
				local nFirstGlobalId = tSerialIndiana_GlobalData[3]
				Sys_SetSynaGlobalData2(nFirstGlobalId,nUserId)
				Sys_SetSynaGlobalData3(nFirstGlobalId,nNowTime)
				Sys_SetSynaGlobalDataStr2(nFirstGlobalId,sUserName)
				Sys_SetSynaGlobalDataStr3(nFirstGlobalId,"0")
			end
		end
		-- 刷新关卡人数
		tSerialIndiana_LayerNum[nNewGlobalId][nInMapIdIndex] = nUserNum+1
		SerialIndiana_RefreshNum(nNewGlobalId,nInMapIdIndex,nUserNum+1)
	end
	local bContainThree,bContainNight = false,false
	-- 关卡尾数逢3
	if SerialIndiana_CheckPoint(nTotalLayer,3) then
		nPlusNum = nPlusNum+1
		bContainThree = true
	-- 关卡尾数逢9
	elseif SerialIndiana_CheckPoint(nTotalLayer,9) then
		nPlusNum = nPlusNum+2
		bContainNight = true
	end
	
	-- 给奖励
	local nLevel = Get_UserLevel()
	if nLevel >= G_User_MaxLev and nRewardType == 1 then
		nRewardType = 2
	end
	local nGiveNum = nNum*nPlusNum
	if nRewardType == 1 then
		SerialIndiana_AddExpTime(nGiveNum)
	elseif nRewardType == 2 then
		SerialIndiana_AddCultivation(nGiveNum)
	elseif nRewardType == 3 then
		SerialIndiana_AddStrengthValue(nGiveNum)
	elseif nRewardType == 4  then
		SerialIndiana_AddEMoneyMono(nGiveNum)
	end
	
	-- 提示
	-- 奖励文字
	local sRewardTypeText = tSerialIndiana_Text[20229]["RewardPra"][nRewardType]
	local sFinalText = string.format(sRewardTypeText,nGiveNum)
	-- 积分
	local sScore = tSerialIndiana_Text[20229]["RewardGame"]
	local sFinalScore = string.format(sScore,nLayer)
	
	if nType == 3 then
		-- 积分加奖励文字
		sFinalText = sFinalText..sFinalScore
	end
	if nType == 3 and nUserNum == 0 then
		local sRewarText = tSerialIndiana_Text[20229]["Text241"]
		tNpcGossip[nNpcId]["OptionFunc241"] = "SerialIndiana_Challenge</N>"..nNpcId.."</N>"..nType
		LinkNpcGossipFunc_New(nNpcId,"2-4")
	elseif nPlusNum == 8 or nPlusNum == 7 then
		local nLastNum = 0
		if nPlusNum == 7 then
			nLastNum = 2
		else
			nLastNum = 3
		end
		local sRewarText = tSerialIndiana_Text[20229]["Text271"]
		tNpcGossip[nNpcId]["Text271"] = string.format(sRewarText,nLastNum,nPlusNum)
		tNpcGossip[nNpcId]["OptionFunc271"] = "SerialIndiana_Challenge</N>"..nNpcId.."</N>"..nType
		LinkNpcGossipFunc_New(nNpcId,"2-7")
	else
		if bContainThree then
			local sRewarText = tSerialIndiana_Text[20229]["Text221"]
			tNpcGossip[nNpcId]["Text221"] = string.format(sRewarText,sFinalText)
			tNpcGossip[nNpcId]["OptionFunc221"] = "SerialIndiana_Challenge</N>"..nNpcId.."</N>"..nType
			LinkNpcGossipFunc_New(nNpcId,"2-2")
		elseif bContainNight then
			local sRewarText = tSerialIndiana_Text[20229]["Text231"]
			tNpcGossip[nNpcId]["Text231"] = string.format(sRewarText,sFinalText)
			tNpcGossip[nNpcId]["OptionFunc231"] = "SerialIndiana_Challenge</N>"..nNpcId.."</N>"..nType
			LinkNpcGossipFunc_New(nNpcId,"2-3")
		else
			local sRewarText = tSerialIndiana_Text[20229]["Text211"]
			tNpcGossip[nNpcId]["Text211"] = string.format(sRewarText,sFinalText)
			tNpcGossip[nNpcId]["OptionFunc211"] = "SerialIndiana_Challenge</N>"..nNpcId.."</N>"..nType
			LinkNpcGossipFunc_New(nNpcId,"2-1")
		end
	end
	-- 提示
	-- local sTipText = tSerialIndiana_Text[nNpcId]["Award"][nType] 
	-- if nType == 2 then
		-- User_TalkChannel2005(string.format(sTipText,sFinalText))
	-- else
		-- local sScore = tSerialIndiana_Text[20229]["RewardGame"]
		-- local nNowLayer = SerialIndiana_GetNowLayer(nNpcId,nMapId)
		-- User_TalkChannel2005(string.format(sTipText,sFinalText..sFinalScore))
	-- end
end

-- 继续闯关
function SerialIndiana_Challenge(nNpcId,nType)
	local nNpcId = Get_NpcId()
	local nBasicNpcId = tSerialIndiana_Cont["BoxNpcId"]
	-- 隔天检测
	SerialIndiana_ChkStcInterval()
	
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayer = SerialIndiana_GetOutMapLayer(nMapId)
	-- 不在大赢家地图，选项点击退出
	if nLayer == 0 then
		return
	end
	
	local nLimit = tSerialIndiana_Stc[nType][1]["Limit"]
	-- 免费闯关次数
	local nFreeNum = SerialIndiana_GetStcValue(nType,1)
	-- 付费闯关次数
	local nBuyNum = SerialIndiana_GetStcValue(nType,2)
	
	-- 没有闯关次数
	if nFreeNum >= nLimit and nBuyNum >= nLimit then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 仍有付费或免费次数
	-- 剩余免费闯关次数：X次
	if nFreeNum >= nLimit then
		tNpcGossip[nNpcId]["Text327"] = ""
		local sText = tSerialIndiana_Text[nBasicNpcId]["Text328"]
		tNpcGossip[nNpcId]["Text328"] = string.format(sText,nLimit-nBuyNum)
	else
		tNpcGossip[nNpcId]["Text328"] = ""
		local sText = tSerialIndiana_Text[nBasicNpcId]["Text327"]
		tNpcGossip[nNpcId]["Text327"] = string.format(sText,nLimit-nFreeNum)
	end
	--  道具选项显示
	for i=1,6 do
		local nItemId = tSerialIndiana_Item[i]
		local sOptionIndex = tSerialIndiana_OptionIndex[i]
		if i <= 3 then
			-- 三个特殊道具只检测背包是否有
			if Item_ChkItem(nItemId) then
				tNpcGossip[nNpcId][sOptionIndex] = tSerialIndiana_Text[nBasicNpcId][sOptionIndex]
			else
				tNpcGossip[nNpcId][sOptionIndex] = ""
			end
		else
			if nFreeNum < nLimit then
				-- 有免费次数 不显示道具和购买选项
				tNpcGossip[nNpcId][sOptionIndex] = ""
				for a,b in pairs(tSerialIndiana_BuyOptionIndex) do
					tNpcGossip[nNpcId][b] = ""
				end
				for g,h in pairs(tSerialIndiana_FreeOptionIndex) do
					tNpcGossip[nNpcId][h] = tSerialIndiana_Text[nBasicNpcId][h]
				end
			else
				-- 无免费次数 优先道具再显示购买选项
				for g,h in pairs(tSerialIndiana_FreeOptionIndex) do
					tNpcGossip[nNpcId][h] = ""
				end
				local sOtherIndex = tSerialIndiana_BuyOptionIndex[i-3]
				if Item_ChkItem(nItemId) then
					tNpcGossip[nNpcId][sOptionIndex] = tSerialIndiana_Text[nBasicNpcId][sOptionIndex]
					tNpcGossip[nNpcId][sOtherIndex] = ""
				else
					tNpcGossip[nNpcId][sOptionIndex] = ""
					tNpcGossip[nNpcId][sOtherIndex] = tSerialIndiana_Text[nBasicNpcId][sOtherIndex]
				end
			end
		end
	end
	-- 翻倍闯关，大于40关不显示任务翻倍
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayer = SerialIndiana_GetNowLayer(nNpcId,nMapId)
	if nLayer > 40 then
		for g,h in pairs(tSerialIndiana_DoubleOptionIndex) do
			tNpcGossip[nNpcId][h] = ""
		end
	end
	
	-- 81层不
	if nNpcId == 20309 then
		for g,h in pairs(tSerialIndiana_FreeOptionIndex) do
			tNpcGossip[nNpcId][h] = ""
		end
		for g,h in pairs(tSerialIndiana_BuyOptionIndex) do
			tNpcGossip[nNpcId][h] = ""
		end
		for g,h in pairs(tSerialIndiana_DoubleOptionIndex) do
			tNpcGossip[nNpcId][h] = ""
		end
		for i=1,6 do
			local sOptionIndex = tSerialIndiana_OptionIndex[i]
			if i == 1 or  i == 3 then
				local nItemId = tSerialIndiana_Item[i]
				if Item_ChkItem(nItemId) then
					tNpcGossip[nNpcId][sOptionIndex] = tSerialIndiana_Text[nBasicNpcId][sOptionIndex]
				else
					tNpcGossip[nNpcId][sOptionIndex] = ""
				end
			else
				tNpcGossip[nNpcId][sOptionIndex] = ""
			end
		end
	end
	
	-- 正常闯关
	tNpcGossip[20229]["OptionFunc321"]="SerialIndiana_NomalThrough</N>"..nNpcId.."</N>1</N>"..nType
	-- 正常闯关（1张单关
	tNpcGossip[20229]["OptionFunc322"]="SerialIndiana_ItemThrough</N>"..nNpcId.."</N>3302123</N>"..nType
	-- 正常闯关（9天石）
	tNpcGossip[20229]["OptionFunc323"]="SerialIndiana_EmoneyThrough</N>"..nNpcId.."</N>1</N>"..nType
	-- 冲刺闯关
	tNpcGossip[20229]["OptionFunc324"]="SerialIndiana_NomalThrough</N>"..nNpcId.."</N>2</N>"..nType
	-- 冲刺闯关（1张冲刺
	tNpcGossip[20229]["OptionFunc325"]="SerialIndiana_ItemThrough</N>"..nNpcId.."</N>3302124</N>"..nType
	-- 冲刺闯关（9天石）
	tNpcGossip[20229]["OptionFunc326"]="SerialIndiana_EmoneyThrough</N>"..nNpcId.."</N>2</N>"..nType
	-- 翻倍闯关
	tNpcGossip[20229]["OptionFunc327"]="SerialIndiana_NomalThrough</N>"..nNpcId.."</N>3</N>"..nType
	-- 翻倍闯关（1张翻倍
	tNpcGossip[20229]["OptionFunc328"]="SerialIndiana_ItemThrough</N>"..nNpcId.."</N>3302125</N>"..nType
	-- 翻倍闯关（9天石）
	tNpcGossip[20229]["OptionFunc329"]="SerialIndiana_EmoneyThrough</N>"..nNpcId.."</N>3</N>"..nType
	-- 使用问号靴
	tNpcGossip[20229]["OptionFunc3210"]="SerialIndiana_ItemThrough</N>"..nNpcId.."</N>3302120</N>"..nType
	-- 使用火箭靴
	tNpcGossip[20229]["OptionFunc3211"]="SerialIndiana_ItemThrough</N>"..nNpcId.."</N>3302121</N>"..nType
	-- 使用退关券
	tNpcGossip[20229]["OptionFunc3212"]="SerialIndiana_ItemThrough</N>"..nNpcId.."</N>3302122</N>"..nType
	-- 退出比赛
	tNpcGossip[20229]["OptionFunc3213"]="SerialIndiana_QuitGame</N>"..nNpcId.."</N>"..nType
	
	local nUserId = Get_UserId()
	tSerialIndiana_RaceType[nUserId] = nType
	LinkNpcGossipFunc_New(nNpcId,"3-2")
end

-- 退出比赛
function SerialIndiana_QuitGame(nNpcId,nIndex)
	-- 隔天检测
	SerialIndiana_ChkStcInterval()
	
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayerMapSpe = SerialIndiana_GetOutMapLayer(nMapId)
	-- 不在大赢家地图，选项点击退出
	if nLayerMapSpe == 0 then
		return
	end
	
	local nLimit = tSerialIndiana_Stc[2][1]["Limit"]
	-- 免费闯关次数
	local nFreeNum = SerialIndiana_GetStcValue(nIndex,1)
	-- 付费闯关次数
	local nBuyNum = SerialIndiana_GetStcValue(nIndex,2)
	
	-- 没有闯关次数
	if nFreeNum >= nLimit and nBuyNum >= nLimit then
		SerialIndiana_TransPos(1)
		return
	end
	
	if nNpcId == 20309 then
		SerialIndiana_TransPos(1)
		return
	end
	-- 提示是否退出
	local sText = tSerialIndiana_Text[20229]["Text511"]
	tNpcGossip[nNpcId]["Text511"] = string.format(sText,nFreeNum,nBuyNum)
	LinkNpcGossipFunc_New(nNpcId,"5-1")
end

-- 确定退出比赛
function SerialIndiana_LeaveMap(nNpcId)
	-- 是否删除身上的道具
	SerialIndiana_TransPos(1)
end

-- 正常闯关
function SerialIndiana_NomalThrough(nNpcId,nIndex,nType)
	local nUserId = Get_UserId()
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayer = SerialIndiana_GetNowLayer(nNpcId,nMapId)
	-- 活动已结束
	if not Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) then
		SerialIndiana_TransPos(1)
		return
	end
	
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayerMap = SerialIndiana_GetOutMapLayer(nMapId)
	-- 不在大赢家地图，选项点击退出
	if nLayerMap == 0 then
		return
	end
	--判断是否在活动地图
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= nMapId then
		return
	end
	
	-- 无闯关次数
	local nLimit = tSerialIndiana_Stc[nType][1]["Limit"]
	-- 免费闯关次数
	local nFreeNum = SerialIndiana_GetStcValue(nType,1)
	if nFreeNum >= nLimit then
		return
	end
	
	local nNewLayer = 0
	-- 闯关次数
	SerialIndiana_AddStcValue(nType,1,1)
	
	if nIndex == 1 then
		nNewLayer = nLayer + 1
		SerialIndiana_UpLayer(nNewLayer,nLayer,1)
	elseif nIndex == 2 then
		SerialIndiana_SprintPass(nNpcId,"Free",nLayer,3)
	else
		SerialIndiana_DoublePass(nNpcId,nLayer,5)
	end
	-- 记录emoneylog
	local slog = tSerialIndiana_Log["Free"]
	Sys_SaveEmoneyBuy(string.format(slog,nFreeNum+1))
end

-- 物品闯关
function SerialIndiana_ItemThrough(nNpcId,nItemId,nType)
	-- 活动已结束
	if not Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) then
		SerialIndiana_TransPos(1)
		return
	end
	
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayerMapSpe = SerialIndiana_GetOutMapLayer(nMapId)
	-- 不在大赢家地图，选项点击退出
	if nLayerMapSpe == 0 then
		return
	end
	
	--判断是否在活动地图
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= nMapId then
		return
	end
	-- 无物品
	if not Item_ChkItem(nItemId) then
		if nItemId >= tSerialIndiana_Item[4] then
			LinkNpcGossipFunc_New(nNpcId,tSerialIndiana_NoItemIndex[nItemId-tSerialIndiana_Item[3]])
			return
		else
			local sText = tSerialIndiana_Text[20229]["Text451"]
			local sItemName = Get_ItemtypeName(nItemId)
			tNpcGossip[nNpcId]["Text451"] = string.format(sText,sItemName)
			LinkNpcGossipFunc_New(nNpcId,"4-5")
			return
		end
	end
	
	local nNewLayer = 0
	local nLayer = SerialIndiana_GetNowLayer(nNpcId,nMapId)
	if Item_DelItem(nItemId) then
		-- 3302123,'单关券'
		if nItemId == tSerialIndiana_Item[4] then
			nNewLayer = nLayer + 1
			SerialIndiana_UpLayer(nNewLayer,nLayer,2)
		-- 3302124,'冲刺券'
		elseif nItemId == tSerialIndiana_Item[5] then
			SerialIndiana_SprintPass(nNpcId,"Free",nLayer,4)
		-- 3302125,'翻倍券'
		elseif nItemId == tSerialIndiana_Item[6] then
			SerialIndiana_DoublePass(nNpcId,nLayer,6)
		-- 3302120,'问号靴'
		elseif nItemId == tSerialIndiana_Item[1] then
			if nNpcId == 20309 then
				local bDown = "Down"
			end
			SerialIndiana_UseQuestion(nItemId,nLayer,bDown)
		-- 3302121,'火箭靴'
		elseif nItemId == tSerialIndiana_Item[2] then
			SerialIndiana_UseFire(nItemId,nLayer)
		-- 3302122,'退关券'
		elseif nItemId == tSerialIndiana_Item[3] then
			SerialIndiana_UseBack(nItemId,nLayer)
		end
		local sLog = tSerialIndiana_Log["ItemOverDue"]
		Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
	end
end

-- 天石闯关
function SerialIndiana_EmoneyThrough(nNpcId,nIndex,nType)
	-- 活动已结束
	if not Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) then
		SerialIndiana_TransPos(1)
		return
	end
	
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayer = SerialIndiana_GetOutMapLayer(nMapId)
	-- 不在大赢家地图，选项点击退出
	if nLayer == 0 then
		return
	end
	
	--判断是否在活动地图
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= nMapId then
		return
	end
	-- 天石不足
	local nEmoney = Get_UserEMoney()
	if nEmoney < tSerialIndiana_Cont["EMoney"] then
		LinkNpcGossipFunc_New(nNpcId,tSerialIndiana_EmoneyIndex["NoEmoney"][nIndex])
		return
	end
	
	--无次数
	local nLimit = tSerialIndiana_Stc[nType][1]["Limit"]
	-- 付费闯关次数
	local nBuyNum = SerialIndiana_GetStcValue(nIndex,2)
	
	-- 没有闯关次数
	if nBuyNum >= nLimit then
		return
	end
	
	-- 二次确认
	local nLayer = SerialIndiana_GetNowLayer(nNpcId,nMapId)
	local sTextIndex = tSerialIndiana_EmoneyIndex["SecondSureText"][nIndex]
	local sText = tSerialIndiana_Text[20229][sTextIndex]
	if nIndex == 1 then
		tNpcGossip[nNpcId][sTextIndex] = string.format(sText,nLayer+1)
	elseif nIndex == 2 then
		tNpcGossip[nNpcId][sTextIndex] = string.format(sText,nLayer+2,nLayer+5)
	else
		tNpcGossip[nNpcId][sTextIndex] = string.format(sText,nLayer*2)
	end
	local sOptionFuncIndex = tSerialIndiana_EmoneyIndex["SecondSureOption"][nIndex]
	tNpcGossip[nNpcId][sOptionFuncIndex] = "SerialIndiana_EmoneyThroughSure</N>"..nNpcId.."</N>"..nIndex.."</N>"..nType
	LinkNpcGossipFunc_New(nNpcId,tSerialIndiana_EmoneyIndex["SecondSure"][nIndex])
end

function SerialIndiana_EmoneyThroughSure(nNpcId,nIndex,nType)
		-- 活动已结束
	if not Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) then
		SerialIndiana_TransPos(1)
		return
	end
	
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayerMapSpe = SerialIndiana_GetOutMapLayer(nMapId)
	-- 不在大赢家地图，选项点击退出
	if nLayerMapSpe == 0 then
		return
	end
	
	-- 天石不足
	local nEmoney = Get_UserEMoney()
	if nEmoney < tSerialIndiana_Cont["EMoney"] then
		LinkNpcGossipFunc_New(nNpcId,tSerialIndiana_EmoneyIndex["NoEmoney"][nIndex])
		return
	end
	
	--无次数
	local nLimit = tSerialIndiana_Stc[nType][1]["Limit"]
	-- 付费闯关次数
	local nBuyNum = SerialIndiana_GetStcValue(nIndex,2)
	
	-- 没有闯关次数
	if nBuyNum >= nLimit then
		return
	end
	
	if not User_AddEMoney(-tSerialIndiana_Cont["EMoney"]) then
		return
	end
	-- 闯关次数
	SerialIndiana_AddStcValue(nType,2,1)
	local nNewLayer = 0
	local nLayer = SerialIndiana_GetNowLayer(nNpcId,nMapId)
	-- 正常
	if nIndex == 1 then
		nNewLayer = nLayer + 1
		SerialIndiana_UpLayer(nNewLayer,nLayer,1)
	-- 冲刺
	elseif nIndex == 2 then
		SerialIndiana_SprintPass(nNpcId,"Pay",nLayer,3)
	-- 翻倍
	elseif nIndex ==3 then
		SerialIndiana_DoublePass(nNpcId,nLayer,5)
	end
	-- 记emoneylog
	Sys_SaveEmoneyBuy(tSerialIndiana_Log["Buy"])
end

-- 冲刺闯关
function SerialIndiana_SprintPass(nNpcId,sIndex,nLayer,nIndex)
	--判断是否在活动地图
	local nMapId = Get_NpcMapID(nNpcId)
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= nMapId then
		return
	end
	if Sys_Random(60,100) then
		-- 闯关成功
		local nFlag,tAward = Probabil_RandomAward(tSerialIndiana_LayorRandom[sIndex],1)
		local nRandomLayer = tAward[1]["tAward"][1]["Item_1"]
		nNewLayer = nLayer + nRandomLayer
		SerialIndiana_UpLayer(nNewLayer,nLayer,nIndex)
	else
		-- 闯关失败
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		SerialIndiana_Status(3,0)
		return
	end
end

-- 翻倍闯关
function SerialIndiana_DoublePass(nNpcId,nLayer,nIndex)
	--判断是否在活动地图
	local nMapId = Get_NpcMapID(nNpcId)
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= nMapId then
		return
	end
	if Sys_Random(20,100) then
		nNewLayer = nLayer*2
		SerialIndiana_UpLayer(nNewLayer,nLayer,nIndex)
	else
		-- 闯关失败
		LinkNpcGossipFunc_New(nNpcId,"3-9")
		SerialIndiana_Status(3,0)
		return
	end
end

-- 问号靴
function SerialIndiana_UseQuestion(nItemId,nLayer,sDown)
	-- 上升或下级
	local nFlag,tAward = Probabil_RandomAward(tSerialIndiana_LayorRandom[nItemId],1)
	local sIndex = tAward[1]["tAward"][1]["Item_1"]
	if sDown ~= nil then
		sDown = sIndex
	end
	-- 上升或下级层数
	local nFlag,tNewAward = Probabil_RandomAward(tSerialIndiana_LayorRandom[sIndex],1)
	local nRandomLayer = tNewAward[1]["tAward"][1]["Item_1"]
	local nNewLayer = 0
	if sIndex == "Up" then
		nNewLayer = nLayer + nRandomLayer
		SerialIndiana_UpLayer(nNewLayer,nLayer,7)
	else
		if nLayer < nRandomLayer then
			nNewLayer = 1
		else
			nNewLayer = nLayer - nRandomLayer
		end
		SerialIndiana_UpLayer(nNewLayer,nLayer,8)
	end
end

-- 火箭靴
function SerialIndiana_UseFire(nItemId,nLayer)
	local nFlag,tAward = Probabil_RandomAward(tSerialIndiana_LayorRandom[nItemId],1)
	local nRandomLayer = tAward[1]["tAward"][1]["Item_1"]
	local nNewLayer = nLayer + nRandomLayer
	SerialIndiana_UpLayer(nNewLayer,nLayer,9)
end

-- 退关券
function SerialIndiana_UseBack(nItemId,nLayer)
	local nFlag,tAward = Probabil_RandomAward(tSerialIndiana_LayorRandom[nItemId],1)
	local nRandomLayer = tAward[1]["tAward"][1]["Item_1"]
	local nNewLayer = 0
	if nLayer < nRandomLayer then
		nNewLayer = 1
	else
		nNewLayer = nLayer - nRandomLayer
	end
	SerialIndiana_UpLayer(nNewLayer,nLayer,10)
end

-- 传送位置
function SerialIndiana_UpLayer(nLayer,nOldLayer,nIndex)
	local nUserId = nUserId or Get_UserId()
	local nLayerInMap = 0
	if nLayer >= 81 then
		nLayer = 81
	end
	
	if nLayer <= tSerialIndiana_Cont["MapLayerMax"] then
		nLayerInMap = nLayer
	else
		local nNewLayer = nLayer%tSerialIndiana_Cont["MapLayerMax"]
		if nNewLayer == 0 then
			nLayerInMap = tSerialIndiana_Cont["MapLayerMax"]
		else
			nLayerInMap = nNewLayer
		end
	end
	local nLayerOutMap = math.ceil(nLayer/9)
	local nMapId = tSerialIndiana_MapId[nLayerOutMap]
	local nPosX = tSerialIndiana_UpLayerMap[nLayerInMap][1]
	local nPosY = tSerialIndiana_UpLayerMap[nLayerInMap][2]
	local nRange = tSerialIndiana_ChgMap[2]["Range"]
	-- 重置该层的掩码
	if nLayer < nOldLayer then
		local nType = tSerialIndiana_RaceType[nUserId]
		local nEvent = tSerialIndiana_Stc[nType][nMapId]["EventType"]
		local nType = tSerialIndiana_Stc[nType][nMapId]["DataType"]
		Task_SetStatistic(nEvent,nType,0,1,nUserId) 
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	-- 传送
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,0,nUserId)
	
	local sIndex = tSerialIndiana_PassIndex[nIndex]
	local sText = tSerialIndiana_Text[20229][sIndex]
	if nIndex > 3 then
		Sys_MsgBox(string.format(sText,math.abs(nLayer-nOldLayer),nLayer))
	else
		Sys_MsgBox(string.format(sText,nLayer))
	end
	local nUserPosX = Get_UserPositionX(nUserId)
	local nUserPosY = Get_UserPositionY(nUserId)
	if nLayer <= 9 then 
		Map_Effect(nMapId,nUserPosX-5,nUserPosY-4,tSerialIndiana_MapEffect[nLayer])
	else
		local nLayeLeft = tonumber(string.sub(nLayer,1,1))
		local nLayeRight = tonumber(string.sub(nLayer,2,2))
		Map_Effect(nMapId,nUserPosX-5,nUserPosY-4,tSerialIndiana_MapEffect[nLayeLeft])
		if nLayeRight == 0 then
			nLayeRight = 10
		end
		Map_Effect(nMapId,nUserPosX-4,nUserPosY-5,tSerialIndiana_MapEffect[nLayeRight])
	end
end

-------------------------------------------使用物品逻辑----------------------------------------------------------
-- 物品过期使用删除
function SerialIndiana_UseItem(nItemId)
	SerialIndiana_ItemOverDue(nItemId,tSerialIndiana_Cont["Activity"])
end

-- 时间过期
function SerialIndiana_ItemOverDue(nItemId,sTime)
	if not Sys_ChkFullTime(sTime) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then 
			User_TalkChannel2005(tSerialIndiana_Text["ItemOverDue"])
			local sLog = tSerialIndiana_Log["ItemOverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
		end
		return false
	end
	
	return true
end

-- 礼包使用
function SerialIndiana_UseRewarItem(nItemId)
	if (nItemId >= tSerialIndiana_Cont["MinId"] and nItemId <= tSerialIndiana_Cont["MaxId"])  or nItemId == tSerialIndiana_Cont["SpeId"] then
		if not SerialIndiana_ItemOverDue(nItemId,tSerialIndiana_Cont["MailUseItem"]) then
			return
		end
	end
	
	local nNeedSpace = tSerialIndiana_UseRewarItem[nItemId]["NeedSpace"] or 0
	if nNeedSpace ~= 0 and not User_CheckLeftSpace(nNeedSpace) then
		local sText = tSerialIndiana_Text["NoSpace"]
		User_TalkChannel2005(string.format(sText,nNeedSpace))
		return
	end
	
	-- 使用礼包
	RewardTemplate_UseItemAndMsg(tSerialIndiana_UseRewarItem[nItemId])
	
end

--外套礼包使用
function SerialIndiana_GetCoat(nItemId,nType)
	local sText = tSerialIndiana_Text[nItemId]["Text211"]
	local nRewardCoatId = tSerialIndiana_UseCoatItem[nType]["RewardItem"][1]["Id"]
	local sItemName = Get_ItemtypeName(nRewardCoatId)
	tItem[nItemId]["Text211"] = string.format(sText,sItemName)
	tItem[nItemId]["OptionFunc4"] ="SerialIndiana_SuerGetCoat</N>"..nItemId.."</N>"..nType
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 二次确认
function SerialIndiana_SuerGetCoat(nItemId,nType)
	-- 复制表
	local tReward = CommonFunc_Copy(tSerialIndiana_UseCoatItem[nType])
	-- 设置删除的物品
	tReward["DeleteItem"][1]["Id"] = nItemId
	local sAttr = tSerialIndiana_UseCoatItem[nType]["RewardItem"][1]["Attr"]
	-- 时效
	local nTime = tSerialIndiana_UseCoatItem[nItemId]["Time"]
	local nActive = tSerialIndiana_UseCoatItem[nItemId]["Active"]
	tReward["RewardItem"][1]["Attr"] = string.format(sAttr,nTime,nActive)
	-- log
	local sLog = tSerialIndiana_UseCoatItem[nType]["Log"]
	tReward["Log"] = string.format(sLog,nItemId)
	
	RewardTemplate_UseItemAndMsg(tReward)
	local nRewardCoatId = tReward["RewardItem"][1]["Id"]
	local sItemName = Get_ItemtypeName(nRewardCoatId)
	local sTipText = tSerialIndiana_Text[nItemId]["Reward"]
	User_TalkChannel2005(string.format(sTipText,sItemName))
end

-------------------------------------------怪物掉落----------------------------------------------------------
function SerialIndiana_KillBox(nMonsterId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) then
		return
	end
	
	-- 怪物数量置0
	local nMapId = Get_MonsterMapID()
	-- Sys_SetTempData(1,nMapId,nMonsterId,0)
	-- 怪物掉落
	local nFlag,tAward = Probabil_RandomAward(tSerialIndiana_MonsterDropItem,nMonsterId)
	local nRewardItem = tAward[1]["tAward"][1]["Item_1"]
	if nRewardItem ~= 0 then
		local tReward = CommonFunc_Copy(tSerialIndiana_UsuallyReward[2])
		tReward["RewardItem"][1]["Id"] = nRewardItem
		RewardTemplate_UseItemAndMsg(tReward)
		local sText = tSerialIndiana_Text["KillMonster"]
		local sItemName = Get_ItemtypeName(nRewardItem)
		User_TalkChannel2005(string.format(sText,sItemName))
	end
end

-------------------------------------------时间自检----------------------------------------------------------
-- 邮件发奖奖励
function SerialIndiana_RankReward()
	-- 玩家传回双龙城
	SerialIndiana_SendOut()
	
	-- 最快通关
	local nGlobalId = tSerialIndiana_GlobalData[3]
	local nUserId = Get_SysDynaGlobalData(nGlobalId,2) or 0
	local nTime = Get_SysDynaGlobalData(nGlobalId,3)
	local sTimeText = SerialIndiana_GetMinuteSec(nTime)
	local sReward = Get_SysDynaGlobalDataStr3(nGlobalId)
	if nUserId == 0 then
		return
	end
	if sReward ~= "1" then
		Sys_SetSynaGlobalDataStr(nGlobalId,3,"1")
		SerialIndiana_SendMail("Fast",nUserId,sTimeText)
	end
end


-- 发邮件通用
function SerialIndiana_SendMail(sType,nUserId,sName,nRanking)
	local nRealActionId = 0
	local nExistDay = tSerialIndiana_SendMailReward[sType]["ExistDay"]
	local sSender = tSerialIndiana_Text["Mail"]["Sender"]
	local sTitle = tSerialIndiana_Text["Mail"][sType]["Title"]
	local sContent = tSerialIndiana_Text["Mail"][sType]["Content"]
	local sFinalText = ""
	if sType == "Fast" then
		sFinalText = string.format(sContent,sName)
		nRealActionId = tSerialIndiana_SendMailReward[sType]["ActionID"] 
	else
		sFinalText = string.format(sContent,nRanking,sName)
		if nRanking <= 3 then
			nRealActionId = tSerialIndiana_SendMailReward[sType][nRanking]
		elseif nRanking > 3 and nRanking < 7 then
			nRealActionId = tSerialIndiana_SendMailReward[sType][4]
		else
			nRealActionId = tSerialIndiana_SendMailReward[sType][7]
		end
	end

	if Sys_SendMail(nUserId,0,0,nRealActionId,0,nExistDay,sSender,sTitle,sFinalText) then
	end
end

-- 活动结束地图玩家传回双龙城
function SerialIndiana_SendOut()
	if Sys_ChkDayTime(tSerialIndiana_Cont["EndSpecialTime"]) then
		for i ,v in pairs(tSerialIndiana_MapId) do
			Map_UserExeFunc(v,-1,"</F>SerialIndiana_SendOutMap")
		end
	end
end

function SerialIndiana_SendOutMap(nUserId)
	-- 回双龙城
	SerialIndiana_TransPos(1,0,nUserId)
	User_TalkChannel2005(tSerialIndiana_Text["FormalAllOut"],nUserId)
end


-- 新写邀请公告
function SerialIndiana_NewSendInMap()
	if Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) then
		Sys_TalkBroadcast(tSerialIndiana_Text["BroadCast"])
	end
end
function SerialIndiana_PathFind(nNpcId)
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId == 1002 then
		NpcPosition_PathFind(20228)
	else
		User_TalkChannel2005(tSerialIndiana_Text["NotInMap"])
	end
end


-- 清理动态码
function SerialIndiana_ClearGlobalData()
	local nGlobalId = tSerialIndiana_GlobalData[1][4]
	local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId)
	
	if Sys_ChkDayTime(tSerialIndiana_Cont["ClearGlobalTime"]) then
		if Sys_ChkDayTime(tSerialIndiana_Cont["ClearTime"]) then
			if not (sDataStr5 == "1") then
				for i,v in pairs(tSerialIndiana_GlobalData[1]) do
					if i <= 3 then
						Sys_ResetAllSynaGlobalData(v)
						Sys_ResetAllSynaGlobalDataStr(v)
					else
						for g=0,3 do
							Sys_SetSynaGlobalData(v,g,0)
							Sys_SetSynaGlobalDataStr(v,g,"0")
						end
					end
				end
				for a,b in pairs(tSerialIndiana_GlobalData[4]) do
					Sys_ResetAllSynaGlobalData(b)
					Sys_ResetAllSynaGlobalDataStr(b)
				end
				Sys_SetSynaGlobalDataStr5(nGlobalId,"1")
			end
		else
			if sDataStr5 == "1" then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
			end
		end
	end
end
------------------------------------------------NPC模块--------------------------------------------------
-- 主持人库洛洛
tNpcFace[4491] = 129
tNpcGossip[20228] = tNpcGossip[20228] or DefaultNpc:new{}
tNpcGossip[20228]["OptionHidden"] = 1
tNpcGossip[20228]["DialogueText"] = tSerialIndiana_Text[20228]
-- 活动前
tNpcGossip[20228]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[20228]["tOption1-1"] = {111}
tNpcGossip[20228]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tSerialIndiana_Cont["Activity"])
end

-- 活动后
tNpcGossip[20228]["Text1-2"] = {121,122,123}
tNpcGossip[20228]["tOption1-2"] = {121,122}
tNpcGossip[20228]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tSerialIndiana_Cont["Activity"])
end
-- 大赢家积分总榜
tNpcGossip[20228]["OptionFunc121"]="SerialIndiana_RankingList</N>20228</N>1"

-- 活动中
-- 等级不满足条件
tNpcGossip[20228]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[20228]["tOption1-3"] = {131}
tNpcGossip[20228]["ChkFunc1-3"] = function ()
	local nLevel = tSerialIndiana_Cont["Level"]
	local nMete = tSerialIndiana_Cont["Metempsychosis"]
	return Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) and not User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end

-- 活动中
-- 等级满足条件
-- 正式比赛时间外
tNpcGossip[20228]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[20228]["tOption1-4"] = {141,142,143,145,146}
tNpcGossip[20228]["ChkFunc1-4"] = function ()
	local nLevel = tSerialIndiana_Cont["Level"]
	local nMete = tSerialIndiana_Cont["Metempsychosis"]
	local bCondition = Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMete)
	local bOtherComdition =  not Sys_ChkDayTime(tSerialIndiana_Cont["SpecialTime"]) and  not Sys_ChkDayTime(tSerialIndiana_Cont["BeforSpecialTime"])
	return bCondition and bOtherComdition
end
-- 1、参加练习赛（可参加/已参加）  
tNpcGossip[20228]["OptionFunc141"]="SerialIndiana_JoinPratice</N>20228"
tNpcGossip[20228]["OptionChkFunc141"] = function()
	-- 隔天检测
	SerialIndiana_ChkStcInterval()
	local sAddText = ""
	-- 检测是否参加
	if SerialIndiana_ChkStcValue(1,1) then
		sAddText = tSerialIndiana_Text[20228]["Join"][2]
	else
		sAddText = tSerialIndiana_Text[20228]["Join"][1]
	end
	local sFinnalText = tSerialIndiana_Text[20228]["Option141"]
	tNpcGossip[20228]["Option141"] = string.format(sFinnalText,sAddText)
	return true
end
-- 3、每日积分排行榜
tNpcGossip[20228]["OptionFunc142"]="SerialIndiana_RankingList</N>20228</N>2"
-- 4、大赢家积分总榜
tNpcGossip[20228]["OptionFunc143"]="SerialIndiana_RankingList</N>20228</N>3"
-- 5、最快通关奖励
tNpcGossip[20228]["OptionFunc144"]="SerialIndiana_FastPassReward</N>20228"
-- 6、规则介绍
tNpcGossip[20228]["OptionPoint145"] = "4-4"

-- 活动中
-- 等级满足条件
-- 正式比赛时间内
tNpcGossip[20228]["Text1-5"] = {151,152,153,154,155}
tNpcGossip[20228]["tOption1-5"] = {151,142,143,145,146}
tNpcGossip[20228]["ChkFunc1-5"] = function ()
	local nLevel = tSerialIndiana_Cont["Level"]
	local nMete = tSerialIndiana_Cont["Metempsychosis"]
	local bCondition = Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMete)
	return bCondition and Sys_ChkDayTime(tSerialIndiana_Cont["SpecialTime"])
end
-- 接2、参加正式比赛
tNpcGossip[20228]["OptionFunc151"]="SerialIndiana_JoinGame</N>20228"
tNpcGossip[20228]["OptionChkFunc151"] = function()
	-- 隔天检测
	SerialIndiana_ChkStcInterval()
	local sAddText = ""
	-- 检测是否参加
	if SerialIndiana_ChkStcValue(1,2) then
		sAddText = tSerialIndiana_Text[20228]["Join"][2]
	else
		sAddText = tSerialIndiana_Text[20228]["Join"][1]
	end
	local sFinnalText = tSerialIndiana_Text[20228]["Option151"]
	tNpcGossip[20228]["Option151"] = string.format(sFinnalText,sAddText)
	return true
end

-- 正式比赛时前五分钟
tNpcGossip[20228]["Text1-6"] = {161}
tNpcGossip[20228]["tOption1-6"] = {161}
tNpcGossip[20228]["ChkFunc1-6"] = function ()
	local nLevel = tSerialIndiana_Cont["Level"]
	local nMete = tSerialIndiana_Cont["Metempsychosis"]
	local bCondition = Sys_ChkFullTime(tSerialIndiana_Cont["Activity"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMete)
	return bCondition and Sys_ChkDayTime(tSerialIndiana_Cont["BeforSpecialTime"])
end

-- 活动后大赢家积分总榜
tNpcGossip[20228]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222,223,224}
tNpcGossip[20228]["tOption2-1"] = {211}

-- 每日积分排行榜
tNpcGossip[20228]["Text2-3"] = {231,212,213,214,215,216,217,218,219,220,221,222,223,224,232}
tNpcGossip[20228]["tOption2-3"] = {231,211}
-- 查看奖励
tNpcGossip[20228]["OptionPoint231"]="3-6"

-- -大赢家积分总榜
tNpcGossip[20228]["Text2-4"] = {241,212,213,214,215,216,217,218,219,220,221,222,223,224,242}
tNpcGossip[20228]["tOption2-4"] = {241,211}
-- 查看奖励
tNpcGossip[20228]["OptionPoint241"]="3-7"

-- 接1参加练习赛
-- 失败，今日已挑战过
tNpcGossip[20228]["Text3-1"] = {311}
tNpcGossip[20228]["tOption3-1"] = {311}

-- 失败，正式比赛已经开始
tNpcGossip[20228]["Text3-2"] = {321}
tNpcGossip[20228]["tOption3-2"] = {321,322}
-- 参加正式比赛
tNpcGossip[20228]["OptionFunc321"]="SerialIndiana_JoinGame</N>20228"

-- 接2参加正式比赛
-- 失败，当前并非活动时间
tNpcGossip[20228]["Text3-3"] = {331}
tNpcGossip[20228]["tOption3-3"] = {331}

-- 失败，今日已挑战过
tNpcGossip[20228]["Text3-4"] = {341}
tNpcGossip[20228]["tOption3-4"] = {341}

-- 接3每日积分排行榜
-- 失败，今日排行榜未确定
tNpcGossip[20228]["Text3-5"] = {351}
tNpcGossip[20228]["tOption3-5"] = {351}

-- 查看奖励
tNpcGossip[20228]["Text3-6"] = {361,362,363,364,365,366,367,368,369}
tNpcGossip[20228]["tOption3-6"] = {361}

-- 接4大赢家积分总榜
-- 查看奖励
tNpcGossip[20228]["Text3-7"] = {371,372,373,374,375,376,377,378,379}
tNpcGossip[20228]["tOption3-7"] = {371}

-- 接5最快通关奖励
-- 失败，今日正式比赛还未结束
tNpcGossip[20228]["Text4-1"] = {411,412}
tNpcGossip[20228]["tOption4-1"] = {411}

-- 成功，今日至少有一名参赛者通关过
tNpcGossip[20228]["Text4-2"] = {421,422,423}
tNpcGossip[20228]["tOption4-2"] = {421}

-- 成功，但今日无人通关
tNpcGossip[20228]["Text4-3"] = {431,432}
tNpcGossip[20228]["tOption4-3"] = {431}

-- 接6规则介绍
tNpcGossip[20228]["Text4-4"] = {441,442,443,444,445,446,447,448,449,450,451}
tNpcGossip[20228]["tOption4-4"] = {441}

-- NPC大赢家宝箱20229~
-- tNpcFace[4232] = 1
tNpcGossip[20229] = tNpcGossip[20229] or DefaultNpc:new{}
tNpcGossip[20229]["OptionHidden"] = 1
tNpcGossip[20229]["DialogueText"] = tSerialIndiana_Text[20229]
-- 练习赛
tNpcGossip[20229]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[20229]["tOption1-1"] = {111,112,113}
tNpcGossip[20229]["ChkFunc1-1"] = function()
	-- 隔天检测
	SerialIndiana_ChkStcInterval()
	local nNpcId = Get_NpcId()
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayer = SerialIndiana_GetNowLayer(nNpcId,nMapId)
	-- 比赛关卡
	local sFinnalText = tSerialIndiana_Text[20229]["Text111"]
	tNpcGossip[20229]["Text111"] = string.format(sFinnalText,nLayer)
	if not SerialIndiana_CheckPoint(nLayer,3) then
		tNpcGossip[20229]["Text116"] = ""
	else
		tNpcGossip[20229]["Text116"] = tSerialIndiana_Text[20229]["Text116"]
	end
	if not SerialIndiana_CheckPoint(nLayer,9) then
		tNpcGossip[20229]["Text117"] = ""
	else
		tNpcGossip[20229]["Text117"] = tSerialIndiana_Text[20229]["Text117"]
	end
	return not Sys_ChkDayTime(tSerialIndiana_Cont["SpecialNewTime"])
end
-- 1、领取奖励
tNpcGossip[20229]["OptionFunc111"]="SerialIndiana_RewardBox</N>20229</N>2"
tNpcGossip[20229]["OptionChkFunc111"] = function()
	local nNpcId = Get_NpcId()
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayerMap = SerialIndiana_GetInMapLayer(nNpcId)
	local nNeedChkNum = 2^nLayerMap
	if SerialIndiana_ChkStcValue(2,nMapId,nNeedChkNum) then
		return false
	end
	return true
end
-- 2、继续闯关
tNpcGossip[20229]["OptionFunc112"]="SerialIndiana_Challenge</N>20229</N>2"
-- 3、退出比赛
tNpcGossip[20229]["OptionFunc113"]="SerialIndiana_QuitGame</N>20229</N>2"

-- 正式比赛
tNpcGossip[20229]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
tNpcGossip[20229]["tOption1-2"] = {121,122,113}
tNpcGossip[20229]["ChkFunc1-2"] = function ()
	-- 隔天检测
	SerialIndiana_ChkStcInterval()
	local nNpcId = Get_NpcId()
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayer = SerialIndiana_GetNowLayer(nNpcId,nMapId)
	-- 比赛关卡
	local sFinnalText = tSerialIndiana_Text[20229]["Text121"]
	tNpcGossip[20229]["Text121"] = string.format(sFinnalText,nLayer)
	
	-- 可获积分
	local sGetScoreText = tSerialIndiana_Text[20229]["Text124"]
	tNpcGossip[20229]["Text124"] = string.format(sGetScoreText,nLayer)
	
	-- 当前积分
	local nData = SerialIndiana_GetStcValue(1,3)
	local sNowScoreText = tSerialIndiana_Text[20229]["Text125"]
	tNpcGossip[20229]["Text125"] = string.format(sNowScoreText,nData)
	
	-- 已有X人开启过本关宝箱
	local nMapIdIndex = SerialIndiana_GetOutMapLayer(nMapId)
	local nInMapIdIndex = SerialIndiana_GetInMapLayer(nNpcId)
	local nGlobalId = tSerialIndiana_GlobalData[4][nMapIdIndex]
	local nNum = tSerialIndiana_LayerNum[nGlobalId][nInMapIdIndex] or 0
	local sOpenBoxNumText = tSerialIndiana_Text[20229]["Text129"]
	tNpcGossip[20229]["Text129"] = string.format(sOpenBoxNumText,nNum)
	
	if not SerialIndiana_CheckPoint(nLayer,3) then
		tNpcGossip[20229]["Text127"] = ""
	else
		tNpcGossip[20229]["Text127"] = tSerialIndiana_Text[20229]["Text127"]
	end
	if not SerialIndiana_CheckPoint(nLayer,9) then
		tNpcGossip[20229]["Text128"] = ""
	else
		tNpcGossip[20229]["Text128"] = tSerialIndiana_Text[20229]["Text128"]
	end
	return Sys_ChkDayTime(tSerialIndiana_Cont["SpecialNewTime"])
end
-- 1、领取奖励
tNpcGossip[20229]["OptionFunc121"]="SerialIndiana_RewardBox</N>20229</N>3"
tNpcGossip[20229]["OptionChkFunc121"] = function()
	local nNpcId = Get_NpcId()
	local nMapId = Get_NpcMapID(nNpcId)
	local nLayerMap = SerialIndiana_GetInMapLayer(nNpcId)
	local nNeedChkNum = 2^nLayerMap
	if SerialIndiana_ChkStcValue(3,nMapId,nNeedChkNum) then
		return false
	end
	return true
end
-- 2、继续闯关
tNpcGossip[20229]["OptionFunc122"]="SerialIndiana_Challenge</N>20229</N>3"
-- 3、退出比赛
tNpcGossip[20229]["OptionFunc123"]="SerialIndiana_QuitGame</N>20229</N>3"

-- 接1、领取奖励
-- 成功，正常领奖
tNpcGossip[20229]["Text2-1"] = {211}
tNpcGossip[20229]["tOption2-1"] = {211}

-- 成功，关卡尾数逢3的倍数
tNpcGossip[20229]["Text2-2"] = {221}
tNpcGossip[20229]["tOption2-2"] = {221}

-- 成功，关卡尾数逢9的倍数
tNpcGossip[20229]["Text2-3"] = {231}
tNpcGossip[20229]["tOption2-3"] = {231}

-- 成功，正式比赛第一个领奖
tNpcGossip[20229]["Text2-4"] = {241}
tNpcGossip[20229]["tOption2-4"] = {241}

-- 失败，天石（赠）已满
tNpcGossip[20229]["Text2-5"] = {251}
tNpcGossip[20229]["tOption2-5"] = {251}

-- 失败，气力已满
tNpcGossip[20229]["Text2-6"] = {261}
tNpcGossip[20229]["tOption2-6"] = {261}

-- 成功，正式比赛第一个领奖并尾数
tNpcGossip[20229]["Text2-7"] = {271}
tNpcGossip[20229]["tOption2-7"] = {271}

-- 接2、继续闯关
-- 失败，今日已无次数
tNpcGossip[20229]["Text3-1"] = {311}
tNpcGossip[20229]["tOption3-1"] = {311}
tNpcGossip[20229]["OptionFunc311"]="SerialIndiana_TransPos</N>1"

-- 仍有付费或免费次数
tNpcGossip[20229]["Text3-2"] = {321,322,323,324,325,326,327,328}
tNpcGossip[20229]["tOption3-2"] = {321,322,323,324,325,326,327,328,329,3210,3211,3212,3213}

-- 接2-2、正常闯关（9天石）
-- 失败，天石不足
tNpcGossip[20229]["Text3-3"] = {331}
tNpcGossip[20229]["tOption3-3"] = {331}

-- 成功，二次确认
tNpcGossip[20229]["Text3-4"] = {341}
tNpcGossip[20229]["tOption3-4"] = {341,342}

-- 接2-3、冲刺闯关
-- 失败，闯关失败
tNpcGossip[20229]["Text3-5"] = {351}
tNpcGossip[20229]["tOption3-5"] = {351}

-- 接2-4、冲刺闯关（1张冲刺券）
-- 失败，没有冲刺券
tNpcGossip[20229]["Text3-6"] = {361}
tNpcGossip[20229]["tOption3-6"] = {361}

-- 接2-5、冲刺闯关（9天石）
-- 失败，天石不足
tNpcGossip[20229]["Text3-7"] = {371}
tNpcGossip[20229]["tOption3-7"] = {371}

-- 成功，二次确认
tNpcGossip[20229]["Text3-8"] = {381}
tNpcGossip[20229]["tOption3-8"] = {381,382}

-- 接2-6、翻倍闯关
-- 失败，闯关失败
tNpcGossip[20229]["Text3-9"] = {391}
tNpcGossip[20229]["tOption3-9"] = {391}

-- 接2-7、翻倍闯关（1张翻倍券）
-- 失败，没有翻倍券
tNpcGossip[20229]["Text4-1"] = {411}
tNpcGossip[20229]["tOption4-1"] = {411}

-- 失败，闯关失败（3-9）

-- 接2-8、翻倍闯关（9天石）
-- 失败，天石不足
tNpcGossip[20229]["Text4-2"] = {421}
tNpcGossip[20229]["tOption4-2"] = {421}

-- 成功，二次确认
tNpcGossip[20229]["Text4-3"] = {431}
tNpcGossip[20229]["tOption4-3"] = {431,432}

-- 接2-2、正常闯关（1张单关券）
-- 失败，没有单关券
tNpcGossip[20229]["Text4-4"] = {441}
tNpcGossip[20229]["tOption4-4"] = {441}

-- 失败，闯关失败（3-9）

-- 接2-9、使用问号靴
-- 失败，背包里没有问号靴
tNpcGossip[20229]["Text4-5"] = {451}
tNpcGossip[20229]["tOption4-5"] = {451}

-- 接2-10、使用火箭靴(4-5)
-- 失败，背包里没有火箭靴

-- 接2-11、使用退关券(4-6)
-- 失败，背包里没有退关券

-- 接3、退出比赛
-- 还有闯关次数
tNpcGossip[20229]["Text5-1"] = {511,512}
tNpcGossip[20229]["tOption5-1"] = {511,512}
-- 确定退出比赛
tNpcGossip[20229]["OptionFunc511"] = "SerialIndiana_TransPos</N>1"

for i=20230,20309 do
	tNpcGossip[i] = tNpcGossip[20229]
end

------------------------------------------------itemtype模块--------------------------------------------------
--背包信头像
tItemFace[3302119] = 623

-- 随机符 3302120
tItem[3302120] = tItem[3302120] or {}
tItem[3302120]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseItem(nItemId)
end

-- 升层符 3302121
tItem[3302121] = tItem[3302121] or {}
tItem[3302121]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseItem(nItemId)
end

-- 降层符 3302122
tItem[3302122] = tItem[3302122] or {}
tItem[3302122]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseItem(nItemId)
end

-- 上升1层符 3302123
tItem[3302123] = tItem[3302123] or {}
tItem[3302123]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseItem(nItemId)
end

-- 上升2至5层符 3302124
tItem[3302124] = tItem[3302124] or {}
tItem[3302124]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseItem(nItemId)
end

-- 翻倍升层符 3302125
tItem[3302125] = tItem[3302125] or {}
tItem[3302125]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseItem(nItemId)
end

-- 大赢家永久外套礼包 3302285
tItem[3302285] = tItem[3302285] or {}
tItem[3302285]["DialogueText"] = tSerialIndiana_Text[3302285]
tItem[3302285]["Text1-1"]={111}
tItem[3302285]["tOption1-1"]={1,2,3}
-- 193205 洋洋得意（赠）
tItem[3302285]["OptionFunc1"] = "SerialIndiana_GetCoat</N>3302285</N>1"
-- 192575 龙凤呈祥（赠）
tItem[3302285]["OptionFunc2"] = "SerialIndiana_GetCoat</N>3302285</N>2"
-- 189085 雀羚轻衫（赠）
tItem[3302285]["OptionFunc3"] = "SerialIndiana_GetCoat</N>3302285</N>3"

-- 接1~3、外套名
-- 【二次确认】
tItem[3302285]["Text2-1"]={211}
tItem[3302285]["tOption2-1"]={4,5}

-- 大赢家时效外套豪华包 3302286
tItem[3302286] = tItem[3302286] or {}
tItem[3302286]["Text1-1"]={111}
tItem[3302286]["Text111"] = tSerialIndiana_Text[3302286]["Text111"]
tItem[3302286]["tOption1-1"]={1,2,3}
tItem[3302286]["Option1"] = tSerialIndiana_Text[3302285]["Option1"]
tItem[3302286]["Option2"] = tSerialIndiana_Text[3302285]["Option2"]
tItem[3302286]["Option3"] = tSerialIndiana_Text[3302285]["Option3"]
-- 江山一统（赠）
tItem[3302286]["OptionFunc1"] = "SerialIndiana_GetCoat</N>3302286</N>1"
-- 孔雀东南飞（赠）
tItem[3302286]["OptionFunc2"] = "SerialIndiana_GetCoat</N>3302286</N>2"
-- 春风得意（赠）
tItem[3302286]["OptionFunc3"] = "SerialIndiana_GetCoat</N>3302286</N>3"

-- 接1~3、外套名
-- 【二次确认】
tItem[3302286]["Text2-1"]={211}
tItem[3302286]["Text211"] = tSerialIndiana_Text[3302286]["Text211"]
tItem[3302286]["tOption2-1"]={4,5}
tItem[3302286]["Option4"] = tSerialIndiana_Text[3302285]["Option4"]
tItem[3302286]["Option5"] = tSerialIndiana_Text[3302285]["Option5"]

-- 大赢家时效外套精装包 3302287
tItem[3302287] = tItem[3302287] or {}
tItem[3302287]["DialogueText"] =tSerialIndiana_Text[3302287]
tItem[3302287]["Text1-1"]={111}
tItem[3302287]["Text111"] = tSerialIndiana_Text[3302287]["Text111"]
tItem[3302287]["tOption1-1"]={1,2,3}
tItem[3302287]["Option1"] = tSerialIndiana_Text[3302285]["Option1"]
tItem[3302287]["Option2"] = tSerialIndiana_Text[3302285]["Option2"]
tItem[3302287]["Option3"] = tSerialIndiana_Text[3302285]["Option3"]
-- 江山一统（赠）
tItem[3302287]["OptionFunc1"] = "SerialIndiana_GetCoat</N>3302287</N>1"
-- 孔雀东南飞（赠）
tItem[3302287]["OptionFunc2"] = "SerialIndiana_GetCoat</N>3302287</N>2"
-- 春风得意（赠）
tItem[3302287]["OptionFunc3"] = "SerialIndiana_GetCoat</N>3302287</N>3"

-- 接1~3、外套名
-- 【二次确认】
tItem[3302287]["Text2-1"]={211}
tItem[3302287]["Text211"] = tSerialIndiana_Text[3302287]["Text211"]
tItem[3302287]["tOption2-1"]={4,5}
tItem[3302287]["Option4"] = tSerialIndiana_Text[3302285]["Option4"]
tItem[3302287]["Option5"] = tSerialIndiana_Text[3302285]["Option5"]

-- 大赢家时效外套礼包 3302288
tItem[3302288] = tItem[3302288] or {}
tItem[3302288]["DialogueText"] =tSerialIndiana_Text[3302288]
tItem[3302288]["Text1-1"]={111}
tItem[3302288]["Text111"] = tSerialIndiana_Text[3302288]["Text111"]
tItem[3302288]["tOption1-1"]={1,2}
tItem[3302288]["Option1"] = tSerialIndiana_Text[3302285]["Option2"]
tItem[3302288]["Option2"] = tSerialIndiana_Text[3302285]["Option3"]
-- 孔雀东南飞（赠）
tItem[3302288]["OptionFunc1"] = "SerialIndiana_GetCoat</N>3302288</N>2"
-- 春风得意（赠）
tItem[3302288]["OptionFunc2"] = "SerialIndiana_GetCoat</N>3302288</N>3"

-- 接1~2、外套名
-- 【二次确认】
tItem[3302288]["Text2-1"]={211}
tItem[3302288]["Text111"] = tSerialIndiana_Text[3302288]["Text111"]
tItem[3302288]["tOption2-1"]={4,5}
tItem[3302288]["Option4"] = tSerialIndiana_Text[3302285]["Option4"]
tItem[3302288]["Option5"] = tSerialIndiana_Text[3302285]["Option5"]

-- 大赢家冠军礼包 3302289
tItem[3302289] = tItem[3302289] or {}
tItem[3302289]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseRewarItem(nItemId)
end
-- 大赢家亚军礼包 3302290
tItem[3302290] = tItem[3302290] or {}
tItem[3302290]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseRewarItem(nItemId)
end
-- 大赢家季军礼包 3302291
tItem[3302291] = tItem[3302291] or {}
tItem[3302291]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseRewarItem(nItemId)
end
-- 大赢家豪强礼包 3302292
tItem[3302292] = tItem[3302292] or {}
tItem[3302292]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseRewarItem(nItemId)
end
-- 大赢家勇士礼包 3302293
tItem[3302293] = tItem[3302293] or {}
tItem[3302293]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseRewarItem(nItemId)
end

-- 每日积分冠军礼包 3302294
tItem[3302294] = tItem[3302294] or {}
tItem[3302294]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseRewarItem(nItemId)
end
-- 每日积分亚军礼包 3302295
tItem[3302295] = tItem[3302295] or {}
tItem[3302295]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseRewarItem(nItemId)
end
-- 每日积分季军礼包 3302296
tItem[3302296] = tItem[3302296] or {}
tItem[3302296]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseRewarItem(nItemId)
end
-- 每日积分豪强礼包 3302297
tItem[3302297] = tItem[3302297] or {}
tItem[3302297]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseRewarItem(nItemId)
end
-- 每日积分勇士礼包 3302298
tItem[3302298] = tItem[3302298] or {}
tItem[3302298]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseRewarItem(nItemId)
end
-- 最快通关奖励 3302367
tItem[3302367] = tItem[3302367] or {}
tItem[3302367]["Function"] = function(nItemId,sItemName)
	SerialIndiana_UseRewarItem(nItemId)
end
---------------------------------------------怪物掉落--------------------------------------------------
-- local tSerialIndiana_AreaLoad = {}
	-- tSerialIndiana_AreaLoad["ActivityTime"] = tSerialIndiana_Cont["ActivityTime"]
	-- tSerialIndiana_AreaLoad["Function"] =tSerialIndiana_MonsterDead
	-- tSerialIndiana_AreaLoad["MonsterId"] = {4277}
-- table.insert(tMonsterDrop_AreaLoad,tSerialIndiana_AreaLoad)

-- tMonster[4277] = tMonster[4277] or {}
-- tMonster[4277]["tFunction"] = tMonster[4277]["tFunction"] or {}
-- table.insert(tMonster[4277]["tFunction"],SerialIndiana_KillBox)

---------------------------------------------时间检测--------------------------------------------------
--开始时发提醒
-- tOntimerMin_HM[1900] = tOntimerMin_HM[1900] or {}
-- table.insert(tOntimerMin_HM[1900],SerialIndiana_NewSendInMap)

-- 每日积分排行发奖和最快发奖,并且玩家传回双龙城
-- tOntimerMin_HM[1930] = tOntimerMin_HM[1930] or {}
-- table.insert(tOntimerMin_HM[1930],SerialIndiana_RankReward)

-- 00:00分
-- 总榜排行奖励
--tOntimerMin_HM	小时/分钟（每天的00点00分到00点02分执行）
--'00:00-00:02'
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],SerialIndiana_ClearGlobalData)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],SerialIndiana_ClearGlobalData)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],SerialIndiana_ClearGlobalData)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],SerialIndiana_ClearGlobalData)
-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],SerialIndiana_ClearGlobalData)

-- 服务器启动获得排行表数据，只取一次/可改服务器加载
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],SerialIndiana_ReadRankingData)
