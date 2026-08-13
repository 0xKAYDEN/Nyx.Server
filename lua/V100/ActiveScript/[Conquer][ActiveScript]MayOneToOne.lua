------------------------------------------------------------------------------------
--Name：        190523[英文征服][活动脚本]1对1促销礼包 5.30
--Creator:      耿力兀
--Created:     2019-05-24
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：MayOneToOne_
--logid:12001433
--Stc:	197 22	武器外套礼包开启次数
--		197 23	+6赤炼石礼包开启次数
--		197	24	9天石礼盒开启次数
--		197	25	49天石礼盒开启次数
--		197	45	上线给礼包
----------------------------------表配置部分--------------------------------------------
local tMayOneToOne_Data = {}
	--礼包打开次数
	tMayOneToOne_Data["Time"] = {}
	tMayOneToOne_Data["Time"][3312768] = 10
	tMayOneToOne_Data["Time"][3312769] = 3
	tMayOneToOne_Data["Time"][3312770] = 5
	tMayOneToOne_Data["Time"][3312771] = 5
	--花费天石
	tMayOneToOne_Data[3312768] = 200
	tMayOneToOne_Data[3312770] = 9
	tMayOneToOne_Data[3312771] = 49
	tMayOneToOne_Data[3312769] = {}
	tMayOneToOne_Data[3312769][0] = 500
	tMayOneToOne_Data[3312769][1] = 1200 
	tMayOneToOne_Data[3312769][2] = 1500
	tMayOneToOne_Data["ExistDay"] = 2
	tMayOneToOne_Data["ActionId"] = 572613
	

local tMayOneToOne_Stc = {}
	tMayOneToOne_Stc["Event"] = 197
	tMayOneToOne_Stc["Type"] = 45
	tMayOneToOne_Stc[3312768] = {}
	tMayOneToOne_Stc[3312768]["EventType"] = 197
	tMayOneToOne_Stc[3312768]["DataType"] = 22
	
	tMayOneToOne_Stc[3312769] = {}
	tMayOneToOne_Stc[3312769]["EventType"] = 197
	tMayOneToOne_Stc[3312769]["DataType"] = 23
	
	tMayOneToOne_Stc[3312770] = {}
	tMayOneToOne_Stc[3312770]["EventType"] = 197
	tMayOneToOne_Stc[3312770]["DataType"] = 24
	
	tMayOneToOne_Stc[3312771] = {}
	tMayOneToOne_Stc[3312771]["EventType"] = 197
	tMayOneToOne_Stc[3312771]["DataType"] = 25
	
local tMayOneToOne_Log = {}
	tMayOneToOne_Log["TimeOver"] = "0,0,%d,%d,12001433,3,0,0"	 -- 过期删除
	tMayOneToOne_Log["Emoney"] = {}
	tMayOneToOne_Log["Emoney"][3312768] = "10000	0454"
	tMayOneToOne_Log["Emoney"][3312770] = "350	31221"
	tMayOneToOne_Log["Emoney"][3312771] = "350	31222"
	tMayOneToOne_Log["Emoney"][3312769] = {}
	tMayOneToOne_Log["Emoney"][3312769][0] = "350	22248"
	tMayOneToOne_Log["Emoney"][3312769][1] = "350	22249"
	tMayOneToOne_Log["Emoney"][3312769][2] = "350	22250"

