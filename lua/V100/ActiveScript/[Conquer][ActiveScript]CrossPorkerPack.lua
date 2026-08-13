------------------------------------------------------------------------------------
--Name：            191223[英文征服][活动脚本]德州新地图打包功能制作
--Creator:      江宇君
--Created:     2019-12-23
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名前缀 CrossPorkerPack_


----------------------------------表配置部分--------------------------------------------
local tCrossPorkerPack_NeedMoney = {}
	tCrossPorkerPack_NeedMoney[1] = 50100000
	tCrossPorkerPack_NeedMoney[2] = 100100000

local tCrossPorkerPack_MoneyLimit = {}
	tCrossPorkerPack_MoneyLimit["UpperLimit"] = {}
	tCrossPorkerPack_MoneyLimit["UpperLimit"][3005836] = 9849999999
	tCrossPorkerPack_MoneyLimit["UpperLimit"][3005837] = 9799999999

	tCrossPorkerPack_MoneyLimit["AddMoney"] = {}
	tCrossPorkerPack_MoneyLimit["AddMoney"][3005836] = 50000000
	tCrossPorkerPack_MoneyLimit["AddMoney"][3005837] = 100000000

-- 物品数据
local tCrossPorkerPack_Item = {}
	tCrossPorkerPack_Item["ItemId"] = {}
	tCrossPorkerPack_Item["ItemId"][1] = {3005836,1}
	tCrossPorkerPack_Item["ItemId"][2] = {3005837,1}

	tCrossPorkerPack_Item["ItemIndex"] = {}
	tCrossPorkerPack_Item["ItemIndex"][3005836] = 1
	tCrossPorkerPack_Item["ItemIndex"][3005837] = 2

	-- 跨服获得物品的功能编号
	tCrossPorkerPack_Item["Serial"] = 10003
	
local tCrossPorkerPack_Log = {}
	tCrossPorkerPack_Log["TaskLog"] = {}
	tCrossPorkerPack_Log["TaskLog"][1] = "0,0,1,%d,18000008,2,3005836,1" -- 金币数量
	tCrossPorkerPack_Log["TaskLog"][2] = "0,0,1,%d,18000008,2,3005837,1" -- 金币数量

	tCrossPorkerPack_Log["AddMoneyTaskLog"] = "0,0,%d,1,18000008,2,1,%d" -- 物品Id 获得金币数量
	
	tCrossPorkerPack_Log["MoneyRecord"] = {}
	tCrossPorkerPack_Log["MoneyRecord"]["LogFile"] = "gmlog/money_record" 
	tCrossPorkerPack_Log["MoneyRecord"][1] = "%d	%s	%d	0100-50100000	" --  %account_id%user_name%user_id
	tCrossPorkerPack_Log["MoneyRecord"][2] = "%d	%s	%d	0101-100100000	" --  %account_id%user_name%user_id

	tCrossPorkerPack_Log["AddMoneyRecord"] = {}
	tCrossPorkerPack_Log["AddMoneyRecord"][50000000] = "%d	%s	%d	0100	50000000	" -- %account_id%user_name%user_id
	tCrossPorkerPack_Log["AddMoneyRecord"][100000000] = "%d	%s	%d	0101	100000000	" -- %account_id%user_name%user_id

local tCrossPorkerPack_RewardMoney = {}
	-- ===礼包打开
	-- ===索引: tCrossPorkerPack_RewardMoney[3005836]
	-- ===删除:3005836,1
	tCrossPorkerPack_RewardMoney[3005836] = {}
	tCrossPorkerPack_RewardMoney[3005836]["LogId"] = 12001806
	tCrossPorkerPack_RewardMoney[3005836]["DeleteItem"] = {}
	tCrossPorkerPack_RewardMoney[3005836]["DeleteItem"][1] = {}
	tCrossPorkerPack_RewardMoney[3005836]["DeleteItem"][1]["Id"] = 3005836 -- 【库】MediumSilverBag[属性:512]
	tCrossPorkerPack_RewardMoney[3005836]["RewardMoney"] = {}
	tCrossPorkerPack_RewardMoney[3005836]["RewardMoney"]["Value"] = 50000000 -- 金币, 【需求】50000000金币
	tCrossPorkerPack_RewardMoney[3005836]["RewardEffect"] = {}
	tCrossPorkerPack_RewardMoney[3005836]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCrossPorkerPack_RewardMoney[3005836]["RewardEffect"]["Effect"] = "angelwing"
	tCrossPorkerPack_RewardMoney[3005836]["Gold"] = true


	tCrossPorkerPack_RewardMoney[3005837] = {}
	-- ===礼包打开
	-- ===索引: tCrossPorkerPack_RewardMoney[3005837]
	-- ===删除:3005837,1
	tCrossPorkerPack_RewardMoney[3005837]["LogId"] = 12001806
	tCrossPorkerPack_RewardMoney[3005837]["DeleteItem"] = {}
	tCrossPorkerPack_RewardMoney[3005837]["DeleteItem"][1] = {}
	tCrossPorkerPack_RewardMoney[3005837]["DeleteItem"][1]["Id"] = 3005837 -- 【库】BigSilverBag[属性:512]
	tCrossPorkerPack_RewardMoney[3005837]["RewardMoney"] = {}
	tCrossPorkerPack_RewardMoney[3005837]["RewardMoney"]["Value"] = 100000000 -- 金币, 【需求】100000000金币
	tCrossPorkerPack_RewardMoney[3005837]["RewardEffect"] = {}
	tCrossPorkerPack_RewardMoney[3005837]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCrossPorkerPack_RewardMoney[3005837]["RewardEffect"]["Effect"] = "angelwing"
	tCrossPorkerPack_RewardMoney[3005837]["Gold"] = true

