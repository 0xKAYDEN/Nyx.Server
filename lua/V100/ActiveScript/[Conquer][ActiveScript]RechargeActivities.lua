------------------------------------------------------------------------------------
--Name：            171013[英文征服][活动脚本]11月感恩月充值活动action制作
--Creator:      杨艳
--Created:     2017/10/13
------------------------------------------------------------------------------------
--任务需求：
-- 3305765 非赠永久神佑-1骑宠可选包：赤霄火云/蓝海苍云	赤霄火云	200613	1	二选一	1%神佑永久非赠
	-- 蓝海苍云	200614	1		1%神佑永久非赠
-- 3305766 非赠永久神佑-1外套可选包：紫音青衫【霞光】/夏威夷阳光【泡泡版】	紫音青衫【霞光】	194875	1	二选一	1%神佑永久非赠
	-- 夏威夷阳光【泡泡版】	189675	1		1%神佑永久非赠

-- 3305762  感恩100天石代金券礼盒  感恩月促销100CP代金券*2	100CP代金券*2	3305977	2	直接发	赠
-- 3305763  感恩月赌博筹码包       感恩月赌博活动专用筹码*75	赌博活动专用筹码*75	 3305685	75	直接发	赠 
-- 3305764  500天石锁妖盒礼包      500天石锁妖盒*2	500天石锁妖盒*2	720671




------------------------------------------------------------------------------------
--命名规范 RechargeActivities_

local tRechargeActivities_
--礼包种类
local tRechargeActivities_GiftType = {}
	-- 3305765 非赠永久神佑-1骑宠可选包 
	tRechargeActivities_GiftType[200613] = {}
	tRechargeActivities_GiftType[200613]["Log"] = "0,0,3305765,1,12000904,2,200613,1"
	tRechargeActivities_GiftType[200613]["DeleteItem"] = {}
	tRechargeActivities_GiftType[200613]["DeleteItem"][1] = {}
	tRechargeActivities_GiftType[200613]["DeleteItem"][1]["Id"] = 3305765
	
	tRechargeActivities_GiftType[200613]["RewardItem"] = {}
	tRechargeActivities_GiftType[200613]["RewardItem"][1] = {}
	tRechargeActivities_GiftType[200613]["RewardItem"][1]["Id"] = 200613
	tRechargeActivities_GiftType[200613]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	
	
	tRechargeActivities_GiftType[200614] = {}
	tRechargeActivities_GiftType[200614]["Log"] = "0,0,3305765,1,12000904,2,200614,1"
	tRechargeActivities_GiftType[200614]["DeleteItem"] = {}
	tRechargeActivities_GiftType[200614]["DeleteItem"][1] = {}
	tRechargeActivities_GiftType[200614]["DeleteItem"][1]["Id"] = 3305765
	
	tRechargeActivities_GiftType[200614]["RewardItem"] = {}
	tRechargeActivities_GiftType[200614]["RewardItem"][1] = {}
	tRechargeActivities_GiftType[200614]["RewardItem"][1]["Id"] = 200614
	tRechargeActivities_GiftType[200614]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	
	-- 3305766 非赠永久神佑-1外套可选包 
	tRechargeActivities_GiftType[194875] = {}
	tRechargeActivities_GiftType[194875]["Log"] = "0,0,3305766,1,12000904,2,194875,1"
	tRechargeActivities_GiftType[194875]["DeleteItem"] = {}
	tRechargeActivities_GiftType[194875]["DeleteItem"][1] = {}
	tRechargeActivities_GiftType[194875]["DeleteItem"][1]["Id"] = 3305766
	
	tRechargeActivities_GiftType[194875]["RewardItem"] = {}
	tRechargeActivities_GiftType[194875]["RewardItem"][1] = {}
	tRechargeActivities_GiftType[194875]["RewardItem"][1]["Id"] = 194875
	tRechargeActivities_GiftType[194875]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	
	
	tRechargeActivities_GiftType[189675] = {}
	tRechargeActivities_GiftType[189675]["Log"] = "0,0,3305766,1,12000904,2,189675,1"
	tRechargeActivities_GiftType[189675]["DeleteItem"] = {}
	tRechargeActivities_GiftType[189675]["DeleteItem"][1] = {}
	tRechargeActivities_GiftType[189675]["DeleteItem"][1]["Id"] = 3305766
	
	tRechargeActivities_GiftType[189675]["RewardItem"] = {}
	tRechargeActivities_GiftType[189675]["RewardItem"][1] = {}
	tRechargeActivities_GiftType[189675]["RewardItem"][1]["Id"] = 189675
	tRechargeActivities_GiftType[189675]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

	--3305764  500天石锁妖盒礼包
	tRechargeActivities_GiftType[3305764] = {}
	tRechargeActivities_GiftType[3305764]["Log"] = "0,0,3305764,1,12000904,2,720671,2"
	tRechargeActivities_GiftType[3305764]["DeleteItem"] = {}
	tRechargeActivities_GiftType[3305764]["DeleteItem"][1] = {}
	tRechargeActivities_GiftType[3305764]["DeleteItem"][1]["Id"] = 3305764
	
	tRechargeActivities_GiftType[3305764]["RewardItem"] = {}
	tRechargeActivities_GiftType[3305764]["RewardItem"][1] = {}
	tRechargeActivities_GiftType[3305764]["RewardItem"][1]["Id"] = 720671
	tRechargeActivities_GiftType[3305764]["RewardItem"][1]["Attr"] = "0 2 0"
	
	
	--3305762  感恩100天石代金券礼盒 
	tRechargeActivities_GiftType[3305762] = {}
	tRechargeActivities_GiftType[3305762]["Log"] = "0,0,3305762,1,12000904,2,3305977,2"
	tRechargeActivities_GiftType[3305762]["DeleteItem"] = {}
	tRechargeActivities_GiftType[3305762]["DeleteItem"][1] = {}
	tRechargeActivities_GiftType[3305762]["DeleteItem"][1]["Id"] = 3305762
	
	tRechargeActivities_GiftType[3305762]["RewardItem"] = {}
	tRechargeActivities_GiftType[3305762]["RewardItem"][1] = {}
	tRechargeActivities_GiftType[3305762]["RewardItem"][1]["Id"] = 3305977
	tRechargeActivities_GiftType[3305762]["RewardItem"][1]["Attr"] = "0 2 0"
	
	
	--3305763  感恩月赌博筹码包 
	tRechargeActivities_GiftType[3305763] = {}
	tRechargeActivities_GiftType[3305763]["Log"] = "0,0,3305763,1,12000904,2,3303926,75"
	tRechargeActivities_GiftType[3305763]["DeleteItem"] = {}
	tRechargeActivities_GiftType[3305763]["DeleteItem"][1] = {}
	tRechargeActivities_GiftType[3305763]["DeleteItem"][1]["Id"] = 3305763
	
	tRechargeActivities_GiftType[3305763]["RewardItem"] = {}
	tRechargeActivities_GiftType[3305763]["RewardItem"][1] = {}
	tRechargeActivities_GiftType[3305763]["RewardItem"][1]["Id"] = 3303926  
	tRechargeActivities_GiftType[3305763]["RewardItem"][1]["Attr"] = "0 75 0"


