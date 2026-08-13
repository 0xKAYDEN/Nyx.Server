----------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]英文征服9月VS活动.lua
--Purpose:	英文征服9月VS活动
--Creator: 	黄啸
--Created:	2017/08/14
----------------------------------------------------------------------------
--命名前缀
--tSeptemberMakerActivity_
--logid : 12000824

--动态码51735，用于记录指令,data0 == 2 欧服.data0 == 1 美服
--164 68	使用7个正气令，额外获得一张投票劵
--164 69	排位赛打满7场，发一张投票劵塞到游戏内邮箱里面
--164 70	打开国境犒赏【筑防设障】礼包，会获得一张投票劵
--164 71	上交NPC 50W金币，会获得1张投票劵
---------------------------常量-------------------------------------
--活动时间
local tSeptemberMakerActivity_Activity = {}
tSeptemberMakerActivity_Activity["BeforeTime"] = tActivityTime["SeptemberMakerActivity"]["BeforeTime"]
tSeptemberMakerActivity_Activity["SubmitTime"] = tActivityTime["SeptemberMakerActivity"]["SubmitTime"]
tSeptemberMakerActivity_Activity["ChargeTime"] = tActivityTime["SeptemberMakerActivity"]["ChargeTime"]
tSeptemberMakerActivity_Activity["ChargeTimeA"] = tActivityTime["SeptemberMakerActivity"]["ChargeTimeA"]
tSeptemberMakerActivity_Activity["CaculateTicket"] = tActivityTime["SeptemberMakerActivity"]["CaculateTicket"]
tSeptemberMakerActivity_Activity["CaculateTicketA"] = tActivityTime["SeptemberMakerActivity"]["CaculateTicketA"]
tSeptemberMakerActivity_Activity["ActivityTime"] = tActivityTime["SeptemberMakerActivity"]["ActivityTime"]
tSeptemberMakerActivity_Activity["ChargeGoods"] = tActivityTime["SeptemberMakerActivity"]["ChargeGoods"]


--寻路到newpower
local tSeptemberMakerActivity_LookNpc = {}
tSeptemberMakerActivity_LookNpc[1] = {}
tSeptemberMakerActivity_LookNpc[1]["MapId"] = 1002
tSeptemberMakerActivity_LookNpc[1]["MapX"] = 311
tSeptemberMakerActivity_LookNpc[1]["MapY"] = 247

tSeptemberMakerActivity_LookNpc[2] = {}
tSeptemberMakerActivity_LookNpc[2]["MapId"] = 1002
tSeptemberMakerActivity_LookNpc[2]["MapX"] = 311
tSeptemberMakerActivity_LookNpc[2]["MapY"] = 250

--美服和欧服时间区分开
local tSeptemberMakerActivity_Different = {}
tSeptemberMakerActivity_Different[1] = {}
--停止记票，广播
tSeptemberMakerActivity_Different[1]["Broadcast"] = tActivityTime["SeptemberMakerActivity"]["Broadcast"][1]
tSeptemberMakerActivity_Different[2] = {}
tSeptemberMakerActivity_Different[2]["Broadcast"] = tActivityTime["SeptemberMakerActivity"]["Broadcast"][2]

local tSeptemberMakerActivity_Url = "http://event.co.99.com/covs/"

--区分没法和欧服，data0 =1 为美服；data0等于2为欧服
local tSeptemberMakerActivity_ActivityData = {}
tSeptemberMakerActivity_ActivityData["GlobalSeverId"] = 51735

local tSeptemberMakerActivity_Goods = {}

--上交投票卷给new power，消耗投票卷，获得100气力以及革新凭证
tSeptemberMakerActivity_Goods[3304652] = {}
tSeptemberMakerActivity_Goods[3304652]["RewardStrengthValue"] = {}
tSeptemberMakerActivity_Goods[3304652]["RewardStrengthValue"]["Value"] = 100
tSeptemberMakerActivity_Goods[3304652]["RewardItem"] = {}
tSeptemberMakerActivity_Goods[3304652]["RewardItem"][1] = {}
tSeptemberMakerActivity_Goods[3304652]["RewardItem"][1]["Id"] = 3304652
tSeptemberMakerActivity_Goods[3304652]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberMakerActivity_Goods[3304652]["LogId"] = 12000824
tSeptemberMakerActivity_Goods[3304652]["DeleteItem"]={}
tSeptemberMakerActivity_Goods[3304652]["DeleteItem"][1]={}
tSeptemberMakerActivity_Goods[3304652]["DeleteItem"][1]["Id"]=3304651
tSeptemberMakerActivity_Goods[3304652]["RewardNoNeedTip"] = 1


--上交投票卷给old power，消耗投票卷，获得100气力以及怀旧凭证

