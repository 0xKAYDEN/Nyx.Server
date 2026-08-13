----------------------------------------------------------------------------
--Name:		[征服][物品模板]物品模板里的相关判断.lua
--Purpose:	物品模板里的相关判断
--Creator: 	郑鋆
--Created:	2017/09/06
----------------------------------------------------------------------------

-- 命名前缀
-- ItemMouldJudge_

-- 存放玩家是否自创武功的记录
local tItemMouldJudge_GongFu = {}

------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 金币上限
function ItemMouldJudge_ChkMoney(tReward,tMoney,nUserId)
	local nBagMoneyNum = tMoney["Value"]
	
	if not User_CanPutMoney2Bag(nBagMoneyNum,nUserId) then
		ItemMouldJudge_Msg(tReward,"RewardMoney",nUserId)
		return false
	end
	
	return true
end

-- 赠点天石上限
function ItemMouldJudge_ChkEmoneyMono(tReward,tEMoneyMono,nUserId)
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = tEMoneyMono["Value"]
	
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		ItemMouldJudge_Msg(tReward,"RewardEMoneyMono",nUserId)
		return false
	end
	
	return true
end

-- 天石上限
function ItemMouldJudge_ChkEmoney(tReward,tEMoney,nUserId)
	local nEmoney = Get_UserEMoney(nUserId)
	local nAddEmoney = tEMoney["Value"]
	
	if nEmoney + nAddEmoney > G_User_MaxEmoney then
		ItemMouldJudge_Msg(tReward,"RewardEMoney",nUserId)
		return false
	end
	
	return true
end

-- 判断玩家是否自创武功
function ItemMouldJudge_ChkGongFu(tReward,nUserId)
	if tItemMouldJudge_GongFu[nUserId] == nil then
		tItemMouldJudge_GongFu[nUserId] = User_IsAlreadyCreateGongFu(nUserId)
	end
	
	if not tItemMouldJudge_GongFu[nUserId] then
		ItemMouldJudge_Msg(tReward,"GongFu",nUserId)
		return false
	end
	
	return true
end

-- 真气上限
function ItemMouldJudge_ChkZhenQi(tReward,tZhenQi,nUserId)
	if not ItemMouldJudge_ChkGongFu(tReward,nUserId) then
		return false
	end
	
	local nZhenQi = Get_UserGongFuQiLev(nUserId)
	local nAddZhenQi = tZhenQi["Value"]
	
	if nZhenQi + nAddZhenQi > G_User_MaxZhenQi then
		ItemMouldJudge_Msg(tReward,"RewardZhenQi",nUserId)
		return false
	end
	
	return true
end

-- 免费修炼次数上限
function ItemMouldJudge_ChkFreePractNum(tReward,tFreePractNum,nUserId)
	if not ItemMouldJudge_ChkGongFu(tReward,nUserId) then
		return false
	end
	
	local nFreePractNum = Get_UserGongFureePractNum(nUserId)
	local nAddFreePractNum = tFreePractNum["Value"]*10000
	
	if nFreePractNum + nAddFreePractNum > G_User_FreePractice then
		ItemMouldJudge_Msg(tReward,"RewardFreePract",nUserId)
		return false
	end
	
	return true
end

-- 修为值达上限
function ItemMouldJudge_ChkRepairValue(tReward,tRepairValue,nUserId)
	local nRepairValue = Get_UserCultureValue(nUserId)
	local nAddRepairValue = tRepairValue["Value"]
	
	if nRepairValue + nAddRepairValue > G_User_RepairValue then
		ItemMouldJudge_Msg(tReward,"RewardRepair",nUserId)
		return false
	end
	
	return true
end

-- 黄金联赛积分上限
function ItemMouldJudge_ChkGoldenLeague(tReward,tGoldenLeague,nUserId)
	local nGoldenLeague = Get_UserLeaguePoint(nUserId)
	local nAddGoldenLeague = tGoldenLeague["Value"]
	
	if nGoldenLeague + nAddGoldenLeague > G_User_GoldenLeague then
		ItemMouldJudge_Msg(tReward,"GoldenLeague",nUserId)
		return false
	end
	
	return true
end

