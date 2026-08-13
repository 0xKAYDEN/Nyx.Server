------------------------------------------------------------------------------------
--Name：            170814[英文征服][活动脚本]9月老玩家回归礼包及action制作
--Creator:      李甲
--Created:     2017/08/14
------------------------------------------------------------------------------------
--命名前缀
--ReturnActivity_
------------------------------
--奖励模板
local tReturnActivity_Reward = {}
--时间
	tReturnActivity_Reward["PackTime"] = tActivityTime["DecOldPlayerReward"]["PackTime"]
--老玩家签到礼包
	tReturnActivity_Reward[3304654] = {}
	tReturnActivity_Reward[3304654]["Space"] = 10
	tReturnActivity_Reward[3304654]["DeleteItem"] = {}
	tReturnActivity_Reward[3304654]["DeleteItem"][1] = {}
	tReturnActivity_Reward[3304654]["DeleteItem"][1]["Id"] = 3304654
	tReturnActivity_Reward[3304654]["RewardItem"] = {}
	tReturnActivity_Reward[3304654]["RewardItem"][1] = {}
	tReturnActivity_Reward[3304654]["RewardItem"][1]["Id"] = 723700 --赠品经验球
	tReturnActivity_Reward[3304654]["RewardItem"][1]["Attr"] = "0 1 3"
	
	tReturnActivity_Reward[3304654]["RewardItem"][2] = {}
	tReturnActivity_Reward[3304654]["RewardItem"][2]["Id"] =3003124 --赠品强炼丹
	tReturnActivity_Reward[3304654]["RewardItem"][2]["Attr"] = "0 5 3"
	
	tReturnActivity_Reward[3304654]["RewardItem"][3] = {}
	tReturnActivity_Reward[3304654]["RewardItem"][3]["Id"] =3002029 --赠品护心丹
	tReturnActivity_Reward[3304654]["RewardItem"][3]["Attr"] = "0 5 0 0 1"
	
	tReturnActivity_Reward[3304654]["RewardItem"][4] = {}
	tReturnActivity_Reward[3304654]["RewardItem"][4]["Id"] =3001407 --赠品任务重置符
	tReturnActivity_Reward[3304654]["RewardItem"][4]["Attr"] = "0 1 3"
	
	tReturnActivity_Reward[3304654]["RewardItem"][5] = {}
	tReturnActivity_Reward[3304654]["RewardItem"][5]["Id"] =3009001 --明亮星陨石
	tReturnActivity_Reward[3304654]["RewardItem"][5]["Attr"] = "0 2 0 2880 1"
	
	tReturnActivity_Reward[3304654]["RewardItem"][6] = {}
	tReturnActivity_Reward[3304654]["RewardItem"][6]["Id"] =1200000--赠品祈愿石
	tReturnActivity_Reward[3304654]["RewardItem"][6]["Attr"] = "0 1 3"
	tReturnActivity_Reward[3304654]["Log"] = "0,0,3304654,1,12000827,2,723700[3003124][3002029][3001407][3009001][1200000],1[5][5][1][2][1]"
	tReturnActivity_Reward[3304654]["RewardNoNeedTip"] = 1 
	
--至尊回归包
	tReturnActivity_Reward[3304655] = {}
	tReturnActivity_Reward[3304655]["Space"] = 3
	tReturnActivity_Reward[3304655]["DeleteItem"] = {}
	tReturnActivity_Reward[3304655]["DeleteItem"][1] = {}
	tReturnActivity_Reward[3304655]["DeleteItem"][1]["Id"] =3304655
	tReturnActivity_Reward[3304655]["RewardItem"] = {}
	tReturnActivity_Reward[3304655]["RewardItem"][1] = {}
	tReturnActivity_Reward[3304655]["RewardItem"][1]["Id"] =3304657--高级+8赤炼石礼包
	tReturnActivity_Reward[3304655]["RewardItem"][1]["Attr"] = "0 1"
	
	tReturnActivity_Reward[3304655]["RewardItem"][2] = {}
	tReturnActivity_Reward[3304655]["RewardItem"][2]["Id"] =3304658--1比10 非赠换赠5000CP礼包
	tReturnActivity_Reward[3304655]["RewardItem"][2]["Attr"] = "0 1"
	
	tReturnActivity_Reward[3304655]["RewardItem"][3] = {}
	tReturnActivity_Reward[3304655]["RewardItem"][3]["Id"] =3304584--晶莹星陨石礼包
	tReturnActivity_Reward[3304655]["RewardItem"][3]["Attr"] = "0 1"
	
	tReturnActivity_Reward[3304655]["RewardItem"][4] = {}
	tReturnActivity_Reward[3304655]["RewardItem"][4]["Id"] =3304659--免费3W气力值礼包
	tReturnActivity_Reward[3304655]["RewardItem"][4]["Attr"] = "0 1"
	tReturnActivity_Reward[3304655]["Log"] = "0,0,3304655,1,12000827,2,3304657[3304658][3009002][3304659],1[1][1][1]"
	tReturnActivity_Reward[3304655]["RewardNoNeedTip"] = 1 
	