tSeptemberMakerActivity_Goods[3304653] = {}
tSeptemberMakerActivity_Goods[3304653]["RewardStrengthValue"] = {}
tSeptemberMakerActivity_Goods[3304653]["RewardStrengthValue"]["Value"] = 100
tSeptemberMakerActivity_Goods[3304653]["RewardItem"] = {}
tSeptemberMakerActivity_Goods[3304653]["RewardItem"][1] = {}
tSeptemberMakerActivity_Goods[3304653]["RewardItem"][1]["Id"] = 3304653
tSeptemberMakerActivity_Goods[3304653]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberMakerActivity_Goods[3304653]["LogId"] = 12000824
tSeptemberMakerActivity_Goods[3304653]["DeleteItem"]={}
tSeptemberMakerActivity_Goods[3304653]["DeleteItem"][1]={}
tSeptemberMakerActivity_Goods[3304653]["DeleteItem"][1]["Id"]=3304651
tSeptemberMakerActivity_Goods[3304653]["RewardNoNeedTip"] = 1




local tSeptemberMakerActivity_SubmintMoney = {}
--上交50w金币获得凭证new
tSeptemberMakerActivity_SubmintMoney[3304652] = {}
tSeptemberMakerActivity_SubmintMoney[3304652]["RewardStrengthValue"] = {}
tSeptemberMakerActivity_SubmintMoney[3304652]["RewardStrengthValue"]["Value"] = 100
tSeptemberMakerActivity_SubmintMoney[3304652]["RewardItem"] = {}
tSeptemberMakerActivity_SubmintMoney[3304652]["RewardItem"][1] = {}
tSeptemberMakerActivity_SubmintMoney[3304652]["RewardItem"][1]["Id"] = 3304652
tSeptemberMakerActivity_SubmintMoney[3304652]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberMakerActivity_SubmintMoney[3304652]["LogId"] = 12000824
tSeptemberMakerActivity_SubmintMoney[3304652]["RewardNoNeedTip"] = 1

--上交50w金币获得凭证old
tSeptemberMakerActivity_SubmintMoney[3304653] = {}
tSeptemberMakerActivity_SubmintMoney[3304653]["RewardStrengthValue"] = {}
tSeptemberMakerActivity_SubmintMoney[3304653]["RewardStrengthValue"]["Value"] = 100
tSeptemberMakerActivity_SubmintMoney[3304653]["RewardItem"] = {}
tSeptemberMakerActivity_SubmintMoney[3304653]["RewardItem"][1] = {}
tSeptemberMakerActivity_SubmintMoney[3304653]["RewardItem"][1]["Id"] = 3304653
tSeptemberMakerActivity_SubmintMoney[3304653]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberMakerActivity_SubmintMoney[3304653]["LogId"] = 12000824
tSeptemberMakerActivity_SubmintMoney[3304653]["RewardNoNeedTip"] = 1


local tSeptemberMakerActivity_DreaseMoney = -500000

--四种获取投票卷的掩码记录
local tSeptemberMakerActivity_Stc = {}
--上交NPC 50W金币，会获得1张投票劵
tSeptemberMakerActivity_Stc[1] = {}
tSeptemberMakerActivity_Stc[1]["EventType"] = 164
tSeptemberMakerActivity_Stc[1]["DataType"] = 71

--打开国境犒赏【筑防设障】礼包，会获得一张投票劵
tSeptemberMakerActivity_Stc[2] = {}
tSeptemberMakerActivity_Stc[2]["EventType"] = 164
tSeptemberMakerActivity_Stc[2]["DataType"] = 70

--排位赛打满7场，发一张投票劵塞到游戏内邮箱里面
tSeptemberMakerActivity_Stc[3] = {}
tSeptemberMakerActivity_Stc[3]["EventType"] = 164
tSeptemberMakerActivity_Stc[3]["DataType"] = 69

local tSeptemberMakerActivity_MoneyLog = {}
tSeptemberMakerActivity_MoneyLog[3304652] = "0,0,1,500000,12000824,2,3304652,1"
tSeptemberMakerActivity_MoneyLog[3304653] = "0,0,1,500000,12000824,2,3304653,1"

local tSeptemberMakerActivity_npcId = 22029