-- 属性点上限
function ItemMouldJudge_ChkAttrPoint(tReward,tAttrPoint,nUserId)
	local nAddAttrPoint = tAttrPoint["Value"]
	local nNowAttrPoint = TermsOfUse_GetAttrPoint(nUserId)
	
	if nAddAttrPoint + nNowAttrPoint > G_User_AttrPoint then
		ItemMouldJudge_Msg(tReward,"MaxPoint",nUserId)
		return false
	end
	
	return true
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------
local tItemMouldJudge_TimeFunc = {}
tItemMouldJudge_TimeFunc[1] = Sys_ChkFullTime
tItemMouldJudge_TimeFunc[2] = Sys_ChkDateTime
tItemMouldJudge_TimeFunc[3] = Sys_ChkMonthTime
tItemMouldJudge_TimeFunc[4] = Sys_ChkWeedTime
tItemMouldJudge_TimeFunc[5] = Sys_ChkDayTime
tItemMouldJudge_TimeFunc[6] = Sys_ChkMinute

-- 上限判断的函数表
local tItemMouldJudge_Func = {}
	-- 获得银两
	tItemMouldJudge_Func["RewardMoney"] = ItemMouldJudge_ChkMoney
	-- 赠点天石上限
	tItemMouldJudge_Func["RewardEMoneyMono"] = ItemMouldJudge_ChkEmoneyMono
	-- 天石上限
	tItemMouldJudge_Func["RewardEMoney"] = ItemMouldJudge_ChkEmoney
	-- 真气上限
	tItemMouldJudge_Func["RewardZhenQi"] = ItemMouldJudge_ChkZhenQi
	-- 免费修炼次数上限
	tItemMouldJudge_Func["RewardFreePractNum"] = ItemMouldJudge_ChkFreePractNum
	-- 修为值上限
	tItemMouldJudge_Func["RewardRepairValue"] = ItemMouldJudge_ChkRepairValue
	-- 黄金联赛积分上限
	tItemMouldJudge_Func["RewardGoldenLeague"] = ItemMouldJudge_ChkGoldenLeague
	-- 自由属性点
	tItemMouldJudge_Func["RewardAttrPoint"] = ItemMouldJudge_ChkAttrPoint
	-- 力量属性点
	tItemMouldJudge_Func["RewardStrengthAttr"] = ItemMouldJudge_ChkAttrPoint
	-- 敏捷属性点
	tItemMouldJudge_Func["RewardSpeedAttr"] = ItemMouldJudge_ChkAttrPoint
	-- 体质属性点
	tItemMouldJudge_Func["RewardHealthAttr"] = ItemMouldJudge_ChkAttrPoint
	-- 精神属性点
	tItemMouldJudge_Func["RewardSoulAttr"] = ItemMouldJudge_ChkAttrPoint

-- 默认值配置
local tItemMouldJudge_DefaultConfig = {}
	-- 默认属性
	tItemMouldJudge_DefaultConfig["Monopoly"] = 1
	-- 默认活动时间类型
	tItemMouldJudge_DefaultConfig["ActivityType"] = 1
	-- 默认LOGID
	tItemMouldJudge_DefaultConfig["LogId"] = 12000856
	-- 默认使用的物品数量
	tItemMouldJudge_DefaultConfig["Num"] = 1
	-- 默认
	tItemMouldJudge_DefaultConfig["Sash"] = 0
	-- 默认
	tItemMouldJudge_DefaultConfig["SaveTime"] = 0
	-- 默认玩家频道提示
	tItemMouldJudge_DefaultConfig["MsgType"] = 1
	-- 默认每天可使用礼包的stc掩码次数
	tItemMouldJudge_DefaultConfig["RewardData"] = 1
	
-- 记录玩家使用该物品的次数，设置一个上限，每天达到上限则不让使用
----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 活动时间判断
function ItemMouldJudge_ChkTime(tReward)
	if tReward["ActivityTime"] == nil then
		return true
	end
	
	local nType = tReward["ActivityType"] or tItemMouldJudge_DefaultConfig["ActivityType"]
	
	return tItemMouldJudge_TimeFunc[nType](tReward["ActivityTime"])
end

-- 获取物品使用的属性
function ItemMouldJudge_GetUseItem(tReward,sGetType)
	if tReward["UseItem"] == nil then
		return
	end
	
	return tReward["UseItem"][sGetType]
end

