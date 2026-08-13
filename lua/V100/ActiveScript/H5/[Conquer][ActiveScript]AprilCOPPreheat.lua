------------------------------------------------------------------------------------
--Name：      200324[英文征服][活动脚本]4月COP预热活动（4.14-5.28）
--Creator:      郑洵
--Created:     2020-03-23
------------------------------------------------------------------------------------
-- 任务需求：
-- 更新时间：
-- 2020年4月14日（周二）例行维护

-- 更新范围：
-- 全区全服

-- 活动时间：
-- 4.14-5.28

-- 任务概述：
-- 1.活动期间，给全区全服用户发送一个COP版本体验预约邀请函。邀请函需要简单阐述COP版本核心玩点和利点。邀请用户到线下页面，链接稍后提供。
-- 2.当COP正式上线的时候（时间待定），再给全体发一封正式体验邀请函，并附上下载地址，地址稍后提供。

-- 前缀：AprilCOPPreheat_
-- logid：12001938
-- 41780 = V100\ActiveScript\H5\[Conquer][ActiveScript]AprilCOPPreheat.lua
-- 41780 = V100\活动脚本\H5\[征服][活动脚本]4月COP预热活动.lua

-- 掩码 218 13 体验预约邀请函
-- 掩码 218 14 正式体验邀请函


----------------------------------表配置部分--------------------------------------------
local tAprilCOPPreheat_Cont = {}
	tAprilCOPPreheat_Cont[1] = 3315753
	tAprilCOPPreheat_Cont[2] = 3315754

local tAprilCOPPreheat_ActivityTime = {}
	tAprilCOPPreheat_ActivityTime[3315753] = tActivityTime["AprilCOPPreheat"]["ActivityTime"][1]
	tAprilCOPPreheat_ActivityTime[3315754] = tActivityTime["AprilCOPPreheat"]["ActivityTime"][2]

local tAprilCOPPreheat_Web = {}
	tAprilCOPPreheat_Web["The_web"] = {}
	tAprilCOPPreheat_Web["The_web"][1] = "https://coevent.99.com/copreservation/"
	tAprilCOPPreheat_Web["The_web"][2] = "https://coevent.99.com/copegproulette/"

local tAprilCOPPreheat_Reward = {}
	-- ===体验预约邀请函
	-- ===索引:tAprilCOPPreheat_Reward[3315753]
	-- ===删除: 3315753,1
	tAprilCOPPreheat_Reward[3315753] = {}
	tAprilCOPPreheat_Reward[3315753]["LogId"] = 12001938
	tAprilCOPPreheat_Reward[3315753]["DeleteItem"] = {}
	tAprilCOPPreheat_Reward[3315753]["DeleteItem"][1] = {}
	tAprilCOPPreheat_Reward[3315753]["DeleteItem"][1]["Id"] = 3315753 -- 【库】 3315753 【库里没有该物品】[属性:]
	tAprilCOPPreheat_Reward[3315753]["RewardCultivation"] = {}
	tAprilCOPPreheat_Reward[3315753]["RewardCultivation"]["Value"] = 30 -- 修行值, 【需求】30修行值
	tAprilCOPPreheat_Reward[3315753]["RewardEffect"] = {}
	tAprilCOPPreheat_Reward[3315753]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilCOPPreheat_Reward[3315753]["RewardEffect"]["Effect"] = "angelwing"


	tAprilCOPPreheat_Reward[3315754] = {}
	-- ===正式体验邀请函
	-- ===索引:tAprilCOPPreheat_Reward[3315754]
	-- ===删除: 3315754,1
	tAprilCOPPreheat_Reward[3315754]["LogId"] = 12001938
	tAprilCOPPreheat_Reward[3315754]["DeleteItem"] = {}
	tAprilCOPPreheat_Reward[3315754]["DeleteItem"][1] = {}
	tAprilCOPPreheat_Reward[3315754]["DeleteItem"][1]["Id"] = 3315754 -- 【库】 3315754 【库里没有该物品】[属性:]
	tAprilCOPPreheat_Reward[3315754]["RewardCultivation"] = {}
	tAprilCOPPreheat_Reward[3315754]["RewardCultivation"]["Value"] = 30 -- 修行值, 【需求】30修行值
	tAprilCOPPreheat_Reward[3315754]["RewardEffect"] = {}
	tAprilCOPPreheat_Reward[3315754]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprilCOPPreheat_Reward[3315754]["RewardEffect"]["Effect"] = "angelwing"



