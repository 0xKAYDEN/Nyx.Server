------------------------------------------------------------------------------------
--Name:		170731[英文征服][任务脚本]8月帮派评选分享奖励制作
--Creator: 	兰瑞妹
--Created:	2017/07/31
------------------------------------------------------------------------------------

-- 命名前缀
-- GangsReward_InAugust_

-- logid 12000807

-- #stc 掩码说明 
-- #stc(164,16) 开启福地之门次数。上限3
-- #stc(164,52) 记录福地之门是否开启

-- #GlobalId 51708
--#动态存储表说明
--#data0 第一名帮派id  data1 帮主id
--#datastr0 第一名帮派名称 datastr1 开启次数
--#data2 第一名帮派id  data3 帮主id
--#datastr2 第二名帮派名称 datastr3 开启次数
--#data4 第一名帮派id  data5 帮主id
--#datastr4 第三名帮派名称 datastr5 开启次数

-- 常量表
local tGangsReward_InAugust_Count = {}
	-- 活动时间
	tGangsReward_InAugust_Count["ActivityTime"] = "2017-08-23 00:00 2017-08-31 23:59"
	-- 活动时间
	tGangsReward_InAugust_Count["ItemTime"] = "2017-08-23 00:00 2017-09-07 23:59"
	
	-- 动态码
	tGangsReward_InAugust_Count["GlobalId"] = 51708
	
	tGangsReward_InAugust_Count["Time"] = {}
	tGangsReward_InAugust_Count["Time"][1] = 120
	tGangsReward_InAugust_Count["Time"][2] = 180
	tGangsReward_InAugust_Count["Time"][3] = 240
	
	-- 下一场与最长5分钟
	tGangsReward_InAugust_Count["NewTime"] = 300
	
-- Log表
local tGangsReward_InAugust_Log = {}
	-- 过期删除
	tGangsReward_InAugust_Log["OverDue"] = "0,0,%d,1,12000807,2,0,0"

-- stc掩码
local tGangsReward_InAugust_Stc = {}
	-- 开启福地之门次数。上限3
	tGangsReward_InAugust_Stc[1] = {}
	tGangsReward_InAugust_Stc[1]["EventType"] = 164
	tGangsReward_InAugust_Stc[1]["DataType"] = 16
	tGangsReward_InAugust_Stc[1]["Limit"] = 3
	-- 记录福地之门是否开启
	tGangsReward_InAugust_Stc[2] = {}
	tGangsReward_InAugust_Stc[2]["EventType"] = 164
	tGangsReward_InAugust_Stc[2]["DataType"] = 52
-- 特效
local tGangsReward_InAugust_Effect = {}
	-- 进图
	tGangsReward_InAugust_Effect[1] = {}
	tGangsReward_InAugust_Effect[1]["EffectObj"] = "self"
	tGangsReward_InAugust_Effect[1]["Effect"] = "moveback"
	-- 出图
	tGangsReward_InAugust_Effect[2] = {}
	tGangsReward_InAugust_Effect[2]["EffectObj"] = "self"
	tGangsReward_InAugust_Effect[2]["Effect"] = "movego"
	
-- 表数据
local tGangsReward_InAugust_RankingData = {}
local tGangsReward_InAugust_nGuildTime = {}
	
-- 开启福地，npc对应数据
local tGangsReward_InAugust_NpcData = {}
	tGangsReward_InAugust_NpcData[3304511] = {}
	-- 福地钥匙对应id
	tGangsReward_InAugust_NpcData[3304511]["KeyItemId"] = 3304511
	-- 删除log
	tGangsReward_InAugust_NpcData[3304511]["Log"] = "0,0,3304511,1,12000807,2,0,0"
	-- 动态表pos
	tGangsReward_InAugust_NpcData[3304511]["Pos"] = 0
	-- 对应名次
	tGangsReward_InAugust_NpcData[3304511]["Rank"] = 1
	-- 对应地图
	tGangsReward_InAugust_NpcData[3304511]["MapId"] = 10177
	tGangsReward_InAugust_NpcData[3304512] = {}
	tGangsReward_InAugust_NpcData[3304512]["KeyItemId"] = 3304512
	tGangsReward_InAugust_NpcData[3304512]["Log"] = "0,0,3304512,1,12000807,2,0,0"
	tGangsReward_InAugust_NpcData[3304512]["Pos"] = 2
	tGangsReward_InAugust_NpcData[3304512]["Rank"] = 2
	tGangsReward_InAugust_NpcData[3304512]["MapId"] = 10178
	tGangsReward_InAugust_NpcData[3304513] = {}
	tGangsReward_InAugust_NpcData[3304513]["KeyItemId"] = 3304513
	tGangsReward_InAugust_NpcData[3304513]["Log"] = "0,0,3304513,1,12000807,2,0,0"
	tGangsReward_InAugust_NpcData[3304513]["Pos"] = 4
	tGangsReward_InAugust_NpcData[3304513]["Rank"] = 3
	tGangsReward_InAugust_NpcData[3304513]["MapId"] = 10179
	
