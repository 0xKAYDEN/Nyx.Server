------------------------------------------------------------------------------------
--Name:			190627[ios英文征服][活动脚本]7月COP上线奖励礼包及发奖action制作
--Creator: 		茅志伟
--Created:		2019/06/27
------------------------------------------------------------------------------------

-- 命名前缀 tCOPGoOnlinePack_

-- lua.ini = 41366
-- 41366 = V100\ActiveScript\[Conquer][ActiveScript]COPGoOnlinePack.lua
-- 41366 = V100\活动脚本\[征服][活动脚本]7月COP上线奖励礼包及发奖action制作.lua
-- LogId = 12001484


--掩码表
local tCOPGoOnlinePack_Stc = {}
--记录COP上线奖励礼包使用次数
tCOPGoOnlinePack_Stc[3322197] = {}
tCOPGoOnlinePack_Stc[3322197]["EventType"] = 199
tCOPGoOnlinePack_Stc[3322197]["DataType"] = 76
--记录COP上线奖励礼包领取次数
tCOPGoOnlinePack_Stc[1] = {}
tCOPGoOnlinePack_Stc[1]["EventType"] = 199
tCOPGoOnlinePack_Stc[1]["DataType"] = 77

local tCOPGoOnlinePack_Data = {}
--转世次数
tCOPGoOnlinePack_Data["Metempsychosis"] = 0
--等级
tCOPGoOnlinePack_Data["Level"] = 100

local tCOPGoOnlinePack_Log = {}
tCOPGoOnlinePack_Log["DeleteItem"] = "0,0,%d,%d,0,12001484,2,0,0"


