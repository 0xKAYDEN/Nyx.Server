------------------------------------------------------------------------------------
--Name：            190410[简体征服][任务脚本]勇士百兵谱支线任务（刀）
--Creator:      林嘉鑫
--Created:     2019-04-10
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tWeaponArchivesKnife_Count = {}
	-- 乌金
	tWeaponArchivesKnife_Count["NeedItem"] = 3321125
	tWeaponArchivesKnife_Count["NeedNum"] =100
	-- 刀胚
	tWeaponArchivesKnife_Count["BaseItem"] = 3321126
	-- NPC怪物位置
	tWeaponArchivesKnife_Count["NPCId"] = 24130
	tWeaponArchivesKnife_Count["MapId"] = {}
	tWeaponArchivesKnife_Count["MapId"][1] = 1011
	tWeaponArchivesKnife_Count["MapId"][2] = 10365
	tWeaponArchivesKnife_Count["PosX"] = 406
	tWeaponArchivesKnife_Count["PosY"] = 84
	tWeaponArchivesKnife_Count["MovePosX"] = 54
	tWeaponArchivesKnife_Count["MovePosY"] = 59
	tWeaponArchivesKnife_Count["GenId"] = 27125
	tWeaponArchivesKnife_Count["MonsterId"] = 4991
	tWeaponArchivesKnife_Count["BackMapId"] = 10656
	tWeaponArchivesKnife_Count["BackPosX"] = 80
	tWeaponArchivesKnife_Count["BackPosY"] = 66
	tWeaponArchivesKnife_Count["WeaponID"] = 410
	-- 任务ID
	tWeaponArchivesKnife_Count["TaskId"] = {}
	-- 普通服
	tWeaponArchivesKnife_Count["TaskId"][1] = {}
	tWeaponArchivesKnife_Count["TaskId"][1][0] = 1082
	tWeaponArchivesKnife_Count["TaskId"][1][1] = 7009
	tWeaponArchivesKnife_Count["TaskId"][1][2] = 7030
	tWeaponArchivesKnife_Count["TaskId"][1][3] = 7031
	-- 激情服
	tWeaponArchivesKnife_Count["TaskId"][2] = {}
	tWeaponArchivesKnife_Count["TaskId"][2][0] = 1090
	tWeaponArchivesKnife_Count["TaskId"][2][1] = 7039
	tWeaponArchivesKnife_Count["TaskId"][2][2] = 7040
	tWeaponArchivesKnife_Count["TaskId"][2][3] = 7041
	-- 掉落概率（10%，等级差过10级为5%）
	tWeaponArchivesKnife_Count["RandSum"] = 10000
	tWeaponArchivesKnife_Count["Rand1"] = 1000
	tWeaponArchivesKnife_Count["Rand2"] = 500
	tWeaponArchivesKnife_Count["OutLevel"] = 10
	
	tWeaponArchivesKnife_Count["Secs"] = 3
	tWeaponArchivesKnife_Count["ActionId"] = 220
	tWeaponArchivesKnife_Count["Instancetype"] = 283
	tWeaponArchivesKnife_Count["EffectObj"] = "self"
	tWeaponArchivesKnife_Count["Effect"] = {}
	tWeaponArchivesKnife_Count["Effect"][1] = "accession"
	tWeaponArchivesKnife_Count["Effect"][2] = "purpleray"
	

local tWeaponArchivesKnife_Stc = {}
	tWeaponArchivesKnife_Stc[1] = {}
	tWeaponArchivesKnife_Stc[1]["EventType"] = 197
	tWeaponArchivesKnife_Stc[1]["DataType"] = 20
	tWeaponArchivesKnife_Stc[2] = {}
	tWeaponArchivesKnife_Stc[2]["EventType"] = 194
	tWeaponArchivesKnife_Stc[2]["DataType"] = 23
	tWeaponArchivesKnife_Stc[3] = {}
	tWeaponArchivesKnife_Stc[3]["EventType"] = 193
	tWeaponArchivesKnife_Stc[3]["DataType"] = 84

