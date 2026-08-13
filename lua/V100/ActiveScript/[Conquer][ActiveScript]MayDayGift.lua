------------------------------------------------------------------------------------
--Name:			160419[简体征服][活动脚本]五一签到礼包
--Creator:		刘益辉
--Created:		2016/4/19
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--	命名前缀
--	MayDayGift
--常量表配置
local tMayDayGift_NPC={}
	tMayDayGift_NPC["BeforeActivity"] = "2016-01-01 00:00 2016-04-24 23:59"
	tMayDayGift_NPC["Activity"] = "2016-04-25 00:00 2016-04-30 23:59"
	
	--玩家等级要求
	tMayDayGift_NPC["Metempsychosis"] = 0
	tMayDayGift_NPC["Level"] = 100
	
	tMayDayGift_NPC["Stc"] = {}
	tMayDayGift_NPC["Stc"]["Event"] =144
	tMayDayGift_NPC["Stc"]["Type"] =41
	
	tMayDayGift_NPC["ItemId1"] =3200002  ----神品精炼月卡包
	tMayDayGift_NPC["Attr1"] = "0 0 0 43200 1"
	
	tMayDayGift_NPC["ItemId2"] =3200003 --五一福利礼包
	tMayDayGift_NPC["Attr2"] = ""
	
	tMayDayGift_NPC["Space"] = 2
	
	tMayDayGift_NPC["Effect"] = "accession"
	tMayDayGift_NPC["Log"] = "0,0,0,0,12000363,1[1],3200002[3200003],1[1]"
	
	
local tMayDayGift_Package = {}
	--神品精炼月卡包
	tMayDayGift_Package[3200002]= {}
	tMayDayGift_Package[3200002]["Stc"]={}
	tMayDayGift_Package[3200002]["Stc"]["Event"] =144
	tMayDayGift_Package[3200002]["Stc"]["Type"] = 42
	tMayDayGift_Package[3200002]["Stc"]["ResEvent"] = 144
	tMayDayGift_Package[3200002]["Stc"]["ResType"] = 43
	
	tMayDayGift_Package[3200002]["ItemId"] = 3009001 --2天时效的明亮星陨石
	tMayDayGift_Package[3200002]["Attr"] = "0 0 0 2880 1"
	
	tMayDayGift_Package[3200002]["Space"] = 1
	tMayDayGift_Package[3200002]["Effect"] = "zf2-e280"
	tMayDayGift_Package[3200002]["Log"] = "0,0,3200002,1,12000363,2,3009001,1"
	
	
	--五一福利礼包
	tMayDayGift_Package[3200003]= {}
	
	tMayDayGift_Package[3200003]["Stc"]={}
	tMayDayGift_Package[3200003]["Stc"]["Event"] =144
	tMayDayGift_Package[3200003]["Stc"]["Type"] = 44
	tMayDayGift_Package[3200003]["Stc"]["ResEvent"] =144
	tMayDayGift_Package[3200003]["Stc"]["ResType"] = 45
	
	tMayDayGift_Package[3200003]["NotTime"] ="2016-01-01 00:00 2016-04-30 23:59"
	
	tMayDayGift_Package[3200003]["EmoneyMono"] = 1500

	tMayDayGift_Package[3200003]["Space"] = 1
	tMayDayGift_Package[3200003]["Effect"] = "zf2-e128"
	
	tMayDayGift_Package[3200003]["ItemId1"] = 723744  --1颗九转聚神丹（赠）
	tMayDayGift_Package[3200003]["Attr1"] = ""
	-- tMayDayGift_Package[3200003]["ItemId2"] = 188155 --1件180天时效的1%神佑狂侠名士衣（赠）
	-- tMayDayGift_Package[3200003]["Attr2"] = "0 0 3 259200 1 0 0 1"
	
	tMayDayGift_Package[3200003]["ItemId2"] = 3200048 --狂侠名士衣礼包
	tMayDayGift_Package[3200003]["Attr2"] = ""
	
	tMayDayGift_Package[3200003]["Log"] = {}
	tMayDayGift_Package[3200003]["Log"][1] = "0,0,3200003,1,12000363,1[2],3,1500"
	tMayDayGift_Package[3200003]["Log"][2] = "0,0,3200003,1,12000363,1[3],12,5000"
	tMayDayGift_Package[3200003]["Log"][3] = "0,0,3200003,1,12000363,1[4],3200048[723744],1[1]"
	tMayDayGift_Package[3200003]["Log"][4] = "0,0,3200003,1,12000363,1[4],3200048[12],1[3000]"
	
	--狂侠名士衣礼包
	tMayDayGift_Package[3200048]= {}
	tMayDayGift_Package[3200048]["TS"] = 270
	
	tMayDayGift_Package[3200048]["ItemId"] = 188155
	tMayDayGift_Package[3200048]["Attr1"] = "0 0 3 0 0 0 0 1"
	tMayDayGift_Package[3200048]["Attr2"] = "0 0 3 259200 1 0 0 1"
	
	tMayDayGift_Package[3200048]["EmoneyLog"]="250	4020	270	270	1	" 
	tMayDayGift_Package[3200048]["Log1"] = "270,0,3200048,1,12000363,1[5],188155,1"
	tMayDayGift_Package[3200048]["Log2"] = "0,0,3200048,1,12000363,1[6],188155,1"
	---------------------------------------------------------逻辑部分--------------------------------------------------

