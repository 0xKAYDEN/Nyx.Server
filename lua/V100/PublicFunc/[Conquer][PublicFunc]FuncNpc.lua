----------------------------------------------------------------------------
--Name:		[征服][公用函数]NPC函数.lua
--Purpose:	NPC函数接口
--Creator: 	林锦
--Created:	2014/06/26
----------------------------------------------------------------------------
---------------------------------命名规范----------------------------------
------------------------------actiontype的分类------------------------------
--Sys  系统所有
--Send 消息发送
--Get  获得属性
--Set  修改属性
--Chk  检查属性
--Del  删除属性
--Add  添加属性
------------------------------------------------------------------------------
-- Npc函数命名前缀词：Npc_
--例子：
--//删除指定的NPC,参数说明：idNpc指要删除的NPCID，注意：删除后，不要再对此NPC进行操作。
--NpcDelByID(OBJID idNpc)

--function Npc_DelById(nNpcId)
--
--end

------------------------------------------------------------------------------
-- NPC操作相关接口说明：
-- //设置NPC的整型类型属性，参数说明：idNpc指要操作的NPCID，idx指2000-2099的枚举值，nValue指要设置的具体值，如果失败返回false，否则返回true。
-- SetNpcInt(OBJID idNpc, int idx, int nValue)
-- //设置NPC的字符串型属性，参数说明：idNpc指要操作的NPCID，idx指2000-2099的枚举值，nValue指要设置的具体值，如果失败返回false，否则返回true。
-- SetNpcStr(OBJID idNpc, int idx, const char* strVaule)
--根据你们的要求SetNpcInt和SetNpcStr这两个接口增加第4个参数，用于控制是否要立即更新到数据库，非0表示要立即更新到数据库，否则由服务器程序控制更新机制

-- //删除指定的NPC,参数说明：idNpc指要删除的NPCID，注意：删除后，不要再对此NPC进行操作。
-- NpcDelByID(OBJID idNpc)
-- //删除指定类型的所有NPC，参数说明：nNpcType指要删除的NPC类型，注意：删除后，不要再对此NPC进行操作。
-- NpcDelByType(int nNpcType)
-- //把NPC移动到指定地图的指定位置，参数说明：idNpc指要移动的NPCID，idMap指要移动到的地图ID，nPosX指X坐标，nPosY指Y坐标。注意：NPC要为固定NPC
-- NpcMove(OBJID idNpc, OBJID idMap, int nPosX, int nPosY)


