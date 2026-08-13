------------------------------------------------------------------------------------
--Name:		160302[英文征服][活动脚本]3月MissPoker活动NPC设置（3.25-4.1）
--Purpose:	3月MissPoker活动NPC
--Creator: 	张世超
--Created:	2016/03/02
------------------------------------------------------------------------------------


-- 命名前缀
-- MissPoker_

-- 14266 记录玩家当天积分
-- 14267 记录玩家总积分

--活动时间
local tMissPoker_Time = {}
tMissPoker_Time["Beftime"] = "2016-01-01 00:00 2016-03-24 23:59"
tMissPoker_Time["Nowtime1"] = "2016-03-25 00:00 2016-03-27 23:59"	--第一阶段
tMissPoker_Time["Nowtime2"] = "2016-03-28 00:00 2016-04-01 23:59"	--第二阶段

--活动链接
local tMissPoker_WebSite = {}
tMissPoker_WebSite[1] = "http://event.co.99.com/misspokervote/client"	--投票链接
tMissPoker_WebSite[2] = "https://www.facebook.com/COPokerClub/?fref=nf"	--跳转德州FB页面
tMissPoker_WebSite[3] = "http://event.co.99.com/misspoker"	--直播链接

--掩码表
local tMissPoker_Stc = {}
tMissPoker_Stc["EventType"] = 142
tMissPoker_Stc["DataType"] = {}
tMissPoker_Stc["DataType"]["Day"] = 66	--记录玩家当天积分
tMissPoker_Stc["DataType"]["Totle"] = 67	--记录玩家总积分

--礼物表
local tMissPoker_Gift = {}
--一束花。     
tMissPoker_Gift[1] = {}
tMissPoker_Gift[1]["Name"] = tMissPoker_Text["GiftName"][1]
tMissPoker_Gift[1]["Point"] = 1
tMissPoker_Gift[1]["Money"] = 10000
tMissPoker_Gift[1]["EMoney"] = 0
--一个蛋糕。
tMissPoker_Gift[2] = {}
tMissPoker_Gift[2]["Name"] = tMissPoker_Text["GiftName"][2]
tMissPoker_Gift[2]["Point"] = 10
tMissPoker_Gift[2]["Money"] = 100000
tMissPoker_Gift[2]["EMoney"] = 2
--一套手机
tMissPoker_Gift[3] = {}
tMissPoker_Gift[3]["Name"] = tMissPoker_Text["GiftName"][3]
tMissPoker_Gift[3]["Point"] = 100
tMissPoker_Gift[3]["Money"] = 1000000
tMissPoker_Gift[3]["EMoney"] = 20
--一部汽车
tMissPoker_Gift[4] = {}
tMissPoker_Gift[4]["Name"] = tMissPoker_Text["GiftName"][4]
tMissPoker_Gift[4]["Point"] = 1000
tMissPoker_Gift[4]["Money"] = 10000000
tMissPoker_Gift[4]["EMoney"] = 200

local tMissPoker_Effect = "changefig"
local tMissPoker_Log = {}
tMissPoker_Log[1] = "%s,0,0,0,12000317,2,12000317,%s"	--天石投票
tMissPoker_Log[2] = "0,0,1,%s,12000317,2,12000317,%s"	--银两投票

local tMissPoker_EmoneyLog = {}
tMissPoker_EmoneyLog[1] = {}
tMissPoker_EmoneyLog[2] = {}

tMissPoker_EmoneyLog[1][1] = "350	20123	0	0	1	"	--1万金币上交鲜花
tMissPoker_EmoneyLog[2][2] = "350	20124	0	0	1	"	--10万金币上交蛋糕
tMissPoker_EmoneyLog[1][2] = "350	20125	0	0	1	"	--2天石上交蛋糕
tMissPoker_EmoneyLog[2][3] = "350	20126	0	0	1	"	--100万金币上交手机
tMissPoker_EmoneyLog[1][3] = "350	20127	0	0	1	"	--20天石上交手机
tMissPoker_EmoneyLog[2][4] = "350	20128	0	0	1	"	--1000万金币上交汽车
tMissPoker_EmoneyLog[1][4] = "350	20129	0	0	1	"	--200天石上交汽车

-------------------------逻辑------------------------------------------------------
function MissPoker_WebSite(nNumber)
	User_SendWebPage(tMissPoker_WebSite[nNumber])
end