--补偿奖励
local tSeptemberMakerActivity_AddAward = {}
tSeptemberMakerActivity_AddAward["RewardItem"] = {}
tSeptemberMakerActivity_AddAward["RewardItem"][1] = {}
tSeptemberMakerActivity_AddAward["RewardItem"][1]["Id"] = 3009000
tSeptemberMakerActivity_AddAward["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
tSeptemberMakerActivity_AddAward["LogId"] = 12000824
tSeptemberMakerActivity_AddAward["DeleteItem"]={}
tSeptemberMakerActivity_AddAward["DeleteItem"][1]={}
tSeptemberMakerActivity_AddAward["DeleteItem"][1]["Id"]=3304653


--邮箱发奖
local tSeptemberMakerActivity_Mail = {}
tSeptemberMakerActivity_Mail["ActionId"] = 566237
tSeptemberMakerActivity_Mail["Exits"] = 7 
tSeptemberMakerActivity_Mail["Sender"] = tSeptemberMakerActivity_Text["Mail"]["Sender"]
tSeptemberMakerActivity_Mail["Stitle"] = tSeptemberMakerActivity_Text["Mail"]["Stitle"]
tSeptemberMakerActivity_Mail["Scontent"] = tSeptemberMakerActivity_Text["Mail"]["Scontent"]

--打开国境犒赏【筑防设障】礼包，会获得一张投票劵
local tSeptemberMakerActivity_CountryAward = {}
tSeptemberMakerActivity_CountryAward["RewardItem"] = {}
tSeptemberMakerActivity_CountryAward["RewardItem"][1] = {}
tSeptemberMakerActivity_CountryAward["RewardItem"][1]["Id"] = 3304651
tSeptemberMakerActivity_CountryAward["RewardItem"][1]["Attr"] = "0 1"
tSeptemberMakerActivity_CountryAward["LogId"] = 12000824

--兑换商店里面打开物品
local tSeptemberMakerActivity_ChargeGoods = {}
--Battle免费修炼丹（赠）礼包
tSeptemberMakerActivity_ChargeGoods[3304754] = {}
tSeptemberMakerActivity_ChargeGoods[3304754]["RewardItem"] = {}
tSeptemberMakerActivity_ChargeGoods[3304754]["RewardItem"][1] = {}
tSeptemberMakerActivity_ChargeGoods[3304754]["RewardItem"][1]["Id"] = 3002926
tSeptemberMakerActivity_ChargeGoods[3304754]["RewardItem"][1]["Attr"] = "0 2"
tSeptemberMakerActivity_ChargeGoods[3304754]["LogId"] = 12000824
tSeptemberMakerActivity_ChargeGoods[3304754]["DeleteItem"]={}
tSeptemberMakerActivity_ChargeGoods[3304754]["DeleteItem"][1]={}
tSeptemberMakerActivity_ChargeGoods[3304754]["DeleteItem"][1]["Id"]=3304754

--Battle微光星陨石礼包
tSeptemberMakerActivity_ChargeGoods[3304755] = {}
tSeptemberMakerActivity_ChargeGoods[3304755]["RewardItem"] = {}
tSeptemberMakerActivity_ChargeGoods[3304755]["RewardItem"][1] = {}
tSeptemberMakerActivity_ChargeGoods[3304755]["RewardItem"][1]["Id"] = 3009000
tSeptemberMakerActivity_ChargeGoods[3304755]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
tSeptemberMakerActivity_ChargeGoods[3304755]["LogId"] = 12000824
tSeptemberMakerActivity_ChargeGoods[3304755]["DeleteItem"]={}
tSeptemberMakerActivity_ChargeGoods[3304755]["DeleteItem"][1]={}
tSeptemberMakerActivity_ChargeGoods[3304755]["DeleteItem"][1]["Id"]=3304755

--Battle明亮星陨石礼包
tSeptemberMakerActivity_ChargeGoods[3304756] = {}
tSeptemberMakerActivity_ChargeGoods[3304756]["RewardItem"] = {}
tSeptemberMakerActivity_ChargeGoods[3304756]["RewardItem"][1] = {}
tSeptemberMakerActivity_ChargeGoods[3304756]["RewardItem"][1]["Id"] = 3009001
tSeptemberMakerActivity_ChargeGoods[3304756]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tSeptemberMakerActivity_ChargeGoods[3304756]["LogId"] = 12000824
tSeptemberMakerActivity_ChargeGoods[3304756]["DeleteItem"]={}
tSeptemberMakerActivity_ChargeGoods[3304756]["DeleteItem"][1]={}
tSeptemberMakerActivity_ChargeGoods[3304756]["DeleteItem"][1]["Id"]=3304756

--Battle晶莹星陨石礼包
tSeptemberMakerActivity_ChargeGoods[3304757] = {}
tSeptemberMakerActivity_ChargeGoods[3304757]["RewardItem"] = {}
tSeptemberMakerActivity_ChargeGoods[3304757]["RewardItem"][1] = {}
tSeptemberMakerActivity_ChargeGoods[3304757]["RewardItem"][1]["Id"] = 3009002
tSeptemberMakerActivity_ChargeGoods[3304757]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tSeptemberMakerActivity_ChargeGoods[3304757]["LogId"] = 12000824
tSeptemberMakerActivity_ChargeGoods[3304757]["DeleteItem"]={}
tSeptemberMakerActivity_ChargeGoods[3304757]["DeleteItem"][1]={}
tSeptemberMakerActivity_ChargeGoods[3304757]["DeleteItem"][1]["Id"]=3304757
---------------------------逻辑-------------------------------------
--美服还是欧服的判断,true是欧服
function SeptemberMakerActivity_CheckServer()
	local nCrossId = Get_SysDynaGlobalData0(tSeptemberMakerActivity_ActivityData["GlobalSeverId"])
	if nCrossId == 2 then
		return true
	else
		return false
	end
end

--掩码清理
function SeptemberMakerActivity_CleanStc(nUserId)

	for i,v in ipairs(tSeptemberMakerActivity_Stc) do
		local nEvent = v["EventType"] 
		local nDataType = v["DataType"]
		if Task_StcInterval(nEvent,nDataType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nDataType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nDataType,0,nUserId)
		end
	end
end

--我要支持你（上交投票劵）
function SeptemberMakerActivity_Submit(nItemId,nNpcId)
	local nWaste = tSeptemberMakerActivity_Goods[3304652]["DeleteItem"][1]["Id"]
	--判断物品是否存在
	if not Item_ChkItem(nWaste) then
		LinkNpcGossipFunc_New(nNpcId, "5-1")
		return false
	end
	
	--有投票卷，背包空间满
	if not User_CheckLeftSpace(1) then
		--金币足,背包空间不足。
		LinkNpcGossipFunc_New(nNpcId, "4-1")
		return false
	end
	
	--获得凭证
	
	RewardTemplate_UseItemAndMsg(tSeptemberMakerActivity_Goods[nItemId])
	User_TalkChannel2005(tSeptemberMakerActivity_Text["NormalChat"][nItemId])
end

--用50W金币支持
function SeptemberMakerActivity_SubmitMoney(nItemId,nNpcId)
	
	local nUserId = Get_UserId()
	--隔天清理掩码
	SeptemberMakerActivity_CleanStc(nUserId)
	
	local nMoney = tSeptemberMakerActivity_DreaseMoney
	
	local nEventype = tSeptemberMakerActivity_Stc[1]["EventType"] 
	local nData = tSeptemberMakerActivity_Stc[1]["DataType"]
	
	--上交金币一天只能上交一次
	if Task_ChkStcValue(nEventype,nData,"==",0) then
		
		--判断是否有充足的金币
		if not User_CanPutMoney2Bag(nMoney) then
			--金币不足跳转金币提示界面
			LinkNpcGossipFunc_New(nNpcId, "3-1")
			return false
		end
		
		--金币足,背包空间不足。
		if not User_CheckLeftSpace(1) then
			LinkNpcGossipFunc_New(nNpcId, "4-1")
			return false
		end
		--改变掩码,时间搓
		Task_SetStatistic(nEventype,nData,1,1)
		Task_SetStcTimestamp(nEventype,nData,0)
		--扣钱
		User_AddMoney(tSeptemberMakerActivity_DreaseMoney)
		--打log
		Sys_SaveActionFestivalLog(tSeptemberMakerActivity_MoneyLog[nItemId])
		--获得凭证
		RewardTemplate_UseItemAndMsg(tSeptemberMakerActivity_SubmintMoney[nItemId])
		User_TalkChannel2005(tSeptemberMakerActivity_Text["NormalChat"][nItemId])
	else
		--跳转玩家已投界面
		LinkNpcGossipFunc_New(nNpcId, "2-1")
	end
	
end

--使用凭证兑换奖励
function SeptemberMakerActivity_ChangeGoods(nNpcId)
	local nGlobal = Get_SysDynaGlobalData0(tSeptemberMakerActivity_ActivityData["GlobalSeverId"])
	if nGlobal == 2 then
		if not Sys_ChkFullTime(tSeptemberMakerActivity_Activity["ChargeTime"]) then
			LinkNpcGossipFunc_New(nNpcId, "6-1")
			return false
		end
	else
		if not Sys_ChkFullTime(tSeptemberMakerActivity_Activity["ChargeTimeA"]) then
			LinkNpcGossipFunc_New(nNpcId, "7-1")
			return false
		end
	end
	
	--打开兑换商店
	User_OpenExchangeShop(nNpcId)

end

--了解更多详情
function SeptemberMakerActivity_GoWeb()
	User_SendWebPage(tSeptemberMakerActivity_Url)
end

--自动寻路到CO New Power
function SeptemberMakerActivity_AutoFindWay(nNpcId,nNum)

	local nPosX = tSeptemberMakerActivity_LookNpc[nNum]["MapX"]
	local nPosY = tSeptemberMakerActivity_LookNpc[nNum]["MapY"]
	local nMapId = tSeptemberMakerActivity_LookNpc[nNum]["MapId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	
end

--活动物品时间过后清出背包,投票卷9.6 10:00前使用
function SeptemberMakerActivity_AfterActivity(nItemId)
	if not Item_ChkItem(nItemId) then
		return 
	end
	
	if not Sys_ChkFullTime(tSeptemberMakerActivity_Activity["SubmitTime"]) then
		if Item_DelItem(nItemId) then
			--提示过后，物品删除，加上相关提示
			User_TalkChannel2005(tSeptemberMakerActivity_Text["NormalChat"][5])
			return false
		end
	end
	--在活动期间使用投票卷自动寻路到两个Npc中间的位置
	SeptemberMakerActivity_AutoFindWay(nil,2)
end


--打开怀旧凭证获得3个石头和新凭证
function SeptemberMakerActivity_OldStone(nItemId)
	--判断物品是否过期
	if not Item_ChkItem(nItemId) then
		return 
	end
	
	if not Sys_ChkFullTime(tSeptemberMakerActivity_Activity["ActivityTime"]) then
		if Item_DelItem(nItemId) then
			--提示过后，物品删除，加上相关提示
			User_TalkChannel2005(tSeptemberMakerActivity_Text["NormalChat"][5])
			return false
		end
	end
	
	--美服和欧服，使用物品，时间未到，系统提示
	if SeptemberMakerActivity_CheckServer() then
		if not Sys_ChkFullTime(tSeptemberMakerActivity_Activity["ChargeTime"]) then
			User_TalkChannel2005(tSeptemberMakerActivity_Text["NormalChat"][3])
			return
		end
	else
		if not Sys_ChkFullTime(tSeptemberMakerActivity_Activity["ChargeTimeA"]) then
			User_TalkChannel2005(tSeptemberMakerActivity_Text["NormalChat"][4])
			return
		end
	end
	
	
	if nItemId == tSeptemberMakerActivity_Goods[3304653]["RewardItem"][1]["Id"] then
		--判断背包空间
		if not User_CheckLeftSpace(3) then
			User_TalkChannel2005(tSeptemberMakerActivity_Text["NormalChat"][6])
		return
		end
	
		--获得安慰奖励
		RewardTemplate_UseItemAndMsg(tSeptemberMakerActivity_AddAward)
	else
		--使用newpower自动寻路都CO New Powernpc
		SeptemberMakerActivity_AutoFindWay(tSeptemberMakerActivity_npcId,1)
	end
end

--排位赛参加7场，通过邮箱进行发送
function SeptemberMakerActivity_Competes(nUserId,nFieldNum)
	
	--活动时间判断
	if not Sys_ChkFullTime(tSeptemberMakerActivity_Activity["SubmitTime"]) then
		return 
	end
	
	--掩码统计这天参加的次数
	local nEvent = tSeptemberMakerActivity_Stc[3]["EventType"]
	local nData = tSeptemberMakerActivity_Stc[3]["DataType"]
	
	--隔天清理掩码
	SeptemberMakerActivity_CleanStc(nUserId)
	
	Task_AddStatistic(nEvent,nData,1,1,nUserId)
	
	if Task_ChkStcValue(nEvent,nData,"==",7,nUserId) then
		
		local nActionId = tSeptemberMakerActivity_Mail["ActionId"]
		local nExistDay = tSeptemberMakerActivity_Mail["Exits"]
		local sSender = tSeptemberMakerActivity_Mail["Sender"]
		local sTitle = tSeptemberMakerActivity_Mail["Stitle"]
		local sContent = tSeptemberMakerActivity_Mail["Scontent"]
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		
	end
end

--打开国境犒赏【先发制人】
function SeptemberMakerActivity_CountryAward(nItemId)
	if Sys_ChkFullTime(tSeptemberMakerActivity_Activity["SubmitTime"]) then
		local nEventype = tSeptemberMakerActivity_Stc[2]["EventType"] 
		local nData = tSeptemberMakerActivity_Stc[2]["DataType"]
		
		local nUserId = Get_UserId()
		--隔天清理掩码
		SeptemberMakerActivity_CleanStc(nUserId)
	
		--判断今天是否已经领取过了奖励
		if Task_ChkStcValue(nEventype,nData,"==",0) then
			--记录掩码
			Task_SetStatistic(nEventype,nData,1,1)
			Task_SetStcTimestamp(nEventype,nData,0)
			--获得抽奖卷
			RewardTemplate_UseItemAndMsg(tSeptemberMakerActivity_CountryAward)
		end
	end
end

--0点全服广播提示用户投票结果
function SeptemberMakerActivity_TicketBroadcast()
	--取全局表里面的分服id
	local nCrossId = Get_SysDynaGlobalData0(tSeptemberMakerActivity_ActivityData["GlobalSeverId"])
	--服务器判断
	if nCrossId == 1 then
		--时间判断
		if Sys_ChkFullTime(tSeptemberMakerActivity_Different[1]["Broadcast"]) then
			--全服公告
			Sys_NormalBroadcast(tSeptemberMakerActivity_Text["Vote"][1])
		end
	end
	
	if nCrossId == 2 then
		if Sys_ChkFullTime(tSeptemberMakerActivity_Different[2]["Broadcast"]) then
			--全服公告
			Sys_NormalBroadcast(tSeptemberMakerActivity_Text["Vote"][1])
		end
	end
end

--上交票据时间内对于对白和选项的修改
function SeptemberMakerActivity_DealOption(nNpcId)

	local nUserId = Get_UserId()
	--清理掩码
	SeptemberMakerActivity_CleanStc(nUserId)
	
	--判断今日是否已投50w银两
	local nEvent = tSeptemberMakerActivity_Stc[1]["EventType"]
	local nData = tSeptemberMakerActivity_Stc[1]["DataType"]
	
	if Task_ChkStcValue(nEvent,nData,"~=",0) then
		tNpcGossip[nNpcId]["Option2"] = tSeptemberMakerActivity_Text[22028]["Option21"]
	else
		tNpcGossip[nNpcId]["Option2"] = tSeptemberMakerActivity_Text[22028]["Option2"]
	end
	
	--欧，美服的时间不同，做不同的判断
	local nGlobal = Get_SysDynaGlobalData0(tSeptemberMakerActivity_ActivityData["GlobalSeverId"])
	if nGlobal == 2 then
		--欧服时间
		if Sys_ChkFullTime(tSeptemberMakerActivity_Activity["SubmitTime"]) then
			tNpcGossip[nNpcId]["Text115"] = tSeptemberMakerActivity_Text[22028]["Text115"]
		else
			return false
		end
	else
		if Sys_ChkFullTime(tSeptemberMakerActivity_Activity["SubmitTime"]) then
			tNpcGossip[nNpcId]["Text115"] = tSeptemberMakerActivity_Text[22028]["Text116"]
		else
			return false
		end
	end
	return true
end

--计票时间
function SeptemberMakerActivity_CaculateTicket(nNpcId)

	local nGlobal = Get_SysDynaGlobalData0(tSeptemberMakerActivity_ActivityData["GlobalSeverId"])
	
	if nGlobal == 2 then
		--欧服时间
		if Sys_ChkFullTime(tSeptemberMakerActivity_Activity["CaculateTicket"]) then
			tNpcGossip[nNpcId]["Text120"] = tSeptemberMakerActivity_Text[22028]["Text120"]
		else
			return false
		end
	else
		if Sys_ChkFullTime(tSeptemberMakerActivity_Activity["CaculateTicketA"]) then
			tNpcGossip[nNpcId]["Text120"] = tSeptemberMakerActivity_Text[22028]["Text121"]
			
		else
			return false
		end
	end
	
	return true
end

--兑换商店的礼包，过期失效
function SeptemberMakerActivity_ChargeGoods(nItemId)

	if not Item_ChkItem(nItemId) then
		return false
	end
	
	--在9月12日23:59前打开，过期失效
	if not Sys_ChkFullTime(tSeptemberMakerActivity_Activity["ChargeGoods"]) then
		User_TalkChannel2005(tSeptemberMakerActivity_Text["NormalChat"][7])
	end
	
	RewardTemplate_UseItemAndMsg(tSeptemberMakerActivity_ChargeGoods[nItemId])
	
end

---------------------------npc模板----------------------------------
tNpcFace[4986]=32
tNpcFace[4987]=109

--怀旧Npc
--上交卷期间9.1-9.6
tNpcGossip[22028] = tNpcGossip[22028] or DefaultNpc:new{}
tNpcGossip[22028]["OptionHidden"] = 1
tNpcGossip[22028]["DialogueText"] = tSeptemberMakerActivity_Text[22028]

tNpcGossip[22028]["Text1-1"] = {111,112,1121,113,114,115}
tNpcGossip[22028]["tOption1-1"] = {1,2,3,4}
tNpcGossip[22028]["ChkFunc1-1"] = function ()
	return SeptemberMakerActivity_DealOption(22028)
	
end
tNpcGossip[22028]["OptionFunc1"]="SeptemberMakerActivity_Submit</N>3304653</N>22028"
tNpcGossip[22028]["OptionFunc2"]="SeptemberMakerActivity_SubmitMoney</N>3304653</N>22028"
tNpcGossip[22028]["OptionFunc3"]="SeptemberMakerActivity_ChangeGoods</N>22028"
tNpcGossip[22028]["OptionFunc4"]="SeptemberMakerActivity_GoWeb"


--时间未到9.1号
tNpcGossip[22028]["Text1-2"] = {117,114}
tNpcGossip[22028]["tOption1-2"] = {11}
tNpcGossip[22028]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tSeptemberMakerActivity_Activity["BeforeTime"])
	
end

--计票期9月6日10:01至9月6日 23:59，美服9月6日00:59
tNpcGossip[22028]["Text1-3"] = {120}
tNpcGossip[22028]["tOption1-3"] = {9}
tNpcGossip[22028]["ChkFunc1-3"] = function ()
	--欧服，美服的时间判断
	return SeptemberMakerActivity_CaculateTicket(22028)
	
end

--投票结果出来以后，9.7号以后
tNpcGossip[22028]["Text1-4"] = {119}
tNpcGossip[22028]["tOption1-4"] = {8}
tNpcGossip[22028]["ChkFunc1-4"] = function ()
	return true
end


--今日已交过50w
tNpcGossip[22028]["Text2-1"] = {1114}
tNpcGossip[22028]["tOption2-1"] = {5}
tNpcGossip[22028]["OptionPoint5"] = "1"

--钱不足
tNpcGossip[22028]["Text3-1"] = {1115}
tNpcGossip[22028]["tOption3-1"] = {10}
tNpcGossip[22028]["OptionPoint10"] = "1"

--钱足,背包空间不足
tNpcGossip[22028]["Text4-1"] = {1113}
tNpcGossip[22028]["tOption4-1"] = {6}
tNpcGossip[22028]["OptionPoint6"] = "1"

--玩家没有这个投票卷
tNpcGossip[22028]["Text5-1"] = {1111,1112}
tNpcGossip[22028]["tOption5-1"] = {5}
tNpcGossip[22028]["OptionPoint5"] = "1"

--欧服未到兑奖时间
tNpcGossip[22028]["Text6-1"] = {1116,1117}
tNpcGossip[22028]["tOption6-1"] = {7}
tNpcGossip[22028]["OptionPoint7"] = "1"

--美服未到兑奖时间
tNpcGossip[22028]["Text7-1"] = {1116,1118}
tNpcGossip[22028]["tOption7-1"] = {7}
tNpcGossip[22028]["OptionPoint7"] = "1"

---------------------------------------------------------------------------
---------------------------------------------------------------------------

--革新Npc
tNpcGossip[22029] = tNpcGossip[22029] or DefaultNpc:new{}
tNpcGossip[22029]["OptionHidden"] = 1
tNpcGossip[22029]["DialogueText"] = tSeptemberMakerActivity_Text[22029]

--上交投票卷期间9.1-9.6
tNpcGossip[22029]["Text1-1"] = {114,124,1241,116,117,115}
tNpcGossip[22029]["tOption1-1"] = {1,2,3,4}
tNpcGossip[22029]["ChkFunc1-1"] = function ()
	return SeptemberMakerActivity_DealOption(22029)
	
end
tNpcGossip[22029]["OptionFunc1"]="SeptemberMakerActivity_Submit</N>3304652</N>22029"
tNpcGossip[22029]["OptionFunc2"]="SeptemberMakerActivity_SubmitMoney</N>3304652</N>22029"
tNpcGossip[22029]["OptionFunc3"]="SeptemberMakerActivity_ChangeGoods</N>22029"
tNpcGossip[22029]["OptionFunc4"]="SeptemberMakerActivity_GoWeb"

--时间未到9.1号
tNpcGossip[22029]["Text1-2"] = {111,112}
tNpcGossip[22029]["tOption1-2"] = {16}
tNpcGossip[22029]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tSeptemberMakerActivity_Activity["BeforeTime"])
end


