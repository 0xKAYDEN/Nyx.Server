------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]伊历新年活动之新年祈福(10.14-10.21)复用
--Purpose:	伊历新年之新年祈福
--Creator: 	兰瑞妹
--Created:	2015/06/08
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
--[[
任务需求：


]]--
-------------------------------------------------------------------------------------
--掩码说明
---stc(135,20) =1表示已领取【新年祈福】祝福

--LOGid 12000113
------------------------------------------------------------------------------------
--命名规范
--ArabicNewYear2015_Blessing_
---------------------------------------------------------------------------------------------------------------------------------------------------------------
--STC掩码表
local tArabicNewYear2015_Blessing_Stc = {}
-------------------------------------------
----stc(135,20)--记录领取祝福
	tArabicNewYear2015_Blessing_Stc[1] = {}
	tArabicNewYear2015_Blessing_Stc[1]["EventType"] = 135
	tArabicNewYear2015_Blessing_Stc[1]["DataType"] = 20
	tArabicNewYear2015_Blessing_Stc[1]["New"] = 1
	tArabicNewYear2015_Blessing_Stc[1]["Complete"] = 2

----------------------------------------------------------------------------------------------------------------------------------------------------------------
--活动数据
local tArabicNewYear2015_Blessing_Data = {}
	--活动时间
	tArabicNewYear2015_Blessing_Data["Islamic_BefTime"] = tActivityTime["ArabicNewYear"]["BeforeActiveTime"]
	tArabicNewYear2015_Blessing_Data["Islamic_NowTime"] = tActivityTime["ArabicNewYear"]["AcitveTime"]
	--等级转世设置
	--tArabicNewYear2015_Blessing_Data["LevTop"] = 140
	tArabicNewYear2015_Blessing_Data["MinLevel"] = 80
	--tArabicNewYear2015_Blessing_Data["MaxMeto"] = 2
	tArabicNewYear2015_Blessing_Data["MinMeto"] = 0
	--背包检查
	tArabicNewYear2015_Blessing_Data["ChkSpace"] = 1
	--天使之翼光效
	--tArabicNewYear2015_Blessing_Data["EffectObj"] = "self"
	--tArabicNewYear2015_Blessing_Data["Effect"] = "angelwing"
	--tArabicNewYear2015_Blessing_Data["EffectTime"] = 5
	--节日欢庆礼包
	tArabicNewYear2015_Blessing_Data["FestivalId"] = 3319
	tArabicNewYear2015_Blessing_Data["LogId"] = 12000113
	--祝福一天
	tArabicNewYear2015_Blessing_Data["GetBless"] = 24
