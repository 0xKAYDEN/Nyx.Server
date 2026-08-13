------------------------------------------------------------------------------------
--Name：          200415[简体征服][活动脚本]全球儿童节活动--打地鼠
--Creator:      杨艳
--Created:     2020/04/15
--------------------------------------------------------------------------------------

--	命名规范
--	WhacAMole_

-- npc
-- 主NPCid 26486

-- stc
-- 300 01 记录童趣积分stc
-- 219 86 记录竞技礼包游玩券活动数量限制 3007108
-- 219 87 记录游玩券怪物掉落数量限制 
-- 219 71 记录免费进入地图次数
-- 219 72 玩家进度掩码 1开始 2结束
-- 219 73 记录玩家打地鼠的个数
-- 219 74 记录玩家是否领取奖励

-- 219 76 记录陷阱掩码
-- 219 77 记录陷阱掩码
-- 219 78 记录陷阱掩码
-- 219 79 记录陷阱掩码
-- 219 80 记录陷阱掩码
-- 219 81 记录陷阱掩码
-- 219 82 记录陷阱掩码
-- 219 83 记录陷阱掩码
-- 219 84 记录陷阱掩码

-- 219 87 记录怪物掉落

--- 活动时间统一配置
-- tActivityTime["ChildrenDay2020"] = {}
-- tActivityTime["ChildrenDay2020"]["ActivityTime"] = "2020-05-26 00:00 2020-06-09 23:59"


-- logid
-- 12001963,3[]--杨艳
-- 12001963,3[5][1]--使用正气令获得游玩券
-- 12001963,3[5][2]--使用使用显著贡献礼包获得游玩券
-- 12001963,3[5][3]--使用使用开启竞技场礼包获得游玩券
-- 12001963,3[5][4]--使用使用野外打怪获得游玩券


--物品
-- 3316104,'冒险币'


--地图
-- 妙妙屋地图id 10835 
-- 10837,'打地鼠大冒险','打地鼠大冒险'

-- instance
-- 423,'打地鼠大冒险',10837


----------------------------------表配置部分--------------------------------------------
local tWhacAMole_Data = {}
	tWhacAMole_Data["Effect"] = {}
	tWhacAMole_Data["Effect"]["Down"] = "wsmhcxq_hit"
	tWhacAMole_Data["Effect"]["Start"] = "task073"
	
	
	tWhacAMole_Data["Level"] = 80
	tWhacAMole_Data["Mete"] = 0

	tWhacAMole_Data["InstanceId"] = 423
	
	tWhacAMole_Data["EnterInstance"] = {}
	--代表免费进入
	tWhacAMole_Data["EnterInstance"]["Free"] = 1
	-- 代表消耗游戏券进入
	tWhacAMole_Data["EnterInstance"]["NotFree"] = 2
	--游戏券
	tWhacAMole_Data["NeedItem"] = 3330736  
	--九空格
	tWhacAMole_Data["WhacAMoleTrap"] = {995981,995982,995983,995984,995985,995986,995987,995988,995989}

	tWhacAMole_Data["WhacAMoleTrapPos"] = {}
	
	tWhacAMole_Data["WhacAMoleTrapPos"][1] = {}
	tWhacAMole_Data["WhacAMoleTrapPos"][1]["MapID"]=10837
	tWhacAMole_Data["WhacAMoleTrapPos"][1]["PosX"]=46
	tWhacAMole_Data["WhacAMoleTrapPos"][1]["PosY"]=46
	tWhacAMole_Data["WhacAMoleTrapPos"][1]["TrapType"]=2583
	
	tWhacAMole_Data["WhacAMoleTrapPos"][2] = {}
	tWhacAMole_Data["WhacAMoleTrapPos"][2]["MapID"]=10837
	tWhacAMole_Data["WhacAMoleTrapPos"][2]["PosX"]=50
	tWhacAMole_Data["WhacAMoleTrapPos"][2]["PosY"]=46
	tWhacAMole_Data["WhacAMoleTrapPos"][2]["TrapType"]=2584
	
	tWhacAMole_Data["WhacAMoleTrapPos"][3] = {}
	tWhacAMole_Data["WhacAMoleTrapPos"][3]["MapID"]=10837
	tWhacAMole_Data["WhacAMoleTrapPos"][3]["PosX"]=54
	tWhacAMole_Data["WhacAMoleTrapPos"][3]["PosY"]=46
	tWhacAMole_Data["WhacAMoleTrapPos"][3]["TrapType"]=2585
	
	tWhacAMole_Data["WhacAMoleTrapPos"][4]={}
	tWhacAMole_Data["WhacAMoleTrapPos"][4]["MapID"]=10837
	tWhacAMole_Data["WhacAMoleTrapPos"][4]["PosX"]=54
	tWhacAMole_Data["WhacAMoleTrapPos"][4]["PosY"]=50
	tWhacAMole_Data["WhacAMoleTrapPos"][4]["TrapType"]=2586
	
	tWhacAMole_Data["WhacAMoleTrapPos"][5]={}
	tWhacAMole_Data["WhacAMoleTrapPos"][5]["MapID"]=10837
	tWhacAMole_Data["WhacAMoleTrapPos"][5]["PosX"]=50
	tWhacAMole_Data["WhacAMoleTrapPos"][5]["PosY"]=50
	tWhacAMole_Data["WhacAMoleTrapPos"][5]["TrapType"]=2587
	
	tWhacAMole_Data["WhacAMoleTrapPos"][6]={}
	tWhacAMole_Data["WhacAMoleTrapPos"][6]["MapID"]=10837
	tWhacAMole_Data["WhacAMoleTrapPos"][6]["PosX"]=46
	tWhacAMole_Data["WhacAMoleTrapPos"][6]["PosY"]=50
	tWhacAMole_Data["WhacAMoleTrapPos"][6]["TrapType"]=2588
	
	tWhacAMole_Data["WhacAMoleTrapPos"][7]={}
	tWhacAMole_Data["WhacAMoleTrapPos"][7]["MapID"]=10837
	tWhacAMole_Data["WhacAMoleTrapPos"][7]["PosX"]=46
	tWhacAMole_Data["WhacAMoleTrapPos"][7]["PosY"]=54
	tWhacAMole_Data["WhacAMoleTrapPos"][7]["TrapType"]=2589
	
	tWhacAMole_Data["WhacAMoleTrapPos"][8]={}
	tWhacAMole_Data["WhacAMoleTrapPos"][8]["MapID"]=10837
	tWhacAMole_Data["WhacAMoleTrapPos"][8]["PosX"]=50
	tWhacAMole_Data["WhacAMoleTrapPos"][8]["PosY"]=54
	tWhacAMole_Data["WhacAMoleTrapPos"][8]["TrapType"]=2590
	
	tWhacAMole_Data["WhacAMoleTrapPos"][9]={}
	tWhacAMole_Data["WhacAMoleTrapPos"][9]["MapID"]=10837
	tWhacAMole_Data["WhacAMoleTrapPos"][9]["PosX"]=54
	tWhacAMole_Data["WhacAMoleTrapPos"][9]["PosY"]=54
	tWhacAMole_Data["WhacAMoleTrapPos"][9]["TrapType"]=2591
	
	-- tWhacAMole_Data["MapDoc"] = 1068
	-- 海外地图索引不一样
	tWhacAMole_Data["MapDoc"] = 700

	tWhacAMole_Data["WhacAMoleEffect"] = "task011"
	
	tWhacAMole_Data["Trans"]={}
	tWhacAMole_Data["Trans"][10835] = {}
	tWhacAMole_Data["Trans"][10835]["PosX"] = 80
	tWhacAMole_Data["Trans"][10835]["PosY"] = 80
	
	