local tMayOneToOne_Reward = {}
	-- ===-1 weapon accessory pack（B）
	-- ===索引:tMayOneToOne_Reward[3312768]
	tMayOneToOne_Reward[3312768] = {}
	tMayOneToOne_Reward[3312768]["LogId"] = 12001433
	tMayOneToOne_Reward[3312768]["RewardItem"] = {}
	tMayOneToOne_Reward[3312768]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312768]["RewardItem"][1]["Id"] = 729025 -- 【库】-1WeaponAccessoryPack[属性:9], 【表格】30天可选武器外套
	tMayOneToOne_Reward[3312768]["RewardItem"][1]["Attr"] = "0 1" -- -1WeaponAccessoryPack*1


	tMayOneToOne_Reward[3312769] = {}
	-- ===+6StonePackage
	-- ===索引:tMayOneToOne_Reward[3312769]
	tMayOneToOne_Reward[3312769]["LogId"] = 12001433
	tMayOneToOne_Reward[3312769]["RewardItem"] = {}
	tMayOneToOne_Reward[3312769]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312769]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】+6赤炼石
	tMayOneToOne_Reward[3312769]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1


	tMayOneToOne_Reward[3312770] = {}
	-- ===9CPsMysticBox
	-- ===索引:tMayOneToOne_Reward[3312770][1]
	tMayOneToOne_Reward[3312770][1] = {}
	tMayOneToOne_Reward[3312770][1]["LogId"] = 12001433
	tMayOneToOne_Reward[3312770][1]["RewardItem"] = {}
	tMayOneToOne_Reward[3312770][1]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312770][1]["RewardItem"][1]["Id"] = 3312772 -- 【库】SuperGem(B)SelectionPack[属性:9], 【表格】优质宝石可选包
	tMayOneToOne_Reward[3312770][1]["RewardItem"][1]["Attr"] = "0 1" -- SuperGem(B)SelectionPack*1


	tMayOneToOne_Reward[3312770][2] = {}
	-- ===9CPsMysticBox
	-- ===索引:tMayOneToOne_Reward[3312770][2]
	tMayOneToOne_Reward[3312770][2]["LogId"] = 12001433
	tMayOneToOne_Reward[3312770][2]["RewardItem"] = {}
	tMayOneToOne_Reward[3312770][2]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312770][2]["RewardItem"][1]["Id"] = 1088000 -- 【库】DragonBall[属性:0], 【表格】赠品龙珠*2
	tMayOneToOne_Reward[3312770][2]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonBall（赠）*2


	tMayOneToOne_Reward[3312770][3] = {}
	-- ===9CPsMysticBox
	-- ===索引:tMayOneToOne_Reward[3312770][3]
	tMayOneToOne_Reward[3312770][3]["LogId"] = 12001433
	tMayOneToOne_Reward[3312770][3]["RewardItem"] = {}
	tMayOneToOne_Reward[3312770][3]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312770][3]["RewardItem"][1]["Id"] = 700102 -- 【库】ThunderGem[属性:0], 【表格】赠品良品天怒宝石*2
	tMayOneToOne_Reward[3312770][3]["RewardItem"][1]["Attr"] = "0 2 3" -- ThunderGem（赠）*2


	tMayOneToOne_Reward[3312770][4] = {}
	-- ===9CPsMysticBox
	-- ===索引:tMayOneToOne_Reward[3312770][4]
	tMayOneToOne_Reward[3312770][4]["LogId"] = 12001433
	tMayOneToOne_Reward[3312770][4]["RewardItem"] = {}
	tMayOneToOne_Reward[3312770][4]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312770][4]["RewardItem"][1]["Id"] = 700122 -- 【库】GloryGem[属性:0], 【表格】赠品良品地灵宝石*2
	tMayOneToOne_Reward[3312770][4]["RewardItem"][1]["Attr"] = "0 2 3" -- GloryGem（赠）*2


	tMayOneToOne_Reward[3312770][5] = {}
	-- ===9CPsMysticBox
	-- ===索引:tMayOneToOne_Reward[3312770][5]
	tMayOneToOne_Reward[3312770][5]["LogId"] = 12001433
	tMayOneToOne_Reward[3312770][5]["RewardItem"] = {}
	tMayOneToOne_Reward[3312770][5]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312770][5]["RewardItem"][1]["Id"] = 730004 -- 【库】+4Stone[属性:0], 【表格】赠品+4赤练石
	tMayOneToOne_Reward[3312770][5]["RewardItem"][1]["Attr"] = "0 1 3" -- +4Stone（赠）*2


	tMayOneToOne_Reward[3312771] = {}
	-- ===49CPsMysticBox
	-- ===索引:tMayOneToOne_Reward[3312771][1]
	tMayOneToOne_Reward[3312771][1] = {}
	tMayOneToOne_Reward[3312771][1]["LogId"] = 12001433
	tMayOneToOne_Reward[3312771][1]["RewardItem"] = {}
	tMayOneToOne_Reward[3312771][1]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312771][1]["RewardItem"][1]["Id"] = 730005 -- 【库】+5Stone[属性:0], 【表格】赠品+5赤练石
	tMayOneToOne_Reward[3312771][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +5Stone（赠）*1


	tMayOneToOne_Reward[3312771][2] = {}
	-- ===49CPsMysticBox
	-- ===索引:tMayOneToOne_Reward[3312771][2]
	tMayOneToOne_Reward[3312771][2]["LogId"] = 12001433
	tMayOneToOne_Reward[3312771][2]["RewardItem"] = {}
	tMayOneToOne_Reward[3312771][2]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312771][2]["RewardItem"][1]["Id"] = 723694 -- 【库】PermanentStone[属性:0], 【表格】赠品小固化石
	tMayOneToOne_Reward[3312771][2]["RewardItem"][1]["Attr"] = "0 1 3" -- PermanentStone（赠）*1


	tMayOneToOne_Reward[3312771][3] = {}
	-- ===49CPsMysticBox
	-- ===索引:tMayOneToOne_Reward[3312771][3]
	tMayOneToOne_Reward[3312771][3]["LogId"] = 12001433
	tMayOneToOne_Reward[3312771][3]["RewardItem"] = {}
	tMayOneToOne_Reward[3312771][3]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312771][3]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*10
	tMayOneToOne_Reward[3312771][3]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的BrightStarStone*10


	tMayOneToOne_Reward[3312771][4] = {}
	-- ===49CPsMysticBox
	-- ===索引:tMayOneToOne_Reward[3312771][4]
	tMayOneToOne_Reward[3312771][4]["LogId"] = 12001433
	tMayOneToOne_Reward[3312771][4]["RewardItem"] = {}
	tMayOneToOne_Reward[3312771][4]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312771][4]["RewardItem"][1]["Id"] = 1200006 -- 【库】StarDrill[属性:0], 【表格】赠品7星宝钻
	tMayOneToOne_Reward[3312771][4]["RewardItem"][1]["Attr"] = "0 1 3" -- StarDrill（赠）*1


	tMayOneToOne_Reward[3312771][5] = {}
	-- ===49CPsMysticBox
	-- ===索引:tMayOneToOne_Reward[3312771][5]
	tMayOneToOne_Reward[3312771][5]["LogId"] = 12001433
	tMayOneToOne_Reward[3312771][5]["RewardItem"] = {}
	tMayOneToOne_Reward[3312771][5]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312771][5]["RewardItem"][1]["Id"] = 700102 -- 【库】ThunderGem[属性:0], 【表格】赠品良品天怒宝石*6
	tMayOneToOne_Reward[3312771][5]["RewardItem"][1]["Attr"] = "0 6 3" -- ThunderGem（赠）*6


	tMayOneToOne_Reward[3312772] = {}
	-- ===SuperGem（B）SelectionPack
	-- ===索引:tMayOneToOne_Reward[3312772][1]
	-- ===删除:3312772,1
	tMayOneToOne_Reward[3312772][1] = {}
	tMayOneToOne_Reward[3312772][1]["LogId"] = 12001433
	tMayOneToOne_Reward[3312772][1]["DeleteItem"] = {}
	tMayOneToOne_Reward[3312772][1]["DeleteItem"][1] = {}
	tMayOneToOne_Reward[3312772][1]["DeleteItem"][1]["Id"] = 3312772 -- 【库】SuperGem(B)SelectionPack[属性:9]
	tMayOneToOne_Reward[3312772][1]["RewardItem"] = {}
	tMayOneToOne_Reward[3312772][1]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312772][1]["RewardItem"][1]["Id"] = 700013 -- 【库】DragonGem[属性:0], 【表格】优质龙恨宝石*2
	tMayOneToOne_Reward[3312772][1]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonGem（赠）*2


	tMayOneToOne_Reward[3312772][2] = {}
	-- ===SuperGem（B）SelectionPack
	-- ===索引:tMayOneToOne_Reward[3312772][2]
	-- ===删除:3312772,1
	tMayOneToOne_Reward[3312772][2]["LogId"] = 12001433
	tMayOneToOne_Reward[3312772][2]["DeleteItem"] = {}
	tMayOneToOne_Reward[3312772][2]["DeleteItem"][1] = {}
	tMayOneToOne_Reward[3312772][2]["DeleteItem"][1]["Id"] = 3312772 -- 【库】SuperGem(B)SelectionPack[属性:9]
	tMayOneToOne_Reward[3312772][2]["RewardItem"] = {}
	tMayOneToOne_Reward[3312772][2]["RewardItem"][1] = {}
	tMayOneToOne_Reward[3312772][2]["RewardItem"][1]["Id"] = 700003 -- 【库】PhoenixGem[属性:0], 【表格】优质凤吟宝石*2
	tMayOneToOne_Reward[3312772][2]["RewardItem"][1]["Attr"] = "0 2 3" -- PhoenixGem（赠）*2


