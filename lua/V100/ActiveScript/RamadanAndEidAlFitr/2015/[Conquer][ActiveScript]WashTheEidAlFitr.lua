------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]开斋的净洗
--Purpose:		2015年斋月节和开斋节活动之开斋的净洗
--Creator: 		郑鋆
--Created:		2015/3/20
------------------------------------------------------------------------------------
-- 命名规则
-- WashTheEidAlFitr2015_

-- 掩码说明
-- 12000059
-- stc	133	77	完成任务
-- stc	133	78	领取过圣灵净水
-- stc	133	79	记录收集圣灵甘露数量

-- 常量表
local tWashTheEidAlFitr2015_Constant = {}
	-- 活动时间
	tWashTheEidAlFitr2015_Constant["BeforeActivityTime"] = "2017-03-17 00:00 2017-06-24 23:59"
	tWashTheEidAlFitr2015_Constant["ActivityTime"] = "2017-06-25 00:00 2017-06-27 23:59"

	-- 玩家等级要求
	tWashTheEidAlFitr2015_Constant["Metempsychosis"] = 0
	tWashTheEidAlFitr2015_Constant["Level"] = 80
	
	-- stc掩码
	tWashTheEidAlFitr2015_Constant["EventType"] = 133
	tWashTheEidAlFitr2015_Constant[1] = {}
	tWashTheEidAlFitr2015_Constant[1]["DataType"] = 77
	tWashTheEidAlFitr2015_Constant[2] = {}
	tWashTheEidAlFitr2015_Constant[2]["DataType"] = 78
	tWashTheEidAlFitr2015_Constant[3] = {}
	tWashTheEidAlFitr2015_Constant[3]["DataType"] = 79

	-- 完成任务掩码值
	tWashTheEidAlFitr2015_Constant["CompleteData"] = 2
	-- 完成任务所需的数量
	tWashTheEidAlFitr2015_Constant["CompleteNum"] = 10
	
	-- 任务物品ID
	tWashTheEidAlFitr2015_Constant["TaskItem"] = 3006176
	tWashTheEidAlFitr2015_Constant["RewardItem"] = 3006177
	
	tWashTheEidAlFitr2015_Constant["ItemSpace"] = 1
	
	-- LOG
	tWashTheEidAlFitr2015_Constant["Log"] = "0,0,0,0,12000059,2,%d,%d"
	
	tWashTheEidAlFitr2015_Constant["Attr"] = "0 1"
	
	-- 动态掩码
	tWashTheEidAlFitr2015_Constant["GlobalId"] = 50863
	
	tWashTheEidAlFitr2015_Constant["Exp"] = 20
	tWashTheEidAlFitr2015_Constant["Cultivation"] = 10
	tWashTheEidAlFitr2015_Constant["Effect"] = "angelwing4"
	tWashTheEidAlFitr2015_Constant["RewardEffect"] = "accession2"
	tWashTheEidAlFitr2015_Constant["ExpLog"] = "0,0,3006177,1,12000059,2,4,20"
	tWashTheEidAlFitr2015_Constant["CultivationLog"] = "0,0,3006177,1,12000059,2,6,10"
	tWashTheEidAlFitr2015_Constant["RewardLog"] = "0,0,0,0,12000059,2,3006177,1"
	tWashTheEidAlFitr2015_Constant["CompleteLog"] = "0,0,3006176,1,12000059,2,3006177,1"
	
	tWashTheEidAlFitr2015_Constant["FestivalId"] = 3422
	tWashTheEidAlFitr2015_Constant["LogId"] = 12000059

	-- 读条
	tWashTheEidAlFitr2015_Constant["Sec"] = 3
	tWashTheEidAlFitr2015_Constant["Action"] = 220
