------------------------------------------------------------------------------------
--Name:			跨服任务刺探SQL数据
--Purpose:		跨服任务刺探SQL数据
--Creator: 		张磊
--Created:		12/03/2014
------------------------------------------------------------------------------------


--[[
任务需求：
麻烦转单给任务部同学，配合服务端程序提供相关任务脚本。

任务来自：http://nderp.99.com/Forum/TopicList-200932.aspx

]]--


------------------------------------------------------------------------------------
--掩码说明
--30001

--data1 : 31表示已经对话完所有探子npc
--data2 : ==1 表示已经领取过今天的奖励

--Stc掩码说明：
--stc(137,08) >0 表示已经领取过了 50 积分礼包
--stc(137,09) >0 表示已经领取过了 150 积分礼包
--stc(137,10) >0 表示已经领取过了 300 积分礼包

--LOGid 6189
------------------------------------------------------------------------------------
--命名规范
--National_War_
------------------------------------------------------------------------------------------------------------------------------------------------------------------------


------------------------------------------NPC头像配置-------------------------------------------


tNpcFace[3323] = 92 -- 跨服任务大使
tNpcFace[3392] = 218 -- 闹市潜伏者
tNpcFace[3393] = 206 -- 神秘卧底
tNpcFace[3394] = 84 -- 军营间谍
tNpcFace[3395] = 94 -- 朝廷细作
tNpcFace[3396] = 231 -- 武林探子

local tNational_War_Num = {}
tNational_War_Num[17401] = 1
tNational_War_Num[17402] = 2
tNational_War_Num[17403] = 4
tNational_War_Num[17404] = 8
tNational_War_Num[17405] = 16




---------------------------------------------------------------------

--常量表设置
local tNational_War_Cont = {}

--玩家等级要求
	tNational_War_Cont["Metempsychosis"] = 1
	tNational_War_Cont["Level"] = 110

--掩码
	tNational_War_Cont["task_detail"] = 30001

--玩家完成的表示
	tNational_War_Cont["data1"] = 31

--背包空间 --兑换积分礼包
	tNational_War_Cont["nSpace"] = 1
	
--背包空间 --完成任务领奖
	tNational_War_Cont["nSpace_Reward"] = 2
	
--完成任务次数
	tNational_War_Cont["nTimes"] = 1
--领取完三次奖励的标示
	tNational_War_Cont["nFlag"] = 1
--完成 光效
	tNational_War_Cont["Self"] = "self"	
	tNational_War_Cont["Effect"] = "angelwing"
	
--每次完成任务加的积分
	tNational_War_Cont["Add_JF"] = 25
	
--每次完成任务给黄金联赛积分25
	tNational_War_Cont["Golden_JF"] = 100
	
--护心丹 数量2
	tNational_War_Cont["Reward_Num"] = 2

--积分上限
	tNational_War_Cont["JF_Limit"] = 300
	
--礼包奖励分段
	tNational_War_Cont["50"] = 50
	tNational_War_Cont["150"] = 150
	tNational_War_Cont["300"] = 300
	
--天石完成任务消耗 5
	tNational_War_Cont["Emoney_10CP"] = 10
--修为上限
	tNational_War_Cont["User_NG"] = 9999999999
--黄金联赛积分上限
	tNational_War_Cont["Golden_Limt"] = G_User_GoldenLeague
--战功上限
	tNational_War_Cont["User_XW"] = 9999999999
--魔君入侵
	tNational_War_Cont["Task_35007"] = 35007


local tNational_War_Item = {}

--50积分礼包
tNational_War_Item["3007108"] = 3007108
tNational_War_Item["3007109"] = 3007109
tNational_War_Item["3007110"] = 3007110

tNational_War_Item["Monoply"] = "0 1 0 10080 1"

--护心丹 2颗
tNational_War_Item["Item_3002029"] = 3002029
--属性
tNational_War_Item["Attribute_3002029"] = "0 2 0 0 1"
--数量
tNational_War_Item["Num_3002029"] = 2

local tNational_War_JF = {}

tNational_War_JF["Min"] = 50
tNational_War_JF["Mid"] = 150
tNational_War_JF["Max"] = 300

local tNational_War_JFPack = {}
tNational_War_JF[1] = 3007108
tNational_War_JF[2] = 3007109
tNational_War_JF[3] = 3007110

local tNational_War_PackStc = {}
tNational_War_PackStc[1] = {}
tNational_War_PackStc[1]["EventType"] = 137
tNational_War_PackStc[1]["DataType"] = 08

tNational_War_PackStc[2] = {}
tNational_War_PackStc[2]["EventType"] = 137
tNational_War_PackStc[2]["DataType"] = 09

tNational_War_PackStc[3] = {}
tNational_War_PackStc[3]["EventType"] = 137
tNational_War_PackStc[3]["DataType"] = 10

---------------------------------奖励配置---------------------------------
tNational_War_Item[3007108] = {}
tNational_War_Item[3007108]["User_ZG"] = 50
tNational_War_Item[3007108]["User_NG"] = 400
tNational_War_Item[3007108]["User_LMEmoney"] = 50

tNational_War_Item[3007109] = {}
tNational_War_Item[3007109]["Golden_JF"] = 50
tNational_War_Item[3007109]["User_ZG"] = 100
tNational_War_Item[3007109]["User_NG"] = 600
tNational_War_Item[3007109]["User_LMEmoney"] = 160

tNational_War_Item[3007110] = {}
tNational_War_Item[3007110]["Golden_JF"] = 100
tNational_War_Item[3007110]["User_ZG"] = 150
tNational_War_Item[3007110]["User_NG"] = 1000
tNational_War_Item[3007110]["User_LMEmoney"] = 360



local tNational_War_Stc = {}

tNational_War_Stc[50] = {}
tNational_War_Stc[50]["EventType"] = 137
tNational_War_Stc[50]["DataType"] = 08

tNational_War_Stc[150] = {}
tNational_War_Stc[150]["EventType"] = 137
tNational_War_Stc[150]["DataType"] = 09

tNational_War_Stc[300] = {}
tNational_War_Stc[300]["EventType"] = 137
tNational_War_Stc[300]["DataType"] = 10

local tNational_War_FindNpc = {}

tNational_War_FindNpc[1] = {}
tNational_War_FindNpc[1]["nMapId"] = 3935
tNational_War_FindNpc[1]["nPosX"] = 195
tNational_War_FindNpc[1]["nPosY"] = 174

tNational_War_FindNpc[2] = {}
tNational_War_FindNpc[2]["nMapId"] = 3935
tNational_War_FindNpc[2]["nPosX"] = 234
tNational_War_FindNpc[2]["nPosY"] = 243

tNational_War_FindNpc[3] = {}
tNational_War_FindNpc[3]["nMapId"] = 3935
tNational_War_FindNpc[3]["nPosX"] = 214
tNational_War_FindNpc[3]["nPosY"] = 284

tNational_War_FindNpc[4] = {}
-- 跨服大使身边
tNational_War_FindNpc[4]["nMapId"] = 1002
tNational_War_FindNpc[4]["nPosX"] = 399
tNational_War_FindNpc[4]["nPosY"] = 344


local tNational_War_Tjs = {}
tNational_War_Tjs[1] = 5
tNational_War_Tjs[2] = 10
tNational_War_Tjs[3] = 15

local tNational_War_EmoneyLOG = {}
--参与
	tNational_War_EmoneyLOG["Participate"] = "350	4307	0	0	1	"
--完成
	tNational_War_EmoneyLOG["Complete"] = "350	4308	0	0	1	"
--付费完成
	tNational_War_EmoneyLOG["CostEmoney"] = "350	4314	10	10	1	"
--付费补足积分
	tNational_War_EmoneyLOG["FillUp"] = "350	4313	%d	%d	1	"

local tNational_War_ActionLog = {}
	tNational_War_ActionLog["LOG"] = "0,0,0,0,18000070,2,%d,1"
	tNational_War_ActionLog["UseLOG"] = "0,0,%d,1,18000070,2,%s,%s"
	
local tNational_War_JFCont = {}
	--积分段
	tNational_War_JFCont["Min"] = 50
	tNational_War_JFCont["Mid"] = 150
	tNational_War_JFCont["Max"] = 300
	
	--补足对应的天石
	tNational_War_JFCont[1] = 99
	tNational_War_JFCont[2] = 54
	tNational_War_JFCont[3] = 27

----------天阶赛配置
local	tNational_War_Tjs = {}
		tNational_War_Tjs["Time"] = tActivityTime["TianjieSai"]["ActivityTime"]
		tNational_War_Tjs["Global"] = 50990 --开关控制
		tNational_War_Tjs[1] = 5
		tNational_War_Tjs[2] = 10
		tNational_War_Tjs[3] = 15

local	tNational_War_Tjs_Stc = {}
		tNational_War_Tjs_Stc[1] = {}  --总积分
		tNational_War_Tjs_Stc[1]["EventType"] = 112
		tNational_War_Tjs_Stc[1]["DataType"] = 65

		tNational_War_Tjs_Stc[2] = {}  --跨服任务
		tNational_War_Tjs_Stc[2]["EventType"] = 138
		tNational_War_Tjs_Stc[2]["DataType"] = 44


