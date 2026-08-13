------------------------------------------------------------------------------------
--Name：            181220[英文征服][活动脚本]新年月卡包（1.3-1.31）
--Creator:      王贤

--Created:     2018-12-20
------------------------------------------------------------------------------------
--任务需求：
-- 1月3日（周四）例行维护时 全区全服

-- 活动时间：
-- 01.03-01.31

-- 活动说明：
-- 详见附件。



-- ******************************************************************
-- *欧桂容(市场运营中心海外事业部英文市场二组)在2018-12-10 20:38修改任务(任务号：9603415)时补充了如下需求：
-- ******************************************************************
 -- 月卡包不可交易

-- ******************************************************************
-- *欧桂容(市场运营中心海外事业部英文市场二组)在2018-12-20 16:05修改任务(任务号：9603415)时补充了如下需求：
-- ******************************************************************
-- 天石打开月卡包加emoney_buy log，便于统计活动效果。

-- 1000天石打开月卡包 350 21965
------------------------------------------------------------------------------------
-- 前缀
-- 2019JanMonthlyCard_

-- LogId： 12001250
------------------------------------------------------------------------------------
-- stc(187, 66)  1、月卡包使用次数
----------------------------------表配置部分--------------------------------------------
local t2019JanMonthlyCard_Data = {}
-- 掩码
t2019JanMonthlyCard_Data["Stc"] = {}
t2019JanMonthlyCard_Data["Stc"]["Event"] = {}
t2019JanMonthlyCard_Data["Stc"]["Data"] = {}
-- stc(187, 66)  1、月卡包使用次数
t2019JanMonthlyCard_Data["Stc"]["Event"][1] = 187
t2019JanMonthlyCard_Data["Stc"]["Data"][1] = 66
-- stc(190, 14)  2、3月卡包使用次数
t2019JanMonthlyCard_Data["Stc"]["Event"][2] = 190
t2019JanMonthlyCard_Data["Stc"]["Data"][2] = 14

-- 所需天石
t2019JanMonthlyCard_Data["NeedEmoney"] = 1000
-- 可获赠点
t2019JanMonthlyCard_Data["GetEmoneyMono"] = 500
t2019JanMonthlyCard_Data["SpringGetEmoneyMono"] = 300

-- log
t2019JanMonthlyCard_Data["Log"] = {}
-- 过期log
t2019JanMonthlyCard_Data["Log"]["OutTimeLog"] = "0,0,%d,%d,12001250,2,0,0"
-- EmoneyLog
t2019JanMonthlyCard_Data["Log"]["EmoneyLog"] = "350	21965	1000	1000	1	"


local t2019JanMonthlyCard_Reward = {}
-- 首次打开礼包奖励
-- 1个30天赠品称号WesternOverlord
t2019JanMonthlyCard_Reward[3319028] = {}
t2019JanMonthlyCard_Reward[3319028]["RewardTitle"] = {}
t2019JanMonthlyCard_Reward[3319028]["RewardTitle"]["TitleType"] = 2077
t2019JanMonthlyCard_Reward[3319028]["RewardTitle"]["TitleId"] = 2077
t2019JanMonthlyCard_Reward[3319028]["RewardTitle"]["SaveTime"] = 43200
-- 30张小抽奖券
t2019JanMonthlyCard_Reward[3319028]["RewardItem"] = {}
t2019JanMonthlyCard_Reward[3319028]["RewardItem"][1] = {}
t2019JanMonthlyCard_Reward[3319028]["RewardItem"][1]["Id"] = 3003651
t2019JanMonthlyCard_Reward[3319028]["RewardItem"][1]["Attr"] = "0 1 3"
-- 1个龙珠卷
t2019JanMonthlyCard_Reward[3319028]["RewardItem"][2] = {}
t2019JanMonthlyCard_Reward[3319028]["RewardItem"][2]["Id"] = 3300177
t2019JanMonthlyCard_Reward[3319028]["RewardItem"][2]["Attr"] = "0 1 3"
t2019JanMonthlyCard_Reward[3319028]["LogId"] = 12001250
t2019JanMonthlyCard_Reward[3319028]["LogStep"] = "1[1]"
t2019JanMonthlyCard_Reward[3319028]["RewardEffect"] = {}
t2019JanMonthlyCard_Reward[3319028]["RewardEffect"]["Effect"] = "angelwing"

