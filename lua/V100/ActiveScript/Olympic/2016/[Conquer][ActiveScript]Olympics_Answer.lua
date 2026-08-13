------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]2016奥运会活动-奥运知多少(8.5-8.22)
--Creator: 		魏贻逵
--Created:		2016/07/03
------------------------------------------------------------------------------------
-- 命名：Olympics_Answer

-- 14696 答了多少题
-- 14697 答对多少题
-- 14698 领取答题奖励
-- 14699 答题用的秒数
-- 14700 领取百人答题奖励

local	tOlympics_Answer_Cont = {}
		tOlympics_Answer_Cont["Beftime"] = "2016-01-01 00:00 2016-08-04 23:59"
		tOlympics_Answer_Cont["Nowtime"] = "2016-08-05 00:00 2016-08-22 23:59"
		tOlympics_Answer_Cont["Resettime"] = "00:00 00:02"
		tOlympics_Answer_Cont["Level"] = 80
		tOlympics_Answer_Cont["Metempsychosis"] = 0
		tOlympics_Answer_Cont["Global"] = 51289
		tOlympics_Answer_Cont["LogId"] = 12000455
		tOlympics_Answer_Cont["FestivalId"] = 3706

		tOlympics_Answer_Cont["Right"] = {}
		tOlympics_Answer_Cont["Right"][1] = {1,3,5,6,13,21,23,26,27,30,31,33,34,38,42,44,45,46,48,49,55,56,57,59,61,62,63,65,66,67,68,69,71,77,80,81,83,84,86,87,89,91,99,100}
		tOlympics_Answer_Cont["Right"][2] = {15,17,18,29,32,40,41,47,53,54,70,75,85,90,96,97}
		tOlympics_Answer_Cont["Right"][3] = {2,4,8,16,19,20,22,28,35,37,51,52,58,60,64,72,73,76,82,88,93,94,95,98}
		tOlympics_Answer_Cont["Right"][4] = {7,9,10,11,12,14,24,25,36,39,40,43,50,74,78,79,92}

		tOlympics_Answer_Cont["Award"] = {}
		tOlympics_Answer_Cont["Award"]["RewardItem"] = {}
		tOlympics_Answer_Cont["Award"]["RewardItem"][1] ={}
		tOlympics_Answer_Cont["Award"]["RewardItem"][1]["Id"] = 3200573
		tOlympics_Answer_Cont["Award"]["RewardItem"][1]["Attr"] ="0 3"
		tOlympics_Answer_Cont["Award"]["Log"] = "0,0,0,0,12000455,2,3200573,3"

--掩码
local	tOlympics_Answer_Stc = {}
		tOlympics_Answer_Stc[1] = {}
		tOlympics_Answer_Stc[1]["EventType"] = 146
		tOlympics_Answer_Stc[1]["DataType"] = 96

		tOlympics_Answer_Stc[2] = {}
		tOlympics_Answer_Stc[2]["EventType"] = 146
		tOlympics_Answer_Stc[2]["DataType"] = 97

		tOlympics_Answer_Stc[3] = {}
		tOlympics_Answer_Stc[3]["EventType"] = 146
		tOlympics_Answer_Stc[3]["DataType"] = 98

		tOlympics_Answer_Stc[4] = {}
		tOlympics_Answer_Stc[4]["EventType"] = 146
		tOlympics_Answer_Stc[4]["DataType"] = 99

		tOlympics_Answer_Stc[5] = {}
		tOlympics_Answer_Stc[5]["EventType"] = 147
		tOlympics_Answer_Stc[5]["DataType"] = 00

local	tOlympics_Answer_Log = {}
		tOlympics_Answer_Log[1] = "0,0,0,0,12000455,1[2],0,0" --通关奖
		tOlympics_Answer_Log[2] = "0,0,0,0,12000455,1[3],0,0" --百人奖
		tOlympics_Answer_Log[3] = "0,0,0,0,12000455,1[1],0,0" --参与

