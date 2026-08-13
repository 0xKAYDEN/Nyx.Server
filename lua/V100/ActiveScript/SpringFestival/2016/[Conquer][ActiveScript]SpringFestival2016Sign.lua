------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]2016春节之心想事成烧头香（2.8-2.17）
--Creator:		张世超
--Created:		2016/08/25
------------------------------------------------------------------------------------
--前缀 Spring2016_Sign_

---------------------------------table定义--------------------------------------
local tSpring2016_Sign_Data = {}
--活动时间
	tSpring2016_Sign_Data["Time"] = {}
	-- tSpring2016_Sign_Data["Time"]["Before"] = "2015-01-01 00:00 2015-08-28 23:59"
	-- tSpring2016_Sign_Data["Time"]["During"] = "2015-08-29 00:00 2016-09-02 23:59"
	tSpring2016_Sign_Data["Time"]["Before"] = "2017-01-01 00:00 2017-01-27 23:59"
	tSpring2016_Sign_Data["Time"]["During"] = "2017-01-28 00:00 2017-02-06 23:59"
	tSpring2016_Sign_Data["Time"]["Clear"] = "00:00 00:10"
	tSpring2016_Sign_Data["Time"]["Sign"] = "08:00 23:30"
	tSpring2016_Sign_Data["Time"]["GiftTime"] = "2016-08-29 00:00 2017-02-11 23:59"
	
--等级限制
	tSpring2016_Sign_Data["Level"] = 80
	tSpring2016_Sign_Data["Metempsychosis"] = 0


--相关数据
	tSpring2016_Sign_Data["Global_data"] = 50676	
	tSpring2016_Sign_Data["Space"] = 1
	
	tSpring2016_Sign_Data["SignItem"] = {}
	tSpring2016_Sign_Data["SignItem"][9999]=3005452
	tSpring2016_Sign_Data["SignItem"][99999]=3005453
	tSpring2016_Sign_Data["SignItem"][999999]=3005451
	tSpring2016_Sign_Data["SignItem"][9999999]=3005450
	
	tSpring2016_Sign_Data["ItemAttr"] = {}
	tSpring2016_Sign_Data["ItemAttr"][9999]=""
	tSpring2016_Sign_Data["ItemAttr"][99999]=""
	tSpring2016_Sign_Data["ItemAttr"][999999]="0 0 0 30 1"
	tSpring2016_Sign_Data["ItemAttr"][9999999]="0 0 0 30 1"
	
	tSpring2016_Sign_Data["Effect"] = "zf2-e290"
	tSpring2016_Sign_Data["FirstEffect"] = "red-flower-g-1_3"
	tSpring2016_Sign_Data["UseBag"] = "angelwing"
	tSpring2016_Sign_Data["UseJade"] = "mammon"
	
	tSpring2016_Sign_Data["Hongbao"] = {}
	tSpring2016_Sign_Data["Hongbao"][3005454] = 100000
	tSpring2016_Sign_Data["Hongbao"][3005455] = 500000

	tSpring2016_Sign_Data["QifuBao"] = {}
	tSpring2016_Sign_Data["QifuBao"]["Money"] = {}
	tSpring2016_Sign_Data["QifuBao"]["Bless"] = {}
	tSpring2016_Sign_Data["QifuBao"]["Money"][3005452] = 10000
	tSpring2016_Sign_Data["QifuBao"]["Money"][3005453] = 100000
	tSpring2016_Sign_Data["QifuBao"]["Bless"][3005452] = 2
	tSpring2016_Sign_Data["QifuBao"]["Bless"][3005453] = 24

	tSpring2016_Sign_Data["JadeDropItem"] = {}
	tSpring2016_Sign_Data["JadeDropItem"][3005450]=3005455
	tSpring2016_Sign_Data["JadeDropItem"][3005451]=3005454

	tSpring2016_Sign_Data["JadeDropNum"] = {}
	tSpring2016_Sign_Data["JadeDropNum"][3005450]=20
	tSpring2016_Sign_Data["JadeDropNum"][3005451]=10
	
