------------------------------------------------------------------------------------
--Name：            171106[英文征服][活动脚本]日活礼包制作（12.14）
--Creator:      杨艳
--Created:     2017/11/06
------------------------------------------------------------------------------------
--任务需求：
-- 更新时间：
-- 12月14日（周四）例行维护时 刷全区全服

-- 活动时间：
-- 12.14-12.25

-- 活动说明：
-- 上线后自动发到背包里面，2017年12月31日过期。

--命名规范：DailyPackge_

--掩码说明
--记录 17010 上线给礼包掩码 data 记3306521 高 3306522 低
--     17011  领取礼包次数
-- 17117	记录玩家上线是否获得了补发的家具


-- #3306521   暖冬回馈签到礼包
-- #3306522   高级暖冬回馈签到礼包
--logid: 12000934
------------------------------------------------------------------------------------


--数据部分
local tDailyPackge_Cont = {}
	--等级
	tDailyPackge_Cont["Level"] = 120
	tDailyPackge_Cont["Mete"] = 1
	
	--背包空间
	tDailyPackge_Cont["BagSpace"] = 1
	
	--礼包种类
	tDailyPackge_Cont[1] = 3306521
	tDailyPackge_Cont[2] = 3306522

--掩码
local tDailyPackge_Stc = {}
	--上线给礼包掩码 data 记3306521 高 3306522 低
	tDailyPackge_Stc[1] = {}
	tDailyPackge_Stc[1]["EventType"] = 170
	tDailyPackge_Stc[1]["DataType"] = 10
	
	--记录玩家是否领取礼包奖励
	tDailyPackge_Stc[2] = {}
	tDailyPackge_Stc[2]["EventType"] = 170
	tDailyPackge_Stc[2]["DataType"] = 11
	
	--记录玩家上线是否获得了补发的家具
	tDailyPackge_Stc[3] = {}
	tDailyPackge_Stc[3]["EventType"] = 171
	tDailyPackge_Stc[3]["DataType"] = 17

--奖励	
local tDailyPackge_Reward = {}
--给礼包
	tDailyPackge_Reward[3306521] = {}
	tDailyPackge_Reward[3306521]["RewardItem"] = {}
	tDailyPackge_Reward[3306521]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306521]["RewardItem"][1]["Id"] = 3306521
	tDailyPackge_Reward[3306521]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306521]["Log"] = "0,0,0,0,12000934,2,3306521,1"
	
	tDailyPackge_Reward[3306522] = {}
	tDailyPackge_Reward[3306522]["RewardItem"] = {}
	tDailyPackge_Reward[3306522]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306522]["RewardItem"][1]["Id"] = 3306522
	tDailyPackge_Reward[3306522]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306522]["Log"] = "0,0,0,0,12000934,2,3306522,1"


