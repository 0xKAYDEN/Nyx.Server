------------------------------------------------------------------------------------
-- Name：	190819[英文征服][活动脚本]手拉手拉新活动-线上制作 （9.5-11.05）
-- Creator:	林旭
-- Created:	2019-08-19
------------------------------------------------------------------------------------
-- 任务需求：
-- 前缀名：NewHandInHand
-- LogId：12001569
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local nNewHandInHand_Coin = 3313516
local nNewHandInHand_Npc = 24811
-- 网址
local sNewHandInHand_Web = "https://coevent.99.com/handinhand1909/client/"
-- Log记录
local tNewHandInHand_Log = {}
	tNewHandInHand_Log["HandIn"] = "0,0,3313516,%d,12001569,2,0,0"
-- 活动时间
local tNewHandInHand_ActivityTime = {}
	tNewHandInHand_ActivityTime["ActivityTime"] = tActivityTime["NewHandInHand"]["ActivityTime"]
-- 发奖发活跃币
local tNewHandInHand_Action = {}
	tNewHandInHand_Action[1] = 574242
	tNewHandInHand_Action[2] = 574243
	tNewHandInHand_Action[5] = 574244
local tNewHandInHand_Stc = {}
	-- 一转
	tNewHandInHand_Stc[1] = {}
	tNewHandInHand_Stc[1]["EventType"] = 202
	tNewHandInHand_Stc[1]["DataType"] = 46
	-- 二转
	tNewHandInHand_Stc[2] = {}
	tNewHandInHand_Stc[2]["EventType"] = 202
	tNewHandInHand_Stc[2]["DataType"] = 47
	-- 每日使用正气令
	tNewHandInHand_Stc[3] = {}
	tNewHandInHand_Stc[3]["EventType"] = 202
	tNewHandInHand_Stc[3]["DataType"] = 48
	-- 每次参加决战冥城
	tNewHandInHand_Stc[4] = {}
	tNewHandInHand_Stc[4]["EventType"] = 202
	tNewHandInHand_Stc[4]["DataType"] = 49
	tNewHandInHand_Stc[4]["TimeType"] = 5
	-- 每次参加职业PK赛
	tNewHandInHand_Stc[5] = {}
	tNewHandInHand_Stc[5]["EventType"] = 202
	tNewHandInHand_Stc[5]["DataType"] = 50
	-- 每次个人竞技场排位赛
	tNewHandInHand_Stc[6] = {}
	tNewHandInHand_Stc[6]["EventType"] = 202
	tNewHandInHand_Stc[6]["DataType"] = 51
	tNewHandInHand_Stc[6]["TimeType"] = 4
	-- 每次组队竞技场排位赛
	tNewHandInHand_Stc[7] = {}
	tNewHandInHand_Stc[7]["EventType"] = 202
	tNewHandInHand_Stc[7]["DataType"] = 52
	tNewHandInHand_Stc[7]["TimeType"] = 4
	-- 每次骑马大赛
	tNewHandInHand_Stc[8] = {}
	tNewHandInHand_Stc[8]["EventType"] = 202
	tNewHandInHand_Stc[8]["DataType"] = 53
	tNewHandInHand_Stc[8]["TimeType"] = 4
	-- 每次帮派争霸赛
	tNewHandInHand_Stc[9] = {}
	tNewHandInHand_Stc[9]["EventType"] = 202
	tNewHandInHand_Stc[9]["DataType"] = 54
	-- 每次战旗争霸赛
	tNewHandInHand_Stc[10] = {}
	tNewHandInHand_Stc[10]["EventType"] = 202
	tNewHandInHand_Stc[10]["DataType"] = 55
	-- 上交活跃币数
	tNewHandInHand_Stc[11] = {}
	tNewHandInHand_Stc[11]["EventType"] = 202
	tNewHandInHand_Stc[11]["DataType"] = 56
	
