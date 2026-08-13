------------------------------------------------------------------------------------
-- Name:		171215[英文征服][活动脚本]1月新年进阶之路
-- Purpose:		进阶之路
-- Creator:		wzh
-- Created:		2017/12/15
----------------------------------------------------------------------------------
-- 前缀
-- AdvancedRoad_

-- LogId 

-- stc掩码说明 
-- stc(170,94)		记录背包信是否领取 
-- stc(170,95)		记录成长值

-- 全局表说明
-- global 

------------------------------------------------------------------------------------
-- 常量表
local tAdvancedRoad_Cont = {}
	tAdvancedRoad_Cont["Level"] = 80
	tAdvancedRoad_Cont["Metempsychosis"] = 0
	-- 炼气宝珠
	tAdvancedRoad_Cont["Item"] = {}
	tAdvancedRoad_Cont["Item"][1] = {}
	tAdvancedRoad_Cont["Item"][1][1] = {}
	tAdvancedRoad_Cont["Item"][1][1]["Id"] = 3307054
	tAdvancedRoad_Cont["Item"][1][1]["Point"] = 50
	tAdvancedRoad_Cont["Item"][1][2] = {}
	tAdvancedRoad_Cont["Item"][1][2]["Id"] = 3307055
	tAdvancedRoad_Cont["Item"][1][2]["Point"] = 500
	tAdvancedRoad_Cont["Item"][1][3] = {}
	tAdvancedRoad_Cont["Item"][1][3]["Id"] = 3307056
	tAdvancedRoad_Cont["Item"][1][3]["Point"] = 3800
	tAdvancedRoad_Cont["Item"][1][4] = {}
	tAdvancedRoad_Cont["Item"][1][4]["Id"] = 3307057
	tAdvancedRoad_Cont["Item"][1][4]["Point"] = 5000
	tAdvancedRoad_Cont["Item"][1][5] = {}
	tAdvancedRoad_Cont["Item"][1][5]["Id"] = 3307058
	tAdvancedRoad_Cont["Item"][1][5]["Point"] = 8000
	tAdvancedRoad_Cont["Item"][1][6] = {}
	tAdvancedRoad_Cont["Item"][1][6]["Id"] = 3307059
	tAdvancedRoad_Cont["Item"][1][6]["Point"] = 12000
	-- 自创武功徽章ID 
	tAdvancedRoad_Cont["Item"][2] = {}
	tAdvancedRoad_Cont["Item"][2][1] = {}
	tAdvancedRoad_Cont["Item"][2][1]["Id"] = 3307060
	tAdvancedRoad_Cont["Item"][2][1]["Point"] = 150
	tAdvancedRoad_Cont["Item"][2][2] = {}
	tAdvancedRoad_Cont["Item"][2][2]["Id"] = 3307061
	tAdvancedRoad_Cont["Item"][2][2]["Point"] = 450
	tAdvancedRoad_Cont["Item"][2][3] = {}
	tAdvancedRoad_Cont["Item"][2][3]["Id"] = 3307062
	tAdvancedRoad_Cont["Item"][2][3]["Point"] = 1500
	tAdvancedRoad_Cont["Item"][2][4] = {}
	tAdvancedRoad_Cont["Item"][2][4]["Id"] = 3307063
	tAdvancedRoad_Cont["Item"][2][4]["Point"] = 4500
	tAdvancedRoad_Cont["Item"][2][5] = {}
	tAdvancedRoad_Cont["Item"][2][5]["Id"] = 3307064
	tAdvancedRoad_Cont["Item"][2][5]["Point"] = 5500
	tAdvancedRoad_Cont["Item"][2][6] = {}
	tAdvancedRoad_Cont["Item"][2][6]["Id"] = 3307065
	tAdvancedRoad_Cont["Item"][2][6]["Point"] = 12000
	
-- 掩码表
local tAdvancedRoad_Stc = {}
	tAdvancedRoad_Stc[1] = {}
	tAdvancedRoad_Stc[1]["EventType"] = 170
	tAdvancedRoad_Stc[1]["DataType"] = 95
	
-- Log
local tAdvancedRoad_Log = {}
	tAdvancedRoad_Log["GrowthValue"] = "350	20200	%d	%d	1	"

	
