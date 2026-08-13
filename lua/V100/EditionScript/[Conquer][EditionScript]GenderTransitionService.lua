----------------------------------------------------------------------------
--Name:		[征服][功能脚本]性别转换服务专员.lua
--Purpose:	性别转换服务专员
--Creator: 	郑鋆
--Created:	2015/07/27
----------------------------------------------------------------------------

-- 命名前缀
-- GenderTransitionService_

local tGenderTransitionService_Constant = {}
	-- 花费的天石
	tGenderTransitionService_Constant["Emoney"] = 1075
	
	tGenderTransitionService_Constant["Log"] = "0,0,0,0,10001930,2,sex,0"

	tGenderTransitionService_Constant["EmoneyLog"] = "350	4226	1075	1075	1	"
	
local tGenderTransitionService_SpringFestival2020 = {}
tGenderTransitionService_SpringFestival2020[1] = {211,69}
tGenderTransitionService_SpringFestival2020[2] = {211,70}
tGenderTransitionService_SpringFestival2020[3] = {211,75}

local tGenderTransitionService_AllSpringFestival2020 = {}
tGenderTransitionService_AllSpringFestival2020[1] = {211,71}
tGenderTransitionService_AllSpringFestival2020[2] = {211,72}
tGenderTransitionService_AllSpringFestival2020[3] = {211,73}
tGenderTransitionService_AllSpringFestival2020[4] = {211,74}
tGenderTransitionService_AllSpringFestival2020[5] = {211,75}
tGenderTransitionService_AllSpringFestival2020[6] = {211,76}
tGenderTransitionService_AllSpringFestival2020[7] = {211,77}
tGenderTransitionService_AllSpringFestival2020[8] = {211,78}
tGenderTransitionService_AllSpringFestival2020[9] = {211,81}
                                                         
local tGenderTransitionService_LeadMap = {}
tGenderTransitionService_LeadMap["Normal"] = {}
tGenderTransitionService_LeadMap["Normal"]["MapId"] = 1002
tGenderTransitionService_LeadMap["Normal"]["PosX"] = 334
tGenderTransitionService_LeadMap["Normal"]["PosY"] = 567
tGenderTransitionService_LeadMap["Normal"]["FinishPosX"] = 365
tGenderTransitionService_LeadMap["Normal"]["FinishPosY"] = 451
tGenderTransitionService_LeadMap["Special"] = {}
tGenderTransitionService_LeadMap["Special"]["MapId"] = 1036
tGenderTransitionService_LeadMap["Special"]["PosX"] = 214
tGenderTransitionService_LeadMap["Special"]["PosY"] = 213
tGenderTransitionService_LeadMap["Special"]["FinishPosX"] = 261
tGenderTransitionService_LeadMap["Special"]["FinishPosY"] = 216
tGenderTransitionService_LeadMap["self"] = "self"
tGenderTransitionService_LeadMap["Effect"] = "firecracker1"
tGenderTransitionService_LeadMap["Effect1"] = "firecracker-single"
tGenderTransitionService_LeadMap["ReadTime"] = 1
tGenderTransitionService_LeadMap["ReadTime1"] = 2
tGenderTransitionService_LeadMap["Black"] = {}
tGenderTransitionService_LeadMap["Black"][1] = {4299}
tGenderTransitionService_LeadMap["Black"][2] = {4296}
tGenderTransitionService_LeadMap["Black"][3] = {4297}
tGenderTransitionService_LeadMap["Black"][4] = {4298}

