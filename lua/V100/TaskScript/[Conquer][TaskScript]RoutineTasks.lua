------------------------------------------------------------------------------
--Name:		[征服][任务脚本]铁扇门常规任务
--Purpose:	铁扇门常规任务
--Creator: 	严振飞
--Created:	2016/12/07
------------------------------------------------------------------------------
-- 命名前缀
-- RoutineTasks_

-- 包含任务：
-- 1、试炼岛任务（铁扇门）
-- 2、昆仑雪水任务（铁扇门）logid = 10000337
------------------------------

--------------------------------------数据配置----------------------------------
--stc掩码
local tRoutineTasks_Stc = {}
-- 铁扇门试炼岛
tRoutineTasks_Stc[20038] = {}
tRoutineTasks_Stc[20038]["EventType"] = 107
tRoutineTasks_Stc[20038]["DataType"] = 31
tRoutineTasks_Stc[20038]["Complete"] = 1

-- 基础数据
local tRoutineTasks_Cont = {}
tRoutineTasks_Cont["IronGateTicket"] = 3301711 -- 铁扇门证明书
tRoutineTasks_Cont["IronGateAmulet"] = 3301712 -- 铁扇门符咒
tRoutineTasks_Cont["LightStone"] = 723018 -- 神光石
tRoutineTasks_Cont["ExpPotion"] = 723017 -- 昆仑雪水

-- 试炼传送坐标
tRoutineTasks_Cont["ChgMap"] = {}
tRoutineTasks_Cont["ChgMap"][1] = {1052,160,291}
tRoutineTasks_Cont["ChgMap"][2] = {1052,160,63}
tRoutineTasks_Cont["ChgMap"][3] = {1052,71,172}
tRoutineTasks_Cont["ChgMap"][4] = {1052,295,164}
tRoutineTasks_Cont["ChgMap"][5] = {1052,316,313}

-- 职业区间表
tRoutineTasks_Cont["ProRange"] = {}
tRoutineTasks_Cont["ProRange"][1] = {G_PRO_Trojan0,G_PRO_Trojan5} 		-- 勇士
tRoutineTasks_Cont["ProRange"][2] = {G_PRO_Warrior0,G_PRO_Warrior5}		-- 战士
tRoutineTasks_Cont["ProRange"][3] = {G_PRO_Archer0,G_PRO_Archer5} 		-- 弓手
tRoutineTasks_Cont["ProRange"][4] = {G_PRO_Ninja0,G_PRO_Ninja5} 		-- 忍者
tRoutineTasks_Cont["ProRange"][5] = {G_PRO_Monk0,G_PRO_Monk5} 			-- 武僧
tRoutineTasks_Cont["ProRange"][6] = {G_PRO_Pirate0,G_PRO_Pirate5} 		-- 海盗
tRoutineTasks_Cont["ProRange"][7] = {G_PRO_Dragon0,G_PRO_Dragon5} 		-- 拳师
tRoutineTasks_Cont["ProRange"][8] = {G_PRO_Taoist0,G_PRO_FireTaoist5} 	-- 道士
tRoutineTasks_Cont["ProRange"][9] = {G_PRO_IroFan0,G_PRO_IroFan5} 	-- 铁扇门
tRoutineTasks_Cont["ProRange"][10] = {G_PRO_Thor0,G_PRO_Thor5} 	-- 雷神

-- 铁扇门装备数据
tRoutineTasks_Cont["Equip"] = {}
tRoutineTasks_Cont["Equip"][20039] = {}
tRoutineTasks_Cont["Equip"][20039][1] = 101006 -- 15级良品衣服
tRoutineTasks_Cont["Equip"][20039][2] = 101016 -- 22级良品衣服
tRoutineTasks_Cont["Equip"][20039][3] = 101026 -- 32级良品衣服
tRoutineTasks_Cont["Equip"][20039][4] = 101036 -- 40级良品衣服
tRoutineTasks_Cont["Equip"][20039][5] = 101046 -- 47级良品衣服
tRoutineTasks_Cont["Equip"][20039][6] = 101056 -- 57级良品衣服
tRoutineTasks_Cont["Equip"][20039][7] = 101066 -- 70级良品衣服
tRoutineTasks_Cont["Equip"][20039][8] = 101076 -- 87级良品衣服
tRoutineTasks_Cont["Equip"][20039][9] = 101086 -- 100级良品衣服
tRoutineTasks_Cont["Equip"][20039][10] = 101096 -- 110级良品衣服
tRoutineTasks_Cont["Equip"][20039][11] = 101106 -- 120级良品衣服

