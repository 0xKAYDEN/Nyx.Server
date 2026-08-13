--------------------------------------------------
--Name:		[征服][任务脚本]玩家神兵排行
--Purpose:	玩家神兵排行
--Creator: 	张磊
--Created:	2016/05/31
--------------------------------------------------

--命名规则：
-- PlayerWeaponRank_

--掩码说明：
-- 145 71    记录玩家上线是否触发过排行接口，只能触发一次
-- 145 72	 记录玩家点击NPC触发排行次数，每天5次机会

local tPlayerWeaponRank_Cont = {}
	-- 所有装备为编号
	tPlayerWeaponRank_Cont["EquipPos"] = {1,2,3,4,5,6,8,19,10,11,18,12}
	
	-- 装备限制
	tPlayerWeaponRank_Cont["EquipAdd"] = 8
	
	-- 装备洞限制
	tPlayerWeaponRank_Cont["EquipHole"] = 0
	
	-- 掩码表
	tPlayerWeaponRank_Cont["EventType"] = 145
	tPlayerWeaponRank_Cont["DataLimit"] = 5
	
	tPlayerWeaponRank_Cont["DataType"] = {}
	tPlayerWeaponRank_Cont["DataType"][1] = 71
	tPlayerWeaponRank_Cont["DataType"][2] = 72

-------------------------------------------------------------------------------------------------------------------	
	
	
-----------------------------------------------------------------逻辑部分-------------------------------------------	
	
-- 玩家条件检查
function tPlayerWeaponRank_ChkCont()
	local nEquipItem = 0
	for k,v in pairs(tPlayerWeaponRank_Cont["EquipPos"]) do
	
	
		nEquipItem = Get_EquipIDByPos(v)
		
		if nEquipItem > 0 then
			if v ~= 12 then
				if Get_ItemType(nEquipItem)%10 ~= 9 then
					return false
				end
			end
			
			if Get_ItemMagic3(nEquipItem) < tPlayerWeaponRank_Cont["EquipAdd"] then
				return false
			end
			
			if v ~= 18 and v ~= 12 then
				if Get_ItemGem1(nEquipItem) == 0 or  Get_ItemGem2(nEquipItem) == 0 then
					return false
				end
			end
		end
	end
	return true
end

-- 上线触发接口
function tPlayerWeaponRank_Online()
	-- if not tPlayerWeaponRank_ChkCont() then
		-- return
	-- end
	--新服小于30天不给触发
	-- if Get_SysServerRemainDays() < 30 then
		-- return
	-- end
	
	-- 满足条件，判断是否上线触发过了
	local nEvent = tPlayerWeaponRank_Cont["EventType"]
	local nType = tPlayerWeaponRank_Cont["DataType"][1]
	
	if Task_ChkStcValue(nEvent,nType,">",0) then
		return
	end
	
	if Task_SetStatistic(nEvent,nType,1,1) then	
		-- 触发接口
		for k,v in pairs(tPlayerWeaponRank_Cont["EquipPos"]) do
			User_CalEquipItemScore(v)
		end
	end
end
	
	
-- NPC 触发接口
function tPlayerWeaponRank_NpcCf(nNpcId)
	if not tPlayerWeaponRank_ChkCont() then
		return
	end
	
	local nEvent = tPlayerWeaponRank_Cont["EventType"]
	local nType = tPlayerWeaponRank_Cont["DataType"][2]
	local nData = tPlayerWeaponRank_Cont["DataLimit"]

	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
		
	if Task_ChkStcValue(nEvent,nType,">=",nData) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	for k,v in pairs(tPlayerWeaponRank_Cont["EquipPos"]) do
		User_CalEquipItemScore(v)
	end
	
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

-- 更新神装之主名称
function PlayerWeaponRank_RefeshName()
	local nUserId = Get_UserId()
	if User_UpdateEquipingAndBagRefineName(nUserId) then
		Sys_MsgBox(tPlayerWeaponRank_Text[19317]["Msg"])
	end
end
function tPlayerWeaponRank_OpenRank(nDiFlag)

		User_OpenDialog(nDiFlag)
end
-----------------------------------------------------------------NPC对白部分-------------------------------------------	
tNpcFace[4186] = 24
tNpcGossip[19317] = tNpcGossip[19317] or DefaultNpc:new{}
tNpcGossip[19317]["OptionHidden"] = 1


-- 不满足条件
tNpcGossip[19317]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19317]["Text111"] = tPlayerWeaponRank_Text[19317]["Text111"]
tNpcGossip[19317]["Text112"] = tPlayerWeaponRank_Text[19317]["Text112"]
tNpcGossip[19317]["Text113"] = tPlayerWeaponRank_Text[19317]["Text113"]
tNpcGossip[19317]["Text114"] = tPlayerWeaponRank_Text[19317]["Text114"]
tNpcGossip[19317]["Text115"] = tPlayerWeaponRank_Text[19317]["Text115"]
tNpcGossip[19317]["tOption1-1"] = {1,2}
tNpcGossip[19317]["ChkFunc1-1"] = function ()

	return not tPlayerWeaponRank_ChkCont()
