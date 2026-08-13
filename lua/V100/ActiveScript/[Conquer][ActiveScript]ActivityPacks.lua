------------------------------------------------------------------------------------
--Name：        161208[英文征服][活动脚本]1月铁扇之星发奖
--Creator:      丁雨浩
--Created:     2016/12/08
------------------------------------------------------------------------------------
--任务需求：

--1阶富贵礼包:3301732,2阶富贵礼包:3301733,3阶富贵礼包:3301734,4阶富贵礼包:3301735,5阶富贵礼包:3301736
--VIP升星1级礼包:3301737,VIP升星2级礼包:3301738,VIP升星3级礼包:3301739,VIP升星4级礼包:3301740
--VIP升星5级礼包:3301741,VIP升星6级礼包:3301742,VIP升星7级礼包:3301743
--铁扇之星福利礼包:3301744,豪华外套礼包:3301745
--精装外套礼包:3301746,绝美外套礼包:3301145
--LogId:12000596;

------------------------------------------------------------------------------------


--命名格式：ActivityPacks_
----------------------------------表配置部分--------------------------------------------
--
local tActivityPacks_Data = {}
	tActivityPacks_Data["Limit"] = 200
	tActivityPacks_Data["Space"] = 2
	tActivityPacks_Data["LogId"] = 12000596
	tActivityPacks_Data["Luxury"] = 3301745
--富贵礼包
--1阶富贵礼包：
local tActivityPacks_Probability = {}
	tActivityPacks_Probability[3301732] = {}
	tActivityPacks_Probability[3301732][1] = {}
	tActivityPacks_Probability[3301732][1]["ItemChanceSum"] = 10000
	
	tActivityPacks_Probability[3301732][1][1] = {}
	tActivityPacks_Probability[3301732][1][1]["RandomItemChanceType"] = 2
	tActivityPacks_Probability[3301732][1][1]["ItemChance"] = 1250
	tActivityPacks_Probability[3301732][1][1]["Item_1"] = 1
	tActivityPacks_Probability[3301732][1][1]["Type"] = "cp"
	tActivityPacks_Probability[3301732][1][1]["Value"] = 100

	tActivityPacks_Probability[3301732][1][2] = {}
	tActivityPacks_Probability[3301732][1][2]["RandomItemChanceType"] = 2
	tActivityPacks_Probability[3301732][1][2]["ItemChance"] = 1250
	tActivityPacks_Probability[3301732][1][2]["Item_1"] = 2
	tActivityPacks_Probability[3301732][1][2]["Type"] = "cp"
	tActivityPacks_Probability[3301732][1][2]["Value"] = 200

	tActivityPacks_Probability[3301732][1][3] = {}
	tActivityPacks_Probability[3301732][1][3]["RandomItemChanceType"] = 2
	tActivityPacks_Probability[3301732][1][3]["ItemChance"] = 1250
	tActivityPacks_Probability[3301732][1][3]["Item_1"] = 3
	tActivityPacks_Probability[3301732][1][3]["Type"] = "item"
	tActivityPacks_Probability[3301732][1][3]["Value"] = 3004582
	tActivityPacks_Probability[3301732][1][3]["Attr"] = "0 1 3"

	tActivityPacks_Probability[3301732][1][4] = {}
	tActivityPacks_Probability[3301732][1][4]["RandomItemChanceType"] = 2
	tActivityPacks_Probability[3301732][1][4]["ItemChance"] = 1250
	tActivityPacks_Probability[3301732][1][4]["Item_1"] = 4
	tActivityPacks_Probability[3301732][1][4]["Type"] = "item"
	tActivityPacks_Probability[3301732][1][4]["Value"] = 3004580
	tActivityPacks_Probability[3301732][1][4]["Attr"] = "0 1 3"


	tActivityPacks_Probability[3301732][1][5] = {}
	tActivityPacks_Probability[3301732][1][5]["RandomItemChanceType"] = 2
	tActivityPacks_Probability[3301732][1][5]["ItemChance"] = 1250
	tActivityPacks_Probability[3301732][1][5]["Item_1"] = 5
	tActivityPacks_Probability[3301732][1][5]["Type"] = "item"
	tActivityPacks_Probability[3301732][1][5]["Value"] = 3009001
	tActivityPacks_Probability[3301732][1][5]["Attr"] = "0 1 0 2880 1"

	tActivityPacks_Probability[3301732][1][6] = {}
	tActivityPacks_Probability[3301732][1][6]["RandomItemChanceType"] = 2
	tActivityPacks_Probability[3301732][1][6]["ItemChance"] = 1250
	tActivityPacks_Probability[3301732][1][6]["Item_1"] = 6
	tActivityPacks_Probability[3301732][1][6]["Type"] = "item"
	tActivityPacks_Probability[3301732][1][6]["Value"] = 3009001
	tActivityPacks_Probability[3301732][1][6]["Attr"] = "0 2 0 2880 1"
	
	tActivityPacks_Probability[3301732][1][7] = {}
	tActivityPacks_Probability[3301732][1][7]["RandomItemChanceType"] = 2
	tActivityPacks_Probability[3301732][1][7]["ItemChance"] = 1250
	tActivityPacks_Probability[3301732][1][7]["Item_1"] = 7
	tActivityPacks_Probability[3301732][1][7]["Type"] = "item"
	tActivityPacks_Probability[3301732][1][7]["Value"] = 3004470
	tActivityPacks_Probability[3301732][1][7]["Attr"] = "0 1 3"

	tActivityPacks_Probability[3301732][1][8] = {}
	tActivityPacks_Probability[3301732][1][8]["RandomItemChanceType"] = 2
	tActivityPacks_Probability[3301732][1][8]["ItemChance"] = 1250
	tActivityPacks_Probability[3301732][1][8]["Item_1"] = 8
	tActivityPacks_Probability[3301732][1][8]["Type"] = "item"
	tActivityPacks_Probability[3301732][1][8]["Value"] = 3004470
	tActivityPacks_Probability[3301732][1][8]["Attr"] = "0 2 3"
	
