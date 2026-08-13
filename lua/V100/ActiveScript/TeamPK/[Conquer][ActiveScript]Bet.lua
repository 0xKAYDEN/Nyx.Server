------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]手动组队投注npc制作（3.7-3.18）
--Purpose:	手动组队投注npc制作（3.7-3.18）
--Creator: 	张世超
--Created:	2016/02/03
------------------------------------------------------------------------------------

-- 命名前缀
-- Bet_

--活动时间修改：3.21-3.25


-- 常量表
local tBet_Cont = {}
	
	--活动时间
	tBet_Cont["BeforeActivityTime"] = "2016-01-01 00:00 2016-03-20 23:59"
	tBet_Cont["ActivityTime"] = "2016-03-21 00:00 2016-03-25 23:59"
	
	-- tBet_Cont["BeforeActivityTime"] = "2016-01-01 00:00 2016-02-14 23:59"
	-- tBet_Cont["ActivityTime"] = "2016-02-15 00:00 2017-02-09 23:59"	
	

	tBet_Cont["WebSite"] = "http://event.co.99.com/superteam/"
	tBet_Cont["Effect"] = "angelwing"
	
	--相关LOG
	tBet_Cont["Log"] = "0,0,%s,1,10000881,2,0,0"	--上交筹码
	tBet_Cont["ChipLog"] = "0,0,%s,1,10000881,3,0,0"		--筹码过期删除Log
	
	tBet_Cont["EmoneyLog"] = {}
	tBet_Cont["EmoneyLog"][3008446] = "350	20939	0	0	1	"	--上交筹码100 350 20939
	tBet_Cont["EmoneyLog"][3008447] = "350	20099	0	0	1	"	--上交筹码500 350 20099
	tBet_Cont["EmoneyLog"][3008448] = "350	20100	0	0	1	"	--上交筹码1000 350 20100

	--筹码面值
	tBet_Cont["Value"] = {}
	tBet_Cont["Value"][3008446] = 100
	tBet_Cont["Value"][3008447] = 500
	tBet_Cont["Value"][3008448] = 1000
	
-- stc掩码表
--stc 141，87 记录玩家上交100筹码 的个数
--stc 141，88 记录玩家上交500筹码 的个数
--stc 141，89 记录玩家上交1000筹码 的个数
--stc 141，86 记录玩家上交总筹码数
local tBet_Stc = {}
	tBet_Stc["EventType"] = 141
	tBet_Stc["DataType"] = {}
	tBet_Stc["DataType"][3008446] = 87
	tBet_Stc["DataType"][3008447] = 88
	tBet_Stc["DataType"][3008448] = 89
	tBet_Stc["DataType"]["Total"] = 86
	
--促销包数据
local tBet_GiftPack = {}

tBet_GiftPack[3008437] = {}
tBet_GiftPack[3008437]["Space"] = 1
tBet_GiftPack[3008437]["Log"] = "0,0,3008437,1,10000881,2,729242[3008446],1[1]"
tBet_GiftPack[3008437][1] = {}
tBet_GiftPack[3008437][2] = {}
tBet_GiftPack[3008437][1]["AwardItem"] = 729242
tBet_GiftPack[3008437][1]["AwardAttr"] = "0 1 3"
tBet_GiftPack[3008437][2]["AwardItem"] = 3008446
tBet_GiftPack[3008437][2]["AwardAttr"] = ""

tBet_GiftPack[3008438] = {}
tBet_GiftPack[3008438]["Space"] = 5
tBet_GiftPack[3008438]["Log"] = "0,0,3008438,1,10000881,2,729242[3008447],5[1]"
tBet_GiftPack[3008438][1] = {}
tBet_GiftPack[3008438][2] = {}
tBet_GiftPack[3008438][1]["AwardItem"] = 729242
tBet_GiftPack[3008438][1]["AwardAttr"] = "0 5 3"
tBet_GiftPack[3008438][2]["AwardItem"] = 3008447
tBet_GiftPack[3008438][2]["AwardAttr"] = ""

