------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]新手引导
--Purpose:	新手引导
--Creator: 	严振飞
--Created:	2015/10/12
------------------------------------------------------------------------------------
-- 命名前缀
-- QuestRecruit_

-- task_detail（任务id）说明
-- 新手引导
-- 初来乍到【壹】	3478 
-- 初来乍到【贰】	3479 
-- 初来乍到【叁】	3480
-- 初来乍到【肆】	3481

-- 新增掩码 3555--3563
-- 新增掩码 3565--3575


---100级后任务添加   （王倩娜）
-- 新增掩码3605--3630
-- 前往就职【壹】	3605
-- 前往就职【贰】	3824
-- 名震江湖【壹】	3606
-- 名震江湖【贰】	3608
-- 名震江湖【叁】	3608
-- 名震江湖【肆】	3609
-- 前往试炼			3610
-- 盖世豪侠【壹】	3611	5901
-- 盖世豪侠【贰】	3612	5902
-- 盖世豪侠【叁】	3613	5903
-- 盖世豪侠【肆】	3614	5904
-- 盖世豪侠【伍】	3615	5905
-- 盖世豪侠【陆】	3616	5906
-- 盖世豪侠【柒】	3617	5907
-- 盖世豪侠【捌】	3618	5908
-- 盖世豪侠【玖】	3619	5909
-- 盖世豪侠【拾】	3620	5910
-- 绝代天骄【壹】	3621	5911
-- 绝代天骄【贰】	3622	5912
-- 绝代天骄【叁】	3623	5913
-- 绝代天骄【肆】	3624	5914
-- 绝代天骄【伍】	3625	5915
-- 绝代天骄【陆】	3626	5916
-- 绝代天骄【柒】	3627	5917
-- 绝代天骄【捌】	3628	5918
-- 绝代天骄【玖】	3629	5919
-- 绝代天骄【拾】	3630	5920


------------------------------------------------------------------------------------
-- 旋风状态数据
local tQuestRecruit_Status = {}
	-- 持续时间配在各任务那边
	tQuestRecruit_Status["Status"] = 18
	tQuestRecruit_Status["Power"] = 30020
	tQuestRecruit_Status["Times"] = 1
	tQuestRecruit_Status["EndTime"] = 1
	tQuestRecruit_Status["Recordable"] = 0

	
-- 杀怪计数弹框限制掩码
local tQuestRecruit_MonstStc = {}
	tQuestRecruit_MonstStc["EventType"] = 150
	tQuestRecruit_MonstStc["DataType"] = 36
	tQuestRecruit_MonstStc["Complete"] = 1 -- 弹框只弹一次

-- 等级达到赋值
local tQuestRecruit_LevelTaskId = {3555,3561,3566,3573,3579,10017,10293,10034,10046,10051,10064,10083,10093,10278,10137,10140,10151,10160,10166,10173,10179,10286,10185,10192,10274}
-- 每完成一个任务加35xp值
local tQuestRecruit_AddXp = 35
local tQuestRecruit_AddMana = 2000
-- 最后给弹框引导
local tQuestRecruit_LastId = 3578
------------------------------------------------------------------------------------
function QuestRecruit_AddStatus(nTaskId)
	local nUserId = Get_UserId()
	local nStatus = tQuestRecruit_Status["Status"]
	local nPower = tQuestRecruit_Status["Power"]
	local nSecs = tTaskTemplate[nTaskId]["StatusTime"]
	local nTimes = tQuestRecruit_Status["Times"]
	local nRemainTime = tTaskTemplate[nTaskId]["StatusTime"]
	local nEndTime = tQuestRecruit_Status["EndTime"]
	local nRecordable = tQuestRecruit_Status["Recordable"]
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
end
	
------------------------------------------------------------------------------------
-- 交任务后的处理函数
function QuestRecruit_HandOverFunc(nTaskId)
	
	local nNpcId = Get_NpcId()
	-- 接后续任务
	if tTaskTemplate[nTaskId]["NextTaskId"] then
		Task_IsCreatByNpc(tTaskTemplate[nTaskId]["NextTaskId"],nNpcId,1)
	end
	
	-- 是否有支线任务
	for i = 1,6 do
		local nNewTaskId = tTaskTemplate[nTaskId]["OtherTaskId" .. i]
		if nNewTaskId == nil then
			break
		end
	
		local nLev = tTaskTemplate[nTaskId]["OtherLev".. i]
		-- 支线等级限制判断
		if nLev ~= nil then
			local nUserLev = Get_UserLevel()
			local sPos = tTaskTemplate[nTaskId]["OtherDataPos".. i]
			-- 主线任务等级赋值
			Task_SetTaskDetailData(tTaskTemplate[nTaskId]["NextTaskId"],nUserLev,tostring(sPos))
			
			if nUserLev < nLev then
				local sFunc = string.format("QuestRecruit_OtherTaskPos</N>%s",nNewTaskId)
				Task_AddTaskDetail(nNewTaskId)
				Sys_MsgBox(tQuestRecruit_Text["OtherTask"],sFunc)
			end
			
		-- 无等级限制
		else
			Task_AddTaskDetail(nNewTaskId)
		end
	end
	
	if tTaskTemplate[nTaskId]["NextTaskId"] then
		QuestRecruit_LevelGet(tTaskTemplate[nTaskId]["NextTaskId"])
	end
	
	-- 有图片引导
	local nTitle = tTaskTemplate[nTaskId]["NoviceTitle"]
	if nTitle ~= nil then
		User_NoviceTeaching(nTitle)
	end
	
	--奖励提示
	if tQuestRecruit_Text["sChannel"][nTaskId] ~= nil then
		User_TalkChannel2005(tQuestRecruit_Text["sChannel"][nTaskId])
	end
	
	--完成对话框
	local tFinishDialog = tTaskTemplate[nTaskId]["FinishDialog"]
	if tFinishDialog ~= nil  then
		LinkNpcGossipFunc_New(tFinishDialog[1],tFinishDialog[2])
	end
	
	--是否加状态
	local nNextTaskId = tTaskTemplate[nTaskId]["NextTaskId"]
	if nNextTaskId ~= nil and tTaskTemplate[nNextTaskId]["StatusTime"] ~= nil then
		QuestRecruit_AddStatus(nNextTaskId)
	end
	
	-- 是否杀怪计数弹框
	if tTaskTemplate[nTaskId]["ReqMonsterId1"] ~= nil then
		-- 重置弹框掩码
		local nEvent = tQuestRecruit_MonstStc["EventType"]
		local nType = tQuestRecruit_MonstStc["DataType"]
		if not Task_ChkStcValue(nEvent,nType,"==",0) then
			Task_SetStatistic(nEvent,nType,0,1)
		end
	end
	
	-- 等级弹框
	local nLevel = Get_UserLevel()
	for a,b in pairs(tQuestRecruit_LevelTaskId) do
		if Task_ChkTaskDetail(b) then
			Task_SetTaskDetailData1(b,nLevel)
		end
	end
	
	-- 任务次数每日限制新增掩码
	if SpecialServer_ChkNoGiftServer() then
		HarvestMonster_CalabashTask_AddStcValue(nNpcId,1)
		
		if tTaskTemplate[nTaskId]["RewExpTime"] ~= nil then
			-- 给提示
			local sRewardExpText = tHarvestMonster_CalabashTask_Text["RewardExp"]
			local nExpData = User_CalcTimeToExp(tTaskTemplate[nTaskId]["RewExpTime"],nUserId)
			if nExpData > 0 then
				User_TalkChannel2005(string.format(sRewardExpText,nExpData))
			else
				User_TalkChannel2005(tHarvestMonster_CalabashTask_Text["RewardCul"])
			end
		end
	end
	
	-- 每完成一个任务加35xp值
	User_AddXp(tQuestRecruit_AddXp)
	-- 每完成一个任务加2000,魔法
	User_AddMana(tQuestRecruit_AddMana)
	-- 最后一个任务完成给弹框
	if nTaskId == tQuestRecruit_LastId then
		-- 判断金币服
		if CommonFunc_ChkGoldServer() then
			Sys_MsgBox(tQuestRecruit_Text["LastMessageBox"],"NpcPosition_PathFind</N>11404")
		end
	end
end

function QuestRecruit_LevelGet(nTaskId)
	if tTaskTemplate[nTaskId]["LevelUpTask"] then
		local nLev = Get_UserLevel()
		Task_SetTaskDetailData1(nTaskId,nLev)
	end
end

-- 交循环任务后的处理函数
function QuestRecruit_CycleTaskFunc(nTaskId)
	-- 是否偶镇魂珠任务
	local nSoulTaskId = tTaskTemplate[nTaskId]["SoulTaskId"]
	if nSoulTaskId ~= nil and Task_ChkTaskDetail(nSoulTaskId) then
		local nSoulId = tTaskTemplate[nTaskId]["SoulId"]
		-- 镇魂珠增加魂值
		if nSoulId ~= nil and Item_ChkItem(nSoulId) then
			local nStcEvent = tTaskTemplate[nTaskId]["SoulStcEvent"]
			local nStcData = tTaskTemplate[nTaskId]["SoulStcData"]
			local nSoulValue = tTaskTemplate[nTaskId]["SoulValue"]

			if nStcEvent ~= nil and nStcData ~= nil and nSoulValue ~= nil then
				Task_AddStatistic(nStcEvent,nStcData,nSoulValue,1)
				User_TalkChannel2005(string.format(tQuestRecruit_Text["SoulValue"],nSoulValue))
			end
		end
	end
	
	-- 循环任务是否可再接
	local nUserLev = Get_UserLevel()
	local nLev = tTaskTemplate[nTaskId]["NextLev"]
	if nUserLev < nLev then
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_DelTaskDetail(nTaskId)
		Task_AddTaskDetail(tTaskTemplate[nTaskId]["NextTaskId"])
	else
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_DelTaskDetail(nTaskId)
	end
end


-- 击杀怪物后触发函数(计数)
function QuestRecruit_MustKillCount(nTaskId,nMonsterId)
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end	
	
	-- local sMonsterName = tQuestRecruit_Text["MustName"][nMonsterId]
	-- local sTalkText = string.format(tQuestRecruit_Text["KillText"],sMonsterName)
	-- User_TalkChannel2005(sTalkText)
end

-- 击杀怪物后触发函数(掉落物品)
function QuestRecruit_MustKillItem(nTaskId,nMonsterId)
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tQuestRecruit_Text["MustSpace"])
		return
	end
end


-- 怪物任务完成后触发
function QuestRecruit_MonsterDone(nTaskId,nMonsterId,nIndex)
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	local sMonsterName = tQuestRecruit_Text["MustName"][nMonsterId]
	local sNpcName = Get_NpcName(tTaskTemplate[nTaskId]["Mid"]["NpcId"])
	local sFunc = string.format("QuestRecruit_FindWay</N>%d</S>%s",nTaskId,"Mid")
	local nCount = 0
	local sBoxText = ""
	
	-- 弹框限制掩码
	local nEvent = tQuestRecruit_MonstStc["EventType"]
	local nType = tQuestRecruit_MonstStc["DataType"]
	local nComplete = tQuestRecruit_MonstStc["Complete"]
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		return
	end
	
	-- 杀怪掉物品
	if tTaskTemplate[nTaskId]["ReqItemFunc"] ~= nil then
		local sItemName = Get_ItemtypeName(tTaskTemplate[nTaskId]["MustFallItemId".. nIndex][1]["ItemId"])
		nCount = tTaskTemplate[nTaskId]["MustFallItemId".. nIndex][1]["ItemLimit"]
		sBoxText = string.format(tQuestRecruit_Text["MustKillItemDone"],nCount,sItemName,sNpcName)
		Sys_MsgBox(sBoxText,sFunc)
		Task_SetStatistic(nEvent,nType,nComplete,1)
		
	-- 杀怪计数
	elseif tTaskTemplate[nTaskId]["KillMonsterFunc"] ~= nil then
		nCount = tTaskTemplate[nTaskId]["ReqMonsterCount".. nIndex]
		sBoxText = string.format(tQuestRecruit_Text["MustKillCountDone"],nCount,sMonsterName,sNpcName)
		Sys_MsgBox(sBoxText,sFunc)
		Task_SetStatistic(nEvent,nType,nComplete,1)
	end
end

------------------------------------------------------------------------------------
------------------------------------------NPC任务配置
tQuestRecruit_TaskStar = {} -- 交任务掩码
tQuestRecruit_TaskNext = {} -- 接任务掩码
-- 飞云子
tQuestRecruit_TaskStar[5673] = {3478}
tQuestRecruit_TaskNext[5673] = {3479}
-- 仓库老板
tQuestRecruit_TaskStar[8] = {3479}
tQuestRecruit_TaskNext[8] = {3480}
-- 药店
tQuestRecruit_TaskStar[3] = {3480}
tQuestRecruit_TaskNext[3] = {3481}
-- 双龙城总兵
tQuestRecruit_TaskStar[2001] = {3481,3482,3487,3555,3561,3566,3573,3578,3824,3606,3607,3608,3609,3610,5901,5902,5903,5904,5905,5906,5907,5908,5909,5910,5911,5912,5913,5914,5915,5916,5917,5918,5919,5920}
tQuestRecruit_TaskNext[2001] = {3482,3483,3555,3488,3561,3496,3566,3505,3573,3513,3606,3607,3608,3609,3610,5901,5902,5903,5904,5905,5906,5907,5908,5909,5910,5911,5912,5913,5914,5915,5916,5917,5918,5919,5920}
-- 天机道长
tQuestRecruit_TaskStar[300500] = {3605}
tQuestRecruit_TaskNext[300500] = {3824}
------------------------------------------任务配置
-- 初来乍到【壹】
-- 接任务
tTaskTemplate[3478] = {}
tTaskTemplate[3478]["IsReceived"] = {400}
tTaskTemplate[3478]["TaskId"] = 3478
tTaskTemplate[3478]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3478]["SubTask"] = "2-1" 			-- 交任务
tTaskTemplate[3478]["HandOverMoney"] = "1-2" 	--金币达上限

-- 交任务
-- tTaskTemplate[3478]["IsHandOver"] = {600}		--任务交任务条件配置表
tTaskTemplate[3478]["NextTaskId"] = 3479
tTaskTemplate[3478]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 奖励
tTaskTemplate[3478]["HandOverTask"] = {200,400}	--交任务的奖励表
tTaskTemplate[3478]["RewExp"] = 900			--900点经验
-- tTaskTemplate[3478]["RewMoney"] = 10000		--1W金币


---------------------------
-- 初来乍到【贰】
-- 接任务
tTaskTemplate[3479] = {}
tTaskTemplate[3479]["IsReceived"] = {400,700}
tTaskTemplate[3479]["FrontTask"] = 3478
tTaskTemplate[3479]["TaskId"] = 3479
tTaskTemplate[3479]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3479]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3479]["HandOverMoney"] = "1-2" 	--金币达上限
tTaskTemplate[3479]["MeetAccept"] = "3-1"	-- 接任务对白
tTaskTemplate[3479]["HasAccept"] = "3-2" 	-- 已接任务未完成

-- 交任务
-- tTaskTemplate[3479]["IsHandOver"] = {900}		--任务交任务条件配置表
tTaskTemplate[3479]["NextTaskId"] = 3480
tTaskTemplate[3479]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3479]["Next"] = {}
tTaskTemplate[3479]["Next"]["NpcId"] = 8
tTaskTemplate[3479]["Next"]["MapId"] = 1002
tTaskTemplate[3479]["Next"]["PosX"] = 402
tTaskTemplate[3479]["Next"]["PosY"] = 315
-- 奖励
tTaskTemplate[3479]["HandOverTask"] = {200,400}	--交任务的奖励表
tTaskTemplate[3479]["RewExp"] = 1560		--1560点经验


---------------------------
-- 初来乍到【叁】
-- 接任务
tTaskTemplate[3480] = {}
tTaskTemplate[3480]["IsReceived"] = {400,700}
tTaskTemplate[3480]["FrontTask"] = 3479
tTaskTemplate[3480]["TaskId"] = 3480
tTaskTemplate[3480]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3480]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3480]["HandOverMoney"] = "1-2" 	--金币达上限
-- tTaskTemplate[3480]["HandOverSpace"] = "1-3" 	--背包达上限
tTaskTemplate[3480]["MeetAccept"] = "3-1"	-- 接任务对白

-- 交任务
-- tTaskTemplate[3480]["IsHandOver"] = {600}		--任务交任务条件配置表
tTaskTemplate[3480]["NextTaskId"] = 3481
tTaskTemplate[3480]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3480]["Next"] = {}
tTaskTemplate[3480]["Next"]["NpcId"] = 3
tTaskTemplate[3480]["Next"]["MapId"] = 1002
tTaskTemplate[3480]["Next"]["PosX"] = 403
tTaskTemplate[3480]["Next"]["PosY"] = 327
-- 奖励
tTaskTemplate[3480]["HandOverTask"] = {200,400}	--交任务的奖励表
tTaskTemplate[3480]["RewExp"] = 3600		--3600点经验
-- tTaskTemplate[3480]["RewMoney"] = 10000		--1W金币
-- tTaskTemplate[3480]["RewSpace"] = 1
-- tTaskTemplate[3480]["RewItemId1"] = 1200000
-- tTaskTemplate[3480]["RewItemAttr1"] = "0 1"

---------------------------
-- 初来乍到【肆】
-- 接任务
tTaskTemplate[3481] = {}
tTaskTemplate[3481]["IsReceived"] = {400,700}
tTaskTemplate[3481]["FrontTask"] = 3480
tTaskTemplate[3481]["TaskId"] = 3481
tTaskTemplate[3481]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3481]["SubTask"] = "2-1" 		-- 交任务
tTaskTemplate[3481]["HandOverMoney"] = "1-2" 	--金币达上限
tTaskTemplate[3481]["HandOverSpace"] = "1-3" 	--背包达上限
tTaskTemplate[3481]["MeetAccept"] = "3-1"	-- 接任务对白

