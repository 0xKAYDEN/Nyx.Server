------------------------------------------------------------------------------------
--Name：            191129[简体征服][活动脚本]全球圣诞活动预热
--Creator:      冯子鑫
--Created:     2019-11-29
------------------------------------------------------------------------------------
--任务需求：
-- 1、更新圣诞地图布置
-- 2、活动正式更新前每天玩家上线发一份圣诞奖励
-- 预热奖励：12.19-12.24  2转以上玩家均可通过邮件获得1个 惊喜礼包与2个跨国烟花


------------------------------------------------------------------------------------
--41649 = V100\ActiveScript\[Conquer][ActiveScript]ChristmasPreheat.lua
--41649 = V100\活动脚本\[征服][活动脚本]全球圣诞活动预热.lua

--命名前缀：ChristmasPreheat_

--stc(210,77) 记录邮件发奖	1已发奖
----------------------------------表配置部分--------------------------------------------
local tChristmasPreheat_Cont = {}
	--等级限制
	tChristmasPreheat_Cont["nLevel"] = 0
	tChristmasPreheat_Cont["nMetempsychosis"] = 2

local tChristmasPreheat_Stc = {}
	--记录是否发放邮件
	tChristmasPreheat_Stc[1] = {}
	tChristmasPreheat_Stc[1]["EventType"] = 210
	tChristmasPreheat_Stc[1]["DataType"] = 77
	tChristmasPreheat_Stc[1]["Limit"] = 1

-- 发放邮件id
local tChristmasPreheat_SendMail = {}
	tChristmasPreheat_SendMail["ActionId"] = {}
	tChristmasPreheat_SendMail["ActionId"][1] = 575419
	tChristmasPreheat_SendMail["ExistDay"] = 30


	

----------------------------------逻辑部分---------------------------------------------
-- 获取掩码值
function ChristmasPreheat_GetStcValue(nChristmasPreheat_Index,nChristmasPreheat_UserId)
	local nChristmasPreheat_UserId = nChristmasPreheat_UserId or Get_UserId()
	local nChristmasPreheat_Event = tChristmasPreheat_Stc[nChristmasPreheat_Index]["EventType"]
	local nChristmasPreheat_Type = tChristmasPreheat_Stc[nChristmasPreheat_Index]["DataType"]
	local nChristmasPreheat_Data = Get_UserStatisticValue(nChristmasPreheat_Event,nChristmasPreheat_Type,nChristmasPreheat_UserId)
	return nChristmasPreheat_Data
end

--设置掩码值
function ChristmasPreheat_SetStcValue(nChristmasPreheat_Index,nChristmasPreheat_Data,nChristmasPreheat_UserId)
	
	local nChristmasPreheat_UserId = nChristmasPreheat_UserId or Get_UserId()
	local nChristmasPreheat_Event = tChristmasPreheat_Stc[nChristmasPreheat_Index]["EventType"]
	local nChristmasPreheat_Type = tChristmasPreheat_Stc[nChristmasPreheat_Index]["DataType"]
	
	if Task_SetStatistic(nChristmasPreheat_Event,nChristmasPreheat_Type,nChristmasPreheat_Data,1,nChristmasPreheat_UserId) then
		Task_SetStcTimestamp(nChristmasPreheat_Event,nChristmasPreheat_Type,0,nChristmasPreheat_UserId)
		return true
	else
		return false
	end
end

-- stc 隔天重置
function ChristmasPreheat_ClearStcInterval(nChristmasPreheat_Index,nChristmasPreheat_Data,nChristmasPreheat_UserId)
	local nChristmasPreheat_UserId = nChristmasPreheat_UserId or Get_UserId()
	local nChristmasPreheat_Event = tChristmasPreheat_Stc[nChristmasPreheat_Index]["EventType"]
	local nChristmasPreheat_Type = tChristmasPreheat_Stc[nChristmasPreheat_Index]["DataType"]
	if nChristmasPreheat_Data == nil then
		nChristmasPreheat_Data = 0
	end
	
	if Task_StcInterval(nChristmasPreheat_Event,nChristmasPreheat_Type,1,4,nChristmasPreheat_UserId) then
		ChristmasPreheat_SetStcValue(1,0,nChristmasPreheat_UserId)
	end
end

--邮件发奖
function ChristmasPreheat_SendEmail(nChristmasPreheat_UserId,nChristmasPreheat_Index)
	local nChristmasPreheat_UserId = nChristmasPreheat_UserId or Get_UserId()
	local nChristmasPreheat_ActionId = tChristmasPreheat_SendMail["ActionId"][nChristmasPreheat_Index]
	local nChristmasPreheat_ExistDay = tChristmasPreheat_SendMail["ExistDay"]
	local sChristmasPreheat_SenderName = tChristmasPreheat_Text["Email"]["Sender"]
	local sChristmasPreheat_Title = tChristmasPreheat_Text["Email"]["Title"]
	local sChristmasPreheat_Content = tChristmasPreheat_Text["Email"]["Content"]
	Sys_SendMail(nChristmasPreheat_UserId,0,0,nChristmasPreheat_ActionId,0,nChristmasPreheat_ExistDay,sChristmasPreheat_SenderName,sChristmasPreheat_Title,sChristmasPreheat_Content)
	
end

--发放奖励
function ChristmasPreheat_RewardItem()
	
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["ChristmasPreheat"]["ActivityTime"]) then
		return
	end
	
	local nChristmasPreheat_UserId = Get_UserId()
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tChristmasPreheat_Cont["nLevel"],tChristmasPreheat_Cont["nMetempsychosis"],nChristmasPreheat_UserId) then 
		return
	end
	
	ChristmasPreheat_ClearStcInterval(1,0,nChristmasPreheat_UserId)
	local nChristmasPreheat_Data = ChristmasPreheat_GetStcValue(1,nChristmasPreheat_UserId)
	if nChristmasPreheat_Data == 0 then
		--发奖
		if ChristmasPreheat_SetStcValue(1,1,nChristmasPreheat_UserId) then
			ChristmasPreheat_SendEmail(nChristmasPreheat_UserId,1)
		end
	else
		return
	end
	
end
---------------------------------物品部分---------------------------------------------
--圣诞礼炮、2019圣诞礼袜（圣诞活动上架前使用）
-- tItem[3600212] = tItem[3600212] or {}
-- tItem[3600212]["Function"] = function(nItemId,sItemName)
	-- Sys_MsgBox(tChristmasPreheat_Text["NoActiveTime"])
-- end
-- tItem[3600197] = tItem[3600212]



--登录自检
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,ChristmasPreheat_RewardItem)