------------------------------------ 山中无老虎活动制作(8.25-9.07)------------------------------
local tNewYearPromote_Banana = {}
	tNewYearPromote_Banana["NowTime"] = "2016-08-25 00:00 2016-09-07 23:59"
	tNewYearPromote_Banana["EventType"] =141
	tNewYearPromote_Banana["DataType"] = 58
	tNewYearPromote_Banana["ItemId"] = 3008609
	tNewYearPromote_Banana["Log"] = "0,0,0,0,12000302,2,3008609,1"
	tNewYearPromote_Banana["Space"] = 1
	
----------------------------------------------逻辑部分--------------------
--兑换对话显示
function National_War_Dialog(nNpcId)
	 -- local nNum = 0
	 -- if Task_ChkTaskDetail(35011) then
	 	-- nNum = Get_TaskDetailData1(35011)
	 -- end
	 str = string.format(tNational_War_Text[17400]["Text953"],National_War_ChkIntegral())

	Sys_DialogText(tNational_War_Text[17400]["Text951"])
	Sys_DialogText(tNational_War_Text[17400]["Text952"])
	Sys_DialogText(str)
	Sys_DialogOption(tNational_War_Text[17400]["Option33"],"</F>National_War_Points_For</N>17400</N>50")
	Sys_DialogOption(tNational_War_Text[17400]["Option34"],"</F>National_War_Points_For</N>17400</N>150")
	Sys_DialogOption(tNational_War_Text[17400]["Option35"],"</F>National_War_Points_For</N>17400</N>300")
	Sys_DialogOption(tNational_War_Text[17400]["Option50"],"</F>LinkNpcGossipFunc_New</N>17400</S>12-1")
	Sys_DialogOption(tNational_War_Text[17400]["Option40"],"</F>LinkNpcGossipFunc_New</N>17400</S>11-1")
	Sys_DialogOption(tNational_War_Text[17400]["Option41"])
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--付费补足积分
function National_War_CostCp(nNpcId)
	-- 玩家积分状态标示
	local nFlag = 0
	-- 判断玩家是否有功勋值掩码，没有直接创建并补满积分
	if not Task_ChkTaskDetail(35011) then
		Task_AddTaskDetail(35011)
		nFlag = 1
	elseif Get_TaskDetailData6(35011) >= tNational_War_JFCont["Max"] then
		LinkNpcGossipFunc_New(nNpcId,"13-1")
		return
	elseif Get_TaskDetailData6(35011) >= tNational_War_JFCont["Mid"] then
		nFlag = 3
	elseif Get_TaskDetailData6(35011) >= tNational_War_JFCont["Min"] then
		nFlag = 2
	else
		nFlag = 1
	end
	
	-- 扣天石，补足功勋追
	if (Get_UserEMoney() < tNational_War_JFCont[nFlag] ) or not User_AddEMoney(-tNational_War_JFCont[nFlag]) then
		LinkNpcGossipFunc_New(nNpcId,"14-1")
		return
	end
	
	-- 扣天石成功	
	Task_SetTaskDetailData6(35011,tNational_War_Cont["JF_Limit"])
	National_War_GetJFPack()
	local str = string.format(tNational_War_EmoneyLOG["FillUp"],tNational_War_JFCont[nFlag],tNational_War_JFCont[nFlag])
	Sys_SaveEmoneyBuy(str)
	User_TalkChannel2005(tNational_War_Text["CostCP"])
	LinkNpcGossipFunc_New(nNpcId,"9-5")
end




