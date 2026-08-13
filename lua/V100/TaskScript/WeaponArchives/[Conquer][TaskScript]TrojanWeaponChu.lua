------------------------------------------------------------------------------------
--Name：       190418[简体征服][活动脚本]勇士百兵谱-杵
--Creator:     吴燕柚
--Created:     2019/04/18
------------------------------------------------------------------------------------
--任务需求：

--命名规范 TrojanWeaponChu_

--task_detail 795
--data1 0为未布施 1为已布施
--data2 完成的总考验数
--data3 是否击杀BOSS

--944 杀怪物 data1 1表示完成 data2 记录怪物ID的索引
--945 挖掘任务 data1 表示已完成
--946 拜访任务 data1 表示已完成



----------------------------------表配置部分--------------------------------------------
local tTrojanWeaponChu_Data = {}
tTrojanWeaponChu_Data["TaskId"] = {}
tTrojanWeaponChu_Data["TaskId"][0] = 795
tTrojanWeaponChu_Data["TaskId"][1] = 944
tTrojanWeaponChu_Data["TaskId"][2] = 945
tTrojanWeaponChu_Data["TaskId"][3] = 946
tTrojanWeaponChu_Data["NeedMoney"] = 50000--布施银两
tTrojanWeaponChu_Data["LogId"] = 18000202--LogId
tTrojanWeaponChu_Data["Instance"] = 277
tTrojanWeaponChu_Data["BOSS"] = {}--boss数据
tTrojanWeaponChu_Data["BOSS"]["ID"] = 3379
tTrojanWeaponChu_Data["BOSS"]["GenId"] = 27038
tTrojanWeaponChu_Data["BOSS"]["X"] = 60
tTrojanWeaponChu_Data["BOSS"]["Y"] = 60
tTrojanWeaponChu_Data["NpcId"] = 23969
tTrojanWeaponChu_Data["MapDoc"] = 3942
tTrojanWeaponChu_Data["ItemId"] = 3312299
tTrojanWeaponChu_Data["BossNpc"] = 23994
tTrojanWeaponChu_Data["ChuNpcPos"] = {}
tTrojanWeaponChu_Data["ChuNpcPos"]["PosX"] = 60
tTrojanWeaponChu_Data["ChuNpcPos"]["PosY"] = 46
tTrojanWeaponChu_Data["PreTask"] = 1088
tTrojanWeaponChu_Data["PreTaskNoGift"] = 1096
tTrojanWeaponChu_Data["WeaponId"] = 481

local tTrojanWeaponChu_Stc = {}
tTrojanWeaponChu_Stc["FinishFlag"] = {}
tTrojanWeaponChu_Stc["FinishFlag"]["Event"] = 197
tTrojanWeaponChu_Stc["FinishFlag"]["Data"] = 41
tTrojanWeaponChu_Stc["TaskTotalNum"] = {}
tTrojanWeaponChu_Stc["TaskTotalNum"]["Event"] = 197
tTrojanWeaponChu_Stc["TaskTotalNum"]["Data"] = 20

--怪物ID 以及光效
local tTrojanWeaponChu_Monster = {}
tTrojanWeaponChu_Monster[1] = {}--鬼刃
tTrojanWeaponChu_Monster[1]["Id"] = 17
tTrojanWeaponChu_Monster[1]["IdNoGift"] = 4849
tTrojanWeaponChu_Monster[1]["Effect"] = "L3nihuawocai03"
tTrojanWeaponChu_Monster[2] = {}--大盗
tTrojanWeaponChu_Monster[2]["Id"] = 84
tTrojanWeaponChu_Monster[2]["IdNoGift"] = 4874
tTrojanWeaponChu_Monster[2]["Effect"] = "L3nihuawocai04"
tTrojanWeaponChu_Monster[3] = {}--火鼠
tTrojanWeaponChu_Monster[3]["Id"] = 8
tTrojanWeaponChu_Monster[3]["IdNoGift"] = 4840
tTrojanWeaponChu_Monster[3]["Effect"] = "L3nihuawocai05"
tTrojanWeaponChu_Monster[4] = {}--巨石怪
tTrojanWeaponChu_Monster[4]["Id"] = 16
tTrojanWeaponChu_Monster[4]["IdNoGift"] = 4848
tTrojanWeaponChu_Monster[4]["Effect"] = "L3nihuawocai07"
tTrojanWeaponChu_Monster[5] = {}--罗罗鸟
tTrojanWeaponChu_Monster[5]["Id"] = 3
tTrojanWeaponChu_Monster[5]["IdNoGift"] = 4835
tTrojanWeaponChu_Monster[5]["Effect"] = "L3nihuawocai08"
tTrojanWeaponChu_Monster[6] = {}--幽冥斧王
tTrojanWeaponChu_Monster[6]["Id"] = 4
tTrojanWeaponChu_Monster[6]["IdNoGift"] = 4836
tTrojanWeaponChu_Monster[6]["Effect"] = "L3nihuawocai10"
tTrojanWeaponChu_Monster[7] = {}--蛇人
tTrojanWeaponChu_Monster[7]["Id"] = 13
tTrojanWeaponChu_Monster[7]["IdNoGift"] = 4845
tTrojanWeaponChu_Monster[7]["Effect"] = "L3nihuawocai12"
tTrojanWeaponChu_Monster[8] = {}--翼蛇
tTrojanWeaponChu_Monster[8]["Id"] = 6
tTrojanWeaponChu_Monster[8]["IdNoGift"] = 4838
tTrojanWeaponChu_Monster[8]["Effect"] = "L3nihuawocai17"
tTrojanWeaponChu_Monster[9] = {}--金臂鸟人
tTrojanWeaponChu_Monster[9]["Id"] = 18
tTrojanWeaponChu_Monster[9]["IdNoGift"] = 4850
tTrojanWeaponChu_Monster[9]["Effect"] = "L3nihuawocai18"

