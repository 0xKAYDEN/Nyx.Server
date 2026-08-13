------------------------------------------------------------------------------------
--Name：            181213[英文征服][活动脚本]1月新版本预热活动制作
--Creator:      蔡颖静
--Created:     2018/12/13
------------------------------------------------------------------------------------
--任务需求：
-- 请安排2019年1月新版本预热活动制作，做一个NPC介绍将要更新的新的版本内容，并且实现玩家的点赞领奖，具体需求见附件。
-- 活动时间：1.22-2.06
-- 更新范围：全区全服
-- 计划更新时间：1.22
-- 如有问题，请及时沟通，谢谢！
-- 备注：为了方便活动数据统计，部分 log 需要做成 emoney buy log，具体情况制作时再沟通下。

--前缀：tNewVersionWarmUp_

--掩码：
-- stc(187,00) 记录今日是否完成【为新职业点赞】
-- stc(187,01) 记录今日是否完成【为双人骑宠点赞】
-- stc(187,02) 记录今日是否完成【为尾兽形态点赞】
-- stc(187,03) 记录今日是否完成【为“称帝战”点赞】
----------------------------------表配置部分--------------------------------------------
local tNewVersionWarmUp_Data={}
--掩码
tNewVersionWarmUp_Data["Stc"]={}
-- stc(187,00) 记录今日是否完成【为新职业点赞】
tNewVersionWarmUp_Data["Stc"][1]={}
tNewVersionWarmUp_Data["Stc"][1]["EventType"]=187
tNewVersionWarmUp_Data["Stc"][1]["DataType"]=0
tNewVersionWarmUp_Data["Stc"][1]["Completed"]=1
-- stc(187,01) 记录今日是否完成【为双人骑宠点赞】
tNewVersionWarmUp_Data["Stc"][2]={}
tNewVersionWarmUp_Data["Stc"][2]["EventType"]=187
tNewVersionWarmUp_Data["Stc"][2]["DataType"]=1
tNewVersionWarmUp_Data["Stc"][2]["Completed"]=1
-- stc(187,02) 记录今日是否完成【为尾兽形态点赞】
tNewVersionWarmUp_Data["Stc"][3]={}
tNewVersionWarmUp_Data["Stc"][3]["EventType"]=187
tNewVersionWarmUp_Data["Stc"][3]["DataType"]=2
tNewVersionWarmUp_Data["Stc"][3]["Completed"]=1
-- stc(187,03) 记录今日是否完成【为“称帝战”点赞】
tNewVersionWarmUp_Data["Stc"][4]={}
tNewVersionWarmUp_Data["Stc"][4]["EventType"]=187
tNewVersionWarmUp_Data["Stc"][4]["DataType"]=3
tNewVersionWarmUp_Data["Stc"][4]["Completed"]=1

--点赞成功 会得到1颗微光星陨石（2天时效）
tNewVersionWarmUp_Data["Reward"]={}
tNewVersionWarmUp_Data["Reward"]["LogId"] = 12001239
tNewVersionWarmUp_Data["Reward"]["RewardItem"] = {}
tNewVersionWarmUp_Data["Reward"]["RewardItem"][1]={}
tNewVersionWarmUp_Data["Reward"]["RewardItem"][1]["Id"]= 3009000
tNewVersionWarmUp_Data["Reward"]["RewardItem"][1]["Attr"]= "0 1 0 2880 1"

--线下链接
tNewVersionWarmUp_Data["Link"]="http://co.99.com/guide/event/2019/newversions/index.shtml"

--Emoneylog 
tNewVersionWarmUp_Data["EmoneyLog"]={}
tNewVersionWarmUp_Data["EmoneyLog"][1]="350	21961	0	0	1	"
tNewVersionWarmUp_Data["EmoneyLog"][2]="350	21962	0	0	1	"
tNewVersionWarmUp_Data["EmoneyLog"][3]="350	21963	0	0	1	"
tNewVersionWarmUp_Data["EmoneyLog"][4]="350	21964	0	0	1	"

----------------------------------逻辑部分---------------------------------------------
--点赞
function NewVersionWarmUp_Likey(nIndex)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
--是否已经点赞
	local nEventType=tNewVersionWarmUp_Data["Stc"][nIndex]["EventType"]
	local nDataType=tNewVersionWarmUp_Data["Stc"][nIndex]["DataType"]
	local nComplete = tNewVersionWarmUp_Data["Stc"][nIndex]["Completed"]
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		Sys_MsgBox(NewVersionWarmUp_Text["SystemTips"]["Completed"])
		return
	else
		--背包空间判断
		local nGetRewardSpace = RewardTemplate_GetRewardSpace(tNewVersionWarmUp_Data["Reward"])
		local nDelRewardSpace = RewardTemplate_GetDelSpace(tNewVersionWarmUp_Data["Reward"])
		local nNeedSpace = nGetRewardSpace - nDelRewardSpace
		if not User_CheckLeftSpace(nNeedSpace) then
			User_TalkChannel2005(NewVersionWarmUp_Text["SystemTips"]["BagFull"])
			return
		end
		--加掩码
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		--打log
		Sys_SaveEmoneyBuy(tNewVersionWarmUp_Data["EmoneyLog"][nIndex])
		--全服公告
		Sys_TalkBroadcast(string.format(NewVersionWarmUp_Text["BroadCast"][nIndex],sUserName))
		--给奖励
		if RewardTemplate_UseItem(tNewVersionWarmUp_Data["Reward"]) then 
			--提示
			Sys_MsgBox(NewVersionWarmUp_Text["SystemTips"]["Succeed"])
		end 
	end 
