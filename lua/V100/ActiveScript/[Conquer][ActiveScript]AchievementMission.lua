------------------------------------------------------------------------------------
--Name:		180124[英文征服][活动脚本]关于成就系统里已下架任务的处理
--Purpose:	关于成就系统里已下架任务的处理
--Creator: 	傅伟龙
--Created:	2018/01/24
------------------------------------------------------------------------------------
--前缀AchievementMission_
-- logid: 12000992   成就

------------------------------------------------------------------------------------
--基础数据
local tAchievementMission_Cont = {}


--成就
tAchievementMission_Cont["ChkAch"] = {}
tAchievementMission_Cont["ChkAch"][1] = 10120 --才智过人
tAchievementMission_Cont["ChkAch"][2] = 11128 --我就是博学

local tAchievementMission_Log = {}
tAchievementMission_Log["Achievement"] = "0,0,0,0,12000992,2,0,0"
----------------------------------NPC-------------------------------------------
function AchievementMission_ComPleteAchievement(nIndex)
	local nAchPos = tAchievementMission_Cont["ChkAch"][nIndex]
	if User_ChkAchByAchPosition(nAchPos) then
		User_TalkChannel2005(tAchievementMission_Text["SysTask"]["CompleteAch"])
	else
		User_AddAchByAchPosition(nAchPos)
		--全服公告
		local nUserId = Get_UserId()
		local sUserName = Get_UserName(nUserId)
		local sServerTask = tAchievementMission_Text["ServerTask"]
		local sAchievementName = tAchievementMission_Text["AchievementName"][nIndex]
		Sys_SystemBroadcast(string.format(sServerTask,sUserName,sAchievementName))
		Sys_SaveActionFestivalLog(tAchievementMission_Log["Achievement"])
	end
end
----------------------------------NPC模板---------------------------------------
tNpcFace[523] = 35
tNpcGossip[22614] = tNpcGossip[22614] or DefaultNpc:new{}
tNpcGossip[22614]["OptionHidden"] = 1
tNpcGossip[22614]["DialogueText"] = tAchievementMission_Text[22614]

-- 活动中
tNpcGossip[22614]["Text1-1"] = {111,112}
tNpcGossip[22614]["tOption1-1"] = {111,112}
tNpcGossip[22614]["OptionFunc111"] = "AchievementMission_ComPleteAchievement</N>1"
tNpcGossip[22614]["OptionFunc112"] = "AchievementMission_ComPleteAchievement</N>2"
tNpcGossip[22614]["ChkFunc1-1"] = function ()

	local nNum = 111
	for i = 1,#tAchievementMission_Cont["ChkAch"] do
		local nAchPos = tAchievementMission_Cont["ChkAch"][i]
		if User_ChkAchByAchPosition(nAchPos) then
			tNpcGossip[22614]["Option"..nNum+i-1]=tAchievementMission_Text[22614]["Option"..nNum+i-1+100]
		else
			
			tNpcGossip[22614]["Option"..nNum+i-1]=tAchievementMission_Text[22614]["Option"..nNum+i-1]
		end
	end
	
	return true
end