local tWeaponArchivesKnife_Item = {}
	-- ===杀怪掉落
	-- ===索引:"KillMonster"
	tWeaponArchivesKnife_Item["KillMonster"] = {}
	tWeaponArchivesKnife_Item["KillMonster"]["LogId"] = 12001380
	tWeaponArchivesKnife_Item["KillMonster"]["RewardItem"] = {}
	tWeaponArchivesKnife_Item["KillMonster"]["RewardItem"][1] = {}
	tWeaponArchivesKnife_Item["KillMonster"]["RewardItem"][1]["Id"] = 3321125 -- 【库】乌金[属性:11]【表格】乌金
	tWeaponArchivesKnife_Item["KillMonster"]["RewardItem"][1]["Attr"] = "0 1" -- 乌金*1
	tWeaponArchivesKnife_Item["KillMonster"]["RewardEffect"] = {}
	tWeaponArchivesKnife_Item["KillMonster"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesKnife_Item["KillMonster"]["RewardEffect"]["Effect"] = "break_accept"

	-- ===杀BOSS掉落
	-- ===索引:"KillBoss"
	tWeaponArchivesKnife_Item["KillBoss"] = {}
	tWeaponArchivesKnife_Item["KillBoss"]["LogId"] = 12001380
	tWeaponArchivesKnife_Item["KillBoss"]["RewardItem"] = {}
	tWeaponArchivesKnife_Item["KillBoss"]["RewardItem"][1] = {}
	tWeaponArchivesKnife_Item["KillBoss"]["RewardItem"][1]["Id"] = 3321126 -- 【库】“主宰”刀胚[属性:11]【表格】“主宰”刀胚
	tWeaponArchivesKnife_Item["KillBoss"]["RewardItem"][1]["Attr"] = "0 1" -- “主宰”刀胚*1
	tWeaponArchivesKnife_Item["KillBoss"]["RewardEffect"] = {}
	tWeaponArchivesKnife_Item["KillBoss"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesKnife_Item["KillBoss"]["RewardEffect"]["Effect"] = "break_accept"

----------------------------------逻辑部分---------------------------------------------
-- 传送
function WeaponArchivesKnife_TransForm()
	local nUserId = Get_UserId()
	-- 组队不可进去
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum > 1 then
		return
	end
	local nSpecial = 1
	-- 激情服地图
	if SpecialServer_ChkNoGiftServer() then
		nSpecial = 2
	end
	local nTaskId2 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][2]
	if not Task_ChkTaskDetail(nTaskId2) then
		return
	end
	local nInstanceType = tWeaponArchivesKnife_Count["Instancetype"]
	local nInstanceId = User_CreateInstance(nInstanceType,nUserId)
	if not User_EnterInstance(nInstanceType, 0, 0, 0, nUserId,nInstanceId) then
		return
	end
	local nGenId = tWeaponArchivesKnife_Count["GenId"]
	local nMonsterId = tWeaponArchivesKnife_Count["MonsterId"]
	local nMoveMapId = Get_UserMapId()
	local nMoveNPCPosX = tWeaponArchivesKnife_Count["MovePosX"]
	local nMoveNPCPosY = tWeaponArchivesKnife_Count["MovePosY"]
	local nBossNum = Get_SysTempData(1, nMoveMapId, nMonsterId)
	-- 判断BOSS存在
	if nBossNum > 0 then
		Monster_DelMonster(nMoveMapId, nMonsterId)
	end
	Monster_AddMonster(nMoveMapId,nMoveNPCPosX,nMoveNPCPosY,nGenId,nMonsterId)
	Sys_MsgBox(tWeaponArchivesKnife_Text["Msg"]["EnterInstance"])
end

-- 击杀BOSS
function WeaponArchivesKnife_KillMonster()
	local nUserId = Get_UserId()
	local nNPCMapId = tWeaponArchivesKnife_Count["MapId"][1]
	local nSpecial = 1
	-- 激情服地图
	if SpecialServer_ChkNoGiftServer() then
		nNPCMapId = tWeaponArchivesKnife_Count["MapId"][2]
		nSpecial = 2
	end
	local nNPCPosX = tWeaponArchivesKnife_Count["PosX"]
	local nNPCPosY = tWeaponArchivesKnife_Count["PosY"]
	User_ChgMap(nNPCMapId, nNPCPosX, nNPCPosY)
	Sys_MsgBox(tWeaponArchivesKnife_Text["Msg"]["KillBoss"])
	local nTaskId2 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][2]
	if not Task_ChkTaskDetail(nTaskId2) then
		return
	end
	Task_SetTaskDetailData1(nTaskId2,1,nUserId)
	Task_SetTaskDetailCompleteFlag(nTaskId2,1,nUserId)
	local nTaskId3 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][3]
	if not Task_ChkTaskDetail(nTaskId3) then
		Task_AddTaskDetail(nTaskId3,0,nUserId)
	end
	if not RewardTemplate_CheckSpace(tWeaponArchivesKnife_Item["KillBoss"]) then
		User_TalkChannel2005(tWeaponArchivesKnife_Text["Msg"]["NoSpaceBoss"])
		return
	end
	RewardTemplate_UseItem(tWeaponArchivesKnife_Item["KillBoss"])
