------------------------------------------------------------------------------------
--Name：            191126[英文征服][活动脚本]12月转服功能季度卡（12.19-12.31）
--Creator:      江宇君
--Created:     2019-11-26
------------------------------------------------------------------------------------

-- 命名前缀	tTransferServerToken_

-- 上线获得服务器转移礼盒（3314622）
-- stc掩码:(210,67)

-- 2020.2.20 新增复用
-- 上线获得服务器转移礼盒（3314622）
-- LOGID：12001876
-- stc掩码：(216,12)
-- 发奖action：576417

----------------------------------表配置部分--------------------------------------------
local tTransferServerToken_Reward = {}
	-- ===上线获得服务器转移礼盒
	-- ===索引: tTransferServerToken_Reward["Login"][3314622]
	tTransferServerToken_Reward["Login"] = {}
	tTransferServerToken_Reward["Login"][3314622] = {}
	tTransferServerToken_Reward["Login"][3314622]["LogId"] = 12001764
	tTransferServerToken_Reward["Login"][3314622]["RewardItem"] = {}
	tTransferServerToken_Reward["Login"][3314622]["RewardItem"][1] = {}
	tTransferServerToken_Reward["Login"][3314622]["RewardItem"][1]["Id"] = 3314622 -- ServerTransferBox[3314622][属性:9][叠加:1][金币:0], 【表格】服务器转移礼盒
	tTransferServerToken_Reward["Login"][3314622]["RewardItem"][1]["Attr"] = "0 1 0 129600 1" -- 90天时效(激活)的ServerTransferBox*1
	tTransferServerToken_Reward["Login"][3314622]["RewardEffect"] = {}
	tTransferServerToken_Reward["Login"][3314622]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTransferServerToken_Reward["Login"][3314622]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 2020.02.20 新增复用
	-- ===上线获得服务器转移礼盒
	-- ===索引: tTransferServerToken_Reward["Login"][3315520]
	tTransferServerToken_Reward["Login"][3315520] = {}
	tTransferServerToken_Reward["Login"][3315520]["LogId"] = 12001876
	tTransferServerToken_Reward["Login"][3315520]["RewardItem"] = {}
	tTransferServerToken_Reward["Login"][3315520]["RewardItem"][1] = {}
	tTransferServerToken_Reward["Login"][3315520]["RewardItem"][1]["Id"] = 3315520 -- ServerTransferBox[3315520][属性:9][叠加:1][金币:0], 【表格】服务器转移礼盒
	tTransferServerToken_Reward["Login"][3315520]["RewardItem"][1]["Attr"] = "0 1" -- ServerTransferBox*1
	tTransferServerToken_Reward["Login"][3315520]["RewardEffect"] = {}
	tTransferServerToken_Reward["Login"][3315520]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTransferServerToken_Reward["Login"][3315520]["RewardEffect"]["Effect"] = "angelwing"


	tTransferServerToken_Reward[3314622] = {}
	-- ===3314622,'ServerTransferBox'
	-- ===索引: tTransferServerToken_Reward[3314622]
	-- ===删除: 3314622,1
	tTransferServerToken_Reward[3314622]["LogId"] = 12001764
	tTransferServerToken_Reward[3314622]["DeleteItem"] = {}
	tTransferServerToken_Reward[3314622]["DeleteItem"][1] = {}
	tTransferServerToken_Reward[3314622]["DeleteItem"][1]["Id"] = 3314622 -- 【库】ServerTransferBox[属性:9]
	tTransferServerToken_Reward[3314622]["RewardItem"] = {}
	tTransferServerToken_Reward[3314622]["RewardItem"][1] = {}
	tTransferServerToken_Reward[3314622]["RewardItem"][1]["Id"] = 3314623 -- ServerTransferToken[3314623][属性:8][叠加:1][金币:0], 【表格】转服秘令
	tTransferServerToken_Reward[3314622]["RewardItem"][1]["Attr"] = "0 10" -- ServerTransferToken*10 --运营需求 转服密令不给90天时效
	tTransferServerToken_Reward[3314622]["RewardEffect"] = {}
	tTransferServerToken_Reward[3314622]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTransferServerToken_Reward[3314622]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 2020.02.20 新增复用
	tTransferServerToken_Reward[3315520] = {}
	-- ===3315520,'ServerTransferBox'
	-- ===索引: tTransferServerToken_Reward[3315520]
	-- ===删除: 3315520,1
	tTransferServerToken_Reward[3315520]["LogId"] = 12001876
	tTransferServerToken_Reward[3315520]["DeleteItem"] = {}
	tTransferServerToken_Reward[3315520]["DeleteItem"][1] = {}
	tTransferServerToken_Reward[3315520]["DeleteItem"][1]["Id"] = 3315520 -- 【库】ServerTransferBox[属性:9]
	tTransferServerToken_Reward[3315520]["RewardItem"] = {}
	tTransferServerToken_Reward[3315520]["RewardItem"][1] = {}
	tTransferServerToken_Reward[3315520]["RewardItem"][1]["Id"] = 3314623 -- ServerTransferToken[3314623][属性:8][叠加:1][金币:0], 【表格】转服秘令
	tTransferServerToken_Reward[3315520]["RewardItem"][1]["Attr"] = "0 3 0 129600 1" -- 90天时效(激活)的ServerTransferToken*3
	tTransferServerToken_Reward[3315520]["RewardEffect"] = {}
	tTransferServerToken_Reward[3315520]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTransferServerToken_Reward[3315520]["RewardEffect"]["Effect"] = "angelwing"


