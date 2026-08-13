------------------------------------------------------------------------------------
--Name：            161215[英文征服][活动脚本]制作老服充值全额返还新服礼包及发奖action
--Creator:      陈彦宏
--Created:     2016/12/15
------------------------------------------------------------------------------------
-- 命名前缀
-- MakeOldPayBack_
-- logid 12000603
----------------------------------表配置部分---------------------------------
local tMakeOldPayBack_Item = {}
	-- 护心丹赠*10
	tMakeOldPayBack_Item[3301817] = {}
	tMakeOldPayBack_Item[3301817]["DeleteItem"] = {}
	tMakeOldPayBack_Item[3301817]["DeleteItem"][1] = {}
	tMakeOldPayBack_Item[3301817]["DeleteItem"][1]["Id"] = 3301817
	tMakeOldPayBack_Item[3301817]["RewardItem"] = {}
	tMakeOldPayBack_Item[3301817]["RewardItem"][1] = {}
	tMakeOldPayBack_Item[3301817]["RewardItem"][1]["Id"] = 3002029
	tMakeOldPayBack_Item[3301817]["RewardItem"][1]["Attr"] = "0 10 0 1440 1"
	tMakeOldPayBack_Item[3301817]["LogId"] = 12000603

	-- 流星卷赠*1
	tMakeOldPayBack_Item[3301818] = {}
	tMakeOldPayBack_Item[3301818]["DeleteItem"] = {}
	tMakeOldPayBack_Item[3301818]["DeleteItem"][1] = {}
	tMakeOldPayBack_Item[3301818]["DeleteItem"][1]["Id"] = 3301818
	tMakeOldPayBack_Item[3301818]["RewardItem"] = {}
	tMakeOldPayBack_Item[3301818]["RewardItem"][1] = {}
	tMakeOldPayBack_Item[3301818]["RewardItem"][1]["Id"] = 720027
	tMakeOldPayBack_Item[3301818]["RewardItem"][1]["Attr"] = "0 1 3"
	tMakeOldPayBack_Item[3301818]["LogId"] = 12000603

	-- 七星宝钻赠*1
	tMakeOldPayBack_Item[3301819] = {}
	tMakeOldPayBack_Item[3301819]["DeleteItem"] = {}
	tMakeOldPayBack_Item[3301819]["DeleteItem"][1] = {}
	tMakeOldPayBack_Item[3301819]["DeleteItem"][1]["Id"] = 3301819
	tMakeOldPayBack_Item[3301819]["RewardItem"] = {}
	tMakeOldPayBack_Item[3301819]["RewardItem"][1] = {}
	tMakeOldPayBack_Item[3301819]["RewardItem"][1]["Id"] = 1200006
	tMakeOldPayBack_Item[3301819]["RewardItem"][1]["Attr"] = "0 1 3"
	tMakeOldPayBack_Item[3301819]["LogId"] = 12000603

	-- 龙凤呈祥赠*1
	tMakeOldPayBack_Item[3301820] = {}
	tMakeOldPayBack_Item[3301820]["DeleteItem"] = {}
	tMakeOldPayBack_Item[3301820]["DeleteItem"][1] = {}
	tMakeOldPayBack_Item[3301820]["DeleteItem"][1]["Id"] = 3301820
	tMakeOldPayBack_Item[3301820]["RewardItem"] = {}
	tMakeOldPayBack_Item[3301820]["RewardItem"][1] = {}
	tMakeOldPayBack_Item[3301820]["RewardItem"][1]["Id"] = 192575
	tMakeOldPayBack_Item[3301820]["RewardItem"][1]["Attr"] = "0 1 3"
	tMakeOldPayBack_Item[3301820]["LogId"] = 12000603

	-- 烈火柔情赠*1
	tMakeOldPayBack_Item[3301821] = {}
	tMakeOldPayBack_Item[3301821]["DeleteItem"] = {}
	tMakeOldPayBack_Item[3301821]["DeleteItem"][1] = {}
	tMakeOldPayBack_Item[3301821]["DeleteItem"][1]["Id"] = 3301821
	tMakeOldPayBack_Item[3301821]["RewardItem"] = {}
	tMakeOldPayBack_Item[3301821]["RewardItem"][1] = {}
	tMakeOldPayBack_Item[3301821]["RewardItem"][1]["Id"] = 188495
	tMakeOldPayBack_Item[3301821]["RewardItem"][1]["Attr"] = "0 1 3"
	tMakeOldPayBack_Item[3301821]["LogId"] = 12000603

	-- 随机属性令牌*1(外加删除部分)
