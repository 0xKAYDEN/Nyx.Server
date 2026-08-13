------------------------------------------------------------------------------------
--Name：            190611[英文征服][活动脚本]游戏内弹窗制作(6.13-6.20)
--Creator:      蔡颖静
--Created:     2019/06/11
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
	local tPopUpWindow_Data={}

	--网页链接
	tPopUpWindow_Data["Web"]="https://co.99.com/guide/event/2019/star-streamer/"
	
	--掩码
	tPopUpWindow_Data["Stc"]={}
	tPopUpWindow_Data["Stc"]["LoginEvent"]=198
	tPopUpWindow_Data["Stc"]["LoginType"]=0
----------------------------------逻辑部分---------------------------------------------

--打开链接
function PopUpWindow__Link()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["PopUpWindow"]["ActivityTime"])  then
		return
	end
	
	local nLoginEvent=tPopUpWindow_Data["Stc"]["LoginEvent"]
	local nLoginType=tPopUpWindow_Data["Stc"]["LoginType"]
	
	--隔天清掩码
	Task_StcReset(nLoginEvent,nLoginType)
	
	if Task_ChkStcValue(nLoginEvent,nLoginType,"==",0) then
		--加掩码
		Task_AddStatistic(nLoginEvent,nLoginType,1,1)
		Task_SetStcTimestamp(nLoginEvent,nLoginType,0)
		
		--打开内嵌页面
		local sWebPage = tPopUpWindow_Data["Web"]
		User_SendWebDialog(sWebPage)
	end 
end





-------------------------------------上线触发-------------------------------------------------------
table.insert(tSystem_PlayLogin_Func,PopUpWindow__Link)