--奖励表
local tActivityPacks_Reward = {}
	--2阶富贵礼包
	tActivityPacks_Reward[3301733] = {}
	tActivityPacks_Reward[3301733]["LogId"] = 12000596
	tActivityPacks_Reward[3301733]["DeleteItem"] = {}
	tActivityPacks_Reward[3301733]["DeleteItem"][1] = {}
	tActivityPacks_Reward[3301733]["DeleteItem"][1]["Id"] = 3301733
	tActivityPacks_Reward[3301733]["RewardItem"] = {}
	tActivityPacks_Reward[3301733]["RewardItem"][1] = {}
	tActivityPacks_Reward[3301733]["RewardItem"][1]["Id"] = 193625
	tActivityPacks_Reward[3301733]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tActivityPacks_Reward[3301733]["RewardItem"][2] = {}
	tActivityPacks_Reward[3301733]["RewardItem"][2]["Id"] = 3004581
	tActivityPacks_Reward[3301733]["RewardItem"][2]["Attr"] = "0 1 3"
	tActivityPacks_Reward[3301733]["RewardEMoneyMono"] = {}
	tActivityPacks_Reward[3301733]["RewardEMoneyMono"]["Value"] = 500
	tActivityPacks_Reward[3301733]["EMoneyMono"] = tActivityPacks_Text["MsgBox"][2]
	--3阶富贵礼包
	tActivityPacks_Reward[3301734] = {}
	tActivityPacks_Reward[3301734]["LogId"] = 12000596
	tActivityPacks_Reward[3301734]["DeleteItem"] = {}
	tActivityPacks_Reward[3301734]["DeleteItem"][1] = {}
	tActivityPacks_Reward[3301734]["DeleteItem"][1]["Id"] = 3301734
	tActivityPacks_Reward[3301734]["RewardItem"] = {}
	tActivityPacks_Reward[3301734]["RewardItem"][1] = {}
	tActivityPacks_Reward[3301734]["RewardItem"][1]["Id"] = 193205
	tActivityPacks_Reward[3301734]["RewardItem"][1]["Attr"] = "0 1 3 518400 1 0 0 1"
	tActivityPacks_Reward[3301734]["RewardEMoneyMono"] = {}
	tActivityPacks_Reward[3301734]["RewardEMoneyMono"]["Value"] = 10000
	tActivityPacks_Reward[3301734]["EMoneyMono"] = tActivityPacks_Text["MsgBox"][2]
	--4阶富贵礼包
	tActivityPacks_Reward[3301735] = {}
	tActivityPacks_Reward[3301735]["LogId"] = 12000596
	tActivityPacks_Reward[3301735]["DeleteItem"] = {}
	tActivityPacks_Reward[3301735]["DeleteItem"][1] = {}
	tActivityPacks_Reward[3301735]["DeleteItem"][1]["Id"] = 3301735
	tActivityPacks_Reward[3301735]["RewardItem"] = {}
	tActivityPacks_Reward[3301735]["RewardItem"][1] = {}
	tActivityPacks_Reward[3301735]["RewardItem"][1]["Id"] = 193205
	tActivityPacks_Reward[3301735]["RewardItem"][1]["Attr"] = "0 1 0 0 1 0 0 1"
	tActivityPacks_Reward[3301735]["RewardEMoneyMono"] = {}
	tActivityPacks_Reward[3301735]["RewardEMoneyMono"]["Value"] = 30000
	tActivityPacks_Reward[3301735]["EMoneyMono"] = tActivityPacks_Text["MsgBox"][2]
	--5阶富贵礼包
	tActivityPacks_Reward[3301736] = {}
	tActivityPacks_Reward[3301736]["LogId"] = 12000596
	tActivityPacks_Reward[3301736]["DeleteItem"] = {}
	tActivityPacks_Reward[3301736]["DeleteItem"][1] = {}
	tActivityPacks_Reward[3301736]["DeleteItem"][1]["Id"] = 3301736
	tActivityPacks_Reward[3301736]["RewardItem"] = {}
	tActivityPacks_Reward[3301736]["RewardItem"][1] = {}
	tActivityPacks_Reward[3301736]["RewardItem"][1]["Id"] = 193625
	tActivityPacks_Reward[3301736]["RewardItem"][1]["Attr"] = "0 1 0 0 1 0 0 1"
	tActivityPacks_Reward[3301736]["RewardEMoney"] = {}
	tActivityPacks_Reward[3301736]["RewardEMoney"]["Value"] = 50000
	tActivityPacks_Reward[3301736]["EMoney"] = tActivityPacks_Text["MsgBox"][3]
	--VIP升星1级礼包
	tActivityPacks_Reward[3301737] = {}
	tActivityPacks_Reward[3301737]["LogId"] = 12000596
	tActivityPacks_Reward[3301737]["DeleteItem"] = {}
	tActivityPacks_Reward[3301737]["DeleteItem"][1] = {}
	tActivityPacks_Reward[3301737]["DeleteItem"][1]["Id"] = 3301737
	tActivityPacks_Reward[3301737]["RewardItem"] = {}
	tActivityPacks_Reward[3301737]["RewardItem"][1] = {}
	tActivityPacks_Reward[3301737]["RewardItem"][1]["Id"] = 1088000
	tActivityPacks_Reward[3301737]["RewardItem"][1]["Attr"] = "0 1"
	tActivityPacks_Reward[3301737]["RewardItem"][2] = {}
	tActivityPacks_Reward[3301737]["RewardItem"][2]["Id"] = 3003124
	tActivityPacks_Reward[3301737]["RewardItem"][2]["Attr"] = "0 10 3"
	tActivityPacks_Reward[3301737]["RewardItem"][3] = {}
	tActivityPacks_Reward[3301737]["RewardItem"][3]["Id"] = 3009001
	tActivityPacks_Reward[3301737]["RewardItem"][3]["Attr"] = "0 1 0 2880 1"
	--VIP升星2级礼包
	tActivityPacks_Reward[3301738] = {}
	tActivityPacks_Reward[3301738]["LogId"] = 12000596
	tActivityPacks_Reward[3301738]["DeleteItem"] = {}
	tActivityPacks_Reward[3301738]["DeleteItem"][1] = {}
	tActivityPacks_Reward[3301738]["DeleteItem"][1]["Id"] = 3301738
	tActivityPacks_Reward[3301738]["RewardItem"] = {}
	tActivityPacks_Reward[3301738]["RewardItem"][1] = {}
	tActivityPacks_Reward[3301738]["RewardItem"][1]["Id"] = 730003
	tActivityPacks_Reward[3301738]["RewardItem"][1]["Attr"] = "0 2"
	tActivityPacks_Reward[3301738]["RewardItem"][2] = {}
	tActivityPacks_Reward[3301738]["RewardItem"][2]["Id"] = 3003124
	tActivityPacks_Reward[3301738]["RewardItem"][2]["Attr"] = "0 10 3"
	tActivityPacks_Reward[3301738]["RewardItem"][3] = {}
	tActivityPacks_Reward[3301738]["RewardItem"][3]["Id"] = 3009001
	tActivityPacks_Reward[3301738]["RewardItem"][3]["Attr"] = "0 2 0 2880 1"
	--VIP升星3级礼包
	tActivityPacks_Reward[3301739] = {}
	tActivityPacks_Reward[3301739]["LogId"] = 12000596
	tActivityPacks_Reward[3301739]["DeleteItem"] = {}
	tActivityPacks_Reward[3301739]["DeleteItem"][1] = {}
	tActivityPacks_Reward[3301739]["DeleteItem"][1]["Id"] = 3301739
	tActivityPacks_Reward[3301739]["RewardItem"] = {}
	tActivityPacks_Reward[3301739]["RewardItem"][1] = {}
	tActivityPacks_Reward[3301739]["RewardItem"][1]["Id"] = 723694
	tActivityPacks_Reward[3301739]["RewardItem"][1]["Attr"] = "0 1"
	tActivityPacks_Reward[3301739]["RewardItem"][2] = {}
	tActivityPacks_Reward[3301739]["RewardItem"][2]["Id"] = 729139
	tActivityPacks_Reward[3301739]["RewardItem"][2]["Attr"] = "0 3"
	tActivityPacks_Reward[3301739]["RewardItem"][3] = {}
	tActivityPacks_Reward[3301739]["RewardItem"][3]["Id"] = 3003126
	tActivityPacks_Reward[3301739]["RewardItem"][3]["Attr"] = "0 5 3"
	tActivityPacks_Reward[3301739]["RewardItem"][4] = {}
	tActivityPacks_Reward[3301739]["RewardItem"][4]["Id"] = 3009001
	tActivityPacks_Reward[3301739]["RewardItem"][4]["Attr"] = "0 4 0 2880 1"
	tActivityPacks_Reward[3301739]["RewardStrengthValue"] = {}
	tActivityPacks_Reward[3301739]["RewardStrengthValue"]["Value"]  = 1500
	--VIP升星4级礼包
	tActivityPacks_Reward[3301740] = {}
	tActivityPacks_Reward[3301740]["LogId"] = 12000596
	tActivityPacks_Reward[3301740]["DeleteItem"] = {}
	tActivityPacks_Reward[3301740]["DeleteItem"][1] = {}
	tActivityPacks_Reward[3301740]["DeleteItem"][1]["Id"] = 3301740
	tActivityPacks_Reward[3301740]["RewardItem"] = {}
	tActivityPacks_Reward[3301740]["RewardItem"][1] = {}
	tActivityPacks_Reward[3301740]["RewardItem"][1]["Id"] = 730004
	tActivityPacks_Reward[3301740]["RewardItem"][1]["Attr"] = "0 1"
	tActivityPacks_Reward[3301740]["RewardItem"][2] = {}
	tActivityPacks_Reward[3301740]["RewardItem"][2]["Id"] = 724002
	tActivityPacks_Reward[3301740]["RewardItem"][2]["Attr"] = "0 5"
	tActivityPacks_Reward[3301740]["RewardItem"][3] = {}
	tActivityPacks_Reward[3301740]["RewardItem"][3]["Id"] = 3003126
	tActivityPacks_Reward[3301740]["RewardItem"][3]["Attr"] = "0 12 3"
	tActivityPacks_Reward[3301740]["RewardItem"][4] = {}
	tActivityPacks_Reward[3301740]["RewardItem"][4]["Id"] = 3009002
	tActivityPacks_Reward[3301740]["RewardItem"][4]["Attr"] = "0 1 0 2880 1"
	tActivityPacks_Reward[3301740]["RewardStrengthValue"] = {}
	tActivityPacks_Reward[3301740]["RewardStrengthValue"]["Value"]  = 6000
	--VIP升星5级礼包
	tActivityPacks_Reward[3301741] = {}
	tActivityPacks_Reward[3301741]["LogId"] = 12000596
	tActivityPacks_Reward[3301741]["DeleteItem"] = {}
	tActivityPacks_Reward[3301741]["DeleteItem"][1] = {}
	tActivityPacks_Reward[3301741]["DeleteItem"][1]["Id"] = 3301741
	tActivityPacks_Reward[3301741]["RewardItem"] = {}
	tActivityPacks_Reward[3301741]["RewardItem"][1] = {}
	tActivityPacks_Reward[3301741]["RewardItem"][1]["Id"] = 723694
	tActivityPacks_Reward[3301741]["RewardItem"][1]["Attr"] = "0 2"
	tActivityPacks_Reward[3301741]["RewardItem"][2] = {}
	tActivityPacks_Reward[3301741]["RewardItem"][2]["Id"] = 3003126
	tActivityPacks_Reward[3301741]["RewardItem"][2]["Attr"] = "0 20 3"
	tActivityPacks_Reward[3301741]["RewardItem"][3] = {}
	tActivityPacks_Reward[3301741]["RewardItem"][3]["Id"] = 3009002
	tActivityPacks_Reward[3301741]["RewardItem"][3]["Attr"] = "0 5 0 2880 1"
	tActivityPacks_Reward[3301741]["RewardStrengthValue"] = {}
	tActivityPacks_Reward[3301741]["RewardStrengthValue"]["Value"]  = 7500
	
	--VIP升星6级礼包
	tActivityPacks_Reward[3301742] = {}
	tActivityPacks_Reward[3301742]["LogId"] = 12000596
	tActivityPacks_Reward[3301742]["DeleteItem"] = {}
	tActivityPacks_Reward[3301742]["DeleteItem"][1] = {}
	tActivityPacks_Reward[3301742]["DeleteItem"][1]["Id"] = 3301742
	tActivityPacks_Reward[3301742]["RewardItem"] = {}
	tActivityPacks_Reward[3301742]["RewardItem"][1] = {}
	tActivityPacks_Reward[3301742]["RewardItem"][1]["Id"] = 723694
	tActivityPacks_Reward[3301742]["RewardItem"][1]["Attr"] = "0 3"
	tActivityPacks_Reward[3301742]["RewardItem"][2] = {}
	tActivityPacks_Reward[3301742]["RewardItem"][2]["Id"] = 3009002
	tActivityPacks_Reward[3301742]["RewardItem"][2]["Attr"] = "0 4 0 2880 1"
	tActivityPacks_Reward[3301742]["RewardItem"][3] = {}
	tActivityPacks_Reward[3301742]["RewardItem"][3]["Id"] = 3005360
	tActivityPacks_Reward[3301742]["RewardItem"][3]["Attr"] = "0 1 3"
	tActivityPacks_Reward[3301742]["RewardItem"][4] = {}
	tActivityPacks_Reward[3301742]["RewardItem"][4]["Id"] = 3301746
	tActivityPacks_Reward[3301742]["RewardItem"][4]["Attr"] = "0 1"
	tActivityPacks_Reward[3301742]["RewardStrengthValue"] = {}
	tActivityPacks_Reward[3301742]["RewardStrengthValue"]["Value"]  = 10000
	
	--VIP升星7级礼包
	tActivityPacks_Reward[3301743] = {}
	tActivityPacks_Reward[3301743]["LogId"] = 12000596
	tActivityPacks_Reward[3301743]["DeleteItem"] = {}
	tActivityPacks_Reward[3301743]["DeleteItem"][1] = {}
	tActivityPacks_Reward[3301743]["DeleteItem"][1]["Id"] = 3301743
	tActivityPacks_Reward[3301743]["RewardItem"] = {}
	tActivityPacks_Reward[3301743]["RewardItem"][1] = {}
	tActivityPacks_Reward[3301743]["RewardItem"][1]["Id"] = 723694
	tActivityPacks_Reward[3301743]["RewardItem"][1]["Attr"] = "0 3"
	tActivityPacks_Reward[3301743]["RewardItem"][2] = {}
	tActivityPacks_Reward[3301743]["RewardItem"][2]["Id"] = 3009002
	tActivityPacks_Reward[3301743]["RewardItem"][2]["Attr"] = "0 4 0 2880 1"
	tActivityPacks_Reward[3301743]["RewardItem"][3] = {}
	tActivityPacks_Reward[3301743]["RewardItem"][3]["Id"] = 3005360
	tActivityPacks_Reward[3301743]["RewardItem"][3]["Attr"] = "0 1 3"
	tActivityPacks_Reward[3301743]["RewardItem"][4] = {}
	tActivityPacks_Reward[3301743]["RewardItem"][4]["Id"] = 3301145
	tActivityPacks_Reward[3301743]["RewardItem"][4]["Attr"] = "0 1"
	tActivityPacks_Reward[3301743]["RewardStrengthValue"] = {}
	tActivityPacks_Reward[3301743]["RewardStrengthValue"]["Value"]  = 10000
	--铁扇之星福利礼包
	tActivityPacks_Reward[3301744] = {}
	tActivityPacks_Reward[3301744]["LogId"] = 12000596
	tActivityPacks_Reward[3301744]["DeleteItem"] = {}
	tActivityPacks_Reward[3301744]["DeleteItem"][1] = {}
	tActivityPacks_Reward[3301744]["DeleteItem"][1]["Id"] = 3301744
	tActivityPacks_Reward[3301744]["RewardItem"] = {}
	tActivityPacks_Reward[3301744]["RewardItem"][1] = {}
	tActivityPacks_Reward[3301744]["RewardItem"][1]["Id"] = 723700
	tActivityPacks_Reward[3301744]["RewardItem"][1]["Attr"] = "0 7 3"
	tActivityPacks_Reward[3301744]["RewardItem"][2] = {}
	tActivityPacks_Reward[3301744]["RewardItem"][2]["Id"] = 723017
	tActivityPacks_Reward[3301744]["RewardItem"][2]["Attr"] = "0 7 3"
	tActivityPacks_Reward[3301744]["RewardItem"][3] = {}
	tActivityPacks_Reward[3301744]["RewardItem"][3]["Id"] = 1200001
	tActivityPacks_Reward[3301744]["RewardItem"][3]["Attr"] = "0 1 3"
	tActivityPacks_Reward[3301744]["RewardItem"][4] = {}
	tActivityPacks_Reward[3301744]["RewardItem"][4]["Id"] = 3004879
	tActivityPacks_Reward[3301744]["RewardItem"][4]["Attr"] = "0 1 3"
	tActivityPacks_Reward[3301744]["RewardItem"][5] = {}
	tActivityPacks_Reward[3301744]["RewardItem"][5]["Id"] = 3004880
	tActivityPacks_Reward[3301744]["RewardItem"][5]["Attr"] = "0 1 3"
	tActivityPacks_Reward[3301744]["RewardItem"][6] = {}
	tActivityPacks_Reward[3301744]["RewardItem"][6]["Id"] = 626028
	tActivityPacks_Reward[3301744]["RewardItem"][6]["Attr"] = "0 2 3"
	tActivityPacks_Reward[3301744]["RewardItem"][7] = {}
	tActivityPacks_Reward[3301744]["RewardItem"][7]["Id"] = 3007031
	tActivityPacks_Reward[3301744]["RewardItem"][7]["Attr"] = "0 1 3"
	tActivityPacks_Reward[3301744]["RewardItem"][8] = {}
	tActivityPacks_Reward[3301744]["RewardItem"][8]["Id"] = 3301745
	tActivityPacks_Reward[3301744]["RewardItem"][8]["Attr"] = "0 1"
	tActivityPacks_Reward[3301744]["RewardEMoneyMono"] = {}
	tActivityPacks_Reward[3301744]["RewardEMoneyMono"]["Value"] = 500
	tActivityPacks_Reward[3301744]["EMoneyMono"] = tActivityPacks_Text["MsgBox"][2]

	