--掩码隔天清零
function MissPoker_StcDailyClean(nEvent,nType)
	if Task_ChkStatistic(nEvent,nType) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
		end
	end
end

function MissPoker_ShowDialogue(nNpcId)
	if not Sys_ChkFullTime(tMissPoker_Time["Nowtime2"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	local nEvent = tMissPoker_Stc["EventType"]
	local nDayType = tMissPoker_Stc["DataType"]["Day"]
	local nTotleType = tMissPoker_Stc["DataType"]["Totle"]
	
	MissPoker_StcDailyClean(nEvent,nDayType)
	local nTotlePoint = Get_UserStatisticValue(nEvent,nTotleType) or 0

	tNpcGossip[nNpcId]["Text211"] = string.format(tMissPoker_Text[nNpcId]["Text211"],nTotlePoint)
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	return
	
end

function MissPoker_Select(nSelect,nNpcId)
	if not Sys_ChkFullTime(tMissPoker_Time["Nowtime2"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	local sName = tMissPoker_Gift[nSelect]["Name"]
	local nPoint = tMissPoker_Gift[nSelect]["Point"]
	local nMoney = tMissPoker_Gift[nSelect]["Money"]
	local nEMoney = tMissPoker_Gift[nSelect]["EMoney"]
	
	tNpcGossip[nNpcId]["OptionFunc311"] = "MissPoker_Check</N>%s</N>%s</N>10996"
	tNpcGossip[nNpcId]["OptionFunc312"] = "MissPoker_Check</N>%s</N>%s</N>10996"
	tNpcGossip[nNpcId]["OptionFunc321"] ="MissPoker_Check</N>%s</N>%s</N>10996"

	

	if (nSelect  > 1) then
		--后三种
		tNpcGossip[nNpcId]["Text311"] = string.format(tMissPoker_Text[nNpcId]["Text311"],sName,nEMoney,nMoney)
		tNpcGossip[nNpcId]["Option311"] =  string.format(tMissPoker_Text[nNpcId]["Option311"],nEMoney)
		tNpcGossip[nNpcId]["Option312"] =  string.format(tMissPoker_Text[nNpcId]["Option312"],nMoney)

		tNpcGossip[nNpcId]["OptionFunc311"] = string.format(tNpcGossip[nNpcId]["OptionFunc311"],nSelect,1) 
		tNpcGossip[nNpcId]["OptionFunc312"] = string.format(tNpcGossip[nNpcId]["OptionFunc312"],nSelect,2) 

		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	else	
		--第一种，无天石选项
		tNpcGossip[nNpcId]["Text321"] = string.format(tMissPoker_Text[nNpcId]["Text321"],nMoney,sName)
		tNpcGossip[nNpcId]["Option321"] = string.format(tMissPoker_Text[nNpcId]["Option321"],nMoney)
		tNpcGossip[nNpcId]["OptionFunc321"] = string.format(tNpcGossip[nNpcId]["OptionFunc321"],nSelect,2)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return	
	end
end

--二次确认 
function MissPoker_Check(nSelect,nMoneyType,nNpcId)
	if not Sys_ChkFullTime(tMissPoker_Time["Nowtime2"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	tNpcGossip[nNpcId]["OptionFunc411"] = "MissPoker_Comfirm</N>%s</N>%s</N>10996"
	tNpcGossip[nNpcId]["OptionFunc421"] = "MissPoker_Comfirm</N>%s</N>%s</N>10996"
	
	local sName = tMissPoker_Gift[nSelect]["Name"]
	local nMoney = tMissPoker_Gift[nSelect]["Money"]
	local nEMoney = tMissPoker_Gift[nSelect]["EMoney"]
	
	if (nMoneyType == 1) then --天石
		tNpcGossip[nNpcId]["Text411"] = string.format(tMissPoker_Text[nNpcId]["Text411"],nEMoney,sName)
		tNpcGossip[nNpcId]["OptionFunc411"] = string.format(tNpcGossip[nNpcId]["OptionFunc411"],nSelect,nMoneyType)
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return	
	else	--金币
		tNpcGossip[nNpcId]["Text421"] = string.format(tMissPoker_Text[nNpcId]["Text421"],nMoney,sName)
		tNpcGossip[nNpcId]["OptionFunc421"] = string.format(tNpcGossip[nNpcId]["OptionFunc421"],nSelect,nMoneyType)
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return		
	end
end

--购买成功
function MissPoker_Comfirm(nSelect,nMoneyType,nNpcId)
	if not Sys_ChkFullTime(tMissPoker_Time["Nowtime2"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	local sName = tMissPoker_Gift[nSelect]["Name"]
	local nMoney = tMissPoker_Gift[nSelect]["Money"]
	local nEMoney = tMissPoker_Gift[nSelect]["EMoney"]
	local nPoint = tMissPoker_Gift[nSelect]["Point"]
	local sLog
	local sEmoneyLog
	if (nMoneyType == 1) then 
		--天石不足
		if not ((Get_UserEMoney() >= nEMoney) and (User_AddEMoney(-nEMoney))) then
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		else
			sLog = string.format(tMissPoker_Log[nMoneyType],nEMoney,nPoint)
			sEmoneyLog = tMissPoker_EmoneyLog[nMoneyType][nSelect]
			
		end
	else
		--银两不足
		if not (User_CanPutMoney2Bag(-nMoney) and User_AddMoney(-nMoney)) then
			LinkNpcGossipFunc_New(nNpcId,"5-2")
			return
		else
			sLog = string.format(tMissPoker_Log[nMoneyType],nMoney,nPoint)
			sEmoneyLog = tMissPoker_EmoneyLog[nMoneyType][nSelect]
		end
	end
	
	--扣钱成功，打掩码，记log
	local nEvent = tMissPoker_Stc["EventType"]
	local nDayType = tMissPoker_Stc["DataType"]["Day"]
	local nTotleType = tMissPoker_Stc["DataType"]["Totle"]

	MissPoker_StcDailyClean(nEvent,nDayType)
	local nDayPoint = Get_UserStatisticValue(nEvent,nDayType) or 0
	local nTotlePoint = Get_UserStatisticValue(nEvent,nTotleType) or 0
	local sEffect = tMissPoker_Effect
	
	nDayPoint = nDayPoint+nPoint
	nTotlePoint = nTotlePoint+nPoint
	Task_SetStatistic(nEvent,nDayType,nDayPoint,1)
	Task_SetStcTimestamp(nEvent,nDayType,0) 
	Task_SetStatistic(nEvent,nTotleType,nTotlePoint,1)
	User_EffectAdd("self",sEffect)
	Sys_SaveActionFestivalLog(sLog)
	Sys_SaveEmoneyBuy(sEmoneyLog)
	--	
	tNpcGossip[nNpcId]["Text531"] = string.format(tMissPoker_Text[nNpcId]["Text531"],nTotlePoint)
	LinkNpcGossipFunc_New(nNpcId,"5-3")

end

function MissPoker_ShowPoint(nNpcId)
	local nEvent = tMissPoker_Stc["EventType"]
	local nDayType = tMissPoker_Stc["DataType"]["Day"]
	local nTotleType = tMissPoker_Stc["DataType"]["Totle"]

	MissPoker_StcDailyClean(nEvent,nDayType)
	local nDayPoint = Get_UserStatisticValue(nEvent,nDayType) or 0
	local nTotlePoint = Get_UserStatisticValue(nEvent,nTotleType) or 0
	tNpcGossip[nNpcId]["Text151"] = string.format(tMissPoker_Text[nNpcId]["Text151"],nTotlePoint)
	LinkNpcGossipFunc_New(nNpcId,"1-5")
end

--------------------------------------NPC模块-------------------------------------------
 -- (10996,'MissPoker投票大使',0002,40710,5000,60,60,94418000),
	tNpcFace[4071] = 178
	tNpcGossip[10996] = tNpcGossip[10996] or DefaultNpc:new{}
	tNpcGossip[10996]["OptionHidden"] = 1

--活动前
tNpcGossip[10996]["Text1-1"] = {111,112,113}
tNpcGossip[10996]["tOption1-1"] = {111}
tNpcGossip[10996]["Text111"] = tMissPoker_Text[10996]["Text111"]
tNpcGossip[10996]["Text112"] = tMissPoker_Text[10996]["Text112"]
tNpcGossip[10996]["Text113"] = tMissPoker_Text[10996]["Text113"]
tNpcGossip[10996]["Option111"] = tMissPoker_Text[10996]["Option111"]
tNpcGossip[10996]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tMissPoker_Time["Beftime"])
end

--3/25-3/27期间
tNpcGossip[10996]["Text1-2"] = {121,122,123}
tNpcGossip[10996]["tOption1-2"] = {121,122}
tNpcGossip[10996]["Text121"] = tMissPoker_Text[10996]["Text121"]
tNpcGossip[10996]["Text122"] = tMissPoker_Text[10996]["Text122"]
tNpcGossip[10996]["Text123"] = tMissPoker_Text[10996]["Text123"]
tNpcGossip[10996]["Option121"] = tMissPoker_Text[10996]["Option121"]
tNpcGossip[10996]["Option122"] = tMissPoker_Text[10996]["Option122"]
tNpcGossip[10996]["OptionFunc121"] = "MissPoker_WebSite</N>1"
tNpcGossip[10996]["OptionFunc122"] = "MissPoker_WebSite</N>2"
tNpcGossip[10996]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tMissPoker_Time["Nowtime1"])
end

--【3月28日-4月1日】期间
tNpcGossip[10996]["Text1-3"] = {131,132,133}
tNpcGossip[10996]["tOption1-3"] = {131,132,133,134}
tNpcGossip[10996]["Text131"] = tMissPoker_Text[10996]["Text131"]
tNpcGossip[10996]["Text132"] = tMissPoker_Text[10996]["Text132"]
tNpcGossip[10996]["Text133"] = tMissPoker_Text[10996]["Text133"]
tNpcGossip[10996]["Option131"] = tMissPoker_Text[10996]["Option131"]
tNpcGossip[10996]["Option132"] = tMissPoker_Text[10996]["Option132"]
tNpcGossip[10996]["Option133"] = tMissPoker_Text[10996]["Option133"]
tNpcGossip[10996]["Option134"] = tMissPoker_Text[10996]["Option134"]
tNpcGossip[10996]["OptionFunc131"] = "MissPoker_WebSite</N>3"
tNpcGossip[10996]["OptionFunc132"] = "MissPoker_ShowDialogue</N>10996"
tNpcGossip[10996]["OptionFunc133"] = "MissPoker_ShowPoint</N>10996"
tNpcGossip[10996]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tMissPoker_Time["Nowtime2"])
end

--查看点赞积分。
tNpcGossip[10996]["Text1-5"] = {151,152}
tNpcGossip[10996]["tOption1-5"] = {151}
tNpcGossip[10996]["Text151"] = tMissPoker_Text[10996]["Text151"]
tNpcGossip[10996]["Text152"] = tMissPoker_Text[10996]["Text152"]
tNpcGossip[10996]["Option151"] = tMissPoker_Text[10996]["Option151"]

--活动后
tNpcGossip[10996]["Text1-4"] = {141,142,143}
tNpcGossip[10996]["tOption1-4"] = {141}
tNpcGossip[10996]["Text141"] = tMissPoker_Text[10996]["Text141"]
tNpcGossip[10996]["Text142"] = tMissPoker_Text[10996]["Text142"]
tNpcGossip[10996]["Text143"] = tMissPoker_Text[10996]["Text143"]
tNpcGossip[10996]["Option141"] = tMissPoker_Text[10996]["Option141"]

--我要送礼物。
tNpcGossip[10996]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[10996]["tOption2-1"] = {211,212,213,214,215}
tNpcGossip[10996]["Text211"] = tMissPoker_Text[10996]["Text211"]
tNpcGossip[10996]["Text212"] = tMissPoker_Text[10996]["Text212"]
tNpcGossip[10996]["Text213"] = tMissPoker_Text[10996]["Text213"]
tNpcGossip[10996]["Text214"] = tMissPoker_Text[10996]["Text214"]
tNpcGossip[10996]["Text215"] = tMissPoker_Text[10996]["Text215"]
tNpcGossip[10996]["Text216"] = tMissPoker_Text[10996]["Text216"]
tNpcGossip[10996]["Text217"] = tMissPoker_Text[10996]["Text217"]
tNpcGossip[10996]["Text218"] = tMissPoker_Text[10996]["Text218"]
tNpcGossip[10996]["Option211"] = tMissPoker_Text[10996]["Option211"]
tNpcGossip[10996]["Option212"] = tMissPoker_Text[10996]["Option212"]
tNpcGossip[10996]["Option213"] = tMissPoker_Text[10996]["Option213"]
tNpcGossip[10996]["Option214"] = tMissPoker_Text[10996]["Option214"]
tNpcGossip[10996]["Option215"] = tMissPoker_Text[10996]["Option215"]
tNpcGossip[10996]["OptionFunc211"] = "MissPoker_Select</N>1</N>10996"
tNpcGossip[10996]["OptionFunc212"] = "MissPoker_Select</N>2</N>10996"
tNpcGossip[10996]["OptionFunc213"] = "MissPoker_Select</N>3</N>10996"
tNpcGossip[10996]["OptionFunc214"] = "MissPoker_Select</N>4</N>10996"

--阁下想赠送哪种礼物：
tNpcGossip[10996]["Text3-1"] = {311}
tNpcGossip[10996]["tOption3-1"] = {311,312,313}
tNpcGossip[10996]["Text311"] = tMissPoker_Text[10996]["Text311"]
tNpcGossip[10996]["Option311"] = tMissPoker_Text[10996]["Option311"]
tNpcGossip[10996]["Option312"] = tMissPoker_Text[10996]["Option312"]
tNpcGossip[10996]["Option313"] = tMissPoker_Text[10996]["Option313"]
tNpcGossip[10996]["OptionFunc311"] = "MissPoker_Check</N>%s</N>%s</N>10996"
tNpcGossip[10996]["OptionFunc312"] = "MissPoker_Check</N>%s</N>%s</N>10996"
tNpcGossip[10996]["OptionPoint313"] = "2-1"

tNpcGossip[10996]["Text3-2"] = {321}
tNpcGossip[10996]["tOption3-2"] = {321,322}
tNpcGossip[10996]["Text321"] = tMissPoker_Text[10996]["Text321"]
tNpcGossip[10996]["Option321"] = tMissPoker_Text[10996]["Option321"]
tNpcGossip[10996]["Option322"] = tMissPoker_Text[10996]["Option322"]
tNpcGossip[10996]["OptionFunc321"] = "MissPoker_Check</N>%s</N>%s</N>10996"
tNpcGossip[10996]["OptionPoint322"] = "2-1"

--二次确认 天石
tNpcGossip[10996]["Text4-1"] = {411}
tNpcGossip[10996]["tOption4-1"] = {411,412}
tNpcGossip[10996]["Text411"] = tMissPoker_Text[10996]["Text411"]
tNpcGossip[10996]["Option411"] = tMissPoker_Text[10996]["Option411"]
tNpcGossip[10996]["Option412"] = tMissPoker_Text[10996]["Option412"]
tNpcGossip[10996]["OptionFunc411"] = "MissPoker_Comfirm</N>%s</N>%s</N>10996"	

--二次确认 银两
tNpcGossip[10996]["Text4-2"] = {421}
tNpcGossip[10996]["tOption4-2"] = {421,422}
tNpcGossip[10996]["Text421"] = tMissPoker_Text[10996]["Text421"]
tNpcGossip[10996]["Option421"] = tMissPoker_Text[10996]["Option421"]
tNpcGossip[10996]["Option422"] = tMissPoker_Text[10996]["Option422"]
tNpcGossip[10996]["OptionFunc421"] = "MissPoker_Comfirm</N>%s</N>%s</N>10996"	

--天石不足
tNpcGossip[10996]["Text5-1"] = {511}
tNpcGossip[10996]["tOption5-1"] = {511}
tNpcGossip[10996]["Text511"] = tMissPoker_Text[10996]["Text511"]
tNpcGossip[10996]["Option511"] = tMissPoker_Text[10996]["Option511"]

--银两不足
tNpcGossip[10996]["Text5-2"] = {521}
tNpcGossip[10996]["tOption5-2"] = {521}
tNpcGossip[10996]["Text521"] = tMissPoker_Text[10996]["Text521"]
tNpcGossip[10996]["Option521"] = tMissPoker_Text[10996]["Option521"]

--成功
tNpcGossip[10996]["Text5-3"] = {531}
tNpcGossip[10996]["tOption5-3"] = {531,532}
tNpcGossip[10996]["Text531"] = tMissPoker_Text[10996]["Text531"]
tNpcGossip[10996]["Option531"] = tMissPoker_Text[10996]["Option531"]
tNpcGossip[10996]["Option532"] = tMissPoker_Text[10996]["Option532"]
tNpcGossip[10996]["OptionFunc531"] = "MissPoker_ShowDialogue</N>10996"


tNpcGossip[10997] = tNpcGossip[10996] or DefaultNpc:new{}
tNpcGossip[10997]["OptionHidden"] = 1






