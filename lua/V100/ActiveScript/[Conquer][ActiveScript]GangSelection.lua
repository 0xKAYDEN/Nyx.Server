------------------------------------------------------------------------------------
--Name:			170712[英文征服][活动脚本]8月帮派评选action制作
--Purpose:		活动任务
--Creator: 		(王贤)
--Created:		2017-07-12
------------------------------------------------------------------------------------
-- 任务需求:
-- 英文征服8月帮派评选action制作
-- 
-- 任务概述：
-- 制作6个8月帮派评选action，具体详见附件。
------------------------------------------------------------------------------------
-- 前缀
-- GangSelection_

-- logid：12000780
------------------------表部分-----------------------
-- 全服第一帮派礼包奖励
local tGangSelection_GangPackageReward = {}
	tGangSelection_GangPackageReward[3304050] = {}
	tGangSelection_GangPackageReward[3304050]["Space"] = 5
	tGangSelection_GangPackageReward[3304050]["DeleteItem"] = {}
	tGangSelection_GangPackageReward[3304050]["DeleteItem"][1] = {}
	tGangSelection_GangPackageReward[3304050]["DeleteItem"][1]["Id"] = 3304050
	tGangSelection_GangPackageReward[3304050]["RewardItem"] = {}
	tGangSelection_GangPackageReward[3304050]["RewardItem"][1] = {}
	tGangSelection_GangPackageReward[3304050]["RewardItem"][1]["Id"] = 3009003
	tGangSelection_GangPackageReward[3304050]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tGangSelection_GangPackageReward[3304050]["RewardItem"][2] = {}
	tGangSelection_GangPackageReward[3304050]["RewardItem"][2]["Id"] = 3002926
	tGangSelection_GangPackageReward[3304050]["RewardItem"][2]["Attr"] = "0 300 3"
	tGangSelection_GangPackageReward[3304050]["RewardItem"][3] = {}
	tGangSelection_GangPackageReward[3304050]["RewardItem"][3]["Id"] = 3303244
	tGangSelection_GangPackageReward[3304050]["RewardItem"][3]["Attr"] = "0 1 3"
	tGangSelection_GangPackageReward[3304050]["RewardItem"][4] = {}
	tGangSelection_GangPackageReward[3304050]["RewardItem"][4]["Id"] = 200580
	tGangSelection_GangPackageReward[3304050]["RewardItem"][4]["Attr"] = "0 1 3 259200 0 0 0 1"
	tGangSelection_GangPackageReward[3304050]["LogId"] = 12000780

-- 单服第一帮派礼包奖励
	tGangSelection_GangPackageReward[3304051] = {}
	tGangSelection_GangPackageReward[3304051]["Space"] = 4
	tGangSelection_GangPackageReward[3304051]["DeleteItem"] = {}
	tGangSelection_GangPackageReward[3304051]["DeleteItem"][1] = {}
	tGangSelection_GangPackageReward[3304051]["DeleteItem"][1]["Id"] = 3304051
	tGangSelection_GangPackageReward[3304051]["RewardItem"] = {}
	tGangSelection_GangPackageReward[3304051]["RewardItem"][1] = {}
	tGangSelection_GangPackageReward[3304051]["RewardItem"][1]["Id"] = 3009002
	tGangSelection_GangPackageReward[3304051]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tGangSelection_GangPackageReward[3304051]["RewardItem"][2] = {}
	tGangSelection_GangPackageReward[3304051]["RewardItem"][2]["Id"] = 722057
	tGangSelection_GangPackageReward[3304051]["RewardItem"][2]["Attr"] = "0 1 3"
	tGangSelection_GangPackageReward[3304051]["RewardItem"][3] = {}
	tGangSelection_GangPackageReward[3304051]["RewardItem"][3]["Id"] = 3001845
	tGangSelection_GangPackageReward[3304051]["RewardItem"][3]["Attr"] = "0 1 3"
	tGangSelection_GangPackageReward[3304051]["RewardItem"][4] = {}
	tGangSelection_GangPackageReward[3304051]["RewardItem"][4]["Id"] = 723694
	tGangSelection_GangPackageReward[3304051]["RewardItem"][4]["Attr"] = "0 1 3"
	tGangSelection_GangPackageReward[3304051]["LogId"] = 12000780

