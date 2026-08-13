----------------------------------------------------------------------------
--Name:		[征服][公用函数]地图函数.lua
--Purpose:	地图函数接口
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
-- 地图函数命名前缀词：Map_
--例子：
--(fn_CountMapUser, "CountMapUser");//指定地图中的玩家人数,参1:地图ID, 参2:是否必须存活的玩家,参照 ACTION_MAP_MAPUSER  = 302

--function Map_CountMapUser(nMapId,nUserSurvival)
--
--end

------------------------------------------------------------------------------

--//ACTION_MAP_FIREWORKS 314,
--bool MapFireWorks(OBJID idUser);
--函数说明：	放焰火
--参数说明：	玩家ID
--返回值： 布尔值，成功 true，失败 false
function Map_FireWorks(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Map_FireWorks 第一个参数 nUserId 为整型并且大于等于0")
		return
	end
	
	return MapFireWorks(nUserId)
end

	
--(fn_CountMapUser, "CountMapUser");		//指定地图中的玩家人数				参1:地图ID, 参2:是否必须存活的玩家, 										参照 ACTION_MAP_MAPUSER  = 302
--函数说明：	指定地图中的玩家人数
--参数说明：	参1:地图ID, 参2:是否必须存活的玩家, 参数2只能是0或1
--返回值： 返回地图中的玩家人数
function Map_GetUserNum(nMapId, nUserSurvival)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0 or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_GetUserNum 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end

	if type(nUserSurvival) ~= "number" or (nUserSurvival ~= 0 and nUserSurvival ~= 1) then
		Sys_SaveAbnormalLog("函数 Map_GetUserNum 中 [nMapId]:[".. nMapId .."] 的 nUserSurvival 的值只能为0或1")
		return
	end
	
	return CountMapUser(nMapId,nUserSurvival)
end

--(fn_BroadcastMapMsg, "BroadcastMapMsg");	//地图广播消息						参1:地图ID, 参2:内容,  														参照 ACTION_MAP_BROCASTMSG  = 303
--函数说明：	地图广播消息
--参数说明：	参1:地图ID, 参2:内容
--返回值： 布尔值，成功 true，失败 false
function Map_SendBroadcastMsg(nMapId, sMsg)
	if type(nMapId) ~= "number"  or nMapId%1 ~= 0 or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_SendBroadcastMsg 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(sMsg) ~= "string" then
		Sys_SaveAbnormalLog("函数 Map_SendBroadcastMsg 中 [nMapId]:[".. nMapId .."] 的 sMsg 只能为字符串类型")
		return
	end
	
	return BroadcastMapMsg(nMapId, sMsg)
end

--(fn_DropMapItem, "DropMapItem");		//地图指定坐标产生指定物品			参1:地图ID, 参2:X坐标, 参3:Y坐标, 参4:物品类型ID,							参照 ACTION_MAP_DROPITEM = 304
--函数说明：	地图指定坐标产生指定物品
--参数说明：	参1:地图ID, 参2:X坐标, 参3:Y坐标, 参4:物品类型ID,
--返回值： 布尔值，成功 true，失败 false
function Map_DropItem(nMapId, nPosX, nPosY, nItemId)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_DropItem 中 [nMapId]:[".. nMapId .."] 的 nMapId 只能传大于0的整数")
		return
	end
	
	if type(nPosX) ~= "number" or nPosX%1 ~= 0  or nPosX < 0 then
		Sys_SaveAbnormalLog("函数 Map_DropItem 中 [nMapId]:[".. nMapId .."] 的 nPosX 只能传大于0的整数")
		return
	end
	
	if type(nPosY) ~= "number" or nPosY%1 ~= 0  or nPosY < 0 then
		Sys_SaveAbnormalLog("函数 Map_DropItem 中 [nMapId]:[".. nMapId .."] 的 nPosY 只能传大于0的整数")
		return
	end
	
	if type(nItemId) ~= "number" or nItemId%1 ~= 0  or nItemId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_DropItem 中 [nMapId]:[".. nMapId .."] 的 nItemId 只能传大于0的整数")
		return
	end
	
	return DropMapItem(nMapId, nPosX, nPosY, nItemId)
end

--(fn_CountMapMonster, "CountMapMonster");	//指定地图或当前地图的某区域内怪物数量 参1:地图ID, 参2:怪物类型ID, 参3:X坐标, 参4:Y坐标, 参5:X格子数, 参6:Y格子数   参照 ACTION_MAP_REGION_MONSTER= 307
--函数说明：	检查指定地图或当前地图的某区域内怪物数量
--参数说明：	参1:地图ID, 参2:怪物类型ID, 参3:X坐标, 参4:Y坐标, 参5:X格子数, 参6:Y格子数
--返回值： 返回指定地图或当前地图的某区域内怪物数量
-- function Map_GetMonsterNum(nMapId, nMonsterId, nPosX, nPosY, nCellx, nCelly)
	-- if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId <= 0 then
		-- Sys_SaveAbnormalLog("函数 Map_GetMonsterNum 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMapId .."] 的 nMapId 只能传大于0的整数")
		-- return
	-- end
	
	-- if type(nMonsterId) ~= "number" or nMonsterId%1 ~= 0  or nMonsterId < 0 then
		-- Sys_SaveAbnormalLog("函数 Map_GetMonsterNum 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMapId .."] 的 nMonsterId 只能传大于0的整数")
		-- return
	-- end
	
	-- if type(nPosX) ~= "number" or nPosX%1 ~= 0   or nPosX < 0 then
		-- Sys_SaveAbnormalLog("函数 Map_GetMonsterNum 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMapId .."] 的 nPosX 只能传大于0的整数")
		-- return
	-- end
	
	-- if  type(nPosY) ~= "number" or nPosY%1 ~= 0  or nPosY < 0 then
		-- Sys_SaveAbnormalLog("函数 Map_GetMonsterNum 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMapId .."] 的 nPosY 只能传大于0的整数")
		-- return
	-- end
	
	-- if type(nCellx) ~= "number" or nCellx%1 ~= 0   or nCellx < 0 then
		-- Sys_SaveAbnormalLog("函数 Map_GetMonsterNum 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMapId .."] 的 nCellx 只能传大于0的整数")
		-- return
	-- end
	
	-- if type(nCelly) ~= "number" or nCelly%1 ~= 0  or nCelly < 0 then
		-- Sys_SaveAbnormalLog("函数 Map_GetMonsterNum 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMapId .."] 的 nCelly 只能传大于0的整数")
		-- return
	-- end
	
	-- return CountMapMonster(nMapId, nMonsterId, nPosX, nPosY, nCellx, nCelly)
-- end

--(fn_DropMultiItems, "DropMultiItems");		//地图批量产生指定物品				参1:地图ID, 参2:物品类型ID, 参3:X坐标, 参4:Y坐标, 参5:X格子数, 参6:Y格子数, 参7:数量, 参8:存在时间   参照 ACTION_MAP_DROP_MULTI_ITEMS = 308
--函数说明：	地图批量产生指定物品
--参数说明：	参1:地图ID, 参2:物品类型ID, 参3:X坐标, 参4:Y坐标, 参5:X格子数, 参6:Y格子数, 参7:数量, 参8:存在时间(单位是秒)
--返回值： 布尔值，成功 true，失败 false
function Map_DropMultiItems(nMapId, nItemId, nPosX, nPosY, nCellx, nCelly, nItemNum, nExistTime)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_DropMultiItems 中 [nMapId,nItemId]:[".. nMapId ..",".. nItemId .."] 的 nMapId 只能传大于0的整数")
		return
	end
	
	if type(nItemId) ~= "number" or nItemId%1 ~= 0  or nItemId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_DropMultiItems 中 [nMapId,nItemId]:[".. nMapId ..",".. nItemId .."] 的 nItemId 只能传大于0的整数")
		return
	end
	
	if type(nPosX) ~= "number" or nPosX%1 ~= 0   or nPosX < 0 then
		Sys_SaveAbnormalLog("函数 Map_DropMultiItems 中 [nMapId,nItemId]:[".. nMapId ..",".. nItemId .."] 的 nPosX 只能传大于0的整数")
		return
	end
	
	if  type(nPosY) ~= "number" or nPosY%1 ~= 0  or nPosY < 0 then
		Sys_SaveAbnormalLog("函数 Map_DropMultiItems 中 [nMapId,nItemId]:[".. nMapId ..",".. nItemId .."] 的 nPosY 只能传大于0的整数")
		return
	end
	
	if type(nCellx) ~= "number" or nCellx%1 ~= 0   or nCellx < 0 then
		Sys_SaveAbnormalLog("函数 Map_DropMultiItems 中 [nMapId,nItemId]:[".. nMapId ..",".. nItemId .."] 的 nCellx 只能传大于0的整数")
		return
	end
	
	if type(nCelly) ~= "number" or nCelly%1 ~= 0  or nCelly < 0 then
		Sys_SaveAbnormalLog("函数 Map_DropMultiItems 中 [nMapId,nItemId]:[".. nMapId ..",".. nItemId .."] 的 nCelly 只能传大于0的整数")
		return
	end
	
	if type(nItemNum) ~= "number" or nItemNum%1 ~= 0  or nItemNum < 0 then
		Sys_SaveAbnormalLog("函数 Map_DropMultiItems 中 [nMapId,nItemId]:[".. nMapId ..",".. nItemId .."] 的 nItemNum 只能传大于0的整数")
		return
	end
	
	if type(nExistTime) ~= "number" or nExistTime%1 ~= 0  or nExistTime < 0 then
		Sys_SaveAbnormalLog("函数 Map_DropMultiItems 中 [nMapId,nItemId]:[".. nMapId ..",".. nItemId .."] 的 nExistTime 只能传大于0的整数")
		return
	end
	
	return DropMultiItems(nMapId, nItemId, nPosX, nPosY, nCellx, nCelly, nItemNum, nExistTime)
end

--(fn_MapEffect, "MapEffect");			//在指定地图的指定地点显示地图特效	参1:地图ID, 参2:X坐标, 参3:Y坐标, 参4:特效									参照 ACTION_MAP_MAPEFFECT = 312
--函数说明：	在指定地图的指定地点显示地图特效
--参数说明：	参1:地图ID, 参2:X坐标, 参3:Y坐标, 参4:特效，参数5：传入0为添加光效，传入1为删除光效
--返回值： 布尔值，成功 true，失败 false
function Map_Effect(nMapId, nPosX, nPosY, sEffectName,nIsDel)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_Effect 中 [nMapId,sEffectName]:[".. nMapId ..",".. sEffectName .."] 的 nMapId 只能传大于0的整数")
		return
	end
	
	if type(nPosX) ~= "number" or nPosX%1 ~= 0   or nPosX < 0 then
		Sys_SaveAbnormalLog("函数 Map_Effect 中 [nMapId,sEffectName]:[".. nMapId ..",".. sEffectName .."] 的 nPosX 只能传大于0的整数")
		return
	end
	
	if  type(nPosY) ~= "number" or nPosY%1 ~= 0  or nPosY < 0 then
		Sys_SaveAbnormalLog("函数 Map_Effect 中 [nMapId,sEffectName]:[".. nMapId ..",".. sEffectName .."] 的 nPosY 只能传大于0的整数")
		return
	end
	
	if type(sEffectName) ~= "string" then
		Sys_SaveAbnormalLog("函数 Map_Effect 中 [nMapId,sEffectName]:[".. nMapId ..",".. sEffectName .."] 的 sEffectName 只能为字符串类型")
		return
	end
	
	if nIsDel == nil then
		nIsDel = 0
	elseif type(nIsDel) ~= "number" or (nIsDel ~= 0 and nIsDel ~= 1) then
		Sys_SaveAbnormalLog("函数 Map_Effect 中 [nMapId,sEffectName]:[".. nMapId ..",".. sEffectName .."] 的 nIsDel 只能为0、1")
		return
	end

	return MapEffect(nMapId, nPosX, nPosY, sEffectName,nIsDel)
end

--// 对应 ACTION_EVENT_MAPUSER_CHGMAP  = 2012,    // 把指定地图中的所有玩家切换到指定地图的指定地点, param="idOrgMap idTargetMap posx posy"
--// 把指定地图中的所有玩家切换到指定地图的指定地点. 参数说明: idMap表示所在地图, idTargetMap表示目标地图, nPosX, nPosY表示目标地图的x、y坐标. 如果失败返回false, 成功返回true.
--bool MapUserChgMap(int idMap, int idTargetMap, int nPosX, int nPosY);

--函数说明：	把指定地图中的所有玩家切换到指定地图的指定地点
--参数说明：	参数说明: idMap表示所在地图, idTargetMap表示目标地图, nPosX, nPosY表示目标地图的x、y坐标. 
--返回值： 布尔值，如果失败返回false, 成功返回true.
function Map_ChgUserPos(nMapId, nTargetMapId, nPosX, nPosY)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_ChgUserPos 中 [nMapId,nTargetMapId]:[".. nMapId ..",".. nMapId .."] 的 nMapId 只能传大于0的整数")
		return
	end
	
	if type(nTargetMapId) ~= "number" or nTargetMapId%1 ~= 0  or nTargetMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_ChgUserPos 中 [nMapId,nTargetMapId]:[".. nMapId ..",".. nMapId .."] 的 nTargetMapId 只能传大于0的整数")
		return
	end
	
	if type(nPosX) ~= "number" or nPosX%1 ~= 0   or nPosX < 0 then
		Sys_SaveAbnormalLog("函数 Map_ChgUserPos 中 [nMapId,nTargetMapId]:[".. nMapId ..",".. nMapId .."] 的 nPosX 只能传大于0的整数")
		return
	end
	
	if  type(nPosY) ~= "number" or nPosY%1 ~= 0  or nPosY < 0 then
		Sys_SaveAbnormalLog("函数 Map_ChgUserPos 中 [nMapId,nTargetMapId]:[".. nMapId ..",".. nMapId .."] 的 nPosY 只能传大于0的整数")
		return
	end
	
	return MapUserChgMap(nMapId, nTargetMapId, nPosX, nPosY)
end


--// 对应 ACTION_EVENT_MAPUSER_EXEACTION  = 2013, // 地图中指定数量，随机挑选的玩家会执行指定的 ACTION, param = "idMap idAction data", data 为执行action的玩家数量，data 为 -1 时即所有玩家
--// 地图中指定数量的玩家会执行指定的函数. 参数说明: idMap表示所在地图, nData表示玩家数量, -1时即所有玩家, strLineFunc表示执行的函数. 如果失败返回false, 成功返回true.
--bool MapUserExeFunc(int idMap, int nData, string strLineFunc);

--函数说明：	地图中指定数量，随机挑选的玩家会执行指定的
--参数说明: idMap表示所在地图, nData表示玩家数量, -1时即所有玩家, strLineFunc表示执行的函数
--返回值： 布尔值，成功 true，失败 false
function Map_UserExeFunc(nMapId, nData, sFuncName)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_UserExeFunc 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0  then
		Sys_SaveAbnormalLog("函数 Map_UserExeFunc 中 [nMapId]:[".. nMapId .."] 的 nData 只能传整数")
		return
	end
	
	if type(sFuncName) ~= "string" then
		Sys_SaveAbnormalLog("函数 Map_UserExeFunc 中 [nMapId]:[".. nMapId .."] 的 sFuncName 只能为字符串类型")
		return
	end
	
	return MapUserExeFunc(nMapId,nData,"</F>" .. sFuncName)
end

--// 地图相关, 对应 type = 311, type = 315, type = 332.
--// 修改玩家地图的亮度. 参数说明: idMap表示地图ID, dwRGB表示亮度(FFFFFFFF表示恢复). 如果失败返回false, 成功返回true.
--bool MapChangeLight(int idMap, int dwRGB);
--函数说明：	修改玩家地图的亮度
--参数说明：	idMap表示地图ID, dwRGB表示亮度(FFFFFFFF表示恢复) 备注：F为16进制数，需要转成10进制数传给服务端
--返回值： 布尔值，成功 true，失败 false
function Map_ChangeLight(nMapId, nDwRGB)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_ChangeLight 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nDwRGB) ~= "number" or nDwRGB%1 ~= 0  then
		Sys_SaveAbnormalLog("函数 Map_ChangeLight 中 [nMapId]:[".. nMapId .."] 的 nDwRGB 只能传整数")
		return
	end

	return MapChangeLight(nMapId, nDwRGB)
