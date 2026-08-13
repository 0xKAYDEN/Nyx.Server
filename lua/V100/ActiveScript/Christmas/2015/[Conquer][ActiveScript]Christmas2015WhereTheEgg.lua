-------------------------------------------------------------------------------------------
--Name:		150902[简体征服][活动脚本]双蛋节之鸡蛋去哪儿
--Purpose:		偷蛋
--Creator:		林辉山
--Created:		2015/09/02
-------------------------------------------------------------------------------------------
--掩码说明：
----stc(138,02)			玩家完成任务次数

----stc(138,03)			玩家领取累积完成任务奖励情况
------			包含1表示领取了 累积3次完成任务奖励
------			包含2表示领取了 累积6次完成任务奖励
------			包含4表示领取了 累积9次完成任务奖励
------			包含8表示领取了 累积12次完成任务奖励
------			15表示所有任务奖励已经领取

----stc(138,04)			玩家任务进度
------			=0表示未接取任务
------			=1表示接取任务，还未首次采集鸡蛋
------			=2表示已经首次采集鸡蛋，未成功得到任意鸡蛋
------			=3表示成功得到任意鸡蛋，未提交鸡蛋
------			=4表示提交鸡蛋，领取奖励，任务完成

----stc(138,5-9)			叫天鸡的最后一次眩晕时间
-------------------------------------------------------------------------------------------

--前缀
--Christmas_Toudan_

---------------------------------------常量表配置---------------------------------------
local tChristmas_Toudan_Cont = {}
	-- 活动时间
	tChristmas_Toudan_Cont["BeforeActivityTime"] = "2017-01-01 00:00 2017-12-20 23:59"
	tChristmas_Toudan_Cont["ActivityTime"] = "2017-12-21 00:00 2018-01-03 23:59"
	
	
	--需求等级，转世
	tChristmas_Toudan_Cont["MinLevel"] = 80
	tChristmas_Toudan_Cont["MinMeto"] = 0
	
	-- 当天尚未领取【平底锅】
	tChristmas_Toudan_Cont["UnAccept"] = 0
	-- 当天已经领取【平底锅】
	tChristmas_Toudan_Cont["Accept"] = 1
	-- 当天已经首次采集鸡蛋
	tChristmas_Toudan_Cont["FirstCollect"] = 2
	-- 当天已经采集到鸡蛋
	tChristmas_Toudan_Cont["GetEgg"] = 3
	--完成掩码
	tChristmas_Toudan_Cont["Complete"] = 4
	
	--累计3次完成任务奖励
	tChristmas_Toudan_Cont["Mul_three"] = 3
	
	--累计6次完成任务奖励
	tChristmas_Toudan_Cont["Mul_six"] = 6
	
	--累计9次完成任务奖励
	tChristmas_Toudan_Cont["Mul_nine"] = 9
	
	--累计12次完成任务奖励
	tChristmas_Toudan_Cont["Mul_twelve"] = 12
	
	--所有奖励已经领取
	tChristmas_Toudan_Cont["Mul_All"] = 15
	
	--获取平底锅所需背包空间
	tChristmas_Toudan_Cont["GetPingdiSpace"] = 1
	tChristmas_Toudan_Cont["GetMul"] ={}
	--获取3次累计奖励所需背包空间
	tChristmas_Toudan_Cont["GetMul"][3] = 2
	--获取6次累计奖励所需背包空间
	tChristmas_Toudan_Cont["GetMul"][6] = 2
	--获取9次累计奖励所需背包空间
	tChristmas_Toudan_Cont["GetMul"][9] = 3
	--获取12次累计奖励所需背包空间
	tChristmas_Toudan_Cont["GetMul"][12] = 4
	--打开为赠品属性,具有时效，1%神佑
	tChristmas_Toudan_Cont["RewardAttr"] = "0 0 3 43200 0 0 0 1"

	
	
--接对白配置
local tChristmas_Toudan_ToTex = {}
	tChristmas_Toudan_ToTex[3] = "3-3"
	tChristmas_Toudan_ToTex[6] = "3-4"
	tChristmas_Toudan_ToTex[9] = "3-5"
	tChristmas_Toudan_ToTex[12] = "3-6"

---------掩码配置
local tChristmas_Toudan_Stc = {}

	tChristmas_Toudan_Stc["EventType"] = 138
	tChristmas_Toudan_Stc["DataType"] = {}
	

	tChristmas_Toudan_Stc["DataType"][1] = 2
	tChristmas_Toudan_Stc["DataType"][2] = 3
	tChristmas_Toudan_Stc["DataType"][3] = 4
	
	tChristmas_Toudan_Stc["DataType"][18815] = 5
	tChristmas_Toudan_Stc["DataType"][18816] = 6
	tChristmas_Toudan_Stc["DataType"][18817] = 7
	tChristmas_Toudan_Stc["DataType"][18818] = 8
	tChristmas_Toudan_Stc["DataType"][18819] = 9
	
	--节日礼包达到上限掩码
	tChristmas_Toudan_Stc[1] = {}
	tChristmas_Toudan_Stc[1]["EventType"] = 150
	tChristmas_Toudan_Stc[1]["DataType"] = 35
	
---------物品
local tChristmas_Toudan_Item = {}
	--平底锅
	tChristmas_Toudan_Item["Pan"] = 3007445
	--普通鸡蛋
	tChristmas_Toudan_Item["NormalEgg"] = 3007446
	--双黄蛋
	tChristmas_Toudan_Item["DoubleYolkEgg"] = 3007447
	--神秘外套大礼包
	tChristmas_Toudan_Item["ZuoqiPack"] = 3007448
	--节日欢庆礼包
	tChristmas_Toudan_Item["CelePack"] = 3003625
	
	--大块祈愿石
	tChristmas_Toudan_Item["PrayingStone"] = 1200001
	--造化天书
	tChristmas_Toudan_Item["ModestyBook"] = 723342
	--强炼丹
	tChristmas_Toudan_Item["FavoredTrainingPill"] = 3003124
	--回气丹
	tChristmas_Toudan_Item["VitalPill"] = 729242
	--赤练石+3
	tChristmas_Toudan_Item["Stone"] = 730003
	--流星
	tChristmas_Toudan_Item["LiuXing"] = 1088001
	--随机普通宝石袋 得到非赠随机普通宝石
	tChristmas_Toudan_Item["BaoShiPack"] = 3003875
	
	
----人物状态表
local tChristmas_Toudan_Status = {}
	tChristmas_Toudan_Status["Status_Stun"] = 55
	tChristmas_Toudan_Status["Status_Chaos"] = 51
	tChristmas_Toudan_Status["Power"] = 200
	tChristmas_Toudan_Status["Secs"] = 3
	tChristmas_Toudan_Status["Times"] = 1
	tChristmas_Toudan_Status["RemainTime"] = 3
	tChristmas_Toudan_Status["EndTime"] = 1
	tChristmas_Toudan_Status["Recordable"] = 1
	
	
