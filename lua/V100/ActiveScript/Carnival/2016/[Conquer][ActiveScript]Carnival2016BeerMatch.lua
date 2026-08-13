------------------------------------------------------------------------------------
--Name:		151201[阿语征服][活动脚本]2016狂欢节活动之喝啤酒比赛(3.13-3.23)
--Purpose:		2016狂欢节活动之喝啤酒比赛
--Creator:		许乐
--Created:		2015/12/01
------------------------------------------------------------------------------------
-- 前缀
-- Carnival_BeerMatch_
-----------------------------------------------------------
-- #任务需求
-- #【阿语征服】2016狂欢节活动
-- #
-- #复用2014阿语狂欢节
-- #活动日期：2016.3.13-2016.3.23

-- #====转LUA
-- #狂欢赛跑--魏贻逵
-- #出气筒公司--张世超
-- #篝火狂欢会--刘益辉制作，王倩娜审核
-- #美食狂欢节--林辉山制作，张磊审核
-- #对付醉鬼--黄昕哲
-- #喝啤酒比赛--许乐
-- #====由许乐整合
-----------------------------------------------------------
--掩码说明：
-- stc(139,51) 	表示是否领取奖励
-- stc(139,52)	表示任务挑战间隔5分钟
-- stc(139,53)	表示在30秒是否喝了12瓶
-- stc(139,54)	表示上次喝的啤酒是什么味道的
-- 饮料使用之后	第一次喝，眩晕2秒
--						连续喝相同的，眩晕4秒
-- 					喝到能缓解上一种的，不眩晕
-- 					喝无关的（与第一次喝相同）
-----------------------------------------------------------
-- #npc:			18933
-- #itemtype:	3008025-3008032
-- #stc:			13951-13954
-- #Logid:			12000270
---------------------------------------------------------------
local tCarnival_BeerMatch_Cont = {}
	tCarnival_BeerMatch_Cont["BeforeActivity"] = "2015-10-27 00:00 2017-03-01 23:59"
	tCarnival_BeerMatch_Cont["Activity"] = "2017-03-02 00:00 2017-03-08 23:59"
	
	--玩家等级要求
	tCarnival_BeerMatch_Cont["Metempsychosis"] = 0
	tCarnival_BeerMatch_Cont["Level"] = 80
	
local tCarnival_BeerMatch_Stc = {}
	tCarnival_BeerMatch_Stc["EventType"] = 139
	tCarnival_BeerMatch_Stc["DataType"] = {}
	-- stc(139,51) 	表示是否领取奖励
	tCarnival_BeerMatch_Stc["DataType"][1] = 51
	tCarnival_BeerMatch_Stc["Complete"] = 1			--领取奖励
	-- stc(139,52)	表示任务挑战间隔5分钟
	tCarnival_BeerMatch_Stc["DataType"][2] = 52
	tCarnival_BeerMatch_Stc["FiveMin"] = 300       --时间限制  5m
	-- stc(139,53)	表示在30秒是否喝了12瓶
	tCarnival_BeerMatch_Stc["DataType"][3] = 53
	tCarnival_BeerMatch_Stc["30Sec"] = 30       --时间限制  30s
	tCarnival_BeerMatch_Stc["Sum"] = 12			--12瓶
	-- stc(139,54)	表示上次喝的啤酒是什么味道的
	tCarnival_BeerMatch_Stc["DataType"][4] = 54
	-- 使用之后	第一次喝，眩晕2秒
	--					连续喝相同的，眩晕4秒
	-- 				喝到能缓解上一种的，不眩晕
	-- 				喝无关的（与第一次喝相同）
	tCarnival_BeerMatch_Stc["Item"] = {}		--每种味道代表的值
	tCarnival_BeerMatch_Stc["Item"][3008025] = 1
	tCarnival_BeerMatch_Stc["Item"][3008026] = 2
	tCarnival_BeerMatch_Stc["Item"][3008027] = 2
	tCarnival_BeerMatch_Stc["Item"][3008028] = 3
	tCarnival_BeerMatch_Stc["Item"][3008029] = 3
	tCarnival_BeerMatch_Stc["Item"][3008030] = 4
	tCarnival_BeerMatch_Stc["Item"][3008031] = 4
	tCarnival_BeerMatch_Stc["Item"][3008032] = 1
	