--荣耀召回礼包
	tReturnActivity_Reward[3304656] = {}
	tReturnActivity_Reward[3304656]["Space"] = 3
	tReturnActivity_Reward[3304656]["DeleteItem"] = {}
	tReturnActivity_Reward[3304656]["DeleteItem"][1] = {}
	tReturnActivity_Reward[3304656]["DeleteItem"][1]["Id"] =3304656
	tReturnActivity_Reward[3304656]["RewardItem"] = {}
	tReturnActivity_Reward[3304656]["RewardItem"][1] = {}
	tReturnActivity_Reward[3304656]["RewardItem"][1]["Id"] =3304660--普通+8赤炼石礼包
	tReturnActivity_Reward[3304656]["RewardItem"][1]["Attr"] = "0 1"
	
	tReturnActivity_Reward[3304656]["RewardItem"][2] = {}
	tReturnActivity_Reward[3304656]["RewardItem"][2]["Id"] =3304661--折扣包-1比6非赠换赠2000CP礼包
	tReturnActivity_Reward[3304656]["RewardItem"][2]["Attr"] = "0 1"
	
	tReturnActivity_Reward[3304656]["RewardItem"][3] = {}
	tReturnActivity_Reward[3304656]["RewardItem"][3]["Id"] =3304662--免费2W气力值礼包
	tReturnActivity_Reward[3304656]["RewardItem"][3]["Attr"] = "0 1"
	
	tReturnActivity_Reward[3304656]["RewardItem"][4] = {}
	tReturnActivity_Reward[3304656]["RewardItem"][4]["Id"] =3304585--免费明亮星陨石*10礼包
	tReturnActivity_Reward[3304656]["RewardItem"][4]["Attr"] = "0 1"
	tReturnActivity_Reward[3304656]["Log"] = "0,0,3304656,1,12000827,2,3304657[3304658][3009002][3304659],1[1][1][1]"
	tReturnActivity_Reward[3304656]["RewardNoNeedTip"] = 1 
	
	--高级+8赤炼石礼包
	tReturnActivity_Reward[3304657] = {}
	tReturnActivity_Reward[3304657]["EventType1"] = 164
	tReturnActivity_Reward[3304657]["DataType1"] = 75
	tReturnActivity_Reward[3304657]["RewardTotalData"] = 4
	tReturnActivity_Reward[3304657]["Space"] = 1
	tReturnActivity_Reward[3304657]["NeedEmoney"] = {}
	tReturnActivity_Reward[3304657]["NeedEmoney"][1] = 9999
	tReturnActivity_Reward[3304657]["NeedEmoney"][2] = 9699
	tReturnActivity_Reward[3304657]["NeedEmoney"][3] = 9333
	tReturnActivity_Reward[3304657]["NeedEmoney"][4] = 9199
	tReturnActivity_Reward[3304657]["NeedEmoney"][5] = 8999
	tReturnActivity_Reward[3304657]["RewardItem"] = {}
	tReturnActivity_Reward[3304657]["RewardItem"][1] = {}
	tReturnActivity_Reward[3304657]["RewardItem"][1]["Id"] =730008 -- +8赤练石
	tReturnActivity_Reward[3304657]["RewardItem"][1]["Attr"] = "0 1"
	tReturnActivity_Reward[3304657]["RewardNoNeedTip"] = 1 


	--1比10 非赠换赠5000CP礼包
	tReturnActivity_Reward[3304658] = {}
	tReturnActivity_Reward[3304658]["Reward"] = {}
	tReturnActivity_Reward[3304658]["NeedEmoney"] = 5000
	tReturnActivity_Reward[3304658]["MonoEmoney"] =50000
	tReturnActivity_Reward[3304658]["DeleteItem"] = {}
	tReturnActivity_Reward[3304658]["DeleteItem"][1] = {}
	tReturnActivity_Reward[3304658]["DeleteItem"][1]["Id"] =3304658
	tReturnActivity_Reward[3304658]["RewardEMoneyMono"] = {}
	tReturnActivity_Reward[3304658]["RewardEMoneyMono"]["Value"] = 50000
	tReturnActivity_Reward[3304658]["RewardNoNeedTip"] = 1 

	--免费3W气力值礼包
	tReturnActivity_Reward[3304659] = {}
	tReturnActivity_Reward[3304659]["EventType1"] = 164
	tReturnActivity_Reward[3304659]["DataType1"] = 76
	tReturnActivity_Reward[3304659]["RewardStrength"] = 3000
	tReturnActivity_Reward[3304659]["RewardTotalData"] = 9
	tReturnActivity_Reward[3304659]["RewardStrengthValue"] = {}
	tReturnActivity_Reward[3304659]["RewardStrengthValue"]["Value"] = 3000
	tReturnActivity_Reward[3304659]["Log"] = "0,0,0,0,12000827,2,12,3000"
	tReturnActivity_Reward[3304659]["RewardNoNeedTip"] = 1 

	--普通+8赤炼石礼包
	tReturnActivity_Reward[3304660] = {}
	tReturnActivity_Reward[3304660]["EventType1"] = 164
	tReturnActivity_Reward[3304660]["DataType1"] = 77
	tReturnActivity_Reward[3304660]["RewardTotalData"] = 4
	tReturnActivity_Reward[3304660]["Space"] = 1
	tReturnActivity_Reward[3304660]["NeedEmoney"] = {}
	tReturnActivity_Reward[3304660]["NeedEmoney"][1] =11999
	tReturnActivity_Reward[3304660]["NeedEmoney"][2] =10999
	tReturnActivity_Reward[3304660]["NeedEmoney"][3] =9999
	tReturnActivity_Reward[3304660]["NeedEmoney"][4] =9599
	tReturnActivity_Reward[3304660]["NeedEmoney"][5] =9099
	tReturnActivity_Reward[3304660]["RewardItem"] = {}
	tReturnActivity_Reward[3304660]["RewardItem"][1] = {}
	tReturnActivity_Reward[3304660]["RewardItem"][1]["Id"] =730008 -- +8赤练石
	tReturnActivity_Reward[3304660]["RewardItem"][1]["Attr"] = "0 1"
	tReturnActivity_Reward[3304660]["RewardNoNeedTip"] = 1 

	--折扣包-1比6 非赠换赠2000CP礼包
	tReturnActivity_Reward[3304661] = {}
	tReturnActivity_Reward[3304661]["NeedEmoney"] =2000
	tReturnActivity_Reward[3304661]["MonoEmoney"] =12000
	tReturnActivity_Reward[3304661]["DeleteItem"] = {}
	tReturnActivity_Reward[3304661]["DeleteItem"][1] = {}
	tReturnActivity_Reward[3304661]["DeleteItem"][1]["Id"] =3304661
	tReturnActivity_Reward[3304661]["RewardEMoneyMono"] = {}
	tReturnActivity_Reward[3304661]["RewardEMoneyMono"]["Value"] =12000
	tReturnActivity_Reward[3304661]["RewardNoNeedTip"] = 1 

	--免费2W气力值礼包
	tReturnActivity_Reward[3304662] = {}
	tReturnActivity_Reward[3304662]["EventType1"] = 164
	tReturnActivity_Reward[3304662]["DataType1"] = 78
	tReturnActivity_Reward[3304662]["RewardStrength"] = 2000
	tReturnActivity_Reward[3304662]["RewardTotalData"] = 9
	tReturnActivity_Reward[3304662]["RewardStrengthValue"] = {}
	tReturnActivity_Reward[3304662]["RewardStrengthValue"]["Value"] = 2000
	tReturnActivity_Reward[3304662]["Log"] = "0,0,0,0,12000827,2,12,2000"
	tReturnActivity_Reward[3304662]["RewardNoNeedTip"] = 1 
	--晶莹星陨石小礼包
	tReturnActivity_Reward[3304520] = {}
	tReturnActivity_Reward[3304520]["Space"] = 4
	tReturnActivity_Reward[3304520]["DeleteItem"] = {}
	tReturnActivity_Reward[3304520]["DeleteItem"][1] = {}
	tReturnActivity_Reward[3304520]["DeleteItem"][1]["Id"] =3304520
	tReturnActivity_Reward[3304520]["RewardItem"] = {}
	tReturnActivity_Reward[3304520]["RewardItem"][1] = {}
	tReturnActivity_Reward[3304520]["RewardItem"][1]["Id"] =3009002-- 晶莹星陨石
	tReturnActivity_Reward[3304520]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tReturnActivity_Reward[3304520]["Log"] = "0,0,0,0,12000827,2,3009002,5"
	tReturnActivity_Reward[3304520]["RewardNoNeedTip"] = 1 

	--晶莹星陨石礼包
	tReturnActivity_Reward[3304584] = {}
	tReturnActivity_Reward[3304584]["NeedEmoney"] =5000
	tReturnActivity_Reward[3304584]["Space"] = 7
	tReturnActivity_Reward[3304584]["DeleteItem"] = {}
	tReturnActivity_Reward[3304584]["DeleteItem"][1] = {}
	tReturnActivity_Reward[3304584]["DeleteItem"][1]["Id"] =3304584
	tReturnActivity_Reward[3304584]["RewardItem"] = {}
	tReturnActivity_Reward[3304584]["RewardItem"][1] = {}
	tReturnActivity_Reward[3304584]["RewardItem"][1]["Id"] =3009002-- 晶莹星陨石
	tReturnActivity_Reward[3304584]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tReturnActivity_Reward[3304584]["RewardItem"][2] = {}
	tReturnActivity_Reward[3304584]["RewardItem"][2]["Id"] =3304520-- 晶莹星陨石小礼包
	tReturnActivity_Reward[3304584]["RewardItem"][2]["Attr"] = "0 4 0 2880 1"
	tReturnActivity_Reward[3304584]["RewardNoNeedTip"] = 1 

	--免费明亮星陨石
	tReturnActivity_Reward[3304585] = {}
	tReturnActivity_Reward[3304585]["EventType1"] = 164
	tReturnActivity_Reward[3304585]["DataType1"] = 79
	tReturnActivity_Reward[3304585]["RewardTotalData"] = 9
	tReturnActivity_Reward[3304585]["Space"] = 1
	tReturnActivity_Reward[3304585]["RewardItem"] = {}
	tReturnActivity_Reward[3304585]["RewardItem"][1] = {}
	tReturnActivity_Reward[3304585]["RewardItem"][1]["Id"] =3009001-- 明亮星陨石
	tReturnActivity_Reward[3304585]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tReturnActivity_Reward[3304585]["Log"] = "0,0,0,0,12000827,2,3009001,1"
	tReturnActivity_Reward[3304585]["RewardNoNeedTip"] = 1 
