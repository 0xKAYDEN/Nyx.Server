------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]日常活动减负-造化重生重新制作
--Purpose:	日常活动减负-造化重生重新制作
--Creator: 	兰瑞妹
--Created:	2016/05/03
------------------------------------------------------------------------------------

-- 命名前缀
-- WeekTask_NatureOfRebirth

-- #stc 掩码说明 
-- #stc(144,97) 玩家完成次数 == 1炼制一次完成，==2获得额外炼制，==3额外炼制次数完成
-- #stc(145,06) 存上交材料 == 1流星卷 == 2宝石 == 3杜康酒  ==4祖母绿

-- 常量表
local tWeekTask_NatureOfRebirth_Count = {}
	-- 玩家等级要求
	tWeekTask_NatureOfRebirth_Count["Metempsychosis"] = 1
	tWeekTask_NatureOfRebirth_Count["Level"] = 75
	
	tWeekTask_NatureOfRebirth_Count["TaskId"] = 6462
	
	-- 任务需要物品
	-- 百炼天机果
	tWeekTask_NatureOfRebirth_Count["MysteryFruit"] = 3001044
	
	--tWeekTask_NatureOfRebirth_Count["LogId"] = 10002345
	-- 刷新物品类型
	tWeekTask_NatureOfRebirth_Count["EMoneyRefresh"] = 3
	-- 直接完成任务
	tWeekTask_NatureOfRebirth_Count["EMoneyFinishTask"] = 9
	-- VIP购买次数
	tWeekTask_NatureOfRebirth_Count["EMoneyVIPBuy"] = 188
	
	--emoneybuyid
	tWeekTask_NatureOfRebirth_Count["EmoneyFirstID"] = 4344
	tWeekTask_NatureOfRebirth_Count["EmoneyEndID"] = 4349
	
	tWeekTask_NatureOfRebirth_Count["Achievement"] = 11024
	
-- Log表
local tWeekTask_NatureOfRebirth_Log = {}
	-- 上交物品获得奖励
	tWeekTask_NatureOfRebirth_Log["HandItemAward"] = "0,0,%d,%d,10002345,2,%d[3001044],3[1]"
	-- 天石完成获得奖励
	tWeekTask_NatureOfRebirth_Log["EmoneyBuyAward"] = "9,0,0,0,10002345,2,%d[3001044],3[1]"
	-- Emoney Buy 
	tWeekTask_NatureOfRebirth_Log["EMoneyAward"] = "350	4126	0	0	1	"
	tWeekTask_NatureOfRebirth_Log["EMoneyRefresh"] = "350	4127	3	3	1	"
	tWeekTask_NatureOfRebirth_Log["EMoneyFinishTask"] = "350	4160	9	9	1	"
	tWeekTask_NatureOfRebirth_Log["EMoneyVIPBuy"] = "350	4125	188	188	1	"
	
-- stc掩码
local tWeekTask_NatureOfRebirth_Stc = {}
	tWeekTask_NatureOfRebirth_Stc[1] = {}
	tWeekTask_NatureOfRebirth_Stc[1]["EventType"] = 144
	tWeekTask_NatureOfRebirth_Stc[1]["DataType"] = 97
	
	tWeekTask_NatureOfRebirth_Stc[2] = {}
	tWeekTask_NatureOfRebirth_Stc[2]["EventType"] = 145
	tWeekTask_NatureOfRebirth_Stc[2]["DataType"] = 06
	
-- 特效
local tWeekTask_NatureOfRebirth_Effect = {}
	-- 付费直接集满【重要】
	tWeekTask_NatureOfRebirth_Effect[1] = {}
	tWeekTask_NatureOfRebirth_Effect[1]["EffectObj"] = "self"
	tWeekTask_NatureOfRebirth_Effect[1]["Effect"] = "zf2-e128"

