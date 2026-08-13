----------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]7月暑期促销活动.lua
--Purpose:	两个促销npc,大礼包和锁妖盒
--Creator: 	黄啸
--Created:	2017/06/12
----------------------------------------------------------------------------
--40322
-- 命名前缀
--tJulyPromotionActivity_
--
--12000494
local tJulyPromotionActivity_Cont = {}
	tJulyPromotionActivity_Cont["ActivityTime"] = "2017-07-13 00:00 2017-07-26 23:59"
	tJulyPromotionActivity_Cont["BeforeActivity"] = "2017-01-1 00:00 2017-07-12 23:59"
	tJulyPromotionActivity_Cont["AfterActivity"] = "2017-07-27 00:00 2017-12-31 23:59"



--模板新的礼包打开获得物品
local tJulyPromotionActivity_Award = {}
-- 欢乐小固化石大礼包（赠）
	tJulyPromotionActivity_Award[3303634] = {}
	tJulyPromotionActivity_Award[3303634]["RewardItem"] = {}
	tJulyPromotionActivity_Award[3303634]["RewardItem"][1] = {}
	tJulyPromotionActivity_Award[3303634]["RewardItem"][1]["Id"] = 723694
	tJulyPromotionActivity_Award[3303634]["RewardItem"][1]["Attr"] = "0 3 "
	tJulyPromotionActivity_Award[3303634]["LogId"] = 12000547
	tJulyPromotionActivity_Award[3303634]["DeleteItem"]={}
	tJulyPromotionActivity_Award[3303634]["DeleteItem"][1]={}
	tJulyPromotionActivity_Award[3303634]["DeleteItem"][1]["Id"]=3303634
-- 欢乐强炼丹大礼包（赠）
	tJulyPromotionActivity_Award[3303635] = {}
	tJulyPromotionActivity_Award[3303635]["RewardItem"] = {}
	tJulyPromotionActivity_Award[3303635]["RewardItem"][1] = {}
	tJulyPromotionActivity_Award[3303635]["RewardItem"][1]["Id"] = 3003124
	tJulyPromotionActivity_Award[3303635]["RewardItem"][1]["Attr"] = "0 300 "
	tJulyPromotionActivity_Award[3303635]["LogId"] = 12000547
	tJulyPromotionActivity_Award[3303635]["DeleteItem"]={}
	tJulyPromotionActivity_Award[3303635]["DeleteItem"][1]={}
	tJulyPromotionActivity_Award[3303635]["DeleteItem"][1]["Id"]=3303635
--  欢乐抽奖券大礼包（赠）
	tJulyPromotionActivity_Award[3303636] = {}
	tJulyPromotionActivity_Award[3303636]["RewardItem"] = {}
	tJulyPromotionActivity_Award[3303636]["RewardItem"][1] = {}
	tJulyPromotionActivity_Award[3303636]["RewardItem"][1]["Id"] = 711504
	tJulyPromotionActivity_Award[3303636]["RewardItem"][1]["Attr"] = "0 300 "
	tJulyPromotionActivity_Award[3303636]["RewardItem"][2] = {}
	tJulyPromotionActivity_Award[3303636]["RewardItem"][2]["Id"] = 3303630
	tJulyPromotionActivity_Award[3303636]["RewardItem"][2]["Attr"] = "0 1 "
	tJulyPromotionActivity_Award[3303636]["LogId"] = 12000547
	tJulyPromotionActivity_Award[3303636]["DeleteItem"]={}
	tJulyPromotionActivity_Award[3303636]["DeleteItem"][1]={}
	tJulyPromotionActivity_Award[3303636]["DeleteItem"][1]["Id"]=3303636
--  欢乐赤练石大礼包（赠）
	tJulyPromotionActivity_Award[3303637] = {}
	tJulyPromotionActivity_Award[3303637]["RewardItem"] = {}
	tJulyPromotionActivity_Award[3303637]["RewardItem"][1] = {}
	tJulyPromotionActivity_Award[3303637]["RewardItem"][1]["Id"] = 730008
	tJulyPromotionActivity_Award[3303637]["RewardItem"][1]["Attr"] = "0 1 "
	tJulyPromotionActivity_Award[3303637]["RewardItem"][2] = {}
	tJulyPromotionActivity_Award[3303637]["RewardItem"][2]["Id"] = 3303630
	tJulyPromotionActivity_Award[3303637]["RewardItem"][2]["Attr"] = "0 2 "
	tJulyPromotionActivity_Award[3303637]["LogId"] = 12000547
	tJulyPromotionActivity_Award[3303637]["DeleteItem"]={}
	tJulyPromotionActivity_Award[3303637]["DeleteItem"][1]={}
	tJulyPromotionActivity_Award[3303637]["DeleteItem"][1]["Id"]=3303637
	