-----NPC 坐标 mapid cellx celly
local tChristmas_Toudan_Pos = {}
	--叫天鸡1
	tChristmas_Toudan_Pos[18815] = {1002,322,378}
	--叫天鸡2
	tChristmas_Toudan_Pos[18816] = {1002,280,416}
	--叫天鸡3
	tChristmas_Toudan_Pos[18817] = {1002,247,386}
	--叫天鸡4
	tChristmas_Toudan_Pos[18818] = {1002,251,438}
	--叫天鸡5
	tChristmas_Toudan_Pos[18819] = {1002,204,383}
	--御厨姬旦丙
	tChristmas_Toudan_Pos[18814] = {1002,355,467}

local tChristmas_Toudan_Log = {}

	--3471 张磊配置
	tChristmas_Toudan_Log["FestivalId"] = 3471
	
	tChristmas_Toudan_Log["LogId"] = 12000211

	--打开礼包
	tChristmas_Toudan_Log["OpenPack"] = "0,0,3007448,1,12000211,2,%d,1"
	--获得平底锅
	tChristmas_Toudan_Log["GetPan"] = "0,0,0,0,12000211,2,3007445,1"
	--获得普通鸡蛋
	tChristmas_Toudan_Log["GetNormalEgg"] = "0,0,0,0,12000211,2,3007446,1"
	--删除平底锅
	tChristmas_Toudan_Log["DelPan"] = "0,0,3007445,1,12000211,2,0,0"
	--删除普通鸡蛋
	tChristmas_Toudan_Log["DelEgg"] = "0,0,%d,1,12000211,2,0,0"
	--删除任务物品
	tChristmas_Toudan_Log["DelItem"] = "0,0,%d,1,12000211,2,0,0"
	--采集得到物品
	tChristmas_Toudan_Log["Caiji"] = "0,0,0,0,12000211,2,%d,1"
	--领取多次完成奖励
	tChristmas_Toudan_Log["MulRe"] = "0,0,0,0,12000211,2,%d[%d],%d[%d]"
	
	
	
----领取累计奖励配置


local tChristmas_Toudan_MulRe = {}

	tChristmas_Toudan_MulRe[3] ={}
	--掩码增加值
	tChristmas_Toudan_MulRe[3]["AddStc"] = 1
	--获得物品1
	tChristmas_Toudan_MulRe[3]["Item1"] = tChristmas_Toudan_Item["PrayingStone"]
	--获得物品2
	tChristmas_Toudan_MulRe[3]["Item2"] = tChristmas_Toudan_Item["ModestyBook"]
	
	tChristmas_Toudan_MulRe[6] ={}
	tChristmas_Toudan_MulRe[6]["AddStc"] = 2
	tChristmas_Toudan_MulRe[6]["Item1"] = tChristmas_Toudan_Item["FavoredTrainingPill"]
	tChristmas_Toudan_MulRe[6]["Item1_Num"] = 5
	tChristmas_Toudan_MulRe[6]["Item2"] = tChristmas_Toudan_Item["VitalPill"]
	
	tChristmas_Toudan_MulRe[9] ={}
	tChristmas_Toudan_MulRe[9]["AddStc"] = 4
	tChristmas_Toudan_MulRe[9]["Item1"] = tChristmas_Toudan_Item["Stone"]
	tChristmas_Toudan_MulRe[9]["Item2"] = tChristmas_Toudan_Item["VitalPill"]
	tChristmas_Toudan_MulRe[9]["Item2_Num"] = 2
	
	tChristmas_Toudan_MulRe[12] ={}
	tChristmas_Toudan_MulRe[12]["AddStc"] = 8
	tChristmas_Toudan_MulRe[12]["Item1"] = tChristmas_Toudan_Item["ZuoqiPack"]
	tChristmas_Toudan_MulRe[12]["Item2"] = tChristmas_Toudan_Item["VitalPill"]
	tChristmas_Toudan_MulRe[12]["Item2_Num"] = 3
	
