------------------------------------------------------------------------------------
--Name：            190423[英文征服][活动脚本]5月线下活动相关发奖action制作5.6
--Creator:      林嘉鑫
--Created:     2019-04-23
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tMayOfflineActivity_Pack = {}
	-- ===1000修行值礼包
	-- ===索引: 3321179
	-- ===删除: 3321179,1
	tMayOfflineActivity_Pack[3321179] = {}
	tMayOfflineActivity_Pack[3321179]["LogId"] = 12001387
	tMayOfflineActivity_Pack[3321179]["DeleteItem"] = {}
	tMayOfflineActivity_Pack[3321179]["DeleteItem"][1] = {}
	tMayOfflineActivity_Pack[3321179]["DeleteItem"][1]["Id"] = 3321179 -- 【库】1000StudyPointsPack[属性:9]
	tMayOfflineActivity_Pack[3321179]["RewardCultivation"] = {}
	tMayOfflineActivity_Pack[3321179]["RewardCultivation"]["Value"] = 1000 -- 修行值
	tMayOfflineActivity_Pack[3321179]["RewardEffect"] = {}
	tMayOfflineActivity_Pack[3321179]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayOfflineActivity_Pack[3321179]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2000修行值礼包
	-- ===索引: 3321180
	-- ===删除: 3321180,1
	tMayOfflineActivity_Pack[3321180] = {}
	tMayOfflineActivity_Pack[3321180]["LogId"] = 12001387
	tMayOfflineActivity_Pack[3321180]["DeleteItem"] = {}
	tMayOfflineActivity_Pack[3321180]["DeleteItem"][1] = {}
	tMayOfflineActivity_Pack[3321180]["DeleteItem"][1]["Id"] = 3321180 -- 【库】2000StudyPointsPack[属性:9]
	tMayOfflineActivity_Pack[3321180]["RewardCultivation"] = {}
	tMayOfflineActivity_Pack[3321180]["RewardCultivation"]["Value"] = 2000 -- 修行值
	tMayOfflineActivity_Pack[3321180]["RewardEffect"] = {}
	tMayOfflineActivity_Pack[3321180]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayOfflineActivity_Pack[3321180]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3000修行值礼包
	-- ===索引: 3321181
	-- ===删除: 3321181,1
	tMayOfflineActivity_Pack[3321181] = {}
	tMayOfflineActivity_Pack[3321181]["LogId"] = 12001387
	tMayOfflineActivity_Pack[3321181]["DeleteItem"] = {}
	tMayOfflineActivity_Pack[3321181]["DeleteItem"][1] = {}
	tMayOfflineActivity_Pack[3321181]["DeleteItem"][1]["Id"] = 3321181 -- 【库】3000StudyPointsPack[属性:9]
	tMayOfflineActivity_Pack[3321181]["RewardCultivation"] = {}
	tMayOfflineActivity_Pack[3321181]["RewardCultivation"]["Value"] = 3000 -- 修行值
	tMayOfflineActivity_Pack[3321181]["RewardEffect"] = {}
	tMayOfflineActivity_Pack[3321181]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayOfflineActivity_Pack[3321181]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2颗+2赤炼石包
	-- ===索引: 3321182
	-- ===删除: 3321182,1
	tMayOfflineActivity_Pack[3321182] = {}
	tMayOfflineActivity_Pack[3321182]["LogId"] = 12001387
	tMayOfflineActivity_Pack[3321182]["DeleteItem"] = {}
	tMayOfflineActivity_Pack[3321182]["DeleteItem"][1] = {}
	tMayOfflineActivity_Pack[3321182]["DeleteItem"][1]["Id"] = 3321182 -- 【库】2+2StonesPack[属性:9]
	tMayOfflineActivity_Pack[3321182]["RewardItem"] = {}
	tMayOfflineActivity_Pack[3321182]["RewardItem"][1] = {}
	tMayOfflineActivity_Pack[3321182]["RewardItem"][1]["Id"] = 730002 -- 【库】+2Stone[属性:0]【表格】  +2赤练石
	tMayOfflineActivity_Pack[3321182]["RewardItem"][1]["Attr"] = "0 2 3" -- +2Stone(赠)*2
	tMayOfflineActivity_Pack[3321182]["RewardEffect"] = {}
	tMayOfflineActivity_Pack[3321182]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayOfflineActivity_Pack[3321182]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3颗+2赤炼石包
	-- ===索引: 3321183
	-- ===删除: 3321183,1
	tMayOfflineActivity_Pack[3321183] = {}
	tMayOfflineActivity_Pack[3321183]["LogId"] = 12001387
	tMayOfflineActivity_Pack[3321183]["DeleteItem"] = {}
	tMayOfflineActivity_Pack[3321183]["DeleteItem"][1] = {}
	tMayOfflineActivity_Pack[3321183]["DeleteItem"][1]["Id"] = 3321183 -- 【库】3+2StonesPack[属性:9]
	tMayOfflineActivity_Pack[3321183]["RewardItem"] = {}
	tMayOfflineActivity_Pack[3321183]["RewardItem"][1] = {}
	tMayOfflineActivity_Pack[3321183]["RewardItem"][1]["Id"] = 730002 -- 【库】+2Stone[属性:0]【表格】  +2赤练石
	tMayOfflineActivity_Pack[3321183]["RewardItem"][1]["Attr"] = "0 3 3" -- +2Stone(赠)*3
	tMayOfflineActivity_Pack[3321183]["RewardEffect"] = {}
	tMayOfflineActivity_Pack[3321183]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayOfflineActivity_Pack[3321183]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2颗百炼天机果（赠）礼包
	-- ===索引: 3321184
	-- ===删除: 3321184,1
	tMayOfflineActivity_Pack[3321184] = {}
	tMayOfflineActivity_Pack[3321184]["LogId"] = 12001387
	tMayOfflineActivity_Pack[3321184]["DeleteItem"] = {}
	tMayOfflineActivity_Pack[3321184]["DeleteItem"][1] = {}
	tMayOfflineActivity_Pack[3321184]["DeleteItem"][1]["Id"] = 3321184 -- 【库】2MysteryFruits(B)Pack[属性:9]
	tMayOfflineActivity_Pack[3321184]["RewardItem"] = {}
	tMayOfflineActivity_Pack[3321184]["RewardItem"][1] = {}
	tMayOfflineActivity_Pack[3321184]["RewardItem"][1]["Id"] = 3001044 -- 【库】MysteryFruit[属性:9]【表格】天机果
	tMayOfflineActivity_Pack[3321184]["RewardItem"][1]["Attr"] = "0 2" -- MysteryFruit*2
	tMayOfflineActivity_Pack[3321184]["RewardEffect"] = {}
	tMayOfflineActivity_Pack[3321184]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayOfflineActivity_Pack[3321184]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+4赤炼石豪华包
	-- ===索引: 3321185
	-- ===删除: 3321185,1
	-- ===EMoneyLog: 10000,0372
	tMayOfflineActivity_Pack[3321185] = {}
	tMayOfflineActivity_Pack[3321185]["LogId"] = 12001387
	tMayOfflineActivity_Pack[3321185]["DeleteItem"] = {}
	tMayOfflineActivity_Pack[3321185]["DeleteItem"][1] = {}
	tMayOfflineActivity_Pack[3321185]["DeleteItem"][1]["Id"] = 3321185 -- 【库】+4StoneLuxuryPack[属性:9]
	tMayOfflineActivity_Pack[3321185]["RewardEMoneyMono"] = {}
	tMayOfflineActivity_Pack[3321185]["RewardEMoneyMono"]["Value"] = 500 -- 赠点
	tMayOfflineActivity_Pack[3321185]["EmoneyLog"] = "10000	0372	0	0	-500	"
	tMayOfflineActivity_Pack[3321185]["RewardItem"] = {}
	tMayOfflineActivity_Pack[3321185]["RewardItem"][1] = {}
	tMayOfflineActivity_Pack[3321185]["RewardItem"][1]["Id"] = 730004 -- 【库】+4Stone[属性:0]【表格】非赠+4赤练石
	tMayOfflineActivity_Pack[3321185]["RewardItem"][1]["Attr"] = "0 1" -- +4Stone*1
	tMayOfflineActivity_Pack[3321185]["RewardEffect"] = {}
	tMayOfflineActivity_Pack[3321185]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayOfflineActivity_Pack[3321185]["RewardEffect"]["Effect"] = "angelwing"


	-- ===金丝蝶羽·鸾凤
	-- ===索引: 3312064
	-- ===删除: 3312064,1
	tMayOfflineActivity_Pack[3312064] = {}
	tMayOfflineActivity_Pack[3312064]["LogId"] = 12001387
	tMayOfflineActivity_Pack[3312064]["DeleteItem"] = {}
	tMayOfflineActivity_Pack[3312064]["DeleteItem"][1] = {}
	tMayOfflineActivity_Pack[3312064]["DeleteItem"][1]["Id"] = 3312064 -- 【库】ButterflyWing[属性:9]
	tMayOfflineActivity_Pack[3312064]["RewardWing"] = {}
	tMayOfflineActivity_Pack[3312064]["RewardWing"]["TitleType"] = 6021 -- 【库】ButterflyWing【表格】金丝蝶羽-鸾凤 翅膀
	tMayOfflineActivity_Pack[3312064]["RewardWing"]["TitleId"] = 6021
	tMayOfflineActivity_Pack[3312064]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:ButterflyWing
	tMayOfflineActivity_Pack[3312064]["RewardEffect"] = {}
	tMayOfflineActivity_Pack[3312064]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayOfflineActivity_Pack[3312064]["RewardEffect"]["Effect"] = "angelwing"


	-- ===JiangHuPromoBox
	-- ===索引: 3321186
	-- ===EMoneyLog: 10000,0372
	tMayOfflineActivity_Pack[3321186] = {}
	tMayOfflineActivity_Pack[3321186]["LimitData"] = 10
	tMayOfflineActivity_Pack[3321186]["nEventType"] = 194
	tMayOfflineActivity_Pack[3321186]["nDataType"] = 17
	tMayOfflineActivity_Pack[3321186]["Level"] = 110
	tMayOfflineActivity_Pack[3321186]["Mete"] = 0
	tMayOfflineActivity_Pack[3321186]["NeedEmoney"] = 399
	tMayOfflineActivity_Pack[3321186]["EmoneyLog"] = "10000	0372	399	399	1	"
	tMayOfflineActivity_Pack[3321186]["LogId"] = 12001387
	tMayOfflineActivity_Pack[3321186]["RewardItem"] = {}
	tMayOfflineActivity_Pack[3321186]["RewardItem"][1] = {}
	tMayOfflineActivity_Pack[3321186]["RewardItem"][1]["Id"] = 3002926 -- 【库】FreeTrainingPill[属性:11]【表格】FreeTrainingPill
	tMayOfflineActivity_Pack[3321186]["RewardItem"][1]["Attr"] = "0 100 3" -- FreeTrainingPill(赠)*100
	tMayOfflineActivity_Pack[3321186]["RewardItem"][2] = {}
	tMayOfflineActivity_Pack[3321186]["RewardItem"][2]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0]【表格】SeniorTrainingPill
	tMayOfflineActivity_Pack[3321186]["RewardItem"][2]["Attr"] = "0 100 3" -- SeniorTrainingPill(赠)*100
	tMayOfflineActivity_Pack[3321186]["RewardItem"][3] = {}
	tMayOfflineActivity_Pack[3321186]["RewardItem"][3]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9]【表格】SuperProtectionPill
	tMayOfflineActivity_Pack[3321186]["RewardItem"][3]["Attr"] = "0 100 3" -- SuperProtectionPill(赠)*100
	tMayOfflineActivity_Pack[3321186]["RewardEffect"] = {}
	tMayOfflineActivity_Pack[3321186]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayOfflineActivity_Pack[3321186]["RewardEffect"]["Effect"] = "angelwing"


	-- ===+12KnifePack
	-- ===索引: 3321187
	-- ===删除: 3321187,1
	tMayOfflineActivity_Pack[3321187] = {}
	tMayOfflineActivity_Pack[3321187]["LogId"] = 12001387
	tMayOfflineActivity_Pack[3321187]["DeleteItem"] = {}
	tMayOfflineActivity_Pack[3321187]["DeleteItem"][1] = {}
	tMayOfflineActivity_Pack[3321187]["DeleteItem"][1]["Id"] = 3321187 -- 【库】+12KnifePack[属性:9]
	tMayOfflineActivity_Pack[3321187]["RewardItem"] = {}
	tMayOfflineActivity_Pack[3321187]["RewardItem"][1] = {}
	tMayOfflineActivity_Pack[3321187]["RewardItem"][1]["Id"] = 613229 -- 【库】PolarKnife[属性:0]【表格】+12飞刀
	tMayOfflineActivity_Pack[3321187]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 0 0 12 255 255" -- 2洞7%神佑(追加+12)PolarKnife(赠)*1
	tMayOfflineActivity_Pack[3321187]["RewardEffect"] = {}
	tMayOfflineActivity_Pack[3321187]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayOfflineActivity_Pack[3321187]["RewardEffect"]["Effect"] = "angelwing"

