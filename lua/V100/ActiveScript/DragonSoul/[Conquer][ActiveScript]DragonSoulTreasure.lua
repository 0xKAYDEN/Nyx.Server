------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]龙宫至宝
--Creator:		翁清海
--Created:		2020/02/20
------------------------------------------------------------------------------------

--命名前缀
--DragonSoulTreasure_

--logid:12001869

--------------------------------------------数据部分配置--------------------------------------------
local tDragonSoulTreasure_Time = {}
	tDragonSoulTreasure_Time["ActivityTime"] = tActivityTime["DragonSoulTreasure"]["ActivityTime"]

--常量
local tDragonSoulTreasure_Cont = {}
	--界面id
	tDragonSoulTreasure_Cont["Dialog"] = 1027
	--龙之泪
	tDragonSoulTreasure_Cont["Tear"] = {}
	tDragonSoulTreasure_Cont["Tear"][3] = 3329805
	tDragonSoulTreasure_Cont["Tear"][4] = 3329806
	tDragonSoulTreasure_Cont["Tear"][5] = 3329807
	tDragonSoulTreasure_Cont["Tear"][6] = 3329808
	tDragonSoulTreasure_Cont["Tear"][7] = 3329809
	tDragonSoulTreasure_Cont["Tear"][8] = 3329810
	tDragonSoulTreasure_Cont["Tear"][9] = 3329811
	--龙灵
	tDragonSoulTreasure_Cont["Soul"] = {}
	tDragonSoulTreasure_Cont["Soul"][3] = 4200003
	tDragonSoulTreasure_Cont["Soul"][4] = 4200004
	tDragonSoulTreasure_Cont["Soul"][5] = 4200005
	tDragonSoulTreasure_Cont["Soul"][6] = 4200006
	tDragonSoulTreasure_Cont["Soul"][7] = 4200007
	tDragonSoulTreasure_Cont["Soul"][8] = 4200008
	tDragonSoulTreasure_Cont["Soul"][9] = 4200009
	--天石
	tDragonSoulTreasure_Cont["EMoney"] = {}
	tDragonSoulTreasure_Cont["EMoney"][3] = 20
	tDragonSoulTreasure_Cont["EMoney"][4] = 40
	tDragonSoulTreasure_Cont["EMoney"][5] = 80
	tDragonSoulTreasure_Cont["EMoney"][6] = 160
	tDragonSoulTreasure_Cont["EMoney"][7] = 320
	tDragonSoulTreasure_Cont["EMoney"][8] = 640
	tDragonSoulTreasure_Cont["EMoney"][9] = 1280
	--累积的珍宝令数量
	tDragonSoulTreasure_Cont["Treasure"] = {}
	tDragonSoulTreasure_Cont["Treasure"][3] = 1
	tDragonSoulTreasure_Cont["Treasure"][4] = 2
	tDragonSoulTreasure_Cont["Treasure"][5] = 4
	tDragonSoulTreasure_Cont["Treasure"][6] = 8
	tDragonSoulTreasure_Cont["Treasure"][7] = 16
	tDragonSoulTreasure_Cont["Treasure"][8] = 32
	tDragonSoulTreasure_Cont["Treasure"][9] = 64
	
--升级概率
	tDragonSoulTreasure_Cont["Random"] = {}
	tDragonSoulTreasure_Cont["Random"][0] = 4000
	tDragonSoulTreasure_Cont["Random"][1] = 4600
	tDragonSoulTreasure_Cont["Random"][2] = 5200
	tDragonSoulTreasure_Cont["Random"][3] = 5800
	tDragonSoulTreasure_Cont["Random"][4] = 6400
	tDragonSoulTreasure_Cont["Random"][5] = 7000
	tDragonSoulTreasure_Cont["Random"][6] = 7600
	tDragonSoulTreasure_Cont["Random"][7] = 8200
	tDragonSoulTreasure_Cont["Random"][8] = 8800
	tDragonSoulTreasure_Cont["Random"][9] = 9400
	tDragonSoulTreasure_Cont["Random"][10] = 10000
	--升级概率（显示用）
	tDragonSoulTreasure_Cont["RandomView"] = {}
	tDragonSoulTreasure_Cont["RandomView"][0] = 50
	tDragonSoulTreasure_Cont["RandomView"][1] = 55
	tDragonSoulTreasure_Cont["RandomView"][2] = 60
	tDragonSoulTreasure_Cont["RandomView"][3] = 65
	tDragonSoulTreasure_Cont["RandomView"][4] = 70
	tDragonSoulTreasure_Cont["RandomView"][5] = 75
	tDragonSoulTreasure_Cont["RandomView"][6] = 80
	tDragonSoulTreasure_Cont["RandomView"][7] = 85
	tDragonSoulTreasure_Cont["RandomView"][8] = 90
	tDragonSoulTreasure_Cont["RandomView"][9] = 95
	tDragonSoulTreasure_Cont["RandomView"][10] = 100
	
