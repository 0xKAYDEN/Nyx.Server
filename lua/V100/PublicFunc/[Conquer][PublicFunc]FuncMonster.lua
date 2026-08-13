----------------------------------------------------------------------------
--Name:		[征服][公用函数]怪物函数.lua
--Purpose:	怪物函数接口
--Creator: 	林锦
--Created:	2014/06/26
----------------------------------------------------------------------------
---------------------------------命名规范----------------------------------
------------------------------actiontype的分类------------------------------
--Sys  怪物所有
--Send 消息发送
--Get  获得属性
--Set  修改属性
--Chk  检查属性
--Del  删除属性
--Add  添加属性
------------------------------------------------------------------------------
-- 怪物函数命名前缀词：Monster_
--例子：
--bool DeleteMonster(OBJID idMap,OBJID idType, int nData, const char* pszName);

--function Monster_DelMonster(nMapId,nMonsterTypeId,nData,sMonsterName)
--
--end

------------------------------------------------------------------------------
--bool killMonsterDropItem(OBJID idUser, DWORD dwData);
--杀怪掉落物品



-- 1、接口调整：
-- killMonsterDropItem           // 杀怪掉物品：参1:玩家ID，参2：物品类型，参3：掉落范围
-- ps:此接口不再支持玄宝掉落

-- 4、LUA相关：
-- a、现有LUA：
-- bool killMonsterDropItem(OBJID idUser, DWORD dwData);
-- 修改为：
-- // 杀怪掉物品; 参1:玩家ID, 参2:物品类型, 参3:标志(1强制玄宝属性, 0随机分配), 参4:耐久度上限, 参5-参9:玄宝属性
-- bool killMonsterDropItem(OBJID IdUser, DWORD dwData, int nFlag, int nAmountLimit, int nData1, int nData2, int nData3, int nData4, int nData5);
-- b、现有action type:
-- type=801 由于新的任务都用lua实现, 所以暂时不做修改。
-- 注：nAmountLimit 需要按cq_itemtype中的耐久进行配置从千位起算耐久，个位十位无用但也得填充。
function Monster_SysDropItem(nItemtypeId,nRange,nUserId)
	if type(nItemtypeId) ~= "number" or nItemtypeId <= 0 or nItemtypeId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_SysDropItem 中 [nItemtypeId]:[".. nItemtypeId .."] 只能传大于0的整数")
		return
	end

	if nRange == nil then
		nRange = 1
	elseif type(nRange) ~= "number" or nRange < 0 or nRange%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_SysDropItem 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nRange 只能传大于等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_SysDropItem 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return killMonsterDropItem(nUserId,nItemtypeId,nRange)
end

-- 2、新增接口
-- // 杀怪掉落多个同类型物品：参1：玩家ID， 参2：物品类型，参3：物品个数，参4：掉落范围
-- killMonsterDropMultiItem
function Monster_DropMultiItem(nItemtypeId,nItemNum,nRange,nUserId)
	if type(nItemtypeId) ~= "number" or nItemtypeId <= 0 or nItemtypeId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropMultiItem 中 [nItemtypeId]:[".. nItemtypeId .."] 只能传大于0的整数")
		return
	end

	if nItemNum == nil then
		nItemNum = 1
	elseif type(nItemNum) ~= "number" or nItemNum < 0 or nItemNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropMultiItem 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nItemNum 只能传大于等于0的整数")
		return
	end

	if nRange == nil then
		nRange = 1
	elseif type(nRange) ~= "number" or nRange < 0 or nRange%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropMultiItem 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nRange 只能传大于等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropMultiItem 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return killMonsterDropMultiItem(nUserId,nItemtypeId,nItemNum,nRange)
end