----------------------------------逻辑部分--------------------------------------------
--1阶富贵礼包使用
function ActivityPacks_UseFirst(nItemId)
	--判断赠点上限
	if Get_UserMonoEMoney() + tActivityPacks_Data["Limit"] > G_User_MaxEmoneyMono then
		Sys_MsgBox(tActivityPacks_Text["MsgBox"][2])
		return
	end
	--背包空间判断
	if not User_CheckLeftSpace(tActivityPacks_Data["Space"]) then
		local sText = string.format(tActivityPacks_Text["MsgBox"][1],tActivityPacks_Data["Space"])
		return Sys_MsgBox(sText)
	end
	--给物品
	if	Item_ChkItem(nItemId) then
		local flat,tNum = Probabil_RandomAward(tActivityPacks_Probability[nItemId],1)
		local nChoose = tNum[1]["tAward"][1]["Item_1"]
		local sType = tNum[1]["tAward"][1]["Type"]
		local nValue = tNum[1]["tAward"][1]["Value"]
		local tReward = {}
		tReward["LogId"] = tActivityPacks_Data["LogId"]
		tReward["DeleteItem"] = {}
		tReward["DeleteItem"][1] = {}
		tReward["DeleteItem"][1]["Id"] = nItemId
		if sType == "cp" then
			tReward["RewardEMoneyMono"] = {}
			tReward["RewardEMoneyMono"]["Value"] = nValue
		else
			local nAttr = tNum[1]["tAward"][1]["Attr"]
			tReward["RewardItem"] = {}
			tReward["RewardItem"][1] = {}
			tReward["RewardItem"][1]["Id"] = nValue
			tReward["RewardItem"][1]["Attr"] = nAttr
		end
		RewardTemplate_UseItemAndMsg(tReward)
	end