end

--小怪掉落
function WeaponArchivesKnife_Drop()
	local nUserId = Get_UserId()
	local nSpecial = 1
	-- 激情服地图
	if SpecialServer_ChkNoGiftServer() then
		nSpecial = 2
	end
	-- 有任务（三）才掉落
	local nTaskId3 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][3]
	if not Task_ChkTaskDetail(nTaskId3) then
		return
	end
	local nData3 = Get_TaskDetailData1(nTaskId3, nUserId)
	if nData3 > 0 then
		return
	end
	local nRand = tWeaponArchivesKnife_Count["Rand1"]
	local nRandSum = tWeaponArchivesKnife_Count["RandSum"]
	if Get_UserLevel() > Get_MonsterLevel() + tWeaponArchivesKnife_Count["OutLevel"] then
		nRand = tWeaponArchivesKnife_Count["Rand2"]
	end
	if Sys_Random(nRand,nRandSum) then
		RewardTemplate_UseItem(tWeaponArchivesKnife_Item["KillMonster"])
	end
	local nCount = Get_CountItemType(tWeaponArchivesKnife_Count["NeedItem"],0)
	if nCount == tWeaponArchivesKnife_Count["NeedNum"] then
		Sys_MsgBox(tWeaponArchivesKnife_Text["Msg"]["100Item"])
	end
end

-- 觉醒选项
function WeaponArchivesKnife_Awaken(nItemId)
	local nUserId = Get_UserId()
	local nNeedItemId = tWeaponArchivesKnife_Count["NeedItem"]
	local nCount = Get_CountItemType(nNeedItemId,0)
	-- 数量判断与删除
	if nCount < tWeaponArchivesKnife_Count["NeedNum"] then
		Sys_MsgBox(tWeaponArchivesKnife_Text["Msg"]["NotEnough"])
		return
	end
	
	local nSecs = tWeaponArchivesKnife_Count["Secs"]
	local sContent = tWeaponArchivesKnife_Text["Msg"]["Awaking"]
	local nActionId = tWeaponArchivesKnife_Count["ActionId"]
	User_SetExplore(nSecs,sContent,nActionId,"WeaponArchivesKnife_AwakenSuccess</N>"..nItemId,nil)
end

-- 觉醒成功
function WeaponArchivesKnife_AwakenSuccess(nItemId,nUserId)
	local nNeedItemId = tWeaponArchivesKnife_Count["NeedItem"]
	local nBaseItemId = tWeaponArchivesKnife_Count["BaseItem"]
	local nEvent1 = tWeaponArchivesKnife_Stc[1]["EventType"]
	local nType1 = tWeaponArchivesKnife_Stc[1]["DataType"]
	local nEvent3 = tWeaponArchivesKnife_Stc[3]["EventType"]
	local nType3 = tWeaponArchivesKnife_Stc[3]["DataType"]
	local nSpecial = 1
	-- 激情服地图
	if SpecialServer_ChkNoGiftServer() then
		nSpecial = 2
	end
	local nTaskId3 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][3]
	if not Task_ChkTaskDetail(nTaskId3,nUserId) then
		return
	end
	if (Item_ChkMulItem(nNeedItemId,nNeedItemId,tWeaponArchivesKnife_Count["NeedNum"],0,0,nUserId) and Item_DelMulItem(nNeedItemId,nNeedItemId,tWeaponArchivesKnife_Count["NeedNum"],0,0,nUserId)) then
		if Item_ChkItem(nBaseItemId,1,0,nUserId) and Item_DelItem(nBaseItemId,1,0,nUserId) then
			User_EffectAdd(tWeaponArchivesKnife_Count["EffectObj"],tWeaponArchivesKnife_Count["Effect"][1],nUserId)
			Task_SetTaskDetailData1(nTaskId3,1,nUserId)
			Task_SetTaskDetailCompleteFlag(nTaskId3,1,nUserId)
			Task_AddStatistic(nEvent1, nType1, 1, 1,nUserId)
			Task_SetStatistic(nEvent3, nType3, 1, 1,nUserId)
			User_AwardHundredWeapon(tWeaponArchivesKnife_Count["WeaponID"],nUserId)
			Sys_MsgBox(tWeaponArchivesKnife_Text["Msg"]["Success"],nil,nil,nUserId)
		end
	end
	-- 传回主NPC
	local nNPCMapId = tWeaponArchivesKnife_Count["BackMapId"]
	local nNPCPosX = tWeaponArchivesKnife_Count["BackPosX"]
	local nNPCPosY = tWeaponArchivesKnife_Count["BackPosY"]
	User_ChgMap(nNPCMapId, nNPCPosX, nNPCPosY,0,nUserId)
