------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]拼多多模式拉新活动（上古神器）（8.06-9.04）
--Creator:		郑洵
--Created:		2019/07/15
------------------------------------------------------------------------------------
--任务需求：
--活动时间：8.06-9.04
--活动地址：https://coevent.99.com/relicrecruit/
------------------------------------------------------------------------------------
--前缀：RelicRecruitvH5_
--掩码  200 50 背包信
----------------------------------表配置部分--------------------------------------------
local tRelicRecruitvH5_Web={}
	tRelicRecruitvH5_Web["The_web"]="https://coevent.99.com/relicrecruit/"

----------------------------------逻辑部分---------------------------------------------
--打开网页
function RelicRecruitvH5_OpenWeb()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["RelicRecruitvH5"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end
	local nUserId = Get_UserId()
	User_SendWebPage(tRelicRecruitvH5_Web["The_web"],nUserId)
end 

----------------------------------NPC部分---------------------------------------------
tNpcFace[5600] = 78
tNpcGossip[24560]= tNpcGossip[24560] or DefaultNpc:new{}
tNpcGossip[24560]["OptionHidden"] = 1
tNpcGossip[24560]["DialogueText"] = tRelicRecruitvH5_Text[24560]
--活动前
tNpcGossip[24560]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24560]["tOption1-1"] = {111}
tNpcGossip[24560]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["RelicRecruitvH5"]["ActivityTime"])
end

--活动后
tNpcGossip[24560]["Text1-2"] = {111,121}
tNpcGossip[24560]["tOption1-2"] = {121}
tNpcGossip[24560]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["RelicRecruitvH5"]["ActivityTime"])
end

--活动中
tNpcGossip[24560]["Text1-3"] = {111,131,132,133,134,135}
tNpcGossip[24560]["tOption1-3"] = {131,132}
tNpcGossip[24560]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tActivityTime["RelicRecruitvH5"]["ActivityTime"])
end
--进入页面
tNpcGossip[24560]["OptionFunc131"] = "RelicRecruitvH5_OpenWeb"