tBet_GiftPack[3008439] = {}
tBet_GiftPack[3008439]["Space"] = 10
tBet_GiftPack[3008439]["Log"] = "0,0,3008439,1,10000881,2,729242[3008448],10[1]"
tBet_GiftPack[3008439][1] = {}
tBet_GiftPack[3008439][2] = {}
tBet_GiftPack[3008439][1]["AwardItem"] = 729242
tBet_GiftPack[3008439][1]["AwardAttr"] = "0 10 3"
tBet_GiftPack[3008439][2]["AwardItem"] = 3008448
tBet_GiftPack[3008439][2]["AwardAttr"] = ""

tBet_GiftPack[3008440] = {}
tBet_GiftPack[3008440]["Space"] = 1
tBet_GiftPack[3008440]["Log"] = "0,0,3008440,1,10000881,2,3003124[3008446],15[1]"
tBet_GiftPack[3008440][1] = {}
tBet_GiftPack[3008440][2] = {}
tBet_GiftPack[3008440][1]["AwardItem"] = 3003124
tBet_GiftPack[3008440][1]["AwardAttr"] = "0 15"
tBet_GiftPack[3008440][2]["AwardItem"] = 3008446
tBet_GiftPack[3008440][2]["AwardAttr"] = ""

tBet_GiftPack[3008441] = {}
tBet_GiftPack[3008441]["Space"] = 1
tBet_GiftPack[3008441]["Log"] = "0,0,3008441,1,10000881,2,3003124[3008447],75[1]"
tBet_GiftPack[3008441][1] = {}
tBet_GiftPack[3008441][2] = {}
tBet_GiftPack[3008441][1]["AwardItem"] = 3003124
tBet_GiftPack[3008441][1]["AwardAttr"] = "0 75"
tBet_GiftPack[3008441][2]["AwardItem"] = 3008447
tBet_GiftPack[3008441][2]["AwardAttr"] = ""

tBet_GiftPack[3008442] = {}
tBet_GiftPack[3008442]["Space"] = 2
tBet_GiftPack[3008442]["Log"] = "0,0,3008442,1,10000881,2,3003124[3008448],150[1]"
tBet_GiftPack[3008442][1] = {}
tBet_GiftPack[3008442][2] = {}
tBet_GiftPack[3008442][1]["AwardItem"] = 3003124
tBet_GiftPack[3008442][1]["AwardAttr"] = "0 150"
tBet_GiftPack[3008442][2]["AwardItem"] = 3008448
tBet_GiftPack[3008442][2]["AwardAttr"] = ""

tBet_GiftPack[3008443] = {}
tBet_GiftPack[3008443]["Space"] = 1
tBet_GiftPack[3008443]["Log"] = "0,0,3008443,1,10000881,2,3003126[3008446],3[1]"
tBet_GiftPack[3008443][1] = {}
tBet_GiftPack[3008443][2] = {}
tBet_GiftPack[3008443][1]["AwardItem"] = 3003126
tBet_GiftPack[3008443][1]["AwardAttr"] = "0 3"
tBet_GiftPack[3008443][2]["AwardItem"] = 3008446
tBet_GiftPack[3008443][2]["AwardAttr"] = ""

tBet_GiftPack[3008444] = {}
tBet_GiftPack[3008444]["Space"] = 1
tBet_GiftPack[3008444]["Log"] = "0,0,3008444,1,10000881,2,3003126[3008447],15[1]"
tBet_GiftPack[3008444][1] = {}
tBet_GiftPack[3008444][2] = {}
tBet_GiftPack[3008444][1]["AwardItem"] = 3003126
tBet_GiftPack[3008444][1]["AwardAttr"] = "0 15"
tBet_GiftPack[3008444][2]["AwardItem"] = 3008447
tBet_GiftPack[3008444][2]["AwardAttr"] = ""

