------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]8月抽奖目标榜活动发奖action
--Purpose:	8月抽奖目标榜活动发奖action
--Creator: 	茅志伟
--Created:	2018/07/14
------------------------------------------------------------------------------------

--命名前缀 tLotteryTargetAward_
--LogId = 12001117

local tLotteryTargetAward_Pack = {}
--5积分礼包
tLotteryTargetAward_Pack[3310116] = {}
tLotteryTargetAward_Pack[3310116]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310116]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310116]["RewardItem"][1]["Id"] = 720027
tLotteryTargetAward_Pack[3310116]["RewardItem"][1]["Attr"] = "0 2"
tLotteryTargetAward_Pack[3310116]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310116]["RewardItem"][2]["Id"] = 730001
tLotteryTargetAward_Pack[3310116]["RewardItem"][2]["Attr"] = "0 1"
tLotteryTargetAward_Pack[3310116]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310116]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310116]["LogId"] = 12001117
--10积分礼包
tLotteryTargetAward_Pack[3310117] = {}
tLotteryTargetAward_Pack[3310117]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310117]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310117]["RewardItem"][1]["Id"] = 720650
tLotteryTargetAward_Pack[3310117]["RewardItem"][1]["Attr"] = "0 1"
tLotteryTargetAward_Pack[3310117]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310117]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310117]["LogId"] = 12001117
--30积分礼包
tLotteryTargetAward_Pack[3310118] = {}
tLotteryTargetAward_Pack[3310118]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310118]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310118]["RewardItem"][1]["Id"] = 1088000
tLotteryTargetAward_Pack[3310118]["RewardItem"][1]["Attr"] = "0 1 3"
tLotteryTargetAward_Pack[3310118]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310118]["RewardItem"][2]["Id"] = 730002
tLotteryTargetAward_Pack[3310118]["RewardItem"][2]["Attr"] = "0 1 3"
tLotteryTargetAward_Pack[3310118]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310118]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310118]["LogId"] = 12001117
--50积分礼包
tLotteryTargetAward_Pack[3310119] = {}
tLotteryTargetAward_Pack[3310119]["RewardStrengthValue"] = {}
tLotteryTargetAward_Pack[3310119]["RewardStrengthValue"]["Value"] = 500
tLotteryTargetAward_Pack[3310119]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310119]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310119]["LogId"] = 12001117
--100积分礼包
tLotteryTargetAward_Pack[3310120] = {}
tLotteryTargetAward_Pack[3310120]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310120]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310120]["RewardItem"][1]["Id"] = 730003
tLotteryTargetAward_Pack[3310120]["RewardItem"][1]["Attr"] = "0 1"
tLotteryTargetAward_Pack[3310120]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310120]["RewardItem"][2]["Id"] = 3004248
tLotteryTargetAward_Pack[3310120]["RewardItem"][2]["Attr"] = "0 2"
tLotteryTargetAward_Pack[3310120]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310120]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310120]["LogId"] = 12001117
--150积分礼包
tLotteryTargetAward_Pack[3310121] = {}
tLotteryTargetAward_Pack[3310121]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310121]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310121]["RewardItem"][1]["Id"] = 723342
tLotteryTargetAward_Pack[3310121]["RewardItem"][1]["Attr"] = "0 6"
tLotteryTargetAward_Pack[3310121]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310121]["RewardItem"][2]["Id"] = 3003126
tLotteryTargetAward_Pack[3310121]["RewardItem"][2]["Attr"] = "0 10"
tLotteryTargetAward_Pack[3310121]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310121]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310121]["LogId"] = 12001117
--200积分礼包
tLotteryTargetAward_Pack[3310122] = {}
tLotteryTargetAward_Pack[3310122]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310122]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310122]["RewardItem"][1]["Id"] = 730003
tLotteryTargetAward_Pack[3310122]["RewardItem"][1]["Attr"] = "0 1"
tLotteryTargetAward_Pack[3310122]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310122]["RewardItem"][2]["Id"] = 728526
tLotteryTargetAward_Pack[3310122]["RewardItem"][2]["Attr"] = "0 2"
tLotteryTargetAward_Pack[3310122]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310122]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310122]["LogId"] = 12001117
--300积分礼包
tLotteryTargetAward_Pack[3310123] = {}
tLotteryTargetAward_Pack[3310123]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310123]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310123]["RewardItem"][1]["Id"] = 730004
tLotteryTargetAward_Pack[3310123]["RewardItem"][1]["Attr"] = "0 1"
tLotteryTargetAward_Pack[3310123]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310123]["RewardItem"][2]["Id"] = 3003124
tLotteryTargetAward_Pack[3310123]["RewardItem"][2]["Attr"] = "0 50"
tLotteryTargetAward_Pack[3310123]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310123]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310123]["LogId"] = 12001117
--400积分礼包
tLotteryTargetAward_Pack[3310124] = {}
tLotteryTargetAward_Pack[3310124]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310124]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310124]["RewardItem"][1]["Id"] = 3009002
tLotteryTargetAward_Pack[3310124]["RewardItem"][1]["Attr"] = "0 1"
tLotteryTargetAward_Pack[3310124]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310124]["RewardItem"][2]["Id"] = 4060001
tLotteryTargetAward_Pack[3310124]["RewardItem"][2]["Attr"] = "0 30"
tLotteryTargetAward_Pack[3310124]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310124]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310124]["LogId"] = 12001117
--500积分礼包
tLotteryTargetAward_Pack[3310125] = {}
tLotteryTargetAward_Pack[3310125]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310125]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310125]["RewardItem"][1]["Id"] = 720028
tLotteryTargetAward_Pack[3310125]["RewardItem"][1]["Attr"] = "0 1"
tLotteryTargetAward_Pack[3310125]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310125]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310125]["LogId"] = 12001117
--600积分礼包
tLotteryTargetAward_Pack[3310126] = {}
tLotteryTargetAward_Pack[3310126]["RewardStrengthValue"] = {}
tLotteryTargetAward_Pack[3310126]["RewardStrengthValue"]["Value"] = 6000
tLotteryTargetAward_Pack[3310126]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310126]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310126]["LogId"] = 12001117
--700积分礼包
tLotteryTargetAward_Pack[3310127] = {}
tLotteryTargetAward_Pack[3310127]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310127]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310127]["RewardItem"][1]["Id"] = 3003124
tLotteryTargetAward_Pack[3310127]["RewardItem"][1]["Attr"] = "0 100"
tLotteryTargetAward_Pack[3310127]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310127]["RewardItem"][2]["Id"] = 3003126
tLotteryTargetAward_Pack[3310127]["RewardItem"][2]["Attr"] = "0 20"
tLotteryTargetAward_Pack[3310127]["RewardItem"][3] = {}
tLotteryTargetAward_Pack[3310127]["RewardItem"][3]["Id"] = 3002030
tLotteryTargetAward_Pack[3310127]["RewardItem"][3]["Attr"] = "0 30"
tLotteryTargetAward_Pack[3310127]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310127]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310127]["LogId"] = 12001117
--800积分礼包
tLotteryTargetAward_Pack[3310128] = {}
tLotteryTargetAward_Pack[3310128]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310128]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310128]["RewardItem"][1]["Id"] = 730004
tLotteryTargetAward_Pack[3310128]["RewardItem"][1]["Attr"] = "0 2"
tLotteryTargetAward_Pack[3310128]["RewardStrengthValue"] = {}
tLotteryTargetAward_Pack[3310128]["RewardStrengthValue"]["Value"] = 6000
tLotteryTargetAward_Pack[3310128]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310128]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310128]["LogId"] = 12001117
--900积分礼包
tLotteryTargetAward_Pack[3310129] = {}
tLotteryTargetAward_Pack[3310129]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310129]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310129]["RewardItem"][1]["Id"] = 723694
tLotteryTargetAward_Pack[3310129]["RewardItem"][1]["Attr"] = "0 3"
tLotteryTargetAward_Pack[3310129]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310129]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310129]["LogId"] = 12001117
--1000积分礼包
tLotteryTargetAward_Pack[3310130] = {}
tLotteryTargetAward_Pack[3310130]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310130]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310130]["RewardItem"][1]["Id"] = 730005
tLotteryTargetAward_Pack[3310130]["RewardItem"][1]["Attr"] = "0 1"
tLotteryTargetAward_Pack[3310130]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310130]["RewardItem"][2]["Id"] = 711504
tLotteryTargetAward_Pack[3310130]["RewardItem"][2]["Attr"] = "0 30"
tLotteryTargetAward_Pack[3310130]["RewardItem"][3] = {}
tLotteryTargetAward_Pack[3310130]["RewardItem"][3]["Id"] = 3003126
tLotteryTargetAward_Pack[3310130]["RewardItem"][3]["Attr"] = "0 20"
tLotteryTargetAward_Pack[3310130]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310130]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310130]["LogId"] = 12001117
--1100积分礼包
tLotteryTargetAward_Pack[3310131] = {}
tLotteryTargetAward_Pack[3310131]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310131]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310131]["RewardItem"][1]["Id"] = 720651
tLotteryTargetAward_Pack[3310131]["RewardItem"][1]["Attr"] = "0 10"
tLotteryTargetAward_Pack[3310131]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310131]["RewardItem"][2]["Id"] = 3009002
tLotteryTargetAward_Pack[3310131]["RewardItem"][2]["Attr"] = "0 2"
tLotteryTargetAward_Pack[3310131]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310131]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310131]["LogId"] = 12001117
--1200积分礼包
tLotteryTargetAward_Pack[3310132] = {}
tLotteryTargetAward_Pack[3310132]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310132]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310132]["RewardItem"][1]["Id"] = 3008436
tLotteryTargetAward_Pack[3310132]["RewardItem"][1]["Attr"] = "0 1"
tLotteryTargetAward_Pack[3310132]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310132]["RewardItem"][2]["Id"] = 4060001
tLotteryTargetAward_Pack[3310132]["RewardItem"][2]["Attr"] = "0 100"
tLotteryTargetAward_Pack[3310132]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310132]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310132]["LogId"] = 12001117
--1300积分礼包
tLotteryTargetAward_Pack[3310133] = {}
tLotteryTargetAward_Pack[3310133]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310133]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310133]["RewardItem"][1]["Id"] = 3009002
tLotteryTargetAward_Pack[3310133]["RewardItem"][1]["Attr"] = "0 4"
tLotteryTargetAward_Pack[3310133]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310133]["RewardItem"][2]["Id"] = 4060001
tLotteryTargetAward_Pack[3310133]["RewardItem"][2]["Attr"] = "0 120"
tLotteryTargetAward_Pack[3310133]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310133]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310133]["LogId"] = 12001117
--1400积分礼包
tLotteryTargetAward_Pack[3310134] = {}
tLotteryTargetAward_Pack[3310134]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310134]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310134]["RewardItem"][1]["Id"] = 3009002
tLotteryTargetAward_Pack[3310134]["RewardItem"][1]["Attr"] = "0 4"
tLotteryTargetAward_Pack[3310134]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310134]["RewardItem"][2]["Id"] = 4060001
tLotteryTargetAward_Pack[3310134]["RewardItem"][2]["Attr"] = "0 150"
tLotteryTargetAward_Pack[3310134]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310134]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310134]["LogId"] = 12001117
--1500积分礼包
tLotteryTargetAward_Pack[3310135] = {}
tLotteryTargetAward_Pack[3310135]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310135]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310135]["RewardItem"][1]["Id"] = 1200005
tLotteryTargetAward_Pack[3310135]["RewardItem"][1]["Attr"] = "0 1"
tLotteryTargetAward_Pack[3310135]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310135]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310135]["LogId"] = 12001117
--2000积分礼包
tLotteryTargetAward_Pack[3310136] = {}
tLotteryTargetAward_Pack[3310136]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310136]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310136]["RewardItem"][1]["Id"] = 3306885
tLotteryTargetAward_Pack[3310136]["RewardItem"][1]["Attr"] = "0 3000"
tLotteryTargetAward_Pack[3310136]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310136]["RewardItem"][2]["Id"] = 754999
tLotteryTargetAward_Pack[3310136]["RewardItem"][2]["Attr"] = "0 1"
tLotteryTargetAward_Pack[3310136]["RewardItem"][3] = {}
tLotteryTargetAward_Pack[3310136]["RewardItem"][3]["Id"] = 723694
tLotteryTargetAward_Pack[3310136]["RewardItem"][3]["Attr"] = "0 5"
tLotteryTargetAward_Pack[3310136]["RewardItem"][4] = {}
tLotteryTargetAward_Pack[3310136]["RewardItem"][4]["Id"] = 3002030
tLotteryTargetAward_Pack[3310136]["RewardItem"][4]["Attr"] = "0 100"
tLotteryTargetAward_Pack[3310136]["RewardStrengthValue"] = {}
tLotteryTargetAward_Pack[3310136]["RewardStrengthValue"]["Value"] = 10000
tLotteryTargetAward_Pack[3310136]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310136]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310136]["LogId"] = 12001117
--3000积分礼包
tLotteryTargetAward_Pack[3310137] = {}
tLotteryTargetAward_Pack[3310137]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310137]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310137]["RewardItem"][1]["Id"] = 723695
tLotteryTargetAward_Pack[3310137]["RewardItem"][1]["Attr"] = "0 1"
tLotteryTargetAward_Pack[3310137]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310137]["RewardItem"][2]["Id"] = 3009002
tLotteryTargetAward_Pack[3310137]["RewardItem"][2]["Attr"] = "0 5"
tLotteryTargetAward_Pack[3310137]["RewardItem"][3] = {}
tLotteryTargetAward_Pack[3310137]["RewardItem"][3]["Id"] = 1200005
tLotteryTargetAward_Pack[3310137]["RewardItem"][3]["Attr"] = "0 2"
tLotteryTargetAward_Pack[3310137]["RewardItem"][4] = {}
tLotteryTargetAward_Pack[3310137]["RewardItem"][4]["Id"] = 3008225
tLotteryTargetAward_Pack[3310137]["RewardItem"][4]["Attr"] = "0 10"
tLotteryTargetAward_Pack[3310137]["RewardStrengthValue"] = {}
tLotteryTargetAward_Pack[3310137]["RewardStrengthValue"]["Value"] = 30000
tLotteryTargetAward_Pack[3310137]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310137]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310137]["LogId"] = 12001117
--4000积分礼包
tLotteryTargetAward_Pack[3310138] = {}
tLotteryTargetAward_Pack[3310138]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310138]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310138]["RewardItem"][1]["Id"] = 3009002
tLotteryTargetAward_Pack[3310138]["RewardItem"][1]["Attr"] = "0 8"
tLotteryTargetAward_Pack[3310138]["RewardItem"][2] = {}
tLotteryTargetAward_Pack[3310138]["RewardItem"][2]["Id"] = 730006
tLotteryTargetAward_Pack[3310138]["RewardItem"][2]["Attr"] = "0 2"
tLotteryTargetAward_Pack[3310138]["RewardItem"][3] = {}
tLotteryTargetAward_Pack[3310138]["RewardItem"][3]["Id"] = 3008225
tLotteryTargetAward_Pack[3310138]["RewardItem"][3]["Attr"] = "0 10"
tLotteryTargetAward_Pack[3310138]["RewardItem"][4] = {}
tLotteryTargetAward_Pack[3310138]["RewardItem"][4]["Id"] = 3003126
tLotteryTargetAward_Pack[3310138]["RewardItem"][4]["Attr"] = "0 120"
tLotteryTargetAward_Pack[3310138]["RewardStrengthValue"] = {}
tLotteryTargetAward_Pack[3310138]["RewardStrengthValue"]["Value"] = 30000
tLotteryTargetAward_Pack[3310138]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310138]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310138]["LogId"] = 12001117
--5000积分礼包
tLotteryTargetAward_Pack[3310139] = {}
tLotteryTargetAward_Pack[3310139]["RewardItem"] = {}
tLotteryTargetAward_Pack[3310139]["RewardItem"][1] = {}
tLotteryTargetAward_Pack[3310139]["RewardItem"][1]["Id"] = 730008
tLotteryTargetAward_Pack[3310139]["RewardItem"][1]["Attr"] = "0 2"
tLotteryTargetAward_Pack[3310139]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310139]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310139]["LogId"] = 12001117
--100000气力值
tLotteryTargetAward_Pack[3310140] = {}
tLotteryTargetAward_Pack[3310140]["RewardStrengthValue"] = {}
tLotteryTargetAward_Pack[3310140]["RewardStrengthValue"]["Value"] = 100000
tLotteryTargetAward_Pack[3310140]["RewardEffect"] = {}
tLotteryTargetAward_Pack[3310140]["RewardEffect"]["Effect"]="angelwing"
tLotteryTargetAward_Pack[3310140]["LogId"] = 12001117

