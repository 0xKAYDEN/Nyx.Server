------------------------------------------------------------------------------------
--Name:			191122[简体征服][活动脚本]全球圣诞元旦活动--引导NPC制作
--Creator:		郑飞
--Created:		2019/11/22
------------------------------------------------------------------------------------
-- 任务需求：

-- 命名规范：
-- GuidePlayers_

-- 41643 = V100\活动脚本\圣诞节\2019\[征服][活动脚本]全球圣诞元旦活动--引导NPC制作.lua
-- 41643 = V100\ActiveScript\Christmas\2019\[Conquer][ActiveScript]GuidePlayers.lua

--stc(211,11) 记录任务面板的完成情况
----------------------------------表数据配置部分-------------------------------------
local tGuidePlayers_Data = {}
	tGuidePlayers_Data["ActivityTime"] = {}
	--活动时间
	tGuidePlayers_Data["ActivityTime"][1] = tActivityTime["GlobalChristmas"]["ActivityTime"]
	-- tGuidePlayers_Data["ActivityTime"][2] = tActivityTime["GuidePlayers"]["ActivityTime"]
	
	
	--网页链接
	tGuidePlayers_Data["Link"] = "https://co.99.com/guide/event/2019/xmas/client480"

	
	--等级限制
	tGuidePlayers_Data["nLevel"] = 80
	tGuidePlayers_Data["nMetempsychosis"] = 0
	
	--地图id
	tGuidePlayers_Data["MapId"] = {}
	--主会场
	tGuidePlayers_Data["MapId"][1] = 10601
	--本服会场
	tGuidePlayers_Data["MapId"][2] = 10735
	--分会场一
	tGuidePlayers_Data["MapId"][3] = 10736
	--分会场二
	tGuidePlayers_Data["MapId"][4] = 10737
	--双龙城 普通服
	tGuidePlayers_Data["MapId"][5] = 1002
	--激情服
	tGuidePlayers_Data["MapId"][6] = 1036
	
	--地图id
	tGuidePlayers_Data["ConfigMap"] = {}
	--主会场
	tGuidePlayers_Data["ConfigMap"][1] = 116
	--分会场一
	tGuidePlayers_Data["ConfigMap"][2] = 154
	--分会场二
	tGuidePlayers_Data["ConfigMap"][3] = 155
	
	tGuidePlayers_Data["Position"] = {}
	--雪人位置
	tGuidePlayers_Data["Position"]["Snow"] = {}
	tGuidePlayers_Data["Position"]["Snow"]["PosX"] = 79
	tGuidePlayers_Data["Position"]["Snow"]["PosY"] = 116
	--返回双龙城坐标 普通服
	tGuidePlayers_Data["Position"]["CommonDragon"] = {}
	tGuidePlayers_Data["Position"]["CommonDragon"]["PosX"] = 373
	tGuidePlayers_Data["Position"]["CommonDragon"]["PosY"] = 440
	--返回双龙城坐标 激情服
	tGuidePlayers_Data["Position"]["PassionDragon"] = {}
	tGuidePlayers_Data["Position"]["PassionDragon"]["PosX"] = 267
	tGuidePlayers_Data["Position"]["PassionDragon"]["PosY"] = 208
	--进入本服地图坐标
	tGuidePlayers_Data["Position"]["CommonMap"] = {}
	tGuidePlayers_Data["Position"]["CommonMap"]["PosX"] = 92
	tGuidePlayers_Data["Position"]["CommonMap"]["PosY"] = 100
	--跨服地图坐标
	tGuidePlayers_Data["Position"]["AcrossMap"] = {}
	tGuidePlayers_Data["Position"]["AcrossMap"]["PosX"] = 92
	tGuidePlayers_Data["Position"]["AcrossMap"]["PosY"] = 100
	
local tGuidePlayers_Taskid = {}
	--记录祈愿贺卡的完成情况
	tGuidePlayers_Taskid[1] = 35063
	--记录记录雪人大作战的完成情况
	tGuidePlayers_Taskid[2] = 35066
	--记录任务面板的完成情况
	tGuidePlayers_Taskid[3] = 35065
	--记录打雪仗活动的完成情况
	tGuidePlayers_Taskid[4] = 35062
	
local tGuidePlayers_Stc = {}
	--记录任务面板隔天情况
	tGuidePlayers_Stc[1] = {}
	tGuidePlayers_Stc[1]["EventType"] = 211
	tGuidePlayers_Stc[1]["DataType"] = 11
local tGuidePlayers_Log = {}
	tGuidePlayers_Log[1] = "0,0,0,0,12001739,8[1],0,0"
	tGuidePlayers_Log[2] = "0,0,0,0,12001739,8[2],0,0"

----------------------------------奖励配置---------------------------------------------
local tGuidePlayers_Reward = {}
	-- ===2019圣诞礼袜*3
	-- ===索引:tGuidePlayers_Reward[3600197]
	-- ===LogStep:8[3] 
	tGuidePlayers_Reward[3600197] = {}
	tGuidePlayers_Reward[3600197]["LogId"] = 12001739
	tGuidePlayers_Reward[3600197]["LogStep"] = "8[3]"
	tGuidePlayers_Reward[3600197]["RewardItem"] = {}
	tGuidePlayers_Reward[3600197]["RewardItem"][1] = {}
	tGuidePlayers_Reward[3600197]["RewardItem"][1]["Id"] = 3600197 -- 2019圣诞礼袜[3600197][属性:137][叠加:10000][金币:0], 【表格】2019圣诞礼袜
	tGuidePlayers_Reward[3600197]["RewardItem"][1]["Attr"] = "0 3" -- 2019圣诞礼袜*3
	tGuidePlayers_Reward[3600197]["RewardEffect"] = {}
	tGuidePlayers_Reward[3600197]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGuidePlayers_Reward[3600197]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
