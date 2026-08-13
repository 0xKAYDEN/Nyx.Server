------------------------------------------------------------------------------------
--Name：           180820[英文征服][活动脚本]9月自创福利包
--Creator:      黄啸
--Created:     2018/08/22
------------------------------------------------------------------------------------
-- #任务需求:
--globalid：52943用于区分Lasvicas服
--stc 182 24背包信
------------------------------------------------------------------------------------
--命名前缀
--SeptemberLuckybag_
------------------------------------------------------------------------------------
--常量表部分
local tSeptemberLuckybag_Gift = {}
----9月自创福利包
--概率获得
tSeptemberLuckybag_Gift[3310588] = {}
tSeptemberLuckybag_Gift[3310588][1] = {}
tSeptemberLuckybag_Gift[3310588][1]["ItemChanceSum"] = 10000

tSeptemberLuckybag_Gift[3310588][1][1] = {}
tSeptemberLuckybag_Gift[3310588][1][1]["RandomItemChanceType"] = 2
tSeptemberLuckybag_Gift[3310588][1][1]["ItemChance"] = 1500
tSeptemberLuckybag_Gift[3310588][1][1]["RewardItem"] = {}
tSeptemberLuckybag_Gift[3310588][1][1]["RewardItem"][1] = {} 
tSeptemberLuckybag_Gift[3310588][1][1]["RewardItem"][1]["Id"] = 3003124
tSeptemberLuckybag_Gift[3310588][1][1]["RewardItem"][1]["Attr"] = "0 80 3"
tSeptemberLuckybag_Gift[3310588][1][1]["LogId"] = 12001146

tSeptemberLuckybag_Gift[3310588][1][2] = {}
tSeptemberLuckybag_Gift[3310588][1][2]["RandomItemChanceType"] = 2
tSeptemberLuckybag_Gift[3310588][1][2]["ItemChance"] = 2000
tSeptemberLuckybag_Gift[3310588][1][2]["RewardItem"] = {}
tSeptemberLuckybag_Gift[3310588][1][2]["RewardItem"][1] = {} 
tSeptemberLuckybag_Gift[3310588][1][2]["RewardItem"][1]["Id"] = 3003126
tSeptemberLuckybag_Gift[3310588][1][2]["RewardItem"][1]["Attr"] = "0 15 3"
tSeptemberLuckybag_Gift[3310588][1][2]["LogId"] = 12001146

tSeptemberLuckybag_Gift[3310588][1][3] = {}
tSeptemberLuckybag_Gift[3310588][1][3]["RandomItemChanceType"] = 2
tSeptemberLuckybag_Gift[3310588][1][3]["ItemChance"] = 1500
tSeptemberLuckybag_Gift[3310588][1][3]["RewardItem"] = {}
tSeptemberLuckybag_Gift[3310588][1][3]["RewardItem"][1] = {} 
tSeptemberLuckybag_Gift[3310588][1][3]["RewardItem"][1]["Id"] = 3003124
tSeptemberLuckybag_Gift[3310588][1][3]["RewardItem"][1]["Attr"] = "0 40 3"
tSeptemberLuckybag_Gift[3310588][1][3]["LogId"] = 12001146

tSeptemberLuckybag_Gift[3310588][1][4] = {}
tSeptemberLuckybag_Gift[3310588][1][4]["RandomItemChanceType"] = 2
tSeptemberLuckybag_Gift[3310588][1][4]["ItemChance"] = 2500
tSeptemberLuckybag_Gift[3310588][1][4]["RewardItem"] = {}
tSeptemberLuckybag_Gift[3310588][1][4]["RewardItem"][1] = {} 
tSeptemberLuckybag_Gift[3310588][1][4]["RewardItem"][1]["Id"] = 3002926
tSeptemberLuckybag_Gift[3310588][1][4]["RewardItem"][1]["Attr"] = "0 5"
tSeptemberLuckybag_Gift[3310588][1][4]["LogId"] = 12001146

