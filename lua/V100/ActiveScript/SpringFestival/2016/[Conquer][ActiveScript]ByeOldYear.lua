------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]2016新年开开心心辞旧岁
--Creator: 		魏贻逵
--Created:		2015/10/27
------------------------------------------------------------------------------------
--活动时间：2016年2月3日-2016年2月22日
--命名前命名前缀 NewYear_ByeOldYear
--13202 杀怪数量 
--13203 领取奖励 =1接任务 =2领奖励
--13240 烟花使用间隔
------------------------------------------------------------------------------------

local	tNewYear_ByeOldYear_Cont = {}
		tNewYear_ByeOldYear_Cont["Beftime"] = "2016-01-01 00:00 2017-01-27 23:59"
		tNewYear_ByeOldYear_Cont["Nowtime"] = "2017-01-28 00:00 2017-02-06 23:59"
		tNewYear_ByeOldYear_Cont["Aftime"] = "2017-02-07 00:00 2020-01-01 23:59"

		tNewYear_ByeOldYear_Cont["Level"] = 80
		tNewYear_ByeOldYear_Cont["Metempsychosis"] = 0

		tNewYear_ByeOldYear_Cont[1] = {}
		tNewYear_ByeOldYear_Cont[1]["Mapid"] = 3906
		tNewYear_ByeOldYear_Cont[1]["PosX"] = 76
		tNewYear_ByeOldYear_Cont[1]["PosY"] = 55

		tNewYear_ByeOldYear_Cont[2] = {}
		tNewYear_ByeOldYear_Cont[2]["Mapid"] = 1002
		tNewYear_ByeOldYear_Cont[2]["PosX"] = 288
		tNewYear_ByeOldYear_Cont[2]["PosY"] = 380
		
		tNewYear_ByeOldYear_Cont[3] = {}
		tNewYear_ByeOldYear_Cont[3]["Mapid"] = 3906
		tNewYear_ByeOldYear_Cont[3]["PosX"] = 74
		tNewYear_ByeOldYear_Cont[3]["PosY"] = 55
		tNewYear_ByeOldYear_Cont[3]["Npcid"] = 10749

local	tNewYear_ByeOldYear_Stc = {}
		tNewYear_ByeOldYear_Stc[1] = {} 
		tNewYear_ByeOldYear_Stc[1]["EventType"] = 132
		tNewYear_ByeOldYear_Stc[1]["DataType"] = 02

		tNewYear_ByeOldYear_Stc[2] = {} 
		tNewYear_ByeOldYear_Stc[2]["EventType"] = 132
		tNewYear_ByeOldYear_Stc[2]["DataType"] = 03 
		
		tNewYear_ByeOldYear_Stc[3] = {} 
		tNewYear_ByeOldYear_Stc[3]["EventType"] = 132
		tNewYear_ByeOldYear_Stc[3]["DataType"] = 40 

local	tNewYear_ByeOldYear_AddItem = {}
		tNewYear_ByeOldYear_AddItem[1] = 3005544
		tNewYear_ByeOldYear_AddItem[2] = 3005545
		tNewYear_ByeOldYear_AddItem[3] = 3005546
		tNewYear_ByeOldYear_AddItem[4] = 3005547
		tNewYear_ByeOldYear_AddItem[5] = 3005548
		tNewYear_ByeOldYear_AddItem[6] = 3005549
		tNewYear_ByeOldYear_AddItem[7] = 3005550
		tNewYear_ByeOldYear_AddItem[8] = 3005552


