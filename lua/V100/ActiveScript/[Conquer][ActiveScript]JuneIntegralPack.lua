--------------------------------------------------------------------------------
---Name:160520[英文征服][活动脚本]6月积分礼包及action制作
--Creator: 	林强
--Created:	2016-05-20
--------------------------------------------------------------------------------

--action 564155-564158
--item 3200372-3200376
--logid 12000409
--luaid 40257
-- 80170 80171
-- 80170 0 重置标示位
-- 80170 1 10积分礼包 Permanent Stone单服数量
-- 80170 2 40积分礼包  Tough Drill单服数量
-- 80170 3 100积分礼包 Chaos Demon Box单服数量
-- 80170 4 100积分礼包 Big Permanent Stone单服数量
-- 80170 5 200积分礼包 锦绣天成外套包单服数量
-- 80171 1 200积分礼包 10,000 CP(B)单服数量
--命名规范
--tJuneIntegralPack_

------------------------------------------------------------------数据区------------------------------------------------------------------------------
local tJuneIntegralPack_Dyna={}
tJuneIntegralPack_Dyna["ServerLimitDyna"]=80170
tJuneIntegralPack_Dyna["ClearFlagPos"]=0
tJuneIntegralPack_Dyna["ClearFlag"]=1

--常量
local tJuneIntegralPack_Const={}
tJuneIntegralPack_Const["MAXEmoney"]=999999999
tJuneIntegralPack_Const["Log"]="0,0,%d,1,12000409,2,%d[%d],%d[%d]"
-- tJuneIntegralPack_Const["ServerLimitDyna"]=80170
-- tJuneIntegralPack_Const["ClearFlagPos"]=0
-- tJuneIntegralPack_Const["ClearFlag"]=1

local tJuneIntegralPack_Reward={}
--10积分礼包
tJuneIntegralPack_Reward[3200372]={}

--打开前的检测
tJuneIntegralPack_Reward[3200372]["OpenCheck"]={}
tJuneIntegralPack_Reward[3200372]["OpenCheck"]["MAXEmoney"]=100
tJuneIntegralPack_Reward[3200372]["OpenCheck"]["BagSpace"]=3
--必得奖励部分
--+3 Stone
tJuneIntegralPack_Reward[3200372]["AbsoluteRewards"]={}
tJuneIntegralPack_Reward[3200372]["AbsoluteRewards"][1]={}
tJuneIntegralPack_Reward[3200372]["AbsoluteRewards"][1]["ItemType"]=730003
tJuneIntegralPack_Reward[3200372]["AbsoluteRewards"][1]["AddItemParm"]=""
tJuneIntegralPack_Reward[3200372]["AbsoluteRewards"][1]["Name"]=tJuneIntegralPack_Text["Reward"][73000301]

--随机出一个，几率44% 100 CP(B)
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"]={}
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"]["SumCount"]=10000
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][1]={}
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][1]["Probabil"]=4400
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][1][1]={}
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][1][1]["Function"]=User_AddEMoneyMono
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][1][1]["ValueType"]=3
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][1][1]["Count"]=100
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][1][1]["Name"]=tJuneIntegralPack_Text["Reward"]["EBmoney100"]

--随机出一个，几率44% 1,000 Study Points
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][2]={}
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][2]["Probabil"]=4400
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][2][1]={}
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][2][1]["Function"]=User_AddCultivation
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][2][1]["ValueType"]=6
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][2][1]["Count"]=1000
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][2][1]["Name"]=tJuneIntegralPack_Text["Reward"]["StudyPoints1000"]

--随机出一个，几率10% Small Lottery Pack*3
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][3]={}
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][3]["Probabil"]=1000
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][3][1]={}
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][3][1]["ItemType"]=724002
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][3][1]["AddItemParm"]="0 3"
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][3][1]["Name"]=tJuneIntegralPack_Text["Reward"][72400203]

--随机出一个，几率2%，单服每天限量3个，出完给Small Lottery Pack*3 Permanent Stone
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][4]={}
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][4]["Probabil"]=200
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][4][1]={}
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][4][1]["ItemType"]=723694
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][4][1]["AddItemParm"]=""
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][4][1]["Name"]=tJuneIntegralPack_Text["Reward"][72369401]
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][4][1]["ServerLimitCount"]=3
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][4][1]["ServerLimitDyna"]=80170
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][4][1]["ServerLimitPos"]=1
tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][4][1]["ChangeLevel"]=tJuneIntegralPack_Reward[3200372]["SameRandomRewards"][3]