--周年庆签到礼官
function MayDayGift_Accept(nNpcId)
	local nEvent = tMayDayGift_NPC["Stc"]["Event"]
	local nType = tMayDayGift_NPC["Stc"]["Type"]
	
	--非活动时间
	if not Sys_ChkFullTime(tMayDayGift_NPC["Activity"]) then
		return
	end
	--等级不够
	if not User_JudgeLevelAndMetempsychosis(tMayDayGift_NPC["Level"],tMayDayGift_NPC["Metempsychosis"]) then
		return
	end
	--已领
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

	--背包空间不足
	local nSpace = tMayDayGift_NPC["Space"] 
	if not User_CheckLeftSpace(nSpace) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end

	--打掩码
	Task_SetStatistic(nEvent,nType,1,1)
	
	--给物品
	Item_AddNewItem(tMayDayGift_NPC["ItemId1"],tMayDayGift_NPC["Attr1"]) --30天未激活神品精炼月卡包
	Item_AddNewItem(tMayDayGift_NPC["ItemId2"],tMayDayGift_NPC["Attr2"]) --五一福利礼包
	
	--光效/log/提示
	User_EffectAdd("self",tMayDayGift_NPC["Effect"])
	Sys_SaveActionFestivalLog(tMayDayGift_NPC["Log"])
	Sys_MsgBox(tMayDayGift_Text[nNpcId]["Receive"])
	--全服公告
	local sUserName = Get_UserName()
	local sBroadCast = string.format(tMayDayGift_Text[nNpcId]["BroadCast"],sUserName)
	Sys_SystemBroadcast(sBroadCast)

end

--神品精炼月卡包
function MayDayGift_OpenMonthPackage(nItemId)
	local nEvent =tMayDayGift_Package[nItemId]["Stc"]["Event"]
	local nType  =tMayDayGift_Package[nItemId]["Stc"]["Type"]
	local nResEvent =tMayDayGift_Package[nItemId]["Stc"]["ResEvent"]
	local nResType  =tMayDayGift_Package[nItemId]["Stc"]["ResType"]
	
	--隔天重置
	if Task_StcInterval(nResEvent,nResType,1,4) then
		Task_SetStatistic(nResEvent,nResType,0,1)
		Task_SetStcTimestamp(nResEvent,nResType,0)
	end
	
	--当日已领过
	if Task_ChkStcValue(nResEvent,nResType,">=",1) then
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
	
	--背包判断
	local nSpace = tMayDayGift_Package[nItemId]["Space"]
	if not User_CheckLeftSpace(nSpace) then
			LinkItemGossipFunc_New(nItemId,"2-2")
		return
	end
	
	--打掩码
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStatistic(nResEvent,nResType,1,1)
	Task_SetStcTimestamp(nResEvent,nResType,0)
	
	--第30次使用月卡
	if Task_ChkStcValue(nEvent,nType,">=",30) then
		if  Item_ChkItem(nItemId) then
			Item_DelItem(nItemId)
		end
		User_TalkChannel2005(tMayDayGift_Text["OverUse"])
	end
	
	--给物品
	Item_AddNewItem(tMayDayGift_Package[3200002]["ItemId"],tMayDayGift_Package[3200002]["Attr"]) --2天时效的明亮星陨石
	
	--光效/log/提示
	User_EffectAdd("self",tMayDayGift_Package[nItemId]["Effect"])
	Sys_SaveActionFestivalLog(tMayDayGift_Package[nItemId]["Log"])
	Sys_MsgBox(tMayDayGift_Text["Receive"])