local	tNewYear_ByeOldYear_log = {} 
		tNewYear_ByeOldYear_log["LogId"] = 10002331
		tNewYear_ByeOldYear_log["FestivalId"] = 3359
		tNewYear_ByeOldYear_log[1] = "0,0,0,0,10002331,1[1],0,0"  --进活动地图
		tNewYear_ByeOldYear_log[2] = "0,0,0,0,10002331,1,0,1"  --杀死5个怪
		tNewYear_ByeOldYear_log[3] = "0,0,0,0,10002331,2,%d,1"  --杀怪获得的物品
		tNewYear_ByeOldYear_log[4] = "0,0,%d,1,10002331,2,0,0"  --过期删除物品
		tNewYear_ByeOldYear_log[5] = "0,0,0,0,10002331,1[2],0,0" --完成任务

		tNewYear_ByeOldYear_log[10] = "0,0,3005544,1,10002331,2,0,0" 
		tNewYear_ByeOldYear_log[11] = "0,0,3005545,1,10002331,2,1,100" 
		tNewYear_ByeOldYear_log[12] = "0,0,3005546,1,10002331,2,0,0" 
		tNewYear_ByeOldYear_log[13] = "0,0,3005547,1,10002331,2,4,10" 
		tNewYear_ByeOldYear_log[14] = "0,0,3005547,1,10002331,2,6,5" 
		tNewYear_ByeOldYear_log[15] = "0,0,3005548,1,10002331,2,0,0" 
		tNewYear_ByeOldYear_log[16] = "0,0,3005549,1,10002331,2,0,0" 
		tNewYear_ByeOldYear_log[17] = "0,0,3005550,1,10002331,2,3005551,2" 
		tNewYear_ByeOldYear_log[18] = "0,0,3005551,1,10002331,2,5,1" 
		tNewYear_ByeOldYear_log[19] = "0,0,3005552,1,10002331,2,0,0" 