-- 过期处理
function ItemMouldJudge_Overdue(tReward,nItemId,nUserId)
	local nMonopoly = ItemMouldJudge_GetUseItem(tReward,"Monopoly") or tItemMouldJudge_DefaultConfig["Monopoly"]
	local nItemNum = Get_CountItemType(nItemId,0,nMonopoly,nUserId,nUserId)
	local nLogId = tReward["LogId"] or tItemMouldJudge_DefaultConfig["LogId"]
	
	-- 判断是否有配过期奖励
	if tReward["OverdueReward"] == nil then
		if Item_DelAllItemByType(nItemId,nUserId) then
			-- 打上对应的log
			local sLog = string.format("0,0,%d,%d,%d,2,0,0",nItemId,nItemNum,nLogId)
			
			Sys_SaveActionRewardLog(sLog,nUserId)
			-- 给予对应的提示
			if tReward["OverdueTalk"] ~= nil then
				User_TalkChannel2005(tReward["OverdueTalk"],nUserId)
			end
		end
		
		return
	end 

	-- 给予奖励类型（"RewardStrengthValue"）
	local sIndex = tReward["OverdueReward"]["RewardIndex"]
	local nValue = tReward["OverdueReward"]["RewardValue"]
	local sAttr = tReward["OverdueReward"]["RewardAttr"]
	local tDelReward = {}
	
	if sIndex == nil or nValue == nil then
		return
	end
	
	tDelReward[sIndex] = {}
	tDelReward["LogId"] = nLogId
	
	if sIndex == "RewardItem" then
		if sAttr == nil or type(sAttr) ~= "string" then
			return
		end
		
		local tAttr = Sys_Split(sAttr," ")
		local sNewAttr = ""
		if tAttr[2] == nil then
			tAttr[2] = 1
		end
		
		tAttr[2] = tonumber(tAttr[2])*nItemNum
		
		for i = 1,#tAttr do
			if i == #tAttr then
				sNewAttr = sNewAttr .. tAttr[i]
			else
				sNewAttr = sNewAttr .. tAttr[i] .. " "
			end
		end
		
		tDelReward[sIndex][1] = {}
		tDelReward[sIndex][1]["Id"] = nValue
		tDelReward[sIndex][1]["Attr"] = sNewAttr
	else
		tDelReward[sIndex]["Value"] = nValue*nItemNum
	end
	
	tDelReward["DeleteItem"] = {}
	tDelReward["DeleteItem"][1] = {}
	tDelReward["DeleteItem"][1]["Id"] = nItemId
	tDelReward["DeleteItem"][1]["ItemNum"] = nItemNum
	RewardTemplate_UseItemAndMsg(tDelReward)
end

