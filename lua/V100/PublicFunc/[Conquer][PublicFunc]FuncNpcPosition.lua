----------------------------------------------------------------------------
--Name:		[征服][公用函数]获取NPC坐标.lua
--Purpose:	获取NPC坐标
--Creator: 	郑鋆
--Created:	2016/03/21
----------------------------------------------------------------------------
-- 命名前缀
-- NpcPosition_

-- 常用表
local tNpcPosition_Constant = {}

----------------------------------------------------------------------------
-- 获取NPC坐标
function NpcPosition_Get(nNpcId)
	if nNpcId == 0 or nNpcId == nil then
		nNpcId = Get_NpcId()
	end
	
	if tNpcPosition_Constant[nNpcId] == nil then
		NpcPosition_Set(nNpcId)
	end
	
	return tNpcPosition_Constant[nNpcId]["MapId"],tNpcPosition_Constant[nNpcId]["PosX"],tNpcPosition_Constant[nNpcId]["PosY"]
end

-- 设置NPC坐标
function NpcPosition_Set(nNpcId,nMapId,nPosX,nPosY)
	if nNpcId == 0 or nNpcId == nil then
		nNpcId = Get_NpcId()
	end
	
	tNpcPosition_Constant[nNpcId] = {}
	tNpcPosition_Constant[nNpcId]["MapId"] = nMapId or Get_NpcMapID(nNpcId)
	tNpcPosition_Constant[nNpcId]["PosX"] = nPosX or Get_NpcPositionX(nNpcId)
	tNpcPosition_Constant[nNpcId]["PosY"] = nPosY or Get_NpcPositionY(nNpcId)
end

-- 自动寻路到该NPC
function NpcPosition_PathFind(nNpcId)
	if nNpcId == 0 or nNpcId == nil then
		nNpcId = Get_NpcId()
	end

	if tNpcPosition_Constant[nNpcId] == nil then
		NpcPosition_Set(nNpcId)
	end

	local nMapId = tNpcPosition_Constant[nNpcId]["MapId"]
	local nPosX = tNpcPosition_Constant[nNpcId]["PosX"]
	local nPosY = tNpcPosition_Constant[nNpcId]["PosY"]

	-- 判断NPC是否存在
	if nMapId == -1 then
		return
	end

	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end