local tGenderTransitionService_Reward = {}
--拜年完毕给红包
tGenderTransitionService_Reward["PayNewYear"] = {}
tGenderTransitionService_Reward["PayNewYear"]["RewardItem"] = {}
tGenderTransitionService_Reward["PayNewYear"]["RewardItem"][1] = {}
tGenderTransitionService_Reward["PayNewYear"]["RewardItem"][1]["Id"] = 3327303
tGenderTransitionService_Reward["PayNewYear"]["RewardItem"][1]["Attr"] = "0 1"
tGenderTransitionService_Reward["PayNewYear"]["RewardItem"][2] = {}
tGenderTransitionService_Reward["PayNewYear"]["RewardItem"][2]["Id"] = 3314840
tGenderTransitionService_Reward["PayNewYear"]["RewardItem"][2]["Attr"] = "0 1"
tGenderTransitionService_Reward["PayNewYear"]["LogId"] = 12001792
tGenderTransitionService_Reward["PayNewYear"]["RewardEffect"] = {}
tGenderTransitionService_Reward["PayNewYear"]["RewardEffect"]["SzObj"] = "self"
tGenderTransitionService_Reward["PayNewYear"]["RewardEffect"]["Effect"] = "task041"	

--完成新年第三个任务给玩家
-- 给最终奖励，鼠年幸运礼包，鼠年鸿运礼包以及3327307,'春节新衣回归礼盒'
tGenderTransitionService_Reward["LastPayNewYear"] = {}
tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"] = {}
tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"][1] = {}
tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"][1]["Id"] = 3327303
tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"][1]["Attr"] = "0 1"
tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"][2] = {}
tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"][2]["Id"] = 3327304
tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"][2]["Attr"] = "0 1 0 1440 1"
-- tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"][3] = {}
-- tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"][3]["Id"] = 3327373
-- tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"][3]["Attr"] = "0 1"
tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"][3] = {}
tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"][3]["Id"] = 3327287
tGenderTransitionService_Reward["LastPayNewYear"]["RewardItem"][3]["Attr"] = "0 1"
tGenderTransitionService_Reward["LastPayNewYear"]["LogId"] = 12001792
tGenderTransitionService_Reward["LastPayNewYear"]["RewardEffect"] = {}
tGenderTransitionService_Reward["LastPayNewYear"]["RewardEffect"]["SzObj"] = "self"
tGenderTransitionService_Reward["LastPayNewYear"]["RewardEffect"]["Effect"] = "angelwing"	

--------------------------------------逻辑部分-----------------------------------------	
-- 公共判断
function GenderTransitionService_PublicJudgment(nNpcId)
	-- 判断玩家是否有婚姻
	local nMateId = Get_UserMateId()
	
	if nMateId > 0 then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return false
	end
	
	-- 判断玩家身上天石
	local nEmoney = Get_UserEMoney()
	
	if nEmoney < tGenderTransitionService_Constant["Emoney"] then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return false
	end
	
	-- 判断是否是嫔妃
	if User_IsConcubines() then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return false
	-- 是否有嫔妃
	elseif User_HaveConcubines() then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return false
	end
	
	return true
end

-- 出二次确认对白
function GenderTransitionService_RecognitionConversionSex(nNpcId)
	-- 判断是否满足转换条件
	if not GenderTransitionService_PublicJudgment(nNpcId) then
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"3-3")
end

-- 确认转换性别
function GenderTransitionService_ConversionSex(nNpcId)
	-- 判断是否满足转换条件
	if not GenderTransitionService_PublicJudgment(nNpcId) then
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(2) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nEmoney = Get_UserEMoney()
	
	if not User_AddEMoney(-tGenderTransitionService_Constant["Emoney"]) then
		return
	end
	
	Sys_SaveActionFestivalLog(tGenderTransitionService_Constant["Log"])
	Sys_SaveEmoneyBuy(tGenderTransitionService_Constant["EmoneyLog"])
	
	-- 播光效
	User_EffectAdd("self","angelwing")
	
	local nUserId = Get_UserId()
	local nSex = Get_UserSex(nUserId)
	local sUserName = Get_UserName(nUserId)
	
	if nSex == 1 then
		User_SetSex(2)
	else
		User_SetSex(1)
	end
	
	if User_ChkRoleStatus(166,nUserId) then
		User_DelRoleStatus(166,nUserId)
	end
	
	if User_ChkRoleStatus(167,nUserId) then
		User_DelRoleStatus(167,nUserId)
	end
	
	Sys_SystemBroadcast(string.format(tGenderTransitionService_Text["Success"][nSex],sUserName))
