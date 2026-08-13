------------------------------------------------------------------------------------
--Name:		170920[简体征服][活动脚本]砸罐子活动制作
--Creator: 	兰瑞妹
--Created:	2017/10/11
------------------------------------------------------------------------------------
-- 英文修改内容：
-- 1、原来每次砸罐发生暴击几率3%，对应可获得奖励中奖励5是魔武通玄丹*5，英文没有这个道具，对应改成终极通神丹*10
-- 2、排行榜奖励简体因为更新了150级，给的都是特殊经验，英文征服没有更新等级，换成神纹相关奖励
-- 以下活动数据加emoney_buy	
-- 剑气砸罐 350 21141		
-- 1天石购买 350 21142		
-- 使用刷新券 350 21143		
-- 使用天石刷新 350 21144		
-- 使用正气令 350 21145		
-- 砸赤练石罐 350 21146		
-- 开星陨石罐 350 21147		
-- 开气力值罐 350 21148		
-- 开赠点天石罐 350 21149		
-- 开自创练功罐 350 21150		
-- 开固化石罐 350 21151		(无该奖池)
-- 开流星龙珠罐 350 21152		(无该奖池)
-- 开大杂烩罐 350 21153		


-- 命名前缀
-- SmashPot_Activities_

-- logid 12000899

-- #stc 掩码说明 
-- #stc(168,59) 背包信
-- #stc(168,60) 玩家当前奖池1~8
-- #stc(168,61) 玩家已砸的罐（二进制码）
					-- 含1表示开过第一个罐 含2第二个依次类推 
-- #stc(168,62) 二次确认 ==含1 表示屏蔽剑气 ==含2表示屏蔽藏宝罐
-- #stc(168,63) 怪物掉落上限 剑气 每日限量 150
-- #stc(168,64) 含1表示开启一键付费 == 含2 每日首次开罐数量
-- #stc(168,65) 怪物掉落上限 刷新券 每日限量 25
-- #stc(168,66) 玩家已拿奖励
-- #	     含1表示拿过第一个奖励
-- #stc(169,26) > 1表示玩家已付费(使用剑气)
-- #stc(169,28) > 1表示玩家已付费(使用天石)
-- #stc(170,44) 玩家当前开罐数
-- #stc(170,45)  阶段目标板

-- #动态存储表说明
-- #玩家砸罐数量排行
--# [51457]第1~3玩家数据
--# [51458]第4~6玩家数据
--# [51459]第7~9玩家数据
--# [51460]第10~12玩家数据
--# [51460]第13~15玩家数据
--# [51460]第16~18玩家数据
--# [51460]第19~20玩家数据
-- #-第一名	data0	记录玩家ID			datastr0	玩家名称
--  #data1	记录玩家砸罐数量     	datastr1	玩家是否领奖 0 未领 1 已领
-- 第二名		data2	记录玩家ID			datastr2	玩家名称
-- #data3	记录玩家砸罐数量     	datastr3	玩家是否领奖 0 未领 1 已领
-- 第三名	data4	记录玩家ID			datastr4	玩家名称
--  #data5	记录玩家砸罐数量     	datastr5	玩家是否领奖 0 未领 1 已领
	-- #最后一个global的	-- datastr5清除标志

-- 常量表
local tSmashPot_Activities_Count = {}
	-- 活动时间
	tSmashPot_Activities_Count["ActivityTime"] = tActivityTime["SmashPot"]["ActivityTime"]
	tSmashPot_Activities_Count["AfterActivityTime"] = tActivityTime["SmashPot"]["AfterActivityTime"]
	
	-- 等级
	tSmashPot_Activities_Count["Level"] = 80
	tSmashPot_Activities_Count["Meto"] = 0
	
	-- 刷新卷
	tSmashPot_Activities_Count["RefreshItemId"] = 3305663
	-- 刷新卷天石
	tSmashPot_Activities_Count["RefreshEMoney"] = 30
	
	-- 副本id
	tSmashPot_Activities_Count["Instancetype"] = 133
	
	-- 空罐子id
	tSmashPot_Activities_Count["BasicNpcId"] = 22218
	-- 阶段目标版
	tSmashPot_Activities_Count["TaskNpcId"] = 22217
	-- 排行榜
	tSmashPot_Activities_Count["RankNpcId"] = 22400
	
	-- 对白对齐间隔
	tSmashPot_Activities_Count["Left"] = 28
	
	-- 剑气
	tSmashPot_Activities_Count["Swordkee"] = 3305662
	tSmashPot_Activities_Count["SwordkeeAttr"] = "0 %d"
	
	-- 打怪掉折扣卷改率
	tSmashPot_Activities_Count["Min"] = 100
	tSmashPot_Activities_Count["Max"] = 10000
	-- 暴击概率表
	tSmashPot_Activities_Count["NewMin"] = {}
	-- 0-3 1%
	tSmashPot_Activities_Count["NewMin"][1] = 100
	-- 4-6 3%
	tSmashPot_Activities_Count["NewMin"][2] = 300
	-- 7-9 5%
	tSmashPot_Activities_Count["NewMin"][3] = 500
	
	-- 读条
	tSmashPot_Activities_Count["Secs"] = 1
	tSmashPot_Activities_Count["ActionId"] = 401
	
	-- #玩家砸罐数量排行
	tSmashPot_Activities_Count["GlobalId"] = {51920,51921,51922,51923,51924,51925,51926}
	tSmashPot_Activities_Count["RankingNum"] = 20
	tSmashPot_Activities_Count["AwardRankingNum"] = 10
	tSmashPot_Activities_Count["Text"] = {114,115,116,117,118,119,1110,1111,1112}
	tSmashPot_Activities_Count["Text1"] = {114,115,116,117,118,119,1110,1111,1112,1113}
	-- 标示所有罐子已开
	tSmashPot_Activities_Count["HaveOpen"] = 511
	-- 文字索引
	tSmashPot_Activities_Count["IndexDash"] = {1,2,3,4,5,7,8}
	-- 副本mapdoc
	tSmashPot_Activities_Count["MapDoc"] = 10225
-- 奖励临时表
-- 玩家的奖池表
local tSmashPot_Activities_Jackpot = {}
-- 玩家当前地图
local tSmashPot_Activities_MapId = {}
-- 排行榜数据
local tSmashPot_Activities_RankingData = {}
-- 刷新奖池
local tSmashPot_Activities_Second = {}


-- Log表
local tSmashPot_Activities_Log = {}
	-- 过期删除
	tSmashPot_Activities_Log["OverDue"] = "0,0,%d,%d,12000899,2,0,0"
	-- 刷新藏宝罐（天石）
	tSmashPot_Activities_Log["RefreshEMoney"] = "250	4040	30	30	1	"
	tSmashPot_Activities_Log["RefreshNormal"] = "30,0,0,0,12000899,2[1],0,0"
	-- 1[X]	抽到第X个
	tSmashPot_Activities_Log["DrawNum"] = "0,0,0,0,12000899,1[%d],0,0"
	-- 天石购买剑气
	tSmashPot_Activities_Log["BuySwordkee"] = "250	4041	%d	%d	1	"
	tSmashPot_Activities_Log["BuySwordkeeNormal"] = "%d,0,0,0,12000899,2,0,0"
	-- 额外新增的LOG
	tSmashPot_Activities_Log["ExtraEMoney"] = {}
	-- 剑气砸罐 350 21141		
	tSmashPot_Activities_Log["ExtraEMoney"][1] = "350	21141	0	0	%d	"
	-- 1天石购买 350 21142		
	tSmashPot_Activities_Log["ExtraEMoney"][2] = "350	21142	%d	%d	1	"
	-- 使用刷新券 350 21143		
	tSmashPot_Activities_Log["ExtraEMoney"][3] = "350	21143	0	0	1	"
	-- 使用天石刷新 350 21144		
	tSmashPot_Activities_Log["ExtraEMoney"][4] = "350	21144	30	30	1	"
	-- 使用正气令 350 21145		(在别的正气令模板中)
	-- tSmashPot_Activities_Log["ExtraEMoney"][5] = "350	21145	0	0	1	"
	tSmashPot_Activities_Log["PotEMoney"] = {}
	-- 砸赤练石罐 350 21146		
	tSmashPot_Activities_Log["PotEMoney"][1] = "350	21146	0	0	1	"
	-- 开星陨石罐 350 21147		
	tSmashPot_Activities_Log["PotEMoney"][2] = "350	21147	0	0	1	"
	-- 开气力值罐 350 21148		
	tSmashPot_Activities_Log["PotEMoney"][3] = "350	21148	0	0	1	"
	-- 开赠点天石罐 350 21149		
	tSmashPot_Activities_Log["PotEMoney"][4] = "350	21149	0	0	1	"
	-- 开自创练功罐 350 21150		
	tSmashPot_Activities_Log["PotEMoney"][5] = "350	21150	0	0	1	"
	-- 开固化石罐 350 21151		(该奖池已删除)
	tSmashPot_Activities_Log["PotEMoney"][6] = "350	21151	0	0	1	"
	-- 开流星龙珠罐 350 21152		
	tSmashPot_Activities_Log["PotEMoney"][7] = "350	21152	0	0	1	"
	-- 开大杂烩罐 350 21153		
	tSmashPot_Activities_Log["PotEMoney"][8] = "350	21153	0	0	1	"
	
-- stc掩码
local tSmashPot_Activities_Stc = {}
	-- 玩家当前奖池1~8
	tSmashPot_Activities_Stc[1] = {}
	tSmashPot_Activities_Stc[1]["EventType"] = 168
	tSmashPot_Activities_Stc[1]["DataType"] = 60
	tSmashPot_Activities_Stc[1]["Clear"] = 1
	-- 玩家已砸的罐（二进制码）
	-- 含1表示开过第一个罐 含2第二个依次类推 
	tSmashPot_Activities_Stc[2] = {}
	tSmashPot_Activities_Stc[2]["EventType"] = 168
	tSmashPot_Activities_Stc[2]["DataType"] = 61
	tSmashPot_Activities_Stc[2]["Clear"] = 1
	-- 二次确认 ==含1 表示屏蔽剑气 ==含2表示屏蔽藏宝罐
	tSmashPot_Activities_Stc[3] = {}
	tSmashPot_Activities_Stc[3]["EventType"] = 168
	tSmashPot_Activities_Stc[3]["DataType"] = 62
	tSmashPot_Activities_Stc[3]["Clear"] = 1
	-- 怪物掉落上限 剑气 每日限量 150
	tSmashPot_Activities_Stc[4] = {}
	tSmashPot_Activities_Stc[4]["EventType"] = 168
	tSmashPot_Activities_Stc[4]["DataType"] = 63
	tSmashPot_Activities_Stc[4]["Limit"] = 150
	tSmashPot_Activities_Stc[4]["Clear"] = 1
	-- 怪物掉落上限 刷新券 每日限量 25
	tSmashPot_Activities_Stc[5] = {}
	tSmashPot_Activities_Stc[5]["EventType"] = 168
	tSmashPot_Activities_Stc[5]["DataType"] = 65
	tSmashPot_Activities_Stc[5]["Limit"] = 5
	tSmashPot_Activities_Stc[5]["Clear"] = 1
	-- 含1表示开启一键付费 == 含2 每日首次开罐数量
	tSmashPot_Activities_Stc[6] = {}
	tSmashPot_Activities_Stc[6]["EventType"] = 168
	tSmashPot_Activities_Stc[6]["DataType"] = 64
	tSmashPot_Activities_Stc[6]["Clear"] = 1
	-- 玩家已拿奖励
	tSmashPot_Activities_Stc[7] = {}
	tSmashPot_Activities_Stc[7]["EventType"] = 168
	tSmashPot_Activities_Stc[7]["DataType"] = 66
	tSmashPot_Activities_Stc[7]["Clear"] = 1
	-- > 1表示玩家已付费(使用剑气)
	tSmashPot_Activities_Stc[8] = {}
	tSmashPot_Activities_Stc[8]["EventType"] = 169
	tSmashPot_Activities_Stc[8]["DataType"] = 26
	tSmashPot_Activities_Stc[8]["Clear"] = 1
	-- > 1表示玩家已付费(使用天石)
	tSmashPot_Activities_Stc[9] = {}
	tSmashPot_Activities_Stc[9]["EventType"] = 169
	tSmashPot_Activities_Stc[9]["DataType"] = 28
	tSmashPot_Activities_Stc[9]["Clear"] = 1
	-- 玩家当前开罐数
	tSmashPot_Activities_Stc[10] = {}
	tSmashPot_Activities_Stc[10]["EventType"] = 170
	tSmashPot_Activities_Stc[10]["DataType"] = 44
	-- 阶段目标版
	tSmashPot_Activities_Stc[11] = {}
	tSmashPot_Activities_Stc[11]["EventType"] = 170
	tSmashPot_Activities_Stc[11]["DataType"] = 45
	
-- 特效
local tSmashPot_Activities_Effect = {}
	-- 剑气舞动
	tSmashPot_Activities_Effect[1] = {}
	tSmashPot_Activities_Effect[1]["EffectObj"] = "self"
	tSmashPot_Activities_Effect[1]["Effect"] = "sword-l_coat02"
	-- 破罐
	tSmashPot_Activities_Effect[2] = {}
	tSmashPot_Activities_Effect[2]["EffectObj"] = "self"
	tSmashPot_Activities_Effect[2]["Effect"] = "jsb_skyg_att"
	-- 玩家
	tSmashPot_Activities_Effect[3] = {}
	tSmashPot_Activities_Effect[3]["EffectObj"] = "self"
	tSmashPot_Activities_Effect[3]["Effect"] = "task079"
	-- 玩家进入地图光效
	tSmashPot_Activities_Effect[4] = {}
	tSmashPot_Activities_Effect[4]["EffectObj"] = "self"
	tSmashPot_Activities_Effect[4]["Effect"] = "zf2-e361"
	-- 玩家暴击光效
	tSmashPot_Activities_Effect[5] = {}
	tSmashPot_Activities_Effect[5]["EffectObj"] = "self"
	tSmashPot_Activities_Effect[5]["Effect"] = "ssch_wlhd_hit"
	-- 自动补充剑气
	tSmashPot_Activities_Effect[6] = {}
	tSmashPot_Activities_Effect[6]["EffectObj"] = "self"
	tSmashPot_Activities_Effect[6]["Effect"] = "sscs_htsd_app"
	
-- 对白Text
local tSmashPot_Activities_Dialog = {}
	-- 集气区	-- 罐子
	tSmashPot_Activities_Dialog[1] = {"Text1130","Text1131","Text1132","Text1133","Text1134","Text1135","Text1136","Text1137","Text1138"}
	tSmashPot_Activities_Dialog[2] = {10,2,10,15,2,2,8,8,8}
	
-- 发邮件
	--邮件发奖
local tSmashPot_Activities_SendMailReward = {}
	tSmashPot_Activities_SendMailReward["ExistDay"] = 3
	tSmashPot_Activities_SendMailReward["ActionId"] = 94480060
	
-- 奖励表
local tSmashPot_Activities_Reward = {}
	-- 邮件示例表
	tSmashPot_Activities_Reward[1] = {}
	tSmashPot_Activities_Reward[1]["LogId"] = 12000899
	tSmashPot_Activities_Reward[1]["LogStep"] = "1[%d]"
	tSmashPot_Activities_Reward[1]["RewardItem"] = {}
	tSmashPot_Activities_Reward[1]["RewardItem"][1] = {}
	tSmashPot_Activities_Reward[1]["RewardItem"][1]["Id"] = 0
	tSmashPot_Activities_Reward[1]["RewardItem"][1]["Attr"] = ""
	tSmashPot_Activities_Reward[1]["RewardEffect"] = {}
	tSmashPot_Activities_Reward[1]["RewardEffect"]["Effect"] = "zf2-e128"

	-- 示例表天石
	tSmashPot_Activities_Reward[3] = {}
	tSmashPot_Activities_Reward[3]["LogId"] = 12000899
	tSmashPot_Activities_Reward[3]["LogStep"] = "1[6]"
	tSmashPot_Activities_Reward[3]["RewardEMoney"] = {}
	tSmashPot_Activities_Reward[3]["RewardEMoney"]["Value"] = 0
	tSmashPot_Activities_Reward[3]["RewardEffect"] = {}
	tSmashPot_Activities_Reward[3]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 示例表气力
	tSmashPot_Activities_Reward[4] = {}
	tSmashPot_Activities_Reward[4]["LogId"] = 12000899
	tSmashPot_Activities_Reward[4]["LogStep"] = "1[7]"
	tSmashPot_Activities_Reward[4]["RewardStrengthValue"] = {}
	tSmashPot_Activities_Reward[4]["RewardStrengthValue"]["Value"] = 0
	tSmashPot_Activities_Reward[4]["RewardEffect"] = {}
	tSmashPot_Activities_Reward[4]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 示例表赠点
	tSmashPot_Activities_Reward[5] = {}
	tSmashPot_Activities_Reward[5]["LogId"] = 12000899
	tSmashPot_Activities_Reward[5]["LogStep"] = "1[8]"
	tSmashPot_Activities_Reward[5]["RewardEMoneyMono"] = {}
	tSmashPot_Activities_Reward[5]["RewardEMoneyMono"]["Value"] = 0
	tSmashPot_Activities_Reward[5]["RewardEffect"] = {}
	tSmashPot_Activities_Reward[5]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 使用刷新卷
	tSmashPot_Activities_Reward[3305663] = {}
	tSmashPot_Activities_Reward[3305663]["Log"] = "0,0,3305663,1,12000899,2[1],0,0"
	tSmashPot_Activities_Reward[3305663]["DeleteItem"] = {}
	tSmashPot_Activities_Reward[3305663]["DeleteItem"][1] = {}
	tSmashPot_Activities_Reward[3305663]["DeleteItem"][1]["Id"] = 3305663
	tSmashPot_Activities_Reward[3305663]["DeleteItem"][1]["SaveTime"] = 1
	
	-- 使用剑气
	tSmashPot_Activities_Reward[3305662] = {}
	tSmashPot_Activities_Reward[3305662]["Log"] = "0,0,3305662,%d,12000899,2,0,0"
	tSmashPot_Activities_Reward[3305662]["DeleteItem"] = {}
	tSmashPot_Activities_Reward[3305662]["DeleteItem"][1] = {}
	tSmashPot_Activities_Reward[3305662]["DeleteItem"][1]["Id"] = 3305662
	tSmashPot_Activities_Reward[3305662]["DeleteItem"][1]["ItemNum"] = 0
	tSmashPot_Activities_Reward[3305662]["DeleteItem"][1]["SaveTime"] = 1
	
-- 使用物品
local tSmashPot_Activities_OpenItem = {}
	-- 3306314,'流星卷精装包'
	tSmashPot_Activities_OpenItem[3306314] = {}
	tSmashPot_Activities_OpenItem[3306314]["Log"] = "0,0,3306314,1,12000899,2[2],720027,5"
	tSmashPot_Activities_OpenItem[3306314]["DeleteItem"] = {}
	tSmashPot_Activities_OpenItem[3306314]["DeleteItem"][1] = {}
	tSmashPot_Activities_OpenItem[3306314]["DeleteItem"][1]["Id"] = 3306314
	tSmashPot_Activities_OpenItem[3306314]["DeleteItem"][1]["SaveTime"] = 1
	tSmashPot_Activities_OpenItem[3306314]["RewardItem"] = {}
	tSmashPot_Activities_OpenItem[3306314]["RewardItem"][1] = {}
	tSmashPot_Activities_OpenItem[3306314]["RewardItem"][1]["Id"] = 720027
	tSmashPot_Activities_OpenItem[3306314]["RewardItem"][1]["Attr"] = "0 5 3"
	tSmashPot_Activities_OpenItem[3306314]["RewardEffect"] = {}
	tSmashPot_Activities_OpenItem[3306314]["RewardEffect"]["Effect"] = "angelwing"
	-- 3306315,'微光星陨石礼盒'
	tSmashPot_Activities_OpenItem[3306315] = {}
	tSmashPot_Activities_OpenItem[3306315]["Log"] = "0,0,3306315,1,12000899,2[2],3009000,8"
	tSmashPot_Activities_OpenItem[3306315]["DeleteItem"] = {}
	tSmashPot_Activities_OpenItem[3306315]["DeleteItem"][1] = {}
	tSmashPot_Activities_OpenItem[3306315]["DeleteItem"][1]["Id"] = 3306315
	tSmashPot_Activities_OpenItem[3306315]["DeleteItem"][1]["SaveTime"] = 1
	tSmashPot_Activities_OpenItem[3306315]["RewardItem"] = {}
	tSmashPot_Activities_OpenItem[3306315]["RewardItem"][1] = {}
	tSmashPot_Activities_OpenItem[3306315]["RewardItem"][1]["Id"] = 3009000
	tSmashPot_Activities_OpenItem[3306315]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	tSmashPot_Activities_OpenItem[3306315]["RewardEffect"] = {}
	tSmashPot_Activities_OpenItem[3306315]["RewardEffect"]["Effect"] = "angelwing"
	
local tSmashPot_Activities_FindWay = {}
	-- 寻路到小河神
	tSmashPot_Activities_FindWay[1] = {}
	tSmashPot_Activities_FindWay[1]["PosX"] = 374
	tSmashPot_Activities_FindWay[1]["PosY"] = 491
	tSmashPot_Activities_FindWay[1]["MapId"] = 1002
	tSmashPot_Activities_FindWay[1]["NpcId"] = 0
	tSmashPot_Activities_FindWay[1]["Range"] = 5
	-- 寻路到传送人
	tSmashPot_Activities_FindWay[2] = {}
	tSmashPot_Activities_FindWay[2]["PosX"] = 65
	tSmashPot_Activities_FindWay[2]["PosY"] = 64
	tSmashPot_Activities_FindWay[2]["MapId"] = 10225
	tSmashPot_Activities_FindWay[2]["NpcId"] = 22218
	-- 移出地图
	tSmashPot_Activities_FindWay[3] = {}
	tSmashPot_Activities_FindWay[3]["PosX"] = 100
	tSmashPot_Activities_FindWay[3]["PosY"] = 100
	tSmashPot_Activities_FindWay[3]["MapId"] = 5000
	tSmashPot_Activities_FindWay[3]["NpcId"] = 0
	-- 出地图
	tSmashPot_Activities_FindWay[4] = {}
	tSmashPot_Activities_FindWay[4]["PosX"] = 374
	tSmashPot_Activities_FindWay[4]["PosY"] = 495
	tSmashPot_Activities_FindWay[4]["MapId"] = 1002
	tSmashPot_Activities_FindWay[4]["Range"] = 5
	-- 出地图--激情服
	tSmashPot_Activities_FindWay[5] = {}
	tSmashPot_Activities_FindWay[5]["PosX"] = 205
	tSmashPot_Activities_FindWay[5]["PosY"] = 165
	tSmashPot_Activities_FindWay[5]["MapId"] = 1036
	tSmashPot_Activities_FindWay[5]["Range"] = 5
	-- 寻路到小河神--激情服
	tSmashPot_Activities_FindWay[6] = {}
	tSmashPot_Activities_FindWay[6]["PosX"] = 204
	tSmashPot_Activities_FindWay[6]["PosY"] = 159
	tSmashPot_Activities_FindWay[6]["MapId"] = 1036
	tSmashPot_Activities_FindWay[6]["NpcId"] = 0
	tSmashPot_Activities_FindWay[6]["Range"] = 5
	
-- 陷阱
local tSmashPot_Activities_Trap = {}
	tSmashPot_Activities_Trap["TrapType"] = 1760
	tSmashPot_Activities_Trap["Look"] = 811
	tSmashPot_Activities_Trap["MapInfo"] = {}
	tSmashPot_Activities_Trap["MapInfo"]["PosX"] = 67
	tSmashPot_Activities_Trap["MapInfo"]["PosY"] = 93
	-- npc固定地效
	tSmashPot_Activities_Trap[22218] = 1781