local tWhacAMole_Stc = {}

	-- 记录免费进入地图次数
	tWhacAMole_Stc["FreeTimes"] = {}
	tWhacAMole_Stc["FreeTimes"]["EventType"] = 219
	tWhacAMole_Stc["FreeTimes"]["DataType"] = 71
	tWhacAMole_Stc["FreeTimes"]["Limit"] = 1
	
	tWhacAMole_Stc["Point"] = {}
	tWhacAMole_Stc["Point"]["EventType"] = 300
	tWhacAMole_Stc["Point"]["DataType"] = 01
	
	--玩家进度掩码 1开始 2结束
	tWhacAMole_Stc["Process"] = {}
	tWhacAMole_Stc["Process"]["EventType"] = 219
	tWhacAMole_Stc["Process"]["DataType"] = 72
	
	--记录玩家打地鼠的个数
	tWhacAMole_Stc["WhacAMoleNum"] = {}
	tWhacAMole_Stc["WhacAMoleNum"]["EventType"] = 219
	tWhacAMole_Stc["WhacAMoleNum"]["DataType"] = 73
	
	--记录玩家是否领取奖励
	tWhacAMole_Stc["Award"] = {}
	tWhacAMole_Stc["Award"]["EventType"] = 219
	tWhacAMole_Stc["Award"]["DataType"] = 74
	
	--记录玩家时间戳
	tWhacAMole_Stc["Time"] = {}
	tWhacAMole_Stc["Time"]["EventType"] = 219
	tWhacAMole_Stc["Time"]["DataType"] = 75
	
	tWhacAMole_Stc["Trap"]={}
	tWhacAMole_Stc["Trap"]["Event"] = 219
	tWhacAMole_Stc["Trap"]["Type"] = {}
	tWhacAMole_Stc["Trap"]["Type"][2583] = 76
	tWhacAMole_Stc["Trap"]["Type"][2584] = 77
	tWhacAMole_Stc["Trap"]["Type"][2585] = 78
	tWhacAMole_Stc["Trap"]["Type"][2586] = 79
	tWhacAMole_Stc["Trap"]["Type"][2587] = 80
	tWhacAMole_Stc["Trap"]["Type"][2588] = 81
	tWhacAMole_Stc["Trap"]["Type"][2589] = 82
	tWhacAMole_Stc["Trap"]["Type"][2590] = 83
	tWhacAMole_Stc["Trap"]["Type"][2591] = 84
	
	--记录怪物掉落
	tWhacAMole_Stc["MonsterDrop"] = {}
	tWhacAMole_Stc["MonsterDrop"]["EventType"] = 219
	tWhacAMole_Stc["MonsterDrop"]["DataType"] = 87
	tWhacAMole_Stc["MonsterDrop"]["Limit"] = 5
	
local tWhacAMole_Log = {}
	--记录进入活动地图
	tWhacAMole_Log["EnterInstance"]	= "0,0,0,0,12001963,3[1],0,0"	
	--删除游戏券
	tWhacAMole_Log["DelItem"] = "0,0,%d,%d,12001963,3[2],0,0"	
	--使用游戏券来进行游戏
	tWhacAMole_Log["UesItem"] = "0,0,0,0,12001963,3[3],0,0"	

--陷阱临时表	
local tWhacAMole_TargetTrap = {}	

local tWhacAMole_TargetTime = {}	


local tWhacAMole_TargetUser = {}	