-- 上交物品
local tWeekTask_NatureOfRebirth_HandItem = {}
	tWeekTask_NatureOfRebirth_HandItem[1] = {}
	tWeekTask_NatureOfRebirth_HandItem[1]["NameIndex"] = "MeteorScroll"
	tWeekTask_NatureOfRebirth_HandItem[1]["AwardItemId"] = 3004895
	tWeekTask_NatureOfRebirth_HandItem[1]["HandItemId"] = 720027
	tWeekTask_NatureOfRebirth_HandItem[1]["HandItemNum"] = 2
	tWeekTask_NatureOfRebirth_HandItem[2] = {}
	tWeekTask_NatureOfRebirth_HandItem[2]["NameIndex"] = "Gem"
	tWeekTask_NatureOfRebirth_HandItem[2]["AwardItemId"] = 3004897
	tWeekTask_NatureOfRebirth_HandItem[2]["HandItemId"] = 700002
	tWeekTask_NatureOfRebirth_HandItem[2]["HandItemNum"] = 2
	tWeekTask_NatureOfRebirth_HandItem[3] = {}
	tWeekTask_NatureOfRebirth_HandItem[3]["NameIndex"] = "HealthWine"
	tWeekTask_NatureOfRebirth_HandItem[3]["AwardItemId"] = 3004898
	tWeekTask_NatureOfRebirth_HandItem[3]["HandItemId"] = 723030
	tWeekTask_NatureOfRebirth_HandItem[3]["HandItemNum"] = 10
	tWeekTask_NatureOfRebirth_HandItem[4] = {}
	tWeekTask_NatureOfRebirth_HandItem[4]["NameIndex"] = "Emerald"
	tWeekTask_NatureOfRebirth_HandItem[4]["AwardItemId"] = 3004896
	tWeekTask_NatureOfRebirth_HandItem[4]["HandItemId"] =1080001
	tWeekTask_NatureOfRebirth_HandItem[4]["HandItemNum"] = 10
	
--------------------------------------逻辑部分-------------------------------------------
-- 判断过一周清掩码
function WeekTask_NatureOfRebirth_OverWeekStc()
	local nEvent = tWeekTask_NatureOfRebirth_Stc[1]["EventType"]
	local nType = tWeekTask_NatureOfRebirth_Stc[1]["DataType"]
	local nHandEvent = tWeekTask_NatureOfRebirth_Stc[2]["EventType"]
	local nHandType = tWeekTask_NatureOfRebirth_Stc[2]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,5) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		-- 清理存物品的掩码
		Task_SetStatistic(nHandEvent,nHandType,0,1)
		Task_SetStcTimestamp(nHandEvent,nHandType,0)
		if Task_ChkTaskDetail(tWeekTask_NatureOfRebirth_Count["TaskId"]) then
			Task_DelTaskDetail(tWeekTask_NatureOfRebirth_Count["TaskId"])
		end
	end
end

-- 修改完成掩码
function WeekTask_NatureOfRebirth_AddStc()
	local nEvent = tWeekTask_NatureOfRebirth_Stc[1]["EventType"]
	local nType = tWeekTask_NatureOfRebirth_Stc[1]["DataType"]
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
end

-- 接受挑战
function WeekTask_NatureOfRebirth_AcceptTask(nNpcId)
	local nEvent = tWeekTask_NatureOfRebirth_Stc[1]["EventType"]
	local nType = tWeekTask_NatureOfRebirth_Stc[1]["DataType"]
	
	-- 判断过了一周，清掩码，清理寄存器
	WeekTask_NatureOfRebirth_OverWeekStc()
	
	local nStcData = Get_UserStatisticValue(nEvent,nType)
	-- 当周已完成
	if nStcData == 1 or nStcData == 3 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nData = Get_UserStatisticValue(tWeekTask_NatureOfRebirth_Stc[2]["EventType"],tWeekTask_NatureOfRebirth_Stc[2]["DataType"])
	-- 未随机出内容
	if nData == 0 then
		WeekTask_NatureOfRebirth_Refresh(1,nNpcId)
	else
		WeekTask_NatureOfRebirth_Refresh(2,nNpcId)
	end
end

-- 接考验任务taskid处理
function WeekTask_NatureOfRebirth_AcceptTaskDetail()
	local nTaskId = tWeekTask_NatureOfRebirth_Count["TaskId"]
	if not Task_ChkTaskDetail(nTaskId) then
		-- 上限20个
		if not Task_AddTaskDetail(nTaskId) then
			User_TalkChannel2005(tWeekTask_NatureOfRebirth_Text["NoTask"])
			return false
		end
	end
	
	return true
