------------------------------------------------------------------------------------
--Name:	170228[英文征服][活动脚本]制作4月充值礼包及发奖action
--Purpose:	制作4月充值礼包及发奖action
--Creator: 姚曦宇
--Created:	2017/02/28
------------------------------------------------------------------------------------

-- logid：12000660
-- 统一前缀： AprilRechargeReward_
------------------------------------------------------------------------------------

local tAprilRechargeReward_Award = {}
-- 星座礼包
	tAprilRechargeReward_Award[3302488] = {}
	tAprilRechargeReward_Award[3302488]["LogId"] = 12000660
	tAprilRechargeReward_Award[3302488]["LogStep"] = 2
	tAprilRechargeReward_Award[3302488]["DeleteItem"] = {}
	tAprilRechargeReward_Award[3302488]["DeleteItem"][1] = {}
	tAprilRechargeReward_Award[3302488]["DeleteItem"][1]["Id"] = 3302488
	tAprilRechargeReward_Award[3302488]["DeleteItem"][1]["ItemNum"] = 1
	tAprilRechargeReward_Award[3302488]["RewardItem"] = {}
	tAprilRechargeReward_Award[3302488]["RewardItem"][1] = {}
	tAprilRechargeReward_Award[3302488]["RewardItem"][1]["Id"] = 730004
	tAprilRechargeReward_Award[3302488]["RewardItem"][1]["Attr"] = "0 1 0"
	tAprilRechargeReward_Award[3302488]["RewardItem"][2] = {}
	tAprilRechargeReward_Award[3302488]["RewardItem"][2]["Id"] = 3009002
	tAprilRechargeReward_Award[3302488]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tAprilRechargeReward_Award[3302488]["RewardItem"][3] = {}
	tAprilRechargeReward_Award[3302488]["RewardItem"][3]["Id"] = 723694
	tAprilRechargeReward_Award[3302488]["RewardItem"][3]["Attr"] = "0 1 0"
-- 星盘达人礼包	
	tAprilRechargeReward_Award[3302489] = {}
	tAprilRechargeReward_Award[3302489][1] = {}
	tAprilRechargeReward_Award[3302489][1]["LogId"] = 12000660
	tAprilRechargeReward_Award[3302489][1]["LogStep"] = 2
	tAprilRechargeReward_Award[3302489][1]["DeleteItem"] = {}
	tAprilRechargeReward_Award[3302489][1]["DeleteItem"][1] = {}
	tAprilRechargeReward_Award[3302489][1]["DeleteItem"][1]["Id"] = 3302489
	tAprilRechargeReward_Award[3302489][1]["DeleteItem"][1]["ItemNum"] = 1
	tAprilRechargeReward_Award[3302489][1]["RewardItem"] = {}
	tAprilRechargeReward_Award[3302489][1]["RewardItem"][1] = {}
	tAprilRechargeReward_Award[3302489][1]["RewardItem"][1]["Id"] = 200524
	tAprilRechargeReward_Award[3302489][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tAprilRechargeReward_Award[3302489][2] = {}
	tAprilRechargeReward_Award[3302489][2]["LogId"] = 12000660
	tAprilRechargeReward_Award[3302489][2]["LogStep"] = 2
	tAprilRechargeReward_Award[3302489][2]["DeleteItem"] = {}
	tAprilRechargeReward_Award[3302489][2]["DeleteItem"][1] = {}
	tAprilRechargeReward_Award[3302489][2]["DeleteItem"][1]["Id"] = 3302489
	tAprilRechargeReward_Award[3302489][2]["DeleteItem"][1]["ItemNum"] = 1
	tAprilRechargeReward_Award[3302489][2]["RewardItem"] = {}
	tAprilRechargeReward_Award[3302489][2]["RewardItem"][1] = {}
	tAprilRechargeReward_Award[3302489][2]["RewardItem"][1]["Id"] = 200544
	tAprilRechargeReward_Award[3302489][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	
-----------------------------------------------------------------------------------
function AprilRechargeReward_UseItem(nItemId,nIndex)
	if nIndex ~= nil then
		RewardTemplate_UseItemAndMsg(tAprilRechargeReward_Award[nItemId][nIndex])
		return
	end
	RewardTemplate_UseItemAndMsg(tAprilRechargeReward_Award[nItemId])
end

-- 二次确认
function AprilRechargeReward_Confirm(nItemId,nIndex,sOptionText)
	local sOptionText = tAprilRechargeReward_Text[nItemId][sOptionText]
	--重设文字
	tItem[nItemId]["Text211"] = string.format(tAprilRechargeReward_Text[nItemId]["Text211"],sOptionText)
	tItem[nItemId]["Option211"] = string.format(tAprilRechargeReward_Text[nItemId]["Option211"],sOptionText)
	--重设函数
	tItem[nItemId]["OptionFunc211"] = "AprilRechargeReward_UseItem</N>"..nItemId.."</N>"..nIndex
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end	
-----------------------------------------------------------------------------------
-- 星座礼包
tItem[3302488] = tItem[3302488] or {}
tItem[3302488]["Function"] = function(nItemId,sItemName)
	AprilRechargeReward_UseItem(nItemId)
end	
-- 星盘达人礼包
tItem[3302489] = tItem[3302489] or {}
tItem[3302489]["Text1-1"] = {111}
tItem[3302489]["Text111"] = tAprilRechargeReward_Text[3302489]["Text111"]
tItem[3302489]["tOption1-1"] = {111,112,113}
tItem[3302489]["Option111"] = tAprilRechargeReward_Text[3302489]["Option111"]
tItem[3302489]["OptionFunc111"]="AprilRechargeReward_Confirm</N>3302489</N>1</S>Option111"
tItem[3302489]["Option112"] = tAprilRechargeReward_Text[3302489]["Option112"]
tItem[3302489]["OptionFunc112"]="AprilRechargeReward_Confirm</N>3302489</N>2</S>Option112"
-- 二次确认
tItem[3302489]["Text2-1"] = {211}
tItem[3302489]["tOption2-1"] = {211,212}
tItem[3302489]["Option212"] = tAprilRechargeReward_Text[3302489]["Option212"]
tItem[3302489]["OptionPoint212"]="1-1"