------------------------------------------------------------------------------------
----------------------------------EmoneyLog---------------------------------------
local tReturnActivity_EmoneyLog = {}
	tReturnActivity_EmoneyLog[3304657] = {}
	tReturnActivity_EmoneyLog[3304657]["GetStoneReward"] = {} --豪华赤练石礼包
	tReturnActivity_EmoneyLog[3304657]["GetStoneReward"][1] = "350	20740	9999	9999	1	"
	tReturnActivity_EmoneyLog[3304657]["GetStoneReward"][2] = "350	20741	9699	9699	1	"
	tReturnActivity_EmoneyLog[3304657]["GetStoneReward"][3] = "350	20742	9333	9333	1	"
	tReturnActivity_EmoneyLog[3304657]["GetStoneReward"][4]= "350	20743	9199	9199	1	"
	tReturnActivity_EmoneyLog[3304657]["GetStoneReward"][5] = "350	20744	8999	8999	1	"
	
	tReturnActivity_EmoneyLog[3304658] = {}
	tReturnActivity_EmoneyLog[3304658]["GetMonoEMoney"] = "350	20745	5000	5000	1	" --高级换赠包花费5000赠点
	tReturnActivity_EmoneyLog[3304658]["SendMonoEMoney"] = "350	20745	0	0	-50000	"--玩家获得50000赠点
	tReturnActivity_EmoneyLog["GetStarStone"] = "350	20746	5000	5000	1	" --晶莹陨石包
	
	tReturnActivity_EmoneyLog[3304660] = {}
	tReturnActivity_EmoneyLog[3304660]["GetStoneReward"] = {} --高级赤练石礼包
	tReturnActivity_EmoneyLog[3304660]["GetStoneReward"][1] = "350	20747	11999	11999	1	"
	tReturnActivity_EmoneyLog[3304660]["GetStoneReward"][2] = "350	20748	10999	10999	1	"
	tReturnActivity_EmoneyLog[3304660]["GetStoneReward"][3] = "350	20749	9999	9999	1	"
	tReturnActivity_EmoneyLog[3304660]["GetStoneReward"][4]= "350	20750	9599	9599	1	"
	tReturnActivity_EmoneyLog[3304660]["GetStoneReward"][5] = "350	20751	9099	9099	1	"
	
	tReturnActivity_EmoneyLog[3304661] = {}
	tReturnActivity_EmoneyLog[3304661]["GetMonoEMoney"] = "350	20752	2000	2000	1	" -- 低级换赠包
	tReturnActivity_EmoneyLog[3304661]["SendMonoEMoney"] = "350	20745	0	0	-12000	"--玩家获得12000赠点