---------------------------------------几率配置--------------------------------------------
local tChristmas_Toudan_Probabil = {}
	-- 采集失败几率配置

	tChristmas_Toudan_Probabil[7587] = {}
	tChristmas_Toudan_Probabil[7587][1] = {}
	tChristmas_Toudan_Probabil[7587][1]["ItemChanceSum"] = 10000
	-- 19% 失败事件1
	tChristmas_Toudan_Probabil[7587][1][1] = {}
	tChristmas_Toudan_Probabil[7587][1][1]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[7587][1][1]["ItemChance"] = 1900
	tChristmas_Toudan_Probabil[7587][1][1]["Item_1"] = 1
	-- 19% 失败事件2
	tChristmas_Toudan_Probabil[7587][1][2] = {}
	tChristmas_Toudan_Probabil[7587][1][2]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[7587][1][2]["ItemChance"] = 1900
	tChristmas_Toudan_Probabil[7587][1][2]["Item_1"] = 2
	-- 19% 失败事件3
	tChristmas_Toudan_Probabil[7587][1][3] = {}
	tChristmas_Toudan_Probabil[7587][1][3]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[7587][1][3]["ItemChance"] = 1900
	tChristmas_Toudan_Probabil[7587][1][3]["Item_1"] = 3
	-- 19% 失败事件4
	tChristmas_Toudan_Probabil[7587][1][4] = {}
	tChristmas_Toudan_Probabil[7587][1][4]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[7587][1][4]["ItemChance"] = 1900
	tChristmas_Toudan_Probabil[7587][1][4]["Item_1"] = 4
	-- 19% 失败事件5
	tChristmas_Toudan_Probabil[7587][1][5] = {}
	tChristmas_Toudan_Probabil[7587][1][5]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[7587][1][5]["ItemChance"] = 1900
	tChristmas_Toudan_Probabil[7587][1][5]["Item_1"] = 5
	-- 5% 失败事件6
	tChristmas_Toudan_Probabil[7587][1][6] = {}
	tChristmas_Toudan_Probabil[7587][1][6]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[7587][1][6]["ItemChance"] = 500
	tChristmas_Toudan_Probabil[7587][1][6]["Item_1"] = 6

	
		-- 再次采集配置
	tChristmas_Toudan_Probabil[7588] = {}
	tChristmas_Toudan_Probabil[7588][1] = {}
	tChristmas_Toudan_Probabil[7588][1]["ItemChanceSum"] = 10000
	-- 5% 采集到流星
	tChristmas_Toudan_Probabil[7588][1][1] = {}
	tChristmas_Toudan_Probabil[7588][1][1]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[7588][1][1]["ItemChance"] = 500
	tChristmas_Toudan_Probabil[7588][1][1]["Item_1"] = 1088001
	-- 5% 采集到随机普通宝石袋
	tChristmas_Toudan_Probabil[7588][1][2] = {}
	tChristmas_Toudan_Probabil[7588][1][2]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[7588][1][2]["ItemChance"] = 500
	tChristmas_Toudan_Probabil[7588][1][2]["Item_1"] = 3003875
	-- 10% 双黄蛋
	tChristmas_Toudan_Probabil[7588][1][3] = {}
	tChristmas_Toudan_Probabil[7588][1][3]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[7588][1][3]["ItemChance"] = 1000
	tChristmas_Toudan_Probabil[7588][1][3]["Item_1"] = 3007447
	tChristmas_Toudan_Probabil[7588][1][3]["BeEgg"] = 1
	-- 15% 失败事件
	tChristmas_Toudan_Probabil[7588][1][4] = {}
	tChristmas_Toudan_Probabil[7588][1][4]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[7588][1][4]["ItemChance"] = 1500
	tChristmas_Toudan_Probabil[7588][1][4]["Item_1"] = 0
	-- 65% 普通鸡蛋
	tChristmas_Toudan_Probabil[7588][1][5] = {}
	tChristmas_Toudan_Probabil[7588][1][5]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[7588][1][5]["ItemChance"] = 6500
	tChristmas_Toudan_Probabil[7588][1][5]["Item_1"] = 3007446
	tChristmas_Toudan_Probabil[7588][1][5]["BeEgg"] = 1
	
	
	
	-- 神秘外套大礼包 打开配置 Statute为时效

	tChristmas_Toudan_Probabil[3007448] = {}
	tChristmas_Toudan_Probabil[3007448][1] = {}
	tChristmas_Toudan_Probabil[3007448][1]["ItemChanceSum"] = 10000

	tChristmas_Toudan_Probabil[3007448][1][1] = {}
	tChristmas_Toudan_Probabil[3007448][1][1]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[3007448][1][1]["ItemChance"] = 1000
	tChristmas_Toudan_Probabil[3007448][1][1]["Item_1"] = 184315

	tChristmas_Toudan_Probabil[3007448][1][2] = {}
	tChristmas_Toudan_Probabil[3007448][1][2]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[3007448][1][2]["ItemChance"] = 1000
	tChristmas_Toudan_Probabil[3007448][1][2]["Item_1"] = 184345

	tChristmas_Toudan_Probabil[3007448][1][3] = {}
	tChristmas_Toudan_Probabil[3007448][1][3]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[3007448][1][3]["ItemChance"] = 1000
	tChristmas_Toudan_Probabil[3007448][1][3]["Item_1"] = 192310

	tChristmas_Toudan_Probabil[3007448][1][4] = {}
	tChristmas_Toudan_Probabil[3007448][1][4]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[3007448][1][4]["ItemChance"] = 1000
	tChristmas_Toudan_Probabil[3007448][1][4]["Item_1"] = 192575

	tChristmas_Toudan_Probabil[3007448][1][5] = {}
	tChristmas_Toudan_Probabil[3007448][1][5]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[3007448][1][5]["ItemChance"] = 1000
	tChristmas_Toudan_Probabil[3007448][1][5]["Item_1"] = 193065

	tChristmas_Toudan_Probabil[3007448][1][6] = {}
	tChristmas_Toudan_Probabil[3007448][1][6]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[3007448][1][6]["ItemChance"] = 1000
	tChristmas_Toudan_Probabil[3007448][1][6]["Item_1"] = 193095

	tChristmas_Toudan_Probabil[3007448][1][7] = {}
	tChristmas_Toudan_Probabil[3007448][1][7]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[3007448][1][7]["ItemChance"] = 1000
	tChristmas_Toudan_Probabil[3007448][1][7]["Item_1"] = 192525

	tChristmas_Toudan_Probabil[3007448][1][8] = {}
	tChristmas_Toudan_Probabil[3007448][1][8]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[3007448][1][8]["ItemChance"] = 1000
	tChristmas_Toudan_Probabil[3007448][1][8]["Item_1"] = 184385

	tChristmas_Toudan_Probabil[3007448][1][9] = {}
	tChristmas_Toudan_Probabil[3007448][1][9]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[3007448][1][9]["ItemChance"] = 1000
	tChristmas_Toudan_Probabil[3007448][1][9]["Item_1"] = 183385

	tChristmas_Toudan_Probabil[3007448][1][10] = {}
	tChristmas_Toudan_Probabil[3007448][1][10]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[3007448][1][10]["ItemChance"] = 1000
	tChristmas_Toudan_Probabil[3007448][1][10]["Item_1"] = 184355


	
	
	
	
	-- 随机选择一个npc
	tChristmas_Toudan_Probabil[98564] = {}
	tChristmas_Toudan_Probabil[98564][1] = {}
	tChristmas_Toudan_Probabil[98564][1]["ItemChanceSum"] = 1000
	
	tChristmas_Toudan_Probabil[98564][1][1] = {}
	tChristmas_Toudan_Probabil[98564][1][1]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[98564][1][1]["ItemChance"] = 200
	tChristmas_Toudan_Probabil[98564][1][1]["NpcId"] = 18815
	
	tChristmas_Toudan_Probabil[98564][1][2] = {}
	tChristmas_Toudan_Probabil[98564][1][2]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[98564][1][2]["ItemChance"] = 200
	tChristmas_Toudan_Probabil[98564][1][2]["NpcId"] = 18816
	
	tChristmas_Toudan_Probabil[98564][1][3] = {}
	tChristmas_Toudan_Probabil[98564][1][3]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[98564][1][3]["ItemChance"] = 200
	tChristmas_Toudan_Probabil[98564][1][3]["NpcId"] = 18817
	
	tChristmas_Toudan_Probabil[98564][1][4] = {}
	tChristmas_Toudan_Probabil[98564][1][4]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[98564][1][4]["ItemChance"] = 200
	tChristmas_Toudan_Probabil[98564][1][4]["NpcId"] = 18818
	
	tChristmas_Toudan_Probabil[98564][1][5] = {}
	tChristmas_Toudan_Probabil[98564][1][5]["RandomItemChanceType"] = 2
	tChristmas_Toudan_Probabil[98564][1][5]["ItemChance"] = 200
	tChristmas_Toudan_Probabil[98564][1][5]["NpcId"] = 18819
	
---------------------------------------逻辑部分-------------------------------------------

function Christmas_Toudan_StcChkTaskComp()
	local nEvent = tChristmas_Toudan_Stc["EventType"]
	local nType = tChristmas_Toudan_Stc["DataType"][3]
	local nStcData = Get_UserStatisticValue(nEvent,nType)
	--如果时间超过1天且任务已经完成则重置任务
	if Task_StcInterval(nEvent,nType,1,4) then
		if nStcData == tChristmas_Toudan_Cont["Complete"] then
			Task_SetStcTimestamp(nEvent,nType,0)
			Task_SetStatistic(nEvent,nType,0,1)
			return false
		end
	end
	return nStcData == tChristmas_Toudan_Cont["Complete"]
end

--检测任务状态
function Christmas_Toudan_StcChkTaskStatus(nData)
	local nEvent = tChristmas_Toudan_Stc["EventType"]
	local nType = tChristmas_Toudan_Stc["DataType"][3]
	return Task_ChkStcValue(nEvent,nType,"==",nData,0)
end

--是否所有累计奖励已经领取
function Christmas_Toudan_IsAllReward()
	local nEvent = tChristmas_Toudan_Stc["EventType"]
	local nType = tChristmas_Toudan_Stc["DataType"][2]
	local nData = tChristmas_Toudan_Cont["Mul_All"]
	return not Task_ChkStcValue(nEvent,nType,"==",nData,0)