----------------------------------------逻辑部分------------------------------------
-- 上交物品
function AdvancedRoad_HandIn(nIndex)
	-- 时间检测
	if not Sys_ChkFullTime(tActivityTime["AdvancedRoad"]["ActivityTime"]) then
		return
	end
	
	local nEvent_1 = tAdvancedRoad_Stc[1]["EventType"]
	local nType_1 = tAdvancedRoad_Stc[1]["DataType"]
	local nNowGrowthValue = Get_UserStatisticValue(nEvent_1,nType_1)
	local nAddGrowthValue = 0
	
	for i,v in ipairs(tAdvancedRoad_Cont["Item"][nIndex]) do
		-- 物品是否存在
		if Item_ChkItem(v["Id"]) then
			local nItemNum = Get_CountItemType(v["Id"],0)		-- 物品数量
			-- 删除成功
			if Item_ChkItem(v["Id"]) and Item_DelAllItemByType(v["Id"]) then
				nAddGrowthValue = nAddGrowthValue + v["Point"] * nItemNum
			end
		end
	end
	
	-- 判断上交物品是否成功
	if nAddGrowthValue == 0 then
		User_TalkChannel2005(tAdvancedRoad_Text["2005"]["NoItem"][nIndex])
		Sys_MsgBox(tAdvancedRoad_Text["2005"]["NoItem"][nIndex])
	else
		nNowGrowthValue = nNowGrowthValue + nAddGrowthValue
		
		-- 记掩码
		Task_SetStatistic(nEvent_1,nType_1,nNowGrowthValue,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
		
		-- 记log
		local sEmoneyLog = string.format(tAdvancedRoad_Log["GrowthValue"],nNowGrowthValue,nNowGrowthValue)
		Sys_SaveEmoneyBuy(sEmoneyLog)
		
		local sText = string.format(tAdvancedRoad_Text["2005"]["HandInSuccess"][nIndex],nAddGrowthValue)
		User_TalkChannel2005(sText)
		Sys_MsgBox(sText)
	end
end	

-- 打开页面
function AdvancedRoad_Lottery()
	User_SendWebPage(tAdvancedRoad_Text["Web"])
end

----------------------------------------NPC模板-------------------------------------
-- 新生大使 22537
tNpcFace[1748] = 236
tNpcGossip[22537] = tNpcGossip[22537] or DefaultNpc:new{}
tNpcGossip[22537]["OptionHidden"] = 1
tNpcGossip[22537]["DialogueText"] = tAdvancedRoad_Text[22537]
-- 活动前
tNpcGossip[22537]["Text1-1"] = {111,112,113,114}
tNpcGossip[22537]["tOption1-1"] = {111}
tNpcGossip[22537]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["AdvancedRoad"]["BeforeTime"])
end

-- 活动中-等级不足
tNpcGossip[22537]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[22537]["tOption1-2"] = {121}
tNpcGossip[22537]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["AdvancedRoad"]["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tAdvancedRoad_Cont["Level"],tAdvancedRoad_Cont["Metempsychosis"])
end

-- 活动中-满足条件
tNpcGossip[22537]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[22537]["tOption1-3"] = {131,132,133,134,135}
tNpcGossip[22537]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["AdvancedRoad"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tAdvancedRoad_Cont["Level"],tAdvancedRoad_Cont["Metempsychosis"])
end

-- 活动后
tNpcGossip[22537]["Text1-4"] = {141}
tNpcGossip[22537]["tOption1-4"] = {141}
tNpcGossip[22537]["ChkFunc1-4"] = function ()
	return not Sys_ChkFullTime(tActivityTime["AdvancedRoad"]["ActivityTime"])
end

-- 新生玩法
tNpcGossip[22537]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[22537]["tOption2-1"] = {211}

tNpcGossip[22537]["OptionFunc131"] = "AdvancedRoad_HandIn</N>1" 
tNpcGossip[22537]["OptionFunc132"] = "AdvancedRoad_HandIn</N>2" 
tNpcGossip[22537]["OptionPoint133"] = "2-1"
tNpcGossip[22537]["OptionFunc134"] = "AdvancedRoad_Lottery" 


-----------------------------------------物品模板------------------------------------
-- 物品头像
tItemFace[3307053] = 398

-- 成长点道具
tItem[3307054] = tItem[3307054] or {}
tItem[3307055] = tItem[3307054] or {}
tItem[3307056] = tItem[3307054] or {}
tItem[3307057] = tItem[3307054] or {}
tItem[3307058] = tItem[3307054] or {}
tItem[3307059] = tItem[3307054] or {}
tItem[3307060] = tItem[3307054] or {}
tItem[3307061] = tItem[3307054] or {}
tItem[3307062] = tItem[3307054] or {}
tItem[3307063] = tItem[3307054] or {}
tItem[3307064] = tItem[3307054] or {}
tItem[3307065] = tItem[3307054] or {}
tItem[3307054]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(22537)
end
