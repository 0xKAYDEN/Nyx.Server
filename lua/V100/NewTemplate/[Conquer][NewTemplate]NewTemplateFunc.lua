----------------------------------------------------------------------------
--Name:		[征服][物品模板]新模板的函数.lua
--Purpose:	新模板的函数
--Creator: 	郑鋆
--Created:	2018/03/09
----------------------------------------------------------------------------

-- 命名前缀
-- NewTemplateFunc_


--------------------------------------------------------------------------提示部分----------------------------------------------------------------------------
function NewTemplateFunc_Msg(tInfo,sType,sIndex,nUserId)
	if tInfo == nil or type(tInfo) ~= "table" then
		return
	end
	
	-- 判断是否要外接提示
	if tInfo["MsgFunc"] ~= nil and type(tInfo["MsgFunc"]) == "function" then
		tInfo["MsgFunc"](tInfo,sType,sIndex,nUserId)
		return
	end
	
	-- 判断是否有配提示
	if tInfo["Msg"] == nil or type(tInfo["Msg"]) ~= "table" or tInfo["Msg"][sType] == nil or type(tInfo["Msg"][sType]) ~= "table" then
		User_TalkChannel2005(tRewardTemplate_Text[sType][sIndex],nUserId)
		return
	end

	local fMsgFunc = tInfo["Msg"][sType]["Func"]
	
	if fMsgFunc ~= nil and type(fMsgFunc) == "function" then
		fMsgFunc(tInfo,sType,sIndex,nUserId)
		return
	end
	
	-- 出对白提示（功能暂未制作）
	-- if nObject ~= nil then
		-- NPC对白
		-- LinkNpcGossipFunc_New(nObject,"2-1")
		-- 物品对白
		-- Link_Npc
	-- end
	
	local sContent = tInfo["Msg"][sType][sIndex]
	
	if tInfo["Msg"][sType]["MsgBox"] then
		Sys_MsgBox(sContent,nil,nil,nUserId)
	else
		User_TalkChannel2005(sContent,nUserId)
	end
end

function NewTemplateFunc_NoSpace(tInfo,nSpace,nUserId)
	if tInfo == nil or type(tInfo) ~= "table" then
		return
	end
	
	-- 判断是否要外接提示
	if tInfo["MsgFunc"] ~= nil and type(tInfo["MsgFunc"]) == "function" then
		tInfo["MsgFunc"](tInfo,"Limit","NoSpace",nUserId)
		return
	end
	
	-- 判断是否有配提示
	if tInfo["Msg"] == nil or type(tInfo["Msg"]) ~= "table" or tInfo["Msg"]["Limit"] == nil or type(tInfo["Msg"]["Limit"]) ~= "table" then
		local sContent = string.format(tRewardTemplate_Text["NoSpace"],nSpace)
		User_TalkChannel2005(sContent,nUserId)
		return
	end

	local fMsgFunc = tInfo["Msg"]["Limit"]["Func"]
	
	if fMsgFunc ~= nil and type(fMsgFunc) == "function" then
		fMsgFunc(tInfo,"Limit","NoSpace",nUserId)
		return
	end
	
	local sContent = tInfo["Msg"]["Limit"]["NoSpace"]
	
	if tInfo["Msg"]["Limit"]["MsgBox"] then
		Sys_MsgBox(sContent,nil,nil,nUserId)
	else
		User_TalkChannel2005(sContent,nUserId)
	end
end

--------------------------------------------------------------------------消耗部分的函数-----------------------------------------------------------------------
-- 消耗天石
function NewTemplateFunc_JudgeConsumeEMoney(tEMoney,nUserId)
	local nEMoney = tEMoney["Values"]
	local nUserEMoney = Get_UserEMoney(nUserId)
	return nUserEMoney >= nEMoney
end

-- 消耗赠品天石
function NewTemplateFunc_JudgeConsumeEMoneyMono(tEMoneyMono,nUserId)
	local nEMoneyMono = tEMoneyMono["Values"]
	local nUserEMoneyMono = Get_UserMonoEMoney(nUserId)
	return nUserEMoneyMono >= nEMoneyMono
end

-- 消耗银两
function NewTemplateFunc_JudgeConsumeMoney(tMoney,nUserId)
	local nMoney = tMoney["Values"]
	return User_CanPutMoney2Bag(-nMoney,nUserId)
end

-- 消耗气力
function NewTemplateFunc_JudgeConsumeStrengthValue(tStrengthValue,nUserId)
	local nStrengthValue = tStrengthValue["Values"]
	local nUserStrengthValue = Get_UserStrengthValue(nUserId)
	return nUserStrengthValue >= nStrengthValue
end