---------------------------------------NPC逻辑-------------------------------------
--我要驱“岁”兽辞旧岁！
function NewYear_ByeOldYear_Option3_10748(nNpcId)
--判断时间
	if not Sys_ChkFullTime(tNewYear_ByeOldYear_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

--判断等级
	if not User_JudgeLevelAndMetempsychosis(tNewYear_ByeOldYear_Cont["Level"],tNewYear_ByeOldYear_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

--隔天清掩码
	if Task_StcInterval(tNewYear_ByeOldYear_Stc[2]["EventType"],tNewYear_ByeOldYear_Stc[2]["DataType"],1,4) then
		Task_SetStatistic(tNewYear_ByeOldYear_Stc[2]["EventType"], tNewYear_ByeOldYear_Stc[2]["DataType"],0,1,0)
		Task_SetStcTimestamp(tNewYear_ByeOldYear_Stc[2]["EventType"],tNewYear_ByeOldYear_Stc[2]["DataType"],0,0)
		
	end

--判断已完成
	if Task_ChkStcValue(tNewYear_ByeOldYear_Stc[2]["EventType"],tNewYear_ByeOldYear_Stc[2]["DataType"],">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end	

--判断是否杀死5个
	if Task_ChkStcValue(tNewYear_ByeOldYear_Stc[1]["EventType"],tNewYear_ByeOldYear_Stc[1]["DataType"],">=",5) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end	

--判断背包空间
	if not User_CheckLeftSpace(5) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end

--传送
	if not User_UserRandBoundTrans(tNewYear_ByeOldYear_Cont[1]["Mapid"],tNewYear_ByeOldYear_Cont[1]["PosX"],tNewYear_ByeOldYear_Cont[1]["PosY"],5,5,0,0) then
		return
	end
	Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[1])
	User_TalkChannel2005(tNewYear_ByeOldYear_Text[1])
	LinkNpcGossipFunc_New(nNpcId,"2-9")

end

--我要领取辞旧岁奖励。
function NewYear_ByeOldYear_Option4_10748(nNpcId)
	if not Sys_ChkFullTime(tNewYear_ByeOldYear_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

--隔天清掩码
	if Task_StcInterval(tNewYear_ByeOldYear_Stc[2]["EventType"],tNewYear_ByeOldYear_Stc[2]["DataType"],1,4) then
		Task_SetStatistic(tNewYear_ByeOldYear_Stc[2]["EventType"], tNewYear_ByeOldYear_Stc[2]["DataType"],0,1,0)
		Task_SetStcTimestamp(tNewYear_ByeOldYear_Stc[2]["EventType"],tNewYear_ByeOldYear_Stc[2]["DataType"],0,0)
	end
	
--判断已完成
	if Task_ChkStcValue(tNewYear_ByeOldYear_Stc[2]["EventType"],tNewYear_ByeOldYear_Stc[2]["DataType"],">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end

--判断是否杀死5个
	if not Task_ChkStcValue(tNewYear_ByeOldYear_Stc[1]["EventType"],tNewYear_ByeOldYear_Stc[1]["DataType"],">=",5) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end

--判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end

--领奖打掩码
	Task_SetStatistic(tNewYear_ByeOldYear_Stc[2]["EventType"],tNewYear_ByeOldYear_Stc[2]["DataType"],1,1,0)
	Task_SetStcTimestamp(tNewYear_ByeOldYear_Stc[2]["EventType"],tNewYear_ByeOldYear_Stc[2]["DataType"],0,0)
	Task_SetStatistic(tNewYear_ByeOldYear_Stc[1]["EventType"],tNewYear_ByeOldYear_Stc[1]["DataType"],0,1,0)
	FestivalGeneralPackage_GetGift(tNewYear_ByeOldYear_log["FestivalId"],tNewYear_ByeOldYear_log["LogId"])
	Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[5])
	LinkNpcGossipFunc_New(nNpcId,"2-7")

end

function NewYear_ByeOldYear_Option1_10749(nNpcId)
	if not Task_ChkStcValue(tNewYear_ByeOldYear_Stc[1]["EventType"],tNewYear_ByeOldYear_Stc[1]["DataType"],">=",5) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end

	NewYear_ByeOldYear_Option11_10749(nNpcId)
end

--是的，我要离开。
function NewYear_ByeOldYear_Option11_10749(nNpcId)
--传送和提示
	if Get_NpcMapID() ~= Get_UserMapId() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	if not User_UserRandBoundTrans(tNewYear_ByeOldYear_Cont[2]["Mapid"],tNewYear_ByeOldYear_Cont[2]["PosX"],tNewYear_ByeOldYear_Cont[2]["PosY"],5,5,0,0) then
		return
	end
	User_TalkChannel2005(tNewYear_ByeOldYear_Text[2])

end

---------------------------------------怪物掉落-------------------------------------
function NewYear_ByeOldYear_Monster(nMonsterTypeId)
--判断时间
	if not Sys_ChkFullTime(tNewYear_ByeOldYear_Cont["Nowtime"]) then
		return
	end

--判断是否杀死5个
	if Task_ChkStcValue(tNewYear_ByeOldYear_Stc[1]["EventType"],tNewYear_ByeOldYear_Stc[1]["DataType"],">=",5) then
		User_TalkChannel2005(tNewYear_ByeOldYear_Text[4])
		return
	end

--杀怪数量+1
	Task_AddStatistic(tNewYear_ByeOldYear_Stc[1]["EventType"],tNewYear_ByeOldYear_Stc[1]["DataType"],1,1,0)
	
--判断是否杀死5个
	if Task_ChkStcValue(tNewYear_ByeOldYear_Stc[1]["EventType"],tNewYear_ByeOldYear_Stc[1]["DataType"],">=",5) then
		Sys_MsgBox(tNewYear_ByeOldYear_Text[4],"NewYear_ByeOldYear_Monster_1")
		Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[2])
		return
	end
	
--判断背包空间
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tNewYear_ByeOldYear_Text[5])
		return
	end

--设置概率
	if Sys_Random(8,10) then
		local nNum = math.random(1,8)
		local nItemId = tNewYear_ByeOldYear_AddItem[nNum]
		local sLog = string.format(tNewYear_ByeOldYear_log[3],nItemId)
		Item_AddItem(nItemId)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tNewYear_ByeOldYear_Text[6])
	else
		User_TalkChannel2005(tNewYear_ByeOldYear_Text[3])
	end

end

--杀死5个点确定寻路
function NewYear_ByeOldYear_Monster_1()

	Sys_GotoSomeWhere(tNewYear_ByeOldYear_Cont[3]["PosX"],tNewYear_ByeOldYear_Cont[3]["PosY"],tNewYear_ByeOldYear_Cont[3]["Mapid"],tNewYear_ByeOldYear_Cont[3]["Npcid"])

