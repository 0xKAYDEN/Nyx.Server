------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]全球暑期活动-订单任务
--Creator:		翁清海
--Created:		2020/05/19
------------------------------------------------------------------------------------

--命名前缀
--SummerActivityOrder_

--logid:12001988,3[]

--stc 掩码说明
--stc(222,43) 烈焰灵狐首次引导标志
--stc(222,44) 剩余订单数
--stc(222,45) 当前订单信息，十位表示下发订单的NPC索引，各位表示订单索引

--------------------------------------------数据部分配置--------------------------------------------
--当前选择的购买次数
local tSummerActivityOrder_Record = {}

--活动时间
local tSummerActivityOrder_Time = {}
	tSummerActivityOrder_Time["ActivityTime"] = tActivityTime["SummerActive"]["ActivityTime"]
	
--常量表
local tSummerActivityOrder_Cont = {}
	--等级检查
	tSummerActivityOrder_Cont["Level"] = 80
	tSummerActivityOrder_Cont["Metempsychosis"] = 0
	--订单时间
	tSummerActivityOrder_Cont["Time"] = 7200
	--双龙城
	tSummerActivityOrder_Cont["TwinCity"] = 1002
	--市场
	tSummerActivityOrder_Cont["Market"] = 1036
	--活动地图
	tSummerActivityOrder_Cont["ActivityMap"] = 10869
	--冰魔巢穴
	tSummerActivityOrder_Cont["WaterMap"] = 10863
	--炎魔巢穴
	tSummerActivityOrder_Cont["FireMap"] = 10864
	--摊位NPC数量
	tSummerActivityOrder_Cont["NpcNum"] = 5
	--主NPC
	tSummerActivityOrder_Cont["MainNpcId"] = 26571
	--摊位NPC
	tSummerActivityOrder_Cont["FoodNpcId"] = 26574
	--活动NPC
	tSummerActivityOrder_Cont["NpcId"] = 26591
	--增加订单需要的材料
	tSummerActivityOrder_Cont["AddItem"] = 3316216
	--增加订单需要的天石
	tSummerActivityOrder_Cont["NeedEMoney"] = 10
	--放弃订单需要消耗的材料
	tSummerActivityOrder_Cont["GiveUp"] = {}
	tSummerActivityOrder_Cont["GiveUp"]["ItemId"] = 3331140
	tSummerActivityOrder_Cont["GiveUp"]["ItemNum"] = 5
	--直接完成订单需要的金币数
	tSummerActivityOrder_Cont["OrderMoney"] = {}
	tSummerActivityOrder_Cont["OrderMoney"][1] = 10000
	tSummerActivityOrder_Cont["OrderMoney"][2] = 30000
	tSummerActivityOrder_Cont["OrderMoney"][3] = 50000
	tSummerActivityOrder_Cont["OrderMoney"][4] = 100000
	tSummerActivityOrder_Cont["OrderMoney"][5] = 200000
	tSummerActivityOrder_Cont["OrderMoney"][6] = 500000
	tSummerActivityOrder_Cont["OrderMoney"][7] = 1000000
	tSummerActivityOrder_Cont["OrderMoney"][8] = 1500000
	tSummerActivityOrder_Cont["OrderMoney"][9] = 2000000
	tSummerActivityOrder_Cont["OrderMoney"][10] = 3000000
	--订单信息
	tSummerActivityOrder_Cont["OrderInfo"] = {}
	tSummerActivityOrder_Cont["OrderInfo"][1] = {}
	tSummerActivityOrder_Cont["OrderInfo"][1]["NeedItem"] = 3316276
	tSummerActivityOrder_Cont["OrderInfo"][1]["AwardItem"] = 3331140
	tSummerActivityOrder_Cont["OrderInfo"][1]["AwardNum"] = 15
	tSummerActivityOrder_Cont["OrderInfo"][1]["NpcId"] = 26605
	tSummerActivityOrder_Cont["OrderInfo"][2] = {}
	tSummerActivityOrder_Cont["OrderInfo"][2]["NeedItem"] = 3316275
	tSummerActivityOrder_Cont["OrderInfo"][2]["AwardItem"] = 3331140
	tSummerActivityOrder_Cont["OrderInfo"][2]["AwardNum"] = 15
	tSummerActivityOrder_Cont["OrderInfo"][2]["NpcId"] = 26604
	tSummerActivityOrder_Cont["OrderInfo"][3] = {}
	tSummerActivityOrder_Cont["OrderInfo"][3]["NeedItem"] = 3331104
	tSummerActivityOrder_Cont["OrderInfo"][3]["NeedItem2"] = 3331103
	tSummerActivityOrder_Cont["OrderInfo"][3]["AwardItem"] = 3331140
	tSummerActivityOrder_Cont["OrderInfo"][3]["AwardNum"] = 15
	tSummerActivityOrder_Cont["OrderInfo"][3]["AwardNum2"] = 10
	tSummerActivityOrder_Cont["OrderInfo"][3]["NpcId"] = 26579
	tSummerActivityOrder_Cont["OrderInfo"][4] = {}
	tSummerActivityOrder_Cont["OrderInfo"][4]["NeedItem"] = 3316277
	tSummerActivityOrder_Cont["OrderInfo"][4]["AwardItem"] = 3331140
	tSummerActivityOrder_Cont["OrderInfo"][4]["AwardNum"] = 20
	tSummerActivityOrder_Cont["OrderInfo"][4]["QuestIndex"] = 1
	tSummerActivityOrder_Cont["OrderInfo"][4]["NpcId"] = 26605
	tSummerActivityOrder_Cont["OrderInfo"][5] = {}
	tSummerActivityOrder_Cont["OrderInfo"][5]["NeedItem"] = 3316278
	tSummerActivityOrder_Cont["OrderInfo"][5]["AwardItem"] = 3331140
	tSummerActivityOrder_Cont["OrderInfo"][5]["AwardNum"] = 20
	tSummerActivityOrder_Cont["OrderInfo"][5]["QuestIndex"] = 1
	tSummerActivityOrder_Cont["OrderInfo"][5]["NpcId"] = 26605
	tSummerActivityOrder_Cont["OrderInfo"][6] = {}
	tSummerActivityOrder_Cont["OrderInfo"][6]["NeedItem"] = 3316279
	tSummerActivityOrder_Cont["OrderInfo"][6]["AwardItem"] = 3331140
	tSummerActivityOrder_Cont["OrderInfo"][6]["AwardNum"] = 20
	tSummerActivityOrder_Cont["OrderInfo"][6]["QuestIndex"] = 1
	tSummerActivityOrder_Cont["OrderInfo"][6]["NpcId"] = 26605
	tSummerActivityOrder_Cont["OrderInfo"][7] = {}
	tSummerActivityOrder_Cont["OrderInfo"][7]["NeedItem"] = 3316280
	tSummerActivityOrder_Cont["OrderInfo"][7]["AwardItem"] = 3331140
	tSummerActivityOrder_Cont["OrderInfo"][7]["AwardNum"] = 20
	tSummerActivityOrder_Cont["OrderInfo"][7]["QuestIndex"] = 2
	tSummerActivityOrder_Cont["OrderInfo"][7]["NpcId"] = 26604
	tSummerActivityOrder_Cont["OrderInfo"][8] = {}
	tSummerActivityOrder_Cont["OrderInfo"][8]["NeedItem"] = 3316281
	tSummerActivityOrder_Cont["OrderInfo"][8]["AwardItem"] = 3331140
	tSummerActivityOrder_Cont["OrderInfo"][8]["AwardNum"] = 20
	tSummerActivityOrder_Cont["OrderInfo"][8]["QuestIndex"] = 2
	tSummerActivityOrder_Cont["OrderInfo"][8]["NpcId"] = 26604
	tSummerActivityOrder_Cont["OrderInfo"][9] = {}
	tSummerActivityOrder_Cont["OrderInfo"][9]["NeedItem"] = 3316282
	tSummerActivityOrder_Cont["OrderInfo"][9]["AwardItem"] = 3331140
	tSummerActivityOrder_Cont["OrderInfo"][9]["AwardNum"] = 20
	tSummerActivityOrder_Cont["OrderInfo"][9]["QuestIndex"] = 2
	tSummerActivityOrder_Cont["OrderInfo"][9]["NpcId"] = 26604
	--读条相关配置
	tSummerActivityOrder_Cont["Explore"] = {}
	tSummerActivityOrder_Cont["Explore"]["Secs"] = 1
	tSummerActivityOrder_Cont["Explore"]["ActionId"] = 200
	
local tSummerActivityOrder_Log = {}
	tSummerActivityOrder_Log["Id"] = 12001988
	tSummerActivityOrder_Log["Take"] = "0,0,0,0,12001988,3[3],%d,1"
	tSummerActivityOrder_Log["Hand"] = "0,0,%d,%d,12001988,3[5],0,0"
	tSummerActivityOrder_Log["GiveUp"] = "0,0,%d,%d,12001988,3[6],0,0"
	tSummerActivityOrder_Log["Del"] = "0,0,%d,%d,12001988,3[7],0,0"
	tSummerActivityOrder_Log["AddTimes"] = "0,0,%d,%d,12001988,3[8],0,0"
	
local tSummerActivityOrder_ELog = {}
	tSummerActivityOrder_ELog["Cost"] = "1000	1905"
	