-- 动态创建npc坐标
local tSmashPot_Activities_NpcPos = {}
	-- '1号罐子'
	tSmashPot_Activities_NpcPos[1] = {}
	tSmashPot_Activities_NpcPos[1]["PosX"] = 56
	tSmashPot_Activities_NpcPos[1]["PosY"] = 80
	tSmashPot_Activities_NpcPos[1]["ActionId"] = 94480051
	tSmashPot_Activities_NpcPos[1]["Parse"] = 1
	-- '2号罐子'
	tSmashPot_Activities_NpcPos[2] = {}
	tSmashPot_Activities_NpcPos[2]["PosX"] = 56
	tSmashPot_Activities_NpcPos[2]["PosY"] = 76
	tSmashPot_Activities_NpcPos[2]["ActionId"] = 94480052
	tSmashPot_Activities_NpcPos[2]["Parse"] = 2
	-- '3号罐子'
	tSmashPot_Activities_NpcPos[3] = {}
	tSmashPot_Activities_NpcPos[3]["PosX"] = 56
	tSmashPot_Activities_NpcPos[3]["PosY"] = 72
	tSmashPot_Activities_NpcPos[3]["ActionId"] = 94480053
	tSmashPot_Activities_NpcPos[3]["Parse"] = 4
	-- '4号罐子'
	tSmashPot_Activities_NpcPos[4] = {}
	tSmashPot_Activities_NpcPos[4]["PosX"] = 56
	tSmashPot_Activities_NpcPos[4]["PosY"] = 68
	tSmashPot_Activities_NpcPos[4]["ActionId"] = 94480054
	tSmashPot_Activities_NpcPos[4]["Parse"] = 8
	-- '5号罐子'
	tSmashPot_Activities_NpcPos[5] = {}
	tSmashPot_Activities_NpcPos[5]["PosX"] = 56
	tSmashPot_Activities_NpcPos[5]["PosY"] = 64
	tSmashPot_Activities_NpcPos[5]["ActionId"] = 94480055
	tSmashPot_Activities_NpcPos[5]["Parse"] = 16
	-- '6号罐子'
	tSmashPot_Activities_NpcPos[6] = {}
	tSmashPot_Activities_NpcPos[6]["PosX"] = 56
	tSmashPot_Activities_NpcPos[6]["PosY"] = 60
	tSmashPot_Activities_NpcPos[6]["ActionId"] = 94480056
	tSmashPot_Activities_NpcPos[6]["Parse"] = 32
	-- '7号罐子'
	tSmashPot_Activities_NpcPos[7] = {}
	tSmashPot_Activities_NpcPos[7]["PosX"] = 56
	tSmashPot_Activities_NpcPos[7]["PosY"] = 56
	tSmashPot_Activities_NpcPos[7]["ActionId"] = 94480057
	tSmashPot_Activities_NpcPos[7]["Parse"] = 64
	-- '8号罐子'
	tSmashPot_Activities_NpcPos[8] = {}
	tSmashPot_Activities_NpcPos[8]["PosX"] = 56
	tSmashPot_Activities_NpcPos[8]["PosY"] = 52
	tSmashPot_Activities_NpcPos[8]["ActionId"] = 94480058
	tSmashPot_Activities_NpcPos[8]["Parse"] = 128
	-- '9号罐子'
	tSmashPot_Activities_NpcPos[9] = {}
	tSmashPot_Activities_NpcPos[9]["PosX"] = 56
	tSmashPot_Activities_NpcPos[9]["PosY"] = 48
	tSmashPot_Activities_NpcPos[9]["ActionId"] = 94480059
	tSmashPot_Activities_NpcPos[9]["Parse"] = 256
	
-- 奖池对应action
local tSmashPot_Activities_PoolData = {}
	-- 22219,'赤炼罐子'94480051
	tSmashPot_Activities_PoolData[1] = {}
	tSmashPot_Activities_PoolData[1]["ActionId"] = 94480051
	tSmashPot_Activities_PoolData[1]["NpcFace"] = 3360
	-- 22220,'星陨罐子'94480052
	tSmashPot_Activities_PoolData[2] = {}
	tSmashPot_Activities_PoolData[2]["ActionId"] = 94480052
	tSmashPot_Activities_PoolData[2]["NpcFace"] = 3370
	-- 22221,'气力罐子'94480053
	tSmashPot_Activities_PoolData[3] = {}
	tSmashPot_Activities_PoolData[3]["ActionId"] = 94480053
	tSmashPot_Activities_PoolData[3]["NpcFace"] = 3380
	-- 22222,'赠点罐子'94480054
	tSmashPot_Activities_PoolData[4] = {}
	tSmashPot_Activities_PoolData[4]["ActionId"] = 94480054
	tSmashPot_Activities_PoolData[4]["NpcFace"] = 3390
	-- 22223,'练功罐子'94480055
	tSmashPot_Activities_PoolData[5] = {}
	tSmashPot_Activities_PoolData[5]["ActionId"] = 94480055
	tSmashPot_Activities_PoolData[5]["NpcFace"] = 3400
	-- 22224,'龙珠罐子'94480056
	tSmashPot_Activities_PoolData[7] = {}
	tSmashPot_Activities_PoolData[7]["ActionId"] = 94480056
	tSmashPot_Activities_PoolData[7]["NpcFace"] = 3410
	-- 22225,'珍宝罐子'94480057
	tSmashPot_Activities_PoolData[8] = {}
	tSmashPot_Activities_PoolData[8]["ActionId"] = 94480057
	tSmashPot_Activities_PoolData[8]["NpcFace"] = 3420
	
local tSmashPot_Activities_NewNpcPos = {}
	-- 22217,'阶段目标板'
	tSmashPot_Activities_NewNpcPos[22217] = {}
	tSmashPot_Activities_NewNpcPos[22217]["PosX"] = 73
	tSmashPot_Activities_NewNpcPos[22217]["PosY"] = 73
	tSmashPot_Activities_NewNpcPos[22217]["ActionId"] = 94485510
	tSmashPot_Activities_NewNpcPos[22217]["NpcFace"] = 4500
	-- 22400,'开罐排行榜'
	tSmashPot_Activities_NewNpcPos[22400] = {}
	tSmashPot_Activities_NewNpcPos[22400]["PosX"] = 73
	tSmashPot_Activities_NewNpcPos[22400]["PosY"] = 59
	tSmashPot_Activities_NewNpcPos[22400]["ActionId"] = 94485511
	tSmashPot_Activities_NewNpcPos[22400]["NpcFace"] = 4510
	-- 22218,'集气区'
	tSmashPot_Activities_NewNpcPos[22218] = {}
	tSmashPot_Activities_NewNpcPos[22218]["PosX"] = 65
	tSmashPot_Activities_NewNpcPos[22218]["PosY"] = 64
	tSmashPot_Activities_NewNpcPos[22218]["ActionId"] = 94480050
	tSmashPot_Activities_NewNpcPos[22218]["NpcFace"] = 3350
	
-- 初始剑气
local tSmashPot_Activities_Swordkee = {3,6,9,12,15,20,30,50,100}
-- 阶段目标板
local tSmashPot_Activities_OpenRanking = {10,20,30,50,80,100,200,300,500}
	
