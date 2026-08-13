------------------------------------------------------------------------------------
--Name：            200218[英文征服][活动脚本]线下充值返利(3.05-3.16)
--Creator:      戴鑫海
--Created:     2020-02-18
------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------
--命名前缀 tLuckyScratch_
--lua 	41727



---------------------------------------------------------------------------------------------------
local tLuckyScratch_Cont = {}
	tLuckyScratch_Cont["Web"] = "https://coevent.99.com/dailycredit202003/"
--------------------------------------逻辑模块-------------------------------------------
function tLuckyScratch_OpenWeb()
	if not Sys_ChkFullTime(tActivityTime["LuckyScratcht"]["ActivityTime"]) then
		return
	end
	User_SendWebPage(tLuckyScratch_Cont["Web"])
end
--------------------------------------NPC模块-------------------------------------------
tNpcFace[6075] = 230
tNpcGossip[25988]= tNpcGossip[25988] or DefaultNpc:new{}
tNpcGossip[25988]["OptionHidden"] = 1
tNpcGossip[25988]["DialogueText"] = tLuckyScratch_Text[25988] 
tNpcGossip[25988]["Text1-1"] = {111,112,113,114}
tNpcGossip[25988]["tOption1-1"] = {1}
tNpcGossip[25988]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["LuckyScratcht"]["ActivityTime"])
end

-- 活动后
tNpcGossip[25988]["Text1-2"] = {121}
tNpcGossip[25988]["tOption1-2"] = {2}
tNpcGossip[25988]["ChkFunc1-2"] = function ()
	return  CommonFunc_GetAfterActivityTime(tActivityTime["LuckyScratcht"]["ActivityTime"])
end

-- 活动中
tNpcGossip[25988]["Text1-3"] = {111,112,131,132,113,114}
tNpcGossip[25988]["tOption1-3"] = {3,4}
tNpcGossip[25988]["ChkFunc1-3"] = function ()
	return  Sys_ChkFullTime(tActivityTime["LuckyScratcht"]["ActivityTime"])
end
tNpcGossip[25988]["OptionFunc3"] = "tLuckyScratch_OpenWeb"





