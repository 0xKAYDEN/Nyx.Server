------------------------------------------------------------------------------------
--Name:		[简体征服][活动脚本]德州扑克锦标赛事--回收门票
--Purpose:	德州扑克锦标赛事
--Creator: 	张磊
--Created:	2017/03/06
------------------------------------------------------------------------------------

----命名前缀
-- PokerRecycleTicket_

----lua.ini
--40472

----log.id
-- 12000663


------------------------------------------------------------------------------------



---------------------------------------------------------------------------------------


-- 基础信息
local tPokerRecycleTicket_Cont = {}
	tPokerRecycleTicket_Cont["ActTime"] = "2017-06-08 00:00 2017-06-09 10:59"
	-- 活动时间1     比赛当天之前
	tPokerRecycleTicket_Cont["ActTime_1"] = "2017-01-01 00:00 2017-06-08 23:59"
	
	--活动时间2     比赛当天21:12分前(不包含12分)
	tPokerRecycleTicket_Cont["ActTime_2"] = "2017-06-09 00:00 2017-06-09 10:56"
	
	--活动时间3     比赛当天21:12~21:15
	tPokerRecycleTicket_Cont["ActTime_3"] = "2017-06-09 10:57 2017-06-09 10:59"
	
	--活动时间4     比赛当天21::15~23:59
	tPokerRecycleTicket_Cont["ActTime_4"] = "2017-06-09 11:00 2017-06-09 23:59"
	
	
	--物品使用时间段
	tPokerRecycleTicket_Cont["ItemActTime"] = "2017-03-27 00:00 2017-06-09 11:00"
	
	tPokerRecycleTicket_Cont["Space"] = 1
	
	tPokerRecycleTicket_Cont["DeleteLog"] = "0,0,3303466,1,12000663,2,0,0"


local tPokerRecycleTicket_FindNpc = {}
	tPokerRecycleTicket_FindNpc["NpcId"] = 20695
	tPokerRecycleTicket_FindNpc["MapId"] = 1036
	tPokerRecycleTicket_FindNpc["CellX"] = 191
	tPokerRecycleTicket_FindNpc["CellY"] = 170


local tPokerRecycleTicket_Item = {}
	tPokerRecycleTicket_Item["RewardItem"] = {}
	tPokerRecycleTicket_Item["RewardItem"][1] = {}
	tPokerRecycleTicket_Item["RewardItem"][1]["Id"] = 3303466
	tPokerRecycleTicket_Item["RewardItem"][1]["Attr"] = "0 1"
	tPokerRecycleTicket_Item["Log"] = "0,0,0,0,12000663,2,3303466,1"
	tPokerRecycleTicket_Item["Talk"] = tPokerRecycleTicket_Text["SysMsg"][1]


---------------------------------------配表---------------------------------------


function PokerRecycleTicket_FindNpc()
	local nNpc_Id = tPokerRecycleTicket_FindNpc["NpcId"]
	local nNpc_MapId = tPokerRecycleTicket_FindNpc["MapId"]
	local nNpc_CellX = tPokerRecycleTicket_FindNpc["CellX"]
	local nNpc_CellY = tPokerRecycleTicket_FindNpc["CellY"]
	
	Sys_GotoSomeWhere(nNpc_CellX,nNpc_CellY,nNpc_MapId,nNpc_Id)
end



function PokerRecycleTicket_BagItem()
	
	if not Sys_ChkFullTime(tPokerRecycleTicket_Cont["ActTime"]) then
		return
	end
	
	
	if not User_CheckLeftSpace(tPokerRecycleTicket_Cont["Space"]) then
		return
	end
	
	if Item_ChkItem(tPokerRecycleTicket_Item["RewardItem"][1]["Id"]) then
		return
	end
	
	
	RewardTemplate_Reward(tPokerRecycleTicket_Item)
end


-- 打开界面
function PokerRecycleTicket_OpenForm(FormId)
	User_OpenDialog(FormId)
end