end

-- 使用物品文字
function WeaponArchivesKnife_OpenText(nItemId)
	local nBaseItemId = tWeaponArchivesKnife_Count["BaseItem"]
	if not Item_ChkItem(nBaseItemId) then
		Sys_MsgBox(tWeaponArchivesKnife_Text["Msg"]["NoBase"])
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
	return
end

-- 首次接受
function WeaponArchivesKnife_Accept()
	local nUserId = Get_UserId()
	local nEvent = tWeaponArchivesKnife_Stc[2]["EventType"]
	local nType = tWeaponArchivesKnife_Stc[2]["DataType"]
	if Task_ChkStcValue(nEvent, nType, "~=", 1,nUserId) then
		User_EffectAdd(tWeaponArchivesKnife_Count["EffectObj"],tWeaponArchivesKnife_Count["Effect"][2],nUserId)
		Task_SetStatistic(nEvent, nType, 1, 1,nUserId)
	end
end

-- 补领
function WeaponArchivesKnife_Replacement()
	local nBaseItemId = tWeaponArchivesKnife_Count["BaseItem"]
	if Item_ChkItem(nBaseItemId) then
		Sys_MsgBox(tWeaponArchivesKnife_Text["Msg"]["HaveItem"])
		return
	end
	if not RewardTemplate_CheckSpace(tWeaponArchivesKnife_Item["KillBoss"]) then
		Sys_MsgBox(tWeaponArchivesKnife_Text["Msg"]["NoSpace"])
		return
	end
	RewardTemplate_UseItem(tWeaponArchivesKnife_Item["KillBoss"])
end
----------------------------------NPC部分---------------------------------------------

tNpcFace[6412] = 40
tNpcGossip[24130]= tNpcGossip[24130] or DefaultNpc:new{}
tNpcGossip[24130]["OptionHidden"] = 1
tNpcGossip[24130]["DialogueText"] = tWeaponArchivesKnife_Text[24130]
tNpcGossip[24130]["Text1-1"] = {111,112,113}
tNpcGossip[24130]["ChkFunc1-1"]= function()
	local nUserId = Get_UserId()
	local nSpecial = 1
	-- 激情服地图
	if SpecialServer_ChkNoGiftServer() then
		nSpecial = 2
	end
	local nTaskId0 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][0]
	if not Task_ChkTaskDetail(nTaskId0) then
		return true
	end
	local nData0 = Get_TaskDetailData1(nTaskId0, nUserId)
	if nData0 < 1 then
		return false
	end
	local nTaskId1 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][1]
	local nTaskId2 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][2]
	local nTaskId3 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][3]
	if not (Task_ChkTaskDetail(nTaskId1) or Task_ChkTaskDetail(nTaskId2) or Task_ChkTaskDetail(nTaskId3)) then
		return true
	end
	if Task_ChkTaskDetail(nTaskId3) then
		local nData3 = Get_TaskDetailData1(nTaskId3, nUserId)
		if nData3 >= 1 then
			return true
		end
	end
	return false
end
tNpcGossip[24130]["tOption1-1"] = {111}

tNpcGossip[24130]["Text1-2"] = {121,122,123,124}
tNpcGossip[24130]["ChkFunc1-2"]= function()
	local nUserId = Get_UserId()
	local nSpecial = 1
	-- 激情服地图
	if SpecialServer_ChkNoGiftServer() then
		nSpecial = 2
	end
	local nTaskId0 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][0]
	if not Task_ChkTaskDetail(nTaskId0) then
		return
	end
	local nData0 = Get_TaskDetailData1(nTaskId0, nUserId)
	if nData0 < 1 then
		return false
	end
	local nTaskId1 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][1]
	Task_SetTaskDetailData1(nTaskId1,1,nUserId)
	Task_SetTaskDetailCompleteFlag(nTaskId1,1,nUserId)
	local nTaskId2 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][2]
	if not Task_ChkTaskDetail(nTaskId2) then
		Task_AddTaskDetail(nTaskId2,0,nUserId)
	end
	local nData2 = Get_TaskDetailData1(nTaskId2, nUserId)
	if nData2 < 1 then
		return true
	end
	return false
