------------------------------------------------------------------------------------
--Name:		171211[简体征服][任务脚本]新跨服赛马活动
--Creator: 	兰瑞妹
--Created:	2017/12/15
------------------------------------------------------------------------------------

-- 命名前缀
-- CrossServer_NewRacing_

-- logid 12000961
-- 1[1]，参加单人赛（进入地图就算参加，用于统计日参与率和人均参与数）
-- 1[2]，单人赛领取参与奖
-- 1[3]，参加15:00竞速赛
-- 1[4]，参加19:00竞速赛
-- 1[5]，领取竞速赛奖励

-- #stc 掩码说明 
-- #stc(171,45) 背包信
-- #stc(171,46) 领取参与奖 ==1 已领
-- #stc(171,47) 玩家今日积分
-- #stc(171,48) 玩家进入赛道颜色
-- #stc(171,83) 玩家每次积分

-- #taskid
--#35042

-- 今日赛马夺金榜
--# [51997]第1~3玩家数据
--# [51998]第4~6玩家数据
--# [51999]第7~9玩家数据
--# [51990]第10玩家数据
-- 昨日赛马夺金榜
--# [51901 ]第1~3玩家数据
--# [51905 ]第4~6玩家数据
--# [51909 ]第7~9玩家数据
--# [519013]第10玩家数据
-- #-第一名	data0	记录玩家ID			datastr0	玩家名称
--  #data1	记录玩家积分     	datastr1	玩家是否领奖 0 未领 1 已领
-- 第二名		data2	记录玩家ID			datastr2	玩家名称
-- #data3	记录玩家积分     	datastr3	玩家是否领奖 0 未领 1 已领
-- 第三名	data4	记录玩家ID			datastr4	玩家名称
--  #data5	记录玩家积分     	datastr5	玩家是否领奖 0 未领 1 已领


-- 常量表
local tCrossServer_NewRacing_Count = {}
	-- 活动时间
	tCrossServer_NewRacing_Count["ActivityTime"] = tActivityTime["CrossServerRacing"]["ActivityTime"]
	-- 首日时间
	tCrossServer_NewRacing_Count["FirstTime"] = tActivityTime["CrossServerRacing"]["FirstTime"]
	-- 个人赛场进入时间
	tCrossServer_NewRacing_Count["EnterTime"] = "00:00 23:55"
	tCrossServer_NewRacing_Count["CrossTime"] = {}
	tCrossServer_NewRacing_Count["CrossTime"][1] = "14:55 15:25"
	tCrossServer_NewRacing_Count["CrossTime"][3] = "14:55 15:45"
	
	-- 等级
	tCrossServer_NewRacing_Count["Level"] = 80
	tCrossServer_NewRacing_Count["Meto"] = 0
	
	-- 杀怪掉落
	tCrossServer_NewRacing_Count["Min"] = 300
	tCrossServer_NewRacing_Count["Max"] = 10000
	
	-- 马术
	tCrossServer_NewRacing_Count["MagicType"] = 7001
	-- 马装备位
	tCrossServer_NewRacing_Count["Equip"] = 12
	
	-- 进入个人赛场倒计时
	tCrossServer_NewRacing_Count["TimeDelay"] = 100
	-- 排行索引
	tCrossServer_NewRacing_Count["Ranking"] = {}
	tCrossServer_NewRacing_Count["Ranking"][1] = {224,225,226,227,228,229,230,231,232,233}
	tCrossServer_NewRacing_Count["Ranking"][2] = {244,245,246,247,248,249,250,251,252,253}
	-- 昨天索引和今日索引
	tCrossServer_NewRacing_Count["RankingIndex"] = {"Info","ResetInfo"}
	
	-- 当日积分达到100
	tCrossServer_NewRacing_Count["GoalScore"] = 100
	-- 金币陷阱积分
	tCrossServer_NewRacing_Count["TrapScore"] = 1
	
	-- 跨服taskid
	tCrossServer_NewRacing_Count["Taskid"] = 35042
	tCrossServer_NewRacing_Count["TaskMax"] = 20
	
	-- 怪物id
	tCrossServer_NewRacing_Count["MonsterID"] = {2443,2446,2445,2453,2712}
	-- genid
	tCrossServer_NewRacing_Count["GenId"] = 23342
	-- 大金币陷阱ID
	tCrossServer_NewRacing_Count["TrapType"] = 1853
	-- 大金币陷阱生成概率
	tCrossServer_NewRacing_Count["MinPro"] = 2000
	tCrossServer_NewRacing_Count["MaxPro"] = 10000
	
	-- 光效索引
	tCrossServer_NewRacing_Count["RaceIndex"] = "Race"
	tCrossServer_NewRacing_Count["ScoreIndex"] = "Score"
	tCrossServer_NewRacing_Count["RankIndex"] = "Rank"
	
	-- 跨服时间
	tCrossServer_NewRacing_Count["Duration"] = 1800
	tCrossServer_NewRacing_Count["CloseSecs"] = 55
	
	--全服邀请点
	tCrossServer_NewRacing_Count["MapId"] = 1002
	tCrossServer_NewRacing_Count["InviteText"] = 10576
	tCrossServer_NewRacing_Count["InviteEnd"] = 10577
	tCrossServer_NewRacing_Count["Invite_Pos"] ={}
	tCrossServer_NewRacing_Count["Invite_Pos"][1] = {}
	tCrossServer_NewRacing_Count["Invite_Pos"][1]["X"] = 362
	tCrossServer_NewRacing_Count["Invite_Pos"][1]["Y"] = 439
	
	tCrossServer_NewRacing_Count["Invite_Pos"][2] = {}
	tCrossServer_NewRacing_Count["Invite_Pos"][2]["X"] = 362
	tCrossServer_NewRacing_Count["Invite_Pos"][2]["Y"] = 444
	
	tCrossServer_NewRacing_Count["Invite_Pos"][3] = {}
	tCrossServer_NewRacing_Count["Invite_Pos"][3]["X"] = 366
	tCrossServer_NewRacing_Count["Invite_Pos"][3]["Y"] = 439
	
	tCrossServer_NewRacing_Count["Invite_Pos"][4] = {}
	tCrossServer_NewRacing_Count["Invite_Pos"][4]["X"] = 366
	tCrossServer_NewRacing_Count["Invite_Pos"][4]["Y"] = 444
	
	tCrossServer_NewRacing_Count["Invite_Pos"][5] = {}
	tCrossServer_NewRacing_Count["Invite_Pos"][5]["X"] = 369
	tCrossServer_NewRacing_Count["Invite_Pos"][5]["Y"] = 439
	
	tCrossServer_NewRacing_Count["Invite_Pos"][6] = {}
	tCrossServer_NewRacing_Count["Invite_Pos"][6]["X"] = 369
	tCrossServer_NewRacing_Count["Invite_Pos"][6]["Y"] = 444
	
	tCrossServer_NewRacing_Count["Invite_Pos"][7] = {}
	tCrossServer_NewRacing_Count["Invite_Pos"][7]["X"] = 372
	tCrossServer_NewRacing_Count["Invite_Pos"][7]["Y"] = 439
	
	tCrossServer_NewRacing_Count["Invite_Pos"][8] = {}
	tCrossServer_NewRacing_Count["Invite_Pos"][8]["X"] = 372
	tCrossServer_NewRacing_Count["Invite_Pos"][8]["Y"] = 444
	
-- 排行榜数据
local tCrossServer_NewRacing_RankingData = {}
local tCrossServer_NewRacing_BeforeData = {}
-- 排行index
local nCrossServer_NewRacing_Index = 1
	
-- Log表
local tCrossServer_NewRacing_Log = {}
	-- 过期删除
	tCrossServer_NewRacing_Log["OverDue"] = "0,0,%d,1,12000961,2,0,0"
	-- 玩家进入个人赛场
	tCrossServer_NewRacing_Log["EnterRacing"] = "0,0,0,0,12000961,1[1],0,0"
	-- 15点的
	tCrossServer_NewRacing_Log["EnterCrossRacingOne"] = "0,0,0,0,12000961,1[3],0,0"
	-- 19点的
	tCrossServer_NewRacing_Log["EnterCrossRacingTwo"] = "0,0,0,0,12000961,1[4],0,0"
	-- emoneylog
local tCrossServer_NewRacing_EMoneyLog = {}
	tCrossServer_NewRacing_EMoneyLog[22506] = "350	21710	0	0	1	"
	tCrossServer_NewRacing_EMoneyLog[22507] = "350	21709	0	0	1	"

-- stc掩码
local tCrossServer_NewRacing_Stc = {}
	-- 领取参与奖 ==1 已领
	tCrossServer_NewRacing_Stc[1] = {}
	tCrossServer_NewRacing_Stc[1]["EventType"] = 171
	tCrossServer_NewRacing_Stc[1]["DataType"] = 46
	tCrossServer_NewRacing_Stc[1]["Clear"] = 1
	-- 玩家今日积分
	tCrossServer_NewRacing_Stc[2] = {}
	tCrossServer_NewRacing_Stc[2]["EventType"] = 171
	tCrossServer_NewRacing_Stc[2]["DataType"] = 47
	tCrossServer_NewRacing_Stc[2]["Clear"] = 1
	-- 玩家进入赛道颜色
	tCrossServer_NewRacing_Stc[3] = {}
	tCrossServer_NewRacing_Stc[3]["EventType"] = 171
	tCrossServer_NewRacing_Stc[3]["DataType"] = 48
	tCrossServer_NewRacing_Stc[3]["Clear"] = 1
	-- 玩家每次积分
	tCrossServer_NewRacing_Stc[4] = {}
	tCrossServer_NewRacing_Stc[4]["EventType"] = 171
	tCrossServer_NewRacing_Stc[4]["DataType"] = 83
	tCrossServer_NewRacing_Stc[4]["Clear"] = 1
	
-- 地图传送点
local tCrossServer_NewRacing_ChgMap = {}
	-- 进入地图
	tCrossServer_NewRacing_ChgMap[1] = {}
	tCrossServer_NewRacing_ChgMap[1]["MapId"] = 10249
	tCrossServer_NewRacing_ChgMap[1]["PosX"] = 30
	tCrossServer_NewRacing_ChgMap[1]["PosY"] = 1374
	tCrossServer_NewRacing_ChgMap[1]["Range"] = 5
	tCrossServer_NewRacing_ChgMap[1]["Effect"] = 1
	-- 传送出去
	tCrossServer_NewRacing_ChgMap[2] = {}
	tCrossServer_NewRacing_ChgMap[2]["MapId"] = 1002
	tCrossServer_NewRacing_ChgMap[2]["PosX"] = 366
	tCrossServer_NewRacing_ChgMap[2]["PosY"] = 440
	tCrossServer_NewRacing_ChgMap[2]["Range"] = 5
	tCrossServer_NewRacing_ChgMap[2]["Effect"] = 2
	-- 进入地图
	tCrossServer_NewRacing_ChgMap[3] = {}
	tCrossServer_NewRacing_ChgMap[3]["MapId"] = 10248
	tCrossServer_NewRacing_ChgMap[3]["PosX"] = 33
	tCrossServer_NewRacing_ChgMap[3]["PosY"] = 1387
	tCrossServer_NewRacing_ChgMap[3]["Range"] = 5
	tCrossServer_NewRacing_ChgMap[3]["Effect"] = 1
	
-- 特效
local tCrossServer_NewRacing_Effect = {}
	-- 进图
	tCrossServer_NewRacing_Effect[1] = {}
	tCrossServer_NewRacing_Effect[1]["EffectObj"] = "self"
	tCrossServer_NewRacing_Effect[1]["Effect"] = "moveback"
	-- 出图
	tCrossServer_NewRacing_Effect[2] = {}
	tCrossServer_NewRacing_Effect[2]["EffectObj"] = "self"
	tCrossServer_NewRacing_Effect[2]["Effect"] = "movego"
	--  赛道颜色
	tCrossServer_NewRacing_Effect["Race"] = {}
	tCrossServer_NewRacing_Effect["Race"]["EffectObj"] = "self"
	-- 绿色
	tCrossServer_NewRacing_Effect["Race"][1] = "property_wood_1"
	-- 红色
	tCrossServer_NewRacing_Effect["Race"][2] = "property_fire_1"
	-- 黄色
	tCrossServer_NewRacing_Effect["Race"][3] = "property_gold_1"
	-- 蓝色
	tCrossServer_NewRacing_Effect["Race"][4] = "property_water_1"
	
	-- 加积分光效
	tCrossServer_NewRacing_Effect["Score"] = {}
	tCrossServer_NewRacing_Effect["Score"]["EffectObj"] = "self"
	tCrossServer_NewRacing_Effect["Score"][01] = "itemaddex01_1"
	tCrossServer_NewRacing_Effect["Score"][02] = "itemaddex02_1"
	tCrossServer_NewRacing_Effect["Score"][03] = "itemaddex03_1"
	tCrossServer_NewRacing_Effect["Score"][04] = "itemaddex04_1"
	tCrossServer_NewRacing_Effect["Score"][05] = "itemaddex05_1"
	tCrossServer_NewRacing_Effect["Score"][06] = "itemaddex06_1"
	tCrossServer_NewRacing_Effect["Score"][07] = "itemaddex07_1"
	tCrossServer_NewRacing_Effect["Score"][08] = "itemaddex08_1"
	tCrossServer_NewRacing_Effect["Score"][09] = "itemaddex09_1"
	tCrossServer_NewRacing_Effect["Score"][10] = "itemaddex10_1"
	
	-- 排名光效
	tCrossServer_NewRacing_Effect["Rank"] = {}
	tCrossServer_NewRacing_Effect["Rank"]["EffectObj"] = "self"
	tCrossServer_NewRacing_Effect["Rank"][01] = "ridmatch_first_1"
	tCrossServer_NewRacing_Effect["Rank"][02] = "ridmatch_second_1"
	tCrossServer_NewRacing_Effect["Rank"][03] = "ridmatch_third_1"
	tCrossServer_NewRacing_Effect["Rank"][04] = "ridmatch_fourth_1"
	tCrossServer_NewRacing_Effect["Rank"][05] = "ridmatch_fifth_1"
	tCrossServer_NewRacing_Effect["Rank"][06] = "ridmatch_sixth_1"
	tCrossServer_NewRacing_Effect["Rank"][07] = "ridmatch_seventh_1"
	tCrossServer_NewRacing_Effect["Rank"][08] = "ridmatch_eighth_1"
	tCrossServer_NewRacing_Effect["Rank"][09] = "ridmatch_ninth_1"
	tCrossServer_NewRacing_Effect["Rank"][10] = "ridmatch_tenth_1"
	