--暖冬回馈签到礼包 （玩家等级1转120-）
	tDailyPackge_Reward[3306521][1] = {}
	tDailyPackge_Reward[3306521][1]["RewardItem"] = {}
	tDailyPackge_Reward[3306521][1]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306521][1]["RewardItem"][1]["Id"] = 722136
	tDailyPackge_Reward[3306521][1]["RewardItem"][1]["Attr"] = "0 3 3"
	tDailyPackge_Reward[3306521][1]["RewardItem"][2] = {}
	tDailyPackge_Reward[3306521][1]["RewardItem"][2]["Id"] = 723017
	tDailyPackge_Reward[3306521][1]["RewardItem"][2]["Attr"] = "0 3 3"
	tDailyPackge_Reward[3306521][1]["Log"] = "0,0,0,0,12000934,2,722136[723017],3[3]"
	
	tDailyPackge_Reward[3306521][2] = {}
	tDailyPackge_Reward[3306521][2]["RewardItem"] = {}
	tDailyPackge_Reward[3306521][2]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306521][2]["RewardItem"][1]["Id"] = 192555
	tDailyPackge_Reward[3306521][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tDailyPackge_Reward[3306521][2]["RewardItem"][2] = {}
	tDailyPackge_Reward[3306521][2]["RewardItem"][2]["Id"] = 200491
	tDailyPackge_Reward[3306521][2]["RewardItem"][2]["Attr"] = "0 1 3 43200 1 0 0 1"
	tDailyPackge_Reward[3306521][2]["Log"] = "0,0,0,0,12000934,2,192555[200491],1[1]"
	
	tDailyPackge_Reward[3306521][3] = {}
	tDailyPackge_Reward[3306521][3]["RewardItem"] = {}
	tDailyPackge_Reward[3306521][3]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306521][3]["RewardItem"][1]["Id"] = 1200001
	tDailyPackge_Reward[3306521][3]["RewardItem"][1]["Attr"] = "0 2 3"
	tDailyPackge_Reward[3306521][3]["Log"] = "0,0,0,0,12000934,2,1200001,2"
	
	tDailyPackge_Reward[3306521][4] = {}
	tDailyPackge_Reward[3306521][4]["RewardItem"] = {}
	tDailyPackge_Reward[3306521][4]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306521][4]["RewardItem"][1]["Id"] = 3009001
	tDailyPackge_Reward[3306521][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDailyPackge_Reward[3306521][4]["Log"] = "0,0,0,0,12000934,2,3009001,1"
	
	tDailyPackge_Reward[3306521][5] = {}
	tDailyPackge_Reward[3306521][5]["RewardItem"] = {}
	tDailyPackge_Reward[3306521][5]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306521][5]["RewardItem"][1]["Id"] = 3001407
	tDailyPackge_Reward[3306521][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306521][5]["Log"] = "0,0,0,0,12000934,2,3001407,1"
	
	tDailyPackge_Reward[3306521][6] = {}
	tDailyPackge_Reward[3306521][6]["RewardItem"] = {}
	tDailyPackge_Reward[3306521][6]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306521][6]["RewardItem"][1]["Id"] = 3300000
	tDailyPackge_Reward[3306521][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306521][6]["Log"] = "0,0,0,0,12000934,2,3300000,1"
	
	tDailyPackge_Reward[3306521][7] = {}
	tDailyPackge_Reward[3306521][7]["RewardItem"] = {}
	tDailyPackge_Reward[3306521][7]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306521][7]["RewardItem"][1]["Id"] = 3006236
	tDailyPackge_Reward[3306521][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306521][7]["Log"] = "0,0,0,0,12000934,2,3006236,1"
	
	tDailyPackge_Reward[3306521][8] = {}
	tDailyPackge_Reward[3306521][8]["RewardItem"] = {}
	tDailyPackge_Reward[3306521][8]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306521][8]["RewardItem"][1]["Id"] = 722136
	tDailyPackge_Reward[3306521][8]["RewardItem"][1]["Attr"] = "0 5 3"
	tDailyPackge_Reward[3306521][8]["Log"] = "0,0,0,0,12000934,2,722136,5"
	
	tDailyPackge_Reward[3306521][9] = {}
	tDailyPackge_Reward[3306521][9]["RewardItem"] = {}
	tDailyPackge_Reward[3306521][9]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306521][9]["RewardItem"][1]["Id"] = 3009001
	tDailyPackge_Reward[3306521][9]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tDailyPackge_Reward[3306521][9]["Log"] = "0,0,0,0,12000934,2,3009001,3"
	
	tDailyPackge_Reward[3306521][10] = {}
	tDailyPackge_Reward[3306521][10]["DeleteItem"] = {}
	tDailyPackge_Reward[3306521][10]["DeleteItem"][1] = {}
	tDailyPackge_Reward[3306521][10]["DeleteItem"][1]["Id"] = 3306521
	tDailyPackge_Reward[3306521][10]["DeleteItem"][1]["ItemNum"] = 1
	
	tDailyPackge_Reward[3306521][10]["RewardItem"] = {}
	tDailyPackge_Reward[3306521][10]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306521][10]["RewardItem"][1]["Id"] = 3006921
	tDailyPackge_Reward[3306521][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306521][10]["RewardItem"][2] = {}
	tDailyPackge_Reward[3306521][10]["RewardItem"][2]["Id"] = 3301808
	tDailyPackge_Reward[3306521][10]["RewardItem"][2]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306521][10]["RewardItem"][3] = {}
	tDailyPackge_Reward[3306521][10]["RewardItem"][3]["Id"] = 730002
	tDailyPackge_Reward[3306521][10]["RewardItem"][3]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306521][10]["Log"] = "0,0,3306521,1,12000934,2,3006921[3301808][730002],1[1][1]"
	