--掩码
local tSummerActivityOrder_Stc = {}
	--烈焰灵狐首次引导
	tSummerActivityOrder_Stc[1] = {}
	tSummerActivityOrder_Stc[1]["Event"] = 222
	tSummerActivityOrder_Stc[1]["Type"] = 43
	--剩余订单数
	tSummerActivityOrder_Stc[2] = {}
	tSummerActivityOrder_Stc[2]["Event"] = 222
	tSummerActivityOrder_Stc[2]["Type"] = 44
	tSummerActivityOrder_Stc[2]["TimeType"] = 4
	tSummerActivityOrder_Stc[2]["Delay"] = 1
	tSummerActivityOrder_Stc[2]["First"] = 10
	tSummerActivityOrder_Stc[2]["Add"] = 5
	tSummerActivityOrder_Stc[2]["Max"] = 10
	--当前订单信息
	tSummerActivityOrder_Stc[3] = {}
	tSummerActivityOrder_Stc[3]["Event"] = 222
	tSummerActivityOrder_Stc[3]["Type"] = 45
	--直接完成的订单数
	tSummerActivityOrder_Stc[4] = {}
	tSummerActivityOrder_Stc[4]["Event"] = 224
	tSummerActivityOrder_Stc[4]["Type"] = 95
	tSummerActivityOrder_Stc[4]["TimeType"] = 4
	tSummerActivityOrder_Stc[4]["Delay"] = 1
--随机
local tSummerActivityOrder_Prob = {}
	tSummerActivityOrder_Prob[1] = {}
	tSummerActivityOrder_Prob[1]["ItemChanceSum"] = 10000
	-- 订单1.1
	tSummerActivityOrder_Prob[1][1] = {}
	tSummerActivityOrder_Prob[1][1]["RandomItemChanceType"] = 2
	tSummerActivityOrder_Prob[1][1]["ItemChance"] = 1000
	tSummerActivityOrder_Prob[1][1]["Item_1"]= 1
	-- 订单1.2
	tSummerActivityOrder_Prob[1][2] = {}
	tSummerActivityOrder_Prob[1][2]["RandomItemChanceType"] = 2
	tSummerActivityOrder_Prob[1][2]["ItemChance"] = 1000
	tSummerActivityOrder_Prob[1][2]["Item_1"]= 2
	-- 订单2
	tSummerActivityOrder_Prob[1][3] = {}
	tSummerActivityOrder_Prob[1][3]["RandomItemChanceType"] = 2
	tSummerActivityOrder_Prob[1][3]["ItemChance"] = 2000
	tSummerActivityOrder_Prob[1][3]["Item_1"]= 3
	-- 订单3.1
	tSummerActivityOrder_Prob[1][4] = {}
	tSummerActivityOrder_Prob[1][4]["RandomItemChanceType"] = 2
	tSummerActivityOrder_Prob[1][4]["ItemChance"] = 1000
	tSummerActivityOrder_Prob[1][4]["Item_1"]= 4
	-- 订单3.2
	tSummerActivityOrder_Prob[1][5] = {}
	tSummerActivityOrder_Prob[1][5]["RandomItemChanceType"] = 2
	tSummerActivityOrder_Prob[1][5]["ItemChance"] = 1000
	tSummerActivityOrder_Prob[1][5]["Item_1"]= 5
	-- 订单3.3
	tSummerActivityOrder_Prob[1][6] = {}
	tSummerActivityOrder_Prob[1][6]["RandomItemChanceType"] = 2
	tSummerActivityOrder_Prob[1][6]["ItemChance"] = 1000
	tSummerActivityOrder_Prob[1][6]["Item_1"]= 6
	-- 订单4.1
	tSummerActivityOrder_Prob[1][7] = {}
	tSummerActivityOrder_Prob[1][7]["RandomItemChanceType"] = 2
	tSummerActivityOrder_Prob[1][7]["ItemChance"] = 1000
	tSummerActivityOrder_Prob[1][7]["Item_1"]= 7
	-- 订单4.2
	tSummerActivityOrder_Prob[1][8] = {}
	tSummerActivityOrder_Prob[1][8]["RandomItemChanceType"] = 2
	tSummerActivityOrder_Prob[1][8]["ItemChance"] = 1000
	tSummerActivityOrder_Prob[1][8]["Item_1"]= 8
	-- 订单4.3
	tSummerActivityOrder_Prob[1][9] = {}
	tSummerActivityOrder_Prob[1][9]["RandomItemChanceType"] = 2
	tSummerActivityOrder_Prob[1][9]["ItemChance"] = 1000
	tSummerActivityOrder_Prob[1][9]["Item_1"]= 9
	
