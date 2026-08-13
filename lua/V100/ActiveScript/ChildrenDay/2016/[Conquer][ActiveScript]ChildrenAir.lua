---------------------------------------------------------------------------------------
---160418[征服][活动脚本]儿童节-气氛布置
---BY:魏贻逵                                    
---DATE:2016-04-18                               
---------------------------------------------------------------------------------------

local	tChildrenDay_Air_Cont = {}
		tChildrenDay_Air_Cont["Beftime"] = "2017-01-01 00:00 2017-05-31 23:59"
		tChildrenDay_Air_Cont["Nowtime"] = "2017-06-01 00:00 2017-06-07 23:59"
		tChildrenDay_Air_Cont["Time1"] = "2017-01-01 00:00 2017-05-31 23:59"
		tChildrenDay_Air_Cont["Time2"] = "2017-06-01 00:00 2017-06-07 23:59"
		tChildrenDay_Air_Cont["Resettime"] = {}
		tChildrenDay_Air_Cont["Resettime"][1] = "18:00 18:00"
		tChildrenDay_Air_Cont["Resettime"][2] = "19:00 19:00"
		tChildrenDay_Air_Cont["Resettime"][3] = "20:00 20:00"
		tChildrenDay_Air_Cont["Resettime"][4] = "19:57 19:57"

function ChildrenDay_AirReset()
	if Sys_ChkFullTime(tChildrenDay_Air_Cont["Nowtime"]) then
		for i = 1,4 do
			if Sys_ChkDayTime(tChildrenDay_Air_Cont["Resettime"][i]) then
				if i >= 1 and i <= 3 then
					Map_Effect(1002,320,278,"scene_bedbladder_1")
					Map_Effect(1002,299,278,"scene_bedbladder_1")
				end
				if i == 3 then
					Map_DropMultiItems(1002,360170,290,254,40,40,20,60)
					Sys_TalkBroadcast(tChildrenDay_Air_Text[1])
				end
				if i == 4 then
					Sys_TalkBroadcast(tChildrenDay_Air_Text[2])
				end
			end
		end
	end
end

--小孩
tNpcFace[3609] = 119
tNpcFace[3610] = 195
tNpcFace[3611] = 118
tNpcFace[3612] = 138
tNpcFace[3613] = 41
tNpcFace[3614] = 184
tNpcFace[3615] = 135
tNpcFace[3616] = 68

for i = 10840,10847 do
	tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
	tNpcGossip[i]["OptionHidden"] = 1
	tNpcGossip[i]["Text1-1"] = {111}
	tNpcGossip[i]["Text111"] = tChildrenDay_Air_Text[i]["Text111"]
	tNpcGossip[i]["tOption1-1"] = {1}
	tNpcGossip[i]["Option1"] = tChildrenDay_Air_Text[i]["Option1"]
	tNpcGossip[i]["ChkFunc1-1"] = function ()
		return Sys_ChkFullTime(tChildrenDay_Air_Cont["Time1"])
	end
	tNpcGossip[i]["Text1-2"] = {121}
	tNpcGossip[i]["Text121"] = tChildrenDay_Air_Text[i]["Text121"]
	tNpcGossip[i]["Text122"] = tChildrenDay_Air_Text[i]["Text122"]
	tNpcGossip[i]["tOption1-2"] = {2}
	tNpcGossip[i]["Option2"] = tChildrenDay_Air_Text[i]["Option2"]
	tNpcGossip[i]["ChkFunc1-2"] = function ()
		return Sys_ChkFullTime(tChildrenDay_Air_Cont["Time2"])
	end
end

-- tOntimerMin_HM[1800] = tOntimerMin_HM[1800] or {}
-- table.insert(tOntimerMin_HM[1800],ChildrenDay_AirReset)
-- tOntimerMin_HM[1900] = tOntimerMin_HM[1900] or {}
-- table.insert(tOntimerMin_HM[1900],ChildrenDay_AirReset)
-- tOntimerMin_HM[2000] = tOntimerMin_HM[2000] or {}
-- table.insert(tOntimerMin_HM[2000],ChildrenDay_AirReset)
-- tOntimerMin_HM[1957] = tOntimerMin_HM[1957] or {}
-- table.insert(tOntimerMin_HM[1957],ChildrenDay_AirReset)