end

tNpcGossip[19317]["Option1"] = tPlayerWeaponRank_Text[19317]["Option1"]
tNpcGossip[19317]["OptionPoint1"] = "2-1"
tNpcGossip[19317]["Option2"] = tPlayerWeaponRank_Text[19317]["Option2"]


-- 满足条件情况
tNpcGossip[19317]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
tNpcGossip[19317]["Text121"] = tPlayerWeaponRank_Text[19317]["Text121"]
tNpcGossip[19317]["Text122"] = tPlayerWeaponRank_Text[19317]["Text122"]
tNpcGossip[19317]["Text123"] = tPlayerWeaponRank_Text[19317]["Text123"]
tNpcGossip[19317]["Text124"] = tPlayerWeaponRank_Text[19317]["Text124"]
tNpcGossip[19317]["Text125"] = tPlayerWeaponRank_Text[19317]["Text125"]
tNpcGossip[19317]["Text126"] = tPlayerWeaponRank_Text[19317]["Text126"]
tNpcGossip[19317]["Text127"] = tPlayerWeaponRank_Text[19317]["Text127"]
tNpcGossip[19317]["Text128"] = tPlayerWeaponRank_Text[19317]["Text128"]
tNpcGossip[19317]["Text129"] = tPlayerWeaponRank_Text[19317]["Text129"]
tNpcGossip[19317]["tOption1-2"] = {3,30,20,4,5}
tNpcGossip[19317]["ChkFunc1-2"] = function ()
	local nEvent = tPlayerWeaponRank_Cont["EventType"]
	local nType = tPlayerWeaponRank_Cont["DataType"][2]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end

	local nTime = Get_UserStatisticValue(nEvent,nType)
	
	tNpcGossip[19317]["Option3"] = string.format(tPlayerWeaponRank_Text[19317]["Option3"],nTime)
	return true
end

tNpcGossip[19317]["Option3"] = tPlayerWeaponRank_Text[19317]["Option3"]
tNpcGossip[19317]["OptionPoint3"] = "3-1"
tNpcGossip[19317]["Option30"] = tPlayerWeaponRank_Text[19317]["Option30"]
tNpcGossip[19317]["OptionFunc30"] = "PlayerWeaponRank_RefeshName"
tNpcGossip[19317]["Option20"] = tPlayerWeaponRank_Text[19317]["Option20"]
tNpcGossip[19317]["OptionFunc20"] = "tPlayerWeaponRank_OpenRank</N>805"
tNpcGossip[19317]["Option4"] = tPlayerWeaponRank_Text[19317]["Option4"]
tNpcGossip[19317]["OptionPoint4"] = "2-1"
tNpcGossip[19317]["Option5"] = tPlayerWeaponRank_Text[19317]["Option5"]

-- 什么是神兵排行榜？
tNpcGossip[19317]["Text2-1"] = {211,212,213,214}
tNpcGossip[19317]["Text211"] = tPlayerWeaponRank_Text[19317]["Text211"]
tNpcGossip[19317]["Text212"] = tPlayerWeaponRank_Text[19317]["Text212"]
tNpcGossip[19317]["Text213"] = tPlayerWeaponRank_Text[19317]["Text213"]
tNpcGossip[19317]["Text214"] = tPlayerWeaponRank_Text[19317]["Text214"]
tNpcGossip[19317]["tOption2-1"] = {6}


-- 我要登记装备。
tNpcGossip[19317]["Text3-1"] = {311,312}
tNpcGossip[19317]["Text311"] = tPlayerWeaponRank_Text[19317]["Text311"]
tNpcGossip[19317]["Text312"] = tPlayerWeaponRank_Text[19317]["Text312"]
tNpcGossip[19317]["tOption3-1"] = {7,8}

tNpcGossip[19317]["Option7"] = tPlayerWeaponRank_Text[19317]["Option7"]
tNpcGossip[19317]["OptionFunc7"] = "tPlayerWeaponRank_NpcCf</N>19317"
tNpcGossip[19317]["Option8"] = tPlayerWeaponRank_Text[19317]["Option8"]

-- 登记成功
tNpcGossip[19317]["Text4-1"] = {411}
tNpcGossip[19317]["Text411"] = tPlayerWeaponRank_Text[19317]["Text411"]

tNpcGossip[19317]["Option9"] = tPlayerWeaponRank_Text[19317]["Option9"]

-- 【失败，今日登记次数已用完】
tNpcGossip[19317]["Text5-1"] = {511}
tNpcGossip[19317]["Text511"] = tPlayerWeaponRank_Text[19317]["Text511"]

tNpcGossip[19317]["Option10"] = tPlayerWeaponRank_Text[19317]["Option10"]



	
--上线触发
table.insert(tSystem_PlayLogin_Func,tPlayerWeaponRank_Online)	
	