end

-- 刷新上交的物品索引
function WeekTask_NatureOfRebirth_Remove(nData)
	local tIndex = {1,2,3,4}
	if nData == 0 then
		return math.random(1,4)
	end
	
	table.remove(tIndex,nData)
	local nIndex = math.random(1,3)
	return tIndex[nIndex]
end

-- 刷新考验内容
function WeekTask_NatureOfRebirth_Refresh(nType,nNpcId)
	-- 获得上交内容
	local nHandEvent = tWeekTask_NatureOfRebirth_Stc[2]["EventType"]
	local nHandType = tWeekTask_NatureOfRebirth_Stc[2]["DataType"]
	
	local nData = Get_UserStatisticValue(nHandEvent,nHandType)
	if nType == 1 then
		-- 刷新上交的物品索引
		nData = WeekTask_NatureOfRebirth_Remove(nData)
		Task_SetStatistic(nHandEvent,nHandType,nData,1)
		Task_SetStcTimestamp(nHandEvent,nHandType,0)
	end
	
	-- 接考验任务taskid处理
	if not WeekTask_NatureOfRebirth_AcceptTaskDetail() then
		return
	end
	
	local sStrIndex = tWeekTask_NatureOfRebirth_HandItem[nData]["NameIndex"]
	local sShowText = tWeekTask_NatureOfRebirth_Text[nNpcId]["223"]
	tNpcGossip[nNpcId]["Text223"] = string.format(sShowText,tWeekTask_NatureOfRebirth_Text[sStrIndex]["ItemName"])
	local sCHaText = tWeekTask_NatureOfRebirth_Text[nNpcId]["224"]
	tNpcGossip[nNpcId]["Text224"] = string.format(sCHaText,tWeekTask_NatureOfRebirth_Text[sStrIndex]["Token"])
	-- 刷新上交的物品内容
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 上交物品
function WeekTask_NatureOfRebirth_HandItem(nNpcId)
	-- 判断是否完成
	-- 判断要交的物品,宝石接对话
	local nData = Get_UserStatisticValue(tWeekTask_NatureOfRebirth_Stc[2]["EventType"],tWeekTask_NatureOfRebirth_Stc[2]["DataType"])
	
	if nData == 2 then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	-- 道具判断
	if not WeekTask_NatureOfRebirth_NoHandItem(nNpcId,nData) then
		return
	end
	
	-- 背包空间不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	-- 删除道具给奖励
	local nHandItemId = tWeekTask_NatureOfRebirth_HandItem[nData]["HandItemId"]
	local nHandItemNum = tWeekTask_NatureOfRebirth_HandItem[nData]["HandItemNum"]
	if Item_DelMulItem(nHandItemId,nHandItemId,nHandItemNum) then
		WeekTask_NatureOfRebirth_Award(1)
	end
end

-- 道具不足
function WeekTask_NatureOfRebirth_NoHandItem(nNpcId,nData)
	local nHandItemId = tWeekTask_NatureOfRebirth_HandItem[nData]["HandItemId"]
	local nHandItemNum = tWeekTask_NatureOfRebirth_HandItem[nData]["HandItemNum"]
	-- 道具不足
	if not Item_ChkMulItem(nHandItemId,nHandItemId,nHandItemNum) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	end
	
	return true
end

-- 宝石选择
function WeekTask_NatureOfRebirth_ChkGemNum(nNpcId,nGemId)
	if not Item_ChkMulItem(nGemId,nGemId,2) then
		local sShowText = tWeekTask_NatureOfRebirth_Text[nNpcId]["441"]
		tNpcGossip[nNpcId]["Text441"] = string.format(sShowText,tWeekTask_NatureOfRebirth_Text[nGemId])
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end
	
	-- 日常得积分
	-- if Sys_ChkFullTime(tActivityTime["LinLang"]["ActivityTime"]) then
		-- if not CommonFunc_ChkGoldServer() then
			-- if not User_CheckLeftSpace(1) then
				-- local sShowText = tWeekTask_NatureOfRebirth_Text[nNpcId]["421"]
				-- tNpcGossip[nNpcId]["Text421"] = string.format(sShowText,1)
				-- LinkNpcGossipFunc_New(nNpcId,"4-2")
				-- return
			-- end	
		-- end
	-- end
	
	if Item_DelMulItem(nGemId,nGemId,2) then
		WeekTask_NatureOfRebirth_Award(1,2,nGemId)
	end
