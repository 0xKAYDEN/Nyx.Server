------------------------------------------------------------------------------------
--Name:			160412[简体征服][活动脚本]老玩家回归活动(5.12-6.12)
--Purpose:		老玩家回归活动(5.12-6.12)
--Creator:		张世超
--Created:		2016/04/20
------------------------------------------------------------------------------------
-- 40233 = V100\活动脚本\[征服][活动脚本]老玩家回归活动(5.12-6.12).lua
-- 40233 = V100\ActiveScript\[Conquer][ActiveScript]WelcomeBack.lua
--前缀	WelcomeBack_

-- ##掩码 14446 记录玩家是否符合条件
-- ##掩码 14447 记录玩家是否已签到
-- ##签到 log 12000368 

local tWelcomeBack_Data = {}
	--活动时间相关
	tWelcomeBack_Data["BeforeActivityTime"] = "2016-01-01 00:00 2016-05-11 23:59"
	tWelcomeBack_Data["ActivityTime"] = "2016-05-12 00:00 2016-06-12 23:59"
	tWelcomeBack_Data["LastDay"] = "2016-06-12 00:00 2016-06-12 23:59"
	
	tWelcomeBack_Data["LevelDay"] = 30	--离线30天
	tWelcomeBack_Data["AddBless"] = 1	--1小时祝福
	tWelcomeBack_Data["Effect"] = "angelwing"
	tWelcomeBack_Data["WebSite"] = "http://event.co.99.com/veteran1605/"
	
	tWelcomeBack_Data[3200026] = 100
	tWelcomeBack_Data[3200027] = 500

	tWelcomeBack_Data[3200275] = {}
	tWelcomeBack_Data[3200275][1] = 181345
	tWelcomeBack_Data[3200275][2] = 181965
	tWelcomeBack_Data[3200275][3] = 183305
	tWelcomeBack_Data[3200275][4] = 181985
	tWelcomeBack_Data[3200275][5] = 181395

	tWelcomeBack_Data[3200276] = {}
	tWelcomeBack_Data[3200276][1] = 183475
	tWelcomeBack_Data[3200276][2] = 183425
	tWelcomeBack_Data[3200276][3] = 183325
	tWelcomeBack_Data[3200276][4] = 183375
	tWelcomeBack_Data[3200276][5] = 183335

	tWelcomeBack_Data[3200277] = {}
	tWelcomeBack_Data[3200277][1] = 184365
	tWelcomeBack_Data[3200277][2] = 187475
	tWelcomeBack_Data[3200277][3] = 183485
	tWelcomeBack_Data[3200277][4] = 183345
	tWelcomeBack_Data[3200277][5] = 189105	
	

local tWelcomeBack_Log = {}
	tWelcomeBack_Log["Signup"] = "0,0,0,0,12000368,2,5,%s"
	tWelcomeBack_Log["CPMono"] = "0,0,%s,1,12000368,2,3,%s"
	tWelcomeBack_Log["CoatPack"] = "0,0,%s,1,12000368,2,%s,1"	--外套礼包log
	tWelcomeBack_Log["GongFu1"] = "0,0,0,0,12000370,0,0,0"	--今日自创1次
	tWelcomeBack_Log["GongFu5"] = "0,0,0,0,12000371,0,0,0"	--今日自创5次
	tWelcomeBack_Log["PK"] = "0,0,0,0,12000372,0,0,0"	--参与竞技场




local tWelcomeBack_Stc = {}
	tWelcomeBack_Stc["EventType"] = 144
	tWelcomeBack_Stc["DataType"] = {}
	tWelcomeBack_Stc["DataType"]["Signup"] = 47
	tWelcomeBack_Stc["DataType"]["Stauts"] = 46
	
	tWelcomeBack_Stc["Stauts"] = 5
	tWelcomeBack_Stc["Signup"] = 5

--------------------------------------------------------------------------------------逻辑部分
function WelcomeBack_Website()
	User_SendWebPage(tWelcomeBack_Data["WebSite"])
end

