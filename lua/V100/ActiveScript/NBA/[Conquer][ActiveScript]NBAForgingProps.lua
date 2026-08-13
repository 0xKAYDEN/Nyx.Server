----------------------------------------------------------------------------------------
--Name:		[简体征服][活动脚本]NBA锻造道具制作
--Creator:		郑鋆
--Created:		2017/05/27
----------------------------------------------------------------------------------------

-- 命名前缀
-- NBAForgingProps_

-- LOGID:	12000733

-- 常量表
local tNBAForgingProps_Data = {}
	tNBAForgingProps_Data["ActivityTime"] = "2017-06-06 00:00 2017-06-19 23:59"
	tNBAForgingProps_Data["Battle"] = 20000--35075
	tNBAForgingProps_Data["Log"] = "0,0,%d,%d,12000733,2,0,0"

-- stc掩码	
local tNBAForgingProps_Stc = {}
	-- 最高战斗力
	tNBAForgingProps_Stc["Battle"] = {}
	tNBAForgingProps_Stc["Battle"]["EventData"] = 158
	tNBAForgingProps_Stc["Battle"]["DataType"] = 32
	
	-- 实时战斗力
	tNBAForgingProps_Stc["NowBattle"] = {}
	tNBAForgingProps_Stc["NowBattle"]["EventData"] = 158
	tNBAForgingProps_Stc["NowBattle"]["DataType"] = 33