--40积分礼包
tJuneIntegralPack_Reward[3200373]={}

--打开前的检测
tJuneIntegralPack_Reward[3200373]["OpenCheck"]={}
tJuneIntegralPack_Reward[3200373]["OpenCheck"]["MAXEmoney"]=500
tJuneIntegralPack_Reward[3200373]["OpenCheck"]["BagSpace"]=1

--必得奖励部分
--+4 Stone
tJuneIntegralPack_Reward[3200373]["AbsoluteRewards"]={}
tJuneIntegralPack_Reward[3200373]["AbsoluteRewards"][1]={}
tJuneIntegralPack_Reward[3200373]["AbsoluteRewards"][1]["ItemType"]=730004
tJuneIntegralPack_Reward[3200373]["AbsoluteRewards"][1]["AddItemParm"]=""
tJuneIntegralPack_Reward[3200373]["AbsoluteRewards"][1]["Name"]=tJuneIntegralPack_Text["Reward"][73000401]

--随机出一个，几率39% 500 CP(B)
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"]={}
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"]["SumCount"]=10000
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][1]={}
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][1]["Probabil"]=3900
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][1][1]={}
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][1][1]["Function"]=User_AddEMoneyMono
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][1][1]["ValueType"]=3
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][1][1]["Count"]=500
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][1][1]["Name"]=tJuneIntegralPack_Text["Reward"]["EBmoney500"]

--随机出一个，几率39% 3,000 Chi Points
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][2]={}
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][2]["Probabil"]=3900
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][2][1]={}
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][2][1]["Function"]=User_AddStrengthValue
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][2][1]["ValueType"]=12
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][2][1]["Count"]=3000
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][2][1]["Name"]=tJuneIntegralPack_Text["Reward"]["ChiPoints3000"]


--随机出一个，几率20% Heaven Demon Box
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][3]={}
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][3]["Probabil"]=2000
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][3][1]={}
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][3][1]["ItemType"]=720671
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][3][1]["AddItemParm"]=""
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][3][1]["Name"]=tJuneIntegralPack_Text["Reward"][72067101]

--随机出一个，几率2%，单服每天限量1个，出完给Heaven Demon Box  Tough Drill
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][4]={}
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][4]["Probabil"]=200
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][4][1]={}
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][4][1]["ItemType"]=1200005
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][4][1]["AddItemParm"]=""
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][4][1]["Name"]=tJuneIntegralPack_Text["Reward"][120000501]
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][4][1]["ServerLimitCount"]=1
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][4][1]["ServerLimitDyna"]=80170
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][4][1]["ServerLimitPos"]=2
tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][4][1]["ChangeLevel"]=tJuneIntegralPack_Reward[3200373]["SameRandomRewards"][3]


--100积分礼包
tJuneIntegralPack_Reward[3200374]={}

--打开前的检测

tJuneIntegralPack_Reward[3200374]["OpenCheck"]={}
tJuneIntegralPack_Reward[3200374]["OpenCheck"]["MAXEmoney"]=1000
tJuneIntegralPack_Reward[3200374]["OpenCheck"]["BagSpace"]=1

--必得奖励部分
--+5 Stone
tJuneIntegralPack_Reward[3200374]["AbsoluteRewards"]={}
tJuneIntegralPack_Reward[3200374]["AbsoluteRewards"][1]={}
tJuneIntegralPack_Reward[3200374]["AbsoluteRewards"][1]["ItemType"]=730005
tJuneIntegralPack_Reward[3200374]["AbsoluteRewards"][1]["AddItemParm"]=""
tJuneIntegralPack_Reward[3200374]["AbsoluteRewards"][1]["Name"]=tJuneIntegralPack_Text["Reward"][73000501]


tJuneIntegralPack_Reward[3200374]["SameRandomRewards"]={}
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"]["SumCount"]=10000
--随机出一个，几率39% 1,000 CP(B)
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][1]={}
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][1]["Probabil"]=3900
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][1][1]={}
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][1][1]["Function"]=User_AddEMoneyMono
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][1][1]["ValueType"]=3
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][1][1]["Count"]=1000
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][1][1]["Name"]=tJuneIntegralPack_Text["Reward"]["EBmoney1000"]

