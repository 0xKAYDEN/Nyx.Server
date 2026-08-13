------------------------------------------------------------------------------------
--Name：190620[英文征服][活动脚本]游戏内弹窗制作
--Creator:      洪聪敏
--Created:     209/06/20
------------------------------------------------------------------------------------
--lua.ini:41072
--命名前缀:LoginPopup_
--(198,67)  每天登陆出引导图


------------------------------------------------------------------------------------
local tLoginPopup_Cont = {}
	tLoginPopup_Cont["Web"] = "https://fbevent.99.com/fbcodiscount/"

local tLoginPopup_Stc = {}
	tLoginPopup_Stc["EventType"] = 198
	tLoginPopup_Stc["DataType"] = 67

------------------------------------------------------------------------------------
--上线出引导页面
function LoginPopup_Online()
	local nEventType = tLoginPopup_Stc["EventType"]
	local nDataType = tLoginPopup_Stc["DataType"]
	
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["LoginPopup"]["ActivityTime"]) then
		return
	end
	
	--隔天清零
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	
	if Task_ChkStcValue(nEventType,nDataType,"<",1) then
		User_SendWebDialog(tLoginPopup_Cont["Web"])
		--打掩码
		Task_SetStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
end
-----------------------------------上线触发-----------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,LoginPopup_Online)