--log
	local tSpring2016_Sign_Log = {}
	tSpring2016_Sign_Log["Festival"] = 3359
	tSpring2016_Sign_Log["Id"] = 10002393
	tSpring2016_Sign_Log["FestivalGift"] = "0,0,0,0,10002393,2,3003625,1"
	tSpring2016_Sign_Log["SignItem"] = "0,0,1,%d,10002393,2,%d,1"
	tSpring2016_Sign_Log["GuoQi"] = "0,0,%d,0,10002393,1,0,0"
	tSpring2016_Sign_Log["Hongbao"] = "0,0,%d,1,10002393,2,1,%d"
	tSpring2016_Sign_Log["Bless"] = "0,0,0,0,10002393,2,5,%d"	
	tSpring2016_Sign_Log["QifuBao"] =  "0,0,%d,1,10002393,2,1,%d"
	tSpring2016_Sign_Log["Jade"] =  "0,0,%d,1,10002393,2,%d,%d"
	tSpring2016_Sign_Log["Join"] =  "0,0,0,0,10002393,1[1],0,0"
	tSpring2016_Sign_Log["Done"] =  "0,0,0,0,10002393,1[2],0,0"
--掩码
-- ##stc 13166 记录玩家当天是否领取节日礼包，==1表示已经领取礼包
-- ##stc 13167 记录小红包祝福，==1表示已经领取
-- ##stc 13168 记录大红包祝福，==1表示已经领取
-- ##stc 13265 记录玉牌使用cd （五秒）
-- ##stc 13204 记录玩家是否第一玩家
-- ##50676
-- ##cq_dyna_global_data data0 记录全服已上香玩家个数，隔天清零
-- ##cq_dyna_global_data data5 隔天清零标记

local tSpring2016_Sign_Stc = {}
	tSpring2016_Sign_Stc["FestivalGift"] = {}
	tSpring2016_Sign_Stc["FestivalGift"]["EventType"] = 131
	tSpring2016_Sign_Stc["FestivalGift"]["DataType"] = 66
	tSpring2016_Sign_Stc["FestivalGift"]["Complete"] = 10
	
	tSpring2016_Sign_Stc["QifuBao"] = {}
	tSpring2016_Sign_Stc["QifuBao"]["EventType"] = {}
	tSpring2016_Sign_Stc["QifuBao"]["DataType"] = {}
	tSpring2016_Sign_Stc["QifuBao"]["Complete"] = {}
	
	tSpring2016_Sign_Stc["QifuBao"]["EventType"][3005452] = 131
	tSpring2016_Sign_Stc["QifuBao"]["DataType"][3005452] = 67
	tSpring2016_Sign_Stc["QifuBao"]["Complete"][3005452] = 1
	tSpring2016_Sign_Stc["QifuBao"]["EventType"][3005453] = 131
	tSpring2016_Sign_Stc["QifuBao"]["DataType"][3005453] = 68
	tSpring2016_Sign_Stc["QifuBao"]["Complete"][3005453] = 1
	
	tSpring2016_Sign_Stc["UseJade"] = {}
	tSpring2016_Sign_Stc["UseJade"]["EventType"] = 132
	tSpring2016_Sign_Stc["UseJade"]["DataType"] = 65
	tSpring2016_Sign_Stc["UseJade"]["Sec"] = 5
	
	tSpring2016_Sign_Stc["FirstSign"] = {}
	tSpring2016_Sign_Stc["FirstSign"]["EventType"] = 132
	tSpring2016_Sign_Stc["FirstSign"]["DataType"] = 04
	tSpring2016_Sign_Stc["FirstSign"]["Complete"] = 1	

---------------------------------逻辑定义--------------------------------------
function Spring2016_Sign_FirstSign()
	local nEvent = tSpring2016_Sign_Stc["FirstSign"]["EventType"] 
	local nType = tSpring2016_Sign_Stc["FirstSign"]["DataType"] 
	Spring2016_Sign_ClearStc(nEvent,nType)
	local nValue = Get_UserStatisticValue(nEvent,nType)
	if  nValue >= tSpring2016_Sign_Stc["FirstSign"]["Complete"] then
		User_EffectAdd("self",tSpring2016_Sign_Data["FirstEffect"])
	end
end

