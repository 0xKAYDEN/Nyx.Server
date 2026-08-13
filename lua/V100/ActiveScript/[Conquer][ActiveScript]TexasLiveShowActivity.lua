------------------------------------------------------------------------------------
--Name:			170524[英文征服][活动脚本]德州直播活动制作复用
--Purpose:		德州直播活动制作复用
--Creator:		陈琳
--Created:		2017/05/24
------------------------------------------------------------------------------------
-- 命名前缀
-- TexasLiveShowActivity_

-- lua.ini
-- 40553

-- LogId
-- 12000732

-- 掩码说明
-- stc(160,85)，记录玩家领取礼包的情况
-- stc(160,86)，背包信
-- stc(160,87)，记录德州地图弹链接的情况

-- cq_dyna_global_data
-- 51560 data0 0 欧服 data0 1 美服

-- NpcId
-- 20670 20671 欧服 NpcType 4823
-- 20672 20673 美服 NpcType 4823

-- ItemId
-- 3303447

--------------------------------------数据部分-------------------------------------------
local tTexasLiveShowActivity_Data = {}

	tTexasLiveShowActivity_Data["ActivityTime"] = {}
	tTexasLiveShowActivity_Data["ActivityTime"][0] = "2017-06-01 18:00 2017-06-01 21:00" -- 欧服
	tTexasLiveShowActivity_Data["ActivityTime"][1] = "2017-06-01 10:00 2017-06-01 13:00" -- 美服
	tTexasLiveShowActivity_Data["BackpackLetterTime"] = {}
	tTexasLiveShowActivity_Data["BackpackLetterTime"][0] = "2017-06-01 00:00 2017-06-01 21:00" -- 欧服
	tTexasLiveShowActivity_Data["BackpackLetterTime"][1] = "2017-06-01 00:00 2017-06-01 13:00" -- 美服
	
	-- 寻路
	tTexasLiveShowActivity_Data["Npc"] = {}
	tTexasLiveShowActivity_Data["Npc"][0] = {}
	tTexasLiveShowActivity_Data["Npc"][0]["NpcId"] = 20670
	tTexasLiveShowActivity_Data["Npc"][0]["CellX"] = 192
	tTexasLiveShowActivity_Data["Npc"][0]["CellY"] = 170
	tTexasLiveShowActivity_Data["Npc"][1] = {}
	tTexasLiveShowActivity_Data["Npc"][1]["NpcId"] = 20672
	tTexasLiveShowActivity_Data["Npc"][1]["CellX"] = 192
	tTexasLiveShowActivity_Data["Npc"][1]["CellY"] = 170
	
	-- ItemId
	tTexasLiveShowActivity_Data["ItemId"] = {}
	tTexasLiveShowActivity_Data["ItemId"]["BackpackLetter"] = 3303448
	
	-- MapId
	tTexasLiveShowActivity_Data["MapId"] = {}
	tTexasLiveShowActivity_Data["MapId"]["Market"] = 1036
	tTexasLiveShowActivity_Data["MapId"]["Texas"] = 3053
	
	-- Log
	tTexasLiveShowActivity_Data["Log"] = {}
	tTexasLiveShowActivity_Data["Log"]["BackpackLetter"] = "0,0,0,0,12000732,2,3303448,1"
	
	-- 输入字符长度
	tTexasLiveShowActivity_Data["Length"] = 15
	
	tTexasLiveShowActivity_Data["GlobalId"] = 51560
	
	-- 掩码
	tTexasLiveShowActivity_Data["Stc"] = {}
	-- stc(160,85)，记录玩家领取礼包的情况
	tTexasLiveShowActivity_Data["Stc"]["Pack"] = {}
	tTexasLiveShowActivity_Data["Stc"]["Pack"]["EventType"] = 160
	tTexasLiveShowActivity_Data["Stc"]["Pack"]["DataType"] = 85
	tTexasLiveShowActivity_Data["Stc"]["Pack"]["Complete"] = 1
	-- stc(160,86)，背包信
	tTexasLiveShowActivity_Data["Stc"]["Letter"] = {}
	tTexasLiveShowActivity_Data["Stc"]["Letter"]["EventType"] = 160
	tTexasLiveShowActivity_Data["Stc"]["Letter"]["DataType"] = 86
	tTexasLiveShowActivity_Data["Stc"]["Letter"]["Complete"] = 1
	-- stc(160,87)，记录德州地图弹链接的情况
	tTexasLiveShowActivity_Data["Stc"]["Link"] = {}
	tTexasLiveShowActivity_Data["Stc"]["Link"]["EventType"] = 160
	tTexasLiveShowActivity_Data["Stc"]["Link"]["DataType"] = 87
	tTexasLiveShowActivity_Data["Stc"]["Link"]["Complete"] = 1
	
	-- 背包空间
	tTexasLiveShowActivity_Data["Space"] = 1
	
	-- 直播地址
	tTexasLiveShowActivity_Data["WebAddress"] = "http://co.99.com/guide/event/2017/copokerliveshow/"