local tWhacAMole_Award = {}
	--游戏币
	tWhacAMole_Award["Point"] = {}
	tWhacAMole_Award["Point"]["LogId"] = 12001963
	tWhacAMole_Award["Point"]["LogStep"] = "3[4]"
	tWhacAMole_Award["Point"]["RewardItem"] = {}
	tWhacAMole_Award["Point"]["RewardItem"][1] = {}
	tWhacAMole_Award["Point"]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:9][叠加:0][金币:0], 【表格】冒险币
	tWhacAMole_Award["Point"]["RewardItem"][1]["Attr"] = "0 %s" -- 冒险币*1
	tWhacAMole_Award["Point"]["RewardEffect"] = {}
	tWhacAMole_Award["Point"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWhacAMole_Award["Point"]["RewardEffect"]["Effect"] = "angelwing"
	
	tWhacAMole_Award["FanyItem"] = {}
	tWhacAMole_Award["FanyItem"]["LogId"] = 12001963
	tWhacAMole_Award["FanyItem"]["LogStep"] = "3[5][%s]"
	tWhacAMole_Award["FanyItem"]["RewardItem"] = {}
	tWhacAMole_Award["FanyItem"]["RewardItem"][1] = {}
	tWhacAMole_Award["FanyItem"]["RewardItem"][1]["Id"] = 3330736 -- 游玩卷[3330736][属性:9][叠加:0][金币:0], 【表格】游玩卷
	tWhacAMole_Award["FanyItem"]["RewardItem"][1]["Attr"] = "0 %s" -- 游玩卷*1
	tWhacAMole_Award["FanyItem"]["RewardEffect"] = {}
	tWhacAMole_Award["FanyItem"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWhacAMole_Award["FanyItem"]["RewardEffect"]["Effect"] = "angelwing"
	
	
	
	
----------------------------------逻辑部分---------------------------------------------

--进入打地鼠副本
function WhacAMole_EnterInstance(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end 
	local nUserId = Get_UserId()
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tWhacAMole_CnTt["Msg"]["NoGroup"])
		return 
	end

	local nInstanceId = tWhacAMole_Data["InstanceId"]
	
	if User_EnterInstance(nInstanceId,0,0,0) then 
	
		--出提示
		Sys_MsgBox(tWhacAMole_CnTt["Msg"]["FindNpc"])
		Sys_SaveActionFestivalLog(tWhacAMole_Log["EnterInstance"])
	
		--判断玩家是否异常退出
		local nWAMProcessEvent = tWhacAMole_Stc["Process"]["EventType"]
		local nWAMProcessType = tWhacAMole_Stc["Process"]["DataType"]
		local nProcessData = Get_UserStatisticValue(nWAMProcessEvent,nWAMProcessType,nUserId)
		if nProcessData == 1 then 
			Task_SetStatistic(nWAMProcessEvent,nWAMProcessType,0,1,nUserId)
			Task_SetStcTimestamp(nWAMProcessEvent,nWAMProcessType,0,nUserId)
			local nWAMNumEvent = tWhacAMole_Stc["WhacAMoleNum"]["EventType"]
			local nWAMNumType = tWhacAMole_Stc["WhacAMoleNum"]["DataType"]
				
			Task_SetStatistic(nWAMNumEvent,nWAMNumType,0,1,nUserId)
			Task_SetStcTimestamp(nWAMNumEvent,nWAMNumType,0,nUserId)
			
		end 
		
		if tWhacAMole_TargetUser[nUserId] ~= nil then 
			tWhacAMole_TargetUser[nUserId] = 1 + tWhacAMole_TargetUser[nUserId]
		else
			tWhacAMole_TargetUser[nUserId] = 0
		end 
	
		--清除地效
		WhacAMole_ClearMapEffect(nUserId)
		
		WhacAMole_CleanStc(nUserId)
		
	end 
	
	
end

function WhacAMole_ClearMapEffect(nUserId)
	local nUserId = nUserId or Get_UserId()
	for i = 1 , 9 do
		local nMapId = Get_UserMapId(nUserId)
		local nPosX = tWhacAMole_Data["WhacAMoleTrapPos"][i]["PosX"]
		local nPosY = tWhacAMole_Data["WhacAMoleTrapPos"][i]["PosY"]
		Map_Effect(nMapId,nPosX,nPosY,tWhacAMole_Data["WhacAMoleEffect"],1)
	end 
	
end 

--开始打地鼠
function WhacAMole_Start(nIndex,nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end 
	
	local nUserId = Get_UserId()
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		return 
	end

	--判断地图
	local nUserMap = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nUserMap)
	
	if nMapDoc ~= tWhacAMole_Data["MapDoc"] then
		return 
	end

	local nEventType = tWhacAMole_Stc["FreeTimes"]["EventType"]
	local nDataType = tWhacAMole_Stc["FreeTimes"]["DataType"]

	--隔天清掩码
	Task_StcReset(nEventType,nDataType,nUserId)
	if nIndex == tWhacAMole_Data["EnterInstance"]["Free"] then 
		if Get_UserStatisticValue(nEventType,nDataType,nUserId) >= 1 then 
			
			return 
		end
		
		--设置掩码
		Task_AddStatistic(nEventType,nDataType,1,1,nUserId)
		Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	
	else
		--判断游戏券 
		if not Item_ChkMulItem(tWhacAMole_Data["NeedItem"],tWhacAMole_Data["NeedItem"],1,1,0,nUserId) then 
			-- WhacAMole_CleanStc(nUserId)
			-- Task_SetStatistic(nWAMProcessEvent,nWAMProcessType,0,1,nUserId)
			-- Task_SetStcTimestamp(nWAMProcessEvent,nWAMProcessType,0,nUserId)
		
			-- Task_SetStatistic(nWAMNumEvent,nWAMNumType,0,1,nUserId)
			-- Task_SetStcTimestamp(nWAMNumEvent,nWAMNumType,0,nUserId)
			-- WhacAMole_ClearMapEffect(nUserId)
			-- Sys_MsgBox(tWhacAMole_CnTt["Msg"]["NoItem"],"Sys_GotoSomeWhere</N>60</N>46".."</N>"..nMapId,"NULL",nUserId)
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return 
		end 
		--扣除物品
		if not Item_DelMulItem(tWhacAMole_Data["NeedItem"],tWhacAMole_Data["NeedItem"],1,1,0,nUserId) then
			
			return
		end 
		Sys_SaveActionFestivalLog(tWhacAMole_Log["UesItem"],nUserId)
		local sLog = string.format(tWhacAMole_Log["DelItem"],tWhacAMole_Data["NeedItem"],1)
		Sys_SaveActionFestivalLog(sLog,nUserId)
	end 
	-- if nIndex == tWhacAMole_Data["EnterInstance"]["Free"] then 

		-- if Get_UserStatisticValue(nEventType,nDataType,nUserId) >= 1 then 
			-- return 
		-- end
		
	-- else

		-- 判断游戏券 
		-- if not Item_ChkMulItem(tWhacAMole_Data["NeedItem"],tWhacAMole_Data["NeedItem"],1) then 
			-- LinkNpcGossipFunc_New(nNpcId,"2-1")
			-- return 
		-- end 

	-- end 

	local nWAMProcessEvent = tWhacAMole_Stc["Process"]["EventType"]
	local nWAMProcessType = tWhacAMole_Stc["Process"]["DataType"]
	local nProcessData = Get_UserStatisticValue(nWAMProcessEvent,nWAMProcessType,nUserId)
	if nProcessData > 0 then 
		return
	end 

	--设置开始掩码 data=1
	Task_SetStatistic(nWAMProcessEvent,nWAMProcessType,1,1,nUserId)
	Task_SetStcTimestamp(nWAMProcessEvent,nWAMProcessType,0,nUserId)

	
	for i=2583,2591 do 
		local nTrapEvent = tWhacAMole_Stc["Trap"]["Event"]
		local nTrapType = tWhacAMole_Stc["Trap"]["Type"][i]
		-- 清陷阱掩码
		Task_SetStatistic(nTrapEvent,nTrapType,0,1,nUserId)
		Task_SetStcTimestamp(nTrapEvent,nTrapType,0,nUserId)
	end 
	
	local nWAM_IntoNum = 0
	if  tWhacAMole_TargetUser[nUserId] ~= nil then 
		nWAM_IntoNum = tWhacAMole_TargetUser[nUserId]
	end 
	--播放光效
	User_EffectAdd("self",tWhacAMole_Data["Effect"]["Start"],nUserId)

	tWhacAMole_TargetTime[nUserId] = 1
	local nTimes = tWhacAMole_TargetTime[nUserId]
	--刷地鼠
	WhacAMole_Refresh(nTimes,nWAM_IntoNum,nUserId)
	-- OnTimer_SetUserTimer(1,"WhacAMole_Refresh</N>"..nTimes.."</N>"..nWAM_IntoNum,nUserId)

	--设置定时器60秒后结束此次游戏
	User_SetTimer(45,"WhacAMole_TimeEnd</N>"..nIndex.."</N>"..nWAM_IntoNum,1)
	
end 

-- 每两秒刷新一波
function  WhacAMole_Refresh(nTimes,nWAM_IntoNum,nUserId)
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	
	if nMapDoc ~= tWhacAMole_Data["MapDoc"] then
		return 
	end
	if tWhacAMole_TargetUser[nUserId] ~= nil then 
		if nWAM_IntoNum ~= tWhacAMole_TargetUser[nUserId] then 
			-- User_TalkChannel2005("nWAM_IntoNum=="..nWAM_IntoNum.."nShuraBattleGround_Into=="..tWhacAMole_TargetUser[nUserId],nUserId)
			return
		end 
	
	end 
	--每次刷新前，先清除上一轮数据
	if tWhacAMole_TargetTrap[nUserId]~=nil then 
		for i,v in ipairs(tWhacAMole_TargetTrap[nUserId]) do 
		
			local nPosX,nPosY = WhacAMole_GetTrapPos(v)
			local nMapId = Get_UserMapId(nUserId)
			
			Map_Effect(nMapId,nPosX,nPosY,tWhacAMole_Data["WhacAMoleEffect"],1)
		end 
	end 
	
	tWhacAMole_TargetTrap[nUserId] = {}
	
	--刷新陷阱掩码
	for i=2583,2591 do 
		local nTrapEvent = tWhacAMole_Stc["Trap"]["Event"]
		local nTrapType = tWhacAMole_Stc["Trap"]["Type"][i]

		-- 清陷阱掩码
		Task_SetStatistic(nTrapEvent,nTrapType,0,1,nUserId)
		Task_SetStcTimestamp(nTrapEvent,nTrapType,0,nUserId)
	end 
	
	--随机2-5个位置播放火鸡光效
	local tRefresh = {}
	local nRandDomIndex = math.random(2,5)
	for i=1,nRandDomIndex do
		local nIndex = WhacAMole_RandomCoordinatePos(tRefresh)
		
		local nTrapType = tWhacAMole_Data["WhacAMoleTrapPos"][nIndex]["TrapType"]
		local nPosX = tWhacAMole_Data["WhacAMoleTrapPos"][nIndex]["PosX"]
		local nPosY = tWhacAMole_Data["WhacAMoleTrapPos"][nIndex]["PosY"]
	
		
		-- 播放光效
		Map_Effect(nMapId,nPosX,nPosY,tWhacAMole_Data["WhacAMoleEffect"],0)
		
		tRefresh[#tRefresh+1] = nIndex
		
		tWhacAMole_TargetTrap[nUserId][i]=nTrapType

	end 
	
	tWhacAMole_TargetTime[nUserId] = tWhacAMole_TargetTime[nUserId] + 1
	
	nTimes = tWhacAMole_TargetTime[nUserId]
	if tWhacAMole_TargetTime[nUserId] <= 14 then 
	
		OnTimer_SetUserTimer(3,"WhacAMole_Refresh</N>"..nTimes.."</N>"..nWAM_IntoNum,nUserId)
	end 
	
end 


--获取陷阱坐标
function WhacAMole_GetTrapPos(nTrapType)
	local nPosX=0
	local nPosY=0
	local nMapId=0
	for i =1,9 do 
		if tWhacAMole_Data["WhacAMoleTrapPos"][i]["TrapType"] == nTrapType then 
			nPosX = tWhacAMole_Data["WhacAMoleTrapPos"][i]["PosX"]
			nPosY = tWhacAMole_Data["WhacAMoleTrapPos"][i]["PosY"]
			nMapId = tWhacAMole_Data["WhacAMoleTrapPos"][i]["MapID"]
		end 
	end 
	return nPosX,nPosY
end 
	
--随机5个位置
function WhacAMole_RandomCoordinatePos(tRefresh)
	local nLen = #tWhacAMole_Data["WhacAMoleTrap"]
	local nRandomNum = math.random(1,nLen)
	
	if #tRefresh > 0 then
		for i=1, #tRefresh do
			if tRefresh[i] == nRandomNum then
				nRandomNum = WhacAMole_RandomCoordinatePos(tRefresh)
			end
		end
	end
	
	return nRandomNum
end 	

--时间结束
function WhacAMole_TimeEnd(nIndex,nWAM_IntoNum,nUserId)
	if tWhacAMole_TargetUser[nUserId] ~= nil then 
		if nWAM_IntoNum ~= tWhacAMole_TargetUser[nUserId] then 
			return
		end 
	
	end 
	
	WhacAMole_EndGame(nIndex,nUserId)
	
	
	--清游戏进度掩码
	-- Task_SetStatistic(nTurkeyProcessEvent,nTurkeyProcessType,0,1,nUserId)
	-- Task_SetStcTimestamp(nTurkeyProcessEvent,nTurkeyProcessType,0,nUserId)
	

end 

--清除掩码
function WhacAMole_CleanStc(nUserId)
	local nUserId = nUserId or Get_UserId()
	
	--刷新陷阱掩码
	for i=2583,2591 do 
		local nTrapEvent = tWhacAMole_Stc["Trap"]["Event"]
		local nTrapType = tWhacAMole_Stc["Trap"]["Type"][i]
		-- 清陷阱掩码
		Task_SetStatistic(nTrapEvent,nTrapType,0,1,nUserId)
		Task_SetStcTimestamp(nTrapEvent,nTrapType,0,nUserId)
	end 
	 
	--删除光效
	if tWhacAMole_TargetTrap[nUserId]~=nil then 
		for i,v in ipairs(tWhacAMole_TargetTrap[nUserId]) do 
		
			local nPosX,nPosY = WhacAMole_GetTrapPos(v)
			local nMapId = Get_UserMapId(nUserId)
			
			Map_Effect(nMapId,nPosX,nPosY,tWhacAMole_Data["WhacAMoleEffect"],1)
		end 
	end 
	
	tWhacAMole_TargetTrap[nUserId]={}
	tWhacAMole_TargetTime[nUserId] = 0
	
end 


	
--游戏结束清空掩码
function WhacAMole_EndGame(nIndex,nUserId)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		return 
	end 
	local nEventType = tWhacAMole_Stc["FreeTimes"]["EventType"]
	local nDataType = tWhacAMole_Stc["FreeTimes"]["DataType"]
	local nWAMNumEvent = tWhacAMole_Stc["WhacAMoleNum"]["EventType"]
	local nWAMNumType = tWhacAMole_Stc["WhacAMoleNum"]["DataType"]
	local nWAMProcessEvent = tWhacAMole_Stc["Process"]["EventType"]
	local nWAMProcessType = tWhacAMole_Stc["Process"]["DataType"]
	local nMapId = Get_UserMapId(nUserId)
	
	Task_StcReset(nEventType,nDataType,nUserId)
	-- if nIndex == tWhacAMole_Data["EnterInstance"]["Free"] then 
		-- if Get_UserStatisticValue(nEventType,nDataType,nUserId) >= 1 then 
			
			-- return 
		-- end
		
		-- 设置掩码
		-- Task_AddStatistic(nEventType,nDataType,1,1,nUserId)
		-- Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	
	-- else
		-- 判断游戏券 
		-- if not Item_ChkMulItem(tWhacAMole_Data["NeedItem"],tWhacAMole_Data["NeedItem"],1,1,0,nUserId) then 
			
			-- WhacAMole_CleanStc(nUserId)
			-- Task_SetStatistic(nWAMProcessEvent,nWAMProcessType,0,1,nUserId)
			-- Task_SetStcTimestamp(nWAMProcessEvent,nWAMProcessType,0,nUserId)
		
			-- Task_SetStatistic(nWAMNumEvent,nWAMNumType,0,1,nUserId)
			-- Task_SetStcTimestamp(nWAMNumEvent,nWAMNumType,0,nUserId)
			-- WhacAMole_ClearMapEffect(nUserId)
			-- Sys_MsgBox(tWhacAMole_CnTt["Msg"]["NoItem"],"Sys_GotoSomeWhere</N>60</N>46".."</N>"..nMapId,"NULL",nUserId)
			-- return 
		-- end 
		-- 扣除物品
		-- if not Item_DelMulItem(tWhacAMole_Data["NeedItem"],tWhacAMole_Data["NeedItem"],1,1,0,nUserId) then
			
			-- return
		-- end 
		-- Sys_SaveActionFestivalLog(tWhacAMole_Log["UesItem"],nUserId)
		-- local sLog = string.format(tWhacAMole_Log["DelItem"],tWhacAMole_Data["NeedItem"],1)
		-- Sys_SaveActionFestivalLog(sLog,nUserId)
	-- end 

	--设置结束掩码 data=2
	Task_SetStatistic(nWAMProcessEvent,nWAMProcessType,2,1,nUserId)
	Task_SetStcTimestamp(nWAMProcessEvent,nWAMProcessType,0,nUserId)
	 
	--清除奖励掩码
	local nAwardEvent = tWhacAMole_Stc["Award"]["EventType"]
	local nAwardType = tWhacAMole_Stc["Award"]["DataType"]
	
	Task_SetStatistic(nAwardEvent,nAwardType,0,1,nUserId)
	Task_SetStcTimestamp(nAwardEvent,nAwardType,0,nUserId)
	 
	WhacAMole_CleanStc(nUserId)
	-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId)

	--积分
	local nWAMNum = Get_UserStatisticValue(nWAMNumEvent,nWAMNumType,nUserId)
	local sCont = string.format(tWhacAMole_CnTt["Msg"]["TimeOut"],nWAMNum)
	if nWAMNum == 0 then 
		sCont = tWhacAMole_CnTt["Msg"]["TimeOutWithNone"]
	end 
	WhacAMole_ClearMapEffect(nUserId)
	Sys_MsgBox(sCont,"Sys_GotoSomeWhere</N>60</N>46".."</N>"..nMapId,"NULL",nUserId)
end
	
function WhacAMole_GetAward(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		return 
	end 
	local nUserId = Get_UserId()
	local nUserMap = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nUserMap)
	
	if nMapDoc ~= tWhacAMole_Data["MapDoc"] then
		return 
	end
	
	--积分
	local nWAMNumEvent = tWhacAMole_Stc["WhacAMoleNum"]["EventType"]
	local nWAMNumType = tWhacAMole_Stc["WhacAMoleNum"]["DataType"]
	local nWAMNum = Get_UserStatisticValue(nWAMNumEvent,nWAMNumType,nUserId)

	local nWAMProcessEvent = tWhacAMole_Stc["Process"]["EventType"]
	local nWAMProcessType = tWhacAMole_Stc["Process"]["DataType"]
	
	local nAwardNum = math.floor(nWAMNum/3)
	if nAwardNum == 0 then 
		-- 清踩正确陷阱数掩码
		Task_SetStatistic(nWAMNumEvent,nWAMNumType,0,1,nUserId)
		Task_SetStcTimestamp(nWAMNumEvent,nWAMNumType,0,nUserId)
		
		--重置进度掩码 data=0
		Task_SetStatistic(nWAMProcessEvent,nWAMProcessType,0,1,nUserId)
		Task_SetStcTimestamp(nWAMProcessEvent,nWAMProcessType,0,nUserId)
		Sys_MsgBox(tWhacAMole_CnTt["Msg"]["NoAward"])
		return
	end 
	--防刷  限制 最大 30个
	if nAwardNum > 30 then 
		return
	end

	--奖励掩码
	local nAwardEvent = tWhacAMole_Stc["Award"]["EventType"]
	local nAwardType = tWhacAMole_Stc["Award"]["DataType"]
	local nAwardData = Get_UserStatisticValue(nAwardEvent,nAwardType,nUserId)
	if nAwardData > 0 then 
		return
	end 
	
	local nWAMProcessData = Get_UserStatisticValue(nWAMProcessEvent,nWAMProcessType,nUserId)
	
	if nWAMProcessData ~= 2 then 
		return
	end 
	
	local tTab = CommonFunc_Copy(tWhacAMole_Award["Point"])
	local sAttr = string.format(tWhacAMole_Award["Point"]["RewardItem"][1]["Attr"],nAwardNum)
	tTab["RewardItem"][1]["Attr"] = sAttr
	
	--判断背包空间
	local nSpaceNum = RewardTemplate_GetRewardSpace(tTab,nUserId)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	RewardTemplate_UseItemAndMsg(tTab)

	Sys_MsgBox(string.format(tWhacAMole_CnTt["Msg"]["Award"],nAwardNum),"LinkNpcGossipFunc_New</N>"..nNpcId.."</S>1-1","NULL",nUserId)
	
	-- 清踩正确陷阱数掩码
	Task_SetStatistic(nWAMNumEvent,nWAMNumType,0,1,nUserId)
	Task_SetStcTimestamp(nWAMNumEvent,nWAMNumType,0,nUserId)
	
	--重置进度掩码 data=0
	Task_SetStatistic(nWAMProcessEvent,nWAMProcessType,0,1,nUserId)
	Task_SetStcTimestamp(nWAMProcessEvent,nWAMProcessType,0,nUserId)

end 

function WhacAMole_Again(nIndex,nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		return 
	end 

	local nUserId = Get_UserId()
	local nUserMap = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nUserMap)
	
	if nMapDoc ~= tWhacAMole_Data["MapDoc"] then
		return 
	end

	local nWAMProcessEvent = tWhacAMole_Stc["Process"]["EventType"]
	local nWAMProcessType = tWhacAMole_Stc["Process"]["DataType"]

	local nWAMNumEvent = tWhacAMole_Stc["WhacAMoleNum"]["EventType"]
	local nWAMNumType = tWhacAMole_Stc["WhacAMoleNum"]["DataType"]

	local nWAMProcessData = Get_UserStatisticValue(nWAMProcessEvent,nWAMProcessType,nUserId)
	
	if nWAMProcessData ~= 2 then 
		return
	end 
	--清除地效
	WhacAMole_ClearMapEffect(nUserId)
	WhacAMole_CleanStc(nUserId)
	
	-- 清踩正确陷阱数掩码
	Task_SetStatistic(nWAMNumEvent,nWAMNumType,0,1,nUserId)
	Task_SetStcTimestamp(nWAMNumEvent,nWAMNumType,0,nUserId)

	--重置进度掩码 data=0
	Task_SetStatistic(nWAMProcessEvent,nWAMProcessType,0,1,nUserId)
	Task_SetStcTimestamp(nWAMProcessEvent,nWAMProcessType,0,nUserId)

	WhacAMole_Start(nIndex,nNpcId)

end 

--陷阱触发
function WhacAMole_Trap(nTrapId,nTrapType)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		return 
	end 
	local nUserId = Get_UserId()
	local nWAMProcessEvent = tWhacAMole_Stc["Process"]["EventType"]
	local nWAMProcessType = tWhacAMole_Stc["Process"]["DataType"]
	local nWAMProcessData = Get_UserStatisticValue(nWAMProcessEvent,nWAMProcessType,nUserId)
	
	local nTrapEvent1 = tWhacAMole_Stc["Trap"]["Event"]
	local nTrapType1 = tWhacAMole_Stc["Trap"]["Type"][nTrapType]
	
	local nWAMNumEvent = tWhacAMole_Stc["WhacAMoleNum"]["EventType"]
	local nWAMNumType = tWhacAMole_Stc["WhacAMoleNum"]["DataType"]

	

	--还没开始/本轮游戏结束不触发陷阱
	if nWAMProcessData ~= 1 then 
		return 
	end 

	if Get_UserStatisticValue(nTrapEvent1,nTrapType1) == 1 then 
		return 
	end 

	if  tWhacAMole_TargetTrap[nUserId] ~= nil then 
		for i , v in ipairs(tWhacAMole_TargetTrap[nUserId]) do 

			if v == nTrapType then 
				--设置当前陷阱掩码
				Task_AddStatistic(nTrapEvent1,nTrapType1,1,1)
				Task_SetStcTimestamp(nTrapEvent1,nTrapType1,0)
				
				--设置数量
				Task_AddStatistic(nWAMNumEvent,nWAMNumType,1,1)
				Task_SetStcTimestamp(nWAMNumEvent,nWAMNumType,0)
				
				--删除光效
				local nPosX,nPosY = WhacAMole_GetTrapPos(nTrapType)
				local nUserMap = Get_UserMapId(nUserId)
				local nWAMNum = Get_UserStatisticValue(nWAMNumEvent,nWAMNumType,nUserId)
				Map_Effect(nUserMap,nPosX,nPosY,tWhacAMole_Data["WhacAMoleEffect"],1)
				User_TalkChannel2005(string.format(tWhacAMole_CnTt["Msg"]["Catch"],nWAMNum),nUserId)
				User_EffectAdd("self",tWhacAMole_Data["Effect"]["Down"],nUserId)

				
			end
		end
	end 

end


--传送
function WhacAMole_Back(nMapId)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		return 
	end 
	
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	if Get_MapDoc(nUserMapId) == tWhacAMole_Data["MapDoc"] then
		
		User_SetTimer(1,"NULL",1,nUserId)
		if tWhacAMole_TargetUser[nUserId] ~= nil then 
			tWhacAMole_TargetUser[nUserId] = 1 + tWhacAMole_TargetUser[nUserId]
		else
			tWhacAMole_TargetUser[nUserId] = 0
		end 
		local nPosX = tWhacAMole_Data["Trans"][nMapId]["PosX"]
		local nPosY = tWhacAMole_Data["Trans"][nMapId]["PosY"]
		
		--传送进地图
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,3,3,1,nUserId)
		LinkNpcGossipFunc_New(26486,"6-1")
	end 
end 


--打开天石商店
function WhacAMole_OpenShop(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return 
	end 
	
	User_OpenDialog()
	
end 

--游玩券产出检测stc
function WhacAMole_ChecStc(nEvent,nType,nLimit)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		return 
	end 
	if nEvent ~= nil and nEvent ~=0 and nType ~= nil and nType ~= 0 then 
		Task_StcReset(nEvent,nType)
		
		if Get_UserStatisticValue(nEvent,nType) >= nLimit then 
			return	false	
		end 
	end 
	return true
	
end 

function WhacAMole_GetFanyItem(nEvent,nType,nLimit,nLogIndex)

	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		return 
	end 
	--等级要求
	if not User_JudgeLevelAndMetempsychosis(tWhacAMole_Data["Level"],tWhacAMole_Data["Mete"])  then
		return
	end 
	
	if nEvent ~= nil and nEvent ~=0 and nType ~= nil and nType ~= 0 then 
		Task_StcReset(nEvent,nType)
		if not WhacAMole_ChecStc(nEvent,nType,nLimit) then 
			return
		end 
	end 

	local nUserId = Get_UserId()
	--判断背包空间
	local tTab = CommonFunc_Copy(tWhacAMole_Award["FanyItem"])

	local sLog = string.format(tWhacAMole_Award["FanyItem"]["LogStep"],tostring(nLogIndex))

	if nLogIndex == 4 then 
		nLogIndex = nLogIndex - 3
	end 
	if nLogIndex == 3 then 
		nLogIndex = nLogIndex - 2
	end 
	local sAttr = string.format(tWhacAMole_Award["FanyItem"]["RewardItem"][1]["Attr"],tostring(nLogIndex))

	tTab["LogStep"] = sLog
	tTab["RewardItem"][1]["Attr"] = sAttr
	local nWAM_Space = RewardTemplate_GetRewardSpace(tTab,nUserId)

	if not User_CheckLeftSpace(nWAM_Space,nUserId) then

		Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nWAM_Space))
		return
	end

	if nEvent ~= nil and nEvent ~=0 and nType ~= nil and nType ~= 0 then 
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId) 
	end 

	RewardTemplate_UseItemAndMsg(tTab,nUserId)
	
