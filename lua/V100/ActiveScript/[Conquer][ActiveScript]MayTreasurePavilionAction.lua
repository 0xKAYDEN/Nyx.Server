
------------------------------------------------------------------------------------
--Name:			190311[ios英文征服][活动脚本]制作4月藏宝阁发奖礼包和action（4.9）
--Creator: 		茅志伟
--Created:		2019/03/11
------------------------------------------------------------------------------------

--命名前缀 tMayTreasurePavilionAction_

--lua.ini 41254
--41254 = V100\ActiveScript\[Conquer][ActiveScript]MayTreasurePavilionAction.lua
-- 41254 = V100\活动脚本\[征服][活动脚本]线下藏宝阁（5.7-6.5）.lua

--LogId 12001383

--掩码表
local tMayTreasurePavilionAction_Stc = {}
--记录练气天天乐包免费开启礼包次数
tMayTreasurePavilionAction_Stc[3321150] = {}
tMayTreasurePavilionAction_Stc[3321150]["EventType"] = 193
tMayTreasurePavilionAction_Stc[3321150]["DataType"] = 87
--记录自创天天乐包免费开启礼包次数
tMayTreasurePavilionAction_Stc[3321151] = {}
tMayTreasurePavilionAction_Stc[3321151]["EventType"] = 193
tMayTreasurePavilionAction_Stc[3321151]["DataType"] = 88
--记录追加天天乐包免费开启礼包次数
tMayTreasurePavilionAction_Stc[3321152] = {}
tMayTreasurePavilionAction_Stc[3321152]["EventType"] = 193
tMayTreasurePavilionAction_Stc[3321152]["DataType"] = 89
--记录精炼天天乐包免费开启礼包次数
tMayTreasurePavilionAction_Stc[3321153] = {}
tMayTreasurePavilionAction_Stc[3321153]["EventType"] = 193
tMayTreasurePavilionAction_Stc[3321153]["DataType"] = 90

--常量表
local tMayTreasurePavilionAction_Data = {}
--天天乐礼包使用次数上限
tMayTreasurePavilionAction_Data["Times"] = 90

