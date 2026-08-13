------------------------------------------------------------------------------
--Name:		[征服][活动脚本]金币包及action制作
--Creator: 	郑宗胜
--Created:	2016/07/27
------------------------------------------------------------------------------
-- 命名前缀
-- MoneyPackage_

--logid :12000473

--luaini : 40313

--------------------------------------数据配置----------------------------------


--奖励配置
 local tMoneyPackage_Reward = {}
	tMoneyPackage_Reward["Open"] = {}
	tMoneyPackage_Reward["Open"]["RewardMoney"] = {}
	tMoneyPackage_Reward["Open"]["RewardMoney"]["Value"] = 10000000
	tMoneyPackage_Reward["Open"]["LogId"] =12000473
	tMoneyPackage_Reward["Open"]["Talk"] = tMoneyPackage_Text["Award"]
	tMoneyPackage_Reward["Open"]["DeleteItem"]={}
	tMoneyPackage_Reward["Open"]["DeleteItem"][1]={}
	tMoneyPackage_Reward["Open"]["DeleteItem"][1]["Id"]=3200993

--------------------------------------逻辑配置----------------------------------
--打开金币包，获得10,000,000金币
function MoneyPackage_UsePackage(nItemId)
	if not User_CanPutMoney2Bag(tMoneyPackage_Reward["Open"]["RewardMoney"]["Value"])  then
		User_TalkChannel2005(tMoneyPackage_Text["MaxMoney"])
		return
	end
	
	RewardTemplate_UseItem(tMoneyPackage_Reward["Open"])
	
end

--------------------------------------物品模板----------------------------------
--金币包
tItem[3200993] = tItem[3200993] or {}
tItem[3200993]["Function"] = function(nItemId,sItemName)
	MoneyPackage_UsePackage(nItemId)
end