end

--检查领取累计奖励情况
--nData为 x次领取奖励类别
function Christmas_Toudan_CheckRewardStatus(nData)
	local nEvent = tChristmas_Toudan_Stc["EventType"]
	local nType = tChristmas_Toudan_Stc["DataType"][2]
	local nStcData = Get_UserStatisticValue(nEvent,nType)
	local nContain = tChristmas_Toudan_MulRe[nData]["AddStc"]
	return Sys_ParseNumbersContain(nContain,nStcData)
end

--领取平底锅
function Christmas_Toudan_GetPan(nNpcId)
	if not Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	--判断是否存在背包空间
	if not User_CheckLeftSpace(tChristmas_Toudan_Cont["GetPingdiSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--判读是否存在鸡蛋
	if Item_ChkItem(tChristmas_Toudan_Item["NormalEgg"] ) or Item_ChkItem(tChristmas_Toudan_Item["DoubleYolkEgg"] ) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	--判断平底锅是否存在
	if Item_ChkItem(tChristmas_Toudan_Item["Pan"] ) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	--检测任务是否已完成
	if Christmas_Toudan_StcChkTaskComp() then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	--检测任务是否还未接取，即是否首次领取平底锅
	if Christmas_Toudan_StcChkTaskStatus(tChristmas_Toudan_Cont["UnAccept"]) then
		local nEvent = tChristmas_Toudan_Stc["EventType"]
		local nType = tChristmas_Toudan_Stc["DataType"][3]
		local nData = tChristmas_Toudan_Cont["Accept"]
		Task_SetStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		Item_AddItem(tChristmas_Toudan_Item["Pan"] )
		
		
		local flat,tItem = Probabil_RandomAward(tChristmas_Toudan_Probabil[98564],1)
		local nProNpcId = tItem[1]["tAward"][1]["NpcId"]
		
		Sys_MsgBox(tChristmas_Toudan_Msg[nNpcId]["FisrtGet"],"Christmas_Toudan_AutoFindWay</N>"..nProNpcId.."</N>"..nProNpcId)
	else
		Item_AddItem(tChristmas_Toudan_Item["Pan"] )
		User_TalkChannel2005(tChristmas_Toudan_Msg[nNpcId]["ReGet"])
	end
	Sys_SaveActionFestivalLog(tChristmas_Toudan_Log["GetPan"])
end

--上交鸡蛋
function Christmas_Toudan_SubmitEgg(nNpcId,nItemIdEgg)
	if not Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	local nEvent = tChristmas_Toudan_Stc["EventType"]
	local nTaskProcessType = tChristmas_Toudan_Stc["DataType"][3]
	local nFinishTimesType = tChristmas_Toudan_Stc["DataType"][1]
	local nData = tChristmas_Toudan_Cont["Complete"]
	
	--未检测到鸡蛋
	if not Item_ChkItem(nItemIdEgg) then
		tNpcGossip[18814]["Text311"] = string.format(tChristmas_Toudan_Text[18814]["Text311"],Get_ItemtypeName(nItemIdEgg))
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--双黄蛋
	local nItemIdDoubleYorkEgg = tChristmas_Toudan_Item["DoubleYolkEgg"]
	if nItemIdEgg == nItemIdDoubleYorkEgg then
		if not User_CheckLeftSpace(1) then
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return
		end
	end

	--杨艳修改  增加节日礼包上限的判断
	local nFstEvent = tChristmas_Toudan_Stc[1]["EventType"]
	local nFstData = tChristmas_Toudan_Stc[1]["DataType"] 
	local nUserId = Get_UserId()
	--隔天判断
	if Task_StcInterval(nFstEvent,nFstData,1,4,nUserId) then
		Task_SetStatistic(nFstEvent,nFstData,0,1,nUserId)
		Task_SetStcTimestamp(nFstEvent,nFstData,0,nUserId)
	end
	local nFstTime =  Get_UserStatisticValue(nFstEvent,nFstData)
	if nFstTime >= 9 then
		Sys_MsgBox(string.format(tFestivalGeneralPackage["OverLimit_Msg"],nFstTime))
		return
	end
	
	--设置掩码为完成任务
	Task_SetStatistic(nEvent,nTaskProcessType,nData,1)
	--完成次数+1
	Task_AddStatistic(nEvent,nFinishTimesType,1,1)
	--设置时间戳
	Task_SetStcTimestamp(nEvent,nFinishTimesType,0)
	Task_SetStcTimestamp(nEvent,nTaskProcessType,0)
	if not Item_ChkItem(nItemIdEgg) then
			return
		end
	if not Item_DelItem(nItemIdEgg) then
		return
	end
	local sDelEggLog = string.format(tChristmas_Toudan_Log["DelEgg"],nItemIdEgg)
	Sys_SaveActionFestivalLog(sDelEggLog)
	
	--检查是否有平底锅
	if Item_ChkItem(tChristmas_Toudan_Item["Pan"]) then
		if not Item_DelItem(tChristmas_Toudan_Item["Pan"]) then
			return
		end
		local sLog= tChristmas_Toudan_Log["DelPan"]
		Sys_SaveActionFestivalLog(sLog)
	end
	if nFstTime == 8 then
		FestivalGeneralPackage_GetGift(tChristmas_Toudan_Log["FestivalId"],tChristmas_Toudan_Log["LogId"])
		Sys_SaveActionFestivalLog(tChristmas_Toudan_Log["Complete"])
		Sys_MsgBox(tChristmas_Toudan_Msg["FstLimtEgg"])
		return
	end
	FestivalGeneralPackage_GetGift(tChristmas_Toudan_Log["FestivalId"],tChristmas_Toudan_Log["LogId"])
	Sys_SaveActionFestivalLog(tChristmas_Toudan_Log["Complete"])
	if nItemIdEgg == nItemIdDoubleYorkEgg then
		FestivalGeneralPackage_GetGift(tChristmas_Toudan_Log["FestivalId"],tChristmas_Toudan_Log["LogId"])
	end
	Sys_MsgBox(tChristmas_Toudan_Msg[nNpcId]["SubmitEgg"][nItemIdEgg])
end

--领取累计完成任务奖励
function Christmas_Toudan_GetMulReward(nNpcId,nData)
	if not Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	local nEvent = tChristmas_Toudan_Stc["EventType"]
	local nFinishTimesType = tChristmas_Toudan_Stc["DataType"][1]
	local nRewardTimesType = tChristmas_Toudan_Stc["DataType"][2]
	local nStcData = Get_UserStatisticValue(nEvent,nFinishTimesType)
	--判断累计完成次数是否小于领取奖励所需次数
	if nStcData < nData then
		LinkNpcGossipFunc_New(nNpcId,tChristmas_Toudan_ToTex[nData])
		return
	end
	
	--领取奖励
	local nAddStc = tChristmas_Toudan_MulRe[nData]["AddStc"]
	local nItem1Id =tChristmas_Toudan_MulRe[nData]["Item1"]
	local nItem1Num =tChristmas_Toudan_MulRe[nData]["Item1_Num"] or 1
	local nItem2Id =tChristmas_Toudan_MulRe[nData]["Item2"]
	local nItem2Num =tChristmas_Toudan_MulRe[nData]["Item2_Num"] or 1
	
	if not User_CheckLeftSpace(tChristmas_Toudan_Cont["GetMul"][nData]) then
		LinkNpcGossipFunc_New(nNpcId,"3-7")
		return
	end
	
	Task_AddStatistic(nEvent,nRewardTimesType,nAddStc,1)
	Item_AddItem(nItem1Id,1,nItem1Num,3)
	Item_AddItem(nItem2Id,1,nItem2Num,3)
	
	local sLog = string.format(tChristmas_Toudan_Log["MulRe"],nItem1Id,nItem2Id,nItem1Num,nItem2Num)
	
	Sys_SaveActionFestivalLog(sLog)
	
	User_TalkChannel2005(tChristmas_Toudan_Msg[nNpcId]["GetMul"][nData] )
end

--拍晕你
function Christmas_Toudan_StunTheHum()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nEvent = tChristmas_Toudan_Stc["EventType"]
	local nNpcType = tChristmas_Toudan_Stc["DataType"][nNpcId]
	if not Item_ChkItem(tChristmas_Toudan_Item["Pan"]) then
		User_TalkChannel2005(tChristmas_Toudan_Msg["Chicken"]["NoTaskItem"])
		return
	end
	
	--88%拍晕成功
	if Sys_Random(88,100) then
		Task_SetStatistic(nEvent,nNpcType,1,1)
		Task_SetStcTimestamp(nEvent,nNpcType,0)
		User_SetTimer(15,nil,1)
		Map_Effect(tChristmas_Toudan_Pos[nNpcId][1],tChristmas_Toudan_Pos[nNpcId][2],tChristmas_Toudan_Pos[nNpcId][3],"curse-3")
		User_TalkChannel2005(tChristmas_Toudan_Msg["Chicken"]["StunSuccess"],nUserId)
		return
	end

	--眩晕状态
	local nStatusStun = tChristmas_Toudan_Status["Status_Stun"]
	--混乱状态
	local nStatusChaos = tChristmas_Toudan_Status["Status_Chaos"]
	local nPower =  tChristmas_Toudan_Status["Power"]
	local nSecs = tChristmas_Toudan_Status["Secs"]
	local nTimes = tChristmas_Toudan_Status["Times"]
	local nRemainTime = tChristmas_Toudan_Status["RemainTime"]
	local nEndTime = tChristmas_Toudan_Status["EndTime"]
	local nRecordable = tChristmas_Toudan_Status["Recordable"]
	if Sys_Random(50,100) then
		User_AddRoleStatus(nStatusStun,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
		User_TalkChannel2005(tChristmas_Toudan_Msg["Chicken"]["StunFail1"],nUserId)
	else
		User_AddRoleStatus(nStatusChaos,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
		User_TalkChannel2005(tChristmas_Toudan_Msg["Chicken"]["StunFail2"],nUserId)
	end
end

--采集鸡蛋失败事件
function Christmas_Toudan_GetEggFail(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local flat,tItem = Probabil_RandomAward(tChristmas_Toudan_Probabil[7587],1)
	local nProbabil = tItem[1]["tAward"][1]["Item_1"]
	User_TalkChannel2005(tChristmas_Toudan_Msg["Chicken"]["CollectFail"][nProbabil],nUserId)
end

--读条成功
function Christmas_Toudan_ExploreSuccess(nNpcId,nUserId)
	local nEvent = tChristmas_Toudan_Stc["EventType"]
	local nTaskProcessType = tChristmas_Toudan_Stc["DataType"][3]
	local nNpcType = tChristmas_Toudan_Stc["DataType"][nNpcId]
	local nStcData = Get_UserStatisticValue(nEvent,nTaskProcessType,nUserId)
	if Task_StcInterval(nEvent,nNpcType,15,0,nUserId) then
			User_TalkChannel2005(tChristmas_Toudan_Msg["Chicken"]["Stunexit"],nUserId)
		return
	end
	
	--已经首次采集，未成功得到任意鸡蛋掩码
	local nDataFirstGet = tChristmas_Toudan_Cont["FirstCollect"]
	--已经得到鸡蛋
	local nDataGetEgg = tChristmas_Toudan_Cont["GetEgg"]
	--没有背包空间
	if not User_CheckLeftSpace(1,nUserId) then
		User_TalkChannel2005(tChristmas_Toudan_Msg["Chicken"]["NoSpace"],nUserId)
		return
	end
	
	--第一次采集必定失败
	if nStcData == 1 then
		Task_SetStatistic(nEvent,nTaskProcessType,nDataFirstGet,1,nUserId)
		Christmas_Toudan_GetEggFail(nUserId)
		return
	end
	
	--非第一次采集且未曾采集到鸡蛋
	if nStcData == 2 then
		local flat,tItem = Probabil_RandomAward(tChristmas_Toudan_Probabil[7588],1)
		local nProbabil = tItem[1]["tAward"][1]["Item_1"]
		local nBeEgg = tItem[1]["tAward"][1]["BeEgg"] or 0
		
		if nProbabil == 0 then
			Christmas_Toudan_GetEggFail(nUserId)
			return
		end
		
		if 1 == nBeEgg then
			Task_SetStatistic(nEvent,nTaskProcessType,nDataGetEgg,1,nUserId)
		end
		-- Item_AddItem(nProbabil)
		Item_AddNewItem(nProbabil,"0 1",nUserId)
		User_EffectAdd("self","zf2-e290",nUserId)
		local sLog = string.format(tChristmas_Toudan_Log["Caiji"],nProbabil)
		Sys_SaveActionFestivalLog(sLog,nUserId)
		if 1 == nBeEgg then
			Sys_MsgBox(tChristmas_Toudan_Msg["Chicken"][nProbabil],"Christmas_Toudan_AutoFindWay</N>18814","NULL",nUserId)
		else
			Sys_MsgBox(tChristmas_Toudan_Msg["Chicken"][nProbabil],"NULL","NULL",nUserId)
		end
		return
	end
	
	--曾经采集到鸡蛋
	if nStcData == 3 then
		if Item_ChkItem(tChristmas_Toudan_Item["NormalEgg"],1,0,nUserId) or Item_ChkItem(tChristmas_Toudan_Item["DoubleYolkEgg"],1,0,nUserId) then
			Sys_MsgBox(tChristmas_Toudan_Msg["Chicken"]["OwnEgg"],"Christmas_Toudan_AutoFindWay</N>18814")
			return
		end
		local nAddItem = tChristmas_Toudan_Item["NormalEgg"]
		-- Item_AddItem(nAddItem)
		Item_AddNewItem(nAddItem,"0 1",nUserId)
		local sLog = tChristmas_Toudan_Log["GetNormalEgg"]
		Sys_SaveActionFestivalLog(sLog,nUserId)
		User_EffectAdd("self","zf2-e290",nUserId)
		Sys_MsgBox(tChristmas_Toudan_Msg["Chicken"][nAddItem],"Christmas_Toudan_AutoFindWay</N>18814","NULL",nUserId)
		return
	end
	Sys_MsgBox(tChristmas_Toudan_Msg["Chicken"]["OwnEgg"],"Christmas_Toudan_AutoFindWay</N>18814","NULL",nUserId)
end

--读条失败
function Christmas_Toudan_ExploreFail(nUserId)
	User_TalkChannel2005(tChristmas_Toudan_Msg["Chicken"]["Stunexit"],nUserId)
end
--NPC爱孵蛋的叫天鸡接此函数
function Christmas_Toudan_NPCJiaoTianJi()
	local nNpcId = Get_NpcId()
	local nEvent = tChristmas_Toudan_Stc["EventType"]
	local nType = tChristmas_Toudan_Stc["DataType"][nNpcId]
	local nUserId = Get_UserId()
	--活动时间前
	if Sys_ChkFullTime(tChristmas_Toudan_Cont["BeforeActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	--活动时间后
	if not Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--未处在眩晕状态
	if Task_ChkStcValue(nEvent,nType,"==",0) or Task_StcInterval(nEvent,nType,15,0) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	--无背包空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tChristmas_Toudan_Msg["Chicken"]["NoSpace"])
		return
	end
	
	--已有鸡蛋
	if Item_ChkItem(tChristmas_Toudan_Item["NormalEgg"]) or Item_ChkItem(tChristmas_Toudan_Item["DoubleYolkEgg"]) then
		Sys_MsgBox(tChristmas_Toudan_Msg["Chicken"]["OwnEgg"],"Christmas_Toudan_AutoFindWay</N>18814")
		return
	end
	--开始读条
	User_SetExplore(3,tChristmas_Toudan_Explore["Chicken"],220,string.format("Christmas_Toudan_ExploreSuccess</N>%d</N>%d",nNpcId,nUserId),string.format("Christmas_Toudan_ExploreFail</N>%d",nUserId))

end

--使用物品
function Christmas_Toudan_UseItem(nThisItemId)
	local flat,tItem = Probabil_RandomAward(tChristmas_Toudan_Probabil[nThisItemId],1)
	local nItemId = tItem[1]["tAward"][1]["Item_1"]
	--时效
	local nStatute = tItem[1]["tAward"][1]["Statute"]
	if not Item_ChkItem(nThisItemId,1) then
		return
	end
	
	if not Item_DelItem(nThisItemId,1) then
		return
	end
	local sAttr = tChristmas_Toudan_Cont["RewardAttr"]
	Item_AddNewItem(nItemId,sAttr)
	User_TalkChannel2005(tChristmas_Toudan_Msg["GetItem"][nItemId])
	local sLog = string.format(tChristmas_Toudan_Log["OpenPack"],nItemId);
	Sys_SaveActionFestivalLog(sLog)
end

function Christmas_Toudan_OutTheBag(nItemId)
	if Sys_ChkFullTime(tChristmas_Toudan_Cont["BeforeActivityTime"]) then
		User_TalkChannel2005(tChristmas_Toudan_Msg["NoTimeToItem"])
		return
	end
	--非活动时间内，移出背包
	if not Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"]) then
		if not Item_ChkItem(nItemId) then
			return
		end
		if not Item_DelItem(nItemId) then
			return
		end
		local sLog = string.format(tChristmas_Toudan_Log["DelItem"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tChristmas_Toudan_Msg["ItemExpired"])
	end
end

--自动寻路到npc
function Christmas_Toudan_AutoFindWay(nNpcId,nOpenNpc)
	if not Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"]) then
		User_TalkChannel2005(tChristmas_Toudan_Msg["NoTimeToNPC"])
		return
	end
	Sys_GotoSomeWhere(tChristmas_Toudan_Pos[nNpcId][2],tChristmas_Toudan_Pos[nNpcId][3],tChristmas_Toudan_Pos[nNpcId][1],nOpenNpc)
end

--使用平底锅
function  Christmas_Toudan_UsePan(nItemId)
	if Sys_ChkFullTime(tChristmas_Toudan_Cont["BeforeActivityTime"]) then
		User_TalkChannel2005(tChristmas_Toudan_Msg["NoTimeToItem"])
		return
	end
	--非活动时间内，移出背包
	if not Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"]) then
		if not Item_ChkItem(nItemId) then
			return
		end
		if not Item_DelItem(nItemId) then
			return
		end
		local sLog = string.format(tChristmas_Toudan_Log["DelItem"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tChristmas_Toudan_Msg["ItemExpired"])
		return
	end
	local flat,tItem = Probabil_RandomAward(tChristmas_Toudan_Probabil[98564],1)
	local nProNpcId = tItem[1]["tAward"][1]["NpcId"]
	Sys_MsgBox(tChristmas_Toudan_Msg["UsePan"],"Christmas_Toudan_AutoFindWay</N>"..nProNpcId.."</N>"..nProNpcId)
end
-----------------------------------------npc模块-------------------------------------------



--御厨姬旦丙
tNpcFace[3801] = 84
tNpcGossip[18814] = tNpcGossip[18814] or DefaultNpc:new{}
tNpcGossip[18814]["OptionHidden"] = 1

--活动前
tNpcGossip[18814]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[18814]["Text111"] = tChristmas_Toudan_Text[18814]["Text111"]
tNpcGossip[18814]["Text112"] = tChristmas_Toudan_Text[18814]["Text112"]
tNpcGossip[18814]["Text113"] = tChristmas_Toudan_Text[18814]["Text113"]
tNpcGossip[18814]["Text114"] = tChristmas_Toudan_Text[18814]["Text114"]
tNpcGossip[18814]["Text115"] = tChristmas_Toudan_Text[18814]["Text115"]
tNpcGossip[18814]["Text116"] = tChristmas_Toudan_Text[18814]["Text116"]
tNpcGossip[18814]["tOption1-1"] = {1}
tNpcGossip[18814]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tChristmas_Toudan_Cont["BeforeActivityTime"])
end
tNpcGossip[18814]["Option1"] = tChristmas_Toudan_Text[18814]["Option1"]

--活动时间内
tNpcGossip[18814]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[18814]["Text121"] = tChristmas_Toudan_Text[18814]["Text121"]
tNpcGossip[18814]["Text122"] = tChristmas_Toudan_Text[18814]["Text122"]
tNpcGossip[18814]["Text123"] = tChristmas_Toudan_Text[18814]["Text123"]
tNpcGossip[18814]["Text124"] = tChristmas_Toudan_Text[18814]["Text124"]
tNpcGossip[18814]["Text125"] = tChristmas_Toudan_Text[18814]["Text125"]
tNpcGossip[18814]["Text126"] = tChristmas_Toudan_Text[18814]["Text126"]
tNpcGossip[18814]["tOption1-2"] = {2,3,4,5,6}
tNpcGossip[18814]["ChkFunc1-2"] = function()

	if not Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"]) then
		return false
	end

	if not User_JudgeLevelAndMetempsychosis(tChristmas_Toudan_Cont["MinLevel"],tChristmas_Toudan_Cont["MinMeto"]) then
		return false
	end
	return true
end

--领取【平底锅】
tNpcGossip[18814]["Option2"] = tChristmas_Toudan_Text[18814]["Option2"]
tNpcGossip[18814]["OptionFunc2"]="Christmas_Toudan_GetPan</N>18814"
tNpcGossip[18814]["OptionChkFunc2"] = function()
	return Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"])
end

--上交【鸡蛋】
tNpcGossip[18814]["Option3"] = tChristmas_Toudan_Text[18814]["Option3"]
tNpcGossip[18814]["OptionPoint3"]="2-5"
tNpcGossip[18814]["OptionChkFunc3"] = function()
	return Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"])
end

--领取累计完成任务奖励
tNpcGossip[18814]["Option4"] = tChristmas_Toudan_Text[18814]["Option4"]
tNpcGossip[18814]["OptionPoint4"]="2-6"
tNpcGossip[18814]["OptionChkFunc4"] = function()
	return Christmas_Toudan_IsAllReward() and Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"])
end

--了解活动详情
tNpcGossip[18814]["Option5"] = tChristmas_Toudan_Text[18814]["Option5"]
tNpcGossip[18814]["OptionPoint5"]="2-7"

--反正不是我偷的。
tNpcGossip[18814]["Option6"] = tChristmas_Toudan_Text[18814]["Option6"]


--活动已结束
tNpcGossip[18814]["Text1-3"] = {131}
tNpcGossip[18814]["Text131"] = tChristmas_Toudan_Text[18814]["Text131"]
tNpcGossip[18814]["tOption1-3"] = {7}
tNpcGossip[18814]["ChkFunc1-3"] = function()
	return not Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"]) and not Sys_ChkFullTime(tChristmas_Toudan_Cont["BeforeActivityTime"])
end
tNpcGossip[18814]["Option7"] = tChristmas_Toudan_Text[18814]["Option7"]


--玩家等级不足
tNpcGossip[18814]["Text1-4"] = {141}
tNpcGossip[18814]["Text141"] = tChristmas_Toudan_Text[18814]["Text141"]
tNpcGossip[18814]["tOption1-4"] = {8}
tNpcGossip[18814]["ChkFunc1-4"] = function()
	
	if not Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"]) then
		return false
	end

	if User_JudgeLevelAndMetempsychosis(tChristmas_Toudan_Cont["MinLevel"],tChristmas_Toudan_Cont["MinMeto"]) then
		return false
	end
	return true
end
tNpcGossip[18814]["Option8"] = tChristmas_Toudan_Text[18814]["Option8"]


--背包空间不足
tNpcGossip[18814]["Text2-1"] = {211}
tNpcGossip[18814]["Text211"] = tChristmas_Toudan_Text[18814]["Text211"]
tNpcGossip[18814]["tOption2-1"] = {9}
tNpcGossip[18814]["Option9"] = tChristmas_Toudan_Text[18814]["Option9"]

--背包中已经有平底锅了
tNpcGossip[18814]["Text2-2"] = {221}
tNpcGossip[18814]["Text221"] = tChristmas_Toudan_Text[18814]["Text221"]
tNpcGossip[18814]["tOption2-2"] = {10}
tNpcGossip[18814]["Option10"] = tChristmas_Toudan_Text[18814]["Option10"]

--背包中已经有鸡蛋
tNpcGossip[18814]["Text2-3"] = {231}
tNpcGossip[18814]["Text231"] = tChristmas_Toudan_Text[18814]["Text231"]
tNpcGossip[18814]["tOption2-3"] = {11}
tNpcGossip[18814]["Option11"] = tChristmas_Toudan_Text[18814]["Option11"]

--当天已经完成任务
tNpcGossip[18814]["Text2-4"] = {241}
tNpcGossip[18814]["Text241"] = tChristmas_Toudan_Text[18814]["Text241"]
tNpcGossip[18814]["tOption2-4"] = {12}
tNpcGossip[18814]["Option12"] = tChristmas_Toudan_Text[18814]["Option12"]

--上交鸡蛋
tNpcGossip[18814]["Text2-5"] = {251}
tNpcGossip[18814]["Text251"] = tChristmas_Toudan_Text[18814]["Text251"]
tNpcGossip[18814]["tOption2-5"] = {13,14,15}
tNpcGossip[18814]["Option13"] = tChristmas_Toudan_Text[18814]["Option13"]
tNpcGossip[18814]["OptionFunc13"]="Christmas_Toudan_SubmitEgg</N>18814</N>3007446"
tNpcGossip[18814]["Option14"] = tChristmas_Toudan_Text[18814]["Option14"]
tNpcGossip[18814]["OptionFunc14"]="Christmas_Toudan_SubmitEgg</N>18814</N>3007447"
tNpcGossip[18814]["Option15"] = tChristmas_Toudan_Text[18814]["Option15"]

--领取累计完成奖励
tNpcGossip[18814]["Text2-6"] = {261,262,263}
tNpcGossip[18814]["Text261"] = tChristmas_Toudan_Text[18814]["Text261"]
tNpcGossip[18814]["Text262"] = tChristmas_Toudan_Text[18814]["Text262"]
tNpcGossip[18814]["Text263"] = tChristmas_Toudan_Text[18814]["Text263"]
tNpcGossip[18814]["tOption2-6"] = {16,17,18,19,20,21}
tNpcGossip[18814]["ChkFunc2-6"] = function()
	local nEvent = tChristmas_Toudan_Stc["EventType"]
	local nType = tChristmas_Toudan_Stc["DataType"][1]
	local nStcData = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[18814]["Text263"]=string.format(tChristmas_Toudan_Text[18814]["Text263"],nStcData)
	return Sys_ChkFullTime(tChristmas_Toudan_Cont["ActivityTime"])
end

tNpcGossip[18814]["Option16"] = tChristmas_Toudan_Text[18814]["Option16"]
tNpcGossip[18814]["OptionFunc16"]="Christmas_Toudan_GetMulReward</N>18814</N>" .. tChristmas_Toudan_Cont["Mul_three"]
tNpcGossip[18814]["OptionChkFunc16"] = function()
	return not Christmas_Toudan_CheckRewardStatus(tChristmas_Toudan_Cont["Mul_three"])
end

tNpcGossip[18814]["Option17"] = tChristmas_Toudan_Text[18814]["Option17"]
tNpcGossip[18814]["OptionFunc17"]="Christmas_Toudan_GetMulReward</N>18814</N>" .. tChristmas_Toudan_Cont["Mul_six"]
tNpcGossip[18814]["OptionChkFunc17"] = function()
	return not Christmas_Toudan_CheckRewardStatus(tChristmas_Toudan_Cont["Mul_six"])
end

tNpcGossip[18814]["Option18"] = tChristmas_Toudan_Text[18814]["Option18"]
tNpcGossip[18814]["OptionFunc18"]="Christmas_Toudan_GetMulReward</N>18814</N>" .. tChristmas_Toudan_Cont["Mul_nine"]
tNpcGossip[18814]["OptionChkFunc18"] = function()
	return not Christmas_Toudan_CheckRewardStatus(tChristmas_Toudan_Cont["Mul_nine"])
end

tNpcGossip[18814]["Option19"] = tChristmas_Toudan_Text[18814]["Option19"]
tNpcGossip[18814]["OptionFunc19"]="Christmas_Toudan_GetMulReward</N>18814</N>" .. tChristmas_Toudan_Cont["Mul_twelve"]
tNpcGossip[18814]["OptionChkFunc19"] = function()
	return not Christmas_Toudan_CheckRewardStatus(tChristmas_Toudan_Cont["Mul_twelve"])
end

tNpcGossip[18814]["Option20"] = tChristmas_Toudan_Text[18814]["Option20"]
tNpcGossip[18814]["OptionPoint20"] = "1-2"

tNpcGossip[18814]["Option21"] = tChristmas_Toudan_Text[18814]["Option21"]




--了解活动详情
tNpcGossip[18814]["Text2-7"] = {271,272}
tNpcGossip[18814]["Text271"] = tChristmas_Toudan_Text[18814]["Text271"]
tNpcGossip[18814]["Text272"] = tChristmas_Toudan_Text[18814]["Text272"]
tNpcGossip[18814]["tOption2-7"] = {22,23,24}

tNpcGossip[18814]["Option22"] = tChristmas_Toudan_Text[18814]["Option22"]
tNpcGossip[18814]["OptionPoint22"] = "3-8"

tNpcGossip[18814]["Option23"] = tChristmas_Toudan_Text[18814]["Option23"]
tNpcGossip[18814]["OptionPoint23"] = "1-2"

tNpcGossip[18814]["Option24"] = tChristmas_Toudan_Text[18814]["Option24"]



--背包中无鸡蛋
tNpcGossip[18814]["Text3-1"] = {311}
tNpcGossip[18814]["Text311"] = tChristmas_Toudan_Text[18814]["Text311"]
tNpcGossip[18814]["tOption3-1"] = {25}
tNpcGossip[18814]["Option25"] = tChristmas_Toudan_Text[18814]["Option25"]

--提交鸡蛋背包满
tNpcGossip[18814]["Text3-2"] = {321}
tNpcGossip[18814]["Text321"] = tChristmas_Toudan_Text[18814]["Text321"]
tNpcGossip[18814]["tOption3-2"] = {26}
tNpcGossip[18814]["Option26"] = tChristmas_Toudan_Text[18814]["Option26"]



--累计次数不足
tNpcGossip[18814]["Text3-3"] = {331}
tNpcGossip[18814]["Text331"] = tChristmas_Toudan_Text[18814]["Text331"]
tNpcGossip[18814]["tOption3-3"] = {27}

tNpcGossip[18814]["Text3-4"] = {341}
tNpcGossip[18814]["Text341"] = tChristmas_Toudan_Text[18814]["Text341"]
tNpcGossip[18814]["tOption3-4"] = {27}

tNpcGossip[18814]["Text3-5"] = {351}
tNpcGossip[18814]["Text351"] = tChristmas_Toudan_Text[18814]["Text351"]
tNpcGossip[18814]["tOption3-5"] = {27}

tNpcGossip[18814]["Text3-6"] = {361}
tNpcGossip[18814]["Text361"] = tChristmas_Toudan_Text[18814]["Text361"]
tNpcGossip[18814]["tOption3-6"] = {27}

tNpcGossip[18814]["Option27"] = tChristmas_Toudan_Text[18814]["Option27"]

--背包满
tNpcGossip[18814]["Text3-7"] = {371}
tNpcGossip[18814]["Text371"] = tChristmas_Toudan_Text[18814]["Text371"]
tNpcGossip[18814]["tOption3-7"] = {28}
tNpcGossip[18814]["Option28"] = tChristmas_Toudan_Text[18814]["Option28"]



--有什么奖励吗
tNpcGossip[18814]["Text3-8"] = {381,382}
tNpcGossip[18814]["Text381"] = tChristmas_Toudan_Text[18814]["Text381"]
tNpcGossip[18814]["Text382"] = tChristmas_Toudan_Text[18814]["Text382"]
tNpcGossip[18814]["tOption3-8"] = {29,30}

tNpcGossip[18814]["Option29"] = tChristmas_Toudan_Text[18814]["Option29"]
tNpcGossip[18814]["OptionPoint29"] = "2-7"

tNpcGossip[18814]["Option30"] = tChristmas_Toudan_Text[18814]["Option30"]



--NPC爱孵蛋的叫天鸡1
tNpcGossip[18815] = tNpcGossip[18815] or DefaultNpc:new{}
tNpcGossip[18815]["OptionHidden"] = 1

--活动前
tNpcGossip[18815]["Text1-1"] = {111,112}
tNpcGossip[18815]["Text111"] = tChristmas_Toudan_Text["Chicken"]["Text111"]
tNpcGossip[18815]["tOption1-1"] = {1}
tNpcGossip[18815]["Option1"] = tChristmas_Toudan_Text["Chicken"]["Option1"]

--活动时间后
tNpcGossip[18815]["Text1-2"] = {121}
tNpcGossip[18815]["Text121"] = tChristmas_Toudan_Text["Chicken"]["Text121"]
tNpcGossip[18815]["tOption1-2"] = {2}
tNpcGossip[18815]["Option2"] = tChristmas_Toudan_Text["Chicken"]["Option2"]

--活动时间内
tNpcGossip[18815]["Text1-3"] = {131}
tNpcGossip[18815]["Text131"] = tChristmas_Toudan_Text["Chicken"]["Text131"]
tNpcGossip[18815]["tOption1-3"] = {3,4}


tNpcGossip[18815]["Option3"] = tChristmas_Toudan_Text["Chicken"]["Option3"]
tNpcGossip[18815]["OptionFunc3"]="Christmas_Toudan_StunTheHum"
tNpcGossip[18815]["Option4"] = tChristmas_Toudan_Text["Chicken"]["Option4"]

--NPC爱孵蛋的叫天鸡2
tNpcGossip[18816] = tNpcGossip[18815] 

--NPC爱孵蛋的叫天鸡3
tNpcGossip[18817] = tNpcGossip[18815]

--NPC爱孵蛋的叫天鸡4
tNpcGossip[18818] = tNpcGossip[18815]

--NPC爱孵蛋的叫天鸡5
tNpcGossip[18819] = tNpcGossip[18815]


-----------------------------------------物品逻辑------------------------------------------------


 --神秘外套大礼包打开逻辑
tItem[3007448] = tItem[3007448] or {}
tItem[3007448]["Function"] = function(nItemId,sItemName)
	Christmas_Toudan_UseItem(nItemId)
end


 --平底锅
tItem[3007445] = tItem[3007445] or {}
tItem[3007445]["Function"] = function(nItemId,sItemName)
	Christmas_Toudan_UsePan(nItemId)
end

 --普通鸡蛋
tItem[3007446] = tItem[3007446] or {}
tItem[3007446]["Function"] = function(nItemId,sItemName)
	Christmas_Toudan_OutTheBag(nItemId)
end

 --特大双黄蛋
tItem[3007447] = tItem[3007447] or {}
tItem[3007447]["Function"] = function(nItemId,sItemName)
	Christmas_Toudan_OutTheBag(nItemId)
end

	