end

-- 获得奖励
function WeekTask_NatureOfRebirth_Award(nLogType,nData,nHandItemId)
	-- 掩码判断可否领奖
	local nEvent = tWeekTask_NatureOfRebirth_Stc[1]["EventType"]
	local nType = tWeekTask_NatureOfRebirth_Stc[1]["DataType"]
	
	local nStcData = Get_UserStatisticValue(nEvent,nType)
	if nStcData == 1 or nStcData == 3 then
		return
	end
	
	-- 设置完成掩码
	WeekTask_NatureOfRebirth_AddStc()
	
	-- 完成任务
	if Task_ChkTaskDetail(tWeekTask_NatureOfRebirth_Count["TaskId"]) then
		Task_DelTaskDetail(tWeekTask_NatureOfRebirth_Count["TaskId"])
	end
	
	if nData == nil then
		nData = Get_UserStatisticValue(tWeekTask_NatureOfRebirth_Stc[2]["EventType"],tWeekTask_NatureOfRebirth_Stc[2]["DataType"])
	end
	
	if nHandItemId == nil then
		nHandItemId = tWeekTask_NatureOfRebirth_HandItem[nData]["HandItemId"]
	end
	
	local nAwardItemId = tWeekTask_NatureOfRebirth_HandItem[nData]["AwardItemId"]
	-- 给物品
	Item_AddItem(tWeekTask_NatureOfRebirth_Count["MysteryFruit"])
	Item_AddItem(nAwardItemId,0,3)
	
	--获得随机积分卡
	-- Dailypoint_RewardDraw(8)
	
	local sTalk = tWeekTask_NatureOfRebirth_Text["Success"]
	local sAwardNameIndex = tWeekTask_NatureOfRebirth_HandItem[nData]["NameIndex"]
	local sSaveTalk = string.format(sTalk,tWeekTask_NatureOfRebirth_Text["AwardItemName"],tWeekTask_NatureOfRebirth_Text[sAwardNameIndex]["Token"])
	Sys_MsgBox(sSaveTalk)
	
	local sSavelog = ""
	local nHandItemNum = tWeekTask_NatureOfRebirth_HandItem[nData]["HandItemNum"]
	-- log
	if nLogType == 1 then
		sSavelog = string.format(tWeekTask_NatureOfRebirth_Log["HandItemAward"],nHandItemId,nHandItemNum,nAwardItemId)
	elseif nLogType == 2 then
		sSavelog = string.format(tWeekTask_NatureOfRebirth_Log["EmoneyBuyAward"],nAwardItemId)
	end
	
	Sys_SaveEmoneyBuy(tWeekTask_NatureOfRebirth_Log["EMoneyAward"])
	Sys_SaveActionTaskLog(sSavelog)
	User_EffectAdd(tWeekTask_NatureOfRebirth_Effect[1]["EffectObj"],tWeekTask_NatureOfRebirth_Effect[1]["Effect"])
	
	------------------------------------------------------------------------
	-- 获得成就 60307 11024 优秀果农 完成造化重生任务
	local nAchPos = tWeekTask_NatureOfRebirth_Count["Achievement"]
	local nUserId = Get_UserId()
	if not User_ChkAchByAchPosition(nAchPos,nUserId) then
		User_AddAchByAchPosition(nAchPos,nUserId)
	end
	--------------------------------------------------------------------------
end