-- 物品使用stc掩码判断
function ItemMouldJudge_ChkStcValues(tReward,nItemId,nUserId)
	local nEvent = tReward["EventType"]
	local nType = tReward["DataType"]
	
	if nEvent == nil or nType == nil then
		return true
	end
	
	local nSingleData = tReward["RewardData"] or tItemMouldJudge_DefaultConfig["RewardData"]
	local nTotalData = tReward["RewardTotalData"]
	local nDelay = tReward["RewardDelay"]
	local nTimeType = tReward["RewardTimeType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	-- 对掩码值进行分解，取出总的次数跟今天的次数
	local nNowSingleData = nData%10000
	local nNowTotalData = (nData - nNowSingleData)/10000
	
	-- 判断是否已经超出总的次数了
	if (nTotalData ~= nil) and (nNowTotalData >= nTotalData) then
		return false
	end
	
	-- 判断是否需要清除掩码的操作
	if (nDelay ~= nil) and (nTimeType ~= nil) and Task_StcInterval(nEvent,nType,nDelay,nTimeType,nUserId) then
		nNowSingleData = 0
		nData = nNowTotalData*10000 + nNowSingleData
		Task_SetStatistic(nEvent,nType,nData,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end

	-- 判断今天是否领取过奖励
	if nNowSingleData >= nSingleData then
		ItemMouldJudge_Msg(tReward,"NoSingleData",nUserId)
		return false
	end
	
	return true
end

-- 物品使用的数量检测
function ItemMouldJudge_ChkUseItem(tReward,nItemId,nUserId)
	local nMonopoly = ItemMouldJudge_GetUseItem(tReward,"Monopoly") or tItemMouldJudge_DefaultConfig["Monopoly"]
	local nItemNum = ItemMouldJudge_GetUseItem(tReward,"Num") or tItemMouldJudge_DefaultConfig["Num"]
	local nSaveTime = ItemMouldJudge_GetUseItem(tReward,"SaveTime") or tItemMouldJudge_DefaultConfig["SaveTime"]
	local nSash = ItemMouldJudge_GetUseItem(tReward,"Sash") or tItemMouldJudge_DefaultConfig["Sash"]
	
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly,nSash,nUserId,nSaveTime) then
		ItemMouldJudge_Msg(tReward,"NoItem",nUserId)
		return false
	end
	
	return true
end

-- 花费判断
function ItemMouldJudge_ChkCoat(tReward,nItemId,nUserId)
	-- 判断是否需要花费天石银两之类
	if tReward["Coat"] == nil then
		return true
	end
	
	-- 判断是否需要花费天石
	if tReward["Coat"]["Emoney"] ~= nil then
		local nUserEmoney = Get_UserEMoney(nUserId)
		
		if nUserEmoney < tReward["Coat"]["Emoney"] then
			-- 玩家天石不够提示
			ItemMouldJudge_Msg(tReward,"CoatEmoney",nUserId)
			return false
		end
	end
	
	-- 判断是否需要花费赠点天石
	if tReward["Coat"]["EmoneyMono"] ~= nil then
		local nUserEmoneyMono = Get_UserMonoEMoney(nUserId)
		
		if nUserEmoneyMono < tReward["Coat"]["EmoneyMono"] then
			-- 玩家赠点天石不够提示
			ItemMouldJudge_Msg(tReward,"CoatEmoneyMono",nUserId)
			return false
		end
	end
	
	-- 判断是否需要花费银两
	if tReward["Coat"]["Money"] ~= nil then
		if not User_CanPutMoney2Bag(-tReward["Coat"]["Money"],nUserId) then
			-- 玩家银两不够提示
			ItemMouldJudge_Msg(tReward,"CoatMoney",nUserId)
			return false
		end
	end
	
	return true
end

-- 上限判断
function ItemMouldJudge_ChkUpperLimit(tReward,nItemId,nUserId)
	if tReward["Reward"] == nil then
		return true
	end
	
	tItemMouldJudge_GongFu[nUserId] = nil
	
	for i,v in pairs(tReward["Reward"]) do
		local fFunc = tItemMouldJudge_Func[i]
		if fFunc ~= nil and type(fFunc) == "function" then
			if not fFunc(tReward,v,nUserId) then
				return false
			end
		end
	end
	
	return true
end

-- 背包空间判断
function ItemMouldJudge_ChkSpace(tReward,nItemId,nUserId)
	if tReward["Reward"] == nil then
		return true
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tReward["Reward"],nUserId)
	local tDelItem = {}
	tDelItem["DeleteItem"] = {}
	tDelItem["DeleteItem"][1] = {}
	tDelItem["DeleteItem"][1]["Id"] = nItemId
	tDelItem["DeleteItem"][1]["ItemNum"] = ItemMouldJudge_GetUseItem(tReward,"Num") or tItemMouldJudge_DefaultConfig["Num"]
	local nSubSpace = RewardTemplate_GetDelSpace(tDelItem,nUserId)
	local nTotalSpace = nSpace
	
	if ItemMouldJudge_MoreDel(tReward,nItemId,nUserId) then
		nTotalSpace = nSpace - nSubSpace
	end
	
	if nTotalSpace <= 0 then
		return true
	end
	
	if not User_CheckLeftSpace(nTotalSpace,nUserId) then
		ItemMouldJudge_Msg(tReward,"NoSpace",nUserId)
		return false
	end
	
	return true
end

-- 扣除花费
function ItemMouldJudge_Coat(tReward,nItemId,nUserId)
	-- 判断是否需要花费天石银两之类
	if tReward["Coat"] == nil then
		return true
	end
	
	-- 判断是否需要花费天石
	if tReward["Coat"]["Emoney"] ~= nil then
		if not User_AddEMoney(-tReward["Coat"]["Emoney"],nUserId) then
			return false
		end
	end
	
	-- 判断是否需要花费赠点天石
	if tReward["Coat"]["EmoneyMono"] ~= nil then
		if not User_AddEMoneyMono(-tReward["Coat"]["EmoneyMono"],nUserId) then
			return false
		end
	end
	
	-- 判断是否需要花费银两
	if tReward["Coat"]["Money"] ~= nil then
		if not User_AddMoney(-tReward["Coat"]["Money"],nUserId) then
			return false
		end
	end
	
	return true