local tCOPGoOnlinePack_Pack = {}
	-- ===COP奖励礼盒
	-- ===索引:tCOPGoOnlinePack_Pack[3322197]
	-- ===删除:3322197,1
	-- ===
	tCOPGoOnlinePack_Pack[3322197] = {}
	tCOPGoOnlinePack_Pack[3322197]["LogId"] = 12001484
	tCOPGoOnlinePack_Pack[3322197]["EventType"] = 199
	tCOPGoOnlinePack_Pack[3322197]["DataType"] = 76
	-- tCOPGoOnlinePack_Pack[3322197]["DeleteItem"] = {}
	-- tCOPGoOnlinePack_Pack[3322197]["DeleteItem"][1] = {}
	-- tCOPGoOnlinePack_Pack[3322197]["DeleteItem"][1]["Id"] = 3322197 -- 【库】 3322197 【库里没有该物品】[属性:]
	tCOPGoOnlinePack_Pack[3322197]["RewardEMoneyMono"] = {}
	tCOPGoOnlinePack_Pack[3322197]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】300赠点（赠）
	tCOPGoOnlinePack_Pack[3322197]["EmoneyLog"] = "10000	0555	0	0	-300	"
	tCOPGoOnlinePack_Pack[3322197]["RewardStrengthValue"] = {}
	tCOPGoOnlinePack_Pack[3322197]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力
	tCOPGoOnlinePack_Pack[3322197]["RewardItem"] = {}
	tCOPGoOnlinePack_Pack[3322197]["RewardItem"][1] = {}
	tCOPGoOnlinePack_Pack[3322197]["RewardItem"][1]["Id"] = 3009001 -- 【库】System.Byte[][属性:9], 【表格】明亮星陨石*10
	tCOPGoOnlinePack_Pack[3322197]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的System.Byte[]*10
	tCOPGoOnlinePack_Pack[3322197]["RewardEffect"] = {}
	tCOPGoOnlinePack_Pack[3322197]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCOPGoOnlinePack_Pack[3322197]["RewardEffect"]["Effect"] = "angelwing"


	tCOPGoOnlinePack_Pack[1] = {}
	-- ===领取COP奖励礼盒
	-- ===索引:tCOPGoOnlinePack_Pack[1]
	-- ===
	-- ===
	tCOPGoOnlinePack_Pack[1]["LogId"] = 12001484
	tCOPGoOnlinePack_Pack[1]["EventType"] = 199
	tCOPGoOnlinePack_Pack[1]["DataType"] = 77
	tCOPGoOnlinePack_Pack[1]["RewardItem"] = {}
	tCOPGoOnlinePack_Pack[1]["RewardItem"][1] = {}
	tCOPGoOnlinePack_Pack[1]["RewardItem"][1]["Id"] = 3322197 -- 【库】 3322197 【库里没有该物品】[属性:], 【表格】COP奖励礼盒
	tCOPGoOnlinePack_Pack[1]["RewardItem"][1]["Attr"] = "0 1" --  3322197 【库里没有该物品】*1
	tCOPGoOnlinePack_Pack[1]["RewardEffect"] = {}
	tCOPGoOnlinePack_Pack[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCOPGoOnlinePack_Pack[1]["RewardEffect"]["Effect"] = "angelwing"










--------------------------------------------
--领取奖励选项显示
function COPGoOnlinePack_RewardDisplay(nItemId)
	local nEventType1 = tCOPGoOnlinePack_Stc[nItemId]["EventType"]
	local nDataType1 = tCOPGoOnlinePack_Stc[nItemId]["DataType"]
	local nDataStc1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nDataStc1 <= 0 then 
		return true
	else
		return false
	end
end 
--浏览器页面
function COPGoOnlinePack_SendWebPage()
	User_SendWebPage("https://coevent.99.com/mcodownloadgift/")
end 
--物品使用函数
function COPGoOnlinePack_ChkTime(nItemId)
	if not Sys_ChkFullTime(tActivityTime["COPGoOnlinePack"]["ActivityTime"]) then 
		if Item_ChkMulItem(nItemId,nItemId,1) then
			Item_DelItem(nItemId)
			Sys_SaveActionFestivalLog(string.format(tCOPGoOnlinePack_Log["DeleteItem"],nItemId,1))
			User_TalkChannel2005(tCOPGoOnlinePack_Text["Sys_MsgBox"]["NoTime"])
			return
		end 
	end 
	local nLevel = tCOPGoOnlinePack_Data["Level"]
	local nMetempsychosis = tCOPGoOnlinePack_Data["Metempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then --判断是否到达0转100级
		User_TalkChannel2005(tCOPGoOnlinePack_Text["Sys_MsgBox"]["NoLevel"])
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end 

--领奖
function COPGoOnlinePack_RewardItem(nItemId)
	local nEventType1 = tCOPGoOnlinePack_Stc[nItemId]["EventType"]
	local nDataType1 = tCOPGoOnlinePack_Stc[nItemId]["DataType"]
	local nDataStc1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if not Item_ChkMulItem(nItemId,nItemId,1) then    -- 判断是否有物品
		return
	end 
	if not Sys_ChkFullTime(tActivityTime["COPGoOnlinePack"]["ActivityTime"]) then   --判断是否过期
		if Item_ChkMulItem(nItemId,nItemId,1) then
			Item_DelItem(nItemId)
			Sys_SaveActionFestivalLog(string.format(tCOPGoOnlinePack_Log["DeleteItem"],nItemId,1))
			User_TalkChannel2005(tCOPGoOnlinePack_Text["Sys_MsgBox"]["NoTime"])
			return
		end 
	end
	local nLevel = tCOPGoOnlinePack_Data["Level"]
	local nMetempsychosis = tCOPGoOnlinePack_Data["Metempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then --判断是否到达0转100级
		User_TalkChannel2005(tCOPGoOnlinePack_Text["Sys_MsgBox"]["NoLevel"])
		return
	end 
	if nDataStc1 >= 1 then   --判断是否领取过奖励
		return
	end 
	local nRewardEMoneyM = tCOPGoOnlinePack_Pack[nItemId]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nRewardEMoneyM > G_User_MaxEmoneyMono then  --赠点上限
		User_TalkChannel2005(tCOPGoOnlinePack_Text["Sys_MsgBox"]["NoMonoMoney"])
		return
	end 
	-- Task_AddStatistic(nEventType1,nDataType1,1,1)
	-- Task_SetStcTimestamp(nEventType1,nDataType1,0)
	RewardTemplate_UseItemAndMsg(tCOPGoOnlinePack_Pack[nItemId])
end 

-- -- 上限触发领礼包
-- function COPGoOnlinePack_Login()
	-- local nEventType2 = tCOPGoOnlinePack_Stc[1]["EventType"]
	-- local nDataType2 = tCOPGoOnlinePack_Stc[1]["DataType"]
	-- local nDataStc2 = Get_UserStatisticValue(nEventType2,nDataType2)
	-- if not Sys_ChkFullTime(tActivityTime["COPGoOnlinePack"]["ActivityTime"]) then   --判断是否过期
		-- return
	-- end 
	-- if nDataStc2 >= 1 then   --判断是否领取过礼包
		-- return
	-- end 
	-- local nLevel = tCOPGoOnlinePack_Data["Level"]
	-- local nMetempsychosis = tCOPGoOnlinePack_Data["Metempsychosis"]
	-- if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then --判断是否到达0转100级
		-- User_TalkChannel2005(tCOPGoOnlinePack_Text["Sys_MsgBox"]["NoLevel"])
		-- return
	-- else
		-- RewardTemplate_UseItemAndMsg(tCOPGoOnlinePack_Pack[1])
	-- end 
-- end 
	

-----------------------------------------------------对白

tItemFace[3322197] = 771
tItem[3322197] = tItem[3322197] or {}
tItem[3322197]["DialogueText"] = tCOPGoOnlinePack_Text[3322197]
tItem[3322197]["Text1-1"] = {111,112}
tItem[3322197]["tOption1-1"] = {111,112,113}

tItem[3322197]["OptionFunc111"] = "COPGoOnlinePack_SendWebPage"
tItem[3322197]["OptionChkFunc112"] = function ()  ---未领取选项
	return COPGoOnlinePack_RewardDisplay(3322197)
end
tItem[3322197]["OptionFunc112"] = "COPGoOnlinePack_RewardItem</N>3322197"
tItem[3322197]["OptionChkFunc113"] = function ()  ---已领取选项
	return not COPGoOnlinePack_RewardDisplay(3322197)
end
-- tItem[3322197]["OptionFunc113"] = ""



-- tItem[3322197] = tItem[3322197] or {}
tItem[3322197]["Function"] = function(nItemId,sItemName)
	COPGoOnlinePack_ChkTime(nItemId)
end


-- --------------------------------------上线触发-------------------------------------------
-- table.insert(tSystem_PlayLogin_Func,COPGoOnlinePack_Login)