local tNBAForgingProps_Reward = {}
	-- 锻造锤礼包
	tNBAForgingProps_Reward[3303462] = {}
	-- tNBAForgingProps_Reward[3303462]["LogId"] = 12000733
	tNBAForgingProps_Reward[3303462]["ItemChanceSum"] = 9000
	tNBAForgingProps_Reward[3303462]["DeleteItem"] = {}
	tNBAForgingProps_Reward[3303462]["DeleteItem"][1] = {}
	tNBAForgingProps_Reward[3303462]["DeleteItem"][1]["Id"] = 3303462
	tNBAForgingProps_Reward[3303462]["DeleteItem"][1]["ItemNum"] = 1
	-- 3303453,'锻造锤（1级）'
	tNBAForgingProps_Reward[3303462][1] = {}
	tNBAForgingProps_Reward[3303462][1]["RandomItemChanceType"] = 2
	tNBAForgingProps_Reward[3303462][1]["ItemChance"] = 1000
	tNBAForgingProps_Reward[3303462][1]["RewardItem"] = {}
	tNBAForgingProps_Reward[3303462][1]["RewardItem"][1] = {}
	tNBAForgingProps_Reward[3303462][1]["RewardItem"][1]["Id"] = 3303453
	tNBAForgingProps_Reward[3303462][1]["RewardItem"][1]["Attr"] = "0 1"
	tNBAForgingProps_Reward[3303462][1]["Log"] = "0,0,3303462,1,12000733,2,3303453,1"
	
	-- 3303454,'锻造锤（2级）'
	tNBAForgingProps_Reward[3303462][2] = {}
	tNBAForgingProps_Reward[3303462][2]["RandomItemChanceType"] = 2
	tNBAForgingProps_Reward[3303462][2]["ItemChance"] = 1000
	tNBAForgingProps_Reward[3303462][2]["RewardItem"] = {}
	tNBAForgingProps_Reward[3303462][2]["RewardItem"][1] = {}
	tNBAForgingProps_Reward[3303462][2]["RewardItem"][1]["Id"] = 3303454
	tNBAForgingProps_Reward[3303462][2]["RewardItem"][1]["Attr"] = "0 1"
	tNBAForgingProps_Reward[3303462][2]["Log"] = "0,0,3303462,1,12000733,2,3303454,1"
	
	-- 3303455,'锻造锤（3级）'
	tNBAForgingProps_Reward[3303462][3] = {}
	tNBAForgingProps_Reward[3303462][3]["RandomItemChanceType"] = 2
	tNBAForgingProps_Reward[3303462][3]["ItemChance"] = 1000
	tNBAForgingProps_Reward[3303462][3]["RewardItem"] = {}
	tNBAForgingProps_Reward[3303462][3]["RewardItem"][1] = {}
	tNBAForgingProps_Reward[3303462][3]["RewardItem"][1]["Id"] = 3303455
	tNBAForgingProps_Reward[3303462][3]["RewardItem"][1]["Attr"] = "0 1"
	tNBAForgingProps_Reward[3303462][3]["Log"] = "0,0,3303462,1,12000733,2,3303455,1"
	
	-- 3303456,'锻造锤（4级）'
	tNBAForgingProps_Reward[3303462][4] = {}
	tNBAForgingProps_Reward[3303462][4]["RandomItemChanceType"] = 2
	tNBAForgingProps_Reward[3303462][4]["ItemChance"] = 1000
	tNBAForgingProps_Reward[3303462][4]["RewardItem"] = {}
	tNBAForgingProps_Reward[3303462][4]["RewardItem"][1] = {}
	tNBAForgingProps_Reward[3303462][4]["RewardItem"][1]["Id"] = 3303456
	tNBAForgingProps_Reward[3303462][4]["RewardItem"][1]["Attr"] = "0 1"
	tNBAForgingProps_Reward[3303462][4]["Log"] = "0,0,3303462,1,12000733,2,3303456,1"
	
	-- 3303457,'锻造锤（5级）'
	tNBAForgingProps_Reward[3303462][5] = {}
	tNBAForgingProps_Reward[3303462][5]["RandomItemChanceType"] = 2
	tNBAForgingProps_Reward[3303462][5]["ItemChance"] = 1000
	tNBAForgingProps_Reward[3303462][5]["RewardItem"] = {}
	tNBAForgingProps_Reward[3303462][5]["RewardItem"][1] = {}
	tNBAForgingProps_Reward[3303462][5]["RewardItem"][1]["Id"] = 3303457
	tNBAForgingProps_Reward[3303462][5]["RewardItem"][1]["Attr"] = "0 1"
	tNBAForgingProps_Reward[3303462][5]["Log"] = "0,0,3303462,1,12000733,2,3303457,1"
	
	-- 3303458,'锻造锤（6级）'
	tNBAForgingProps_Reward[3303462][6] = {}
	tNBAForgingProps_Reward[3303462][6]["RandomItemChanceType"] = 2
	tNBAForgingProps_Reward[3303462][6]["ItemChance"] = 1000
	tNBAForgingProps_Reward[3303462][6]["RewardItem"] = {}
	tNBAForgingProps_Reward[3303462][6]["RewardItem"][1] = {}
	tNBAForgingProps_Reward[3303462][6]["RewardItem"][1]["Id"] = 3303458
	tNBAForgingProps_Reward[3303462][6]["RewardItem"][1]["Attr"] = "0 1"
	tNBAForgingProps_Reward[3303462][6]["Log"] = "0,0,3303462,1,12000733,2,3303458,1"
	
	-- 3303459,'锻造锤（7级）'
	tNBAForgingProps_Reward[3303462][7] = {}
	tNBAForgingProps_Reward[3303462][7]["RandomItemChanceType"] = 2
	tNBAForgingProps_Reward[3303462][7]["ItemChance"] = 1000
	tNBAForgingProps_Reward[3303462][7]["RewardItem"] = {}
	tNBAForgingProps_Reward[3303462][7]["RewardItem"][1] = {}
	tNBAForgingProps_Reward[3303462][7]["RewardItem"][1]["Id"] = 3303459
	tNBAForgingProps_Reward[3303462][7]["RewardItem"][1]["Attr"] = "0 1"
	tNBAForgingProps_Reward[3303462][7]["Log"] = "0,0,3303462,1,12000733,2,3303459,1"
	
	-- 3303460,'锻造锤（8级）'
	tNBAForgingProps_Reward[3303462][8] = {}
	tNBAForgingProps_Reward[3303462][8]["RandomItemChanceType"] = 2
	tNBAForgingProps_Reward[3303462][8]["ItemChance"] = 1000
	tNBAForgingProps_Reward[3303462][8]["RewardItem"] = {}
	tNBAForgingProps_Reward[3303462][8]["RewardItem"][1] = {}
	tNBAForgingProps_Reward[3303462][8]["RewardItem"][1]["Id"] = 3303460
	tNBAForgingProps_Reward[3303462][8]["RewardItem"][1]["Attr"] = "0 1"
	tNBAForgingProps_Reward[3303462][8]["Log"] = "0,0,3303462,1,12000733,2,3303460,1"
	
	-- 3303461,'锻造锤（9级）'
	tNBAForgingProps_Reward[3303462][9] = {}
	tNBAForgingProps_Reward[3303462][9]["RandomItemChanceType"] = 2
	tNBAForgingProps_Reward[3303462][9]["ItemChance"] = 1000
	tNBAForgingProps_Reward[3303462][9]["RewardItem"] = {}
	tNBAForgingProps_Reward[3303462][9]["RewardItem"][1] = {}
	tNBAForgingProps_Reward[3303462][9]["RewardItem"][1]["Id"] = 3303461
	tNBAForgingProps_Reward[3303462][9]["RewardItem"][1]["Attr"] = "0 1"
	tNBAForgingProps_Reward[3303462][9]["Log"] = "0,0,3303462,1,12000733,2,3303461,1"
	
	tNBAForgingProps_Reward["Reward"] = {}
	tNBAForgingProps_Reward["Reward"]["LogId"] = 12000733
	tNBAForgingProps_Reward["Reward"]["DeleteItem"] = {}
	tNBAForgingProps_Reward["Reward"]["DeleteItem"][1] = {}
	tNBAForgingProps_Reward["Reward"]["DeleteItem"][1]["Id"] = 3303462
	tNBAForgingProps_Reward["Reward"]["RewardStrengthValue"] = {}
	tNBAForgingProps_Reward["Reward"]["RewardStrengthValue"]["Value"] = 50
	