--计票期9月6日10:01至9月6日 23:59，美服9月6日00:59
tNpcGossip[22029]["Text1-3"] = {120}
tNpcGossip[22029]["tOption1-3"] = {5}
tNpcGossip[22029]["ChkFunc1-3"] = function ()
	--欧服，美服的时间判断
	return SeptemberMakerActivity_CaculateTicket(22029)
	
end

--投票结果出来以后，9.7号以后
tNpcGossip[22029]["Text1-4"] = {125,126,118}
tNpcGossip[22029]["tOption1-4"] = {13,14}
tNpcGossip[22029]["ChkFunc1-4"] = function ()
	return true
end
tNpcGossip[22029]["OptionFunc13"] = "SeptemberMakerActivity_ChangeGoods</N>22029"
tNpcGossip[22029]["OptionFunc14"] = "SeptemberMakerActivity_GoWeb"

--今日已交过50w
tNpcGossip[22029]["Text2-1"] = {1114}
tNpcGossip[22029]["tOption2-1"] = {6}
tNpcGossip[22029]["OptionPoint6"] = "1"

--钱不足
tNpcGossip[22029]["Text3-1"] = {1115}
tNpcGossip[22029]["tOption3-1"] = {7}
tNpcGossip[22029]["OptionPoint7"] = "1"

