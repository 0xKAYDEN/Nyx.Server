----------------------------------------------------------------------------
--Name:		[征服][模板逻辑]获得奖励前置要求.lua
--Purpose:	获得奖励需要判断的前置条件
--Creator: 	郑鋆
--Created:	2017/03/07
----------------------------------------------------------------------------

-- 命名前缀
-- TermsOfUse_

-- ActiveTime			活动时间
-- IsRandom				是否随机奖励
-- Index				随机奖励的索引
-- NeedDialog			提示是否是101对白提示
-- NeedDialogType		NPC或者物品101对白提示（默认NPC101对白）
-- NeedMsgBox			提示是否是105弹框提示

-- 存放玩家是否自创武功的记录
local tTermsOfUse_GongFu = {}
-- 存放玩家传进来的奖励表
local tTermsOfUse_Reward = {}
-- 存放玩家传进来的物品ID或者NPCID
local tTermsOfUse_Object = {}

-------------------------------------------------------逻辑部分----------------------------------------------------------
-- 活动时间判断
function TermsOfUse_ChkTime(tReward,nUserId)
	if tReward["ActiveTime"] == nil then
		return true
	end
	
	if not Sys_ChkFullTime(tReward["ActiveTime"]) then
		return false
	end
	
	return true
end

-- 掩码判断
function TermsOfUse_ChkStc(tReward,nUserId)
	if tReward["EventType"] == nil or tReward["DataType"] == nil then
		return true
	end
	
	return RewardTemplate_JudgmentStc(tReward,nUserId)
end

-- 性别
function TermsOfUse_ChkSex(nSex,nUserId)
	local nUserSex = Get_UserSex(nUserId)

	return nUserSex == nSex
end

-- 职业判断
function TermsOfUse_ChkPro(tPro,nUserId)
	local nUserPro = Get_UserProfession(nUserId)
	
	for i,v in pairs(tPro) do
		if nUserPro >= v[1] and nUserPro <= v[2] then
			return true
		end
	end
	
	return false
end

-- 天石上限
function TermsOfUse_ChkEmoney(tEMoney,nUserId)
	local nEmoney = Get_UserEMoney(nUserId)
	local nAddEmoney = tEMoney["Value"]
	
	if nEmoney + nAddEmoney > G_User_MaxEmoney then
		TermsOfUse_Msg(tEMoney,"EMoney",nUserId)
		return false
	end
	
	return true
end

-- 赠点天石上限
function TermsOfUse_ChkEmoneyMono(tEMoneyMono,nUserId)
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = tEMoneyMono["Value"]
	
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		TermsOfUse_Msg(tEMoneyMono,"EMoneyMono",nUserId)
		return false
	end
	
	return true
end

-- 金币上限
function TermsOfUse_ChkMoney(tMoney,nUserId)
	local nBagMoneyNum = tMoney["Value"]
	
	if not User_CanPutMoney2Bag(nBagMoneyNum,nUserId) then
		TermsOfUse_Msg(tMoney,"Money",nUserId)
		return false
	end
	
	return true
end

-- 判断玩家是否自创武功
function TermsOfUse_ChkGongFu(tTable,nUserId)
	if tTermsOfUse_GongFu[nUserId] == nil then
		tTermsOfUse_GongFu[nUserId] = User_IsAlreadyCreateGongFu(nUserId)
	end
	
	if not tTermsOfUse_GongFu[nUserId] then
		TermsOfUse_Msg(tTable,"GongFu",nUserId)
		return false
	end
	
	return true
end

-- 真气上限
function TermsOfUse_ChkZhenQi(tZhenQi,nUserId)
	if not TermsOfUse_ChkGongFu(tZhenQi,nUserId) then
		return false
	end
	
	local nZhenQi = Get_UserGongFuQiLev(nUserId)
	local nAddZhenQi = tZhenQi["Value"]
	
	if nZhenQi + nAddZhenQi > G_User_MaxZhenQi then
		TermsOfUse_Msg(tZhenQi,"ZhenQi",nUserId)
		return false
	end
	
	return true
end

-- 免费修炼次数上限
function TermsOfUse_ChkFreePractNum(tFreePractNum,nUserId)
	if not TermsOfUse_ChkGongFu(tFreePractNum,nUserId) then
		return false
	end
	
	local nFreePractNum = Get_UserGongFureePractNum(nUserId)
	local nAddFreePractNum = tFreePractNum["Value"]*10000
	
	if nFreePractNum + nAddFreePractNum > G_User_FreePractice then
		TermsOfUse_Msg(tFreePractNum,"FreePract",nUserId)
		return false
	end
	
	return true
