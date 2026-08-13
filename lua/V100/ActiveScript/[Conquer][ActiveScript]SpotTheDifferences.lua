------------------------------------------------------------------------------------
--Name：            170727[英文征服][活动脚本]大家来找茬
--Creator:      游若楠
--Created:     2017/07/27
------------------------------------------------------------------------------------
--任务需求：请安排制作大家来找茬线下活动需要的礼包和礼包发奖action，用于线下页面发奖到线上，共需制作三个礼包和各
--自发奖action，具体需求在附件中。如有问题，请及时沟通，谢谢！
--请安排尽早制作下，为线下页面的制作做准备。

------------------------------------------------------------------------------------
--命名前缀
--tSpotTheDifferences_

----------------------------------表配置部分--------------------------------------------
--常量表
local tSpotTheDifferences_Cont = {}
	tSpotTheDifferences_Cont["BeforeTime"] = "2017-01-01 00:00 2017-08-20 23:59"
	tSpotTheDifferences_Cont["ActiveTime"] = "2017-08-21 00:00 2017-09-30 23:59"

--配置奖励表
local tSpotTheDifferences_Reward = {}
	--找茬达人礼包
	tSpotTheDifferences_Reward[3304486] = {}
	tSpotTheDifferences_Reward[3304486]["DeleteItem"] = {}
	tSpotTheDifferences_Reward[3304486]["DeleteItem"][1] = {}
	tSpotTheDifferences_Reward[3304486]["DeleteItem"][1]["Id"] = 3304486
	tSpotTheDifferences_Reward[3304486]["ItemChanceSum"] = 10000
	tSpotTheDifferences_Reward[3304486][1] = {}
	tSpotTheDifferences_Reward[3304486][1]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304486][1]["ItemChance"] = 1500
	tSpotTheDifferences_Reward[3304486][1]["RewardItem"] = {}
	tSpotTheDifferences_Reward[3304486][1]["RewardItem"][1] = {}
	tSpotTheDifferences_Reward[3304486][1]["RewardItem"][1]["Id"] = 720027
	tSpotTheDifferences_Reward[3304486][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tSpotTheDifferences_Reward[3304486][1]["LogId"] = 12000806
	tSpotTheDifferences_Reward[3304486][2] = {}
	tSpotTheDifferences_Reward[3304486][2]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304486][2]["ItemChance"] = 2500
	tSpotTheDifferences_Reward[3304486][2]["RewardItem"] = {}
	tSpotTheDifferences_Reward[3304486][2]["RewardItem"][1] = {}
	tSpotTheDifferences_Reward[3304486][2]["RewardItem"][1]["Id"] = 3009000
	tSpotTheDifferences_Reward[3304486][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSpotTheDifferences_Reward[3304486][2]["LogId"] = 12000806
	tSpotTheDifferences_Reward[3304486][3] = {}
	tSpotTheDifferences_Reward[3304486][3]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304486][3]["ItemChance"] = 2000
	tSpotTheDifferences_Reward[3304486][3]["RewardStrengthValue"] = {}
	tSpotTheDifferences_Reward[3304486][3]["RewardStrengthValue"]["Value"] = 50
	tSpotTheDifferences_Reward[3304486][3]["LogId"] = 12000806
	tSpotTheDifferences_Reward[3304486][4] = {}
	tSpotTheDifferences_Reward[3304486][4]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304486][4]["ItemChance"] = 2000
	tSpotTheDifferences_Reward[3304486][4]["RewardItem"] = {}
	tSpotTheDifferences_Reward[3304486][4]["RewardItem"][1] = {}
	tSpotTheDifferences_Reward[3304486][4]["RewardItem"][1]["Id"] = 723700
	tSpotTheDifferences_Reward[3304486][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tSpotTheDifferences_Reward[3304486][4]["LogId"] = 12000806
	tSpotTheDifferences_Reward[3304486][5] = {}
	tSpotTheDifferences_Reward[3304486][5]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304486][5]["ItemChance"] = 2000
	tSpotTheDifferences_Reward[3304486][5]["RewardItem"] = {}
	tSpotTheDifferences_Reward[3304486][5]["RewardItem"][1] = {}
	tSpotTheDifferences_Reward[3304486][5]["RewardItem"][1]["Id"] = 1200001
	tSpotTheDifferences_Reward[3304486][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tSpotTheDifferences_Reward[3304486][5]["LogId"] = 12000806

	--找茬大师礼包
	tSpotTheDifferences_Reward[3304487] = {}
	tSpotTheDifferences_Reward[3304487]["DeleteItem"] = {}
	tSpotTheDifferences_Reward[3304487]["DeleteItem"][1] = {}
	tSpotTheDifferences_Reward[3304487]["DeleteItem"][1]["Id"] = 3304487
	tSpotTheDifferences_Reward[3304487]["ItemChanceSum"] = 10000
	tSpotTheDifferences_Reward[3304487][1] = {}
	tSpotTheDifferences_Reward[3304487][1]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304487][1]["ItemChance"] = 1500
	tSpotTheDifferences_Reward[3304487][1]["RewardItem"] = {}
	tSpotTheDifferences_Reward[3304487][1]["RewardItem"][1] = {}
	tSpotTheDifferences_Reward[3304487][1]["RewardItem"][1]["Id"] = 3003124
	tSpotTheDifferences_Reward[3304487][1]["RewardItem"][1]["Attr"] = "0 3 3"
	tSpotTheDifferences_Reward[3304487][1]["LogId"] = 12000806
	tSpotTheDifferences_Reward[3304487][2] = {}
	tSpotTheDifferences_Reward[3304487][2]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304487][2]["ItemChance"] = 3000
	tSpotTheDifferences_Reward[3304487][2]["RewardItem"] = {}
	tSpotTheDifferences_Reward[3304487][2]["RewardItem"][1] = {}
	tSpotTheDifferences_Reward[3304487][2]["RewardItem"][1]["Id"] = 3009000
	tSpotTheDifferences_Reward[3304487][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tSpotTheDifferences_Reward[3304487][2]["LogId"] = 12000806
	tSpotTheDifferences_Reward[3304487][3] = {}
	tSpotTheDifferences_Reward[3304487][3]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304487][3]["ItemChance"] = 2000
	tSpotTheDifferences_Reward[3304487][3]["RewardStrengthValue"] = {}
	tSpotTheDifferences_Reward[3304487][3]["RewardStrengthValue"]["Value"] = 150
	tSpotTheDifferences_Reward[3304487][3]["LogId"] = 12000806
	tSpotTheDifferences_Reward[3304487][4] = {}
	tSpotTheDifferences_Reward[3304487][4]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304487][4]["ItemChance"] = 2000
	tSpotTheDifferences_Reward[3304487][4]["RewardItem"] = {}
	tSpotTheDifferences_Reward[3304487][4]["RewardItem"][1] = {}
	tSpotTheDifferences_Reward[3304487][4]["RewardItem"][1]["Id"] = 728776
	tSpotTheDifferences_Reward[3304487][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tSpotTheDifferences_Reward[3304487][4]["LogId"] = 12000806
	tSpotTheDifferences_Reward[3304487][5] = {}
	tSpotTheDifferences_Reward[3304487][5]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304487][5]["ItemChance"] = 1500
	tSpotTheDifferences_Reward[3304487][5]["RewardItem"] = {}
	tSpotTheDifferences_Reward[3304487][5]["RewardItem"][1] = {}
	tSpotTheDifferences_Reward[3304487][5]["RewardItem"][1]["Id"] = 723700
	tSpotTheDifferences_Reward[3304487][5]["RewardItem"][1]["Attr"] = "0 2 3"
	tSpotTheDifferences_Reward[3304487][5]["LogId"] = 12000806

	--找茬之王礼包
	tSpotTheDifferences_Reward[3304488] = {}
	tSpotTheDifferences_Reward[3304488]["DeleteItem"] = {}
	tSpotTheDifferences_Reward[3304488]["DeleteItem"][1] = {}
	tSpotTheDifferences_Reward[3304488]["DeleteItem"][1]["Id"] = 3304488
	tSpotTheDifferences_Reward[3304488]["ItemChanceSum"] = 10000
	tSpotTheDifferences_Reward[3304488][1] = {}
	tSpotTheDifferences_Reward[3304488][1]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304488][1]["ItemChance"] = 2500
	tSpotTheDifferences_Reward[3304488][1]["RewardItem"] = {}
	tSpotTheDifferences_Reward[3304488][1]["RewardItem"][1] = {}
	tSpotTheDifferences_Reward[3304488][1]["RewardItem"][1]["Id"] = 3009000
	tSpotTheDifferences_Reward[3304488][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tSpotTheDifferences_Reward[3304488][1]["LogId"] = 12000806
	tSpotTheDifferences_Reward[3304488][2] = {}
	tSpotTheDifferences_Reward[3304488][2]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304488][2]["ItemChance"] = 1500
	tSpotTheDifferences_Reward[3304488][2]["RewardStrengthValue"] = {}
	tSpotTheDifferences_Reward[3304488][2]["RewardStrengthValue"]["Value"] = 300
	tSpotTheDifferences_Reward[3304488][2]["LogId"] = 12000806
	tSpotTheDifferences_Reward[3304488][3] = {}
	tSpotTheDifferences_Reward[3304488][3]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304488][3]["ItemChance"] = 2000
	tSpotTheDifferences_Reward[3304488][3]["RewardItem"] = {}
	tSpotTheDifferences_Reward[3304488][3]["RewardItem"][1] = {}
	tSpotTheDifferences_Reward[3304488][3]["RewardItem"][1]["Id"] = 730001
	tSpotTheDifferences_Reward[3304488][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tSpotTheDifferences_Reward[3304488][3]["LogId"] = 12000806
	tSpotTheDifferences_Reward[3304488][4] = {}
	tSpotTheDifferences_Reward[3304488][4]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304488][4]["ItemChance"] = 2000
	tSpotTheDifferences_Reward[3304488][4]["RewardItem"] = {}
	tSpotTheDifferences_Reward[3304488][4]["RewardItem"][1] = {}
	tSpotTheDifferences_Reward[3304488][4]["RewardItem"][1]["Id"] = 723700
	tSpotTheDifferences_Reward[3304488][4]["RewardItem"][1]["Attr"] = "0 3 3"
	tSpotTheDifferences_Reward[3304488][4]["LogId"] = 12000806
	tSpotTheDifferences_Reward[3304488][5] = {}
	tSpotTheDifferences_Reward[3304488][5]["RandomItemChanceType"] = 2
	tSpotTheDifferences_Reward[3304488][5]["ItemChance"] = 2000
	tSpotTheDifferences_Reward[3304488][5]["RewardItem"] = {}
	tSpotTheDifferences_Reward[3304488][5]["RewardItem"][1] = {}
	tSpotTheDifferences_Reward[3304488][5]["RewardItem"][1]["Id"] = 3009001
	tSpotTheDifferences_Reward[3304488][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSpotTheDifferences_Reward[3304488][5]["LogId"] = 12000806

----------------------------------逻辑部分---------------------------------------------
--打开随机礼包
function tSpotTheDifferences_OpenRandom(nItemId)
	--检查时间
	if Sys_ChkFullTime(tSpotTheDifferences_Cont["BeforeTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tSpotTheDifferences_Cont["ActiveTime"]) then
		if not Item_DelItem(nItemId) then
			return
		end
		Sys_MsgBox(tSpotTheDifferences_Text["Expire"])
		return
	end
	
	local nUserId = Get_UserId()
	local bMark,nSpace = RewardTemplate_ChkRandomSpace(tSpotTheDifferences_Reward,nItemId,nUserId)
	
	--检查背包
	if not bMark then
		Sys_MsgBox(string.format(tSpotTheDifferences_Text["NoSpace"],nSpace))
		return
	end

	--删除物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local tReward,sReward = RewardTemplate_NewRandom(tSpotTheDifferences_Reward,nItemId)
		
		Sys_MsgBox(string.format(tSpotTheDifferences_Text["Get"],sReward))
	end
end

---------------------------------物品部分---------------------------------------------
--找茬达人礼包
tItem[3304486] = tItem[3304486] or {}
tItem[3304486]["Function"] = function(nItemId,sItemName)
	tSpotTheDifferences_OpenRandom(nItemId)
end

--找茬大师礼包
tItem[3304487] = tItem[3304487] or {}
tItem[3304487]["Function"] = function(nItemId,sItemName)
	tSpotTheDifferences_OpenRandom(nItemId)
end

--找茬之王礼包
tItem[3304488] = tItem[3304488] or {}
tItem[3304488]["Function"] = function(nItemId,sItemName)
	tSpotTheDifferences_OpenRandom(nItemId)
end