-- 交任务
tTaskTemplate[3481]["IsHandOver"] = {900}		--任务交任务条件配置表
tTaskTemplate[3481]["NextTaskId"] = 3482
tTaskTemplate[3481]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 后续任务NPC数据
tTaskTemplate[3481]["Next"] = {}
tTaskTemplate[3481]["Next"]["NpcId"] = 2001
tTaskTemplate[3481]["Next"]["MapId"] = 1002
tTaskTemplate[3481]["Next"]["PosX"] = 439
tTaskTemplate[3481]["Next"]["PosY"] = 467
-- 奖励
tTaskTemplate[3481]["HandOverTask"] = {200,400}	--交任务的奖励表
tTaskTemplate[3481]["RewExp"] = 12000		--12000点经验
-- tTaskTemplate[3481]["RewSpace"] = 2
-- 勇士
-- tTaskTemplate[3481]["RewardProItem"] = {}
-- tTaskTemplate[3481]["RewardProItem"][1] = {}
-- tTaskTemplate[3481]["RewardProItem"][1]["MinPro"] = 10
-- tTaskTemplate[3481]["RewardProItem"][1]["MaxPro"] = 15
-- tTaskTemplate[3481]["RewardProItem"][1]["ProItem"] = {}
-- tTaskTemplate[3481]["RewardProItem"][1]["ProItem"][1] = {}
-- tTaskTemplate[3481]["RewardProItem"][1]["ProItem"][1]["Id"] = 420016	-- 龙泉剑*1
-- tTaskTemplate[3481]["RewardProItem"][1]["ProItem"][1]["Attr"] = "0 1"
-- tTaskTemplate[3481]["RewardProItem"][1]["ProItem"][2] = {}
-- tTaskTemplate[3481]["RewardProItem"][1]["ProItem"][2]["Id"] = 410016	-- 柳叶刀*1
-- tTaskTemplate[3481]["RewardProItem"][1]["ProItem"][2]["Attr"] = "0 1"
-- 战士
-- tTaskTemplate[3481]["RewardProItem"][2] = {}
-- tTaskTemplate[3481]["RewardProItem"][2]["MinPro"] = 20
-- tTaskTemplate[3481]["RewardProItem"][2]["MaxPro"] = 25
-- tTaskTemplate[3481]["RewardProItem"][2]["ProItem"] = {}
-- tTaskTemplate[3481]["RewardProItem"][2]["ProItem"][1] = {}
-- tTaskTemplate[3481]["RewardProItem"][2]["ProItem"][1]["Id"] = 561006	-- 龙泉剑*1
-- tTaskTemplate[3481]["RewardProItem"][2]["ProItem"][1]["Attr"] = "0 1"
-- tTaskTemplate[3481]["RewardProItem"][2]["ProItem"][2] = {}
-- tTaskTemplate[3481]["RewardProItem"][2]["ProItem"][2]["Id"] = 900006	-- 软藤盾*1
-- tTaskTemplate[3481]["RewardProItem"][2]["ProItem"][2]["Attr"] = "0 1"
-- 弓手
-- tTaskTemplate[3481]["RewardProItem"][3] = {}
-- tTaskTemplate[3481]["RewardProItem"][3]["MinPro"] = 40
-- tTaskTemplate[3481]["RewardProItem"][3]["MaxPro"] = 45
-- tTaskTemplate[3481]["RewardProItem"][3]["ProItem"] = {}
-- tTaskTemplate[3481]["RewardProItem"][3]["ProItem"][1] = {}
-- tTaskTemplate[3481]["RewardProItem"][3]["ProItem"][1]["Id"] = 613006	-- 梅花飞刀*2
-- tTaskTemplate[3481]["RewardProItem"][3]["ProItem"][1]["Attr"] = "0 2"
-- 忍者
-- tTaskTemplate[3481]["RewardProItem"][4] = {}
-- tTaskTemplate[3481]["RewardProItem"][4]["MinPro"] = 50
-- tTaskTemplate[3481]["RewardProItem"][4]["MaxPro"] = 55
-- tTaskTemplate[3481]["RewardProItem"][4]["ProItem"] = {}
-- tTaskTemplate[3481]["RewardProItem"][4]["ProItem"][1] = {}
-- tTaskTemplate[3481]["RewardProItem"][4]["ProItem"][1]["Id"] = 601016	-- 钢切*2
-- tTaskTemplate[3481]["RewardProItem"][4]["ProItem"][1]["Attr"] = "0 2"
-- 武僧
-- tTaskTemplate[3481]["RewardProItem"][5] = {}
-- tTaskTemplate[3481]["RewardProItem"][5]["MinPro"] = 60
-- tTaskTemplate[3481]["RewardProItem"][5]["MaxPro"] = 65
-- tTaskTemplate[3481]["RewardProItem"][5]["ProItem"] = {}
-- tTaskTemplate[3481]["RewardProItem"][5]["ProItem"][1] = {}
-- tTaskTemplate[3481]["RewardProItem"][5]["ProItem"][1]["Id"] = 610016	-- 苦竹念珠*2
-- tTaskTemplate[3481]["RewardProItem"][5]["ProItem"][1]["Attr"] = "0 2"
-- 海盗
-- tTaskTemplate[3481]["RewardProItem"][6] = {}
-- tTaskTemplate[3481]["RewardProItem"][6]["MinPro"] = 70
-- tTaskTemplate[3481]["RewardProItem"][6]["MaxPro"] = 75
-- tTaskTemplate[3481]["RewardProItem"][6]["ProItem"] = {}
-- tTaskTemplate[3481]["RewardProItem"][6]["ProItem"][1] = {}
-- tTaskTemplate[3481]["RewardProItem"][6]["ProItem"][1]["Id"] = 611016	-- 水手之剑*1
-- tTaskTemplate[3481]["RewardProItem"][6]["ProItem"][1]["Attr"] = "0 1"
-- tTaskTemplate[3481]["RewardProItem"][6]["ProItem"][2] = {}
-- tTaskTemplate[3481]["RewardProItem"][6]["ProItem"][2]["Id"] = 612016	-- 入门火枪*1
-- tTaskTemplate[3481]["RewardProItem"][6]["ProItem"][2]["Attr"] = "0 1"
-- 拳师
-- tTaskTemplate[3481]["RewardProItem"][7] = {}
-- tTaskTemplate[3481]["RewardProItem"][7]["MinPro"] = 80
-- tTaskTemplate[3481]["RewardProItem"][7]["MaxPro"] = 85
-- tTaskTemplate[3481]["RewardProItem"][7]["ProItem"] = {}
-- tTaskTemplate[3481]["RewardProItem"][7]["ProItem"][1] = {}
-- tTaskTemplate[3481]["RewardProItem"][7]["ProItem"][1]["Id"] = 617016	-- 白蜡双截棍*2
-- tTaskTemplate[3481]["RewardProItem"][7]["ProItem"][1]["Attr"] = "0 2"
-- 道士
-- tTaskTemplate[3481]["RewardProItem"][8] = {}
-- tTaskTemplate[3481]["RewardProItem"][8]["MinPro"] = 100
-- tTaskTemplate[3481]["RewardProItem"][8]["MaxPro"] = 145
-- tTaskTemplate[3481]["RewardProItem"][8]["ProItem"] = {}
-- tTaskTemplate[3481]["RewardProItem"][8]["ProItem"][1] = {}
-- tTaskTemplate[3481]["RewardProItem"][8]["ProItem"][1]["Id"] = 421016	-- 桃符剑*1
-- tTaskTemplate[3481]["RewardProItem"][8]["ProItem"][1]["Attr"] = "0 1"


---100级后任务添加   （王倩娜）

-- 就职任务（一）	3605
-- 接任务
tTaskTemplate[3605] = {}
tTaskTemplate[3605]["IsReceived"] = {400,700}
-- tTaskTemplate[3605]["FrontTask"] = 3579
tTaskTemplate[3605]["TaskId"] = 3605
tTaskTemplate[3605]["AcceptTask"] = {100}
-- 对白编号表
tTaskTemplate[3605]["SubTask"] = "12-1" 		-- 交任务
tTaskTemplate[3605]["MeetAccept"] = "15-1"	-- 接任务对白
tTaskTemplate[3605]["HasAccept"] = "15-3" 	-- 已接任务未完成
tTaskTemplate[3605]["HandOverSpace"] = "12-2" 	--背包

-- 交任务
tTaskTemplate[3605]["IsHandOver"] = {900}
-- tTaskTemplate[3605]["NextTaskId"] = 3824
tTaskTemplate[3605]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
tTaskTemplate[3605]["NoviceTitle"] = 10 			-- 图片引导编号

-- 后续任务NPC数据
tTaskTemplate[3605]["Next"] = {}
tTaskTemplate[3605]["Next"]["NpcId"] = 300500
tTaskTemplate[3605]["Next"]["MapId"] = 1002
tTaskTemplate[3605]["Next"]["PosX"] = 177
tTaskTemplate[3605]["Next"]["PosY"] = 90

-- 奖励
tTaskTemplate[3605]["HandOverTask"] = {200,1200}	--交任务的奖励表
tTaskTemplate[3605]["RewSpace"] = 2
tTaskTemplate[3605]["RewItemId1"] = 202008 --混元塔,改为获得精品
tTaskTemplate[3605]["RewItemAttr1"] = "0 1"
tTaskTemplate[3605]["RewItemId2"] = 201008 --凌霄扇,改为获得精品
tTaskTemplate[3605]["RewItemAttr2"] = "0 1"


-- 就职任务（二）	3824
-- 接任务
tTaskTemplate[3824] = {}
tTaskTemplate[3824]["IsReceived"] = {400,700}
tTaskTemplate[3824]["FrontTask"] = 3605
tTaskTemplate[3824]["TaskId"] = 3824
tTaskTemplate[3824]["AcceptTask"] = {100}

-- 对白编号表
tTaskTemplate[3824]["SubTask"] = "15-2" 		-- 交任务
tTaskTemplate[3824]["MeetAccept"] = "13-1"	-- 接任务对白
tTaskTemplate[3824]["HandOverSpace"] = "15-4" 	--背包

-- 交任务
tTaskTemplate[3824]["IsHandOver"] = {900}
tTaskTemplate[3824]["NextTaskId"] = 3606
tTaskTemplate[3824]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
tTaskTemplate[3824]["NoviceTitle"] = 10 			-- 图片引导编号

-- 后续任务NPC数据
tTaskTemplate[3824]["Next"] = {}
tTaskTemplate[3824]["Next"]["NpcId"] = 300500
tTaskTemplate[3824]["Next"]["MapId"] = 1002
tTaskTemplate[3824]["Next"]["PosX"] = 177
tTaskTemplate[3824]["Next"]["PosY"] = 90
-- 奖励
tTaskTemplate[3824]["HandOverTask"] = {200,1200}	--交任务的奖励表
tTaskTemplate[3824]["RewSpace"] = 1
tTaskTemplate[3824]["RewItemId1"] = 201008 --凌霄扇,改为获得精品
tTaskTemplate[3824]["RewItemAttr1"] = "0 1"


-- 名震江湖【壹】	3606
-- 接任务
tTaskTemplate[3606] = {}
tTaskTemplate[3606]["IsReceived"] = {400,700}
tTaskTemplate[3606]["FrontTask"] = 3579
tTaskTemplate[3606]["TaskId"] = 3606
tTaskTemplate[3606]["AcceptTask"] = {100}
tTaskTemplate[3606]["LevelUpTask"] = 1

-- 对白编号表
tTaskTemplate[3606]["MeetAccept"] = "16-1"	-- 接任务对白
tTaskTemplate[3606]["SubTask"] = "16-2" 		-- 交任务
tTaskTemplate[3606]["HandOverDetail"] = "16-3" 	-- 已接任务未完成
tTaskTemplate[3606]["HandOverMonoEMoney"] = "16-4" 	--赠点上限
tTaskTemplate[3606]["HandOverSpace"] = "17-4" 	--背包

-- 交任务
tTaskTemplate[3606]["IsHandOver"] = {1100}		--任务交任务条件配置表
tTaskTemplate[3606]["Data1"] = 105
tTaskTemplate[3606]["NextTaskId"] = 3607
tTaskTemplate[3606]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 奖励
tTaskTemplate[3606]["HandOverTask"] = {200,1200}	--交任务的奖励表
-- tTaskTemplate[3606]["RewExpTime"] = 30
-- tTaskTemplate[3606]["RewMonoEMoney"] = 80
-- tTaskTemplate[3606]["RewCultivation"] = 150
tTaskTemplate[3606]["RewSpace"] = 2
tTaskTemplate[3606]["RewItemId1"] = 723342 		-- 造化天书*1
tTaskTemplate[3606]["RewItemAttr1"] = "0 1"
tTaskTemplate[3606]["RewItemId2"] = 3008899		-- 流星卷碎片*20
tTaskTemplate[3606]["RewItemAttr2"] = "0 20"



-- 名震江湖【贰】	3607
-- 接任务
tTaskTemplate[3607] = {}
tTaskTemplate[3607]["IsReceived"] = {400,700}
tTaskTemplate[3607]["FrontTask"] = 3606
tTaskTemplate[3607]["TaskId"] = 3607
tTaskTemplate[3607]["AcceptTask"] = {100}
tTaskTemplate[3607]["LevelUpTask"] = 1

-- 对白编号表
tTaskTemplate[3607]["MeetAccept"] = "17-1"	-- 接任务对白
tTaskTemplate[3607]["SubTask"] = "17-2" 		-- 交任务
tTaskTemplate[3607]["HandOverDetail"] = "17-3" 	-- 已接任务未完成
tTaskTemplate[3607]["HandOverSpace"] = "17-4" 	--背包

-- 交任务
tTaskTemplate[3607]["IsHandOver"] = {1100}		--任务交任务条件配置表
tTaskTemplate[3607]["Data1"] = 110
tTaskTemplate[3607]["NextTaskId"] = 3608
tTaskTemplate[3607]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 奖励	30分钟经验	200点气力值和【聚神丹】*5
tTaskTemplate[3607]["HandOverTask"] = {200,1200}	--交任务的奖励表
tTaskTemplate[3607]["RewSpace"] = 2
-- tTaskTemplate[3607]["RewExpTime"] = 30
-- tTaskTemplate[3607]["RewStrengthValue"] = 200
tTaskTemplate[3607]["RewItemId1"] = 3008899 		-- 流星卷碎片*20
tTaskTemplate[3607]["RewItemAttr1"] = "0 20"
tTaskTemplate[3607]["RewItemId2"] = 1100003 		-- 小乾坤袋*1
tTaskTemplate[3607]["RewItemAttr2"] = "0 1"

-- 名震江湖【叁】	3608	
-- 接任务
tTaskTemplate[3608] = {}
tTaskTemplate[3608]["IsReceived"] = {400,700}
tTaskTemplate[3608]["FrontTask"] = 3607
tTaskTemplate[3608]["TaskId"] = 3608
tTaskTemplate[3608]["AcceptTask"] = {100}
tTaskTemplate[3608]["LevelUpTask"] = 1

-- 对白编号表
tTaskTemplate[3608]["MeetAccept"] = "18-1"	-- 接任务对白
tTaskTemplate[3608]["SubTask"] = "18-2" 		-- 交任务
tTaskTemplate[3608]["HandOverDetail"] = "18-3" 	-- 已接任务未完成
tTaskTemplate[3608]["HandOverSpace"] = "18-4" 	--背包

-- 交任务
tTaskTemplate[3608]["IsHandOver"] = {1100}		--任务交任务条件配置表
tTaskTemplate[3608]["Data1"] = 115
tTaskTemplate[3608]["NextTaskId"] = 3609
tTaskTemplate[3608]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 奖励	60分钟经验	300点修行值和【清心符】*3
tTaskTemplate[3608]["HandOverTask"] = {200,1200}	--交任务的奖励表
tTaskTemplate[3608]["RewSpace"] = 2
-- tTaskTemplate[3608]["RewExpTime"] = 60
-- tTaskTemplate[3608]["RewCultivation"] = 300
tTaskTemplate[3608]["RewItemId1"] = 720128 		-- 清心符*3
tTaskTemplate[3608]["RewItemAttr1"] = "0 3"
tTaskTemplate[3608]["RewItemId2"] = 3008899 	-- 流星卷碎片*30
tTaskTemplate[3608]["RewItemAttr2"] = "0 30"

-- 名震江湖【肆】	3609
-- 接任务
tTaskTemplate[3609] = {}
tTaskTemplate[3609]["IsReceived"] = {400,700}
tTaskTemplate[3609]["FrontTask"] = 3608
tTaskTemplate[3609]["TaskId"] = 3609
tTaskTemplate[3609]["AcceptTask"] = {100}
tTaskTemplate[3609]["LevelUpTask"] = 1

-- 对白编号表
tTaskTemplate[3609]["MeetAccept"] = "19-1"	-- 接任务对白
tTaskTemplate[3609]["SubTask"] = "19-2" 		-- 交任务
tTaskTemplate[3609]["HandOverDetail"] = "19-3" 	-- 已接任务未完成
tTaskTemplate[3609]["HandOverSpace"] = "19-4" 	--背包

-- 交任务
tTaskTemplate[3609]["IsHandOver"] = {1100}		--任务交任务条件配置表
tTaskTemplate[3609]["Data1"] = 120
tTaskTemplate[3609]["NextTaskId"] = 3610
tTaskTemplate[3609]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数

-- 奖励	60分钟经验	300点气力值和【优质宝石礼包】*1
tTaskTemplate[3609]["HandOverTask"] = {200,1200}	--交任务的奖励表
tTaskTemplate[3609]["RewSpace"] = 2
-- tTaskTemplate[3609]["RewExpTime"] = 60
-- tTaskTemplate[3609]["RewStrengthValue"] = 300
tTaskTemplate[3609]["RewItemId1"] = 3301084 		-- 优质宝石礼盒*1
tTaskTemplate[3609]["RewItemAttr1"] = "0 1"
tTaskTemplate[3609]["RewItemId2"] = 3008899 	-- 流星卷碎片*30
tTaskTemplate[3609]["RewItemAttr2"] = "0 30"

-- 试炼任务	3610
-- 接任务
tTaskTemplate[3610] = {}
tTaskTemplate[3610]["IsReceived"] = {400,700}
tTaskTemplate[3610]["FrontTask"] = 3609
tTaskTemplate[3610]["TaskId"] = 3610
tTaskTemplate[3610]["AcceptTask"] = {100}
-- 对白编号表
tTaskTemplate[3610]["SubTask"] = "20-2" 		-- 交任务
tTaskTemplate[3610]["MeetAccept"] = "20-1"	-- 接任务对白
tTaskTemplate[3610]["HandOverDetail"] = "20-3" 	-- 已接任务未完成
tTaskTemplate[3610]["HandOverSpace"] = "17-4" 	--背包

-- 后续任务NPC数据
tTaskTemplate[3610]["Next"] = {}
tTaskTemplate[3610]["Next"]["NpcId"] = 300500
tTaskTemplate[3610]["Next"]["MapId"] = 1002
tTaskTemplate[3610]["Next"]["PosX"] = 177
tTaskTemplate[3610]["Next"]["PosY"] = 90

-- 交任务
tTaskTemplate[3610]["IsHandOver"] = {1100}		--任务交任务条件配置表
tTaskTemplate[3610]["Data1"] = 1
tTaskTemplate[3610]["NextTaskId"] = 5901
tTaskTemplate[3610]["NoviceTitle"] = 9 			-- 图片引导编号
tTaskTemplate[3610]["HandOverFunc"] = QuestRecruit_HandOverFunc -- 交任务后的处理函数
-- 无奖励
tTaskTemplate[3610]["HandOverTask"] = {200,1200}	--交任务的奖励表
tTaskTemplate[3610]["RewSpace"] = 1
tTaskTemplate[3610]["RewItemId1"] = 3006542 		-- 真气礼包*30
tTaskTemplate[3610]["RewItemAttr1"] = "0 30"



