------------------------------------------------------------------------------------
--Name:			171227[简体征服][活动脚本]币商天石回收NPC
--Purpose:		币商天石回收NPC
--Creator:		陈琳
--Created:		2017/12/27
------------------------------------------------------------------------------------
-- lua.ini
-- 40791

-- logid
-- 12000971

-- npc
-- 22563 艾慧寿

-- 前缀	EmoneyRecycling_
--------------------------------------数据部分-------------------------------------------
local tEmoneyRecycling_Data = {}
	
	-- 输入字符长度
	tEmoneyRecycling_Data["Length"] = 15
	
	-- emoneylog
	tEmoneyRecycling_Data["Emoneylog"] = "350	4473	%d	%d	1	"
	
	-- rewardlog
	tEmoneyRecycling_Data["Log"] = "%d,0,0,0,12000971,1,0,0"
	
	-- 光效
	tEmoneyRecycling_Data["Effect"] = {}
	tEmoneyRecycling_Data["Effect"]["Normal"] = "zf2-e128"
--------------------------------------npc逻辑--------------------------------------------
-- 主对白
function EmoneyRecycling_MainNpc(nNpcId)
	Sys_DialogText(tEmoneyRecycling_Text[nNpcId]["Text111"])
	Sys_DialogText(tEmoneyRecycling_Text[nNpcId]["Text112"])
	Sys_DialogText(tEmoneyRecycling_Text[nNpcId]["Text113"])
	Sys_DialogOptEdit(tEmoneyRecycling_Text[nNpcId]["Option1"],tEmoneyRecycling_Data["Length"],"EmoneyRecycling_JudgeCode</N>".. nNpcId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 输入密码
function EmoneyRecycling_JudgeCode(nNpcId)
	-- code 错误
	local sWord = Get_SysAcceptStr()
	if sWord ~= tEmoneyRecycling_Text["Code"] then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- code 正确
	Sys_DialogText(tEmoneyRecycling_Text[nNpcId]["Text221"])
	Sys_DialogOptEdit(tEmoneyRecycling_Text[nNpcId]["Option221"],tEmoneyRecycling_Data["Length"],"EmoneyRecycling_Donation</N>".. nNpcId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 捐赠
function EmoneyRecycling_Donation(nNpcId)
	-- 判断输入是否合法
	local nNum = tonumber(Get_SysAcceptStr())
	if nNum == nil or type(nNum) ~= "number" or nNum%1 ~= 0 or nNum <=0 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 判断天石
	if Get_UserEMoney() < nNum then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	tNpcGossip[nNpcId]["Text331"] = string.format(tEmoneyRecycling_Text[nNpcId]["Text331"],nNum)
	tNpcGossip[nNpcId]["OptionFunc331"] = "EmoneyRecycling_Confirm</N>22563" .. "</N>" .. nNum
	LinkNpcGossipFunc_New(nNpcId,"3-3")
end

-- 确认捐赠
function EmoneyRecycling_Confirm(nNpcId,nNum)
	-- 判断天石
	if Get_UserEMoney() < nNum then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	---------------------------- 捐赠
	
	local sEmoneylog = string.format(tEmoneyRecycling_Data["Emoneylog"],nNum,nNum)
	local sRewardlog = string.format(tEmoneyRecycling_Data["Log"],nNum)
	local sMsg = string.format(tEmoneyRecycling_Text["Msg"]["Success"],nNum)
	-- if User_AddEMoney_Repo(-nNum) then
	--使用新的回收接口
	if User_AddEMoney_GM(-nNum) then
		Sys_SaveEmoneyBuy(sEmoneylog)
		Sys_SaveActionRewardLog(sRewardlog)
		User_TalkChannel2005(sMsg)
		User_EffectDel("self",tEmoneyRecycling_Data["Effect"]["Normal"])
		User_EffectAdd("self",tEmoneyRecycling_Data["Effect"]["Normal"])
	end
end

-- 重新输入天石
function EmoneyRecycling_Input(nNpcId)
	Sys_DialogText(tEmoneyRecycling_Text[nNpcId]["Text221"])
	Sys_DialogOptEdit(tEmoneyRecycling_Text[nNpcId]["Option221"],tEmoneyRecycling_Data["Length"],"EmoneyRecycling_Donation</N>".. nNpcId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end
--------------------------------------npc配置-------------------------------------------
-- 22563 艾慧寿
tNpcFace[5932] = 120

tNpcGossip[22563] = tNpcGossip[22563] or DefaultNpc:new{}
tNpcGossip[22563]["OptionHidden"] = 1
tNpcGossip[22563]["DialogueText"] = tEmoneyRecycling_Text[22563]

tNpcGossip[22563]["Text1-1"] = {111,112,113}
tNpcGossip[22563]["tOption1-1"] = {1}

tNpcGossip[22563]["Text2-1"] = {211}
tNpcGossip[22563]["tOption2-1"] = {211}
tNpcGossip[22563]["OptionFunc211"] = "EmoneyRecycling_MainNpc</N>22563"

tNpcGossip[22563]["Text2-2"] = {221}
tNpcGossip[22563]["tOption2-2"] = {221}

tNpcGossip[22563]["Text3-1"] = {311}
tNpcGossip[22563]["tOption3-1"] = {311}
tNpcGossip[22563]["OptionFunc311"] = "EmoneyRecycling_Input</N>22563"

tNpcGossip[22563]["Text3-2"] = {321}
tNpcGossip[22563]["tOption3-2"] = {321}
tNpcGossip[22563]["OptionFunc321"] = "EmoneyRecycling_Input</N>22563"

tNpcGossip[22563]["Text3-3"] = {331}
tNpcGossip[22563]["tOption3-3"] = {331,332}