local tSummerActivityOrder_Reward = {}
	-- ===领取天书
	-- ===索引: tSummerActivityOrder_Reward["Book"]
	-- ===LogStep: 3[1]
	tSummerActivityOrder_Reward["Book"] = {}
	tSummerActivityOrder_Reward["Book"]["LogId"] = 12001988
	tSummerActivityOrder_Reward["Book"]["LogStep"] = "3[1]"
	tSummerActivityOrder_Reward["Book"]["RewardItem"] = {}
	tSummerActivityOrder_Reward["Book"]["RewardItem"][1] = {}
	tSummerActivityOrder_Reward["Book"]["RewardItem"][1]["Id"] = 3331141 -- 通讯天书[3331141][属性:9][叠加:0][金币:0], 【表格】通讯天书
	tSummerActivityOrder_Reward["Book"]["RewardItem"][1]["Attr"] = "0 1" -- 通讯天书*1
	tSummerActivityOrder_Reward["Book"]["RewardEffect"] = {}
	tSummerActivityOrder_Reward["Book"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityOrder_Reward["Book"]["RewardEffect"]["Effect"] = "angelwing"


	tSummerActivityOrder_Reward["Quest"] = {}
	-- ===领任务道具
	-- ===索引: tSummerActivityOrder_Reward["Quest"][1]
	-- ===LogStep: 3[2]
	tSummerActivityOrder_Reward["Quest"][1] = {}
	tSummerActivityOrder_Reward["Quest"][1]["LogId"] = 12001988
	tSummerActivityOrder_Reward["Quest"][1]["LogStep"] = "3[2]"
	tSummerActivityOrder_Reward["Quest"][1]["RewardItem"] = {}
	tSummerActivityOrder_Reward["Quest"][1]["RewardItem"][1] = {}
	tSummerActivityOrder_Reward["Quest"][1]["RewardItem"][1]["Id"] = 3316283 -- 净瓶玉露[3316283][属性:11][叠加:0][金币:0], 【表格】净瓶玉露
	tSummerActivityOrder_Reward["Quest"][1]["RewardItem"][1]["Attr"] = "0 1 0 120 1" -- 净瓶玉露*1
	tSummerActivityOrder_Reward["Quest"][1]["RewardEffect"] = {}
	tSummerActivityOrder_Reward["Quest"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityOrder_Reward["Quest"][1]["RewardEffect"]["Effect"] = "angelwing"

	-- ===领任务道具
	-- ===索引: tSummerActivityOrder_Reward["Quest"][2]
	-- ===LogStep: 3[2]
	tSummerActivityOrder_Reward["Quest"][2] = {}
	tSummerActivityOrder_Reward["Quest"][2]["LogId"] = 12001988
	tSummerActivityOrder_Reward["Quest"][2]["LogStep"] = "3[2]"
	tSummerActivityOrder_Reward["Quest"][2]["RewardItem"] = {}
	tSummerActivityOrder_Reward["Quest"][2]["RewardItem"][1] = {}
	tSummerActivityOrder_Reward["Quest"][2]["RewardItem"][1]["Id"] = 3316284 -- 烈焰箭矢[3316284][属性:11][叠加:0][金币:0], 【表格】烈焰箭矢
	tSummerActivityOrder_Reward["Quest"][2]["RewardItem"][1]["Attr"] = "0 1 0 120 1" -- 烈焰箭矢*1
	tSummerActivityOrder_Reward["Quest"][2]["RewardEffect"] = {}
	tSummerActivityOrder_Reward["Quest"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityOrder_Reward["Quest"][2]["RewardEffect"]["Effect"] = "angelwing"

	-- ===获得任务奖励
	-- ===索引: tSummerActivityOrder_Reward["Hand"]
	-- ===LogStep: 3[4]
	tSummerActivityOrder_Reward["Hand"] = {}
	tSummerActivityOrder_Reward["Hand"]["LogId"] = 12001988
	tSummerActivityOrder_Reward["Hand"]["LogStep"] = "3[4]"
	tSummerActivityOrder_Reward["Hand"]["RewardItem"] = {}
	tSummerActivityOrder_Reward["Hand"]["RewardItem"][1] = {}
	tSummerActivityOrder_Reward["Hand"]["RewardItem"][1]["Id"] = 3331140 -- 仲夏金币[3331140][属性:9][叠加:10000][金币:0], 【表格】仲夏金币
	tSummerActivityOrder_Reward["Hand"]["RewardItem"][1]["Attr"] = "0 1" -- 仲夏金币*1
	tSummerActivityOrder_Reward["Hand"]["RewardEffect"] = {}
	tSummerActivityOrder_Reward["Hand"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityOrder_Reward["Hand"]["RewardEffect"]["Effect"] = "angelwing"

	tSummerActivityOrder_Reward["Drop"] = {}
	-- ===打怪掉落
	-- ===索引: tSummerActivityOrder_Reward["Drop"][1]
	-- ===LogStep: 3[10]
	-- RewardTemplate_RandomReward(tSummerActivityOrder_Reward["Drop"],1)
	tSummerActivityOrder_Reward["Drop"][1] = {}
	tSummerActivityOrder_Reward["Drop"][1]["ItemChanceSum"] = 10000
	tSummerActivityOrder_Reward["Drop"][1]["LogId"] = 12001988
	tSummerActivityOrder_Reward["Drop"][1]["LogStep"] = " 3[10]"
	-- 言灵珠 - 3%
	tSummerActivityOrder_Reward["Drop"][1][1] = {}
	tSummerActivityOrder_Reward["Drop"][1][1]["RandomItemChanceType"] = 2
	tSummerActivityOrder_Reward["Drop"][1][1]["ItemChance"] = 300
	tSummerActivityOrder_Reward["Drop"][1][1]["RewardItem"] = {}
	tSummerActivityOrder_Reward["Drop"][1][1]["RewardItem"][1] = {}
	tSummerActivityOrder_Reward["Drop"][1][1]["RewardItem"][1]["Id"] = 3316216 -- 言灵珠[3316216][属性:11][叠加:0][金币:0], 【表格】言灵珠
	tSummerActivityOrder_Reward["Drop"][1][1]["RewardItem"][1]["Attr"] = "0 3" -- 言灵珠*3
	tSummerActivityOrder_Reward["Drop"][1][1]["RewardEffect"] = {}
	tSummerActivityOrder_Reward["Drop"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityOrder_Reward["Drop"][1][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得1个, 最多可获得:（1）
	tSummerActivityOrder_Reward["Drop"][1][1]["EventType"] = 222
	tSummerActivityOrder_Reward["Drop"][1][1]["DataType"] = 75
	tSummerActivityOrder_Reward["Drop"][1][1]["RewardDelay"] = 1
	tSummerActivityOrder_Reward["Drop"][1][1]["RewardTimeType"] = 4
	tSummerActivityOrder_Reward["Drop"][1][1]["RewardData"] = 1
	tSummerActivityOrder_Reward["Drop"][1][1]["FullIndex"] = 2
	-- 无 - 97%
	tSummerActivityOrder_Reward["Drop"][1][2] = {}
	tSummerActivityOrder_Reward["Drop"][1][2]["RandomItemChanceType"] = 2
	tSummerActivityOrder_Reward["Drop"][1][2]["ItemChance"] = 9700


	-- ===显著功勋礼包
	-- ===索引: tSummerActivityOrder_Reward["GuoBag"]
	-- ===LogStep: 3[11]
	tSummerActivityOrder_Reward["GuoBag"] = {}
	tSummerActivityOrder_Reward["GuoBag"]["LogId"] = 12001988
	tSummerActivityOrder_Reward["GuoBag"]["LogStep"] = "3[11]"
	tSummerActivityOrder_Reward["GuoBag"]["RewardItem"] = {}
	tSummerActivityOrder_Reward["GuoBag"]["RewardItem"][1] = {}
	tSummerActivityOrder_Reward["GuoBag"]["RewardItem"][1]["Id"] = 3316216 -- 言灵珠[3316216][属性:11][叠加:0][金币:0], 【表格】言灵珠
	tSummerActivityOrder_Reward["GuoBag"]["RewardItem"][1]["Attr"] = "0 1" -- 言灵珠*1
	tSummerActivityOrder_Reward["GuoBag"]["RewardEffect"] = {}
	tSummerActivityOrder_Reward["GuoBag"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityOrder_Reward["GuoBag"]["RewardEffect"]["Effect"] = "angelwing"
	tSummerActivityOrder_Reward["GuoBag"]["EventType"] = 222
	tSummerActivityOrder_Reward["GuoBag"]["DataType"] = 76
	tSummerActivityOrder_Reward["GuoBag"]["RewardDelay"] = 1
	tSummerActivityOrder_Reward["GuoBag"]["RewardTimeType"] = 4


--------------------------------------------逻辑部分配置--------------------------------------------
--等级检查
function SummerActivityOrder_ChkLevel()
	local nSummerActivityOrder_UserId = Get_UserId()
	local nSummerActivityOrder_Level = tSummerActivityOrder_Cont["Level"]
	local nSummerActivityOrder_Metempsychosis = tSummerActivityOrder_Cont["Metempsychosis"]
	
	--等级判断
	if User_JudgeLevelAndMetempsychosis(nSummerActivityOrder_Level,nSummerActivityOrder_Metempsychosis,nSummerActivityOrder_UserId) then
		return true
	else
		return false
	end
end

--掩码清零判断
function SummerActivityOrder_StcReset(nSummerActivityOrder_Index, nSummerActivityOrder_NowUserId)
	if tSummerActivityOrder_Stc[nSummerActivityOrder_Index] == nil then
		return
	end
	
	local nSummerActivityOrder_UserId = nSummerActivityOrder_NowUserId or Get_UserId()
	local nSummerActivityOrder_Event = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Event"]
	local nSummerActivityOrder_Type = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Type"]
	local nSummerActivityOrder_TimeType = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["TimeType"]
	local nSummerActivityOrder_Delay = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Delay"]
	local nSummerActivityOrder_Add = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Add"]
	local nSummerActivityOrder_First = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["First"]
	local nSummerActivityOrder_Max = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Max"]
	
	--判断是否需要设置初始值
	if nSummerActivityOrder_First ~= nil then
		--不存在则设置
		if not Task_ChkStatistic(nSummerActivityOrder_Event,nSummerActivityOrder_Type,nSummerActivityOrder_UserId) then
			if not Task_SetStatistic(nSummerActivityOrder_Event,nSummerActivityOrder_Type,nSummerActivityOrder_First,1,nSummerActivityOrder_UserId) then
				return
			end
		end
	end
	
	--是否清零
	if nSummerActivityOrder_TimeType ~= nil and nSummerActivityOrder_Delay ~= nil then
		if nSummerActivityOrder_Add == nil then
			Task_StcReset(nSummerActivityOrder_Event,nSummerActivityOrder_Type,nSummerActivityOrder_UserId,nSummerActivityOrder_TimeType,nSummerActivityOrder_Delay)
		else
			--获取当前值
			local nSummerActivityOrder_NowData = Get_UserStatisticValue(nSummerActivityOrder_Event,nSummerActivityOrder_Type,nSummerActivityOrder_UserId)
			
			--已经隔天加上对应值,和上面区分，上面是清零
			if Task_StcInterval(nSummerActivityOrder_Event,nSummerActivityOrder_Type,nSummerActivityOrder_Delay,nSummerActivityOrder_TimeType,nSummerActivityOrder_UserId) then
				--判断是否达到上限值
				if nSummerActivityOrder_NowData + nSummerActivityOrder_Add > nSummerActivityOrder_Max then
					Task_SetStatistic(nSummerActivityOrder_Event,nSummerActivityOrder_Type,nSummerActivityOrder_Max,1,nSummerActivityOrder_UserId)
				else
					Task_AddStatistic(nSummerActivityOrder_Event,nSummerActivityOrder_Type,nSummerActivityOrder_Add,1,nSummerActivityOrder_UserId)
				end
				
				Task_SetStcTimestamp(nSummerActivityOrder_Event,nSummerActivityOrder_Type,0,nSummerActivityOrder_UserId)
			end
		end
	end
end

--获取玩家掩码时间戳
function SummerActivityOrder_GetStcTimestampValue(nSummerActivityOrder_Index, nSummerActivityOrder_NowUserId)
	if tSummerActivityOrder_Stc[nSummerActivityOrder_Index] == nil then
		return 0
	end
	
	local nSummerActivityOrder_UserId = nSummerActivityOrder_NowUserId or Get_UserId()
	local nSummerActivityOrder_Event = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Event"]
	local nSummerActivityOrder_Type = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Type"]
	local nSummerActivityOrder_TimeType = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["TimeType"]
	local nSummerActivityOrder_Delay = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Delay"]
	
	--是否清零
	SummerActivityOrder_StcReset(nSummerActivityOrder_Index, nSummerActivityOrder_UserId)
	
	return Get_UserStcTimestampValue(nSummerActivityOrder_Event,nSummerActivityOrder_Type,nSummerActivityOrder_UserId)
end

--获取玩家掩码
function SummerActivityOrder_GetStcValue(nSummerActivityOrder_Index, nSummerActivityOrder_NowUserId)
	if tSummerActivityOrder_Stc[nSummerActivityOrder_Index] == nil then
		return 0
	end
	
	local nSummerActivityOrder_UserId = nSummerActivityOrder_NowUserId or Get_UserId()
	local nSummerActivityOrder_Event = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Event"]
	local nSummerActivityOrder_Type = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Type"]
	local nSummerActivityOrder_TimeType = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["TimeType"]
	local nSummerActivityOrder_Delay = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Delay"]
	
	--是否清零
	SummerActivityOrder_StcReset(nSummerActivityOrder_Index, nSummerActivityOrder_UserId)
	
	return Get_UserStatisticValue(nSummerActivityOrder_Event,nSummerActivityOrder_Type,nSummerActivityOrder_UserId)
end

--设置玩家掩码
function SummerActivityOrder_SetStcValue(nSummerActivityOrder_Index, sSummerActivityOrder_Mode, nSummerActivityOrder_Data, nSummerActivityOrder_NowUserId)
	if tSummerActivityOrder_Stc[nSummerActivityOrder_Index] == nil then
		return false
	end
	
	local nSummerActivityOrder_UserId = nSummerActivityOrder_NowUserId or Get_UserId()
	local nSummerActivityOrder_Event = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Event"]
	local nSummerActivityOrder_Type = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Type"]
	local nSummerActivityOrder_TimeType = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["TimeType"]
	local nSummerActivityOrder_Delay = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["Delay"]
	local nSummerActivityOrder_First = tSummerActivityOrder_Stc[nSummerActivityOrder_Index]["First"]
	
	--是否清零
	SummerActivityOrder_StcReset(nSummerActivityOrder_Index, nSummerActivityOrder_UserId)
	
	--设置掩码
	if sSummerActivityOrder_Mode == "Set" then
		if Task_SetStatistic(nSummerActivityOrder_Event,nSummerActivityOrder_Type,nSummerActivityOrder_Data,1,nSummerActivityOrder_UserId) then
			Task_SetStcTimestamp(nSummerActivityOrder_Event,nSummerActivityOrder_Type,0,nSummerActivityOrder_UserId)
			return true
		else
			return false
		end
	--增加掩码
	elseif sSummerActivityOrder_Mode == "Add" then
		if Task_AddStatistic(nSummerActivityOrder_Event,nSummerActivityOrder_Type,nSummerActivityOrder_Data,1,nSummerActivityOrder_UserId) then
			Task_SetStcTimestamp(nSummerActivityOrder_Event,nSummerActivityOrder_Type,0,nSummerActivityOrder_UserId)
			return true
		else
			return false
		end
	else
		return false
	end
end

--接单前置条件判断
function SummerActivityOrder_ChkTake(nSummerActivityOrder_NowUserId)
	local nSummerActivityOrder_UserId = nSummerActivityOrder_NowUserId or Get_UserId()
	
	-- 达到订单上限
	if SummerActivityOrder_GetStcValue(2, nSummerActivityOrder_UserId) <= 0 then
		Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["OrderFull"],nil,nil,nSummerActivityOrder_UserId)
		return false
	end
	
	--已接取任务
	if SummerActivityOrder_GetStcValue(3, nSummerActivityOrder_UserId) > 0 then
		return false
	end
	
	--计算背包空间
	local nSummerActivityOrder_Space = 0
	
	--是否第一次接取任务
	if SummerActivityOrder_GetStcValue(1, nSummerActivityOrder_UserId) <= 0 then
		nSummerActivityOrder_Space = nSummerActivityOrder_Space + RewardTemplate_GetRewardSpace(tSummerActivityOrder_Reward["Book"],nSummerActivityOrder_UserId)
	end
	
	--获取订单物品背包空间
	nSummerActivityOrder_Space = nSummerActivityOrder_Space + RewardTemplate_GetRewardSpace(tSummerActivityOrder_Reward["Quest"][1],nSummerActivityOrder_UserId)
	
	--背包空间判断
	if nSummerActivityOrder_Space > 0 and (not User_CheckLeftSpace(nSummerActivityOrder_Space,nSummerActivityOrder_UserId)) then
		Sys_MsgBox(string.format(tSummerActivityOrder_Text["MsgBox"]["BackFull"], nSummerActivityOrder_Space),nil,nil,nSummerActivityOrder_UserId)
		return false
	end
	
	return true
end

--开始接单
function SummerActivityOrder_Begin(nSummerActivityOrder_NowNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tSummerActivityOrder_Time["ActivityTime"]) then
		return
	end
	
	local nSummerActivityOrder_UserId = Get_UserId()
	local nSummerActivityOrder_NpcId = nSummerActivityOrder_NowNpcId or Get_NpcId()
	
	--判断是否已经接到任务
	if SummerActivityOrder_GetStcValue(3, nSummerActivityOrder_UserId) > 0 then
		if nSummerActivityOrder_NpcId == tSummerActivityOrder_Cont["NpcId"] then
			LinkNpcGossipFunc_New(nSummerActivityOrder_NpcId, "1")
		else
			LinkItemGossipFunc_New(nSummerActivityOrder_NpcId, "1")
		end
		
		return
	end
	
	--前置条件判断
	if not SummerActivityOrder_ChkTake(nSummerActivityOrder_UserId) then
		return
	end
	
	--读条
	local nSummerActivityOrder_Secs = tSummerActivityOrder_Cont["Explore"]["Secs"]
	local nSummerActivityOrder_ActionId = tSummerActivityOrder_Cont["Explore"]["ActionId"]
	local sSummerActivityOrder_Content = tSummerActivityOrder_Text["Explore"]
	local sSummerActivityOrder_Func = "SummerActivityOrder_Take</N>"..nSummerActivityOrder_NpcId
	
	User_SetExplore(nSummerActivityOrder_Secs,sSummerActivityOrder_Content,nSummerActivityOrder_ActionId,sSummerActivityOrder_Func,nil,nSummerActivityOrder_UserId)
	
end

--接单逻辑
function SummerActivityOrder_Take(nSummerActivityOrder_NpcId, nSummerActivityOrder_NowUserId)
	local nSummerActivityOrder_UserId = nSummerActivityOrder_NowUserId or Get_UserId()
	
	--前置条件判断
	if not SummerActivityOrder_ChkTake(nSummerActivityOrder_UserId) then
		return
	end
	
	--随机订单
	local nSummerActivityOrder_Flat,tSummerActivityOrder_Num1= Probabil_RandomAward(tSummerActivityOrder_Prob,1)
	local nSummerActivityOrder_Index = tSummerActivityOrder_Num1[1]["tAward"][1]["Item_1"]
	
	--获取订单物品索引
	local nSummerActivityOrder_QuestIndex = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["QuestIndex"]
	
	--扣除一次接取的订单数
	if not SummerActivityOrder_SetStcValue(2, "Add", -1, nSummerActivityOrder_UserId) then
		return
	end
	
	--随机摊位NPC
	local nSummerActivityOrder_NpcIndex = math.random(1, tSummerActivityOrder_Cont["NpcNum"])
	
	--接取任务，设置订单信息掩码
	local nSummerActivityOrder_TotalNum = nSummerActivityOrder_NpcIndex * 10 + nSummerActivityOrder_Index
	
	if not SummerActivityOrder_SetStcValue(3, "Set", nSummerActivityOrder_TotalNum, nSummerActivityOrder_UserId) then
		return
	end
	
	--给奖
	--是否第一次接取任务，给引导书
	if SummerActivityOrder_GetStcValue(1, nSummerActivityOrder_UserId) <= 0 then
		if SummerActivityOrder_SetStcValue(1, "Set", 1, nSummerActivityOrder_UserId) then
			RewardTemplate_UseItemAndMsg(tSummerActivityOrder_Reward["Book"],nSummerActivityOrder_UserId)
			Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["AwardBook"],nil,nil,nSummerActivityOrder_UserId)
		end
	end
	
	--给任务道具
	if nSummerActivityOrder_QuestIndex ~= nil then
		RewardTemplate_UseItemAndMsg(tSummerActivityOrder_Reward["Quest"][nSummerActivityOrder_QuestIndex],nSummerActivityOrder_UserId)
	end
	
	--打接单log
	Sys_SaveActionRewardLog(string.format(tSummerActivityOrder_Log["Take"], nSummerActivityOrder_Index),nSummerActivityOrder_UserId)
	
	--显示当前订单信息
	if nSummerActivityOrder_NpcId == tSummerActivityOrder_Cont["NpcId"] then
		LinkNpcGossipFunc_New(nSummerActivityOrder_NpcId, "1", nil, nil, nSummerActivityOrder_UserId)
	else
		LinkItemGossipFunc_New(nSummerActivityOrder_NpcId, "1", nil, nil, nSummerActivityOrder_UserId)
	end
	
	--接单成功光效
	User_EffectAdd("self","task053",nSummerActivityOrder_UserId)
end

--获取当前订单号
function SummerActivityOrder_GetOrderInfo(nSummerActivityOrder_NowUserId)
	local nSummerActivityOrder_UserId = nSummerActivityOrder_NowUserId or Get_UserId()
	
	--获取当前订单信息
	local nSummerActivityOrder_TotalNum = SummerActivityOrder_GetStcValue(3, nSummerActivityOrder_UserId)
	
	--当前订单索引
	return nSummerActivityOrder_TotalNum % 10
end

--显示当前订单信息
function SummerActivityOrder_ShowInfo(nSummerActivityOrder_NpcId, nSummerActivityOrder_NowUserId)
	local nSummerActivityOrder_UserId = nSummerActivityOrder_NowUserId or Get_UserId()
	
	--获取当前订单信息
	local nSummerActivityOrder_TotalNum = SummerActivityOrder_GetStcValue(3, nSummerActivityOrder_UserId)
	--当前摊位NPC索引
	local nSummerActivityOrder_NpcIndex = math.floor(nSummerActivityOrder_TotalNum / 10)
	--当前订单索引
	local nSummerActivityOrder_Index = nSummerActivityOrder_TotalNum % 10
	
	--下单人
	local sSummerActivityOrder_NpcName = tSummerActivityOrder_Text["NpcName"][nSummerActivityOrder_NpcIndex]
	--需求
	local sSummerActivityOrder_Need = tSummerActivityOrder_Text["OrderNeed"][nSummerActivityOrder_Index]
	--目标
	local sSummerActivityOrder_Target = tSummerActivityOrder_Text["OrderTarget"][nSummerActivityOrder_Index]
	--备注
	local sSummerActivityOrder_Note = tSummerActivityOrder_Text["OrderNote"][nSummerActivityOrder_Index]
	--选项文字
	local sSummerActivityOrder_Option = tSummerActivityOrder_Text["OrderOption"][nSummerActivityOrder_Index]
	--奖励
	local nSummerActivityOrder_AwardItem = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["AwardItem"]
	local nSummerActivityOrder_AwardNum = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["AwardNum"]
	local sSummerActivityOrder_AwardName = Get_ItemtypeName(nSummerActivityOrder_AwardItem)
	
	local sSummerActivityOrder_Award = string.format(tSummerActivityOrder_Text["Show"], sSummerActivityOrder_AwardName, nSummerActivityOrder_AwardNum)
	
	if tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["AwardNum2"] ~= nil then
		sSummerActivityOrder_Award = string.format(tSummerActivityOrder_Text["ShowOr"], sSummerActivityOrder_AwardName, nSummerActivityOrder_AwardNum,sSummerActivityOrder_AwardName,tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["AwardNum2"])
	end
	
	--任务道具
	local nSummerActivityOrder_NeedItemId = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["NeedItem"]
	--备用任务道具
	local nSummerActivityOrder_NeedItemId2 = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["NeedItem2"]
	
	local sSummerActivityOrder_NeedChk = tSummerActivityOrder_Text["OrderNot"]
	
	--判断背包是否有任务道具
	if Item_ChkItem(nSummerActivityOrder_NeedItemId,nil,nil,nSummerActivityOrder_UserId) then
		sSummerActivityOrder_NeedChk = tSummerActivityOrder_Text["OrderCan"]
	elseif nSummerActivityOrder_NeedItemId2 ~= nil and Item_ChkItem(nSummerActivityOrder_NeedItemId2,nil,nil,nSummerActivityOrder_UserId) then
		sSummerActivityOrder_NeedChk = tSummerActivityOrder_Text["OrderCan"]
	end
	
	--获取当前时间戳
	local nSummerActivityOrder_StampValue = SummerActivityOrder_GetStcTimestampValue(3, nSummerActivityOrder_UserId)
	--剩余时间
	local nSummerActivityOrder_SubTime = tSummerActivityOrder_Cont["Time"] - os.time() + nSummerActivityOrder_StampValue
	
	if nSummerActivityOrder_SubTime < 0 then
		nSummerActivityOrder_SubTime = 0
	end
	
	--获取小时
	local nSummerActivityOrder_Hour = math.floor(nSummerActivityOrder_SubTime / 3600)
	--获取分钟
	local nSummerActivityOrder_Minu = math.floor((nSummerActivityOrder_SubTime % 3600) / 60)
	--获取秒
	local nSummerActivityOrder_Sec = nSummerActivityOrder_SubTime % 60
	--时间显示
	local sSummerActivityOrder_Time = ""
	
	if nSummerActivityOrder_Hour > 0 then
		sSummerActivityOrder_Time = string.format(tSummerActivityOrder_Text["TimeHour"], nSummerActivityOrder_Hour, nSummerActivityOrder_Minu)
	elseif nSummerActivityOrder_Minu > 0 then
		sSummerActivityOrder_Time = string.format(tSummerActivityOrder_Text["TimeMinu"], nSummerActivityOrder_Minu, nSummerActivityOrder_Sec)
	else
		sSummerActivityOrder_Time = string.format(tSummerActivityOrder_Text["TimeSec"], nSummerActivityOrder_Sec)
	end
	
	--获取当前直接完成的订单数
	local nSummerActivityOrder_OrderNum = SummerActivityOrder_GetStcValue(4, nSummerActivityOrder_UserId)
	--获取当前直接完成需要的金币数
	local nSummerActivityOrder_OrderMoney = tSummerActivityOrder_Cont["OrderMoney"][nSummerActivityOrder_OrderNum + 1] or tSummerActivityOrder_Cont["OrderMoney"][#tSummerActivityOrder_Cont["OrderMoney"]]
	
	--接订单对白
	if nSummerActivityOrder_NpcId == tSummerActivityOrder_Cont["NpcId"] then
		tNpcGossip[nSummerActivityOrder_NpcId]["Text133"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text133"], sSummerActivityOrder_NpcName)
		tNpcGossip[nSummerActivityOrder_NpcId]["Text134"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text134"], sSummerActivityOrder_Need)
		tNpcGossip[nSummerActivityOrder_NpcId]["Text135"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text135"], sSummerActivityOrder_Target)
		tNpcGossip[nSummerActivityOrder_NpcId]["Text136"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text136"], sSummerActivityOrder_Award)
		tNpcGossip[nSummerActivityOrder_NpcId]["Text137"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text137"], sSummerActivityOrder_Note)
		tNpcGossip[nSummerActivityOrder_NpcId]["Text139"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text139"], sSummerActivityOrder_Time)
		tNpcGossip[nSummerActivityOrder_NpcId]["Option131"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Option131"], sSummerActivityOrder_Option)
		tNpcGossip[nSummerActivityOrder_NpcId]["Option132"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Option132"], sSummerActivityOrder_NeedChk)
		tNpcGossip[nSummerActivityOrder_NpcId]["Option135"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Option135"], nSummerActivityOrder_OrderMoney)
	else
		tItem[nSummerActivityOrder_NpcId]["Text123"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text123"], sSummerActivityOrder_NpcName)
		tItem[nSummerActivityOrder_NpcId]["Text124"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text124"], sSummerActivityOrder_Need)
		tItem[nSummerActivityOrder_NpcId]["Text125"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text125"], sSummerActivityOrder_Target)
		tItem[nSummerActivityOrder_NpcId]["Text126"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text126"], sSummerActivityOrder_Award)
		tItem[nSummerActivityOrder_NpcId]["Text127"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text127"], sSummerActivityOrder_Note)
		tItem[nSummerActivityOrder_NpcId]["Text129"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text129"], sSummerActivityOrder_Time)
		tItem[nSummerActivityOrder_NpcId]["Option121"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Option121"], sSummerActivityOrder_Option)
		tItem[nSummerActivityOrder_NpcId]["Option122"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Option122"], sSummerActivityOrder_NeedChk)
		tItem[nSummerActivityOrder_NpcId]["Option124"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Option124"], nSummerActivityOrder_OrderMoney)
	end
end

--提交订单
function SummerActivityOrder_Hand(nSummerActivityOrder_ItemId, nSummerActivityOrder_Flag)
	--活动时间判断
	if not Sys_ChkFullTime(tSummerActivityOrder_Time["ActivityTime"]) then
		return
	end
	
	local nSummerActivityOrder_UserId = Get_UserId()
	
	--获取当前订单信息
	local nSummerActivityOrder_TotalNum = SummerActivityOrder_GetStcValue(3, nSummerActivityOrder_UserId)
	
	--当前没有订单信息
	if nSummerActivityOrder_TotalNum <= 0 then
		Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["HandNoTask"],nil,nil,nSummerActivityOrder_UserId)
		return
	end
	
	--获取当前时间戳
	local nSummerActivityOrder_StampValue = SummerActivityOrder_GetStcTimestampValue(3, nSummerActivityOrder_UserId)
	--剩余时间
	local nSummerActivityOrder_SubTime = tSummerActivityOrder_Cont["Time"] - os.time() + nSummerActivityOrder_StampValue
	
	local sSummerActivityOrder_Func = ""
	
	if nSummerActivityOrder_ItemId == 0 then
		sSummerActivityOrder_Func = "SummerActivityOrder_GiveUp</N>0"
	else
		sSummerActivityOrder_Func = "SummerActivityOrder_GiveUp</N>"..nSummerActivityOrder_ItemId
	end
	
	--判断是否超时
	if nSummerActivityOrder_SubTime < 0 then
		Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["HandOverTime"],sSummerActivityOrder_Func,nil,nSummerActivityOrder_UserId)
		return
	end
	
	--当前订单索引
	local nSummerActivityOrder_Index = nSummerActivityOrder_TotalNum % 10
	
	--当前任务物品
	local nSummerActivityOrder_NeedItemId = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["NeedItem"]
	
	--当前奖励
	local nSummerActivityOrder_AwardItem = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["AwardItem"]
	local nSummerActivityOrder_AwardNum = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["AwardNum"]
	
	--获取当前直接完成的订单数
	local nSummerActivityOrder_OrderNum = SummerActivityOrder_GetStcValue(4, nSummerActivityOrder_UserId)
	--获取当前直接完成需要的金币数
	local nSummerActivityOrder_OrderMoney = tSummerActivityOrder_Cont["OrderMoney"][nSummerActivityOrder_OrderNum + 1] or tSummerActivityOrder_Cont["OrderMoney"][#tSummerActivityOrder_Cont["OrderMoney"]]
	
	--判断是否是花费金币完成任务
	if nSummerActivityOrder_Flag ~= nil then
		--判断金币是否满足
		if not User_CanPutMoney2Bag(-nSummerActivityOrder_OrderMoney, nSummerActivityOrder_UserId) then
			Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["NoMoney"],nil,nil,nSummerActivityOrder_UserId)
			return
		end
	else
		--判断是否有任务物品
		if not Item_ChkMulItem(nSummerActivityOrder_NeedItemId,nSummerActivityOrder_NeedItemId,1,nil,nil,nSummerActivityOrder_UserId) then
			--判断是否有替代物品
			if tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["NeedItem2"] ~= nil then
				nSummerActivityOrder_NeedItemId = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["NeedItem2"]
				nSummerActivityOrder_AwardNum = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["AwardNum2"]
				
				if not Item_ChkMulItem(nSummerActivityOrder_NeedItemId,nSummerActivityOrder_NeedItemId,1,nil,nil,nSummerActivityOrder_UserId) then
					Sys_MsgBox(string.format(tSummerActivityOrder_Text["MsgBox"]["HandNoItem"], tSummerActivityOrder_Text["ItemName"][nSummerActivityOrder_NeedItemId]),nil,nil,nSummerActivityOrder_UserId)
					return
				end
			else
				Sys_MsgBox(string.format(tSummerActivityOrder_Text["MsgBox"]["HandNoItem"], tSummerActivityOrder_Text["ItemName"][nSummerActivityOrder_NeedItemId]),nil,nil,nSummerActivityOrder_UserId)
				return
			end
		end
	end
	
	local tSummerActivityOrder_Award = CommonFunc_Copy(tSummerActivityOrder_Reward["Hand"])
	
	tSummerActivityOrder_Award["RewardItem"][1]["Id"] = nSummerActivityOrder_AwardItem
	tSummerActivityOrder_Award["RewardItem"][1]["Attr"] = "0 "..nSummerActivityOrder_AwardNum
	
	--背包空间
	local nSummerActivityOrder_Space = RewardTemplate_GetRewardSpace(tSummerActivityOrder_Award,nSummerActivityOrder_UserId)
	
	--背包空间判断
	if nSummerActivityOrder_Space > 0 and (not User_CheckLeftSpace(nSummerActivityOrder_Space,nSummerActivityOrder_UserId)) then
		Sys_MsgBox(string.format(tSummerActivityOrder_Text["MsgBox"]["HandBackFull"], nSummerActivityOrder_Space),nil,nil,nSummerActivityOrder_UserId)
		return
	end
	
	--判断是否是花费金币完成任务
	if nSummerActivityOrder_Flag ~= nil then
		--扣除金币
		if not User_AddMoneyNew(-nSummerActivityOrder_OrderMoney,tSummerActivityOrder_Log["Id"],nSummerActivityOrder_UserId) then
			return
		end
		
		--设置直接完成的订单数+1
		if not SummerActivityOrder_SetStcValue(4, "Add", 1, nSummerActivityOrder_UserId) then
			return
		end
	else
		--扣除任务物品
		if not Item_DelMulItem(nSummerActivityOrder_NeedItemId,nSummerActivityOrder_NeedItemId,1,nil,nil,nSummerActivityOrder_UserId) then
			return
		end
		
		Sys_SaveActionRewardLog(string.format(tSummerActivityOrder_Log["Hand"], nSummerActivityOrder_NeedItemId, 1),nSummerActivityOrder_UserId)
	end
	
	--扣除道具，背包有就删了
	if tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["QuestIndex"] ~= nil then
		local nSummerActivityOrder_QuestIndex = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["QuestIndex"]
		local nSummerActivityOrder_QuestItemId = tSummerActivityOrder_Reward["Quest"][nSummerActivityOrder_QuestIndex]["RewardItem"][1]["Id"]
		
		if Item_ChkItem(nSummerActivityOrder_QuestItemId,nil,nil,nSummerActivityOrder_UserId) then
			if Item_DelItem(nSummerActivityOrder_QuestItemId,nil,nil,nSummerActivityOrder_UserId) then
				Sys_SaveActionRewardLog(string.format(tSummerActivityOrder_Log["Del"], nSummerActivityOrder_QuestItemId, 1),nSummerActivityOrder_UserId)
			end
		end
	end
	
	--重置任务掩码
	if not SummerActivityOrder_SetStcValue(3, "Set", 0, nSummerActivityOrder_UserId) then
		return
	end
	
	--给奖励
	RewardTemplate_UseItemAndMsg(tSummerActivityOrder_Award,nSummerActivityOrder_UserId)
	
	--弹出初始对白
	if nSummerActivityOrder_ItemId == 0 then
		local nSummerActivityOrder_NpcId = Get_NpcId()
		
		LinkNpcGossipFunc_New(nSummerActivityOrder_NpcId, "1")
	else
		LinkItemGossipFunc_New(nSummerActivityOrder_ItemId, "1")
	end
end

--放弃任务
function SummerActivityOrder_GiveUp(nSummerActivityOrder_ItemId,nSummerActivityOrder_NowUserId)
	--活动时间判断
	if not Sys_ChkFullTime(tSummerActivityOrder_Time["ActivityTime"]) then
		return
	end
	
	local nSummerActivityOrder_UserId = nSummerActivityOrder_NowUserId or Get_UserId()
	
	--获取当前时间戳
	local nSummerActivityOrder_StampValue = SummerActivityOrder_GetStcTimestampValue(3, nSummerActivityOrder_UserId)
	--剩余时间
	local nSummerActivityOrder_SubTime = tSummerActivityOrder_Cont["Time"] - os.time() + nSummerActivityOrder_StampValue
	
	local sSummerActivityOrder_Text = tSummerActivityOrder_Text["Channel2005"]["GiveUpNoCost"]
	
	-- --判断是否超时
	-- if nSummerActivityOrder_SubTime >= 0 then
		-- local nSummerActivityOrder_GiveUpItemId = tSummerActivityOrder_Cont["GiveUp"]["ItemId"]
		-- local nSummerActivityOrder_ItemNum = tSummerActivityOrder_Cont["GiveUp"]["ItemNum"]
		
		-- --检查放弃需要的材料
		-- if not Item_ChkMulItem(nSummerActivityOrder_GiveUpItemId,nSummerActivityOrder_GiveUpItemId,nSummerActivityOrder_ItemNum,nil,nil,nSummerActivityOrder_UserId) then
			-- Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["GiveUpNoItem"],nil,nil,nSummerActivityOrder_UserId)
			-- return
		-- end
		
		-- if not Item_DelMulItem(nSummerActivityOrder_GiveUpItemId,nSummerActivityOrder_GiveUpItemId,nSummerActivityOrder_ItemNum,nil,nil,nSummerActivityOrder_UserId) then
			-- Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["GiveUpNoItem"],nil,nil,nSummerActivityOrder_UserId)
			-- return
		-- end
		
		-- --打log
		-- Sys_SaveActionRewardLog(string.format(tSummerActivityOrder_Log["GiveUp"], nSummerActivityOrder_GiveUpItemId, nSummerActivityOrder_ItemNum), nSummerActivityOrder_UserId)
		
		-- sSummerActivityOrder_Text = string.format(tSummerActivityOrder_Text["Channel2005"]["GiveUp"],nSummerActivityOrder_ItemNum, Get_ItemtypeName(nSummerActivityOrder_GiveUpItemId))
	-- end
	
	--获取订单索引
	local nSummerActivityOrder_Index = SummerActivityOrder_GetOrderInfo(nSummerActivityOrder_UserId)
	
	--扣除道具，背包有就删了
	if tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["QuestIndex"] ~= nil then
		local nSummerActivityOrder_QuestIndex = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["QuestIndex"]
		local nSummerActivityOrder_QuestItemId = tSummerActivityOrder_Reward["Quest"][nSummerActivityOrder_QuestIndex]["RewardItem"][1]["Id"]
		
		if Item_ChkItem(nSummerActivityOrder_QuestItemId,nil,nil,nSummerActivityOrder_UserId) then
			if Item_DelItem(nSummerActivityOrder_QuestItemId,nil,nil,nSummerActivityOrder_UserId) then
				Sys_SaveActionRewardLog(string.format(tSummerActivityOrder_Log["Del"], nSummerActivityOrder_QuestItemId, 1),nSummerActivityOrder_UserId)
			end
		end
	end
	
	--重置任务掩码
	if not SummerActivityOrder_SetStcValue(3, "Set", 0, nSummerActivityOrder_UserId) then
		return
	end
	
	User_TalkChannel2005(sSummerActivityOrder_Text,nSummerActivityOrder_UserId)
	
	--弹出初始对白
	if nSummerActivityOrder_ItemId == 0 then
		local nSummerActivityOrder_NpcId = Get_NpcId()
		
		LinkNpcGossipFunc_New(nSummerActivityOrder_NpcId, "1")
	else
		LinkItemGossipFunc_New(nSummerActivityOrder_ItemId, "1")
	end
end

--增加接单机会
function SummerActivityOrder_AddOrderTimes(nSummerActivityOrder_Times, nSummerActivityOrder_NowUserId)
	--活动时间判断
	if not Sys_ChkFullTime(tSummerActivityOrder_Time["ActivityTime"]) then
		return
	end
	
	local nSummerActivityOrder_UserId = nSummerActivityOrder_NowUserId or Get_UserId()
	
	if SummerActivityOrder_SetStcValue(2, "Add", nSummerActivityOrder_Times, nSummerActivityOrder_UserId) then
		User_TalkChannel2005(string.format(tSummerActivityOrder_Text["Channel2005"]["AddTimes"], nSummerActivityOrder_Times),nSummerActivityOrder_UserId)
	end
end

--寻路
function SummerActivityOrder_Find()
	--活动时间判断
	if not Sys_ChkFullTime(tSummerActivityOrder_Time["ActivityTime"]) then
		return
	end
	
	local nSummerActivityOrder_UserId = Get_UserId()
	
	--获取订单索引
	local nSummerActivityOrder_Index = SummerActivityOrder_GetOrderInfo(nSummerActivityOrder_UserId)
	
	if tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index] == nil then
		return
	end
	
	local nSummerActivityOrder_MapId = Get_UserMapId(nSummerActivityOrder_UserId)
	
	local nSummerActivityOrder_NpcId = tSummerActivityOrder_Cont["OrderInfo"][nSummerActivityOrder_Index]["NpcId"]
	
	--地图判断
	if nSummerActivityOrder_MapId == tSummerActivityOrder_Cont["TwinCity"] or nSummerActivityOrder_MapId == tSummerActivityOrder_Cont["Market"] or nSummerActivityOrder_MapId == tSummerActivityOrder_Cont["ActivityMap"] or nSummerActivityOrder_MapId == tSummerActivityOrder_Cont["WaterMap"] or nSummerActivityOrder_MapId == tSummerActivityOrder_Cont["FireMap"] then
		--判断是不是瓜田
		if nSummerActivityOrder_Index == 3 then
			MyMelonField_EnterMap(1)
		else
			MonsterHell_NewGotoMap(nSummerActivityOrder_NpcId)
		end
	else
		Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["NotIn"],nil,nil,nSummerActivityOrder_UserId)
	end
end

--小怪逻辑
function SummerActivityOrder_KillMonster(nSummerActivityOrder_MonsterId)
	--活动时间判断
	if not Sys_ChkFullTime(tSummerActivityOrder_Time["ActivityTime"]) then
		return
	end
	
	--等级判断
	if not SummerActivityOrder_ChkLevel() then
		return
	end
	
	RewardTemplate_NewRandom(tSummerActivityOrder_Reward["Drop"],1)
end

--显著功勋礼包
function SummerActivityOrder_GuoBag()
	--活动时间判断
	if not Sys_ChkFullTime(tSummerActivityOrder_Time["ActivityTime"]) then
		return
	end
	
	--等级判断
	if not SummerActivityOrder_ChkLevel() then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tSummerActivityOrder_Reward["GuoBag"])
end

--补领天书
function SummerActivityOrder_Replace()
	--活动时间判断
	if not Sys_ChkFullTime(tSummerActivityOrder_Time["ActivityTime"]) then
		return
	end
	
	local nSummerActivityOrder_UserId = Get_UserId()
	local nSummerActivityOrder_ItemId = tSummerActivityOrder_Reward["Book"]["RewardItem"][1]["Id"]
	
	--背包已经有天书
	if Item_ChkItem(nSummerActivityOrder_ItemId,nil,nil,nSummerActivityOrder_UserId) then
		Sys_MsgBox(string.format(tSummerActivityOrder_Text["MsgBox"]["Have"],Get_ItemtypeName(nSummerActivityOrder_ItemId)),nil,nil,nSummerActivityOrder_UserId)
		return
	end
	
	--背包满
	local nSummerActivityOrder_Space = RewardTemplate_GetRewardSpace(tSummerActivityOrder_Reward["Book"],nSummerActivityOrder_UserId)
	
	if nSummerActivityOrder_Space > 0 and (not User_CheckLeftSpace(nSummerActivityOrder_Space,nSummerActivityOrder_UserId)) then
		Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["ReplaceFull"],nil,nil,nSummerActivityOrder_UserId)
		return
	end
	
	RewardTemplate_UseItemAndMsg(tSummerActivityOrder_Reward["Book"],nSummerActivityOrder_UserId)
end

--补充接单次数对白
function SummerActivityOrder_OrderTimesChk(nSummerActivityOrder_NowNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tSummerActivityOrder_Time["ActivityTime"]) then
		return
	end
	
	local nSummerActivityOrder_UserId = Get_UserId()
	
	local nSummerActivityOrder_NpcId = nSummerActivityOrder_NowNpcId or Get_NpcId()
	
	--剩余接单次数
	local nSummerActivityOrder_Data = SummerActivityOrder_GetStcValue(2,nSummerActivityOrder_UserId)
	
	if nSummerActivityOrder_NpcId == tSummerActivityOrder_Cont["NpcId"] then
		tNpcGossip[nSummerActivityOrder_NpcId]["Text231"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text231"], nSummerActivityOrder_Data)
		
		LinkNpcGossipFunc_New(nSummerActivityOrder_NpcId, "2-3")
	else
		tItem[nSummerActivityOrder_NpcId]["Text221"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text221"], nSummerActivityOrder_Data)
		
		LinkItemGossipFunc_New(nSummerActivityOrder_NpcId, "2-2")
	end
end

--补充接单次数
function SummerActivityOrder_OrderTimes(nSummerActivityOrder_NowTimes, nSummerActivityOrder_Flag, nSummerActivityOrder_NowNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tSummerActivityOrder_Time["ActivityTime"]) then
		return
	end
	
	local nSummerActivityOrder_UserId = Get_UserId()
	
	local nSummerActivityOrder_NpcId = nSummerActivityOrder_NowNpcId or Get_NpcId()
	
	--剩余接单次数
	local nSummerActivityOrder_Data = SummerActivityOrder_GetStcValue(2,nSummerActivityOrder_UserId)
	
	--当前选择增加的次数
	local nSummerActivityOrder_Times = 0
	
	if nSummerActivityOrder_Flag == 0 then
		--记录选择的次数
		if nSummerActivityOrder_NowTimes == 0 then
			tSummerActivityOrder_Record[nSummerActivityOrder_UserId] = tSummerActivityOrder_Stc[2]["Max"] - nSummerActivityOrder_Data
			nSummerActivityOrder_Times = tSummerActivityOrder_Stc[2]["Max"] - nSummerActivityOrder_Data
		else
			tSummerActivityOrder_Record[nSummerActivityOrder_UserId] = nSummerActivityOrder_NowTimes
			nSummerActivityOrder_Times = nSummerActivityOrder_NowTimes
		end
	else
		--判断玩家身上是否有对应索引
		if tSummerActivityOrder_Record[nSummerActivityOrder_UserId] == nil then
			return
		end
		
		nSummerActivityOrder_Times = tSummerActivityOrder_Record[nSummerActivityOrder_UserId]
	end
	
	--临界判断，当前没有可增加的订单
	if nSummerActivityOrder_Times <= 0 then
		Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["OrderLimit"], nil,nil,nSummerActivityOrder_UserId)
		return
	end
	
	--判断订单上限
	if nSummerActivityOrder_Data + nSummerActivityOrder_Times > tSummerActivityOrder_Stc[2]["Max"] then
		Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["OrderLimit"], nil,nil,nSummerActivityOrder_UserId)
		return
	end
	
	local nSummerActivityOrder_ItemId = tSummerActivityOrder_Cont["AddItem"]
	
	local nSummerActivityOrder_EMoney = tSummerActivityOrder_Cont["NeedEMoney"] * nSummerActivityOrder_Times
	
	--是否要用天石购买
	if nSummerActivityOrder_Flag == 0 then
		--判断背包言灵珠
		if not Item_ChkMulItem(nSummerActivityOrder_ItemId,nSummerActivityOrder_ItemId,nSummerActivityOrder_Times,nil,nil,nSummerActivityOrder_UserId) then
			if nSummerActivityOrder_NpcId == tSummerActivityOrder_Cont["NpcId"] then
				tNpcGossip[nSummerActivityOrder_NpcId]["Text321"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text321"], nSummerActivityOrder_EMoney)
				tNpcGossip[nSummerActivityOrder_NpcId]["Option321"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Option321"], nSummerActivityOrder_EMoney)
				
				LinkNpcGossipFunc_New(nSummerActivityOrder_NpcId, "3-2")
			else
				tItem[nSummerActivityOrder_NpcId]["Text311"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Text311"], nSummerActivityOrder_EMoney)
				tItem[nSummerActivityOrder_NpcId]["Option311"] = string.format(tSummerActivityOrder_Text[nSummerActivityOrder_NpcId]["Option311"], nSummerActivityOrder_EMoney)
				
				LinkItemGossipFunc_New(nSummerActivityOrder_NpcId, "3-1")
			end
			
			return
		end
		
		--扣除言灵珠
		if not Item_DelMulItem(nSummerActivityOrder_ItemId,nSummerActivityOrder_ItemId,nSummerActivityOrder_Times,nil,nil,nSummerActivityOrder_UserId) then
			return
		end
		
		Sys_SaveActionRewardLog(string.format(tSummerActivityOrder_Log["AddTimes"], nSummerActivityOrder_ItemId, nSummerActivityOrder_Times), nSummerActivityOrder_UserId)
	else
		if Get_UserEMoney(nSpringFestival2020Nian_UserId) < nSummerActivityOrder_EMoney then
			Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["NoEmoney"],nil,nil,nSummerActivityOrder_UserId)
			return
		end
		
		--扣除天石
		if not User_AddEMoneyAndLog(-nSummerActivityOrder_EMoney,tSummerActivityOrder_ELog["Cost"],nSummerActivityOrder_UserId) then
			Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["NoEmoney"],nil,nil,nSummerActivityOrder_UserId)
			return
		end
	end
	
	--增加接单机会
	SummerActivityOrder_AddOrderTimes(nSummerActivityOrder_Times, nSummerActivityOrder_UserId)
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--烈焰灵狐
tNpcFace[4068] = 831
tNpcGossip[26591] = tNpcGossip[26591] or DefaultNpc:new{}
tNpcGossip[26591]["DialogueText"] = tSummerActivityOrder_Text[26591]
tNpcGossip[26591]["OptionHidden"] = 1

--首次点击判断
tNpcGossip[26591]["Text1-1"] = {111,112,113}
tNpcGossip[26591]["ChkFunc1-1"] = function(nSummerActivityOrder_UserId)
	return SummerActivityOrder_GetStcValue(1, nSummerActivityOrder_UserId) <= 0
end
tNpcGossip[26591]["tOption1-1"] = {111}
tNpcGossip[26591]["OptionPoint111"] = "2-1"

--二次点击判断
tNpcGossip[26591]["Text1-2"] = {111,127,128,129,121,122,123,124,125,126}
tNpcGossip[26591]["ChkFunc1-2"] = function(nSummerActivityOrder_UserId)
	if SummerActivityOrder_GetStcValue(1, nSummerActivityOrder_UserId) <= 0 then
		return false
	end
	
	--已有订单
	if SummerActivityOrder_GetOrderInfo(nSummerActivityOrder_UserId) > 0 then
		return false
	end
	
	local nSummerActivityOrder_Data = SummerActivityOrder_GetStcValue(2, nSummerActivityOrder_UserId)
	
	if nSummerActivityOrder_Data > tSummerActivityOrder_Stc[2]["Max"] then
		nSummerActivityOrder_Data = tSummerActivityOrder_Stc[2]["Max"]
	end
	
	tNpcGossip[26591]["Text128"] = string.format(tSummerActivityOrder_Text[26591]["Text128"], tSummerActivityOrder_Text["OrderInfo"][nSummerActivityOrder_Data],nSummerActivityOrder_Data)
	
	return true
end
tNpcGossip[26591]["tOption1-2"] = {121,122,123,124}
tNpcGossip[26591]["OptionFunc121"] = "SummerActivityOrder_Begin"
tNpcGossip[26591]["OptionFunc122"] = "NpcPosition_PathFind</N>"..tSummerActivityOrder_Cont["FoodNpcId"]
tNpcGossip[26591]["OptionFunc123"] = "SummerActivityOrder_Replace"
tNpcGossip[26591]["OptionFunc124"] = "SummerActivityOrder_OrderTimesChk"
tNpcGossip[26591]["OptionChkFunc123"] = function(nSummerActivityOrder_UserId)
	local nSummerActivityOrder_ItemId = tSummerActivityOrder_Reward["Book"]["RewardItem"][1]["Id"]
	
	return not Item_ChkItem(nSummerActivityOrder_ItemId,nil,nil,nSummerActivityOrder_UserId)
end

--身上已有订单
tNpcGossip[26591]["Text1-3"] = {131,132,133,134,135,136,137,138,139}
tNpcGossip[26591]["ChkFunc1-3"] = function(nSummerActivityOrder_UserId)
	if SummerActivityOrder_GetStcValue(1, nSummerActivityOrder_UserId) <= 0 then
		return false
	end
	
	--无订单
	if SummerActivityOrder_GetOrderInfo(nSummerActivityOrder_UserId) <= 0 then
		return false
	end
	
	SummerActivityOrder_ShowInfo(26591, nSummerActivityOrder_UserId)
	
	return true
end
tNpcGossip[26591]["tOption1-3"] = {131,132,133,134,135}
tNpcGossip[26591]["OptionFunc131"] = "SummerActivityOrder_Find"
tNpcGossip[26591]["OptionFunc132"] = "SummerActivityOrder_Hand</N>0"
tNpcGossip[26591]["OptionPoint133"] = "2-2"
tNpcGossip[26591]["OptionFunc134"] = "SummerActivityOrder_Replace"
tNpcGossip[26591]["OptionFunc135"] = "SummerActivityOrder_Hand</N>0</N>1"
tNpcGossip[26591]["OptionChkFunc134"] = function(nSummerActivityOrder_UserId)
	local nSummerActivityOrder_ItemId = tSummerActivityOrder_Reward["Book"]["RewardItem"][1]["Id"]
	
	return not Item_ChkItem(nSummerActivityOrder_ItemId,nil,nil,nSummerActivityOrder_UserId)
end

--接【帮你便是】
tNpcGossip[26591]["Text2-1"] = {111,211,212}
tNpcGossip[26591]["tOption2-1"] = {211}
tNpcGossip[26591]["OptionPoint211"] = "3-1"

--接【放弃接单】
tNpcGossip[26591]["Text2-2"] = {221,222}
tNpcGossip[26591]["tOption2-2"] = {221,222}
tNpcGossip[26591]["OptionFunc221"] = "SummerActivityOrder_GiveUp</N>0"

--接【补充接单次数】
tNpcGossip[26591]["Text2-3"] = {231,232}
tNpcGossip[26591]["tOption2-3"] = {231,232}
tNpcGossip[26591]["OptionFunc231"] = "SummerActivityOrder_OrderTimes</N>1</N>0"
tNpcGossip[26591]["OptionFunc232"] = "SummerActivityOrder_OrderTimes</N>0</N>0"

--接【那我要如何交订单呢？】
tNpcGossip[26591]["Text3-1"] = {111,311}
tNpcGossip[26591]["tOption3-1"] = {311}
tNpcGossip[26591]["OptionFunc311"] = "SummerActivityOrder_Begin"

--天石二次确认
tNpcGossip[26591]["Text3-2"] = {321,322}
tNpcGossip[26591]["tOption3-2"] = {321,322}
tNpcGossip[26591]["OptionFunc321"] = "SummerActivityOrder_OrderTimes</N>0</N>1"

---------------------------------------------物品模块---------------------------------------------
--仲夏金币
tItem[3331140] = tItem[3331140] or {}
tItem[3331140]["Time"] = tSummerActivityOrder_Time["ActivityTime"]
tItem[3331140]["Function"] = function(nSummerActivityOrder_ItemId,sSummerActivityOrder_ItemName)
	local nSummerActivityOrder_UserId = Get_UserId()
	local nSummerActivityOrder_MapId = Get_UserMapId(nSummerActivityOrder_UserId)
	
	--地图判断
	if nSummerActivityOrder_MapId == tSummerActivityOrder_Cont["TwinCity"] then
		NpcPosition_PathFind(tSummerActivityOrder_Cont["MainNpcId"])
	elseif nSummerActivityOrder_MapId == tSummerActivityOrder_Cont["ActivityMap"] then
		NpcPosition_PathFind(tSummerActivityOrder_Cont["FoodNpcId"])
	else
		local nSummerActivityOrder_PosX = Get_NpcPositionX(tSummerActivityOrder_Cont["MainNpcId"])
		local nSummerActivityOrder_PosY = Get_NpcPositionY(tSummerActivityOrder_Cont["MainNpcId"])
		
		Sys_MsgBox(string.format(tSummerActivityOrder_Text["MsgBox"]["NoInCity"], nSummerActivityOrder_PosX,nSummerActivityOrder_PosY),nil,nil,nSummerActivityOrder_UserId)
	end
end

--通讯天书
tItemFace[3331141] = 1563
tItem[3331141] = tItem[3331141] or {}
tItem[3331141]["Time"] = tSummerActivityOrder_Time["ActivityTime"]
tItem[3331141]["Function"] = function(nSummerActivityOrder_ItemId,sSummerActivityOrder_ItemName)
	LinkItemGossipFunc_New(nSummerActivityOrder_ItemId,"1")
end
tItem[3331141]["DialogueText"] = tSummerActivityOrder_Text[3331141]
tItem[3331141]["Text1-1"] = {115,116,117,111,112,113,114}
tItem[3331141]["ChkFunc1-1"] = function(nSummerActivityOrder_UserId)
	--有订单
	if SummerActivityOrder_GetOrderInfo(nSummerActivityOrder_UserId) > 0 then
		return false
	end
	
	local nSummerActivityOrder_Data = SummerActivityOrder_GetStcValue(2, nSummerActivityOrder_UserId)
	
	if nSummerActivityOrder_Data > tSummerActivityOrder_Stc[2]["Max"] then
		nSummerActivityOrder_Data = tSummerActivityOrder_Stc[2]["Max"]
	end
	
	tItem[3331141]["Text116"] = string.format(tSummerActivityOrder_Text[3331141]["Text116"], tSummerActivityOrder_Text["OrderInfo"][nSummerActivityOrder_Data],nSummerActivityOrder_Data)
	
	return true
end
tItem[3331141]["tOption1-1"] = {111,112}
tItem[3331141]["OptionFunc111"] = "SummerActivityOrder_Begin</N>3331141"
tItem[3331141]["OptionFunc112"] = "SummerActivityOrder_OrderTimesChk</N>3331141"

tItem[3331141]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
tItem[3331141]["ChkFunc1-2"] = function(nSummerActivityOrder_UserId)
	--无订单
	if SummerActivityOrder_GetOrderInfo(nSummerActivityOrder_UserId) <= 0 then
		return false
	end
	
	SummerActivityOrder_ShowInfo(3331141, nSummerActivityOrder_UserId)
	
	return true
end
tItem[3331141]["tOption1-2"] = {121,122,123,124}
tItem[3331141]["OptionFunc121"] = "SummerActivityOrder_Find"
tItem[3331141]["OptionFunc122"] = "SummerActivityOrder_Hand</N>3331141"
tItem[3331141]["OptionPoint123"] = "2-1"
tItem[3331141]["OptionFunc124"] = "SummerActivityOrder_Hand</N>3331141</N>1"

--接【放弃接单】
tItem[3331141]["Text2-1"] = {211,212}
tItem[3331141]["tOption2-1"] = {211,212}
tItem[3331141]["OptionFunc211"] = "SummerActivityOrder_GiveUp</N>3331141"

--接【补充接单次数】
tItem[3331141]["Text2-2"] = {221,222}
tItem[3331141]["tOption2-2"] = {221,222}
tItem[3331141]["OptionFunc221"] = "SummerActivityOrder_OrderTimes</N>1</N>0</N>3331141"
tItem[3331141]["OptionFunc222"] = "SummerActivityOrder_OrderTimes</N>0</N>0</N>3331141"

--天石二次确认
tItem[3331141]["Text3-1"] = {311,312}
tItem[3331141]["tOption3-1"] = {311,312}
tItem[3331141]["OptionFunc311"] = "SummerActivityOrder_OrderTimes</N>0</N>1</N>3331141"

--言灵珠
tItem[3316216] = tItem[3316216] or {}
tItem[3316216]["Time"] = tSummerActivityOrder_Time["ActivityTime"]
tItem[3316216]["Function"] = function(nSummerActivityOrder_ItemId,sItemName)
	--判断接单上限
	if SummerActivityOrder_GetStcValue(2) >= tSummerActivityOrder_Stc[2]["Max"] then
		Sys_MsgBox(tSummerActivityOrder_Text["MsgBox"]["OrderLimit"])
		return
	end
	
	if Item_ChkItem(nSummerActivityOrder_ItemId) and Item_DelItem(nSummerActivityOrder_ItemId) then
		SummerActivityOrder_AddOrderTimes(1)
		Sys_SaveActionRewardLog(string.format(tSummerActivityOrder_Log["AddTimes"], nSummerActivityOrder_ItemId, 1))
	end
end


---------------------------------------------怪物模块---------------------------------------------
--小怪掉落（普通服）
local tSummerActivityOrder_KillMonster = {}
	tSummerActivityOrder_KillMonster["ActivityTime"] = tSummerActivityOrder_Time["ActivityTime"]
	tSummerActivityOrder_KillMonster["Function"]= SummerActivityOrder_KillMonster
	table.insert(tMonsterDrop_AreaLoad,tSummerActivityOrder_KillMonster)
	
--小怪掉落（激情服）
local tSummerActivityOrder_KillMonster_NoGift = {}
	tSummerActivityOrder_KillMonster_NoGift["ActivityTime"] = tSummerActivityOrder_Time["ActivityTime"]
	tSummerActivityOrder_KillMonster_NoGift["Function"] = SummerActivityOrder_KillMonster
	tSummerActivityOrder_KillMonster_NoGift["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tSummerActivityOrder_KillMonster_NoGift)
	