-- 加状态
local tCrossServer_NewRacing_Status = {}
	-- 加速
	tCrossServer_NewRacing_Status[1] = {}
	tCrossServer_NewRacing_Status[1]["Status"] = 49
	tCrossServer_NewRacing_Status[1]["Power"] = 50
	tCrossServer_NewRacing_Status[1]["Secs"] = 15
	tCrossServer_NewRacing_Status[1]["Times"] = 0
	tCrossServer_NewRacing_Status[1]["RemainTime"] = 15
	tCrossServer_NewRacing_Status[1]["EndTime"] = 15
	
-- 奖励表
local tCrossServer_NewRacing_Reward = {}
	-- 3306999,'赛马夺金参与奖礼包
	-- 黄色神纹（赠）礼包	3306363	1	赠
	-- 骑宠积分礼包	727306
	tCrossServer_NewRacing_Reward[3306999] = {}
	tCrossServer_NewRacing_Reward[3306999]["Log"] = "0,0,3306999,1,12000961,2,3306363[727306],1[1]"
	tCrossServer_NewRacing_Reward[3306999]["RewardNoNeedTip"] = 1
	tCrossServer_NewRacing_Reward[3306999]["DeleteItem"] = {}
	tCrossServer_NewRacing_Reward[3306999]["DeleteItem"][1] = {}
	tCrossServer_NewRacing_Reward[3306999]["DeleteItem"][1]["Id"] = 3306999
	tCrossServer_NewRacing_Reward[3306999]["DeleteItem"][1]["SaveTime"] = 0
	tCrossServer_NewRacing_Reward[3306999]["RewardItem"] = {}
	tCrossServer_NewRacing_Reward[3306999]["RewardItem"][1] = {}
	tCrossServer_NewRacing_Reward[3306999]["RewardItem"][1]["Id"] = 3306363
	tCrossServer_NewRacing_Reward[3306999]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_Reward[3306999]["RewardItem"][2] = {}
	tCrossServer_NewRacing_Reward[3306999]["RewardItem"][2]["Id"] = 727306
	tCrossServer_NewRacing_Reward[3306999]["RewardItem"][2]["Attr"] = "0 1"
	tCrossServer_NewRacing_Reward[3306999]["RewardEffect"] = {}
	tCrossServer_NewRacing_Reward[3306999]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3307000,'赛马夺金第1名礼包'
	-- 1000气力值	3008193
	-- 1000赛马积分	直接给
	tCrossServer_NewRacing_Reward[3307000] = {}
	tCrossServer_NewRacing_Reward[3307000]["Log"] = "0,0,3307000,1,12000961,2,3008193[14],1[1000]"
	-- tCrossServer_NewRacing_Reward[3307000]["RewardNoNeedTip"] = 1
	tCrossServer_NewRacing_Reward[3307000]["DeleteItem"] = {}
	tCrossServer_NewRacing_Reward[3307000]["DeleteItem"][1] = {}
	tCrossServer_NewRacing_Reward[3307000]["DeleteItem"][1]["Id"] = 3307000
	tCrossServer_NewRacing_Reward[3307000]["DeleteItem"][1]["SaveTime"] = 0
	tCrossServer_NewRacing_Reward[3307000]["RewardItem"] = {}
	tCrossServer_NewRacing_Reward[3307000]["RewardItem"][1] = {}
	tCrossServer_NewRacing_Reward[3307000]["RewardItem"][1]["Id"] = 3008193
	tCrossServer_NewRacing_Reward[3307000]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_Reward[3307000]["RewardRidingPoint"] = {}
	tCrossServer_NewRacing_Reward[3307000]["RewardRidingPoint"]["Value"] = 1000
	tCrossServer_NewRacing_Reward[3307000]["RewardEffect"] = {}
	tCrossServer_NewRacing_Reward[3307000]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3307001,'赛马夺金第2名礼包'
	-- 800气力值	3008192
	-- 800赛马积分	直接给
	tCrossServer_NewRacing_Reward[3307001] = {}
	tCrossServer_NewRacing_Reward[3307001]["Log"] = "0,0,3307001,1,12000961,2,3008192[14],1[800]"
	-- tCrossServer_NewRacing_Reward[3307001]["RewardNoNeedTip"] = 1
	tCrossServer_NewRacing_Reward[3307001]["DeleteItem"] = {}
	tCrossServer_NewRacing_Reward[3307001]["DeleteItem"][1] = {}
	tCrossServer_NewRacing_Reward[3307001]["DeleteItem"][1]["Id"] = 3307001
	tCrossServer_NewRacing_Reward[3307001]["DeleteItem"][1]["SaveTime"] = 0
	tCrossServer_NewRacing_Reward[3307001]["RewardItem"] = {}
	tCrossServer_NewRacing_Reward[3307001]["RewardItem"][1] = {}
	tCrossServer_NewRacing_Reward[3307001]["RewardItem"][1]["Id"] = 3008192
	tCrossServer_NewRacing_Reward[3307001]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_Reward[3307001]["RewardRidingPoint"] = {}
	tCrossServer_NewRacing_Reward[3307001]["RewardRidingPoint"]["Value"] = 800
	tCrossServer_NewRacing_Reward[3307001]["RewardEffect"] = {}
	tCrossServer_NewRacing_Reward[3307001]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3307002,'赛马夺金第3名礼包'
	-- 500气力值	3008190
	-- 500赛马积分	直接给
	tCrossServer_NewRacing_Reward[3307002] = {}
	tCrossServer_NewRacing_Reward[3307002]["Log"] = "0,0,3307002,1,12000961,2,3008190[14],1[500]"
	-- tCrossServer_NewRacing_Reward[3307002]["RewardNoNeedTip"] = 1
	tCrossServer_NewRacing_Reward[3307002]["DeleteItem"] = {}
	tCrossServer_NewRacing_Reward[3307002]["DeleteItem"][1] = {}
	tCrossServer_NewRacing_Reward[3307002]["DeleteItem"][1]["Id"] = 3307002
	tCrossServer_NewRacing_Reward[3307002]["DeleteItem"][1]["SaveTime"] = 0
	tCrossServer_NewRacing_Reward[3307002]["RewardItem"] = {}
	tCrossServer_NewRacing_Reward[3307002]["RewardItem"][1] = {}
	tCrossServer_NewRacing_Reward[3307002]["RewardItem"][1]["Id"] = 3008190
	tCrossServer_NewRacing_Reward[3307002]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_Reward[3307002]["RewardRidingPoint"] = {}
	tCrossServer_NewRacing_Reward[3307002]["RewardRidingPoint"]["Value"] = 500
	tCrossServer_NewRacing_Reward[3307002]["RewardEffect"] = {}
	tCrossServer_NewRacing_Reward[3307002]["RewardEffect"]["Effect"] = "angelwing"

	-- 3307003,'赛马夺金优秀奖礼包
	-- 300气力值	3304327
	-- 300赛马积分	直接给
	tCrossServer_NewRacing_Reward[3307003] = {}
	tCrossServer_NewRacing_Reward[3307003]["Log"] = "0,0,3307003,1,12000961,2,3304327[14],1[300]"
	-- tCrossServer_NewRacing_Reward[3307003]["RewardNoNeedTip"] = 1
	tCrossServer_NewRacing_Reward[3307003]["DeleteItem"] = {}
	tCrossServer_NewRacing_Reward[3307003]["DeleteItem"][1] = {}
	tCrossServer_NewRacing_Reward[3307003]["DeleteItem"][1]["Id"] = 3307003
	tCrossServer_NewRacing_Reward[3307003]["DeleteItem"][1]["SaveTime"] = 0
	tCrossServer_NewRacing_Reward[3307003]["RewardItem"] = {}
	tCrossServer_NewRacing_Reward[3307003]["RewardItem"][1] = {}
	tCrossServer_NewRacing_Reward[3307003]["RewardItem"][1]["Id"] = 3304327
	tCrossServer_NewRacing_Reward[3307003]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_Reward[3307003]["RewardRidingPoint"] = {}
	tCrossServer_NewRacing_Reward[3307003]["RewardRidingPoint"]["Value"] = 300
	tCrossServer_NewRacing_Reward[3307003]["RewardEffect"] = {}
	tCrossServer_NewRacing_Reward[3307003]["RewardEffect"]["Effect"] = "angelwing"
	
	
-- 给玩家奖励
local tCrossServer_NewRacing_GiveReward = {}
	-- 领取参与奖
	tCrossServer_NewRacing_GiveReward[1] = {}
	tCrossServer_NewRacing_GiveReward[1]["Log"] = "0,0,0,0,12000961,1[2],3306999,1"
	tCrossServer_NewRacing_GiveReward[1]["RewardItem"] = {}
	tCrossServer_NewRacing_GiveReward[1]["RewardItem"][1] = {}
	tCrossServer_NewRacing_GiveReward[1]["RewardItem"][1]["Id"] = 3306999
	tCrossServer_NewRacing_GiveReward[1]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_GiveReward[1]["RewardEffect"] = {}
	tCrossServer_NewRacing_GiveReward[1]["RewardEffect"]["Effect"] = "angelwing"
	tCrossServer_NewRacing_GiveReward[1]["Talk"] = tCrossServer_NewRacing_Text["JoinInReward"]
	
	-- 邮件领奖
	tCrossServer_NewRacing_GiveReward["MailReward"] = {}
	-- 第一名
	tCrossServer_NewRacing_GiveReward["MailReward"][1] ={}
	tCrossServer_NewRacing_GiveReward["MailReward"][1]["LogId"] = 12000961
	tCrossServer_NewRacing_GiveReward["MailReward"][1]["LogStep"] = "2[%d]"
	tCrossServer_NewRacing_GiveReward["MailReward"][1]["RewardItem"] = {}
	tCrossServer_NewRacing_GiveReward["MailReward"][1]["RewardItem"][1] = {}
	tCrossServer_NewRacing_GiveReward["MailReward"][1]["RewardItem"][1]["Id"] = 3307000
	tCrossServer_NewRacing_GiveReward["MailReward"][1]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_GiveReward["MailReward"][1]["RewardEffect"] = {}
	tCrossServer_NewRacing_GiveReward["MailReward"][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 第二名
	tCrossServer_NewRacing_GiveReward["MailReward"][2] ={}
	tCrossServer_NewRacing_GiveReward["MailReward"][2]["LogId"] = 12000961
	tCrossServer_NewRacing_GiveReward["MailReward"][2]["LogStep"] = "2[%d]"
	tCrossServer_NewRacing_GiveReward["MailReward"][2]["RewardItem"] = {}
	tCrossServer_NewRacing_GiveReward["MailReward"][2]["RewardItem"][1] = {}
	tCrossServer_NewRacing_GiveReward["MailReward"][2]["RewardItem"][1]["Id"] = 3307001
	tCrossServer_NewRacing_GiveReward["MailReward"][2]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_GiveReward["MailReward"][2]["RewardEffect"] = {}
	tCrossServer_NewRacing_GiveReward["MailReward"][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 第三名
	tCrossServer_NewRacing_GiveReward["MailReward"][3] ={}
	tCrossServer_NewRacing_GiveReward["MailReward"][3]["LogId"] = 12000961
	tCrossServer_NewRacing_GiveReward["MailReward"][3]["LogStep"] = "2[%d]"
	tCrossServer_NewRacing_GiveReward["MailReward"][3]["RewardItem"] = {}
	tCrossServer_NewRacing_GiveReward["MailReward"][3]["RewardItem"][1] = {}
	tCrossServer_NewRacing_GiveReward["MailReward"][3]["RewardItem"][1]["Id"] = 3307002
	tCrossServer_NewRacing_GiveReward["MailReward"][3]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_GiveReward["MailReward"][3]["RewardEffect"] = {}
	tCrossServer_NewRacing_GiveReward["MailReward"][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 第4~10名
	tCrossServer_NewRacing_GiveReward["MailReward"][4] ={}
	tCrossServer_NewRacing_GiveReward["MailReward"][4]["LogId"] = 12000961
	tCrossServer_NewRacing_GiveReward["MailReward"][4]["LogStep"] = "2[%d]"
	tCrossServer_NewRacing_GiveReward["MailReward"][4]["RewardItem"] = {}
	tCrossServer_NewRacing_GiveReward["MailReward"][4]["RewardItem"][1] = {}
	tCrossServer_NewRacing_GiveReward["MailReward"][4]["RewardItem"][1]["Id"] = 3307003
	tCrossServer_NewRacing_GiveReward["MailReward"][4]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_GiveReward["MailReward"][4]["RewardEffect"] = {}
	tCrossServer_NewRacing_GiveReward["MailReward"][4]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tCrossServer_NewRacing_GiveReward["RaceMailReward"] = {}
	-- 第一名
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][1] ={}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][1]["LogId"] = 12000961
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][1]["LogStep"] = "3[%d]"
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][1]["RewardItem"] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][1]["RewardItem"][1] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][1]["RewardItem"][1]["Id"] = 3008198
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][1]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][1]["RewardEffect"] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 第二名
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][2] ={}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][2]["LogId"] = 12000961
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][2]["LogStep"] = "3[%d]"
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][2]["RewardItem"] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][2]["RewardItem"][1] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][2]["RewardItem"][1]["Id"] = 3008196
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][2]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][2]["RewardEffect"] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 第三名
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][3] ={}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][3]["LogId"] = 12000961
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][3]["LogStep"] = "3[%d]"
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][3]["RewardItem"] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][3]["RewardItem"][1] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][3]["RewardItem"][1]["Id"] = 3008193
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][3]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][3]["RewardEffect"] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 第4~10名
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][4] ={}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][4]["LogId"] = 12000961
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][4]["LogStep"] = "3[%d]"
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][4]["RewardItem"] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][4]["RewardItem"][1] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][4]["RewardItem"][1]["Id"] = 3008192
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][4]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][4]["RewardEffect"] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 第11-100名
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][5] ={}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][5]["LogId"] = 12000961
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][5]["LogStep"] = "3[%d]"
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][5]["RewardItem"] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][5]["RewardItem"][1] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][5]["RewardItem"][1]["Id"] = 3008190
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][5]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][5]["RewardEffect"] = {}
	tCrossServer_NewRacing_GiveReward["RaceMailReward"][5]["RewardEffect"]["Effect"] = "angelwing"
	