--------------------------------------逻辑部分-----------------------------------------	
-- 公共判断
function WashTheEidAlFitr2015_PublicJudgment(nNpcId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tWashTheEidAlFitr2015_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return true
	end
	
	-- 判断人物等级是否满足
	if not User_JudgeLevelAndMetempsychosis(tWashTheEidAlFitr2015_Constant["Level"],tWashTheEidAlFitr2015_Constant["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return true
	end
	
	return false
end

-- 领取圣水之瓶
function WashTheEidAlFitr2015_RewardTaskItem(nNpcId)
	if WashTheEidAlFitr2015_PublicJudgment(nNpcId) then
		return
	end
	
	local nEvent = tWashTheEidAlFitr2015_Constant["EventType"]
	local nTaskStcType = tWashTheEidAlFitr2015_Constant[1]["DataType"]
	
	-- 判断任务是否完成
	if Task_ChkStcValue(nEvent,nTaskStcType,">=",tWashTheEidAlFitr2015_Constant["CompleteData"]) then
		-- 判断是否隔天
		if Task_StcInterval(nEvent,nTaskStcType,1,4) then
			Task_SetStatistic(nEvent,nTaskStcType,0,1)
			Task_SetStcTimestamp(nEvent,nTaskStcType,0)
		else
			LinkNpcGossipFunc_New(nNpcId,"4-2")
			return
		end
	end
	
	-- 判断是否有圣水之瓶
	local nTaskItem = tWashTheEidAlFitr2015_Constant["TaskItem"]
	
	if Item_ChkItem(nTaskItem) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 判断是否有圣灵净水
	local nRewardItem = tWashTheEidAlFitr2015_Constant["RewardItem"]
	
	if Item_ChkItem(nRewardItem) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tWashTheEidAlFitr2015_Constant["ItemSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	
	-- 给圣水之瓶
	Item_AddItem(nTaskItem)
	-- 打log
	Sys_SaveActionFestivalLog(string.format(tWashTheEidAlFitr2015_Constant["Log"],nTaskItem,1))
	-- 给提示
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

-- 上交圣灵净水
function WashTheEidAlFitr2015_HandItem(nNpcId)
	if WashTheEidAlFitr2015_PublicJudgment(nNpcId) then
		return
	end

	local nEvent = tWashTheEidAlFitr2015_Constant["EventType"]
	local nTaskStcType = tWashTheEidAlFitr2015_Constant[1]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nTaskStcType)

	-- 判断掩码值
	if nValue == 0 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	-- 判断是否隔天
	if Task_StcInterval(nEvent,nTaskStcType,1,4) then
		Task_SetStatistic(nEvent,nTaskStcType,0,1)
		Task_SetStcTimestamp(nEvent,nTaskStcType,0)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	if not (nValue == 1) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end

	-- 判断是否有圣灵净水
	local nRewardItem = tWashTheEidAlFitr2015_Constant["RewardItem"]
	
	if not Item_ChkItem(nRewardItem) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end

	-- 删除圣灵净水
	Item_DelItem(nRewardItem)
	
	-- 设掩码
	local nGlobalId = tWashTheEidAlFitr2015_Constant["GlobalId"]
	local nGlobalData = Get_SysDynaGlobalData1(nGlobalId)
	
	Sys_SetSynaGlobalData1(nGlobalId,nGlobalData + 1)
	Task_SetStatistic(nEvent,nTaskStcType,tWashTheEidAlFitr2015_Constant["CompleteData"],1)
	Task_SetStcTimestamp(nEvent,nTaskStcType,0)
	
	-- 给奖励
	local nLev = Get_UserLevel()
	
	if nLev < 140 then
		User_AddExpTime(tWashTheEidAlFitr2015_Constant["Exp"])
		Sys_SaveActionFestivalLog(tWashTheEidAlFitr2015_Constant["ExpLog"])
		User_TalkChannel2005(tWashTheEidAlFitr2015_Text[nNpcId]["341"])
	else
		User_AddCultivation(tWashTheEidAlFitr2015_Constant["Cultivation"])
		Sys_SaveActionFestivalLog(tWashTheEidAlFitr2015_Constant["CultivationLog"])
		User_TalkChannel2005(tWashTheEidAlFitr2015_Text[nNpcId]["351"])
	end
	
	User_EffectAdd("self",tWashTheEidAlFitr2015_Constant["Effect"])
end

-- 领取圣灵净水
function WashTheEidAlFitr2015_ReceiveItem(nNpcId)
	if WashTheEidAlFitr2015_PublicJudgment(nNpcId) then
		return
	end
	
	-- 判断动态掩码
	local nGlobalId = tWashTheEidAlFitr2015_Constant["GlobalId"]
	local nGlobalData = Get_SysDynaGlobalData1(nGlobalId)
	
	if nGlobalData < 1 then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nEvent = tWashTheEidAlFitr2015_Constant["EventType"]
	local nTaskStcType = tWashTheEidAlFitr2015_Constant[1]["DataType"]
	
	if not Task_ChkStcValue(nEvent,nTaskStcType,"==",0) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end

	-- 判断是否领取过
	local nRewardStcType = tWashTheEidAlFitr2015_Constant[2]["DataType"] 
	
	if not Task_ChkStcValue(nEvent,nRewardStcType,"==",0) then
		-- 判断是否隔天
		if not Task_StcInterval(nEvent,nRewardStcType,1,4) then
			LinkNpcGossipFunc_New(nNpcId,"4-3")
			return
		end
	end
	
	-- 判断是否有圣灵净水
	local nRewardItem = tWashTheEidAlFitr2015_Constant["RewardItem"]
	
	if Item_ChkItem(nRewardItem) then
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tWashTheEidAlFitr2015_Constant["ItemSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	
	-- 设掩码值
	Task_SetStatistic(nEvent,nRewardStcType,1,1)
	Task_SetStcTimestamp(nEvent,nRewardStcType,0)
	Sys_SetSynaGlobalData1(nGlobalId,nGlobalData - 1)
	
	-- 给物品
	Item_AddItem(nRewardItem)
	-- 打log
	Sys_SaveActionFestivalLog(tWashTheEidAlFitr2015_Constant["RewardLog"])
	-- 给提示
	LinkNpcGossipFunc_New(nNpcId,"4-6")
end

-- 圣水灵石
function WashTheEidAlFitr2015_RewardHolyWater()
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tWashTheEidAlFitr2015_Constant["ActivityTime"]) then
		return
	end
	
	local nEvent = tWashTheEidAlFitr2015_Constant["EventType"]
	local nRecordStcType = tWashTheEidAlFitr2015_Constant[3]["DataType"]
	local nTaskStcType = tWashTheEidAlFitr2015_Constant[1]["DataType"]
	local nRewardStcType = tWashTheEidAlFitr2015_Constant[2]["DataType"]
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nRecordStcType,1,4) then
		Task_SetStatistic(nEvent,nTaskStcType,0,1)
		Task_SetStatistic(nEvent,nRewardStcType,0,1)
		Task_SetStatistic(nEvent,nRecordStcType,0,1)
		
		Task_SetStcTimestamp(nEvent,nTaskStcType,0)
		Task_SetStcTimestamp(nEvent,nRewardStcType,0)
		Task_SetStcTimestamp(nEvent,nRecordStcType,0)
	end
	
	-- 判断是否有圣水之瓶
	local nTaskItem = tWashTheEidAlFitr2015_Constant["TaskItem"]
	
	if not Item_ChkItem(nTaskItem) then
		User_TalkChannel2005(tWashTheEidAlFitr2015_Text["NotTaskItem"])
		return
	end

	-- 读条
	User_SetExplore(tWashTheEidAlFitr2015_Constant["Sec"],tWashTheEidAlFitr2015_Text["Acquisit"],tWashTheEidAlFitr2015_Constant["Action"],"WashTheEidAlFitr2015_RewardItem")
end

function WashTheEidAlFitr2015_RewardItem(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tWashTheEidAlFitr2015_Constant["ActivityTime"]) then
		return
	end
	-- 判断是否有圣水之瓶
	local nTaskItem = tWashTheEidAlFitr2015_Constant["TaskItem"]
	
	if not Item_ChkItem(nTaskItem,nil,nil,nUserId) then
		User_TalkChannel2005(tWashTheEidAlFitr2015_Text["NotTaskItem"],nUserId)
		return
	end
	local nEvent = tWashTheEidAlFitr2015_Constant["EventType"]
	local nRecordStcType = tWashTheEidAlFitr2015_Constant[3]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nRecordStcType,nUserId)
	nValue = nValue + 1
	
	Task_SetStatistic(nEvent,nRecordStcType,nValue,1,nUserId)
	-- 判断是否完成任务
	if nValue >= tWashTheEidAlFitr2015_Constant["CompleteNum"] then
		-- 删除圣水之瓶
		Item_DelItem(nTaskItem,nil,nil,nUserId)
		
		Task_SetStatistic(nEvent,nRecordStcType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nRecordStcType,0,nUserId)
		-- 添加物品
		local nItemId = tWashTheEidAlFitr2015_Constant["RewardItem"]
		local sAttr = tWashTheEidAlFitr2015_Constant["Attr"]
		Item_AddNewItem(nItemId,sAttr,nUserId)
		-- 打log
		Sys_SaveActionFestivalLog(tWashTheEidAlFitr2015_Constant["CompleteLog"],nUserId)
		-- 给提示
		User_TalkChannel2005(tWashTheEidAlFitr2015_Text["RewardHolyWater"],nUserId)
	end
end

-- 使用物品
function WashTheEidAlFitr2015_UseItem(nItemId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tWashTheEidAlFitr2015_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tWashTheEidAlFitr2015_Text["ItemDisappear"])
		end
		
		return
	end
	
	local nEvent = tWashTheEidAlFitr2015_Constant["EventType"]
	local nTaskStcType = tWashTheEidAlFitr2015_Constant[1]["DataType"]
	
	if Task_ChkStcValue(nEvent,nTaskStcType,">=",1) then
		-- 判断是否隔天
		if not Task_StcInterval(nEvent,nTaskStcType,1,4) then
			User_TalkChannel2005(tWashTheEidAlFitr2015_Text["HasUse"])
			return
		end
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 设掩码值
		Task_SetStatistic(nEvent,nTaskStcType,1,1)
		Task_SetStcTimestamp(nEvent,nTaskStcType,0)
		
		-- 给奖励
		FestivalGeneralPackage_GetGift(tWashTheEidAlFitr2015_Constant["FestivalId"],tWashTheEidAlFitr2015_Constant["LogId"])
		-- 播光效
		User_EffectAdd("self",tWashTheEidAlFitr2015_Constant["RewardEffect"])
		-- 给提示
		User_TalkChannel2005(tWashTheEidAlFitr2015_Text["RewardMsg"])
	end
end

--------------------------------------NPC模块-------------------------------------------
-- 净洗使者
tNpcFace[2982] = 81
tNpcGossip[18398] = tNpcGossip[18398] or DefaultNpc:new{}
tNpcGossip[18398]["OptionHidden"] = 1

-- 活动前对白
tNpcGossip[18398]["Text1-1"] = {111,112}
tNpcGossip[18398]["Text111"] = tWashTheEidAlFitr2015_Text[18398]["111"]
tNpcGossip[18398]["Text112"] = tWashTheEidAlFitr2015_Text[18398]["112"]
tNpcGossip[18398]["tOption1-1"] = {1}
tNpcGossip[18398]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tWashTheEidAlFitr2015_Constant["BeforeActivityTime"])
end

