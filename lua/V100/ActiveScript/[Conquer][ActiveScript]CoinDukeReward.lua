------------------------------------------------------------------------------------
--Name：            180716[英文征服][活动脚本]8月金币冲爵位发奖action制作
--Creator:      蔡颖静
--Created:     2018/07/16
------------------------------------------------------------------------------------
--任务需求：
--前缀：CoinDuckReward_
------------------------------------------------------------------------------------
----------------------------------表配置部分--------------------------------------------

local tCoinDuckReward_Data={}
--神佑1永久坐骑外套四选一礼包
tCoinDuckReward_Data[3310142]={}
tCoinDuckReward_Data[3310142][200564]={}
tCoinDuckReward_Data[3310142][200564]["LogId"] =12001119
tCoinDuckReward_Data[3310142][200564]["DeleteItem"] = {}
tCoinDuckReward_Data[3310142][200564]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310142][200564]["DeleteItem"][1]["Id"]=3310142
tCoinDuckReward_Data[3310142][200564]["RewardItem"] = {}
tCoinDuckReward_Data[3310142][200564]["RewardItem"][1]={}
tCoinDuckReward_Data[3310142][200564]["RewardItem"][1]["Id"]= 200564
tCoinDuckReward_Data[3310142][200564]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

tCoinDuckReward_Data[3310142][200494]={}
tCoinDuckReward_Data[3310142][200494]["LogId"] =12001119
tCoinDuckReward_Data[3310142][200494]["DeleteItem"] = {}
tCoinDuckReward_Data[3310142][200494]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310142][200494]["DeleteItem"][1]["Id"]=3310142
tCoinDuckReward_Data[3310142][200494]["RewardItem"] = {}
tCoinDuckReward_Data[3310142][200494]["RewardItem"][1]={}
tCoinDuckReward_Data[3310142][200494]["RewardItem"][1]["Id"]= 200494
tCoinDuckReward_Data[3310142][200494]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

tCoinDuckReward_Data[3310142][200592]={}
tCoinDuckReward_Data[3310142][200592]["LogId"] =12001119
tCoinDuckReward_Data[3310142][200592]["DeleteItem"] = {}
tCoinDuckReward_Data[3310142][200592]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310142][200592]["DeleteItem"][1]["Id"]=3310142
tCoinDuckReward_Data[3310142][200592]["RewardItem"] = {}
tCoinDuckReward_Data[3310142][200592]["RewardItem"][1]={}
tCoinDuckReward_Data[3310142][200592]["RewardItem"][1]["Id"]= 200592
tCoinDuckReward_Data[3310142][200592]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

tCoinDuckReward_Data[3310142][200623]={}
tCoinDuckReward_Data[3310142][200623]["LogId"] =12001119
tCoinDuckReward_Data[3310142][200623]["DeleteItem"] = {}
tCoinDuckReward_Data[3310142][200623]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310142][200623]["DeleteItem"][1]["Id"]=3310142
tCoinDuckReward_Data[3310142][200623]["RewardItem"] = {}
tCoinDuckReward_Data[3310142][200623]["RewardItem"][1]={}
tCoinDuckReward_Data[3310142][200623]["RewardItem"][1]["Id"]= 200623
tCoinDuckReward_Data[3310142][200623]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

--神佑1永久坐骑外套三选一礼包
tCoinDuckReward_Data[3310143]={}
tCoinDuckReward_Data[3310143][200621]={}
tCoinDuckReward_Data[3310143][200621]["LogId"] =12001119
tCoinDuckReward_Data[3310143][200621]["DeleteItem"] = {}
tCoinDuckReward_Data[3310143][200621]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310143][200621]["DeleteItem"][1]["Id"]=3310143
tCoinDuckReward_Data[3310143][200621]["RewardItem"] = {}
tCoinDuckReward_Data[3310143][200621]["RewardItem"][1]={}
tCoinDuckReward_Data[3310143][200621]["RewardItem"][1]["Id"]= 200621
tCoinDuckReward_Data[3310143][200621]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

tCoinDuckReward_Data[3310143][200595]={}
tCoinDuckReward_Data[3310143][200595]["LogId"] =12001119
tCoinDuckReward_Data[3310143][200595]["DeleteItem"] = {}
tCoinDuckReward_Data[3310143][200595]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310143][200595]["DeleteItem"][1]["Id"]=3310143
tCoinDuckReward_Data[3310143][200595]["RewardItem"] = {}
tCoinDuckReward_Data[3310143][200595]["RewardItem"][1]={}
tCoinDuckReward_Data[3310143][200595]["RewardItem"][1]["Id"]= 200595
tCoinDuckReward_Data[3310143][200595]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