tMakeOldPayBack_Item[3301822] = {}
	tMakeOldPayBack_Item[3301822][1] = {}
	tMakeOldPayBack_Item[3301822][1]["ItemChanceSum"] = 10000
	--	力量秘令	25%
	tMakeOldPayBack_Item[3301822][1][1] = {}
	tMakeOldPayBack_Item[3301822][1][1]["RandomItemChanceType"] = 2
	tMakeOldPayBack_Item[3301822][1][1]["ItemChance"] = 2500
	tMakeOldPayBack_Item[3301822][1][1]["RewardItem"] = {}
	tMakeOldPayBack_Item[3301822][1][1]["RewardItem"][1] = {}
	tMakeOldPayBack_Item[3301822][1][1]["RewardItem"][1]["Id"] = 3004895
	tMakeOldPayBack_Item[3301822][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tMakeOldPayBack_Item[3301822][1][1]["LogId"] = 12000603
	--	精神秘令	25%
	tMakeOldPayBack_Item[3301822][1][2] = {}
	tMakeOldPayBack_Item[3301822][1][2]["RandomItemChanceType"] = 2
	tMakeOldPayBack_Item[3301822][1][2]["ItemChance"] = 2500
	tMakeOldPayBack_Item[3301822][1][2]["RewardItem"] = {}
	tMakeOldPayBack_Item[3301822][1][2]["RewardItem"][1] = {}
	tMakeOldPayBack_Item[3301822][1][2]["RewardItem"][1]["Id"] = 3004896
	tMakeOldPayBack_Item[3301822][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tMakeOldPayBack_Item[3301822][1][2]["LogId"] = 12000603
	--	体质秘令	25%
	tMakeOldPayBack_Item[3301822][1][3] = {}
	tMakeOldPayBack_Item[3301822][1][3]["RandomItemChanceType"] = 2
	tMakeOldPayBack_Item[3301822][1][3]["ItemChance"] = 2500
	tMakeOldPayBack_Item[3301822][1][3]["RewardItem"] = {}
	tMakeOldPayBack_Item[3301822][1][3]["RewardItem"][1] = {}
	tMakeOldPayBack_Item[3301822][1][3]["RewardItem"][1]["Id"] = 3004897
	tMakeOldPayBack_Item[3301822][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tMakeOldPayBack_Item[3301822][1][3]["LogId"] = 12000603
	--	灵巧秘令	25%
	tMakeOldPayBack_Item[3301822][1][4] = {}
	tMakeOldPayBack_Item[3301822][1][4]["RandomItemChanceType"] = 2
	tMakeOldPayBack_Item[3301822][1][4]["ItemChance"] = 2500
	tMakeOldPayBack_Item[3301822][1][4]["RewardItem"] = {}
	tMakeOldPayBack_Item[3301822][1][4]["RewardItem"][1] = {}
	tMakeOldPayBack_Item[3301822][1][4]["RewardItem"][1]["Id"] = 3004898
	tMakeOldPayBack_Item[3301822][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tMakeOldPayBack_Item[3301822][1][4]["LogId"] = 12000603

	-- 大爆丹*10
	tMakeOldPayBack_Item[3301823] = {}
	tMakeOldPayBack_Item[3301823]["DeleteItem"] = {}
	tMakeOldPayBack_Item[3301823]["DeleteItem"][1] = {}
	tMakeOldPayBack_Item[3301823]["DeleteItem"][1]["Id"] = 3301823
	tMakeOldPayBack_Item[3301823]["RewardItem"] = {}
	tMakeOldPayBack_Item[3301823]["RewardItem"][1] = {}
	tMakeOldPayBack_Item[3301823]["RewardItem"][1]["Id"] = 3003126
	tMakeOldPayBack_Item[3301823]["RewardItem"][1]["Attr"] = "0 10"
	tMakeOldPayBack_Item[3301823]["LogId"] = 12000603
----------------------------------逻辑配置部分---------------------------------
-- Bag
function MakeOldPayBack_OpenPack(nItemId)
	-- 奖励
	RewardTemplate_UseItem(tMakeOldPayBack_Item[nItemId])
	
end
-- Bag2
function MakeOldPayBack_OpenPack2(nItemId)
	-- 随机一种密令
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Random(tMakeOldPayBack_Item[nItemId],1)
	end
	
end

----------------------------------物品配置部分---------------------------------
tItem[3301817] = tItem[3301817] or {}
tItem[3301818] = tItem[3301817] or {}
tItem[3301819] = tItem[3301817] or {}
tItem[3301820] = tItem[3301817] or {}
tItem[3301821] = tItem[3301817] or {}
tItem[3301822] = tItem[3301822] or {}
tItem[3301822]["Function"] = function(nItemId,sItemName)
	MakeOldPayBack_OpenPack2(nItemId)
end
tItem[3301823] = tItem[3301817] or {}
tItem[3301817]["Function"] = function(nItemId,sItemName)
	MakeOldPayBack_OpenPack(nItemId)
end