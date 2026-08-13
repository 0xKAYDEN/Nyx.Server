------------------------------------------------------------------------------------
--Name：            181017[英文征服][活动脚本]11月藏宝阁活动道具发奖action制作
--Creator:      蔡颖静
--Created:     2018/10/17
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tOctTreasureRewardAtc_Data={}
--+4马匹（赠）可选包
tOctTreasureRewardAtc_Data[3311108]={}
--黑颈马
tOctTreasureRewardAtc_Data[3311108][1]={}
tOctTreasureRewardAtc_Data[3311108][1]["LogId"] =12001186
tOctTreasureRewardAtc_Data[3311108][1]["DeleteItem"] = {}
tOctTreasureRewardAtc_Data[3311108][1]["DeleteItem"][1]={}
tOctTreasureRewardAtc_Data[3311108][1]["DeleteItem"][1]["Id"]=3311108
tOctTreasureRewardAtc_Data[3311108][1]["RewardItem"] = {}
tOctTreasureRewardAtc_Data[3311108][1]["RewardItem"][1]={}
tOctTreasureRewardAtc_Data[3311108][1]["RewardItem"][1]["Id"]= 300000
tOctTreasureRewardAtc_Data[3311108][1]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 4 0 0 0 0 0 0 255"
--枣红马
tOctTreasureRewardAtc_Data[3311108][2]={}
tOctTreasureRewardAtc_Data[3311108][2]["LogId"] =12001186
tOctTreasureRewardAtc_Data[3311108][2]["DeleteItem"] = {}
tOctTreasureRewardAtc_Data[3311108][2]["DeleteItem"][1]={}
tOctTreasureRewardAtc_Data[3311108][2]["DeleteItem"][1]["Id"]=3311108
tOctTreasureRewardAtc_Data[3311108][2]["RewardItem"] = {}
tOctTreasureRewardAtc_Data[3311108][2]["RewardItem"][1]={}
tOctTreasureRewardAtc_Data[3311108][2]["RewardItem"][1]["Id"]= 300000
tOctTreasureRewardAtc_Data[3311108][2]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 16750080 255 150 0 4"
--雪脂马
tOctTreasureRewardAtc_Data[3311108][3]={}
tOctTreasureRewardAtc_Data[3311108][3]["LogId"] =12001186
tOctTreasureRewardAtc_Data[3311108][3]["DeleteItem"] = {}
tOctTreasureRewardAtc_Data[3311108][3]["DeleteItem"][1]={}
tOctTreasureRewardAtc_Data[3311108][3]["DeleteItem"][1]["Id"]=3311108
tOctTreasureRewardAtc_Data[3311108][3]["RewardItem"] = {}
tOctTreasureRewardAtc_Data[3311108][3]["RewardItem"][1]={}
tOctTreasureRewardAtc_Data[3311108][3]["RewardItem"][1]["Id"]= 300000
tOctTreasureRewardAtc_Data[3311108][3]["RewardItem"][1]["Attr"] = "0 0 3 0 0 0 65430 0 255 0 4 0 0 0 0 0 0 150"

--AzureLotus坐骑外套包
tOctTreasureRewardAtc_Data[3311109]={}
tOctTreasureRewardAtc_Data[3311109]["LogId"] =12001186
tOctTreasureRewardAtc_Data[3311109]["DeleteItem"] = {}
tOctTreasureRewardAtc_Data[3311109]["DeleteItem"][1]={}
tOctTreasureRewardAtc_Data[3311109]["DeleteItem"][1]["Id"]=3311109
tOctTreasureRewardAtc_Data[3311109]["RewardItem"] = {}
tOctTreasureRewardAtc_Data[3311109]["RewardItem"][1]={}
tOctTreasureRewardAtc_Data[3311109]["RewardItem"][1]["Id"]= 200570
tOctTreasureRewardAtc_Data[3311109]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

--SolarLotus坐骑外套包
tOctTreasureRewardAtc_Data[3311110]={}
tOctTreasureRewardAtc_Data[3311110]["LogId"] =12001186
tOctTreasureRewardAtc_Data[3311110]["DeleteItem"] = {}
tOctTreasureRewardAtc_Data[3311110]["DeleteItem"][1]={}
tOctTreasureRewardAtc_Data[3311110]["DeleteItem"][1]["Id"]=3311110
tOctTreasureRewardAtc_Data[3311110]["RewardItem"] = {}
tOctTreasureRewardAtc_Data[3311110]["RewardItem"][1]={}
tOctTreasureRewardAtc_Data[3311110]["RewardItem"][1]["Id"]= 200571
tOctTreasureRewardAtc_Data[3311110]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

--GoldCloth(Saint)时装外套包
tOctTreasureRewardAtc_Data[3311111]={}
tOctTreasureRewardAtc_Data[3311111]["LogId"] =12001186
tOctTreasureRewardAtc_Data[3311111]["DeleteItem"] = {}
tOctTreasureRewardAtc_Data[3311111]["DeleteItem"][1]={}
tOctTreasureRewardAtc_Data[3311111]["DeleteItem"][1]["Id"]=3311111
tOctTreasureRewardAtc_Data[3311111]["RewardItem"] = {}
tOctTreasureRewardAtc_Data[3311111]["RewardItem"][1]={}
tOctTreasureRewardAtc_Data[3311111]["RewardItem"][1]["Id"]= 188915
tOctTreasureRewardAtc_Data[3311111]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

