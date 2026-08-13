------------------------------------------------------------------------------------
--Name:		180718[英文征服][活动脚本]抽奖目标榜活动
--Creator: 	茅志伟
--Created:	2018/07/18
------------------------------------------------------------------------------------

--命名前缀 tTargetList_
-- 40947 = V100\ActiveScript\[Conquer][ActiveScript]TargetList.lua
-- 40947 = V100\活动脚本\[征服][活动脚本]抽奖目标榜活动.lua

--LogId = 12001121
--掩码179,69记录玩家上交的凭证数量

local tTargetList_Stc = {}
tTargetList_Stc["EventType"] = 179
tTargetList_Stc["DataType"] = 69

local tTargetList_Pack = {}
--抽奖券精装包
tTargetList_Pack[3310188] = {}
tTargetList_Pack[3310188]["RewardItem"] = {}
tTargetList_Pack[3310188]["RewardItem"][1] = {}
tTargetList_Pack[3310188]["RewardItem"][1]["Id"] = 711504
tTargetList_Pack[3310188]["RewardItem"][1]["Attr"] = "0 30"
tTargetList_Pack[3310188]["RewardItem"][2] = {}
tTargetList_Pack[3310188]["RewardItem"][2]["Id"] = 3310187
tTargetList_Pack[3310188]["RewardItem"][2]["Attr"] = "0 5 3"
tTargetList_Pack[3310188]["LogId"] = 12001121
--抽奖券豪华包
tTargetList_Pack[3310189] = {}
tTargetList_Pack[3310189]["RewardItem"] = {}
tTargetList_Pack[3310189]["RewardItem"][1] = {}
tTargetList_Pack[3310189]["RewardItem"][1]["Id"] = 711504
tTargetList_Pack[3310189]["RewardItem"][1]["Attr"] = "0 150"
tTargetList_Pack[3310189]["RewardItem"][2] = {}
tTargetList_Pack[3310189]["RewardItem"][2]["Id"] = 3310187
tTargetList_Pack[3310189]["RewardItem"][2]["Attr"] = "0 25 3"
tTargetList_Pack[3310189]["LogId"] = 12001121
--抽奖券尊享包
tTargetList_Pack[3310190] = {}
tTargetList_Pack[3310190]["RewardItem"] = {}
tTargetList_Pack[3310190]["RewardItem"][1] = {}
tTargetList_Pack[3310190]["RewardItem"][1]["Id"] = 711504
tTargetList_Pack[3310190]["RewardItem"][1]["Attr"] = "0 300"
tTargetList_Pack[3310190]["RewardItem"][2] = {}
tTargetList_Pack[3310190]["RewardItem"][2]["Id"] = 3310187
tTargetList_Pack[3310190]["RewardItem"][2]["Attr"] = "0 50 3"
tTargetList_Pack[3310190]["LogId"] = 12001121

local tTargetList_Item = {}
tTargetList_Item[3310187] = 3310187

local tTargetList_ItemNum = {}
tTargetList_ItemNum[3310187] = {}
tTargetList_ItemNum[3310187][1] = 5
tTargetList_ItemNum[3310187][2] = 25
tTargetList_ItemNum[3310187][3] = 50

local tTargetList_Goto = {}
tTargetList_Goto[3310187] = {}
tTargetList_Goto[3310187]["MapId"] = 1002
tTargetList_Goto[3310187]["PosX"] = 356
tTargetList_Goto[3310187]["PosY"] = 414
tTargetList_Goto[3310187]["NpcId"] = 23087

local tTargetList_EmoneyLog = {}
tTargetList_EmoneyLog["CostEmoney"] = {}
--5个凭证
tTargetList_EmoneyLog["CostEmoney"][1] = "350	21564	0	0	1	"
--25个凭证
tTargetList_EmoneyLog["CostEmoney"][2] = "350	21565	0	0	1	"
--50个凭证
tTargetList_EmoneyLog["CostEmoney"][3] = "350	21566	0	0	1	"
-------------------------------------------------------逻辑
--打开礼包
function TargetList_OpenPick(nItemId)
	if not Item_ChkItem(nItemId) then 
		return
	end
	if not Sys_ChkFullTime(tActivityTime["tTargetList"]["ActivityTime"]) then 
		local nNum = Get_CountItemType(nItemId,0)
		Item_DelMulItem(nItemId,nItemId,nNum)
		User_TalkChannel2005(tTargetList_Text["AfterTime"] )
		Sys_SaveActionFestivalLog(string.format("0,0,%d,%d,12001121,0,0,0",nItemId,nNum))
		return
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tTargetList_Pack[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tTargetList_Text["TextNoSpace"],nSpace))
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		RewardTemplate_Reward(tTargetList_Pack[nItemId])
	end 
