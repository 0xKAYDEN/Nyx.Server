------------------------------------------------------------------------------------
--Name:			150525[阿语征服][活动脚本]宰牲节(9.23-9.30)-送肉
--Purpose:		宰牲节活动(9.23-9.30)-杀怪
--Creator:		张世超
--Created:		2015/05/12
------------------------------------------------------------------------------------
--复用自2014年宰牲节活动

--命名前缀
--EidalAdha2015_Beef_

--掩码说明
--送肉	10002249	stc(127,68)-stc(127,73) 5个存npcid、1个任务进度。

--常量表配置

--npc头像表
local tEidalAdha2015_Beef_NpcFace = {}
	tEidalAdha2015_Beef_NpcFace["Richman"] = 42
	tEidalAdha2015_Beef_NpcFace["Poorman1"] = 185
	tEidalAdha2015_Beef_NpcFace["Poorman2"] = 176
	tEidalAdha2015_Beef_NpcFace["Poorman3"] = 165
	tEidalAdha2015_Beef_NpcFace["Poorman4"] = 48
	tEidalAdha2015_Beef_NpcFace["Poorman5"] = 154
	tEidalAdha2015_Beef_NpcFace["Poorman6"] = 57
	tEidalAdha2015_Beef_NpcFace["Poorman7"] = 108
	tEidalAdha2015_Beef_NpcFace["Poorman8"] = 60

	--其他活动数据表
local tEidalAdha2015_Beef_Cont = {}
	--任务物品id
	tEidalAdha2015_Beef_Cont["Beef"] = 3004457
	tEidalAdha2015_Beef_Cont["BeefNum"]	= 5
	--背包空间
	tEidalAdha2015_Beef_Cont["ExtraReward"] = 723700
	tEidalAdha2015_Beef_Cont["BagSpace"] = 1
	
	--礼包相关
	tEidalAdha2015_Beef_Cont["FestivalId"] = 3307
	tEidalAdha2015_Beef_Cont["LogId"] = 10002249
	--活动时间
	tEidalAdha2015_Beef_Cont['BeforeActivityTime'] = '2015-01-12 00:00 2017-09-01 23:59'
	tEidalAdha2015_Beef_Cont['ActivityTime'] = '2017-09-02 00:00 2017-09-08 23:59'
	--玩家等级需求
	tEidalAdha2015_Beef_Cont['Metempsychosis'] = 0
	tEidalAdha2015_Beef_Cont['Level'] = 80
	
--stc(127,73) =>任务进度   =1 领肉 =2-6送肉次数 =7领奖
	tEidalAdha2015_Beef_Cont["Phase"] = {}
	tEidalAdha2015_Beef_Cont["Phase"]["StcEvent"] = 127
	tEidalAdha2015_Beef_Cont["Phase"]["StcType"] = 73
	tEidalAdha2015_Beef_Cont["Phase"]["Start"] = 1
	tEidalAdha2015_Beef_Cont["Phase"]["Complete"] = 6
	tEidalAdha2015_Beef_Cont["Phase"]["Awarded"] = 7

--stc(127,68)-stc(127,72) =>记录已送肉npc
	tEidalAdha2015_Beef_Cont["Poorman"] = {}	
	tEidalAdha2015_Beef_Cont["Poorman"]["StcEvent"] = {}
	tEidalAdha2015_Beef_Cont["Poorman"]["StcType"] = {}

	tEidalAdha2015_Beef_Cont["Poorman"]["StcEvent"][1] = 127
	tEidalAdha2015_Beef_Cont["Poorman"]["StcEvent"][2] = 127
	tEidalAdha2015_Beef_Cont["Poorman"]["StcEvent"][3] = 127
	tEidalAdha2015_Beef_Cont["Poorman"]["StcEvent"][4] = 127
	tEidalAdha2015_Beef_Cont["Poorman"]["StcEvent"][5] = 127
	tEidalAdha2015_Beef_Cont["Poorman"]["StcType"][1] = 68
	tEidalAdha2015_Beef_Cont["Poorman"]["StcType"][2] = 69
	tEidalAdha2015_Beef_Cont["Poorman"]["StcType"][3] = 70
	tEidalAdha2015_Beef_Cont["Poorman"]["StcType"][4] = 71
	tEidalAdha2015_Beef_Cont["Poorman"]["StcType"][5] = 72

--log表
local tEidalAdha2015_Beef_Log = {}
	tEidalAdha2015_Beef_Log["LogId"] = "10002249"
	tEidalAdha2015_Beef_Log["GetBeef"] = "0,0,0,0,10002249,1[1],3004457,5"
	tEidalAdha2015_Beef_Log["DeliverBeef"] = "0,0,3004457,1,10002249,1[%s],0,0"
	tEidalAdha2015_Beef_Log["ExtraReward"] = "0,0,3004457,1,10002249,1[%s],723700,1"
	tEidalAdha2015_Beef_Log["Award"] = "0,0,0,0,10002249,2,3003625,1"
	tEidalAdha2015_Beef_Log["DeleteBeef"] = "0,0,3004457,5,10002249,3,0,0"





------------------------逻辑部分--------------------------
--隔天清掩码
function EidalAdha2015_Beef_ClearStc()
	local nEvent = tEidalAdha2015_Beef_Cont["Phase"]["StcEvent"]
	local nType = tEidalAdha2015_Beef_Cont["Phase"]["StcType"]
	if (Task_ChkStcValue(nEvent,nType,">=",tEidalAdha2015_Beef_Cont["Phase"]["Awarded"]) and Task_StcInterval(nEvent,nType,1,4)) then
		Task_SetStatistic(nEvent,nType,0,1)
	    Task_SetStcTimestamp(nEvent,nType,0)
		for i=1,#tEidalAdha2015_Beef_Cont["Poorman"]["StcType"] do
			Task_SetStatistic(tEidalAdha2015_Beef_Cont["Poorman"]["StcEvent"][i],tEidalAdha2015_Beef_Cont["Poorman"]["StcType"][i],0,1)
		end
		EidalAdha2015_Ceremony_ResetAllStc()
	end
	
end		

	--土豪磊		
function EidalAdha2015_Beef_Richman()
	local nNpcId = Get_NpcId()
	--活动前对白
	if Sys_ChkFullTime(tEidalAdha2015_Beef_Cont['BeforeActivityTime']) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	--活动后对白
	if not Sys_ChkFullTime(tEidalAdha2015_Beef_Cont['ActivityTime']) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--活动中
	EidalAdha2015_Beef_ClearStc()
	LinkNpcGossipFunc_New(nNpcId,"1-3")
end

	--领肉。
