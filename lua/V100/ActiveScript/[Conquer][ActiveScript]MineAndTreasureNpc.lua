------------------------------------------------------------------------------------
--Name:			181014[英文征服][活动脚本]寻矿觅宝NPC制作（11.08-11.19）
--Purpose:		寻矿觅宝
--Creator:		吴志宏
--Created:		2018/10/14
------------------------------------------------------------------------------------
-- 前缀
-- MineAndTreasureNpc_

-- LogId 12001189

-- stc掩码说明 
-- stc (185,30)		记录存入的总天石数

-- 全局表记录
-- global	53085	data0=0代表美服	data0=1代表欧服

--------------------------------------常量配置部分---------------------------------------
-- 常量表
local tMineAndTreasureNpc_Cont = {}
	-- 等级
	tMineAndTreasureNpc_Cont["Level"] = 80
	tMineAndTreasureNpc_Cont["Metempsychosis"] = 0
	
	-- npcid
	tMineAndTreasureNpc_Cont["Npc"] = {}
	tMineAndTreasureNpc_Cont["Npc"][1] = 23491
	tMineAndTreasureNpc_Cont["Npc"][2] = 23543
	
	-- Global
	tMineAndTreasureNpc_Cont["Global"] = 53085
	
	
-- 掩码表
local tMineAndTreasureNpc_Stc = {}
	-- 存入总天石
	tMineAndTreasureNpc_Stc[1] = {}
	tMineAndTreasureNpc_Stc[1]["EventType"] = 185
	tMineAndTreasureNpc_Stc[1]["DataType"] = 30
	
-- Log表
local tMineAndTreasureNpc_Log = {}
	tMineAndTreasureNpc_Log["Emoney"] = {}
	tMineAndTreasureNpc_Log["Emoney"][27] = "350	21767	27	27	1	"
	tMineAndTreasureNpc_Log["Emoney"][270] = "350	21768	270	270	1	"
	tMineAndTreasureNpc_Log["Emoney"][2700] = "350	21769	2700	2700	1	"
	
	
----------------------------------------逻辑部分-------------------------------------
-- 进入矿山
function MineAndTreasureNpc_IntoMine(nNpcId)
	local nGlobalId = tMineAndTreasureNpc_Cont["Global"]
	local nServer = Get_SysDynaGlobalData(nGlobalId,0)
	
	-- 判断欧、美服
	if nServer == 1 then
		-- 判断活动时间
		if not Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["EUActTime"]) then
			LinkNpcGossipFunc_New("1-2")
			return false
		end
	else
		-- 判断活动时间
		if not Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["ActTime"]) then
			LinkNpcGossipFunc_New("1-2")
			return false
		end
	end
	
	User_SendWebDialog(tMineAndTreasureNpc_Text["Web"])
	return true
end

