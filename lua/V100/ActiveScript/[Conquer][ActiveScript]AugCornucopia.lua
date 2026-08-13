------------------------------------------------------------------------------------
--Name：   190726[英文征服][活动脚本]8月聚宝阁活动NPC制作)
--Creator:      傅伟龙
--Created:     2018/09/13
------------------------------------------------------------------------------------


-- 命名规范
-- AugCornucopia

-- logid 12001164
----------------------------------表配置部分--------------------------------------------

local tAugCornucopia_Data = {}
	tAugCornucopia_Data["Bef_Time"] = tActivityTime["AugCornucopia"]["Bef_Time"]
	tAugCornucopia_Data["Now_Time"] = tActivityTime["AugCornucopia"]["Now_Time"]
	tAugCornucopia_Data["Web"] = "https://coevent.99.com/cpmall/"
	tAugCornucopia_Data["Max"] = 999999999
	tAugCornucopia_Data["Level"] = 80
	tAugCornucopia_Data["Metempsychosis"] = 0
	tAugCornucopia_Data["effect"] = "angelwing"
	
local tAugCornucopia_Stc = {}
	tAugCornucopia_Stc[1] = {}  -- 记录玩家预存天石
	tAugCornucopia_Stc[1]["EventType"] = 201
	tAugCornucopia_Stc[1]["DataType"] = 63

	
local tAugCornucopia_EmoneyLog = {}
	tAugCornucopia_EmoneyLog[1] = "10000	0665" --预存天石

local tAugCornucopia_Log = {}
	tAugCornucopia_Log[1] = "%d,0,0,0,12001545,2,0,0"

----------------------------------逻辑部分--------------------------------------------
function AugCornucopia_Web(nNpcId)
	if not Sys_ChkFullTime(tAugCornucopia_Data["Now_Time"]) then
		return
	end
	-- User_SendWebDialog(tAugCornucopia_Data["Web"])
	User_SendWebPage(tAugCornucopia_Data["Web"])
end

-- 预存天石
function AugCornucopia_Prestorage(nNpcId)
	if not Sys_ChkFullTime(tAugCornucopia_Data["Now_Time"]) then
		return
	end

	---显示输入框
	Sys_DialogText(tAugCornucopia_Text[24710]["Text211"])
	-- Sys_DialogOption(tAugCornucopia_Text[24710]["Option211"],"</F>AugCornucopia_PrestorageEmony</N>" .. nNpcId .. "</N>270")
	-- Sys_DialogOption(tAugCornucopia_Text[24710]["Option212"],"</F>AugCornucopia_PrestorageEmony</N>" .. nNpcId .. "</N>2700")
	Sys_DialogOptEdit(tAugCornucopia_Text[24710]["Option213"],15,"AugCornucopia_PrestorageEmony</N>" .. nNpcId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()

end

function AugCornucopia_PrestorageEmony(nNpcId)
	if not Sys_ChkFullTime(tAugCornucopia_Data["Now_Time"]) then
		return
	end
	
	
	local nMoney = tonumber(Get_SysAcceptStr())


	-- 非法字符
	if type(nMoney) ~= "number" or nMoney > tAugCornucopia_Data["Max"] or nMoney < 0 then
		Sys_MsgBox(tAugCornucopia_Text["MsgBox"]["Error"])
		return
	end
	
	
	
	--天石
	tNpcGossip[24710]["Text311"] = string.format(tAugCornucopia_Text[24710]["Text311"],nMoney)
	tNpcGossip[24710]["OptionFunc311"] = "AugCornucopia_CostMoney</N>24710</N>" ..   nMoney 
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	
	
end 
---扣钱
function AugCornucopia_CostMoney(nNpcId,nMoney)
	if not Sys_ChkFullTime(tAugCornucopia_Data["Now_Time"]) then
		return
	end

	
	local nUserMoney = Get_UserEMoney()
	if nUserMoney < nMoney then
		Sys_MsgBox(tAugCornucopia_Text["MsgBox"]["NoEmoney"])
		return
	end
	-- 扣钱
	if not User_AddEMoneyAndLog(-nMoney,tAugCornucopia_EmoneyLog[1]) then
		return
	end

	AugCornucopia_AddStc(nMoney)
	tNpcGossip[24710]["Text411"] = string.format(tAugCornucopia_Text[24710]["Text411"],nMoney)
	LinkNpcGossipFunc_New(nNpcId,"4-1")
	--打log
	local sLog = string.format(tAugCornucopia_Log[1],nMoney)
	Sys_SaveActionFestivalLog(sLog)

	

end

function AugCornucopia_AddStc(nMoney)
	local nEvent = tAugCornucopia_Stc[1]["EventType"]
	local nData = tAugCornucopia_Stc[1]["DataType"]

	Task_AddStatistic(nEvent,nData,nMoney,1)
	Task_SetStcTimestamp(nEvent,nData,0)
	--光效
	User_EffectAdd("self",tAugCornucopia_Data["effect"])
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[1377] = 93
tNpcGossip[24710]= tNpcGossip[24710] or DefaultNpc:new{}
tNpcGossip[24710]["OptionHidden"] = 1
tNpcGossip[24710]["DialogueText"] = tAugCornucopia_Text[24710]


tNpcGossip[24710]["Text1-1"] = {111,112}
tNpcGossip[24710]["tOption1-1"] = {111,112}
tNpcGossip[24710]["OptionFunc111"] = "AugCornucopia_Prestorage</N>24710"  
tNpcGossip[24710]["OptionFunc112"] = "AugCornucopia_Web</N>24710"  
-- tNpcGossip[24710]["OptionPoint112"] = "2-1"


tNpcGossip[24710]["Text2-1"] = {211,212}
tNpcGossip[24710]["tOption2-1"] = {211,212}

tNpcGossip[24710]["Text3-1"] = {311}
tNpcGossip[24710]["tOption3-1"] = {311,312}

tNpcGossip[24710]["Text4-1"] = {411}
tNpcGossip[24710]["tOption4-1"] = {411,412}
tNpcGossip[24710]["OptionFunc411"] = "AugCornucopia_Web</N>24710"  

tNpcGossip[24710]["Text4-2"] = {421}
tNpcGossip[24710]["tOption4-2"] = {421,422}