tBet_GiftPack[3008445] = {}
tBet_GiftPack[3008445]["Space"] = 1
tBet_GiftPack[3008445]["Log"] = "0,0,3008445,1,10000881,2,3003126[3008448],30[1]"
tBet_GiftPack[3008445][1] = {}
tBet_GiftPack[3008445][2] = {}
tBet_GiftPack[3008445][1]["AwardItem"] = 3003126
tBet_GiftPack[3008445][1]["AwardAttr"] = "0 30"
tBet_GiftPack[3008445][2]["AwardItem"] = 3008448
tBet_GiftPack[3008445][2]["AwardAttr"] = ""








	
--------------------------------------逻辑部分-----------------------------------------
function Bet_Web()
	User_SendWebPage(tBet_Cont["WebSite"])
end

function Bet_HandInSelect(nNpcId,nItem)
	local nValue = tBet_Cont["Value"][nItem]
	tNpcGossip[10994]["Text321"] = string.format(tBet_Text[10994]["Text321"],nValue)
	tNpcGossip[10994]["OptionFunc321"] = "Bet_HandInComfirm</N>10994</N>"..nItem
	LinkNpcGossipFunc_New(nNpcId,"3-2")
end

function Bet_HandInComfirm(nNpcId,nItem)
	if Item_ChkItem(nItem) and Item_DelItem(nItem) then
		local nValue = tBet_Cont["Value"][nItem]
		local nEvent = tBet_Stc["EventType"]
		local nDataType = tBet_Stc["DataType"][nItem]
		local nDataTypeTotal = tBet_Stc["DataType"]["Total"]
		local sEmoneyLog = tBet_Cont["EmoneyLog"][nItem]
		local sLog = string.format(tBet_Cont["Log"],nItem)

		Task_AddStatistic(nEvent,nDataType,1,1)
		Task_AddStatistic(nEvent,nDataTypeTotal,nValue,1)
		Sys_SaveEmoneyBuy(sEmoneyLog)
		Sys_SaveActionFestivalLog(sLog)
		
		Bet_Review(nNpcId,nItem)
	else
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
end

--查看我上交的筹码。
function Bet_Review(nNpcId,nItem)
	local nEvent = tBet_Stc["EventType"]
	local nValue100 = Get_UserStatisticValue(nEvent,tBet_Stc["DataType"][3008446]) or 0
	local nValue500 = Get_UserStatisticValue(nEvent,tBet_Stc["DataType"][3008447]) or 0
	local nValue1000 =  Get_UserStatisticValue(nEvent,tBet_Stc["DataType"][3008448]) or 0
	local nValueTotal =  Get_UserStatisticValue(nEvent,tBet_Stc["DataType"]["Total"]) or 0
	
	if nItem ~= nil then
		local nValue = tBet_Cont["Value"][nItem]
		local sText = string.format(tBet_Text[10994]["Text510"],nValue)
		tNpcGossip[10994]["Text511"] = string.format(tBet_Text[10994]["Text511"],sText)
	else
		tNpcGossip[10994]["Text511"] = string.format(tBet_Text[10994]["Text511"],"")
	end
	
	tNpcGossip[10994]["Text512"] = string.format(tBet_Text[10994]["Text512"],nValue100)
	tNpcGossip[10994]["Text513"] = string.format(tBet_Text[10994]["Text513"],nValue500)
	tNpcGossip[10994]["Text514"] = string.format(tBet_Text[10994]["Text514"],nValue1000)
	tNpcGossip[10994]["Text515"] = string.format(tBet_Text[10994]["Text515"],nValueTotal)
	
	LinkNpcGossipFunc_New(nNpcId,"5-1")
end

--使用筹码
function Bet_Chip(nItem)
	if not Sys_ChkFullTime(tBet_Cont["ActivityTime"]) then
		if Item_ChkItem(nItem) and Item_DelItem(nItem) then
			local sLog = string.format(tBet_Cont["ChipLog"],nItem)
			User_TalkChannel2005(tBet_Text["ChipDel"])
			Sys_SaveActionFestivalLog(sLog)
		end
	end
