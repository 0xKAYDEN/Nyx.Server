------------------------------------------------------------------------------
--Name:		160812[简体征服][活动脚本]双11活动复用
--Creator: 	张磊
--Created:	2016/08/12
------------------------------------------------------------------------------
-- 命名前缀
-- NoSalesActivity_

--logid :12000496
--luaini : 40274



-------------------------------------------------------------------------------------------------------------------------
local tNoSalesActivity_Cont = {}
	tNoSalesActivity_Cont["ActivityTime"] = "2017-07-13 00:00 2017-07-26 23:59"
	tNoSalesActivity_Cont["FHActivityTime"] = "2016-08-30 00:00 2016-09-05 23:59"
	tNoSalesActivity_Cont["Space"] = 1
	tNoSalesActivity_Cont["GlobalId"] = 51131
	tNoSalesActivity_Cont["Limit"] = 270

local tNoSalesActivity_Reward = {}
	tNoSalesActivity_Reward[19427] = {}
	tNoSalesActivity_Reward[19427][1] = {}
	tNoSalesActivity_Reward[19427][1]["RewardItem"] = {}
	tNoSalesActivity_Reward[19427][1]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19427][1]["RewardItem"][1]["Id"] = 3007769
	tNoSalesActivity_Reward[19427][1]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19427][1]["Log"] = "0,0,0,0,12000496,2,3007769,1"
	
	tNoSalesActivity_Reward[19427][2] = {}
	tNoSalesActivity_Reward[19427][2]["RewardItem"] = {}
	tNoSalesActivity_Reward[19427][2]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19427][2]["RewardItem"][1]["Id"] = 3007806
	tNoSalesActivity_Reward[19427][2]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19427][2]["Log"] = "0,0,0,0,12000496,2,3007806,1"
	
	tNoSalesActivity_Reward[19427][3] = {}
	tNoSalesActivity_Reward[19427][3]["RewardItem"] = {}
	tNoSalesActivity_Reward[19427][3]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19427][3]["RewardItem"][1]["Id"] = 3007959
	tNoSalesActivity_Reward[19427][3]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19427][3]["Log"] = "0,0,0,0,12000496,2,3007959,1"
	
	tNoSalesActivity_Reward[19427][4] = {}
	tNoSalesActivity_Reward[19427][4]["RewardItem"] = {}
	tNoSalesActivity_Reward[19427][4]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19427][4]["RewardItem"][1]["Id"] = 3007810
	tNoSalesActivity_Reward[19427][4]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19427][4]["Log"] = "0,0,0,0,12000496,2,3007810,1"
	
	tNoSalesActivity_Reward[19428] = {}
	tNoSalesActivity_Reward[19428][1] = {}
	tNoSalesActivity_Reward[19428][1]["RewardItem"] = {}
	tNoSalesActivity_Reward[19428][1]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19428][1]["RewardItem"][1]["Id"] = 3300154
	tNoSalesActivity_Reward[19428][1]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19428][1]["Log"] = "0,0,0,0,12000496,2,3300154,1"
	
	tNoSalesActivity_Reward[19428][2] = {}
	tNoSalesActivity_Reward[19428][2]["RewardItem"] = {}
	tNoSalesActivity_Reward[19428][2]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19428][2]["RewardItem"][1]["Id"] = 3007817
	tNoSalesActivity_Reward[19428][2]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19428][2]["Log"] = "0,0,0,0,12000496,2,3007817,1"
	
	tNoSalesActivity_Reward[19428][3] = {}
	tNoSalesActivity_Reward[19428][3]["RewardItem"] = {}
	tNoSalesActivity_Reward[19428][3]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19428][3]["RewardItem"][1]["Id"] = 3007960
	tNoSalesActivity_Reward[19428][3]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19428][3]["Log"] = "0,0,0,0,12000496,2,3007960,1"
	
	tNoSalesActivity_Reward[19428][4] = {}
	tNoSalesActivity_Reward[19428][4]["RewardItem"] = {}
	tNoSalesActivity_Reward[19428][4]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19428][4]["RewardItem"][1]["Id"] = 3301205
	tNoSalesActivity_Reward[19428][4]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19428][4]["Log"] = "0,0,0,0,12000496,2,3301205,1"
	
	tNoSalesActivity_Reward[19428][5] = {}
	tNoSalesActivity_Reward[19428][5]["RewardItem"] = {}
	tNoSalesActivity_Reward[19428][5]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19428][5]["RewardItem"][1]["Id"] = 3301204
	tNoSalesActivity_Reward[19428][5]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19428][5]["Log"] = "0,0,0,0,12000496,2,3301204,1"
	

	tNoSalesActivity_Reward[19429] = {}
	tNoSalesActivity_Reward[19429][1] = {}
	tNoSalesActivity_Reward[19429][1]["RewardItem"] = {}
	tNoSalesActivity_Reward[19429][1]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19429][1]["RewardItem"][1]["Id"] = 3300147
	tNoSalesActivity_Reward[19429][1]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19429][1]["Log"] = "0,0,0,0,12000496,2,3300147,1"
	
	tNoSalesActivity_Reward[19429][2] = {}
	tNoSalesActivity_Reward[19429][2]["RewardItem"] = {}
	tNoSalesActivity_Reward[19429][2]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19429][2]["RewardItem"][1]["Id"] = 3007764
	tNoSalesActivity_Reward[19429][2]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19429][2]["Log"] = "0,0,0,0,12000496,2,3007764,1"
	
	tNoSalesActivity_Reward[19429][3] = {}
	tNoSalesActivity_Reward[19429][3]["RewardItem"] = {}
	tNoSalesActivity_Reward[19429][3]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19429][3]["RewardItem"][1]["Id"] = 3007765
	tNoSalesActivity_Reward[19429][3]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19429][3]["Log"] = "0,0,0,0,12000496,2,3007765,1"
	
	tNoSalesActivity_Reward[19429][4] = {}
	tNoSalesActivity_Reward[19429][4]["RewardItem"] = {}
	tNoSalesActivity_Reward[19429][4]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19429][4]["RewardItem"][1]["Id"] = 3007766
	tNoSalesActivity_Reward[19429][4]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19429][4]["Log"] = "0,0,0,0,12000496,2,3007766,1"
	
	tNoSalesActivity_Reward[19429][5] = {}
	tNoSalesActivity_Reward[19429][5]["RewardItem"] = {}
	tNoSalesActivity_Reward[19429][5]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19429][5]["RewardItem"][1]["Id"] = 3300140
	tNoSalesActivity_Reward[19429][5]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19429][5]["Log"] = "0,0,0,0,12000496,2,3300140,1"

	tNoSalesActivity_Reward[19430] = {}
	tNoSalesActivity_Reward[19430][1] = {}
	tNoSalesActivity_Reward[19430][1]["RewardItem"] = {}
	tNoSalesActivity_Reward[19430][1]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19430][1]["RewardItem"][1]["Id"] = 3006700
	tNoSalesActivity_Reward[19430][1]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19430][1]["Log"] = "0,0,0,0,12000496,2,3006700,1"
	
	tNoSalesActivity_Reward[19430][2] = {}
	tNoSalesActivity_Reward[19430][2]["RewardItem"] = {}
	tNoSalesActivity_Reward[19430][2]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19430][2]["RewardItem"][1]["Id"] = 3006576
	tNoSalesActivity_Reward[19430][2]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19430][2]["Log"] = "0,0,0,0,12000496,2,3006576,1"
	
	tNoSalesActivity_Reward[19430][3] = {}
	tNoSalesActivity_Reward[19430][3]["RewardItem"] = {}
	tNoSalesActivity_Reward[19430][3]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19430][3]["RewardItem"][1]["Id"] = 3006577
	tNoSalesActivity_Reward[19430][3]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19430][3]["Log"] = "0,0,0,0,12000496,2,3006577,1"
	
	tNoSalesActivity_Reward[19430][4] = {}
	tNoSalesActivity_Reward[19430][4]["RewardItem"] = {}
	tNoSalesActivity_Reward[19430][4]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19430][4]["RewardItem"][1]["Id"] = 3006578
	tNoSalesActivity_Reward[19430][4]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19430][4]["Log"] = "0,0,0,0,12000496,2,3006578,1"
	
	tNoSalesActivity_Reward[19431] = {}
	tNoSalesActivity_Reward[19431][1] = {}
	tNoSalesActivity_Reward[19431][1]["RewardItem"] = {}
	tNoSalesActivity_Reward[19431][1]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19431][1]["RewardItem"][1]["Id"] = 3007795
	tNoSalesActivity_Reward[19431][1]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19431][1]["Log"] = "0,0,0,0,12000496,2,3007795,1"
	
	tNoSalesActivity_Reward[19431][2] = {}
	tNoSalesActivity_Reward[19431][2]["RewardItem"] = {}
	tNoSalesActivity_Reward[19431][2]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19431][2]["RewardItem"][1]["Id"] = 3007796
	tNoSalesActivity_Reward[19431][2]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19431][2]["Log"] = "0,0,0,0,12000496,2,3007796,1"
	
	tNoSalesActivity_Reward[19431][3] = {}
	tNoSalesActivity_Reward[19431][3]["RewardItem"] = {}
	tNoSalesActivity_Reward[19431][3]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19431][3]["RewardItem"][1]["Id"] = 3007797
	tNoSalesActivity_Reward[19431][3]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19431][3]["Log"] = "0,0,0,0,12000496,2,3007797,1"
	
	tNoSalesActivity_Reward[19431][4] = {}
	tNoSalesActivity_Reward[19431][4]["RewardItem"] = {}
	tNoSalesActivity_Reward[19431][4]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19431][4]["RewardItem"][1]["Id"] = 3007798
	tNoSalesActivity_Reward[19431][4]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19431][4]["Log"] = "0,0,0,0,12000496,2,3007798,1"
	
	tNoSalesActivity_Reward[19974] = {}
	tNoSalesActivity_Reward[19974][1] = {}
	tNoSalesActivity_Reward[19974][1]["RewardItem"] = {}
	tNoSalesActivity_Reward[19974][1]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19974][1]["RewardItem"][1]["Id"] = 3301220
	tNoSalesActivity_Reward[19974][1]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19974][1]["Log"] = "0,0,0,0,12000496,2,3301220,1"
	
	tNoSalesActivity_Reward[19974][2] = {}
	tNoSalesActivity_Reward[19974][2]["RewardItem"] = {}
	tNoSalesActivity_Reward[19974][2]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19974][2]["RewardItem"][1]["Id"] = 3301221
	tNoSalesActivity_Reward[19974][2]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19974][2]["Log"] = "0,0,0,0,12000496,2,3301221,1"
	
	tNoSalesActivity_Reward[19974][3] = {}
	tNoSalesActivity_Reward[19974][3]["RewardItem"] = {}
	tNoSalesActivity_Reward[19974][3]["RewardItem"][1] = {}
	tNoSalesActivity_Reward[19974][3]["RewardItem"][1]["Id"] = 3301222
	tNoSalesActivity_Reward[19974][3]["RewardItem"][1]["Attr"] = "0 1"
	tNoSalesActivity_Reward[19974][3]["Log"] = "0,0,0,0,12000496,2,3301222,1"
	

