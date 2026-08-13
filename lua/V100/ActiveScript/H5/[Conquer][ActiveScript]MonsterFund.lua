------------------------------------------------------------------------------------
--Name：        190427[简体征服][活动脚本]内嵌灵兽成长基金活动页面（5.14）
--Creator:      耿力兀
--Created:     2019-04-27
------------------------------------------------------------------------------------
--任务需求：
--活动时间：7.2-7.31
--内嵌页面链接改为 https://coevent.99.com/beast1907/client/
------------------------------------------------------------------------------------
--前缀：MonsterFund_
--stc掩码：194 37	背包信
--			194 38	上交天石计数
--			198 15	购买月卡次数
--			198 16	月卡开启次数
--global    53431  data0=1 是欧服
--logId :12001394
----------------------------------表配置部分--------------------------------------------
--网页
local tMonsterFund_Web={}
	tMonsterFund_Web["The_web"]="https://coevent.99.com/beast1907/client/"

local tMonsterFund_Stc = {}
	tMonsterFund_Stc["Global"] = 53431
	tMonsterFund_Stc["EventType"] = 194 
	tMonsterFund_Stc["DataType"] = 38
	tMonsterFund_Stc["BuyEventType"] = 198
	tMonsterFund_Stc["BuyDataType"] = 15


--Log表
local tMonsterFund_Log={}
	tMonsterFund_Log["Emoneylog"] = "%d,0,0,0,12001394,0,0,0"				--预存天石log
	tMonsterFund_Log["Emoney"] = "10000	0384"
	-- 过期log
	tMonsterFund_Log["OutTimeLog"] = "0,0,%d,%d,12001250,2,0,0"

local tMonsterFund_Rewarditem = {}
	-- ===人参果月卡
	-- ===索引: tMonsterFund_Rewarditem[1]
	tMonsterFund_Rewarditem[1] = {}
	tMonsterFund_Rewarditem[1]["LogId"] = 12001394
	tMonsterFund_Rewarditem[1]["RewardItem"] = {}
	tMonsterFund_Rewarditem[1]["RewardItem"][1] = {}
	tMonsterFund_Rewarditem[1]["RewardItem"][1]["Id"] = 3312926 -- 【库】 3312926 GinsengFruitCard[属性:9], 【表格】人参果月卡
	tMonsterFund_Rewarditem[1]["RewardItem"][1]["Attr"] = "0 1" --  3312926 GinsengFruitCard*1


	tMonsterFund_Rewarditem[3312926] = {}
	-- ===人参果
	-- ===索引: tMonsterFund_Rewarditem[3312926]
	tMonsterFund_Rewarditem[3312926]["LogId"] = 12001394
	tMonsterFund_Rewarditem[3312926]["EventType"] = 198
	tMonsterFund_Rewarditem[3312926]["DataType"] = 16
	tMonsterFund_Rewarditem[3312926]["RewardDelay"] = 1
	tMonsterFund_Rewarditem[3312926]["RewardTimeType"] = 4
	tMonsterFund_Rewarditem[3312926]["RewardTotalData"] = 30
	tMonsterFund_Rewarditem[3312926]["DeleteItem"] = {}
	tMonsterFund_Rewarditem[3312926]["DeleteItem"][1] = {}
	tMonsterFund_Rewarditem[3312926]["DeleteItem"][1]["Id"] = 3312926
	tMonsterFund_Rewarditem[3312926]["RewardItem"] = {}
	tMonsterFund_Rewarditem[3312926]["RewardItem"][1] = {}
	tMonsterFund_Rewarditem[3312926]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果
	tMonsterFund_Rewarditem[3312926]["RewardItem"][1]["Attr"] = "0 100" -- GinsengFruit*100
----------------------------------逻辑部分---------------------------------------------
--时间判断
function MonsterFund_ChkTime()
	local nData0 = Get_SysDynaGlobalData0(tMonsterFund_Stc["Global"])
	--美服时间
	local sActivityTime = tActivityTime["MonsterFund"]["AMActivityTime"]
	if nData0 ==1 then
		--欧服时间
		sActivityTime = tActivityTime["MonsterFund"]["EUActivityTime"]
	end 
	
	--时间判断
	if not Sys_ChkFullTime(sActivityTime) then
		return true
	end
	return false
end 



