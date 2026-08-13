----------------------------------------------------------------------------
--Name:		[征服][模板逻辑]基础模板之碎片物品模块.lua
--Purpose:	基础模板之碎片物品模块
--Creator: 	郑鋆
--Created:	2015/01/21
----------------------------------------------------------------------------

-- 命名前缀
-- DebrisItem_

local nDebrisItem_ChanceSum = 100000

-- 物品使用赌翻倍
function DebrisItem_DoubleBet(nItemId)
	local sActiveTime = tCommonItem_Item[nItemId]["ActiveTime"]
	local nUserId = Get_UserId()
	-- 判断活动时间
	if sActiveTime ~= nil and (not Sys_ChkFullTime(sActiveTime)) then
		DebrisItem_ActivityExpired(nItemId,nUserId)
		return
	end
	
	local nMonopoly = tCommonItem_Item[nItemId]["Monopoly"] or 0
	
	-- 判断物品是否存在
	if not Item_ChkItem(nItemId,nMonopoly,0,nUserId) then
		User_TalkChannel2005(tCommonItem_Text[nItemId]["DebrisText"]["NoBetItem"],nUserId)
		return
	end
	
	-- 判断背包空间
	local nGamblItemId = tCommonItem_Item[nItemId]["GamblItemId"]
	local sGamblItemAttr = tCommonItem_Item[nItemId]["GamblItemAttr"]
	local nSpace = Item_GetSpace(nItemId,1,nGamblItemId,nil,sGamblItemAttr)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		User_TalkChannel2005(tCommonItem_Text[nItemId]["DebrisText"]["NoSpace"],nUserId)
		return
	end
	
	-- 删除物品是否成功
	if not Item_DelItem(nItemId,nMonopoly,0,nUserId) then
		return
	end
	
	-- 判断是否成功
	local nChanceSum = tCommonItem_Item[nItemId]["GamblChanceSum"] or nDebrisItem_ChanceSum
	local nChance = tCommonItem_Item[nItemId]["GamblChance"]
	
	if Sys_Random(nChance,nChanceSum) then
		DebrisItem_SharedPart(nItemId,"GamblItemId","GamblItemAttr","GamblSuccessLog","GamblEffect","GamblIndex",nUserId)
	else
		-- 打log
		if tCommonItem_Item[nItemId]["GamblFailLog"] ~= nil then
			Sys_SaveActionFestivalLog(tCommonItem_Item[nItemId]["GamblFailLog"])
		end
		
		-- 播光效
		if tCommonItem_Item[nItemId]["GamblFailEffect"] ~= nil then
			User_EffectAdd("self",tCommonItem_Item[nItemId]["GamblFailEffect"],nUserId)
		end
		
		-- 出提示
		if tCommonItem_Item[nItemId]["GamblFailIndex"] ~= nil then
			LinkItemGossipFunc_New(nItemId,tCommonItem_Item[nItemId]["GamblFailIndex"])
		end
	end
end

-- 物品使用合成
function DebrisItem_Synthesis(nItemId)
	local sActiveTime = tCommonItem_Item[nItemId]["ActiveTime"]
	local nUserId = Get_UserId()
	-- 判断活动时间
	if sActiveTime ~= nil and (not Sys_ChkFullTime(sActiveTime)) then
		DebrisItem_ActivityExpired(nItemId,nUserId)
		return
	end
	
	local nMonopoly = tCommonItem_Item[nItemId]["Monopoly"] or 0
	local nItemNum = tCommonItem_Item[nItemId]["DebrisItemNum"] or 1
	
	-- 判断物品是否存在
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly,0,nUserId) then
		User_TalkChannel2005(tCommonItem_Text[nItemId]["DebrisText"]["NoItem"],nUserId)
		return
	end
	
	-- 判断背包空间
	local nGamblItemId = tCommonItem_Item[nItemId]["DebrisItemId"]
	local sGamblItemAttr = tCommonItem_Item[nItemId]["DebrisItemAttr"]
	local nSpace = Item_GetSpace(nItemId,nItemNum,nGamblItemId,nil,sGamblItemAttr)

	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		User_TalkChannel2005(tCommonItem_Text[nItemId]["DebrisText"]["NoSpace"],nUserId)
		return
	end
	
	-- 删除物品是否成功
	if not Item_DelMulItem(nItemId,nItemId,nItemNum,nMonopoly,0,nUserId) then
		return
	end

	DebrisItem_SharedPart(nItemId,"DebrisItemId","DebrisItemAttr","DebrisLog","DebrisEffect","DebrisIndex",nUserId)
