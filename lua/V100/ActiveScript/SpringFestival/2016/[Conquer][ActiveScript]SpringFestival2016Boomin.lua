------------------------------------------------------------------------------------
--Name:	151026[简体征服][活动脚本]2016春节活动之红红火火过大年
--Purpose:	2016春节活动之红红火火过大年
--Creator: 林辉山
--Created:	2015/10/26
------------------------------------------------------------------------------------



--stc 13895 记录玩家当天任务状态，0表示未接受任务，1表示接受任务，未完成任务，2表示完成任务
--stc 13896 记录玩家上交美食数量
--stc 13897 记录玩家提示状态，只提示一次
--stc 13898 记录玩家每日使用鸿运当头次数（最多3次）



-- 50675
-- cq_dyna_global_data data0今天上交美食数量
-- cq_dyna_global_data data1今天最多玩家id
-- cq_dyna_global_data data2昨天上交美食数量
-- cq_dyna_global_data data3昨天最多玩家id
-- cq_dyna_global_data data4礼包领取标记
-- cq_dyna_global_data data5隔天清零标记
-- cq_dyna_global_data datastr0 今天最多玩家name
-- cq_dyna_global_data datastr1 昨天最多玩家name


--前缀
--FestivalSpring2016_Booming_

---------------------------------------常量表配置---------------------------------------
local tFestivalSpring2016_Booming_Cont = {}
	-- 活动时间
	tFestivalSpring2016_Booming_Cont["BeforeActivityTime"] = "2016-01-01 00:00 2017-01-27 23:59"
	tFestivalSpring2016_Booming_Cont["ActivityTime"] = "2017-01-28 00:00 2017-02-06 23:59"
	tFestivalSpring2016_Booming_Cont["ActivityAllTime"] = "2017-01-28 00:00 2017-02-07 23:59"
	tFestivalSpring2016_Booming_Cont["ReceivePackTime"] = "00:00 17:59"
	tFestivalSpring2016_Booming_Cont["ReceivePackAllTime"] = "2017-01-28 00:00 2017-02-07 17:59"
	tFestivalSpring2016_Booming_Cont["FirstDay"] = "2017-01-28 00:00 2017-01-28 23:59"
	--需求等级，转世
	tFestivalSpring2016_Booming_Cont["MinLevel"] = 80
	tFestivalSpring2016_Booming_Cont["MinMeto"] = 0
	
	--食用”鸿运当头“得到经验
	tFestivalSpring2016_Booming_Cont["AwardExp"] = 30
	--食用”鸿运当头“
	tFestivalSpring2016_Booming_Cont["AwardBless"] = 1
	--获得“鸿运当头”attr
	tFestivalSpring2016_Booming_Cont["AwardGoodLuck"] = "0 %d"
	
	--NPC位置还未确定
	tFestivalSpring2016_Booming_Cont[17304] = {}
	tFestivalSpring2016_Booming_Cont[17304][1] = 1002
	tFestivalSpring2016_Booming_Cont[17304][2] = 271
	tFestivalSpring2016_Booming_Cont[17304][3] = 365

	tFestivalSpring2016_Booming_Cont[17303] = {}
	tFestivalSpring2016_Booming_Cont[17303][1] = 1002
	tFestivalSpring2016_Booming_Cont[17303][2] = 271
	tFestivalSpring2016_Booming_Cont[17303][3] = 369
	
	tFestivalSpring2016_Booming_Cont["NpcKingId"] = 17303
	tFestivalSpring2016_Booming_Cont["NpcRoyalId"] = 17304
	
	tFestivalSpring2016_Booming_Cont["NpcHomeMapId"] = 5000
	tFestivalSpring2016_Booming_Cont["NpcHomeCellx"] = 97
	tFestivalSpring2016_Booming_Cont["NpcHomeCelly"] = 53
	
	
local tFestivalSpring2016_Booming_ItemId = {}
	--无骨鲜鱼
	tFestivalSpring2016_Booming_ItemId["Fish"] = 3007653
	--白玉豆腐
	tFestivalSpring2016_Booming_ItemId["Tofu"] = 3007654
	--鸿运当头
	tFestivalSpring2016_Booming_ItemId["GoodLuck"] = 3007655
	--新年大礼包
	tFestivalSpring2016_Booming_ItemId["BigPack"] = 3007656
	--龙珠
	tFestivalSpring2016_Booming_ItemId["Zhu"] = 1088000
	
local nFestivalSpring2016_Booming_DynaGlobal = 50675

---------掩码配置
local tFestivalSpring2016_Booming_Stc = {}

	tFestivalSpring2016_Booming_Stc["EventType"] = 138

	tFestivalSpring2016_Booming_Stc["DataType"] = {}
	
	tFestivalSpring2016_Booming_Stc["DataType"]["TaskProc"] = 95

	tFestivalSpring2016_Booming_Stc["DataType"]["SubmitFood"] = 96
	
	tFestivalSpring2016_Booming_Stc["DataType"]["Tip"] = 97
	
	tFestivalSpring2016_Booming_Stc["DataType"]["EatFood"] = 98

	
	
--概率配置