-- 欢乐回气丹大礼包（赠）
	tJulyPromotionActivity_Award[3303638] = {}
	tJulyPromotionActivity_Award[3303638]["RewardItem"] = {}
	tJulyPromotionActivity_Award[3303638]["RewardItem"][1] = {}
	tJulyPromotionActivity_Award[3303638]["RewardItem"][1]["Id"] = 3008200
	tJulyPromotionActivity_Award[3303638]["RewardItem"][1]["Attr"] = "0 5 "
	tJulyPromotionActivity_Award[3303638]["RewardItem"][2] = {}
	tJulyPromotionActivity_Award[3303638]["RewardItem"][2]["Id"] = 3303630
	tJulyPromotionActivity_Award[3303638]["RewardItem"][2]["Attr"] = "0 1 "
	tJulyPromotionActivity_Award[3303638]["LogId"] = 12000547
	tJulyPromotionActivity_Award[3303638]["DeleteItem"]={}
	tJulyPromotionActivity_Award[3303638]["DeleteItem"][1]={}
	tJulyPromotionActivity_Award[3303638]["DeleteItem"][1]["Id"]=3303638
	
-- 欢乐大爆丹大礼包（赠）
	tJulyPromotionActivity_Award[3303639] = {}
	tJulyPromotionActivity_Award[3303639]["RewardItem"] = {}
	tJulyPromotionActivity_Award[3303639]["RewardItem"][1] = {}
	tJulyPromotionActivity_Award[3303639]["RewardItem"][1]["Id"] = 3003126
	tJulyPromotionActivity_Award[3303639]["RewardItem"][1]["Attr"] = "0 100 "
	tJulyPromotionActivity_Award[3303639]["RewardItem"][2] = {}
	tJulyPromotionActivity_Award[3303639]["RewardItem"][2]["Id"] = 3303630
	tJulyPromotionActivity_Award[3303639]["RewardItem"][2]["Attr"] = "0 1 "
	tJulyPromotionActivity_Award[3303639]["LogId"] = 12000547
	tJulyPromotionActivity_Award[3303639]["DeleteItem"]={}
	tJulyPromotionActivity_Award[3303639]["DeleteItem"][1]={}
	tJulyPromotionActivity_Award[3303639]["DeleteItem"][1]["Id"]=3303639
	
-- 欢乐固化石大礼包（赠）
	tJulyPromotionActivity_Award[3303640] = {}
	tJulyPromotionActivity_Award[3303640]["RewardItem"] = {}
	tJulyPromotionActivity_Award[3303640]["RewardItem"][1] = {}
	tJulyPromotionActivity_Award[3303640]["RewardItem"][1]["Id"] = 723695
	tJulyPromotionActivity_Award[3303640]["RewardItem"][1]["Attr"] = "0 1 "
	tJulyPromotionActivity_Award[3303640]["RewardItem"][2] = {}
	tJulyPromotionActivity_Award[3303640]["RewardItem"][2]["Id"] = 3303630
	tJulyPromotionActivity_Award[3303640]["RewardItem"][2]["Attr"] = "0 1 "
	tJulyPromotionActivity_Award[3303640]["LogId"] = 12000547
	tJulyPromotionActivity_Award[3303640]["DeleteItem"]={}
	tJulyPromotionActivity_Award[3303640]["DeleteItem"][1]={}
	tJulyPromotionActivity_Award[3303640]["DeleteItem"][1]["Id"]=3303640
	