--设置DynaNPC的name字段(需要动态npc对象)
--NPC的ID  =  2002
function Npc_SetDynaNpcName(sName,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcName 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end
	
	if type(sName) ~= "string" then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcName 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 sName 只能传字符型值")
		return
	end

	return SetNpcStr(nDynaNpcId,G_NPC_Name,sName,1)
end

--设置DynaNPC的OwnerID字段(需要动态npc对象)
--NPC的ID  =  2003200
function Npc_SetDynaNpcOwnerId(nOwnerId,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcOwnerId 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end

	if type(nOwnerId) ~= "number" or nOwnerId%1 ~= 0  or nOwnerId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcOwnerId 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 nOwnerId 只能传大于0的整数")
		return
	end
	
	return SetNpcInt(nDynaNpcId,G_NPC_OwnerID,nOwnerId,1)
end

--设置DynaNPC的Type字段(需要动态npc对象)
--NPC的ID  =  2005
function Npc_SetDynaNpcType(nType,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcType 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end

	if type(nType) ~= "number" or nType%1 ~= 0  or nType < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcType 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 nType 只能传大于0的整数")
		return
	end

	return SetNpcInt(nDynaNpcId,G_NPC_Type,nType,1)
end

--设置DynaNPC的LookFace字段(需要动态npc对象)
--NPC的ID  =  2006
function Npc_SetDynaNpcLookFace(nLookFace,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcLookFace 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end

	if type(nLookFace) ~= "number" or nLookFace%1 ~= 0  or nLookFace < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcLookFace 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 nLookFace 只能传大于0的整数")
		return
	end
	
	return SetNpcInt(nDynaNpcId,G_NPC_LookFace,nLookFace,1)
end

--设置DynaNPC的MapId字段(需要动态npc对象)
--NPC的ID  =  2007
function Npc_SetDynaNpcMapId(nMapId,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcMapId 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end

	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcMapId 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 nMapId 只能传大于0的整数")
		return
	end

	if SetNpcInt(nDynaNpcId,G_NPC_MapID,nMapId,1) then
		NpcPosition_Set(nNpcId,nMapId)
		return true
	else
		return false
	end
end

--设置DynaNPC的Cellx字段(需要动态npc对象)
--NPC的ID  =  2008
function Npc_SetDynaNpcCellx(nCellx,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcCellx 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end
	
	if type(nCellx) ~= "number" or nCellx%1 ~= 0  or nCellx < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcCellx 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 nCellx 只能传大于0的整数")
		return
	end

	if SetNpcInt(nDynaNpcId,G_NPC_PosX,nCellx,1) then
		NpcPosition_Set(nNpcId,nil,nCellx)
		return true
	else
		return false
	end
end

--设置DynaNPC的Celly字段(需要动态npc对象)
--NPC的ID  =  2009
function Npc_SetDynaNpcCelly(nCelly,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcCelly 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end
	
	if type(nCelly) ~= "number" or nCelly%1 ~= 0  or nCelly < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcCelly 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 nCelly 只能传大于0的整数")
		return
	end

	if SetNpcInt(nDynaNpcId,G_NPC_PosY,nCelly,1) then
		NpcPosition_Set(nNpcId,nil,nil,nCelly)
		return true
	else
		return false
	end
end

--设置DynaNPC的Data0字段(需要动态npc对象)
--NPC的ID  =  2010
function Npc_SetDynaNpcData0(nData0,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcData0 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end

	if type(nData0) ~= "number" or nData0%1 ~= 0  or nData0 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcData0 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 nData0 只能传大于0的整数")
		return
	end

	return SetNpcInt(nDynaNpcId,G_NPC_Data0,nData0,1)
end

--设置DynaNPC的Data1字段(需要动态npc对象)
--NPC的ID  =  2011
function Npc_SetDynaNpcData1(nData1,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcData1 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end

	if type(nData1) ~= "number" or nData1%1 ~= 0  or nData1 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcData1 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 nData1 只能传大于0的整数")
		return
	end

	return SetNpcInt(nDynaNpcId,G_NPC_Data1,nData1,1)
end

--设置DynaNPC的Data2字段(需要动态npc对象)
--NPC的ID  =  2012
function Npc_SetDynaNpcData2(nData2,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcData2 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end

	if type(nData2) ~= "number" or nData2%1 ~= 0  or nData2 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcData2 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 nData2 只能传大于0的整数")
		return
	end

	return SetNpcInt(nDynaNpcId,G_NPC_Data2,nData2,1)
end


--设置DynaNPC的Data3字段(需要动态npc对象)
--NPC的ID  =  2013
function Npc_SetDynaNpcData3(nData3,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcData3 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end

	if type(nData3) ~= "number" or nData3%1 ~= 0  or nData3 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcData3 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 nData3 只能传大于0的整数")
		return
	end

	return SetNpcInt(nDynaNpcId,G_NPC_Data3,nData3,1)
end

--设置DynaNPC的DataStr字段(需要动态npc对象)
--NPC的ID  =  2014
function Npc_SetDynaNpcDataStr(sDataStr,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcDataStr 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end

	sDataStr = tostring(sDataStr) or "null"
	return SetNpcStr(nDynaNpcId,G_NPC_DataStr,sDataStr,1)
end

--设置DynaNPC的MaxLife字段(需要动态npc对象)
--NPC的ID  =  2015
function Npc_SetDynaNpcMaxLife(nMaxLife,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcMaxLife 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end

	if type(nMaxLife) ~= "number" or nMaxLife%1 ~= 0  or nMaxLife < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcMaxLife 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 nMaxLife 只能传大于0的整数")
		return
	end
	
	return SetNpcInt(nDynaNpcId,G_NPC_MaxLife,nMaxLife,1)
end

--设置DynaNPC的Life字段(需要动态npc对象)
--NPC的ID  =  2016
function Npc_SetDynaNpcLife(nLife,nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcLife 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end

	if type(nLife) ~= "number" or nLife%1 ~= 0  or nLife < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDynaNpcLife 中 [nDynaNpcId]:[".. nDynaNpcId .."] 的 nLife 只能传大于0的整数")
		return
	end

	return SetNpcInt(nDynaNpcId,G_NPC_Life,nLife,1)
end

--把NPC移动到指定地图的指定位置
--参数说明：idNpc指要移动的NPCID，idMap指要移动到的地图ID，nPosX指X坐标，nPosY指Y坐标。注意：NPC要为固定NPC
function Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
	if nNpcId == nil then
		nNpcId = 0
	elseif type(nNpcId) ~= "number" or nNpcId%1 ~= 0 or nNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_MoveNpcPos 的 [nNpcId]:[".. nNpcId .."] 只能为整型并且大于等于0")
		return
	end

	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_MoveNpcPos 中 [nNpcId]:[".. nNpcId .."] 的 nMapId 只能传大于0的整数")
		return
	end

	if type(nPosX) ~= "number" or nPosX%1 ~= 0  or nPosX < 0 then
		Sys_SaveAbnormalLog("函数 Npc_MoveNpcPos 中 [nNpcId]:[".. nNpcId .."] 的 nPosX 只能传大于0的整数")
		return
	end

	if type(nPosY) ~= "number" or nPosY%1 ~= 0  or nPosY < 0 then
		Sys_SaveAbnormalLog("函数 Npc_MoveNpcPos 中 [nNpcId]:[".. nNpcId .."] 的 nPosY 只能传大于0的整数")
		return
	end

	if NpcMove(nNpcId,nMapId,nPosX,nPosY) then
		NpcPosition_Set(nNpcId,nMapId,nPosX,nPosY)
		return true
	else
		return false
	end
end

--删除指定的NPC,参数说明：idNpc指要删除的NPCID，注意：删除后，不要再对此NPC进行操作。
--删除不成功，可以使用Del_DynaNpc删除
--NpcDelByID(OBJID idNpc)
function Npc_DelDynaByID(nDynaNpcId)
	if nDynaNpcId == nil then
		nDynaNpcId = 0
	elseif type(nDynaNpcId) ~= "number" or nDynaNpcId%1 ~= 0 or nDynaNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_DelDynaByID 的 [nDynaNpcId]:[".. nDynaNpcId .."] 只能为整型并且大于等于0")
		return
	end

	return NpcDelByID(nDynaNpcId)
end

--2011，删除指定NPC。限动态NPC。注意：删除后，不要再对此类NPC进行操作。param="idMap field data"。Field=’id’（按照id）、’name’（按照npc的名字）、’type’（类型）；data=要统计的id、名字或类型值。
--bool Npc_DeleteSynNPC(OBJID idMap, const char* pszField, const char* pszData);
function Npc_DelDynaNpc(nMapId,sField,sData)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_DelDynaNpc 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end

	if (sField == "id" or sField == "name" or sField == "type") then
	
	else
		Sys_SaveAbnormalLog("函数 Npc_DelDynaNpc 中 [nMapId]:[".. nMapId .."] 的 sField 只能传id、name、type")
		return
	end

	if sData == nil or sData == "" then
		Sys_SaveAbnormalLog("函数 Npc_DelDynaNpc 中 [nMapId]:[".. nMapId .."] 的 sData 不能为空")
		return
	end

	return DeleteSynNPC(nMapId,sField,sData)
end

--2007,创建一个NPC。param="name type sort lookface ownertype ownerid mapid posx posy life base linkid  task0 task0 ... task7  data0 data1 data2 data3 datastr"。至少9个参数。
function Npc_CreateDynaNpc(sName,nType,nSort,nLookFace,nOwnerType,nOwnerId,nMapId,nPosX,nPosY,nLife,nBase,nLinkid,nTask0,nTask1,nTask2,nTask3,nTask4,nTask5,nTask6,nTask7,nData0,nData1,nData2,nData3,sDataStr,idserver,nDefence,nMagicDef,nNewDefence,nAntiCrit,nSave,nToughness,nRefrenceDamage)
	if type(sName) ~= "string" or sName == "" then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 只能传字符型值并且不为空字符串")
		return
	end

	if type(nType) ~= "number" or nType%1 ~= 0  or nType < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nType 只能传大于0的整数")
		return
	end

	if type(nSort) ~= "number" or nSort%1 ~= 0  or nSort < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nSort 只能传大于0的整数")
		return
	end

	if type(nLookFace) ~= "number" or nLookFace%1 ~= 0  or nLookFace < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nLookFace 只能传大于0的整数")
		return
	end

	if nOwnerType == nil then
		nOwnerType = 0
	elseif type(nOwnerType) ~= "number" or nOwnerType%1 ~= 0 or nOwnerType < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nOwnerType 只能为整型并且大于等于0")
		return
	end

	if nOwnerId == nil then
		nOwnerId = 0
	elseif type(nOwnerId) ~= "number" or nOwnerId%1 ~= 0 or nOwnerId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的  nOwnerId 只能为整型并且大于等于0")
		return
	end

	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nMapId 只能传大于0的整数")
		return
	end

	if type(nPosX) ~= "number" or nPosX%1 ~= 0  or nPosX < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nPosX 只能传大于0的整数")
		return
	end

	if type(nPosY) ~= "number" or nPosY%1 ~= 0  or nPosY < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nPosY 只能传大于0的整数")
		return
	end

	if nLife == nil then
		nLife = 0
	elseif type(nLife) ~= "number" or nLife%1 ~= 0 or nLife < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nLife 只能为整型并且大于等于0")
		return
	end

	if nBase == nil then
		nBase = 0
	elseif type(nBase) ~= "number" or nBase%1 ~= 0 or nBase < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nBase 只能为整型并且大于等于0")
		return
	end

	if nLinkid == nil then
		nLinkid = 0
	elseif type(nLinkid) ~= "number" or nLinkid%1 ~= 0 or nLinkid < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nLinkid 只能为整型并且大于等于0")
		return
	end

	if nTask0 == nil then
		nTask0 = 0
	elseif type(nTask0) ~= "number" or nTask0%1 ~= 0 or nTask0 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nTask0 只能为整型并且大于等于0")
		return
	end

	if nTask1 == nil then
		nTask1 = 0
	elseif type(nTask1) ~= "number" or nTask1%1 ~= 0 or nTask1 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nTask1 只能为整型并且大于等于0")
		return
	end

	if nTask2 == nil then
		nTask2 = 0
	elseif type(nTask2) ~= "number" or nTask2%1 ~= 0 or nTask2 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nTask2 只能为整型并且大于等于0")
		return
	end

	if nTask3 == nil then
		nTask3 = 0
	elseif type(nTask3) ~= "number" or nTask3%1 ~= 0 or nTask3 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nTask3 只能为整型并且大于等于0")
		return
	end

	if nTask4 == nil then
		nTask4 = 0
	elseif type(nTask4) ~= "number" or nTask4%1 ~= 0 or nTask4 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nTask4 只能为整型并且大于等于0")
		return
	end

	if nTask5 == nil then
		nTask5 = 0
	elseif type(nTask5) ~= "number" or nTask5%1 ~= 0 or nTask5 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nTask5 只能为整型并且大于等于0")
		return
	end

	if nTask6 == nil then
		nTask6 = 0
	elseif type(nTask6) ~= "number" or nTask6%1 ~= 0 or nTask6 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nTask6 只能为整型并且大于等于0")
		return
	end

	if nTask7 == nil then
		nTask7 = 0
	elseif type(nTask7) ~= "number" or nTask7%1 ~= 0 or nTask7 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nTask7 只能为整型并且大于等于0")
		return
	end

	if nData0 == nil then
		nData0 = 0
	elseif type(nData0) ~= "number" or nData0%1 ~= 0 or nData0 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nData0 只能为整型并且大于等于0")
		return
	end

	if nData1 == nil then
		nData1 = 0
	elseif type(nData1) ~= "number" or nData1%1 ~= 0 or nData1 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nData1 只能为整型并且大于等于0")
		return
	end

	if nData2 == nil then
		nData2 = 0
	elseif type(nData2) ~= "number" or nData2%1 ~= 0 or nData2 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nData2 只能为整型并且大于等于0")
		return
	end

	if nData3 == nil then
		nData3 = 0
	elseif type(nData3) ~= "number" or nData3%1 ~= 0 or nData3 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nData3 只能为整型并且大于等于0")
		return
	end
	
	if idserver == nil then
		idserver = 0
	elseif type(idserver) ~= "number" or idserver%1 ~= 0 or idserver < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 idserver 只能为整型并且大于等于0")
		return
	end

	if nDefence == nil then
		nDefence = 0
	elseif type(nDefence) ~= "number" or nDefence%1 ~= 0 or nDefence < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nDefence 只能为整型并且大于等于0")
		return
	end

	if nMagicDef == nil then
		nMagicDef = 0
	elseif type(nMagicDef) ~= "number" or nMagicDef%1 ~= 0 or nMagicDef < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nMagicDef 只能为整型并且大于等于0")
		return
	end

	if nNewDefence == nil then
		nNewDefence = 0
	elseif type(nNewDefence) ~= "number" or nNewDefence%1 ~= 0 or nNewDefence < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nNewDefence 只能为整型并且大于等于0")
		return
	end

	if nAntiCrit == nil then
		nAntiCrit = 0
	elseif type(nAntiCrit) ~= "number" or nAntiCrit%1 ~= 0 or nAntiCrit < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nAntiCrit 只能为整型并且大于等于0")
		return
	end

	if nSave == nil then
		nSave = 1
	elseif type(nSave) ~= "number" or (nSave ~= 1 and nSave ~= 0) then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nSave 只能为0或者1")
		return
	end

	if nToughness == nil then
		nToughness = 0
	elseif type(nToughness) ~= "number" or nToughness%1 ~= 0 or nToughness < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nToughness 只能为整型并且大于等于0")
		return
	end

	if nRefrenceDamage == nil then
		nRefrenceDamage = 0
	elseif type(nRefrenceDamage) ~= "number" or nRefrenceDamage%1 ~= 0 or nRefrenceDamage < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 中 [sName]:[".. sName .."] 的 nRefrenceDamage 只能为整型并且大于等于0")
		return
	end

	sDataStr = tostring(sDataStr) or "null"
	
	-- local nNowUserId = Get_UserId() or nOwnerId
	if CreateNewNPC(sName,nType,nSort,nLookFace,nOwnerType,nOwnerId,nMapId,nPosX,nPosY,nLife,nBase,nLinkid,nTask0,nTask1,nTask2,nTask3,nTask4,nTask5,nTask6,nTask7,nData0,nData1,nData2,nData3,sDataStr,idserver,nDefence,nMagicDef,nNewDefence,nAntiCrit,nSave,nToughness,nRefrenceDamage) then
		return true
	else
		Sys_SaveAbnormalLog("函数 Npc_CreateDynaNpc 创建NPC名字为：" .. sName .."失败。")
		return false
	end
end

-- //激活帮派传送NPC，仅用于帮派传送NPC，必须是最后一条ACTION，后面不能再接其它ACTION。注意：成功时会重置NPC的OWNER_ID(请先将OWNER_ID置为0)，同时自动删除另一个传送NPC；失败时该传送NPC将自动删除。
-- //参数说明：nTransNpcId为“主传送NPC”的ID，nMapId为要传送的地图ID，nPosX为要传送的X坐标, nPosY为要传送的Y坐标。
function Npc_ActiveSynTrans(nTransNpcId,nMapId,nPosX,nPoxY)
	if type(nTransNpcId) ~= "number" or nTransNpcId%1 ~= 0 or nTransNpcId <= 0 then
		Sys_SaveAbnormalLog("函数 Sys_ActiveSynTransNpc 参数 [nTransNpcId]:[".. nTransNpcId .."] 只能传大于0的整数")
		return
	end
	
	if type(nMapId) ~= "number" or nMapId%1 ~= 0 or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Sys_ActiveSynTransNpc 中 [nTransNpcId]:[".. nTransNpcId .."] 的参数 nMapId 只能传大于0的整数")
		return
	end
	
	if type(nPosX) ~= "number" or nPosX%1 ~= 0 or nPosX < 0 then
		Sys_SaveAbnormalLog("函数 Sys_ActiveSynTransNpc 中 [nTransNpcId]:[".. nTransNpcId .."] 的参数 nPosX 只能传大等于0的整数")
		return
	end
	
	if type(nPoxY) ~= "number" or nPoxY%1 ~= 0 or nPoxY < 0 then
		Sys_SaveAbnormalLog("函数 Sys_ActiveSynTransNpc 中 [nTransNpcId]:[".. nTransNpcId .."] 的参数 nPoxY 只能传大等于0的整数")
		return
	end
	
	return ActiveSynTransNpc(nTransNpcId,nMapId,nPosX,nPoxY)
end

-- //将指定地图上指定类型的NPC移到指定的位置上去，参数说明：sParam支持多个参数，具体参数配置参照 actiontype = 223的 action配置。
function Npc_ChangePos(sParam)
	if type(sParam) ~= "string" then
		Sys_SaveAbnormalLog("函数 Npc_ChangePos 参数 [sParam]:[".. sParam .."] 只能传字符")
		return
	end
	
	return ChangeNpcPos(sParam)
end


-- //NPC施发一个魔法效果，参数说明：idSource施法者，nMgcType魔法类型，nMgcLevel魔法等级，idTarget施法目标，nData魔法伤害
function Npc_MgcEffect(nSourceId,nMgcType,nMgcLevel,nTargetId,nData)
	if type(nSourceId) ~= "number" or nSourceId%1 ~= 0 or nSourceId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_MgcEffect 参数 [nSourceId,nMgcType]:[".. nSourceId ..",".. nMgcType .."] 的 nSourceId只能传大等于0的整数")
		return
	end
	
	if type(nMgcType) ~= "number" or nMgcType%1 ~= 0 or nMgcType < 0 then
		Sys_SaveAbnormalLog("函数 Npc_MgcEffect 参数 [nSourceId,nMgcType]:[".. nSourceId ..",".. nMgcType .."] 的 nMgcType 只能传大等于0的整数")
		return
	end
	
	if type(nMgcLevel) ~= "number" or nMgcLevel%1 ~= 0 or nMgcLevel < 0 then
		Sys_SaveAbnormalLog("函数 Npc_MgcEffect 参数 [nSourceId,nMgcType]:[".. nSourceId ..",".. nMgcType .."] 的 nMgcLevel 只能传大等于0的整数")
		return
	end
	
	if type(nTargetId) ~= "number" or nTargetId%1 ~= 0 or nTargetId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_MgcEffect 参数 [nSourceId,nMgcType]:[".. nSourceId ..",".. nMgcType .."] 的 nTargetId 只能传大等于0的整数")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Npc_MgcEffect 参数 [nSourceId,nMgcType]:[".. nSourceId ..",".. nMgcType .."] 的 nData 只能传大等于0的整数")
		return
	end
	
	return NpcMgcEffect(nSourceId,nMgcType,nMgcLevel,nTargetId,nData)
end

-- //NPC施发一个地效魔法效果，参数说明：idSource施法者，nMgcType魔法类型，nMgcLevel魔法等级，nPosX施法的X坐标, nPosY施法的Y坐标，idTarget施法目标，nData魔法伤害
function Npc_GroundMgcEffect(nSourceId,nMgcType,nMgcLevel,nPosX,nPosY,nTargetId,nData)
	if type(nSourceId) ~= "number" or nSourceId%1 ~= 0 or nSourceId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_GroundMgcEffect 参数 [nSourceId,nMgcType]:[".. nSourceId ..",".. nMgcType .."] 的 nSourceId 只能传大等于0的整数")
		return
	end
	
	if type(nMgcType) ~= "number" or nMgcType%1 ~= 0 or nMgcType < 0 then
		Sys_SaveAbnormalLog("函数 Npc_GroundMgcEffect 参数 [nSourceId,nMgcType]:[".. nSourceId ..",".. nMgcType .."] 的 nMgcType 只能传大等于0的整数")
		return
	end
	
	if type(nMgcLevel) ~= "number" or nMgcLevel%1 ~= 0 or nMgcLevel < 0 then
		Sys_SaveAbnormalLog("函数 Npc_GroundMgcEffect 参数 [nSourceId,nMgcType]:[".. nSourceId ..",".. nMgcType .."] 的 nMgcLevel 只能传大等于0的整数")
		return
	end
	
	if type(nPosX) ~= "number" or nPosX%1 ~= 0 or nPosX < 0 then
		Sys_SaveAbnormalLog("函数 Npc_GroundMgcEffect 参数 [nSourceId,nMgcType]:[".. nSourceId ..",".. nMgcType .."] 的 nPosX 只能传大等于0的整数")
		return
	end
	
	if type(nPosY) ~= "number" or nPosY%1 ~= 0 or nPosY < 0 then
		Sys_SaveAbnormalLog("函数 Npc_GroundMgcEffect 参数 [nSourceId,nMgcType]:[".. nSourceId ..",".. nMgcType .."] 的 nPosY 只能传大等于0的整数")
		return
	end
	
	if type(nTargetId) ~= "number" or nTargetId%1 ~= 0 or nTargetId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_GroundMgcEffect 参数 [nSourceId,nMgcType]:[".. nSourceId ..",".. nMgcType .."] 的 nTargetId 只能传大等于0的整数")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 Npc_GroundMgcEffect 参数 [nSourceId,nMgcType]:[".. nSourceId ..",".. nMgcType .."] 的 nData 只能传大等于0的整数")
		return
	end
	
	return NpcGroundMgcEffect(nSourceId,nMgcType,nMgcLevel,nPosX,nPosY,nTargetId,nData)
end


---------------------------------2015.03.02-----------------------------------
--增加type = 401 与 403 创建家具npc的 封装函数

--家具接口封装 -- 401
--//通知客户端放置一个NPC, 参1：idUser指放置NPC的玩家ID，参2：nRegion表示cq_region的type, 参3：nType表示NPC类型, 参4：nLookFace表示NPC的外形, 参5：szCallFunc表示放置完后要调用的LUA函数
--this->LuaScript()->ExportCFunc(fn_RequestLayNpcByItem,		"RequestLayNpcByItem");
--401	
function Npc_RequestLayNpcByItem(sCallFunc,nType,nLookFace,nRegion,nUserId)

	if sCallFunc == nil then
		sCallFunc = "NULL"
	elseif type(sCallFunc) ~= "string"  then
		Sys_SaveAbnormalLog("函数 Npc_RequestLayNpcByItem 的 [sCallFunc]:[".. sCallFunc .."] 只能为字符串类型")
		return
	end
	
	if type(nType) ~= "number" or nType%1 ~= 0  or nType < 0 then
		Sys_SaveAbnormalLog("函数 Npc_RequestLayNpcByItem 的 [sCallFunc]:[".. sCallFunc .."] 的 nType 只能传大于0的整")
		return
	end
	
	if type(nLookFace) ~= "number" or nLookFace%1 ~= 0  or nLookFace < 0 then
		Sys_SaveAbnormalLog("函数 Npc_RequestLayNpcByItem 中 [sCallFunc]:[".. sCallFunc .."] 的 nLookFace 只能传大于0的整数")
		return
	end
	
	if nRegion == nil then
		nRegion = 0
	elseif type(nRegion) ~= "number" or nRegion%1 ~= 0  or nRegion < 0 then
		Sys_SaveAbnormalLog("函数 Npc_RequestLayNpcByItem 中 [sCallFunc]:[".. sCallFunc .."] 的 nRegion 只能传大于等于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0  or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_RequestLayNpcByItem 中 [sCallFunc]:[".. sCallFunc .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return RequestLayNpcByItem(nUserId,nRegion,nType,nLookFace,"</F>" .. sCallFunc)
end

--403
-- // 创建一个NPC，创建成功后，该NPC即是当前任务NPC，owner_id会自动设置为帮派ID或玩家ID。
-- // 参1：name，参2：type，参3：sort，参4：lookface，参5：ownertype，参6：life，参7：nRegionType，参8：base，参9：linkid，参10-参17：task0 - task7
-- // 参18-参21：Data0 - Data3，参22：szData。靶子的等级放在data3中。
-- this->LuaScript()->ExportCFunc(fn_LayNpcByItem,				"LayNpcByItem");	
	
--403

function Npc_CreatLayNpcByItem(sName,nType,nSort,nLookFace,nOwnertype,nLife,nRegionType,nBase,nLinkid,nTask0,nTask1,nTask2,nTask3,nTask4,nTask5,nTask6,nTask7,nData0,nData1,nData2,nData3,sDataStr,nDefence,nMagicDef,nNewDefence,nAntiCrit,nSave)
	if type(sName) ~= "string" or sName == "" then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 只能传字符型值并且不为空字符串")
		return
	end

	if type(nType) ~= "number" or nType%1 ~= 0  or nType < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nType 只能传大于0的整数")
		return
	end

	if type(nSort) ~= "number" or nSort%1 ~= 0  or nSort < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nSort 只能传大于0的整数")
		return
	end

	if type(nLookFace) ~= "number" or nLookFace%1 ~= 0  or nLookFace < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nLookFace 只能传大于0的整数")
		return
	end

	if nOwnerType == nil then
		nOwnerType = 0
	elseif type(nOwnerType) ~= "number" or nOwnerType%1 ~= 0 or nOwnerType < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nOwnerType 只能为整型并且大于等于0")
		return
	end


	if nLife == nil then
		nLife = 0
	elseif type(nLife) ~= "number" or nLife%1 ~= 0 or nLife < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nLife 只能为整型并且大于等于0")
		return
	end
	
	if nRegionType == nil then
		nRegionType = 0
	elseif type(nRegionType) ~= "number" or nRegionType%1 ~= 0 or nRegionType < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nRegionType 只能为整型并且大于等于0")
		return
	end
	
	if nBase == nil then
		nBase = 0
	elseif type(nBase) ~= "number" or nBase%1 ~= 0 or nBase < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nBase 只能为整型并且大于等于0")
		return
	end

	if nLinkid == nil then
		nLinkid = 0
	elseif type(nLinkid) ~= "number" or nLinkid%1 ~= 0 or nLinkid < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nLinkid 只能为整型并且大于等于0")
		return
	end

	if nTask0 == nil then
		nTask0 = 0
	elseif type(nTask0) ~= "number" or nTask0%1 ~= 0 or nTask0 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nTask0 只能为整型并且大于等于0")
		return
	end

	if nTask1 == nil then
		nTask1 = 0
	elseif type(nTask1) ~= "number" or nTask1%1 ~= 0 or nTask1 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nTask1 只能为整型并且大于等于0")
		return
	end

	if nTask2 == nil then
		nTask2 = 0
	elseif type(nTask2) ~= "number" or nTask2%1 ~= 0 or nTask2 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nTask2 只能为整型并且大于等于0")
		return
	end

	if nTask3 == nil then
		nTask3 = 0
	elseif type(nTask3) ~= "number" or nTask3%1 ~= 0 or nTask3 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nTask3 只能为整型并且大于等于0")
		return
	end

	if nTask4 == nil then
		nTask4 = 0
	elseif type(nTask4) ~= "number" or nTask4%1 ~= 0 or nTask4 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nTask4 只能为整型并且大于等于0")
		return
	end

	if nTask5 == nil then
		nTask5 = 0
	elseif type(nTask5) ~= "number" or nTask5%1 ~= 0 or nTask5 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nTask5 只能为整型并且大于等于0")
		return
	end

	if nTask6 == nil then
		nTask6 = 0
	elseif type(nTask6) ~= "number" or nTask6%1 ~= 0 or nTask6 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nTask6 只能为整型并且大于等于0")
		return
	end

	if nTask7 == nil then
		nTask7 = 0
	elseif type(nTask7) ~= "number" or nTask7%1 ~= 0 or nTask7 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nTask7 只能为整型并且大于等于0")
		return
	end

	if nData0 == nil then
		nData0 = 0
	elseif type(nData0) ~= "number" or nData0%1 ~= 0 or nData0 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nData0 只能为整型并且大于等于0")
		return
	end

	if nData1 == nil then
		nData1 = 0
	elseif type(nData1) ~= "number" or nData1%1 ~= 0 or nData1 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nData1 只能为整型并且大于等于0")
		return
	end

	if nData2 == nil then
		nData2 = 0
	elseif type(nData2) ~= "number" or nData2%1 ~= 0 or nData2 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nData2 只能为整型并且大于等于0")
		return
	end

	if nData3 == nil then
		nData3 = 0
	elseif type(nData3) ~= "number" or nData3%1 ~= 0 or nData3 < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nData3 只能为整型并且大于等于0")
		return
	end

	if nDefence == nil then
		nDefence = 0
	elseif type(nDefence) ~= "number" or nDefence%1 ~= 0 or nDefence < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nDefence 只能为整型并且大于等于0")
		return
	end

	if nMagicDef == nil then
		nMagicDef = 0
	elseif type(nMagicDef) ~= "number" or nMagicDef%1 ~= 0 or nMagicDef < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nMagicDef 只能为整型并且大于等于0")
		return
	end

	if nNewDefence == nil then
		nNewDefence = 0
	elseif type(nNewDefence) ~= "number" or nNewDefence%1 ~= 0 or nNewDefence < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nNewDefence 只能为整型并且大于等于0")
		return
	end

	if nAntiCrit == nil then
		nAntiCrit = 0
	elseif type(nAntiCrit) ~= "number" or nAntiCrit%1 ~= 0 or nAntiCrit < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nAntiCrit 只能为整型并且大于等于0")
		return
	end

	if nSave == nil then
		nSave = 1
	elseif type(nSave) ~= "number" or (nSave ~= 1 and nSave ~= 0) then
		Sys_SaveAbnormalLog("函数 Npc_CreatLayNpcByItem 中 [sName]:[".. sName .."] 的 nSave 只能为0或者1")
		return
	end

	sDataStr = tostring(sDataStr) or "null"
	return LayNpcByItem(sName,nType,nSort,nLookFace,nOwnertype,nLife,nRegionType,nBase,nLinkid,nTask0,nTask1,nTask2,nTask3,nTask4,nTask5,nTask6,nTask7,nData0,nData1,nData2,nData3,sDataStr,nDefence,nMagicDef,nNewDefence,nAntiCrit,nSave)
end


------2015.10.19
--// lua接口
--// 检查玩家是否与NPC同一个阵营, 参1: idUser玩家ID, 参2：idNpc
--bool NpcCheckUserServerID(OBJID idUser, OBJID idNpc);


function Npc_CheckUserServerID(nNpcId,nUserId)

	if nNpcId == nil then
		nNpcId = 0
	elseif type(nNpcId) ~= "number" or nNpcId%1 ~= 0 or nNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CheckUserServerID 的 [nNpcId]:[".. nNpcId .."] 只能为整型并且大于等于0")
		return
	end

	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_CheckUserServerID 的 [nNpcId]:[".. nNpcId .."] 的 nUserId 只能为整型并且大于等于0")
		return
	end
	
	return NpcCheckUserServerID(nUserId,nNpcId)
end


--------201511.23
-- // 设置Npc延时执行的函数, 参1:idNpc, 参2:unSecs 表示延时执行时间(单位秒), 参3:pszLuaFunc表示延时执行的lua函数
-- bool SetNpcDieDelayFunc(OBJID idNpc, UINT unSecs, const char* pszLuaFunc);
-- 备注：需要死亡后才能触发使用。
-- cq_dynanpc表里的linkid需填上触发的action id。需为动态NPC，sort字段需能与16进行&操作。如果有掩码sort需要与4进行&操作。

function Npc_SetDieDelayFunc(nSecs,sFunc,nNpcId)
	if type(nSecs) ~= "number" or nSecs%1 ~= 0 or nSecs <= 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDieDelayFunc 中 [nNpcId]:[".. nNpcId .."] 的 nSecs 只能为整型并且大于0")
		return
	end
	
	if type(sFunc) ~= "string" then
		Sys_SaveAbnormalLog("函数 Npc_SetDieDelayFunc 中 [nNpcId]:[".. nNpcId .."] 的 sFunc 只能传字符")
		return
	end
	
	if nNpcId == nil then
		nNpcId = 0
	elseif type(nNpcId) ~= "number" or nNpcId%1 ~= 0 or nNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_SetDieDelayFunc 的 [nNpcId]:[".. nNpcId .."] 只能为整型并且大于等于0")
		return
	end
	
	return SetNpcDieDelayFunc(nNpcId,nSecs,"</F>" .. sFunc)
end

-----2016.5.13
-- 新增cq_npc表的sort定义：sort=256，可改名NPC
-- 备注：只有cq_npc表才能改名，cq_dynanpc表不可改名，因为id是动态生成的。至于跨服玩家是否可改名，由任务自己判断。
-- lua接口：
-- // 修改NPC的名字, 参1：idNpc, 参2：命名. 成功返回true, 失败返回false.
-- bool NpcChgName(idNpc, pszName);

function Npc_ChgName(sName,nNpcId)
	if type(sName) ~= "string" then
		Sys_SaveAbnormalLog("函数 Npc_ChgName 中 [nNpcId]:[".. nNpcId .."] 的 sName 只能传字符")
		return
	end
	
	if nNpcId == nil then
		nNpcId = 0
	elseif type(nNpcId) ~= "number" or nNpcId%1 ~= 0 or nNpcId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_ChgName 的 [nNpcId]:[".. nNpcId .."] 只能为整型并且大于等于0")
		return
	end
	
	return NpcChgName(nNpcId,sName)
end


-- #lua接口：
-- #// 通知客户端打开网页带参数扩展接口，参数1：玩家id，参数2：网页url。成功返回true，失败返回false。
-- #bool OpenWebPageEx(OBJID idUser, const char* pszUrl);


function Npc_OpenWebUrl(sUrl,nUserId)
	if type(sUrl) ~= "string" then
		Sys_SaveAbnormalLog("函数 Npc_OpenWebUrl 中 [sUrl]: sUrl 只能传字符")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Npc_OpenWebUrl 的 [nUserId]:只能为整型并且大于等于0")
		return
	end
	
	return OpenWebPageEx(nUserId,sUrl)
end