--美食叫天鸡
local tFestivalSpring2016_Booming_Prob = {}

	tFestivalSpring2016_Booming_Prob[2742] = {}
	tFestivalSpring2016_Booming_Prob[2742][1] = {}
	tFestivalSpring2016_Booming_Prob[2742][1]["ItemChanceSum"] = 10000
	-- 50% 不产出任何任务物品
	tFestivalSpring2016_Booming_Prob[2742][1][1] = {}
	tFestivalSpring2016_Booming_Prob[2742][1][1]["RandomItemChanceType"] = 2
	tFestivalSpring2016_Booming_Prob[2742][1][1]["ItemChance"] = 5000
	tFestivalSpring2016_Booming_Prob[2742][1][1]["Item_1"] = 0
	-- 25%得到 无骨鲜鱼
	tFestivalSpring2016_Booming_Prob[2742][1][2] = {}
	tFestivalSpring2016_Booming_Prob[2742][1][2]["RandomItemChanceType"] = 2
	tFestivalSpring2016_Booming_Prob[2742][1][2]["ItemChance"] = 2500
	tFestivalSpring2016_Booming_Prob[2742][1][2]["Item_1"] = 3007653
	-- 25%得到 白玉豆腐
	tFestivalSpring2016_Booming_Prob[2742][1][3] = {}
	tFestivalSpring2016_Booming_Prob[2742][1][3]["RandomItemChanceType"] = 2
	tFestivalSpring2016_Booming_Prob[2742][1][3]["ItemChance"] = 2500
	tFestivalSpring2016_Booming_Prob[2742][1][3]["Item_1"] = 3007654

	

--------Log
local tFestivalSpring2016_Booming_Log = {}
	tFestivalSpring2016_Booming_Log["LogId"] = 12000245
	--节日欢庆礼包logid
	tFestivalSpring2016_Booming_Log["FestivalId"] = 3359
	--上交“鸿运当头”
	tFestivalSpring2016_Booming_Log["SubmitFood"] = "0,0,3005447,%d,12000245,2,0,0"
	--领取新年大礼包
	tFestivalSpring2016_Booming_Log["GetBigPack"] = "0,0,0,0,12000245,2,3005448,1"
	--上交食材
	tFestivalSpring2016_Booming_Log["SubmitFoodMeta"] = "0,0,3005445[3005446],%d[%d],12000245,2,3005447,%d"
	--打开新年大礼包
	tFestivalSpring2016_Booming_Log["OpenPack"] = "0,0,3005448,1,12000245,2,1088000,1"
	--吃“鸿运当头” 有经验
	tFestivalSpring2016_Booming_Log["EatFoodWithExp"] = "0,0,3005447,1,12000245,2,4[5],30[1]"
	--吃“鸿运当头” 没经验
	tFestivalSpring2016_Booming_Log["EatFoodNoExp"] = "0,0,3005447,1,12000245,2,5,1"
	--材料过期
	tFestivalSpring2016_Booming_Log["DelMeta"] = "0,0,%d,1,12000245,2,0,0"
	--怪物产出材料
	tFestivalSpring2016_Booming_Log["AddMeta"] = "0,0,0,0,12000245,2,%d,1"
	
	--接受任务log
	tFestivalSpring2016_Booming_Log["Accept"] = "0,0,0,0,12000245,1[1],0,0"
	
	--完成任务log
	tFestivalSpring2016_Booming_Log["Finish"] = "0,0,0,0,12000245,1[2],0,0"
	
	
---------------------------------------------------逻辑部分----------------------------------------------------------

function FestivalSpring2016_Booming_CheckTaskStatus(nData)
	local nEvent = tFestivalSpring2016_Booming_Stc["EventType"]
	local nTaskDataType = tFestivalSpring2016_Booming_Stc["DataType"]["TaskProc"]
	local nSubmitTimesDataType = tFestivalSpring2016_Booming_Stc["DataType"]["SubmitFood"]
	local nDBdata = Get_UserStatisticValue(nEvent,nTaskDataType)
	--如果任务完成
	if nDBdata == 2 then
		--如果超过时间
		if Task_StcInterval(nEvent,nTaskDataType,1,4) then
			--重设任务阶段
			Task_SetStatistic(nEvent,nTaskDataType,0,1)
			Task_SetStcTimestamp(nEvent,nTaskDataType,0)
			--重设今天提交数量
			Task_SetStatistic(nEvent,nSubmitTimesDataType,0,1)
			Task_SetStcTimestamp(nEvent,nSubmitTimesDataType,0)
			nDBdata = 0
		end
	end
	return nData == nDBdata
end