--陷阱判断符咒数据
local tRoutineTasks_TrapTrigger = {}
tRoutineTasks_TrapTrigger[1] = 710011
tRoutineTasks_TrapTrigger[2] = 710012
tRoutineTasks_TrapTrigger[3] = 710013
tRoutineTasks_TrapTrigger[4] = 710014
tRoutineTasks_TrapTrigger[5] = 710015
tRoutineTasks_TrapTrigger[6] = 710635
tRoutineTasks_TrapTrigger[7] = 711336
tRoutineTasks_TrapTrigger[8] = 711600
tRoutineTasks_TrapTrigger[9] = 3004947
tRoutineTasks_TrapTrigger[10] = 3301712
tRoutineTasks_TrapTrigger[11] = 3319315
--试炼岛陷阱数据
local tRoutineTasks_TrapType = {}
tRoutineTasks_TrapType["Type"] = 24
tRoutineTasks_TrapType["Sort"] = 17
tRoutineTasks_TrapType["LookFace"] = 7700
tRoutineTasks_TrapType["OwnerType"] = 2
tRoutineTasks_TrapType["OwnerId"] = 4
tRoutineTasks_TrapType["MapId"] = 1052
tRoutineTasks_TrapType["PosX"] = 218
tRoutineTasks_TrapType["PosY"] = 208
tRoutineTasks_TrapType["Life"] = 48683250
tRoutineTasks_TrapType["Base"] = 0000
tRoutineTasks_TrapType["Linkid"] = 511500


local tRoutineTasks_Log = {}
	tRoutineTasks_Log["GetExpPotion"] = "0,0,%d[%d],1[1],10000337,2,%d,1"
	tRoutineTasks_Log["Delete"] = "0,0,%d,1,18000150,1,0,0"
	tRoutineTasks_Log["Moshen"] = "0,0,0,0,18000150,2,0,0"
	
	
----------------------------------逻辑部分---------------------------------------------

-----------------------试炼岛任务
-- 换取符咒
function RoutineTasks_GetAmulet(nNpcId)
	local nEvent = tRoutineTasks_Stc[nNpcId]["EventType"]
	local nType = tRoutineTasks_Stc[nNpcId]["DataType"]
	local nComplete = tRoutineTasks_Stc[nNpcId]["Complete"]
	-- 是否换取过
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			Sys_MsgBox(tRoutineTasks_Text[nNpcId]["Awarded"])
			return
		end
	end

	-- 可换取置掩码
	Task_SetStatistic(nEvent,nType,nComplete,1)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	-- 删证书给符咒
	local nTicket = tRoutineTasks_Cont["IronGateTicket"]
	local nAmulet = tRoutineTasks_Cont["IronGateAmulet"]
	if Item_ChkItem(nTicket) and Item_DelItem(nTicket) then
		Item_AddNewItem(nAmulet,"0 1")
	end
end