-- // 杀怪掉玄宝：参1：玩家ID，参2：物品类型，参3：标志（1强制玄宝属性， 0随机分配），参4：耐久度上限，参5——参9：玄宝属性
-- killMonsterDropXuanbao
function Monster_DropXuanbao(nItemtypeId,nFlag,nAmountLimit,nData1,nData2,nData3,nData4,nData5,nUserId)
	if type(nItemtypeId) ~= "number" or nItemtypeId <= 0 or nItemtypeId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropXuanbao 中 [nItemtypeId]:[".. nItemtypeId .."] 只能传大于0的整数")
		return
	end

	if nFlag == nil then
		nFlag = 0
	elseif type(nFlag) ~= "number" or nFlag < 0 or nFlag%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropXuanbao 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nFlag 只能传大于等于0的整数")
		return
	end

	if nAmountLimit == nil then
		nAmountLimit = 0
	elseif type(nAmountLimit) ~= "number" or nAmountLimit < 0 or nAmountLimit%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropXuanbao 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nAmountLimit 只能传大于等于0的整数")
		return
	end
	nAmountLimit = nAmountLimit*100

	if nData1 == nil then
		nData1 = 0
	elseif type(nData1) ~= "number" or nData1 < 0 or nData1%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropXuanbao 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nData1 只能传大于等于0的整数")
		return
	end

	if nData2 == nil then
		nData2 = 0
	elseif type(nData2) ~= "number" or nData2 < 0 or nData2%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropXuanbao 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nData2 只能传大于等于0的整数")
		return
	end

	if nData3 == nil then
		nData3 = 0
	elseif type(nData3) ~= "number" or nData3 < 0 or nData3%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropXuanbao 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nData3 只能传大于等于0的整数")
		return
	end

	if nData4 == nil then
		nData4 = 0
	elseif type(nData4) ~= "number" or nData4 < 0 or nData4%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropXuanbao 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nData4 只能传大于等于0的整数")
		return
	end

	if nData5 == nil then
		nData5 = 0
	elseif type(nData5) ~= "number" or nData5 < 0 or nData5%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropXuanbao 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nData5 只能传大于等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DropXuanbao 中 [nItemtypeId]:[".. nItemtypeId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return killMonsterDropXuanbao(nUserId,nItemtypeId,nFlag,nAmountLimit,nData1,nData2,nData3,nData4,nData5)
end

--怪物掉落随机属性的随机玄宝
function Monster_SysDropRandomXuanbao()
	local nItemId = Xuanbao_GetItemId()
	Monster_DropXuanbao(nItemId,0)
	return nItemId
end

--bool killMonsterDropMoney(OBJID idUser, DWORD dwData);
--杀怪掉落金币
function Monster_SysDropMoney(nMoney,nUserId)
	if type(nMoney) ~= "number" or nMoney <= 0 or nMoney%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_SysDropMoney 中 [nMoney]:[".. nMoney .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_SysDropMoney 中 [nMoney]:[".. nMoney .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return killMonsterDropMoney(nUserId,nMoney)
end


--bool killMonsterAddCulTation(OBJID idUser, int nLevFrom, int nLevTo ,__int64 i64AddCultivation);
function Monster_AddCultivation(nCultivation,nUserId)
	if type(nCultivation) ~= "number" or nCultivation <= 0 or nCultivation%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddCultivation 中 [nCultivation]:[".. nCultivation .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddCultivation 中 [nCultivation]:[".. nCultivation .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return killMonsterAddCulTation(nUserId,0,0,nCultivation)
end


--bool CreateMonster(int nOwnerType,OBJID idOwner, OBJID idMap, int nPosX, int nPosY, OBJID idGen, OBJID idType, int nData, const char* pszName);
--对应actiontype=2006，创建一个MONSTER。
--nOwnerType，idOwner，nData默认写0，不需要传参。
--pszName，怪物改名当前无效，不需要传参。
function Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId,nAttribute,nData,nStronghold)
	if type(nMapId) ~= "number" or nMapId <= 0 or nMapId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nMapId 只能传大于0的整数")
		return
	end

	if type(nPosX) ~= "number" or nPosX <= 0 or nPosX%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nPosX 只能传大于0的整数")
		return
	end

	if type(nPosY) ~= "number" or nPosY <= 0 or nPosY%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nPosY 只能传大于0的整数")
		return
	end
	
	if type(nGenId) ~= "number" or nGenId <= 0 or nGenId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nGenId 只能传大于0的整数")
		return
	end

	if type(nMonsterId) ~= "number" or nMonsterId <= 0 or nMonsterId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nMonsterId 只能传大于0的整数")
		return
	end
	
	if nAttribute == nil then
		nAttribute = 0
	elseif type(nAttribute) ~= "number" or (nAttribute ~= 0 and nAttribute ~= 4) then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nAttribute 只能传0或4的整数")
		return		
	end
	
	if nData == nil then
		if nAttribute == nil or nAttribute == 0 then
			nData = 0
		elseif nAttribute == 4 then
			Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nData 必须传入对应服务器编号")
			return			
		end
	elseif type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		    Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nData 必须传入大于或等于0的整数")
			return
	end	
	
	if nStronghold == nil then
		nStronghold = 0
	elseif type(nStronghold) ~= "number" or nStronghold < 0 or nStronghold%1 ~= 0 then
		    Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nStronghold 必须传入大于或等于0的整数")
			return
	end

	if CreateMonster(0,0,nMapId,nPosX,nPosY,nGenId,nMonsterId,nData,"",nAttribute,nStronghold) then
		return true
	else
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 创建怪物ID为：" .. nMonsterId .."失败。")
		return false
	end
end


--int GetCountMonster(OBJID idMap,const char* pszField,const char* pszData);
--对应actiontype=2008，检查同地图的MONSTER数量。
--封装为2个函数，一个按名字查询，一个按generatorid查询。
function Monster_GetMonsterByName(nMapId,sMonsterName)
	if type(nMapId) ~= "number" or nMapId <= 0 or nMapId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_GetMonsterByName 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end

	if type(sMonsterName) ~= "string" then
		Sys_SaveAbnormalLog("函数 Monster_GetMonsterByName 中 [nMapId]:[".. nMapId .."] 的 sMonsterName 只能传字符串类型的参数")
		return
	end

	return GetCountMonster(nMapId,"name",sMonsterName)
end

function Monster_GetMonsterByGenId(nMapId,nGenId)
	if type(nMapId) ~= "number" or nMapId <= 0 or nMapId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_GetMonsterByGenId 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end

	if type(nGenId) ~= "number" or nGenId <= 0 or nGenId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_GetMonsterByGenId 中 [nMapId]:[".. nMapId .."] 的nGenId 只能传大于0的整数")
		return
	end

	return GetCountMonster(nMapId,"gen_id",nGenId)
end


--bool DeleteMonster(OBJID idMap,OBJID idType, int nData, const char* pszName);
--对应actiontype=2009，param中的data和name参数可不用，不再封装。
--返回值为布尔型
function Monster_DelMonster(nMapId,nMonsterId)
	if type(nMapId) ~= "number" or nMapId <= 0 or nMapId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DelMonster 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end

	if type(nMonsterId) ~= "number" or nMonsterId <= 0 or nMonsterId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_DelMonster 中 [nMapId]:[".. nMapId .."] 的 nMonsterId 只能传大于0的整数")
		return
	end

	return DeleteMonster(nMapId,nMonsterId,0,"")
end

-- 新的怪物生成接口
function Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId,nAttribute,nData,nStronghold,nChkNum)
	if type(nMapId) ~= "number" or nMapId <= 0 or nMapId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nMapId 只能传大于0的整数")
		return
	end

	if type(nPosX) ~= "number" or nPosX <= 0 or nPosX%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nPosX 只能传大于0的整数")
		return
	end

	if type(nPosY) ~= "number" or nPosY <= 0 or nPosY%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nPosY 只能传大于0的整数")
		return
	end
	
	if type(nGenId) ~= "number" or nGenId <= 0 or nGenId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nGenId 只能传大于0的整数")
		return
	end

	if type(nMonsterId) ~= "number" or nMonsterId <= 0 or nMonsterId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nMonsterId 只能传大于0的整数")
		return
	end
	
	if nAttribute == nil then
		nAttribute = 0
	elseif type(nAttribute) ~= "number" or (nAttribute ~= 0 and nAttribute ~= 4) then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nAttribute 只能传0或4的整数")
		return		
	end
	
	if nData == nil then
		if nAttribute == nil or nAttribute == 0 then
			nData = 0
		elseif nAttribute == 4 then
			Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nData 必须传入对应服务器编号")
			return			
		end
	elseif type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		    Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nData 必须传入大于或等于0的整数")
			return
	end	
	
	if nStronghold == nil then
		nStronghold = 0
	elseif type(nStronghold) ~= "number" or nStronghold < 0 or nStronghold%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nGenId,nMonsterId]:[".. nMapId ..",".. nGenId ..",".. nMonsterId .."] 的 nStronghold 必须传入大于或等于0的整数")
		return
	end

	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	
	if nChkNum ~= nil and nMonsterNum >= nChkNum then
		return
	end
	
	if CreateMonster(0,0,nMapId,nPosX,nPosY,nGenId,nMonsterId,nData,"",nAttribute,nStronghold) then
		Sys_SetTempData(1,nMapId,nMonsterId,nMonsterNum + 1)
		return true
	else
		return false
	end