--接受任务/这事就交给我吧
function FestivalSpring2016_Booming_AcceptTask(nNpcId)
	
	if not User_JudgeLevelAndMetempsychosis(tFestivalSpring2016_Booming_Cont["MinLevel"],tFestivalSpring2016_Booming_Cont["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	--活动时间外
	if not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	local nEvent = tFestivalSpring2016_Booming_Stc["EventType"]
	local nTaskDataType = tFestivalSpring2016_Booming_Stc["DataType"]["TaskProc"]
	Task_SetStatistic(nEvent,nTaskDataType,1,1)
	Task_SetStcTimestamp(nEvent,nTaskDataType,0)
	local sLog = tFestivalSpring2016_Booming_Log["Accept"]
	Sys_SaveActionFestivalLog(sLog)
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

--上交新年大餐
function FestivalSpring2016_Booming_SubmitFood(nNpcId,nNum)
	if not User_JudgeLevelAndMetempsychosis(tFestivalSpring2016_Booming_Cont["MinLevel"],tFestivalSpring2016_Booming_Cont["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end

	--活动时间外
	if not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["BeforeActivityTime"]) and not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	local nEvent = tFestivalSpring2016_Booming_Stc["EventType"]
	local nTaskDataType = tFestivalSpring2016_Booming_Stc["DataType"]["TaskProc"]
	local nSubmitTimesDataType = tFestivalSpring2016_Booming_Stc["DataType"]["SubmitFood"]
	local nData = Get_UserStatisticValue(nEvent,nTaskDataType)
	
	local nItemIdGoodluck = tFestivalSpring2016_Booming_ItemId["GoodLuck"]
	--未检测足够多的“鸿运当头”
	if not Item_ChkMulItem(nItemIdGoodluck,nItemIdGoodluck,nNum) then

		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end

	--背包空间不足/且未完成任务
	if not User_CheckLeftSpace(1) and nData ~= 2 then
		User_TalkChannel2005(tFestivalSpring2016_Booming_Text["NoSpace"])
		return
	end
	
	--设置任务阶段到2
	Task_SetStatistic(nEvent,nTaskDataType,2,1)
	Task_SetStcTimestamp(nEvent,nTaskDataType,0)
	--添加玩家完成数量
	Task_AddStatistic(nEvent,nSubmitTimesDataType,nNum,1)
	
	if not Item_DelMulItem(nItemIdGoodluck,nItemIdGoodluck,nNum) then
		return
	end
	--玩家今天提交数量
	local nUserSubmitNum = Get_UserStatisticValue(nEvent,nSubmitTimesDataType)
	--服务器最大提交量
	local nSeverSubmitNum = Get_SysDynaGlobalData0(nFestivalSpring2016_Booming_DynaGlobal)
	
	--玩家当日提交数量大于服务器最大提交量
	if nUserSubmitNum > nSeverSubmitNum then
		Sys_SetSynaGlobalData0(nFestivalSpring2016_Booming_DynaGlobal,nUserSubmitNum)
		local nUserId = Get_UserId()
		Sys_SetSynaGlobalData1(nFestivalSpring2016_Booming_DynaGlobal,nUserId)
		Sys_SetSynaGlobalDataStr0(nFestivalSpring2016_Booming_DynaGlobal,Get_UserName())
	end
	
	local sLog = string.format(tFestivalSpring2016_Booming_Log["SubmitFood"],nNum)
	Sys_SaveActionFestivalLog(sLog)
	--已经完成任务/已上交过“鸿运当头”
	if nData == 2 then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	User_TalkChannel2005(tFestivalSpring2016_Booming_Text["ReceivePack"])
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	
	local sLog = tFestivalSpring2016_Booming_Log["Finish"]
	Sys_SaveActionFestivalLog(sLog)
	FestivalGeneralPackage_GetGift(tFestivalSpring2016_Booming_Log["FestivalId"],tFestivalSpring2016_Booming_Log["LogId"])
end

--领取新年大礼包
function FestivalSpring2016_Booming_GetBigPack(nNpcId)
	
	--昨日最多上交“鸿运当头”玩家id
	local nSeverUserId = Get_SysDynaGlobalData3(nFestivalSpring2016_Booming_DynaGlobal)
	local nUserId = Get_UserId()
	
	--无资格领取
	if nSeverUserId ~= nUserId then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--不在可领取时间
	if not Sys_ChkDayTime(tFestivalSpring2016_Booming_Cont["ReceivePackTime"]) or not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityAllTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	--已经领取
	local nReceiveCode = Get_SysDynaGlobalData4(nFestivalSpring2016_Booming_DynaGlobal)
	if nReceiveCode == 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tFestivalSpring2016_Booming_Text["NoSpace"])
		return
	end
	
	Sys_SetSynaGlobalData4(nFestivalSpring2016_Booming_DynaGlobal,1)
	local nItemIdBigPack = tFestivalSpring2016_Booming_ItemId["BigPack"]
	if not Item_AddNewItem(nItemIdBigPack,"") then
		return
	end
	local sLog = tFestivalSpring2016_Booming_Log["GetBigPack"]
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(tFestivalSpring2016_Booming_Text["ReceiveBigPack"])
	Sys_TalkBroadcast(string.format(tFestivalSpring2016_Booming_Text["TellAllPlayer"],Get_UserName(nUserId)))
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

--查询昨日最强外卖王
function FestivalSpring2016_Booming_ReSetYestodayText(nNpcId)
	local sUserName = Get_SysDynaGlobalDataStr1(nFestivalSpring2016_Booming_DynaGlobal)
	tNpcGossip[nNpcId]["Text341"] = string.format(tFestivalSpring2016_Booming_Text[nNpcId]["Text341"],sUserName)
end

--上交食材
function FestivalSpring2016_Booming_SubmitMet(nNpcId,nNum)
	--活动时间外
	if not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	local nItemIdGoodluck = tFestivalSpring2016_Booming_ItemId["GoodLuck"]
	local nItemIdFish = tFestivalSpring2016_Booming_ItemId["Fish"]
	local nItemIdTofu = tFestivalSpring2016_Booming_ItemId["Tofu"]
	
	
	--没有足够的食材
	if not Item_ChkMulItem(nItemIdFish,nItemIdFish,nNum) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--没有足够的食材
	if not Item_ChkMulItem(nItemIdTofu,nItemIdTofu,nNum) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tFestivalSpring2016_Booming_Text["NoSpace"])
		return
	end
	if not Item_DelMulItem(nItemIdFish,nItemIdFish,nNum) then
		return
	end
	if not Item_DelMulItem(nItemIdTofu,nItemIdTofu,nNum) then
		return
	end
	local sAttr = string.format(tFestivalSpring2016_Booming_Cont["AwardGoodLuck"],nNum)
	if not Item_AddNewItem(nItemIdGoodluck,sAttr) then
		return
	end
	local sLog = string.format(tFestivalSpring2016_Booming_Log["SubmitFoodMeta"],nNum,nNum,nNum)
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(tFestivalSpring2016_Booming_Text["GetFood"])
	User_EffectAdd("self","angelwing")
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	
end


--重设今日外卖谁最强文字
function FestivalSpring2016_Booming_ReSetTodayText(nNpcId)
	local sUserName = Get_SysDynaGlobalDataStr0(nFestivalSpring2016_Booming_DynaGlobal)
	tNpcGossip[nNpcId]["Text271"] = string.format(tFestivalSpring2016_Booming_Text[nNpcId]["Text271"],sUserName)
end

--怪物掉落
function FestivalSpring2016_Booming_MonsterDie()
	local nEvent = tFestivalSpring2016_Booming_Stc["EventType"]
	local nTaskDataType = tFestivalSpring2016_Booming_Stc["DataType"]["TaskProc"]
	local nTipDataType = tFestivalSpring2016_Booming_Stc["DataType"]["Tip"]
	local nItemIdFish = tFestivalSpring2016_Booming_ItemId["Fish"]
	--白玉豆腐
	local nItemIdTofu = tFestivalSpring2016_Booming_ItemId["Tofu"]
	--活动时间外
	if not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"]) then
		return
	end
	
	--不在任务阶段
	if Task_ChkStcValue(nEvent,nTaskDataType,"==",0) then

		return
	end
	
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tFestivalSpring2016_Booming_Text["NoSpace"])
		return
	end
	
	local flat,tItem = Probabil_RandomAward(tFestivalSpring2016_Booming_Prob[2742],1)
	local nItemId = tItem[1]["tAward"][1]["Item_1"]
	
	--无任何任务物品产出
	if nItemId == 0 then

		return
	end
	
	if not Item_AddNewItem(nItemId,"") then
		return
	end
	local sLog = string.format(tFestivalSpring2016_Booming_Log["AddMeta"],nItemId)
	User_TalkChannel2005(tFestivalSpring2016_Booming_Text["GetItem"][nItemId])
	Sys_SaveActionFestivalLog(sLog)
	--如果已经提示过了
	if not Task_ChkStcValue(nEvent,nTipDataType,"==",0) then
		return
	end
	
	if Item_ChkItem(nItemIdFish) and Item_ChkItem(nItemIdTofu) then
		Task_SetStatistic(nEvent,nTipDataType,1,1)
		Task_SetStcTimestamp(nEvent,nTipDataType,0)
		local nNpcRoyalId = tFestivalSpring2016_Booming_Cont["NpcRoyalId"]
		Sys_MsgBox(tFestivalSpring2016_Booming_Text["ShowTip"],"FestivalSpring2016_Booming_FindWayToNpc</N>"..nNpcRoyalId)
	end
	