end

-- 删除物品
function ItemMouldJudge_DelSimpleItem(tReward,nItemId,nUserId)
	-- 判断是否是在最后一次的时候删除物品
	if tReward["MoreDel"] ~= nil then
		if not ItemMouldJudge_MoreDel(tReward,nItemId,nUserId) then
			return true
		end
	end
	
	local nMonopoly = ItemMouldJudge_GetUseItem(tReward,"Monopoly") or tItemMouldJudge_DefaultConfig["Monopoly"]
	local nItemNum = ItemMouldJudge_GetUseItem(tReward,"Num") or tItemMouldJudge_DefaultConfig["Num"]
	local nSaveTime = ItemMouldJudge_GetUseItem(tReward,"SaveTime") or tItemMouldJudge_DefaultConfig["SaveTime"]
	local nSash = ItemMouldJudge_GetUseItem(tReward,"Sash") or tItemMouldJudge_DefaultConfig["Sash"]
	
	if not Item_DelMulItem(nItemId,nItemId,nItemNum,nMonopoly,nSash,nUserId,nSaveTime) then
		return false
	end
	
	if tRewardTemplate_DelItemTypeLog[nUserId] == "" or tRewardTemplate_DelItemTypeLog[nUserId] == nil then
		tRewardTemplate_DelItemTypeLog[nUserId] = tostring(nItemId)
		tRewardTemplate_DelItemNumLog[nUserId] = tostring(nItemNum)
	else
		tRewardTemplate_DelItemTypeLog[nUserId] = tRewardTemplate_DelItemTypeLog[nUserId] .. "[" .. nItemId .. "]"
		tRewardTemplate_DelItemNumLog[nUserId] = tRewardTemplate_DelItemNumLog[nUserId] .. "[" .. nItemNum .. "]"
	end
	
	return true
end

-- 获取是否达到使用的最大上限
function ItemMouldJudge_MoreDel(tReward,nItemId,nUserId)
	local nEvent = tReward["EventType"]
	local nType = tReward["DataType"]
	
	if nEvent == nil or nType == nil then
		return true
	end
	
	local nTotalData = tReward["RewardTotalData"]
	
	if nTotalData == nil then
		return true
	end
	
	
	local nDelay = tReward["RewardDelay"]
	local nTimeType = tReward["RewardTimeType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	-- 对掩码值进行分解，取出总的次数跟今天的次数
	local nNowSingleData = nData%10000
	local nNowTotalData = (nData - nNowSingleData)/10000

	return nNowTotalData + 1 >= nTotalData
end

-- 设置掩码值
function ItemMouldJudge_SetStc(tReward,nItemId,nUserId)
	local nEvent = tReward["EventType"]
	local nType = tReward["DataType"]
	
	if nEvent == nil or nType == nil then
		return true
	end

	local nDelay = tReward["RewardDelay"]
	local nTimeType = tReward["RewardTimeType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	-- 对掩码值进行分解，取出总的次数跟今天的次数
	local nNowSingleData = nData%10000
	local nNowTotalData = (nData - nNowSingleData)/10000
	
	nNowSingleData = nNowSingleData + 1
	nNowTotalData = nNowTotalData + 1
	nData = nNowTotalData*10000 + nNowSingleData
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	return true
end

-- 获得奖励
function ItemMouldJudge_RewardSimple(tReward,nItemId,nUserId)
	if tReward["Reward"] == nil then
		return
	end
	
	-- 给奖励
	local sRewardStr = RewardTemplate_Reward(tReward["Reward"],nUserId)
	
	if tReward["EmoneyLog"] ~= nil then
		Sys_SaveEmoneyBuy(tReward["EmoneyLog"])
	end
end

-- 提示
function ItemMouldJudge_Msg(tReward,sMsgType,nUserId)
	if tReward["Msg"] == nil then
		return
	end
	
	local sMsg = tReward["Msg"][sMsgType]
	
	if sMsg == nil then
		return
	end
	
	local nMsgType = tReward["MsgType"] or tItemMouldJudge_DefaultConfig["MsgType"]
	
	if nMsgType == 1 then
		User_TalkChannel2005(sMsg,nUserId)
	elseif nMsgType == 2 then
		Sys_MsgBox(sMsg,sFunc,sFailFunc,nUserId)
	end
end