--随机出一个，几率39% 1,0000 Chi Points
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][2]={}
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][2]["Probabil"]=3900
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][2][1]={}
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][2][1]["Function"]=User_AddStrengthValue
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][2][1]["ValueType"]=12
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][2][1]["Count"]=10000
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][2][1]["Name"]=tJuneIntegralPack_Text["Reward"]["ChiPoints1000"]

--随机出一个，几率21%，单服每天限量5个，出完给10000 Chi Points  Chaos Demon Box
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][3]={}
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][3]["Probabil"]=2100
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][3][1]={}
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][3][1]["ItemType"]=720672
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][3][1]["AddItemParm"]=""
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][3][1]["Name"]=tJuneIntegralPack_Text["Reward"][72067201]
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][3][1]["ServerLimitCount"]=5
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][3][1]["ServerLimitDyna"]=80170
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][3][1]["ServerLimitPos"]=3
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][3][1]["ChangeLevel"]=tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][2]

--随机出一个，几率1%，单服每天限量1个，出完给Chaos Demon Box Big Permanent Stone
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][4]={}
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][4]["Probabil"]=100
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][4][1]={}
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][4][1]["ItemType"]=723695
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][4][1]["AddItemParm"]=""
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][4][1]["Name"]=tJuneIntegralPack_Text["Reward"][72369501]
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][4][1]["ServerLimitCount"]=1
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][4][1]["ServerLimitDyna"]=80170
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][4][1]["ServerLimitPos"]=4
tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][4][1]["ChangeLevel"]=tJuneIntegralPack_Reward[3200374]["SameRandomRewards"][3]

--200积分礼包
tJuneIntegralPack_Reward[3200375]={}

--打开前的检测
tJuneIntegralPack_Reward[3200375]["OpenCheck"]={}
tJuneIntegralPack_Reward[3200375]["OpenCheck"]["MAXEmoney"]=10000
tJuneIntegralPack_Reward[3200375]["OpenCheck"]["BagSpace"]=1

--必得奖励部分
--+6 Stone
tJuneIntegralPack_Reward[3200375]["AbsoluteRewards"]={}
tJuneIntegralPack_Reward[3200375]["AbsoluteRewards"][1]={}
tJuneIntegralPack_Reward[3200375]["AbsoluteRewards"][1]["ItemType"]=730006
tJuneIntegralPack_Reward[3200375]["AbsoluteRewards"][1]["AddItemParm"]=""
tJuneIntegralPack_Reward[3200375]["AbsoluteRewards"][1]["Name"]=tJuneIntegralPack_Text["Reward"][73000601]

tJuneIntegralPack_Reward[3200375]["SameRandomRewards"]={}
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"]["SumCount"]=10000
--随机出一个，几率39.5% 2,000 CP(B)
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][1]={}
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][1]["Probabil"]=3950
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][1][1]={}
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][1][1]["Function"]=User_AddEMoneyMono
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][1][1]["ValueType"]=3
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][1][1]["Count"]=2000
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][1][1]["Name"]=tJuneIntegralPack_Text["Reward"]["EBmoney2000"]

--随机出一个，几率50% 25,000 Chi Points
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][2]={}
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][2]["Probabil"]=5000
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][2][1]={}
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][2][1]["Function"]=User_AddStrengthValue
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][2][1]["ValueType"]=12
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][2][1]["Count"]=25000
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][2][1]["Name"]=tJuneIntegralPack_Text["Reward"]["ChiPoints25000"]

--随机出一个，几率10%，单服每天限量1个，出完给25000 Chi Points 锦绣天成外套包
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][3]={}
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][3]["Probabil"]=1000
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][3][1]={}
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][3][1]["ItemType"]=3200351
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][3][1]["AddItemParm"]="0 1 1"
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][3][1]["Name"]=tJuneIntegralPack_Text["Reward"][320035101]
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][3][1]["ServerLimitCount"]=1
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][3][1]["ServerLimitDyna"]=80170
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][3][1]["ServerLimitPos"]=5
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][3][1]["ChangeLevel"]=tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][2]