--红包
function Spring2016_Sign_Hongbao(nItem)
	if Sys_ChkFullTime(tSpring2016_Sign_Data["Time"]["GiftTime"])  then
	
		if  User_CanPutMoney2Bag(tSpring2016_Sign_Data["Hongbao"][nItem]) then
			if Item_ChkItem(nItem) and Item_DelItem(nItem) then
				User_AddMoney(tSpring2016_Sign_Data["Hongbao"][nItem])
				Sys_SaveActionFestivalLog(string.format(tSpring2016_Sign_Log["Hongbao"],nItem,tSpring2016_Sign_Data["Hongbao"][nItem]))
				User_TalkChannel2005(string.format(Spring2016_Sign_Text["MsgBox"]["Hongbao"],tSpring2016_Sign_Data["Hongbao"][nItem]))
				User_EffectAdd("self",tSpring2016_Sign_Data["UseBag"])
			end
		else
			User_TalkChannel2005(Spring2016_Sign_Text["MsgBox"]["MoneyFull"])
		end
	
	else
		if Item_ChkItem(nItem) then
			Item_DelAllItemByType(nItem)
			User_TalkChannel2005(Spring2016_Sign_Text["MsgBox"]["GuoQi"])
			Sys_SaveActionFestivalLog(string.format(tSpring2016_Sign_Log["GuoQi"],nItem))
		end
	end
end

--祈福包
function Spring2016_Sign_QifuBao(nItem)
	if Sys_ChkFullTime(tSpring2016_Sign_Data["Time"]["GiftTime"])  then
		if  User_CanPutMoney2Bag(tSpring2016_Sign_Data["QifuBao"]["Money"][nItem]) then
			if Item_ChkItem(nItem) and Item_DelItem(nItem) then
				local nEvent = tSpring2016_Sign_Stc["QifuBao"]["EventType"][nItem]
				local nType = tSpring2016_Sign_Stc["QifuBao"]["DataType"][nItem]
				Spring2016_Sign_ClearStc(nEvent,nType)
				local nValue = Get_UserStatisticValue(nEvent,nType)
				
				if  not (nValue >= tSpring2016_Sign_Stc["QifuBao"]["Complete"][nItem]) then
					nValue = tSpring2016_Sign_Stc["QifuBao"]["Complete"][nItem]
					Task_SetStatistic(nEvent,nType,nValue,1) 
					Task_SetStcTimestamp(nEvent,nType,0)
					User_AddBless(tSpring2016_Sign_Data["QifuBao"]["Bless"][nItem])
					User_TalkChannel2005(string.format(Spring2016_Sign_Text["MsgBox"]["Bless"],tSpring2016_Sign_Data["QifuBao"]["Bless"][nItem]))
					Sys_SaveActionFestivalLog(string.format(tSpring2016_Sign_Log["Bless"],tSpring2016_Sign_Data["QifuBao"]["Bless"][nItem]))
				end

				User_AddMoney(tSpring2016_Sign_Data["QifuBao"]["Money"][nItem])
				Sys_SaveActionFestivalLog(string.format(tSpring2016_Sign_Log["QifuBao"],nItem,tSpring2016_Sign_Data["QifuBao"]["Money"][nItem]))
				User_TalkChannel2005(string.format(Spring2016_Sign_Text["MsgBox"]["QifuBao"],tSpring2016_Sign_Data["QifuBao"]["Money"][nItem]))
				User_EffectAdd("self",tSpring2016_Sign_Data["UseBag"])
			end	
				
		else
			User_TalkChannel2005(Spring2016_Sign_Text["MsgBox"]["MoneyFull"])
		end
			
	else
		if Item_ChkItem(nItem) then
			Item_DelAllItemByType(nItem)
			User_TalkChannel2005(Spring2016_Sign_Text["MsgBox"]["GuoQi"])
			Sys_SaveActionFestivalLog(string.format(tSpring2016_Sign_Log["GuoQi"],nItem))
		end
	end
end