end 

function WhacAMole_KillReward(nMonsterId)
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		return 
	end 

	if not User_JudgeLevelAndMetempsychosis(tWhacAMole_Data["Level"],tWhacAMole_Data["Mete"]) then
		return
	end
	
	if not WhacAMole_ChecStc(tWhacAMole_Stc["MonsterDrop"]["EventType"],tWhacAMole_Stc["MonsterDrop"]["DataType"],tWhacAMole_Stc["MonsterDrop"]["Limit"]) then 
		return
	end 
	if math.random(1,100) > 2 then
		return
	end

	WhacAMole_GetFanyItem(tWhacAMole_Stc["MonsterDrop"]["EventType"],tWhacAMole_Stc["MonsterDrop"]["DataType"],tWhacAMole_Stc["MonsterDrop"]["Limit"],4)

end 

function WhacAMole_Leave()
	local sFunc = "WhacAMole_Back</N>10835"
	Sys_MsgBox(tWhacAMole_CnTt["Msg"]["GoOut"],sFunc,nil)

end 
----------------------------------NPC部分---------------------------------------------

-- 26480,'胖胖',0002,31350,-1,1
tNpcFace[3135] = 2913
tNpcGossip[26480]= tNpcGossip[26480] or DefaultNpc:new{}
tNpcGossip[26480]["OptionHidden"] = 1
tNpcGossip[26480]["DialogueText"] = tWhacAMole_CnTt[26480]