local tCarnival_BeerMatch_Item = {}
	tCarnival_BeerMatch_Item["BagSpace_1"] = 1
	tCarnival_BeerMatch_Item["BagSpace_4"] = 4
	tCarnival_BeerMatch_Item["ItemAttr"] = "0 3"

	tCarnival_BeerMatch_Item["ItemId"] = {}
	tCarnival_BeerMatch_Item["ItemId"][1] = 3008025		-- RiverBeer  又酸又咸的
	tCarnival_BeerMatch_Item["ItemId"][2] = 3008026		-- RiverBeer  又腥又膻的
	tCarnival_BeerMatch_Item["ItemId"][3] = 3008027		-- EmeraldBeer  又腥又膻的
	tCarnival_BeerMatch_Item["ItemId"][4] = 3008028		-- EmeraldBeer  又呛又辣的
	tCarnival_BeerMatch_Item["ItemId"][5] = 3008029		-- TulipBeer  又呛又辣的
	tCarnival_BeerMatch_Item["ItemId"][6] = 3008030		-- TulipBeer  又苦又涩的
	tCarnival_BeerMatch_Item["ItemId"][7] = 3008031		-- RoseBeer  又苦又涩的
	tCarnival_BeerMatch_Item["ItemId"][8] = 3008032		-- RoseBeer  又酸又咸的

	--随机某种味道的饮料   相同名称 味道不同
	tCarnival_BeerMatch_Item["Drink"] = {}
	tCarnival_BeerMatch_Item["Drink"][1] = {}
	tCarnival_BeerMatch_Item["Drink"][1]["ItemChanceSum"] = 10000
	
	tCarnival_BeerMatch_Item["Drink"][1][1] = {}
	tCarnival_BeerMatch_Item["Drink"][1][1]["RandomItemChanceType"] = 2
	tCarnival_BeerMatch_Item["Drink"][1][1]["ItemChance"] = 5000
	tCarnival_BeerMatch_Item["Drink"][1][1]["Item_1"] = 1
	
	tCarnival_BeerMatch_Item["Drink"][1][2] = {}
	tCarnival_BeerMatch_Item["Drink"][1][2]["RandomItemChanceType"] = 2
	tCarnival_BeerMatch_Item["Drink"][1][2]["ItemChance"] = 5000
	tCarnival_BeerMatch_Item["Drink"][1][2]["Item_1"] = 2
	
local tCarnival_BeerMatch_RandId = {}
	tCarnival_BeerMatch_RandId[1] = {}
	tCarnival_BeerMatch_RandId[1][1] = 3008025
	tCarnival_BeerMatch_RandId[1][2] = 3008026
	tCarnival_BeerMatch_RandId[2] = {}
	tCarnival_BeerMatch_RandId[2][1] = 3008027
	tCarnival_BeerMatch_RandId[2][2] = 3008028
	tCarnival_BeerMatch_RandId[3] = {}
	tCarnival_BeerMatch_RandId[3][1] = 3008029
	tCarnival_BeerMatch_RandId[3][2] = 3008030
	tCarnival_BeerMatch_RandId[4] = {}
	tCarnival_BeerMatch_RandId[4][1] = 3008031
	tCarnival_BeerMatch_RandId[4][2] = 3008032
	
local tCarnival_BeerMatch_Status = {}
	tCarnival_BeerMatch_Status["Status"] = 55
	tCarnival_BeerMatch_Status["Power"] = 200
	tCarnival_BeerMatch_Status["Times"] = 1
	tCarnival_BeerMatch_Status["EndTime"] = 1
	tCarnival_BeerMatch_Status["Recordable"] = 0
	
	tCarnival_BeerMatch_Status["Secs"] = {}
	tCarnival_BeerMatch_Status["Secs"][1] = 2
	tCarnival_BeerMatch_Status["Secs"][2] = 4
	tCarnival_BeerMatch_Status["Secs"][3] = 0
	
	tCarnival_BeerMatch_Status["RemainTime"] = {}
	tCarnival_BeerMatch_Status["RemainTime"][1] = 2
	tCarnival_BeerMatch_Status["RemainTime"][2] = 4
	tCarnival_BeerMatch_Status["RemainTime"][3] = 0