-- 首次打开礼包奖励
-- 15天时效SirenSong
t2019JanMonthlyCard_Reward[3320160] = {}
t2019JanMonthlyCard_Reward[3320160]["RewardWing"] = {}
t2019JanMonthlyCard_Reward[3320160]["RewardWing"]["TitleType"] = 6017
t2019JanMonthlyCard_Reward[3320160]["RewardWing"]["TitleId"] = 6017
t2019JanMonthlyCard_Reward[3320160]["RewardWing"]["SaveTime"] = 21600
-- +6赤练石赠
t2019JanMonthlyCard_Reward[3320160]["RewardItem"] = {}
t2019JanMonthlyCard_Reward[3320160]["RewardItem"][1] = {}
t2019JanMonthlyCard_Reward[3320160]["RewardItem"][1]["Id"] = 730006
t2019JanMonthlyCard_Reward[3320160]["RewardItem"][1]["Attr"] = "0 1 3"
-- 100天石锁妖盒
t2019JanMonthlyCard_Reward[3320160]["RewardItem"][2] = {}
t2019JanMonthlyCard_Reward[3320160]["RewardItem"][2]["Id"] = 720652
t2019JanMonthlyCard_Reward[3320160]["RewardItem"][2]["Attr"] = "0 3"
t2019JanMonthlyCard_Reward[3320160]["LogId"] = 12001250
t2019JanMonthlyCard_Reward[3320160]["LogStep"] = "1[1]"
t2019JanMonthlyCard_Reward[3320160]["RewardEffect"] = {}
t2019JanMonthlyCard_Reward[3320160]["RewardEffect"]["Effect"] = "angelwing"

-- 非首次打开礼包
local t2019JanMonthlyCard_RandomReward = {}
t2019JanMonthlyCard_RandomReward[3319028] = {}
t2019JanMonthlyCard_RandomReward[3319028]["ItemChanceSum"] = 10000
t2019JanMonthlyCard_RandomReward[3319028]["LogId"] = 12001250
t2019JanMonthlyCard_RandomReward[3319028]["LogStep"] = "1[%d]"
-- 2个明亮星陨石
t2019JanMonthlyCard_RandomReward[3319028][1] = {}
t2019JanMonthlyCard_RandomReward[3319028][1]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3319028][1]["ItemChance"] = 2500
t2019JanMonthlyCard_RandomReward[3319028][1]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3319028][1]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3319028][1]["RewardItem"][1]["Id"] = 3009001
t2019JanMonthlyCard_RandomReward[3319028][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
-- 2个赠品赤练石+3
t2019JanMonthlyCard_RandomReward[3319028][2] = {}
t2019JanMonthlyCard_RandomReward[3319028][2]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3319028][2]["ItemChance"] = 2900
t2019JanMonthlyCard_RandomReward[3319028][2]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3319028][2]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3319028][2]["RewardItem"][1]["Id"] = 3306879
t2019JanMonthlyCard_RandomReward[3319028][2]["RewardItem"][1]["Attr"] = "0 1"
-- 2个赠品龙珠
t2019JanMonthlyCard_RandomReward[3319028][3] = {}
t2019JanMonthlyCard_RandomReward[3319028][3]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3319028][3]["ItemChance"] = 2500
t2019JanMonthlyCard_RandomReward[3319028][3]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3319028][3]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3319028][3]["RewardItem"][1]["Id"] = 3306880
t2019JanMonthlyCard_RandomReward[3319028][3]["RewardItem"][1]["Attr"] = "0 1"
-- 1匹赠品+4马
t2019JanMonthlyCard_RandomReward[3319028][4] = {}
t2019JanMonthlyCard_RandomReward[3319028][4]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3319028][4]["ItemChance"] = 1000
t2019JanMonthlyCard_RandomReward[3319028][4]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3319028][4]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3319028][4]["RewardItem"][1]["Id"] = 729008
t2019JanMonthlyCard_RandomReward[3319028][4]["RewardItem"][1]["Attr"] = "0 1 3"
-- 500点赠品天石
t2019JanMonthlyCard_RandomReward[3319028][5] = {}
t2019JanMonthlyCard_RandomReward[3319028][5]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3319028][5]["ItemChance"] = 500
t2019JanMonthlyCard_RandomReward[3319028][5]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3319028][5]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3319028][5]["RewardItem"][1]["Id"] = 3200027
t2019JanMonthlyCard_RandomReward[3319028][5]["RewardItem"][1]["Attr"] = "0 1"
-- 1500点气力值
t2019JanMonthlyCard_RandomReward[3319028][6] = {}
t2019JanMonthlyCard_RandomReward[3319028][6]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3319028][6]["ItemChance"] = 500
t2019JanMonthlyCard_RandomReward[3319028][6]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3319028][6]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3319028][6]["RewardItem"][1]["Id"] = 3310677
t2019JanMonthlyCard_RandomReward[3319028][6]["RewardItem"][1]["Attr"] = "0 1"
-- 1个赠品金刚尖钻
t2019JanMonthlyCard_RandomReward[3319028][7] = {}
t2019JanMonthlyCard_RandomReward[3319028][7]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3319028][7]["ItemChance"] = 100
t2019JanMonthlyCard_RandomReward[3319028][7]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3319028][7]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3319028][7]["RewardItem"][1]["Id"] = 3301811
t2019JanMonthlyCard_RandomReward[3319028][7]["RewardItem"][1]["Attr"] = "0 1"