end


--五一欢庆大礼包  
--天石上限判断
function MayDayGift_TSJudge()
	local nUserEMoney=Get_UserMonoEMoney()
	local nEMoneyMax = G_User_MaxEmoneyMono - nUserEMoney
	local nPackageEMoney = tMayDayGift_Package[3200003]["EmoneyMono"]
	--天石超过上限
	if nPackageEMoney > nEMoneyMax then
		LinkItemGossipFunc_New(3200003,"3-1")
		return false
	end
	return true
end


--第三次打开    选择九转聚神丹*1、180天1%神佑狂侠名士衣（赠）*1
function MayDayGift_OpenThirdChoose1(nItemId)
	--不符合时间
	if Sys_ChkFullTime(tMayDayGift_Package[nItemId]["NotTime"]) then
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
	local nSpace = tMayDayGift_Package[nItemId]["Space"]
	local nEvent =tMayDayGift_Package[nItemId]["Stc"]["Event"]
	local nType  =tMayDayGift_Package[nItemId]["Stc"]["Type"]
	local nResEvent =tMayDayGift_Package[nItemId]["Stc"]["ResEvent"]
	local nResType  =tMayDayGift_Package[nItemId]["Stc"]["ResType"]
	--判断背包空间
	if not User_CheckLeftSpace(nSpace) then
		LinkItemGossipFunc_New(nItemId,"3-2")
		return
	end
	--删除物品
	if  Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Task_SetStatistic(nResEvent,nResType,1,1)
		Task_SetStatistic(nEvent,nType,3,1)
		Item_AddNewItem(tMayDayGift_Package[3200003]["ItemId1"],tMayDayGift_Package[3200003]["Attr1"]) --1颗九转聚神丹（赠）
		Item_AddNewItem(tMayDayGift_Package[3200003]["ItemId2"],tMayDayGift_Package[3200003]["Attr2"]) --狂侠名士衣礼包
		User_EffectAdd("self",tMayDayGift_Package[nItemId]["Effect"])
		Sys_SaveActionFestivalLog(tMayDayGift_Package[nItemId]["Log"][3])
		Sys_MsgBox(tMayDayGift_Text[nItemId]["Reward"][3])
	end

end

--第三次打开选择二种  选3000点气力值+180天1%神佑狂侠名士衣（赠）*1
function MayDayGift_OpenThirdChoose2(nItemId)
	--不符合时间
	if Sys_ChkFullTime(tMayDayGift_Package[nItemId]["NotTime"]) then
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
	local nEvent =tMayDayGift_Package[nItemId]["Stc"]["Event"]
	local nType  =tMayDayGift_Package[nItemId]["Stc"]["Type"]
	local nResEvent =tMayDayGift_Package[nItemId]["Stc"]["ResEvent"]
	local nResType  =tMayDayGift_Package[nItemId]["Stc"]["ResType"]
	--删除物品
	if  Item_ChkItem(nItemId) and Item_DelItem(nItemId)then
		Task_SetStatistic(nResEvent,nResType,1,1)
		Task_SetStatistic(nEvent,nType,3,1)
		Item_AddNewItem(tMayDayGift_Package[3200003]["ItemId2"],tMayDayGift_Package[3200003]["Attr2"]) --狂侠名士衣礼包
		User_AddStrengthValue(3000)  --3000点气力值
		User_EffectAdd("self",tMayDayGift_Package[nItemId]["Effect"])
		Sys_SaveActionFestivalLog(tMayDayGift_Package[nItemId]["Log"][4])
		Sys_MsgBox(tMayDayGift_Text[nItemId]["Reward"][4])
	end

end