-- 盖世豪侠【壹】	-10	5901-5910
-- 接任务
tTaskTemplate[5901] = {}
tTaskTemplate[5902] = {}
tTaskTemplate[5903] = {}
tTaskTemplate[5904] = {}
tTaskTemplate[5905] = {}
tTaskTemplate[5906] = {}
tTaskTemplate[5907] = {}
tTaskTemplate[5908] = {}
tTaskTemplate[5909] = {}
tTaskTemplate[5910] = {}

tTaskTemplate[5901]["IsReceived"]={400,700}
tTaskTemplate[5902]["IsReceived"]={400,700}
tTaskTemplate[5903]["IsReceived"]={400,700}
tTaskTemplate[5904]["IsReceived"]={400,700}
tTaskTemplate[5905]["IsReceived"]={400,700}
tTaskTemplate[5906]["IsReceived"]={400,700}
tTaskTemplate[5907]["IsReceived"]={400,700}
tTaskTemplate[5908]["IsReceived"]={400,700}
tTaskTemplate[5909]["IsReceived"]={400,700}
tTaskTemplate[5910]["IsReceived"]={400,700}

tTaskTemplate[5901]["FrontTask"] = 3610
tTaskTemplate[5902]["FrontTask"] = 5901
tTaskTemplate[5903]["FrontTask"] = 5902
tTaskTemplate[5904]["FrontTask"] = 5903
tTaskTemplate[5905]["FrontTask"] = 5904
tTaskTemplate[5906]["FrontTask"] = 5905
tTaskTemplate[5907]["FrontTask"] = 5906
tTaskTemplate[5908]["FrontTask"] = 5907
tTaskTemplate[5909]["FrontTask"] = 5908
tTaskTemplate[5910]["FrontTask"] = 5909

tTaskTemplate[5901]["TaskId"]  = 5901
tTaskTemplate[5902]["TaskId"]  = 5902
tTaskTemplate[5903]["TaskId"]  = 5903
tTaskTemplate[5904]["TaskId"]  = 5904
tTaskTemplate[5905]["TaskId"]  = 5905
tTaskTemplate[5906]["TaskId"]  = 5906
tTaskTemplate[5907]["TaskId"]  = 5907
tTaskTemplate[5908]["TaskId"]  = 5908
tTaskTemplate[5909]["TaskId"]  = 5909
tTaskTemplate[5910]["TaskId"]  = 5910

tTaskTemplate[5901]["AcceptTask"] = {100}
tTaskTemplate[5902]["AcceptTask"] = {100}
tTaskTemplate[5903]["AcceptTask"] = {100}
tTaskTemplate[5904]["AcceptTask"] = {100}
tTaskTemplate[5905]["AcceptTask"] = {100}
tTaskTemplate[5906]["AcceptTask"] = {100}
tTaskTemplate[5907]["AcceptTask"] = {100}
tTaskTemplate[5908]["AcceptTask"] = {100}
tTaskTemplate[5909]["AcceptTask"] = {100}
tTaskTemplate[5910]["AcceptTask"] = {100}

tTaskTemplate[5901]["LevelUpTask"] = 1
tTaskTemplate[5902]["LevelUpTask"] = 1
tTaskTemplate[5903]["LevelUpTask"] = 1
tTaskTemplate[5904]["LevelUpTask"] = 1
tTaskTemplate[5905]["LevelUpTask"] = 1
tTaskTemplate[5906]["LevelUpTask"] = 1
tTaskTemplate[5907]["LevelUpTask"] = 1
tTaskTemplate[5908]["LevelUpTask"] = 1
tTaskTemplate[5909]["LevelUpTask"] = 1
tTaskTemplate[5910]["LevelUpTask"] = 1

-- 对白编号表
tTaskTemplate[5901]["MeetAccept"]="21-1"
tTaskTemplate[5902]["MeetAccept"]="22-1"
tTaskTemplate[5903]["MeetAccept"]="23-1"
tTaskTemplate[5904]["MeetAccept"]="24-1"
tTaskTemplate[5905]["MeetAccept"]="25-1"
tTaskTemplate[5906]["MeetAccept"]="26-1"
tTaskTemplate[5907]["MeetAccept"]="27-1"
tTaskTemplate[5908]["MeetAccept"]="28-1"
tTaskTemplate[5909]["MeetAccept"]="29-1"
tTaskTemplate[5910]["MeetAccept"]="30-1"

tTaskTemplate[5901]["SubTask"]="21-2"
tTaskTemplate[5902]["SubTask"]="22-2"
tTaskTemplate[5903]["SubTask"]="23-2"
tTaskTemplate[5904]["SubTask"]="24-2"
tTaskTemplate[5905]["SubTask"]="25-2"
tTaskTemplate[5906]["SubTask"]="26-2"
tTaskTemplate[5907]["SubTask"]="27-2"
tTaskTemplate[5908]["SubTask"]="28-2"
tTaskTemplate[5909]["SubTask"]="29-2"
tTaskTemplate[5910]["SubTask"]="30-2"

tTaskTemplate[5901]["HandOverDetail"]="21-3"
tTaskTemplate[5902]["HandOverDetail"]="22-3"
tTaskTemplate[5903]["HandOverDetail"]="23-3"
tTaskTemplate[5904]["HandOverDetail"]="24-3"
tTaskTemplate[5905]["HandOverDetail"]="25-3"
tTaskTemplate[5906]["HandOverDetail"]="26-3"
tTaskTemplate[5907]["HandOverDetail"]="27-3"
tTaskTemplate[5908]["HandOverDetail"]="28-3"
tTaskTemplate[5909]["HandOverDetail"]="29-3"
tTaskTemplate[5910]["HandOverDetail"]="30-3"

tTaskTemplate[5901]["HandOverSpace"]="21-4"
tTaskTemplate[5902]["HandOverSpace"]="22-4"
tTaskTemplate[5903]["HandOverSpace"]="23-4"
tTaskTemplate[5904]["HandOverSpace"]="24-4"
tTaskTemplate[5905]["HandOverSpace"]="25-4"
-- tTaskTemplate[5906]["HandOverSpace"]="26-4"
tTaskTemplate[5907]["HandOverSpace"]="27-4"
tTaskTemplate[5908]["HandOverSpace"]="28-4"
tTaskTemplate[5909]["HandOverSpace"]="29-4"
tTaskTemplate[5910]["HandOverSpace"]="30-4"

tTaskTemplate[5901]["HandOverMonoEMoney"] = "21-5" 
tTaskTemplate[5903]["HandOverMonoEMoney"] = "23-5" 
tTaskTemplate[5906]["HandOverMonoEMoney"] = "26-4" 
tTaskTemplate[5910]["HandOverMonoEMoney"] = "30-5" 

-- 交任务
tTaskTemplate[5901]["IsHandOver"]={900,1100}
tTaskTemplate[5902]["IsHandOver"]={900,1100}
tTaskTemplate[5903]["IsHandOver"]={900,1100}
tTaskTemplate[5904]["IsHandOver"]={900,1100}
tTaskTemplate[5905]["IsHandOver"]={900,1100}
tTaskTemplate[5906]["IsHandOver"]={900,1100}
tTaskTemplate[5907]["IsHandOver"]={900,1100}
tTaskTemplate[5908]["IsHandOver"]={900,1100}
tTaskTemplate[5909]["IsHandOver"]={900,1100}
tTaskTemplate[5910]["IsHandOver"]={900,1100}

tTaskTemplate[5901]["Data1"] = 121
tTaskTemplate[5902]["Data1"] = 122
tTaskTemplate[5903]["Data1"] = 123
tTaskTemplate[5904]["Data1"] = 124
tTaskTemplate[5905]["Data1"] = 125
tTaskTemplate[5906]["Data1"] = 126
tTaskTemplate[5907]["Data1"] = 127
tTaskTemplate[5908]["Data1"] = 128
tTaskTemplate[5909]["Data1"] = 129
tTaskTemplate[5910]["Data1"] = 130

tTaskTemplate[5901]["NextTaskId"]=5902
tTaskTemplate[5902]["NextTaskId"]=5903
tTaskTemplate[5903]["NextTaskId"]=5904
tTaskTemplate[5904]["NextTaskId"]=5905
tTaskTemplate[5905]["NextTaskId"]=5906
tTaskTemplate[5906]["NextTaskId"]=5907
tTaskTemplate[5907]["NextTaskId"]=5908
tTaskTemplate[5908]["NextTaskId"]=5909
tTaskTemplate[5909]["NextTaskId"]=5910
tTaskTemplate[5910]["NextTaskId"]=5911

tTaskTemplate[5901]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5902]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5903]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5904]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5905]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5906]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5907]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5908]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5909]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5910]["HandOverFunc"] = QuestRecruit_HandOverFunc

-- 奖励
tTaskTemplate[5901]["HandOverTask"]={200,1200}
tTaskTemplate[5902]["HandOverTask"]={200,1200}
tTaskTemplate[5903]["HandOverTask"]={200,1200}
tTaskTemplate[5904]["HandOverTask"]={200,1200}
tTaskTemplate[5905]["HandOverTask"]={200,1200}
tTaskTemplate[5906]["HandOverTask"]={200,1200}
tTaskTemplate[5907]["HandOverTask"]={200,1200}
tTaskTemplate[5908]["HandOverTask"]={200,1200}
tTaskTemplate[5909]["HandOverTask"]={200,1200}
tTaskTemplate[5910]["HandOverTask"]={200,1200}

tTaskTemplate[5901]["RewSpace"] = 2
tTaskTemplate[5902]["RewSpace"] = 2
tTaskTemplate[5903]["RewSpace"] = 2
tTaskTemplate[5904]["RewSpace"] = 4
tTaskTemplate[5905]["RewSpace"] = 2
tTaskTemplate[5906]["RewSpace"] = 2
tTaskTemplate[5907]["RewSpace"] = 2
tTaskTemplate[5908]["RewSpace"] = 2
tTaskTemplate[5909]["RewSpace"] = 4
tTaskTemplate[5910]["RewSpace"] = 2

tTaskTemplate[5901]["RewItemId1"] = 729242 		-- 回气丹*1
tTaskTemplate[5902]["RewItemId1"] = 3003124 	-- 免费强炼丹*20
tTaskTemplate[5903]["RewItemId1"] = 3003125 	-- 通神丹*20
tTaskTemplate[5904]["RewItemId1"] = 730003 		-- +3赤炼石*3
tTaskTemplate[5905]["RewItemId1"] = 3008051 	-- 四阶神魂礼包*1
tTaskTemplate[5906]["RewItemId1"] = 723342 		-- 造化天书*1
tTaskTemplate[5907]["RewItemId1"] = 3002030 	-- 强效护心丹*20
tTaskTemplate[5908]["RewItemId1"] = 3003126 	-- 究极通神丹*10
tTaskTemplate[5909]["RewItemId1"] = 3001064 	-- +3雪脂马礼包*3
tTaskTemplate[5910]["RewItemId1"] = 3001044 	-- 百炼天机果*1

tTaskTemplate[5901]["RewItemAttr1"] = "0 1"
tTaskTemplate[5902]["RewItemAttr1"] = "0 20"
tTaskTemplate[5903]["RewItemAttr1"] = "0 20"
tTaskTemplate[5904]["RewItemAttr1"] = "0 3"
tTaskTemplate[5905]["RewItemAttr1"] = "0 1"
tTaskTemplate[5906]["RewItemAttr1"] = "0 1"
tTaskTemplate[5907]["RewItemAttr1"] = "0 20"
tTaskTemplate[5908]["RewItemAttr1"] = "0 10"
tTaskTemplate[5909]["RewItemAttr1"] = "0 3"
tTaskTemplate[5910]["RewItemAttr1"] = "0 1"

tTaskTemplate[5901]["RewItemId2"] = 3007979 	-- 龙珠碎片*20
tTaskTemplate[5902]["RewItemId2"] = 3007979 	-- 龙珠碎片*20
tTaskTemplate[5903]["RewItemId2"] = 3007979 	-- 龙珠碎片*20
tTaskTemplate[5904]["RewItemId2"] = 3007979 	-- 龙珠碎片*20
tTaskTemplate[5905]["RewItemId2"] = 3007979 	-- 龙珠碎片*20
tTaskTemplate[5906]["RewItemId2"] = 3007979 	-- 龙珠碎片*30
tTaskTemplate[5907]["RewItemId2"] = 3007979 	-- 龙珠碎片*30
tTaskTemplate[5908]["RewItemId2"] = 3007979 	-- 龙珠碎片*30
tTaskTemplate[5909]["RewItemId2"] = 3007979 	-- 龙珠碎片*30
tTaskTemplate[5910]["RewItemId2"] = 3007979 	-- 龙珠碎片*30

tTaskTemplate[5901]["RewItemAttr2"] = "0 20"
tTaskTemplate[5902]["RewItemAttr2"] = "0 20"
tTaskTemplate[5903]["RewItemAttr2"] = "0 20"
tTaskTemplate[5904]["RewItemAttr2"] = "0 20"
tTaskTemplate[5905]["RewItemAttr2"] = "0 20"
tTaskTemplate[5906]["RewItemAttr2"] = "0 30"
tTaskTemplate[5907]["RewItemAttr2"] = "0 30"
tTaskTemplate[5908]["RewItemAttr2"] = "0 30"
tTaskTemplate[5909]["RewItemAttr2"] = "0 30"
tTaskTemplate[5910]["RewItemAttr2"] = "0 30"


	
-- 绝代天骄【壹】-【拾】	5911-5920
tTaskTemplate[5911] = {}
tTaskTemplate[5912] = {}
tTaskTemplate[5913] = {}
tTaskTemplate[5914] = {}
tTaskTemplate[5915] = {}
tTaskTemplate[5916] = {}
tTaskTemplate[5917] = {}
tTaskTemplate[5918] = {}
tTaskTemplate[5919] = {}
tTaskTemplate[5920] = {}

tTaskTemplate[5911]["IsReceived"]={400,700}
tTaskTemplate[5912]["IsReceived"]={400,700}
tTaskTemplate[5913]["IsReceived"]={400,700}
tTaskTemplate[5914]["IsReceived"]={400,700}
tTaskTemplate[5915]["IsReceived"]={400,700}
tTaskTemplate[5916]["IsReceived"]={400,700}
tTaskTemplate[5917]["IsReceived"]={400,700}
tTaskTemplate[5918]["IsReceived"]={400,700}
tTaskTemplate[5919]["IsReceived"]={400,700}
tTaskTemplate[5920]["IsReceived"]={400,700}

tTaskTemplate[5911]["FrontTask"] = 5910
tTaskTemplate[5912]["FrontTask"] = 5911
tTaskTemplate[5913]["FrontTask"] = 5912
tTaskTemplate[5914]["FrontTask"] = 5913
tTaskTemplate[5915]["FrontTask"] = 5914
tTaskTemplate[5916]["FrontTask"] = 5915
tTaskTemplate[5917]["FrontTask"] = 5916
tTaskTemplate[5918]["FrontTask"] = 5917
tTaskTemplate[5919]["FrontTask"] = 5918
tTaskTemplate[5920]["FrontTask"] = 5919
                                  
tTaskTemplate[5911]["TaskId"]  = 5911
tTaskTemplate[5912]["TaskId"]  = 5912
tTaskTemplate[5913]["TaskId"]  = 5913
tTaskTemplate[5914]["TaskId"]  = 5914
tTaskTemplate[5915]["TaskId"]  = 5915
tTaskTemplate[5916]["TaskId"]  = 5916
tTaskTemplate[5917]["TaskId"]  = 5917
tTaskTemplate[5918]["TaskId"]  = 5918
tTaskTemplate[5919]["TaskId"]  = 5919
tTaskTemplate[5920]["TaskId"]  = 5920

tTaskTemplate[5911]["AcceptTask"] = {100}
tTaskTemplate[5912]["AcceptTask"] = {100}
tTaskTemplate[5913]["AcceptTask"] = {100}
tTaskTemplate[5914]["AcceptTask"] = {100}
tTaskTemplate[5915]["AcceptTask"] = {100}
tTaskTemplate[5916]["AcceptTask"] = {100}
tTaskTemplate[5917]["AcceptTask"] = {100}
tTaskTemplate[5918]["AcceptTask"] = {100}
tTaskTemplate[5919]["AcceptTask"] = {100}
tTaskTemplate[5920]["AcceptTask"] = {100}

tTaskTemplate[5911]["LevelUpTask"] = 1
tTaskTemplate[5912]["LevelUpTask"] = 1
tTaskTemplate[5913]["LevelUpTask"] = 1
tTaskTemplate[5914]["LevelUpTask"] = 1
tTaskTemplate[5915]["LevelUpTask"] = 1
tTaskTemplate[5916]["LevelUpTask"] = 1
tTaskTemplate[5917]["LevelUpTask"] = 1
tTaskTemplate[5918]["LevelUpTask"] = 1
tTaskTemplate[5919]["LevelUpTask"] = 1
tTaskTemplate[5920]["LevelUpTask"] = 1

-- 对白编号表
tTaskTemplate[5911]["MeetAccept"]="31-1"
tTaskTemplate[5912]["MeetAccept"]="32-1"
tTaskTemplate[5913]["MeetAccept"]="33-1"
tTaskTemplate[5914]["MeetAccept"]="34-1"
tTaskTemplate[5915]["MeetAccept"]="35-1"
tTaskTemplate[5916]["MeetAccept"]="36-1"
tTaskTemplate[5917]["MeetAccept"]="37-1"
tTaskTemplate[5918]["MeetAccept"]="38-1"
tTaskTemplate[5919]["MeetAccept"]="39-1"
tTaskTemplate[5920]["MeetAccept"]="40-1"

tTaskTemplate[5911]["SubTask"]="31-2"
tTaskTemplate[5912]["SubTask"]="32-2"
tTaskTemplate[5913]["SubTask"]="33-2"
tTaskTemplate[5914]["SubTask"]="34-2"
tTaskTemplate[5915]["SubTask"]="35-2"
tTaskTemplate[5916]["SubTask"]="36-2"
tTaskTemplate[5917]["SubTask"]="37-2"
tTaskTemplate[5918]["SubTask"]="38-2"
tTaskTemplate[5919]["SubTask"]="39-2"
tTaskTemplate[5920]["SubTask"]="40-2"

tTaskTemplate[5911]["HandOverDetail"]="31-3"
tTaskTemplate[5912]["HandOverDetail"]="32-3"
tTaskTemplate[5913]["HandOverDetail"]="33-3"
tTaskTemplate[5914]["HandOverDetail"]="34-3"
tTaskTemplate[5915]["HandOverDetail"]="35-3"
tTaskTemplate[5916]["HandOverDetail"]="36-3"
tTaskTemplate[5917]["HandOverDetail"]="37-3"
tTaskTemplate[5918]["HandOverDetail"]="38-3"
tTaskTemplate[5919]["HandOverDetail"]="39-3"
tTaskTemplate[5920]["HandOverDetail"]="40-3"

