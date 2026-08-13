------------------------------------------------------------------------------------
--Name：        190409[ios英文征服][活动脚本]新服夺宝-空中花园部分
--Creator:      吴燕柚
--Created:      2019-04-09
------------------------------------------------------------------------------------
--任务需求：

--命名规范： IndianaEventGarden_
--logid 12001360

--stc(193, 27) 记录玩家当天获得多少气力

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------

--掩码表
local tIndianaEventGarden_Stc = {}
	tIndianaEventGarden_Stc["Strength"] = {}
	tIndianaEventGarden_Stc["Strength"]["Event"] = 193
	tIndianaEventGarden_Stc["Strength"]["Data"] = 27
	tIndianaEventGarden_Stc["Strength"]["Max"] = 2000--每日掩码值上线

--数据表
local tIndianaEventGarden_Data = {}
	tIndianaEventGarden_Data["Chance"] = {}
	tIndianaEventGarden_Data["Chance"]["Total"] = 10000
	tIndianaEventGarden_Data["Chance"][3529] = 500--获得物品的概率
	tIndianaEventGarden_Data["MapId"] = 10476--地图
	tIndianaEventGarden_Data["NpcId"] = 24087
	tIndianaEventGarden_Data["BossId"] = 3528
	tIndianaEventGarden_Data["BossGenId"] = 27024
	tIndianaEventGarden_Data["GlobalId"] = 53338--data0为1是新服

--坐标
local tIndianaEventGarden_Pos = {}
	tIndianaEventGarden_Pos["Boss"] = {}
	tIndianaEventGarden_Pos["Boss"]["PosX"] = 190
	tIndianaEventGarden_Pos["Boss"]["PosY"] = 190
	tIndianaEventGarden_Pos["Boss"]["Range"] = 290