-- 存入天石
function MineAndTreasureNpc_SaveEmoney(nNpcId,nEmoney)
	local nGlobalId = tMineAndTreasureNpc_Cont["Global"]
	local nServer = Get_SysDynaGlobalData(nGlobalId,0)
	
	-- 判断欧、美服
	if nServer == 1 then
		-- 判断活动时间
		if not Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["EUActTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return false
		end
	else
		-- 判断活动时间
		if not Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["ActTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return false
		end
	end
	
	-- 天石不足
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney < nEmoney then
		Sys_MsgBox(tMineAndTreasureNpc_Text[105]["EmoneyNotEnough"])
		return false
	end	
	
	tNpcGossip[nNpcId]["Text311"] = string.format(tMineAndTreasureNpc_Text[23491]["Text311"],nEmoney)
	tNpcGossip[nNpcId]["OptionFunc311"] = "MineAndTreasureNpc_SaveConfirm</N>" .. nNpcId .. "</N>" .. nEmoney
	LinkNpcGossipFunc_New(nNpcId,"3-1")
	return true
end

-- 二次确认
function MineAndTreasureNpc_SaveConfirm(nNpcId,nEmoney)
	local nGlobalId = tMineAndTreasureNpc_Cont["Global"]
	local nServer = Get_SysDynaGlobalData(nGlobalId,0)
	
	-- 判断欧、美服
	if nServer == 1 then
		-- 判断活动时间
		if not Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["EUActTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return false
		end
	else
		-- 判断活动时间
		if not Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["ActTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return false
		end
	end
	
	-- 天石不足
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney < nEmoney then
		Sys_MsgBox(tMineAndTreasureNpc_Text[105]["EmoneyNotEnough"])
		return false
	end	
	
	-- 扣天石
	if User_AddEMoney(-nEmoney) then
		-- 置掩码
		local nEvent_1 = tMineAndTreasureNpc_Stc[1]["EventType"]
		local nType_1 = tMineAndTreasureNpc_Stc[1]["DataType"]
		
		Task_AddStatistic(nEvent_1,nType_1,nEmoney,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
		
		-- 记emoneylog
		Sys_SaveEmoneyBuy(tMineAndTreasureNpc_Log["Emoney"][nEmoney])
		
		tNpcGossip[nNpcId]["Text411"] = string.format(tMineAndTreasureNpc_Text[23491]["Text411"],nEmoney)
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return true
	end
end


----------------------------------------模板部分-------------------------------------
-------------------------------NPC模板
-- 矿王 美服23491、欧服23543
tNpcFace[6379] = 50

for i,v in ipairs(tMineAndTreasureNpc_Cont["Npc"]) do
	tNpcGossip[v] = tNpcGossip[v] or DefaultNpc:new{}
	tNpcGossip[v]["OptionHidden"] = 1
	tNpcGossip[v]["DialogueText"] = tMineAndTreasureNpc_Text[23491]
	
	-- 活动前
	tNpcGossip[v]["Text1-1"] = {111,112,113,114,115,116}
	tNpcGossip[v]["tOption1-1"] = {111}
	tNpcGossip[v]["ChkFunc1-1"] = function ()
		local nGlobalId = tMineAndTreasureNpc_Cont["Global"]
		local nServer = Get_SysDynaGlobalData(nGlobalId,0)
		
		-- 判断欧、美服
		if nServer == 1 then
			tNpcGossip[v]["Text114"] = tMineAndTreasureNpc_Text[23543]["Time"]
		else
			tNpcGossip[v]["Text114"] = tMineAndTreasureNpc_Text[23491]["Text114"]
		end
		
		return Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["BeforeTime"])
	end
	
	-- 活动后
	tNpcGossip[v]["Text1-2"] = {121,122}
	tNpcGossip[v]["tOption1-2"] = {121}
	tNpcGossip[v]["ChkFunc1-2"] = function ()
		local nGlobalId = tMineAndTreasureNpc_Cont["Global"]
		local nServer = Get_SysDynaGlobalData(nGlobalId,0)
		
		-- 判断欧、美服
		if nServer == 1 then
			return Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["EUAfterTime"])
		else
			return Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["AfterTime"])
		end
	end
	
	-- 活动中·等级不足
	tNpcGossip[v]["Text1-3"] = {131,132,133,134,135,136}
	tNpcGossip[v]["tOption1-3"] = {131}
	tNpcGossip[v]["ChkFunc1-3"] = function ()
		local nGlobalId = tMineAndTreasureNpc_Cont["Global"]
		local nServer = Get_SysDynaGlobalData(nGlobalId,0)
		
		-- 判断欧、美服
		if nServer == 1 then
			tNpcGossip[v]["Text134"] = tMineAndTreasureNpc_Text[23543]["Time"]
			return Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["EUActTime"]) and not User_JudgeLevelAndMetempsychosis(tMineAndTreasureNpc_Cont["Level"],tMineAndTreasureNpc_Cont["Metempsychosis"])
		else
			tNpcGossip[v]["Text134"] = tMineAndTreasureNpc_Text[23491]["Text134"]
			return Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["ActTime"]) and not User_JudgeLevelAndMetempsychosis(tMineAndTreasureNpc_Cont["Level"],tMineAndTreasureNpc_Cont["Metempsychosis"])
		end
	end
	
	-- 活动中·等级满足
	tNpcGossip[v]["Text1-4"] = {141,142,143,144,145,146}
	tNpcGossip[v]["tOption1-4"] = {141,142,143}
	tNpcGossip[v]["ChkFunc1-4"] = function ()
		local nGlobalId = tMineAndTreasureNpc_Cont["Global"]
		local nServer = Get_SysDynaGlobalData(nGlobalId,0)
		
		-- 判断欧、美服
		if nServer == 1 then
			tNpcGossip[v]["Text144"] = tMineAndTreasureNpc_Text[23543]["Time"]
			return Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["EUActTime"]) and User_JudgeLevelAndMetempsychosis(tMineAndTreasureNpc_Cont["Level"],tMineAndTreasureNpc_Cont["Metempsychosis"])
		else
			tNpcGossip[v]["Text144"] = tMineAndTreasureNpc_Text[23491]["Text144"]
			return Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(tMineAndTreasureNpc_Cont["Level"],tMineAndTreasureNpc_Cont["Metempsychosis"])
		end
	end
	
	tNpcGossip[v]["OptionFunc141"] = "MineAndTreasureNpc_IntoMine</N>" .. v
	tNpcGossip[v]["OptionPoint142"] = "2-1"
	tNpcGossip[v]["OptionPoint143"] = "2-2"
	
	-- 存入天石
	tNpcGossip[v]["Text2-1"] = {211}
	tNpcGossip[v]["tOption2-1"] = {211,212,213}
	
	tNpcGossip[v]["OptionFunc211"] = "MineAndTreasureNpc_SaveEmoney</N>" .. v .. "</N>27"
	tNpcGossip[v]["OptionFunc212"] = "MineAndTreasureNpc_SaveEmoney</N>" .. v .. "</N>270"
	tNpcGossip[v]["OptionFunc213"] = "MineAndTreasureNpc_SaveEmoney</N>" .. v .. "</N>2700"
	
	
	-- 查看存入明细
	tNpcGossip[v]["Text2-2"] = {221}
	tNpcGossip[v]["tOption2-2"] = {221,222}
	tNpcGossip[v]["ChkFunc2-2"] = function ()
		local nGlobalId = tMineAndTreasureNpc_Cont["Global"]
		local nServer = Get_SysDynaGlobalData(nGlobalId,0)
		
		-- 判断欧、美服
		if nServer == 1 then
			-- 判断活动时间
			if not Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["EUActTime"]) then
				return false
			end
		else
			-- 判断活动时间
			if not Sys_ChkFullTime(tActivityTime["MineAndTreasureNpc"]["ActTime"]) then
				return false
			end
		end
		
		local nEvent_1 = tMineAndTreasureNpc_Stc[1]["EventType"]
		local nType_1 = tMineAndTreasureNpc_Stc[1]["DataType"]
		local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
		tNpcGossip[v]["Text221"] = string.format(tMineAndTreasureNpc_Text[23491]["Text221"],nData_1)
		
		return true
	end
	
	tNpcGossip[v]["OptionPoint211"] = "2-1"
	tNpcGossip[v]["OptionPoint212"] = "1"
	tNpcGossip[v]["OptionPoint221"] = "2-1"
	tNpcGossip[v]["OptionPoint222"] = "1"
	
	
	-- 二次确认
	tNpcGossip[v]["Text3-1"] = {311}
	tNpcGossip[v]["tOption3-1"] = {311,312}
	
	
	-- 成功存入
	tNpcGossip[v]["Text4-1"] = {411}
	tNpcGossip[v]["tOption4-1"] = {411,412}
	
	tNpcGossip[v]["OptionFunc411"] = "MineAndTreasureNpc_IntoMine</N>" .. v
	tNpcGossip[v]["OptionPoint412"] = "1"
end
