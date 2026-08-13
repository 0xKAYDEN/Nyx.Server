------------------------------------------------------------------------------------
--Name:			190716[英文征服][活动脚本]8月渠道充值活动（8.16-8.25）
--Creator:		郑洵
--Created:		2019/07/16
------------------------------------------------------------------------------------
--任务需求：
-- 活动时间：8.16-8.25
-- 任务概述：线上做一个NPC，NPC名字渠道活动宣传大使，告诉玩家在活动期间可以参与渠道PAYSAFECARD充值活动，有返利，NPC对话选项跳转对应宣传链接
-- https://co.99.com/news/2019-07-17/introduction_for_paysafecard_exclusive_offer_for_conquer_points__cp_.shtml

------------------------------------------------------------------------------------
--前缀：AugustChannelRecharge_
--掩码  200 51 背包信
----------------------------------表配置部分--------------------------------------------
local tAugustChannelRecharge_Web={}
	tAugustChannelRecharge_Web["The_web"]="https://co.99.com/news/2019-07-17/introduction_for_paysafecard_exclusive_offer_for_conquer_points__cp_.shtml"

----------------------------------逻辑部分---------------------------------------------
--打开网页
function AugustChannelRecharge_OpenWeb()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["AugustChannelRecharge"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end
	local nUserId = Get_UserId()
	User_SendWebPage(tAugustChannelRecharge_Web["The_web"],nUserId)
end 

----------------------------------NPC部分---------------------------------------------
tNpcFace[5601] = 19
tNpcGossip[24561]= tNpcGossip[24561] or DefaultNpc:new{}
tNpcGossip[24561]["OptionHidden"] = 1
tNpcGossip[24561]["DialogueText"] = tAugustChannelRecharge_Text[24561]
--活动前
tNpcGossip[24561]["Text1-1"] = {111,112,113,114}
tNpcGossip[24561]["tOption1-1"] = {111}
tNpcGossip[24561]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["AugustChannelRecharge"]["ActivityTime"])
end

--活动后
tNpcGossip[24561]["Text1-2"] = {111,121}
tNpcGossip[24561]["tOption1-2"] = {121}
tNpcGossip[24561]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["AugustChannelRecharge"]["ActivityTime"])
end

--活动中
tNpcGossip[24561]["Text1-3"] = {111,131,132,133}
tNpcGossip[24561]["tOption1-3"] = {131,132}
tNpcGossip[24561]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tActivityTime["AugustChannelRecharge"]["ActivityTime"])
end
--打开网页
tNpcGossip[24561]["OptionFunc131"] = "AugustChannelRecharge_OpenWeb"


