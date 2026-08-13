------------------------------------------------------------------------------------
--Name:		180614[英文征服][活动脚本]聚宝盆活动复用(7.5-7.12)
--Purpose:	聚宝盆活动复用
--Creator: 	傅伟龙
--Created:	2018/06/14
------------------------------------------------------------------------------------
-- 前缀TreasureBowlAct_
local tTreasureBowlAct_Cont = {}
tTreasureBowlAct_Cont["ActTime"] = tActivityTime["TreasureBowlAct"]["ActTime"]
--
local tTreasureBowlAct_RewandItem ={}
	tTreasureBowlAct_RewandItem[3006111]={}
	tTreasureBowlAct_RewandItem[3006111][1]={}
	tTreasureBowlAct_RewandItem[3006111][1]["EmoneyCost"] = 2000
	tTreasureBowlAct_RewandItem[3006111][1]["EmoneyLog"] = "999	8869	2000	2000	1	"
	tTreasureBowlAct_RewandItem[3006111][1]["DeleteItem"] = {}
	tTreasureBowlAct_RewandItem[3006111][1]["DeleteItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006111][1]["DeleteItem"][1]["Id"] = 3006111
	tTreasureBowlAct_RewandItem[3006111][1]["RewardItem"] = {}
	tTreasureBowlAct_RewandItem[3006111][1]["RewardItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006111][1]["RewardItem"][1]["Id"] = 3006112
	tTreasureBowlAct_RewandItem[3006111][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureBowlAct_RewandItem[3006111][1]["RewardEMoneyMono"] = {}
	tTreasureBowlAct_RewandItem[3006111][1]["RewardEMoneyMono"]["Value"] = 12000
	tTreasureBowlAct_RewandItem[3006111][1]["Log"] = "0,0,3006111,1,12000057,2,3[3006112],12000[1]"
	tTreasureBowlAct_RewandItem[3006111][1]["RewardEffect"] = {}
	tTreasureBowlAct_RewandItem[3006111][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tTreasureBowlAct_RewandItem[3006112]={}
	tTreasureBowlAct_RewandItem[3006112][1]={}
	tTreasureBowlAct_RewandItem[3006112][1]["EmoneyCost"] = 2000
	tTreasureBowlAct_RewandItem[3006112][1]["EmoneyLog"] = "999	8869	2000	2000	1	"
	tTreasureBowlAct_RewandItem[3006112][1]["DeleteItem"] = {}
	tTreasureBowlAct_RewandItem[3006112][1]["DeleteItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006112][1]["DeleteItem"][1]["Id"] = 3006112
	tTreasureBowlAct_RewandItem[3006112][1]["RewardItem"] = {}
	tTreasureBowlAct_RewandItem[3006112][1]["RewardItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006112][1]["RewardItem"][1]["Id"] = 3006113
	tTreasureBowlAct_RewandItem[3006112][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureBowlAct_RewandItem[3006112][1]["RewardEMoneyMono"] = {}
	tTreasureBowlAct_RewandItem[3006112][1]["RewardEMoneyMono"]["Value"] = 12000
	tTreasureBowlAct_RewandItem[3006112][1]["Log"] = "0,0,3006112,1,12000057,2,3[3006113],12000[2]"
	tTreasureBowlAct_RewandItem[3006112][1]["RewardEffect"] = {}
	tTreasureBowlAct_RewandItem[3006112][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	tTreasureBowlAct_RewandItem[3006113]={}
	tTreasureBowlAct_RewandItem[3006113][1]={}
	tTreasureBowlAct_RewandItem[3006113][1]["EmoneyCost"] = 2000
	tTreasureBowlAct_RewandItem[3006113][1]["EmoneyLog"] = "999	8869	2000	2000	1	"
	tTreasureBowlAct_RewandItem[3006113][1]["DeleteItem"] = {}
	tTreasureBowlAct_RewandItem[3006113][1]["DeleteItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006113][1]["DeleteItem"][1]["Id"] = 3006113
	tTreasureBowlAct_RewandItem[3006113][1]["RewardEMoneyMono"] = {}
	tTreasureBowlAct_RewandItem[3006113][1]["RewardEMoneyMono"]["Value"] = 12000
	tTreasureBowlAct_RewandItem[3006113][1]["Log"] = "0,0,3006113,1,12000057,2,3,12000[3]"
	tTreasureBowlAct_RewandItem[3006113][1]["RewardEffect"] = {}
	tTreasureBowlAct_RewandItem[3006113][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--
	tTreasureBowlAct_RewandItem[3006114]={}
	tTreasureBowlAct_RewandItem[3006114][1]={}
	tTreasureBowlAct_RewandItem[3006114][1]["EmoneyCost"] = 3000
	tTreasureBowlAct_RewandItem[3006114][1]["EmoneyLog"] = "999	8870	3000	3000	1	"
	tTreasureBowlAct_RewandItem[3006114][1]["DeleteItem"] = {}
	tTreasureBowlAct_RewandItem[3006114][1]["DeleteItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006114][1]["DeleteItem"][1]["Id"] = 3006114
	tTreasureBowlAct_RewandItem[3006114][1]["RewardItem"] = {}
	tTreasureBowlAct_RewandItem[3006114][1]["RewardItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006114][1]["RewardItem"][1]["Id"] = 3006115
	tTreasureBowlAct_RewandItem[3006114][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureBowlAct_RewandItem[3006114][1]["RewardEMoneyMono"] = {}
	tTreasureBowlAct_RewandItem[3006114][1]["RewardEMoneyMono"]["Value"] = 21000
	tTreasureBowlAct_RewandItem[3006114][1]["Log"] = "0,0,3006114,1,12000057,2,3[3006115],21000[1]"
	tTreasureBowlAct_RewandItem[3006114][1]["RewardEffect"] = {}
	tTreasureBowlAct_RewandItem[3006114][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tTreasureBowlAct_RewandItem[3006115]={}
	tTreasureBowlAct_RewandItem[3006115][1]={}
	tTreasureBowlAct_RewandItem[3006115][1]["EmoneyCost"] = 3000
	tTreasureBowlAct_RewandItem[3006115][1]["EmoneyLog"] = "999	8870	3000	3000	1	"
	tTreasureBowlAct_RewandItem[3006115][1]["DeleteItem"] = {}
	tTreasureBowlAct_RewandItem[3006115][1]["DeleteItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006115][1]["DeleteItem"][1]["Id"] = 3006115
	tTreasureBowlAct_RewandItem[3006115][1]["RewardItem"] = {}
	tTreasureBowlAct_RewandItem[3006115][1]["RewardItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006115][1]["RewardItem"][1]["Id"] = 3006116
	tTreasureBowlAct_RewandItem[3006115][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureBowlAct_RewandItem[3006115][1]["RewardEMoneyMono"] = {}
	tTreasureBowlAct_RewandItem[3006115][1]["RewardEMoneyMono"]["Value"] = 21000
	tTreasureBowlAct_RewandItem[3006115][1]["Log"] = "0,0,3006115,1,12000057,2,3[3006116],21000[2]"
	tTreasureBowlAct_RewandItem[3006115][1]["RewardEffect"] = {}
	tTreasureBowlAct_RewandItem[3006115][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	tTreasureBowlAct_RewandItem[3006116]={}
	tTreasureBowlAct_RewandItem[3006116][1]={}
	tTreasureBowlAct_RewandItem[3006116][1]["EmoneyCost"] = 3000
	tTreasureBowlAct_RewandItem[3006116][1]["EmoneyLog"] = "999	8870	3000	3000	1	"
	tTreasureBowlAct_RewandItem[3006116][1]["DeleteItem"] = {}
	tTreasureBowlAct_RewandItem[3006116][1]["DeleteItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006116][1]["DeleteItem"][1]["Id"] = 3006116
	tTreasureBowlAct_RewandItem[3006116][1]["RewardEMoneyMono"] = {}
	tTreasureBowlAct_RewandItem[3006116][1]["RewardEMoneyMono"]["Value"] = 21000
	tTreasureBowlAct_RewandItem[3006116][1]["Log"] = "0,0,3006116,1,12000057,2,3,21000[3]"
	tTreasureBowlAct_RewandItem[3006116][1]["RewardEffect"] = {}
	tTreasureBowlAct_RewandItem[3006116][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	--
	tTreasureBowlAct_RewandItem[3006117]={}
	tTreasureBowlAct_RewandItem[3006117][1]={}
	tTreasureBowlAct_RewandItem[3006117][1]["EmoneyCost"] = 10000
	tTreasureBowlAct_RewandItem[3006117][1]["EmoneyLog"] = "999	8871	10000	10000	1	"
	tTreasureBowlAct_RewandItem[3006117][1]["DeleteItem"] = {}
	tTreasureBowlAct_RewandItem[3006117][1]["DeleteItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006117][1]["DeleteItem"][1]["Id"] = 3006117
	tTreasureBowlAct_RewandItem[3006117][1]["RewardItem"] = {}
	tTreasureBowlAct_RewandItem[3006117][1]["RewardItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006117][1]["RewardItem"][1]["Id"] = 3006118
	tTreasureBowlAct_RewandItem[3006117][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureBowlAct_RewandItem[3006117][1]["RewardEMoneyMono"] = {}
	tTreasureBowlAct_RewandItem[3006117][1]["RewardEMoneyMono"]["Value"] = 80000
	tTreasureBowlAct_RewandItem[3006117][1]["Log"] = "0,0,3006117,1,12000057,2,3[3006118],80000[1]"
	tTreasureBowlAct_RewandItem[3006117][1]["RewardEffect"] = {}
	tTreasureBowlAct_RewandItem[3006117][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tTreasureBowlAct_RewandItem[3006118]={}
	tTreasureBowlAct_RewandItem[3006118][1]={}
	tTreasureBowlAct_RewandItem[3006118][1]["EmoneyCost"] = 10000
	tTreasureBowlAct_RewandItem[3006118][1]["EmoneyLog"] = "999	8871	10000	10000	1	"
	tTreasureBowlAct_RewandItem[3006118][1]["DeleteItem"] = {}
	tTreasureBowlAct_RewandItem[3006118][1]["DeleteItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006118][1]["DeleteItem"][1]["Id"] = 3006118
	tTreasureBowlAct_RewandItem[3006118][1]["RewardItem"] = {}
	tTreasureBowlAct_RewandItem[3006118][1]["RewardItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006118][1]["RewardItem"][1]["Id"] = 3006119
	tTreasureBowlAct_RewandItem[3006118][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureBowlAct_RewandItem[3006118][1]["RewardEMoneyMono"] = {}
	tTreasureBowlAct_RewandItem[3006118][1]["RewardEMoneyMono"]["Value"] = 80000
	tTreasureBowlAct_RewandItem[3006118][1]["Log"] = "0,0,3006118,1,12000057,2,3[3006119],80000[2]"
	tTreasureBowlAct_RewandItem[3006118][1]["RewardEffect"] = {}
	tTreasureBowlAct_RewandItem[3006118][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	tTreasureBowlAct_RewandItem[3006119]={}
	tTreasureBowlAct_RewandItem[3006119][1]={}
	tTreasureBowlAct_RewandItem[3006119][1]["EmoneyCost"] = 10000
	tTreasureBowlAct_RewandItem[3006119][1]["EmoneyLog"] = "999	8871	10000	10000	1	"
	tTreasureBowlAct_RewandItem[3006119][1]["DeleteItem"] = {}
	tTreasureBowlAct_RewandItem[3006119][1]["DeleteItem"][1] = {}
	tTreasureBowlAct_RewandItem[3006119][1]["DeleteItem"][1]["Id"] = 3006119
	tTreasureBowlAct_RewandItem[3006119][1]["RewardEMoneyMono"] = {}
	tTreasureBowlAct_RewandItem[3006119][1]["RewardEMoneyMono"]["Value"] = 80000
	tTreasureBowlAct_RewandItem[3006119][1]["Log"] = "0,0,3006119,1,12000057,2,3,80000[3]"
	tTreasureBowlAct_RewandItem[3006119][1]["RewardEffect"] = {}
	tTreasureBowlAct_RewandItem[3006119][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
local tTreasureBowlAct_Log = {}
--物品过期删除
tTreasureBowlAct_Log["TimeOut"] = "0,0,%d,%d,12000057,0,0,0"
---------------------------物品逻辑-------------------------------
function TreasureBowlAct_OpenLinkRight(nItemId)
	--检测当前是否为打开礼包时间内
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tTreasureBowlAct_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tTreasureBowlAct_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tTreasureBowlAct_Log["TimeOut"],nItemId,nItemNum))
		end
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end

function TreasureBowlAct_OpenPack(nItemId)
	--检测当前是否为打开礼包时间内
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tTreasureBowlAct_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tTreasureBowlAct_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tTreasureBowlAct_Log["TimeOut"],nItemId,nItemNum))
		end
		return
	end
	
	--检测玩家是否拥有足够天石
	local nEmoney = tTreasureBowlAct_RewandItem[nItemId][1]["EmoneyCost"]
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEmoney) then
		LinkItemGossipFunc_New(nItemId,"2-2")
		return
	end
	
	--赠天石上限
	local nAddEmoneyMono = tTreasureBowlAct_RewandItem[nItemId][1]["RewardEMoneyMono"]["Value"]
	local nEmoneyMono = Get_UserMonoEMoney()
	if nAddEmoneyMono + nEmoneyMono > G_User_MaxEmoneyMono then
		LinkItemGossipFunc_New(nItemId,"2-3")
		return
	end
	
	--扣除天石给奖励
	if Item_ChkItem(nItemId) then
		if User_AddEMoney(-nEmoney) then
			RewardTemplate_UseItem(tTreasureBowlAct_RewandItem[nItemId][1])
			LinkItemGossipFunc_New(nItemId,"2-4")
		end
	end
end

---------------------------物品模板-------------------------------

tItemFace[3006111] = 1608
tItemFace[3006112] = 1608
tItemFace[3006113] = 1608
tItemFace[3006114] = 1609
tItemFace[3006115] = 1609
tItemFace[3006116] = 1609
tItemFace[3006117] = 1610
tItemFace[3006118] = 1610
tItemFace[3006119] = 1610



tItem[3006111] = tItem[3006111] or {}
tItem[3006111]["DialogueText"] =tTreasureBowlAct_Text[3006111]
tItem[3006111]["Text1-1"] = {111,112}
tItem[3006111]["tOption1-1"] = {111,112}
tItem[3006111]["OptionFunc111"] = "TreasureBowlAct_OpenLinkRight</N>3006111"

tItem[3006111]["Text2-1"] = {211}
tItem[3006111]["tOption2-1"] = {211,212}
tItem[3006111]["OptionFunc211"] = "TreasureBowlAct_OpenPack</N>3006111"

tItem[3006111]["Text2-2"] = {221}
tItem[3006111]["tOption2-2"] = {221}

tItem[3006111]["Text2-3"] = {231}
tItem[3006111]["tOption2-3"] = {231}

tItem[3006111]["Text2-4"] = {241}
tItem[3006111]["tOption2-4"] = {241}

tItem[3006112] = tItem[3006112] or {}
tItem[3006112]["DialogueText"] =tTreasureBowlAct_Text[3006111]
tItem[3006112]["Text1-1"] = {111,112}
tItem[3006112]["tOption1-1"] = {111,112}
tItem[3006112]["OptionFunc111"] = "TreasureBowlAct_OpenLinkRight</N>3006112"

tItem[3006112]["Text2-1"] = {211}
tItem[3006112]["tOption2-1"] = {211,212}
tItem[3006112]["OptionFunc211"] = "TreasureBowlAct_OpenPack</N>3006112"

tItem[3006112]["Text2-2"] = {221}
tItem[3006112]["tOption2-2"] = {221}

tItem[3006112]["Text2-3"] = {231}
tItem[3006112]["tOption2-3"] = {231}

tItem[3006112]["Text2-4"] = {241}
tItem[3006112]["tOption2-4"] = {241}

tItem[3006113] = tItem[3006113] or {}
tItem[3006113]["DialogueText"] =tTreasureBowlAct_Text[3006111]
tItem[3006113]["Text1-1"] = {111,112}
tItem[3006113]["tOption1-1"] = {111,112}
tItem[3006113]["OptionFunc111"] = "TreasureBowlAct_OpenLinkRight</N>3006113"

tItem[3006113]["Text2-1"] = {211}
tItem[3006113]["tOption2-1"] = {211,212}
tItem[3006113]["OptionFunc211"] = "TreasureBowlAct_OpenPack</N>3006113"

tItem[3006113]["Text2-2"] = {221}
tItem[3006113]["tOption2-2"] = {221}

tItem[3006113]["Text2-3"] = {231}
tItem[3006113]["tOption2-3"] = {231}

tItem[3006113]["Text2-4"] = {241}
tItem[3006113]["tOption2-4"] = {241}

tItem[3006114] = tItem[3006114] or {}
tItem[3006114]["DialogueText"] =tTreasureBowlAct_Text[3006114]
tItem[3006114]["Text1-1"] = {111,112}
tItem[3006114]["tOption1-1"] = {111,112}
tItem[3006114]["OptionFunc111"] = "TreasureBowlAct_OpenLinkRight</N>3006114"

tItem[3006114]["Text2-1"] = {211}
tItem[3006114]["tOption2-1"] = {211,212}
tItem[3006114]["OptionFunc211"] = "TreasureBowlAct_OpenPack</N>3006114"

tItem[3006114]["Text2-2"] = {221}
tItem[3006114]["tOption2-2"] = {221}

tItem[3006114]["Text2-3"] = {231}
tItem[3006114]["tOption2-3"] = {231}

tItem[3006114]["Text2-4"] = {241}
tItem[3006114]["tOption2-4"] = {241}

tItem[3006115] = tItem[3006115] or {}
tItem[3006115]["DialogueText"] =tTreasureBowlAct_Text[3006114]
tItem[3006115]["Text1-1"] = {111,112}
tItem[3006115]["tOption1-1"] = {111,112}
tItem[3006115]["OptionFunc111"] = "TreasureBowlAct_OpenLinkRight</N>3006115"

tItem[3006115]["Text2-1"] = {211}
tItem[3006115]["tOption2-1"] = {211,212}
tItem[3006115]["OptionFunc211"] = "TreasureBowlAct_OpenPack</N>3006115"

tItem[3006115]["Text2-2"] = {221}
tItem[3006115]["tOption2-2"] = {221}

tItem[3006115]["Text2-3"] = {231}
tItem[3006115]["tOption2-3"] = {231}

tItem[3006115]["Text2-4"] = {241}
tItem[3006115]["tOption2-4"] = {241}

tItem[3006116] = tItem[3006116] or {}
tItem[3006116]["DialogueText"] =tTreasureBowlAct_Text[3006114]
tItem[3006116]["Text1-1"] = {111,112}
tItem[3006116]["tOption1-1"] = {111,112}
tItem[3006116]["OptionFunc111"] = "TreasureBowlAct_OpenLinkRight</N>3006116"

tItem[3006116]["Text2-1"] = {211}
tItem[3006116]["tOption2-1"] = {211,212}
tItem[3006116]["OptionFunc211"] = "TreasureBowlAct_OpenPack</N>3006116"

tItem[3006116]["Text2-2"] = {221}
tItem[3006116]["tOption2-2"] = {221}

tItem[3006116]["Text2-3"] = {231}
tItem[3006116]["tOption2-3"] = {231}

tItem[3006116]["Text2-4"] = {241}
tItem[3006116]["tOption2-4"] = {241}

tItem[3006117] = tItem[3006117] or {}
tItem[3006117]["DialogueText"] =tTreasureBowlAct_Text[3006117]
tItem[3006117]["Text1-1"] = {111,112}
tItem[3006117]["tOption1-1"] = {111,112}
tItem[3006117]["OptionFunc111"] = "TreasureBowlAct_OpenLinkRight</N>3006117"

tItem[3006117]["Text2-1"] = {211}
tItem[3006117]["tOption2-1"] = {211,212}
tItem[3006117]["OptionFunc211"] = "TreasureBowlAct_OpenPack</N>3006117"

tItem[3006117]["Text2-2"] = {221}
tItem[3006117]["tOption2-2"] = {221}

tItem[3006117]["Text2-3"] = {231}
tItem[3006117]["tOption2-3"] = {231}

tItem[3006117]["Text2-4"] = {241}
tItem[3006117]["tOption2-4"] = {241}

tItem[3006118] = tItem[3006118] or {}
tItem[3006118]["DialogueText"] =tTreasureBowlAct_Text[3006117]
tItem[3006118]["Text1-1"] = {111,112}
tItem[3006118]["tOption1-1"] = {111,112}
tItem[3006118]["OptionFunc111"] = "TreasureBowlAct_OpenLinkRight</N>3006118"

tItem[3006118]["Text2-1"] = {211}
tItem[3006118]["tOption2-1"] = {211,212}
tItem[3006118]["OptionFunc211"] = "TreasureBowlAct_OpenPack</N>3006118"

tItem[3006118]["Text2-2"] = {221}
tItem[3006118]["tOption2-2"] = {221}

tItem[3006118]["Text2-3"] = {231}
tItem[3006118]["tOption2-3"] = {231}

tItem[3006118]["Text2-4"] = {241}
tItem[3006118]["tOption2-4"] = {241}

tItem[3006119] = tItem[3006119] or {}
tItem[3006119]["DialogueText"] =tTreasureBowlAct_Text[3006117]
tItem[3006119]["Text1-1"] = {111,112}
tItem[3006119]["tOption1-1"] = {111,112}
tItem[3006119]["OptionFunc111"] = "TreasureBowlAct_OpenLinkRight</N>3006119"

tItem[3006119]["Text2-1"] = {211}
tItem[3006119]["tOption2-1"] = {211,212}
tItem[3006119]["OptionFunc211"] = "TreasureBowlAct_OpenPack</N>3006119"

tItem[3006119]["Text2-2"] = {221}
tItem[3006119]["tOption2-2"] = {221}

tItem[3006119]["Text2-3"] = {231}
tItem[3006119]["tOption2-3"] = {231}

tItem[3006119]["Text2-4"] = {241}
tItem[3006119]["tOption2-4"] = {241}