local tMayOfflineActivity_Log ={}
	tMayOfflineActivity_Log["DelItem"] = "0,0,%d,1,12001387,2,0,0"
----------------------------------逻辑部分---------------------------------------------
-- 打开礼包
function MayOfflineActivity_OpenPackage(nItemId)
	-- 满背包提示
	if not RewardTemplate_CheckSpace(tMayOfflineActivity_Pack[nItemId]) then
		local nSpace = RewardTemplate_GetRewardSpace(tMayOfflineActivity_Pack[nItemId]) - RewardTemplate_GetDelSpace(tMayOfflineActivity_Pack[nItemId])
		local sMsg = string.format(tMayOfflineActivity_Text["Msg"]["NoMoreSpace"],nSpace)
		if nSpace <= 1 then
			sMsg = tMayOfflineActivity_Text["Msg"]["NoSpace"]
		end
		Sys_MsgBox(sMsg)
		User_TalkChannel2005(sMsg)
		return
	end
	if nItemId == 3321185 then
		if Get_UserMonoEMoney() + tMayOfflineActivity_Pack[nItemId]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
			Sys_MsgBox(tMayOfflineActivity_Text["Msg"]["NoMonoEmoney"])
			User_TalkChannel2005(tMayOfflineActivity_Text["Msg"]["NoMonoEmoney"])
			return
		end
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local sRewardStr = RewardTemplate_Reward(tMayOfflineActivity_Pack[nItemId])
		User_TalkChannel2005(string.format(tMayOfflineActivity_Text["Msg"]["Success"],sRewardStr))
	end