end

--判断玩家是否有春节拜年活动
function GenderTransitionService_SpingActivity(nNpcId)
	local nGenderTransitionService_nUserId = Get_UserId()
	local nGenderTransitionService_nMainEvent = tGenderTransitionService_SpringFestival2020[1][1]
	local nGenderTransitionService_nMainData = tGenderTransitionService_SpringFestival2020[1][2]
	local nGenderTransitionService_nMainEvent1 = tGenderTransitionService_SpringFestival2020[2][1]
	local nGenderTransitionService_nMainData1 = tGenderTransitionService_SpringFestival2020[2][2]

	local nInternalWorkSecret_nTip = 0
	
	for i,v in pairs(tGenderTransitionService_AllSpringFestival2020) do 
		local nInternalWorkSecret_LieEvent = v[1]
		local nInternalWorkSecret_LieData = v[2]
		
		if Task_ChkStcValue(nInternalWorkSecret_LieEvent,nInternalWorkSecret_LieData,"==",1,nGenderTransitionService_nUserId) then
			nInternalWorkSecret_nTip = 1
			break
		end
		
	end
	
	
	if Task_ChkStcValue(nGenderTransitionService_nMainEvent,nGenderTransitionService_nMainData,"==",1,nGenderTransitionService_nUserId) 
		and Task_ChkStcValue(nGenderTransitionService_nMainEvent1,nGenderTransitionService_nMainData1,"==",1,nGenderTransitionService_nUserId) 
		  and (nInternalWorkSecret_nTip == 0) then
		  return true
	end
	return false
end
--给最终奖励，鼠年幸运礼包，鼠年鸿运礼包以及3327307,'春节新衣回归礼盒'

--最后播放鞭炮光效
function GenderTransitionService_StrangePaoUseLast(nUserId,nItemId)
	
	local nGenderTransitionService_nUserId = nUserId or Get_UserId()
	local nGenderTransitionService_Space = RewardTemplate_GetRewardSpace(tGenderTransitionService_Reward["LastPayNewYear"],nGenderTransitionService_nUserId)
	if not User_CheckLeftSpace(nGenderTransitionService_Space,nGenderTransitionService_nUserId) then
		User_TalkChannel2005(string.format(tSpringFestivalMainLine2020_Text["Msg"][2],nGenderTransitionService_Space),nGenderTransitionService_nUserId)
		return
	end
	
	
	if Item_ChkMulItem(nItemId,nItemId,1,0,0,nGenderTransitionService_nUserId) and Item_DelMulItem(nItemId,nItemId,1,0,0,nGenderTransitionService_nUserId)  then

		GenderTransitionService_CompletedTask(4,nGenderTransitionService_nUserId)
		
		RewardTemplate_UseItemAndMsg(tGenderTransitionService_Reward["LastPayNewYear"],nGenderTransitionService_nUserId)
		
		--播放光效，完成任务
		User_EffectAdd(tGenderTransitionService_LeadMap["self"],tGenderTransitionService_LeadMap["Effect"],nGenderTransitionService_nUserId)
		
		Sys_MsgBox(tSpringFestivalMainLine2020_Text["Msg"][1],"GenderTransitionService_LookMainNpc</N>"..nGenderTransitionService_nUserId,nil,nGenderTransitionService_nUserId)
	end
	
end
--放完鞭炮在传送回主npc
function GenderTransitionService_LookMainNpc(nUserId)

	local nGenderTransitionService_nUserId = nUserId or Get_UserId()
	
	local nGenderTransitionService_MapId = tGenderTransitionService_LeadMap["Normal"]["MapId"]
	local nGenderTransitionService_PosX = tGenderTransitionService_LeadMap["Normal"]["FinishPosX"]
	local nGenderTransitionService_PosY = tGenderTransitionService_LeadMap["Normal"]["FinishPosY"]

	if SpecialServer_ChkNoGiftServer() then
		nGenderTransitionService_MapId = tGenderTransitionService_LeadMap["Special"]["MapId"]
		nGenderTransitionService_PosX = tGenderTransitionService_LeadMap["Special"]["FinishPosX"]
		nGenderTransitionService_PosY = tGenderTransitionService_LeadMap["Special"]["FinishPosY"]
	end
	
	User_UserRandBoundTrans(nGenderTransitionService_MapId,nGenderTransitionService_PosX,nGenderTransitionService_PosY,1,1,1,nGenderTransitionService_nUserId)
	NpcPosition_PathFind(25784)