-- 活动中对白
tNpcGossip[18398]["Text1-2"] = {121,122,123}
tNpcGossip[18398]["Text121"] = tWashTheEidAlFitr2015_Text[18398]["121"]
tNpcGossip[18398]["Text122"] = tWashTheEidAlFitr2015_Text[18398]["122"]
tNpcGossip[18398]["Text123"] = tWashTheEidAlFitr2015_Text[18398]["123"]
tNpcGossip[18398]["tOption1-2"] = {3,4,5,6,11}
tNpcGossip[18398]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tWashTheEidAlFitr2015_Constant["ActivityTime"])
end

-- 活动后对白
tNpcGossip[18398]["Text1-3"] = {131}
tNpcGossip[18398]["Text131"] = tWashTheEidAlFitr2015_Text[18398]["131"]
tNpcGossip[18398]["tOption1-3"] = {2}

-- 领取圣水之瓶。
tNpcGossip[18398]["Text2-1"] = {211}
tNpcGossip[18398]["Text211"] = tWashTheEidAlFitr2015_Text[18398]["211"]
tNpcGossip[18398]["tOption2-1"] = {1}

tNpcGossip[18398]["Text2-2"] = {221}
tNpcGossip[18398]["Text221"] = tWashTheEidAlFitr2015_Text[18398]["221"]
tNpcGossip[18398]["tOption2-2"] = {7}

