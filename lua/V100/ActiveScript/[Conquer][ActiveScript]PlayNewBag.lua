--------------------------------------------------------------------------------
---Name:161208[英文征服][活动脚本]玩铁扇门有好礼(1.12)
--Creator: 	陈彦宏
--Created:	2016-12-08
--------------------------------------------------------------------------------

-- 前缀 PlayNewBag_
-- logid 12000594
-- stc 153 94 记录打开次数，使用隔天判断今天是否打开过
-- stc 153 95 活动期间1天石换转世药水6次
-- stc 153 96 0转铁扇门1000增点领取
-- stc 153 97 非0转铁扇门1000增添领取(后续注释文字未改)
-- stc 153 98 领取初始4件套

-- stc 155 77 新建铁扇门上线时打上值(0转1级)

----------------------------------奖励表-----------------------------------------
local tPlayNewBag_Pack = {}
	-- 初始背包信
	tPlayNewBag_Pack[3301719] = {}
	tPlayNewBag_Pack[3301719]["DeleteItem"] = {}
	tPlayNewBag_Pack[3301719]["DeleteItem"][1] = {}
	tPlayNewBag_Pack[3301719]["DeleteItem"][1]["Id"] = 3301719
	tPlayNewBag_Pack[3301719]["LogId"] = 12000594
	tPlayNewBag_Pack[3301719]["RewardItem"] = {}
	tPlayNewBag_Pack[3301719]["RewardItem"][1] = {}
	tPlayNewBag_Pack[3301719]["RewardItem"][1]["Id"] = 3301720
	tPlayNewBag_Pack[3301719]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tPlayNewBag_Pack[3301719]["RewardItem"][2] = {}
	tPlayNewBag_Pack[3301719]["RewardItem"][2]["Id"] = 3301721
	tPlayNewBag_Pack[3301719]["RewardItem"][2]["Attr"] = "0 1 0 43200 1"
	tPlayNewBag_Pack[3301719]["RewardItem"][3] = {}
	tPlayNewBag_Pack[3301719]["RewardItem"][3]["Id"] = 3301722
	tPlayNewBag_Pack[3301719]["RewardItem"][3]["Attr"] = "0 1 0 43200 1"
	
	-- Bag1	+3极品3件套(70版本)
	tPlayNewBag_Pack[3301720] = {}
	tPlayNewBag_Pack[3301720]["DeleteItem"] = {}
	tPlayNewBag_Pack[3301720]["DeleteItem"][1] = {}
	tPlayNewBag_Pack[3301720]["DeleteItem"][1]["Id"] = 3301720
	tPlayNewBag_Pack[3301720]["LogId"] = 12000594
	tPlayNewBag_Pack[3301720]["RewardItem"] = {}
	tPlayNewBag_Pack[3301720]["RewardItem"][1] = {}
	tPlayNewBag_Pack[3301720]["RewardItem"][1]["Id"] = 626139
	tPlayNewBag_Pack[3301720]["RewardItem"][1]["Attr"] = "0 2 0 0 0 0 0 0 0 0 3"
	tPlayNewBag_Pack[3301720]["RewardItem"][2] = {}
	tPlayNewBag_Pack[3301720]["RewardItem"][2]["Id"] = 101069
	tPlayNewBag_Pack[3301720]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 0 0 0 3"
	tPlayNewBag_Pack[3301720]["RewardItem"][3] = {}
	tPlayNewBag_Pack[3301720]["RewardItem"][3]["Id"] = 170069
	tPlayNewBag_Pack[3301720]["RewardItem"][3]["Attr"] = "0 1 0 0 0 0 0 0 0 0 3"
	
	-- Bag2	新手套装(15版本)
	tPlayNewBag_Pack[3301721] = {}
	tPlayNewBag_Pack[3301721]["DeleteItem"] = {}
	tPlayNewBag_Pack[3301721]["DeleteItem"][1] = {}
	tPlayNewBag_Pack[3301721]["DeleteItem"][1]["Id"] = 3301721
	tPlayNewBag_Pack[3301721]["LogId"] = 12000594
	tPlayNewBag_Pack[3301721]["RewardItem"] = {}
	tPlayNewBag_Pack[3301721]["RewardItem"][1] = {}
	tPlayNewBag_Pack[3301721]["RewardItem"][1]["Id"] = 626029
	tPlayNewBag_Pack[3301721]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 0 0 0 3"
	tPlayNewBag_Pack[3301721]["RewardItem"][2] = {}
	tPlayNewBag_Pack[3301721]["RewardItem"][2]["Id"] = 101009
	tPlayNewBag_Pack[3301721]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3"
	tPlayNewBag_Pack[3301721]["RewardItem"][3] = {}
	tPlayNewBag_Pack[3301721]["RewardItem"][3]["Id"] = 170009
	tPlayNewBag_Pack[3301721]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3"
	
	tPlayNewBag_Pack[3301721]["RewardItem"][4] = {}
	tPlayNewBag_Pack[3301721]["RewardItem"][4]["Id"] = 120089
	tPlayNewBag_Pack[3301721]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3"
	tPlayNewBag_Pack[3301721]["RewardItem"][5] = {}
	tPlayNewBag_Pack[3301721]["RewardItem"][5]["Id"] = 150099
	tPlayNewBag_Pack[3301721]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3"
	tPlayNewBag_Pack[3301721]["RewardItem"][6] = {}
	tPlayNewBag_Pack[3301721]["RewardItem"][6]["Id"] = 160099
	tPlayNewBag_Pack[3301721]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3"
	
	tPlayNewBag_Pack[3301721]["RewardItem"][7] = {}
	tPlayNewBag_Pack[3301721]["RewardItem"][7]["Id"] = 3006291
	tPlayNewBag_Pack[3301721]["RewardItem"][7]["Attr"] = "0 1 3"
	tPlayNewBag_Pack[3301721]["RewardItem"][8] = {}
	tPlayNewBag_Pack[3301721]["RewardItem"][8]["Id"] = 203008
	tPlayNewBag_Pack[3301721]["RewardItem"][8]["Attr"] = "0 1 3"
	tPlayNewBag_Pack[3301721]["RewardItem"][9] = {}
	tPlayNewBag_Pack[3301721]["RewardItem"][9]["Id"] = 201008
	tPlayNewBag_Pack[3301721]["RewardItem"][9]["Attr"] = "0 1 3"
	
	-- Bag3	角色提升
	tPlayNewBag_Pack[3301722] = {}
	tPlayNewBag_Pack[3301722]["LogId"] = 12000594
	tPlayNewBag_Pack[3301722]["RewardItem"] = {}
	tPlayNewBag_Pack[3301722]["RewardItem"][1] = {}
	tPlayNewBag_Pack[3301722]["RewardItem"][1]["Id"] = 3200348
	tPlayNewBag_Pack[3301722]["RewardItem"][1]["Attr"] = "0 1 3"
	tPlayNewBag_Pack[3301722]["RewardItem"][2] = {}
	tPlayNewBag_Pack[3301722]["RewardItem"][2]["Id"] = 3003124
	tPlayNewBag_Pack[3301722]["RewardItem"][2]["Attr"] = "0 30 3"
	tPlayNewBag_Pack[3301722]["RewardItem"][3] = {}
	tPlayNewBag_Pack[3301722]["RewardItem"][3]["Id"] = 3003125
	tPlayNewBag_Pack[3301722]["RewardItem"][3]["Attr"] = "0 30 3"
	tPlayNewBag_Pack[3301722]["RewardItem"][4] = {}
	tPlayNewBag_Pack[3301722]["RewardItem"][4]["Id"] = 3009001
	tPlayNewBag_Pack[3301722]["RewardItem"][4]["Attr"] = "0 3 0 2880 1"
	-- 修为值
	tPlayNewBag_Pack[3301722]["RewardRepairValue"] = {}
	tPlayNewBag_Pack[3301722]["RewardRepairValue"]["Value"] = 500
	-- 经验
	tPlayNewBag_Pack[3301722]["RewardExpTime"] = {}
	tPlayNewBag_Pack[3301722]["RewardExpTime"]["Value"] = 300
	
	-- npc对白获取新手精品套装
	tPlayNewBag_Pack[4] = {}
	tPlayNewBag_Pack[4]["LogId"] = 12000594
	tPlayNewBag_Pack[4]["RewardItem"] = {}
	tPlayNewBag_Pack[4]["RewardItem"][1] = {}
	tPlayNewBag_Pack[4]["RewardItem"][1]["Id"] = 626028
	tPlayNewBag_Pack[4]["RewardItem"][1]["Attr"] = "0 2 3"
	tPlayNewBag_Pack[4]["RewardItem"][2] = {}
	tPlayNewBag_Pack[4]["RewardItem"][2]["Id"] = 101008
	tPlayNewBag_Pack[4]["RewardItem"][2]["Attr"] = "0 1 3"
	tPlayNewBag_Pack[4]["RewardItem"][3] = {}
	tPlayNewBag_Pack[4]["RewardItem"][3]["Id"] = 170008
	tPlayNewBag_Pack[4]["RewardItem"][3]["Attr"] = "0 1 3"
	
