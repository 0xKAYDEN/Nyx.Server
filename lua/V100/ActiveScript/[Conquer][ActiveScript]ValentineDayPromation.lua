------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]二月情人节促销活动(2.01-2.10)
--Creator: 		黄啸
--Created:		2018/01/17
------------------------------------------------------------------------------------

----------------------------------数据部分配置--------------------------------------

--命名前缀
--ValentineDayPromation

--logid:12000983
local tValentineDayPromation = {}
--晶莹星陨石精装包
tValentineDayPromation[3307143] = {}
tValentineDayPromation[3307143]["RewardItem"] = {}
tValentineDayPromation[3307143]["RewardItem"][1] = {}
tValentineDayPromation[3307143]["RewardItem"][1]["Id"] = 3009002
tValentineDayPromation[3307143]["RewardItem"][1]["Attr"] = "0 1"
tValentineDayPromation[3307143]["LogId"] = 12000983
tValentineDayPromation[3307143]["DeleteItem"] = {}
tValentineDayPromation[3307143]["DeleteItem"][1] = {}
tValentineDayPromation[3307143]["DeleteItem"][1]["Id"] = 3307143

--晶莹星陨石豪享包
tValentineDayPromation[3307144] = {}
tValentineDayPromation[3307144]["RewardItem"] = {}
tValentineDayPromation[3307144]["RewardItem"][1] = {}
tValentineDayPromation[3307144]["RewardItem"][1]["Id"] = 3009002
tValentineDayPromation[3307144]["RewardItem"][1]["Attr"] = "0 10"
tValentineDayPromation[3307144]["LogId"] = 12000983
tValentineDayPromation[3307144]["DeleteItem"] = {}
tValentineDayPromation[3307144]["DeleteItem"][1] = {}
tValentineDayPromation[3307144]["DeleteItem"][1]["Id"] = 3307144

--天长地久鲜花礼包
tValentineDayPromation[3307145] = {}
tValentineDayPromation[3307145][1] = {}
tValentineDayPromation[3307145][1]["RewardItem"] = {}
tValentineDayPromation[3307145][1]["RewardItem"][1] = {}
tValentineDayPromation[3307145][1]["RewardItem"][1]["Id"] = 751999 --751999 百合，752999 兰花，753999 玫瑰
tValentineDayPromation[3307145][1]["RewardItem"][1]["Attr"] = "0 1"
tValentineDayPromation[3307145][1]["LogId"] = 12000983
tValentineDayPromation[3307145][1]["DeleteItem"] = {}
tValentineDayPromation[3307145][1]["DeleteItem"][1] = {}
tValentineDayPromation[3307145][1]["DeleteItem"][1]["Id"] = 3307145

tValentineDayPromation[3307145][2] = {}
tValentineDayPromation[3307145][2]["RewardItem"] = {}
tValentineDayPromation[3307145][2]["RewardItem"][1] = {}
tValentineDayPromation[3307145][2]["RewardItem"][1]["Id"] = 752999 --751999 百合，752999 兰花，753999 玫瑰
tValentineDayPromation[3307145][2]["RewardItem"][1]["Attr"] = "0 1"
tValentineDayPromation[3307145][2]["LogId"] = 12000983
tValentineDayPromation[3307145][2]["DeleteItem"] = {}
tValentineDayPromation[3307145][2]["DeleteItem"][1] = {}
tValentineDayPromation[3307145][2]["DeleteItem"][1]["Id"] = 3307145

tValentineDayPromation[3307145][3] = {}
tValentineDayPromation[3307145][3]["RewardItem"] = {}
tValentineDayPromation[3307145][3]["RewardItem"][1] = {}
tValentineDayPromation[3307145][3]["RewardItem"][1]["Id"] = 753999 --751999 百合，752999 兰花，753999 玫瑰
tValentineDayPromation[3307145][3]["RewardItem"][1]["Attr"] = "0 1"
tValentineDayPromation[3307145][3]["LogId"] = 12000983
tValentineDayPromation[3307145][3]["DeleteItem"] = {}
tValentineDayPromation[3307145][3]["DeleteItem"][1] = {}
tValentineDayPromation[3307145][3]["DeleteItem"][1]["Id"] = 3307145

--极品风雷翅*1
tValentineDayPromation[3307343] = {}
tValentineDayPromation[3307343]["RewardItem"] = {}
tValentineDayPromation[3307343]["RewardItem"][1] = {}
tValentineDayPromation[3307343]["RewardItem"][1]["Id"] = 204009
tValentineDayPromation[3307343]["RewardItem"][1]["Attr"] = "0 1"
tValentineDayPromation[3307343]["LogId"] = 12000983
tValentineDayPromation[3307343]["DeleteItem"] = {}
tValentineDayPromation[3307343]["DeleteItem"][1] = {}
tValentineDayPromation[3307343]["DeleteItem"][1]["Id"] = 3307343