end
--直接使用物品
function GenderTransitionService_StrangePaoUse(nItemId,nUserId)
	
	--燃放烟花的效果
	local nGenderTransitionService_nUserId = nUserId or Get_UserId()
	
	-- User_EffectAdd(tGenderTransitionService_LeadMap["self"],tGenderTransitionService_LeadMap["Effect1"],nGenderTransitionService_nUserId)
	--User_TalkChannel2005
	--读条
	-- local nGenderTransitionService_ExploreTime = tGenderTransitionService_LeadMap["ReadTime1"]
	
	--User_SetExplore(nGenderTransitionService_ExploreTime,tSpringFestivalMainLine2020_Text["Msg"][9],220,"GenderTransitionService_StrangePaoUseLast</N>"..nGenderTransitionService_nUserId.."</N>"..nItemId)
	GenderTransitionService_StrangePaoUseLast(nGenderTransitionService_nUserId,nItemId)
end
--寻路到相关的点
function GenderTransitionService_WayGo(nUserId)
	
	local nGenderTransitionService_nUserId = nUserId or Get_UserId()
	
	local nGenderTransitionService_MapId = tGenderTransitionService_LeadMap["Normal"]["MapId"]
	local nGenderTransitionService_PosX = tGenderTransitionService_LeadMap["Normal"]["PosX"]
	local nGenderTransitionService_PosY = tGenderTransitionService_LeadMap["Normal"]["PosY"]

	if SpecialServer_ChkNoGiftServer() then
		nGenderTransitionService_MapId = tGenderTransitionService_LeadMap["Special"]["MapId"]
		nGenderTransitionService_PosX = tGenderTransitionService_LeadMap["Special"]["PosX"]
		nGenderTransitionService_PosY = tGenderTransitionService_LeadMap["Special"]["PosY"]
	end

	Sys_GotoSomeWhere(nGenderTransitionService_PosX,nGenderTransitionService_PosY,nGenderTransitionService_MapId,0,nGenderTransitionService_nUserId,"GenderTransitionService_StrangePaoUse</N>3314840</N>"..nGenderTransitionService_nUserId)
end
--做动作，然后给奖励
function GenderTransitionService_AwardYear(nUserId,nTip)
	--设置相关掩码
	
	local nGenderTransitionService_nUserId = nUserId or Get_UserId()

	--判断玩家背包空间
	
	local nGenderTransitionService_nSpace = RewardTemplate_GetRewardSpace(tGenderTransitionService_Reward["PayNewYear"],nGenderTransitionService_nUserId)
	if User_CheckLeftSpace(nGenderTransitionService_nSpace,nGenderTransitionService_nUserId) then
		
		local nGenderTransitionService_Event = tGenderTransitionService_AllSpringFestival2020[nTip][1]
		local nGenderTransitionService_Data = tGenderTransitionService_AllSpringFestival2020[nTip][2]
		Task_SetStatistic(nGenderTransitionService_Event,nGenderTransitionService_Data,1,1,nGenderTransitionService_nUserId)
		Task_SetStcTimestamp(nGenderTransitionService_Event,nGenderTransitionService_Data,0,nGenderTransitionService_nUserId)
	
		RewardTemplate_UseItemAndMsg(tGenderTransitionService_Reward["PayNewYear"],nGenderTransitionService_nUserId)
		
		GenderTransitionService_CompletedTask(3,nGenderTransitionService_nUserId)
		
		if not GenderTransitionService_LookForBlack(4,nGenderTransitionService_nUserId) then
			User_TalkChannel2005(tSpringFestivalMainLine2020_Text["Msg"][6])
			return
		end
		
		--播放光效
		-- User_EffectAdd(tGenderTransitionService_LeadMap["self"],tGenderTransitionService_LeadMap["Effect"],nGenderTransitionService_nUserId)
		
		--105提示引路到鞭炮燃放点
		local sSpringFestivalMainLine2020_LeadWay = tSpringFestivalMainLine2020_Text["Mail"]["LeaderWay"]
		Sys_MsgBox(sSpringFestivalMainLine2020_LeadWay,"GenderTransitionService_WayGo</N>"..nGenderTransitionService_nUserId,nil,nGenderTransitionService_nUserId)
		
	else
		User_TalkChannel2005(string.format(tSpringFestivalMainLine2020_Text["Msg"][2],nGenderTransitionService_nSpace),nGenderTransitionService_nUserId)
		return
	end
	