-- 获取掩码值
function GuidePlayers_GetStcValue(nIndex,nGuidePlayers_UserId)
	local nEvent = tGuidePlayers_Stc[nIndex]["EventType"]
	local nType = tGuidePlayers_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nGuidePlayers_UserId)
	return nData
end
--设置掩码值
function GuidePlayers_SetStcValue(nIndex,nData,nGuidePlayers_UserId)
	local nEvent = tGuidePlayers_Stc[nIndex]["EventType"]
	local nType = tGuidePlayers_Stc[nIndex]["DataType"]
	Task_SetStatistic(nEvent,nType,nData,1,nGuidePlayers_UserId)
	Task_SetStcTimestamp(nEvent,nType,0,nGuidePlayers_UserId)
end
-- stc 隔天重置
function GuidePlayers_ClearStcInterval(nIndex,nData,nGuidePlayers_UserId)
	local nEvent = tGuidePlayers_Stc[nIndex]["EventType"]
	local nType = tGuidePlayers_Stc[nIndex]["DataType"]
	if nData == nil then
		nData = 0
	end
	if Task_StcInterval(nEvent,nType,1,4,nGuidePlayers_UserId) then
		Task_SetStatistic(nEvent,nType,nData,1,nGuidePlayers_UserId)
		Task_SetStcTimestamp(nEvent,nType,0,nGuidePlayers_UserId)
	end
end

-- 打开内嵌网页
function GuidePlayers_OpenWebDialog(nNpcId)
	--判断活动时间
	if not Sys_ChkFullTime(tGuidePlayers_Data["ActivityTime"][1]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local sGuidePlayers_Link = tGuidePlayers_Data["Link"]
	User_SendWebDialog(sGuidePlayers_Link)
end

--进入本服地图
function GuidePlayers_EnterBenMap()
	
	local nGuidePlayers_UserId = Get_UserId()
	
	--打雪仗
	PlaySnowball_Goto(nGuidePlayers_UserId)
	--祈愿贺卡活动
	ChristmasCard2019_ResetInfo()
	--祈福弹幕
	DoubleEggPray_GotMulMap()
	DoubleEggPray_DDKuaFu()
	--雪人大作战
	MakeSnowman_EnterCrossMap()
	
	GuidePlayers_TaskClear(nGuidePlayers_UserId)
	
	local nGuidePlayers_MapId = tGuidePlayers_Data["MapId"][2]
	local nGuidePlayers_PosX = tGuidePlayers_Data["Position"]["CommonMap"]["PosX"]
	local nGuidePlayers_PosY = tGuidePlayers_Data["Position"]["CommonMap"]["PosY"]
	User_TalkChannel2005(tGuidePlayers_Text["SysTips"]["EnterMap"])
	Sys_SaveActionFestivalLog(tGuidePlayers_Log[2])
	User_UserRandBoundTrans(nGuidePlayers_MapId,nGuidePlayers_PosX,nGuidePlayers_PosY,5,5,1,nGuidePlayers_UserId)
	
end

--回到双龙城
function GuidePlayers_OutMap()
	
	local nGuidePlayers_UserId = Get_UserId()
	local nGuidePlayers_MapId = tGuidePlayers_Data["MapId"][5]
	local nGuidePlayers_PosX = tGuidePlayers_Data["Position"]["CommonDragon"]["PosX"]
	local nGuidePlayers_PosY = tGuidePlayers_Data["Position"]["CommonDragon"]["PosY"]
	if SpecialServer_ChkNoGiftServer() then
		nGuidePlayers_MapId = tGuidePlayers_Data["MapId"][6]
		nGuidePlayers_PosX = tGuidePlayers_Data["Position"]["PassionDragon"]["PosX"]
		nGuidePlayers_PosY = tGuidePlayers_Data["Position"]["PassionDragon"]["PosY"] 
	end
	
	User_UserRandBoundTrans(nGuidePlayers_MapId,nGuidePlayers_PosX,nGuidePlayers_PosY,5,5,1,nGuidePlayers_UserId)
end

-- 圣诞女神 本服传送
function GuidePlayers_GodTrans()

	local nGuidePlayers_UserId = Get_UserId()
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tGuidePlayers_Data["nLevel"],tGuidePlayers_Data["nMetempsychosis"],nGuidePlayers_UserId) then 
		LinkNpcGossipFunc_New(25661,"1-9")
		return
	end
	
	GuidePlayers_EnterBenMap()
	Sys_MsgBox(tGuidePlayers_Text["SysTips"]["ForGod"],"NpcPosition_PathFind</N>25686")
end

