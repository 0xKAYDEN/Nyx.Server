------------------------------------------------------------------------------------
--Name：      190131[简体征服][活动脚本]灵珠物品
--Creator:    吴燕柚
--Created:    190131
------------------------------------------------------------------------------------
--任务需求：

--命名： DragonSoulItem_

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------

local tDragonSoulItem_Data = {}
	tDragonSoulItem_Data["TaskId"] = 35034
	tDragonSoulItem_Data["TaskOtherId"] = 35056
	tDragonSoulItem_Data["Serial"] = 10002
	tDragonSoulItem_Data["ItemMin"] = 4200001
	tDragonSoulItem_Data["ItemMiddle"] = 4200012--12阶及以下可重铸
	tDragonSoulItem_Data["ItemSpecial"] = 4200013--13阶在新服可重铸
	tDragonSoulItem_Data["ItemRecast"] = 4200010
	tDragonSoulItem_Data["ItemMax"] = 4200019
	tDragonSoulItem_Data["ItemCan"] = 4200003
	tDragonSoulItem_Data["StoveId"] = 23735--炉子ID
	tDragonSoulItem_Data["SellTime"] = 1 --寄售时间
	tDragonSoulItem_Data["SellAct"] = 220 --寄售动作
	
	tDragonSoulItem_Data["ItemFace"] = {}
	tDragonSoulItem_Data["ItemFace"][4200001]   = 1975
	tDragonSoulItem_Data["ItemFace"][4200002]   = 1976
	tDragonSoulItem_Data["ItemFace"][4200003]   = 1977
	tDragonSoulItem_Data["ItemFace"][4200004]   = 1979
	tDragonSoulItem_Data["ItemFace"][4200005]   = 1978
	tDragonSoulItem_Data["ItemFace"][4200006]   = 1980
	tDragonSoulItem_Data["ItemFace"][4200007]   = 1981
	tDragonSoulItem_Data["ItemFace"][4200008]   = 1982
	tDragonSoulItem_Data["ItemFace"][4200009]   = 1984
	tDragonSoulItem_Data["ItemFace"][4200010]   = 1983
	tDragonSoulItem_Data["ItemFace"][4200011]   = 1985
	tDragonSoulItem_Data["ItemFace"][4200012]   = 1986
	tDragonSoulItem_Data["ItemFace"][4200013]   = 1987
	tDragonSoulItem_Data["ItemFace"][4200014]   = 1989
	tDragonSoulItem_Data["ItemFace"][4200015]   = 1988
	tDragonSoulItem_Data["ItemFace"][4200016]   = 1990
	tDragonSoulItem_Data["ItemFace"][4200017]   = 1991
	tDragonSoulItem_Data["ItemFace"][4200018]   = 1992
	tDragonSoulItem_Data["ItemFace"][4200019]   = 1993

	tDragonSoulItem_Data["Web"] = {}
	--前往官网查看完整概率详情
	tDragonSoulItem_Data["Web"][1] = "https://co.99.com/guide/event/anima_introduction.shtml"
	--观看灵珠玩法攻略视频
	tDragonSoulItem_Data["Web"][2] = "https://co.99.com/guide/event/2019/anima/"
	--前往灵珠商店兑换实物奖励
	tDragonSoulItem_Data["Web"][3] = "https://coevent.99.com/animaexchangeshop/"

local tDragonSoulItem_Price = {}
	tDragonSoulItem_Price[4200001] = 5
	tDragonSoulItem_Price[4200002] = 10
	tDragonSoulItem_Price[4200003] = 20
	tDragonSoulItem_Price[4200004] = 40
	tDragonSoulItem_Price[4200005] = 80
	tDragonSoulItem_Price[4200006] = 160
	tDragonSoulItem_Price[4200007] = 320
	tDragonSoulItem_Price[4200008] = 640
	tDragonSoulItem_Price[4200009] = 1280
	tDragonSoulItem_Price[4200010] = 2560
	tDragonSoulItem_Price[4200011] = 5120
	tDragonSoulItem_Price[4200012] = 10240
	tDragonSoulItem_Price[4200013] = 20480
	tDragonSoulItem_Price[4200014] = 40960
	tDragonSoulItem_Price[4200015] = 81920
	tDragonSoulItem_Price[4200016] = 163840
	tDragonSoulItem_Price[4200017] = 327680
	tDragonSoulItem_Price[4200018] = 655360
	tDragonSoulItem_Price[4200019] = 1380000

	