----------------------------------参数表-----------------------------------------
-- 基础参数
local tPlayNewBag_Count = {}
	-- 背包空间
	tPlayNewBag_Count["Space"] = {}
	tPlayNewBag_Count["Space"][3301719] = 2
	tPlayNewBag_Count["Space"][3301720] = 3
	tPlayNewBag_Count["Space"][3301721] = 9
	tPlayNewBag_Count["Space"][3301722] = 6
	
	tPlayNewBag_Count["Space"][1] = 1
	tPlayNewBag_Count["Space"][2] = 1
	tPlayNewBag_Count["Space"][3] = 4
	tPlayNewBag_Count["Space"][4] = 4
	
-- 时间参数
	tPlayNewBag_Count["BeforeTime"] = "2016-01-01 00:00 2017-01-11 23:59"
	tPlayNewBag_Count["ActivityTime"] = "2017-01-12 00:00 2017-01-25 23:59"
	-- 花费天石
	tPlayNewBag_Count["BagCost1"] = 799
	tPlayNewBag_Count["NpcCost1"] = 1
	-- 物品类型
	tPlayNewBag_Count["ItemType"] = {}
	tPlayNewBag_Count["ItemType"][1] = 711083
	tPlayNewBag_Count["ItemType"][2] = 3300362
	tPlayNewBag_Count["ItemType"][3] = 3300362
	-- 物品attr
	tPlayNewBag_Count["ItemNum"] = {}
	tPlayNewBag_Count["ItemNum"][1] = "0 1 3"
	tPlayNewBag_Count["ItemNum"][2] = "0 1"
	tPlayNewBag_Count["ItemNum"][3] = "0 1"
	-- 转世和职业需求
	tPlayNewBag_Count["GetNeed"] = {}
	tPlayNewBag_Count["GetNeed"][1] = {}
	tPlayNewBag_Count["GetNeed"][1]["Metempsychosis"] = 0
	tPlayNewBag_Count["GetNeed"][1]["Level"] = 100
	tPlayNewBag_Count["GetNeed"][1]["ProfessionLow"] = 160
	tPlayNewBag_Count["GetNeed"][1]["ProfessionHigh"] = 165
	
	tPlayNewBag_Count["GetNeed"][2] = {}
	tPlayNewBag_Count["GetNeed"][2]["Metempsychosis"] = 1
	tPlayNewBag_Count["GetNeed"][2]["Level"] = 15
	tPlayNewBag_Count["GetNeed"][2]["ProfessionLow"] = 160
	tPlayNewBag_Count["GetNeed"][2]["ProfessionHigh"] = 165
	-- 铁扇门特权增点数
	tPlayNewBag_Count["MonoEmoney"] = 1000
	-- 赠品天石上限 
	tPlayNewBag_Count["MonoEmoneyLimit"] = G_User_MaxEmoneyMono
	