local tTrojanWeaponChu_Reward = {}
	-- ===获得神杵宝图
	-- ===LogStep: 1[1]
	tTrojanWeaponChu_Reward["TaskItem"] = {}
	tTrojanWeaponChu_Reward["TaskItem"]["LogId"] = 18000202
	tTrojanWeaponChu_Reward["TaskItem"]["LogStep"] = "1[1]"
	tTrojanWeaponChu_Reward["TaskItem"]["RewardItem"] = {}
	tTrojanWeaponChu_Reward["TaskItem"]["RewardItem"][1] = {}
	tTrojanWeaponChu_Reward["TaskItem"]["RewardItem"][1]["Id"] = 3312299 -- 【库】 3312299 【cnzf1库里没有该物品】[属性:]【表格】神杵宝图
	tTrojanWeaponChu_Reward["TaskItem"]["RewardItem"][1]["Attr"] = "0 1" --  3312299 【cnzf1库里没有该物品】*1
	tTrojanWeaponChu_Reward["TaskItem"]["RewardEffect"] = {}
	tTrojanWeaponChu_Reward["TaskItem"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTrojanWeaponChu_Reward["TaskItem"]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------

--玩家接取该任务
function TrojanWeaponChu_AcceptTask(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]

	--完成前置任务
	local nPreTask = tTrojanWeaponChu_Data["PreTask"]
	if SpecialServer_ChkNoGiftServer() then
		nPreTask = tTrojanWeaponChu_Data["PreTaskNoGift"]
	end
	if Task_ChkTaskDetail(nPreTask, nUserId) then
		if Task_ChkTaskDetailValue(nPreTask,"CompleteFlag", "==", 0, nUserId) then--前置任务未完成
			Task_SetTaskDetailCompleteFlag(nPreTask, 1, nUserId)
		end
	else
		return
	end

	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		Task_AddTaskDetail(nTaskId, 0, nUserId)
	end
	
	LinkNpcGossipFunc_New(tTrojanWeaponChu_Data["NpcId"], "1-1")
	
end

--放弃任务
function TrojanWeaponChu_GiveUpTask(nTaskId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"]
	Task_DelTaskDetail(nTaskId, nUserId)

	
end

--布施银两
function TrojanWeaponChu_GiveMoney(nNpcId)
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]

	local nNeedMoney = tTrojanWeaponChu_Data["NeedMoney"]
	local nLogId = tTrojanWeaponChu_Data["LogId"]
	
	--银两不足
	if not User_CanPutMoney2Bag(-nNeedMoney) then
		LinkNpcGossipFunc_New(nNpcId, "3-1")
		return
	end
	
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		LinkNpcGossipFunc_New(nNpcId, "1-1")
		return
	end
	
	if Task_ChkTaskDetailValue(nTaskId, "CompleteFlag", "~=", 0, nUserId) then
		return
	end
	
	--扣钱后记录为已布施
	if User_AddMoneyNew(-nNeedMoney, nLogId, nUserId) then
		Task_SetTaskDetailData1(nTaskId, 1, nUserId)
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		User_EffectAdd("self", "angelwing", nUserId)
	end
	
end

--选取考验
function TrojanWeaponChu_ChooseTask(nNpcId, nNo)
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]

	--没结取总任务时显示闲聊对白
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		LinkNpcGossipFunc_New(nNpcId, "1-1")
		return
	end
	--总任务必须未完成才能接任务
	if Task_ChkTaskDetailValue(nTaskId, "CompleteFlag", "~=", 0, nUserId) then
		return
	end
	--判断玩家当前接收的考验
	TrojanWeaponChu_NowTask(nNo, nUserId)
	