-- 道具对应的ID
local tNBAForgingProps_Item = {3303453,3303454,3303455,3303456,3303457,3303458,3303459,3303460,3303461}
-- 道具数量存放表
local tNBAForgingProps_ItemData = {}

-- 锻造锤加的战斗力
local tNBAForgingProps_Battle = {}
	-- 3303453,'1级锻造锤'
	tNBAForgingProps_Battle[3303453] = 1
	-- 3303454,'2级锻造锤'
	tNBAForgingProps_Battle[3303454] = 2
	-- 3303455,'3级锻造锤'
	tNBAForgingProps_Battle[3303455] = 3
	-- 3303456,'4级锻造锤'
	tNBAForgingProps_Battle[3303456] = 4
	-- 3303457,'5级锻造锤'
	tNBAForgingProps_Battle[3303457] = 5
	-- 3303458,'6级锻造锤'
	tNBAForgingProps_Battle[3303458] = 6
	-- 3303459,'7级锻造锤'
	tNBAForgingProps_Battle[3303459] = 7
	-- 3303460,'8级锻造锤'
	tNBAForgingProps_Battle[3303460] = 8
    -- 3303461,'9级锻造锤'
	tNBAForgingProps_Battle[3303461] = 9

local tNBAForgingProps_Option = {}
	tNBAForgingProps_Option[3303453] = "Option1003"
	tNBAForgingProps_Option[3303454] = "Option1004"
	tNBAForgingProps_Option[3303455] = "Option1005"
	tNBAForgingProps_Option[3303456] = "Option1006"
	tNBAForgingProps_Option[3303457] = "Option1007"
	tNBAForgingProps_Option[3303458] = "Option1008"
	tNBAForgingProps_Option[3303459] = "Option1009"
	tNBAForgingProps_Option[3303460] = "Option1010"
	tNBAForgingProps_Option[3303461] = "Option1011"
	
----------------------------------------------------------------逻辑部分-----------------------------------------------------------------------
-- 获取锻造锤的数量
function NBAForgingProps_GetNum()
	local nUserId = Get_UserId()
	tNBAForgingProps_ItemData[nUserId] = {}
	
	for i,v in pairs(tNBAForgingProps_Item) do
		local nItemNum = Get_CountItemType(v,0,0,nUserId,nUserId)
		tNBAForgingProps_ItemData[nUserId][v] = nItemNum
	end
end