local tMayOneToOne_Num = {}
--二进制的值
	for i = 1,5 do
		tMayOneToOne_Num[i] = 2^(i-1)
	end
----------------------------------逻辑部分---------------------------------------------
-- 武器外套礼包
function MayOneToOne_OpenWeaponPack(nItemId)
	if not MayOneToOne_ChkPack(nItemId) then 
		return
	end

	local nEventType = tMayOneToOne_Stc[nItemId]["EventType"]
	local nDataType = tMayOneToOne_Stc[nItemId]["DataType"]
	--打开次数
	local nOpenTime = Get_UserStatisticValue(nEventType,nDataType)

	-- 背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMayOneToOne_Reward[nItemId])

	-- 所需天石
	local nNeedEMoney = tMayOneToOne_Data[nItemId]

	if not MayOneToOne_OpenChk(nItemId,nOpenTime,nSpace,nNeedEMoney)then
		return 
	end 
	Task_AddStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	-- 给奖
	RewardTemplate_UseItemAndMsg(tMayOneToOne_Reward[nItemId])
end 


-- +6赤炼石礼包
function MayOneToOne_OpenStonePack(nItemId)
	if not MayOneToOne_ChkPack(nItemId) then 
		return
	end
	local nEventType = tMayOneToOne_Stc[nItemId]["EventType"]
	local nDataType = tMayOneToOne_Stc[nItemId]["DataType"]
	
	-- 背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMayOneToOne_Reward[nItemId])

	local nOpenTime,nNeedEMoney = MayOneToOne_GetTime(nItemId)
	if not MayOneToOne_OpenChk(nItemId,nOpenTime,nSpace,nNeedEMoney) then 
		return 
	end 
	Task_AddStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	-- 给奖
	RewardTemplate_UseItemAndMsg(tMayOneToOne_Reward[nItemId])
