------------------------------------------------------------------------------------
--Name：            190128[英文征服][活动脚本]调查问卷NPC制作
--Creator:      林旭
--Created:     2019/01/28
------------------------------------------------------------------------------------
-- 命名前缀：SurveyEnvoyNpc_
----------------------------------表配置部分----------------------------------------
local sSurveyEnvoyNpc_WebPage = "https://goo.gl/forms/tTiiBQjMqzo2XLO62"
local tSurveyEnvoyNpc_Cont = {}
	tSurveyEnvoyNpc_Cont["CopWebPage"] = "https://forms.gle/VRaHqUMveVB4vcp69"
	
----------------------------------逻辑部分------------------------------------------
function SurveyEnvoyNpc_GOtoWebPage()
	local sWeb = sSurveyEnvoyNpc_WebPage
	User_SendWebPage(sWeb)
end

function SurveyEnvoyNpc_WebPage()
	User_SendWebPage(tSurveyEnvoyNpc_Cont["CopWebPage"])
end
----------------------------------NPC部分-------------------------------------------
tNpcFace[1497] = 111
tNpcGossip[23716]= tNpcGossip[23716] or DefaultNpc:new{}
tNpcGossip[23716]["DialogueText"] = tSurveyEnvoyNpc_Text[23716]
tNpcGossip[23716]["OptionHidden"] = 1
tNpcGossip[23716]["Text1-1"] = {111,112}
tNpcGossip[23716]["tOption1-1"] = {111}
tNpcGossip[23716]["OptionFunc111"] = "SurveyEnvoyNpc_GOtoWebPage"

tNpcFace[6120] = 2194
tNpcGossip[26723]= tNpcGossip[26723] or DefaultNpc:new{}
tNpcGossip[26723]["DialogueText"] = tSurveyEnvoyNpc_Text[26723]
tNpcGossip[26723]["OptionHidden"] = 1
tNpcGossip[26723]["Text1-1"] = {111,112,113}
tNpcGossip[26723]["tOption1-1"] = {111}
tNpcGossip[26723]["OptionFunc111"] = "SurveyEnvoyNpc_WebPage"