-- 更换考验内容
function WeekTask_NatureOfRebirth_ChangeBuySure(nNpcId)
	local nCostEMoney = tWeekTask_NatureOfRebirth_Count["EMoneyRefresh"]
	-- 天石不足
	if not WeekTask_NatureOfRebirth_JudgeEMoney(nNpcId,nCostEMoney,"2-4") then
		return
	end
	
	-- 扣除天石
	if not User_AddEMoney(-nCostEMoney) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	Sys_SaveEmoneyBuy(tWeekTask_NatureOfRebirth_Log["EMoneyRefresh"])
	-- 刷新对话
	WeekTask_NatureOfRebirth_Refresh(1,nNpcId)
end

-- 天石判断
function WeekTask_NatureOfRebirth_JudgeEMoney(nNpcId,nCostEMoney,sLessIndex)
	local nUserEMoney = Get_UserEMoney()
	
	-- 天石不足
	if nUserEMoney < nCostEMoney then
		LinkNpcGossipFunc_New(nNpcId,sLessIndex)
		return false
	end
	
	return true
end

-- 直接完成任务
function WeekTask_NatureOfRebirth_FinishBuySure(nNpcId)
	local nCostEMoney = tWeekTask_NatureOfRebirth_Count["EMoneyFinishTask"]
	-- 天石不足
	if not WeekTask_NatureOfRebirth_JudgeEMoney(nNpcId,nCostEMoney,"2-5") then
		return
	end
	
	-- 背包空间不足
	if not User_CheckLeftSpace(2) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	-- 扣除天石 给奖励
	if not User_AddEMoney(-nCostEMoney) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	Sys_SaveEmoneyBuy(tWeekTask_NatureOfRebirth_Log["EMoneyFinishTask"])
		
	WeekTask_NatureOfRebirth_Award(2)
end

-- VIP购买次数
function WeekTask_NatureOfRebirth_VIPBuyNum(nNpcId)
	-- 判断VIP
	if not (Get_UserVip() > 0) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"3-2")
end

-- 二次确认
function WeekTask_NatureOfRebirth_VIPBuySure(nNpcId)
	local nCostEMoney = tWeekTask_NatureOfRebirth_Count["EMoneyVIPBuy"]
	
	-- 判断VIP
	if not (Get_UserVip() > 0) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 掩码判断
	local nEvent = tWeekTask_NatureOfRebirth_Stc[1]["EventType"]
	local nType = tWeekTask_NatureOfRebirth_Stc[1]["DataType"]
	-- 隔周
	if Task_StcInterval(nEvent,nType,1,5) then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	
	-- 天石不足
	if not WeekTask_NatureOfRebirth_JudgeEMoney(nNpcId,nCostEMoney,"3-3") then
		return
	end
	
	-- 扣除天石
	if not User_AddEMoney(-nCostEMoney) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	Sys_SaveEmoneyBuy(tWeekTask_NatureOfRebirth_Log["EMoneyRefresh"])
		
	-- 重置完成的掩码
	WeekTask_NatureOfRebirth_AddStc()
		
	-- 接考验任务taskid处理
	if not WeekTask_NatureOfRebirth_AcceptTaskDetail() then
		return
	end
		
	-- 刷新对话
	WeekTask_NatureOfRebirth_Refresh(1,nNpcId)
end

--------------------------------------NPC模块-------------------------------------------
-- 东方七宿
tNpcFace[3747] = 73
tNpcFace[5696] = 73
tNpcGossip[18742] = tNpcGossip[18742] or DefaultNpc:new{}
tNpcGossip[18742]["OptionHidden"] = 1
-- 等级不足
tNpcGossip[18742]["Text1-1"] = {111}
tNpcGossip[18742]["Text111"] = tWeekTask_NatureOfRebirth_Text[18742]["111"]
tNpcGossip[18742]["tOption1-1"] = {1}
tNpcGossip[18742]["ChkFunc1-1"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tWeekTask_NatureOfRebirth_Count["Level"],tWeekTask_NatureOfRebirth_Count["Metempsychosis"])
end	

tNpcGossip[18742]["Option1"] = tWeekTask_NatureOfRebirth_Text[18742]["Option1"]