tCoinDuckReward_Data[3310143][200622]={}
tCoinDuckReward_Data[3310143][200622]["LogId"] =12001119
tCoinDuckReward_Data[3310143][200622]["DeleteItem"] = {}
tCoinDuckReward_Data[3310143][200622]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310143][200622]["DeleteItem"][1]["Id"]=3310143
tCoinDuckReward_Data[3310143][200622]["RewardItem"] = {}
tCoinDuckReward_Data[3310143][200622]["RewardItem"][1]={}
tCoinDuckReward_Data[3310143][200622]["RewardItem"][1]["Id"]= 200622
tCoinDuckReward_Data[3310143][200622]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"

--神佑180天坐骑外套二选一礼包
tCoinDuckReward_Data[3310144]={}
tCoinDuckReward_Data[3310144][200557]={}
tCoinDuckReward_Data[3310144][200557]["LogId"] =12001119
tCoinDuckReward_Data[3310144][200557]["DeleteItem"] = {}
tCoinDuckReward_Data[3310144][200557]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310144][200557]["DeleteItem"][1]["Id"]=3310144
tCoinDuckReward_Data[3310144][200557]["RewardItem"] = {}
tCoinDuckReward_Data[3310144][200557]["RewardItem"][1]={}
tCoinDuckReward_Data[3310144][200557]["RewardItem"][1]["Id"]= 200557
tCoinDuckReward_Data[3310144][200557]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1"

tCoinDuckReward_Data[3310144][200556]={}
tCoinDuckReward_Data[3310144][200556]["LogId"] =12001119
tCoinDuckReward_Data[3310144][200556]["DeleteItem"] = {}
tCoinDuckReward_Data[3310144][200556]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310144][200556]["DeleteItem"][1]["Id"]=3310144
tCoinDuckReward_Data[3310144][200556]["RewardItem"] = {}
tCoinDuckReward_Data[3310144][200556]["RewardItem"][1]={}
tCoinDuckReward_Data[3310144][200556]["RewardItem"][1]["Id"]= 200556
tCoinDuckReward_Data[3310144][200556]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1"

--每日爵位回馈礼包（赠）
tCoinDuckReward_Data[3310145]={}
tCoinDuckReward_Data[3310145]["LogId"] =12001119
tCoinDuckReward_Data[3310145]["DeleteItem"] = {}
tCoinDuckReward_Data[3310145]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310145]["DeleteItem"][1]["Id"]=3310145
tCoinDuckReward_Data[3310145]["RewardItem"] = {}
tCoinDuckReward_Data[3310145]["RewardItem"][1]={}
tCoinDuckReward_Data[3310145]["RewardItem"][1]["Id"]= 730002
tCoinDuckReward_Data[3310145]["RewardItem"][1]["Attr"] = "0 1 3"

--爵位冲击礼包礼包（赠）
tCoinDuckReward_Data[3310146]={}
tCoinDuckReward_Data[3310146]["LogId"] =12001119
tCoinDuckReward_Data[3310146]["DeleteItem"] = {}
tCoinDuckReward_Data[3310146]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310146]["DeleteItem"][1]["Id"]=3310146
tCoinDuckReward_Data[3310146]["RewardItem"] = {}
tCoinDuckReward_Data[3310146]["RewardItem"][1]={}
tCoinDuckReward_Data[3310146]["RewardItem"][1]["Id"]= 729481
tCoinDuckReward_Data[3310146]["RewardItem"][1]["Attr"] = "0 1 3"
tCoinDuckReward_Data[3310146]["RewardItem"][2]={}
tCoinDuckReward_Data[3310146]["RewardItem"][2]["Id"]= 3009001
tCoinDuckReward_Data[3310146]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
tCoinDuckReward_Data[3310146]["RewardItem"][3]={}
tCoinDuckReward_Data[3310146]["RewardItem"][3]["Id"]= 3003124
tCoinDuckReward_Data[3310146]["RewardItem"][3]["Attr"] = "0 10 3"
tCoinDuckReward_Data[3310146]["RewardItem"][4]={}
tCoinDuckReward_Data[3310146]["RewardItem"][4]["Id"]= 4060001
tCoinDuckReward_Data[3310146]["RewardItem"][4]["Attr"] = "0 10 3"