--活动中
tNpcGossip[26480]["Text1-1"] = {111,112}
tNpcGossip[26480]["Text111"] = tWhacAMole_CnTt[26480]["Text111"]
tNpcGossip[26480]["Text112"] = tWhacAMole_CnTt[26480]["Text112"]

tNpcGossip[26480]["tOption1-1"] = {111}
tNpcGossip[26480]["Option111"] = tWhacAMole_CnTt[26480]["Option111"]
tNpcGossip[26480]["ChkFunc1-1"] = function()
	
	return Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  
	
end

tNpcGossip[26480]["OptionFunc111"] = "WhacAMole_EnterInstance</N>26480"

--活动时间后
tNpcGossip[26480]["Text1-2"] = {121}
tNpcGossip[26480]["tOption1-2"] = {121}
tNpcGossip[26480]["Option121"] = tWhacAMole_CnTt[26480]["Option121"]
tNpcGossip[26480]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) 
end


---- 26481,'小猪哈姆',0002,31367,
tNpcFace[3136] = 2914
tNpcGossip[26481]= tNpcGossip[26481] or DefaultNpc:new{}
tNpcGossip[26481]["OptionHidden"] = 1
tNpcGossip[26481]["DialogueText"] = tWhacAMole_CnTt[26481]

--活动中 开始前
tNpcGossip[26481]["Text1-1"] = {111,112,113}
tNpcGossip[26481]["Text111"] = tWhacAMole_CnTt[26481]["Text111"]
tNpcGossip[26481]["Text112"] = tWhacAMole_CnTt[26481]["Text112"]
tNpcGossip[26481]["Text113"] = tWhacAMole_CnTt[26481]["Text113"]

