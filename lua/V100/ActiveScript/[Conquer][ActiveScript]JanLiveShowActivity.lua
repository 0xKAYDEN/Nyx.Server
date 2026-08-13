------------------------------------------------------------------------------------
--Name:			170104[英文征服][活动脚本]1月直播活动制作
--Purpose:		1月直播活动制作
--Creator:		陈琳
--Created:		2017/01/04
------------------------------------------------------------------------------------
-- 命名前缀
-- JanLiveShowActivity_

-- LogId
-- 12000626

-- 掩码说明
-- stc(155,73)，记录玩家1月12日领取礼包的情况
-- stc(155,75)，记录玩家1月13日领取礼包的情况

-- NpcId
-- 20221 欧服 NpcType 4642
-- 20222 美服 NpcType 4642

-- ItemId
-- 3302070

--------------------------------------数据部分-------------------------------------------
local tJanLiveShowActivity_Data = {}

	-- 1月12日
	tJanLiveShowActivity_Data[1] = {}
	tJanLiveShowActivity_Data[1]["Time"] = "2017-01-12 00:00 2017-01-12 23:59"
	tJanLiveShowActivity_Data[1]["ActivityTime"] = {}
	tJanLiveShowActivity_Data[1]["ActivityTime"][20221] = "2017-01-12 18:30 2017-01-12 21:30" -- 欧服
	tJanLiveShowActivity_Data[1]["ActivityTime"][20222] = "2017-01-12 10:30 2017-01-12 13:30" -- 美服
	
	-- 1月13日
	tJanLiveShowActivity_Data[2] = {}
	tJanLiveShowActivity_Data[2]["Time"] = "2017-01-13 00:00 2017-01-13 23:59"
	tJanLiveShowActivity_Data[2]["ActivityTime"] = {}
	tJanLiveShowActivity_Data[2]["ActivityTime"][20221] = "2017-01-13 15:30 2017-01-13 18:30" -- 欧服
	tJanLiveShowActivity_Data[2]["ActivityTime"][20222] = "2017-01-13 07:30 2017-01-13 10:30" -- 美服
	
	-- 输入字符长度
	tJanLiveShowActivity_Data["Length"] = 15
	
	-- 等级
	tJanLiveShowActivity_Data["MinLevel"] = 80
	tJanLiveShowActivity_Data["MinMeto"] = 0
	
	-- 背包
	tJanLiveShowActivity_Data["Space"] = 2
	
	-- 掩码
	tJanLiveShowActivity_Data["Stc"] = {}
	-- 记录玩家1月12日领取礼包的情况
	tJanLiveShowActivity_Data["Stc"][1] = {}
	tJanLiveShowActivity_Data["Stc"][1]["Event"] = 155
	tJanLiveShowActivity_Data["Stc"][1]["Type"] = 73
	-- 记录玩家1月13日领取礼包的情况
	tJanLiveShowActivity_Data["Stc"][2] = {}
	tJanLiveShowActivity_Data["Stc"][2]["Event"] = 155
	tJanLiveShowActivity_Data["Stc"][2]["Type"] = 75
	
	-- 礼包ID
	tJanLiveShowActivity_Data["PackId"] = 3302070
	
	-- 背包空间
	tJanLiveShowActivity_Data["Space"] = 1
	
	-- 直播地址
	tJanLiveShowActivity_Data["WebAddress"] = {}
	-- 1月12日
	tJanLiveShowActivity_Data["WebAddress"][1] = "https://gaming.youtube.com/c/redraver12/live"
	-- 1月13日
	tJanLiveShowActivity_Data["WebAddress"][2] = "http://co.99.com/guide/event/2017/windwalker-livestream/"