--琥珀爵位礼包
tCoinDuckReward_Data[3310147]={}
tCoinDuckReward_Data[3310147]["LogId"] =12001119
tCoinDuckReward_Data[3310147]["DeleteItem"] = {}
tCoinDuckReward_Data[3310147]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310147]["DeleteItem"][1]["Id"]=3310147
tCoinDuckReward_Data[3310147]["RewardItem"] = {}
tCoinDuckReward_Data[3310147]["RewardItem"][1]={}
tCoinDuckReward_Data[3310147]["RewardItem"][1]["Id"]= 3310142
tCoinDuckReward_Data[3310147]["RewardItem"][1]["Attr"] = "0 1"
tCoinDuckReward_Data[3310147]["RewardItem"][2]={}
tCoinDuckReward_Data[3310147]["RewardItem"][2]["Id"]= 3303244
tCoinDuckReward_Data[3310147]["RewardItem"][2]["Attr"] = "0 1"
tCoinDuckReward_Data[3310147]["RewardItem"][3]={}
tCoinDuckReward_Data[3310147]["RewardItem"][3]["Id"]= 3306370
tCoinDuckReward_Data[3310147]["RewardItem"][3]["Attr"] = "0 50 3"
tCoinDuckReward_Data[3310147]["RewardItem"][4]={}
tCoinDuckReward_Data[3310147]["RewardItem"][4]["Id"]= 3003124
tCoinDuckReward_Data[3310147]["RewardItem"][4]["Attr"] = "0 300"
tCoinDuckReward_Data[3310147]["RewardItem"][5]={}
tCoinDuckReward_Data[3310147]["RewardItem"][5]["Id"]= 3009003
tCoinDuckReward_Data[3310147]["RewardItem"][5]["Attr"] = "0 5 0 2880 1"
tCoinDuckReward_Data[3310147]["RewardItem"][6]={}
tCoinDuckReward_Data[3310147]["RewardItem"][6]["Id"]= 3002030
tCoinDuckReward_Data[3310147]["RewardItem"][6]["Attr"] = "0 200"
tCoinDuckReward_Data[3310147]["RewardItem"][7]={}
tCoinDuckReward_Data[3310147]["RewardItem"][7]["Id"]= 3003126
tCoinDuckReward_Data[3310147]["RewardItem"][7]["Attr"] = "0 200"

--钻石爵位礼包
tCoinDuckReward_Data[3310148]={}
tCoinDuckReward_Data[3310148]["LogId"] =12001119
tCoinDuckReward_Data[3310148]["DeleteItem"] = {}
tCoinDuckReward_Data[3310148]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310148]["DeleteItem"][1]["Id"]=3310148
tCoinDuckReward_Data[3310148]["RewardItem"] = {}
tCoinDuckReward_Data[3310148]["RewardItem"][1]={}
tCoinDuckReward_Data[3310148]["RewardItem"][1]["Id"]= 3306228
tCoinDuckReward_Data[3310148]["RewardItem"][1]["Attr"] = "0 1"
tCoinDuckReward_Data[3310148]["RewardItem"][2]={}
tCoinDuckReward_Data[3310148]["RewardItem"][2]["Id"]= 3009002
tCoinDuckReward_Data[3310148]["RewardItem"][2]["Attr"] = "0 8 0 2880 1"
tCoinDuckReward_Data[3310148]["RewardItem"][3]={}
tCoinDuckReward_Data[3310148]["RewardItem"][3]["Id"]= 3306370
tCoinDuckReward_Data[3310148]["RewardItem"][3]["Attr"] = "0 30 3"
tCoinDuckReward_Data[3310148]["RewardItem"][4]={}
tCoinDuckReward_Data[3310148]["RewardItem"][4]["Id"]= 3003126
tCoinDuckReward_Data[3310148]["RewardItem"][4]["Attr"] = "0 100"
tCoinDuckReward_Data[3310148]["RewardItem"][5]={}
tCoinDuckReward_Data[3310148]["RewardItem"][5]["Id"]= 3003124
tCoinDuckReward_Data[3310148]["RewardItem"][5]["Attr"] = "0 150"
tCoinDuckReward_Data[3310148]["RewardItem"][6]={}
tCoinDuckReward_Data[3310148]["RewardItem"][6]["Id"]= 3310143
tCoinDuckReward_Data[3310148]["RewardItem"][6]["Attr"] = "0 1"

