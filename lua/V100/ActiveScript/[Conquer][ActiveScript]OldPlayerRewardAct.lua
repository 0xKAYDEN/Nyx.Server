------------------------------------------------------------------------------------
--Name：            181115[英文征服][活动脚本]老玩家专属奖励礼包和发奖action
--Creator:      蔡颖静
--Created:     2018/11/15
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tOldPlayerRewardAct_Data={}
--时装坐骑礼包
tOldPlayerRewardAct_Data[3311599]={}
tOldPlayerRewardAct_Data[3311599]["LogId"] = 12001220
tOldPlayerRewardAct_Data[3311599]["DeleteItem"] = {}
tOldPlayerRewardAct_Data[3311599]["DeleteItem"][1] = {}
tOldPlayerRewardAct_Data[3311599]["DeleteItem"][1]["Id"] = 3311599
tOldPlayerRewardAct_Data[3311599]["RewardItem"] = {}
tOldPlayerRewardAct_Data[3311599]["RewardItem"][1] = {}
tOldPlayerRewardAct_Data[3311599]["RewardItem"][1]["Id"] = 194385
tOldPlayerRewardAct_Data[3311599]["RewardItem"][1]["Attr"] = '0 1 3 0 0 0 0 1'
tOldPlayerRewardAct_Data[3311599]["RewardItem"][2] = {}
tOldPlayerRewardAct_Data[3311599]["RewardItem"][2]["Id"] = 200495
tOldPlayerRewardAct_Data[3311599]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1"

----------------------------------逻辑部分---------------------------------------------
function OldPlayerRewardAct_OpenPack(nItemId)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tOldPlayerRewardAct_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tOldPlayerRewardAct_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tOldPlayerRewardAct_Text["SystemTip"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tOldPlayerRewardAct_Data[nItemId]) then 
		return 
	end 
end 


---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3311599] = tItem[3311599] or {}
tItem[3311599]["Function"] = function(nItemId,sItemName)
	OldPlayerRewardAct_OpenPack(nItemId)
end