end
--判断玩家当前接受的考验
function TrojanWeaponChu_NowTask(nNo, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nNpcId = tTrojanWeaponChu_Data["NpcId"]
	
	for i = 1, 3 do
		local nTaskId = tTrojanWeaponChu_Data["TaskId"][i]

		--有任务未完成
		if Task_ChkTaskDetail(nTaskId, nUserId) then
			if Task_ChkTaskDetailValue(nTaskId, 'CompleteFlag', '==', 0, nUserId) then
				if nNo ~= i then
					tNpcGossip[nNpcId]["Text341"] = string.format(tTrojanWeaponChu_Text[nNpcId]["Text341"], i)
					LinkNpcGossipFunc_New(nNpcId, '3-4')
					return
				else--查看任务内容
					LinkNpcGossipFunc_New(nNpcId, '2-' .. i)
					return
				end
			end
		end
	end
	--添加任务
	local nAcceptTaskId = tTrojanWeaponChu_Data["TaskId"][nNo]

	if not Task_ChkTaskDetail(nAcceptTaskId, nUserId) then
		Task_AddTaskDetail(nAcceptTaskId, 0, nUserId)
	end


	LinkNpcGossipFunc_New(nNpcId, '2-' .. nNo)

end
--画怪物
function TrojanWeaponChu_DrawMonster(nNpcId)
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][1]


	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		return
	end
	local nMonsterIndex = Get_TaskDetailData2(nTaskId,nUserId)
	if nMonsterIndex == 0 then
		nMonsterIndex = math.random(1, #tTrojanWeaponChu_Monster)
		Task_SetTaskDetailData2(nTaskId, nMonsterIndex, nUserId)
	end
	
	User_EffectAddNew("self", tTrojanWeaponChu_Monster[nMonsterIndex]["Effect"], 0, nUserId)
	
	LinkNpcGossipFunc_New(nNpcId, "2-1")
end
--挖掘金刚经读条
function TrojanWeaponChu_DigBookChk()
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]
	local nLittleTaskId = tTrojanWeaponChu_Data["TaskId"][2]

	
	if not Task_ChkTaskDetail(nTaskId, nUserId) then--没有总任务
		return
	end
	if Task_ChkTaskDetailValue(nTaskId, "CompleteFlag", "~=", 0, nUserId) then--总任务已完成
		return
	end
	if not Task_ChkTaskDetail(nLittleTaskId, nUserId) then--没有挖掘金刚经任务
		return
	end
	--金刚经任务已完成
	if Task_ChkTaskDetailValue(nLittleTaskId, "1", "~=", 0, nUserId) then
		return
	end
	User_SetExplore(3, tTrojanWeaponChu_Text["Talk"]["JinGangJing"], 220, "TrojanWeaponChu_DigBook</N>" .. nUserId)
end
--挖掘金刚经
function TrojanWeaponChu_DigBook(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]
	local nLittleTaskId = tTrojanWeaponChu_Data["TaskId"][2]

	
	if not Task_ChkTaskDetail(nTaskId, nUserId) then--没有总任务
		return
	end
	if Task_ChkTaskDetailValue(nTaskId, "CompleteFlag", "~=", 0, nUserId) then--总任务已完成
		return
	end
	--金刚经任务已完成
	if Task_ChkTaskDetailValue(nLittleTaskId, "1", "~=", 0, nUserId) then
		return
	end

	--设置任务已完成
	Task_SetTaskDetailData1(nLittleTaskId, 1, nUserId)
	Task_SetTaskDetailCompleteFlag(nLittleTaskId, 1, nUserId)
	User_EffectAdd('self', 'accession', nUserId)
	--增加总完成数
	local nTotalNum = Get_TaskDetail(nTaskId, "2", nUserId) + 1
	Task_SetTaskDetailData2(nTaskId, nTotalNum, nUserId)
	--全部完成则传送回NPC处
	if nTotalNum >= 3 then
		Sys_MsgBox(tTrojanWeaponChu_Text["Talk"]["AllComplete"], "TrojanWeaponChu_ChgMap", "NULL", nUserId)
		return
	end
	--传送回金蝉子
	local sText = string.format(tTrojanWeaponChu_Text["Talk"]["CompleteOne"], 2)
	Sys_MsgBox(sText, "TrojanWeaponChu_ChgMap", "NULL", nUserId)
	