function NBAForgingProps_UseItem(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tNBAForgingProps_Data["ActivityTime"]) then
		local tReward = CommonFunc_Copy(tNBAForgingProps_Reward["Reward"])
		tReward["DeleteItem"][1]["Id"] = nItemId
		RewardTemplate_UseItemAndMsg(tReward)
		return
	end
	
	-- User_TalkChannel2005(tNBAForgingProps_Text["Msg"])
	NBAForgingProps_Forging(nItemId)
end

-- 锻造球星装备
function NBAForgingProps_Forging(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tNBAForgingProps_Data["ActivityTime"]) then
		return
	end
	
	NBAForgingProps_GetNum()
	Sys_DialogTaskClear()
	
	local nUserId = Get_UserId()
	local nEvent = tNBAForgingProps_Stc["NowBattle"]["EventData"]
	local nType = tNBAForgingProps_Stc["NowBattle"]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nForgingNum = 0
	Sys_DialogText(tNBAForgingProps_Text[3302875]["Text1101"])
	Sys_DialogText(tNBAForgingProps_Text[3302875]["Text1102"])
	for i = 1,#tNBAForgingProps_Item do
		local nForgingItem = tNBAForgingProps_Item[i]
		local nItemNum = tNBAForgingProps_ItemData[nUserId][nForgingItem] or 0
		local sItemName = Get_ItemtypeName(nForgingItem)
		local nBattle = tNBAForgingProps_Battle[nForgingItem]
		local sText = string.format(tNBAForgingProps_Text[3302875]["Text1103"],sItemName,nItemNum,nBattle)
		Sys_DialogText(sText)
		
		if nItemNum > 0 then
			local sOption = tNBAForgingProps_Text[3302875][tNBAForgingProps_Option[nForgingItem]]
			Sys_DialogOption(sOption,string.format("</F>NBAForgingProps_ForgingItem</N>%d</N>%d",nItemId,nForgingItem))
		end
		
		nForgingNum = nForgingNum + nItemNum
	end
	Sys_DialogText(tNBAForgingProps_Text[3302875]["Text1105"])
	Sys_DialogText(string.format(tNBAForgingProps_Text[3302875]["Text1104"],nValue))
	
	if nForgingNum == 0 then
		Sys_DialogOption(tNBAForgingProps_Text[3302875]["Option1012"])
	-- else
		-- Sys_DialogOption(tNBAForgingProps_Text[3302875]["Option1016"],string.format("</F>NBAForgingProps_Onekey</N>%d",nItemId))
	end
	
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end

-- 使用锤子
function NBAForgingProps_ForgingItem(nItemId,nForgingItem)
	-- 判断活动时间
	if not Sys_ChkFullTime(tNBAForgingProps_Data["ActivityTime"]) then
		return
	end
	
	local sItemName = Get_ItemtypeName(nForgingItem)
	-- 判断是否有锻造锤
	if not Item_ChkItem(nForgingItem) then
		tItem[nItemId]["Text1301"] = string.format(tNBAForgingProps_Text[3302875]["Text1301"],sItemName)
		LinkItemGossipFunc_New(nItemId,"130-1")
		return
	end

	if Item_DelItem(nForgingItem) then
		local nBattle = tNBAForgingProps_Battle[nForgingItem]
		local nBattleEvent = tNBAForgingProps_Stc["Battle"]["EventData"]
		local nBattleType = tNBAForgingProps_Stc["Battle"]["DataType"]
		local nNowBattleEvent = tNBAForgingProps_Stc["NowBattle"]["EventData"]
		local nNowBattleType = tNBAForgingProps_Stc["NowBattle"]["DataType"]
		local nValue = Get_UserStatisticValue(nNowBattleEvent,nNowBattleType)
		local sContent = string.format(tNBAForgingProps_Text[3302875]["Success"],sItemName,nBattle,nValue + nBattle)
		
		Task_AddStatistic(nBattleEvent,nBattleType,nBattle,1)
		Task_AddStatistic(nNowBattleEvent,nNowBattleType,nBattle,1)
		
		User_TalkChannel2005(sContent)
		User_EffectAdd("self","zf2-e128")
		Sys_SaveActionFestivalLog(string.format(tNBAForgingProps_Data["Log"],nForgingItem,1))
		-- 刷新排行版数据
		ActivityOfNBA_RankingList()
		NBAForgingProps_Forging(nItemId)
	end
