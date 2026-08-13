------------------------------------------------------------------------------------
--Name：            191101[简体征服][活动脚本]全球感恩节活动预热
--Creator:      郑飞
--Created:     2019-11-01
------------------------------------------------------------------------------------
--任务需求：
-- 1、更新地图布置，复用周年庆的布置（感恩节无新做布置）
-- 2、活动正式更新前每天玩家上线发一个礼包奖励
-- 每日上线80级以上玩家通过邮件发放2个感恩礼包，感恩礼包蔡颖静做的。


------------------------------------------------------------------------------------
--41604 = V100\ActiveScript\[Conquer][ActiveScript]ThanksPreheat.lua
--41604 = V100\活动脚本\[征服][活动脚本]全球感恩节活动预热.lua

--命名前缀：ThanksPreheat_

--stc(209,26) 记录邮件发奖	1已发奖
----------------------------------表配置部分--------------------------------------------
local tThanksPreheat_Cont = {}
	--等级限制
	tThanksPreheat_Cont["nLevel"] = 80
	tThanksPreheat_Cont["nMetempsychosis"] = 0

local tThanksPreheat_Stc = {}
	--记录是否发放邮件
	tThanksPreheat_Stc[1] = {}
	tThanksPreheat_Stc[1]["EventType"] = 209
	tThanksPreheat_Stc[1]["DataType"] = 26
	tThanksPreheat_Stc[1]["Limit"] = 1

-- 发放邮件id
local tThanksPreheat_SendMail = {}
	tThanksPreheat_SendMail["ActionId"] = {}
	tThanksPreheat_SendMail["ActionId"][1] = 575092
	tThanksPreheat_SendMail["ExistDay"] = 30

