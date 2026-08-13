----------------------------------------------------------------------------
--Name:		[征服][公用函数]符文函数.lua
--Purpose:	符文函数接口
--Creator: 	吴文鑫
--Created:	2017/10/17
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
-- 技能函数命名前缀词： Rune_
--例子：


------------------------------------------------------------------------------

-- // 添加符文; 参1: 玩家id, 参2: 符文类型, 参3: 赠品属性,  参4: 数量, 参5: 是否检查背包(1检查, 0不检查); 成功返回true, 失败返回false.
-- AddNewRune(OBJID idUser,  OBJID idType, int nMonopoly, int nAddAmount, int nFlag);
function Rune_AddNewRune(nRuneId,sRuneAttr,nUserId)
	local flag  = 0
	local addamount = 0
	local monopoly =0
	
	if type(sRuneAttr) == "string" then
		tItemAttr = Sys_Split(sRuneAttr," ")
		flag  = tonumber(tItemAttr[1])
		addamount = tonumber(tItemAttr[2])
		monopoly = tonumber(tItemAttr[3])	
	elseif type(sRuneAttr) == "table" then
		flag  = sRuneAttr.flag
		addamount = sRuneAttr.addamount
		monopoly = sRuneAttr.monopoly
	else
		Sys_SaveAbnormalLog("函数Rune_AddNewRune中[nRuneId]:[".. nRuneId .."]的sRuneAttr必须为字符串或者表类型。")
		return
	end
	
	if type(nRuneId) ~= "number" or  nRuneId <= 0 or nRuneId%1 ~= 0 then 
		Sys_SaveAbnormalLog("函数Rune_AddNewRune的[nRuneId]:[".. nRuneId .."]的nRuneId必须为整数且大于0。")
		return
	end	
	
	if flag == nil then 
		flag = 0
	elseif flag~= 0 and flag~= 1 then
		Sys_SaveAbnormalLog("函数Rune_AddNewRune中[nRuneId]:[".. nRuneId .."]的flag必须为0或1。")
		return
	end

	if addamount == nil or addamount == 0 then 
		addamount = 1
	elseif type(addamount) ~= "number" or addamount < 0 or addamount%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Rune_AddNewRune中[nRuneId]:[".. nRuneId .."]的addamount必须大于等于0。")
		return
	end
	
	if monopoly == nil then 
		monopoly = 0
	elseif type(monopoly) ~= "number" or monopoly < 0 or monopoly%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Rune_AddNewRune中[nRuneId]:[".. nRuneId .."]的monopoly必须为整数且不小于0。")
		return
	end	
	
	if nUserId == nil then 
		nUserId = 0
	elseif type(nUserId) ~= "number" or  nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Rune_AddNewRune中[nRuneId]:[".. nRuneId .."]的nUserId必须为整数且不小于0。")
		return
	end
	   
	if AddNewRune(nUserId,nRuneId,monopoly,addamount,flag) then
		return true
	else
		Sys_SaveAbnormalLog("函数 Rune_AddNewRune 添加符文ID为：" .. nRuneId .."失败。")
		return false
	end
end