local tTexasLiveShowActivity_Reward = {}
	-- 给礼包
	tTexasLiveShowActivity_Reward = {}
	tTexasLiveShowActivity_Reward["LivePack"] = {}
	tTexasLiveShowActivity_Reward["LivePack"]["EventType"] = tTexasLiveShowActivity_Data["Stc"]["Pack"]["EventType"]
	tTexasLiveShowActivity_Reward["LivePack"]["DataType"] = tTexasLiveShowActivity_Data["Stc"]["Pack"]["DataType"]
	tTexasLiveShowActivity_Reward["LivePack"]["RewardTotalData"] = 1
	tTexasLiveShowActivity_Reward["LivePack"]["RewardItem"] = {}
	tTexasLiveShowActivity_Reward["LivePack"]["RewardItem"][1] = {}
	tTexasLiveShowActivity_Reward["LivePack"]["RewardItem"][1]["Id"] = 3303447
	tTexasLiveShowActivity_Reward["LivePack"]["RewardItem"][1]["Attr"] = "0 1"
	tTexasLiveShowActivity_Reward["LivePack"]["RewardEffect"] = {}
	tTexasLiveShowActivity_Reward["LivePack"]["RewardEffect"]["Effect"] = "angelwing"
	tTexasLiveShowActivity_Reward["LivePack"]["LogId"] = "12000732"

	-- 开礼包
	tTexasLiveShowActivity_Reward[3303447] = {}
	tTexasLiveShowActivity_Reward[3303447]["RewardItem"] = {}
	-- 德州时效外套-FlushofHearts  7天时效 1%神佑 （赠） monopoly 11
	tTexasLiveShowActivity_Reward[3303447]["RewardItem"][1] = {}
	tTexasLiveShowActivity_Reward[3303447]["RewardItem"][1]["Id"] = 193635
	tTexasLiveShowActivity_Reward[3303447]["RewardItem"][1]["Attr"] = "0 1 0 10080 1 0 0 1"
	-- 经验球*3 （赠） monopoly 11
	tTexasLiveShowActivity_Reward[3303447]["RewardItem"][2] = {}
	tTexasLiveShowActivity_Reward[3303447]["RewardItem"][2]["Id"] = 722146
	tTexasLiveShowActivity_Reward[3303447]["RewardItem"][2]["Attr"] = "0 3"
	-- 赤练石+1（赠）*3 monopoly 0
	tTexasLiveShowActivity_Reward[3303447]["RewardItem"][3] = {}
	tTexasLiveShowActivity_Reward[3303447]["RewardItem"][3]["Id"] = 730001
	tTexasLiveShowActivity_Reward[3303447]["RewardItem"][3]["Attr"] = "0 3 3"
	-- 500点天石（赠）
	tTexasLiveShowActivity_Reward[3303447]["RewardEMoneyMono"] = {}
	tTexasLiveShowActivity_Reward[3303447]["RewardEMoneyMono"]["Value"] = 500
	-- 500点气力值
	tTexasLiveShowActivity_Reward[3303447]["RewardStrengthValue"] = {}
	tTexasLiveShowActivity_Reward[3303447]["RewardStrengthValue"]["Value"] = 500
	tTexasLiveShowActivity_Reward[3303447]["DeleteItem"] = {} 
	tTexasLiveShowActivity_Reward[3303447]["DeleteItem"][1] = {}
	tTexasLiveShowActivity_Reward[3303447]["DeleteItem"][1]["Id"] = 3303447
	tTexasLiveShowActivity_Reward[3303447]["RewardEffect"] = {}
	tTexasLiveShowActivity_Reward[3303447]["RewardEffect"]["Effect"] = "angelwing"
	tTexasLiveShowActivity_Reward[3303447]["LogId"] = "12000732"
	tTexasLiveShowActivity_Reward[3303447]["EmoneyLog"] = "350	20470	0	0	500	"
