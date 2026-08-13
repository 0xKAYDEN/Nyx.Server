------------------------------------------------------------------------------------
--Name:	170926[英文征服][活动脚本]德州新增道具第二期
--Creator: 	兰冬梅
--Created:2017/09/27
------------------------------------------------------------------------------------
--命名:SecondNewProps
--LogId；12000893
--lua.ini:40694  

local tSecondNewProps_Reward = {}
	--物品  3305534  50KK门票碎片  2500万银两 升级为50KK门票	3305535
	tSecondNewProps_Reward[3305534] = {}
	tSecondNewProps_Reward[3305534]["Money"] = 25000000
	tSecondNewProps_Reward[3305534]["RewardItem"] = {}
	tSecondNewProps_Reward[3305534]["RewardItem"][1] = {}
	tSecondNewProps_Reward[3305534]["RewardItem"][1]["Id"] = 3305535
	tSecondNewProps_Reward[3305534]["RewardItem"][1]["Attr"] = "0 1"
	tSecondNewProps_Reward[3305534]["DeleteItem"] = {}
	tSecondNewProps_Reward[3305534]["DeleteItem"][1] = {}
	tSecondNewProps_Reward[3305534]["DeleteItem"][1]["Id"] = 3305534
	tSecondNewProps_Reward[3305534]["LogId"] =12000893
	
	--物品  3305538  iPhoneXTournament门票碎片  250万银 升级为iPhoneXTournament门票	3305539
	tSecondNewProps_Reward[3305538] = {}
	tSecondNewProps_Reward[3305538]["Money"] = 2500000
	tSecondNewProps_Reward[3305538]["RewardItem"] = {}
	tSecondNewProps_Reward[3305538]["RewardItem"][1] = {}
	tSecondNewProps_Reward[3305538]["RewardItem"][1]["Id"] = 3305539
	tSecondNewProps_Reward[3305538]["RewardItem"][1]["Attr"] = "0 1"
	tSecondNewProps_Reward[3305538]["DeleteItem"] = {}
	tSecondNewProps_Reward[3305538]["DeleteItem"][1] = {}
	tSecondNewProps_Reward[3305538]["DeleteItem"][1]["Id"] = 3305538
	tSecondNewProps_Reward[3305538]["LogId"] =12000893

-----------------------------------------逻辑部分---------------------------------
function SecondNewProps_UseItem(nItemId)
--金币不够
	if not User_CanPutMoney2Bag(-tSecondNewProps_Reward[nItemId]["Money"]) then
		User_TalkChannel2005(tSecondNewProps_Text["NoMoney"])
		return
	end
--检测背包空间
	if not User_CheckLeftSpace(RewardTemplate_GetRewardSpace(tSecondNewProps_Reward[nItemId])) then
		User_TalkChannel2005(tSecondNewProps_Text["NoSpace"])
		return
	end
	
--给奖品
	if User_AddMoneyNew(-tSecondNewProps_Reward[nItemId]["Money"],12000893) then
		RewardTemplate_UseItemAndMsg(tSecondNewProps_Reward[nItemId])
	end
end

--CPT日赛、周赛、月赛、决赛门票过期删除
function SecondNewProps_OverdueItem(nItemId)
	if not Sys_ChkFullTime(tActivityTime["SecondNewProps"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tSecondNewProps_Text["OutTime"])
		end
		return
	end
end
-----------------------------------------物品使用模板---------------------------------

tItem[3305534] = tItem[3305534] or {}
tItem[3305534]["DialogueText"] = tSecondNewProps_Text[3305534]

tItem[3305534]["Text1-1"] = {111}
tItem[3305534]["tOption1-1"] = {111,112}
tItem[3305534]["OptionFunc111"] = "SecondNewProps_UseItem</N>3305534"


tItem[3305538] = tItem[3305538] or {}
tItem[3305538]["DialogueText"] = tSecondNewProps_Text[3305538]

tItem[3305538]["Text1-1"] = {111}
tItem[3305538]["tOption1-1"] = {111,112}
tItem[3305538]["OptionFunc111"] = "SecondNewProps_UseItem</N>3305538"

--CPT日赛、周赛、月赛、决赛门票
tItem[3305542] = tItem[3305542] or {}
tItem[3305542]["Function"] = function(nItemId,sItemName)
	SecondNewProps_OverdueItem(nItemId)
end

tItem[3305543] = tItem[3305542]
tItem[3305544] = tItem[3305542]
tItem[3305545] = tItem[3305542]
