----------------------------------------------------------------------------
--Name:		200303[英文征服][活动脚本]请安排在视频播放功能播放以下视频                   
--Creator: 	杨艳
--Created:	2020/03/04
----------------------------------------------------------------------------
                                                        
-- 命名前缀
-- VideoPushAward_

---------------------数据-----------------------------------------------------

local tVideoPushAward_Data = {}
	tVideoPushAward_Data["ActionId"] = 576525
	tVideoPushAward_Data["ExistDay"] = 7
	tVideoPushAward_Data["Sender"] = tVideoPushAward_Test["Sender"]
	tVideoPushAward_Data["Title"] = tVideoPushAward_Test["Title"]
	tVideoPushAward_Data["Content"] = tVideoPushAward_Test["Content"]
	
local tVideoPushAward_Stc = {}

	--固定stc 不可修改。固定用接口 Task_SetStatisticDaily 
	tVideoPushAward_Stc[1] = {}
	tVideoPushAward_Stc[1]["Event"] = 213
	tVideoPushAward_Stc[1]["Type"] = 40
	
	tVideoPushAward_Stc[2] = {}
	tVideoPushAward_Stc[2]["Event"] = 216
	tVideoPushAward_Stc[2]["Type"] = 77


-----------------------------------逻辑部分----------------------------------------
--观看后邮件发奖 程序那边固定的掩码是 213 40  原需求是视频每天观看都可以领取 程序自动清除掩码。
function AwardAfterWatchVideo_SendAward(nUserId)

	local nUserId = nUserId or Get_UserId()
	local nActionId = tVideoPushAward_Data["ActionId"]
	local nExistDay = tVideoPushAward_Data["ExistDay"]
	local sSender = tVideoPushAward_Data["Sender"]
	local sTitle = tVideoPushAward_Data["Title"]
	local sContent = tVideoPushAward_Data["Content"]
	local nEvent_1 = tVideoPushAward_Stc[1]["Event"]
	local nType_1 = tVideoPushAward_Stc[1]["Type"]
	
	local nEvent_2 = tVideoPushAward_Stc[2]["Event"]
	local nType_2 = tVideoPushAward_Stc[2]["Type"]
	
	if Get_UserStatisticValue(nEvent_2,nType_2,nUserId) > 0 then 
		return
	end 

	if Get_UserStatisticDailyValue(nEvent_1,nType_1,nUserId) > 0 then
		return
	end
	
	Task_SetStatisticDaily(nEvent_1,nType_1,1,1,nUserId)
	Task_SetStatistic(nEvent_2,nType_2,1,1,nUserId)
	Task_SetStcTimestamp(nEvent_2,nType_2,0,nUserId)
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end 	


-----------------------------------配置----------------------------------------

tAwardAfterWatchVideo["tFunction"] = tAwardAfterWatchVideo["tFunction"] or {}
table.insert(tAwardAfterWatchVideo["tFunction"],AwardAfterWatchVideo_SendAward)