--掩码
local tDragonSoulTreasure_Stc = {}
	--水灵台激活状态，保存激活后的阶数
	tDragonSoulTreasure_Stc[1] = {}
	tDragonSoulTreasure_Stc[1]["Event"] = 214
	tDragonSoulTreasure_Stc[1]["Type"] = 84
	--保存锻造次数
	tDragonSoulTreasure_Stc[2] = {}
	tDragonSoulTreasure_Stc[2]["Event"] = 214
	tDragonSoulTreasure_Stc[2]["Type"] = 85
	
local tDragonSoulTreasure_Log = {}
	tDragonSoulTreasure_Log["DelTear"] = "0,0,%d,1,12001869,1[1],0,0"
	
local tDragonSoulTreasure_ELog = {}
	tDragonSoulTreasure_ELog["Cost"] = "1000	1533"
	
local tDragonSoulTreasure_Reward = {}
	-- ===注入龙灵
	-- ===索引: tDragonSoulTreasure_Reward["Del"]
	-- ===删除: 4200003,1
	tDragonSoulTreasure_Reward["Del"] = {}
	tDragonSoulTreasure_Reward["Del"]["LogId"] = 12001869
	tDragonSoulTreasure_Reward["Del"]["DeleteItem"] = {}
	tDragonSoulTreasure_Reward["Del"]["DeleteItem"][1] = {}
	tDragonSoulTreasure_Reward["Del"]["DeleteItem"][1]["Id"] = 4200003 -- 【库】P3Anima[属性:584]
	tDragonSoulTreasure_Reward["Del"]["DeleteItem"][1]["PreciousType"] = 372 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulTreasure_Reward["Del"]["RewardEffect"] = {}
	tDragonSoulTreasure_Reward["Del"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulTreasure_Reward["Del"]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulTreasure_Reward["Get"] = {}
	-- ===获得龙灵奖励
	-- ===索引: tDragonSoulTreasure_Reward["Get"]
	tDragonSoulTreasure_Reward["Get"]["LogId"] = 12001869
	tDragonSoulTreasure_Reward["Get"]["RewardItem"] = {}
	tDragonSoulTreasure_Reward["Get"]["RewardItem"][1] = {}
	tDragonSoulTreasure_Reward["Get"]["RewardItem"][1]["Id"] = 4200003 -- P3Anima[4200003][属性:584][叠加:99][金币:0], 【表格】3阶灵珠
	tDragonSoulTreasure_Reward["Get"]["RewardItem"][1]["Attr"] = "0 1" -- P3Anima*1
	tDragonSoulTreasure_Reward["Get"]["RewardItem"][1]["PreciousType"] = 330 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulTreasure_Reward["Get"]["RewardItem"][2] = {}
	tDragonSoulTreasure_Reward["Get"]["RewardItem"][2]["Id"] = 3322775 -- SeniorTreasureToken[3322775][属性:8][叠加:10000][金币:0], 【表格】至尊珍宝令
	tDragonSoulTreasure_Reward["Get"]["RewardItem"][2]["Attr"] = "0 1" -- SeniorTreasureToken*1
	tDragonSoulTreasure_Reward["Get"]["RewardEffect"] = {}
	tDragonSoulTreasure_Reward["Get"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulTreasure_Reward["Get"]["RewardEffect"]["Effect"] = "angelwing"

--------------------------------------------逻辑部分配置--------------------------------------------
--获取玩家掩码
function DragonSoulTreasure_GetStcValue(nDragonSoulTreasure_Index, nDragonSoulTreasure_NowUserId)
	if tDragonSoulTreasure_Stc[nDragonSoulTreasure_Index] == nil then
		return 0
	end
	
	local nDragonSoulTreasure_UserId = nDragonSoulTreasure_NowUserId or Get_UserId()
	local nDragonSoulTreasure_Event = tDragonSoulTreasure_Stc[nDragonSoulTreasure_Index]["Event"]
	local nDragonSoulTreasure_Type = tDragonSoulTreasure_Stc[nDragonSoulTreasure_Index]["Type"]
	local nDragonSoulTreasure_TimeType = tDragonSoulTreasure_Stc[nDragonSoulTreasure_Index]["TimeType"]
	local nDragonSoulTreasure_Delay = tDragonSoulTreasure_Stc[nDragonSoulTreasure_Index]["Delay"]
	
	--是否清零
	if nDragonSoulTreasure_TimeType ~= nil and nDragonSoulTreasure_Delay ~= nil then
		Task_StcReset(nDragonSoulTreasure_Event,nDragonSoulTreasure_Type,nDragonSoulTreasure_UserId,nDragonSoulTreasure_TimeType,nDragonSoulTreasure_Delay)
	end
	
	return Get_UserStatisticValue(nDragonSoulTreasure_Event,nDragonSoulTreasure_Type,nDragonSoulTreasure_UserId)
end

--设置玩家掩码
function DragonSoulTreasure_SetStcValue(nDragonSoulTreasure_Index, sDragonSoulTreasure_Mode, nDragonSoulTreasure_Data, nDragonSoulTreasure_NowUserId)
	if tDragonSoulTreasure_Stc[nDragonSoulTreasure_Index] == nil then
		return false
	end
	
	local nDragonSoulTreasure_UserId = nDragonSoulTreasure_NowUserId or Get_UserId()
	local nDragonSoulTreasure_Event = tDragonSoulTreasure_Stc[nDragonSoulTreasure_Index]["Event"]
	local nDragonSoulTreasure_Type = tDragonSoulTreasure_Stc[nDragonSoulTreasure_Index]["Type"]
	local nDragonSoulTreasure_TimeType = tDragonSoulTreasure_Stc[nDragonSoulTreasure_Index]["TimeType"]
	local nDragonSoulTreasure_Delay = tDragonSoulTreasure_Stc[nDragonSoulTreasure_Index]["Delay"]
	
	--是否清零
	if nDragonSoulTreasure_TimeType ~= nil and nDragonSoulTreasure_Delay ~= nil then
		Task_StcReset(nDragonSoulTreasure_Event,nDragonSoulTreasure_Type,nDragonSoulTreasure_UserId,nDragonSoulTreasure_TimeType,nDragonSoulTreasure_Delay)
	end
	
	--设置掩码
	if sDragonSoulTreasure_Mode == "Set" then
		if Task_SetStatistic(nDragonSoulTreasure_Event,nDragonSoulTreasure_Type,nDragonSoulTreasure_Data,1,nDragonSoulTreasure_UserId) then
			Task_SetStcTimestamp(nDragonSoulTreasure_Event,nDragonSoulTreasure_Type,0,nDragonSoulTreasure_UserId)
			return true
		else
			return false
		end
	--增加掩码
	elseif sDragonSoulTreasure_Mode == "Add" then
		if Task_AddStatistic(nDragonSoulTreasure_Event,nDragonSoulTreasure_Type,nDragonSoulTreasure_Data,1,nDragonSoulTreasure_UserId) then
			Task_SetStcTimestamp(nDragonSoulTreasure_Event,nDragonSoulTreasure_Type,0,nDragonSoulTreasure_UserId)
			return true
		else
			return false
		end
	else
		return false
	end
end

--献上龙之泪
function DragonSoulTreasure_CostTear(nDragonSoulTreasure_Index)
	--时间判断
	if not Sys_ChkFullTime(tDragonSoulTreasure_Time["ActivityTime"]) then
		return
	end
	
	local nDragonSoulTreasure_UserId = Get_UserId()
	
	--是否已激活
	if DragonSoulTreasure_GetStcValue(1, nDragonSoulTreasure_UserId) > 0 then
		return
	end
	
	local nDragonSoulTreasure_ItemId = tDragonSoulTreasure_Cont["Tear"][nDragonSoulTreasure_Index]
	
	--龙之泪是否存在
	if not Item_ChkItem(nDragonSoulTreasure_ItemId,nil,nil,nDragonSoulTreasure_UserId) then
		Sys_MsgBox(string.format(tDragonSoulTreasure_Text["MsgBox"]["NoItem"], nDragonSoulTreasure_Index),nil,nil,nDragonSoulTreasure_UserId)
		return
	end
	
	--扣除龙之泪
	if not Item_DelItem(nDragonSoulTreasure_ItemId,nil,nil,nDragonSoulTreasure_UserId) then
		Sys_MsgBox(string.format(tDragonSoulTreasure_Text["MsgBox"]["NoItem"], nDragonSoulTreasure_Index),nil,nil,nDragonSoulTreasure_UserId)
		return
	end
	
	Sys_SaveActionFestivalLog(string.format(tDragonSoulTreasure_Log["DelTear"], nDragonSoulTreasure_ItemId),nDragonSoulTreasure_UserId)
	
	--掩码设置
	if DragonSoulTreasure_SetStcValue(1, "Set", nDragonSoulTreasure_Index, nDragonSoulTreasure_UserId) then
		local nDragonSoulTreasure_NpcId = Get_NpcId()
		
		--跳转已激活对白
		LinkNpcGossipFunc_New(nDragonSoulTreasure_NpcId, "1")
	end
end

--注入灵珠
function DragonSoulTreasure_CostSoul(nDragonSoulTreasure_Confirm)
	--时间判断
	if not Sys_ChkFullTime(tDragonSoulTreasure_Time["ActivityTime"]) then
		return
	end
	
	local nDragonSoulTreasure_UserId = Get_UserId()
	
	--当前激活的阶数
	local nDragonSoulTreasure_Index = DragonSoulTreasure_GetStcValue(1, nDragonSoulTreasure_UserId)
	
	--未激活
	if nDragonSoulTreasure_Index <= 0 then
		return
	end
	
	--背包空间判断
	local nDragonSoulTreasure_Space = RewardTemplate_GetRewardSpace(tDragonSoulTreasure_Reward["Get"], nDragonSoulTreasure_UserId)
	
	if nDragonSoulTreasure_Space > 0 and (not User_CheckLeftSpace(nDragonSoulTreasure_Space,nDragonSoulTreasure_UserId)) then
		Sys_MsgBox(string.format(tDragonSoulTreasure_Text["MsgBox"]["NoSpace"], nDragonSoulTreasure_Space),nil,nil,nDragonSoulTreasure_UserId)
		return
	end
	
	--当前龙灵
	local nDragonSoulTreasure_SoulId = tDragonSoulTreasure_Cont["Soul"][nDragonSoulTreasure_Index]
	
	local nDragonSoulTreasure_NpcId = Get_NpcId()
	
	--没有龙灵时替换的天石数
	local nDragonSoulTreasure_EMoney = tDragonSoulTreasure_Cont["EMoney"][nDragonSoulTreasure_Index]
	
	if nDragonSoulTreasure_Confirm == nil then
		--判断当前背包是否有龙灵
		if Item_ChkItem(nDragonSoulTreasure_SoulId,nil,nil,nDragonSoulTreasure_UserId) then
			tNpcGossip[nDragonSoulTreasure_NpcId]["Text221"] = string.format(tDragonSoulTreasure_Text[nDragonSoulTreasure_NpcId]["Text221"], nDragonSoulTreasure_Index,nDragonSoulTreasure_Index)
			tNpcGossip[nDragonSoulTreasure_NpcId]["Option221"] = string.format(tDragonSoulTreasure_Text[nDragonSoulTreasure_NpcId]["Option221"], nDragonSoulTreasure_Index)
			
			LinkNpcGossipFunc_New(nDragonSoulTreasure_NpcId, "2-2")
		else
			tNpcGossip[nDragonSoulTreasure_NpcId]["Text211"] = string.format(tDragonSoulTreasure_Text[nDragonSoulTreasure_NpcId]["Text211"], nDragonSoulTreasure_Index,nDragonSoulTreasure_EMoney)
			tNpcGossip[nDragonSoulTreasure_NpcId]["Option211"] = string.format(tDragonSoulTreasure_Text[nDragonSoulTreasure_NpcId]["Option211"], nDragonSoulTreasure_EMoney, nDragonSoulTreasure_Index)
			
			LinkNpcGossipFunc_New(nDragonSoulTreasure_NpcId, "2-1")
		end
		
		return
	--天石购买二次确认
	elseif nDragonSoulTreasure_Confirm == 1 then
		--检查天石
		if Get_UserEMoney(nHeavenDress_UserId) < nDragonSoulTreasure_EMoney then
			Sys_MsgBox(tDragonSoulTreasure_Text["MsgBox"]["NoEMoney"],nil,nil,nDragonSoulTreasure_UserId)
			return
		end
		
		tNpcGossip[nDragonSoulTreasure_NpcId]["Text311"] = string.format(tDragonSoulTreasure_Text[nDragonSoulTreasure_NpcId]["Text311"], nDragonSoulTreasure_EMoney,nDragonSoulTreasure_Index)
		tNpcGossip[nDragonSoulTreasure_NpcId]["Option311"] = string.format(tDragonSoulTreasure_Text[nDragonSoulTreasure_NpcId]["Option311"], nDragonSoulTreasure_EMoney)
		
		LinkNpcGossipFunc_New(nDragonSoulTreasure_NpcId, "3-1")
		
		return
	--龙灵确认购买
	elseif nDragonSoulTreasure_Confirm == 2 then
		if not Item_ChkItem(nDragonSoulTreasure_SoulId,nil,nil,nDragonSoulTreasure_UserId) then
			tNpcGossip[nDragonSoulTreasure_NpcId]["Text211"] = string.format(tDragonSoulTreasure_Text[nDragonSoulTreasure_NpcId]["Text211"], nDragonSoulTreasure_Index,nDragonSoulTreasure_EMoney)
			tNpcGossip[nDragonSoulTreasure_NpcId]["Option211"] = string.format(tDragonSoulTreasure_Text[nDragonSoulTreasure_NpcId]["Option211"], nDragonSoulTreasure_EMoney, nDragonSoulTreasure_Index)
			
			LinkNpcGossipFunc_New(nDragonSoulTreasure_NpcId, "2-1")
			
			return
		end
		
		local tDragonSoulTreasure_Del = CommonFunc_Copy(tDragonSoulTreasure_Reward["Del"])
		
		tDragonSoulTreasure_Del["DeleteItem"][1]["Id"] = nDragonSoulTreasure_SoulId
		
		--扣除龙灵
		if not RewardTemplate_UseItemAndMsg(tDragonSoulTreasure_Del,nDragonSoulTreasure_UserId) then
			return
		end
	--天石确认购买
	elseif nDragonSoulTreasure_Confirm == 3 then
		--检查天石
		if Get_UserEMoney(nHeavenDress_UserId) < nDragonSoulTreasure_EMoney then
			Sys_MsgBox(tDragonSoulTreasure_Text["MsgBox"]["NoEMoney"],nil,nil,nDragonSoulTreasure_UserId)
			return
		end
		
		--扣除天石
		if not User_AddEMoneyAndLog(-nDragonSoulTreasure_EMoney,tDragonSoulTreasure_ELog["Cost"],nDragonSoulTreasure_UserId) then
			return
		end
	else
		return
	end
	
	--锻造次数
	local nDragonSoulTreasure_Num = DragonSoulTreasure_GetStcValue(2, nDragonSoulTreasure_UserId)
	--当前概率
	local nDragonSoulTreasure_Random = tDragonSoulTreasure_Cont["Random"][nDragonSoulTreasure_Num]
	
	--随机
	if Sys_Random(nDragonSoulTreasure_Random,10000) then
		--清除激活掩码
		DragonSoulTreasure_SetStcValue(1, "Set", 0, nDragonSoulTreasure_UserId)
		--清除锻造次数掩码
		DragonSoulTreasure_SetStcValue(2, "Set", 0, nDragonSoulTreasure_UserId)
		
		local tDragonSoulTreasure_Get = CommonFunc_Copy(tDragonSoulTreasure_Reward["Get"])
		
		--获得的龙灵
		tDragonSoulTreasure_Get["RewardItem"][1]["Id"] = nDragonSoulTreasure_SoulId + 1
		
		--计算珍宝令数量
		local nDragonSoulTreasure_TreasureNum = nDragonSoulTreasure_Num * tDragonSoulTreasure_Cont["Treasure"][nDragonSoulTreasure_Index]
		
		if nDragonSoulTreasure_TreasureNum <= 0 then
			tDragonSoulTreasure_Get["RewardItem"][2] = nil
		else
			tDragonSoulTreasure_Get["RewardItem"][2]["Attr"] = "0 "..nDragonSoulTreasure_TreasureNum
		end
		
		--奖励模板给奖
		if RewardTemplate_UseItemAndMsg(tDragonSoulTreasure_Get,nDragonSoulTreasure_UserId) then
			Sys_MsgBox(string.format(tDragonSoulTreasure_Text["MsgBox"]["Succ"], nDragonSoulTreasure_Index + 1),nil,nil,nDragonSoulTreasure_UserId)
			
			local sDragonSoulTreasure_Name = Get_UserName(nDragonSoulTreasure_UserId)
			
			--全服公告
			if nDragonSoulTreasure_Index >= 3 and nDragonSoulTreasure_Index <= 4 then
				Sys_TalkBroadcast(string.format(tDragonSoulTreasure_Text["Broadcast"]["Low"], sDragonSoulTreasure_Name, nDragonSoulTreasure_Index + 1))
			elseif nDragonSoulTreasure_Index >= 5 and nDragonSoulTreasure_Index <= 7 then
				Sys_TalkBroadcast(string.format(tDragonSoulTreasure_Text["Broadcast"]["Mid"], sDragonSoulTreasure_Name, nDragonSoulTreasure_Index + 1))
			else
				Sys_TalkBroadcast(string.format(tDragonSoulTreasure_Text["Broadcast"]["High"], nDragonSoulTreasure_Index + 1, sDragonSoulTreasure_Name))
			end
		end
	else
		--锻造次数掩码值+1
		if DragonSoulTreasure_SetStcValue(2, "Add", 1, nDragonSoulTreasure_UserId) then
			local nDragonSoulTreasure_Fail = math.random(1, #tDragonSoulTreasure_Text["MsgBox"]["Fail"])
			
			Sys_MsgBox(tDragonSoulTreasure_Text["MsgBox"]["Fail"][nDragonSoulTreasure_Fail],nil,nil,nDragonSoulTreasure_UserId)
		end
	end
end

--解除激活状态
function DragonSoulTreasure_RemoveBinding()
	--时间判断
	if not Sys_ChkFullTime(tDragonSoulTreasure_Time["ActivityTime"]) then
		return
	end
	
	local nDragonSoulTreasure_UserId = Get_UserId()
	
	--当前激活的阶数
	local nDragonSoulTreasure_Index = DragonSoulTreasure_GetStcValue(1, nDragonSoulTreasure_UserId)
	
	--未激活
	if nDragonSoulTreasure_Index <= 0 then
		return
	end
	
	--清除激活掩码
	DragonSoulTreasure_SetStcValue(1, "Set", 0, nDragonSoulTreasure_UserId)
	--清除锻造次数掩码
	DragonSoulTreasure_SetStcValue(2, "Set", 0, nDragonSoulTreasure_UserId)
	
	Sys_MsgBox(tDragonSoulTreasure_Text["MsgBox"]["Remove"],nil,nil,nDragonSoulTreasure_UserId)
end

--打开界面
function DragonSoulTreasure_OpenDialog()
	--时间判断
	if not Sys_ChkFullTime(tDragonSoulTreasure_Time["ActivityTime"]) then
		return
	end
	
	User_OpenDialog(tDragonSoulTreasure_Cont["Dialog"])
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--水灵台
tNpcFace[4060] = 2814
tNpcGossip[25989] = tNpcGossip[25966] or DefaultNpc:new{}
tNpcGossip[25989]["DialogueText"] = tDragonSoulTreasure_Text[25989]
tNpcGossip[25989]["OptionHidden"] = 1

--未激活
tNpcGossip[25989]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25989]["ChkFunc1-1"] = function()
	return DragonSoulTreasure_GetStcValue(1) <= 0
end
tNpcGossip[25989]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[25989]["OptionFunc111"] = "DragonSoulTreasure_CostTear</N>3"
tNpcGossip[25989]["OptionFunc112"] = "DragonSoulTreasure_CostTear</N>4"
tNpcGossip[25989]["OptionFunc113"] = "DragonSoulTreasure_CostTear</N>5"
tNpcGossip[25989]["OptionFunc114"] = "DragonSoulTreasure_CostTear</N>6"
tNpcGossip[25989]["OptionFunc115"] = "DragonSoulTreasure_CostTear</N>7"
tNpcGossip[25989]["OptionFunc116"] = "DragonSoulTreasure_CostTear</N>8"
tNpcGossip[25989]["OptionFunc117"] = "DragonSoulTreasure_CostTear</N>9"
tNpcGossip[25989]["OptionFunc118"] = "DragonSoulTreasure_OpenDialog"
tNpcGossip[25989]["OptionChkFunc111"] = function()
	return Item_ChkItem(3329805)
end
tNpcGossip[25989]["OptionChkFunc112"] = function()
	return Item_ChkItem(3329806)
end
tNpcGossip[25989]["OptionChkFunc113"] = function()
	return Item_ChkItem(3329807)
end
tNpcGossip[25989]["OptionChkFunc114"] = function()
	return Item_ChkItem(3329808)
end
tNpcGossip[25989]["OptionChkFunc115"] = function()
	return Item_ChkItem(3329809)
end
tNpcGossip[25989]["OptionChkFunc116"] = function()
	return Item_ChkItem(3329810)
end
tNpcGossip[25989]["OptionChkFunc117"] = function()
	return Item_ChkItem(3329811)
end

--已激活
tNpcGossip[25989]["Text1-2"] = {121,122,123,124,125,126,127,128}
tNpcGossip[25989]["ChkFunc1-2"] = function()
	--当前激活的阶数
	local nDragonSoulTreasure_Index = DragonSoulTreasure_GetStcValue(1)
	
	if nDragonSoulTreasure_Index <= 0 then
		return false
	end
	
	--锻造次数
	local nDragonSoulTreasure_Num = DragonSoulTreasure_GetStcValue(2)
	--显示概率
	local nDragonSoulTreasure_Random = tDragonSoulTreasure_Cont["RandomView"][nDragonSoulTreasure_Num]
	
	tNpcGossip[25989]["Text126"] = string.format(tDragonSoulTreasure_Text[25989]["Text126"], nDragonSoulTreasure_Index)
	tNpcGossip[25989]["Text127"] = string.format(tDragonSoulTreasure_Text[25989]["Text127"], nDragonSoulTreasure_Random)
	tNpcGossip[25989]["Option121"] = string.format(tDragonSoulTreasure_Text[25989]["Option121"], nDragonSoulTreasure_Index)
	
	return true
end
tNpcGossip[25989]["tOption1-2"] = {121,122}
tNpcGossip[25989]["OptionFunc121"] = "DragonSoulTreasure_CostSoul"
tNpcGossip[25989]["OptionPoint122"] = "2-3"

--身上没有灵珠
tNpcGossip[25989]["Text2-1"] = {211}
tNpcGossip[25989]["tOption2-1"] = {211}
tNpcGossip[25989]["OptionFunc211"] = "DragonSoulTreasure_CostSoul</N>1"

--身上有灵珠
tNpcGossip[25989]["Text2-2"] = {221}
tNpcGossip[25989]["tOption2-2"] = {221}
tNpcGossip[25989]["OptionFunc221"] = "DragonSoulTreasure_CostSoul</N>2"

--解除水灵台的激活状态
tNpcGossip[25989]["Text2-3"] = {231,232,233}
tNpcGossip[25989]["tOption2-3"] = {231,232}
tNpcGossip[25989]["OptionFunc231"] = "DragonSoulTreasure_RemoveBinding"

--确定花费天石
tNpcGossip[25989]["Text3-1"] = {311}
tNpcGossip[25989]["tOption3-1"] = {311}
tNpcGossip[25989]["OptionFunc311"] = "DragonSoulTreasure_CostSoul</N>3"


---------------------------------------------物品模块---------------------------------------------
--P3DragonTear
tItem[3329805] = tItem[3329805] or {}
tItem[3329805]["Function"] = function(nItemId,sItemName)
	--时间判断
	if not Sys_ChkFullTime(tDragonSoulTreasure_Time["ActivityTime"]) then
		return
	end
	
	NpcPosition_PathFind(25989)
end

--P4DragonTear
tItem[3329806] = tItem[3329805]
--P5DragonTear
tItem[3329807] = tItem[3329805]
--P6DragonTear
tItem[3329808] = tItem[3329805]
--P7DragonTear
tItem[3329809] = tItem[3329805]
--P8DragonTear
tItem[3329810] = tItem[3329805]
--P9DragonTear
tItem[3329811] = tItem[3329805]
---------------------------------------------怪物模块---------------------------------------------

---------------------------------------------陷阱模块---------------------------------------------

