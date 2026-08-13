------------------------------------------------------------------------------------
--Name:			151015[简体征服][活动脚本]2016春节活动之吃幸运饺子
--Purpose:		2016春节活动之吃幸运饺子
--Creator:		王倩娜
--Created:		2015/11/11
------------------------------------------------------------------------------------
--[[
命名前缀 SpringFestival2016_LuckyDumplings_


######掩码说明
#139 07 免费领取饺子一天一次。
#139 08 一天只能购买3次饺子，购买一个和十个共用。
#139 09 一天只能购买一次10个饺子

#139 10 1个节日礼包共用一天只能获得一次。
#139 11 1个流星一天只能获得5次
#139 12 1个普通宝石共用一天只能获得5次


#logid 12000257

]]--
-------------------------------数据存储表------------------------
local tSpringFestival2016_LuckyDumplings_Cont = {}
	--活动时间：2016年2月8日-2016年2月17日
	tSpringFestival2016_LuckyDumplings_Cont["BeforeTime"] = "2016-01-01 00:00 2017-01-27 23:59"
	tSpringFestival2016_LuckyDumplings_Cont["DuringTime"] = "2017-01-28 00:00 2017-02-06 23:59"

	tSpringFestival2016_LuckyDumplings_Cont["Metempsychosis"] = 0
	tSpringFestival2016_LuckyDumplings_Cont["Level"] = 80
	
	tSpringFestival2016_LuckyDumplings_Cont["ExploreTime"] = 3
	tSpringFestival2016_LuckyDumplings_Cont["ExploreAction"] = 220

	tSpringFestival2016_LuckyDumplings_Cont["Effect"] = {}
	tSpringFestival2016_LuckyDumplings_Cont["Effect"]["FestivalId"] = "Intone"
	tSpringFestival2016_LuckyDumplings_Cont["Effect"]["Bless"] = "angelwing"
	tSpringFestival2016_LuckyDumplings_Cont["Effect"]["Other"] = "heal2"
	
-- #139 07 免费领取饺子一天一次。
-- #139 08 一天只能购买3次饺子，购买一个和十个共用。
-- #139 09 一天只能购买一次10个饺子
	tSpringFestival2016_LuckyDumplings_Cont["FreeDumpling"] = {}
		tSpringFestival2016_LuckyDumplings_Cont["FreeDumpling"]["Event"] = 139
		tSpringFestival2016_LuckyDumplings_Cont["FreeDumpling"]["StcType"] = 07
		tSpringFestival2016_LuckyDumplings_Cont["FreeDumpling"]["nSign"] = 1

	tSpringFestival2016_LuckyDumplings_Cont["BuyChance"] = {}
		tSpringFestival2016_LuckyDumplings_Cont["BuyChance"]["Event"] = 139
		tSpringFestival2016_LuckyDumplings_Cont["BuyChance"]["StcType"] = 08
		tSpringFestival2016_LuckyDumplings_Cont["BuyChance"]["nSign"] = 3

	tSpringFestival2016_LuckyDumplings_Cont["TenDumpling"] = {}
		tSpringFestival2016_LuckyDumplings_Cont["TenDumpling"]["Event"] = 139
		tSpringFestival2016_LuckyDumplings_Cont["TenDumpling"]["StcType"] = 09
		tSpringFestival2016_LuckyDumplings_Cont["TenDumpling"]["nSign"] = 1