tNpcFace[5322] = 57
tNpcGossip[20695] = tNpcGossip[20695] or DefaultNpc:new{}
tNpcGossip[20695]["OptionHidden"] = 1

tNpcGossip[20695]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[20695]["Text111"] = tPokerRecycleTicket_Text[20695]["Text111"]
tNpcGossip[20695]["Text112"] = tPokerRecycleTicket_Text[20695]["Text112"]
tNpcGossip[20695]["Text113"] = tPokerRecycleTicket_Text[20695]["Text113"]
tNpcGossip[20695]["Text114"] = tPokerRecycleTicket_Text[20695]["Text114"]
tNpcGossip[20695]["Text115"] = tPokerRecycleTicket_Text[20695]["Text115"]
tNpcGossip[20695]["Text116"] = tPokerRecycleTicket_Text[20695]["Text116"]
tNpcGossip[20695]["Text117"] = tPokerRecycleTicket_Text[20695]["Text117"]
tNpcGossip[20695]["Text118"] = tPokerRecycleTicket_Text[20695]["Text118"]
tNpcGossip[20695]["tOption1-1"] = {111,112}
tNpcGossip[20695]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tPokerRecycleTicket_Cont["ActTime_1"])
end

tNpcGossip[20695]["Option111"] = tPokerRecycleTicket_Text[20695]["Option111"]
tNpcGossip[20695]["OptionPoint111"] = "4-1"


tNpcGossip[20695]["Option112"] = tPokerRecycleTicket_Text[20695]["Option112"]


----比赛当天前【活动中（比赛当天前）】 当天
tNpcGossip[20695]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[20695]["Text121"] = tPokerRecycleTicket_Text[20695]["Text121"]
tNpcGossip[20695]["Text122"] = tPokerRecycleTicket_Text[20695]["Text122"]
tNpcGossip[20695]["Text123"] = tPokerRecycleTicket_Text[20695]["Text123"]
tNpcGossip[20695]["Text124"] = tPokerRecycleTicket_Text[20695]["Text124"]
tNpcGossip[20695]["Text125"] = tPokerRecycleTicket_Text[20695]["Text125"]
tNpcGossip[20695]["Text126"] = tPokerRecycleTicket_Text[20695]["Text126"]
tNpcGossip[20695]["tOption1-2"] = {121,111,122}
tNpcGossip[20695]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tPokerRecycleTicket_Cont["ActTime_2"])
end


tNpcGossip[20695]["Option121"] = tPokerRecycleTicket_Text[20695]["Option121"]
tNpcGossip[20695]["OptionFunc121"] = "PokerRecycleTicket_OpenForm</N>820"

tNpcGossip[20695]["Option122"] = tPokerRecycleTicket_Text[20695]["Option122"]


----【活动中（比赛当天10:57~11:00）】  报名时间
tNpcGossip[20695]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[20695]["Text131"] = tPokerRecycleTicket_Text[20695]["Text131"]
tNpcGossip[20695]["Text132"] = tPokerRecycleTicket_Text[20695]["Text132"]
tNpcGossip[20695]["Text133"] = tPokerRecycleTicket_Text[20695]["Text133"]
tNpcGossip[20695]["Text134"] = tPokerRecycleTicket_Text[20695]["Text134"]
tNpcGossip[20695]["Text135"] = tPokerRecycleTicket_Text[20695]["Text135"]
tNpcGossip[20695]["tOption1-3"] = {121,111,122}
tNpcGossip[20695]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tPokerRecycleTicket_Cont["ActTime_3"])
end


--【活动中（比赛当天11:00后）】  30号当天
tNpcGossip[20695]["Text1-4"] = {141,142,143,144}
tNpcGossip[20695]["Text141"] = tPokerRecycleTicket_Text[20695]["Text141"]
tNpcGossip[20695]["Text142"] = tPokerRecycleTicket_Text[20695]["Text142"]
tNpcGossip[20695]["Text143"] = tPokerRecycleTicket_Text[20695]["Text143"]
tNpcGossip[20695]["Text144"] = tPokerRecycleTicket_Text[20695]["Text144"]
tNpcGossip[20695]["tOption1-4"] = {141}
tNpcGossip[20695]["ChkFunc1-4"] = function()
	return Sys_ChkFullTime(tPokerRecycleTicket_Cont["ActTime_4"])