end

--杀怪触发逻辑
function TrojanWeaponChu_KillMonster(nMonsterId)
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]
	local nLittleTaskId = tTrojanWeaponChu_Data["TaskId"][1]

	
	if not Task_ChkTaskDetail(nTaskId, nUserId) then--没有总任务
		return
	end

	if Task_ChkTaskDetailValue(nTaskId, "CompleteFlag", "~=", 0, nUserId) then--已完成
		return
	end

	-- 判断是否有接试炼任务
	if not Task_ChkTaskDetail(nLittleTaskId, nUserId) then
		return
	end

	--已完成打怪试炼
	if Task_ChkTaskDetailValue(nLittleTaskId, "1", "~=", 0, nUserId) then
		return
	end

	--杀错怪物
	local nMonsterIndex = Get_TaskDetailData2(nLittleTaskId, nUserId)
	-- 判断掩码储存的是否有错
	if tTrojanWeaponChu_Monster[nMonsterIndex] == nil then
		return
	end

	local nNeedMonster = tTrojanWeaponChu_Monster[nMonsterIndex]["Id"]
	if SpecialServer_ChkNoGiftServer() then
		nNeedMonster = tTrojanWeaponChu_Monster[nMonsterIndex]["IdNoGift"]
	end
	if nMonsterId ~= nNeedMonster then
		return
	end

	--设置任务已完成
	Task_SetTaskDetailData1(nLittleTaskId, 1, nUserId)
	Task_SetTaskDetailCompleteFlag(nLittleTaskId, 1, nUserId)

	--增加总完成数
	local nTotalNum = Get_TaskDetail(nTaskId, "2", nUserId) + 1
	Task_SetTaskDetailData2(nTaskId, nTotalNum, nUserId)
	User_EffectAdd('self', 'accession', nUserId)
	--全部完成则传送回NPC处
	if nTotalNum >= 3 then
		Sys_MsgBox(tTrojanWeaponChu_Text["Talk"]["AllComplete"], "TrojanWeaponChu_ChgMap", "NULL", nUserId)
		return
	end

	local sText = string.format(tTrojanWeaponChu_Text["Talk"]["CompleteOne"], 1)
	Sys_MsgBox(sText, "TrojanWeaponChu_ChgMap", "NULL", nUserId)
	
	
end
--完成任务后传送回金蝉子处
function TrojanWeaponChu_ChgMap()
	local nUserId = Get_UserId()
	local nNpcId = tTrojanWeaponChu_Data["NpcId"]
	local nMapId = Get_NpcMapID(nNpcId)
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)

	User_UserRandBoundTrans(nMapId, nPosX, nPosY, 5, 5, 0, nUserId)
end
--杀BOSS触发逻辑
function TrojanWeaponChu_KillBoss(nMonsterId)
	
	local nUserId = Get_UserId()
	local nBossNpcId = tTrojanWeaponChu_Data["BossNpc"]
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]

	local nItemId = tTrojanWeaponChu_Data["ItemId"]
	--没有该任务
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		return
	end
	--已完成
	if Task_ChkTaskDetailValue(nTaskId, "CompleteFlag", "~=", 0, nUserId) then
		return
	end
	--光效 特效
	User_EffectAdd('self', 'fire4', nUserId)
	User_Screffect(1)--震屏效果
	--设置已击杀BOSS
	Task_SetTaskDetailData3(nTaskId, 1, nUserId)
	--Task_SetTaskDetailCompleteFlag(nTaskId, 1, nUserId)
	Sys_MsgBox(tTrojanWeaponChu_Text["Talk"]["TaskComplete"], 'NULL', 'NULL', nUserId)--寻路到NPC
	
	-- --传送出地图
	-- TrojanWeaponChu_ChgMap()

	