end
---------------------------------------物品使用-------------------------------------
function NewYear_ByeOldYear_Item(nItemId)
	if not Sys_ChkFullTime(tNewYear_ByeOldYear_Cont["Nowtime"]) then
		local sLog = string.format(tNewYear_ByeOldYear_log[4],nItemId)
		if Item_DelItem(nItemId) then
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tNewYear_ByeOldYear_Text[10])
			return
		end
		return
	end

	if nItemId == 3005544 then
		local nEventType = tNewYear_ByeOldYear_Stc[3]["EventType"]
		local nDataType = tNewYear_ByeOldYear_Stc[3]["DataType"]
		if Task_StcInterval(nEventType,nDataType,10,0) or Task_ChkStcValue(nEventType,nDataType,"==",0)then
			if Item_DelItem(nItemId) then
				Task_SetStatistic(tNewYear_ByeOldYear_Stc[3]["EventType"],tNewYear_ByeOldYear_Stc[3]["DataType"],1,1,0)
				Task_SetStcTimestamp(tNewYear_ByeOldYear_Stc[3]["EventType"],tNewYear_ByeOldYear_Stc[3]["DataType"],0,0)
				User_EffectAdd("self","FF17")
				Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[10])
				User_TalkChannel2005(tNewYear_ByeOldYear_Text[12])
			end
		else
			Sys_MsgBox(tNewYear_ByeOldYear_Text[11])
		end
		return
	end

	if nItemId == 3005545 then
		if User_CanPutMoney2Bag(100) then
			if Item_DelItem(nItemId) then
				User_AddMoney(100) 
				Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[11])
				User_TalkChannel2005(tNewYear_ByeOldYear_Text[13])
			end	
		else	
			Sys_MsgBox(tNewYear_ByeOldYear_Text[14])
		end
		return
	end
	
	if nItemId == 3005546 then
		if Item_DelItem(nItemId) then
			User_EffectAdd("self","balloon4-1")
			Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[12])
			User_TalkChannel2005(tNewYear_ByeOldYear_Text[15])
		end
		return
	end

	if nItemId == 3005547 then
		if Item_DelItem(nItemId) then
			local nLevel = Get_UserLevel()
			if nLevel < G_User_MaxLev then
				User_AddExpTime(10)
				User_TalkChannel2005(tNewYear_ByeOldYear_Text[16])
				Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[13])
			else
				User_AddCultivation(5)
				User_TalkChannel2005(tNewYear_ByeOldYear_Text[17])
				Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[14])
			end
		end
		return
	end

	if nItemId == 3005548 then
		if Item_DelItem(nItemId) then
			User_TransForm(12361,0,7026,30)
			User_TalkChannel2005(tNewYear_ByeOldYear_Text[18])
			Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[15])
		end
		return
	end

	if nItemId == 3005549 then
		local nUserMapId = Get_UserMapId()
		if nUserMapId == 1002 then
			if Item_DelItem(nItemId) then
				User_UserRandBoundTrans(1002,360,360,3,3)
				Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[16])
				User_TalkChannel2005(tNewYear_ByeOldYear_Text[20])
			end	
		else
			Sys_MsgBox(tNewYear_ByeOldYear_Text[19])
		end
		return
	end

	if nItemId == 3005550 then
		if User_CheckLeftSpace(1) then
			if Item_DelItem(nItemId) then
				Item_AddItem(3005551,0,2)
				Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[17])
				User_TalkChannel2005(tNewYear_ByeOldYear_Text[22])
			end
		else
			Sys_MsgBox(tNewYear_ByeOldYear_Text[21])
		end
		return
	end

	if nItemId == 3005551 then
		if Item_DelItem(nItemId) then
			User_AddBless(1)
			Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[18])
			User_TalkChannel2005(tNewYear_ByeOldYear_Text[23])
		end
		return
	end

	if nItemId == 3005552 then
		if Item_DelItem(nItemId) then
			local nUserId = Get_UserId()
			User_AddRoleStatus(57,200,10,1,10,1,1,0,0,nUserId)
			Sys_SaveActionFestivalLog(tNewYear_ByeOldYear_log[19])
			User_TalkChannel2005(tNewYear_ByeOldYear_Text[24])
		end
		return
	end

end