end

tNpcGossip[20695]["Option141"] = tPokerRecycleTicket_Text[20695]["Option141"]


--【活动后】     超过30号
tNpcGossip[20695]["Text1-5"] = {151,152}
tNpcGossip[20695]["Text151"] = tPokerRecycleTicket_Text[20695]["Text151"]
tNpcGossip[20695]["Text152"] = tPokerRecycleTicket_Text[20695]["Text152"]
tNpcGossip[20695]["tOption1-5"] = {151}

tNpcGossip[20695]["Option151"] = tPokerRecycleTicket_Text[20695]["Option151"]


--奖金
tNpcGossip[20695]["Text4-1"] = {411,412,413,414,415,416,417,418}
tNpcGossip[20695]["Text411"] = tPokerRecycleTicket_Text[20695]["Text411"]
tNpcGossip[20695]["Text412"] = tPokerRecycleTicket_Text[20695]["Text412"]
tNpcGossip[20695]["Text413"] = tPokerRecycleTicket_Text[20695]["Text413"]
tNpcGossip[20695]["Text414"] = tPokerRecycleTicket_Text[20695]["Text414"]
tNpcGossip[20695]["Text415"] = tPokerRecycleTicket_Text[20695]["Text415"]
tNpcGossip[20695]["Text416"] = tPokerRecycleTicket_Text[20695]["Text416"]
tNpcGossip[20695]["Text417"] = tPokerRecycleTicket_Text[20695]["Text417"]
tNpcGossip[20695]["Text418"] = tPokerRecycleTicket_Text[20695]["Text418"]
tNpcGossip[20695]["tOption4-1"] = {411}
tNpcGossip[20695]["Option411"] = tPokerRecycleTicket_Text[20695]["Option411"]


tNpcGossip[20832] = tNpcGossip[20695]



tItemFace[3303466] = 659
tItem[3303466] = {}
tItem[3303466]["Text1-1"] = {111,112,113,114,115,116}
tItem[3303466]["Text111"] = tPokerRecycleTicket_Text[3303466]["Text111"]
tItem[3303466]["Text112"] = tPokerRecycleTicket_Text[3303466]["Text112"]
tItem[3303466]["Text113"] = tPokerRecycleTicket_Text[3303466]["Text113"]
tItem[3303466]["Text114"] = tPokerRecycleTicket_Text[3303466]["Text114"]
tItem[3303466]["Text115"] = tPokerRecycleTicket_Text[3303466]["Text115"]
tItem[3303466]["Text116"] = tPokerRecycleTicket_Text[3303466]["Text116"]
tItem[3303466]["tOption1-1"] = {111,112}
tItem[3303466]["Option111"] = tPokerRecycleTicket_Text[3303466]["Option111"]
tItem[3303466]["OptionFunc111"] = "PokerRecycleTicket_FindNpc"
tItem[3303466]["Option112"] = tPokerRecycleTicket_Text[3303466]["Option112"]

tItem[3303466] = tItem[3303466] or {}
tItem[3303466]["Function"] = function(nItemId,sItemName)

if not Sys_ChkFullTime(tPokerRecycleTicket_Cont["ItemActTime"]) then

	-- if CommonFunc_GetAfterActivityTime(tPokerRecycleTicket_Cont["ItemActTime"]) then
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then			
			Sys_SaveActionFestivalLog(tPokerRecycleTicket_Cont["DeleteLog"])			
			User_TalkChannel2005(tPokerRecycleTicket_Text["SysMsg"][4])
		end		
		return
	end

	LinkItemGossipFunc_New(nItemId,"1-1")
end


tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,PokerRecycleTicket_BagItem)