end 
--记录幸运值
function TargetList_Handing(nItemId,nItemNum,nNpcId)
	local nEvent = tTargetList_Stc["EventType"]
	local nType = tTargetList_Stc["DataType"]
	local nNum = tTargetList_ItemNum[nItemId][nItemNum]

	if Item_ChkMulItem(nItemId,nItemId,nNum) then 
		if Item_DelMulItem(nItemId,nItemId,nNum) then
			Task_AddStatistic(nEvent,nType,nNum,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			
			local nData = Get_UserStatisticValue(nEvent,nType)
			User_TalkChannel2005(string.format(tTargetList_Text["Prompt"],nNum,nData))
			LinkNpcGossipFunc_New(nNpcId,"1-3")
		--记录提交幸运星的Log
			Sys_SaveEmoneyBuy(tTargetList_EmoneyLog["CostEmoney"][nItemNum])
		end
	end

end
--天石商店
function TargetList_OpenShop(nNpcId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["tTargetList"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	if CommonFunc_GetAfterActivityTime(tActivityTime["tTargetList"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	User_OpenDialog(0,nNpcId)
end
--幸运星
function TargetList_star(nItemId)
	if not Sys_ChkFullTime(tActivityTime["tTargetList"]["ActivityTime"]) then 
		local nNum = Get_CountItemType(nItemId,0)
		Item_DelMulItem(nItemId,nItemId,nNum)
		User_TalkChannel2005(tTargetList_Text["AfterTime"] )
		Sys_SaveActionFestivalLog(string.format("0,0,%d,%d,12001121,0,0,0",nItemId,nNum))
		return
	end 
	local nNowMapId = Get_UserMapId()
	if nNowMapId == 1002 then 
		local nMapId = tTargetList_Goto[nItemId]["MapId"]
		local nPosX = tTargetList_Goto[nItemId]["PosX"]
		local nPosY = tTargetList_Goto[nItemId]["PosY"]
		local nNpcId = tTargetList_Goto[nItemId]["NpcId"]
		-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
		NpcPosition_PathFind(nNpcId)
	else 
		User_TalkChannel2005(tTargetList_Text["NoMap"])
	end 
end
--跳转线下页面
function TargetList_OpenURL()
	User_SendWebPage("https://coevent.99.com/growbooster201908/")
end
-------------------------------------------物品模板
tItem[3310188] = tItem[3310188] or {}
tItem[3310188]["Function"] = function(nItemId,sItemName)
	TargetList_OpenPick(nItemId)
end
tItem[3310189] = tItem[3310188]
tItem[3310190] = tItem[3310188]
tItem[3310187] = tItem[3310187] or {}
tItem[3310187]["Function"] = function(nItemId,sItemName)
	TargetList_star(nItemId)
end


--------------------------------------------Npc模板
--抽奖券商人
tNpcFace[4764] = 7
tNpcGossip[23086]= tNpcGossip[23086] or DefaultNpc:new{}
tNpcGossip[23086]["OptionHidden"] = 1
tNpcGossip[23086]["DialogueText"] = tTargetList_Text[23086]
--活动前
tNpcGossip[23086]["Text1-1"] = {111,112}
tNpcGossip[23086]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["tTargetList"]["ActivityTime"])
end
tNpcGossip[23086]["tOption1-1"] = {111}
--活动后
tNpcGossip[23086]["Text1-2"] = {121}
tNpcGossip[23086]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["tTargetList"]["ActivityTime"])
end
tNpcGossip[23086]["tOption1-2"] = {121}


--幸运大使
tNpcFace[4765] = 160
tNpcGossip[23087] = tNpcGossip[23087] or DefaultNpc:new{}
tNpcGossip[23087]["OptionHidden"] = 1
tNpcGossip[23087]["DialogueText"] = tTargetList_Text[23087]
--活动前
tNpcGossip[23087]["Text1-1"] = {111,112,113}
tNpcGossip[23087]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["tTargetList"]["ActivityTime"])
end
tNpcGossip[23087]["tOption1-1"] = {111}
--活动后
tNpcGossip[23087]["Text1-2"] = {121}
tNpcGossip[23087]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["tTargetList"]["ActivityTime"])
end
tNpcGossip[23087]["tOption1-2"] = {121}

--活动中
tNpcGossip[23087]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[23087]["ChkFunc1-3"]= function()
	local nEvent = tTargetList_Stc["EventType"]
	local nType = tTargetList_Stc["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[23087]["Text135"] = string.format(tTargetList_Text[23087]["Text135"],nData)
	return Sys_ChkFullTime(tActivityTime["tTargetList"]["ActivityTime"])
end
tNpcGossip[23087]["tOption1-3"] = {131,132,133,134}
tNpcGossip[23087]["OptionFunc131"] = "TargetList_Handing</N>3310187</N>1</N>23087"
tNpcGossip[23087]["OptionChkFunc131"] = function()
	local nItemId = tTargetList_Item[3310187]
	local nNum = tTargetList_ItemNum[3310187][1]
	if Item_ChkMulItem(nItemId,nItemId,nNum) then 
		return true 
	else 
		return false
	end 
end 
tNpcGossip[23087]["OptionFunc132"] = "TargetList_Handing</N>3310187</N>2</N>23087"
tNpcGossip[23087]["OptionChkFunc132"] = function()
	local nItemId = tTargetList_Item[3310187]
	local nNum = tTargetList_ItemNum[3310187][2]
	if Item_ChkMulItem(nItemId,nItemId,nNum) then 
		return true 
	else 
		return false
	end 
end 
tNpcGossip[23087]["OptionFunc133"] = "TargetList_Handing</N>3310187</N>3</N>23087"
tNpcGossip[23087]["OptionChkFunc133"] = function()
	local nItemId = tTargetList_Item[3310187]
	local nNum = tTargetList_ItemNum[3310187][3]
	if Item_ChkMulItem(nItemId,nItemId,nNum) then 
		return true 
	else 
		return false
	end 
end 
tNpcGossip[23087]["OptionFunc134"] = "TargetList_OpenURL"