end
--增加寻路面板
function GenderTransitionService_LookForBlack(nTip,nUserId)
	
	local nGenderTransitionService_nUserId = nUserId or Get_UserId()
	local nGenderTransitionService_TaskId = tGenderTransitionService_LeadMap["Black"][nTip][1]
	if not Task_ChkTaskDetail(nGenderTransitionService_TaskId,nGenderTransitionService_nUserId) then
		if not Task_AddTaskDetail(nGenderTransitionService_TaskId,0,nGenderTransitionService_nUserId) then
			return false
		end
	end
	return true
end

--完成任务面板
function GenderTransitionService_CompletedTask(nTip,nUserId)
	
	local nGenderTransitionService_nUserId = nUserId or Get_UserId()
	local nGenderTransitionService_TaskId = tGenderTransitionService_LeadMap["Black"][nTip][1]
	if Task_ChkTaskDetail(nGenderTransitionService_TaskId,nGenderTransitionService_nUserId) then
		Task_SetTaskDetailData1(nGenderTransitionService_TaskId,1,nGenderTransitionService_nUserId)
		Task_SetTaskDetailCompleteFlag(nGenderTransitionService_TaskId,1,nGenderTransitionService_nUserId)
	end
end

--给玩家春节鞭炮，背包空间不足发邮件
function GenderTransitionService_SpingPao(nTip)
	
	if not GenderTransitionService_LookForBlack(4) then
		User_TalkChannel2005(tSpringFestivalMainLine2020_Text["Msg"][6])
		return
	end
	
	
	local nGenderTransitionService_nUserId = nUserId or Get_UserId()
		--读条
	local nGenderTransitionService_ExploreTime = tGenderTransitionService_LeadMap["ReadTime"]
	
	User_SetExplore(nGenderTransitionService_ExploreTime,tSpringFestivalMainLine2020_Text["Msg"][8],200,"GenderTransitionService_AwardYear</N>"..nGenderTransitionService_nUserId.."</N>"..nTip)

end
--------------------------------------NPC模块-------------------------------------------
-- 性别转换服务专员
tNpcFace[2490] = 159
tNpcFace[5699] = 159
tNpcGossip[15805] = tNpcGossip[15805] or DefaultNpc:new{}
tNpcGossip[15805]["OptionHidden"] = 1

tNpcGossip[15805]["Text1-1"] = {111,112,113}
tNpcGossip[15805]["Text111"] = tGenderTransitionService_Text[15805]["111"]
tNpcGossip[15805]["Text112"] = tGenderTransitionService_Text[15805]["112"]
tNpcGossip[15805]["Text113"] = tGenderTransitionService_Text[15805]["113"]
tNpcGossip[15805]["tOption1-1"] = {1,2,3}

tNpcGossip[15805]["Option1"] = tGenderTransitionService_Text[15805]["Option1"]
tNpcGossip[15805]["OptionFunc1"]="GenderTransitionService_RecognitionConversionSex</N>15805"
tNpcGossip[15805]["Option2"] = tGenderTransitionService_Text[15805]["Option2"]
tNpcGossip[15805]["OptionPoint2"]="2-1"
tNpcGossip[15805]["Option3"] = tGenderTransitionService_Text[15805]["Option3"]
tNpcGossip[15805]["ChkFunc1-1"] = function ()
	return not GenderTransitionService_SpingActivity(15805)