---------------------------------------模板对话-------------------------------------
--丰收村村长
tNpcFace[3415] = 90
tNpcGossip[10748] = tNpcGossip[10748] or DefaultNpc:new{}
tNpcGossip[10748]["OptionHidden"] = 1

--活动前
tNpcGossip[10748]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[10748]["Text111"] = tNewYear_ByeOldYear[10748]["Text111"]
tNpcGossip[10748]["Text112"] = tNewYear_ByeOldYear[10748]["Text112"]
tNpcGossip[10748]["Text113"] = tNewYear_ByeOldYear[10748]["Text113"] 
tNpcGossip[10748]["Text114"] = tNewYear_ByeOldYear[10748]["Text114"]
tNpcGossip[10748]["Text115"] = tNewYear_ByeOldYear[10748]["Text115"]
tNpcGossip[10748]["Text116"] = tNewYear_ByeOldYear[10748]["Text116"]
tNpcGossip[10748]["tOption1-1"] = {1}
tNpcGossip[10748]["Option1"] = tNewYear_ByeOldYear[10748]["Option1"]
tNpcGossip[10748]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tNewYear_ByeOldYear_Cont["Beftime"])
end 

--活动后
tNpcGossip[10748]["Text1-2"] = {121,122}
tNpcGossip[10748]["Text121"] = tNewYear_ByeOldYear[10748]["Text121"]
tNpcGossip[10748]["Text122"] = tNewYear_ByeOldYear[10748]["Text122"] 
tNpcGossip[10748]["tOption1-2"] = {2}
tNpcGossip[10748]["Option2"] = tNewYear_ByeOldYear[10748]["Option2"]
tNpcGossip[10748]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tNewYear_ByeOldYear_Cont["Aftime"])
end 

--活动中
tNpcGossip[10748]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[10748]["Text131"] = tNewYear_ByeOldYear[10748]["Text131"]
tNpcGossip[10748]["Text132"] = tNewYear_ByeOldYear[10748]["Text132"]
tNpcGossip[10748]["Text133"] = tNewYear_ByeOldYear[10748]["Text133"]
tNpcGossip[10748]["Text134"] = tNewYear_ByeOldYear[10748]["Text134"]
tNpcGossip[10748]["Text135"] = tNewYear_ByeOldYear[10748]["Text135"]
tNpcGossip[10748]["Text136"] = tNewYear_ByeOldYear[10748]["Text136"]
tNpcGossip[10748]["Text137"] = tNewYear_ByeOldYear[10748]["Text137"]
tNpcGossip[10748]["tOption1-3"] = {3,4,5,6}
tNpcGossip[10748]["Option3"] = tNewYear_ByeOldYear[10748]["Option3"]
tNpcGossip[10748]["Option4"] = tNewYear_ByeOldYear[10748]["Option4"]
tNpcGossip[10748]["Option5"] = tNewYear_ByeOldYear[10748]["Option5"]
tNpcGossip[10748]["Option6"] = tNewYear_ByeOldYear[10748]["Option6"]
tNpcGossip[10748]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tNewYear_ByeOldYear_Cont["Nowtime"]) and User_JudgeLevelAndMetempsychosis(tNewYear_ByeOldYear_Cont["Level"],tNewYear_ByeOldYear_Cont["Metempsychosis"])
end 

tNpcGossip[10748]["OptionFunc3"]="NewYear_ByeOldYear_Option3_10748</N>10748"
tNpcGossip[10748]["OptionFunc4"]="NewYear_ByeOldYear_Option4_10748</N>10748"
tNpcGossip[10748]["OptionPoint5"]="2-8"

tNpcGossip[10748]["Text1-4"] = {141,142}
tNpcGossip[10748]["Text141"] = tNewYear_ByeOldYear[10748]["Text141"]
tNpcGossip[10748]["Text142"] = tNewYear_ByeOldYear[10748]["Text142"]
tNpcGossip[10748]["tOption1-4"] = {7}
tNpcGossip[10748]["Option7"] = tNewYear_ByeOldYear[10748]["Option7"]
tNpcGossip[10748]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tNewYear_ByeOldYear_Cont["Nowtime"]) and not User_JudgeLevelAndMetempsychosis(tNewYear_ByeOldYear_Cont["Level"],tNewYear_ByeOldYear_Cont["Metempsychosis"])
end 