local tNewHandInHand_Mete = {}
	-- ===一转获得活跃币
	-- ===索引: tNewHandInHand_Mete[1]
	-- ===Logid: 12001569
	tNewHandInHand_Mete[1] = {}
	tNewHandInHand_Mete[1]["LogId"] = 12001569
	tNewHandInHand_Mete[1]["RewardItem"] = {}
	tNewHandInHand_Mete[1]["RewardItem"][1] = {}
	tNewHandInHand_Mete[1]["RewardItem"][1]["Id"] = 3313516 -- 活跃币[3313516][属性:11][叠加:0][金币:0], 【表格】活跃币
	tNewHandInHand_Mete[1]["RewardItem"][1]["Attr"] = "0 5" -- 活跃币*5
	tNewHandInHand_Mete[1]["RewardEffect"] = {}
	tNewHandInHand_Mete[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewHandInHand_Mete[1]["RewardEffect"]["Effect"] = "angelwing"


	tNewHandInHand_Mete[2] = {}
	-- ===二转获得活跃币
	-- ===索引: tNewHandInHand_Mete[2]
	-- ===Logid: 12001569
	tNewHandInHand_Mete[2]["LogId"] = 12001569
	tNewHandInHand_Mete[2]["RewardItem"] = {}
	tNewHandInHand_Mete[2]["RewardItem"][1] = {}
	tNewHandInHand_Mete[2]["RewardItem"][1]["Id"] = 3313516 -- 活跃币[3313516][属性:11][叠加:0][金币:0], 【表格】活跃币
	tNewHandInHand_Mete[2]["RewardItem"][1]["Attr"] = "0 10" -- 活跃币*10
	tNewHandInHand_Mete[2]["RewardEffect"] = {}
	tNewHandInHand_Mete[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewHandInHand_Mete[2]["RewardEffect"]["Effect"] = "angelwing"


local tNewHandInHand_Reward = {}
	-- ===获得一个活跃币
	-- ===索引: tNewHandInHand_Reward[1]
	-- ===Logid: 12001569
	tNewHandInHand_Reward[1] = {}
	tNewHandInHand_Reward[1]["LogId"] = 12001569
	tNewHandInHand_Reward[1]["RewardItem"] = {}
	tNewHandInHand_Reward[1]["RewardItem"][1] = {}
	tNewHandInHand_Reward[1]["RewardItem"][1]["Id"] = 3313516 -- 活跃币[3313516][属性:11][叠加:0][金币:0], 【表格】活跃币
	tNewHandInHand_Reward[1]["RewardItem"][1]["Attr"] = "0 1" -- 活跃币*1
	tNewHandInHand_Reward[1]["RewardEffect"] = {}
	tNewHandInHand_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewHandInHand_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


	tNewHandInHand_Reward[2] = {}
	-- ===获得两个活跃币
	-- ===索引: tNewHandInHand_Reward[2]
	-- ===Logid: 12001569
	tNewHandInHand_Reward[2]["LogId"] = 12001569
	tNewHandInHand_Reward[2]["RewardItem"] = {}
	tNewHandInHand_Reward[2]["RewardItem"][1] = {}
	tNewHandInHand_Reward[2]["RewardItem"][1]["Id"] = 3313516 -- 活跃币[3313516][属性:11][叠加:0][金币:0], 【表格】活跃币
	tNewHandInHand_Reward[2]["RewardItem"][1]["Attr"] = "0 2" -- 活跃币*2
	tNewHandInHand_Reward[2]["RewardEffect"] = {}
	tNewHandInHand_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewHandInHand_Reward[2]["RewardEffect"]["Effect"] = "angelwing"

	tNewHandInHand_Reward[5] = {}
	-- ===获得五个活跃币
	-- ===索引: tNewHandInHand_Reward[5]
	-- ===Logid: 12001569
	tNewHandInHand_Reward[5]["LogId"] = 12001569
	tNewHandInHand_Reward[5]["RewardItem"] = {}
	tNewHandInHand_Reward[5]["RewardItem"][1] = {}
	tNewHandInHand_Reward[5]["RewardItem"][1]["Id"] = 3313516 -- 活跃币[3313516][属性:11][叠加:0][金币:0], 【表格】活跃币
	tNewHandInHand_Reward[5]["RewardItem"][1]["Attr"] = "0 5" -- 活跃币*2
	tNewHandInHand_Reward[5]["RewardEffect"] = {}
	tNewHandInHand_Reward[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewHandInHand_Reward[5]["RewardEffect"]["Effect"] = "angelwing"
----------------------------------逻辑部分---------------------------------------------
-- 上线领取活跃币
function NewHandInHand_Login()
	if not Sys_ChkFullTime(tNewHandInHand_ActivityTime["ActivityTime"]) then
		return
	end
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nUserId = Get_UserId()
	local nMete = Get_UserMetempsychosis(nUserId)
	if NewHandInHand_GetStcValue(1) == 0 and nMete >= 1 then
		if RewardTemplate_UpperLimit(tNewHandInHand_Mete[1]) then
			NewHandInHand_SetStatistic(1,1)
			RewardTemplate_UseItemAndMsg(tNewHandInHand_Mete[1])
		else
			User_TalkChannel2005(tNewHandInHand_Text["LoginNoSpace"])
		end
	end
	if NewHandInHand_GetStcValue(2) == 0 and nMete >= 2 then
		if RewardTemplate_UpperLimit(tNewHandInHand_Mete[2]) then
			NewHandInHand_SetStatistic(2,1)
			RewardTemplate_UseItemAndMsg(tNewHandInHand_Mete[2])
		else
			User_TalkChannel2005(tNewHandInHand_Text["LoginNoSpace"])
		end
	end
end

-- 获得掩码
function NewHandInHand_GetStcValue(nIndex,nUserId)
	if nUserId == nil then
		nUserId = 0
	end
	local nEventType = tNewHandInHand_Stc[nIndex]["EventType"]
	local nDataType = tNewHandInHand_Stc[nIndex]["DataType"]
	return Get_UserStatisticValue(nEventType,nDataType,nUserId)
end

-- 掩码隔天/周重置
function NewHandInHand_StcReset(nIndex,nTimeType,nUserId)
	if nUserId == nil then
		nUserId = 0
	end
	local nEventType = tNewHandInHand_Stc[nIndex]["EventType"]
	local nDataType = tNewHandInHand_Stc[nIndex]["DataType"]
	if nTimeType == nil then
		nTimeType = 4
	end
	local nDelay = 1
	if Task_ChkStatistic(nEventType,nDataType,nUserId) then
		if not Task_StcInterval(nEventType,nDataType,nDelay,nTimeType,nUserId) then
			return
		end
	end
	
	--置零，打时间戳
	Task_SetStatistic(nEventType,nDataType,0,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
end

-- 置掩码
function NewHandInHand_SetStatistic(nIndex,nData,nUserId)
	if nUserId == nil then
		nUserId = 0
	end
	local nEventType = tNewHandInHand_Stc[nIndex]["EventType"]
	local nDataType = tNewHandInHand_Stc[nIndex]["DataType"]
	Task_SetStatistic(nEventType,nDataType,nData,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
end

-- 奖励背包不足发邮件
function NewHandInHand_GetReward(nItemNum,nIndex,nUserId)
	if nUserId == nil then
		nUserId = 0
	end
	if not Sys_ChkFullTime(tNewHandInHand_ActivityTime["ActivityTime"]) then
		return
	end
	-- 不上激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 隔天重置掩码
	if Task_ChkStatistic(tNewHandInHand_Stc[nIndex]["EventType"],tNewHandInHand_Stc[nIndex]["DataType"],nUserId)then
		local nTimeType = tNewHandInHand_Stc[nIndex]["TimeType"]
		NewHandInHand_StcReset(nIndex,nTimeType,nUserId)
	end
	-- 已领取过
	if NewHandInHand_GetStcValue(nIndex,nUserId) > 0 then
		return
	end
	-- 置掩码已领取
	NewHandInHand_SetStatistic(nIndex,1,nUserId)
	-- 判断背包空间 足够直接领奖 不足发邮件
	if RewardTemplate_UpperLimit(tNewHandInHand_Reward[nItemNum],nUserId) then
		RewardTemplate_UseItemAndMsg(tNewHandInHand_Reward[nItemNum],nUserId)
	else
		local nActionId = tNewHandInHand_Action[nItemNum]
		local sSender = tNewHandInHand_Text["Sender"]
		local sTitle = tNewHandInHand_Text["Title"]
		local sContent = string.format(tNewHandInHand_Text["Content"],nItemNum)
		Sys_SendMail(nUserId,0,0,nActionId,0,30,sSender,sTitle,sContent)
	end
end

-- 上交活跃币
function NewHandInHand_HandinCoin()
	local nItemId = nNewHandInHand_Coin
	--获取背包物品数量
	local nNum = Get_CountItemType(nItemId,0)
	if nNum == 0 then
		Sys_Msgbox(tNewHandInHand_Text["NoItem"])
		return
	end
	if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
		local  nOldCoinNum = NewHandInHand_GetStcValue(11)
		local nNewCoinNum = nNum+nOldCoinNum
		NewHandInHand_SetStatistic(11,nNewCoinNum)
		local sLog = string.format(tNewHandInHand_Log["HandIn"],nNum)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(string.format(tNewHandInHand_Text["HandIn"],nNum))
	end
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[6145] = 21
tNpcGossip[24811]= tNpcGossip[24811] or DefaultNpc:new{}
tNpcGossip[24811]["OptionHidden"] = 1
tNpcGossip[24811]["DialogueText"] = tNewHandInHand_Text[24811]
tNpcGossip[24811]["Text1-1"] = {111,112,113}
tNpcGossip[24811]["tOption1-1"] = {111,112,113,114}
tNpcGossip[24811]["OptionPoint111"] = "2-1"
tNpcGossip[24811]["OptionFunc112"] = "NewHandInHand_HandinCoin"
tNpcGossip[24811]["OptionFunc113"] = "User_SendWebPage</S>".. sNewHandInHand_Web
tNpcGossip[24811]["Text2-1"] = {121,126,122,123,124,125,126}
tNpcGossip[24811]["tOption2-1"] = {121}
---------------------------------物品部分---------------------------------------------
tItem[3313516] = tItem[3313516] or {}
tItem[3313516]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(nNewHandInHand_Npc)
end

--上线触发
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,NewHandInHand_Login)