tTaskTemplate[5911]["HandOverSpace"]="31-4"
tTaskTemplate[5912]["HandOverSpace"]="32-4"
tTaskTemplate[5913]["HandOverSpace"]="33-4"
tTaskTemplate[5914]["HandOverSpace"]="34-4"
tTaskTemplate[5915]["HandOverSpace"]="35-4"
tTaskTemplate[5916]["HandOverSpace"]="36-4"
tTaskTemplate[5917]["HandOverSpace"]="37-4"
tTaskTemplate[5918]["HandOverSpace"]="38-4"
tTaskTemplate[5919]["HandOverSpace"]="39-4"
tTaskTemplate[5920]["HandOverSpace"]="40-4"

tTaskTemplate[5913]["HandOverMonoEMoney"] = "31-5" 
tTaskTemplate[5916]["HandOverMonoEMoney"] = "36-5" 
tTaskTemplate[5918]["HandOverMonoEMoney"] = "38-4" 
tTaskTemplate[5920]["HandOverMonoEMoney"] = "40-5" 

-- 交任务
tTaskTemplate[5911]["IsHandOver"]={900,1100}
tTaskTemplate[5912]["IsHandOver"]={900,1100}
tTaskTemplate[5913]["IsHandOver"]={900,1100}
tTaskTemplate[5914]["IsHandOver"]={900,1100}
tTaskTemplate[5915]["IsHandOver"]={900,1100}
tTaskTemplate[5916]["IsHandOver"]={900,1100}
tTaskTemplate[5917]["IsHandOver"]={900,1100}
tTaskTemplate[5918]["IsHandOver"]={900,1100}
tTaskTemplate[5919]["IsHandOver"]={900,1100}
tTaskTemplate[5920]["IsHandOver"]={900,1100}

tTaskTemplate[5911]["Data1"] = 131
tTaskTemplate[5912]["Data1"] = 132
tTaskTemplate[5913]["Data1"] = 133
tTaskTemplate[5914]["Data1"] = 134
tTaskTemplate[5915]["Data1"] = 135
tTaskTemplate[5916]["Data1"] = 136
tTaskTemplate[5917]["Data1"] = 137
tTaskTemplate[5918]["Data1"] = 138
tTaskTemplate[5919]["Data1"] = 139
tTaskTemplate[5920]["Data1"] = 140


tTaskTemplate[5911]["NextTaskId"]=5912
tTaskTemplate[5912]["NextTaskId"]=5913
tTaskTemplate[5913]["NextTaskId"]=5914
tTaskTemplate[5914]["NextTaskId"]=5915
tTaskTemplate[5915]["NextTaskId"]=5916
tTaskTemplate[5916]["NextTaskId"]=5917
tTaskTemplate[5917]["NextTaskId"]=5918
tTaskTemplate[5918]["NextTaskId"]=5919
tTaskTemplate[5919]["NextTaskId"]=5920
-- tTaskTemplate[5920]["NextTaskId"]=0

tTaskTemplate[5920]["FinishDialog"]= {2001,"40-6"}

tTaskTemplate[5911]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5912]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5913]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5914]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5915]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5916]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5917]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5918]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5919]["HandOverFunc"] = QuestRecruit_HandOverFunc
tTaskTemplate[5920]["HandOverFunc"] = QuestRecruit_HandOverFunc

-- 奖励
tTaskTemplate[5911]["HandOverTask"]={200,1200}
tTaskTemplate[5912]["HandOverTask"]={200,1200}
tTaskTemplate[5913]["HandOverTask"]={200,1200}
tTaskTemplate[5914]["HandOverTask"]={200,1200}
tTaskTemplate[5915]["HandOverTask"]={200,1200}
tTaskTemplate[5916]["HandOverTask"]={200,1200}
tTaskTemplate[5917]["HandOverTask"]={200,1200}
tTaskTemplate[5918]["HandOverTask"]={200,1200}
tTaskTemplate[5919]["HandOverTask"]={200,1200}
tTaskTemplate[5920]["HandOverTask"]={200,1200}

tTaskTemplate[5911]["RewSpace"] = 2
tTaskTemplate[5912]["RewSpace"] = 2
tTaskTemplate[5913]["RewSpace"] = 2
tTaskTemplate[5914]["RewSpace"] = 2
tTaskTemplate[5915]["RewSpace"] = 2
tTaskTemplate[5916]["RewSpace"] = 3
tTaskTemplate[5917]["RewSpace"] = 3
tTaskTemplate[5918]["RewSpace"] = 3
tTaskTemplate[5919]["RewSpace"] = 4
tTaskTemplate[5920]["RewSpace"] = 7

tTaskTemplate[5911]["RewItemId1"] = 3003125 	-- 通神丹*30
tTaskTemplate[5912]["RewItemId1"] = 730005 		-- +5赤炼石*1
tTaskTemplate[5913]["RewItemId1"] = 3003124 	-- 免费强炼丹*30
tTaskTemplate[5914]["RewItemId1"] = 730005 		-- +5赤炼石*1
tTaskTemplate[5915]["RewItemId1"] = 700073 		-- 优质玄元宝石*1
tTaskTemplate[5916]["RewItemId1"] = 728596 		-- 九转聚神丹碎片*1
tTaskTemplate[5917]["RewItemId1"] = 3002030 	-- 强效护心丹*30
tTaskTemplate[5918]["RewItemId1"] = 3003126 	-- 究极通神丹*20
tTaskTemplate[5919]["RewItemId1"] = 730005 		-- +5赤炼石*2
tTaskTemplate[5920]["RewItemId1"] = 723694 		-- 固化石*1
              
tTaskTemplate[5911]["RewItemAttr1"] = "0 30"
tTaskTemplate[5912]["RewItemAttr1"] = "0 1"
tTaskTemplate[5913]["RewItemAttr1"] = "0 30"
tTaskTemplate[5914]["RewItemAttr1"] = "0 1"
tTaskTemplate[5915]["RewItemAttr1"] = "0 1"
tTaskTemplate[5916]["RewItemAttr1"] = "0 1"
tTaskTemplate[5917]["RewItemAttr1"] = "0 30"
tTaskTemplate[5918]["RewItemAttr1"] = "0 20"
tTaskTemplate[5919]["RewItemAttr1"] = "0 2"
tTaskTemplate[5920]["RewItemAttr1"] = "0 1"

tTaskTemplate[5911]["RewItemId2"] = 729242 		-- 回气丹*1
tTaskTemplate[5912]["RewItemId2"] = 729242 		-- 回气丹*1
tTaskTemplate[5913]["RewItemId2"] = 729242 		-- 回气丹*1
tTaskTemplate[5914]["RewItemId2"] = 729242 		-- 回气丹*1
tTaskTemplate[5915]["RewItemId2"] = 729242 		-- 回气丹*1
tTaskTemplate[5916]["RewItemId2"] = 729242 		-- 回气丹*2
tTaskTemplate[5917]["RewItemId2"] = 729242 		-- 回气丹*2
tTaskTemplate[5918]["RewItemId2"] = 729242 		-- 回气丹*2
tTaskTemplate[5919]["RewItemId2"] = 729242 		-- 回气丹*2
tTaskTemplate[5920]["RewItemId2"] = 729242 		-- 回气丹*5

tTaskTemplate[5911]["RewItemAttr2"] = "0 1"
tTaskTemplate[5912]["RewItemAttr2"] = "0 1"
tTaskTemplate[5913]["RewItemAttr2"] = "0 1"
tTaskTemplate[5914]["RewItemAttr2"] = "0 1"
tTaskTemplate[5915]["RewItemAttr2"] = "0 1"
tTaskTemplate[5916]["RewItemAttr2"] = "0 2"
tTaskTemplate[5917]["RewItemAttr2"] = "0 2"
tTaskTemplate[5918]["RewItemAttr2"] = "0 2"
tTaskTemplate[5919]["RewItemAttr2"] = "0 2"
tTaskTemplate[5920]["RewItemAttr2"] = "0 5"

tTaskTemplate[5920]["RewItemId3"] = 3008054 		-- 六阶防具配饰神魂礼包*1
tTaskTemplate[5920]["RewItemAttr3"] = "0 1"


------------------------------------------------------------------------------------
--------------------------------------每个npc对应的闲聊对白------------------------------------
local tQuestRecruit_Chat = {}
	-- 大漠
	tQuestRecruit_Chat[2004] = "1-6"
	tQuestRecruit_Chat[8437] = "1-7"
	tQuestRecruit_Chat[8440] = "1-8"
	tQuestRecruit_Chat[8441] = "1-5"
	tQuestRecruit_Chat[8445] = "1-4"
	
	-- 芦花荡
	tQuestRecruit_Chat[8510] = "1-4"
	tQuestRecruit_Chat[8521] = "2-6"
	tQuestRecruit_Chat[8525] = "2-7"
	tQuestRecruit_Chat[8534] = "1-7"
	tQuestRecruit_Chat[8536] = "2-3"
	
-- 日常任务切换点
local tQuestRecruit_Trans = {}
	tQuestRecruit_Trans["MapId"] = 1002
	tQuestRecruit_Trans["PosX"] = 188
	tQuestRecruit_Trans["PosY"] = 287
	tQuestRecruit_Trans["Range"] = 5

-- 日常自动切换函数
function QuestRecruit_TransPos(nTaskId)
	local nMapId = tQuestRecruit_Trans["MapId"]
	local nPosX = tQuestRecruit_Trans["PosX"]
	local nPosY = tQuestRecruit_Trans["PosY"]
	local nRange = tQuestRecruit_Trans["Range"]

	-- 是否接到任务
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
	end
	
	-- 传送并记录坐标点
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
	
	if nMapId == 1002 then
		User_RecordPoint(nMapId,nPosX,nPosY)
	end
end


-- 接循环任务切屏
function QuestRecruit_OtherTaskPos(nTaskId)
	local nMapId = tTaskTemplate[nTaskId]["Next"]["MapId"]
	local nPosX = tTaskTemplate[nTaskId]["Next"]["PosX"]
	local nPosY = tTaskTemplate[nTaskId]["Next"]["PosY"]
	local nRange = tQuestRecruit_Trans["Range"]

	-- 是否接到任务
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
	end
	
	-- 传送并记录坐标点
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
	if nMapId == 1002 then
		User_RecordPoint(nMapId,nPosX,nPosY)
	end
end


-- 寻路函数
function QuestRecruit_FindWay(nTaskId,sType)
	-- 是否接到任务
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
	end
	
	-- 未后续寻路
	if sType == nil then
		sType = "Next"
	end
	
	local nNpcId = tTaskTemplate[nTaskId][sType]["NpcId"]
	local nMapId = tTaskTemplate[nTaskId][sType]["MapId"] or Get_UserMapId()
	local nPosX = tTaskTemplate[nTaskId][sType]["PosX"]
	local nPosY = tTaskTemplate[nTaskId][sType]["PosY"]
	
	-- 没NPC寻路
	if nNpcId == nil or nNpcId == 0 then
		nNpcId = 0
		-- 自动寻路
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	else
		NpcPosition_PathFind(nNpcId)
	end
end

-- 补领任务物品函数
function QuestRecruit_ReqTaskItem(nTaskId,nNpcId)
	-- 是否有任务物品
	if Item_ChkItem(tTaskTemplate[nTaskId]["GetItemId1"]) then
		LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[nTaskId]["HaveTaskItem"])
		return
	
	-- 没任务物品背包不足
	elseif not User_CheckLeftSpace(tTaskTemplate[nTaskId]["RevSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[nTaskId]["NotSpace"])
		return
		
	else
		Item_AddItem(tTaskTemplate[nTaskId]["GetItemId1"])
		LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[nTaskId]["ReqTaskItem"])
	end
end


-- 任务中间对白NPC
function QuestRecruit_QuestMidNpc()
	local nNpcId = Get_NpcId()
	-- 交任务循环
	for i,v in pairs(tQuestRecruit_TaskStar[nNpcId]) do
		if Task_ChkTaskDetail(v) and Task_ChkTaskDetailValue(v,"1","==",0) then
			LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[v]["MidSubTask"])
			return
		end
	end
	
	local sDialogIndex = tQuestRecruit_Chat[nNpcId]
	if sDialogIndex == nil then
		sDialogIndex = "1-1"
	end
	-- 闲聊对白
	LinkNpcGossipFunc_New(nNpcId,sDialogIndex)
end

-- 任务中间置掩码
function QuestRecruit_SetMidTaskDetail(nTaskId,nNpcId,nIndex)
	local nValue = tTaskTemplate[nTaskId]["Data".. nIndex]

	-- 中间环节完成
	Task_SetTaskDetailData(nTaskId,nValue,tostring(nIndex))
	LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[nTaskId]["SetDetail"])
end


-- NPC接入函数
function QuestRecruit_QuestNpcMain(nNewNpcId)
	local nNpcId = nNewNpcId or Get_NpcId()
	
	-- 交任务循环
	for i,v in pairs(tQuestRecruit_TaskStar[nNpcId]) do
	if Task_ChkTaskDetail(v) and Task_ChkTaskDetailValue(v,"CompleteFlag","==",0) then
			LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[v]["SubTask"])
			--交任务函数
			return
		end
	end

	-- 接任务循环
	if tQuestRecruit_TaskNext[nNpcId] ~= nil then
		for i,v in pairs(tQuestRecruit_TaskNext[nNpcId]) do

			-- 未接前置任务
			if tTaskTemplate[v]["FrontTask"] ~= nil then
				if not Task_ChkTaskDetail(tTaskTemplate[v]["FrontTask"]) then
					break
					
				-- 已接前置任务，未完成
				elseif Task_ChkTaskDetailValue(tTaskTemplate[v]["FrontTask"],"CompleteFlag","==",0) then
					break
				end
			end

			if not Task_ChkTaskDetail(v) then

				-- 接任务对白
				LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[v]["MeetAccept"])
				return
				
			-- 接任务未完成
			elseif not Task_ChkTaskDetailValue(v,"CompleteFlag",">=",1) then
				if tTaskTemplate[v]["HasAccept"] ~= nil then
					LinkNpcGossipFunc_New(nNpcId,tTaskTemplate[v]["HasAccept"])
				return
				end
			end
		end
	end
	
	local sDialogIndex = tQuestRecruit_Chat[nNpcId]
	if sDialogIndex == nil then
		sDialogIndex = "1-1"
	end
	-- 闲聊对白
	LinkNpcGossipFunc_New(nNpcId,sDialogIndex)
end

-- 100后玩家上线触发
function QuestRecruit_Lv100DoFunc()
	local nUserLev = Get_UserLevel()
	
	-- 重置弹框限制掩码
	local nEvent = tQuestRecruit_MonstStc["EventType"]
	local nType = tQuestRecruit_MonstStc["DataType"]
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		Task_SetStatistic(nEvent,nType,0,1)
	end
	
	-- 等级未达到100
	if nUserLev < 100 then
		return
	end

	-- 已存在100级后任务
	if Task_ChkTaskDetail(3606) then
		return
	end
	
	-- 未接前置任务
	if not Task_ChkTaskDetail(tTaskTemplate[3606]["FrontTask"]) then
		return
	end
	
	-- 已接前置任务且已完成，则接100级后任务
	if Task_ChkTaskDetailValue(tTaskTemplate[3606]["FrontTask"],"CompleteFlag",">=",1) then
		-- 已存在100级后任务
		if Task_ChkTaskDetail(3606) then
			return
		end
		
		Task_AddTaskDetail(3606)
		User_TalkChannel2005(tQuestRecruit_Text["Lv100DoTask"])
	end
end


-----------------------------------------NPC对白配置-------------------------------------------
----------------------------------------【新手引导】-------------------------------------------
-- 【飞云子】
tNpcFace[5444] = 7
tNpcGossip[5673] = tNpcGossip[5673] or DefaultNpc:new{}
tNpcGossip[5673]["OptionHidden"] = 1
-- 闲聊对白
tNpcGossip[5673]["Text1-1"] = {111,112}
tNpcGossip[5673]["Text111"] = tQuestRecruit_Text[5673]["Text111"]
tNpcGossip[5673]["Text112"] = tQuestRecruit_Text[5673]["Text112"]
tNpcGossip[5673]["tOption1-1"] = {111}
tNpcGossip[5673]["Option111"] = tQuestRecruit_Text[5673]["111"]
-- 金币达上限
tNpcGossip[5673]["Text1-2"] = {121}
tNpcGossip[5673]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[5673]["tOption1-2"] = {121}
tNpcGossip[5673]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]
--（交）初来乍到【壹】	任务ID 3478
tNpcGossip[5673]["Text2-1"] = {211,212}
tNpcGossip[5673]["Text211"] = tQuestRecruit_Text[5673]["Text111"]
tNpcGossip[5673]["Text212"] = tQuestRecruit_Text[5673]["Text112"]
tNpcGossip[5673]["tOption2-1"] = {211}
tNpcGossip[5673]["Option211"] = tQuestRecruit_Text[5673]["211"]
tNpcGossip[5673]["OptionPoint211"] = "2-2"
--（完成）初来乍到【壹】
tNpcGossip[5673]["Text2-2"] = {221}
tNpcGossip[5673]["Text221"] = tQuestRecruit_Text[5673]["Text221"]
tNpcGossip[5673]["tOption2-2"] = {221}
tNpcGossip[5673]["Option221"] = tQuestRecruit_Text[5673]["221"]
tNpcGossip[5673]["OptionFunc221"] = "Task_IsHandOverByNpc</N>3478</N>5673</N>1"
--（接）初来乍到【贰】	任务ID 3479
tNpcGossip[5673]["Text3-1"] = {311,312}
tNpcGossip[5673]["Text311"] = tQuestRecruit_Text[5673]["Text311"]
tNpcGossip[5673]["Text312"] = tQuestRecruit_Text[5673]["Text312"]
tNpcGossip[5673]["tOption3-1"] = {311}
tNpcGossip[5673]["Option311"] = tQuestRecruit_Text[5673]["311"]
tNpcGossip[5673]["OptionFunc311"] = "QuestRecruit_FindWay</N>3479"
--（已接未完成）初来乍到【贰】
tNpcGossip[5673]["Text3-2"] = {321}
tNpcGossip[5673]["Text321"] = tQuestRecruit_Text[5673]["Text321"]
tNpcGossip[5673]["tOption3-2"] = {321}
tNpcGossip[5673]["Option321"] = tQuestRecruit_Text[5673]["321"]
tNpcGossip[5673]["OptionFunc321"] = "QuestRecruit_FindWay</N>3479"


------------------------------------------
-- 【仓库老板】
tNpcFace[8] = 67
tNpcGossip[8] = tNpcGossip[8] or DefaultNpc:new{}
tNpcGossip[8]["OptionHidden"] = 1
-- 金币达上限
tNpcGossip[8]["Text1-2"] = {121}
tNpcGossip[8]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[8]["tOption1-2"] = {121}
tNpcGossip[8]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]
--（交）初来乍到【贰】	任务ID 3479
tNpcGossip[8]["Text2-1"] = {211,212}
tNpcGossip[8]["Text211"] = tQuestRecruit_Text[8]["Text211"]
tNpcGossip[8]["Text212"] = tQuestRecruit_Text[8]["Text212"]
tNpcGossip[8]["tOption2-1"] = {211}
tNpcGossip[8]["Option211"] = tQuestRecruit_Text[8]["211"]
tNpcGossip[8]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3479</N>8</N>1"