-- 主对白
tNpcGossip[18742]["Text1-2"] = {121,122,123,124}
tNpcGossip[18742]["Text121"] = tWeekTask_NatureOfRebirth_Text[18742]["121"]
tNpcGossip[18742]["Text122"] = tWeekTask_NatureOfRebirth_Text[18742]["122"]
tNpcGossip[18742]["Text123"] = tWeekTask_NatureOfRebirth_Text[18742]["123"]
tNpcGossip[18742]["Text124"] = tWeekTask_NatureOfRebirth_Text[18742]["124"]
tNpcGossip[18742]["tOption1-2"] = {2,3,4,5}
tNpcGossip[18742]["ChkFunc1-2"] = function ()
	return User_JudgeLevelAndMetempsychosis(tWeekTask_NatureOfRebirth_Count["Level"],tWeekTask_NatureOfRebirth_Count["Metempsychosis"])
end
-- 接受挑战
tNpcGossip[18742]["Option2"] = tWeekTask_NatureOfRebirth_Text[18742]["Option2"]
tNpcGossip[18742]["OptionFunc2"] = "WeekTask_NatureOfRebirth_AcceptTask</N>18742"

-- 通过第1次考验后VIP显示、完成后屏蔽
tNpcGossip[18742]["Option3"] = tWeekTask_NatureOfRebirth_Text[18742]["Option3"]
tNpcGossip[18742]["OptionFunc3"] = "WeekTask_NatureOfRebirth_VIPBuyNum</N>18742"
tNpcGossip[18742]["OptionChkFunc3"] = function ()
	local nEvent = tWeekTask_NatureOfRebirth_Stc[1]["EventType"]
	local nType = tWeekTask_NatureOfRebirth_Stc[1]["DataType"]
	
	-- 判断vip
	if not (Get_UserVip() > 0) then
		return false
	end
	
	local nStcData = Get_UserStatisticValue(nEvent,nType)
	-- 满足可买条件
	if not Task_StcInterval(nEvent,nType,1,5) and nStcData == 1 then
		return true
	end
	
	return false
end

-- 考验详情
tNpcGossip[18742]["Option4"] = tWeekTask_NatureOfRebirth_Text[18742]["Option4"]
tNpcGossip[18742]["OptionPoint4"] = "4-1"

-- 暂不需要造化重生
tNpcGossip[18742]["Option5"] = tWeekTask_NatureOfRebirth_Text[18742]["Option5"]

-- 接受挑战，当周已完成
tNpcGossip[18742]["Text2-1"] = {211}
tNpcGossip[18742]["Text211"] = tWeekTask_NatureOfRebirth_Text[18742]["211"]
tNpcGossip[18742]["tOption2-1"] = {6}
tNpcGossip[18742]["Option6"] = tWeekTask_NatureOfRebirth_Text[18742]["Option6"]

-- 接受挑战，上交物品
tNpcGossip[18742]["Text2-2"] = {221,222,223,224,225,226}
tNpcGossip[18742]["Text221"] = tWeekTask_NatureOfRebirth_Text[18742]["221"]
tNpcGossip[18742]["Text222"] = tWeekTask_NatureOfRebirth_Text[18742]["222"]
tNpcGossip[18742]["Text223"] = tWeekTask_NatureOfRebirth_Text[18742]["223"]
tNpcGossip[18742]["Text224"] = tWeekTask_NatureOfRebirth_Text[18742]["224"]
tNpcGossip[18742]["Text225"] = tWeekTask_NatureOfRebirth_Text[18742]["225"]
tNpcGossip[18742]["Text226"] = tWeekTask_NatureOfRebirth_Text[18742]["226"]
tNpcGossip[18742]["tOption2-2"] = {7,8,9,10}
-- 上交物品
tNpcGossip[18742]["Option7"] = tWeekTask_NatureOfRebirth_Text[18742]["Option7"]
tNpcGossip[18742]["OptionFunc7"] = "WeekTask_NatureOfRebirth_HandItem</N>18742"

-- 更换考验内容
tNpcGossip[18742]["Option8"] = tWeekTask_NatureOfRebirth_Text[18742]["Option8"]
tNpcGossip[18742]["OptionPoint8"] = "5-1"

-- 直接通过考验
tNpcGossip[18742]["Option9"] = tWeekTask_NatureOfRebirth_Text[18742]["Option9"]
tNpcGossip[18742]["OptionPoint9"] = "5-2"

