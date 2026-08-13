------------------------------------------------------------------------------------
--Name：        191111[英文征服][活动脚本]12月线下充值返利（12.17-1.2）
--Creator:      郑洵
--Created:     2019-11-11
------------------------------------------------------------------------------------
--任务需求：
--活动时间：12.17-1.2
--活动地址：https://coevent.99.com/christmasncredit2019/client

------------------------------------------------------------------------------------
--前缀：DecemberRecharge2019_
--掩码  209 75 背包信

-- lua.ini
-- 41616 = V100\活动脚本\H5\[征服][活动脚本]12月线下充值返利.lua
-- 41616 = V100\ActiveScript\H5\[Conquer][ActiveScript]DecemberRecharge2019.lua

----------------------------------表配置部分--------------------------------------------
local tDecemberRecharge2019_Web={}
	tDecemberRecharge2019_Web["The_web"]="https://coevent.99.com/christmasncredit2019/client"

----------------------------------逻辑部分---------------------------------------------
--打开内嵌网页
function DecemberRecharge2019_OpenWeb()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["DecemberRecharge2019"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end
	local nUserId = Get_UserId()
	User_SendWebDialog(tDecemberRecharge2019_Web["The_web"],nUserId)
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[2164] = 14
tNpcGossip[25504]= tNpcGossip[25504] or DefaultNpc:new{}
tNpcGossip[25504]["OptionHidden"] = 1
tNpcGossip[25504]["DialogueText"] = tDecemberRecharge2019_Text[25504]
--活动前
tNpcGossip[25504]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25504]["tOption1-1"] = {111}
tNpcGossip[25504]["ChkFunc1-1"]= function()
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[25504]["Text1-1"] = {111,112,113,114,116}
	else
		tNpcGossip[25504]["Text1-1"] = {111,112,113,114,115}
	end
	return CommonFunc_GetBeforeActivityTime(tActivityTime["DecemberRecharge2019"]["ActivityTime"])
end

--活动后
tNpcGossip[25504]["Text1-2"] = {111,121}
tNpcGossip[25504]["tOption1-2"] = {121}
tNpcGossip[25504]["ChkFunc1-2"]= function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["DecemberRecharge2019"]["ActivityTime"])
end

--活动中
tNpcGossip[25504]["Text1-3"] = {111,131,132,114,115,116}
tNpcGossip[25504]["tOption1-3"] = {131,132}
tNpcGossip[25504]["ChkFunc1-3"]= function()
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[25504]["Text1-3"] = {111,131,132,114,116}
	else
		tNpcGossip[25504]["Text1-3"] = {111,131,132,114,115}
	end
	return Sys_ChkFullTime(tActivityTime["DecemberRecharge2019"]["ActivityTime"])
end
--进入页面
tNpcGossip[25504]["OptionFunc131"] = "DecemberRecharge2019_OpenWeb"