local tMayTreasurePavilionAction_Pack = {}
	-- ===练气天天乐包
	-- ===索引:tMayTreasurePavilionAction_Pack[3321150]
	tMayTreasurePavilionAction_Pack[3321150] = {}
	tMayTreasurePavilionAction_Pack[3321150]["LogId"] = 12001383
	tMayTreasurePavilionAction_Pack[3321150]["RewardItem"] = {}
	tMayTreasurePavilionAction_Pack[3321150]["RewardItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321150]["RewardItem"][1]["Id"] = 3304335 -- 【库】5000ChiPointsPack[属性:9], 【表格】5000气力值（赠）
	tMayTreasurePavilionAction_Pack[3321150]["RewardItem"][1]["Attr"] = "0 1" -- 5000ChiPointsPack*1
	tMayTreasurePavilionAction_Pack[3321150]["RewardEffect"] = {}
	tMayTreasurePavilionAction_Pack[3321150]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayTreasurePavilionAction_Pack[3321150]["RewardEffect"]["Effect"] = "angelwing"


	tMayTreasurePavilionAction_Pack[3321151] = {}
	-- ===自创天天乐包
	-- ===索引:tMayTreasurePavilionAction_Pack[3321151]
	tMayTreasurePavilionAction_Pack[3321151]["LogId"] = 12001383
	tMayTreasurePavilionAction_Pack[3321151]["RewardItem"] = {}
	tMayTreasurePavilionAction_Pack[3321151]["RewardItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321151]["RewardItem"][1]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】10个大爆丹（赠）
	tMayTreasurePavilionAction_Pack[3321151]["RewardItem"][1]["Attr"] = "0 10 3" -- SeniorTrainingPill（赠）*10
	tMayTreasurePavilionAction_Pack[3321151]["RewardItem"][2] = {}
	tMayTreasurePavilionAction_Pack[3321151]["RewardItem"][2]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】10个SuperProtectionPill（赠）
	tMayTreasurePavilionAction_Pack[3321151]["RewardItem"][2]["Attr"] = "0 10" -- SuperProtectionPill*10
	tMayTreasurePavilionAction_Pack[3321151]["RewardItem"][3] = {}
	tMayTreasurePavilionAction_Pack[3321151]["RewardItem"][3]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0], 【表格】10个免费修炼丹（赠）
	tMayTreasurePavilionAction_Pack[3321151]["RewardItem"][3]["Attr"] = "0 10 3" -- FavoredTrainingPill（赠）*10
	tMayTreasurePavilionAction_Pack[3321151]["RewardEffect"] = {}
	tMayTreasurePavilionAction_Pack[3321151]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayTreasurePavilionAction_Pack[3321151]["RewardEffect"]["Effect"] = "angelwing"


	tMayTreasurePavilionAction_Pack[3321152] = {}
	-- ===追加天天乐包
	-- ===索引:tMayTreasurePavilionAction_Pack[3321152]
	tMayTreasurePavilionAction_Pack[3321152]["LogId"] = 12001383
	tMayTreasurePavilionAction_Pack[3321152]["RewardItem"] = {}
	tMayTreasurePavilionAction_Pack[3321152]["RewardItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321152]["RewardItem"][1]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】2个赠品+3赤练石（赠）
	tMayTreasurePavilionAction_Pack[3321152]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+3Stone（赠）*2
	tMayTreasurePavilionAction_Pack[3321152]["RewardEffect"] = {}
	tMayTreasurePavilionAction_Pack[3321152]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayTreasurePavilionAction_Pack[3321152]["RewardEffect"]["Effect"] = "angelwing"


	tMayTreasurePavilionAction_Pack[3321153] = {}
	-- ===精炼天天乐包
	-- ===索引:tMayTreasurePavilionAction_Pack[3321153]
	tMayTreasurePavilionAction_Pack[3321153]["LogId"] = 12001383
	tMayTreasurePavilionAction_Pack[3321153]["RewardItem"] = {}
	tMayTreasurePavilionAction_Pack[3321153]["RewardItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321153]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】3个明亮星陨石
	tMayTreasurePavilionAction_Pack[3321153]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tMayTreasurePavilionAction_Pack[3321153]["RewardEffect"] = {}
	tMayTreasurePavilionAction_Pack[3321153]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayTreasurePavilionAction_Pack[3321153]["RewardEffect"]["Effect"] = "angelwing"


	tMayTreasurePavilionAction_Pack[3321154] = {}
	-- ===加8赠品赤练石精装包
	-- ===索引:tMayTreasurePavilionAction_Pack[3321154]
	-- ===删除: 3321154,1
	tMayTreasurePavilionAction_Pack[3321154]["LogId"] = 12001383
	tMayTreasurePavilionAction_Pack[3321154]["DeleteItem"] = {}
	tMayTreasurePavilionAction_Pack[3321154]["DeleteItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321154]["DeleteItem"][1]["Id"] = 3321154 -- 【库】追加尊享礼包[属性:9]
	tMayTreasurePavilionAction_Pack[3321154]["RewardItem"] = {}
	tMayTreasurePavilionAction_Pack[3321154]["RewardItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321154]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】+8赠品赤练石（赠）
	tMayTreasurePavilionAction_Pack[3321154]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tMayTreasurePavilionAction_Pack[3321154]["RewardItem"][2] = {}
	tMayTreasurePavilionAction_Pack[3321154]["RewardItem"][2]["Id"] = 3321158 -- 【库】10W气力值大礼包[属性:9], 【表格】10W气力值（赠）
	tMayTreasurePavilionAction_Pack[3321154]["RewardItem"][2]["Attr"] = "0 1" -- 10W气力值大礼包*1
	tMayTreasurePavilionAction_Pack[3321154]["RewardEffect"] = {}
	tMayTreasurePavilionAction_Pack[3321154]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayTreasurePavilionAction_Pack[3321154]["RewardEffect"]["Effect"] = "angelwing"


	tMayTreasurePavilionAction_Pack[3321155] = {}
	-- ===加6赠品赤练石精装包
	-- ===索引:tMayTreasurePavilionAction_Pack[3321155]
	-- ===删除: 3321155,1
	tMayTreasurePavilionAction_Pack[3321155]["LogId"] = 12001383
	tMayTreasurePavilionAction_Pack[3321155]["DeleteItem"] = {}
	tMayTreasurePavilionAction_Pack[3321155]["DeleteItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321155]["DeleteItem"][1]["Id"] = 3321155 -- 【库】追加狂欢礼包[属性:9]
	tMayTreasurePavilionAction_Pack[3321155]["RewardItem"] = {}
	tMayTreasurePavilionAction_Pack[3321155]["RewardItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321155]["RewardItem"][1]["Id"] = 730006 -- 【库】+6Stone[属性:0], 【表格】+6赠品赤练石（赠）
	tMayTreasurePavilionAction_Pack[3321155]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tMayTreasurePavilionAction_Pack[3321155]["RewardItem"][2] = {}
	tMayTreasurePavilionAction_Pack[3321155]["RewardItem"][2]["Id"] = 3321159 -- 【库】2W气力值大礼包[属性:9], 【表格】2W气力值（赠）
	tMayTreasurePavilionAction_Pack[3321155]["RewardItem"][2]["Attr"] = "0 1" -- 2W气力值大礼包*1
	tMayTreasurePavilionAction_Pack[3321155]["RewardEffect"] = {}
	tMayTreasurePavilionAction_Pack[3321155]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayTreasurePavilionAction_Pack[3321155]["RewardEffect"]["Effect"] = "angelwing"


	tMayTreasurePavilionAction_Pack[3321156] = {}
	-- ===璀璨星陨石精装包
	-- ===索引:tMayTreasurePavilionAction_Pack[3321156]
	-- ===删除: 3321156,1
	tMayTreasurePavilionAction_Pack[3321156]["LogId"] = 12001383
	tMayTreasurePavilionAction_Pack[3321156]["DeleteItem"] = {}
	tMayTreasurePavilionAction_Pack[3321156]["DeleteItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321156]["DeleteItem"][1]["Id"] = 3321156 -- 【库】精炼尊享礼包[属性:9]
	tMayTreasurePavilionAction_Pack[3321156]["RewardItem"] = {}
	tMayTreasurePavilionAction_Pack[3321156]["RewardItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321156]["RewardItem"][1]["Id"] = 3009003 -- 【库】SplendidStarStone[属性:9], 【表格】2颗璀璨星陨石(赠)
	tMayTreasurePavilionAction_Pack[3321156]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的SplendidStarStone*2
	tMayTreasurePavilionAction_Pack[3321156]["RewardItem"][2] = {}
	tMayTreasurePavilionAction_Pack[3321156]["RewardItem"][2]["Id"] = 3321158 -- 【库】10W气力值大礼包[属性:9], 【表格】10W气力值(赠)
	tMayTreasurePavilionAction_Pack[3321156]["RewardItem"][2]["Attr"] = "0 1" -- 10W气力值大礼包*1
	tMayTreasurePavilionAction_Pack[3321156]["RewardEffect"] = {}
	tMayTreasurePavilionAction_Pack[3321156]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayTreasurePavilionAction_Pack[3321156]["RewardEffect"]["Effect"] = "angelwing"


	tMayTreasurePavilionAction_Pack[3321157] = {}
	-- ===晶莹星陨石精装包
	-- ===索引:tMayTreasurePavilionAction_Pack[3321157]
	-- ===删除: 3321157,1
	tMayTreasurePavilionAction_Pack[3321157]["LogId"] = 12001383
	tMayTreasurePavilionAction_Pack[3321157]["DeleteItem"] = {}
	tMayTreasurePavilionAction_Pack[3321157]["DeleteItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321157]["DeleteItem"][1]["Id"] = 3321157 -- 【库】精炼狂欢礼包[属性:9]
	tMayTreasurePavilionAction_Pack[3321157]["RewardItem"] = {}
	tMayTreasurePavilionAction_Pack[3321157]["RewardItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321157]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】2颗晶莹星陨石（赠）
	tMayTreasurePavilionAction_Pack[3321157]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tMayTreasurePavilionAction_Pack[3321157]["RewardItem"][2] = {}
	tMayTreasurePavilionAction_Pack[3321157]["RewardItem"][2]["Id"] = 3321160 -- 【库】1W气力值大礼包[属性:9], 【表格】1W气力值（赠）
	tMayTreasurePavilionAction_Pack[3321157]["RewardItem"][2]["Attr"] = "0 1" -- 1W气力值大礼包*1
	tMayTreasurePavilionAction_Pack[3321157]["RewardEffect"] = {}
	tMayTreasurePavilionAction_Pack[3321157]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayTreasurePavilionAction_Pack[3321157]["RewardEffect"]["Effect"] = "angelwing"


	tMayTreasurePavilionAction_Pack[3321158] = {}
	-- ===10W气力值大礼包
	-- ===索引:tMayTreasurePavilionAction_Pack[3321158]
	-- ===删除: 3321158,1
	tMayTreasurePavilionAction_Pack[3321158]["LogId"] = 12001383
	tMayTreasurePavilionAction_Pack[3321158]["DeleteItem"] = {}
	tMayTreasurePavilionAction_Pack[3321158]["DeleteItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321158]["DeleteItem"][1]["Id"] = 3321158 -- 【库】10W气力值大礼包[属性:9]
	tMayTreasurePavilionAction_Pack[3321158]["RewardStrengthValue"] = {}
	tMayTreasurePavilionAction_Pack[3321158]["RewardStrengthValue"]["Value"] = 100000 -- 气力值, 【需求】100000气力值
	tMayTreasurePavilionAction_Pack[3321158]["RewardEffect"] = {}
	tMayTreasurePavilionAction_Pack[3321158]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayTreasurePavilionAction_Pack[3321158]["RewardEffect"]["Effect"] = "angelwing"


	tMayTreasurePavilionAction_Pack[3321159] = {}
	-- ===2W气力值大礼包
	-- ===索引:tMayTreasurePavilionAction_Pack[3321159]
	-- ===删除: 3321159,1
	tMayTreasurePavilionAction_Pack[3321159]["LogId"] = 12001383
	tMayTreasurePavilionAction_Pack[3321159]["DeleteItem"] = {}
	tMayTreasurePavilionAction_Pack[3321159]["DeleteItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321159]["DeleteItem"][1]["Id"] = 3321159 -- 【库】2W气力值大礼包[属性:9]
	tMayTreasurePavilionAction_Pack[3321159]["RewardStrengthValue"] = {}
	tMayTreasurePavilionAction_Pack[3321159]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】20000气力值
	tMayTreasurePavilionAction_Pack[3321159]["RewardEffect"] = {}
	tMayTreasurePavilionAction_Pack[3321159]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayTreasurePavilionAction_Pack[3321159]["RewardEffect"]["Effect"] = "angelwing"


	tMayTreasurePavilionAction_Pack[3321160] = {}
	-- ===1W气力值大礼包
	-- ===索引:tMayTreasurePavilionAction_Pack[3321160]
	-- ===删除: 3321160,1
	tMayTreasurePavilionAction_Pack[3321160]["LogId"] = 12001383
	tMayTreasurePavilionAction_Pack[3321160]["DeleteItem"] = {}
	tMayTreasurePavilionAction_Pack[3321160]["DeleteItem"][1] = {}
	tMayTreasurePavilionAction_Pack[3321160]["DeleteItem"][1]["Id"] = 3321160 -- 【库】1W气力值大礼包[属性:9]
	tMayTreasurePavilionAction_Pack[3321160]["RewardStrengthValue"] = {}
	tMayTreasurePavilionAction_Pack[3321160]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tMayTreasurePavilionAction_Pack[3321160]["RewardEffect"] = {}
	tMayTreasurePavilionAction_Pack[3321160]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayTreasurePavilionAction_Pack[3321160]["RewardEffect"]["Effect"] = "angelwing"





--删除过期礼包
local tMayTreasurePavilionAction_Log = {}
tMayTreasurePavilionAction_Log["Deletelog"] = "0,0,%d,%d,12001383,1,0,0"
---------------------------------------------------------逻辑部分
--领取奖励选项显示
function MayTreasurePavilionAction_RewardDisplay(nItemId)
	local nEventType1 = tMayTreasurePavilionAction_Stc[nItemId]["EventType"]
	local nDataType1 = tMayTreasurePavilionAction_Stc[nItemId]["DataType"]
	if Task_StcInterval(nEventType1,nDataType1,1,4) then 
		return true
	else
		return false
	end
end 

--已领取奖励选项显示
function MayTreasurePavilionAction_RewardedDisplay(nItemId)
	local nEventType1 = tMayTreasurePavilionAction_Stc[nItemId]["EventType"]
	local nDataType1 = tMayTreasurePavilionAction_Stc[nItemId]["DataType"]
	if Task_StcInterval(nEventType1,nDataType1,1,4) then 
		return false
	else
		return true
	end
end 

--已领取提示
function MayTreasurePavilionAction_Rewarded(nItemId)
	local sItemName = Get_ItemtypeName(nItemId)
	Sys_MsgBox(string.format(tMayTreasurePavilionAction_Text["Sys_MsgBox"]["Once"],sItemName))
end 


--领奖
function MayTreasurePavilionAction_RewardItem(nItemId)
	local nEventType1 = tMayTreasurePavilionAction_Stc[nItemId]["EventType"]
	local nDataType1 = tMayTreasurePavilionAction_Stc[nItemId]["DataType"]
	local nItemNum = Get_CountItemType(nItemId,0)
	if nItemId ~= 3321151 then 
		if not Sys_ChkFullTime(tActivityTime["MayTreasurePavilionAction"]["ActionTime"]) then 
			if Item_ChkMulItem(nItemId,nItemId,1) then
				Item_DelAllItemByType(nItemId)
				Sys_SaveActionFestivalLog(string.format(tMayTreasurePavilionAction_Log["Deletelog"],nItemId,nItemNum))
				User_TalkChannel2005(tMayTreasurePavilionAction_Text["DelteText"])
				return
			end
		end
	end 
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	--判断是否使用了90次
	if MayTreasurePavilionAction_OverTimes(nItemId) then 
		return
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tMayTreasurePavilionAction_Pack[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	local sName = Get_ItemtypeName(nItemId)
	if not Task_StcInterval(nEventType1,nDataType1,1,4) then 
		Sys_MsgBox(string.format(tMayTreasurePavilionAction_Text["Sys_MsgBox"]["Once"],sName))
		return
	end 
	Task_AddStatistic(nEventType1,nDataType1,1,1)
	Task_SetStcTimestamp(nEventType1,nDataType1,0)
	RewardTemplate_UseItemAndMsg(tMayTreasurePavilionAction_Pack[nItemId])

	--判断是否使用了90次
	if MayTreasurePavilionAction_OverTimes(nItemId) then 
		return
	end
end 

--判断礼包是否使用90次了
function MayTreasurePavilionAction_OverTimes(nItemId)
	local nEventType1 = tMayTreasurePavilionAction_Stc[nItemId]["EventType"]
	local nDataType1 = tMayTreasurePavilionAction_Stc[nItemId]["DataType"]
	local nTimes = tMayTreasurePavilionAction_Data["Times"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nItemNum = Get_CountItemType(nItemId,0)
	if nData1 >= nTimes then
		if Item_ChkMulItem(nItemId,nItemId,1) then
			Item_DelAllItemByType(nItemId)
			Sys_SaveActionFestivalLog(string.format(tMayTreasurePavilionAction_Log["Deletelog"],nItemId,nItemNum))
			User_TalkChannel2005(tMayTreasurePavilionAction_Text["DelteTime"])
		end
		return true
	else
		return false
	end 
end 

--显示总开启次数
function MayTreasurePavilionAction_Times(nItemId)
	local nEventType1 = tMayTreasurePavilionAction_Stc[nItemId]["EventType"]
	local nDataType1 = tMayTreasurePavilionAction_Stc[nItemId]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	tItem[nItemId]["Text112"] = string.format(tMayTreasurePavilionAction_Text[nItemId]["Text112"],nData1)
	return true
end 


----------------------------------------------------------------------对白逻辑
--练气天天乐包
tItemFace[3321150] = 525
tItem[3321150] = tItem[3321150] or {}
tItem[3321150]["DialogueText"] = tMayTreasurePavilionAction_Text[3321150]
tItem[3321150]["Text1-1"] = {111,112}
tItem[3321150]["ChkFunc1-1"]= function()
	return MayTreasurePavilionAction_Times(3321150)
end 
tItem[3321150]["tOption1-1"] = {111,112}
tItem[3321150]["OptionChkFunc111"] = function ()  ---未领取选项
	return MayTreasurePavilionAction_RewardDisplay(3321150)
end 
tItem[3321150]["OptionFunc111"] = "MayTreasurePavilionAction_RewardItem</N>3321150"
tItem[3321150]["OptionChkFunc112"] = function ()  ---已领取选项
	return MayTreasurePavilionAction_RewardedDisplay(3321150)
end
tItem[3321150]["OptionFunc112"] = "MayTreasurePavilionAction_Rewarded</N>3321150"

--自创天天乐包
tItemFace[3321151] = 1009
tItem[3321151] = tItem[3321151] or {}
tItem[3321151]["DialogueText"] = tMayTreasurePavilionAction_Text[3321151]
tItem[3321151]["Text1-1"] = {111,112}
tItem[3321151]["ChkFunc1-1"]= function()
	return MayTreasurePavilionAction_Times(3321151)
end 
tItem[3321151]["tOption1-1"] = {111,112}
tItem[3321151]["OptionChkFunc111"] = function ()  ---未领取选项
	return MayTreasurePavilionAction_RewardDisplay(3321151)
end 
tItem[3321151]["OptionFunc111"] = "MayTreasurePavilionAction_RewardItem</N>3321151"
tItem[3321151]["OptionChkFunc112"] = function ()  ---已领取选项
	return MayTreasurePavilionAction_RewardedDisplay(3321151)
end
tItem[3321151]["OptionFunc112"] = "MayTreasurePavilionAction_Rewarded</N>3321151"

--追加天天乐包
tItemFace[3321152] = 1008
tItem[3321152] = tItem[3321152] or {}
tItem[3321152]["DialogueText"] = tMayTreasurePavilionAction_Text[3321152]
tItem[3321152]["Text1-1"] = {111,112}
tItem[3321152]["ChkFunc1-1"]= function()
	return MayTreasurePavilionAction_Times(3321152)
end 
tItem[3321152]["tOption1-1"] = {111,112}
tItem[3321152]["OptionChkFunc111"] = function ()  ---未领取选项
	return MayTreasurePavilionAction_RewardDisplay(3321152)
end 
tItem[3321152]["OptionFunc111"] = "MayTreasurePavilionAction_RewardItem</N>3321152"
tItem[3321152]["OptionChkFunc112"] = function ()  ---已领取选项
	return MayTreasurePavilionAction_RewardedDisplay(3321152)
end
tItem[3321152]["OptionFunc112"] = "MayTreasurePavilionAction_Rewarded</N>3321152"

--精炼天天乐包
tItemFace[3321153] = 1006
tItem[3321153] = tItem[3321153] or {}
tItem[3321153]["DialogueText"] = tMayTreasurePavilionAction_Text[3321153]
tItem[3321153]["Text1-1"] = {111,112}
tItem[3321153]["ChkFunc1-1"]= function()
	return MayTreasurePavilionAction_Times(3321153)
end 
tItem[3321153]["tOption1-1"] = {111,112}
tItem[3321153]["OptionChkFunc111"] = function ()  ---未领取选项
	return MayTreasurePavilionAction_RewardDisplay(3321153)
end 
tItem[3321153]["OptionFunc111"] = "MayTreasurePavilionAction_RewardItem</N>3321153"
tItem[3321153]["OptionChkFunc112"] = function ()  ---已领取选项
	return MayTreasurePavilionAction_RewardedDisplay(3321153)
end
tItem[3321153]["OptionFunc112"] = "MayTreasurePavilionAction_Rewarded</N>3321153"


tItem[3321154] = tItem[3321154] or {}
tItem[3321154]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMayTreasurePavilionAction_Pack[nItemId])
end
tItem[3321155] = tItem[3321154] or {}
tItem[3321156] = tItem[3321154] or {}
tItem[3321157] = tItem[3321154] or {}
tItem[3321158] = tItem[3321154] or {}
tItem[3321159] = tItem[3321154] or {}
tItem[3321160] = tItem[3321154] or {}