-- 接试炼任务
function RoutineTasks_JointTask(nNpcId)
	local nUserPro = Get_UserProfession()
	
	-- 160以上的称号
	if nUserPro == G_PRO_IroFan0 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 随机传送坐标
	local nChgType = math.random(1,#tRoutineTasks_Cont["ChgMap"])
	local nMapId = tRoutineTasks_Cont["ChgMap"][nChgType][1]
	local nCellx = tRoutineTasks_Cont["ChgMap"][nChgType][2]
	local nCelly = tRoutineTasks_Cont["ChgMap"][nChgType][3]
	User_ChgMap(nMapId,nCellx,nCelly)
end

-----------------------昆仑雪水任务
-- NPC接入
function RoutineTasks_TaskInto(nNpcId,nProType)
	local nUserPro = Get_UserProfession()
	local nNewPro = 0
	
	-- 职业区间取值
	for i,v in ipairs(tRoutineTasks_Cont["ProRange"]) do
		if nUserPro >= v[1] and nUserPro <= v[2] then
			nNewPro = i
		end
	end

	-- 判断职业区间是否正确
	if nProType ~= nNewPro then
		tNpcGossip[nNpcId]["Text121"] = tRoutineTasks_Text[nNpcId]["ProError"][nNewPro]
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-3")
end

-- 判断有无神光石
function RoutineTasks_ChkStone(nNpcId)
	if not Item_ChkItem(tRoutineTasks_Cont["LightStone"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

	LinkNpcGossipFunc_New(nNpcId,"2-2")
end


-- 装备选择
function RoutineTasks_ChkEquip(nNpcId,nLev)
	local nStoneId = tRoutineTasks_Cont["LightStone"]
	local nEquipId = tRoutineTasks_Cont["Equip"][nNpcId][nLev]
	-- 没有对应装备
	if not (Item_ChkItem(nEquipId) and Item_ChkItem(nStoneId)) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 删除对应物品
	local nItemId = tRoutineTasks_Cont["ExpPotion"]
	if Item_DelItem(nEquipId) and Item_DelItem(nStoneId) then
		Item_AddNewItem(nItemId,"0 1")
		Sys_SaveActionFuncLog(string.format(tRoutineTasks_Log["GetExpPotion"],nEquipId,nStoneId,nItemId))
		User_TalkChannel2005(tRoutineTasks_Text["GetExpPotion"])
	end
end

--陷阱逻辑
function RoutineTasks_TrapTrigger()
	local tRoutineTasks_ChkItem = {}
	local nNeedNum = #tRoutineTasks_TrapTrigger - 1
	local sName = tRoutineTasks_Text["MoShen"]
	local nType = tRoutineTasks_TrapType["Type"]
	local nSort = tRoutineTasks_TrapType["Sort"]
	local nLookFace = tRoutineTasks_TrapType["LookFace"]
	local nOwnerType = tRoutineTasks_TrapType["OwnerType"]
	local nOwnerId = tRoutineTasks_TrapType["OwnerId"]
	local nMapId = tRoutineTasks_TrapType["MapId"]
	local nPosX = tRoutineTasks_TrapType["PosX"]
	local nPosY = tRoutineTasks_TrapType["PosY"]
	local nLife = tRoutineTasks_TrapType["Life"]
	local nBase = tRoutineTasks_TrapType["Base"]
	local nLinkid = tRoutineTasks_TrapType["Linkid"]
	
	
	for k,v in ipairs(tRoutineTasks_TrapTrigger) do 
		if Item_ChkItem(v) then
		 table.insert(tRoutineTasks_ChkItem,v)
		end
	end
	
	if #tRoutineTasks_ChkItem >= nNeedNum then 
		for i=1,nNeedNum do 
			if Item_ChkItem(tRoutineTasks_ChkItem[i]) and Item_DelItem(tRoutineTasks_ChkItem[i]) then
				Sys_SaveActionTaskLog(string.format(tRoutineTasks_Log["Delete"],tRoutineTasks_ChkItem[i]))
			end
		end
		
		Npc_CreateDynaNpc(sName,nType,nSort,nLookFace,nOwnerType,nOwnerId,nMapId,nPosX,nPosY,nLife,nBase,nLinkid)
		Sys_SaveActionTaskLog(tRoutineTasks_Log["Moshen"])
	end
end



----------------------------------NPC部分---------------------------------------------
-- 铁扇门主（试炼岛）
tNpcFace[4533] = 62
tNpcGossip[20038] = tNpcGossip[20038] or DefaultNpc:new{}
tNpcGossip[20038]["OptionHidden"] = 1
tNpcGossip[20038]["DialogueText"] = tRoutineTasks_Text[20038]

-- 不是铁扇门
tNpcGossip[20038]["Text1-1"] = {111}
tNpcGossip[20038]["tOption1-1"] = {111}
tNpcGossip[20038]["ChkFunc1-1"] = function()
	local nUserPro = Get_UserProfession()
	return not (nUserPro >= G_PRO_IroFan0 and nUserPro <= G_PRO_IroFan5)
end
-- 有铁扇门证书
tNpcGossip[20038]["Text1-2"] = {121}
tNpcGossip[20038]["tOption1-2"] = {121}
tNpcGossip[20038]["ChkFunc1-2"] = function()
	return Item_ChkItem(tRoutineTasks_Cont["IronGateTicket"])
end
tNpcGossip[20038]["OptionFunc121"] = "RoutineTasks_GetAmulet</N>20038"
-- 出接试炼对白
tNpcGossip[20038]["Text1-3"] = {131,132}
tNpcGossip[20038]["tOption1-3"] = {131,132}
tNpcGossip[20038]["OptionFunc131"] = "RoutineTasks_JointTask</N>20038"
-- 不是铁扇门以上称号
tNpcGossip[20038]["Text1-4"] = {141}
tNpcGossip[20038]["tOption1-4"] = {141}


-- 铁扇门主（昆仑雪水）
tNpcFace[5171] = 93
tNpcGossip[20039] = tNpcGossip[20039] or DefaultNpc:new{}
tNpcGossip[20039]["OptionHidden"] = 1
tNpcGossip[20039]["DialogueText"] = tRoutineTasks_Text[20039]
-- 初始对白
tNpcGossip[20039]["Text1-1"] = {111}
tNpcGossip[20039]["tOption1-1"] = {111,112}
tNpcGossip[20039]["OptionFunc111"] = "RoutineTasks_TaskInto</N>20039</N>9"
-- 职业区间不对
tNpcGossip[20039]["Text1-2"] = {121}
tNpcGossip[20039]["tOption1-2"] = {121}
-- 任务对白1
tNpcGossip[20039]["Text1-3"] = {131}
tNpcGossip[20039]["tOption1-3"] = {131,132}
tNpcGossip[20039]["OptionPoint131"] = "1-4"
-- 任务对白2
tNpcGossip[20039]["Text1-4"] = {141}
tNpcGossip[20039]["tOption1-4"] = {141,142}
tNpcGossip[20039]["OptionFunc141"] = "RoutineTasks_ChkStone</N>20039"
-- 没有神光石
tNpcGossip[20039]["Text2-1"] = {211,212}
tNpcGossip[20039]["tOption2-1"] = {211}

-- 选择装备（第一页）
tNpcGossip[20039]["Text2-2"] = {221,222}
tNpcGossip[20039]["tOption2-2"] = {221,222,223,224,225,226,227,228}
tNpcGossip[20039]["OptionFunc221"] = "RoutineTasks_ChkEquip</N>20039</N>1"
tNpcGossip[20039]["OptionFunc222"] = "RoutineTasks_ChkEquip</N>20039</N>2"
tNpcGossip[20039]["OptionFunc223"] = "RoutineTasks_ChkEquip</N>20039</N>3"
tNpcGossip[20039]["OptionFunc224"] = "RoutineTasks_ChkEquip</N>20039</N>4"
tNpcGossip[20039]["OptionFunc225"] = "RoutineTasks_ChkEquip</N>20039</N>5"
tNpcGossip[20039]["OptionFunc226"] = "RoutineTasks_ChkEquip</N>20039</N>6"
tNpcGossip[20039]["OptionPoint227"] = "2-3"
-- 选择装备（第二页）
tNpcGossip[20039]["Text2-3"] = {231,232}
tNpcGossip[20039]["tOption2-3"] = {231,232,233,234,235,236,237}
tNpcGossip[20039]["OptionFunc231"] = "RoutineTasks_ChkEquip</N>20039</N>7"
tNpcGossip[20039]["OptionFunc232"] = "RoutineTasks_ChkEquip</N>20039</N>8"
tNpcGossip[20039]["OptionFunc233"] = "RoutineTasks_ChkEquip</N>20039</N>9"
tNpcGossip[20039]["OptionFunc234"] = "RoutineTasks_ChkEquip</N>20039</N>10"
tNpcGossip[20039]["OptionFunc235"] = "RoutineTasks_ChkEquip</N>20039</N>11"
tNpcGossip[20039]["OptionPoint236"] = "2-2"
-- 选错装备
tNpcGossip[20039]["Text2-4"] = {241}
tNpcGossip[20039]["tOption2-4"] = {241}

--陷阱
tTrap[50] = tTrap[50] or {}
tTrap[50]["Function"] = function(nTrapId,nTrapType)
	 RoutineTasks_TrapTrigger()
end