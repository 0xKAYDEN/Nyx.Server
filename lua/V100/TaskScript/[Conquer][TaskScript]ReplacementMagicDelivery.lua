------------------------------------------------------------------------------------
--Name：            190621[简体征服][活动脚本]技能补领传送NPC制作
--Creator:      王贤

--Created:     2019-06-21
------------------------------------------------------------------------------------
--任务需求：
-- 190621【简体征服】技能补领传送NPC制作
-- 制作一个传送NPC，帮玩家去其他职业的地图补领技能，二转以上的才能使用
------------------------------------------------------------------------------------
-- 前缀
-- ReplacementMagicDelivery_

----------------------------------表配置部分--------------------------------------------
local ReplacementMagicDelivery_Data = {}
-- 传送的职业地图
ReplacementMagicDelivery_Data["MapId"] = {}
-- 落脚点
ReplacementMagicDelivery_Data["MapId"]["PosX"] = 72
ReplacementMagicDelivery_Data["MapId"]["PosY"] = 68
-- 地图ID
-- 勇士（1000-1005）
ReplacementMagicDelivery_Data["MapId"][1]  = 10656
-- 战士（2000-2005）
ReplacementMagicDelivery_Data["MapId"][2]  = 10652
-- 射手（4000-4005）
ReplacementMagicDelivery_Data["MapId"][4]  = 10650
-- 忍者（5000-5005）
ReplacementMagicDelivery_Data["MapId"][5]  = 10653
-- 武僧（6000-6005）
ReplacementMagicDelivery_Data["MapId"][6]  = 10657
-- 海盗（7000-7005）
ReplacementMagicDelivery_Data["MapId"][7]  = 10658
-- 拳师（8000-8005）
ReplacementMagicDelivery_Data["MapId"][8]  = 10651
-- 雷神（9000-9005）
ReplacementMagicDelivery_Data["MapId"][9]  = 10655
-- 道士（10000-14005）
ReplacementMagicDelivery_Data["MapId"][10] = 10659
-- 水道（13002-13005）
ReplacementMagicDelivery_Data["MapId"][13] = 10659
-- 火道（14002-14005）
ReplacementMagicDelivery_Data["MapId"][14] = 10659
-- 铁扇门（16000-16005）
ReplacementMagicDelivery_Data["MapId"][16] = 10654

-- 条件
-- 等级限制
ReplacementMagicDelivery_Data["Metempsychosis"] = 2
ReplacementMagicDelivery_Data["Level"] = 0



----------------------------------逻辑部分---------------------------------------------
-- 传送到职业地图
function ReplacementMagicDelivery_ChgInauMap(nIndex)
	-- local nUserPro = Get_NewUserProfession()
	-- local nIndex = math.modf(nUserPro / 1000)
	
	local nMapId = ReplacementMagicDelivery_Data["MapId"][nIndex]
	local nPosX = ReplacementMagicDelivery_Data["MapId"]["PosX"]
	local nPosY = ReplacementMagicDelivery_Data["MapId"]["PosY"]
	User_UserRandBoundTrans(nMapId, nPosX, nPosY, 1, 1, 0)
end

-- 判断转世前是否是该职业
function ReplacementMagicDelivery_ChkBeforeMetempsychosis(nIndex)
	local nOldPro = Get_NewUserOldPro() -- 取玩家前世职业
	local nFirstPro = Get_NewUserFirstPro() -- 取玩家前前世职业
	local nNowPro = Get_NewUserProfession() -- 取玩家当前职业
	
	-- 如果玩家是水火道则统一改成道士  
	local nSign1 = math.modf(nOldPro / 1000)
	if nSign1 == 13 or nSign1 == 14 then
		nSign1 = 10
	end
	local nSign2 = math.modf(nFirstPro / 1000)
	if nSign2 == 13 or nSign2 == 14 then
		nSign2 = 10
	end
	local nSign3 = math.modf(nNowPro / 1000)
	if nSign3 == 13 or nSign3 == 14 then
		nSign3 = 10
	end
	-- 如果当前职业和前世职业一样，就不显示
	if nSign3 == nIndex then
		return false
	end
	
	-- 判断是否显示选项  
	if nSign1 == nIndex or nSign2 == nIndex then
		return true
	else
		return false
	end
end


----------------------------------NPC部分---------------------------------------------
tNpcFace[4692] = 23
tNpcGossip[24351]= tNpcGossip[24351] or DefaultNpc:new{}
tNpcGossip[24351]["OptionHidden"] = 1
tNpcGossip[24351]["DialogueText"] = tReplacementMagicDelivery_Text[24351]
-- 等级不足
tNpcGossip[24351]["Text1-1"] = {111, 112}
tNpcGossip[24351]["ChkFunc1-1"]= function()
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(ReplacementMagicDelivery_Data["Level"], ReplacementMagicDelivery_Data["Metempsychosis"]) then
		return true
	end
	return false