local tCarnival_BeerMatch_Log = {}
	tCarnival_BeerMatch_Log["DelItem"] = "0,0,%d,1,12000270,2,0,0"			--过期删除物品
	tCarnival_BeerMatch_Log["GetItem"] = "0,0,0,0,12000270,1[2],%d,3"		--获得饮料(各3个)
	tCarnival_BeerMatch_Log["LogId"] = 12000270
	tCarnival_BeerMatch_Log["FestivalId"] = 3373

------------------------------------------------逻辑部分-------------------------------------------------
--接3：I`m~in!
function Carnival_BeerMatch_GetTask(nNpcId)
	if not Sys_ChkFullTime(tCarnival_BeerMatch_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tCarnival_BeerMatch_Cont["Level"],tCarnival_BeerMatch_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	local nEvent = tCarnival_BeerMatch_Stc["EventType"]
	local nType = tCarnival_BeerMatch_Stc["DataType"][1]
	local nComplete = tCarnival_BeerMatch_Stc["Complete"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)	
	end
	
	--已领取奖励
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	local nType1 = tCarnival_BeerMatch_Stc["DataType"][2]	-- stc(139,52)	表示任务挑战间隔5分钟
	local nType2 = tCarnival_BeerMatch_Stc["DataType"][3]	-- stc(139,53)	表示在30秒是否喝了12瓶
	local nSum = tCarnival_BeerMatch_Stc["Sum"]
	local nSec = tCarnival_BeerMatch_Stc["30Sec"]
	local nMin = tCarnival_BeerMatch_Stc["FiveMin"]
	
	if Task_StcInterval(nEvent,nType1,nMin,0) then
		Task_SetStatistic(nEvent,nType1,0,1,0)
		Task_SetStcTimestamp(nEvent,nType1,0,0)
	end
	
	if Task_ChkStcValue(nEvent,nType2,">=",nSum) then
		--已完成12个 未领奖
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
		
	else
		if Task_StcInterval(nEvent,nType2,nSec,0) then
			if Task_StcInterval(nEvent,nType1,nMin,0) then
				Task_SetStatistic(nEvent,nType1,0,1,0)
				Task_SetStcTimestamp(nEvent,nType1,0,0)
				
			elseif Task_ChkStcValue(nEvent,nType1,">=",1) then
				--未到5分钟
				LinkNpcGossipFunc_New(nNpcId,"3-4")
				return
				
			else
				if not User_CheckLeftSpace(tCarnival_BeerMatch_Item["BagSpace_4"]) then
					LinkNpcGossipFunc_New(nNpcId,"3-6")
					return
				end

				--获得饮料
				Carnival_BeerMatch_GetDrink(nNpcId)
			end
		else
			--还在计时中
			LinkNpcGossipFunc_New(nNpcId,"3-3")
			return
		end
	end
	
end

--获得饮料
function Carnival_BeerMatch_GetDrink(nNpcId)
	if not Sys_ChkFullTime(tCarnival_BeerMatch_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tCarnival_BeerMatch_Cont["Level"],tCarnival_BeerMatch_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	--检查是否存在相同物品，删除
	for _,v in pairs(tCarnival_BeerMatch_Item["ItemId"]) do
		if Item_ChkItem(v) and Item_DelAllItemByType(v) then
		end
	end
	
	if not User_CheckLeftSpace(tCarnival_BeerMatch_Item["BagSpace_4"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-6")
		return
	end

	--设置掩码
	local nEvent = tCarnival_BeerMatch_Stc["EventType"]
	local nType2 = tCarnival_BeerMatch_Stc["DataType"][2]	-- stc(139,52)	表示任务挑战间隔5分钟
	local nType3 = tCarnival_BeerMatch_Stc["DataType"][3]	-- stc(139,53)	表示在30秒是否喝了12瓶	
	local nType4 = tCarnival_BeerMatch_Stc["DataType"][4]	
	
	Task_SetStatistic(nEvent,nType2,1,1,0)
	Task_SetStcTimestamp(nEvent,nType2,0,0)
	
	Task_SetStatistic(nEvent,nType3,0,1,0)
	Task_SetStcTimestamp(nEvent,nType3,0,0)

	Task_SetStatistic(nEvent,nType4,0,1,0)
	
	--设置定时器
	local nTime = tCarnival_BeerMatch_Stc["30Sec"]
	User_SetTimer(nTime,"Carnival_BeerMatch_TimeOut",1)
	
	--随机获得饮料
	local tItem = {}
	for i = 1,4 do
		local nFlat,tAward = Probabil_RandomAward(tCarnival_BeerMatch_Item["Drink"],1)
		local nRand = tAward[1]["tAward"][1]["Item_1"]
		local nItemId = tCarnival_BeerMatch_RandId[i][nRand]
		table.insert(tItem,nItemId)
	end
	
	for _,v in pairs(tItem) do
		Item_AddNewItem(v,tCarnival_BeerMatch_Item["ItemAttr"])
		Sys_SaveActionFestivalLog(string.format(tCarnival_BeerMatch_Log["GetItem"],v))
	end
	User_TalkChannel2005(tCarnival_BeerMatch_Text["TimeStart"])
end

function Carnival_BeerMatch_TimeOut(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	Sys_MsgBox(tCarnival_BeerMatch_Text["TimeOut"],"NULL","NULL",nUserId)
end

--接4：Claim~my~prize.
function Carnival_BeerMatch_GetReward(nNpcId)
	if not Sys_ChkFullTime(tCarnival_BeerMatch_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tCarnival_BeerMatch_Cont["Level"],tCarnival_BeerMatch_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	local nEvent = tCarnival_BeerMatch_Stc["EventType"]
	local nType = tCarnival_BeerMatch_Stc["DataType"][1]
	local nComplete = tCarnival_BeerMatch_Stc["Complete"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)	
	end
	
	--已领取奖励
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nType3 = tCarnival_BeerMatch_Stc["DataType"][3]	-- stc(139,53)	表示在30秒是否喝了12瓶	
	local nSum = tCarnival_BeerMatch_Stc["Sum"]
	if not Task_ChkStcValue(nEvent,nType3,">=",nSum) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
	else
		--已完成12个 未领奖
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
end

--成功给奖励
function Carnival_BeerMatch_Success(nNpcId)
	if not Sys_ChkFullTime(tCarnival_BeerMatch_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tCarnival_BeerMatch_Cont["Level"],tCarnival_BeerMatch_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	if not User_CheckLeftSpace(tCarnival_BeerMatch_Item["BagSpace_1"]) then
		LinkNpcGossipFunc_New(nNpcId,"18-1")
		return
	end

	--设置掩码	领取奖励
	local nEvent = tCarnival_BeerMatch_Stc["EventType"]
	local nType = tCarnival_BeerMatch_Stc["DataType"][1]
	local nType3 = tCarnival_BeerMatch_Stc["DataType"][3]	-- stc(139,53)	表示在30秒是否喝了12瓶	
	local nComplete = tCarnival_BeerMatch_Stc["Complete"]

	Task_SetStatistic(nEvent,nType,nComplete,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	Task_SetStatistic(nEvent,nType3,0,1,0)
	Task_SetStcTimestamp(nEvent,nType3,0,0)
	FestivalGeneralPackage_GetGift(tCarnival_BeerMatch_Log["FestivalId"],tCarnival_BeerMatch_Log["LogId"])
	User_TalkChannel2005(tCarnival_BeerMatch_Text["GetReward"])
end

-------------------------------------------使用物品逻辑----------------------------------------------------------
function Carnival_BeerMatch_UseItem(nItemId)
	if Sys_ChkFullTime(tCarnival_BeerMatch_Cont["BeforeActivity"]) then
		User_TalkChannel2005(tCarnival_BeerMatch_Text["TimeComing"])
		return
	end
	
	if not Sys_ChkFullTime(tCarnival_BeerMatch_Cont["Activity"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tCarnival_BeerMatch_Log["DelItem"],nItemId))
			User_TalkChannel2005(tCarnival_BeerMatch_Text["DelItem"])
			return
		end
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nEvent = tCarnival_BeerMatch_Stc["EventType"]
		local nType = tCarnival_BeerMatch_Stc["DataType"][4]
		local nData = tCarnival_BeerMatch_Stc["Item"][nItemId]
		
		local nType1 = tCarnival_BeerMatch_Stc["DataType"][3]
		local nSec = tCarnival_BeerMatch_Stc["30Sec"]

		local nFlag = 1
		
		if Task_ChkStcValue(nEvent,nType,"==",0) then
			--第一次喝
			nFlag = 1
		elseif Task_ChkStcValue(nEvent,nType,"==",nData) then
			--重复喝
			nFlag = 2
		else
			--解毒
			nFlag = 3
		end
		
		if not Task_StcInterval(nEvent,nType1,nSec,0) then
			Task_AddStatistic(nEvent,nType1,1,1,0)
		else
			User_TalkChannel2005(tCarnival_BeerMatch_Text["30SecOver"])
			return
		end
		Task_SetStatistic(nEvent,nType,nData,1,0)

		local nStatus = tCarnival_BeerMatch_Status["Status"]
		local nPower = tCarnival_BeerMatch_Status["Power"]
		local nTimes = tCarnival_BeerMatch_Status["Times"]
		local nunEndTime = tCarnival_BeerMatch_Status["EndTime"]
		local nucRecordable = tCarnival_BeerMatch_Status["Recordable"]
		local nUserId = Get_UserId()
		local nSecs = tCarnival_BeerMatch_Status["Secs"][nFlag]
		local nunRemainTime = tCarnival_BeerMatch_Status["RemainTime"][nFlag]
		
		if tCarnival_BeerMatch_Status["Secs"][nFlag] ~= 0 then
			User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nunRemainTime,nunEndTime,nucRecordable,0,0,nUserId)
		end

		User_TalkChannel2005(tCarnival_BeerMatch_Text[nItemId][nFlag])
	end
end

------------------------------------------------NPC模块--------------------------------------------------
-- 18933  BeerGirl
tNpcFace[2202] = 193
tNpcGossip[18933] = tNpcGossip[18933] or DefaultNpc:new{}
tNpcGossip[18933]["OptionHidden"] = 1
--活动前对白
tNpcGossip[18933]["Text1-1"] = {111,112}
tNpcGossip[18933]["Text111"] = tCarnival_BeerMatch_Text[18933]["Text111"]
tNpcGossip[18933]["Text112"] = tCarnival_BeerMatch_Text[18933]["Text112"]
tNpcGossip[18933]["tOption1-1"] = {1}
tNpcGossip[18933]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tCarnival_BeerMatch_Cont["BeforeActivity"])
end
tNpcGossip[18933]["Option1"] = tCarnival_BeerMatch_Text[18933]["Option1"]

--活动中对白
tNpcGossip[18933]["Text1-2"] = {121,122,123}
tNpcGossip[18933]["Text121"] = tCarnival_BeerMatch_Text[18933]["Text121"]
tNpcGossip[18933]["Text122"] = tCarnival_BeerMatch_Text[18933]["Text122"]
tNpcGossip[18933]["Text123"] = tCarnival_BeerMatch_Text[18933]["Text123"]
tNpcGossip[18933]["tOption1-2"] = {2,3,4,5}
tNpcGossip[18933]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tCarnival_BeerMatch_Cont["Activity"])
end
tNpcGossip[18933]["Option2"] = tCarnival_BeerMatch_Text[18933]["Option2"]
tNpcGossip[18933]["OptionPoint2"]="2-1"
tNpcGossip[18933]["Option3"] = tCarnival_BeerMatch_Text[18933]["Option3"]
tNpcGossip[18933]["OptionFunc3"]="Carnival_BeerMatch_GetTask</N>18933"
tNpcGossip[18933]["Option4"] = tCarnival_BeerMatch_Text[18933]["Option4"]
tNpcGossip[18933]["OptionFunc4"]="Carnival_BeerMatch_GetReward</N>18933"
tNpcGossip[18933]["Option5"] = tCarnival_BeerMatch_Text[18933]["Option5"]

--活动后对白
tNpcGossip[18933]["Text1-3"] = {131}
tNpcGossip[18933]["Text131"] = tCarnival_BeerMatch_Text[18933]["Text131"]
tNpcGossip[18933]["tOption1-3"] = {6}
tNpcGossip[18933]["Option6"] = tCarnival_BeerMatch_Text[18933]["Option6"]

--接2：How~to~win?
tNpcGossip[18933]["Text2-1"] = {211,212,213,214}
tNpcGossip[18933]["Text211"] = tCarnival_BeerMatch_Text[18933]["Text211"]
tNpcGossip[18933]["Text212"] = tCarnival_BeerMatch_Text[18933]["Text212"]
tNpcGossip[18933]["Text213"] = tCarnival_BeerMatch_Text[18933]["Text213"]
tNpcGossip[18933]["Text214"] = tCarnival_BeerMatch_Text[18933]["Text214"]
tNpcGossip[18933]["tOption2-1"] = {7,8}
tNpcGossip[18933]["Option7"] = tCarnival_BeerMatch_Text[18933]["Option7"]
tNpcGossip[18933]["OptionPoint7"]="7-1"
tNpcGossip[18933]["Option8"] = tCarnival_BeerMatch_Text[18933]["Option8"]

--接7：Any~tips~for~me?
tNpcGossip[18933]["Text7-1"] = {711,712,713,714}
tNpcGossip[18933]["Text711"] = tCarnival_BeerMatch_Text[18933]["Text711"]
tNpcGossip[18933]["Text712"] = tCarnival_BeerMatch_Text[18933]["Text712"]
tNpcGossip[18933]["Text713"] = tCarnival_BeerMatch_Text[18933]["Text713"]
tNpcGossip[18933]["Text714"] = tCarnival_BeerMatch_Text[18933]["Text714"]
tNpcGossip[18933]["tOption7-1"] = {9}
tNpcGossip[18933]["Option9"] = tCarnival_BeerMatch_Text[18933]["Option9"]

--接3：I`m~in!
--等级不足
tNpcGossip[18933]["Text3-1"] = {311}
tNpcGossip[18933]["Text311"] = tCarnival_BeerMatch_Text[18933]["Text311"]
tNpcGossip[18933]["tOption3-1"] = {10}
tNpcGossip[18933]["Option10"] = tCarnival_BeerMatch_Text[18933]["Option10"]
--失败·当天已经领奖
tNpcGossip[18933]["Text3-2"] = {321}
tNpcGossip[18933]["Text321"] = tCarnival_BeerMatch_Text[18933]["Text321"]
tNpcGossip[18933]["tOption3-2"] = {11}
tNpcGossip[18933]["Option11"] = tCarnival_BeerMatch_Text[18933]["Option11"]
--失败·还在计时钟
tNpcGossip[18933]["Text3-3"] = {331}
tNpcGossip[18933]["Text331"] = tCarnival_BeerMatch_Text[18933]["Text331"]
tNpcGossip[18933]["tOption3-3"] = {12}
tNpcGossip[18933]["Option12"] = tCarnival_BeerMatch_Text[18933]["Option12"]
--失败·未到5分钟
tNpcGossip[18933]["Text3-4"] = {341}
tNpcGossip[18933]["Text341"] = tCarnival_BeerMatch_Text[18933]["Text341"]
tNpcGossip[18933]["tOption3-4"] = {13}
tNpcGossip[18933]["Option13"] = tCarnival_BeerMatch_Text[18933]["Option13"]
--失败·已完成任务未领奖·转领奖对白
tNpcGossip[18933]["Text3-5"] = {351}
tNpcGossip[18933]["Text351"] = tCarnival_BeerMatch_Text[18933]["Text351"]
tNpcGossip[18933]["tOption3-5"] = {14}
tNpcGossip[18933]["Option14"] = tCarnival_BeerMatch_Text[18933]["Option14"]
tNpcGossip[18933]["OptionFunc14"]="Carnival_BeerMatch_Success</N>18933"
--背包满
tNpcGossip[18933]["Text3-6"] = {361}
tNpcGossip[18933]["Text361"] = tCarnival_BeerMatch_Text[18933]["Text361"]
tNpcGossip[18933]["tOption3-6"] = {15}
tNpcGossip[18933]["Option15"] = tCarnival_BeerMatch_Text[18933]["Option15"]
	