-- 欢乐龙珠卷大礼包（赠）
	tJulyPromotionActivity_Award[3303641] = {}
	tJulyPromotionActivity_Award[3303641]["RewardItem"] = {}
	tJulyPromotionActivity_Award[3303641]["RewardItem"][1] = {}
	tJulyPromotionActivity_Award[3303641]["RewardItem"][1]["Id"] = 720028
	tJulyPromotionActivity_Award[3303641]["RewardItem"][1]["Attr"] = "0 1 "
	tJulyPromotionActivity_Award[3303641]["LogId"] = 12000547
	tJulyPromotionActivity_Award[3303641]["DeleteItem"]={}
	tJulyPromotionActivity_Award[3303641]["DeleteItem"][1]={}
	tJulyPromotionActivity_Award[3303641]["DeleteItem"][1]["Id"]=3303641
	
-- 欢乐骑宠大礼包（赠）
	tJulyPromotionActivity_Award[3303642] = {}
	tJulyPromotionActivity_Award[3303642]["RewardItem"] = {}
	tJulyPromotionActivity_Award[3303642]["RewardItem"][1] = {}
	tJulyPromotionActivity_Award[3303642]["RewardItem"][1]["Id"] = 729365
	tJulyPromotionActivity_Award[3303642]["RewardItem"][1]["Attr"] = "0 1 "
	tJulyPromotionActivity_Award[3303642]["RewardItem"][2] = {}
	tJulyPromotionActivity_Award[3303642]["RewardItem"][2]["Id"] = 3303630
	tJulyPromotionActivity_Award[3303642]["RewardItem"][2]["Attr"] = "0 2 "
	tJulyPromotionActivity_Award[3303642]["LogId"] = 12000547
	tJulyPromotionActivity_Award[3303642]["DeleteItem"]={}
	tJulyPromotionActivity_Award[3303642]["DeleteItem"][1]={}
	tJulyPromotionActivity_Award[3303642]["DeleteItem"][1]["Id"]=3303642
	
-- 欢乐开洞大礼包（赠）
	tJulyPromotionActivity_Award[3303643] = {}
	tJulyPromotionActivity_Award[3303643]["RewardItem"] = {}
	tJulyPromotionActivity_Award[3303643]["RewardItem"][1] = {}
	tJulyPromotionActivity_Award[3303643]["RewardItem"][1]["Id"] = 1200005
	tJulyPromotionActivity_Award[3303643]["RewardItem"][1]["Attr"] = "0 2 "
	tJulyPromotionActivity_Award[3303643]["RewardItem"][2] = {}
	tJulyPromotionActivity_Award[3303643]["RewardItem"][2]["Id"] = 3303630
	tJulyPromotionActivity_Award[3303643]["RewardItem"][2]["Attr"] = "0 1 "
	tJulyPromotionActivity_Award[3303643]["LogId"] = 12000547
	tJulyPromotionActivity_Award[3303643]["DeleteItem"]={}
	tJulyPromotionActivity_Award[3303643]["DeleteItem"][1]={}
	tJulyPromotionActivity_Award[3303643]["DeleteItem"][1]["Id"]=3303643
	
-- 欢乐法宝宝石大礼包（赠）
	tJulyPromotionActivity_Award[3303644] = {}
	tJulyPromotionActivity_Award[3303644]["RewardItem"] = {}
	tJulyPromotionActivity_Award[3303644]["RewardItem"][1] = {}
	tJulyPromotionActivity_Award[3303644]["RewardItem"][1]["Id"] = 204009
	tJulyPromotionActivity_Award[3303644]["RewardItem"][1]["Attr"] = "0 1 "
	tJulyPromotionActivity_Award[3303644]["RewardItem"][2] = {}
	tJulyPromotionActivity_Award[3303644]["RewardItem"][2]["Id"] = 3303694
	tJulyPromotionActivity_Award[3303644]["RewardItem"][2]["Attr"] = "0 1 "
	tJulyPromotionActivity_Award[3303644]["LogId"] = 12000547
	tJulyPromotionActivity_Award[3303644]["DeleteItem"]={}
	tJulyPromotionActivity_Award[3303644]["DeleteItem"][1]={}
	tJulyPromotionActivity_Award[3303644]["DeleteItem"][1]["Id"]=3303644
	
-- 欢乐暑期宝石可选包打开以后获得的奖励
local tJulyPromotionActivity_SmallAward = {}
	tJulyPromotionActivity_SmallAward[3303694] = {}