end
--寻路到神杵圣光NPC
function TrojanWeaponChu_FindNpc(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId()
	local nPosX = tTrojanWeaponChu_Data["ChuNpcPos"]["PosX"]
	local nPosY = tTrojanWeaponChu_Data["ChuNpcPos"]["PosY"]

	Sys_GotoSomeWhere(nPosX, nPosY, nMapId, 0, nUserId)
	TrojanWeaponChu_OpenTheWeapon()

end
--神杵圣光NPC逻辑
function TrojanWeaponChu_OpenTheWeapon()
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]

	--已完成，读条。显示出副本弹窗
	if Task_ChkTaskDetailValue(nTaskId, "3", "~=", 0, nUserId) then
		User_SetExplore(3, tTrojanWeaponChu_Text["Talk"]["AwakenWeapon"], 220, "TrojanWeaponChu_OpenTheWeaponSuccess</N>" .. nUserId)
		return
	else
		Sys_MsgBox(tTrojanWeaponChu_Text["Talk"]["BossAlive"], 'NULL', 'NULL', nUserId)
	end
end
--觉醒成功接口
function TrojanWeaponChu_OpenTheWeaponSuccess(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]
	local nEvent = tTrojanWeaponChu_Stc["FinishFlag"]["Event"]
	local nData = tTrojanWeaponChu_Stc["FinishFlag"]["Data"]
	Task_SetStatistic(nEvent, nData, 1, 1, nUserId)--主NPC用的记录
	
	--总任务完成数+1
	local nTotalEvent = tTrojanWeaponChu_Stc["TaskTotalNum"]["Event"]
	local nTotalData = tTrojanWeaponChu_Stc["TaskTotalNum"]["Data"]
	Task_AddStatistic(nTotalEvent, nTotalData, 1, 1, nUserId)
	--设置任务已完成
	Task_SetTaskDetailCompleteFlag(nTaskId, 1, nUserId)
	--解锁兵魂
	User_AwardHundredWeapon(tTrojanWeaponChu_Data["WeaponId"], nUserId)

	User_EffectAdd('self', 'accession', nUserId)
	Sys_MsgBox(tTrojanWeaponChu_Text["Talk"]["OpenWeaponSuccess"], "TrojanWeaponChu_ReturntoMainNpc", "NULL", nUserId)--传出地图


end

function TrojanWeaponChu_ReturntoMainNpc()
	local nUserId = Get_UserId()

	User_UserRandBoundTrans(10656, 82, 64, 5, 5, 0, nUserId)

end

--进入副本
function TrojanWeaponChu_EnterInstance(nItemId)
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]

	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		Item_DelMulItem(nItemId, nItemId, 1)
		User_TalkChannel2005(tTrojanWeaponChu_Text["Talk"]["NoTask"], nUserId)
		return
	end
	User_SetExplore(3, tTrojanWeaponChu_Text["Talk"]["ShenChuBaoTu"], 220, "TrojanWeaponChu_EnterInstanceNow</N>" .. nItemId .. "</N>" .. nUserId)
end
--读条成功
function TrojanWeaponChu_EnterInstanceNow(nItemId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if Item_ChkMulItem(nItemId, nItemId, 1, 1, 0, nUserId) and Item_DelMulItem(nItemId, nItemId, 1, 1, 0, nUserId) then
		User_EnterInstance(tTrojanWeaponChu_Data["Instance"], 0, 0, 10, nUserId, 0)
		
		local nUserMapId = Get_UserMapId(nUserId)
		local nMapDoc = Get_MapDoc(nUserMapId)
		if nMapDoc == tTrojanWeaponChu_Data["MapDoc"] then
			local nPosX = tTrojanWeaponChu_Data["BOSS"]["X"]
			local nPosY = tTrojanWeaponChu_Data["BOSS"]["Y"]
			local nMonsterId = tTrojanWeaponChu_Data["BOSS"]["ID"]
			local nGenId = tTrojanWeaponChu_Data["BOSS"]["GenId"]
			Monster_AddMonster(nUserMapId, nPosX, nPosY, nGenId, nMonsterId)
			Sys_MsgBox(tTrojanWeaponChu_Text["Talk"]["EnterInstance"], 'NULL', 'NULL', nUserId)
		end
	end
end

--与总兵对话
function TrojanWeaponChu_TalkWithNpc()
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]
	local nLittleTaskId = tTrojanWeaponChu_Data["TaskId"][3]

	if not Task_ChkTaskDetail(nTaskId, nUserId) then--总任务
		return
	end
	if Task_ChkTaskDetailValue(nTaskId, "CompleteFlag", "~=", 0, nUserId) then
		return
	end
	--寻人任务已完成
	if not Task_ChkTaskDetail(nLittleTaskId, nUserId) then
		return
	end
	if Task_ChkTaskDetailValue(nLittleTaskId, "1", "~=", 0, nUserId) then
		return
	end

	--设置任务已完成
	Task_SetTaskDetailData1(nLittleTaskId, 1, nUserId)
	Task_SetTaskDetailCompleteFlag(nLittleTaskId, 1, nUserId)
	User_EffectAdd('self', 'accession', nUserId)
	--增加总完成数
	local nTotalNum = Get_TaskDetail(nTaskId, "2", nUserId) + 1
	Task_SetTaskDetailData2(nTaskId, nTotalNum, nUserId)
	--全部完成则传送回NPC处
	--if nTotalNum >= 3 then
	--	Sys_MsgBox(tTrojanWeaponChu_Text["Talk"]["AllComplete"], "TrojanWeaponChu_ChgMap", "NULL", nUserId)
	--	return
	--end
	Sys_DialogText(tTrojanWeaponChu_Text["NPC"]["Text111"])
	Sys_DialogText(tTrojanWeaponChu_Text["NPC"]["Text112"])
	Sys_DialogOption(tTrojanWeaponChu_Text["NPC"]["Option111"], "</F>TrojanWeaponChu_ChgMap")
	MenuPic(nUserId, 10, 10, 77, "</F>NULL")
	Sys_DialogEnd()
	--传送回金蝉子
	--local sText = string.format(tTrojanWeaponChu_Text["Talk"]["CompleteOne"], 3)
	--Sys_MsgBox(sText, "TrojanWeaponChu_ChgMap", "NULL", nUserId)