-- stc控制
tPlayNewBag_Count["Stc"] = {}
	-- 特权礼包打开次数控制
	tPlayNewBag_Count["Stc"][3301722] = {}
	tPlayNewBag_Count["Stc"][3301722]["Event"] = 153
	tPlayNewBag_Count["Stc"][3301722]["Type"] = 94
	tPlayNewBag_Count["Stc"][3301722]["End"] = 10
	-- 购买药水次数限制
	tPlayNewBag_Count["Stc"][1] = {}
	tPlayNewBag_Count["Stc"][1]["Event"] = 153
	tPlayNewBag_Count["Stc"][1]["Type"] = 95
	tPlayNewBag_Count["Stc"][1]["End"] = 6
	-- 新建铁扇门500增点领取控制
	tPlayNewBag_Count["Stc"][2] = {}
	tPlayNewBag_Count["Stc"][2]["Event"] = 153
	tPlayNewBag_Count["Stc"][2]["Type"] = 96
	tPlayNewBag_Count["Stc"][2]["End"] = 1
	-- 其他职业转铁扇门500增点控制
	tPlayNewBag_Count["Stc"][3] = {}
	tPlayNewBag_Count["Stc"][3]["Event"] = 153
	tPlayNewBag_Count["Stc"][3]["Type"] = 97
	tPlayNewBag_Count["Stc"][3]["End"] = 1
	-- 赠品套装领取记录
	tPlayNewBag_Count["Stc"][4] = {}
	tPlayNewBag_Count["Stc"][4]["Event"] = 153
	tPlayNewBag_Count["Stc"][4]["Type"] = 98
	tPlayNewBag_Count["Stc"][4]["End"] = 1
	-- 新建账户
	tPlayNewBag_Count["Stc"][5] = {}
	tPlayNewBag_Count["Stc"][5]["Event"] = 155
	tPlayNewBag_Count["Stc"][5]["Type"] = 77
	tPlayNewBag_Count["Stc"][5]["End"] = 1
	
	