--随机出一个，几率0.5%，活动期间单服限量1个，出完给2000 CP(B) 10,000 CP(B)
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][4]={}
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][4]["Probabil"]=50
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][4][1]={}
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][4][1]["Function"]=User_AddEMoneyMono
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][4][1]["ValueType"]=3
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][4][1]["Count"]=10000
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][4][1]["Name"]=tJuneIntegralPack_Text["Reward"]["EBmoney10000"]
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][4][1]["ServerLimitCount"]=1
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][4][1]["ServerLimitDyna"]=80171
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][4][1]["ServerLimitPos"]=1
tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][4][1]["ChangeLevel"]=tJuneIntegralPack_Reward[3200375]["SameRandomRewards"][1]

------------------------------------------------------------------逻辑区------------------------------------------------------------------------------


--打开礼包
function JuneIntegralPack_UsePack(nPackId)
    --检测礼包
    if not Item_ChkItem(nPackId) then
       return
    end
	
	--判断空间
    if not User_CheckLeftSpace(tJuneIntegralPack_Reward[nPackId]["OpenCheck"]["BagSpace"]) then
       Sys_MsgBox(string.format(tJuneIntegralPack_Text["BagSpaceTip"],tJuneIntegralPack_Reward[nPackId]["OpenCheck"]["BagSpace"]))
       return 
    end
	
	--判断赠点上限
    if not JuneIntegralPack_CheckMaxEmoney(tJuneIntegralPack_Reward[nPackId]["OpenCheck"]["MAXEmoney"]) then
       return 
    end
	
    if not Item_DelItem(nPackId) then
       return
    end 
	JuneIntegralPack_AddReaward(tJuneIntegralPack_Reward[nPackId],nPackId)
end

--获取奖励
function JuneIntegralPack_AddReaward(tReward,nPackId)
	local tReturnItems={}

	--必得
	if tReward["AbsoluteRewards"] ~=nil then
		JuneIntegralPack_AddItem(tReward["AbsoluteRewards"],tReturnItems)
	end

	--同概率基数
	if tReward["SameRandomRewards"] ~=nil then

		local nSumCount = tReward["SameRandomRewards"]["SumCount"]

		for subKey,subValue in ipairs(tReward["SameRandomRewards"]) do
			if Sys_Random(subValue["Probabil"],nSumCount) then 
				JuneIntegralPack_AddItem(subValue,tReturnItems) 
				break 
			else 
				nSumCount = nSumCount - subValue["Probabil"]
			end
		end
	end

	Sys_SaveActionFestivalLog(string.format(tJuneIntegralPack_Const["Log"],nPackId,tReturnItems[1]["ID"],tReturnItems[2]["ID"],tReturnItems[1]["Count"],tReturnItems[2]["Count"]))

	User_TalkChannel2005(string.format(tJuneIntegralPack_Text["RewardTip"],tReturnItems[1]["Name"],tReturnItems[2]["Name"]))

end

--获得物品
function JuneIntegralPack_AddItem(tReward,tReturnItems)
	for key,value in ipairs(tReward) do
		--判断是否非物品
		if value["ItemType"]==nil or value["ItemType"]==0 then
			--判断是否上限
			if not JuneIntegralPack_CheckLimit(value) then
				return JuneIntegralPack_AddItem(value["ChangeLevel"],tReturnItems)
			end
			if value["Function"] ~=nil then
				value["Function"](value["Count"])
				local tRewardItem={}
				tRewardItem["Name"]=value["Name"]
				tRewardItem["ID"]=value["ValueType"]
				tRewardItem["Count"]=value["Count"]
				tRewardItem["OtherProperty"]=value["OtherProperty"]
				table.insert(tReturnItems,tRewardItem)
			end
		else
			JuneIntegralPack_GetItemType(value,tReturnItems)
		end
	end
end


--添加道具
function JuneIntegralPack_GetItemType(tRewardItem,tReturnItems)

	--返回的表数据
	local tReturnItem={}
	tReturnItem["ID"]= tRewardItem["ItemType"]
	tReturnItem["Name"]= tRewardItem["Name"]
	tReturnItem["OtherProperty"]= tRewardItem["OtherProperty"]
	
	local sItemAtrr=tRewardItem["AddItemParm"]
	--判断是否上限
	if not JuneIntegralPack_CheckLimit(tRewardItem) then
		return JuneIntegralPack_AddItem(tRewardItem["ChangeLevel"],tReturnItems)
	end
	--获得物品
	Item_AddNewItem(tReturnItem["ID"],sItemAtrr)
	tReturnItem["Count"]=JuneIntegralPack_GetCount(sItemAtrr)
	table.insert(tReturnItems,tReturnItem)