end

----------------------------------NPC部分---------------------------------------------
--金蝉子
tNpcFace[1705] = 248
tNpcGossip[23969]= tNpcGossip[23969] or DefaultNpc:new{}
tNpcGossip[23969]["OptionHidden"] = 1
tNpcGossip[23969]["DialogueText"] = tTrojanWeaponChu_Text[23969]

--闲聊对白 1-1
tNpcGossip[23969]["Text1-1"] = {111, 112}
tNpcGossip[23969]["tOption1-1"] = {111}
tNpcGossip[23969]["ChkFunc1-1"] = function()
	local nUserId = Get_UserId()
	
	--前置任务对白
	local nPreTask = tTrojanWeaponChu_Data["PreTask"]
	if SpecialServer_ChkNoGiftServer() then
		nPreTask = tTrojanWeaponChu_Data["PreTaskNoGift"]
	end
	if Task_ChkTaskDetail(nPreTask, nUserId) then
		if Task_ChkTaskDetailValue(nPreTask,"CompleteFlag", "==", 0, nUserId) then--前置任务未完成
			tNpcGossip[23969]["Text1-1"] = {351, 352, 353, 354, 355}
			tNpcGossip[23969]["tOption1-1"] = {351}
			return true
		else
			tNpcGossip[23969]["Text1-1"] = {111, 112}
			tNpcGossip[23969]["tOption1-1"] = {111}
		end
	end

	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]

	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		return true
	end
	--完成3个考验且丢失道具时 补发神杵宝图
	if Task_ChkTaskDetailValue(nTaskId, "2", '>=', 3, nUserId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag", "==", 0, nUserId) then
		local nItemId = tTrojanWeaponChu_Data["ItemId"]
		if not Item_ChkMulItem(nItemId, nItemId, 1) then
			if RewardTemplate_UseItemAndMsg(tTrojanWeaponChu_Reward["TaskItem"], nUserId) then
				tNpcGossip[23969]["Text112"] = tTrojanWeaponChu_Text[23969]["Text321"]
				tNpcGossip[23969]["Option111"] = tTrojanWeaponChu_Text[23969]["Option212"]
				Sys_MsgBox(tTrojanWeaponChu_Text["Talk"]["GetMap"])
				User_EffectAdd('self', 'zf2-e128', nUserId)
				return true
			end
		else--已有神杵宝图
			tNpcGossip[23969]["Text112"] = tTrojanWeaponChu_Text[23969]["Text331"]
			tNpcGossip[23969]["Option111"] = tTrojanWeaponChu_Text[23969]["Option331"]
			return true
		end
	end

	tNpcGossip[23969]["Text112"] = tTrojanWeaponChu_Text[23969]["Text112"]
	tNpcGossip[23969]["Option111"] = tTrojanWeaponChu_Text[23969]["Option111"]
	return ((Sys_ChkFullTime(tActivityTime["TrojanWeaponChu"]["ActTime"])) and (not Task_ChkTaskDetail(nTaskId, nUserId)))
	
end
--有任务未布施时对白 1-2
tNpcGossip[23969]["Text1-2"] = {111, 121}
tNpcGossip[23969]["tOption1-2"] = {121}
tNpcGossip[23969]["OptionFunc121"] = "TrojanWeaponChu_GiveMoney</N>23969"--布施函数
tNpcGossip[23969]["ChkFunc1-2"] = function()
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]

	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		return false
	end
	
	--是否布施过 未布施过
	if not Task_ChkTaskDetailValue(nTaskId, "1", "==", 1, nUserId) then
		return true
	end

	return false