end

-- 一键使用所有锤子
function NBAForgingProps_Onekey(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tNBAForgingProps_Data["ActivityTime"]) then
		return
	end
	
	-- 获取所有锤子数量
	NBAForgingProps_GetNum()

	-- 删除所有锤子
	local nUserId = Get_UserId()
	local nAddBattle = 0
	if tNBAForgingProps_ItemData[nUserId] == nil then
		return
	end
	
	for i,v in pairs(tNBAForgingProps_ItemData[nUserId]) do
		if v > 0 then
			if Item_DelAllItemByType(i,nUserId) then
				local nBattle = tNBAForgingProps_Battle[i]*v
				nAddBattle = nAddBattle + nBattle
				Sys_SaveActionFestivalLog(string.format(tNBAForgingProps_Data["Log"],i,v),nUserId)
			end
		end
	end
	
	if nAddBattle <= 0 then
		User_TalkChannel2005(tNBAForgingProps_Text["NoItem"],nUserId)
		return
	end

	local nBattleEvent = tNBAForgingProps_Stc["Battle"]["EventData"]
	local nBattleType = tNBAForgingProps_Stc["Battle"]["DataType"]
	local nNowBattleEvent = tNBAForgingProps_Stc["NowBattle"]["EventData"]
	local nNowBattleType = tNBAForgingProps_Stc["NowBattle"]["DataType"]
	local nValue = Get_UserStatisticValue(nNowBattleEvent,nNowBattleType,nUserId)
	local sContent = string.format(tNBAForgingProps_Text[3302875]["Onekey"],nAddBattle,nValue + nAddBattle)
	
	Task_AddStatistic(nBattleEvent,nBattleType,nAddBattle,1)
	Task_AddStatistic(nNowBattleEvent,nNowBattleType,nAddBattle,1)
	
	User_TalkChannel2005(sContent)
	User_EffectAdd("self","zf2-e128",nUserId)

	-- 刷新排行版数据
	ActivityOfNBA_RankingList()
	NBAForgingProps_Forging(nItemId)
end

function NBAForgingProps_Chk(nItemId)
	local nUserId = Get_UserId()
	local nEvent = tNBAForgingProps_Stc["Battle"]["EventData"]
	local nType = tNBAForgingProps_Stc["Battle"]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nValue < tNBAForgingProps_Data["Battle"] then
		LinkItemGossipFunc_New(nItemId,"120-1")
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"100-1")
end