tSeptemberLuckybag_Gift[3310588][1][5] = {}
tSeptemberLuckybag_Gift[3310588][1][5]["RandomItemChanceType"] = 2
tSeptemberLuckybag_Gift[3310588][1][5]["ItemChance"] = 2500
tSeptemberLuckybag_Gift[3310588][1][5]["RewardItem"] = {}
tSeptemberLuckybag_Gift[3310588][1][5]["RewardItem"][1] = {} 
tSeptemberLuckybag_Gift[3310588][1][5]["RewardItem"][1]["Id"] = 3002926
tSeptemberLuckybag_Gift[3310588][1][5]["RewardItem"][1]["Attr"] = "0 20"
tSeptemberLuckybag_Gift[3310588][1][5]["RewardNoNeedTip"] = 1
tSeptemberLuckybag_Gift[3310588][1][5]["LogId"] = 12001146

--必定获得
local tSeptemberLuckybag_SureGift = {}
tSeptemberLuckybag_SureGift[3310588] = {}
tSeptemberLuckybag_SureGift[3310588]["RewardItem"] = {}
tSeptemberLuckybag_SureGift[3310588]["RewardItem"][1] = {} 
tSeptemberLuckybag_SureGift[3310588]["RewardItem"][1]["Id"] = 3002030
tSeptemberLuckybag_SureGift[3310588]["RewardItem"][1]["Attr"] = "0 10"
tSeptemberLuckybag_SureGift[3310588]["LogId"] = 12001146

--1500气力值礼包打开获得
tSeptemberLuckybag_SureGift[3310677] = {}
tSeptemberLuckybag_SureGift[3310677]["RewardStrengthValue"] = {}
tSeptemberLuckybag_SureGift[3310677]["RewardStrengthValue"]["Value"] = 1500
tSeptemberLuckybag_SureGift[3310677]["LogId"] = 12001146
tSeptemberLuckybag_SureGift[3310677]["DeleteItem"] = {}
tSeptemberLuckybag_SureGift[3310677]["DeleteItem"][1] = {}
tSeptemberLuckybag_SureGift[3310677]["DeleteItem"][1]["Id"] = 3310677



----9月赤练石福利包
local tSeptemberLuckybag_NormalGift = {}
tSeptemberLuckybag_NormalGift[3310674] = {}
tSeptemberLuckybag_NormalGift[3310674][1] = {}
tSeptemberLuckybag_NormalGift[3310674][1]["ItemChanceSum"] = 10000

tSeptemberLuckybag_NormalGift[3310674][1][1] = {}
tSeptemberLuckybag_NormalGift[3310674][1][1]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310674][1][1]["ItemChance"] = 1500
tSeptemberLuckybag_NormalGift[3310674][1][1]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310674][1][1]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310674][1][1]["RewardItem"][1]["Id"] = 730003
tSeptemberLuckybag_NormalGift[3310674][1][1]["RewardItem"][1]["Attr"] = "0 2 3"
tSeptemberLuckybag_NormalGift[3310674][1][1]["LogId"] = 12001146

tSeptemberLuckybag_NormalGift[3310674][1][2] = {}
tSeptemberLuckybag_NormalGift[3310674][1][2]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310674][1][2]["ItemChance"] = 2500
tSeptemberLuckybag_NormalGift[3310674][1][2]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310674][1][2]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310674][1][2]["RewardItem"][1]["Id"] = 730004
tSeptemberLuckybag_NormalGift[3310674][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
tSeptemberLuckybag_NormalGift[3310674][1][2]["LogId"] = 12001146

tSeptemberLuckybag_NormalGift[3310674][1][3] = {}
tSeptemberLuckybag_NormalGift[3310674][1][3]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310674][1][3]["ItemChance"] = 2900
tSeptemberLuckybag_NormalGift[3310674][1][3]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310674][1][3]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310674][1][3]["RewardItem"][1]["Id"] = 730004
tSeptemberLuckybag_NormalGift[3310674][1][3]["RewardItem"][1]["Attr"] = "0 2 3"
tSeptemberLuckybag_NormalGift[3310674][1][3]["LogId"] = 12001146

