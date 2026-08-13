------------------------------------------------------------------------------------
--Name:		181121[英文征服][活动脚本]激情服宣传npc
--Creator: 	黄啸
--Created:	2018/11/21
------------------------------------------------------------------------------------
-- 命名规则：
-- PassionAnnounce_


-------------------------------------------基础数据部分-------------------------------------------
local tPassionAnnounce_Web = {}
tPassionAnnounce_Web["Serious"] = "https://coevent.99.com/7daygoal/"
-------------------------------------------逻辑模板-------------------------------------------


function PassionAnnounce_Open()
	local sPszParam = tPassionAnnounce_Web["Serious"]
	User_SendWebDialog(sPszParam)
end

--------------------------------------------NPC模版----------------------------------------
-- 【指引大使】萱萱
tNpcFace[6401] = 184
tNpcGossip[23558] = tNpcGossip[23558] or DefaultNpc:new{}
tNpcGossip[23558]["OptionHidden"] = 1
tNpcGossip[23558]["DialogueText"] = tPassionAnnounce_Text[23558]

tNpcGossip[23558]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[23558]["tOption1-1"] = {1}
tNpcGossip[23558]["OptionFunc1"] = "NpcPosition_PathFind</N>23288"
tNpcGossip[23558]["OptionFunc2"] = "NpcPosition_PathFind</N>23564"
tNpcGossip[23558]["OptionFunc3"] = "NpcPosition_PathFind</N>23563"
tNpcGossip[23558]["OptionFunc4"] = "NpcPosition_PathFind</N>23562"
tNpcGossip[23558]["OptionFunc5"] = "NpcPosition_PathFind</N>23577"
tNpcGossip[23558]["OptionFunc6"] = "NpcPosition_PathFind</N>0"


--新增新服福利大使npc
tNpcFace[6409] = 134
tNpcGossip[24215] = tNpcGossip[24215] or DefaultNpc:new{}
tNpcGossip[24215]["OptionHidden"] = 1
tNpcGossip[24215]["DialogueText"] = tPassionAnnounce_Text[24215]

--活动前
tNpcGossip[24215]["Text1-1"] = {111,112,113}
tNpcGossip[24215]["tOption1-1"] = {1}
tNpcGossip[24215]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["PassionAnnounce"]["BeforeActTime"]) 
end

--活动后
tNpcGossip[24215]["Text1-2"] = {114}
tNpcGossip[24215]["tOption1-2"] = {2}
tNpcGossip[24215]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tActivityTime["PassionAnnounce"]["ActTime"]) 
end

--活动中
tNpcGossip[24215]["Text1-3"] = {115,116,117}
tNpcGossip[24215]["tOption1-3"] = {3}
tNpcGossip[24215]["OptionFunc3"] = "PassionAnnounce_Open"

--10月新服2宣传npc
tNpcFace[5080] = 74
tNpcGossip[25049] = tNpcGossip[25049] or DefaultNpc:new{}
tNpcGossip[25049]["OptionHidden"] = 1
tNpcGossip[25049]["DialogueText"] = tPassionAnnounce_Text[25049]

--活动前
tNpcGossip[25049]["Text1-1"] = {111,112,113,114}
tNpcGossip[25049]["tOption1-1"] = {1}
tNpcGossip[25049]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["OctoberNewServer"]["BeforeActivityTime"]) 
end

--活动后
tNpcGossip[25049]["Text1-2"] = {115}
tNpcGossip[25049]["tOption1-2"] = {2}
tNpcGossip[25049]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tActivityTime["OctoberNewServer"]["ActivityTime"]) 
end

--活动中
tNpcGossip[25049]["Text1-3"] = {116,117,118,119}
tNpcGossip[25049]["tOption1-3"] = {3}