---------------------------------------------------------------------------------------------------
	local tArabicNewYear2015_Blessing_Log = {}
	--任务阶段
	tArabicNewYear2015_Blessing_Log["GetBless"] = "0,0,0,0,12000113,2,5,24"      --获得祝福
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--任务所需部分数据
	--随机广播的语句索引值
	local tArabicNewYear2015_Blessing_BroadContentID = {}
		tArabicNewYear2015_Blessing_BroadContentID[1] = "Broadcast1"
		tArabicNewYear2015_Blessing_BroadContentID[2] = "Broadcast2"
		tArabicNewYear2015_Blessing_BroadContentID[3] = "Broadcast3"
		tArabicNewYear2015_Blessing_BroadContentID[4] = "Broadcast4"
	
	--随机祝福的语句索引值
	local tArabicNewYear2015_Blessing_BlessContentID = {}
		tArabicNewYear2015_Blessing_BlessContentID[1] = "2-5"
		tArabicNewYear2015_Blessing_BlessContentID[2] = "2-6"
		tArabicNewYear2015_Blessing_BlessContentID[3] = "2-7"
		tArabicNewYear2015_Blessing_BlessContentID[4] = "7-8"
		tArabicNewYear2015_Blessing_BlessContentID[5] = "2-9"
		
	--所选了解的活动对应的索引值
	local tArabicNewYear2015_Blessing_ActContentID = {}
		tArabicNewYear2015_Blessing_ActContentID[1] = "4-1"
		tArabicNewYear2015_Blessing_ActContentID[2] = "4-2"
		tArabicNewYear2015_Blessing_ActContentID[3] = "4-3"
		tArabicNewYear2015_Blessing_ActContentID[4] = "4-4"
		tArabicNewYear2015_Blessing_ActContentID[5] = "4-5"
	--自动寻路的位置数据
	local tArabicNewYear2015_Blessing_Position = {}
		-- 17088 LordofWealth
		tArabicNewYear2015_Blessing_Position[1] = {}
		tArabicNewYear2015_Blessing_Position[1]["Map_ID"] = 1002
		tArabicNewYear2015_Blessing_Position[1]["Map_X"] = 333
		tArabicNewYear2015_Blessing_Position[1]["Map_Y"] = 491
		tArabicNewYear2015_Blessing_Position[1]["NpcId"] = 17088
		-- 17094 ScholarAaron
		tArabicNewYear2015_Blessing_Position[2] = {}
		tArabicNewYear2015_Blessing_Position[2]["Map_ID"] = 1002
		tArabicNewYear2015_Blessing_Position[2]["Map_X"] = 318
		tArabicNewYear2015_Blessing_Position[2]["Map_Y"] = 491
		tArabicNewYear2015_Blessing_Position[2]["NpcId"] = 17094
		-- 18653 DarkMerchant
		tArabicNewYear2015_Blessing_Position[3] = {}
		tArabicNewYear2015_Blessing_Position[3]["Map_ID"] = 1002
		tArabicNewYear2015_Blessing_Position[3]["Map_X"] = 328
		tArabicNewYear2015_Blessing_Position[3]["Map_Y"] = 491
		tArabicNewYear2015_Blessing_Position[3]["NpcId"] = 18653
		-- 18669 Floria
		tArabicNewYear2015_Blessing_Position[4] = {}
		tArabicNewYear2015_Blessing_Position[4]["Map_ID"] = 1002
		tArabicNewYear2015_Blessing_Position[4]["Map_X"] = 313
		tArabicNewYear2015_Blessing_Position[4]["Map_Y"] = 491
		tArabicNewYear2015_Blessing_Position[4]["NpcId"] = 18669
		-- 18575 CannoneerRay
		tArabicNewYear2015_Blessing_Position[5] = {}
		tArabicNewYear2015_Blessing_Position[5]["Map_ID"] = 1002
		tArabicNewYear2015_Blessing_Position[5]["Map_X"] = 328
		tArabicNewYear2015_Blessing_Position[5]["Map_Y"] = 504
		tArabicNewYear2015_Blessing_Position[5]["NpcId"] = 18575
	
