------------------------------------------------------------------------------------
--Name：       181116[英文征服][活动脚本]制作藏宝阁发奖礼包和action
--Creator:     吴燕柚
--Created:     2018/11/16
------------------------------------------------------------------------------------
--任务需求：
--制作相关物品的礼包和发奖action, 玩家在线下页面购买物品用。

--命名 CangBaoGePack_
--stc(186, 33) 记录玩家开启签到包次数和开启时间
--logid 12001221

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tCangBaoGePack_Stc = {}
	tCangBaoGePack_Stc["SignPack"] = {}
	tCangBaoGePack_Stc["SignPack"]["Event"] = 186
	tCangBaoGePack_Stc["SignPack"]["Data"] = 33

local tCangBaoGePack_Log = {}
	tCangBaoGePack_Log["Random"] = "0,0,%d,1,12001221,0,0"

local tCangBaoGePack_Reward = {}

--炼气随机包
	tCangBaoGePack_Reward[3311639] = {}
	tCangBaoGePack_Reward[3311639][1] = {}
	tCangBaoGePack_Reward[3311639][1]["Space"] = 1
	tCangBaoGePack_Reward[3311639][1]["ItemChanceSum"] = 10000
	-- 10000气力值
	tCangBaoGePack_Reward[3311639][1][1] = {}
	tCangBaoGePack_Reward[3311639][1][1]["RandomItemChanceType"] = 2
	tCangBaoGePack_Reward[3311639][1][1]["ItemChance"] = 2000
	tCangBaoGePack_Reward[3311639][1][1]["RewardItem"] = {}
	tCangBaoGePack_Reward[3311639][1][1]["RewardItem"][1] = {}
	tCangBaoGePack_Reward[3311639][1][1]["RewardItem"][1]["Id"] = 3001845
	tCangBaoGePack_Reward[3311639][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tCangBaoGePack_Reward[3311639][1][1]["Log"] = "0,0,3311639,1,12001221,1,3001845,1"
	tCangBaoGePack_Reward[3311639][1][1]["nRewardTextIndex"] = 1
	-- 15000气力值
	tCangBaoGePack_Reward[3311639][1][2] = {}
	tCangBaoGePack_Reward[3311639][1][2]["RandomItemChanceType"] = 2
	tCangBaoGePack_Reward[3311639][1][2]["ItemChance"] = 4300
	tCangBaoGePack_Reward[3311639][1][2]["RewardItem"] = {}
	tCangBaoGePack_Reward[3311639][1][2]["RewardItem"][1] = {}
	tCangBaoGePack_Reward[3311639][1][2]["RewardItem"][1]["Id"] = 3306228
	tCangBaoGePack_Reward[3311639][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tCangBaoGePack_Reward[3311639][1][2]["Log"] = "0,0,3311639,1,12001221,1,3306228,1"
	tCangBaoGePack_Reward[3311639][1][2]["nRewardTextIndex"] = 2
	-- 20000气力值
	tCangBaoGePack_Reward[3311639][1][3] = {}
	tCangBaoGePack_Reward[3311639][1][3]["RandomItemChanceType"] = 2
	tCangBaoGePack_Reward[3311639][1][3]["ItemChance"] = 3200
	tCangBaoGePack_Reward[3311639][1][3]["RewardItem"] = {}
	tCangBaoGePack_Reward[3311639][1][3]["RewardItem"][1] = {}
	tCangBaoGePack_Reward[3311639][1][3]["RewardItem"][1]["Id"] = 3300137
	tCangBaoGePack_Reward[3311639][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tCangBaoGePack_Reward[3311639][1][3]["Log"] = "0,0,3311639,1,12001221,1,3300137,1"
	tCangBaoGePack_Reward[3311639][1][3]["nRewardTextIndex"] = 3
	-- ChiBooster
	tCangBaoGePack_Reward[3311639][1][4] = {}
	tCangBaoGePack_Reward[3311639][1][4]["RandomItemChanceType"] = 2
	tCangBaoGePack_Reward[3311639][1][4]["ItemChance"] = 500
	tCangBaoGePack_Reward[3311639][1][4]["RewardItem"] = {}
	tCangBaoGePack_Reward[3311639][1][4]["RewardItem"][1] = {}
	tCangBaoGePack_Reward[3311639][1][4]["RewardItem"][1]["Id"] = 711903
	tCangBaoGePack_Reward[3311639][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tCangBaoGePack_Reward[3311639][1][4]["Log"] = "0,0,3311639,1,12001221,1,711903,1"
	tCangBaoGePack_Reward[3311639][1][4]["nRewardTextIndex"] = 4

--练功随机包
	tCangBaoGePack_Reward[3311640] = {}
	tCangBaoGePack_Reward[3311640][1] = {}
	tCangBaoGePack_Reward[3311640][1]["Space"] = 1
	tCangBaoGePack_Reward[3311640][1]["ItemChanceSum"] = 10000
	-- 秘制修炼丹
	tCangBaoGePack_Reward[3311640][1][1] = {}
	tCangBaoGePack_Reward[3311640][1][1]["RandomItemChanceType"] = 2
	tCangBaoGePack_Reward[3311640][1][1]["ItemChance"] = 2000
	tCangBaoGePack_Reward[3311640][1][1]["RewardItem"] = {}
	tCangBaoGePack_Reward[3311640][1][1]["RewardItem"][1] = {}
	tCangBaoGePack_Reward[3311640][1][1]["RewardItem"][1]["Id"] = 3002926
	tCangBaoGePack_Reward[3311640][1][1]["RewardItem"][1]["Attr"] = "0 100"
	tCangBaoGePack_Reward[3311640][1][1]["Log"] = "0,0,3311640,1,12001221,1,3002926,100"
	tCangBaoGePack_Reward[3311640][1][1]["nRewardTextIndex"] = 1
	-- 秘制修炼丹
	tCangBaoGePack_Reward[3311640][1][2] = {}
	tCangBaoGePack_Reward[3311640][1][2]["RandomItemChanceType"] = 2
	tCangBaoGePack_Reward[3311640][1][2]["ItemChance"] = 4800
	tCangBaoGePack_Reward[3311640][1][2]["RewardItem"] = {}
	tCangBaoGePack_Reward[3311640][1][2]["RewardItem"][1] = {}
	tCangBaoGePack_Reward[3311640][1][2]["RewardItem"][1]["Id"] = 3002926
	tCangBaoGePack_Reward[3311640][1][2]["RewardItem"][1]["Attr"] = "0 150"
	tCangBaoGePack_Reward[3311640][1][2]["Log"] = "0,0,3311640,1,12001221,1,3002926,150"
	tCangBaoGePack_Reward[3311640][1][2]["nRewardTextIndex"] = 2
	-- 秘制修炼丹
	tCangBaoGePack_Reward[3311640][1][3] = {}
	tCangBaoGePack_Reward[3311640][1][3]["RandomItemChanceType"] = 2
	tCangBaoGePack_Reward[3311640][1][3]["ItemChance"] = 3200
	tCangBaoGePack_Reward[3311640][1][3]["RewardItem"] = {}
	tCangBaoGePack_Reward[3311640][1][3]["RewardItem"][1] = {}
	tCangBaoGePack_Reward[3311640][1][3]["RewardItem"][1]["Id"] = 3002926
	tCangBaoGePack_Reward[3311640][1][3]["RewardItem"][1]["Attr"] = "0 200"
	tCangBaoGePack_Reward[3311640][1][3]["Log"] = "0,0,3311640,1,12001221,1,3002926,200"
	tCangBaoGePack_Reward[3311640][1][3]["nRewardTextIndex"] = 3

--新年特惠包
	tCangBaoGePack_Reward[3311643] = {}
	tCangBaoGePack_Reward[3311643][1] = {}
	tCangBaoGePack_Reward[3311643][1]["RewardItem"] = {}
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][1] = {}
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][1]["Id"] = 200626--giantfish（ripple）
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][2] = {}
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][2]["Id"] = 3004580--1000气力值
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][3] = {}
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][3]["Id"] = 730004--+4赤炼石
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][4] = {}
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][4]["Id"] = 3008994--龙血晶石
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][4]["Attr"] = "0 10 3"
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][5] = {}
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][5]["Id"] = 3009001--明亮星陨石
	tCangBaoGePack_Reward[3311643][1]["RewardItem"][5]["Attr"] = "0 5 0 2880 1"
	tCangBaoGePack_Reward[3311643][1]["LogId"] = 12001221
	
