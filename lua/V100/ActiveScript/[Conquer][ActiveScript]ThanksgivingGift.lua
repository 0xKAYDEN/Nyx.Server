---Name:161018[英文征服][活动脚本]11月感恩充值action制作
--Creator: 		杨晓晓
--Created:		2016-10-18
------------------------------------------------------------------------------------------
--命名前缀
--tThanksgivingGift_
---------------------------------------------
--奖励模板
local tThanksgivingGift_Reward = {}
--修炼丹药大礼包：强练丹100+大爆丹100+护心丹100
	tThanksgivingGift_Reward[3301088] = {}
	tThanksgivingGift_Reward[3301088][1] = {}
	tThanksgivingGift_Reward[3301088][1]["RewardItem"] = {}
	tThanksgivingGift_Reward[3301088][1]["RewardItem"][1] = {}
	tThanksgivingGift_Reward[3301088][1]["RewardItem"][1]["Id"] = 3003138
	tThanksgivingGift_Reward[3301088][1]["RewardItem"][1]["Attr"] = "0 1"
	tThanksgivingGift_Reward[3301088][1]["RewardItem"][2] = {}
	tThanksgivingGift_Reward[3301088][1]["RewardItem"][2]["Id"] = 3003152
	tThanksgivingGift_Reward[3301088][1]["RewardItem"][2]["Attr"] = "0 1" 
	tThanksgivingGift_Reward[3301088][1]["RewardItem"][3] = {}
	tThanksgivingGift_Reward[3301088][1]["RewardItem"][3]["Id"] = 3002030
	tThanksgivingGift_Reward[3301088][1]["RewardItem"][3]["Attr"] = "0 100" 
	tThanksgivingGift_Reward[3301088][1]["Log"] = "0,0,0,0,12000538,2,3003138[3003152][3002030],1[1][100]"
	tThanksgivingGift_Reward[3301088][1]["DeleteItem"] = {}
	tThanksgivingGift_Reward[3301088][1]["DeleteItem"][1] = {}
	tThanksgivingGift_Reward[3301088][1]["DeleteItem"][1]["Id"] = 3301088
--非赠永久神佑-1骑宠可选包 ,SavageBeast/喵呜将军【魅力版】
	tThanksgivingGift_Reward[3301089] = {}
	tThanksgivingGift_Reward[3301089][200540] = {}
	tThanksgivingGift_Reward[3301089][200540]["DeleteItem"] = {}
	tThanksgivingGift_Reward[3301089][200540]["DeleteItem"][1] = {}
	tThanksgivingGift_Reward[3301089][200540]["DeleteItem"][1]["Id"] = 3301089
	tThanksgivingGift_Reward[3301089][200540]["RewardItem"] = {}
	tThanksgivingGift_Reward[3301089][200540]["RewardItem"][1] = {}
	tThanksgivingGift_Reward[3301089][200540]["RewardItem"][1]["Id"] = 200540
	tThanksgivingGift_Reward[3301089][200540]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tThanksgivingGift_Reward[3301089][200540]["Talk"] = tThanksgivingGift_Text[3301089][200540]
	tThanksgivingGift_Reward[3301089][200540]["Log"] = "0,0,0,0,12000538,2,200540,1"
	tThanksgivingGift_Reward[3301089][200541] = {}
	tThanksgivingGift_Reward[3301089][200541]["DeleteItem"] = {}
	tThanksgivingGift_Reward[3301089][200541]["DeleteItem"][1] = {}
	tThanksgivingGift_Reward[3301089][200541]["DeleteItem"][1]["Id"] = 3301089
	tThanksgivingGift_Reward[3301089][200541]["RewardItem"] = {}
	tThanksgivingGift_Reward[3301089][200541]["RewardItem"][1] = {}
	tThanksgivingGift_Reward[3301089][200541]["RewardItem"][1]["Id"] = 200541
	tThanksgivingGift_Reward[3301089][200541]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tThanksgivingGift_Reward[3301089][200541]["Talk"] = tThanksgivingGift_Text[3301089][200541]
	tThanksgivingGift_Reward[3301089][200541]["Log"] = "0,0,0,0,12000538,2,200541,1"