tSeptemberLuckybag_NormalGift[3310674][1][4] = {}
tSeptemberLuckybag_NormalGift[3310674][1][4]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310674][1][4]["ItemChance"] = 3000
tSeptemberLuckybag_NormalGift[3310674][1][4]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310674][1][4]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310674][1][4]["RewardItem"][1]["Id"] = 730005
tSeptemberLuckybag_NormalGift[3310674][1][4]["RewardItem"][1]["Attr"] = "0 2 3"
tSeptemberLuckybag_NormalGift[3310674][1][4]["RewardNoNeedTip"] = 1
tSeptemberLuckybag_NormalGift[3310674][1][4]["LogId"] = 12001146

tSeptemberLuckybag_NormalGift[3310674][1][5] = {}
tSeptemberLuckybag_NormalGift[3310674][1][5]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310674][1][5]["ItemChance"] = 100
tSeptemberLuckybag_NormalGift[3310674][1][5]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310674][1][5]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310674][1][5]["RewardItem"][1]["Id"] = 730006
tSeptemberLuckybag_NormalGift[3310674][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
tSeptemberLuckybag_NormalGift[3310674][1][5]["LogId"] = 12001146

--9月气力值福利包
tSeptemberLuckybag_NormalGift[3310675] = {}
tSeptemberLuckybag_NormalGift[3310675][1] = {}
tSeptemberLuckybag_NormalGift[3310675][1]["ItemChanceSum"] = 10000

tSeptemberLuckybag_NormalGift[3310675][1][1] = {}
tSeptemberLuckybag_NormalGift[3310675][1][1]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310675][1][1]["ItemChance"] = 1500
tSeptemberLuckybag_NormalGift[3310675][1][1]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310675][1][1]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310675][1][1]["RewardItem"][1]["Id"] = 3305401
tSeptemberLuckybag_NormalGift[3310675][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
tSeptemberLuckybag_NormalGift[3310675][1][1]["LogId"] = 12001146

tSeptemberLuckybag_NormalGift[3310675][1][2] = {}
tSeptemberLuckybag_NormalGift[3310675][1][2]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310675][1][2]["ItemChance"] = 2500
tSeptemberLuckybag_NormalGift[3310675][1][2]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310675][1][2]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310675][1][2]["RewardItem"][1]["Id"] = 3304197
tSeptemberLuckybag_NormalGift[3310675][1][2]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberLuckybag_NormalGift[3310675][1][2]["LogId"] = 12001146

tSeptemberLuckybag_NormalGift[3310675][1][3] = {}
tSeptemberLuckybag_NormalGift[3310675][1][3]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310675][1][3]["ItemChance"] = 2900
tSeptemberLuckybag_NormalGift[3310675][1][3]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310675][1][3]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310675][1][3]["RewardItem"][1]["Id"] = 3310677
tSeptemberLuckybag_NormalGift[3310675][1][3]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberLuckybag_NormalGift[3310675][1][3]["LogId"] = 12001146

tSeptemberLuckybag_NormalGift[3310675][1][4] = {}
tSeptemberLuckybag_NormalGift[3310675][1][4]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310675][1][4]["ItemChance"] = 3000
tSeptemberLuckybag_NormalGift[3310675][1][4]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310675][1][4]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310675][1][4]["RewardItem"][1]["Id"] = 3306086
tSeptemberLuckybag_NormalGift[3310675][1][4]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberLuckybag_NormalGift[3310675][1][4]["LogId"] = 12001146

tSeptemberLuckybag_NormalGift[3310675][1][5] = {}
tSeptemberLuckybag_NormalGift[3310675][1][5]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310675][1][5]["ItemChance"] = 100
tSeptemberLuckybag_NormalGift[3310675][1][5]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310675][1][5]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310675][1][5]["RewardItem"][1]["Id"] = 3304335
tSeptemberLuckybag_NormalGift[3310675][1][5]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberLuckybag_NormalGift[3310675][1][5]["LogId"] = 12001146

