------------------------------------------------------------------------------------
--Name：            200225[英文征服][活动脚本]3月新服忍者觉醒预约活动（3.24-4.23）
--Creator:      蔡颖静
--Created:     2020-02-25
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--lua.ini:41734

----------------------------------表配置部分--------------------------------------------
local tNinjaSignInActivity_Data={}

tNinjaSignInActivity_Data["Stc"]={}
tNinjaSignInActivity_Data["Stc"]["SignInEvent"]=216
tNinjaSignInActivity_Data["Stc"]["SignInData"]=53

tNinjaSignInActivity_Data["Limit"]={}
tNinjaSignInActivity_Data["Limit"]["Global"]=54274
tNinjaSignInActivity_Data["Limit"]["Num"]=10000

tNinjaSignInActivity_Data["Web"]="https://coevent.99.com/inspiredhero/"

tNinjaSignInActivity_Data["EMoneyLog"]="350	23077	0	0	1	"

----------------------------------逻辑部分---------------------------------------------

function NinjaSignInActivity_SignIn()
	if not Sys_ChkFullTime(tActivityTime["NinjaSignInActivity"]["SignInActTime"])  then
		return
	end 
	
	--判断预约名额是否已满
	local nGlobalId=tNinjaSignInActivity_Data["Limit"]["Global"]
	local nLimitNum=tNinjaSignInActivity_Data["Limit"]["Num"]
	
	if Get_SysDynaGlobalData(nGlobalId,0) >= nLimitNum then
		return Sys_MsgBox(tNinjaSignInActivity_Text["105"]["Limit"])
	end 
	
	--判断是否已签到过
	local nSignInEvent=tNinjaSignInActivity_Data["Stc"]["SignInEvent"]
	local nSignInData=tNinjaSignInActivity_Data["Stc"]["SignInData"]
	if Get_UserStatisticValue(nSignInEvent,nSignInData) >= 1 then 
		return LinkNpcGossipFunc_New(26009,"2-2")
	end 
	
	--签到
	if Get_UserStatisticValue(nSignInEvent,nSignInData) == 0 then
		Task_AddStatistic(nSignInEvent,nSignInData,1,1)
		Task_SetStcTimestamp(nSignInEvent,nSignInData,0)
		
		local nNum=Get_SysDynaGlobalData(nGlobalId,0) + 1
		Sys_SetSynaGlobalData(nGlobalId,0,nNum)
		
		Sys_SaveEmoneyBuy(tNinjaSignInActivity_Data["EMoneyLog"])
		
		return LinkNpcGossipFunc_New(26009,"2-1")
	end 
end 
	
--线下链接跳转
function NinjaSignInActivity_OffLineLink()
	if not Sys_ChkFullTime(tActivityTime["NinjaSignInActivity"]["ActTime"])  then
		return
	end 
	
	local sWebPage =tNinjaSignInActivity_Data["Web"]
	User_SendWebPage(sWebPage)
end 


----------------------------------NPC部分---------------------------------------------
tNpcFace[4061] = 52
tNpcGossip[26009]= tNpcGossip[26009] or DefaultNpc:new{}
tNpcGossip[26009]["OptionHidden"] = 1
tNpcGossip[26009]["DialogueText"] = tNinjaSignInActivity_Text[26009]

--活动后
tNpcGossip[26009]["Text1-1"] = {111,112}
tNpcGossip[26009]["tOption1-1"] = {111}
tNpcGossip[26009]["ChkFunc1-1"] = function()
	if  Sys_ChkFullTime(tActivityTime["NinjaSignInActivity"]["ActTime"])  then
		if CommonFunc_GetAfterActivityTime(tActivityTime["NinjaSignInActivity"]["SignInActTime"]) then 
			return true
		else
			return false
		end 
	else
		return false
	end 
end

tNpcGossip[26009]["OptionFunc111"] = "NinjaSignInActivity_OffLineLink"

--活动中
tNpcGossip[26009]["Text1-2"] = {121,122,123}
tNpcGossip[26009]["tOption1-2"] = {121,123}
tNpcGossip[26009]["ChkFunc1-2"]= function()
	if Sys_ChkFullTime(tActivityTime["NinjaSignInActivity"]["ActTime"])  then
		if not Sys_ChkFullTime(tActivityTime["NinjaSignInActivity"]["SignInActTime"])  then
			return false
		else
			local nSignInEvent=tNinjaSignInActivity_Data["Stc"]["SignInEvent"]
			local nSignInData=tNinjaSignInActivity_Data["Stc"]["SignInData"]
			if Get_UserStatisticValue(nSignInEvent,nSignInData) >= 1 then 
				tNpcGossip[26009]["Option121"] = tNinjaSignInActivity_Text[26009]["Option122"]
			else
				tNpcGossip[26009]["Option121"] = tNinjaSignInActivity_Text[26009]["Option121"]
			end 
			return true
		end
	else
		return false
	end 
end 

tNpcGossip[26009]["OptionFunc121"] = "NinjaSignInActivity_SignIn"
tNpcGossip[26009]["OptionFunc123"] = "NinjaSignInActivity_OffLineLink"

--签到成功
tNpcGossip[26009]["Text2-1"] = {211}
tNpcGossip[26009]["tOption2-1"] = {211}
tNpcGossip[26009]["OptionFunc211"] = "NinjaSignInActivity_OffLineLink"

--已经签到过
tNpcGossip[26009]["Text2-2"] = {221}
tNpcGossip[26009]["tOption2-2"] = {221}
tNpcGossip[26009]["OptionFunc221"] = "NinjaSignInActivity_OffLineLink"


-- 动态存储表清零
tGlobalData_Info[54274] = {}
tGlobalData_Info[54274]["Time"] = {}
tGlobalData_Info[54274]["Time"]["ActivityTime"] = tActivityTime["NinjaSignInActivity"]["ActTime"]
tGlobalData_Info[54274]["Time"]["ClearTime"] = "00:00 00:02"
tGlobalData_Info[54274]["Rest"] = {}
tGlobalData_Info[54274]["Rest"]["GlobalId"] = {54274}
tGlobalData_Info[54274]["Rest"]["Pos"] = {0}