----------------------------------逻辑部分---------------------------------------------
-- 判断是否在比赛中
function CrossPorkerPack_DuringTournament(nCrossPorkerPack_NpcId)
	local nCrossPorkerPack_UserId = Get_UserId()
	
	-- 玩家在比赛 不允许打包
	if User_IsUserInGame(nCrossPorkerPack_UserId) then
		Sys_MsgBox(tCrossPorkerPack_Text["Sys"]["DuringTournament"])
		return
	end
	LinkNpcGossipFunc_New(nCrossPorkerPack_NpcId,"2-1")
	return
end

-- 打包 只在跨服进行打包的npc
function CrossPorkerPack_PackMoney(nCrossPorkerPack_NpcId, nCrossPorkerPack_Index)
	local nCrossPorkerPack_UserId = Get_UserId()
	-- 获取玩家本服UserId
	local nCrossPorkerPack_BenFuUserId = Get_UserBenFuId(nCrossPorkerPack_UserId)
	local nCrossPorkerPack_ServerId = Get_UserServerId(nCrossPorkerPack_UserId)

	-- 如果在全球服 不允许打包
	if Sys_IsWorldGlobalServer() then
		return
	end

	-- 如果不在跨服
	if not User_IsCrossByGSID(nCrossPorkerPack_ServerId, nCrossPorkerPack_BenFuUserId) then
		return
	end

	-- 比赛中 不允许打包
	if User_IsUserInGame(nCrossPorkerPack_UserId) then
		Sys_MsgBox(tCrossPorkerPack_Text["Sys"]["DuringTournament"])
		return
	end
	
	-- 打包需要的金币数量
	local nCrossPorkerPack_NeedMoney = tCrossPorkerPack_NeedMoney[nCrossPorkerPack_Index]
	-- User_TalkChannel2005("nCrossPorkerPack_Index = "..nCrossPorkerPack_Index)
	-- User_TalkChannel2005("nCrossPorkerPack_NeedMoney = "..nCrossPorkerPack_NeedMoney)
	-- User_TalkChannel2005("nCrossPorkerPack_UserId = "..nCrossPorkerPack_UserId)
	-- User_TalkChannel2005("nCrossPorkerPack_ServerId = "..nCrossPorkerPack_ServerId)

	-- 背包空间判断
	if not User_CheckLeftSpace(tCrossPorkerPack_Item["ItemId"][nCrossPorkerPack_Index][2], nCrossPorkerPack_UserId) then
		LinkNpcGossipFunc_New(nCrossPorkerPack_NpcId,"4-1")
		return
	end
	-- User_TalkChannel2005("nCrossPorkerPack_BenFuUserId = "..nCrossPorkerPack_BenFuUserId)
	-- 扣除金币 在回调函数 CrossPorkerPack_CrossDelMoney 判断是否成功 需要用本服UserId
	-- User_SpendAsynOSMoney(nCrossPorkerPack_ServerId, nCrossPorkerPack_NeedMoney, tCrossPorkerPack_Item["Serial"], nCrossPorkerPack_Index, nCrossPorkerPack_BenFuUserId)
	if not User_SpendAsynOSMoney(nCrossPorkerPack_ServerId, nCrossPorkerPack_NeedMoney, tCrossPorkerPack_Item["Serial"], nCrossPorkerPack_Index, nCrossPorkerPack_BenFuUserId) then
		local sCrossPorkerPack_TextFlag = "3-"..nCrossPorkerPack_Index
		LinkNpcGossipFunc_New(nCrossPorkerPack_NpcId,tostring(sCrossPorkerPack_TextFlag))
	end