-- 发奖action
local tCrossServer_NewRacing_MailAction = {}
	tCrossServer_NewRacing_MailAction[01] = 94485915
	tCrossServer_NewRacing_MailAction[02] = 94485916
	tCrossServer_NewRacing_MailAction[03] = 94485917
	tCrossServer_NewRacing_MailAction[04] = 94485918
	tCrossServer_NewRacing_MailAction[05] = 94485919
	tCrossServer_NewRacing_MailAction[06] = 94485920
	tCrossServer_NewRacing_MailAction[07] = 94485921
	tCrossServer_NewRacing_MailAction[08] = 94485922
	tCrossServer_NewRacing_MailAction[09] = 94485923
	tCrossServer_NewRacing_MailAction[10] = 94485924
	tCrossServer_NewRacing_MailAction[11] = 94485925
	
	
local tCrossServer_NewRacing_FindWay = {}
	-- 寻路
	tCrossServer_NewRacing_FindWay[1] = {}
	tCrossServer_NewRacing_FindWay[1]["PosX"] = 340
	tCrossServer_NewRacing_FindWay[1]["PosY"] = 248
	tCrossServer_NewRacing_FindWay[1]["MapId"] = 1002
	tCrossServer_NewRacing_FindWay[1]["NpcId"] = 22507
	
-- 陷阱数据
local tCrossServer_NewRacing_TrapInfo = {}
	-- 个人赛（赛道）
	tCrossServer_NewRacing_TrapInfo[1] = {}
	tCrossServer_NewRacing_TrapInfo[1]["TrapType"] = 1847
	tCrossServer_NewRacing_TrapInfo[1]["Look"] = 1847
	tCrossServer_NewRacing_TrapInfo[1]["MapId"] = 10249
	tCrossServer_NewRacing_TrapInfo[1]["PosCX"] = 2
	tCrossServer_NewRacing_TrapInfo[1]["PosCY"] = 2
	-- 个人赛加速坐标
	tCrossServer_NewRacing_TrapInfo[2] = {}
	tCrossServer_NewRacing_TrapInfo[2]["TrapType"] = 1848
	tCrossServer_NewRacing_TrapInfo[2]["Look"] = 1649
	tCrossServer_NewRacing_TrapInfo[2]["MapId"] = 10249
	tCrossServer_NewRacing_TrapInfo[2]["PosCX"] = 4
	tCrossServer_NewRacing_TrapInfo[2]["PosCY"] = 4
	-- 跨服加速坐标
	tCrossServer_NewRacing_TrapInfo[3] = {}
	tCrossServer_NewRacing_TrapInfo[3]["TrapType"] = 1849
	tCrossServer_NewRacing_TrapInfo[3]["Look"] = 1649
	tCrossServer_NewRacing_TrapInfo[3]["MapId"] = 10248
	tCrossServer_NewRacing_TrapInfo[3]["PosCX"] = 4
	tCrossServer_NewRacing_TrapInfo[3]["PosCY"] = 4
	-- 大金币陷阱
	tCrossServer_NewRacing_TrapInfo[4] = {}
	tCrossServer_NewRacing_TrapInfo[4]["TrapType"] = 1853
	tCrossServer_NewRacing_TrapInfo[4]["Look"] = 1604
	tCrossServer_NewRacing_TrapInfo[4]["MapId"] = 10249
	tCrossServer_NewRacing_TrapInfo[4]["PosCX"] = 2
	tCrossServer_NewRacing_TrapInfo[4]["PosCY"] = 2
	-- 终点外观陷阱
	tCrossServer_NewRacing_TrapInfo[5] = {}
	tCrossServer_NewRacing_TrapInfo[5]["TrapType"] = 1079
	tCrossServer_NewRacing_TrapInfo[5]["Look"] = 1029
	tCrossServer_NewRacing_TrapInfo[5]["MapId"] = 10248
	tCrossServer_NewRacing_TrapInfo[5]["PosCX"] = 1
	tCrossServer_NewRacing_TrapInfo[5]["PosCY"] = 1
	tCrossServer_NewRacing_TrapInfo[5]["PosX"] = 1351
	tCrossServer_NewRacing_TrapInfo[5]["PosY"] = 23
	
-- 陷阱数据
local tCrossServer_NewRacing_TrapData = {}
	-- 个人赛
	tCrossServer_NewRacing_TrapData["Personal"] = {}
	-- 金币赛道位置
	tCrossServer_NewRacing_TrapData["Personal"]["Race"] = {}
	tCrossServer_NewRacing_TrapData["Personal"]["Race"][1] = {}
	tCrossServer_NewRacing_TrapData["Personal"]["Race"][1]["StartPosX"] = 30
	tCrossServer_NewRacing_TrapData["Personal"]["Race"][1]["StartPosY"] = 1347
	tCrossServer_NewRacing_TrapData["Personal"]["Race"][2] = {}
	tCrossServer_NewRacing_TrapData["Personal"]["Race"][2]["StartPosX"] = 42
	tCrossServer_NewRacing_TrapData["Personal"]["Race"][2]["StartPosY"] = 1359
	tCrossServer_NewRacing_TrapData["Personal"]["Race"][3] = {}
	tCrossServer_NewRacing_TrapData["Personal"]["Race"][3]["StartPosX"] = 55
	tCrossServer_NewRacing_TrapData["Personal"]["Race"][3]["StartPosY"] = 1372
	tCrossServer_NewRacing_TrapData["Personal"]["Race"][4] = {}
	tCrossServer_NewRacing_TrapData["Personal"]["Race"][4]["StartPosX"] = 69
	tCrossServer_NewRacing_TrapData["Personal"]["Race"][4]["StartPosY"] = 1386
	-- 同一个赛道四个点
	tCrossServer_NewRacing_TrapData["Personal"]["Race"]["InAdd"] = 5
	-- 别的颜色赛道
	tCrossServer_NewRacing_TrapData["Personal"]["Race"]["OutAdd"] = 6
	-- 另一个赛道
	tCrossServer_NewRacing_TrapData["Personal"]["Race"]["OtherAdd"] = 112
	tCrossServer_NewRacing_TrapData["Personal"]["RaceData"] = {}
	
	-- 加速陷阱
	tCrossServer_NewRacing_TrapData["Speed"] = {}
	tCrossServer_NewRacing_TrapData["Speed"][1] = {}
	tCrossServer_NewRacing_TrapData["Speed"][1][1] = {33,1353}
	tCrossServer_NewRacing_TrapData["Speed"][1][2] = {44,1363}
	tCrossServer_NewRacing_TrapData["Speed"][1][3] = {59,1378}
	tCrossServer_NewRacing_TrapData["Speed"][1][4] = {71,1390}
	tCrossServer_NewRacing_TrapData["Speed"][2] = {}
	tCrossServer_NewRacing_TrapData["Speed"][2][3] = {145,1241}
	tCrossServer_NewRacing_TrapData["Speed"][2][4] = {157,1254}
	tCrossServer_NewRacing_TrapData["Speed"][2][1] = {169,1267}
	tCrossServer_NewRacing_TrapData["Speed"][2][2] = {181,1279}
	tCrossServer_NewRacing_TrapData["Speed"][3] = {}
	tCrossServer_NewRacing_TrapData["Speed"][3][1] = {256,1129}
	tCrossServer_NewRacing_TrapData["Speed"][3][2] = {268,1140}
	tCrossServer_NewRacing_TrapData["Speed"][3][3] = {281,1154}
	tCrossServer_NewRacing_TrapData["Speed"][3][4] = {295,1168}
	tCrossServer_NewRacing_TrapData["Speed"][4] = {}
	tCrossServer_NewRacing_TrapData["Speed"][4][3] = {370,1015}
	tCrossServer_NewRacing_TrapData["Speed"][4][4] = {382,1028}
	tCrossServer_NewRacing_TrapData["Speed"][4][1] = {395,1042}
	tCrossServer_NewRacing_TrapData["Speed"][4][2] = {407,1053}
	tCrossServer_NewRacing_TrapData["Speed"][5] = {}
	tCrossServer_NewRacing_TrapData["Speed"][5][1] = {482,903}
	tCrossServer_NewRacing_TrapData["Speed"][5][2] = {493,915}
	tCrossServer_NewRacing_TrapData["Speed"][5][3] = {506,929}
	tCrossServer_NewRacing_TrapData["Speed"][5][4] = {520,943}
	tCrossServer_NewRacing_TrapData["Speed"][6] = {}
	tCrossServer_NewRacing_TrapData["Speed"][6][3] = {593,794}
	tCrossServer_NewRacing_TrapData["Speed"][6][4] = {604,806}
	tCrossServer_NewRacing_TrapData["Speed"][6][1] = {617,818}
	tCrossServer_NewRacing_TrapData["Speed"][6][2] = {629,831}
	tCrossServer_NewRacing_TrapData["Speed"][7] = {}
	tCrossServer_NewRacing_TrapData["Speed"][7][1] = {706,681}
	tCrossServer_NewRacing_TrapData["Speed"][7][2] = {717,692}
	tCrossServer_NewRacing_TrapData["Speed"][7][3] = {730,706}
	tCrossServer_NewRacing_TrapData["Speed"][7][4] = {743,719}
	tCrossServer_NewRacing_TrapData["Speed"][8] = {}
	tCrossServer_NewRacing_TrapData["Speed"][8][3] = {816,570}
	tCrossServer_NewRacing_TrapData["Speed"][8][4] = {828,582}
	tCrossServer_NewRacing_TrapData["Speed"][8][1] = {840,595}
	tCrossServer_NewRacing_TrapData["Speed"][8][2] = {853,608}
	tCrossServer_NewRacing_TrapData["Speed"][9] = {}
	tCrossServer_NewRacing_TrapData["Speed"][9][1] = {929,456}
	tCrossServer_NewRacing_TrapData["Speed"][9][2] = {941,468}
	tCrossServer_NewRacing_TrapData["Speed"][9][3] = {954,481}
	tCrossServer_NewRacing_TrapData["Speed"][9][4] = {967,496}
	tCrossServer_NewRacing_TrapData["Speed"][10] = {}
	tCrossServer_NewRacing_TrapData["Speed"][10][3] = {1038,348}
	tCrossServer_NewRacing_TrapData["Speed"][10][4] = {1050,361}
	tCrossServer_NewRacing_TrapData["Speed"][10][1] = {1062,374}
	tCrossServer_NewRacing_TrapData["Speed"][10][2] = {1074,386}
	tCrossServer_NewRacing_TrapData["Speed"][11] = {}
	tCrossServer_NewRacing_TrapData["Speed"][11][1] = {1150,236}
	tCrossServer_NewRacing_TrapData["Speed"][11][2] = {1162,247}
	tCrossServer_NewRacing_TrapData["Speed"][11][3] = {1175,261}
	tCrossServer_NewRacing_TrapData["Speed"][11][4] = {1188,274}
	tCrossServer_NewRacing_TrapData["Speed"][12] = {}
	tCrossServer_NewRacing_TrapData["Speed"][12][3] = {1262,123}
	tCrossServer_NewRacing_TrapData["Speed"][12][4] = {1275,135}
	tCrossServer_NewRacing_TrapData["Speed"][12][1] = {1287,148}
	tCrossServer_NewRacing_TrapData["Speed"][12][2] = {1300,161}
	tCrossServer_NewRacing_TrapData["EndSpeed"] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][1] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][1][1] = {120,1265}
	tCrossServer_NewRacing_TrapData["EndSpeed"][1][2] = {131.,1276}
	tCrossServer_NewRacing_TrapData["EndSpeed"][1][3] = {145,1289}
	tCrossServer_NewRacing_TrapData["EndSpeed"][1][4] = {159,1303}
	tCrossServer_NewRacing_TrapData["EndSpeed"][2] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][2][3] = {233,1152}
	tCrossServer_NewRacing_TrapData["EndSpeed"][2][4] = {245,1167}
	tCrossServer_NewRacing_TrapData["EndSpeed"][2][1] = {269,1176}
	tCrossServer_NewRacing_TrapData["EndSpeed"][2][2] = {281,1190}
	tCrossServer_NewRacing_TrapData["EndSpeed"][3] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][3][1] = {344,1040}
	tCrossServer_NewRacing_TrapData["EndSpeed"][3][2] = {356,1051}
	tCrossServer_NewRacing_TrapData["EndSpeed"][3][3] = {369,1065}
	tCrossServer_NewRacing_TrapData["EndSpeed"][3][4] = {383,1079}
	tCrossServer_NewRacing_TrapData["EndSpeed"][4] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][4][3] = {457,928}
	tCrossServer_NewRacing_TrapData["EndSpeed"][4][4] = {469,939}
	tCrossServer_NewRacing_TrapData["EndSpeed"][4][1] = {483,950}
	tCrossServer_NewRacing_TrapData["EndSpeed"][4][2] = {494,965}
	tCrossServer_NewRacing_TrapData["EndSpeed"][5] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][5][1] = {567,817}
	tCrossServer_NewRacing_TrapData["EndSpeed"][5][2] = {579,829}
	tCrossServer_NewRacing_TrapData["EndSpeed"][5][3] = {592,842}
	tCrossServer_NewRacing_TrapData["EndSpeed"][5][4] = {606,857}
	tCrossServer_NewRacing_TrapData["EndSpeed"][6] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][6][3] = {680,705}
	tCrossServer_NewRacing_TrapData["EndSpeed"][6][4] = {692,718}
	tCrossServer_NewRacing_TrapData["EndSpeed"][6][1] = {705,730}
	tCrossServer_NewRacing_TrapData["EndSpeed"][6][2] = {717,743}
	tCrossServer_NewRacing_TrapData["EndSpeed"][7] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][7][1] = {790,595}
	tCrossServer_NewRacing_TrapData["EndSpeed"][7][2] = {802,606}
	tCrossServer_NewRacing_TrapData["EndSpeed"][7][3] = {816,620}
	tCrossServer_NewRacing_TrapData["EndSpeed"][7][4] = {829,633}
	tCrossServer_NewRacing_TrapData["EndSpeed"][8] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][8][3] = {903,482}
	tCrossServer_NewRacing_TrapData["EndSpeed"][8][4] = {916,494}
	tCrossServer_NewRacing_TrapData["EndSpeed"][8][1] = {928,507}
	tCrossServer_NewRacing_TrapData["EndSpeed"][8][2] = {942,519}
	tCrossServer_NewRacing_TrapData["EndSpeed"][9] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][9][1] = {1013,372}
	tCrossServer_NewRacing_TrapData["EndSpeed"][9][2] = {1025,384}
	tCrossServer_NewRacing_TrapData["EndSpeed"][9][3] = {1038,397}
	tCrossServer_NewRacing_TrapData["EndSpeed"][9][4] = {1052,410}
	tCrossServer_NewRacing_TrapData["EndSpeed"][10] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][10][3] = {1126,259}
	tCrossServer_NewRacing_TrapData["EndSpeed"][10][4] = {1138,271}
	tCrossServer_NewRacing_TrapData["EndSpeed"][10][1] = {1151.,284}
	tCrossServer_NewRacing_TrapData["EndSpeed"][10][2] = {1164,296}
	tCrossServer_NewRacing_TrapData["EndSpeed"][11] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][11][1] = {1238,147}
	tCrossServer_NewRacing_TrapData["EndSpeed"][11][2] = {1250,159}
	tCrossServer_NewRacing_TrapData["EndSpeed"][11][3] = {1263,173}
	tCrossServer_NewRacing_TrapData["EndSpeed"][11][4] = {1277,186}
	tCrossServer_NewRacing_TrapData["EndSpeed"][12] = {}
	tCrossServer_NewRacing_TrapData["EndSpeed"][12][3] = {1353,32}
	tCrossServer_NewRacing_TrapData["EndSpeed"][12][4] = {1366,44}
	tCrossServer_NewRacing_TrapData["EndSpeed"][12][1] = {1378,57}
	tCrossServer_NewRacing_TrapData["EndSpeed"][12][2] = {1391.,70}
	
	-- 赛道颜色
	tCrossServer_NewRacing_TrapData["Color"] = {}
	-- 1 绿色 2 红色 3 黄色 4 蓝色
	tCrossServer_NewRacing_TrapData["Color"][1 ] = {1,2,3,4}
	tCrossServer_NewRacing_TrapData["Color"][2 ] = {3,4,1,2}
	tCrossServer_NewRacing_TrapData["Color"][3 ] = {1,2,3,4}
	tCrossServer_NewRacing_TrapData["Color"][4 ] = {3,4,1,2}
	tCrossServer_NewRacing_TrapData["Color"][5 ] = {1,2,3,4}
	tCrossServer_NewRacing_TrapData["Color"][6 ] = {3,4,1,2}
	tCrossServer_NewRacing_TrapData["Color"][7 ] = {1,2,3,4}
	tCrossServer_NewRacing_TrapData["Color"][8 ] = {3,4,1,2}
	tCrossServer_NewRacing_TrapData["Color"][9 ] = {1,2,3,4}
	tCrossServer_NewRacing_TrapData["Color"][10] = {3,4,1,2}
	tCrossServer_NewRacing_TrapData["Color"][11] = {1,2,3,4}
	tCrossServer_NewRacing_TrapData["Color"][12] = {3,4,1,2}
	