--使用玉牌
function Spring2016_Sign_Jade(nItem)
	if Sys_ChkFullTime(tSpring2016_Sign_Data["Time"]["GiftTime"])  then
		local nEvent = tSpring2016_Sign_Stc["UseJade"]["EventType"]
		local nType = tSpring2016_Sign_Stc["UseJade"]["DataType"]	
		
		if not Task_StcInterval(nEvent,nType,tSpring2016_Sign_Stc["UseJade"]["Sec"],0) then
			User_TalkChannel2005(string.format(Spring2016_Sign_Text["MsgBox"]["TooFast"],tSpring2016_Sign_Stc["UseJade"]["Sec"]))
			return
		end
		
		if Item_ChkItem(nItem) and Item_DelItem(nItem) then
			local nMapId = Get_UserMapId()
			local nPosX =Get_UserPositionX()-5
			local nPosY =Get_UserPositionY()-5
			local nItemId =tSpring2016_Sign_Data["JadeDropItem"][nItem]
			local nItemNum =tSpring2016_Sign_Data["JadeDropNum"][nItem]
			
			Task_SetStatistic(nEvent,nType,tSpring2016_Sign_Stc["UseJade"]["Sec"],1) 
			Task_SetStcTimestamp(nEvent,nType,0)
			Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,10,10,nItemNum,60)
			Sys_SaveActionFestivalLog(string.format(tSpring2016_Sign_Log["Jade"],nItem,nItemId,nItemNum))
			User_EffectAdd("self",tSpring2016_Sign_Data["UseJade"])
		
		end	
	
	else
		if Item_ChkItem(nItem) then
			Item_DelAllItemByType(nItem)
			User_TalkChannel2005(Spring2016_Sign_Text["MsgBox"]["GuoQi"])
			Sys_SaveActionFestivalLog(string.format(tSpring2016_Sign_Log["GuoQi"],nItem))
		end
	end

end

--每天全局变量清0
function Spring2016_Sign_ClearGlobaldata()
		local nGlobalId = tSpring2016_Sign_Data["Global_data"]
		if Sys_ChkDayTime(tSpring2016_Sign_Data["Time"]["Clear"]) then
			if Get_SysDynaGlobalData5(nGlobalId)==0 then
				Sys_SetSynaGlobalData0(nGlobalId,0)
				Sys_SetSynaGlobalData5(nGlobalId,1)
			end
	else
		Sys_SetSynaGlobalData5(nGlobalId,0)
	end
end

--每天掩码清0
function Spring2016_Sign_ClearStc(nEvent,nType)
	if  Task_StcInterval(nEvent,nType,1,4)  then 
		Task_SetStatistic(nEvent,nType,0,1) 
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