--9月星陨石福利包
tSeptemberLuckybag_NormalGift[3310676] = {}
tSeptemberLuckybag_NormalGift[3310676][1] = {}
tSeptemberLuckybag_NormalGift[3310676][1]["ItemChanceSum"] = 10000

tSeptemberLuckybag_NormalGift[3310676][1][1] = {}
tSeptemberLuckybag_NormalGift[3310676][1][1]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310676][1][1]["ItemChance"] = 1500
tSeptemberLuckybag_NormalGift[3310676][1][1]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310676][1][1]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310676][1][1]["RewardItem"][1]["Id"] = 3009001
tSeptemberLuckybag_NormalGift[3310676][1][1]["RewardItem"][1]["Attr"] = "0 3"
tSeptemberLuckybag_NormalGift[3310676][1][1]["LogId"] = 12001146

tSeptemberLuckybag_NormalGift[3310676][1][2] = {}
tSeptemberLuckybag_NormalGift[3310676][1][2]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310676][1][2]["ItemChance"] = 2500
tSeptemberLuckybag_NormalGift[3310676][1][2]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310676][1][2]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310676][1][2]["RewardItem"][1]["Id"] = 3009001
tSeptemberLuckybag_NormalGift[3310676][1][2]["RewardItem"][1]["Attr"] = "0 4"
tSeptemberLuckybag_NormalGift[3310676][1][2]["LogId"] = 12001146

tSeptemberLuckybag_NormalGift[3310676][1][3] = {}
tSeptemberLuckybag_NormalGift[3310676][1][3]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310676][1][3]["ItemChance"] = 2900
tSeptemberLuckybag_NormalGift[3310676][1][3]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310676][1][3]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310676][1][3]["RewardItem"][1]["Id"] = 3009001
tSeptemberLuckybag_NormalGift[3310676][1][3]["RewardItem"][1]["Attr"] = "0 5"
tSeptemberLuckybag_NormalGift[3310676][1][3]["LogId"] = 12001146

tSeptemberLuckybag_NormalGift[3310676][1][4] = {}
tSeptemberLuckybag_NormalGift[3310676][1][4]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310676][1][4]["ItemChance"] = 3000
tSeptemberLuckybag_NormalGift[3310676][1][4]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310676][1][4]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310676][1][4]["RewardItem"][1]["Id"] = 3009001
tSeptemberLuckybag_NormalGift[3310676][1][4]["RewardItem"][1]["Attr"] = "0 7"
tSeptemberLuckybag_NormalGift[3310676][1][4]["LogId"] = 12001146

tSeptemberLuckybag_NormalGift[3310676][1][5] = {}
tSeptemberLuckybag_NormalGift[3310676][1][5]["RandomItemChanceType"] = 2
tSeptemberLuckybag_NormalGift[3310676][1][5]["ItemChance"] = 100
tSeptemberLuckybag_NormalGift[3310676][1][5]["RewardItem"] = {}
tSeptemberLuckybag_NormalGift[3310676][1][5]["RewardItem"][1] = {} 
tSeptemberLuckybag_NormalGift[3310676][1][5]["RewardItem"][1]["Id"] = 3009002
tSeptemberLuckybag_NormalGift[3310676][1][5]["RewardItem"][1]["Attr"] = "0 1"
tSeptemberLuckybag_NormalGift[3310676][1][5]["LogId"] = 12001146

                          
---------------------------------逻辑部分---------------------------------------------------
--9月自创福利包
function SeptemberLuckybag_OpenGift(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--礼包过期
	if not Sys_ChkFullTime(tActivityTime["SeptemberLuckybagtime"]["PackActivitytime"]) and Item_DelItem(nItemId) then
		User_TalkChannel2005(tBackpackLetter_Text[3310587]["OverTime"])
		return
	end
	
	--背包空间判断
	if not User_CheckLeftSpace(2) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],2))
		return
	end
	
	if Item_DelItem(nItemId) then
		--获得必拿物品
		RewardTemplate_UseItemAndMsg(tSeptemberLuckybag_SureGift[nItemId])
		--概率获得物品
		local tReward = RewardTemplate_NewRandomNoTip(tSeptemberLuckybag_Gift[nItemId],1)
		local nRewardNum = tReward[1]["tAward"][1]["RewardNoNeedTip"]
		if nRewardNum == 1 then
			User_TalkChannel2005(tSeptemberLuckybag_Text[nItemId][5])
		end
		--RewardTemplate_NewRandom(tSeptemberLuckybag_Gift[nItemId],1)
	end
	