end

function Monster_Death(nMonsterId,nMapId)
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	nMonsterNum = nMonsterNum - 1
	
	if nMonsterNum < 0 then
		nMonsterNum = 0
	end
	
	Sys_SetTempData(1,nMapId,nMonsterId,nMonsterNum)
end


-- 新增LUA接口 CreateMonsterRange
-- 范围内随机创建怪物，参1：nOwnerType 怪物所有者类型，参2：idOwner所有者id, 参3：idMAP地图id, 参4参5：nPosX nPosY位置，参6：idData活动范围, 参7：idType怪物类型, 参8：nData(如果参数10的二进制位第3位为1，那么表示是阵营怪，该字段填阵营id), 参9：pszName怪物名字, 参10：属性, 参11:X半径, 参数12:Y半径, 参数13:怪物数量
-- 新增 参14：怪物存活时间 以秒为单位 nRange这个值其实传的是generator
function Monster_CreateMonsterRange(nOwnerType,nOwnerId,nMapId,nPosX,nPosY,nRange,nMonsterId,nData,sMonsterName,nAttribute,nBoundCX,nBoundCY,nNum,nSurvivalTime)
	if type(nOwnerType) ~= "number" or nOwnerType < 0 or nOwnerType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 nOwnerType 只能传大于0的整数")
		return
	end

	if type(nOwnerId) ~= "number" or nOwnerId < 0 or nOwnerId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 nOwnerId 只能传大于0的整数")
		return
	end

	if type(nMapId) ~= "number" or nMapId <= 0 or nMapId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 nMapId 只能传大于0的整数")
		return
	end

	if type(nPosX) ~= "number" or nPosX < 0 or nPosX%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 nPosX 只能传大于0的整数")
		return
	end

	if type(nPosY) ~= "number" or nPosY < 0 or nPosY%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 nPosY 只能传大于0的整数")
		return
	end

	if type(nRange) ~= "number" or nRange < 0 or nRange%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 nRange 只能传大于0的整数")
		return
	end

	if type(nMonsterId) ~= "number" or nMonsterId <= 0 or nMonsterId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 nMonsterId 只能传大于0的整数")
		return
	end

	if type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 nData 只能传大于0的整数")
		return
	end

	if type(nAttribute) ~= "number" or nAttribute < 0 or nAttribute%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 nAttribute 只能传大于0的整数")
		return
	end

	if type(nBoundCX) ~= "number" or nBoundCX <= 0 or nBoundCX%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 nBoundCX 只能传大于0的整数")
		return
	end

	if type(nBoundCY) ~= "number" or nBoundCY <= 0 or nBoundCY%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 nBoundCY 只能传大于0的整数")
		return
	end

	if type(nNum) ~= "number" or nNum <= 0 or nNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 nNum 只能传大于0的整数")
		return
	end

	if type(sMonsterName) ~= "string" then
		Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId ..",".. nMonsterId .."] 的 sMonsterName 必须为字符串")
		return
	end

	if nSurvivalTime == nil then
		nSurvivalTime = 0
	else
		if type(nSurvivalTime) ~= "number" or nSurvivalTime < 0 or nSurvivalTime%1 ~= 0 then
			Sys_SaveAbnormalLog("函数 Monster_AddMonster 中 [nMapId,nMonsterId]:[".. nMapId .. ",".. nMonsterId .."] 的 nSurvivalTime 只能传大于等于0的整数")
			return
		end
	end

	return CreateMonsterRange(nOwnerType,nOwnerId,nMapId,nPosX,nPosY,nRange,nMonsterId,nData,sMonsterName,nAttribute,nBoundCX,nBoundCY,nNum,nSurvivalTime)
end