local tTransferServerToken_Stc = {}
	tTransferServerToken_Stc["Login"] = {}
	
	tTransferServerToken_Stc["Login"][3314622] = {}
	tTransferServerToken_Stc["Login"][3314622]["Event"] = 210
	tTransferServerToken_Stc["Login"][3314622]["Type"] = 67
	tTransferServerToken_Stc["Login"][3314622]["Data"] = 1
	
	-- 2020.2.20 新增复用
	tTransferServerToken_Stc["Login"][3315520] = {}
	tTransferServerToken_Stc["Login"][3315520]["Event"] = 216
	tTransferServerToken_Stc["Login"][3315520]["Type"] = 12
	tTransferServerToken_Stc["Login"][3315520]["Data"] = 1

local tTransferServerToken_Action = {}
	tTransferServerToken_Action["Login"] = {}
	tTransferServerToken_Action["Login"][3314622] = 575418
	-- 2020.2.20 新增复用
	tTransferServerToken_Action["Login"][3315520] = 576417

local tTransferServerToken_Data = {}

	tTransferServerToken_Data[3314622] = {}
	tTransferServerToken_Data[3314622]["NeedEMoney"] = 36000
	tTransferServerToken_Data[3314622]["EMoneyLog"] = "350	22957	%d	%d	1	"
	tTransferServerToken_Data[3314622]["DeleteItemLog"] = "0,0,%d,%d,12001764,2,0,0"
	tTransferServerToken_Data[3314622]["NpcId"] = 15702
	-- 2020.2.20 新增复用
	tTransferServerToken_Data[3315520] = {}
	tTransferServerToken_Data[3315520]["NeedEMoney"] = 9999
	tTransferServerToken_Data[3315520]["EMoneyLog"] = "1000	01452	%d	%d	1	"
	tTransferServerToken_Data[3315520]["DeleteItemLog"] = "0,0,%d,%d,12001876,2,0,0"
	tTransferServerToken_Data[3315520]["NpcId"] = 15702
	
	-- 转服卡id
	tTransferServerToken_Data["NeedItemId"] = 3314623

local tTransferServerToken_Global = {}
	tTransferServerToken_Global["Distinguish"] = {}
	tTransferServerToken_Global["Distinguish"]["Id"] = 54031 -- 区分服务器 data0为1 不给礼盒
	tTransferServerToken_Global["Distinguish"]["Data0"] = 1 -- 区分服务器 data0为1 不给礼盒