end

-- 跨服扣除金币的回调函数
function CrossPorkerPack_CrossDelMoney(nCrossPorkerPack_ServerId,nCrossPorkerPack_BenFuUserId,nCrossPorkerPack_MoneyType,nCrossPorkerPack_Amount,nCrossPorkerPack_Serial,nCrossPorkerPack_Data)
	-- Sys_SaveActionTaskLog(string.format(sCrossPorkerPack_TaskLog,nCrossPorkerPack_NeedMoney))
	local nCrossPorkerPack_OSUserId = Get_OSIDByGSUser(nCrossPorkerPack_ServerId, nCrossPorkerPack_BenFuUserId)
	-- User_TalkChannel2005("nCrossPorkerPack_OSUserIdxxxxxxx = "..nCrossPorkerPack_OSUserId, nCrossPorkerPack_OSUserId)

	-- 功能参数不符合
	if nCrossPorkerPack_Serial ~= tCrossPorkerPack_Item["Serial"] then
		return
	end

	-- 异步获得物品 在回调函数 CrossPorkerPack_CrossAddItem 判断是否成功 需要用本服UserId
	Item_AddAsynOSItem(tCrossPorkerPack_Item["ItemId"][nCrossPorkerPack_Data][1], 0, tCrossPorkerPack_Item["ItemId"][nCrossPorkerPack_Data][2], tCrossPorkerPack_Item["Serial"], 0, nCrossPorkerPack_BenFuUserId, nCrossPorkerPack_ServerId)
end

-- 跨服获得物品的回调函数
function CrossPorkerPack_CrossAddItem(nCrossPorkerPack_ServerId,nCrossPorkerPack_BenFuUserId,nCrossPorkerPack_ItemId,nCrossPorkerPack_Monopoly,nCrossPorkerPack_Num,nCrossPorkerPack_Serial,nCrossPorkerPack_Ret)
	local nCrossPorkerPack_OSUserId = Get_OSIDByGSUser(nCrossPorkerPack_ServerId,nCrossPorkerPack_BenFuUserId)

	-- User_TalkChannel2005("nCrossPorkerPack_OSUserIdxxxxxxx = "..nCrossPorkerPack_OSUserId, nCrossPorkerPack_OSUserId)
	-- 不成功
	if nCrossPorkerPack_Ret ~= 1 then
		return
	end
	
	-- 不是同一个功能参数
	if nCrossPorkerPack_Serial ~= tCrossPorkerPack_Item["Serial"] then
		return
	end
	
	local nCrossPorkerPack_Index = tCrossPorkerPack_Item["ItemIndex"][nCrossPorkerPack_ItemId]
	local sCrossPorkerPack_TaskLog = tCrossPorkerPack_Log["TaskLog"][nCrossPorkerPack_Index]
	local sCrossPorkerPack_LogFile = tCrossPorkerPack_Log["MoneyRecord"]["LogFile"]
	local sCrossPorkerPack_MoneyRecord = tCrossPorkerPack_Log["MoneyRecord"][nCrossPorkerPack_Index]
	
	local nCrossPorkerPack_AccountId = Get_UserAccountId(nCrossPorkerPack_OSUserId)
	-- User_TalkChannel2005("sCrossPorkerPack_TaskLog = "..sCrossPorkerPack_TaskLog, nCrossPorkerPack_OSUserId)
	local sCrossPorkerPack_UserName = Get_UserName(nCrossPorkerPack_OSUserId)
	local nCrossPorkerPack_NeedMoney = tCrossPorkerPack_NeedMoney[nCrossPorkerPack_Index]
	LinkNpcGossipFunc_New(25818,"5-1", nil, nil, nCrossPorkerPack_OSUserId)
	Sys_SaveActionTaskLog(string.format(sCrossPorkerPack_TaskLog,tonumber(nCrossPorkerPack_NeedMoney)), nCrossPorkerPack_OSUserId)
	SaveCustomLog(sCrossPorkerPack_LogFile, string.format(sCrossPorkerPack_MoneyRecord,nCrossPorkerPack_AccountId,sCrossPorkerPack_UserName,nCrossPorkerPack_OSUserId))
end