end
--布施后 1-3
tNpcGossip[23969]["Text1-3"] = {111, 131, 132, 133, 134, 135, 136}
tNpcGossip[23969]["tOption1-3"] = {131, 132, 133}
tNpcGossip[23969]["OptionFunc131"] = "TrojanWeaponChu_ChooseTask</N>23969</N>1"--接受考验函数
tNpcGossip[23969]["OptionFunc132"] = "TrojanWeaponChu_ChooseTask</N>23969</N>2"
tNpcGossip[23969]["OptionFunc133"] = "TrojanWeaponChu_ChooseTask</N>23969</N>3"
tNpcGossip[23969]["ChkFunc1-3"] = function()
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]

	--没有任务不显示任务对白
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		return false
	end
	--任务已完成不显示任务对白
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag", "~=", 0, nUserId) then
		return false
	end
	tNpcGossip[23969]["tOption1-3"] = {}
	for i = 1, 3 do
		--有该任务
		local nLittleTaskId = tTrojanWeaponChu_Data["TaskId"][i]

		if Task_ChkTaskDetail(nLittleTaskId, nUserId) then
			if Task_ChkTaskDetailValue(nLittleTaskId, 'CompleteFlag', '~=', 1, nUserId) then--已接取未完成
				tNpcGossip[23969]["Option13" .. i] = string.format(tGlobalFormat[2],tTrojanWeaponChu_Text[23969]["Option13" .. i],tTrojanWeaponChu_Text[23969]["Option134"])
				table.insert(tNpcGossip[23969]["tOption1-3"], tonumber(13 .. i))
			end
		else
			tNpcGossip[23969]["Option13" .. i] = tTrojanWeaponChu_Text[23969]["Option13" .. i]
			table.insert(tNpcGossip[23969]["tOption1-3"], tonumber(13 .. i))
		end
	end
	if #tNpcGossip[23969]["tOption1-3"] == 0 then
		return false
	end
	return true
end
--闲聊对白 1-4
tNpcGossip[23969]["Text1-4"] = {111, 112}
tNpcGossip[23969]["tOption1-4"] = {111}
tNpcGossip[23969]["ChkFunc1-4"] = function()
	return true
end

--接受考验1 2-1
tNpcGossip[23969]["Text2-1"] = {111, 211}
tNpcGossip[23969]["tOption2-1"] = {211, 212}
tNpcGossip[23969]["OptionFunc211"] = "TrojanWeaponChu_DrawMonster</N>23969"
tNpcGossip[23969]["OptionFunc212"] = "NULL"
tNpcGossip[23969]["ChkFunc2-1"] = function()
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]
	local nLittleTaskId = tTrojanWeaponChu_Data["TaskId"][1]

	--没有总任务
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		return false
	end
	--没有杀怪任务
	if not Task_ChkTaskDetail(nLittleTaskId, nUserId) then
		return false
	end
	--随机一个怪物ID
	local nMonsterIndex = Get_TaskDetailData2(nLittleTaskId, nUserId)
	if nMonsterIndex == 0 then
		nMonsterIndex = math.random(1, #tTrojanWeaponChu_Monster)
		Task_SetTaskDetailData2(nLittleTaskId, nMonsterIndex, nUserId)
	end
	--播放光效
	User_EffectAddNew("self", tTrojanWeaponChu_Monster[nMonsterIndex]["Effect"], 0, nUserId)
	
	return true
end
--接受考验2 2-2
tNpcGossip[23969]["Text2-2"] = {111, 221}
tNpcGossip[23969]["tOption2-2"] = {221}
tNpcGossip[23969]["ChkFunc2-2"] = function()
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]
	if SpecialServer_ChkNoGiftServer() then
		nTaskId = tTrojanWeaponChu_Data["TaskId"][0]
	end
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		return false
	end
	return true