tNpcGossip[18398]["Text2-3"] = {231}
tNpcGossip[18398]["Text231"] = tWashTheEidAlFitr2015_Text[18398]["231"]
tNpcGossip[18398]["tOption2-3"] = {13}

tNpcGossip[18398]["Text2-4"] = {241}
tNpcGossip[18398]["Text241"] = tWashTheEidAlFitr2015_Text[18398]["241"]
tNpcGossip[18398]["tOption2-4"] = {14}

-- 上交圣灵净水。
tNpcGossip[18398]["Text3-1"] = {311}
tNpcGossip[18398]["Text311"] = tWashTheEidAlFitr2015_Text[18398]["311"]
tNpcGossip[18398]["tOption3-1"] = {10}

tNpcGossip[18398]["Text3-2"] = {321}
tNpcGossip[18398]["Text321"] = tWashTheEidAlFitr2015_Text[18398]["321"]
tNpcGossip[18398]["tOption3-2"] = {15}

tNpcGossip[18398]["Text3-3"] = {331}
tNpcGossip[18398]["Text331"] = tWashTheEidAlFitr2015_Text[18398]["331"]
tNpcGossip[18398]["tOption3-3"] = {16}

-- 领取圣灵净水。
tNpcGossip[18398]["Text4-1"] = {411}
tNpcGossip[18398]["Text411"] = tWashTheEidAlFitr2015_Text[18398]["411"]
tNpcGossip[18398]["tOption4-1"] = {8}

