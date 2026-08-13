----------------------------------------------------------------------------
--Name:		[征服][公用函数]玩家函数.lua
--Purpose:	玩家函数接口
--Creator: 	林锦
--Created:	2014/06/26
----------------------------------------------------------------------------
---------------------------------命名规范----------------------------------
------------------------------actiontype的分类------------------------------
--Sys  玩家所有
--Send 消息发送
--Get  获得属性
--Set  修改属性
--Chk  检查属性
--Del  删除属性
--Add  添加属性
--Dec  扣除属性
------------------------------------------------------------------------------
-- 玩家函数命名前缀词：User_
--例子：
--(fn_CheckLeftSpace, "CheckLeftSpace");//检查玩家空格子数，参1:玩家ID, 参2:空格数量


--function User_ChkBagSpace(nUserId,nNum)
--
--end

------------------------------------------------------------------------------

--检查玩家空格子数 
--(fn_CheckLeftSpace, "CheckLeftSpace");		
--参数说明：参1:玩家ID, 参2:空格数量
--返回：有空间 ture 没空间false
function User_CheckLeftSpace(nSpaceNum,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_CheckLeftSpace 第二个参数nUserId 为整型并且大于等于0")
		return
	end	
	
	if type(nSpaceNum) ~= "number" or nSpaceNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CheckLeftSpace 中 [nSpaceNum]:[".. nSpaceNum .."] 只能传大于0的整数")
		return
	end
	
	-- 判断是否大于0
	if nSpaceNum <= 0 then
		return true
	end
	
	return CheckLeftSpace(nUserId,nSpaceNum)
end


--玩家变身
--TransformByItem		
--参数说明：参1:玩家ID, 参2:技能类型ID, 参3:技能等级, 参4:怪物类型ID, 参5:持续时间
--返回
function User_TransForm(nSkillType,nSkillLevel,nMonsterType,nTime,nUserId,nLearnMagic)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TransForm 中 [nSkillType,nSkillLevel,nMonsterType]:[".. nSkillType ..",".. nSkillLevel ..",".. nMonsterType .."] 的 nUserId 为整型并且大于等于0")
		return
	end	
	
	if type(nSkillType) ~= "number" or nSkillType%1 ~= 0 or nSkillType <= 0 then
		Sys_SaveAbnormalLog("函数 User_TransForm 中 [nSkillType,nSkillLevel,nMonsterType]:[".. nSkillType ..",".. nSkillLevel ..",".. nMonsterType .."] 的 nSkillType 只能传大于0的整数")
		return
	end
	
	if type(nSkillLevel) ~= "number" or nSkillLevel%1 ~= 0 or nSkillLevel < 0 then
		Sys_SaveAbnormalLog("函数 User_TransForm 中 [nSkillType,nSkillLevel,nMonsterType]:[".. nSkillType ..",".. nSkillLevel ..",".. nMonsterType .."] 的 nSkillLevel 只能传大于等于0的整数")
		return
	end
	
	if type(nMonsterType) ~= "number" or nMonsterType%1 ~= 0 or nMonsterType <= 0 then
		Sys_SaveAbnormalLog("函数 User_TransForm 中 [nSkillType,nSkillLevel,nMonsterType]:[".. nSkillType ..",".. nSkillLevel ..",".. nMonsterType .."] 的 nMonsterType 只能传大于0的整数")
		return
	end
		
	if type(nTime) ~= "number" or nTime%1 ~= 0 or nTime <= 0 then
		Sys_SaveAbnormalLog("函数 User_TransForm 中 [nSkillType,nSkillLevel,nMonsterType]:[".. nSkillType ..",".. nSkillLevel ..",".. nMonsterType .."] 的 nTime 只能传大于0的整数")
		return
	end	

	if nLearnMagic == nil then	
		nLearnMagic = 0
	elseif type(nLearnMagic) ~= "number" or nLearnMagic%1 ~= 0 or nLearnMagic < 0 then
		Sys_SaveAbnormalLog("函数 User_TransForm 中 [nSkillType,nSkillLevel,nMonsterType]:[".. nSkillType ..",".. nSkillLevel ..",".. nMonsterType .."] 的 nLearnMagic 只能传大于等于0的整数")
		return
	end	
	return TransformByItem(nUserId,nSkillType,nSkillLevel,nMonsterType,nTime,nLearnMagic)
end

--玩家变身(可以带技能)
--TransForm		
--参数说明：参1:玩家ID, 参2:技能类型ID, 参3:技能等级, 参4:怪物类型ID, 参5:持续时间
--返回
function User_TransFormByMagic(nSkillType,nSkillLevel,nMonsterType,nTime,nUserId,nLearnMagic)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TransFormByMagic 中 [nSkillType,nSkillLevel,nMonsterType]:[".. nSkillType ..",".. nSkillLevel ..",".. nMonsterType .."] 的 nUserId 为整型并且大于等于0")
		return
	end	
	
	if type(nSkillType) ~= "number" or nSkillType%1 ~= 0 or nSkillType <= 0 then
		Sys_SaveAbnormalLog("函数 User_TransFormByMagic 中 [nSkillType,nSkillLevel,nMonsterType]:[".. nSkillType ..",".. nSkillLevel ..",".. nMonsterType .."] 的 nSkillType 只能传大于0的整数")
		return
	end
	
	if type(nSkillLevel) ~= "number" or nSkillLevel%1 ~= 0 or nSkillLevel < 0 then
		Sys_SaveAbnormalLog("函数 User_TransFormByMagic 中 [nSkillType,nSkillLevel,nMonsterType]:[".. nSkillType ..",".. nSkillLevel ..",".. nMonsterType .."] 的 nSkillLevel 只能传大于等于0的整数")
		return
	end
	
	if type(nMonsterType) ~= "number" or nMonsterType%1 ~= 0 or nMonsterType <= 0 then
		Sys_SaveAbnormalLog("函数 User_TransFormByMagic 中 [nSkillType,nSkillLevel,nMonsterType]:[".. nSkillType ..",".. nSkillLevel ..",".. nMonsterType .."] 的 nMonsterType 只能传大于0的整数")
		return
	end
		
	if type(nTime) ~= "number" or nTime%1 ~= 0 or nTime <= 0 then
		Sys_SaveAbnormalLog("函数 User_TransFormByMagic 中 [nSkillType,nSkillLevel,nMonsterType]:[".. nSkillType ..",".. nSkillLevel ..",".. nMonsterType .."] 的 nTime 只能传大于0的整数")
		return
	end	

	if nLearnMagic == nil then	
		nLearnMagic = 0
	elseif type(nLearnMagic) ~= "number" or nLearnMagic%1 ~= 0 or nLearnMagic < 0 then
		Sys_SaveAbnormalLog("函数 User_TransFormByMagic 中 [nSkillType,nSkillLevel,nMonsterType]:[".. nSkillType ..",".. nSkillLevel ..",".. nMonsterType .."] 的 nLearnMagic 只能传大于等于0的整数")
		return
	end	
	return TransForm(nUserId,nSkillType,nSkillLevel,nMonsterType,nTime,nLearnMagic)
end

--玩家切地图
--(fn_ChgMap, "ChgMap");			
--参数说明：参1:玩家ID, 参2:地图ID, 参3:坐标X, 参4:坐标Y, 参5:是否可以出监狱 	参照 ACTION_USER_CHGMAP = 1003
--返回玩家切地图的坐标点
function User_ChgMap(nMapId,nCellx,nCelly,nIsOutPrison,nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_ChgMap  中 [nMapId]:[".. nMapId .."] 的 nUserId 为整型并且大于等于0")
		return
	end	
	
	if type(nMapId) ~= "number" or nMapId%1 ~= 0 or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgMap 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nCellx) ~= "number" or nCellx%1 ~= 0 or nCellx <= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgMap 中 [nMapId]:[".. nMapId .."] 的 nCellx 只能传大于0的整数")
		return
	end
	
	if type(nCelly) ~= "number" or nCelly%1 ~= 0 or nCelly <= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgMap 中 [nMapId]:[".. nMapId .."] 的 nCelly 只能传大于0的整数")
		return
	end
	
	if nIsOutPrison == nil then
		nIsOutPrison = 0
	elseif type(nIsOutPrison) ~= "number" or nIsOutPrison%1 ~= 0 or nIsOutPrison < 0 or nIsOutPrison > 1  then
		Sys_SaveAbnormalLog("函数 User_ChgMap 中 [nMapId]:[".. nMapId .."] 的 nIsOutPrison 只能传（0，1）的整数")
		return
	end	
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			User_TalkChannel2005(tTestTiShi[9],nUserId)
		end
	end
	
	-- 判断是否是跨服玩家
	if (Get_UserMapId(nUserId) == 1002) and User_IsCross(nUserId) then
		return
	end
	
	-- 判断是否在神龙岛
	if not User_ChkShenlongIsland(nUserId) then
		return
	end
	
	local sLog = Sys_SetMapLog(nUserId,nMapId,nCellx,nCelly)
	if ChgMap(nUserId,nMapId,nCellx,nCelly,nIsOutPrison) and User_ChgMapEffectAdd(nUserId) then
		sLog = sLog .. ",true"
		Sys_SaveMapLog(sLog)
		return true
	else
		sLog = sLog .. ",false"
		Sys_SaveMapLog(sLog)
		return false
	end
end



-- 在跨服中使用的 玩家切地图
--(fn_ChgMap, "ChgMap");			
--参数说明：参1:玩家ID, 参2:地图ID, 参3:坐标X, 参4:坐标Y, 参5:是否可以出监狱 	参照 ACTION_USER_CHGMAP = 1003
--返回玩家切地图的坐标点
function User_ChgMapCross(nMapId,nCellx,nCelly,nIsOutPrison,nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_ChgMapCross  中 [nMapId]:[".. nMapId .."] 的 nUserId 为整型并且大于等于0")
		return
	end	
	
	if type(nMapId) ~= "number" or nMapId%1 ~= 0 or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgMapCross 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nCellx) ~= "number" or nCellx%1 ~= 0 or nCellx <= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgMapCross 中 [nMapId]:[".. nMapId .."] 的 nCellx 只能传大于0的整数")
		return
	end
	
	if type(nCelly) ~= "number" or nCelly%1 ~= 0 or nCelly <= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgMapCross 中 [nMapId]:[".. nMapId .."] 的 nCelly 只能传大于0的整数")
		return
	end
	
	if nIsOutPrison == nil then
		nIsOutPrison = 0
	elseif type(nIsOutPrison) ~= "number" or nIsOutPrison%1 ~= 0 or nIsOutPrison < 0 or nIsOutPrison > 1  then
		Sys_SaveAbnormalLog("函数 User_ChgMapCross 中 [nMapId]:[".. nMapId .."] 的 nIsOutPrison 只能传（0，1）的整数")
		return
	end	
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			User_TalkChannel2005(tTestTiShi[9],nUserId)
		end
	end
	
	-- -- 判断是否是跨服玩家
	-- if (Get_UserMapId(nUserId) == 1002) and User_IsCross(nUserId) then
		-- return
	-- end
	
	-- 判断是否在神龙岛
	if not User_ChkShenlongIsland(nUserId) then
		return
	end
	
	local sLog = Sys_SetMapLog(nUserId,nMapId,nCellx,nCelly)
	if ChgMap(nUserId,nMapId,nCellx,nCelly,nIsOutPrison) and User_ChgMapEffectAdd(nUserId) then
		sLog = sLog .. ",true"
		Sys_SaveMapLog(sLog)
		return true
	else
		sLog = sLog .. ",false"
		Sys_SaveMapLog(sLog)
		return false
	end
end


-- 判断是否在神龙岛
function User_ChkShenlongIsland(nUserId)
	local nUserMapId = Get_UserMapId(nUserId)
	
	if (nUserMapId == 10137) or (nUserMapId == 10166) or (nUserMapId == 10250) then
		return false
	end
	
	return true
end

-- 神龙岛切地图
function User_ChgMapByShenlongIsland(nMapId,nCellx,nCelly,nIsOutPrison,nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_ChgMapByShenlongIsland  中 [nMapId]:[".. nMapId .."] 的 nUserId 为整型并且大于等于0")
		return
	end	
	
	if type(nMapId) ~= "number" or nMapId%1 ~= 0 or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgMapByShenlongIsland 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nCellx) ~= "number" or nCellx%1 ~= 0 or nCellx <= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgMapByShenlongIsland 中 [nMapId]:[".. nMapId .."] 的 nCellx 只能传大于0的整数")
		return
	end
	
	if type(nCelly) ~= "number" or nCelly%1 ~= 0 or nCelly <= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgMapByShenlongIsland 中 [nMapId]:[".. nMapId .."] 的 nCelly 只能传大于0的整数")
		return
	end
	
	if nIsOutPrison == nil then
		nIsOutPrison = 0
	elseif type(nIsOutPrison) ~= "number" or nIsOutPrison%1 ~= 0 or nIsOutPrison < 0 or nIsOutPrison > 1  then
		Sys_SaveAbnormalLog("函数 User_ChgMapByShenlongIsland 中 [nMapId]:[".. nMapId .."] 的 nIsOutPrison 只能传（0，1）的整数")
		return
	end	
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			User_TalkChannel2005(tTestTiShi[9],nUserId)
		end
	end
	
	-- 判断是否是跨服玩家
	if (Get_UserMapId(nUserId) == 1002) and User_IsCross(nUserId) then
		return
	end
	local sLog = Sys_SetMapLog(nUserId,nMapId,nCellx,nCelly)
	if ChgMap(nUserId,nMapId,nCellx,nCelly,nIsOutPrison) and User_ChgMapEffectAdd(nUserId) then
		sLog = sLog .. ",true"
		Sys_SaveMapLog(sLog)
		return true
	else
		sLog = sLog .. ",false"
		Sys_SaveMapLog(sLog)
		return false
	end
end

--记录玩家坐标	
--(fn_RecordPoint, "RecordPoint");	
--参数说明：参1:玩家ID, 参2:地图ID, 参3:坐标X, 参4:坐标Y 			参照 ACTION_USER_RECORDPOINT = 1004 
----返回记录玩家坐标
function User_RecordPoint(nMapId,nCellx,nCelly,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_RecordPoint  中 [nMapId]:[".. nMapId .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(nMapId) ~= "number" or nMapId%1 ~= 0 or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 User_RecordPoint 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nCellx) ~= "number" or nCellx%1 ~= 0 or nCellx <= 0 then
		Sys_SaveAbnormalLog("函数 User_RecordPoint 中 [nMapId]:[".. nMapId .."] 的 nCellx 只能传大于0的整数")
		return
	end
	
	if type(nCelly) ~= "number" or nCelly%1 ~= 0 or nCelly <= 0 then
		Sys_SaveAbnormalLog("函数 User_RecordPoint 中 [nMapId]:[".. nMapId .."] 的 nCelly 只能传大于0的整数")
		return
	end
	
	return RecordPoint(nUserId,nMapId,nCellx,nCelly)
end

--玩家发言之2000频道	
--(fn_Talk, "Talk");
--参数说明：参1:玩家ID, 参2:频道, 参3:内容  						参照 ACTION_USER_TALK = 1010
--频道=2000;
--返回2000频道	
function User_TalkChannel2000(sContent,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TalkChannel2000  中 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(sContent) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_TalkChannel2000 中 sContent 只能传字符串")
		return
	end	
	
	return Talk(nUserId,2000,sContent)
end

--玩家发言之2002动作频道	
--(fn_Talk, "Talk");
--参数说明：参1:玩家ID, 参2:频道, 参3:内容  						参照 ACTION_USER_TALK = 1010
--频道=2002;	 	动作
--返回2002动作频道	
function User_TalkChannel2002(sContent,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TalkChannel2002  中 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(sContent) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_TalkChannel2002 中 sContent 只能传字符串")
		return
	end	
	
	return Talk(nUserId,2002,sContent)
end



--玩家发言之2003队伍频道	
--(fn_Talk, "Talk");				
--参数说明：参1:玩家ID, 参2:频道, 参3:内容  						参照 ACTION_USER_TALK = 1010
--频道=2003;	 	动作
--返回2003队伍频道的对白
function User_TalkChannel2003(sContent,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TalkChannel2003  中 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(sContent) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_TalkChannel2003 中 sContent 只能传字符串")
		return
	end	

	return Talk(nUserId,2003,sContent)
end


--玩家发言之2005系统频道	
--(fn_Talk, "Talk");				
--参数说明：参1:玩家ID, 参2:频道, 参3:内容  						参照 ACTION_USER_TALK = 1010
--频道=2005;	 	系统
--返回2005系统频道
function User_TalkChannel2005(sContent,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TalkChannel2005  中 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(sContent) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_TalkChannel2005 中 sContent 只能传字符串" .. sContent)
		return
	end	
	
	-- 格式转换
	sContent = CommonFunc_Conversion(sContent)
	return Talk(nUserId,2005,sContent)
end



--玩家发言之2007交谈频道	
--(fn_Talk, "Talk");			
--参数说明：参1:玩家ID, 参2:频道, 参3:内容  						参照 ACTION_USER_TALK = 1010
--频道=2007;	 	交谈
--返回2007交谈频道
function User_TalkChannel2007(sContent,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TalkChannel2007  中 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(sContent) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_TalkChannel2007 中 sContent 只能传字符串")
		return
	end	
	
	-- 格式转换
	sContent = CommonFunc_Conversion(sContent)
	return Talk(nUserId,2007,sContent)
end



--玩家发言之2011GM频道	
--(fn_Talk, "Talk");		
--参数说明：参1:玩家ID, 参2:频道, 参3:内容  						参照 ACTION_USER_TALK = 1010
--频道=2011;	 	GM频道
--返回2011GM频道
function User_TalkChannel2011(sContent,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TalkChannel2011  中 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(sContent) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_TalkChannel2011 中 sContent 只能传字符串")
		return
	end		
	
	-- 格式转换
	sContent = CommonFunc_Conversion(sContent)
	return Talk(nUserId,2011,sContent)
end



--玩家添加特效
--(fn_Effect, "Effect");	
--参数说明：参1:玩家ID, 参2:szObj, 参3:szEffect, 参4:szOpt   		参照 ACTION_USER_EFFECT = 1027,
--szObj支持"self", "couple", "team", szEffect为特效名称, szOpt支持"add", "del"
--返回玩家添加特效
function User_EffectAdd(sSzObj,sEffect,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_EffectAdd 中 [sEffect]:[".. sEffect .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(sEffect) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_EffectAdd 中 [sEffect]:[".. sEffect .."] 的 sEffect 只能传字符串")
		return
	end
	
	if type(sSzObj) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_EffectAdd 中 [sEffect]:[".. sEffect .."] 的 sSzObj 只能传字符串")
		return
	end		
	
	if sSzObj == "self" then
		return Effect(nUserId,"self",sEffect,"add",1)
	elseif 	sSzObj == "couple" then 
		return Effect(nUserId,"couple",sEffect,"add",1)
	elseif 	sSzObj == "team"	then
		return Effect(nUserId,"team",sEffect,"add",1)
	end

end



--玩家删除特效
--(fn_Effect, "Effect");	
--参数说明：参1:玩家ID, 参2:szObj, 参3:szEffect, 参4:szOpt   		参照 ACTION_USER_EFFECT = 1027,
--szObj支持"self", "couple", "team", szEffect为特效名称, szOpt支持"add", "del"
--返回玩家删除特效
function User_EffectDel(sSzObj,sEffect,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_EffectDel 中 [sEffect]:[".. sEffect .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(sEffect) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_EffectDel 中 [sEffect]:[".. sEffect .."] 只能传字符串")
		return
	end
	
	if type(sSzObj) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_EffectDel 中 [sEffect]:[".. sEffect .."] 的 sSzObj 只能传字符串")
		return
	end		
	
	if sSzObj == "self" then
		return Effect(nUserId,"self",sEffect,"del",1)
	elseif 	sSzObj == "couple" then 
		return Effect(nUserId,"couple",sEffect,"del",1)
	elseif 	sSzObj == "team"	then
		return Effect(nUserId,"team",sEffect,"del",1)
	end
end

--2019.1.9 新增广播参数 0 为不广播，1为广播。
--玩家添加特效
--(fn_Effect, "Effect");	
--参数说明：参1:玩家ID, 参2:szObj, 参3:szEffect, 参4:szOpt   		参照 ACTION_USER_EFFECT = 1027,
--szObj支持"self", "couple", "team", szEffect为特效名称, szOpt支持"add", "del"
--返回玩家添加特效
function User_EffectAddNew(sSzObj,sEffect,nMode,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_EffectAddNew 中 [sEffect]:[".. sEffect .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(sEffect) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_EffectAddNew 中 [sEffect]:[".. sEffect .."] 的 sEffect 只能传字符串")
		return
	end
	
	if type(sSzObj) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_EffectAddNew 中 [sEffect]:[".. sEffect .."] 的 sSzObj 只能传字符串")
		return
	end		
	
	if nMode == nil then
		nMode = 1
	elseif type(nMode) ~= "number" or nMode%1 ~= 0 or nMode < 0 or nMode > 1 then
		Sys_SaveAbnormalLog("函数 User_EffectAddNew 中 [sEffect]:[".. sEffect .."] 的 nMode 只能是0或者1")
		return
	end
	
	if sSzObj == "self" then
		return Effect(nUserId,"self",sEffect,"add", nMode)
	elseif 	sSzObj == "couple" then 
		return Effect(nUserId,"couple",sEffect,"add", nMode)
	elseif 	sSzObj == "team"	then
		return Effect(nUserId,"team",sEffect,"add", nMode)
	end

end

--2019.1.9 新增广播参数 0 为不广播，1为广播。
--玩家删除特效
--(fn_Effect, "Effect");	
--参数说明：参1:玩家ID, 参2:szObj, 参3:szEffect, 参4:szOpt   		参照 ACTION_USER_EFFECT = 1027,
--szObj支持"self", "couple", "team", szEffect为特效名称, szOpt支持"add", "del"
--返回玩家删除特效
function User_EffectDelNew(sSzObj,sEffect,nMode,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_EffectDelNew 中 [sEffect]:[".. sEffect .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(sEffect) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_EffectDelNew 中 [sEffect]:[".. sEffect .."] 只能传字符串")
		return
	end
	
	if type(sSzObj) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_EffectDelNew 中 [sEffect]:[".. sEffect .."] 的 sSzObj 只能传字符串")
		return
	end		
	
	if nMode == nil then
		nMode = 1
	elseif type(nMode) ~= "number" or nMode%1 ~= 0 or nMode < 0 or nMode > 1 then
		Sys_SaveAbnormalLog("函数 User_EffectDelNew 中 [sEffect]:[".. sEffect .."] 的 nMode 只能是0或者1")
		return
	end
	
	if sSzObj == "self" then
		return Effect(nUserId,"self",sEffect,"del", nMode)
	elseif 	sSzObj == "couple" then 
		return Effect(nUserId,"couple",sEffect,"del", nMode)
	elseif 	sSzObj == "team"	then
		return Effect(nUserId,"team",sEffect,"del", nMode)
	end
end



--玩家修正战斗最终所获经验值
--SetExpControl	
--参数说明：参1:玩家ID, 参2:加成百分比, 参3:时间, 					参照 ACTION_USER_PLUSEXP = 1048
--返回玩家修正战斗最终所获经验值(X倍经验)
function User_SetExpControl(nPercent,nTime,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_SetExpControl 中 [nPercent]:[".. nPercent .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(nPercent) ~= "number" or nPercent%1 ~= 0 or nPercent <= 0 then
		Sys_SaveAbnormalLog("函数 User_SetExpControl 中 [nPercent]:[".. nPercent .."] 只能传大于0的整数")
		return
	end
	
	if type(nTime) ~= "number" or nTime%1 ~= 0 or nTime <= 0 then
		Sys_SaveAbnormalLog("函数 User_SetExpControl 中 [nPercent]:[".. nPercent .."] 的 nTime 只能传大于0的整数")
		return
	end	

	return SetExpControl(nUserId,nPercent,nTime)
end



--向在队伍频道中广播一条消息
--(fn_BroadcastTeamMsg, "BroadcastTeamMsg");	
--参数说明：参1:玩家ID, 参2:内容			参照 ACTION_TEAM_BROADCAST = 1101,
--返回队伍频道中广播一条消息
function User_BroadcastTeamMsg(nContent,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_BroadcastTeamMsg  中 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(nContent) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_BroadcastTeamMsg 中 nContent 只能传字符串")
		return
	end			
	
	return BroadcastTeamMsg(nUserId,nContent)
end

--组队切屏
--(fn_TeamChgMap, "TeamChgMap");		
--参数说明：参1:玩家ID, 参2:地图ID，参3:X坐标, 参4:Y坐标				参照 ACTION_TEAM_CHGMAP        = 1107
--返回组队切屏（必须队长触发）
function User_TeamChgMap(nMapId,nCellx,nCelly,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TeamChgMap 中 [nMapId]:[".. nMapId .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(nMapId) ~= "number" or nMapId%1 ~= 0 or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 User_TeamChgMap 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nCellx) ~= "number" or nCellx%1 ~= 0 or nCellx <= 0 then
		Sys_SaveAbnormalLog("函数 User_TeamChgMap 中 [nMapId]:[".. nMapId .."] 的 nCellx 只能传大于0的整数")
		return
	end
	
	if type(nCelly) ~= "number" or nCelly%1 ~= 0 or nCelly <= 0 then
		Sys_SaveAbnormalLog("函数 User_TeamChgMap 中 [nMapId]:[".. nMapId .."] 的 nCelly 只能传大于0的整数")
		return
	end	
	
	-- 判断是否是跨服玩家
	if (Get_UserMapId(nUserId) == 1002) and User_IsCross(nUserId) then
		return
	end
	
	-- 判断是否在神龙岛
	if not User_ChkShenlongIsland(nUserId) then
		return
	end

	local sLog = Sys_SetMapLog(nUserId,nMapId,nCellx,nCelly)
	if TeamChgMap(nUserId,nMapId,nCellx,nCelly) then
		sLog = sLog .. ",true"
		Sys_SaveMapLog(sLog)
		return true
	else
		sLog = sLog .. ",false"
		Sys_SaveMapLog(sLog)
		return false
	end
end

--组队切屏(神龙岛专用)
function User_TeamChgMapByShenlongIsland(nMapId,nCellx,nCelly,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TeamChgMap 中 [nMapId]:[".. nMapId .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(nMapId) ~= "number" or nMapId%1 ~= 0 or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 User_TeamChgMap 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nCellx) ~= "number" or nCellx%1 ~= 0 or nCellx <= 0 then
		Sys_SaveAbnormalLog("函数 User_TeamChgMap 中 [nMapId]:[".. nMapId .."] 的 nCellx 只能传大于0的整数")
		return
	end
	
	if type(nCelly) ~= "number" or nCelly%1 ~= 0 or nCelly <= 0 then
		Sys_SaveAbnormalLog("函数 User_TeamChgMap 中 [nMapId]:[".. nMapId .."] 的 nCelly 只能传大于0的整数")
		return
	end	
	
	-- 判断是否是跨服玩家
	if (Get_UserMapId(nUserId) == 1002) and User_IsCross(nUserId) then
		return
	end
	local sLog = Sys_SetMapLog(nUserId,nMapId,nCellx,nCelly)
	if TeamChgMap(nUserId,nMapId,nCellx,nCelly) then
		sLog = sLog .. ",true"
		Sys_SaveMapLog(sLog)
		return true
	else
		sLog = sLog .. ",false"
		Sys_SaveMapLog(sLog)
		return false
	end
end

--玩家是否队长
--(fn_IsTeamLeader, "IsTeamLeader");		
--参数说明：参1:玩家ID
--返回玩家是否队长
function User_IsTeamLeader(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_IsTeamLeader 中 nUserId 为整型并且大于等于0")
		return
	end	
	
	return IsTeamLeader(nUserId)
end

--全队执行某个LUA函数(只有队长可以触发)	
--TeamExeFuncByLeader	
--参数说明：参1:玩家ID  参2:范围(1:触发者附近 2:本地图 3:所有地图)  参3:LUA函数     失败返回false，否则返回true
--返回全队执行某个LUA函数(只有队长可以触发)	
function User_TeamExeFuncByLeader(nRange,sFunc,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TeamExeFuncByLeader  中 [sFunc]:[".. sFunc .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(nRange) ~= "number" or nRange%1 ~= 0 or nRange <= 0 or nRange > 3 then
		Sys_SaveAbnormalLog("函数 User_TeamExeFuncByLeader 中 [sFunc]:[".. sFunc .."] 的 nRange 只能传(1,2,3)的整数")
		return
	end
	
	if type(sFunc) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_TeamExeFuncByLeader 中 [sFunc]:[".. sFunc .."] 只能传字符串")
		return
	end		
	
	return TeamExeFuncByLeader(nUserId,nRange,"</F>" .. sFunc)
end

--全队执行某个LUA函数(队员可以触发)	
--TeamExeFuncByTeamer			
--参数说明：参1:玩家ID  参2:范围(1:触发者附近 2:本地图 3:所有地图)  参3:LUA函数     失败返回false，否则返回true
--返回全队执行某个LUA函数(队员可以触发)	
function User_TeamExeFuncByTeamer(nRange,sFunc,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TeamExeFuncByTeamer  中 [sFunc]:[".. sFunc .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(nRange) ~= "number" or nRange%1 ~= 0 or nRange <= 0 or nRange > 3 then
		Sys_SaveAbnormalLog("函数 User_TeamExeFuncByTeamer 中 [sFunc]:[".. sFunc .."] 的 nRange 只能传(1,2,3)的整数")
		return
	end
	
	if type(sFunc) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_TeamExeFuncByTeamer 中 [sFunc]:[".. sFunc .."] 只能传字符串")
		return
	end		
	
	return TeamExeFuncByTeamer(nUserId,nRange,"</F>" .. sFunc)
end



--将玩家传送到地图的随机点
--ACTION_USER_RAND_TRANS   = 1509,     
--bool UserRandTrans(int idUser, int idMap, int nCheck);            
--参数说明: idUser表示指定玩家, 填0表示当前玩家, idMap表示指定的地图, 为0时表示玩家当前所在地图, nCheck表示检查地图属性, 非0表示要检查. 如果失败返回false, 成功返回true.
--返回将玩家传送到地图的随机点
function User_UserRandTrans(nMapId,nCheck,nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandTrans  中 [nMapId]:[".. nMapId .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(nMapId) ~= "number" or nMapId%1 ~= 0 or nMapId < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandTrans 中 [nMapId]:[".. nMapId .."] 只能传大于等于0的整数")
		return
	end
	
	if nCheck == nil then
		nCheck = 0
	elseif type(nCheck) ~= "number" or nCheck%1 ~= 0 or nCheck < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandTrans 中 [nMapId]:[".. nMapId .."] 的 nCheck 只能传大于0的整数")
		return
	end	
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			User_TalkChannel2005(tTestTiShi[9],nUserId)
		end
	end
	
	--在监狱则不能传（地图监狱属性：256）,返回false表示没有成功传送
	local nNowMapId = Get_UserMapId(nUserId)
	local nMapType = Get_MapType(nNowMapId)
	if Sys_ParseNumbersContain(256,nMapType) then
		Sys_SaveAbnormalLog("玩家在监狱里面无法进入副本")
		return false
	end
	
	-- 判断是否是跨服玩家
	if (Get_UserMapId(nUserId) == 1002) and User_IsCross(nUserId) then
		return
	end
	
	-- 判断是否在神龙岛
	if not User_ChkShenlongIsland(nUserId) then
		return
	end
	
	local sLog = Sys_SetMapLog(nUserId,nMapId)
	if UserRandTrans(nUserId,nMapId,nCheck) and User_ChgMapEffectAdd(nUserId) then
		sLog = sLog .. ",true"
		Sys_SaveMapLog(sLog)
		return true
	else
		sLog = sLog .. ",false"
		Sys_SaveMapLog(sLog)
		return false
	end
end

-- 将玩家传送到地图的随机点(神龙岛专用)
function User_UserRandTransByShenlongIsland(nMapId,nCheck,nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandTrans  中 [nMapId]:[".. nMapId .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(nMapId) ~= "number" or nMapId%1 ~= 0 or nMapId < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandTrans 中 [nMapId]:[".. nMapId .."] 只能传大于等于0的整数")
		return
	end
	
	if nCheck == nil then
		nCheck = 0
	elseif type(nCheck) ~= "number" or nCheck%1 ~= 0 or nCheck < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandTrans 中 [nMapId]:[".. nMapId .."] 的 nCheck 只能传大于0的整数")
		return
	end	
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			User_TalkChannel2005(tTestTiShi[9],nUserId)
		end
	end
	
	--在监狱则不能传（地图监狱属性：256）,返回false表示没有成功传送
	local nNowMapId = Get_UserMapId(nUserId)
	local nMapType = Get_MapType(nNowMapId)
	if Sys_ParseNumbersContain(256,nMapType) then
		Sys_SaveAbnormalLog("玩家在监狱里面无法进入副本")
		return false
	end
	
	-- 判断是否是跨服玩家
	if (Get_UserMapId(nUserId) == 1002) and User_IsCross(nUserId) then
		return
	end
	local sLog = Sys_SetMapLog(nUserId,nMapId)
	if UserRandTrans(nUserId,nMapId,nCheck) and User_ChgMapEffectAdd(nUserId) then
		sLog = sLog .. ",true"
		Sys_SaveMapLog(sLog)
		return true
	else
		sLog = sLog .. ",false"
		Sys_SaveMapLog(sLog)
		return false
	end
end

--将玩家传送到地图的指定区域.
--bool UserRandBoundTrans(int idUser, int idMap, int nCheck， int nBoundX, int nBoundY, int nBoundCX, int nBoundCY);
--参数说明: idUser表示指定玩家, 填0表示当前玩家, idMap表示指定的地图, 为0时表示玩家当前所在地图, nCheck表示检查地图属性，非0表示要检查;
--nBoundX, nBoundY表示这个区域的左上角的坐标, nBoundCX, nBoundCY表示这个区域的范围. 如果失败返回false, 成功返回true.
--返回将玩家传送到地图的指定区域.
function User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,nBoundCX,nBoundCY,nCheck,nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans  中 [nMapId]:[".. nMapId .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(nMapId) ~= "number" or nMapId%1 ~= 0 or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if nCheck == nil then
		nCheck = 0
	elseif type(nCheck) ~= "number" or nCheck%1 ~= 0 or nCheck < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans 中 [nMapId]:[".. nMapId .."] 的 nCheck 只能传大于等于0的整数")
		return
	end	
	
	if type(nBoundX) ~= "number" or nBoundX%1 ~= 0 or nBoundX < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans 中 [nMapId]:[".. nMapId .."] 的 nBoundX 只能传大于等于0的整数")
		return
	end
	
	if type(nBoundY) ~= "number" or nBoundY%1 ~= 0 or nBoundY < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans 中 [nMapId]:[".. nMapId .."] 的 nBoundY 只能传大于等于0的整数")
		return
	end
	
	if type(nBoundCX) ~= "number" or nBoundCX%1 ~= 0 or nBoundCX < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans 中 [nMapId]:[".. nMapId .."] 的 nBoundCX 只能传大于等于0的整数")
		return
	end
	
	if type(nBoundCY) ~= "number" or nBoundCY%1 ~= 0 or nBoundCY < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans 中 [nMapId]:[".. nMapId .."] 的 nBoundCY 只能传大于等于0的整数")
		return
	end	
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			User_TalkChannel2005(tTestTiShi[9],nUserId)
		end
	end
	
	--在监狱则不能传（地图监狱属性：256）,返回false表示没有成功传送
	local nNowMapId = Get_UserMapId(nUserId)
	local nMapType = Get_MapType(nNowMapId)
	if Sys_ParseNumbersContain(256,nMapType) then
		Sys_SaveAbnormalLog("玩家在监狱里面无法进入副本")
		return false
	end
	-- 判断是否是跨服玩家
	if (Get_UserMapId(nUserId) == 1002) and User_IsCross(nUserId) then
		return
	end
	
	-- 判断是否在神龙岛
	if not User_ChkShenlongIsland(nUserId) then
		return
	end

	local sLog = Sys_SetMapLog(nUserId,nMapId,nBoundX,nBoundY,nBoundCX,nBoundCY)
	if UserRandBoundTrans(nUserId,nMapId,nCheck,nBoundX,nBoundY,nBoundCX,nBoundCY) and User_ChgMapEffectAdd(nUserId) then
		sLog = sLog .. ",true"
		Sys_SaveMapLog(sLog)
		return true
	else
		sLog = sLog .. ",false"
		Sys_SaveMapLog(sLog)
		return false
	end
end

-- 将玩家传送到地图的指定区域(神龙岛专用)
function User_UserRandBoundTransByShenlongIsland(nMapId,nBoundX,nBoundY,nBoundCX,nBoundCY,nCheck,nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans  中 [nMapId]:[".. nMapId .."] 的 nUserId 为整型并且大于等于0")
		return
	end
	
	if type(nMapId) ~= "number" or nMapId%1 ~= 0 or nMapId <= 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans 中 [nMapId]:[".. nMapId .."] 只能传大于0的整数")
		return
	end
	
	if nCheck == nil then
		nCheck = 0
	elseif type(nCheck) ~= "number" or nCheck%1 ~= 0 or nCheck < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans 中 [nMapId]:[".. nMapId .."] 的 nCheck 只能传大于等于0的整数")
		return
	end	
	
	if type(nBoundX) ~= "number" or nBoundX%1 ~= 0 or nBoundX < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans 中 [nMapId]:[".. nMapId .."] 的 nBoundX 只能传大于等于0的整数")
		return
	end
	
	if type(nBoundY) ~= "number" or nBoundY%1 ~= 0 or nBoundY < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans 中 [nMapId]:[".. nMapId .."] 的 nBoundY 只能传大于等于0的整数")
		return
	end
	
	if type(nBoundCX) ~= "number" or nBoundCX%1 ~= 0 or nBoundCX < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans 中 [nMapId]:[".. nMapId .."] 的 nBoundCX 只能传大于等于0的整数")
		return
	end
	
	if type(nBoundCY) ~= "number" or nBoundCY%1 ~= 0 or nBoundCY < 0 then
		Sys_SaveAbnormalLog("函数 User_UserRandBoundTrans 中 [nMapId]:[".. nMapId .."] 的 nBoundCY 只能传大于等于0的整数")
		return
	end	
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			User_TalkChannel2005(tTestTiShi[9],nUserId)
		end
	end
	
	--在监狱则不能传（地图监狱属性：256）,返回false表示没有成功传送
	local nNowMapId = Get_UserMapId(nUserId)
	local nMapType = Get_MapType(nNowMapId)
	if Sys_ParseNumbersContain(256,nMapType) then
		Sys_SaveAbnormalLog("玩家在监狱里面无法进入副本")
		return false
	end
	-- 判断是否是跨服玩家
	if (Get_UserMapId(nUserId) == 1002) and User_IsCross(nUserId) then
		return
	end

	local sLog = Sys_SetMapLog(nUserId,nMapId,nBoundX,nBoundY,nBoundCX,nBoundCY)
	if UserRandBoundTrans(nUserId,nMapId,nCheck,nBoundX,nBoundY,nBoundCX,nBoundCY) and User_ChgMapEffectAdd(nUserId) then
		sLog = sLog .. ",true"
		Sys_SaveMapLog(sLog)
		return true
	else
		sLog = sLog .. ",false"
		Sys_SaveMapLog(sLog)
		return false
	end
end

-- 4. 设置寄存器变量值接口：void  SetUserVarData(int UserId, int nInx, int nData);
-- 参数1：玩家id，参数2：索引;3.寄存器变量值
-- 返回值：无
function User_SetVarData(nInx,nData,nUserId)
	if type(nInx) ~= "number" or nInx > 7 or nInx < 0 or nInx%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetVarData 参数 [nInx]:[".. nInx .."] 必须为整型并且在0-7之间")
		return
	end
	
	if type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetVarData 参数 [nInx]:[".. nInx .."] 的 nData 必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetVarData 参数 [nInx]:[".. nInx .."] 的 nUserId 必须为整型并且大于等于0")
		return
	end
	
	return SetUserVarData(nUserId,nInx,nData)
end


-- 6. 设置寄存器变量值字符串类型）接口：void  SetUserVarStr(int UserId, int nInx, char* pData);
-- 参数1：玩家id，参数2：索引;3.寄存器变量值
-- 返回值：无
function User_SetVarStr(nInx,sDataStr,nUserId)
	if type(nInx) ~= "number" or nInx > 7 or nInx < 0 or nInx%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetVarStr 参数 [nInx]:[".. nInx .."] 必须为整型并且在0-7之间")
		return
	end
	
	if type(sDataStr) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_SetVarStr 参数 [nInx]:[".. nInx .."] 的 sDataStr 必须为字符串")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetVarStr 参数 [nInx]:[".. nInx .."] 的 nUserId 必须为整型并且大于等于0")
		return
	end
	
	return SetUserVarStr(nUserId,nInx,sDataStr)
end

-- //ACTION_USER_CAL_EXP 1084  ACTION_USER_TIME_TO_EXP	1086
-- bool CalcUserExp(OBJID idUser, __int64 n64ExpAdd, DWORD dwIdxLev, DWORD dwIdxPercent);
-- bool CalcUserTimeToExp(OBJID idUser, DWORD dwTime, DWORD idx);
--1084	计算指定数值的exp对当前用户的影响, 输出目标级别和百分比数值到指定的寄存器变量
--// param为"exp_add idx_lev idx_percent"
--// exp_add为添加的exp值, idx_lev为目标级别输出的寄存器变量索引, idx_percent为目标百分比输出的寄存器变量索引,
--// 寄存器变量索引为 0-7
-- bool CalcUserExp(OBJID idUser, __int64 n64ExpAdd, DWORD dwIdxLev, DWORD dwIdxPercent);
function User_CalcExp(nExpAdd,nUserId)
	if type(nExpAdd) ~= "number" or nExpAdd < 0 or nExpAdd%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CalcExp 参数 [nExpAdd]:[".. nExpAdd .."] 必须为整型并且大于等于0")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CalcExp 参数 [nExpAdd]:[".. nExpAdd .."] 的 nUserId 必须为整型并且大于等于0")
		return
	end

	return Sys_Split(CalcUserExp(nUserId,nExpAdd)," ")
end


-- 1086 // 折算一定的升级时间到当前用户的经验数字, 输出到指定的寄存器变量                                       
-- // param为"time idx_exp", time为升级时间，单位和cq_levexp表中的uplevtime相同，idx_exp为寄存器变量索引， 
-- // 寄存器变量索引为 0-7                                                                                 
-- bool CalcUserTimeToExp(OBJID idUser, DWORD dwTime, DWORD idx);
function User_CalcTimeToExp(nTime,nUserId)
	if type(nTime) ~= "number" or nTime < 0 or nTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CalcTimeToExp 参数 [nTime]:[".. nTime .."] 必须为整型并且大于等于0")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CalcTimeToExp 参数 [nTime]:[".. nTime .."] 的 nUserId 必须为整型并且大于等于0")
		return
	end
	
	return CalcUserTimeToExp(nUserId,nTime)
end


-- //user status
-- //ACTION_USER_STATUS 1082

--AddRoleStatus(objid idRole,int nType,int nPower,int nInterval,int ucLeaveTimes,int unRemainTime,int unEndTime,int ucRecordable,int usFrom,int unData)
--idRole 角色ID  nType 状态类型 nInterval 状态持续时间 ucLeaveTimes 状态次数 unRemainTime 剩余时间 unEndTime 有效时长 ucRecordable 是否入库 usFrom 数据来源 unData 其它内容(action传0)

-- bool DelRoleStatus(OBJID idUser, DWORD dwStatus);
-- bool ChkRoleStatus(OBJID idUser, DWORD dwStatus);
-- bool AddUserTeamStatus(OBJID idUser, DWORD dwStatus, int nPower , int nSecs, int nTimes);
-- bool DelUserTeamStatus(OBJID idUser, DWORD dwStatus);
-- bool ChkUserTeamStatus(OBJID idUser, DWORD dwStatus);
-- 1082,			// 附加或删除指定的状态，param为"obj opr status power seconds times", 
-- // obj支持"self", "mate", "couple", "team", 注意team不包含自己, 如果没有队伍，返回失败
-- //		另外，"mate"选项如果对方不在线，返回失败
-- // opr支持"add", "del", "chk"
-- // power为状态力度参数，
-- // seconds为状态延续的秒数
-- // times为状态激发的次数, 只激发一次的填0


--1000007--你把idRole改为 用户id,直接调用接口不行
function User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nunRemainTime,nunEndTime,nucRecordable,nusFrom,nunData,nUserId)
	if type(nStatus) ~= "number" or nStatus <= 0 or nStatus%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddRoleStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nStatus 必须为整型并且大于0")
		return
	end
	
	if type(nPower) ~= "number" or nPower < 0 or nPower%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddRoleStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nPower 必须为整型并且大于等于0")
		return
	end

	if type(nSecs) ~= "number" or nSecs < 0 or nSecs%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddRoleStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nSecs 必须为整型并且大于等于0")
		return
	end

	if type(nTimes) ~= "number" or nTimes < 0 or nTimes%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddRoleStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nTimes 必须为整型并且大于等于0")
		return
	end
	
	if type(nunRemainTime) ~= "number" or nunRemainTime < 0 or nunRemainTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddRoleStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nunRemainTime 必须为整型并且大于等于0")
		return
	end

	if type(nunEndTime) ~= "number" or nunEndTime < 0 or nunEndTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddRoleStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nunEndTime 必须为整型并且大于等于0")
		return
	end

	if type(nucRecordable) ~= "number" or nucRecordable < 0 or nucRecordable%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddRoleStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nucRecordable 必须为整型并且大于等于0")
		return
	end

	if type(nusFrom) ~= "number" or nusFrom < 0  or nusFrom%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddRoleStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nusFrom 必须为整型并且大于等于0")
		return
	end

	if type(nunData) ~= "number" or nunData < 0  or nunData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddRoleStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nunData 必须为整型并且大于等于0")
		return
	end

	if type(nUserId) ~= "number" or nUserId <= 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddRoleStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nUserId 必须为整型并且大于等于0")
		return
	end
	
	return AddRoleStatus(nUserId,nStatus,nPower,nSecs,nTimes,nunRemainTime,nunEndTime,nucRecordable,nusFrom,nunData)
end

function User_DelRoleStatus(nStatus,nUserId)
	if type(nStatus) ~= "number" or nStatus <= 0 or nStatus%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DelRoleStatus 参数 [nStatus]:[".. nStatus .."] 必须为整型并且大于0")
		return
	end
	
	if type(nUserId) ~= "number" or nUserId <= 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DelRoleStatus 参数 [nStatus]:[".. nStatus .."] 的 nUserId 必须为整型并且大于等于0")
		return
	end

	return DelRoleStatus(nUserId,nStatus)
end

function User_ChkRoleStatus(nStatus,nUserId)
	if type(nStatus) ~= "number" or nStatus <= 0 or nStatus%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkRoleStatus 参数 [nStatus]:[".. nStatus .."] 必须为整型并且大于0")
		return
	end

	if type(nUserId) ~= "number" or nUserId <= 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkRoleStatus 参数 [nStatus]:[".. nStatus .."] 的 nUserId 必须为整型并且大于等于0")
		return
	end

	return ChkRoleStatus(nUserId,nStatus)
end

-- bool AddUserTeamStatus(OBJID idUser, DWORD dwStatus, int nPower , int nSecs, int nTimes);
function User_AddTeamStatus(nStatus,nPower,nSecs,nTimes,nUserId)
	if type(nStatus) ~= "number" or nStatus <= 0 or nStatus%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddTeamStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nStatus 必须为整型并且大于0")
		return
	end

	if type(nPower) ~= "number" or nPower < 0 or nPower%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddTeamStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nPower 必须为整型并且大于等于0")
		return
	end

	if type(nSecs) ~= "number" or nSecs < 0 or nSecs%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddTeamStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nSecs 必须为整型并且大于等于0")
		return
	end
	
	if type(nTimes) ~= "number" or nTimes < 0 or nTimes%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddTeamStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nTimes 必须为整型并且大于等于0")
		return
	end

	if type(nUserId) ~= "number" or nUserId <= 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddTeamStatus 参数 [nStatus,nPower]:[".. nStatus ..",".. nPower .."] 的 nUserId 必须为整型并且大于等于0")
		return
	end

	return AddUserTeamStatus(nUserId,nStatus,nPower,nSecs,nTimes)
end

-- bool DelUserTeamStatus(OBJID idUser, DWORD dwStatus);
function User_DelTeamStatus(nStatus,nUserId)
	if type(nStatus) ~= "number" or nStatus <= 0 or nStatus%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DelTeamStatus 参数 [nStatus]:[".. nStatus .."] 必须为整型并且大于0")
		return
	end

	if type(nUserId) ~= "number" or nUserId <= 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DelTeamStatus 参数 [nStatus]:[".. nStatus .."] 的 nUserId 必须为整型并且大于等于0")
		return
	end

	return DelUserTeamStatus(nUserId,nStatus)
end

-- bool ChkUserTeamStatus(OBJID idUser, DWORD dwStatus);
function User_ChkTeamStatus(nStatus,nUserId)
	if type(nStatus) ~= "number" or nStatus <= 0 or nStatus%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkTeamStatus 参数 [nStatus]:[".. nStatus .."] 必须为整型并且大于0")
		return
	end

	if type(nUserId) ~= "number" or nUserId <= 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkTeamStatus 参数 [nStatus]:[".. nStatus .."] 的 nUserId 必须为整型并且大于0")
		return
	end

	return ChkUserTeamStatus(nUserId,nStatus)
end


-----------20140822---------
--// 记录玩家练气和武功日志. 参数说明: idUser表示玩家ID. 如果失败返回false, 成功返回true.
--LUA_FUNC(GongfuAndFateValueLog)
--	OBJID idUser = Lua_GetParamUInt(1);
--生成文件在gmlog/syn_templog
function User_GongfuAndFateValueLog(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_GongfuAndFateValueLog 中 nUserId 只能传大于等于0的整数")
		return
	end

	return GongfuAndFateValueLog(nUserId)
end




-- //检查背包剩余空间是否有data数量大小   	参1:玩家ID，参2:格子数量，	有队员空间小于nData就返回false，否则返回true
-- LUA_FUNC(TeamLeaveSpace)
	-- OBJID idUser		= Lua_GetParamUInt(1);
	-- int nData			= Lua_GetParamUInt(2);
--只能队长触发，所有队员触发都返回false
function User_ChkTeamSpace(nSpace,nUserId)
	if type(nSpace) ~= "number" or nSpace <= 0 or nSpace%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkTeamSpace 中 [nSpace]:[".. nSpace .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkTeamSpace 中 [nSpace]:[".. nSpace .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return TeamLeaveSpace(nUserId,nSpace)
end


-- //队伍成员添加物品(在调用此接口的时候必须先调用TeamLeaveSpace来判断背包空间)   	参1:玩家ID，参2:物品类型ID，		失败返回false，否则返回true
-- LUA_FUNC(TeamAddItem)
	-- OBJID idUser		= Lua_GetParamUInt(1);
	-- OBJID idItemType	= Lua_GetParamUInt(2);

function User_AddTeamItem(nItemtype,nUserId)
	if type(nItemtype) ~= "number" or nItemtype <= 0 or nItemtype%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddTeamItem 中 [nItemtype]:[".. nItemtype .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddTeamItem 中 [nItemtype]:[".. nItemtype .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	if User_ChkTeamSpace(1) then
		return TeamAddItem(nUserId,nItemtype)
	else 
		Sys_SaveAbnormalLog("队伍中有玩家的背包空间不足，请提醒队员整理背包。")
		return
	end

end



-- //队伍成员删除物品(在调用此接口之前必须先调用TeamCheckItem接口判断是否有物品)   	参1:玩家ID，参2:物品类型ID，		失败返回false，否则返回true
-- LUA_FUNC(TeamDelItem)
	-- OBJID idUser		= Lua_GetParamUInt(1);
	-- OBJID idItemType	= Lua_GetParamUInt(2);
-- //队伍成员检查是否有某物品   	参1:玩家ID，参2:物品类型ID，		失败返回false，否则返回true

function User_DelTeamItem(nItemtype,nUserId)

	if type(nItemtype) ~= "number" or nItemtype <= 0 or nItemtype%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DelTeamItem 中 [nItemtype]:[".. nItemtype .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DelTeamItem 中 [nItemtype]:[".. nItemtype .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	if User_ChkTeamItem(nItemtype) then
		return TeamDelItem(nUserId,nItemtype)
	else 
		Sys_SaveAbnormalLog("队伍中有玩家没有该物品，请提醒队员检查是否有该物品。")
		return
	end

end



-- LUA_FUNC(TeamCheckItem)
	-- OBJID idUser		= Lua_GetParamUInt(1);
	-- OBJID idItemType	= Lua_GetParamUInt(2);
--所有成员都有才ture，否则返回false
function User_ChkTeamItem(nItemtype,nUserId)
	if type(nItemtype) ~= "number" or nItemtype <= 0 or nItemtype%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkTeamItem 中 [nItemtype]:[".. nItemtype .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkTeamItem 中 [nItemtype]:[".. nItemtype .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return TeamCheckItem(nUserId,nItemtype)
end

-- //脱下装备   	参1:玩家ID，		失败返回false，否则返回true
-- LUA_FUNC(UnequipItem)
	-- OBJID idUser	= Lua_GetParamUInt(1);
	-- int nPosition	= Lua_GetParamUInt(2);

function User_UnequipItem(nPos,nUserId)
	if type(nPos) ~= "number" or nPos < 0 or nPos > 8 or nPos%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_UnequipItem 中 [nPos]:[".. nPos .."] 只能传1~8的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_UnequipItem 中 [nPos]:[".. nPos .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return UnequipItem(nUserId,nPos)
end

-- //武器技能等级检查		参1: 玩家ID，参2:技能类型ID，参3：等级	小于nLev返回false，否则返回true
-- LUA_FUNC(SkillCheckLev)
	-- OBJID idUser	= Lua_GetParamInt(1);
	-- OBJID idType	= Lua_GetParamInt(2);
	-- int	  nLev		= Lua_GetParamInt(3);

function User_SkillChkLev(nSkillType,nLev,nUserId)
	if type(nSkillType) ~= "number" or nSkillType <= 0 or nSkillType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SkillChkLev 中 [nSkillType]:[".. nSkillType .."] 只能传大于0的整数")
		return
	end

	if type(nLev) ~= "number" or nLev <= 0 or nLev%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SkillChkLev 中 [nSkillType]:[".. nSkillType .."] 的 nTime 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SkillChkLev 中 [nSkillType]:[".. nSkillType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return SkillCheckLev(nUserId,nSkillType,nLev)
end


-- //学习武器技能		参1: 玩家ID，参2:技能类型ID，参3：等级	失败返回false，否则返回true
-- LUA_FUNC(LearnSkill)
	-- OBJID idUser	= Lua_GetParamInt(1);
	-- OBJID idType	= Lua_GetParamInt(2);
	-- int	  nLev		= Lua_GetParamInt(3);
--可增可减，只要武器技能编号存在就可以设置。
--执行成功后，level字段等于nlev参数。
function User_SkillLearn(nSkillType,nLev,nUserId)
	if type(nSkillType) ~= "number" or nSkillType <= 0 or nSkillType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SkillLearn 中 [nSkillType]:[".. nSkillType .."] 只能传大于0的整数")
		return
	end

	if type(nLev) ~= "number" or nLev <= 0 or nLev%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SkillLearn 中 [nSkillType]:[".. nSkillType .."] 的 nTime 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SkillLearn 中 [nSkillType]:[".. nSkillType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return LearnSkill(nUserId,nSkillType,nLev)
end

-- //增加武器技能经验		参1: 玩家ID，参2:技能类型ID，参3：经验。	失败返回false，否则返回true
-- LUA_FUNC(SkillAddExp)
	-- OBJID idUser	= Lua_GetParamInt(1);
	-- OBJID idType	= Lua_GetParamInt(2);
	-- int	  nExp		= Lua_GetParamInt(3);
--客户端会立刻显示，但数据库不会时时保存。
--未学过的武器熟练度，数据库会新建数据，但客户端看不到。
function User_SkillAddExp(nSkillType,nExp,nUserId)
	if type(nSkillType) ~= "number" or nSkillType <= 0 or nSkillType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SkillAddExp 中 [nSkillType]:[".. nSkillType .."] 只能传大于0的整数")
		return
	end

	if type(nExp) ~= "number" or nExp <= 0 or nExp%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SkillAddExp 中 [nSkillType]:[".. nSkillType .."] 的 nExp 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SkillAddExp 中 [nSkillType]:[".. nSkillType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return SkillAddExp(nUserId,nSkillType,nExp)
end


-- //增加武器技能经验		参1: 玩家ID，参2:技能类型ID，参3：时间(程序将换算成经验)。	失败返回false，否则返回true
-- LUA_FUNC(SkillAddLevTime)
	-- OBJID idUser	= Lua_GetParamInt(1);
	-- OBJID idType	= Lua_GetParamInt(2);
	-- int	  nTime		= Lua_GetParamInt(3);
--客户端会立刻显示，但数据库不会时时保存。
--未学过的武器熟练度，数据库会新建数据，但客户端看不到。
function User_SkillAddExpByTime(nSkillType,nTime,nUserId)
	if type(nSkillType) ~= "number" or nSkillType <= 0 or nSkillType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SkillAddExpByTime 中 [nSkillType]:[".. nSkillType .."] 只能传大于0的整数")
		return
	end

	if type(nTime) ~= "number" or nTime <= 0 or nTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SkillAddExpByTime 中 [nSkillType]:[".. nSkillType .."] 的 nTime 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SkillAddExpByTime 中 [nSkillType]:[".. nSkillType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return SkillAddLevTime(nUserId,nSkillType,nTime)
end


-- //掷骰子分配物品		参1:玩家ID，参2:物品类型ID，参3：分配类型(目前只有0这一种)		失败返回false，否则返回true
-- LUA_FUNC(TeamDice)
	-- OBJID	idUser		= Lua_GetParamUInt(1);
	-- OBJID	idItemType	= Lua_GetParamUInt(2);
	-- int		nType		= Lua_GetParamUInt(3);
--队员队长都可以触发。
function User_TeamDice(nItemtype,nUserId)
	if type(nItemtype) ~= "number" or nItemtype <= 0 or nItemtype%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_TeamDice 中 [nItemtype]:[".. nItemtype .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_TeamDice 中 [nItemtype]:[".. nItemtype .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return TeamDice(nUserId,nItemtype,0)
end


-- //玩家最后一次离线时间相关操作		参1:玩家ID，参2:操作方式，参3：存取		失败返回false，否则返回true
-- LUA_FUNC(UserLastLoginOperator)
	-- OBJID	idUser		= Lua_GetParamUInt(1);
	-- OBJID	nType		= Lua_GetParamUInt(2);
	-- UINT	unParam		= Lua_GetParamUInt(3);

--nTime的格式为"yyyymmdd"，例如："20070405"
--如果最后一次离线时间，比输入的时间参数早，则返回true。
--反之，返回false。
function User_LastLoginOperatorByTime(nTime,nUserId)
	if nTime == nil then
		nTime = os.date("%Y%m%d")
	elseif type(nTime) ~= "number" or nTime <= 0 or nTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_LastLoginOperatorByTime 中 [nTime]:[".. nTime .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_LastLoginOperatorByTime 中 [nTime]:[".. nTime .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
--	BrocastMsg(2011,tostring(UserLastLoginOperator(nUserId,0,nTime)))
	return UserLastLoginOperator(nUserId,0,nTime)
end




-- //判定玩家身上是否有光环，参数说明： idUser玩家ID ,有光环返回真，无光环返回假
-- LUA_FUNC(IsExistHalo)
	-- OBJID idUser = Lua_GetParamUInt(1);

function User_IsExistHalo(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsExistHalo 中 nUserId 只能传大于等于0的整数")
		return
	end

	return IsExistHalo(nUserId)
end


-- // 删除玩家身上的光环，参数说明： idUser玩家ID
-- LUA_FUNC(ClsHalo)
	-- OBJID idUser = Lua_GetParamUInt(1);
--不论是否有无光环，删除玩家身上所有光环，且永远返回ture。
function User_DelHalo(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DelHalo 中 nUserId 只能传大于等于0的整数")
		return
	end
	
	if User_IsExistHalo(nUserId) then
		return ClsHalo(nUserId)
	else
		return true
	end
end

-- //玩家保存指定信息到gm log	参数说明：szParam 指定要保存的信息
-- LUA_FUNC(MsgToGMLog)
	-- const char* szParam= Lua_GetParamString(1);
--生成的log在gmlog/月份/action.log下
function User_GmLog(sLogParam)
	if type(sLogParam) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_GmLog 中 sLogParam 只能传字符串类型的参数")
		return
	end

	return MsgToGMLog(sLogParam)
end

--SCRIPT_PARAM_PLAYER_LookFace,	1003	//玩家头像编号	get 	set	
--玩家外形会直接改变
function User_SetLookFace(nFace,nUserId)
	if type(nFace) ~= "number" or nFace <= 0 or nFace%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetLookFace 中 [nFace]:[".. nFace .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetLookFace 中 [nFace]:[".. nFace .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return SetUserInt(nUserId,G_PLAYER_LookFace,nFace,0)
end

--SCRIPT_PARAM_PLAYER_Profession,	1005	//玩家的职业	get 	set	
--若职业编号不存在，能执行成功，但是人物面板的职业描述会出现？？
function User_SetProfession(nProfession,nUserId)
	if type(nProfession) ~= "number" or nProfession <= 0 or nProfession%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetProfession 中 [nProfession]:[".. nProfession .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetProfession 中 [nProfession]:[".. nProfession .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return SetUserInt(nUserId,G_PLAYER_Profession,nProfession,0)
end

--只能传0，变成成初始状态。
--SCRIPT_PARAM_PLAYER_Transfrom,	1024	//变身ID	get	set	
function User_SetTransform(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetTransform 中 nUserId 只能传大于等于0的整数")
		return
	end

	return SetUserInt(nUserId,G_PLAYER_Transfrom,0,0)
end

--SCRIPT_PARAM_PLAYER_Crime,	1038	//犯罪时间	get	set	
--设置不为0，玩家进入pk后的蓝名闪烁状态
function User_SetCrime(nCrime,nUserId)
	if type(nCrime) ~= "number" or nCrime <= 0 or nCrime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetCrime 中 [nCrime]:[".. nCrime .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetCrime 中 nUserId 只能传大于等于0的整数")
		return
	end

	return SetUserInt(nUserId,G_PLAYER_Crime,nCrime,0)
end

--SCRIPT_PARAM_PLAYER_XP,	1041	//当前XP值	get	set	add
function User_SetXp(nXp,nUserId)
	if type(nXp) ~= "number" or nXp < 0 or nXp%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetXp 中 [nXp]:[".. nXp .."] 只能传大于等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetXp 中 [nXp]:[".. nXp .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return SetUserInt(nUserId,G_PLAYER_XP,nXp,0)
end

--SCRIPT_PARAM_PLAYER_EP,	1042	//体力值	get	set	add
function User_SetEp(nEp,nUserId)
	if type(nEp) ~= "number" or nEp < 0 or nEp%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetEp 中 [nEp]:[".. nEp .."] 只能传大于等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetEp 中 [nEp]:[".. nEp .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return SetUserInt(nUserId,G_PLAYER_EP,nEp,0)
end

--SCRIPT_PARAM_PLAYER_AddPoint,	1043	//玩家属性点	get	set	add
function User_SetAddPoint(nAddPoint,nUserId)
	if type(nAddPoint) ~= "number" or nAddPoint < 0 or nAddPoint%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetAddPoint 中 [nAddPoint]:[".. nAddPoint .."]  只能传大于等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetAddPoint 中 [nAddPoint]:[".. nAddPoint .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return SetUserInt(nUserId,G_PLAYER_AddPoint,nAddPoint,0)
end

--SCRIPT_PARAM_PLAYER_PKProtocol,	1054	//PK模式	get	set	
--修改cq_user表的PKProtocol字段
--重新登录才有效。
function User_SetPkProtocol(nPkProtocol,nUserId)
	if  nPkProtocol == 0 or nPkProtocol == 1 or nPkProtocol == 2 then
		Sys_SaveAbnormalLog("函数 User_SetPkProtocol 中 [nPkProtocol]:[".. nPkProtocol .."] 只能传0,1,2.")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetPkProtocol 中 [nPkProtocol]:[".. nPkProtocol .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return SetUserInt(nUserId,G_PLAYER_PKProtocol,nPkProtocol,0)
end

--SCRIPT_PARAM_PLAYER_Level,	1006	//玩家等级	get		add
function User_AddLevel(nAddLevel,nUserId)
	if type(nAddLevel) ~= "number" or nAddLevel <= 0 or nAddLevel%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddLevel 中 [nAddLevel]:[".. nAddLevel .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddLevel 中 [nAddLevel]:[".. nAddLevel .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_Level,nAddLevel,0)
end

--SCRIPT_PARAM_PLAYER_Life,	1019	//玩家生命值	get		add
function User_AddLife(nAddLife,nUserId)
	if type(nAddLife) ~= "number" or nAddLife%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddLife 中 [nAddLife]:[".. nAddLife .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddLife 中 [nAddLife]:[".. nAddLife .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_Life,nAddLife,0)
end

--SCRIPT_PARAM_PLAYER_Mana,	1021	//玩家法力值	get		add
function User_AddMana(nAddMana,nUserId)
	if type(nAddMana) ~= "number" or nAddMana%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddMana 中 [nAddMana]:[".. nAddMana .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddMana 中 [nAddMana]:[".. nAddMana .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_Mana,nAddMana,0)
end

--SCRIPT_PARAM_PLAYER_Mentor,	1023	//玩家点化机会	get		add
--100点=1次点化机会
function User_AddMentor(nAddMentor,nUserId)
	if type(nAddMentor) ~= "number" or nAddMentor <= 0 or nAddMentor%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddMentor 中 [nAddMentor]:[".. nAddMentor .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddMentor 中 [nAddMentor]:[".. nAddMentor .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_Mentor,nAddMentor,0)
end

--SCRIPT_PARAM_PLAYER_Money,	1025	//玩家游戏币	get		add
function User_AddMoney(nAddMoney,nUserId)
	if type(nAddMoney) ~= "number" or nAddMoney%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddMoney 中 [nAddMoney]:[".. nAddMoney .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddMoney 中 [nAddMoney]:[".. nAddMoney .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			if nAddMoney > 0 then
				User_TalkChannel2005(string.format(tTestTiShi[1],nAddMoney),nUserId)
			else
				User_TalkChannel2005(string.format(tTestTiShi[2],math.abs(nAddMoney)),nUserId)
			end
		end
	end
	
	if nAddMoney < 0 then
		if not User_CanPutMoney2Bag(nAddMoney,nUserId) then
			error("user have no enough money")
		end
	end
	
		-- 判断是否是金币服
	if (nAddMoney > 0) and CommonFunc_ChkGoldServer() then
		if nUserId == 0 or nUserId == nil then
			nUserId = Get_UserId()
		end
		
		if not tRewardTemplate_Gold[nUserId] then
			return
		end
	end

	if AddUserInt(nUserId,G_PLAYER_Money,nAddMoney,0) then
		Sys_SetAutomatic("Money",nAddMoney,nUserId)
		return true
	else
		return false
	end
end

--SCRIPT_PARAM_PLAYER_EMoney,	1027	//玩家天石	get		add
function User_AddEMoney(nAddEMoney,nUserId,sEmoneyBuyLog)
	if type(nAddEMoney) ~= "number" or nAddEMoney%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoney 中 [nAddEMoney]:[".. nAddEMoney .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoney 中 [nAddEMoney]:[".. nAddEMoney .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			if nAddEMoney > 0 then
				User_TalkChannel2005(string.format(tTestTiShi[3],nAddEMoney),nUserId)
			else
				User_TalkChannel2005(string.format(tTestTiShi[4],math.abs(nAddEMoney)),nUserId)
			end
		end
	end
	
	if nAddEMoney < 0 then
		if Get_UserEMoney(nUserId) < math.abs(nAddEMoney) then
			error("user have no enough emoney")
		end
	end

	if AddUserInt(nUserId,G_PLAYER_EMoney,nAddEMoney,0) then
		if sEmoneyBuyLog == nil then
			Sys_SetAutomatic("EMoney",nAddEMoney,nUserId)
		else
			Sys_GetEMoneyBuyLog("EMoney",nAddEMoney,sEmoneyBuyLog,nUserId)
		end
		return true
	else
		return false
	end
end

--SCRIPT_PARAM_PLAYER_EMoneyMono,	1028	//玩家赠点	get		add
function User_AddEMoneyMono(nAddEMoneyMono,nUserId,sEmoneyBuyLog)
	if type(nAddEMoneyMono) ~= "number" or nAddEMoneyMono%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyMono 中 [nAddEMoneyMono]:[".. nAddEMoneyMono .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyMono 中 [nAddEMoneyMono]:[".. nAddEMoneyMono .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			if nAddEMoneyMono > 0 then
				User_TalkChannel2005(string.format(tTestTiShi[5],nAddEMoneyMono),nUserId)
			else
				User_TalkChannel2005(string.format(tTestTiShi[6],math.abs(nAddEMoneyMono)),nUserId)
			end
		end
	end
	
	if nAddEMoneyMono < 0 then
		if Get_UserMonoEMoney(nUserId) < math.abs(nAddEMoneyMono) then
			error("user have no enough monoemoney")
		end
	end
	
	if AddUserInt(nUserId,G_PLAYER_EMoneyMono,nAddEMoneyMono,0) then
		if sEmoneyBuyLog == nil then
			Sys_SetAutomatic("EMoneyMono",nAddEMoneyMono,nUserId)
		else
			Sys_GetEMoneyBuyLog("EMoneyMono",nAddEMoneyMono,sEmoneyBuyLog,nUserId)
		end
		return true
	else
		return false
	end
end

--SCRIPT_PARAM_PLAYER_Exp,	1029	//玩家经验(add操作不增加贡献)	get		add
function User_AddExp(nAddExp,nUserId)
	if type(nAddExp) ~= "number" or nAddExp <= 0 or nAddExp%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddExp 中 [nAddExp]:[".. nAddExp .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddExp 中 [nAddExp]:[".. nAddExp .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_Exp,nAddExp,0)
end

--SCRIPT_PARAM_PLAYER_ExpContribute,	1030	//玩家经验(add操作增加贡献)			add
function User_AddExpContribute(nAddExpContribute,nUserId)
	if type(nAddExpContribute) ~= "number" or nAddExpContribute <= 0 or nAddExpContribute%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddExpContribute 中 [nAddExpContribute]:[".. nAddExpContribute .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddExpContribute 中 [nAddExpContribute]:[".. nAddExpContribute .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_ExpContribute,nAddExpContribute,0)
end


-- SCRIP_PARAM_PLAYER_ExpPercent	1065 //按百分比增加经验(不增加贡献)。
function User_AddExpPercent(nAddPercent,nUserId)
	if type(nAddPercent) ~= "number" or nAddPercent < 0 or nAddPercent > 100 or nAddPercent%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddExpPercent 中 [nAddPercent]:[".. nAddPercent .."] 只能传0-100的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddExpPercent 中 [nAddPercent]:[".. nAddPercent .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_ExpPercent,nAddPercent,0)
end


-- SCRIP_PARAM_PLAYER_ExpPercentContribute	1066 //按百分比增加经验(增加贡献)
function User_AddExpPercentContribute(nAddPercentContribute,nUserId)
	if type(nAddPercentContribute) ~= "number" or nAddPercentContribute < 0 or nAddPercentContribute > 100 or nAddPercentContribute%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddExpPercentContribute 中 [nAddPercentContribute]:[".. nAddPercentContribute .."] 只能传0-100的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddExpPercentContribute 中 [nAddPercentContribute]:[".. nAddPercentContribute .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_ExpPercentContribute,nAddPercentContribute,0)
end

-- //增加玩家的经验时间（折算一定的升级时间到当前用户的经验）
-- //注意：nTime为增加经验的时间。单位是分钟，
-- //用到的接口：	AddUserInt 程序直接加经验
-- //User_AddExpTime(30)表示增加当前玩家30分钟经验。
function User_AddExpTime(nTime,nUserId)
	if type(nTime) ~= "number" or nTime < 0 or nTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddExpTime 参数 [nTime]:[".. nTime .."] 必须为整型并且大于等于0")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddExpTime 参数 [nTime]:[".. nTime .."] 的 nUserId 必须为整型并且大于等于0")
		return
	end
	
	local nAddTime = nTime * 10

	return AddUserInt(nUserId,G_PLAYER_ExpTime,nAddTime,0)
end

--SCRIPT_PARAM_PLAYER_PK,	1031	//玩家PK值	get		add
--30变红，100变黑
function User_AddPk(nAddPk,nUserId)
	if type(nAddPk) ~= "number" or nAddPk%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddPk 中 [nAddPk]:[".. nAddPk .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddPk 中 [nAddPk]:[".. nAddPk .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_PK,nAddPk,0)
end

--SCRIPT_PARAM_PLAYER_Strength,	1032	//玩家力量值	get		add
--建议不要使用，原因是，执行完后，面板上剩余点数显示很奇怪。
--当加数值时，如果面板在打开状态，不会直接加在力量值，而是剩余点数显示出加上的点数，且不会出现加点按钮。面板切换后，显示正常。
--当减数值时，情况同加法，只是在剩余数值部分会显示负数。
function User_AddStrength(nAddStrength,nUserId)
	if type(nAddStrength) ~= "number" or nAddStrength%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddStrength 中 [nAddStrength]:[".. nAddStrength .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddStrength 中 [nAddStrength]:[".. nAddStrength .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	if nAddStrength < 0 then
		local nStrength = Get_UserStrength()
		
		if nStrength + nAddStrength < 0 then
			Sys_SaveAbnormalLog(string.format("函数 User_AddStrength 中力量值不足%d",math.abs(nAddStrength)))
			return
		end
		
		if AddUserInt(nUserId,G_PLAYER_Strength,nAddStrength,0) then
			return User_AddAddPoint(math.abs(nAddStrength),nUserId)
		end
	else
		return AddUserInt(nUserId,G_PLAYER_Strength,nAddStrength,0)
	end
end

--SCRIPT_PARAM_PLAYER_Speed,	1033	//玩家灵巧值	get		add
function User_AddSpeed(nAddSpeed,nUserId)
	if type(nAddSpeed) ~= "number" or nAddSpeed%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSpeed 中 [nAddSpeed]:[".. nAddSpeed .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSpeed 中 [nAddSpeed]:[".. nAddSpeed .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	if nAddSpeed < 0 then
		local nSpeed = Get_UserSpeed()
		
		if nSpeed + nAddSpeed < 0 then
			Sys_SaveAbnormalLog(string.format("函数 User_AddSpeed 中灵巧值不足%d",math.abs(nAddSpeed)))
			return
		end
		
		if AddUserInt(nUserId,G_PLAYER_Speed,nAddSpeed,0) then
			return User_AddAddPoint(math.abs(nAddSpeed),nUserId)
		end
	else
		return AddUserInt(nUserId,G_PLAYER_Speed,nAddSpeed,0)
	end
end

--SCRIPT_PARAM_PLAYER_Health,	1034	//玩家体力值	get		add
function User_AddHealth(nAddHealth,nUserId)
	if type(nAddHealth) ~= "number" or nAddHealth%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddHealth 中 [nAddHealth]:[".. nAddHealth .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddHealth 中 [nAddHealth]:[".. nAddHealth .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	if nAddHealth < 0 then
		local nHealth = Get_UserHealth()
		
		if nHealth + nAddHealth < 0 then
			Sys_SaveAbnormalLog(string.format("函数 User_AddHealth 中体力值不足%d",math.abs(nAddHealth)))
			return
		end
		
		if AddUserInt(nUserId,G_PLAYER_Health,nAddHealth,0) then
			return User_AddAddPoint(math.abs(nAddHealth),nUserId)
		end
	else
		return AddUserInt(nUserId,G_PLAYER_Health,nAddHealth,0)
	end
end

--SCRIPT_PARAM_PLAYER_Soul,	1035	//玩家精神值	get		add
function User_AddSoul(nAddSoul,nUserId)
	if type(nAddSoul) ~= "number" or nAddSoul%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSoul 中 [nAddSoul]:[".. nAddSoul .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSoul 中 [nAddSoul]:[".. nAddSoul .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	if nAddSoul < 0 then
		local nSoul = Get_UserSoul()
		
		if nSoul + nAddSoul < 0 then
			Sys_SaveAbnormalLog(string.format("函数 User_AddSoul 中精神值不足%d",math.abs(nAddSoul)))
			return
		end
		
		if AddUserInt(nUserId,G_PLAYER_Soul,nAddSoul,0) then
			return User_AddAddPoint(math.abs(nAddSoul),nUserId)
		end
	else
		return AddUserInt(nUserId,G_PLAYER_Soul,nAddSoul,0)
	end
end

--SCRIPT_PARAM_PLAYER_XP,	1041	//当前XP值	get	set	add
--传入负数无效
function User_AddXp(nAddXp,nUserId)
	if type(nAddXp) ~= "number" or nAddXp <= 0 or nAddXp%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddXp 中 [nAddXp]:[".. nAddXp .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddXp 中 [nAddXp]:[".. nAddXp .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_XP,nAddXp,0)
end

--SCRIPT_PARAM_PLAYER_EP,	1042	//体力值	get	set	add
function User_AddEp(nAddEp,nUserId)
	if type(nAddEp) ~= "number" or nAddEp%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEp 中 [nAddEp]:[".. nAddEp .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEp 中 [nAddEp]:[".. nAddEp .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_EP,nAddEp,0)
end

--SCRIPT_PARAM_PLAYER_AddPoint,	1043	//玩家属性点	get	set	add
--当传入负数，若超出玩家当前剩余点数，会出现错误，剩余点数变成65535-扣太多的点数。
--所以，干脆把负数禁掉。
function User_AddAddPoint(nAddAddPoint,nUserId)
	if type(nAddAddPoint) ~= "number" or nAddAddPoint <=0 or nAddAddPoint%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddAddPoint 中 [nAddAddPoint]:[".. nAddAddPoint .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddAddPoint 中 [nAddAddPoint]:[".. nAddAddPoint .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_AddPoint,nAddAddPoint,0)
end

--SCRIPT_PARAM_PLAYER_StorageMoney,	1049	//玩家存储的钱	get		add
--当扣掉的钱大于玩家当前仓库的钱的时，不执行。
function User_AddStorageMoney(nAddStorageMoney,nUserId)
	if type(nAddStorageMoney) ~= "number" or nAddStorageMoney%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddStorageMoney 中 [nAddStorageMoney]:[".. nAddStorageMoney .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddStorageMoney 中 [nAddStorageMoney]:[".. nAddStorageMoney .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_StorageMoney,nAddStorageMoney,0)
end

--SCRIPT_PARAM_PLAYER_AddMount,	1052	//坐骑移动力			add
--输入负数无效
function User_AddMount(nAddMount,nUserId)
	if type(nAddMount) ~= "number" or nAddMount <= 0 or nAddMount%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddMount 中 [nAddMount]:[".. nAddMount .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddMount 中 [nAddMount]:[".. nAddMount .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_AddMount,nAddMount,0)
end

--SCRIPT_PARAM_PLAYER_Cultivation,	1053	//修行值	get		add
function User_AddCultivation(nAddCultivation,nUserId)
	if type(nAddCultivation) ~= "number" or nAddCultivation%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddCultivation 中 [nAddCultivation]:[".. nAddCultivation .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddCultivation 中 [nAddCultivation]:[".. nAddCultivation .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	local nUserCultivation = Get_UserCultivation(nUserId)
	if (nUserCultivation + nAddCultivation) < 0 then
		Sys_SaveAbnormalLog("函数 User_AddCultivation 中 nAddCultivation 的减小的值大于玩家拥有的值")
		return
	end
	
	
	return AddUserInt(nUserId,G_PLAYER_Cultivation,nAddCultivation,0)
end

--SCRIPT_PARAM_PLAYER_StrengthValue,	1055	//气力值	get		add
function User_AddStrengthValue(nAddStrengthValue,nUserId)
	if type(nAddStrengthValue) ~= "number" or nAddStrengthValue%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddStrengthValue 中 [nAddStrengthValue]:[".. nAddStrengthValue .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddStrengthValue 中 [nAddStrengthValue]:[".. nAddStrengthValue .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_StrengthValue,nAddStrengthValue,0)
end

--SCRIPT_PARAM_PLAYER_GodBless,	1060	//获得祝福剩余时间	get		add
--单位小时，负数无效，所以禁掉。
function User_AddBless(nAddBless,nUserId)
	if type(nAddBless) ~= "number" or nAddBless <=0 or nAddBless%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddBless 中 [nAddBless]:[".. nAddBless .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddBless 中 [nAddBless]:[".. nAddBless .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_GodBless,nAddBless,0)
end

-- /玩家添加道具状态，参数说明： idUser玩家ID , idProp状态类型ID, unRemainTime 剩余时间
-- LUA_FUNC(AddPropStatus)
	-- OBJID idUser		   = Lua_GetParamUInt(1);
	-- infoProps.idProp	   = Lua_GetParamULong(2);
	-- infoProps.unRemainTime = Lua_GetParamUInt(3);
function User_AddPropStatus(nPropId,nUnRemainTime,nUserId)
	if type(nPropId) ~= "number" or nPropId < 0 or nPropId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddPropStatus 第1个参数[nPropId]:[".. nPropId .."]必须为整型并且大于等于0")
		return
	end

	if type(nUnRemainTime) ~= "number" or nUnRemainTime < 0 or nUnRemainTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddPropStatus 中 [nPropId]:[".. nPropId .."] 的第2个参数 nUnRemainTime必须为整型并且大于等于0")
		return
	end

	if type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddPropStatus 中 [nPropId]:[".. nPropId .."] 的第3个参数nUserId必须为整型并且大于等于0")
		return
	end
	
	return AddPropStatus(nUserId,nPropId,nUnRemainTime)
end


-- //删除玩家所有的物暴、法暴等特殊属性状态，参数说明： idUser玩家ID
-- LUA_FUNC(DelAllAttribStatus)
	-- OBJID idUser = Lua_GetParamUInt(1);
function User_DelAllAttribStatus(nUserId)
	if type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DelAllAttribStatus 第1个参数nUserId必须为整型并且大于等于0")
		return
	end
	
	return DelAllAttribStatus(nUserId)
end

-- // 设置玩家死亡，并指定重生地图地点. 参数说明: idUser表示玩家ID; idRebornMap表示重生地图ID; nPosX, nPosY表示坐标. 如果失败返回false, 成功返回true.
-- LUA_FUNC(UserDie)
	-- OBJID idUser = Lua_GetParamUInt(1);
	-- OBJID idRebornMap = Lua_GetParamUInt(2);
	-- int nPosX = Lua_GetParamInt(3);
	-- int nPosY = Lua_GetParamInt(4);
function User_Die(nRebornMap,nPosX,nPosY,nUserId)
	if type(nRebornMap) ~= "number" or nRebornMap < 0 or nRebornMap%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_Die 第1个参数[nRebornMap]:[".. nRebornMap .."]必须为整型并且大于等于0")
		return
	end

	if type(nPosX) ~= "number" or nPosX < 0 or nPosX%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_Die 中 [nRebornMap]:[".. nRebornMap .."] 第2个参数nPosX必须为整型并且大于等于0")
		return
	end

	if type(nPosY) ~= "number" or nPosY < 0 or nPosY%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_Die 中 [nRebornMap]:[".. nRebornMap .."] 第3个参数nPosY必须为整型并且大于等于0")
		return
	end
	
	if type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_Die 中 [nRebornMap]:[".. nRebornMap .."] 第4个参数nUserId必须为整型并且大于等于0")
		return
	end

	return UserDie(nUserId,nRebornMap,nPosX,nPosY)
end

-- //设置玩家功夫属性的整型属性，参数说明：idUser指要操作的USERID, nIdx指SCRIPT_PARAM_GONGFU_ATTR_BEGIN-SCRIPT_PARAM_GONGFU_ATTR_END的枚举值，nData表示要设置的值，无返回值。
-- LUA_FUNC(SetGongFuInt)
	-- int idUser	= Lua_GetParamInt(1);
	-- int nIdx	= Lua_GetParamInt(2);
	-- int nData	= Lua_GetParamInt(3);
function User_SetGongFuInt(nIdx,nData,nUserId)
	if type(nIdx) ~= "number" or nIdx < 0 or nIdx%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetGongFuInt 第1个参数[nIdx]:[".. nIdx .."]必须为整型并且大于等于0")
		return
	end

	if type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetGongFuInt 中 [nIdx]:[".. nIdx .."] 第2个参数nData必须为整型并且大于等于0")
		return
	end

	if type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetGongFuInt 中 [nIdx]:[".. nIdx .."] 第3个参数nUserId必须为整型并且大于等于0")
		return
	end
	
	if IsUserAlreadyCreateGongFu(nUserId) then
		return SetGongFuInt(nUserId,nIdx,nData)
	else
		Sys_SaveAbnormalLog("函数 User_SetGongFuInt 中玩家还没有自创武功")
		return
	end
end

-- //设置玩家功夫属性的免费修炼次数
-- nData表示要设置的值，无返回值。
function User_SetGongFuFreePractNum(nData,nUserId)
	if type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetGongFuFreePractNum 第1个参数[nData]:[".. nData .."]必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetGongFuFreePractNum 中 [nData]:[".. nData .."] 第2个参数nUserId必须为整型并且大于等于0")
		return
	end

	if IsUserAlreadyCreateGongFu(nUserId) then
		return SetGongFuInt(nUserId,G_GONGFU_ATTR_FREE_CULTIVATE_PARAM,nData)
	else
		Sys_SaveAbnormalLog("函数 User_SetGongFuFreePractNum 中玩家还没有自创武功")
		return
	end
end

-- //设置玩家功夫属性的真气等级
-- nData表示要设置的值，无返回值。
function User_SetGongFuQiLeve(nData,nUserId)
	if type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetGongFuQiLeve 第1个参数[nData]:[".. nData .."]必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetGongFuQiLeve 中 [nData]:[".. nData .."] 第2个参数nUserId必须为整型并且大于等于0")
		return
	end

	if IsUserAlreadyCreateGongFu(nUserId) then
		return SetGongFuInt(nUserId,G_GONGFU_ATTR_GENUINEQI_LV,nData)
	else
		Sys_SaveAbnormalLog("函数 User_SetGongFuQiLeve 中玩家还没有自创武功")
		return
	end
end

-- //增加玩家功夫属性的整型属性值，参数说明：idUser指要操作的USERID, nIdx指SCRIPT_PARAM_GONGFU_ATTR_BEGIN-SCRIPT_PARAM_GONGFU_ATTR_END的枚举值，nData表示要设置的值，无返回值。
-- LUA_FUNC(AddGongFuInt)
	-- int idUser	= Lua_GetParamInt(1);
	-- int nIdx	= Lua_GetParamInt(2);
	-- int nData	= Lua_GetParamInt(3);
function User_AddGongFuInt(nIdx,nData,nUserId)
	if type(nIdx) ~= "number" or nIdx < 0 or nIdx%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddGongFuInt 第1个参数[nIdx]:[".. nIdx .."]必须为整型并且大于等于0")
		return
	end

	if type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddGongFuInt 中 [nIdx]:[".. nIdx .."] 第2个参数nData必须为整型并且大于等于0")
		return
	end

	if type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddGongFuInt 中 [nIdx]:[".. nIdx .."] 第3个参数nUserId必须为整型并且大于等于0")
		return
	end

	return AddGongFuInt(nUserId,nIdx,nData)
end

-- //增加玩家功夫属性的免费修炼次数
-- nData表示要增加的值，无返回值。
function User_AddGongFuFreePractNum(nData,nUserId)
	if type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddGongFuFreePractNum 第1个参数[nData]:[".. nData .."]必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddGongFuFreePractNum [nData]:[".. nData .."]第2个参数nUserId必须为整型并且大于等于0")
		return
	end

	if IsUserAlreadyCreateGongFu(nUserId) then
		return AddGongFuInt(nUserId,G_GONGFU_ATTR_FREE_CULTIVATE_PARAM,nData)
	else
		Sys_SaveAbnormalLog("函数 User_AddGongFuFreePractNum 中玩家还没有自创武功")
		return
	end
end

-- //增加玩家功夫属性的真气等级
-- nData表示要增加的值，无返回值。
function User_AddGongFuQiLeve(nData,nUserId)
	if type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddGongFuQiLeve 第1个参数[nData]:[".. nData .."]必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddGongFuQiLeve [nData]:[".. nData .."]第2个参数nUserId必须为整型并且大于等于0")
		return
	end

	if IsUserAlreadyCreateGongFu(nUserId) then
		return AddGongFuInt(nUserId,G_GONGFU_ATTR_GENUINEQI_LV,nData)
	else
		Sys_SaveAbnormalLog("函数 User_AddGongFuQiLeve 中玩家还没有自创武功")
		return
	end
end

-- //判断是否已经创建过功夫，参数说明：idUser用户ID， 返回值：已经创建返回true，否则返回false
-- LUA_FUNC(IsUserAlreadyCreateGongFu)
	-- OBJID idUser			= Lua_GetParamULong(1);
function User_IsAlreadyCreateGongFu(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsAlreadyCreateGongFu 第1个参数nUserId必须为整型并且大于等于0")
		return
	end

	return IsUserAlreadyCreateGongFu(nUserId)
end

-- //队长添加周围成员状态，参数说明：idUser角色ID	nType 状态类型, nPower  状态效果，nInterval 状态持续时间，ucLeaveTimes状态次数, unRemainTime 剩余时间, unEndTime 有效时长 , ucRecordable 是否入库, usFrom 数据来源 , unData 其它内容（action传0）
-- LUA_FUNC(AddUserAroundTeamerStatus)
	-- OBJID idUser			= Lua_GetParamULong(1);
	-- statusInfo.nType		= Lua_GetParamInt(2);
	-- statusInfo.nPower	    = Lua_GetParamInt(3);
	-- statusInfo.nInterval	= Lua_GetParamInt(4);
	-- statusInfo.ucLeaveTimes = (UCHAR)Lua_GetParamUInt(5);
	-- statusInfo.unRemainTime = Lua_GetParamUInt(6);
	-- statusInfo.unEndTime 	= Lua_GetParamUInt(7);
	-- statusInfo.ucRecordable = (UCHAR) Lua_GetParamUInt(8);
	-- USHORT usFrom		    = Lua_GetParamUInt(9);
	-- statusInfo.unData		= Lua_GetParamUInt(10);

function User_AddAroundTeamerStatus(nType,nPower,nInterval,nLeaveTimes,nRemainTime,nEndTime,nRecordable,nFrom,nData,nUserId)
	if type(nType) ~= "number" or nType%1 ~= 0 or nType <= 0 then
		Sys_SaveAbnormalLog("函数 User_AddAroundTeamerStatus 中 nType 只能传大于0的整数")
		return
	end
	
	if type(nPower) ~= "number" or nPower%1 ~= 0 or nPower < 0 then
		Sys_SaveAbnormalLog("函数 User_AddAroundTeamerStatus 中 nPower 只能传大于等于0的整数")
		return
	end
	
	if type(nInterval) ~= "number" or nInterval%1 ~= 0 or nInterval <= 0 then
		Sys_SaveAbnormalLog("函数 User_AddAroundTeamerStatus 中 nInterval 只能传大于0的整数")
		return
	end
		
	if type(nLeaveTimes) ~= "number" or nLeaveTimes%1 ~= 0 or nLeaveTimes <= 0 then
		Sys_SaveAbnormalLog("函数 User_AddAroundTeamerStatus 中 nLeaveTimes 只能传大于0的整数")
		return
	end	

	if type(nRemainTime) ~= "number" or nRemainTime%1 ~= 0 or nRemainTime <= 0 then
		Sys_SaveAbnormalLog("函数 User_AddAroundTeamerStatus 中 nRemainTime 只能传大于0的整数")
		return
	end	

	if type(nEndTime) ~= "number" or nEndTime%1 ~= 0 or nEndTime <= 0 then
		Sys_SaveAbnormalLog("函数 User_AddAroundTeamerStatus 中 nEndTime 只能传大于0的整数")
		return
	end	

	if type(nRecordable) ~= "number" or nRecordable%1 ~= 0 or nRecordable <= 0 then
		Sys_SaveAbnormalLog("函数 User_AddAroundTeamerStatus 中 nRecordable 只能传大于0的整数")
		return
	end	

	if type(nFrom) ~= "number" or nFrom%1 ~= 0 or nFrom <= 0 then
		Sys_SaveAbnormalLog("函数 User_AddAroundTeamerStatus 中 nFrom 只能传大于0的整数")
		return
	end	

	if type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddAroundTeamerStatus 中nUserId必须为整型并且大于等于0")
		return
	end
	
	if nData == nil then
		nData = 0
	elseif type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 User_AddAroundTeamerStatus 中 nData 只能传大于等于0的整数")
		return
	end

	return AddUserAroundTeamerStatus(nUserId,nType,nPower,nInterval,nLeaveTimes,nRemainTime,nEndTime,nRecordable,nFrom,nData)
end

	
-- //队长删除周围队伍成员状态，参数说明：idUser用户ID，szParam为状态类型参数字符串 最多输入15个状态类型数据
-- LUA_FUNC(DelUserAroundTeamerStatus)
	-- OBJID idUser   = Lua_GetParamULong(1);
	-- const char* szParam = Lua_GetParamString(2);
function User_DelAroundTeamerStatus(sParam,nUserId)
	if type(sParam) ~= "string"  then
		Sys_SaveAbnormalLog("函数 User_DelAroundTeamerStatus 中 [sParam]:[".. sParam .."] 只能传大于0的整数")
		return
	end
	
	if type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DelAroundTeamerStatus [sParam]:[".. sParam .."]中nUserId必须为整型并且大于等于0")
		return
	end

	return DelUserAroundTeamerStatus(nUserId,sParam)
end

	
-- //队长检查周围队伍成员状态，参数说明：idUser用户ID，szParam为状态类型参数字符串 最多输入15个状态类型数据
-- LUA_FUNC(ChkUserAroundTeamerStatus)
	-- OBJID idUser   = Lua_GetParamULong(1);
	-- const char* szParam = Lua_GetParamString(2);
function User_ChkAroundTeamerStatus(sParam,nUserId)
	if type(sParam) ~= "string"  then
		Sys_SaveAbnormalLog("函数 User_ChkAroundTeamerStatus 中 [sParam]:[".. sParam .."] 只能传大于0的整数")
		return
	end
	
	if type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkAroundTeamerStatus [sParam]:[".. sParam .."]中nUserId必须为整型并且大于等于0")
		return
	end
	return ChkUserAroundTeamerStatus(nUserId,sParam)
end

--任务轮盘抽奖界面. 
--参数说明: idUser表示玩家ID; idTask表示任务ID. 如果失败返回false, 成功返回true.
--LUA_FUNC(UserTaskReward)
--OBJID idUser = Lua_GetParamUInt(1);
--OBJID idTask = Lua_GetParamUInt(2);
--返回

function User_TaskReward(nTask,nOpt,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TaskReward [nTask,nOpt]:[".. nTask ..",".. nOpt .."]中 nUserId 只能传大于等于0的整数")
		return
	end		
	if type(nTask) ~= "number" or nTask%1 ~= 0 or nTask < 0 then
		Sys_SaveAbnormalLog("函数 User_TaskReward [nTask,nOpt]:[".. nTask ..",".. nOpt .."]中 nTask 只能传大于等于0的整数")
		return
	end
	
	if type(nOpt) ~= "number" or nOpt%1 ~= 0 or nOpt < 0 then
		Sys_SaveAbnormalLog("函数 User_TaskReward [nTask,nOpt]:[".. nTask ..",".. nOpt .."]中 nOpt 只能传大于等于0的整数")
		return
	end
	
	return UserTaskReward(nUserId,nTask,nOpt)

end

--通知客户端打开网页
--参数说明: idUser表示玩家ID, pszParam表示网址. 如果失败返回false, 成功返回true.
--LUA_FUNC(SendWebPage)
--OBJID idUser = Lua_GetParamUInt(1);
--const char* pszParam = Lua_GetParamString(2);
--返回通知客户端打开网页
function User_SendWebPage(sPszParam,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_SendWebPage [sPszParam]:[".. sPszParam .."]中 nUserId 只能传大于等于0的整数")
		return
	end		
	if type(sPszParam) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_SendWebPage 中 [sPszParam]:[".. sPszParam .."] 只能传字符串")
		return
	end		
	return SendWebPage(nUserId,sPszParam)
end

--通知客户端打开界面
--参数说明: 通知客户端打开界面. 参1: idUser表示玩家ID, 参2：idNpc表示NPC的ID，默认填0表示点击的NPC， 参3：dwDialog表示界面ID. 如果失败返回false, 成功返回true.
--LUA_FUNC(OpenDialog)
--OBJID idUser = Lua_GetParamUInt(1);

--DWORD dwDialog = Lua_GetParamUInt(2);
--返回通知客户端打开界面
function User_OpenDialog(ndwDialog,nNpcID,nUserId)
	if ndwDialog == nil then
		ndwDialog = 0
	elseif type(ndwDialog) ~= "number" or ndwDialog%1 ~= 0 or ndwDialog < 0 then
		Sys_SaveAbnormalLog("函数 User_OpenDialog 中 [ndwDialog]:[".. ndwDialog .."] 只能传大于等于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_OpenDialog [ndwDialog]:[".. ndwDialog .."]中 nUserId 只能传大于等于0的整数")
		return
	end
	
	if nNpcID == nil then
		nNpcID = 0
	elseif type(nNpcID) ~= "number" or nNpcID%1 ~= 0 or nNpcID < 0 then
		Sys_SaveAbnormalLog("函数 User_OpenDialog [ndwDialog]:[".. ndwDialog .."]中 nNpcID 只能传大于等于0的整数")
		return
	end

	return OpenDialog(nUserId,nNpcID,ndwDialog)
end

--通知客户端打开内嵌网页
--参数说明:  参1: idUser表示玩家ID, 参2：pszParam表示网址
function User_SendWebDialog(sPszParam,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_SendWebDialog [sPszParam]:[".. sPszParam .."]中 nUserId 只能传大于等于0的整数")
		return
	end		
	if type(sPszParam) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_SendWebDialog 中 [sPszParam]:[".. sPszParam .."] 只能传字符串")
		return
	end		
	return WebDialog(nUserId,sPszParam)
end


--屏幕效果,包括震动1,缩放2,变暗变亮4,由DATA来指定,可以叠加. 
--参数说明: idUser表示玩家ID, nData表示效果. 如果失败返回false, 成功返回true.
--LUA_FUNC(Screffect)
--OBJID idUser = Lua_GetParamUInt(1);
--int nData = Lua_GetParamInt(2);
--返回屏幕效果
function User_Screffect(nData,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_Screffect [nData]:[".. nData .."]中 nUserId 只能传大于等于0的整数")
		return
	end		
	if type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 User_Screffect [nData]:[".. nData .."]中 nData 只能传大于等于0的整数")
		return
	end	
	return Screffect(nUserId,nData)
end


-- 新增的lua接口：
-- // 创建副本地图。参1：idUser 玩家ID，参2：idInstanceType 副本类型。成功返回具体的副本ID，失败返回0。
-- OBJID CreateInstance(OBJID idUser, OBJID idInstanceType)
-- 注：返回的副本ID，脚本需要自己维护分组。此接口只使用于非组队形式。


function User_CreateInstance(nInstanceType,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_CreateInstance [nInstanceType]:[".. nInstanceType .."]中 nUserId 只能传大于等于0的整数")
		return
	end	

	if type(nInstanceType) ~= "number" or nInstanceType%1 ~= 0 or nInstanceType < 0 then
		Sys_SaveAbnormalLog("函数 User_CreateInstance [nInstanceType]:[".. nInstanceType .."]中 nInstanceType 只能传大于等于0的整数")
		return
	end	

	return CreateInstance(nUserId,nInstanceType)
end



--玩家进入副本
--参数说明： idUser玩家ID ,idInstanceType 副本类型, nNumLimit副本数量限制 0为不限制数量. bIsInvite是否邀请队友进入, nTimeLimit设置队友进入时间 bIsInvite为真时此值有用
--LUA_FUNC(EnterInstance)
--OBJID idUser = Lua_GetParamUInt(1);
--OBJID idInstanceType = Lua_GetParamUInt(2);
--int   nNumLimit = Lua_GetParamInt(3);
--int   nIsInvite = Lua_GetParamBool(4);
--int   nTimeLimit = Lua_GetParamInt(5);
--返回玩家进入副本




-- 己有的lua新增参数：
-- // 新增参数6：副本ID，如果是己组队的条件进入则填0。其它条件组合进入副本，需填具体的ID，即CreateInstance创建后返回值。
-- bool EnterInstance(OBJID idUser, OBJID idInstanceType, int nNumLimit, int nIsInvite, int nTimeLimit, OBJID idInstance)

function User_EnterInstance(nInstanceType,nNumLimit,nIsInvite,nTimeLimit,nUserId,nInstanceId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterInstance [nInstanceType]:[".. nInstanceType .."]中 nUserId 只能传大于等于0的整数")
		error("user have no enter Instance.")
	end		
	if type(nInstanceType) ~= "number" or nInstanceType%1 ~= 0 or nInstanceType < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterInstance [nInstanceType]:[".. nInstanceType .."]中 nInstanceType 只能传大于等于0的整数")
		error("user have no enter Instance.")
	end	
	if nNumLimit == nil then
		nNumLimit = 0
	elseif  type(nNumLimit) ~= "number" or nNumLimit%1 ~= 0 or nNumLimit < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterInstance [nInstanceType]:[".. nInstanceType .."]中 nNumLimit 只能传大于等于0的整数")
		error("user have no enter Instance.")
	end		
	if nIsInvite == nil then
		nIsInvite = 0
	elseif type(nIsInvite) ~= "number" or nIsInvite%1 ~= 0 or nIsInvite < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterInstance [nInstanceType]:[".. nInstanceType .."]中 nIsInvite 只能传大于等于0的整数")
		error("user have no enter Instance.")
	end	
	if nIsInvite == nil or nIsInvite == 0 then
		nTimeLimit = 0
	elseif type(nTimeLimit) ~= "number" or nTimeLimit%1 ~= 0 or nTimeLimit < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterInstance [nInstanceType]:[".. nInstanceType .."]中 nTimeLimit 只能传大于等于0的整数")
		error("user have no enter Instance.")
	end	
	--在监狱则不能传（地图监狱属性：256）,返回false表示没有成功进入副本
	local nUserMapId = Get_UserMapId(nUserId)
	local nMapType = Get_MapType(nUserMapId)
	if Sys_ParseNumbersContain(256,nMapType) then
		Sys_SaveAbnormalLog("玩家在监狱里面无法进入副本")
		error("user have no enter Instance.")
	end
	
	if not User_ChkShenlongIsland(nUserId) then
		return false
	end

	if nInstanceId == nil then
		nInstanceId = 0
	elseif type(nInstanceId) ~= "number" or nInstanceId%1 ~= 0 or nInstanceId < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterInstance [nInstanceType]:[".. nInstanceType .."]中 nInstanceId 只能传大于等于0的整数")
		error("user have no enter Instance.")
	end
	
	-- 成功进去副本
	if EnterInstance(nUserId,nInstanceType,nNumLimit,nIsInvite,nTimeLimit,nInstanceId) then
		User_ChgMapEffectAdd(nUserId)
		return true
	else
		error("user have no enter Instance.")
	end
	-- return EnterInstance(nUserId,nInstanceType,nNumLimit,nIsInvite,nTimeLimit,nInstanceId) and User_ChgMapEffectAdd(nUserMapId,nUserId)
end
---------玩家进入副本（神龙岛专用）
function User_EnterInstanceByShenlongIsland(nInstanceType,nNumLimit,nIsInvite,nTimeLimit,nUserId,nInstanceId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterInstance [nInstanceType]:[".. nInstanceType .."]中 nUserId 只能传大于等于0的整数")
		error("user have no enter Instance.")
	end		
	if type(nInstanceType) ~= "number" or nInstanceType%1 ~= 0 or nInstanceType < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterInstance [nInstanceType]:[".. nInstanceType .."]中 nInstanceType 只能传大于等于0的整数")
		error("user have no enter Instance.")
	end	
	if nNumLimit == nil then
		nNumLimit = 0
	elseif  type(nNumLimit) ~= "number" or nNumLimit%1 ~= 0 or nNumLimit < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterInstance [nInstanceType]:[".. nInstanceType .."]中 nNumLimit 只能传大于等于0的整数")
		error("user have no enter Instance.")
	end		
	if nIsInvite == nil then
		nIsInvite = 0
	elseif type(nIsInvite) ~= "number" or nIsInvite%1 ~= 0 or nIsInvite < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterInstance [nInstanceType]:[".. nInstanceType .."]中 nIsInvite 只能传大于等于0的整数")
		error("user have no enter Instance.")
	end	
	if nIsInvite == nil or nIsInvite == 0 then
		nTimeLimit = 0
	elseif type(nTimeLimit) ~= "number" or nTimeLimit%1 ~= 0 or nTimeLimit < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterInstance [nInstanceType]:[".. nInstanceType .."]中 nTimeLimit 只能传大于等于0的整数")
		error("user have no enter Instance.")
	end	
	--在监狱则不能传（地图监狱属性：256）,返回false表示没有成功进入副本
	local nUserMapId = Get_UserMapId(nUserId)
	local nMapType = Get_MapType(nUserMapId)
	if Sys_ParseNumbersContain(256,nMapType) then
		Sys_SaveAbnormalLog("玩家在监狱里面无法进入副本")
		error("user have no enter Instance.")
	end

	if nInstanceId == nil then
		nInstanceId = 0
	elseif type(nInstanceId) ~= "number" or nInstanceId%1 ~= 0 or nInstanceId < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterInstance [nInstanceType]:[".. nInstanceType .."]中 nInstanceId 只能传大于等于0的整数")
		error("user have no enter Instance.")
	end
	
	if EnterInstance(nUserId,nInstanceType,nNumLimit,nIsInvite,nTimeLimit,nInstanceId) and User_ChgMapEffectAdd(nUserId) then
		return true
	else
		error("user have no enter Instance.")
	end
end

-- nInstanceId = User_CreateInstance(nInstanceType,nUserId)
	




--发送文字花. 
--参数说明: idUser表示玩家ID, nFlowerType为1:红色,2:黄色,3:玫瑰色 ,4:三色花 ,5三色花; pszWords表示发送的话. 如果失败返回false, 成功返回true.
--LUA_FUNC(WordsFlower)
--OBJID idUser = Lua_GetParamUInt(1);
--int nFlowerType = Lua_GetParamInt(2);
--const char* pszWords = Lua_GetParamString(3);
--返回文字花（只有4:三色花 可以播）
function User_WordsFlower(nFlowerType,nPszWords,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_WordsFlower [nFlowerType]:[".. nFlowerType .."]中 nUserId 只能传大于等于0的整数")
		return
	end		
	if type(nFlowerType) ~= "number" or nFlowerType%1 ~= 0 or nFlowerType < 0 or nFlowerType > 5 then
		Sys_SaveAbnormalLog("函数 User_WordsFlower [nFlowerType]:[".. nFlowerType .."]中 nFlowerType 只能传(1,2,3,4,5)的整数")
		return
	end	
	if type(nPszWords) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_WordsFlower [nFlowerType]:[".. nFlowerType .."]中 nPszWords 只能传字符串")
		return
	end		
	return WordsFlower(nUserId,nFlowerType,nPszWords)
end


--执行指定的sql语句, 取回指定的一个数据字段值, 以字符串形式存入到指定的寄存器变量. 
--参数说明: idUser表示玩家ID; nIdx表示寄存器索引; pszSQL表示SQL语句. 如果失败返回false, 成功返回true.
--LUA_FUNC(UserDbField)
--OBJID idUser = Lua_GetParamUInt(1);
--int nIdx = Lua_GetParamInt(2);
--const char* pszSQL = Lua_GetParamString(3);
--返回
function User_DbField(nPszSQL,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_DbField [nPszSQL]:[".. nPszSQL .."]中 nUserId 只能传大于等于0的整数")
		return
	end		
	
	if type(nPszSQL) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_DbField [nPszSQL]:[".. nPszSQL .."]中 nPszSQL 只能传字符串")
		return
	end		
	
	return UserDbField(nUserId,nPszSQL)
end

-- 玩家等级及转世次数判断
function User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId)
	if type(nLevel) ~= "number" or nLevel%1 ~= 0 or nLevel < 0 then
		Sys_SaveAbnormalLog("函数 User_JudgeLevelAndMetempsychosis 中 nLevel 只能传大于等于0的整数")
		return
	end
	
	if type(nMetempsychosis) ~= "number" or nMetempsychosis%1 ~= 0 or nMetempsychosis < 0 then
		Sys_SaveAbnormalLog("函数 User_JudgeLevelAndMetempsychosis 中 nMetempsychosis 只能传大于等于0的整数")
		return
	end
	
	local nNowUserId = nUserId or Get_UserId()
	local nUserMetempsychosis = Get_UserMetempsychosis(nNowUserId)
	local nUserLev = Get_UserLevel(nNowUserId)
	
	if nUserMetempsychosis < nMetempsychosis then
		return false
	end
	
	if nUserMetempsychosis > nMetempsychosis then
		return true
	end
	
	if nUserLev < nLevel then
		return false
	else
		return true
	end
end

-- actionType 3701 读条封装
-- nSecs 读条的秒数
-- sContent 读条内显示的文字
-- nActionId 读条时执行的动作
-- sFunc 读条成功时执行的函数
-- sFileFunc 读条失败时执行的函数
function User_SetExplore(nSecs,sContent,nActionId,sFunc,sFileFunc,nUserId)
	if type(nSecs) ~= "number" or nSecs%1 ~= 0 or nSecs <= 0 then
		Sys_SaveAbnormalLog("函数 User_SetExplore [sContent]:[".. sContent .."]中 nSecs 只能传大于0的整数")
		return
	end 
	
	if type(sContent) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_SetExplore 中 [sContent]:[".. sContent .."] 只能传字符串类型的参数")
		return
	end
	
	if type(nActionId) ~= "number" or nActionId%1 ~= 0 or nActionId < 0 then
		Sys_SaveAbnormalLog("函数 User_SetExplore [sContent]:[".. sContent .."]中 nActionId 只能传大于等于0的整数")
		return
	end
	
	if sFunc == nil then
		sFunc = "NULL"
	elseif type(sFunc) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_SetExplore [sContent]:[".. sContent .."]中 sFunc 只能传字符")
		return
	end
	
	if sFileFunc == nil then
		sFileFunc = "NULL"
	elseif type(sFileFunc) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_SetExplore [sContent]:[".. sContent .."]中 sFileFunc 只能传字符")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetExplore [sContent]:[".. sContent .."]中 nUserId 只能传大于0的整数")
		return
	end
	
	return UserSetExplore(nUserId,nSecs,sContent,nActionId,"</F>" .. sFunc,"</F>" .. sFileFunc)
end

------------------------------------2014.12.5
-- 检测玩家是否学习指定类型的内功、
-- 参数说明：参1：idUser玩家ID； 返回值：已经学习返回true，否则返回false
function User_IsLearnInnerStrengthType(nType,nUserId)
	if type(nType) ~= "number" or nType%1 ~= 0 or nType <= 0 then
		Sys_SaveAbnormalLog("函数 User_IsLearnInnerStrengthType 中 [nType]:[".. nType .."] 只能传大于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_IsLearnInnerStrengthType [nType]:[".. nType .."]中 nUserId 只能传大于等于0的整数")
		return
	end

	return IsLearnedInnerStrengthType(nUserId,nType)
end

-- 玩家学习指定类型的内功
-- 参数说明：参1：玩家ID，参2：内功类型；返回值：成功返回true，否则返回false
function User_LearningInnerStrength(nType,nUserId)
	if type(nType) ~= "number" or nType%1 ~= 0 or nType <= 0 then
		Sys_SaveAbnormalLog("函数 User_LearningInnerStrength 中 [nType]:[".. nType .."] 只能传大于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_LearningInnerStrength [nType]:[".. nType .."]中 nUserId 只能传大于等于0的整数")
		return
	end
	
	if User_IsLearnInnerStrengthType(nType,nUserId) then
		Sys_SaveAbnormalLog("函数 User_LearningInnerStrength 中玩家已经学习过该类型内功")
		return
	else
		return LearningInnerStrength(nUserId,nType)
	end
end

-- 玩家添加修为值
function User_AddCultureValue(nValue,nUserId)
	if type(nValue) ~= "number" or nValue%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddCultureValue 中 [nValue]:[".. nValue .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddCultureValue [nValue]:[".. nValue .."]中 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_CultureValue,nValue,0)
end
--------------2014.12.17
-- 是否跨服玩家接口
-- 返回true表示是跨服玩家，false表示本服玩家
function User_IsCross(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsCross 中 nUserId 只能传大于0的整数")
		return
	end
	
	return IsOSUser(nUserId)
end

-- 是否跨服玩家接口,参数1，玩家服务器ID，参数2玩家原服ID
-- 返回true表示是跨服玩家，false表示本服玩家
function User_IsCrossByGSID(nServerId,nUserId)
	if type(nServerId) ~= "number" or nServerId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsCrossByGSID 中 [nServerId]:[".. nServerId .."] 只能传整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsCrossByGSID 中 nUserId 只能传大于0的整数")
		return
	end
	
	return IsOSUserByGSID(nServerId,nUserId)
end

-- 搬金砖：开始执行探索动作
-- BeginMoveGoldBrick（int idUser, int nAction, const char* pszDescribe, int idNpc）
-- 参数1：玩家id，如果传0，会自动取当前调用者id
-- 参数2：表示探索动作id
-- 参数3：表示描述文字
-- 参数4：点击的npc id

function User_BeginMoveGoldBrick(nActionId,sDesc,nNpcId,nUserId)
	if type(nActionId) ~= "number" or nActionId < 0 or nActionId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_BeginMoveGoldBrick 中 [nActionId]:[".. nActionId .."] 只能传大等于0的整数")
		return
	end
	
	if type(sDesc) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_BeginMoveGoldBrick [nActionId]:[".. nActionId .."]中 sDesc 只能字符串")
		return
	end
	
	if type(nNpcId) ~= "number" or nNpcId < 0 or nNpcId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_BeginMoveGoldBrick [nActionId]:[".. nActionId .."]中 nNpcId 只能传大等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_BeginMoveGoldBrick [nActionId]:[".. nActionId .."]中 nUserId 只能传大于0的整数")
		return
	end
	
	return BeginMoveGoldBrick(nUserId,nActionId,sDesc,nNpcId)
end


--------------2014.12.19
-- 以下几个接口只能在Event_Kill_User事件中使用
-- // 判断目标玩家(被杀玩家)是否为跨服玩家，  参数1：目标玩家ID（传0为默认目标玩家）， 是跨服玩家返回true,否则返回false.
function User_TargetIsCross(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_TargetIsCross 中 nUserId 只能传大于0的整数")
		return
	end
	
	return IsTargetOSUser(nUserId)
end

--------------2015.01.13
-- //通过玩家改变（增加或减少）帮派资金，参1：idUser用户ID，参2：idSyn表示帮派id，默认取当前玩家的帮派id，参3：n64Data表示要改变的数值 返回值：成功返回true，否则返回false
function User_ChgSynMoney(nGuildId,nMoneyNum,nUserId)
	if type(nGuildId) ~= "number" or nGuildId <= 0 or nGuildId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgSynMoney 中 [nGuildId]:[".. nGuildId .."] 只能大于0的整数")
		return
	end
	
	if type(nMoneyNum) ~= "number" or nMoneyNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgSynMoney [nGuildId]:[".. nGuildId .."]中 nMoneyNum 只能传整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgSynMoney [nGuildId]:[".. nGuildId .."]中 nUserId 只能传大于0的整数")
		return
	end

	return ChgSynMoneyByUser(nUserId,nGuildId,nMoneyNum)
end

-- //通过玩家改变（增加或减少）帮派天石，参1：idUser用户ID，参2：idSyn表示帮派id，默认取当前玩家的帮派id，参3：nData表示要改变的数值 返回值：已经创建返回true，否则返回false
function User_ChgSynEMoney(nGuildId,nEMoneyNum,nUserId)
	if type(nGuildId) ~= "number" or nGuildId <= 0 or nGuildId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgSynMoney 中 [nGuildId]:[".. nGuildId .."] 只能大于0的整数")
		return
	end
	
	if type(nEMoneyNum) ~= "number" or nEMoneyNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgSynMoney [nGuildId]:[".. nGuildId .."]中 nEMoneyNum 只能传整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChgSynMoney [nGuildId]:[".. nGuildId .."]中 nUserId 只能传大于0的整数")
		return
	end

	return ChgSynEMoneyByUser(nUserId,nGuildId,nEMoneyNum)
end

--------------2015.01.21
--检查玩家是否达成此项成就
--nAchPos 成就标识位
--nUserId 玩家ID
--例如：User_ChkAchByAchPosition(11002)
function User_ChkAchByAchPosition(nAchPos,nUserId)
	if type(nAchPos) ~= "number" or nAchPos <= 0 or nAchPos%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkAchByAchPosition 中 [nAchPos]:[".. nAchPos .."] 只能大于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkAchByAchPosition [nAchPos]:[".. nAchPos .."]中 nUserId 只能传大于0的整数")
		return
	end
	
	return IsOwnAchByAchPositon(nUserId,nAchPos)
end

--设置玩家达成此项成就
--nAchPos 成就标识位
--nUserId 玩家ID
--例如：User_AddAchByAchPosition(11002)
function User_AddAchByAchPosition(nAchPos,nUserId)
	if type(nAchPos) ~= "number" or nAchPos <= 0 or nAchPos%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddAchByAchPosition 中 [nAchPos]:[".. nAchPos .."] 只能大于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddAchByAchPosition [nAchPos]:[".. nAchPos .."]中 nUserId 只能传大于0的整数")
		return
	end
	
	return SetAchByPosition(nUserId,nAchPos)
end

--删除玩家此项成就
--nAchPos 成就标识位
--nUserId 玩家ID
--例如：User_DelAchByAchPosition(11002)
function User_DelAchByAchPosition(nAchPos,nUserId)
	if type(nAchPos) ~= "number" or nAchPos <= 0 or nAchPos%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DelAchByAchPosition 中 [nAchPos]:[".. nAchPos .."] 只能大于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DelAchByAchPosition [nAchPos]:[".. nAchPos .."]中 nUserId 只能传大于0的整数")
		return
	end
	
	return ClsAchByPosition(nUserId,nAchPos)
end


--播放声音
--User_MediaPlay
--LUA接口：UserMediaPlay
--参数1：sPszMedia媒体文件相对路径名
--参数2：nLoop，如果为0，则是无限循环，否则只播放一次
--参数3：nBroadcast是否为广播消息，0表示发送给当前玩家(play)，非0表示发送给附近玩家(broadcasts)
--参数4、5："x, y"为地图坐标，如果都设置为0，作为背景声效/音乐播放
--参数6：nUserId,用户ID
--返回值：成功返回true，失败返回false
--type:1029
--例如：User_MediaPlay("sound/Piano_do.mp3") 或 /callluafunc </F>User_MediaPlay</S>sound/Piano_do.mp3
function User_MediaPlay(sPszMedia,nLoop,nBroadcast,nCellx,nCelly,nUserId)
	if nBroadcast == nil then
		nBroadcast = 0
	elseif type(nBroadcast) ~= "number" or nBroadcast < 0 or nBroadcast%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_MediaPlay [sPszMedia]:[".. sPszMedia .."]中 nBroadcast 只能传大于等于0的整数")
		return
	end
	
	if nCellx == nil then
		nCellx = 0
	elseif type(nCellx) ~= "number" or nCellx%1 ~= 0 or nCellx < 0 then
		Sys_SaveAbnormalLog("函数 User_MediaPlay [sPszMedia]:[".. sPszMedia .."]中 nCellx 只能传大于等于0的整数")
		return
	end
	
	if nCelly == nil then
		nCelly = 0
	elseif type(nCelly) ~= "number" or nCelly%1 ~= 0 or nCelly < 0 then
		Sys_SaveAbnormalLog("函数 User_MediaPlay [sPszMedia]:[".. sPszMedia .."]中 nCelly 只能传大于等于0的整数")
		return
	end
	
	if nLoop == nil then
		nLoop = 1
	elseif type(nLoop) ~= "number" or nLoop%1 ~= 0 or nLoop < 0 then
		Sys_SaveAbnormalLog("函数 User_MediaPlay [sPszMedia]:[".. sPszMedia .."]中 nLoop 只能传大于等于0的整数")
		return
	end
	
	if type(sPszMedia) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_MediaPlay [sPszMedia]:[".. sPszMedia .."]中 sPszMedia 只能传字符串")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_MediaPlay [sPszMedia]:[".. sPszMedia .."]中 nUserId 只能传大于0的整数")
		return
	end
	
	return UserMediaPlay(nUserId,nBroadcast,nCellx,nCelly,nLoop,sPszMedia)
end

--------------2015.03.12
-- 1.判断是否可以放入背包一定数量的金币
-- CanPutMoney2Bag
-- 参数1：玩家id
-- 参数2：金币数,只能范围为正负21亿之间的整数
-- 返回值：true表示可以，false表示不可以，会超过上限。
function User_CanPutMoney2Bag(nBagMoneyNum,nUserId)
	if type(nBagMoneyNum) ~= "number" or nBagMoneyNum%1 ~= 0 or math.abs(nBagMoneyNum) > 2100000000  then
		Sys_SaveAbnormalLog("函数 User_CanPutMoney2Bag 中 [nBagMoneyNum]:[".. nBagMoneyNum .."] 只能范围为正负21亿之间的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CanPutMoney2Bag [nBagMoneyNum]:[".. nBagMoneyNum .."]中 nUserId 只能传大等于于0的整数")
		return
	end
	
	return CanPutMoney2Bag(nUserId,nBagMoneyNum)
end

-- 2.判断是否可以放入仓库一定数量的金币
-- CanPutMoney2Storage
-- 参数1：玩家id
-- 参数2：金币数,只能范围为正负21亿之间的整数
-- 返回值：true表示可以，false表示不可以，会超过上限。
function User_CanPutMoney2Storage(nStorageMoneyNum,nUserId)
	if type(nStorageMoneyNum) ~= "number" or nStorageMoneyNum%1 ~= 0 or math.abs(nStorageMoneyNum) > 2100000000 then
		Sys_SaveAbnormalLog("函数 User_CanPutMoney2Bag 中 [nStorageMoneyNum]:[".. nStorageMoneyNum .."] 只能范围为正负21亿之间的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CanPutMoney2Bag [nStorageMoneyNum]:[".. nStorageMoneyNum .."]中 nUserId 只能传大等于于0的整数")
		return
	end
	
	return CanPutMoney2Storage(nUserId,nStorageMoneyNum)
end

-- 玩家定时器LUA接口
-- LUA接口：User_SetTimer
-- 参数1：nTimeDelay倒计时时间
-- 参数2：sFunc定时时间到调用的脚本
-- 参数3：nType为0不做客户端表现
-- 参数4：nUserId,用户ID
-- 返回值：成功返回true，失败返回false
-- type:1071
-- 例如：/callluafunc </F>User_SetTimer</N>15</S></N>1
function User_SetTimer(nTimeDelay,sFunc,nType,nUserId)
	if type(nTimeDelay) ~= "number" or nTimeDelay%1 ~= 0 or nTimeDelay <= 0 then
		Sys_SaveAbnormalLog("函数 User_SetTimer [sFunc]:[".. sFunc .."]第一个参数nTimeDelay为整型且大于0")
		return
	end
	
	if sFunc == nil then
		sFunc = "NULL"
	elseif type(sFunc) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_SetTimer [sFunc]:[".. sFunc .."]第二个参数sFunc为字符串")
		return
	end
	
	if nType == nil then
		nType = 0
	elseif type(nType) ~= "number" or nType < 0 or nType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetTimer [sFunc]:[".. sFunc .."]中 nType 只能传大于等于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetTimer [sFunc]:[".. sFunc .."]中 nUserId 只能传大等于于0的整数")
		return
	end
	User_SetTimerNum(nUserId,sFunc,nTimeDelay)
	return UserSetTimer(nUserId,nType,"</F>" .. sFunc,nTimeDelay)
end

local tUser_TimerTest = {}
function User_SetTimerNum(nNowUserId,sFunc,nTime)
	local sIndex = sFunc
	if sIndex == nil then
		sIndex = "special"
	end
	local nUserId = nNowUserId or Get_UserId()
	local nNowTime = os.time()

	if tUser_TimerTest[nUserId] == nil then
		tUser_TimerTest[nUserId] = {}
		tUser_TimerTest[nUserId][sIndex] = {}
		tUser_TimerTest[nUserId][sIndex]["Time"] = nNowTime
		tUser_TimerTest[nUserId][sIndex]["Num"] = 1
		return
	elseif tUser_TimerTest[nUserId][sIndex] == nil then
		tUser_TimerTest[nUserId][sIndex] = {}
		tUser_TimerTest[nUserId][sIndex]["Time"] = nNowTime
		tUser_TimerTest[nUserId][sIndex]["Num"] = 1
		return
	end

	if nNowTime - tUser_TimerTest[nUserId][sIndex]["Time"] < nTime then
		tUser_TimerTest[nUserId][sIndex]["Time"] = nNowTime
		tUser_TimerTest[nUserId][sIndex]["Num"] = tUser_TimerTest[nUserId][sIndex]["Num"] + 1
		if tUser_TimerTest[nUserId][sIndex]["Put"] == nil and tUser_TimerTest[nUserId][sIndex]["Num"] > 100 then
			Sys_SaveAbnormalLog("User_SetTimer接口中" .. sIndex .. "短时间内接的太多了")
			tUser_TimerTest[nUserId][sIndex]["Put"] = 1
		end
	else
		tUser_TimerTest[nUserId][sIndex]["Time"] = nNowTime
		tUser_TimerTest[nUserId][sIndex]["Num"] = 1
	end
end

--按比例扣血LUA接口，对应action type=1510
--LUA接口：UserDecLife
--参数1：idUser,用户ID
--参数2：usType,为0表示扣除玩家总血量的百分比，为1表示扣除玩家当前血量的百分比
--参数3：nPercent，百分比，为0-100的值
--返回值：成功返回true，失败返回false

function User_DecLifePercent(nPercent,nType,nUserId)
	if type(nPercent) ~= "number" or nPercent < 0 or nPercent > 100 or nPercent%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DecLifePercent 中 [nPercent]:[".. nPercent .."] 只能传0-100的整数")
		return
	end

	if type(nType) ~= "number" or nType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DecLifePercent [nPercent]:[".. nPercent .."]中 nType 只能传0或者1")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DecLifePercent 中 nUserId 只能传大于等于0的整数")
		return
	end
	
	UserDecLife(nUserId,nType,nPercent)
end

--发送定制网络消息ActionDefine(1075)
--参数1：idUser,用户ID
--参数2：nBroadcast是否为广播消息，0表示发送给当前玩家(send)，非0表示发送给附件玩家(broadcast)
--参数3：nType为类型
--参数4：nData为数据
--返回值：成功返回true，失败返回false
--PS:User_SendNetWorkMsg(0,1000,0) 代表普通杀怪模式 0 1000 send
function User_SendNetWorkMsg(nData,nType,nBroadcast,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_SendNetWorkMsg  [nData,nType]:[".. nData ..",".. nType .."]中 nUserId 为整型并且大于等于0")
		return
	end	
	
	if nBroadcast == nil then
		nBroadcast = 0
	elseif type(nBroadcast) ~= "number" or nBroadcast%1 ~= 0 or nBroadcast < 0 then
		Sys_SaveAbnormalLog("函数 User_SendNetWorkMsg  [nData,nType]:[".. nData ..",".. nType .."]中 nBroadcast 为整型并且大于等于0")
		return
	end
	
	if nType == nil then
		nType = 1000
	elseif type(nType) ~= "number" or nType%1 ~= 0 or nType < 0 then
		Sys_SaveAbnormalLog("函数 User_SendNetWorkMsg  [nData,nType]:[".. nData ..",".. nType .."]中 nType 为整型并且大于等于0")
		return
	end
	
	if nData == nil then
		nData = 0
	elseif type(nData) ~= "number" or nData%1 ~= 0 or nData < 0 then
		Sys_SaveAbnormalLog("函数 User_SendNetWorkMsg  [nData,nType]:[".. nData ..",".. nType .."]中 nData 为整型并且大于等于0")
		return
	end
	return UserCustomMsg(nUserId,nBroadcast,nType,nData)
end

-- 判断玩家是否加入了联盟，参数1：玩家id。返回值：如果加入了联盟返回ture，否则返回false
-- bool IsInLeague（int idUser）;
function User_IsInLeague(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsInLeague 中 nUserId 只能传大于等于0的整数")
		return
	end

	return IsInLeague(nUserId)
end

--------------2015.7.6
-- 新增修改黄金联赛积分的接口
function User_AddLeaguePoint(nPoint,nUserId)
	if type(nPoint) ~= "number" or nPoint%1 ~= 0 then 
		Sys_SaveAbnormalLog("函数 User_AddLeaguePoint 中 [nPoint]:[".. nPoint .."] 只能传整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddLeaguePoint [nPoint]:[".. nPoint .."]中 nUserId 只能传大等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_League_Point,nPoint,0)
end

-- // 判断玩家是否可以掠夺当前的执政盟。参数1:玩家ID，如果可以掠夺，返回true，否则返回false。
-- IsInPlunderWar
function User_IsInPlunderWar(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsInPlunderWar 中 nUserId 只能传大等于0的整数")
		return
	end
	
	return IsInPlunderWar(nUserId)
end

-- IsLeagueLeader（int idUser）
-- 玩家是否是联盟盟主
-- 参数1：玩家id
-- 返回值：如果是返回true，否则返回false
function User_IsLeagueLeader(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsLeagueLeader 中 nUserId 只能传大等于0的整数")
		return
	end
	
	return IsLeagueLeader(nUserId)
end

-- CanAddLeagueMoney(int idLeague, int nMoney)
-- 判断联盟基金
-- 参数1：联盟id
-- 参数2：需要增加或减少的资金,正数表示增加，负数表示减少
-- 返回值:成功返回true，失败返回false
function User_CanAddLeagueMoney(nMoney,nUserId)
	if type(nMoney) ~= "number" or nMoney%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CanAddLeagueMoney 中 [nMoney]:[".. nMoney .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CanAddLeagueMoney [nMoney]:[".. nMoney .."]中 nUserId 只能传大等于0的整数")
		return
	end
	
	-- 获取联盟ID
	local nLeagueId = Get_UserLeagueId(nUserId)
	
	if type(nLeagueId) ~= "number" or nLeagueId < 0 or nLeagueId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Get_UserLeagueId [nMoney]:[".. nMoney .."]中返回的 nLeagueId 值有错")
		return
	end
	
	return CanAddLeagueMoney(nLeagueId,nMoney)
end

-- AddLeagueMoney(int idLeague, int nMoney)
-- 加联盟基金
-- 参数1：联盟id
-- 参数2：需要增加或减少的资金,正数表示增加，负数表示减少
-- 返回值：成功返回true,失败返回false
function User_AddLeagueMoney(nMoney,nUserId)
	if type(nMoney) ~= "number" or nMoney%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddLeagueMoney 中 [nMoney]:[".. nMoney .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddLeagueMoney [nMoney]:[".. nMoney .."]中 nUserId 只能传大等于0的整数")
		return
	end
	
	-- 获取联盟ID
	local nLeagueId = Get_UserLeagueId(nUserId)
	
	if type(nLeagueId) ~= "number" or nLeagueId < 0 or nLeagueId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Get_UserLeagueId [nMoney]:[".. nMoney .."]中返回的 nLeagueId 值有错")
		return
	end
	
	return AddLeagueMoney(nLeagueId,nMoney)
end

-- 添加战功值
function User_AddServiceValue(nValue,nUserId)
	if type(nValue) ~= "number" or nValue < 0 or nValue%1 ~= 0 then 
		Sys_SaveAbnormalLog("函数 User_AddServiceValue 中 [nValue]:[".. nValue .."] 只能传整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddServiceValue [nValue]:[".. nValue .."]中 nUserId 只能传大等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_Service_Value,nValue,0)
end

-- 新增一个LUA接口，用于获取玩家每天可免费领取的大喇叭数量N，对应LUA接口说明如下：
-- LUA接口：UserGetSpeakerNumEveryDay
-- 参数1：玩家ID，若为0，则为当前玩家
-- 返回值：玩家每天可免费领取的大喇叭数量，若玩家身兼数值（嫔妃、朝廷重臣、御林军），为各个职位可免费领取数相加。
function User_GetSpeakerNumEveryDay(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_GetSpeakerNumEveryDay 中 nUserId 只能传大等于0的整数")
		return
	end
	
	return UserGetSpeakerNumEveryDay(nUserId)
end

-- 给经验时间奖励，满级改成给修行值
-- 返回值 0表示参数传错了，1表示加经验，2表示加修行值
function User_AddExpOrCultureValue(nExpTime,nCultivation)
	if type(nExpTime) ~= "number" or nExpTime < 0 or nExpTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddExpOrCultureValue 中 [nExpTime]:[".. nExpTime .."] 只能传大等于0的整数")
		return 0
	end
	
	if nCultivation == nil then
		nCultivation = nExpTime/2
	elseif type(nCultivation) ~= "number" or nCultivation < 0 or nCultivation%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddExpOrCultureValue [nExpTime]:[".. nExpTime .."]中 nCultivation 只能传大等于0的整数")
		return 0
	end
	
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	
	if nLevel < G_User_MaxLev then
		User_AddExpTime(nExpTime,nUserId)
		return 1
	else
		User_AddCultivation(nCultivation,nUserId)
		return 2
	end
end

------2015.07.24新增接口

--判断玩家是否在执政盟中（国家）(只能用于调用lua的玩家本人)

function User_ChkUserInCountry(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkUserInCountry 中 nUserId 只能传大等于0的整数")
		return
	end
	
	return IsUserInCountry(nUserId)
end

-- 新增lua接口：
 -- IsConcubines（int idUser）是否是嫔妃
-- 参数1：玩家id
-- 返回值：是，返回true，否则返回false
function User_IsConcubines(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsConcubines 中 nUserId 只能传大等于0的整数")
		return
	end
	
	return IsConcubines(nUserId)
end

-- HaveConcubines（int idUser）是否有嫔妃
-- 参数1：玩家id
-- 返回值：有，返回true，否则返回false
function User_HaveConcubines(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HaveConcubines 中 nUserId 只能传大等于0的整数")
		return
	end
	
	return HaveConcubines(nUserId)
end

-- 设置玩家性别
function User_SetSex(nSex,nUserId)
	if type(nSex) ~= "number" or (nSex ~= 1 and nSex ~= 2)then
		Sys_SaveAbnormalLog("函数 User_SetSex 中 nSex 只能传1或者2")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetSex 中 nUserId 只能传大等于0的整数")
		return
	end

	return SetUserInt(nUserId,G_PLAYER_Sex,nSex,0)
end

-- 增加骑宠积分的接口
function User_AddRidingPoints(nAddRidingPoints,nUserId)
	if type(nAddRidingPoints) ~= "number" or nAddRidingPoints%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddRidingPoints 中 [nAddRidingPoints]:[".. nAddRidingPoints .."] 只能传整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddRidingPoints [nAddRidingPoints]:[".. nAddRidingPoints .."]中 nUserId 只能传大等于0的整数")
		return
	end
	
	return AddUserInt(nUserId,G_PLAYER_RidingPoints,nAddRidingPoints,0)
end

-- IsResistPlunderWar
-- 判断玩家所在联盟是否处于被掠夺状态，并且此时玩家是否处于本服，参1: 玩家ID，如果是返回true，否则返回false
function User_IsResistPlunderWar(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsResistPlunderWar 中 nUserId 只能传大等于0的整数")
		return
	end
	
	return IsResistPlunderWar(nUserId)
end

--2015年9月22添加接口

--//判断玩家当前所在服务器是否处于九龙罩状态：如果是返回true，否则返回false
--LUA_FUNC(IsImmunePlunder)

function User_IsImmunePlunder()

	return IsImmunePlunder()
end



----- 2015.10.13 ----------
-- #检测玩家是否存在师徒关系
-- 对应ACTION:1206
-- LUA接口：UserCheckGuide
-- 参数1：玩家id
-- 返回值：true表示存在师徒关系 false表示不存在师徒关系
function User_CheckGuide(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CheckGuide 中 nUserId 只能传大于等于0的整数")
		return
	end
	return UserCheckGuide(nUserId)
end

-- #检测玩家是否存在商业伙伴关系
-- 对应ACTION:1207
-- LUA接口：UserCheckTradeBuddy
-- 参数1：玩家id
-- 返回值：true表示存在商业伙伴关系 false表示不存在商业伙伴关系
function User_CheckTradeBuddy(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CheckTradeBuddy 中 nUserId 只能传大于等于0的整数")
		return
	end
	return UserCheckTradeBuddy(nUserId)
end

-- #检测玩家是否存在拍卖行物品
-- 对应ACTION:1210
-- LUA接口：UserHasAuctionItem
-- 参数1：玩家id
-- 返回值：true表示存在拍卖行物品 false表示不存在拍卖行物品
function User_HasAuctionItem(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HasAuctionItem 中 nUserId 只能传大于等于0的整数")
		return
	end
	return UserHasAuctionItem(nUserId)
end

-- #检测玩家是否存在邮件
-- 对应ACTION:1211
-- LUA接口：UserHasMail
-- 参数1：玩家id
-- 返回值：true表示有邮件 false表示没有邮件
function User_HasMail(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HasMail 中 nUserId 只能传大于等于0的整数")
		return
	end
	return UserHasMail(nUserId)
end

-- #对cq_pk_item表的检查
-- 对应ACTION:2205
-- LUA接口：UserCheckPkItem
-- 参数1：玩家id
-- 参数2：为0，表示被扣押的装备，对应action中的target，为1表示扣押别人的物品，对应action中的hunter
-- 返回值：true表示有对应物品 false表示没有对应物品
function User_CheckPkItem(nNumber,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CheckPkItem [nNumber]:[".. nNumber .."]中 nUserId 只能传大于等于0的整数")
		return
	end
	
	if type(nNumber) ~= "number" or nNumber%1 ~= 0 or nNumber < 0 or nNumber > 1 then
		Sys_SaveAbnormalLog("函数 User_CheckPkItem 第一个参数[nNumber]:[".. nNumber .."]为整型且范围在0--1")
		return
	end
	
	return UserCheckPkItem(nUserId,nNumber)
end

-- #检测玩家是否存在未领天石卡，一定要同步查表，放在最后面
-- 对应ACTION:1209
-- LUA接口：UserCheckCard
-- 参数1：玩家id 
-- 返回值：true表示有未领天石卡 false表示没有未领天石卡
-- function User_CheckCard(nUserId)
	-- if nUserId == nil then
		-- nUserId = 0
	-- elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		-- Sys_SaveAbnormalLog("函数 User_CheckCard 中 nUserId 只能传大于等于0的整数")
		-- return
	-- end
	-- return UserCheckCard(nUserId)
-- end

-- #游服发起转服要求
-- 对应ACTION:1212
-- LUA接口：UserChangeServer
-- 游服发起转服要求。 参数1：玩家ID， 参数2：转入服务器名称， 参数3：转服方式（0普通，1只转cq_user)， 参数4：消耗物品类型ID 返回值：true成功 false失败
-- 参数1：玩家id
-- 参数2：转入服务器名称
-- 参数3：转服方式（0普通，1只转cq_user)
-- 参数4：消耗物品类型ID（1、可以指定任意物品。2、如果传了参数4 并且玩家身上有对应的物品 就不消耗天石。3、参数4指定了物品 但是玩家身上没有物品 就返回false。4、不需要指定物品则配置0）
-- 参数5：转服失败回调参数(本次新增)
-- 返回值：true表示成功 false表示失败
function User_ChangeServer(sServerName,nChangeType,nChangeItemId,nUserId,nCallback)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChangeServer 中 nUserId 只能传大于等于0的整数")
		return
	end
	if type(sServerName) ~= "string" or sServerName == nil then
		Sys_SaveAbnormalLog("函数 User_ChangeServer 中 sServerName 只能传字符")
		return
	end

	if nChangeType == nil then
		nChangeType = 0
	elseif type(nChangeType) ~= "number" or (nChangeType ~= 0 and nChangeType ~= 1) then
		Sys_SaveAbnormalLog("函数 User_ChangeServer 中 nChangeType 只能传0,1")
		return
	end
	
	if nChangeItemId == nil then
		nChangeItemId = 0
	elseif type(nChangeItemId) ~= "number" or nChangeItemId < 0 or nChangeItemId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChangeServer 中 [nChangeItemId]:[".. nChangeItemId .."] 只能传大于等于0的整数")
		return
	end
	
	if nCallback == nil then
		nCallback = 0
	elseif type(nCallback) ~= "number" or nCallback < 0 or nCallback%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChangeServer 中 [nCallback]:[".. nCallback .."] 只能传大于等于0的整数")
		return
	end

	return UserChangeServer(nUserId,sServerName,nChangeType,nChangeItemId,nCallback)
end


-----------2015.11.30
-- #修改玩家头发颜色或发型
-- 对应ACTION：1005
-- LUA接口：ChangeUserHair
-- 参1：idUser用户ID， 
-- 参2：修改玩家发型编号，
-- 成功返回true，否则返回false
function User_ChangeUserHair(ntypeId,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChangeUserHair [stype,ntypeId]:[".. stype ..",".. ntypeId .."]中 nUserId 只能传大于等于0的整数")
		return
	end
	if type(ntypeId) ~= "number" or ntypeId < 0 or ntypeId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChangeUserHair [stype,ntypeId]:[".. stype ..",".. ntypeId .."]中 ntypeId 只能传大于等于0的整数")
		return
	end
	return ChangeUserHair(nUserId,ntypeId)
end


-----------2016.01.11
-- ACTION:   type=1730，param格式"opt type title savetime", opt可选"check  add  del  time", type 称号类型，title为称号ID，savetime为称号时效(分钟)
-- LUA：
       -- AwardTitle，获得称号，参1: 玩家ID，参2:称号类型，参3:称号ID，参4:时效(分钟) ，成功返回true，否则返回false

       -- DeleteTitle，删除称号，参1: 玩家ID，参2:称号类型，参3:称号ID，成功返回true，否则返回false
       -- CheckTitle，是否已拥有该称号，参1: 玩家ID，参2:称号类型，参3:称号ID，已拥有返回true，否则返回false
       -- TitleAddTime，延长称号时效，参1: 玩家ID，参2:称号类型，参3:称号ID，参4:延长时间(分钟)，成功返回true，否则返回false

function User_AwardTitle(nTitleType,nTitleId,nSaveTime,nUserId)
	if nUserId == nil then
		nUserId = 0
	end
	if type(nTitleType) ~= "number" or nTitleType <= 0 or nTitleType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardTitle [nTitleType,nTitleId]:[".. nTitleType ..",".. nTitleId .."]中 nTitleType 只能传大于零的整数")
		return
	end
	if type(nTitleId) ~= "number" or nTitleId <= 0 or nTitleId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardTitle [nTitleType,nTitleId]:[".. nTitleType ..",".. nTitleId .."]中 nTitleId 只能传大于零的整数")
		return
	end
	if nSaveTime == nil then	
		nSaveTime = 0
	elseif type(nSaveTime) ~= "number" or nSaveTime < 0 or nSaveTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardTitle [nTitleType,nTitleId]:[".. nTitleType ..",".. nTitleId .."]中 nSaveTime 只能传大于等于零的整数")
		return
	end
	
	return AwardTitle(nUserId,nTitleType,nTitleId,nSaveTime)
end
	   
	   
-- 删除称号
function User_DeleteTitle(nTitleType,nTitleId,nUserId)
	if nUserId == nil then
		nUserId = 0
	end
	if type(nTitleType) ~= "number" or nTitleType <= 0 or nTitleType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DeleteTitle [nTitleType,nTitleId]:[".. nTitleType ..",".. nTitleId .."]中 nTitleType 只能传大于零的整数")
		return
	end
	if type(nTitleId) ~= "number" or nTitleId <= 0 or nTitleId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_DeleteTitle [nTitleType,nTitleId]:[".. nTitleType ..",".. nTitleId .."]中 nTitleId 只能传大于零的整数")
		return
	end

	return DeleteTitle(nUserId,nTitleType,nTitleId)
end

-- 检查是否有该称号
function User_CheckTitle(nTitleType,nTitleId,nUserId,nChkType)
	if nUserId == nil then
		nUserId = 0
	end
	if type(nTitleType) ~= "number" or nTitleType <= 0 or nTitleType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CheckTitle [nTitleType,nTitleId]:[".. nTitleType ..",".. nTitleId .."]中 nTitleType 只能传大于零的整数")
		return
	end
	if type(nTitleId) ~= "number" or nTitleId <= 0 or nTitleId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CheckTitle [nTitleType,nTitleId]:[".. nTitleType ..",".. nTitleId .."]中 nTitleId 只能传大于零的整数")
		return
	end
	
	if nChkType == nil then
		nChkType = 1
	elseif type(nChkType) ~= "number" or (nChkType ~= 0 and nChkType ~= 1 and nChkType ~= 2) then
		Sys_SaveAbnormalLog("函数 User_CheckTitle [nTitleType,nTitleId]:[".. nTitleType ..",".. nTitleId .."]中 nChkType 只能传0,1,2")
		return
	end

	return CheckTitle(nUserId,nTitleType,nTitleId,nChkType)
end

-- 延长该称号的时间
function User_TitleAddTime(nTitleType,nTitleId,nAddTime,nUserId)
	if nUserId == nil then
		nUserId = 0
	end
	if type(nTitleType) ~= "number" or nTitleType <= 0 or nTitleType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_TitleAddTime [nTitleType,nTitleId]:[".. nTitleType ..",".. nTitleId .."]中 nTitleType 只能传大于零的整数")
		return
	end
	if type(nTitleId) ~= "number" or nTitleId <= 0 or nTitleId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_TitleAddTime [nTitleType,nTitleId]:[".. nTitleType ..",".. nTitleId .."]中 nTitleId 只能传大于零的整数")
		return
	end
	if type(nAddTime) ~= "number" or nAddTime < 0 or nAddTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_TitleAddTime 中 nAddTime 只能传大于等于零的整数")
		return
	end
	
	return TitleAddTime(nUserId,nTitleType,nTitleId,nAddTime)
end

-- 2016.02.16
--添加：判断玩家外套仓库中是否有某个ID的外套

-- TestUserHaveCoat  参1: 玩家ID 参2:外套类型 参3:外套ID

function User_ChkStorageCoat(nCoatType,nCoatId,nUserId)
	if nUserId == nil then
		nUserId = 0
	end
	
	if type(nCoatType) ~= "number" or nCoatType <= 0 or nCoatType > 2 or nCoatType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkStorageCoat [nCoatType,nCoatId]:[".. nCoatType ..",".. nCoatId .."]中 nCoatType 只能传1~2之间的整数")
		return
	end
	
	if type(nCoatId) ~= "number" or nCoatId <= 0 or nCoatId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkStorageCoat [nCoatType,nCoatId]:[".. nCoatType ..",".. nCoatId .."]中 nCoatId 只能传大于0的整数")
		return
	end
	
	return TestUserHaveCoat(nUserId,nCoatType,nCoatId)
end


-- 对应actiontype = 137
-- 用于移动端出图片引导
-- LUA接口：NoviceTeaching
-- 参1：玩家ID
-- 参2：idTitle，要显示的手势图片ID
function User_NoviceTeaching(nTitleId,nUserId)
	if type(nTitleId) ~= "number" or nTitleId <= 0 or nTitleId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_NoviceTeaching 中 [nTitleId]:[".. nTitleId .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_NoviceTeaching [nTitleId]:[".. nTitleId .."]中 nUserId 只能传大等于0的整数")
		return
	end
	
	return UserActivityTeaching(nUserId,nTitleId)
end

-- 2016.03.29
--User_UpLevelTo(nLevel)
--玩家直接升级到nLevel级，输入等级超过玩家本身不起作用
--nLevel：需要达到的等级
function User_UpLevelTo(nLevel)
	if type(nLevel) ~= "number" or (nLevel <= 0 or nLevel > 140) or nLevel%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_UpLevelTo 中 nLevel 只能传1~140之间的整数")
		return
	end

	local nUserLevel = Get_UserLevel()
	local nExpTime = 0
	if (nUserLevel >= nLevel) then 
		return
	end
	for i=nUserLevel,nLevel-1 do
		nExpTime = nExpTime +tUpLevTime[i]
	end
	User_AddExpTime(math.ceil(nExpTime/10))
end 

--玩家地图传送光效播放
function User_ChgMapEffectAdd(nUserId)
	return User_EffectAdd("self","moveback",nUserId)
end



------------------------------------------------------16.04.29--------------------------------------
--添加自动挂机和结束自动挂机接口
-- StartHangUp   参数1:玩家ID  成功返回true, 失败返回false

function User_StartHangUp(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	
	return StartHangUp(nNowUserId)
end


-- StopHangUp   参数1:玩家ID  成功返回true, 失败返回false
function User_StopHangUp(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	
	return StopHangUp(nNowUserId)
end

------------------------------------------------------16.05.25--------------------------------------
--添加神品精炼排行
--计算装备位分数并上榜，参数1 玩家ID，参数2：装备位
--bool CalEquipItemScore(OBJD idUser,int nEquipPos)

--返回值为false表示参数错误，在调用此接口前需先判断玩家条件（此请于策划沟通）
-- 装备位：
-- 头部：   1
-- 项链：   2
-- 衣服：   3
-- 右武器： 4
-- 左武器： 5
-- 戒指：   6
-- 鞋子：   8
-- 马鞭：   18
-- 翅膀：   19
-- 骑宠：   12
-- 凌霄扇： 10
-- 混元塔： 11


function User_CalEquipItemScore(nEquipPos,nUserId)
	if nUserId == nil then
		nUserId = 0
	end
	
	if type(nEquipPos) ~= "number" or nEquipPos <= 0 or nEquipPos%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CalEquipItemScore 中 nEquipPos 只能传大于0的整数")
		return
	end	

	return CalEquipItemScore(nUserId,nEquipPos)
end



------2016.6.21
-- 接口名: AwardEmoticons
-- 用途: 获得表情包，在获得之前需要判断该表情包是否已经存在。
-- 参数1：玩家id
-- 参数2:表情包ID
-- 参数3:时效(分钟)
-- 返回值：成功返回true，否则返回false
function User_AwardEmoticons(nLookId,nTime,nUserId)
	if type(nLookId) ~= "number" or nLookId < 0 or nLookId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardEmoticons 中 [nLookId]:[".. nLookId .."] 只能传大于等于0的整数" .. nLookId)
		return
	end
	
	if type(nTime) ~= "number" or nTime < 0 or nTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardEmoticons [nLookId]:[".. nLookId .."]中 nTime 只能传大于等于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardEmoticons [nLookId]:[".. nLookId .."]中 nUserId 只能传大于等于0的整数")
		return
	end
	
	return AwardEmoticons(nUserId,nLookId,nTime)
end
    
-- 接口名:    IsEmoticonsExist
-- 用途: 判断是否已经有某个表情包
-- 参数1：玩家id
-- 参数2:表情包ID
-- 返回值：有返回true，否则返回false
function User_IsEmoticonsExist(nLookId,nUserId)
	if type(nLookId) ~= "number" or nLookId < 0 or nLookId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsEmoticonsExist 中 [nLookId]:[".. nLookId .."] 只能传大于等于0的整数" .. nLookId)
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsEmoticonsExist [nLookId]:[".. nLookId .."]中 nUserId 只能传大于等于0的整数")
		return
	end
	
	return IsEmoticonsExist(nUserId,nLookId)
end

-- 新增lua接口：打开兑换仓库 
-- OpenExchangeShop
-- 参数1：玩家id 
-- 参数2：npc id 
-- 返回值：成功返回true。失败返回false
function User_OpenExchangeShop(nNpcId,nUserId)
	if type(nNpcId) ~= "number" or nNpcId < 0 or nNpcId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_OpenExchangeShop 中 [nNpcId]:[".. nNpcId .."] 只能传大于等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_OpenExchangeShop [nNpcId]:[".. nNpcId .."]中 nUserId 只能传大于等于0的整数")
		return
	end
	
	return OpenExchangeShop(nUserId,nNpcId)
end

-- 增加运营活动进度值 
-- AddOperatingActValue
-- 参数1：玩家id
-- 参数2：活动类型
-- 参数3：增加的进度值（可以为负数）
-- 返回值：成功返回true,否则返回false
function User_AddOperatingActValue(nActivityType,nAddValue,nUserId)
	if type(nActivityType) ~= "number" or nActivityType < 0 or nActivityType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddOperatingActValue 中 [nActivityType]:[".. nActivityType .."] 只能传大于等于0的整数" .. nActivityType)
		return
	end
	
	if type(nAddValue) ~= "number" or nAddValue%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddOperatingActValue [nActivityType]:[".. nActivityType .."]中 nAddValue 只能传整数" .. nActivityType)
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddOperatingActValue 中 nUserId 只能传大于等于0的整数")
		return
	end
	
	return AddOperatingActValue(nUserId,nActivityType,nAddValue)
end

-- 设置运营活动进度值
-- SetOperatingActValue
-- 参数1：玩家id
-- 参数2：活动类型
-- 参数3：进度值
-- 返回值：成功返回true,否则返回false
function User_SetOperatingActValue(nActivityType,nValue,nUserId)
	if type(nActivityType) ~= "number" or nActivityType < 0 or nActivityType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetOperatingActValue 中 nActivityType 只能传大于等于0的整数" .. nActivityType)
		return
	end
	
	if type(nValue) ~= "number" or nValue < 0 or nValue%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetOperatingActValue 中 nValue 只能传大于等于0的整数" .. nActivityType)
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetOperatingActValue 中 nUserId 只能传大于等于0的整数")
		return
	end
	
	return SetOperatingActValue(nUserId,nActivityType,nValue)
end

-- //添加状态前判断状态是否被玩家免疫 ;
-- IsStatusImmune
-- 参数1：玩家id
-- 参数2：需要检测的状态
-- 返回值：状态被免疫返回true，否则返回false
function User_IsStatusImmune(nPower,nUserId)
	if type(nPower) ~= "number" or nPower < 0 or nPower%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsStatusImmune 中 [nPower]:[".. nPower .."] 只能传大于等于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsStatusImmune [nPower]:[".. nPower .."]中 nUserId 只能传大于等于0的整数")
		return
	end
	
	return IsStatusImmune(nUserId,nPower)
end


-- 判断玩家登陆的是盒子 还是 PC端

-- 新增LUA接口IsUserClientType()，参数1：玩家ID；参数2：客户端类型（0：正常PC；1：盒子）

function User_CheckClientType(nClientType,nUserId)
	if type(nClientType) ~= "number" or (nClientType ~= 0 and nClientType ~= 1) then
		Sys_SaveAbnormalLog("函数 User_CheckClientType 中 nClientType 只能传0或者1")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CheckClientType 中 nUserId 只能传大于等于0的整数")
		return
	end
	
	return IsUserClientType(nUserId,nClientType)
end

-- // 打开节拍器抽奖界面，参1：idUser表示玩家ID，参2：nType表示节拍器类型，成功返回true，失败返回false
-- bool CardsLotteryBegin(OBJID idUser, int nType);

-- 玩家打开节拍器抽奖界面
function User_OpenRewardInterface(nType,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	if type(nType) ~= "number" or nType <= 0 or nType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_OpenRewardInterface 中 [nType]:[".. nType .."] 只能传大于0的整数")
		return
	end
	
	return CardsLotteryBegin(nNowUserId,nType)
end

--------------2016.08.15
-- 1.判断是否可以放入背包一定数量的欢乐豆
-- CanPutBeans2Bag
-- 参数1：idUser表示玩家id
-- 参数2：n64Beans表示要加入背包的金币数
-- 返回：true表示可以放入背包，false表示会超出上限，不可放入背包

-- function User_CanPutBeans2Bag(nBagBeansNum,nUserId)
	-- if type(nBagBeansNum) ~= "number" or nBagBeansNum%1 ~= 0 or math.abs(nBagBeansNum) > 2100000000  then
		-- Sys_SaveAbnormalLog("函数 User_CanPutBeans2Bag 中 [nBagBeansNum]:[".. nBagBeansNum .."] 只能范围为正负21亿之间的整数")
		-- return
	-- end

	-- if nUserId == nil then
		-- nUserId = 0
	-- elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		-- Sys_SaveAbnormalLog("函数 User_CanPutBeans2Bag [nBagBeansNum]:[".. nBagBeansNum .."]中 nUserId 只能传大等于于0的整数")
		-- return
	-- end
	
	-- return CanPutBeans2Bag(nUserId,nBagBeansNum)
-- end

--G_PLAYER_Beans,	1079	//玩家金豆	get		add
function User_AddBeans(nAddBeans,nUserId)
	if type(nAddBeans) ~= "number" or nAddBeans%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddBeans 中 [nAddBeans]:[".. nAddBeans .."]  只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddBeans [nAddBeans]:[".. nAddBeans .."]中 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_PLAYER_Beans,nAddBeans,0)
end

----2016.08.29---------------------
		-- ACTION_ADD_PROCESS_TASK_SCHEDULE	= 1725,			// 增加阶段性任务的进度（data填任务类型）
-- //##【已有】LUA接口：AddProcessTaskSchedule
-- //##参1：玩家id
-- //##参2：任务类型
-- //##参3：条件
-- //##参4：进度值
-- //##返回值：成功返回ture，失败返回false	
function User_AddProcessTaskSchedule(nTaskId,nCondition,nValue,nUserId)
	if type(nTaskId) ~= "number" or nTaskId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddProcessTaskSchedule 中 [nTaskId]:[".. nTaskId .."] 只能传整数")
		return
	end
	
	if type(nCondition) ~= "number" or nCondition%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddProcessTaskSchedule [nTaskId]:[".. nTaskId .."]中 nCondition 只能传整数")
		return
	end
	
	if type(nValue) ~= "number" or nValue%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddProcessTaskSchedule [nTaskId]:[".. nTaskId .."]中 nValue 只能传整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddProcessTaskSchedule [nTaskId]:[".. nTaskId .."]中 nUserId 只能传大于等于0的整数")
		return
	end
	
	return AddProcessTaskSchedule(nUserId,nTaskId,nCondition,nValue)
end

----2016.10.08新增代币，金钱获得打log接口
function User_AddMoneyNew(nAddMoney,nLogId,nUserId)
	if type(nAddMoney) ~= "number" or nAddMoney%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddMoneyNew [nAddMoney,nLogId]:[".. nAddMoney ..",".. nLogId .."]中 nAddMoney 只能传整数")
		return
	end
	
	if type(nLogId) ~= "number" or nLogId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddMoneyNew [nAddMoney,nLogId]:[".. nAddMoney ..",".. nLogId .."]中 nLogId 只能传整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddMoneyNew [nAddMoney,nLogId]:[".. nAddMoney ..",".. nLogId .."]中 nUserId 只能传大于等于0的整数")
		return
	end

	local sLogText = "0,0,0,0," .. nLogId ..",2,1," .. nAddMoney
	
	-- 判断是否是金币服
	if (nAddMoney > 0) and CommonFunc_ChkGoldServer() then
		if nUserId == 0 or nUserId == nil then
			nUserId = Get_UserId()
		end
		
		if not tRewardTemplate_Gold[nUserId] then
			return
		end
	end

	return AddUserInt(nUserId,G_PLAYER_Money,nAddMoney,0) and Sys_SaveRwbRecordLog(sLogText,nUserId)
end

function User_AddEMoneyNew(nAddEMoney,nLogId,nUserId)
	if type(nAddEMoney) ~= "number" or nAddEMoney%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyNew [nAddEMoney,nLogId]:[".. nAddEMoney ..",".. nLogId .."]中 nAddEMoney 只能传整数")
		return
	end
	
	if type(nLogId) ~= "number" or nLogId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyNew [nAddEMoney,nLogId]:[".. nAddEMoney ..",".. nLogId .."]中 nLogId 只能传整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyNew [nAddEMoney,nLogId]:[".. nAddEMoney ..",".. nLogId .."]中 nUserId 只能传大于等于0的整数")
		return
	end

	local sLogText = "0,0,0,0," .. nLogId ..",2,2," .. nAddEMoney

	return AddUserInt(nUserId,G_PLAYER_EMoney,nAddEMoney,0) and Sys_SaveRwbRecordLog(sLogText,nUserId)
end

function User_AddEMoneyMonoNew(nAddEMoneyMono,nLogId,nUserId)
	if type(nAddEMoneyMono) ~= "number" or nAddEMoneyMono%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyMonoNew [nAddEMoneyMono,nLogId]:[".. nAddEMoneyMono ..",".. nLogId .."]中 nAddEMoneyMono 只能传整数")
		return
	end
	
	if type(nLogId) ~= "number" or nLogId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyMonoNew [nAddEMoneyMono,nLogId]:[".. nAddEMoneyMono ..",".. nLogId .."]中 nLogId 只能传整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyMonoNew [nAddEMoneyMono,nLogId]:[".. nAddEMoneyMono ..",".. nLogId .."]中 nUserId 只能传大于等于0的整数")
		return
	end

	local sLogText = "0,0,0,0," .. nLogId ..",2,3," .. nAddEMoneyMono

	return AddUserInt(nUserId,G_PLAYER_EMoneyMono,nAddEMoneyMono,0) and Sys_SaveRwbRecordLog(sLogText,nUserId)
end

-------2016.10.24
-- 判断玩家标志位：参数一：玩家ID，参数二：标志值
function User_TestFlag(nFlag,nUserId)
	if type(nFlag) ~= "number" or (nFlag ~= 1 and nFlag ~= 2 and nFlag ~= 4 and nFlag ~= 8) then
		Sys_SaveAbnormalLog("函数 User_TestFlag 中 [nFlag]:[".. nFlag .."] 只能传1,2,4,8")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_TestFlag [nFlag]:[".. nFlag .."] 中 nUserId 只能传大于等于0的整数")
		return
	end
	
	return TestUserFlag(nUserId,nFlag)
end

-- 获取玩家是近战铁扇还是远程铁扇
-- 返回true是近身，返回false是远程
function User_GetIroFanMode(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_GetIroFanMode 中 nUserId 只能传大于等于0的整数")
		return
	end
	
	local nPro = Get_UserProfession(nUserId)
	
	if not (nPro >= G_PRO_IroFan0 and nPro <= G_PRO_IroFan5) then
		Sys_SaveAbnormalLog("函数 User_GetIroFanMode 中玩家不是铁扇门")
		return
	end
	
	return User_TestFlag(8,nUserId)
end

-- 切换玩家铁扇的远近方式，参数1：玩家ID，参数2：标志值（铁扇近身填8，远程填0）
-- 成功返回true,失败返回false
function User_SwitchIroFanNearOrFar(nFlag,nUserId)
	if type(nFlag) ~= "number" or (nFlag ~= 0 and nFlag ~= 8) then
		Sys_SaveAbnormalLog("函数 User_SwitchIroFanNearOrFar 中 nFlag 只能传0,8")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SwitchIroFanNearOrFar 中 nUserId 只能传大于等于0的整数")
		return
	end

	return SwitchIroFanNearOrFar(nUserId,nFlag)
end

-- = 516,			// 检查符合条件的装备, 并把装备位置编号写到寄存器变量中
-- //##【已有】LAU接口：EquipSelect
-- //##参1：idUser用户ID
-- //##参2: 装备位置(1-8), 如果为0, 则随机挑选一个符合条件的装备位置
-- //##参3: 索引
-- //##参4：支持"==", ">=", ">", "<=", "<"
-- //##参5: 对比数据
-- //##参6: 	寄存器变量编号
-- //##成功返回true，否则返回false

function User_EquipSelect(nEquipPos,nData,sOpt,nVal,nIdx,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_EquipSelect 中 nUserId 为整型并且大于等于0")
		return
	end	
	if sOpt == nil or type(sOpt) ~= "string" or (sOpt ~= ">=" and sOpt ~= ">" and sOpt ~= "<=" and sOpt ~= "<" and sOpt ~= "==") then
		Sys_SaveAbnormalLog("函数 User_EquipSelect 中 sOpt 传入的格式有错")
		return
	end
	if nEquipPos == nil or type(nEquipPos) ~= "number" then
		Sys_SaveAbnormalLog("函数 User_EquipSelect 中 nEquipPos 只能传数字")
		return
	end
	if nData == nil or type(nData) ~= "number" then
		Sys_SaveAbnormalLog("函数 User_EquipSelect 中 nData 只能传数字")
		return
	end	
	if nVal == nil or type(nVal) ~= "number" then
		Sys_SaveAbnormalLog("函数 User_EquipSelect 中 nVal 只能传数字")
		return
	end	
	if nIdx == nil or type(nIdx) ~= "number" then
		Sys_SaveAbnormalLog("函数 User_EquipSelect 中 nIdx 只能传数字")
		return
	end	
	return EquipSelect(nUserId,nEquipPos,nData,sOpt,nVal,nIdx)
end




-- 1095,		// 转世技能处理。执行后直接调用转世技能表cq_magictypeop表记录
-- //##【新增】LUA接口： UserRebirthSkill()
-- //##玩家转世技能处理
-- //##参1：玩家ID
-- //##返回值：成功返回ture，失败返回false
function User_RebirthSkill(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_RebirthSkill 中 nUserId 为整型并且大于等于0")
		return
	end	
	return UserRebirthSkill(nUserId)
end


-- 1043,			// 转世时，忘却所有武器技能，该技能将来可以再“顿悟”。
-- //##【新增】LUA接口：UserUnlearnSkill
-- //##参1：玩家id
-- //##返回值：成功返回ture，失败返回false
function User_UnlearnSkill(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_UnlearnSkill 中 nUserId 为整型并且大于等于0")
		return
	end	
	return UserUnlearnSkill(nUserId)
end

-- 1065,			// 玩家装备检查，判断玩家某个装备位置的装备是否为某种类型。
-- 【新增】LUA接口： UserEquipCheck
-- 参1：玩家id
-- 参2： nPos 为玩家装备位置
-- 参3： nSubType 为装备物品的子类型
-- 返回值：成功返回ture，失败返回false
function User_EquipCheck(nPos,nSubType,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_EquipCheck 中 nUserId 为整型并且大于等于0")
		return
	end	
	
	if type(nPos) ~= "number" or nPos%1 ~= 0 or nPos <= 0 then
		Sys_SaveAbnormalLog("函数 User_EquipCheck 中 nPos 只能传大于0的整数")
		return
	end	
	if type(nSubType) ~= "number" or nSubType%1 ~= 0 or nSubType <= 0 then
		Sys_SaveAbnormalLog("函数 User_EquipCheck 中 nSubType 只能传大于0的整数")
		return
	end		
	return UserEquipCheck(nUserId,nPos,nSubType)
end


--1040,		转世。如果已转过或者等级不够人，会失败。检查玩家是否已经转职、职业要求、等级要求。
 -- 自动修改玩家职业、等级、身上装备等级、重新分配点数。
-- 【新增】LUA接口： UserRebirth
-- 参1：玩家id
-- 参2：职业
-- 参3：lookface
-- 参4：转世等级
function User_Rebirth(nProf,nLook,nMetepsycosis,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_Rebirth 中 nUserId 为整型并且大于等于0")
		return
	end	
	if nMetepsycosis == nil then
		nMetepsycosis = 1
	elseif type(nMetepsycosis) ~= "number" or nMetepsycosis%1 ~= 0 or nMetepsycosis < 0 then
		Sys_SaveAbnormalLog("函数 User_Rebirth 中 nMetepsycosis 为整型并且大于等于0")
		return
	end		
	if type(nLook) ~= "number" or nLook%1 ~= 0 or nLook <= 0 then
		Sys_SaveAbnormalLog("函数 User_Rebirth 中 nLook 只能传大于0的整数")
		return
	end	
	if type(nProf) ~= "number" or nProf%1 ~= 0 or nProf <= 0 then
		Sys_SaveAbnormalLog("函数 User_Rebirth 中 nProf 只能传大于0的整数")
		return
	end		
	return UserRebirth(nUserId,nProf,nLook,nMetepsycosis)
end

-- 玩家洗点
-- ResetUserPoint
-- 参数1：玩家id
-- 返回值：成功返回ture。否则返回false
function User_ResetPoint(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_ResetPoint 中 nUserId 为整型并且大于等于0")
		return
	end	
	
	return ResetUserPoint(nUserId)
end

-- ------------------------------新增
-- SCRIPT_PARAM_PLAYER_SPECIAL_EXP_TIME = 1080,        //特殊经验(无每日上限限制,60分钟要传600) add
function User_AddSpecialExpTime(nTime,nUserId)
	if type(nTime) ~= "number" or nTime < 0 or nTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSpecialExpTime 参数 [nTime]:[".. nTime .."] 必须为整型并且大于等于0")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSpecialExpTime 参数 [nTime]:[".. nTime .."] 的 nUserId 必须为整型并且大于等于0")
		return
	end
	
	local nAddTime = nTime * 10

	return AddUserInt(nUserId,SCRIPT_PARAM_PLAYER_SPECIAL_EXP_TIME,nAddTime,0)
end

-- SCRIPT_PARAM_PLAYER_SPECIAL_EXP_PERCENT = 1081,        //按百分比增加特殊的玩家经验(不增加贡献) add
function User_AddSpecialExpPercent(nAddPercent,nUserId)
	if type(nAddPercent) ~= "number" or nAddPercent < 0 or nAddPercent > 100 or nAddPercent%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSpecialExpPercent 中 [nAddPercent]:[".. nAddPercent .."] 只能传0-100的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSpecialExpPercent 中 [nAddPercent]:[".. nAddPercent .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,SCRIPT_PARAM_PLAYER_SPECIAL_EXP_PERCENT,nAddPercent,0)
end

-- 检测玩家是否经验池已满
function User_ChkSurplusExp(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkSurplusExp 中 nUserId 只能传大等于0的整数")
		return
	end
	
	local nExp = Get_UserSurplusExp(nUserId)
	
	return nExp == 0
end

------------2017.04.28
-- //设置玩家战斗BUFF 参数1：玩家id，参数2：战斗BUFF ID，传0表示取消战斗BUFF， 返回值：成功返回true。失败返回false
-- //玩家在离开战斗地图属性地图时需要删除玩家的战斗BUFF，类似离开深海删除特殊药水属性。
-- LUA_FUNC(SetUserBattleBuff)
-- {
    -- OBJID idUser    = Lua_GetParamULong(1);
    -- OBJID idBuf        = Lua_GetParamULong(2);
-- }
function User_SetBattleBuff(nBuffType,nUserId)
	if type(nBuffType) ~= "number" or nBuffType%1 ~= 0 or nBuffType < 0 then
		Sys_SaveAbnormalLog("函数 User_SetBattleBuff 中 nBuffType 为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_SetBattleBuff 中 nUserId 为整型并且大于等于0")
		return
	end
	
	return SetUserBattleBuff(nUserId,nBuffType)
end



------------2017.07.04
-- // 设置角色状态power值，参1：idUser 玩家ID，参2：nStatusType 状态类型，参3：power值。成功返回true，失败返回false。
-- bool SetRoleStatusPower(OBJID idUser, int nStatusType, int nPower);
-- 注：SetRoleStatusPower接口不进行状态的检测，请外层自行检测状态。
function User_SetRoleStatusPower(nStatusType,nPower,nUserId)
	if type(nStatusType) ~= "number" or nStatusType%1 ~= 0 or nStatusType < 0 then
		Sys_SaveAbnormalLog("函数 User_SetRoleStatusPower 中 nStatusType 为整型并且大于等于0")
		return
	end

	if type(nPower) ~= "number" or nPower%1 ~= 0 or nPower < 0 then
		Sys_SaveAbnormalLog("函数 User_SetRoleStatusPower 中 nPower 为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_SetRoleStatusPower 中 nUserId 为整型并且大于等于0")
		return
	end
	
	if not User_ChkRoleStatus(nStatusType,nUserId) then
		Sys_SaveAbnormalLog("函数 User_SetRoleStatusPower 中，玩家身上不存在状态 [nStatusType]:[".. nStatusType .."]")
	else
		return SetRoleStatusPower(nUserId,nStatusType,nPower)
	end
end


------------2017.07.04
-- // 检测是否是仇人，参1：idUser玩家ID，参2：idTarget目标ID。是仇人返回true，不是仇人返回false。
-- bool CheckUserEnemy(OBJID idUser, OBJID idTarget);
function User_CheckUserEnemy(nTargetId,nUserId)
	if type(nTargetId) ~= "number" or nTargetId%1 ~= 0 or nTargetId < 0 then
		Sys_SaveAbnormalLog("函数 User_CheckUserEnemy 中 nTargetId 为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_CheckUserEnemy 中 nUserId 为整型并且大于等于0")
		return
	end
	
	return CheckUserEnemy(nUserId,nTargetId)
end

----------------------2017.09.13
-- // AddUserSeasonPoint 修改玩家德州赛季积分。参数1：玩家id，参数2：积分，正数表示增加，负数表示减少 返回值，成功返回ture，失败返回false
-- function User_AddSeasonPoint(nScore,nUserId)
	-- if nUserId == nil then
		-- nUserId = 0
	-- elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		-- Sys_SaveAbnormalLog("函数 User_AddSeasonPoint 中 nUserId 为整型并且大于等于0")
		-- return
	-- end
	
	-- if type(nScore) ~= "number" or nScore%1 ~= 0 then
		-- Sys_SaveAbnormalLog("函数 User_AddSeasonPoint 中 [nScore]:[".. nScore .."] 只能传整数")
		-- return
	-- end
	
	-- return AddUserSeasonPoint(nUserId,nScore)
-- end

---------------2017.08.15 
--[[#新增Action:
#    1740  // 返回玩家是否禁用金币包，禁用返回true，未禁用返回false

#新增Lua:
#    IsMoneyPackForbidden // 返回玩家是否禁用金币包。 参数1：玩家id  返回值，禁用返回true， 未禁用返回false
]]--

-- function User_IsMoneyPackForbidden(nUserId)
	-- local nNowUserId = nUserId or 0

	-- if type(nNowUserId) ~= "number" or nNowUserId%1 ~= 0 or nNowUserId < 0 then
		-- Sys_SaveAbnormalLog("函数 IsMoneyPackForbidden 中 nUserId 为整型并且大于等于0")
		-- return
	-- end
	
	-- return IsMoneyPackForbidden(nNowUserId)
-- end

--通知客户端网页（免登陆）
--bool OpenWebPageEx(OBJID idUser, const char* pszUrl);
--参数说明:  参1: idUser表示玩家ID, 参2：pszParam表示网址
function User_OpenWebPageEx(sPszParam,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_OpenWebPageEx [sPszParam]:[".. sPszParam .."]中 nUserId 只能传大于等于0的整数")
		return
	end		
	if type(sPszParam) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_OpenWebPageEx 中 [sPszParam]:[".. sPszParam .."] 只能传字符串")
		return
	end		
	return OpenWebPageEx(nUserId,sPszParam)
end



-- // 更新玩家身上及背包的精炼装备所属名; 参1:玩家ID; 返回值:成功返回true, 失败返回false.
-- bool UpdateEquipingAndBagRefineName(OBJID idUser)

function User_UpdateEquipingAndBagRefineName(nUserId)
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_UpdateEquipingAndBagRefineName 中 nUserId 为整型并且大于等于0")
		return
	end
	
	return UpdateEquipingAndBagRefineName(nUserId)
end

-- //检测玩家是否已经有某个发型或脸型， 参数1：玩家id，参数2：(0表示发型，1表示脸型)，参数3:发型脸型ID，返回值：如果已经拥有返回true，否则返回false
-- HairFaceCheckExist
function User_HairFaceCheckExist(nTypeId,nHairFaceId,nUserId)
	if type(nTypeId) ~= "number" or nTypeId < 0 or nTypeId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HairFaceCheckExist [stype,nTypeId]:[".. nTypeId .."]中 nTypeId 只能传大于等于0的整数")
		return
	end
	if type(nHairFaceId) ~= "number" or nHairFaceId < 0 or nHairFaceId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HairFaceCheckExist [stype,nHairFaceId]:[".. nHairFaceId .."]中 nHairFaceId 只能传大于等于0的整数")
		return
	end
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_HairFaceCheckExist 中 nUserId 为整型并且大于等于0")
		return
	end
	
	return HairFaceCheckExist(nUserId,nTypeId,nHairFaceId)
end

-- //给予玩家发型或脸型， 参数1：玩家id，参数2：(0表示发型，1表示脸型)，参数3:发型脸型ID，参数4：时效(单位分钟，0表示永久)，返回值：成功返回true，失败则返回false
-- HairFaceAward
function User_HairFaceAward(nTypeId,nHairFaceId,nSaveTime,nUserId)
	if type(nTypeId) ~= "number" or nTypeId < 0 or nTypeId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HairFaceAward [nTypeId]:[".. nTypeId .."]中 nTypeId 只能传大于等于0的整数")
		return
	end
	if type(nHairFaceId) ~= "number" or nHairFaceId < 0 or nHairFaceId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HairFaceAward [nHairFaceId]:[,".. nHairFaceId .."]中 nHairFaceId 只能传大于等于0的整数")
		return
	end
	if nSaveTime == nil then	
		nSaveTime = 0
	elseif type(nSaveTime) ~= "number" or nSaveTime < 0 or nSaveTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HairFaceAward 中 nSaveTime 只能传大于等于零的整数")
		return
	end
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_HairFaceAward 中 nUserId 为整型并且大于等于0")
		return
	end
	
	return HairFaceAward(nUserId,nTypeId,nHairFaceId,nSaveTime)
end
-- //删除玩家发型或脸型， 参数1：玩家id，参数2：(0表示发型，1表示脸型)，参数3:发型脸型ID，返回值：成功返回true，失败则返回false
-- HairFaceDelete
function User_HairFaceDelete(nTypeId,nHairFaceId,nUserId)
	if type(nTypeId) ~= "number" or nTypeId < 0 or nTypeId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HairFaceDelete [nTypeId]:[".. nTypeId .."]中 nTypeId 只能传大于等于0的整数")
		return
	end
	if type(nHairFaceId) ~= "number" or nHairFaceId < 0 or nHairFaceId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HairFaceDelete [nHairFaceId]:[".. nHairFaceId .."]中 nHairFaceId 只能传大于等于0的整数")
		return
	end
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_HairFaceDelete 中 nUserId 为整型并且大于等于0")
		return
	end
	
	return HairFaceDelete(nUserId,nTypeId,nHairFaceId)
end

--------------2018.02.26
--判断玩家是否首充玩家
--TestUserFlag  参1：玩家ID，参2：标志值，首冲的话，flag为1，对应cq_user表flag字段
function User_TestUserFlag(nFlag,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TestUserFlag 中 nUserId 为整型并且大于等于0")
		return
	end

	if type(nFlag) ~= "number" or nFlag < 0 or nFlag%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_TestUserFlag 中 nFlag 只能传大于等于0的整数")
		return
	end
	
	return TestUserFlag(nUserId,1)
end

-----------2018.03.14
-- 函数名：IsUserOnline
-- 功能：检查玩家是否在线，参数1：玩家id
function User_IsUserOnline(nUserId)
	if type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_IsUserOnline 中 nUserId 为整型并且大于0")
		return
	end
	
	return IsUserOnline(nUserId)
end


---2018.7.5  征服转到大都市的接口
-- #新增LUA接口
-- #PC端MMO世界进入赌城方式：NPC跳转传送
-- #EnterKOKServer 玩家加入大都市 参数1：玩家ID 参数2：大厅类型(0代表综合大厅)
function User_EnterKOKServer(nTypeId,nUserId)
	if type(nTypeId) ~= "number" or nTypeId < 0 or nTypeId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_EnterKOKServer [nTypeId]:[".. nTypeId .."]中 nTypeId 只能传大于等于0的整数")
		return
	end

	if type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_EnterKOKServer 中 nUserId 为整型并且大于0")
		return
	end
	
	return EnterKOKServer(nUserId,nTypeId)
end

---2018.8.30 新的操作天石的接口
function User_AddEMoneyAndLog(nAddEMoney,sEmoneyBuyLog,nUserId)
	if type(nAddEMoney) ~= "number" or nAddEMoney%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyAndLog 中 [nAddEMoney]:[".. nAddEMoney .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyAndLog 中 [nAddEMoney]:[".. nAddEMoney .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	if type(sEmoneyBuyLog) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyAndLog 中 [sEmoneyBuyLog]:[".. sEmoneyBuyLog .."] 只能传字符")
		return
	end
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			if nAddEMoney > 0 then
				User_TalkChannel2005(string.format(tTestTiShi[3],nAddEMoney),nUserId)
			else
				User_TalkChannel2005(string.format(tTestTiShi[4],math.abs(nAddEMoney)),nUserId)
			end
		end
	end
	
	if nAddEMoney < 0 then
		if Get_UserEMoney(nUserId) < math.abs(nAddEMoney) then
			error("user have no enough emoney")
		end
	end

	if AddUserInt(nUserId,G_PLAYER_EMoney,nAddEMoney,0) then
		Sys_GetEMoneyBuyLog("EMoney",nAddEMoney,sEmoneyBuyLog,nUserId)
		return true
	else
		return false
	end
end

function User_AddEMoneyMonoAndLog(nAddEMoneyMono,sEmoneyBuyLog,nUserId)
	if type(nAddEMoneyMono) ~= "number" or nAddEMoneyMono%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyMono 中 [nAddEMoneyMono]:[".. nAddEMoneyMono .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyMono 中 [nAddEMoneyMono]:[".. nAddEMoneyMono .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	if type(sEmoneyBuyLog) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_AddEMoneyAndLog 中 [sEmoneyBuyLog]:[".. sEmoneyBuyLog .."] 只能传字符")
		return
	end

	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			if nAddEMoneyMono > 0 then
				User_TalkChannel2005(string.format(tTestTiShi[5],nAddEMoneyMono),nUserId)
			else
				User_TalkChannel2005(string.format(tTestTiShi[6],math.abs(nAddEMoneyMono)),nUserId)
			end
		end
	end
	
	if nAddEMoneyMono < 0 then
		if Get_UserMonoEMoney(nUserId) < math.abs(nAddEMoneyMono) then
			error("user have no enough monoemoney")
		end
	end
	
	if AddUserInt(nUserId,G_PLAYER_EMoneyMono,nAddEMoneyMono,0) then
		Sys_GetEMoneyBuyLog("EMoneyMono",nAddEMoneyMono,sEmoneyBuyLog,nUserId)
		return true
	else
		return false
	end
end

------------2018.10.15
-- 函数名：SetUserWeeklyStatistic增加玩家周成就数据；参数1：idUser，参数2：unType(1：周杀人数)，参数3：unSubType（1：具体数据，2：领取了礼包的数值），参数4：nData(要设置的值)，参数5：nSave(>0数据存入数据库)，成功返回true，失败返回false
function User_SetUserWeeklyStatistic(nType,nSubType,nData,nSave,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数User_SetUserWeeklyStatistic中的nUserId只能传大于等于0的整数")
		return
	end
	
	if type(nType) ~= "number" or nType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetUserWeeklyStatistic 中 [nType]:[".. nType .."] 只能传整数")
		return
	end
	
	if type(nSubType) ~= "number" or nSubType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetUserWeeklyStatistic 中 [nSubType]:[".. nSubType .."] 只能传整数")
		return
	end
	
	if type(nData) ~= "number" or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetUserWeeklyStatistic 中 [nData]:[".. nData .."] 只能传整数")
		return
	end
	
	if type(nSave) ~= "number" or nSave%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetUserWeeklyStatistic 中 [nSave]:[".. nSave .."] 只能传整数")
		return
	end
	
	return SetUserWeeklyStatistic(nUserId,nType,nSubType,nData,nSave)
end

------------2018.08.22
--熔炼炉单抽结果接口
--参1：玩家ID，参2：奖励类型，参3：数值(type=物品时, 表示itemtype)，参4：是否赠品(0表示非赠, 1表示赠)，参5：是否贵重物品(0表示非贵重, 1表示贵重)
--奖励类型为：1.金币，2.天石，3.赠品天石，4.骑马积分，5.气力值，6黄金积分，7.修为值，8.物品 如果是物品的话，消耗数量字段为物品ID
function User_MelterResult(nCostType, nValue, nMonopoly, nPrecious, nNum, nUserId)
	if type(nCostType) ~= "number" or  nCostType <= 0 or nCostType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_MelterResult 中 [nCostType]:[".. nCostType .."] 必须为整数且大于0。")
		return
	end
	
	if type(nValue) ~= "number" or  nValue <= 0 or nValue%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_MelterResult 中 [nValue]:[".. nValue .."] 必须为整数且大于0。")
		return
	end
	
	if type(nNum) ~= "number" or  nNum < 0 or nNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_MelterResult 中 [nNum]:[".. nNum .."] 必须为整数且大于等于0。")
		return
	end
	
	if nMonopoly == nil then
		nMonopoly = 0
	elseif type(nMonopoly) ~= "number" or (nMonopoly ~= 0 and nMonopoly ~= 1)then
	    Sys_SaveAbnormalLog("函数 User_MelterResult 中 [nMonopoly]:[".. nMonopoly .."] 的 nType 只能传0,1")
		return
	end
	
	if nPrecious == nil then
		nPrecious = 0
	elseif type(nPrecious) ~= "number" or (nPrecious ~= 0 and nPrecious ~= 1)then
	    Sys_SaveAbnormalLog("函数 User_MelterResult 中 [nPrecious]:[".. nPrecious .."] 的 nType 只能传0,1")
		return
	end
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_MelterResult 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大等于0的整数")
		return
	end
	
	return MelterResult(nUserId, nCostType, nValue, nMonopoly, nPrecious, nNum)
end

--熔炼炉十连抽结果接口
--参1：玩家ID，参2：格式("类型-数值-是否贵重 类型-数值-是否赠品-是否贵重"重复十次)
--奖励类型为：1.金币，2.天石，3.赠品天石，4.骑马积分，5.气力值，6黄金积分，7.修为值，8.物品
function User_TenMelterResult(sResult, nUserId)
	if type(sResult) ~= "string" then
		Sys_SaveAbnormalLog("函数 User_TenMelterResult 中 [sResult]:[".. sResult .."] 必须为字符串。")
		return
	end
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_TenMelterResult 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大等于0的整数")
		return
	end
	
	return TenMelterResult(nUserId ,sResult)
end

--灵珠天石操作接口
function User_AddEMoney_ByDragonSoul(nAddEMoney,nUserId,sEmoneyBuyLog)
	if type(nAddEMoney) ~= "number" or nAddEMoney%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoney_ByDragonSoul 中 [nAddEMoney]:[".. nAddEMoney .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoney_ByDragonSoul 中 [nAddEMoney]:[".. nAddEMoney .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			if nAddEMoney > 0 then
				User_TalkChannel2005(string.format(tTestTiShi[3],nAddEMoney),nUserId)
			else
				User_TalkChannel2005(string.format(tTestTiShi[4],math.abs(nAddEMoney)),nUserId)
			end
		end
	end
	
	if nAddEMoney < 0 then
		if Get_UserEMoney(nUserId) < math.abs(nAddEMoney) then
			error("user have no enough emoney")
		end
	end

	if AddUserInt(nUserId,G_PLAYER_EMONEY_DRAGONSOUL,nAddEMoney,0) then
		if sEmoneyBuyLog == nil then
			Sys_SetAutomatic("EMoney",nAddEMoney,nUserId)
		else
			Sys_GetEMoneyBuyLog("EMoney",nAddEMoney,sEmoneyBuyLog,nUserId)
		end
		return true
	else
		return false
	end
end


-- 对玩家天石的回收
function User_AddEMoney_Repo(nAddEMoney,nUserId,sEmoneyBuyLog)
	if type(nAddEMoney) ~= "number" or nAddEMoney%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoney_Repo 中 [nAddEMoney]:[".. nAddEMoney .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoney_Repo 中 [nAddEMoney]:[".. nAddEMoney .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") then
			if nAddEMoney > 0 then
				User_TalkChannel2005(string.format(tTestTiShi[3],nAddEMoney),nUserId)
			else
				User_TalkChannel2005(string.format(tTestTiShi[4],math.abs(nAddEMoney)),nUserId)
			end
		end
	end
	
	if nAddEMoney < 0 then
		if Get_UserEMoney(nUserId) < math.abs(nAddEMoney) then
			error("user have no enough emoney")
		end
	end

	if AddUserInt(nUserId,G_PLAYER_EMONEY_RECYCLE,nAddEMoney,0) then
		if sEmoneyBuyLog == nil then
			Sys_SetAutomatic("EMoney",nAddEMoney,nUserId)
		else
			Sys_GetEMoneyBuyLog("EMoney",nAddEMoney,sEmoneyBuyLog,nUserId)
		end
		return true
	else
		return false
	end
end
--新增GM号回收天石
function User_AddEMoney_GM(nAddEMoney,nUserId,sEmoneyBuyLog)
	if type(nAddEMoney) ~= "number" or nAddEMoney%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoney_Repo 中 [nAddEMoney]:[".. nAddEMoney .."] 只能传整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddEMoney_Repo 中 [nAddEMoney]:[".. nAddEMoney .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	local sUserName = Get_UserName(nUserId)
	if sUserName ~= nil then
		if string.find(sUserName,"PM") or string.find(sUserName,"GM") then
			if nAddEMoney > 0 then
				User_TalkChannel2005(string.format(tTestTiShi[3],nAddEMoney),nUserId)
			else
				User_TalkChannel2005(string.format(tTestTiShi[4],math.abs(nAddEMoney)),nUserId)
			end
		end
	end
	
	if nAddEMoney < 0 then
		if Get_UserEMoney(nUserId) < math.abs(nAddEMoney) then
			error("user have no enough emoney")
		end
	end

	if AddUserInt(nUserId,G_SCRIPT_PARAM_PLAYER_EMONEY_GM_RECYCLE,nAddEMoney,0) then
		if sEmoneyBuyLog == nil then
			Sys_SetAutomatic("EMoney",nAddEMoney,nUserId)
		else
			Sys_GetEMoneyBuyLog("EMoney",nAddEMoney,sEmoneyBuyLog,nUserId)
		end
		return true
	else
		return false
	end
end



--2019.1.9
--// 给玩家加尾兽外套, 参1:玩家ID, 参2:外套, 如果成功返回true, 失败返回false.
--bool AddUserBeastsCoat(OBJID idUser, int nCoat);
--注：玩家如果己有此外套, 返回false。不在外套变异配置表里的外套，也是返回false。
--必须是玩家己经开启了尾兽功能的前提下，才能添加。
function User_AddUserBeastsCoat(nCoat, nUserId)
	if type(nCoat) ~= "number" or nCoat < 0 or nCoat%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddUserBeastsCoat 中 [nCoat]:[".. nCoat .."] 的 nCoat 只能传大等于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddUserBeastsCoat 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大等于0的整数")
		return
	end
	
	return AddUserBeastsCoat(nUserId, nCoat)
end
-- 接口：CallLuaEfffect      
-- #客户端表现剧情，参数1：玩家id，参数2：播放剧情id，返回值：成功返回true，否则返回false
function User_PlayPlot(nPlotId,nUserId)
	if type(nPlotId) ~= "number" or nPlotId < 0 or nPlotId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_PlayPlot 中 [nPlotId]:[".. nPlotId .."] 的 nPlotId 只能传大等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_PlayPlot 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大等于0的整数")
		return
	end

	return CallLuaEffect(nUserId,nPlotId)
end


-- // 添加赛季积分, 参1:玩家id, 参2:积分, 成功返回true, 失败返回false.
-- bool AddUserSeasonScore(OBJID idUser, UINT unScore)

function User_AddUserSeasonScore(nScore,nUserId)
	if type(nScore) ~= "number" or nScore < 0 or nScore%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddUserSeasonScore 中 [nScore]:[".. nScore .."] 的 nScore 只能传大等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddUserSeasonScore 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大等于0的整数")
		return
	end

	return AddUserSeasonScore(nUserId,nScore)
end


--LUA接口:
--//战令增加玩家任务进度 参数1: 玩家ID 参数2:任务类型(值要大于100) 参数3:增加的进度值
--BattlePassAddTaskProgress

function User_BattlePassAddTaskProgress(nType,nValue,nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数User_BattlePassAddTaskProgress中的nUserId只能传大于等于0的整数")
		return
	end
	
	if type(nType) ~= "number" or nType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_BattlePassAddTaskProgress 中 [nType]:[".. nType .."] 只能传整数")
		return
	end 
	
	if nType <= 100 then 
		Sys_SaveAbnormalLog("函数 User_BattlePassAddTaskProgress 中 [nType]:[".. nType .."] 只能传大于100的整数")
		return
	end
	
	if type(nValue) ~= "number" or  nValue <= 0 or nValue%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_BattlePassAddTaskProgress 中 [nValue]:[".. nValue .."] 必须为整数且大于0。")
		return
	end

	return BattlePassAddTaskProgress(nUserId, nType, nValue)
end

-- 增加指定玩家练气的等级经验 参数1：玩家id 参数2：所属练气门 参数3：经验 返回值:成功true 失败 false
function User_IncFateLevExp(nUserId,nType,nValue)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IncFateLevExp 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大等于0的整数")
		return
	end
	
	if type(nType) ~= "number" or nType%1 ~= 0 or nType < 0 then
		Sys_SaveAbnormalLog("函数 User_IncFateLevExp 中 [nType]:[".. nType .."] 的 nType 只能传大等于0的整数")
		return
	end
	
	if type(nValue) ~= "number" or nValue%1 ~= 0 or nValue < 0 then
		Sys_SaveAbnormalLog("函数 User_IncFateLevExp 中 [nValue]:[".. nValue .."] 的 nValue 只能传大等于0的整数")
		return
	end
	
	return IncFateLevExp(nUserId,nType,nValue)
end


-- 新增LUA接口：OpenVideo
-- // 通知客户端播放视频 参1 ：idUser表示玩家ID，参2：dwDialog表示界面ID，参3：idVideo表示视频ID 如果失败返回false 成功返回true
function User_OpenVideo(nDialog,nVideoId,nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_OpenVideo 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大等于0的整数")
		return
	end

	if type(nVideoId) ~= "number" or nVideoId%1 ~= 0 or nVideoId < 0 then
		Sys_SaveAbnormalLog("函数 User_OpenVideo 中 [nVideoId]:[".. nVideoId .."] 的 nVideoId 只能传大等于0的整数")
		return
	end

	if type(nDialog) ~= "number" or nDialog%1 ~= 0 or nDialog < 0 then
		Sys_SaveAbnormalLog("函数 User_OpenVideo 中 [nDialog]:[".. nDialog .."] 的 nDialog 只能传大等于0的整数")
		return
	end

	return OpenVideo(nUserId,nDialog,nVideoId)
end





-- Lua接口名称为UserHasBooth，有一个参数是玩家id
-- 该接口查询玩家是否在摆摊，正在摆摊返回true，没有
-- 摆摊返回false。
function User_HasBooth(nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IncFateLevExp 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大等于0的整数")
		return
	end

	return UserHasBooth(nUserId)
end

-- // 查询百兵排名, 参1:玩家id, 参2:武器类型; 返回：0表示未入榜, 其它表示名次
-- int QuaryUserHundredWeaponRank(OBJID idUser, USHORT usType);
-- nType:
-- 0：表示查总榜排名
-- 410：刀
-- 420：剑
-- 430：钩
-- 440：鞭
-- 450：斧
-- 460：锤
-- 480：棒
-- 481：杵
-- 490：匕首
function User_ChkHundredWeaponRank(nType,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ChkHundredWeaponRank 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大等于0的整数")
		return
	end

	if type(nType) ~= "number" or nType%1 ~= 0 or nType < 0 then
		Sys_SaveAbnormalLog("函数 User_ChkHundredWeaponRank 中 [nType]:[".. nType .."] 的 nType 只能传大等于0的整数")
		return
	end

	return QuaryUserHundredWeaponRank(nUserId,nType)
end

-- 新增lua接口：
-- AwardHundredWeapon，参1：玩家id，参2：武器ID，返回值：成功返回true，否则返回false
function User_AwardHundredWeapon(nType,nUserId)
	if type(nType) ~= "number" or nType%1 ~= 0 or nType < 0 then
		Sys_SaveAbnormalLog("函数 AwardHundredWeapon 中 [nType]:[".. nType .."] 的 nType 只能传大等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 AwardHundredWeapon 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大等于0的整数")
		return
	end
	
	if AwardHundredWeapon(nUserId,nType) then
		AugPrecisionPush_OpenShop(3)
		return true
	else
		return false
	end
end

-- 增加职业经验
function User_AddProExp(nExp,nUserId)
	if type(nExp) ~= "number" or nExp <= 0 or nExp%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddProExp 中 [nExp]:[".. nExp .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddProExp 中 [nExp]:[".. nExp .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return AddUserInt(nUserId,G_SCRIPT_PARAM_PLAYER_PROF_EXP,nExp,0)
end
-- 百兵谱分解物品，参1：玩家id，参2：物品追加等级 参数3 赠品判断 0表示非赠品，1表示所有物品，2表示赠品 返回值：删除物品个数
-- HundredWeaponResolveWeapon
function User_HundredWeaponResolveWeapon(nLev,nMonopoly,nUserId)
	if type(nLev) ~= "number" or nLev <= 0 or nLev%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HundredWeaponResolveWeapon 中 [nLev]:[".. nLev .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HundredWeaponResolveWeapon 中 [nLev]:[".. nLev .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	if nMonopoly == nil then 
	   nMonopoly = 1
	elseif type(nMonopoly) ~= "number" or nMonopoly < 0 or nMonopoly%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HundredWeaponResolveWeapon 中 [nLev]:[".. nLev .."] 的 nMonopoly 必须为整数且不小于0。")
		return
	end

	return HundredWeaponResolveWeapon(nUserId,nLev,nMonopoly)
end

-- 判断是否已开启百兵谱，至少大于三星
function User_ChkOpenHundredSoldiers(nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HundredWeaponResolveWeapon 中 [nLev]:[".. nLev .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	for i,v in pairs(G_tShortWeapon) do
		local nLev = Get_UserHundredWeaponInt(v,5,nUserId)

		if nLev >= 3 then
			return true
		end
	end

	return false
end

-- 判断是否已开启百兵谱
function User_TrueChkOpenHundredSoldiers(nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_HundredWeaponResolveWeapon 中 [nLev]:[".. nLev .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	for i,v in pairs(G_tShortWeapon) do
		local nLev = Get_UserHundredWeaponInt(v,5,nUserId)

		if nLev >= 1 then
			return true
		end
	end

	return false
end

-- 设置PK模式状态
-- SetUserInt,参数1：玩家ID, 参数2：索引 = 1091，参数3：数值（具体的pk模式），参数4：是否防沉迷，失败返回false,否则返回true
function User_SetPkType(nPkType,nUserId)
	if type(nPkType) ~= "number" or nPkType < 0 or nPkType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetPkType 中 [nPkType]:[".. nPkType .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetPkType 中 [nPkType]:[".. nPkType .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return SetUserInt(nUserId,G_SCRIPT_PARAM_PLAYER_PK,nPkType,0)
end

-- 检测是否在本服拍卖行
-- CheckUserNosuchOnAuction(idUser, idFunction)
function User_CheckNosuchOnAuction(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CheckNosuchOnAuction 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return CheckUserNosuchOnLocalAuction(nUserId)
end

-- 检测是否在跨服拍卖行
function User_CheckNosuchOnCrossAuction(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CheckNosuchOnCrossAuction 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return CheckUserNosuchOnCrossAuction(nUserId)
end


-- 玩家放弃扣押装备
-- GiveUpDetainAllItem功能：放弃扣押所有7天内未被赎回的物品，参1：玩家id，返回值：成功true，失败false
function User_GiveUpDetainAllItem(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CheckNosuchOnCrossAuction 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return GiveUpDetainAllItem(nUserId)
end

-- 新增Lua接口，NotifyClientStartGuide，参数1，玩家id，参数2，引导type（type值由客户端定）
-- 任务可使用接口通知客户端开启引导
function User_NotifyClientStartGuide(nType,nUserId)
	if type(nType) ~= "number" or nType <= 0 or nType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_NotifyClientStartGuide 中 [nType]:[".. nType .."] 只能传大于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_NotifyClientStartGuide 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return NotifyClientStartGuide(nUserId,nType)
end

-- //目标帮派是否为敌对帮派。参数1：自身帮派ID, 参数2：目标帮派ID 返回值：敌对返回true，否则返回false
-- 接口：IsHostile

-- ps：主要是优化原先通过遍历获取敌对帮派名字来判断是否为敌对帮派，从而导致的错误log。
function User_IsHostile(nGuildId,nTargetGuildId)
	if type(nGuildId) ~= "number" or nGuildId <= 0 or nGuildId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsHostile 中 [nGuildId]:[".. nGuildId .."] 只能传大于0的整数")
		return
	end

	if type(nTargetGuildId) ~= "number" or nTargetGuildId <= 0 or nTargetGuildId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsHostile 中 [nTargetGuildId]:[".. nTargetGuildId .."] 只能传大于0的整数")
		return
	end

	return IsHostile(nGuildId,nTargetGuildId)
end

-- 加捐献值
-- DonateOpt，传入参1：玩家ID，参2：Opt（1：Add；2：Get），参3：n64Data，返回值：成功返回Opt操作后玩家的捐献值，失败返回-1.
function User_AddDonate(nData,nUserId)
	if type(nData) ~= "number" or nUserId < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddDonate 中 nData 只能传大等于0的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddDonate 中 nUserId 只能传大等于0的整数")
		return
	end

	local nFlag = DonateOpt(nUserId,1,nData)
	if nFlag == -1 then
		return false
	else
		return true
	end
end

--------------2019.09.20
--判断是否己购卡标志，现有的lua接口：
--bool TestUserFlag(idUser, nFlag);  参1：玩家ID，参2：标志值，购卡的话，nFlag=32，对应cq_user表flag字段
-- 已购返回true
function User_TestUserFlagIsBuyCard(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_TestUserFlagIsBuyCard 中 nUserId 为整型并且大于等于0")
		return
	end

	-- if type(nFlag) ~= "number" or nFlag < 0 or nFlag%1 ~= 0 then
		-- Sys_SaveAbnormalLog("函数 User_TestUserFlagIsBuyCard 中 nFlag 只能传大于等于0的整数")
		-- return
	-- end
	
	return TestUserFlag(nUserId,32)
end

--LUA接口:
--//战令获取玩家特权等级 参数1: 玩家ID, 返回玩家战令特权等级
--BattlePassGetPrivilege(nUserId)

function User_BattlePassGetPrivilege(nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数User_BattlePassAddTaskProgress中的nUserId只能传大于等于0的整数")
		return
	end
	return BattlePassGetPrivilege(nUserId)
end

function BattlePassGetPrivilege_Test()
	local nUserId = Get_UserId()
	local nPrivilege=User_BattlePassGetPrivilege(nUserId)
	User_TalkChannel2005("nPrivilege=" .. n)
end 


-- 新增Lua接口，NotifyChgWindow，参1：玩家id, 参2：窗口id，参3：需要替换界面的id
-- 通知客户端替换界面窗口
function User_NotifyChgWindow(nWindowsId,nAfterWindowsId, nUserId)
	if type(nWindowsId) ~= "number" or nWindowsId < 0 or nWindowsId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_NotifyChgWindow 中 [nWindowsId]:[".. nWindowsId .."] 只能传大于等于0的整数")
		return
	end
	
	if type(nAfterWindowsId) ~= "number" or nAfterWindowsId < 0 or nAfterWindowsId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_NotifyChgWindow 中 [nAfterWindowsId]:[".. nAfterWindowsId .."] 只能传大于等于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_NotifyChgWindow 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return NotifyChgWindow(nUserId,nWindowsId,nAfterWindowsId)
end

-- 新增Lua接口，NotifyChgHairstyle，参1：玩家id 参2:发型id， 参三：发型时效(分钟)
-- 通知客户端获得并穿戴时效发型
function User_NotifyChgHairstyle(nHairId,nTime,nUserId)
	if type(nHairId) ~= "number" or nHairId <= 0 or nHairId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_NotifyChgHairstyle 中 [nHairId]:[".. nHairId .."] 只能传大于0的整数")
		return
	end
	
	if type(nTime) ~= "number" or nTime < 0 or nTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_NotifyChgHairstyle 中 [nTime]:[".. nTime .."] 只能传大于等于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_NotifyChgHairstyle 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return NotifyChgHairstyle(nUserId,nHairId,nTime)
end


-- //添加双炉冶炼数据， 参1：炉子所在地图ID，参2：哪个炉子赢，
function User_AddNosuchDoubleStoveHisData(nNpcMapId,nNpcId)
	if type(nNpcMapId) ~= "number" or nNpcMapId <= 0 or nNpcMapId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddNosuchDoubleStoveData 中 [nNpcMapId]:[".. nNpcMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nNpcId) ~= "number" or nNpcId < 0 or nNpcId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddNosuchDoubleStoveData 中 [nNpcId]:[".. nNpcId .."] 只能传大于等于0的整数")
		return
	end
	return AddNosuchDoubleStoveHisData(nNpcMapId,nNpcId)
end

-- //添加双炉冶炼数据，参1：玩家ID, 参2：炉子所在地图ID，参3：最终器灵类型，参4：等级提升多少，如果失败返回false，否则返回true。
function User_AddNosuchDoubleStoveSortData(nUserId,nNpcMapId,nItemId,nUpLev)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddNosuchDoubleStoveData 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	if type(nNpcMapId) ~= "number" or nNpcMapId <= 0 or nNpcMapId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddNosuchDoubleStoveData 中 [nNpcMapId]:[".. nNpcMapId .."] 只能传大于0的整数")
		return
	end
	
	if type(nItemId) ~= "number" or nItemId < 0 or nItemId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddNosuchDoubleStoveData 中 [nItemId]:[".. nItemId .."] 只能传大于等于0的整数")
		return
	end
	
	if type(nUpLev) ~= "number" or nUpLev < 0 or nUpLev%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddNosuchDoubleStoveData 中 [nUpLev]:[".. nUpLev .."] 只能传大于等于0的整数")
		return
	end
	
	return AddNosuchDoubleStoveSortData(nUserId,nNpcMapId,nItemId,nUpLev)
end


-- 设置属性削弱状态接口 SetUserInt 参数2Index = 1093 参数3为对应数值， ps：若清除可直接设置0
function User_SetAttributeLimit(nAttributeId,nUserId)
	if type(nAttributeId) ~= "number" or nAttributeId < 0 or nAttributeId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetAttributeLimit 中 [nAttributeId]:[".. nAttributeId .."] 必须为整型并且大于等于0")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetAttributeLimit 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end

	return SetUserInt(nUserId,G_PLAYER_ATTRIBUTE_LIMIT,nAttributeId,0)
end
------2019.12.5
-- UserAddSTCActiveData
-- //增加活动统计数据，参1：idUser用户ID, 参2:idActiveType为活动大类, 参3:idEventType为活动事件
-- //参4:dwData为数据,参5:活动结束时间戳, 参6:nNotify为非0通知客户端, 成功返回true，失败返回false

-- 增加活动统计数据Data值
function User_AddSTCActiveData(nActiveType,nEventType,nData,nEndTime,nNotify,nUserId)
	if type(nActiveType) ~= "number" or nActiveType < 0 or nActiveType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSTCActiveData 中 [nActiveType]:[".. nActiveType .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nEventType) ~= "number" or nEventType < 0 or nEventType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSTCActiveData 中 [nEventType]:[".. nEventType .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSTCActiveData 中 [nData]:[".. nData .."] 必须为整型并且大于等于0")
		return
	end

	if type(nEndTime) ~= "number" or nEndTime < 0 or nEndTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSTCActiveData 中 [nEndTime]:[".. nEndTime .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nNotify) ~= "number" or nNotify < 0 or nNotify%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSTCActiveData 中 [nNotify]:[".. nNotify .."] 必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSTCActiveData 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return UserAddSTCActiveData(nUserId,nActiveType,nEventType,nData,nEndTime,nNotify)
end

-- 跨服调用增加活动统计数据Data值
function User_AddOSSTCActiveData(nServerId,nActiveType,nEventType,nData,nEndTime,nNotify,nUserId)
	if type(nServerId) ~= "number" or nServerId < 0 or nServerId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddOSSTCActiveData 中 [nServerId]:[".. nServerId .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nActiveType) ~= "number" or nActiveType < 0 or nActiveType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddOSSTCActiveData 中 [nActiveType]:[".. nActiveType .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nEventType) ~= "number" or nEventType < 0 or nEventType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddOSSTCActiveData 中 [nEventType]:[".. nEventType .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddOSSTCActiveData 中 [nData]:[".. nData .."] 必须为整型并且大于等于0")
		return
	end

	if type(nEndTime) ~= "number" or nEndTime < 0 or nEndTime%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddOSSTCActiveData 中 [nEndTime]:[".. nEndTime .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nNotify) ~= "number" or nNotify < 0 or nNotify%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddOSSTCActiveData 中 [nNotify]:[".. nNotify .."] 必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddOSSTCActiveData 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return UserAddOSSTCActiveData(nServerId,nUserId,nActiveType,nEventType,nData,nEndTime,nNotify)
end

-- 设置活动统计数据Flag值
function User_SetSTCActiveFlag(nActiveType,nEventType,nData,nNotify,nUserId)
	if type(nActiveType) ~= "number" or nActiveType < 0 or nActiveType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetSTCActiveFlag 中 [nActiveType]:[".. nActiveType .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nEventType) ~= "number" or nEventType < 0 or nEventType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetSTCActiveFlag 中 [nEventType]:[".. nEventType .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetSTCActiveFlag 中 [nData]:[".. nData .."] 必须为整型并且大于等于0")
		return
	end

	if type(nNotify) ~= "number" or nNotify < 0 or nNotify%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetSTCActiveFlag 中 [nNotify]:[".. nNotify .."] 必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetSTCActiveFlag 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return UserSetSTCActiveFlag(nUserId,nActiveType,nEventType,nData,nNotify)
end


--------2019.12.16
-- // 返回玩家是否在比赛。参数1：玩家id 返回值，禁用返回true，未禁用返回false
-- this->LuaScript()->ExportCFunc(fn_IsUserInGame, "IsUserInGame");
function User_IsUserInGame(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsUserInGame 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return IsUserInGame(nUserId)
end

-- // 跨服玩家给钱, 参1:玩家服务器ID, 参2:玩家原服id, 参3:币种(0:金币,1:天石), 参4:数量，失败返回false，成功先返回true
-- this->LuaScript()->ExportCFunc(fn_AwardAsynOSMoney, "AwardAsynOSMoney");
-- 金币
function User_AwardAsynOSMoney(nServerId,nNum,nUserId)
	if type(nServerId) ~= "number" or nServerId < 0 or nServerId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardAsynOSMoney 中 [nServerId]:[".. nServerId .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nNum) ~= "number" or nNum < 0 or nNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardAsynOSMoney 中 [nNum]:[".. nNum .."] 必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardAsynOSMoney 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return AwardAsynOSMoney(nServerId,nUserId,0,nNum)
end

-- 天石
function User_AwardAsynOSEMoney(nServerId,nNum,nUserId)
	if type(nServerId) ~= "number" or nServerId < 0 or nServerId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardAsynOSEMoney 中 [nServerId]:[".. nServerId .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nNum) ~= "number" or nNum < 0 or nNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardAsynOSEMoney 中 [nNum]:[".. nNum .."] 必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardAsynOSEMoney 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return AwardAsynOSMoney(nServerId,nUserId,1,nNum)
end

-- // 跨服玩家扣钱, 参1:玩家服务器ID, 参2:玩家原服id, 参3:币种(0:金币,1:天石), 参4:数量，参5:功能编号，参6:额外参数，失败返回false，成功先返回true，需要等待异步结果调用ProcessLuaUserSpendOSMoney
-- this->LuaScript()->ExportCFunc(fn_SpendAsynOSMoney, "SpendAsynOSMoney");
-- 扣金币
function User_SpendAsynOSMoney(nServerId,nNum,nIndex,nExtraParam,nUserId)
	if type(nServerId) ~= "number" or nServerId < 0 or nServerId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SpendAsynOSMoney 中 [nServerId]:[".. nServerId .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nNum) ~= "number" or nNum < 0 or nNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SpendAsynOSMoney 中 [nNum]:[".. nNum .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nIndex) ~= "number" or nIndex < 0 or nIndex%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SpendAsynOSMoney 中 [nIndex]:[".. nIndex .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nExtraParam) ~= "number" or nExtraParam < 0 or nExtraParam%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SpendAsynOSMoney 中 [nExtraParam]:[".. nExtraParam .."] 必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SpendAsynOSMoney 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return SpendAsynOSMoney(nServerId,nUserId,0,nNum,nIndex,nExtraParam)
end

-- 扣天石
function User_SpendAsynOSEMoney(nServerId,nNum,nIndex,nExtraParam,nUserId)
	if type(nServerId) ~= "number" or nServerId < 0 or nServerId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SpendAsynOSEMoney 中 [nServerId]:[".. nServerId .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nNum) ~= "number" or nNum < 0 or nNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SpendAsynOSEMoney 中 [nNum]:[".. nNum .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nIndex) ~= "number" or nIndex < 0 or nIndex%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SpendAsynOSEMoney 中 [nIndex]:[".. nIndex .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nExtraParam) ~= "number" or nExtraParam < 0 or nExtraParam%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SpendAsynOSEMoney 中 [nExtraParam]:[".. nExtraParam .."] 必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SpendAsynOSEMoney 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return SpendAsynOSMoney(nServerId,nUserId,1,nNum,nIndex,nExtraParam)
end

-- 判断玩家属于哪个语种的玩家
-- 返回值表示：= 1 表示简体,= 2 表示英文,= 3 表示西语,= 4 表示阿语
function User_ChkLanguage()
	local nLanguage = Get_ServerLanguage()
	
	if nLanguage == - 1 then
		return
	end
	
	if nLanguage == 0 then
		return 1
	elseif nLanguage == 1 then
		return 2
	elseif nLanguage == 2 then
		return 3
	elseif nLanguage == 5 then
		return 4
	end

	return
end

-- //判断跨服玩家背包是否可以放入一定数量的金币，参1：idUser跨服玩家ID, 参2:n64Money表示要加入背包的金币数, 返回：true表示可以放入背包，false表示会超出上限，不可放入背包
-- this->LuaScript()->ExportCFunc(fn_CanPutOSMoney2Bag,    "CanPutOSMoney2Bag");
function User_CanPutOSMoney2Bag(nBagOSMoneyNum,nUserId)
	if type(nBagOSMoneyNum) ~= "number" or nBagOSMoneyNum%1 ~= 0 or math.abs(nBagOSMoneyNum) > 2100000000  then
		Sys_SaveAbnormalLog("函数 User_CanPutOSMoney2Bag 中 [nBagOSMoneyNum]:[".. nBagOSMoneyNum .."] 只能范围为正负21亿之间的整数")
		return
	end

	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_CanPutOSMoney2Bag [nUserId]:[".. nUserId .."]中 nUserId 只能传大等于于0的整数")
		return
	end
	
	return CanPutOSMoney2Bag(nUserId,nBagOSMoneyNum)
end

function Test_CanPutOSMoney2Bag(nMoney)
	local nUserId = Get_UserId()
	if User_CanPutOSMoney2Bag(nMoney,nUserId) then
		return User_TalkChannel2005("可放入"..nMoney.."的金币")
	end
	
	return User_TalkChannel2005("不可放入"..nMoney.."的金币")
end

-- 3、练气赋值接口（只给玩家本人赋值）
-- //设定玩家指定气的类型和值 参数1：玩家ID，参数2：所属炼气门， 参数3：第几条气 ，参数4：该炼气门该条气的类型和值（AABBBB） 返回值：成功true 失败 false
-- //该炼气门该条气的类型和值（AABBBB）:AA为属性编号1-13；BBBB为属性值大小，具体公式：属性*10000+value（value取值范围cq_fate_rule表里attrib_value_min和attrib_value_max字段（每个属性对应的最大最小值不同））
-- //nGasTypeData为炼气的分值，若要设置某一条气的值为0，不能直接设置0，需要指定气的属性(1-13)，使用公式：属性*10000+value（用attrib_value_min字段就能设置为0）
-- SetAssignTypeAndValue
function User_SetAssignTypeAndValue(nDoor, nGasNum, nGasTypeData, nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetAssignTypeAndValue 中 nUserId 只能传大等于0的整数")
		return
	end
	
	if type(nDoor) ~= "number" or nDoor <= 0 or nDoor%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetAssignTypeAndValue 参数 [nDoor]:".. nDoor .. "的 nDoor 必须为整型并且大于0")
		return
	end
	
	if type(nGasNum) ~= "number" or nGasNum <= 0 or nGasNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetAssignTypeAndValue 参数 [nGasNum]:".. nGasNum .. "的 nGasNum 必须为整型并且大于0")
		return
	end
	
	if type(nGasTypeData) ~= "number" or nGasTypeData <= 0 or nGasTypeData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_SetAssignTypeAndValue 参数 [nGasTypeData]:".. nGasTypeData .. "的 nGasTypeData 必须为整型并且大于0")
		return
	end
	
	return SetAssignTypeAndValue(nUserId,nDoor,nGasNum,nGasTypeData)
end

-- 进入类型1，2，3的地宫，其中类型3的地宫要先用Sys_OpenServerUndergroundPalace开启才能进入
-- // 玩家进入地宫, 参1:玩家ID 参2:地宫类型IDcq_sealed_treasure_type表的ID, 返回值:返回是否进入成功
function User_EnterUndergroundPalace(nTreasureId,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_EnterUndergroundPalace [nUserId]:[".. nUserId .."]中 nUserId 只能传大等于于0的整数")
		return
	end
	
	if nTreasureId == nil then
		nTreasureId = 0
	elseif type(nTreasureId) ~= "number" or nTreasureId < 0 or nTreasureId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_EnterUndergroundPalace [nTreasureId]:[".. nTreasureId .."]中 nTreasureId 只能传大等于于0的整数")
		return
	end
	return EnterSealedTreasure(nUserId,nTreasureId)
end 



--打开射击界面
function User_OpenShootGame(nGroup,nUserId)
	local nUserId = nUserId or Get_UserId()
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 User_OpenShootGame [nUserId]:[".. nUserId .."]中 nUserId 只能传大于等于0的整数")
		return
	end
	
	if nGroup == nil then
		nGroup = 1
	elseif type(nGroup) ~= "number" or nGroup%1 ~= 0 or nGroup < 0 then
		Sys_SaveAbnormalLog("函数 User_OpenShootGame [nGroup]:[".. nGroup .."]中 nGroup 只能传大于等于1的整数")
		return
	end

	return OpenShootGame(nUserId,nGroup)
end


-- 新增LUA接口 
-- ScreenChatSkinOpt
-- 弹幕皮肤操作，参1：玩家ID，参2：皮肤ID，参3：操作类型（0：激活， 1，设置），参4：有效时间（0 表示永久 > 0 如86400表示一天后到期）
-- 成功返回true 失败false
function User_ScreenChatOpt(nSkinId,nStatus,nSaveTime,nUserId)

	if type(nSkinId) ~= "number" or nSkinId%1 ~= 0 or nSkinId <= 0 then
		Sys_SaveAbnormalLog("函数 User_ScreenChatOpt [nSkinId]:[".. nSkinId .."]中 nSkinId 只能传整数")
		return
	end	
	if nStatus == nil then
		nStatus = 0
	elseif type(nStatus) ~= "number" or nStatus < 0 or nStatus%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ScreenChatOpt [nSkinId]:[".. nSkinId .."]中 nStatus 只能传0或1的整数")
		return
	end
	if type(nSaveTime) ~= "number" or nSaveTime%1 ~= 0 or nSaveTime < 0 then
		Sys_SaveAbnormalLog("函数 User_ScreenChatOpt [nSkinId]:[".. nSkinId .."]中 nSaveTime 只能传整数")
		return
	end	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_ScreenChatOpt [nSkinId]:[".. nSkinId .."]中 nUserId 只能传大等于于0的整数")
		return
	end

	 return  ScreenChatSkinOpt(nUserId,nSkinId,nStatus,nSaveTime)

end 


-- GetScreenChatSkinEndtime
-- 获取玩家皮肤的到期时间 ，参1：玩家ID，参2：皮肤ID
-- 若皮肤不存在返回-1 ，0 永久 ，> 0 到期时间戳

-- 玩家默认皮肤ID暂设置为1000
function User_GetScreenChatOptEndtime(nSkinId,nUserId)
	if type(nSkinId) ~= "number" or nSkinId%1 ~= 0 or nSkinId <= 0 then
		Sys_SaveAbnormalLog("函数 User_GetScreenChatOptEndtime [nSkinId]:[".. nSkinId .."]中 nSkinId 只能传整数")
		return
	end	
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_GetScreenChatOptEndtime [nSkinId]:[".. nSkinId .."]中 nUserId 只能传大等于于0的整数")
		return
	end
	return GetScreenChatSkinEndtime(nUserId,nSkinId)
	
end 


-- 新增玩家是否去跨服的lua接口
-- 测试： 在原服调用判断是否去跨服，由任务提供测试。只能在原服调用
function User_IsUserToCross(nUserId)
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsUserToCross 中 nUserId 只能传大于等于0的整数")
		return
	end
	
	return IsUserToCross(nUserId)
end

-- // 玩家获得勾玉, 参1:玩家id, 参2:勾玉类型, 参3:勾玉等级, 成功返回true, 失败返回false
-- bool AwardGouYu(OBJID idUser, int nType, int Lev);
-- 注：如果身上或背包己有，则会自动分解成精华。
function User_AwardGouYu(nType,nLev,nUserId)
	if type(nType) ~= "number" or nType%1 ~= 0 or nType <= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardGouYu [nType]:[".. nType .."]中 nType 只能传大于0的整数")
		return
	end
	
	if type(nLev) ~= "number" or nLev%1 ~= 0 or nLev <= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardGouYu [nLev]:[".. nLev .."]中 nLev 只能传大于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AwardGouYu [nUserId]:[".. nUserId .."]中 nUserId 只能传大等于0的整数")
		return
	end
	
	return AwardGouYu(nUserId,nType,nLev)
end

-- // 玩家勾玉装备位开启情况, 参1:玩家id, 参2:位置(1-16), 己开启返回true, 未开启返回false.
-- bool IsOpenGouYuPos(OBJID idUser, int nPos);
function User_IsOpenGouYuPos(nPos,nUserId)
	if type(nPos) ~= "number" or nPos%1 ~= 0 or nPos <= 0 or nPos >= 17 then
		Sys_SaveAbnormalLog("函数 User_IsOpenGouYuPos [nPos]:[".. nPos .."]中 nPos 只能传1-16之间的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_IsOpenGouYuPos [nUserId]:[".. nUserId .."]中 nUserId 只能传大等于0的整数")
		return
	end
	
	return IsOpenGouYuPos(nUserId,nPos)
end

-- // 开启指定的勾玉装备位, 参1:玩家id, 参2:位置(1-16), 成功返回true, 失败返回false
-- bool OpenGouYuPos(OBJID idUser, int nPos)
function User_OpenGouYuPos(nPos,nUserId)
	if type(nPos) ~= "number" or nPos%1 ~= 0 or nPos <= 0 or nPos >= 17 then
		Sys_SaveAbnormalLog("函数 User_OpenGouYuPos [nPos]:[".. nPos .."]中 nPos 只能传1-16之间的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_OpenGouYuPos [nUserId]:[".. nUserId .."]中 nUserId 只能传大等于0的整数")
		return
	end
	
	return OpenGouYuPos(nUserId,nPos)
end

-- // 添加勾玉精华, 参1:玩家id, 参2:精华值(正数:加精华, 负数:扣精华), 成功返回true, 失败返回false
-- bool AddGouYuEssence(OBJID idUser, int nEssence)
function User_AddGouYuEssence(nEssence,nUserId)
	if type(nEssence) ~= "number" or nEssence%1 ~= 0 or nEssence == 0 then
		Sys_SaveAbnormalLog("函数 User_AddGouYuEssence [nEssence]:[".. nEssence .."]中 nEssence 只能传不等于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddGouYuEssence [nUserId]:[".. nUserId .."]中 nUserId 只能传大等于0的整数")
		return
	end
	
	return AddGouYuEssence(nUserId,nEssence)
end


-- // 重铸结果，参1：玩家id，参2：被重铸的器灵类型, 参3：获得的器灵类型(0表示失败未获得)
-- bool RecastSpiritResult(OBJID idUser, OBJID idItemType, OBJID idNewItemType);
function User_RecastSpiritResult(nItemId,nNewItemId,nUserId)
	if type(nItemId) ~= "number" or nItemId%1 ~= 0 or nItemId <= 0 then
		Sys_SaveAbnormalLog("函数 User_RecastSpiritResult [nItemId]:[".. nItemId .."]中 nItemId 只能传大于0的整数")
		return
	end
	
	if type(nNewItemId) ~= "number" or nNewItemId%1 ~= 0 or nNewItemId < 0 then
		Sys_SaveAbnormalLog("函数 User_RecastSpiritResult [nNewItemId]:[".. nNewItemId .."]中 nNewItemId 只能传大等于0的整数")
		return
	end
	
	if nUserId == nil then
		nUserId = Get_UserId()
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_RecastSpiritResult [nUserId]:[".. nUserId .."]中 nUserId 只能传大等于0的整数")
		return
	end
	
	return RecastSpiritResult(nUserId,nItemId,nNewItemId)
end


function User_DecSTCActiveData(nActiveType,nEventType,nData,nNotify,nUserId)
	if type(nActiveType) ~= "number" or nActiveType < 0 or nActiveType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSTCActiveData 中 [nActiveType]:[".. nActiveType .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nEventType) ~= "number" or nEventType < 0 or nEventType%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSTCActiveData 中 [nEventType]:[".. nEventType .."] 必须为整型并且大于等于0")
		return
	end
	
	if type(nData) ~= "number" or nData < 0 or nData%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSTCActiveData 中 [nData]:[".. nData .."] 必须为整型并且大于等于0")
		return
	end

	
	if type(nNotify) ~= "number" or nNotify < 0 or nNotify%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSTCActiveData 中 [nNotify]:[".. nNotify .."] 必须为整型并且大于等于0")
		return
	end
	
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 User_AddSTCActiveData 中 [nUserId]:[".. nUserId .."] 的 nUserId 只能传大于等于0的整数")
		return
	end
	
	return UserDecSTCActiveData(nUserId,nActiveType,nEventType,nData,nNotify)
end