end

--时间自检
function FestivalSpring2016_Booming_SysChk()
	
	if Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityAllTime"]) then
		--服务器掩码设置
		local nYesterDayNum = Get_SysDynaGlobalData0(nFestivalSpring2016_Booming_DynaGlobal)
		local nYseterDayUserId = Get_SysDynaGlobalData1(nFestivalSpring2016_Booming_DynaGlobal)
		local nYesterDayName = Get_SysDynaGlobalDataStr0(nFestivalSpring2016_Booming_DynaGlobal)
		
		Sys_SetSynaGlobalData0(nFestivalSpring2016_Booming_DynaGlobal,0)
		Sys_SetSynaGlobalData1(nFestivalSpring2016_Booming_DynaGlobal,0)
		Sys_SetSynaGlobalDataStr0(nFestivalSpring2016_Booming_DynaGlobal,tFestivalSpring2016_Booming_Text["TheDefaultName"])
		
		Sys_SetSynaGlobalData2(nFestivalSpring2016_Booming_DynaGlobal,nYesterDayNum)
		Sys_SetSynaGlobalData3(nFestivalSpring2016_Booming_DynaGlobal,nYseterDayUserId)
		Sys_SetSynaGlobalDataStr1(nFestivalSpring2016_Booming_DynaGlobal,nYesterDayName)
		
		Sys_SetSynaGlobalData4(nFestivalSpring2016_Booming_DynaGlobal,0)
	end
end

--使用新年大礼包
function FestivalSpring2016_Booming_UseBigPack(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	local nItemZhuId = tFestivalSpring2016_Booming_ItemId["Zhu"]
	if not Item_AddNewItem(nItemZhuId,"") then
		return
	end
	local sLog = tFestivalSpring2016_Booming_Log["OpenPack"]
	User_TalkChannel2005(tFestivalSpring2016_Booming_Text["OpenBigPack"])
	Sys_SaveActionFestivalLog(sLog)
	
end
--检查鸿运当头是否可被食用
function FestivalSpring2016_Booming_ChkCanEat()
	local nEvent = tFestivalSpring2016_Booming_Stc["EventType"]
	local nType = tFestivalSpring2016_Booming_Stc["DataType"]["EatFood"]
	
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		--已经隔天
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			return true
		end
		--已经使用了3次了
		if Task_ChkStcValue(nEvent,nType,">=",3) then
			return false
		end
	end
	return true
end

--使用鸿运当头
function FestivalSpring2016_Booming_UseGoodLuck(nItemId)
	--活动时间前
	if Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["BeforeActivityTime"]) then
		User_TalkChannel2005(tFestivalSpring2016_Booming_Text["BeforeTime"])
		return
	end
	--活动时间后
	if not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"]) then
		local sDelLog = string.format(tFestivalSpring2016_Booming_Log["DelMeta"],nItemId)
		Sys_SaveActionFestivalLog(sDelLog)
		if not Item_ChkItem(nItemId) then
			return
		end
		if not Item_DelItem(nItemId) then
			return
		end

		User_TalkChannel2005(tFestivalSpring2016_Booming_Text["OverTime"])
		return
	end
	
	--如果不能再使用了
	if not FestivalSpring2016_Booming_ChkCanEat() then
		User_TalkChannel2005(tFestivalSpring2016_Booming_Text["OverThree"])
		return
	end
	local nEvent = tFestivalSpring2016_Booming_Stc["EventType"]
	local nType = tFestivalSpring2016_Booming_Stc["DataType"]["EatFood"]
	Task_AddStatistic(nEvent,nType,1,1)
	
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	local nUserLev = Get_UserLevel()
	
	local nExp = tFestivalSpring2016_Booming_Cont["AwardExp"]
	local nBless = tFestivalSpring2016_Booming_Cont["AwardBless"]
	local sLog = ""
	if nUserLev < G_User_MaxLev then
		User_AddExpTime(nExp)
		User_AddBless(nBless)
		User_TalkChannel2005(tFestivalSpring2016_Booming_Text["EatFoodWithExp"])
		sLog = tFestivalSpring2016_Booming_Log["EatFoodWithExp"]
	else
		User_AddBless(nBless)
		User_TalkChannel2005(tFestivalSpring2016_Booming_Text["EatFoodNoExp"])
		sLog = tFestivalSpring2016_Booming_Log["EatFoodNoExp"]
	end
	User_EffectAdd("self","angelwing")
	Sys_SaveActionFestivalLog(sLog)
	
