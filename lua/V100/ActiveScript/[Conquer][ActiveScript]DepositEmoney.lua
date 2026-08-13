------------------------------------------------------------------------------------
--Name：	190820[英文征服][活动脚本]内嵌招财进宝促销活动页面及线上预存天石
--Creator:	耿力兀
--Created:	2019/08/20
------------------------------------------------------------------------------------
--logid:12001235
--lua.ini:41070
--命名前缀:DepositEmoney_

--STC:
--(186,74) --记录玩家存放的天石
----------------------------------------------------------------------常量部分----------------------------------------------------------------------
local tDepositEmoney_Cont = {}
--网页链接
	tDepositEmoney_Cont["Web"] = "https://coevent.99.com/fortunecp202001/ "

local tDepositEmoney_Log = {}
--预存天石log
	tDepositEmoney_Log["EmoneyLog"] = "%d,0,0,0,12001235,0,0,0"
	tDepositEmoney_Log["EmoneyBuy"] = "350 22613"

--预存天石掩码
local tDepositEmoney_Stc = {}
	tDepositEmoney_Stc["EventType"] = 186
	tDepositEmoney_Stc["DataType"] = 74
----------------------------------------------------------------------逻辑部分------------------------------------------------------------------------------------------
--打开狂欢大厅
function DepositEmoney_ClikeWeb(nNpcId)
	--检测活动时间
	if not Sys_ChkFullTime(tActivityTime["DepositEmoney"]["BeginTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	User_SendWebPage(tDepositEmoney_Cont["Web"])
end
--预存天石
function DepositEmoney_SaveEmoney(nNpcId)
	--检测活动时间
	if not Sys_ChkFullTime(tActivityTime["DepositEmoney"]["BeginTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	--出输入框
	Sys_DialogTaskClear()
	Sys_DialogText(tDepositEmoney_Text[nNpcId]["Text211"])
	Sys_DialogOptEdit(tDepositEmoney_Text[nNpcId]["OptEditText211"],12,string.format("DepositEmoney_InputJudge</N>%d",nNpcId))
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end
--二次确认
function DepositEmoney_InputJudge(nNpcId)
	--检测活动时间
	if not Sys_ChkFullTime(tActivityTime["DepositEmoney"]["BeginTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	local nSaveNum = tonumber(Get_SysAcceptStr())
	--输入的数字长度
	local nNum = string.len(Get_SysAcceptStr())
	--数字太长
	if nNum > 10 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	--检测输入类型
	if nSaveNum == nil or type(nSaveNum) ~= "number" or nSaveNum%1 ~= 0 or nSaveNum <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	--确认预存
	tNpcGossip[nNpcId]["Text411"] = string.format(tDepositEmoney_Text[nNpcId]["Text411"],nSaveNum)
	tNpcGossip[nNpcId]["OptionFunc411"] = "DepositEmoney_ConfirmSave</N>"..nSaveNum.."</N>"..nNpcId
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end
--确认预存
function DepositEmoney_ConfirmSave(nSaveNum,nNpcId)
	--检测活动时间
	if not Sys_ChkFullTime(tActivityTime["DepositEmoney"]["BeginTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	local nUserId = Get_UserId()
	local nEvent = tDepositEmoney_Stc["EventType"]
	local nType = tDepositEmoney_Stc["DataType"]
	--判断天石数
	if Get_UserEMoney() < nSaveNum then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	--扣天石
	if User_AddEMoneyAndLog(-nSaveNum,tDepositEmoney_Log["EmoneyBuy"]) then
		local sLog = string.format(tDepositEmoney_Log["EmoneyLog"],nSaveNum)
		--打log
		Sys_SaveActionFestivalLog(sLog)
		--打掩码
		Task_AddStatistic(nEvent,nType,nSaveNum,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		--出对白
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		tNpcGossip[nNpcId]["Text611"] = string.format(tDepositEmoney_Text[nNpcId]["Text611"],nData)
		LinkNpcGossipFunc_New(nNpcId,"6-1")
	end
end
----------------------------------------------------------------------NPC配置--------------------------------------------------------------------------------------------
tNpcFace[6246]=21
tNpcGossip[23584]=tNpcGossip[23584]	or	DefaultNpc:new{}
tNpcGossip[23584]["OptionHidden"]=1
tNpcGossip[23584]["DialogueText"]=tDepositEmoney_Text[23584]

--活动前
tNpcGossip[23584]["Text1-1"]={111,112,113,114,115,116}
tNpcGossip[23584]["tOption1-1"]={111}
tNpcGossip[23584]["ChkFunc1-1"] = function ()
	if Sys_ChkFullTime(tActivityTime["DepositEmoney"]["BefTime"]) then
		return true
	end
end
--活动中
tNpcGossip[23584]["Text1-2"]={121,122,123,124,125,126}
tNpcGossip[23584]["tOption1-2"]={121,122,123}
tNpcGossip[23584]["ChkFunc1-2"] = function ()
	if Sys_ChkFullTime(tActivityTime["DepositEmoney"]["BeginTime"]) then
		return true
	end
end
tNpcGossip[23584]["OptionFunc121"] = "DepositEmoney_ClikeWeb"
tNpcGossip[23584]["OptionFunc122"] = "DepositEmoney_SaveEmoney</N>23584"


--活动后
tNpcGossip[23584]["Text1-3"]={131,132,133}
tNpcGossip[23584]["tOption1-3"]={131}
tNpcGossip[23584]["ChkFunc1-3"] = function ()
	if not Sys_ChkFullTime(tActivityTime["DepositEmoney"]["BeginTime"]) then
		return true
	end
end

--预存失败
tNpcGossip[23584]["Text3-1"]={311}
tNpcGossip[23584]["tOption3-1"]={311}
tNpcGossip[23584]["OptionFunc311"] = "DepositEmoney_SaveEmoney</N>23584"
--二次确认
tNpcGossip[23584]["Text4-1"]={411}
tNpcGossip[23584]["tOption4-1"]={411,412}
--天石不足
tNpcGossip[23584]["Text5-1"]={511}
tNpcGossip[23584]["tOption5-1"]={511}
tNpcGossip[23584]["OptionFunc511"] = "DepositEmoney_SaveEmoney</N>23584"

--天石不足
tNpcGossip[23584]["Text6-1"]={611}
tNpcGossip[23584]["tOption6-1"]={611,612}
tNpcGossip[23584]["OptionFunc611"] = "DepositEmoney_ClikeWeb"