----------------------------------逻辑部分---------------------------------------------
--打开网页
function AprilCOPPreheat_OpenWeb(nAprilCOPPreheat_Web)
	local nAprilCOPPreheat_UserId = Get_UserId()

	--时间判断
	if not Sys_ChkFullTime(tActivityTime["AprilCOPPreheat"]["ActivityTime"][nAprilCOPPreheat_Web]) then
		return
	end

	local nAprilCOPPreheat_ItemId = tAprilCOPPreheat_Cont[nAprilCOPPreheat_Web]
	if RewardTemplate_UseItemAndMsg(tAprilCOPPreheat_Reward[nAprilCOPPreheat_ItemId]) then
		User_TalkChannel2005(tBackpackLetter_Text[nAprilCOPPreheat_ItemId]["Cultivation"])
		-- Sys_MsgBox(tBackpackLetter_Text[nAprilCOPPreheat_ItemId]["Cultivation"])
		User_SendWebPage(tAprilCOPPreheat_Web["The_web"][nAprilCOPPreheat_Web],nAprilCOPPreheat_UserId)
	end
end

-- 过期删除
function AprilCOPPreheat_ChkTimeOut(nAprilCOPPreheat_ItemId,sAprilCOPPreheat_ItemName)
	-- 判断物品在背包
	local nAprilCOPPreheat_UserId = Get_UserId()
	if not Item_ChkItem(nAprilCOPPreheat_ItemId) then
		return
	end

	--时间判断
	if not Sys_ChkFullTime(tAprilCOPPreheat_ActivityTime[nAprilCOPPreheat_ItemId]) then
		if Item_ChkItem(nAprilCOPPreheat_ItemId) and Item_DelItem(nAprilCOPPreheat_ItemId) then
			User_TalkChannel2005(tBackpackLetter_Text[nAprilCOPPreheat_ItemId]["TimeOut"])
			Sys_MsgBox(tBackpackLetter_Text[nAprilCOPPreheat_ItemId]["TimeOut"])
		end
		return
	end

	LinkItemGossipFunc_New(nAprilCOPPreheat_ItemId,"1-1")
end


---------------------------------------------物品模板---------------------------------------------
--体验预约邀请函
tItemFace[3315753] = 795
tItem[3315753] = tItem[3315753] or {}
tItem[3315753]["DialogueText"] = tAprilCOPPreheat_Text[3315753]
tItem[3315753]["Text1-1"] = {111,112,113,114}
tItem[3315753]["Function"]=function(nAprilCOPPreheat_ItemId,sAprilCOPPreheat_ItemName)
	AprilCOPPreheat_ChkTimeOut(nAprilCOPPreheat_ItemId,sAprilCOPPreheat_ItemName)
end
tItem[3315753]["tOption1-1"] = {111}
tItem[3315753]["OptionFunc111"] = "AprilCOPPreheat_OpenWeb</N>1"--打开网页

--正式体验邀请函
tItemFace[3315754] = 1404
tItem[3315754] = tItem[3315754] or {}
tItem[3315754]["DialogueText"] = tAprilCOPPreheat_Text[3315754]
tItem[3315754]["Text1-1"] = {111,112,113}
tItem[3315754]["Function"]=function(nAprilCOPPreheat_ItemId,sAprilCOPPreheat_ItemName)
	AprilCOPPreheat_ChkTimeOut(nAprilCOPPreheat_ItemId,sAprilCOPPreheat_ItemName)
end
tItem[3315754]["tOption1-1"] = {111}
tItem[3315754]["OptionFunc111"] = "AprilCOPPreheat_OpenWeb</N>2"--打开网页