end

function FestivalSpring2016_Booming_UseMeta(nItemId)
	--活动时间前
	if Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["BeforeActivityTime"]) then
		User_TalkChannel2005(tFestivalSpring2016_Booming_Text["BeforeTime"])
		return
	end
	--活动时间后
	if not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"]) then
		if not Item_ChkItem(nItemId) then
			return
		end
		if not Item_DelItem(nItemId) then
			return
		end
		local sLog = string.format(tFestivalSpring2016_Booming_Log["DelMeta"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tFestivalSpring2016_Booming_Text["OverTime"])
		return
	end
	local nNpcRoyalId = tFestivalSpring2016_Booming_Cont["NpcRoyalId"]
	Sys_MsgBox(tFestivalSpring2016_Booming_Text["ItemShowTip"],"FestivalSpring2016_Booming_FindWayToNpc</N>"..nNpcRoyalId)

end

function FestivalSpring2016_Booming_FindWayToNpc(nNpcId)
	if not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"]) then
		return
	end
	Sys_GotoSomeWhere(tFestivalSpring2016_Booming_Cont[nNpcId][2],tFestivalSpring2016_Booming_Cont[nNpcId][3],tFestivalSpring2016_Booming_Cont[nNpcId][1],nNpcId)
end

function FestivalSpring2016_Booming_WhoTheBest(nNpcId)
	local nMostUserId = Get_SysDynaGlobalData1(nFestivalSpring2016_Booming_DynaGlobal)
	
	--今天还没有人提交
	if nMostUserId == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-9")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-7")
end

function FestivalSpring2016_Booming_ChkYes()
	local nMostUserId = Get_SysDynaGlobalData3(nFestivalSpring2016_Booming_DynaGlobal)

	return nMostUserId ~= 0
end


---------------------------------------------------npc模块------------------------------------------------------------
-------------npc 皇帝
tNpcFace[3351] = 87
tNpcGossip[17303] = tNpcGossip[17303] or DefaultNpc:new{}
tNpcGossip[17303]["OptionHidden"] = 1

--活动时间前
tNpcGossip[17303]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[17303]["Text111"] = tFestivalSpring2016_Booming_Text[17303]["Text111"]
tNpcGossip[17303]["Text112"] = tFestivalSpring2016_Booming_Text[17303]["Text112"]
tNpcGossip[17303]["Text113"] = tFestivalSpring2016_Booming_Text[17303]["Text113"]
tNpcGossip[17303]["Text114"] = tFestivalSpring2016_Booming_Text[17303]["Text114"]
tNpcGossip[17303]["Text115"] = tFestivalSpring2016_Booming_Text[17303]["Text115"]
tNpcGossip[17303]["tOption1-1"] = {1}
tNpcGossip[17303]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["BeforeActivityTime"])
end
tNpcGossip[17303]["Option1"] = tFestivalSpring2016_Booming_Text[17303]["Option1"]


--活动中 满足等级要求
tNpcGossip[17303]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[17303]["Text121"] = tFestivalSpring2016_Booming_Text[17303]["Text121"]
tNpcGossip[17303]["Text122"] = tFestivalSpring2016_Booming_Text[17303]["Text122"]
tNpcGossip[17303]["Text123"] = tFestivalSpring2016_Booming_Text[17303]["Text123"]
tNpcGossip[17303]["Text124"] = tFestivalSpring2016_Booming_Text[17303]["Text124"]
tNpcGossip[17303]["Text125"] = tFestivalSpring2016_Booming_Text[17303]["Text125"]
tNpcGossip[17303]["tOption1-2"] = {2,3,4,5,6,7}
tNpcGossip[17303]["ChkFunc1-2"] = function()
	--不在活动时间内
	if not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"]) then
		return false
	end
	--不在等级要求内
	if not User_JudgeLevelAndMetempsychosis(tFestivalSpring2016_Booming_Cont["MinLevel"],tFestivalSpring2016_Booming_Cont["MinMeto"]) then
		return false
	end
	return true
end

--这事就交给我吧
tNpcGossip[17303]["Option2"] = tFestivalSpring2016_Booming_Text[17303]["Option2"]
tNpcGossip[17303]["OptionFunc2"]="FestivalSpring2016_Booming_AcceptTask</N>17303"
tNpcGossip[17303]["OptionChkFunc2"] = function()
	return FestivalSpring2016_Booming_CheckTaskStatus(0)
end

--上交新年大餐
tNpcGossip[17303]["Option3"] = tFestivalSpring2016_Booming_Text[17303]["Option3"]
tNpcGossip[17303]["OptionPoint3"]="2-2"
tNpcGossip[17303]["OptionChkFunc3"] = function()
	return not FestivalSpring2016_Booming_CheckTaskStatus(0)
end

--领取新年大礼包
tNpcGossip[17303]["Option4"] = tFestivalSpring2016_Booming_Text[17303]["Option4"]
tNpcGossip[17303]["OptionFunc4"]="FestivalSpring2016_Booming_GetBigPack</N>17303"
tNpcGossip[17303]["OptionChkFunc4"] = function()
	return Sys_ChkDayTime(tFestivalSpring2016_Booming_Cont["ReceivePackTime"])
end

