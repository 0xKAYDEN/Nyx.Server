------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]神品精炼版本背包信制作
--Creator:		严振飞
--Created:		2016/04/11
------------------------------------------------------------------------------------
--前缀 QCBLletter_

-- STC
-- (144,07)		记录开启次数
------------------------------------------------------------------------------------
local tQCBLletter_Stc = {}
	-- 记录开启次数
	tQCBLletter_Stc[3100057] = {}
	tQCBLletter_Stc[3100057]["EventData"] = 144
	tQCBLletter_Stc[3100057]["TypeData"] = 07
	tQCBLletter_Stc[3100057]["Complete"] = 2 -- 开启次数上限
	tQCBLletter_Stc[3100057]["Interval"] = 7 -- 次数间隔（单位：天）
	
local tQCBLletter_Data = {}
	tQCBLletter_Data["ActivityTime"] = "2016-06-16 00:00 2016-07-16 23:59"
	tQCBLletter_Data["PackSpace"] = 3 			-- 背包空间
	tQCBLletter_Data["AddEmoney"] = 1500 		-- 奖励的天石数量
	tQCBLletter_Data["AddItemId"] = 3600023 	-- 3600023	战功显赫嘉奖包
	tQCBLletter_Data["AddItemAttr"] = "0 3"
	tQCBLletter_Data["EffectObj"] = "self"
	tQCBLletter_Data["Effect"] = "angelwing"
	tQCBLletter_Data["Web"] = "http://co.99.com/guide/event/2016/beyond_perfection/client/index.shtml"
	
	-- 赤龙之地引路人(传送)
	tQCBLletter_Data["ChgMap"] = {}
	tQCBLletter_Data["ChgMap"][1] = {}
	tQCBLletter_Data["ChgMap"][1]["Level"] = 110 	-- 等级要求
	tQCBLletter_Data["ChgMap"][1]["Mete"] = 0 		-- 转世要求
	tQCBLletter_Data["ChgMap"][1]["NpcId"] = 19166
	tQCBLletter_Data["ChgMap"][1]["MapId"] = 1002
	tQCBLletter_Data["ChgMap"][1]["PosX"] = 240
	tQCBLletter_Data["ChgMap"][1]["PosY"] = 483
	tQCBLletter_Data["ChgMap"][1]["Range"] = 3

	-- 可传送地图
	tQCBLletter_Data["CanChgMap"] = {}
	tQCBLletter_Data["CanChgMap"][1] = 1002 --双龙城/清风原
	tQCBLletter_Data["CanChgMap"][2] = 1000 --云门关
	tQCBLletter_Data["CanChgMap"][3] = 1036 --市场
	tQCBLletter_Data["CanChgMap"][4] = 1011 --枫溪林
	tQCBLletter_Data["CanChgMap"][5] = 1015 --芦花荡
	tQCBLletter_Data["CanChgMap"][6] = 1020 --绝情谷

	
local tQCBLletter_Log = {}
	tQCBLletter_Log["GetAward"] = "0,0,%d,0,12000351,1[%d],3[%d],1500[3]"
	
------------------------------------------------------------------------------------
-- 网页链接函数
function QCBLletter_ToWeb()
	User_SendWebDialog(tQCBLletter_Data["Web"])
end

-- npc传送
function QCBLletter_ChgMap(nNum)
	-- 等级不够
	local nUserLev = Get_UserLevel()
	if tQCBLletter_Data["ChgMap"][nNum]["Level"] ~= nil then
		if not User_JudgeLevelAndMetempsychosis(tQCBLletter_Data["ChgMap"][nNum]["Level"],tQCBLletter_Data["ChgMap"][nNum]["Mete"]) then
			Sys_MsgBox(tQCBLletter_Text["NoChgMap_Lev"])
			return
		end
	end

	local nUserMapId = Get_UserMapId()
	local bInCity = false
	
	-- 在市场和五大主城
	for _,v in ipairs(tQCBLletter_Data["CanChgMap"]) do
		if v == nUserMapId then
			bInCity = true
			break
		end
	end
	
	local nMapId = tQCBLletter_Data["ChgMap"][nNum]["MapId"]
	local nCellx = tQCBLletter_Data["ChgMap"][nNum]["PosX"]
	local nCelly = tQCBLletter_Data["ChgMap"][nNum]["PosY"]
	local nRange = tQCBLletter_Data["ChgMap"][nNum]["Range"]
	local nNpcId = tQCBLletter_Data["ChgMap"][nNum]["NpcId"]

	-- 镇魔塔地图则寻路
	if nUserMapId == tQCBLletter_Data["ChgMap"][nNum]["MapId"] then
		Sys_GotoSomeWhere(nCellx,nCelly,nMapId,nNpcId)
		return
		
	-- 不能传送的地图出提示
	elseif bInCity == false then
		Sys_MsgBox(tQCBLletter_Text["NoChgMap_Pace"])
		return
	end
	
	-- 能传送
	User_UserRandBoundTrans(nMapId,nCellx,nCelly,nRange,nRange,1)
