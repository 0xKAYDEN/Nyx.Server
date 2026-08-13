------------------------------------------------------------------------------------
--Name:		[征服][功能脚本]跨服npc转lua
--Purpose:	跨服npc转lua
--Creator: 	郑鋆
--Created:	2015/11/30
------------------------------------------------------------------------------------

-- 命名前缀
-- InterServiceNpc_

local tInterServiceNpc_FormId = 315

---------------------------------------------逻辑---------------------------------------------
-- 判断是否在掠夺期间
function InterServiceNpc_Chk()
	local nNpcId = Get_NpcId()
	
	if not Sys_CheckInPlunderWar() then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
	else
		InterServiceNpc_GoBack()
	end
end

-- 跨服
function InterServiceNpc_GoBack()
	-- 判断玩家是否变身
	local nFormId = Get_UserTransformId()
	
	if nFormId == tInterServiceNpc_FormId then
		User_TalkChannel2005(tInterServiceNpc_Text["Form"])
		return
	end
	
	local nNpcId = Get_NpcId()
	local nServerId = Get_NpcServerId(nNpcId,0)
	Sys_FlyToGameServer(nServerId)
end

---------------------------------------------npc模块-----------------------------------------------
-- 跨服守备
tNpcFace[3324] = 7
tNpcGossip[17333] = tNpcGossip[17333] or DefaultNpc:new{}
tNpcGossip[17333]["OptionHidden"] = 1

-- 主对白
tNpcGossip[17333]["Text1-1"] = {111,112,113}
tNpcGossip[17333]["Text111"] = tInterServiceNpc_Text[17333]["Text111"]
tNpcGossip[17333]["Text112"] = tInterServiceNpc_Text[17333]["Text112"]
tNpcGossip[17333]["Text113"] = tInterServiceNpc_Text[17333]["Text113"]
tNpcGossip[17333]["tOption1-1"] = {1,2,3}
tNpcGossip[17333]["ChkFunc1-1"] = function ()
	local nNpcId = Get_NpcId()
	local nServerId = Get_NpcServerId(nNpcId,0)
	local sServerName = Get_SysServerName(nServerId)
	
	tNpcGossip[17333]["Text111"] = string.format(tInterServiceNpc_Text[17333]["Text111"],sServerName)
	return true
end

tNpcGossip[17333]["Option1"] = tInterServiceNpc_Text[17333]["Option1"]
tNpcGossip[17333]["OptionChkFunc1"] = function ()
	local nNpcId = Get_NpcId()
	local nServerId = Get_NpcServerId(nNpcId,0)
	local sServerName = Get_SysServerName(nServerId)
	
	tNpcGossip[17333]["Option1"] = string.format(tInterServiceNpc_Text[17333]["Option1"],sServerName)
	return true
end
tNpcGossip[17333]["OptionFunc1"]="InterServiceNpc_Chk"
tNpcGossip[17333]["Option2"] = tInterServiceNpc_Text[17333]["Option2"]
tNpcGossip[17333]["OptionPoint2"]="2-3"
tNpcGossip[17333]["Option3"] = tInterServiceNpc_Text[17333]["Option3"]
tNpcGossip[17333]["OptionPoint3"]="2-1"

tNpcGossip[17333]["Text2-1"] = {211,212,213,214}
tNpcGossip[17333]["Text211"] = tInterServiceNpc_Text[17333]["Text211"]
tNpcGossip[17333]["Text212"] = tInterServiceNpc_Text[17333]["Text212"]
tNpcGossip[17333]["Text213"] = tInterServiceNpc_Text[17333]["Text213"]
tNpcGossip[17333]["Text214"] = tInterServiceNpc_Text[17333]["Text214"]
tNpcGossip[17333]["tOption2-1"] = {4}

tNpcGossip[17333]["Option4"] = tInterServiceNpc_Text[17333]["Option4"]
tNpcGossip[17333]["OptionPoint4"]="2-2"

tNpcGossip[17333]["Text2-2"] = {221,222,223}
tNpcGossip[17333]["Text221"] = tInterServiceNpc_Text[17333]["Text221"]
tNpcGossip[17333]["Text222"] = tInterServiceNpc_Text[17333]["Text222"]
tNpcGossip[17333]["Text223"] = tInterServiceNpc_Text[17333]["Text223"]
tNpcGossip[17333]["tOption2-2"] = {5}

tNpcGossip[17333]["Option5"] = tInterServiceNpc_Text[17333]["Option5"]

tNpcGossip[17333]["Text2-3"] = {231,232,233,234}
tNpcGossip[17333]["Text231"] = tInterServiceNpc_Text[17333]["Text231"]
tNpcGossip[17333]["Text232"] = tInterServiceNpc_Text[17333]["Text232"]
tNpcGossip[17333]["Text233"] = tInterServiceNpc_Text[17333]["Text233"]
tNpcGossip[17333]["Text234"] = tInterServiceNpc_Text[17333]["Text234"]
tNpcGossip[17333]["tOption2-3"] = {6}

tNpcGossip[17333]["Option6"] = tInterServiceNpc_Text[17333]["Option6"]
tNpcGossip[17333]["OptionPoint6"]="2-1"

tNpcGossip[17333]["Text2-4"] = {241}
tNpcGossip[17333]["Text241"] = tInterServiceNpc_Text[17333]["Text241"]
tNpcGossip[17333]["tOption2-4"] = {7,8}

tNpcGossip[17333]["Option7"] = tInterServiceNpc_Text[17333]["Option7"]
tNpcGossip[17333]["OptionFunc7"]="InterServiceNpc_GoBack"
tNpcGossip[17333]["Option8"] = tInterServiceNpc_Text[17333]["Option8"]

tNpcGossip[18999] = tNpcGossip[17333]
tNpcGossip[19000] = tNpcGossip[17333]
tNpcGossip[19001] = tNpcGossip[17333]
tNpcGossip[19002] = tNpcGossip[17333]
tNpcGossip[19003] = tNpcGossip[17333]
tNpcGossip[19004] = tNpcGossip[17333]
tNpcGossip[19005] = tNpcGossip[17333]
tNpcGossip[19006] = tNpcGossip[17333]
tNpcGossip[19007] = tNpcGossip[17333]
tNpcGossip[19008] = tNpcGossip[17333]
tNpcGossip[19009] = tNpcGossip[17333]
tNpcGossip[19010] = tNpcGossip[17333]
tNpcGossip[19011] = tNpcGossip[17333]
tNpcGossip[19012] = tNpcGossip[17333]
tNpcGossip[19013] = tNpcGossip[17333]
tNpcGossip[19014] = tNpcGossip[17333]
tNpcGossip[19015] = tNpcGossip[17333]
tNpcGossip[19016] = tNpcGossip[17333]
tNpcGossip[19017] = tNpcGossip[17333]