--天怒
	tJulyPromotionActivity_SmallAward[3303694][1] = {}
	tJulyPromotionActivity_SmallAward[3303694][1]["RewardItem"] = {}
	tJulyPromotionActivity_SmallAward[3303694][1]["RewardItem"][1] = {}
	tJulyPromotionActivity_SmallAward[3303694][1]["RewardItem"][1]["Id"] = 700103
	tJulyPromotionActivity_SmallAward[3303694][1]["RewardItem"][1]["Attr"] = "0 1 "
	tJulyPromotionActivity_SmallAward[3303694][1]["LogId"] = 12000547
	tJulyPromotionActivity_SmallAward[3303694][1]["DeleteItem"]={}
	tJulyPromotionActivity_SmallAward[3303694][1]["DeleteItem"][1]={}
	tJulyPromotionActivity_SmallAward[3303694][1]["DeleteItem"][1]["Id"]=3303694

--地灵	
	tJulyPromotionActivity_SmallAward[3303694][2] = {}
	tJulyPromotionActivity_SmallAward[3303694][2]["RewardItem"] = {}
	tJulyPromotionActivity_SmallAward[3303694][2]["RewardItem"][1] = {}
	tJulyPromotionActivity_SmallAward[3303694][2]["RewardItem"][1]["Id"] = 700123
	tJulyPromotionActivity_SmallAward[3303694][2]["RewardItem"][1]["Attr"] = "0 1 "
	tJulyPromotionActivity_SmallAward[3303694][2]["LogId"] = 12000547
	tJulyPromotionActivity_SmallAward[3303694][2]["DeleteItem"]={}
	tJulyPromotionActivity_SmallAward[3303694][2]["DeleteItem"][1]={}
	tJulyPromotionActivity_SmallAward[3303694][2]["DeleteItem"][1]["Id"]=3303694

--一般打开礼包
function JulyPromotionActivity_OpenStoneThree(nItemId)

	if not Item_ChkItem(nItemId) then
		return false
	end
	RewardTemplate_UseItemAndMsg(tJulyPromotionActivity_Award[nItemId])
end

--打开欢乐暑期宝石可选包的两个选项
function JulyPromotionActivity_OpenStoneOption(nItemId,nNum)
	if not Item_ChkItem(nItemId) then
		return false
	end
	RewardTemplate_UseItemAndMsg(tJulyPromotionActivity_SmallAward[nItemId][nNum])
end

--打开天石商店
function JulyPromotionActivity_openStoneShop(nNpcId)
	User_OpenDialog(0,nNpcId,0)
end

-------------------------------------------------活动npc-------------------------------
--礼包促销大使

tNpcFace[4883]=115
tNpcGossip[20867] = tNpcGossip[20867] or DefaultNpc:new{}
tNpcGossip[20867]["OptionHidden"] = 1

--调用TableDialogIndex中的模板内容
tNpcGossip[20867]["DialogueText"] = tJulyPromotionActivity_Text[20867]

--活动还未开始
tNpcGossip[20867]["Text1-1"] = {111,112}
tNpcGossip[20867]["tOption1-1"] = {2}
tNpcGossip[20867]["ChkFunc1-1"] = function()
	if not Sys_ChkFullTime(tJulyPromotionActivity_Cont["BeforeActivity"]) then
		return false
	else
		return true
	end
end

--活动正在进行中
tNpcGossip[20867]["Text1-2"] = {121,122}
tNpcGossip[20867]["tOption1-2"] = {1}
tNpcGossip[20867]["ChkFunc1-2"] = function()
	if not Sys_ChkFullTime(tJulyPromotionActivity_Cont["ActivityTime"]) then
		return false
	else
		return true
	end
end

--活动结束
tNpcGossip[20867]["Text1-3"] = {131,132}
tNpcGossip[20867]["tOption1-3"] = {3}

--选项
tNpcGossip[20867]["OptionFunc1"]="JulyPromotionActivity_openStoneShop</N>20867"

--锁妖盒促销大使
tNpcFace[4884]=156
tNpcGossip[20868] = tNpcGossip[20868] or DefaultNpc:new{}
tNpcGossip[20868]["OptionHidden"] = 1

--调用TableDialogIndex中的模板内容
tNpcGossip[20868]["DialogueText"] = tJulyPromotionActivity_Text[20868]

