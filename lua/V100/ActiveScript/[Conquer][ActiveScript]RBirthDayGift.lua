------------------------------------------------------------------------------------
--Name：            180816[英文征服][活动脚本]维护大R生日福利发奖action制作
--Creator:      蔡颖静
--Created:     2018/08/16
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：tRBirthDayGift_Data

----------------------------------表配置部分--------------------------------------------
local tRBirthDayGift_Data={}
--大R玩家生日福利礼包A
tRBirthDayGift_Data[3310525]={}
tRBirthDayGift_Data[3310525]["LogId"] =12001141
tRBirthDayGift_Data[3310525]["DeleteItem"] = {}
tRBirthDayGift_Data[3310525]["DeleteItem"][1]={}
tRBirthDayGift_Data[3310525]["DeleteItem"][1]["Id"]=3310525
tRBirthDayGift_Data[3310525]["RewardItem"] = {}
tRBirthDayGift_Data[3310525]["RewardItem"][1]={}
tRBirthDayGift_Data[3310525]["RewardItem"][1]["Id"]= 751999
tRBirthDayGift_Data[3310525]["RewardItem"][1]["Attr"] = "0 1"
tRBirthDayGift_Data[3310525]["RewardItem"][2]={}
tRBirthDayGift_Data[3310525]["RewardItem"][2]["Id"]= 720652
tRBirthDayGift_Data[3310525]["RewardItem"][2]["Attr"] = "0 10"
tRBirthDayGift_Data[3310525]["RewardStrengthValue"] = {}
tRBirthDayGift_Data[3310525]["RewardStrengthValue"]["Value"] = 40000

--大R玩家生日福利礼包B
tRBirthDayGift_Data[3310526]={}
tRBirthDayGift_Data[3310526]["LogId"] =12001141
tRBirthDayGift_Data[3310526]["DeleteItem"] = {}
tRBirthDayGift_Data[3310526]["DeleteItem"][1]={}
tRBirthDayGift_Data[3310526]["DeleteItem"][1]["Id"]=3310526
tRBirthDayGift_Data[3310526]["RewardItem"] = {}
tRBirthDayGift_Data[3310526]["RewardItem"][1]={}
tRBirthDayGift_Data[3310526]["RewardItem"][1]["Id"]= 751999
tRBirthDayGift_Data[3310526]["RewardItem"][1]["Attr"] = "0 1"
tRBirthDayGift_Data[3310526]["RewardItem"][2]={}
tRBirthDayGift_Data[3310526]["RewardItem"][2]["Id"]= 3310562
tRBirthDayGift_Data[3310526]["RewardItem"][2]["Attr"] = "0 1"
tRBirthDayGift_Data[3310526]["RewardItem"][3]={}
tRBirthDayGift_Data[3310526]["RewardItem"][3]["Id"]= 711504
tRBirthDayGift_Data[3310526]["RewardItem"][3]["Attr"] = "0 120"

--大R玩家生日福利礼包C
tRBirthDayGift_Data[3310527]={}
tRBirthDayGift_Data[3310527]["LogId"] =12001141
tRBirthDayGift_Data[3310527]["DeleteItem"] = {}
tRBirthDayGift_Data[3310527]["DeleteItem"][1]={}
tRBirthDayGift_Data[3310527]["DeleteItem"][1]["Id"]=3310527
tRBirthDayGift_Data[3310527]["RewardItem"] = {}
tRBirthDayGift_Data[3310527]["RewardItem"][1]={}
tRBirthDayGift_Data[3310527]["RewardItem"][1]["Id"]= 751999
tRBirthDayGift_Data[3310527]["RewardItem"][1]["Attr"] = "0 1"
tRBirthDayGift_Data[3310527]["RewardItem"][2]={}
tRBirthDayGift_Data[3310527]["RewardItem"][2]["Id"]= 4060001
tRBirthDayGift_Data[3310527]["RewardItem"][2]["Attr"] = "0 1100"
tRBirthDayGift_Data[3310527]["RewardItem"][3]={}
tRBirthDayGift_Data[3310527]["RewardItem"][3]["Id"]= 723694
tRBirthDayGift_Data[3310527]["RewardItem"][3]["Attr"] = "0 3"

--13颗晶莹星陨石包
tRBirthDayGift_Data[3310562]={}
tRBirthDayGift_Data[3310562]["LogId"] =12001141
tRBirthDayGift_Data[3310562]["DeleteItem"] = {}
tRBirthDayGift_Data[3310562]["DeleteItem"][1]={}
tRBirthDayGift_Data[3310562]["DeleteItem"][1]["Id"]=3310562
tRBirthDayGift_Data[3310562]["RewardItem"] = {}
tRBirthDayGift_Data[3310562]["RewardItem"][1]={}
tRBirthDayGift_Data[3310562]["RewardItem"][1]["Id"]= 3009002
tRBirthDayGift_Data[3310562]["RewardItem"][1]["Attr"] = "0 13 0 2880 1"

----------------------------------逻辑部分---------------------------------------------
function RBirthDayGift_OpenPack(nItemId)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tRBirthDayGift_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tRBirthDayGift_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tRBirthDayGift_Text["SystemTips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
		--打开礼包
	if RewardTemplate_UseItem(tRBirthDayGift_Data[nItemId]) then 
		return 
	end 
end


---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3310525] = tItem[3310525] or {}
tItem[3310525]["Function"] = function(nItemId,sItemName)
		RBirthDayGift_OpenPack(nItemId)
end
tItem[3310526]=tItem[3310525]
tItem[3310527]=tItem[3310525]
tItem[3310562]=tItem[3310525]