--钱足,背包空间不足
tNpcGossip[22029]["Text4-1"] = {1113}
tNpcGossip[22029]["tOption4-1"] = {8}
tNpcGossip[22029]["OptionPoint8"] = "1"

--玩家没有这个投票卷
tNpcGossip[22029]["Text5-1"] = {1111,1112}
tNpcGossip[22029]["tOption5-1"] = {6}
tNpcGossip[22029]["OptionPoint6"] = "1"

--欧服未到兑奖时间
tNpcGossip[22029]["Text6-1"] = {1116,1117}
tNpcGossip[22029]["tOption6-1"] = {11}
tNpcGossip[22029]["OptionPoint11"] = "1"

--美服未到兑奖时间
tNpcGossip[22029]["Text7-1"] = {1116,1118}
tNpcGossip[22029]["tOption7-1"] = {11}
tNpcGossip[22029]["OptionPoint11"] = "1"

---------------------------物品模板----------------------------------
--投票卷
tItem[3304651] = tItem[3304651] or {}
tItem[3304651]["Function"] = function (nItemId,sItemName)
	
	SeptemberMakerActivity_AfterActivity(nItemId)
end
tItem[3304651]["Time"] = tSeptemberMakerActivity_Activity["SubmitTime"]

--革新凭证
tItem[3304652] = tItem[3304652] or {}
tItem[3304652]["Function"] = function (nItemId,sItemName)
	
	SeptemberMakerActivity_OldStone(nItemId)