------------------------------------------逻辑部分------------------------------------------
function RechargeActivities_Option(nItemId)
	RewardTemplate_UseItem(tRechargeActivities_GiftType[nItemId])
end 


------------------------------------------物品部分------------------------------------------
-- 使用 3305765  非赠永久神佑-1骑宠可选包      赤霄火云	200613/蓝海苍云	200614
tItemFace[3305765] = 862
tItem[3305765] = tItem[3305765] or {}
tItem[3305765]["Text1-1"] = {111}
tItem[3305765]["Text111"] = tRechargeActivities_Text[3305765]["Text111"]
tItem[3305765]["tOption1-1"] = {111, 112,113}
tItem[3305765]["Option111"] = tRechargeActivities_Text[3305765]["Option111"]
tItem[3305765]["OptionFunc111"] = "RechargeActivities_Option</N>200613"
tItem[3305765]["Option112"] = tRechargeActivities_Text[3305765]["Option112"]
tItem[3305765]["OptionFunc112"] = "RechargeActivities_Option</N>200614"
tItem[3305765]["Option113"] = tRechargeActivities_Text[3305765]["Option113"]

--使用 3305766  非赠永久神佑-1外套可选包       紫音青衫【霞光】	194875 /夏威夷阳光【泡泡版】	189675
tItemFace[3305766] = 863
tItem[3305766] = tItem[3305766] or {}
tItem[3305766]["Text1-1"] = {111}
tItem[3305766]["Text111"] = tRechargeActivities_Text[3305766]["Text111"]
tItem[3305766]["tOption1-1"] = {111, 112,113}
tItem[3305766]["Option111"] = tRechargeActivities_Text[3305766]["Option111"]
tItem[3305766]["OptionFunc111"] = "RechargeActivities_Option</N>194875"
tItem[3305766]["Option112"] = tRechargeActivities_Text[3305766]["Option112"]
tItem[3305766]["OptionFunc112"] = "RechargeActivities_Option</N>189675"
tItem[3305766]["Option113"] = tRechargeActivities_Text[3305766]["Option113"]

--3305764  500天石锁妖盒礼包
tItem[3305764] = tItem[3305764] or {}
tItem[3305764]["Function"] = function(nItemId)
	RewardTemplate_UseItemAndMsg(tRechargeActivities_GiftType[nItemId])
end	

--3305762  感恩100天石代金券礼盒 
tItem[3305762] = tItem[3305764] 
--3305763  感恩月赌博筹码包
tItem[3305763] = tItem[3305764] 