-- 全服第一帮主外套包奖励
local tGangSelection_GangMonsterPackageReward = {}
	tGangSelection_GangMonsterPackageReward[3304052] = {}
	tGangSelection_GangMonsterPackageReward[3304052][1] = {}
	tGangSelection_GangMonsterPackageReward[3304052][1]["Space"] = 19
	tGangSelection_GangMonsterPackageReward[3304052][1]["DeleteItem"] = {}
	tGangSelection_GangMonsterPackageReward[3304052][1]["DeleteItem"][1] = {}
	tGangSelection_GangMonsterPackageReward[3304052][1]["DeleteItem"][1]["Id"] = 3304052
	tGangSelection_GangMonsterPackageReward[3304052][1]["RewardItem"] = {}
	tGangSelection_GangMonsterPackageReward[3304052][1]["RewardItem"][1] = {}
	tGangSelection_GangMonsterPackageReward[3304052][1]["RewardItem"][1]["Id"] = 193325
	tGangSelection_GangMonsterPackageReward[3304052][1]["RewardItem"][1]["Attr"] = "0 20 0 86400 0 0 0 1"
	tGangSelection_GangMonsterPackageReward[3304052][1]["LogId"] = 12000780

-- 全服第二帮主外套包奖励
	tGangSelection_GangMonsterPackageReward[3304053] = {}
	tGangSelection_GangMonsterPackageReward[3304053][1] = {}
	tGangSelection_GangMonsterPackageReward[3304053][1]["Space"] = 19
	tGangSelection_GangMonsterPackageReward[3304053][1]["DeleteItem"] = {}
	tGangSelection_GangMonsterPackageReward[3304053][1]["DeleteItem"][1] = {}
	tGangSelection_GangMonsterPackageReward[3304053][1]["DeleteItem"][1]["Id"] = 3304053
	tGangSelection_GangMonsterPackageReward[3304053][1]["RewardItem"] = {}
	tGangSelection_GangMonsterPackageReward[3304053][1]["RewardItem"][1] = {}
	tGangSelection_GangMonsterPackageReward[3304053][1]["RewardItem"][1]["Id"] = 189075
	tGangSelection_GangMonsterPackageReward[3304053][1]["RewardItem"][1]["Attr"] = "0 20 0 43200 0 0 0 1"
	tGangSelection_GangMonsterPackageReward[3304053][1]["LogId"] = 12000780

-- 全服第三帮主外套包奖励
	tGangSelection_GangMonsterPackageReward[3304054] = {}
	tGangSelection_GangMonsterPackageReward[3304054][1] = {}
	tGangSelection_GangMonsterPackageReward[3304054][1]["Space"] = 19
	tGangSelection_GangMonsterPackageReward[3304054][1]["DeleteItem"] = {}
	tGangSelection_GangMonsterPackageReward[3304054][1]["DeleteItem"][1] = {}
	tGangSelection_GangMonsterPackageReward[3304054][1]["DeleteItem"][1]["Id"] = 3304054
	tGangSelection_GangMonsterPackageReward[3304054][1]["RewardItem"] = {}
	tGangSelection_GangMonsterPackageReward[3304054][1]["RewardItem"][1] = {}
	tGangSelection_GangMonsterPackageReward[3304054][1]["RewardItem"][1]["Id"] = 189105
	tGangSelection_GangMonsterPackageReward[3304054][1]["RewardItem"][1]["Attr"] = "0 20 0 43200 0 0 0 1"
	tGangSelection_GangMonsterPackageReward[3304054][1]["LogId"] = 12000780

------------------------逻辑部分-----------------------
---- 全服第一帮派礼包
---- 单服第一帮派礼包
function GangSelection_UseGangPackage(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItem(tGangSelection_GangPackageReward[nItemId])
end

---- 全服第一，二，三帮主外套包
function GangSelection_UseGangMonsterPackageFirst(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItem(tGangSelection_GangMonsterPackageReward[nItemId][1])
end

------------------------模板部分-----------------------
---- 全服第一帮派礼包
---- 单服第一帮派礼包
tItem[3304050] = tItem[3304050] or {}
tItem[3304050]["Function"] = function(nItemId,sItemName)
    GangSelection_UseGangPackage(nItemId)
end
tItem[3304051] = tItem[3304050]

---- 全服第一，二，三帮主外套包
tItem[3304052] = tItem[3304052] or {}
tItem[3304052]["Function"] = function(nItemId,sItemName)
    GangSelection_UseGangMonsterPackageFirst(nItemId)
end
tItem[3304053] = tItem[3304052]
tItem[3304054] = tItem[3304052]