end
tItem[3304652]["Time"] = tSeptemberMakerActivity_Activity["ActivityTime"]

--怀旧凭证
tItem[3304653] = tItem[3304653] or {}
tItem[3304653]["Function"] = function (nItemId,sItemName)
	
	SeptemberMakerActivity_OldStone(nItemId)
end
tItem[3304653]["Time"] = tSeptemberMakerActivity_Activity["ActivityTime"]


--Battle免费强炼丹（赠）礼包
--3304754
tItem[3304754] = tItem[3304754] or {}
tItem[3304754]["Function"] = function (nItemId,sItemName)
	
	SeptemberMakerActivity_ChargeGoods(nItemId)
end
tItem[3304754]["Time"] = tSeptemberMakerActivity_Activity["ChargeGoods"]

--Battle微光星陨石礼包
tItem[3304755] = tItem[3304755] or {}
tItem[3304755]["Function"] = function (nItemId,sItemName)
	
	SeptemberMakerActivity_ChargeGoods(nItemId)
end
tItem[3304755]["Time"] = tSeptemberMakerActivity_Activity["ChargeGoods"]

--Battle明亮星陨石礼包
tItem[3304756] = tItem[3304756] or {}
tItem[3304756]["Function"] = function (nItemId,sItemName)
	
	SeptemberMakerActivity_ChargeGoods(nItemId)