--珀金爵位礼包
tCoinDuckReward_Data[3310149]={}
tCoinDuckReward_Data[3310149]["LogId"] =12001119
tCoinDuckReward_Data[3310149]["DeleteItem"] = {}
tCoinDuckReward_Data[3310149]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310149]["DeleteItem"][1]["Id"]=3310149
tCoinDuckReward_Data[3310149]["RewardItem"] = {}
tCoinDuckReward_Data[3310149]["RewardItem"][1]={}
tCoinDuckReward_Data[3310149]["RewardItem"][1]["Id"]= 3304201
tCoinDuckReward_Data[3310149]["RewardItem"][1]["Attr"] = "0 1"
tCoinDuckReward_Data[3310149]["RewardItem"][2]={}
tCoinDuckReward_Data[3310149]["RewardItem"][2]["Id"]= 3009002
tCoinDuckReward_Data[3310149]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
tCoinDuckReward_Data[3310149]["RewardItem"][3]={}
tCoinDuckReward_Data[3310149]["RewardItem"][3]["Id"]= 3306370
tCoinDuckReward_Data[3310149]["RewardItem"][3]["Attr"] = "0 15 3"
tCoinDuckReward_Data[3310149]["RewardItem"][4]={}
tCoinDuckReward_Data[3310149]["RewardItem"][4]["Id"]= 3003126
tCoinDuckReward_Data[3310149]["RewardItem"][4]["Attr"] = "0 20"
tCoinDuckReward_Data[3310149]["RewardItem"][5]={}
tCoinDuckReward_Data[3310149]["RewardItem"][5]["Id"]= 3003124
tCoinDuckReward_Data[3310149]["RewardItem"][5]["Attr"] = "0 80"
tCoinDuckReward_Data[3310149]["RewardItem"][6]={}
tCoinDuckReward_Data[3310149]["RewardItem"][6]["Id"]= 200593
tCoinDuckReward_Data[3310149]["RewardItem"][6]["Attr"] = "0 1 0 259200 1 0 0 1"

--精英爵位礼包
tCoinDuckReward_Data[3310150]={}
tCoinDuckReward_Data[3310150]["LogId"] =12001119
tCoinDuckReward_Data[3310150]["DeleteItem"] = {}
tCoinDuckReward_Data[3310150]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310150]["DeleteItem"][1]["Id"]=3310150
tCoinDuckReward_Data[3310150]["RewardItem"] = {}
tCoinDuckReward_Data[3310150]["RewardItem"][1]={}
tCoinDuckReward_Data[3310150]["RewardItem"][1]["Id"]= 3310152
tCoinDuckReward_Data[3310150]["RewardItem"][1]["Attr"] = "0 1"
tCoinDuckReward_Data[3310150]["RewardItem"][2]={}
tCoinDuckReward_Data[3310150]["RewardItem"][2]["Id"]= 3009001
tCoinDuckReward_Data[3310150]["RewardItem"][2]["Attr"] = "0 8 0 2880 1"
tCoinDuckReward_Data[3310150]["RewardItem"][3]={}
tCoinDuckReward_Data[3310150]["RewardItem"][3]["Id"]= 3306370
tCoinDuckReward_Data[3310150]["RewardItem"][3]["Attr"] = "0 10 3"
tCoinDuckReward_Data[3310150]["RewardItem"][4]={}
tCoinDuckReward_Data[3310150]["RewardItem"][4]["Id"]= 3003126
tCoinDuckReward_Data[3310150]["RewardItem"][4]["Attr"] = "0 15"
tCoinDuckReward_Data[3310150]["RewardItem"][5]={}
tCoinDuckReward_Data[3310150]["RewardItem"][5]["Id"]= 3003124
tCoinDuckReward_Data[3310150]["RewardItem"][5]["Attr"] = "0 60"
tCoinDuckReward_Data[3310150]["RewardItem"][6]={}
tCoinDuckReward_Data[3310150]["RewardItem"][6]["Id"]= 3310144
tCoinDuckReward_Data[3310150]["RewardItem"][6]["Attr"] = "0 1"