local tNoSalesActivity_StcItem = {}
	tNoSalesActivity_StcItem[19427] = {}
	tNoSalesActivity_StcItem[19427][1] = {}
	tNoSalesActivity_StcItem[19427][1]["EventType"] = 148
	tNoSalesActivity_StcItem[19427][1]["DataType"] = 06

	tNoSalesActivity_StcItem[19427][2] = {}
	tNoSalesActivity_StcItem[19427][2]["EventType"] = 148
	tNoSalesActivity_StcItem[19427][2]["DataType"] = 07

	tNoSalesActivity_StcItem[19427][3] = {}
	tNoSalesActivity_StcItem[19427][3]["EventType"] = 148
	tNoSalesActivity_StcItem[19427][3]["DataType"] = 08

	tNoSalesActivity_StcItem[19427][4] = {}
	tNoSalesActivity_StcItem[19427][4]["EventType"] = 148
	tNoSalesActivity_StcItem[19427][4]["DataType"] = 09

local tNoSalesActivity_FHstc = {}
	-- 积分掩码
	tNoSalesActivity_FHstc[1] = {}
	tNoSalesActivity_FHstc[1]["EventType"] = 148
	tNoSalesActivity_FHstc[1]["DataType"] = 03
	
	-- 兑换次数
	tNoSalesActivity_FHstc[2] = {}
	tNoSalesActivity_FHstc[2]["EventType"] = 148
	tNoSalesActivity_FHstc[2]["DataType"] = 32
	