--（接）初来乍到【叁】	3480
tNpcGossip[8]["Text3-1"] = {311}
tNpcGossip[8]["Text311"] = tQuestRecruit_Text[8]["Text311"]
tNpcGossip[8]["tOption3-1"] = {311}
tNpcGossip[8]["Option311"] = tQuestRecruit_Text[8]["311"]
tNpcGossip[8]["OptionFunc311"] = "QuestRecruit_FindWay</N>3480"

------------------------------------------
-- 【药店老板】
tNpcFace[3] = 120
tNpcGossip[3] = tNpcGossip[3] or DefaultNpc:new{}
tNpcGossip[3]["OptionHidden"] = 1
-- 金币达上限
tNpcGossip[3]["Text1-2"] = {121}
tNpcGossip[3]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[3]["tOption1-2"] = {121}
tNpcGossip[3]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]
-- 背包达上限
-- tNpcGossip[3]["Text1-3"] = {131}
-- tNpcGossip[3]["Text131"] = tQuestRecruit_Text[3]["Text131"]
-- tNpcGossip[3]["tOption1-3"] = {131}
-- tNpcGossip[3]["Option131"] = tQuestRecruit_Text[3]["131"]

--（交）初来乍到【叁】	任务ID 3480
tNpcGossip[3]["Text2-1"] = {211,212}
tNpcGossip[3]["Text211"] = tQuestRecruit_Text[3]["Text211"]
tNpcGossip[3]["Text212"] = tQuestRecruit_Text[3]["Text212"]
tNpcGossip[3]["tOption2-1"] = {211}
tNpcGossip[3]["Option211"] = tQuestRecruit_Text[3]["211"]
tNpcGossip[3]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3480</N>3</N>1"

--（接）初来乍到【肆】 3481
tNpcGossip[3]["Text3-1"] = {311}
tNpcGossip[3]["Text311"] = tQuestRecruit_Text[3]["Text311"]
tNpcGossip[3]["tOption3-1"] = {311}
tNpcGossip[3]["Option311"] = tQuestRecruit_Text[3]["311"]
tNpcGossip[3]["OptionFunc311"] = "QuestRecruit_FindWay</N>3481"

------------------------------------------------------------------------------------
-- 【双龙城总兵】
tNpcFace[174] = 75
tNpcGossip[2001] = tNpcGossip[2001] or DefaultNpc:new{}
tNpcGossip[2001]["OptionHidden"] = 1

--闲聊对白
tNpcGossip[2001]["Text1-1"] = {111}
tNpcGossip[2001]["Text111"] = tQuestRecruit_Text[2001]["Text111"]
tNpcGossip[2001]["tOption1-1"] = {111}
tNpcGossip[2001]["Option111"] = tQuestRecruit_Text[2001]["111"]

-- 金币达上限
tNpcGossip[2001]["Text1-2"] = {121}
tNpcGossip[2001]["Text121"] = tQuestRecruit_Text["MoneyFull"]["Text"]
tNpcGossip[2001]["tOption1-2"] = {121}
tNpcGossip[2001]["Option121"] = tQuestRecruit_Text["MoneyFull"]["Option"]

-- 背包达上限
tNpcGossip[2001]["Text1-3"] = {131}
tNpcGossip[2001]["Text131"] = tQuestRecruit_Text[2001]["Text131"]
tNpcGossip[2001]["tOption1-3"] = {131}
tNpcGossip[2001]["Option131"] = tQuestRecruit_Text[2001]["131"]

--（交）初来乍到【肆】	任务ID 3481
tNpcGossip[2001]["Text2-1"] = {211}
tNpcGossip[2001]["Text211"] = tQuestRecruit_Text[2001]["Text211"]
tNpcGossip[2001]["tOption2-1"] = {211}
tNpcGossip[2001]["Option211"] = tQuestRecruit_Text[2001]["211"]
tNpcGossip[2001]["OptionFunc211"] = "Task_IsHandOverByNpc</N>3481</N>2001</N>1"

--（接）牛刀小试	任务ID 3482
tNpcGossip[2001]["Text3-1"] = {311,312,313}
tNpcGossip[2001]["Text311"] = tQuestRecruit_Text[2001]["Text311"]
tNpcGossip[2001]["Text312"] = tQuestRecruit_Text[2001]["Text312"]
tNpcGossip[2001]["Text313"] = tQuestRecruit_Text[2001]["Text313"]
tNpcGossip[2001]["tOption3-1"] = {311}
tNpcGossip[2001]["Option311"] = tQuestRecruit_Text[2001]["311"]
tNpcGossip[2001]["OptionFunc311"] = "QuestRecruit_FindWay</N>3482"

--（已接未完成）牛刀小试
tNpcGossip[2001]["Text3-2"] = {321}
tNpcGossip[2001]["Text321"] = tQuestRecruit_Text[2001]["Text321"]
tNpcGossip[2001]["tOption3-2"] = {321}
tNpcGossip[2001]["Option321"] = tQuestRecruit_Text[2001]["321"]
tNpcGossip[2001]["OptionFunc321"] = "QuestRecruit_FindWay</N>3482"

--（交）牛刀小试	任务ID 3482
tNpcGossip[2001]["Text4-1"] = {411}
tNpcGossip[2001]["Text411"] = tQuestRecruit_Text[2001]["Text411"]
tNpcGossip[2001]["tOption4-1"] = {411}
tNpcGossip[2001]["Option411"] = tQuestRecruit_Text[2001]["411"]
tNpcGossip[2001]["OptionFunc411"] = "Task_IsHandOverByNpc</N>3482</N>2001</N>1"

-- 背包达上限
tNpcGossip[2001]["Text4-3"] = {431}
tNpcGossip[2001]["Text431"] = tQuestRecruit_Text[2001]["Text431"]
tNpcGossip[2001]["tOption4-3"] = {431}
tNpcGossip[2001]["Option431"] = tQuestRecruit_Text[2001]["431"]

--（接）速递羽书	任务ID 3483
tNpcGossip[2001]["Text4-2"] = {421}
tNpcGossip[2001]["Text421"] = tQuestRecruit_Text[2001]["Text421"]
tNpcGossip[2001]["tOption4-2"] = {421}
tNpcGossip[2001]["Option421"] = tQuestRecruit_Text[2001]["421"]
tNpcGossip[2001]["OptionFunc421"] = "QuestRecruit_FindWay</N>3483"

--（接失败，背包不足）速递羽书	任务ID 3483
tNpcGossip[2001]["Text4-5"] = {451}
tNpcGossip[2001]["Text451"] = tQuestRecruit_Text[2001]["Text451"]
tNpcGossip[2001]["tOption4-5"] = {431}
tNpcGossip[2001]["Option451"] = tQuestRecruit_Text[2001]["451"]

--（任务中）速递羽书	任务ID 3483
tNpcGossip[2001]["Text4-4"] = {441}
tNpcGossip[2001]["Text441"] = tQuestRecruit_Text[2001]["Text441"]
tNpcGossip[2001]["tOption4-4"] = {441,442}
tNpcGossip[2001]["Option441"] = tQuestRecruit_Text[2001]["441"]
tNpcGossip[2001]["Option442"] = tQuestRecruit_Text[2001]["442"]
tNpcGossip[2001]["OptionFunc441"] = "QuestRecruit_ReqTaskItem</N>3483</N>2001"
tNpcGossip[2001]["OptionFunc442"] = "QuestRecruit_FindWay</N>3483"

--（任务中）速递羽书	有任务物品
tNpcGossip[2001]["Text5-1"] = {511}
tNpcGossip[2001]["Text511"] = tQuestRecruit_Text[2001]["Text511"]
tNpcGossip[2001]["tOption5-1"] = {511}
tNpcGossip[2001]["Option511"] = tQuestRecruit_Text[2001]["511"]

--（任务中）速递羽书	没任务物品背包不足
tNpcGossip[2001]["Text5-2"] = {521}
tNpcGossip[2001]["Text521"] = tQuestRecruit_Text[2001]["Text521"]
tNpcGossip[2001]["tOption5-2"] = {521}
tNpcGossip[2001]["Option521"] = tQuestRecruit_Text[2001]["521"]

--（任务中）速递羽书	补领任务物品成功
tNpcGossip[2001]["Text5-3"] = {531}
tNpcGossip[2001]["Text531"] = tQuestRecruit_Text[2001]["Text531"]
tNpcGossip[2001]["tOption5-3"] = {531}
tNpcGossip[2001]["Option531"] = tQuestRecruit_Text[2001]["531"]
tNpcGossip[2001]["OptionFunc531"] = "QuestRecruit_FindWay</N>3483"

------------------------------------------
--（交）初涉日常	任务ID 3487
tNpcGossip[2001]["Text6-1"] = {611}
tNpcGossip[2001]["Text611"] = tQuestRecruit_Text[2001]["Text611"]
tNpcGossip[2001]["tOption6-1"] = {611}
tNpcGossip[2001]["Option611"] = tQuestRecruit_Text[2001]["611"]
tNpcGossip[2001]["OptionFunc611"] = "Task_IsHandOverByNpc</N>3487</N>2001</N>1"

--（交）初涉日常	未完成
tNpcGossip[2001]["Text6-2"] = {621}
tNpcGossip[2001]["Text621"] = tQuestRecruit_Text[2001]["Text621"]
tNpcGossip[2001]["tOption6-2"] = {621}
tNpcGossip[2001]["Option621"] = tQuestRecruit_Text[2001]["621"]
tNpcGossip[2001]["OptionFunc621"] = "QuestRecruit_FindWay</N>3487"

-- 背包达上限
tNpcGossip[2001]["Text6-3"] = {631}
tNpcGossip[2001]["Text631"] = tQuestRecruit_Text[2001]["Text631"]
tNpcGossip[2001]["tOption6-3"] = {631}
tNpcGossip[2001]["Option631"] = tQuestRecruit_Text[2001]["631"]

--（接）初露锋芒	任务ID 3555
tNpcGossip[2001]["Text6-4"] = {641,642}
tNpcGossip[2001]["Text641"] = tQuestRecruit_Text[2001]["Text641"]
tNpcGossip[2001]["Text642"] = tQuestRecruit_Text[2001]["Text642"]
tNpcGossip[2001]["tOption6-4"] = {641}
tNpcGossip[2001]["Option641"] = tQuestRecruit_Text[2001]["641"]

--（交）初露锋芒	任务ID 3555
tNpcGossip[2001]["Text6-5"] = {651}
tNpcGossip[2001]["Text651"] = tQuestRecruit_Text[2001]["Text651"]
tNpcGossip[2001]["tOption6-5"] = {651}
tNpcGossip[2001]["Option651"] = tQuestRecruit_Text[2001]["651"]
tNpcGossip[2001]["OptionFunc651"] = "Task_IsHandOverByNpc</N>3555</N>2001</N>1"

--（交）初露锋芒	未完成
tNpcGossip[2001]["Text6-6"] = {661,662}
tNpcGossip[2001]["Text661"] = tQuestRecruit_Text[2001]["Text661"]
tNpcGossip[2001]["Text662"] = tQuestRecruit_Text[2001]["Text662"]
tNpcGossip[2001]["tOption6-6"] = {661}
tNpcGossip[2001]["Option661"] = tQuestRecruit_Text[2001]["661"]

-- 背包达上限
tNpcGossip[2001]["Text6-7"] = {671}
tNpcGossip[2001]["Text671"] = tQuestRecruit_Text[2001]["Text671"]
tNpcGossip[2001]["tOption6-7"] = {671}
tNpcGossip[2001]["Option671"] = tQuestRecruit_Text[2001]["671"]

------------------------------------------
--（交）二涉日常	任务ID 3495
tNpcGossip[2001]["Text7-1"] = {711}
tNpcGossip[2001]["Text711"] = tQuestRecruit_Text[2001]["Text711"]
tNpcGossip[2001]["tOption7-1"] = {711}
tNpcGossip[2001]["Option711"] = tQuestRecruit_Text[2001]["711"]
tNpcGossip[2001]["OptionFunc711"] = "Task_IsHandOverByNpc</N>3495</N>2001</N>1"

--（交）二涉日常	未完成
tNpcGossip[2001]["Text7-2"] = {721}
tNpcGossip[2001]["Text721"] = tQuestRecruit_Text[2001]["Text721"]
tNpcGossip[2001]["tOption7-2"] = {721}
tNpcGossip[2001]["Option721"] = tQuestRecruit_Text[2001]["721"]
tNpcGossip[2001]["OptionFunc721"] = "QuestRecruit_FindWay</N>3495"

-- 背包达上限
tNpcGossip[2001]["Text7-3"] = {731}
tNpcGossip[2001]["Text731"] = tQuestRecruit_Text[2001]["Text731"]
tNpcGossip[2001]["tOption7-3"] = {731}
tNpcGossip[2001]["Option731"] = tQuestRecruit_Text[2001]["731"]

--（接）崭露头角	任务ID 3561
tNpcGossip[2001]["Text7-4"] = {741,742}
tNpcGossip[2001]["Text741"] = tQuestRecruit_Text[2001]["Text741"]
tNpcGossip[2001]["Text742"] = tQuestRecruit_Text[2001]["Text742"]
tNpcGossip[2001]["tOption7-4"] = {741}
tNpcGossip[2001]["Option741"] = tQuestRecruit_Text[2001]["741"]

--（交）崭露头角	任务ID 3561
tNpcGossip[2001]["Text7-5"] = {751}
tNpcGossip[2001]["Text751"] = tQuestRecruit_Text[2001]["Text751"]
tNpcGossip[2001]["tOption7-5"] = {751}
tNpcGossip[2001]["Option751"] = tQuestRecruit_Text[2001]["751"]
tNpcGossip[2001]["OptionFunc751"] = "Task_IsHandOverByNpc</N>3561</N>2001</N>1"

--（交）崭露头角	未完成
tNpcGossip[2001]["Text7-6"] = {761}
tNpcGossip[2001]["Text761"] = tQuestRecruit_Text[2001]["Text761"]
tNpcGossip[2001]["tOption7-6"] = {761}
tNpcGossip[2001]["Option761"] = tQuestRecruit_Text[2001]["761"]

-- 背包达上限
tNpcGossip[2001]["Text7-7"] = {771}
tNpcGossip[2001]["Text771"] = tQuestRecruit_Text[2001]["Text771"]
tNpcGossip[2001]["tOption7-7"] = {771}
tNpcGossip[2001]["Option771"] = tQuestRecruit_Text[2001]["771"]

------------------------------------------
--（交）三涉日常	任务ID 3504
tNpcGossip[2001]["Text8-1"] = {811}
tNpcGossip[2001]["Text811"] = tQuestRecruit_Text[2001]["Text811"]
tNpcGossip[2001]["tOption8-1"] = {811}
tNpcGossip[2001]["Option811"] = tQuestRecruit_Text[2001]["811"]
tNpcGossip[2001]["OptionFunc811"] = "Task_IsHandOverByNpc</N>3504</N>2001</N>1"

--（交）三涉日常	未完成
tNpcGossip[2001]["Text8-2"] = {821}
tNpcGossip[2001]["Text821"] = tQuestRecruit_Text[2001]["Text821"]
tNpcGossip[2001]["tOption8-2"] = {821}
tNpcGossip[2001]["Option821"] = tQuestRecruit_Text[2001]["821"]
tNpcGossip[2001]["OptionFunc821"] = "QuestRecruit_FindWay</N>3504"

-- 背包达上限
tNpcGossip[2001]["Text8-3"] = {831}
tNpcGossip[2001]["Text831"] = tQuestRecruit_Text[2001]["Text831"]
tNpcGossip[2001]["tOption8-3"] = {831}
tNpcGossip[2001]["Option831"] = tQuestRecruit_Text[2001]["831"]

--（接）后进之秀	任务ID 3566
tNpcGossip[2001]["Text8-4"] = {841,842}
tNpcGossip[2001]["Text841"] = tQuestRecruit_Text[2001]["Text841"]
tNpcGossip[2001]["Text842"] = tQuestRecruit_Text[2001]["Text842"]
tNpcGossip[2001]["tOption8-4"] = {841}
tNpcGossip[2001]["Option841"] = tQuestRecruit_Text[2001]["841"]

--（交）后进之秀	任务ID 3566
tNpcGossip[2001]["Text8-5"] = {851}
tNpcGossip[2001]["Text851"] = tQuestRecruit_Text[2001]["Text851"]
tNpcGossip[2001]["tOption8-5"] = {851}
tNpcGossip[2001]["Option851"] = tQuestRecruit_Text[2001]["851"]
tNpcGossip[2001]["OptionFunc851"] = "Task_IsHandOverByNpc</N>3566</N>2001</N>1"

--（交）后进之秀	未完成
tNpcGossip[2001]["Text8-6"] = {861}
tNpcGossip[2001]["Text861"] = tQuestRecruit_Text[2001]["Text861"]
tNpcGossip[2001]["tOption8-6"] = {861}
tNpcGossip[2001]["Option861"] = tQuestRecruit_Text[2001]["861"]

-- 背包达上限
tNpcGossip[2001]["Text8-7"] = {871}
tNpcGossip[2001]["Text871"] = tQuestRecruit_Text[2001]["Text871"]
tNpcGossip[2001]["tOption8-7"] = {871}
tNpcGossip[2001]["Option871"] = tQuestRecruit_Text[2001]["871"]

------------------------------------------
--（交）再涉日常	任务ID 3512
tNpcGossip[2001]["Text9-1"] = {911}
tNpcGossip[2001]["Text911"] = tQuestRecruit_Text[2001]["Text911"]
tNpcGossip[2001]["tOption9-1"] = {911}
tNpcGossip[2001]["Option911"] = tQuestRecruit_Text[2001]["911"]
tNpcGossip[2001]["OptionFunc911"] = "Task_IsHandOverByNpc</N>3512</N>2001</N>1"

--（交）再涉日常	未完成
tNpcGossip[2001]["Text9-2"] = {921}
tNpcGossip[2001]["Text921"] = tQuestRecruit_Text[2001]["Text921"]
tNpcGossip[2001]["tOption9-2"] = {921}
tNpcGossip[2001]["Option921"] = tQuestRecruit_Text[2001]["921"]
tNpcGossip[2001]["OptionFunc921"] = "QuestRecruit_FindWay</N>3512"

-- 背包达上限
tNpcGossip[2001]["Text9-3"] = {931}
tNpcGossip[2001]["Text931"] = tQuestRecruit_Text[2001]["Text931"]
tNpcGossip[2001]["tOption9-3"] = {931}
tNpcGossip[2001]["Option931"] = tQuestRecruit_Text[2001]["931"]