-- 珍宝雨内容
local tGangsReward_InAugust_AllReward = {}
	tGangsReward_InAugust_AllReward["Parameter"] = {}
	tGangsReward_InAugust_AllReward["Parameter"]["MapId"] = 3030
	tGangsReward_InAugust_AllReward["Parameter"]["PosX"] = 186
	tGangsReward_InAugust_AllReward["Parameter"]["PosY"] = 187
	tGangsReward_InAugust_AllReward["Parameter"]["Cellx"] = 304
	tGangsReward_InAugust_AllReward["Parameter"]["Celly"] = 307
	tGangsReward_InAugust_AllReward["Parameter"]["ExistTime"] = 300
-- 可以下三场，每场100龙珠，1000天石，3w气力值，200个明亮星陨石
-- 30龙珠，300天石.9000气力值，60个明亮星陨石
-- 30龙珠，300天石.9000气力值，60个明亮星陨石
-- 40龙珠，400天石.12000气力值，80个明亮星陨石
	tGangsReward_InAugust_AllReward[1] = {}
	tGangsReward_InAugust_AllReward[1][1] = {}
	tGangsReward_InAugust_AllReward[1][1][1] = {}
	tGangsReward_InAugust_AllReward[1][1][1]["ItemNum"] = 30
	tGangsReward_InAugust_AllReward[1][1][1]["ItemId"] = 1088000
	tGangsReward_InAugust_AllReward[1][1][2] = {}
	tGangsReward_InAugust_AllReward[1][1][2]["ItemNum"] = 30
	tGangsReward_InAugust_AllReward[1][1][2]["ItemId"] = 3304514
	tGangsReward_InAugust_AllReward[1][1][3] = {}
	tGangsReward_InAugust_AllReward[1][1][3]["ItemNum"] = 30
	tGangsReward_InAugust_AllReward[1][1][3]["ItemId"] = 3304515
	tGangsReward_InAugust_AllReward[1][1][4] = {}
	tGangsReward_InAugust_AllReward[1][1][4]["ItemNum"] = 30
	tGangsReward_InAugust_AllReward[1][1][4]["ItemId"] = 3304516
	tGangsReward_InAugust_AllReward[1][2] = {}
	tGangsReward_InAugust_AllReward[1][2][1] = {}
	tGangsReward_InAugust_AllReward[1][2][1]["ItemNum"] = 40
	tGangsReward_InAugust_AllReward[1][2][1]["ItemId"] = 1088000
	tGangsReward_InAugust_AllReward[1][2][2] = {}
	tGangsReward_InAugust_AllReward[1][2][2]["ItemNum"] = 40
	tGangsReward_InAugust_AllReward[1][2][2]["ItemId"] = 3304514
	tGangsReward_InAugust_AllReward[1][2][3] = {}
	tGangsReward_InAugust_AllReward[1][2][3]["ItemNum"] = 40
	tGangsReward_InAugust_AllReward[1][2][3]["ItemId"] = 3304515
	tGangsReward_InAugust_AllReward[1][2][4] = {}
	tGangsReward_InAugust_AllReward[1][2][4]["ItemNum"] = 40
	tGangsReward_InAugust_AllReward[1][2][4]["ItemId"] = 3304516
	-- 可以下三场，每场80龙珠，800天石，2.4w气力值，160个明亮星陨石
	tGangsReward_InAugust_AllReward[2] = {}
	tGangsReward_InAugust_AllReward[2][1] = {}
	tGangsReward_InAugust_AllReward[2][1][1] = {}
	tGangsReward_InAugust_AllReward[2][1][1]["ItemNum"] = 24
	tGangsReward_InAugust_AllReward[2][1][1]["ItemId"] = 1088000
	tGangsReward_InAugust_AllReward[2][1][2] = {}
	tGangsReward_InAugust_AllReward[2][1][2]["ItemNum"] = 24
	tGangsReward_InAugust_AllReward[2][1][2]["ItemId"] = 3304514
	tGangsReward_InAugust_AllReward[2][1][3] = {}
	tGangsReward_InAugust_AllReward[2][1][3]["ItemNum"] = 24
	tGangsReward_InAugust_AllReward[2][1][3]["ItemId"] = 3304515
	tGangsReward_InAugust_AllReward[2][1][4] = {}
	tGangsReward_InAugust_AllReward[2][1][4]["ItemNum"] = 24
	tGangsReward_InAugust_AllReward[2][1][4]["ItemId"] = 3304516
	tGangsReward_InAugust_AllReward[2][2] = {}
	tGangsReward_InAugust_AllReward[2][2][1] = {}
	tGangsReward_InAugust_AllReward[2][2][1]["ItemNum"] = 32
	tGangsReward_InAugust_AllReward[2][2][1]["ItemId"] = 1088000
	tGangsReward_InAugust_AllReward[2][2][2] = {}
	tGangsReward_InAugust_AllReward[2][2][2]["ItemNum"] = 32
	tGangsReward_InAugust_AllReward[2][2][2]["ItemId"] = 3304514
	tGangsReward_InAugust_AllReward[2][2][3] = {}
	tGangsReward_InAugust_AllReward[2][2][3]["ItemNum"] = 32
	tGangsReward_InAugust_AllReward[2][2][3]["ItemId"] = 3304515
	tGangsReward_InAugust_AllReward[2][2][4] = {}
	tGangsReward_InAugust_AllReward[2][2][4]["ItemNum"] = 32
	tGangsReward_InAugust_AllReward[2][2][4]["ItemId"] = 3304516
	-- 可以下三场，每场60龙珠，600天石，1.8w气力值，120个明亮星陨石
	tGangsReward_InAugust_AllReward[3] = {}
	tGangsReward_InAugust_AllReward[3][1] = {}
	tGangsReward_InAugust_AllReward[3][1][1] = {}
	tGangsReward_InAugust_AllReward[3][1][1]["ItemNum"] = 18
	tGangsReward_InAugust_AllReward[3][1][1]["ItemId"] = 1088000
	tGangsReward_InAugust_AllReward[3][1][2] = {}
	tGangsReward_InAugust_AllReward[3][1][2]["ItemNum"] = 18
	tGangsReward_InAugust_AllReward[3][1][2]["ItemId"] = 3304514
	tGangsReward_InAugust_AllReward[3][1][3] = {}
	tGangsReward_InAugust_AllReward[3][1][3]["ItemNum"] = 18
	tGangsReward_InAugust_AllReward[3][1][3]["ItemId"] = 3304515
	tGangsReward_InAugust_AllReward[3][1][4] = {}
	tGangsReward_InAugust_AllReward[3][1][4]["ItemNum"] = 18
	tGangsReward_InAugust_AllReward[3][1][4]["ItemId"] = 3304516
	tGangsReward_InAugust_AllReward[3][2] = {}
	tGangsReward_InAugust_AllReward[3][2][1] = {}
	tGangsReward_InAugust_AllReward[3][2][1]["ItemNum"] = 24
	tGangsReward_InAugust_AllReward[3][2][1]["ItemId"] = 1088000
	tGangsReward_InAugust_AllReward[3][2][2] = {}
	tGangsReward_InAugust_AllReward[3][2][2]["ItemNum"] = 24
	tGangsReward_InAugust_AllReward[3][2][2]["ItemId"] = 3304514
	tGangsReward_InAugust_AllReward[3][2][3] = {}
	tGangsReward_InAugust_AllReward[3][2][3]["ItemNum"] = 24
	tGangsReward_InAugust_AllReward[3][2][3]["ItemId"] = 3304515
	tGangsReward_InAugust_AllReward[3][2][4] = {}
	tGangsReward_InAugust_AllReward[3][2][4]["ItemNum"] = 24
	tGangsReward_InAugust_AllReward[3][2][4]["ItemId"] = 3304516
	
