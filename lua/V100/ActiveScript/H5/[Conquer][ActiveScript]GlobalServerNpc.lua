------------------------------------------------------------------------------------
--Name：            190425[英文征服][活动脚本]全球同服预热
--Creator:      洪聪敏
--Created:     2019/04/25
--------------------------------------------------------------------------------------
--luaini:41271
--命名前缀：GlobalServerNpc_
--------------------------------------------------------------------------------------



--网页
local tGlobalServerNpc_Web = {}
	tGlobalServerNpc_Web["Web"] = "https://coevent.99.com/celebration1905/client/"
	
	
-------------------------------------逻辑部分---------------------------------------
function GlobalServerNpc_OpenH5()
	local nUserId = Get_UserId()
	
	if not Sys_ChkFullTime(tActivityTime["GlobalServerNpc"]["ActivityTime"]) then
		return
	end
	
	--打开网页
	User_SendWebDialog(tGlobalServerNpc_Web["Web"],nUserId)
end



--------------------------------------NPC部分---- ---------------------------------------
tNpcFace[6272] = 35
tNpcFace[6273] = 31
tNpcFace[6274] = 60
tNpcFace[6275] = 18
tNpcFace[6276] = 50
for nNpcId =23987 , 23991 do
	tNpcGossip[nNpcId] = tNpcGossip[nNpcId] or DefaultNpc:new{}
	tNpcGossip[nNpcId]["OptionHidden"] = 1
	tNpcGossip[nNpcId]["DialogueText"] = tGlobalServerNpc_Text[nNpcId]
	-- 活动前
	tNpcGossip[nNpcId]["Text1-1"] = {111,112,114}
	tNpcGossip[nNpcId]["tOption1-1"] = {111,112}
	tNpcGossip[nNpcId]["OptionChkFunc111"] = function()
		if Sys_ChkFullTime(tActivityTime["GlobalServerNpc"]["ActivityTime"]) then
			return true
		else
			return false
		end
		
	end
	tNpcGossip[nNpcId]["OptionChkFunc112"] = function()
		if Sys_ChkFullTime(tActivityTime["GlobalServerNpc"]["ActivityTime"]) then
			return false
		else
			return true
		end
	end
	tNpcGossip[nNpcId]["OptionFunc111"] = "GlobalServerNpc_OpenH5"
end
