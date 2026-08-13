-----------------------------------------------------------------------------------------------------
--Name:		180126[简体征服][活动脚本]狗年年兽活动-跟随技能相关
--Creator: 	严振飞
--Created:	2018/01/26
------------------------------------------------------------------------------------------------------
--命名规范
--DogUpItem_

------------------------------------------数据部分配置------------------------------------------
local tDogUpItem_Stc = {}
	tDogUpItem_Stc[14740] = {}
	-- 记录黑狗当前等级
	tDogUpItem_Stc[14740][1] = {}
	tDogUpItem_Stc[14740][1]["EventType"] = 172
	tDogUpItem_Stc[14740][1]["DataType"] = 80
	-- 记录黑狗当前喂狗粮数量
	tDogUpItem_Stc[14740][2] = {}
	tDogUpItem_Stc[14740][2]["EventType"] = 172
	tDogUpItem_Stc[14740][2]["DataType"] = 81

	tDogUpItem_Stc[14750] = {}
	-- 记录白狗当前等级
	tDogUpItem_Stc[14750][1] = {}
	tDogUpItem_Stc[14750][1]["EventType"] = 172
	tDogUpItem_Stc[14750][1]["DataType"] = 82
	-- 记录黑狗当前喂狗粮数量
	tDogUpItem_Stc[14750][2] = {}
	tDogUpItem_Stc[14750][2]["EventType"] = 172
	tDogUpItem_Stc[14750][2]["DataType"] = 83

	tDogUpItem_Stc[14760] = {}
	-- 记录黑狗当前等级
	tDogUpItem_Stc[14760][1] = {}
	tDogUpItem_Stc[14760][1]["EventType"] = 172
	tDogUpItem_Stc[14760][1]["DataType"] = 84
	-- 记录黑狗当前喂狗粮数量
	tDogUpItem_Stc[14760][2] = {}
	tDogUpItem_Stc[14760][2]["EventType"] = 172
	tDogUpItem_Stc[14760][2]["DataType"] = 85

	

local tDogUpItem_Cont = {}
	tDogUpItem_Cont["ActTime"] = tActivityTime["DogUpItem"]["ActTime"]

	-- 狗粮ID
	tDogUpItem_Cont["Normal"] = 3307349
	tDogUpItem_Cont["Gold"] = 3307350
	
local tDogUpItem_Magic = {}
	-- 黑狗
	tDogUpItem_Magic[1] = {}
	tDogUpItem_Magic[1]["Type"] = 14740
	tDogUpItem_Magic[1]["UpLev"] = {}
	tDogUpItem_Magic[1]["UpLev"][1] = {tDogUpItem_Cont["Normal"],50}
	tDogUpItem_Magic[1]["UpLev"][2] = {tDogUpItem_Cont["Normal"],100}
	tDogUpItem_Magic[1]["UpLev"][3] = {tDogUpItem_Cont["Normal"],150}
	tDogUpItem_Magic[1]["UpLev"][4] = {tDogUpItem_Cont["Normal"],200}
	tDogUpItem_Magic[1]["UpLev"][5] = {tDogUpItem_Cont["Normal"],500}
	tDogUpItem_Magic[1]["UpLev"][6] = {tDogUpItem_Cont["Gold"],1}
	-- 白狗
	tDogUpItem_Magic[2] = {}
	tDogUpItem_Magic[2]["Type"] = 14750
	tDogUpItem_Magic[2]["UpLev"] = {}
	tDogUpItem_Magic[2]["UpLev"][1] = {tDogUpItem_Cont["Normal"],50}
	tDogUpItem_Magic[2]["UpLev"][2] = {tDogUpItem_Cont["Normal"],100}
	tDogUpItem_Magic[2]["UpLev"][3] = {tDogUpItem_Cont["Normal"],150}
	tDogUpItem_Magic[2]["UpLev"][4] = {tDogUpItem_Cont["Normal"],200}
	tDogUpItem_Magic[2]["UpLev"][5] = {tDogUpItem_Cont["Normal"],500}
	tDogUpItem_Magic[2]["UpLev"][6] = {tDogUpItem_Cont["Gold"],1}
	-- 金狗
	tDogUpItem_Magic[3] = {}
	tDogUpItem_Magic[3]["Type"] = 14760
	tDogUpItem_Magic[3]["UpLev"] = {}
	tDogUpItem_Magic[3]["UpLev"][1] = {tDogUpItem_Cont["Normal"],50}
	tDogUpItem_Magic[3]["UpLev"][2] = {tDogUpItem_Cont["Normal"],100}
	tDogUpItem_Magic[3]["UpLev"][3] = {tDogUpItem_Cont["Normal"],150}
	tDogUpItem_Magic[3]["UpLev"][4] = {tDogUpItem_Cont["Normal"],200}
	tDogUpItem_Magic[3]["UpLev"][5] = {tDogUpItem_Cont["Normal"],500}
	tDogUpItem_Magic[3]["UpLev"][6] = {tDogUpItem_Cont["Gold"],1}
	
	