end
--外套选择礼包
function ActivityPacks_UseChooseGift(nItemId,nCoatId)
	local tReward = {}
	tReward["LogId"] = tActivityPacks_Data["LogId"]
	tReward["DeleteItem"] = {}
	tReward["DeleteItem"][1] = {}
	tReward["DeleteItem"][1]["Id"] = nItemId
	tReward["RewardItem"] = {}
	tReward["RewardItem"][1] = {}
	tReward["RewardItem"][1]["Id"] = nCoatId
	if	nItemId == tActivityPacks_Data["Luxury"] then
		tReward["RewardItem"][1]["Attr"] = "0 1 3"
	else
		tReward["RewardItem"][1]["Attr"] = "0 1 0 0 1 0 0 1"
	end
	RewardTemplate_UseItemAndMsg(tReward)
end


---------------------------------物品部分---------------------------------------------
tItem[3301732] = tItem[3301732] or {}
tItem[3301732]["Function"] = function(nItemId,sItemName)
	ActivityPacks_UseFirst(nItemId)
end
tItem[3301733] = tItem[3301733] or {}
tItem[3301733]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tActivityPacks_Reward[nItemId])
end
tItem[3301734] = tItem[3301734] or {}
tItem[3301734]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tActivityPacks_Reward[nItemId])
end
tItem[3301735] = tItem[3301735] or {}
tItem[3301735]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tActivityPacks_Reward[nItemId])
end
tItem[3301736] = tItem[3301736] or {}
tItem[3301736]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tActivityPacks_Reward[nItemId])
end
tItem[3301737] = tItem[3301737] or {}
tItem[3301737]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tActivityPacks_Reward[nItemId])
end
tItem[3301738] = tItem[3301738] or {}
tItem[3301738]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tActivityPacks_Reward[nItemId])
end
tItem[3301739] = tItem[3301739] or {}
tItem[3301739]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tActivityPacks_Reward[nItemId])
end
tItem[3301740] = tItem[3301740] or {}
tItem[3301740]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tActivityPacks_Reward[nItemId])
end
tItem[3301741] = tItem[3301741] or {}
tItem[3301741]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tActivityPacks_Reward[nItemId])
end
tItem[3301742] = tItem[3301742] or {}
tItem[3301742]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tActivityPacks_Reward[nItemId])
end
tItem[3301743] = tItem[3301743] or {}
tItem[3301743]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tActivityPacks_Reward[nItemId])
end
tItem[3301744] = tItem[3301744] or {}
tItem[3301744]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tActivityPacks_Reward[nItemId])
end

