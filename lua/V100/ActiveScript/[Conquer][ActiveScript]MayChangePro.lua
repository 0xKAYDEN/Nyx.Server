------------------------------------------------------------------------------------
--Name:			170421[英文征服][活动脚本]5月转职圣殿NPC制作（5.23-6.06）
--Purpose:		5月转职圣殿NPC制作
--Creator:		陈琳
--Created:		2017/04/21
------------------------------------------------------------------------------------
-- 命名前缀
-- MayChangePro_

-- lua.ini
-- 40514

-- logid
-- 12000915

-- 掩码
-- stc(159,43) 记录玩家是否预约
-- stc(159,46) 圣殿特权邀请函 背包信

-- NpcId
-- 20531 4769 转职圣殿大使

-- ItemId
-- 3303197 圣殿特权邀请函
-- 3306164 转职圣殿预约证书
--------------------------------------数据部分-------------------------------------------
local tMayChangePro_Data = {}
	
	-- 活动页面地址
	tMayChangePro_Data["WebAddress"] = "http://event.co.99.com/newrebirth/client"
	
	-- 预约需要的天石数
	tMayChangePro_Data["NeedEMoney"] = 10000
	
	tMayChangePro_Data["LogId"] = 12000915
	
	-- stc(159,43) 记录玩家是否预约
	tMayChangePro_Data["Stc"] = {}
	tMayChangePro_Data["Stc"]["EventType"] = 159
	tMayChangePro_Data["Stc"]["DataType"] = 43
	tMayChangePro_Data["Stc"]["Complete"] = 1
	
	tMayChangePro_Data["Effect"] = {}
	tMayChangePro_Data["Effect"]["Reward"] = "zf2-e128"
	
	tMayChangePro_Data["Itemtype"] = {}
	tMayChangePro_Data["Itemtype"]["Certificate"] = 3306164
	
local tMayChangePro_Reward = {}

	tMayChangePro_Reward[3306164] = {}
	tMayChangePro_Reward[3306164]["RewardItem"] = {}
	tMayChangePro_Reward[3306164]["RewardItem"][1] = {}
	tMayChangePro_Reward[3306164]["RewardItem"][1]["Id"] = 3306164
	tMayChangePro_Reward[3306164]["RewardItem"][1]["Attr"] = "0 1"
	tMayChangePro_Reward[3306164]["RewardEffect"] = {}
	tMayChangePro_Reward[3306164]["RewardEffect"]["Effect"] = tMayChangePro_Data["Effect"]["Reward"]
	tMayChangePro_Reward[3306164]["LogId"] = tMayChangePro_Data["LogId"]
	tMayChangePro_Reward[3306164]["EmoneyLog"] = "350	20548	10000	10000	1	"
--------------------------------------NPC逻辑部分----------------------------------------
-- 预约特权
function MayChangePro_SubscribePrivilege(nNpcId)
	local nEventType = tMayChangePro_Data["Stc"]["EventType"]
	local nDataType = tMayChangePro_Data["Stc"]["DataType"]
	local nComplete = tMayChangePro_Data["Stc"]["Complete"]
	
	-- 失败，玩家已成功付钱预约过特权
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 确认
function MayChangePro_ComfirmToSubscribe(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["MayChangePro"]["ActivityTime"]) then
		return
	end
	
	-- 已预约则返回
	local nEventType = tMayChangePro_Data["Stc"]["EventType"]
	local nDataType = tMayChangePro_Data["Stc"]["DataType"]
	local nComplete = tMayChangePro_Data["Stc"]["Complete"]
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return
	end
	
	-- 判断玩家天石数
	local nNeedEMoney = tMayChangePro_Data["NeedEMoney"]
	local nUserEMoney = Get_UserEMoney()
	if nUserEMoney < nNeedEMoney then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	-- 判断背包空间
	local nItemId = tMayChangePro_Data["Itemtype"]["Certificate"]
	local nSpace = RewardTemplate_GetRewardSpace(tMayChangePro_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	-------------------------------------- 打掩码 扣天石 给凭证 出提示
	local sMsg = tMayChangePro_Text["Msg"]["Success"]
	Task_SetStatistic(nEventType,nDataType,nComplete,1)
	User_AddEMoney(-nNeedEMoney)
	RewardTemplate_UseItemAndMsg(tMayChangePro_Reward[nItemId])
	User_TalkChannel2005(sMsg)
end

-- 打开网页
function MayChangePro_OpenWebAddress()
	local sWebAddress = tMayChangePro_Data["WebAddress"]
	User_SendWebDialog(sWebAddress)
end
--------------------------------------npc模板--------------------------------------------
-- 20531 4769 转职圣殿大使
-- 头像
tNpcFace[4769] = 107

tNpcGossip[20531] = tNpcGossip[20531] or DefaultNpc:new{}
tNpcGossip[20531]["OptionHidden"] = 1
tNpcGossip[20531]["DialogueText"] = tMayChangePro_Text[20531]

-- 活动时间前
tNpcGossip[20531]["Text1-1"] = {111,112,113,114}
tNpcGossip[20531]["tOption1-1"] = {1}
tNpcGossip[20531]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["MayChangePro"]["ActivityTime"])
end

-- 活动时间后
tNpcGossip[20531]["Text1-2"] = {121}
tNpcGossip[20531]["tOption1-2"] = {2}
tNpcGossip[20531]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["MayChangePro"]["ActivityTime"])
end

-- 活动时间中
tNpcGossip[20531]["Text1-3"] = {131,132,133,134}
tNpcGossip[20531]["tOption1-3"] = {3,4,5}
tNpcGossip[20531]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["MayChangePro"]["ActivityTime"]) then
		-- 判断是否已经预约 出相应选项
		local nEventType = tMayChangePro_Data["Stc"]["EventType"]
		local nDataType = tMayChangePro_Data["Stc"]["DataType"]
		local nComplete = tMayChangePro_Data["Stc"]["Complete"]
		
		if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
			tNpcGossip[20531]["tOption1-3"] = {4,5}
		else
			tNpcGossip[20531]["tOption1-3"] = {3,5}
		end
		
		return true
	else
		return false
	end
end
tNpcGossip[20531]["OptionFunc3"] = "MayChangePro_SubscribePrivilege</N>20531"
tNpcGossip[20531]["OptionFunc4"] = "MayChangePro_SubscribePrivilege</N>20531"
tNpcGossip[20531]["OptionFunc5"] = "MayChangePro_OpenWebAddress"

-- 失败，玩家已成功付钱预约过特权
tNpcGossip[20531]["Text2-1"] = {211,212}
tNpcGossip[20531]["tOption2-1"] = {6}

-- 预约对白
tNpcGossip[20531]["Text2-2"] = {221,222}
tNpcGossip[20531]["tOption2-2"] = {7,8}
tNpcGossip[20531]["OptionPoint7"] = "3-1"

-- 二次确认
tNpcGossip[20531]["Text3-1"] = {311}
tNpcGossip[20531]["tOption3-1"] = {9,10}
tNpcGossip[20531]["OptionFunc9"] = "MayChangePro_ComfirmToSubscribe</N>20531"

-- 天石不足，NPC对白
tNpcGossip[20531]["Text4-1"] = {411}
tNpcGossip[20531]["tOption4-1"] = {11}

-- 背包满
tNpcGossip[20531]["Text5-1"] = {511}
tNpcGossip[20531]["tOption5-1"] = {12}
--------------------------------------物品模板--------------------------------------------
-- 背包信头像
tItemFace[3303197] = 540