-- 铁扇门（160-165）
local tPlayNewBag_Profession = {}
	tPlayNewBag_Profession["Min"] = G_PRO_IroFan0 or 160
	tPlayNewBag_Profession["Max"] = G_PRO_IroFan5 or 165
	
-- emoneylog
local tPlayNewBag_EmoneyBuy = {}
	tPlayNewBag_EmoneyBuy["EmoneyLog"] = {}
	-- 礼包
	tPlayNewBag_EmoneyBuy["EmoneyLog"][3301720] = "350	20443	799	799	1	"
	-- 活动npc
	tPlayNewBag_EmoneyBuy["EmoneyLog"][1] = "350	20420	1	1	1	"
	tPlayNewBag_EmoneyBuy["EmoneyLog"][2] = "350	20421	0	0	1000	"
	tPlayNewBag_EmoneyBuy["EmoneyLog"][3] = "350	20422	0	0	1000	"
	tPlayNewBag_EmoneyBuy["EmoneyLog"][4] = "350	20423	0	0	1	"
	
-- log
local tPlayNewBag_Log ={}
	tPlayNewBag_Log["TenDayLog"] = "0,0,3301722,1,12000594,2[%d],0,1"
	tPlayNewBag_Log["BackLetter"] = "0,0,3301719,1,12000594,0,0,0"