--找大餐哪家强
tNpcGossip[17303]["Option5"] = tFestivalSpring2016_Booming_Text[17303]["Option5"]
tNpcGossip[17303]["OptionFunc5"]="FestivalSpring2016_Booming_WhoTheBest</N>17303"
tNpcGossip[17303]["OptionChkFunc5"] = function()
	return Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"])
end
tNpcGossip[17303]["OptionPoint5"]="2-7"

--鸿运当头？
tNpcGossip[17303]["Option6"] = tFestivalSpring2016_Booming_Text[17303]["Option6"]
tNpcGossip[17303]["OptionPoint6"]="2-8"

--就此别过
tNpcGossip[17303]["Option7"] = tFestivalSpring2016_Booming_Text[17303]["Option7"]


--活动中 不满足等级要求
tNpcGossip[17303]["Text1-3"] = {131}
tNpcGossip[17303]["Text131"] = tFestivalSpring2016_Booming_Text[17303]["Text131"]
tNpcGossip[17303]["tOption1-3"] = {8}
tNpcGossip[17303]["ChkFunc1-3"] = function()
	--不在活动时间内
	if not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"]) then
		return false
	end
	--在等级要求内
	if User_JudgeLevelAndMetempsychosis(tFestivalSpring2016_Booming_Cont["MinLevel"],tFestivalSpring2016_Booming_Cont["MinMeto"]) then
		return false
	end
	return true
end
tNpcGossip[17303]["Option8"] = tFestivalSpring2016_Booming_Text[17303]["Option8"]

--活动时间后
tNpcGossip[17303]["Text1-4"] = {141}
tNpcGossip[17303]["Text141"] = tFestivalSpring2016_Booming_Text[17303]["Text141"]
tNpcGossip[17303]["tOption1-4"] = {4,5,7}
tNpcGossip[17303]["ChkFunc1-4"] = function()
	return not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"]) and not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["BeforeActivityTime"])
end


--接活动中->这事就交给我吧！
tNpcGossip[17303]["Text2-1"] = {211}
tNpcGossip[17303]["Text211"] = tFestivalSpring2016_Booming_Text[17303]["Text211"]
tNpcGossip[17303]["tOption2-1"] = {9}
tNpcGossip[17303]["Option9"] = tFestivalSpring2016_Booming_Text[17303]["Option9"]
tNpcGossip[17303]["OptionFunc9"]="Sys_GotoSomeWhere</N>300</N>400</N>1002"


tNpcGossip[17303]["Text2-2"] = {221}
tNpcGossip[17303]["Text221"] = tFestivalSpring2016_Booming_Text[17303]["Text221"]
tNpcGossip[17303]["tOption2-2"] = {10,11,12,13,14}
--上交1份
tNpcGossip[17303]["Option10"] = tFestivalSpring2016_Booming_Text[17303]["Option10"]
tNpcGossip[17303]["OptionFunc10"]="FestivalSpring2016_Booming_SubmitFood</N>17303</N>1"
--上交10份
tNpcGossip[17303]["Option11"] = tFestivalSpring2016_Booming_Text[17303]["Option11"]
tNpcGossip[17303]["OptionFunc11"]="FestivalSpring2016_Booming_SubmitFood</N>17303</N>10"
--上交20份
tNpcGossip[17303]["Option12"] = tFestivalSpring2016_Booming_Text[17303]["Option12"]
tNpcGossip[17303]["OptionFunc12"]="FestivalSpring2016_Booming_SubmitFood</N>17303</N>20"
--上交100份
tNpcGossip[17303]["Option13"] = tFestivalSpring2016_Booming_Text[17303]["Option13"]
tNpcGossip[17303]["OptionFunc13"]="FestivalSpring2016_Booming_SubmitFood</N>17303</N>100"
--离开
tNpcGossip[17303]["Option14"] = tFestivalSpring2016_Booming_Text[17303]["Option14"]

--接活动中->领取新年大礼包 成功
tNpcGossip[17303]["Text2-3"] = {231}
tNpcGossip[17303]["Text231"] = tFestivalSpring2016_Booming_Text[17303]["Text231"]
tNpcGossip[17303]["tOption2-3"] = {15}
tNpcGossip[17303]["Option15"] = tFestivalSpring2016_Booming_Text[17303]["Option15"]

--接活动中->领取新年大礼包 失败 无资格
tNpcGossip[17303]["Text2-4"] = {241}
tNpcGossip[17303]["Text241"] = tFestivalSpring2016_Booming_Text[17303]["Text241"]
tNpcGossip[17303]["tOption2-4"] = {16}
tNpcGossip[17303]["Option16"] = tFestivalSpring2016_Booming_Text[17303]["Option16"]

--接活动中->领取新年大礼包 失败 已领取
tNpcGossip[17303]["Text2-5"] = {251}
tNpcGossip[17303]["Text251"] = tFestivalSpring2016_Booming_Text[17303]["Text251"]
tNpcGossip[17303]["tOption2-5"] = {17}
tNpcGossip[17303]["Option17"] = tFestivalSpring2016_Booming_Text[17303]["Option17"]

--接活动中->领取新年大礼包 失败 超过领奖时间
tNpcGossip[17303]["Text2-6"] = {261}
tNpcGossip[17303]["Text261"] = tFestivalSpring2016_Booming_Text[17303]["Text261"]
tNpcGossip[17303]["tOption2-6"] = {18}
tNpcGossip[17303]["Option18"] = tFestivalSpring2016_Booming_Text[17303]["Option18"]

--接活动中->找大餐谁家强？有人获得
tNpcGossip[17303]["Text2-7"] = {271}
tNpcGossip[17303]["Text271"] = tFestivalSpring2016_Booming_Text[17303]["Text271"]
tNpcGossip[17303]["tOption2-7"] = {19,20,21}
tNpcGossip[17303]["ChkFunc2-7"] = function()
	FestivalSpring2016_Booming_ReSetTodayText(17303)
	return true
end


