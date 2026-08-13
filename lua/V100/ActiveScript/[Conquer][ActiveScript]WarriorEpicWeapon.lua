------------------------------------------------------------------------------------
--Name：            160708[英文征服][活动脚本]战士史诗武器目标榜活动礼包及发奖action
--Creator:      陈彦宏
--Created:     2016/07/08
------------------------------------------------------------------------------------
-- 命名前缀
-- WarriorEpicWeaponAction_
----------------------------------表配置部分--------------------------------------------
	tWarriorEpicWeaponAction_Item = {}
	-- 战士史诗一阶礼包
	tWarriorEpicWeaponAction_Item[3200762] = {}
	tWarriorEpicWeaponAction_Item[3200762][1] = {}
	tWarriorEpicWeaponAction_Item[3200762][1]["RewardItem"] = {}
	tWarriorEpicWeaponAction_Item[3200762][1]["RewardItem"][1] = {}
	tWarriorEpicWeaponAction_Item[3200762][1]["RewardItem"][1]["Id"] = 3009001
	tWarriorEpicWeaponAction_Item[3200762][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWarriorEpicWeaponAction_Item[3200762][1]["DeleteItem"] = {}
	tWarriorEpicWeaponAction_Item[3200762][1]["DeleteItem"][1] = {}
	tWarriorEpicWeaponAction_Item[3200762][1]["DeleteItem"][1]["Id"] = 3200762
	tWarriorEpicWeaponAction_Item[3200762][1]["Talk"] = tWarriorEpicWeaponAction_Text[3200762][1]
	tWarriorEpicWeaponAction_Item[3200762][1]["NoSpace"] = tWarriorEpicWeaponAction_Text[3200762]["NoSpare"]
	tWarriorEpicWeaponAction_Item[3200762][1]["LogId"] = 12000457
	
	tWarriorEpicWeaponAction_Item[3200762][2] = {}
	tWarriorEpicWeaponAction_Item[3200762][2] ["RewardEMoneyMono"] = {}
	tWarriorEpicWeaponAction_Item[3200762][2] ["RewardEMoneyMono"]["Value"] = 100
	tWarriorEpicWeaponAction_Item[3200762][2]["DeleteItem"] = {}
	tWarriorEpicWeaponAction_Item[3200762][2]["DeleteItem"][1] = {}
	tWarriorEpicWeaponAction_Item[3200762][2]["DeleteItem"][1]["Id"] = 3200762
	tWarriorEpicWeaponAction_Item[3200762][2]["Talk"] = tWarriorEpicWeaponAction_Text[3200762][2]
	tWarriorEpicWeaponAction_Item[3200762][2]["LogId"] = 12000457
	
	-- 战士史诗二阶礼包
	tWarriorEpicWeaponAction_Item[3200763] = {}
	tWarriorEpicWeaponAction_Item[3200763][1] = {}
	tWarriorEpicWeaponAction_Item[3200763][1]["RewardItem"] = {}
	tWarriorEpicWeaponAction_Item[3200763][1]["RewardItem"][1] = {}
	tWarriorEpicWeaponAction_Item[3200763][1]["RewardItem"][1]["Id"] = 3009001
	tWarriorEpicWeaponAction_Item[3200763][1]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tWarriorEpicWeaponAction_Item[3200763][1]["DeleteItem"] = {}
	tWarriorEpicWeaponAction_Item[3200763][1]["DeleteItem"][1] = {}
	tWarriorEpicWeaponAction_Item[3200763][1]["DeleteItem"][1]["Id"] = 3200763
	tWarriorEpicWeaponAction_Item[3200763][1]["Talk"] = tWarriorEpicWeaponAction_Text[3200763][1]
	tWarriorEpicWeaponAction_Item[3200763][1]["NoSpace"] = tWarriorEpicWeaponAction_Text[3200763]["NoSpare"]
	tWarriorEpicWeaponAction_Item[3200763][1]["LogId"] = 12000457
	
	tWarriorEpicWeaponAction_Item[3200763][2] = {}
	tWarriorEpicWeaponAction_Item[3200763][2] ["RewardEMoneyMono"] = {}
	tWarriorEpicWeaponAction_Item[3200763][2] ["RewardEMoneyMono"]["Value"] = 400
	tWarriorEpicWeaponAction_Item[3200763][2]["DeleteItem"] = {}
	tWarriorEpicWeaponAction_Item[3200763][2]["DeleteItem"][1] = {}
	tWarriorEpicWeaponAction_Item[3200763][2]["DeleteItem"][1]["Id"] = 3200763
	tWarriorEpicWeaponAction_Item[3200763][2]["Talk"] = tWarriorEpicWeaponAction_Text[3200763][2]
	tWarriorEpicWeaponAction_Item[3200763][2]["Log"] = "0,0,3200763,1,12000457,2,3,400"
	
	-- 战士史诗三阶礼包
	tWarriorEpicWeaponAction_Item[3200764] = {}
	tWarriorEpicWeaponAction_Item[3200764][1] = {}
	tWarriorEpicWeaponAction_Item[3200764][1]["RewardItem"] = {}
	tWarriorEpicWeaponAction_Item[3200764][1]["RewardItem"][1] = {}
	tWarriorEpicWeaponAction_Item[3200764][1]["RewardItem"][1]["Id"] = 3009002
	tWarriorEpicWeaponAction_Item[3200764][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWarriorEpicWeaponAction_Item[3200764][1]["DeleteItem"] = {}
	tWarriorEpicWeaponAction_Item[3200764][1]["DeleteItem"][1] = {}
	tWarriorEpicWeaponAction_Item[3200764][1]["DeleteItem"][1]["Id"] = 3200764
	tWarriorEpicWeaponAction_Item[3200764][1]["Talk"] = tWarriorEpicWeaponAction_Text[3200764][1]
	tWarriorEpicWeaponAction_Item[3200764][1]["NoSpace"] = tWarriorEpicWeaponAction_Text[3200764]["NoSpare"]
	tWarriorEpicWeaponAction_Item[3200764][1]["LogId"] = 12000457
	
	tWarriorEpicWeaponAction_Item[3200764][2] = {}
	tWarriorEpicWeaponAction_Item[3200764][2] ["RewardEMoneyMono"] = {}
	tWarriorEpicWeaponAction_Item[3200764][2] ["RewardEMoneyMono"]["Value"] = 1000
	tWarriorEpicWeaponAction_Item[3200764][2]["DeleteItem"] = {}
	tWarriorEpicWeaponAction_Item[3200764][2]["DeleteItem"][1] = {}
	tWarriorEpicWeaponAction_Item[3200764][2]["DeleteItem"][1]["Id"] = 3200764
	tWarriorEpicWeaponAction_Item[3200764][2]["Talk"] = tWarriorEpicWeaponAction_Text[3200764][2]
	tWarriorEpicWeaponAction_Item[3200764][2]["Log"] = "0,0,3200764,1,12000457,2,3,1000"
	
	--战士史诗四阶礼包
	tWarriorEpicWeaponAction_Item[3200765] = {}
	tWarriorEpicWeaponAction_Item[3200765][1] = {}
	tWarriorEpicWeaponAction_Item[3200765][1]["RewardItem"] = {}
	tWarriorEpicWeaponAction_Item[3200765][1]["RewardItem"][1] = {}
	tWarriorEpicWeaponAction_Item[3200765][1]["RewardItem"][1]["Id"] = 3009002
	tWarriorEpicWeaponAction_Item[3200765][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tWarriorEpicWeaponAction_Item[3200765][1]["DeleteItem"] = {}
	tWarriorEpicWeaponAction_Item[3200765][1]["DeleteItem"][1] = {}
	tWarriorEpicWeaponAction_Item[3200765][1]["DeleteItem"][1]["Id"] = 3200765
	tWarriorEpicWeaponAction_Item[3200765][1]["Talk"] = tWarriorEpicWeaponAction_Text[3200765][1]
	tWarriorEpicWeaponAction_Item[3200765][1]["NoSpace"] = tWarriorEpicWeaponAction_Text[3200765]["NoSpare"]
	tWarriorEpicWeaponAction_Item[3200765][1]["LogId"] = 12000457
	
	tWarriorEpicWeaponAction_Item[3200765][2] = {}
	tWarriorEpicWeaponAction_Item[3200765][2] ["RewardEMoneyMono"] = {}
	tWarriorEpicWeaponAction_Item[3200765][2] ["RewardEMoneyMono"]["Value"] = 5000
	tWarriorEpicWeaponAction_Item[3200765][2]["DeleteItem"] = {}
	tWarriorEpicWeaponAction_Item[3200765][2]["DeleteItem"][1] = {}
	tWarriorEpicWeaponAction_Item[3200765][2]["DeleteItem"][1]["Id"] = 3200765
	tWarriorEpicWeaponAction_Item[3200765][2]["Talk"] = tWarriorEpicWeaponAction_Text[3200765][2]
	tWarriorEpicWeaponAction_Item[3200765][2]["Log"] = "0,0,3200765,1,12000457,2,3,5000"
	
----------------------------------逻辑部分--------------------------------------------
function WarriorEpicWeaponAction_UseSweetie(nItemId,nIndex)
	RewardTemplate_UseItem(tWarriorEpicWeaponAction_Item[nItemId][nIndex])
end
	
----------------------------------礼包配置---------------------------------------------
-- 战士史诗一阶礼包
tItem[3200762] = tItem[3200762] or {}
tItem[3200762]["DialogueText"] = tWarriorEpicWeaponAction_Text[3200762]
tItem[3200762]["Text1-1"] = {111}
tItem[3200762]["tOption1-1"] = {1,2,3}
tItem[3200762]["OptionPoint1"] = "1-2"
tItem[3200762]["OptionPoint2"] = "1-3"

tItem[3200762]["Text1-2"] = {121}
tItem[3200762]["tOption1-2"] = {4,5}
tItem[3200762]["OptionFunc4"] = "WarriorEpicWeaponAction_UseSweetie</N>3200762</N>1"
tItem[3200762]["OptionPoint5"] = "1-1"

tItem[3200762]["Text1-3"] = {131}
tItem[3200762]["tOption1-3"] = {6,5}
tItem[3200762]["OptionFunc6"] = "WarriorEpicWeaponAction_UseSweetie</N>3200762</N>2"
	
-- 战士史诗二阶礼包
tItem[3200763] = tItem[3200763] or {}
tItem[3200763]["DialogueText"] = tWarriorEpicWeaponAction_Text[3200763]
tItem[3200763]["Text1-1"] = {111}
tItem[3200763]["tOption1-1"] = {1,2,3}
tItem[3200763]["OptionPoint1"] = "1-2"
tItem[3200763]["OptionPoint2"] = "1-3"

tItem[3200763]["Text1-2"] = {121}
tItem[3200763]["tOption1-2"] = {4,5}
tItem[3200763]["OptionFunc4"] = "WarriorEpicWeaponAction_UseSweetie</N>3200763</N>1"
tItem[3200763]["OptionPoint5"] = "1-1"

tItem[3200763]["Text1-3"] = {131}
tItem[3200763]["tOption1-3"] = {6,5}
tItem[3200763]["OptionFunc6"] = "WarriorEpicWeaponAction_UseSweetie</N>3200763</N>2"

-- 战士史诗三阶礼包
tItem[3200764] = tItem[3200764] or {}
tItem[3200764]["DialogueText"] = tWarriorEpicWeaponAction_Text[3200764]
tItem[3200764]["Text1-1"] = {111}
tItem[3200764]["tOption1-1"] = {1,2,3}
tItem[3200764]["OptionPoint1"] = "1-2"
tItem[3200764]["OptionPoint2"] = "1-3"

tItem[3200764]["Text1-2"] = {121}
tItem[3200764]["tOption1-2"] = {4,5}
tItem[3200764]["OptionFunc4"] = "WarriorEpicWeaponAction_UseSweetie</N>3200764</N>1"
tItem[3200764]["OptionPoint5"] = "1-1"

tItem[3200764]["Text1-3"] = {131}
tItem[3200764]["tOption1-3"] = {6,5}
tItem[3200764]["OptionFunc6"] = "WarriorEpicWeaponAction_UseSweetie</N>3200764</N>2"

	--战士史诗四阶礼包
tItem[3200765] = tItem[3200765] or {}
tItem[3200765]["DialogueText"] = tWarriorEpicWeaponAction_Text[3200765]
tItem[3200765]["Text1-1"] = {111}
tItem[3200765]["tOption1-1"] = {1,2,3}
tItem[3200765]["OptionPoint1"] = "1-2"
tItem[3200765]["OptionPoint2"] = "1-3"

tItem[3200765]["Text1-2"] = {121}
tItem[3200765]["tOption1-2"] = {4,5}
tItem[3200765]["OptionFunc4"] = "WarriorEpicWeaponAction_UseSweetie</N>3200765</N>1"
tItem[3200765]["OptionPoint5"] = "1-1"

tItem[3200765]["Text1-3"] = {131}
tItem[3200765]["tOption1-3"] = {6,5}
tItem[3200765]["OptionFunc6"] = "WarriorEpicWeaponAction_UseSweetie</N>3200765</N>2"