-- 使用锤子礼包
function NBAForgingProps_UsePackage(nItemId)
	local nUserId = Get_UserId()
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tNBAForgingProps_Data["ActivityTime"]) then
		local tReward = CommonFunc_Copy(tNBAForgingProps_Reward["Reward"])
		tReward["DeleteItem"][1]["Id"] = nItemId
		RewardTemplate_UseItemAndMsg(tReward,nUserId)
		return
	end
	
	-- 判断实力
	local nEvent = tNBAForgingProps_Stc["Battle"]["EventData"]
	local nType = tNBAForgingProps_Stc["Battle"]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nValue < tNBAForgingProps_Data["Battle"] then
		User_TalkChannel2005(tNBAForgingProps_Text["NoUseItem"],nUserId)
		return
	end
	
	-- 判断背包空间
	if not RewardTemplate_ChkRandomSpace(tNBAForgingProps_Reward,nItemId,nUserId) then
		User_TalkChannel2005(tNBAForgingProps_Text["NoSpace"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tNBAForgingProps_Reward,nItemId,nUserId)
		User_EffectAdd("self","zf2-e280",nUserId)
	end
end

----------------------------------------------------------------物品部分-----------------------------------------------------------------------
tItemFace[3303453] = 650
tItemFace[3303454] = 651
tItemFace[3303455] = 652
tItemFace[3303456] = 653
tItemFace[3303457] = 654
tItemFace[3303458] = 655
tItemFace[3303459] = 656
tItemFace[3303460] = 657
tItemFace[3303461] = 658

-- 3303453,'1级锻造锤'
tItem[3303453] = tItem[3303453] or {}
tItem[3303453]["Function"] = function(nItemId,sItemName)
	NBAForgingProps_UseItem(nItemId)
end

tItem[3303453]["Text130-1"] = {1301,1302}
tItem[3303453]["Text1301"] = tNBAForgingProps_Text[3302875]["Text1301"]
tItem[3303453]["Text1302"] = tNBAForgingProps_Text[3302875]["Text1302"]
tItem[3303453]["tOption130-1"] = {1014}
tItem[3303453]["Option1014"] = tNBAForgingProps_Text[3302875]["Option1014"]

-- 3303454,'2级锻造锤'
tItem[3303454] = tItem[3303454] or {}
tItem[3303454]["Function"] = function(nItemId,sItemName)
	NBAForgingProps_UseItem(nItemId)
end

tItem[3303454]["Text130-1"] = {1301,1302}
tItem[3303454]["Text1301"] = tNBAForgingProps_Text[3302875]["Text1301"]
tItem[3303454]["Text1302"] = tNBAForgingProps_Text[3302875]["Text1302"]
tItem[3303454]["tOption130-1"] = {1014}
tItem[3303454]["Option1014"] = tNBAForgingProps_Text[3302875]["Option1014"]

-- 3303455,'3级锻造锤'
tItem[3303455] = tItem[3303455] or {}
tItem[3303455]["Function"] = function(nItemId,sItemName)
	NBAForgingProps_UseItem(nItemId)
end

tItem[3303455]["Text130-1"] = {1301,1302}
tItem[3303455]["Text1301"] = tNBAForgingProps_Text[3302875]["Text1301"]
tItem[3303455]["Text1302"] = tNBAForgingProps_Text[3302875]["Text1302"]
tItem[3303455]["tOption130-1"] = {1014}
tItem[3303455]["Option1014"] = tNBAForgingProps_Text[3302875]["Option1014"]

-- 3303456,'4级锻造锤'
tItem[3303456] = tItem[3303456] or {}
tItem[3303456]["Function"] = function(nItemId,sItemName)
	NBAForgingProps_UseItem(nItemId)
end

tItem[3303456]["Text130-1"] = {1301,1302}
tItem[3303456]["Text1301"] = tNBAForgingProps_Text[3302875]["Text1301"]
tItem[3303456]["Text1302"] = tNBAForgingProps_Text[3302875]["Text1302"]
tItem[3303456]["tOption130-1"] = {1014}
tItem[3303456]["Option1014"] = tNBAForgingProps_Text[3302875]["Option1014"]

-- 3303457,'5级锻造锤'
tItem[3303457] = tItem[3303457] or {}
tItem[3303457]["Function"] = function(nItemId,sItemName)
	NBAForgingProps_UseItem(nItemId)
end

tItem[3303457]["Text130-1"] = {1301,1302}
tItem[3303457]["Text1301"] = tNBAForgingProps_Text[3302875]["Text1301"]
tItem[3303457]["Text1302"] = tNBAForgingProps_Text[3302875]["Text1302"]
tItem[3303457]["tOption130-1"] = {1014}
tItem[3303457]["Option1014"] = tNBAForgingProps_Text[3302875]["Option1014"]

-- 3303458,'6级锻造锤'
tItem[3303458] = tItem[3303458] or {}
tItem[3303458]["Function"] = function(nItemId,sItemName)
	NBAForgingProps_UseItem(nItemId)
end

tItem[3303458]["Text130-1"] = {1301,1302}
tItem[3303458]["Text1301"] = tNBAForgingProps_Text[3302875]["Text1301"]
tItem[3303458]["Text1302"] = tNBAForgingProps_Text[3302875]["Text1302"]
tItem[3303458]["tOption130-1"] = {1014}
tItem[3303458]["Option1014"] = tNBAForgingProps_Text[3302875]["Option1014"]

-- 3303459,'7级锻造锤'
tItem[3303459] = tItem[3303459] or {}
tItem[3303459]["Function"] = function(nItemId,sItemName)
	NBAForgingProps_UseItem(nItemId)
end

tItem[3303459]["Text130-1"] = {1301,1302}
tItem[3303459]["Text1301"] = tNBAForgingProps_Text[3302875]["Text1301"]
tItem[3303459]["Text1302"] = tNBAForgingProps_Text[3302875]["Text1302"]
tItem[3303459]["tOption130-1"] = {1014}
tItem[3303459]["Option1014"] = tNBAForgingProps_Text[3302875]["Option1014"]

-- 3303460,'8级锻造锤'
tItem[3303460] = tItem[3303460] or {}
tItem[3303460]["Function"] = function(nItemId,sItemName)
	NBAForgingProps_UseItem(nItemId)
end

tItem[3303460]["Text130-1"] = {1301,1302}
tItem[3303460]["Text1301"] = tNBAForgingProps_Text[3302875]["Text1301"]
tItem[3303460]["Text1302"] = tNBAForgingProps_Text[3302875]["Text1302"]
tItem[3303460]["tOption130-1"] = {1014}
tItem[3303460]["Option1014"] = tNBAForgingProps_Text[3302875]["Option1014"]

-- 3303461,'9级锻造锤'
tItem[3303461] = tItem[3303461] or {}
tItem[3303461]["Function"] = function(nItemId,sItemName)
	NBAForgingProps_UseItem(nItemId)
end

tItem[3303461]["Text130-1"] = {1301,1302}
tItem[3303461]["Text1301"] = tNBAForgingProps_Text[3302875]["Text1301"]
tItem[3303461]["Text1302"] = tNBAForgingProps_Text[3302875]["Text1302"]
tItem[3303461]["tOption130-1"] = {1014}
tItem[3303461]["Option1014"] = tNBAForgingProps_Text[3302875]["Option1014"]

-- 3303462,'锻造锤礼包'
tItem[3303462] = tItem[3303462] or {}
tItem[3303462]["Function"] = function(nItemId,sItemName)
	NBAForgingProps_UsePackage(nItemId)
end

--花名册
tItem[3302875] = tItem[3302875] or {}
tItem[3302875]["Text100-1"] = {1001,1002,1003,1004,1005,1006,1007,1008,1009}
tItem[3302875]["Text1001"] = tNBAForgingProps_Text[3302875]["Text1001"]
tItem[3302875]["Text1002"] = tNBAForgingProps_Text[3302875]["Text1002"]
tItem[3302875]["Text1003"] = tNBAForgingProps_Text[3302875]["Text1003"]
tItem[3302875]["Text1004"] = tNBAForgingProps_Text[3302875]["Text1004"]
tItem[3302875]["Text1005"] = tNBAForgingProps_Text[3302875]["Text1005"]
tItem[3302875]["Text1006"] = tNBAForgingProps_Text[3302875]["Text1006"]
tItem[3302875]["Text1007"] = tNBAForgingProps_Text[3302875]["Text1007"]
tItem[3302875]["Text1008"] = tNBAForgingProps_Text[3302875]["Text1008"]
tItem[3302875]["Text1009"] = tNBAForgingProps_Text[3302875]["Text1009"]
tItem[3302875]["tOption100-1"] = {1001}
tItem[3302875]["Option1001"] = tNBAForgingProps_Text[3302875]["Option1001"]
tItem[3302875]["OptionFunc1001"]="NBAForgingProps_Forging</N>3302875"

tItem[3302875]["Text120-1"] = {1201,1202}
tItem[3302875]["Text1201"] = tNBAForgingProps_Text[3302875]["Text1201"]
tItem[3302875]["Text1202"] = tNBAForgingProps_Text[3302875]["Text1202"]
tItem[3302875]["tOption120-1"] = {1013}
tItem[3302875]["Option1013"] = tNBAForgingProps_Text[3302875]["Option1013"]

tItem[3302875]["Text130-1"] = {1301,1302}
tItem[3302875]["Text1301"] = tNBAForgingProps_Text[3302875]["Text1301"]
tItem[3302875]["Text1302"] = tNBAForgingProps_Text[3302875]["Text1302"]
tItem[3302875]["tOption130-1"] = {1014}
tItem[3302875]["Option1014"] = tNBAForgingProps_Text[3302875]["Option1014"]