--（接）锋芒再现	任务ID 3573
tNpcGossip[2001]["Text9-4"] = {941,942}
tNpcGossip[2001]["Text941"] = tQuestRecruit_Text[2001]["Text941"]
tNpcGossip[2001]["Text942"] = tQuestRecruit_Text[2001]["Text942"]
tNpcGossip[2001]["tOption9-4"] = {941}
tNpcGossip[2001]["Option941"] = tQuestRecruit_Text[2001]["941"]

--（交）锋芒再现	任务ID 3573
tNpcGossip[2001]["Text9-5"] = {951}
tNpcGossip[2001]["Text951"] = tQuestRecruit_Text[2001]["Text951"]
tNpcGossip[2001]["tOption9-5"] = {951}
tNpcGossip[2001]["Option951"] = tQuestRecruit_Text[2001]["951"]
tNpcGossip[2001]["OptionFunc951"] = "Task_IsHandOverByNpc</N>3573</N>2001</N>1"

--（交）锋芒再现	未完成
tNpcGossip[2001]["Text9-6"] = {961}
tNpcGossip[2001]["Text961"] = tQuestRecruit_Text[2001]["Text961"]
tNpcGossip[2001]["tOption9-6"] = {961}
tNpcGossip[2001]["Option961"] = tQuestRecruit_Text[2001]["961"]

--（接）【前往枫溪林】	任务ID 3488
tNpcGossip[2001]["Text10-1"] = {1011}
tNpcGossip[2001]["Text1011"] = tQuestRecruit_Text[2001]["Text1011"]
tNpcGossip[2001]["tOption10-1"] = {1011}
tNpcGossip[2001]["Option1011"] = tQuestRecruit_Text[2001]["1011"]
tNpcGossip[2001]["OptionFunc1011"] = "QuestRecruit_FindWay</N>3488"

--（接）【前往绝情谷】	任务ID 3496
tNpcGossip[2001]["Text11-1"] = {1111}
tNpcGossip[2001]["Text1111"] = tQuestRecruit_Text[2001]["Text1111"]
tNpcGossip[2001]["tOption11-1"] = {1111}
tNpcGossip[2001]["Option1111"] = tQuestRecruit_Text[2001]["1111"]
tNpcGossip[2001]["OptionFunc1111"] = "QuestRecruit_FindWay</N>3496"

--（接）【前往云门关】	任务ID 3505
tNpcGossip[2001]["Text12-1"] = {1211,1212}
tNpcGossip[2001]["Text1211"] = tQuestRecruit_Text[2001]["Text1211"]
tNpcGossip[2001]["Text1212"] = tQuestRecruit_Text[2001]["Text1212"]
tNpcGossip[2001]["tOption12-1"] = {1211}
tNpcGossip[2001]["Option1211"] = tQuestRecruit_Text[2001]["1211"]
tNpcGossip[2001]["OptionFunc1211"] = "QuestRecruit_FindWay</N>3505"

--（接）【前往芦花荡】	任务ID 3513
tNpcGossip[2001]["Text13-1"] = {1311}
tNpcGossip[2001]["Text1311"] = tQuestRecruit_Text[2001]["Text1311"]
tNpcGossip[2001]["tOption13-1"] = {1311}
tNpcGossip[2001]["Option1311"] = tQuestRecruit_Text[2001]["1311"]
tNpcGossip[2001]["OptionFunc1311"] = "QuestRecruit_FindWay</N>3513"

--（交）回禀总兵	任务ID 3578
tNpcGossip[2001]["Text14-1"] = {1411}
tNpcGossip[2001]["Text1411"] = tQuestRecruit_Text[2001]["Text1411"]
tNpcGossip[2001]["tOption14-1"] = {1411}
tNpcGossip[2001]["Option1411"] = tQuestRecruit_Text[2001]["1411"]
tNpcGossip[2001]["OptionFunc1411"] = "Task_IsHandOverByNpc</N>3578</N>2001</N>1"

-- 锋芒毕露背包达上限
tNpcGossip[2001]["Text14-3"] = {1431}
tNpcGossip[2001]["Text1431"] = tQuestRecruit_Text[2001]["Text1431"]
tNpcGossip[2001]["tOption14-3"] = {1431}
tNpcGossip[2001]["Option1431"] = tQuestRecruit_Text[2001]["1431"]

--（接）锋芒毕露	任务ID 3579
tNpcGossip[2001]["Text14-4"] = {1441,1442}
tNpcGossip[2001]["Text1441"] = tQuestRecruit_Text[2001]["Text1441"]
tNpcGossip[2001]["Text1442"] = tQuestRecruit_Text[2001]["Text1442"]
tNpcGossip[2001]["tOption14-4"] = {1441}
tNpcGossip[2001]["Option1441"] = tQuestRecruit_Text[2001]["1441"]

--（交）锋芒毕露	任务ID 3579
tNpcGossip[2001]["Text14-5"] = {1451}
tNpcGossip[2001]["Text1451"] = tQuestRecruit_Text[2001]["Text1451"]
tNpcGossip[2001]["tOption14-5"] = {1451}
tNpcGossip[2001]["Option1451"] = tQuestRecruit_Text[2001]["1451"]
tNpcGossip[2001]["OptionFunc1451"] = "Task_IsHandOverByNpc</N>3579</N>2001</N>1"

--（交）锋芒毕露	未完成
tNpcGossip[2001]["Text14-6"] = {1461}
tNpcGossip[2001]["Text1461"] = tQuestRecruit_Text[2001]["Text1461"]
tNpcGossip[2001]["tOption14-6"] = {1461}
tNpcGossip[2001]["Option1461"] = tQuestRecruit_Text[2001]["1461"]

-------------------------------100级后添加。
-- [征服][活动脚本]CB2版本优化任务内容制作-片区任务(10.22)
-- tTaskTemplate[3579]["NextTaskId"] = 3605

--（接）前往就职【壹】	任务ID 3605
tNpcGossip[2001]["Text15-1"] = {1511,1512,1513}
tNpcGossip[2001]["Text1511"] = tQuestRecruit_Text[2001]["Text1511"]
tNpcGossip[2001]["Text1512"] = tQuestRecruit_Text[2001]["Text1512"]
tNpcGossip[2001]["Text1513"] = tQuestRecruit_Text[2001]["Text1513"]
tNpcGossip[2001]["tOption15-1"] = {1511}
tNpcGossip[2001]["Option1511"] = tQuestRecruit_Text[2001]["1511"]
tNpcGossip[2001]["OptionFunc1511"] = "QuestRecruit_FindWay</N>3605"

--（交）前往就职【贰】	任务ID 3605
tNpcGossip[2001]["Text15-2"] = {1521}
tNpcGossip[2001]["Text1521"] = tQuestRecruit_Text[2001]["Text1521"]
tNpcGossip[2001]["tOption15-2"] = {1521}
tNpcGossip[2001]["Option1521"] = tQuestRecruit_Text[2001]["1521"]
tNpcGossip[2001]["OptionFunc1521"] = "Task_IsHandOverByNpc</N>3824</N>2001</N>1"

--（交）前往就职【贰】	未完成
tNpcGossip[2001]["Text15-3"] = {1531}
tNpcGossip[2001]["Text1531"] = tQuestRecruit_Text[2001]["Text1531"]
tNpcGossip[2001]["tOption15-3"] = {1531}
tNpcGossip[2001]["Option1531"] = tQuestRecruit_Text[2001]["1531"]
tNpcGossip[2001]["OptionFunc1531"] = "QuestRecruit_FindWay</N>3605"

--（交）前往就职【贰】	背包不足
tNpcGossip[2001]["Text15-4"] = {1541}
tNpcGossip[2001]["Text1541"] = tQuestRecruit_Text[2001]["Text1541"]
tNpcGossip[2001]["tOption15-4"] = {1541}
tNpcGossip[2001]["Option1541"] = tQuestRecruit_Text[2001]["1541"]


--（接）名震江湖【壹】	任务ID 3606
tNpcGossip[2001]["Text16-1"] = {1611,1612,1613}
tNpcGossip[2001]["Text1611"] = tQuestRecruit_Text[2001]["Text1611"]
tNpcGossip[2001]["Text1612"] = tQuestRecruit_Text[2001]["Text1612"]
tNpcGossip[2001]["Text1613"] = tQuestRecruit_Text[2001]["Text1613"]
tNpcGossip[2001]["tOption16-1"] = {1611}
tNpcGossip[2001]["Option1611"] = tQuestRecruit_Text[2001]["1611"]

--（交）名震江湖【壹】	任务ID 3606
tNpcGossip[2001]["Text16-2"] = {1621}
tNpcGossip[2001]["Text1621"] = tQuestRecruit_Text[2001]["Text1621"]
tNpcGossip[2001]["tOption16-2"] = {1621}
tNpcGossip[2001]["Option1621"] = tQuestRecruit_Text[2001]["1621"]
tNpcGossip[2001]["OptionFunc1621"] = "Task_IsHandOverByNpc</N>3606</N>2001</N>1"

--（交）名震江湖【壹】	未完成
tNpcGossip[2001]["Text16-3"] = {1631}
tNpcGossip[2001]["Text1631"] = tQuestRecruit_Text[2001]["Text1631"]
tNpcGossip[2001]["tOption16-3"] = {1631}
tNpcGossip[2001]["Option1631"] = tQuestRecruit_Text[2001]["1631"]

--（交）名震江湖【壹】 天石赠上限	任务ID 3608
tNpcGossip[2001]["Text16-4"] = {1641}
tNpcGossip[2001]["Text1641"] = tQuestRecruit_Text[2001]["Text1641"]
tNpcGossip[2001]["tOption16-4"] = {1641}
tNpcGossip[2001]["Option1641"] = tQuestRecruit_Text[2001]["1641"]

--（接）名震江湖【贰】	任务ID 3608
tNpcGossip[2001]["Text17-1"] = {1711,1712,1713}
tNpcGossip[2001]["Text1711"] = tQuestRecruit_Text[2001]["Text1711"]
tNpcGossip[2001]["Text1712"] = tQuestRecruit_Text[2001]["Text1712"]
tNpcGossip[2001]["Text1713"] = tQuestRecruit_Text[2001]["Text1713"]
tNpcGossip[2001]["tOption17-1"] = {1711}
tNpcGossip[2001]["Option1711"] = tQuestRecruit_Text[2001]["1711"]

--（交）名震江湖【贰】	任务ID 3608
tNpcGossip[2001]["Text17-2"] = {1721}
tNpcGossip[2001]["Text1721"] = tQuestRecruit_Text[2001]["Text1721"]
tNpcGossip[2001]["tOption17-2"] = {1721}
tNpcGossip[2001]["Option1721"] = tQuestRecruit_Text[2001]["1721"]
tNpcGossip[2001]["OptionFunc1721"] = "Task_IsHandOverByNpc</N>3607</N>2001</N>1"

--（交）名震江湖【贰】	未完成
tNpcGossip[2001]["Text17-3"] = {1731}
tNpcGossip[2001]["Text1731"] = tQuestRecruit_Text[2001]["Text1731"]
tNpcGossip[2001]["tOption17-3"] = {1731}
tNpcGossip[2001]["Option1731"] = tQuestRecruit_Text[2001]["1731"]

--名震江湖【贰】 天石赠上限	任务ID 3608
tNpcGossip[2001]["Text17-4"] = {1741}
tNpcGossip[2001]["Text1741"] = tQuestRecruit_Text[2001]["Text1641"]
tNpcGossip[2001]["tOption17-4"] = {1741}
tNpcGossip[2001]["Option1741"] = tQuestRecruit_Text[2001]["1641"]

--（接）名震江湖【叁】	任务ID 3608
tNpcGossip[2001]["Text18-1"] = {1811,1812,1813}
tNpcGossip[2001]["Text1811"] = tQuestRecruit_Text[2001]["Text1811"]
tNpcGossip[2001]["Text1812"] = tQuestRecruit_Text[2001]["Text1812"]
tNpcGossip[2001]["Text1813"] = tQuestRecruit_Text[2001]["Text1813"]
tNpcGossip[2001]["tOption18-1"] = {1811}
tNpcGossip[2001]["Option1811"] = tQuestRecruit_Text[2001]["1811"]

--（交）名震江湖【叁】	任务ID 3608
tNpcGossip[2001]["Text18-2"] = {1821}
tNpcGossip[2001]["Text1821"] = tQuestRecruit_Text[2001]["Text1821"]
tNpcGossip[2001]["tOption18-2"] = {1821}
tNpcGossip[2001]["Option1821"] = tQuestRecruit_Text[2001]["1821"]
tNpcGossip[2001]["OptionFunc1821"] = "Task_IsHandOverByNpc</N>3608</N>2001</N>1"

--（交）名震江湖【叁】	未完成
tNpcGossip[2001]["Text18-3"] = {1831}
tNpcGossip[2001]["Text1831"] = tQuestRecruit_Text[2001]["Text1831"]
tNpcGossip[2001]["tOption18-3"] = {1831}
tNpcGossip[2001]["Option1831"] = tQuestRecruit_Text[2001]["1831"]

