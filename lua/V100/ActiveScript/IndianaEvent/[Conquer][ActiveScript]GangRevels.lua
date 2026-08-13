------------------------------------------------------------------------------------
--Name：            190401[ios英文征服][活动脚本]4月新服夺宝玩法制作
--Creator:      杨艳
--Created:     2019/04/08
------------------------------------------------------------------------------------


--命名前缀
-- GangRevels_

--logid： 12001358



--npc：


--物品



--STC掩码表：

-------------------------------------------数据部分-----------------------------------------
--基本数据
local tGangRevels_Data = {}
	tGangRevels_Data["ActMap"] = {}
	-- 10473,'庆典礼堂'
	tGangRevels_Data["ActMap"][1] = {}
	tGangRevels_Data["ActMap"][1]["MapId"] = 10473
	tGangRevels_Data["ActMap"][1]["PosXMin"] = 200
	tGangRevels_Data["ActMap"][1]["PosXMax"] = 470
	tGangRevels_Data["ActMap"][1]["PosYMin"] = 200
	tGangRevels_Data["ActMap"][1]["PosYMax"] = 485
	tGangRevels_Data["ActMap"][1]["DistanceX"] = 30
	tGangRevels_Data["ActMap"][1]["DistanceY"] = 15
	
	-- 10474,'古神战场'
	tGangRevels_Data["ActMap"][2] = {}
	tGangRevels_Data["ActMap"][2]["MapId"] = 10474
	tGangRevels_Data["ActMap"][2]["PosX"] = 51
	tGangRevels_Data["ActMap"][2]["PosY"] = 59

	--动态宝箱数据
	tGangRevels_Data["DyBoxNpc"] = {}
	tGangRevels_Data["DyBoxNpc"]["NpcFace"] = 39540
	tGangRevels_Data["DyBoxNpc"]["Task"] = 94488838
	tGangRevels_Data["DyBoxNpc"]["Task1"] = 94488844
	
	--开启时间
	tGangRevels_Data["OpenTime"] = {}
	tGangRevels_Data["OpenTime"][1] = "5 22:00 5 22:30"
	tGangRevels_Data["OpenTime"][2] = "6 22:00 6 22:30"
	
	-- 3320894,'庆典礼堂入场券'
	-- 3320910,'古神战场入场券
	tGangRevels_Data["Item"] = {}
	tGangRevels_Data["Item"][1] = 3320910
	tGangRevels_Data["Item"][2] = 3320894
	
	--传送点
	tGangRevels_Data["City"] = {}
	tGangRevels_Data["City"]["MapId"] = 10364
	tGangRevels_Data["City"]["PosX"] = 243
	tGangRevels_Data["City"]["PosY"] = 245
	
	--帮众领奖时间
	tGangRevels_Data["GetRewardDate"] = "1 00:00 4 23:59"
	
	
--帮众奖励
local tGangRevels_Reward = {}
	tGangRevels_Reward[1] = {}
	tGangRevels_Reward[1]["RewardItem"] = {}
	tGangRevels_Reward[1]["RewardItem"][1] = {}
    tGangRevels_Reward[1]["RewardItem"][1]["Id"] = 3320798
    tGangRevels_Reward[1]["RewardItem"][1]["Attr"] = "0 20"
	tGangRevels_Reward[1]["RewardItem"][2] = {}
    tGangRevels_Reward[1]["RewardItem"][2]["Id"] = 3320894
    tGangRevels_Reward[1]["RewardItem"][2]["Attr"] = "0 1 0 10080 1"
    tGangRevels_Reward[1]["LogId"] = 12001358

	
	