function Rune_AddNewRuneAndMsg(nRuneId,sRuneAttr,nUserId)
	local flag  = 0
	local addamount = 0
	local monopoly =0
	
	if type(sRuneAttr) == "string" then
		tRuneAttr = Sys_Split(sRuneAttr," ")
		flag  = tonumber(tRuneAttr[1])
		addamount = tonumber(tRuneAttr[2])
		monopoly = tonumber(tRuneAttr[3])	
	elseif type(sRuneAttr) == "table" then
		flag  = sRuneAttr.flag
		addamount = sRuneAttr.addamount
		monopoly = sRuneAttr.monopoly
		
	else
		Sys_SaveAbnormalLog("函数Rune_AddNewRune中[nRuneId]:[".. nRuneId .."]的sRuneAttr必须为字符串或者表类型。")
		return
	end
	
	if type(nRuneId) ~= "number" or  nRuneId <= 0 or nRuneId%1 ~= 0 then 
		Sys_SaveAbnormalLog("函数Rune_AddNewRuneAndMsg中[nRuneId]:[".. nRuneId .."]的nRuneId必须为整数且大于0。")
		return
	end	
	
	if flag == nil then 
		flag = 0
	elseif flag~= 0 and flag~= 1 then
		Sys_SaveAbnormalLog("函数Rune_AddNewRuneAndMsg中[nRuneId]:[".. nRuneId .."]的flag必须为0或1。")
		return
	end

	if addamount == nil or addamount == 0 then 
		addamount = 1
	elseif type(addamount) ~= "number" or addamount < 0 or addamount%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Rune_AddNewRuneAndMsg中[nRuneId]:[".. nRuneId .."]的addamount必须大于等于0。")
		return
	end
	
	if monopoly == nil then 
		monopoly = 0
	elseif type(monopoly) ~= "number" or monopoly < 0 or monopoly%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Rune_AddNewRuneAndMsg中[nRuneId]:[".. nRuneId .."]的monopoly必须为整数且不小于0。")
		return
	end	
		
	if nUserId == nil then 
		nUserId = 0
	elseif type(nUserId) ~= "number" or  nUserId < 0 or nUserId%1 ~= 0 then
		Sys_SaveAbnormalLog("函数Rune_AddNewRuneAndMsg中[nRuneId]:[".. nRuneId .."]的nUserId必须为整数且不小于0。")
		return
	end
	
	monopoly = Item_Monopoly(nRuneId,monopoly,nUserId)
	
	if AddNewRune(nUserId,nRuneId,monopoly,addamount,flag) then
		local sUserName = Get_UserName(nUserId)
		local sRuneName = tRewardTemplate_Text["RuneName"][nRuneId] or Get_ItemtypeName(nRuneId)
		local nRuneNum = addamount
		
		-- 判断是否是赠品
		if Sys_ParseNumbersContain(1,monopoly) then
			-- local sGift = "<" .. tRewardTemplate_Text["Gift"] .. ">"
			sRuneName = string.format(tLuaRes[10025],sRuneName,tRewardTemplate_Text["Gift"])
		end
		
		if nRuneId >= 4000000 and nRuneId <= 4039999 then 
			-- local sRune = "<" .. tRewardTemplate_Text["Rune"] .. ">"
			sRuneName = string.format(tLuaRes[10025],sRuneName,tRewardTemplate_Text["Rune"])
		end
		
		--判断神纹等级
		-- local nRuneType = math.floor(nRuneId/10000)
		-- if (nRuneType == 402) or (nRuneType == 403) then 
			-- local nLev = math.fmod(nRuneId,100)
			-- sRuneName = nLev .. tRewardTemplate_Text["Lev"] .. sRuneName
		-- end
		
		
		if addamount > 1 then
			-- local sNumber = "<" .. tRewardTemplate_Text["Number"] .. ">"
			sRuneName = string.format(tLuaRes[10026],sRuneName,tRewardTemplate_Text["Number"],addamount)
		end

		-- User_TalkChannel2005(string.format(tRewardTemplate_Text["Currency"],sRuneName),nUserId)
		return sRuneName
	else
		Sys_SaveAbnormalLog("函数Rune_AddNewRuneAndMsg添加物品ID为：" .. nRuneId .."失败。")
		return false
	end
end






-- // 检查玩家符文空格子数; 参1: 玩家ID, 参2: 空格数量; 成功返回true, 失败返回false.
-- CheckLeftRuneSpace(OBJID idUser, int nNum);
function Rune_CheckLeftRuneSpace(nSpaceNum,nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Rune_CheckLeftRuneSpace 第二个参数nUserId 为整型并且大于等于0")
		return
	end	
	
	if type(nSpaceNum) ~= "number" or nSpaceNum%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 Rune_CheckLeftRuneSpace 中 [nSpaceNum]:[".. nSpaceNum .."] 只能传大于0的整数")
		return
	end
	
	-- 判断是否大于0
	if nSpaceNum <= 0 then
		return true
	end
	
	return CheckLeftRuneSpace(nUserId,nSpaceNum)
end


-- 金炎 2017/10/16 15:57:22
-- http://forum.nderp.99.com/Forum/TopicList-276295.aspx
-- hello,这个黄色符文免疫不良状态的，骑马比赛里面有些不良状态好像是脚本那边的加的。我新增了一个判断黄色符文是否生效的接口 ----IsYellowRuneTakeEffect   您那边看下能不能帮忙重新生成下LUA脚本？
-- //检查黄色符文是否生效，参数1：玩家ID，生效返回true,不生效返回false
-- IsYellowRuneTakeEffect

function Rune_IsImmunityByRune(nUserId)
	if nUserId == nil then
		nUserId = 0
	elseif type(nUserId) ~= "number" or nUserId%1 ~= 0 or nUserId < 0 then
		Sys_SaveAbnormalLog("函数 Rune_IsImmunityByRune 第一个参数nUserId为整型并且大于等于0")
		return
	end
	
	return IsImmunityByRune(nUserId);
end