local tSmashPot_Activities_Random = {}
	-- 每天首次参与砸破罐子		
	tSmashPot_Activities_Random["FirstTime"] = {}
	tSmashPot_Activities_Random["FirstTime"][1] = {}
	tSmashPot_Activities_Random["FirstTime"][1]["ItemChanceSum"] = 10000
	-- 3	30%	
	tSmashPot_Activities_Random["FirstTime"][1][1] = {}
	tSmashPot_Activities_Random["FirstTime"][1][1]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random["FirstTime"][1][1]["ItemChance"] = 3000
	tSmashPot_Activities_Random["FirstTime"][1][1]["Item_1"] = 3
	-- 5	50%	
	tSmashPot_Activities_Random["FirstTime"][1][2] = {}
	tSmashPot_Activities_Random["FirstTime"][1][2]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random["FirstTime"][1][2]["ItemChance"] = 5000
	tSmashPot_Activities_Random["FirstTime"][1][2]["Item_1"] = 5
	-- 9	20%	
	tSmashPot_Activities_Random["FirstTime"][1][3] = {}
	tSmashPot_Activities_Random["FirstTime"][1][3]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random["FirstTime"][1][3]["ItemChance"] = 2000
	tSmashPot_Activities_Random["FirstTime"][1][3]["Item_1"] = 9

	-- 剑气破罐 奖池 随机
	tSmashPot_Activities_Random["jackpot"] = {}
	tSmashPot_Activities_Random["jackpot"][1] = {}
	tSmashPot_Activities_Random["jackpot"][1]["ItemChanceSum"] = 10000
	-- 奖池1		10%
	tSmashPot_Activities_Random["jackpot"][1][1] = {}
	tSmashPot_Activities_Random["jackpot"][1][1]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random["jackpot"][1][1]["ItemChance"] = 1000
	tSmashPot_Activities_Random["jackpot"][1][1]["Item"] = 1
	-- 奖池2     10%
	tSmashPot_Activities_Random["jackpot"][1][2] = {}
	tSmashPot_Activities_Random["jackpot"][1][2]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random["jackpot"][1][2]["ItemChance"] = 1000
	tSmashPot_Activities_Random["jackpot"][1][2]["Item"] = 2
	-- 奖池3      10%
	tSmashPot_Activities_Random["jackpot"][1][3] = {}
	tSmashPot_Activities_Random["jackpot"][1][3]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random["jackpot"][1][3]["ItemChance"] = 1000
	tSmashPot_Activities_Random["jackpot"][1][3]["Item"] = 3
	-- 奖池4      10%
	tSmashPot_Activities_Random["jackpot"][1][4] = {}
	tSmashPot_Activities_Random["jackpot"][1][4]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random["jackpot"][1][4]["ItemChance"] = 1000
	tSmashPot_Activities_Random["jackpot"][1][4]["Item"] = 4
	-- 奖池5      20%
	tSmashPot_Activities_Random["jackpot"][1][5] = {}
	tSmashPot_Activities_Random["jackpot"][1][5]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random["jackpot"][1][5]["ItemChance"] = 2000
	tSmashPot_Activities_Random["jackpot"][1][5]["Item"] = 5
	-- 奖池6     0%
	tSmashPot_Activities_Random["jackpot"][1][6] = {}
	tSmashPot_Activities_Random["jackpot"][1][6]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random["jackpot"][1][6]["ItemChance"] = 0
	tSmashPot_Activities_Random["jackpot"][1][6]["Item"] = 6
	-- 奖池7      20%
	tSmashPot_Activities_Random["jackpot"][1][7] = {}
	tSmashPot_Activities_Random["jackpot"][1][7]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random["jackpot"][1][7]["ItemChance"] = 2000
	tSmashPot_Activities_Random["jackpot"][1][7]["Item"] = 7
	-- 奖池8      20%
	tSmashPot_Activities_Random["jackpot"][1][8] = {}
	tSmashPot_Activities_Random["jackpot"][1][8]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random["jackpot"][1][8]["ItemChance"] = 2000
	tSmashPot_Activities_Random["jackpot"][1][8]["Item"] = 8
	
	-- 奖池1	赤炼石	赠
	tSmashPot_Activities_Random[1] = {}
	tSmashPot_Activities_Random[1][1] = {}
	tSmashPot_Activities_Random[1][1]["ItemChanceSum"] = 10000
	-- 赤炼石+1	730001	1			70.00%
	tSmashPot_Activities_Random[1][1][1] = {}
	tSmashPot_Activities_Random[1][1][1]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[1][1][1]["ItemChance"] = 7000
	tSmashPot_Activities_Random[1][1][1]["Type"] = 1
	tSmashPot_Activities_Random[1][1][1]["RewardItem"] = {}
	tSmashPot_Activities_Random[1][1][1]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[1][1][1]["RewardItem"][1]["Id"] = 730001
	tSmashPot_Activities_Random[1][1][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSmashPot_Activities_Random[1][1][1]["RewardEffect"] = {}
	tSmashPot_Activities_Random[1][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1	730001	1	20.00%
	tSmashPot_Activities_Random[1][1][2] = {}
	tSmashPot_Activities_Random[1][1][2]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[1][1][2]["ItemChance"] = 2000
	tSmashPot_Activities_Random[1][1][2]["Type"] = 2
	tSmashPot_Activities_Random[1][1][2]["RewardItem"] = {}
	tSmashPot_Activities_Random[1][1][2]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[1][1][2]["RewardItem"][1]["Id"] = 730001
	tSmashPot_Activities_Random[1][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSmashPot_Activities_Random[1][1][2]["RewardEffect"] = {}
	tSmashPot_Activities_Random[1][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1*2	730001	2			6.00%
	tSmashPot_Activities_Random[1][1][3] = {}
	tSmashPot_Activities_Random[1][1][3]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[1][1][3]["ItemChance"] = 600
	tSmashPot_Activities_Random[1][1][3]["Type"] = 3
	tSmashPot_Activities_Random[1][1][3]["RewardItem"] = {}
	tSmashPot_Activities_Random[1][1][3]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[1][1][3]["RewardItem"][1]["Id"] = 730001
	tSmashPot_Activities_Random[1][1][3]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
	tSmashPot_Activities_Random[1][1][3]["RewardEffect"] = {}
	tSmashPot_Activities_Random[1][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1*2	730001	2			2.40%
	tSmashPot_Activities_Random[1][1][4] = {}
	tSmashPot_Activities_Random[1][1][4]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[1][1][4]["ItemChance"] = 240
	tSmashPot_Activities_Random[1][1][4]["Type"] = 4
	tSmashPot_Activities_Random[1][1][4]["RewardItem"] = {}
	tSmashPot_Activities_Random[1][1][4]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[1][1][4]["RewardItem"][1]["Id"] = 730001
	tSmashPot_Activities_Random[1][1][4]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
	tSmashPot_Activities_Random[1][1][4]["RewardEffect"] = {}
	tSmashPot_Activities_Random[1][1][4]["RewardEffect"]["Effect"] = "angelwing"
	--赤炼石+2	730002	1			0.80%
	tSmashPot_Activities_Random[1][1][5] = {}
	tSmashPot_Activities_Random[1][1][5]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[1][1][5]["ItemChance"] = 80
	tSmashPot_Activities_Random[1][1][5]["Type"] = 5
	tSmashPot_Activities_Random[1][1][5]["RewardItem"] = {}
	tSmashPot_Activities_Random[1][1][5]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[1][1][5]["RewardItem"][1]["Id"] = 730002
	tSmashPot_Activities_Random[1][1][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSmashPot_Activities_Random[1][1][5]["RewardEffect"] = {}
	tSmashPot_Activities_Random[1][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2+赤炼石*1	730002	1+1			0.50%
	tSmashPot_Activities_Random[1][1][6] = {}
	tSmashPot_Activities_Random[1][1][6]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[1][1][6]["ItemChance"] = 50
	tSmashPot_Activities_Random[1][1][6]["Type"] = 6
	tSmashPot_Activities_Random[1][1][6]["RewardItem"] = {}
	tSmashPot_Activities_Random[1][1][6]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[1][1][6]["RewardItem"][1]["Id"] = 730001
	tSmashPot_Activities_Random[1][1][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSmashPot_Activities_Random[1][1][6]["RewardItem"][2] = {}
	tSmashPot_Activities_Random[1][1][6]["RewardItem"][2]["Id"] = 730002
	tSmashPot_Activities_Random[1][1][6]["RewardItem"][2]["Attr"] = "0 1 3 10080 1"
	tSmashPot_Activities_Random[1][1][6]["RewardEffect"] = {}
	tSmashPot_Activities_Random[1][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2*2	730002	2			0.24%
	tSmashPot_Activities_Random[1][1][7] = {}
	tSmashPot_Activities_Random[1][1][7]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[1][1][7]["ItemChance"] = 24
	tSmashPot_Activities_Random[1][1][7]["Type"] = 7
	tSmashPot_Activities_Random[1][1][7]["RewardItem"] = {}
	tSmashPot_Activities_Random[1][1][7]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[1][1][7]["RewardItem"][1]["Id"] = 730002
	tSmashPot_Activities_Random[1][1][7]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
	tSmashPot_Activities_Random[1][1][7]["RewardEffect"] = {}
	tSmashPot_Activities_Random[1][1][7]["RewardEffect"]["Effect"] = "angelwing"
	--赤炼石+3	730003	1			0.05%
	tSmashPot_Activities_Random[1][1][8] = {}
	tSmashPot_Activities_Random[1][1][8]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[1][1][8]["ItemChance"] = 5
	tSmashPot_Activities_Random[1][1][8]["Type"] = 8
	tSmashPot_Activities_Random[1][1][8]["RewardItem"] = {}
	tSmashPot_Activities_Random[1][1][8]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[1][1][8]["RewardItem"][1]["Id"] = 730003
	tSmashPot_Activities_Random[1][1][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSmashPot_Activities_Random[1][1][8]["RewardEffect"] = {}
	tSmashPot_Activities_Random[1][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+4	730004	1			0.01%
	tSmashPot_Activities_Random[1][1][9] = {}
	tSmashPot_Activities_Random[1][1][9]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[1][1][9]["ItemChance"] = 1
	tSmashPot_Activities_Random[1][1][9]["Type"] = 9
	tSmashPot_Activities_Random[1][1][9]["RewardItem"] = {}
	tSmashPot_Activities_Random[1][1][9]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[1][1][9]["RewardItem"][1]["Id"] = 730004
	tSmashPot_Activities_Random[1][1][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSmashPot_Activities_Random[1][1][9]["RewardEffect"] = {}
	tSmashPot_Activities_Random[1][1][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 奖池2-星陨石	赠
	tSmashPot_Activities_Random[2] = {}
	tSmashPot_Activities_Random[2][1] = {}
	tSmashPot_Activities_Random[2][1]["ItemChanceSum"] = 10000
	-- 微光星陨石	3009000	1		70.00%
	tSmashPot_Activities_Random[2][1][1] = {}
	tSmashPot_Activities_Random[2][1][1]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[2][1][1]["ItemChance"] = 7000
	tSmashPot_Activities_Random[2][1][1]["Type"] = 1
	tSmashPot_Activities_Random[2][1][1]["RewardItem"] = {}
	tSmashPot_Activities_Random[2][1][1]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[2][1][1]["RewardItem"][1]["Id"] = 3009000
	tSmashPot_Activities_Random[2][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSmashPot_Activities_Random[2][1][1]["RewardEffect"] = {}
	tSmashPot_Activities_Random[2][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石	3009000	1			20.00%
	tSmashPot_Activities_Random[2][1][2] = {}
	tSmashPot_Activities_Random[2][1][2]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[2][1][2]["ItemChance"] = 2000
	tSmashPot_Activities_Random[2][1][2]["Type"] = 2
	tSmashPot_Activities_Random[2][1][2]["RewardItem"] = {}
	tSmashPot_Activities_Random[2][1][2]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[2][1][2]["RewardItem"][1]["Id"] = 3009000
	tSmashPot_Activities_Random[2][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSmashPot_Activities_Random[2][1][2]["RewardEffect"] = {}
	tSmashPot_Activities_Random[2][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石*2	3009000	2			5.00%
	tSmashPot_Activities_Random[2][1][3] = {}
	tSmashPot_Activities_Random[2][1][3]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[2][1][3]["ItemChance"] = 500
	tSmashPot_Activities_Random[2][1][3]["Type"] = 3
	tSmashPot_Activities_Random[2][1][3]["RewardItem"] = {}
	tSmashPot_Activities_Random[2][1][3]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[2][1][3]["RewardItem"][1]["Id"] = 3009000
	tSmashPot_Activities_Random[2][1][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tSmashPot_Activities_Random[2][1][3]["RewardEffect"] = {}
	tSmashPot_Activities_Random[2][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石*2	3009000	2			3.00%
	tSmashPot_Activities_Random[2][1][4] = {}
	tSmashPot_Activities_Random[2][1][4]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[2][1][4]["ItemChance"] = 300
	tSmashPot_Activities_Random[2][1][4]["Type"] = 4
	tSmashPot_Activities_Random[2][1][4]["RewardItem"] = {}
	tSmashPot_Activities_Random[2][1][4]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[2][1][4]["RewardItem"][1]["Id"] = 3009000
	tSmashPot_Activities_Random[2][1][4]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tSmashPot_Activities_Random[2][1][4]["RewardEffect"] = {}
	tSmashPot_Activities_Random[2][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石*3	3009000	3			1.00%
	tSmashPot_Activities_Random[2][1][5] = {}
	tSmashPot_Activities_Random[2][1][5]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[2][1][5]["ItemChance"] = 100
	tSmashPot_Activities_Random[2][1][5]["Type"] = 5
	tSmashPot_Activities_Random[2][1][5]["RewardItem"] = {}
	tSmashPot_Activities_Random[2][1][5]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[2][1][5]["RewardItem"][1]["Id"] = 3009000
	tSmashPot_Activities_Random[2][1][5]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tSmashPot_Activities_Random[2][1][5]["RewardEffect"] = {}
	tSmashPot_Activities_Random[2][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石*5	3009000	5			0.70%
	tSmashPot_Activities_Random[2][1][6] = {}
	tSmashPot_Activities_Random[2][1][6]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[2][1][6]["ItemChance"] = 70
	tSmashPot_Activities_Random[2][1][6]["Type"] = 6
	tSmashPot_Activities_Random[2][1][6]["RewardItem"] = {}
	tSmashPot_Activities_Random[2][1][6]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[2][1][6]["RewardItem"][1]["Id"] = 3009000
	tSmashPot_Activities_Random[2][1][6]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tSmashPot_Activities_Random[2][1][6]["RewardEffect"] = {}
	tSmashPot_Activities_Random[2][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石*8	3009000	8			0.24%
	tSmashPot_Activities_Random[2][1][7] = {}
	tSmashPot_Activities_Random[2][1][7]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[2][1][7]["ItemChance"] = 24
	tSmashPot_Activities_Random[2][1][7]["Type"] = 7
	tSmashPot_Activities_Random[2][1][7]["RewardItem"] = {}
	tSmashPot_Activities_Random[2][1][7]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[2][1][7]["RewardItem"][1]["Id"] = 3306315
	tSmashPot_Activities_Random[2][1][7]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tSmashPot_Activities_Random[2][1][7]["RewardEffect"] = {}
	tSmashPot_Activities_Random[2][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石	3009001	1			0.05%
	tSmashPot_Activities_Random[2][1][8] = {}
	tSmashPot_Activities_Random[2][1][8]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[2][1][8]["ItemChance"] = 5
	tSmashPot_Activities_Random[2][1][8]["Type"] = 8
	tSmashPot_Activities_Random[2][1][8]["RewardItem"] = {}
	tSmashPot_Activities_Random[2][1][8]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[2][1][8]["RewardItem"][1]["Id"] = 3009001
	tSmashPot_Activities_Random[2][1][8]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSmashPot_Activities_Random[2][1][8]["RewardEffect"] = {}
	tSmashPot_Activities_Random[2][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*3	3009001	3			0.01%
	tSmashPot_Activities_Random[2][1][9] = {}
	tSmashPot_Activities_Random[2][1][9]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[2][1][9]["ItemChance"] = 1
	tSmashPot_Activities_Random[2][1][9]["Type"] = 9
	tSmashPot_Activities_Random[2][1][9]["RewardItem"] = {}
	tSmashPot_Activities_Random[2][1][9]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[2][1][9]["RewardItem"][1]["Id"] = 3009001
	tSmashPot_Activities_Random[2][1][9]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tSmashPot_Activities_Random[2][1][9]["RewardEffect"] = {}
	tSmashPot_Activities_Random[2][1][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 奖池3-气力值	赠
	tSmashPot_Activities_Random[3] = {}
	tSmashPot_Activities_Random[3][1] = {}
	tSmashPot_Activities_Random[3][1]["ItemChanceSum"] = 10000
	-- 10点气力值	3304317	1		70.00%
	tSmashPot_Activities_Random[3][1][1] = {}
	tSmashPot_Activities_Random[3][1][1]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[3][1][1]["ItemChance"] = 7000
	tSmashPot_Activities_Random[3][1][1]["Type"] = 1
	tSmashPot_Activities_Random[3][1][1]["RewardItem"] = {}
	tSmashPot_Activities_Random[3][1][1]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[3][1][1]["RewardItem"][1]["Id"] = 3304317
	tSmashPot_Activities_Random[3][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[3][1][1]["RewardEffect"] = {}
	tSmashPot_Activities_Random[3][1][1]["RewardEffect"]["Effect"] = "angelwing"
	--20点气力值	3304318	1			20.00%
	tSmashPot_Activities_Random[3][1][2] = {}
	tSmashPot_Activities_Random[3][1][2]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[3][1][2]["ItemChance"] = 2000
	tSmashPot_Activities_Random[3][1][2]["Type"] = 2
	tSmashPot_Activities_Random[3][1][2]["RewardItem"] = {}
	tSmashPot_Activities_Random[3][1][2]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[3][1][2]["RewardItem"][1]["Id"] = 3304318
	tSmashPot_Activities_Random[3][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[3][1][2]["RewardEffect"] = {}
	tSmashPot_Activities_Random[3][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 30点气力值	3304319	1			5.00%
	tSmashPot_Activities_Random[3][1][3] = {}
	tSmashPot_Activities_Random[3][1][3]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[3][1][3]["ItemChance"] = 500
	tSmashPot_Activities_Random[3][1][3]["Type"] = 3
	tSmashPot_Activities_Random[3][1][3]["RewardItem"] = {}
	tSmashPot_Activities_Random[3][1][3]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[3][1][3]["RewardItem"][1]["Id"] = 3304319
	tSmashPot_Activities_Random[3][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[3][1][3]["RewardEffect"] = {}
	tSmashPot_Activities_Random[3][1][3]["RewardEffect"]["Effect"] = "angelwing"
	--40点气力值	3304320	1			3.00%
	tSmashPot_Activities_Random[3][1][4] = {}
	tSmashPot_Activities_Random[3][1][4]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[3][1][4]["ItemChance"] = 300
	tSmashPot_Activities_Random[3][1][4]["Type"] = 4
	tSmashPot_Activities_Random[3][1][4]["RewardItem"] = {}
	tSmashPot_Activities_Random[3][1][4]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[3][1][4]["RewardItem"][1]["Id"] = 3304320
	tSmashPot_Activities_Random[3][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[3][1][4]["RewardEffect"] = {}
	tSmashPot_Activities_Random[3][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 50点气力值	3304321	1		1.00%
	tSmashPot_Activities_Random[3][1][5] = {}
	tSmashPot_Activities_Random[3][1][5]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[3][1][5]["ItemChance"] = 100
	tSmashPot_Activities_Random[3][1][5]["Type"] = 5
	tSmashPot_Activities_Random[3][1][5]["RewardItem"] = {}
	tSmashPot_Activities_Random[3][1][5]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[3][1][5]["RewardItem"][1]["Id"] = 3304321
	tSmashPot_Activities_Random[3][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[3][1][5]["RewardEffect"] = {}
	tSmashPot_Activities_Random[3][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 60点气力值	3304322	1			0.70%
	tSmashPot_Activities_Random[3][1][6] = {}
	tSmashPot_Activities_Random[3][1][6]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[3][1][6]["ItemChance"] = 70
	tSmashPot_Activities_Random[3][1][6]["Type"] = 6
	tSmashPot_Activities_Random[3][1][6]["RewardItem"] = {}
	tSmashPot_Activities_Random[3][1][6]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[3][1][6]["RewardItem"][1]["Id"] = 3304322
	tSmashPot_Activities_Random[3][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[3][1][6]["RewardEffect"] = {}
	tSmashPot_Activities_Random[3][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 80点气力值	3304323	1			0.24%
	tSmashPot_Activities_Random[3][1][7] = {}
	tSmashPot_Activities_Random[3][1][7]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[3][1][7]["ItemChance"] = 24
	tSmashPot_Activities_Random[3][1][7]["Type"] = 7
	tSmashPot_Activities_Random[3][1][7]["RewardItem"] = {}
	tSmashPot_Activities_Random[3][1][7]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[3][1][7]["RewardItem"][1]["Id"] = 3304323
	tSmashPot_Activities_Random[3][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[3][1][7]["RewardEffect"] = {}
	tSmashPot_Activities_Random[3][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 100点气力值	3304324	1			0.05%
	tSmashPot_Activities_Random[3][1][8] = {}
	tSmashPot_Activities_Random[3][1][8]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[3][1][8]["ItemChance"] = 5
	tSmashPot_Activities_Random[3][1][8]["Type"] = 8
	tSmashPot_Activities_Random[3][1][8]["RewardItem"] = {}
	tSmashPot_Activities_Random[3][1][8]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[3][1][8]["RewardItem"][1]["Id"] = 3304324
	tSmashPot_Activities_Random[3][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[3][1][8]["RewardEffect"] = {}
	tSmashPot_Activities_Random[3][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 500点气力值	3304328	1		0.01%
	tSmashPot_Activities_Random[3][1][9] = {}
	tSmashPot_Activities_Random[3][1][9]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[3][1][9]["ItemChance"] = 1
	tSmashPot_Activities_Random[3][1][9]["Type"] = 9
	tSmashPot_Activities_Random[3][1][9]["RewardItem"] = {}
	tSmashPot_Activities_Random[3][1][9]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[3][1][9]["RewardItem"][1]["Id"] = 3304328
	tSmashPot_Activities_Random[3][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[3][1][9]["RewardEffect"] = {}
	tSmashPot_Activities_Random[3][1][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 奖池4-赠点	赠
	tSmashPot_Activities_Random[4] = {}
	tSmashPot_Activities_Random[4][1] = {}
	tSmashPot_Activities_Random[4][1]["ItemChanceSum"] = 10000
	-- 10赠点	3304305	1		70.00%
	tSmashPot_Activities_Random[4][1][1] = {}
	tSmashPot_Activities_Random[4][1][1]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[4][1][1]["ItemChance"] = 7000
	tSmashPot_Activities_Random[4][1][1]["Type"] = 1
	tSmashPot_Activities_Random[4][1][1]["RewardItem"] = {}
	tSmashPot_Activities_Random[4][1][1]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[4][1][1]["RewardItem"][1]["Id"] = 3304305
	tSmashPot_Activities_Random[4][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[4][1][1]["RewardEffect"] = {}
	tSmashPot_Activities_Random[4][1][1]["RewardEffect"]["Effect"] = "angelwing"
	--20赠点	3304306	1			20.00%
	tSmashPot_Activities_Random[4][1][2] = {}
	tSmashPot_Activities_Random[4][1][2]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[4][1][2]["ItemChance"] = 2000
	tSmashPot_Activities_Random[4][1][2]["Type"] = 2
	tSmashPot_Activities_Random[4][1][2]["RewardItem"] = {}
	tSmashPot_Activities_Random[4][1][2]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[4][1][2]["RewardItem"][1]["Id"] = 3304306
	tSmashPot_Activities_Random[4][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[4][1][2]["RewardEffect"] = {}
	tSmashPot_Activities_Random[4][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 30赠点	3304307	1			5.00%
	tSmashPot_Activities_Random[4][1][3] = {}
	tSmashPot_Activities_Random[4][1][3]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[4][1][3]["ItemChance"] = 500
	tSmashPot_Activities_Random[4][1][3]["Type"] = 3
	tSmashPot_Activities_Random[4][1][3]["RewardItem"] = {}
	tSmashPot_Activities_Random[4][1][3]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[4][1][3]["RewardItem"][1]["Id"] = 3304307
	tSmashPot_Activities_Random[4][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[4][1][3]["RewardEffect"] = {}
	tSmashPot_Activities_Random[4][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 40赠点	3304308	1			3.00%
	tSmashPot_Activities_Random[4][1][4] = {}
	tSmashPot_Activities_Random[4][1][4]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[4][1][4]["ItemChance"] = 300
	tSmashPot_Activities_Random[4][1][4]["Type"] = 4
	tSmashPot_Activities_Random[4][1][4]["RewardItem"] = {}
	tSmashPot_Activities_Random[4][1][4]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[4][1][4]["RewardItem"][1]["Id"] = 3304308
	tSmashPot_Activities_Random[4][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[4][1][4]["RewardEffect"] = {}
	tSmashPot_Activities_Random[4][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 50赠点	3304309	1			1.00%
	tSmashPot_Activities_Random[4][1][5] = {}
	tSmashPot_Activities_Random[4][1][5]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[4][1][5]["ItemChance"] = 100
	tSmashPot_Activities_Random[4][1][5]["Type"] = 5
	tSmashPot_Activities_Random[4][1][5]["RewardItem"] = {}
	tSmashPot_Activities_Random[4][1][5]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[4][1][5]["RewardItem"][1]["Id"] = 3304309
	tSmashPot_Activities_Random[4][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[4][1][5]["RewardEffect"] = {}
	tSmashPot_Activities_Random[4][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 60赠点	3304310	1		0.70%
	tSmashPot_Activities_Random[4][1][6] = {}
	tSmashPot_Activities_Random[4][1][6]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[4][1][6]["ItemChance"] = 70
	tSmashPot_Activities_Random[4][1][6]["Type"] = 6
	tSmashPot_Activities_Random[4][1][6]["RewardItem"] = {}
	tSmashPot_Activities_Random[4][1][6]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[4][1][6]["RewardItem"][1]["Id"] = 3304310
	tSmashPot_Activities_Random[4][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[4][1][6]["RewardEffect"] = {}
	tSmashPot_Activities_Random[4][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 70赠点	3304307+3304308	1			0.24%
	tSmashPot_Activities_Random[4][1][7] = {}
	tSmashPot_Activities_Random[4][1][7]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[4][1][7]["ItemChance"] = 24
	tSmashPot_Activities_Random[4][1][7]["Type"] = 7
	tSmashPot_Activities_Random[4][1][7]["RewardItem"] = {}
	tSmashPot_Activities_Random[4][1][7]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[4][1][7]["RewardItem"][1]["Id"] = 3304307
	tSmashPot_Activities_Random[4][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[4][1][7]["RewardItem"][2] = {}
	tSmashPot_Activities_Random[4][1][7]["RewardItem"][2]["Id"] = 3304308
	tSmashPot_Activities_Random[4][1][7]["RewardItem"][2]["Attr"] = "0 1"
	tSmashPot_Activities_Random[4][1][7]["RewardEffect"] = {}
	tSmashPot_Activities_Random[4][1][7]["RewardEffect"]["Effect"] = "angelwing"
	--80赠点	3304308	2			0.05%
	tSmashPot_Activities_Random[4][1][8] = {}
	tSmashPot_Activities_Random[4][1][8]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[4][1][8]["ItemChance"] = 5
	tSmashPot_Activities_Random[4][1][8]["Type"] = 8
	tSmashPot_Activities_Random[4][1][8]["RewardItem"] = {}
	tSmashPot_Activities_Random[4][1][8]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[4][1][8]["RewardItem"][1]["Id"] = 3304308
	tSmashPot_Activities_Random[4][1][8]["RewardItem"][1]["Attr"] = "0 2"
	tSmashPot_Activities_Random[4][1][8]["RewardEffect"] = {}
	tSmashPot_Activities_Random[4][1][8]["RewardEffect"]["Effect"] = "angelwing"
	--200赠点	3301244	1			0.01%
	tSmashPot_Activities_Random[4][1][9] = {}
	tSmashPot_Activities_Random[4][1][9]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[4][1][9]["ItemChance"] = 1
	tSmashPot_Activities_Random[4][1][9]["Type"] = 9
	tSmashPot_Activities_Random[4][1][9]["RewardItem"] = {}
	tSmashPot_Activities_Random[4][1][9]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[4][1][9]["RewardItem"][1]["Id"] = 3301244
	tSmashPot_Activities_Random[4][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[4][1][9]["RewardEffect"] = {}
	tSmashPot_Activities_Random[4][1][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 奖池5-练功	赠
	tSmashPot_Activities_Random[5] = {}
	tSmashPot_Activities_Random[5][1] = {}
	tSmashPot_Activities_Random[5][1]["ItemChanceSum"] = 10000
	-- 免费强炼丹	3003124	1		70.00%
	tSmashPot_Activities_Random[5][1][1] = {}
	tSmashPot_Activities_Random[5][1][1]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[5][1][1]["ItemChance"] = 7000
	tSmashPot_Activities_Random[5][1][1]["Type"] = 1
	tSmashPot_Activities_Random[5][1][1]["RewardItem"] = {}
	tSmashPot_Activities_Random[5][1][1]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[5][1][1]["RewardItem"][1]["Id"] = 3003124
	tSmashPot_Activities_Random[5][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmashPot_Activities_Random[5][1][1]["RewardEffect"] = {}
	tSmashPot_Activities_Random[5][1][1]["RewardEffect"]["Effect"] = "angelwing"
	--通神丹	3003125	2			20.00%
	tSmashPot_Activities_Random[5][1][2] = {}
	tSmashPot_Activities_Random[5][1][2]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[5][1][2]["ItemChance"] = 2000
	tSmashPot_Activities_Random[5][1][2]["Type"] = 2
	tSmashPot_Activities_Random[5][1][2]["RewardItem"] = {}
	tSmashPot_Activities_Random[5][1][2]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[5][1][2]["RewardItem"][1]["Id"] = 3003125
	tSmashPot_Activities_Random[5][1][2]["RewardItem"][1]["Attr"] = "0 2 3"
	tSmashPot_Activities_Random[5][1][2]["RewardEffect"] = {}
	tSmashPot_Activities_Random[5][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 强效护心丹	3002030	1			5.00%
	tSmashPot_Activities_Random[5][1][3] = {}
	tSmashPot_Activities_Random[5][1][3]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[5][1][3]["ItemChance"] = 500
	tSmashPot_Activities_Random[5][1][3]["Type"] = 3
	tSmashPot_Activities_Random[5][1][3]["RewardItem"] = {}
	tSmashPot_Activities_Random[5][1][3]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[5][1][3]["RewardItem"][1]["Id"] = 3002030
	tSmashPot_Activities_Random[5][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[5][1][3]["RewardEffect"] = {}
	tSmashPot_Activities_Random[5][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 究极通神丹	3003126	1			3.00%
	tSmashPot_Activities_Random[5][1][4] = {}
	tSmashPot_Activities_Random[5][1][4]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[5][1][4]["ItemChance"] = 300
	tSmashPot_Activities_Random[5][1][4]["Type"] = 4
	tSmashPot_Activities_Random[5][1][4]["RewardItem"] = {}
	tSmashPot_Activities_Random[5][1][4]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[5][1][4]["RewardItem"][1]["Id"] = 3003126
	tSmashPot_Activities_Random[5][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmashPot_Activities_Random[5][1][4]["RewardEffect"] = {}
	tSmashPot_Activities_Random[5][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 免费强炼丹	3003124	5			1.00%
	tSmashPot_Activities_Random[5][1][5] = {}
	tSmashPot_Activities_Random[5][1][5]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[5][1][5]["ItemChance"] = 100
	tSmashPot_Activities_Random[5][1][5]["Type"] = 5
	tSmashPot_Activities_Random[5][1][5]["RewardItem"] = {}
	tSmashPot_Activities_Random[5][1][5]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[5][1][5]["RewardItem"][1]["Id"] = 3003124
	tSmashPot_Activities_Random[5][1][5]["RewardItem"][1]["Attr"] = "0 5 3"
	tSmashPot_Activities_Random[5][1][5]["RewardEffect"] = {}
	tSmashPot_Activities_Random[5][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 通神丹	3003125	10			0.70%
	tSmashPot_Activities_Random[5][1][6] = {}
	tSmashPot_Activities_Random[5][1][6]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[5][1][6]["ItemChance"] = 70
	tSmashPot_Activities_Random[5][1][6]["Type"] = 6
	tSmashPot_Activities_Random[5][1][6]["RewardItem"] = {}
	tSmashPot_Activities_Random[5][1][6]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[5][1][6]["RewardItem"][1]["Id"] = 3003125
	tSmashPot_Activities_Random[5][1][6]["RewardItem"][1]["Attr"] = "0 10 3"
	tSmashPot_Activities_Random[5][1][6]["RewardEffect"] = {}
	tSmashPot_Activities_Random[5][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 究极通神丹	3003126	2			0.24%
	tSmashPot_Activities_Random[5][1][7] = {}
	tSmashPot_Activities_Random[5][1][7]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[5][1][7]["ItemChance"] = 24
	tSmashPot_Activities_Random[5][1][7]["Type"] = 7
	tSmashPot_Activities_Random[5][1][7]["RewardItem"] = {}
	tSmashPot_Activities_Random[5][1][7]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[5][1][7]["RewardItem"][1]["Id"] = 3003126
	tSmashPot_Activities_Random[5][1][7]["RewardItem"][1]["Attr"] = "0 2 3"
	tSmashPot_Activities_Random[5][1][7]["RewardEffect"] = {}
	tSmashPot_Activities_Random[5][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 秘制免费修炼丹	3002926	1			0.05%
	tSmashPot_Activities_Random[5][1][8] = {}
	tSmashPot_Activities_Random[5][1][8]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[5][1][8]["ItemChance"] = 5
	tSmashPot_Activities_Random[5][1][8]["Type"] = 8
	tSmashPot_Activities_Random[5][1][8]["RewardItem"] = {}
	tSmashPot_Activities_Random[5][1][8]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[5][1][8]["RewardItem"][1]["Id"] = 3002926
	tSmashPot_Activities_Random[5][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[5][1][8]["RewardEffect"] = {}
	tSmashPot_Activities_Random[5][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 秘制免费修炼丹	3002926	2			0.01%
	tSmashPot_Activities_Random[5][1][9] = {}
	tSmashPot_Activities_Random[5][1][9]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[5][1][9]["ItemChance"] = 1
	tSmashPot_Activities_Random[5][1][9]["Type"] = 9
	tSmashPot_Activities_Random[5][1][9]["RewardItem"] = {}
	tSmashPot_Activities_Random[5][1][9]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[5][1][9]["RewardItem"][1]["Id"] = 3002926
	tSmashPot_Activities_Random[5][1][9]["RewardItem"][1]["Attr"] = "0 2"
	tSmashPot_Activities_Random[5][1][9]["RewardEffect"] = {}
	tSmashPot_Activities_Random[5][1][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 奖池6-固化	赠
	tSmashPot_Activities_Random[6] = {}
	tSmashPot_Activities_Random[6][1] = {}
	tSmashPot_Activities_Random[6][1]["ItemChanceSum"] = 10000
	-- 四阶神魂包	3008051	1			70.00%
	tSmashPot_Activities_Random[6][1][1] = {}
	tSmashPot_Activities_Random[6][1][1]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[6][1][1]["ItemChance"] = 7000
	tSmashPot_Activities_Random[6][1][1]["Type"] = 1
	tSmashPot_Activities_Random[6][1][1]["RewardItem"] = {}
	tSmashPot_Activities_Random[6][1][1]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[6][1][1]["RewardItem"][1]["Id"] = 3008051
	tSmashPot_Activities_Random[6][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[6][1][1]["RewardEffect"] = {}
	tSmashPot_Activities_Random[6][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 六阶神魂包	3005893	1			20.00%
	tSmashPot_Activities_Random[6][1][2] = {}
	tSmashPot_Activities_Random[6][1][2]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[6][1][2]["ItemChance"] = 2000
	tSmashPot_Activities_Random[6][1][2]["Type"] = 2
	tSmashPot_Activities_Random[6][1][2]["RewardItem"] = {}
	tSmashPot_Activities_Random[6][1][2]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[6][1][2]["RewardItem"][1]["Id"] = 3005893
	tSmashPot_Activities_Random[6][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[6][1][2]["RewardEffect"] = {}
	tSmashPot_Activities_Random[6][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 固化石碎片	3305682	1			5.00%
	tSmashPot_Activities_Random[6][1][3] = {}
	tSmashPot_Activities_Random[6][1][3]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[6][1][3]["ItemChance"] = 500
	tSmashPot_Activities_Random[6][1][3]["Type"] = 3
	tSmashPot_Activities_Random[6][1][3]["RewardItem"] = {}
	tSmashPot_Activities_Random[6][1][3]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[6][1][3]["RewardItem"][1]["Id"] = 3305682
	tSmashPot_Activities_Random[6][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[6][1][3]["RewardEffect"] = {}
	tSmashPot_Activities_Random[6][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 七阶神魂包	3006745	1			3.00%
	tSmashPot_Activities_Random[6][1][4] = {}
	tSmashPot_Activities_Random[6][1][4]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[6][1][4]["ItemChance"] = 300
	tSmashPot_Activities_Random[6][1][4]["Type"] = 4
	tSmashPot_Activities_Random[6][1][4]["RewardItem"] = {}
	tSmashPot_Activities_Random[6][1][4]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[6][1][4]["RewardItem"][1]["Id"] = 3006745
	tSmashPot_Activities_Random[6][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[6][1][4]["RewardEffect"] = {}
	tSmashPot_Activities_Random[6][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 固化石碎片	3305682	2			1.00%
	tSmashPot_Activities_Random[6][1][5] = {}
	tSmashPot_Activities_Random[6][1][5]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[6][1][5]["ItemChance"] = 100
	tSmashPot_Activities_Random[6][1][5]["Type"] = 5
	tSmashPot_Activities_Random[6][1][5]["RewardItem"] = {}
	tSmashPot_Activities_Random[6][1][5]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[6][1][5]["RewardItem"][1]["Id"] = 3305682
	tSmashPot_Activities_Random[6][1][5]["RewardItem"][1]["Attr"] = "0 2"
	tSmashPot_Activities_Random[6][1][5]["RewardEffect"] = {}
	tSmashPot_Activities_Random[6][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 固化石碎片	3305682	4			0.70%
	tSmashPot_Activities_Random[6][1][6] = {}
	tSmashPot_Activities_Random[6][1][6]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[6][1][6]["ItemChance"] = 70
	tSmashPot_Activities_Random[6][1][6]["Type"] = 6
	tSmashPot_Activities_Random[6][1][6]["RewardItem"] = {}
	tSmashPot_Activities_Random[6][1][6]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[6][1][6]["RewardItem"][1]["Id"] = 3305682
	tSmashPot_Activities_Random[6][1][6]["RewardItem"][1]["Attr"] = "0 4"
	tSmashPot_Activities_Random[6][1][6]["RewardEffect"] = {}
	tSmashPot_Activities_Random[6][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 固化石碎片	3305682	6			0.24%
	tSmashPot_Activities_Random[6][1][7] = {}
	tSmashPot_Activities_Random[6][1][7]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[6][1][7]["ItemChance"] = 24
	tSmashPot_Activities_Random[6][1][7]["Type"] = 7
	tSmashPot_Activities_Random[6][1][7]["RewardItem"] = {}
	tSmashPot_Activities_Random[6][1][7]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[6][1][7]["RewardItem"][1]["Id"] = 3305682
	tSmashPot_Activities_Random[6][1][7]["RewardItem"][1]["Attr"] = "0 6"
	tSmashPot_Activities_Random[6][1][7]["RewardEffect"] = {}
	tSmashPot_Activities_Random[6][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 固化石碎片	3305682	15			0.05%
	tSmashPot_Activities_Random[6][1][8] = {}
	tSmashPot_Activities_Random[6][1][8]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[6][1][8]["ItemChance"] = 5
	tSmashPot_Activities_Random[6][1][8]["Type"] = 8
	tSmashPot_Activities_Random[6][1][8]["RewardItem"] = {}
	tSmashPot_Activities_Random[6][1][8]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[6][1][8]["RewardItem"][1]["Id"] = 3305682
	tSmashPot_Activities_Random[6][1][8]["RewardItem"][1]["Attr"] = "0 15"
	tSmashPot_Activities_Random[6][1][8]["RewardEffect"] = {}
	tSmashPot_Activities_Random[6][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 固化石碎片	3305682	25			0.01%
	tSmashPot_Activities_Random[6][1][9] = {}
	tSmashPot_Activities_Random[6][1][9]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[6][1][9]["ItemChance"] = 1
	tSmashPot_Activities_Random[6][1][9]["Type"] = 9
	tSmashPot_Activities_Random[6][1][9]["RewardItem"] = {}
	tSmashPot_Activities_Random[6][1][9]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[6][1][9]["RewardItem"][1]["Id"] = 3305682
	tSmashPot_Activities_Random[6][1][9]["RewardItem"][1]["Attr"] = "0 25"
	tSmashPot_Activities_Random[6][1][9]["RewardEffect"] = {}
	tSmashPot_Activities_Random[6][1][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 奖池7-流星龙珠	赠
	tSmashPot_Activities_Random[7] = {}
	tSmashPot_Activities_Random[7][1] = {}
	tSmashPot_Activities_Random[7][1]["ItemChanceSum"] = 10000
	-- 流星卷	720027	1		70.00%
	tSmashPot_Activities_Random[7][1][1] = {}
	tSmashPot_Activities_Random[7][1][1]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[7][1][1]["ItemChance"] = 7000
	tSmashPot_Activities_Random[7][1][1]["Type"] = 1
	tSmashPot_Activities_Random[7][1][1]["RewardItem"] = {}
	tSmashPot_Activities_Random[7][1][1]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[7][1][1]["RewardItem"][1]["Id"] = 720027
	tSmashPot_Activities_Random[7][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmashPot_Activities_Random[7][1][1]["RewardEffect"] = {}
	tSmashPot_Activities_Random[7][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 流星卷	720027	1			20.00%
	tSmashPot_Activities_Random[7][1][2] = {}
	tSmashPot_Activities_Random[7][1][2]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[7][1][2]["ItemChance"] = 2000
	tSmashPot_Activities_Random[7][1][2]["Type"] = 2
	tSmashPot_Activities_Random[7][1][2]["RewardItem"] = {}
	tSmashPot_Activities_Random[7][1][2]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[7][1][2]["RewardItem"][1]["Id"] = 720027
	tSmashPot_Activities_Random[7][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmashPot_Activities_Random[7][1][2]["RewardEffect"] = {}
	tSmashPot_Activities_Random[7][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 流星卷*2	720027	2			5.00%
	tSmashPot_Activities_Random[7][1][3] = {}
	tSmashPot_Activities_Random[7][1][3]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[7][1][3]["ItemChance"] = 500
	tSmashPot_Activities_Random[7][1][3]["Type"] = 3
	tSmashPot_Activities_Random[7][1][3]["RewardItem"] = {}
	tSmashPot_Activities_Random[7][1][3]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[7][1][3]["RewardItem"][1]["Id"] = 720027
	tSmashPot_Activities_Random[7][1][3]["RewardItem"][1]["Attr"] = "0 2 3"
	tSmashPot_Activities_Random[7][1][3]["RewardEffect"] = {}
	tSmashPot_Activities_Random[7][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 流星卷*3	720027	3			3.00%
	tSmashPot_Activities_Random[7][1][4] = {}
	tSmashPot_Activities_Random[7][1][4]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[7][1][4]["ItemChance"] = 300
	tSmashPot_Activities_Random[7][1][4]["Type"] = 4
	tSmashPot_Activities_Random[7][1][4]["RewardItem"] = {}
	tSmashPot_Activities_Random[7][1][4]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[7][1][4]["RewardItem"][1]["Id"] = 720027
	tSmashPot_Activities_Random[7][1][4]["RewardItem"][1]["Attr"] = "0 3 3"
	tSmashPot_Activities_Random[7][1][4]["RewardEffect"] = {}
	tSmashPot_Activities_Random[7][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 流星卷*3	720027	3			1.00%
	tSmashPot_Activities_Random[7][1][5] = {}
	tSmashPot_Activities_Random[7][1][5]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[7][1][5]["ItemChance"] = 100
	tSmashPot_Activities_Random[7][1][5]["Type"] = 5
	tSmashPot_Activities_Random[7][1][5]["RewardItem"] = {}
	tSmashPot_Activities_Random[7][1][5]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[7][1][5]["RewardItem"][1]["Id"] = 720027
	tSmashPot_Activities_Random[7][1][5]["RewardItem"][1]["Attr"] = "0 3 3"
	tSmashPot_Activities_Random[7][1][5]["RewardEffect"] = {}
	tSmashPot_Activities_Random[7][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 流星卷*5	720027	5			0.70%
	tSmashPot_Activities_Random[7][1][6] = {}
	tSmashPot_Activities_Random[7][1][6]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[7][1][6]["ItemChance"] = 70
	tSmashPot_Activities_Random[7][1][6]["Type"] = 6
	tSmashPot_Activities_Random[7][1][6]["RewardItem"] = {}
	tSmashPot_Activities_Random[7][1][6]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[7][1][6]["RewardItem"][1]["Id"] = 3306314
	tSmashPot_Activities_Random[7][1][6]["RewardItem"][1]["Attr"] = "0 1 "
	tSmashPot_Activities_Random[7][1][6]["RewardEffect"] = {}
	tSmashPot_Activities_Random[7][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠	1088000	1			0.24%
	tSmashPot_Activities_Random[7][1][7] = {}
	tSmashPot_Activities_Random[7][1][7]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[7][1][7]["ItemChance"] = 24
	tSmashPot_Activities_Random[7][1][7]["Type"] = 7
	tSmashPot_Activities_Random[7][1][7]["RewardItem"] = {}
	tSmashPot_Activities_Random[7][1][7]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[7][1][7]["RewardItem"][1]["Id"] = 1088000
	tSmashPot_Activities_Random[7][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmashPot_Activities_Random[7][1][7]["RewardEffect"] = {}
	tSmashPot_Activities_Random[7][1][7]["RewardEffect"]["Effect"] = "angelwing"
	--龙珠	1088000	1			0.05%
	tSmashPot_Activities_Random[7][1][8] = {}
	tSmashPot_Activities_Random[7][1][8]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[7][1][8]["ItemChance"] = 5
	tSmashPot_Activities_Random[7][1][8]["Type"] = 8
	tSmashPot_Activities_Random[7][1][8]["RewardItem"] = {}
	tSmashPot_Activities_Random[7][1][8]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[7][1][8]["RewardItem"][1]["Id"] = 1088000
	tSmashPot_Activities_Random[7][1][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tSmashPot_Activities_Random[7][1][8]["RewardEffect"] = {}
	tSmashPot_Activities_Random[7][1][8]["RewardEffect"]["Effect"] = "angelwing"
	--龙珠	1088000	3			0.01%
	tSmashPot_Activities_Random[7][1][9] = {}
	tSmashPot_Activities_Random[7][1][9]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[7][1][9]["ItemChance"] = 1
	tSmashPot_Activities_Random[7][1][9]["Type"] = 9
	tSmashPot_Activities_Random[7][1][9]["RewardItem"] = {}
	tSmashPot_Activities_Random[7][1][9]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[7][1][9]["RewardItem"][1]["Id"] = 1088000
	tSmashPot_Activities_Random[7][1][9]["RewardItem"][1]["Attr"] = "0 3 3"
	tSmashPot_Activities_Random[7][1][9]["RewardEffect"] = {}
	tSmashPot_Activities_Random[7][1][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 奖池8-大杂烩	赠
	tSmashPot_Activities_Random[8] = {}
	tSmashPot_Activities_Random[8][1] = {}
	tSmashPot_Activities_Random[8][1]["ItemChanceSum"] = 10000
	-- 赤炼石+1	730001	1		70.00%
	--2019.04.16 人参果
	tSmashPot_Activities_Random[8][1][1] = {}
	tSmashPot_Activities_Random[8][1][1]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[8][1][1]["ItemChance"] = 7000
	tSmashPot_Activities_Random[8][1][1]["Type"] = 1
	tSmashPot_Activities_Random[8][1][1]["RewardItem"] = {}
	tSmashPot_Activities_Random[8][1][1]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[8][1][1]["RewardItem"][1]["Id"] = 3009100--2019.04.16 人参果
	tSmashPot_Activities_Random[8][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[8][1][1]["RewardEffect"] = {}
	tSmashPot_Activities_Random[8][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石	3009000	1			20.00%
	--人参果*2
	tSmashPot_Activities_Random[8][1][2] = {}
	tSmashPot_Activities_Random[8][1][2]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[8][1][2]["ItemChance"] = 2000
	tSmashPot_Activities_Random[8][1][2]["Type"] = 2
	tSmashPot_Activities_Random[8][1][2]["RewardItem"] = {}
	tSmashPot_Activities_Random[8][1][2]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[8][1][2]["RewardItem"][1]["Id"] = 3009100--人参果*2
	tSmashPot_Activities_Random[8][1][2]["RewardItem"][1]["Attr"] = "0 2"
	tSmashPot_Activities_Random[8][1][2]["RewardEffect"] = {}
	tSmashPot_Activities_Random[8][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 30点气力值	3304319	1			5.00%
	--人参果*3
	tSmashPot_Activities_Random[8][1][3] = {}
	tSmashPot_Activities_Random[8][1][3]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[8][1][3]["ItemChance"] = 500
	tSmashPot_Activities_Random[8][1][3]["Type"] = 3
	tSmashPot_Activities_Random[8][1][3]["RewardItem"] = {}
	tSmashPot_Activities_Random[8][1][3]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[8][1][3]["RewardItem"][1]["Id"] = 3009100--人参果*3
	tSmashPot_Activities_Random[8][1][3]["RewardItem"][1]["Attr"] = "0 3"
	tSmashPot_Activities_Random[8][1][3]["RewardEffect"] = {}
	tSmashPot_Activities_Random[8][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 40赠点	3304308	1			3.00%
	--人参果*4
	tSmashPot_Activities_Random[8][1][4] = {}
	tSmashPot_Activities_Random[8][1][4]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[8][1][4]["ItemChance"] = 300
	tSmashPot_Activities_Random[8][1][4]["Type"] = 4
	tSmashPot_Activities_Random[8][1][4]["RewardItem"] = {}
	tSmashPot_Activities_Random[8][1][4]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[8][1][4]["RewardItem"][1]["Id"] = 3009100--人参果*4
	tSmashPot_Activities_Random[8][1][4]["RewardItem"][1]["Attr"] = "0 4"
	tSmashPot_Activities_Random[8][1][4]["RewardEffect"] = {}
	tSmashPot_Activities_Random[8][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2	730002	1			1.00%
	tSmashPot_Activities_Random[8][1][5] = {}
	tSmashPot_Activities_Random[8][1][5]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[8][1][5]["ItemChance"] = 100
	tSmashPot_Activities_Random[8][1][5]["Type"] = 5
	tSmashPot_Activities_Random[8][1][5]["RewardItem"] = {}
	tSmashPot_Activities_Random[8][1][5]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[8][1][5]["RewardItem"][1]["Id"] = 730002
	tSmashPot_Activities_Random[8][1][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSmashPot_Activities_Random[8][1][5]["RewardEffect"] = {}
	tSmashPot_Activities_Random[8][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石	3009000	5		0.70%
	tSmashPot_Activities_Random[8][1][6] = {}
	tSmashPot_Activities_Random[8][1][6]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[8][1][6]["ItemChance"] = 70
	tSmashPot_Activities_Random[8][1][6]["Type"] = 6
	tSmashPot_Activities_Random[8][1][6]["RewardItem"] = {}
	tSmashPot_Activities_Random[8][1][6]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[8][1][6]["RewardItem"][1]["Id"] = 3009000
	tSmashPot_Activities_Random[8][1][6]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tSmashPot_Activities_Random[8][1][6]["RewardEffect"] = {}
	tSmashPot_Activities_Random[8][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 80点气力值	3304323	1			0.24%
	tSmashPot_Activities_Random[8][1][7] = {}
	tSmashPot_Activities_Random[8][1][7]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[8][1][7]["ItemChance"] = 24
	tSmashPot_Activities_Random[8][1][7]["Type"] = 7
	tSmashPot_Activities_Random[8][1][7]["RewardItem"] = {}
	tSmashPot_Activities_Random[8][1][7]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[8][1][7]["RewardItem"][1]["Id"] = 3304323
	tSmashPot_Activities_Random[8][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[8][1][7]["RewardEffect"] = {}
	tSmashPot_Activities_Random[8][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 80点赠点	3304308	2			0.05%
	tSmashPot_Activities_Random[8][1][8] = {}
	tSmashPot_Activities_Random[8][1][8]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[8][1][8]["ItemChance"] = 5
	tSmashPot_Activities_Random[8][1][8]["Type"] = 8
	tSmashPot_Activities_Random[8][1][8]["RewardItem"] = {}
	tSmashPot_Activities_Random[8][1][8]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[8][1][8]["RewardItem"][1]["Id"] = 3304308
	tSmashPot_Activities_Random[8][1][8]["RewardItem"][1]["Attr"] = "0 2"
	tSmashPot_Activities_Random[8][1][8]["RewardEffect"] = {}
	tSmashPot_Activities_Random[8][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+4	730004	1			0.01%
	tSmashPot_Activities_Random[8][1][9] = {}
	tSmashPot_Activities_Random[8][1][9]["RandomItemChanceType"] = 2
	tSmashPot_Activities_Random[8][1][9]["ItemChance"] = 1
	tSmashPot_Activities_Random[8][1][9]["Type"] = 9
	tSmashPot_Activities_Random[8][1][9]["RewardItem"] = {}
	tSmashPot_Activities_Random[8][1][9]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[8][1][9]["RewardItem"][1]["Id"] = 730004
	tSmashPot_Activities_Random[8][1][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSmashPot_Activities_Random[8][1][9]["RewardEffect"] = {}
	tSmashPot_Activities_Random[8][1][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 暴击奖池
	-- 每次砸罐发生暴击几率3%，对应可获得下列奖励
	tSmashPot_Activities_Random[9] = {}
	tSmashPot_Activities_Random[9][1] = {}
	-- 奖池1	赤炼石+5（赠）	
	tSmashPot_Activities_Random[9][1][1] = {}
	tSmashPot_Activities_Random[9][1][1]["Type"] = 1
	tSmashPot_Activities_Random[9][1][1]["RewardItem"] = {}
	tSmashPot_Activities_Random[9][1][1]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[9][1][1]["RewardItem"][1]["Id"] = 730005
	tSmashPot_Activities_Random[9][1][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSmashPot_Activities_Random[9][1][1]["RewardEffect"] = {}
	tSmashPot_Activities_Random[9][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 奖池2	晶莹星陨石（2天）	
	tSmashPot_Activities_Random[9][1][2] = {}
	tSmashPot_Activities_Random[9][1][2]["Type"] = 2
	tSmashPot_Activities_Random[9][1][2]["RewardItem"] = {}
	tSmashPot_Activities_Random[9][1][2]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[9][1][2]["RewardItem"][1]["Id"] = 3009002
	tSmashPot_Activities_Random[9][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSmashPot_Activities_Random[9][1][2]["RewardEffect"] = {}
	tSmashPot_Activities_Random[9][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 奖池3	2000点气力值
	-- 3000点气力值 
	tSmashPot_Activities_Random[9][1][3] = {}
	tSmashPot_Activities_Random[9][1][3]["Type"] = 3
	tSmashPot_Activities_Random[9][1][3]["RewardStrengthValue"] = {}
	tSmashPot_Activities_Random[9][1][3]["RewardStrengthValue"]["Value"] = 3000
	tSmashPot_Activities_Random[9][1][3]["RewardEffect"] = {}
	tSmashPot_Activities_Random[9][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 奖池4	800赠点
	tSmashPot_Activities_Random[9][1][4] = {}
	tSmashPot_Activities_Random[9][1][4]["Type"] = 4
	tSmashPot_Activities_Random[9][1][4]["RewardEMoneyMono"] = {}
	tSmashPot_Activities_Random[9][1][4]["RewardEMoneyMono"]["Value"] = 800
	tSmashPot_Activities_Random[9][1][4]["RewardEffect"] = {}
	tSmashPot_Activities_Random[9][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 奖池5	究极通玄丹*10	
	--2019.04.16 龙鳞果*5
	tSmashPot_Activities_Random[9][1][5] = {}
	tSmashPot_Activities_Random[9][1][5]["Type"] = 5
	tSmashPot_Activities_Random[9][1][5]["RewardItem"] = {}
	tSmashPot_Activities_Random[9][1][5]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[9][1][5]["RewardItem"][1]["Id"] = 3009101--2019.04.16 龙鳞果*5
	tSmashPot_Activities_Random[9][1][5]["RewardItem"][1]["Attr"] = "0 5"
	tSmashPot_Activities_Random[9][1][5]["RewardEffect"] = {}
	tSmashPot_Activities_Random[9][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 奖池7	龙珠卷(赠)	
	tSmashPot_Activities_Random[9][1][7] = {}
	tSmashPot_Activities_Random[9][1][7]["Type"] = 7
	tSmashPot_Activities_Random[9][1][7]["RewardItem"] = {}
	tSmashPot_Activities_Random[9][1][7]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[9][1][7]["RewardItem"][1]["Id"] = 3200822
	tSmashPot_Activities_Random[9][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_Random[9][1][7]["RewardEffect"] = {}
	tSmashPot_Activities_Random[9][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 奖池8	赤炼石+5（赠）	
	tSmashPot_Activities_Random[9][1][8] = {}
	tSmashPot_Activities_Random[9][1][8]["Type"] = 8
	tSmashPot_Activities_Random[9][1][8]["RewardItem"] = {}
	tSmashPot_Activities_Random[9][1][8]["RewardItem"][1] = {}
	tSmashPot_Activities_Random[9][1][8]["RewardItem"][1]["Id"] = 730005
	tSmashPot_Activities_Random[9][1][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tSmashPot_Activities_Random[9][1][8]["RewardEffect"] = {}
	tSmashPot_Activities_Random[9][1][8]["RewardEffect"]["Effect"] = "angelwing"
	

local tSmashPot_Activities_RankingReward = {}
	-- 个人累计目标奖励	奖励
	-- 10	100气力值
	tSmashPot_Activities_RankingReward["UserRanking"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][1] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][1]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["UserRanking"][1]["LogStep"] = "1[4-1]"
	tSmashPot_Activities_RankingReward["UserRanking"][1]["RewardStrengthValue"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][1]["RewardStrengthValue"]["Value"] = 100
	tSmashPot_Activities_RankingReward["UserRanking"][1]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 20	200气力值
	tSmashPot_Activities_RankingReward["UserRanking"][2] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][2]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["UserRanking"][2]["LogStep"] = "1[4-2]"
	tSmashPot_Activities_RankingReward["UserRanking"][2]["RewardStrengthValue"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][2]["RewardStrengthValue"]["Value"] = 200
	tSmashPot_Activities_RankingReward["UserRanking"][2]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 30	300气力值
	tSmashPot_Activities_RankingReward["UserRanking"][3] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][3]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["UserRanking"][3]["LogStep"] = "1[4-3]"
	tSmashPot_Activities_RankingReward["UserRanking"][3]["RewardStrengthValue"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][3]["RewardStrengthValue"]["Value"] = 300
	tSmashPot_Activities_RankingReward["UserRanking"][3]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 50	500气力值
	tSmashPot_Activities_RankingReward["UserRanking"][4] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][4]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["UserRanking"][4]["LogStep"] = "1[4-4]"
	tSmashPot_Activities_RankingReward["UserRanking"][4]["RewardStrengthValue"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][4]["RewardStrengthValue"]["Value"] = 500
	tSmashPot_Activities_RankingReward["UserRanking"][4]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 80	800气力值
	tSmashPot_Activities_RankingReward["UserRanking"][5] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][5]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["UserRanking"][5]["LogStep"] = "1[4-5]"
	tSmashPot_Activities_RankingReward["UserRanking"][5]["RewardStrengthValue"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][5]["RewardStrengthValue"]["Value"] = 800
	tSmashPot_Activities_RankingReward["UserRanking"][5]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 100	1000气力值
	tSmashPot_Activities_RankingReward["UserRanking"][6] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][6]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["UserRanking"][6]["LogStep"] = "1[4-6]"
	tSmashPot_Activities_RankingReward["UserRanking"][6]["RewardStrengthValue"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][6]["RewardStrengthValue"]["Value"] = 1000
	tSmashPot_Activities_RankingReward["UserRanking"][6]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 200	2000气力值
	tSmashPot_Activities_RankingReward["UserRanking"][7] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][7]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["UserRanking"][7]["LogStep"] = "1[4-7]"
	tSmashPot_Activities_RankingReward["UserRanking"][7]["RewardStrengthValue"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][7]["RewardStrengthValue"]["Value"] = 2000
	tSmashPot_Activities_RankingReward["UserRanking"][7]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 500	3000气力值
	tSmashPot_Activities_RankingReward["UserRanking"][8] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][8]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["UserRanking"][8]["LogStep"] = "1[4-8]"
	tSmashPot_Activities_RankingReward["UserRanking"][8]["RewardStrengthValue"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][8]["RewardStrengthValue"]["Value"] = 3000
	tSmashPot_Activities_RankingReward["UserRanking"][8]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000	5000气力值
	tSmashPot_Activities_RankingReward["UserRanking"][9] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][9]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["UserRanking"][9]["LogStep"] = "1[4-9]"
	tSmashPot_Activities_RankingReward["UserRanking"][9]["RewardStrengthValue"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][9]["RewardStrengthValue"]["Value"] = 5000
	tSmashPot_Activities_RankingReward["UserRanking"][9]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["UserRanking"][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 排行榜奖励
	tSmashPot_Activities_RankingReward["AllRanking"] = {}
	-- 1	10W修为值	
	--2019.04.16 人参果*50
	tSmashPot_Activities_RankingReward["AllRanking"][1] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][1]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["AllRanking"][1]["LogStep"] = "1[5]"
	-- tSmashPot_Activities_RankingReward["AllRanking"][1]["RewardRepairValue"] = {}
	-- tSmashPot_Activities_RankingReward["AllRanking"][1]["RewardRepairValue"]["Value"] = 100000
	tSmashPot_Activities_RankingReward["AllRanking"][1]["RewardItem"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][1]["RewardItem"][1] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][1]["RewardItem"][1]["Id"] = 3009100--2019.04.16 人参果*50
	tSmashPot_Activities_RankingReward["AllRanking"][1]["RewardItem"][1]["Attr"] = "0 50"
	tSmashPot_Activities_RankingReward["AllRanking"][1]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 2	9W修为值
	--人参果*45
	tSmashPot_Activities_RankingReward["AllRanking"][2] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][2]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["AllRanking"][2]["LogStep"] = "1[5]"
	-- tSmashPot_Activities_RankingReward["AllRanking"][2]["RewardRepairValue"] = {}
	-- tSmashPot_Activities_RankingReward["AllRanking"][2]["RewardRepairValue"]["Value"] = 90000
	tSmashPot_Activities_RankingReward["AllRanking"][2]["RewardItem"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][2]["RewardItem"][1] ={}
	tSmashPot_Activities_RankingReward["AllRanking"][2]["RewardItem"][1]["Id"] = 3009100--人参果*45
	tSmashPot_Activities_RankingReward["AllRanking"][2]["RewardItem"][1]["Attr"] = "0 45"
	tSmashPot_Activities_RankingReward["AllRanking"][2]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3	8W修为值
	--人参果*40
	tSmashPot_Activities_RankingReward["AllRanking"][3] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][3]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["AllRanking"][3]["LogStep"] = "1[5]"
	-- tSmashPot_Activities_RankingReward["AllRanking"][3]["RewardRepairValue"] = {}
	-- tSmashPot_Activities_RankingReward["AllRanking"][3]["RewardRepairValue"]["Value"] = 80000
	tSmashPot_Activities_RankingReward["AllRanking"][3]["RewardItem"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][3]["RewardItem"][1]= {}
	tSmashPot_Activities_RankingReward["AllRanking"][3]["RewardItem"][1]["Id"] = 3009100--人参果*40
	tSmashPot_Activities_RankingReward["AllRanking"][3]["RewardItem"][1]["Attr"] = "0 40"
	tSmashPot_Activities_RankingReward["AllRanking"][3]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 4	7W修为值
	--人参果*35
	tSmashPot_Activities_RankingReward["AllRanking"][4] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][4]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["AllRanking"][4]["LogStep"] = "1[5]"
	-- tSmashPot_Activities_RankingReward["AllRanking"][4]["RewardRepairValue"] = {}
	-- tSmashPot_Activities_RankingReward["AllRanking"][4]["RewardRepairValue"]["Value"] = 70000
	tSmashPot_Activities_RankingReward["AllRanking"][4]["RewardItem"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][4]["RewardItem"][1] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][4]["RewardItem"][1]["Id"] = 3009100--人参果*35
	tSmashPot_Activities_RankingReward["AllRanking"][4]["RewardItem"][1]["Attr"] = "0 35"
	tSmashPot_Activities_RankingReward["AllRanking"][4]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 5	6W修为值
	--人参果*30
	tSmashPot_Activities_RankingReward["AllRanking"][5] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][5]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["AllRanking"][5]["LogStep"] = "1[5]"
	-- tSmashPot_Activities_RankingReward["AllRanking"][5]["RewardRepairValue"] = {}
	-- tSmashPot_Activities_RankingReward["AllRanking"][5]["RewardRepairValue"]["Value"] = 60000
	tSmashPot_Activities_RankingReward["AllRanking"][5]["RewardItem"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][5]["RewardItem"][1] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][5]["RewardItem"][1]["Id"] = 3009100--人参果*30
	tSmashPot_Activities_RankingReward["AllRanking"][5]["RewardItem"][1]["Attr"] = "0 30"
	tSmashPot_Activities_RankingReward["AllRanking"][5]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 6	5W修为值
	--人参果*20
	tSmashPot_Activities_RankingReward["AllRanking"][6] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][6]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["AllRanking"][6]["LogStep"] = "1[5]"
	-- tSmashPot_Activities_RankingReward["AllRanking"][6]["RewardRepairValue"] = {}
	-- tSmashPot_Activities_RankingReward["AllRanking"][6]["RewardRepairValue"]["Value"] = 50000
	tSmashPot_Activities_RankingReward["AllRanking"][6]["RewardItem"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][6]["RewardItem"][1] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][6]["RewardItem"][1]["Id"] = 3009100--人参果*20
	tSmashPot_Activities_RankingReward["AllRanking"][6]["RewardItem"][1]["Attr"] = "0 20"
	tSmashPot_Activities_RankingReward["AllRanking"][6]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 7	4W修为值
	--人参果*20
	tSmashPot_Activities_RankingReward["AllRanking"][7] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][7]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["AllRanking"][7]["LogStep"] = "1[5]"
	-- tSmashPot_Activities_RankingReward["AllRanking"][7]["RewardRepairValue"] = {}
	-- tSmashPot_Activities_RankingReward["AllRanking"][7]["RewardRepairValue"]["Value"] = 40000
	tSmashPot_Activities_RankingReward["AllRanking"][7]["RewardItem"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][7]["RewardItem"][1] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][7]["RewardItem"][1]["Id"] = 3009100--人参果*20
	tSmashPot_Activities_RankingReward["AllRanking"][7]["RewardItem"][1]["Attr"] = "0 20"
	tSmashPot_Activities_RankingReward["AllRanking"][7]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 8	3W修为值
	--人参果*10
	tSmashPot_Activities_RankingReward["AllRanking"][8] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][8]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["AllRanking"][8]["LogStep"] = "1[5]"
	-- tSmashPot_Activities_RankingReward["AllRanking"][8]["RewardRepairValue"] = {}
	-- tSmashPot_Activities_RankingReward["AllRanking"][8]["RewardRepairValue"]["Value"] = 30000
	tSmashPot_Activities_RankingReward["AllRanking"][8]["RewardItem"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][8]["RewardItem"][1] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][8]["RewardItem"][1]["Id"] = 3009100--人参果*10
	tSmashPot_Activities_RankingReward["AllRanking"][8]["RewardItem"][1]["Attr"] = "0 10"
	tSmashPot_Activities_RankingReward["AllRanking"][8]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 9	2W修为值
	--人参果*10
	tSmashPot_Activities_RankingReward["AllRanking"][9] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][9]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["AllRanking"][9]["LogStep"] = "1[5]"
	-- tSmashPot_Activities_RankingReward["AllRanking"][9]["RewardRepairValue"] = {}
	-- tSmashPot_Activities_RankingReward["AllRanking"][9]["RewardRepairValue"]["Value"] = 20000
	tSmashPot_Activities_RankingReward["AllRanking"][9]["RewardItem"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][9]["RewardItem"][1] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][9]["RewardItem"][1]["Id"] = 3009100--人参果*10
	tSmashPot_Activities_RankingReward["AllRanking"][9]["RewardItem"][1]["Attr"] = "0 10"
	tSmashPot_Activities_RankingReward["AllRanking"][9]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 10	1W修为值
	--人参果*5
	tSmashPot_Activities_RankingReward["AllRanking"][10] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][10]["LogId"] = 12000899
	tSmashPot_Activities_RankingReward["AllRanking"][10]["LogStep"] = "1[5]"
	-- tSmashPot_Activities_RankingReward["AllRanking"][10]["RewardRepairValue"] = {}
	-- tSmashPot_Activities_RankingReward["AllRanking"][10]["RewardRepairValue"]["Value"] = 10000
	tSmashPot_Activities_RankingReward["AllRanking"][10]["RewardItem"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][10]["RewardItem"][1] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][10]["RewardItem"][1]["Id"] = 3009100--人参果*5
	tSmashPot_Activities_RankingReward["AllRanking"][10]["RewardItem"][1]["Attr"] = "0 5"
	tSmashPot_Activities_RankingReward["AllRanking"][10]["RewardEffect"] = {}
	tSmashPot_Activities_RankingReward["AllRanking"][10]["RewardEffect"]["Effect"] = "angelwing"

	
-- 怪物掉落-------------------------------------------
local tSmashPot_Activities_KillMonster = {}
	tSmashPot_Activities_KillMonster[1] = {}
	-- 片区怪物掉落
	tSmashPot_Activities_KillMonster[1][1] = {}
	-- 剑气	150	1%	3305662
	tSmashPot_Activities_KillMonster[1][1][1] = {}
	tSmashPot_Activities_KillMonster[1][1][1]["RandomItemChanceType"] = 3
	tSmashPot_Activities_KillMonster[1][1][1]["ItemSelfChanceSum"] = 10000
	tSmashPot_Activities_KillMonster[1][1][1]["ItemChance"] = 100
	tSmashPot_Activities_KillMonster[1][1][1]["Log"] = "0,0,0,0,12000899,1[1],3305662,1"
	tSmashPot_Activities_KillMonster[1][1][1]["EventType"] = 168
	tSmashPot_Activities_KillMonster[1][1][1]["DataType"] = 63
	tSmashPot_Activities_KillMonster[1][1][1]["RewardData"] = 150
	tSmashPot_Activities_KillMonster[1][1][1]["RewardDelay"] = 1
	tSmashPot_Activities_KillMonster[1][1][1]["RewardTimeType"] = 4
	tSmashPot_Activities_KillMonster[1][1][1]["RewardItem"] = {}
	tSmashPot_Activities_KillMonster[1][1][1]["RewardItem"][1] = {}
	tSmashPot_Activities_KillMonster[1][1][1]["RewardItem"][1]["Id"] = 3305662
	tSmashPot_Activities_KillMonster[1][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_KillMonster[1][1][1]["RewardEffect"] = {}
	tSmashPot_Activities_KillMonster[1][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 刷新券	25	3%	3305663
	-- tSmashPot_Activities_KillMonster[1][2] = {}
	tSmashPot_Activities_KillMonster[1][1][2] = {}
	tSmashPot_Activities_KillMonster[1][1][2]["RandomItemChanceType"] = 3
	tSmashPot_Activities_KillMonster[1][1][2]["ItemSelfChanceSum"] = 10000
	tSmashPot_Activities_KillMonster[1][1][2]["ItemChance"] = 300
	tSmashPot_Activities_KillMonster[1][1][2]["Log"] = "0,0,0,0,12000899,1[2],3305663,1"
	tSmashPot_Activities_KillMonster[1][1][2]["EventType"] = 168
	tSmashPot_Activities_KillMonster[1][1][2]["DataType"] = 65
	tSmashPot_Activities_KillMonster[1][1][2]["RewardData"] = 5
	tSmashPot_Activities_KillMonster[1][1][2]["RewardDelay"] = 1
	tSmashPot_Activities_KillMonster[1][1][2]["RewardTimeType"] = 4
	tSmashPot_Activities_KillMonster[1][1][2]["RewardItem"] = {}
	tSmashPot_Activities_KillMonster[1][1][2]["RewardItem"][1] = {}
	tSmashPot_Activities_KillMonster[1][1][2]["RewardItem"][1]["Id"] = 3305663
	tSmashPot_Activities_KillMonster[1][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_KillMonster[1][1][2]["RewardEffect"] = {}
	tSmashPot_Activities_KillMonster[1][1][2]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tSmashPot_Activities_KillMonster[2] = {}
	-- 潜龙渊几率翻倍
	tSmashPot_Activities_KillMonster[2][1] = {}
	-- 剑气	150	2%	3305662
	tSmashPot_Activities_KillMonster[2][1][1] = {}
	tSmashPot_Activities_KillMonster[2][1][1]["RandomItemChanceType"] = 3
	tSmashPot_Activities_KillMonster[2][1][1]["ItemSelfChanceSum"] = 10000
	tSmashPot_Activities_KillMonster[2][1][1]["ItemChance"] = 200
	tSmashPot_Activities_KillMonster[2][1][1]["Log"] = "0,0,0,0,12000899,1[1],3305662,1"
	tSmashPot_Activities_KillMonster[2][1][1]["EventType"] = 168
	tSmashPot_Activities_KillMonster[2][1][1]["DataType"] = 63
	tSmashPot_Activities_KillMonster[2][1][1]["RewardData"] = 150
	tSmashPot_Activities_KillMonster[2][1][1]["RewardDelay"] = 1
	tSmashPot_Activities_KillMonster[2][1][1]["RewardTimeType"] = 4
	tSmashPot_Activities_KillMonster[2][1][1]["RewardItem"] = {}
	tSmashPot_Activities_KillMonster[2][1][1]["RewardItem"][1] = {}
	tSmashPot_Activities_KillMonster[2][1][1]["RewardItem"][1]["Id"] = 3305662
	tSmashPot_Activities_KillMonster[2][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_KillMonster[2][1][1]["RewardEffect"] = {}
	tSmashPot_Activities_KillMonster[2][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 刷新券	25	6%	3305663
	-- tSmashPot_Activities_KillMonster[2][2] = {}
	tSmashPot_Activities_KillMonster[2][1][2] = {}
	tSmashPot_Activities_KillMonster[2][1][2]["RandomItemChanceType"] = 3
	tSmashPot_Activities_KillMonster[2][1][2]["ItemSelfChanceSum"] = 10000
	tSmashPot_Activities_KillMonster[2][1][2]["ItemChance"] = 600
	tSmashPot_Activities_KillMonster[2][1][2]["Log"] = "0,0,0,0,12000899,1[2],3305663,1"
	tSmashPot_Activities_KillMonster[2][1][2]["EventType"] = 168
	tSmashPot_Activities_KillMonster[2][1][2]["DataType"] = 65
	tSmashPot_Activities_KillMonster[2][1][2]["RewardData"] = 5
	tSmashPot_Activities_KillMonster[2][1][2]["RewardDelay"] = 1
	tSmashPot_Activities_KillMonster[2][1][2]["RewardTimeType"] = 4
	tSmashPot_Activities_KillMonster[2][1][2]["RewardItem"] = {}
	tSmashPot_Activities_KillMonster[2][1][2]["RewardItem"][1] = {}
	tSmashPot_Activities_KillMonster[2][1][2]["RewardItem"][1]["Id"] = 3305663
	tSmashPot_Activities_KillMonster[2][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tSmashPot_Activities_KillMonster[2][1][2]["RewardEffect"] = {}
	tSmashPot_Activities_KillMonster[2][1][2]["RewardEffect"]["Effect"] = "angelwing"
	
local tSmashPot_Activities_MailAction = {}
	-- 奖池1
	tSmashPot_Activities_MailAction[1] = {}
	tSmashPot_Activities_MailAction[1][1] = 94485392
	tSmashPot_Activities_MailAction[1][2] = 94485393
	tSmashPot_Activities_MailAction[1][3] = 94485394
	tSmashPot_Activities_MailAction[1][4] = 94485395
	tSmashPot_Activities_MailAction[1][5] = 94485396
	tSmashPot_Activities_MailAction[1][6] = 94485397
	tSmashPot_Activities_MailAction[1][7] = 94485398
	tSmashPot_Activities_MailAction[1][8] = 94485399
	tSmashPot_Activities_MailAction[1][9] = 94485400
	-- 奖池2
	tSmashPot_Activities_MailAction[2] = {}
	tSmashPot_Activities_MailAction[2][1] = 94485525
	tSmashPot_Activities_MailAction[2][2] = 94485401
	tSmashPot_Activities_MailAction[2][3] = 94485402
	tSmashPot_Activities_MailAction[2][4] = 94485403
	tSmashPot_Activities_MailAction[2][5] = 94485404
	tSmashPot_Activities_MailAction[2][6] = 94485405
	tSmashPot_Activities_MailAction[2][7] = 94485406
	tSmashPot_Activities_MailAction[2][8] = 94485407
	tSmashPot_Activities_MailAction[2][9] = 94485408
	-- 奖池3
	tSmashPot_Activities_MailAction[3] = {}
	tSmashPot_Activities_MailAction[3][1] =94485409
	tSmashPot_Activities_MailAction[3][2] =94485410
	tSmashPot_Activities_MailAction[3][3] =94485411
	tSmashPot_Activities_MailAction[3][4] =94485412
	tSmashPot_Activities_MailAction[3][5] =94485413
	tSmashPot_Activities_MailAction[3][6] =94485414
	tSmashPot_Activities_MailAction[3][7] =94485415
	tSmashPot_Activities_MailAction[3][8] =94485416
	tSmashPot_Activities_MailAction[3][9] =94485417
	-- 奖池4
	tSmashPot_Activities_MailAction[4] = {}
	tSmashPot_Activities_MailAction[4][1] =94485418
	tSmashPot_Activities_MailAction[4][2] =94485419
	tSmashPot_Activities_MailAction[4][3] =94485420
	tSmashPot_Activities_MailAction[4][4] =94485421
	tSmashPot_Activities_MailAction[4][5] =94485422
	tSmashPot_Activities_MailAction[4][6] =94485423
	tSmashPot_Activities_MailAction[4][7] =94485424
	tSmashPot_Activities_MailAction[4][8] =94485425
	tSmashPot_Activities_MailAction[4][9] =94485426
	-- 奖池5
	tSmashPot_Activities_MailAction[5] = {}
	tSmashPot_Activities_MailAction[5][1] =94485427
	tSmashPot_Activities_MailAction[5][2] =94485428
	tSmashPot_Activities_MailAction[5][3] =94485429
	tSmashPot_Activities_MailAction[5][4] =94485430
	tSmashPot_Activities_MailAction[5][5] =94485431
	tSmashPot_Activities_MailAction[5][6] =94485432
	tSmashPot_Activities_MailAction[5][7] =94485433
	tSmashPot_Activities_MailAction[5][8] =94485434
	tSmashPot_Activities_MailAction[5][9] =94485435
	-- 奖池9(暴击)
	tSmashPot_Activities_MailAction[6] = {}
	tSmashPot_Activities_MailAction[6][1] =94485436
	tSmashPot_Activities_MailAction[6][2] =94485437
	tSmashPot_Activities_MailAction[6][3] =94485438
	tSmashPot_Activities_MailAction[6][4] =94485439
	tSmashPot_Activities_MailAction[6][5] =94485440
	tSmashPot_Activities_MailAction[6][6] =94485441
	tSmashPot_Activities_MailAction[6][7] =94485442
	tSmashPot_Activities_MailAction[6][8] =94485443
	tSmashPot_Activities_MailAction[6][9] =94485444
	-- 奖池7
	tSmashPot_Activities_MailAction[7] = {}
	tSmashPot_Activities_MailAction[7][1] =94485445
	tSmashPot_Activities_MailAction[7][2] =94485446
	tSmashPot_Activities_MailAction[7][3] =94485447
	tSmashPot_Activities_MailAction[7][4] =94485448
	tSmashPot_Activities_MailAction[7][5] =94485449
	tSmashPot_Activities_MailAction[7][6] =94485450
	tSmashPot_Activities_MailAction[7][7] =94485451
	tSmashPot_Activities_MailAction[7][8] =94485452
	tSmashPot_Activities_MailAction[7][9] =94485453
	-- 奖池8
	tSmashPot_Activities_MailAction[8] = {}
	tSmashPot_Activities_MailAction[8][1] =94485454
	tSmashPot_Activities_MailAction[8][2] =94485455
	tSmashPot_Activities_MailAction[8][3] =94485456
	tSmashPot_Activities_MailAction[8][4] =94485457
	tSmashPot_Activities_MailAction[8][5] =94485458
	tSmashPot_Activities_MailAction[8][6] =94485459
	tSmashPot_Activities_MailAction[8][7] =94485460
	tSmashPot_Activities_MailAction[8][8] =94485461
	tSmashPot_Activities_MailAction[8][9] =94485462
	-- 阶段目标板
	tSmashPot_Activities_MailAction["Task"] = {}
	tSmashPot_Activities_MailAction["Task"][1] = 94485463
	tSmashPot_Activities_MailAction["Task"][2] = 94485464
	tSmashPot_Activities_MailAction["Task"][3] = 94485465
	tSmashPot_Activities_MailAction["Task"][4] = 94485466
	tSmashPot_Activities_MailAction["Task"][5] = 94485467
	tSmashPot_Activities_MailAction["Task"][6] = 94485468
	tSmashPot_Activities_MailAction["Task"][7] = 94485469
	tSmashPot_Activities_MailAction["Task"][8] = 94485470
	tSmashPot_Activities_MailAction["Task"][9] = 94485471
	-- 剑气
	tSmashPot_Activities_MailAction["Swordkee"] = {}
	tSmashPot_Activities_MailAction["Swordkee"][3] = 94485477
	tSmashPot_Activities_MailAction["Swordkee"][6] = 94485478
	tSmashPot_Activities_MailAction["Swordkee"][9] = 94485479
	tSmashPot_Activities_MailAction["Swordkee"][12] = 94485480
	tSmashPot_Activities_MailAction["Swordkee"][15] = 94485481
	tSmashPot_Activities_MailAction["Swordkee"][20] = 94485482
	tSmashPot_Activities_MailAction["Swordkee"][30] = 94485483
	tSmashPot_Activities_MailAction["Swordkee"][50] = 94485484
	tSmashPot_Activities_MailAction["Swordkee"][100] = 94485485
	-- 天石
	tSmashPot_Activities_MailAction["ReturnEmoney"] = {}
	tSmashPot_Activities_MailAction["ReturnEmoney"][3] = 94485501
	tSmashPot_Activities_MailAction["ReturnEmoney"][6] = 94485502
	tSmashPot_Activities_MailAction["ReturnEmoney"][9] = 94485503
	tSmashPot_Activities_MailAction["ReturnEmoney"][12] =94485504
	tSmashPot_Activities_MailAction["ReturnEmoney"][15] =94485505
	tSmashPot_Activities_MailAction["ReturnEmoney"][20] =94485506
	tSmashPot_Activities_MailAction["ReturnEmoney"][30] =94485507
	tSmashPot_Activities_MailAction["ReturnEmoney"][50] = 94485508
	tSmashPot_Activities_MailAction["ReturnEmoney"][100] = 94485509
	-- 最后发奖
	tSmashPot_Activities_MailAction["RankingReward"] = {}
	tSmashPot_Activities_MailAction["RankingReward"][1] = 94485512
	tSmashPot_Activities_MailAction["RankingReward"][2] = 94485513
	tSmashPot_Activities_MailAction["RankingReward"][3] = 94485514
	tSmashPot_Activities_MailAction["RankingReward"][4] = 94485515
	tSmashPot_Activities_MailAction["RankingReward"][5] = 94485516
	tSmashPot_Activities_MailAction["RankingReward"][6] = 94485517
	tSmashPot_Activities_MailAction["RankingReward"][7] = 94485518
	tSmashPot_Activities_MailAction["RankingReward"][8] = 94485519
	tSmashPot_Activities_MailAction["RankingReward"][9] = 94485520
	tSmashPot_Activities_MailAction["RankingReward"][10] = 94485521
	

--------------------------------------逻辑部分-------------------------------------------
-- 获取掩码值
function SmashPot_Activities_GetStcValue(nIndex,nNowUserId)
	local nEvent = tSmashPot_Activities_Stc[nIndex]["EventType"]
	local nType = tSmashPot_Activities_Stc[nIndex]["DataType"]
	local nUserId = nNowUserId or Get_UserId()
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function SmashPot_Activities_SetStcValue(nIndex,nData,nNowUserId)
	local nEvent = tSmashPot_Activities_Stc[nIndex]["EventType"]
	local nType = tSmashPot_Activities_Stc[nIndex]["DataType"]
	local nUserId = nNowUserId or Get_UserId()
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 增加掩码值
function SmashPot_Activities_AddStcValue(nIndex,nData,nNowUserId)
	local nEvent = tSmashPot_Activities_Stc[nIndex]["EventType"]
	local nType = tSmashPot_Activities_Stc[nIndex]["DataType"]
	local nUserId = nNowUserId or Get_UserId()
	
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天清除掩码
function SmashPot_Activities_ClearStcInterval(nIndex,nNowUserId)
	local nEvent = tSmashPot_Activities_Stc[nIndex]["EventType"]
	local nType = tSmashPot_Activities_Stc[nIndex]["DataType"]
	local bClear = tSmashPot_Activities_Stc[nIndex]["Clear"]
	local nUserId = nNowUserId or Get_UserId()
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) and bClear == 1 then
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		if nIndex == 8 and nData > 0 then
			local nActionId = tSmashPot_Activities_MailAction["Swordkee"][nData]
			SmashPot_Activities_SendMail(nActionId,1,nUserId)
		end
		if nIndex == 9 and nData > 0 then
			local nActionId = tSmashPot_Activities_MailAction["ReturnEmoney"][nData]
			SmashPot_Activities_SendMail(nActionId,1,nUserId)
		end
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

-- 检测二进制掩码
function SmashPot_Activities_ChkStcValue(nIndex,nNeedChkNum,nNowUserId)
	local nEvent = tSmashPot_Activities_Stc[nIndex]["EventType"]
	local nType = tSmashPot_Activities_Stc[nIndex]["DataType"]
	local nUserId = nNowUserId or Get_UserId()
	local nValue = Get_UserStatisticValue(nEvent,nType,nUserId)

	if Sys_ParseNumbersContain(nNeedChkNum,nValue) then
		return true
	else
		return false
	end
end

-- 获取玩家开罐次数
function SmashPot_Activities_OpenTime(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tSmashPot_Activities_Stc[2]["EventType"]
	local nType = tSmashPot_Activities_Stc[2]["DataType"]
	
	local nTime = 0
	for i,v in pairs(tSmashPot_Activities_NpcPos) do
		local nParse = tSmashPot_Activities_NpcPos[i]["Parse"]
		if SmashPot_Activities_ChkStcValue(7,nParse,nUserId) then
			nTime = nTime +1
		end
	end
	return nTime
end

-- 寻路
function SmashPot_Activities_Goto(nIndex)
	if nIndex == 1 and SpecialServer_ChkNoGiftServer() then
		nIndex = 6
	end
	local nPosX = tSmashPot_Activities_FindWay[nIndex]["PosX"]
	local nPosY = tSmashPot_Activities_FindWay[nIndex]["PosY"]
	local nMapId = tSmashPot_Activities_FindWay[nIndex]["MapId"]
	if nIndex == 2 then
		nMapId = Get_UserMapId(nUserId)
	end
	local nNpcId = tSmashPot_Activities_FindWay[nIndex]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 显示奖池文字
-- nType == 1 文字全是灰色， ==2已领取的显示黄色
function SmashPot_Activities_ShowDialog(nData,nNpcId,nType,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	-- 对齐参数
	local nLeft = tSmashPot_Activities_Count["Left"]
	local nBasicNpcId = tSmashPot_Activities_Count["BasicNpcId"]
	
	local sGetItem = tSmashPot_Activities_Text["jackpot"][9][nData]
	local sText = tSmashPot_Activities_Text[nBasicNpcId]["Text119"]
	tNpcGossip[nBasicNpcId]["Text119"] = string.format(sText,sGetItem)
	
	local nSmashPot_NpcIndex = 1
	-- 对白文字设置
	for i=1,3 do
		local nIndex = (i-1)*3
		local tText= {}
		for a=1,3 do
			local sBasic = "%s"
			local nParse = tSmashPot_Activities_NpcPos[nIndex+a]["Parse"]
			local sText = tSmashPot_Activities_Text["jackpot"][nData][nIndex+a]
			tText[a] = sText
			if SmashPot_Activities_ChkStcValue(7,nParse,nUserId) then
				sBasic = tSmashPot_Activities_Text[nBasicNpcId]["Text1110"]
				tText[a] = string.format(sBasic,sText)
			end
			-- local nSpace= 7 -- nLeft - string.len(sText)
			-- local sSpace1,sSpace2 = "",""
			-- for j=1,math.floor(nSpace/2) do
				-- sSpace1 = " " ..sSpace1
			-- end
			-- for h=1,nSpace-math.floor(nSpace/2) do
				-- sSpace2 = " " ..sSpace2
			-- end
			-- if a == 2 then
				-- tText[a] = string.format(sBasic,sSpace1..sText)
			-- else
				-- tText[a] = string.format(sBasic,sSpace1..sText..sSpace2)
			-- end
			local sSpace1 = ""
			for j=1,tSmashPot_Activities_Dialog[2][nData] do
				sSpace1 = " " ..sSpace1
			end
			local sIndex = tSmashPot_Activities_Dialog[1][nSmashPot_NpcIndex]
			if nSmashPot_NpcIndex%3 == 0 then
				tNpcGossip[nNpcId][sIndex] = string.format(tGlobalFormat[3],tText[a],sSpace1,"\n")
			else
				tNpcGossip[nNpcId][sIndex] = string.format(tGlobalFormat[2],tText[a],sSpace1)
			end
			nSmashPot_NpcIndex = nSmashPot_NpcIndex + 1
		end
		-- local sIndex = tSmashPot_Activities_Dialog[1][i]
		-- tNpcGossip[nNpcId][sIndex] = string.format(tGlobalFormat[3],tText[3],tText[1],tText[2]) .. "\n"
		-- local sRankingLast = Sys_Alignment(tText[3],1,tText[1],25,tText[2],50)
		-- tNpcGossip[nNpcId][sIndex] = string.format(tGlobalFormat[2],sRankingLast,"\n")
		-- tNpcGossip[nNpcId][sIndex] =tText[3]..tText[1]..tText[2].."\n"
	end
end

-- 播放光效
function SmashPot_Activities_EffectAdd(nIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local sEffectObj = tSmashPot_Activities_Effect[nIndex]["EffectObj"]
	local sUserEffect = tSmashPot_Activities_Effect[nIndex]["Effect"]
	User_EffectAdd(sEffectObj,sUserEffect,nUserId)
end

-- 寻路打开对白
function SmashPot_Activities_GotoTip(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	if tSmashPot_Activities_MapId[nUserId] > 0 and nMapId ~= tSmashPot_Activities_MapId[nUserId] then
		return
	end
	SmashPot_Activities_Goto(2)
end

-- 进入地图创建动态npc
function SmashPot_Activities_FirstCreateDynaNpc(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	tSmashPot_Activities_MapId[nUserId] = nMapId
	local nPoolData =SmashPot_Activities_GetStcValue(1,nUserId)
	for i,v in pairs(tSmashPot_Activities_NpcPos) do
		local nNpcId = i
		local sNpcName = tSmashPot_Activities_Text["NpcName"][nPoolData] .. i
		local nParse = tSmashPot_Activities_NpcPos[i]["Parse"]
		if not SmashPot_Activities_ChkStcValue(2,nParse,nUserId) then
			local nPosX = tSmashPot_Activities_NpcPos[i]["PosX"]
			local nPosY = tSmashPot_Activities_NpcPos[i]["PosY"]
			local nNpcFace = tSmashPot_Activities_PoolData[nPoolData]["NpcFace"]
			local nActionId = tSmashPot_Activities_NpcPos[i]["ActionId"]
			Npc_CreateDynaNpc(sNpcName,2,1,nNpcFace,0,nUserId,nMapId,nPosX,nPosY,0,0,0,nActionId)
		end
	end
end

-- 判断在副本
function SmashPot_Activities_NotInMap(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	if nMapDoc ~= tSmashPot_Activities_Count["MapDoc"] then
		return false
	end
	return true
end

-- 隔天重置
function SmashPot_Activities_ClearInterval(nUserId)
	-- 判断是否隔天
	local bOtherDay = false
	local nOldData = SmashPot_Activities_GetStcValue(1,nUserId)
	local nOldPhase = SmashPot_Activities_GetStcValue(2,nUserId)
	local nEvent = tSmashPot_Activities_Stc[1]["EventType"]
	local nType = tSmashPot_Activities_Stc[1]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		bOtherDay = true
	end
	for i=1,#tSmashPot_Activities_Stc do
		SmashPot_Activities_ClearStcInterval(i,nUserId)
	end
	
	-- 获得玩家当前奖池
	local nData = SmashPot_Activities_GetStcValue(1,nUserId)
	-- 未随机的重新随机奖池
	if nData == 0 then
		local nFlag,tRandomNum = Probabil_RandomAward(tSmashPot_Activities_Random["jackpot"],1)
		nData = tRandomNum[1]["tAward"][1]["Item"]
		SmashPot_Activities_SetStcValue(1,nData,nUserId)
	end
	-- 重新刷罐子
	if bOtherDay then
		SmashPot_Activities_CreateNpc(nOldData,nOldPhase,nData,nUserId)
	end
end

-- 动态创建npc
function SmashPot_Activities_CreateNpc(nOldData,nOldPhase,nData,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	-- 不在当前地图
	if not SmashPot_Activities_NotInMap(nUserId) then
		return
	end
	-- 数据不变并且npc还在不需要重新创建
	if nOldData == nData and nOldPhase == 0 then
		return
	end
	
	local nMapId = Get_UserMapId(nUserId)
	tSmashPot_Activities_MapId[nUserId] = nMapId
	-- 数据不变但npc已开启部分
	if nOldData == nData and nOldPhase > 0 then
		for i,v in pairs(tSmashPot_Activities_NpcPos) do
			local nNpcId = i
			local sNpcName = tSmashPot_Activities_Text["NpcName"][nData] .. i
			local nParse = tSmashPot_Activities_NpcPos[i]["Parse"]
			if Sys_ParseNumbersContain(nParse,nOldPhase) then
				local nPosX = tSmashPot_Activities_NpcPos[i]["PosX"]
				local nPosY = tSmashPot_Activities_NpcPos[i]["PosY"]
				local nNpcFace = tSmashPot_Activities_PoolData[nData]["NpcFace"]
				local nActionId = tSmashPot_Activities_NpcPos[i]["ActionId"]
				Npc_CreateDynaNpc(sNpcName,2,1,nNpcFace,0,nUserId,nMapId,nPosX,nPosY,0,0,0,nActionId)
			end
		end
		return
	end
	
	-- 数据变化删除所有npc重新创建
	for k=1,9 do
		local sName = tSmashPot_Activities_Text["NpcName"][nOldData] .. k
		Npc_DelDynaNpc(nMapId,"name",sName)
	end
	
	for i,v in pairs(tSmashPot_Activities_NpcPos) do
		local nNpcId = i
		local sNpcName = tSmashPot_Activities_Text["NpcName"][nData] .. i
		local nParse = tSmashPot_Activities_NpcPos[i]["Parse"]
		local nPosX = tSmashPot_Activities_NpcPos[i]["PosX"]
		local nPosY = tSmashPot_Activities_NpcPos[i]["PosY"]
		local nNpcFace = tSmashPot_Activities_PoolData[nData]["NpcFace"]
		local nActionId = tSmashPot_Activities_NpcPos[i]["ActionId"]
		Npc_CreateDynaNpc(sNpcName,2,1,nNpcFace,0,nUserId,nMapId,nPosX,nPosY,0,0,0,nActionId)
	end
end

-- 创建固定npc(不用)
function SmashPot_Activities_CreateNewNpc(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	for i,v in pairs(tSmashPot_Activities_NewNpcPos) do
		local sNpcName = tSmashPot_Activities_Text["NpcName"][i]
		if Get_NpcCountByName(sNpcName,nUserId) == 0 then
			local nPosX = tSmashPot_Activities_NewNpcPos[i]["PosX"]
			local nPosY = tSmashPot_Activities_NewNpcPos[i]["PosY"]
			local nActionId = tSmashPot_Activities_NewNpcPos[i]["ActionId"]
			local nNpcFace = tSmashPot_Activities_NewNpcPos[i]["NpcFace"]
			Npc_CreateDynaNpc(sNpcName,2,1,nNpcFace,0,nUserId,nMapId,nPosX,nPosY,0,0,0,nActionId)
		end
	end
end

-- 动态创建陷阱（不用）
function SmashPot_Activities_CreateTrap(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nTrapType = tSmashPot_Activities_Trap["TrapType"]
	local nMapId = Get_UserMapId(nUserId)
	local nLook = tSmashPot_Activities_Trap["Look"]
	local nPosX = tSmashPot_Activities_Trap["MapInfo"]["PosX"]
	local nPosY = tSmashPot_Activities_Trap["MapInfo"]["PosY"]
	-- 删除重建
	-- local nCount = Get_TrapCount(nTrapType)
	local nCount = MoveTrap_GetCount(nTrapType)
	if nCount > 0 then
		Trap_DelMapTrap(nMapId,nTrapType)
	end
	-- 创建陷阱
	Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,0,0)
end

-- 创建固定陷阱（不用）
function SmashPot_Activities_CreateNewTrap(nUserId)
	local nBasicNpcId = tSmashPot_Activities_Count["BasicNpcId"]
	local nTrapType = tSmashPot_Activities_Trap[nBasicNpcId]
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = tSmashPot_Activities_NewNpcPos[nBasicNpcId]["PosX"]
	local nPosY = tSmashPot_Activities_NewNpcPos[nBasicNpcId]["PosY"]
	-- 删除重建
	-- local nCount = Get_TrapCount(nTrapType)
	local nCount = MoveTrap_GetCount(nTrapType)
	if nCount > 0 then
		Trap_DelMapTrap(nMapId,nTrapType)
	end
	-- 创建陷阱
	Trap_CreateMapTrap(nTrapType,nTrapType,0,nMapId,nPosX,nPosY,0,0)
end
---------------------------------------------------22218 集气区---------------------------------------------------
function SmashPot_Activities_NpcMain(nNpcId,nNpcIndex,nNowUserId)
	if not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	if #tSmashPot_Activities_RankingData == 0 then
		SmashPot_Activities_StartRankingData()
	end
	-- 隔天重置
	local nUserId = nNowUserId or Get_UserId()
	SmashPot_Activities_ClearInterval(nUserId)
	-- 掩码存在
	local nBasicNpcId = tSmashPot_Activities_Count["BasicNpcId"]
	local nTaskNpcId = tSmashPot_Activities_Count["TaskNpcId"]
	local nRankNpcId = tSmashPot_Activities_Count["RankNpcId"]
	local nParse = tSmashPot_Activities_NpcPos[nNpcIndex]["Parse"]
	if nNpcId ~= nBasicNpcId  and nNpcId ~= nTaskNpcId  and nNpcId ~= nRankNpcId  and SmashPot_Activities_ChkStcValue(2,nParse,nUserId) then
		return
	end
	local nData = SmashPot_Activities_GetStcValue(1,nUserId)
	local nTime = SmashPot_Activities_OpenTime(nUserId)
	-- 已开完9次
	-- if nTime >= 9 and nNpcId == nBasicNpcId then
		-- SmashPot_Activities_SuccessRefresh(nNpcId,nUserId)
		-- return
	-- else
		-- SmashPot_Activities_CreateNpc(nUserId)
	-- end
	
	local nSwordkeeData = SmashPot_Activities_GetStcValue(8,nUserId)
	local nEmoneyData = SmashPot_Activities_GetStcValue(9,nUserId)
	-- 集气区
	if nNpcId == nBasicNpcId then
		if nSwordkeeData >= 1 or nEmoneyData >= 1 then
			LinkNpcGossipFunc_New(nNpcId,"4-2")
			return
		end
		-- 无颜色区分
		SmashPot_Activities_ShowDialog(nData,nNpcId,1,nUserId)
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	-- 阶段目标
	elseif nNpcId == nTaskNpcId then
		local sText = tSmashPot_Activities_Text[nTaskNpcId]["Text1115"]
		local nDataNum = SmashPot_Activities_GetStcValue(10,nUserId)
		tNpcGossip[nTaskNpcId]["Text1115"] = string.format(sText,nDataNum)
		for i,v in pairs(tSmashPot_Activities_Count["Text"]) do
			local sBasicText = tSmashPot_Activities_Text[nTaskNpcId]["Text"..v]
			local nParse = tSmashPot_Activities_NpcPos[i]["Parse"]
			if SmashPot_Activities_ChkStcValue(11,nParse,nUserId) then
				tNpcGossip[nTaskNpcId]["Text"..v] = string.format(sBasicText,tSmashPot_Activities_Text["Have"])
			else
				tNpcGossip[nTaskNpcId]["Text"..v] = string.format(sBasicText,"")
			end
		end
		LinkNpcGossipFunc_New(nTaskNpcId,"1-1")
	-- 排行榜
	elseif nNpcId == nRankNpcId then
		local sText = tSmashPot_Activities_Text[nRankNpcId]["Text1116"]
		local nDataNum = SmashPot_Activities_GetStcValue(10,nUserId)
		local nUserRanking = 0
		for i,v in pairs(tSmashPot_Activities_Count["Text1"]) do
			local nIndex = tSmashPot_Activities_Count["Text1"][i]
			local sBasicText = tSmashPot_Activities_Text[nRankNpcId]["Text"..nIndex]
			local sRanking = tSmashPot_Activities_Text[nRankNpcId]["Ranking"]
			local sLeft = string.format(sRanking,i)
			local sLast = tSmashPot_Activities_Text[nRankNpcId]["Reward"][i]
			local sMiddle = ""
			local sRight = ""
			if tSmashPot_Activities_RankingData[i] ~= nil and tonumber(tSmashPot_Activities_RankingData[i]["UserId"]) > 0 then
				sMiddle = tostring(tSmashPot_Activities_RankingData[i]["Score"])
				sRight =  tSmashPot_Activities_RankingData[i]["UserName"]
				--名字处理
				sRight = Sys_StringGSubTip(sRight)
			else
				sMiddle = "0"
				sRight = tSmashPot_Activities_Text["NullUser"]
			end
			tNpcGossip[nRankNpcId]["Text"..nIndex] = Sys_Alignment(sLeft,1,sMiddle,19,sRight,42,sLast,60)
		end
		for a,b in pairs(tSmashPot_Activities_RankingData) do
			if nUserId == tonumber(b["UserId"]) then
				nUserRanking = a
			end
		end
		-- 玩家排名
		tNpcGossip[nRankNpcId]["Text1116"] = string.format(sText,nDataNum,nUserRanking)
		if nUserRanking == 0 then
			local sNewText = tSmashPot_Activities_Text[nRankNpcId]["Text11160"]
			tNpcGossip[nRankNpcId]["Text1116"] = string.format(sNewText,nDataNum)
		end
		LinkNpcGossipFunc_New(nRankNpcId,"1-1")
	else
		-- 首次开罐免费
		local bOpen = true
		local bCheck = false
		if nSwordkeeData < 1 and nEmoneyData < 1 and SmashPot_Activities_ChkStcValue(6,2,nUserId) then
			-- 自动扣费
			-- 剑气
			local nData = SmashPot_Activities_GetStcValue(1,nUserId)
			local nTime = SmashPot_Activities_OpenTime(nUserId)
			local nSwordkee = tSmashPot_Activities_Swordkee[nTime+1]
			local nSwordkeeId = tSmashPot_Activities_Count["Swordkee"]
			if not SmashPot_Activities_ChkStcValue(6,1,nUserId) then
				local sFunc = "SmashPot_Activities_GotoTip"
				Sys_MsgBox(tSmashPot_Activities_Text["NoPay"],sFunc,nil,nUserId)
				return
			end
			
			if SmashPot_Activities_ChkStcValue(6,1,nUserId) and not Item_ChkMulItem(nSwordkeeId,nSwordkeeId,nSwordkee) then
				bOpen = false
				Sys_MsgBox(tSmashPot_Activities_Text["NoPayOther"],nil,nil,nUserId)
				return
			else
				bCheck = true
			end
		end
		if bCheck then
			-- 读条
			local nSecs = tSmashPot_Activities_Count["Secs"]
			local sContent = tSmashPot_Activities_Text["Explore"]
			local nActionId = tSmashPot_Activities_Count["ActionId"]
			local sFunc = "</F>SmashPot_Activities_DeleteItem</N>".. nNpcId .."</N>" .. nNpcIndex
			User_SetExplore(nSecs,sContent,nActionId,sFunc,nil,nUserId)
			return
		end
		if bOpen then
			-- 读条
			local nSecs = tSmashPot_Activities_Count["Secs"]
			local sContent = tSmashPot_Activities_Text["Explore"]
			local nActionId = tSmashPot_Activities_Count["ActionId"]
			local sFunc = "</F>SmashPot_Activities_GetLastReward</N>".. nNpcId .."</N>" .. nNpcIndex
			User_SetExplore(nSecs,sContent,nActionId,sFunc,nil,nUserId)
			return
		end
	end
end

function SmashPot_Activities_DeleteItem(nNpcId,nIndex,nUserId)
	-- 剑气
	local nData = SmashPot_Activities_GetStcValue(1,nUserId)
	local nTime = SmashPot_Activities_OpenTime(nUserId)
	local nSwordkee = tSmashPot_Activities_Swordkee[nTime+1]
	local nSwordkeeId = tSmashPot_Activities_Count["Swordkee"]
	-- 使用剑气
	local tReward = CommonFunc_Copy(tSmashPot_Activities_Reward[3305662])
	tReward["DeleteItem"][1]["ItemNum"] = nSwordkee
	local sLog = tSmashPot_Activities_Reward[3305662]["Log"]
	tReward["Log"] = string.format(sLog,nSwordkee)
	local bOpen = RewardTemplate_UseItemAndMsg(tReward,nUserId)
	Sys_SaveActionFestivalLog(tReward["Log"],nUserId)
	-- 剑气开罐
	local sLog = tSmashPot_Activities_Log["ExtraEMoney"][1]
	Sys_SaveEmoneyBuy(string.format(sLog,nSwordkee),nUserId)
	
	if bOpen then
		SmashPot_Activities_GetLastReward(nNpcId,nIndex,nUserId)
	end
end

function SmashPot_Activities_GetLastReward(nNpcId,nIndex,nUserId)
	-- 付费情况置0
	SmashPot_Activities_SetStcValue(8,0,nUserId)
	SmashPot_Activities_SetStcValue(9,0,nUserId)
	-- 给奖励
	SmashPot_Activities_LastReward(nNpcId,nIndex,nUserId)
end

-- 开始开罐
function SmashPot_Activities_Open(nNpcId,nNowUserId)
	-- 活动时间外
	if not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"]) then
		return
	end
	
	-- 隔天重置
	local nUserId = nNowUserId or Get_UserId()
	-- 不在当前地图
	if not SmashPot_Activities_NotInMap(nUserId) then
		return
	end
	SmashPot_Activities_ClearInterval(nUserId)
	
	-- 剑气
	local nData = SmashPot_Activities_GetStcValue(1,nUserId)
	local nTime = SmashPot_Activities_OpenTime(nUserId)
	local nSwordkee = tSmashPot_Activities_Swordkee[nTime+1]
	
	-- 已开完9次
	if nTime >= 9 then
		return
	end
	
	-- 颜色区分
	SmashPot_Activities_ShowDialog(nData,nNpcId,2)

	-- 无打折卷
	tNpcGossip[nNpcId]["Text212"] = ""
	local sNeedText = tSmashPot_Activities_Text[nNpcId]["Text211"]
	tNpcGossip[nNpcId]["Text211"] =string.format(sNeedText,nTime+1,nSwordkee)
	-- 首次开罐免费
	local sOption = tSmashPot_Activities_Text[nNpcId]["Option211"]
	tNpcGossip[nNpcId]["Option211"] =string.format(sOption,nSwordkee)
	if not SmashPot_Activities_ChkStcValue(6,2,nUserId) then
		tNpcGossip[nNpcId]["Option211"] = tSmashPot_Activities_Text[nNpcId]["Option212"]
	end
	tNpcGossip[nNpcId]["OptionFunc211"] = "SmashPot_Activities_OpenReal</N>"..nNpcId.."</N>"..nSwordkee
	-- 是否已自动补充剑气
	if SmashPot_Activities_ChkStcValue(6,1,nUserId) then
		tNpcGossip[nNpcId]["Option2110"] = tSmashPot_Activities_Text[nNpcId]["Option2111"]
		tNpcGossip[nNpcId]["OptionFunc2110"] = "LinkNpcGossipFunc_New</N>"..nNpcId.."</S>4-5"
	else
		tNpcGossip[nNpcId]["Option2110"] = tSmashPot_Activities_Text[nNpcId]["Option2110"]
		tNpcGossip[nNpcId]["OptionFunc2110"] = "LinkNpcGossipFunc_New</N>"..nNpcId.."</S>4-4"
	end
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 自动补充剑气
function SmashPot_Activities_ForSure(nNpcId)
	-- 隔天重置
	local nUserId = nNowUserId or Get_UserId()
	-- 不在当前地图
	if not SmashPot_Activities_NotInMap(nUserId) then
		return
	end
	SmashPot_Activities_ClearInterval(nUserId)
	
	if SmashPot_Activities_ChkStcValue(6,1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	
	SmashPot_Activities_AddStcValue(6,1,nUserId)
	Sys_MsgBox(tSmashPot_Activities_Text["OpenSure"],nil,nil,nUserId)
	SmashPot_Activities_EffectAdd(6,nUserId)
end

-- 开对应罐子
function SmashPot_Activities_OpenReal(nNpcId,nSwordkee)
	-- 活动时间外
	if not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"]) then
		return
	end
	-- 不在当前地图
	if not SmashPot_Activities_NotInMap(nUserId) then
		return
	end
	
	-- 首次开罐免费
	if not SmashPot_Activities_ChkStcValue(6,2,nUserId) then
		Sys_MsgBox(tSmashPot_Activities_Text["Pay"],nil,nil,nUserId)
		return
	end
	-- 对应需要的剑气
	local nSwordkeeId = tSmashPot_Activities_Count["Swordkee"]
	if not Item_ChkMulItem(nSwordkeeId,nSwordkeeId,nSwordkee) then
		-- 剑气不足
		local sText = tSmashPot_Activities_Text[nNpcId]["Text221"]
		tNpcGossip[nNpcId]["Text221"] = string.format(sText,nSwordkee)
		local sNewText = tSmashPot_Activities_Text[nNpcId]["Text223"]
		tNpcGossip[nNpcId]["Text223"] = string.format(sNewText,nSwordkee)
		local sOption = tSmashPot_Activities_Text[nNpcId]["Option221"]
		tNpcGossip[nNpcId]["Option221"] = string.format(sOption,nSwordkee)
		-- 1-x-1、使用x天石开罐
		tNpcGossip[nNpcId]["OptionFunc221"] = "SmashPot_Activities_EmonyBuy</N>"..nNpcId.."</N>"..nSwordkee.."</N>"
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 使用剑气
	local tReward = CommonFunc_Copy(tSmashPot_Activities_Reward[3305662])
	tReward["DeleteItem"][1]["ItemNum"] = nSwordkee
	local sLog = tSmashPot_Activities_Reward[3305662]["Log"]
	tReward["Log"] = string.format(sLog,nSwordkee)
	local bItem = RewardTemplate_UseItemAndMsg(tReward)
	Sys_SaveActionFestivalLog(tReward["Log"])
	-- 剑气开罐
	local sLog = tSmashPot_Activities_Log["ExtraEMoney"][1]
	Sys_SaveEmoneyBuy(string.format(sLog,nSwordkee),nUserId)
	
	if bItem then
		-- 置已付费
		SmashPot_Activities_SetStcValue(8,nSwordkee)
		Sys_MsgBox(tSmashPot_Activities_Text["Pay"],nil,nil,nUserId)
		-- 玩家
		-- SmashPot_Activities_EffectAdd(3,nUserId)
		SmashPot_Activities_EffectAdd(4,nUserId)
	end
end

-- 使用天石
function SmashPot_Activities_EmonyBuy(nNpcId,nSwordkee)
	-- 条件检测
	if not SmashPot_Activities_ChkEmony(nNpcId,nSwordkee) then
		return
	end
	-- 不在当前地图
	if not SmashPot_Activities_NotInMap(nUserId) then
		return
	end
	
	-- 隔天重置
	SmashPot_Activities_ClearInterval(nUserId)
	
	-- 是否出二次确认
	if SmashPot_Activities_ChkStcValue(3,1) then
		-- 不出二次确认，直接扣除
		-- 天石
		if not SmashPot_Activities_UseEmony(nNpcId,nSwordkee) then
			return
		end
		
		-- 置已付费
		SmashPot_Activities_SetStcValue(9,nSwordkee)
		Sys_MsgBox(tSmashPot_Activities_Text["Pay"],nil,nil,nUserId)
		-- 玩家
		-- SmashPot_Activities_EffectAdd(3,nUserId)
		SmashPot_Activities_EffectAdd(4,nUserId)
		return
	end
	
	local sFunc = "SmashPot_Activities_SureEmonyBuy</N>"..nNpcId.."</N>"..nSwordkee
	-- 1-x-1-1、确认花费
	tNpcGossip[nNpcId]["OptionFunc241"] = sFunc
	-- 1-x-1-2、确认花费,今日不再询问  ===（今日屏蔽二次确认）
	tNpcGossip[nNpcId]["OptionFunc242"] = sFunc.."</N>1"
	local sText = tSmashPot_Activities_Text[nNpcId]["Text241"]
	tNpcGossip[nNpcId]["Text241"] = string.format(sText,nSwordkee)
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

-- 确认花费
function SmashPot_Activities_SureEmonyBuy(nNpcId,nSwordkee,nType)
	-- 条件检测
	if not SmashPot_Activities_ChkEmony(nNpcId,nSwordkee) then
		return
	end
	-- 不在当前地图
	if not SmashPot_Activities_NotInMap(nUserId) then
		return
	end
	
	-- 隔天重置
	SmashPot_Activities_ClearInterval(nUserId)
	
	-- 取消二次确认
	if nType ~= nil then
		SmashPot_Activities_AddStcValue(3,1)
	end
	
	-- 天石
	if not SmashPot_Activities_UseEmony(nNpcId,nSwordkee) then
		return
	end
	
	-- 置已付费
	SmashPot_Activities_SetStcValue(9,nSwordkee)
	Sys_MsgBox(tSmashPot_Activities_Text["Pay"],nil,nil,nUserId)
		-- 玩家
	-- SmashPot_Activities_EffectAdd(3,nUserId)
	SmashPot_Activities_EffectAdd(4,nUserId)
end

-- 移走npc播放光效
function SmashPot_Activities_MoveNpc(nNpcId,nTime,nIndex,nNowUserId)
	-- 删除npc
	local nUserId = nNowUserId or Get_UserId()
	local nPoolData = SmashPot_Activities_GetStcValue(1,nUserId)
	local sName = tSmashPot_Activities_Text["NpcName"][nPoolData]..nIndex
	local nMapId = Get_UserMapId(nUserId)
	local sFunc = string.format("SmashPot_Activities_DelNpc</N>%d</S>%s",nMapId,sName)
	User_SetTimer(1,sFunc,0,nUserId)
	
	-- 破罐
	local nPosX = tSmashPot_Activities_NpcPos[nIndex]["PosX"]
	local nPosY = tSmashPot_Activities_NpcPos[nIndex]["PosY"]
	local sEffectName = tSmashPot_Activities_Effect[2]["Effect"]
	Map_Effect(nMapId, nPosX, nPosY, sEffectName)
end

function SmashPot_Activities_DelNpc(nMapId,sName,nUserId)
	Npc_DelDynaNpc(nMapId,"name",sName)
end

-- 给奖励
function SmashPot_Activities_LastReward(nNpcId,nIndex,nNowUserId)
	-- 奖池
	local nUserId = nNowUserId or Get_UserId()
	local nBasicNpcId = tSmashPot_Activities_Count["BasicNpcId"]
	-- 开罐次数
	local nOpenTime = 1
	-- 首次免费
	if not SmashPot_Activities_ChkStcValue(6,2,nUserId) then
		SmashPot_Activities_AddStcValue(6,2,nUserId)
		local nFlag,tFirstReward = Probabil_RandomAward(tSmashPot_Activities_Random["FirstTime"],1)
		nOpenTime = tFirstReward[1]["tAward"][1]["Item_1"]
	end
	-- 玩家当前的砸罐
	SmashPot_Activities_AddStcValue(10,nOpenTime,nUserId)
	-- 达到阶段发邮件
	local nTotalNum = SmashPot_Activities_GetStcValue(10,nUserId)
	for g,h in pairs(tSmashPot_Activities_OpenRanking) do
		if nTotalNum >= h then
			local nParse = tSmashPot_Activities_NpcPos[g]["Parse"]
			if not SmashPot_Activities_ChkStcValue(11,nParse,nUserId) then
				SmashPot_Activities_AddStcValue(11,nParse,nUserId)
				local nExistDay = tSmashPot_Activities_SendMailReward["ExistDay"]
				local sSender = tSmashPot_Activities_Text["Mail"]["Sender"] 
				local sTitle = tSmashPot_Activities_Text["Mail"][2]["Title"]
				local sContent = tSmashPot_Activities_Text["Mail"][2]["Content"]
				local sItemName = tSmashPot_Activities_Text["jackpot"]["Task"][g]
				local sFinalContent = string.format(sContent,nTotalNum,h,sItemName)
				-- 发邮件
				local nActionId = tSmashPot_Activities_MailAction["Task"][g]
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sFinalContent)
			end
		end
	end
	-- 刷新排行榜
	SmashPot_Activities_RefreshRankingData(nTotalNum,nUserId)
	
	-- 设置奖励表
	local tLastReward = CommonFunc_Copy(tSmashPot_Activities_Reward[1])
	local nData = SmashPot_Activities_GetStcValue(1,nUserId)
	local sLogStep = tSmashPot_Activities_Reward[1]["LogStep"]
	tLastReward["LogStep"] = string.format(sLogStep,nData)
	-- 获得奖励奖池
	local tLastPool = {}
	local bNewType = false
	local nNum = 1
	for n=1,nOpenTime do
		tSmashPot_Activities_Jackpot[nUserId] = CommonFunc_Copy(tSmashPot_Activities_Random[nData])
		-- 检测随机表
		for i,v in pairs(tSmashPot_Activities_NpcPos) do
			local nParse = tSmashPot_Activities_NpcPos[i]["Parse"]
			if nParse ~= nil and SmashPot_Activities_ChkStcValue(7,nParse,nUserId) then
				local nNum = i
				local nItemChance = tSmashPot_Activities_Random[nData][1][nNum]["ItemChance"]
				tSmashPot_Activities_Jackpot[nUserId][1][nNum]["ItemChance"] = 0
				local nTotal = tSmashPot_Activities_Jackpot[nUserId][1]["ItemChanceSum"]
				tSmashPot_Activities_Jackpot[nUserId][1]["ItemChanceSum"] = nTotal - nItemChance
			end
		end
		
		-- 暴击几率
		local nRealOpenTime = SmashPot_Activities_OpenTime(nUserId)
		local nStartNum = 0
		if nRealOpenTime <= 2 then
			nStartNum = tSmashPot_Activities_Count["NewMin"][1]
		elseif nRealOpenTime >= 3 and nRealOpenTime <= 5 then
			nStartNum = tSmashPot_Activities_Count["NewMin"][2]
		else
			nStartNum = tSmashPot_Activities_Count["NewMin"][3]
		end
		local nEndNum = tSmashPot_Activities_Count["Max"]
		local nFlag, tReward= 0,{}
		if nOpenTime <= 1 and Sys_Random(nStartNum,nEndNum) then
			if nData == 3 then
				-- 给气力
				tLastReward = {}
				tLastReward = CommonFunc_Copy(tSmashPot_Activities_Reward[4])
				tLastReward["RewardStrengthValue"] = CommonFunc_Copy(tSmashPot_Activities_Random[9][1][nData]["RewardStrengthValue"])
			elseif nData == 4 then 
				-- 给赠点
				tLastReward = {}
				tLastReward = CommonFunc_Copy(tSmashPot_Activities_Reward[5])
				tLastReward["RewardEMoneyMono"] = CommonFunc_Copy(tSmashPot_Activities_Random[9][1][nData]["RewardEMoneyMono"])
			else
				tLastReward["RewardItem"][nNum] = CommonFunc_Copy(tSmashPot_Activities_Random[9][1][nData]["RewardItem"][1])
			end
			bNewType = true
		else
			-- 获得奖励随机
			nFlag,tReward = Probabil_RandomAward(tSmashPot_Activities_Jackpot[nUserId],1)
			if tReward[1]["tAward"][1]["RewardItem"] ~= nil then
				tLastReward["RewardItem"][nNum] = CommonFunc_Copy(tReward[1]["tAward"][1]["RewardItem"][1])
				tLastReward["RewardItem"][nNum+1] = CommonFunc_Copy(tReward[1]["tAward"][1]["RewardItem"][2])
				nNum = nNum + 2
			else
				tLastReward["RewardItem"][nNum] = CommonFunc_Copy(tReward[1]["tAward"][1]["RewardItem"][1])
				nNum = nNum + 1
			end
			-- 打掩码
			local nType = tReward[1]["tAward"][1]["Type"]
			local nBasicNpcId = tSmashPot_Activities_Count["BasicNpcId"]
			if nOpenTime > 1 then
				SmashPot_Activities_SetStcValue(2,tSmashPot_Activities_Count["HaveOpen"],nUserId)
			else
				SmashPot_Activities_AddStcValue(2,tSmashPot_Activities_NpcPos[nIndex]["Parse"],nUserId)
			end
			SmashPot_Activities_AddStcValue(7,tSmashPot_Activities_NpcPos[nType]["Parse"],nUserId)
			tLastPool[n] = nType
		end
	end
	local tMove = {}
	if bNewType then
	-- 暴击
		for i,v in pairs(tSmashPot_Activities_NpcPos) do
			local nParse = tSmashPot_Activities_NpcPos[i]["Parse"]
			if not SmashPot_Activities_ChkStcValue(2,nParse,nUserId) then
				table.insert(tMove,i)
			end
		end
		-- SmashPot_Activities_SetStcValue(2,tSmashPot_Activities_Count["HaveOpen"],nUserId)
		SmashPot_Activities_AddStcValue(2,tSmashPot_Activities_NpcPos[nIndex]["Parse"],nUserId)
	end
	
	-- 设置log
	Sys_SaveEmoneyBuy(tSmashPot_Activities_Log["PotEMoney"][nData],nUserId)
	-- 判断空间
	local nSpaceNum = RewardTemplate_GetRewardSpace(tLastReward,nUserId)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		local nExistDay = tSmashPot_Activities_SendMailReward["ExistDay"]
		local sSender = tSmashPot_Activities_Text["Mail"]["Sender"] 
		local sTitle = tSmashPot_Activities_Text["Mail"]["Title"]
		local sContent = tSmashPot_Activities_Text["Mail"]["Content"]
		local sFinalText = tSmashPot_Activities_Text["Success"][2]
		
		-- 发邮件
		if bNewType then 
			local nActionId = tSmashPot_Activities_MailAction[6][nData]
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		elseif nOpenTime > 1 then
			for a,b in pairs(tLastPool) do
				local nActionId = tSmashPot_Activities_MailAction[nData][b]
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			end
		else
			local nType = tLastPool[1]
			local nActionId = tSmashPot_Activities_MailAction[nData][nType]
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		end
		User_TalkChannel2005(sFinalText,nUserId)
	else
		-- 直接给
		RewardTemplate_UseItemAndMsg(tLastReward,nUserId)
	end
	
	-- 给公告
	-- if bNewType then
		-- local sUserName = Get_UserName(nUserId)
		-- local sText = tSmashPot_Activities_Text["Broad"][nData]
		-- Sys_SystemBroadcast(string.format(sText,sUserName))
	-- end
	
	-- 移走npc播放光效
	local nTime = SmashPot_Activities_OpenTime(nUserId)
	if nOpenTime > 1 then
		for i=1,9 do
			for a,b in pairs(tLastPool) do
				if i == b then
					SmashPot_Activities_MoveNpc(nNpcId,nTime,b,nUserId)
				else
					local nMapId = Get_UserMapId(nUserId)
					local sName = tSmashPot_Activities_Text["NpcName"][nData]..i
					local sFunc = string.format("SmashPot_Activities_DelNpc</N>%d</S>%s",nMapId,sName)
					User_SetTimer(2,sFunc,0,nUserId)
				end
				break
			end
		end
		local sText = tSmashPot_Activities_Text["FirstTime"]
		Sys_MsgBox(string.format(sText,nOpenTime),nil,nil,nUserId)
	elseif bNewType then
	-- 暴击
		-- for k,l in pairs(tMove) do
			-- SmashPot_Activities_MoveNpc(nNpcId,nTime,l,nUserId)
		-- end
		SmashPot_Activities_MoveNpc(nNpcId,nTime,nIndex,nUserId)
		SmashPot_Activities_EffectAdd(5,nUserId)
		Sys_MsgBox(tSmashPot_Activities_Text["OpenNew"],nil,nil,nUserId)
	else
		SmashPot_Activities_MoveNpc(nNpcId,nTime,nIndex,nUserId)
	end
	
	-- 已开完9次，暴击，首次开罐均重新开罐	
	if nOpenTime > 1 then
		local sFunc = string.format("SmashPot_Activities_SuccessOther</N>%d",nNpcId)
		User_SetTimer(3,sFunc,0,nUserId)
		return
	end
	if bNewType or nTime >= 9 then
		local sFunc = string.format("SmashPot_Activities_SuccessOther</N>%d",nNpcId)
		User_SetTimer(2,sFunc,0,nUserId)
		return
	end
end


---------------------------------------------------------邮件发奖
function SmashPot_Activities_SendMail(nActionId,nIndex,nNowUserId)
		-- 发邮件
		local nUserId = nNowUserId or Get_UserId()
		local nExistDay = tSmashPot_Activities_SendMailReward["ExistDay"]
		local sSender = tSmashPot_Activities_Text["Mail"]["Sender"] 
		local sTitle = tSmashPot_Activities_Text["Mail"][nIndex]["Title"]
		local sContent = tSmashPot_Activities_Text["Mail"][nIndex]["Content"]
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end

-- 奖励
function SmashPot_Activities_MailReward(nIndex,nNum)
	local nUserId = Get_UserId()
	local tLastReward = CommonFunc_Copy(tSmashPot_Activities_Reward[1])
	local sLogStep = tSmashPot_Activities_Reward[1]["LogStep"]
	tLastReward["LogStep"] = string.format(sLogStep,nNum)
	tLastReward["RewardItem"] = CommonFunc_Copy(tSmashPot_Activities_Random[nIndex][1][nNum]["RewardItem"])
	RewardTemplate_Reward(tLastReward,nUserId)
end

-- 阶段目标板
function SmashPot_Activities_MailRewardTask(nIndex)
	local nUserId = Get_UserId()
	local tLastReward = CommonFunc_Copy(tSmashPot_Activities_Reward[4])
	tLastReward["LogStep"] = tSmashPot_Activities_RankingReward["UserRanking"][nIndex]["LogStep"]
	tLastReward["RewardStrengthValue"] = CommonFunc_Copy(tSmashPot_Activities_RankingReward["UserRanking"][nIndex]["RewardStrengthValue"])
	RewardTemplate_Reward(tLastReward,nUserId)
end

-- 剑气
function SmashPot_Activities_Swordkee(nItemNum)
	local nUserId = Get_UserId()
	local tLastReward = CommonFunc_Copy(tSmashPot_Activities_Reward[1])
	tLastReward["LogStep"] = "1[1]"
	tLastReward["RewardItem"][1]["Id"] = tSmashPot_Activities_Count["Swordkee"]
	local sAttr = tSmashPot_Activities_Count["SwordkeeAttr"]
	tLastReward["RewardItem"][1]["Attr"] = string.format(sAttr,nItemNum)
	RewardTemplate_Reward(tLastReward,nUserId)
end

-- 天石
function SmashPot_Activities_ReturnEmoney(nEMoneyNum)
	local nUserId = Get_UserId()
	local tLastReward = CommonFunc_Copy(tSmashPot_Activities_Reward[3])
	tLastReward["RewardEMoney"]["Value"] = nEMoneyNum
	RewardTemplate_Reward(tLastReward,nUserId)
end

-- ##最终奖励
function SmashPot_Activities_LastRankingReward(nIndex)
	local nUserId = Get_UserId()
	local tLastReward = CommonFunc_Copy(tSmashPot_Activities_RankingReward["AllRanking"][nIndex])
	-- tLastReward["LogStep"] = tSmashPot_Activities_RankingReward["AllRanking"][nIndex]["LogStep"]
	-- tLastReward["RewardItem"] = CommonFunc_Copy(tSmashPot_Activities_RankingReward["AllRanking"][nIndex]["RewardItem"])
	RewardTemplate_Reward(tLastReward,nUserId)
end

function SmashPot_Activities_SendRankingReward()
	for i,v in pairs(tSmashPot_Activities_RankingData) do
		if i <= tSmashPot_Activities_Count["AwardRankingNum"] and v["Reward"] ~= "1" then
				local nUserId = v["UserId"]
				local nExistDay = tSmashPot_Activities_SendMailReward["ExistDay"]
				local sSender = tSmashPot_Activities_Text["Mail"]["Sender"] 
				local sTitle = tSmashPot_Activities_Text["Mail"][3]["Title"]
				local sContent = tSmashPot_Activities_Text["Mail"][3]["Content"]
				local sFinalContent = string.format(sContent,i,tSmashPot_Activities_Text["jackpot"]["Ranking"][i])
				-- 发邮件
				local nActionId = tSmashPot_Activities_MailAction["RankingReward"][i]
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sFinalContent)
				v["Reward"] = "1"
				SmashPot_Activities_RankingReward(v["Reward"],i)
		end
	end
end
---------------------------------------------------------邮件发奖
-- 剑气天石检查函数
function SmashPot_Activities_ChkEmony(nNpcId,nSwordkee)
	-- 活动时间外
	if not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"]) then
		return false
	end
	
	-- 天石不足
	local nUserEMoney = Get_UserEMoney(nUserId)
	if nUserEMoney < nSwordkee then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	end
	
	return true
end

-- 剑气天石扣除函数
function SmashPot_Activities_UseEmony(nNpcId,nSwordkee,nItemId)
	local nUserEMoney = Get_UserEMoney(nUserId)
	if nUserEMoney < nSwordkee then
		return false
	end
	if not User_AddEMoney(-nSwordkee) then
		return false
	end
	local sBuySwordkeeLog = tSmashPot_Activities_Log["BuySwordkee"]
	Sys_SaveEmoneyBuy(string.format(sBuySwordkeeLog,nSwordkee,nSwordkee))
	local sBuyLog = tSmashPot_Activities_Log["ExtraEMoney"][2]
	Sys_SaveEmoneyBuy(string.format(sBuyLog,nSwordkee,nSwordkee))
	local sNormalLog = tSmashPot_Activities_Log["BuySwordkeeNormal"]
	Sys_SaveActionFestivalLog(string.format(sNormalLog,nSwordkee))
	return true
end

-- 刷新藏宝罐（宝罐刷新券）
function SmashPot_Activities_Refresh(nNpcId)
	-- 活动时间外
	if not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"]) then
		return
	end
	local nUserId = Get_UserId()
	-- 不在当前地图
	if not SmashPot_Activities_NotInMap(nUserId) then
		return
	end
	local nTime = os.time()
	local nUserTime = tSmashPot_Activities_Second[nUserId] or 0
	if nUserTime ~= 0 and (nTime - nUserTime < 3) then
		Sys_MsgBox(tSmashPot_Activities_Text["RefreshLimit"])
		return
	end
	
	-- 无宝罐刷新券
	local nItemId = tSmashPot_Activities_Count["RefreshItemId"]
	local nRefreshEMoney = tSmashPot_Activities_Count["RefreshEMoney"]
	if not Item_ChkItem(nItemId) then
		local sText = tSmashPot_Activities_Text[nNpcId]["Text313"]
		tNpcGossip[nNpcId]["Text313"] = string.format(sText,nRefreshEMoney)
		local sOption = tSmashPot_Activities_Text[nNpcId]["Option311"]
		tNpcGossip[nNpcId]["Option311"] = string.format(sOption,nRefreshEMoney)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 有刷新卷
	-- local bDel = RewardTemplate_DelItem(tSmashPot_Activities_Reward[nItemId])
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Sys_SaveActionFestivalLog(tSmashPot_Activities_Reward[nItemId]["Log"])
		Sys_SaveEmoneyBuy(tSmashPot_Activities_Log["ExtraEMoney"][3])
		SmashPot_Activities_SuccessRefresh(nNpcId)
		tSmashPot_Activities_Second[nUserId] = os.time()
	end
end

-- 使用x天石开罐
function SmashPot_Activities_EMoneyRefresh(nNpcId)
	-- 活动时间外
	if not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"]) then
		return
	end
	-- 不在当前地图
	if not SmashPot_Activities_NotInMap(nUserId) then
		return
	end
	
	-- 天石不足
	local nRefreshEMoney = tSmashPot_Activities_Count["RefreshEMoney"]
	local nUserEMoney = Get_UserEMoney(nUserId)
	if nUserEMoney < nRefreshEMoney then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 隔天重置
	for i=1,#tSmashPot_Activities_Stc do
		SmashPot_Activities_ClearStcInterval(i)
	end
	
	-- 是否出二次确认
	if SmashPot_Activities_ChkStcValue(3,2) then
		-- 不出二次确认，直接扣除
		if not User_AddEMoney(-nRefreshEMoney) then
			return
		end
		
		-- 出对白
		SmashPot_Activities_SuccessRefresh(nNpcId)
		local nUserId = Get_UserId()
		tSmashPot_Activities_Second[nUserId] = os.time()
		
		-- 存LOG
		Sys_SaveActionFestivalLog(tSmashPot_Activities_Log["RefreshNormal"])
		Sys_SaveEmoneyBuy(tSmashPot_Activities_Log["RefreshEMoney"])
		Sys_SaveEmoneyBuy(tSmashPot_Activities_Log["ExtraEMoney"][4])
		return
	end
	
	-- 二次确认
	local sText = tSmashPot_Activities_Text[nNpcId]["Text331"]
	tNpcGossip[nNpcId]["Text331"] = string.format(sText,nRefreshEMoney)
	LinkNpcGossipFunc_New(nNpcId,"3-3")
end

-- 天石二次确认
function SmashPot_Activities_SureRefresh(nNpcId,nType)
	-- 活动时间外
	if not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"]) then
		return
	end
	-- 不在当前地图
	if not SmashPot_Activities_NotInMap(nUserId) then
		return
	end
	
	-- 天石不足
	local nRefreshEMoney = tSmashPot_Activities_Count["RefreshEMoney"]
	local nUserEMoney = Get_UserEMoney(nUserId)
	if nUserEMoney < nRefreshEMoney then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 直接扣除
	if not User_AddEMoney(-nRefreshEMoney) then
		return
	end
	
	if nType ~= nil then
		SmashPot_Activities_AddStcValue(3,2)
	end
	
	-- 出对白
	SmashPot_Activities_SuccessRefresh(nNpcId)
	local nUserId = Get_UserId()
	tSmashPot_Activities_Second[nUserId] = os.time()
	
	-- 存LOG
	Sys_SaveActionFestivalLog(tSmashPot_Activities_Log["RefreshNormal"])
	Sys_SaveEmoneyBuy(tSmashPot_Activities_Log["RefreshEMoney"])
	Sys_SaveEmoneyBuy(tSmashPot_Activities_Log["ExtraEMoney"][4])
end

-- 成功后刷新对白
function SmashPot_Activities_SuccessRefresh(nNpcId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	SmashPot_Activities_SuccessOther(nNpcId,nUserId)
	local nData =SmashPot_Activities_GetStcValue(1,nUserId)
	
	-- 无颜色区分
	SmashPot_Activities_ShowDialog(nData,nNpcId,1,nUserId)
	-- 生成对白
	-- LinkNpcGossipFunc_New(nNpcId,"1-1")
	SmashPot_Activities_NpcMain(nNpcId,1)
end

function SmashPot_Activities_SuccessOther(nNpcId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nOldData = SmashPot_Activities_GetStcValue(1,nUserId)
	local nOldPhase = SmashPot_Activities_GetStcValue(2,nUserId)
	-- 清除掩码
	SmashPot_Activities_SetStcValue(2,0,nUserId)
	SmashPot_Activities_SetStcValue(7,0,nUserId)
	
	-- 随机奖池
	local nFlag,tRandomNum = Probabil_RandomAward(tSmashPot_Activities_Random["jackpot"],1)
	local nData = tRandomNum[1]["tAward"][1]["Item"]
	SmashPot_Activities_SetStcValue(1,nData,nUserId)
	-- 创建npc
	SmashPot_Activities_CreateNpc(nOldData,nOldPhase,nData,nUserId)
end

-- 刷新排行榜
function SmashPot_Activities_RefreshRankingData(nScore,nNowUserId)
	local nUserId =  nNowUserId or Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local tRank = CommonFunc_Copy(tSmashPot_Activities_RankingData)
	local nHave =  #tRank+1
	local sReward = "0"
	
--玩家的数据插入表中
	if #tRank == 0 then
		nHave = 1
	else
		for a,k in pairs(tRank) do
			if k["UserId"] == nUserId then
				nHave = a
			end
		end
	end
	tRank[nHave] = {}
	tRank[nHave]["UserId"] = nUserId
	tRank[nHave]["UserName"] = sUserName
	tRank[nHave]["Score"] = nScore
	tRank[nHave]["Reward"] = sReward
	
	-- 排序
	local tTemporary = {}
	for i = 1,#tRank do
		for j = 1, #tRank - i do
			if tRank[j]["UserId"] == 0 or ( tRank[j]["Score"] < tRank[j+1]["Score"] and tRank[j+1]["UserId"]  ~= 0) then
				tTemporary = tRank[j]
				tRank[j] = tRank[j+1]
				tRank[j+1] = tTemporary
			end
		end
	end
	local nRankingNum = tSmashPot_Activities_Count["RankingNum"]
	if #tRank > nRankingNum then
		table.remove(tRank,nRankingNum+1)
	end
	--把表里的数据放入动态表中
	tSmashPot_Activities_RankingData = CommonFunc_Copy(tRank)
	for g,h in pairs(tSmashPot_Activities_RankingData) do
		if g <= nRankingNum then
			SmashPot_Activities_RankingDataBase(h["UserId"],h["UserName"],h["Score"],g)
		end
	end
end

-- 刷新排行榜数据库
function SmashPot_Activities_RankingDataBase(nUserId,sUserName,nScore,nRanking)
	local nGlobalId,nPos = SmashPot_Activities_GetPos(nRanking)
	Sys_SetSynaGlobalData(nGlobalId,nPos,nUserId)
	Sys_SetSynaGlobalData(nGlobalId,nPos+1,nScore)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sUserName)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,"0")
end

-- 只刷新领奖
function SmashPot_Activities_RankingReward(sReward,nRanking)
	local nGlobalId,nPos = SmashPot_Activities_GetPos(nRanking)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,sReward)
end

-- 获得ID和Pos
function SmashPot_Activities_GetPos(nRanking)
	local nTableIndex = math.ceil(nRanking/3)
	local nGlobalId = tSmashPot_Activities_Count["GlobalId"][nTableIndex]
	local nPos = nRanking - (nTableIndex-1)*3
	if nPos == 1 then
		nPos = 0
	elseif nPos == 2 then
		nPos = 2
	elseif nPos == 3 then
		nPos = 4
	end
	return nGlobalId,nPos
end
---------------------------------------------------物品---------------------------------------------------
-- 寻路小河神
function SmashPot_Activities_UseItem(nItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			if tSmashPot_Activities_Text[nItemId] ~= nil then
				User_TalkChannel2005(tSmashPot_Activities_Text[nItemId]["OverDue"])
			else
				User_TalkChannel2005(tSmashPot_Activities_Text["OverDueCard"])
			end
			local sLog = tSmashPot_Activities_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nItemNum))
 		end
		return
	end
	
	-- 寻路
	SmashPot_Activities_Goto(1)
end

--------------------------------------怪物-------------------------------------------
-- 片区怪物掉落
function SmashPot_Activities_KillMonsterDrop(nMonsterId)
	SmashPot_Activities_RealDrop(nMonsterId,1)
end
-- 潜龙渊几率翻倍
function SmashPot_Activities_KillMonsterDropDouble(nMonsterId)
	SmashPot_Activities_RealDrop(nMonsterId,2)
end

function SmashPot_Activities_RealDrop(nMonsterId,nIndex)
	-- 活动时间
	if not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"]) then
		return
	end
	
	-- 激情服或者绿色新服不上
	-- if SpecialServer_ChkNoGiftServer() then
		-- return
	-- end
	-- if SpecialServer_ChkGreenServer() then
		-- return
	-- end
	
	-- 等级不足
	local nLevel = tSmashPot_Activities_Count["Level"]
	local nMeto = tSmashPot_Activities_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
		return
	end
	
	-- 背包空间
	local nSpaceSW = RewardTemplate_GetRandomSpace(tSmashPot_Activities_KillMonster[nIndex],1)
	local nSpaceRefresh = 0 --RewardTemplate_GetRandomSpace(tSmashPot_Activities_KillMonster[nIndex],2)
	local nSpaceNum = nSpaceSW+nSpaceRefresh
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		User_TalkChannel2005(string.format(tSmashPot_Activities_Text["KillMoster"]["NoSpace"],nSpaceNum))
		return
	end
	
	-- 隔天重置
	local bHave = false
	local tData = {}
	for i=4,5 do
		SmashPot_Activities_ClearStcInterval(i)
		-- 判断上限
		local nLimit = tSmashPot_Activities_Stc[i]["Limit"]
		-- 今日上限
		local nData = SmashPot_Activities_GetStcValue(i)
		tData[i] = nData
		if nData < nLimit then
			bHave = false
			break
		else
			bHave = true
		end
	end
	-- 全部都达到上限
	if bHave then
		return
	end
	
	-- 给奖励
	local sRewardStr = RewardTemplate_NewRandom(tSmashPot_Activities_KillMonster[nIndex],1)
	
	-- 最后一个给105弹框提示
	if sRewardStr ~= "" then
		for i=4,5 do
			-- 判断上限
			local nLimit = tSmashPot_Activities_Stc[i]["Limit"]
			-- 今日上限
			local nData = SmashPot_Activities_GetStcValue(i)
			if nData == nLimit then
				SmashPot_Activities_AddStcValue(i,1)
				Sys_MsgBox(tSmashPot_Activities_Text["KillMoster"][i])
			end
		end
	end
end
--------------------------------------陷阱-------------------------------------------
-- 陷阱传送回双龙城
function SmashPot_Activities_TrapFunc(nTrapId,nTrapType)
	local nSmashPot_TransIndex = 4
	if SpecialServer_ChkNoGiftServer() then
		nSmashPot_TransIndex = 5
	end
	
	local nPosX = tSmashPot_Activities_FindWay[nSmashPot_TransIndex]["PosX"]
	local nPosY = tSmashPot_Activities_FindWay[nSmashPot_TransIndex]["PosY"]
	local nMapId = tSmashPot_Activities_FindWay[nSmashPot_TransIndex]["MapId"]
	local nRange = tSmashPot_Activities_FindWay[nSmashPot_TransIndex]["Range"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
end

function SmashPot_Activities_Enter(nTrapId,nTrapType)
	local nUserId = Get_UserId()
	
	if not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"]) then
		Sys_MsgBox(tSmashPot_Activities_Text["OutTime"],nil,nil,nUserId)
		return
	end

	-- 判断是否跨服
	if User_IsCross(nUserId) then
		return
	end
	
	-- 等级不足
	local nLevel = tSmashPot_Activities_Count["Level"]
	local nMeto = tSmashPot_Activities_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto,nUserId) then
		Sys_MsgBox(tSmashPot_Activities_Text["NoLevel"],nil,nil,nUserId)
		return
	end
	
	-- 组队不可进去
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum > 1 then
		Sys_MsgBox(tSmashPot_Activities_Text["TeamStatus"],nil,nil,nUserId)
		return
	end
	
	-- 隔天重置
	for i=1,#tSmashPot_Activities_Stc do
		SmashPot_Activities_ClearStcInterval(i,nUserId)
	end
	
	-- 获得玩家当前奖池
	local nData = SmashPot_Activities_GetStcValue(1,nUserId)
	-- 未随机的重新随机奖池
	if nData == 0 then
		local nFlag,tRandomNum = Probabil_RandomAward(tSmashPot_Activities_Random["jackpot"],1)
		nData = tRandomNum[1]["tAward"][1]["Item"]
		SmashPot_Activities_SetStcValue(1,nData,nUserId)
	end
	
	-- 进入龙王庙
	if not User_EnterInstance(tSmashPot_Activities_Count["Instancetype"]) then
		return
	end
	local nMapId = Get_UserMapId(nUserId)
	-- 创建npc
	SmashPot_Activities_FirstCreateDynaNpc(nUserId)
	-- 进入地图光效
	SmashPot_Activities_EffectAdd(4,nUserId)
	-- 自动寻路到集气区的透明npc	
	local sFunc = "SmashPot_Activities_GotoTip"
	local sMsgbox = ""
	
	if not SmashPot_Activities_ChkStcValue(6,2,nUserId) then
		sMsgbox = tSmashPot_Activities_Text["FirstMsgBox"]
	else
		sMsgbox = tSmashPot_Activities_Text["MsgBox"]
	end
	
	Sys_MsgBox(sMsgbox,sFunc,nil,nUserId)
end

-----------------------------------------------上线触发
function SmashPot_Activities_OnLine()
	-- 付费未领奖的补发
	SmashPot_Activities_ClearStcInterval(8)
	SmashPot_Activities_ClearStcInterval(9)
end
-----------------------------------------------服务器启动
function SmashPot_Activities_StartRankingData()
	tSmashPot_Activities_RankingData = {}
	for i,v in pairs(tSmashPot_Activities_Count["GlobalId"]) do
		for a=1,3 do
			local nIndex = (a-1)*2
			local nUserId = Get_SysDynaGlobalData(v,nIndex)
			if nUserId ~= 0 then
				local sUserName = Get_SysDynaGlobalDataStr(v,nIndex)
				local nScore = Get_SysDynaGlobalData(v,nIndex+1)
				local sReward = tonumber(Get_SysDynaGlobalDataStr(v,nIndex+1))
				local nRank = #tSmashPot_Activities_RankingData +1
				tSmashPot_Activities_RankingData[nRank] = {}
				tSmashPot_Activities_RankingData[nRank]["UserId"] = nUserId
				tSmashPot_Activities_RankingData[nRank]["UserName"] = sUserName
				tSmashPot_Activities_RankingData[nRank]["Score"] = nScore
				tSmashPot_Activities_RankingData[nRank]["Reward"] = sReward
			end
		end
	end
end
--------------------------------------NPC模块-------------------------------------------
-- 集气区
tNpcGossip[22218] = tNpcGossip[22218] or DefaultNpc:new{}
tNpcGossip[22218]["OptionHidden"] = 1
tNpcGossip[22218]["DialogueText"] = tSmashPot_Activities_Text[22218]
-- 对白
tNpcGossip[22218]["Text1-1"] = {111,112,1130,1131,1132,1133,1134,1135,1136,1137,1138,116,117,119}
tNpcGossip[22218]["tOption1-1"] = {111,112,113,114}
tNpcGossip[22218]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"])
end
-- 1、开始开罐 
tNpcGossip[22218]["OptionFunc111"] = "SmashPot_Activities_Open</N>22218"
-- 2、刷新藏宝罐（宝罐刷新券）
tNpcGossip[22218]["OptionFunc112"] = "SmashPot_Activities_Refresh</N>22218"
-- 3、珍宝详情
tNpcGossip[22218]["OptionPoint113"] = "4-1"
-- 4、开罐要诀
tNpcGossip[22218]["OptionPoint114"] = "4-3"

-- 活动后
tNpcGossip[22218]["Text1-2"] = {121}
tNpcGossip[22218]["tOption1-2"] = {121}
-- 离开龙王庙
tNpcGossip[22218]["OptionFunc121"] = "SmashPot_Activities_TrapFunc"

-- 【接1，NPC对白】
tNpcGossip[22218]["Text2-1"] = {111,112,1130,1131,1132,1133,1134,1135,1136,1137,1138,116,211,212,213,214}
tNpcGossip[22218]["tOption2-1"] = {211,2110}
-- for i=211,219 do
		-- local nBasicNpcId = tSmashPot_Activities_Count["BasicNpcId"]
		-- local nIndex = i-211+1
		-- tNpcGossip[22218]["OptionChkFunc"..i] = function()
			-- local nParse =  tSmashPot_Activities_NpcPos[nBasicNpcId+nIndex]["Parse"]
			-- if SmashPot_Activities_ChkStcValue(2,nParse) then
				-- return false
			-- else
				-- return true
			-- end
		-- end
-- end

-- 【接1-x，剑气不足，NPC对白】
tNpcGossip[22218]["Text2-2"] = {221,222,223}
tNpcGossip[22218]["tOption2-2"] = {221,222}
-- 1-x-1、使用x天石开罐
-- tNpcGossip[22218]["OptionFunc221"] = "SmashPot_Activities_EmonyBuy</N>22218"
-- 1-x-2、暂不开罐  ==（关闭对话）

-- 【接1-x-1，天石不足，NPC对白】
tNpcGossip[22218]["Text2-3"] = {231}
tNpcGossip[22218]["tOption2-3"] = {231}
-- 【接1-x-1，天石充足，二次确认，NPC对白】
tNpcGossip[22218]["Text2-4"] = {241,242}
tNpcGossip[22218]["tOption2-4"] = {241,242,243}
-- 1-x-1-1、确认花费
-- tNpcGossip[22218]["OptionFunc241"] = "SmashPot_Activities_EmonyBuy</N>22218"
-- 1-x-1-2、确认花费,今日不再询问  ===（今日屏蔽二次确认）
-- tNpcGossip[22218]["OptionFunc242"] = "SmashPot_Activities_EmonyBuy</N>22218</N>1"
-- 1-x-1-3、暂不花费
-- 【成功砸罐后，NPC对白重复上轮对白】

-- 【接1，玩家打开对话框时有打折券，后将打折券扔掉，NPC对白】
tNpcGossip[22218]["Text2-5"] = {251}
tNpcGossip[22218]["tOption2-5"] = {251}
-- 我明白了 ==（返回上一层）
tNpcGossip[22218]["OptionPoint251"] = 1

-- 【接2，无宝罐刷新券，NPC对白】
tNpcGossip[22218]["Text3-1"] = {311,312,313}
tNpcGossip[22218]["tOption3-1"] = {311,312}
-- 2-1、使用x天石刷新
tNpcGossip[22218]["OptionFunc311"] = "SmashPot_Activities_EMoneyRefresh</N>22218"
-- 2-2、暂不刷新  ==（关闭对话）
-- 【接2-1，天石不足，NPC对白】
tNpcGossip[22218]["Text3-2"] = {321}
tNpcGossip[22218]["tOption3-2"] = {321}
-- 【接2-1，天石充足，二次确认，NPC对白】
tNpcGossip[22218]["Text3-3"] = {331}
tNpcGossip[22218]["tOption3-3"] = {331,332,333}
-- 2-1-1、确认花费
tNpcGossip[22218]["OptionFunc331"] = "SmashPot_Activities_SureRefresh</N>22218"
-- 2-1-2、确认花费,今日不再询问  ===（今日屏蔽二次确认）
tNpcGossip[22218]["OptionFunc332"] = "SmashPot_Activities_SureRefresh</N>22218</N>1"
-- 2-1-3、暂不花费
-- 【接2，有刷新券，NPC对白】
-- 1-1 对白不出119
 
-- 【接3，NPC对白】
tNpcGossip[22218]["Text4-1"] = {411,412,413,414,415,416,417}
tNpcGossip[22218]["tOption4-1"] = {411}
tNpcGossip[22218]["OptionFunc411"] = "SmashPot_Activities_NpcMain</N>22218</N>1"

-- 【接上，玩家已上交剑气，但不去开罐还手贱又点了npc，NPC】
tNpcGossip[22218]["Text4-2"] = {421}
tNpcGossip[22218]["tOption4-2"] = {421}

-- 【接4，NPC对白】
tNpcGossip[22218]["Text4-3"] = {431,432,433,434,435,436,437,438,439,4310}
tNpcGossip[22218]["tOption4-3"] = {431}
tNpcGossip[22218]["OptionFunc431"] = "SmashPot_Activities_NpcMain</N>22218</N>1"

-- 自动补充剑气二次确认
tNpcGossip[22218]["Text4-4"] = {441}
tNpcGossip[22218]["tOption4-4"] = {441,442}
tNpcGossip[22218]["OptionFunc441"] = "SmashPot_Activities_ForSure</N>22218"

-- 已经自动补充剑气
tNpcGossip[22218]["Text4-5"] = {451}
tNpcGossip[22218]["tOption4-5"] = {451}

-- -x号罐子
tNpcGossip[22219] = tNpcGossip[22219] or DefaultNpc:new{}
tNpcGossip[22219]["OptionHidden"] = 1
tNpcGossip[22219]["DialogueText"] = tSmashPot_Activities_Text[22219] 
-- 活动对白
tNpcGossip[22219]["Text1-1"] = {111,112,116,113,114,115,117}
tNpcGossip[22219]["tOption1-1"] = {111,112,113}
tNpcGossip[22219]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"])
end
-- 1、打开此罐（x道剑气）
-- tNpcGossip[22219]["OptionFunc111"] = "SmashPot_Activities_Open</N>22219"
-- 1、打开此罐（折后仅需x道剑气）  ===（有此次打折券则显示此对白）
-- tNpcGossip[22219]["OptionFunc112"] = "SmashPot_Activities_Open</N>22219"
-- 2、前往刷新藏宝罐  ===（自动寻路到集气区npc）
tNpcGossip[22219]["OptionFunc113"] = "SmashPot_Activities_Goto</N>2"

-- 活动后
tNpcGossip[22219]["Text1-2"] = {121}
tNpcGossip[22219]["tOption1-2"] = {121}
-- 离开龙王庙
tNpcGossip[22219]["OptionFunc121"] = "SmashPot_Activities_TrapFunc"

-- 【接1-x，剑气不足，NPC对白】
tNpcGossip[22219]["Text2-2"] = {221,222,223}
tNpcGossip[22219]["tOption2-2"] = {221,222}
-- 1-x-1、使用x天石开罐
-- tNpcGossip[22219]["OptionFunc221"] = "SmashPot_Activities_EmonyBuy</N>22219"
-- 1-x-2、暂不开罐  ==（关闭对话）

-- 【接1-x-1，天石不足，NPC对白】
tNpcGossip[22219]["Text2-3"] = {231}
tNpcGossip[22219]["tOption2-3"] = {231}
-- 【接1-x-1，天石充足，二次确认，NPC对白】
tNpcGossip[22219]["Text2-4"] = {241,242}
tNpcGossip[22219]["tOption2-4"] = {241,242,243}
-- 1-x-1-1、确认花费
-- tNpcGossip[22219]["OptionFunc241"] = "SmashPot_Activities_EmonyBuy</N>22219"
-- 1-x-1-2、确认花费,今日不再询问  ===（今日屏蔽二次确认）
-- tNpcGossip[22219]["OptionFunc242"] = "SmashPot_Activities_EmonyBuy</N>22219</N>1"
-- 1-x-1-3、暂不花费
-- 【成功砸罐后，NPC对白重复上轮对白】

-- 【接1，玩家打开对话框时有打折券，后将打折券扔掉，NPC对白】
tNpcGossip[22219]["Text2-5"] = {251}
tNpcGossip[22219]["tOption2-5"] = {251}
-- 我明白了 ==（返回上一层）
tNpcGossip[22219]["OptionPoint251"] = 1

tNpcGossip[22220] = tNpcGossip[22219]
tNpcGossip[22221] = tNpcGossip[22219]
tNpcGossip[22222] = tNpcGossip[22219]
tNpcGossip[22223] = tNpcGossip[22219]
tNpcGossip[22224] = tNpcGossip[22219]
tNpcGossip[22225] = tNpcGossip[22219]

-- 22284,'活动前'
tNpcGossip[22284] = tNpcGossip[22284] or DefaultNpc:new{}
tNpcGossip[22284]["OptionHidden"] = 1
tNpcGossip[22284]["DialogueText"] = tSmashPot_Activities_Text[22284]
-- 活动前
tNpcGossip[22284]["Text1-1"] = {111,112}
tNpcGossip[22284]["tOption1-1"] = {111}
tNpcGossip[22284]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tSmashPot_Activities_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[22284]["Text1-2"] = {121}
tNpcGossip[22284]["tOption1-2"] = {121}
tNpcGossip[22284]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"])
end

-- 活动中
tNpcGossip[22284]["Text1-3"] = {131,132,133}
tNpcGossip[22284]["tOption1-3"] = {131}
tNpcGossip[22284]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"])
end
-- 马上去龙王庙
tNpcGossip[22284]["OptionFunc131"] = "SmashPot_Activities_Goto</N>1"


-- 22217,'阶段目标板'
tNpcGossip[22217] = tNpcGossip[22217] or DefaultNpc:new{}
tNpcGossip[22217]["OptionHidden"] = 1
tNpcGossip[22217]["DialogueText"] = tSmashPot_Activities_Text[22217]
tNpcGossip[22217]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115}
tNpcGossip[22217]["tOption1-1"] = {111}
tNpcGossip[22217]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"])
end
-- 活动后
tNpcGossip[22217]["Text1-2"] = {121}
tNpcGossip[22217]["tOption1-2"] = {121}
tNpcGossip[22217]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"])
end
-- 离开龙王庙
tNpcGossip[22217]["OptionFunc121"] = "SmashPot_Activities_TrapFunc"
-- 22400,'开罐排行榜 '
tNpcGossip[22400] = tNpcGossip[22400] or DefaultNpc:new{}
tNpcGossip[22400]["OptionHidden"] = 1
tNpcGossip[22400]["DialogueText"] = tSmashPot_Activities_Text[22400]
tNpcGossip[22400]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116}
tNpcGossip[22400]["tOption1-1"] = {111}
tNpcGossip[22400]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"])
end
-- 活动后
tNpcGossip[22400]["Text1-2"] = {121}
tNpcGossip[22400]["tOption1-2"] = {121}
tNpcGossip[22400]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tSmashPot_Activities_Count["ActivityTime"])
end
-- 离开龙王庙
tNpcGossip[22400]["OptionFunc121"] = "SmashPot_Activities_TrapFunc"

--------------------------------------物品模块-------------------------------------------
-- 背包信
tItemFace [3305661] = 848
-- 3305662,'剑气'
tItem[3305662] = tItem[3305662] or {}
tItem[3305662]["Function"] = function(nItemId,sItemName)
	SmashPot_Activities_UseItem(nItemId)
end
-- 3305663,'宝罐刷新券'
tItem[3305663] = tItem[3305662]
-- 3306314,'流星卷精装包'
tItem[3306314] = tItem[3306314] or {}
tItem[3306314]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tSmashPot_Activities_OpenItem[nItemId])
end
-- 3306315,'龙珠大礼包'
tItem[3306315] = tItem[3306314] 



--------------------------------------陷阱模块-------------------------------------------
tTrap[1760] = tTrap[1760] or {}
tTrap[1760]["Function"] = function(nTrapId,nTrapType)
	SmashPot_Activities_TrapFunc(nTrapId,nTrapType)
end

tTrap[1765] = tTrap[1765] or {}
tTrap[1765]["Function"] = function(nTrapId,nTrapType)
	SmashPot_Activities_Enter(nTrapId,nTrapType)
end

--------------------------------------怪物掉落-------------------------------------------
-- 3973	水魔兽
-- 3974	300星水魔兽
-- 3975	350星水魔兽
-- 4709	380星水魔兽
-- 4710		水魇兽
-- 4711		300星水魇兽
-- 4712		350星水魇兽
-- 4713		380星水魇兽
-- 4720	天魇神将		特殊强力怪 爆率比常规怪物高，但一样还是有幸运值限制
-- 3976	晶魄血妖
-- 3977	禁天邪兽
-- 3978	啸海狂魔
-- 3970	妖后瑶姬
-- 3971		邪龙护法
-- 3979	盗宝小妖【流星】
-- 3980	盗宝小妖【经验】
-- 3981		盗宝小妖【龙珠】
-- 3982	盗宝小妖【气力】
-- 3983	盗宝小妖【赤炼】
-- 3984	盗宝小妖【神魂】
-- 3985	盗宝小妖【银两】
-- 3986	盗宝小妖【装备】
-- 3992	盗宝小妖【神器】
local tSmashPot_Activities_Drop = {}
	-- 潜龙渊的掉落
	tSmashPot_Activities_Drop[1] = {}
	tSmashPot_Activities_Drop[1]["ActivityTime"] = tSmashPot_Activities_Count["ActivityTime"]
	tSmashPot_Activities_Drop[1]["Function"] = SmashPot_Activities_KillMonsterDropDouble
	tSmashPot_Activities_Drop[1]["MonsterId"] = {3973,3974,3975,4709,4710,4711,4712,4713,4720,3976,3977,3978,3970,3971,3979,3980,3981,3982,3983,3984,3985,3986,3992}
	
	-- 全片区
	tSmashPot_Activities_Drop[2] = {}
	tSmashPot_Activities_Drop[2]["ActivityTime"] = tSmashPot_Activities_Count["ActivityTime"]
	tSmashPot_Activities_Drop[2]["Function"] = SmashPot_Activities_KillMonsterDrop
	
	tSmashPot_Activities_Drop[3] = {}
	tSmashPot_Activities_Drop[3]["ActivityTime"] = tSmashPot_Activities_Count["ActivityTime"]
	tSmashPot_Activities_Drop[3]["Function"]= SmashPot_Activities_KillMonsterDrop
	tSmashPot_Activities_Drop[3]["MonsterId"] = {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
		4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad,tSmashPot_Activities_Drop[1])
table.insert(tMonsterDrop_AreaLoad,tSmashPot_Activities_Drop[2])
table.insert(tMonsterDrop_AreaLoad_NoGift,tSmashPot_Activities_Drop[3])

-- 上线触发
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,SmashPot_Activities_OnLine)

-- 服务器启动获得排行表数据，只取一次/可改服务器加载
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],SmashPot_Activities_StartRankingData)

------------------------------------------发邮件
--tOntimerMin_HM	小时/分钟（每天的00点00分到00点02分执行）
--'00:00-00:02'
local tSmashPot_Activities_OnTime = {}
	tSmashPot_Activities_OnTime[1] = {}
	tSmashPot_Activities_OnTime[1]["ActivityTime"] = tSmashPot_Activities_Count["AfterActivityTime"]
	tSmashPot_Activities_OnTime[1]["Type"] = 6
	tSmashPot_Activities_OnTime[1]["TimeType"] = 4
	tSmashPot_Activities_OnTime[1]["Multiple"] = {}
	tSmashPot_Activities_OnTime[1]["Multiple"][1]  = "00:00 00:00"
	tSmashPot_Activities_OnTime[1]["Multiple"][2]  = "00:01 00:01"
	tSmashPot_Activities_OnTime[1]["Multiple"][3]  = "00:02 00:02"
	tSmashPot_Activities_OnTime[1]["Func"] = SmashPot_Activities_SendRankingReward
table.insert(tSystemTime_InitialData,tSmashPot_Activities_OnTime[1])