end
--接受考验3 2-3
tNpcGossip[23969]["Text2-3"] = {111, 231}
tNpcGossip[23969]["tOption2-3"] = {231}
tNpcGossip[23969]["ChkFunc2-3"] = function()
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"][0]
	if SpecialServer_ChkNoGiftServer() then
		nTaskId = tTrojanWeaponChu_Data["TaskId"][0]
	end
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		return false
	end

	return true
end

--银两不足 3-1
tNpcGossip[23969]["Text3-1"] = {111, 311}
tNpcGossip[23969]["tOption3-1"] = {311}
tNpcGossip[23969]["ChkFunc3-1"] = function()

	return true
	
end
--已有考验未完成 3-4
tNpcGossip[23969]["Text3-4"] = {111, 341}
tNpcGossip[23969]["tOption3-4"] = {341}
tNpcGossip[23969]["ChkFunc3-4"] = function()

	return true
	
end
--前置任务对白 3-5
tNpcGossip[23969]["Text3-5"] = {351, 352, 353, 354, 355}
tNpcGossip[23969]["tOption3-5"] = {351}
tNpcGossip[23969]["OptionFunc351"] = "TrojanWeaponChu_AcceptTask"
tNpcGossip[23969]["ChkFunc3-5"] = function()

	return true
	
end




---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3312299] = tItem[3312299] or {}
tItem[3312299]["Function"] = function(nItemId,sItemName)
	TrojanWeaponChu_EnterInstance(nItemId)
end

---------------------------------陷阱部分---------------------------------------------
tTrap[157] = tTrap[157] or {}
tTrap[157]["Function"] = function(nTrapId,nTrapType)
	local nUserId = Get_UserId()
	local nTaskId = tTrojanWeaponChu_Data["TaskId"]
	
	
	Sys_MsgBox(tTrojanWeaponChu_Text["Talk"]["OutMapConfirm"], 'TrojanWeaponChu_ChgMap', 'NULL', nUserId)
	
end
---------------------------------怪物部分---------------------------------------------
local tTrojanWeaponChu_KillMonster = {}
tTrojanWeaponChu_KillMonster[1] = {}
tTrojanWeaponChu_KillMonster[1]["ActivityTime"] = tActivityTime["TrojanWeaponChu"]["ActTime"]
tTrojanWeaponChu_KillMonster[1]["Function"]= TrojanWeaponChu_KillMonster
tTrojanWeaponChu_KillMonster[1]["MonsterId"] = {17, 84, 8, 16, 3, 57, 4, 13, 56, 20, 6, 18}
table.insert(tMonsterDrop_AreaLoad,tTrojanWeaponChu_KillMonster[1])

tTrojanWeaponChu_KillMonster[2] = {}
tTrojanWeaponChu_KillMonster[2]["ActivityTime"] = tActivityTime["TrojanWeaponChu"]["ActTime"]
tTrojanWeaponChu_KillMonster[2]["Function"]= TrojanWeaponChu_KillBoss
tTrojanWeaponChu_KillMonster[2]["MonsterId"] = {3379}
table.insert(tMonsterDrop_AreaLoad,tTrojanWeaponChu_KillMonster[2])

local tTrojanWeaponChu_KillMonster_NoGift = {}
tTrojanWeaponChu_KillMonster_NoGift[1] = {}
tTrojanWeaponChu_KillMonster_NoGift[1]["ActivityTime"] = tActivityTime["TrojanWeaponChu"]["ActTime"]
tTrojanWeaponChu_KillMonster_NoGift[1]["Function"]= TrojanWeaponChu_KillMonster
tTrojanWeaponChu_KillMonster_NoGift[1]["MonsterId"] = {4849, 4874, 4840, 4848, 4835, 4836, 4845, 4838, 4850}
table.insert(tMonsterDrop_AreaLoad,tTrojanWeaponChu_KillMonster_NoGift[1])

tTrojanWeaponChu_KillMonster_NoGift[2] = {}
tTrojanWeaponChu_KillMonster_NoGift[2]["ActivityTime"] = tActivityTime["TrojanWeaponChu"]["ActTime"]
tTrojanWeaponChu_KillMonster_NoGift[2]["Function"]= TrojanWeaponChu_KillBoss
tTrojanWeaponChu_KillMonster_NoGift[2]["MonsterId"] = {3379}
table.insert(tMonsterDrop_AreaLoad,tTrojanWeaponChu_KillMonster_NoGift[2])