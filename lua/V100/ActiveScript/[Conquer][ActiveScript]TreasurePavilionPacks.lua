------------------------------------------------------------------------------------
--Name：        181218[英文征服][活动脚本]1月线下商城礼包及发奖action制作
--Creator:      茅志伟
--Created:     2018/12/18
------------------------------------------------------------------------------------

--命名前缀 tTreasurePavilionPacks_

--lua.ini 41080

--LogId = 12001244

local tTreasurePavilionPacks_Pack = {}
tTreasurePavilionPacks_Pack[3311873] = {}
--轮回之眼
tTreasurePavilionPacks_Pack[3311873][1] = {}
tTreasurePavilionPacks_Pack[3311873][1]["DeleteItem"] = {}
tTreasurePavilionPacks_Pack[3311873][1]["DeleteItem"][1] = {}
tTreasurePavilionPacks_Pack[3311873][1]["DeleteItem"][1]["Id"] = 3311873
tTreasurePavilionPacks_Pack[3311873][1]["RewardItem"] = {}
tTreasurePavilionPacks_Pack[3311873][1]["RewardItem"][1] = {}
tTreasurePavilionPacks_Pack[3311873][1]["RewardItem"][1]["Id"] = 3004464
tTreasurePavilionPacks_Pack[3311873][1]["RewardItem"][1]["Attr"] = "0 1"
tTreasurePavilionPacks_Pack[3311873][1]["RewardEffect"] = {}
tTreasurePavilionPacks_Pack[3311873][1]["RewardEffect"]["Effect"] = "angelwing"
tTreasurePavilionPacks_Pack[3311873][1]["LogId"] = 12001244
--神宝仙丹
tTreasurePavilionPacks_Pack[3311873][2] = {}
tTreasurePavilionPacks_Pack[3311873][2]["DeleteItem"] = {}
tTreasurePavilionPacks_Pack[3311873][2]["DeleteItem"][1] = {}
tTreasurePavilionPacks_Pack[3311873][2]["DeleteItem"][1]["Id"] = 3311873
tTreasurePavilionPacks_Pack[3311873][2]["RewardItem"] = {}
tTreasurePavilionPacks_Pack[3311873][2]["RewardItem"][1] = {}
tTreasurePavilionPacks_Pack[3311873][2]["RewardItem"][1]["Id"] = 3006016
tTreasurePavilionPacks_Pack[3311873][2]["RewardItem"][1]["Attr"] = "0 1"
tTreasurePavilionPacks_Pack[3311873][2]["RewardEffect"] = {}
tTreasurePavilionPacks_Pack[3311873][2]["RewardEffect"]["Effect"] = "angelwing"
tTreasurePavilionPacks_Pack[3311873][2]["LogId"] = 12001244
--空灵佛心
tTreasurePavilionPacks_Pack[3311873][3] = {}
tTreasurePavilionPacks_Pack[3311873][3]["DeleteItem"] = {}
tTreasurePavilionPacks_Pack[3311873][3]["DeleteItem"][1] = {}
tTreasurePavilionPacks_Pack[3311873][3]["DeleteItem"][1]["Id"] = 3311873
tTreasurePavilionPacks_Pack[3311873][3]["RewardItem"] = {}
tTreasurePavilionPacks_Pack[3311873][3]["RewardItem"][1] = {}
tTreasurePavilionPacks_Pack[3311873][3]["RewardItem"][1]["Id"] = 3007564
tTreasurePavilionPacks_Pack[3311873][3]["RewardItem"][1]["Attr"] = "0 1"
tTreasurePavilionPacks_Pack[3311873][3]["RewardEffect"] = {}
tTreasurePavilionPacks_Pack[3311873][3]["RewardEffect"]["Effect"] = "angelwing"
tTreasurePavilionPacks_Pack[3311873][3]["LogId"] = 12001244
--海之心
tTreasurePavilionPacks_Pack[3311873][4] = {}
tTreasurePavilionPacks_Pack[3311873][4]["DeleteItem"] = {}
tTreasurePavilionPacks_Pack[3311873][4]["DeleteItem"][1] = {}
tTreasurePavilionPacks_Pack[3311873][4]["DeleteItem"][1]["Id"] = 3311873
tTreasurePavilionPacks_Pack[3311873][4]["RewardItem"] = {}
tTreasurePavilionPacks_Pack[3311873][4]["RewardItem"][1] = {}
tTreasurePavilionPacks_Pack[3311873][4]["RewardItem"][1]["Id"] = 3307449
tTreasurePavilionPacks_Pack[3311873][4]["RewardItem"][1]["Attr"] = "0 1"
tTreasurePavilionPacks_Pack[3311873][4]["RewardEffect"] = {}
tTreasurePavilionPacks_Pack[3311873][4]["RewardEffect"]["Effect"] = "angelwing"
tTreasurePavilionPacks_Pack[3311873][4]["LogId"] = 12001244


---------------------------------------------逻辑部分--------------------------
function TreasurePavilionPacks_UserItem(nItemId,nNum)
	if not Item_ChkItem(nItemId) then 
		return
	end
	local nSpace = 1
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tTreasurePavilionPacks_Text["NoSpace"],nSpace))
		return
	end
	RewardTemplate_UseItemAndMsg(tTreasurePavilionPacks_Pack[nItemId][nNum])
end



---------------------------------------物品对白------------------------------
tItemFace[3311873] = 1031
tItem[3311873] = tItem[3311873] or {}
tItem[3311873]["DialogueText"] = tTreasurePavilionPacks_Text[3311873]
tItem[3311873]["Text1-1"] = {111}
tItem[3311873]["tOption1-1"] = {111,112,113,114}
tItem[3311873]["OptionFunc111"] = "TreasurePavilionPacks_UserItem</N>3311873</N>1"
tItem[3311873]["OptionFunc112"] = "TreasurePavilionPacks_UserItem</N>3311873</N>2"
tItem[3311873]["OptionFunc113"] = "TreasurePavilionPacks_UserItem</N>3311873</N>3"
tItem[3311873]["OptionFunc114"] = "TreasurePavilionPacks_UserItem</N>3311873</N>4"