-- 消耗修行值
function NewTemplateFunc_JudgeConsumeCultivation(tCultivation,nUserId)
	local nCultivation = tCultivation["Values"]
	local nUserCultivation = Get_UserCultivation(nUserId)
	return nUserCultivation >= nCultivation
end

-- 消耗骑马积分
function NewTemplateFunc_JudgeConsumeRidingPoint(tRidingPoint,nUserId)
	local nRidingPoint = tRidingPoint["Values"]
	local nUserRidingPoint = Get_UserRidingPoints(nUserId)
	return nUserRidingPoint >= nRidingPoint
end

-- 消耗修为值
function NewTemplateFunc_JudgeConsumeRepairValue(tRepairValue,nUserId)
	local nRepairValue = tRepairValue["Values"]
	local nUserRepairValue = Get_UserCultureValue(nUserId)
	return nUserRepairValue >= nRepairValue
end

-- 消耗黄金联赛积分
function NewTemplateFunc_JudgeConsumeGoldenLeague(tGoldenLeague,nUserId)
	local nGoldenLeague = tGoldenLeague["Values"]
	local nUserGoldenLeague = Get_UserLeaguePoint(nUserId)
	return nUserGoldenLeague >= nGoldenLeague
end

-- 消耗物品
function NewTemplateFunc_JudgeConsumeItem(tDelItem,nUserId)
	for i,v in pairs(tDelItem) do
		local nItemId = v["Id"]
		local nMonopoly = v["Monopoly"] or 1
		local nSash = v["Sash"] or 0
		local nItemNum = v["ItemNum"] or 1
		local nSaveTime = v["SaveTime"] or 1
		nSaveTime = RewardTemplate_DelSaveItem(nItemId,nSaveTime)
		
		if not Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly,nSash,nUserId,nSaveTime) then
			return false
		end
	end
	
	return true
end

-- 消耗天石
function NewTemplateFunc_ConsumeEMoney(tEMoney,nUserId)
	local nEMoney = tEMoney["Values"]
	return User_AddEMoney(-nEMoney,nUserId)
end

-- 消耗赠品天石
function NewTemplateFunc_ConsumeEMoneyMono(tEMoneyMono,nUserId)
	local nEMoneyMono = tEMoneyMono["Values"]
	return User_AddEMoneyMono(-nEMoneyMono,nUserId)
end

-- 消耗银两
function NewTemplateFunc_ConsumeMoney(tMoney,nUserId)
	local nMoney = tMoney["Values"]
	return User_AddMoney(-nMoney,nUserId)
end

-- 消耗气力
function NewTemplateFunc_ConsumeStrengthValue(tStrengthValue,nUserId)
	local nStrengthValue = tStrengthValue["Values"]
	return User_AddStrengthValue(-nStrengthValue,nUserId)
end

-- 消耗修行值
function NewTemplateFunc_ConsumeCultivation(tCultivation,nUserId)
	local nCultivation = tCultivation["Values"]
	return User_AddCultivation(-nCultivation,nUserId)
end

-- 消耗骑马积分
function NewTemplateFunc_ConsumeRidingPoint(tRidingPoint,nUserId)
	local nRidingPoint = tRidingPoint["Values"]
	return User_AddRidingPoints(-nRidingPoint,nUserId)
end

-- 消耗修为值
function NewTemplateFunc_ConsumeRepairValue(tRepairValue,nUserId)
	local nRepairValue = tRepairValue["Values"]
	return User_AddCultureValue(-nRepairValue,nUserId)
end

-- 消耗黄金联赛积分
function NewTemplateFunc_ConsumeGoldenLeague(tGoldenLeague,nUserId)
	local nGoldenLeague = tGoldenLeague["Values"]
	return User_AddLeaguePoint(-nGoldenLeague,nUserId)
end

-- 消耗物品
function NewTemplateFunc_ConsumeItem(tDelItem,nUserId)
	for i,v in pairs(tDelItem) do
		local nItemId = v["Id"]
		local nMonopoly = v["Monopoly"] or 1
		local nSash = v["Sash"] or 0
		local nItemNum = v["ItemNum"] or 1
		local nSaveTime = v["SaveTime"] or 1
		nSaveTime = RewardTemplate_DelSaveItem(nItemId,nSaveTime)
		
		if not Item_DelMulItem(nItemId,nItemId,nItemNum,nMonopoly,nSash,nUserId,nSaveTime) then
			return false
		end
	end
	
	return true
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------上限判断------------------------------------------------------------------------------
-- 判断是否又开启自创武功
function NewTemplateFunc_JudegeGongFu(nUserId)
	if User_IsAlreadyCreateGongFu(nUserId) then
		return true
	end
	
	-- 未开启武功的提示
	User_TalkChannel2005(tRewardTemplate_Text["Limit"]["GongFu"],nUserId)
	return false