--进入跨服地图
function GuidePlayers_EnterMap(nGuidePlayers_Index)
	
	local nGuidePlayers_UserId = Get_UserId()
	
	--打雪仗
	PlaySnowball_Goto(nGuidePlayers_UserId)
	--祈愿贺卡活动
	ChristmasCard2019_ResetInfo()
	--祈福弹幕
	DoubleEggPray_GotMulMap()
	DoubleEggPray_DDKuaFu()
	--雪人大作战
	MakeSnowman_EnterCrossMap()
	
	local nGuidePlayers_ServerId = Get_FrontierServerID()
	local nGuidePlayers_ConfigMapFlag = tGuidePlayers_Data["ConfigMap"][nGuidePlayers_Index]
	
	GuidePlayers_TaskClear(nGuidePlayers_UserId)
	
	--进入跨国
	if Sys_EnterServer(998,12,nGuidePlayers_UserId,nGuidePlayers_ConfigMapFlag) then
	-- if Sys_EnterServer(nGuidePlayers_ServerId,12,nGuidePlayers_UserId,nGuidePlayers_ConfigMapFlag) then
	--if Sys_EnterServer(102,12,nGuidePlayers_UserId,nGuidePlayers_ConfigMapFlag) then
		-- 获得光效
		User_EffectAdd("self","angelwing",nGuidePlayers_UserId)
		-- 提示
		User_TalkChannel2005(tGuidePlayers_Text["SysTips"]["EnterMap"])
		Sys_SaveActionFestivalLog(tGuidePlayers_Log[1])
		-- SaveCustomLog(tGuidePlayers_Log[1])
		return true
	end
	
end

-- 离开跨服
function GuidePlayers_LeaveCross()
	local nGuidePlayers_NowUserId = Get_UserId()
	Sys_ExitOS(nGuidePlayers_NowUserId)
	
	User_TalkChannel2005(tGuidePlayers_Text["SysTips"]["GetOut"])
	
end

-- 切换跨服会场
function GuidePlayers_CrossChgMap(nGuidePlayers_Index)
	--万语绘平安
	DoubleEggPray_DDKuaFu()
	
	local nGuidePlayers_MapId = tGuidePlayers_Data["MapId"][nGuidePlayers_Index]
	local nGuidePlayers_PosX = tGuidePlayers_Data["Position"]["AcrossMap"]["PosX"]
	local nGuidePlayers_PosY = tGuidePlayers_Data["Position"]["AcrossMap"]["PosY"]
	User_TalkChannel2005(tGuidePlayers_Text["SysTips"]["EnterMap"])
	User_ChgMapCross(nGuidePlayers_MapId,nGuidePlayers_PosX,nGuidePlayers_PosY)
end

--上线自动接任务
function GuidePlayers_Login()
	local nGuidePlayers_TaskId = tGuidePlayers_Taskid[3]
	
	-- 判断时间
	if not Sys_ChkFullTime(tGuidePlayers_Data["ActivityTime"][1]) then
		if Task_ChkTaskDetail(nGuidePlayers_TaskId,0) then
			Task_DelTaskDetail(nGuidePlayers_TaskId)
		end
		
		return
	end
	
	--判断等级
	local nGuidePlayers_Level = tGuidePlayers_Data["nLevel"]
	local nGuidePlayers_Metempsychosis = tGuidePlayers_Data["nMetempsychosis"]
	
	local nGuidePlayers_UserId = Get_UserId()
	if not User_JudgeLevelAndMetempsychosis(nGuidePlayers_Level,nGuidePlayers_Metempsychosis,nGuidePlayers_UserId) then
		return
	end
	
	GuidePlayers_TaskClear(nGuidePlayers_UserId)
end

--掩码隔天清理
function GuidePlayers_TaskClear(nGuidePlayers_NowUserId)
	local nGuidePlayers_TaskId = tGuidePlayers_Taskid[3]
	local nGuidePlayers_UserId = nGuidePlayers_NowUserId or Get_UserId()
	local nGuidePlayer_Event = tGuidePlayers_Stc[1]["EventType"]
	local nGuidePlayer_Type = tGuidePlayers_Stc[1]["DataType"]
	if not Task_ChkTaskDetail(nGuidePlayers_TaskId,nGuidePlayers_UserId) then
		Task_AddTaskDetail(nGuidePlayers_TaskId,0,nGuidePlayers_UserId)
		GuidePlayers_SetStcValue(1,1)
	else
		if Task_StcInterval(nGuidePlayer_Event,nGuidePlayer_Type,1,4,nGuidePlayers_UserId) then
			Task_SetStatistic(nGuidePlayer_Event,nGuidePlayer_Type,1,1,nGuidePlayers_UserId)
			Task_SetStcTimestamp(nGuidePlayer_Event,nGuidePlayer_Type,0,nGuidePlayers_UserId)
			Task_SetTaskDetailCompleteFlag(nGuidePlayers_TaskId,0)
			Task_SetTaskDetailData1(nGuidePlayers_TaskId,0,nGuidePlayers_UserId)
			Task_SetTaskDetailData2(nGuidePlayers_TaskId,0,nGuidePlayers_UserId)
			Task_SetTaskDetailData3(nGuidePlayers_TaskId,0,nGuidePlayers_UserId)
			Task_SetTaskDetailData4(nGuidePlayers_TaskId,0,nGuidePlayers_UserId)
			Task_SetTaskDetailData5(nGuidePlayers_TaskId,0,nGuidePlayers_UserId)
			Task_SetTaskDetailData7(nGuidePlayers_TaskId,os.time())
		end
	end
end


