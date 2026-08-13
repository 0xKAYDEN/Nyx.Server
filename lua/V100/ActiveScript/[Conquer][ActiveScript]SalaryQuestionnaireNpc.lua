------------------------------------------------------------------------------------
--Name：            190531[英文征服][活动脚本]ERP296328【英文征服】用户工资调查（6.4）
--Creator:      蔡颖静
--Created:     2019/05/31
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀:tSalaryQuestionnaireNpc_

----------------------------------表配置部分--------------------------------------------
local tSalaryQuestionnaireNpc_Data={}

tSalaryQuestionnaireNpc_Data["Web"]="https://forms.gle/nUz9yTqDAvoD9Fsc9"
----------------------------------逻辑部分---------------------------------------------
--打开链接
function SalaryQuestionnaireNpc_Link()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["SalaryQuestionnaireNpc"]["ActivityTime"])  then
		return
	end
	local sWebPage = tSalaryQuestionnaireNpc_Data["Web"]
	User_SendWebPage(sWebPage)
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[6510] = 129

tNpcGossip[24310]= tNpcGossip[24310] or DefaultNpc:new{}
tNpcGossip[24310]["OptionHidden"] = 1
tNpcGossip[24310]["DialogueText"] = tSalaryQuestionnaireNpc_Text[24310]

--活动中
tNpcGossip[24310]["Text1-1"] = {111,112,113,114}
tNpcGossip[24310]["tOption1-1"] = {111}
tNpcGossip[24310]["ChkFunc1-1"] = function()
--判断活动时间
	if not Sys_ChkFullTime(tActivityTime["SalaryQuestionnaireNpc"]["ActivityTime"])  then
		return false
	else
		return true
	end 
end 


tNpcGossip[24310]["OptionFunc111"] = "SalaryQuestionnaireNpc_Link"







