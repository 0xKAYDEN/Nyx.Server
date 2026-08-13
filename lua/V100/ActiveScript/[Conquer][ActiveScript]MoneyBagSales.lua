------------------------------------------------------------------------------------
--Name:		1160125[英文征服][活动脚本]金币促销（3.31-4.3）
--Purpose:	金币促销（3.31-4.3）
--Creator: 	zsc
--Created:	2016/01/25
------------------------------------------------------------------------------------
-- 40167 = V100\ActiveScript\[Conquer][ActiveScript]MoneyBagSales.lua
-- 40167 = V100\活动脚本\[征服][活动脚本]金币促销（3.31-4.3）.lua

-- 命名前缀
-- MoneyBagSales_

-- tMoneyBagSales_Text ={}
-- tMoneyBagSales_Text["TooMuch"] = "You can`t bring more Silver. Please deposit some before you open the bag."
-- tMoneyBagSales_Text["GetMoney"] = "You opened the Million Silver Bag and received %s Silver."

--40167 = V100\ActiveScript\[Conquer][ActiveScript]MoneyBagSales.lua
--40167 = V100\活动脚本\[征服][活动脚本]金币促销（3.31-4.3）.lua

--百万财富礼包
local tMoneyBagSales_GetMoney = {}
tMoneyBagSales_GetMoney[3008452] = {}
tMoneyBagSales_GetMoney[3008452]["Money"] = 1000000
tMoneyBagSales_GetMoney[3008452]["Log"] = "0,0,%s,1,12000308,2,1,%s" 

--FB俱乐部认证活动发奖物品及action
tMoneyBagSales_GetMoney[3008858] = {}
tMoneyBagSales_GetMoney[3008858]["Money"] = 10000
tMoneyBagSales_GetMoney[3008858]["Log"] = "0,0,%s,1,12000321,2,1,%s"

tMoneyBagSales_GetMoney[3008859] = {}
tMoneyBagSales_GetMoney[3008859]["Money"] = 10000000
tMoneyBagSales_GetMoney[3008859]["Log"] = "0,0,%s,1,12000321,2,1,%s"

-------------------------逻辑------------------------------------------------------
function MoneyBagSales_GetMoney(nItemId,sItemName)
	local nMoney = tMoneyBagSales_GetMoney[nItemId]["Money"]
	local sLog = string.format(tMoneyBagSales_GetMoney[nItemId]["Log"],nItemId,nMoney)

	--银子太多
	if not User_CanPutMoney2Bag(nMoney) then
		User_TalkChannel2005(tMoneyBagSales_Text["TooMuch"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_AddMoney(nMoney)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(string.format(tMoneyBagSales_Text["GetMoney"],nMoney))
	end
end


------------------------物品模版----------------------------------------------------
--百万财富礼包
tItem[3008452] = tItem[3008452] or {}
tItem[3008452]["Function"] = function(nItemId,sItemName)
	MoneyBagSales_GetMoney(nItemId,sItemName)
end

--FB俱乐部认证活动发奖物品及action
tItem[3008858] = tItem[3008858] or {}
tItem[3008858]["Function"] = function(nItemId,sItemName)
	MoneyBagSales_GetMoney(nItemId,sItemName)
end

tItem[3008859] = tItem[3008859] or {}
tItem[3008859]["Function"] = function(nItemId,sItemName)
	MoneyBagSales_GetMoney(nItemId,sItemName)
end