local tNoSalesActivity_Space = {}
	tNoSalesActivity_Space[1] = {1,270}
	tNoSalesActivity_Space[2] = {3,2700}
	tNoSalesActivity_Space[3] = {8,13500}
	tNoSalesActivity_Space[4] = {13,27000}
	tNoSalesActivity_Space[5] = {13,54000}
	tNoSalesActivity_Space[6] = {13,135000}
	tNoSalesActivity_Space[7] = {13,270000}
	
	
local tNoSalesActivity_Exchange = {}
	tNoSalesActivity_Exchange[270] = {}
	tNoSalesActivity_Exchange[270]["RewardItem"] = {}
	tNoSalesActivity_Exchange[270]["RewardItem"][1] = {}
	tNoSalesActivity_Exchange[270]["RewardItem"][1]["Id"] = 3008993
	tNoSalesActivity_Exchange[270]["RewardItem"][1]["Attr"] = "0 5"
	tNoSalesActivity_Exchange[270]["Log"] = "0,0,0,0,12000496,2,3008993,5"

	tNoSalesActivity_Exchange[2700] = {}
	tNoSalesActivity_Exchange[2700]["RewardItem"] = {}
	tNoSalesActivity_Exchange[2700]["RewardItem"][1] = {}
	tNoSalesActivity_Exchange[2700]["RewardItem"][1]["Id"] = 3008993
	tNoSalesActivity_Exchange[2700]["RewardItem"][1]["Attr"] = "0 10"
	tNoSalesActivity_Exchange[2700]["Log"] = "0,0,0,0,12000496,2,3008993,10"

	tNoSalesActivity_Exchange[13500] = {}
	tNoSalesActivity_Exchange[13500]["RewardItem"] = {}
	tNoSalesActivity_Exchange[13500]["RewardItem"][1] = {}
	tNoSalesActivity_Exchange[13500]["RewardItem"][1]["Id"] = 3008993
	tNoSalesActivity_Exchange[13500]["RewardItem"][1]["Attr"] = "0 20"
	tNoSalesActivity_Exchange[13500]["RewardItem"][2] = {}
	tNoSalesActivity_Exchange[13500]["RewardItem"][2]["Id"] = 3300036
	tNoSalesActivity_Exchange[13500]["RewardItem"][2]["Attr"] = "0 1"
	tNoSalesActivity_Exchange[13500]["Log"] = "0,0,0,0,12000496,2,3008993[3300036],20[1]"

	tNoSalesActivity_Exchange[27000] = {}
	tNoSalesActivity_Exchange[27000]["RewardItem"] = {}
	tNoSalesActivity_Exchange[27000]["RewardItem"][1] = {}
	tNoSalesActivity_Exchange[27000]["RewardItem"][1]["Id"] = 3009001
	tNoSalesActivity_Exchange[27000]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tNoSalesActivity_Exchange[27000]["RewardItem"][2] = {}
	tNoSalesActivity_Exchange[27000]["RewardItem"][2]["Id"] = 3300036
	tNoSalesActivity_Exchange[27000]["RewardItem"][2]["Attr"] = "0 1"	
	tNoSalesActivity_Exchange[27000]["RewardStrengthValue"] = {}
	tNoSalesActivity_Exchange[27000]["RewardStrengthValue"]["Value"] = 2000	
	tNoSalesActivity_Exchange[27000]["Log"] = "0,0,0,0,12000496,2,3009001[3300036][12],5[1][2000]"
	
	tNoSalesActivity_Exchange[54000] = {}
	tNoSalesActivity_Exchange[54000]["RewardItem"] = {}
	tNoSalesActivity_Exchange[54000]["RewardItem"][1] = {}
	tNoSalesActivity_Exchange[54000]["RewardItem"][1]["Id"] = 3300036
	tNoSalesActivity_Exchange[54000]["RewardItem"][1]["Attr"] = "0 1"	
	tNoSalesActivity_Exchange[54000]["RewardStrengthValue"] = {}
	tNoSalesActivity_Exchange[54000]["RewardStrengthValue"]["Value"] = 5000	
	tNoSalesActivity_Exchange[54000]["Log"] = "0,0,0,0,12000496,2,3300036[12],1[5000]"
	
	tNoSalesActivity_Exchange[135000] = {}
	tNoSalesActivity_Exchange[135000]["RewardItem"] = {}
	tNoSalesActivity_Exchange[135000]["RewardItem"][1] = {}
	tNoSalesActivity_Exchange[135000]["RewardItem"][1]["Id"] = 3300036
	tNoSalesActivity_Exchange[135000]["RewardItem"][1]["Attr"] = "0 1"	
	tNoSalesActivity_Exchange[135000]["RewardStrengthValue"] = {}
	tNoSalesActivity_Exchange[135000]["RewardStrengthValue"]["Value"] = 10000	
	tNoSalesActivity_Exchange[135000]["Log"] = "0,0,0,0,12000496,2,3300036[12],1[10000]"
	
	tNoSalesActivity_Exchange[270000] = {}
	tNoSalesActivity_Exchange[270000]["RewardItem"] = {}
	tNoSalesActivity_Exchange[270000]["RewardItem"][1] = {}
	tNoSalesActivity_Exchange[270000]["RewardItem"][1]["Id"] = 3300036
	tNoSalesActivity_Exchange[270000]["RewardItem"][1]["Attr"] = "0 1"	
	tNoSalesActivity_Exchange[270000]["RewardStrengthValue"] = {}
	tNoSalesActivity_Exchange[270000]["RewardStrengthValue"]["Value"] = 30000	
	tNoSalesActivity_Exchange[270000]["Log"] = "0,0,0,0,12000496,2,3300036[12],1[30000]"
	

	
