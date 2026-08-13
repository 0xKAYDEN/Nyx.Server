------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]元宵节之热热闹闹舞龙灯
--Purpose:	元宵节之热热闹闹舞龙灯
--Creator: 	严振飞
--Created:	2014/12/09
------------------------------------------------------------------------------------
--[[
任务需求：


]]--
------------------------------------------------------------------------------------
--掩码说明
---stc(132,20) =1表示是完成任务，=2表示已领取奖励
---stc(132,21) （队长）记录队伍人数
---stc(132,23) （队长）记录符合条件人数

--LOGid 10002414
------------------------------------------------------------------------------------
--命名规范
--FestivalSpring2015_DragonLight_
------------------------------------------------------------------------------------
--STC掩码表
local tFestivalSpring2015_DragonLight_Stc = {}
----------------------------------------
--stc(132,20)--记录是否完成任务
	tFestivalSpring2015_DragonLight_Stc[1] = {}
	tFestivalSpring2015_DragonLight_Stc[1]["Event"] = 132
	tFestivalSpring2015_DragonLight_Stc[1]["Type"] = 20
	
--stc(132,21)--（队长）记录队伍人数
	tFestivalSpring2015_DragonLight_Stc[2] = {}
	tFestivalSpring2015_DragonLight_Stc[2]["Event"] = 132
	tFestivalSpring2015_DragonLight_Stc[2]["Type"] = 21

--stc(132,23)--（队长）记录符合条件人数
	tFestivalSpring2015_DragonLight_Stc[3] = {}
	tFestivalSpring2015_DragonLight_Stc[3]["Event"] = 132
	tFestivalSpring2015_DragonLight_Stc[3]["Type"] = 23

------------------------------------------------------------------------------------
--活动数据
local tFestivalSpring2015_DragonLight_Data = {}
	--活动时间
	tFestivalSpring2015_DragonLight_Data["Festival_BefTime"] = "2016-01-01 00:00 2017-02-06 23:59"
	tFestivalSpring2015_DragonLight_Data["Festival_NowTime"] = "2017-02-07 00:00 2017-02-11 23:59"
	
	--等级，转世设置
	-- tFestivalSpring2015_DragonLight_Data["LevTop"] = G_User_MaxLev
	tFestivalSpring2015_DragonLight_Data["MinLevel"] = 80
	tFestivalSpring2015_DragonLight_Data["MinMeto"] = 0

	--背包空间
	tFestivalSpring2015_DragonLight_Data["ChkSpace"] = 1
	
	--舞龙队伍范围--3：所有地图
	tFestivalSpring2015_DragonLight_Data["Range"] = 3
	
	--延时时间
	tFestivalSpring2015_DragonLight_Data["DelayTime"] = 2
	
	--舞龙光效
	tFestivalSpring2015_DragonLight_Data["EffectObj"] = "self"
	tFestivalSpring2015_DragonLight_Data["Effect"] = "cyclonecyc"
	tFestivalSpring2015_DragonLight_Data["EffectTime"] = 5
	
	--通用礼包ID
	tFestivalSpring2015_DragonLight_Data["FestivalId"] = 3370
	tFestivalSpring2015_DragonLight_Data["LogId"] = 10002414
	
------------------------------------------------------------------------------------
--活动LOG数据
local tFestivalSpring2015_DragonLight_Log = {}
	--任务阶段
	tFestivalSpring2015_DragonLight_Log["Phase_1"] = "0,0,0,0,10002414,1[1],0,0"
	tFestivalSpring2015_DragonLight_Log["Phase_2"] = "0,0,0,0,10002414,1[2],0,0"
	
------------------------------------------------------------------------------------


------------------------------------------逻辑部分-------------------------------------------
--单用STC掩码判断
function FestivalSpring2015_DragonLight_ChkStc(nStcNum,nTeamUserId)
	
	local nUserId = nTeamUserId or Get_UserId()
	local nEvent = tFestivalSpring2015_DragonLight_Stc[1]["Event"]
	local nType = tFestivalSpring2015_DragonLight_Stc[1]["Type"]
	
	--判断掩码是否为0
	if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
		return false
	end
	
	--判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return false
	end
	
	--不等0，未隔天
	if Task_ChkStcValue(nEvent,nType,">=",nStcNum,nUserId) then
		return true
	end