end
tNpcGossip[24351]["tOption1-1"] = {111}
-- 等级达到
tNpcGossip[24351]["Text1-2"] = {121, 122}
tNpcGossip[24351]["ChkFunc1-2"]= function()
	-- 判断等级
	if User_JudgeLevelAndMetempsychosis(ReplacementMagicDelivery_Data["Level"], ReplacementMagicDelivery_Data["Metempsychosis"]) then
		return true
	end
	return false
end
tNpcGossip[24351]["tOption1-2"] = {121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131}
tNpcGossip[24351]["OptionFunc121"] = "ReplacementMagicDelivery_ChgInauMap</N>7"
tNpcGossip[24351]["OptionChkFunc121"] = function ()
	return ReplacementMagicDelivery_ChkBeforeMetempsychosis(7)
end
tNpcGossip[24351]["OptionFunc122"] = "ReplacementMagicDelivery_ChgInauMap</N>9"
tNpcGossip[24351]["OptionChkFunc122"] = function ()
	return ReplacementMagicDelivery_ChkBeforeMetempsychosis(9)
end
tNpcGossip[24351]["OptionFunc123"] = "ReplacementMagicDelivery_ChgInauMap</N>8"
tNpcGossip[24351]["OptionChkFunc123"] = function ()
	return ReplacementMagicDelivery_ChkBeforeMetempsychosis(8)
end
tNpcGossip[24351]["OptionFunc124"] = "ReplacementMagicDelivery_ChgInauMap</N>6"
tNpcGossip[24351]["OptionChkFunc124"] = function ()
	return ReplacementMagicDelivery_ChkBeforeMetempsychosis(6)
end
tNpcGossip[24351]["OptionFunc125"] = "ReplacementMagicDelivery_ChgInauMap</N>5"
tNpcGossip[24351]["OptionChkFunc125"] = function ()
	return ReplacementMagicDelivery_ChkBeforeMetempsychosis(5)
end
tNpcGossip[24351]["OptionFunc126"] = "ReplacementMagicDelivery_ChgInauMap</N>2"
tNpcGossip[24351]["OptionChkFunc126"] = function ()
	return ReplacementMagicDelivery_ChkBeforeMetempsychosis(2)
end
tNpcGossip[24351]["OptionFunc127"] = "ReplacementMagicDelivery_ChgInauMap</N>10"
tNpcGossip[24351]["OptionChkFunc127"] = function ()
	return ReplacementMagicDelivery_ChkBeforeMetempsychosis(10)
end
tNpcGossip[24351]["OptionFunc128"] = "ReplacementMagicDelivery_ChgInauMap</N>4"
tNpcGossip[24351]["OptionChkFunc128"] = function ()
	return ReplacementMagicDelivery_ChkBeforeMetempsychosis(4)
end
tNpcGossip[24351]["OptionFunc129"] = "ReplacementMagicDelivery_ChgInauMap</N>16"
tNpcGossip[24351]["OptionChkFunc129"] = function ()
	return ReplacementMagicDelivery_ChkBeforeMetempsychosis(16)
end
tNpcGossip[24351]["OptionFunc130"] = "ReplacementMagicDelivery_ChgInauMap</N>1"
tNpcGossip[24351]["OptionChkFunc130"] = function ()
	return ReplacementMagicDelivery_ChkBeforeMetempsychosis(1)
end
tNpcGossip[24351]["OptionFunc131"] = "ReplacementMagicDelivery_ChgInauMap</N>1"
tNpcGossip[24351]["OptionChkFunc131"] = function ()
	local nNowPro = Get_NewUserProfession() -- 取玩家当前职业
	-- 如果玩家是水火道则统一改成道士  
	local nSign3 = math.modf(nNowPro / 1000)
	if nSign3 == 13 or nSign3 == 14 then
		nSign3 = 10
	end
	local sStr = tReplacementMagicDelivery_Text["Dialog"][nSign3]
	if sStr == nil then
		tNpcGossip[24351]["Option131"] = string.format(tReplacementMagicDelivery_Text[24351]["Option131"], "")
	else
		tNpcGossip[24351]["Option131"] = string.format(tReplacementMagicDelivery_Text[24351]["Option131"], sStr)
	end
	tNpcGossip[24351]["OptionFunc131"] = "ReplacementMagicDelivery_ChgInauMap</N>" .. nSign3
	return true
end

-- 其他传送使
tNpcGossip[24371]= tNpcGossip[24351]
tNpcGossip[24372]= tNpcGossip[24351]
tNpcGossip[24373]= tNpcGossip[24351]
tNpcGossip[24374]= tNpcGossip[24351]
tNpcGossip[24375]= tNpcGossip[24351]
tNpcGossip[24376]= tNpcGossip[24351]
tNpcGossip[24377]= tNpcGossip[24351]
tNpcGossip[24378]= tNpcGossip[24351]
tNpcGossip[24379]= tNpcGossip[24351]