end

-- 打开江湖礼包
function MayOfflineActivity_OpenJiangHuPack(nItemId)
	local nUserId = Get_UserId()
	if not User_JudgeLevelAndMetempsychosis(tMayOfflineActivity_Pack[nItemId]["Level"],tMayOfflineActivity_Pack[nItemId]["Mete"]) then
			Sys_MsgBox(tMayOfflineActivity_Text["Msg"]["NotLevel"])
		return
	end
	local nNeedEmoney = tMayOfflineActivity_Pack[nItemId]["NeedEmoney"]
	local nUserEmoney = Get_UserEMoney()
	if nUserEmoney < nNeedEmoney then
		--天石不足
		Sys_MsgBox(tMayOfflineActivity_Text["Msg"]["NoMoney"])
		return
	end
	local nEvent = tMayOfflineActivity_Pack[nItemId]["nEventType"]
	local nType = tMayOfflineActivity_Pack[nItemId]["nDataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	if nData >= tMayOfflineActivity_Pack[nItemId]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tMayOfflineActivity_Log["DelItem"],nItemId)
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			User_TalkChannel2005(tMayOfflineActivity_Text["Msg"]["NoTimes"])
		end
		return
	end
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 背包空间
	local nSpaceNum = RewardTemplate_GetRewardSpace(tMayOfflineActivity_Pack[nItemId])
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		local sText = tMayOfflineActivity_Text["Msg"]["NoMoreSpace"]
		Sys_MsgBox(string.format(sText,nSpaceNum))
		User_TalkChannel2005(string.format(sText,nSpaceNum))
		return
	end
	if User_AddEMoney(-1*tMayOfflineActivity_Pack[nItemId]["NeedEmoney"]) then
		if nData == tMayOfflineActivity_Pack[nItemId]["LimitData"]-1 then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tMayOfflineActivity_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				Task_SetStatistic(nEvent,nType,0,1,nUserId)
				Task_SetStcTimestamp(nEvent,nType,0,nUserId)
				RewardTemplate_UseItemAndMsg(tMayOfflineActivity_Pack[nItemId])
				return
			end
		end
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		RewardTemplate_UseItemAndMsg(tMayOfflineActivity_Pack[nItemId])
	end
end



---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3321179] = tItem[3321179] or {}
tItem[3321179]["Function"] = function (nItemId,sItemName)
	MayOfflineActivity_OpenPackage(nItemId)