----------------------------------逻辑部分---------------------------------------------

---------------直接发放礼包(无时间限制)
function tReturnActivity_GetGift(nItemId) -- 直接发放
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tReturnActivity_Reward[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tReturnActivity_Reward[nItemId])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	local sItemName = Get_ItemName(nItemId)
	if not RewardTemplate_CheckSpace(tReturnActivity_Reward[nItemId],nUserId) then --提示玩家背包空间不足
		User_TalkChannel2005(string.format( tReturnActivity_Text["NoSpace"],nSpace))
		return 
	end
	RewardTemplate_UseItem(tReturnActivity_Reward[nItemId])
	User_TalkChannel2005(tReturnActivity_Text[nItemId]["GetGift"])
end
---------------支付发放礼包(无时间限制)
function tReturnActivity_GetPayGiftNoTime(nItemId) 
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserEMoney = Get_UserEMoney()
	local nUserMonoEmoney = Get_UserMonoEMoney()
	local nNeedEMoney = tReturnActivity_Reward[nItemId]["NeedEmoney"]
	local nMonoEmoney = tReturnActivity_Reward[nItemId]["MonoEmoney"]
	if nMonoEmoney + nUserMonoEmoney > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tReturnActivity_Text["CPsFull"]) --提示玩家天石（赠）已满
		return 
	end
	if nUserEMoney < nNeedEMoney then 
		User_TalkChannel2005( tReturnActivity_Text["EmoneyLess"]) -- 提示玩家天石不足
		return
	end
	if User_AddEMoney(-nNeedEMoney)then
		RewardTemplate_UseItem(tReturnActivity_Reward[nItemId])
		Sys_SaveEmoneyBuy(tReturnActivity_EmoneyLog[nItemId]["GetMonoEMoney"]) --打log
		Sys_SaveEmoneyBuy(tReturnActivity_EmoneyLog[nItemId]["SendMonoEMoney"]) -- 打log
		local sText = string.format(tReturnActivity_Text[nItemId]["GetGift"],nMonoEmoney)
		User_TalkChannel2005(sText)
	end