--------------------------------------NPC逻辑部分---------------------------------------------
function TexasLiveShowActivity_MainNpc(nNpcId)
	local nGlobalId = tTexasLiveShowActivity_Data["GlobalId"]
	local nIndex = Get_SysDynaGlobalData0(nGlobalId)
	if not Sys_ChkFullTime(tTexasLiveShowActivity_Data["ActivityTime"][nIndex]) then
		tNpcGossip[nNpcId]["Text113"] = string.format(tTexasLiveShowActivity_Text[nNpcId]["Text113"],tTexasLiveShowActivity_Text["Time"][nIndex])
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	Sys_DialogText(tTexasLiveShowActivity_Text[nNpcId]["Text121"])
	Sys_DialogText(tTexasLiveShowActivity_Text[nNpcId]["Text122"])
	Sys_DialogText(tTexasLiveShowActivity_Text[nNpcId]["Text123"])
	Sys_DialogText(string.format(tTexasLiveShowActivity_Text[nNpcId]["Text124"],tTexasLiveShowActivity_Text["Time"][nIndex]))
	Sys_DialogOptEdit(tTexasLiveShowActivity_Text[nNpcId]["Option3"],tTexasLiveShowActivity_Data["Length"],"TexasLiveShowActivity_JudgeCode</N>".. nNpcId)
	Sys_DialogOption(tTexasLiveShowActivity_Text[nNpcId]["Option2"] ,"</F>TexasLiveShowActivity_OpenWebAddress")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 直播链接
function TexasLiveShowActivity_OpenWebAddress()
	local sWebAddress = tTexasLiveShowActivity_Data["WebAddress"]
	User_SendWebPage(sWebAddress)
end