local tJanLiveShowActivity_Reward = {}
	-- 1月12日给礼包
	tJanLiveShowActivity_Reward[1] = {}
	tJanLiveShowActivity_Reward[1]["EventType"] = tJanLiveShowActivity_Data["Stc"][1]["Event"]
	tJanLiveShowActivity_Reward[1]["DataType"] = tJanLiveShowActivity_Data["Stc"][1]["Type"]
	tJanLiveShowActivity_Reward[1]["RewardTotalData"] = 1
	tJanLiveShowActivity_Reward[1]["RewardItem"] = {}
	tJanLiveShowActivity_Reward[1]["RewardItem"][1] = {}
	tJanLiveShowActivity_Reward[1]["RewardItem"][1]["Id"] = 3302070
	tJanLiveShowActivity_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tJanLiveShowActivity_Reward[1]["RewardEffect"] = {}
	tJanLiveShowActivity_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	tJanLiveShowActivity_Reward[1]["Log"] = "0,0,0,0,12000626,2[1],3302070,1"
	
	-- 1月13日给礼包
	tJanLiveShowActivity_Reward[2] = {}
	tJanLiveShowActivity_Reward[2]["EventType"] = tJanLiveShowActivity_Data["Stc"][2]["Event"]
	tJanLiveShowActivity_Reward[2]["DataType"] = tJanLiveShowActivity_Data["Stc"][2]["Type"]
	tJanLiveShowActivity_Reward[2]["RewardTotalData"] = 1
	tJanLiveShowActivity_Reward[2]["RewardItem"] = {}
	tJanLiveShowActivity_Reward[2]["RewardItem"][1] = {}
	tJanLiveShowActivity_Reward[2]["RewardItem"][1]["Id"] = 3302070
	tJanLiveShowActivity_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tJanLiveShowActivity_Reward[2]["RewardEffect"] = {}
	tJanLiveShowActivity_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	tJanLiveShowActivity_Reward[2]["Log"] = "0,0,0,0,12000626,2[2],3302070,1"

	-- 开礼包
	tJanLiveShowActivity_Reward[3302070] = {}
	tJanLiveShowActivity_Reward[3302070]["RewardItem"] = {}
	-- 龙珠（赠）*1
	tJanLiveShowActivity_Reward[3302070]["RewardItem"][1] = {}
	tJanLiveShowActivity_Reward[3302070]["RewardItem"][1]["Id"] = 1088000
	tJanLiveShowActivity_Reward[3302070]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 免费强炼丹（赠）*30
	tJanLiveShowActivity_Reward[3302070]["RewardItem"][2] = {}
	tJanLiveShowActivity_Reward[3302070]["RewardItem"][2]["Id"] = 3003124
	tJanLiveShowActivity_Reward[3302070]["RewardItem"][2]["Attr"] = "0 30 3"
	-- 1000点天石（赠）
	tJanLiveShowActivity_Reward[3302070]["RewardEMoneyMono"] = {}
	tJanLiveShowActivity_Reward[3302070]["RewardEMoneyMono"]["Value"] = 1000
	-- 5000点气力值
	tJanLiveShowActivity_Reward[3302070]["RewardStrengthValue"] = {}
	tJanLiveShowActivity_Reward[3302070]["RewardStrengthValue"]["Value"] = 5000
	tJanLiveShowActivity_Reward[3302070]["DeleteItem"] = {} 
	tJanLiveShowActivity_Reward[3302070]["DeleteItem"][1] = {}
	tJanLiveShowActivity_Reward[3302070]["DeleteItem"][1]["Id"] = 3302070
	tJanLiveShowActivity_Reward[3302070]["RewardEffect"] = {}
	tJanLiveShowActivity_Reward[3302070]["RewardEffect"]["Effect"] = "angelwing"
	tJanLiveShowActivity_Reward[3302070]["Log"] = "0,0,3302070,1,12000626,2,1088000[3003124][3][12],1[30][1000][5000]"
	tJanLiveShowActivity_Reward[3302070]["EmoneyLog"] = "350	20470	0	0	1000	"