-- 奖励表
local tGangsReward_InAugust_Reward = {}
	-- 3304514,'10天石幸运包'
	tGangsReward_InAugust_Reward[3304514] = {}
	tGangsReward_InAugust_Reward[3304514]["Log"] = "0,0,3304514,1,12000807,2,2,10"
	tGangsReward_InAugust_Reward[3304514]["DeleteItem"] = {}
	tGangsReward_InAugust_Reward[3304514]["DeleteItem"][1] = {}
	tGangsReward_InAugust_Reward[3304514]["DeleteItem"][1]["Id"] = 3304514
	tGangsReward_InAugust_Reward[3304514]["DeleteItem"][1]["SaveTime"] = 0
	tGangsReward_InAugust_Reward[3304514]["RewardEMoney"] = {}
	tGangsReward_InAugust_Reward[3304514]["RewardEMoney"]["Value"] = 10
	tGangsReward_InAugust_Reward[3304514]["RewardEffect"] = {}
	tGangsReward_InAugust_Reward[3304514]["RewardEffect"]["Effect"] = "angelwing"
	-- 3304515,'300点气力值幸运包'
	tGangsReward_InAugust_Reward[3304515] = {}
	tGangsReward_InAugust_Reward[3304515]["Log"] = "0,0,3304515,1,12000807,2,12,300"
	tGangsReward_InAugust_Reward[3304515]["DeleteItem"] = {}
	tGangsReward_InAugust_Reward[3304515]["DeleteItem"][1] = {}
	tGangsReward_InAugust_Reward[3304515]["DeleteItem"][1]["Id"] = 3304515
	tGangsReward_InAugust_Reward[3304515]["DeleteItem"][1]["SaveTime"] = 0
	tGangsReward_InAugust_Reward[3304515]["RewardStrengthValue"] = {}
	tGangsReward_InAugust_Reward[3304515]["RewardStrengthValue"]["Value"] = 300
	tGangsReward_InAugust_Reward[3304515]["RewardEffect"] = {}
	tGangsReward_InAugust_Reward[3304515]["RewardEffect"]["Effect"] = "angelwing"
	-- 3304516,'明亮星陨石幸运包'
	tGangsReward_InAugust_Reward[3304516] = {}
	tGangsReward_InAugust_Reward[3304516]["Log"] = "0,0,3304516,1,12000807,2,3009001,2"
	tGangsReward_InAugust_Reward[3304516]["DeleteItem"] = {}
	tGangsReward_InAugust_Reward[3304516]["DeleteItem"][1] = {}
	tGangsReward_InAugust_Reward[3304516]["DeleteItem"][1]["Id"] = 3304516
	tGangsReward_InAugust_Reward[3304516]["DeleteItem"][1]["SaveTime"] = 1
	tGangsReward_InAugust_Reward[3304516]["RewardItem"] = {}
	tGangsReward_InAugust_Reward[3304516]["RewardItem"][1] = {}
	tGangsReward_InAugust_Reward[3304516]["RewardItem"][1]["Id"] = 3009001
	tGangsReward_InAugust_Reward[3304516]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tGangsReward_InAugust_Reward[3304516]["RewardEffect"] = {}
	tGangsReward_InAugust_Reward[3304516]["RewardEffect"]["Effect"] = "angelwing"
	
