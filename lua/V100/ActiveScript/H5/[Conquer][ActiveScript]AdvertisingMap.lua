------------------------------------------------------------------------------------
--Name：        190221[英文征服][活动脚本]3月版本宣传图上线
--Creator:      耿力兀
--Created:     2019-02-21
------------------------------------------------------------------------------------
--任务需求：
--安排上线3月版本宣传图，玩家登录游戏后自动弹出。3.5开始3.19结束
------------------------------------------------------------------------------------
--前缀：AdvertisingMap_

----------------------------------表配置部分--------------------------------------------
local tAdvertisingMap_Data={}
	tAdvertisingMap_Data["The_web"] = "https://co.99.com/guide/event/2019/powerofanima/index.shtml"	--宣传图网页


----------------------------------逻辑部分---------------------------------------------
--上线触发
function AdvertisingMap_Login()
	if Sys_ChkFullTime(tActivityTime["AdvertisingMap"]["ActiveTime"]) then 
		local nUserId = Get_UserId()
		User_SendWebDialog(tAdvertisingMap_Data["The_web"],nUserId)
	end 
end



--上线触发
 table.insert(tSystem_PlayLogin_Func,AdvertisingMap_Login)