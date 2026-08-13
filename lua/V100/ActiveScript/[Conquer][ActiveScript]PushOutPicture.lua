------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]精准推送图片更新--第一期
--Purpose:	精准推送图片更新--第一期
--Creator: 	陈彦宏
--Created:	2016/12/30
------------------------------------------------------------------------------------
-- 命名前缀
-- PushOutPicture_

---------------------------------------配表---------------------------------------
	-- 图片
local PushOutPicture_Count = {}
	PushOutPicture_Count["Title"] = 1008
	-- 上线控制掩码
	PushOutPicture_Count["Stc"] = {}
	PushOutPicture_Count["Stc"]["Data"] = 155
	PushOutPicture_Count["Stc"]["Type"] = 71
	
---------------------------------------逻辑--------------------------------
-- 跳出弹框
function PushOutPicture_Out()
	local nUseId = Get_UserId()
	local nEvent = PushOutPicture_Count["Stc"]["Data"]
	local nType = PushOutPicture_Count["Stc"]["Type"]
	local nData = tonumber(Get_UserStatisticValue(nEvent,nType))
	if nData == 0 then
		-- 打掩码
		Task_SetStatistic(nEvent,nType,1,1,nUseId)
		local nPic = PushOutPicture_Count["Title"]
		-- 出推送
		User_NoviceTeaching(nPic,nUseId)
	end
end
---------------------------------------上线触发--------------------------------
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,PushOutPicture_Out)