end

--- 多用STC掩码判断
function FestivalSpring2015_DragonLight_MultiStc(nStcNum,nPlaceNum)
	local nEvent = tFestivalSpring2015_DragonLight_Stc[nStcNum]["Event"]
	local nType = tFestivalSpring2015_DragonLight_Stc[nStcNum]["Type"]
	local nStcValue = Get_UserStatisticValue(nEvent,nType)
	local nMathValue = math.floor(nStcValue / tFestivalSpring2015_DragonLight_Stc[nStcNum]["Place"][nPlaceNum]) % 10
	
	--是否满足条件
	if nMathValue == 0 then
		return true
	else
		return false
	end
end



--队里是有人不满足条件--全队执行
function FestivalSpring2015_DragonLight_TeamFuncFail(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end



--队伍满足条件
function FestivalSpring2015_DragonLight_TeamFuncSuccess(nNpcId,nUserId)
	local sEffectObj = tFestivalSpring2015_DragonLight_Data["EffectObj"]
	local sEffect = tFestivalSpring2015_DragonLight_Data["Effect"]
	
	--成功，置掩码，播放光效
	Task_SetStatistic(tFestivalSpring2015_DragonLight_Stc[1]["Event"],tFestivalSpring2015_DragonLight_Stc[1]["Type"],1,1,nUserId)
	Task_SetStcTimestamp(tFestivalSpring2015_DragonLight_Stc[1]["Event"],tFestivalSpring2015_DragonLight_Stc[1]["Type"],0,nUserId)
	Sys_MsgBox(tFestivalSpring2015_DragonLight_Text["Finish"],"NULL","NULL",nUserId)
	Sys_SaveActionFestivalLog(tFestivalSpring2015_DragonLight_Log["Phase_1"],nUserId)
	User_EffectAdd(sEffectObj,sEffect,nUserId)
	Sys_SetLuaTimer(tFestivalSpring2015_DragonLight_Data["EffectTime"],string.format("User_EffectDel</S>%s</S>%s</N>%d",sEffectObj,sEffect,nUserId),2,nUserId)
end



--计算队伍是否满足条件
function FestivalSpring2015_DragonLight_ChkTeamFunc(nNpcId,nTeamNum)
	local nEvent = tFestivalSpring2015_DragonLight_Stc[3]["Event"]
	local nType = tFestivalSpring2015_DragonLight_Stc[3]["Type"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	
	--判断队伍是否满足条件
	if nTeamNum == nValue then
		User_TeamExeFuncByTeamer(tFestivalSpring2015_DragonLight_Data["Range"],string.format("FestivalSpring2015_DragonLight_TeamFuncSuccess</N>%d",nNpcId))
	else
		User_TeamExeFuncByTeamer(tFestivalSpring2015_DragonLight_Data["Range"],string.format("FestivalSpring2015_DragonLight_TeamFuncFail</N>%d",nNpcId))
	end
end



--第二次全队执行
function FestivalSpring2015_DragonLight_TeamFunc2(nNpcId,nTeamNum,nTeamUserId)

	--判断是否队长
	if User_IsTeamLeader(nTeamUserId) then
		Task_AddStatistic(tFestivalSpring2015_DragonLight_Stc[3]["Event"],tFestivalSpring2015_DragonLight_Stc[3]["Type"],1,0,nTeamUserId)
		
		--倒计时2秒后执行函数
		Sys_SetLuaTimer(tFestivalSpring2015_DragonLight_Data["DelayTime"],string.format("FestivalSpring2015_DragonLight_ChkTeamFunc</N>%d</N>%d",nNpcId,nTeamNum),3,nTeamUserId)
	end
end



--第一次全队执行
function FestivalSpring2015_DragonLight_TeamFunc1(nNpcId,nTeamUserId)

	--判断队里是否有人等级不足
	if not User_JudgeLevelAndMetempsychosis(tFestivalSpring2015_DragonLight_Data["MinLevel"],tFestivalSpring2015_DragonLight_Data["MinMeto"],nTeamUserId) then
		return
	end
	
	-- 判断是否在同一张地图
	if Get_UserMapId(nTeamUserId) ~= 1002 then
		return
	end
	
	--判断是否有人已完成任务
	if FestivalSpring2015_DragonLight_ChkStc(1,nTeamUserId) then
		return
	end
	
	--取队伍人数
	local nTeamNum = Get_UserTeamNumbers(nTeamUserId)
	
	--判断玩家是否队长
	if User_IsTeamLeader(nTeamUserId) then
		--清掩码
		Task_SetStatistic(tFestivalSpring2015_DragonLight_Stc[2]["Event"],tFestivalSpring2015_DragonLight_Stc[2]["Type"],0,1,nTeamUserId)
		Task_SetStatistic(tFestivalSpring2015_DragonLight_Stc[3]["Event"],tFestivalSpring2015_DragonLight_Stc[3]["Type"],0,1,nTeamUserId)
		
		--记录队伍人数
		Task_SetStatistic(tFestivalSpring2015_DragonLight_Stc[2]["Event"],tFestivalSpring2015_DragonLight_Stc[2]["Type"],nTeamNum,1,nTeamUserId)
		Task_SetStcTimestamp(tFestivalSpring2015_DragonLight_Stc[2]["Event"],tFestivalSpring2015_DragonLight_Stc[2]["Type"],0,nTeamUserId)
		Task_SetStcTimestamp(tFestivalSpring2015_DragonLight_Stc[3]["Event"],tFestivalSpring2015_DragonLight_Stc[3]["Type"],0,nTeamUserId)
	end
	
	--满足条件执行
	User_TeamExeFuncByTeamer(tFestivalSpring2015_DragonLight_Data["Range"],string.format("FestivalSpring2015_DragonLight_TeamFunc2</N>%d</N>%d",nNpcId,nTeamNum))
end


--参加舞龙灯逻辑
function FestivalSpring2015_DragonLight_Join(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tFestivalSpring2015_DragonLight_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--判断玩家是否已完成任务
	if FestivalSpring2015_DragonLight_ChkStc(1) then
		User_TeamExeFuncByTeamer(tFestivalSpring2015_DragonLight_Data["Range"],string.format("FestivalSpring2015_DragonLight_TeamFuncFail</N>%d",nNpcId))
		return
	end
	
	local nTeamNum = Get_UserTeamNumbers()
	--判断玩家是否组队
	if nTeamNum == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--判断玩家组队却只有1个人
	if nTeamNum == 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--判断玩家是否队长
	if not User_IsTeamLeader() then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--全队执行
	User_TeamExeFuncByTeamer(tFestivalSpring2015_DragonLight_Data["Range"],string.format("FestivalSpring2015_DragonLight_TeamFunc1</N>%d",nNpcId))
end



--领取奖赏
function FestivalSpring2015_DragonLight_Reward(nNpcId)

	--活动时间判断
	if not Sys_ChkFullTime(tFestivalSpring2015_DragonLight_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	local nEvent = tFestivalSpring2015_DragonLight_Stc[1]["Event"]
	local nType = tFestivalSpring2015_DragonLight_Stc[1]["Type"]

	--判断是否完成任务
	if not FestivalSpring2015_DragonLight_ChkStc(1) then 
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	--判断是否已领取奖励
	if FestivalSpring2015_DragonLight_ChkStc(2) then 
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tFestivalSpring2015_DragonLight_Data["ChkSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	--获得节日礼包
	Task_SetStatistic(tFestivalSpring2015_DragonLight_Stc[1]["Event"],tFestivalSpring2015_DragonLight_Stc[1]["Type"],2,1)
	Task_SetStcTimestamp(tFestivalSpring2015_DragonLight_Stc[1]["Event"],tFestivalSpring2015_DragonLight_Stc[1]["Type"],0)
	FestivalGeneralPackage_GetGift(tFestivalSpring2015_DragonLight_Data["FestivalId"],tFestivalSpring2015_DragonLight_Data["LogId"])
	Sys_SaveActionFestivalLog(tFestivalSpring2015_DragonLight_Log["Phase_2"])
	LinkNpcGossipFunc_New(nNpcId,"3-4")
end

--愿闻其详
function FestivalSpring2015_DragonLight_Introduction(nNpcId)
	--活动时间判断
	if not Sys_ChkFullTime(tFestivalSpring2015_DragonLight_Data["Festival_NowTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	--活动时间内出对白
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

------------------------------------------NPC头像-------------------------------------------
tNpcFace[3432] = 156
------------------------------------------NPC对话-------------------------------------------

-- //舞者小丸子
tNpcGossip[17436] = tNpcGossip[17436] or DefaultNpc:new{}
tNpcGossip[17436]["OptionHidden"] = 1

-- 【活动前】
tNpcGossip[17436]["Text1-1"] = {111,112}
tNpcGossip[17436]["Text111"] = tFestivalSpring2015_DragonLight_Text[17436]["Text111"]
tNpcGossip[17436]["Text112"] = tFestivalSpring2015_DragonLight_Text[17436]["Text112"]
tNpcGossip[17436]["tOption1-1"] = {111}
tNpcGossip[17436]["Option111"] = tFestivalSpring2015_DragonLight_Text[17436]["Option111"]
tNpcGossip[17436]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tFestivalSpring2015_DragonLight_Data["Festival_BefTime"])
end

-- 【活动后】
tNpcGossip[17436]["Text1-2"] = {121}
tNpcGossip[17436]["Text121"] = tFestivalSpring2015_DragonLight_Text[17436]["Text121"]
tNpcGossip[17436]["tOption1-2"] = {121}
tNpcGossip[17436]["Option121"] = tFestivalSpring2015_DragonLight_Text[17436]["Option121"]
tNpcGossip[17436]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tFestivalSpring2015_DragonLight_Data["Festival_NowTime"])
end

-- 【活动中】
-- 等级不够
tNpcGossip[17436]["Text1-3"] = {131}
tNpcGossip[17436]["Text131"] = tFestivalSpring2015_DragonLight_Text[17436]["Text131"]
tNpcGossip[17436]["tOption1-3"] = {131}
tNpcGossip[17436]["Option131"] = tFestivalSpring2015_DragonLight_Text[17436]["Option131"]
tNpcGossip[17436]["ChkFunc1-3"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tFestivalSpring2015_DragonLight_Data["MinLevel"],tFestivalSpring2015_DragonLight_Data["MinMeto"])
end

-- 主对白
tNpcGossip[17436]["Text1-4"] = {141,142,143}
tNpcGossip[17436]["Text141"] = tFestivalSpring2015_DragonLight_Text[17436]["Text141"]
tNpcGossip[17436]["Text142"] = tFestivalSpring2015_DragonLight_Text[17436]["Text142"]
tNpcGossip[17436]["Text143"] = tFestivalSpring2015_DragonLight_Text[17436]["Text143"]
tNpcGossip[17436]["tOption1-4"] = {141,142,143,144}
tNpcGossip[17436]["Option141"] = tFestivalSpring2015_DragonLight_Text[17436]["Option141"]
tNpcGossip[17436]["Option142"] = tFestivalSpring2015_DragonLight_Text[17436]["Option142"]
tNpcGossip[17436]["Option143"] = tFestivalSpring2015_DragonLight_Text[17436]["Option143"]
tNpcGossip[17436]["Option144"] = tFestivalSpring2015_DragonLight_Text[17436]["Option144"]
tNpcGossip[17436]["OptionChkFunc141"] = function ()
	return not FestivalSpring2015_DragonLight_ChkStc(1)
end
tNpcGossip[17436]["OptionFunc141"] = "FestivalSpring2015_DragonLight_Join</N>17436"
tNpcGossip[17436]["OptionFunc142"] = "FestivalSpring2015_DragonLight_Reward</N>17436"
tNpcGossip[17436]["OptionFunc143"] = "FestivalSpring2015_DragonLight_Introduction</N>17436"

-- 【弟兄们来舞龙喽！】
-- 失败、玩家未组队
tNpcGossip[17436]["Text2-1"] = {211,212}
tNpcGossip[17436]["Text211"] = tFestivalSpring2015_DragonLight_Text[17436]["Text211"]
tNpcGossip[17436]["Text212"] = tFestivalSpring2015_DragonLight_Text[17436]["Text212"]
tNpcGossip[17436]["tOption2-1"] = {211}
tNpcGossip[17436]["Option211"] = tFestivalSpring2015_DragonLight_Text[17436]["Option211"]

-- 失败、玩家组队却只有1个人的队伍
tNpcGossip[17436]["Text2-2"] = {221,222}
tNpcGossip[17436]["Text221"] = tFestivalSpring2015_DragonLight_Text[17436]["Text221"]
tNpcGossip[17436]["Text222"] = tFestivalSpring2015_DragonLight_Text[17436]["Text222"]
tNpcGossip[17436]["tOption2-2"] = {221}
tNpcGossip[17436]["Option221"] = tFestivalSpring2015_DragonLight_Text[17436]["Option221"]

-- 失败、玩家不是队长
tNpcGossip[17436]["Text2-3"] = {231,232}
tNpcGossip[17436]["Text231"] = tFestivalSpring2015_DragonLight_Text[17436]["Text231"]
tNpcGossip[17436]["Text232"] = tFestivalSpring2015_DragonLight_Text[17436]["Text232"]
tNpcGossip[17436]["tOption2-3"] = {231}
tNpcGossip[17436]["Option231"] = tFestivalSpring2015_DragonLight_Text[17436]["Option231"]

-- 失败、玩家或队伍里有人等级不足、玩家或队伍里有人当天已完成过
tNpcGossip[17436]["Text2-4"] = {241,242,243}
tNpcGossip[17436]["Text241"] = tFestivalSpring2015_DragonLight_Text[17436]["Text241"]
tNpcGossip[17436]["Text242"] = tFestivalSpring2015_DragonLight_Text[17436]["Text242"]
tNpcGossip[17436]["Text243"] = tFestivalSpring2015_DragonLight_Text[17436]["Text243"]
tNpcGossip[17436]["tOption2-4"] = {241}
tNpcGossip[17436]["Option241"] = tFestivalSpring2015_DragonLight_Text[17436]["Option241"]

-- 【领取奖赏。】
-- 失败、玩家未完成
tNpcGossip[17436]["Text3-1"] = {311}
tNpcGossip[17436]["Text311"] = tFestivalSpring2015_DragonLight_Text[17436]["Text311"]
tNpcGossip[17436]["tOption3-1"] = {311}
tNpcGossip[17436]["Option311"] = tFestivalSpring2015_DragonLight_Text[17436]["Option311"]

-- 失败、玩家当天已领取过奖励
tNpcGossip[17436]["Text3-2"] = {321}
tNpcGossip[17436]["Text321"] = tFestivalSpring2015_DragonLight_Text[17436]["Text321"]
tNpcGossip[17436]["tOption3-2"] = {321}
tNpcGossip[17436]["Option321"] = tFestivalSpring2015_DragonLight_Text[17436]["Option321"]

-- 失败、背包满
tNpcGossip[17436]["Text3-3"] = {331}
tNpcGossip[17436]["Text331"] = tFestivalSpring2015_DragonLight_Text[17436]["Text331"]
tNpcGossip[17436]["tOption3-3"] = {331}
tNpcGossip[17436]["Option331"] = tFestivalSpring2015_DragonLight_Text[17436]["Option331"]

-- 领取成功
tNpcGossip[17436]["Text3-4"] = {341,342}
tNpcGossip[17436]["Text341"] = tFestivalSpring2015_DragonLight_Text[17436]["Text341"]
tNpcGossip[17436]["Text342"] = tFestivalSpring2015_DragonLight_Text[17436]["Text342"]
tNpcGossip[17436]["tOption3-4"] = {341}
tNpcGossip[17436]["Option341"] = tFestivalSpring2015_DragonLight_Text[17436]["Option341"]

-- 【我该怎么舞龙？】
tNpcGossip[17436]["Text4-1"] = {411,412} 	--内容
tNpcGossip[17436]["Text411"] = tFestivalSpring2015_DragonLight_Text[17436]["Text411"]
tNpcGossip[17436]["Text412"] = tFestivalSpring2015_DragonLight_Text[17436]["Text412"]
tNpcGossip[17436]["tOption4-1"] = {411}
tNpcGossip[17436]["Option411"] = tFestivalSpring2015_DragonLight_Text[17436]["Option411"]