end

--促销包使用
function Bet_GiftPack(nItem)
	local nSpace = tBet_GiftPack[nItem]["Space"]
	if not User_CheckLeftSpace(nSpace) then 
		User_TalkChannel2005(string.format(tBet_Text["Nospace"],nSpace))
		return
	end
	
	if Item_ChkItem(nItem) and Item_DelItem(nItem) then
		for i,v in ipairs(tBet_GiftPack[nItem]) do
			Item_AddNewItem(v["AwardItem"],v["AwardAttr"])
		end
		Sys_SaveActionFestivalLog(tBet_GiftPack[nItem]["Log"])
		User_TalkChannel2005(tBet_Text["GiftPack"][nItem])
		User_EffectAdd("self",tBet_Cont["Effect"])
	end
end



-------------------------------------------------NPC配置------------------------------------------------
tNpcFace[4011] = 41
tNpcGossip[10994] = tNpcGossip[10994] or DefaultNpc:new{}
tNpcGossip[10994]["OptionHidden"] = 1

--战队PK赛经销专员 活动前
tNpcGossip[10994]["Text1-1"] = {111,112,113,114}
tNpcGossip[10994]["tOption1-1"] = {101}
tNpcGossip[10994]["Text111"] = tBet_Text[10994]["Text111"]
tNpcGossip[10994]["Text112"] = tBet_Text[10994]["Text112"]
tNpcGossip[10994]["Text113"] = tBet_Text[10994]["Text113"]
tNpcGossip[10994]["Text114"] = tBet_Text[10994]["Text114"]
tNpcGossip[10994]["Option101"] = tBet_Text[10994]["Option101"]
tNpcGossip[10994]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tBet_Cont["BeforeActivityTime"])
end

--活动后
tNpcGossip[10994]["Text1-2"] = {121,122}
tNpcGossip[10994]["tOption1-2"] = {121}
tNpcGossip[10994]["Text121"] = tBet_Text[10994]["Text121"]
tNpcGossip[10994]["Text122"] = tBet_Text[10994]["Text122"]
tNpcGossip[10994]["Option121"] = tBet_Text[10994]["Option121"]
tNpcGossip[10994]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tBet_Cont["ActivityTime"])
end

--活动中
tNpcGossip[10994]["Text1-3"] = {131,132,133,134}
tNpcGossip[10994]["tOption1-3"] = {131,132,133,134,135,136}
tNpcGossip[10994]["Text131"] = tBet_Text[10994]["Text131"]
tNpcGossip[10994]["Text132"] = tBet_Text[10994]["Text132"]
tNpcGossip[10994]["Text133"] = tBet_Text[10994]["Text133"]
tNpcGossip[10994]["Text134"] = tBet_Text[10994]["Text134"]
tNpcGossip[10994]["Option131"] = tBet_Text[10994]["Option131"]
tNpcGossip[10994]["Option132"] = tBet_Text[10994]["Option132"]
tNpcGossip[10994]["Option133"] = tBet_Text[10994]["Option133"]
tNpcGossip[10994]["Option134"] = tBet_Text[10994]["Option134"]
tNpcGossip[10994]["Option135"] = tBet_Text[10994]["Option135"]
tNpcGossip[10994]["Option136"] = tBet_Text[10994]["Option136"]
tNpcGossip[10994]["OptionFunc131"] = "User_OpenDialog"
tNpcGossip[10994]["OptionPoint132"] = "3"
tNpcGossip[10994]["OptionFunc133"] = "Bet_Review</N>10994"
tNpcGossip[10994]["OptionFunc134"] = "Bet_Web"
tNpcGossip[10994]["OptionPoint135"] = "2"