-- 升级技能配置
local tDogUpItem_UpMagic = {}
	tDogUpItem_UpMagic["RewardMagic"] = {}
	tDogUpItem_UpMagic["RewardMagic"]["MagicType"] = 14740
	tDogUpItem_UpMagic["RewardMagic"]["MagicUp"] = 1
	tDogUpItem_UpMagic["RewardMagic"]["Times"] = 1
	tDogUpItem_UpMagic["RewardMagic"]["UpMagic"] = tDogUpItem_Text["UpMagic"]
	tDogUpItem_UpMagic["RewardEffect"] = {}
	tDogUpItem_UpMagic["RewardEffect"]["Effect"] = "angelwing"
	tDogUpItem_UpMagic["LogId"] = 12001000

-- 给气力值
local tDogUpItem_Reward = {}
	tDogUpItem_Reward[3307350] = {}
	tDogUpItem_Reward[3307350]["DeleteItem"] = {}
	tDogUpItem_Reward[3307350]["DeleteItem"][1] = {}
	tDogUpItem_Reward[3307350]["DeleteItem"][1]["Id"] = 3307350
	tDogUpItem_Reward[3307350]["RewardStrengthValue"] = {}
	tDogUpItem_Reward[3307350]["RewardStrengthValue"]["Value"] = 3000
	tDogUpItem_Reward[3307350]["RewardEffect"] = {}
	tDogUpItem_Reward[3307350]["RewardEffect"]["Effect"] = "angelwing"
	tDogUpItem_Reward[3307350]["LogId"] = 12001000


local tDogUpItem_Log = {}
	tDogUpItem_Log["DoFeed"] = "0,0,%d,%d,12001000,1[%d],%d,0"
	tDogUpItem_Log["DoUp"] = "0,0,%d,%d,12001000,1[%d],%d,%d"