end 

--礼包开启条件检测 次数 背包空间
function MayOneToOne_OpenChk(nItemId,nOpenTime,nSpace,nNeedEMoney,nIndex)
	-- 判断打开情况 次数满直接删除
	local nTime = nOpenTime+1
	if nTime > tMayOneToOne_Data["Time"][nItemId] then
		Item_DelItem(nItemId)
		return false
	end
	
	if nItemId >= 3312770 then 
		-- 判断打开情况 选项物品已购买过
		if MayOneToOne_IfPurchased(nItemId,nIndex) then
			return false
		end
	end 
	
	if Get_UserEMoney() < nNeedEMoney then
		Sys_MsgBox(tMayOneToOne_Text["NoEmoney"])
		return false
	end
	
	-- 判断背包
	-- 最后一次购买珍宝时所需背包空间-1
	if nTime == tMayOneToOne_Data["Time"][nItemId] then
		if nSpace > 0 then
			nSpace = nSpace - 1
		end
	end
	if nSpace > 0 then
		if not User_CheckLeftSpace(nSpace) then
			Sys_MsgBox(tMayOneToOne_Text["NoSpace"])
			return false
		end
	end
	
	-- 扣除天石
	User_TalkChannel2005(tostring(nItemId))
	local sEmoneylog = ""
	if nItemId ~= 3312769 then 
		sEmoneylog = tMayOneToOne_Log["Emoney"][nItemId]
	else 
		sEmoneylog = tMayOneToOne_Log["Emoney"][nItemId][nOpenTime]
	end 
	User_TalkChannel2005(sEmoneylog)
	if not User_AddEMoneyAndLog(-nNeedEMoney,sEmoneylog) then
		return false
	end
	
	-- 最后一次购买珍宝时删除礼包
	if nTime == tMayOneToOne_Data["Time"][nItemId] then
		if not Item_DelItem(nItemId) then
			local sPackageName = Get_ItemtypeName(nItemId)
			local sRewardId = tMayOneToOne_Reward[nItemId][nIndex]["RewardItem"][1]["Id"]
			local sRewardName = Get_ItemtypeName(sRewardId)
			local sMsg = (string.format(tMayOneToOne_Text["FinishTime"],sRewardName,sPackageName))
			Sys_MsgBox(sMsg)
			return false
		end
	end
	return true
