----------------------------------------------------------------------------
--Name:		[征服][公用函数]技能函数.lua
--Purpose:	技能函数接口
--Creator: 	林锦
--Created:	2014/08/22
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
-- 技能函数命名前缀词：Magic_
--例子：


------------------------------------------------------------------------------
-- //检查技能等级		参1: 玩家ID，参2:技能类型ID，参3:等级		技能等级不等于nLev返回false，否则返回true
-- LUA_FUNC(MagicCheckLev)
	-- OBJID idUser	= Lua_GetParamInt(1);
	-- OBJID idType	= Lua_GetParamInt(2);
	-- int	  nLev		= Lua_GetParamInt(3);

function Magic_ChkLev(nMagicType,nMagicLev,nUserId)
	if type(nMagicType) ~= "number" or nMagicType <= 0 or nMagicType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_ChkLev 中 [nMagicType]:[".. nMagicType .."] 只能传大于0的整数")
		return
	end

	if type(nMagicLev) ~= "number" or nMagicLev < 0 or nMagicLev%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_ChkLev 中 [nMagicType]:[".. nMagicType .."] 的 nMagicLev 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_ChkLev 中 [nMagicType]:[".. nMagicType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return MagicCheckLev(nUserId,nMagicType,nMagicLev)
end

-- //检查玩家技能类型		参1: 玩家ID，参2:技能类型ID		没学这个技能返回false，否则返回true
-- LUA_FUNC(MagicCheckType)
	-- OBJID idUser	= Lua_GetParamInt(1);
	-- OBJID idType	= Lua_GetParamInt(2);

function Magic_ChkType(nMagicType,nUserId)
	if type(nMagicType) ~= "number" or nMagicType <= 0 or nMagicType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_ChkType 中 [nMagicType]:[".. nMagicType .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_ChkType 中 [nMagicType]:[".. nMagicType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return MagicCheckType(nUserId,nMagicType)
end


-- //学习技能		参1: 玩家ID，参2:技能类型ID		失败返回false，否则返回true
-- LUA_FUNC(LearnMagic)
	-- OBJID idUser	= Lua_GetParamInt(1);
	-- OBJID idType	= Lua_GetParamInt(2);
--基础功能测试ok，是否判断该技能该职业是否可学？
function Magic_Learn(nMagicType,nUserId)
	if type(nMagicType) ~= "number" or nMagicType <= 0 or nMagicType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_Learn 中 [nMagicType]:[".. nMagicType .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_Learn 中 [nMagicType]:[".. nMagicType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	-- 恢复技能模板
	RecoverySkills_SetStc(nMagicType)
	if Magic_ChkType(nMagicType) then
		Sys_SaveAbnormalLog("您已经学过该技能。")
		return
	else
		return LearnMagic(nUserId,nMagicType)
	end

end

-- //技能等级提升		参1: 玩家ID，参2:技能类型ID		失败返回false，否则返回true
-- LUA_FUNC(MagicUpLev)
	-- OBJID idUser	= Lua_GetParamInt(1);
	-- OBJID idType	= Lua_GetParamInt(2);
--不需要做是否已学会该技能的判断了，如果没学过该技能，会直接返回false。
--若已达到等级上线，再次执行，会返回false。
function Magic_UpLev(nMagicType,nUserId)
	if type(nMagicType) ~= "number" or nMagicType <= 0 or nMagicType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_UpLev 中 [nMagicType]:[".. nMagicType .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_UpLev 中 [nMagicType]:[".. nMagicType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return MagicUpLev(nUserId,nMagicType)
end

-- //增加技能经验		参1: 玩家ID，参2:技能类型ID，参3：经验		失败返回false，否则返回true
-- LUA_FUNC(MagicAddExp)
	-- OBJID idUser	= Lua_GetParamInt(1);
	-- OBJID idType	= Lua_GetParamInt(2);
	-- int	  nExp		= Lua_GetParamInt(3);
--不用判断是否学过，没学过的技能，返回false。
function Magic_AddExp(nMagicType,nExp,nUserId)
	if type(nMagicType) ~= "number" or nMagicType <= 0 or nMagicType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_AddExp 中 [nMagicType]:[".. nMagicType .."] 只能传大于0的整数")
		return
	end

	if type(nExp) ~= "number" or nExp <= 0 or nExp%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_AddExp 中 [nMagicType]:[".. nMagicType .."] 的 nExp 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_AddExp 中 [nMagicType]:[".. nMagicType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return MagicAddExp(nUserId,nMagicType,nExp)
end


-- //增加技能经验		参1: 玩家ID，参2:技能类型ID，参3：时间(程序中会换算成经验)		失败返回false，否则返回true
-- LUA_FUNC(MagicAddLevTime)
	-- OBJID idUser	= Lua_GetParamInt(1);
	-- OBJID idType	= Lua_GetParamInt(2);
	-- int	  nExp		= Lua_GetParamInt(3);

function Magic_AddExpByTime(nMagicType,nTime,nUserId)
	if type(nMagicType) ~= "number" or nMagicType <= 0 or nMagicType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_AddExpByTime 中 [nMagicType]:[".. nMagicType .."] 只能传大于0的整数")
		return
	end

	if type(nTime) ~= "number" or nTime <= 0 or nTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_AddExpByTime 中 [nMagicType]:[".. nMagicType .."] 的 nTime 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_AddExpByTime 中 [nMagicType]:[".. nMagicType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return MagicAddLevTime(nUserId,nMagicType,nTime)
end

--//删除技能		参1: 玩家ID，参2:技能类型ID
-- LUA_FUNC(UnlearnMagic)
	-- OBJID idUser	= Lua_GetParamInt(1);
	-- OBJID idType	= Lua_GetParamInt(2);
--删除失败，返回false
function Magic_Del(nMagicType,nUserId)
	if type(nMagicType) ~= "number" or nMagicType <= 0 or nMagicType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_Del 中 [nMagicType]:[".. nMagicType .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_Del 中 [nMagicType]:[".. nMagicType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	if Magic_ChkType(nMagicType) then
		return UnlearnMagic(nUserId,nMagicType)
	else
		Sys_SaveAbnormalLog("您还没有学会该技能。")
		return 
	end
end

-- 2016.1.6 lua接口:
-- // 检测技能外套。参数1:玩家ID, 参数2:技能类型, 参数3:光效类型, 参数4:时效(0表示永久, 非0表示时效)；成功返回true, 失败返回false
-- bool CheckMagicEffect(idUser, nMagicType, ucMgcEffectType, nTimeValid);

function Magic_CheckMagicEffect(nMagicType,nMgcEffectType,nTimeValId,nUserId)
	if type(nMagicType) ~= "number" or nMagicType <= 0 or nMagicType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_CheckMagicEffect 中 [nMagicType]:[".. nMagicType .."] 只能传大于0的整数")
		return
	end

	if type(nMgcEffectType) ~= "number" or nMgcEffectType <= 0 or nMgcEffectType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_CheckMagicEffect 中 [nMagicType]:[".. nMagicType .."] 的 nMgcEffectType 只能传大于0的整数")
		return
	end

	if type(nTimeValId) ~= "number" or nTimeValId < 0 or nTimeValId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_CheckMagicEffect 中 [nMagicType]:[".. nMagicType .."] 的 nTimeValId 只能传大于等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_CheckMagicEffect 中 [nMagicType]:[".. nMagicType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return CheckMagicEffect(nUserId,nMagicType,nMgcEffectType,nTimeValId)

end

-- // 增加技能外套。参数1:玩家ID, 参数2:技能类型, 参数3:光效类型(1-31)， 参数4:赠品(0为赠品, 非0为非赠)， 参数5:至尊(0为普通, 非0为至尊), 参数6:(0为永久, 非0为时效时间, 单位秒); 成功返回true, 失败返回false
-- bool AddMagicAvailableEffect(idUser, nMagicType, ucMgcEffectType, nMonopoly, nExorbitant, nSecs);

function Magic_AddMagicAvailableEffect(nMagicType,nMgcEffectType,nMonopoly,nExorbitant,nSecs,nUserId)
	if type(nMagicType) ~= "number" or nMagicType <= 0 or nMagicType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_AddMagicAvailableEffect 中 [nMagicType]:[".. nMagicType .."] 只能传大于0的整数")
		return
	end

	if type(nMgcEffectType) ~= "number" or nMgcEffectType <= 0 or nMgcEffectType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_AddMagicAvailableEffect 中 [nMagicType]:[".. nMagicType .."] 的 nMgcEffectType 只能传大于0的整数")
		return
	end

	if type(nMonopoly) ~= "number" or nMonopoly < 0 or nMonopoly%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_AddMagicAvailableEffect 中 [nMagicType]:[".. nMagicType .."] 的 nMonopoly 只能传大于0的整数")
		return
	end

	if type(nExorbitant) ~= "number" or nExorbitant < 0 or nExorbitant%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_AddMagicAvailableEffect 中 [nMagicType]:[".. nMagicType .."] 的 nExorbitant 只能传大于0的整数")
		return
	end

	if type(nSecs) ~= "number" or nSecs < 0 or nSecs%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_AddMagicAvailableEffect 中 [nMagicType]:[".. nMagicType .."] 的 nSecs 只能传大于等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Magic_AddMagicAvailableEffect 中 [nMagicType]:[".. nMagicType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddMagicAvailableEffect(nUserId,nMagicType,nMgcEffectType,nMonopoly,nExorbitant,nSecs)

end