end

--// 放文字焰火. 参数说明: idUser表示玩家ID, pszWords表示文字. 如果失败返回false, 成功返回true.
--bool MapFireWorks2(int idUser, string pszWords);
--函数说明：	放文字焰火
--参数说明：	idUser表示玩家ID, pszWords表示文字
--返回值： 布尔值，成功 true，失败 false
function Map_FireWorks2(sEffectWords,nUserId)	
	if type(sEffectWords) ~= "string" then
		Sys_SaveAbnormalLog("函数 Map_FireWorks2 中 [sEffectWords]:[".. sEffectWords .."] 的  只能为字符串类型")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Map_FireWorks2 第一个参数 [sEffectWords]:[".. sEffectWords .."] 的 nUserId 为整型并且大于等于0")
		return
	end

	return MapFireWorks2(nUserId, sEffectWords)
end


--------------------2016.02.19
--type:306
--设置地图属性，参1：idMap表示地图id，参2：nInx表示属性索引，参3：nData表示要设置的属性值
--返回值：成功返回true，失败返回false
-- this->LuaScript()->ExportCFunc(fn_SetMapIntEx, "SetMapIntEx")
--设置地图属性 res_lev
function Map_SetMapResLev(nMapId,nResLev)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_SetMapResLev 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end

	if type(nResLev) ~= "number" or nResLev%1 ~= 0  then
		Sys_SaveAbnormalLog("函数 Map_SetMapResLev 中 [nMapId]:[".. nMapId .."] 的 nResLev 只能传整数")
		return
	end

	return SetMapIntEx(nMapId,G_MAP_RES_LEV,nResLev)