--其他提示
tNpcGossip[10748]["Text2-1"] = {211,212}
tNpcGossip[10748]["Text211"] = tNewYear_ByeOldYear[10748]["Text211"]
tNpcGossip[10748]["Text212"] = tNewYear_ByeOldYear[10748]["Text212"]
tNpcGossip[10748]["tOption2-1"] = {10}
tNpcGossip[10748]["Option10"] = tNewYear_ByeOldYear[10748]["Option10"]

tNpcGossip[10748]["Text2-2"] = {221,222}
tNpcGossip[10748]["Text221"] = tNewYear_ByeOldYear[10748]["Text221"]
tNpcGossip[10748]["Text222"] = tNewYear_ByeOldYear[10748]["Text222"]
tNpcGossip[10748]["tOption2-2"] = {11}
tNpcGossip[10748]["Option11"] = tNewYear_ByeOldYear[10748]["Option11"]

tNpcGossip[10748]["Text2-3"] = {231}
tNpcGossip[10748]["Text231"] = tNewYear_ByeOldYear[10748]["Text231"]
tNpcGossip[10748]["tOption2-3"] = {12}
tNpcGossip[10748]["Option12"] = tNewYear_ByeOldYear[10748]["Option12"]

tNpcGossip[10748]["Text2-4"] = {241}
tNpcGossip[10748]["Text241"] = tNewYear_ByeOldYear[10748]["Text241"]
tNpcGossip[10748]["tOption2-3"] = {13}
tNpcGossip[10748]["Option13"] = tNewYear_ByeOldYear[10748]["Option13"]

tNpcGossip[10748]["Text2-5"] = {251}
tNpcGossip[10748]["Text251"] = tNewYear_ByeOldYear[10748]["Text251"]
tNpcGossip[10748]["tOption2-5"] = {14}
tNpcGossip[10748]["Option14"] = tNewYear_ByeOldYear[10748]["Option14"]

tNpcGossip[10748]["Text2-6"] = {261}
tNpcGossip[10748]["Text261"] = tNewYear_ByeOldYear[10748]["Text261"]
tNpcGossip[10748]["tOption2-6"] = {15}
tNpcGossip[10748]["Option15"] = tNewYear_ByeOldYear[10748]["Option15"]

tNpcGossip[10748]["Text2-7"] = {271,272}
tNpcGossip[10748]["Text271"] = tNewYear_ByeOldYear[10748]["Text271"]
tNpcGossip[10748]["Text272"] = tNewYear_ByeOldYear[10748]["Text272"]
tNpcGossip[10748]["tOption2-7"] = {16}
tNpcGossip[10748]["Option16"] = tNewYear_ByeOldYear[10748]["Option16"]

tNpcGossip[10748]["Text2-8"] = {281,282,283}
tNpcGossip[10748]["Text281"] = tNewYear_ByeOldYear[10748]["Text281"]
tNpcGossip[10748]["Text282"] = tNewYear_ByeOldYear[10748]["Text282"]
tNpcGossip[10748]["Text283"] = tNewYear_ByeOldYear[10748]["Text283"]
tNpcGossip[10748]["tOption2-8"] = {17}
tNpcGossip[10748]["Option17"] = tNewYear_ByeOldYear[10748]["Option17"]

tNpcGossip[10748]["Text2-9"] = {291,292,293}
tNpcGossip[10748]["Text291"] = tNewYear_ByeOldYear[10748]["Text291"]
tNpcGossip[10748]["Text292"] = tNewYear_ByeOldYear[10748]["Text292"]
tNpcGossip[10748]["Text293"] = tNewYear_ByeOldYear[10748]["Text293"]
tNpcGossip[10748]["tOption2-9"] = {17}
tNpcGossip[10748]["Option18"] = tNewYear_ByeOldYear[10748]["Option18"]