t2019JanMonthlyCard_RandomReward[3320160] = {}
t2019JanMonthlyCard_RandomReward[3320160]["ItemChanceSum"] = 10000
t2019JanMonthlyCard_RandomReward[3320160]["LogId"] = 12001250
t2019JanMonthlyCard_RandomReward[3320160]["LogStep"] = "1[%d]"
-- 小抽奖券（不是礼包）
t2019JanMonthlyCard_RandomReward[3320160][1] = {}
t2019JanMonthlyCard_RandomReward[3320160][1]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3320160][1]["ItemChance"] = 2500
t2019JanMonthlyCard_RandomReward[3320160][1]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3320160][1]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3320160][1]["RewardItem"][1]["Id"] = 711504
t2019JanMonthlyCard_RandomReward[3320160][1]["RewardItem"][1]["Attr"] = "0 1 3"
-- +3赤练石赠
t2019JanMonthlyCard_RandomReward[3320160][2] = {}
t2019JanMonthlyCard_RandomReward[3320160][2]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3320160][2]["ItemChance"] = 2900
t2019JanMonthlyCard_RandomReward[3320160][2]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3320160][2]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3320160][2]["RewardItem"][1]["Id"] = 730003
t2019JanMonthlyCard_RandomReward[3320160][2]["RewardItem"][1]["Attr"] = "0 1 3"
-- 龙珠
t2019JanMonthlyCard_RandomReward[3320160][3] = {}
t2019JanMonthlyCard_RandomReward[3320160][3]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3320160][3]["ItemChance"] = 2550
t2019JanMonthlyCard_RandomReward[3320160][3]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3320160][3]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3320160][3]["RewardItem"][1]["Id"] = 1088000
t2019JanMonthlyCard_RandomReward[3320160][3]["RewardItem"][1]["Attr"] = "0 1 3"
-- 马匹+3
t2019JanMonthlyCard_RandomReward[3320160][4] = {}
t2019JanMonthlyCard_RandomReward[3320160][4]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3320160][4]["ItemChance"] = 1000
t2019JanMonthlyCard_RandomReward[3320160][4]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3320160][4]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3320160][4]["RewardItem"][1]["Id"] = 3307900
t2019JanMonthlyCard_RandomReward[3320160][4]["RewardItem"][1]["Attr"] = "0 1 3"
-- 300点赠品天石
t2019JanMonthlyCard_RandomReward[3320160][5] = {}
t2019JanMonthlyCard_RandomReward[3320160][5]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3320160][5]["ItemChance"] = 500
t2019JanMonthlyCard_RandomReward[3320160][5]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3320160][5]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3320160][5]["RewardItem"][1]["Id"] = 3300794
t2019JanMonthlyCard_RandomReward[3320160][5]["RewardItem"][1]["Attr"] = "0 1"
-- 1500点气力值
t2019JanMonthlyCard_RandomReward[3320160][6] = {}
t2019JanMonthlyCard_RandomReward[3320160][6]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3320160][6]["ItemChance"] = 500
t2019JanMonthlyCard_RandomReward[3320160][6]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3320160][6]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3320160][6]["RewardItem"][1]["Id"] = 3310677
t2019JanMonthlyCard_RandomReward[3320160][6]["RewardItem"][1]["Attr"] = "0 1"
-- 1个赠品金刚尖钻
t2019JanMonthlyCard_RandomReward[3320160][7] = {}
t2019JanMonthlyCard_RandomReward[3320160][7]["RandomItemChanceType"] = 2
t2019JanMonthlyCard_RandomReward[3320160][7]["ItemChance"] = 50
t2019JanMonthlyCard_RandomReward[3320160][7]["RewardItem"] = {}
t2019JanMonthlyCard_RandomReward[3320160][7]["RewardItem"][1] = {}
t2019JanMonthlyCard_RandomReward[3320160][7]["RewardItem"][1]["Id"] = 1200005
t2019JanMonthlyCard_RandomReward[3320160][7]["RewardItem"][1]["Attr"] = "0 1 3"


