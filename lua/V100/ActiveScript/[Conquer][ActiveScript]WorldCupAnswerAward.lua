------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]世界杯竞猜活动发奖action制作
--Purpose:	世界杯竞猜活动发奖action制作
--Creator: 	茅志伟
--Created:	2018/05/16
------------------------------------------------------------------------------------

--命名前缀 tWorldCupAnswerAward_
local tWorldCupAnswerAward_Puck = {}
--4000w金币礼包
tWorldCupAnswerAward_Puck["MoneyPackage"] = {}
tWorldCupAnswerAward_Puck["MoneyPackage"][3308978] = {}
tWorldCupAnswerAward_Puck["MoneyPackage"][3308978]["RewardMoney"] = {}
tWorldCupAnswerAward_Puck["MoneyPackage"][3308978]["RewardMoney"]["Value"] = 40000000
tWorldCupAnswerAward_Puck["MoneyPackage"][3308978]["LogId"] = 12001080
---------------------------------------------使用逻辑
--固定奖励礼包开启
function WorldCupAnswerAward_OpenPack(nItemId)
	if not Item_ChkItem(nItemId) then 
		return
	end 
	local nUserId = Get_UserId()
	local nNum = tWorldCupAnswerAward_Puck["MoneyPackage"][3308978]["RewardMoney"]["Value"]
	-- 判断银两上限
	if not User_CanPutMoney2Bag(nNum,nUserId) then
		User_TalkChannel2005(tWorldCupAnswerAward_Text["Money"])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tWorldCupAnswerAward_Puck["MoneyPackage"][nItemId])
	end
end
-------------------------------------------模板
--4000W金币礼包
tItem[3308978] = tItem[3308978] or {}
tItem[3308978]["Function"] = function(nItemId,sItemName)
	WorldCupAnswerAward_OpenPack(nItemId)
end