--村民杨阳阳
tNpcFace[3416] = 68
tNpcGossip[10749] = tNpcGossip[10749] or DefaultNpc:new{}
tNpcGossip[10749]["OptionHidden"] = 1

tNpcGossip[10749]["Text1-1"] = {111,112}
tNpcGossip[10749]["Text111"] = tNewYear_ByeOldYear[10749]["Text111"]
tNpcGossip[10749]["Text112"] = tNewYear_ByeOldYear[10749]["Text112"]
tNpcGossip[10749]["tOption1-1"] = {1,2,3}
tNpcGossip[10749]["Option1"] = tNewYear_ByeOldYear[10749]["Option1"]
tNpcGossip[10749]["Option2"] = tNewYear_ByeOldYear[10749]["Option2"]
tNpcGossip[10749]["Option3"] = tNewYear_ByeOldYear[10749]["Option3"]

tNpcGossip[10749]["OptionFunc1"]="NewYear_ByeOldYear_Option1_10749</N>10749"
tNpcGossip[10749]["OptionPoint2"]="2-1"

tNpcGossip[10749]["Text2-1"] = {211,212,213}
tNpcGossip[10749]["Text211"] = tNewYear_ByeOldYear[10749]["Text211"]
tNpcGossip[10749]["Text212"] = tNewYear_ByeOldYear[10749]["Text212"]
tNpcGossip[10749]["Text213"] = tNewYear_ByeOldYear[10749]["Text213"]
tNpcGossip[10749]["tOption2-1"] = {10}
tNpcGossip[10749]["Option10"] = tNewYear_ByeOldYear[10749]["Option10"]

tNpcGossip[10749]["Text2-2"] = {221}
tNpcGossip[10749]["Text221"] = tNewYear_ByeOldYear[10749]["Text221"]
tNpcGossip[10749]["tOption2-2"] = {11,12}
tNpcGossip[10749]["Option11"] = tNewYear_ByeOldYear[10749]["Option11"]
tNpcGossip[10749]["Option12"] = tNewYear_ByeOldYear[10749]["Option12"]

tNpcGossip[10749]["OptionFunc11"]="NewYear_ByeOldYear_Option11_10749</N>10749"

---------------------------------------物品模板-------------------------------------
tItem[3005544] = tItem[3005544] or {}
tItem[3005544]["Function"] = function(nItemId,sItemName)
	NewYear_ByeOldYear_Item(nItemId)
end

tItem[3005545] = tItem[3005545] or {}
tItem[3005545]["Function"] = function(nItemId,sItemName)
	NewYear_ByeOldYear_Item(nItemId)
end

tItem[3005546] = tItem[3005546] or {}
tItem[3005546]["Function"] = function(nItemId,sItemName)
	NewYear_ByeOldYear_Item(nItemId)
end

tItem[3005547] = tItem[3005547] or {}
tItem[3005547]["Function"] = function(nItemId,sItemName)
	NewYear_ByeOldYear_Item(nItemId)
end

tItem[3005548] = tItem[3005548] or {}
tItem[3005548]["Function"] = function(nItemId,sItemName)
	NewYear_ByeOldYear_Item(nItemId)
end

tItem[3005549] = tItem[3005549] or {}
tItem[3005549]["Function"] = function(nItemId,sItemName)
	NewYear_ByeOldYear_Item(nItemId)
end

tItem[3005550] = tItem[3005550] or {}
tItem[3005550]["Function"] = function(nItemId,sItemName)
	NewYear_ByeOldYear_Item(nItemId)
end

tItem[3005551] = tItem[3005551] or {}
tItem[3005551]["Function"] = function(nItemId,sItemName)
	NewYear_ByeOldYear_Item(nItemId)
end

tItem[3005552] = tItem[3005552] or {}
tItem[3005552]["Function"] = function(nItemId,sItemName)
	NewYear_ByeOldYear_Item(nItemId)
end

---------------------------------------怪物模板-------------------------------------
--活动怪物
-- tMonster[7653] = tMonster[7653] or {}
-- tMonster[7653]["tFunction"] = tMonster[7653]["tFunction"] or {}
-- table.insert(tMonster[7653]["tFunction"],NewYear_ByeOldYear_Monster)