--高级暖冬回馈签到礼包 （玩家1转120+）
	tDailyPackge_Reward[3306522][1] = {}
	tDailyPackge_Reward[3306522][1]["RewardItem"] = {}
	tDailyPackge_Reward[3306522][1]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306522][1]["RewardItem"][1]["Id"] = 3002735
	tDailyPackge_Reward[3306522][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1"
	tDailyPackge_Reward[3306522][1]["RewardItem"][2] = {}
	tDailyPackge_Reward[3306522][1]["RewardItem"][2]["Id"] = 3009001
	tDailyPackge_Reward[3306522][1]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tDailyPackge_Reward[3306522][1]["Log"] = "0,0,0,0,12000934,2,3002735[3009001],1[1]"
	
	tDailyPackge_Reward[3306522][2] = {}
	tDailyPackge_Reward[3306522][2]["RewardItem"] = {}
	tDailyPackge_Reward[3306522][2]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306522][2]["RewardItem"][1]["Id"] = 192555
	tDailyPackge_Reward[3306522][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tDailyPackge_Reward[3306522][2]["RewardItem"][2] = {}
	tDailyPackge_Reward[3306522][2]["RewardItem"][2]["Id"] = 200491
	tDailyPackge_Reward[3306522][2]["RewardItem"][2]["Attr"] = "0 1 3 43200 1 0 0 1"
	tDailyPackge_Reward[3306522][2]["Log"] = "0,0,0,0,12000934,2,192555[200491],1[1]"
	
	tDailyPackge_Reward[3306522][3] = {}
	tDailyPackge_Reward[3306522][3]["RewardItem"] = {}
	tDailyPackge_Reward[3306522][3]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306522][3]["RewardItem"][1]["Id"] = 1200001
	tDailyPackge_Reward[3306522][3]["RewardItem"][1]["Attr"] = "0 2 3"
	tDailyPackge_Reward[3306522][3]["Log"] = "0,0,0,0,12000934,2,1200001,2"
	
	tDailyPackge_Reward[3306522][4] = {}
	tDailyPackge_Reward[3306522][4]["RewardItem"] = {}
	tDailyPackge_Reward[3306522][4]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306522][4]["RewardItem"][1]["Id"] = 3009001
	tDailyPackge_Reward[3306522][4]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tDailyPackge_Reward[3306522][4]["Log"] = "0,0,0,0,12000934,2,3009001,3"
	
	tDailyPackge_Reward[3306522][5] = {}
	tDailyPackge_Reward[3306522][5]["RewardItem"] = {}
	tDailyPackge_Reward[3306522][5]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306522][5]["RewardItem"][1]["Id"] = 3001407
	tDailyPackge_Reward[3306522][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306522][5]["Log"] = "0,0,0,0,12000934,2,3001407,1"
	
	tDailyPackge_Reward[3306522][6] = {}
	tDailyPackge_Reward[3306522][6]["RewardItem"] = {}
	tDailyPackge_Reward[3306522][6]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306522][6]["RewardItem"][1]["Id"] = 3303658
	tDailyPackge_Reward[3306522][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306522][6]["Log"] = "0,0,0,0,12000934,2,3303658,1"
	
	tDailyPackge_Reward[3306522][7] = {}
	tDailyPackge_Reward[3306522][7]["RewardItem"] = {}
	tDailyPackge_Reward[3306522][7]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306522][7]["RewardItem"][1]["Id"] = 3303657
	tDailyPackge_Reward[3306522][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306522][7]["Log"] = "0,0,0,0,12000934,2,3303657,1"
	
	tDailyPackge_Reward[3306522][8] = {}
	tDailyPackge_Reward[3306522][8]["RewardItem"] = {}
	tDailyPackge_Reward[3306522][8]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306522][8]["RewardItem"][1]["Id"] = 3001844
	tDailyPackge_Reward[3306522][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306522][8]["Log"] = "0,0,0,0,12000934,2,3001844,1"
	
	tDailyPackge_Reward[3306522][9] = {}
	tDailyPackge_Reward[3306522][9]["RewardItem"] = {}
	tDailyPackge_Reward[3306522][9]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306522][9]["RewardItem"][1]["Id"] = 3304571
	tDailyPackge_Reward[3306522][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306522][9]["Log"] = "0,0,0,0,12000934,2,3304571,1"
	
	tDailyPackge_Reward[3306522][10] = {}
	tDailyPackge_Reward[3306522][10]["DeleteItem"] = {}
	tDailyPackge_Reward[3306522][10]["DeleteItem"][1] = {}
	tDailyPackge_Reward[3306522][10]["DeleteItem"][1]["Id"] = 3306522
	tDailyPackge_Reward[3306522][10]["DeleteItem"][1]["ItemNum"] = 1
	
	tDailyPackge_Reward[3306522][10]["RewardItem"] = {}
	tDailyPackge_Reward[3306522][10]["RewardItem"][1] = {}
	tDailyPackge_Reward[3306522][10]["RewardItem"][1]["Id"] = 730003
	tDailyPackge_Reward[3306522][10]["RewardItem"][1]["Attr"] = "0 2 3"
	tDailyPackge_Reward[3306522][10]["RewardItem"][2] = {}
	tDailyPackge_Reward[3306522][10]["RewardItem"][2]["Id"] = 3301808
	tDailyPackge_Reward[3306522][10]["RewardItem"][2]["Attr"] = "0 2 3"
	tDailyPackge_Reward[3306522][10]["RewardItem"][3] = {}
	tDailyPackge_Reward[3306522][10]["RewardItem"][3]["Id"] = 3200348
	tDailyPackge_Reward[3306522][10]["RewardItem"][3]["Attr"] = "0 1 3"
	tDailyPackge_Reward[3306522][10]["Log"] = "0,0,3306522,1,12000934,2,730003[3301808][3200348],2[2][1]"

	-- 玩家上线补发一个家具
	tDailyPackge_Reward["NewLogin"] = {}
	tDailyPackge_Reward["NewLogin"]["RewardItem"] = {}
	tDailyPackge_Reward["NewLogin"]["RewardItem"][1] = {}
	tDailyPackge_Reward["NewLogin"]["RewardItem"][1]["Id"] = 3002735
	tDailyPackge_Reward["NewLogin"]["RewardItem"][1]["Attr"] = "0 1 3 43200 1"
	tDailyPackge_Reward["NewLogin"]["Log"] = "0,0,0,0,12000934,2,3002735,1"