--极品凌霄扇*1
tValentineDayPromation[3307344] = {}
tValentineDayPromation[3307344]["RewardItem"] = {}
tValentineDayPromation[3307344]["RewardItem"][1] = {}
tValentineDayPromation[3307344]["RewardItem"][1]["Id"] = 201009
tValentineDayPromation[3307344]["RewardItem"][1]["Attr"] = "0 1"
tValentineDayPromation[3307344]["LogId"] = 12000983
tValentineDayPromation[3307344]["DeleteItem"] = {}
tValentineDayPromation[3307344]["DeleteItem"][1] = {}
tValentineDayPromation[3307344]["DeleteItem"][1]["Id"] = 3307344

--极品混元塔*1
tValentineDayPromation[3307345] = {}
tValentineDayPromation[3307345]["RewardItem"] = {}
tValentineDayPromation[3307345]["RewardItem"][1] = {}
tValentineDayPromation[3307345]["RewardItem"][1]["Id"] = 202009
tValentineDayPromation[3307345]["RewardItem"][1]["Attr"] = "0 1"
tValentineDayPromation[3307345]["LogId"] = 12000983
tValentineDayPromation[3307345]["DeleteItem"] = {}
tValentineDayPromation[3307345]["DeleteItem"][1] = {}
tValentineDayPromation[3307345]["DeleteItem"][1]["Id"] = 3307345

--极品马鞭*1
tValentineDayPromation[3307346] = {}
tValentineDayPromation[3307346]["RewardItem"] = {}
tValentineDayPromation[3307346]["RewardItem"][1] = {}
tValentineDayPromation[3307346]["RewardItem"][1]["Id"] = 203009
tValentineDayPromation[3307346]["RewardItem"][1]["Attr"] = "0 1"
tValentineDayPromation[3307346]["LogId"] = 12000983
tValentineDayPromation[3307346]["DeleteItem"] = {}
tValentineDayPromation[3307346]["DeleteItem"][1] = {}
tValentineDayPromation[3307346]["DeleteItem"][1]["Id"] = 3307346
--------------------------------------逻辑部分配置-------------------------------------------
--莹星陨石礼包
function ValentineDayPromation_GetBag(nItemId)
	if Item_ChkMulItem(nItemId,nItemId,1) then
		local nSpace = RewardTemplate_GetRewardSpace(tValentineDayPromation[nItemId])
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tValentineDayPromation[nItemId])
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
	end
end

--天长地久鲜花礼包
function ValentineDayPromation_FlowerBag(nItemId,nTip)
	
	if Item_ChkMulItem(nItemId,nItemId,1) then
		local nSpace = RewardTemplate_GetRewardSpace(tValentineDayPromation[nItemId][nTip])
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tValentineDayPromation[nItemId][nTip])
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
	end
end

--------------------------------------模块部分配置-------------------------------------------
tItem[3307143] = tItem[3307143] or {}
tItem[3307143]["Function"] = function(nItemTypeId,sItemName)
	ValentineDayPromation_GetBag(nItemTypeId)
end

tItem[3307144] = tItem[3307144] or {}
tItem[3307144]["Function"] = function(nItemTypeId,sItemName)
	ValentineDayPromation_GetBag(nItemTypeId)
end
tItem[3307343] = tItem[3307143]
tItem[3307344] = tItem[3307143]
tItem[3307345] = tItem[3307143]
tItem[3307346] = tItem[3307143]

tItem[3307145] = tItem[3307145] or {}
tItem[3307145]["Text1-1"] = {111}
tItem[3307145]["Text111"] = tValentineDayPromation_Text[3307145]["Text111"] 
tItem[3307145]["tOption1-1"] = {1,2,3}
tItem[3307145]["Option1"] = tValentineDayPromation_Text[3307145]["Option1"]
tItem[3307145]["Option2"] = tValentineDayPromation_Text[3307145]["Option2"]
tItem[3307145]["Option3"] = tValentineDayPromation_Text[3307145]["Option3"]
tItem[3307145]["OptionFunc1"] = "ValentineDayPromation_FlowerBag</N>3307145</N>1"
tItem[3307145]["OptionFunc2"] = "ValentineDayPromation_FlowerBag</N>3307145</N>2"
tItem[3307145]["OptionFunc3"] = "ValentineDayPromation_FlowerBag</N>3307145</N>3"