end 

-- 自选礼包购买选项
function MayOneToOne_OpenOption(nItemId,nIndex)
	if not MayOneToOne_ChkPack(nItemId) then 
		return
	end
	
	-- 打开次数
	local nOpenTime = MayOneToOne_OpenTimes(nItemId)
	-- 背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMayOneToOne_Reward[nItemId][nIndex])
	-- 所需天石
	local nNeedEMoney = tMayOneToOne_Data[nItemId]
	if not MayOneToOne_OpenChk(nItemId,nOpenTime,nSpace,nNeedEMoney,nIndex)then 
		return 
	end 
	-- 打掩码
	local nEventType = tMayOneToOne_Stc[nItemId]["EventType"]
	local nDataType = tMayOneToOne_Stc[nItemId]["DataType"]
	Task_AddStatistic(nEventType,nDataType,tMayOneToOne_Num[nIndex],1)
	
	-- 给奖
	RewardTemplate_UseItemAndMsg(tMayOneToOne_Reward[nItemId][nIndex])
end

-- 判断自选礼包打开情况
function MayOneToOne_OpenTimes(nItemId)
	local nEventType = tMayOneToOne_Stc[nItemId]["EventType"]
	local nDataType = tMayOneToOne_Stc[nItemId]["DataType"]
	local nValue = Get_UserStatisticValue(nEventType,nDataType)
	local nTimes = 0
	for i = 1,5 do
		if Sys_ParseNumbersContain(tMayOneToOne_Num[i],nValue) then
			nTimes = nTimes + 1
		end
	end
	return nTimes
end

-- 判断自选礼包购买情况
function MayOneToOne_IfPurchased(nItemId,nIndex)
	local nEventType = tMayOneToOne_Stc[nItemId]["EventType"]
	local nDataType = tMayOneToOne_Stc[nItemId]["DataType"]
	local nValue = Get_UserStatisticValue(nEventType,nDataType)
	if Sys_ParseNumbersContain(tMayOneToOne_Num[nIndex],nValue) then
		return true
	end
	
	return false
end

-- 3312772 优质宝石（赠）可选包
function MayOneToOne_OpenPack(nItemId,nIndex)
	if not MayOneToOne_ChkPack(nItemId) then 
		return
	end
	RewardTemplate_UseItemAndMsg(tMayOneToOne_Reward[nItemId][nIndex])
end