end

--设置地图属性 mapdoc
function Map_SetMapDoc(nMapId,nMapDoc)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_SetMapDoc 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nMapDoc) ~= "number" or nMapDoc%1 ~= 0  then
		Sys_SaveAbnormalLog("函数 Map_SetMapDoc 中 [nMapId]:[".. nMapId .."] 的 nMapDoc 只能传整数")
		return
	end

	return SetMapIntEx(nMapId,G_MAP_DOC,nMapDoc)
end

--设置地图属性 portal0_x
function Map_SetMapPortalX(nMapId,nPortalX)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_SetMapPortalX 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nPortalX) ~= "number" or nPortalX%1 ~= 0  then
		Sys_SaveAbnormalLog("函数 Map_SetMapPortalX 中 [nMapId]:[".. nMapId .."] 的 nPortalX 只能传整数")
		return
	end

	return SetMapIntEx(nMapId,G_MAP_PORTAL_X,nPortalX)
end

--设置地图属性 portal0_y
function Map_SetMapPortalY(nMapId,nPortalY)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_SetMapPortalY 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nPortalY) ~= "number" or nPortalY%1 ~= 0  then
		Sys_SaveAbnormalLog("函数 Map_SetMapPortalY 中 [nMapId]:[".. nMapId .."] 的 nPortalY 只能传整数")
		return
	end

	return SetMapIntEx(nMapId,G_MAP_PORTAL_Y,nPortalY)
