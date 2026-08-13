------------------------------------------------------------------------------------
--Name：            190326[英文征服][活动脚本]4月灵珠排行榜线上部分制作
--Creator:      洪聪敏
--Created:     2019/03/26
------------------------------------------------------------------------------------
--命名前缀：
--DragonSoulWeb_
--Stc:(192,88) 背包信
--luaini:41208


------------------------------------------------------------------------------------



--网页
local tDragonSoulWeb_Web = {}
	tDragonSoulWeb_Web["Web"] = "https://coevent.99.com/animarank/"
	
	
	
	
	
	
-------------------------------------逻辑部分---------------------------------------
function DragonSoulWeb_OpenH5()
	local nUserId = Get_UserId()
	
	if not Sys_ChkFullTime(tActivityTime["DragonSoulWeb"]["ActiveTime"]) then
		return
	end
	--打开网页
	User_SendWebDialog(tDragonSoulWeb_Web["Web"],nUserId)
end
	
	
	
	
	
	
	
	
--------------------------------------NPC部分-------------------------------------------

tNpcFace[6523] = 245
tNpcGossip[23909] = tNpcGossip[23909] or DefaultNpc:new{}
tNpcGossip[23909]["OptionHidden"] = 1
tNpcGossip[23909]["DialogueText"] = tDragonSoulWeb_Text[23909]
-- 活动前
tNpcGossip[23909]["Text1-1"] = {111,112,113,114}
tNpcGossip[23909]["tOption1-1"] = {111}
tNpcGossip[23909]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["DragonSoulWeb"]["ActiveTime"])
end

-- 活动后
tNpcGossip[23909]["Text1-2"] = {121}
tNpcGossip[23909]["tOption1-2"] = {121}
tNpcGossip[23909]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["DragonSoulWeb"]["ActiveTime"])
end

tNpcGossip[23909]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[23909]["tOption1-3"] = {131,132}
tNpcGossip[23909]["OptionFunc131"] = "DragonSoulWeb_OpenH5"