--打怪掉落奖励表
local tIndianaEventGarden_Reward = {}
	-- ===BOSS掉落
	-- ===LogStep: 1[1]
	tIndianaEventGarden_Reward[3528] = {}
	tIndianaEventGarden_Reward[3528]["ItemChanceSum"] = 10000
	tIndianaEventGarden_Reward[3528]["LogId"] = 12001360
	tIndianaEventGarden_Reward[3528]["LogStep"] = " 1[1]"
	-- 100美金碎片 - 5.0%
	tIndianaEventGarden_Reward[3528][1] = {}
	tIndianaEventGarden_Reward[3528][1]["RandomItemChanceType"] = 2
	tIndianaEventGarden_Reward[3528][1]["ItemChance"] = 500
	tIndianaEventGarden_Reward[3528][1]["RewardItem"] = {}
	tIndianaEventGarden_Reward[3528][1]["RewardItem"][1] = {}
	tIndianaEventGarden_Reward[3528][1]["RewardItem"][1]["Id"] = 3320796 -- 【库】System.Byte[][属性:9]【表格】100美金碎片
	tIndianaEventGarden_Reward[3528][1]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tIndianaEventGarden_Reward[3528][1]["RewardEffect"] = {}
	tIndianaEventGarden_Reward[3528][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIndianaEventGarden_Reward[3528][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服cq_dyna_global_data存储表
	tIndianaEventGarden_Reward[3528][1]["GlobalId"] = 53350 -- 需手动配：[cq_dyna_global_data]表id
	tIndianaEventGarden_Reward[3528][1]["Pos"] = 0 -- 全服限量data位
	tIndianaEventGarden_Reward[3528][1]["MaxData"] = 500 -- 全服限量总数
	tIndianaEventGarden_Reward[3528][1]["FullIndex"] = 6 -- 全服限量超出给其他【下标】奖励
	-- 300天石碎片 - 24%
	tIndianaEventGarden_Reward[3528][2] = {}
	tIndianaEventGarden_Reward[3528][2]["RandomItemChanceType"] = 2
	tIndianaEventGarden_Reward[3528][2]["ItemChance"] = 2400
	tIndianaEventGarden_Reward[3528][2]["RewardItem"] = {}
	tIndianaEventGarden_Reward[3528][2]["RewardItem"][1] = {}
	tIndianaEventGarden_Reward[3528][2]["RewardItem"][1]["Id"] = 3320797 -- 【库】System.Byte[][属性:9]【表格】300天石碎片
	tIndianaEventGarden_Reward[3528][2]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tIndianaEventGarden_Reward[3528][2]["RewardEffect"] = {}
	tIndianaEventGarden_Reward[3528][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIndianaEventGarden_Reward[3528][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服cq_dyna_global_data存储表
	tIndianaEventGarden_Reward[3528][2]["GlobalId"] = 53350-- 需手动配：[cq_dyna_global_data]表id
	tIndianaEventGarden_Reward[3528][2]["Pos"] = 1 -- 全服限量data位
	tIndianaEventGarden_Reward[3528][2]["MaxData"] = 1424 -- 全服限量总数
	tIndianaEventGarden_Reward[3528][2]["FullIndex"] = 6 -- 全服限量超出给其他【下标】奖励
	-- 稀有五星坐骑-九天玄鸟碎片 - 0.25%
	tIndianaEventGarden_Reward[3528][3] = {}
	tIndianaEventGarden_Reward[3528][3]["RandomItemChanceType"] = 2
	tIndianaEventGarden_Reward[3528][3]["ItemChance"] = 25
	tIndianaEventGarden_Reward[3528][3]["RewardItem"] = {}
	tIndianaEventGarden_Reward[3528][3]["RewardItem"][1] = {}
	tIndianaEventGarden_Reward[3528][3]["RewardItem"][1]["Id"] = 3320800 -- 【库】System.Byte[][属性:9]【表格】稀有五星坐骑-九天玄鸟碎片
	tIndianaEventGarden_Reward[3528][3]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tIndianaEventGarden_Reward[3528][3]["RewardEffect"] = {}
	tIndianaEventGarden_Reward[3528][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIndianaEventGarden_Reward[3528][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服cq_dyna_global_data存储表
	tIndianaEventGarden_Reward[3528][3]["GlobalId"] = 53350 -- 需手动配：[cq_dyna_global_data]表id
	tIndianaEventGarden_Reward[3528][3]["Pos"] = 2 -- 全服限量data位
	tIndianaEventGarden_Reward[3528][3]["MaxData"] = 25 -- 全服限量总数
	tIndianaEventGarden_Reward[3528][3]["FullIndex"] = 6 -- 全服限量超出给其他【下标】奖励
	-- RockingRomance（Fantasy）碎片 - 0.25%
	tIndianaEventGarden_Reward[3528][4] = {}
	tIndianaEventGarden_Reward[3528][4]["RandomItemChanceType"] = 2
	tIndianaEventGarden_Reward[3528][4]["ItemChance"] = 25
	tIndianaEventGarden_Reward[3528][4]["RewardItem"] = {}
	tIndianaEventGarden_Reward[3528][4]["RewardItem"][1] = {}
	tIndianaEventGarden_Reward[3528][4]["RewardItem"][1]["Id"] = 3320799 -- 【库】System.Byte[][属性:9]【表格】RockingRomance（Fantasy）碎片
	tIndianaEventGarden_Reward[3528][4]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tIndianaEventGarden_Reward[3528][4]["RewardEffect"] = {}
	tIndianaEventGarden_Reward[3528][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIndianaEventGarden_Reward[3528][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服cq_dyna_global_data存储表
	tIndianaEventGarden_Reward[3528][4]["GlobalId"] = 53350 -- 需手动配：[cq_dyna_global_data]表id
	tIndianaEventGarden_Reward[3528][4]["Pos"] = 3 -- 全服限量data位
	tIndianaEventGarden_Reward[3528][4]["MaxData"] = 45 -- 全服限量总数
	tIndianaEventGarden_Reward[3528][4]["FullIndex"] = 6 -- 全服限量超出给其他【下标】奖励
	-- 200赠品天石碎片 - 70.5%
	tIndianaEventGarden_Reward[3528][5] = {}
	tIndianaEventGarden_Reward[3528][5]["RandomItemChanceType"] = 2
	tIndianaEventGarden_Reward[3528][5]["ItemChance"] = 7050
	tIndianaEventGarden_Reward[3528][5]["RewardItem"] = {}
	tIndianaEventGarden_Reward[3528][5]["RewardItem"][1] = {}
	tIndianaEventGarden_Reward[3528][5]["RewardItem"][1]["Id"] = 3320798 -- 【库】System.Byte[][属性:9]【表格】200赠品天石碎片
	tIndianaEventGarden_Reward[3528][5]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tIndianaEventGarden_Reward[3528][5]["RewardEffect"] = {}
	tIndianaEventGarden_Reward[3528][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIndianaEventGarden_Reward[3528][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服cq_dyna_global_data存储表
	tIndianaEventGarden_Reward[3528][5]["GlobalId"] = 53350 -- 需手动配：[cq_dyna_global_data]表id
	tIndianaEventGarden_Reward[3528][5]["Pos"] = 4 -- 全服限量data位
	tIndianaEventGarden_Reward[3528][5]["MaxData"] = 30000 -- 全服限量总数
	tIndianaEventGarden_Reward[3528][5]["FullIndex"] = 6 -- 全服限量超出给其他【下标】奖励
	-- 1000气力值 - 0.00%
	tIndianaEventGarden_Reward[3528][6] = {}
	tIndianaEventGarden_Reward[3528][6]["RandomItemChanceType"] = 2
	tIndianaEventGarden_Reward[3528][6]["ItemChance"] = 0
	tIndianaEventGarden_Reward[3528][6]["RewardStrengthValue"] = {}
	tIndianaEventGarden_Reward[3528][6]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tIndianaEventGarden_Reward[3528][6]["RewardEffect"] = {}
	tIndianaEventGarden_Reward[3528][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIndianaEventGarden_Reward[3528][6]["RewardEffect"]["Effect"] = "angelwing"

	tIndianaEventGarden_Reward[3529] = {}
	-- ===小怪5%掉落                
	-- ===LogStep: 1[1]             
	tIndianaEventGarden_Reward[3529][1] = {}
	tIndianaEventGarden_Reward[3529][1]["LogId"] = 12001360
	tIndianaEventGarden_Reward[3529][1]["LogStep"] = "1[1]"
	tIndianaEventGarden_Reward[3529][1]["RewardItem"] = {}
	tIndianaEventGarden_Reward[3529][1]["RewardItem"][1] = {}
	tIndianaEventGarden_Reward[3529][1]["RewardItem"][1]["Id"] = 3320802 -- 【库】System.Byte[][属性:9]【表格】3星RockingRomance（Fantasy）碎片
	tIndianaEventGarden_Reward[3529][1]["RewardItem"][1]["Attr"] = "0 1" -- System.Byte[]*1
	tIndianaEventGarden_Reward[3529][1]["RewardEffect"] = {}
	tIndianaEventGarden_Reward[3529][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIndianaEventGarden_Reward[3529][1]["RewardEffect"]["Effect"] = "angelwing"
	-- ===小怪50气力值 每天上限2000
	-- ===LogStep: 1[1]
	tIndianaEventGarden_Reward[3529][2] = {}
	tIndianaEventGarden_Reward[3529][2]["LogId"] = 12001360
	tIndianaEventGarden_Reward[3529][2]["LogStep"] = "1[1]"
	tIndianaEventGarden_Reward[3529][2]["RewardStrengthValue"] = {}
	tIndianaEventGarden_Reward[3529][2]["RewardStrengthValue"]["Value"] = 50 -- 气力值
	tIndianaEventGarden_Reward[3529][2]["RewardEffect"] = {}
	tIndianaEventGarden_Reward[3529][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIndianaEventGarden_Reward[3529][2]["RewardEffect"]["Effect"] = "angelwing"
	-- ===小怪经验
	-- ===LogStep: 1[1]
	tIndianaEventGarden_Reward[3529][3] = {}
	tIndianaEventGarden_Reward[3529][3]["LogId"] = 12001360
	tIndianaEventGarden_Reward[3529][3]["LogStep"] = "1[1]"
	tIndianaEventGarden_Reward[3529][3]["RewardExpTime"] = {}
	tIndianaEventGarden_Reward[3529][3]["RewardExpTime"]["Value"] = 10 -- 分钟经验
	tIndianaEventGarden_Reward[3529][3]["RewardEffect"] = {}
	tIndianaEventGarden_Reward[3529][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tIndianaEventGarden_Reward[3529][3]["RewardEffect"]["Effect"] = "angelwing"


----------------------------------逻辑部分---------------------------------------------

function IndianaEventGarden_BossDrop(nMonsterId)

	if not Sys_ChkFullTime(tActivityTime["IndianaEventSkyGarden"]["ActivityTime"]) then
		return
	end

	local nUserId = Get_UserId()
	
	--玩家背包满则发邮件
	if not User_CheckLeftSpace(1) then
		Sys_SendMail(nUserId, 0, 0, 571917, 0, 30, tIndianaEventSkyGarden_Text["Mail"]["Sender"], tIndianaEventSkyGarden_Text["Mail"]["Title"], tIndianaEventSkyGarden_Text["Mail"]["Content"])
		return
	end
	
	RewardTemplate_NewRandom(tIndianaEventGarden_Reward, nMonsterId, nUserId)

end

function IndianaEventGarden_BossPack(nItemId, nMonsterId)
	--时间外则删除
	if not Sys_ChkFullTime(tActivityTime["IndianaEventSkyGarden"]["ActivityTime"]) then
		Item_DelMulItem(nItemId, nItemId, 1)
		return
	end
	
	local nUserId = Get_UserId()
	
	if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelMulItem(nItemId, nItemId, 1) then
		RewardTemplate_NewRandom(tIndianaEventGarden_Reward, nMonsterId, nUserId)
	end
	
end

function IndianaEventGarden_MonsterDrop(nMonsterId)

	if not Sys_ChkFullTime(tActivityTime["IndianaEventSkyGarden"]["ActivityTime"]) then
		return
	end

	local nUserId = Get_UserId()
	local nStrengthEvent = tIndianaEventGarden_Stc["Strength"]["Event"]
	local nStrengthData = tIndianaEventGarden_Stc["Strength"]["Data"]

	--给气力值
	if Task_StcInterval(nStrengthEvent, nStrengthData, 1, 4, nUserId) then
		Task_SetStatistic(nStrengthEvent, nStrengthData, 0, 1, nUserId)
	end
	if (Get_UserStatisticValue(nStrengthEvent, nStrengthData, nUserId) < tIndianaEventGarden_Stc["Strength"]["Max"]) then
		Task_AddStatistic(nStrengthEvent, nStrengthData, tIndianaEventGarden_Reward[nMonsterId][2]["RewardStrengthValue"]["Value"], 1, nUserId)
		Task_SetStcTimestamp(nStrengthEvent, nStrengthData, 0, nUserId)
		RewardTemplate_UseItemAndMsg(tIndianaEventGarden_Reward[nMonsterId][2], nUserId)
	end

	--5%概率获得3星外套碎片
	if Sys_Random(tIndianaEventGarden_Data["Chance"][nMonsterId], tIndianaEventGarden_Data["Chance"]["Total"]) then
		RewardTemplate_UseItemAndMsg(tIndianaEventGarden_Reward[nMonsterId][1], nUserId)
	end

	--获得10分钟经验
	RewardTemplate_UseItemAndMsg(tIndianaEventGarden_Reward[nMonsterId][3], nUserId)

end

function IndianaEventGarden_TimeBroadcast()

	if not Sys_ChkFullTime(tActivityTime["IndianaEventSkyGarden"]["ActivityTime"]) then
		return
	end

	--非新服不播放全服公告
	local nData = Get_SysDynaGlobalData(tIndianaEventGarden_Data["GlobalId"], 0) or 0
	if nData == 0 then
		return
	end

	local nNpcId = tIndianaEventGarden_Data["NpcId"]
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)

	local nHour = tonumber(os.date("%H"))
	local nMinute = tonumber(os.date("%M"))

	local nLeft = 60 - nMinute

	if nMinute == 0 then
		Sys_SystemBroadcast(string.format(tIndianaEventSkyGarden_Text["OpenBroadcast"], nPosX, nPosY))
	else
		Sys_SystemBroadcast(string.format(tIndianaEventSkyGarden_Text["TimeBroadcast"], nLeft, nPosX, nPosY))
	end

end

function IndianaEventGarden_SendOut()

	if not Sys_ChkFullTime(tActivityTime["IndianaEventSkyGarden"]["ActivityTime"]) then
		return
	end

	Map_UserExeFunc(tIndianaEventGarden_Data["MapId"],-1,"</F>IndianaEventGarden_SendOutMap")
end

function IndianaEventGarden_SendOutMap(nUserId)

	if not Sys_ChkFullTime(tActivityTime["IndianaEventSkyGarden"]["ActivityTime"]) then
		return
	end

	local nNpcId = tIndianaEventGarden_Data["NpcId"]
	local nMapId = Get_NpcMapID(nNpcId)
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)

	User_UserRandBoundTrans(nMapId, nPosX, nPosY, 5, 5,0, nUserId)
	User_TalkChannel2005(tIndianaEventSkyGarden_Text["TimeOut"], nUserId)
end

function IndianaEventGarden_AddBoss()

	if not Sys_ChkFullTime(tActivityTime["IndianaEventSkyGarden"]["ActivityTime"]) then
		return
	end

	local nBossId = tIndianaEventGarden_Data["BossId"]
	local nMapId = tIndianaEventGarden_Data["MapId"]
	local nPosX = tIndianaEventGarden_Pos["Boss"]["PosX"]
	local nPosY = tIndianaEventGarden_Pos["Boss"]["PosY"]
	local nRange = tIndianaEventGarden_Pos["Boss"]["Range"]
	local nBossGen = tIndianaEventGarden_Data["BossGenId"]

	for i = 1, 40 do
		--生成坐标
		local nRangeX = (math.random(10, nRange)*10)/10
		local nRangeY = (math.random(10, nRange)*10)/10
		local nPosXNew = nPosX + nRangeX
		local nPosYNew = nPosY + nRangeY
		--刷怪
		Monster_AddMonster(nMapId, nPosXNew, nPosYNew, nBossGen, nBossId)
	end

end

function IndianaEventGarden_DelBoss()
	local nBossId = tIndianaEventGarden_Data["BossId"]
	local nMapId = tIndianaEventGarden_Data["MapId"]
	
	Monster_DelMonster(nMapId, nBossId)
	
end

function IndianaEventGarden_OutMap()
	local nUserId = Get_UserId()
	Sys_MsgBox(tIndianaEventSkyGarden_Text["TrapOut"], "IndianaEventGarden_SendOutMap</N>" .. nUserId, "NULL", nUserId)
end

---------------------------------物品部分---------------------------------------------
--Boss礼包
tItem[3312273] = tItem[3312273] or {}
tItem[3312273]["Function"] = function(nItemId,sItemName)
	IndianaEventGarden_BossPack(nItemId, 3528)
end

---------------------------------陷阱部分---------------------------------------------

tTrap[163] = tTrap[163] or {}
tTrap[163]["Function"] = function(nTrapId,nTrapType)
	IndianaEventGarden_OutMap()
end

---------------------------------时间自检---------------------------------------------

--活动公告
tOntimerMin_HM[1157] = tOntimerMin_HM[1157] or {}
table.insert(tOntimerMin_HM[1157], IndianaEventGarden_TimeBroadcast)
tOntimerMin_HM[1158] = tOntimerMin_HM[1158] or {}
table.insert(tOntimerMin_HM[1158], IndianaEventGarden_TimeBroadcast)
tOntimerMin_HM[1159] = tOntimerMin_HM[1159] or {}
table.insert(tOntimerMin_HM[1159], IndianaEventGarden_TimeBroadcast)
tOntimerMin_HM[1200] = tOntimerMin_HM[1200] or {}
table.insert(tOntimerMin_HM[1200], IndianaEventGarden_TimeBroadcast)

tOntimerMin_HM[1757] = tOntimerMin_HM[1757] or {}
table.insert(tOntimerMin_HM[1757], IndianaEventGarden_TimeBroadcast)
tOntimerMin_HM[1758] = tOntimerMin_HM[1758] or {}
table.insert(tOntimerMin_HM[1758], IndianaEventGarden_TimeBroadcast)
tOntimerMin_HM[1759] = tOntimerMin_HM[1759] or {}
table.insert(tOntimerMin_HM[1759], IndianaEventGarden_TimeBroadcast)
tOntimerMin_HM[1800] = tOntimerMin_HM[1800] or {}
table.insert(tOntimerMin_HM[1800], IndianaEventGarden_TimeBroadcast)

tOntimerMin_HM[2057] = tOntimerMin_HM[2057] or {}
table.insert(tOntimerMin_HM[2057], IndianaEventGarden_TimeBroadcast)
tOntimerMin_HM[2058] = tOntimerMin_HM[2058] or {}
table.insert(tOntimerMin_HM[2058], IndianaEventGarden_TimeBroadcast)
tOntimerMin_HM[2059] = tOntimerMin_HM[2059] or {}
table.insert(tOntimerMin_HM[2059], IndianaEventGarden_TimeBroadcast)
tOntimerMin_HM[2100] = tOntimerMin_HM[2100] or {}
table.insert(tOntimerMin_HM[2100], IndianaEventGarden_TimeBroadcast)

--将玩家移出地图
tOntimerMin_HM[1230] = tOntimerMin_HM[1230] or {}
table.insert(tOntimerMin_HM[1230], IndianaEventGarden_SendOut)
tOntimerMin_HM[1231] = tOntimerMin_HM[1231] or {}
table.insert(tOntimerMin_HM[1231], IndianaEventGarden_SendOut)

tOntimerMin_HM[1830] = tOntimerMin_HM[1830] or {}
table.insert(tOntimerMin_HM[1830], IndianaEventGarden_SendOut)
tOntimerMin_HM[1831] = tOntimerMin_HM[1831] or {}
table.insert(tOntimerMin_HM[1831], IndianaEventGarden_SendOut)

tOntimerMin_HM[2130] = tOntimerMin_HM[2130] or {}
table.insert(tOntimerMin_HM[2130], IndianaEventGarden_SendOut)
tOntimerMin_HM[2131] = tOntimerMin_HM[2131] or {}
table.insert(tOntimerMin_HM[2131], IndianaEventGarden_SendOut)

--刷boss
tOntimerMin_HM[1200] = tOntimerMin_HM[1200] or {}
table.insert(tOntimerMin_HM[1200], IndianaEventGarden_AddBoss)

tOntimerMin_HM[1800] = tOntimerMin_HM[1800] or {}
table.insert(tOntimerMin_HM[1800], IndianaEventGarden_AddBoss)

tOntimerMin_HM[2100] = tOntimerMin_HM[2100] or {}
table.insert(tOntimerMin_HM[2100], IndianaEventGarden_AddBoss)

--删BOSS
tOntimerMin_HM[1230] = tOntimerMin_HM[1230] or {}
table.insert(tOntimerMin_HM[1230], IndianaEventGarden_DelBoss)
tOntimerMin_HM[1231] = tOntimerMin_HM[1231] or {}
table.insert(tOntimerMin_HM[1231], IndianaEventGarden_DelBoss)

tOntimerMin_HM[1830] = tOntimerMin_HM[1830] or {}
table.insert(tOntimerMin_HM[1830], IndianaEventGarden_DelBoss)
tOntimerMin_HM[1831] = tOntimerMin_HM[1831] or {}
table.insert(tOntimerMin_HM[1831], IndianaEventGarden_DelBoss)

tOntimerMin_HM[2130] = tOntimerMin_HM[2130] or {}
table.insert(tOntimerMin_HM[2130], IndianaEventGarden_DelBoss)
tOntimerMin_HM[2131] = tOntimerMin_HM[2131] or {}
table.insert(tOntimerMin_HM[2131], IndianaEventGarden_DelBoss)

---------------------------------怪物部分---------------------------------------------
local IndianaEventGarden_Drop = {}
	-- Boss掉落
	IndianaEventGarden_Drop[1] = {}
	IndianaEventGarden_Drop[1]["ActivityTime"] = tActivityTime["IndianaEventSkyGarden"]["ActivityTime"]
	IndianaEventGarden_Drop[1]["Function"] = IndianaEventGarden_BossDrop
	IndianaEventGarden_Drop[1]["MonsterId"] = {3528}
	--活动期间打开此表
	table.insert(tMonsterDrop_AreaLoad, IndianaEventGarden_Drop[1])
	-- 小怪掉落
	IndianaEventGarden_Drop[2] = {}
	IndianaEventGarden_Drop[2]["ActivityTime"] = tActivityTime["IndianaEventSkyGarden"]["ActivityTime"]
	IndianaEventGarden_Drop[2]["Function"] = IndianaEventGarden_MonsterDrop
	IndianaEventGarden_Drop[2]["MonsterId"] = {3529}
	--活动期间打开此表
	table.insert(tMonsterDrop_AreaLoad, IndianaEventGarden_Drop[2])
	

