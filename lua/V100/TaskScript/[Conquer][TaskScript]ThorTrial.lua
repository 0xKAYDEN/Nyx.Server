------------------------------------------------------------------------------
--Name:		[征服][任务脚本]雷神常规任务
--Purpose:	雷神常规任务
--Creator: 	洪聪敏
--Created:	2018/01/14
------------------------------------------------------------------------------
-- 命名前缀
-- ThorTrial_

-- 包含任务：
-- 1、试炼岛任务（雷神）
-- 2、昆仑雪水任务（雷神）logid = 12001267

--Stc：(189,20)
------------------------------

--------------------------------------数据配置----------------------------------
--stc掩码
local tThorTrial_Stc = {}
-- 雷神试炼岛
tThorTrial_Stc[23697] = {}
tThorTrial_Stc[23697]["EventType"] = 189
tThorTrial_Stc[23697]["DataType"] = 20
tThorTrial_Stc[23697]["Complete"] = 1

-- 基础数据
local tThorTrial_Cont = {}
tThorTrial_Cont["IronGateTicket"] = 3319316 -- 雷神证明书
tThorTrial_Cont["IronGateAmulet"] = 3319315 -- 雷神符咒
tThorTrial_Cont["LightStone"] = 723018 -- 神光石
tThorTrial_Cont["ExpPotion"] = 723017 -- 昆仑雪水

-- 试炼传送坐标
tThorTrial_Cont["ChgMap"] = {}
tThorTrial_Cont["ChgMap"][1] = {1052,160,291}
tThorTrial_Cont["ChgMap"][2] = {1052,160,63}
tThorTrial_Cont["ChgMap"][3] = {1052,71,172}
tThorTrial_Cont["ChgMap"][4] = {1052,295,164}
tThorTrial_Cont["ChgMap"][5] = {1052,316,313}

-- 职业区间表
tThorTrial_Cont["ProRange"] = {}
tThorTrial_Cont["ProRange"][1] = {G_PRO_Trojan0,G_PRO_Trojan5} 		-- 勇士
tThorTrial_Cont["ProRange"][2] = {G_PRO_Warrior0,G_PRO_Warrior5}		-- 战士
tThorTrial_Cont["ProRange"][3] = {G_PRO_Archer0,G_PRO_Archer5} 		-- 弓手
tThorTrial_Cont["ProRange"][4] = {G_PRO_Ninja0,G_PRO_Ninja5} 		-- 忍者
tThorTrial_Cont["ProRange"][5] = {G_PRO_Monk0,G_PRO_Monk5} 			-- 武僧
tThorTrial_Cont["ProRange"][6] = {G_PRO_Pirate0,G_PRO_Pirate5} 		-- 海盗
tThorTrial_Cont["ProRange"][7] = {G_PRO_Dragon0,G_PRO_Dragon5} 		-- 拳师
tThorTrial_Cont["ProRange"][8] = {G_PRO_Taoist0,G_PRO_FireTaoist5} 	-- 道士
tThorTrial_Cont["ProRange"][9] = {G_PRO_IroFan0,G_PRO_IroFan5} 	-- 铁扇门
tThorTrial_Cont["ProRange"][10] = {G_PRO_Thor0,G_PRO_Thor5} 	-- 雷神

-- 雷神装备数据
tThorTrial_Cont["Equip"] = {}
tThorTrial_Cont["Equip"][23698] = {}
tThorTrial_Cont["Equip"][23698][1] =  102006 -- 15级良品衣服
tThorTrial_Cont["Equip"][23698][2] =  102016 -- 22级良品衣服
tThorTrial_Cont["Equip"][23698][3] =  102026 -- 32级良品衣服
tThorTrial_Cont["Equip"][23698][4] =  102036 -- 40级良品衣服
tThorTrial_Cont["Equip"][23698][5] =  102046 -- 47级良品衣服
tThorTrial_Cont["Equip"][23698][6] =  102056 -- 57级良品衣服
tThorTrial_Cont["Equip"][23698][7] =  102066 -- 70级良品衣服
tThorTrial_Cont["Equip"][23698][8] =  102076 -- 87级良品衣服
tThorTrial_Cont["Equip"][23698][9] =  102086 -- 100级良品衣服
tThorTrial_Cont["Equip"][23698][10] = 102096 -- 110级良品衣服
tThorTrial_Cont["Equip"][23698][11] = 102306 -- 120级良品衣服

