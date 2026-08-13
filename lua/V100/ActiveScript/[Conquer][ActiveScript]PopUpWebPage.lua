------------------------------------------------------------------------------------
--Name：            190917[英文征服][活动脚本]游戏内弹窗制作(9.19-10.19)
--Creator:      江宇君
--Created:     2019/09/17
------------------------------------------------------------------------------------
--任务需求：
-- 请安排制作一个游戏内弹窗，用于介绍宣传积分返利商店，帮忙看看安排尽快制作一下。
-- 计划更新时间：9.19
-- 弹窗上线时间：9.19-10.19
-- 当天玩家登录游戏时弹出，每个账号每天一次。
-- 制作内嵌网页的弹窗，网页地址：https://co.99.com/guide/event/2019/rebateshop/
-- 如有问题，请及时沟通，谢谢！

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tPopUpWebPage_Data={}
	--网页链接
	tPopUpWebPage_Data["Web"]="https://co.99.com/guide/event/2019/rebateshop/"
	
	--记录玩家是否弹出过内嵌页的掩码
	tPopUpWebPage_Data["Stc"]={}
	tPopUpWebPage_Data["Stc"]["EventType"] = 204
	tPopUpWebPage_Data["Stc"]["DataType"] = 66

----------------------------------逻辑部分---------------------------------------------

--打开链接
function PopUpWebPage_OpenWeb()
	local nUserId = Get_UserId()

	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["PopUpWebPage"]["ActivityTime"])  then
		return
	end
	
	local nEvent = tPopUpWebPage_Data["Stc"]["EventType"]
	local nType = tPopUpWebPage_Data["Stc"]["DataType"]
	
	--隔天清掩码
	Task_StcReset(nEvent,nType)
	
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		--加掩码
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		--打开内嵌页面
		local sWebPage = tPopUpWebPage_Data["Web"]
		User_SendWebDialog(sWebPage)
	end 
end


-------------------------------------上线触发-------------------------------------------------------
table.insert(tSystem_PlayLogin_Func,PopUpWebPage_OpenWeb)