end

-- 修为值达上限
function TermsOfUse_ChkRepairValue(tRepairValue,nUserId)
	local nRepairValue = Get_UserCultureValue(nUserId)
	local nAddRepairValue = tRepairValue["Value"]
	
	if nRepairValue + nAddRepairValue > G_User_RepairValue then
		TermsOfUse_Msg(tRepairValue,"RepairValue",nUserId)
		return false
	end
	
	return true
end

-- 花费银两判断
function TermsOfUse_ChkCostMoney(tCostMoney,nUserId)
	local nBagMoneyNum = tCostMoney["Value"]
	
	if not User_CanPutMoney2Bag(-nBagMoneyNum,nUserId) then
		TermsOfUse_Msg(tCostMoney,"CostMoney",nUserId)
		return false
	end
	
	return true
end

-- 花费天石
function TermsOfUse_ChkCostEMoney(tCostEmoney,nUserId)
	local nCostEmoney = tCostEmoney["Value"]
	local nUserEmoney = Get_UserEMoney(nUserId)
	
	if nUserEmoney < nCostEmoney then
		TermsOfUse_Msg(tCostEmoney,"CostEMoney",nUserId)
		return false
	end
	
	return true
end

-- 花费赠点天石
function TermsOfUse_ChkCostEMoneyMono(tCostEmoneyMono,nUserId)
	local nCostEmoneyMono = tCostEmoneyMono["Value"]
	local nUserEmoneyMono = Get_UserMonoEMoney(nUserId)

	if nUserEmoneyMono < nCostEmoneyMono then
		TermsOfUse_Msg(tCostEmoneyMono,"CostEMoneyMono",nUserId)
		return false
	end
	
	return true
end

-- 黄金联赛积分上限
function TermsOfUse_ChkGoldenLeague(tGoldenLeague,nUserId)
	local nGoldenLeague = Get_UserLeaguePoint(nUserId)
	local nAddGoldenLeague = tGoldenLeague["Value"]
	
	if nGoldenLeague + nAddGoldenLeague > G_User_GoldenLeague then
		TermsOfUse_Msg(tGoldenLeague,"GoldenLeague",nUserId)
		return false
	end
	
	return true
end

-- 获取玩家当前属性点
function TermsOfUse_GetAttrPoint(nUserId)
	local nStrength = Get_UserStrength(nUserId)
	local nSpeed = Get_UserSpeed(nUserId)
	local nHealth = Get_UserHealth(nUserId)
	local nSoul = Get_UserSoul(nUserId)
	local nPoint = Get_UserAddPoint(nUserId)
	
	return nStrength + nSpeed + nHealth + nSoul + nPoint
end

-- 属性点上限
function TermsOfUse_ChkAttrPoint(tAttrPoint,nUserId)
	local nAddAttrPoint = tAttrPoint["Value"]
	local nNowAttrPoint = TermsOfUse_GetAttrPoint(nUserId)
	
	if nAddAttrPoint + nNowAttrPoint > G_User_AttrPoint then
		TermsOfUse_Msg(tAttrPoint,"MaxPoint",nUserId)
		return false
	end
	
	return true
end

-- 背包空间判断
function TermsOfUse_ChkSpace(tReward,nUserId)
	local bIsRandom = tReward["IsRandom"]
	
	-- 判断是随机奖励还是固定奖励
	if bIsRandom then
		local nIndex = tReward["Index"]
		
		if nIndex == nil then
			return false
		end
		
		local bJudge,nSpace = RewardTemplate_ChkRandomSpace(tReward,nIndex,nUserId)
		
		if not bJudge then
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace),nUserId)
		end
		
		return bJudge
	else
		return RewardTemplate_CheckSpace(tReward,nUserId)
	end
end