-- 2-9
	tCangBaoGePack_Reward[3311643][2] = {}
	tCangBaoGePack_Reward[3311643][2]["RewardItem"] = {}
	tCangBaoGePack_Reward[3311643][2]["RewardItem"][1] = {}
	tCangBaoGePack_Reward[3311643][2]["RewardItem"][1]["Id"] = 3004580--1000气力值
	tCangBaoGePack_Reward[3311643][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tCangBaoGePack_Reward[3311643][2]["RewardItem"][2] = {}
	tCangBaoGePack_Reward[3311643][2]["RewardItem"][2]["Id"] = 730004--+4赤炼石
	tCangBaoGePack_Reward[3311643][2]["RewardItem"][2]["Attr"] = "0 1 3"
	tCangBaoGePack_Reward[3311643][2]["RewardItem"][3] = {}
	tCangBaoGePack_Reward[3311643][2]["RewardItem"][3]["Id"] = 3008994--龙血晶石
	tCangBaoGePack_Reward[3311643][2]["RewardItem"][3]["Attr"] = "0 10 3"
	tCangBaoGePack_Reward[3311643][2]["RewardItem"][4] = {}
	tCangBaoGePack_Reward[3311643][2]["RewardItem"][4]["Id"] = 3009001--明亮星陨石
	tCangBaoGePack_Reward[3311643][2]["RewardItem"][4]["Attr"] = "0 5 0 2880 1"
	tCangBaoGePack_Reward[3311643][2]["LogId"] = 12001221

-- 10
	tCangBaoGePack_Reward[3311643][3] = {}
	tCangBaoGePack_Reward[3311643][3]["DeleteItem"] = {}
	tCangBaoGePack_Reward[3311643][3]["DeleteItem"][1] = {}
	tCangBaoGePack_Reward[3311643][3]["DeleteItem"][1]["Id"] = 3311643
	tCangBaoGePack_Reward[3311643][3]["RewardItem"] = {}
	tCangBaoGePack_Reward[3311643][3]["RewardItem"][1] = {}
	tCangBaoGePack_Reward[3311643][3]["RewardItem"][1]["Id"] = 3004580--1000气力值
	tCangBaoGePack_Reward[3311643][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tCangBaoGePack_Reward[3311643][3]["RewardItem"][2] = {}
	tCangBaoGePack_Reward[3311643][3]["RewardItem"][2]["Id"] = 730004--+4赤炼石
	tCangBaoGePack_Reward[3311643][3]["RewardItem"][2]["Attr"] = "0 1 3"
	tCangBaoGePack_Reward[3311643][3]["RewardItem"][3] = {}
	tCangBaoGePack_Reward[3311643][3]["RewardItem"][3]["Id"] = 3008994--龙血晶石
	tCangBaoGePack_Reward[3311643][3]["RewardItem"][3]["Attr"] = "0 10 3"
	tCangBaoGePack_Reward[3311643][3]["RewardItem"][4] = {}
	tCangBaoGePack_Reward[3311643][3]["RewardItem"][4]["Id"] = 3009001--明亮星陨石
	tCangBaoGePack_Reward[3311643][3]["RewardItem"][4]["Attr"] = "0 5 0 2880 1"
	tCangBaoGePack_Reward[3311643][3]["LogId"] = 12001221

-- 11
	tCangBaoGePack_Reward[3311643][4] = {}
	tCangBaoGePack_Reward[3311643][4]["DeleteItem"] = {}
	tCangBaoGePack_Reward[3311643][4]["DeleteItem"][1] = {}
	tCangBaoGePack_Reward[3311643][4]["DeleteItem"][1]["Id"] = 3311643
	tCangBaoGePack_Reward[3311643][4]["LogId"] = 12001221
	
-- ButterflyRose时装包
	tCangBaoGePack_Reward[3311641] = {}
	tCangBaoGePack_Reward[3311641]["DeleteItem"] = {}
	tCangBaoGePack_Reward[3311641]["DeleteItem"][1] = {}
	tCangBaoGePack_Reward[3311641]["DeleteItem"][1]["Id"] = 3311641
	tCangBaoGePack_Reward[3311641]["RewardItem"] = {}
	tCangBaoGePack_Reward[3311641]["RewardItem"][1] = {}
	tCangBaoGePack_Reward[3311641]["RewardItem"][1]["Id"] = 193625
	tCangBaoGePack_Reward[3311641]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

-- BrightPurpleRomance时装包
	tCangBaoGePack_Reward[3311642] = {}
	tCangBaoGePack_Reward[3311642]["DeleteItem"] = {}
	tCangBaoGePack_Reward[3311642]["DeleteItem"][1] = {}
	tCangBaoGePack_Reward[3311642]["DeleteItem"][1]["Id"] = 3311642
	tCangBaoGePack_Reward[3311642]["RewardItem"] = {}
	tCangBaoGePack_Reward[3311642]["RewardItem"][1] = {}
	tCangBaoGePack_Reward[3311642]["RewardItem"][1]["Id"] = 194875
	tCangBaoGePack_Reward[3311642]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"



----------------------------------逻辑部分---------------------------------------------

function CangBaoGePack_WinterSignPack(nItemId)
	local nEvent = tCangBaoGePack_Stc["SignPack"]["Event"]
	local nData = tCangBaoGePack_Stc["SignPack"]["Data"]
	local nUserId = Get_UserId()

	local nTimes = Get_UserStatisticValue(nEvent, nData, nUserId) + 1
	local nState = 0
	
	if nTimes == 1 then
		nState = 1
	elseif nTimes > 1 and nTimes < 10 then
		nState = 2
	elseif nTimes == 10 then
		nState = 3
	elseif nTimes > 10 then
		nState = 4
	end
	if nState ~= 0 then
		if not RewardTemplate_UpperLimit(tCangBaoGePack_Reward[nItemId][nState]) then
			return
		end
		
		Task_AddStatistic(nEvent, nData, 1, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
		
		RewardTemplate_UseItemAndMsg(tCangBaoGePack_Reward[nItemId][nState])
		
		if nState == 4 then
			User_TalkChannel2005(tCangBaoGePack_Text["SignPack"]["Final"], nUserId)
		end
		return
	end
end

---------------------------------物品部分---------------------------------------------

-- 炼气随机包
tItem[3311639] = tItem[3311639] or {}
tItem[3311639]["Function"] = function(nItemId, sItemName)
	local nUserId = Get_UserId()
	
	if RewardTemplate_UpperLimit(tCangBaoGePack_Reward[nItemId]) then
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			
			RewardTemplate_NewRandom(tCangBaoGePack_Reward[nItemId], 1, nUserId)
		end
	end
	
end

-- 练功随机包
tItem[3311640] = tItem[3311639]

-- ButterflyRose时装包
tItem[3311641] = tItem[3311641] or {}
tItem[3311641]["Function"] = function(nItemId, sItemName)
	local nUserId = Get_UserId()

	RewardTemplate_UseItemAndMsg(tCangBaoGePack_Reward[nItemId], nUserId)

end
-- BrightPurpleRomance时装包
tItem[3311642] = tItem[3311641]

-- 暖冬特惠签到礼包
tItemFace[3311643] = 1459
tItem[3311643] = tItem[3311643] or {}
tItem[3311643]["DialogueText"] = tCangBaoGePack_Text[3311643]
tItem[3311643]["Text1-1"] = {111, 112}
tItem[3311643]["tOption1-1"] = {111, 112}
tItem[3311643]["OptionFunc111"] = "CangBaoGePack_WinterSignPack</N>3311643"
tItem[3311643]["ChkFunc1-1"] = function()
	local nEvent = tCangBaoGePack_Stc["SignPack"]["Event"]
	local nData = tCangBaoGePack_Stc["SignPack"]["Data"]
	local nUserId = Get_UserId()
	
	local nTimes = Get_UserStatisticValue(nEvent, nData, nUserId) + 1
	if nTimes > 10 then
		RewardTemplate_UseItem(tCangBaoGePack_Reward[3311643][4])
		return false
	end
	tItem[3311643]["Text111"] = string.format(tCangBaoGePack_Text[3311643]["Text111"], nTimes)
	if not Task_StcInterval(nEvent, nData, 1, 4) then
		tItem[3311643]["Text112"] = tCangBaoGePack_Text[3311643]["Text113"]
		tItem[3311643]["tOption1-1"] = {112}
		return true
	else
		tItem[3311643]["Text112"] = tCangBaoGePack_Text[3311643]["Text112"]
		tItem[3311643]["tOption1-1"] = {111, 112}
	end
	return true
end