-- 获得到的转服礼盒的ID
local tTransferServerToken_GetReward = {}
	tTransferServerToken_GetReward[1] = 3314622
	
	-- 2020.2.20 新增复用
	tTransferServerToken_GetReward[2] = 3315520


----------------------------------逻辑部分---------------------------------------------
-- 上线触发
function TransferServerToken_LoginGetReward()
	if not Sys_ChkFullTime(tActivityTime["TransferServerToken"]["ActivityTime"]) then
		return
	end
	
	local nTransferServerToken_Global = tTransferServerToken_Global["Distinguish"]["Id"]
	local nTransferServerToken_Data0 = Get_SysDynaGlobalData0(nTransferServerToken_Global)
	
	-- 区分服务器 data0为1 不给礼盒
	if nTransferServerToken_Data0 >= tTransferServerToken_Global["Distinguish"]["Data0"] then
		return
	end
	
	local nTransferServerToken_UserId = Get_UserId()
	local nTransferServerToken_GetRewardItemId = tTransferServerToken_GetReward[2]
	TransferServerToken_GetReward(nTransferServerToken_GetRewardItemId, nTransferServerToken_UserId)
end

-- 检测是否领取过礼盒
function TransferServerToken_ChkStc(nTransferServerToken_GetRewardItemId, nTransferServerToken_UserId)
	local nTransferServerToken_Event = tTransferServerToken_Stc["Login"][nTransferServerToken_GetRewardItemId]["Event"]
	local nTransferServerToken_Type = tTransferServerToken_Stc["Login"][nTransferServerToken_GetRewardItemId]["Type"]
	local nTransferServerToken_Data = tTransferServerToken_Stc["Login"][nTransferServerToken_GetRewardItemId]["Data"]
	
	-- 玩家是否领取过服务器转移礼盒的奖励
	if Task_ChkStcValue(nTransferServerToken_Event,nTransferServerToken_Type,">=",nTransferServerToken_Data,nTransferServerToken_UserId) then
		return false,nTransferServerToken_Event,nTransferServerToken_Type,nTransferServerToken_Data
	end
	
	return true,nTransferServerToken_Event,nTransferServerToken_Type,nTransferServerToken_Data
end

-- 直接获得礼盒
function TransferServerToken_GetReward(nTransferServerToken_GetRewardItemId, nTransferServerToken_UserId)
	if not Sys_ChkFullTime(tActivityTime["TransferServerToken"]["ActivityTime"]) then
		return
	end

	local bTransferServerToken_Flag,nTransferServerToken_Event,nTransferServerToken_Type,nTransferServerToken_Data = TransferServerToken_ChkStc(nTransferServerToken_GetRewardItemId, nTransferServerToken_UserId)
	
	if not bTransferServerToken_Flag then
		return
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tTransferServerToken_Reward["Login"][nTransferServerToken_GetRewardItemId],nTransferServerToken_UserId) then
		TransferServerToken_EmailGetReward(nTransferServerToken_GetRewardItemId, nTransferServerToken_UserId)
		return
	end
	
	if Task_SetStatistic(nTransferServerToken_Event,nTransferServerToken_Type,nTransferServerToken_Data,1,nTransferServerToken_UserId) then
		Task_SetStcTimestamp(nTransferServerToken_Event,nTransferServerToken_Type,0,nTransferServerToken_UserId)
	end

	RewardTemplate_UseItemAndMsg(tTransferServerToken_Reward["Login"][nTransferServerToken_GetRewardItemId],nTransferServerToken_UserId)
end