--群侠爵位礼包
tCoinDuckReward_Data[3310151]={}
tCoinDuckReward_Data[3310151]["LogId"] =12001119
tCoinDuckReward_Data[3310151]["DeleteItem"] = {}
tCoinDuckReward_Data[3310151]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310151]["DeleteItem"][1]["Id"]=3310151
tCoinDuckReward_Data[3310151]["RewardItem"] = {}
tCoinDuckReward_Data[3310151]["RewardItem"][1]={}
tCoinDuckReward_Data[3310151]["RewardItem"][1]["Id"]= 3306086
tCoinDuckReward_Data[3310151]["RewardItem"][1]["Attr"] = "0 1"
tCoinDuckReward_Data[3310151]["RewardItem"][2]={}
tCoinDuckReward_Data[3310151]["RewardItem"][2]["Id"]= 3009001
tCoinDuckReward_Data[3310151]["RewardItem"][2]["Attr"] = "0 4 0 2880 1"
tCoinDuckReward_Data[3310151]["RewardItem"][3]={}
tCoinDuckReward_Data[3310151]["RewardItem"][3]["Id"]= 3003124
tCoinDuckReward_Data[3310151]["RewardItem"][3]["Attr"] = "0 30"
tCoinDuckReward_Data[3310151]["RewardItem"][4]={}
tCoinDuckReward_Data[3310151]["RewardItem"][4]["Id"]= 3306370
tCoinDuckReward_Data[3310151]["RewardItem"][4]["Attr"] = "0 4 3"
tCoinDuckReward_Data[3310151]["RewardItem"][5]={}
tCoinDuckReward_Data[3310151]["RewardItem"][5]["Id"]= 3003126
tCoinDuckReward_Data[3310151]["RewardItem"][5]["Attr"] = "0 5"
tCoinDuckReward_Data[3310151]["RewardItem"][6]={}
tCoinDuckReward_Data[3310151]["RewardItem"][6]["Id"]= 200557
tCoinDuckReward_Data[3310151]["RewardItem"][6]["Attr"] = "0 1 0 129600 1 0 0 1"

--气力值6000
tCoinDuckReward_Data[3310152]={}
tCoinDuckReward_Data[3310152]["LogId"] =12001119
tCoinDuckReward_Data[3310152]["DeleteItem"] = {}
tCoinDuckReward_Data[3310152]["DeleteItem"][1]={}
tCoinDuckReward_Data[3310152]["DeleteItem"][1]["Id"]=3310152
tCoinDuckReward_Data[3310152]["RewardStrengthValue"] = {}
tCoinDuckReward_Data[3310152]["RewardStrengthValue"]["Value"] = 6000


----------------------------------逻辑部分---------------------------------------------
--打开普通礼包
function CoinDuckReward_OpenCommonPackage(nItemId)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tCoinDuckReward_Data[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tCoinDuckReward_Data[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tCoinDuckReward_Text["SystemTips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tCoinDuckReward_Data[nItemId]) then 
		return 
	end 
end

--打开可选包
function CoinDuckReward_OpenChoosePackage(nItemId,nIndex)
--检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tCoinDuckReward_Data[nItemId][nIndex])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tCoinDuckReward_Data[nItemId][nIndex])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		local sText=string.format(tCoinDuckReward_Text["SystemTips"]["NoSpace"],nNeedSpace)
		User_TalkChannel2005(sText)
		return
	end
	--打开礼包
	if RewardTemplate_UseItem(tCoinDuckReward_Data[nItemId][nIndex]) then 
		return 
	end 
end

--二次确认
function CoinDuckReward_ChkItem(nPackId,nItemId)
--检测物品
	if not Item_ChkItem(nPackId) then
		return
	end
	local sItemName=Get_ItemtypeName(nItemId)
	tItem[nPackId]["Text121"] = string.format(tCoinDuckReward_Text[3310142]["Text121"],sItemName)
	tItem[nPackId]["OptionFunc5"]="CoinDuckReward_OpenChoosePackage</N>".. nPackId .. "</N>" .. nItemId 
	LinkItemGossipFunc_New(nPackId,"1-2")
end


----------------------------------NPC部分---------------------------------------------

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3310145] = tItem[3310145] or {}
tItem[3310145]["Function"] = function(nItemId,sItemName)
	CoinDuckReward_OpenCommonPackage(nItemId)