tNpcGossip[26481]["tOption1-1"] = {111,113}
tNpcGossip[26481]["Option111"] = tWhacAMole_CnTt[26481]["Option111"]
tNpcGossip[26481]["Option112"] = tWhacAMole_CnTt[26481]["Option112"]
tNpcGossip[26481]["Option113"] = tWhacAMole_CnTt[26481]["Option113"]
tNpcGossip[26481]["ChkFunc1-1"] = function()
	if  Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		local nUserId = Get_UserId()
		local nWAMProcessEvent = tWhacAMole_Stc["Process"]["EventType"]
		local nWAMProcessType = tWhacAMole_Stc["Process"]["DataType"]
		local nWAMProcessData = Get_UserStatisticValue(nWAMProcessEvent,nWAMProcessType,nUserId)
		
		if nWAMProcessData == nil or nWAMProcessData == 0 then
		
			tNpcGossip[26481]["tOption1-1"] = {111,113}
			local nEventType = tWhacAMole_Stc["FreeTimes"]["EventType"]
			local nDataType = tWhacAMole_Stc["FreeTimes"]["DataType"]
		
			--隔天清掩码
			Task_StcReset(nEventType,nDataType)
			if Get_UserStatisticValue(nEventType,nDataType) >= tWhacAMole_Stc["FreeTimes"]["Limit"] then 
				tNpcGossip[26481]["tOption1-1"] = {112,113}
			end 
			return true
		end 
	end 