--接4：Claim~my~prize.
--失败·当天已领奖
tNpcGossip[18933]["Text4-1"] = {411}
tNpcGossip[18933]["Text411"] = tCarnival_BeerMatch_Text[18933]["Text411"]
tNpcGossip[18933]["tOption4-1"] = {16}
tNpcGossip[18933]["Option16"] = tCarnival_BeerMatch_Text[18933]["Option16"]
--失败·未完成挑战
tNpcGossip[18933]["Text4-2"] = {421}
tNpcGossip[18933]["Text421"] = tCarnival_BeerMatch_Text[18933]["Text421"]
tNpcGossip[18933]["tOption4-2"] = {17}
tNpcGossip[18933]["Option17"] = tCarnival_BeerMatch_Text[18933]["Option17"]
--成功给奖励
tNpcGossip[18933]["Text4-3"] = {431}
tNpcGossip[18933]["Text431"] = tCarnival_BeerMatch_Text[18933]["Text431"]
tNpcGossip[18933]["tOption4-3"] = {18}
tNpcGossip[18933]["Option18"] = tCarnival_BeerMatch_Text[18933]["Option18"]
tNpcGossip[18933]["OptionFunc18"]="Carnival_BeerMatch_Success</N>18933"
	
--接18：Thanks 背包满
tNpcGossip[18933]["Text18-1"] = {1811}
tNpcGossip[18933]["Text1811"] = tCarnival_BeerMatch_Text[18933]["Text1811"]
tNpcGossip[18933]["tOption18-1"] = {19}
tNpcGossip[18933]["Option19"] = tCarnival_BeerMatch_Text[18933]["Option19"]