end
tItem[3310146]=tItem[3310145]
tItem[3310147]=tItem[3310145]
tItem[3310148]=tItem[3310145]
tItem[3310149]=tItem[3310145]
tItem[3310150]=tItem[3310145]
tItem[3310151]=tItem[3310145]
tItem[3310152]=tItem[3310145]
--------物品有对白模板
--爵位坐骑尊享可选包
tItemFace[3310142] = 1403
tItem[3310142] = tItem[3310142] or {}
tItem[3310142]["Text1-1"] = {111}
tItem[3310142]["Text111"] = tCoinDuckReward_Text[3310142]["Text111"]
tItem[3310142]["tOption1-1"] = {1,2,3,4}
tItem[3310142]["Option1"] =tCoinDuckReward_Text[3310142]["Option1"]
tItem[3310142]["OptionFunc1"]="CoinDuckReward_ChkItem</N>3310142</N>200564"
tItem[3310142]["Option2"] =tCoinDuckReward_Text[3310142]["Option2"]
tItem[3310142]["OptionFunc2"]="CoinDuckReward_ChkItem</N>3310142</N>200592"
tItem[3310142]["Option3"] =tCoinDuckReward_Text[3310142]["Option3"]
tItem[3310142]["OptionFunc3"]="CoinDuckReward_ChkItem</N>3310142</N>200494"
tItem[3310142]["Option4"] =tCoinDuckReward_Text[3310142]["Option4"]
tItem[3310142]["OptionFunc4"]="CoinDuckReward_ChkItem</N>3310142</N>200623"

--二次确认
tItem[3310142]["Text1-2"] = {121}
tItem[3310142]["Text121"]=tCoinDuckReward_Text[3310142]["Text121"]
tItem[3310142]["tOption1-2"] = {5,6}
tItem[3310142]["Option5"] =tCoinDuckReward_Text[3310142]["Option5"]
tItem[3310142]["Option6"] =tCoinDuckReward_Text[3310142]["Option6"]

--爵位坐骑豪华可选包
tItemFace[3310143] = 1458
tItem[3310143] = tItem[3310143] or {}
tItem[3310143]["Text1-1"] = {111}
tItem[3310143]["Text111"] = tCoinDuckReward_Text[3310143]["Text211"]
tItem[3310143]["tOption1-1"] = {1,2,3}
tItem[3310143]["Option1"] =tCoinDuckReward_Text[3310143]["Option1"]
tItem[3310143]["OptionFunc1"]="CoinDuckReward_ChkItem</N>3310143</N>200621"
tItem[3310143]["Option2"] =tCoinDuckReward_Text[3310143]["Option2"]
tItem[3310143]["OptionFunc2"]="CoinDuckReward_ChkItem</N>3310143</N>200595"
tItem[3310143]["Option3"] =tCoinDuckReward_Text[3310143]["Option3"]
tItem[3310143]["OptionFunc3"]="CoinDuckReward_ChkItem</N>3310143</N>200622"

--二次确认
tItem[3310143]["Text1-2"] = {121}
tItem[3310143]["Text121"]=tCoinDuckReward_Text[3310142]["Text121"]
tItem[3310143]["tOption1-2"] = {5,6}
tItem[3310143]["Option5"] =tCoinDuckReward_Text[3310142]["Option5"]
tItem[3310143]["Option6"] =tCoinDuckReward_Text[3310142]["Option6"]

--爵位坐骑精装可选包
tItemFace[3310144] = 580
tItem[3310144] = tItem[3310144] or {}
tItem[3310144]["Text1-1"] = {111}
tItem[3310144]["Text111"] = tCoinDuckReward_Text[3310144]["Text311"]
tItem[3310144]["tOption1-1"] = {1,2}
tItem[3310144]["Option1"] =tCoinDuckReward_Text[3310144]["Option1"]
tItem[3310144]["OptionFunc1"]="CoinDuckReward_ChkItem</N>3310144</N>200557"
tItem[3310144]["Option2"] =tCoinDuckReward_Text[3310144]["Option2"]
tItem[3310144]["OptionFunc2"]="CoinDuckReward_ChkItem</N>3310144</N>200556"
--二次确认
tItem[3310144]["Text1-2"] = {121}
tItem[3310144]["Text121"]=tCoinDuckReward_Text[3310142]["Text121"]
tItem[3310144]["tOption1-2"] = {5,6}
tItem[3310144]["Option5"] =tCoinDuckReward_Text[3310142]["Option5"]
tItem[3310144]["Option6"] =tCoinDuckReward_Text[3310142]["Option6"]