--时间判断
function MayOneToOne_ChkPack(nItemId)
-- 判断物品
	if not Item_ChkItem(nItemId) then
		return false 
	end
	
	--过期删除
	if not Sys_ChkFullTime(tActivityTime["MayOneToOne"]["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then		
			Sys_SaveActionFestivalLog(string.format(tMayOneToOne_Log["TimeOver"],nItemId,nItemNum))
			Sys_MsgBox(tMayOneToOne_Text["TimeOver"])
		end
		return false
	end
	return true
end

function MayOneToOne_GetTime(nItemId)
	local nEventType = tMayOneToOne_Stc[nItemId]["EventType"]
	local nDataType = tMayOneToOne_Stc[nItemId]["DataType"]
--打开次数
	local nValue = Get_UserStatisticValue(nEventType,nDataType)
	local nNeedEMoney = tMayOneToOne_Data[nItemId][nValue]
	-- 判断打开情况 次数满直接删除
	if nValue+1 > tMayOneToOne_Data["Time"][nItemId] then
		Item_DelItem(nItemId)
		return
	end
	return nValue,nNeedEMoney
end 

--上线给礼包
function MayOneToOne_Loading()

	if not Sys_ChkFullTime(tActivityTime["MayOneToOne"]["ActivityTime"]) then
		return
	end
	
	-- 判断玩家是否领取过了礼包
	local nEvent = tMayOneToOne_Stc["Event"]
	local nType = tMayOneToOne_Stc["Type"]
	
	if Get_UserStatisticValue(nEvent,nType) ~= 0 then
		return
	end
	local nUserId = Get_UserId()
	local nExistDay = tMayOneToOne_Data["ExistDay"]
	local nActionId = tMayOneToOne_Data["ActionId"]
	local sSender = tMayOneToOne_Text["Mail"]["Sender"] 
	local sTitle = tMayOneToOne_Text["Mail"]["Title"]
	local sContent = tMayOneToOne_Text["Mail"]["Content"]
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	--加掩码
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
end 
---------------------------------物品部分---------------------------------------------
tItemFace[3312768] = 2311
tItemFace[3312769] = 2312
tItemFace[3312770] = 2313
tItemFace[3312771] = 2314
tItemFace[3312772] = 2315

-- 3312768 武器外套礼包
tItem[3312768] = tItem[3312768] or {}
tItem[3312768]["DialogueText"] = tMayOneToOne_Text[3312768]
tItem[3312768]["Function"] = function(nItemId,sItemName)
	if not MayOneToOne_ChkPack(nItemId) then 
		return
	end 
	--满次数删除
	local nEventType = tMayOneToOne_Stc[nItemId]["EventType"]
	local nDataType = tMayOneToOne_Stc[nItemId]["DataType"]
	local nValue = Get_UserStatisticValue(nEventType,nDataType)
	-- 判断打开情况 次数满直接删除
	if nValue+1 > tMayOneToOne_Data["Time"][nItemId] then
		Item_DelItem(nItemId)
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3312768]["Text1-1"] = {111}
tItem[3312768]["tOption1-1"] = {111,112}
tItem[3312768]["OptionFunc111"] = "MayOneToOne_OpenWeaponPack</N>3312768"

-- 3312769 赤炼石礼包
tItem[3312769] = tItem[3312769] or {}
tItem[3312769]["DialogueText"] = tMayOneToOne_Text[3312769]
tItem[3312769]["Function"] = function(nItemId,sItemName)
	if not MayOneToOne_ChkPack(nItemId) then 
		return
	end
	
	local nTime,nNeedEMoney = MayOneToOne_GetTime(nItemId)

	tItem[nItemId]["Text111"] = string.format(tMayOneToOne_Text[nItemId]["Text111"],nTime+1,nNeedEMoney)
	tItem[nItemId]["Option111"] = string.format(tMayOneToOne_Text[nItemId]["Option111"],nNeedEMoney)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3312769]["Text1-1"] = {111}
tItem[3312769]["tOption1-1"] = {111,112}
tItem[3312769]["OptionFunc111"] = "MayOneToOne_OpenStonePack</N>3312769"