-- 通过邮件获得礼盒
function TransferServerToken_EmailGetReward(nTransferServerToken_GetRewardItemId, nTransferServerToken_UserId)
	if not Sys_ChkFullTime(tActivityTime["TransferServerToken"]["ActivityTime"]) then
		return
	end

	local bTransferServerToken_Flag,nTransferServerToken_Event,nTransferServerToken_Type,nTransferServerToken_Data = TransferServerToken_ChkStc(nTransferServerToken_GetRewardItemId,nTransferServerToken_UserId)
	
	if not bTransferServerToken_Flag then
		return
	end
	
	if Task_SetStatistic(nTransferServerToken_Event,nTransferServerToken_Type,nTransferServerToken_Data,1,nTransferServerToken_UserId) then
		Task_SetStcTimestamp(nTransferServerToken_Event,nTransferServerToken_Type,0,nTransferServerToken_UserId)
	end
	
	local nTransferServerToken_ActionId = tTransferServerToken_Action["Login"][nTransferServerToken_GetRewardItemId]
	local sTransferServerToken_Sender = tTransferServerToken_Text["LoginGetToken"]["Email"]["Sender"]
	local sTransferServerToken_Title = tTransferServerToken_Text["LoginGetToken"]["Email"]["Title"]
	local sTransferServerToken_Content = tTransferServerToken_Text["LoginGetToken"]["Email"]["Content"]

	Sys_SendMail(nTransferServerToken_UserId,0,0,nTransferServerToken_ActionId,0,7,sTransferServerToken_Sender,sTransferServerToken_Title,sTransferServerToken_Content)
end

-- 检测物品使用时间
function TransferServerToken_ChkUseTime(nTransferServerToken_ItemId, nTransferServerToken_UserId)
	-- 活动时间之前使用物品 提示未到使用时间
	if CommonFunc_GetBeforeActivityTime(tActivityTime["TransferServerToken"]["UseItemTime"][nTransferServerToken_ItemId]) then
		Sys_MsgBox(tTransferServerToken_Text["Sys"]["NoActivityTime"])
		return false
	end

	-- 活动时间之后使用物品 删除物品
	if CommonFunc_GetAfterActivityTime(tActivityTime["TransferServerToken"]["UseItemTime"][nTransferServerToken_ItemId]) then
		if Item_DelMulItem(nTransferServerToken_ItemId, nTransferServerToken_ItemId, 1) then
			User_TalkChannel2005(tTransferServerToken_Text["Sys"]["TimeOut"])
			Sys_MsgBox(tTransferServerToken_Text["Sys"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tTransferServerToken_Data[nTransferServerToken_ItemId]["DeleteItemLog"], nTransferServerToken_ItemId, 1), nTransferServerToken_UserId)
		end
		return false
	end

	return true
end

-- 打开服务器转移礼盒
function TransferServerToken_OpenBoxUseEMoney(nTransferServerToken_ItemId)
	local nTransferServerToken_UserId = Get_UserId()

	-- 使用时间判断
	if nTransferServerToken_ItemId == 3315520 then
		if not TransferServerToken_ChkUseTime(nTransferServerToken_ItemId, nTransferServerToken_UserId) then
			return
		end
	end
	
	if not Item_ChkMulItem(nTransferServerToken_ItemId, nTransferServerToken_ItemId, 1) then
		return
	end
	
	local nTransferServerToken_UserEMoney = Get_UserEMoney()
	local nTransferServerToken_NeedEMoney = tTransferServerToken_Data[nTransferServerToken_ItemId]["NeedEMoney"]
	if nTransferServerToken_UserEMoney < nTransferServerToken_NeedEMoney then
		Sys_MsgBox(tTransferServerToken_Text[nTransferServerToken_ItemId]["Sys"]["NoEMoney"])
		return
	end
	
	-- 背包空间判断
	if not RewardTemplate_CheckSpace(tTransferServerToken_Reward[nTransferServerToken_ItemId],nTransferServerToken_UserId) then
		Sys_MsgBox(tTransferServerToken_Text[nTransferServerToken_ItemId]["Sys"]["NoSpace"])
		return
	end
	
	-- 扣除玩家天石失败 return
	if not User_AddEMoney(-nTransferServerToken_NeedEMoney) then
		return
	end
	
	-- 记录EMoneyLog
	Sys_SaveEmoneyBuy(string.format(tTransferServerToken_Data[nTransferServerToken_ItemId]["EMoneyLog"], nTransferServerToken_NeedEMoney, nTransferServerToken_NeedEMoney), nTransferServerToken_UserId)
	
	if RewardTemplate_UseItemAndMsg(tTransferServerToken_Reward[nTransferServerToken_ItemId],nTransferServerToken_UserId) then
		Sys_MsgBox(tTransferServerToken_Text[nTransferServerToken_ItemId]["Sys"]["OpenSuccess"])
	end