------------------------------------------------itemtype模块--------------------------------------------------
-- 3008025	RiverBeer  又酸又咸的
tItem[3008025] = tItem[3008025] or {}
tItem[3008025]["Function"] = function(nItemId,sItemName)
	Carnival_BeerMatch_UseItem(nItemId)
end

-- 3008026	RiverBeer  又腥又膻的
tItem[3008026] = tItem[3008026] or {}
tItem[3008026]["Function"] = function(nItemId,sItemName)
	Carnival_BeerMatch_UseItem(nItemId)
end

-- 3008027	EmeraldBeer  又腥又膻的
tItem[3008027] = tItem[3008027] or {}
tItem[3008027]["Function"] = function(nItemId,sItemName)
	Carnival_BeerMatch_UseItem(nItemId)
end

-- 3008028	EmeraldBeer  又呛又辣的
tItem[3008028] = tItem[3008028] or {}
tItem[3008028]["Function"] = function(nItemId,sItemName)
	Carnival_BeerMatch_UseItem(nItemId)
end

-- 3008029	TulipBeer  又呛又辣的
tItem[3008029] = tItem[3008029] or {}
tItem[3008029]["Function"] = function(nItemId,sItemName)
	Carnival_BeerMatch_UseItem(nItemId)
end

-- 3008030	TulipBeer  又苦又涩的
tItem[3008030] = tItem[3008030] or {}
tItem[3008030]["Function"] = function(nItemId,sItemName)
	Carnival_BeerMatch_UseItem(nItemId)
end

-- 3008031	RoseBeer  又苦又涩的
tItem[3008031] = tItem[3008031] or {}
tItem[3008031]["Function"] = function(nItemId,sItemName)
	Carnival_BeerMatch_UseItem(nItemId)
end

-- 3008032	RoseBeer  又酸又咸的
tItem[3008032] = tItem[3008032] or {}
tItem[3008032]["Function"] = function(nItemId,sItemName)
	Carnival_BeerMatch_UseItem(nItemId)
end