function Spring2016_Sign_Ckeck(nNpcId)
	--活动时间后
	if not Sys_ChkFullTime(tSpring2016_Sign_Data["Time"]["During"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	--不在签到时间
	if not Sys_ChkDayTime(tSpring2016_Sign_Data["Time"]["Sign"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return false
	end
	--等级限制
	if not User_JudgeLevelAndMetempsychosis(tSpring2016_Sign_Data["Level"],tSpring2016_Sign_Data["Metempsychosis"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return false
	end	
	--背包检查
	local nSpace = tSpring2016_Sign_Data["Space"]
	local nEvent = tSpring2016_Sign_Stc["FestivalGift"]["EventType"]
	local nType = tSpring2016_Sign_Stc["FestivalGift"]["DataType"] 
	Spring2016_Sign_ClearStc(nEvent,nType)
	local nValue = Get_UserStatisticValue(nEvent,nType)
	
	if  not (nValue >= tSpring2016_Sign_Stc["FestivalGift"]["Complete"]) then
		nSpace = 1+nSpace
	end
	if not User_CheckLeftSpace(nSpace) then 
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return false		
	end
	return true	
end

--烧头香。
function Spring2016_Sign_SignCkeck(nNpcId)
	if Spring2016_Sign_Ckeck(nNpcId) then
		LinkNpcGossipFunc_New(nNpcId,"1-7")
	end
end

function Spring2016_Sign_Select(nNpcId,nMoney)
	local sStr = ""
	
	--检查金钱
	if  not User_CanPutMoney2Bag(-nMoney) then
		LinkNpcGossipFunc_New(nNpcId,"1-8")
		return
	else
		--二次确认
		if nMoney ==9999 then
			sStr=string.format(Spring2016_Sign_Text[nNpcId]["Text191"],"9,999")
		elseif nMoney ==99999 then
			sStr=string.format(Spring2016_Sign_Text[nNpcId]["Text191"],"99,999")
		elseif nMoney ==999999 then
			sStr=string.format(Spring2016_Sign_Text[nNpcId]["Text191"],"999,999")
		else
			sStr=string.format(Spring2016_Sign_Text[nNpcId]["Text191"],"9,999,999")
		end
		Sys_DialogText(sStr)
		Sys_DialogOption(Spring2016_Sign_Text[nNpcId]["Option15"],"</F>Spring2016_Sign_Comfirm</N>"..nNpcId.."</N>"..nMoney)
		Sys_DialogOption(Spring2016_Sign_Text[nNpcId]["Option16"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	end
	
	
end

function Spring2016_Sign_Comfirm(nNpcId,nMoney)
	Spring2016_Sign_Ckeck(nNpcId)
	

	if  not User_CanPutMoney2Bag(-nMoney) then
		LinkNpcGossipFunc_New(nNpcId,"1-8")
		return
	end
	
	local nEvent = tSpring2016_Sign_Stc["FestivalGift"]["EventType"]
	local nType = tSpring2016_Sign_Stc["FestivalGift"]["DataType"] 	
	local nValue = Get_UserStatisticValue(nEvent,nType) or 0



	local nSysDyGlobId = tSpring2016_Sign_Data["Global_data"]
	local nData0=Get_SysDynaGlobalData0(nSysDyGlobId)

	if not User_AddMoney(-nMoney) then
		LinkNpcGossipFunc_New(nNpcId,"1-8")
		return
	end
	if  not (nValue >= tSpring2016_Sign_Stc["FestivalGift"]["Complete"]) then
		nValue =tSpring2016_Sign_Stc["FestivalGift"]["Complete"] 

		Task_SetStatistic(nEvent,nType,nValue,1) 
		Task_SetStcTimestamp(nEvent,nType,0)
		FestivalGeneralPackage_GetGift(tSpring2016_Sign_Log["Festival"],tSpring2016_Sign_Log["Id"])
		Sys_SaveActionFestivalLog(tSpring2016_Sign_Log["FestivalGift"])
		Sys_SaveActionFestivalLog(tSpring2016_Sign_Log["Join"])
		Sys_SaveActionFestivalLog(tSpring2016_Sign_Log["Done"])
		User_TalkChannel2005(Spring2016_Sign_Text["MsgBox"]["FirstSign"])


	end


	nData0 = 1+nData0
	Sys_SetSynaGlobalData0(nSysDyGlobId,nData0)
	Item_AddNewItem(tSpring2016_Sign_Data["SignItem"][nMoney],tSpring2016_Sign_Data["ItemAttr"][nMoney])
	Sys_SaveActionFestivalLog(string.format(tSpring2016_Sign_Log["FestivalGift"],nMoney,tSpring2016_Sign_Data["SignItem"][nMoney]))
	User_EffectAdd("self",tSpring2016_Sign_Data["Effect"])
	User_TalkChannel2005(string.format(Spring2016_Sign_Text["MsgBox"]["Sign"],Get_ItemtypeName(tSpring2016_Sign_Data["SignItem"][nMoney])))


	--全服第一光效
	if  (nData0 == 1) then
		local nEvent1 = tSpring2016_Sign_Stc["FirstSign"]["EventType"]
		local nType1 = tSpring2016_Sign_Stc["FirstSign"]["DataType"]
		Task_SetStatistic(nEvent1,nType1,tSpring2016_Sign_Stc["FirstSign"]["Complete"],1) 
		Task_SetStcTimestamp(nEvent1,nType1,0)
		Sys_NormalBroadcast(string.format(Spring2016_Sign_Text["MsgBox"]["DiYI"],Get_UserName()))
		User_EffectDel("self",tSpring2016_Sign_Data["Effect"])
		User_EffectAdd("self",tSpring2016_Sign_Data["FirstEffect"])
	end
end

-----------------------------------Npc模板--------------------------------------
tNpcFace[5069] = 232
tNpcGossip[17305] = tNpcGossip[17305] or DefaultNpc:new{}
tNpcGossip[17305]["OptionHidden"] = 1

--活动前对白
tNpcGossip[17305]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[17305]["tOption1-1"] = {1}
tNpcGossip[17305]["Text111"] = Spring2016_Sign_Text[17305]["Text111"]
tNpcGossip[17305]["Text112"] = Spring2016_Sign_Text[17305]["Text112"]
tNpcGossip[17305]["Text113"] = Spring2016_Sign_Text[17305]["Text113"]
tNpcGossip[17305]["Text114"] = Spring2016_Sign_Text[17305]["Text114"]
tNpcGossip[17305]["Text115"] = Spring2016_Sign_Text[17305]["Text115"]
tNpcGossip[17305]["Text116"] = Spring2016_Sign_Text[17305]["Text116"]
tNpcGossip[17305]["Option1"] = Spring2016_Sign_Text[17305]["Option1"]

tNpcGossip[17305]["ChkFunc1-1"] = function ()
	return  Sys_ChkFullTime(tSpring2016_Sign_Data["Time"]["Before"])
end

--活动后对白
tNpcGossip[17305]["Text1-2"] = {121,122}
tNpcGossip[17305]["tOption1-2"] = {2}
tNpcGossip[17305]["Text121"] = Spring2016_Sign_Text[17305]["Text121"]
tNpcGossip[17305]["Text122"] = Spring2016_Sign_Text[17305]["Text122"]
tNpcGossip[17305]["Option2"] = Spring2016_Sign_Text[17305]["Option2"]
tNpcGossip[17305]["ChkFunc1-2"] = function ()
	return  not Sys_ChkFullTime(tSpring2016_Sign_Data["Time"]["During"])
end

--等级限制
tNpcGossip[17305]["Text1-3"] = {131}
tNpcGossip[17305]["tOption1-3"] = {8}
tNpcGossip[17305]["Text131"] = Spring2016_Sign_Text[17305]["Text131"]
tNpcGossip[17305]["Option8"] = Spring2016_Sign_Text[17305]["Option8"]

tNpcGossip[17305]["ChkFunc1-3"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tSpring2016_Sign_Data["Level"],tSpring2016_Sign_Data["Metempsychosis"])
end

--主对白
tNpcGossip[17305]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[17305]["tOption1-4"] = {3,4,5,6,7}
tNpcGossip[17305]["Text141"] = Spring2016_Sign_Text[17305]["Text141"]
tNpcGossip[17305]["Text142"] = Spring2016_Sign_Text[17305]["Text142"]
tNpcGossip[17305]["Text143"] = Spring2016_Sign_Text[17305]["Text143"]
tNpcGossip[17305]["Text144"] = Spring2016_Sign_Text[17305]["Text144"]
tNpcGossip[17305]["Text145"] = Spring2016_Sign_Text[17305]["Text145"]
tNpcGossip[17305]["Text146"] = Spring2016_Sign_Text[17305]["Text146"]
tNpcGossip[17305]["Option3"] = Spring2016_Sign_Text[17305]["Option3"]
tNpcGossip[17305]["Option4"] = Spring2016_Sign_Text[17305]["Option4"]
tNpcGossip[17305]["Option5"] = Spring2016_Sign_Text[17305]["Option5"]
tNpcGossip[17305]["Option6"] = Spring2016_Sign_Text[17305]["Option6"]
tNpcGossip[17305]["Option7"] = Spring2016_Sign_Text[17305]["Option7"]
tNpcGossip[17305]["OptionFunc3"] = "Spring2016_Sign_SignCkeck</N>17305"
tNpcGossip[17305]["OptionPoint4"] = "2"
tNpcGossip[17305]["OptionPoint5"] = "10"
tNpcGossip[17305]["OptionPoint6"] = "11"

--不在签到时间
tNpcGossip[17305]["Text1-5"] = {151,152}
tNpcGossip[17305]["tOption1-5"] = {8}
tNpcGossip[17305]["Text151"] = Spring2016_Sign_Text[17305]["Text151"]
tNpcGossip[17305]["Text152"] = Spring2016_Sign_Text[17305]["Text152"]



--背包
tNpcGossip[17305]["Text1-6"] = {161}
tNpcGossip[17305]["tOption1-6"] = {9}
tNpcGossip[17305]["Text161"] = Spring2016_Sign_Text[17305]["Text161"]
tNpcGossip[17305]["Option9"] = Spring2016_Sign_Text[17305]["Option9"]

--选择银两
tNpcGossip[17305]["Text1-7"] = {171}
tNpcGossip[17305]["tOption1-7"] = {10,11,12,13,14}
tNpcGossip[17305]["Text171"] = Spring2016_Sign_Text[17305]["Text171"]
tNpcGossip[17305]["Option10"] = Spring2016_Sign_Text[17305]["Option10"]
tNpcGossip[17305]["Option11"] = Spring2016_Sign_Text[17305]["Option11"]
tNpcGossip[17305]["Option12"] = Spring2016_Sign_Text[17305]["Option12"]
tNpcGossip[17305]["Option13"] = Spring2016_Sign_Text[17305]["Option13"]
tNpcGossip[17305]["Option14"] = Spring2016_Sign_Text[17305]["Option14"]
tNpcGossip[17305]["OptionFunc10"] = "Spring2016_Sign_Select</N>17305</N>9999"
tNpcGossip[17305]["OptionFunc11"] = "Spring2016_Sign_Select</N>17305</N>99999"
tNpcGossip[17305]["OptionFunc12"] = "Spring2016_Sign_Select</N>17305</N>999999"
tNpcGossip[17305]["OptionFunc13"] = "Spring2016_Sign_Select</N>17305</N>9999999"

--银两不足
tNpcGossip[17305]["Text1-8"] = {181}
tNpcGossip[17305]["tOption1-8"] = {9}
tNpcGossip[17305]["Text181"] = Spring2016_Sign_Text[17305]["Text181"]

--什么是烧头香？
tNpcGossip[17305]["Text2-1"] = {211,212}
tNpcGossip[17305]["tOption2-1"] = {20,21,22,23,24,25}
tNpcGossip[17305]["Text211"] = Spring2016_Sign_Text[17305]["Text211"]
tNpcGossip[17305]["Text212"] = Spring2016_Sign_Text[17305]["Text212"]
tNpcGossip[17305]["Option20"] = Spring2016_Sign_Text[17305]["Option20"]
tNpcGossip[17305]["Option21"] = Spring2016_Sign_Text[17305]["Option21"]
tNpcGossip[17305]["Option22"] = Spring2016_Sign_Text[17305]["Option22"]
tNpcGossip[17305]["Option23"] = Spring2016_Sign_Text[17305]["Option23"]
tNpcGossip[17305]["Option24"] = Spring2016_Sign_Text[17305]["Option24"]
tNpcGossip[17305]["Option25"] = Spring2016_Sign_Text[17305]["Option25"]
tNpcGossip[17305]["OptionPoint20"] = "3"
tNpcGossip[17305]["OptionPoint21"] = "4"
tNpcGossip[17305]["OptionPoint22"] = "5"
tNpcGossip[17305]["OptionPoint23"] = "6"
tNpcGossip[17305]["OptionPoint24"] = "1"

--9,999两银子的回礼
tNpcGossip[17305]["Text3-1"] = {311,312,313}
tNpcGossip[17305]["tOption3-1"] = {31,32,33}
tNpcGossip[17305]["Text311"] = Spring2016_Sign_Text[17305]["Text311"]
tNpcGossip[17305]["Text312"] = Spring2016_Sign_Text[17305]["Text312"]
tNpcGossip[17305]["Text313"] = Spring2016_Sign_Text[17305]["Text313"]
tNpcGossip[17305]["Option31"] = Spring2016_Sign_Text[17305]["Option31"]
tNpcGossip[17305]["Option32"] = Spring2016_Sign_Text[17305]["Option32"]
tNpcGossip[17305]["Option33"] = Spring2016_Sign_Text[17305]["Option33"]
tNpcGossip[17305]["OptionPoint31"] = "10"
tNpcGossip[17305]["OptionPoint32"] = "1"

--99,999两银子的回礼
tNpcGossip[17305]["Text4-1"] = {411,412,413}
tNpcGossip[17305]["tOption4-1"] = {31,32,33}
tNpcGossip[17305]["Text411"] = Spring2016_Sign_Text[17305]["Text411"]
tNpcGossip[17305]["Text412"] = Spring2016_Sign_Text[17305]["Text412"]
tNpcGossip[17305]["Text413"] = Spring2016_Sign_Text[17305]["Text413"]

--999,999两银子的回礼
tNpcGossip[17305]["Text5-1"] = {511,512,513}
tNpcGossip[17305]["tOption5-1"] = {28,26,27}
tNpcGossip[17305]["Text511"] = Spring2016_Sign_Text[17305]["Text511"]
tNpcGossip[17305]["Text512"] = Spring2016_Sign_Text[17305]["Text512"]
tNpcGossip[17305]["Text513"] = Spring2016_Sign_Text[17305]["Text513"]
tNpcGossip[17305]["Option28"] = Spring2016_Sign_Text[17305]["Option28"]
tNpcGossip[17305]["Option26"] = Spring2016_Sign_Text[17305]["Option26"]
tNpcGossip[17305]["Option27"] = Spring2016_Sign_Text[17305]["Option27"]
tNpcGossip[17305]["OptionPoint28"] = "11"
tNpcGossip[17305]["OptionPoint26"] = "1"

--9,999,999两银子的回礼
tNpcGossip[17305]["Text6-1"] = {611,612,613}
tNpcGossip[17305]["tOption6-1"] = {30,38,39}
tNpcGossip[17305]["Text611"] = Spring2016_Sign_Text[17305]["Text611"]
tNpcGossip[17305]["Text612"] = Spring2016_Sign_Text[17305]["Text612"]
tNpcGossip[17305]["Text613"] = Spring2016_Sign_Text[17305]["Text613"]
tNpcGossip[17305]["Option30"] = Spring2016_Sign_Text[17305]["Option30"]
tNpcGossip[17305]["Option38"] = Spring2016_Sign_Text[17305]["Option38"]
tNpcGossip[17305]["Option39"] = Spring2016_Sign_Text[17305]["Option39"]
tNpcGossip[17305]["OptionPoint30"] = "11"
tNpcGossip[17305]["OptionPoint38"] = "1"

--什么是祈福红包？
tNpcGossip[17305]["Text10-1"] = {1011,1012,1013}
tNpcGossip[17305]["tOption10-1"] = {40,41}
tNpcGossip[17305]["Text1011"] = Spring2016_Sign_Text[17305]["Text1011"]
tNpcGossip[17305]["Text1012"] = Spring2016_Sign_Text[17305]["Text1012"]
tNpcGossip[17305]["Text1013"] = Spring2016_Sign_Text[17305]["Text1013"]
tNpcGossip[17305]["Option40"] = Spring2016_Sign_Text[17305]["Option40"]
tNpcGossip[17305]["Option41"] = Spring2016_Sign_Text[17305]["Option41"]
tNpcGossip[17305]["OptionPoint40"] = "1"

--什么是开光玉牌？
tNpcGossip[17305]["Text11-1"] = {1111,1112,1113,1114}
tNpcGossip[17305]["tOption11-1"] = {45,46}
tNpcGossip[17305]["Text1111"] = Spring2016_Sign_Text[17305]["Text1111"]
tNpcGossip[17305]["Text1112"] = Spring2016_Sign_Text[17305]["Text1112"]
tNpcGossip[17305]["Text1113"] = Spring2016_Sign_Text[17305]["Text1113"]
tNpcGossip[17305]["Text1114"] = Spring2016_Sign_Text[17305]["Text1114"]
tNpcGossip[17305]["Option45"] = Spring2016_Sign_Text[17305]["Option45"]
tNpcGossip[17305]["Option46"] = Spring2016_Sign_Text[17305]["Option46"]
tNpcGossip[17305]["OptionPoint45"] = "1"

--------------------------------------物品配置-------------------------------------------
-- 开光大玉牌
tItem[3005450] = tItem[3005450] or {}
tItem[3005450]["Function"] = function(nItemId,sItemName)
	Spring2016_Sign_Jade(nItemId)
end

-- 开光小玉牌
tItem[3005451] = tItem[3005451] or {}
tItem[3005451]["Function"] = function(nItemId,sItemName)
	Spring2016_Sign_Jade(nItemId)
end

-- 祈福小红包
tItem[3005452] = tItem[3005452] or {}
tItem[3005452]["Function"] = function(nItemId,sItemName)
	Spring2016_Sign_QifuBao(nItemId)
end

-- 祈福大红包
tItem[3005453] = tItem[3005453] or {}
tItem[3005453]["Function"] = function(nItemId,sItemName)
	Spring2016_Sign_QifuBao(nItemId)
end

-- 红包
tItem[3005455] = tItem[3005455] or {}
tItem[3005455]["Function"] = function(nItemId,sItemName)
	Spring2016_Sign_Hongbao(nItemId)
end

-- 红包
tItem[3005454] = tItem[3005454] or {}
tItem[3005454]["Function"] = function(nItemId,sItemName)
	Spring2016_Sign_Hongbao(nItemId)
end


--tSystem_Prompet_Func		实时检测
--table.insert(tSystem_Prompet_Func,Spring2016_Sign_ClearGlobaldata)

--上线触发
--table.insert(tSystem_PlayLogin_Func,Spring2016_Sign_FirstSign)

