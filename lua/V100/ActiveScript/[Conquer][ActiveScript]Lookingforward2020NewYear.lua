------------------------------------------------------------------------------------
--Name：            191107[英文征服][活动脚本]12月年终盛典-回顾以往，展望2020年新年（12.10-12.23）
--Creator:      杨志翔
--Created:     2019-11-07
------------------------------------------------------------------------------------
--任务需求：
--制作一个npc 链接到线下页面
--背包信 3314498
--npc 25585
--lua 41614
--log 12001728
--stc  20951 控制精粹
--stc  20974 背包信控制

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tLookingforward2020NewYear_Award = {}

	tLookingforward2020NewYear_Award["LogId"] = 12001728
	tLookingforward2020NewYear_Award["RewardItem"] = {}
	tLookingforward2020NewYear_Award["RewardItem"][1] = {}
	tLookingforward2020NewYear_Award["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tLookingforward2020NewYear_Award["RewardItem"][1]["Attr"] = "0 1 3" -- 万能神纹精粹（赠）*1
	tLookingforward2020NewYear_Award["RewardEffect"] = {}
	tLookingforward2020NewYear_Award["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLookingforward2020NewYear_Award["RewardEffect"]["Effect"] = "angelwing"
	
local tLookingforward2020NewYear_Stc = {}
	tLookingforward2020NewYear_Stc["Event"] = 209
	tLookingforward2020NewYear_Stc["Type"] = 51
	tLookingforward2020NewYear_Stc["Parse"] = {}
	tLookingforward2020NewYear_Stc["Parse"][0] = 1
	tLookingforward2020NewYear_Stc["Parse"][1] = 2
	tLookingforward2020NewYear_Stc["Parse"][2] = 4
	tLookingforward2020NewYear_Stc["Parse"][3] = 8
	tLookingforward2020NewYear_Stc["Parse"][4] = 16
	
local tLookingforward2020NewYear_Web = {}
	tLookingforward2020NewYear_Web[0] = "https://coevent.99.com/gloryreturn1912/"
	tLookingforward2020NewYear_Web[1] = "https://coevent.99.com/gloryreturn1912/"
	tLookingforward2020NewYear_Web[2] = "https://coevent.99.com/gloryreturn1912/"
	tLookingforward2020NewYear_Web[3] = "https://coevent.99.com/gloryreturn1912/"
	tLookingforward2020NewYear_Web[4] = "https://coevent.99.com/gloryreturn1912/"

local tLookingforward2020NewYear_Cont = {}
	tLookingforward2020NewYear_Cont["ActTime"] = tActivityTime["Lookingforward2020NewYear"]["ActivityTime"]

----------------------------------逻辑部分---------------------------------------------
function Lookingforward2020NewYear_OpenWeb()
	if not Sys_ChkFullTime(tLookingforward2020NewYear_Cont["ActTime"]) then 
		return false
	end
	User_SendWebPage(tLookingforward2020NewYear_Web[0])
end
function Lookingforward2020NewYear_Award(nIndex)
	if not Sys_ChkFullTime(tLookingforward2020NewYear_Cont["ActTime"]) then 
		return false
	end
	local nUserId = Get_UserId()
	local nEvent = tLookingforward2020NewYear_Stc["Event"]
	local nType = tLookingforward2020NewYear_Stc["Type"]
	local nStc = Get_UserStatisticValue(nEvent,nType,nUserId)
	local tParse = tLookingforward2020NewYear_Stc["Parse"]
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	if (not Sys_ParseNumbersContain(tParse[nIndex],nStc)) then 
		if (RewardTemplate_CheckSpace(tLookingforward2020NewYear_Award)) then 
			if (Task_AddStatistic(nEvent,nType,tParse[nIndex],1,nUserId)) then
				RewardTemplate_UseItemAndMsg(tLookingforward2020NewYear_Award)
				Sys_MsgBox(tLookingforward2020NewYear_Text[25585]["MsgBox"]["Award"])
			end
		else 
			Sys_MsgBox(tLookingforward2020NewYear_Text["NoSpace"])
		end
	else  
		Sys_MsgBox(tLookingforward2020NewYear_Text["Claimed"])
	end
end

----------------------------------NPC部分---------------------------------------------


tNpcFace[5470] = 71
tNpcGossip[25585]= tNpcGossip[25585] or DefaultNpc:new{}
tNpcGossip[25585]["DialogueText"] = tLookingforward2020NewYear_Text[25585]
tNpcGossip[25585]["OptionHidden"] = 1
tNpcGossip[25585]["Text1-1"] = {111,112,113}
tNpcGossip[25585]["tOption1-1"] = {111}
tNpcGossip[25585]["ChkFunc1-1"]= function()
	if CommonFunc_GetBeforeActivityTime(tLookingforward2020NewYear_Cont["ActTime"]) then 
		return true
	end
	return false
end
tNpcGossip[25585]["Text1-2"] = {121}
tNpcGossip[25585]["tOption1-2"] = {121}
tNpcGossip[25585]["ChkFunc1-2"]= function()
	if CommonFunc_GetAfterActivityTime(tLookingforward2020NewYear_Cont["ActTime"]) then 
		return true
	end
	return false
end

tNpcGossip[25585]["Text1-3"] = {131,132,133}
tNpcGossip[25585]["tOption1-3"] = {131,132}
tNpcGossip[25585]["ChkFunc1-3"]= function()
	if not Sys_ChkFullTime(tLookingforward2020NewYear_Cont["ActTime"]) then 
		return false
	end
	return true
end
tNpcGossip[25585]["OptionFunc131"] = "Lookingforward2020NewYear_OpenWeb"	
tNpcGossip[25585]["OptionPoint132"] = "2-1"

tNpcGossip[25585]["Text2-1"] = {211}
tNpcGossip[25585]["tOption2-1"] = {211,212,213,214}
tNpcGossip[25585]["ChkFunc2-1"]= function()
	if not Sys_ChkFullTime(tLookingforward2020NewYear_Cont["ActTime"]) then 
		return false
	end
	return true
end
tNpcGossip[25585]["OptionFunc211"] = "Lookingforward2020NewYear_Award</N>1"
tNpcGossip[25585]["OptionFunc212"] = "Lookingforward2020NewYear_Award</N>2"
tNpcGossip[25585]["OptionFunc213"] = "Lookingforward2020NewYear_Award</N>3"
tNpcGossip[25585]["OptionFunc214"] = "Lookingforward2020NewYear_Award</N>4"

