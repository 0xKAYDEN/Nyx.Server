------------------------------------------------------------------------------------
--Name:			[英文征服][任务脚本]SOH礼包制作
--Creator: 		翁清海
--Created:		2016/07/27
------------------------------------------------------------------------------------

-- 命名前缀
-- SOH_Gift_Pack_

-- 掩码说明
-- 147 51	礼包打开的次数

--logid 18000131
local tSOH_Gift_Pack_Log = {}
	tSOH_Gift_Pack_Log["GetLog"] = "0,0,0,0,18000131,2,3009000[3006234][720027][729242][3003141][3003134][720173],1[2][1][1][1][1][1]"
	tSOH_Gift_Pack_Log["GetDelLog"] = "0,0,3200992,1,18000131,2,3009000[3006234][720027][729242][3003141][3003134][720173],1[2][1][1][1][1][1]"
	tSOH_Gift_Pack_Log["DelLog"] = "0,0,3200992,1,18000131,2,0,0"

--打开礼包次数
local tSOH_Gift_Pack_Times = {}
	tSOH_Gift_Pack_Times["LastTimes"] = 20000
	tSOH_Gift_Pack_Times["TotalTimes"] = 30000
	
local tSOH_Gift_Pack_Item = {}
	tSOH_Gift_Pack_Item[3200992] = {}
	tSOH_Gift_Pack_Item[3200992]["Id"] = 3200992

--奖励模板
local tSOH_Gift_Pack_Reward = {}
	tSOH_Gift_Pack_Reward[3200992] = {}
	tSOH_Gift_Pack_Reward[3200992]["EventType"] = 147
	tSOH_Gift_Pack_Reward[3200992]["DataType"] = 51
	tSOH_Gift_Pack_Reward[3200992]["RewardDelay"] = 1
	tSOH_Gift_Pack_Reward[3200992]["RewardTimeType"] = 4
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"] = {}
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][1] = {}
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][1]["Id"] = 3009000
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][2] = {}
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][2]["Id"] = 3006234
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][2]["Attr"] = "0 1 3"
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][3] = {}
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][3]["Id"] = 720027
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][3]["Attr"] = "0 2 3"
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][4] = {}
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][4]["Id"] = 729242
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][4]["Attr"] = "0 1 3"
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][5] = {}
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][5]["Id"] = 3003141
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][5]["Attr"] = "0 1 3"
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][6] = {}
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][6]["Id"] = 3003134
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][6]["Attr"] = "0 1 3"
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][7] = {}
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][7]["Id"] = 720173
	tSOH_Gift_Pack_Reward[3200992]["RewardItem"][7]["Attr"] = "0 1 3"
	tSOH_Gift_Pack_Reward[3200992]["Talk"] = tSOH_Gift_Pack_Text[3200992]["Channel2005"]
	tSOH_Gift_Pack_Reward[3200992]["Log"] = tSOH_Gift_Pack_Log["GetLog"]

------------------------------逻辑部分---------------------------

function SOH_Gift_Pack_Open(nItemId)
	local nUserId = Get_UserId()
	local nEvent = tSOH_Gift_Pack_Reward[nItemId]["EventType"]
	local nType = tSOH_Gift_Pack_Reward[nItemId]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if nData >= tSOH_Gift_Pack_Times["TotalTimes"] then
		tSOH_Gift_Pack_Reward[nItemId]["RewardItem"] = nil
		tSOH_Gift_Pack_Reward[nItemId]["DeleteItem"] = {}
		tSOH_Gift_Pack_Reward[nItemId]["DeleteItem"][1] = {}
		tSOH_Gift_Pack_Reward[nItemId]["DeleteItem"][1]["Id"] = nItemId
		tSOH_Gift_Pack_Reward[nItemId]["Log"] = tSOH_Gift_Pack_Log["DelLog"]
	elseif nData >= tSOH_Gift_Pack_Times["LastTimes"] then
		tSOH_Gift_Pack_Reward[nItemId]["DeleteItem"] = {}
		tSOH_Gift_Pack_Reward[nItemId]["DeleteItem"][1] = {}
		tSOH_Gift_Pack_Reward[nItemId]["DeleteItem"][1]["Id"] = nItemId
		tSOH_Gift_Pack_Reward[nItemId]["Log"] = tSOH_Gift_Pack_Log["GetDelLog"]
	end
	
	RewardTemplate_UseItem(tSOH_Gift_Pack_Reward[3200992])

end

------------------------------物品模板---------------------------
tItem[3200992] = tItem[3200992] or {}
tItem[3200992]["Function"] = function()
	SOH_Gift_Pack_Open(tSOH_Gift_Pack_Item[3200992]["Id"])
end