local tThanksPreheat_Data = {}
	tThanksPreheat_Data[3326799] = {}
	-- ===感恩节礼包
	-- ===索引: tThanksPreheat_Data[3326799][1]

	tThanksPreheat_Data[3326799][1] = {}
	tThanksPreheat_Data[3326799][1]["ItemChanceSum"] = 10000
	tThanksPreheat_Data[3326799][1]["LogId"] = 12001678
	-- 赤炼石+3 - 30%
	tThanksPreheat_Data[3326799][1][1] = {}
	tThanksPreheat_Data[3326799][1][1]["RandomItemChanceType"] = 2
	tThanksPreheat_Data[3326799][1][1]["ItemChance"] = 3000
	tThanksPreheat_Data[3326799][1][1]["RewardItem"] = {}
	tThanksPreheat_Data[3326799][1][1]["RewardItem"][1] = {}
	tThanksPreheat_Data[3326799][1][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tThanksPreheat_Data[3326799][1][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tThanksPreheat_Data[3326799][1][1]["RewardEffect"] = {}
	tThanksPreheat_Data[3326799][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksPreheat_Data[3326799][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 25%
	tThanksPreheat_Data[3326799][1][2] = {}
	tThanksPreheat_Data[3326799][1][2]["RandomItemChanceType"] = 2
	tThanksPreheat_Data[3326799][1][2]["ItemChance"] = 2500
	tThanksPreheat_Data[3326799][1][2]["RewardItem"] = {}
	tThanksPreheat_Data[3326799][1][2]["RewardItem"][1] = {}
	tThanksPreheat_Data[3326799][1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tThanksPreheat_Data[3326799][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tThanksPreheat_Data[3326799][1][2]["RewardEffect"] = {}
	tThanksPreheat_Data[3326799][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksPreheat_Data[3326799][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tThanksPreheat_Data[3326799][1][3] = {}
	tThanksPreheat_Data[3326799][1][3]["RandomItemChanceType"] = 2
	tThanksPreheat_Data[3326799][1][3]["ItemChance"] = 2500
	tThanksPreheat_Data[3326799][1][3]["RewardItem"] = {}
	tThanksPreheat_Data[3326799][1][3]["RewardItem"][1] = {}
	tThanksPreheat_Data[3326799][1][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tThanksPreheat_Data[3326799][1][3]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tThanksPreheat_Data[3326799][1][3]["RewardEffect"] = {}
	tThanksPreheat_Data[3326799][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksPreheat_Data[3326799][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tThanksPreheat_Data[3326799][1][4] = {}
	tThanksPreheat_Data[3326799][1][4]["RandomItemChanceType"] = 2
	tThanksPreheat_Data[3326799][1][4]["ItemChance"] = 2000
	tThanksPreheat_Data[3326799][1][4]["RewardItem"] = {}
	tThanksPreheat_Data[3326799][1][4]["RewardItem"][1] = {}
	tThanksPreheat_Data[3326799][1][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tThanksPreheat_Data[3326799][1][4]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tThanksPreheat_Data[3326799][1][4]["RewardEffect"] = {}
	tThanksPreheat_Data[3326799][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksPreheat_Data[3326799][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tThanksPreheat_Data[3326799]["Extra"] = {}
	-- ===感恩节礼包
	-- ===索引: tThanksPreheat_Data[3326799]["Extra"][1]
	-- ===

	tThanksPreheat_Data[3326799]["Extra"][1] = {}
	tThanksPreheat_Data[3326799]["Extra"][1]["ItemChanceSum"] = 10000
	tThanksPreheat_Data[3326799]["Extra"][1]["LogId"] = 12001678
	-- 赤炼石+5 - 1%
	tThanksPreheat_Data[3326799]["Extra"][1][1] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][1]["RandomItemChanceType"] = 2
	tThanksPreheat_Data[3326799]["Extra"][1][1]["ItemChance"] = 100
	tThanksPreheat_Data[3326799]["Extra"][1][1]["RewardItem"] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][1]["RewardItem"][1] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][1]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tThanksPreheat_Data[3326799]["Extra"][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +5赤炼石（赠）*1
	tThanksPreheat_Data[3326799]["Extra"][1][1]["RewardEffect"] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksPreheat_Data[3326799]["Extra"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tThanksPreheat_Data[3326799]["Extra"][1][1]["Flag"]=1
	-- 晶莹星陨石 - 1%
	tThanksPreheat_Data[3326799]["Extra"][1][2] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][2]["RandomItemChanceType"] = 2
	tThanksPreheat_Data[3326799]["Extra"][1][2]["ItemChance"] = 100
	tThanksPreheat_Data[3326799]["Extra"][1][2]["RewardItem"] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][2]["RewardItem"][1] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tThanksPreheat_Data[3326799]["Extra"][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tThanksPreheat_Data[3326799]["Extra"][1][2]["RewardEffect"] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksPreheat_Data[3326799]["Extra"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tThanksPreheat_Data[3326799]["Extra"][1][2]["Flag"]=2
	-- 3000气力值 - 3%
	tThanksPreheat_Data[3326799]["Extra"][1][3] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][3]["RandomItemChanceType"] = 2
	tThanksPreheat_Data[3326799]["Extra"][1][3]["ItemChance"] = 300
	tThanksPreheat_Data[3326799]["Extra"][1][3]["RewardStrengthValue"] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][3]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tThanksPreheat_Data[3326799]["Extra"][1][3]["RewardEffect"] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksPreheat_Data[3326799]["Extra"][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tThanksPreheat_Data[3326799]["Extra"][1][3]["Flag"]=3
	-- 无 - 95%
	tThanksPreheat_Data[3326799]["Extra"][1][4] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][4]["RandomItemChanceType"] = 2
	tThanksPreheat_Data[3326799]["Extra"][1][4]["ItemChance"] = 9500
	tThanksPreheat_Data[3326799]["Extra"][1][4]["RewardEffect"] = {}
	tThanksPreheat_Data[3326799]["Extra"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tThanksPreheat_Data[3326799]["Extra"][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tThanksPreheat_Data[3326799]["Extra"][1][4]["Flag"]=0

----------------------------------逻辑部分---------------------------------------------
-- 获取掩码值
function ThanksPreheat_GetStcValue(nIndex,nUserId)
	local nEvent = tThanksPreheat_Stc[nIndex]["EventType"]
	local nType = tThanksPreheat_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function ThanksPreheat_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tThanksPreheat_Stc[nIndex]["EventType"]
	local nType = tThanksPreheat_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
end

-- stc 隔天重置
function ThanksPreheat_ClearStcInterval(nIndex,nData,nUserId)
	local nEvent = tThanksPreheat_Stc[nIndex]["EventType"]
	local nType = tThanksPreheat_Stc[nIndex]["DataType"]
	if nData == nil then
		nData = 0
	end
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,nData,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

--邮件发奖
function ThanksPreheat_SendEmail(nUserId,nIndex)
	local nActionId = tThanksPreheat_SendMail["ActionId"][nIndex]
	local nExistDay = tThanksPreheat_SendMail["ExistDay"]
	local sSenderName = tThanksPreheat_Text["Email"]["Sender"]
	local sTitle = tThanksPreheat_Text["Email"]["Title"]
	local sContent = tThanksPreheat_Text["Email"]["Content"]
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSenderName,sTitle,sContent)
	
end

--发放奖励
function ThanksPreheat_RewardItem()
	
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["ThanksPreheat"]["ActivityTime"]) then
		return
	end
	
	local nUserId = Get_UserId()
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tThanksPreheat_Cont["nLevel"],tThanksPreheat_Cont["nMetempsychosis"],nUserId) then 
		return
	end
	
	ThanksPreheat_ClearStcInterval(1,0,nUserId)
	local nData = ThanksPreheat_GetStcValue(1,nUserId)
	if nData == 0 then
		--发奖
		ThanksPreheat_SendEmail(nUserId,1)
		ThanksPreheat_SetStcValue(1,1,nUserId)
	else
		return
	end
	
end

--感恩礼包使用
function ThanksPreheat_UseRandomPack(nItemId)
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tThanksPreheat_Data[nItemId],1)
	local nSpace1 = RewardTemplate_GetRandomSpace(tThanksPreheat_Data[nItemId]["Extra"],1)
	if not User_CheckLeftSpace(nSpace+nSpace1) then
		User_TalkChannel2005(string.format(tThanksPreheat_Text["SystemTips"]["NoSpace"],nSpace+nSpace1))
		return 
	end
	
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelItem(nItemId) then
		if RewardTemplate_NewRandom(tThanksPreheat_Data[nItemId],1) then
			local tReward = RewardTemplate_NewRandom(tThanksPreheat_Data[nItemId]["Extra"],1)
			local nIndex=tReward[1]["tAward"][1]["Flag"]
			if nIndex~=0 then 
				local nUserId = Get_UserId()
				local sUserName = Get_UserName(nUserId)
				local sRewardName=tThanksPreheat_Text[nItemId][nIndex]
				local sBroadcast=string.format(tThanksPreheat_Text["SystemTips"]["Broadcast"],sUserName,sRewardName)
				Sys_SystemBroadcast(sBroadcast)
			end 
		end 
	end 
end 

tItem[3326799] = tItem[3326799] or {}
tItem[3326799]["Function"] = function(nItemId,sItemName)
	ThanksPreheat_UseRandomPack(nItemId)
end


--登录自检
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,ThanksPreheat_RewardItem)