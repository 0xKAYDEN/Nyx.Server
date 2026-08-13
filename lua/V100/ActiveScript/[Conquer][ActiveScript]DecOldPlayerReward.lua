------------------------------------------------------------------------------------
--Name：            171116[英文征服][活动脚本]12月老玩家回归活动奖品及发奖制作
--Creator:      吴燕柚

--Created:     2017-11-16
------------------------------------------------------------------------------------
--任务需求：
--新增物品和礼包

--命名规范：
--tDecOldPlayerReward

--LogId:
--12000944
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
--奖励模板
local tDecOldPlayerReward = {}

--3306656,ChristmasFurniturePack
	tDecOldPlayerReward[3306656] = {}
	tDecOldPlayerReward[3306656]["DeleteItem"] = {}
	tDecOldPlayerReward[3306656]["DeleteItem"][1] = {}
	tDecOldPlayerReward[3306656]["DeleteItem"][1]["Id"] = 3306656
	tDecOldPlayerReward[3306656]["RewardItem"] = {}
	tDecOldPlayerReward[3306656]["RewardItem"][1] = {}
	tDecOldPlayerReward[3306656]["RewardItem"][1]["Id"] = 720397 --LovelyChristmasTree
	tDecOldPlayerReward[3306656]["RewardItem"][1]["Attr"] = "0 1 3 43200 1"
	tDecOldPlayerReward[3306656]["RewardItem"][2] = {}
	tDecOldPlayerReward[3306656]["RewardItem"][2]["Id"] = 726057 --ChristmasWreath
	tDecOldPlayerReward[3306656]["RewardItem"][2]["Attr"] = "0 1 3 43200 1"
	tDecOldPlayerReward[3306656]["RewardItem"][3] = {}
	tDecOldPlayerReward[3306656]["RewardItem"][3]["Id"] = 726110 --Snowman
	tDecOldPlayerReward[3306656]["RewardItem"][3]["Attr"] = "0 1 3 43200 1"
	tDecOldPlayerReward[3306656]["RewardItem"][4] = {}
	tDecOldPlayerReward[3306656]["RewardItem"][4]["Id"] = 422000 --FireStick
	tDecOldPlayerReward[3306656]["RewardItem"][4]["Attr"] = "0 1 3 43200 1"
	tDecOldPlayerReward[3306656]["LogId"] = 12000944
	
--3306657,SupremeReturningPack
	tDecOldPlayerReward[3306657] = {}
	tDecOldPlayerReward[3306657]["DeleteItem"] = {}
	tDecOldPlayerReward[3306657]["DeleteItem"][1] = {}
	tDecOldPlayerReward[3306657]["DeleteItem"][1]["Id"] = 3306657
	tDecOldPlayerReward[3306657]["RewardItem"] = {}
	tDecOldPlayerReward[3306657]["RewardItem"][1] = {}
	tDecOldPlayerReward[3306657]["RewardItem"][1]["Id"] = 3304657 --luxury+8stonepack
	tDecOldPlayerReward[3306657]["RewardItem"][1]["Attr"] = "0 1"
	tDecOldPlayerReward[3306657]["RewardItem"][2] = {}
	tDecOldPlayerReward[3306657]["RewardItem"][2]["Id"] = 3304658 --bigfortunepack
	tDecOldPlayerReward[3306657]["RewardItem"][2]["Attr"] = "0 1"
	tDecOldPlayerReward[3306657]["RewardItem"][3] = {}
	tDecOldPlayerReward[3306657]["RewardItem"][3]["Id"] = 3304584 --hugeradiantstarstonespack
	tDecOldPlayerReward[3306657]["RewardItem"][3]["Attr"] = "0 1"
	tDecOldPlayerReward[3306657]["RewardItem"][4] = {}
	tDecOldPlayerReward[3306657]["RewardItem"][4]["Id"] = 3304659 --luxurychipack
	tDecOldPlayerReward[3306657]["RewardItem"][4]["Attr"] = "0 1"
	tDecOldPlayerReward[3306657]["LogId"] = 12000944
	
--3306658,LuxuryReturningPack
	tDecOldPlayerReward[3306658] = {}
	tDecOldPlayerReward[3306658]["DeleteItem"] = {}
	tDecOldPlayerReward[3306658]["DeleteItem"][1] = {}
	tDecOldPlayerReward[3306658]["DeleteItem"][1]["Id"] = 3306658
	tDecOldPlayerReward[3306658]["RewardItem"] = {}
	tDecOldPlayerReward[3306658]["RewardItem"][1] = {}
	tDecOldPlayerReward[3306658]["RewardItem"][1]["Id"] = 3304660 --advanced+8stonepack
	tDecOldPlayerReward[3306658]["RewardItem"][1]["Attr"] = "0 1"
	tDecOldPlayerReward[3306658]["RewardItem"][2] = {}
	tDecOldPlayerReward[3306658]["RewardItem"][2]["Id"] = 3304585 --brightstarstonepack
	tDecOldPlayerReward[3306658]["RewardItem"][2]["Attr"] = "0 1"
	tDecOldPlayerReward[3306658]["RewardItem"][3] = {}
	tDecOldPlayerReward[3306658]["RewardItem"][3]["Id"] = 3304661 --smallfortunepack
	tDecOldPlayerReward[3306658]["RewardItem"][3]["Attr"] = "0 1"
	tDecOldPlayerReward[3306658]["RewardItem"][4] = {}
	tDecOldPlayerReward[3306658]["RewardItem"][4]["Id"] = 3304662 --advancedchipack
	tDecOldPlayerReward[3306658]["RewardItem"][4]["Attr"] = "0 1"
	tDecOldPlayerReward[3306658]["LogId"] = 12000944


----------------------------------逻辑部分---------------------------------------------

function DecOldPlayerReward_OpenPackage(nItemId)
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tDecOldPlayerReward[nItemId]) then
		local nNeedSpace = RewardTemplate_GetRewardSpace(tDecOldPlayerReward[nItemId])
		local sNoSpace = string.format(tDecOldPlayerReward_Text["NoSpace"], nNeedSpace)
		User_TalkChannel2005(sNoSpace)
		return
	end
	RewardTemplate_UseItem(tDecOldPlayerReward[nItemId])
end





---------------------------------物品部分---------------------------------------------

--chrismasfurniturepack
tItem[3306656] = tItem[3306656] or {}
tItem[3306656]["Function"] = function(nItemId,sItemName)
	DecOldPlayerReward_OpenPackage(nItemId)
end

--SupremeReturningPack
tItem[3306657] = tItem[3306657] or {}
tItem[3306657]["Function"] = function(nItemId,sItemName)
	DecOldPlayerReward_OpenPackage(nItemId)
end

--LuxuryReturningPack
tItem[3306658] = tItem[3306658] or {}
tItem[3306658]["Function"] = function(nItemId,sItemName)
	DecOldPlayerReward_OpenPackage(nItemId)
end



