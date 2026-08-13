----------------------------------------------------------------------------------------
--Name:		170328[简体征服][活动脚本]新服主题周活动制作(4.26-5.23)
--Purpose:		新服主题周活动制作
--Creator:		严振飞
--Created:		2017/03/29
----------------------------------------------------------------------------------------

--命名规则
--NewServerWeeks_

-- Log id : 12000690

-- 掩码说明：
--158,65 记录是否签到
--158,66 记录进入副本次数
--158,67 记录击杀怪物数量
--158,68 记录赤龙异宝使用次数

-- 动态存储表
-- 51523
-- data1     记录“秘境天石礼包(赠）”全服产出上限

-- datastr0  记录活动总时间 		-- tNewServerWeeks_Cont["ActAllTime"]
-- datastr1  记录活动第一周时间 	-- tNewServerWeeks_Cont["ActTime"][1]
-- datastr2  记录活动第二周时间 	-- tNewServerWeeks_Cont["ActTime"][2]
-- datastr3  记录活动第三周时间 	-- tNewServerWeeks_Cont["ActTime"][3]
-- datastr4  记录活动第四周时间 	-- tNewServerWeeks_Cont["ActTime"][4]


-------------------------------------------基础数据部分-------------------------------------------
-- 掩码数据
local tNewServerWeeks_Stc = {}
	--158,65 记录是否签到
	tNewServerWeeks_Stc[1] = {}
	tNewServerWeeks_Stc[1]["EventType"] = 158
	tNewServerWeeks_Stc[1]["DataType"] = 65
	--158,66 记录进入副本次数
	tNewServerWeeks_Stc[2] = {}
	tNewServerWeeks_Stc[2]["EventType"] = 158
	tNewServerWeeks_Stc[2]["DataType"] = 66
	tNewServerWeeks_Stc[2]["Times"] = 4 -- （真实次数要减1）
	--158,67 记录击杀怪物数量
	tNewServerWeeks_Stc[3] = {}
	tNewServerWeeks_Stc[3]["EventType"] = 158
	tNewServerWeeks_Stc[3]["DataType"] = 67
	tNewServerWeeks_Stc[3]["Complete"] = 100
	--158,68 记录赤龙异宝使用次数
	tNewServerWeeks_Stc[4] = {}
	tNewServerWeeks_Stc[4]["EventType"] = 158
	tNewServerWeeks_Stc[4]["DataType"] = 68
	tNewServerWeeks_Stc[4]["Complete"] = 5


	
--------------------------------
-- 地图内陷阱传送坐标
local tNewServerWeeks_Cont = {}
------ 总活动时间-- 【活动时间根据51131控制，开服自动配置整个活动时间数据】
	tNewServerWeeks_Cont["ActAllTime"] = "2020-06-11 00:00 2020-07-08 23:59"
------ 各活动周时间
	tNewServerWeeks_Cont["ActTime"] = {}
	tNewServerWeeks_Cont["ActTime"][1] = "2020-06-11 00:00 2020-06-17 23:59"
	tNewServerWeeks_Cont["ActTime"][2] = "2020-06-18 00:00 2020-06-24 23:59"
	tNewServerWeeks_Cont["ActTime"][3] = "2020-06-25 00:00 2020-07-01 23:59"
	tNewServerWeeks_Cont["ActTime"][4] = "2020-07-02 00:00 2020-07-08 23:59"
	
------ 秘境开放时间
	tNewServerWeeks_Cont["OpenPlace"] = "8:00 23:59"
	
	-- 新服动态码
	tNewServerWeeks_Cont["NewGlobalId"] = 51131
	
	-- 记录活动时间动态码
	tNewServerWeeks_Cont["TimeGlobalId"] = 51523

	-- 内嵌网页
	tNewServerWeeks_Cont["Web"] = "http://co.99.com/guide/event/2017/newservercarnival/"
	-- 等级要求
	tNewServerWeeks_Cont["Level"] = 80
	tNewServerWeeks_Cont["Metempsychosis"] = 0
	
	
	-- 青岚秘境出去陷阱
	tNewServerWeeks_Cont["TrapChgMap"] = {1002,321,441,2,2}

------ 寻路数据
	tNewServerWeeks_Cont["FindWay"] = {}
	-- 秘境金仙
	-- tNewServerWeeks_Cont["FindWay"][20462] = {}
	-- tNewServerWeeks_Cont["FindWay"][20462]["MapId"] = 1036
	-- tNewServerWeeks_Cont["FindWay"][20462]["PosX"] = 249
	-- tNewServerWeeks_Cont["FindWay"][20462]["PosY"] = 180
	-- 聚宝秘境仙子
	-- tNewServerWeeks_Cont["FindWay"][11003] = {}
	-- tNewServerWeeks_Cont["FindWay"][11003]["MapId"] = 1036
	-- tNewServerWeeks_Cont["FindWay"][11003]["PosX"] = 253
	-- tNewServerWeeks_Cont["FindWay"][11003]["PosY"] = 180

------ 传送秘境数据
	tNewServerWeeks_Cont["Place"] = {}
	tNewServerWeeks_Cont["Place"]["MapId"] = 10133
	
	tNewServerWeeks_Cont["Place"]["PosX"] = {}
	tNewServerWeeks_Cont["Place"]["PosX"][1] = 338
	tNewServerWeeks_Cont["Place"]["PosX"][2] = 200
	tNewServerWeeks_Cont["Place"]["PosX"][3] = 468
	tNewServerWeeks_Cont["Place"]["PosX"][4] = 468
	tNewServerWeeks_Cont["Place"]["PosX"][5] = 199

	tNewServerWeeks_Cont["Place"]["PosY"] = {}
	tNewServerWeeks_Cont["Place"]["PosY"][1] = 337
	tNewServerWeeks_Cont["Place"]["PosY"][2] = 472
	tNewServerWeeks_Cont["Place"]["PosY"][3] = 472
	tNewServerWeeks_Cont["Place"]["PosY"][4] = 204
	tNewServerWeeks_Cont["Place"]["PosY"][5] = 203

	
-- 光效
local tNewServerWeeks_Effect = {}
	tNewServerWeeks_Effect["EffectObj"] = "self" 				-- 光效对象
-----
	tNewServerWeeks_Effect["MontDrop"] = "angelwing" 	-- 怪物掉落
	tNewServerWeeks_Effect["Sign"] = "angelwing" 		-- 签到光效

	
	
-- 创建精英怪物数据
local tNewServerWeeks_AddMont = {}
	tNewServerWeeks_AddMont["MapId"] = 10133
	tNewServerWeeks_AddMont["MontId"] = {}
	tNewServerWeeks_AddMont["MontId"][1] = 4328
	tNewServerWeeks_AddMont["MontId"][2] = 4348
	tNewServerWeeks_AddMont["MontId"][3] = 4349
	tNewServerWeeks_AddMont["MontId"][4] = 4350
	tNewServerWeeks_AddMont["MontId"][5] = 4351

	tNewServerWeeks_AddMont["GenerId"] = {}
	tNewServerWeeks_AddMont["GenerId"][1] = 21407
	tNewServerWeeks_AddMont["GenerId"][2] = 21408
	tNewServerWeeks_AddMont["GenerId"][3] = 21409
	tNewServerWeeks_AddMont["GenerId"][4] = 21410
	tNewServerWeeks_AddMont["GenerId"][5] = 21411

	-- 刷精英怪坐标
	tNewServerWeeks_AddMont["Pos"] = {}
	tNewServerWeeks_AddMont["Pos"][1] = {262,266}
	tNewServerWeeks_AddMont["Pos"][2] = {238,437}
	tNewServerWeeks_AddMont["Pos"][3] = {336,337}
	tNewServerWeeks_AddMont["Pos"][4] = {435,447}
	tNewServerWeeks_AddMont["Pos"][5] = {433,238}

-------------------------------------------奖励配置--------------------------------------------
-- 【新服狂欢推广大使】签到奖励
local tNewServerWeeks_Sign = {}
	-- == 经验周(装备周) ==
	tNewServerWeeks_Sign[1] = {}
	tNewServerWeeks_Sign[1]["NeedSpace"] = 2
	tNewServerWeeks_Sign[1]["RewardItem"] = {}
	tNewServerWeeks_Sign[1]["RewardItem"][1] = {}
	tNewServerWeeks_Sign[1]["RewardItem"][1]["Id"] = 3302781 -- 飞升丹(1天时效)
	tNewServerWeeks_Sign[1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tNewServerWeeks_Sign[1]["RewardItem"][2] = {}
	tNewServerWeeks_Sign[1]["RewardItem"][2]["Id"] = 3302783 -- 龙珠礼包
	tNewServerWeeks_Sign[1]["RewardItem"][2]["Attr"] = "0 1"
	tNewServerWeeks_Sign[1]["Log"] = "0,0,0,0,12000690,1[1],3302781[3302783],1[1]"

	-- == 武功周 ==
	tNewServerWeeks_Sign[2] = {}
	tNewServerWeeks_Sign[2]["NeedSpace"] = 2
	tNewServerWeeks_Sign[2]["RewardItem"] = {}
	tNewServerWeeks_Sign[2]["RewardItem"][1] = {}
	tNewServerWeeks_Sign[2]["RewardItem"][1]["Id"] = 3002926 -- 秘制免费修炼丹 * 5
	tNewServerWeeks_Sign[2]["RewardItem"][1]["Attr"] = "0 5"
	tNewServerWeeks_Sign[2]["RewardItem"][2] = {}
	tNewServerWeeks_Sign[2]["RewardItem"][2]["Id"] = 3002030 -- 强效护心丹 * 5
	tNewServerWeeks_Sign[2]["RewardItem"][2]["Attr"] = "0 5"
	tNewServerWeeks_Sign[2]["Log"] = "0,0,0,0,12000690,1[1],3002926[3002030],5[5]"

	-- == 练气周 ==
	tNewServerWeeks_Sign[3] = {}
	tNewServerWeeks_Sign[3]["NeedSpace"] = 1
	tNewServerWeeks_Sign[3]["RewardItem"] = {}
	tNewServerWeeks_Sign[3]["RewardItem"][1] = {}
	tNewServerWeeks_Sign[3]["RewardItem"][1]["Id"] = 3302796 -- 500气力值礼包
	tNewServerWeeks_Sign[3]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_Sign[3]["Log"] = "0,0,0,0,12000690,1[1],3302796,1"

	-- == 精炼周 ==
	tNewServerWeeks_Sign[4] = {}
	tNewServerWeeks_Sign[4]["NeedSpace"] = 1
	tNewServerWeeks_Sign[4]["RewardItem"] = {}
	tNewServerWeeks_Sign[4]["RewardItem"][1] = {}
	tNewServerWeeks_Sign[4]["RewardItem"][1]["Id"] = 3009001 -- 晶莹星陨石
	tNewServerWeeks_Sign[4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewServerWeeks_Sign[4]["Log"] = "0,0,0,0,12000690,1[1],3009001,1"

	
--- 怪物产生
local tNewServerWeeks_MontReward = {}
	tNewServerWeeks_MontReward["NeedSpace"] = {} -- 各周需要背包空间
	

	-- == （第一周）经验 ==
	tNewServerWeeks_MontReward["NeedSpace"][1] = 1  -- 背包空间
	tNewServerWeeks_MontReward[1] = {}
	tNewServerWeeks_MontReward[1][1] = {}
	-- 普通怪
	tNewServerWeeks_MontReward[1][1][4327] = {}
	tNewServerWeeks_MontReward[1][1][4327]["ItemChanceSum"] = 10000
	
	tNewServerWeeks_MontReward[1][1][4327][1] = {}
	tNewServerWeeks_MontReward[1][1][4327][1]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[1][1][4327][1]["ItemChance"] = 3300
	tNewServerWeeks_MontReward[1][1][4327][1]["RewardExpTime"] = {}
	tNewServerWeeks_MontReward[1][1][4327][1]["RewardExpTime"]["Value"] = 1
	tNewServerWeeks_MontReward[1][1][4327][1]["LogId"] = 12000690
	tNewServerWeeks_MontReward[1][1][4327][1]["RewardNoNeedTip"] = 1 

	tNewServerWeeks_MontReward[1][1][4327][2] = {}
	tNewServerWeeks_MontReward[1][1][4327][2]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[1][1][4327][2]["ItemChance"] = 3400
	tNewServerWeeks_MontReward[1][1][4327][2]["RewardExpTime"] = {}
	tNewServerWeeks_MontReward[1][1][4327][2]["RewardExpTime"]["Value"] = 3
	tNewServerWeeks_MontReward[1][1][4327][2]["LogId"] = 12000690
	tNewServerWeeks_MontReward[1][1][4327][2]["RewardNoNeedTip"] = 1 

	tNewServerWeeks_MontReward[1][1][4327][3] = {}
	tNewServerWeeks_MontReward[1][1][4327][3]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[1][1][4327][3]["ItemChance"] = 3300
	tNewServerWeeks_MontReward[1][1][4327][3]["RewardExpTime"] = {}
	tNewServerWeeks_MontReward[1][1][4327][3]["RewardExpTime"]["Value"] = 5
	tNewServerWeeks_MontReward[1][1][4327][3]["LogId"] = 12000690
	tNewServerWeeks_MontReward[1][1][4327][3]["RewardNoNeedTip"] = 1 

	-- 精英怪(经验)
	tNewServerWeeks_MontReward[1][1][4328] = {}
	tNewServerWeeks_MontReward[1][1][4328]["RewardExpTime"] = {}
	tNewServerWeeks_MontReward[1][1][4328]["RewardExpTime"]["Value"] = 300
	tNewServerWeeks_MontReward[1][1][4328]["LogId"] = 12000690
	tNewServerWeeks_MontReward[1][1][4328]["RewardNoNeedTip"] = 1 

	
	-- == （第一周）装备 ==
	tNewServerWeeks_MontReward[1][2] = {}
	-- 普通怪
	tNewServerWeeks_MontReward[1][2][4327] = {}
	tNewServerWeeks_MontReward[1][2][4327]["ItemChanceSum"] = 10000
	
	tNewServerWeeks_MontReward[1][2][4327][1] = {}
	tNewServerWeeks_MontReward[1][2][4327][1]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[1][2][4327][1]["ItemChance"] = 1000
	tNewServerWeeks_MontReward[1][2][4327][1]["RewardItem"] = {}
	tNewServerWeeks_MontReward[1][2][4327][1]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[1][2][4327][1]["RewardItem"][1]["Id"] = 3302787 -- 流星卷礼券
	tNewServerWeeks_MontReward[1][2][4327][1]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[1][2][4327][1]["LogId"] = 12000690
	tNewServerWeeks_MontReward[1][2][4327][1]["RewardNoNeedTip"] = 1 

	tNewServerWeeks_MontReward[1][2][4327][2] = {}
	tNewServerWeeks_MontReward[1][2][4327][2]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[1][2][4327][2]["ItemChance"] = 480
	tNewServerWeeks_MontReward[1][2][4327][2]["RewardItem"] = {}
	tNewServerWeeks_MontReward[1][2][4327][2]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[1][2][4327][2]["RewardItem"][1]["Id"] = 3302788 -- 龙珠礼券
	tNewServerWeeks_MontReward[1][2][4327][2]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[1][2][4327][2]["LogId"] = 12000690
	tNewServerWeeks_MontReward[1][2][4327][2]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[1][2][4327][3] = {}
	tNewServerWeeks_MontReward[1][2][4327][3]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[1][2][4327][3]["ItemChance"] = 140
	tNewServerWeeks_MontReward[1][2][4327][3]["RewardItem"] = {}
	tNewServerWeeks_MontReward[1][2][4327][3]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[1][2][4327][3]["RewardItem"][1]["Id"] = 3302790 -- 金钢坚钻礼券
	tNewServerWeeks_MontReward[1][2][4327][3]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[1][2][4327][3]["LogId"] = 12000690
	tNewServerWeeks_MontReward[1][2][4327][3]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[1][2][4327][4] = {}
	tNewServerWeeks_MontReward[1][2][4327][4]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[1][2][4327][4]["ItemChance"] = 480
	tNewServerWeeks_MontReward[1][2][4327][4]["RewardItem"] = {}
	tNewServerWeeks_MontReward[1][2][4327][4]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[1][2][4327][4]["RewardItem"][1]["Id"] = 3302789 -- 优质宝石礼券
	tNewServerWeeks_MontReward[1][2][4327][4]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[1][2][4327][4]["LogId"] = 12000690
	tNewServerWeeks_MontReward[1][2][4327][4]["RewardNoNeedTip"] = 1 

	tNewServerWeeks_MontReward[1][2][4327][5] = {}
	tNewServerWeeks_MontReward[1][2][4327][5]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[1][2][4327][5]["ItemChance"] = 200
	tNewServerWeeks_MontReward[1][2][4327][5]["RewardItem"] = {}
	tNewServerWeeks_MontReward[1][2][4327][5]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[1][2][4327][5]["RewardItem"][1]["Id"] = 723341 -- 玄灵秘录（赠）
	tNewServerWeeks_MontReward[1][2][4327][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerWeeks_MontReward[1][2][4327][5]["LogId"] = 12000690
	tNewServerWeeks_MontReward[1][2][4327][5]["RewardNoNeedTip"] = 1 

	tNewServerWeeks_MontReward[1][2][4327][6] = {}
	tNewServerWeeks_MontReward[1][2][4327][6]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[1][2][4327][6]["ItemChance"] = 1000
	tNewServerWeeks_MontReward[1][2][4327][6]["RewardExpTime"] = {}
	tNewServerWeeks_MontReward[1][2][4327][6]["RewardExpTime"]["Value"] = 1
	tNewServerWeeks_MontReward[1][2][4327][6]["LogId"] = 12000690
	tNewServerWeeks_MontReward[1][2][4327][6]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[1][2][4327][7] = {}
	tNewServerWeeks_MontReward[1][2][4327][7]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[1][2][4327][7]["ItemChance"] = 50
	tNewServerWeeks_MontReward[1][2][4327][7]["RewardItem"] = {}
	tNewServerWeeks_MontReward[1][2][4327][7]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[1][2][4327][7]["RewardItem"][1]["Id"] = 3008903 -- 秘境天石礼包（属性9）
	tNewServerWeeks_MontReward[1][2][4327][7]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[1][2][4327][7]["GlobalId"] = 51523
	tNewServerWeeks_MontReward[1][2][4327][7]["Pos"] = 1
	tNewServerWeeks_MontReward[1][2][4327][7]["MaxData"] = 200
	tNewServerWeeks_MontReward[1][2][4327][7]["FullIndex"] = 9
	tNewServerWeeks_MontReward[1][2][4327][7]["LogId"] = 12000690
	tNewServerWeeks_MontReward[1][2][4327][7]["RewardNoNeedTip"] = 1
	
	tNewServerWeeks_MontReward[1][2][4327][8] = {}
	tNewServerWeeks_MontReward[1][2][4327][8]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[1][2][4327][8]["ItemChance"] = 300
	tNewServerWeeks_MontReward[1][2][4327][8]["RewardItem"] = {}
	tNewServerWeeks_MontReward[1][2][4327][8]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[1][2][4327][8]["RewardItem"][1]["Id"] = 3008904 -- 秘境赤炼礼包（属性9）
	tNewServerWeeks_MontReward[1][2][4327][8]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[1][2][4327][8]["LogId"] = 12000690
	tNewServerWeeks_MontReward[1][2][4327][8]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[1][2][4327][9] = {}
	tNewServerWeeks_MontReward[1][2][4327][9]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[1][2][4327][9]["ItemChance"] = 6350
	tNewServerWeeks_MontReward[1][2][4327][9]["RewardNoNeedTip"] = 1 
	
	
	
	
	
	
	

	-- 精英怪
	tNewServerWeeks_MontReward[1][2][4328] = tNewServerWeeks_MontReward[1][2][4327]
	-- tNewServerWeeks_MontReward[1][2][4328]["ItemChanceSum"] = 10000
	
	-- tNewServerWeeks_MontReward[1][2][4328][1] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][1]["RandomItemChanceType"] = 2
	-- tNewServerWeeks_MontReward[1][2][4328][1]["ItemChance"] = 1000
	-- tNewServerWeeks_MontReward[1][2][4328][1]["RewardItem"] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][1]["RewardItem"][1] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][1]["RewardItem"][1]["Id"] = 3302787 -- 流星卷礼券
	-- tNewServerWeeks_MontReward[1][2][4328][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tNewServerWeeks_MontReward[1][2][4328][1]["LogId"] = 12000690
	-- tNewServerWeeks_MontReward[1][2][4328][1]["RewardNoNeedTip"] = 1 

	-- tNewServerWeeks_MontReward[1][2][4328][2] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][2]["RandomItemChanceType"] = 2
	-- tNewServerWeeks_MontReward[1][2][4328][2]["ItemChance"] = 480
	-- tNewServerWeeks_MontReward[1][2][4328][2]["RewardItem"] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][2]["RewardItem"][1] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][2]["RewardItem"][1]["Id"] = 3302788 -- 龙珠礼券
	-- tNewServerWeeks_MontReward[1][2][4328][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tNewServerWeeks_MontReward[1][2][4328][2]["LogId"] = 12000690
	-- tNewServerWeeks_MontReward[1][2][4328][2]["RewardNoNeedTip"] = 1 
	
	-- tNewServerWeeks_MontReward[1][2][4328][3] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][3]["RandomItemChanceType"] = 2
	-- tNewServerWeeks_MontReward[1][2][4328][3]["ItemChance"] = 140
	-- tNewServerWeeks_MontReward[1][2][4328][3]["RewardItem"] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][3]["RewardItem"][1] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][3]["RewardItem"][1]["Id"] = 3302790 -- 金钢坚钻礼券
	-- tNewServerWeeks_MontReward[1][2][4328][3]["RewardItem"][1]["Attr"] = "0 1"
	-- tNewServerWeeks_MontReward[1][2][4328][3]["LogId"] = 12000690
	-- tNewServerWeeks_MontReward[1][2][4328][3]["RewardNoNeedTip"] = 1 
	
	-- tNewServerWeeks_MontReward[1][2][4328][4] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][4]["RandomItemChanceType"] = 2
	-- tNewServerWeeks_MontReward[1][2][4328][4]["ItemChance"] = 480
	-- tNewServerWeeks_MontReward[1][2][4328][4]["RewardItem"] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][4]["RewardItem"][1] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][4]["RewardItem"][1]["Id"] = 3302789 -- 优质宝石礼券
	-- tNewServerWeeks_MontReward[1][2][4328][4]["RewardItem"][1]["Attr"] = "0 1"
	-- tNewServerWeeks_MontReward[1][2][4328][4]["LogId"] = 12000690
	-- tNewServerWeeks_MontReward[1][2][4328][4]["RewardNoNeedTip"] = 1 

	-- tNewServerWeeks_MontReward[1][2][4328][5] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][5]["RandomItemChanceType"] = 2
	-- tNewServerWeeks_MontReward[1][2][4328][5]["ItemChance"] = 200
	-- tNewServerWeeks_MontReward[1][2][4328][5]["RewardItem"] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][5]["RewardItem"][1] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][5]["RewardItem"][1]["Id"] = 723341 -- 玄灵秘录（赠）
	-- tNewServerWeeks_MontReward[1][2][4328][5]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tNewServerWeeks_MontReward[1][2][4328][5]["LogId"] = 12000690
	-- tNewServerWeeks_MontReward[1][2][4328][5]["RewardNoNeedTip"] = 1 

	-- tNewServerWeeks_MontReward[1][2][4328][6] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][6]["RandomItemChanceType"] = 2
	-- tNewServerWeeks_MontReward[1][2][4328][6]["ItemChance"] = 1000
	-- tNewServerWeeks_MontReward[1][2][4328][6]["RewardExpTime"] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][6]["RewardExpTime"]["Value"] = 1
	-- tNewServerWeeks_MontReward[1][2][4328][6]["LogId"] = 12000690
	-- tNewServerWeeks_MontReward[1][2][4328][6]["RewardNoNeedTip"] = 1 

	-- tNewServerWeeks_MontReward[1][2][4328][7] = {}
	-- tNewServerWeeks_MontReward[1][2][4328][7]["RandomItemChanceType"] = 2
	-- tNewServerWeeks_MontReward[1][2][4328][7]["ItemChance"] = 6700
	-- tNewServerWeeks_MontReward[1][2][4328][7]["RewardNoNeedTip"] = 1 
	
	-- == （第二周）练功 ==
	tNewServerWeeks_MontReward["NeedSpace"][2] = 1  -- 背包空间

	tNewServerWeeks_MontReward[2] = {}
	tNewServerWeeks_MontReward[2][1] = {}
	-- 普通怪
	tNewServerWeeks_MontReward[2][1][4327] = {}
	tNewServerWeeks_MontReward[2][1][4327]["ItemChanceSum"] = 10000
	
	tNewServerWeeks_MontReward[2][1][4327][1] = {}
	tNewServerWeeks_MontReward[2][1][4327][1]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[2][1][4327][1]["ItemChance"] = 2100
	tNewServerWeeks_MontReward[2][1][4327][1]["RewardItem"] = {}
	tNewServerWeeks_MontReward[2][1][4327][1]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[2][1][4327][1]["RewardItem"][1]["Id"] =3003124 -- 免费强炼丹
	tNewServerWeeks_MontReward[2][1][4327][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerWeeks_MontReward[2][1][4327][1]["LogId"] = 12000690
	tNewServerWeeks_MontReward[2][1][4327][1]["RewardNoNeedTip"] = 1 

	tNewServerWeeks_MontReward[2][1][4327][2] = {}
	tNewServerWeeks_MontReward[2][1][4327][2]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[2][1][4327][2]["ItemChance"] = 953
	tNewServerWeeks_MontReward[2][1][4327][2]["RewardItem"] = {}
	tNewServerWeeks_MontReward[2][1][4327][2]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[2][1][4327][2]["RewardItem"][1]["Id"] = 3002030 -- 强效护心丹
	tNewServerWeeks_MontReward[2][1][4327][2]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[2][1][4327][2]["LogId"] = 12000690
	tNewServerWeeks_MontReward[2][1][4327][2]["RewardNoNeedTip"] = 1 

	tNewServerWeeks_MontReward[2][1][4327][3] = {}
	tNewServerWeeks_MontReward[2][1][4327][3]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[2][1][4327][3]["ItemChance"] = 100
	tNewServerWeeks_MontReward[2][1][4327][3]["RewardItem"] = {}
	tNewServerWeeks_MontReward[2][1][4327][3]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[2][1][4327][3]["RewardItem"][1]["Id"] = 3003125 -- 通神丹
	tNewServerWeeks_MontReward[2][1][4327][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerWeeks_MontReward[2][1][4327][3]["LogId"] = 12000690
	tNewServerWeeks_MontReward[2][1][4327][3]["RewardNoNeedTip"] = 1 

	tNewServerWeeks_MontReward[2][1][4327][4] = {}
	tNewServerWeeks_MontReward[2][1][4327][4]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[2][1][4327][4]["ItemChance"] = 47
	tNewServerWeeks_MontReward[2][1][4327][4]["RewardItem"] = {}
	tNewServerWeeks_MontReward[2][1][4327][4]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[2][1][4327][4]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹
	tNewServerWeeks_MontReward[2][1][4327][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerWeeks_MontReward[2][1][4327][4]["LogId"] = 12000690
	tNewServerWeeks_MontReward[2][1][4327][4]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[2][1][4327][5] = {}
	tNewServerWeeks_MontReward[2][1][4327][5]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[2][1][4327][5]["ItemChance"] = 450
	tNewServerWeeks_MontReward[2][1][4327][5]["RewardItem"] = {}
	tNewServerWeeks_MontReward[2][1][4327][5]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[2][1][4327][5]["RewardItem"][1]["Id"] = 723340 -- 奇门秘籍
	tNewServerWeeks_MontReward[2][1][4327][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerWeeks_MontReward[2][1][4327][5]["LogId"] = 12000690
	tNewServerWeeks_MontReward[2][1][4327][5]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[2][1][4327][6] = {}
	tNewServerWeeks_MontReward[2][1][4327][6]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[2][1][4327][6]["ItemChance"] = 160
	tNewServerWeeks_MontReward[2][1][4327][6]["RewardItem"] = {}
	tNewServerWeeks_MontReward[2][1][4327][6]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[2][1][4327][6]["RewardItem"][1]["Id"] = 3006542 -- 真气礼包
	tNewServerWeeks_MontReward[2][1][4327][6]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[2][1][4327][6]["LogId"] = 12000690
	tNewServerWeeks_MontReward[2][1][4327][6]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[2][1][4327][7] = {}
	tNewServerWeeks_MontReward[2][1][4327][7]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[2][1][4327][7]["ItemChance"] = 6190
	tNewServerWeeks_MontReward[2][1][4327][7]["RewardNoNeedTip"] = 1 

	
	-- == （第三周）练气 ==
	tNewServerWeeks_MontReward["NeedSpace"][3] = 1  -- 背包空间
	tNewServerWeeks_MontReward[3] = {}
	tNewServerWeeks_MontReward[3][1] = {}
	-- 普通怪
	tNewServerWeeks_MontReward[3][1][4327] = {}
	tNewServerWeeks_MontReward[3][1][4327]["ItemChanceSum"] = 10000
	
	tNewServerWeeks_MontReward[3][1][4327][1] = {}
	tNewServerWeeks_MontReward[3][1][4327][1]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[3][1][4327][1]["ItemChance"] = 3000
	tNewServerWeeks_MontReward[3][1][4327][1]["RewardItem"] = {}
	tNewServerWeeks_MontReward[3][1][4327][1]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[3][1][4327][1]["RewardItem"][1]["Id"] = 3302791 -- 10气力值礼包
	tNewServerWeeks_MontReward[3][1][4327][1]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[3][1][4327][1]["LogId"] = 12000690
	tNewServerWeeks_MontReward[3][1][4327][1]["RewardNoNeedTip"] = 1 

	tNewServerWeeks_MontReward[3][1][4327][2] = {}
	tNewServerWeeks_MontReward[3][1][4327][2]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[3][1][4327][2]["ItemChance"] = 2500
	tNewServerWeeks_MontReward[3][1][4327][2]["RewardItem"] = {}
	tNewServerWeeks_MontReward[3][1][4327][2]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[3][1][4327][2]["RewardItem"][1]["Id"] = 3302792 -- 20气力值礼包
	tNewServerWeeks_MontReward[3][1][4327][2]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[3][1][4327][2]["LogId"] = 12000690
	tNewServerWeeks_MontReward[3][1][4327][2]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[3][1][4327][3] = {}
	tNewServerWeeks_MontReward[3][1][4327][3]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[3][1][4327][3]["ItemChance"] = 800
	tNewServerWeeks_MontReward[3][1][4327][3]["RewardItem"] = {}
	tNewServerWeeks_MontReward[3][1][4327][3]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[3][1][4327][3]["RewardItem"][1]["Id"] = 3302793 -- 50气力值礼包
	tNewServerWeeks_MontReward[3][1][4327][3]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[3][1][4327][3]["LogId"] = 12000690
	tNewServerWeeks_MontReward[3][1][4327][3]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[3][1][4327][4] = {}
	tNewServerWeeks_MontReward[3][1][4327][4]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[3][1][4327][4]["ItemChance"] = 600
	tNewServerWeeks_MontReward[3][1][4327][4]["RewardItem"] = {}
	tNewServerWeeks_MontReward[3][1][4327][4]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[3][1][4327][4]["RewardItem"][1]["Id"] = 3302794 -- 100气力值礼包
	tNewServerWeeks_MontReward[3][1][4327][4]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[3][1][4327][4]["LogId"] = 12000690
	tNewServerWeeks_MontReward[3][1][4327][4]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[3][1][4327][5] = {}
	tNewServerWeeks_MontReward[3][1][4327][5]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[3][1][4327][5]["ItemChance"] = 3100
	tNewServerWeeks_MontReward[3][1][4327][5]["RewardNoNeedTip"] = 1 

	-- == （第四周）精炼 ==
	tNewServerWeeks_MontReward["NeedSpace"][4] = 3 -- 背包空间
	tNewServerWeeks_MontReward[4] = {}
	tNewServerWeeks_MontReward[4][1] = {}
	-- 普通怪
	tNewServerWeeks_MontReward[4][1][4327] = {}
	tNewServerWeeks_MontReward[4][1][4327]["ItemChanceSum"] = 10000
	
	tNewServerWeeks_MontReward[4][1][4327][1] = {}
	tNewServerWeeks_MontReward[4][1][4327][1]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[4][1][4327][1]["ItemChance"] = 2100
	tNewServerWeeks_MontReward[4][1][4327][1]["RewardItem"] = {}
	tNewServerWeeks_MontReward[4][1][4327][1]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[4][1][4327][1]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石
	tNewServerWeeks_MontReward[4][1][4327][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewServerWeeks_MontReward[4][1][4327][1]["LogId"] = 12000690
	tNewServerWeeks_MontReward[4][1][4327][1]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[4][1][4327][2] = {}
	tNewServerWeeks_MontReward[4][1][4327][2]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[4][1][4327][2]["ItemChance"] = 0
	tNewServerWeeks_MontReward[4][1][4327][2]["RewardItem"] = {}
	tNewServerWeeks_MontReward[4][1][4327][2]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[4][1][4327][2]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石
	tNewServerWeeks_MontReward[4][1][4327][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tNewServerWeeks_MontReward[4][1][4327][2]["LogId"] = 12000690
	tNewServerWeeks_MontReward[4][1][4327][2]["RewardNoNeedTip"] = 1 

	tNewServerWeeks_MontReward[4][1][4327][3] = {}
	tNewServerWeeks_MontReward[4][1][4327][3]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[4][1][4327][3]["ItemChance"] = 100
	tNewServerWeeks_MontReward[4][1][4327][3]["RewardItem"] = {}
	tNewServerWeeks_MontReward[4][1][4327][3]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[4][1][4327][3]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石
	tNewServerWeeks_MontReward[4][1][4327][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tNewServerWeeks_MontReward[4][1][4327][3]["LogId"] = 12000690
	tNewServerWeeks_MontReward[4][1][4327][3]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[4][1][4327][4] = {}
	tNewServerWeeks_MontReward[4][1][4327][4]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[4][1][4327][4]["ItemChance"] = 500
	tNewServerWeeks_MontReward[4][1][4327][4]["RewardItem"] = {}
	tNewServerWeeks_MontReward[4][1][4327][4]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[4][1][4327][4]["RewardItem"][1]["Id"] = 3006542 -- 真气礼包（赠）
	tNewServerWeeks_MontReward[4][1][4327][4]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_MontReward[4][1][4327][4]["LogId"] = 12000690
	tNewServerWeeks_MontReward[4][1][4327][4]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[4][1][4327][5] = {}
	tNewServerWeeks_MontReward[4][1][4327][5]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[4][1][4327][5]["ItemChance"] = 500
	tNewServerWeeks_MontReward[4][1][4327][5]["RewardItem"] = {}
	tNewServerWeeks_MontReward[4][1][4327][5]["RewardItem"][1] = {}
	tNewServerWeeks_MontReward[4][1][4327][5]["RewardItem"][1]["Id"] = 723340 -- 奇门秘籍(赠)
	tNewServerWeeks_MontReward[4][1][4327][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerWeeks_MontReward[4][1][4327][5]["LogId"] = 12000690
	tNewServerWeeks_MontReward[4][1][4327][5]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontReward[4][1][4327][6] = {}
	tNewServerWeeks_MontReward[4][1][4327][6]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontReward[4][1][4327][6]["ItemChance"] = 6800
	tNewServerWeeks_MontReward[4][1][4327][6]["RewardNoNeedTip"] = 1 
	
	
--- 第二，三周二转以上掉落
local tNewServerWeeks_MontMete2 = {}
	tNewServerWeeks_MontMete2[4327] = {}
	tNewServerWeeks_MontMete2[4327]["NeedSpace"] = 1
	tNewServerWeeks_MontMete2[4327]["ItemChanceSum"] = 10000
	
	tNewServerWeeks_MontMete2[4327][1] = {}
	tNewServerWeeks_MontMete2[4327][1]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontMete2[4327][1]["ItemChance"] = 500
	tNewServerWeeks_MontMete2[4327][1]["RewardItem"] = {}
	tNewServerWeeks_MontMete2[4327][1]["RewardItem"][1] = {}
	tNewServerWeeks_MontMete2[4327][1]["RewardItem"][1]["Id"] = 722723 -- 蔓金苔
	tNewServerWeeks_MontMete2[4327][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerWeeks_MontMete2[4327][1]["LogId"] = 12000690
	tNewServerWeeks_MontMete2[4327][1]["RewardNoNeedTip"] = 1 

	tNewServerWeeks_MontMete2[4327][2] = {}
	tNewServerWeeks_MontMete2[4327][2]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontMete2[4327][2]["ItemChance"] = 500
	tNewServerWeeks_MontMete2[4327][2]["RewardItem"] = {}
	tNewServerWeeks_MontMete2[4327][2]["RewardItem"][1] = {}
	tNewServerWeeks_MontMete2[4327][2]["RewardItem"][1]["Id"] = 722724 -- 怀梦草
	tNewServerWeeks_MontMete2[4327][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerWeeks_MontMete2[4327][2]["LogId"] = 12000690
	tNewServerWeeks_MontMete2[4327][2]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontMete2[4327][3] = {}
	tNewServerWeeks_MontMete2[4327][3]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontMete2[4327][3]["ItemChance"] = 500
	tNewServerWeeks_MontMete2[4327][3]["RewardItem"] = {}
	tNewServerWeeks_MontMete2[4327][3]["RewardItem"][1] = {}
	tNewServerWeeks_MontMete2[4327][3]["RewardItem"][1]["Id"] = 722725 -- 返魂香
	tNewServerWeeks_MontMete2[4327][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerWeeks_MontMete2[4327][3]["LogId"] = 12000690
	tNewServerWeeks_MontMete2[4327][3]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontMete2[4327][4] = {}
	tNewServerWeeks_MontMete2[4327][4]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontMete2[4327][4]["ItemChance"] = 1500
	tNewServerWeeks_MontMete2[4327][4]["RewardItem"] = {}
	tNewServerWeeks_MontMete2[4327][4]["RewardItem"][1] = {}
	tNewServerWeeks_MontMete2[4327][4]["RewardItem"][1]["Id"] = 723340 -- 奇门秘籍
	tNewServerWeeks_MontMete2[4327][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerWeeks_MontMete2[4327][4]["LogId"] = 12000690
	tNewServerWeeks_MontMete2[4327][4]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontMete2[4327][5] = {}
	tNewServerWeeks_MontMete2[4327][5]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontMete2[4327][5]["ItemChance"] = 1000
	tNewServerWeeks_MontMete2[4327][5]["RewardExpTime"] = {}
	tNewServerWeeks_MontMete2[4327][5]["RewardExpTime"]["Value"] = 1
	tNewServerWeeks_MontMete2[4327][5]["LogId"] = 12000690
	tNewServerWeeks_MontMete2[4327][5]["RewardNoNeedTip"] = 1 
	
	tNewServerWeeks_MontMete2[4327][6] = {}
	tNewServerWeeks_MontMete2[4327][6]["RandomItemChanceType"] = 2
	tNewServerWeeks_MontMete2[4327][6]["ItemChance"] = 6000
	tNewServerWeeks_MontMete2[4327][6]["RewardNoNeedTip"] = 1 
	
--- 赤龙异宝新产出
local tNewServerWeeks_DragonReward = {}
	-- == （第一周）经验，装备 ==
	tNewServerWeeks_DragonReward[1] = {}
	tNewServerWeeks_DragonReward[1]["NeedSpace"] = 3
	tNewServerWeeks_DragonReward[1]["RewardItem"] = {}
	tNewServerWeeks_DragonReward[1]["RewardItem"][1] = {}
	tNewServerWeeks_DragonReward[1]["RewardItem"][1]["Id"] = 3200243 -- 新服星陨石翻倍包
	tNewServerWeeks_DragonReward[1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewServerWeeks_DragonReward[1]["RewardItem"][2] = {}
	tNewServerWeeks_DragonReward[1]["RewardItem"][2]["Id"] = 3302782 -- 经验礼盒
	tNewServerWeeks_DragonReward[1]["RewardItem"][2]["Attr"] = "0 1"
	tNewServerWeeks_DragonReward[1]["RewardItem"][3] = {}
	tNewServerWeeks_DragonReward[1]["RewardItem"][3]["Id"] = 3302784 -- 流星卷礼包
	tNewServerWeeks_DragonReward[1]["RewardItem"][3]["Attr"] = "0 1"
	tNewServerWeeks_DragonReward[1]["LogId"] = 12000690
	-- == （第二周）武功 ==
	tNewServerWeeks_DragonReward[2] = {}
	tNewServerWeeks_DragonReward[2]["NeedSpace"] = 1
	tNewServerWeeks_DragonReward[2]["RewardItem"] = {}
	tNewServerWeeks_DragonReward[2]["RewardItem"][1] = {}
	tNewServerWeeks_DragonReward[2]["RewardItem"][1]["Id"] = 3002926 -- 2个秘制免费修炼丹(赠）
	tNewServerWeeks_DragonReward[2]["RewardItem"][1]["Attr"] = "0 2"
	tNewServerWeeks_DragonReward[2]["RewardCultivation"] = {}
	tNewServerWeeks_DragonReward[2]["RewardCultivation"]["Value"] = 100  -- 100点修行值
	tNewServerWeeks_DragonReward[2]["LogId"] = 12000690
	-- == （第三周）炼气 ==
	tNewServerWeeks_DragonReward[3] = {}
	tNewServerWeeks_DragonReward[3]["NeedSpace"] = 1
	tNewServerWeeks_DragonReward[3]["RewardItem"] = {}
	tNewServerWeeks_DragonReward[3]["RewardItem"][1] = {}
	tNewServerWeeks_DragonReward[3]["RewardItem"][1]["Id"] = 3302795 -- 400气力值礼包
	tNewServerWeeks_DragonReward[3]["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_DragonReward[3]["LogId"] = 12000690
	-- == （第四周）精炼 ==
	tNewServerWeeks_DragonReward[4] = {}
	tNewServerWeeks_DragonReward[4]["NeedSpace"] = 1
	tNewServerWeeks_DragonReward[4]["RewardItem"] = {}
	tNewServerWeeks_DragonReward[4]["RewardItem"][1] = {}
	tNewServerWeeks_DragonReward[4]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石
	tNewServerWeeks_DragonReward[4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewServerWeeks_DragonReward[4]["LogId"] = 12000690
	
-- 片区礼盒产出
local tNewServerWeeks_AreaReward = {}
	tNewServerWeeks_AreaReward["RewardItem"] = {}
	tNewServerWeeks_AreaReward["RewardItem"][1] = {}
	tNewServerWeeks_AreaReward["RewardItem"][1]["Id"] = 3302782 -- 经验礼盒
	tNewServerWeeks_AreaReward["RewardItem"][1]["Attr"] = "0 1"
	tNewServerWeeks_AreaReward["LogId"] = 12000690

	
-------------------------------------------LOG配置--------------------------------------------
local tNewServerWeeks_Log = {}
	tNewServerWeeks_Log["IntoPlace"] = "0,0,0,0,12000332,2[1],%d,0"
	
	
-------------------------------------------函数部分--------------------------------------------
-- 服务器开启活动时间设置
function NewServerWeeks_SetActTime()
	local nNewGlobalId = tNewServerWeeks_Cont["NewGlobalId"]
	local nData0 = Get_SysDynaGlobalData0(nNewGlobalId)

	-- 不是新服则不设置活动时间
	if nData0 == 0 then
		return
	end
	
	
	--获取开服时间	
	local sStr0 = string.sub(Get_SysDynaGlobalDataStr0(nNewGlobalId),1,16)
	
	-- 获取7天后时间
	local sActTime_1,sBegin_2 = Get_ActivityAllTime(sStr0,7)
	local sActTime_2,sBegin_3 = Get_ActivityAllTime(sBegin_2,7)
	local sActTime_3,sBegin_4 = Get_ActivityAllTime(sBegin_3,7)
	local sActTime_4 = Get_ActivityAllTime(sBegin_4,7)
	local sAllTime = Get_ActivityAllTime(sStr0,28)

	tNewServerWeeks_Cont["ActAllTime"] = sAllTime
	tNewServerWeeks_Cont["ActTime"] = {}
	tNewServerWeeks_Cont["ActTime"][1] = sActTime_1
	tNewServerWeeks_Cont["ActTime"][2] = sActTime_2
	tNewServerWeeks_Cont["ActTime"][3] = sActTime_3
	tNewServerWeeks_Cont["ActTime"][4] = sActTime_4

	-- 记录新服周活动时间
	local nTimeGlobalId = tNewServerWeeks_Cont["TimeGlobalId"]
	Sys_SetSynaGlobalDataStr0(nTimeGlobalId,sAllTime)
	Sys_SetSynaGlobalDataStr1(nTimeGlobalId,sActTime_1)
	Sys_SetSynaGlobalDataStr2(nTimeGlobalId,sActTime_2)
	Sys_SetSynaGlobalDataStr3(nTimeGlobalId,sActTime_3)
	Sys_SetSynaGlobalDataStr4(nTimeGlobalId,sActTime_4)
end


-- 返回新服活动四个周的时间
function NewServerWeeks_GetActTime(nWeek)
	local sActTime = ""
	if nWeek == "ActAllTime" then
		sActTime = tNewServerWeeks_Cont["ActAllTime"]
	else
		sActTime = tNewServerWeeks_Cont["ActTime"][nWeek]
	end
	
	return sActTime
end

-- 活动前后判断
function NewServerWeeks_ChkActTime(nNpcId)
	-- 活动前
	-- if Sys_ChkFullTime(tNewServerWeeks_Cont["BefAllTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- return false
	-- end

	-- 活动后
	if not Sys_ChkFullTime(tNewServerWeeks_Cont["ActAllTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end

	-- 等级不足
	local nLevel = tNewServerWeeks_Cont["Level"]
	local nMete = tNewServerWeeks_Cont["Metempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		-- 对白处理
		NewServerWeeks_DoText13X(nNpcId)
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return false
	end
	
	-- 活动内
	return true
end

-- 活动周判断(活动内-返回第i周，活动外-返回false)
function NewServerWeeks_ChkWeekTime()
	for nWeek,sTime in ipairs(tNewServerWeeks_Cont["ActTime"]) do
		if Sys_ChkFullTime(sTime) then
			return nWeek
		end
	end
	
	return false
end

-- 对白text1-3内容组合
function NewServerWeeks_DoText13X(nNpcId)
	local nWeek = NewServerWeeks_ChkWeekTime()
	if not nWeek then return end
	
	local sActTip = tNewServerWeeks_Text[nNpcId]["ActTip"][nWeek]
	local sActName = tNewServerWeeks_Text[nNpcId]["ActName"][nWeek]
	local sActTime = tNewServerWeeks_Text[nNpcId]["ActTime"][nWeek]
	local sActReward = tNewServerWeeks_Text[nNpcId]["ActReward"][nWeek]

	-- 为推广NPC
	if nNpcId == 20461 then
		tNpcGossip[nNpcId]["Text132"] = string.format(tNewServerWeeks_Text[nNpcId]["Text132"],sActTip)
		tNpcGossip[nNpcId]["Text136"] = string.format(tNewServerWeeks_Text[nNpcId]["Text136"],sActName)
		tNpcGossip[nNpcId]["Text137"] = string.format(tNewServerWeeks_Text[nNpcId]["Text137"],sActTime)
		tNpcGossip[nNpcId]["Text138"] = string.format(tNewServerWeeks_Text[nNpcId]["Text138"],sActReward)
		-- tNpcGossip[nNpcId]["Option131"] = string.format(tNewServerWeeks_Text[nNpcId]["Option131"],sActName)
	-- 为秘境NPC
	elseif nNpcId == 20462 then
		local sLevOut = tNewServerWeeks_Text[nNpcId]["LevOut"][nWeek]
		tNpcGossip[nNpcId]["Text132"] = string.format(tNewServerWeeks_Text[nNpcId]["Text132"],sLevOut)
		tNpcGossip[nNpcId]["Text134"] = string.format(tNewServerWeeks_Text[nNpcId]["Text134"],sActTip,sActName)
		tNpcGossip[nNpcId]["Text135"] = string.format(tNewServerWeeks_Text[nNpcId]["Text135"],sActTime)
		tNpcGossip[nNpcId]["Text137"] = string.format(tNewServerWeeks_Text[nNpcId]["Text137"],sActReward)
	end
end

-- 打开内嵌网页
function NewServerWeeks_OpenWeb(nNpcId)
	-- 活动时间外
	if not Sys_ChkFullTime(tNewServerWeeks_Cont["ActAllTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	local sPszParam = tNewServerWeeks_Cont["Web"]
	 User_SendWebDialog(sPszParam)
end

-- 寻路函数
function NewServerWeeks_FindWay(nNpcId)
	-- 活动时间外
	if not NewServerWeeks_ChkActTime(nNpcId) then
		return
	end

	local nMapId = tNewServerWeeks_Cont["FindWay"][nNpcId]["MapId"]
	local nPosX = tNewServerWeeks_Cont["FindWay"][nNpcId]["PosX"] 
	local nPosY = tNewServerWeeks_Cont["FindWay"][nNpcId]["PosY"] 
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 秘境传送出去
function NewServerWeeks_LeaveMap(nUserId)
	local nUserId = nUserId or Get_UserId()
	local nMapId =tNewServerWeeks_Cont["TrapChgMap"][1]
	local nPosX =tNewServerWeeks_Cont["TrapChgMap"][2]
	local nPosY =tNewServerWeeks_Cont["TrapChgMap"][3]
	local nRangeX =tNewServerWeeks_Cont["TrapChgMap"][4]
	local nRangeY =tNewServerWeeks_Cont["TrapChgMap"][5]

	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRangeX,nRangeY,nil,nUserId)
end


-------------------------------------------
-- 【新服狂欢推广大使】接入
function NewServerWeeks_ListNpcMain()
	local nNpcId = Get_NpcId()

	-- 活动时间外
	if not NewServerWeeks_ChkActTime(nNpcId) then
		return
	end
	
	-- 确定活动周时间
	local nWeek = NewServerWeeks_ChkWeekTime()
	if not nWeek then return end
	
	-- 独白处理
	NewServerWeeks_DoText13X(nNpcId)
	
	-- 选项处理
	-- local sActName = tNewServerWeeks_Text[nNpcId]["ActName"][nWeek]
	tNpcGossip[nNpcId]["Option141"] = tNewServerWeeks_Text[nNpcId]["Option141"]
	-- tNpcGossip[nNpcId]["Option144"] = string.format(tNewServerWeeks_Text[nNpcId]["Option144"],sActName)
	
	-- 签到选项（判断是否签到）
	local nEvent_1 = tNewServerWeeks_Stc[1]["EventType"]
	local nType_1 = tNewServerWeeks_Stc[1]["DataType"]
	if not Task_ChkStcValue(nEvent_1,nType_1,"==",0) then
		if not Task_StcInterval(nEvent_1,nType_1,1,4) then
			local sOptText141 = tNewServerWeeks_Text[nNpcId]["SignDone"]
			tNpcGossip[nNpcId]["Option141"] = sOptText141
		end
	end
	
	-- 显示满足条件对白
	LinkNpcGossipFunc_New(nNpcId,"1-4")
end

-- 【新服狂欢推广大使】周活动介绍
function NewServerWeeks_ListNpcTip(nNpcId)
	-- 活动时间外
	if not Sys_ChkFullTime(tNewServerWeeks_Cont["ActAllTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 确定活动周时间
	local nWeek = NewServerWeeks_ChkWeekTime()
	if not nWeek then return end
	LinkNpcGossipFunc_New(nNpcId,"2-".. nWeek)
end


-- 【新服狂欢推广大使】签到
function NewServerWeeks_ListNpcSign(nNpcId)
	-- 活动时间外
	if not NewServerWeeks_ChkActTime(nNpcId) then
		return
	end

	-- 确定活动周时间
	local nWeek = NewServerWeeks_ChkWeekTime()
	if not nWeek then return end
	
	local nEvent_1 = tNewServerWeeks_Stc[1]["EventType"]
	local nType_1 = tNewServerWeeks_Stc[1]["DataType"]
	-- 是否签到过
	if not Task_ChkStcValue(nEvent_1,nType_1,"==",0) then
		if not Task_StcInterval(nEvent_1,nType_1,1,4) then
			LinkNpcGossipFunc_New(nNpcId,"1-5")
			return
		end
	end
	
	-- 空间不足
	if tNewServerWeeks_Sign[nWeek]["NeedSpace"] ~= nil then
		if not User_CheckLeftSpace(tNewServerWeeks_Sign[nWeek]["NeedSpace"]) then
			local sText11X1 = string.format(tNewServerWeeks_Text[20461]["Text11".. nWeek .."1"],tNewServerWeeks_Sign[nWeek]["NeedSpace"])
			tNpcGossip[nNpcId]["Text11".. nWeek .."1"] = sText11X1
			LinkNpcGossipFunc_New(nNpcId,"11-".. nWeek)
			return
		end
	end
	
	-- 置掩码
	Task_SetStatistic(nEvent_1,nType_1,1,1)
	Task_SetStcTimestamp(nEvent_1,nType_1,0)
	
	-- 给奖励
	local bSuccess,sRewardStr = RewardTemplate_UseItemAndMsg(tNewServerWeeks_Sign[nWeek])
	if bSuccess then
		-- 文字输出
		local sText = string.format(tNewServerWeeks_Text[nNpcId]["Sign"],sRewardStr)
		User_EffectAdd(tNewServerWeeks_Effect["EffectObj"],tNewServerWeeks_Effect["Sign"])
		Sys_MsgBox(sText)
	end
end

-------------------------------------------
-- 秘境进入次数掩码操作
function NewServerWeeks_FamPlaceStc()
	local nEvent_2 = tNewServerWeeks_Stc[2]["EventType"]
	local nType_2 = tNewServerWeeks_Stc[2]["DataType"]
	local nTimes_2 = tNewServerWeeks_Stc[2]["Times"]
	-- 初次点击
	if Task_ChkStcValue(nEvent_2,nType_2,"==",0) then
		Task_SetStatistic(nEvent_2,nType_2,nTimes_2,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
		return nTimes_2 - 1
	end
	
	-- 隔天重置次数
	if Task_StcInterval(nEvent_2,nType_2,1,4) then
		Task_SetStatistic(nEvent_2,nType_2,nTimes_2,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
		return nTimes_2 - 1
	end

	-- 可进入次数
	local nTimes = Get_UserStatisticValue(nEvent_2,nType_2) - 1
	if nTimes <= 0 then
		nTimes = 0
	end

	return nTimes
end



-- 【青岚秘境仙子】接入
function NewServerWeeks_FamNpcMain()
	local nNpcId = Get_NpcId()
	-- 活动时间外
	if not NewServerWeeks_ChkActTime(nNpcId) then
		return
	end

	-- 确定活动周时间
	local nWeek = NewServerWeeks_ChkWeekTime()
	if not nWeek then return end
	
	-- 可进入次数
	local nTimes = NewServerWeeks_FamPlaceStc()

	-- 独白处理
	NewServerWeeks_DoText13X(nNpcId)
	
	-- 选项文字处理
	local sOption141 = string.format(tNewServerWeeks_Text[nNpcId]["Option141"],nTimes)
	tNpcGossip[nNpcId]["Option141"] = sOption141
	LinkNpcGossipFunc_New(nNpcId,"1-4")
end

-- 【青岚秘境仙子】进入秘境
function NewServerWeeks_FamNpcChgMap(nNpcId)
	-- 活动时间外
	if not NewServerWeeks_ChkActTime(nNpcId) then
		return
	end

	-- 秘境开启时间外
	if not Sys_ChkDayTime(tNewServerWeeks_Cont["OpenPlace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 确定活动周时间
	local nWeek = NewServerWeeks_ChkWeekTime()
	if not nWeek then return end
	
	if Get_NpcMapID(nNpcId) ~= Get_UserMapId() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	
	-- 可进入次数
	local nTimes = NewServerWeeks_FamPlaceStc()
	
	-- 进入次数不足
	if nTimes <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end

	-- 进入活动地图
	local nEvent_2 = tNewServerWeeks_Stc[2]["EventType"]
	local nType_2 = tNewServerWeeks_Stc[2]["DataType"]
	Task_AddStatistic(nEvent_2,nType_2,-1,1)
	Task_SetStcTimestamp(nEvent_2,nType_2,0)
	
	-- 怪物计数掩码重置
	local nEvent_3 = tNewServerWeeks_Stc[3]["EventType"]
	local nType_3 = tNewServerWeeks_Stc[3]["DataType"]
	Task_SetStatistic(nEvent_3,nType_3,0,1)

	-- 传送
	local nMapId = tNewServerWeeks_Cont["Place"]["MapId"]
	local nNum = math.random(1,5)
	local nBoundX = tNewServerWeeks_Cont["Place"]["PosX"][nNum]
	local nBoundY = tNewServerWeeks_Cont["Place"]["PosY"][nNum]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,10,10)
	local sLog = string.format(tNewServerWeeks_Log["IntoPlace"],nWeek)
	Sys_SaveActionFestivalLog(sLog)

	-- 进入地图提示
	local sText = ""
	
	-- 不需要判断转世
	if type(tNewServerWeeks_Text[nNpcId]["IntoPlace"][nWeek]) ~= "table" then
		sText = tNewServerWeeks_Text[nNpcId]["IntoPlace"][nWeek]
		
	-- 需要判断转世
	else
		local nMete = Get_UserNewMetempsychosis()
		
		-- 未二转进入地图提示
		if nMete < 2 then
			sText = tNewServerWeeks_Text[nNpcId]["IntoPlace"][nWeek][1]
			
		-- 二转进入地图提示
		else
			sText = tNewServerWeeks_Text[nNpcId]["IntoPlace"][nWeek][2]
		end
	end
	
	User_TalkChannel2005(sText)
end


-------------------------------------------
-- 创建精英怪物
function NewServerWeeks_CreateMont()
	local nMapId = tNewServerWeeks_AddMont["MapId"]
	-- 非活动时间（只有经验周有精英怪）
	if not Sys_ChkFullTime(tNewServerWeeks_Cont["ActTime"][1]) then
		-- 删除精英
		for _,nDelMontId in ipairs(tNewServerWeeks_AddMont["MontId"]) do
			local nMonsterNum = Get_SysTempData(1,nMapId,nDelMontId)
			if nMonsterNum > 0 then
				Monster_DelMonster(nMapId,nDelMontId)
			end
		end
		return
	end
	
	-- 刷怪
	for i,nMontId in ipairs(tNewServerWeeks_AddMont["MontId"]) do
		local nGenId = tNewServerWeeks_AddMont["GenerId"][i]
		local nPosX = tNewServerWeeks_AddMont["Pos"][i][1]
		local nPosY = tNewServerWeeks_AddMont["Pos"][i][2]
		-- 创建新的精英怪

		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMontId,0,0,0,1)
	end
end

-- 怪物触发
function NewServerWeeks_MontFunc(nMontTypeId)
	local nMapId = Get_UserMapId()
	
	-- 减少怪物数量
	for i,nMontId in ipairs(tNewServerWeeks_AddMont["MontId"]) do
		if nMontTypeId == nMontId then
			local nBeforeCount = Get_SysTempData(1,nMapId,nMontTypeId)
			local nMonsterCount = nBeforeCount - 1
			nMonsterCount = nMonsterCount > 0 and nMonsterCount or 0
			Sys_SetTempData(1,nMapId,nMontTypeId,nMonsterCount)
		end
	end

	-- 非活动时间传出去
	if not Sys_ChkFullTime(tNewServerWeeks_Cont["ActAllTime"]) then	
		Sys_MsgBox(tNewServerWeeks_Text["LeaveMap"]["Time"])
		NewServerWeeks_LeaveMap()
		return
	end
	
	-- 杀够怪物
	local nEvent_3 = tNewServerWeeks_Stc[3]["EventType"]
	local nType_3 = tNewServerWeeks_Stc[3]["DataType"]
	local nComplete_3 = tNewServerWeeks_Stc[3]["Complete"]
	if Task_ChkStcValue(nEvent_3,nType_3,">=",nComplete_3) then
		Sys_MsgBox(tNewServerWeeks_Text["LeaveMap"]["Complete"])
		NewServerWeeks_LeaveMap()
		return
	end
	
	-- 确定活动周时间
	local nWeek = NewServerWeeks_ChkWeekTime()
	if not nWeek then return end

	-- 统一精英怪ID(精英怪只有第一周)
	for _,v in ipairs(tNewServerWeeks_AddMont["MontId"]) do
		if nMontTypeId == v then
			nMontTypeId = tNewServerWeeks_AddMont["MontId"][1]
			nWeek = 1
		end
	end
	
	-- 置掩码
	Task_AddStatistic(nEvent_3,nType_3,1,1)
	
	-- 需要背包空间
	local tRewardTable = CommonFunc_Copy(tNewServerWeeks_MontReward[nWeek])
	if tNewServerWeeks_MontReward["NeedSpace"][nWeek] ~= nil then
		if not User_CheckLeftSpace(tNewServerWeeks_MontReward["NeedSpace"][nWeek]) then
			Sys_MsgBox(tNewServerWeeks_Text["MonsterNoSpace"])
			return
		end
	end
	
	-- 第一周满级不给经验
	-- if nWeek == 1 then
		-- local  nUserLv = Get_UserLevel()
		-- if nUserLv >= G_User_MaxLev then
			-- User_TalkChannel2005(tNewServerWeeks_Text["MaxLev1Week"])
			-- return
		-- end
	-- end
	
	-- 怪物掉落
	local sMontName = tNewServerWeeks_Text["MontName"][nMontTypeId]
	
	for _,v in ipairs(tRewardTable) do
		local tTemp = v
		if v[nMontTypeId]["ItemChanceSum"] ~= nil then
			-- 2,3周（有二转区别）
			if nWeek == 2 or nWeek == 3 then
				-- 是否二转
				local nMete = Get_UserNewMetempsychosis()
				if nMete < 2 then
					tTemp = CommonFunc_Copy(tNewServerWeeks_MontMete2)
				end
			end
			
			local tReward,sRewardStr = RewardTemplate_Random(tTemp,nMontTypeId)
			if sRewardStr ~= "" then
				User_EffectAdd(tNewServerWeeks_Effect["EffectObj"],tNewServerWeeks_Effect["MontDrop"])
				User_TalkChannel2005(string.format(tNewServerWeeks_Text["MontDrop"],sMontName,sRewardStr))
			end
		else
			local bSuccess,sRewardStr = RewardTemplate_UseItem(v[nMontTypeId])
			if bSuccess and sRewardStr ~= "" then 
				User_EffectAdd(tNewServerWeeks_Effect["EffectObj"],tNewServerWeeks_Effect["MontDrop"])
				User_TalkChannel2005(string.format(tNewServerWeeks_Text["MontDrop"],sMontName,sRewardStr))
			end
		end
	end
end


-------------------------------------------
-- 表示新服
function NewServerWeeks_ChkNewService()
	local nGlobalId = tNewServerWeeks_Cont["NewGlobalId"]
	local nData = Get_SysDynaGlobalData0(nGlobalId)
	
	-- 非新服跳出
	if nData < 1 then
		return false
	end

	-- 活动时间外
	if not Sys_ChkFullTime(tNewServerWeeks_Cont["ActAllTime"]) then
		return false
	end
	
	-- 满足条件
	return true
end


-- 赤龙寻宝新增产出
function NewServerWeeks_DragonAct()
	-- 确定活动周时间
	local nWeek = NewServerWeeks_ChkWeekTime()
	if not nWeek then return end
	
	local nEvent_4 = tNewServerWeeks_Stc[4]["EventType"]
	local nType_4 = tNewServerWeeks_Stc[4]["DataType"]
	local nComplete_4 = tNewServerWeeks_Stc[4]["Complete"]
	if not Task_ChkStcValue(nEvent_4,nType_4,"==",0) then
		if Task_StcInterval(nEvent_4,nType_4,1,4) then
			Task_SetStatistic(nEvent_4,nType_4,0,1)
			Task_SetStcTimestamp(nEvent_4,nType_4,0)
		end
	end
	
	local nData = Get_UserStatisticValue(nEvent_4,nType_4) + 1
	Task_SetStatistic(nEvent_4,nType_4,nData,1)
	Task_SetStcTimestamp(nEvent_4,nType_4,0)
	
	-- 每日第五次
	if nData == nComplete_4 then
		-- 给奖励
		local bSuccess,sRewardStr = RewardTemplate_UseItem(tNewServerWeeks_DragonReward[nWeek])
		if bSuccess then
			-- 文字输出
			User_TalkChannel2005(tNewServerWeeks_Text["DragonAct"][nWeek])
		end
	end
end

-- 返回赤龙寻宝需要背包空间
function NewServerWeeks_DragonSpace(nWeek)
	return tNewServerWeeks_DragonReward[nWeek]["NeedSpace"]
end

-- 返回赤炼异宝开启次数
function NewServerWeeks_DragonOpenTimes()
	local nEvent_4 = tNewServerWeeks_Stc[4]["EventType"]
	local nType_4 = tNewServerWeeks_Stc[4]["DataType"]
	local nComplete_4 = tNewServerWeeks_Stc[4]["Complete"]
	local nData = Get_UserStatisticValue(nEvent_4,nType_4) + 1
	if nData == nComplete_4 then
		return true
	else
		return false
	end
end


-------------------------------------------NPC配置--------------------------------------------
-- 【新服狂欢推广大使】
-- 备注
--(111,112,113)新服狂欢推广大使【加批注】
--(115,116,117,118,119,1100,1101,1102)活动时间-条件-奖励【加批注】
tNpcFace[4683] = 170
tNpcGossip[20461] = tNpcGossip[20461] or DefaultNpc:new{}
tNpcGossip[20461]["OptionHidden"] = 1
tNpcGossip[20461]["DialogueText"] = tNewServerWeeks_Text[20461]
-- 活动前
tNpcGossip[20461]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[20461]["tOption1-1"] = {111}
-- 活动后
tNpcGossip[20461]["Text1-2"] = {111,112,113, 121}
tNpcGossip[20461]["tOption1-2"] = {121}
-- 等级不足
tNpcGossip[20461]["Text1-3"] = {111,112,113, 131,1310,1311,132,133,134,135,136,137,138,139}
tNpcGossip[20461]["tOption1-3"] = {131,132}
tNpcGossip[20461]["OptionFunc131"] = "NewServerWeeks_ListNpcTip</N>20461"
tNpcGossip[20461]["OptionFunc132"] = "NewServerWeeks_OpenWeb</N>20461"
-- 满足条件
tNpcGossip[20461]["Text1-4"] = {111,112,113, 131,1310,1311,132,133,134,135,136,137,138,139}
tNpcGossip[20461]["tOption1-4"] = {141,145}
tNpcGossip[20461]["OptionFunc141"] = "NewServerWeeks_ListNpcSign</N>20461"
-- tNpcGossip[20461]["OptionFunc142"] = "NewServerWeeks_FindWay</N>20462"
-- tNpcGossip[20461]["OptionFunc143"] = "NewServerWeeks_FindWay</N>11003"
-- tNpcGossip[20461]["OptionFunc144"] = "NewServerWeeks_ListNpcTip</N>20461"
tNpcGossip[20461]["OptionFunc145"] = "NewServerWeeks_OpenWeb</N>20461"
tNpcGossip[20461]["OptionChkFunc143"] = function ()
	-- 第一周出“进入聚宝秘境”选项
	return Sys_ChkFullTime(tNewServerWeeks_Cont["ActTime"][1])
end
-- 已经签到过
tNpcGossip[20461]["Text1-5"] = {151}
tNpcGossip[20461]["tOption1-5"] = {151}

-- == 经验周--活动介绍 ==
-- tNpcGossip[20461]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114,2115,2116}
-- tNpcGossip[20461]["tOption2-1"] = {211,212,213}
-- tNpcGossip[20461]["OptionPoint211"] = "3-1"
-- tNpcGossip[20461]["OptionPoint212"] = "4-1"
-- tNpcGossip[20461]["OptionFunc213"] = "NewServerWeeks_ListNpcMain"
-- == 装备周--活动介绍 ==
-- tNpcGossip[20461]["Text2-2"] = {221,222,223,224,225,226,227,228,229}
-- tNpcGossip[20461]["tOption2-2"] = {221,222}
-- tNpcGossip[20461]["OptionPoint221"] = "4-2"
-- tNpcGossip[20461]["OptionFunc222"] = "NewServerWeeks_ListNpcMain"
-- == 武功周--活动介绍 ==
-- tNpcGossip[20461]["Text2-3"] = {231,232,233,234,235,236,237,238}
-- tNpcGossip[20461]["tOption2-3"] = {231,232}
-- tNpcGossip[20461]["OptionPoint231"] = "4-3"
-- tNpcGossip[20461]["OptionFunc232"] = "NewServerWeeks_ListNpcMain"
-- == 练气周--活动介绍 ==
-- tNpcGossip[20461]["Text2-4"] = {241,242,243,244,245,246,247,248,249}
-- tNpcGossip[20461]["tOption2-4"] = {241,242}
-- tNpcGossip[20461]["OptionPoint241"] = "4-4"
-- tNpcGossip[20461]["OptionFunc242"] = "NewServerWeeks_ListNpcMain"

-- == 经验周--片区礼盒详情 ==
-- tNpcGossip[20461]["Text3-1"] = {311,312,313,314,315,316}
-- tNpcGossip[20461]["tOption3-1"] = {311,312}
-- tNpcGossip[20461]["OptionFunc311"] = "NewServerWeeks_ListNpcTip</N>20461"

-- == 经验周--活动升级详情 ==
-- tNpcGossip[20461]["Text4-1"] = {411,412,413,414,415,416,417,418,419,4110}
-- tNpcGossip[20461]["tOption4-1"] = {411,412}
-- tNpcGossip[20461]["OptionFunc411"] = "NewServerWeeks_ListNpcTip</N>20461"
-- == 装备周--活动升级详情 ==
-- tNpcGossip[20461]["Text4-2"] = {421,422,423,424,425}
-- tNpcGossip[20461]["tOption4-2"] = {421,422}
-- tNpcGossip[20461]["OptionFunc421"] = "NewServerWeeks_ListNpcTip</N>20461"
-- == 练功周--活动升级详情 ==
-- tNpcGossip[20461]["Text4-3"] = {431,432,433,434,435}
-- tNpcGossip[20461]["tOption4-3"] = {431,432}
-- tNpcGossip[20461]["OptionFunc431"] = "NewServerWeeks_ListNpcTip</N>20461"
-- == 练气周--活动升级详情 ==
-- tNpcGossip[20461]["Text4-4"] = {441,442,443,444,445}
-- tNpcGossip[20461]["tOption4-4"] = {441,442}
-- tNpcGossip[20461]["OptionFunc441"] = "NewServerWeeks_ListNpcTip</N>20461"

-- 签到空间不足（经验周）
tNpcGossip[20461]["Text11-1"] = {1111}
tNpcGossip[20461]["tOption11-1"] = {1111}
-- 签到空间不足（装备周）
tNpcGossip[20461]["Text11-2"] = {1121}
tNpcGossip[20461]["tOption11-2"] = {1121}
-- 签到空间不足（武功周）
tNpcGossip[20461]["Text11-3"] = {1131}
tNpcGossip[20461]["tOption11-3"] = {1131}
-- 签到空间不足（练气周）
tNpcGossip[20461]["Text11-4"] = {1141}
tNpcGossip[20461]["tOption11-4"] = {1141}

-------------------------------------------
-- 【青岚秘境仙子】
tNpcFace[4684] = 112
tNpcGossip[20462] = tNpcGossip[20462] or DefaultNpc:new{}
tNpcGossip[20462]["OptionHidden"] = 1
tNpcGossip[20462]["DialogueText"] = tNewServerWeeks_Text[20462]
-- 活动外
tNpcGossip[20462]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[20462]["tOption1-1"] = {111}
-- 活动后
tNpcGossip[20462]["Text1-2"] = {111,112,113, 121}
tNpcGossip[20462]["tOption1-2"] = {121}
-- 等级不足
tNpcGossip[20462]["Text1-3"] = {111,112,113, 131,132,133,134,135,136,137}
tNpcGossip[20462]["tOption1-3"] = {131}
-- 满足条件
tNpcGossip[20462]["Text1-4"] = {111,112,113, 131,132,133,134,135,137}
tNpcGossip[20462]["tOption1-4"] = {141,142}
tNpcGossip[20462]["OptionChkFunc141"] = function ()
	return Sys_ChkDayTime(tNewServerWeeks_Cont["OpenPlace"])
end
tNpcGossip[20462]["OptionChkFunc142"] = function ()
	return not Sys_ChkDayTime(tNewServerWeeks_Cont["OpenPlace"])
end
tNpcGossip[20462]["OptionFunc141"] = "NewServerWeeks_FamNpcChgMap</N>20462"


-- 秘境开启时间外
tNpcGossip[20462]["Text2-1"] = {211}
tNpcGossip[20462]["tOption2-1"] = {211}
-- 已进入3次秘境
tNpcGossip[20462]["Text2-2"] = {221}
tNpcGossip[20462]["tOption2-2"] = {221}

-----------------------------------------怪物触发--------------------------------------------
-- 普通怪
tMonster[4327] = tMonster[4327] or {}
tMonster[4327]["tFunction"] = tMonster[4327]["tFunction"] or {}
table.insert(tMonster[4327]["tFunction"],NewServerWeeks_MontFunc)
-- 精英怪
tMonster[4328] = tMonster[4328] or {}
tMonster[4328]["tFunction"] = tMonster[4328]["tFunction"] or {}
table.insert(tMonster[4328]["tFunction"],NewServerWeeks_MontFunc)

tMonster[4348] = tMonster[4348] or {}
tMonster[4348]["tFunction"] = tMonster[4348]["tFunction"] or {}
table.insert(tMonster[4348]["tFunction"],NewServerWeeks_MontFunc)

tMonster[4349] = tMonster[4349] or {}
tMonster[4349]["tFunction"] = tMonster[4349]["tFunction"] or {}
table.insert(tMonster[4349]["tFunction"],NewServerWeeks_MontFunc)

tMonster[4350] = tMonster[4350] or {}
tMonster[4350]["tFunction"] = tMonster[4350]["tFunction"] or {}
table.insert(tMonster[4350]["tFunction"],NewServerWeeks_MontFunc)

tMonster[4351] = tMonster[4351] or {}
tMonster[4351]["tFunction"] = tMonster[4351]["tFunction"] or {}
table.insert(tMonster[4351]["tFunction"],NewServerWeeks_MontFunc)



-----------------------------------------陷阱触发--------------------------------------------
tTrap[1658] = tTrap[1658] or {}
tTrap[1658]["Function"] = function()
	local sFunc = "NewServerWeeks_LeaveMap"
	local nUserId = Get_UserId()
	Sys_MsgBox(tNewServerWeeks_Text["LeaveMap"]["MsgBox"],sFunc,nil,nUserId)
end

-----------------------------------------时间触发--------------------------------------------
-- '00 00'
tOntimerMin_M[00] = tOntimerMin_M[00] or {}
table.insert(tOntimerMin_M[00],NewServerWeeks_CreateMont)
-- '10 10'
tOntimerMin_M[10] = tOntimerMin_M[10] or {}
table.insert(tOntimerMin_M[10],NewServerWeeks_CreateMont)
-- '20 20'
tOntimerMin_M[20] = tOntimerMin_M[20] or {}
table.insert(tOntimerMin_M[20],NewServerWeeks_CreateMont)
-- '30 30'
tOntimerMin_M[30] = tOntimerMin_M[30] or {}
table.insert(tOntimerMin_M[30],NewServerWeeks_CreateMont)
-- '40 40'
tOntimerMin_M[40] = tOntimerMin_M[40] or {}
table.insert(tOntimerMin_M[40],NewServerWeeks_CreateMont)
-- '50 50'
tOntimerMin_M[50] = tOntimerMin_M[50] or {}
table.insert(tOntimerMin_M[50],NewServerWeeks_CreateMont)


-- 服务器启动触发
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],NewServerWeeks_SetActTime)

