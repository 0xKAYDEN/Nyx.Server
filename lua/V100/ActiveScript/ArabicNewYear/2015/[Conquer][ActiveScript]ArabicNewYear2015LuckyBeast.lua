------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]伊历新年活动之天降幸运兽
--Purpose:	伊历新年活动之天降幸运兽
--Creator: 	丁晨
--Created:	2015/04/30
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
--掩码说明
---stc(128,82)	表示玩家是否领取了奖励
---#stc(128,83)	代表拜访	金狐
---stc(128,84)	代表拜访	银兔
---stc(128,85)	代表拜访	财鹿
---stc(128,86)	代表拜访	宝牛
---stc(128,87)	代表拜访	福鱼



--LOGid 10002315
------------------------------------------------------------------------------------
--命名规范
--ArabicNewYear2015_LuckyBeast_
------------------------------------------------------------------------------------

--总NPC自动寻路到财神  --这个代码没用到....
local tArabicNewYear2015_LuckyBeast_FindMay = {}

tArabicNewYear2015_LuckyBeast_FindMay[17088] ={}
tArabicNewYear2015_LuckyBeast_FindMay[17088]["PosX"] = 333
tArabicNewYear2015_LuckyBeast_FindMay[17088]["PosY"] = 491

--活动时间
local tArabicNewYear2015_LuckyBeast_Activity ={}
	tArabicNewYear2015_LuckyBeast_Activity["BeforTime"] = tActivityTime["ArabicNewYear"]["BeforeActiveTime"]
	tArabicNewYear2015_LuckyBeast_Activity["Now_Time"] = tActivityTime["ArabicNewYear"]["AcitveTime"]

--玩家等级限制
local tArabicNewYear2015_LuckyBeast_Limit ={}
	tArabicNewYear2015_LuckyBeast_Limit["Level"] = 80 
	tArabicNewYear2015_LuckyBeast_Limit["Incarnation"] = 0
	tArabicNewYear2015_LuckyBeast_Limit["LevelMax"] = 140
	
--背包空间判断
local tArabicNewYear2015_LuckyBeast_Bag ={}
	tArabicNewYear2015_LuckyBeast_Bag["Limit"] = 1

--拜访排名
local tArabicNewYear2015_LuckyBeast_Rank = {}
	tArabicNewYear2015_LuckyBeast_Rank["RankId"] = 50632
--STC掩码
local tArabicNewYear2015_LuckyBeast_Stc = {}
	tArabicNewYear2015_LuckyBeast_Stc["EventType"] = {}
	tArabicNewYear2015_LuckyBeast_Stc["DataType"] = {}
	
	tArabicNewYear2015_LuckyBeast_Stc["EventType"]["Finish"] = 128
	tArabicNewYear2015_LuckyBeast_Stc["DataType"]["Finish"] = 82
	
	tArabicNewYear2015_LuckyBeast_Stc["EventType"][1] = 128
	tArabicNewYear2015_LuckyBeast_Stc["DataType"][1] = 83
	
	tArabicNewYear2015_LuckyBeast_Stc["EventType"][2] = 128
	tArabicNewYear2015_LuckyBeast_Stc["DataType"][2] = 84
	
	tArabicNewYear2015_LuckyBeast_Stc["EventType"][3] = 128
	tArabicNewYear2015_LuckyBeast_Stc["DataType"][3] = 85
	
	tArabicNewYear2015_LuckyBeast_Stc["EventType"][4] = 128
	tArabicNewYear2015_LuckyBeast_Stc["DataType"][4] = 86
	
	tArabicNewYear2015_LuckyBeast_Stc["EventType"][5] = 128
	tArabicNewYear2015_LuckyBeast_Stc["DataType"][5] = 87
	
	tArabicNewYear2015_LuckyBeast_Stc["EventType"]["End"] = 128
	tArabicNewYear2015_LuckyBeast_Stc["DataType"]["End"] = 88

--奖励
local tArabicNewYear2015_LuckyBeast_Reward ={}
	tArabicNewYear2015_LuckyBeast_Reward["Blessing"] = 24
	tArabicNewYear2015_LuckyBeast_Reward["ExpReward"] = 60
	tArabicNewYear2015_LuckyBeast_Reward["CulReward"] = 50
	
--NPC坐标配置 移动幸运兽
	