--log表
local tDailyPackge_Log = {}
	tDailyPackge_Log["DelItem"] = "0,0,%d,1,12000934,3,0,0" --删除任务物品	

----------------------------------逻辑部分-------------------------------------------
--上线自检等级给礼包
function DailyPackge_OnLine()

	local nUserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["DailyPackge"]["ActivityTime"]) then
		return
	end
	local nFlag = 0
	--等级判断
	if  User_JudgeLevelAndMetempsychosis(tDailyPackge_Cont["Level"],tDailyPackge_Cont["Mete"],nUserId)	then 
		nFlag = tDailyPackge_Cont[2]
	else 
		nFlag = tDailyPackge_Cont[1]
	end
	
	if nFlag == 0 then
		--打log
		return
	end 	
	--掩码判断
	local nEvent = tDailyPackge_Stc[1]["EventType"]
	local nType = tDailyPackge_Stc[1]["DataType"]

	if Task_ChkStcValue(nEvent,nType,">",0) then
		-- 上线补发玩家一个 圣诞树家具
		DailyPackge_NewOnLine()
		return
	end
	
	--背包空间判断
	if not User_CheckLeftSpace(tDailyPackge_Cont["BagSpace"]) then 
		Sys_MsgBox(tDailyPackge_Text[nFlag]["LoginBagFull"])
		return
	end 

	--置掩码 给礼包
	Task_SetStatistic(nEvent,nType,nFlag,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		
	RewardTemplate_UseItem(tDailyPackge_Reward[nFlag])

end 
	
-- 上线补发玩家一个 圣诞树家具
function DailyPackge_NewOnLine()
	local nUserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["DailyPackge"]["ActivityTime"]) then
		return
	end
	
	--等级判断
	local nFlag = 0
	if User_JudgeLevelAndMetempsychosis(tDailyPackge_Cont["Level"],tDailyPackge_Cont["Mete"],nUserId)	then 
		nFlag = tDailyPackge_Cont[2]
	end
	if nFlag == 0 then
		return
	end 	

	-- 原来的上线给礼包掩码
	local nEvent1 = tDailyPackge_Stc[1]["EventType"]
	local nType1 = tDailyPackge_Stc[1]["DataType"]
	if Task_ChkStcValue(nEvent1,nType1,"==",0) then
		return
	end
	
	-- 使用礼包的掩码（掩码值==1  表示领取了第一天的奖励，包括家具）
	local nEvent2 = tDailyPackge_Stc[2]["EventType"]
	local nType2 = tDailyPackge_Stc[2]["DataType"] 
	if Task_ChkStcValue(nEvent2,nType2,"<",1) then
		return
	end

	if Item_ChkItem(tDailyPackge_Reward["NewLogin"]["RewardItem"][1]["Id"]) then
		return
	end
	
	-- 补发家具的上线获得掩码
	local nEvent3 = tDailyPackge_Stc[3]["EventType"]
	local nType3 = tDailyPackge_Stc[3]["DataType"]
	if Task_ChkStcValue(nEvent3,nType3,">",0) then
		return
	end

	--背包空间判断
	if not User_CheckLeftSpace(1) then 
		User_TalkChannel2005(string.format(tDailyPackge_Text["NoSpace"],1))
		return
	end 
	
	--置掩码 给礼包
	Task_SetStatistic(nEvent3,nType3,1,1,nUserId)
	Task_SetStcTimestamp(nEvent3,nType3,0,nUserId)
	RewardTemplate_UseItem(tDailyPackge_Reward["NewLogin"])