------------------------------------------------------------------------------------------------------------------------
function NoSalesActivity_GetReward(nNpcId,nFlag)
	-- 判断时间
	if not Sys_ChkFullTime(tNoSalesActivity_Cont["ActivityTime"]) then	
		return
	end
	
	-- 判断玩家是否已有这个轮盘
	local nItemId = tNoSalesActivity_Reward[nNpcId][nFlag]["RewardItem"][1]["Id"]
	if Item_ChkItem(nItemId) then
		Sys_MsgBox(tNoSalesActivity_Text["Msg"][nNpcId])
		return
	end
	
	if not User_CheckLeftSpace(tNoSalesActivity_Cont["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	if tNoSalesActivity_StcItem[nNpcId] ~= nil and tNoSalesActivity_StcItem[nNpcId][nFlag] ~= nil then
		local nEvent = tNoSalesActivity_StcItem[nNpcId][nFlag]["EventType"]
		local nType = tNoSalesActivity_StcItem[nNpcId][nFlag]["DataType"]
		
		if Task_ChkStcValue(nEvent,nType,"==",0) or Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		else
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end	
	end
	RewardTemplate_Reward(tNoSalesActivity_Reward[nNpcId][nFlag])
	Sys_DialogText(tNoSalesActivity_Text[nNpcId]["Text911"][nFlag])
	Sys_DialogOption(tNoSalesActivity_Text[nNpcId]["Option911"]) 
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()

end


-- 兑换奖励
function NoSalesActivity_GetFHReward(nNpcId)
	if not Sys_ChkFullTime(tNoSalesActivity_Cont["FHActivityTime"]) then
		return
	end
	local nEvent = tNoSalesActivity_FHstc[2]["EventType"]
	local nType = tNoSalesActivity_FHstc[2]["DataType"]
	local nFlag = Get_UserStatisticValue(nEvent,nType)
	
	if nFlag ~= 0 then
		return
	end

	-- 满足条件，进行积分判断
	local nJfEvent = tNoSalesActivity_FHstc[1]["EventType"]
	local nJfType = tNoSalesActivity_FHstc[1]["DataType"]
	local nJfFlag = Get_UserStatisticValue(nJfEvent,nJfType)

	local nSpace = 0
	
	if nJfFlag < 270 then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	if nJfFlag >= 270000 then
		nSpace = tNoSalesActivity_Space[7][1]
	end

	if nSpace == 0 then	
		for k,v in pairs(tNoSalesActivity_Space) do
			if v[2] > nJfFlag then
				nSpace = tNoSalesActivity_Space[k-1][1]
				break
			elseif v[2] == nJfFlag then
				nSpace = v[1]
				break
			end		
		end
	end
	
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	
	--都满足情况
	Task_SetStatistic(nEvent,nType,1,1)
	
	for m,n in pairs(tNoSalesActivity_Exchange) do
		if nJfFlag >= m then
			RewardTemplate_Reward(tNoSalesActivity_Exchange[m])
		end
	end
	
	User_TalkChannel2005(tBackpackLetter_Text["TalkMsg"])
end

-------------------------------------------------------------------------------------------------------------------------


--[[
-- 零元大放送
tNpcFace[4291] = 119
tNpcGossip[19427] = tNpcGossip[19427] or DefaultNpc:new{}
tNpcGossip[19427]["OptionHidden"] = 1

tNpcGossip[19427]["Text1-1"] = {111,112,113}
tNpcGossip[19427]["Text111"] = tNoSalesActivity_Text[19427]["Text111"]
tNpcGossip[19427]["Text112"] = tNoSalesActivity_Text[19427]["Text112"]
tNpcGossip[19427]["Text113"] = tNoSalesActivity_Text[19427]["Text113"]
tNpcGossip[19427]["tOption1-1"] = {111,112,113,114}
tNpcGossip[19427]["ChkFunc1-1"] = function()
	return true
end

tNpcGossip[19427]["Option111"] = tNoSalesActivity_Text[19427]["Option111"]
tNpcGossip[19427]["OptionFunc111"] = "NoSalesActivity_GetReward</N>19427</N>1"
tNpcGossip[19427]["Option112"] = tNoSalesActivity_Text[19427]["Option112"]
tNpcGossip[19427]["OptionFunc112"] = "NoSalesActivity_GetReward</N>19427</N>2"
tNpcGossip[19427]["Option113"] = tNoSalesActivity_Text[19427]["Option113"]
tNpcGossip[19427]["OptionFunc113"] = "NoSalesActivity_GetReward</N>19427</N>3"
tNpcGossip[19427]["Option114"] = tNoSalesActivity_Text[19427]["Option114"]
tNpcGossip[19427]["OptionFunc114"] = "NoSalesActivity_GetReward</N>19427</N>4"

-- 已经领取过了
tNpcGossip[19427]["Text2-1"] = {211}
tNpcGossip[19427]["Text211"] = tNoSalesActivity_Text[19427]["Text211"]
tNpcGossip[19427]["tOption2-1"] = {211}
tNpcGossip[19427]["Option211"] = tNoSalesActivity_Text[19427]["Option211"]


-- 背包满
tNpcGossip[19427]["Text3-1"] = {311}
tNpcGossip[19427]["Text311"] = tNoSalesActivity_Text[19427]["Text311"]
tNpcGossip[19427]["tOption3-1"] = {311}
tNpcGossip[19427]["Option311"] = tNoSalesActivity_Text[19427]["Option311"]


-- 一元狂秒杀
tNpcFace[4292] = 81
tNpcGossip[19428] = tNpcGossip[19428] or DefaultNpc:new{}
tNpcGossip[19428]["OptionHidden"] = 1
tNpcGossip[19428]["DialogueText"] = tNoSalesActivity_Text[19428]
tNpcGossip[19428]["Text1-1"] = {111,112,113,114}
tNpcGossip[19428]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[19428]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tNoSalesActivity_Cont["ActivityTime"])
end

tNpcGossip[19428]["OptionFunc111"] = "NoSalesActivity_GetReward</N>19428</N>1"
tNpcGossip[19428]["OptionFunc112"] = "NoSalesActivity_GetReward</N>19428</N>2"
tNpcGossip[19428]["OptionFunc113"] = "NoSalesActivity_GetReward</N>19428</N>3"
tNpcGossip[19428]["OptionFunc114"] = "NoSalesActivity_GetReward</N>19428</N>4"
tNpcGossip[19428]["OptionFunc115"] = "NoSalesActivity_GetReward</N>19428</N>5"







-- tNpcGossip[19428]["Text1-2"] = {121,122,123}
-- tNpcGossip[19428]["Text121"] = tNoSalesActivity_Text[19428]["Text121"]
-- tNpcGossip[19428]["Text122"] = tNoSalesActivity_Text[19428]["Text122"]
-- tNpcGossip[19428]["Text123"] = tNoSalesActivity_Text[19428]["Text123"]
-- tNpcGossip[19428]["tOption1-2"] = {121,123,122}
-- tNpcGossip[19428]["ChkFunc1-2"] = function()

	-- local nEvent = tNoSalesActivity_FHstc[1]["EventType"]
	-- local nType = tNoSalesActivity_FHstc[1]["DataType"]
	-- local nJFdata = Get_UserStatisticValue(nEvent,nType)
	
	-- tNpcGossip[19428]["Text123"] = string.format(tNoSalesActivity_Text[19428]["Text123"],nJFdata)
	-- return true
-- end

-- tNpcGossip[19428]["OptionFunc121"] = "NoSalesActivity_GetFHReward</N>19428"
-- tNpcGossip[19428]["OptionChkFunc121"] = function ()
	-- local nEvent = tNoSalesActivity_FHstc[2]["EventType"]
	-- local nType = tNoSalesActivity_FHstc[2]["DataType"]
	-- local nFlag = Get_UserStatisticValue(nEvent,nType)

	-- if nFlag == 0 then
		-- return true
	-- else
		-- return false
	-- end
-- end


-- tNpcGossip[19428]["Option122"] = tNoSalesActivity_Text[19428]["Option122"]
-- tNpcGossip[19428]["Option123"] = tNoSalesActivity_Text[19428]["Option123"]
-- tNpcGossip[19428]["OptionPoint123"] = "7-1"

-- 积分不足
-- tNpcGossip[19428]["Text5-1"] = {511}
-- tNpcGossip[19428]["Text511"] = tNoSalesActivity_Text[19428]["Text511"]
-- tNpcGossip[19428]["tOption5-1"] = {511}
-- tNpcGossip[19428]["Option511"] = tNoSalesActivity_Text[19428]["Option511"]

-- tNpcGossip[19428]["Text6-1"] = {611}
-- tNpcGossip[19428]["Text611"] = tNoSalesActivity_Text[19428]["Text611"]
-- tNpcGossip[19428]["tOption6-1"] = {611}
-- tNpcGossip[19428]["Option611"] = tNoSalesActivity_Text[19428]["Option611"]


--【接B、查看积分奖励】
-- tNpcGossip[19428]["Text7-1"] = {711,712,713,714,715,716,717}
-- tNpcGossip[19428]["Text711"] = tNoSalesActivity_Text[19428]["Text711"]
-- tNpcGossip[19428]["Text712"] = tNoSalesActivity_Text[19428]["Text712"]
-- tNpcGossip[19428]["Text713"] = tNoSalesActivity_Text[19428]["Text713"]
-- tNpcGossip[19428]["Text714"] = tNoSalesActivity_Text[19428]["Text714"]
-- tNpcGossip[19428]["Text715"] = tNoSalesActivity_Text[19428]["Text715"]
-- tNpcGossip[19428]["Text716"] = tNoSalesActivity_Text[19428]["Text716"]
-- tNpcGossip[19428]["Text717"] = tNoSalesActivity_Text[19428]["Text717"]

-- tNpcGossip[19428]["tOption7-1"] = {711}


-- tNpcGossip[19428]["Text711"] = tNoSalesActivity_Text[19428]["Text711"]

-- 背包满
tNpcGossip[19428]["Text3-1"] = {311}
tNpcGossip[19428]["tOption3-1"] = {311}


-- 追加大风暴
tNpcFace[4293] = 90
tNpcGossip[19429] = tNpcGossip[19429] or DefaultNpc:new{}
tNpcGossip[19429]["OptionHidden"] = 1
tNpcGossip[19429]["DialogueText"] = tNoSalesActivity_Text[19429]
tNpcGossip[19429]["Text1-1"] = {111,112,113,114}
tNpcGossip[19429]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[19429]["ChkFunc1-1"] = function()
	return true
end

tNpcGossip[19429]["OptionFunc111"] = "NoSalesActivity_GetReward</N>19429</N>1"
tNpcGossip[19429]["OptionFunc112"] = "NoSalesActivity_GetReward</N>19429</N>2"
tNpcGossip[19429]["OptionFunc113"] = "NoSalesActivity_GetReward</N>19429</N>3"
tNpcGossip[19429]["OptionFunc114"] = "NoSalesActivity_GetReward</N>19429</N>4"
tNpcGossip[19429]["OptionFunc115"] = "NoSalesActivity_GetReward</N>19429</N>5"


-- 背包满
tNpcGossip[19429]["Text3-1"] = {311}
tNpcGossip[19429]["tOption3-1"] = {311}


-- 点石炼成金
tNpcFace[4294] = 111
tNpcGossip[19430] = tNpcGossip[19430] or DefaultNpc:new{}
tNpcGossip[19430]["OptionHidden"] = 1
tNpcGossip[19430]["DialogueText"] = tNoSalesActivity_Text[19430]
tNpcGossip[19430]["Text1-1"] = {111,112,113,114}
tNpcGossip[19430]["tOption1-1"] = {111,112,113,114,115}
tNpcGossip[19430]["ChkFunc1-1"] = function()
	return true
end

tNpcGossip[19430]["OptionFunc111"] = "NoSalesActivity_GetReward</N>19430</N>1"
tNpcGossip[19430]["OptionFunc112"] = "NoSalesActivity_GetReward</N>19430</N>2"
tNpcGossip[19430]["OptionFunc113"] = "NoSalesActivity_GetReward</N>19430</N>3"
tNpcGossip[19430]["OptionFunc114"] = "NoSalesActivity_GetReward</N>19430</N>4"


-- 背包满
tNpcGossip[19430]["Text3-1"] = {311}
tNpcGossip[19430]["tOption3-1"] = {311}


-- 豪取黄泉图
tNpcFace[4295] = 113
tNpcGossip[19431] = tNpcGossip[19431] or DefaultNpc:new{}
tNpcGossip[19431]["OptionHidden"] = 1
tNpcGossip[19431]["DialogueText"] = tNoSalesActivity_Text[19431]
tNpcGossip[19431]["Text1-1"] = {111,112,113,114}
tNpcGossip[19431]["tOption1-1"] = {111,112,113,114,115}
tNpcGossip[19431]["ChkFunc1-1"] = function()
	return true
end

tNpcGossip[19431]["OptionFunc111"] = "NoSalesActivity_GetReward</N>19431</N>1"
tNpcGossip[19431]["OptionFunc112"] = "NoSalesActivity_GetReward</N>19431</N>2"
tNpcGossip[19431]["OptionFunc113"] = "NoSalesActivity_GetReward</N>19431</N>3"
tNpcGossip[19431]["OptionFunc114"] = "NoSalesActivity_GetReward</N>19431</N>4"


-- 背包满
tNpcGossip[19431]["Text3-1"] = {311}
tNpcGossip[19431]["tOption3-1"] = {311}

]]--
--喵掌柜
tNpcFace[4417] = 738
tNpcGossip[19974] = tNpcGossip[19974] or DefaultNpc:new{}
tNpcGossip[19974]["OptionHidden"] = 1
tNpcGossip[19974]["DialogueText"] = tNoSalesActivity_Text[19974]
tNpcGossip[19974]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19974]["tOption1-1"] = {111,112,113,114}
--去除新老服判断（wyk）
-- tNpcGossip[19974]["ChkFunc1-1"] = function()
	-- local nMark = Get_SysDynaGlobalData0(tNoSalesActivity_Cont["GlobalId"])
	-- if nMark == 0 then
		-- tNpcGossip[19974]["Text1-1"] = {111,112,113,114,115}
	-- else
		-- tNpcGossip[19974]["Text1-1"] = {111,112,113,116,115}
	-- end
	-- return true