local tDragonSoulItem_Log = {}
	tDragonSoulItem_Log["Sold"] = "10000	0141"--卖灵珠物品
	tDragonSoulItem_Log["Delete"] = "0,0,%d,%d,12001285,0,2,%d"--删除灵珠物品

----------------------------------逻辑部分---------------------------------------------

function DragonSoulItem_FindPath(nItemId)
	local nUserId = Get_UserId()
	local nNpcId = tDragonSoulItem_Data["StoveId"]
	local nNpcMapId = Get_NpcMapID(nNpcId)
	local nNpcPosX = Get_NpcPositionX(nNpcId)
	local nNpcPosY = Get_NpcPositionY(nNpcId)
	local nUserMapId = Get_UserMapId(nUserId)

	--激情服
	if (nNpcMapId ~= nUserMapId) and (nUserMapId == 10364) then
		User_UserRandBoundTrans(nNpcMapId, nNpcPosX, nNpcPosY, 5, 5, 1, nUserId)
	end
	
	NpcPosition_PathFind(nNpcId)

end

--读条
function DragonSoulItem_WaitSold(nItemId)
	local nUserId = Get_UserId()
	
	User_OpenDialog(574,0,nUserId)
	-- User_SetExplore(tDragonSoulItem_Data["SellTime"], tDragonSoulItem_Text["Talk"]["Selling"], tDragonSoulItem_Data["SellAct"], "DragonSoulItem_SoldSelf</N>" .. nItemId .. "</N>" .. nUserId)
	
end