-- 提示
function TermsOfUse_Msg(tTable,sIndex,nUserId)
	local sCoent = tTable[sIndex]
	if sCoent == nil then
		sCoent = tRewardTemplate_Text[sIndex]
	end 
	
	local tReward = tTermsOfUse_Reward[nUserId]
	
	-- 判断是否显示101对白
	if (tReward["NeedDialog"] ~= nil) or (tTable["NeedDialog"] ~= nil) then
		local sDialogIndex = tTable[sIndex]
		
		if sDialogIndex == nil then
			return
		end
		
		local nObjectId = tTermsOfUse_Object[nUserId]
		-- 判断是NPC还是物品
		if tReward["NeedDialogType"] then
			LinkItemGossipFunc_New(nObjectId,sDialogIndex)
		else
			LinkNpcGossipFunc_New(nObjectId,sDialogIndex)
		end
	-- 判断是否显示105弹框
	elseif (tReward["NeedMsgBox"] ~= nil) or (tTable["NeedMsgBox"] ~= nil) then
		Sys_MsgBox(sCoent,nil,nil,nUserId)
	else
		-- 显示玩家系统频道提示
		User_TalkChannel2005(sCoent,nUserId)
	end
end
-------------------------------------------------------------------------------------------------------------------------
local tTermsOfUse_Func = {}
	-- 获得银两
	tTermsOfUse_Func["RewardMoney"] = TermsOfUse_ChkMoney
	-- 赠点天石上限
	tTermsOfUse_Func["RewardEMoneyMono"] = TermsOfUse_ChkEmoneyMono
	-- 天石上限
	tTermsOfUse_Func["RewardEMoney"] = TermsOfUse_ChkEmoney
	-- 真气上限
	tTermsOfUse_Func["RewardZhenQi"] = TermsOfUse_ChkZhenQi
	-- 免费修炼次数上限
	tTermsOfUse_Func["RewardFreePractNum"] = TermsOfUse_ChkFreePractNum
	-- 修为值上限
	tTermsOfUse_Func["RewardRepairValue"] = TermsOfUse_ChkRepairValue
	-- 花费银两
	tTermsOfUse_Func["CostMoney"] = TermsOfUse_ChkCostMoney
	-- 花费天石
	tTermsOfUse_Func["CostEMoney"] = TermsOfUse_ChkCostEMoney
	-- 花费赠点天石
	tTermsOfUse_Func["CostEMoneyMono"] = TermsOfUse_ChkCostEMoneyMono
	-- 黄金联赛积分上限
	tTermsOfUse_Func["RewardGoldenLeague"] = TermsOfUse_ChkGoldenLeague
	-- 自由属性点
	tTermsOfUse_Func["RewardAttrPoint"] = TermsOfUse_ChkAttrPoint
	-- 力量属性点
	tTermsOfUse_Func["RewardStrengthAttr"] = TermsOfUse_ChkAttrPoint
	-- 敏捷属性点
	tTermsOfUse_Func["RewardSpeedAttr"] = TermsOfUse_ChkAttrPoint
	-- 体质属性点
	tTermsOfUse_Func["RewardHealthAttr"] = TermsOfUse_ChkAttrPoint
	-- 精神属性点
	tTermsOfUse_Func["RewardSoulAttr"] = TermsOfUse_ChkAttrPoint
	-- 可获得奖励的性别
	tTermsOfUse_Func["UseSex"] = TermsOfUse_ChkSex
	-- 可获得奖励的职业需求
	tTermsOfUse_Func["UsePro"] = TermsOfUse_ChkPro

-------------------------------------------------------逻辑部分----------------------------------------------------------
-- 参数说明：参数1：表示物品ID或者NPCID,参数2表示获得的奖励表，参数3玩家ID
function TermsOfUse_Main(nObjectId,tReward,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	tTermsOfUse_GongFu[nUserId] = nil
	tTermsOfUse_Reward[nUserId] = {}
	tTermsOfUse_Reward[nUserId] = CommonFunc_Copy(tReward)
	tTermsOfUse_Object[nUserId] = nObjectId
	
	-- 活动时间判断
	if not TermsOfUse_ChkTime(tReward,nUserId) then
		return false
	end
	
	-- 掩码判断
	if not TermsOfUse_ChkStc(tReward,nUserId) then
		return false
	end
	
	-- 上限判断
	if not TermsOfUse_UpperLimit(tReward,nUserId) then
		return false
	end
	
	-- 背包空间判断
	if not TermsOfUse_ChkSpace(tReward,nUserId) then
		return false
	end

	return true
end

function TermsOfUse_UpperLimit(tReward,nUserId)
	for i,v in pairs(tReward) do
		local fFunc = tTermsOfUse_Func[i]
		if fFunc ~= nil and type(fFunc) == "function" then
			if not fFunc(v,nUserId) then
				return false
			end
		end
	end
	
	return true
end