end
tNpcGossip[24130]["tOption1-2"] = {121}
tNpcGossip[24130]["OptionFunc121"]="WeaponArchivesKnife_TransForm"


tNpcGossip[24130]["Text1-3"] = {131,132,133}
tNpcGossip[24130]["ChkFunc1-3"]= function()
	local nUserId = Get_UserId()
	local nSpecial = 1
	-- 激情服地图
	if SpecialServer_ChkNoGiftServer() then
		nSpecial = 2
	end
	local nTaskId0 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][0]
	if not Task_ChkTaskDetail(nTaskId0) then
		return
	end
	local nData0 = Get_TaskDetailData1(nTaskId0, nUserId)
	if nData0 < 1 then
		return false
	end
	local nBaseItemId = tWeaponArchivesKnife_Count["BaseItem"]
	if Item_ChkItem(nBaseItemId) then
		tNpcGossip[24130]["tOption1-3"] = {131}
	else
		tNpcGossip[24130]["tOption1-3"] = {131,132}
	end
	return true
end
tNpcGossip[24130]["tOption1-3"] = {131,132}
tNpcGossip[24130]["OptionFunc131"]="WeaponArchivesKnife_Accept"
tNpcGossip[24130]["OptionFunc132"]="WeaponArchivesKnife_Replacement"

tNpcGossip[24130]["Text1-4"] = {141,142,143,144}
tNpcGossip[24130]["ChkFunc1-4"]= function()
	local nUserId = Get_UserId()
	local nSpecial = 1
	-- 激情服地图
	if SpecialServer_ChkNoGiftServer() then
		nSpecial = 2
	end
	local nTaskId0 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][0]
	if not Task_ChkTaskDetail(nTaskId0) then
		return
	end
	Task_SetTaskDetailData1(nTaskId0,1,nUserId)
	Task_SetTaskDetailCompleteFlag(nTaskId0,1,nUserId)
	local nTaskId1 = tWeaponArchivesKnife_Count["TaskId"][nSpecial][1]
	if not Task_ChkTaskDetail(nTaskId1) then
		Task_AddTaskDetail(nTaskId1,0,nUserId)
	end
	return true
end
tNpcGossip[24130]["tOption1-4"] = {141}

---------------------------------物品部分---------------------------------------------
--------物品有对白模板
tItem[3321126] = tItem[3321126] or {}
tItem[3321126]["OptionHidden"] = 1
tItem[3321126]["DialogueText"] = tWeaponArchivesKnife_Text[3321126]
tItem[3321126]["Text1-1"] = {111,112,113,114,115}
tItem[3321126]["tOption1-1"] = {111}
tItem[3321126]["OptionFunc111"]="WeaponArchivesKnife_Awaken</N>3321126"

tItem[3321125] = tItem[3321125] or {}
tItem[3321125]["OptionHidden"] = 1
tItem[3321125]["Function"] = function (nItemId,sItemName)
	WeaponArchivesKnife_OpenText(nItemId)
end
tItem[3321125]["DialogueText"] = tWeaponArchivesKnife_Text[3321126]
tItem[3321125]["Text1-1"] = {111,112,113,114,115}
tItem[3321125]["tOption1-1"] = {111}
tItem[3321125]["OptionFunc111"]="WeaponArchivesKnife_Awaken</N>3321125"

---------------------------------怪物部分---------------------------------------------

local tWeaponArchivesKnife_KillMonster = {}
tWeaponArchivesKnife_KillMonster["Function"]= WeaponArchivesKnife_KillMonster
tWeaponArchivesKnife_KillMonster["MonsterId"] = {4991}
table.insert(tMonsterDrop_AreaLoad,tWeaponArchivesKnife_KillMonster)

-- 除清风原怪物掉落
local tWeaponArchivesKnife_Drop = {}
	-- 小怪的掉落
	tWeaponArchivesKnife_Drop[1] = {}
	tWeaponArchivesKnife_Drop[1]["Function"] = WeaponArchivesKnife_Drop
	tWeaponArchivesKnife_Drop[1]["Area"] = {2,3,4,5,6,7,8,9,10,11}
table.insert(tMonsterDrop_AreaLoad,tWeaponArchivesKnife_Drop[1])

	-- 激情服
	tWeaponArchivesKnife_Drop[2] = {}
	tWeaponArchivesKnife_Drop[2]["Function"] = WeaponArchivesKnife_Drop
	tWeaponArchivesKnife_Drop[2]["MonsterId"]={4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tWeaponArchivesKnife_Drop[2])