end

-- 共用的部分
function DebrisItem_SharedPart(nItemId,sItemIndex,sAttrIndex,sLogIndex,sEffect,sIndex,nUserId)
	-- 获得物品
	Item_AddNewItem(tCommonItem_Item[nItemId][sItemIndex],tCommonItem_Item[nItemId][sAttrIndex],nUserId)
	
	-- 打log
	if tCommonItem_Item[nItemId][sLogIndex] ~= nil then
		Sys_SaveActionFestivalLog(tCommonItem_Item[nItemId][sLogIndex])
	end
	
	-- 播光效
	if tCommonItem_Item[nItemId][sEffect] ~= nil then
		User_EffectAdd("self",tCommonItem_Item[nItemId][sEffect],nUserId)
	end
	
	-- 出提示
	if tCommonItem_Item[nItemId][sIndex] ~= nil then
		LinkItemGossipFunc_New(nItemId,tCommonItem_Item[nItemId][sIndex])
	end
end

-- 活动过期使用获得其它物品
function DebrisItem_ActivityExpired(nItemId,nUserId)
	local nMonopoly = tCommonItem_Item[nItemId]["Monopoly"] or 0
	
	if Item_ChkItem(nItemId,nMonopoly,0,nUserId) and Item_DelItem(nItemId,nMonopoly,0,nUserId) then
		User_TalkChannel2005(tCommonItem_Text[nItemId]["DebrisText"]["BeOverdue"],nUserId)
	end
end

-- 选项点击前判断是否还有物品
function DebrisItem_ClickOption(nItemId)
	local nMonopoly = tCommonItem_Item[nItemId]["Monopoly"] or 0
	
	if not Item_ChkItem(nItemId,nMonopoly) then
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 加载对白配置
function DebrisItem_LoadDialogConfig()
	for nItemId,v in pairs (tCommonItem_Text) do
		-- 判断是否有配碎片对白
		if v["DebrisText"] ~= nil then
			DebrisItem_LoadDialog(nItemId,v["DebrisText"])
		end
	end
end

function DebrisItem_LoadDialog(nItemId,v)
	tItem[nItemId] = tItem[nItemId] or {}
	
	local nOptionNum = 1
	
	for m,n in pairs (v["TextTable"]) do
		-- 对白显示
		tItem[nItemId]["Text" .. n] = v["Text" .. n]
		for a,b in pairs (v["Text" .. n]) do
			tItem[nItemId]["Text" .. b] = v["Text" .. b]
		end
		
		-- 选项显示
		local tOption = {}
		
		for a,b in pairs(v["tOption" .. n]) do
			if type(b) == "string" then
				tItem[nItemId]["Option" .. nOptionNum] = v[b]
				
				if b == "Bet" then
					tItem[nItemId]["OptionFunc" .. nOptionNum] = string.format("DebrisItem_DoubleBet</N>%d",nItemId)
				else
					tItem[nItemId]["OptionFunc" .. nOptionNum] = string.format("DebrisItem_Synthesis</N>%d",nItemId)
				end
			else
				tItem[nItemId]["Option" .. nOptionNum] = v["Option" .. b]
				tItem[nItemId]["OptionFunc" .. nOptionNum] = string.format("DebrisItem_ClickOption</N>%d",nItemId)
			end

			table.insert(tOption,nOptionNum)
			nOptionNum = nOptionNum + 1
		end
		
		tItem[nItemId]["tOption" .. n] = tOption
	end
end

-- 服务器启动加载
table.insert(tServerStart["tFunction"],DebrisItem_LoadDialogConfig)