end
		
tNpcGossip[26481]["OptionFunc111"] = "WhacAMole_Start</N>1</N>26481"
tNpcGossip[26481]["OptionFunc112"] = "WhacAMole_Start</N>2</N>26481"
tNpcGossip[26481]["OptionFunc113"] = "WhacAMole_Leave"

-- 活动时间后
tNpcGossip[26481]["Text1-2"] = {121}
tNpcGossip[26481]["Text121"] = tWhacAMole_CnTt[26481]["Text121"]
tNpcGossip[26481]["tOption1-2"] = {121}
tNpcGossip[26481]["Option121"] = tWhacAMole_CnTt[26481]["Option121"]
tNpcGossip[26481]["ChkFunc1-2"] = function()

	return CommonFunc_GetAfterActivityTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) 
	
end
-- tNpcGossip[26481]["OptionFunc121"] = "ThanksGiving2019Dinner_Back</N>10700"

--活动中 进行中
tNpcGossip[26481]["Text1-3"] = {131}
tNpcGossip[26481]["Text131"] = tWhacAMole_CnTt[26481]["Text131"]

tNpcGossip[26481]["tOption1-3"] = {131}
tNpcGossip[26481]["Option131"] = tWhacAMole_CnTt[26481]["Option131"]
tNpcGossip[26481]["ChkFunc1-3"] = function()
	if  Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		local nUserId = Get_UserId()
		local nWAMProcessEvent = tWhacAMole_Stc["Process"]["EventType"]
		local nWAMProcessType = tWhacAMole_Stc["Process"]["DataType"]
		local nWAMProcessData = Get_UserStatisticValue(nWAMProcessEvent,nWAMProcessType,nUserId)
		
		if nWAMProcessData == 1 then
			return true
		end 
	end 
end
		
--活动中 结束后 未领奖
tNpcGossip[26481]["Text1-4"] = {141}
tNpcGossip[26481]["Text141"] = tWhacAMole_CnTt[26481]["Text141"]
tNpcGossip[26481]["Text142"] = tWhacAMole_CnTt[26481]["Text142"]

tNpcGossip[26481]["tOption1-4"] = {141}
tNpcGossip[26481]["Option141"] = tWhacAMole_CnTt[26481]["Option141"]
tNpcGossip[26481]["Option142"] = tWhacAMole_CnTt[26481]["Option142"]