------------------------------------------------------------------------------------
--隔天清掩码
function Olympics_Answer_Nextday()
	for i = 1,5 do
		if Task_StcInterval(tOlympics_Answer_Stc[i]["EventType"],tOlympics_Answer_Stc[i]["DataType"],1,4) then
			Task_SetStatistic(tOlympics_Answer_Stc[i]["EventType"],tOlympics_Answer_Stc[i]["DataType"],0,1)
			Task_SetStcTimestamp(tOlympics_Answer_Stc[i]["EventType"],tOlympics_Answer_Stc[i]["DataType"],0)
		end
	end
end

--我要答题。
function Olympics_Answer_Option4_11153(nNpcId)
--判断活动时间
	if not Sys_ChkFullTime(tOlympics_Answer_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
--隔天清掩码
	Olympics_Answer_Nextday()
--取掩码值
	local nData1 = Get_UserStatisticValue(tOlympics_Answer_Stc[1]["EventType"],tOlympics_Answer_Stc[1]["DataType"])
	local nData2 = Get_UserStatisticValue(tOlympics_Answer_Stc[2]["EventType"],tOlympics_Answer_Stc[2]["DataType"])
	local nData3 = Get_UserStatisticValue(tOlympics_Answer_Stc[3]["EventType"],tOlympics_Answer_Stc[3]["DataType"])
	local nData4 = Get_UserStatisticValue(tOlympics_Answer_Stc[4]["EventType"],tOlympics_Answer_Stc[4]["DataType"])
--10题全答对
	if nData1 == 10 and nData2/nData1 == 1 then
		tNpcGossip[nNpcId]["Text211"] = string.format(tOlympics_Answer_Text[nNpcId]["Text211"],nData4)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
--10题未全答对
	if nData1 == 10 and nData2/nData1 ~= 1 then
		local nNum = nData2/nData1*100
		tNpcGossip[nNpcId]["Text221"] = string.format(tOlympics_Answer_Text[nNpcId]["Text221"],nNum)
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
--接题库
	Olympics_Answer_Question(nNpcId)
	Sys_SaveActionFestivalLog(tOlympics_Answer_Log[3])
end

--题库
function Olympics_Answer_Question(nNpcId)
--判断活动时间
	if not Sys_ChkFullTime(tOlympics_Answer_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
--隔天清掩码
	Olympics_Answer_Nextday()
--取掩码值
	local nData1 = Get_UserStatisticValue(tOlympics_Answer_Stc[1]["EventType"],tOlympics_Answer_Stc[1]["DataType"])
	local nData2 = Get_UserStatisticValue(tOlympics_Answer_Stc[2]["EventType"],tOlympics_Answer_Stc[2]["DataType"])
	local nData3 = Get_UserStatisticValue(tOlympics_Answer_Stc[3]["EventType"],tOlympics_Answer_Stc[3]["DataType"])
	local nData4 = Get_UserStatisticValue(tOlympics_Answer_Stc[4]["EventType"],tOlympics_Answer_Stc[4]["DataType"])
--已答过10题，清除答题掩码
	if nData1 == 10 or nData1 == 0 then
		Task_SetStatistic(tOlympics_Answer_Stc[1]["EventType"],tOlympics_Answer_Stc[1]["DataType"],0,1)
		Task_SetStatistic(tOlympics_Answer_Stc[2]["EventType"],tOlympics_Answer_Stc[2]["DataType"],0,1)
		Task_SetStcTimestamp(tOlympics_Answer_Stc[1]["EventType"],tOlympics_Answer_Stc[1]["DataType"],0)
	end
--100选1
	local nNum = math.random(1,100)
	tNpcGossip[nNpcId]["Text311"] = tOlympics_Answer_Text[nNpcId]["Text311"][nNum]
	tNpcGossip[nNpcId]["Option21"] = tOlympics_Answer_Text[nNpcId]["Option21"][nNum]
	tNpcGossip[nNpcId]["Option22"] = tOlympics_Answer_Text[nNpcId]["Option22"][nNum]
	tNpcGossip[nNpcId]["Option23"] = tOlympics_Answer_Text[nNpcId]["Option23"][nNum]
	tNpcGossip[nNpcId]["Option24"] = tOlympics_Answer_Text[nNpcId]["Option24"][nNum]
	tNpcGossip[nNpcId]["OptionFunc21"]="Olympics_Answer_Answer</N>11153</N>"..nNum.."</N>1"
	tNpcGossip[nNpcId]["OptionFunc22"]="Olympics_Answer_Answer</N>11153</N>"..nNum.."</N>2"
	tNpcGossip[nNpcId]["OptionFunc23"]="Olympics_Answer_Answer</N>11153</N>"..nNum.."</N>3"
	tNpcGossip[nNpcId]["OptionFunc24"]="Olympics_Answer_Answer</N>11153</N>"..nNum.."</N>4"
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

function Olympics_Answer_Answer(nNpcId,nQuestion,nOption)
--判断活动时间
	if not Sys_ChkFullTime(tOlympics_Answer_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
--隔天清掩码
	Olympics_Answer_Nextday()

	local nEventType1 = tOlympics_Answer_Stc[1]["EventType"]
	local nDataType1 = tOlympics_Answer_Stc[1]["DataType"]
	local nEventType2 = tOlympics_Answer_Stc[2]["EventType"]
	local nDataType2 = tOlympics_Answer_Stc[2]["DataType"]
	local nEventType4 = tOlympics_Answer_Stc[4]["EventType"]
	local nDataType4 = tOlympics_Answer_Stc[4]["DataType"]

--答题数+1
	Task_AddStatistic(nEventType1,nDataType1,1,1)

--答对数+1
	local nStc = Get_UserStatisticValue(nEventType2,nDataType2)
	local nStc1 = Get_UserStatisticValue(nEventType1,nDataType1)
	for i,v in pairs(tOlympics_Answer_Cont["Right"][nOption]) do
		if v == nQuestion then
			local sText = string.format(tOlympics_Answer_Text["Right"],nStc1)
			Task_AddStatistic(nEventType2,nDataType2,1,1)
			User_TalkChannel2005(sText)
			User_EffectAdd("self","angelwing")
			break
		end
	end

	if Task_ChkStcValue(nEventType2,nDataType2,"==",nStc) then
		local sText = string.format(tOlympics_Answer_Text["Wrong"],nStc1)
		User_TalkChannel2005(sText)
		User_EffectAdd("self","Disapear1")
	end

--10题全答对，记录下时间,动态存储表+1
	if Task_ChkStcValue(nEventType2,nDataType2,">=",10) then
		Olympics_Answer_Global()
		local nTime = os.time() - Get_UserStcTimestampValue(nEventType1,nDataType1)
		local nGlobal = tOlympics_Answer_Cont["Global"]
		local nData1 = Get_SysDynaGlobalData1(nGlobal) + 1
		local nData2 = Get_SysDynaGlobalData2(nGlobal) --刷奖牌次数
		Task_SetStatistic(nEventType4,nDataType4,nTime,1)
		Sys_SetSynaGlobalData1(nGlobal,nData1)
		User_EffectAdd("self","zf2-e128")
		if nData2 < 5 and nTime <= 30 then
			local sName = Get_UserName()
			local sText = string.format(tOlympics_Answer_Text["Broadcast"],sName,nTime)
			Sys_SetSynaGlobalData2(nGlobal,nData2+1)
			Map_DropMultiItems(1002,3200573,275,360,20,20,20,60)
			Sys_SystemBroadcast(sText)
		end
	end
	Olympics_Answer_Option4_11153(nNpcId)
end

--领取答题奖励
function Olympics_Answer_Option5_11153(nNpcId)
--判断活动时间
	if not Sys_ChkFullTime(tOlympics_Answer_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
--隔天清掩码
	Olympics_Answer_Nextday()
	local nEventType1 = tOlympics_Answer_Stc[1]["EventType"]
	local nDataType1 = tOlympics_Answer_Stc[1]["DataType"]
	local nEventType3 = tOlympics_Answer_Stc[3]["EventType"]
	local nDataType3 = tOlympics_Answer_Stc[3]["DataType"]

--判断是否领奖
	if Task_ChkStcValue(nEventType3,nDataType3,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end

--判断是否答完10题
	if Task_ChkStcValue(nEventType1,nDataType1,"<",10) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end

--判断背包空间
	if not User_CheckLeftSpace(2) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	Task_SetStatistic(nEventType3,nDataType3,1,1)
	Task_SetStcTimestamp(nEventType3,nDataType3,0)
	RewardTemplate_Reward(tOlympics_Answer_Cont["Award"])
	FestivalGeneralPackage_GetGift(tOlympics_Answer_Cont["FestivalId"],tOlympics_Answer_Cont["LogId"])
	Sys_SaveActionFestivalLog(tOlympics_Answer_Log[1])
	Sys_MsgBox(tOlympics_Answer_Text["Award"])

end


--领取百人通关大礼。
function Olympics_Answer_Option40_11153(nNpcId)
--判断活动时间
	if not Sys_ChkFullTime(tOlympics_Answer_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
--隔天清掩码,0点时候重置动态存储表
	Olympics_Answer_Nextday()
	Olympics_Answer_Global()
	local nEventType5 = tOlympics_Answer_Stc[5]["EventType"]
	local nDataType5 = tOlympics_Answer_Stc[5]["DataType"]
--判断是否领奖
	if Task_ChkStcValue(nEventType5,nDataType5,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end
--判断通关人数是否100人
	local nGlobal = tOlympics_Answer_Cont["Global"]
	local nData = Get_SysDynaGlobalData1(nGlobal)
	if nData < 100 then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
--判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
--领取奖励
	Task_SetStatistic(nEventType5,nDataType5,1,1)
	Task_SetStcTimestamp(nEventType5,nDataType5,0)
	RewardTemplate_Reward(tOlympics_Answer_Cont["Award"]["RewardItem"])
	FestivalGeneralPackage_GetGift(tOlympics_Answer_Cont["FestivalId"],tOlympics_Answer_Cont["LogId"])
	Sys_SaveActionFestivalLog(tOlympics_Answer_Log[2])
	Sys_MsgBox(tOlympics_Answer_Text["HundredAward"] )
end

--时间自检
function Olympics_Answer_Global()
	if Sys_ChkFullTime(tOlympics_Answer_Cont["Nowtime"]) then
		local nGlobal = tOlympics_Answer_Cont["Global"]
		local nData0 = Get_SysDynaGlobalData0(nGlobal)
		if Sys_ChkDayTime(tOlympics_Answer_Cont["Resettime"]) then
			if nData0 == 0 then
				Sys_SetSynaGlobalData1(nGlobal,0)
				Sys_SetSynaGlobalData2(nGlobal,0)
				Sys_SetSynaGlobalData0(nGlobal,1)
			end
		else
			Sys_SetSynaGlobalData0(nGlobal,0)
		end
	end
end

------------------------------------------------------------------------------------
--【奥运考官】李勇
tNpcFace[4260] = 81
tNpcGossip[11153] = tNpcGossip[11153] or DefaultNpc:new{}
tNpcGossip[11153]["OptionHidden"] = 1

--活动前
tNpcGossip[11153]["Text1-1"] = {111,112,113,114}
tNpcGossip[11153]["Text111"] = tOlympics_Answer_Text[11153]["Text111"]
tNpcGossip[11153]["Text112"] = tOlympics_Answer_Text[11153]["Text112"]
tNpcGossip[11153]["Text113"] = tOlympics_Answer_Text[11153]["Text113"]
tNpcGossip[11153]["Text114"] = tOlympics_Answer_Text[11153]["Text114"]
tNpcGossip[11153]["tOption1-1"] = {1}
tNpcGossip[11153]["Option1"] = tOlympics_Answer_Text[11153]["Option1"]
tNpcGossip[11153]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tOlympics_Answer_Cont["Beftime"])
end

--活动后
tNpcGossip[11153]["Text1-2"] = {121}
tNpcGossip[11153]["Text121"] = tOlympics_Answer_Text[11153]["Text121"]
tNpcGossip[11153]["tOption1-2"] = {2}
tNpcGossip[11153]["Option2"] = tOlympics_Answer_Text[11153]["Option2"]
tNpcGossip[11153]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tOlympics_Answer_Cont["Beftime"]) and not Sys_ChkFullTime(tOlympics_Answer_Cont["Nowtime"])
end

--活动中
tNpcGossip[11153]["Text1-3"] = {131,132,133,112,113,114}
tNpcGossip[11153]["Text131"] = tOlympics_Answer_Text[11153]["Text131"]
tNpcGossip[11153]["Text132"] = tOlympics_Answer_Text[11153]["Text132"]
tNpcGossip[11153]["Text133"] = tOlympics_Answer_Text[11153]["Text133"]
tNpcGossip[11153]["Text134"] = tOlympics_Answer_Text[11153]["Text134"]
tNpcGossip[11153]["tOption1-3"] = {3,4,5,7,8}
tNpcGossip[11153]["Option3"] = tOlympics_Answer_Text[11153]["Option3"]
tNpcGossip[11153]["Option4"] = tOlympics_Answer_Text[11153]["Option4"]
tNpcGossip[11153]["Option5"] = tOlympics_Answer_Text[11153]["Option5"]
tNpcGossip[11153]["Option6"] = tOlympics_Answer_Text[11153]["Option6"]
tNpcGossip[11153]["Option7"] = tOlympics_Answer_Text[11153]["Option7"]
tNpcGossip[11153]["Option8"] = tOlympics_Answer_Text[11153]["Option8"]
tNpcGossip[11153]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tOlympics_Answer_Cont["Nowtime"])
end

tNpcGossip[11153]["OptionChkFunc3"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tOlympics_Answer_Cont["Level"],tOlympics_Answer_Cont["Metempsychosis"])
end

tNpcGossip[11153]["OptionChkFunc4"] = function ()
	return User_JudgeLevelAndMetempsychosis(tOlympics_Answer_Cont["Level"],tOlympics_Answer_Cont["Metempsychosis"])
end

tNpcGossip[11153]["OptionChkFunc5"] = function ()
	return User_JudgeLevelAndMetempsychosis(tOlympics_Answer_Cont["Level"],tOlympics_Answer_Cont["Metempsychosis"])
end

tNpcGossip[11153]["OptionChkFunc7"] = function ()
	return User_JudgeLevelAndMetempsychosis(tOlympics_Answer_Cont["Level"],tOlympics_Answer_Cont["Metempsychosis"])
end

tNpcGossip[11153]["OptionChkFunc8"] = function ()
	return User_JudgeLevelAndMetempsychosis(tOlympics_Answer_Cont["Level"],tOlympics_Answer_Cont["Metempsychosis"])
end

tNpcGossip[11153]["OptionFunc4"]="Olympics_Answer_Option4_11153</N>11153"
tNpcGossip[11153]["OptionFunc5"]="Olympics_Answer_Option5_11153</N>11153"
tNpcGossip[11153]["OptionPoint7"]="5-1"

--10题全对
tNpcGossip[11153]["Text2-1"] = {211}
tNpcGossip[11153]["Text211"] = tOlympics_Answer_Text[11153]["Text211"]
tNpcGossip[11153]["tOption2-1"] = {11,12}
tNpcGossip[11153]["Option11"] = tOlympics_Answer_Text[11153]["Option11"]
tNpcGossip[11153]["Option12"] = tOlympics_Answer_Text[11153]["Option12"]

tNpcGossip[11153]["OptionChkFunc11"] = function ()
	return Task_ChkStcValue(tOlympics_Answer_Stc[3]["EventType"],tOlympics_Answer_Stc[3]["DataType"],">=",1)
end

tNpcGossip[11153]["OptionFunc11"]="Olympics_Answer_Option5_11153</N>11153"

--10题未全对
tNpcGossip[11153]["Text2-2"] = {221}
tNpcGossip[11153]["Text221"] = tOlympics_Answer_Text[11153]["Text221"]
tNpcGossip[11153]["tOption2-2"] = {13,14,15}
tNpcGossip[11153]["Option13"] = tOlympics_Answer_Text[11153]["Option13"]
tNpcGossip[11153]["Option14"] = tOlympics_Answer_Text[11153]["Option14"]
tNpcGossip[11153]["Option15"] = tOlympics_Answer_Text[11153]["Option15"]

tNpcGossip[11153]["OptionChkFunc13"] = function ()
	return Task_ChkStcValue(tOlympics_Answer_Stc[3]["EventType"],tOlympics_Answer_Stc[3]["DataType"],"==",0)
end

tNpcGossip[11153]["OptionFunc13"]="Olympics_Answer_Option5_11153</N>11153"
tNpcGossip[11153]["OptionFunc14"]="Olympics_Answer_Question</N>11153"


--题目
tNpcGossip[11153]["Text3-1"] = {311}
tNpcGossip[11153]["tOption3-1"] = {21,22,23,24}

tNpcGossip[11153]["Text4-1"] = {411}
tNpcGossip[11153]["Text411"] = tOlympics_Answer_Text[11153]["Text411"]
tNpcGossip[11153]["tOption4-1"] = {31}
tNpcGossip[11153]["Option31"] = tOlympics_Answer_Text[11153]["Option31"]

tNpcGossip[11153]["Text4-2"] = {421}
tNpcGossip[11153]["Text421"] = tOlympics_Answer_Text[11153]["Text421"]
tNpcGossip[11153]["tOption4-2"] = {32}
tNpcGossip[11153]["Option32"] = tOlympics_Answer_Text[11153]["Option32"]

tNpcGossip[11153]["Text4-3"] = {431}
tNpcGossip[11153]["Text431"] = tOlympics_Answer_Text[11153]["Text431"]
tNpcGossip[11153]["tOption4-3"] = {33}
tNpcGossip[11153]["Option33"] = tOlympics_Answer_Text[11153]["Option33"]

tNpcGossip[11153]["Text4-4"] = {441}
tNpcGossip[11153]["Text441"] = tOlympics_Answer_Text[11153]["Text441"]
tNpcGossip[11153]["tOption4-4"] = {34}
tNpcGossip[11153]["Option34"] = tOlympics_Answer_Text[11153]["Option34"]

tNpcGossip[11153]["Text4-5"] = {451}
tNpcGossip[11153]["Text451"] = tOlympics_Answer_Text[11153]["Text451"]
tNpcGossip[11153]["tOption4-5"] = {35}
tNpcGossip[11153]["Option35"] = tOlympics_Answer_Text[11153]["Option35"]

--查看通关人数
tNpcGossip[11153]["Text5-1"] = {511}
tNpcGossip[11153]["Text511"] = tOlympics_Answer_Text[11153]["Text511"]
tNpcGossip[11153]["tOption5-1"] = {40,41}
tNpcGossip[11153]["Option40"] = tOlympics_Answer_Text[11153]["Option40"]
tNpcGossip[11153]["Option41"] = tOlympics_Answer_Text[11153]["Option41"]
tNpcGossip[11153]["ChkFunc5-1"] = function ()
	local nGlobal = tOlympics_Answer_Cont["Global"]
	local nData = Get_SysDynaGlobalData1(nGlobal)
	tNpcGossip[11153]["Text511"] = string.format(tOlympics_Answer_Text[11153]["Text511"],nData)
	return true
end

tNpcGossip[11153]["OptionChkFunc40"] = function ()
	return User_JudgeLevelAndMetempsychosis(tOlympics_Answer_Cont["Level"],tOlympics_Answer_Cont["Metempsychosis"])
end

tNpcGossip[11153]["OptionFunc40"]="Olympics_Answer_Option40_11153</N>11153"

-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],Olympics_Answer_Global)

-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],Olympics_Answer_Global)

-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],Olympics_Answer_Global)

-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],Olympics_Answer_Global)

-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],Olympics_Answer_Global)


