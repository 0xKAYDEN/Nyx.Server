------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]斋月双龙城气氛布置
--Creator: 		魏贻逵
--Created:		2016/5/17
------------------------------------------------------------------------------------
-- 命名规则
-- RamadanAir

local	tRamadanAir_Cont = {}
		tRamadanAir_Cont["ActivityTime"] = "2017-05-26 00:00 2017-06-27 23:59"
		tRamadanAir_Cont["EventType"] = 145
		tRamadanAir_Cont["DataType"] = 19

function RamadanAir_Salyut()
	if not Sys_ChkFullTime(tRamadanAir_Cont["ActivityTime"]) then
		return
	end
	local nNpcId = Get_NpcId()
	local nEventType = tRamadanAir_Cont["EventType"]
	local nDataType = tRamadanAir_Cont["DataType"]
	local nPosX = Get_NpcPositionX(nNpcId) - 7
	local nPosY = Get_NpcPositionY(nNpcId) - 7
	if Task_StcInterval(nEventType,nDataType,5,0) or Task_ChkStcValue(nEventType,nDataType,"==",0) then
		Task_SetStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0,0)
		Map_Effect(1002,nPosX,nPosY,"FF07-dhp")
	else
		User_TalkChannel2005(tRamadanAir_Text[1])
	end

end