--SpringShirt时装外套包
tOctTreasureRewardAtc_Data[3311112]={}
tOctTreasureRewardAtc_Data[3311112]["LogId"] =12001186
tOctTreasureRewardAtc_Data[3311112]["DeleteItem"] = {}
tOctTreasureRewardAtc_Data[3311112]["DeleteItem"][1]={}
tOctTreasureRewardAtc_Data[3311112]["DeleteItem"][1]["Id"]=3311112
tOctTreasureRewardAtc_Data[3311112]["RewardItem"] = {}
tOctTreasureRewardAtc_Data[3311112]["RewardItem"][1]={}
tOctTreasureRewardAtc_Data[3311112]["RewardItem"][1]["Id"]= 192435
tOctTreasureRewardAtc_Data[3311112]["RewardItem"][1]["Attr"] = "0 1"

--2颗璀璨星陨石礼包
tOctTreasureRewardAtc_Data[3311113]={}
tOctTreasureRewardAtc_Data[3311113]["LogId"] =12001186
tOctTreasureRewardAtc_Data[3311113]["DeleteItem"] = {}
tOctTreasureRewardAtc_Data[3311113]["DeleteItem"][1]={}
tOctTreasureRewardAtc_Data[3311113]["DeleteItem"][1]["Id"]=3311113
tOctTreasureRewardAtc_Data[3311113]["RewardItem"] = {}
tOctTreasureRewardAtc_Data[3311113]["RewardItem"][1]={}
tOctTreasureRewardAtc_Data[3311113]["RewardItem"][1]["Id"]= 3009003
tOctTreasureRewardAtc_Data[3311113]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"

--2颗金钢坚钻（赠）礼包
tOctTreasureRewardAtc_Data[3311114]={}
tOctTreasureRewardAtc_Data[3311114]["LogId"] =12001186
tOctTreasureRewardAtc_Data[3311114]["DeleteItem"] = {}
tOctTreasureRewardAtc_Data[3311114]["DeleteItem"][1]={}
tOctTreasureRewardAtc_Data[3311114]["DeleteItem"][1]["Id"]=3311114
tOctTreasureRewardAtc_Data[3311114]["RewardItem"] = {}
tOctTreasureRewardAtc_Data[3311114]["RewardItem"][1]={}
tOctTreasureRewardAtc_Data[3311114]["RewardItem"][1]["Id"]= 1200005
tOctTreasureRewardAtc_Data[3311114]["RewardItem"][1]["Attr"] = "0 2 3"
----------------------------------逻辑部分---------------------------------------------
--打开可选马包
function OctTreasureRewardAtc_OpenHorsePack(nItemId,nIndex)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tOctTreasureRewardAtc_Data[nItemId][nIndex])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tOctTreasureRewardAtc_Data[nItemId][nIndex])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tOctTreasureRewardAtc_Text["SystemTips"]["NeedSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tOctTreasureRewardAtc_Data[nItemId][nIndex]) then 
		return 
	end 
end 

--打开其他礼包
function OctTreasureRewardAtc_OpenPack(nItemId)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tOctTreasureRewardAtc_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tOctTreasureRewardAtc_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tOctTreasureRewardAtc_Text["SystemTips"]["NeedSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tOctTreasureRewardAtc_Data[nItemId]) then 
		return 
	end 
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3311109] = tItem[3311109] or {}
tItem[3311109]["Function"] = function(nItemId,sItemName)
	OctTreasureRewardAtc_OpenPack(nItemId)
end
tItem[3311110]=tItem[3311109]
tItem[3311111]=tItem[3311109]
tItem[3311112]=tItem[3311109]
tItem[3311113]=tItem[3311109]
tItem[3311114]=tItem[3311109]

--------物品有对白模板
tItemFace[3311108] = 1784
tItem[3311108] = tItem[3311108] or {}
tItem[3311108]["Text1-1"] = {111}
tItem[3311108]["Text111"] = tOctTreasureRewardAtc_Text[3311108]["Text111"]

tItem[3311108]["tOption1-1"] = {1,2,3,4}
tItem[3311108]["Option1"] = tOctTreasureRewardAtc_Text[3311108]["Option1"]
tItem[3311108]["OptionFunc1"]="OctTreasureRewardAtc_OpenHorsePack</N>3311108</N>1"
tItem[3311108]["Option2"] = tOctTreasureRewardAtc_Text[3311108]["Option2"]
tItem[3311108]["OptionFunc2"]="OctTreasureRewardAtc_OpenHorsePack</N>3311108</N>2"
tItem[3311108]["Option3"] = tOctTreasureRewardAtc_Text[3311108]["Option3"]
tItem[3311108]["OptionFunc3"]="OctTreasureRewardAtc_OpenHorsePack</N>3311108</N>3"
tItem[3311108]["Option4"] = tOctTreasureRewardAtc_Text[3311108]["Option4"]