----------------------------------逻辑部分---------------------------------------------
-- 第一次使用月卡包
function f2019JanMonthlyCard_FirstUse(nItemId)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["NotItem"])
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["2019JanMonthlyCard"]["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(t2019JanMonthlyCard_Text["SysTalk"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(t2019JanMonthlyCard_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(t2019JanMonthlyCard_Reward[3319028]) then
		return
	end
	-- 判断天石
	local nNeedEemoney = t2019JanMonthlyCard_Data["NeedEmoney"]
	if Get_UserEMoney() < nNeedEemoney then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["NotEmoughEMoney"])
		return
	end
	-- 天石扣款
	if not User_AddEMoney(-nNeedEemoney) then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["NotEmoughEMoney"])
		return
	end
	-- 记录log
	Sys_SaveEmoneyBuy(t2019JanMonthlyCard_Data["Log"]["EmoneyLog"])
	-- 记录掩码为1
	local nEvent = t2019JanMonthlyCard_Data["Stc"]["Event"][1]
	local nData = t2019JanMonthlyCard_Data["Stc"]["Data"][1]
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	-- 获得奖励
	RewardTemplate_UseItemAndMsg(t2019JanMonthlyCard_Reward[3319028])
end

-- 非第一次开礼包
function f2019JanMonthlyCard_NotFirstUse(nItemId)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["NotItem"])
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["2019JanMonthlyCard"]["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(t2019JanMonthlyCard_Text["SysTalk"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(t2019JanMonthlyCard_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断隔天
	local nEvent = t2019JanMonthlyCard_Data["Stc"]["Event"][1]
	local nData = t2019JanMonthlyCard_Data["Stc"]["Data"][1]
	if not Task_StcInterval(nEvent, nData, 1, 4) then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["UsedToday"])
		return
	end
	-- 判断背包空间
	if not RewardTemplate_ChkRandomSpace(t2019JanMonthlyCard_RandomReward, nItemId) then
		local nSpace = RewardTemplate_GetRandomSpace(t2019JanMonthlyCard_RandomReward, nItemId)
		local sSpace = string.format(t2019JanMonthlyCard_Text["SysTalk"]["NotSpace"], nSpace)
		User_TalkChannel2005(sSpace)
		return
	end
	-- 判断赠点上限
	if Get_UserMonoEMoney() + t2019JanMonthlyCard_Data["GetEmoneyMono"] > G_User_MaxEmoneyMono then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["FullEMoneyMono"])
		return
	end
	-- 增加掩码标记
	Task_AddStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	local nTimes = Get_UserStatisticValue(nEvent, nData)
	-- 设置log标记
	local tReward = CommonFunc_Copy(t2019JanMonthlyCard_RandomReward)
	tReward[nItemId]["LogStep"] = string.format(t2019JanMonthlyCard_RandomReward[3319028]["LogStep"], nTimes)
	RewardTemplate_NewRandom(tReward, nItemId)
end