end

--了解详情
function NewVersionWarmUp_Link()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["NewVersionWarmUp"]["ActivityTime"]) then
		return
	end
	local sWebPage =tNewVersionWarmUp_Data["Link"]
	User_SendWebPage(sWebPage)
end


----------------------------------NPC部分---------------------------------------------
-- 头像
tNpcFace[6411] = 85

tNpcGossip[23598] = tNpcGossip[23598] or DefaultNpc:new{}
tNpcGossip[23598]["OptionHidden"] = 1
tNpcGossip[23598]["DialogueText"] = NewVersionWarmUp_Text[23598]

-- 活动前
tNpcGossip[23598]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[23598]["tOption1-1"] = {1}
tNpcGossip[23598]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["NewVersionWarmUp"]["ActivityTime"])
end

-- 活动后
tNpcGossip[23598]["Text1-2"] = {121}
tNpcGossip[23598]["tOption1-2"] = {2}
tNpcGossip[23598]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["NewVersionWarmUp"]["ActivityTime"])
end

-- 活动中
tNpcGossip[23598]["Text1-3"] = {131,132,133,134,135,136,137,138,139}
tNpcGossip[23598]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tActivityTime["NewVersionWarmUp"]["ActivityTime"]) 
end 
tNpcGossip[23598]["tOption1-3"] = {3,4,5,6,7}
--是否已经点赞
tNpcGossip[23598]["OptionChkFunc3"] = function()
	local nEventType1=tNewVersionWarmUp_Data["Stc"][1]["EventType"]
	local nDataType1=tNewVersionWarmUp_Data["Stc"][1]["DataType"]
	local nComplete1 = tNewVersionWarmUp_Data["Stc"][1]["Completed"]
	Task_StcReset(nEventType1,nDataType1) -- 隔天
	if Task_ChkStcValue(nEventType1,nDataType1,">=",nComplete1) then
		tNpcGossip[23598]["Option3"]=NewVersionWarmUp_Text[23598]["Option8"]
	else
		tNpcGossip[23598]["Option3"]=NewVersionWarmUp_Text[23598]["Option3"]
	end 
	return true
end 
tNpcGossip[23598]["OptionFunc3"]="NewVersionWarmUp_Likey</N>1"

tNpcGossip[23598]["OptionChkFunc4"] = function()
	local nEventType2=tNewVersionWarmUp_Data["Stc"][2]["EventType"]
	local nDataType2=tNewVersionWarmUp_Data["Stc"][2]["DataType"]
	local nComplete2 = tNewVersionWarmUp_Data["Stc"][2]["Completed"]
	Task_StcReset(nEventType2,nDataType2) -- 隔天
	if Task_ChkStcValue(nEventType2,nDataType2,">=",nComplete2) then
		tNpcGossip[23598]["Option4"]=NewVersionWarmUp_Text[23598]["Option9"]
	else
		tNpcGossip[23598]["Option4"]=NewVersionWarmUp_Text[23598]["Option4"]
	end 
	return true
end 
tNpcGossip[23598]["OptionFunc4"]="NewVersionWarmUp_Likey</N>2"

tNpcGossip[23598]["OptionChkFunc5"] = function()
	local nEventType3=tNewVersionWarmUp_Data["Stc"][3]["EventType"]
	local nDataType3=tNewVersionWarmUp_Data["Stc"][3]["DataType"]
	local nComplete3 = tNewVersionWarmUp_Data["Stc"][3]["Completed"]
	Task_StcReset(nEventType3,nDataType3) -- 隔天
	if Task_ChkStcValue(nEventType3,nDataType3,">=",nComplete3) then
		tNpcGossip[23598]["Option5"]=NewVersionWarmUp_Text[23598]["Option10"]
	else
		tNpcGossip[23598]["Option5"]=NewVersionWarmUp_Text[23598]["Option5"]
	end 
	return true
end 
tNpcGossip[23598]["OptionFunc5"]="NewVersionWarmUp_Likey</N>3"

tNpcGossip[23598]["OptionChkFunc6"] = function()
	local nEventType4=tNewVersionWarmUp_Data["Stc"][4]["EventType"]
	local nDataType4=tNewVersionWarmUp_Data["Stc"][4]["DataType"]
	local nComplete4 = tNewVersionWarmUp_Data["Stc"][4]["Completed"]
	Task_StcReset(nEventType4,nDataType4) -- 隔天
	if Task_ChkStcValue(nEventType4,nDataType4,">=",nComplete4) then
		tNpcGossip[23598]["Option6"]=NewVersionWarmUp_Text[23598]["Option11"]
	else
		tNpcGossip[23598]["Option6"]=NewVersionWarmUp_Text[23598]["Option6"]
	end 
	return true
end 
tNpcGossip[23598]["OptionFunc6"]="NewVersionWarmUp_Likey</N>4"

tNpcGossip[23598]["OptionFunc7"] = "NewVersionWarmUp_Link"