--非赠永久神佑-1外套可选包 ,TenderFlame/songofDespair
	tThanksgivingGift_Reward[3301090] = {}
	tThanksgivingGift_Reward[3301090][188495] = {}
	tThanksgivingGift_Reward[3301090][188495]["DeleteItem"] = {}
	tThanksgivingGift_Reward[3301090][188495]["DeleteItem"][1] = {}
	tThanksgivingGift_Reward[3301090][188495]["DeleteItem"][1]["Id"] = 3301090
	tThanksgivingGift_Reward[3301090][188495]["RewardItem"] = {}
	tThanksgivingGift_Reward[3301090][188495]["RewardItem"][1] = {}
	tThanksgivingGift_Reward[3301090][188495]["RewardItem"][1]["Id"] = 188495
	tThanksgivingGift_Reward[3301090][188495]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tThanksgivingGift_Reward[3301090][188495]["Talk"] = tThanksgivingGift_Text[3301090][188495]
	tThanksgivingGift_Reward[3301090][188495]["Log"] = "0,0,0,0,12000538,2,188495,1"
	tThanksgivingGift_Reward[3301090][193295] = {}
	tThanksgivingGift_Reward[3301090][193295]["DeleteItem"] = {}
	tThanksgivingGift_Reward[3301090][193295]["DeleteItem"][1] = {}
	tThanksgivingGift_Reward[3301090][193295]["DeleteItem"][1]["Id"] = 3301090
	tThanksgivingGift_Reward[3301090][193295]["RewardItem"] = {}
	tThanksgivingGift_Reward[3301090][193295]["RewardItem"][1] = {}
	tThanksgivingGift_Reward[3301090][193295]["RewardItem"][1]["Id"] = 193295
	tThanksgivingGift_Reward[3301090][193295]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tThanksgivingGift_Reward[3301090][193295]["Talk"] = tThanksgivingGift_Text[3301090][193295]
	tThanksgivingGift_Reward[3301090][193295]["Log"] = "0,0,0,0,12000538,2,193295,1"
--3万点气力值包
	tThanksgivingGift_Reward[3301091] = {}
	tThanksgivingGift_Reward[3301091][1] = {}
	tThanksgivingGift_Reward[3301091][1]["RewardStrengthValue"] = {}
	tThanksgivingGift_Reward[3301091][1]["RewardStrengthValue"]["Value"] = 30000
	tThanksgivingGift_Reward[3301091][1]["DeleteItem"] = {}
	tThanksgivingGift_Reward[3301091][1]["DeleteItem"][1] = {}
	tThanksgivingGift_Reward[3301091][1]["DeleteItem"][1]["Id"] = 3301091
	tThanksgivingGift_Reward[3301091][1]["Log"] = "0,0,0,0,12000538,2,12,30000"
------------------------------逻辑部分---------------------------
--打开礼包
function tThanksgivingGift_Open(nItemId, nIndex)
	 RewardTemplate_UseItemAndMsg(tThanksgivingGift_Reward[nItemId][nIndex])
end
--确认是否领奖 
function tThanksgivingGift_Confirm(nItemId,nIndex,sOptionText)
	local sOptionText = tThanksgivingGift_Text[nItemId][sOptionText]
	--重设对白文字

	tItem[nItemId]["Text211"] = string.format(tThanksgivingGift_Text[nItemId]["Text211"],sOptionText)
	--重设选项函数
	tItem[nItemId]["OptionFunc211"] = "tThanksgivingGift_Open</N>"..nItemId.."</N>"..nIndex
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end
------------------------------物品模板---------------------------
---修炼丹药大礼包：
tItem[3301088] = tItem[3301088] or {}
tItem[3301088]["Function"] = function(nItemId,sItemName)
	tThanksgivingGift_Open(nItemId,1)
end
--非赠永久神佑-1骑宠可选包
tItem[3301089] = tItem[3301089] or {}
tItem[3301089]["DialogueText"] =tThanksgivingGift_Text[3301089]
tItem[3301089]["Text1-1"] = {111}
tItem[3301089]["tOption1-1"] = {1,2,3}
tItem[3301089]["OptionFunc1"] = "tThanksgivingGift_Confirm</N>3301089</N>200540</S>Option1"
tItem[3301089]["OptionFunc2"] = "tThanksgivingGift_Confirm</N>3301089</N>200541</S>Option2"
tItem[3301089]["Text2-1"] = {211}
tItem[3301089]["Text211"] = tThanksgivingGift_Text[3301089]["Text211"]
tItem[3301089]["tOption2-1"] = {211,212}
--非赠永久神佑-外套可选包
tItem[3301090] = tItem[3301090] or {}
tItem[3301090]["DialogueText"] =tThanksgivingGift_Text[3301090]
tItem[3301090]["Text1-1"] = {111}
tItem[3301090]["tOption1-1"] = {1,2,3}
tItem[3301090]["OptionFunc1"] = "tThanksgivingGift_Confirm</N>3301090</N>188495</S>Option1"
tItem[3301090]["OptionFunc2"] = "tThanksgivingGift_Confirm</N>3301090</N>193295</S>Option2"
tItem[3301090]["Text2-1"] = {211}
tItem[3301090]["Text211"] = tThanksgivingGift_Text[3301090]["Text211"]
tItem[3301090]["tOption2-1"] = {211,212}
--3万气力值礼包
tItem[3301091] = tItem[3301091] or {}
tItem[3301091]["Function"] = function(nItemId,sItemName)
	tThanksgivingGift_Open(nItemId,1)
end