-- 闲聊
tNpcGossip[18742]["Option10"] = tWeekTask_NatureOfRebirth_Text[18742]["Option10"]

-- 上交物品,道具不足，成功系统提示
tNpcGossip[18742]["Text2-3"] = {231}
tNpcGossip[18742]["Text231"] = tWeekTask_NatureOfRebirth_Text[18742]["231"]
tNpcGossip[18742]["tOption2-3"] = {11}
tNpcGossip[18742]["Option11"] = tWeekTask_NatureOfRebirth_Text[18742]["Option11"]

-- 更换内容，天石不足，成功刷新主对白
tNpcGossip[18742]["Text2-4"] = {241}
tNpcGossip[18742]["Text241"] = tWeekTask_NatureOfRebirth_Text[18742]["241"]
tNpcGossip[18742]["tOption2-4"] = {12}
tNpcGossip[18742]["Option12"] = tWeekTask_NatureOfRebirth_Text[18742]["Option12"]

-- 直接完成，天石不足
tNpcGossip[18742]["Text2-5"] = {251}
tNpcGossip[18742]["Text251"] = tWeekTask_NatureOfRebirth_Text[18742]["251"]
tNpcGossip[18742]["tOption2-5"] = {13}
tNpcGossip[18742]["Option13"] = tWeekTask_NatureOfRebirth_Text[18742]["Option13"]

-- 再次接受考验，失败非VIP
tNpcGossip[18742]["Text3-1"] = {311}
tNpcGossip[18742]["Text311"] = tWeekTask_NatureOfRebirth_Text[18742]["311"]
tNpcGossip[18742]["tOption3-1"] = {14}
tNpcGossip[18742]["Option14"] = tWeekTask_NatureOfRebirth_Text[18742]["Option14"]

-- 二次确认
tNpcGossip[18742]["Text3-2"] = {321}
tNpcGossip[18742]["Text321"] = tWeekTask_NatureOfRebirth_Text[18742]["321"]
tNpcGossip[18742]["tOption3-2"] = {15,16}
tNpcGossip[18742]["Option15"] = tWeekTask_NatureOfRebirth_Text[18742]["Option15"]
tNpcGossip[18742]["OptionFunc15"] = "WeekTask_NatureOfRebirth_VIPBuySure</N>18742"
tNpcGossip[18742]["Option16"] = tWeekTask_NatureOfRebirth_Text[18742]["Option16"]

-- 二次确认天石不足
tNpcGossip[18742]["Text3-3"] = {331}
tNpcGossip[18742]["Text331"] = tWeekTask_NatureOfRebirth_Text[18742]["331"]
tNpcGossip[18742]["tOption3-3"] = {17}
tNpcGossip[18742]["Option17"] = tWeekTask_NatureOfRebirth_Text[18742]["Option17"]

-- 了解活动详情
tNpcGossip[18742]["Text4-1"] = {411,412}
tNpcGossip[18742]["Text411"] = tWeekTask_NatureOfRebirth_Text[18742]["411"]
tNpcGossip[18742]["Text412"] = tWeekTask_NatureOfRebirth_Text[18742]["412"]
tNpcGossip[18742]["tOption4-1"] = {18}
tNpcGossip[18742]["Option18"] = tWeekTask_NatureOfRebirth_Text[18742]["Option18"]
-- tNpcGossip[18742]["OptionPoint18"] = "1"

-- 背包空间不足
tNpcGossip[18742]["Text4-2"] = {421}
tNpcGossip[18742]["Text421"] = tWeekTask_NatureOfRebirth_Text[18742]["421"]
tNpcGossip[18742]["tOption4-2"] = {19}
tNpcGossip[18742]["Option19"] = tWeekTask_NatureOfRebirth_Text[18742]["Option19"]