--精装外套礼包
tItem[3301746] = tItem[3301746] or {}
tItem[3301746]["DialogueText"] = tActivityPacks_Text[3301746]
tItem[3301746]["Text1-1"] = {111}
tItem[3301746]["tOption1-1"] = {111,112,113,114}
tItem[3301746]["OptionPoint111"] = "1-2"
tItem[3301746]["OptionPoint112"] = "1-3"
tItem[3301746]["OptionPoint113"] = "1-4"

tItem[3301746]["Text1-2"] = {121}
tItem[3301746]["tOption1-2"] = {121,122}
tItem[3301746]["OptionFunc121"] = "ActivityPacks_UseChooseGift</N>3301746</N>200481"
tItem[3301746]["OptionPoint122"] = "1-1"

tItem[3301746]["Text1-3"] = {131}
tItem[3301746]["tOption1-3"] = {131,132}
tItem[3301746]["OptionFunc131"] = "ActivityPacks_UseChooseGift</N>3301746</N>200449"
tItem[3301746]["OptionPoint132"] = "1-1"

tItem[3301746]["Text1-4"] = {141}
tItem[3301746]["tOption1-4"] = {141,142}
tItem[3301746]["OptionFunc141"] = "ActivityPacks_UseChooseGift</N>3301746</N>200482"
tItem[3301746]["OptionPoint142"] = "1-1"