end

-- 转服密令 转服卡的使用时间取消，转服卡激活90天就好
function TransferServerToken_ChangeServerUseToken(nTransferServerToken_ItemId)
	local nTransferServerToken_UserId = Get_UserId()
	local nTransferServerToken_GetRewardItemId = tTransferServerToken_GetReward[2]
	
	-- 使用时间判断
	-- if not TransferServerToken_ChkUseTime(nTransferServerToken_ItemId, nTransferServerToken_UserId) then
	-- 	return
	-- end

	NpcPosition_PathFind(tTransferServerToken_Data[nTransferServerToken_GetRewardItemId]["NpcId"])
end


-- 物品转服
function TransferServerToken_ChangeServerTime(sTransferServerToken_ServerName)
	local nTransferServerToken_UserId = Get_UserId()
	local nTransferServerToken_ItemId = tTransferServerToken_Data["NeedItemId"]

	-- 不在活动时间内
	-- if not Sys_ChkFullTime(tActivityTime["TransferServerToken"]["ActivityTime"]) then
	-- 	return
	-- end

	-- 没有转服密令
	if not Item_ChkMulItem(nTransferServerToken_ItemId, nTransferServerToken_ItemId, 1) then
		Sys_MsgBox(tTransferServerToken_Text["Sys"]["NoToken"])
		return
	end

	-- 删除失败
	-- if not Item_DelMulItem(nTransferServerToken_ItemId, nTransferServerToken_ItemId, 1) then
		-- return
	-- end

	-- 游服发起转服要求 1212
	User_ChangeServer(sTransferServerToken_ServerName,nil,nTransferServerToken_ItemId, nTransferServerToken_UserId)
end

-------------------------------------------物品模块--------------------------------------------------
-- 3314622,'ServerTransferBox' 转服礼盒
tItemFace[3314622] = 1011
tItem[3314622] = tItem[3314622] or {}
tItem[3314622]["DialogueText"] = tTransferServerToken_Text[3314622]
tItem[3314622]["Text1-1"] = {111}
tItem[3314622]["tOption1-1"] = {111,112}
tItem[3314622]["OptionFunc111"] = "TransferServerToken_OpenBoxUseEMoney</N>3314622"

-- 2020.2.20新增复用
-- 3315520,'ServerTransferBox' 转服礼盒
tItemFace[3315520] = 1011
tItem[3315520] = tItem[3315520] or {}
tItem[3315520]["DialogueText"] = tTransferServerToken_Text[3315520]
tItem[3315520]["Text1-1"] = {111}
tItem[3315520]["tOption1-1"] = {111,112}
tItem[3315520]["OptionFunc111"] = "TransferServerToken_OpenBoxUseEMoney</N>3315520"

-- 3314623,'ServerTransferToken' 转服卡
tItem[3314623] = tItem[3314623] or {}
tItem[3314623]["Function"] = function (nTransferServerToken_ItemId, sTransferServerToken_ItemName)
	TransferServerToken_ChangeServerUseToken(nTransferServerToken_ItemId)
end


-------------------------------------上线触发--------------------------------------------
-- 活动时间内上线获得服务器转移礼盒
table.insert(tSystem_PlayLogin_Func, TransferServerToken_LoginGetReward)