end
tItem[3304756]["Time"] = tSeptemberMakerActivity_Activity["ChargeGoods"]

--Battle晶莹星陨石礼包
tItem[3304757] = tItem[3304757] or {}
tItem[3304757]["Function"] = function (nItemId,sItemName)
	
	SeptemberMakerActivity_ChargeGoods(nItemId)
end
tItem[3304757]["Time"] = tSeptemberMakerActivity_Activity["ChargeGoods"]

---------------------------排位赛----------------------------------
-- 个人排位赛：	参赛场
tArenicCompetes["tFunction"] = tArenicCompetes["tFunction"] or {}
table.insert(tArenicCompetes["tFunction"],SeptemberMakerActivity_Competes)

---------------------------时间自检----------------------------------

local tSeptemberMakerActivity_EveryhourZero= {}
--欧服投票时间结束
tSeptemberMakerActivity_EveryhourZero[1]= {}
tSeptemberMakerActivity_EveryhourZero[1]["Type"] = 6
tSeptemberMakerActivity_EveryhourZero[1]["TimeType"] = 5
tSeptemberMakerActivity_EveryhourZero[1]["Time"] = "00 00"
tSeptemberMakerActivity_EveryhourZero[1]["Func"] = SeptemberMakerActivity_TicketBroadcast
table.insert(tSystemTime_InitialData,tSeptemberMakerActivity_EveryhourZero[1])

--美服投票时间结束
tSeptemberMakerActivity_EveryhourZero[2]= {}
tSeptemberMakerActivity_EveryhourZero[2]["Type"] = 6
tSeptemberMakerActivity_EveryhourZero[2]["TimeType"] = 5
tSeptemberMakerActivity_EveryhourZero[2]["Time"] = "01 00"
tSeptemberMakerActivity_EveryhourZero[2]["Func"] = SeptemberMakerActivity_TicketBroadcast
table.insert(tSystemTime_InitialData,tSeptemberMakerActivity_EveryhourZero[2])