--新服专享随机奖励
local tGangRevels_RunReward = {}
	-- ===party奖池
	-- ===索引: 1
	-- ===
	-- ===
	tGangRevels_RunReward[1] = {}
	tGangRevels_RunReward[1]["ItemChanceSum"] = 10000
	tGangRevels_RunReward[1]["LogId"] = 12001358
	-- 100美金碎片 - 20.0%
	tGangRevels_RunReward[1][1] = {}
	tGangRevels_RunReward[1][1]["RandomItemChanceType"] = 2
	tGangRevels_RunReward[1][1]["ItemChance"] = 2000
	tGangRevels_RunReward[1][1]["RewardItem"] = {}
	tGangRevels_RunReward[1][1]["RewardItem"][1] = {}
	tGangRevels_RunReward[1][1]["RewardItem"][1]["Id"] = 3320796 -- 【库】System.Byte[][属性:9]【表格】100美金碎片
	tGangRevels_RunReward[1][1]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*40
	tGangRevels_RunReward[1][1]["RewardEffect"] = {}
	tGangRevels_RunReward[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGangRevels_RunReward[1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 玩家cq_statistic掩码
-- 	tGangRevels_RunReward[1][1]["EventType"] = 199 -- 需手动配：[cq_statistic]表event_type
-- 	tGangRevels_RunReward[1][1]["DataType"] = 99 -- 需手动配：[cq_statistic]表data_type
-- 	tGangRevels_RunReward[1][1]["RewardData"] = 1 -- 每天限制的次数
-- 	tGangRevels_RunReward[1][1]["RewardTotalData"] = 1 -- 整个活动总的限制次数
-- 	tGangRevels_RunReward[1][1]["RewardDelay"] = 1 -- 掩码的间隔时间
-- 	tGangRevels_RunReward[1][1]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）
-- 	tGangRevels_RunReward[1][1]["FullIndex"] = 4 -- 超出限量给其他【下标】奖励；注意
	-- 全服cq_dyna_global_data存储表
	tGangRevels_RunReward[1][1]["GlobalId"] = 53350 -- 需手动配：[cq_dyna_global_data]表id
	tGangRevels_RunReward[1][1]["Pos"] = 0 -- 全服限量data位
	tGangRevels_RunReward[1][1]["MaxData"] = 500 -- 全服限量总数
	tGangRevels_RunReward[1][1]["FullIndex"] = 7 -- 全服限量超出给其他【下标】奖励
	-- tGangRevels_RunReward[1][1]["OtherPos"] = 1 -- 全服单日限量data位
	-- tGangRevels_RunReward[1][1]["OtherMaxData"] = 2 -- 全服单日限量总数
	-- tGangRevels_RunReward[1][1]["OtherFullIndex"] = 1 -- 全服单日限量超出给其他【下标】奖励
	-- 300天石碎片 - 35%
	tGangRevels_RunReward[1][2] = {}
	tGangRevels_RunReward[1][2]["RandomItemChanceType"] = 2
	tGangRevels_RunReward[1][2]["ItemChance"] = 3500
	tGangRevels_RunReward[1][2]["RewardItem"] = {}
	tGangRevels_RunReward[1][2]["RewardItem"][1] = {}
	tGangRevels_RunReward[1][2]["RewardItem"][1]["Id"] = 3320797 -- 【库】System.Byte[][属性:9]【表格】300天石碎片
	tGangRevels_RunReward[1][2]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*70
	tGangRevels_RunReward[1][2]["RewardEffect"] = {}
	tGangRevels_RunReward[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGangRevels_RunReward[1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 玩家cq_statistic掩码
-- 	tGangRevels_RunReward[1][2]["EventType"] = 199 -- 需手动配：[cq_statistic]表event_type
-- 	tGangRevels_RunReward[1][2]["DataType"] = 99 -- 需手动配：[cq_statistic]表data_type
-- 	tGangRevels_RunReward[1][2]["RewardData"] = 1 -- 每天限制的次数
-- 	tGangRevels_RunReward[1][2]["RewardTotalData"] = 1 -- 整个活动总的限制次数
-- 	tGangRevels_RunReward[1][2]["RewardDelay"] = 1 -- 掩码的间隔时间
-- 	tGangRevels_RunReward[1][2]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）
-- 	tGangRevels_RunReward[1][2]["FullIndex"] = 4 -- 超出限量给其他【下标】奖励；注意
	-- 全服cq_dyna_global_data存储表
	tGangRevels_RunReward[1][2]["GlobalId"] = 53350 -- 需手动配：[cq_dyna_global_data]表id
	tGangRevels_RunReward[1][2]["Pos"] = 1 -- 全服限量data位
	tGangRevels_RunReward[1][2]["MaxData"] = 1424 -- 全服限量总数
	tGangRevels_RunReward[1][2]["FullIndex"] = 7 -- 全服限量超出给其他【下标】奖励
-- 	tGangRevels_RunReward[1][2]["OtherPos"] = 1 -- 全服单日限量data位
-- 	tGangRevels_RunReward[1][2]["OtherMaxData"] = 2 -- 全服单日限量总数
-- 	tGangRevels_RunReward[1][2]["OtherFullIndex"] = 1 -- 全服单日限量超出给其他【下标】奖励
	-- 稀有五星坐骑-九天玄鸟碎片（属性由策划制定，属性要最好） - 1.0%
	tGangRevels_RunReward[1][3] = {}
	tGangRevels_RunReward[1][3]["RandomItemChanceType"] = 2
	tGangRevels_RunReward[1][3]["ItemChance"] = 100
	tGangRevels_RunReward[1][3]["RewardItem"] = {}
	tGangRevels_RunReward[1][3]["RewardItem"][1] = {}
	tGangRevels_RunReward[1][3]["RewardItem"][1]["Id"] = 3320800 -- 【库】System.Byte[][属性:9]【表格】稀有五星坐骑-九天玄鸟碎片（属性由策划制定，属性要最好）
	tGangRevels_RunReward[1][3]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*2
	tGangRevels_RunReward[1][3]["RewardEffect"] = {}
	tGangRevels_RunReward[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGangRevels_RunReward[1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 玩家cq_statistic掩码
-- 	tGangRevels_RunReward[1][3]["EventType"] = 199 -- 需手动配：[cq_statistic]表event_type
-- 	tGangRevels_RunReward[1][3]["DataType"] = 99 -- 需手动配：[cq_statistic]表data_type
-- 	tGangRevels_RunReward[1][3]["RewardData"] = 1 -- 每天限制的次数
-- 	tGangRevels_RunReward[1][3]["RewardTotalData"] = 1 -- 整个活动总的限制次数
-- 	tGangRevels_RunReward[1][3]["RewardDelay"] = 1 -- 掩码的间隔时间
-- 	tGangRevels_RunReward[1][3]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）
-- 	tGangRevels_RunReward[1][3]["FullIndex"] = 4 -- 超出限量给其他【下标】奖励；注意
	-- 全服cq_dyna_global_data存储表
	tGangRevels_RunReward[1][3]["GlobalId"] = 53350 -- 需手动配：[cq_dyna_global_data]表id
	tGangRevels_RunReward[1][3]["Pos"] = 2 -- 全服限量data位
	tGangRevels_RunReward[1][3]["MaxData"] = 25 -- 全服限量总数
	tGangRevels_RunReward[1][3]["FullIndex"] = 7 -- 全服限量超出给其他【下标】奖励
-- 	tGangRevels_RunReward[1][3]["OtherPos"] = 1 -- 全服单日限量data位
-- 	tGangRevels_RunReward[1][3]["OtherMaxData"] = 2 -- 全服单日限量总数
-- 	tGangRevels_RunReward[1][3]["OtherFullIndex"] = 1 -- 全服单日限量超出给其他【下标】奖励
	-- 最强配饰碎片 - 1.0%
	tGangRevels_RunReward[1][4] = {}
	tGangRevels_RunReward[1][4]["RandomItemChanceType"] = 2
	tGangRevels_RunReward[1][4]["ItemChance"] = 100
	tGangRevels_RunReward[1][4]["RewardItem"] = {}
	tGangRevels_RunReward[1][4]["RewardItem"][1] = {}
	tGangRevels_RunReward[1][4]["RewardItem"][1]["Id"] = 3320801 -- 【库】System.Byte[][属性:9]【表格】最强配饰碎片
	tGangRevels_RunReward[1][4]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*2
	tGangRevels_RunReward[1][4]["RewardEffect"] = {}
	tGangRevels_RunReward[1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGangRevels_RunReward[1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 玩家cq_statistic掩码
-- 	tGangRevels_RunReward[1][4]["EventType"] = 199 -- 需手动配：[cq_statistic]表event_type
-- 	tGangRevels_RunReward[1][4]["DataType"] = 99 -- 需手动配：[cq_statistic]表data_type
-- 	tGangRevels_RunReward[1][4]["RewardData"] = 1 -- 每天限制的次数
-- 	tGangRevels_RunReward[1][4]["RewardTotalData"] = 1 -- 整个活动总的限制次数
-- 	tGangRevels_RunReward[1][4]["RewardDelay"] = 1 -- 掩码的间隔时间
-- 	tGangRevels_RunReward[1][4]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）
-- 	tGangRevels_RunReward[1][4]["FullIndex"] = 4 -- 超出限量给其他【下标】奖励；注意
	-- 全服cq_dyna_global_data存储表
	tGangRevels_RunReward[1][4]["GlobalId"] = 53350 -- 需手动配：[cq_dyna_global_data]表id
	tGangRevels_RunReward[1][4]["Pos"] = 5 -- 全服限量data位
	tGangRevels_RunReward[1][4]["MaxData"] = 25 -- 全服限量总数
	tGangRevels_RunReward[1][4]["FullIndex"] = 7 -- 全服限量超出给其他【下标】奖励
-- 	tGangRevels_RunReward[1][4]["OtherPos"] = 1 -- 全服单日限量data位
-- 	tGangRevels_RunReward[1][4]["OtherMaxData"] = 2 -- 全服单日限量总数
-- 	tGangRevels_RunReward[1][4]["OtherFullIndex"] = 1 -- 全服单日限量超出给其他【下标】奖励
	-- 稀有五星外套RockingRomance（Fantasy）碎片（属性由策划制定，属性要最好） - 1.0%
	tGangRevels_RunReward[1][5] = {}
	tGangRevels_RunReward[1][5]["RandomItemChanceType"] = 2
	tGangRevels_RunReward[1][5]["ItemChance"] = 100
	tGangRevels_RunReward[1][5]["RewardItem"] = {}
	tGangRevels_RunReward[1][5]["RewardItem"][1] = {}
	tGangRevels_RunReward[1][5]["RewardItem"][1]["Id"] = 3320799 -- 【库】System.Byte[][属性:9]【表格】稀有五星外套RockingRomance（Fantasy）碎片（属性由策划制定，属性要最好）
	tGangRevels_RunReward[1][5]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*2
	tGangRevels_RunReward[1][5]["RewardEffect"] = {}
	tGangRevels_RunReward[1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGangRevels_RunReward[1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 玩家cq_statistic掩码
-- 	tGangRevels_RunReward[1][5]["EventType"] = 199 -- 需手动配：[cq_statistic]表event_type
-- 	tGangRevels_RunReward[1][5]["DataType"] = 99 -- 需手动配：[cq_statistic]表data_type
-- 	tGangRevels_RunReward[1][5]["RewardData"] = 1 -- 每天限制的次数
-- 	tGangRevels_RunReward[1][5]["RewardTotalData"] = 1 -- 整个活动总的限制次数
-- 	tGangRevels_RunReward[1][5]["RewardDelay"] = 1 -- 掩码的间隔时间
-- 	tGangRevels_RunReward[1][5]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）
-- 	tGangRevels_RunReward[1][5]["FullIndex"] = 4 -- 超出限量给其他【下标】奖励；注意
	-- 全服cq_dyna_global_data存储表
	tGangRevels_RunReward[1][5]["GlobalId"] = 53350 -- 需手动配：[cq_dyna_global_data]表id
	tGangRevels_RunReward[1][5]["Pos"] = 3 -- 全服限量data位
	tGangRevels_RunReward[1][5]["MaxData"] = 45 -- 全服限量总数
	tGangRevels_RunReward[1][5]["FullIndex"] = 7 -- 全服限量超出给其他【下标】奖励
-- 	tGangRevels_RunReward[1][5]["OtherPos"] = 1 -- 全服单日限量data位
-- 	tGangRevels_RunReward[1][5]["OtherMaxData"] = 2 -- 全服单日限量总数
-- 	tGangRevels_RunReward[1][5]["OtherFullIndex"] = 1 -- 全服单日限量超出给其他【下标】奖励
	-- 200赠品天石碎片 - 42%
	tGangRevels_RunReward[1][6] = {}
	tGangRevels_RunReward[1][6]["RandomItemChanceType"] = 2
	tGangRevels_RunReward[1][6]["ItemChance"] = 4200
	tGangRevels_RunReward[1][6]["RewardItem"] = {}
	tGangRevels_RunReward[1][6]["RewardItem"][1] = {}
	tGangRevels_RunReward[1][6]["RewardItem"][1]["Id"] = 3320798 -- 【库】System.Byte[][属性:9]【表格】200赠品天石碎片
	tGangRevels_RunReward[1][6]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*84
	tGangRevels_RunReward[1][6]["RewardEffect"] = {}
	tGangRevels_RunReward[1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGangRevels_RunReward[1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 玩家cq_statistic掩码
-- 	tGangRevels_RunReward[1][6]["EventType"] = 199 -- 需手动配：[cq_statistic]表event_type
-- 	tGangRevels_RunReward[1][6]["DataType"] = 99 -- 需手动配：[cq_statistic]表data_type
-- 	tGangRevels_RunReward[1][6]["RewardData"] = 1 -- 每天限制的次数
-- 	tGangRevels_RunReward[1][6]["RewardTotalData"] = 1 -- 整个活动总的限制次数
-- 	tGangRevels_RunReward[1][6]["RewardDelay"] = 1 -- 掩码的间隔时间
-- 	tGangRevels_RunReward[1][6]["RewardTimeType"] = 4 -- 【默认0】0:秒; 1:分钟;  2：小时;  3:天（绝对时间）;  4:天（相对时间）
-- 	tGangRevels_RunReward[1][6]["FullIndex"] = 4 -- 超出限量给其他【下标】奖励；注意
	-- 全服cq_dyna_global_data存储表
	tGangRevels_RunReward[1][6]["GlobalId"] = 53350 -- 需手动配：[cq_dyna_global_data]表id
	tGangRevels_RunReward[1][6]["Pos"] = 4 -- 全服限量data位
	tGangRevels_RunReward[1][6]["MaxData"] = 30000 -- 全服限量总数
	tGangRevels_RunReward[1][6]["FullIndex"] = 7 -- 全服限量超出给其他【下标】奖励
-- 	tGangRevels_RunReward[1][6]["OtherPos"] = 1 -- 全服单日限量data位
-- 	tGangRevels_RunReward[1][6]["OtherMaxData"] = 2 -- 全服单日限量总数
-- 	tGangRevels_RunReward[1][6]["OtherFullIndex"] = 1 -- 全服单日限量超出给其他【下标】奖励

	-- 1000气力值 - 0.00%
	tGangRevels_RunReward[1][7] = {}
	tGangRevels_RunReward[1][7]["RandomItemChanceType"] = 2
	tGangRevels_RunReward[1][7]["ItemChance"] = 0
	tGangRevels_RunReward[1][7]["RewardStrengthValue"] = {}
	tGangRevels_RunReward[1][7]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tGangRevels_RunReward[1][7]["RewardEffect"] = {}
	tGangRevels_RunReward[1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGangRevels_RunReward[1][7]["RewardEffect"]["Effect"] = "angelwing"


	
--掩码表配置
local tGangRevels_Stc = {}
	tGangRevels_Stc["EventType"] = {}
	tGangRevels_Stc["DataType"] = {}
	tGangRevels_Stc["Data"] = {}
	
	--开启宝箱次数（庆典礼堂）
	tGangRevels_Stc["EventType"][1] = 193
	tGangRevels_Stc["DataType"][1] = 23
	tGangRevels_Stc["Data"][1] = 3
	
	--开启宝箱次数（古神战场）
	tGangRevels_Stc["EventType"][2] = 193
	tGangRevels_Stc["DataType"][2] = 24
	tGangRevels_Stc["Data"][2] = 3
	
	tGangRevels_Stc["EventType"][3] = 193
	tGangRevels_Stc["DataType"][3] = 40

	
	
	
local tBigGangFight_Effect = {}
	tBigGangFight_Effect[1] = {}
	tBigGangFight_Effect[1][1] = "self"
	tBigGangFight_Effect[1][2] = "BodyDisapear"
	
--log表
local tGangRevels_Log = {}	

	tGangRevels_Log["DelItem"] = "0,0,%d,1,12001358,2,0,0"	
	tGangRevels_Log["DelAllItem"] = "0,0,%d,%d,12001358,2,0,0"	


---------------------------------逻辑部分--------------------------------------------- 
--帮众奖励
--帮战npc 820 
function GangRevels_GetRewards(nFlag)

	-- local nNpcId = 820
	local nUserId = Get_UserId()
	--活动时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		return
	end
	
	--判断时间
	if not Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		return
	end

	--是否是领奖时间 周一到周四
	if not Sys_ChkWeedTime(tGangRevels_Data["GetRewardDate"]) then

		-- 提示玩家不是领奖时间
		User_TalkChannel2005(tGangRevels_Text["Sys"]["NoGetTime"])
		return
	end

	local nEvent = tGangRevels_Stc["EventType"][3]
	local nData = tGangRevels_Stc["DataType"][3]
	
	if Task_StcInterval(nEvent,nData,1,5,nUserId) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	end

	local nTime	= Get_UserStatisticValue(nEvent,nData)
	
	if nTime > 0 then
		-- 提示玩家每周领取一次这周已经领取过了 
		User_TalkChannel2005(tGangRevels_Text["Sys"]["HaveGot"])
		return
	end


	local nUserGuildId = Get_UserGuildId(nUserId)
	
	--非帮派玩家
	if nUserGuildId == 0 or nUserGuildId == nil then 

		User_TalkChannel2005(tGangRevels_Text["Sys"]["NoGroup"])
		return
	end 
	
	--背包空间
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tGangRevels_Reward[nFlag],nUserId)) then
	
		User_TalkChannel2005(tGangRevels_Text["Sys"]["BagFull"])
		return
	end

	--置掩码
	Task_AddStatistic(nEvent,nData,1,1)
	Task_SetStcTimestamp(nEvent,nData,0)
	
	RewardTemplate_UseItemAndMsg(tGangRevels_Reward[nFlag])
	
	
	
end






--通用时间判断
function GangRevels_JudgeActivityTime(nFlag)
	--判断活动期间
	if not Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		return false
	end
	--判断活动是否开启
	if not Sys_ChkWeedTime(tGangRevels_Data["OpenTime"][nFlag]) then
		return false
	end
	return true
end

function GangRevels_OpenBox(nFlag)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(24114, "1-1")
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(24114, "1-4")
		return 
	end
	if not Sys_ChkWeedTime(tGangRevels_Data["OpenTime"][nFlag]) then
		LinkNpcGossipFunc_New(24114, "1-3")
		return 
	end
	
	if nFlag == 1 then
		LinkNpcGossipFunc_New(24114, "1-2")
	else
		LinkNpcGossipFunc_New(241141, "1-2")
	end

end 

function GangRevels_OpenBoxSure(nFlag)
	if not GangRevels_JudgeActivityTime(nFlag) then
		return
	end 
	local nItemId = tGangRevels_Data["Item"][nFlag]
	
	--判断物品
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tGangRevels_Text["MyBox"]["NoItem"][nFlag])
		return	
	end	
	
	local nUserId = Get_UserId()
	local nEvent = tGangRevels_Stc["EventType"][nFlag]
	local nType = tGangRevels_Stc["DataType"][nFlag]
	
	GangRevels_StcInterval(nFlag)
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData > 2 then 
		-- if Item_DelItem(nItemId) then
			-- local sDelItemLog = string.format(tGangRevels_Log["DelItem"],nItemId)
			-- Sys_SaveActionFestivalLog(sDelItemLog)
			Sys_MsgBox(tGangRevels_Text["MyBox"]["TimesOut"],"GangRevels_LeaveActMap",nil,nUserId)
		-- end
		return
	end 
	
	--判断背包
	local nSpace = RewardTemplate_GetRandomSpace(tGangRevels_RunReward,1,nUserId)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tGangRevels_Text["Sys"]["BagFull"])
		return
	end
	
	if  Npc_DelDynaByID() then 
		if nData == 2 then 
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tGangRevels_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				Sys_MsgBox(tGangRevels_Text["MyBox"]["ThreeTimes"],"GangRevels_LeaveActMap",nil,nUserId)
			end
		end
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		local tReward = RewardTemplate_NewRandom(tGangRevels_RunReward,1,nUserId)	
				
			-- if tReward[1]["tAward"][1]["RewardEMoney"] ~= nil then
		
				-- local nEMoneyMono = tReward[1]["tAward"][1]["RewardEMoney"]["Value"]
				-- local sEmoneyLog = string.format(tBigGangFight_Data["EmoneyLog"],nEMoneyMono,nEMoneyMono)
				-- Sys_SaveEmoneyBuy(sEmoneyLog)  --emoneylog
			-- end
	end
end 

--判断是否隔7天
function GangRevels_StcInterval(nFlag)

	local nOpenEvent = tGangRevels_Stc["EventType"][nFlag]
	local nOpenData = tGangRevels_Stc["DataType"][nFlag]

	--领奖掩码
	if Task_StcInterval(nOpenEvent,nOpenData,7,4) then
		--重置
		Task_SetStatistic(nOpenEvent,nOpenData,0,1)
		Task_SetStcTimestamp(nOpenEvent,nOpenData,0)
	end

end

--传送
function GangRevels_LeaveActMap()
	--传送到指定区域
	local nMapId = tGangRevels_Data["City"]["MapId"]
	local nPosX = tGangRevels_Data["City"]["PosX"]
	local nPosY = tGangRevels_Data["City"]["PosY"]
	User_ChgMap(nMapId,nPosX,nPosY,0)
	
end


--陷阱触发离开
function GangRevels_TrapLeave(nTrapType)
	Sys_MsgBox(tGangRevels_Text["MyBox"]["Leave"],"GangRevels_LeaveActMap")
end

----------------------------------时间自检逻辑-----------------------------------
--时间自检刷动态宝箱（古神战场）
function GangRevels_RefreshBox()
	--判断是否在活动期内
	if not Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		return
	end
	
	for i = tGangRevels_Data["ActMap"][1]["PosXMin"], tGangRevels_Data["ActMap"][1]["PosXMax"], tGangRevels_Data["ActMap"][1]["DistanceX"] do
		for j = tGangRevels_Data["ActMap"][1]["PosYMin"], tGangRevels_Data["ActMap"][1]["PosYMax"], tGangRevels_Data["ActMap"][1]["DistanceY"] do
			local nMapId = tGangRevels_Data["ActMap"][2]["MapId"]
			local nPosX = i
			local nPosY = j
			local sName = tGangRevels_Text["BoxName"]  
			local nNpcFace = tGangRevels_Data["DyBoxNpc"]["NpcFace"]
			local nTask0 = tGangRevels_Data["DyBoxNpc"]["Task"]
			
			Npc_CreateDynaNpc(sName,2,1,nNpcFace,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
		end
	end

end 

--时间自检刷动态宝箱（庆典）
function GangRevels_RefreshBox1()
	--判断是否在活动期内
	if not Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		return
	end
	
	for i = tGangRevels_Data["ActMap"][1]["PosXMin"], tGangRevels_Data["ActMap"][1]["PosXMax"], tGangRevels_Data["ActMap"][1]["DistanceX"] do
		for j = tGangRevels_Data["ActMap"][1]["PosYMin"], tGangRevels_Data["ActMap"][1]["PosYMax"], tGangRevels_Data["ActMap"][1]["DistanceY"] do
			local nMapId = tGangRevels_Data["ActMap"][1]["MapId"]
			local nPosX = i
			local nPosY = j
			local sName = tGangRevels_Text["BoxName"]  
			local nNpcFace = tGangRevels_Data["DyBoxNpc"]["NpcFace"]
			local nTask0 = tGangRevels_Data["DyBoxNpc"]["Task1"]
			
			Npc_CreateDynaNpc(sName,2,1,nNpcFace,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
		end
	end

end 


-- 清场(古神)
function GangRevels_CleanBox()
	--判断是否在活动期内
	if not Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		return
	end
	--判断活动是否开启 开启时间不清理
	if Sys_ChkWeedTime(tGangRevels_Data["OpenTime"][1]) then
		return
	end
	--把玩家传送出去
	local nMapId = tGangRevels_Data["ActMap"][2]["MapId"]
	Map_UserExeFunc(nMapId,-1,"GangRevels_AllPlayerChgMap")
	GangRevels_DelBox(nMapId)

end 

-- 清场(庆典)
function GangRevels_CleanBox1()
	--判断是否在活动期内
	if not Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		return
	end
	--判断活动是否开启 开启时间不清理
	if Sys_ChkWeedTime(tGangRevels_Data["OpenTime"][2]) then
		return
	end
	--把玩家传送出去
	local nMapId = tGangRevels_Data["ActMap"][1]["MapId"]
	Map_UserExeFunc(nMapId,-1,"GangRevels_AllPlayerChgMap")
	GangRevels_DelBox(nMapId)

end 

function GangRevels_AllPlayerChgMap(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	
	--传送回双龙城
	local nMapId = tGangRevels_Data["City"]["MapId"]
	local nPosX = tGangRevels_Data["City"]["PosX"]
	local nPosY = tGangRevels_Data["City"]["PosY"]
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,0,nNowUserId)
	User_TalkChannel2005(tGangRevels_Text["Sys"]["MoveAll"],nNowUserId)
end

function  GangRevels_DelBox(nMapId)

	if not Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		return
	end
	
	if Get_NpcCountByName(tGangRevels_Text["BoxName"]) then	
		Npc_DelDynaNpc(nMapId,"name",tGangRevels_Text["BoxName"])
	end 

end 


-------------------------- npc部分------------------------

-- 24114,'华美宝箱
tNpcFace[3954] = 2122

tNpcGossip[24114] = tNpcGossip[24114] or DefaultNpc:new{}
tNpcGossip[24114]["OptionHidden"] = 1
tNpcGossip[24114]["DialogueText"] = tGangRevels_Text[24114]

--活动时间前
tNpcGossip[24114]["Text1-1"] = {111,112}
tNpcGossip[24114]["Text111"] = tGangRevels_Text[24114]["Text111"]
tNpcGossip[24114]["Text112"] = tGangRevels_Text[24114]["Text112"]

tNpcGossip[24114]["tOption1-1"] = {111}
tNpcGossip[24114]["ChkFunc1-1"] = function()

	return CommonFunc_GetBeforeActivityTime(tActivityTime["GangRevels"]["ActivityTime"])
end
tNpcGossip[24114]["Option111"] = tGangRevels_Text[24114]["Option111"] 

--活动时间中 22:00-22:30
tNpcGossip[24114]["Text1-2"] = {121,122}
tNpcGossip[24114]["Text121"] = tGangRevels_Text[24114]["Text121"]
tNpcGossip[24114]["Text122"] = tGangRevels_Text[24114]["Text122"]

tNpcGossip[24114]["tOption1-2"] = {121,122}
tNpcGossip[24114]["ChkFunc1-2"] = function()
	
	if Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		if  Sys_ChkWeedTime(tGangRevels_Data["OpenTime"][1]) then
			return true
		end
	end

	return false
end
tNpcGossip[24114]["Option121"] = tGangRevels_Text[24114]["Option121"] 
tNpcGossip[24114]["Option122"] = tGangRevels_Text[24114]["Option122"] 

tNpcGossip[24114]["OptionFunc121"] = "GangRevels_OpenBoxSure</N>1"

--活动时间中  22:30分后
tNpcGossip[24114]["Text1-3"] = {131}
tNpcGossip[24114]["Text131"] = tGangRevels_Text[24114]["Text131"]
-- tNpcGossip[24114]["Text132"] = tGangRevels_Text[24114]["Text132"]

tNpcGossip[24114]["tOption1-3"] = {131}
tNpcGossip[24114]["ChkFunc1-3"] = function()

	
	if Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		if not Sys_ChkWeedTime(tGangRevels_Data["OpenTime"][1]) then
			
			return true
		end
	end

	return false
end
tNpcGossip[24114]["Option131"] = tGangRevels_Text[24114]["Option131"] 

--活动时间后 
tNpcGossip[24114]["Text1-4"] = {141}
tNpcGossip[24114]["Text141"] = tGangRevels_Text[24114]["Text141"]


tNpcGossip[24114]["tOption1-4"] = {141}
tNpcGossip[24114]["ChkFunc1-4"] = function()

	return not Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"])
end
tNpcGossip[24114]["Option141"] = tGangRevels_Text[24114]["Option141"] 

--古神战场
tNpcGossip[241141] = tNpcGossip[241141] or DefaultNpc:new{}
tNpcGossip[241141]["OptionHidden"] = 1
tNpcGossip[241141]["DialogueText"] = tGangRevels_Text[24114]

--活动时间前
tNpcGossip[241141]["Text1-1"] = {111,112}
tNpcGossip[241141]["Text111"] = tGangRevels_Text[24114]["Text111"]
tNpcGossip[241141]["Text112"] = tGangRevels_Text[24114]["Text112"]

tNpcGossip[241141]["tOption1-1"] = {111}
tNpcGossip[241141]["ChkFunc1-1"] = function()

	return CommonFunc_GetBeforeActivityTime(tActivityTime["GangRevels"]["ActivityTime"])
end
tNpcGossip[241141]["Option111"] = tGangRevels_Text[24114]["Option111"] 

--活动时间中 22:00-22:30
tNpcGossip[241141]["Text1-2"] = {121,122}
tNpcGossip[241141]["Text121"] = tGangRevels_Text[24114]["Text121"]
tNpcGossip[241141]["Text122"] = tGangRevels_Text[24114]["Text122"]

tNpcGossip[241141]["tOption1-2"] = {121,122}
tNpcGossip[241141]["ChkFunc1-2"] = function()
	
	if Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		if  Sys_ChkWeedTime(tGangRevels_Data["OpenTime"][2]) then
			return true
		end
	end

	return false
end
tNpcGossip[241141]["Option121"] = tGangRevels_Text[24114]["Option121"] 
tNpcGossip[241141]["Option122"] = tGangRevels_Text[24114]["Option122"] 

tNpcGossip[241141]["OptionFunc121"] = "GangRevels_OpenBoxSure</N>2"

--活动时间中  22:30分后
tNpcGossip[241141]["Text1-3"] = {131}
tNpcGossip[241141]["Text131"] = tGangRevels_Text[24114]["Text131"]
-- tNpcGossip[24114]["Text132"] = tGangRevels_Text[24114]["Text132"]

tNpcGossip[241141]["tOption1-3"] = {131}
tNpcGossip[241141]["ChkFunc1-3"] = function()

	if Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"]) then
		if not Sys_ChkWeedTime(tGangRevels_Data["OpenTime"][2]) then
			return true
		end
	end

	return false
end
tNpcGossip[241141]["Option131"] = tGangRevels_Text[24114]["Option131"] 

--活动时间后 
tNpcGossip[241141]["Text1-4"] = {141}
tNpcGossip[241141]["Text141"] = tGangRevels_Text[24114]["Text141"]


tNpcGossip[241141]["tOption1-4"] = {141}
tNpcGossip[241141]["ChkFunc1-4"] = function()

	return not Sys_ChkFullTime(tActivityTime["GangRevels"]["ActivityTime"])
end
tNpcGossip[241141]["Option141"] = tGangRevels_Text[24114]["Option141"] 


-----------------------------------时间自检-----------------------------------
--时间自检刷动态宝箱
tOntimerMin_wHM[52200] = tOntimerMin_wHM[52200] or {}
table.insert(tOntimerMin_wHM[52200],GangRevels_RefreshBox)

--清场
tOntimerMin_wHM[52235] = tOntimerMin_wHM[52235] or {}
table.insert(tOntimerMin_wHM[52235],GangRevels_CleanBox)

--时间自检刷动态宝箱
tOntimerMin_wHM[62200] = tOntimerMin_wHM[62200] or {}
table.insert(tOntimerMin_wHM[62200],GangRevels_RefreshBox1)

--清场
tOntimerMin_wHM[62235] = tOntimerMin_wHM[62235] or {}
table.insert(tOntimerMin_wHM[62235],GangRevels_CleanBox1)

---------------------------------陷阱部分---------------------------------------------

tTrap[2316] = tTrap[2316] or {}
tTrap[2316]["Function"] = function(nTrapId,nTrapType)
	GangRevels_TrapLeave(nTrapType)
end