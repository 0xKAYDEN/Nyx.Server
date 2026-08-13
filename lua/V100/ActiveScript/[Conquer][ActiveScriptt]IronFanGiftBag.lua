------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]二转非铁扇职业送铁扇4件套(1.14-1.31)
--Creator: 		翁清海
--Created:		2017/01/13
------------------------------------------------------------------------------------


--命名前缀
--IronFan_GiftBag_

--logid:12000633

local tIronFan_GiftBag_Cont = {}
	tIronFan_GiftBag_Cont["ProId"] = {}
	tIronFan_GiftBag_Cont["ProId"]["Min"] = 160
	tIronFan_GiftBag_Cont["ProId"]["Max"] = 165
	
	tIronFan_GiftBag_Cont["Level"] = {}
	tIronFan_GiftBag_Cont["Level"]["Level"] = 1
	tIronFan_GiftBag_Cont["Level"]["Metempsychosis"] = 2

local tIronFan_GiftBag_Reward = {}
	tIronFan_GiftBag_Reward["Login"] = {}
	tIronFan_GiftBag_Reward["Login"]["EventType"] = 154
	tIronFan_GiftBag_Reward["Login"]["DataType"] = 69
	tIronFan_GiftBag_Reward["Login"]["RewardTotalData"] = 1
	tIronFan_GiftBag_Reward["Login"]["RewardItem"] = {}
	tIronFan_GiftBag_Reward["Login"]["RewardItem"][1] = {}
	tIronFan_GiftBag_Reward["Login"]["RewardItem"][1]["Id"] = 3302145
	tIronFan_GiftBag_Reward["Login"]["RewardItem"][1]["Attr"] = "0 1"
	tIronFan_GiftBag_Reward["Login"]["LogId"] = 12000633

	--铁扇4件套
	tIronFan_GiftBag_Reward[3302145] = {}
	tIronFan_GiftBag_Reward[3302145]["RewardItem"] = {}
	tIronFan_GiftBag_Reward[3302145]["RewardItem"][1] = {}
	tIronFan_GiftBag_Reward[3302145]["RewardItem"][1]["Id"] = 626029
	tIronFan_GiftBag_Reward[3302145]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 0 0 0 3"
	tIronFan_GiftBag_Reward[3302145]["RewardItem"][2] = {}
	tIronFan_GiftBag_Reward[3302145]["RewardItem"][2]["Id"] = 170009
	tIronFan_GiftBag_Reward[3302145]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3"
	tIronFan_GiftBag_Reward[3302145]["RewardItem"][3] = {}
	tIronFan_GiftBag_Reward[3302145]["RewardItem"][3]["Id"] = 101009
	tIronFan_GiftBag_Reward[3302145]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3"
	tIronFan_GiftBag_Reward[3302145]["DeleteItem"] = {}
	tIronFan_GiftBag_Reward[3302145]["DeleteItem"][1] = {}
	tIronFan_GiftBag_Reward[3302145]["DeleteItem"][1]["Id"] = 3302145
	tIronFan_GiftBag_Reward[3302145]["LogId"] = 12000633
	
	local tIronFan_GiftBag_Time = {}
	tIronFan_GiftBag_Time["Activity"] = "2017-01-14 00:00 2017-01-31 23:59"
	
	local tIronFan_GiftBag_Web = {}
	tIronFan_GiftBag_Web["Url"] = "https://bit.ly/2TCSSxb"
	
--------------------------------------逻辑部分-------------------------------------------
function IronFan_GiftBag_GetBag()
	local nUserId = Get_UserId()
	local nPro = Get_UserProfession(nUserId)
	local nLevel = tIronFan_GiftBag_Cont["Level"]["Level"]
	local nMetempsychosis = tIronFan_GiftBag_Cont["Level"]["Metempsychosis"]
	
	--时间判断
	if not Sys_ChkFullTime(tIronFan_GiftBag_Time["Activity"]) then
		return
	end
	
	--职业判断
	if nPro >= tIronFan_GiftBag_Cont["ProId"]["Min"] and nPro <= tIronFan_GiftBag_Cont["ProId"]["Max"] then
		return
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tIronFan_GiftBag_Reward["Login"])
end

function IronFan_BackDianOpen(nItemId)
	--跳转相应链接
	local nUserId = Get_UserId()
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		local sPszParam = tIronFan_GiftBag_Web["Url"]
		-- User_SendWebDialog(sPszParam,nUserId)
		User_SendWebPage(sPszParam,nUserId)
	end
end

--------------------------------------物品模板-------------------------------------------
tItem[3302145] = tItem[3302145] or {}
tItem[3302145]["Function"] = function(nItemTypeId,sItemName)
	RewardTemplate_UseItemAndMsg(tIronFan_GiftBag_Reward[nItemTypeId])
end

--打开背包信
tItemFace[3327521] = 2781
-- 200113[英文征服][活动脚本]PUBG电商节邀请信
tItem[3327521] = tItem[3327521] or {}
tItem[3327521]["DialogueText"] = tIronFan_Text[3327521]
tItem[3327521]["Text1-1"] = {111,112}
tItem[3327521]["tOption1-1"] = {1}
tItem[3327521]["OptionFunc1"] = "IronFan_BackDianOpen</N>3327521"


--------------------------------------上线触发-------------------------------------------
--table.insert(tSystem_PlayLogin_Func,IronFan_GiftBag_GetBag)