end

--9月赤练石福利包,9月气力值福利包,9月星陨石福利包
function SeptemberLuckybag_StoneOpenGift(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--礼包过期
	if not Sys_ChkFullTime(tActivityTime["SeptemberLuckybagtime"]["PackActivitytime"]) and Item_DelItem(nItemId) then
		User_TalkChannel2005(tBackpackLetter_Text[3310587]["OverTime"])
		return
	end
	
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tSeptemberLuckybag_NormalGift[nItemId],1)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	if Item_DelItem(nItemId) then

		--概率获得物品
		local tReward = RewardTemplate_NewRandomNoTip(tSeptemberLuckybag_NormalGift[nItemId],1)
		local nRewardNum = tReward[1]["tAward"][1]["RewardNoNeedTip"]
		if nRewardNum == 1 then
			User_TalkChannel2005(tSeptemberLuckybag_Text[nItemId][4])
		end
		--RewardTemplate_NewRandom(tSeptemberLuckybag_Gift[nItemId],1)
	end
	
end

--1500气力值礼包打开活动
function SeptemberLuckybag_QiOpenGift(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--打开礼包获得
	RewardTemplate_UseItemAndMsg(tSeptemberLuckybag_SureGift[nItemId])
end
---------------------------------模板---------------------------------------------------
tNpcFace[6185] = 184
tNpcGossip[23166] = tNpcGossip[23166] or DefaultNpc:new{}
tNpcGossip[23166]["OptionHidden"] = 1
tNpcGossip[23166]["DialogueText"] = tSeptemberLuckybag_Text[23166]
--活动前
tNpcGossip[23166]["Text1-1"] = {111,112}
tNpcGossip[23166]["tOption1-1"] = {111}
tNpcGossip[23166]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["SeptemberLuckybagtime"]["BeActivitytime"])
end

--活动后
tNpcGossip[23166]["Text1-2"] = {121}
tNpcGossip[23166]["tOption1-2"] = {121}
tNpcGossip[23166]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["SeptemberLuckybagtime"]["Activitytime"])
end

--活动中
tNpcGossip[23166]["Text1-3"] = {131,132,134}
tNpcGossip[23166]["tOption1-3"] = {131}
tNpcGossip[23166]["OptionFunc131"]="User_OpenDialog"


--背包信礼包
tItemFace[3310587] = 1747

--9月自创福利包
tItem[3310588] = tItem[3310588] or {}
tItem[3310588]["Function"] = function(nItemId,sItemName)
	SeptemberLuckybag_OpenGift(nItemId)
end

--9月赤练石福利包
tItem[3310674] = tItem[3310674] or {}
tItem[3310674]["Function"] = function(nItemId,sItemName)
	SeptemberLuckybag_StoneOpenGift(nItemId)
end

--9月气力值福利包
tItem[3310675] = tItem[3310674] or {}
--9月星陨石福利包
tItem[3310676] = tItem[3310674] or {}

--1500气力礼包打开
tItem[3310677] = tItem[3310677] or {}
tItem[3310677]["Function"] = function(nItemId,sItemName)
	SeptemberLuckybag_QiOpenGift(nItemId)
end
