end

--春节活动
tNpcGossip[15805]["Text1-2"] = {511}
tNpcGossip[15805]["Text511"] = tGenderTransitionService_Text[15805]["511"]
tNpcGossip[15805]["tOption1-2"] = {13}
tNpcGossip[15805]["Option13"] = tGenderTransitionService_Text[15805]["Option13"]
tNpcGossip[15805]["OptionFunc13"] = "GenderTransitionService_SpingPao</N>5"

-- 咨询注意事项。
tNpcGossip[15805]["Text2-1"] = {211,212,213}
tNpcGossip[15805]["Text211"] = tGenderTransitionService_Text[15805]["211"]
tNpcGossip[15805]["Text212"] = tGenderTransitionService_Text[15805]["212"]
tNpcGossip[15805]["Text213"] = tGenderTransitionService_Text[15805]["213"]
tNpcGossip[15805]["tOption2-1"] = {4,5}

tNpcGossip[15805]["Option4"] = tGenderTransitionService_Text[15805]["Option4"]
tNpcGossip[15805]["OptionPoint4"]="1"
tNpcGossip[15805]["Option5"] = tGenderTransitionService_Text[15805]["Option5"]

-- 已婚状态
tNpcGossip[15805]["Text3-1"] = {311}
tNpcGossip[15805]["Text311"] = tGenderTransitionService_Text[15805]["311"]
tNpcGossip[15805]["tOption3-1"] = {6}

tNpcGossip[15805]["Option6"] = tGenderTransitionService_Text[15805]["Option6"]

-- 1075天石
tNpcGossip[15805]["Text3-2"] = {321,322}
tNpcGossip[15805]["Text321"] = tGenderTransitionService_Text[15805]["321"]
tNpcGossip[15805]["Text322"] = tGenderTransitionService_Text[15805]["322"]
tNpcGossip[15805]["tOption3-2"] = {7}

tNpcGossip[15805]["Option7"] = tGenderTransitionService_Text[15805]["Option7"]

-- 二次确认
tNpcGossip[15805]["Text3-3"] = {331,332}
tNpcGossip[15805]["Text331"] = tGenderTransitionService_Text[15805]["331"]
tNpcGossip[15805]["Text332"] = tGenderTransitionService_Text[15805]["332"]
tNpcGossip[15805]["tOption3-3"] = {8,9}

tNpcGossip[15805]["Option8"] = tGenderTransitionService_Text[15805]["Option8"]
tNpcGossip[15805]["OptionFunc8"]="GenderTransitionService_ConversionSex</N>15805"
tNpcGossip[15805]["Option9"] = tGenderTransitionService_Text[15805]["Option9"]

tNpcGossip[15805]["Text4-1"] = {411}
tNpcGossip[15805]["Text411"] = tGenderTransitionService_Text[15805]["411"]
tNpcGossip[15805]["tOption4-1"] = {10}
tNpcGossip[15805]["Option10"] = tGenderTransitionService_Text[15805]["Option10"]

tNpcGossip[15805]["Text4-2"] = {421}
tNpcGossip[15805]["Text421"] = tGenderTransitionService_Text[15805]["421"]
tNpcGossip[15805]["tOption4-2"] = {11}
tNpcGossip[15805]["Option11"] = tGenderTransitionService_Text[15805]["Option11"]

tNpcGossip[15805]["Text4-3"] = {431}
tNpcGossip[15805]["Text431"] = tGenderTransitionService_Text[15805]["431"]
tNpcGossip[15805]["tOption4-3"] = {12}
tNpcGossip[15805]["ChkFunc4-3"] = function ()
	local sOffice = Get_Harem()
	
	tNpcGossip[15805]["Text431"] = string.format(tGenderTransitionService_Text[15805]["431"],sOffice)
	return true
end



tNpcGossip[15805]["Option12"] = tGenderTransitionService_Text[15805]["Option12"]