-- 礼包使用
function CrossPorkerPack_OpenMoneyPack(nCrossPorkerPack_ItemId, nCrossPorkerPack_Index)
	local nCrossPorkerPack_UserId = Get_UserId() -- UserId
	local nCrossPorkerPack_BenFuUserId = Get_UserBenFuId() -- 本服UserId
	local nCrossPorkerPack_ServerId = Get_UserServerId(nCrossPorkerPack_UserId)  -- 服务器Id

	-- 如果在全球服 不允许使用
	if Sys_IsWorldGlobalServer() then
		return
	end

	-- 如果玩家不在跨服
	if not User_IsCrossByGSID(nCrossPorkerPack_ServerId, nCrossPorkerPack_BenFuUserId) then
		-- 判断玩家金币上限
		if not User_CanPutMoney2Bag(tCrossPorkerPack_MoneyLimit["AddMoney"][nCrossPorkerPack_ItemId], nCrossPorkerPack_UserId) then
			Sys_MsgBox(tCrossPorkerPack_Text["Sys"]["TooRich"], nil,nil, nCrossPorkerPack_UserId)
			return
		end
		if RewardTemplate_UseItemAndMsg(tCrossPorkerPack_RewardMoney[nCrossPorkerPack_ItemId],nCrossPorkerPack_BenFuUserId) then
			local nCrossPorkerPack_AccountId = Get_UserAccountId(nCrossPorkerPack_BenFuUserId)
			local sCrossPorkerPack_UserName = Get_UserName(nCrossPorkerPack_BenFuUserId)
			local sCrossPorkerPack_LogFile = tCrossPorkerPack_Log["MoneyRecord"]["LogFile"]
			local nCrossPorkerPack_AddMoney = tCrossPorkerPack_MoneyLimit["AddMoney"][nCrossPorkerPack_ItemId]
			local sCrossPorkerPack_MoneyRecord = tCrossPorkerPack_Log["AddMoneyRecord"][nCrossPorkerPack_AddMoney]
			Sys_MsgBox(tCrossPorkerPack_Text["Sys"][nCrossPorkerPack_ItemId],nil,nil,nCrossPorkerPack_BenFuUserId)
			Sys_SaveActionTaskLog(string.format(tCrossPorkerPack_Log["AddMoneyTaskLog"], nCrossPorkerPack_ItemId, nCrossPorkerPack_AddMoney), nCrossPorkerPack_BenFuUserId)
			SaveCustomLog(sCrossPorkerPack_LogFile, string.format(sCrossPorkerPack_MoneyRecord, nCrossPorkerPack_AccountId,sCrossPorkerPack_UserName,nCrossPorkerPack_BenFuUserId))
		end
		return
	end

	-- 异步删除物品 在回调函数 CrossPorkerPack_CrossDelItem 判断是否成功 需要用本服UserId
	Item_DelAsynOSItem(nCrossPorkerPack_ItemId, 0, tCrossPorkerPack_Item["ItemId"][nCrossPorkerPack_Index][2], tCrossPorkerPack_Item["Serial"], 0, nCrossPorkerPack_BenFuUserId, nCrossPorkerPack_ServerId)
end

-- 在跨服扣除物品的回调函数
function CrossPorkerPack_CrossDelItem(nCrossPorkerPack_ServerId,nCrossPorkerPack_BenFuUserId,nCrossPorkerPack_ItemId,nCrossPorkerPack_Monopoly,nCrossPorkerPack_Num,nCrossPorkerPack_Serial,nCrossPorkerPack_Ret)
	--不成功
	if nCrossPorkerPack_Ret ~= 1 then
		return
	end

	--功能编号不匹配
	if nCrossPorkerPack_Serial ~= tCrossPorkerPack_Item["Serial"] then
		return
	end

	local nCrossPorkerPack_OSUserId = Get_OSIDByGSUser(nCrossPorkerPack_ServerId,nCrossPorkerPack_BenFuUserId) -- 获取跨服Id
	local nCrossPorkerPack_AddMoney = tCrossPorkerPack_MoneyLimit["AddMoney"][nCrossPorkerPack_ItemId]
	-- 获得金币
	if not User_AwardAsynOSMoney(nCrossPorkerPack_ServerId, nCrossPorkerPack_AddMoney, nCrossPorkerPack_BenFuUserId) then
		Sys_MsgBox(tCrossPorkerPack_Text["Sys"]["TooRich"], nil,nil, nCrossPorkerPack_UserId)
		return
	end

	local nCrossPorkerPack_AccountId = Get_UserAccountId(nCrossPorkerPack_OSUserId)
	local sCrossPorkerPack_UserName = Get_UserName(nCrossPorkerPack_OSUserId)
	local sCrossPorkerPack_LogFile = tCrossPorkerPack_Log["MoneyRecord"]["LogFile"]
	local sCrossPorkerPack_MoneyRecord = tCrossPorkerPack_Log["AddMoneyRecord"][nCrossPorkerPack_AddMoney]

	-- 打LOG
	Sys_MsgBox(tCrossPorkerPack_Text["Sys"][nCrossPorkerPack_ItemId],nil,nil,nCrossPorkerPack_OSUserId)
	Sys_SaveActionTaskLog(string.format(tCrossPorkerPack_Log["AddMoneyTaskLog"], nCrossPorkerPack_ItemId, nCrossPorkerPack_AddMoney), nCrossPorkerPack_OSUserId)
	SaveCustomLog(sCrossPorkerPack_LogFile, string.format(sCrossPorkerPack_MoneyRecord, nCrossPorkerPack_AccountId,sCrossPorkerPack_UserName,nCrossPorkerPack_OSUserId))