-- code 判断
function TexasLiveShowActivity_JudgeCode(nNpcId)
	-- 时间判断
	local nGlobalId = tTexasLiveShowActivity_Data["GlobalId"]
	local nIndex = Get_SysDynaGlobalData0(nGlobalId)
	if not Sys_ChkFullTime(tTexasLiveShowActivity_Data["ActivityTime"][nIndex]) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	-- 已经领过
	local nEventType = tTexasLiveShowActivity_Data["Stc"]["Pack"]["EventType"]
	local nDataType = tTexasLiveShowActivity_Data["Stc"]["Pack"]["DataType"]
	local nComplete = tTexasLiveShowActivity_Data["Stc"]["Pack"]["Complete"]
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 背包判断
	if not User_CheckLeftSpace(tTexasLiveShowActivity_Data["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- code 错误
	local sWord = Get_SysAcceptStr()
	if sWord ~= tTexasLiveShowActivity_Text["Code"] then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- code 正确
	RewardTemplate_UseItemAndMsg(tTexasLiveShowActivity_Reward["LivePack"])
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 背包信寻路
function TexasLiveShowActivity_FindTheNpc()
	local nGlobalId = tTexasLiveShowActivity_Data["GlobalId"]
	local nIndex = Get_SysDynaGlobalData0(nGlobalId)
	local nMapId = tTexasLiveShowActivity_Data["MapId"]["Market"]
	local nPosX = tTexasLiveShowActivity_Data["Npc"][nIndex]["CellX"]
	local nPosY = tTexasLiveShowActivity_Data["Npc"][nIndex]["CellY"]
	local nNpcId = tTexasLiveShowActivity_Data["Npc"][nIndex]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 上线触发 背包信
function TexasLiveShowActivity_BackpackLetter()
	-- 时间判断
	local nGlobalId = tTexasLiveShowActivity_Data["GlobalId"]
	local nIndex = Get_SysDynaGlobalData0(nGlobalId)
	if not Sys_ChkFullTime(tTexasLiveShowActivity_Data["BackpackLetterTime"][nIndex]) then
		return
	end
	
	-- 物品判断
	local nItemId = tTexasLiveShowActivity_Data["ItemId"]["BackpackLetter"]
	if Item_ChkItem(nItemId) then
		return
	end
	
	-- 掩码判断
	local nEventType = tTexasLiveShowActivity_Data["Stc"]["Letter"]["EventType"]
	local nDataType = tTexasLiveShowActivity_Data["Stc"]["Letter"]["DataType"]
	local nComplete = tTexasLiveShowActivity_Data["Stc"]["Letter"]["Complete"]
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return
	end
	
	-- 背包空间判断
	local nSpace = tTexasLiveShowActivity_Data["Space"]
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tTexasLiveShowActivity_Text[nItemId]["NoSpace"])
		return
	end
	
	----------------------------------------- 获得物品
	Task_SetStatistic(nEventType,nDataType,nComplete,1)
	Item_AddItem(nItemId)
	
	local sLog = tTexasLiveShowActivity_Data["Log"]["BackpackLetter"]
	Sys_SaveActionFestivalLog(sLog)
	
	local sStr = tTexasLiveShowActivity_Text[nItemId]["RewardItem"]
	User_TalkChannel2005(sStr)
end

-- 弹链接
function TexasLiveShowActivity_Link()
	-- 时间判断
	local nGlobalId = tTexasLiveShowActivity_Data["GlobalId"]
	local nIndex = Get_SysDynaGlobalData0(nGlobalId)
	if not Sys_ChkFullTime(tTexasLiveShowActivity_Data["ActivityTime"][nIndex]) then
		return
	end
	
	-- 地图判断
	local nUserMapId = Get_UserMapId()
	local nTexasMapId = tTexasLiveShowActivity_Data["MapId"]["Texas"]
	if nUserMapId ~= nTexasMapId then
		return
	end
	
	-- 掩码判断
	local nEventType = tTexasLiveShowActivity_Data["Stc"]["Link"]["EventType"]
	local nDataType = tTexasLiveShowActivity_Data["Stc"]["Link"]["DataType"]
	local nComplete = tTexasLiveShowActivity_Data["Stc"]["Link"]["Complete"]
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return
	end
	
	----------------------------------------- 弹链接
	Task_SetStatistic(nEventType,nDataType,nComplete,1)
	TexasLiveShowActivity_OpenWebAddress()
end
--------------------------------------npc模板----------------------------------------------
-- 欧服
-- 头像
tNpcFace[4823] = 119
for i = 20670,20671 do
tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[i]["OptionHidden"] = 1
tNpcGossip[i]["DialogueText"] = tTexasLiveShowActivity_Text[i]

tNpcGossip[i]["Text1-1"] = {111,112,113}
tNpcGossip[i]["tOption1-1"] = {1}

tNpcGossip[i]["Text1-2"] = {121,122,123,124}
tNpcGossip[i]["tOption1-2"] = {3,2}

-- 接“领取福利”
-- code正确
tNpcGossip[i]["Text2-1"] = {211}
tNpcGossip[i]["tOption2-1"] = {4}

-- code错误
tNpcGossip[i]["Text2-2"] = {221}
tNpcGossip[i]["tOption2-2"] = {5}

-- 已领
tNpcGossip[i]["Text2-3"] = {231}
tNpcGossip[i]["tOption2-3"] = {6}

-- 背包满
tNpcGossip[i]["Text2-4"] = {241}
tNpcGossip[i]["tOption2-4"] = {7}

-- 时间已过
tNpcGossip[i]["Text2-5"] = {251}
tNpcGossip[i]["tOption2-5"] = {8}

-- 非活动时间
tNpcGossip[i]["Text2-6"] = {261}
tNpcGossip[i]["tOption2-6"] = {9}
end

-- 美服
for i = 20672,20673 do
tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[i]["OptionHidden"] = 1
tNpcGossip[i]["DialogueText"] = tTexasLiveShowActivity_Text[i]

tNpcGossip[i]["Text1-1"] = {111,112,113}
tNpcGossip[i]["tOption1-1"] = {1}

tNpcGossip[i]["Text1-2"] = {121,122,123,124}
tNpcGossip[i]["tOption1-2"] = {3,2}

-- 接“领取福利”
-- code正确
tNpcGossip[i]["Text2-1"] = {211}
tNpcGossip[i]["tOption2-1"] = {4}

-- code错误
tNpcGossip[i]["Text2-2"] = {221}
tNpcGossip[i]["tOption2-2"] = {5}

-- 已领
tNpcGossip[i]["Text2-3"] = {231}
tNpcGossip[i]["tOption2-3"] = {6}

-- 背包满
tNpcGossip[i]["Text2-4"] = {241}
tNpcGossip[i]["tOption2-4"] = {7}

-- 时间已过
tNpcGossip[i]["Text2-5"] = {251}
tNpcGossip[i]["tOption2-5"] = {8}

-- 非活动时间
tNpcGossip[i]["Text2-6"] = {261}
tNpcGossip[i]["tOption2-6"] = {9}
end
--------------------------------------物品模板----------------------------------------
-- 礼包
tItem[3303447] = tItem[3303447] or {}
tItem[3303447]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tTexasLiveShowActivity_Reward[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tTexasLiveShowActivity_Reward[nItemId],nUserId,bJudge)
end

-- 背包信
tItemFace[3303448] = 647
tItem[3303448] = tItem[3303448] or {}
tItem[3303448]["DialogueText"] = tTexasLiveShowActivity_Text[3303448]

tItem[3303448]["Text1-1"] = {111,112}
tItem[3303448]["tOption1-1"] = {1,2}
tItem[3303448]["OptionFunc1"] = "TexasLiveShowActivity_OpenWebAddress"
tItem[3303448]["OptionFunc2"] = "TexasLiveShowActivity_FindTheNpc"
tItem[3303448]["ChkFunc1-1"] = function()
	local nGlobalId = tTexasLiveShowActivity_Data["GlobalId"]
	local nIndex = Get_SysDynaGlobalData0(nGlobalId)
	local nItemId = tTexasLiveShowActivity_Data["ItemId"]["BackpackLetter"]
	local sStr = tTexasLiveShowActivity_Text[nItemId]["TimeOut"]
	
	if not Sys_ChkFullTime(tTexasLiveShowActivity_Data["BackpackLetterTime"][nIndex]) then
		Item_DelItem(nItemId)
		User_TalkChannel2005(tTexasLiveShowActivity_Text[nItemId]["TimeOut"])
		return false
	end
	
	local sTime = tTexasLiveShowActivity_Text["Time"][nIndex]
	tItem[nItemId]["Text111"] = string.format(tTexasLiveShowActivity_Text[nItemId]["Text111"],sTime)
	return true
end

-- 上限触发
-- table.insert(tSystem_PlayLogin_Func,TexasLiveShowActivity_BackpackLetter)
-- table.insert(tSystem_PlayLogin_Func,TexasLiveShowActivity_Link)