local tArabicNewYear2015_LuckyBeast_NpcPosition = {}
	
	--金狐
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089] ={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["MapId"] = 1002
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][1]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][1]["PosX"] = 362
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][1]["PosY"] = 364
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][2]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][2]["PosX"] = 304
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][2]["PosY"] = 499
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][2]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][2]["PosX"] = 304
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][2]["PosY"] = 429
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][3]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][3]["PosX"] = 334
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][3]["PosY"] = 360
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][4]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][4]["PosX"] = 327
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][4]["PosY"] = 383
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][5]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][5]["PosX"] = 423
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][5]["PosY"] = 362
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][6]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][6]["PosX"] = 395
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][6]["PosY"] = 372
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][7]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][7]["PosX"] = 268
	tArabicNewYear2015_LuckyBeast_NpcPosition[17089]["Pos"][7]["PosY"] = 443
	
	--银兔
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090] ={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["MapId"] = 1011
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][1]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][1]["PosX"] = 205
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][1]["PosY"] = 318
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][2]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][2]["PosX"] = 90
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][2]["PosY"] = 403
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][2]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][2]["PosX"] = 289
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][2]["PosY"] = 427
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][3]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][3]["PosX"] = 271
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][3]["PosY"] = 249
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][4]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][4]["PosX"] = 435
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][4]["PosY"] = 429
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][5]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][5]["PosX"] = 556
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][5]["PosY"] = 482
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][6]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][6]["PosX"] = 542
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][6]["PosY"] = 228
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][7]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][7]["PosX"] = 658
	tArabicNewYear2015_LuckyBeast_NpcPosition[17090]["Pos"][7]["PosY"] = 566
	
	--财鹿
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091] ={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["MapId"] = 1020
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][1]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][1]["PosX"] = 557
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][1]["PosY"] = 649
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][2]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][2]["PosX"] = 732
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][2]["PosY"] = 706
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][2]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][2]["PosX"] = 785
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][2]["PosY"] = 527
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][3]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][3]["PosX"] = 798
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][3]["PosY"] = 467
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][4]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][4]["PosX"] = 510
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][4]["PosY"] = 400
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][5]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][5]["PosX"] = 346
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][5]["PosY"] = 315
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][6]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][6]["PosX"] = 399
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][6]["PosY"] = 720
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][7]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][7]["PosX"] = 506
	tArabicNewYear2015_LuckyBeast_NpcPosition[17091]["Pos"][7]["PosY"] = 833
	
	--宝牛
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092] ={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["MapId"] = 1000
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][1]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][1]["PosX"] = 566
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][1]["PosY"] = 611
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][2]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][2]["PosX"] = 760
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][2]["PosY"] = 660
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][2]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][2]["PosX"] = 636
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][2]["PosY"] = 417
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][3]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][3]["PosX"] = 704
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][3]["PosY"] = 524
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][4]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][4]["PosX"] = 208
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][4]["PosY"] = 412
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][5]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][5]["PosX"] = 381
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][5]["PosY"] = 343
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][6]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][6]["PosX"] = 167
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][6]["PosY"] = 283
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][7]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][7]["PosX"] = 354
	tArabicNewYear2015_LuckyBeast_NpcPosition[17092]["Pos"][7]["PosY"] = 205
	
	--福鱼
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093] ={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["MapId"] = 1015
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][1]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][1]["PosX"] = 797
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][1]["PosY"] = 538
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][2]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][2]["PosX"] = 755
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][2]["PosY"] = 630
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][2]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][2]["PosX"] = 794
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][2]["PosY"] = 839
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][3]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][3]["PosX"] = 670
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][3]["PosY"] = 763
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][4]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][4]["PosX"] = 511
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][4]["PosY"] = 730
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][5]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][5]["PosX"] = 564
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][5]["PosY"] = 601
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][6]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][6]["PosX"] = 322
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][6]["PosY"] = 455
	
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][7]={}
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][7]["PosX"] = 636
	tArabicNewYear2015_LuckyBeast_NpcPosition[17093]["Pos"][7]["PosY"] = 480
	
--移动NPC到集中营
local tArabicNewYear2015_LuckyBeast_NpcFocus = {}
	tArabicNewYear2015_LuckyBeast_NpcFocus["MapId"] = 5000
	tArabicNewYear2015_LuckyBeast_NpcFocus["PosX"] = 50
	tArabicNewYear2015_LuckyBeast_NpcFocus["PosY"] = 50
	tArabicNewYear2015_LuckyBeast_NpcFocus["NpcIdMin"] = 17089
	tArabicNewYear2015_LuckyBeast_NpcFocus["NpcIdMax"] = 17093