local tThorTrial_Log = {}
	tThorTrial_Log["GetExpPotion"] = "0,0,%d[%d],1[1],12001267,2,%d,1"
----------------------------------逻辑部分---------------------------------------------
-----------------------试炼岛任务
-- 换取符咒
function ThorTrial_GetAmulet(nNpcId)
	local nEvent = tThorTrial_Stc[nNpcId]["EventType"]
	local nType = tThorTrial_Stc[nNpcId]["DataType"]
	local nComplete = tThorTrial_Stc[nNpcId]["Complete"]
	-- 是否换取过
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			Sys_MsgBox(tThorTrial_Text[nNpcId]["Awarded"])
			return
		end
	end

	-- 可换取置掩码
	Task_SetStatistic(nEvent,nType,nComplete,1)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	-- 删证书给符咒
	local nTicket = tThorTrial_Cont["IronGateTicket"]
	local nAmulet = tThorTrial_Cont["IronGateAmulet"]
	if Item_ChkItem(nTicket) and Item_DelItem(nTicket) then
		Item_AddNewItem(nAmulet,"0 1")
	end
end

-- 接试炼任务
function ThorTrial_JointTask(nNpcId)
	local nUserPro = Get_UserProfession()
	
	-- 160以上的称号
	if nUserPro == G_PRO_IroFan0 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 随机传送坐标
	local nChgType = math.random(1,#tThorTrial_Cont["ChgMap"])
	local nMapId = tThorTrial_Cont["ChgMap"][nChgType][1]
	local nCellx = tThorTrial_Cont["ChgMap"][nChgType][2]
	local nCelly = tThorTrial_Cont["ChgMap"][nChgType][3]
	User_ChgMap(nMapId,nCellx,nCelly)
end

-----------------------昆仑雪水任务
-- NPC接入
function ThorTrial_TaskInto(nNpcId,nProType)
	local nUserPro = Get_UserProfession()
	local nNewPro = 0
	
	-- 职业区间取值
	for i,v in ipairs(tThorTrial_Cont["ProRange"]) do
		if nUserPro >= v[1] and nUserPro <= v[2] then
			nNewPro = i
		end
	end

	-- 判断职业区间是否正确
	if nProType ~= nNewPro then
		tNpcGossip[nNpcId]["Text121"] = tThorTrial_Text[nNpcId]["ProError"][nNewPro]
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-3")
end

-- 判断有无神光石
function ThorTrial_ChkStone(nNpcId)
	if not Item_ChkItem(tThorTrial_Cont["LightStone"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

	LinkNpcGossipFunc_New(nNpcId,"2-2")
end


-- 装备选择
function ThorTrial_ChkEquip(nNpcId,nLev)
	local nStoneId = tThorTrial_Cont["LightStone"]
	local nEquipId = tThorTrial_Cont["Equip"][nNpcId][nLev]
	-- 没有对应装备
	if not (Item_ChkItem(nEquipId) and Item_ChkItem(nStoneId)) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 删除对应物品
	local nItemId = tThorTrial_Cont["ExpPotion"]
	if Item_DelItem(nEquipId) and Item_DelItem(nStoneId) then
		Item_AddNewItem(nItemId,"0 1")
		Sys_SaveActionFuncLog(string.format(tThorTrial_Log["GetExpPotion"],nEquipId,nStoneId,nItemId))
		User_TalkChannel2005(tThorTrial_Text["GetExpPotion"])
	end
end



----------------------------------NPC部分---------------------------------------------
-- 雷霆神将（试炼岛）
tNpcFace[1480] = 62
tNpcGossip[23697] = tNpcGossip[23697] or DefaultNpc:new{}
tNpcGossip[23697]["OptionHidden"] = 1
tNpcGossip[23697]["DialogueText"] = tThorTrial_Text[23697]

-- 不是雷神
tNpcGossip[23697]["Text1-1"] = {111}
tNpcGossip[23697]["tOption1-1"] = {111}
tNpcGossip[23697]["ChkFunc1-1"] = function()
	local nUserPro = Get_UserProfession()
	return not (nUserPro >= G_PRO_Thor0 and nUserPro <= G_PRO_Thor5)
end
-- 有雷神证书
tNpcGossip[23697]["Text1-2"] = {121}
tNpcGossip[23697]["tOption1-2"] = {121}
tNpcGossip[23697]["ChkFunc1-2"] = function()
	return Item_ChkItem(tThorTrial_Cont["IronGateTicket"])
end
tNpcGossip[23697]["OptionFunc121"] = "ThorTrial_GetAmulet</N>23697"
-- 出接试炼对白
tNpcGossip[23697]["Text1-3"] = {131,132}
tNpcGossip[23697]["tOption1-3"] = {131,132}
tNpcGossip[23697]["OptionFunc131"] = "ThorTrial_JointTask</N>23697"
-- 不是雷神以上称号
tNpcGossip[23697]["Text1-4"] = {141}
tNpcGossip[23697]["tOption1-4"] = {141}


-- 雷霆神将（昆仑雪水）
tNpcFace[6262] = 93
tNpcGossip[23698] = tNpcGossip[23698] or DefaultNpc:new{}
tNpcGossip[23698]["OptionHidden"] = 1
tNpcGossip[23698]["DialogueText"] = tThorTrial_Text[23698]
-- 初始对白
tNpcGossip[23698]["Text1-1"] = {111}
tNpcGossip[23698]["tOption1-1"] = {111,112}
tNpcGossip[23698]["OptionFunc111"] = "ThorTrial_TaskInto</N>23698</N>10"
-- 职业区间不对
tNpcGossip[23698]["Text1-2"] = {121}
tNpcGossip[23698]["tOption1-2"] = {121}
-- 任务对白1
tNpcGossip[23698]["Text1-3"] = {131}
tNpcGossip[23698]["tOption1-3"] = {131,132}
tNpcGossip[23698]["OptionPoint131"] = "1-4"
-- 任务对白2
tNpcGossip[23698]["Text1-4"] = {141}
tNpcGossip[23698]["tOption1-4"] = {141,142}
tNpcGossip[23698]["OptionFunc141"] = "ThorTrial_ChkStone</N>23698"
-- 没有神光石
tNpcGossip[23698]["Text2-1"] = {211,212}
tNpcGossip[23698]["tOption2-1"] = {211}

-- 选择装备（第一页）
tNpcGossip[23698]["Text2-2"] = {221,222}
tNpcGossip[23698]["tOption2-2"] = {221,222,223,224,225,226,227,228}
tNpcGossip[23698]["OptionFunc221"] = "ThorTrial_ChkEquip</N>23698</N>1"
tNpcGossip[23698]["OptionFunc222"] = "ThorTrial_ChkEquip</N>23698</N>2"
tNpcGossip[23698]["OptionFunc223"] = "ThorTrial_ChkEquip</N>23698</N>3"
tNpcGossip[23698]["OptionFunc224"] = "ThorTrial_ChkEquip</N>23698</N>4"
tNpcGossip[23698]["OptionFunc225"] = "ThorTrial_ChkEquip</N>23698</N>5"
tNpcGossip[23698]["OptionFunc226"] = "ThorTrial_ChkEquip</N>23698</N>6"
tNpcGossip[23698]["OptionPoint227"] = "2-3"
-- 选择装备（第二页）
tNpcGossip[23698]["Text2-3"] = {231,232}
tNpcGossip[23698]["tOption2-3"] = {231,232,233,234,235,236,237}
tNpcGossip[23698]["OptionFunc231"] = "ThorTrial_ChkEquip</N>23698</N>7"
tNpcGossip[23698]["OptionFunc232"] = "ThorTrial_ChkEquip</N>23698</N>8"
tNpcGossip[23698]["OptionFunc233"] = "ThorTrial_ChkEquip</N>23698</N>9"
tNpcGossip[23698]["OptionFunc234"] = "ThorTrial_ChkEquip</N>23698</N>10"
tNpcGossip[23698]["OptionFunc235"] = "ThorTrial_ChkEquip</N>23698</N>11"
tNpcGossip[23698]["OptionPoint236"] = "2-2"
-- 选错装备
tNpcGossip[23698]["Text2-4"] = {241}
tNpcGossip[23698]["tOption2-4"] = {241}



