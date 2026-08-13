------------------------------------------------------------------------------------
--Name：        190218[简体征服][活动脚本]烦请内嵌天机转盘促销活动页面
--Creator:      江宇君
--Created:      2019-02-18
------------------------------------------------------------------------------------
-- 任务需求：
-- 【简体征服】烦请内嵌天机转盘促销活动页面（请转大柯）
-- 1、活动时间：2019年3月7日服务器维护后-4月4日23:59
-- 2、页面需提供内嵌，活动地址：https://hd.zf.99.com/tjzp
-- 3、线上NPC需提供上交天石的选项，同时需要提供读取天石的掩码。（天石数值支持自定义输入。）
-- 全区服更新。烦请转单，O(∩_∩)O谢谢~

-- 天机转盘
-- logid：	12001312
-- emoneybuylog：10000	0175
-- stc：190	26 记录玩家上交的天石数
-- stc：191	11 背包信掩码
-- 活动时间2019.3.7-2019.4.4

-- 命名规范：
-- TreasuresLuck_

-- 1表示珍宝奇缘 2表示天机转盘

local tTreasuresLuck_Data = {}
	tTreasuresLuck_Data["ActivityTime"] = {}
	tTreasuresLuck_Data["ActivityTime"][1] = tActivityTime["TurntableLuck"]["ActivityTime"] -- 天机转盘
	
	tTreasuresLuck_Data["Link"] = {}
	tTreasuresLuck_Data["Link"][1] = "https://coevent.99.com/fortunewheel1905/client/"  -- 天机转盘
	
	tTreasuresLuck_Data["EMoneyLog"] = {}
	tTreasuresLuck_Data["EMoneyLog"][1] = "10000	0175	%d	%d	1	"  -- 天机转盘
	
	tTreasuresLuck_Data["Log"] = {}
	tTreasuresLuck_Data["Log"][1] = "%d,0,0,0,12001312,0,0,0"  -- 天机转盘
	
	--掩码
	tTreasuresLuck_Data["Stc"] = {}
	
	tTreasuresLuck_Data["Stc"][1] = {}
	tTreasuresLuck_Data["Stc"][1]["EventType"] = 190  -- 天机转盘
	tTreasuresLuck_Data["Stc"][1]["DataType"] = 26

	tTreasuresLuck_Data["Level"] = 80 --等级限制
	tTreasuresLuck_Data["Metempsychosis"] = 0 
	
----------------------------------逻辑部分---------------------------------------------
--跳转内嵌网页
function TreasuresLuck_OpenWebDialog(nNpcId, nNum)
	--判断活动时间
	if not Sys_ChkFullTime(tTreasuresLuck_Data["ActivityTime"][nNum]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tTreasuresLuck_Data["Level"],tTreasuresLuck_Data["Metempsychosis"]) then
		return
	end
	
	local sLink = tTreasuresLuck_Data["Link"][nNum]
	User_SendWebDialog(sLink)
end
	
-- 上交天石对白
function TreasuresLuck_Hand(nNpcId, nNum)
	--时间判断
	if not Sys_ChkFullTime(tTreasuresLuck_Data["ActivityTime"][nNum]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end

	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tTreasuresLuck_Data["Level"],tTreasuresLuck_Data["Metempsychosis"]) then
		return
	end
	
	Sys_DialogFace(nNpcId)
	Sys_DialogText(tTreasuresLuck_Text[nNpcId]["Text211"])
	Sys_DialogText(tTreasuresLuck_Text[nNpcId]["Text212"])
	Sys_DialogText(tTreasuresLuck_Text[nNpcId]["Text213"])
	Sys_DialogOptEdit(tTreasuresLuck_Text[nNpcId]["Option211"],10,"TreasuresLuck_Confirm</N>"..nNpcId.."</N>"..nNum)
	Sys_DialogOption(tTreasuresLuck_Text[nNpcId]["Option212"])
	Sys_DialogEnd()
	
end

-- 二次确认
function TreasuresLuck_Confirm(nNpcId, nNum)
	-- 获取玩输入的字符
	local nUserId = Get_UserId()
	local nInput = tonumber(Get_SysAcceptStr())
	local nEmoney = Get_UserEMoney(nUserId)
	
	--时间判断
	if not Sys_ChkFullTime(tTreasuresLuck_Data["ActivityTime"][nNum]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tTreasuresLuck_Data["Level"],tTreasuresLuck_Data["Metempsychosis"]) then
		return
	end
	
	if type(nInput) ~= "number" or nInput <= 0 then
		TreasuresLuck_Hand(nNpcId, nNum)
		return
	end
	
	-- 英文同步新增 输入天石数为100的倍数
	if nInput%100 ~= 0 then
		Sys_MsgBox(tTreasuresLuck_Text["MsgBox"]["EmoneyLimit"])
		return
	end
	
	if nInput > nEmoney then
		Sys_MsgBox(tTreasuresLuck_Text["MsgBox"]["EnoughEmoney"])
		return
	end
	
	-- 二级密码验证窗口
	if not Sys_IsOpenSecondPWD() then
		User_OpenDialog(568) -- 窗口id
		return
	end
	
	local sText = string.format(tTreasuresLuck_Text[nNpcId]["Text311"], nInput)
	Sys_DialogFace(nNpcId)
	Sys_DialogText(sText)
	Sys_DialogOption(tTreasuresLuck_Text[nNpcId]["Option311"], "</F>TreasuresLuck_CostEMoney</N>"..nNpcId.."</N>"..nInput.."</N>"..nNum)
	Sys_DialogOption(tTreasuresLuck_Text[nNpcId]["Option312"])
	Sys_DialogEnd()