----------------------------------逻辑部分-----------------------------------------
-- 创号背包信
function PlayNewBag_OpenLetter(nItemId)
	-- 时间判断
	if not Sys_ChkFullTime(tPlayNewBag_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_SaveActionFestivalLog(tPlayNewBag_Log["BackLetter"])
			User_TalkChannel2005(tPlayNewBag_Text["DeleteGift"])
			return
		end
	end
	-- 背包空间判断
	local sText = string.format(tPlayNewBag_Text["NoSpace"],tPlayNewBag_Count["Space"][nItemId])
	if not User_CheckLeftSpace(tPlayNewBag_Count["Space"][nItemId]) then
		Sys_MsgBox(sText)
		return
	end
	-- 奖励
	RewardTemplate_UseItem(tPlayNewBag_Pack[nItemId])
	
end

-- Bag1
function PlayNewBag_OpenPack1(nItemId)
	-- 背包空间判断
	local sText = string.format(tPlayNewBag_Text["NoSpace"],tPlayNewBag_Count["Space"][nItemId])
	if not User_CheckLeftSpace(tPlayNewBag_Count["Space"][nItemId]) then
		Sys_MsgBox(sText)
		return
	end
	-- 判断天石
	local nUserId = Get_UserId()
	local nUserEmoney = Get_UserEMoney(nUserId)
	local nCost = tPlayNewBag_Count["BagCost1"]
	if nUserEmoney < nCost then
		Sys_MsgBox(tPlayNewBag_Text["NoEmoneyBag1"])
		return
	end
	-- 扣除天石
	 if User_AddEMoney(-nCost,nUserId) then
		-- log
		Sys_SaveEmoneyBuy(tPlayNewBag_EmoneyBuy["EmoneyLog"][nItemId])
		-- 奖励
		RewardTemplate_UseItem(tPlayNewBag_Pack[nItemId])
	end
	
end

-- Bag2
function PlayNewBag_OpenPack2(nItemId)
	-- 背包空间判断
	local sText = string.format(tPlayNewBag_Text["NoSpace"],tPlayNewBag_Count["Space"][nItemId])
	if not User_CheckLeftSpace(tPlayNewBag_Count["Space"][nItemId]) then
		Sys_MsgBox(sText)
		return
	end
	-- 奖励
	RewardTemplate_UseItem(tPlayNewBag_Pack[nItemId])
	Sys_MsgBox(tPlayNewBag_Text["OpenBag2"])
	
end

-- Bag3
function PlayNewBag_OpenPack3(nItemId)
	local nEvent = tPlayNewBag_Count["Stc"][nItemId]["Event"]
	local nType = tPlayNewBag_Count["Stc"][nItemId]["Type"]
	-- 掩码自增(初化)
	local nHave = tonumber(Get_UserStatisticValue(nEvent,nType))
	-- 	-- 背包空间判断,最后一次空间少一格
	if nHave < (tPlayNewBag_Count["Stc"][nItemId]["End"] - 1) then
		if not User_CheckLeftSpace(tPlayNewBag_Count["Space"][nItemId]) then
			local sText = string.format(tPlayNewBag_Text["NoSpace"],tPlayNewBag_Count["Space"][nItemId])
			Sys_MsgBox(sText)
			return
		end
	else
		if not User_CheckLeftSpace(tPlayNewBag_Count["Space"][nItemId] - 1) then
			local sText = string.format(tPlayNewBag_Text["NoSpace"],tPlayNewBag_Count["Space"][nItemId] - 1)
			Sys_MsgBox(sText)
			return
		end
	end
	-- 隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStcTimestamp(nEvent,nType,0,0)
	else
		Sys_MsgBox(tPlayNewBag_Text["DayOnly"])
		return
	end
	nHave = nHave + 1
	Task_SetStatistic(nEvent,nType,nHave,1)
	-- 记录log
	local sText = string.format(tPlayNewBag_Log["TenDayLog"],nHave)
	Sys_SaveActionFestivalLog(sText)
	-- 第10次使用
	if nHave >= tPlayNewBag_Count["Stc"][nItemId]["End"] then
		--删除礼包
		if not Item_DelItem(nItemId) then
			return
		end
	end
	-- 奖励
	RewardTemplate_UseItem(tPlayNewBag_Pack[nItemId])

end

-- 活动前判断
function PlayNewBag_BeforeActivity()
	if Sys_ChkFullTime(tPlayNewBag_Count["BeforeTime"]) then
		return true
	else
		return false
	end
end

-- npc对白前判断
function PlayNewBag_BeforeTalk()
	-- 时间判断
	if Sys_ChkFullTime(tPlayNewBag_Count["ActivityTime"]) then
		-- 1天石兑换次数
		local nEvent = tPlayNewBag_Count["Stc"][1]["Event"]
		local nType = tPlayNewBag_Count["Stc"][1]["Type"]
		-- 掩码初化
		local nHave = tonumber(Get_UserStatisticValue(nEvent,nType))
		local sText = string.format(tPlayNewBag_Text[20040]["Option1"],tPlayNewBag_Count["Stc"][1]["End"] - nHave)
		tNpcGossip[20040]["Option1"] = sText
		return true
	else
		return false
	end
end

-- 1天石转世药水
function PlayNewBag_ActNpcOpinion1(nIndex,nNpcId)
	-- 背包空间判断
	if not User_CheckLeftSpace(tPlayNewBag_Count["Space"][nIndex]) then
		Sys_MsgBox(tPlayNewBag_Text["NoSpace1"])
		return
	end
	local nEvent = tPlayNewBag_Count["Stc"][nIndex]["Event"]
	local nType = tPlayNewBag_Count["Stc"][nIndex]["Type"]
	-- 掩码初化
	local nHave = tonumber(Get_UserStatisticValue(nEvent,nType))
	-- 6次上限
	if nHave >= tPlayNewBag_Count["Stc"][nIndex]["End"] then
		Sys_MsgBox(tPlayNewBag_Text["BuyLimit"])
		return
	end
	-- 判断天石
	local nUserId = Get_UserId()
	local nUserEmoney = Get_UserEMoney(nUserId)
	local nCost = tPlayNewBag_Count["NpcCost1"]
	if nUserEmoney < nCost then
		-- 跳天石不足对白
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	-- 扣除天石
	 if User_AddEMoney(-nCost,nUserId) then
		-- 给转世药水
		if Item_AddNewItem(tPlayNewBag_Count["ItemType"][nIndex],tPlayNewBag_Count["ItemNum"][nIndex]) then
			-- 打掩码
			nHave = nHave + 1
			Task_SetStatistic(nEvent,nType,nHave,1)
			-- log
			Sys_SaveEmoneyBuy(tPlayNewBag_EmoneyBuy["EmoneyLog"][nIndex])
			-- 出提示
			User_TalkChannel2005(tPlayNewBag_Text["Pill"])
		end
	end

end

-- 0转铁扇门领500增点
function PlayNewBag_ActNpcOpinion2(nIndex)
	-- 背包空间判断
	-- local sText = string.format(tPlayNewBag_Text["NoSpace"],tPlayNewBag_Count["Space"][nIndex])
	-- if not User_CheckLeftSpace(tPlayNewBag_Count["Space"][nIndex]) then
		-- Sys_MsgBox(sText)
		-- return
	-- end
	-- 转世(等级)和职业判断
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	local nMete = Get_UserMetempsychosis(nUserId)
	local nProfession = Get_UserProfession(nUserId)

	-- 职业
	if nProfession < tPlayNewBag_Profession["Min"] or nProfession > tPlayNewBag_Profession["Max"] then
		Sys_MsgBox(tPlayNewBag_Text["NoZero"])
		return
	end

	-- 等级和转世
	if not User_JudgeLevelAndMetempsychosis(tPlayNewBag_Count["GetNeed"][1]["Level"],tPlayNewBag_Count["GetNeed"][1]["Metempsychosis"],nUserId) then
		Sys_MsgBox(tPlayNewBag_Text["NoZero"])
		return
	end

	-- 转世(转世也能拿)
	-- if nMete ~= tPlayNewBag_Count["GetNeed"][1]["Metempsychosis"] then
		-- Sys_MsgBox(tPlayNewBag_Text["NoZero"])
		-- return
	-- end

	-- 新建号掩码判断
	local nEvent5 = tPlayNewBag_Count["Stc"][5]["Event"]
	local nType5 = tPlayNewBag_Count["Stc"][5]["Type"]
	-- 掩码判断
	local nNew = tonumber(Get_UserStatisticValue(nEvent5,nType5))
	if nNew ~= 1 then
		Sys_MsgBox(tPlayNewBag_Text["NoZero"])
		return
	end

	-- 天石(赠)上限
	local nUserEmoney = Get_UserEMoney(nUserId) + tPlayNewBag_Count["MonoEmoney"]
	if nUserEmoney > tPlayNewBag_Count["MonoEmoneyLimit"] then
		Sys_MsgBox(tPlayNewBag_Text["EmoneyLimit"])
		return
	end
	
	local nEvent = tPlayNewBag_Count["Stc"][nIndex]["Event"]
	local nType = tPlayNewBag_Count["Stc"][nIndex]["Type"]
	-- 掩码初化
	local nHave = tonumber(Get_UserStatisticValue(nEvent,nType))
	-- 仅能领1次
	if nHave >= tPlayNewBag_Count["Stc"][nIndex]["End"] then
		Sys_MsgBox(tPlayNewBag_Text["GetLimit"])
		return
	end
	-- 打掩码
	nHave = nHave + 1
	Task_SetStatistic(nEvent,nType,nHave,1)
	-- 领天石赠(打掩码/log/直接给)
	User_AddEMoneyMono(tPlayNewBag_Count["MonoEmoney"],nUserId)
	-- log
	Sys_SaveEmoneyBuy(tPlayNewBag_EmoneyBuy["EmoneyLog"][nIndex])
	-- 出提示
	User_TalkChannel2005(tPlayNewBag_Text["500Mono"])
	-- 领天石赠(打掩码/log/物品)
	-- if Item_AddNewItem(tPlayNewBag_Count["ItemType"][nIndex],tPlayNewBag_Count["ItemNum"][nIndex]) then
		-- 打掩码
		-- nHave = nHave + 1
		-- Task_SetStatistic(nEvent,nType,nHave,1)
		-- log
		-- Sys_SaveEmoneyBuy(tPlayNewBag_EmoneyBuy["EmoneyLog"][nIndex])
		-- 出提示
		-- User_TalkChannel2005(tPlayNewBag_Text["500Mono"])
	-- end
	
end

-- 其他转铁扇,领500增点	赠品套装(头/衣/武器*2)
function PlayNewBag_ActNpcOpinion3(nIndex)
	-- 背包空间判断
	if not User_CheckLeftSpace(tPlayNewBag_Count["Space"][nIndex]) then
		Sys_MsgBox(tPlayNewBag_Text["NoSpace3"])
		return
	end
	-- 转世(等级)和职业判断
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	local nMete = Get_UserMetempsychosis(nUserId)
	local nProfession = Get_UserProfession(nUserId)
	-- 职业
	if nProfession < tPlayNewBag_Profession["Min"] or nProfession > tPlayNewBag_Profession["Max"] then
		Sys_MsgBox(tPlayNewBag_Text["OtherProfession"])
		return
	end
	-- 等级
	if nLevel < tPlayNewBag_Count["GetNeed"][2]["Level"] then
		Sys_MsgBox(tPlayNewBag_Text["OtherProfession"])
		return
	end
	-- 1转
	if nMete < tPlayNewBag_Count["GetNeed"][2]["Metempsychosis"] then
		Sys_MsgBox(tPlayNewBag_Text["OtherProfession"])
		return
	end
	-- 天石(赠)上限
	local nUserEmoney = Get_UserEMoney(nUserId) + tPlayNewBag_Count["MonoEmoney"]
	if nUserEmoney > tPlayNewBag_Count["MonoEmoneyLimit"] then
		Sys_MsgBox(tPlayNewBag_Text["EmoneyLimit"])
		return
	end
	local nNext = nIndex + 1
	local nEvent = tPlayNewBag_Count["Stc"][nIndex]["Event"]
	local nType = tPlayNewBag_Count["Stc"][nIndex]["Type"]
	-- 掩码初化
	local nHave = tonumber(Get_UserStatisticValue(nEvent,nType))
	-- 仅能领1次
	if nHave >= tPlayNewBag_Count["Stc"][nIndex]["End"] then
		Sys_MsgBox(tPlayNewBag_Text["GetLimit"])
		return
	end
	-- 打掩码
	nHave = nHave + 1
	Task_SetStatistic(nEvent,nType,nHave,1)
	-- 领天石赠(打掩码/log)
	RewardTemplate_UseItem(tPlayNewBag_Pack[nNext])
	User_AddEMoneyMono(tPlayNewBag_Count["MonoEmoney"],nUserId)
	-- log
	Sys_SaveEmoneyBuy(tPlayNewBag_EmoneyBuy["EmoneyLog"][nIndex])
	Sys_SaveEmoneyBuy(tPlayNewBag_EmoneyBuy["EmoneyLog"][nNext])
	-- 出提示
	User_TalkChannel2005(tPlayNewBag_Text["MonoAndEquip"])
	-- 领天石赠(打掩码/log/物品)
	-- if Item_AddNewItem(tPlayNewBag_Count["ItemType"][nIndex],tPlayNewBag_Count["ItemNum"][nIndex]) then
		-- 打掩码
		-- nHave = nHave + 1
		-- Task_SetStatistic(nEvent,nType,nHave,1)
		-- log
		-- Sys_SaveEmoneyBuy(tPlayNewBag_EmoneyBuy["EmoneyLog"][nIndex])
		-- 出提示
		-- User_TalkChannel2005(tPlayNewBag_Text["500Mono"])
	-- end
	
end

-- 新增上线自检
function PlayNewBag_NewOneHave()
	local nEvent5 = tPlayNewBag_Count["Stc"][5]["Event"]
	local nType5 = tPlayNewBag_Count["Stc"][5]["Type"]
	local nUserId = Get_UserId()
	local nLevel = tonumber(Get_UserLevel(nUserId))
	local nProfession = Get_UserProfession(nUserId)
	-- 职业
	if nProfession < tPlayNewBag_Profession["Min"] or nProfession > tPlayNewBag_Profession["Max"] then
		return
	end
	-- 等级
	if nLevel ~= 1 then
		return
	end
	local nNew = tonumber(Get_UserStatisticValue(nEvent5,nType5))
	if nNew ~= 1 then
		Task_SetStatistic(nEvent5,nType5,1,1)
	end
	
end

----------------------------------------物品模块-------------------------------------------
-- 背包信
tItem[3301719] = tItem[3301719] or {}
tItem[3301719]["DialogueText"] = tPlayNewBag_Text[3301719]
tItem[3301719]["Text1-1"] = {111}
tItem[3301719]["tOption1-1"] = {1}
tItem[3301719]["OptionFunc1"] = "PlayNewBag_OpenLetter</N>3301719"

-- Bag1
tItem[3301720] = tItem[3301720] or {}
tItem[3301720]["DialogueText"] = tPlayNewBag_Text[3301720]
tItem[3301720]["Text1-1"] = {111}
tItem[3301720]["tOption1-1"] = {1,2}
tItem[3301720]["OptionPoint1"] = "2-1"
-- 二次确认
tItem[3301720]["Text2-1"] = {121}
tItem[3301720]["tOption2-1"] = {3,2}
tItem[3301720]["OptionFunc3"] = "PlayNewBag_OpenPack1</N>3301720"

tItem[3301721] = tItem[3301721] or {}
tItem[3301721]["Function"] = function(nItemId,sItemName)
	PlayNewBag_OpenPack2(nItemId)
end

tItem[3301722] = tItem[3301722] or {}
tItem[3301722]["DialogueText"] = tPlayNewBag_Text[3301722]
tItem[3301722]["Text1-1"] = {111}
tItem[3301722]["tOption1-1"] = {1,2}
tItem[3301722]["OptionFunc1"] = "PlayNewBag_OpenPack3</N>3301722"
tItem[3301722]["ChkFunc1-1"] = function()
	local nEvent = tPlayNewBag_Count["Stc"][3301722]["Event"]
	local nType = tPlayNewBag_Count["Stc"][3301722]["Type"]
	local nNum = tonumber(Get_UserStatisticValue(nEvent,nType))
	if nNum < 9 then
		local sText = string.format(tPlayNewBag_Text[3301722]["Text111"],nNum + 1)
		tItem[3301722]["Text111"] = sText
		return	true
	else
		tItem[3301722]["Text111"] = tPlayNewBag_Text[3301722]["Text121"]
		return	true
	end
end

----------------------------------------npc模块-------------------------------------------
-- 外形
tNpcFace[4476] = 137
tNpcGossip[20040] = tNpcGossip[20040] or DefaultNpc:new{}
tNpcGossip[20040]["OptionHidden"] = 1
tNpcGossip[20040]["DialogueText"] = tPlayNewBag_Text[20040]
-- 活动前
tNpcGossip[20040]["Text1-1"] = {121,122,123}
tNpcGossip[20040]["tOption1-1"] = {6}
tNpcGossip[20040]["ChkFunc1-1"] = function()
	return PlayNewBag_BeforeActivity()
end
-- 活动中
tNpcGossip[20040]["Text1-2"] = {111,112,113,114,115,116}
tNpcGossip[20040]["tOption1-2"] = {1,2,3,4}
tNpcGossip[20040]["OptionFunc1"] = "PlayNewBag_ActNpcOpinion1</N>1</N>20040"
tNpcGossip[20040]["OptionFunc2"] = "PlayNewBag_ActNpcOpinion2</N>2</N>20040"
tNpcGossip[20040]["OptionChkFunc2"] = function()
	local nEvent = tPlayNewBag_Count["Stc"][2]["Event"]
	local nType = tPlayNewBag_Count["Stc"][2]["Type"]
	local nNum = tonumber(Get_UserStatisticValue(nEvent,nType))
	if nNum ~= 1 then
		return	true
	else
		return	false
	end
end
tNpcGossip[20040]["OptionFunc3"] = "PlayNewBag_ActNpcOpinion3</N>3</N>20040"
tNpcGossip[20040]["OptionChkFunc3"] = function()
	local nEvent = tPlayNewBag_Count["Stc"][3]["Event"]
	local nType = tPlayNewBag_Count["Stc"][3]["Type"]
	local nNum = tonumber(Get_UserStatisticValue(nEvent,nType))
	if nNum ~= 1 then
		return	true
	else
		return	false
	end
end
tNpcGossip[20040]["ChkFunc1-2"] = function()
	return PlayNewBag_BeforeTalk()
end
-- 活动后
tNpcGossip[20040]["Text1-3"] = {131}
tNpcGossip[20040]["tOption1-3"] = {7}
-- 天石不足
tNpcGossip[20040]["Text2-1"] = {211}
tNpcGossip[20040]["tOption2-1"] = {7}

--------------------------------------上线触发------------------------------------------------------
-- table.insert(tSystem_PlayLogin_Func,PlayNewBag_NewOneHave)