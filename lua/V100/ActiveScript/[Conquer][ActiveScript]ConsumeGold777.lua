------------------------------------------------------------------------------------
--Name：       190917[英文征服][活动脚本]金币消耗活动-777机（10.15-11.04）
--Creator:      杨志翔
--Created:     2019-09-17
------------------------------------------------------------------------------------
--任务需求：
--777活动 主要功能在页面内完成
--这里制作NPC内嵌页面
--
--页面:
--前缀ConsumeGold777_
--背包信stc  204 63  控制  
--背包信ID 3323631
--------------------------------常量部分-----------------------------
local tConsumeGold777_Data = {}
	tConsumeGold777_Data["Web"] = "https://coevent.99.com/ipad/copegproulette/"
	tConsumeGold777_Data["ActivityTime"] = tActivityTime["ConsumeGold777"]["ActivityTime"]
	
	
--------------------------------逻辑部分-----------------------------

function ConsumeGold777_Open() 
	if not Sys_ChkFullTime(tActivityTime["ConsumeGold777"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local sLink = tConsumeGold777_Data["Web"]
	User_SendWebPage(sLink)
end

-------------------------------Npc部分--------------------------------
tNpcFace[5855] = 52
tNpcGossip[24953] = tNpcGossip[24953] or DefaultNpc:new{}
tNpcGossip[24953]["OptionHidden"] = 1
tNpcGossip[24953]["DialogueText"] = tConsumeGold777_Text[24953]
--活动前
tNpcGossip[24953]["Text1-1"] = {111,112,113}
tNpcGossip[24953]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tConsumeGold777_Data["ActivityTime"])
end
tNpcGossip[24953]["tOption1-1"] = {111}

--活动后
tNpcGossip[24953]["Text1-2"] = {121}
tNpcGossip[24953]["ChkFunc1-2"] = function ()
	
	return CommonFunc_GetAfterActivityTime(tConsumeGold777_Data["ActivityTime"])
end
tNpcGossip[24953]["tOption1-2"] = {121}

--活动中
tNpcGossip[24953]["Text1-3"] = {131,132,133}
tNpcGossip[24953]["tOption1-3"] = {131}
tNpcGossip[24953]["ChkFunc1-3"] = function ()
	
	return Sys_ChkFullTime(tConsumeGold777_Data["ActivityTime"])
end
tNpcGossip[24953]["OptionFunc131"] = "ConsumeGold777_Open"




	