-- #139 10 1个节日礼包共用一天只能获得一次。
-- #139 11 1个流星一天只能获得5次
-- #139 12 1个普通宝石共用一天只能获得5次
	tSpringFestival2016_LuckyDumplings_Cont["FestivalId"] = {}
		tSpringFestival2016_LuckyDumplings_Cont["FestivalId"]["Event"] = 139
		tSpringFestival2016_LuckyDumplings_Cont["FestivalId"]["StcType"] = 10
		tSpringFestival2016_LuckyDumplings_Cont["FestivalId"]["nSign"] = 1

	tSpringFestival2016_LuckyDumplings_Cont["Meteor"] = {}
		tSpringFestival2016_LuckyDumplings_Cont["Meteor"]["Event"] = 139
		tSpringFestival2016_LuckyDumplings_Cont["Meteor"]["StcType"] = 11
		tSpringFestival2016_LuckyDumplings_Cont["Meteor"]["nSign"] = 5

	tSpringFestival2016_LuckyDumplings_Cont["Gem"] = {}
		tSpringFestival2016_LuckyDumplings_Cont["Gem"]["Event"] = 139
		tSpringFestival2016_LuckyDumplings_Cont["Gem"]["StcType"] = 12
		tSpringFestival2016_LuckyDumplings_Cont["Gem"]["nSign"] = 5
	
		
	tSpringFestival2016_LuckyDumplings_Cont["Space"] = 1
		
	-- 奖励物品
	tSpringFestival2016_LuckyDumplings_Cont["Money"] = {}
	tSpringFestival2016_LuckyDumplings_Cont["Money"][1] = 10000
	tSpringFestival2016_LuckyDumplings_Cont["Money"][10] = 100000
	
	tSpringFestival2016_LuckyDumplings_Cont["Dumplings"] = 3007863
	tSpringFestival2016_LuckyDumplings_Cont["MeteorId"] = 1088001
	tSpringFestival2016_LuckyDumplings_Cont["GemId"] = {}
	tSpringFestival2016_LuckyDumplings_Cont["GemId"][1] = 700001
	tSpringFestival2016_LuckyDumplings_Cont["GemId"][2] = 700011
	tSpringFestival2016_LuckyDumplings_Cont["GemId"][3] = 700021
	tSpringFestival2016_LuckyDumplings_Cont["GemId"][4] = 700031
	tSpringFestival2016_LuckyDumplings_Cont["GemId"][5] = 700041
	tSpringFestival2016_LuckyDumplings_Cont["GemId"][6] = 700051
	tSpringFestival2016_LuckyDumplings_Cont["GemId"][7] = 700061
	-- 替补祝福
	tSpringFestival2016_LuckyDumplings_Cont["Bless"] = {}
	tSpringFestival2016_LuckyDumplings_Cont["Bless"]["FestivalId"] = 1
	tSpringFestival2016_LuckyDumplings_Cont["Bless"]["Meteor"] = 3
	tSpringFestival2016_LuckyDumplings_Cont["Bless"]["Gem"] = 24
	
	--节日礼包
	tSpringFestival2016_LuckyDumplings_Cont["FestGift"] = 3359
	tSpringFestival2016_LuckyDumplings_Cont["LogId"] = 12000257

	--log
	tSpringFestival2016_LuckyDumplings_Cont["Log"] = {}
	tSpringFestival2016_LuckyDumplings_Cont["Log"]["GetOneDumpling"] = "0,0,0,0,12000257,1[1],3007863,1"
	tSpringFestival2016_LuckyDumplings_Cont["Log"]["GetDumpling"] = "0,0,0,0,12000257,1[1],3007863,%d"
	tSpringFestival2016_LuckyDumplings_Cont["Log"]["GetReward"] = "0,0,0,0,12000257,1[2],%d,1"
	tSpringFestival2016_LuckyDumplings_Cont["Log"]["GetBless"] = "0,0,0,0,12000257,4,5,%d"
		
	--概率
	local  tSpringFestival2016_LuckyDumplings_Award = {}
	tSpringFestival2016_LuckyDumplings_Award["Reward"] = {}
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1] = {}
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1]["ItemChanceSum"] = 10000					

	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][1] = {}
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][1]["RandomItemChanceType"] = 2			
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][1]["ItemChance"] = 2000				
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][1]["Item_1"] = {"FestivalId",1}

	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][2] = {}
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][2]["ItemChance"] = 1000
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][2]["Item_1"] = {"Meteor",1}

	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][3] = {}
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][3]["ItemChance"] = 1000
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][3]["Item_1"] = {"Gem",1}

	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][4] = {}
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][4]["ItemChance"] = 2500
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][4]["Item_1"] = {"Bless",1}

	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][5] = {}
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][5]["ItemChance"] = 2000
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][5]["Item_1"] = {"Bless",3}

	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][6] = {}
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][6]["ItemChance"] = 1500
	tSpringFestival2016_LuckyDumplings_Award["Reward"][1][6]["Item_1"] = {"Bless",24}

	-- 购买的确认对白
	local tSpringFestival2016_LuckyDumplings_Gossip = {}
		tSpringFestival2016_LuckyDumplings_Gossip[1] = {}
		tSpringFestival2016_LuckyDumplings_Gossip[1][0] = "4-2"
		tSpringFestival2016_LuckyDumplings_Gossip[1][1] = "4-3"
		
		tSpringFestival2016_LuckyDumplings_Gossip[10] = {}
		tSpringFestival2016_LuckyDumplings_Gossip[10][0] = "4-4"
		tSpringFestival2016_LuckyDumplings_Gossip[10][1] = "4-5"