end

function TreasuresLuck_CostEMoney(nNpcId, nInput, nNum)
	-- 获取玩输入的字符
	local nUserId = Get_UserId()
	local nEmoney = Get_UserEMoney(nUserId)
	local sEMoneyLog = string.format(tTreasuresLuck_Data["EMoneyLog"][nNum], nInput, nInput)
	local sLog = string.format(tTreasuresLuck_Data["Log"][nNum], nInput)
	local sText = string.format(tTreasuresLuck_Text[nNpcId]["Text411"], nInput)
	local nEvent = tTreasuresLuck_Data["Stc"][nNum]["EventType"]
	local nType = tTreasuresLuck_Data["Stc"][nNum]["DataType"]
	
	--时间判断
	if not Sys_ChkFullTime(tTreasuresLuck_Data["ActivityTime"][nNum]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tTreasuresLuck_Data["Level"],tTreasuresLuck_Data["Metempsychosis"]) then
		return
	end
	
	-- 英文同步新增 输入天石数为100的倍数
	if nInput%100 ~= 0 then
		Sys_MsgBox(tTreasuresLuck_Text["MsgBox"]["EmoneyLimit"])
		return
	end
	
	if nInput > nEmoney then
		Sys_MsgBox(tTreasuresLuck_Text["MsgBox"]["EnoughEmoney"])
		return
	end
	
	if not User_AddEMoney(-nInput) then
		return
	end
	
	-- 置掩码
	Task_AddStatistic(nEvent, nType, nInput, 1, nUserId)
	Task_SetStcTimestamp(nEvent, nType, 0, nUserId)
	
	-- 打Log
	Sys_SaveEmoneyBuy(sEMoneyLog)
	Sys_SaveActionFestivalLog(sLog)
	
	-- 出对白
	Sys_DialogFace(nNpcId)
	Sys_DialogText(sText)
	Sys_DialogOption(tTreasuresLuck_Text[nNpcId]["Option411"], "</F>TreasuresLuck_OpenWebDialog</N>"..nNpcId.."</N>"..nNum)
	Sys_DialogOption(tTreasuresLuck_Text[nNpcId]["Option412"])
	Sys_DialogEnd()
end

----------------------------------NPC部分---------------------------------------------
-- 天机转盘npc
tNpcFace[1549] = 37
tItemFace[3312076] = 1516

tNpcGossip[23811]= tNpcGossip[23811] or DefaultNpc:new{}
tNpcGossip[23811]["OptionHidden"] = 1
tNpcGossip[23811]["DialogueText"] = tTreasuresLuck_Text[23811]

--活动前
tNpcGossip[23811]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23811]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tTreasuresLuck_Data["ActivityTime"][1])
end
tNpcGossip[23811]["tOption1-1"] = {111}

--活动中 等级不足
tNpcGossip[23811]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[23811]["ChkFunc1-2"]= function()
	if User_JudgeLevelAndMetempsychosis(tTreasuresLuck_Data["Level"],tTreasuresLuck_Data["Metempsychosis"]) then
		return false
	end
	
	return Sys_ChkFullTime(tTreasuresLuck_Data["ActivityTime"][1])
end
tNpcGossip[23811]["tOption1-2"] = {121}

--活动中 等级不足
tNpcGossip[23811]["Text1-3"] = {131,132,133,134}
tNpcGossip[23811]["ChkFunc1-3"]= function()
	if not User_JudgeLevelAndMetempsychosis(tTreasuresLuck_Data["Level"],tTreasuresLuck_Data["Metempsychosis"]) then
		return false
	end
	
	return Sys_ChkFullTime(tTreasuresLuck_Data["ActivityTime"][1])
end
tNpcGossip[23811]["tOption1-3"] = {131,132,133}
tNpcGossip[23811]["OptionFunc131"] = "TreasuresLuck_OpenWebDialog</N>23811</N>1"
tNpcGossip[23811]["OptionFunc132"] = "TreasuresLuck_Hand</N>23811</N>1"

--活动后
tNpcGossip[23811]["Text1-4"] = {141,142}
tNpcGossip[23811]["ChkFunc1-4"]= function()
	return not Sys_ChkFullTime(tTreasuresLuck_Data["ActivityTime"][1])
end
tNpcGossip[23811]["tOption1-4"] = {141}