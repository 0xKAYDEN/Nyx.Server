------------------------------------------------------------------------------------
--Name：	170123[英文征服][活动脚本]英文铁扇门发奖action制作
--Creator:      陈彦宏
--Created:     2017/01/23
------------------------------------------------------------------------------------
-- 命名前缀
-- IronGreatGift_
----------------------------------表配置部分--------------------------------------------
local tIronGreatGift_Item = {}
	-- 铁扇门豪华套装礼包
	tIronGreatGift_Item[3301874] = {}
	tIronGreatGift_Item[3301874][1] = {}
	tIronGreatGift_Item[3301874][1]["RewardItem"] = {}
	tIronGreatGift_Item[3301874][1]["RewardItem"][1] = {}
	tIronGreatGift_Item[3301874][1]["RewardItem"][1]["Id"] = 626029
	tIronGreatGift_Item[3301874][1]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 0 0 0 3"
	tIronGreatGift_Item[3301874][1]["RewardItem"][2] = {}
	tIronGreatGift_Item[3301874][1]["RewardItem"][2]["Id"] = 101009
	tIronGreatGift_Item[3301874][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3"
	tIronGreatGift_Item[3301874][1]["RewardItem"][3] = {}
	tIronGreatGift_Item[3301874][1]["RewardItem"][3]["Id"] = 170009
	tIronGreatGift_Item[3301874][1]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3"
	tIronGreatGift_Item[3301874][1]["DeleteItem"] = {}
	tIronGreatGift_Item[3301874][1]["DeleteItem"][1] = {}
	tIronGreatGift_Item[3301874][1]["DeleteItem"][1]["Id"] = 3301874
	tIronGreatGift_Item[3301874][1]["Talk"] = tIronGreatGift_Text[3301874]["GetItem"]
	tIronGreatGift_Item[3301874][1]["NoSpace"] = tIronGreatGift_Text[3301874]["NoSpare"]
	tIronGreatGift_Item[3301874][1]["LogId"] = 12000639
	
----------------------------------逻辑部分--------------------------------------------
function IronGreatGift_UseGift(nItemId,nIndex)
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tIronGreatGift_Item[nItemId][nIndex])
end
	
----------------------------------礼包配置---------------------------------------------
-- 铁扇门豪华套装礼包
tItem[3301874] = tItem[3301874] or {}
tItem[3301874]["Function"] = function(nItemId,sItemName)
	IronGreatGift_UseGift(nItemId,1)
end