--活动还未开始
tNpcGossip[20868]["Text1-1"] = {111,112}
tNpcGossip[20868]["tOption1-1"] = {2}
tNpcGossip[20868]["ChkFunc1-1"] = function()
	if not Sys_ChkFullTime(tJulyPromotionActivity_Cont["BeforeActivity"]) then
		return 
		else
		return true
	end
end

--活动正在进行中
tNpcGossip[20868]["Text1-2"] = {121,122}
tNpcGossip[20868]["tOption1-2"] = {1}
tNpcGossip[20868]["ChkFunc1-2"] = function()
	if not Sys_ChkFullTime(tJulyPromotionActivity_Cont["ActivityTime"]) then
		return 
		else
		return true
	end
end
--选项
tNpcGossip[20868]["OptionFunc1"]="JulyPromotionActivity_openStoneShop</N>20868"

--活动结束
tNpcGossip[20868]["Text1-3"] = {131,132}
tNpcGossip[20868]["tOption1-3"] = {3}

-------------------------------------------------物品配置-----------
-- 欢乐小固化石大礼包（赠）  3303634
tItem[3303634] = tItem[3303634] or {}
tItem[3303634]["Function"] = function (nItemId,sItemName)
	JulyPromotionActivity_OpenStoneThree(nItemId)
end

-- 欢乐强炼丹大礼包（赠） 3303635
tItem[3303635] = tItem[3303635] or {}
tItem[3303635]["Function"] = function (nItemId,sItemName)
	JulyPromotionActivity_OpenStoneThree(nItemId)
end

-- 欢乐抽奖券大礼包（赠） 3303636
tItem[3303636] = tItem[3303636] or {}
tItem[3303636]["Function"] = function (nItemId,sItemName)
	JulyPromotionActivity_OpenStoneThree(nItemId)
end

-- 欢乐赤练石大礼包（赠） 3303637
tItem[3303637] = tItem[3303637] or {}
tItem[3303637]["Function"] = function (nItemId,sItemName)
	JulyPromotionActivity_OpenStoneThree(nItemId)
end

-- 欢乐回气丹大礼包（赠） 3303638
tItem[3303638] = tItem[3303638] or {}
tItem[3303638]["Function"] = function (nItemId,sItemName)
	JulyPromotionActivity_OpenStoneThree(nItemId)
end

-- 欢乐大爆丹大礼包（赠） 3303639
tItem[3303639] = tItem[3303639] or {}
tItem[3303639]["Function"] = function (nItemId,sItemName)
	JulyPromotionActivity_OpenStoneThree(nItemId)
end

-- 欢乐固化石大礼包（赠） 3303640
tItem[3303640] = tItem[3303640] or {}
tItem[3303640]["Function"] = function (nItemId,sItemName)
	JulyPromotionActivity_OpenStoneThree(nItemId)
end

-- 欢乐龙珠卷大礼包（赠） 3303641
tItem[3303641] = tItem[3303641] or {}
tItem[3303641]["Function"] = function (nItemId,sItemName)
	JulyPromotionActivity_OpenStoneThree(nItemId)
end

-- 欢乐骑宠大礼包（赠） 3303642
tItem[3303642] = tItem[3303642] or {}
tItem[3303642]["Function"] = function (nItemId,sItemName)
	JulyPromotionActivity_OpenStoneThree(nItemId)
end

-- 欢乐开洞大礼包（赠） 3303643
tItem[3303643] = tItem[3303643] or {}
tItem[3303643]["Function"] = function (nItemId,sItemName)
	JulyPromotionActivity_OpenStoneThree(nItemId)
end

-- 欢乐开洞大礼包（赠） 3303644
tItem[3303644] = tItem[3303644] or {}
tItem[3303644]["Function"] = function (nItemId,sItemName)
	JulyPromotionActivity_OpenStoneThree(nItemId)
end

-- 欢乐暑期宝石可选包
tItem[3303694] = tItem[3303694] or {}

tItem[3303694]["DialogueText"] = tJulyPromotionActivity_Text[3303694]
tItem[3303694]["Text1-1"]={111}
tItem[3303694]["tOption1-1"] = {1,2}
tItem[3303694]["OptionFunc1"]="JulyPromotionActivity_OpenStoneOption</N>3303694</N>1"
tItem[3303694]["OptionFunc2"]="JulyPromotionActivity_OpenStoneOption</N>3303694</N>2"