tNpcGossip[18398]["Text4-2"] = {421}
tNpcGossip[18398]["Text421"] = tWashTheEidAlFitr2015_Text[18398]["421"]
tNpcGossip[18398]["tOption4-2"] = {17}

tNpcGossip[18398]["Text4-3"] = {431}
tNpcGossip[18398]["Text431"] = tWashTheEidAlFitr2015_Text[18398]["431"]
tNpcGossip[18398]["tOption4-3"] = {18}

tNpcGossip[18398]["Text4-4"] = {441}
tNpcGossip[18398]["Text441"] = tWashTheEidAlFitr2015_Text[18398]["441"]
tNpcGossip[18398]["tOption4-4"] = {19}

tNpcGossip[18398]["Text4-5"] = {451}
tNpcGossip[18398]["Text451"] = tWashTheEidAlFitr2015_Text[18398]["451"]
tNpcGossip[18398]["tOption4-5"] = {20}

tNpcGossip[18398]["Text4-6"] = {461}
tNpcGossip[18398]["Text461"] = tWashTheEidAlFitr2015_Text[18398]["461"]
tNpcGossip[18398]["tOption4-6"] = {21}

-- 详细介绍下吧。
tNpcGossip[18398]["Text5-1"] = {511,512,513}
tNpcGossip[18398]["Text511"] = tWashTheEidAlFitr2015_Text[18398]["511"]
tNpcGossip[18398]["Text512"] = tWashTheEidAlFitr2015_Text[18398]["512"]
tNpcGossip[18398]["Text513"] = tWashTheEidAlFitr2015_Text[18398]["513"]
tNpcGossip[18398]["tOption5-1"] = {9}