-- 3312770 9天石礼盒
-- 3312771 49天石礼盒
for i = 3312770,3312771 do
tItem[i] = tItem[i] or {}
tItem[i]["DialogueText"] = tMayOneToOne_Text[i]
tItem[i]["Function"] = function(nItemId,sItemName)
	if not MayOneToOne_ChkPack(nItemId) then 
		return
	end
	
	-- 判断打开情况 5次则直接删除
	local nOpenTime = MayOneToOne_OpenTimes(nItemId)
	if nOpenTime+1 > tMayOneToOne_Data["Time"][nItemId] then
		Item_DelItem(nItemId)
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[i]["Text1-1"] = {111}
tItem[i]["tOption1-1"] = {1,2,3,4,5,6}
tItem[i]["OptionChkFunc1"] = function ()
	local nItemId = i
	if MayOneToOne_IfPurchased(nItemId,1) then
		return false
	end
	
	return true
end
tItem[i]["OptionChkFunc2"] = function ()
	local nItemId = i
	if MayOneToOne_IfPurchased(nItemId,2) then
		return false
	end
	
	return true
end
tItem[i]["OptionChkFunc3"] = function ()
	local nItemId = i
	if MayOneToOne_IfPurchased(nItemId,3) then
		return false
	end
	
	return true
end
tItem[i]["OptionChkFunc4"] = function ()
	local nItemId = i
	if MayOneToOne_IfPurchased(nItemId,4) then
		return false
	end
	
	return true
end
tItem[i]["OptionChkFunc5"] = function ()
	local nItemId = i
	if MayOneToOne_IfPurchased(nItemId,5) then
		return false
	end
	
	return true
end
tItem[i]["OptionPoint1"] = "2-1"
tItem[i]["OptionPoint2"] = "2-2"
tItem[i]["OptionPoint3"] = "2-3"
tItem[i]["OptionPoint4"] = "2-4"
tItem[i]["OptionPoint5"] = "2-5"

tItem[i]["Text2-1"] = {211}
tItem[i]["tOption2-1"] = {211,212}
tItem[i]["OptionFunc211"] = string.format("MayOneToOne_OpenOption</N>%d</N>1",i)
tItem[i]["OptionPoint212"] = "1-1"

tItem[i]["Text2-2"] = {221}
tItem[i]["tOption2-2"] = {221,212}
tItem[i]["OptionFunc221"] = string.format("MayOneToOne_OpenOption</N>%d</N>2",i)

tItem[i]["Text2-3"] = {231}
tItem[i]["tOption2-3"] = {231,212}
tItem[i]["OptionFunc231"] = string.format("MayOneToOne_OpenOption</N>%d</N>3",i)

tItem[i]["Text2-4"] = {241}
tItem[i]["tOption2-4"] = {241,212}
tItem[i]["OptionFunc241"] = string.format("MayOneToOne_OpenOption</N>%d</N>4",i)

tItem[i]["Text2-5"] = {251}
tItem[i]["tOption2-5"] = {251,212}
tItem[i]["OptionFunc251"] = string.format("MayOneToOne_OpenOption</N>%d</N>5",i)
end

-- 3312772 极品宝石（赠）可选包
tItem[3312772] = tItem[3312772] or {}
tItem[3312772]["DialogueText"] = tMayOneToOne_Text[3312772]
tItem[3312772]["Function"] = function(nItemId,sItemName)
	if not MayOneToOne_ChkPack(nItemId) then 
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3312772]["Text1-1"] = {111}
tItem[3312772]["tOption1-1"] = {1,2}
tItem[3312772]["OptionFunc1"] = "MayOneToOne_OpenPack</N>3312772</N>1"
tItem[3312772]["OptionFunc2"] = "MayOneToOne_OpenPack</N>3312772</N>2"

---------------------------------上线触发---------------------------------------------
table.insert(tSystem_PlayLogin_Func,MayOneToOne_Loading)