function National_War_AddIntegral(nData,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	
	if not Task_ChkTaskDetail(35011,nNowUserId) then
		Task_AddTaskDetail(35011,0,nNowUserId)
	end
	
	if Get_TaskDetailData6(35011,nNowUserId) >= tNational_War_Cont["JF_Limit"] then
		National_War_GetJFPack()
		return false
	end
	
	local nData6 = Get_TaskDetailData6(35011,nNowUserId) + nData
	
	if nData6 >= tNational_War_Cont["JF_Limit"] then
		nData6 = tNational_War_Cont["JF_Limit"]
	end	
	
	Task_SetTaskDetailData6(35011,nData6,nNowUserId)
	National_War_GetJFPack()
	return true
end


--积分查询
function National_War_ChkIntegral()
	local nData = 0
	if not Task_ChkTaskDetail(35011) then
		nData = 0
	else
		nData = Get_TaskDetailData6(35011)
	end
	
	return nData
end


--点击刺探任务   接受任务
function National_War_AcceptTask(nNpcId)
	local nTask_detail = tNational_War_Cont["task_detail"]

	--判断玩家等级情况
	if not User_JudgeLevelAndMetempsychosis(tNational_War_Cont["Level"],tNational_War_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	if not Task_ChkTaskDetail(nTask_detail) then
		Task_AddTaskDetail(nTask_detail,0)
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--有任务的情况下，判断玩家是完成了还是进行中
	local nData1 = tNational_War_Cont["data1"]
	local nTaskData1 = Get_TaskDetailData1(nTask_detail)
	
	if nData1 == nTaskData1 then
		User_TalkChannel2005(tNational_War_Text["DirectlyRward"])
		return
	end
	
	User_TalkChannel2005(tNational_War_Text["NoComplete"])

end

function National_War_RewardItem(nNpcId)
	--判断玩家等级情况
	if not User_JudgeLevelAndMetempsychosis(tNational_War_Cont["Level"],tNational_War_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	local nTask_detail = tNational_War_Cont["task_detail"]

	if not Task_ChkTaskDetail(nTask_detail) then
		LinkNpcGossipFunc_New(nNpcId,"9-3")
		return
	end
	
	--判断当天是否完成1次了
	if Get_TaskDetailData6(nTask_detail) >= tNational_War_Cont["nTimes"] then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	--是否领取达到领取奖励条件(是否已经刺探了三个人了)
	if Get_TaskDetailData3(nTask_detail) == 0 then
		LinkNpcGossipFunc_New(nNpcId,"6-1")
		return
	end
	
		--判断背包空间
	local nSpace_Reward = tNational_War_Cont["nSpace_Reward"]
	if not User_CheckLeftSpace(nSpace_Reward) then
		LinkNpcGossipFunc_New(nNpcId,"10-1")
		return
	end
	
	local nData6 = Get_TaskDetailData6(nTask_detail) + 1
	Task_SetTaskDetailData6(nTask_detail,nData6)
	Task_SetTaskDetailData1(nTask_detail,0)
	Task_SetTaskDetailData2(nTask_detail,0)
	Task_SetTaskDetailData3(nTask_detail,0)
	Task_SetTaskDetailCompleteFlag(nTask_detail,1)
	local nTime = os.time()
	Task_SetTaskDetailData7(nTask_detail,nTime)

	--黄金联赛积分25
	GoldenLeaguePoints_Add(tNational_War_Cont["Golden_JF"])
	
	--给护心丹 激活
	Item_AddNewItem(tNational_War_Item["Item_3002029"],tNational_War_Item["Attribute_3002029"])
	
    Sys_SaveEmoneyBuy(tNational_War_EmoneyLOG["Complete"])
	LinkNpcGossipFunc_New(nNpcId,"5-1")
	User_EffectAdd(tNational_War_Cont["Self"],tNational_War_Cont["Effect"])
	
	local str_1 = ""
	--完成给积分
	if National_War_AddIntegral(tNational_War_Cont["Add_JF"]) then
		str_1 = string.format(tNational_War_Text["Get_JF"],tNational_War_Cont["Add_JF"],tNational_War_Item["Num_3002029"])
	else
		str_1 = string.format(tNational_War_Text["Get_JF_1"],tNational_War_Item["Num_3002029"])
	end
	User_TalkChannel2005(str_1)
end


--点击刺探的npc时完成刺探选项函数
function National_War_SpyConditJud()
	local nNpcId = Get_NpcId()
	local nTask_detail = tNational_War_Cont["task_detail"]

	if not Task_ChkTaskDetail(nTask_detail) then
		return false
	end
	
	-- if Task_DetailInterval(nTask_detail,1,4) then		
		-- Task_SetTaskDetailData1(nTask_detail,0)
		-- Task_SetTaskDetailData6(nTask_detail,0)
		-- local nTime_1 = os.time()
		-- Task_SetTaskDetailData7(nTask_detail,nTime_1)
	-- end
	
	if Get_TaskDetailData3(nTask_detail) ~= 0 or Get_TaskDetailData6(nTask_detail) ~= 0 then
		return false
	end
	
	local nSumData = Get_TaskDetailData1(nTask_detail) + Get_TaskDetailData2(nTask_detail) + Get_TaskDetailData3(nTask_detail)

	if User_IsCross() and (not Sys_ParseNumbersContain(tNational_War_Num[nNpcId],nSumData)) then
		
		return true
	end
	
	return false

end

--该机密我记住了！
function National_War_SpyComplete(nNpcId)
	local nTask_detail = tNational_War_Cont["task_detail"]
	
	if Get_TaskDetailData3(nTask_detail) ~= 0 or Get_TaskDetailData6(nTask_detail) ~= 0 then
		Sys_MsgBox(tNational_War_Text["SysMsgCom"])
		return
	end
	
	local nSumData = Get_TaskDetailData1(nTask_detail) + Get_TaskDetailData2(nTask_detail) + Get_TaskDetailData3(nTask_detail)
	
	if not Sys_ParseNumbersContain(tNational_War_Num[nNpcId],nSumData) then
		if Get_TaskDetailData1(nTask_detail) == 0 then
			Task_SetTaskDetailData1(nTask_detail,tNational_War_Num[nNpcId])
		elseif Get_TaskDetailData2(nTask_detail) == 0 then
			Task_SetTaskDetailData2(nTask_detail,tNational_War_Num[nNpcId])
		else
			Task_SetTaskDetailData3(nTask_detail,tNational_War_Num[nNpcId])
		end
		Sys_SaveEmoneyBuy(tNational_War_EmoneyLOG["Participate"])
	end
	
	if Get_TaskDetailData3(nTask_detail) ~= 0 then
		Sys_MsgBox(tNational_War_Text["SysMsgCom"])
		return
	end
	User_TalkChannel2005(tNational_War_Text["SysMsg"])
end


--点击NPC时判断完成否
function  National_War_Complete()
	local nTask_detail = tNational_War_Cont["task_detail"]
	
	if not Task_ChkTaskDetail(nTask_detail) then
		return false
	end
	if  Get_TaskDetailData3(nTask_detail) ~= 0 or Get_TaskDetailData6(nTask_detail) then
		return true
	else
		return false
	end
	
end

--花费5天石直接完成任务
function National_War_SpyCompleteByFiveCP(nNpcId)
	local nTask_detail = tNational_War_Cont["task_detail"]
	
	if not Task_ChkTaskDetail(nTask_detail) then
		LinkNpcGossipFunc_New(nNpcId,"9-3")
		return
	end
	
	if Get_TaskDetailData6(nTask_detail) > 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	--判断背包空间
	local nSpace_Reward = 	tNational_War_Cont["nSpace_Reward"]
	if not User_CheckLeftSpace(nSpace_Reward)  then
		LinkNpcGossipFunc_New(nNpcId,"10-1")
		return
	end
	
	local nMoney = Get_UserEMoney()
	
	if nMoney < tNational_War_Cont["Emoney_10CP"] then
		LinkNpcGossipFunc_New(nNpcId,"9-4")
		return
	end
	
	--满足条件
	if not User_AddEMoney(-tNational_War_Cont["Emoney_10CP"]) then
		return
	end
	
	local nData6 = Get_TaskDetailData6(nTask_detail) + 1
	Task_SetTaskDetailData6(nTask_detail,nData6)
	Task_SetTaskDetailData1(nTask_detail,0)
	Task_SetTaskDetailData2(nTask_detail,0)
	Task_SetTaskDetailData3(nTask_detail,0)
	Task_SetTaskDetailCompleteFlag(nTask_detail,1)
		
	local nTime = os.time()
	Task_SetTaskDetailData7(nTask_detail,nTime)
		
	--黄金联赛积分25
	GoldenLeaguePoints_Add(tNational_War_Cont["Golden_JF"])
	
	--给护心丹 激活
	Item_AddNewItem(tNational_War_Item["Item_3002029"],tNational_War_Item["Attribute_3002029"])
	
    Sys_SaveEmoneyBuy(tNational_War_EmoneyLOG["CostEmoney"])
	LinkNpcGossipFunc_New(nNpcId,"5-1")
	User_EffectAdd(tNational_War_Cont["Self"],tNational_War_Cont["Effect"])
	
	local str_1 = ""
	--完成给积分
	if National_War_AddIntegral(tNational_War_Cont["Add_JF"]) then
		str_1 = string.format(tNational_War_Text["Get_JF"],tNational_War_Cont["Add_JF"],tNational_War_Item["Num_3002029"])
	else
		str_1 = string.format(tNational_War_Text["Get_JF_1"],tNational_War_Item["Num_3002029"])
	end
	User_TalkChannel2005(str_1)
end

--积分兑换奖励
function National_War_Points_For(nNpcId,nJFNum)
--判断掩码情况
	if Task_StcInterval(tNational_War_Stc[nJFNum]["EventType"],tNational_War_Stc[nJFNum]["DataType"],1,4) then		
		Task_SetStatistic(tNational_War_Stc[nJFNum]["EventType"],tNational_War_Stc[nJFNum]["DataType"],0,1)	
		Task_SetStcTimestamp(tNational_War_Stc[nJFNum]["EventType"],tNational_War_Stc[nJFNum]["DataType"],0)
	end
	
	if Task_ChkStcValue(tNational_War_Stc[nJFNum]["EventType"],tNational_War_Stc[nJFNum]["DataType"],"==",1) then
		Sys_MsgBox(tNational_War_Text["GetRepeat"])
		return
	end
	--判断积分
	if National_War_ChkIntegral() == nil or National_War_ChkIntegral() < nJFNum then
		local sText = string.format(tNational_War_Text[17400]["Text961"],nJFNum)
			Sys_DialogText(sText)
			Sys_DialogOption(tNational_War_Text[17400]["Option36"])
			Sys_DialogFace()
			Sys_DialogEnd()	
	else
		local nSpace = tNational_War_Cont["nSpace"]
		if not User_CheckLeftSpace(nSpace) then
			LinkNpcGossipFunc_New(nNpcId,"9-9")
			return
		end
		
		Task_SetStatistic(tNational_War_Stc[nJFNum]["EventType"],tNational_War_Stc[nJFNum]["DataType"],1,1)
		Task_SetStcTimestamp(tNational_War_Stc[nJFNum]["EventType"],tNational_War_Stc[nJFNum]["DataType"],0)
		
		--给奖励
		local nSysDynaGlobalData1 = Get_SysDynaGlobalData1(tNational_War_Tjs["Global"])
		local nAllEventType = tNational_War_Tjs_Stc[1]["EventType"]
		local nAllDataType = tNational_War_Tjs_Stc[1]["DataType"]
		local nEventType = tNational_War_Tjs_Stc[2]["EventType"]
		local nDataType = tNational_War_Tjs_Stc[2]["DataType"]

		if nJFNum == tNational_War_Cont["50"] then
			Item_AddNewItem(tNational_War_Item["3007108"],tNational_War_Item["Monoply"])
			if Sys_ChkFullTime(tNational_War_Tjs["Time"]) then
				if nSysDynaGlobalData1 == 1 and Get_SysDynaGlobalData2(tNational_War_Tjs["Global"]) == 0 then
					Task_AddStatistic(nAllEventType,nAllDataType,5,1)
					Task_AddStatistic(nEventType,nDataType,5,1)
					User_TalkChannel2005(tTjs_Text[1])
				end
			end
		elseif nJFNum == tNational_War_Cont["150"] then
			Item_AddNewItem(tNational_War_Item["3007109"],tNational_War_Item["Monoply"])
			if Sys_ChkFullTime(tNational_War_Tjs["Time"]) then
				if nSysDynaGlobalData1 == 1 and Get_SysDynaGlobalData2(tNational_War_Tjs["Global"]) == 0 then
					Task_AddStatistic(nAllEventType,nAllDataType,10,1)
					Task_AddStatistic(nEventType,nDataType,10,1)
					User_TalkChannel2005(tTjs_Text[2])
				end
			end
		elseif nJFNum == tNational_War_Cont["300"] then
			Item_AddNewItem(tNational_War_Item["3007110"],tNational_War_Item["Monoply"])
			if Sys_ChkFullTime(tNational_War_Tjs["Time"]) then
				if nSysDynaGlobalData1 == 1 and Get_SysDynaGlobalData2(tNational_War_Tjs["Global"]) == 0 then
					Task_AddStatistic(nAllEventType,nAllDataType,15,1)
					Task_AddStatistic(nEventType,nDataType,15,1)
					User_TalkChannel2005(tTjs_Text[3])
				end	
			end
		end
		LinkNpcGossipFunc_New(nNpcId,"9-8")
	end
end


--积分礼包使用
function National_War_ItemUse(nItem)
	if nItem == 3007109 then
		--180822[简体征服][活动脚本]烦请制作9月份神笔马良促活活动线上部分内容
		ShenLiangMaLiangOnLineAct_AddStatistic2(nItem)
		
		--battlepass 加进度
		-- BattlePassTaskTest_TaskAddProgress(12,1)
	end
	
	--显著功勋礼包使用另外记录掩码
	if nItem == 3007108 then
		--180822[简体征服][活动脚本]烦请制作9月份神笔马良促活活动线上部分内容
		ShenLiangMaLiangOnLineAct_AddStatistic2(nItem)
	end

	local str_1 = ""
	if nItem == tNational_War_Item["3007108"] then
		
		if Get_UserServiceValue() > (tNational_War_Cont["User_NG"] - tNational_War_Item[3007108]["User_ZG"]) then
			User_TalkChannel2005(tNational_War_Text["MoreCulture"])
			return
		end
		
		-- 新增----------------------------------------------------------------------------------------------------
		-- 年兽促销背包判断
		-- 山中无老虎活动制作(8.25-9.07)
		-- if not User_CheckLeftSpace(tNewYearPromote_Banana["Space"]) then
			-- User_TalkChannel2005(tNewYearPromote_Text[3008588]["NotSpace"])
			-- return
		-- end
		------------------------------------------------------------------------------------------------------
		
                local nSpace = 1
		--鸡年年兽活动获得 稀有课本随机包
		if Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
			nSpace = nSpace +1
		end
		--周年庆福利活动
		if Sys_ChkFullTime("2017-05-25 00:00 2017-06-05 23:59") then
			nSpace = nSpace +1
		end
		
		-- 2017感恩节
		-- if Sys_ChkFullTime(tActivityTime["CornPancakeThanks"]["Activity"]) then
			-- nSpace = nSpace + 1
		-- end
		
	---NBA活动
		if Sys_ChkFullTime(tActivityTime["ActivityOfNBA"]["Now_Time"]) then
			nSpace = nSpace +1
		end
		-- 2018七夕节活动
		if Sys_ChkFullTime(tActivityTime["ValentinesDay2018"]["ActivityTime"]) then
			if User_JudgeLevelAndMetempsychosis(80,0) then
				nSpace = nSpace + 1
			end
		end
		-- 夏日大作战
		-- if Sys_ChkFullTime(tActivityTime["Summer"]["BigBattle"]) then
			-- nSpace = nSpace + SummerBattle_GetSpace(4)
		-- end
		-- 七夕活动
		-- if Sys_ChkFullTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
			-- nSpace = nSpace + 1
		-- end
		--感恩节以旧换新活动
		if Sys_ChkFullTime(tActivityTime["ThankGivingExchange"]["ActiveTime"]) then
			nSpace = nSpace + 1
		end
		
		---狗年年兽
		-- if Sys_ChkFullTime(tActivityTime["DogYear"]["NowTime"]) then
			-- nSpace = nSpace +1
		-- end
		
		-- 180504[简体征服][活动脚本]2018世界杯活动制作
		if Sys_ChkFullTime(tActivityTime["WorldCupActivities"]["ActivityTime"]) then
			nSpace = nSpace +1
		end
		
		-- [181121[简体征服][活动脚本]熔炼炉引导任务
		nSpace = MeltingStove_Use3007108CheckSpace(nSpace)
		
		--2月情人节花魁赛活动制作
		if Sys_ChkFullTime(tActivityTime["FlowerChiefItem"]["Now_Time"]) then
			nSpace = nSpace +1
		end
		
		-- 190124[简体征服][活动脚本]尾兽相关调整-材料产出
		nSpace = GiveBijuuMaterial_AddSpaceOutstandingExploitPack(nSpace)
		
		--190102[简体征服][活动脚本]雷神预热活动制作
		if Sys_ChkFullTime(tActivityTime["ThorWarmUp"]["ActivityTime"]) then
			nSpace = nSpace +1
		end
		
		--2019.03.13 勇士觉醒阶段I 每日15个通灵宝玉 吴燕柚
		if ((nItem == 3007108) and (Sys_ChkFullTime(tActivityTime["TrojanAwakenI"]["ActivityTime"]))) then
			nSpace = nSpace +1
		end
		
		--190306[简体征服][活动脚本]勇士觉醒-第二阶段(5.2-5.8)
		if nItem == 3007108 then
			if Sys_ChkFullTime(tActivityTime["TrojanAwakenPhaseII"]["ActivityTime"]) then
				nSpace = nSpace + 1
			end
		end
		
		--忍者特权月
		if (nItem == 3007108) and (Sys_ChkFullTime(tActivityTime["NanjaPrivilege"]["ActivityTime"])) then
			nSpace = nSpace +1
		end
		--感恩节活动
		if (nItem == 3007108) and (Sys_ChkFullTime(tActivityTime["ThanksChickenTantivy"]["ActTime"]))then
			nSpace = nSpace +1
		end
		
		--[简体征服][活动脚本]2020全球中国年(1.17-2.2)
		if (nItem == 3007108) and (Sys_ChkFullTime(tActivityTime["SpringFestival2020Nian"]["ActivityTime"]))then
			if SpringFestival2020Nian_ChkLevel() then
				nSpace = nSpace +1
			end
		end
		
				-- 200103[简体征服][活动脚本]全球情人节活动--跨服互动活动
		if Sys_ChkFullTime(tActivityTime["ValentineDayAct_2019"]["ActTime"]) then
			if User_JudgeLevelAndMetempsychosis(80,0) then
				nSpace = nSpace + 1
			end
		end
		
		
		--[简体征服][活动脚本]武汉加油2
		if (nItem == 3007108) and (Sys_ChkFullTime(tActivityTime["AtivityForPray"]["ActivityTime2"]))then
			if User_JudgeLevelAndMetempsychosis(80,0) then
				nSpace = nSpace + 1
			end
		end
				
		--200228[简体征服][活动脚本]全球愚人节活动气氛和藏宝图发放部分
		if (nItem == 3007108) and (Sys_ChkFullTime(tActivityTime["AprilFoolsDay"]["ActivityTime"]))then
			if User_JudgeLevelAndMetempsychosis(80,0) then
				nSpace = nSpace + 1
			end
		end
		
		-- 200316[简体征服][活动脚本]全球周年庆征服品牌月活动
		if (nItem == 3007108) and (Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]))then
			if User_JudgeLevelAndMetempsychosis(80,0) then
				nSpace = nSpace + 1
			end
		end
		-- 200415[简体征服][活动脚本]全球儿童节活动--打地鼠  stc(219,86)
		if (nItem == 3007108) and (Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]))then
			if User_JudgeLevelAndMetempsychosis(80,0) then
				--判断掩码
				nSpace = nSpace + 1
			end
		end
		-- 200506[英文征服][活动脚本]6月夏日祭-花火大会
		if (nItem == 3007108) and (Sys_ChkFullTime(tActivityTime["HanabiTaiKai"]["ActivityTime"]))then
			nSpace = nSpace + 1
		end
		-- 200516[简体征服][活动脚本]全球暑期活动-主Npc(7.7-7.20)
		if (nItem == 3007108) and (Sys_ChkFullTime(tActivityTime["SummerActive"]["Preheat"]))then
			if User_JudgeLevelAndMetempsychosis(80,0) then
				nSpace = nSpace + 1
			end
		end
		
		-- 200519[简体征服][活动脚本]全球暑期活动-订单任务
		if (nItem == 3007108) and (Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"]))then
			if User_JudgeLevelAndMetempsychosis(80,0) then
				nSpace = nSpace + 1
			end
		end
		--200609[简体征服][活动脚本]全球七夕花魁活动-惊喜事件
		if (nItem == 3007108) and (Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]))then
			if User_JudgeLevelAndMetempsychosis(80,0) then
				nSpace = nSpace + 1
			end
		end
		
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tTheSixthHouse_Text["FullNewBag"],nSpace))
			return
		end
		
		-- 180831[简体征服][活动脚本]寻宝魔塔活动
		if Sys_ChkFullTime(tActivityTime["TreasureHuntPagodas"]["ActTime"]) then
			if User_JudgeLevelAndMetempsychosis(80,0) then
				nSpace = nSpace + 1
			end
		end
		
	--修为没满
		--给奖励
		if not Item_DelItem(nItem) then
			return
		end
		User_AddServiceValue(tNational_War_Item[3007108]["User_ZG"])
		User_AddCultureValue(tNational_War_Item[3007108]["User_NG"])
		User_AddLeagueMoney(tNational_War_Item[3007108]["User_LMEmoney"])
		str_1 = string.format(tNational_War_Text["GetCultureValue"],tNational_War_Item[3007108]["User_NG"],tNational_War_Item[3007108]["User_ZG"],tNational_War_Item[3007108]["User_LMEmoney"])
		User_TalkChannel2005(str_1)
		--获得灵力精魄
		DemonTower_AwardItem()
				--获得岫山玉
		CoatWarehouse_Sale_ActAwardXiuJade()
		
		--鸡年年兽活动获得 稀有课本随机包,打开获得1个
		ItemOutputOfNien_AwardBookRandomPack(1)
		--NBA活动
		ActivityOfNBA_Reward(2)
		-- 新增----------------------------------------------------------------------------------------------------
		--周年庆福利活动
		AnniversaryAllWelfare(2)
		-- 夏日大作战
		-- SummerBattle_RewardMaterial(4)
		-- 年兽促销获得香蕉
		-- 山中无老虎活动制作(8.25-9.07)
		if Sys_ChkFullTime(tNewYearPromote_Banana["NowTime"]) then
				if Task_StcInterval(tNewYearPromote_Banana["EventType"],tNewYearPromote_Banana["DataType"],1,4) then
					Task_SetStatistic(tNewYearPromote_Banana["EventType"],tNewYearPromote_Banana["DataType"],0,1,0)
					Task_SetStcTimestamp(tNewYearPromote_Banana["EventType"],tNewYearPromote_Banana["DataType"],0,0)
				end

			if Task_ChkStcValue(tNewYearPromote_Banana["EventType"],tNewYearPromote_Banana["DataType"],"<",1) then
				Task_SetStatistic(tNewYearPromote_Banana["EventType"],tNewYearPromote_Banana["DataType"],1,1,0)
				Task_SetStcTimestamp(tNewYearPromote_Banana["EventType"],tNewYearPromote_Banana["DataType"],0,0)
				Item_AddItem(tNewYearPromote_Banana["ItemId"])
				Sys_SaveActionFestivalLog(tNewYearPromote_Banana["Log"])
				User_TalkChannel2005(tNewYearPromote_Text["GetBanana"])
			end
		end
		-- 七夕活动
		-- ChineseValentinesDay_Daily()
		--感恩节以旧换新活动
		ThanksGivingExchange_Daily()
		--一月大促
		PlayerBargain_AddCutNum(3)
		-- 2018七夕节活动
		ValentinesDay2018_FeatsPack()
		-- 情人节时尚比拼
		ValentineCompetition_FeatsPack()
		------------------------------------------------------------------------------------------------------
		
		-- 2017感恩节
		--CornPancakeThanks_PlusAward()
		
		-- 180504[简体征服][活动脚本]2018世界杯活动制作
		WorldCup_Activities_ExternalPack()
		-- 狗年年兽
		-- DogYearBeast_RewarItem(1)
		
		-- [181121[简体征服][活动脚本]熔炼炉引导任务
		MeltingStove_Use3007108()
		
		-- 2月情人节花魁赛活动制作
		FlowerChiefItem_Reward(1)
		
		--190102[简体征服][活动脚本]雷神预热活动制作
		ThorWarmUp_GetExtraReward(4)
		
		--battlepass 加进度
		if nItem == 3007108 then
			BattlePassTaskTest_TaskAddProgress(11,1)
		end
		
		-- 190124[简体征服][活动脚本]尾兽相关调整-材料产出
		GiveBijuuMaterial_UseOutstandingExploitPack()
		
		--2019.03.13 勇士觉醒阶段I 每日15个通灵宝玉 吴燕柚
		TrojanAwakenI_Reward(nItem ,15)
		
		-- 180831[简体征服][活动脚本]寻宝魔塔活动
		TreasureHuntPagodas_FeatsPack()
		
		--190306[简体征服][活动脚本]勇士觉醒-第二阶段(5.2-5.8)
		if nItem == 3007108 then
			TrojanAwakenPhaseII_GetBox(1)
		end
		
		--191112[英文征服][活动脚本]年终盛典-集字嘉年华(12.5-12.24)
		CharacterCarnival_Attend(4)
		
		-- ---------新加--------------
		-- 获得六级房屋材料
		-- 忍者特权月
		if nItem == 3007108 then
			WarriorPrivilege_Get(1)
		end
		
		--[简体征服][活动脚本]2020全球中国年(1.17-2.2)
		if nItem == 3007108 then
			SpringFestival2020Nian_GuoBag()
		end
		
		-- 200103[简体征服][活动脚本]全球情人节活动--跨服互动活动
		if nItem == 3007108 then
			ValentineDayAct_2019_FeatsPack()
		end
		--[简体征服][活动脚本]武汉加油2
		if nItem == 3007108 then
			AtivityForPray_DailyMeritoriousPack()
		end
				
		--200228[简体征服][活动脚本]全球愚人节活动气氛和藏宝图发放部分
		if nItem == 3007108 then
			 AprilFoolsDayAtmosphere_DailyPack(2)
		end
		-- 200316[简体征服][活动脚本]全球周年庆征服品牌月活动
		if nItem == 3007108 then
			Anni17Map_DailyPack(2)
		end
		-- 200415[简体征服][活动脚本]全球儿童节活动--打地鼠 
		if nItem == 3007108 then
			 WhacAMole_GetFanyItem(0,0,0,2)
		end
		-- 200506[英文征服][活动脚本]6月夏日祭-花火大会
		if nItem == 3007108 then
			Hanabi_Sign()
		end
		-- 200516[简体征服][活动脚本]全球暑期活动-主Npc(7.7-7.20)
		if nItem == 3007108 then
			SummerActivityMainNpc_GetItem(1)
		end
		
		-- 200519[简体征服][活动脚本]全球暑期活动-订单任务
		if nItem == 3007108 then
			SummerActivityOrder_GuoBag()
		end
		--200609[简体征服][活动脚本]全球七夕花魁活动-惊喜事件
		if nItem == 3007108 then
			 ValentinesDaySurprise_DailyPack(10)
		end
		local nItemId =  3008100
		Item_AddNewItem(nItemId,"")
		User_TalkChannel2005(tTheSixthHouse_Text["GetResource"])
		local sStr = "0,0,0,0,10003003,2[3],3008100,1"   -- 国境任务中获得建材log
		Sys_SaveActionFestivalLog(sStr)
		
		--10月新服
		OctNewServer_GetExtraPacScore(nItem)
		--万圣节活动
		HalloweenReward_RewardOtherTicket()
		--感恩节
		ThanksChickenTantivy_DayPackageUse(2)
		
	elseif nItem == tNational_War_Item["3007109"] then
		
		if Get_UserServiceValue() > (tNational_War_Cont["User_NG"] - tNational_War_Item[3007109]["User_ZG"]) then
			User_TalkChannel2005(tNational_War_Text["MoreCulture"])
			return
		end
		--给奖励
		--给奖励
		if not Item_DelItem(nItem) then
			return
		end
		User_AddServiceValue(tNational_War_Item[3007109]["User_ZG"])
		User_AddCultureValue(tNational_War_Item[3007109]["User_NG"])
		User_AddLeagueMoney(tNational_War_Item[3007109]["User_LMEmoney"])
				
		--修为 未满，判断黄金联赛积分
		GoldenLeaguePoints_Add(tNational_War_Item[3007109]["Golden_JF"])


		str_1 = string.format(tNational_War_Text["GetCultureValue"],tNational_War_Item[3007109]["User_NG"],tNational_War_Item[3007109]["User_ZG"],tNational_War_Item[3007109]["User_LMEmoney"])

		User_TalkChannel2005(str_1)
		
		--10月新服
		OctNewServer_GetExtraPacScore(nItem)
		
	elseif nItem == tNational_War_Item["3007110"] then
		if Get_UserServiceValue() > (tNational_War_Cont["User_NG"] - tNational_War_Item[3007110]["User_ZG"]) then
			User_TalkChannel2005(tNational_War_Text["MoreCulture"])
			return
		end
		--给奖励
		--给奖励
		if not Item_DelItem(nItem) then
			return
		end
		User_AddServiceValue(tNational_War_Item[3007110]["User_ZG"])
		User_AddCultureValue(tNational_War_Item[3007110]["User_NG"])
		User_AddLeagueMoney(tNational_War_Item[3007110]["User_LMEmoney"])
				
		--修为 未满，判断黄金联赛积分
		GoldenLeaguePoints_Add(tNational_War_Item[3007110]["Golden_JF"])
		
		str_1 = string.format(tNational_War_Text["GetCultureValue"],tNational_War_Item[3007110]["User_NG"],tNational_War_Item[3007110]["User_ZG"],tNational_War_Item[3007110]["User_LMEmoney"])
		User_TalkChannel2005(str_1)
		
		--10月新服
		OctNewServer_GetExtraPacScore(nItem)
		
	end
end


--跨服物品使用
function National_War_FindWay(nItem,nFlag)
	Sys_GotoSomeWhere(tNational_War_FindNpc[nFlag]["nPosX"],tNational_War_FindNpc[nFlag]["nPosY"],tNational_War_FindNpc[nFlag]["nMapId"])	
end

-- 点击“跨服任务大使”直接判断积分给礼包
function National_War_GetJFPack()
	if not Task_ChkTaskDetail(35011) then
		return
	end
	
	-- 判断是否为跨服玩家  跨服玩家就不执行
	if User_IsCross() then
		return
	end
	
	local nFlag = 0
	local nNum = 0
	-- 判断玩家积分区间
	if Get_TaskDetailData6(35011) < tNational_War_JF["Min"] then
		return
	elseif Get_TaskDetailData6(35011) < tNational_War_JF["Mid"] then
		nFlag = 1
	elseif Get_TaskDetailData6(35011) < tNational_War_JF["Max"]then
		nFlag = 2
	else
		nFlag = 3
	end
	
	if nFlag > 0 then
		for i = 1,nFlag do
			--判断是否已经领取过了
			if Task_StcInterval(tNational_War_PackStc[i]["EventType"],tNational_War_PackStc[i]["DataType"],1,4) then		
				Task_SetStatistic(tNational_War_PackStc[i]["EventType"],tNational_War_PackStc[i]["DataType"],0,1)	
				Task_SetStcTimestamp(tNational_War_PackStc[i]["EventType"],tNational_War_PackStc[i]["DataType"],0)
			end
	
			if Task_ChkStcValue(tNational_War_PackStc[i]["EventType"],tNational_War_PackStc[i]["DataType"],"==",0) then
				--判断空间
				if not User_CheckLeftSpace(tNational_War_Cont["nSpace"]) then
					return
				end
				Task_SetStatistic(tNational_War_PackStc[i]["EventType"],tNational_War_PackStc[i]["DataType"],1,1)
				Task_SetStcTimestamp(tNational_War_PackStc[i]["EventType"],tNational_War_PackStc[i]["DataType"],0)
				
				if Item_AddNewItem(tNational_War_JF[i],tNational_War_Item["Monoply"]) then
					nNum = nNum + 1
					Sys_SaveActionTaskLog(string.format(tNational_War_ActionLog["LOG"],tNational_War_JF[i]))
--天阶赛加积分
					local nAllEventType = tNational_War_Tjs_Stc[1]["EventType"]
					local nAllDataType = tNational_War_Tjs_Stc[1]["DataType"]
					local nEventType = tNational_War_Tjs_Stc[2]["EventType"]
					local nDataType = tNational_War_Tjs_Stc[2]["DataType"]
					local nSysDynaGlobalData1 = Get_SysDynaGlobalData1(tNational_War_Tjs["Global"])
					if Sys_ChkFullTime(tNational_War_Tjs["Time"]) then
						if nSysDynaGlobalData1 == 1 and Get_SysDynaGlobalData2(tNational_War_Tjs["Global"]) == 0 then
							Task_AddStatistic(nAllEventType,nAllDataType,tNational_War_Tjs[i],1)
							Task_AddStatistic(nEventType,nDataType,tNational_War_Tjs[i],1)
							User_TalkChannel2005(tTjs_Text[i])
						end	
					end
				end
			end
		end
		if nNum > 0 then
			User_TalkChannel2005(tNational_War_Text["GetJFPack"])
		end
	end
end

-- 上线添加功勋值掩码 35011
function National_War_OnlAddTask()
	if not User_JudgeLevelAndMetempsychosis(tNational_War_Cont["Level"],tNational_War_Cont["Metempsychosis"]) then
		return
	end
	
	if Task_ChkTaskDetail(35011) then
		return
	end
	
	Task_AddTaskDetail(35011)
end


-------------------------------------------npc模块------------------------------------

--国战任务军师
tNpcGossip[17400] = tNpcGossip[17400] or DefaultNpc:new{}
tNpcGossip[17400]["OptionHidden"] = 1
tNpcGossip[17400]["nPageNum"] = 10
tNpcGossip[17400]["Text1-1"] = {111,112,113}
tNpcGossip[17400]["Text111"] = tNational_War_Text[17400]["Text111"]
tNpcGossip[17400]["Text112"] = tNational_War_Text[17400]["Text112"]
tNpcGossip[17400]["Text113"] = tNational_War_Text[17400]["Text113"]
tNpcGossip[17400]["tOption1-1"] = {4441,750,790,10013,600,650,10016}
tNpcGossip[17400]["ChkFunc1-1"] = function ()
	 return not User_IsCross()
end

--点击主对白刺探选项进入下一层对白
tNpcGossip[17400]["Text2-1"] = {211,212,213}
tNpcGossip[17400]["Text211"] = tNational_War_Text[17400]["Text211"]
tNpcGossip[17400]["Text212"] = tNational_War_Text[17400]["Text212"]
tNpcGossip[17400]["Text213"] = tNational_War_Text[17400]["Text213"]
tNpcGossip[17400]["tOption2-1"] = {5,30,31,21}
tNpcGossip[17400]["ChkFunc2-1"] = function ()
	 return not User_IsCross()
end


--点击接受/完成任务刺探任务--接任务
tNpcGossip[17400]["Text2-2"] = {221,222,223}
tNpcGossip[17400]["Text221"] = tNational_War_Text[17400]["Text221"]
tNpcGossip[17400]["Text222"] = tNational_War_Text[17400]["Text222"]
tNpcGossip[17400]["Text223"] = tNational_War_Text[17400]["Text223"]
tNpcGossip[17400]["tOption2-2"] = {22}

--点击接受/完成任务刺探任务--完成任务
tNpcGossip[17400]["Text5-1"] = {511,512}
tNpcGossip[17400]["Text511"] = tNational_War_Text[17400]["Text511"]
tNpcGossip[17400]["Text512"] = tNational_War_Text[17400]["Text512"]
tNpcGossip[17400]["tOption5-1"] = {26}

--玩家未完成任务
tNpcGossip[17400]["Text6-1"] = {611,612}
tNpcGossip[17400]["Text611"] = tNational_War_Text[17400]["Text611"]
tNpcGossip[17400]["Text612"] = tNational_War_Text[17400]["Text612"]
tNpcGossip[17400]["tOption6-1"] = {24}

--玩家当天已经完成
tNpcGossip[17400]["Text4-1"] = {411}
tNpcGossip[17400]["Text411"] = tNational_War_Text[17400]["Text411"]
tNpcGossip[17400]["tOption4-1"] = {22}

--玩家等级不足
tNpcGossip[17400]["Text3-1"] = {311,312}
tNpcGossip[17400]["Text311"] = tNational_War_Text[17400]["Text311"]
tNpcGossip[17400]["Text312"] = tNational_War_Text[17400]["Text312"]
tNpcGossip[17400]["tOption3-1"] = {22}

--没任务提示
tNpcGossip[17400]["Text9-3"] = {931}
tNpcGossip[17400]["Text931"] = tNational_War_Text[17400]["Text931"] 
tNpcGossip[17400]["tOption9-3"] = {25}

--天石不足
tNpcGossip[17400]["Text9-4"] = {941}
tNpcGossip[17400]["Text941"] = tNational_War_Text[17400]["Text941"]
tNpcGossip[17400]["tOption9-4"] = {22}

--玖．跨服功勋值兑换奖励
tNpcGossip[17400]["Text9-5"] = {951,952,953}
tNpcGossip[17400]["Text951"] = tNational_War_Text[17400]["Text951"]
tNpcGossip[17400]["Text952"] = tNational_War_Text[17400]["Text952"]
tNpcGossip[17400]["Text953"] = tNational_War_Text[17400]["Text953"]
tNpcGossip[17400]["tOption9-5"] = {33,34,35,40,41}
tNpcGossip[17400]["ChkFunc9-5"] = function ()
	
	local nNum = 0
	if not Task_ChkTaskDetail(35011) then
		nNum = 0
	else
		nNum = Get_TaskDetailData6(35011)
	end
	tNpcGossip[17400]["Text953"] = string.format(tNational_War_Text[17400]["Text953"],nNum)
	return true
end

--【玩家选择、失败、积分未达到】
tNpcGossip[17400]["Text9-6"] = {961}
tNpcGossip[17400]["Text961"] = tNational_War_Text[17400]["Text961"]
tNpcGossip[17400]["tOption9-6"] = {36}


--【玩家选择、失败、已领取该礼包】
tNpcGossip[17400]["Text9-7"] = {971}
tNpcGossip[17400]["Text971"] = tNational_War_Text[17400]["Text971"]
tNpcGossip[17400]["tOption9-7"] = {37}

--【玩家选择、成功领取】
tNpcGossip[17400]["Text9-8"] = {981}
tNpcGossip[17400]["Text981"] = tNational_War_Text[17400]["Text981"]
tNpcGossip[17400]["tOption9-8"] = {38}

tNpcGossip[17400]["Text9-9"] = {991}
tNpcGossip[17400]["Text991"] = tNational_War_Text[17400]["Text991"]
tNpcGossip[17400]["tOption9-9"] = {37}

tNpcGossip[17400]["Text10-1"] = {1011}
tNpcGossip[17400]["Text1011"] = tNational_War_Text[17400]["Text1011"]
tNpcGossip[17400]["tOption10-1"] = {37}

--查看礼包奖励内容。
tNpcGossip[17400]["Text11-1"] = {1111,1112,1113}
tNpcGossip[17400]["Text1111"] = tNational_War_Text[17400]["Text1111"]
tNpcGossip[17400]["Text1112"] = tNational_War_Text[17400]["Text1112"]
tNpcGossip[17400]["Text1113"] = tNational_War_Text[17400]["Text1113"]
tNpcGossip[17400]["tOption11-1"] = {42}

-- 闹市潜伏者
tNpcGossip[17401] = tNpcGossip[17401] or DefaultNpc:new{}
tNpcGossip[17401]["OptionHidden"] = 1

--任务对白
tNpcGossip[17401]["Text1-1"] = {111,112}
tNpcGossip[17401]["Text111"] = tNational_War_Text[17401]["Text111"]
tNpcGossip[17401]["Text112"] = tNational_War_Text[17401]["Text112"]
tNpcGossip[17401]["tOption1-1"] = {9}
tNpcGossip[17401]["ChkFunc1-1"] = function ()
	return National_War_SpyConditJud()
end

--闲聊对白
tNpcGossip[17401]["Text1-2"] = {121}
tNpcGossip[17401]["Text121"] = tNational_War_Text[17401]["Text121"]
tNpcGossip[17401]["tOption1-2"] = {8}
tNpcGossip[17401]["ChkFunc1-2"] = function ()
	local nTask_detail = tNational_War_Cont["task_detail"]
	 
	if not Task_ChkTaskDetail(nTask_detail) then
	 	return true
	elseif Get_TaskDetailData3(nTask_detail) ~=0 or Get_TaskDetailData6(nTask_detail) ~= 0 then
		return true
	elseif Sys_ParseNumbersContain(tNational_War_Num[17401],Get_TaskDetailData1(nTask_detail) + Get_TaskDetailData2(nTask_detail) + Get_TaskDetailData3(nTask_detail)) then
		return false
	else
		return true
	end
end

tNpcGossip[17401]["Text1-3"] = {131}
tNpcGossip[17401]["Text131"] = tNational_War_Text[17401]["Text131"]
tNpcGossip[17401]["tOption1-3"] = {8}



-- 神秘卧底
tNpcGossip[17402] = tNpcGossip[17402] or DefaultNpc:new{}
tNpcGossip[17402]["OptionHidden"] = 1
--任务对白

tNpcGossip[17402]["Text1-1"] = {111,112}
tNpcGossip[17402]["Text111"] = tNational_War_Text[17402]["Text111"]
tNpcGossip[17402]["Text112"] = tNational_War_Text[17402]["Text112"]
tNpcGossip[17402]["tOption1-1"] = {11}
tNpcGossip[17402]["ChkFunc1-1"] = function ()
	return National_War_SpyConditJud()
end

--闲聊对白
tNpcGossip[17402]["Text1-2"] = {121}
tNpcGossip[17402]["Text121"] = tNational_War_Text[17402]["Text121"]
tNpcGossip[17402]["tOption1-2"] = {10}
tNpcGossip[17402]["ChkFunc1-2"] = function ()
	local nTask_detail = tNational_War_Cont["task_detail"]
	 
	if not Task_ChkTaskDetail(nTask_detail) then
	 	return true
	elseif Get_TaskDetailData3(nTask_detail) ~=0 or Get_TaskDetailData6(nTask_detail) ~= 0 then
		return true
	elseif Sys_ParseNumbersContain(tNational_War_Num[17402],Get_TaskDetailData1(nTask_detail) + Get_TaskDetailData2(nTask_detail) + Get_TaskDetailData3(nTask_detail)) then
		return false
	else
		return true
	end
end

tNpcGossip[17402]["Text1-3"] = {131}
tNpcGossip[17402]["Text131"] = tNational_War_Text[17402]["Text131"]
tNpcGossip[17402]["tOption1-3"] = {10}

-- 军营间谍
tNpcGossip[17403] = tNpcGossip[17403] or DefaultNpc:new{}
tNpcGossip[17403]["OptionHidden"] = 1

--任务对白

tNpcGossip[17403]["Text1-1"] = {111,112}
tNpcGossip[17403]["Text111"] = tNational_War_Text[17403]["Text111"]
tNpcGossip[17403]["Text112"] = tNational_War_Text[17403]["Text112"]
tNpcGossip[17403]["tOption1-1"] = {13}
tNpcGossip[17403]["ChkFunc1-1"] = function ()
	return National_War_SpyConditJud()
end

--闲聊对白
tNpcGossip[17403]["Text1-2"] = {121}
tNpcGossip[17403]["Text121"] = tNational_War_Text[17403]["Text121"]
tNpcGossip[17403]["tOption1-2"] = {12}
tNpcGossip[17403]["ChkFunc1-2"] = function ()
	local nTask_detail = tNational_War_Cont["task_detail"]
	 
	if not Task_ChkTaskDetail(nTask_detail) then
	 	return true
	elseif Get_TaskDetailData3(nTask_detail) ~=0 or Get_TaskDetailData6(nTask_detail) ~= 0 then
		return true
	elseif Sys_ParseNumbersContain(tNational_War_Num[17403],Get_TaskDetailData1(nTask_detail) + Get_TaskDetailData2(nTask_detail) + Get_TaskDetailData3(nTask_detail)) then
		return false
	else
		return true
	end
end

tNpcGossip[17403]["Text1-3"] = {131}
tNpcGossip[17403]["Text131"] = tNational_War_Text[17403]["Text131"]
tNpcGossip[17403]["tOption1-3"] = {12}

-- 朝廷细作
tNpcGossip[17404] = tNpcGossip[17404] or DefaultNpc:new{}
tNpcGossip[17404]["OptionHidden"] = 1

--任务对白
tNpcGossip[17404]["Text1-1"] = {111,112}
tNpcGossip[17404]["Text111"] = tNational_War_Text[17404]["Text111"]
tNpcGossip[17404]["Text112"] = tNational_War_Text[17404]["Text112"]
tNpcGossip[17404]["tOption1-1"] = {15}
tNpcGossip[17404]["ChkFunc1-1"] = function ()
	return National_War_SpyConditJud()
end

--闲聊对白
tNpcGossip[17404]["Text1-2"] = {121}
tNpcGossip[17404]["Text121"] = tNational_War_Text[17404]["Text121"]
tNpcGossip[17404]["tOption1-2"] = {14}
tNpcGossip[17404]["ChkFunc1-2"] = function ()
	local nTask_detail = tNational_War_Cont["task_detail"]
	 
	if not Task_ChkTaskDetail(nTask_detail) then
	 	return true
	elseif Get_TaskDetailData3(nTask_detail) ~=0 or Get_TaskDetailData6(nTask_detail) ~= 0 then
		return true
	elseif Sys_ParseNumbersContain(tNational_War_Num[17404],Get_TaskDetailData1(nTask_detail) + Get_TaskDetailData2(nTask_detail) + Get_TaskDetailData3(nTask_detail)) then
		return false
	else
		return true
	end
end

tNpcGossip[17404]["Text1-3"] = {131}
tNpcGossip[17404]["Text131"] = tNational_War_Text[17404]["Text131"]
tNpcGossip[17404]["tOption1-3"] = {14}


-- 武林探子
tNpcGossip[17405] = tNpcGossip[17405] or DefaultNpc:new{}
tNpcGossip[17405]["OptionHidden"] = 1


--任务对白
tNpcGossip[17405]["Text1-1"] = {111,112}
tNpcGossip[17405]["Text111"] = tNational_War_Text[17405]["Text111"]
tNpcGossip[17405]["Text112"] = tNational_War_Text[17405]["Text112"]
tNpcGossip[17405]["tOption1-1"] = {17}
tNpcGossip[17405]["ChkFunc1-1"] = function ()
	return National_War_SpyConditJud()
end

--闲聊对白
tNpcGossip[17405]["Text1-2"] = {121}
tNpcGossip[17405]["Text121"] = tNational_War_Text[17405]["Text121"]
tNpcGossip[17405]["tOption1-2"] = {16}
tNpcGossip[17405]["ChkFunc1-2"] = function ()
	local nTask_detail = tNational_War_Cont["task_detail"]
	 
	if not Task_ChkTaskDetail(nTask_detail) then
	 	return true
	elseif Get_TaskDetailData3(nTask_detail) ~=0 or Get_TaskDetailData6(nTask_detail) ~= 0 then
		return true
	elseif Sys_ParseNumbersContain(tNational_War_Num[17405],Get_TaskDetailData1(nTask_detail) + Get_TaskDetailData2(nTask_detail) + Get_TaskDetailData3(nTask_detail)) then
		return false
	else
		return true
	end
end

tNpcGossip[17405]["Text1-3"] = {131}
tNpcGossip[17405]["Text131"] = tNational_War_Text[17405]["Text131"]
tNpcGossip[17405]["tOption1-3"] = {16}


--点击主对白刺探选项进入下一层对白
tNpcGossip[17400]["Option1"]=tNational_War_Text[17400]["Option1"]
tNpcGossip[17400]["OptionPoint1"] = "2-1"
tNpcGossip[17400]["OptionChkFunc1"] = function ()
	return  User_IsCross() == false
end


--第一层对白选项

tNpcGossip[17400]["Option4"]=tNational_War_Text[17400]["Option4"]

--第二层对白选项
tNpcGossip[17400]["Option5"]=tNational_War_Text[17400]["Option5"]
tNpcGossip[17400]["OptionFunc5"]="National_War_AcceptTask</N>17400"
tNpcGossip[17400]["OptionChkFunc5"] = function ()
	return  not Task_ChkTaskDetail(tNational_War_Cont["task_detail"])
end

tNpcGossip[17400]["Option30"]=tNational_War_Text[17400]["Option30"]
tNpcGossip[17400]["OptionFunc30"]="National_War_RewardItem</N>17400"

tNpcGossip[17400]["Option31"]=tNational_War_Text[17400]["Option31"]
tNpcGossip[17400]["OptionFunc31"]="National_War_SpyCompleteByFiveCP</N>17400"

tNpcGossip[17400]["Option32"]=tNational_War_Text[17400]["Option32"]
tNpcGossip[17400]["OptionPoint32"] = "9-5"


----------------
tNpcGossip[17400]["Option33"]=tNational_War_Text[17400]["Option33"]
tNpcGossip[17400]["OptionFunc33"]="National_War_Points_For</N>17400</N>50"

tNpcGossip[17400]["Option34"]=tNational_War_Text[17400]["Option34"]
tNpcGossip[17400]["OptionFunc34"]="National_War_Points_For</N>17400</N>150"

tNpcGossip[17400]["Option35"]=tNational_War_Text[17400]["Option35"]
tNpcGossip[17400]["OptionFunc35"]="National_War_Points_For</N>17400</N>300"

tNpcGossip[17400]["Option40"]=tNational_War_Text[17400]["Option40"]
tNpcGossip[17400]["OptionPoint40"] = "11-1"

tNpcGossip[17400]["Option41"]=tNational_War_Text[17400]["Option41"]
tNpcGossip[17400]["Option42"]=tNational_War_Text[17400]["Option42"]


tNpcGossip[17400]["Option20"] = tNational_War_Text[17400]["Option20"]
tNpcGossip[17400]["Option21"] = tNational_War_Text[17400]["Option21"]
tNpcGossip[17400]["Option22"] = tNational_War_Text[17400]["Option22"]
tNpcGossip[17400]["Option23"] = tNational_War_Text[17400]["Option23"]
tNpcGossip[17400]["Option24"] = tNational_War_Text[17400]["Option24"]
tNpcGossip[17400]["Option25"] = tNational_War_Text[17400]["Option25"]
tNpcGossip[17400]["Option26"] = tNational_War_Text[17400]["Option26"]


tNpcGossip[17401]["Option8"]=tNational_War_Text[17401]["Option8"]
tNpcGossip[17401]["Option9"]=tNational_War_Text[17401]["Option9"]
tNpcGossip[17401]["OptionFunc9"]="National_War_SpyComplete</N>17401"

tNpcGossip[17402]["Option10"]=tNational_War_Text[17402]["Option10"]
tNpcGossip[17402]["Option11"]=tNational_War_Text[17402]["Option11"]
tNpcGossip[17402]["OptionFunc11"]="National_War_SpyComplete</N>17402"

tNpcGossip[17403]["Option12"]=tNational_War_Text[17403]["Option12"]
tNpcGossip[17403]["Option13"]=tNational_War_Text[17403]["Option13"]
tNpcGossip[17403]["OptionFunc13"]="National_War_SpyComplete</N>17403"

tNpcGossip[17404]["Option14"]=tNational_War_Text[17404]["Option14"]
tNpcGossip[17404]["Option15"]=tNational_War_Text[17404]["Option15"]
tNpcGossip[17404]["OptionFunc15"]="National_War_SpyComplete</N>17404"

tNpcGossip[17405]["Option16"]=tNational_War_Text[17405]["Option16"]
tNpcGossip[17405]["Option17"]=tNational_War_Text[17405]["Option17"]
tNpcGossip[17405]["OptionFunc17"]="National_War_SpyComplete</N>17405"


--物品对白配置模块
tItem[727505] = tItem[727505] or {}
tItem[727505]["Text1-1"] = {111,112}
tItem[727505]["Text111"] = tNational_War_Text[727505]["111"]
tItem[727505]["Text112"] = tNational_War_Text[727505]["112"]
tItem[727505]["tOption1-1"] = {10,1,2,3,4}
tItem[727505]["ChkFunc1-1"] = function()
	local nNum = 0
	if not Task_ChkTaskDetail(35011) then
		nNum = 0
	else
		nNum = Get_TaskDetailData6(35011)
	end
	
	tItem[727505]["Text112"] = string.format(tNational_War_Text[727505]["112"],nNum)
	return true
end


tItem[727505]["Text2-1"] = {211,212}
tItem[727505]["Text211"] = tNational_War_Text[727505]["211"]
tItem[727505]["Text212"] = tNational_War_Text[727505]["212"]
tItem[727505]["tOption2-1"] = {5}


tItem[727505]["Text2-2"] = {221,222}
tItem[727505]["Text221"] = tNational_War_Text[727505]["221"]
tItem[727505]["Text222"] = tNational_War_Text[727505]["222"]
tItem[727505]["tOption2-2"] = {6}
tItem[727505]["ChkFunc2-2"] = function()
	local nNum = 0
	if not Task_ChkTaskDetail(tNational_War_Cont["Task_35007"]) then
		nNum = 0
	else
		nNum = Get_TaskDetailData6(tNational_War_Cont["Task_35007"])
	end
	
	tItem[727505]["Text222"] = string.format(tNational_War_Text[727505]["222"],nNum)
	return true
end

tItem[727505]["Text2-3"] = {231,232}
tItem[727505]["Text231"] = tNational_War_Text[727505]["231"]
tItem[727505]["Text232"] = tNational_War_Text[727505]["232"]
tItem[727505]["tOption2-3"] = {7}

tItem[727505]["Text2-4"] = {241,242}
tItem[727505]["Text241"] = tNational_War_Text[727505]["241"]
tItem[727505]["Text242"] = tNational_War_Text[727505]["242"]
tItem[727505]["tOption2-4"] = {8}

tItem[727505]["Option1"] = tNational_War_Text[727505]["Option1"]
tItem[727505]["OptionPoint1"]="2-1"

tItem[727505]["Option2"] = tNational_War_Text[727505]["Option2"]
tItem[727505]["OptionPoint2"]="2-2"

tItem[727505]["Option3"] = tNational_War_Text[727505]["Option3"]
tItem[727505]["OptionPoint3"]="2-3"

tItem[727505]["Option4"] = tNational_War_Text[727505]["Option4"]
tItem[727505]["OptionPoint4"]="2-4"

tItem[727505]["Option5"] = tNational_War_Text[727505]["Option5"]
tItem[727505]["OptionFunc5"]="National_War_FindWay</N>727505</N>1"

tItem[727505]["Option6"] = tNational_War_Text[727505]["Option6"]

tItem[727505]["Option7"] = tNational_War_Text[727505]["Option7"]
tItem[727505]["OptionFunc7"]="National_War_FindWay</N>727505</N>2"

tItem[727505]["Option8"] = tNational_War_Text[727505]["Option8"]
tItem[727505]["OptionFunc8"]="National_War_FindWay</N>727505</N>3"

tItem[727505]["Option10"] = tNational_War_Text[727505]["Option10"]
tItem[727505]["OptionFunc10"]="National_War_FindWay</N>727505</N>4"

---------新添加需求
tNpcGossip[17400]["Text12-1"] = {1211,1212}
tNpcGossip[17400]["Text1211"] = tNational_War_Text[17400]["Text1211"]
tNpcGossip[17400]["Text1212"] = tNational_War_Text[17400]["Text1212"]
tNpcGossip[17400]["tOption12-1"] = {51,52}
tNpcGossip[17400]["ChkFunc12-1"] = function ()
	
	local nNum = 0
	if not Task_ChkTaskDetail(35011) then
		nNum = 0
	else
		nNum = Get_TaskDetailData6(35011)
	end
	
	tNpcGossip[17400]["Text1211"] = string.format(tNational_War_Text[17400]["Text1211"],nNum)
	return true
end

tNpcGossip[17400]["Option51"]=tNational_War_Text[17400]["Option51"]
tNpcGossip[17400]["OptionPoint51"] = "15"

tNpcGossip[17400]["Option52"]=tNational_War_Text[17400]["Option52"]

tNpcGossip[17400]["Text15-1"] = {1511}
tNpcGossip[17400]["Text1511"] = tNational_War_Text[17400]["Text1511"]
tNpcGossip[17400]["tOption15-1"] = {55,56}
tNpcGossip[17400]["ChkFunc15-1"] = function ()
	
	if not Task_ChkTaskDetail(35011) then
		Task_AddTaskDetail(35011)
		nFlag = 1
	elseif Get_TaskDetailData6(35011) >= tNational_War_JFCont["Max"] then
		return false
	elseif Get_TaskDetailData6(35011) >= tNational_War_JFCont["Mid"] then
		nFlag = 3
	elseif Get_TaskDetailData6(35011) >= tNational_War_JFCont["Min"] then
		nFlag = 2
	else
		nFlag = 1
	end
	
	tNpcGossip[17400]["Text1511"] = string.format(tNational_War_Text[17400]["Text1511"],tNational_War_JFCont[nFlag])
	return true
end

tNpcGossip[17400]["Text15-2"] = {1521}
tNpcGossip[17400]["Text1521"] = tNational_War_Text[17400]["Text1521"]
tNpcGossip[17400]["tOption15-2"] = {53}


tNpcGossip[17400]["Option55"] = tNational_War_Text[17400]["Option55"]
tNpcGossip[17400]["OptionFunc55"]="National_War_CostCp</N>17400"

tNpcGossip[17400]["Option56"] = tNational_War_Text[17400]["Option56"]


tNpcGossip[17400]["Text13-1"] = {1311}
tNpcGossip[17400]["Text1311"] = tNational_War_Text[17400]["Text1311"]
tNpcGossip[17400]["tOption13-1"] = {53}

tNpcGossip[17400]["Option53"] = tNational_War_Text[17400]["Option53"]

tNpcGossip[17400]["Text14-1"] = {1411}
tNpcGossip[17400]["Text1411"] = tNational_War_Text[17400]["Text1411"]
tNpcGossip[17400]["tOption14-1"] = {53}

tNpcGossip[17400]["Option54"] = tNational_War_Text[17400]["Option54"]

---------------------------------------------物品使用模块-------------------------------
tItem[3007108] = tItem[3007108] or {}
tItem[3007108]["Function"] = function(nItemId,sItemName)
	National_War_ItemUse(nItemId)
end

tItem[3007109] = tItem[3007109] or {}
tItem[3007109]["Function"] = function(nItemId,sItemName)
	National_War_ItemUse(nItemId)
end

tItem[3007110] = tItem[3007110] or {}
tItem[3007110]["Function"] = function(nItemId,sItemName)
	National_War_ItemUse(nItemId)
end

--------------------------------------------上线触发

-- 上线触发
table.insert(tSystem_PlayLogin_Func,National_War_OnlAddTask)