end
---------------支付发放礼包(有时间限制)
function tReturnActivity_GetPayGift(nItemId) 
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Sys_ChkFullTime(tReturnActivity_Reward["PackTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005( tReturnActivity_Text["TimeOut"])--提示背包失效并删除
		end
		return
	end
	local nNeedEMoney = tReturnActivity_Reward[nItemId]["NeedEmoney"] 
	local nUserEMoney = Get_UserEMoney()
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tReturnActivity_Reward[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tReturnActivity_Reward[nItemId])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	local sItemName = Get_ItemName(nItemId)
	
	if not RewardTemplate_CheckSpace(tReturnActivity_Reward[nItemId]) then --提示玩家背包空间不足
		User_TalkChannel2005(string.format( tReturnActivity_Text["NoSpace"],nSpace))
		return 
	end
	if nUserEMoney < nNeedEMoney then 
		User_TalkChannel2005( tReturnActivity_Text["EmoneyLess"]) -- 提示玩家天石不足
		return
	end
	if User_AddEMoney(-nNeedEMoney)then
		RewardTemplate_UseItem(tReturnActivity_Reward[nItemId])
		local sText = tReturnActivity_Text[nItemId]["GetGift"]
		Sys_SaveEmoneyBuy(tReturnActivity_EmoneyLog["GetStarStone"]) --打log
		User_TalkChannel2005(sText)
	end
end
-------------分次发放明亮星陨石礼包(有时限)
function tReturnActivity_GetManyTenGift(nItemId) 
	if not Item_ChkItem(nItemId) then
		return
	end
	local nEvent = tReturnActivity_Reward[nItemId]["EventType1"]
	local nType = tReturnActivity_Reward[nItemId]["DataType1"] 
	local nCount = Get_UserStatisticValue(nEvent,nType)
	local nMaxData = tReturnActivity_Reward[nItemId]["RewardTotalData"]
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tReturnActivity_Reward[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tReturnActivity_Reward[nItemId])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	local sText = ""
	if not Sys_ChkFullTime(tReturnActivity_Reward["PackTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005( tReturnActivity_Text["TimeOut"])--提示背包失效并删除
		end
		return
	end
		--判断是否隔天
	if not Task_StcInterval(nEvent,nType,1,4) then
		User_TalkChannel2005(tReturnActivity_Text["OpenLimit"]) --提示今日已领取完毕
		return
	end
	if not RewardTemplate_CheckSpace(tReturnActivity_Reward[nItemId]) then --提示玩家背包空间不足
		User_TalkChannel2005(string.format( tReturnActivity_Text["NoSpace"],nSpace))
		return 
	end
	if nCount >= nMaxData then --使用10次后删除
		if Item_DelItem(nItemId) then
			-- Task_SetStatistic(nEvent,nType,0,1)
			-- Task_SetStcTimestamp(nEvent,nType,0)
			RewardTemplate_UseItem(tReturnActivity_Reward[nItemId])
			sText = tReturnActivity_Text[nItemId]["GetGift"]
			User_TalkChannel2005(sText)
			return
		end
	else --少于10次每次使用 +1
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		RewardTemplate_UseItem(tReturnActivity_Reward[nItemId])
		sText = tReturnActivity_Text[nItemId]["GetGift"]
		User_TalkChannel2005(sText)
	end
end
-------------分发气力值礼包(有时限)
function tReturnActivity_GetManyStrengthGift(nItemId) 
	local nEvent = tReturnActivity_Reward[nItemId]["EventType1"]
	local nType = tReturnActivity_Reward[nItemId]["DataType1"] 
	local nCount = Get_UserStatisticValue(nEvent,nType)
	local nMaxData = tReturnActivity_Reward[nItemId]["RewardTotalData"]
	local nStrength = tReturnActivity_Reward[nItemId]["RewardStrength"]
	local sText = ""
	if not Sys_ChkFullTime(tReturnActivity_Reward["PackTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005( tReturnActivity_Text["TimeOut"])--提示背包失效并删除
		end
		return
	end
		--判断是否隔天
	if not Task_StcInterval(nEvent,nType,1,4) then
		User_TalkChannel2005(tReturnActivity_Text["OpenLimit"]) --提示今日已领取完毕
		return
	end
	if nCount >= nMaxData then --使用10次后删除
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- Task_SetStatistic(nEvent,nType,0,1)
			-- Task_SetStcTimestamp(nEvent,nType,0)
			RewardTemplate_UseItemAndMsg(tReturnActivity_Reward[nItemId])
			sText = string.format(tReturnActivity_Text[nItemId]["GetGift"],nStrength)
			User_TalkChannel2005(sText)
			return
		end
	else --少于10次每次使用 +1
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		RewardTemplate_UseItemAndMsg(tReturnActivity_Reward[nItemId])
		sText = string.format(tReturnActivity_Text[nItemId]["GetGift"],nStrength)
		User_TalkChannel2005(sText)
	end
end

-------------分次发放赤练石礼包(有时限)
function tReturnActivity_GetManyGift(nItemId) -- 分次发放
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Sys_ChkFullTime(tReturnActivity_Reward["PackTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005( tReturnActivity_Text["TimeOut"])--提示背包失效并删除
		end
		return
	end
	local nUserEMoney = Get_UserEMoney()
	local nEvent = tReturnActivity_Reward[nItemId]["EventType1"]
	local nType = tReturnActivity_Reward[nItemId]["DataType1"] 
	local nCount = Get_UserStatisticValue(nEvent,nType)
	local nMaxData = tReturnActivity_Reward[nItemId]["RewardTotalData"]
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tReturnActivity_Reward[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tReturnActivity_Reward[nItemId])
	local nSpace = nGetRewardSpace - nDelRewardSpace
	local nNeedEMoney = tReturnActivity_Reward[nItemId]["NeedEmoney"][nCount+1]
	local sText = ""
	
	if not RewardTemplate_CheckSpace(tReturnActivity_Reward[nItemId]) then --提示玩家背包空间不足
		User_TalkChannel2005(string.format( tReturnActivity_Text["NoSpace"],nSpace))
		return 
	end
	--判断玩家天石
	if nUserEMoney < nNeedEMoney then 
		User_TalkChannel2005( tReturnActivity_Text["EmoneyLess"]) -- 提示玩家天石不足
		return
	end

	--给奖
	if nCount >= nMaxData then --使用5次后删除
		if Item_DelItem(nItemId) then
			if User_AddEMoney(-nNeedEMoney)then
				-- Task_SetStatistic(nEvent,nType,0,1)
				-- Task_SetStcTimestamp(nEvent,nType,0)
				RewardTemplate_UseItem(tReturnActivity_Reward[nItemId])
				Sys_SaveEmoneyBuy(tReturnActivity_EmoneyLog[nItemId]["GetStoneReward"][nCount+1])
				sText = tReturnActivity_Text[nItemId]["GetGift"]
				User_TalkChannel2005(sText)
				return
			end
		end
	else --少于5次每次使用 +1
		if User_AddEMoney(-nNeedEMoney)then
			Task_AddStatistic(nEvent,nType,1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			RewardTemplate_UseItem(tReturnActivity_Reward[nItemId])
			Sys_SaveEmoneyBuy(tReturnActivity_EmoneyLog[nItemId]["GetStoneReward"][nCount+1])
			sText = tReturnActivity_Text[nItemId]["GetGift"]
			User_TalkChannel2005(sText)
		end
	end
end
--------更新显示所需天石数
function tReturnActivity_ShowText(nItemId)
	local nEvent = tReturnActivity_Reward[nItemId]["EventType1"]
	local nType = tReturnActivity_Reward[nItemId]["DataType1"] 
	local nCount = Get_UserStatisticValue(nEvent,nType)
	local nNeedEMoney = tReturnActivity_Reward[nItemId]["NeedEmoney"][nCount+1]
	local nNextEMoney = tReturnActivity_Reward[nItemId]["NeedEmoney"][nCount+2]
	local sText1 = ""
	local sText = string.format(tReturnActivity_Text[nItemId]["Text111"], nNeedEMoney)
	if nNextEMoney ~= nil then
		sText1 = string.format(tReturnActivity_Text[nItemId]["Text112"],nNextEMoney)
	else
		sText1 = ""
	end
	local sText2 = string.format(tReturnActivity_Text[nItemId]["Option1"],nNeedEMoney)
	local sText3 = string.format(tReturnActivity_Text[nItemId]["Text121"],nNeedEMoney)
	local sText4 = string.format(tReturnActivity_Text[nItemId]["Option3"],nNeedEMoney)
	tItem[nItemId]["Text111"] = sText
	tItem[nItemId]["Text112"] = sText1
	tItem[nItemId]["Option1"] = sText2
	tItem[nItemId]["Text121"] = sText3
	tItem[nItemId]["Option3"] = sText4
end
---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3304654] = tItem[3304654] or {}
tItem[3304654]["Function"] = function(nItemId,sItemName)
	tReturnActivity_GetGift(nItemId)
end
tItem[3304655] = tItem[3304655] or {}
tItem[3304655]["Function"] = function(nItemId,sItemName)
	tReturnActivity_GetGift(nItemId)
end
tItem[3304656] = tItem[3304656] or {}
tItem[3304656]["Function"] = function(nItemId,sItemName)
	tReturnActivity_GetGift(nItemId)
end
--小晶莹星陨石包
tItem[3304520] = tItem[3304520] or {}
tItem[3304520]["Function"] = function(nItemId,sItemName)
	tReturnActivity_GetGift(nItemId)
end

--------物品有对白模板
--豪华赤炼石+8
tItem[3304657] = tItem[3304657] or {}
tItem[3304657]["Text1-1"] = {111,112}
tItem[3304657]["Text111"] = tReturnActivity_Text[3304657]["Text111"]
tItem[3304657]["Text112"] = tReturnActivity_Text[3304657]["Text112"]
tItem[3304657]["ChkFunc1-1"] = function() 
	tReturnActivity_ShowText(3304657)
	return true
 end
tItem[3304657]["tOption1-1"] = {1,2}
tItem[3304657]["Option1"] = tReturnActivity_Text[3304657]["Option1"]
tItem[3304657]["OptionPoint1"]="1-2"
tItem[3304657]["Option2"] = tReturnActivity_Text[3304657]["Option2"]


tItem[3304657]["Text1-2"] = {121}
tItem[3304657]["Text121"] = tReturnActivity_Text[3304657]["Text121"]
tItem[3304657]["tOption1-2"] = {3,4}
tItem[3304657]["Option3"] = tReturnActivity_Text[3304657]["Option3"]
tItem[3304657]["OptionFunc3"]="tReturnActivity_GetManyGift</N>3304657"
tItem[3304657]["Option4"] = tReturnActivity_Text[3304657]["Option4"]

--高级换赠包
tItem[3304658] = tItem[3304658] or {}
tItem[3304658]["Text1-1"] = {111}
tItem[3304658]["Text111"] = tReturnActivity_Text[3304658]["Text111"]
tItem[3304658]["tOption1-1"] = {1,2}
tItem[3304658]["Option1"] = tReturnActivity_Text[3304658]["Option1"]
tItem[3304658]["OptionPoint1"]="1-2"
tItem[3304658]["Option2"] = tReturnActivity_Text[3304658]["Option2"]

tItem[3304658]["Text1-2"] = {121}
tItem[3304658]["Text121"] = tReturnActivity_Text[3304658]["Text121"]
tItem[3304658]["tOption1-2"] = {3,4}
tItem[3304658]["Option3"] = tReturnActivity_Text[3304658]["Option3"]
tItem[3304658]["OptionFunc3"]="tReturnActivity_GetPayGiftNoTime</N>3304658"
tItem[3304658]["Option4"] = tReturnActivity_Text[3304658]["Option4"]
--豪华气力值包
tItem[3304659] = tItem[3304659] or {}
tItem[3304659]["Function"] = function(nItemId,sItemName)
	tReturnActivity_GetManyStrengthGift(nItemId)
end
--高级+8赤炼石包
tItem[3304660] = tItem[3304660] or {}
tItem[3304660]["Text1-1"] = {111,112}
tItem[3304660]["Text111"] = tReturnActivity_Text[3304660]["Text111"]
tItem[3304660]["Text112"] = tReturnActivity_Text[3304660]["Text112"]
tItem[3304660]["ChkFunc1-1"] = function() 
	tReturnActivity_ShowText(3304660)
	return true
 end
tItem[3304660]["tOption1-1"] = {1,2}
tItem[3304660]["Option1"] = tReturnActivity_Text[3304660]["Option1"]
tItem[3304660]["OptionPoint1"]="1-2"
tItem[3304660]["Option2"] = tReturnActivity_Text[3304660]["Option2"]

tItem[3304660]["Text1-2"] = {121}
tItem[3304660]["Text121"] = tReturnActivity_Text[3304660]["Text121"]
tItem[3304660]["tOption1-2"] = {3,4}
tItem[3304660]["Option3"] = tReturnActivity_Text[3304660]["Option3"]
tItem[3304660]["OptionFunc3"]="tReturnActivity_GetManyGift</N>3304660"
tItem[3304660]["Option4"] = tReturnActivity_Text[3304660]["Option4"]
--小换赠包
tItem[3304661] = tItem[3304661] or {}
tItem[3304661]["Text1-1"] = {111}
tItem[3304661]["Text111"] = tReturnActivity_Text[3304661]["Text111"]
tItem[3304661]["tOption1-1"] = {1,2}
tItem[3304661]["Option1"] = tReturnActivity_Text[3304661]["Option1"]
tItem[3304661]["OptionPoint1"]="1-2"
tItem[3304661]["Option2"] = tReturnActivity_Text[3304661]["Option2"]

tItem[3304661]["Text1-2"] = {121}
tItem[3304661]["Text121"] = tReturnActivity_Text[3304661]["Text121"]
tItem[3304661]["tOption1-2"] = {3,4}
tItem[3304661]["Option3"] = tReturnActivity_Text[3304661]["Option3"]
tItem[3304661]["OptionFunc3"]="tReturnActivity_GetPayGiftNoTime</N>3304661"
tItem[3304661]["Option4"] = tReturnActivity_Text[3304661]["Option4"]
--高级气力值包
tItem[3304662] = tItem[3304662] or {}
tItem[3304662]["Function"] = function(nItemId,sItemName)
	tReturnActivity_GetManyStrengthGift(nItemId)
end
--晶莹星陨石付费包
tItem[3304584] = tItem[3304584] or {}
tItem[3304584]["Text1-1"] = {111}
tItem[3304584]["Text111"] = tReturnActivity_Text[3304584]["Text111"]
tItem[3304584]["tOption1-1"] = {1,2}
tItem[3304584]["Option1"] = tReturnActivity_Text[3304584]["Option1"]
tItem[3304584]["OptionPoint1"]="1-2"
tItem[3304584]["Option2"] = tReturnActivity_Text[3304584]["Option2"]

tItem[3304584]["Text1-2"] = {121}
tItem[3304584]["Text121"] = tReturnActivity_Text[3304584]["Text121"]
tItem[3304584]["tOption1-2"] = {3,4}
tItem[3304584]["Option3"] = tReturnActivity_Text[3304584]["Option3"]
tItem[3304584]["OptionFunc3"]="tReturnActivity_GetPayGift</N>3304584"
tItem[3304584]["Option4"] = tReturnActivity_Text[3304584]["Option4"]
--高级明亮星陨石礼包
tItem[3304585] = tItem[3304585] or {}
tItem[3304585]["Function"] = function(nItemId,sItemName)
	tReturnActivity_GetManyTenGift(nItemId,sItemName)
end