end
----------------------------------NPC部分---------------------------------------------
-- 25818,'MillionaireLee'
tNpcFace[4002] = 7
tNpcGossip[25818] = tNpcGossip[25818] or DefaultNpc:new{}
tNpcGossip[25818]["OptionHidden"] = 1
tNpcGossip[25818]["DialogueText"] = tCrossPorkerPack_Text[25818]

tNpcGossip[25818]["Text1-1"] = {111,112}
-- tNpcGossip[25818]["ChkFunc1-1"]= function()
-- 	return true
-- end
tNpcGossip[25818]["tOption1-1"] = {111,112}
tNpcGossip[25818]["OptionFunc111"] = "CrossPorkerPack_DuringTournament</N>25818"
-- tNpcGossip[25818]["OptionChkFunc111"] = function ()
-- 	return true
-- end

tNpcGossip[25818]["Text2-1"] = {211,212}
tNpcGossip[25818]["tOption2-1"] = {211,212}
tNpcGossip[25818]["OptionPoint211"] = "2-2"
tNpcGossip[25818]["OptionPoint212"] = "2-3"

-- 打包50,000,000/100,000,000
tNpcGossip[25818]["Text2-2"] = {221}
tNpcGossip[25818]["tOption2-2"] = {221,222}
tNpcGossip[25818]["OptionFunc221"] = "CrossPorkerPack_PackMoney</N>25818</N>1"

tNpcGossip[25818]["Text2-3"] = {231}
tNpcGossip[25818]["tOption2-3"] = {231,232}
tNpcGossip[25818]["OptionFunc231"] = "CrossPorkerPack_PackMoney</N>25818</N>2"

-- 金币不足
tNpcGossip[25818]["Text3-1"] = {311}
tNpcGossip[25818]["tOption3-1"] = {311}

tNpcGossip[25818]["Text3-2"] = {321}
tNpcGossip[25818]["tOption3-2"] = {321}

-- 背包空间不足
tNpcGossip[25818]["Text4-1"] = {411}
tNpcGossip[25818]["tOption4-1"] = {411}

-- 兑换成功
tNpcGossip[25818]["Text5-1"] = {511}
tNpcGossip[25818]["tOption5-1"] = {511}

tNpcGossip[25820] = tNpcGossip[25818] or DefaultNpc:new{}
tNpcGossip[25945] = tNpcGossip[25818] or DefaultNpc:new{}
tNpcGossip[26969] = tNpcGossip[25818] or DefaultNpc:new{}

---------------------------------物品部分---------------------------------------------
-- 3005836 MediumSilverBag
tItem[3005836] = tItem[3005836] or {}
tItem[3005836]["Function"] = function(nCrossPorkerPack_ItemId,sCrossPorkerPack_ItemName)
	CrossPorkerPack_OpenMoneyPack(nCrossPorkerPack_ItemId, 1)
end

-- 3005837 BigSilverBag
tItem[3005837] = tItem[3005837] or {}
tItem[3005837]["Function"] = function(nCrossPorkerPack_ItemId,sCrossPorkerPack_ItemName)
	CrossPorkerPack_OpenMoneyPack(nCrossPorkerPack_ItemId, 2)
end

---------------------------------跨服扣除金币回调函数------------------------------------
table.insert(tProcessLuaUserSpendOSMoney["tFunction"],CrossPorkerPack_CrossDelMoney)

---------------------------------跨服获得物品回调函数------------------------------------
tAddAsynOSItemRet["tFunction"] = tAddAsynOSItemRet["tFunction"] or {}
table.insert(tAddAsynOSItemRet["tFunction"],CrossPorkerPack_CrossAddItem)

---------------------------------跨服删除物品回调函数------------------------------------
tDelAsynOSItemRet["tFunction"] = tDelAsynOSItemRet["tFunction"] or {}
table.insert(tDelAsynOSItemRet["tFunction"],CrossPorkerPack_CrossDelItem)
