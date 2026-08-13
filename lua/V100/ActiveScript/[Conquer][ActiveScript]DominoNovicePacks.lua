------------------------------------------------------------------------------------
--Name：            171113[英文征服][活动脚本]多米诺新手礼包制作
--Creator:      王贤
--Created:     2017/11/13
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 前缀： DominoNovicePacks_
-- LogId: 12000936

----------------------------------表配置部分--------------------------------------------
local tDominoNovicePacks_Reward = {}
-- 多米诺新手礼包
tDominoNovicePacks_Reward[3306566] = {}
tDominoNovicePacks_Reward[3306566]["DeleteItem"] = {}
tDominoNovicePacks_Reward[3306566]["DeleteItem"][1] = {}
tDominoNovicePacks_Reward[3306566]["DeleteItem"][1]["Id"] = 3306566
tDominoNovicePacks_Reward[3306566]["RewardItem"] = {}
tDominoNovicePacks_Reward[3306566]["RewardItem"][1] = {}
tDominoNovicePacks_Reward[3306566]["RewardItem"][1]["Id"] = 188575
tDominoNovicePacks_Reward[3306566]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
tDominoNovicePacks_Reward[3306566]["RewardItem"][2] = {}
tDominoNovicePacks_Reward[3306566]["RewardItem"][2]["Id"] = 723017
tDominoNovicePacks_Reward[3306566]["RewardItem"][2]["Attr"] = "0 1 3"
tDominoNovicePacks_Reward[3306566]["RewardItem"][3] = {}
tDominoNovicePacks_Reward[3306566]["RewardItem"][3]["Id"] = 1200000
tDominoNovicePacks_Reward[3306566]["RewardItem"][3]["Attr"] = "0 1 3"
tDominoNovicePacks_Reward[3306566]["RewardItem"][4] = {}
tDominoNovicePacks_Reward[3306566]["RewardItem"][4]["Id"] = 3000334
tDominoNovicePacks_Reward[3306566]["RewardItem"][4]["Attr"] = "0 1"
tDominoNovicePacks_Reward[3306566]["RewardItem"][5] = {}
tDominoNovicePacks_Reward[3306566]["RewardItem"][5]["Id"] = 3305477
tDominoNovicePacks_Reward[3306566]["RewardItem"][5]["Attr"] = "0 1"
tDominoNovicePacks_Reward[3306566]["RewardItem"][6] = {}
tDominoNovicePacks_Reward[3306566]["RewardItem"][6]["Id"] = 3006224
tDominoNovicePacks_Reward[3306566]["RewardItem"][6]["Attr"] = "0 2"
tDominoNovicePacks_Reward[3306566]["RewardEffect"] = {}
tDominoNovicePacks_Reward[3306566]["RewardEffect"]["Effect"] = "angelwing"
tDominoNovicePacks_Reward[3306566]["LogId"] = 12000936

----------------------------------逻辑部分---------------------------------------------
-- 使用多米诺礼包
function DominoNovicePacks_RewardDominoPackage(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not RewardTemplate_CheckSpace(tDominoNovicePacks_Reward[nItemId]) then
		return
	end
	
	RewardTemplate_UseItem(tDominoNovicePacks_Reward[nItemId])
end

---------------------------------物品部分---------------------------------------------
-- 使用多米诺礼包
tItem[3306566] = tItem[3306566] or {}
tItem[3306566]["Function"] = function(nItemId,sItemName)
	DominoNovicePacks_RewardDominoPackage(nItemId)
end