function WelcomeBack_SignUP(nNpcId)
	if not Sys_ChkFullTime(tWelcomeBack_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end		

	local nEventStauts = tWelcomeBack_Stc["EventType"]
	local nDataStauts = tWelcomeBack_Stc["DataType"]["Stauts"]
	
	--未离线30天
	if not Task_ChkStcValue(nEventStauts,nDataStauts,">=",tWelcomeBack_Stc["Stauts"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end		
	--已签到
	local nEventSignup = tWelcomeBack_Stc["EventType"]
	local nDataSignup = tWelcomeBack_Stc["DataType"]["Signup"]	
	Task_StcReset(nEventSignup,nDataSignup)
	
	if Task_ChkStcValue(nEventSignup,nDataSignup,">=",tWelcomeBack_Stc["Stauts"]) then
		if Sys_ChkFullTime(tWelcomeBack_Data["LastDay"]) then
			tNpcGossip[11020]["Text221"] = tWelcomeBack_Text["Msg"]["2-1"]
		end
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end		
	--满足签到条件，给奖励
	Task_SetStatistic(nEventSignup,nDataSignup,tWelcomeBack_Stc["Signup"],1) 
	Task_SetStcTimestamp(nEventSignup,nDataSignup,0) 
	User_AddBless(tWelcomeBack_Data["AddBless"])
	User_EffectAdd("self",tWelcomeBack_Data["Effect"])	
	Sys_SaveActionFestivalLog(string.format(tWelcomeBack_Log["Signup"],tWelcomeBack_Data["AddBless"]))
	if Sys_ChkFullTime(tWelcomeBack_Data["LastDay"]) then
		Sys_MsgBox(tWelcomeBack_Text["Msg"]["LastDay"])
	else
		Sys_MsgBox(tWelcomeBack_Text["Msg"]["NoLastDay"])	
	end
end

function WelcomeBack_CPMono(nItemId)
	--CP超上限
	local nCPMono = tWelcomeBack_Data[nItemId]
	if (Get_UserMonoEMoney()+nCPMono >= G_User_MaxEmoneyMono) then
		Sys_MsgBox(tWelcomeBack_Text["Msg"]["CPMonoLimit"])
		return
	end	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local sALog = string.format(tWelcomeBack_Log["CPMono"],nItemId,nCPMono)
		local sText =  string.format(tWelcomeBack_Text["Msg"]["GetCPMono"],nCPMono)
		User_AddEMoneyMono(nCPMono)
		Sys_SaveActionFestivalLog(sALog)
		-- User_TalkChannel2005(sText)
		Sys_MsgBox(sText)
		User_EffectAdd("self",tWelcomeBack_Data["Effect"])
	end
end

--上线函数
function WelcomeBack_SetStauts()
	if not Sys_ChkFullTime(tWelcomeBack_Data["ActivityTime"]) then
		return
	end	

	local nEventStauts = tWelcomeBack_Stc["EventType"]
	local nDataStauts = tWelcomeBack_Stc["DataType"]["Stauts"]
	--离线30天，打签到条件掩码
	if not Task_ChkStcValue(nEventStauts,nDataStauts,">=",tWelcomeBack_Stc["Stauts"]) then
		if Get_UserLastLoginTime() >= tWelcomeBack_Data["LevelDay"] then
			Task_SetStatistic(nEventStauts,nDataStauts,tWelcomeBack_Stc["Stauts"],1) 
		end
	end		
end

-- //获取自创武功 每天自创次数
function WelcomeBack_GongFuLog(nUserId,nTrainNum)
	if not Sys_ChkFullTime(tWelcomeBack_Data["ActivityTime"]) then
		return
	end	
	if nTrainNum == 1 then
		Sys_SaveActionFestivalLog(tWelcomeBack_Log["GongFu1"],nUserId)
	elseif nTrainNum == 5 then
		Sys_SaveActionFestivalLog(tWelcomeBack_Log["GongFu5"],nUserId)
	end
end

function WelcomeBack_PKLog(nUserId,nFieldNum)
	if not Sys_ChkFullTime(tWelcomeBack_Data["ActivityTime"]) then
		return
	end	
	Sys_SaveActionFestivalLog(tWelcomeBack_Log["PK"],nUserId)
end

--可选外套礼包
function WelcomeBack_CoatSelect(nItemId)
	local  sText = tWelcomeBack_Text[nItemId] 
	Sys_DialogText(sText)
	for i,v in ipairs(tWelcomeBack_Data[nItemId]) do
		local sName = Get_ItemtypeName(v)
		local sOptionText = sName.."."
		if v == 192185 then
			sOptionText = sName..tWelcomeBack_Text["Msg"]["Male"].."."
		end
		local sFunc = "</F>WelcomeBack_CoatComfirm</N>"..nItemId.."</N>"..v
		Sys_DialogOption(sOptionText,sFunc)

	end
	Sys_DialogEnd()

end

function WelcomeBack_CoatComfirm(nItemId,nCoat)

	local sName = Get_ItemtypeName(nCoat)
	local sText =string.format(tWelcomeBack_Text["Msg"]["Comfirm"],sName)
	local sFunc1 = "</F>WelcomeBack_CoatGet</N>"..nItemId.."</N>"..nCoat
	local sFunc2 = "</F>WelcomeBack_CoatSelect</N>"..nItemId

	Sys_DialogText(sText)
	Sys_DialogOption(tWelcomeBack_Text["Msg"]["ComfirmOpt1"],sFunc1)
	Sys_DialogOption(tWelcomeBack_Text["Msg"]["ComfirmOpt2"],sFunc2)
	Sys_DialogEnd()

end


function WelcomeBack_CoatGet(nItemId,nCoat)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local sName = Get_ItemtypeName(nCoat)
		local sText = string.format(tWelcomeBack_Text["Msg"]["GetCoat"],sName)
		local sLog =  string.format(tWelcomeBack_Log["CoatPack"],nItemId,nCoat)
		Item_AddNewItem(nCoat,"")
		Sys_SaveActionFestivalLog(sLog)
		Sys_MsgBox(sText)
		User_EffectAdd("self",tWelcomeBack_Data["Effect"])		
	end
end


--------------------------------------------------------------------------------------Npc部分
tNpcFace[4099] = 59
tNpcGossip[11020] = tNpcGossip[11020] or DefaultNpc:new{}
tNpcGossip[11020]["OptionHidden"] = 1


tNpcGossip[11020]["Text1-1"] = {111,112}
tNpcGossip[11020]["tOption1-1"] = {111}
tNpcGossip[11020]["Text111"] = tWelcomeBack_Text[11020]["Text111"]
tNpcGossip[11020]["Text112"] = tWelcomeBack_Text[11020]["Text112"]
tNpcGossip[11020]["Option111"] = tWelcomeBack_Text[11020]["Option111"]
tNpcGossip[11020]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tWelcomeBack_Data["BeforeActivityTime"])
end

tNpcGossip[11020]["Text1-2"] = {121}
tNpcGossip[11020]["tOption1-2"] = {121}
tNpcGossip[11020]["Text121"] = tWelcomeBack_Text[11020]["Text121"]
tNpcGossip[11020]["Option121"] = tWelcomeBack_Text[11020]["Option121"]
tNpcGossip[11020]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tWelcomeBack_Data["ActivityTime"])
end

tNpcGossip[11020]["Text1-3"] = {131,132}
tNpcGossip[11020]["tOption1-3"] = {131,132,133}
tNpcGossip[11020]["Text131"] = tWelcomeBack_Text[11020]["Text131"]
tNpcGossip[11020]["Text132"] = tWelcomeBack_Text[11020]["Text132"]
tNpcGossip[11020]["Option131"] = tWelcomeBack_Text[11020]["Option131"]
tNpcGossip[11020]["Option132"] = tWelcomeBack_Text[11020]["Option132"]
tNpcGossip[11020]["Option133"] = tWelcomeBack_Text[11020]["Option133"]
tNpcGossip[11020]["OptionFunc131"] = "WelcomeBack_SignUP</N>11020"
tNpcGossip[11020]["OptionFunc132"] = "WelcomeBack_Website"

tNpcGossip[11020]["Text2-1"] = {211}
tNpcGossip[11020]["tOption2-1"] = {211}
tNpcGossip[11020]["Text211"] = tWelcomeBack_Text[11020]["Text211"]
tNpcGossip[11020]["Option211"] = tWelcomeBack_Text[11020]["Option211"]

tNpcGossip[11020]["Text2-2"] = {221}
tNpcGossip[11020]["tOption2-2"] = {221}
tNpcGossip[11020]["Text221"] = tWelcomeBack_Text[11020]["Text221"]
tNpcGossip[11020]["Option221"] = tWelcomeBack_Text[11020]["Option221"]


--------------------------------------物品配置-------------------------------------------

tItem[3200026] = tItem[3200026] or {}
tItem[3200026]["Function"] = function(nItemId,sItemName)
	WelcomeBack_CPMono(nItemId)
end
tItem[3200027] = tItem[3200027] or {}
tItem[3200027]["Function"] = function(nItemId,sItemName)
	WelcomeBack_CPMono(nItemId)
end

tItem[3200275] = tItem[3200275] or {}
tItem[3200275]["Function"] = function(nItemId,sItemName)
	WelcomeBack_CoatSelect(nItemId)
end
tItem[3200276] = tItem[3200276] or {}
tItem[3200276]["Function"] = function(nItemId,sItemName)
	WelcomeBack_CoatSelect(nItemId)
end
tItem[3200277] = tItem[3200277] or {}
tItem[3200277]["Function"] = function(nItemId,sItemName)
	WelcomeBack_CoatSelect(nItemId)
end



-- --上线函数
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,WelcomeBack_SetStauts)

-- --
-- tTrainGongFu["tFunction"] = tTrainGongFu["tFunction"] or {}
-- table.insert(tTrainGongFu["tFunction"],WelcomeBack_GongFuLog)

-- -- 个人排位赛：	赢场：
-- -- tArenicWins["tFunction"] = tArenicWins["tFunction"] or {}
-- -- table.insert(tArenicWins["tFunction"],WelcomeBack_PKLog)

-- -- 个人排位赛：	参赛场
-- tArenicCompetes["tFunction"] = tArenicCompetes["tFunction"] or {}
-- table.insert(tArenicCompetes["tFunction"],WelcomeBack_PKLog)