--售出
function DragonSoulItem_SoldSelf(nItemId,nItemNum, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	--二级密码验证
	if not Sys_IsOpenSecondPWD() then
		Sys_MsgBox(tDragonSoulItem_Text["Talk"]["PasswordTip"],nil,nil,nUserId)
		return
	end
	
	local nUserEMoney = Get_UserEMoney(nUserId)
	--可获得天石
	local nAddEMoney = tDragonSoulItem_Price[nItemId]*nItemNum
	
	if ((nUserEMoney+nAddEMoney)>G_User_MaxEmoney) then
		Sys_MsgBox(tDragonSoulItem_Text["Talk"]["EMoneyMax"], "NULL", "NULL", nUserId)
		return
	end
	
	--判断是否跨服
	if User_IsCross(nUserId) then
		local nDragonSoulItem_TaskId = tDragonSoulItem_Data["TaskId"]
		local nDragonSoulItem_ServerId = Get_UserServerId(nUserId)
		local nDragonSoulItem_BenUserId = nUserId
		
		if Task_ChkTaskDetail(nDragonSoulItem_TaskId,nUserId) then
			nDragonSoulItem_BenUserId = Get_TaskDetailData2(nDragonSoulItem_TaskId,nUserId)
		elseif Task_ChkTaskDetail(tDragonSoulItem_Data["TaskOtherId"],nUserId) then
			nDragonSoulItem_BenUserId = Get_TaskDetailData1(tDragonSoulItem_Data["TaskOtherId"],nUserId)
		end
		
		--跨服异步删除物品
		Item_DelAsynOSItem(nItemId,0,nItemNum,tDragonSoulItem_Data["Serial"],357,nDragonSoulItem_BenUserId,nDragonSoulItem_ServerId)
		
		return
	end
	
	if Item_ChkMulItem(nItemId,nItemId,nItemNum,1,0,nUserId) and Item_DelMulItem(nItemId,nItemId,nItemNum,1,0,nUserId) then
		-- 贵重物品记录
		Sys_DecNosuchStatisticCount(357,nItemId,nItemNum)
		--记录删除log
		local sDeleteLog = string.format(tDragonSoulItem_Log["Delete"], nItemId,nItemNum, nAddEMoney)
		Sys_SaveActionRewardLog(sDeleteLog, nUserId)
		
		local sEmoneyBuyLog = tDragonSoulItem_Log["Sold"]
		
		if User_AddEMoney_ByDragonSoul(nAddEMoney,nUserId,sEmoneyBuyLog) then
			local sItemName = Get_ItemtypeName(nItemId)
			local sTalk = string.format(tDragonSoulItem_Text["Talk"]["Sold"], sItemName, nAddEMoney)
			Sys_MsgBox(sTalk, "NULL", "NULL", nUserId)
			-- 十八变
			for i=1,nItemNum do
				EighteenChanges_Exchange(nItemId,nUserId)
			end
		end
	else
		Sys_MsgBox(tDragonSoulItem_Text["Talk"]["NoItem"], "NULL", "NULL", nUserId)
	end
	
end

--灵珠选项判断
function DragonSoulItem_ItemChk(nItemId)
	if User_IsCross() then
		return
	end
	
	local nItemName = Get_ItemtypeName(nItemId)
	
	tItem[nItemId]["Option212"] = string.format(tDragonSoulItem_Text[nItemId]["Option212"],nItemName)
	tItem[nItemId]["Option213"] = string.format(tDragonSoulItem_Text[nItemId]["Option213"],nItemName)
	tItem[nItemId]["Option214"] = string.format(tDragonSoulItem_Text[nItemId]["Option214"],nItemName)
	
	if nItemId < tDragonSoulItem_Data["ItemCan"] then
		tItem[nItemId]["tOption2-1"] = {211,213}
	elseif nItemId > tDragonSoulItem_Data["ItemMiddle"] then
		tItem[nItemId]["tOption2-1"] = {211}
	elseif nItemId > tDragonSoulItem_Data["ItemRecast"] then
		tItem[nItemId]["tOption2-1"] = {211,213,214}
	else
		tItem[nItemId]["tOption2-1"] = {211,212,213,214}
	end
	
	-- if nItemId >= tDragonSoulItem_Data["ItemMiddle"] and nItemId < tDragonSoulItem_Data["ItemMax"] then
		-- table.insert(tItem[nItemId]["tOption2-1"],1, 215)
	-- end
	
	LinkItemGossipFunc_New(nItemId, "2-1")
end

--重铸灵珠
function DragonSoulItem_GotoRecast(nItemId)
	local nSoulId = DragonSoulNpc_GetStcValue(1)
	
	local nIndex = nItemId % 100
	
	--背包中没有相应灵珠且没有未取出的灵珠
	if not Item_ChkItem(nItemId) and nSoulId <= 0 then
		tItem[nItemId]["Text311"] = string.format(tDragonSoulItem_Text[nItemId]["Text311"],1, nIndex)
		LinkItemGossipFunc_New(nItemId, "3-1")
		return
	end
	
	local nSoulIndex = DragonSoulNpc_GetStcValue(3)
	
	--还有灵珠未取出
	if nSoulId > 0 then
		Sys_MsgBox(string.format(tDragonSoulNpc_Text["105"]["NotGetBack"], nSoulIndex))
		return
	end
	
	DragonSoulNpc_IntoInstance(nIndex)
end

--融合灵珠
function DragonSoulItem_GotoKillDragon(nItemId)
	local nIndex = nItemId % 100
	
	--背包中没有相应灵珠
	if not Item_ChkMulItem(nItemId,nItemId,2) then
		tItem[nItemId]["Text311"] = string.format(tDragonSoulItem_Text[nItemId]["Text311"],2, nIndex)
		LinkItemGossipFunc_New(nItemId, "3-1")
		return
	end
	
	--进入融魂副本
	DragonSoulConnectNpc_IntoInstance(nIndex)
end


--出售灵珠
function DragonSoulItem_Exchange(nItemId)
	local nEmoney = tDragonSoulItem_Price[nItemId]
	
	tItem[nItemId]["Text225"] = string.format(tDragonSoulItem_Text[nItemId]["Text225"], nEmoney)
	
	LinkItemGossipFunc_New(nItemId, "2-2")
end

--网页链接
function DragonSoulItem_OpenWeb(nIndex)
	User_SendWebPage(tDragonSoulItem_Data["Web"][nIndex])
end

--跨服删除物品
function DragonSoulItem_CrossDelItem(nServerId,nUserId,nItemId,nMonopoly,nNum,nSerial,nRet)
	--不成功
	if nRet ~= 1 then
		return
	end
	
	--功能编号不匹配
	if nSerial ~= tDragonSoulItem_Data["Serial"] then
		return
	end
	
	local sDragonSoulItem_EmoneyBuyLog = tDragonSoulItem_Log["Sold"]
	local nDragonSoulItem_AddEMoney = tDragonSoulItem_Price[nItemId] * nNum
	
	--获取跨服userid
	local nDragonSoulItem_CrossUserId = GetOSIDByGSUser(nServerId,nUserId)
	
	--跨服获得天石
	if User_AwardAsynOSEMoney(nServerId,nDragonSoulItem_AddEMoney,nUserId) then
		local sDragonSoulItem_ItemName = Get_ItemtypeName(nItemId)
		local sTalk = string.format(tDragonSoulItem_Text["Talk"]["Sold"], sDragonSoulItem_ItemName, nDragonSoulItem_AddEMoney)
		
		Sys_GetEMoneyBuyLog("EMoney", nDragonSoulItem_AddEMoney, sDragonSoulItem_EmoneyBuyLog, nDragonSoulItem_CrossUserId)
		Sys_MsgBox(sTalk, nil, nil, nDragonSoulItem_CrossUserId)
		-- 十八变
		EighteenChanges_Exchange(nItemId,nUserId)
	end
end
---------------------------------物品部分---------------------------------------------


--1阶-18阶 4200001-4200019 可出售 1-10阶可找炉子
--------物品有对白模板
-- for i = tDragonSoulItem_Data["ItemMin"], tDragonSoulItem_Data["ItemMax"] do
	-- tItemFace[i] = tDragonSoulItem_Data["ItemFace"][i]
	-- tItem[i] = tItem[i] or {}
	-- tItem[i]["DialogueText"] = tDragonSoulItem_Text[i]
	-- --1-1 主对白
	-- tItem[i]["Text1-1"] = {111, 112, 113, 114, 115}
	-- tItem[i]["tOption1-1"] = {111, 112}
	-- -- tItem[i]["OptionPoint111"] = "1-2"--接寄售二次确认 1-2
	-- tItem[i]["OptionFunc111"] = "DragonSoulItem_WaitSold</N>" .. i
	-- tItem[i]["OptionFunc112"] = "DragonSoulItem_FindPath</N>" .. i--找炉子
	-- tItem[i]["ChkFunc1-1"] = function()
		-- if (i <= tDragonSoulItem_Data["ItemMiddle"]) then
			-- tItem[i]["tOption1-1"] = {111, 112}
			-- tItem[i]["Text113"] = tDragonSoulItem_Text[i]["Text113"]
			-- tItem[i]["Text1-1"] = {111, 112, 113, 114, 115}
		-- elseif ((SpecialServer_ChkNoGiftServer()) and (i == tDragonSoulItem_Data["ItemSpecial"])) then
			-- tItem[i]["tOption1-1"] = {111, 112}
			-- tItem[i]["Text113"] = tDragonSoulItem_Text[i]["Text113"]
			-- tItem[i]["Text1-1"] = {111, 112, 113, 115}
		-- else
			-- tItem[i]["tOption1-1"] = {111}
			-- tItem[i]["Text113"] = tDragonSoulItem_Text[i]["Text116"]
			-- tItem[i]["Text1-1"] = {111, 112, 113, 115}
		-- end
		
		-- -- local sItemName = Get_ItemtypeName(i)
		-- -- tItem[i]["Text111"] = string.format(tDragonSoulItem_Text[i]["Text111"], sItemName)
		-- return true
	-- end
	-- --1-2 寄售二次确认
	-- tItem[i]["Text1-2"] = {121}
	-- tItem[i]["tOption1-2"] = {121, 122}
	-- tItem[i]["OptionFunc121"] = "DragonSoulItem_WaitSold</N>" .. i--出售
	-- tItem[i]["OptionPoint122"] = "1-1" --返回主对白
	-- tItem[i]["ChkFunc1-2"] = function()
		-- local nAddEMoney = tDragonSoulItem_Price[i]
		-- tItem[i]["Text121"] = string.format(tDragonSoulItem_Text[i]["Text121"], nAddEMoney)
		-- return true
	-- end
-- end

for i = tDragonSoulItem_Data["ItemMin"], tDragonSoulItem_Data["ItemMax"] do
	tItemFace[i] = tDragonSoulItem_Data["ItemFace"][i]
	tItem[i] = tItem[i] or {}
	tItem[i]["DialogueText"] = tDragonSoulItem_Text[i]
	
	tItem[i]["Text1-1"] = {111, 112, 113}
	tItem[i]["tOption1-1"] = {111, 112,113,114,115,116}
	tItem[i]["ChkFunc1-1"] = function()
		if i >= 4200012 and i <= 4200019 then
			tItem[i]["tOption1-1"] = {111, 115,112,113,116,114}
		else
			tItem[i]["tOption1-1"] = {111, 115,112,113,114}
		end
		
		return true
	end
	
	tItem[i]["OptionFunc111"] = string.format("DragonSoulItem_ItemChk</N>%d", i)
	tItem[i]["OptionFunc112"] = "DragonSoulItem_OpenWeb</N>1"
	tItem[i]["OptionFunc113"] = "DragonSoulItem_OpenWeb</N>2"
	tItem[i]["OptionFunc115"] = string.format("DragonSoulItem_Exchange</N>%d", i)
	tItem[i]["OptionFunc116"] = "DragonSoulItem_OpenWeb</N>3"
	tItem[i]["OptionChkFunc111"] = function ()
		return not User_IsCross()
	end

	tItem[i]["Text2-1"] = {211,212,213}
	tItem[i]["tOption2-1"] = {211, 212,213,214,215}
	tItem[i]["OptionFunc211"] = "User_OpenDialog</N>930"
	tItem[i]["OptionFunc212"] = string.format("DragonSoulItem_GotoRecast</N>%d", i)
	tItem[i]["OptionFunc213"] = string.format("DragonSoulItem_GotoKillDragon</N>%d", i)
	tItem[i]["OptionFunc214"] = "DoubleStove_Trans"
	tItem[i]["OptionFunc215"] = "User_OpenDialog</N>574"
	
	tItem[i]["Text2-2"] = {221,222,223,224,225,226,227}
	tItem[i]["tOption2-2"] = {221,223,222}
	tItem[i]["OptionFunc221"] = string.format("DragonSoulItem_SoldSelf</N>%d</N>1", i)
	tItem[i]["OptionPoint222"] = "1"
	tItem[i]["OptionFunc223"] = string.format("DragonSoulItem_SoldSelf</N>%d</N>10", i)

	tItem[i]["Text3-1"] = {311}
	tItem[i]["tOption3-1"] = {311}
end

---------------------------------跨服删除物品---------------------------------------------
tDelAsynOSItemRet["tFunction"] = tDelAsynOSItemRet["tFunction"] or {}
table.insert(tDelAsynOSItemRet["tFunction"],DragonSoulItem_CrossDelItem)