-- 选择上交的宝石
tNpcGossip[18742]["Text4-3"] = {431}
tNpcGossip[18742]["Text431"] = tWeekTask_NatureOfRebirth_Text[18742]["431"]
tNpcGossip[18742]["tOption4-3"] = {20,21,22,23,24,25,26}
tNpcGossip[18742]["Option20"] = tWeekTask_NatureOfRebirth_Text[18742]["Option20"]
tNpcGossip[18742]["OptionFunc20"] = "WeekTask_NatureOfRebirth_ChkGemNum</N>18742</N>700002"
tNpcGossip[18742]["Option21"] = tWeekTask_NatureOfRebirth_Text[18742]["Option21"]
tNpcGossip[18742]["OptionFunc21"] = "WeekTask_NatureOfRebirth_ChkGemNum</N>18742</N>700012"
tNpcGossip[18742]["Option22"] = tWeekTask_NatureOfRebirth_Text[18742]["Option22"]
tNpcGossip[18742]["OptionFunc22"] = "WeekTask_NatureOfRebirth_ChkGemNum</N>18742</N>700022"
tNpcGossip[18742]["Option23"] = tWeekTask_NatureOfRebirth_Text[18742]["Option23"]
tNpcGossip[18742]["OptionFunc23"] = "WeekTask_NatureOfRebirth_ChkGemNum</N>18742</N>700032"
tNpcGossip[18742]["Option24"] = tWeekTask_NatureOfRebirth_Text[18742]["Option24"]
tNpcGossip[18742]["OptionFunc24"] = "WeekTask_NatureOfRebirth_ChkGemNum</N>18742</N>700042"
tNpcGossip[18742]["Option25"] = tWeekTask_NatureOfRebirth_Text[18742]["Option25"]
tNpcGossip[18742]["OptionFunc25"] = "WeekTask_NatureOfRebirth_ChkGemNum</N>18742</N>700052"
tNpcGossip[18742]["Option26"] = tWeekTask_NatureOfRebirth_Text[18742]["Option26"]
tNpcGossip[18742]["OptionFunc26"] = "WeekTask_NatureOfRebirth_ChkGemNum</N>18742</N>700062"

-- 没有宝石
tNpcGossip[18742]["Text4-4"] = {441}
tNpcGossip[18742]["Text441"] = tWeekTask_NatureOfRebirth_Text[18742]["441"]
tNpcGossip[18742]["tOption4-4"] = {27}
tNpcGossip[18742]["Option27"] = tWeekTask_NatureOfRebirth_Text[18742]["Option27"]

-- 隔周不购买vip
tNpcGossip[18742]["Text4-5"] = {451}
tNpcGossip[18742]["Text451"] = tWeekTask_NatureOfRebirth_Text[18742]["451"]
tNpcGossip[18742]["tOption4-5"] = {28}
tNpcGossip[18742]["Option28"] = tWeekTask_NatureOfRebirth_Text[18742]["Option28"]

-- 更换考验内容二次确认
tNpcGossip[18742]["Text5-1"] = {511}
tNpcGossip[18742]["Text511"] = tWeekTask_NatureOfRebirth_Text[18742]["511"]
tNpcGossip[18742]["tOption5-1"] = {29,30}
tNpcGossip[18742]["Option29"] = tWeekTask_NatureOfRebirth_Text[18742]["Option29"]
tNpcGossip[18742]["OptionFunc29"] = "WeekTask_NatureOfRebirth_ChangeBuySure</N>18742"
tNpcGossip[18742]["Option30"] = tWeekTask_NatureOfRebirth_Text[18742]["Option30"]

-- 直接完成任务二次确认
tNpcGossip[18742]["Text5-2"] = {521}
tNpcGossip[18742]["Text521"] = tWeekTask_NatureOfRebirth_Text[18742]["521"]
tNpcGossip[18742]["tOption5-2"] = {31,32}
tNpcGossip[18742]["Option31"] = tWeekTask_NatureOfRebirth_Text[18742]["Option31"]
tNpcGossip[18742]["OptionFunc31"] = "WeekTask_NatureOfRebirth_FinishBuySure</N>18742"
tNpcGossip[18742]["Option32"] = tWeekTask_NatureOfRebirth_Text[18742]["Option32"]


-- 另外一个东方七宿
tNpcFace[899] = 73
tNpcGossip[3092] = tNpcGossip[18742]



