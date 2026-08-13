------------------------------------------------------------------------------------
--Name：            180719[英文征服][任务脚本]星之辉耀无法用来洗赠辉耀星辰之蝎骑宠优化
--Creator:      林旭
--Created:     2018/07/19
------------------------------------------------------------------------------------

-- 命名前缀
-- OldItem_
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tOldItem_RewardItem = {}
	tOldItem_RewardItem[3004913] = {}
	tOldItem_RewardItem[3004913][1] = {}
	tOldItem_RewardItem[3004913][1]["RewardItem"] = {}
	tOldItem_RewardItem[3004913][1]["RewardItem"][1] = {}
	tOldItem_RewardItem[3004913][1]["RewardItem"][1]["Id"] = 200514
	tOldItem_RewardItem[3004913][1]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 1"
	tOldItem_RewardItem[3004913][1]["DeleteItem"] = {}
	tOldItem_RewardItem[3004913][1]["DeleteItem"][1] = {}
	tOldItem_RewardItem[3004913][1]["DeleteItem"][1]["Id"] = 200514
	tOldItem_RewardItem[3004913][1]["DeleteItem"][1]["Monopoly"] = 2
	tOldItem_RewardItem[3004913][1]["DeleteItem"][1]["SaveTime"] = 0
	tOldItem_RewardItem[3004913][1]["DeleteItem"][2] = {}
	tOldItem_RewardItem[3004913][1]["DeleteItem"][2]["Id"] = 3004913
	tOldItem_RewardItem[3004913][1]["RewardEffect"] = {}
	tOldItem_RewardItem[3004913][1]["RewardEffect"]["SzObj"] = "self"
	tOldItem_RewardItem[3004913][1]["RewardEffect"]["Effect"] = "angelwing"
	tOldItem_RewardItem[3004913][1]["Talk"] = tOldItem_Text[3004913]["Washbound"]
	tOldItem_RewardItem[3004913][1]["LogId"] = 10002346
	
	
	tOldItem_RewardItem[3004913][2] = {}
	tOldItem_RewardItem[3004913][2]["RewardItem"] = {}
	tOldItem_RewardItem[3004913][2]["RewardItem"][1] = {}
	tOldItem_RewardItem[3004913][2]["RewardItem"][1]["Id"] = 200514
	tOldItem_RewardItem[3004913][2]["RewardItem"][1]["Attr"] = "0 0 0 0 0 0 0 1"
	tOldItem_RewardItem[3004913][2]["DeleteItem"] = {}
	tOldItem_RewardItem[3004913][2]["DeleteItem"][1] = {}
	tOldItem_RewardItem[3004913][2]["DeleteItem"][1]["Id"] = 200516
	tOldItem_RewardItem[3004913][2]["DeleteItem"][1]["Monopoly"] = 2
	tOldItem_RewardItem[3004913][2]["DeleteItem"][1]["SaveTime"] = 0
	tOldItem_RewardItem[3004913][2]["DeleteItem"][2] = {}
	tOldItem_RewardItem[3004913][2]["DeleteItem"][2]["Id"] = 3004913
	tOldItem_RewardItem[3004913][2]["RewardEffect"] = {}
	tOldItem_RewardItem[3004913][2]["RewardEffect"]["SzObj"] = "self"
	tOldItem_RewardItem[3004913][2]["RewardEffect"]["Effect"] = "angelwing"
	tOldItem_RewardItem[3004913][2]["Talk"] = tOldItem_Text[3004913]["Washbound"]
	tOldItem_RewardItem[3004913][2]["LogId"] = 10002346
----------------------------------逻辑部分---------------------------------------------
function OldItem_UseSaintBottle(nItemId)
	if Item_ChkItem(tOldItem_RewardItem[nItemId][1]["DeleteItem"][1]["Id"],tOldItem_RewardItem[nItemId][1]["DeleteItem"][1]["Monopoly"]) then
		RewardTemplate_UseItemAndMsg(tOldItem_RewardItem[nItemId][1])
		return
	end
	if Item_ChkItem(tOldItem_RewardItem[nItemId][2]["DeleteItem"][1]["Id"],tOldItem_RewardItem[nItemId][2]["DeleteItem"][1]["Monopoly"]) then
		RewardTemplate_UseItemAndMsg(tOldItem_RewardItem[nItemId][2])
		return
	end
	User_TalkChannel2005(tOldItem_Text[nItemId]["NoItem"])
end










---------------------------------物品部分---------------------------------------------
--------物品有对白模板
tItem[3004913] = tItem[3004913] or {}
tItem[3004913]["Text1-1"] = {111}
tItem[3004913]["Text111"] = tOldItem_Text[3004913]["Text111"]
tItem[3004913]["tOption1-1"] = {111,112}
tItem[3004913]["Option111"] = tOldItem_Text[3004913]["Option1"]
tItem[3004913]["Option112"] = tOldItem_Text[3004913]["Option2"]
tItem[3004913]["OptionPoint111"] = "1-2"
tItem[3004913]["Text1-2"] = {112}
tItem[3004913]["Text112"] = tOldItem_Text[3004913]["Text112"]
tItem[3004913]["tOption1-2"] = {113,112}
tItem[3004913]["Option113"] = tOldItem_Text[3004913]["Option1"]
tItem[3004913]["OptionFunc113"]="OldItem_UseSaintBottle</N>3004913"