tNpcGossip[18398]["Text6-1"] = {611,612}
tNpcGossip[18398]["Text611"] = tWashTheEidAlFitr2015_Text[18398]["611"]
tNpcGossip[18398]["Text612"] = tWashTheEidAlFitr2015_Text[18398]["612"]
tNpcGossip[18398]["tOption6-1"] = {22}

-- 选项
tNpcGossip[18398]["Option1"] = tWashTheEidAlFitr2015_Text[18398]["Option1"]
tNpcGossip[18398]["Option2"] = tWashTheEidAlFitr2015_Text[18398]["Option2"]
tNpcGossip[18398]["Option3"] = tWashTheEidAlFitr2015_Text[18398]["Option3"]
tNpcGossip[18398]["OptionFunc3"]="WashTheEidAlFitr2015_RewardTaskItem</N>18398"
tNpcGossip[18398]["Option4"] = tWashTheEidAlFitr2015_Text[18398]["Option4"]
tNpcGossip[18398]["OptionFunc4"]="WashTheEidAlFitr2015_HandItem</N>18398"
tNpcGossip[18398]["Option5"] = tWashTheEidAlFitr2015_Text[18398]["Option5"]
tNpcGossip[18398]["OptionFunc5"]="WashTheEidAlFitr2015_ReceiveItem</N>18398"
tNpcGossip[18398]["Option6"] = tWashTheEidAlFitr2015_Text[18398]["Option6"]
tNpcGossip[18398]["OptionPoint6"]="5"
tNpcGossip[18398]["Option7"] = tWashTheEidAlFitr2015_Text[18398]["Option7"]
tNpcGossip[18398]["Option8"] = tWashTheEidAlFitr2015_Text[18398]["Option8"]
tNpcGossip[18398]["Option9"] = tWashTheEidAlFitr2015_Text[18398]["Option9"]
tNpcGossip[18398]["OptionPoint9"]="6"
tNpcGossip[18398]["Option10"] = tWashTheEidAlFitr2015_Text[18398]["Option10"]
tNpcGossip[18398]["Option11"] = tWashTheEidAlFitr2015_Text[18398]["Option11"]
tNpcGossip[18398]["Option12"] = tWashTheEidAlFitr2015_Text[18398]["Option12"]
tNpcGossip[18398]["Option13"] = tWashTheEidAlFitr2015_Text[18398]["Option13"]
tNpcGossip[18398]["Option14"] = tWashTheEidAlFitr2015_Text[18398]["Option14"]
tNpcGossip[18398]["Option15"] = tWashTheEidAlFitr2015_Text[18398]["Option15"]
tNpcGossip[18398]["Option16"] = tWashTheEidAlFitr2015_Text[18398]["Option16"]
tNpcGossip[18398]["Option17"] = tWashTheEidAlFitr2015_Text[18398]["Option17"]
tNpcGossip[18398]["Option18"] = tWashTheEidAlFitr2015_Text[18398]["Option18"]
tNpcGossip[18398]["Option19"] = tWashTheEidAlFitr2015_Text[18398]["Option19"]
tNpcGossip[18398]["Option20"] = tWashTheEidAlFitr2015_Text[18398]["Option20"]
tNpcGossip[18398]["Option21"] = tWashTheEidAlFitr2015_Text[18398]["Option21"]
tNpcGossip[18398]["Option22"] = tWashTheEidAlFitr2015_Text[18398]["Option22"]

-- 圣灵净水
tItem[3006177] = tItem[3006177] or {}
tItem[3006177]["Function"] = function(nItemId,sItemName)
	WashTheEidAlFitr2015_UseItem(nItemId)
end