end

--检查服务器限制数量
function JuneIntegralPack_CheckLimit(tRewardItem)
	if tRewardItem["ServerLimitCount"]~=nil then
		local nDynaValue= Get_SysDynaGlobalData(tRewardItem["ServerLimitDyna"],tRewardItem["ServerLimitPos"])
        if nDynaValue >=  tRewardItem["ServerLimitCount"] then
			return false
        else
			Sys_SetSynaGlobalData(tRewardItem["ServerLimitDyna"],tRewardItem["ServerLimitPos"],nDynaValue+1)
			return true
		end
	end
	return true
end

--获取数量
function JuneIntegralPack_GetCount(sItemAttr)
	
    if sItemAttr ==nil or sItemAttr=="" then
        return 1
    end
    local tItemAttr = Sys_Split(sItemAttr," ")
	local count  = tonumber(tItemAttr[2]) or 1
    return count
end


--检测天石上限
function JuneIntegralPack_CheckMaxEmoney(nAddEmoney)
	local nEmoney=Get_UserMonoEMoney()+nAddEmoney
	if nEmoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tJuneIntegralPack_Text["MAXEmoneyTip"])
		return false
	end
	return true
end



--清动态码数据
function JuneIntegralPack_ClearSynaGlobalData()
	--判断重置标识
	if Get_SysDynaGlobalData(tJuneIntegralPack_Dyna["ServerLimitDyna"],tJuneIntegralPack_Dyna["ClearFlagPos"])==tJuneIntegralPack_Dyna["ClearFlag"] then
		return
	end
	--重置
	if Sys_ResetAllSynaGlobalData(tJuneIntegralPack_Dyna["ServerLimitDyna"]) then
		Sys_SetSynaGlobalData(tJuneIntegralPack_Dyna["ServerLimitDyna"],tJuneIntegralPack_Dyna["ClearFlagPos"],tJuneIntegralPack_Dyna["ClearFlag"])
	end
end

--重置标示位
function JuneIntegralPack_ClearSynaGlobalDataFlag()
	Sys_SetSynaGlobalData(tJuneIntegralPack_Dyna["ServerLimitDyna"],tJuneIntegralPack_Dyna["ClearFlagPos"],0)
end



------------------------------------物品模板----------------------------------------------------------------
--10积分礼包
tItem[3200372]=tItem[3200372] or {}
tItem[3200372]["Function"]=function(nItemId,sItemName)
    JuneIntegralPack_UsePack(nItemId)
end

--40积分礼包
tItem[3200373]=tItem[3200372]
--100积分礼包
tItem[3200374]=tItem[3200372]
--200积分礼包
tItem[3200375]=tItem[3200372]

------------------------------------203W----------------------------------------------------------------
--时间函数触发
--'00:00 00:05'
tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],JuneIntegralPack_ClearSynaGlobalData)
tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
table.insert(tOntimerMin_HM[0001],JuneIntegralPack_ClearSynaGlobalData)
tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
table.insert(tOntimerMin_HM[0002],JuneIntegralPack_ClearSynaGlobalData)
tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
table.insert(tOntimerMin_HM[0003],JuneIntegralPack_ClearSynaGlobalData)
tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
table.insert(tOntimerMin_HM[0004],JuneIntegralPack_ClearSynaGlobalData)
tOntimerMin_HM[0005] = tOntimerMin_HM[0005] or {}
table.insert(tOntimerMin_HM[0005],JuneIntegralPack_ClearSynaGlobalData)

--'00:06 00:07'
tOntimerMin_HM[0006] = tOntimerMin_HM[0006] or {}
table.insert(tOntimerMin_HM[0006],JuneIntegralPack_ClearSynaGlobalDataFlag)
tOntimerMin_HM[0007] = tOntimerMin_HM[0007] or {}
table.insert(tOntimerMin_HM[0007],JuneIntegralPack_ClearSynaGlobalDataFlag)