------------------------------------逻辑
function LotteryTargetAward_OpenPick(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tLotteryTargetAward_Pack[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tLotteryTargetAward_Text["TextNoSpace"],nSpace))
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		RewardTemplate_Reward(tLotteryTargetAward_Pack[nItemId])
	end 
end 

--------------------------------------物品模板
tItem[3310116] = tItem[3310116] or {}
tItem[3310116]["Function"] = function(nItemId,sItemName)
	LotteryTargetAward_OpenPick(nItemId)
end
tItem[3310117] = tItem[3310116]
tItem[3310118] = tItem[3310116]
tItem[3310119] = tItem[3310116]
tItem[3310120] = tItem[3310116]
tItem[3310121] = tItem[3310116]
tItem[3310122] = tItem[3310116]
tItem[3310123] = tItem[3310116]
tItem[3310124] = tItem[3310116]
tItem[3310125] = tItem[3310116]
tItem[3310126] = tItem[3310116]
tItem[3310127] = tItem[3310116]
tItem[3310128] = tItem[3310116]
tItem[3310129] = tItem[3310116]
tItem[3310130] = tItem[3310116]
tItem[3310131] = tItem[3310116]
tItem[3310132] = tItem[3310116]
tItem[3310133] = tItem[3310116]
tItem[3310134] = tItem[3310116]
tItem[3310135] = tItem[3310116]
tItem[3310136] = tItem[3310116]
tItem[3310137] = tItem[3310116]
tItem[3310138] = tItem[3310116]
tItem[3310139] = tItem[3310116]
tItem[3310140] = tItem[3310116]














