-- end

tNpcGossip[19974]["OptionFunc111"] = "NoSalesActivity_GetReward</N>19974</N>1"
tNpcGossip[19974]["OptionFunc112"] = "NoSalesActivity_GetReward</N>19974</N>2"
tNpcGossip[19974]["OptionFunc113"] = "NoSalesActivity_GetReward</N>19974</N>3"

--去除新老服判断（wyk）
-- tNpcGossip[19974]["OptionChkFunc111"] = function ()
	-- local nMark = Get_SysDynaGlobalData0(tNoSalesActivity_Cont["GlobalId"])
	-- if nMark == 0 then
		-- return true
	-- else
		-- return false
	-- end
-- end

--去除新老服判断（wyk）
-- tNpcGossip[19974]["OptionChkFunc112"] = function ()
	-- local nMark = Get_SysDynaGlobalData0(tNoSalesActivity_Cont["GlobalId"])
	-- if nMark == 0 then
		-- return true
	-- else
		-- return false
	-- end
-- end

-- 背包满
tNpcGossip[19974]["Text3-1"] = {311}
tNpcGossip[19974]["tOption3-1"] = {311}

tNpcGossip[19974]["Text9-1"] = {911,912}
tNpcGossip[19974]["tOption9-1"] = {911}
tNpcGossip[19974]["ChkFunc1-1"] = function()
	local nMark = Get_SysDynaGlobalData0(tNoSalesActivity_Cont["GlobalId"])
	if nMark == 0 then
		tNpcGossip[19974]["Text1-1"] = {111,112,113,114,115}
	else
		tNpcGossip[19974]["Text1-1"] = {111,112,113,116,115}
	end
	return true
end