-- 玩家进入区域随机
local tCrossServer_NewRacing_EnterPos = {}
	tCrossServer_NewRacing_EnterPos[1] = {}
	tCrossServer_NewRacing_EnterPos[1][1] = {137,1257}
	tCrossServer_NewRacing_EnterPos[1][2] = {165,1286}
	tCrossServer_NewRacing_EnterPos[2] = {}
	tCrossServer_NewRacing_EnterPos[2][1] = {251,1146}
	tCrossServer_NewRacing_EnterPos[2][2] = {279,1175}
	tCrossServer_NewRacing_EnterPos[3] = {}
	tCrossServer_NewRacing_EnterPos[3][1] = {363,1033}
	tCrossServer_NewRacing_EnterPos[3][2] = {391,1062}
	tCrossServer_NewRacing_EnterPos[4] = {}
	tCrossServer_NewRacing_EnterPos[4][1] = {474,921}
	tCrossServer_NewRacing_EnterPos[4][2] = {502,950}
	tCrossServer_NewRacing_EnterPos[5] = {}
	tCrossServer_NewRacing_EnterPos[5][1] = {585,811}
	tCrossServer_NewRacing_EnterPos[5][2] = {613,840}
	tCrossServer_NewRacing_EnterPos[6] = {}
	tCrossServer_NewRacing_EnterPos[6][1] = {698,696}
	tCrossServer_NewRacing_EnterPos[6][2] = {726,725}
	tCrossServer_NewRacing_EnterPos[7] = {}
	tCrossServer_NewRacing_EnterPos[7][1] = {808,587}
	tCrossServer_NewRacing_EnterPos[7][2] = {836,616}
	tCrossServer_NewRacing_EnterPos[8] = {}
	tCrossServer_NewRacing_EnterPos[8][1] = {921,472}
	tCrossServer_NewRacing_EnterPos[8][2] = {949,501}
	tCrossServer_NewRacing_EnterPos[9] = {}
	tCrossServer_NewRacing_EnterPos[9][1] = {1031,366}
	tCrossServer_NewRacing_EnterPos[9][2] = {1059,395}
	tCrossServer_NewRacing_EnterPos[10] = {}
	tCrossServer_NewRacing_EnterPos[10][1] = {1144,253}
	tCrossServer_NewRacing_EnterPos[10][2] = {1172,282}
	tCrossServer_NewRacing_EnterPos[11] = {}
	tCrossServer_NewRacing_EnterPos[11][1] = {1254,140}
	tCrossServer_NewRacing_EnterPos[11][2] = {1282,169}
	tCrossServer_NewRacing_EnterPos[12] = {}
	tCrossServer_NewRacing_EnterPos[12][1] = {1369,26}
	tCrossServer_NewRacing_EnterPos[12][2] = {1397,55}
	
-- 随机道具
local tCrossServer_NewRacing_Random = {}
	-- 随机金币积分
	tCrossServer_NewRacing_Random["Score"] = {}
	tCrossServer_NewRacing_Random["Score"][1] = {}
	tCrossServer_NewRacing_Random["Score"][1]["ItemChanceSum"] = 9000
	tCrossServer_NewRacing_Random["Score"][1][1] = {}
	tCrossServer_NewRacing_Random["Score"][1][1]["RandomItemChanceType"] = 2
	tCrossServer_NewRacing_Random["Score"][1][1]["ItemChance"] = 1000
	tCrossServer_NewRacing_Random["Score"][1][1]["Item"] = 1
	tCrossServer_NewRacing_Random["Score"][1][2] = {}
	tCrossServer_NewRacing_Random["Score"][1][2]["RandomItemChanceType"] = 2
	tCrossServer_NewRacing_Random["Score"][1][2]["ItemChance"] = 1000
	tCrossServer_NewRacing_Random["Score"][1][2]["Item"] = 2
	tCrossServer_NewRacing_Random["Score"][1][3] = {}
	tCrossServer_NewRacing_Random["Score"][1][3]["RandomItemChanceType"] = 2
	tCrossServer_NewRacing_Random["Score"][1][3]["ItemChance"] = 1000
	tCrossServer_NewRacing_Random["Score"][1][3]["Item"] = 3
	tCrossServer_NewRacing_Random["Score"][1][4] = {}
	tCrossServer_NewRacing_Random["Score"][1][4]["RandomItemChanceType"] = 2
	tCrossServer_NewRacing_Random["Score"][1][4]["ItemChance"] = 1000
	tCrossServer_NewRacing_Random["Score"][1][4]["Item"] = 5
	tCrossServer_NewRacing_Random["Score"][1][5] = {}
	tCrossServer_NewRacing_Random["Score"][1][5]["RandomItemChanceType"] = 2
	tCrossServer_NewRacing_Random["Score"][1][5]["ItemChance"] = 1000
	tCrossServer_NewRacing_Random["Score"][1][5]["Item"] = 6
	tCrossServer_NewRacing_Random["Score"][1][6] = {}
	tCrossServer_NewRacing_Random["Score"][1][6]["RandomItemChanceType"] = 2
	tCrossServer_NewRacing_Random["Score"][1][6]["ItemChance"] = 1000
	tCrossServer_NewRacing_Random["Score"][1][6]["Item"] = 7
	tCrossServer_NewRacing_Random["Score"][1][7] = {}
	tCrossServer_NewRacing_Random["Score"][1][7]["RandomItemChanceType"] = 2
	tCrossServer_NewRacing_Random["Score"][1][7]["ItemChance"] = 1000
	tCrossServer_NewRacing_Random["Score"][1][7]["Item"] = 8
	tCrossServer_NewRacing_Random["Score"][1][8] = {}
	tCrossServer_NewRacing_Random["Score"][1][8]["RandomItemChanceType"] = 2
	tCrossServer_NewRacing_Random["Score"][1][8]["ItemChance"] = 1000
	tCrossServer_NewRacing_Random["Score"][1][8]["Item"] = 9
	tCrossServer_NewRacing_Random["Score"][1][9] = {}
	tCrossServer_NewRacing_Random["Score"][1][9]["RandomItemChanceType"] = 2
	tCrossServer_NewRacing_Random["Score"][1][9]["ItemChance"] = 1000
	tCrossServer_NewRacing_Random["Score"][1][9]["Item"] = 10
	
--------------------------------------逻辑部分-------------------------------------------
-- 获取掩码值
function CrossServer_NewRacing_GetStcValue(nIndex,nUserId)
	local nEvent = tCrossServer_NewRacing_Stc[nIndex]["EventType"]
	local nType = tCrossServer_NewRacing_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function CrossServer_NewRacing_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tCrossServer_NewRacing_Stc[nIndex]["EventType"]
	local nType = tCrossServer_NewRacing_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 增加掩码值