-- 寻路
local tGangsReward_InAugust_FindWay = {}
	tGangsReward_InAugust_FindWay[1] = {}
	tGangsReward_InAugust_FindWay[1]["PosX"] = 327
	tGangsReward_InAugust_FindWay[1]["PosY"] = 248
	tGangsReward_InAugust_FindWay[1]["MapId"] = 1002
	tGangsReward_InAugust_FindWay[1]["NpcId"] = 21102
	
	-- 帮派评选
	tGangsReward_InAugust_FindWay[2] = {}
	tGangsReward_InAugust_FindWay[2]["PosX"] = 315
	tGangsReward_InAugust_FindWay[2]["PosY"] = 248
	tGangsReward_InAugust_FindWay[2]["MapId"] = 1002
	tGangsReward_InAugust_FindWay[2]["NpcId"] = 21977
	
-- 地图传送点
local tGangsReward_InAugust_ChgMap = {}
	-- 百宝福地
	tGangsReward_InAugust_ChgMap[1] = {}
	tGangsReward_InAugust_ChgMap[1]["MapId"] = 10177
	tGangsReward_InAugust_ChgMap[1]["PosX"] = 470
	tGangsReward_InAugust_ChgMap[1]["PosY"] = 211
	tGangsReward_InAugust_ChgMap[1]["Range"] = 5
	tGangsReward_InAugust_ChgMap[1]["Effect"] = 1
	-- 双龙城
	tGangsReward_InAugust_ChgMap[2] = {}
	tGangsReward_InAugust_ChgMap[2]["MapId"] = 1002
	tGangsReward_InAugust_ChgMap[2]["PosX"] = 327
	tGangsReward_InAugust_ChgMap[2]["PosY"] = 248
	tGangsReward_InAugust_ChgMap[2]["Range"] = 5
	tGangsReward_InAugust_ChgMap[2]["Effect"] = 2
	
-- 坐标随机
local tGangsReward_InAugust_Pos = {}
	tGangsReward_InAugust_Pos[1] = {326,338}
	tGangsReward_InAugust_Pos[2] = {346,337}
--------------------------------------逻辑部分-------------------------------------------
-- 获取掩码值
function GangsReward_InAugust_GetStcValue(nIndex)
	local nEvent = tGangsReward_InAugust_Stc[nIndex]["EventType"]
	local nType = tGangsReward_InAugust_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	return nData
end

--设置掩码值
function GangsReward_InAugust_SetStcValue(nIndex,nAddType,nData)
	local nEvent = tGangsReward_InAugust_Stc[nIndex]["EventType"]
	local nType = tGangsReward_InAugust_Stc[nIndex]["DataType"]
	
	if nAddType == 1 then
		Task_SetStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	else
		Task_AddStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

-- 判断是否是帮主
function GangsReward_InAugust_ChkGuild()
	local nUserId = Get_UserId()
	local nGuildId = Get_UserGuildId()
	-- 未加入帮派
	if nGuildId == 0 then
		return false
	end
	-- 玩家并非帮主
	local nSynWandId = Get_SynWangId(nGuildId)
	if nUserId ~= nSynWandId then
		return false
	end
	
	return true
end

function GangsReward_InAugust_ChgMap(nIndex,nMapId)
	local nMapId = nMapId or tGangsReward_InAugust_ChgMap[nIndex]["MapId"]
	local nPosX = tGangsReward_InAugust_ChgMap[nIndex]["PosX"]
	local nPosY = tGangsReward_InAugust_ChgMap[nIndex]["PosY"]
	local nRange = tGangsReward_InAugust_ChgMap[nIndex]["Range"]
	local nEffect = tGangsReward_InAugust_ChgMap[nIndex]["Effect"]
	
	if nIndex == 1 then
		local nRandom = math.random(1,2)
		nPosX = tGangsReward_InAugust_Pos[nRandom][1]
		nPosY = tGangsReward_InAugust_Pos[nRandom][2]
	end
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
	User_EffectAdd(tGangsReward_InAugust_Effect[nEffect]["EffectObj"],tGangsReward_InAugust_Effect[nEffect]["Effect"])
end
---------------------------------------------------百宝福地大使 21102
function GangsReward_InAugust_Find(nNpcId)
	-- 寻路
	local nPosX = tGangsReward_InAugust_FindWay[2]["PosX"]
	local nPosY = tGangsReward_InAugust_FindWay[2]["PosY"]
	local nMapId = tGangsReward_InAugust_FindWay[2]["MapId"]
	local nNpcId = tGangsReward_InAugust_FindWay[2]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

