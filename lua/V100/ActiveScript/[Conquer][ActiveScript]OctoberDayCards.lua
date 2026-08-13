------------------------------------------------------------------------------------
--Name:		190904[英文征服][活动脚本]10月日卡包(10.10-10.31）
--Purpose:	10月日卡活动
--Creator: 	冯子鑫
--Created:	2019/09/5
------------------------------------------------------------------------------------

--命名前缀
--OctoberDayCards_

-- logid:12001611
--41492 = V100\活动脚本\[征服][活动脚本]10月日卡包(10.10-10.31）.lua
--41492 = V100\ActiveScript\[Conquer][ActiveScript]OctoberDayCards.lua

--掩码：
--stc（203,98）每日打开宝箱次数

--日卡 3323493
--emoneylog: 350 22612

----------------------------------表配置部分--------------------------------------------
--stc配置
local tOctoberDayCards_Stc = {}
	--超值日卡Stc
	tOctoberDayCards_Stc[3323493] = {}
	--	stc(203,98)		记录日卡3323493购买次数
	tOctoberDayCards_Stc[3323493]["Event"] = 203
	tOctoberDayCards_Stc[3323493]["Data"] = 98
	
local tOctoberDayCards_Time = {}
	tOctoberDayCards_Time["ActivityTime"] = tActivityTime["OctoberDayCards"]["ActivityTime"]
	-- tOctoberDayCards_Time[3323493] = tActivityTime["OctoberDayCards"]["UseDayTime"]

local tOctoberDayCards_Map = {}
	tOctoberDayCards_Map["TwinCity"] = 1002
	
local tOctoberDayCards_EMoneyLog = {}
	tOctoberDayCards_EMoneyLog[3323493]= "350	22612	%d	%d	1	"
	
local tOctoberDayCards_EMoney = {}
	tOctoberDayCards_EMoney[3323493] = 99
	
local tOctoberDayCards_Log= {}
	tOctoberDayCards_Log["DelItem"] = "0,0,%d,%d,12001611,2,0,0"
	
local tOctoberDayCards_Reward = {}
	tOctoberDayCards_Reward[24921] = {}
	tOctoberDayCards_Reward[24921][3323493] = {}
	tOctoberDayCards_Reward[24921][3323493]["RewardItem"] = {}
	tOctoberDayCards_Reward[24921][3323493]["RewardItem"][1] = {}
	tOctoberDayCards_Reward[24921][3323493]["RewardItem"][1]["Id"] = 3323493
	tOctoberDayCards_Reward[24921][3323493]["RewardItem"][1]["Attr"] = "0 1"
	tOctoberDayCards_Reward[24921][3323493]["RewardEffect"] = {}
	tOctoberDayCards_Reward[24921][3323493]["RewardEffect"]["SzObj"] = "self"
	tOctoberDayCards_Reward[24921][3323493]["RewardEffect"]["Effect"] = "zf2-e128"
	tOctoberDayCards_Reward[24921][3323493]["LogId"] =12001611
	
	-- ===超值日卡
	-- ===索引: tOctoberDayCards_Reward[3323493]
	-- ===删除: 3323493,1
	-- ===NewEMoneyLog: 350,22612
	tOctoberDayCards_Reward[3323493] = {}
	tOctoberDayCards_Reward[3323493]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tOctoberDayCards_Reward[3323493]["DeleteItem"] = {}
	tOctoberDayCards_Reward[3323493]["DeleteItem"][1] = {}
	tOctoberDayCards_Reward[3323493]["DeleteItem"][1]["Id"] = 3323493 -- 【库】 3323493 【库里没有该物品】[属性:]
	tOctoberDayCards_Reward[3323493]["LogId"] = 12001611
	-- +4赤炼石-- 【必给】
	tOctoberDayCards_Reward[3323493][1] = {}
	tOctoberDayCards_Reward[3323493][1]["RandomItemChanceType"] = 1
	tOctoberDayCards_Reward[3323493][1]["RewardItem"] = {}
	tOctoberDayCards_Reward[3323493][1]["RewardItem"][1] = {}
	tOctoberDayCards_Reward[3323493][1]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4赤炼石
	tOctoberDayCards_Reward[3323493][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +4Stone（赠）*1
	tOctoberDayCards_Reward[3323493][1]["RewardEffect"] = {}
	tOctoberDayCards_Reward[3323493][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctoberDayCards_Reward[3323493][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品黄色神纹精粹*20  - 24%
	tOctoberDayCards_Reward[3323493][2] = {}
	tOctoberDayCards_Reward[3323493][2]["RandomItemChanceType"] = 2
	tOctoberDayCards_Reward[3323493][2]["ItemChance"] = 2400
	tOctoberDayCards_Reward[3323493][2]["RewardItem"] = {}
	tOctoberDayCards_Reward[3323493][2]["RewardItem"][1] = {}
	tOctoberDayCards_Reward[3323493][2]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠品黄色神纹精粹*20 
	tOctoberDayCards_Reward[3323493][2]["RewardItem"][1]["Attr"] = "0 20 3" -- YellowRuneEssence*1
	tOctoberDayCards_Reward[3323493][2]["RewardEffect"] = {}
	tOctoberDayCards_Reward[3323493][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctoberDayCards_Reward[3323493][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 1500气力值 - 25%
	tOctoberDayCards_Reward[3323493][3] = {}
	tOctoberDayCards_Reward[3323493][3]["RandomItemChanceType"] = 2
	tOctoberDayCards_Reward[3323493][3]["ItemChance"] = 2500
	tOctoberDayCards_Reward[3323493][3]["RewardStrengthValue"] = {}
	tOctoberDayCards_Reward[3323493][3]["RewardStrengthValue"]["Value"] = 1500 -- 气力值, 【需求】1500气力值
	tOctoberDayCards_Reward[3323493][3]["RewardEffect"] = {}
	tOctoberDayCards_Reward[3323493][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctoberDayCards_Reward[3323493][3]["RewardEffect"]["Effect"] = "angelwing"
	-- +4赤炼石 - 25%
	tOctoberDayCards_Reward[3323493][4] = {}
	tOctoberDayCards_Reward[3323493][4]["RandomItemChanceType"] = 2
	tOctoberDayCards_Reward[3323493][4]["ItemChance"] = 2500
	tOctoberDayCards_Reward[3323493][4]["RewardItem"] = {}
	tOctoberDayCards_Reward[3323493][4]["RewardItem"][1] = {}
	tOctoberDayCards_Reward[3323493][4]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4赤炼石
	tOctoberDayCards_Reward[3323493][4]["RewardItem"][1]["Attr"] = "0 1 3" -- +4Stone（赠）*1
	tOctoberDayCards_Reward[3323493][4]["RewardEffect"] = {}
	tOctoberDayCards_Reward[3323493][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctoberDayCards_Reward[3323493][4]["RewardEffect"]["Effect"] = "angelwing"
	-- +4马匹 - 25%
	tOctoberDayCards_Reward[3323493][5] = {}
	tOctoberDayCards_Reward[3323493][5]["RandomItemChanceType"] = 2
	tOctoberDayCards_Reward[3323493][5]["ItemChance"] = 2500
	tOctoberDayCards_Reward[3323493][5]["RewardItem"] = {}
	tOctoberDayCards_Reward[3323493][5]["RewardItem"][1] = {}
	tOctoberDayCards_Reward[3323493][5]["RewardItem"][1]["Id"] = 300000 -- Steed[300000][属性:11][叠加:0][金币:0], 【表格】+4马匹
	tOctoberDayCards_Reward[3323493][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 4" -- Steed*1
	tOctoberDayCards_Reward[3323493][5]["RewardEffect"] = {}
	tOctoberDayCards_Reward[3323493][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctoberDayCards_Reward[3323493][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 七星宝钻赠 - 1%
	tOctoberDayCards_Reward[3323493][6] = {}
	tOctoberDayCards_Reward[3323493][6]["RandomItemChanceType"] = 2
	tOctoberDayCards_Reward[3323493][6]["ItemChance"] = 100
	tOctoberDayCards_Reward[3323493][6]["RewardItem"] = {}
	tOctoberDayCards_Reward[3323493][6]["RewardItem"][1] = {}
	tOctoberDayCards_Reward[3323493][6]["RewardItem"][1]["Id"] = 1200006 -- StarDrill[1200006][属性:0][叠加:0][金币:0], 【表格】七星宝钻赠
	tOctoberDayCards_Reward[3323493][6]["RewardItem"][1]["Attr"] = "0 1 3" -- StarDrill（赠）*1
	tOctoberDayCards_Reward[3323493][6]["RewardEffect"] = {}
	tOctoberDayCards_Reward[3323493][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctoberDayCards_Reward[3323493][6]["RewardEffect"]["Effect"] = "angelwing"
--------------------------------------------逻辑部分配置--------------------------------------------
--购买日卡
function OctoberDayCards_DayEMoney(nNpcId,nItemId)
	local nUserId = Get_UserId()
	local sItemName = tOctoberDayCards_Text[nItemId]["Name"]
	local nEvent = tOctoberDayCards_Stc[nItemId]["Event"]
	local nType = tOctoberDayCards_Stc[nItemId]["Data"]
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tOctoberDayCards_Time["ActivityTime"]) then
		return 
	end
	--判断本日是否已购买
	if Task_StcInterval(nEvent, nType, 1, 4, nUserId) then
		Task_SetStatistic(nEvent, nType, 0, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nType, 0, nUserId)
	end
	if Task_ChkStcValue(nEvent, nType,">=", 1, nUserId) then
		User_TalkChannel2005(string.format(tOctoberDayCards_Text["BuyAlready"], sItemName))
		Sys_MsgBox(string.format(tOctoberDayCards_Text["BuyAlready"], sItemName))
		return
	end
	--获取价格
	local nNeedEMoney = tOctoberDayCards_EMoney[nItemId]
	--判断天石足够
	if Get_UserEMoney(nUserId) < nNeedEMoney then
		tNpcGossip[nNpcId]["Text321"] = string.format(tOctoberDayCards_Text[nNpcId]["Text321"], nNeedEMoney, sItemName)
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end

	-- 判断背包
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tOctoberDayCards_Text["NoSpace"])
		Sys_MsgBox(tOctoberDayCards_Text["NoSpace"])
		return
	end

	--扣除天石
	if User_AddEMoney((-1) * nNeedEMoney, nUserId) then
		--打掩码
		Task_AddStatistic(nEvent, nType, 1, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nType, 0, nUserId)
		--领奖打log
		RewardTemplate_UseItemAndMsg(tOctoberDayCards_Reward[nNpcId][nItemId])
		Sys_SaveEmoneyBuy(string.format(	tOctoberDayCards_EMoneyLog[nItemId], nNeedEMoney, nNeedEMoney))
		--链接至确认对白
		tNpcGossip[nNpcId]["Text311"] = string.format(tOctoberDayCards_Text[nNpcId]["Text311"], nNeedEMoney)
		tNpcGossip[nNpcId]["Text312"] = tOctoberDayCards_Text[nNpcId]["Text312"]
		LinkNpcGossipFunc_New(nNpcId, "3-1")
	end
end 

---------------------------------------------NPC模块---------------------------------------------
--导购卡洛琳
tNpcFace[5066] = 190
tNpcGossip[24921] = tNpcGossip[24921] or DefaultNpc:new{}
tNpcGossip[24921]["DialogueText"] = tOctoberDayCards_Text[24921]
tNpcGossip[24921]["OptionHidden"] = 1

--活动时间前
tNpcGossip[24921]["Text1-1"] = {111,112,113,114}
tNpcGossip[24921]["tOption1-1"] = {111}
tNpcGossip[24921]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tOctoberDayCards_Time["ActivityTime"])
end

--活动时间后
tNpcGossip[24921]["Text1-2"] = {121}
tNpcGossip[24921]["tOption1-2"] = {121}
tNpcGossip[24921]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tOctoberDayCards_Time["ActivityTime"])
end

--活动时间内
tNpcGossip[24921]["Text1-3"] = {131,132,133}
tNpcGossip[24921]["tOption1-3"] = {131,132}
tNpcGossip[24921]["OptionPoint131"] = "2-1"--购买超值日卡

--购买超值日卡
tNpcGossip[24921]["Text2-1"] = {211,212}
tNpcGossip[24921]["tOption2-1"] = {211,212}
tNpcGossip[24921]["OptionFunc211"] = "OctoberDayCards_DayEMoney</N>24921</N>3323493"

-- 成功、购得物品
tNpcGossip[24921]["Text3-1"] = {311,312}
tNpcGossip[24921]["tOption3-1"] = {311}

-- 失败、天石不足
tNpcGossip[24921]["Text3-2"] = {321,322}
tNpcGossip[24921]["tOption3-2"] = {321}

---------------------------------------------物品模块---------------------------------------------
--3323493 超值日卡
tItem[3323493] = tItem[3323493] or {}
tItem[3323493]["Function"] = function(nItemId)
 --使用日卡
	RewardTemplate_RandomReward(tOctoberDayCards_Reward ,nItemId)
end