function CrossServer_NewRacing_AddStcValue(nIndex,nData,nUserId)
	local nEvent = tCrossServer_NewRacing_Stc[nIndex]["EventType"]
	local nType = tCrossServer_NewRacing_Stc[nIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天重置
function CrossServer_NewRacing_ClearStcInterval(nUserId)
	for i,v in pairs(tCrossServer_NewRacing_Stc) do
		local nEvent = v["EventType"]
		local nType = v["DataType"]
	
		if v["Clear"] ~= nil and Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
	end
end

-- 寻路
function CrossServer_NewRacing_Goto(nIndex)
	local nPosX = tCrossServer_NewRacing_FindWay[nIndex]["PosX"]
	local nPosY = tCrossServer_NewRacing_FindWay[nIndex]["PosY"]
	local nMapId = tCrossServer_NewRacing_FindWay[nIndex]["MapId"]
	local nNpcId = tCrossServer_NewRacing_FindWay[nIndex]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 检测玩家马术或装备马否
function CrossServer_NewRacing_ChkRacingQualification(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	-- 马术
	local nMagicType = tCrossServer_NewRacing_Count["MagicType"]
	-- 马装备位
	local nEquip = tCrossServer_NewRacing_Count["Equip"]
	local nNotHave = 0
	
	-- 无马术
	if not Magic_ChkType(nMagicType,nNowUserId) then
		nNotHave = nNotHave + 1
	end
	
	-- 无骑马匹
	if not Sys_ChkEquip(nEquip,nNowUserId) then
		nNotHave = nNotHave + 2
	end
	
	return nNotHave
end

-- 玩家传送
function CrossServer_NewRacing_TransPos(nIndex,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nMapId = tCrossServer_NewRacing_ChgMap[nIndex]["MapId"]
	local nPosX = tCrossServer_NewRacing_ChgMap[nIndex]["PosX"]
	local nPosY = tCrossServer_NewRacing_ChgMap[nIndex]["PosY"]
	local nRange = tCrossServer_NewRacing_ChgMap[nIndex]["Range"]
	local nEvent = tCrossServer_NewRacing_ChgMap[nIndex]["Effect"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,0,nNowUserId)
	
	local sEffectObj = tCrossServer_NewRacing_Effect[nEvent]["EffectObj"]
	local sEffect = tCrossServer_NewRacing_Effect[nEvent]["Effect"]
	User_EffectAdd(sEffectObj,sEffect,nNowUserId)
end

-- 离开跨服
function CrossServer_NewRacing_LeaveCross(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	Sys_ExitOS(nUserId)
	CrossServer_NewRacing_RaceDelEffect(nNowUserId)
end

-- 进入随机区域
function CrossServer_NewRacing_NewTransPos(nIndex,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nMapId = tCrossServer_NewRacing_ChgMap[nIndex]["MapId"]
	local nPosIndex = math.random(1,12)
	local nOtherIndex = math.random(1,2)
	local nPosX = tCrossServer_NewRacing_EnterPos[nPosIndex][nOtherIndex][1]
	local nPosY = tCrossServer_NewRacing_EnterPos[nPosIndex][nOtherIndex][2]
	local nRange = tCrossServer_NewRacing_ChgMap[nIndex]["Range"]
	local nEvent = tCrossServer_NewRacing_ChgMap[nIndex]["Effect"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,0,nNowUserId)
	
	local sEffectObj = tCrossServer_NewRacing_Effect[nEvent]["EffectObj"]
	local sEffect = tCrossServer_NewRacing_Effect[nEvent]["Effect"]
	User_EffectAdd(sEffectObj,sEffect,nNowUserId)
end

-- 初始化陷阱表
function CrossServer_NewRacing_InitTrapPos()
	-- 初始化个人陷阱
	if #tCrossServer_NewRacing_TrapData["Personal"]["RaceData"] ~= 0 then
		return
	end
	local tRace = tCrossServer_NewRacing_TrapData["Personal"]["Race"]
	local nInAdd = tRace["InAdd"]
	local nOutAdd = tRace["OutAdd"]
	local nOtherAdd = tRace["OtherAdd"]
	for i=1,12 do
		tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][i] = {}
		for j=1,4 do
			tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][i][j] = {}
			for z=1,19 do
				local nPosX,nPosY = 0,0
				if i == 1 then
					if z == 1 then
						nPosX = tRace[j]["StartPosX"]
						nPosY = tRace[j]["StartPosY"]
					else
						nPosX = tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][i][j][z-1][1][1] + nOutAdd
						nPosY = tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][i][j][z-1][1][2] - nOutAdd
					end
				else
					nPosX = tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][i-1][j][z][1][1] + nOtherAdd
					nPosY = tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][i-1][j][z][1][2] - nOtherAdd
				end
				tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][i][j][z] = {}
				tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][i][j][z][1] = {nPosX,nPosY}
				tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][i][j][z][2] = {nPosX+nInAdd,nPosY}
				tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][i][j][z][3] = {nPosX+nInAdd,nPosY+nInAdd}
				tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][i][j][z][4] = {nPosX+nInAdd*2,nPosY+nInAdd}
			end
		end
	end
end