end

-- 真气上限判断
function NewTemplateFunc_ZhenQiLimit(tZhenQi,nTime,nUserId)
	if not NewTemplateFunc_JudegeGongFu(nUserId) then
		return 1
	end
	
	local nZhenQi = Get_UserGongFuQiLev(nUserId)
	local nRewardTime = nTime or 1
	local nAddZhenQi = tZhenQi["Value"] * nRewardTime
	return nZhenQi + nAddZhenQi <= G_User_MaxZhenQi
end

-- 银两上限判断
function NewTemplateFunc_MoneyLimit(tMoney,nTime,nUserId)
	local nRewardTime = nTime or 1
	local nMoney = tMoney["Value"]*nRewardTime
	return User_CanPutMoney2Bag(nMoney,nUserId)
end

-- 天石上限判断
function NewTemplateFunc_EMoneyLimit(tEMoney,nTime,nUserId)
	local nEmoney = Get_UserEMoney(nUserId)
	local nRewardTime = nTime or 1
	local nAddEmoney = tEMoney["Value"]*nRewardTime
	return nEmoney + nAddEmoney <= G_User_MaxEmoney
end

-- 赠点天石上限
function NewTemplateFunc_EMoneyMonoLimit(tEMoneyMono,nTime,nUserId)
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nRewardTime = nTime or 1
	local nAddEmoney = tEMoneyMono["Value"]*nRewardTime
	return nEmoney + nAddEmoney <= G_User_MaxEmoneyMono
end

-- 免费修炼次数上限
function NewTemplateFunc_FreePractNumLimit(tFreePractNum,nTime,nUserId)
	if not NewTemplateFunc_JudegeGongFu(nUserId) then
		return 1
	end
	
	local nFreePractNum = Get_UserGongFureePractNum(nUserId)
	local nRewardTime = nTime or 1
	local nAddFreePractNum = tFreePractNum["Value"]*10000*nRewardTime
	return nFreePractNum + nAddFreePractNum <= G_User_FreePractice
end

-- 修为值达上限
function NewTemplateFunc_RepairValueLimit(tRepairValue,nTime,nUserId)
	local nRepairValue = Get_UserCultureValue(nUserId)
	local nRewardTime = nTime or 1
	local nAddRepairValue = tRepairValue["Value"]*nRewardTime
	return nRepairValue + nAddRepairValue <= G_User_RepairValue
end

-- 判断属性点是否达到上限
function NewTemplateFunc_AttrLimit(tAttrPoint,nTime,nUserId)
	local nRewardTime = nTime or 1
	local nAddAttrPoint = tAttrPoint["Value"]*nRewardTime
	local nNowAttrPoint = TermsOfUse_GetAttrPoint(nUserId)
	return nAddAttrPoint + nNowAttrPoint <= G_User_AttrPoint
end

-- 随机奖励中必定获得的奖励和
function NewTemplateFunc_GetAbsoluteTable(tTable,tAbsoluteSource)
	for i,v in pairs(tTable) do
		if tAbsoluteSource[i] ~= nil then
			local nValues = v["Value"]
			tAbsoluteSource[i]["Value"] = tAbsoluteSource[i]["Value"] + nValues
		else
			tAbsoluteSource[i] = v
		end
	end
	
	return tAbsoluteSource
end

function NewTemplateFunc_GetAwardTable(tTable,tAward)
	for i,v in pairs(tTable) do
		if tAward[i] ~= nil then
			if v["Value"] > tAward[i]["Value"] then
				tAward[i]["Value"] = v["Value"]
			end
		else
			tAward[i] = v
		end
	end
	
	return tAward
end

-- 替换数量
function NewTemplateFunc_ReplaceNum(sAttr,nItemNum)
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
	
	return sNewAttr
end

-- 背包空间判断
function NewTemplateFunc_ChkRandomSpace(tTable,nIndex,nTime,nUserId)
	local tCopy = {}
	local nRewardTime = nTime or 1
	tCopy[1] = CommonFunc_Copy(tTable[nIndex])
	
	for i,v in pairs(tCopy[1]) do
		if string.find(i,"RewardItem") then
			for m,n in pairs (v) do
				n["Attr"] = NewTemplateFunc_ReplaceNum(n["Attr"],nRewardTime)
			end
		elseif string.find(i,"RewardProItem") then
			for m,n in pairs (v) do
				n["Attr"] = NewTemplateFunc_ReplaceNum(n["Attr"],nRewardTime)
			end
		end
	end
	
	local bFlag,nSpace = RewardTemplate_ChkRandomSpace(tCopy,1,nUserId)
	return bFlag,nSpace
end