------------------------------------------逻辑部分配置------------------------------------------
-- 获取玩家招魂技能等级
function DogUpItem_GetMagicLev(nMagicType,nMaxLev,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nMagicLev = 0
	for nLev = 0, nMaxLev do
		if Magic_ChkLev(nMagicType,nLev,nUserId) then
			nMagicLev = nLev
			break
		end
	end
	
	return nMagicLev
end

-- 通过stc掩码获取技能等级
function DogUpItem_GetLevByStc(nMagic)
	local nEvent = tDogUpItem_Stc[nMagic][1]["EventType"]
	local nType = tDogUpItem_Stc[nMagic][1]["DataType"]
	local nMagicLev = Get_UserStatisticValue(nEvent,nType)
	
	return nMagicLev
end


-- 活动条件
function DogUpItem_ChkTime(nItemId)
	-- 活动时间外
	local sItemName = Get_ItemtypeName(nItemId)
	if not Sys_ChkFullTime(tDogUpItem_Cont["ActTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			local sText = string.format(tDogUpItem_Text["DelItem"],sItemName)
			User_TalkChannel2005(sText)
			Sys_MsgBox(sText)
		end
		return false
	end

	return true
end


-- 喂养条件
function DogUpItem_ChkFeed(nItemId,nType)
	-- 物品不存在
	local sItemName = Get_ItemtypeName(nItemId)
	if not Item_ChkItem(nItemId) then
		local sTextNum = "3-1"
		if nItemId == tDogUpItem_Cont["Gold"] then
			sTextNum = "3-2"
		end
		
		LinkItemGossipFunc_New(nItemId,sTextNum)
		return false
	end
	
	-- 未领养
	local sFunc = string.format("DogUpItem_OpenItem</N>%d",nItemId)
	local nMagicType = tDogUpItem_Magic[nType]["Type"]
	local sDogName = tDogUpItem_Text["DogName"][nType]
	if not Magic_ChkType(nMagicType) then
		Sys_MsgBox(string.format(tDogUpItem_Text["NoDog"][nMagicType],sDogName,sDogName),sFunc)
		return false
	end

	-- 已升至最高级
	local nMaxLev = #tDogUpItem_Magic[nType]["UpLev"]
	local nMagicLev = DogUpItem_GetMagicLev(nMagicType,nMaxLev)
	if nMagicLev >= nMaxLev then
		Sys_MsgBox(string.format(tDogUpItem_Text["LevFull"],sDogName,nMaxLev),sFunc)
		return false
	end
	
	-- 不是对应狗粮
	local nNextLev = nMagicLev + 1
	if nItemId ~= tDogUpItem_Magic[nType]["UpLev"][nNextLev][1] then
		Sys_MsgBox(string.format(tDogUpItem_Text["NoItem"][nItemId],sDogName),sFunc)
		return false
	end
	
	return true
end


------------------------------------------------
-- 物品使用
function DogUpItem_OpenItem(nItemId)
	-- 条件外
	if not DogUpItem_ChkTime(nItemId) then
		return
	end
	
	-- 初始化
	local sItemName = Get_ItemtypeName(nItemId)
	tItem[nItemId]["tOption1-1"] = {}
	tItem[nItemId]["Text115"] = ""
	
	-- 循环设置跟随宠信息
	for i,v in ipairs(tDogUpItem_Magic) do
		local sDogName = tDogUpItem_Text["DogName"][i]
		local sLev = tDogUpItem_Text["Nolev"]
		local nDoNum = tDogUpItem_Text["NoNum"]
		local nUpNum = tDogUpItem_Text["NoNum"]
		
		-- 已领养数据
		local nMaxLev = #tDogUpItem_Magic[i]["UpLev"]
		local nMagicLev = DogUpItem_GetMagicLev(v["Type"],nMaxLev)
		local nNextLev = nMagicLev + 1
		-- local sSpeed = ""
		
		-- 等级是否与stc值一致
		local nEvent_1 = tDogUpItem_Stc[v["Type"]][1]["EventType"]
		local nType_1 = tDogUpItem_Stc[v["Type"]][1]["DataType"]
		local nStcLev = Get_UserStatisticValue(nEvent_1,nType_1)
		local bRecoverySkills = false
		
		-- 有技能，等级与stc不一致
		if Magic_ChkType(v["Type"]) then
			if nMagicLev ~= nStcLev then
				bRecoverySkills = true
			end
			
		-- 没技能。但学过该技能
		elseif RecoverySkills_ChkLearn(v["Type"]) then
			bRecoverySkills = true
		end

		-- 恢复技能
		if bRecoverySkills then
			RecoverySkills_Magic(v["Type"],nStcLev,nItemId)
			nMagicLev = DogUpItem_GetMagicLev(v["Type"],nMaxLev)
		end
		
		-- 已满级
		if nMagicLev >= nMaxLev then
			sLev = string.format(tDogUpItem_Text["Howlev"],nMagicLev)
			-- sSpeed = tDogUpItem_Text["MaxLev"]
			
		-- 未满级
		else
			-- 已领养
			if Magic_ChkType(v["Type"]) then
				sLev = string.format(tDogUpItem_Text["Howlev"],nMagicLev)

				-- 不是对应狗粮
				if nItemId == tDogUpItem_Magic[i]["UpLev"][nNextLev][1] then
					nUpNum = tDogUpItem_Magic[i]["UpLev"][nNextLev][2]
					
					-- 已上交数量
					local nEvent = tDogUpItem_Stc[v["Type"]][2]["EventType"]
					local nType = tDogUpItem_Stc[v["Type"]][2]["DataType"]
					nDoNum = Get_UserStatisticValue(nEvent,nType)
				end
			end
			
			-- sSpeed = string.format(tDogUpItem_Text["Speed"],nDoNum,nUpNum)
		end
		
		local sText = Sys_CenterAline(sDogName,9,sLev,37).."\n"
		tItem[nItemId]["Text110".. i] = sText
		tItem[nItemId]["Option11".. i] = string.format(tDogUpItem_Text[nItemId]["Option11".. i],sDogName)
		tItem[nItemId]["OptionFunc11".. i] = string.format("DogUpItem_ChoiceNum</N>%d</N>%d",nItemId,i)
		
		-- 为爱心狗粮
		if nItemId == tDogUpItem_Cont["Normal"] then
			tItem[nItemId]["Text115"] = tDogUpItem_Text[nItemId]["Text115"]
		end
		
		-- 为黄金狗粮
		if nItemId == tDogUpItem_Cont["Gold"] then
			nUpNum = 1
			tItem[nItemId]["OptionFunc11".. i] = string.format("DogUpItem_FeedDog</N>%d</S>%s</N>%d</N>%d",nItemId,sItemName,nUpNum,i)
		end
		
		-- 未满级给选项
		if not (nMagicLev >= nMaxLev) then
			table.insert(tItem[nItemId]["tOption1-1"],tonumber("11".. i))
		end
	end
	
	-- 黄金狗粮，多个兑换气力选项
	if nItemId == tDogUpItem_Cont["Gold"] then
		table.insert(tItem[nItemId]["tOption1-1"],114)
		tItem[nItemId]["OptionFunc114"] = string.format("DogUpItem_IsQiLi</N>%d</S>%s",nItemId,sItemName)
	end
	
	-- 关闭选项
	table.insert(tItem[nItemId]["tOption1-1"],115)
	
	-- 出对白
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 选择狗粮数量
function DogUpItem_ChoiceNum(nItemId,nType)
	-- 条件外
	if not DogUpItem_ChkTime(nItemId) then
		return
	end
	
	-- 喂养条件
	if not DogUpItem_ChkFeed(nItemId,nType) then
		return
	end
	
	-- 对白组合
	local sDogName = tDogUpItem_Text["DogName"][nType]
	local sItemName = Get_ItemtypeName(nItemId)
	tItem[nItemId]["Text121"] = string.format(tDogUpItem_Text[nItemId]["Text121"],sDogName)
	for i,v in ipairs(tDogUpItem_Magic[nType]["UpLev"]) do
		local nUpNum = v[2]
		local nFeedId = v[1]
		local sFeedName = Get_ItemtypeName(nFeedId)
		if i == 1 or i == #tDogUpItem_Magic[nType]["UpLev"] then
			sFeedName = tDogUpItem_Text["ItemName"][nFeedId]
		end
		local sTextStar = tDogUpItem_Text[nItemId]["Text120".. i]
		local sTextMid = tDogUpItem_Text["UpType"][i]
		local sTextEnd = string.format(tDogUpItem_Text["FeedNum"],nUpNum,sFeedName)
		local sText = Sys_CenterAline(sTextStar,8,sTextMid,28,sTextEnd,58).."\n"
		tItem[nItemId]["Text120".. i] = sText
	end
		

	-- 当前等级情况
	local nMaxLev = #tDogUpItem_Magic[nType]["UpLev"]
	local nMagicType = tDogUpItem_Magic[nType]["Type"]
	local nMagicLev = DogUpItem_GetMagicLev(nMagicType,nMaxLev)
	local nNextLev = nMagicLev + 1
	local sNowLev = string.format(tDogUpItem_Text["Howlev"],nMagicLev)
	-- 已上交数量
	local nDoEvent = tDogUpItem_Stc[nMagicType][2]["EventType"]
	local nDoType = tDogUpItem_Stc[nMagicType][2]["DataType"]
	local nDoNum = Get_UserStatisticValue(nDoEvent,nDoType)
	local nNowUpNum = tDogUpItem_Magic[nType]["UpLev"][nNextLev][2]
	local sSpeed = string.format(tDogUpItem_Text["Speed"],nDoNum,nNowUpNum)
	tItem[nItemId]["Text125"] = string.format(tDogUpItem_Text[nItemId]["Text125"],sNowLev,sSpeed)

	-- 选项组合
	tItem[nItemId]["Option121"] = string.format(tDogUpItem_Text[nItemId]["Option121"],1,sItemName)
	tItem[nItemId]["Option122"] = string.format(tDogUpItem_Text[nItemId]["Option122"],sItemName)
	tItem[nItemId]["OptionFunc121"] = string.format("DogUpItem_FeedDog</N>%d</S>%s</N>%d</N>%d",nItemId,sItemName,1,nType)
	tItem[nItemId]["OptionFunc122"] = string.format("DogUpItem_FeedDog</N>%d</S>%s</N>%s</N>%d",nItemId,sItemName,0,nType)

	-- 出对白
	LinkItemGossipFunc_New(nItemId,"1-2")
end

-- 喂狗粮
function DogUpItem_FeedDog(nItemId,sItemName,nNum,nType)
	-- 条件外
	if not DogUpItem_ChkTime(nItemId) then
		return
	end
	
	-- 喂养条件
	if not DogUpItem_ChkFeed(nItemId,nType) then
		return
	end
	
	-- 是否全上交
	if nNum == 0 then
		nNum = Get_CountItemType(nItemId,0)
	end
	
	-- 数量不足
	if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		local sTextNum = "3-1"
		if nItemId == tDogUpItem_Cont["Gold"] then
			sTextNum = "3-2"
		end
		
		LinkItemGossipFunc_New(nItemId,sTextNum)
		return
	end
	
	-- 基础数据
	local nMaxLev = #tDogUpItem_Magic[nType]["UpLev"]
	local nMagicType = tDogUpItem_Magic[nType]["Type"]
	local nMagicLev = DogUpItem_GetMagicLev(nMagicType,nMaxLev)
	local nNextLev = nMagicLev + 1
	local sDogName = tDogUpItem_Text["DogName"][nType]
	
	-- 成功上交是否可升级
	local nEvent_1 = tDogUpItem_Stc[nMagicType][1]["EventType"]
	local nType_1 = tDogUpItem_Stc[nMagicType][1]["DataType"]
	local nEvent_2 = tDogUpItem_Stc[nMagicType][2]["EventType"]
	local nType_2 = tDogUpItem_Stc[nMagicType][2]["DataType"]
	local nNowNum = Get_UserStatisticValue(nEvent_2,nType_2)
	local nUpNum = tDogUpItem_Magic[nType]["UpLev"][nNextLev][2]

	if (nNowNum + nNum) >= nUpNum then
		-- 删除数量重置
		nNum = nUpNum - nNowNum
	
		-- 删除狗粮
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
			
			-- 重置狗粮数量stc
			Task_SetStatistic(nEvent_2,nType_2,0,1)
			
			-- 设置等级stc
			Task_SetStatistic(nEvent_1,nType_1,nNextLev,1)
			
			-- 技能升级
			local tReward = CommonFunc_Copy(tDogUpItem_UpMagic)
			tReward["RewardMagic"]["MagicType"] = nMagicType
			tReward["RewardMagic"]["UpMagic"] = string.format(tReward["RewardMagic"]["UpMagic"],sDogName,nNextLev)

			-- 5级以上
			if nNextLev == 5 then
				local sLinkText = string.format(tDogUpItem_Text["UpMagicLev5"],sDogName)
				tReward["RewardMagic"]["UpMagic"] = tReward["RewardMagic"]["UpMagic"]..sLinkText
			elseif nNextLev >= 6 then
				tReward["RewardMagic"]["UpMagic"] = string.format(tDogUpItem_Text["UpMagicLev6"],sDogName,nNextLev)
			end
			
			-- 升级
			if RewardTemplate_UseItemAndMsg(tReward) then
				--log
				local sLogText = string.format(tDogUpItem_Log["DoUp"],nItemId,nNum,nMagicType,nMagicLev,nNextLev)
				Sys_SaveActionFestivalLog(sLogText)
				
				User_TalkChannel2005(string.format(tDogUpItem_Text["DoFeedUp"],nNum,sItemName,sDogName,nMagicLev,nNextLev))
				local sFunc = string.format("DogUpItem_OpenItem</N>%d",nItemId)
				Sys_MsgBox(tReward["RewardMagic"]["UpMagic"],sFunc)
			end
		end
		
	-- 不可升级
	elseif Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
		-- 增加喂养数量
		Task_AddStatistic(nEvent_2,nType_2,nNum,1)
		
		-- 光效
		local sEffect = tDogUpItem_UpMagic["RewardEffect"]["Effect"]
		User_EffectAdd("self",sEffect)
		
		-- log
		local sLogText = string.format(tDogUpItem_Log["DoFeed"],nItemId,nNum,nMagicType,nMagicLev)
		Sys_SaveActionFestivalLog(sLogText)
		
		-- 返回主对白
		local nNewNum = Get_UserStatisticValue(nEvent_2,nType_2)
		User_TalkChannel2005(string.format(tDogUpItem_Text["DoFeed"],nNum,sItemName,sDogName,nNewNum,nUpNum))
		DogUpItem_OpenItem(nItemId)
	end
end


-- 是否兑换气力值
function DogUpItem_IsQiLi(nItemId,sItemName)
	-- 条件外
	if not DogUpItem_ChkTime(nItemId) then
		return
	end
	
	-- 无物品
	if not Item_ChkItem(nItemId) then
		-- Sys_MsgBox(string.format(tDogUpItem_Text["NoQiLiItem"],sItemName))
		LinkItemGossipFunc_New(nItemId,"3-3")
		return
	end
	
	tItem[nItemId]["OptionFunc211"] = string.format("DogUpItem_AddQiLi</N>%d</S>%s",nItemId,sItemName)
	
	-- 出对白
	LinkItemGossipFunc_New(nItemId,"2-1")
end


-- 给气力值
function DogUpItem_AddQiLi(nItemId,sItemName)
	-- 条件外
	if not DogUpItem_ChkTime(nItemId) then
		return
	end
	
	-- 无物品
	if not Item_ChkItem(nItemId) then
		-- Sys_MsgBox(string.format(tDogUpItem_Text["NoQiLiItem"],sItemName))
		LinkItemGossipFunc_New(nItemId,"3-3")
		return
	end

	-- 给气力值
	RewardTemplate_UseItemAndMsg(tDogUpItem_Reward[nItemId])
	
	-- 返回主对白
	DogUpItem_OpenItem(nItemId)
end


------------------------------------------模块部分配置------------------------------------------
-- 爱心狗粮
tItemFace[3307349] = 1300
tItem[3307349] = tItem[3307349] or {}
tItem[3307349]["DialogueText"]=tDogUpItem_Text[3307349]
tItem[3307349]["Function"] = function(nItemId,sItemName)
	DogUpItem_OpenItem(nItemId,sItemName)
end
-- 主对白
tItem[3307349]["Text1-1"]={111,112,113,1101,1102,1103,114,115}
tItem[3307349]["tOption1-1"]={111,112,113,114,115}
-- 选择狗粮数量
tItem[3307349]["Text1-2"]={121,122,123,1201,1202,1203,1204,1205,1206,124,125}
tItem[3307349]["tOption1-2"]={121,122,123}
-- 兑换气力值
tItem[3307349]["Text2-1"]={211}
tItem[3307349]["tOption2-1"]={211,212}
-- 没有狗粮
tItem[3307349]["Text3-1"]={311,312,313,314,315}
tItem[3307349]["tOption3-1"]={311}
-- 没有狗粮（黄金狗粮）
tItem[3307349]["Text3-2"]={321,322,323,324}
tItem[3307349]["tOption3-2"]={321}
-- 没有狗粮（黄金狗粮）（兑换气力值）
tItem[3307349]["Text3-3"]={331,332,333,334}
tItem[3307349]["tOption3-3"]={331}


-- 黄金狗粮
tItemFace[3307350] = 1301
tItem[3307350] = tItem[3307349] or CommonFunc_Copy(tItem[3307349])
tDogUpItem_Text[3307350] = tDogUpItem_Text[3307349]or CommonFunc_Copy(tDogUpItem_Text[3307349])