end

--领取奖励
function DailyPackge_GetGift(nItemId)

	local nUserId = Get_UserId()
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["DailyPackge"]["UseTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["DailyPackge"]["UseTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tDailyPackge_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				Sys_MsgBox(tDailyPackge_Text["OverTime"])
			end
		end	
		return
	end
	
	--判断物品
	if not Item_ChkItem(nItemId) then
		return	
	end	
	
	local nEvent = tDailyPackge_Stc[1]["EventType"]
	local nType = tDailyPackge_Stc[1]["DataType"] 
	local nData =  Get_UserStatisticValue(nEvent,nType)
	if nData ~= nItemId then
		return
	end 	
	
	--等级判断 
	if nData == tDailyPackge_Cont[2] then
		if not User_JudgeLevelAndMetempsychosis(tDailyPackge_Cont["Level"],tDailyPackge_Cont["Mete"],nUserId)	then 
			return
		end
	end
	local nEvent = tDailyPackge_Stc[2]["EventType"]
	local nType = tDailyPackge_Stc[2]["DataType"] 
	local nDataTime =  Get_UserStatisticValue(nEvent,nType)
	
	if nDataTime >9 then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then		
				local sDelItemLog = string.format(tDailyPackge_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
			end
		end	
		return 
	end
	
	local nTimes = nDataTime+1
	-- 判断是否隔天
	if nDataTime == 0 then
	elseif not Task_StcInterval(nEvent,nType,1,4,nUserId) then
		return
	end
	--背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tDailyPackge_Reward[nItemId][nTimes],nUserId) 
	if not RewardTemplate_CheckSpace(tDailyPackge_Reward[nItemId][nTimes],nUserId) then
		local sSay = string.format(tDailyPackge_Text["NoSpace"],nSpace)
		Sys_MsgBox(sSay)
		return
	end
	--置掩码
	Task_SetStatistic(nEvent,nType,nTimes,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
	RewardTemplate_UseItem(tDailyPackge_Reward[nItemId][nTimes])
		
end
--物品无对白检测时间
function DailyPackge_CheckTime(nItemId)

	local nEvent = tDailyPackge_Stc[2]["EventType"]
	local nType = tDailyPackge_Stc[2]["DataType"] 
	local nDataTime =  Get_UserStatisticValue(nEvent,nType)
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["DailyPackge"]["UseTime"]) then
		return
	end
	
	if nDataTime >9 then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then		
				local sDelItemLog = string.format(tDailyPackge_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
			end
		end	
		return 
	end
	if not Sys_ChkFullTime(tActivityTime["DailyPackge"]["UseTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tDailyPackge_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				Sys_MsgBox(tDailyPackge_Text["OverTime"])
				return 
			end
		end	
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end


----------------------------------物品部分---------------------------------------------
tItem[3306521] = tItem[3306521] or {}
tItem[3306521]["Function"] = function(nItemId,sItemName)
	DailyPackge_CheckTime(nItemId)
end
-- tItem[3306522] = tItem[3306521]


--暖冬回馈签到礼包
tItemFace[3306521] = 976
tItem[3306521]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125}
tItem[3306521]["Text111"] = tDailyPackge_Text[3306521]["Text111"]
tItem[3306521]["Text112"] = tDailyPackge_Text[3306521]["Text112"]
tItem[3306521]["Text113"] = tDailyPackge_Text[3306521]["Text113"]
tItem[3306521]["Text114"] = tDailyPackge_Text[3306521]["Text114"]
tItem[3306521]["Text115"] = tDailyPackge_Text[3306521]["Text115"]
tItem[3306521]["Text116"] = tDailyPackge_Text[3306521]["Text116"]
tItem[3306521]["Text117"] = tDailyPackge_Text[3306521]["Text117"]
tItem[3306521]["Text118"] = tDailyPackge_Text[3306521]["Text118"]
tItem[3306521]["Text119"] = tDailyPackge_Text[3306521]["Text119"]
tItem[3306521]["Text120"] = tDailyPackge_Text[3306521]["Text120"]
tItem[3306521]["Text121"] = tDailyPackge_Text[3306521]["Text121"]
tItem[3306521]["Text122"] = tDailyPackge_Text[3306521]["Text122"]
tItem[3306521]["Text123"] = tDailyPackge_Text[3306521]["Text123"]
tItem[3306521]["Text124"] = tDailyPackge_Text[3306521]["Text124"]
tItem[3306521]["Text125"] = tDailyPackge_Text[3306521]["Text125"]
tItem[3306521]["ChkFunc1-1"] = function ()
	
	local nEvent = tDailyPackge_Stc[2]["EventType"]
	local nType = tDailyPackge_Stc[2]["DataType"] 
	local nTimes = Get_UserStatisticValue(nEvent,nType)
	
	local nGetEvent = tDailyPackge_Stc[1]["EventType"]
	local nGetType = tDailyPackge_Stc[1]["DataType"]
	local nGetData = Get_UserStatisticValue(nGetEvent,nGetType)
	if nGetData ~= 3306521 then
		return false
	end
	if nTimes >9 then
		if Item_ChkItem(3306521) then
			if Item_DelItem(3306521) then		
				local sDelItemLog = string.format(tDailyPackge_Log["DelItem"],3306521)
				Sys_SaveActionFestivalLog(sDelItemLog)
			end
		end	
		return 
	end
	
	--隔天判断
	if nTimes == 0 or Task_StcInterval(nEvent,nType,1,4,nUserId)  then
		 nTimes = nTimes+1
	end
	tItem[3306521]["Text125"] = string.format(tDailyPackge_Text[3306521]["Text125"],nTimes,tDailyPackge_RewardText[3306521][nTimes])
	return true
end

tItem[3306521]["tOption1-1"] = {111, 112}
tItem[3306521]["Option111"] = tDailyPackge_Text[3306521]["Option111"]
tItem[3306521]["Option112"] = tDailyPackge_Text[3306521]["Option112"]
tItem[3306521]["OptionFunc111"] = "DailyPackge_GetGift</N>3306521"
tItem[3306521]["OptionChkFunc111"] = function ()

	local nUserId = Get_UserId()
-- 领取完屏蔽选项
	local nEvent = tDailyPackge_Stc[2]["EventType"]
	local nType = tDailyPackge_Stc[2]["DataType"] 
	local nTimes = Get_UserStatisticValue(nEvent,nType)
	--隔天判断
	if  nTimes == 0 or Task_StcInterval(nEvent,nType,1,4,nUserId) then
		return true
	end
	return false 
end

tItem[3306522] = tItem[3306522] or {}
tItem[3306522]["Function"] = function(nItemId,sItemName)
	DailyPackge_CheckTime(nItemId)
end

--高级暖冬回馈签到礼包
tItemFace[3306522] = 846
tItem[3306522]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125}
tItem[3306522]["Text111"] = tDailyPackge_Text[3306522]["Text111"]
tItem[3306522]["Text112"] = tDailyPackge_Text[3306522]["Text112"]
tItem[3306522]["Text113"] = tDailyPackge_Text[3306522]["Text113"]
tItem[3306522]["Text114"] = tDailyPackge_Text[3306522]["Text114"]
tItem[3306522]["Text115"] = tDailyPackge_Text[3306522]["Text115"]
tItem[3306522]["Text116"] = tDailyPackge_Text[3306522]["Text116"]
tItem[3306522]["Text117"] = tDailyPackge_Text[3306522]["Text117"]
tItem[3306522]["Text118"] = tDailyPackge_Text[3306522]["Text118"]
tItem[3306522]["Text119"] = tDailyPackge_Text[3306522]["Text119"]
tItem[3306522]["Text120"] = tDailyPackge_Text[3306522]["Text120"]
tItem[3306522]["Text121"] = tDailyPackge_Text[3306522]["Text121"]
tItem[3306522]["Text122"] = tDailyPackge_Text[3306522]["Text122"]
tItem[3306522]["Text123"] = tDailyPackge_Text[3306522]["Text123"]
tItem[3306522]["Text124"] = tDailyPackge_Text[3306522]["Text124"]
tItem[3306522]["Text125"] = tDailyPackge_Text[3306522]["Text125"]
tItem[3306522]["ChkFunc1-1"] = function ()

	local nUserId = Get_UserId()
	if not  User_JudgeLevelAndMetempsychosis(tDailyPackge_Cont["Level"],tDailyPackge_Cont["Mete"],nUserId)	then 
		return false
	end
	
	local nGetEvent = tDailyPackge_Stc[1]["EventType"]
	local nGetType = tDailyPackge_Stc[1]["DataType"]
	local nGetData = Get_UserStatisticValue(nGetEvent,nGetType)
	if nGetData ~= 3306522 then
		return false
	end
	
	local nEvent = tDailyPackge_Stc[2]["EventType"]
	local nType = tDailyPackge_Stc[2]["DataType"] 
	local nTimes = Get_UserStatisticValue(nEvent,nType)
	if nTimes >9 then
		if Item_ChkItem(3306522) then
			if Item_DelItem(3306522) then		
				local sDelItemLog = string.format(tDailyPackge_Log["DelItem"],3306522)
				Sys_SaveActionFestivalLog(sDelItemLog)
			end
		end	
		return 
	end
	--隔天判断
	if nTimes == 0 or Task_StcInterval(nEvent,nType,1,4,nUserId) then
		 nTimes = nTimes+1
	end
	tItem[3306522]["Text125"] = string.format(tDailyPackge_Text[3306522]["Text125"],nTimes,tDailyPackge_RewardText[3306522][nTimes])
	return true

end

tItem[3306522]["tOption1-1"] = {111, 112}
tItem[3306522]["Option111"] = tDailyPackge_Text[3306522]["Option111"]
tItem[3306522]["Option112"] = tDailyPackge_Text[3306522]["Option112"]
tItem[3306522]["OptionFunc111"] = "DailyPackge_GetGift</N>3306522"
tItem[3306522]["OptionChkFunc111"] = function ()
	local nUserId = Get_UserId()
-- 领取完屏蔽选项
	local nEvent = tDailyPackge_Stc[2]["EventType"]
	local nType = tDailyPackge_Stc[2]["DataType"] 
	local nTimes = Get_UserStatisticValue(nEvent,nType)
	--隔天判断
	if nTimes == 0 or Task_StcInterval(nEvent,nType,1,4,nUserId) then
		return true
	end
	return false 
end


table.insert(tSystem_PlayLogin_Func,DailyPackge_OnLine)