------------------------------逻辑部分---------------------------
--时间、等级
function SpringFestival2016_LuckyDumplings_TimeAndLevel(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tSpringFestival2016_LuckyDumplings_Cont["DuringTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return false
	end
	
	-- 判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_LuckyDumplings_Cont["Level"],tSpringFestival2016_LuckyDumplings_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return false
	end
	
	return true
end
function SpringFestival2016_LuckyDumplings_DrawFreeDumplings(nNpcId)
	if not SpringFestival2016_LuckyDumplings_TimeAndLevel(nNpcId) then
		return
	end
	-- #139 07 免费领取饺子一天一次。
	local nEvent = tSpringFestival2016_LuckyDumplings_Cont["FreeDumpling"]["Event"]
	local nType = tSpringFestival2016_LuckyDumplings_Cont["FreeDumpling"]["StcType"]
	local nSign = tSpringFestival2016_LuckyDumplings_Cont["FreeDumpling"]["nSign"]
	
	if Task_ChkStcValue(nEvent,nType,">=",nSign) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return
		else
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	
	if not User_CheckLeftSpace(tSpringFestival2016_LuckyDumplings_Cont["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	Task_SetStatistic(nEvent,nType,nSign,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
		
	local nItemId =	tSpringFestival2016_LuckyDumplings_Cont["Dumplings"]
	Item_AddItem(nItemId)
	Sys_SaveActionFestivalLog(tSpringFestival2016_LuckyDumplings_Cont["Log"]["GetOneDumpling"])
	LinkNpcGossipFunc_New(nNpcId,"3-1")

end

--对应清理掩码
function SpringFestival2016_LuckyDumplings_StcBuyClear()
	-- #139 08 一天只能购买3次饺子，购买一个和十个共用。
	local nBuyEvent = tSpringFestival2016_LuckyDumplings_Cont["BuyChance"]["Event"]
	local nBuyType = tSpringFestival2016_LuckyDumplings_Cont["BuyChance"]["StcType"]
	local nTenEvent = tSpringFestival2016_LuckyDumplings_Cont["TenDumpling"]["Event"]
	local nTenType = tSpringFestival2016_LuckyDumplings_Cont["TenDumpling"]["StcType"]
	local nTenSign = tSpringFestival2016_LuckyDumplings_Cont["TenDumpling"]["nSign"]

	if Task_ChkStcValue(nBuyEvent,nBuyType,">=",1) then
		if not Task_StcInterval(nBuyEvent,nBuyType,1,4) then
			return false
		else 
			Task_SetStatistic(nTenEvent,nTenType,0,1,0)
			Task_SetStatistic(nBuyEvent,nBuyType,0,1,0)
			Task_SetStcTimestamp(nBuyEvent,nBuyType,0,0)
			Task_SetStcTimestamp(nTenEvent,nTenType,0,0)
		end
	end
	return true
end
--买饺子
function SpringFestival2016_LuckyDumplings_BuyDumplings(nNpcId)
	if not SpringFestival2016_LuckyDumplings_TimeAndLevel(nNpcId) then
		return
	end
	-- 清理下掩码
	if not SpringFestival2016_LuckyDumplings_StcBuyClear() then
		local nBuyEvent = tSpringFestival2016_LuckyDumplings_Cont["BuyChance"]["Event"]
		local nBuyType = tSpringFestival2016_LuckyDumplings_Cont["BuyChance"]["StcType"]
		if Task_ChkStcValue(nBuyEvent,nBuyType,">=",3) then
			LinkNpcGossipFunc_New(nNpcId,"4-8")
			return
		end
	end

	LinkNpcGossipFunc_New(nNpcId,"4-1")
end
-- 二重提示
function SpringFestival2016_LuckyDumplings_Purchase(nNpcId,nNum)
	if not SpringFestival2016_LuckyDumplings_TimeAndLevel(nNpcId) then
		return
	end
	
	local nTenEvent = tSpringFestival2016_LuckyDumplings_Cont["TenDumpling"]["Event"]
	local nTenType = tSpringFestival2016_LuckyDumplings_Cont["TenDumpling"]["StcType"]
	-- 0是未买十个，1是买过
	local nFlag = Get_UserStatisticValue(nTenEvent,nTenType)
	local sGossip = tSpringFestival2016_LuckyDumplings_Gossip[nNum][nFlag]
	
	LinkNpcGossipFunc_New(nNpcId,sGossip)
end
-- 购买
function SpringFestival2016_LuckyDumplings_DetailBuy(nNpcId,nNum)
	if not SpringFestival2016_LuckyDumplings_TimeAndLevel(nNpcId) then
		return
	end
	
	local nBuyEvent = tSpringFestival2016_LuckyDumplings_Cont["BuyChance"]["Event"]
	local nBuyType = tSpringFestival2016_LuckyDumplings_Cont["BuyChance"]["StcType"]
	local nBuySign = tSpringFestival2016_LuckyDumplings_Cont["BuyChance"]["nSign"]
	local nTenEvent = tSpringFestival2016_LuckyDumplings_Cont["TenDumpling"]["Event"]
	local nTenType = tSpringFestival2016_LuckyDumplings_Cont["TenDumpling"]["StcType"]

	-- 清理下掩码
	if not SpringFestival2016_LuckyDumplings_StcBuyClear() then
		if Task_ChkStcValue(nBuyEvent,nBuyType,">=",nBuySign) then
			LinkNpcGossipFunc_New(nNpcId,"4-8")
			return
		end
	end
	
	--空间
	if not User_CheckLeftSpace (tSpringFestival2016_LuckyDumplings_Cont["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-7")
		return
	end
	
	local nMoney = tSpringFestival2016_LuckyDumplings_Cont["Money"][nNum]
	if not User_CanPutMoney2Bag(-nMoney) then
		LinkNpcGossipFunc_New(nNpcId,"4-6")
		return
	end
	
	User_AddMoney(-1*nMoney)
	
	local nTemp =  Get_UserStatisticValue(nBuyEvent,nBuyType)
	nTemp = nTemp + 1
	Task_SetStatistic(nBuyEvent,nBuyType,nTemp,1,0)
	Task_SetStcTimestamp(nBuyEvent,nBuyType,0,0)
	if nNum == 10 then
		Task_SetStatistic(nTenEvent,nTenType,1,1,0)
	end
	
	local nItemId = tSpringFestival2016_LuckyDumplings_Cont["Dumplings"]
	local sDumplingsLog = string.format(tSpringFestival2016_LuckyDumplings_Cont["Log"]["GetDumpling"],nNum)
	local nCount = Get_UserStatisticValue(nBuyEvent,nBuyType)
	local sSysBox = string.format(tSpringFestival2016_LuckyDumplings_Text[18906]["GetDumpling"],nMoney,nCount)
	
	Item_AddItem(nItemId,0,nNum)
	Sys_SaveActionFestivalLog(sDumplingsLog)
	Sys_MsgBox(sSysBox)
end
-- 吃饺子
function SpringFestival2016_LuckyDumplings_Eat(nItemId)
	if not Item_ChkItem(nItemId) then 
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tSpringFestival2016_LuckyDumplings_Cont["DuringTime"]) then
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tSpringFestival2016_LuckyDumplings_Text["MsgBox"]["OverDelete"])
		end
		return
	end

	--空间
	if not User_CheckLeftSpace (tSpringFestival2016_LuckyDumplings_Cont["Space"]) then
		User_TalkChannel2005(tSpringFestival2016_LuckyDumplings_Text["MsgBox"]["NoSpace"])
		return
	end

	if not Item_DelItem(nItemId) then
		return 
	end
	
	-- 概率 
	local flat,tNum = Probabil_RandomAward(tSpringFestival2016_LuckyDumplings_Award["Reward"],1)  
	local sReward = tostring(tNum[1]["tAward"][1]["Item_1"][1])
	local nHours = tonumber(tNum[1]["tAward"][1]["Item_1"][2])

	if sReward == "Bless" then
		--给祝福
		SpringFestival2016_LuckyDumplings_AddBless(nHours)
	else
		SpringFestival2016_LuckyDumplings_AddotherReward(sReward)		
	end
end
-- 给祝福
function SpringFestival2016_LuckyDumplings_AddBless(nHours)
	local sLog = string.format(tSpringFestival2016_LuckyDumplings_Cont["Log"]["GetBless"],nHours)
	local sText = string.format(tSpringFestival2016_LuckyDumplings_Text["MsgBox"]["Bless"],nHours)
	
	User_AddBless(nHours)
	Sys_SaveActionFestivalLog(sLog)
	User_EffectAdd("self",tSpringFestival2016_LuckyDumplings_Cont["Effect"]["Bless"])
	Sys_MsgBox(sText)
end

function SpringFestival2016_LuckyDumplings_AddotherReward(sReward)
	-- 当天上限
	if not SpringFestival2016_LuckyDumplings_CheakStcNoChance(sReward) then
		local nHours = tSpringFestival2016_LuckyDumplings_Cont["Bless"][sReward]
		SpringFestival2016_LuckyDumplings_AddBless(nHours)
		return
	end
	
	local nEvent = tSpringFestival2016_LuckyDumplings_Cont[sReward]["Event"]
	local nType = tSpringFestival2016_LuckyDumplings_Cont[sReward]["StcType"]
	local nTemp = Get_UserStatisticValue(nEvent,nType) + 1
	
	Task_SetStatistic(nEvent,nType,nTemp,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	if sReward == "FestivalId" then
		FestivalGeneralPackage_GetGift(tSpringFestival2016_LuckyDumplings_Cont["FestGift"],tSpringFestival2016_LuckyDumplings_Cont["LogId"])
		User_EffectAdd("self",tSpringFestival2016_LuckyDumplings_Cont["Effect"]["FestivalId"])
		Sys_MsgBox(tSpringFestival2016_LuckyDumplings_Text["MsgBox"]["Festival"])
		return
	end
	
	local nRewardId = 0
	if sReward == "Gem" then
		local nNum = math.random(1,7)
		nRewardId = tSpringFestival2016_LuckyDumplings_Cont["GemId"][nNum]
	else
		nRewardId = tSpringFestival2016_LuckyDumplings_Cont["MeteorId"]
	end
	
	Item_AddItem(nRewardId)
	
	local sLog = string.format(tSpringFestival2016_LuckyDumplings_Cont["Log"]["GetReward"],nRewardId)
	local sText = string.format(tSpringFestival2016_LuckyDumplings_Text["MsgBox"]["OtherReward"],tSpringFestival2016_LuckyDumplings_Text["Reward"][nRewardId])
	Sys_SaveActionFestivalLog(sLog)
	User_EffectAdd("self",tSpringFestival2016_LuckyDumplings_Cont["Effect"]["Other"])
	Sys_MsgBox(sText)	
end
-- 检测掩码是否大于最大值、符合情理
function SpringFestival2016_LuckyDumplings_CheakStcNoChance(sReward)

	local nEvent = tSpringFestival2016_LuckyDumplings_Cont[sReward]["Event"]
	local nType = tSpringFestival2016_LuckyDumplings_Cont[sReward]["StcType"]
	local nSign = tSpringFestival2016_LuckyDumplings_Cont[sReward]["nSign"]
	
	if Task_ChkStcValue(nEvent,nType,">=",nSign) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			return false
		else
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	
	return true	 
end
------------------------------Npc模版部分------------------------
--18906	宫廷御厨火鸡克星
tNpcFace[3320] = 170

tNpcGossip[18906] = tNpcGossip[18906] or DefaultNpc:new{}
tNpcGossip[18906]["OptionHidden"] = 1
	--活动前对话
	tNpcGossip[18906]["Text1-1"] = {111,112,113,114,115}
	tNpcGossip[18906]["Text111"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text111"]
	tNpcGossip[18906]["Text112"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text112"]
	tNpcGossip[18906]["Text113"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text113"]
	tNpcGossip[18906]["Text114"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text114"]
	tNpcGossip[18906]["Text115"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text115"]
	tNpcGossip[18906]["tOption1-1"] = {1}
	tNpcGossip[18906]["ChkFunc1-1"] = function()
		return Sys_ChkFullTime(tSpringFestival2016_LuckyDumplings_Cont["BeforeTime"])
	end
	tNpcGossip[18906]["Option1"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option1"]
	
	-- 等级：
	tNpcGossip[18906]["Text1-2"] = {121,122}
	tNpcGossip[18906]["Text121"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text211"]
	tNpcGossip[18906]["Text122"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text212"]
	tNpcGossip[18906]["tOption1-2"] = {7}
	tNpcGossip[18906]["ChkFunc1-2"] = function()
		return not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_LuckyDumplings_Cont["Level"],tSpringFestival2016_LuckyDumplings_Cont["Metempsychosis"])
	end
	
	--中
	tNpcGossip[18906]["Text1-3"] = {131,132,133,134,135}
	tNpcGossip[18906]["Text131"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text121"]
	tNpcGossip[18906]["Text132"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text122"]
	tNpcGossip[18906]["Text133"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text123"]
	tNpcGossip[18906]["Text134"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text124"]
	tNpcGossip[18906]["Text135"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text125"]
	tNpcGossip[18906]["tOption1-3"] = {2,3,4,5}
	tNpcGossip[18906]["ChkFunc1-3"] = function()
		return Sys_ChkFullTime(tSpringFestival2016_LuckyDumplings_Cont["DuringTime"]) 
	end
	
	-- 领取饺子
	tNpcGossip[18906]["Option2"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option2"]
	tNpcGossip[18906]["OptionFunc2"]="SpringFestival2016_LuckyDumplings_DrawFreeDumplings</N>18906"
	-- 购买饺子		
	tNpcGossip[18906]["Option3"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option3"]
	tNpcGossip[18906]["OptionFunc3"]="SpringFestival2016_LuckyDumplings_BuyDumplings</N>18906"
	-- 详情
	tNpcGossip[18906]["Option4"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option4"]
	tNpcGossip[18906]["OptionPoint4"] = "2-2"
	-- null
	tNpcGossip[18906]["Option5"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option5"]

	-- 后
	tNpcGossip[18906]["Text1-4"] = {141,142}
	tNpcGossip[18906]["Text141"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text131"]
	tNpcGossip[18906]["Text142"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text132"]
	tNpcGossip[18906]["tOption1-4"] = {6}
	tNpcGossip[18906]["Option6"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option6"]
	-- 等级：
	tNpcGossip[18906]["Text2-1"] = {211,212}
	tNpcGossip[18906]["Text211"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text211"]
	tNpcGossip[18906]["Text212"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text212"]
	tNpcGossip[18906]["tOption2-1"] = {7}
	tNpcGossip[18906]["Option7"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option7"]
	-- 详情
	tNpcGossip[18906]["Text2-2"] = {221,222,223}
	tNpcGossip[18906]["Text221"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text221"]
	tNpcGossip[18906]["Text222"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text222"]
	tNpcGossip[18906]["Text223"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text223"]
	tNpcGossip[18906]["tOption2-2"] = {8}
	tNpcGossip[18906]["Option8"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option8"]
	
	-- 领取部分：
	-- 成功
	tNpcGossip[18906]["Text3-1"] = {311}
	tNpcGossip[18906]["Text311"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text311"]
	tNpcGossip[18906]["tOption3-1"] = {9}
	tNpcGossip[18906]["Option9"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option9"]
	-- 领过
	tNpcGossip[18906]["Text3-2"] = {321,322}
	tNpcGossip[18906]["Text321"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text321"]
	tNpcGossip[18906]["Text322"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text322"]
	tNpcGossip[18906]["tOption3-2"] = {10}
	tNpcGossip[18906]["Option10"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option10"]
	tNpcGossip[18906]["OptionFunc10"]="SpringFestival2016_LuckyDumplings_BuyDumplings</N>18906"
	-- 背包
	tNpcGossip[18906]["Text3-3"] = {331}
	tNpcGossip[18906]["Text331"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text331"]
	tNpcGossip[18906]["tOption3-3"] = {11}
	tNpcGossip[18906]["Option11"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option11"]
	
	-- 购买部分：
	tNpcGossip[18906]["Text4-1"] = {411,412,413}
	tNpcGossip[18906]["Text411"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text411"]
	tNpcGossip[18906]["Text412"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text412"]
	tNpcGossip[18906]["Text413"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text413"]
	tNpcGossip[18906]["tOption4-1"] = {12,13,14}
	tNpcGossip[18906]["Option12"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option12"]
	tNpcGossip[18906]["OptionFunc12"]="SpringFestival2016_LuckyDumplings_Purchase</N>18906</N>1"
	tNpcGossip[18906]["Option13"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option13"]
	tNpcGossip[18906]["OptionFunc13"]="SpringFestival2016_LuckyDumplings_Purchase</N>18906</N>10"
	tNpcGossip[18906]["Option14"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option14"]

	-- 要一笼
	-- 提示10笼
	tNpcGossip[18906]["Text4-2"] = {421,422}
	tNpcGossip[18906]["Text421"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text421"]
	tNpcGossip[18906]["Text422"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text422"]
	tNpcGossip[18906]["tOption4-2"] = {17,16}
	tNpcGossip[18906]["Option17"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option17"]
	tNpcGossip[18906]["OptionPoint17"] = "4-3"
	tNpcGossip[18906]["Option16"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option16"]
	-- 确认1笼
	tNpcGossip[18906]["Text4-3"] = {431}
	tNpcGossip[18906]["Text431"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text431"]
	tNpcGossip[18906]["tOption4-3"] = {15,16}
	tNpcGossip[18906]["Option15"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option15"]
	tNpcGossip[18906]["OptionFunc15"]="SpringFestival2016_LuckyDumplings_DetailBuy</N>18906</N>1"
	
	-- 要10笼
	-- 确认10笼
	tNpcGossip[18906]["Text4-4"] = {441,442}
	tNpcGossip[18906]["Text441"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text441"]
	tNpcGossip[18906]["Text442"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text442"]
	tNpcGossip[18906]["tOption4-4"] = {18,16}
	tNpcGossip[18906]["Option18"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option18"]
	tNpcGossip[18906]["OptionFunc18"]="SpringFestival2016_LuckyDumplings_DetailBuy</N>18906</N>10"
	-- 无法购买
	tNpcGossip[18906]["Text4-5"] = {451,452}
	tNpcGossip[18906]["Text451"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text451"]
	tNpcGossip[18906]["Text452"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text452"]
	tNpcGossip[18906]["tOption4-5"] = {19}
	tNpcGossip[18906]["Option19"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option19"]
	tNpcGossip[18906]["OptionPoint19"] = "4-3"
	--钱不够
	tNpcGossip[18906]["Text4-6"] = {461}
	tNpcGossip[18906]["Text461"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text461"]
	tNpcGossip[18906]["tOption4-6"] = {20}
	tNpcGossip[18906]["Option20"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option20"]
	--背包
	tNpcGossip[18906]["Text4-7"] = {471,472}
	tNpcGossip[18906]["Text471"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text471"]
	tNpcGossip[18906]["Text472"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text472"]
	tNpcGossip[18906]["tOption4-7"] = {21}
	tNpcGossip[18906]["Option21"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option21"]
	
	--超3次无法购买
	tNpcGossip[18906]["Text4-8"] = {481,482}
	tNpcGossip[18906]["Text481"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text481"]
	tNpcGossip[18906]["Text482"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Text482"]
	tNpcGossip[18906]["tOption4-8"] = {22}
	tNpcGossip[18906]["Option22"] = tSpringFestival2016_LuckyDumplings_Text[18906]["Option22"]
	
	
	--幸运饺
tItem[3007863] = tItem[3007863] or {}
	tItem[3007863]["Function"] = function(nItemId,sItemName)
		SpringFestival2016_LuckyDumplings_Eat(nItemId)
	end

	
	
	
	
	
	

	

	
	