end

-- // 生成动态generator,  参1: idUser表示玩家ID, 参2:nBoundX表示出生的x坐标, 参数3:nBoundY表示出生的y坐标, 参数4:nBoundCX表示菱形的x边长, 参数5:nBoundCY表示菱形的y边长, 参数6:nGrid表示怪物间的最大间隔, 参数7:nRestSecs表示怪物重生的速度 秒为单位, 参数8:nMaxPerGen表示一次刷怪的数量, 参数9:idNpcType表示怪物类型, 参数10:nClusterType表示表示本记录对应的怪物范围, 参数11:dwAttribute表示怪物属性, 参数12:idMap表示地图ID 返回值：成功返回true, 失败返回false 
-- this->LuaScript()->ExportCFunc(fn_MapCreateDynaGenerator, "MapCreateDynaGenerator");
function Map_CreateDynaGenerator(nMapId,nBoundX,nBoundY,nBoundCX,nBoundCY,nGrid,nRestSecs,nMaxPerGen,nMonsterId,nClusterType,nAttribute,nUserId)
	if type(nMapId) ~= "number" or nMapId%1 ~= 0  or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_CreateDynaGenerator 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nMapId 只能传大于0的整数")
		return
	end
	
	if type(nBoundX) ~= "number" or nBoundX <= 0 or nBoundX%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Map_CreateDynaGenerator 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nBoundX 只能传大于0的整数")
		return
	end
	
	if type(nBoundY) ~= "number" or nBoundY <= 0 or nBoundY%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Map_CreateDynaGenerator 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nBoundY 只能传大于0的整数")
		return
	end
	
	if type(nBoundCX) ~= "number" or nBoundCX <= 0 or nBoundCX%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Map_CreateDynaGenerator 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nBoundCX 只能传大于0的整数")
		return
	end
	
	if type(nBoundCY) ~= "number" or nBoundCY <= 0 or nBoundCY%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Map_CreateDynaGenerator 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nBoundCY 只能传大于0的整数")
		return
	end
	
	if type(nGrid) ~= "number" or nGrid < 0 or nGrid%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Map_CreateDynaGenerator 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nGrid 只能传大等于0的整数")
		return
	end
	
	if type(nRestSecs) ~= "number" or nRestSecs < 0 or nRestSecs%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Map_CreateDynaGenerator 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nRestSecs 只能传大于0的整数")
		return
	end
	
	if type(nMaxPerGen) ~= "number" or nMaxPerGen < 0 or nMaxPerGen%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Map_CreateDynaGenerator 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nMaxPerGen 只能传大于0的整数")
		return
	end
	
	if type(nMonsterId) ~= "number" or nMonsterId <= 0 or nMonsterId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Map_CreateDynaGenerator 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nMonsterId 只能传大于0的整数")
		return
	end
	
	if type(nClusterType) ~= "number" or nClusterType < 0 or nClusterType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Map_CreateDynaGenerator 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nClusterType 只能传大于0的整数")
		return
	end
	
	if type(nAttribute) ~= "number" or nAttribute < 0 or nAttribute%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Map_CreateDynaGenerator 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nAttribute 只能传大于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Map_CreateDynaGenerator 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return MapCreateDynaGenerator(nUserId,nBoundX,nBoundY,nBoundCX,nBoundCY,nGrid,nRestSecs,nMaxPerGen,nMonsterId,nClusterType,nAttribute,nMapId)