--查询昨日最强外卖王
tNpcGossip[17303]["Option19"] = tFestivalSpring2016_Booming_Text[17303]["Option19"]
tNpcGossip[17303]["OptionPoint19"]="3-4"
tNpcGossip[17303]["OptionChkFunc19"] = function()
	return FestivalSpring2016_Booming_ChkYes(17303)
end

--我想问点别的
tNpcGossip[17303]["Option20"] = tFestivalSpring2016_Booming_Text[17303]["Option20"]
tNpcGossip[17303]["OptionPoint20"]="1-2"

tNpcGossip[17303]["Option21"] = tFestivalSpring2016_Booming_Text[17303]["Option21"]


--接活动中->“鸿运当头”？ 
tNpcGossip[17303]["Text2-8"] = {281,282}
tNpcGossip[17303]["Text281"] = tFestivalSpring2016_Booming_Text[17303]["Text281"]
tNpcGossip[17303]["Text282"] = tFestivalSpring2016_Booming_Text[17303]["Text282"]
tNpcGossip[17303]["tOption2-8"] = {22,23,24}

--新年礼包
tNpcGossip[17303]["Option22"] = tFestivalSpring2016_Booming_Text[17303]["Option22"]
tNpcGossip[17303]["OptionPoint22"]="3-5"

--上一页
tNpcGossip[17303]["Option23"] = tFestivalSpring2016_Booming_Text[17303]["Option23"]
tNpcGossip[17303]["OptionPoint23"]="1-2"

tNpcGossip[17303]["Option24"] = tFestivalSpring2016_Booming_Text[17303]["Option24"]


tNpcGossip[17303]["Text2-9"] = {291,292}
tNpcGossip[17303]["Text291"] = tFestivalSpring2016_Booming_Text[17303]["Text291"]
tNpcGossip[17303]["Text292"] = tFestivalSpring2016_Booming_Text[17303]["Text292"]
tNpcGossip[17303]["tOption2-9"] = {291}
tNpcGossip[17303]["Option291"] = tFestivalSpring2016_Booming_Text[17303]["Option291"]



--接活动中->上交新年大餐。 成功
tNpcGossip[17303]["Text3-1"] = {311,312}
tNpcGossip[17303]["Text311"] = tFestivalSpring2016_Booming_Text[17303]["Text311"]
tNpcGossip[17303]["Text312"] = tFestivalSpring2016_Booming_Text[17303]["Text312"]
tNpcGossip[17303]["tOption3-1"] = {25}
tNpcGossip[17303]["Option25"] = tFestivalSpring2016_Booming_Text[17303]["Option25"]

--接活动中->上交新年大餐。当日已获得过礼包
tNpcGossip[17303]["Text3-2"] = {321}
tNpcGossip[17303]["Text321"] = tFestivalSpring2016_Booming_Text[17303]["Text321"]
tNpcGossip[17303]["tOption3-2"] = {26}
tNpcGossip[17303]["Option26"] = tFestivalSpring2016_Booming_Text[17303]["Option26"]

--接活动中->上交新年大餐。 无任务物品
tNpcGossip[17303]["Text3-3"] = {331}
tNpcGossip[17303]["Text331"] = tFestivalSpring2016_Booming_Text[17303]["Text331"]
tNpcGossip[17303]["tOption3-3"] = {27}
tNpcGossip[17303]["Option27"] = tFestivalSpring2016_Booming_Text[17303]["Option27"]



--接活动中->找大餐谁家强？->查询昨日最强外卖王。
tNpcGossip[17303]["Text3-4"] = {341}
tNpcGossip[17303]["Text341"] = tFestivalSpring2016_Booming_Text[17303]["Text341"]
tNpcGossip[17303]["tOption3-4"] = {28}
tNpcGossip[17303]["ChkFunc3-4"] = function()
	FestivalSpring2016_Booming_ReSetYestodayText(17303)
	return true
end
tNpcGossip[17303]["Option28"] = tFestivalSpring2016_Booming_Text[17303]["Option28"]

--接活动->“鸿运当头”？-新年红包？
tNpcGossip[17303]["Text3-5"] = {351,352}
tNpcGossip[17303]["Text351"] = tFestivalSpring2016_Booming_Text[17303]["Text351"]
tNpcGossip[17303]["Text352"] = tFestivalSpring2016_Booming_Text[17303]["Text352"]
tNpcGossip[17303]["tOption3-5"] = {29,30}

--我想问点别的
tNpcGossip[17303]["Option29"] = tFestivalSpring2016_Booming_Text[17303]["Option29"]
tNpcGossip[17303]["OptionPoint29"]="2-8"

tNpcGossip[17303]["Option30"] = tFestivalSpring2016_Booming_Text[17303]["Option30"]



--NPC 宫廷御厨
tNpcFace[3352] = 84
tNpcGossip[17304] = tNpcGossip[17304] or DefaultNpc:new{}
tNpcGossip[17304]["OptionHidden"] = 1


--活动时间前
tNpcGossip[17304]["Text1-1"] = {111,112}
tNpcGossip[17304]["Text111"] = tFestivalSpring2016_Booming_Text[17304]["Text111"]
tNpcGossip[17304]["Text112"] = tFestivalSpring2016_Booming_Text[17304]["Text112"]
tNpcGossip[17304]["tOption1-1"] = {1}
tNpcGossip[17304]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["BeforeActivityTime"])
end
tNpcGossip[17304]["Option1"] = tFestivalSpring2016_Booming_Text[17304]["Option1"]


