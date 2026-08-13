------------------------------------------------------------------------------------
--Name：            190906[简体征服][活动脚本]全球金秋博饼
--Creator:      江宇君
--Created:     2019/09/06
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名规则 tGlobalMidAutumn_
-- TaskId	35053
	-- data1	记录玩家当日领取骰子情况
	-- data2	记录玩家在本服的userId
-- stc(204,23) 用来做时间戳判断

----------------------------------表配置部分--------------------------------------------
-- 奖励表配置
local tGlobalMidAutumn_Reward = {}
	-- ===3313694,'参与奖礼包'
	-- ===索引: tGlobalMidAutumn_Reward[3313694]
	-- ===删除: 3313694,1
	-- ===NewEMoneyLog:10000,0896
	tGlobalMidAutumn_Reward[3313694] = {}
	tGlobalMidAutumn_Reward[3313694]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tGlobalMidAutumn_Reward[3313694]["DeleteItem"] = {}
	tGlobalMidAutumn_Reward[3313694]["DeleteItem"][1] = {}
	tGlobalMidAutumn_Reward[3313694]["DeleteItem"][1]["Id"] = 3313694 -- 【库】 3313694 【库里没有该物品】[属性:]
	tGlobalMidAutumn_Reward[3313694]["LogId"] = 12001615
	-- 5天时效赤炼石+5（赠） - 25.00%
	tGlobalMidAutumn_Reward[3313694][1] = {}
	tGlobalMidAutumn_Reward[3313694][1]["RandomItemChanceType"] = 2
	tGlobalMidAutumn_Reward[3313694][1]["ItemChance"] = 2500
	tGlobalMidAutumn_Reward[3313694][1]["RewardItem"] = {}
	tGlobalMidAutumn_Reward[3313694][1]["RewardItem"][1] = {}
	tGlobalMidAutumn_Reward[3313694][1]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】5天时效赤炼石+5（赠）
	tGlobalMidAutumn_Reward[3313694][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tGlobalMidAutumn_Reward[3313694][1]["RewardEffect"] = {}
	tGlobalMidAutumn_Reward[3313694][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalMidAutumn_Reward[3313694][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 2天时效晶莹星陨石 - 35.00%
	tGlobalMidAutumn_Reward[3313694][2] = {}
	tGlobalMidAutumn_Reward[3313694][2]["RandomItemChanceType"] = 2
	tGlobalMidAutumn_Reward[3313694][2]["ItemChance"] = 3500
	tGlobalMidAutumn_Reward[3313694][2]["RewardItem"] = {}
	tGlobalMidAutumn_Reward[3313694][2]["RewardItem"][1] = {}
	tGlobalMidAutumn_Reward[3313694][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】2天时效晶莹星陨石
	tGlobalMidAutumn_Reward[3313694][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tGlobalMidAutumn_Reward[3313694][2]["RewardEffect"] = {}
	tGlobalMidAutumn_Reward[3313694][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalMidAutumn_Reward[3313694][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹（赠） - 25.00%
	tGlobalMidAutumn_Reward[3313694][3] = {}
	tGlobalMidAutumn_Reward[3313694][3]["RandomItemChanceType"] = 2
	tGlobalMidAutumn_Reward[3313694][3]["ItemChance"] = 2500
	tGlobalMidAutumn_Reward[3313694][3]["RewardItem"] = {}
	tGlobalMidAutumn_Reward[3313694][3]["RewardItem"][1] = {}
	tGlobalMidAutumn_Reward[3313694][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tGlobalMidAutumn_Reward[3313694][3]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100
	tGlobalMidAutumn_Reward[3313694][3]["RewardEffect"] = {}
	tGlobalMidAutumn_Reward[3313694][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalMidAutumn_Reward[3313694][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 15.00%
	tGlobalMidAutumn_Reward[3313694][4] = {}
	tGlobalMidAutumn_Reward[3313694][4]["RandomItemChanceType"] = 2
	tGlobalMidAutumn_Reward[3313694][4]["ItemChance"] = 1500
	tGlobalMidAutumn_Reward[3313694][4]["RewardItem"] = {}
	tGlobalMidAutumn_Reward[3313694][4]["RewardItem"][1] = {}
	tGlobalMidAutumn_Reward[3313694][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tGlobalMidAutumn_Reward[3313694][4]["RewardItem"][1]["Attr"] = "0 100" -- 人参果*100（[错误]物品数量超10个）
	tGlobalMidAutumn_Reward[3313694][4]["RewardEffect"] = {}
	tGlobalMidAutumn_Reward[3313694][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalMidAutumn_Reward[3313694][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 5天时效赤炼石+6（赠）-- 【自身概率】 - 6%
	tGlobalMidAutumn_Reward[3313694][5] = {}
	tGlobalMidAutumn_Reward[3313694][5]["RandomItemChanceType"] = 3
	tGlobalMidAutumn_Reward[3313694][5]["ItemSelfChanceSum"] = 10000
	tGlobalMidAutumn_Reward[3313694][5]["ItemChance"] = 600
	tGlobalMidAutumn_Reward[3313694][5]["RewardItem"] = {}
	tGlobalMidAutumn_Reward[3313694][5]["RewardItem"][1] = {}
	tGlobalMidAutumn_Reward[3313694][5]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】5天时效赤炼石+6（赠）
	tGlobalMidAutumn_Reward[3313694][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tGlobalMidAutumn_Reward[3313694][5]["RewardEffect"] = {}
	tGlobalMidAutumn_Reward[3313694][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalMidAutumn_Reward[3313694][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 8888天石（赠）-- 【自身概率】 - 3.2%
	tGlobalMidAutumn_Reward[3313694][6] = {}
	tGlobalMidAutumn_Reward[3313694][6]["RandomItemChanceType"] = 3
	tGlobalMidAutumn_Reward[3313694][6]["ItemSelfChanceSum"] = 10000
	tGlobalMidAutumn_Reward[3313694][6]["ItemChance"] = 320
	tGlobalMidAutumn_Reward[3313694][6]["RewardEMoneyMono"] = {}
	tGlobalMidAutumn_Reward[3313694][6]["RewardEMoneyMono"]["Value"] = 8888 -- 天石（赠）, 【需求】8888天石（赠）
	tGlobalMidAutumn_Reward[3313694][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	896"
	tGlobalMidAutumn_Reward[3313694][6]["RewardEffect"] = {}
	tGlobalMidAutumn_Reward[3313694][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalMidAutumn_Reward[3313694][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 稀有黄色神纹随机包（赠）-- 【自身概率】 - 0.08%
	tGlobalMidAutumn_Reward[3313694][7] = {}
	tGlobalMidAutumn_Reward[3313694][7]["RandomItemChanceType"] = 3
	tGlobalMidAutumn_Reward[3313694][7]["ItemSelfChanceSum"] = 10000
	tGlobalMidAutumn_Reward[3313694][7]["ItemChance"] = 8
	tGlobalMidAutumn_Reward[3313694][7]["RewardItem"] = {}
	tGlobalMidAutumn_Reward[3313694][7]["RewardItem"][1] = {}
	tGlobalMidAutumn_Reward[3313694][7]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包（赠）
	tGlobalMidAutumn_Reward[3313694][7]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tGlobalMidAutumn_Reward[3313694][7]["RewardEffect"] = {}
	tGlobalMidAutumn_Reward[3313694][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalMidAutumn_Reward[3313694][7]["RewardEffect"]["Effect"] = "angelwing"


-- TaskDetail
local tGlobalMidAutumn_TaskDetail = {}
	tGlobalMidAutumn_TaskDetail["Id"] = 35053
	tGlobalMidAutumn_TaskDetail["Data1"] = 1 -- 记录玩家当日领取骰子情况

-- Stc掩码
local tGlobalMidAutumn_Stc = {}
	tGlobalMidAutumn_Stc["EvnetType"] = 204
	tGlobalMidAutumn_Stc["DataType"] = 23


-- 数据表
local tGlobalMidAutumn_Data = {}
	tGlobalMidAutumn_Data["Level"] = 0 -- 等级要求
	tGlobalMidAutumn_Data["Metempsychosis"] = 2 -- 二转以上
	tGlobalMidAutumn_Data["ActivityTime"] = tActivityTime["GlobalMidAutumn"]["ActivityTime"] -- 活动时间
	tGlobalMidAutumn_Data["ConfigData1"] = {}
	tGlobalMidAutumn_Data["ConfigData1"][1] = 111
	tGlobalMidAutumn_Data["ConfigData1"][2] = 112
	tGlobalMidAutumn_Data["ConfigData1"][3] = 113
	tGlobalMidAutumn_Data["ConfigData1"][4] = 114
	tGlobalMidAutumn_Data["GlobalServerId"] = 998 -- 全球服ServerId
	tGlobalMidAutumn_Data["Web"] = "https://www.facebook.com/ConquerOnline/posts/10156167916646230"

local tGlobalMidAutumn_Log = {}
	tGlobalMidAutumn_Log["GlobalServer"] = {} -- 进入全球服的log
	tGlobalMidAutumn_Log["GlobalServer"][1] = "0,0,0,0,12001615,1[1],0,0" -- 进入全球服的log
	tGlobalMidAutumn_Log["GlobalServer"][2] = "0,0,0,0,12001615,1[2],0,0" -- 在全球服领取6个骰子奖励的log
	tGlobalMidAutumn_Log["GlobalServer"][3] = "0,0,0,0,12001615,1[3],0,0" -- 离开全球服的log
	tGlobalMidAutumn_Log["GlobalServer"][4] = "0,0,0,0,12001615,1[4],0,0" -- 全球服判断没有任务Id离开全球服
	tGlobalMidAutumn_Log["DelItem"] = "0,0,%d,%d,12001615,3,0,0" -- 删除任务物品

-- 邮件数据
local tGlobalMidAutumn_Email = {}
	tGlobalMidAutumn_Email["ActionId"] = 574410
	tGlobalMidAutumn_Email["Sender"] = tGlobalMidAutumn_Text["Email"]["Sender"]
	tGlobalMidAutumn_Email["Title"] = tGlobalMidAutumn_Text["Email"]["Title"]
	tGlobalMidAutumn_Email["Content"] = tGlobalMidAutumn_Text["Email"]["Content"]
	

----------------------------------逻辑部分---------------------------------------------
-- 条件判断
function GlobalMidAutumn_JudgeCondition(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nNeedLevel = tGlobalMidAutumn_Data["Level"]
	local nNeedMete = tGlobalMidAutumn_Data["Metempsychosis"]
	
	-- 不在活动时间内
	if not Sys_ChkFullTime(tGlobalMidAutumn_Data["ActivityTime"]) then
		Sys_MsgBox(tGlobalMidAutumn_Text["Sys"]["TimeLimit"])
		return false
	end
	
	-- 未达到二转
	if not User_JudgeLevelAndMetempsychosis(nNeedLevel, nNeedMete, nUserId) then
		Sys_MsgBox(tGlobalMidAutumn_Text["Sys"]["LevelLimit"])
		return false
	end
	
	return true
end

-- 进入全球服
function GlobalMidAutumn_EnterGlobalServer(nNpcId)
	local nUserId = Get_UserId()
	
	if not GlobalMidAutumn_JudgeCondition(nUserId) then
		return
	end
	
	local nTaskId = tGlobalMidAutumn_TaskDetail["Id"]
	local nEvent = tGlobalMidAutumn_Stc["EvnetType"]
	local nType = tGlobalMidAutumn_Stc["DataType"]
	
	-- 不符合条件
	if not GlobalMidAutumn_JudgeCondition(nUserId) then
		return
	end
	
	-- 没有任务掩码
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		-- 添加失败则跳出
		if not Task_AddTaskDetail(nTaskId,0,nUserId) then
			return
		end
	end
	
	-- 超过一天 清零领奖掩码
	if Task_StcInterval(nEvent, nType, 1, 4, nUserId) then
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		Task_SetTaskDetailData1(nTaskId, 0, nUserId)
	end
	
	if not Task_SetTaskDetailData2(nTaskId, nUserId, nUserId) then
		return
	end
	
	Sys_SaveActionFestivalLog(tGlobalMidAutumn_Log["GlobalServer"][1], nUserId)  -- 进入全球服的log
	local nIndex = math.random(1,4)
	local nConfigData1 = tGlobalMidAutumn_Data["ConfigData1"][nIndex]
	-- local nServerId = 102 -- 测试服ServerId
	local nServerId = tGlobalMidAutumn_Data["GlobalServerId"]
	-- 根据玩家传送到全球服
	Sys_EnterServer(nServerId,12,nUserId,nConfigData1)
end

-- 跨国Npc领奖
function GlobalMidAutumn_RewardGlobalServer(nNpcId)
	local nUserId = Get_UserId()
	local nTaskId = tGlobalMidAutumn_TaskDetail["Id"]
	local nData1 = tGlobalMidAutumn_TaskDetail["Data1"]
	
	-- 本服玩家
	if not User_IsCross(nUserId) then
		return
	end
	
	-- 不符合条件
	if not GlobalMidAutumn_JudgeCondition(nUserId) then
		return
	end
	
	-- 没有任务掩码传送回本服
	if not Task_ChkTaskDetail(nTaskId, nUserId) then
		return
	end
	
	-- 今日已领奖
	if Task_ChkTaskDetailValue(nTaskId, "1", ">=", nData1, nUserId) then
		Sys_MsgBox(tGlobalMidAutumn_Text["Sys"]["SignAgain"],nil,nil,nUserId)
		return
	end
	
	-- 未领奖
	local nActionId = tGlobalMidAutumn_Email["ActionId"]
	local sSender = tGlobalMidAutumn_Email["Sender"]
	local sTitle = tGlobalMidAutumn_Email["Title"]
	local sContont = tGlobalMidAutumn_Email["Content"]
	
	local nDataUserId = Get_TaskDetailData2(nTaskId,nUserId) -- 存在TaskDetail里的玩家在本服的UserId
	local nServerId = Get_UserServerId(nUserId) -- 通过玩家的跨服UserId获取到玩家本服的ServerId
	
	if Task_SetTaskDetailData1(nTaskId, nData1, nUserId) then
		Sys_SendMail(nDataUserId, 0, 0, nActionId, 0, 7, sSender, sTitle, sContont, nServerId)
		Sys_MsgBox(tGlobalMidAutumn_Text["Sys"]["SignSuccess"],nil,nil,nUserId)
	end
	-- Sys_SaveActionRewardLog(tGlobalMidAutumn_Log["GlobalServer"][2], nUserId)  -- 领奖后的log
end

-- 回到本服
function GlobalMidAutumn_LeaveGlobalServer(nNpcId)
	local nUserId = Get_UserId()
	Sys_ExitOS(nUserId)
	-- Sys_SaveActionRewardLog(tGlobalMidAutumn_Log["GlobalServer"][3], nUserId)  -- 离开全球服的log
end

-- 前往征服论坛
function GlobalMidAutumn_OpenWeb(nNpcId)
	local nUserId = Get_UserId()
	
	if not GlobalMidAutumn_JudgeCondition(nUserId) then
		return
	end
	
	User_SendWebPage(tGlobalMidAutumn_Data["Web"])
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[2089] = 192
tNpcFace[2095] = 193
tNpcFace[2096] = 192
-- 24927,'跨国中秋大使' 中文
tNpcGossip[24927]= tNpcGossip[24927] or DefaultNpc:new{}
tNpcGossip[24927]["OptionHidden"] = 1
tNpcGossip[24927]["DialogueText"] = tGlobalMidAutumn_Text[24927]

tNpcGossip[24927]["Text1-1"] = {111,112,113,114}
tNpcGossip[24927]["tOption1-1"] = {111,113}
tNpcGossip[24927]["OptionFunc111"] = "GlobalMidAutumn_RewardGlobalServer</N>24927"
tNpcGossip[24927]["OptionChkFunc111"] = function ()
	tNpcGossip[24927]["Option111"] = tGlobalMidAutumn_Text[24927]["Option111"]
	local nUserId = Get_UserId()
	local nTaskId = tGlobalMidAutumn_TaskDetail["Id"]
	local nData1 = tGlobalMidAutumn_TaskDetail["Data1"]
	
	-- 今日已领奖
	if Task_ChkTaskDetailValue(nTaskId, "1", ">=", nData1, nUserId) then
		tNpcGossip[24927]["Option111"] = tGlobalMidAutumn_Text[24927]["Option112"]
	end
	
	return true
end
tNpcGossip[24927]["OptionFunc113"] = "GlobalMidAutumn_LeaveGlobalServer</N>24927"

-- 24942,'跨国中秋大使' 英文
tNpcGossip[24942]= tNpcGossip[24942] or DefaultNpc:new{}
tNpcGossip[24942]["OptionHidden"] = 1
tNpcGossip[24942]["DialogueText"] = tGlobalMidAutumn_Text[24942]

tNpcGossip[24942]["Text1-1"] = {111,112,113,114}
tNpcGossip[24942]["tOption1-1"] = {111,113}
tNpcGossip[24942]["OptionFunc111"] = "GlobalMidAutumn_RewardGlobalServer</N>24942"
tNpcGossip[24942]["OptionChkFunc111"] = function ()
	tNpcGossip[24942]["Option111"] = tGlobalMidAutumn_Text[24942]["Option111"]
	local nUserId = Get_UserId()
	local nTaskId = tGlobalMidAutumn_TaskDetail["Id"]
	local nData1 = tGlobalMidAutumn_TaskDetail["Data1"]
	
	-- 今日已领奖
	if Task_ChkTaskDetailValue(nTaskId, "1", ">=", nData1, nUserId) then
		tNpcGossip[24942]["Option111"] = tGlobalMidAutumn_Text[24942]["Option112"]
	end
	
	return true
end
tNpcGossip[24942]["OptionFunc113"] = "GlobalMidAutumn_LeaveGlobalServer</N>24942"

-- 24943,'跨国中秋大使' 西语
tNpcGossip[24943]= tNpcGossip[24943] or DefaultNpc:new{}
tNpcGossip[24943]["OptionHidden"] = 1
tNpcGossip[24943]["DialogueText"] = tGlobalMidAutumn_Text[24943]

tNpcGossip[24943]["Text1-1"] = {111,112,113,114}
tNpcGossip[24943]["tOption1-1"] = {111,113}
tNpcGossip[24943]["OptionFunc111"] = "GlobalMidAutumn_RewardGlobalServer</N>24943"
tNpcGossip[24943]["OptionChkFunc111"] = function ()
	tNpcGossip[24943]["Option111"] = tGlobalMidAutumn_Text[24943]["Option111"]
	local nUserId = Get_UserId()
	local nTaskId = tGlobalMidAutumn_TaskDetail["Id"]
	local nData1 = tGlobalMidAutumn_TaskDetail["Data1"]
	
	-- 今日已领奖
	if Task_ChkTaskDetailValue(nTaskId, "1", ">=", nData1, nUserId) then
		tNpcGossip[24943]["Option111"] = tGlobalMidAutumn_Text[24943]["Option112"]
	end
	
	return true
end
tNpcGossip[24943]["OptionFunc113"] = "GlobalMidAutumn_LeaveGlobalServer</N>24943"

-- 24944,'跨国中秋大使' 阿语
tNpcGossip[24944]= tNpcGossip[24944] or DefaultNpc:new{}
tNpcGossip[24944]["OptionHidden"] = 1
tNpcGossip[24944]["DialogueText"] = tGlobalMidAutumn_Text[24944]

tNpcGossip[24944]["Text1-1"] = {111,112,113,114}
tNpcGossip[24944]["tOption1-1"] = {111,113}
tNpcGossip[24944]["OptionFunc111"] = "GlobalMidAutumn_RewardGlobalServer</N>24944"
tNpcGossip[24944]["OptionChkFunc111"] = function ()
	tNpcGossip[24944]["Option111"] = tGlobalMidAutumn_Text[24944]["Option111"]
	local nUserId = Get_UserId()
	local nTaskId = tGlobalMidAutumn_TaskDetail["Id"]
	local nData1 = tGlobalMidAutumn_TaskDetail["Data1"]
	
	-- 今日已领奖
	if Task_ChkTaskDetailValue(nTaskId, "1", ">=", nData1, nUserId) then
		tNpcGossip[24944]["Option111"] = tGlobalMidAutumn_Text[24944]["Option112"]
	end
	
	return true
end
tNpcGossip[24944]["OptionFunc113"] = "GlobalMidAutumn_LeaveGlobalServer</N>24944"


-- 测试npc
tNpcGossip[24941]= tNpcGossip[24941] or DefaultNpc:new{}
tNpcGossip[24941]["OptionHidden"] = 1
tNpcGossip[24941]["DialogueText"] = tGlobalMidAutumn_Text[24941]

tNpcGossip[24941]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[24941]["tOption1-1"] = {111,112}
tNpcGossip[24941]["OptionFunc111"] = "GlobalMidAutumn_EnterGlobalServer</N>24941"  
tNpcGossip[24941]["OptionPoint112"] = "2-1"

tNpcGossip[24941]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[24941]["tOption2-1"] = {211}
tNpcGossip[24941]["OptionFunc211"] = "GlobalMidAutumn_OpenWeb</N>24941"  

---------------------------------物品部分---------------------------------------------

-- 3313694,'中秋合照参与奖'
tItem[3313694] = tItem[3313694] or {}
tItem[3313694]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	
	-- 物品不存在
	if not Item_ChkMulItem(nItemId, nItemId, 1) then
		return
	end
	
	local nSpace = RewardTemplate_GetRandomSpace(tGlobalMidAutumn_Reward, nItemId, nUserId)
	-- 背包空间不足
	if not User_CheckLeftSpace(nSpace, nUserId) then
		User_TalkChannel2005(string.format(tGlobalMidAutumn_Text["Sys"]["OpenNoSpace"], nSpace))
		return
	end
	
	RewardTemplate_RandomReward(tGlobalMidAutumn_Reward, nItemId, nUserId)
end