end
tItem[3321180] = tItem[3321179]
tItem[3321181] = tItem[3321179]
tItem[3321182] = tItem[3321179]
tItem[3321183] = tItem[3321179]
tItem[3321184] = tItem[3321179]
tItem[3321185] = tItem[3321179]
tItem[3321187] = tItem[3321179]

-- 翅膀
tItem[3312064] = tItem[3312064] or {}
tItem[3312064]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	Sys_MsgBox(tMayOfflineActivity_Text["Msg"][nItemId])
	RewardTemplate_UseItemAndMsg(tMayOfflineActivity_Pack[nItemId])
end

-- jianghu包
tItemFace[3321186] = 524
tItem[3321186] = tItem[3321186] or {}
tItem[3321186]["DialogueText"] = tMayOfflineActivity_Text[3321186]
tItem[3321186]["Function"] = function(nItemId,sItemName)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	if tMayOfflineActivity_Pack[nItemId]["nEventType"] ~= nil and tMayOfflineActivity_Pack[nItemId]["nDataType"] ~= nil then
		local nEvent = tMayOfflineActivity_Pack[nItemId]["nEventType"]
		local nType = tMayOfflineActivity_Pack[nItemId]["nDataType"]
		if not Task_StcInterval(nEvent,nType,1,4,nUserId) then
			LinkItemGossipFunc_New(nItemId,"1-2")
			return
		end
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

tItem[3321186]["Text1-1"] = {111}
tItem[3321186]["tOption1-1"] = {111,112}
tItem[3321186]["OptionFunc111"] = "MayOfflineActivity_OpenJiangHuPack</N>3321186"

tItem[3321186]["Text1-2"] = {121}
tItem[3321186]["tOption1-2"] = {121}