--打开内嵌网页
function MonsterFund_OpenWeb(nNpcId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["MonsterFund"]["NPCActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end
	local nUserId = Get_UserId()
	User_SendWebDialog(tMonsterFund_Web["The_web"],nUserId)
end 

--上交天石
function MonsterFund_HandEmoney(nNpcId)
	--时间判断
	if MonsterFund_ChkTime() then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 
	-- 二级密码验证窗口
	if not Sys_IsOpenSecondPWD() then
		User_OpenDialog(568) -- 窗口id
		return
	end
	Sys_DialogText(tMonsterFund_Text[23985]["Text141"])
	Sys_DialogOptEdit(tMonsterFund_Text[23985]["Option141"],5,"MonsterFund_detection</N>23985")
	Sys_DialogFace(23985)
	Sys_DialogEnd()
end 

--判断输入格式
function MonsterFund_detection(nNpcId)
	-- 判断输入格式
	local nInput = tonumber(Get_SysAcceptStr())
	--判断是否输入数字
	if type(nInput) == "number" and nInput>0 then 
		--判断是否超出上限
		if nInput > 99999  then
			LinkNpcGossipFunc_New(nNpcId,"1-6")
			return 
		else 
			--跳转2次确认
			tNpcGossip[23985]["OptionFunc151"] = "MonsterFund_AffirmHandEmoney</N>"..nInput.."</N>"..nNpcId
			tNpcGossip[23985]["Text151"] = string.format(tMonsterFund_Text[23985]["Text151"],nInput)
			LinkNpcGossipFunc_New(nNpcId,"1-5")
		end 
	else
		LinkNpcGossipFunc_New(nNpcId,"1-6")
	end 
end

--确认预存
function MonsterFund_AffirmHandEmoney(nEmoney,nNpcId)
	--时间判断
	if MonsterFund_ChkTime() then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 
	--判断天石是否足够
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tMonsterFund_Text["NoMoney"])
		return 
	end 
	--扣天石加掩码
	local nEvent = tMonsterFund_Stc["EventType"]
	local nType = tMonsterFund_Stc["DataType"]
	if User_AddEMoneyAndLog(-nEmoney,tMonsterFund_Log["Emoney"]) then
		--加掩码
		Task_AddStatistic(nEvent,nType,nEmoney,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		--加Log
		Sys_SaveActionFestivalLog(string.format(tMonsterFund_Log["Emoneylog"],nEmoney))
		Sys_MsgBox(string.format(tMonsterFund_Text["Succed"],nEmoney))
	end
end 

--购买月卡
function MonsterFund_BuyCard(nNpcId,nEmoney)
	--时间判断
	if MonsterFund_ChkTime() then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 
	--判断是否购买过
	local nEvent = tMonsterFund_Stc["BuyEventType"]
	local nType = tMonsterFund_Stc["BuyDataType"]
	if Task_ChkStcValue(nEvent,nType,">=",1)then 
		Sys_MsgBox(tMonsterFund_Text["Notime"])
		return 
	end 
	--判断天石是否足够
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tMonsterFund_Text["Buy"])
		return 
	end
	--判断背包空间
	if not RewardTemplate_CheckSpace(tMonsterFund_Rewarditem[1]) then
		return
	end
	--扣天石加掩码
	if User_AddEMoneyAndLog(-nEmoney,tMonsterFund_Log["Emoney"]) then
		--加掩码
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		--加Log
		Sys_SaveActionFestivalLog(string.format(tMonsterFund_Log["Emoneylog"],nEmoney))
		Sys_MsgBox(tMonsterFund_Text["BuySucced"])
		RewardTemplate_UseItemAndMsg(tMonsterFund_Rewarditem[1])
	end
end 

--打开可选包
function MonsterFund_OpenSelectPack(nItemId)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["MonsterFund"]["UseItemTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			Sys_MsgBox(tMonsterFund_Text["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tMonsterFund_Log["OutTimeLog"], nItemId, nItemNum))
		end
		return 
	end
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tMonsterFund_Rewarditem[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tMonsterFund_Rewarditem[nItemId],nUserId,bJudge)
end 
----------------------------------NPC部分---------------------------------------------
tNpcFace[6284] = 40
tNpcGossip[23985]= tNpcGossip[23985] or DefaultNpc:new{}
tNpcGossip[23985]["OptionHidden"] = 1
tNpcGossip[23985]["DialogueText"] = tMonsterFund_Text[23985]
--活动前
tNpcGossip[23985]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23985]["tOption1-1"] = {111}
tNpcGossip[23985]["ChkFunc1-1"]= function()
	tNpcGossip[23985]["Text1-1"] = {111,112,113,114}
	local nData0 = Get_SysDynaGlobalData0(tMonsterFund_Stc["Global"])
	if nData0 ==1 then
		--欧服
		tNpcGossip[23985]["Text1-1"] = {111,112,113,115}
	end 
	return CommonFunc_GetBeforeActivityTime(tActivityTime["MonsterFund"]["NPCActivityTime"])
end

--活动后
tNpcGossip[23985]["Text1-2"] = {111,121}
tNpcGossip[23985]["tOption1-2"] = {121}
tNpcGossip[23985]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["MonsterFund"]["NPCActivityTime"])
end

--活动中
tNpcGossip[23985]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[23985]["tOption1-3"] = {131,132,133,134}
tNpcGossip[23985]["ChkFunc1-3"]= function()
	tNpcGossip[23985]["Text1-3"] = {131,132,133,134}
	local nData0 = Get_SysDynaGlobalData0(tMonsterFund_Stc["Global"])
	if nData0 ==1 then
		--欧服
		tNpcGossip[23985]["Text1-3"] = {131,132,133,135}
	end 
	return Sys_ChkFullTime(tActivityTime["MonsterFund"]["NPCActivityTime"])
end

tNpcGossip[23985]["OptionFunc131"] = "MonsterFund_OpenWeb</N>23985"
tNpcGossip[23985]["OptionFunc132"] = "MonsterFund_HandEmoney</N>23985"
tNpcGossip[23985]["OptionPoint133"] = "1-7"

--预存天石二次确认
tNpcGossip[23985]["Text1-5"] = {151}
tNpcGossip[23985]["tOption1-5"] = {151,152}

--输入错误
tNpcGossip[23985]["Text1-6"] = {161}
tNpcGossip[23985]["tOption1-6"] = {161}
tNpcGossip[23985]["OptionFunc161"] = "MonsterFund_HandEmoney</N>23985"	--返回上一层

--购买月卡
tNpcGossip[23985]["Text1-7"] = {171,172}
tNpcGossip[23985]["tOption1-7"] = {171,172}
tNpcGossip[23985]["OptionFunc171"] = "MonsterFund_BuyCard</N>23985</N>27000"

---------------------------------物品部分---------------------------------------------
--月卡
tItem[3312926] = tItem[3312926] or {}
tItem[3312926]["Function"] = function(nItemId,sItemName)    
	MonsterFund_OpenSelectPack(nItemId)
end