----------------------------------------------------逻辑部分----------------------------------------------------------------------------------------------------------
--接收祈福
function ArabicNewYear2015_Blessing_Bless(nNpcId)
	local nEvent = tArabicNewYear2015_Blessing_Stc[1]["EventType"]
	local nType = tArabicNewYear2015_Blessing_Stc[1]["DataType"]
	local nNew = tArabicNewYear2015_Blessing_Stc[1]["New"]
	local nComplete = tArabicNewYear2015_Blessing_Stc[1]["Complete"]
	local nMinLevel = tArabicNewYear2015_Blessing_Data["MinLevel"]
	local nMinMeto = tArabicNewYear2015_Blessing_Data["MinMeto"]
	
	--活动时间判断
	if not Sys_ChkFullTime(tArabicNewYear2015_Blessing_Data["Islamic_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--判断等级、转世
	if not User_JudgeLevelAndMetempsychosis(nMinLevel,nMinMeto) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--判断是否已经完成
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		--判断隔天
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,nNew,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		else
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
		
	end
	
	--判断背包空间背包不足
	if not User_CheckLeftSpace(tArabicNewYear2015_Blessing_Data["ChkSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--祝福和概率性获得礼包
	Task_SetStatistic(nEvent,nType,nComplete,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	local nMetoTimes = Get_UserMetempsychosis()
	if nMetoTimes >= 2 then
		if Sys_Random(20,100) then
			-- 获得礼包
			ArabicNewYear2015_Blessing_Award(nNpcId,1)
		else
			-- 获得祝福
			ArabicNewYear2015_Blessing_Award(nNpcId)
		end
		
	elseif nMetoTimes == 1 then
		if Sys_Random(10,100) then
			-- 获得礼包
			ArabicNewYear2015_Blessing_Award(nNpcId,1)
		else
			-- 获得祝福
			ArabicNewYear2015_Blessing_Award(nNpcId)
		end
		
	else
		if Sys_Random(5,100) then
			-- 获得礼包
			ArabicNewYear2015_Blessing_Award(nNpcId,1)
		else
			-- 获得祝福
			ArabicNewYear2015_Blessing_Award(nNpcId)
		end
		
	end
end

function ArabicNewYear2015_Blessing_Award(nNpcId,nAwardType)
	--祝福一天
	User_AddBless(tArabicNewYear2015_Blessing_Data["GetBless"])
	if nAwardType ==1 then
		-- 获得礼包
		FestivalGeneralPackage_GetGift(tArabicNewYear2015_Blessing_Data["FestivalId"],tArabicNewYear2015_Blessing_Data["LogId"])
		-- 广播
		local nRanBroadNum = math.random(1,4)
		local sBroadContentID = tArabicNewYear2015_Blessing_BroadContentID[nRanBroadNum]
		local sUserName = Get_UserName()
		Sys_SystemBroadcast(tArabicNewYear2015_Blessing_Text["BroadcastBefore"]..sUserName..","..sUserName..tArabicNewYear2015_Blessing_Text[sBroadContentID])
		User_TalkChannel2005(tArabicNewYear2015_Blessing_Text["UserBroadcast"])
		LinkNpcGossipFunc_New(nNpcId,"2-4")
	else
		-- 祝福提示
		Sys_SaveActionFestivalLog(tArabicNewYear2015_Blessing_Log["GetBless"])
		local nRanBlessNum = math.random(1,5)
		LinkNpcGossipFunc_New(nNpcId,tArabicNewYear2015_Blessing_BlessContentID[nRanBlessNum])
	end
	
end

--了解活动
function ArabicNewYear2015_Blessing_Introduction(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

--活动了解选择
function ArabicNewYear2015_Blessing_ActDetail(nNpcId,nAwardType)
	LinkNpcGossipFunc_New(nNpcId,tArabicNewYear2015_Blessing_ActContentID[nAwardType])
end

--对应活动的自动寻路
function ArabicNewYear2015_Blessing_PathFinding(nNpcId,nActType)
	--活动时间判断
	if not Sys_ChkFullTime(tArabicNewYear2015_Blessing_Data["Islamic_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	if nActType == 6 then
		--想了解别的活动
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--自动寻路
	-- Sys_GotoSomeWhere(tArabicNewYear2015_Blessing_Position[nActType]["Map_X"],tArabicNewYear2015_Blessing_Position[nActType]["Map_Y"],tArabicNewYear2015_Blessing_Position[nActType]["Map_ID"])
	NpcPosition_PathFind(tArabicNewYear2015_Blessing_Position[nActType]["NpcId"])
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------NPC---------------------------------------------------------
-----------------------------------NPC头像----------------------------------------------------
tNpcFace[3714] = 12
-----------------------------------NPC对话----------------------------------------------------
--新年活动大使
tNpcGossip[18649] = tNpcGossip[18649] or DefaultNpc:new{}
tNpcGossip[18649]["OptionHidden"] = 1

--起始对白
tNpcGossip[18649]["Text1-1"] = {111,112,113,114}                    --活动时间前
tNpcGossip[18649]["Text1-2"] = {121,122,123}                        --活动时间后
tNpcGossip[18649]["Text1-3"] = {131,132,133,134}                    --活动时间中
--活动时间前
tNpcGossip[18649]["Text111"] = tArabicNewYear2015_Blessing_Text[18649]["Text111"]
tNpcGossip[18649]["Text112"] = tArabicNewYear2015_Blessing_Text[18649]["Text112"]
tNpcGossip[18649]["Text113"] = tArabicNewYear2015_Blessing_Text[18649]["Text113"]
tNpcGossip[18649]["Text114"] = tArabicNewYear2015_Blessing_Text[18649]["Text114"]
tNpcGossip[18649]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015_Blessing_Data["Islamic_BefTime"])
end
--活动时间后
tNpcGossip[18649]["Text121"] = tArabicNewYear2015_Blessing_Text[18649]["Text121"]
tNpcGossip[18649]["Text122"] = tArabicNewYear2015_Blessing_Text[18649]["Text122"]
tNpcGossip[18649]["Text123"] = tArabicNewYear2015_Blessing_Text[18649]["Text123"]
tNpcGossip[18649]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tArabicNewYear2015_Blessing_Data["Islamic_NowTime"])
end
--活动时间中
tNpcGossip[18649]["Text131"] = tArabicNewYear2015_Blessing_Text[18649]["Text131"]
tNpcGossip[18649]["Text132"] = tArabicNewYear2015_Blessing_Text[18649]["Text132"]
tNpcGossip[18649]["Text133"] = tArabicNewYear2015_Blessing_Text[18649]["Text133"]
tNpcGossip[18649]["Text134"] = tArabicNewYear2015_Blessing_Text[18649]["Text134"]
tNpcGossip[18649]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015_Blessing_Data["Islamic_NowTime"])
end
--选项
tNpcGossip[18649]["tOption1-1"] = {11}               -- 活动时间前
tNpcGossip[18649]["tOption1-2"] = {12}               -- 活动时间后
tNpcGossip[18649]["tOption1-3"] = {13,14,15}         -- 活动时间中
tNpcGossip[18649]["Option11"] = tArabicNewYear2015_Blessing_Text[18649]["Option11"]
tNpcGossip[18649]["Option12"] = tArabicNewYear2015_Blessing_Text[18649]["Option12"]
tNpcGossip[18649]["Option13"] = tArabicNewYear2015_Blessing_Text[18649]["Option13"]
tNpcGossip[18649]["OptionFunc13"] = "ArabicNewYear2015_Blessing_Bless</N>18649"
tNpcGossip[18649]["Option14"] = tArabicNewYear2015_Blessing_Text[18649]["Option14"]
tNpcGossip[18649]["OptionFunc14"] = "ArabicNewYear2015_Blessing_Introduction</N>18649"
tNpcGossip[18649]["Option15"] = tArabicNewYear2015_Blessing_Text[18649]["Option15"]

--祈福
tNpcGossip[18649]["Text2-1"] = {211,212} --等级不足/未转世
tNpcGossip[18649]["Text2-2"] = {221,222} --当天已完成
tNpcGossip[18649]["Text2-3"] = {231,232} --背包空间不足
tNpcGossip[18649]["Text2-4"] = {241,242} --满足条件领取奖励礼包
tNpcGossip[18649]["Text2-5"] = {251,252} --满足条件获得祝福
tNpcGossip[18649]["Text2-6"] = {261,262}
tNpcGossip[18649]["Text2-7"] = {271,272}
tNpcGossip[18649]["Text2-8"] = {281,282}
tNpcGossip[18649]["Text2-9"] = {291}
--祈福的对白 等级不足/未转世
tNpcGossip[18649]["Text211"] = tArabicNewYear2015_Blessing_Text[18649]["Text211"]
tNpcGossip[18649]["Text212"] = tArabicNewYear2015_Blessing_Text[18649]["Text212"]
--祈福的对白 当天已完成
tNpcGossip[18649]["Text221"] = tArabicNewYear2015_Blessing_Text[18649]["Text221"]
tNpcGossip[18649]["Text222"] = tArabicNewYear2015_Blessing_Text[18649]["Text222"]
--祈福的对白 背包空间不足
tNpcGossip[18649]["Text231"] = tArabicNewYear2015_Blessing_Text[18649]["Text231"]
tNpcGossip[18649]["Text232"] = tArabicNewYear2015_Blessing_Text[18649]["Text232"]
--祈福的对白 满足条件领取奖励礼包
tNpcGossip[18649]["Text241"] = tArabicNewYear2015_Blessing_Text[18649]["Text241"]
tNpcGossip[18649]["Text242"] = tArabicNewYear2015_Blessing_Text[18649]["Text242"]
--随机祝福语句 满足条件获得祝福
tNpcGossip[18649]["Text251"] = tArabicNewYear2015_Blessing_Text[18649]["Text251"]
tNpcGossip[18649]["Text252"] = tArabicNewYear2015_Blessing_Text[18649]["Text252"]
tNpcGossip[18649]["Text261"] = tArabicNewYear2015_Blessing_Text[18649]["Text261"]
tNpcGossip[18649]["Text262"] = tArabicNewYear2015_Blessing_Text[18649]["Text262"]
tNpcGossip[18649]["Text271"] = tArabicNewYear2015_Blessing_Text[18649]["Text271"]
tNpcGossip[18649]["Text272"] = tArabicNewYear2015_Blessing_Text[18649]["Text272"]
tNpcGossip[18649]["Text281"] = tArabicNewYear2015_Blessing_Text[18649]["Text281"]
tNpcGossip[18649]["Text282"] = tArabicNewYear2015_Blessing_Text[18649]["Text282"]
tNpcGossip[18649]["Text291"] = tArabicNewYear2015_Blessing_Text[18649]["Text291"]
--祝福选项 
tNpcGossip[18649]["tOption2-1"] = {21}
tNpcGossip[18649]["tOption2-2"] = {22}
tNpcGossip[18649]["tOption2-3"] = {23}
tNpcGossip[18649]["tOption2-4"] = {24}
tNpcGossip[18649]["tOption2-5"] = {25}
tNpcGossip[18649]["tOption2-6"] = {26}
tNpcGossip[18649]["tOption2-7"] = {27}
tNpcGossip[18649]["tOption2-8"] = {28}
tNpcGossip[18649]["tOption2-9"] = {29}
tNpcGossip[18649]["Option21"] = tArabicNewYear2015_Blessing_Text[18649]["Option21"]
tNpcGossip[18649]["Option22"] = tArabicNewYear2015_Blessing_Text[18649]["Option22"]
tNpcGossip[18649]["Option23"] = tArabicNewYear2015_Blessing_Text[18649]["Option23"]
tNpcGossip[18649]["Option24"] = tArabicNewYear2015_Blessing_Text[18649]["Option24"]
tNpcGossip[18649]["Option25"] = tArabicNewYear2015_Blessing_Text[18649]["Option25"]
tNpcGossip[18649]["Option26"] = tArabicNewYear2015_Blessing_Text[18649]["Option26"]
tNpcGossip[18649]["Option27"] = tArabicNewYear2015_Blessing_Text[18649]["Option27"]
tNpcGossip[18649]["Option28"] = tArabicNewYear2015_Blessing_Text[18649]["Option28"]
tNpcGossip[18649]["Option29"] = tArabicNewYear2015_Blessing_Text[18649]["Option29"]

--了解活动
tNpcGossip[18649]["Text3-1"] = {311}
tNpcGossip[18649]["Text311"] = tArabicNewYear2015_Blessing_Text[18649]["Text311"]
--活动选项
tNpcGossip[18649]["tOption3-1"] = {31,32,33,34,35,36}
tNpcGossip[18649]["Option31"] = tArabicNewYear2015_Blessing_Text[18649]["Option31"]
tNpcGossip[18649]["OptionFunc31"] = "ArabicNewYear2015_Blessing_ActDetail</N>18649</N>1"
tNpcGossip[18649]["Option32"] = tArabicNewYear2015_Blessing_Text[18649]["Option32"]
tNpcGossip[18649]["OptionFunc32"] = "ArabicNewYear2015_Blessing_ActDetail</N>18649</N>2"
tNpcGossip[18649]["Option33"] = tArabicNewYear2015_Blessing_Text[18649]["Option33"]
tNpcGossip[18649]["OptionFunc33"] = "ArabicNewYear2015_Blessing_ActDetail</N>18649</N>3"
tNpcGossip[18649]["Option34"] = tArabicNewYear2015_Blessing_Text[18649]["Option34"]
tNpcGossip[18649]["OptionFunc34"] = "ArabicNewYear2015_Blessing_ActDetail</N>18649</N>4"
tNpcGossip[18649]["Option35"] = tArabicNewYear2015_Blessing_Text[18649]["Option35"]
tNpcGossip[18649]["OptionFunc35"] = "ArabicNewYear2015_Blessing_ActDetail</N>18649</N>5"
tNpcGossip[18649]["Option36"] = tArabicNewYear2015_Blessing_Text[18649]["Option36"]

--各个活动
tNpcGossip[18649]["Text4-1"] = {411,412,413,414}              --活动一TJXYS天降幸运兽
tNpcGossip[18649]["Text4-2"] = {421,422,423,424}              --活动二SHGLJ守护古兰经
tNpcGossip[18649]["Text4-3"] = {431,432,433,434}              --活动三BXYY宝箱有约
tNpcGossip[18649]["Text4-4"] = {441,442,443,444}              --活动四XNYHDH新年烟花大会
tNpcGossip[18649]["Text4-5"] = {451,452,453,454}              --活动五XNHBDFS新年红包大放送
--活动对话
tNpcGossip[18649]["Text411"] = tArabicNewYear2015_Blessing_Text[18649]["Text411"]
tNpcGossip[18649]["Text412"] = tArabicNewYear2015_Blessing_Text[18649]["Text412"]
tNpcGossip[18649]["Text413"] = tArabicNewYear2015_Blessing_Text[18649]["Text413"]
tNpcGossip[18649]["Text414"] = tArabicNewYear2015_Blessing_Text[18649]["Text414"]

tNpcGossip[18649]["Text421"] = tArabicNewYear2015_Blessing_Text[18649]["Text421"]
tNpcGossip[18649]["Text422"] = tArabicNewYear2015_Blessing_Text[18649]["Text422"]
tNpcGossip[18649]["Text423"] = tArabicNewYear2015_Blessing_Text[18649]["Text423"]
tNpcGossip[18649]["Text424"] = tArabicNewYear2015_Blessing_Text[18649]["Text424"]

tNpcGossip[18649]["Text431"] = tArabicNewYear2015_Blessing_Text[18649]["Text431"]
tNpcGossip[18649]["Text432"] = tArabicNewYear2015_Blessing_Text[18649]["Text432"]
tNpcGossip[18649]["Text433"] = tArabicNewYear2015_Blessing_Text[18649]["Text433"]
tNpcGossip[18649]["Text434"] = tArabicNewYear2015_Blessing_Text[18649]["Text434"]

tNpcGossip[18649]["Text441"] = tArabicNewYear2015_Blessing_Text[18649]["Text441"]
tNpcGossip[18649]["Text442"] = tArabicNewYear2015_Blessing_Text[18649]["Text442"]
tNpcGossip[18649]["Text443"] = tArabicNewYear2015_Blessing_Text[18649]["Text443"]
tNpcGossip[18649]["Text444"] = tArabicNewYear2015_Blessing_Text[18649]["Text444"]

tNpcGossip[18649]["Text451"] = tArabicNewYear2015_Blessing_Text[18649]["Text451"]
tNpcGossip[18649]["Text452"] = tArabicNewYear2015_Blessing_Text[18649]["Text452"]
tNpcGossip[18649]["Text453"] = tArabicNewYear2015_Blessing_Text[18649]["Text453"]
tNpcGossip[18649]["Text454"] = tArabicNewYear2015_Blessing_Text[18649]["Text454"]
--活动选项
tNpcGossip[18649]["tOption4-1"] = {41,42}
tNpcGossip[18649]["tOption4-2"] = {43,44}
tNpcGossip[18649]["tOption4-3"] = {45,46}
tNpcGossip[18649]["tOption4-4"] = {47,48}
tNpcGossip[18649]["tOption4-5"] = {49,50}
--自动寻到天降幸运兽
tNpcGossip[18649]["Option41"] = tArabicNewYear2015_Blessing_Text[18649]["Option41"]
tNpcGossip[18649]["OptionFunc41"] = "ArabicNewYear2015_Blessing_PathFinding</N>18649</N>1"
tNpcGossip[18649]["Option42"] = tArabicNewYear2015_Blessing_Text[18649]["Option42"]
tNpcGossip[18649]["OptionFunc42"] = "ArabicNewYear2015_Blessing_PathFinding</N>18649</N>6"
--自动寻到守护古兰经
tNpcGossip[18649]["Option43"] = tArabicNewYear2015_Blessing_Text[18649]["Option43"]
tNpcGossip[18649]["OptionFunc43"] = "ArabicNewYear2015_Blessing_PathFinding</N>18649</N>2"
tNpcGossip[18649]["Option44"] = tArabicNewYear2015_Blessing_Text[18649]["Option44"]
tNpcGossip[18649]["OptionFunc44"] = "ArabicNewYear2015_Blessing_PathFinding</N>18649</N>6"
--自动寻到宝箱有约
tNpcGossip[18649]["Option45"] = tArabicNewYear2015_Blessing_Text[18649]["Option45"]
tNpcGossip[18649]["OptionFunc45"] = "ArabicNewYear2015_Blessing_PathFinding</N>18649</N>3"
tNpcGossip[18649]["Option46"] = tArabicNewYear2015_Blessing_Text[18649]["Option46"]
tNpcGossip[18649]["OptionFunc46"] = "ArabicNewYear2015_Blessing_PathFinding</N>18649</N>6"
--自动寻到新年烟花大会
tNpcGossip[18649]["Option47"] = tArabicNewYear2015_Blessing_Text[18649]["Option47"]
tNpcGossip[18649]["OptionFunc47"] = "ArabicNewYear2015_Blessing_PathFinding</N>18649</N>4"
tNpcGossip[18649]["Option48"] = tArabicNewYear2015_Blessing_Text[18649]["Option48"]
tNpcGossip[18649]["OptionFunc48"] = "ArabicNewYear2015_Blessing_PathFinding</N>18649</N>6"
--自动寻到新年红包大放送
tNpcGossip[18649]["Option49"] = tArabicNewYear2015_Blessing_Text[18649]["Option49"]
tNpcGossip[18649]["OptionFunc49"] = "ArabicNewYear2015_Blessing_PathFinding</N>18649</N>5"
tNpcGossip[18649]["Option50"] = tArabicNewYear2015_Blessing_Text[18649]["Option50"]
tNpcGossip[18649]["OptionFunc50"] = "ArabicNewYear2015_Blessing_PathFinding</N>18649</N>6"

--选择活动后
tNpcGossip[18649]["Text5-1"] = {511} --非活动时间不能自动寻路
tNpcGossip[18649]["Text511"] = tArabicNewYear2015_Blessing_Text[18649]["Text511"]
tNpcGossip[18649]["Option51"] = tArabicNewYear2015_Blessing_Text[18649]["Option51"]