--设置任务完成
function GuidePlayers_TaskComplete(nGuidePlayers_NowUserId)
	
	local nGuidePlayers_UserId = nGuidePlayers_NowUserId or Get_UserId()
	local nGuidePlayers_TaskId = tGuidePlayers_Taskid[3]
	local nGuidePlayers_Level = tGuidePlayers_Data["nLevel"]
	local nGuidePlayers_Metempsychosis = tGuidePlayers_Data["nMetempsychosis"]
	
	if not Task_ChkTaskDetail(nGuidePlayers_TaskId,nGuidePlayers_UserId) then
		if not User_JudgeLevelAndMetempsychosis(nGuidePlayers_Level,nGuidePlayers_Metempsychosis,nGuidePlayers_UserId) then
			return
		end
		Task_AddTaskDetail(nGuidePlayers_TaskId,0,nGuidePlayers_UserId)
	end
	
	if Task_ChkTaskDetailValue(nGuidePlayers_TaskId,"CompleteFlag",">=",1,nGuidePlayers_UserId) then
		return
	end
	
	local nGuidePlayers_Data1 = Get_TaskDetailData1(nGuidePlayers_TaskId,nGuidePlayers_UserId)
	if nGuidePlayers_Data1 == 1 then
		return
	end
	local nGuidePlayers_Data2 = Get_TaskDetailData2(nGuidePlayers_TaskId,nGuidePlayers_UserId)
	local nGuidePlayers_Data3 = Get_TaskDetailData3(nGuidePlayers_TaskId,nGuidePlayers_UserId)
	local nGuidePlayers_Data4 = Get_TaskDetailData4(nGuidePlayers_TaskId,nGuidePlayers_UserId)
	local nGuidePlayers_Data5 = Get_TaskDetailData5(nGuidePlayers_TaskId,nGuidePlayers_UserId)
	local nGuidePlayers_Data6 = Get_TaskDetailData6(nGuidePlayers_TaskId,nGuidePlayers_UserId)
	
	if (nGuidePlayers_Data2 == 1) and (nGuidePlayers_Data3 == 3) and (nGuidePlayers_Data4 == 1) and (nGuidePlayers_Data5 == 1) and (nGuidePlayers_Data6 == 1) then
		if Task_SetTaskDetailData1(nGuidePlayers_TaskId,1,nGuidePlayers_UserId) then
			RewardTemplate_UseItem(tGuidePlayers_Reward[3600197],nGuidePlayers_UserId,true)
		end
		Task_SetTaskDetailCompleteFlag(nGuidePlayers_TaskId,1,nGuidePlayers_UserId)
		
	end
	
end

-- 寻路
function GuidePlayers_Where(nNpcId)
	
	NpcPosition_PathFind(nNpcId)
	GuidePlayers_TaskComplete()
end

-- 寻路到雪人
function GuidePlayers_GotoSomeWhere()
	local nGuidePlayers_UserId = Get_UserId()
	local nGuidePlayers_MapId = Get_UserMapId(nGuidePlayers_UserId)
	local nGuidePlayers_PosX = tGuidePlayers_Data["Position"]["Snow"]["PosX"]
	local nGuidePlayers_PosY = tGuidePlayers_Data["Position"]["Snow"]["PosY"]
	
	--雪人大作战 不在本服开放
	if nGuidePlayers_MapId == tGuidePlayers_Data["MapId"][2] then
		Sys_MsgBox(tGuidePlayers_Text["SysTips"]["Snowman"],"GuidePlayers_SnowMan")
	else
		Sys_GotoSomeWhere(nGuidePlayers_PosX,nGuidePlayers_PosY,nGuidePlayers_MapId)
	end
	
end

-- 切换到任意跨国地图
function GuidePlayers_SnowMan()
	
	local nGuidePlayers_Num = math.random(1,3)
	GuidePlayers_EnterMap(nGuidePlayers_Num)
end