--  开启福地之门
function GangsReward_InAugust_OpenDoor(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tGangsReward_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 非帮主
	if not GangsReward_InAugust_ChkGuild() then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 无福地秘钥
	local nItemId = 0
	local bExit = false
	for i,v in pairs(tGangsReward_InAugust_NpcData) do
		if Item_ChkItem(v["KeyItemId"]) then
			bExit = true
			nItemId = v["KeyItemId"]
		end
	end
	if not bExit then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nRank = tGangsReward_InAugust_NpcData[nItemId]["Rank"]
	local sText = tGangsReward_InAugust_Text[nNpcId]["Text231"]
	tNpcGossip[nNpcId]["Text231"] = string.format(sText,nRank)
	tNpcGossip[nNpcId]["OptionFunc231"] = "GangsReward_InAugust_SureOpen</N>"..nNpcId.."</N>"..nItemId
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

-- 确定开启
function GangsReward_InAugust_SureOpen(nNpcId,nItemId)
	-- 活动后
	if not Sys_ChkFullTime(tGangsReward_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 非帮主
	if not GangsReward_InAugust_ChkGuild() then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 已下过3场珍宝雨
	local nData = GangsReward_InAugust_GetStcValue(1)
	if nData >= tGangsReward_InAugust_Stc[1]["Limit"] then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 开启福地之门
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 设置掩码
		GangsReward_InAugust_SetStcValue(2,1,1)
		
		-- 刷新动态表
		GangsReward_InAugust_RefeshData(nItemId)
		
		-- 打log
		Sys_SaveActionFestivalLog(tGangsReward_InAugust_NpcData[nItemId]["Log"])
		
		-- 提示
		User_TalkChannel2005(tGangsReward_InAugust_Text[nNpcId]["Open"])
		local nRank = tGangsReward_InAugust_NpcData[nItemId]["Rank"]
		local nGuildId = Get_UserGuildId()
		local sGuildName = Get_UserSynDicateName(nGuildId)
		local sTip = tGangsReward_InAugust_Text[nNpcId]["BroadOpen"]
		Sys_SystemBroadcast(string.format(sTip,sGuildName,nRank))
	end
end

-- 进入百宝福地
function GangsReward_InAugust_EnterMap(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tGangsReward_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 已下过3场珍宝雨
	-- 间隔达5分钟
	local nEvent = tGangsReward_InAugust_Stc[1]["EventType"]
	local nType = tGangsReward_InAugust_Stc[1]["DataType"]
	local nData = GangsReward_InAugust_GetStcValue(1)
	if nData >= tGangsReward_InAugust_Stc[1]["Limit"] and Task_StcInterval(nEvent,nType,5,1) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 玩家进入地图，系统提示
	local nIndex = 0
	local nUserId = Get_UserId()
	local nGuildId = Get_UserGuildId()
	local sTip = tGangsReward_InAugust_Text[nNpcId]["OtherEnterMap"]
	for i,v in pairs(tGangsReward_InAugust_RankingData) do
		if v.GuildId == nGuildId then
			nIndex = i
			if v.SynWandId == nUserId then
				sTip = tGangsReward_InAugust_Text[nNpcId]["GuildEnterMap"]
			end
		end
	end
	GangsReward_InAugust_ChgMap(1,tGangsReward_InAugust_NpcData[nIndex]["MapId"])
	
	local nRank = tGangsReward_InAugust_NpcData[nIndex]["Rank"]
	User_TalkChannel2005(string.format(sTip,nRank))
end

-- 刷新动态表
function GangsReward_InAugust_RefeshData(nItemId)
	local nUserId = Get_UserId()
	local nGuildId = Get_UserGuildId()
	local nSynWandId = Get_SynWangId(nGuildId)
	local sGuildName = Get_UserSynDicateName(nGuildId)
	-- 表数据
	tGangsReward_InAugust_RankingData[nItemId] = {}
	tGangsReward_InAugust_RankingData[nItemId].GuildId = nGuildId
	tGangsReward_InAugust_RankingData[nItemId].SynWandId = nSynWandId
	tGangsReward_InAugust_RankingData[nItemId].GuildName = sGuildName
	
	--动态表
	local nGlobalId = tGangsReward_InAugust_Count["GlobalId"]
	local nPos = tGangsReward_InAugust_NpcData[nItemId]["Pos"]
	Sys_SetSynaGlobalData(nGlobalId,nPos,nGuildId)
	Sys_SetSynaGlobalData(nGlobalId,nPos+1,nSynWandId)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sGuildName)
end
---------------------------------------------------百宝福地大使 21103
function GangsReward_InAugust_Rain(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tGangsReward_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 已下过3场珍宝雨
	local nData = GangsReward_InAugust_GetStcValue(1)
	if nData >= tGangsReward_InAugust_Stc[1]["Limit"] then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 间隔未达5分钟
	local nEvent = tGangsReward_InAugust_Stc[1]["EventType"]
	local nType = tGangsReward_InAugust_Stc[1]["DataType"]
	if not Task_StcInterval(nEvent,nType,5,1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 掩码
	GangsReward_InAugust_SetStcValue(1,2,1)
	
	local nTime = GangsReward_InAugust_GetStcValue(1)
	local sTime = tostring(nTime)
	
	local nRank = 0
	local nGuildId = Get_UserGuildId()
	tGangsReward_InAugust_nGuildTime[nGuildId] = os.time()
	local sGuildName = Get_UserSynDicateName(nGuildId)
	local nGlobalId = tGangsReward_InAugust_Count["GlobalId"]
	local sTip = tGangsReward_InAugust_Text[nNpcId]["OtherEnterMap"]
	for i,v in pairs(tGangsReward_InAugust_RankingData) do
		if v.GuildId == nGuildId then
			nRank = i
			break
		end
	end
	local nPos = tGangsReward_InAugust_NpcData[nRank]["Pos"]
	tGangsReward_InAugust_RankingData[nRank].Time = sTime
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,sTime)
	
	--下珍宝雨
	local nUserId = Get_UserId()
	local sFunc = string.format("GangsReward_InAugust_Raining</N>%d</N>%d",nRank,1)
	local sNewFunc = string.format("GangsReward_InAugust_Raining</N>%d</N>%d",nRank,2)
	local sBraodFunc = string.format("GangsReward_InAugust_BraodCast</N>%d",nGuildId)
	User_SetTimer(tGangsReward_InAugust_Count["Time"][1],sFunc,0)
	User_SetTimer(tGangsReward_InAugust_Count["Time"][2],sFunc,0)
	User_SetTimer(tGangsReward_InAugust_Count["Time"][3],sNewFunc,0)
	
	if nData == 2 then
		User_SetTimer(tGangsReward_InAugust_Count["NewTime"],sBraodFunc,0)
	end
	
	User_TalkChannel2005(tGangsReward_InAugust_Text[nNpcId]["Success"])
	local sText = tGangsReward_InAugust_Text[21102]["SuccessBroad"]
	Sys_SystemBroadcast(string.format(sText,sGuildName))
end

function GangsReward_InAugust_BraodCast(nGuildId,nUserId)
	local sGuildName = Get_UserSynDicateName(nGuildId)
	local sText = tGangsReward_InAugust_Text[21102]["EndBroad"]
	Sys_SystemBroadcast(string.format(sText,sGuildName))
end

function GangsReward_InAugust_Raining(nRank,nTime,nUserId)
	local nIndex = tGangsReward_InAugust_NpcData[nRank]["Rank"]
	local nMapId = tGangsReward_InAugust_NpcData[nRank]["MapId"]
	local nPosX = tGangsReward_InAugust_AllReward["Parameter"]["PosX"]
	local nPosY = tGangsReward_InAugust_AllReward["Parameter"]["PosY"]
	local nCellx = tGangsReward_InAugust_AllReward["Parameter"]["Cellx"]
	local nCelly = tGangsReward_InAugust_AllReward["Parameter"]["Celly"]
	local nExistTime = tGangsReward_InAugust_AllReward["Parameter"]["ExistTime"]
	
	for i,v in pairs(tGangsReward_InAugust_AllReward[nIndex][nTime]) do
		local nNum = v["ItemNum"]
		Map_DropMultiItems(nMapId,v["ItemId"],nPosX,nPosY,nCellx,nCelly,nNum,nExistTime)
	end
end

-- 离开百宝福地
function GangsReward_InAugust_OutMap(nNpcId,nIndex)
	if nIndex == 1 then
		local nEvent = tGangsReward_InAugust_Stc[1]["EventType"]
		local nType = tGangsReward_InAugust_Stc[1]["DataType"]
		if not Task_StcInterval(nEvent,nType,2,1) then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
		
		if not Task_StcInterval(nEvent,nType,5,1) then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	else
		local nGuildId = Get_UserGuildId()
		local nTime = tGangsReward_InAugust_nGuildTime[nGuildId] or 0
		local nNowTime= os.time()
		if nNowTime-nTime <= tGangsReward_InAugust_Count["Time"][1] then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
		
		if nNowTime-nTime <= tGangsReward_InAugust_Count["NewTime"] then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	end
	GangsReward_InAugust_ChgMap(2)
end

---------------------------------------------------物品模块
-- 福地秘钥使用
function GangsReward_InAugust_UserKey(nItemId)
	if not Sys_ChkFullTime(tGangsReward_InAugust_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			local sLog = tGangsReward_InAugust_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
			User_TalkChannel2005(tGangsReward_InAugust_Text["OverDue"])
			return
 		end
	end
	
	-- 寻路
	local nPosX = tGangsReward_InAugust_FindWay[1]["PosX"]
	local nPosY = tGangsReward_InAugust_FindWay[1]["PosY"]
	local nMapId = tGangsReward_InAugust_FindWay[1]["MapId"]
	local nNpcId = tGangsReward_InAugust_FindWay[1]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 礼包
function GangsReward_InAugust_UsePack(nItemId)
	if not Sys_ChkFullTime(tGangsReward_InAugust_Count["ItemTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			local sLog = tGangsReward_InAugust_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
			User_TalkChannel2005(tGangsReward_InAugust_Text["NewOverDue"])
			return
 		end
	end
	
	RewardTemplate_UseItemAndMsg(tGangsReward_InAugust_Reward[nItemId])
end
---------------------------------------------------服务器启动
function  GangsReward_InAugust_Init()
	local nGlobalId = tGangsReward_InAugust_Count["GlobalId"]
	
	for i,v in pairs(tGangsReward_InAugust_NpcData) do
		local nPos = v["Pos"]
		local nGuildId = Get_SysDynaGlobalData(nGlobalId,nPos)
		if nGuildId ~= 0 then
			local nSynWandId = Get_SysDynaGlobalData(nGlobalId,nPos+1)
			local sGuildName = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
			local sTime = Get_SysDynaGlobalDataStr(nGlobalId,nPos+1)
			
			tGangsReward_InAugust_RankingData[i] = {}
			tGangsReward_InAugust_RankingData[i].GuildId = nGuildId
			tGangsReward_InAugust_RankingData[i].SynWandId = nSynWandId
			tGangsReward_InAugust_RankingData[i].GuildName = sGuildName
			tGangsReward_InAugust_RankingData[i].Time = sTime
		end
	end
end
--------------------------------------NPC模块-------------------------------------------
-- 百宝福地大使
tNpcFace[4871] = 123
tNpcGossip[21102] = tNpcGossip[21102] or DefaultNpc:new{}
tNpcGossip[21102]["OptionHidden"] = 1
tNpcGossip[21102]["DialogueText"] = tGangsReward_InAugust_Text[21102]
-- 活动前
tNpcGossip[21102]["Text1-1"] = {111,112,113,114}
tNpcGossip[21102]["tOption1-1"] = {111}
tNpcGossip[21102]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tGangsReward_InAugust_Count["ActivityTime"])
end
tNpcGossip[21102]["OptionFunc111"] = "GangsReward_InAugust_Find</N>21102"

-- 活动后
tNpcGossip[21102]["Text1-2"] = {121}
tNpcGossip[21102]["tOption1-2"] = {121}
tNpcGossip[21102]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tGangsReward_InAugust_Count["ActivityTime"])
end

-- 活动中
-- 【玩家是帮主】
tNpcGossip[21102]["Text1-3"] = {131,132,113,114}
tNpcGossip[21102]["tOption1-3"] = {131,132,133}
tNpcGossip[21102]["ChkFunc1-3"] = function ()
	if not GangsReward_InAugust_ChkGuild() then
		return false
	end
	return true
end
-- 1、开启福地之门。  ===（未开启福地大门，显示此选项）
tNpcGossip[21102]["OptionFunc131"] = "GangsReward_InAugust_OpenDoor</N>21102"
tNpcGossip[21102]["OptionChkFunc131"] = function()
	local nData = GangsReward_InAugust_GetStcValue(2)
	if nData < 1 then
		return true
	end
	return false
end
-- 2、进入百宝福地。  ===（已开启福地大门，显示此选项）
tNpcGossip[21102]["OptionFunc132"] = "GangsReward_InAugust_EnterMap</N>21102"
tNpcGossip[21102]["OptionChkFunc132"] = function()
	local nData = GangsReward_InAugust_GetStcValue(2)
	if nData >= 1 then
		return true
	end
	return false
end
-- 3、我明白了。

-- 【玩家不是帮主】
tNpcGossip[21102]["Text1-4"] = {141,142,143,113,114}
tNpcGossip[21102]["tOption1-4"] = {141,142}
tNpcGossip[21102]["ChkFunc1-4"] = function ()
	if GangsReward_InAugust_ChkGuild() then
		return false
	end
	return true
end
-- 1、进入百宝福地（未开启）。  ===（非前3帮派则屏蔽此选项，帮主未开启地图则显示（未开启），不同名次的帮派进入的地图不同） 
tNpcGossip[21102]["OptionFunc141"] = "GangsReward_InAugust_EnterMap</N>21102"
tNpcGossip[21102]["OptionChkFunc141"] = function()
	local bEnter = false
	local nGuildId = Get_UserGuildId()
	-- 未加入帮派
	if nGuildId == 0 then
		return false
	end
	
	local nNowTime= os.time()
	local nTime = tGangsReward_InAugust_nGuildTime[nGuildId] or 0
	for i,v in pairs(tGangsReward_InAugust_RankingData) do
		if v.GuildId == nGuildId then
			if v.Time == "3" and  (nNowTime-nTime <= tGangsReward_InAugust_Count["NewTime"]) then 
				return true
			elseif v.Time ~= "3" then
				return true
			end
		end
	end
	
	return false
end
-- 2、我明白了。 

-- 【接1，无福地秘钥，NPC对白】
tNpcGossip[21102]["Text2-1"] = {211}
tNpcGossip[21102]["tOption2-1"] = {211}
-- 确定开启。
-- 【接1，点击时活动结束，NPC对白】
tNpcGossip[21102]["Text2-2"] = {221}
tNpcGossip[21102]["tOption2-2"] = {221}
-- 【接1，有福地秘钥，NPC对白】
tNpcGossip[21102]["Text2-3"] = {231}
tNpcGossip[21102]["tOption2-3"] = {231,232}
-- 1-1、确定开启。
-- 1-2、暂不开启。
-- 【接2，点击时活动结束，NPC对白】
tNpcGossip[21102]["Text2-4"] = {241}
tNpcGossip[21102]["tOption2-4"] = {241}
-- 【接2，已下过3场珍宝雨，无法再次进入。NPC对白】
tNpcGossip[21102]["Text2-5"] = {251}
tNpcGossip[21102]["tOption2-5"] = {251}

-- 【接1，帮主未开启，NPC对白】
tNpcGossip[21102]["Text3-1"] = {311}
tNpcGossip[21102]["tOption3-1"] = {311}
-- 【接1，点击时活动结束，NPC对白】 2-4
-- 【接1，已下过3场珍宝雨，无法再次进入。NPC对白】 2-5

-- -百宝福地大使（地图内）
tNpcGossip[21103] = tNpcGossip[21103] or DefaultNpc:new{}
tNpcGossip[21103]["OptionHidden"] = 1
tNpcGossip[21103]["DialogueText"] = tGangsReward_InAugust_Text[21103] 
-- 活动前
tNpcGossip[21103]["Text1-1"] = {111,112,113,114}
tNpcGossip[21103]["tOption1-1"] = {111}
tNpcGossip[21103]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tGangsReward_InAugust_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[21103]["Text1-2"] = {121}
tNpcGossip[21103]["tOption1-2"] = {121}
tNpcGossip[21103]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tGangsReward_InAugust_Count["ActivityTime"])
end
tNpcGossip[21103]["OptionFunc121"] = "GangsReward_InAugust_ChgMap</N>2"

-- 活动中
-- 【玩家是帮主】
tNpcGossip[21103]["Text1-3"] = {131,132,133}
tNpcGossip[21103]["tOption1-3"] = {131,132}
tNpcGossip[21103]["ChkFunc1-3"] = function ()
	local sText = tGangsReward_InAugust_Text[21103]["Option131"]
	local nData = GangsReward_InAugust_GetStcValue(1)
	tNpcGossip[21103]["Option131"] = string.format(sText,nData)
	
	-- 判断帮主
	local nUserId = Get_UserId()
	for i,v in pairs(tGangsReward_InAugust_RankingData) do
		if v.SynWandId == nUserId then
			return true
		end
	end
	return false
end
-- 1、召唤珍宝雨（x/3）。 ===（脚本同学注意：全服第1，第2，第3三个帮派召唤珍宝雨的内容不同）
tNpcGossip[21103]["OptionFunc131"] = "GangsReward_InAugust_Rain</N>21103"
-- 2、离开百宝福地。 ===（离开地图）
tNpcGossip[21103]["OptionFunc132"] = "GangsReward_InAugust_OutMap</N>21103</N>1"

-- 【玩家非帮主】
tNpcGossip[21103]["Text1-4"] = {141,142,143}
tNpcGossip[21103]["tOption1-4"] = {142,141}
tNpcGossip[21103]["ChkFunc1-4"] = function ()
	-- 判断帮主
	local nUserId = Get_UserId()
	for i,v in pairs(tGangsReward_InAugust_RankingData) do
		if v.SynWandId == nUserId then
			return false
		end
	end
	return true
end
-- 1、离开百宝福地。 ===（离开地图）
tNpcGossip[21103]["OptionFunc142"] = "GangsReward_InAugust_OutMap</N>21103</N>2"
-- 2、我明白了。

-- 【接1，间隔未达5分钟,NPC对白】
tNpcGossip[21103]["Text2-1"] = {211}
tNpcGossip[21103]["tOption2-1"] = {211}
-- 【接1，已召唤3次,NPC对白】
tNpcGossip[21103]["Text2-2"] = {221}
tNpcGossip[21103]["tOption2-2"] = {221}
-- 【接2，珍宝雨已召唤，正在准备时间，NPC对白】
tNpcGossip[21103]["Text2-3"] = {231}
tNpcGossip[21103]["tOption2-3"] = {231,232}
-- 2-1、确定离开。==（离开地图）
tNpcGossip[21103]["OptionFunc231"] = "GangsReward_InAugust_ChgMap</N>2"
-- 2-2、暂不离开。 
-- 【接2，珍宝雨已召唤，正在落下，NPC对白】
tNpcGossip[21103]["Text2-4"] = {241}
tNpcGossip[21103]["tOption2-4"] = {231,232}
-- 2-1、确定离开。==（离开地图）
tNpcGossip[21103]["OptionFunc241"] = "GangsReward_InAugust_ChgMap</N>2"
-- 2-2、暂不离开。

tNpcGossip[21104] = tNpcGossip[21103]
tNpcGossip[21105] = tNpcGossip[21103]
--------------------------------------物品模块-------------------------------------------
-- 3304511,'全服第1名福地秘钥'
tItem[3304511] = tItem[3304511] or {}
tItem[3304511]["Function"] = function(nItemId,sItemName)
	GangsReward_InAugust_UserKey(nItemId)
end
-- 3304512,'全服第2名福地秘钥'
tItem[3304512] = tItem[3304511]
-- 3304513,'全服第3名福地秘钥'
tItem[3304513] = tItem[3304511]

-- 3304514,'10天石幸运包'
tItem[3304514] = tItem[3304514] or {}
tItem[3304514]["Function"] = function(nItemId,sItemName)
	GangsReward_InAugust_UsePack(nItemId)
end
-- 3304515,'300点气力值幸运包'
tItem[3304515] = tItem[3304514]
-- 3304516,'明亮星陨石幸运包'
tItem[3304516] = tItem[3304514]

--------------------------------------时间自检-------------------------------------------
-- 服务器启动
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],GangsReward_InAugust_Init)