function EidalAdha2015_Beef_Beef(nNpcId)
	local nEvent = tEidalAdha2015_Beef_Cont["Phase"]["StcEvent"]
	local nType = tEidalAdha2015_Beef_Cont["Phase"]["StcType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)

	if not Sys_ChkFullTime(tEidalAdha2015_Beef_Cont['ActivityTime']) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--参加活动，第一次领肉
	if Task_ChkStcValue(nEvent,nType,"==",0) or (not Task_ChkStatistic(nEvent,nType)) then
		--判断等级
		if not User_JudgeLevelAndMetempsychosis(tEidalAdha2015_Beef_Cont['Level'],tEidalAdha2015_Beef_Cont['Metempsychosis']) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
			
		Task_SetStatistic(nEvent,nType,tEidalAdha2015_Beef_Cont["Phase"]["Start"],0)
		Task_SetStcTimestamp(nEvent,nType,0)
		EidalAdha2015_Beef_GetBeef(nNpcId)
		Sys_SaveActionFestivalLog(tEidalAdha2015_Beef_Log["GetBeef"])
		return
	end
		
	--补领
	if Task_ChkStcValue(nEvent,nType,">=",tEidalAdha2015_Beef_Cont["Phase"]["Complete"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	else
		EidalAdha2015_Beef_GetBeef(nNpcId)
	end
end

function EidalAdha2015_Beef_GetBeef(nNpcId)
	local nEvent = tEidalAdha2015_Beef_Cont["Phase"]["StcEvent"]
	local nType = tEidalAdha2015_Beef_Cont["Phase"]["StcType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)

	EidalAdha2015_Beef_Delete()
	
	--背包空间判断
	if not User_CheckLeftSpace(tEidalAdha2015_Beef_Cont["BagSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end	
	
	for i=1,(tEidalAdha2015_Beef_Cont["BeefNum"]+1-nValue) do
		Item_AddItem(tEidalAdha2015_Beef_Cont["Beef"])
	end
	LinkNpcGossipFunc_New(nNpcId,"3-2")
	User_TalkChannel2005(EidalAdha2015_Beef__Text["MsgBox"]["GetBeef"])
end	
	--领取奖赏。
function EidalAdha2015_Beef_Award(nNpcId)
	local nEvent = tEidalAdha2015_Beef_Cont["Phase"]["StcEvent"]
	local nType = tEidalAdha2015_Beef_Cont["Phase"]["StcType"]

	--活动时间判断
	if not Sys_ChkFullTime(tEidalAdha2015_Beef_Cont['ActivityTime']) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--判断任务阶段
	--任务未完成
	if not Task_ChkStatistic(nEvent,nType) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end	
	--已领取奖励
	if Task_ChkStcValue(nEvent,nType,">=",tEidalAdha2015_Beef_Cont["Phase"]["Awarded"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end	
	--任务未完成 <6
	if not Task_ChkStcValue(nEvent,nType,"==",tEidalAdha2015_Beef_Cont["Phase"]["Complete"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	else
	
		EidalAdha2015_Beef_Delete()
		--判断背包
		if not User_CheckLeftSpace(tEidalAdha2015_Beef_Cont["BagSpace"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-4")
	        return
		end
		--打掩码，发奖励
		Task_SetStatistic(nEvent,nType,tEidalAdha2015_Beef_Cont["Phase"]["Awarded"],1)
		Task_SetStcTimestamp(nEvent,nType,0) 
		User_EffectAdd("self","zf2-e280")
		FestivalGeneralPackage_GetGift(tEidalAdha2015_Beef_Cont["FestivalId"],tEidalAdha2015_Beef_Cont["LogId"])
		EidalAdha2015_Ceremony_AllComplete()
		Sys_SaveActionLog(tEidalAdha2015_Beef_Log["Award"])
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end		
end	
	--删除任务物品
function EidalAdha2015_Beef_Delete()
	-- while Item_ChkItem(tEidalAdha2015_Beef_Cont["Beef"]) do
	-- Item_DelItem(tEidalAdha2015_Beef_Cont["Beef"])
	-- end
	if Item_ChkItem(tEidalAdha2015_Beef_Cont["Beef"]) then
		Item_DelAllItemByType(tEidalAdha2015_Beef_Cont["Beef"])
	end
end

--穷人们
function EidalAdha2015_Beef_Poorman()
	local nNpcId = Get_NpcId()
	local nEvent = tEidalAdha2015_Beef_Cont["Phase"]["StcEvent"]
	local nType = tEidalAdha2015_Beef_Cont["Phase"]["StcType"]
	
	if not Sys_ChkFullTime(tEidalAdha2015_Beef_Cont['ActivityTime']) then
		EidalAdha2015_Beef_FreeChat(nNpcId)
		return
	end
	if Task_ChkStcValue(nEvent,nType,"==",0) or (not Task_ChkStatistic(nEvent,nType)) or Task_ChkStcValue(nEvent,nType,">=",tEidalAdha2015_Beef_Cont["Phase"]["Awarded"]) then
		EidalAdha2015_Beef_FreeChat(nNpcId)
		return
	end
	if Task_ChkStcValue(nEvent,nType,"==",tEidalAdha2015_Beef_Cont["Phase"]["Complete"]) then
		--已分发完毕对白
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	else
		for i=1,#tEidalAdha2015_Beef_Cont["Poorman"]["StcType"] do
			if Task_ChkStcValue(tEidalAdha2015_Beef_Cont["Poorman"]["StcEvent"][i],tEidalAdha2015_Beef_Cont["Poorman"]["StcType"][i],"==",nNpcId) then
				--已送过对白
				LinkNpcGossipFunc_New(nNpcId,"1-6")
				return
			end
		end
		--送肉对白
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end	
end




	--闲聊对白
function EidalAdha2015_Beef_FreeChat(nNpcId)
	local nRandom = math.random(1,4)
	if nRandom == 1 then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	elseif nRandom == 2 then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	elseif nRandom == 3 then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-4")
	end	
end

function EidalAdha2015_Beef_Deliver(nNpcId)
	local nRandom = math.random(1,100)
	if not Sys_ChkFullTime(tEidalAdha2015_Beef_Cont['ActivityTime']) then
		EidalAdha2015_Beef_FreeChat(nNpcId)
		return
	end
	--没有任务物品
	if not Item_ChkItem(tEidalAdha2015_Beef_Cont["Beef"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	--20%送肉失败
	if nRandom <= 20 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	--送肉成功
	EidalAdha2015_Beef_DeliverSuccess(nNpcId)
end


function EidalAdha2015_Beef_DeliverSuccess(nNpcId)
	local nEvent = tEidalAdha2015_Beef_Cont["Phase"]["StcEvent"]
	local nType = tEidalAdha2015_Beef_Cont["Phase"]["StcType"]
	local nTime = Get_UserStatisticValue(nEvent,nType)
	local sLog = tEidalAdha2015_Beef_Log["DeliverBeef"]
	--删除任务物品、打掩码
	if Item_ChkItem(tEidalAdha2015_Beef_Cont["Beef"]) then
		Item_DelItem(tEidalAdha2015_Beef_Cont["Beef"])
		nTime = nTime+1
		Task_SetStatistic(nEvent,nType,nTime,1) 
		for i=1,#tEidalAdha2015_Beef_Cont["Poorman"]["StcType"] do
			if Task_ChkStcValue(tEidalAdha2015_Beef_Cont["Poorman"]["StcEvent"][i],tEidalAdha2015_Beef_Cont["Poorman"]["StcType"][i],"==",0) or (not Task_ChkStatistic(tEidalAdha2015_Beef_Cont["Poorman"]["StcEvent"][i],tEidalAdha2015_Beef_Cont["Poorman"]["StcType"][i])) then
				--存入npcid
				Task_SetStatistic(tEidalAdha2015_Beef_Cont["Poorman"]["StcEvent"][i],tEidalAdha2015_Beef_Cont["Poorman"]["StcType"][i],nNpcId,1) 
				break
			end
		end
		sLog = string.format(sLog,nTime)
		Sys_SaveActionLog(sLog)
		--额外奖励
		EidalAdha2015_Beef_ExtraReward(nNpcId,nTime)
		User_EffectAdd("self","angelwing")
	else
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end	
	
	
	
	
end

function EidalAdha2015_Beef_ExtraReward(nNpcId,nTime)
	local sLog = tEidalAdha2015_Beef_Log["ExtraReward"]
	local nRandom = math.random(1,80)
	if nRandom <= 5 then
		if not User_CheckLeftSpace(tEidalAdha2015_Beef_Cont["BagSpace"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		else
			Item_AddItem(tEidalAdha2015_Beef_Cont["ExtraReward"])
			sLog = string.format(sLog,nTime)
			Sys_SaveActionLog(sLog)
			LinkNpcGossipFunc_New(nNpcId,"2-5")
			return
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return	
	end	
end

------------------------------------------NPC头像-------------------------------------------
tNpcFace[3113] = tEidalAdha2015_Beef_NpcFace["Richman"]
tNpcFace[3114] = tEidalAdha2015_Beef_NpcFace["Poorman1"]
tNpcFace[3115] = tEidalAdha2015_Beef_NpcFace["Poorman2"]
tNpcFace[3116] = tEidalAdha2015_Beef_NpcFace["Poorman3"]
tNpcFace[3117] = tEidalAdha2015_Beef_NpcFace["Poorman4"]
tNpcFace[3118] = tEidalAdha2015_Beef_NpcFace["Poorman5"]
tNpcFace[3119] = tEidalAdha2015_Beef_NpcFace["Poorman6"]
tNpcFace[3120] = tEidalAdha2015_Beef_NpcFace["Poorman7"]
tNpcFace[3121] = tEidalAdha2015_Beef_NpcFace["Poorman8"]
------------------------------------------NPC对话-------------------------------------------
tNpcGossip[16898] = tNpcGossip[16898] or DefaultNpc:new{}
tNpcGossip[16899] = tNpcGossip[16899] or DefaultNpc:new{}
tNpcGossip[16900] = tNpcGossip[16900] or DefaultNpc:new{}
tNpcGossip[16901] = tNpcGossip[16901] or DefaultNpc:new{}
tNpcGossip[16902] = tNpcGossip[16902] or DefaultNpc:new{}
tNpcGossip[16903] = tNpcGossip[16903] or DefaultNpc:new{}
tNpcGossip[16904] = tNpcGossip[16904] or DefaultNpc:new{}
tNpcGossip[16905] = tNpcGossip[16905] or DefaultNpc:new{}
tNpcGossip[16906] = tNpcGossip[16906] or DefaultNpc:new{}

tNpcGossip[16898]["OptionHidden"] = 1
tNpcGossip[16899]["OptionHidden"] = 1
tNpcGossip[16900]["OptionHidden"] = 1
tNpcGossip[16901]["OptionHidden"] = 1
tNpcGossip[16902]["OptionHidden"] = 1
tNpcGossip[16903]["OptionHidden"] = 1
tNpcGossip[16904]["OptionHidden"] = 1
tNpcGossip[16905]["OptionHidden"] = 1
tNpcGossip[16906]["OptionHidden"] = 1

tNpcGossip[16898]["Text1-1"] = {111,112}
tNpcGossip[16898]["tOption1-1"] = {1}
tNpcGossip[16898]["Text111"] = EidalAdha2015_Beef__Text[16898]["Text111"]
tNpcGossip[16898]["Text112"] = EidalAdha2015_Beef__Text[16898]["Text112"]
tNpcGossip[16898]["Option1"] = EidalAdha2015_Beef__Text[16898]["Option1"]

tNpcGossip[16898]["Text1-2"] = {121}
tNpcGossip[16898]["tOption1-2"] = {2}
tNpcGossip[16898]["Text121"] = EidalAdha2015_Beef__Text[16898]["Text121"]
tNpcGossip[16898]["Option2"] = EidalAdha2015_Beef__Text[16898]["Option2"]

tNpcGossip[16898]["Text1-3"] = {131,132,133}
tNpcGossip[16898]["tOption1-3"] = {3,4,5,6}
tNpcGossip[16898]["Text131"] = EidalAdha2015_Beef__Text[16898]["Text131"]
tNpcGossip[16898]["Text132"] = EidalAdha2015_Beef__Text[16898]["Text132"]
tNpcGossip[16898]["Text133"] = EidalAdha2015_Beef__Text[16898]["Text133"]
tNpcGossip[16898]["Option3"] = EidalAdha2015_Beef__Text[16898]["Option3"]
tNpcGossip[16898]["Option4"] = EidalAdha2015_Beef__Text[16898]["Option4"]
tNpcGossip[16898]["Option5"] = EidalAdha2015_Beef__Text[16898]["Option5"]
tNpcGossip[16898]["Option6"] = EidalAdha2015_Beef__Text[16898]["Option6"]
tNpcGossip[16898]["OptionFunc3"] = "EidalAdha2015_Beef_Beef</N>16898"
tNpcGossip[16898]["OptionFunc4"] = "EidalAdha2015_Beef_Award</N>16898"
tNpcGossip[16898]["OptionPoint5"] = "2"
tNpcGossip[16898]["OptionChkFunc3"] = function ()
	local nEvent = tEidalAdha2015_Beef_Cont["Phase"]["StcEvent"]
	local nType = tEidalAdha2015_Beef_Cont["Phase"]["StcType"]
	return not Task_ChkStcValue(nEvent,nType,">=",tEidalAdha2015_Beef_Cont["Phase"]["Complete"])
end
tNpcGossip[16898]["OptionChkFunc4"] = function ()
	local nEvent = tEidalAdha2015_Beef_Cont["Phase"]["StcEvent"]
	local nType = tEidalAdha2015_Beef_Cont["Phase"]["StcType"]
	return Task_ChkStcValue(nEvent,nType,">=",tEidalAdha2015_Beef_Cont["Phase"]["Complete"])
end

--我该怎么做呢？
tNpcGossip[16898]["Text2-1"] = {211,212,213}
tNpcGossip[16898]["tOption2-1"] = {10}
tNpcGossip[16898]["Text211"] = EidalAdha2015_Beef__Text[16898]["Text211"]
tNpcGossip[16898]["Text212"] = EidalAdha2015_Beef__Text[16898]["Text212"]
tNpcGossip[16898]["Text213"] = EidalAdha2015_Beef__Text[16898]["Text213"]
tNpcGossip[16898]["Option10"] = EidalAdha2015_Beef__Text[16898]["Option10"]

--等级不足
tNpcGossip[16898]["Text3-1"] = {311,312}
tNpcGossip[16898]["tOption3-1"] = {20}
tNpcGossip[16898]["Text311"] = EidalAdha2015_Beef__Text[16898]["Text311"]
tNpcGossip[16898]["Text312"] = EidalAdha2015_Beef__Text[16898]["Text312"]
tNpcGossip[16898]["Option20"] = EidalAdha2015_Beef__Text[16898]["Option20"]

--背包满
tNpcGossip[16898]["Text3-4"] = {341,342}
tNpcGossip[16898]["tOption3-4"] = {21}
tNpcGossip[16898]["Text341"] = EidalAdha2015_Beef__Text[16898]["Text341"]
tNpcGossip[16898]["Text342"] = EidalAdha2015_Beef__Text[16898]["Text342"]
tNpcGossip[16898]["Option21"] = EidalAdha2015_Beef__Text[16898]["Option21"]

--领取肉成功
tNpcGossip[16898]["Text3-2"] = {321,322,323}
tNpcGossip[16898]["tOption3-2"] = {22}
tNpcGossip[16898]["Text321"] = EidalAdha2015_Beef__Text[16898]["Text321"]
tNpcGossip[16898]["Text322"] = EidalAdha2015_Beef__Text[16898]["Text322"]
tNpcGossip[16898]["Text323"] = EidalAdha2015_Beef__Text[16898]["Text323"]
tNpcGossip[16898]["Option22"] = EidalAdha2015_Beef__Text[16898]["Option22"]

--已完成分肉
tNpcGossip[16898]["Text3-3"] = {331}
tNpcGossip[16898]["tOption3-3"] = {22}
tNpcGossip[16898]["Text331"] = EidalAdha2015_Beef__Text[16898]["Text331"]

--未完成
tNpcGossip[16898]["Text4-1"] = {411}
tNpcGossip[16898]["tOption4-1"] = {30}
tNpcGossip[16898]["Text411"] = EidalAdha2015_Beef__Text[16898]["Text411"]

--已领奖
tNpcGossip[16898]["Text4-2"] = {421,422,423}
tNpcGossip[16898]["tOption4-2"] = {30}
tNpcGossip[16898]["Text421"] = EidalAdha2015_Beef__Text[16898]["Text421"]
tNpcGossip[16898]["Text422"] = EidalAdha2015_Beef__Text[16898]["Text422"]
tNpcGossip[16898]["Text423"] = EidalAdha2015_Beef__Text[16898]["Text423"]
tNpcGossip[16898]["Option30"] = EidalAdha2015_Beef__Text[16898]["Option30"]

--领奖
tNpcGossip[16898]["Text4-3"] = {431,432}
tNpcGossip[16898]["tOption4-3"] = {31}
tNpcGossip[16898]["Text431"] = EidalAdha2015_Beef__Text[16898]["Text431"]
tNpcGossip[16898]["Text432"] = EidalAdha2015_Beef__Text[16898]["Text432"]
tNpcGossip[16898]["Option31"] = EidalAdha2015_Beef__Text[16898]["Option31"]



--闲聊
tNpcGossip[16899]["Text1-1"] = {111}
tNpcGossip[16899]["tOption1-1"] = {1}
tNpcGossip[16899]["Text111"] = EidalAdha2015_Beef__Text[16899]["Text111"]
tNpcGossip[16899]["Option1"] = EidalAdha2015_Beef__Text[16899]["Option1"]

tNpcGossip[16899]["Text1-2"] = {121}
tNpcGossip[16899]["tOption1-2"] = {2}
tNpcGossip[16899]["Text121"] = EidalAdha2015_Beef__Text[16899]["Text121"]
tNpcGossip[16899]["Option2"] = EidalAdha2015_Beef__Text[16899]["Option2"]

tNpcGossip[16899]["Text1-3"] = {131}
tNpcGossip[16899]["tOption1-3"] = {3}
tNpcGossip[16899]["Text131"] = EidalAdha2015_Beef__Text[16899]["Text131"]
tNpcGossip[16899]["Option3"] = EidalAdha2015_Beef__Text[16899]["Option3"]

tNpcGossip[16899]["Text1-4"] = {141}
tNpcGossip[16899]["tOption1-4"] = {4}
tNpcGossip[16899]["Text141"] = EidalAdha2015_Beef__Text[16899]["Text141"]
tNpcGossip[16899]["Option4"] = EidalAdha2015_Beef__Text[16899]["Option4"]

--已分发完
tNpcGossip[16899]["Text1-5"] = {151}
tNpcGossip[16899]["tOption1-5"] = {5}
tNpcGossip[16899]["Text151"] = EidalAdha2015_Beef__Text[16899]["Text151"]
tNpcGossip[16899]["Option5"] = EidalAdha2015_Beef__Text[16899]["Option5"]

--已分发过
tNpcGossip[16899]["Text1-6"] = {161}
tNpcGossip[16899]["tOption1-6"] = {6}
tNpcGossip[16899]["Text161"] = EidalAdha2015_Beef__Text[16899]["Text161"]
tNpcGossip[16899]["Option6"] = EidalAdha2015_Beef__Text[16899]["Option6"]
	
--	
tNpcGossip[16899]["Text2-1"] = {211}
tNpcGossip[16899]["tOption2-1"] = {10,11}
tNpcGossip[16899]["Text211"] = EidalAdha2015_Beef__Text[16899]["Text211"]
tNpcGossip[16899]["Option10"] = EidalAdha2015_Beef__Text[16899]["Option10"]
tNpcGossip[16899]["Option11"] = EidalAdha2015_Beef__Text[16899]["Option11"]
tNpcGossip[16899]["OptionFunc10"] = "EidalAdha2015_Beef_Deliver</N>16899"

--没有任务物品
tNpcGossip[16899]["Text2-2"] = {221}
tNpcGossip[16899]["tOption2-2"] = {20}
tNpcGossip[16899]["Text221"] = EidalAdha2015_Beef__Text[16899]["Text221"]
tNpcGossip[16899]["Option20"] = EidalAdha2015_Beef__Text[16899]["Option20"]

--送肉失败
tNpcGossip[16899]["Text2-3"] = {231}
tNpcGossip[16899]["tOption2-3"] = {21}
tNpcGossip[16899]["Text231"] = EidalAdha2015_Beef__Text[16899]["Text231"]
tNpcGossip[16899]["Option21"] = EidalAdha2015_Beef__Text[16899]["Option21"]

--普通送肉成功
tNpcGossip[16899]["Text2-4"] = {241}
tNpcGossip[16899]["tOption2-4"] = {22}
tNpcGossip[16899]["Text241"] = EidalAdha2015_Beef__Text[16899]["Text241"]
tNpcGossip[16899]["Option22"] = EidalAdha2015_Beef__Text[16899]["Option22"]

--获得额外奖励
tNpcGossip[16899]["Text2-5"] = {251}
tNpcGossip[16899]["tOption2-5"] = {23}
tNpcGossip[16899]["Text251"] = EidalAdha2015_Beef__Text[16899]["Text251"]
tNpcGossip[16899]["Option23"] = EidalAdha2015_Beef__Text[16899]["Option23"]

--闲聊
tNpcGossip[16900]["Text1-1"] = {111}
tNpcGossip[16900]["tOption1-1"] = {1}
tNpcGossip[16900]["Text111"] = EidalAdha2015_Beef__Text[16900]["Text111"]
tNpcGossip[16900]["Option1"] = EidalAdha2015_Beef__Text[16900]["Option1"]

tNpcGossip[16900]["Text1-2"] = {121}
tNpcGossip[16900]["tOption1-2"] = {2}
tNpcGossip[16900]["Text121"] = EidalAdha2015_Beef__Text[16900]["Text121"]
tNpcGossip[16900]["Option2"] = EidalAdha2015_Beef__Text[16900]["Option2"]

tNpcGossip[16900]["Text1-3"] = {131}
tNpcGossip[16900]["tOption1-3"] = {3}
tNpcGossip[16900]["Text131"] = EidalAdha2015_Beef__Text[16900]["Text131"]
tNpcGossip[16900]["Option3"] = EidalAdha2015_Beef__Text[16900]["Option3"]

tNpcGossip[16900]["Text1-4"] = {141}
tNpcGossip[16900]["tOption1-4"] = {4}
tNpcGossip[16900]["Text141"] = EidalAdha2015_Beef__Text[16900]["Text141"]
tNpcGossip[16900]["Option4"] = EidalAdha2015_Beef__Text[16900]["Option4"]

--已分发完
tNpcGossip[16900]["Text1-5"] = {151}
tNpcGossip[16900]["tOption1-5"] = {5}
tNpcGossip[16900]["Text151"] = EidalAdha2015_Beef__Text[16900]["Text151"]
tNpcGossip[16900]["Option5"] = EidalAdha2015_Beef__Text[16900]["Option5"]

--已分发过
tNpcGossip[16900]["Text1-6"] = {161}
tNpcGossip[16900]["tOption1-6"] = {6}
tNpcGossip[16900]["Text161"] = EidalAdha2015_Beef__Text[16900]["Text161"]
tNpcGossip[16900]["Option6"] = EidalAdha2015_Beef__Text[16900]["Option6"]
	
--	
tNpcGossip[16900]["Text2-1"] = {211}
tNpcGossip[16900]["tOption2-1"] = {10,11}
tNpcGossip[16900]["Text211"] = EidalAdha2015_Beef__Text[16900]["Text211"]
tNpcGossip[16900]["Option10"] = EidalAdha2015_Beef__Text[16900]["Option10"]
tNpcGossip[16900]["Option11"] = EidalAdha2015_Beef__Text[16900]["Option11"]
tNpcGossip[16900]["OptionFunc10"] = "EidalAdha2015_Beef_Deliver</N>16900"

--没有任务物品
tNpcGossip[16900]["Text2-2"] = {221}
tNpcGossip[16900]["tOption2-2"] = {20}
tNpcGossip[16900]["Text221"] = EidalAdha2015_Beef__Text[16900]["Text221"]
tNpcGossip[16900]["Option20"] = EidalAdha2015_Beef__Text[16900]["Option20"]

--送肉失败
tNpcGossip[16900]["Text2-3"] = {231}
tNpcGossip[16900]["tOption2-3"] = {21}
tNpcGossip[16900]["Text231"] = EidalAdha2015_Beef__Text[16900]["Text231"]
tNpcGossip[16900]["Option21"] = EidalAdha2015_Beef__Text[16900]["Option21"]

--普通送肉成功
tNpcGossip[16900]["Text2-4"] = {241}
tNpcGossip[16900]["tOption2-4"] = {22}
tNpcGossip[16900]["Text241"] = EidalAdha2015_Beef__Text[16900]["Text241"]
tNpcGossip[16900]["Option22"] = EidalAdha2015_Beef__Text[16900]["Option22"]

--获得额外奖励
tNpcGossip[16900]["Text2-5"] = {251}
tNpcGossip[16900]["tOption2-5"] = {23}
tNpcGossip[16900]["Text251"] = EidalAdha2015_Beef__Text[16900]["Text251"]
tNpcGossip[16900]["Option23"] = EidalAdha2015_Beef__Text[16900]["Option23"]


--闲聊
tNpcGossip[16901]["Text1-1"] = {111}
tNpcGossip[16901]["tOption1-1"] = {1}
tNpcGossip[16901]["Text111"] = EidalAdha2015_Beef__Text[16901]["Text111"]
tNpcGossip[16901]["Option1"] = EidalAdha2015_Beef__Text[16901]["Option1"]

tNpcGossip[16901]["Text1-2"] = {121}
tNpcGossip[16901]["tOption1-2"] = {2}
tNpcGossip[16901]["Text121"] = EidalAdha2015_Beef__Text[16901]["Text121"]
tNpcGossip[16901]["Option2"] = EidalAdha2015_Beef__Text[16901]["Option2"]

tNpcGossip[16901]["Text1-3"] = {131}
tNpcGossip[16901]["tOption1-3"] = {3}
tNpcGossip[16901]["Text131"] = EidalAdha2015_Beef__Text[16901]["Text131"]
tNpcGossip[16901]["Option3"] = EidalAdha2015_Beef__Text[16901]["Option3"]

tNpcGossip[16901]["Text1-4"] = {141}
tNpcGossip[16901]["tOption1-4"] = {4}
tNpcGossip[16901]["Text141"] = EidalAdha2015_Beef__Text[16901]["Text141"]
tNpcGossip[16901]["Option4"] = EidalAdha2015_Beef__Text[16901]["Option4"]

--已分发完
tNpcGossip[16901]["Text1-5"] = {151}
tNpcGossip[16901]["tOption1-5"] = {5}
tNpcGossip[16901]["Text151"] = EidalAdha2015_Beef__Text[16901]["Text151"]
tNpcGossip[16901]["Option5"] = EidalAdha2015_Beef__Text[16901]["Option5"]

--已分发过
tNpcGossip[16901]["Text1-6"] = {161}
tNpcGossip[16901]["tOption1-6"] = {6}
tNpcGossip[16901]["Text161"] = EidalAdha2015_Beef__Text[16901]["Text161"]
tNpcGossip[16901]["Option6"] = EidalAdha2015_Beef__Text[16901]["Option6"]
	
--	
tNpcGossip[16901]["Text2-1"] = {211}
tNpcGossip[16901]["tOption2-1"] = {10,11}
tNpcGossip[16901]["Text211"] = EidalAdha2015_Beef__Text[16901]["Text211"]
tNpcGossip[16901]["Option10"] = EidalAdha2015_Beef__Text[16901]["Option10"]
tNpcGossip[16901]["Option11"] = EidalAdha2015_Beef__Text[16901]["Option11"]
tNpcGossip[16901]["OptionFunc10"] = "EidalAdha2015_Beef_Deliver</N>16901"

--没有任务物品
tNpcGossip[16901]["Text2-2"] = {221}
tNpcGossip[16901]["tOption2-2"] = {20}
tNpcGossip[16901]["Text221"] = EidalAdha2015_Beef__Text[16901]["Text221"]
tNpcGossip[16901]["Option20"] = EidalAdha2015_Beef__Text[16901]["Option20"]

--送肉失败
tNpcGossip[16901]["Text2-3"] = {231}
tNpcGossip[16901]["tOption2-3"] = {21}
tNpcGossip[16901]["Text231"] = EidalAdha2015_Beef__Text[16901]["Text231"]
tNpcGossip[16901]["Option21"] = EidalAdha2015_Beef__Text[16901]["Option21"]

--普通送肉成功
tNpcGossip[16901]["Text2-4"] = {241}
tNpcGossip[16901]["tOption2-4"] = {22}
tNpcGossip[16901]["Text241"] = EidalAdha2015_Beef__Text[16901]["Text241"]
tNpcGossip[16901]["Option22"] = EidalAdha2015_Beef__Text[16901]["Option22"]

--获得额外奖励
tNpcGossip[16901]["Text2-5"] = {251}
tNpcGossip[16901]["tOption2-5"] = {23}
tNpcGossip[16901]["Text251"] = EidalAdha2015_Beef__Text[16901]["Text251"]
tNpcGossip[16901]["Option23"] = EidalAdha2015_Beef__Text[16901]["Option23"]

--闲聊
tNpcGossip[16902]["Text1-1"] = {111}
tNpcGossip[16902]["tOption1-1"] = {1}
tNpcGossip[16902]["Text111"] = EidalAdha2015_Beef__Text[16902]["Text111"]
tNpcGossip[16902]["Option1"] = EidalAdha2015_Beef__Text[16902]["Option1"]

tNpcGossip[16902]["Text1-2"] = {121}
tNpcGossip[16902]["tOption1-2"] = {2}
tNpcGossip[16902]["Text121"] = EidalAdha2015_Beef__Text[16902]["Text121"]
tNpcGossip[16902]["Option2"] = EidalAdha2015_Beef__Text[16902]["Option2"]

tNpcGossip[16902]["Text1-3"] = {131}
tNpcGossip[16902]["tOption1-3"] = {3}
tNpcGossip[16902]["Text131"] = EidalAdha2015_Beef__Text[16902]["Text131"]
tNpcGossip[16902]["Option3"] = EidalAdha2015_Beef__Text[16902]["Option3"]

tNpcGossip[16902]["Text1-4"] = {141}
tNpcGossip[16902]["tOption1-4"] = {4}
tNpcGossip[16902]["Text141"] = EidalAdha2015_Beef__Text[16902]["Text141"]
tNpcGossip[16902]["Option4"] = EidalAdha2015_Beef__Text[16902]["Option4"]

--已分发完
tNpcGossip[16902]["Text1-5"] = {151}
tNpcGossip[16902]["tOption1-5"] = {5}
tNpcGossip[16902]["Text151"] = EidalAdha2015_Beef__Text[16902]["Text151"]
tNpcGossip[16902]["Option5"] = EidalAdha2015_Beef__Text[16902]["Option5"]

--已分发过
tNpcGossip[16902]["Text1-6"] = {161}
tNpcGossip[16902]["tOption1-6"] = {6}
tNpcGossip[16902]["Text161"] = EidalAdha2015_Beef__Text[16902]["Text161"]
tNpcGossip[16902]["Option6"] = EidalAdha2015_Beef__Text[16902]["Option6"]
	
--	
tNpcGossip[16902]["Text2-1"] = {211}
tNpcGossip[16902]["tOption2-1"] = {10,11}
tNpcGossip[16902]["Text211"] = EidalAdha2015_Beef__Text[16902]["Text211"]
tNpcGossip[16902]["Option10"] = EidalAdha2015_Beef__Text[16902]["Option10"]
tNpcGossip[16902]["Option11"] = EidalAdha2015_Beef__Text[16902]["Option11"]
tNpcGossip[16902]["OptionFunc10"] = "EidalAdha2015_Beef_Deliver</N>16902"

--没有任务物品
tNpcGossip[16902]["Text2-2"] = {221}
tNpcGossip[16902]["tOption2-2"] = {20}
tNpcGossip[16902]["Text221"] = EidalAdha2015_Beef__Text[16902]["Text221"]
tNpcGossip[16902]["Option20"] = EidalAdha2015_Beef__Text[16902]["Option20"]

--送肉失败
tNpcGossip[16902]["Text2-3"] = {231}
tNpcGossip[16902]["tOption2-3"] = {21}
tNpcGossip[16902]["Text231"] = EidalAdha2015_Beef__Text[16902]["Text231"]
tNpcGossip[16902]["Option21"] = EidalAdha2015_Beef__Text[16902]["Option21"]

--普通送肉成功
tNpcGossip[16902]["Text2-4"] = {241}
tNpcGossip[16902]["tOption2-4"] = {22}
tNpcGossip[16902]["Text241"] = EidalAdha2015_Beef__Text[16902]["Text241"]
tNpcGossip[16902]["Option22"] = EidalAdha2015_Beef__Text[16902]["Option22"]

--获得额外奖励
tNpcGossip[16902]["Text2-5"] = {251}
tNpcGossip[16902]["tOption2-5"] = {23}
tNpcGossip[16902]["Text251"] = EidalAdha2015_Beef__Text[16902]["Text251"]
tNpcGossip[16902]["Option23"] = EidalAdha2015_Beef__Text[16902]["Option23"]

--闲聊
tNpcGossip[16903]["Text1-1"] = {111}
tNpcGossip[16903]["tOption1-1"] = {1}
tNpcGossip[16903]["Text111"] = EidalAdha2015_Beef__Text[16903]["Text111"]
tNpcGossip[16903]["Option1"] = EidalAdha2015_Beef__Text[16903]["Option1"]

tNpcGossip[16903]["Text1-2"] = {121}
tNpcGossip[16903]["tOption1-2"] = {2}
tNpcGossip[16903]["Text121"] = EidalAdha2015_Beef__Text[16903]["Text121"]
tNpcGossip[16903]["Option2"] = EidalAdha2015_Beef__Text[16903]["Option2"]

tNpcGossip[16903]["Text1-3"] = {131}
tNpcGossip[16903]["tOption1-3"] = {3}
tNpcGossip[16903]["Text131"] = EidalAdha2015_Beef__Text[16903]["Text131"]
tNpcGossip[16903]["Option3"] = EidalAdha2015_Beef__Text[16903]["Option3"]

tNpcGossip[16903]["Text1-4"] = {141}
tNpcGossip[16903]["tOption1-4"] = {4}
tNpcGossip[16903]["Text141"] = EidalAdha2015_Beef__Text[16903]["Text141"]
tNpcGossip[16903]["Option4"] = EidalAdha2015_Beef__Text[16903]["Option4"]

--已分发完
tNpcGossip[16903]["Text1-5"] = {151}
tNpcGossip[16903]["tOption1-5"] = {5}
tNpcGossip[16903]["Text151"] = EidalAdha2015_Beef__Text[16903]["Text151"]
tNpcGossip[16903]["Option5"] = EidalAdha2015_Beef__Text[16903]["Option5"]

--已分发过
tNpcGossip[16903]["Text1-6"] = {161}
tNpcGossip[16903]["tOption1-6"] = {6}
tNpcGossip[16903]["Text161"] = EidalAdha2015_Beef__Text[16903]["Text161"]
tNpcGossip[16903]["Option6"] = EidalAdha2015_Beef__Text[16903]["Option6"]
	
--	
tNpcGossip[16903]["Text2-1"] = {211}
tNpcGossip[16903]["tOption2-1"] = {10,11}
tNpcGossip[16903]["Text211"] = EidalAdha2015_Beef__Text[16903]["Text211"]
tNpcGossip[16903]["Option10"] = EidalAdha2015_Beef__Text[16903]["Option10"]
tNpcGossip[16903]["Option11"] = EidalAdha2015_Beef__Text[16903]["Option11"]
tNpcGossip[16903]["OptionFunc10"] = "EidalAdha2015_Beef_Deliver</N>16903"

--没有任务物品
tNpcGossip[16903]["Text2-2"] = {221}
tNpcGossip[16903]["tOption2-2"] = {20}
tNpcGossip[16903]["Text221"] = EidalAdha2015_Beef__Text[16903]["Text221"]
tNpcGossip[16903]["Option20"] = EidalAdha2015_Beef__Text[16903]["Option20"]

--送肉失败
tNpcGossip[16903]["Text2-3"] = {231}
tNpcGossip[16903]["tOption2-3"] = {21}
tNpcGossip[16903]["Text231"] = EidalAdha2015_Beef__Text[16903]["Text231"]
tNpcGossip[16903]["Option21"] = EidalAdha2015_Beef__Text[16903]["Option21"]

--普通送肉成功
tNpcGossip[16903]["Text2-4"] = {241}
tNpcGossip[16903]["tOption2-4"] = {22}
tNpcGossip[16903]["Text241"] = EidalAdha2015_Beef__Text[16903]["Text241"]
tNpcGossip[16903]["Option22"] = EidalAdha2015_Beef__Text[16903]["Option22"]

--获得额外奖励
tNpcGossip[16903]["Text2-5"] = {251}
tNpcGossip[16903]["tOption2-5"] = {23}
tNpcGossip[16903]["Text251"] = EidalAdha2015_Beef__Text[16903]["Text251"]
tNpcGossip[16903]["Option23"] = EidalAdha2015_Beef__Text[16903]["Option23"]


--闲聊
tNpcGossip[16904]["Text1-1"] = {111}
tNpcGossip[16904]["tOption1-1"] = {1}
tNpcGossip[16904]["Text111"] = EidalAdha2015_Beef__Text[16904]["Text111"]
tNpcGossip[16904]["Option1"] = EidalAdha2015_Beef__Text[16904]["Option1"]

tNpcGossip[16904]["Text1-2"] = {121}
tNpcGossip[16904]["tOption1-2"] = {2}
tNpcGossip[16904]["Text121"] = EidalAdha2015_Beef__Text[16904]["Text121"]
tNpcGossip[16904]["Option2"] = EidalAdha2015_Beef__Text[16904]["Option2"]

tNpcGossip[16904]["Text1-3"] = {131}
tNpcGossip[16904]["tOption1-3"] = {3}
tNpcGossip[16904]["Text131"] = EidalAdha2015_Beef__Text[16904]["Text131"]
tNpcGossip[16904]["Option3"] = EidalAdha2015_Beef__Text[16904]["Option3"]

tNpcGossip[16904]["Text1-4"] = {141}
tNpcGossip[16904]["tOption1-4"] = {4}
tNpcGossip[16904]["Text141"] = EidalAdha2015_Beef__Text[16904]["Text141"]
tNpcGossip[16904]["Option4"] = EidalAdha2015_Beef__Text[16904]["Option4"]

--已分发完
tNpcGossip[16904]["Text1-5"] = {151}
tNpcGossip[16904]["tOption1-5"] = {5}
tNpcGossip[16904]["Text151"] = EidalAdha2015_Beef__Text[16904]["Text151"]
tNpcGossip[16904]["Option5"] = EidalAdha2015_Beef__Text[16904]["Option5"]

--已分发过
tNpcGossip[16904]["Text1-6"] = {161}
tNpcGossip[16904]["tOption1-6"] = {6}
tNpcGossip[16904]["Text161"] = EidalAdha2015_Beef__Text[16904]["Text161"]
tNpcGossip[16904]["Option6"] = EidalAdha2015_Beef__Text[16904]["Option6"]
	
--	
tNpcGossip[16904]["Text2-1"] = {211}
tNpcGossip[16904]["tOption2-1"] = {10,11}
tNpcGossip[16904]["Text211"] = EidalAdha2015_Beef__Text[16904]["Text211"]
tNpcGossip[16904]["Option10"] = EidalAdha2015_Beef__Text[16904]["Option10"]
tNpcGossip[16904]["Option11"] = EidalAdha2015_Beef__Text[16904]["Option11"]
tNpcGossip[16904]["OptionFunc10"] = "EidalAdha2015_Beef_Deliver</N>16904"

--没有任务物品
tNpcGossip[16904]["Text2-2"] = {221}
tNpcGossip[16904]["tOption2-2"] = {20}
tNpcGossip[16904]["Text221"] = EidalAdha2015_Beef__Text[16904]["Text221"]
tNpcGossip[16904]["Option20"] = EidalAdha2015_Beef__Text[16904]["Option20"]

--送肉失败
tNpcGossip[16904]["Text2-3"] = {231}
tNpcGossip[16904]["tOption2-3"] = {21}
tNpcGossip[16904]["Text231"] = EidalAdha2015_Beef__Text[16904]["Text231"]
tNpcGossip[16904]["Option21"] = EidalAdha2015_Beef__Text[16904]["Option21"]

--普通送肉成功
tNpcGossip[16904]["Text2-4"] = {241}
tNpcGossip[16904]["tOption2-4"] = {22}
tNpcGossip[16904]["Text241"] = EidalAdha2015_Beef__Text[16904]["Text241"]
tNpcGossip[16904]["Option22"] = EidalAdha2015_Beef__Text[16904]["Option22"]

--获得额外奖励
tNpcGossip[16904]["Text2-5"] = {251}
tNpcGossip[16904]["tOption2-5"] = {23}
tNpcGossip[16904]["Text251"] = EidalAdha2015_Beef__Text[16904]["Text251"]
tNpcGossip[16904]["Option23"] = EidalAdha2015_Beef__Text[16904]["Option23"]


--闲聊
tNpcGossip[16905]["Text1-1"] = {111}
tNpcGossip[16905]["tOption1-1"] = {1}
tNpcGossip[16905]["Text111"] = EidalAdha2015_Beef__Text[16905]["Text111"]
tNpcGossip[16905]["Option1"] = EidalAdha2015_Beef__Text[16905]["Option1"]

tNpcGossip[16905]["Text1-2"] = {121}
tNpcGossip[16905]["tOption1-2"] = {2}
tNpcGossip[16905]["Text121"] = EidalAdha2015_Beef__Text[16905]["Text121"]
tNpcGossip[16905]["Option2"] = EidalAdha2015_Beef__Text[16905]["Option2"]

tNpcGossip[16905]["Text1-3"] = {131}
tNpcGossip[16905]["tOption1-3"] = {3}
tNpcGossip[16905]["Text131"] = EidalAdha2015_Beef__Text[16905]["Text131"]
tNpcGossip[16905]["Option3"] = EidalAdha2015_Beef__Text[16905]["Option3"]

tNpcGossip[16905]["Text1-4"] = {141}
tNpcGossip[16905]["tOption1-4"] = {4}
tNpcGossip[16905]["Text141"] = EidalAdha2015_Beef__Text[16905]["Text141"]
tNpcGossip[16905]["Option4"] = EidalAdha2015_Beef__Text[16905]["Option4"]

--已分发完
tNpcGossip[16905]["Text1-5"] = {151}
tNpcGossip[16905]["tOption1-5"] = {5}
tNpcGossip[16905]["Text151"] = EidalAdha2015_Beef__Text[16905]["Text151"]
tNpcGossip[16905]["Option5"] = EidalAdha2015_Beef__Text[16905]["Option5"]

--已分发过
tNpcGossip[16905]["Text1-6"] = {161}
tNpcGossip[16905]["tOption1-6"] = {6}
tNpcGossip[16905]["Text161"] = EidalAdha2015_Beef__Text[16905]["Text161"]
tNpcGossip[16905]["Option6"] = EidalAdha2015_Beef__Text[16905]["Option6"]
	
--	
tNpcGossip[16905]["Text2-1"] = {211}
tNpcGossip[16905]["tOption2-1"] = {10,11}
tNpcGossip[16905]["Text211"] = EidalAdha2015_Beef__Text[16905]["Text211"]
tNpcGossip[16905]["Option10"] = EidalAdha2015_Beef__Text[16905]["Option10"]
tNpcGossip[16905]["Option11"] = EidalAdha2015_Beef__Text[16905]["Option11"]
tNpcGossip[16905]["OptionFunc10"] = "EidalAdha2015_Beef_Deliver</N>16905"

--没有任务物品
tNpcGossip[16905]["Text2-2"] = {221}
tNpcGossip[16905]["tOption2-2"] = {20}
tNpcGossip[16905]["Text221"] = EidalAdha2015_Beef__Text[16905]["Text221"]
tNpcGossip[16905]["Option20"] = EidalAdha2015_Beef__Text[16905]["Option20"]

--送肉失败
tNpcGossip[16905]["Text2-3"] = {231}
tNpcGossip[16905]["tOption2-3"] = {21}
tNpcGossip[16905]["Text231"] = EidalAdha2015_Beef__Text[16905]["Text231"]
tNpcGossip[16905]["Option21"] = EidalAdha2015_Beef__Text[16905]["Option21"]

--普通送肉成功
tNpcGossip[16905]["Text2-4"] = {241}
tNpcGossip[16905]["tOption2-4"] = {22}
tNpcGossip[16905]["Text241"] = EidalAdha2015_Beef__Text[16905]["Text241"]
tNpcGossip[16905]["Option22"] = EidalAdha2015_Beef__Text[16905]["Option22"]

--获得额外奖励
tNpcGossip[16905]["Text2-5"] = {251}
tNpcGossip[16905]["tOption2-5"] = {23}
tNpcGossip[16905]["Text251"] = EidalAdha2015_Beef__Text[16905]["Text251"]
tNpcGossip[16905]["Option23"] = EidalAdha2015_Beef__Text[16905]["Option23"]


--闲聊
tNpcGossip[16906]["Text1-1"] = {111}
tNpcGossip[16906]["tOption1-1"] = {1}
tNpcGossip[16906]["Text111"] = EidalAdha2015_Beef__Text[16906]["Text111"]
tNpcGossip[16906]["Option1"] = EidalAdha2015_Beef__Text[16906]["Option1"]

tNpcGossip[16906]["Text1-2"] = {121}
tNpcGossip[16906]["tOption1-2"] = {2}
tNpcGossip[16906]["Text121"] = EidalAdha2015_Beef__Text[16906]["Text121"]
tNpcGossip[16906]["Option2"] = EidalAdha2015_Beef__Text[16906]["Option2"]

tNpcGossip[16906]["Text1-3"] = {131}
tNpcGossip[16906]["tOption1-3"] = {3}
tNpcGossip[16906]["Text131"] = EidalAdha2015_Beef__Text[16906]["Text131"]
tNpcGossip[16906]["Option3"] = EidalAdha2015_Beef__Text[16906]["Option3"]

tNpcGossip[16906]["Text1-4"] = {141}
tNpcGossip[16906]["tOption1-4"] = {4}
tNpcGossip[16906]["Text141"] = EidalAdha2015_Beef__Text[16906]["Text141"]
tNpcGossip[16906]["Option4"] = EidalAdha2015_Beef__Text[16906]["Option4"]

--已分发完
tNpcGossip[16906]["Text1-5"] = {151}
tNpcGossip[16906]["tOption1-5"] = {5}
tNpcGossip[16906]["Text151"] = EidalAdha2015_Beef__Text[16906]["Text151"]
tNpcGossip[16906]["Option5"] = EidalAdha2015_Beef__Text[16906]["Option5"]

--已分发过
tNpcGossip[16906]["Text1-6"] = {161}
tNpcGossip[16906]["tOption1-6"] = {6}
tNpcGossip[16906]["Text161"] = EidalAdha2015_Beef__Text[16906]["Text161"]
tNpcGossip[16906]["Option6"] = EidalAdha2015_Beef__Text[16906]["Option6"]
	
--	
tNpcGossip[16906]["Text2-1"] = {211}
tNpcGossip[16906]["tOption2-1"] = {10,11}
tNpcGossip[16906]["Text211"] = EidalAdha2015_Beef__Text[16906]["Text211"]
tNpcGossip[16906]["Option10"] = EidalAdha2015_Beef__Text[16906]["Option10"]
tNpcGossip[16906]["Option11"] = EidalAdha2015_Beef__Text[16906]["Option11"]
tNpcGossip[16906]["OptionFunc10"] = "EidalAdha2015_Beef_Deliver</N>16906"

--没有任务物品
tNpcGossip[16906]["Text2-2"] = {221}
tNpcGossip[16906]["tOption2-2"] = {20}
tNpcGossip[16906]["Text221"] = EidalAdha2015_Beef__Text[16906]["Text221"]
tNpcGossip[16906]["Option20"] = EidalAdha2015_Beef__Text[16906]["Option20"]

--送肉失败
tNpcGossip[16906]["Text2-3"] = {231}
tNpcGossip[16906]["tOption2-3"] = {21}
tNpcGossip[16906]["Text231"] = EidalAdha2015_Beef__Text[16906]["Text231"]
tNpcGossip[16906]["Option21"] = EidalAdha2015_Beef__Text[16906]["Option21"]

--普通送肉成功
tNpcGossip[16906]["Text2-4"] = {241}
tNpcGossip[16906]["tOption2-4"] = {22}
tNpcGossip[16906]["Text241"] = EidalAdha2015_Beef__Text[16906]["Text241"]
tNpcGossip[16906]["Option22"] = EidalAdha2015_Beef__Text[16906]["Option22"]

--获得额外奖励
tNpcGossip[16906]["Text2-5"] = {251}
tNpcGossip[16906]["tOption2-5"] = {23}
tNpcGossip[16906]["Text251"] = EidalAdha2015_Beef__Text[16906]["Text251"]
tNpcGossip[16906]["Option23"] = EidalAdha2015_Beef__Text[16906]["Option23"]

tItemFace[3004457] = 829
tItem[3004457] = tItem[3004457] or {}
tItem[3004457]["Function"] = function (nItemId,sItemName)
	-- 活动时间判断
	if not Sys_ChkFullTime(tEidalAdha2015_Beef_Cont['ActivityTime']) then
		-- 删除肉
		EidalAdha2015_Beef_Delete()
		Sys_SaveActionLog(tEidalAdha2015_Beef_Log["DeleteBeef"])
		User_TalkChannel2005(EidalAdha2015_Beef__Text["MsgBox"]["DeleteBeef"])
		return
	end
	LinkItemGossipFunc_New(3004457,"1-1")
end
tItem[3004457]["Text1-1"] = {111,112,113}
tItem[3004457]["Text111"] = EidalAdha2015_Beef__Text[16898]["Text2111"]
tItem[3004457]["Text112"] = EidalAdha2015_Beef__Text[16898]["Text212"]
tItem[3004457]["Text113"] = EidalAdha2015_Beef__Text[16898]["Text213"]
tItem[3004457]["Text113"] = EidalAdha2015_Beef__Text[16898]["Option10"]
tItem[3004457]["tOption1-1"] = {1}
tItem[3004457]["Option1"] = EidalAdha2015_Beef__Text[16898]["Option10"]