-- 对白生成
function GuidePlayers_Dialogue(nGuidePlayers_NpcId)
	
	local nGuidePlayers_UserId = Get_UserId()
	-- 1是简体，2是英文，3是西语，4是阿语
	local nGuidePlayers_Nation = User_ChkLanguage(nGuidePlayers_UserId)
	-- local nGuidePlayers_Nation = 1
	local nGuidePlayers_TaskId = tGuidePlayers_Taskid[3]
	local nGuidePlayers_Data2 = Get_TaskDetailData2(nGuidePlayers_TaskId,nGuidePlayers_UserId)
	local nGuidePlayers_Data3 = Get_TaskDetailData3(nGuidePlayers_TaskId,nGuidePlayers_UserId)
	local nGuidePlayers_Data4 = Get_TaskDetailData4(nGuidePlayers_TaskId,nGuidePlayers_UserId)
	local nGuidePlayers_Data5 = Get_TaskDetailData5(nGuidePlayers_TaskId,nGuidePlayers_UserId)
	local nGuidePlayers_Data6 = Get_TaskDetailData6(nGuidePlayers_TaskId,nGuidePlayers_UserId)
	
	if (nGuidePlayers_Nation < 1) or (nGuidePlayers_Nation > 4) then
		return
	end
	
	tNpcGossip[nGuidePlayers_NpcId]["Text111"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text111"]
	tNpcGossip[nGuidePlayers_NpcId]["Text112"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text112"]
	tNpcGossip[nGuidePlayers_NpcId]["Text113"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text113"]
	tNpcGossip[nGuidePlayers_NpcId]["Text114"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text114"]
	tNpcGossip[nGuidePlayers_NpcId]["Text115"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text115"]
	tNpcGossip[nGuidePlayers_NpcId]["Text116"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text116"]
	tNpcGossip[nGuidePlayers_NpcId]["Option111"] = string.format(tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Option111"],nGuidePlayers_Data2)
	tNpcGossip[nGuidePlayers_NpcId]["Option112"] = string.format(tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Option112"],nGuidePlayers_Data3)
	tNpcGossip[nGuidePlayers_NpcId]["Option113"] = string.format(tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Option113"],nGuidePlayers_Data4)
	tNpcGossip[nGuidePlayers_NpcId]["Option114"] = string.format(tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Option114"],nGuidePlayers_Data5)
	tNpcGossip[nGuidePlayers_NpcId]["Option115"] = string.format(tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Option115"],nGuidePlayers_Data6)
	tNpcGossip[nGuidePlayers_NpcId]["Option116"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Option116"]
	
	tNpcGossip[nGuidePlayers_NpcId]["Text121"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text121"]
	tNpcGossip[nGuidePlayers_NpcId]["Text122"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text122"]
	tNpcGossip[nGuidePlayers_NpcId]["Text123"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text123"]
	tNpcGossip[nGuidePlayers_NpcId]["Option121"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Option121"]
	tNpcGossip[nGuidePlayers_NpcId]["Text131"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text131"]
	tNpcGossip[nGuidePlayers_NpcId]["Text132"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text132"]
	tNpcGossip[nGuidePlayers_NpcId]["Text133"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text133"]
	tNpcGossip[nGuidePlayers_NpcId]["Option131"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Option131"]
	tNpcGossip[nGuidePlayers_NpcId]["Text141"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text141"]
	tNpcGossip[nGuidePlayers_NpcId]["Text142"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text142"]
	tNpcGossip[nGuidePlayers_NpcId]["Option141"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Option141"]
	tNpcGossip[nGuidePlayers_NpcId]["Text151"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text151"]
	tNpcGossip[nGuidePlayers_NpcId]["Text152"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text152"]
	tNpcGossip[nGuidePlayers_NpcId]["Option151"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Option151"]
	tNpcGossip[nGuidePlayers_NpcId]["Text161"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text161"]
	tNpcGossip[nGuidePlayers_NpcId]["Text162"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Text162"]
	tNpcGossip[nGuidePlayers_NpcId]["Option161"] = tGuidePlayers_Text[25662][nGuidePlayers_Nation]["Option161"]
	
end

-- 圣诞麋鹿 对白生成
function GuidePlayers_MiLuDialogue(nGuidePlayers_NpcId)
	
	local nGuidePlayers_UserId = Get_UserId()
	-- 1是简体，2是英文，3是西语，4是阿语
	local nGuidePlayers_Nation = User_ChkLanguage(nGuidePlayers_UserId)
	
	tNpcGossip[nGuidePlayers_NpcId]["Text111"] = tGuidePlayers_Text[25681][nGuidePlayers_Nation]["Text111"]
	tNpcGossip[nGuidePlayers_NpcId]["Text112"] = tGuidePlayers_Text[25681][nGuidePlayers_Nation]["Text112"]
	tNpcGossip[nGuidePlayers_NpcId]["Text113"] = tGuidePlayers_Text[25681][nGuidePlayers_Nation]["Text113"]
	tNpcGossip[nGuidePlayers_NpcId]["Option111"] = tGuidePlayers_Text[25681][nGuidePlayers_Nation]["Option111"]
	tNpcGossip[nGuidePlayers_NpcId]["Option112"] = tGuidePlayers_Text[25681][nGuidePlayers_Nation]["Option112"]
	tNpcGossip[nGuidePlayers_NpcId]["Option113"] = tGuidePlayers_Text[25681][nGuidePlayers_Nation]["Option113"]
	tNpcGossip[nGuidePlayers_NpcId]["Option114"] = tGuidePlayers_Text[25681][nGuidePlayers_Nation]["Option114"]
	tNpcGossip[nGuidePlayers_NpcId]["Option115"] = tGuidePlayers_Text[25681][nGuidePlayers_Nation]["Option115"]
	tNpcGossip[nGuidePlayers_NpcId]["Option116"] = tGuidePlayers_Text[25681][nGuidePlayers_Nation]["Option116"]
	
end
----------------------------------NPC部分---------------------------------------------
-- 圣诞麋鹿
tNpcFace[2213] = 2697
tNpcGossip[25660]= tNpcGossip[25660] or DefaultNpc:new{}
tNpcGossip[25660]["OptionHidden"] = 1
tNpcGossip[25660]["DialogueText"] = tGuidePlayers_Text[25660]
--活动前
tNpcGossip[25660]["Text1-1"] = {131,111,112,113,114}
tNpcGossip[25660]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tGuidePlayers_Data["ActivityTime"][1])
end
tNpcGossip[25660]["tOption1-1"] = {111}

--活动后
tNpcGossip[25660]["Text1-2"] = {131,121}
tNpcGossip[25660]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tGuidePlayers_Data["ActivityTime"][1])
end
tNpcGossip[25660]["tOption1-2"] = {121}

--活动中 等级达到
tNpcGossip[25660]["Text1-3"] = {131,132,133,134}
tNpcGossip[25660]["tOption1-3"] = {131,132}
tNpcGossip[25660]["ChkFunc1-3"]= function()
	local nGuidePlayers_UserId = Get_UserId()
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tGuidePlayers_Data["nLevel"],tGuidePlayers_Data["nMetempsychosis"],nGuidePlayers_UserId) then 
		return false
	end
	
	return true
end
tNpcGossip[25660]["OptionPoint131"] = "1-5"

--活动中 等级未达到
tNpcGossip[25660]["Text1-4"] = {131,141,142,143,144}
tNpcGossip[25660]["tOption1-4"] = {141}

tNpcGossip[25660]["Text1-5"] = {131,151,152}
tNpcGossip[25660]["tOption1-5"] = {151,152,153,154,155}
tNpcGossip[25660]["OptionFunc151"] = "GuidePlayers_EnterMap</N>1"
tNpcGossip[25660]["OptionFunc152"] = "GuidePlayers_EnterMap</N>2"
tNpcGossip[25660]["OptionFunc153"] = "GuidePlayers_EnterMap</N>3"
tNpcGossip[25660]["OptionFunc154"] = "GuidePlayers_EnterBenMap"


-- 圣诞女神 双龙城
tNpcFace[5711] = 260
tNpcGossip[25661]= tNpcGossip[25661] or DefaultNpc:new{}
tNpcGossip[25661]["OptionHidden"] = 1
tNpcGossip[25661]["DialogueText"] = tGuidePlayers_Text[25661]

--活动前
tNpcGossip[25661]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25661]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tGuidePlayers_Data["ActivityTime"][1])
end
tNpcGossip[25661]["tOption1-1"] = {111}

--活动后
tNpcGossip[25661]["Text1-2"] = {111,121}
tNpcGossip[25661]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tGuidePlayers_Data["ActivityTime"][1])
end
tNpcGossip[25661]["tOption1-2"] = {121}

--活动中
tNpcGossip[25661]["Text1-3"] = {111,131,132,133,134,135,136,137}
tNpcGossip[25661]["ChkFunc1-3"]= function()
	local nGuidePlayers_UserId = Get_UserId()
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tGuidePlayers_Data["nLevel"],tGuidePlayers_Data["nMetempsychosis"],nGuidePlayers_UserId) then 
		tNpcGossip[25661]["tOption1-3"] = {138}
	else
		tNpcGossip[25661]["tOption1-3"] = {131,132,133,134,135,136,137}
	end
	
	return true
end
tNpcGossip[25661]["tOption1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[25661]["OptionPoint131"]="1-4"
tNpcGossip[25661]["OptionPoint132"]="1-5"
tNpcGossip[25661]["OptionPoint133"]="1-6"
tNpcGossip[25661]["OptionPoint134"]="1-7"
tNpcGossip[25661]["OptionPoint135"]="1-8"
tNpcGossip[25661]["OptionFunc136"] = "GuidePlayers_OpenWebDialog</N>25661"

--接1、玩法一：祈愿贺卡
tNpcGossip[25661]["Text1-4"] = {111,141,142,143}
tNpcGossip[25661]["tOption1-4"] = {141}
tNpcGossip[25661]["OptionFunc141"] = "GuidePlayers_GodTrans"

--接2、玩法二：万语绘平安
tNpcGossip[25661]["Text1-5"] = {111,151,152,153}
tNpcGossip[25661]["tOption1-5"] = {151}
tNpcGossip[25661]["OptionFunc151"] = "GuidePlayers_GodTrans"

--接3、雪人大作战
tNpcGossip[25661]["Text1-6"] = {111,161,162}
tNpcGossip[25661]["tOption1-6"] = {161}
tNpcGossip[25661]["OptionFunc161"] = "GuidePlayers_GodTrans"

--接4、冰雪狂欢
tNpcGossip[25661]["Text1-7"] = {111,171,172}
tNpcGossip[25661]["tOption1-7"] = {171}
tNpcGossip[25661]["OptionFunc171"] = "GuidePlayers_GodTrans"

--接5、焰火盛会
tNpcGossip[25661]["Text1-8"] = {111,181,182}
tNpcGossip[25661]["tOption1-8"] = {181}
tNpcGossip[25661]["OptionFunc181"] = "GuidePlayers_GodTrans"

--等级不足
tNpcGossip[25661]["Text1-9"] = {111,191,192}
tNpcGossip[25661]["tOption1-9"] = {191}


-- 圣诞女神 主会场
tNpcFace[5712] = 3
tNpcGossip[25662]= tNpcGossip[25662] or DefaultNpc:new{}
tNpcGossip[25662]["OptionHidden"] = 1
tNpcGossip[25662]["DialogueText"] = tGuidePlayers_Text[25662]

--活动中
tNpcGossip[25662]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25662]["ChkFunc1-1"]= function()
	GuidePlayers_Dialogue(25662)
	if not Sys_ChkFullTime(tGuidePlayers_Data["ActivityTime"][1]) then 
		tNpcGossip[25662]["tOption1-1"] = {116}
	end
	return true
end
tNpcGossip[25662]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[25662]["OptionPoint111"]="1-2"
tNpcGossip[25662]["OptionPoint112"]="1-3"
tNpcGossip[25662]["OptionPoint113"]="1-4"
tNpcGossip[25662]["OptionPoint114"]="1-5"
tNpcGossip[25662]["OptionPoint115"]="1-6"
tNpcGossip[25662]["OptionFunc116"]="GuidePlayers_LeaveCross"

--接1、玩法一：祈愿贺卡
tNpcGossip[25662]["Text1-2"] = {111,121,122,123}
tNpcGossip[25662]["tOption1-2"] = {121}
tNpcGossip[25662]["OptionFunc121"] = "GuidePlayers_Where</N>25619"

--接2、玩法二：万语绘平安
tNpcGossip[25662]["Text1-3"] = {111,131,132,133}
tNpcGossip[25662]["tOption1-3"] = {131}
tNpcGossip[25662]["OptionFunc131"] = "GuidePlayers_Where</N>25693"

--接3、雪人大作战
tNpcGossip[25662]["Text1-4"] = {111,141,142}
tNpcGossip[25662]["tOption1-4"] = {141}
tNpcGossip[25662]["OptionFunc141"] = "GuidePlayers_GotoSomeWhere"

--接4、冰雪狂欢
tNpcGossip[25662]["Text1-5"] = {111,151,152}
tNpcGossip[25662]["tOption1-5"] = {151}
tNpcGossip[25662]["OptionFunc151"] = "GuidePlayers_Where</N>25570"

--接5、焰火盛会
tNpcGossip[25662]["Text1-6"] = {111,161,162}
tNpcGossip[25662]["tOption1-6"] = {161}
tNpcGossip[25662]["OptionFunc161"] = "GuidePlayers_Where</N>25507"

--圣诞女神 分会场一
tNpcGossip[25684]= tNpcGossip[25684] or DefaultNpc:new{}
tNpcGossip[25684]["OptionHidden"] = 1
tNpcGossip[25684]["DialogueText"] = tGuidePlayers_Text[25662]

tNpcGossip[25684]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25684]["ChkFunc1-1"]= function()
	GuidePlayers_Dialogue(25684)
	if not Sys_ChkFullTime(tGuidePlayers_Data["ActivityTime"][1]) then 
		tNpcGossip[25684]["tOption1-1"] = {116}
	end
	return true
end
tNpcGossip[25684]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[25684]["OptionPoint111"]="1-2"
tNpcGossip[25684]["OptionPoint112"]="1-3"
tNpcGossip[25684]["OptionPoint113"]="1-4"
tNpcGossip[25684]["OptionPoint114"]="1-5"
tNpcGossip[25684]["OptionPoint115"]="1-6"
tNpcGossip[25684]["OptionFunc116"]="GuidePlayers_LeaveCross"

tNpcGossip[25684]["Text1-2"] = {111,121,122,123}
tNpcGossip[25684]["tOption1-2"] = {121}
tNpcGossip[25684]["OptionFunc121"] = "GuidePlayers_Where</N>25736"

tNpcGossip[25684]["Text1-3"] = {111,131,132,133}
tNpcGossip[25684]["tOption1-3"] = {131}
tNpcGossip[25684]["OptionFunc131"] = "GuidePlayers_Where</N>25694"

tNpcGossip[25684]["Text1-4"] = {111,141,142}
tNpcGossip[25684]["tOption1-4"] = {141}
tNpcGossip[25684]["OptionFunc141"] = "GuidePlayers_GotoSomeWhere"

tNpcGossip[25684]["Text1-5"] = {111,151,152}
tNpcGossip[25684]["tOption1-5"] = {151}
tNpcGossip[25684]["OptionFunc151"] = "GuidePlayers_Where</N>25733"

tNpcGossip[25684]["Text1-6"] = {111,161,162}
tNpcGossip[25684]["tOption1-6"] = {161}
tNpcGossip[25684]["OptionFunc161"] = "GuidePlayers_Where</N>25739"

--圣诞女神 分会场二
tNpcGossip[25685]= tNpcGossip[25685] or DefaultNpc:new{}
tNpcGossip[25685]["OptionHidden"] = 1
tNpcGossip[25685]["DialogueText"] = tGuidePlayers_Text[25662]

tNpcGossip[25685]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25685]["ChkFunc1-1"]= function()
	GuidePlayers_Dialogue(25685)
	if not Sys_ChkFullTime(tGuidePlayers_Data["ActivityTime"][1]) then 
		tNpcGossip[25685]["tOption1-1"] = {116}
	end
	return true
end
tNpcGossip[25685]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[25685]["OptionPoint111"]="1-2"
tNpcGossip[25685]["OptionPoint112"]="1-3"
tNpcGossip[25685]["OptionPoint113"]="1-4"
tNpcGossip[25685]["OptionPoint114"]="1-5"
tNpcGossip[25685]["OptionPoint115"]="1-6"
tNpcGossip[25685]["OptionFunc116"]="GuidePlayers_LeaveCross"

tNpcGossip[25685]["Text1-2"] = {111,121,122,123}
tNpcGossip[25685]["tOption1-2"] = {121}
tNpcGossip[25685]["OptionFunc121"] = "GuidePlayers_Where</N>25737"

tNpcGossip[25685]["Text1-3"] = {111,131,132,133}
tNpcGossip[25685]["tOption1-3"] = {131}
tNpcGossip[25685]["OptionFunc131"] = "GuidePlayers_Where</N>25695"

tNpcGossip[25685]["Text1-4"] = {111,141,142}
tNpcGossip[25685]["tOption1-4"] = {141}
tNpcGossip[25685]["OptionFunc141"] = "GuidePlayers_GotoSomeWhere"

tNpcGossip[25685]["Text1-5"] = {111,151,152}
tNpcGossip[25685]["tOption1-5"] = {151}
tNpcGossip[25685]["OptionFunc151"] = "GuidePlayers_Where</N>25734"

tNpcGossip[25685]["Text1-6"] = {111,161,162}
tNpcGossip[25685]["tOption1-6"] = {161}
tNpcGossip[25685]["OptionFunc161"] = "GuidePlayers_Where</N>25740"

--圣诞女神 本服会场
tNpcGossip[25686]= tNpcGossip[25686] or DefaultNpc:new{}
tNpcGossip[25686]["OptionHidden"] = 1
tNpcGossip[25686]["DialogueText"] = tGuidePlayers_Text[25662]

tNpcGossip[25686]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[25686]["ChkFunc1-1"]= function()
	GuidePlayers_TaskClear()
	GuidePlayers_Dialogue(25686)
	if not Sys_ChkFullTime(tGuidePlayers_Data["ActivityTime"][1]) then 
		tNpcGossip[25686]["tOption1-1"] = {116}
	end
	return true
end
tNpcGossip[25686]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[25686]["OptionPoint111"]="1-2"
tNpcGossip[25686]["OptionPoint112"]="1-3"
tNpcGossip[25686]["OptionPoint113"]="1-4"
tNpcGossip[25686]["OptionPoint114"]="1-5"
tNpcGossip[25686]["OptionPoint115"]="1-6"
tNpcGossip[25686]["OptionFunc116"]="GuidePlayers_OutMap"

tNpcGossip[25686]["Text1-2"] = {111,121,122,123}
tNpcGossip[25686]["tOption1-2"] = {121}
tNpcGossip[25686]["OptionFunc121"] = "GuidePlayers_Where</N>25738"

tNpcGossip[25686]["Text1-3"] = {111,131,132,133}
tNpcGossip[25686]["tOption1-3"] = {131}
tNpcGossip[25686]["OptionFunc131"] = "GuidePlayers_Where</N>25572"

tNpcGossip[25686]["Text1-4"] = {111,141,142}
tNpcGossip[25686]["tOption1-4"] = {141}
tNpcGossip[25686]["OptionFunc141"] = "GuidePlayers_GotoSomeWhere"

tNpcGossip[25686]["Text1-5"] = {111,151,152}
tNpcGossip[25686]["tOption1-5"] = {151}
tNpcGossip[25686]["OptionFunc151"] = "GuidePlayers_Where</N>25735"

tNpcGossip[25686]["Text1-6"] = {111,161,162}
tNpcGossip[25686]["tOption1-6"] = {161}
tNpcGossip[25686]["OptionFunc161"] = "GuidePlayers_Where</N>25741"

-- 圣诞麋鹿 主会场
tNpcFace[5925] = 137
tNpcGossip[25681]= tNpcGossip[25681] or DefaultNpc:new{}
tNpcGossip[25681]["OptionHidden"] = 1
tNpcGossip[25681]["DialogueText"] = tGuidePlayers_Text[25681]
tNpcGossip[25681]["ChkFunc1-1"]= function()
	GuidePlayers_MiLuDialogue(25681)
	return true
end
tNpcGossip[25681]["Text1-1"] = {111,113}
tNpcGossip[25681]["tOption1-1"] = {112,113,116}
tNpcGossip[25681]["OptionFunc112"] = "GuidePlayers_CrossChgMap</N>3"
tNpcGossip[25681]["OptionFunc113"] = "GuidePlayers_CrossChgMap</N>4"
tNpcGossip[25681]["OptionFunc116"] = "GuidePlayers_LeaveCross"

-- 圣诞麋鹿 分会场一
tNpcGossip[25682]= tNpcGossip[25682] or DefaultNpc:new{}
tNpcGossip[25682]["OptionHidden"] = 1
tNpcGossip[25682]["DialogueText"] = tGuidePlayers_Text[25681]
tNpcGossip[25682]["ChkFunc1-1"]= function()
	GuidePlayers_MiLuDialogue(25682)
	return true
end
tNpcGossip[25682]["Text1-1"] = {111,113}
tNpcGossip[25682]["tOption1-1"] = {111,113,116}
tNpcGossip[25682]["OptionFunc111"] = "GuidePlayers_CrossChgMap</N>1"
tNpcGossip[25682]["OptionFunc113"] = "GuidePlayers_CrossChgMap</N>4"
tNpcGossip[25682]["OptionFunc116"] = "GuidePlayers_LeaveCross"

-- 圣诞麋鹿 分会场二
tNpcGossip[25683]= tNpcGossip[25683] or DefaultNpc:new{}
tNpcGossip[25683]["OptionHidden"] = 1
tNpcGossip[25683]["DialogueText"] = tGuidePlayers_Text[25681]
tNpcGossip[25683]["ChkFunc1-1"]= function()
	GuidePlayers_MiLuDialogue(25683)
	return true
end
tNpcGossip[25683]["Text1-1"] = {111,113}
tNpcGossip[25683]["tOption1-1"] = {111,112,116}
tNpcGossip[25683]["OptionFunc111"] = "GuidePlayers_CrossChgMap</N>1"
tNpcGossip[25683]["OptionFunc112"] = "GuidePlayers_CrossChgMap</N>3"
tNpcGossip[25683]["OptionFunc116"] = "GuidePlayers_LeaveCross"

-- 圣诞麋鹿 本服会场
tNpcGossip[25692]= tNpcGossip[25692] or DefaultNpc:new{}
tNpcGossip[25692]["OptionHidden"] = 1
tNpcGossip[25692]["DialogueText"] = tGuidePlayers_Text[25681]
tNpcGossip[25692]["ChkFunc1-1"]= function()
	GuidePlayers_MiLuDialogue(25692)
	GuidePlayers_TaskClear()
	return true
end
tNpcGossip[25692]["Text1-1"] = {111,113}
tNpcGossip[25692]["tOption1-1"] = {111,112,113,116}
tNpcGossip[25692]["OptionFunc111"] = "GuidePlayers_EnterMap</N>1"
tNpcGossip[25692]["OptionFunc112"] = "GuidePlayers_EnterMap</N>2"
tNpcGossip[25692]["OptionFunc113"] = "GuidePlayers_EnterMap</N>3"
tNpcGossip[25692]["OptionFunc116"] = "GuidePlayers_OutMap"

-----------------------------------上线触发--------------------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,GuidePlayers_Login)