-- 玩家光效
function CrossServer_NewRacing_RaceEffect(sIndex,nIndex,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local sEffectObj = tCrossServer_NewRacing_Effect[sIndex]["EffectObj"]
	local sEffect = tCrossServer_NewRacing_Effect[sIndex][nIndex]
	User_EffectAdd(sEffectObj,sEffect,nNowUserId)
end

-- 删除光效
function CrossServer_NewRacing_RaceDelEffect(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local sEffectObj = tCrossServer_NewRacing_Effect["Race"]["EffectObj"]
	for i,v in pairs(tCrossServer_NewRacing_Effect["Race"]) do
		User_EffectDel(sEffectObj,v,nNowUserId)
	end
end
---------------------------------------------------马惊涛 22506-------------------------------------------
-- 进入赛场
function CrossServer_NewRacing_EnterRacing(nNpcId)
	if not Sys_ChkFullTime(tCrossServer_NewRacing_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 马术马匹条件判断
	local nNotHave = CrossServer_NewRacing_ChkRacingQualification()
	if nNotHave > 0 then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 每日23:55后
	if not Sys_ChkDayTime(tCrossServer_NewRacing_Count["EnterTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 隔天清掩码
	CrossServer_NewRacing_ClearStcInterval()
	-- 积分清零
	CrossServer_NewRacing_SetStcValue(4,0)
	
	--第一次打log(每次进入都打)
	Sys_SaveActionFestivalLog(tCrossServer_NewRacing_Log["EnterRacing"])
	
	-- 参加打emoneylog人数
	local nEvent = tCrossServer_NewRacing_Stc[2]["EventType"]
	local nType = tCrossServer_NewRacing_Stc[2]["DataType"]
	if Task_ChkStatistic(nEvent,nType) then
		Sys_SaveEmoneyBuy(tCrossServer_NewRacing_EMoneyLog[nNpcId])
	end
	
	-- 添加随机光效
	CrossServer_NewRacing_RaceDelEffect()
	local nIndex = math.random(1,4)
	local sIndex = tCrossServer_NewRacing_Count["RaceIndex"] 
	CrossServer_NewRacing_RaceEffect(sIndex,nIndex)
	CrossServer_NewRacing_SetStcValue(3,nIndex)
	
	-- 进入赛场
	CrossServer_NewRacing_NewTransPos(1)
	
	-- 系统提示
	User_TalkChannel2005(tCrossServer_NewRacing_Text["EnterRacing"])
	User_TalkChannel2005(tCrossServer_NewRacing_Text["EnterMap"][nIndex])
	Sys_MsgBox(tCrossServer_NewRacing_Text["EnterMap"][nIndex])
	local nTime = tCrossServer_NewRacing_Count["TimeDelay"]
	--倒计时一分钟
	local nUserId = Get_UserId()
	User_SetTimer(nTime,"CrossServer_NewRacing_LeaveMap",1,nUserId)
end

-- 倒计时结束
function CrossServer_NewRacing_LeaveMap(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	
	-- 删除光效
	CrossServer_NewRacing_RaceDelEffect(nUserId)
	-- 今日未获得过参与奖
	local nUserScore = CrossServer_NewRacing_GetStcValue(4,nNowUserId)
	local nHighScore = CrossServer_NewRacing_GetStcValue(2,nNowUserId)
	-- 是否已领
	local nHaveReward = CrossServer_NewRacing_GetStcValue(1,nNowUserId)
	local nGoalScore = tCrossServer_NewRacing_Count["GoalScore"]
	local sNeedText = ""
	if nHaveReward >= 1 then
		if nUserScore < nHighScore then
			sNeedText = tCrossServer_NewRacing_Text["Finish"][4]
		else
			sNeedText = tCrossServer_NewRacing_Text["Finish"][2]
		end
	else
		if nUserScore < nGoalScore then
			sNeedText = tCrossServer_NewRacing_Text["Finish"][3]
		else
			sNeedText = tCrossServer_NewRacing_Text["Finish"][1]
		end
	end
	local sShowText = string.format(sNeedText,nUserScore)
	User_TalkChannel2005(sShowText,nNowUserId)
	-- 传回双龙城
	CrossServer_NewRacing_TransPos(2,nNowUserId)
end

-- nIndex 今日 1 昨日 2
function CrossServer_NewRacing_RankingText(nNpcId,nIndex,nUserId)
	if tCrossServer_NewRacing_RankingData == nil then
		tCrossServer_NewRacing_RankingData = {}
	end
	if tCrossServer_NewRacing_BeforeData == nil then
		tCrossServer_NewRacing_BeforeData = {}
	end
	tCrossServer_NewRacing_RankingData = RankingFunc_GetNowData(nCrossServer_NewRacing_Index) or {}
	tCrossServer_NewRacing_BeforeData = RankingFunc_GetBeforeData(nCrossServer_NewRacing_Index) or {}
	local nNowUserId = nUserId or Get_UserId()
	local tData = tCrossServer_NewRacing_RankingData
	if nIndex == 2 then
		tData = tCrossServer_NewRacing_BeforeData
	end
	-- 对白文字设置
	for i,v in pairs(tCrossServer_NewRacing_Count["Ranking"][nIndex]) do
			local sBasicText = tCrossServer_NewRacing_Text[nNpcId]["Text"..i]
			local sRanking = tCrossServer_NewRacing_Text[nNpcId]["Ranking"]
			local sLeft = string.format(sRanking,i)
			local sLast = tCrossServer_NewRacing_Text[nNpcId]["Reward"][i]
			local sMiddle = ""
			local sRight = ""
			if tData[i] ~= nil and tonumber(tData[i]["UserId"]) > 0 then
				sMiddle = tostring(tData[i]["Score"])
				sRight =  tData[i]["UserName"]
			else
				sMiddle ="0"
				sRight = tCrossServer_NewRacing_Text[nNpcId]["NullUser"]
			end
			local nMiddle = 14
			local nRight = 74 - Sys_GetStrLen(sLast) - Sys_GetStrLen(sMiddle)
			local nLast = 30 - Sys_GetStrLen(sMiddle)
			
			if i >= 10 then
				nMiddle = nMiddle - 1
				nRight = nRight - 1
				nLast = nLast - 1
			end
			if i == 1 then
				nRight = nRight - 5
			end
			if i == 2 then
				nRight = nRight - 3
			end
			if i == 3 then
				nRight = nRight - 2
			end
			
			local sText = Sys_Alignment(sLeft,1,sMiddle,nMiddle,sLast,nLast,sRight,nRight)
			tNpcGossip[nNpcId]["Text"..v] = string.format(tCrossServer_NewRacing_Text[nNpcId]["Text"..v],sText)
	end
end

-- 赛马夺金榜
function CrossServer_NewRacing_ShowDialog(nNpcId)
	if not Sys_ChkFullTime(tCrossServer_NewRacing_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 显示今日排名
	CrossServer_NewRacing_RankingText(nNpcId,1)
	
	-- 玩家积分
	local sText = tCrossServer_NewRacing_Text[nNpcId]["Text237"]
	local nUserScore = CrossServer_NewRacing_GetStcValue(2,nNowUserId)
	tNpcGossip[nNpcId]["Text237"] = string.format(sText,nUserScore)
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 昨日赛马夺金榜
function CrossServer_NewRacing_ShowLastDialog(nNpcId)
	if not Sys_ChkFullTime(tCrossServer_NewRacing_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 显示今日排名
	CrossServer_NewRacing_RankingText(nNpcId,2)
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

-- 领取参与奖
function CrossServer_NewRacing_JoinReward(nNpcId)
	if not Sys_ChkFullTime(tCrossServer_NewRacing_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 隔天清掩码
	CrossServer_NewRacing_ClearStcInterval()
	
	-- 玩家未达到资格
	local nUserScore = CrossServer_NewRacing_GetStcValue(2)
	if nUserScore < tCrossServer_NewRacing_Count["GoalScore"] then 
		return
	end
	
	-- 玩家今日已领取，NPC对白
	local nHaveReward = CrossServer_NewRacing_GetStcValue(1)
	if nHaveReward >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	-- 背包满
	local tReward = tCrossServer_NewRacing_GiveReward[1]
	local nSpaceNum =RewardTemplate_GetRewardSpace(tReward)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	
	-- 玩家点击时已过今日，NPC对白
	CrossServer_NewRacing_AddStcValue(1,1)
	
	RewardTemplate_UseItem(tReward)
end
---------------------------------------------------季如风 22507-------------------------------------------
-- 1、进入赛场
function CrossServer_NewRacing_EnterCrossRacing(nNpcId)
	if not Sys_ChkFullTime(tCrossServer_NewRacing_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nTaskId = tCrossServer_NewRacing_Count["Taskid"]
	-- 任务数达到20个
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		else
			-- 参加打emoneylog人数
			Sys_SaveEmoneyBuy(tCrossServer_NewRacing_EMoneyLog[nNpcId])
		end
	end
	
	-- 今日是否参加
	if Task_DetailInterval(nTaskId,1,4) then
		Task_SetTaskDetailData6(nTaskId,0)
	end
	local nDetailData = Get_TaskDetailData6(nTaskId)
	if nDetailData >= 1 then
		Sys_MsgBox(tCrossServer_NewRacing_Text["AllJoinIn"])
		return
	end
	
	-- 非比赛时间不让玩家进入地图
	if not Sys_ChkDayTime(tCrossServer_NewRacing_Count["CrossTime"][1]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 玩家随机光效
	CrossServer_NewRacing_RaceDelEffect()
	local nIndex = math.random(1,4)
	local sIndex = tCrossServer_NewRacing_Count["RaceIndex"] 
	CrossServer_NewRacing_RaceEffect(sIndex,nIndex)
	
	
	local nUserId = Get_UserId()
	-- 设置玩家跨服掩码
	Task_SetTaskDetailData2(nTaskId,nIndex,nUserId)
	-- 记录点
	local nMapId = tCrossServer_NewRacing_ChgMap[2]["MapId"]
	local nCellx = tCrossServer_NewRacing_ChgMap[2]["PosX"]
	local nCelly = tCrossServer_NewRacing_ChgMap[2]["PosY"]
	User_RecordPoint(nMapId,nCellx,nCelly,nUserId)
	local nFrontServerId = Get_FrontierServerID()
	Sys_EnterServer(nFrontServerId,12,nUserId,38)
	User_TalkChannel2005(tCrossServer_NewRacing_Text["EnterCrossRacing"])
	User_TalkChannel2005(tCrossServer_NewRacing_Text["EnterMap"][nIndex])
	Sys_MsgBox(tCrossServer_NewRacing_Text["EnterMap"][nIndex])
end
---------------------------------------------------物品-------------------------------------------
-- 赛马夺金参与奖礼包
function CrossServer_NewRacing_UseItem(nItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tCrossServer_NewRacing_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tCrossServer_NewRacing_Text["OverDue"])
			local sLog = tCrossServer_NewRacing_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
 		end
		return
	end
	
	-- 打开礼包
	RewardTemplate_UseItemAndMsg(tCrossServer_NewRacing_Reward[nItemId])
end

---------------------------------------------------陷阱模块-------------------------------------------
function CrossServer_NewRacing_TrapFunc(nTrapId,nTrapType)
	-- 活动时间
	if not Sys_ChkFullTime(tCrossServer_NewRacing_Count["ActivityTime"]) then
		return
	end
	
	-- 生成新的陷阱
	if not CrossServer_NewRacing_NewRaceTrap(nTrapId,nTrapType) then
		return false
	end
	-- 根据type类型加积分
	local nScore = tCrossServer_NewRacing_Count["TrapScore"]
	if nTrapType == tCrossServer_NewRacing_Count["TrapType"] then
		local nFlag,tScore = Probabil_RandomAward(tCrossServer_NewRacing_Random["Score"],1)
		nScore = tScore[1]["tAward"][1]["Item"]
	end
	
	-- 给玩家加金币
	CrossServer_NewRacing_AddStcValue(4,nScore)
	local nUserScore = CrossServer_NewRacing_GetStcValue(4)
	-- 刷新赛马积分
	local nUserId = Get_UserId()
	local nLastRank = RankingFunc_GetUserInRank(nCrossServer_NewRacing_Index,nUserId)
	RankingFunc_SetInfo(nCrossServer_NewRacing_Index,nUserScore,nUserId)
	tCrossServer_NewRacing_RankingData = RankingFunc_GetNowData(nCrossServer_NewRacing_Index)
	local nRank = RankingFunc_GetUserInRank(nCrossServer_NewRacing_Index,nUserId)
	if nLastRank ~= nRank then
		local sText = tCrossServer_NewRacing_Text["RankingChange"]
		local sUserName =Get_UserName(nUserId)
		Sys_SystemBroadcast(string.format(sText,sUserName,nRank))
	end
	local nHaveScore = CrossServer_NewRacing_GetStcValue(2)
	if nHaveScore < nUserScore then
		CrossServer_NewRacing_SetStcValue(2,nUserScore)
	end
	
	-- 系统提示
	local sText = tCrossServer_NewRacing_Text["AddScore"]
	if nUserScore%10 == 0 then
		User_TalkChannel2005(string.format(sText,nScore,nUserScore))
	end
	-- 光效
	local sIndex = tCrossServer_NewRacing_Count["ScoreIndex"]
	CrossServer_NewRacing_RaceEffect(sIndex,nScore)
end

function CrossServer_NewRacing_NewRaceTrap(nTrapId,nTrapType)
	-- 删除当前陷阱
	if not Trap_EraseMapTrap(nTrapId) then
		return false
	end
	
	local nTrapIndex = 0
	-- 10%概率
	local nStartNum = tCrossServer_NewRacing_Count["MinPro"]
	local nEndNum = tCrossServer_NewRacing_Count["MaxPro"]
	if nTrapType == tCrossServer_NewRacing_Count["TrapType"] then
		return true
	else
		if Sys_Random(nStartNum,nEndNum) then
			nTrapIndex = 4
		end
	end
	
	local nPosX = Get_TrapPosX(nTrapId)
	local nPosY = Get_TrapPosY(nTrapId)
	-- 第几个赛道 对应颜色赛道 对应第几个坐标 对应4个坐标中的哪一个
	local nRace,nColor,nIndex,nNum = 0,0,0,0
	for a,b in pairs(tCrossServer_NewRacing_TrapData["Personal"]["RaceData"]) do
		for c,d in pairs(b) do
			for g,h in pairs(d) do
				for j,k in pairs(h) do
					if k[1] == nPosX and k[2] == nPosY then
						nRace,nColor,nIndex,nNum = a,c,g,j
					end
				end
			end
		end
	end
	
	if nRace > 6 then
		nRace = nRace - 6
	else
		nRace = nRace + 6
	end
	local nLasrtPosX= tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][nRace][nColor][nIndex][nNum][1]
	local nLasrtPosY= tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][nRace][nColor][nIndex][nNum][2]
	CrossServer_NewRacing_CreateTrap(1,nLasrtPosX,nLasrtPosY)
	if nTrapIndex == 4 then
		CrossServer_NewRacing_CreateTrap(nTrapIndex,nLasrtPosX+1,nLasrtPosY-1)
	end
	return true
end

-- 加速陷阱
function CrossServer_NewRacing_NewTrapFunc(nTrapId,nTrapType)
	-- 取得玩家当前踩的赛道
	local nPosX = Get_TrapPosX(nTrapId)
	local nPosY = Get_TrapPosY(nTrapId)
	local nRaceColor = CrossServer_NewRacing_GetRaceColor(1,nPosX,nPosY)
	if nRaceColor == 0 then
		nRaceColor = CrossServer_NewRacing_GetRaceColor(2,nPosX,nPosY)
	end
	
	-- 获取玩家随机的陷阱
	local nUserColor = CrossServer_NewRacing_GetStcValue(3)
	if nUserColor ~= nRaceColor then
		return
	end
	
	-- 重置玩家光效
	CrossServer_NewRacing_RaceDelEffect()
	local nIndex = math.random(1,4)
	local sIndex = tCrossServer_NewRacing_Count["RaceIndex"] 
	CrossServer_NewRacing_RaceEffect(sIndex,nIndex)
	CrossServer_NewRacing_SetStcValue(3,nIndex)
	-- 加速
	CrossServer_NewRacing_AddSpeedStatus(1)
	User_TalkChannel2005(tCrossServer_NewRacing_Text["EnterMap"][nIndex])
end

-- 获取玩家赛道颜色
function CrossServer_NewRacing_GetRaceColor(nIndex,nPosX,nPosY)
	local nRaceColor = 0
	if nIndex == 1 then
		tSpeed = tCrossServer_NewRacing_TrapData["Speed"]
	else
		tSpeed = tCrossServer_NewRacing_TrapData["EndSpeed"]
	end
	for i,v in pairs(tSpeed) do
		for a,b in pairs(v) do
			if nPosX == b[1] and nPosY == b[2] then
				nRaceColor = a
			end
		end
	end
	return nRaceColor
end

-- 玩家加状态
function CrossServer_NewRacing_AddSpeedStatus(nIndex,nNowUserId)
	local nStatus = tCrossServer_NewRacing_Status[1]["Status"]
	local nPower = tCrossServer_NewRacing_Status[1]["Power"]
	local nSecs = tCrossServer_NewRacing_Status[1]["Secs"]
	local nTimes = tCrossServer_NewRacing_Status[1]["Times"]
	local nRemainTime = tCrossServer_NewRacing_Status[1]["RemainTime"]
	local nEndTime = tCrossServer_NewRacing_Status[1]["EndTime"]

	local nUserId = nNowUserId or Get_UserId()
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,0,0,0,nUserId)
end

-- 加速陷阱
function CrossServer_NewRacing_CrossTrapFunc(nTrapId,nTrapType)
	-- 判断玩家踩陷阱时间
	local nTaskId = tCrossServer_NewRacing_Count["Taskid"]
	
	-- 取得玩家当前踩的赛道
	local nPosX = Get_TrapPosX(nTrapId)
	local nPosY = Get_TrapPosY(nTrapId)
	local nRaceColor = CrossServer_NewRacing_GetRaceColor(1,nPosX,nPosY)
	
	local nUserId = Get_UserId()
	-- 获取玩家随机的陷阱
	local nUserColor = Get_TaskDetailData2(nTaskId,nUserId)
	if nUserColor ~= nRaceColor then
		return
	end
	
	CrossServer_NewRacing_RaceDelEffect(nUserId)
	local nIndex = math.random(1,4)
	local sIndex = tCrossServer_NewRacing_Count["RaceIndex"]
	CrossServer_NewRacing_RaceEffect(sIndex,nIndex,nUserId)
	Task_SetTaskDetailData2(nTaskId,nIndex,nUserId)
	-- 加速
	CrossServer_NewRacing_AddSpeedStatus(1,nUserId)
	User_TalkChannel2005(tCrossServer_NewRacing_Text["EnterMap"][nIndex],nUserId)
end
--------------------------------------时间自检-------------------------------------------
function CrossServer_NewRacing_AllBroadcast()
	Sys_SystemBroadcast(tCrossServer_NewRacing_Text["SysBroadBefor"])
end

function CrossServer_NewRacing_AllBroadcastAndBox()
	Sys_SystemBroadcast(tCrossServer_NewRacing_Text["SysBroadOnTime"])
end

-- 对象筛选
function CrossServer_NewRacing_InviteFilter()
	Sys_DelInvite(6)
	return Sys_InviteFilter(6,"level >= 1")
end

function CrossServer_NewRacing_Invite()
	-- 全服邀请
	local nMapId = tCrossServer_NewRacing_Count["MapId"]
	if CrossServer_NewRacing_InviteFilter() then
		local nEnter = tCrossServer_NewRacing_Count["InviteText"]
		local nEnd = tCrossServer_NewRacing_Count["InviteEnd"]
		Sys_InviteTrans(nMapId,tCrossServer_NewRacing_Count["Invite_Pos"],nEnter,nEnd,6,30)
	end
end

-- 准备开始比赛
function CrossServer_NewRacing_StartGame()
	CrossServer_NewRacing_Invite()
	-- 启动赛马
	local nMapId = tCrossServer_NewRacing_TrapInfo[3]["MapId"]
	Sys_HorseRaceBegin(tCrossServer_NewRacing_Count["Duration"],tCrossServer_NewRacing_Count["CloseSecs"],nMapId)
	-- 倒计时提示
	Map_UserExeFunc(nMapId,-1,"CrossServer_NewRacing_Start")
end

-- 1分钟倒计时
function CrossServer_NewRacing_Start(nUserId)
	User_SetTimer(60,nil,1,nUserId)
end

-- 比赛结束
function CrossServer_NewRacing_EndGame()
	local nMapId = tCrossServer_NewRacing_TrapInfo[3]["MapId"]
	Sys_FrontierHorseRaceOver(nMapId)
end
-------------------------------------服务器启动-------------------------------------------
-- 刷新陷阱数据
function CrossServer_NewRacing_RefreshTrap()
	if not Sys_ChkFullTime(tCrossServer_NewRacing_Count["ActivityTime"]) and not CommonFunc_GetBeforeActivityTime(tCrossServer_NewRacing_Count["ActivityTime"]) then
		return
	end
	
	-- 初始化坐标
	CrossServer_NewRacing_InitTrapPos()
	CrossServer_NewRacing_InitSpeedTrap()
	-- 终点坐标
	CrossServer_NewRacing_InitEndPos()
	
	-- 大金币陷阱
	local nNewTrapType = tCrossServer_NewRacing_TrapInfo[4]["TrapType"]
	local nNewMapId = tCrossServer_NewRacing_TrapInfo[4]["MapId"]
	-- 删除重新建
	Trap_DelMapTrap(nNewMapId,nNewTrapType)
	-- 个人赛金币陷阱数据
	local nTrapType = tCrossServer_NewRacing_TrapInfo[1]["TrapType"]
	local nMapId = tCrossServer_NewRacing_TrapInfo[1]["MapId"]
	-- 删除重新建
	Trap_DelMapTrap(nMapId,nTrapType)
	
	
	for a,b in pairs(tCrossServer_NewRacing_TrapData["Personal"]["RaceData"]) do
		if a <= 6 then
			for c,d in pairs(b) do
				for g,h in pairs(d) do
					for j,k in pairs(h) do
						local nRandom = math.random(1,2)
						local nPosX,nPosY=0,0
						if nRandom == 1 then
							nPosX,nPosY=k[1],k[2]
						else
							nPosX = tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][a+6][c][g][j][1]
							nPosY = tCrossServer_NewRacing_TrapData["Personal"]["RaceData"][a+6][c][g][j][2]
						end
						
						CrossServer_NewRacing_CreateTrap(1,nPosX,nPosY)
					end
				end
			end
		end
	end
end

-- 创建陷阱
function CrossServer_NewRacing_CreateTrap(nIndex,nPosX,nPosY)
	local nTrapType = tCrossServer_NewRacing_TrapInfo[nIndex]["TrapType"]
	local nMapId = tCrossServer_NewRacing_TrapInfo[nIndex]["MapId"]
	local nLook = tCrossServer_NewRacing_TrapInfo[nIndex]["Look"]
	local nPosCX = tCrossServer_NewRacing_TrapInfo[nIndex]["PosCX"]
	local nPosCY = tCrossServer_NewRacing_TrapInfo[nIndex]["PosCY"]
	Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,nPosCX,nPosCY)
end

-- 刷新加速陷阱
function CrossServer_NewRacing_InitSpeedTrap()
	for j=2,3 do
		local nTrapType = tCrossServer_NewRacing_TrapInfo[j]["TrapType"]
		local nMapId = tCrossServer_NewRacing_TrapInfo[j]["MapId"]
		-- 删除重新建
		Trap_DelMapTrap(nMapId,nTrapType)
	end
	
	for i,v in pairs(tCrossServer_NewRacing_TrapData["Speed"]) do
		for a,b in pairs(v) do
			local nPosX = b[1]
			local nPosY = b[2]
			CrossServer_NewRacing_CreateTrap(2,nPosX,nPosY)
			CrossServer_NewRacing_CreateTrap(3,nPosX,nPosY)
		end
	end
	
	for g,h in pairs(tCrossServer_NewRacing_TrapData["EndSpeed"]) do
		for j,k in pairs(h) do
			local nPosX = k[1]
			local nPosY = k[2]
			CrossServer_NewRacing_CreateTrap(2,nPosX,nPosY)
		end
	end
end

-- 终点坐标
function CrossServer_NewRacing_InitEndPos()
	local nTrapType = tCrossServer_NewRacing_TrapInfo[5]["TrapType"]
	local nMapId = tCrossServer_NewRacing_TrapInfo[5]["MapId"]
	-- 删除重新建
	Trap_DelMapTrap(nMapId,nTrapType)
	
	local nStartX = tCrossServer_NewRacing_TrapInfo[5]["PosX"]
	local nStartY = tCrossServer_NewRacing_TrapInfo[5]["PosY"]
	for i=1,23 do
		nStartX = nStartX + 2
		nStartY = nStartY + 2
		CrossServer_NewRacing_CreateTrap(5,nStartX,nStartY)
	end
	
end
--------------------------------------邮件领奖
-- 个人赛
function CrossServer_NewRacing_MailReward(nIndex)
	local nRealIndex = nIndex
	if nIndex >= 4 then
		nRealIndex = 4
	end
	local tReward = CommonFunc_Copy(tCrossServer_NewRacing_GiveReward["MailReward"][nRealIndex])
	local sLogStep = tCrossServer_NewRacing_GiveReward["MailReward"][1]["LogStep"]
	tReward["LogStep"] = string.format(sLogStep,nIndex)
	RewardTemplate_UseItemAndMsg(tReward)
end

-- 跨服赛
function CrossServer_NewRacing_RaceMailReward(nIndex)
	local nRealIndex = nIndex
	if nIndex >= 4 and nIndex <= 10 then
		nRealIndex = 4
	end
	if nIndex >= 11 and nIndex <= 100 then
		nRealIndex = 5
	end
	local tReward = CommonFunc_Copy(tCrossServer_NewRacing_GiveReward["RaceMailReward"][nRealIndex])
	local sLogStep = tCrossServer_NewRacing_GiveReward["RaceMailReward"][1]["LogStep"]
	tReward["LogStep"] = string.format(sLogStep,nIndex)
	RewardTemplate_UseItemAndMsg(tReward)
end

--------------------------------------跨服排名奖励
function CrossServer_NewRacing_RaceAward(nUserId,nRank)
	local sContent = tCrossServer_NewRacing_Text["CrossMail"]["Content"]
	local sLastContent = string.format(sContent,nRank)
	local sSender = tCrossServer_NewRacing_Text["CrossMail"]["Sender"]
	local sTitle = tCrossServer_NewRacing_Text["CrossMail"]["Title"]
	
	if nRank >= 11  and nRank <= 100 then
		local nActionId = tCrossServer_NewRacing_MailAction[11]
		Sys_SendMail(nUserId,0,0,nActionId,0,0,sSender,sTitle,sLastContent)
	elseif nRank < 11 then
		local nActionId = tCrossServer_NewRacing_MailAction[nRank]
		Sys_SendMail(nUserId,0,0,nActionId,0,0,sSender,sTitle,sLastContent)
		local sIndex = tCrossServer_NewRacing_Count["RankIndex"]
		CrossServer_NewRacing_RaceEffect(sIndex,nRank,nUserId)
		if nRank <= 3 then
			local sUserName = Get_UserName(nUserId)
			local sText = tCrossServer_NewRacing_Text[nRank]
			Sys_SystemBroadcastToOS(string.format(sText,sUserName))
		end
	end
end

function CrossServer_NewRacing_RideArriveTerminal(nUserId)
	local nTaskId = tCrossServer_NewRacing_Count["Taskid"]
	Task_SetTaskDetailData6(nTaskId,1,nUserId)
	CrossServer_NewRacing_RaceDelEffect(nUserId)
	
	if Sys_ChkDayTime(tCrossServer_NewRacing_Count["CrossTime"][3]) then
		Sys_SaveActionFestivalLog(tCrossServer_NewRacing_Log["EnterCrossRacingOne"],nUserId)
	end
	-- if Sys_ChkDayTime(tCrossServer_NewRacing_Count["CrossTime"][4]) then
		-- Sys_SaveActionFestivalLog(tCrossServer_NewRacing_Log["EnterCrossRacingTwo"])
	-- end
end

-- 定义邮件文字
function CrossServer_NewRacing_InitMailText(nIndex)
	-- 特殊处理
	for i,v in pairs(tRankingFunc_Info[nIndex]["Mail"]["Reward"]) do
		local sContent = v["Content"] or tRankingFunc_Constant["Content"]
		local sNeedText = tCrossServer_NewRacing_Text["Mail"]["AddContent"]
		local sFinalData = os.date(sNeedText,os.time()-86400)
		v["Content"] = string.format(sContent,sFinalData,i)
	end
end
--------------------------------------NPC模块-------------------------------------------
-- 【赛马夺金】马惊涛
tNpcFace[5930] = 1177
tNpcGossip[22506] = tNpcGossip[22506] or DefaultNpc:new{}
tNpcGossip[22506]["OptionHidden"] = 1
tNpcGossip[22506]["DialogueText"] = tCrossServer_NewRacing_Text[22506]
-- 活动前
tNpcGossip[22506]["Text1-1"] = {111,112,113,114}
tNpcGossip[22506]["tOption1-1"] = {111}
tNpcGossip[22506]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tCrossServer_NewRacing_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[22506]["Text1-2"] = {121}
tNpcGossip[22506]["tOption1-2"] = {121}
tNpcGossip[22506]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tCrossServer_NewRacing_Count["ActivityTime"])
end

-- 活动中
-- 【条件未到】马匹和骑术
tNpcGossip[22506]["Text1-3"] = {111,112,113,114}
tNpcGossip[22506]["tOption1-3"] = {131}
tNpcGossip[22506]["ChkFunc1-3"] = function ()
	CrossServer_NewRacing_InitTrapPos()
	local nNotHave = CrossServer_NewRacing_ChkRacingQualification()
	if nNotHave == 0 then
		return false
	end
	local sText = ""
	if nNotHave == 3 then
		-- 无马匹且未学骑术
		sText = tCrossServer_NewRacing_Text[22506]["Option131"]
	elseif nNotHave == 2 then
		-- 获得马匹后再来
		sText = tCrossServer_NewRacing_Text[22506]["Option132"]
	else
		-- 学会骑术后再来
		sText = tCrossServer_NewRacing_Text[22506]["Option133"]
	end
	tNpcGossip[22506]["Option131"] = sText
	return true
end

-- 【条件达到】
tNpcGossip[22506]["Text1-4"] = {141,142,143,144}
tNpcGossip[22506]["tOption1-4"] = {141,142,143,144}
tNpcGossip[22506]["ChkFunc1-4"] = function ()
	-- 判断参与奖领取
	return true
end
-- 1、进入赛场
tNpcGossip[22506]["OptionFunc141"]="CrossServer_NewRacing_EnterRacing</N>22506"
-- 2、赛马夺金榜
tNpcGossip[22506]["OptionFunc142"]="CrossServer_NewRacing_ShowDialog</N>22506"
-- 3、赛马夺金规则
tNpcGossip[22506]["OptionPoint143"]="3-1"
-- 4、领取参与奖（今日已领取）  ===（当日积分第一次达到100，显示此选项，已领取则显示括号中文字）
tNpcGossip[22506]["OptionChkFunc144"] = function()
	-- 隔天清掩码
	CrossServer_NewRacing_ClearStcInterval()
	-- 玩家积分
	local nUserScore = CrossServer_NewRacing_GetStcValue(2)
	-- 是否已领
	local nHaveReward = CrossServer_NewRacing_GetStcValue(1)
	if nUserScore >= tCrossServer_NewRacing_Count["GoalScore"] then 
		if nHaveReward >= 1 then
			tNpcGossip[22506]["Option144"] = tCrossServer_NewRacing_Text[22506]["Option1440"]
		else
			tNpcGossip[22506]["Option144"] = tCrossServer_NewRacing_Text[22506]["Option1441"]
		end
	else
		return false
	end
	return true
end
tNpcGossip[22506]["OptionFunc144"]="CrossServer_NewRacing_JoinReward</N>22506"

-- 【接1，每日23:55后，NPC对白】
tNpcGossip[22506]["Text2-1"] = {211}
tNpcGossip[22506]["tOption2-1"] = {211}

-- 【接2，NPC对白】
tNpcGossip[22506]["Text2-2"] = {221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237}
tNpcGossip[22506]["tOption2-2"] = {221,222}
-- 2-1、昨日赛马夺金榜  ==（活动首日屏蔽此对白）
tNpcGossip[22506]["OptionChkFunc221"] = function()
	if Sys_ChkFullTime(tCrossServer_NewRacing_Count["FirstTime"]) then
		return false
	end
	
	return true
end
tNpcGossip[22506]["OptionFunc221"]="CrossServer_NewRacing_ShowLastDialog</N>22506"
-- 2-2、我明白了

-- 【接2-1，NPC对白】
tNpcGossip[22506]["Text2-4"] = {241,242,243,244,245,246,247,248,249,250,251,252,253,254,255}
tNpcGossip[22506]["tOption2-4"] = {241}

-- 【接3，NPC对白】
tNpcGossip[22506]["Text3-1"] = {311,312,313,314,315,316,317,318,319,320,321}
tNpcGossip[22506]["tOption3-1"] = {311}

-- 【接4，玩家今日已领取，NPC对白】
tNpcGossip[22506]["Text3-3"] = {331}
tNpcGossip[22506]["tOption3-3"] = {331}

-- 【接4，玩家今日未领取，背包满，NPC对白】
tNpcGossip[22506]["Text3-4"] = {341}
tNpcGossip[22506]["tOption3-4"] = {341}

-- 【接4，玩家点击时已过今日，NPC对白】
tNpcGossip[22506]["Text3-5"] = {351}
tNpcGossip[22506]["tOption3-5"] = {351}

-- 跨服竞速】季如风
tNpcFace[5931] = 166
tNpcGossip[22507] = tNpcGossip[22507] or DefaultNpc:new{}
tNpcGossip[22507]["OptionHidden"] = 1
tNpcGossip[22507]["DialogueText"] = tCrossServer_NewRacing_Text[22507]
-- 活动前
tNpcGossip[22507]["Text1-1"] = {111,112,113,114}
tNpcGossip[22507]["tOption1-1"] = {111}
tNpcGossip[22507]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tCrossServer_NewRacing_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[22507]["Text1-2"] = {121}
tNpcGossip[22507]["tOption1-2"] = {121}
tNpcGossip[22507]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tCrossServer_NewRacing_Count["ActivityTime"])
end

-- 活动中
-- 【条件未到】
tNpcGossip[22507]["Text1-3"] = {111,112,113,114}
tNpcGossip[22507]["tOption1-3"] = {131}
tNpcGossip[22507]["ChkFunc1-3"] = function ()
	local nNotHave = CrossServer_NewRacing_ChkRacingQualification()
	if nNotHave == 0 then
		return false
	end
	local sText = ""
	if nNotHave == 3 then
		-- 无马匹且未学骑术
		sText = tCrossServer_NewRacing_Text[22507]["Option131"]
	elseif nNotHave == 2 then
		-- 获得马匹后再来
		sText = tCrossServer_NewRacing_Text[22507]["Option132"]
	else
		-- 学会骑术后再来
		sText = tCrossServer_NewRacing_Text[22507]["Option133"]
	end
	tNpcGossip[22507]["Option131"] = sText
	return true
end

-- 【条件达到，非活动时间】
tNpcGossip[22507]["Text1-4"] = {141,142,143,144}
tNpcGossip[22507]["tOption1-4"] = {141,142,143}
-- 1、进入赛场
tNpcGossip[22507]["OptionFunc141"]="CrossServer_NewRacing_EnterCrossRacing</N>22507"
tNpcGossip[22507]["OptionChkFunc141"] = function()
	-- 隔天清掩码
	local nTaskId = tCrossServer_NewRacing_Count["Taskid"]
	-- 任务数达到20个
	if not Task_ChkTaskDetail(nTaskId) then
		tNpcGossip[22507]["Option141"] = tCrossServer_NewRacing_Text[22507]["Option141"]
		return true
	end
	-- 今日是否参加
	if Task_ChkTaskDetail(nTaskId,nUserId) and Task_DetailInterval(nTaskId,1,4,nUserId) then
		Task_SetTaskDetailData6(nTaskId,0)
	end
	local nDetailData = Get_TaskDetailData6(nTaskId)
	if nDetailData >= 1 then
		tNpcGossip[22507]["Option141"] = tCrossServer_NewRacing_Text[22507]["Option1410"]
	else
		tNpcGossip[22507]["Option141"] = tCrossServer_NewRacing_Text[22507]["Option141"]
	end
	return true
end
-- 2、跨服竞速规则
tNpcGossip[22507]["OptionPoint142"]="2-2"
-- 赛马积分商店
tNpcGossip[22507]["OptionFunc143"]="User_OpenDialog</N>464"


-- 【接1，非比赛时间不让玩家进入地图，NPC对白】
tNpcGossip[22507]["Text2-1"] = {211}
tNpcGossip[22507]["tOption2-1"] = {211}

-- 【接2，NPC对白】
tNpcGossip[22507]["Text2-2"] = {221,222,223,224,225,226,227,228,2210,229}
tNpcGossip[22507]["tOption2-2"] = {221}

-- 22647,'季如风'
tNpcGossip[22647] = tNpcGossip[22507] 

-- -【传送】季如风   ===（竞速赛地图内）
tNpcFace[5931] = 166
tNpcGossip[22508] = tNpcGossip[22508] or DefaultNpc:new{}
tNpcGossip[22508]["OptionHidden"] = 1
tNpcGossip[22508]["DialogueText"] = tCrossServer_NewRacing_Text[22508] 
-- 活动中
tNpcGossip[22508]["Text1-1"] = {111,112,113,114,115,116,117,118,120,119}
tNpcGossip[22508]["tOption1-1"] = {111}
-- 离开赛马场  ==（返回双龙城市场）
tNpcGossip[22508]["OptionFunc111"]="CrossServer_NewRacing_LeaveCross"

--------------------------------------物品模块-------------------------------------------
-- 3306998,'赛马大会邀请函'
tItemFace[3306998] = 1178
-- 3306999,'赛马夺金参与奖礼包
tItem[3306999] = tItem[3306999] or {}
tItem[3306999]["Function"] = function(nItemId,sItemName)
	CrossServer_NewRacing_UseItem(nItemId)
end
-- 3307000,'赛马夺金第1名礼包'
tItem[3307000] = tItem[3307000] or {}
tItem[3307000]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tCrossServer_NewRacing_Reward[nItemId])
end
-- 3307001,'赛马夺金第2名礼包'
tItem[3307001] = tItem[3307000]
-- 3307002,'赛马夺金第3名礼包'
tItem[3307002] = tItem[3307000]
-- 3307003,'赛马夺金优秀奖礼包
tItem[3307003] = tItem[3307000]

--------------------------------------陷阱模块-------------------------------------------
-- 金币陷阱（单人赛）
-- 共用区域
tTrap[1847] = tTrap[1847] or {}
tTrap[1847]["Function"] = function(nTrapId,nTrapType)
	CrossServer_NewRacing_TrapFunc(nTrapId,nTrapType)
end
-- 个人加速陷阱
tTrap[1848] = tTrap[1848] or {}
tTrap[1848]["Function"] = function(nTrapId,nTrapType)
	CrossServer_NewRacing_NewTrapFunc(nTrapId,nTrapType)
end
-- 跨服加速陷阱
tTrap[1849] = tTrap[1849] or {}
tTrap[1849]["Function"] = function(nTrapId,nTrapType)
	CrossServer_NewRacing_CrossTrapFunc(nTrapId,nTrapType)
end
-- 大金币陷阱
tTrap[1853] = tTrap[1853] or {}
tTrap[1853]["Function"] = function(nTrapId,nTrapType)
	CrossServer_NewRacing_TrapFunc(nTrapId,nTrapType)
end
--------------------------------------时间自检-------------------------------------------
-- 实时检测
local tCrossServer_NewRacing_OnTime = {}
	-- 【跨服竞速赛开始前10分钟，全服公告】
	tCrossServer_NewRacing_OnTime[1] = {}
	tCrossServer_NewRacing_OnTime[1]["ActivityTime"] = tCrossServer_NewRacing_Count["ActivityTime"]
	tCrossServer_NewRacing_OnTime[1]["Type"] = 6
	tCrossServer_NewRacing_OnTime[1]["TimeType"] = 4
	tCrossServer_NewRacing_OnTime[1]["Multiple"] = {}
	tCrossServer_NewRacing_OnTime[1]["Multiple"][1]  = "14:50 14:50"
	tCrossServer_NewRacing_OnTime[1]["Func"] = CrossServer_NewRacing_AllBroadcast
	-- 【跨服竞速赛开始，全服公告和全服105提示】
	tCrossServer_NewRacing_OnTime[2] = {}
	tCrossServer_NewRacing_OnTime[2]["ActivityTime"] = tCrossServer_NewRacing_Count["ActivityTime"]
	tCrossServer_NewRacing_OnTime[2]["Type"] = 6
	tCrossServer_NewRacing_OnTime[2]["TimeType"] = 4
	tCrossServer_NewRacing_OnTime[2]["Multiple"] = {}
	tCrossServer_NewRacing_OnTime[2]["Multiple"][1]  = "15:00 15:00"
	tCrossServer_NewRacing_OnTime[2]["Func"] = CrossServer_NewRacing_AllBroadcastAndBox
	-- 【跨服竞速赛开始，全服邀请等】
	tCrossServer_NewRacing_OnTime[3] = {}
	tCrossServer_NewRacing_OnTime[3]["ActivityTime"] = tCrossServer_NewRacing_Count["ActivityTime"]
	tCrossServer_NewRacing_OnTime[3]["Type"] = 6
	tCrossServer_NewRacing_OnTime[3]["TimeType"] = 4
	tCrossServer_NewRacing_OnTime[3]["Multiple"] = {}
	tCrossServer_NewRacing_OnTime[3]["Multiple"][1] = "14:59 14:59"
	tCrossServer_NewRacing_OnTime[3]["Func"] = CrossServer_NewRacing_StartGame
	-- 比赛结束
	tCrossServer_NewRacing_OnTime[4] = {}
	tCrossServer_NewRacing_OnTime[4]["ActivityTime"] = tCrossServer_NewRacing_Count["ActivityTime"]
	tCrossServer_NewRacing_OnTime[4]["Type"] = 6
	tCrossServer_NewRacing_OnTime[4]["TimeType"] = 4
	tCrossServer_NewRacing_OnTime[4]["Multiple"] = {}
	tCrossServer_NewRacing_OnTime[4]["Multiple"][1]  = "15:30 15:30"
	tCrossServer_NewRacing_OnTime[4]["Func"] = CrossServer_NewRacing_EndGame

-- table.insert(tSystemTime_InitialData,tCrossServer_NewRacing_OnTime[1])
-- table.insert(tSystemTime_InitialData,tCrossServer_NewRacing_OnTime[2])
-- table.insert(tSystemTime_InitialData,tCrossServer_NewRacing_OnTime[3])
-- table.insert(tSystemTime_InitialData,tCrossServer_NewRacing_OnTime[4])

-- 服务器启动刷新陷阱数据
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],CrossServer_NewRacing_RefreshTrap)

--比赛完成发奖
-- tAwardHorseRace = tAwardHorseRace or {}
-- tAwardHorseRace["tFunction"] = tAwardHorseRace["tFunction"] or {}
-- table.insert(tAwardHorseRace["tFunction"],CrossServer_NewRacing_RaceAward)

-- 骑宠，玩家冲过终点是触发
-- tRideArrive["tFunction"] = tRideArrive["tFunction"] or {}
-- table.insert(tRideArrive["tFunction"],CrossServer_NewRacing_RideArriveTerminal)

-- 排行榜数据
-- tRankingFunc_Info[1] = {}
-- tRankingFunc_Info[1]["ActiveTime"] =tActivityTime["CrossServerRacing"]["ActivityTime"]
-- tRankingFunc_Info[1]["DayTime"] = {}
-- tRankingFunc_Info[1]["DayTime"][1] = "00:00 23:59"
-- tRankingFunc_Info[1]["ResetTime"] = {}
-- tRankingFunc_Info[1]["ResetTime"][1] = "00:00 00:05"
-- tRankingFunc_Info[1]["Global"] = {51987,51988,51989,51990}
-- tRankingFunc_Info[1]["BeforeGlobal"] = {51991,51992,51993,51994}
-- tRankingFunc_Info[1]["RankNum"] = 10

-- tRankingFunc_Info[1]["Mail"] = {}
-- tRankingFunc_Info[1]["Mail"]["ActiveTime"] =tActivityTime["CrossServerRacing"]["ActivityTime"]
-- tRankingFunc_Info[1]["Mail"]["RewardTime"] = {}
-- tRankingFunc_Info[1]["Mail"]["RewardTime"][1] = "00:00 00:05"
-- tRankingFunc_Info[1]["Mail"]["HaveFunc"] = CrossServer_NewRacing_InitMailText
-- tRankingFunc_Info[1]["Mail"]["Reward"] = {}
-- tRankingFunc_Info[1]["Mail"]["Reward"][1] = {}
-- tRankingFunc_Info[1]["Mail"]["Reward"][1]["RewardRank"] = 1
-- tRankingFunc_Info[1]["Mail"]["Reward"][1]["ActionId"] = 94485800
-- tRankingFunc_Info[1]["Mail"]["Reward"][1]["ExistDay"] = 3
-- tRankingFunc_Info[1]["Mail"]["Reward"][1]["Title"] = tCrossServer_NewRacing_Text["Mail"]["Title"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][1]["Sender"] = tCrossServer_NewRacing_Text["Mail"]["Sender"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][1]["Content"] = tCrossServer_NewRacing_Text["Mail"]["Content"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][2] = {}
-- tRankingFunc_Info[1]["Mail"]["Reward"][2]["RewardRank"] = 2
-- tRankingFunc_Info[1]["Mail"]["Reward"][2]["ActionId"] = 94485801
-- tRankingFunc_Info[1]["Mail"]["Reward"][2]["ExistDay"] = 3
-- tRankingFunc_Info[1]["Mail"]["Reward"][2]["Title"] = tCrossServer_NewRacing_Text["Mail"]["Title"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][2]["Sender"] = tCrossServer_NewRacing_Text["Mail"]["Sender"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][2]["Content"] = tCrossServer_NewRacing_Text["Mail"]["Content"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][3] = {}
-- tRankingFunc_Info[1]["Mail"]["Reward"][3]["RewardRank"] = 3
-- tRankingFunc_Info[1]["Mail"]["Reward"][3]["ActionId"] = 94485802
-- tRankingFunc_Info[1]["Mail"]["Reward"][3]["ExistDay"] = 3
-- tRankingFunc_Info[1]["Mail"]["Reward"][3]["Title"] = tCrossServer_NewRacing_Text["Mail"]["Title"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][3]["Sender"] = tCrossServer_NewRacing_Text["Mail"]["Sender"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][3]["Content"] = tCrossServer_NewRacing_Text["Mail"]["Content"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][4] = {}
-- tRankingFunc_Info[1]["Mail"]["Reward"][4]["RewardRank"] = 4
-- tRankingFunc_Info[1]["Mail"]["Reward"][4]["ActionId"] = 94485803
-- tRankingFunc_Info[1]["Mail"]["Reward"][4]["ExistDay"] = 3
-- tRankingFunc_Info[1]["Mail"]["Reward"][4]["Title"] = tCrossServer_NewRacing_Text["Mail"]["Title"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][4]["Sender"] = tCrossServer_NewRacing_Text["Mail"]["Sender"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][4]["Content"] = tCrossServer_NewRacing_Text["Mail"]["Content"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][5] = {}
-- tRankingFunc_Info[1]["Mail"]["Reward"][5]["RewardRank"] = 5
-- tRankingFunc_Info[1]["Mail"]["Reward"][5]["ActionId"] = 94485804
-- tRankingFunc_Info[1]["Mail"]["Reward"][5]["ExistDay"] = 3
-- tRankingFunc_Info[1]["Mail"]["Reward"][5]["Title"] = tCrossServer_NewRacing_Text["Mail"]["Title"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][5]["Sender"] = tCrossServer_NewRacing_Text["Mail"]["Sender"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][5]["Content"] = tCrossServer_NewRacing_Text["Mail"]["Content"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][6] = {}
-- tRankingFunc_Info[1]["Mail"]["Reward"][6]["RewardRank"] = 6
-- tRankingFunc_Info[1]["Mail"]["Reward"][6]["ActionId"] = 94485805
-- tRankingFunc_Info[1]["Mail"]["Reward"][6]["ExistDay"] = 3
-- tRankingFunc_Info[1]["Mail"]["Reward"][6]["Title"] = tCrossServer_NewRacing_Text["Mail"]["Title"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][6]["Sender"] = tCrossServer_NewRacing_Text["Mail"]["Sender"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][6]["Content"] = tCrossServer_NewRacing_Text["Mail"]["Content"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][7] = {}
-- tRankingFunc_Info[1]["Mail"]["Reward"][7]["RewardRank"] = 7
-- tRankingFunc_Info[1]["Mail"]["Reward"][7]["ActionId"] = 94485806
-- tRankingFunc_Info[1]["Mail"]["Reward"][7]["ExistDay"] = 3
-- tRankingFunc_Info[1]["Mail"]["Reward"][7]["Title"] = tCrossServer_NewRacing_Text["Mail"]["Title"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][7]["Sender"] = tCrossServer_NewRacing_Text["Mail"]["Sender"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][7]["Content"] = tCrossServer_NewRacing_Text["Mail"]["Content"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][8] = {}
-- tRankingFunc_Info[1]["Mail"]["Reward"][8]["RewardRank"] = 8
-- tRankingFunc_Info[1]["Mail"]["Reward"][8]["ActionId"] = 94485807
-- tRankingFunc_Info[1]["Mail"]["Reward"][8]["ExistDay"] = 3
-- tRankingFunc_Info[1]["Mail"]["Reward"][8]["Title"] = tCrossServer_NewRacing_Text["Mail"]["Title"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][8]["Sender"] = tCrossServer_NewRacing_Text["Mail"]["Sender"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][8]["Content"] = tCrossServer_NewRacing_Text["Mail"]["Content"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][9] = {}
-- tRankingFunc_Info[1]["Mail"]["Reward"][9]["RewardRank"] = 9
-- tRankingFunc_Info[1]["Mail"]["Reward"][9]["ActionId"] = 94485808
-- tRankingFunc_Info[1]["Mail"]["Reward"][9]["ExistDay"] = 3
-- tRankingFunc_Info[1]["Mail"]["Reward"][9]["Title"] = tCrossServer_NewRacing_Text["Mail"]["Title"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][9]["Sender"] = tCrossServer_NewRacing_Text["Mail"]["Sender"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][9]["Content"] = tCrossServer_NewRacing_Text["Mail"]["Content"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][10] = {}
-- tRankingFunc_Info[1]["Mail"]["Reward"][10]["RewardRank"] = 10
-- tRankingFunc_Info[1]["Mail"]["Reward"][10]["ActionId"] = 94485809
-- tRankingFunc_Info[1]["Mail"]["Reward"][10]["ExistDay"] = 3
-- tRankingFunc_Info[1]["Mail"]["Reward"][10]["Title"] = tCrossServer_NewRacing_Text["Mail"]["Title"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][10]["Sender"] = tCrossServer_NewRacing_Text["Mail"]["Sender"]
-- tRankingFunc_Info[1]["Mail"]["Reward"][10]["Content"] = tCrossServer_NewRacing_Text["Mail"]["Content"]