-- 使用月卡
function f2019JanMonthlyCard_UseMonthCard(nItemId)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["NotItem"])
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["2019JanMonthlyCard"]["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(t2019JanMonthlyCard_Text["SysTalk"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(t2019JanMonthlyCard_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	local nEvent = t2019JanMonthlyCard_Data["Stc"]["Event"][1]
	local nData = t2019JanMonthlyCard_Data["Stc"]["Data"][1]
	-- 第一次打开
	if Task_ChkStcValue(nEvent, nData, "==", 0) then
		LinkItemGossipFunc_New(nItemId, "1-1")
		return
	end
	LinkItemGossipFunc_New(nItemId, "1-2")
end


-- 使用3月月卡
function f2019JanMonthlyCard_UseSpringCard(nItemId)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["SpringNotItem"])
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["2019JanMonthlyCard"]["SpringTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(t2019JanMonthlyCard_Text["SysTalk"]["SpringTimeOut"])
			Sys_SaveActionRewardLog(string.format(t2019JanMonthlyCard_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	local nEvent = t2019JanMonthlyCard_Data["Stc"]["Event"][2]
	local nData = t2019JanMonthlyCard_Data["Stc"]["Data"][2]
	-- 第一次打开
	if Task_ChkStcValue(nEvent, nData, "==", 0) then
		LinkItemGossipFunc_New(nItemId, "1-1")
		return
	-- 开启次数超过30次
	elseif Task_ChkStcValue(nEvent, nData, ">=", 31) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(t2019JanMonthlyCard_Text["SysTalk"]["OverTime"])
			Sys_SaveActionRewardLog(string.format(t2019JanMonthlyCard_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	LinkItemGossipFunc_New(nItemId, "1-2")
end

-- 第一次使用月卡包
function f2019JanMonthlyCard_SpringFirstUse(nItemId)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["SpringNotItem"])
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["2019JanMonthlyCard"]["SpringTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(t2019JanMonthlyCard_Text["SysTalk"]["SpringTimeOut"])
			Sys_SaveActionRewardLog(string.format(t2019JanMonthlyCard_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(t2019JanMonthlyCard_Reward[3320160]) then
		return
	end
	-- 判断天石
	local nNeedEemoney = t2019JanMonthlyCard_Data["NeedEmoney"]
	if Get_UserEMoney() < nNeedEemoney then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["SpringNotEmoughEMoney"])
		return
	end
	-- 天石扣款
	if not User_AddEMoney(-nNeedEemoney) then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["SpringNotEmoughEMoney"])
		return
	end
	-- 记录log
	Sys_SaveEmoneyBuy(t2019JanMonthlyCard_Data["Log"]["EmoneyLog"])
	-- 记录掩码为1
	local nEvent = t2019JanMonthlyCard_Data["Stc"]["Event"][2]
	local nData = t2019JanMonthlyCard_Data["Stc"]["Data"][2]
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	-- 获得奖励
	RewardTemplate_UseItemAndMsg(t2019JanMonthlyCard_Reward[3320160])
end

-- 非第一次开礼包
function f2019JanMonthlyCard_SpringNotFirstUse(nItemId)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["SpringNotItem"])
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["2019JanMonthlyCard"]["SpringTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(t2019JanMonthlyCard_Text["SysTalk"]["SpringTimeOut"])
			Sys_SaveActionRewardLog(string.format(t2019JanMonthlyCard_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断隔天
	local nEvent = t2019JanMonthlyCard_Data["Stc"]["Event"][2]
	local nData = t2019JanMonthlyCard_Data["Stc"]["Data"][2]
	if not Task_StcInterval(nEvent, nData, 1, 4) then
		Sys_MsgBox(t2019JanMonthlyCard_Text["SysTalk"]["SpringUsedToday"])
		return
	end
	-- 判断背包空间
	if not RewardTemplate_ChkRandomSpace(t2019JanMonthlyCard_RandomReward, nItemId) then
		local nSpace = RewardTemplate_GetRandomSpace(t2019JanMonthlyCard_RandomReward, nItemId)
		local sSpace = string.format(t2019JanMonthlyCard_Text["SysTalk"]["NotSpace"], nSpace)
		User_TalkChannel2005(sSpace)
		return
	end
	
	-- 增加掩码标记
	Task_AddStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	local nTimes = Get_UserStatisticValue(nEvent, nData)
	if nTimes >= 31 then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(t2019JanMonthlyCard_Text["SysTalk"]["OverTime"])
			Sys_SaveActionRewardLog(string.format(t2019JanMonthlyCard_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 设置log标记
	local tReward = CommonFunc_Copy(t2019JanMonthlyCard_RandomReward)
	tReward[nItemId]["LogStep"] = string.format(t2019JanMonthlyCard_RandomReward[3320160]["LogStep"], nTimes)
	RewardTemplate_NewRandom(tReward, nItemId)
	if nTimes >= 30 then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(t2019JanMonthlyCard_Text["SysTalk"]["OverTime"])
			Sys_SaveActionRewardLog(string.format(t2019JanMonthlyCard_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
end

---------------------------------物品部分---------------------------------------------
-- 新年特权卡
tItemFace[3319028] = 398
tItem[3319028] = tItem[3319028] or {}
tItem[3319028]["DialogueText"] = t2019JanMonthlyCard_Text[3319028]
-- 使用逻辑
tItem[3319028]["Function"] = function(nItemId,sItemName)
	f2019JanMonthlyCard_UseMonthCard(nItemId)
end
-- 第一次使用
tItem[3319028]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118, 119}
tItem[3319028]["ChkFunc1-1"] = function()
	local nEvent = t2019JanMonthlyCard_Data["Stc"]["Event"][1]
	local nData = t2019JanMonthlyCard_Data["Stc"]["Data"][1]
	-- 第一次打开
	if Task_ChkStcValue(nEvent, nData, "==", 0) then
		return true
	end
	return false
end
tItem[3319028]["tOption1-1"] = {111, 112}
tItem[3319028]["OptionPoint111"] = "2-1"

-- 第二次使用
tItem[3319028]["Text1-2"] = {121, 122, 123, 124, 125, 126, 127, 128}
tItem[3319028]["ChkFunc1-2"] = function()
	local nEvent = t2019JanMonthlyCard_Data["Stc"]["Event"][1]
	local nData = t2019JanMonthlyCard_Data["Stc"]["Data"][1]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		tItem[3319028]["Option121"] = t2019JanMonthlyCard_Text[3319028]["Option121"]
	else
		tItem[3319028]["Option121"] = t2019JanMonthlyCard_Text[3319028]["Option122"]
	end
	return true
end
tItem[3319028]["tOption1-2"] = {121}
tItem[3319028]["OptionFunc121"] = "f2019JanMonthlyCard_NotFirstUse</N>3319028"

-- 第一次使用二次确认
tItem[3319028]["Text2-1"] = {211}
tItem[3319028]["tOption2-1"] = {211, 212}
tItem[3319028]["OptionFunc211"] = "f2019JanMonthlyCard_FirstUse</N>3319028"



-- 3月月卡
tItemFace[3320160] = 398
tItem[3320160] = tItem[3320160] or {}
tItem[3320160]["DialogueText"] = t2019JanMonthlyCard_Text[3320160]
-- 使用逻辑
tItem[3320160]["Function"] = function(nItemId,sItemName)
	f2019JanMonthlyCard_UseSpringCard(nItemId)
end
-- 第一次使用
tItem[3320160]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118, 119}
tItem[3320160]["ChkFunc1-1"] = function()
	local nEvent = t2019JanMonthlyCard_Data["Stc"]["Event"][2]
	local nData = t2019JanMonthlyCard_Data["Stc"]["Data"][2]
	-- 第一次打开
	if Task_ChkStcValue(nEvent, nData, "==", 0) then
		return true
	end
	return false
end
tItem[3320160]["tOption1-1"] = {111, 112}
tItem[3320160]["OptionPoint111"] = "2-1"

-- 第二次使用
tItem[3320160]["Text1-2"] = {121, 122, 123, 124, 125, 126, 127, 128}
tItem[3320160]["ChkFunc1-2"] = function()
	local nEvent = t2019JanMonthlyCard_Data["Stc"]["Event"][2]
	local nData = t2019JanMonthlyCard_Data["Stc"]["Data"][2]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		tItem[3320160]["Option121"] = t2019JanMonthlyCard_Text[3320160]["Option121"]
	else
		tItem[3320160]["Option121"] = t2019JanMonthlyCard_Text[3320160]["Option122"]
	end
	return true
end
tItem[3320160]["tOption1-2"] = {121}
tItem[3320160]["OptionFunc121"] = "f2019JanMonthlyCard_SpringNotFirstUse</N>3320160"

-- 第一次使用二次确认
tItem[3320160]["Text2-1"] = {211}
tItem[3320160]["tOption2-1"] = {211, 212}
tItem[3320160]["OptionFunc211"] = "f2019JanMonthlyCard_SpringFirstUse</N>3320160"