--了解详情
-- tNpcGossip[10994]["Text2-1"] = {211,212,213}
-- tNpcGossip[10994]["tOption2-1"] = {211}
-- tNpcGossip[10994]["Text211"] = tBet_Text[10994]["Text211"]
-- tNpcGossip[10994]["Text212"] = tBet_Text[10994]["Text212"]
-- tNpcGossip[10994]["Text213"] = tBet_Text[10994]["Text213"]
-- tNpcGossip[10994]["Option211"] = tBet_Text[10994]["Option211"]
-- tNpcGossip[10994]["OptionPoint211"] = "1-3"
--
tNpcGossip[10994]["Text2-1"] = {211,212,213}
tNpcGossip[10994]["tOption2-1"] = {211}
tNpcGossip[10994]["Text211"] = tBet_Text[10994]["Text211"]
tNpcGossip[10994]["Text212"] = tBet_Text[10994]["Text212"]
tNpcGossip[10994]["Text213"] = tBet_Text[10994]["Text213"]
tNpcGossip[10994]["Option211"] = tBet_Text[10994]["Option211"]
tNpcGossip[10994]["OptionFunc211"] = "LinkNpcMain"

--上交筹码。
tNpcGossip[10994]["Text3-1"] = {311,312}
tNpcGossip[10994]["tOption3-1"] = {311,312,313,314}
tNpcGossip[10994]["Text311"] = tBet_Text[10994]["Text311"]
tNpcGossip[10994]["Text312"] = tBet_Text[10994]["Text312"]
tNpcGossip[10994]["Option311"] = tBet_Text[10994]["Option311"]
tNpcGossip[10994]["Option312"] = tBet_Text[10994]["Option312"]
tNpcGossip[10994]["Option313"] = tBet_Text[10994]["Option313"]
tNpcGossip[10994]["Option314"] = tBet_Text[10994]["Option314"]
tNpcGossip[10994]["OptionFunc311"] = "Bet_HandInSelect</N>10994</N>3008446"
tNpcGossip[10994]["OptionFunc312"] = "Bet_HandInSelect</N>10994</N>3008447"
tNpcGossip[10994]["OptionFunc313"] = "Bet_HandInSelect</N>10994</N>3008448"

--上交筹码。
tNpcGossip[10994]["Text3-2"] = {321}
tNpcGossip[10994]["tOption3-2"] = {321,322}
tNpcGossip[10994]["Text321"] = tBet_Text[10994]["Text321"]
tNpcGossip[10994]["Option321"] = tBet_Text[10994]["Option321"]
tNpcGossip[10994]["Option322"] = tBet_Text[10994]["Option322"]
tNpcGossip[10994]["OptionFunc321"] = "Bet_HandInComfirm</N>10994"

--失败、无筹码
tNpcGossip[10994]["Text4-1"] = {411}
tNpcGossip[10994]["tOption4-1"] = {411}
tNpcGossip[10994]["Text411"] = tBet_Text[10994]["Text411"]
tNpcGossip[10994]["Option411"] = tBet_Text[10994]["Option411"]

--查看我上交的筹码。
tNpcGossip[10994]["Text5-1"] = {511,512,513,514,515}
tNpcGossip[10994]["tOption5-1"] = {511}
tNpcGossip[10994]["Text511"] = tBet_Text[10994]["Text511"]
tNpcGossip[10994]["Text512"] = tBet_Text[10994]["Text512"]
tNpcGossip[10994]["Text513"] = tBet_Text[10994]["Text513"]
tNpcGossip[10994]["Text514"] = tBet_Text[10994]["Text514"]
tNpcGossip[10994]["Text515"] = tBet_Text[10994]["Text515"]
tNpcGossip[10994]["Option511"] = tBet_Text[10994]["Option511"]


--------------------------------------物品配置-------------------------------------------

for i = 3008437,3008445 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		Bet_GiftPack(nItemId)
	end
end

for i = 3008446,3008448 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		Bet_Chip(nItemId)
	end
end