--活动中,等级满足要求
tNpcGossip[17304]["Text1-2"] = {121,122}
tNpcGossip[17304]["Text121"] = tFestivalSpring2016_Booming_Text[17304]["Text121"]
tNpcGossip[17304]["Text122"] = tFestivalSpring2016_Booming_Text[17304]["Text122"]
tNpcGossip[17304]["tOption1-2"] = {2,3}
tNpcGossip[17304]["ChkFunc1-2"] = function()
	--不在活动时间内
	if not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"]) then
		return false
	end
	--在等级要求内
	if not User_JudgeLevelAndMetempsychosis(tFestivalSpring2016_Booming_Cont["MinLevel"],tFestivalSpring2016_Booming_Cont["MinMeto"]) then
		return false
	end
	return true
end
--上交食材
tNpcGossip[17304]["Option2"] = tFestivalSpring2016_Booming_Text[17304]["Option2"]
tNpcGossip[17304]["OptionPoint2"] = "2-1"

tNpcGossip[17304]["Option3"] = tFestivalSpring2016_Booming_Text[17304]["Option3"]


--活动中，等级不满足
tNpcGossip[17304]["Text1-3"] = {131}
tNpcGossip[17304]["Text131"] = tFestivalSpring2016_Booming_Text[17304]["Text131"]
tNpcGossip[17304]["tOption1-3"] = {131}
tNpcGossip[17304]["Option131"] = tFestivalSpring2016_Booming_Text[17304]["Option131"]
tNpcGossip[17304]["ChkFunc1-3"] = function()
	--不在活动时间内
	if not Sys_ChkFullTime(tFestivalSpring2016_Booming_Cont["ActivityTime"]) then
		return false
	end
	--在等级要求内
	if User_JudgeLevelAndMetempsychosis(tFestivalSpring2016_Booming_Cont["MinLevel"],tFestivalSpring2016_Booming_Cont["MinMeto"]) then
		return false
	end
	return true
end


--活动后
tNpcGossip[17304]["Text1-4"] = {141}
tNpcGossip[17304]["Text141"] = tFestivalSpring2016_Booming_Text[17304]["Text141"]
tNpcGossip[17304]["tOption1-4"] = {141}
tNpcGossip[17304]["Option141"] = tFestivalSpring2016_Booming_Text[17304]["Option141"]


tNpcGossip[17304]["Text2-1"] = {211}
tNpcGossip[17304]["Text211"] = tFestivalSpring2016_Booming_Text[17304]["Text211"]
tNpcGossip[17304]["tOption2-1"] = {5,6,7,8,9}

--上交1份
tNpcGossip[17304]["Option5"] = tFestivalSpring2016_Booming_Text[17304]["Option5"]
tNpcGossip[17304]["OptionFunc5"]="FestivalSpring2016_Booming_SubmitMet</N>17304</N>1"

--上交10份
tNpcGossip[17304]["Option6"] = tFestivalSpring2016_Booming_Text[17304]["Option6"]
tNpcGossip[17304]["OptionFunc6"]="FestivalSpring2016_Booming_SubmitMet</N>17304</N>10"

--上交20份
tNpcGossip[17304]["Option7"] = tFestivalSpring2016_Booming_Text[17304]["Option7"]
tNpcGossip[17304]["OptionFunc7"]="FestivalSpring2016_Booming_SubmitMet</N>17304</N>20"

--上交100份
tNpcGossip[17304]["Option8"] = tFestivalSpring2016_Booming_Text[17304]["Option8"]
tNpcGossip[17304]["OptionFunc8"]="FestivalSpring2016_Booming_SubmitMet</N>17304</N>100"

tNpcGossip[17304]["Option9"] = tFestivalSpring2016_Booming_Text[17304]["Option9"]

--接活动中->上交食材。 成功
tNpcGossip[17304]["Text3-1"] = {311,312}
tNpcGossip[17304]["Text311"] = tFestivalSpring2016_Booming_Text[17304]["Text311"]
tNpcGossip[17304]["Text312"] = tFestivalSpring2016_Booming_Text[17304]["Text312"]
tNpcGossip[17304]["tOption3-1"] = {10}
tNpcGossip[17304]["Option10"] = tFestivalSpring2016_Booming_Text[17304]["Option10"]
tNpcGossip[17304]["OptionFunc10"]="FestivalSpring2016_Booming_FindWayToNpc</N>17303"

--接活动中->上交食材。 失败 食材不足
tNpcGossip[17304]["Text3-2"] = {321}
tNpcGossip[17304]["Text321"] = tFestivalSpring2016_Booming_Text[17304]["Text321"]
tNpcGossip[17304]["tOption3-2"] = {11}
tNpcGossip[17304]["Option11"] = tFestivalSpring2016_Booming_Text[17304]["Option11"]


------------------------------------------------物品模块--------------------------------------------------
--新年大礼包
tItem[3007656] = tItem[3007656] or {}
tItem[3007656]["Function"] = function(nItemId, sItemName)
	FestivalSpring2016_Booming_UseBigPack(nItemId)
end

--鸿运当头
tItem[3007655] = tItem[3007655] or {}
tItem[3007655]["Function"] = function(nItemId, sItemName)
	FestivalSpring2016_Booming_UseGoodLuck(nItemId)
end


--无骨鲜鱼
tItem[3007653] = tItem[3007653] or {}
tItem[3007653]["Function"] = function(nItemId, sItemName)
	FestivalSpring2016_Booming_UseMeta(nItemId)
end

--白玉豆腐
tItem[3007654] = tItem[3007654] or {}
tItem[3007654]["Function"] = function(nItemId, sItemName)
	FestivalSpring2016_Booming_UseMeta(nItemId)
end


------------------------------------------------怪物模块--------------------------------------------------


-- 2742 美食叫天鸡
--tMonster[2742] = tMonster[2742] or {}
--tMonster[2742]["tFunction"] = tMonster[2742]["tFunction"] or {}
--table.insert(tMonster[2742]["tFunction"],FestivalSpring2016_Booming_MonsterDie)


-----------------------------------------------时间触发---------------------------------------------------

--tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
--table.insert(tOntimerMin_HM[0000],FestivalSpring2016_Booming_SysChk)







