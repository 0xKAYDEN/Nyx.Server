------------------------------------------------------------------------------------
--Name:			171018[英文征服][活动脚本]金币服分销商宣传
--Purpose:		金币服分销商宣传
--Creator:		陈琳
--Created:		2017/10/18
------------------------------------------------------------------------------------
-- lua.ini
-- 40722

-- logid
-- 12000912

-- npc
-- 22275 SilverDistributor

-- itemtype
-- 3306110 DistributorInfo

-- stc
-- (168,77) 背包信

-- 前缀
-- SilverServerPublicity_

--------------------------------------数据部分-------------------------------------------
local tSilverServerPublicity_Data = {}
	tSilverServerPublicity_Data["Web"] = "https://payment.99.com/index/v2/code_credit/scratchcard.html"
	
	-- 坐标
	tSilverServerPublicity_Data["Location"] = {}
	tSilverServerPublicity_Data["Location"][22275] = {}
	tSilverServerPublicity_Data["Location"][22275]["NpcId"] = 22275
	tSilverServerPublicity_Data["Location"][22275]["MapId"] = 1002
	tSilverServerPublicity_Data["Location"][22275]["PosX"] = 348
	tSilverServerPublicity_Data["Location"][22275]["PosY"] = 447
	
	tSilverServerPublicity_Data["Location"][22088] = {}
	tSilverServerPublicity_Data["Location"][22088]["NpcId"] = 22088
	tSilverServerPublicity_Data["Location"][22088]["MapId"] = 1002
	tSilverServerPublicity_Data["Location"][22088]["PosX"] = 340
	tSilverServerPublicity_Data["Location"][22088]["PosY"] = 438
	
	tSilverServerPublicity_Data["Itemtype"] = {}
	tSilverServerPublicity_Data["Itemtype"]["BackpackLetter"] = 3306110
	
	-- 掩码
	tSilverServerPublicity_Data["Stc"] = {}
	-- (168,77) 背包信
	tSilverServerPublicity_Data["Stc"]["BackpackLetter"] = {}
	tSilverServerPublicity_Data["Stc"]["BackpackLetter"]["EventType"] = 168
	tSilverServerPublicity_Data["Stc"]["BackpackLetter"]["DataType"] = 77
	tSilverServerPublicity_Data["Stc"]["BackpackLetter"]["Complete"] = 1

local tSilverServerPublicity_Reward = {}
	tSilverServerPublicity_Reward["BackpackLetter"] = {}
	tSilverServerPublicity_Reward["BackpackLetter"]["RewardItem"] = {}
	tSilverServerPublicity_Reward["BackpackLetter"]["RewardItem"][1] = {}
	tSilverServerPublicity_Reward["BackpackLetter"]["RewardItem"][1]["Id"] = 3306110
	tSilverServerPublicity_Reward["BackpackLetter"]["RewardItem"][1]["Attr"] = "0 1"
	tSilverServerPublicity_Reward["BackpackLetter"]["LogId"] = 12000912
	tSilverServerPublicity_Reward["BackpackLetter"]["Talk"] = tSilverServerPublicity_Text["Msg"]["RewardItem"]
--------------------------------------逻辑部分-------------------------------------------
function SilverServerPublicity_Web()
	local sWebPage = tSilverServerPublicity_Data["Web"]
	User_SendWebPage(sWebPage)
end

function SilverServerPublicity_Navigation(nNpcId)
	local nPosX = tSilverServerPublicity_Data["Location"][nNpcId]["PosX"]
	local nPosY = tSilverServerPublicity_Data["Location"][nNpcId]["PosY"]
	local nMapId = tSilverServerPublicity_Data["Location"][nNpcId]["MapId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

function SilverServerPublicity_Letter()
	-- 判断金币服
	if not CommonFunc_ChkGoldServer() then
		return
	end
	
	-- 判断物品
	local nItemId = tSilverServerPublicity_Data["Itemtype"]["BackpackLetter"]
	if Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断掩码
	local nEventType = tSilverServerPublicity_Data["Stc"]["BackpackLetter"]["EventType"]
	local nDataType = tSilverServerPublicity_Data["Stc"]["BackpackLetter"]["DataType"]
	local nComplete = tSilverServerPublicity_Data["Stc"]["BackpackLetter"]["Complete"]
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tSilverServerPublicity_Reward["BackpackLetter"])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tSilverServerPublicity_Text["Msg"]["NoSpace"])
		return
	end
	
	----------------------------------------- 获得物品
	
	Task_SetStatistic(nEventType,nDataType,nComplete,1)
	RewardTemplate_UseItemAndMsg(tSilverServerPublicity_Reward["BackpackLetter"])
end
--------------------------------------npc配置-------------------------------------------
-- 22275 SilverDistributor
tNpcFace[5794] = 1
tNpcGossip[22275] = tNpcGossip[22275] or DefaultNpc:new{}
tNpcGossip[22275]["OptionHidden"] = 1
tNpcGossip[22275]["DialogueText"] = tSilverServerPublicity_Text[22275]

tNpcGossip[22275]["Text1-1"] = {111,112,113}
tNpcGossip[22275]["tOption1-1"] = {1,2,3}
tNpcGossip[22275]["OptionFunc1"] = "SilverServerPublicity_Web"
tNpcGossip[22275]["OptionFunc2"] = "SilverServerPublicity_Navigation</N>22088"
--------------------------------------物品配置-------------------------------------------
-- 3306110 DistributorInfo
tItemFace[3306110] = 623
tItem[3306110] = tItem[3306110] or {}
tItem[3306110]["DialogueText"] = tSilverServerPublicity_Text[3306110]
tItem[3306110]["Text1-1"] = {111,112,113}
tItem[3306110]["tOption1-1"] = {1,2,3,4}
tItem[3306110]["OptionFunc1"] = "SilverServerPublicity_Navigation</N>22275"
tItem[3306110]["OptionFunc2"] = "SilverServerPublicity_Web"
tItem[3306110]["OptionFunc3"] = "SilverServerPublicity_Navigation</N>22088"
---------------------------------------上线触发--------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,SilverServerPublicity_Letter)