--LOG记录
local tArabicNewYear2015_LuckyBeast_Log = {}
	tArabicNewYear2015_LuckyBeast_Log["PackageId"] = 3319
	tArabicNewYear2015_LuckyBeast_Log["PackageLog"] = 12000097
	tArabicNewYear2015_LuckyBeast_Log["Phase_Gift1"] = "0,0,0,0,12000097,3,0,1" 
	tArabicNewYear2015_LuckyBeast_Log["Phase_Gift2"] = "0,0,0,0,12000097,3,0,2" 
	tArabicNewYear2015_LuckyBeast_Log["Phase_FirstExp"] = "0,0,0,0,12000097,2,4[5],60[24]"
	tArabicNewYear2015_LuckyBeast_Log["Phase_FirstCul"] = "0,0,0,0,12000097,2,6[5],50[24]"
	
--------------------------------------------------------------------财神-------------------------------------------------------------------------

--财神领取奖励
function ArabicNewYear2015_LuckyBeast_GetReward(nNpcId)
	--是否在活动期间
	if not Sys_ChkFullTime(tArabicNewYear2015_LuckyBeast_Activity["Now_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tArabicNewYear2015_LuckyBeast_Limit["Level"],tArabicNewYear2015_LuckyBeast_Limit["Incarnation"]) then
	
		--等级不足或未转世
		LinkNpcGossipFunc_New(nNpcId,"100-3")
		return
	end
	
	--判断是否达到了完成的条件
	local nEvent = tArabicNewYear2015_LuckyBeast_Stc["EventType"]["Finish"] 
	local nType  = tArabicNewYear2015_LuckyBeast_Stc["DataType"]["Finish"] 
	if  not Task_StcInterval(nEvent,nType,1,4) then
		if not Task_ChkStcValue(nEvent,nType,"==",0) then
			LinkNpcGossipFunc_New(nNpcId,"100-4")
			return
		end 
	end
	
	--判断其他幸运兽
	for k,v in ipairs(tArabicNewYear2015_LuckyBeast_Stc["EventType"]) do
		for g,h in ipairs(tArabicNewYear2015_LuckyBeast_Stc["DataType"]) do
			if not Task_StcInterval(v,h,1,4) then
			
				if  Task_ChkStcValue(v,h,"==",0) then
				
					LinkNpcGossipFunc_New(nNpcId,"100-6")
					return
				end 
			else
			
				LinkNpcGossipFunc_New(nNpcId,"100-6")
				return
			end
			
		end
	end
	
	--检测背包空间 
	if not User_CheckLeftSpace(tArabicNewYear2015_LuckyBeast_Bag["Limit"]) then 
	
		--背包满
		LinkNpcGossipFunc_New(nNpcId,"100-5")
		return
	end
	
	--满足所有条件
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	--节日礼包
	FestivalGeneralPackage_GetGift(tArabicNewYear2015_LuckyBeast_Log["PackageId"],tArabicNewYear2015_LuckyBeast_Log["PackageLog"])
	Sys_SaveActionFestivalLog(tArabicNewYear2015_LuckyBeast_Log["Phase_Gift1"])
	
	LinkNpcGossipFunc_New(nNpcId,"100-1")
end

----拜访
function ArabicNewYear2015_LuckyBeast_GetTask(nNpcId,nIndex)

	--是否在活动期间
	if not Sys_ChkFullTime(tArabicNewYear2015_LuckyBeast_Activity["Now_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tArabicNewYear2015_LuckyBeast_Limit["Level"],tArabicNewYear2015_LuckyBeast_Limit["Incarnation"]) then
	
		--等级不足或未转世
		LinkNpcGossipFunc_New(nNpcId,"100-1")
		return
	end
	
	--判断是否达到了完成的条件
	local nEvent = tArabicNewYear2015_LuckyBeast_Stc["EventType"]["Finish"] 
	local nType  = tArabicNewYear2015_LuckyBeast_Stc["DataType"]["Finish"] 
	if  not Task_StcInterval(nEvent,nType,1,4) then
		if not Task_ChkStcValue(nEvent,nType,"==",0) then
			LinkNpcGossipFunc_New(nNpcId,"100-2")
			return
		end 
	end
	
	--超过1天了，或者还没完成任务
	--判断当天是否找过NPC
	local nEvent = tArabicNewYear2015_LuckyBeast_Stc["EventType"][nIndex]
	local nType = tArabicNewYear2015_LuckyBeast_Stc["DataType"][nIndex]
	if  not Task_StcInterval(nEvent,nType,1,4) then
		if not Task_ChkStcValue(nEvent,nType,"==",0) then
			LinkNpcGossipFunc_New(nNpcId,"100-3")
			return
		end 
	end
	
	--满足所有条件
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	local nEvent = tArabicNewYear2015_LuckyBeast_Stc["EventType"]["End"]
	local nType = tArabicNewYear2015_LuckyBeast_Stc["DataType"]["End"]
	
	if  Task_StcInterval(nEvent,nType,1,4) or  Task_ChkStcValue(nEvent,nType,"==",0) then
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		Sys_SaveActionFestivalLog(tArabicNewYear2015_LuckyBeast_Log["Phase_Gift2"])
	end
	
	--判断是否第一个拜访
	if Get_SysDynaGlobalData(tArabicNewYear2015_LuckyBeast_Rank["RankId"],nIndex-1) == 0 then
	
		Sys_SetSynaGlobalData(tArabicNewYear2015_LuckyBeast_Rank["RankId"],nIndex-1,Get_UserId())
		
		local nLevel = Get_UserLevel()
		
		--小于140级给	60分钟经验1天祝福
		if nLevel < tArabicNewYear2015_LuckyBeast_Limit["LevelMax"] then
			
			--60分钟经验1小时祝福
			User_AddBless(tArabicNewYear2015_LuckyBeast_Reward["Blessing"])
			User_AddExpTime(tArabicNewYear2015_LuckyBeast_Reward["ExpReward"])
			
			Sys_SaveActionFestivalLog(tArabicNewYear2015_LuckyBeast_Log["Phase_FirstExp"])
		else
		
			--大于140级 50点修行值 经验1小时祝福
			User_AddBless(tArabicNewYear2015_LuckyBeast_Reward["Blessing"])
			User_AddCultivation(tArabicNewYear2015_LuckyBeast_Reward["CulReward"])
			
			Sys_SaveActionFestivalLog(tArabicNewYear2015_LuckyBeast_Log["Phase_FirstCul"])
			
		end
		LinkNpcGossipFunc_New(nNpcId,"100-4")
	
	else	
		LinkNpcGossipFunc_New(nNpcId,"100-5")
	end
	
	
end

--移动NPC出生
function ArabicNewYear2015_LuckyBeast_BornTime()
	if  Sys_ChkFullTime(tArabicNewYear2015_LuckyBeast_Activity["Now_Time"]) then
		
		--刷出所有NPC并给予随机位置
		local nIndex = math.random(1,7)
		for k,v in pairs(tArabicNewYear2015_LuckyBeast_NpcPosition)do
			local nNpcId = k
			local nMapId = v["MapId"]
			local nPosX  =tArabicNewYear2015_LuckyBeast_NpcPosition[k]["Pos"][nIndex]["PosX"]
			local nPosY  =tArabicNewYear2015_LuckyBeast_NpcPosition[k]["Pos"][nIndex]["PosY"]
			Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
		end
		
	end
end

--移走NPC
function ArabicNewYear2015_LuckyBeast_MoveTime()
	if  Sys_ChkFullTime(tArabicNewYear2015_LuckyBeast_Activity["Now_Time"]) then
		for i = tArabicNewYear2015_LuckyBeast_NpcFocus["NpcIdMin"] ,tArabicNewYear2015_LuckyBeast_NpcFocus["NpcIdMax"]  do
		
			local nNpcId = i
			local nMapId = tArabicNewYear2015_LuckyBeast_NpcFocus["MapId"]
			local nPosX  = tArabicNewYear2015_LuckyBeast_NpcFocus["PosX"]
			local nPosY  = tArabicNewYear2015_LuckyBeast_NpcFocus["PosY"]
			Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
		end
	end
end

--每天零点清空排名
function ArabicNewYear2015_LuckyBeast_ClearRankTime()
	Sys_ResetAllSynaGlobalData(tArabicNewYear2015_LuckyBeast_Rank["RankId"])
end
-----------------------------------------------------------------------------NPC模板-------------------------------------------------------------
-------------------------------------------------------------------财神--------------------------------------------------------------------------
tNpcFace[3173] = 6
tNpcFace[3174] = 1759
tNpcFace[3175] = 1760
tNpcFace[3176] = 1761
tNpcFace[3177] = 1762
tNpcFace[3178] = 1763

tNpcGossip[17088] = tNpcGossip[17088] or DefaultNpc:new{}
tNpcGossip[17088]["OptionHidden"] = 1

--活动前对白
tNpcGossip[17088]["Text1-1"] = {111,112,113}
tNpcGossip[17088]["Text111"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text111"]
tNpcGossip[17088]["Text112"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text112"]
tNpcGossip[17088]["Text113"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text113"]
tNpcGossip[17088]["Option11"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Option1"]
tNpcGossip[17088]["tOption1-1"] = {11}
tNpcGossip[17088]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015_LuckyBeast_Activity["BeforTime"])
end

--活动中对白
tNpcGossip[17088]["Text1-2"] = {211,212,213,214}
tNpcGossip[17088]["Text211"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text115"]
tNpcGossip[17088]["Text212"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text116"]
tNpcGossip[17088]["Text213"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text117"]
tNpcGossip[17088]["Text214"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text119"]

tNpcGossip[17088]["Option21"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Option3"]
tNpcGossip[17088]["Option22"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Option4"]
tNpcGossip[17088]["Option23"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Option5"]


tNpcGossip[17088]["tOption1-2"] = {21,22,23}
tNpcGossip[17088]["OptionFunc21"]="ArabicNewYear2015_LuckyBeast_GetReward</N>17088</N>1"
tNpcGossip[17088]["OptionFunc22"]="LinkNpcGossipFunc_New</N>17088</S>100-2"


tNpcGossip[17088]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015_LuckyBeast_Activity["Now_Time"])
end

--活动后对白
tNpcGossip[17088]["Text1-3"] = {311}
tNpcGossip[17088]["Text311"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text114"]
tNpcGossip[17088]["Option31"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Option2"]
tNpcGossip[17088]["tOption1-3"] = {31}

--领取成功  Option21
tNpcGossip[17088]["Text100-1"] = {411,412}
tNpcGossip[17088]["Text411"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text120"]
tNpcGossip[17088]["Text412"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text121"]
tNpcGossip[17088]["Option41"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Option6"]
tNpcGossip[17088]["tOption100-1"] = {41}

--怎么玩你的新花样？Option22
tNpcGossip[17088]["Text100-2"] = {511,512,513,514}
tNpcGossip[17088]["Text511"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text122"]
tNpcGossip[17088]["Text512"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text123"]
tNpcGossip[17088]["Text513"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text124"]
tNpcGossip[17088]["Text514"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text125"]
tNpcGossip[17088]["Option51"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Option7"]
tNpcGossip[17088]["tOption100-2"] = {51}

--等级不足
tNpcGossip[17088]["Text100-3"] = {611,612}
tNpcGossip[17088]["Text611"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text126"]
tNpcGossip[17088]["Text612"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text127"]
tNpcGossip[17088]["Option61"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Option8"]
tNpcGossip[17088]["tOption100-3"] = {61}

--今日已领取Option21
tNpcGossip[17088]["Text100-4"] = {711,712}
tNpcGossip[17088]["Text711"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text128"]
tNpcGossip[17088]["Text712"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text129"]
tNpcGossip[17088]["Option71"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Option9"]
tNpcGossip[17088]["tOption100-4"] = {71}

--背包空间不足 Option21
tNpcGossip[17088]["Text100-5"] = {811}
tNpcGossip[17088]["Text811"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text130"]
tNpcGossip[17088]["Option81"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Option10"]
tNpcGossip[17088]["tOption100-5"] = {81}

--没有全部拜访完毕，或者拜访了部分，在或者拜访的时间超过1天了 Option21
tNpcGossip[17088]["Text100-6"] = {911}
tNpcGossip[17088]["Text911"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Text131"]
tNpcGossip[17088]["Option91"] = tArabicNewYear2015_LuckyBeast_Text[17088]["Option11"]
tNpcGossip[17088]["tOption100-6"] = {91}
-------------------------------------------------------------------金狐-------------------------------------------------------------------------
--tNpcFace[3174] = 0
tNpcGossip[17089] = tNpcGossip[17089] or DefaultNpc:new{}
tNpcGossip[17089]["OptionHidden"] = 1

--活动期间
--活动中对白
tNpcGossip[17089]["Text1-1"] = {111}
tNpcGossip[17089]["Text111"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Text126"]

tNpcGossip[17089]["Option11"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Option12"]
tNpcGossip[17089]["Option12"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Option13"]

tNpcGossip[17089]["tOption1-1"] = {11,12}
tNpcGossip[17089]["OptionFunc11"]="ArabicNewYear2015_LuckyBeast_GetTask</N>17089</N>1"


tNpcGossip[17089]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015_LuckyBeast_Activity["Now_Time"])
end

--不在活动期间
tNpcGossip[17089]["Text1-2"] = {211}
tNpcGossip[17089]["Text211"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Text127"]
tNpcGossip[17089]["Option21"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Option14"]
tNpcGossip[17089]["tOption1-2"] = {21}

--等级不足
tNpcGossip[17089]["Text100-1"] = {311,312}
tNpcGossip[17089]["Text311"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Text128"]
tNpcGossip[17089]["Text312"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Text129"]
tNpcGossip[17089]["Option31"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Option15"]
tNpcGossip[17089]["tOption100-1"] = {31}

--已经完成过任务了
tNpcGossip[17089]["Text100-2"] = {411}
tNpcGossip[17089]["Text411"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Text130"]
tNpcGossip[17089]["Option41"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Option16"]
tNpcGossip[17089]["tOption100-2"] = {41}

--当天已经拜访过
tNpcGossip[17089]["Text100-3"] = {511}
tNpcGossip[17089]["Text511"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Text131"]
tNpcGossip[17089]["Option51"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Option17"]
tNpcGossip[17089]["tOption100-3"] = {51}

--小于140级给 60分钟经验1天祝福
tNpcGossip[17089]["Text100-4"] = {611}
tNpcGossip[17089]["Text611"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Text132"]
tNpcGossip[17089]["Option61"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Option18"]
tNpcGossip[17089]["tOption100-4"] = {61}

--不是第一个拜访给成功对白提示
tNpcGossip[17089]["Text100-5"] = {711}
tNpcGossip[17089]["Text711"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Text133"]
tNpcGossip[17089]["Option71"] = tArabicNewYear2015_LuckyBeast_Text[17089]["Option19"]
tNpcGossip[17089]["tOption100-5"] = {71}
----------------------------------------------------------------银兔-----------------------------------------------------------------------------
tNpcGossip[17090] = tNpcGossip[17090] or DefaultNpc:new{}
tNpcGossip[17090]["OptionHidden"] = 1

--活动期间
--活动中对白
tNpcGossip[17090]["Text1-1"] = {111}
tNpcGossip[17090]["Text111"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Text134"]

tNpcGossip[17090]["Option11"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Option20"]
tNpcGossip[17090]["Option12"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Option21"]

tNpcGossip[17090]["tOption1-1"] = {11,12}
tNpcGossip[17090]["OptionFunc11"]="ArabicNewYear2015_LuckyBeast_GetTask</N>17090</N>2"


tNpcGossip[17090]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015_LuckyBeast_Activity["Now_Time"])
end

--不在活动期间
tNpcGossip[17090]["Text1-2"] = {211}
tNpcGossip[17090]["Text211"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Text135"]
tNpcGossip[17090]["Option21"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Option22"]
tNpcGossip[17090]["tOption1-2"] = {21}

--等级不足
tNpcGossip[17090]["Text100-1"] = {311,312}
tNpcGossip[17090]["Text311"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Text136"]
tNpcGossip[17090]["Text312"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Text137"]
tNpcGossip[17090]["Option31"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Option23"]
tNpcGossip[17090]["tOption100-1"] = {31}

--已经完成过任务了
tNpcGossip[17090]["Text100-2"] = {411}
tNpcGossip[17090]["Text411"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Text138"]
tNpcGossip[17090]["Option41"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Option24"]
tNpcGossip[17090]["tOption100-2"] = {41}

--当天已经拜访过
tNpcGossip[17090]["Text100-3"] = {511}
tNpcGossip[17090]["Text511"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Text139"]
tNpcGossip[17090]["Option51"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Option25"]
tNpcGossip[17090]["tOption100-3"] = {51}

--小于140级给 60分钟经验1天祝福
tNpcGossip[17090]["Text100-4"] = {611}
tNpcGossip[17090]["Text611"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Text140"]
tNpcGossip[17090]["Option61"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Option26"]
tNpcGossip[17090]["tOption100-4"] = {61}

--不是第一个拜访给成功对白提示
tNpcGossip[17090]["Text100-5"] = {711}
tNpcGossip[17090]["Text711"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Text141"]
tNpcGossip[17090]["Option71"] = tArabicNewYear2015_LuckyBeast_Text[17090]["Option27"]
tNpcGossip[17090]["tOption100-5"] = {71}
---------------------------------------------------------------财鹿------------------------------------------------------------------------------
tNpcGossip[17091] = tNpcGossip[17091] or DefaultNpc:new{}
tNpcGossip[17091]["OptionHidden"] = 1

--活动期间
--活动中对白
tNpcGossip[17091]["Text1-1"] = {111}
tNpcGossip[17091]["Text111"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Text142"]

tNpcGossip[17091]["Option11"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Option28"]
tNpcGossip[17091]["Option12"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Option29"]

tNpcGossip[17091]["tOption1-1"] = {11,12}
tNpcGossip[17091]["OptionFunc11"]="ArabicNewYear2015_LuckyBeast_GetTask</N>17091</N>3"


tNpcGossip[17091]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015_LuckyBeast_Activity["Now_Time"])
end

--不在活动期间
tNpcGossip[17091]["Text1-2"] = {211}
tNpcGossip[17091]["Text211"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Text143"]
tNpcGossip[17091]["Option21"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Option30"]
tNpcGossip[17091]["tOption1-2"] = {21}

--等级不足
tNpcGossip[17091]["Text100-1"] = {311,312}
tNpcGossip[17091]["Text311"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Text144"]
tNpcGossip[17091]["Text312"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Text145"]
tNpcGossip[17091]["Option31"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Option31"]
tNpcGossip[17091]["tOption100-1"] = {31}

--已经完成过任务了
tNpcGossip[17091]["Text100-2"] = {411}
tNpcGossip[17091]["Text411"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Text146"]
tNpcGossip[17091]["Option41"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Option32"]
tNpcGossip[17091]["tOption100-2"] = {41}

--当天已经拜访过
tNpcGossip[17091]["Text100-3"] = {511}
tNpcGossip[17091]["Text511"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Text147"]
tNpcGossip[17091]["Option51"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Option33"]
tNpcGossip[17091]["tOption100-3"] = {51}

--小于140级给 60分钟经验1天祝福
tNpcGossip[17091]["Text100-4"] = {611}
tNpcGossip[17091]["Text611"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Text148"]
tNpcGossip[17091]["Option61"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Option34"]
tNpcGossip[17091]["tOption100-4"] = {61}

--不是第一个拜访给成功对白提示
tNpcGossip[17091]["Text100-5"] = {711}
tNpcGossip[17091]["Text711"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Text149"]
tNpcGossip[17091]["Option71"] = tArabicNewYear2015_LuckyBeast_Text[17091]["Option35"]
tNpcGossip[17091]["tOption100-5"] = {71}

--------------------------------------------------------------宝牛------------------------------------------------------------------------------
tNpcGossip[17092] = tNpcGossip[17092] or DefaultNpc:new{}
tNpcGossip[17092]["OptionHidden"] = 1

--活动期间
--活动中对白
tNpcGossip[17092]["Text1-1"] = {111}
tNpcGossip[17092]["Text111"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Text150"]

tNpcGossip[17092]["Option11"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Option36"]
tNpcGossip[17092]["Option12"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Option37"]

tNpcGossip[17092]["tOption1-1"] = {11,12}
tNpcGossip[17092]["OptionFunc11"]="ArabicNewYear2015_LuckyBeast_GetTask</N>17092</N>4"


tNpcGossip[17092]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015_LuckyBeast_Activity["Now_Time"])
end

--不在活动期间
tNpcGossip[17092]["Text1-2"] = {211}
tNpcGossip[17092]["Text211"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Text151"]
tNpcGossip[17092]["Option21"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Option38"]
tNpcGossip[17092]["tOption1-2"] = {21}

--等级不足
tNpcGossip[17092]["Text100-1"] = {311,312}
tNpcGossip[17092]["Text311"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Text152"]
tNpcGossip[17092]["Text312"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Text153"]
tNpcGossip[17092]["Option31"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Option39"]
tNpcGossip[17092]["tOption100-1"] = {31}

--已经完成过任务了
tNpcGossip[17092]["Text100-2"] = {411}
tNpcGossip[17092]["Text411"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Text154"]
tNpcGossip[17092]["Option41"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Option40"]
tNpcGossip[17092]["tOption100-2"] = {41}

--当天已经拜访过
tNpcGossip[17092]["Text100-3"] = {511}
tNpcGossip[17092]["Text511"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Text155"]
tNpcGossip[17092]["Option51"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Option41"]
tNpcGossip[17092]["tOption100-3"] = {51}

--小于140级给 60分钟经验1天祝福
tNpcGossip[17092]["Text100-4"] = {611}
tNpcGossip[17092]["Text611"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Text156"]
tNpcGossip[17092]["Option61"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Option42"]
tNpcGossip[17092]["tOption100-4"] = {61}

--不是第一个拜访给成功对白提示
tNpcGossip[17092]["Text100-5"] = {711}
tNpcGossip[17092]["Text711"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Text157"]
tNpcGossip[17092]["Option71"] = tArabicNewYear2015_LuckyBeast_Text[17092]["Option43"]
tNpcGossip[17092]["tOption100-5"] = {71}
--------------------------------------------------------------福鱼-------------------------------------------------------------------------------
tNpcGossip[17093] = tNpcGossip[17093] or DefaultNpc:new{}
tNpcGossip[17093]["OptionHidden"] = 1

--活动期间
--活动中对白
tNpcGossip[17093]["Text1-1"] = {111}
tNpcGossip[17093]["Text111"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Text158"]

tNpcGossip[17093]["Option11"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Option44"]
tNpcGossip[17093]["Option12"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Option45"]

tNpcGossip[17093]["tOption1-1"] = {11,12}
tNpcGossip[17093]["OptionFunc11"]="ArabicNewYear2015_LuckyBeast_GetTask</N>17093</N>5"


tNpcGossip[17093]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tArabicNewYear2015_LuckyBeast_Activity["Now_Time"])
end

--不在活动期间
tNpcGossip[17093]["Text1-2"] = {211}
tNpcGossip[17093]["Text211"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Text159"]
tNpcGossip[17093]["Option21"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Option46"]
tNpcGossip[17093]["tOption1-2"] = {21}

--等级不足
tNpcGossip[17093]["Text100-1"] = {311,312}
tNpcGossip[17093]["Text311"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Text160"]
tNpcGossip[17093]["Text312"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Text161"]
tNpcGossip[17093]["Option31"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Option47"]
tNpcGossip[17093]["tOption100-1"] = {31}

--已经完成过任务了
tNpcGossip[17093]["Text100-2"] = {411}
tNpcGossip[17093]["Text411"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Text162"]
tNpcGossip[17093]["Option41"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Option48"]
tNpcGossip[17093]["tOption100-2"] = {41}

--当天已经拜访过
tNpcGossip[17093]["Text100-3"] = {511}
tNpcGossip[17093]["Text511"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Text163"]
tNpcGossip[17093]["Option51"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Option49"]
tNpcGossip[17093]["tOption100-3"] = {51}

--小于140级给 60分钟经验1天祝福
tNpcGossip[17093]["Text100-4"] = {611}
tNpcGossip[17093]["Text611"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Text164"]
tNpcGossip[17093]["Option61"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Option50"]
tNpcGossip[17093]["tOption100-4"] = {61}

--不是第一个拜访给成功对白提示
tNpcGossip[17093]["Text100-5"] = {711}
tNpcGossip[17093]["Text711"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Text165"]
tNpcGossip[17093]["Option71"] = tArabicNewYear2015_LuckyBeast_Text[17093]["Option51"]
tNpcGossip[17093]["tOption100-5"] = {71}

-- -- 每天 8、13、18、23 从5000地图 移出30分钟后 移走
-- tOntimerMin_HM[0800] = tOntimerMin_HM[0800] or {}
-- table.insert(tOntimerMin_HM[0800],ArabicNewYear2015_LuckyBeast_BornTime)
-- tOntimerMin_HM[1300] = tOntimerMin_HM[1300] or {}
-- table.insert(tOntimerMin_HM[1300],ArabicNewYear2015_LuckyBeast_BornTime)
-- tOntimerMin_HM[1800] = tOntimerMin_HM[1800] or {}
-- table.insert(tOntimerMin_HM[1800],ArabicNewYear2015_LuckyBeast_BornTime)
-- tOntimerMin_HM[2300] = tOntimerMin_HM[2300] or {}
-- table.insert(tOntimerMin_HM[2300],ArabicNewYear2015_LuckyBeast_BornTime)

-- -- 移走
-- tOntimerMin_HM[0831] = tOntimerMin_HM[0831] or {}
-- table.insert(tOntimerMin_HM[0831],ArabicNewYear2015_LuckyBeast_MoveTime)
-- tOntimerMin_HM[1331] = tOntimerMin_HM[1331] or {}
-- table.insert(tOntimerMin_HM[1331],ArabicNewYear2015_LuckyBeast_MoveTime)
-- tOntimerMin_HM[1831] = tOntimerMin_HM[1831] or {}
-- table.insert(tOntimerMin_HM[1831],ArabicNewYear2015_LuckyBeast_MoveTime)
-- tOntimerMin_HM[2331] = tOntimerMin_HM[2331] or {}
-- table.insert(tOntimerMin_HM[2331],ArabicNewYear2015_LuckyBeast_MoveTime)

-- -- 每天零点清空排名
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],ArabicNewYear2015_LuckyBeast_ClearRankTime)