function MayDayGift_OpenMayDayPackage(nItemId)
	--不符合时间
	if Sys_ChkFullTime(tMayDayGift_Package[nItemId]["NotTime"]) then
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
	local nEvent =tMayDayGift_Package[nItemId]["Stc"]["Event"]
	local nType  =tMayDayGift_Package[nItemId]["Stc"]["Type"]
	local nResEvent =tMayDayGift_Package[nItemId]["Stc"]["ResEvent"]
	local nResType  =tMayDayGift_Package[nItemId]["Stc"]["ResType"]
	--大于第三次直接退出
	if Task_ChkStcValue(nEvent,nType,">=",3) then
		if Item_ChkItem(nItemId) then
			Item_DelAllItemByType(nItemId)
		end
		return
	end
	--隔天重置
	if Task_StcInterval(nResEvent,nResType,1,4) then
		Task_SetStatistic(nResEvent,nResType,0,1)
		Task_SetStcTimestamp(nResEvent,nResType,0)
	end

	if Task_ChkStcValue(nResEvent,nResType,">=",1) then
		local nNum = Get_UserStatisticValue(nEvent,nType)
		LinkItemGossipFunc_New(nItemId,"5-".. nNum)
		return 
	end
	
	--第一次打开
	if  Task_ChkStcValue(nEvent,nType,"==",0) then
		if not MayDayGift_TSJudge() then --判断天石上限
			return
		end
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStatistic(nResEvent,nResType,1,1)
		User_AddEMoneyMono(1500)  --1500赠点天石
	--第二次
	elseif Task_ChkStcValue(nEvent,nType,"==",1) then
		Task_SetStatistic(nEvent,nType,2,1)
		Task_SetStatistic(nResEvent,nResType,1,1)
		User_AddStrengthValue(5000) --5000 气力值
	--第三次打开
	else
		--等级满
		local nUserLev = Get_UserLevel()
		if G_User_MaxLev <= nUserLev then
			LinkItemGossipFunc_New(nItemId,"4-1")
			return 
		end
		MayDayGift_OpenThirdChoose1(nItemId)
	end
	--光效、提示、log
	local nNum = Get_UserStatisticValue(nEvent,nType)
	if nNum <=2 then
		User_EffectAdd("self",tMayDayGift_Package[nItemId]["Effect"])
		Sys_SaveActionFestivalLog(tMayDayGift_Package[nItemId]["Log"][nNum])
		Sys_MsgBox(tMayDayGift_Text[nItemId]["Reward"][nNum])
	end
	
end

---------狂侠名士衣礼包
--付费打开
function MayDayGift_SpendEmoney(nItemId)
	local nCostEMoney = tMayDayGift_Package[nItemId]["TS"]
	local nUserEMoney = Get_UserEMoney() --玩家身上的天石
	-- 天石不足
	if nUserEMoney < nCostEMoney then
		LinkItemGossipFunc_New(nItemId,"3-1")
		return
	end
	--删除物品并扣除天石
	if  Item_ChkItem(nItemId) and Item_DelItem(nItemId)then
		User_AddEMoney(-nCostEMoney)
		Sys_SaveEmoneyBuy(tMayDayGift_Package[nItemId]["EmoneyLog"])
		local nItem = tMayDayGift_Package[nItemId]["ItemId"]
		local sAttr1 = tMayDayGift_Package[nItemId]["Attr1"]
		Item_AddNewItem(nItem,sAttr1)
		Sys_SaveActionFestivalLog(tMayDayGift_Package[nItemId]["Log1"])
		Sys_MsgBox(tMayDayGift_Text[nItemId]["Reward1"])
	end

end
--免费打开
function MayDayGift_Free(nItemId)
	if  Item_ChkItem(nItemId) and Item_DelItem(nItemId)then
		local nItem = tMayDayGift_Package[nItemId]["ItemId"]
		local sAttr2 = tMayDayGift_Package[nItemId]["Attr2"]
		Item_AddNewItem(nItem,sAttr2)
		Sys_SaveActionFestivalLog(tMayDayGift_Package[nItemId]["Log2"])
		 Sys_MsgBox(tMayDayGift_Text[nItemId]["Reward2"])
	end
end
------------npc 模块------------------------------
--周年庆签到礼官
tNpcFace[4098] = 247
tNpcGossip[19252]= tNpcGossip[19252] or DefaultNpc:new{}
tNpcGossip[19252]["OptionHidden"] = 1

--活动前
tNpcGossip[19252]["Text1-1"] = {111}
tNpcGossip[19252]["Text111"] = tMayDayGift_Text[19252]["Text111"]
tNpcGossip[19252]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tMayDayGift_NPC["BeforeActivity"])
end
tNpcGossip[19252]["tOption1-1"] = {111}
tNpcGossip[19252]["Option111"] = tMayDayGift_Text[19252]["Option111"]