--------------------------------------NPC逻辑部分---------------------------------------------
function JanLiveShowActivity_MainNpc(nNpcId)
	-- 等级不足
	if not User_JudgeLevelAndMetempsychosis(tJanLiveShowActivity_Data["MinLevel"],tJanLiveShowActivity_Data["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 等级达到
	local nIndex = 0
	if Sys_ChkFullTime(tJanLiveShowActivity_Data[1]["Time"]) then
		nIndex = 1
	elseif Sys_ChkFullTime(tJanLiveShowActivity_Data[2]["Time"]) then
		nIndex = 2
	end
	
	local sOption = string.format(tJanLiveShowActivity_Text[nNpcId]["Option2"],tJanLiveShowActivity_Text["Name"][nIndex])
	Sys_DialogText(tJanLiveShowActivity_Text[nNpcId]["Text121"])
	Sys_DialogText(tJanLiveShowActivity_Text[nNpcId]["Text122"])
	Sys_DialogText(tJanLiveShowActivity_Text[nNpcId]["Text123"])
	Sys_DialogText(tJanLiveShowActivity_Text[nNpcId]["Text124"])
	Sys_DialogOptEdit(tJanLiveShowActivity_Text[nNpcId]["Option3"],tJanLiveShowActivity_Data["Length"],"JanLiveShowActivity_JudgeCode</N>".. nIndex .."</N>".. nNpcId)
	Sys_DialogOption(sOption,"</F>JanLiveShowActivity_OpenWebAddress</N>".. nIndex)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 直播链接
function JanLiveShowActivity_OpenWebAddress(nIndex)
	local sWebAddress = tJanLiveShowActivity_Data["WebAddress"][nIndex]
	User_SendWebPage(sWebAddress)
end

-- code 判断
function JanLiveShowActivity_JudgeCode(nIndex,nNpcId)
	
	-- 时间判断
	if not Sys_ChkFullTime(tJanLiveShowActivity_Data[nIndex]["ActivityTime"][nNpcId]) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	-- 已经领过
	local nEventType = tJanLiveShowActivity_Data["Stc"][nIndex]["Event"]
	local nDataType = tJanLiveShowActivity_Data["Stc"][nIndex]["Type"]
	if Task_ChkStcValue(nEventType,nDataType,">",0) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 背包判断
	if not User_CheckLeftSpace(tJanLiveShowActivity_Data["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- code 错误
	local sWord = Get_SysAcceptStr()
	if sWord ~= tJanLiveShowActivity_Text[nIndex] then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- code 正确
	RewardTemplate_UseItemAndMsg(tJanLiveShowActivity_Reward[nIndex])
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end
--------------------------------------npc模板----------------------------------------------
-- 欧服 20221
-- 头像
tNpcFace[4642] = 119

tNpcGossip[20221] = tNpcGossip[20221] or DefaultNpc:new{}
tNpcGossip[20221]["OptionHidden"] = 1
tNpcGossip[20221]["DialogueText"] = tJanLiveShowActivity_Text[20221]

-- 等级不足
tNpcGossip[20221]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20221]["tOption1-1"] = {1}

-- 等级达到
tNpcGossip[20221]["Text1-2"] = {121,122,123,124}
tNpcGossip[20221]["tOption1-2"] = {3,2}

-- 接“领取福利”
-- code正确
tNpcGossip[20221]["Text2-1"] = {211}
tNpcGossip[20221]["tOption2-1"] = {4}

-- code错误
tNpcGossip[20221]["Text2-2"] = {221}
tNpcGossip[20221]["tOption2-2"] = {5}

-- 已领
tNpcGossip[20221]["Text2-3"] = {231}
tNpcGossip[20221]["tOption2-3"] = {6}

-- 背包满
tNpcGossip[20221]["Text2-4"] = {241}
tNpcGossip[20221]["tOption2-4"] = {7}

-- 时间已过
tNpcGossip[20221]["Text2-5"] = {251}
tNpcGossip[20221]["tOption2-5"] = {8}

-- 非活动时间
tNpcGossip[20221]["Text2-6"] = {261}
tNpcGossip[20221]["tOption2-6"] = {9}

-- 美服 20222
-- 头像
tNpcFace[4642] = 119

tNpcGossip[20222] = tNpcGossip[20222] or DefaultNpc:new{}
tNpcGossip[20222]["OptionHidden"] = 1
tNpcGossip[20222]["DialogueText"] = tJanLiveShowActivity_Text[20222]

-- 等级不足
tNpcGossip[20222]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20222]["tOption1-1"] = {1}

-- 等级达到
tNpcGossip[20222]["Text1-2"] = {121,122,123,124}
tNpcGossip[20222]["tOption1-2"] = {3,2}

-- 接“领取福利”
-- code正确
tNpcGossip[20222]["Text2-1"] = {211}
tNpcGossip[20222]["tOption2-1"] = {4}

-- code错误
tNpcGossip[20222]["Text2-2"] = {221}
tNpcGossip[20222]["tOption2-2"] = {5}

-- 已领
tNpcGossip[20222]["Text2-3"] = {231}
tNpcGossip[20222]["tOption2-3"] = {6}

-- 背包满
tNpcGossip[20222]["Text2-4"] = {241}
tNpcGossip[20222]["tOption2-4"] = {7}

-- 时间已过
tNpcGossip[20222]["Text2-5"] = {251}
tNpcGossip[20222]["tOption2-5"] = {8}

-- 非活动时间
tNpcGossip[20222]["Text2-6"] = {261}
tNpcGossip[20222]["tOption2-6"] = {9}
--------------------------------------物品模板----------------------------------------

tItem[3302070] = tItem[3302070] or {}
tItem[3302070]["Function"] = function(nItemId,sItemName)
	-- 背包判断
	if not User_CheckLeftSpace(tJanLiveShowActivity_Data["Space"]) then
		Sys_MsgBox(tJanLiveShowActivity_Text["Msg"]["NoSpace"])
		return
	end
	
	-- 赠点上限
	local nUserId = Get_UserId()
	local nUserMonoEMoney = Get_UserMonoEMoney(nUserId)
	local nAddEMoneyMono = tJanLiveShowActivity_Reward[nItemId]["RewardEMoneyMono"]["Value"]
	if (nUserMonoEMoney + nAddEMoneyMono) > G_User_MaxEmoneyMono then
		Sys_MsgBox(tJanLiveShowActivity_Text["Msg"]["TooMuchMonoEmoney"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tJanLiveShowActivity_Reward[nItemId])
end