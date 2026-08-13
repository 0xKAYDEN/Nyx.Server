------------------------------------------------------------------------------------
-- Name:		200323[英文征服][活动脚本]请安排在双龙城新增一个NPC（3.26）
-- Purpose:		
-- Creator:		杨艳
-- Created:		2020/03/23
----------------------------------------------------------------------------------
-- 前缀
-- CoDoctor_

-- LogId 


------------------------------------------------------------------------------------
local tCoDoctor_Data = {}
	tCoDoctor_Data["Web"] = "https://www.facebook.com/ConquerOnline/"
		
----------------------------------------逻辑部分------------------------------------

-- 打开页面
function CoDoctor_Open()
	User_SendWebPage(tCoDoctor_Data["Web"])
end

----------------------------------------NPC模板-------------------------------------
-- 26089,'CODoctor' 
tNpcFace[5742] = 119
tNpcGossip[26089] = tNpcGossip[26089] or DefaultNpc:new{}
tNpcGossip[26089]["OptionHidden"] = 1
tNpcGossip[26089]["DialogueText"] = tCoDoctor_Text[26089]
-- 活动中 满足条件
tNpcGossip[26089]["Text1-1"] = {111,112}
tNpcGossip[26089]["Text111"] = tCoDoctor_Text[26089]["Text111"]
tNpcGossip[26089]["Text112"] = tCoDoctor_Text[26089]["Text112"]

tNpcGossip[26089]["tOption1-1"] = {111}
tNpcGossip[26089]["Option111"] = tCoDoctor_Text[26089]["Option111"]
tNpcGossip[26089]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["CoDoctor"]["ActivityTime"])
end

tNpcGossip[26089]["OptionFunc111"] = "CoDoctor_Open" 
 