--活动中 未满足等级
tNpcGossip[19252]["Text1-2"] = {121}
tNpcGossip[19252]["Text121"] = tMayDayGift_Text[19252]["Text121"]
tNpcGossip[19252]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tMayDayGift_NPC["Activity"]) and (not User_JudgeLevelAndMetempsychosis(tMayDayGift_NPC["Level"],tMayDayGift_NPC["Metempsychosis"]))
end
tNpcGossip[19252]["tOption1-2"] = {121}
tNpcGossip[19252]["Option121"] = tMayDayGift_Text[19252]["Option121"]


--活动中 满足等级
tNpcGossip[19252]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[19252]["Text131"] = tMayDayGift_Text[19252]["Text131"]
tNpcGossip[19252]["Text132"] = tMayDayGift_Text[19252]["Text132"]
tNpcGossip[19252]["Text133"] = tMayDayGift_Text[19252]["Text133"]
tNpcGossip[19252]["Text134"] = tMayDayGift_Text[19252]["Text134"]
tNpcGossip[19252]["Text135"] = tMayDayGift_Text[19252]["Text135"]
tNpcGossip[19252]["Text136"] = tMayDayGift_Text[19252]["Text136"]
tNpcGossip[19252]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tMayDayGift_NPC["Activity"])
end
tNpcGossip[19252]["tOption1-3"] = {131,132}
tNpcGossip[19252]["Option131"] = tMayDayGift_Text[19252]["Option131"]
tNpcGossip[19252]["Option132"] = tMayDayGift_Text[19252]["Option132"]
tNpcGossip[19252]["OptionFunc131"] = "MayDayGift_Accept</N>19252"

--活动后
tNpcGossip[19252]["Text1-4"] = {141}
tNpcGossip[19252]["Text141"] = tMayDayGift_Text[19252]["Text141"]
tNpcGossip[19252]["tOption1-4"] = {141}
tNpcGossip[19252]["Option141"] = tMayDayGift_Text[19252]["Option141"]

--已领
tNpcGossip[19252]["Text2-1"] = {211}
tNpcGossip[19252]["Text211"] = tMayDayGift_Text[19252]["Text211"]
tNpcGossip[19252]["tOption2-1"] = {211}
tNpcGossip[19252]["Option211"] = tMayDayGift_Text[19252]["Option211"]
-- 背包满
tNpcGossip[19252]["Text2-2"] = {221}
tNpcGossip[19252]["Text221"] = tMayDayGift_Text[19252]["Text221"]
tNpcGossip[19252]["tOption2-2"] = {221}
tNpcGossip[19252]["Option221"] = tMayDayGift_Text[19252]["Option221"]

--------------------------------------物品模块-------------------------------------------

--神品精炼月卡包
tItem[3200002] = tItem[3200002] or {}
tItem[3200002]["Function"] = function(nItemId,sItemName)
	MayDayGift_OpenMonthPackage(nItemId)
end
--当前已开启
tItem[3200002]["Text2-1"] = {211}
tItem[3200002]["Text211"] = tMayDayGift_Text[3200002]["Text211"]
tItem[3200002]["tOption2-1"] = {1}
tItem[3200002]["Option1"] = tMayDayGift_Text[3200002]["Option1"]
--背包满
tItem[3200002]["Text2-2"] = {221}
tItem[3200002]["Text221"] = tMayDayGift_Text[3200002]["Text221"]
tItem[3200002]["tOption2-2"] = {2}
tItem[3200002]["Option2"] = tMayDayGift_Text[3200002]["Option2"]



--五一福利礼包
tItem[3200003] = tItem[3200003] or {}
tItem[3200003]["Function"] = function(nItemId,sItemName)
	MayDayGift_OpenMayDayPackage(nItemId)
end

--未到时间
tItem[3200003]["Text2-1"] = {211,212,213,214,215,216}
tItem[3200003]["Text211"] = tMayDayGift_Text[3200003]["Text211"]
tItem[3200003]["Text212"] = tMayDayGift_Text[3200003]["Text212"]
tItem[3200003]["Text213"] = tMayDayGift_Text[3200003]["Text213"]
tItem[3200003]["Text214"] = tMayDayGift_Text[3200003]["Text214"]
tItem[3200003]["Text215"] = tMayDayGift_Text[3200003]["Text215"]
tItem[3200003]["Text216"] = tMayDayGift_Text[3200003]["Text216"]