--绝美外套礼包
tItemFace[3301145] = 559
tItem[3301145] = tItem[3301145] or {}
tItem[3301145]["DialogueText"] = tActivityPacks_Text[3301145]
tItem[3301145]["Text1-1"] = {111}
tItem[3301145]["tOption1-1"] = {111,112,113}
tItem[3301145]["OptionPoint111"] = "1-2"
tItem[3301145]["OptionPoint112"] = "1-3"

tItem[3301145]["Text1-2"] = {121}
tItem[3301145]["tOption1-2"] = {121,122}
tItem[3301145]["OptionFunc121"] = "ActivityPacks_UseChooseGift</N>3301145</N>188495"
tItem[3301145]["OptionPoint122"] = "1-1"

tItem[3301145]["Text1-3"] = {131}
tItem[3301145]["tOption1-3"] = {131,132}
tItem[3301145]["OptionFunc131"] = "ActivityPacks_UseChooseGift</N>3301145</N>192785"
tItem[3301145]["OptionPoint132"] = "1-1"

--精装外套礼包
tItem[3301745] = tItem[3301745] or {}
tItem[3301745]["DialogueText"] = tActivityPacks_Text[3301745]
tItem[3301745]["Text1-1"] = {111}
tItem[3301745]["tOption1-1"] = {111,112,113,114}
tItem[3301745]["OptionPoint111"] = "1-2"
tItem[3301745]["OptionPoint112"] = "1-3"
tItem[3301745]["OptionPoint113"] = "1-4"

tItem[3301745]["Text1-2"] = {121}
tItem[3301745]["tOption1-2"] = {121,122}
tItem[3301745]["OptionFunc121"] = "ActivityPacks_UseChooseGift</N>3301745</N>183375"
tItem[3301745]["OptionPoint122"] = "1-1"

tItem[3301745]["Text1-3"] = {131}
tItem[3301745]["tOption1-3"] = {131,132}
tItem[3301745]["OptionFunc131"] = "ActivityPacks_UseChooseGift</N>3301745</N>188295"
tItem[3301745]["OptionPoint132"] = "1-1"

tItem[3301745]["Text1-4"] = {141}
tItem[3301745]["tOption1-4"] = {141,142}
tItem[3301745]["OptionFunc141"] = "ActivityPacks_UseChooseGift</N>3301745</N>193105"
tItem[3301745]["OptionPoint142"] = "1-1"