end

-- 地图弹幕LUA接口
-- BroadcastMapScreenMsg 参数1：地图ID，参2：内容，参3：颜色，参4：弹幕聊天区域，参数5,：字号，参数6：皮肤ID，参数7：发送者名字 如果失败返回false，成功返回true
-- 皮肤ID100-600 默认1000
function Map_SendBroadcastMapScreenMsg(nMapId, sContent, sColor, nRange, nFontSize, nSkinId, sSender)
	if type(nMapId) ~= "number"  or nMapId%1 ~= 0 or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 Map_SendBroadcastMsg 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(sContent) ~= "string" then
		Sys_SaveAbnormalLog("函数 Map_SendBroadcastMapScreenMsg 中 sContent 只能传字符--[sContent]:[".. sContent .."]")
		return
	end
	
	if sColor == nil then
		sColor = "0xffff0000"
	elseif type(sColor) ~= "string" then
		Sys_SaveAbnormalLog("函数 Map_SendBroadcastMapScreenMsg 中 sColor 只能传字符--[sColor]:[".. sColor .."]")
		return
	end
	
	if nRange == nil then
		nRange = 0
	elseif type(nRange) ~= "number" then
		Sys_SaveAbnormalLog("函数 Map_SendBroadcastMapScreenMsg 中 nRange 只能传字符--[nRange]:[".. nRange .."]")
		return
	end
	
	if nFontSize == nil then
		nFontSize = 14
	elseif type(nFontSize) ~= "number" then
		Sys_SaveAbnormalLog("函数 Map_SendBroadcastMapScreenMsg 中 nFontSize 只能传字符--[nFontSize]:[".. nFontSize .."]")
		return
	end
	
	if nSkinId == nil then
		nSkinId = 1000
	elseif type(nSkinId) ~= "number" then
		Sys_SaveAbnormalLog("函数 Map_SendBroadcastMapScreenMsg 中 nSkinId 只能传大于等于0的整数")
		return
	end
	
	if type(sSender) ~= "string" then
		Sys_SaveAbnormalLog("函数 Map_SendBroadcastMapScreenMsg 中 sSender 只能传字符--[sSender]:[".. sSender .."]")
		return
	end
	
	return BroadcastMapScreenMsg(nMapId, sContent, sColor, nRange, nFontSize, nSkinId, sSender)
end