tItem[3200003]["tOption2-1"] = {1}
tItem[3200003]["Option1"] = tMayDayGift_Text[3200003]["Option1"]

--第1次打开后
tItem[3200003]["Text5-1"] = {511}
tItem[3200003]["Text511"] = tMayDayGift_Text[3200003]["Text511"]
tItem[3200003]["tOption5-1"] = {2}
tItem[3200003]["Option2"] = tMayDayGift_Text[3200003]["Option2"]

--第2次开启
tItem[3200003]["Text5-2"] = {521}
tItem[3200003]["Text521"] = tMayDayGift_Text[3200003]["Text521"]
tItem[3200003]["tOption5-2"] = {3}
tItem[3200003]["Option3"] = tMayDayGift_Text[3200003]["Option3"]

--天石满
tItem[3200003]["Text3-1"] = {311}
tItem[3200003]["Text311"] = tMayDayGift_Text[3200003]["Text311"]
tItem[3200003]["tOption3-1"] = {4}
tItem[3200003]["Option4"] = tMayDayGift_Text[3200003]["Option4"]
--背包满
tItem[3200003]["Text3-2"] = {321}
tItem[3200003]["Text321"] = tMayDayGift_Text[3200003]["Text321"]
tItem[3200003]["tOption3-2"] = {5}
tItem[3200003]["Option5"] = tMayDayGift_Text[3200003]["Option5"]

--满级
tItem[3200003]["Text4-1"] = {411,412}
tItem[3200003]["Text411"] = tMayDayGift_Text[3200003]["Text411"]
tItem[3200003]["Text412"] = tMayDayGift_Text[3200003]["Text412"]
tItem[3200003]["tOption4-1"] = {6,7}
tItem[3200003]["Option6"] = tMayDayGift_Text[3200003]["Option6"]
tItem[3200003]["Option7"] = tMayDayGift_Text[3200003]["Option7"]
tItem[3200003]["OptionFunc6"]="MayDayGift_OpenThirdChoose1</N>3200003"
tItem[3200003]["OptionFunc7"]="MayDayGift_OpenThirdChoose2</N>3200003"

--狂侠名士
tItem[3200048] = tItem[3200048] or {}
tItem[3200048]["Text1-1"]={111}
tItem[3200048]["Text111"]=tMayDayGift_Text[3200048]["Text111"]
tItem[3200048]["tOption1-1"]={1,2}
tItem[3200048]["Option1"]=tMayDayGift_Text[3200048]["Option1"]
tItem[3200048]["Option2"]=tMayDayGift_Text[3200048]["Option2"]
--付费开启礼包（270天石）。
tItem[3200048]["OptionPoint1"]="2-1"
--免费开启礼包。
tItem[3200048]["OptionPoint2"]="2-2"

tItem[3200048]["Text2-1"]={211}
tItem[3200048]["Text211"]=tMayDayGift_Text[3200048]["Text211"]
tItem[3200048]["tOption2-1"]={3,4}
--确定
tItem[3200048]["Option3"]=tMayDayGift_Text[3200048]["Option3"]
tItem[3200048]["OptionFunc3"]="MayDayGift_SpendEmoney</N>3200048"
--取消
tItem[3200048]["Option4"]=tMayDayGift_Text[3200048]["Option4"]


tItem[3200048]["Text2-2"]={221}
tItem[3200048]["Text221"]=tMayDayGift_Text[3200048]["Text221"]
tItem[3200048]["tOption2-2"]={5,6}
tItem[3200048]["Option5"]=tMayDayGift_Text[3200048]["Option5"]
--确定
tItem[3200048]["OptionFunc5"]="MayDayGift_Free</N>3200048"
--取消
tItem[3200048]["Option6"]=tMayDayGift_Text[3200048]["Option6"]

--天石不足
tItem[3200048]["Text3-1"]={311}
tItem[3200048]["Text311"]=tMayDayGift_Text[3200048]["Text311"]
tItem[3200048]["tOption3-1"]={7}
tItem[3200048]["Option7"]=tMayDayGift_Text[3200048]["Option7"]
