------------------------------------------------------------------------------------
--Name：       190215[简体征服][活动脚本]上线福利活动-2转玩家礼包
--Creator:     江宇君
--Created:     2019/02/15
------------------------------------------------------------------------------------

--命名前缀
--GetSolarFirePack_

-- 掩码记录:	19017
-- stc(190,17)	记录玩家是否领取过灵珠礼盒

-- GlobalId:	53236

-- logid:	12001298	玩家打开礼包

-- 任务需求
-- 第1周完成2转，5个灵珠礼盒
-- 第2周完成2转，4个灵珠礼盒
-- 第3周完成2转，3个灵珠礼盒
-- 第4周完成2转，2个灵珠礼盒
-- 第5周完成2转，1个灵珠礼盒

-- 打开灵珠礼盒获得随机奖励
local tGetSolarFirePack_Reward = {}
	tGetSolarFirePack_Reward[3320168] = {}
	tGetSolarFirePack_Reward[3320168]["ItemChanceSum"] = 10000
	
	-- 5阶灵珠 4200005 59%
	tGetSolarFirePack_Reward[3320168][1] = {}
	tGetSolarFirePack_Reward[3320168][1]["LogId"] = 12001298
	tGetSolarFirePack_Reward[3320168][1]["RandomItemChanceType"] = 2
	tGetSolarFirePack_Reward[3320168][1]["ItemChance"] = 5900
	tGetSolarFirePack_Reward[3320168][1]["RewardItem"] = {}
	tGetSolarFirePack_Reward[3320168][1]["RewardItem"][1] = {}
	tGetSolarFirePack_Reward[3320168][1]["RewardItem"][1]["Id"] = 4200005
	tGetSolarFirePack_Reward[3320168][1]["RewardItem"][1]["Attr"] = "0 1"
	tGetSolarFirePack_Reward[3320168][1]["RewardItem"][1]["PreciousType"] = 307
	tGetSolarFirePack_Reward[3320168][1]["RewardEffect"] = {}
	tGetSolarFirePack_Reward[3320168][1]["RewardEffect"]["SzObj"] = "self"
	tGetSolarFirePack_Reward[3320168][1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 6阶灵珠 4200006 24%
	tGetSolarFirePack_Reward[3320168][2] = {}
	tGetSolarFirePack_Reward[3320168][2]["LogId"] = 12001298
	tGetSolarFirePack_Reward[3320168][2]["RandomItemChanceType"] = 2
	tGetSolarFirePack_Reward[3320168][2]["ItemChance"] = 2400
	tGetSolarFirePack_Reward[3320168][2]["RewardItem"] = {}
	tGetSolarFirePack_Reward[3320168][2]["RewardItem"][1] = {}
	tGetSolarFirePack_Reward[3320168][2]["RewardItem"][1]["Id"] = 4200006
	tGetSolarFirePack_Reward[3320168][2]["RewardItem"][1]["Attr"] = "0 1"
	tGetSolarFirePack_Reward[3320168][2]["RewardItem"][1]["PreciousType"] = 307
	tGetSolarFirePack_Reward[3320168][2]["RewardEffect"] = {}
	tGetSolarFirePack_Reward[3320168][2]["RewardEffect"]["SzObj"] = "self"
	tGetSolarFirePack_Reward[3320168][2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 7阶灵珠 4200007 12%
	tGetSolarFirePack_Reward[3320168][3] = {}
	tGetSolarFirePack_Reward[3320168][3]["LogId"] = 12001298
	tGetSolarFirePack_Reward[3320168][3]["RandomItemChanceType"] = 2
	tGetSolarFirePack_Reward[3320168][3]["ItemChance"] = 1200
	tGetSolarFirePack_Reward[3320168][3]["RewardItem"] = {}
	tGetSolarFirePack_Reward[3320168][3]["RewardItem"][1] = {}
	tGetSolarFirePack_Reward[3320168][3]["RewardItem"][1]["Id"] = 4200007
	tGetSolarFirePack_Reward[3320168][3]["RewardItem"][1]["Attr"] = "0 1"
	tGetSolarFirePack_Reward[3320168][3]["RewardItem"][1]["PreciousType"] = 307
	tGetSolarFirePack_Reward[3320168][3]["RewardEffect"] = {}
	tGetSolarFirePack_Reward[3320168][3]["RewardEffect"]["SzObj"] = "self"
	tGetSolarFirePack_Reward[3320168][3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 8阶灵珠 4200008 4%
	tGetSolarFirePack_Reward[3320168][4] = {}
	tGetSolarFirePack_Reward[3320168][4]["LogId"] = 12001298
	tGetSolarFirePack_Reward[3320168][4]["RandomItemChanceType"] = 2
	tGetSolarFirePack_Reward[3320168][4]["ItemChance"] = 400
	tGetSolarFirePack_Reward[3320168][4]["RewardItem"] = {}
	tGetSolarFirePack_Reward[3320168][4]["RewardItem"][1] = {}
	tGetSolarFirePack_Reward[3320168][4]["RewardItem"][1]["Id"] = 4200008
	tGetSolarFirePack_Reward[3320168][4]["RewardItem"][1]["Attr"] = "0 1"
	tGetSolarFirePack_Reward[3320168][4]["RewardItem"][1]["PreciousType"] = 307
	tGetSolarFirePack_Reward[3320168][4]["RewardEffect"] = {}
	tGetSolarFirePack_Reward[3320168][4]["RewardEffect"]["SzObj"] = "self"
	tGetSolarFirePack_Reward[3320168][4]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 9阶灵珠 4200009 1%
	tGetSolarFirePack_Reward[3320168][5] = {}
	tGetSolarFirePack_Reward[3320168][5]["LogId"] = 12001298
	tGetSolarFirePack_Reward[3320168][5]["RandomItemChanceType"] = 2
	tGetSolarFirePack_Reward[3320168][5]["ItemChance"] = 100
	tGetSolarFirePack_Reward[3320168][5]["RewardItem"] = {}
	tGetSolarFirePack_Reward[3320168][5]["RewardItem"][1] = {}
	tGetSolarFirePack_Reward[3320168][5]["RewardItem"][1]["Id"] = 4200009
	tGetSolarFirePack_Reward[3320168][5]["RewardItem"][1]["Attr"] = "0 1"
	tGetSolarFirePack_Reward[3320168][5]["RewardItem"][1]["PreciousType"] = 307
	tGetSolarFirePack_Reward[3320168][5]["RewardEffect"] = {}
	tGetSolarFirePack_Reward[3320168][5]["RewardEffect"]["SzObj"] = "self"
	tGetSolarFirePack_Reward[3320168][5]["RewardEffect"]["Effect"] = "angelwing"
	
local tGetSolarFirePack_Award = {}
	-- 第1周完成2转 5个灵珠礼盒
	tGetSolarFirePack_Award[1] = {}
	tGetSolarFirePack_Award[1]["Num"] = 5
	tGetSolarFirePack_Award[1]["RewardItem"] = {}
	tGetSolarFirePack_Award[1]["RewardItem"][1] = {}
	tGetSolarFirePack_Award[1]["RewardItem"][1]["Id"] = 3320168
	tGetSolarFirePack_Award[1]["RewardItem"][1]["Attr"] = "0 5"
	
	-- 第2周完成2转 4个灵珠礼盒
	tGetSolarFirePack_Award[2] = {}
	tGetSolarFirePack_Award[2]["Num"] = 4
	tGetSolarFirePack_Award[2]["RewardItem"] = {}
	tGetSolarFirePack_Award[2]["RewardItem"][1] = {}
	tGetSolarFirePack_Award[2]["RewardItem"][1]["Id"] = 3320168
	tGetSolarFirePack_Award[2]["RewardItem"][1]["Attr"] = "0 4"
	
	-- 第3周完成2转 3个灵珠礼盒
	tGetSolarFirePack_Award[3] = {}
	tGetSolarFirePack_Award[3]["Num"] = 3
	tGetSolarFirePack_Award[3]["RewardItem"] = {}
	tGetSolarFirePack_Award[3]["RewardItem"][1] = {}
	tGetSolarFirePack_Award[3]["RewardItem"][1]["Id"] = 3320168
	tGetSolarFirePack_Award[3]["RewardItem"][1]["Attr"] = "0 3"
	
	-- 第4周完成2转 2个灵珠礼盒
	tGetSolarFirePack_Award[4] = {}
	tGetSolarFirePack_Award[4]["Num"] = 2
	tGetSolarFirePack_Award[4]["RewardItem"] = {}
	tGetSolarFirePack_Award[4]["RewardItem"][1] = {}
	tGetSolarFirePack_Award[4]["RewardItem"][1]["Id"] = 3320168
	tGetSolarFirePack_Award[4]["RewardItem"][1]["Attr"] = "0 2"
	
	-- 第5周完成2转 1个灵珠礼盒
	tGetSolarFirePack_Award[5] = {}
	tGetSolarFirePack_Award[5]["Num"] = 1
	tGetSolarFirePack_Award[5]["RewardItem"] = {}
	tGetSolarFirePack_Award[5]["RewardItem"][1] = {}
	tGetSolarFirePack_Award[5]["RewardItem"][1]["Id"] = 3320168
	tGetSolarFirePack_Award[5]["RewardItem"][1]["Attr"] = "0 1"

-- 基本数据
local tGetSolarFirePack_Data = {}
	-- 玩家转世次数
	tGetSolarFirePack_Data["Metempsychosis"] = 2 
	
	-- 得到礼包的掩码
	tGetSolarFirePack_Data["EventType"] = 190
	tGetSolarFirePack_Data["DateType"] = 17
	
	-- GlobalId
	tGetSolarFirePack_Data["Global"] = {}
	tGetSolarFirePack_Data["Global"]["GlobalId"] = 53236
	-- dateStr0-dateStr4
	tGetSolarFirePack_Data["Global"]["DateStr"] = {}
	tGetSolarFirePack_Data["Global"]["Num"] = 0
	
	-- 邮件
	tGetSolarFirePack_Data["Email"] = {}
	tGetSolarFirePack_Data["Email"]["ExistDay"] = 7
	tGetSolarFirePack_Data["Email"]["ActionId"] = {}
	tGetSolarFirePack_Data["Email"]["ActionId"][1] = 571196
	tGetSolarFirePack_Data["Email"]["ActionId"][2] = 571197
	tGetSolarFirePack_Data["Email"]["ActionId"][3] = 571198
	tGetSolarFirePack_Data["Email"]["ActionId"][4] = 571199
	tGetSolarFirePack_Data["Email"]["ActionId"][5] = 571200
	
	-- npc数据
	tGetSolarFirePack_Data["NPC"] = {}
	tGetSolarFirePack_Data["NPC"]["PosX"] = 310
	tGetSolarFirePack_Data["NPC"]["PosY"] = 275
	tGetSolarFirePack_Data["NPC"]["MapId"] = 1036
	
-----------------------逻辑部分--------------------------------

-- 判断玩家完成在第几周内完成2转
function GetSolarFirePack_JudgeTime()
	local nGlobalId = tGetSolarFirePack_Data["Global"]["GlobalId"] -- GlobalId
	local nData0 = Get_SysDynaGlobalData0(nGlobalId)
	
	-- 如果不是新服就跳出
	if nData0 == 0 then
		return
	end
	
	tGetSolarFirePack_Data["Global"]["DateStr"][1] = Get_SysDynaGlobalDataStr0(nGlobalId) -- 第一周 2019-02-21 00:00 2019-02-27 23:59
	tGetSolarFirePack_Data["Global"]["DateStr"][2] = Get_SysDynaGlobalDataStr1(nGlobalId) -- 第二周 2019-02-28 00:00 2019-03-06 23:59
	tGetSolarFirePack_Data["Global"]["DateStr"][3] = Get_SysDynaGlobalDataStr2(nGlobalId) -- 第三周 2019-03-07 00:00 2019-03-13 23:59
	tGetSolarFirePack_Data["Global"]["DateStr"][4] = Get_SysDynaGlobalDataStr3(nGlobalId) -- 第四周 2019-03-14 00:00 2019-03-20 23:59
	tGetSolarFirePack_Data["Global"]["DateStr"][5] = Get_SysDynaGlobalDataStr4(nGlobalId) -- 第五周 2019-03-21 00:00 2019-03-27 23:59
end

function GetSolarFirePack_Flag()
	for i, v in pairs(tGetSolarFirePack_Data["Global"]["DateStr"]) do 
		if (Sys_ChkFullTime(v)) then
			return i
		end
	end
	
	return 0
end
	
-- 玩家获取灵珠礼包
function GetSolarFirePack_NpcGetPack(nNpcId)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nEvent = tGetSolarFirePack_Data["EventType"]
	local nType = tGetSolarFirePack_Data["DateType"]
	
	local nNum = GetSolarFirePack_Flag()
	if nNum == 0 then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	local nMetempsychosis = Get_UserMetempsychosis(nUserId) -- 获取玩家转世次数
	-- 玩家未达到2转
	if not (nMetempsychosis >= tGetSolarFirePack_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	
	-- 已领过灵珠尊享礼盒
	if Task_ChkStcValue(nEvent, nType, ">=", 1) then
		return
	end
	
	-- 背包空间判断
	if not RewardTemplate_CheckSpace(tGetSolarFirePack_Award[nNum]) then
		LinkNpcGossipFunc_New(nNpcId, "3-1")
		return
	end
	
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	RewardTemplate_UseItemAndMsg(tGetSolarFirePack_Award[nNum])
	Sys_DialogText(tGetSolarFirePack_Text[23747]["Text411"])
	Sys_DialogText(string.format(tGetSolarFirePack_Text[23747]["Text412"], nNum, tGetSolarFirePack_Award[nNum]["Num"]))
	Sys_DialogOption(tGetSolarFirePack_Text[23747]["Option411"])
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 玩家打开礼包
function GetSolarFirePack_OpenPack(nItemId)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nMetempsychosis = Get_UserMetempsychosis(nUserId) -- 获取玩家转世次数
	if not (nMetempsychosis >= tGetSolarFirePack_Data["Metempsychosis"]) then
		return Sys_MsgBox(tGetSolarFirePack_Text["Metempsychosis"])
	end
	
	-- 检测背包空间
	if not RewardTemplate_CheckSpace(tGetSolarFirePack_Reward[nItemId]) then
		return Sys_MsgBox(tGetSolarFirePack_Text["NoSpace"])
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	local tReward, sRewardStr = RewardTemplate_NewRandomNoTip(tGetSolarFirePack_Reward, nItemId)
	Sys_SystemBroadcast(string.format(tGetSolarFirePack_Text["Broadcast"], sUserName, sRewardStr))
	Sys_TalkBroadcast(string.format(tGetSolarFirePack_Text["Broadcast"], sUserName, sRewardStr))
end
	
function GetSolarFirePack_EmailGetPack()
	local nUserId = Get_UserId()
	local nEvent = tGetSolarFirePack_Data["EventType"]
	local nType = tGetSolarFirePack_Data["DateType"]
	
	local nNum = GetSolarFirePack_Flag()
	
	if nNum == 0 then
		return
	end
	
	local nMetempsychosis = Get_UserMetempsychosis(nUserId) -- 获取玩家转世次数
	-- 玩家未达到2转
	if not (nMetempsychosis >= tGetSolarFirePack_Data["Metempsychosis"]) then
		return
	end
	
	-- 已领过灵珠尊享礼盒
	if Task_ChkStcValue(nEvent, nType, ">=", 1) then
		return
	end
	
	local nExistDay = tGetSolarFirePack_Data["Email"]["ExistDay"]
	local nActionId = tGetSolarFirePack_Data["Email"]["ActionId"][nNum]
	local sSender = tGetSolarFirePack_Text["Email"]["Sender"]
	local sTitle = tGetSolarFirePack_Text["Email"]["Title"]
	local sContent = string.format(tGetSolarFirePack_Text["Email"]["Content"], nNum, tGetSolarFirePack_Award[nNum]["Num"])
	
	if Sys_SendMail(nUserId, 0, 0, nActionId, 0, nExistDay, sSender, sTitle, sContent) then
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

function GetSolarFirePack_FindNpc(nNpcId)
	if not SpecialServer_ChkNoGiftServer() then
		return
	end
	
	local nPosX = tGetSolarFirePack_Data["NPC"]["PosX"]
	local nPosY = tGetSolarFirePack_Data["NPC"]["PosY"]
	local nMapId = tGetSolarFirePack_Data["NPC"]["MapId"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end
----------------------npc配置------------------------
tNpcFace[1541] = 247
tNpcGossip[23747] = tNpcGossip[23747] or DefaultNpc:new{}
tNpcGossip[23747]["OptionHidden"] = 1
tNpcGossip[23747]["DialogueText"] = tGetSolarFirePack_Text[23747]

tNpcGossip[23747]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}
tNpcGossip[23747]["tOption1-1"] = {111}
tNpcGossip[23747]["OptionFunc111"] = "GetSolarFirePack_NpcGetPack</N>23747"
tNpcGossip[23747]["OptionChkFunc111"] = function ()
	local nEvent = tGetSolarFirePack_Data["EventType"]
	local nType = tGetSolarFirePack_Data["DateType"]
	
	if Task_ChkStcValue(nEvent, nType, ">=", 1) then
		tNpcGossip[23747]["Option111"] = tGetSolarFirePack_Text[23747]["Option112"]
		return true
	end
	
	tNpcGossip[23747]["Option111"] = tGetSolarFirePack_Text[23747]["Option111"]
	return true
end

tNpcGossip[23747]["Text1-2"] = {121, 122}
tNpcGossip[23747]["tOption1-2"] = {121}

-- 并未2转
tNpcGossip[23747]["Text2-1"] = {211, 212}
tNpcGossip[23747]["tOption2-1"] = {211}

-- 背包满
tNpcGossip[23747]["Text3-1"] = {311, 312}
tNpcGossip[23747]["tOption3-1"] = {311}

----------------------物品配置------------------------
tItem[3320168] = tItem[3320168] or {}
tItem[3320168]["Function"] = function(nItemId,sItemName)
	GetSolarFirePack_OpenPack(nItemId)
end

----------------------上线自检-------------------------
table.insert(tSystem_PlayLogin_Func, GetSolarFirePack_EmailGetPack)

--------------------服务器启动时触发-------------------
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],GetSolarFirePack_JudgeTime)