end


-- 获得奖励函数
function QCBLletter_GetAward(nItemId)
	local nEvent = tQCBLletter_Stc[nItemId]["EventData"]
	local nType = tQCBLletter_Stc[nItemId]["TypeData"]
	local nComplete = tQCBLletter_Stc[nItemId]["Complete"]
	local nInterval = tQCBLletter_Stc[nItemId]["Interval"]
	local nMonoEmoney = Get_UserMonoEMoney()
	local nAddEmoney = tQCBLletter_Data["AddEmoney"]
	local nNewItemId = tQCBLletter_Data["AddItemId"]
	local sNewItemAttr = tQCBLletter_Data["AddItemAttr"]
	local sNewItemName = Get_ItemtypeName(tQCBLletter_Data["AddItemId"])
	
	-- 物品不存在直接跳出
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 是否第一次
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		
		-- 是否隔足够的天数
		if not Task_StcInterval(nEvent,nType,nInterval,4) then
			tItem[nItemId]["Text131"] = string.format(tQCBLletter_Text[nItemId]["Text131"],nAddEmoney * nComplete,sNewItemName,nComplete,nInterval)
			LinkItemGossipFunc_New(nItemId,"1-3")
			return
		end
	end
	
	-- 背包空间
	if not User_CheckLeftSpace(tQCBLletter_Data["PackSpace"]) then
		Sys_MsgBox(string.format(tQCBLletter_Text[nItemId]["NoSpace"],tQCBLletter_Data["PackSpace"]))
		return
	end
	
	-- 玩家身上天石达上限提示
	if nMonoEmoney >= (G_User_MaxEmoneyMono - nAddEmoney) then
		LinkItemGossipFunc_New(nItemId,"1-2")
		return
	end
	
	-- 是否最后一次
	if Task_ChkStcValue(nEvent,nType,">=",nComplete - 1) then
		-- 最后一次删除礼盒
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then end
	end
	
	-- 置掩码
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	-- 给赠点天石+物品
	local sLogText = tQCBLletter_Log["GetAward"]
	local nTimes = Get_UserStatisticValue(nEvent,nType)
	User_AddEMoneyMono(nAddEmoney)
	Item_AddNewItem(nNewItemId,sNewItemAttr)
	User_EffectAdd(tQCBLletter_Data["EffectObj"],tQCBLletter_Data["Effect"])
	Sys_SaveActionFestivalLog(string.format(sLogText,nItemId,nTimes,nNewItemId))
	User_TalkChannel2005(string.format(tQCBLletter_Text[nItemId]["Get_Award"],nAddEmoney,sNewItemName))
end


--------------------------------------物品配置-------------------------------------------
-- 背包信
tItem[3100057] = tItem[3100057] or {}
tItem[3100057]["Text1-1"] = {111,112,113}		-- 初始对白
tItem[3100057]["Text111"] = tQCBLletter_Text[3100057]["Text111"] 
tItem[3100057]["Text112"] = tQCBLletter_Text[3100057]["Text112"] 
tItem[3100057]["Text113"] = tQCBLletter_Text[3100057]["Text113"] 
tItem[3100057]["ChkFunc1-1"] = function ()
	local nDayEMoney = tQCBLletter_Data["AddEmoney"]
	local nInterval = tQCBLletter_Stc[3100057]["Interval"]
	local sNewItemName = Get_ItemtypeName(tQCBLletter_Data["AddItemId"])
	tItem[3100057]["Text113"] = string.format(tQCBLletter_Text[3100057]["Text113"],nDayEMoney,sNewItemName,nInterval,nDayEMoney,sNewItemName)
	return true
end
tItem[3100057]["tOption1-1"] = {111,113,112}
tItem[3100057]["Option111"] = tQCBLletter_Text[3100057]["Option111"]
tItem[3100057]["Option112"] = tQCBLletter_Text[3100057]["Option112"]
tItem[3100057]["Option113"] = tQCBLletter_Text[3100057]["Option113"]
tItem[3100057]["OptionFunc111"] = "QCBLletter_GetAward</N>3100057"
tItem[3100057]["OptionFunc112"] = "QCBLletter_ToWeb"
tItem[3100057]["OptionFunc113"] = "QCBLletter_ChgMap</N>1"

-- 失败，天石数达上限
tItem[3100057]["Text1-2"] = {121}
tItem[3100057]["Text121"] = tQCBLletter_Text[3100057]["Text121"] 
tItem[3100057]["tOption1-2"] = {121}
tItem[3100057]["Option121"] = tQCBLletter_Text[3100057]["Option121"]

-- 失败，还未到下一次领取的时候
tItem[3100057]["Text1-3"] = {131}
tItem[3100057]["Text131"] = tQCBLletter_Text[3100057]["Text131"] 
tItem[3100057]["tOption1-3"] = {131,132}
tItem[3100057]["Option131"] = tQCBLletter_Text[3100057]["Option131"]