tNpcGossip[26481]["ChkFunc1-4"] = function()
	if  Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		local nUserId = Get_UserId()
		local nWAMProcessEvent = tWhacAMole_Stc["Process"]["EventType"]
		local nWAMProcessType = tWhacAMole_Stc["Process"]["DataType"]
		local nWAMProcessData = Get_UserStatisticValue(nWAMProcessEvent,nWAMProcessType,nUserId)
		
		local nWAMNumEvent = tWhacAMole_Stc["WhacAMoleNum"]["EventType"]
		local nWAMNumType = tWhacAMole_Stc["WhacAMoleNum"]["DataType"]
		local nWAMNum = Get_UserStatisticValue(nWAMNumEvent,nWAMNumType,nUserId)
		local nSum = math.floor(nWAMNum/3)

		if nSum >0 then 
			tNpcGossip[26481]["Text1-4"] = {141}
			tNpcGossip[26481]["Text141"] = string.format(tWhacAMole_CnTt[26481]["Text141"],nWAMNum,nSum)
			tNpcGossip[26481]["tOption1-4"] = {141}
		else
			tNpcGossip[26481]["Text1-4"] = {142}
			tNpcGossip[26481]["tOption1-4"] = {142}
		end 
		
		if nWAMProcessData == 2 then
			return true
		end 
	end 
end
		
tNpcGossip[26481]["OptionFunc141"] = "WhacAMole_GetAward</N>26481"
tNpcGossip[26481]["OptionFunc142"] = "WhacAMole_Again</N>2</N>26481"


--没有活动券
tNpcGossip[26481]["Text2-1"] = {211,212} 
tNpcGossip[26481]["Text211"] = tWhacAMole_CnTt[26481]["Text211"]
tNpcGossip[26481]["Text212"] = tWhacAMole_CnTt[26481]["Text212"]
tNpcGossip[26481]["tOption2-1"] = {211}
tNpcGossip[26481]["Option211"] = tWhacAMole_CnTt[26481]["Option211"]


--背包空间不足
tNpcGossip[26481]["Text2-2"] = {221} 
tNpcGossip[26481]["Text221"] = tWhacAMole_CnTt[26481]["Text221"]
tNpcGossip[26481]["tOption2-1"] = {221}
tNpcGossip[26481]["Option221"] = tWhacAMole_CnTt[26481]["Option221"]

 
---- 26515,'尼克',32,33180,
tNpcFace[3318] = 2915
tNpcGossip[26515]= tNpcGossip[26515] or DefaultNpc:new{}
tNpcGossip[26515]["OptionHidden"] = 1
tNpcGossip[26515]["DialogueText"] = tWhacAMole_CnTt[26515]

--活动中 开始前
tNpcGossip[26515]["Text1-1"] = {111,112}
tNpcGossip[26515]["Text111"] = tWhacAMole_CnTt[26515]["Text111"]
tNpcGossip[26515]["Text112"] = tWhacAMole_CnTt[26515]["Text112"]

tNpcGossip[26515]["tOption1-1"] = {111}
tNpcGossip[26515]["Option111"] = tWhacAMole_CnTt[26515]["Option111"]
tNpcGossip[26515]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])
end
		

-- 活动中 等级不满
tNpcGossip[26515]["Text1-2"] = {121,122}
tNpcGossip[26515]["Text121"] = tWhacAMole_CnTt[26515]["Text121"]
tNpcGossip[26515]["Text122"] = tWhacAMole_CnTt[26515]["Text122"]
tNpcGossip[26515]["tOption1-2"] = {121}
tNpcGossip[26515]["Option121"] = tWhacAMole_CnTt[26515]["Option121"]
tNpcGossip[26515]["ChkFunc1-2"] = function()

	if not User_JudgeLevelAndMetempsychosis(tWhacAMole_Data["Level"],tWhacAMole_Data["Mete"]) and Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
	
		return true
	end 
end

-- 活动中 等级满足
tNpcGossip[26515]["Text1-3"] = {131}
tNpcGossip[26515]["Text131"] = tWhacAMole_CnTt[26515]["Text131"]
tNpcGossip[26515]["tOption1-3"] = {131}
tNpcGossip[26515]["Option131"] = tWhacAMole_CnTt[26515]["Option131"]
tNpcGossip[26515]["ChkFunc1-3"] = function()

	if User_JudgeLevelAndMetempsychosis(tWhacAMole_Data["Level"],tWhacAMole_Data["Mete"]) and Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
	
		return true
	end 
	
end
tNpcGossip[26515]["OptionFunc131"] = "WhacAMole_OpenShop</N>26515"

-- 活动后
tNpcGossip[26515]["Text1-4"] = {141}
tNpcGossip[26515]["Text141"] = tWhacAMole_CnTt[26515]["Text141"]
tNpcGossip[26515]["tOption1-4"] = {141}
tNpcGossip[26515]["Option141"] = tWhacAMole_CnTt[26515]["Option141"]
tNpcGossip[26515]["ChkFunc1-4"] = function()

	return CommonFunc_GetAfterActivityTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) 
	
end
tNpcGossip[26544]= tNpcGossip[26515] or DefaultNpc:new{}

----------------------------------------------------------物品部分--------------------------------------

tItem[3330736] = tItem[3330736] or {}
tItem[3330736]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"])  then
		if Item_ChkMulItem(nItemId,nItemId,1,nil,nil,nUserId) then
			Item_DelAllItemByType(nItemId,nUserId)
		end
		return 
	end 
	
	if not Item_ChkItem(nItemId) then
		return
	end
	NpcPosition_PathFind(26486)

end

---------------------------------陷阱部分---------------------------------------------

--九宫格陷阱
tTrap[2583] = tTrap[2583] or {}
tTrap[2583]["Function"] = function(nTrapId,nTrapType)
	WhacAMole_Trap(nTrapId,nTrapType)
end

tTrap[2584] = tTrap[2583]
tTrap[2585] = tTrap[2583]
tTrap[2586] = tTrap[2583]
tTrap[2587] = tTrap[2583]
tTrap[2588] = tTrap[2583]
tTrap[2589] = tTrap[2583]
tTrap[2590] = tTrap[2583]
tTrap[2591] = tTrap[2583]

tTrap[2592] = tTrap[2592] or {}
tTrap[2592]["Function"] = function(nTrapId,nTrapType)
	WhacAMole_Leave()
end


---------------------------------------怪物部分-------------------------------------
--全区全服全片区怪物掉落
local tWhacAMole_KillReward = {}
	tWhacAMole_KillReward["Function"]=WhacAMole_KillReward
	table.insert(tMonsterDrop_AreaLoad,tWhacAMole_KillReward)	
	
--激情服怪物掉落
local tWhacAMole_KillReward_NoGift = {}
	tWhacAMole_KillReward_NoGift["Function"] = WhacAMole_KillReward
	tWhacAMole_KillReward_NoGift["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tWhacAMole_KillReward_NoGift)







