------------------------------------------------------------------------------------
--Name:		171222[英文征服][任务脚本]符文NPC制作
--Purpose:	符文NPC制作
--Creator: 兰冬梅
--Created:	2017/12/22
------------------------------------------------------------------------------------
--lua.ini:21090

local tIntelligence_Data={}
	-- 网页链接
	tIntelligence_Data["WebLink"] = "https://www.facebook.com/ConquerOnline/videos/10154876763026230/"
---------------------------------------------------
--网页链接
function Intelligence_WebLink()
	local sWebAddress = tIntelligence_Data["WebLink"]
	User_SendWebPage(sWebAddress)
end
--------------------------------------------------------
-- 符文NPC
tNpcFace[499] = 260
tNpcGossip[22539] = tNpcGossip[22539] or DefaultNpc:new{}
tNpcGossip[22539]["OptionHidden"] = 1
tNpcGossip[22539]["DialogueText"] = tIntelligence_Text[22539]
-- 对白
tNpcGossip[22539]["Text1-1"] = {111}
tNpcGossip[22539]["tOption1-1"] = {111}
tNpcGossip[22539]["OptionFunc111"] = "Intelligence_WebLink"