--名震江湖【叁】 背包不足	任务ID 3608
tNpcGossip[2001]["Text18-4"] = {1841}
tNpcGossip[2001]["Text1841"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption18-4"] = {1841}
tNpcGossip[2001]["Option1841"] = tQuestRecruit_Text[2001]["1841"]

--（接）名震江湖【肆】	任务ID 3609
tNpcGossip[2001]["Text19-1"] = {1911,1912,1913}
tNpcGossip[2001]["Text1911"] = tQuestRecruit_Text[2001]["Text1911"]
tNpcGossip[2001]["Text1912"] = tQuestRecruit_Text[2001]["Text1912"]
tNpcGossip[2001]["Text1913"] = tQuestRecruit_Text[2001]["Text1913"]
tNpcGossip[2001]["tOption19-1"] = {1911}
tNpcGossip[2001]["Option1911"] = tQuestRecruit_Text[2001]["1911"]

--（交）名震江湖【肆】	任务ID 3609
tNpcGossip[2001]["Text19-2"] = {1921}
tNpcGossip[2001]["Text1921"] = tQuestRecruit_Text[2001]["Text1921"]
tNpcGossip[2001]["tOption19-2"] = {1921}
tNpcGossip[2001]["Option1921"] = tQuestRecruit_Text[2001]["1921"]
tNpcGossip[2001]["OptionFunc1921"] = "Task_IsHandOverByNpc</N>3609</N>2001</N>1"

--（交）名震江湖【肆】	未完成
tNpcGossip[2001]["Text19-3"] = {1931}
tNpcGossip[2001]["Text1931"] = tQuestRecruit_Text[2001]["Text1931"]
tNpcGossip[2001]["tOption19-3"] = {1931}
tNpcGossip[2001]["Option1931"] = tQuestRecruit_Text[2001]["1931"]

--名震江湖【肆】 背包不足	任务ID 3609
tNpcGossip[2001]["Text19-4"] = {1941}
tNpcGossip[2001]["Text1941"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption19-4"] = {1941}
tNpcGossip[2001]["Option1941"] = tQuestRecruit_Text[2001]["1841"]


--（接）前往试炼	任务ID 3610
tNpcGossip[2001]["Text20-1"] = {2011,2012,2013}
tNpcGossip[2001]["Text2011"] = tQuestRecruit_Text[2001]["Text2011"]
tNpcGossip[2001]["Text2012"] = tQuestRecruit_Text[2001]["Text2012"]
tNpcGossip[2001]["Text2013"] = tQuestRecruit_Text[2001]["Text2013"]
tNpcGossip[2001]["tOption20-1"] = {2011}
tNpcGossip[2001]["Option2011"] = tQuestRecruit_Text[2001]["2011"]
tNpcGossip[2001]["OptionFunc2011"] = "QuestRecruit_FindWay</N>3610"

--（交）前往试炼	任务ID 3610
tNpcGossip[2001]["Text20-2"] = {2021}
tNpcGossip[2001]["Text2021"] = tQuestRecruit_Text[2001]["Text2021"]
tNpcGossip[2001]["tOption20-2"] = {2021}
tNpcGossip[2001]["Option2021"] = tQuestRecruit_Text[2001]["2021"]
tNpcGossip[2001]["OptionFunc2021"] = "Task_IsHandOverByNpc</N>3610</N>2001</N>1"

--（交）前往试炼	未完成
tNpcGossip[2001]["Text20-3"] = {2031}
tNpcGossip[2001]["Text2031"] = tQuestRecruit_Text[2001]["Text2031"]
tNpcGossip[2001]["tOption20-3"] = {2031}
tNpcGossip[2001]["Option2031"] = tQuestRecruit_Text[2001]["2031"]
tNpcGossip[2001]["OptionFunc2031"] = "QuestRecruit_FindWay</N>3610"


--（接）盖世豪侠【壹】	任务ID 5901
tNpcGossip[2001]["Text21-1"] = {2111,2112,2113}
tNpcGossip[2001]["Text2111"] = tQuestRecruit_Text[2001]["Text2111"]
tNpcGossip[2001]["Text2112"] = tQuestRecruit_Text[2001]["Text2112"]
tNpcGossip[2001]["Text2113"] = tQuestRecruit_Text[2001]["Text2113"]
tNpcGossip[2001]["tOption21-1"] = {2111}
tNpcGossip[2001]["Option2111"] = tQuestRecruit_Text[2001]["2111"]

--（交）盖世豪侠【壹】	任务ID 5901
tNpcGossip[2001]["Text21-2"] = {2121}
tNpcGossip[2001]["Text2121"] = tQuestRecruit_Text[2001]["Text2121"]
tNpcGossip[2001]["tOption21-2"] = {2121}
tNpcGossip[2001]["Option2121"] = tQuestRecruit_Text[2001]["2121"]
tNpcGossip[2001]["OptionFunc2121"] = "Task_IsHandOverByNpc</N>5901</N>2001</N>1"

--（交）盖世豪侠【壹】	任务ID 5901	未完成
tNpcGossip[2001]["Text21-3"] = {2131}
tNpcGossip[2001]["Text2131"] = tQuestRecruit_Text[2001]["Text2131"]
tNpcGossip[2001]["tOption21-3"] = {2131}
tNpcGossip[2001]["Option2131"] = tQuestRecruit_Text[2001]["2131"]

--背包不足	盖世豪侠【壹】	任务ID 5901
tNpcGossip[2001]["Text21-4"] = {2141}
tNpcGossip[2001]["Text2141"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption21-4"] = {2141}
tNpcGossip[2001]["Option2141"] = tQuestRecruit_Text[2001]["1841"]

--天石赠上限	盖世豪侠【壹】	任务ID 5901
tNpcGossip[2001]["Text21-5"] = {2151}
tNpcGossip[2001]["Text2151"] = tQuestRecruit_Text[2001]["Text1641"]
tNpcGossip[2001]["tOption21-5"] = {2151}
tNpcGossip[2001]["Option2151"] = tQuestRecruit_Text[2001]["1641"]

-- 盖世豪侠【贰】	5902
--（接）盖世豪侠【贰】	任务ID 5902
tNpcGossip[2001]["Text22-1"] = {2211,2212,2213}
tNpcGossip[2001]["Text2211"] = tQuestRecruit_Text[2001]["Text2211"]
tNpcGossip[2001]["Text2212"] = tQuestRecruit_Text[2001]["Text2212"]
tNpcGossip[2001]["Text2213"] = tQuestRecruit_Text[2001]["Text2213"]
tNpcGossip[2001]["tOption22-1"] = {2211}
tNpcGossip[2001]["Option2211"] = tQuestRecruit_Text[2001]["2211"]

--（交）盖世豪侠【贰】	任务ID 5902
tNpcGossip[2001]["Text22-2"] = {2221}
tNpcGossip[2001]["Text2221"] = tQuestRecruit_Text[2001]["Text2221"]
tNpcGossip[2001]["tOption22-2"] = {2221}
tNpcGossip[2001]["Option2221"] = tQuestRecruit_Text[2001]["2221"]
tNpcGossip[2001]["OptionFunc2221"] = "Task_IsHandOverByNpc</N>5902</N>2001</N>1"

--（交）盖世豪侠【贰】	任务ID 5902	未完成
tNpcGossip[2001]["Text22-3"] = {2231}
tNpcGossip[2001]["Text2231"] = tQuestRecruit_Text[2001]["Text2231"]
tNpcGossip[2001]["tOption22-3"] = {2231}
tNpcGossip[2001]["Option2231"] = tQuestRecruit_Text[2001]["2231"]

--背包不足	盖世豪侠【贰】	任务ID 5902
tNpcGossip[2001]["Text22-4"] = {2241}
tNpcGossip[2001]["Text2241"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption22-4"] = {2241}
tNpcGossip[2001]["Option2241"] = tQuestRecruit_Text[2001]["1841"]


-- 盖世豪侠【叁】	5903
--（接）盖世豪侠【叁】	任务ID 5903
tNpcGossip[2001]["Text23-1"] = {2311,2312,2313}
tNpcGossip[2001]["Text2311"] = tQuestRecruit_Text[2001]["Text2311"]
tNpcGossip[2001]["Text2312"] = tQuestRecruit_Text[2001]["Text2312"]
tNpcGossip[2001]["Text2313"] = tQuestRecruit_Text[2001]["Text2313"]
tNpcGossip[2001]["tOption23-1"] = {2311}
tNpcGossip[2001]["Option2311"] = tQuestRecruit_Text[2001]["2311"]

--（交）盖世豪侠【叁】	任务ID 5903
tNpcGossip[2001]["Text23-2"] = {2321}
tNpcGossip[2001]["Text2321"] = tQuestRecruit_Text[2001]["Text2321"]
tNpcGossip[2001]["tOption23-2"] = {2321}
tNpcGossip[2001]["Option2321"] = tQuestRecruit_Text[2001]["2321"]
tNpcGossip[2001]["OptionFunc2321"] = "Task_IsHandOverByNpc</N>5903</N>2001</N>1"

--（交）盖世豪侠【叁】	任务ID 5903	未完成
tNpcGossip[2001]["Text23-3"] = {2311}
tNpcGossip[2001]["Text2311"] = tQuestRecruit_Text[2001]["Text2311"]
tNpcGossip[2001]["tOption23-3"] = {2311}
tNpcGossip[2001]["Option2311"] = tQuestRecruit_Text[2001]["2311"]

--背包不足	盖世豪侠【叁】	任务ID 5903
tNpcGossip[2001]["Text23-4"] = {2341}
tNpcGossip[2001]["Text2341"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption23-4"] = {2341}
tNpcGossip[2001]["Option2341"] = tQuestRecruit_Text[2001]["1841"]

--天石赠上限	盖世豪侠【叁】	任务ID 5903
tNpcGossip[2001]["Text23-5"] = {2351}
tNpcGossip[2001]["Text2351"] = tQuestRecruit_Text[2001]["Text1641"]
tNpcGossip[2001]["tOption23-5"] = {2351}
tNpcGossip[2001]["Option2351"] = tQuestRecruit_Text[2001]["1641"]

-- 盖世豪侠【肆】	5904
--（接）盖世豪侠【肆】	任务ID 5904
tNpcGossip[2001]["Text24-1"] = {2411,2412,2413}
tNpcGossip[2001]["Text2411"] = tQuestRecruit_Text[2001]["Text2411"]
tNpcGossip[2001]["Text2412"] = tQuestRecruit_Text[2001]["Text2412"]
tNpcGossip[2001]["Text2413"] = tQuestRecruit_Text[2001]["Text2413"]
tNpcGossip[2001]["tOption24-1"] = {2411}
tNpcGossip[2001]["Option2411"] = tQuestRecruit_Text[2001]["2411"]

--（交）盖世豪侠【肆】	任务ID 5904
tNpcGossip[2001]["Text24-2"] = {2421}
tNpcGossip[2001]["Text2421"] = tQuestRecruit_Text[2001]["Text2421"]
tNpcGossip[2001]["tOption24-2"] = {2421}
tNpcGossip[2001]["Option2421"] = tQuestRecruit_Text[2001]["2421"]
tNpcGossip[2001]["OptionFunc2421"] = "Task_IsHandOverByNpc</N>5904</N>2001</N>1"

--（交）盖世豪侠【肆】	任务ID 5904	未完成
tNpcGossip[2001]["Text24-3"] = {2431}
tNpcGossip[2001]["Text2431"] = tQuestRecruit_Text[2001]["Text2431"]
tNpcGossip[2001]["tOption24-3"] = {2431}
tNpcGossip[2001]["Option2431"] = tQuestRecruit_Text[2001]["2431"]

--背包不足	盖世豪侠【肆】	任务ID 5904
tNpcGossip[2001]["Text24-4"] = {2441}
tNpcGossip[2001]["Text2441"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption24-4"] = {2441}
tNpcGossip[2001]["Option2441"] = tQuestRecruit_Text[2001]["1841"]

-- 盖世豪侠【伍】	5905
--（接）盖世豪侠【伍】	任务ID 5905
tNpcGossip[2001]["Text25-1"] = {2511,2512,2513}
tNpcGossip[2001]["Text2511"] = tQuestRecruit_Text[2001]["Text2511"]
tNpcGossip[2001]["Text2512"] = tQuestRecruit_Text[2001]["Text2512"]
tNpcGossip[2001]["Text2513"] = tQuestRecruit_Text[2001]["Text2513"]
tNpcGossip[2001]["tOption25-1"] = {2511}
tNpcGossip[2001]["Option2511"] = tQuestRecruit_Text[2001]["2511"]

--（交）盖世豪侠【伍】	任务ID 5905
tNpcGossip[2001]["Text25-2"] = {2521}
tNpcGossip[2001]["Text2521"] = tQuestRecruit_Text[2001]["Text2521"]
tNpcGossip[2001]["tOption25-2"] = {2521}
tNpcGossip[2001]["Option2521"] = tQuestRecruit_Text[2001]["2521"]
tNpcGossip[2001]["OptionFunc2521"] = "Task_IsHandOverByNpc</N>5905</N>2001</N>1"

--（交）盖世豪侠【伍】	任务ID 5905	未完成
tNpcGossip[2001]["Text25-3"] = {2531}
tNpcGossip[2001]["Text2531"] = tQuestRecruit_Text[2001]["Text2531"]
tNpcGossip[2001]["tOption25-3"] = {2531}
tNpcGossip[2001]["Option2531"] = tQuestRecruit_Text[2001]["2531"]

--背包不足	盖世豪侠【伍】	任务ID 5905
tNpcGossip[2001]["Text25-4"] = {2541}
tNpcGossip[2001]["Text2541"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption25-4"] = {2541}
tNpcGossip[2001]["Option2541"] = tQuestRecruit_Text[2001]["1841"]

-- 盖世豪侠【陆】	5906
--（接）盖世豪侠【陆】	任务ID 5906
tNpcGossip[2001]["Text26-1"] = {2611,2612,2613}
tNpcGossip[2001]["Text2611"] = tQuestRecruit_Text[2001]["Text2611"]
tNpcGossip[2001]["Text2612"] = tQuestRecruit_Text[2001]["Text2612"]
tNpcGossip[2001]["Text2613"] = tQuestRecruit_Text[2001]["Text2613"]
tNpcGossip[2001]["tOption26-1"] = {2611}
tNpcGossip[2001]["Option2611"] = tQuestRecruit_Text[2001]["2611"]

--（交）盖世豪侠【陆】	任务ID 5906
tNpcGossip[2001]["Text26-2"] = {2621}
tNpcGossip[2001]["Text2621"] = tQuestRecruit_Text[2001]["Text2621"]
tNpcGossip[2001]["tOption26-2"] = {2621}
tNpcGossip[2001]["Option2621"] = tQuestRecruit_Text[2001]["2621"]
tNpcGossip[2001]["OptionFunc2621"] = "Task_IsHandOverByNpc</N>5906</N>2001</N>1"

--（交）盖世豪侠【陆】	任务ID 5906	未完成
tNpcGossip[2001]["Text26-3"] = {2631}
tNpcGossip[2001]["Text2631"] = tQuestRecruit_Text[2001]["Text2631"]
tNpcGossip[2001]["tOption26-3"] = {2631}
tNpcGossip[2001]["Option2631"] = tQuestRecruit_Text[2001]["2631"]

--天石赠上限	盖世豪侠【陆】	任务ID 5906
tNpcGossip[2001]["Text26-4"] = {2641}
tNpcGossip[2001]["Text2641"] = tQuestRecruit_Text[2001]["Text1641"]
tNpcGossip[2001]["tOption26-4"] = {2641}
tNpcGossip[2001]["Option2641"] = tQuestRecruit_Text[2001]["1641"]


-- 盖世豪侠【柒】	5907
--（接）盖世豪侠【柒】	任务ID 5907
tNpcGossip[2001]["Text27-1"] = {2711,2712,2713}
tNpcGossip[2001]["Text2711"] = tQuestRecruit_Text[2001]["Text2711"]
tNpcGossip[2001]["Text2712"] = tQuestRecruit_Text[2001]["Text2712"]
tNpcGossip[2001]["Text2713"] = tQuestRecruit_Text[2001]["Text2713"]
tNpcGossip[2001]["tOption27-1"] = {2711}
tNpcGossip[2001]["Option2711"] = tQuestRecruit_Text[2001]["2711"]

--（交）盖世豪侠【柒】	任务ID 5907
tNpcGossip[2001]["Text27-2"] = {2721}
tNpcGossip[2001]["Text2721"] = tQuestRecruit_Text[2001]["Text2721"]
tNpcGossip[2001]["tOption27-2"] = {2721}
tNpcGossip[2001]["Option2721"] = tQuestRecruit_Text[2001]["2721"]
tNpcGossip[2001]["OptionFunc2721"] = "Task_IsHandOverByNpc</N>5907</N>2001</N>1"

--（交）盖世豪侠【柒】	任务ID 5907	未完成
tNpcGossip[2001]["Text27-3"] = {2731}
tNpcGossip[2001]["Text2731"] = tQuestRecruit_Text[2001]["Text2731"]
tNpcGossip[2001]["tOption27-3"] = {2731}
tNpcGossip[2001]["Option2731"] = tQuestRecruit_Text[2001]["2731"]

--背包不足	盖世豪侠【柒】	任务ID 5907
tNpcGossip[2001]["Text27-4"] = {2741}
tNpcGossip[2001]["Text2741"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption27-4"] = {2741}
tNpcGossip[2001]["Option2741"] = tQuestRecruit_Text[2001]["1841"]


-- 盖世豪侠【捌】	5908
--（接）盖世豪侠【捌】	任务ID 5908
tNpcGossip[2001]["Text28-1"] = {2811,2812,2813}
tNpcGossip[2001]["Text2811"] = tQuestRecruit_Text[2001]["Text2811"]
tNpcGossip[2001]["Text2812"] = tQuestRecruit_Text[2001]["Text2812"]
tNpcGossip[2001]["Text2813"] = tQuestRecruit_Text[2001]["Text2813"]
tNpcGossip[2001]["tOption28-1"] = {2811}
tNpcGossip[2001]["Option2811"] = tQuestRecruit_Text[2001]["2811"]

--（交）盖世豪侠【捌】	任务ID 5908
tNpcGossip[2001]["Text28-2"] = {2821}
tNpcGossip[2001]["Text2821"] = tQuestRecruit_Text[2001]["Text2821"]
tNpcGossip[2001]["tOption28-2"] = {2821}
tNpcGossip[2001]["Option2821"] = tQuestRecruit_Text[2001]["2821"]
tNpcGossip[2001]["OptionFunc2821"] = "Task_IsHandOverByNpc</N>5908</N>2001</N>1"

--（交）盖世豪侠【捌】	任务ID 5908	未完成
tNpcGossip[2001]["Text28-3"] = {2831}
tNpcGossip[2001]["Text2831"] = tQuestRecruit_Text[2001]["Text2831"]
tNpcGossip[2001]["tOption28-3"] = {2831}
tNpcGossip[2001]["Option2831"] = tQuestRecruit_Text[2001]["2831"]

--背包不足	盖世豪侠【捌】	任务ID 5908
tNpcGossip[2001]["Text28-4"] = {2841}
tNpcGossip[2001]["Text2841"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption28-4"] = {2841}
tNpcGossip[2001]["Option2841"] = tQuestRecruit_Text[2001]["1841"]

-- 盖世豪侠【玖】	5909
--（接）盖世豪侠【玖】	5909
tNpcGossip[2001]["Text29-1"] = {2911,2912,2913}
tNpcGossip[2001]["Text2911"] = tQuestRecruit_Text[2001]["Text2911"]
tNpcGossip[2001]["Text2912"] = tQuestRecruit_Text[2001]["Text2912"]
tNpcGossip[2001]["Text2913"] = tQuestRecruit_Text[2001]["Text2913"]
tNpcGossip[2001]["tOption29-1"] = {2911}
tNpcGossip[2001]["Option2911"] = tQuestRecruit_Text[2001]["2911"]

--（交）盖世豪侠【玖】	5909
tNpcGossip[2001]["Text29-2"] = {2921}
tNpcGossip[2001]["Text2921"] = tQuestRecruit_Text[2001]["Text2921"]
tNpcGossip[2001]["tOption29-2"] = {2921}
tNpcGossip[2001]["Option2921"] = tQuestRecruit_Text[2001]["2911"]
tNpcGossip[2001]["OptionFunc2921"] = "Task_IsHandOverByNpc</N>5909</N>2001</N>1"

--（交）盖盖世豪侠【玖】	5909
tNpcGossip[2001]["Text29-3"] = {2931}
tNpcGossip[2001]["Text2931"] = tQuestRecruit_Text[2001]["Text2931"]
tNpcGossip[2001]["tOption29-3"] = {2931}
tNpcGossip[2001]["Option2931"] = tQuestRecruit_Text[2001]["2931"]

--背包不足	盖世豪侠【玖】	5909
tNpcGossip[2001]["Text29-4"] = {2941}
tNpcGossip[2001]["Text2941"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption29-4"] = {2941}
tNpcGossip[2001]["Option2941"] = tQuestRecruit_Text[2001]["1841"]


-- 盖世豪侠【拾】	5910
--（接）盖世豪侠【拾】	任务ID 5910
tNpcGossip[2001]["Text30-1"] = {3011,3012,3013}
tNpcGossip[2001]["Text3011"] = tQuestRecruit_Text[2001]["Text3011"]
tNpcGossip[2001]["Text3012"] = tQuestRecruit_Text[2001]["Text3012"]
tNpcGossip[2001]["Text3013"] = tQuestRecruit_Text[2001]["Text3013"]
tNpcGossip[2001]["tOption30-1"] = {3011}
tNpcGossip[2001]["Option3011"] = tQuestRecruit_Text[2001]["3011"]

--（交）盖世豪侠【拾】	任务ID 5910
tNpcGossip[2001]["Text30-2"] = {3021}
tNpcGossip[2001]["Text3021"] = tQuestRecruit_Text[2001]["Text3021"]
tNpcGossip[2001]["tOption30-2"] = {3021}
tNpcGossip[2001]["Option3021"] = tQuestRecruit_Text[2001]["3021"]
tNpcGossip[2001]["OptionFunc3021"] = "Task_IsHandOverByNpc</N>5910</N>2001</N>1"

--（交）盖世豪侠【拾】	任务ID 5910	未完成
tNpcGossip[2001]["Text30-3"] = {3031}
tNpcGossip[2001]["Text3031"] = tQuestRecruit_Text[2001]["Text3031"]
tNpcGossip[2001]["tOption30-3"] = {3031}
tNpcGossip[2001]["Option3031"] = tQuestRecruit_Text[2001]["3031"]

--背包不足	盖世豪侠【拾】	任务ID 5910
tNpcGossip[2001]["Text30-4"] = {3041}
tNpcGossip[2001]["Text3041"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption30-4"] = {3041}
tNpcGossip[2001]["Option3041"] = tQuestRecruit_Text[2001]["1841"]

--天石赠上限	盖世豪侠【拾】	任务ID 5910
tNpcGossip[2001]["Text30-5"] = {3051}
tNpcGossip[2001]["Text3051"] = tQuestRecruit_Text[2001]["Text1641"]
tNpcGossip[2001]["tOption30-5"] = {3051}
tNpcGossip[2001]["Option3051"] = tQuestRecruit_Text[2001]["1641"]



-- 绝代天骄【壹】	5911
--（接）绝代天骄【壹】	任务ID 5911
tNpcGossip[2001]["Text31-1"] = {3111,3112,3113}
tNpcGossip[2001]["Text3111"] = tQuestRecruit_Text[2001]["Text3111"]
tNpcGossip[2001]["Text3112"] = tQuestRecruit_Text[2001]["Text3112"]
tNpcGossip[2001]["Text3113"] = tQuestRecruit_Text[2001]["Text3113"]
tNpcGossip[2001]["tOption31-1"] = {3111}
tNpcGossip[2001]["Option3111"] = tQuestRecruit_Text[2001]["3111"]

--（交）绝代天骄【壹】	任务ID 5911
tNpcGossip[2001]["Text31-2"] = {3121}
tNpcGossip[2001]["Text3121"] = tQuestRecruit_Text[2001]["Text3121"]
tNpcGossip[2001]["tOption31-2"] = {3121}
tNpcGossip[2001]["Option3121"] = tQuestRecruit_Text[2001]["3121"]
tNpcGossip[2001]["OptionFunc3121"] = "Task_IsHandOverByNpc</N>5911</N>2001</N>1"

--（交）绝代天骄【壹】	任务ID 5911	未完成
tNpcGossip[2001]["Text31-3"] = {3131}
tNpcGossip[2001]["Text3131"] = tQuestRecruit_Text[2001]["Text3131"]
tNpcGossip[2001]["tOption31-3"] = {3131}
tNpcGossip[2001]["Option3131"] = tQuestRecruit_Text[2001]["3131"]

--背包不足	绝代天骄【壹】	任务ID 5911
tNpcGossip[2001]["Text31-4"] = {3141}
tNpcGossip[2001]["Text3141"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption31-4"] = {3141}
tNpcGossip[2001]["Option3141"] = tQuestRecruit_Text[2001]["1841"]

-- 绝代天骄【贰】	5912
--（接）
tNpcGossip[2001]["Text32-1"] = {3211,3212,3213}
tNpcGossip[2001]["Text3211"] = tQuestRecruit_Text[2001]["Text3211"]
tNpcGossip[2001]["Text3212"] = tQuestRecruit_Text[2001]["Text3212"]
tNpcGossip[2001]["Text3213"] = tQuestRecruit_Text[2001]["Text3213"]
tNpcGossip[2001]["tOption32-1"] = {3211}
tNpcGossip[2001]["Option3211"] = tQuestRecruit_Text[2001]["3211"]

--（交） 
tNpcGossip[2001]["Text32-2"] = {3221}
tNpcGossip[2001]["Text3221"] = tQuestRecruit_Text[2001]["Text3221"]
tNpcGossip[2001]["tOption32-2"] = {3221}
tNpcGossip[2001]["Option3221"] = tQuestRecruit_Text[2001]["3221"]
tNpcGossip[2001]["OptionFunc3221"] = "Task_IsHandOverByNpc</N>5912</N>2001</N>1"

--（交）	未完成
tNpcGossip[2001]["Text32-3"] = {3231}
tNpcGossip[2001]["Text3231"] = tQuestRecruit_Text[2001]["Text3231"]
tNpcGossip[2001]["tOption32-3"] = {3231}
tNpcGossip[2001]["Option3231"] = tQuestRecruit_Text[2001]["3231"]

--背包不足	
tNpcGossip[2001]["Text32-4"] = {3241}
tNpcGossip[2001]["Text3241"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption32-4"] = {3241}
tNpcGossip[2001]["Option3241"] = tQuestRecruit_Text[2001]["1841"]

-- 绝代天骄【叁】	5913
--（接）
tNpcGossip[2001]["Text33-1"] = {3311,3312,3313}
tNpcGossip[2001]["Text3311"] = tQuestRecruit_Text[2001]["Text3311"]
tNpcGossip[2001]["Text3312"] = tQuestRecruit_Text[2001]["Text3312"]
tNpcGossip[2001]["Text3313"] = tQuestRecruit_Text[2001]["Text3313"]
tNpcGossip[2001]["tOption33-1"] = {3311}
tNpcGossip[2001]["Option3311"] = tQuestRecruit_Text[2001]["3311"]

--（交） 
tNpcGossip[2001]["Text33-2"] = {3321}
tNpcGossip[2001]["Text3321"] = tQuestRecruit_Text[2001]["Text3321"]
tNpcGossip[2001]["tOption33-2"] = {3321}
tNpcGossip[2001]["Option3321"] = tQuestRecruit_Text[2001]["3321"]
tNpcGossip[2001]["OptionFunc3321"] = "Task_IsHandOverByNpc</N>5913</N>2001</N>1"

--（交）	未完成
tNpcGossip[2001]["Text33-3"] = {3331}
tNpcGossip[2001]["Text3331"] = tQuestRecruit_Text[2001]["Text3331"]
tNpcGossip[2001]["tOption33-1"] = {3331}
tNpcGossip[2001]["Option3331"] = tQuestRecruit_Text[2001]["3331"]

--背包不足	
tNpcGossip[2001]["Text33-4"] = {3341}
tNpcGossip[2001]["Text3341"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption33-4"] = {3341}
tNpcGossip[2001]["Option3341"] = tQuestRecruit_Text[2001]["1841"]

--天石赠上限	
tNpcGossip[2001]["Text33-5"] = {3351}
tNpcGossip[2001]["Text3351"] = tQuestRecruit_Text[2001]["Text1641"]
tNpcGossip[2001]["tOption33-5"] = {3351}
tNpcGossip[2001]["Option3351"] = tQuestRecruit_Text[2001]["1641"]

-- 绝代天骄【肆】	5914
--（接）
tNpcGossip[2001]["Text34-1"] = {3411,3412,3413}
tNpcGossip[2001]["Text3411"] = tQuestRecruit_Text[2001]["Text3411"]
tNpcGossip[2001]["Text3412"] = tQuestRecruit_Text[2001]["Text3412"]
tNpcGossip[2001]["Text3413"] = tQuestRecruit_Text[2001]["Text3413"]
tNpcGossip[2001]["tOption34-1"] = {3411}
tNpcGossip[2001]["Option3411"] = tQuestRecruit_Text[2001]["3411"]

--（交） 
tNpcGossip[2001]["Text34-2"] = {3421}
tNpcGossip[2001]["Text3421"] = tQuestRecruit_Text[2001]["Text3421"]
tNpcGossip[2001]["tOption34-2"] = {3421}
tNpcGossip[2001]["Option3421"] = tQuestRecruit_Text[2001]["3421"]
tNpcGossip[2001]["OptionFunc3421"] = "Task_IsHandOverByNpc</N>5914</N>2001</N>1"

--（交）	未完成
tNpcGossip[2001]["Text34-3"] = {3431}
tNpcGossip[2001]["Text3431"] = tQuestRecruit_Text[2001]["Text3431"]
tNpcGossip[2001]["tOption34-3"] = {3431}
tNpcGossip[2001]["Option3431"] = tQuestRecruit_Text[2001]["3431"]

--背包不足	
tNpcGossip[2001]["Text34-4"] = {3441}
tNpcGossip[2001]["Text3441"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption34-4"] = {3441}
tNpcGossip[2001]["Option3441"] = tQuestRecruit_Text[2001]["1841"]

-- 绝代天骄【伍】	5915
--（接）
tNpcGossip[2001]["Text35-1"] = {3511,3512,3515}
tNpcGossip[2001]["Text3511"] = tQuestRecruit_Text[2001]["Text3511"]
tNpcGossip[2001]["Text3512"] = tQuestRecruit_Text[2001]["Text3512"]
tNpcGossip[2001]["Text3515"] = tQuestRecruit_Text[2001]["Text3515"]
tNpcGossip[2001]["tOption35-1"] = {3511}
tNpcGossip[2001]["Option3531"] = tQuestRecruit_Text[2001]["3511"]

--（交） 
tNpcGossip[2001]["Text35-2"] = {3521}
tNpcGossip[2001]["Text3521"] = tQuestRecruit_Text[2001]["Text3521"]
tNpcGossip[2001]["tOption35-2"] = {3521}
tNpcGossip[2001]["Option3521"] = tQuestRecruit_Text[2001]["3521"]
tNpcGossip[2001]["OptionFunc3521"] = "Task_IsHandOverByNpc</N>5915</N>2001</N>1"

--（交）	未完成
tNpcGossip[2001]["Text35-3"] = {3535}
tNpcGossip[2001]["Text3535"] = tQuestRecruit_Text[2001]["Text3535"]
tNpcGossip[2001]["tOption35-3"] = {3535}
tNpcGossip[2001]["Option3535"] = tQuestRecruit_Text[2001]["3535"]

--背包不足	
tNpcGossip[2001]["Text35-4"] = {3541}
tNpcGossip[2001]["Text3541"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption35-4"] = {3541}
tNpcGossip[2001]["Option3541"] = tQuestRecruit_Text[2001]["1841"]

-- 绝代天骄【陆】	5916
--（接）
tNpcGossip[2001]["Text36-1"] = {3611,3612,3613}
tNpcGossip[2001]["Text3611"] = tQuestRecruit_Text[2001]["Text3611"]
tNpcGossip[2001]["Text3612"] = tQuestRecruit_Text[2001]["Text3612"]
tNpcGossip[2001]["Text3613"] = tQuestRecruit_Text[2001]["Text3613"]
tNpcGossip[2001]["tOption36-1"] = {3611}
tNpcGossip[2001]["Option3611"] = tQuestRecruit_Text[2001]["3611"]

--（交） 
tNpcGossip[2001]["Text36-2"] = {3621}
tNpcGossip[2001]["Text3621"] = tQuestRecruit_Text[2001]["Text3621"]
tNpcGossip[2001]["tOption36-2"] = {3621}
tNpcGossip[2001]["Option3621"] = tQuestRecruit_Text[2001]["3621"]
tNpcGossip[2001]["OptionFunc3621"] = "Task_IsHandOverByNpc</N>5916</N>2001</N>1"

--（交）	未完成
tNpcGossip[2001]["Text36-3"] = {3631}
tNpcGossip[2001]["Text3631"] = tQuestRecruit_Text[2001]["Text3631"]
tNpcGossip[2001]["tOption36-3"] = {3631}
tNpcGossip[2001]["Option3631"] = tQuestRecruit_Text[2001]["3631"]

--背包不足	
tNpcGossip[2001]["Text36-4"] = {3641}
tNpcGossip[2001]["Text3641"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption36-4"] = {3641}
tNpcGossip[2001]["Option3641"] = tQuestRecruit_Text[2001]["1841"]

--天石赠上限	
tNpcGossip[2001]["Text36-5"] = {3651}
tNpcGossip[2001]["Text3651"] = tQuestRecruit_Text[2001]["Text1641"]
tNpcGossip[2001]["tOption36-5"] = {3651}
tNpcGossip[2001]["Option3651"] = tQuestRecruit_Text[2001]["1641"]


-- 绝代天骄【柒】	5917
--（接）
tNpcGossip[2001]["Text37-1"] = {3711,3712,3713}
tNpcGossip[2001]["Text3711"] = tQuestRecruit_Text[2001]["Text3711"]
tNpcGossip[2001]["Text3712"] = tQuestRecruit_Text[2001]["Text3712"]
tNpcGossip[2001]["Text3713"] = tQuestRecruit_Text[2001]["Text3713"]
tNpcGossip[2001]["tOption37-1"] = {3711}
tNpcGossip[2001]["Option3711"] = tQuestRecruit_Text[2001]["3711"]

--（交） 
tNpcGossip[2001]["Text37-2"] = {3721}
tNpcGossip[2001]["Text3721"] = tQuestRecruit_Text[2001]["Text3721"]
tNpcGossip[2001]["tOption37-2"] = {3721}
tNpcGossip[2001]["Option3721"] = tQuestRecruit_Text[2001]["3721"]
tNpcGossip[2001]["OptionFunc3721"] = "Task_IsHandOverByNpc</N>5917</N>2001</N>1"

--（交）	未完成
tNpcGossip[2001]["Text37-3"] = {3731}
tNpcGossip[2001]["Text3731"] = tQuestRecruit_Text[2001]["Text3731"]
tNpcGossip[2001]["tOption37-3"] = {3731}
tNpcGossip[2001]["Option3731"] = tQuestRecruit_Text[2001]["3731"]

--背包不足	
tNpcGossip[2001]["Text37-4"] = {3741}
tNpcGossip[2001]["Text3741"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption37-4"] = {3741}
tNpcGossip[2001]["Option3741"] = tQuestRecruit_Text[2001]["1841"]

-- 绝代天骄【捌】	5918
--（接）
tNpcGossip[2001]["Text38-1"] = {3811,3812,3813}
tNpcGossip[2001]["Text3811"] = tQuestRecruit_Text[2001]["Text3811"]
tNpcGossip[2001]["Text3812"] = tQuestRecruit_Text[2001]["Text3812"]
tNpcGossip[2001]["Text3813"] = tQuestRecruit_Text[2001]["Text3813"]
tNpcGossip[2001]["tOption38-1"] = {3811}
tNpcGossip[2001]["Option3811"] = tQuestRecruit_Text[2001]["3811"]

--（交） 
tNpcGossip[2001]["Text38-2"] = {3821}
tNpcGossip[2001]["Text3821"] = tQuestRecruit_Text[2001]["Text3821"]
tNpcGossip[2001]["tOption38-2"] = {3821}
tNpcGossip[2001]["Option3821"] = tQuestRecruit_Text[2001]["3821"]
tNpcGossip[2001]["OptionFunc3821"] = "Task_IsHandOverByNpc</N>5918</N>2001</N>1"

--（交）	未完成
tNpcGossip[2001]["Text38-3"] = {3831}
tNpcGossip[2001]["Text3831"] = tQuestRecruit_Text[2001]["Text3831"]
tNpcGossip[2001]["tOption38-3"] = {3831}
tNpcGossip[2001]["Option3831"] = tQuestRecruit_Text[2001]["3831"]

--背包不足	
tNpcGossip[2001]["Text38-4"] = {3841}
tNpcGossip[2001]["Text3841"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption38-4"] = {3841}
tNpcGossip[2001]["Option3841"] = tQuestRecruit_Text[2001]["1841"]

--天石赠上限	
tNpcGossip[2001]["Text38-5"] = {3851}
tNpcGossip[2001]["Text3851"] = tQuestRecruit_Text[2001]["Text1641"]
tNpcGossip[2001]["tOption38-5"] = {3851}
tNpcGossip[2001]["Option3851"] = tQuestRecruit_Text[2001]["1641"]

-- 绝代天骄【玖】	5919
tNpcGossip[2001]["Text39-1"] = {3911,3912,3913}
tNpcGossip[2001]["Text3911"] = tQuestRecruit_Text[2001]["Text3911"]
tNpcGossip[2001]["Text3912"] = tQuestRecruit_Text[2001]["Text3912"]
tNpcGossip[2001]["Text3913"] = tQuestRecruit_Text[2001]["Text3913"]
tNpcGossip[2001]["tOption39-1"] = {3911}
tNpcGossip[2001]["Option3911"] = tQuestRecruit_Text[2001]["3911"]

--（交） 
tNpcGossip[2001]["Text39-2"] = {3921}
tNpcGossip[2001]["Text3921"] = tQuestRecruit_Text[2001]["Text3921"]
tNpcGossip[2001]["tOption39-2"] = {3921}
tNpcGossip[2001]["Option3921"] = tQuestRecruit_Text[2001]["3921"]
tNpcGossip[2001]["OptionFunc3921"] = "Task_IsHandOverByNpc</N>5919</N>2001</N>1"

--（交）	未完成
tNpcGossip[2001]["Text39-3"] = {3931}
tNpcGossip[2001]["Text3931"] = tQuestRecruit_Text[2001]["Text3931"]
tNpcGossip[2001]["tOption39-3"] = {3931}
tNpcGossip[2001]["Option3931"] = tQuestRecruit_Text[2001]["3931"]

--背包不足	
tNpcGossip[2001]["Text39-4"] = {3941}
tNpcGossip[2001]["Text3941"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption39-4"] = {3941}
tNpcGossip[2001]["Option3941"] = tQuestRecruit_Text[2001]["1841"]

-- 绝代天骄【拾】	5920
--（接）
tNpcGossip[2001]["Text40-1"] = {4011,4012,4013}
tNpcGossip[2001]["Text4011"] = tQuestRecruit_Text[2001]["Text4011"]
tNpcGossip[2001]["Text4012"] = tQuestRecruit_Text[2001]["Text4012"]
tNpcGossip[2001]["Text4013"] = tQuestRecruit_Text[2001]["Text4013"]
tNpcGossip[2001]["tOption40-1"] = {4011}
tNpcGossip[2001]["Option4011"] = tQuestRecruit_Text[2001]["4011"]

--（交） 
tNpcGossip[2001]["Text40-2"] = {4021}
tNpcGossip[2001]["Text4021"] = tQuestRecruit_Text[2001]["Text4021"]
tNpcGossip[2001]["tOption40-2"] = {4021}
tNpcGossip[2001]["Option4021"] = tQuestRecruit_Text[2001]["4021"]
tNpcGossip[2001]["OptionFunc4021"] = "Task_IsHandOverByNpc</N>5920</N>2001</N>1"

--（交）	未完成
tNpcGossip[2001]["Text40-3"] = {4031}
tNpcGossip[2001]["Text4031"] = tQuestRecruit_Text[2001]["Text4031"]
tNpcGossip[2001]["tOption40-3"] = {4031}
tNpcGossip[2001]["Option4031"] = tQuestRecruit_Text[2001]["4031"]

--背包不足	
tNpcGossip[2001]["Text40-4"] = {4041}
tNpcGossip[2001]["Text4041"] = tQuestRecruit_Text[2001]["Text1841"]
tNpcGossip[2001]["tOption40-4"] = {4041}
tNpcGossip[2001]["Option4041"] = tQuestRecruit_Text[2001]["1841"]

--天石赠上限	
tNpcGossip[2001]["Text40-5"] = {4051}
tNpcGossip[2001]["Text4051"] = tQuestRecruit_Text[2001]["Text1641"]
tNpcGossip[2001]["tOption40-5"] = {4051}
tNpcGossip[2001]["Option4051"] = tQuestRecruit_Text[2001]["1641"]

--完成对话	
tNpcGossip[2001]["Text40-6"] = {4061}
tNpcGossip[2001]["Text4061"] = tQuestRecruit_Text[2001]["Text4061"]
tNpcGossip[2001]["tOption40-6"] = {4061}
tNpcGossip[2001]["Option4061"] = tQuestRecruit_Text[2001]["4061"]


 -- 【天机道长】
tNpcFace[836] = 67
tNpcGossip[300500] = tNpcGossip[300500] or DefaultNpc:new{}
tNpcGossip[300500]["OptionHidden"] = 1
 --（交）前往就职【壹】	任务ID 3605
tNpcGossip[300500]["Text12-1"] = {1211,1212}
tNpcGossip[300500]["Text1211"] = tQuestRecruit_Text[300500]["Text111"]
tNpcGossip[300500]["Text1212"] = tQuestRecruit_Text[300500]["Text112"]
tNpcGossip[300500]["tOption12-1"] = {1211}
tNpcGossip[300500]["Option1211"] = tQuestRecruit_Text[300500]["111"]
tNpcGossip[300500]["OptionFunc1211"] = "Task_IsHandOverByNpc</N>3605</N>300500</N>1"
-- 背包不足
tNpcGossip[300500]["Text12-2"] = {1221}
tNpcGossip[300500]["Text1221"] = tQuestRecruit_Text[300500]["Text121"]
tNpcGossip[300500]["tOption12-2"] = {1221}
tNpcGossip[300500]["Option1221"] = tQuestRecruit_Text[300500]["121"]

--（接）前往就职【贰】	3824
tNpcGossip[300500]["Text13-1"] = {1311,1312}
tNpcGossip[300500]["Text1311"] = tQuestRecruit_Text[300500]["Text211"]
tNpcGossip[300500]["Text1312"] = tQuestRecruit_Text[300500]["Text212"]
tNpcGossip[300500]["tOption13-1"] = {1311}
tNpcGossip[300500]["Option1311"] = tQuestRecruit_Text[300500]["211"]
tNpcGossip[300500]["OptionFunc1311"] = "QuestRecruit_FindWay</N>3824"


-- 玩家上线触发
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,QuestRecruit_Lv100DoFunc)


