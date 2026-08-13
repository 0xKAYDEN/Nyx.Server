------------------------------------------------------------------------------------
--Name：        190416[英文征服][活动脚本]线下送祝福发奖物品和action制作
--Creator:      耿力兀
--Created:     2019-04-16
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：BlessedGift_
--logId：12001370
----------------------------------表配置部分--------------------------------------------
local tBlessedGift_Reward = {}
	tBlessedGift_Reward[1] = {}
	tBlessedGift_Reward[1]["LogId"] = 12001370
	tBlessedGift_Reward[1]["DeleteItem"] = {}
	tBlessedGift_Reward[1]["DeleteItem"][1] = {}
	tBlessedGift_Reward[1]["DeleteItem"][1]["Id"] = 3312274
	tBlessedGift_Reward[1]["DeleteItem"][2] = {}
	tBlessedGift_Reward[1]["DeleteItem"][2]["Id"] = 3312275
	tBlessedGift_Reward[1]["DeleteItem"][3] = {}
	tBlessedGift_Reward[1]["DeleteItem"][3]["Id"] = 3312276
	tBlessedGift_Reward[1]["RewardItem"] = {}
	tBlessedGift_Reward[1]["RewardItem"][1] = {}
	tBlessedGift_Reward[1]["RewardItem"][1]["Id"] = 194385 -- 【库】StarryAngelicRobe[属性:8]【表格】StarryAngelicRobe
	tBlessedGift_Reward[1]["RewardItem"][1]["Attr"] = "0 1 3 525600 1 0 0 1.00" -- 365天时效(激活)的1%神佑StarryAngelicRobe(赠)*1

local tBlessedGift_Medalof = {}
	tBlessedGift_Medalof[1] = 3312274
	tBlessedGift_Medalof[2] = 3312275
	tBlessedGift_Medalof[3] = 3312276
	
--Log表
local tBlessedGift_Log={}
	tBlessedGift_Log["OverTimeDelItem"] = "0,0,%d,%d,12001370,3,0,0"		--删除物品log
----------------------------------逻辑部分---------------------------------------------
function BlessedGift_UseMedalof(nItemId)
	--过期删除
	if not Sys_ChkFullTime(tActivityTime["BlessedGift"]["ActivityTime"] ) then	
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tBlessedGift_Log["OverTimeDelItem"],nItemId,nItemNum))
			User_TalkChannel2005(BlessedGift_Text["OverTime"])
		end
		return
	end

	for i,v in pairs(tBlessedGift_Medalof) do 
		if not Item_ChkItem(v) then 
			Sys_MsgBox(BlessedGift_Text["Defeated"])
			return 
		end 
	end 
	
	local tbool,sRewardStr = RewardTemplate_UseItem(tBlessedGift_Reward[1])
	Sys_MsgBox(string.format(BlessedGift_Text["Succeed"],sRewardStr))
end 




---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3312274] = tItem[3312274] or {}
tItem[3312274]["Function"] = function(nItemId)
	BlessedGift_UseMedalof(nItemId)
end

tItem[3312275] = tItem[3312274] or {}
tItem[3312276] = tItem[3312274] or {}

