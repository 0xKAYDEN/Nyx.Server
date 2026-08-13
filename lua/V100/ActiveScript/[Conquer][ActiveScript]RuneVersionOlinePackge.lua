------------------------------------------------------------------------------------
--Name：            180111[英文征服][活动脚本]符文版本上线礼包（02.01）
--Creator:      杨艳
--Created:     2018/01/11
------------------------------------------------------------------------------------


--命名前缀
--RuneVersionOlinePackge_

--掩码说明
	-- 17210 记录每日打开礼包的次数

--logid： 12000979

-- 物品id
-- 3307138
-- 3307139
-- 3307140
-- 3307141



--emoneylogid
-- 获得50赠品天石 350 21076
-- 获得100赠品天石 350 21077
-- 获得200赠品天石350 21078
-- 获得赠黄色符文1级-风卷残云 350 21079


-------------------------------------------数据部分-----------------------------------------
--基础数据
local tRuneVersionOlinePackge_Cont = {}
	
	--等级
	tRuneVersionOlinePackge_Cont["Level"] = {}
	tRuneVersionOlinePackge_Cont["Level"][1] = 80
	tRuneVersionOlinePackge_Cont["Level"][2] = 15
	tRuneVersionOlinePackge_Cont["Level"][3] = 140
	
	--转世
	tRuneVersionOlinePackge_Cont["Mete"] = {}
	tRuneVersionOlinePackge_Cont["Mete"][1] = 0
	tRuneVersionOlinePackge_Cont["Mete"][2] = 1
	tRuneVersionOlinePackge_Cont["Mete"][3] = 2

--掩码说明  
local tRuneVersionOlinePackge_Stc = {}
	tRuneVersionOlinePackge_Stc["EventData"] = 172
    tRuneVersionOlinePackge_Stc["DataType"] = 10	

-- 奖励  
local tRuneVersionOlinePackge_Award = {}
	
	-- 0转80级-0转140
	tRuneVersionOlinePackge_Award[1] = {}
	tRuneVersionOlinePackge_Award[1]["LogId"] = 12000979
	--20赠品天石
	tRuneVersionOlinePackge_Award[1]["RewardItem"] = {}
	tRuneVersionOlinePackge_Award[1]["RewardItem"][1] = {}
	tRuneVersionOlinePackge_Award[1]["RewardItem"][1]["Id"] = 3300758
	tRuneVersionOlinePackge_Award[1]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionOlinePackge_Award[1]["EmoneyLog"] = "350	21076	0	0	-20	"
	
	--经验球赠*2
	tRuneVersionOlinePackge_Award[1]["RewardItem"][2] = {}
	tRuneVersionOlinePackge_Award[1]["RewardItem"][2]["Id"] = 722136
	tRuneVersionOlinePackge_Award[1]["RewardItem"][2]["Attr"] = "0 2 3"
	
	-- 300点修行值赠
	tRuneVersionOlinePackge_Award[1]["RewardItem"][3] = {}
	tRuneVersionOlinePackge_Award[1]["RewardItem"][3]["Id"] = 3302373
	tRuneVersionOlinePackge_Award[1]["RewardItem"][3]["Attr"] = "0 1 3"
	
	-- 1转15-1转140
	tRuneVersionOlinePackge_Award[2] = {}
	tRuneVersionOlinePackge_Award[2]["LogId"] = 12000979
	--50赠品天石
	tRuneVersionOlinePackge_Award[2]["RewardItem"] = {}
	tRuneVersionOlinePackge_Award[2]["RewardItem"][1] = {}
	tRuneVersionOlinePackge_Award[2]["RewardItem"][1]["Id"] = 3200704
	tRuneVersionOlinePackge_Award[2]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionOlinePackge_Award[2]["EmoneyLog"] = "350	21077	0	0	-50	"
	
	--经验球赠*3
	tRuneVersionOlinePackge_Award[2]["RewardItem"][2] = {}
	tRuneVersionOlinePackge_Award[2]["RewardItem"][2]["Id"] = 722136
	tRuneVersionOlinePackge_Award[2]["RewardItem"][2]["Attr"] = "0 3 3"
	
	-- 500点修行值
	tRuneVersionOlinePackge_Award[2]["RewardItem"][3] = {}
	tRuneVersionOlinePackge_Award[2]["RewardItem"][3]["Id"] = 3304062
	tRuneVersionOlinePackge_Award[2]["RewardItem"][3]["Attr"] = "0 1 3"
	
	-- 2转15级以上
	tRuneVersionOlinePackge_Award[3] = {}
	tRuneVersionOlinePackge_Award[3]["LogId"] = 12000979
	--100赠品天石
	tRuneVersionOlinePackge_Award[3]["RewardItem"] = {}
	tRuneVersionOlinePackge_Award[3]["RewardItem"][1] = {}
	tRuneVersionOlinePackge_Award[3]["RewardItem"][1]["Id"] = 3304213
	tRuneVersionOlinePackge_Award[3]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionOlinePackge_Award[3]["EmoneyLog"] = "350	21078	0	0	-100	"
	
	--500点气力值
	tRuneVersionOlinePackge_Award[3]["RewardItem"][2] = {}
	tRuneVersionOlinePackge_Award[3]["RewardItem"][2]["Id"] = 3304196
	tRuneVersionOlinePackge_Award[3]["RewardItem"][2]["Attr"] = "0 1 3"
	
	-- 强练丹赠*10
	tRuneVersionOlinePackge_Award[3]["RewardItem"][3] = {}
	tRuneVersionOlinePackge_Award[3]["RewardItem"][3]["Id"] = 3004470
	tRuneVersionOlinePackge_Award[3]["RewardItem"][3]["Attr"] = "0 1 3"
	
	

-- 随机奖励
local tRuneVersionOlinePackge_RunTimeAward = {}

	--0转80级-0转140
	tRuneVersionOlinePackge_RunTimeAward[1] = {}
	tRuneVersionOlinePackge_RunTimeAward[1]["ItemChanceSum"] = 10000
	-- 1赠+2赤练石*2 25%
	tRuneVersionOlinePackge_RunTimeAward[1][1] = {}
	tRuneVersionOlinePackge_RunTimeAward[1][1]["RandomItemChanceType"] = 2
	tRuneVersionOlinePackge_RunTimeAward[1][1]["ItemChance"] = 2500
	tRuneVersionOlinePackge_RunTimeAward[1][1]["RewardItem"] = {}
	tRuneVersionOlinePackge_RunTimeAward[1][1]["RewardItem"][1] = {}
	tRuneVersionOlinePackge_RunTimeAward[1][1]["RewardItem"][1]["Id"] = 3305382
	tRuneVersionOlinePackge_RunTimeAward[1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionOlinePackge_RunTimeAward[1][1]["LogId"] = 12000979

	-- 赠流星卷*1 60%
	tRuneVersionOlinePackge_RunTimeAward[1][2] = {}
	tRuneVersionOlinePackge_RunTimeAward[1][2]["RandomItemChanceType"] = 2
	tRuneVersionOlinePackge_RunTimeAward[1][2]["ItemChance"] = 6000
	tRuneVersionOlinePackge_RunTimeAward[1][2]["RewardItem"] = {}
	tRuneVersionOlinePackge_RunTimeAward[1][2]["RewardItem"][1] = {}
	tRuneVersionOlinePackge_RunTimeAward[1][2]["RewardItem"][1]["Id"] = 3301818
	tRuneVersionOlinePackge_RunTimeAward[1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionOlinePackge_RunTimeAward[1][2]["LogId"] = 12000979

	-- 赠+2马*1 15%
	tRuneVersionOlinePackge_RunTimeAward[1][3] = {}
	tRuneVersionOlinePackge_RunTimeAward[1][3]["RandomItemChanceType"] = 2
	tRuneVersionOlinePackge_RunTimeAward[1][3]["ItemChance"] = 1500
	tRuneVersionOlinePackge_RunTimeAward[1][3]["RewardItem"] = {}
	tRuneVersionOlinePackge_RunTimeAward[1][3]["RewardItem"][1] = {}
	tRuneVersionOlinePackge_RunTimeAward[1][3]["RewardItem"][1]["Id"] = 3303247
	tRuneVersionOlinePackge_RunTimeAward[1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionOlinePackge_RunTimeAward[1][3]["LogId"] = 12000979
	
	--1转15-1转140
	tRuneVersionOlinePackge_RunTimeAward[2] = {}
	tRuneVersionOlinePackge_RunTimeAward[2]["ItemChanceSum"] = 10000
	-- 赠+3赤练石*1 30%
	tRuneVersionOlinePackge_RunTimeAward[2][1] = {}
	tRuneVersionOlinePackge_RunTimeAward[2][1]["RandomItemChanceType"] = 2
	tRuneVersionOlinePackge_RunTimeAward[2][1]["ItemChance"] = 3000
	tRuneVersionOlinePackge_RunTimeAward[2][1]["RewardItem"] = {}
	tRuneVersionOlinePackge_RunTimeAward[2][1]["RewardItem"][1] = {}
	tRuneVersionOlinePackge_RunTimeAward[2][1]["RewardItem"][1]["Id"] = 3301807
	tRuneVersionOlinePackge_RunTimeAward[2][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionOlinePackge_RunTimeAward[2][1]["LogId"] = 12000979

	-- 赠流星卷*2 50%
	tRuneVersionOlinePackge_RunTimeAward[2][2] = {}
	tRuneVersionOlinePackge_RunTimeAward[2][2]["RandomItemChanceType"] = 2
	tRuneVersionOlinePackge_RunTimeAward[2][2]["ItemChance"] = 5000
	tRuneVersionOlinePackge_RunTimeAward[2][2]["RewardItem"] = {}
	tRuneVersionOlinePackge_RunTimeAward[2][2]["RewardItem"][1] = {}
	tRuneVersionOlinePackge_RunTimeAward[2][2]["RewardItem"][1]["Id"] = 3301818
	tRuneVersionOlinePackge_RunTimeAward[2][2]["RewardItem"][1]["Attr"] = "0 2 3"
	tRuneVersionOlinePackge_RunTimeAward[2][2]["LogId"] = 12000979

	-- 龙珠赠*1 20%
	tRuneVersionOlinePackge_RunTimeAward[2][3] = {}
	tRuneVersionOlinePackge_RunTimeAward[2][3]["RandomItemChanceType"] = 2
	tRuneVersionOlinePackge_RunTimeAward[2][3]["ItemChance"] = 2000
	tRuneVersionOlinePackge_RunTimeAward[2][3]["RewardItem"] = {}
	tRuneVersionOlinePackge_RunTimeAward[2][3]["RewardItem"][1] = {}
	tRuneVersionOlinePackge_RunTimeAward[2][3]["RewardItem"][1]["Id"] = 3301808
	tRuneVersionOlinePackge_RunTimeAward[2][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionOlinePackge_RunTimeAward[2][3]["LogId"] = 12000979
	
	--2转15级以上
	tRuneVersionOlinePackge_RunTimeAward[3] = {}
	tRuneVersionOlinePackge_RunTimeAward[3]["ItemChanceSum"] = 10000
	-- 赠真气礼包*5 40%
	tRuneVersionOlinePackge_RunTimeAward[3][1] = {}
	tRuneVersionOlinePackge_RunTimeAward[3][1]["RandomItemChanceType"] = 2
	tRuneVersionOlinePackge_RunTimeAward[3][1]["ItemChance"] = 4000
	tRuneVersionOlinePackge_RunTimeAward[3][1]["RewardItem"] = {}
	tRuneVersionOlinePackge_RunTimeAward[3][1]["RewardItem"][1] = {}
	tRuneVersionOlinePackge_RunTimeAward[3][1]["RewardItem"][1]["Id"] = 3006542
	tRuneVersionOlinePackge_RunTimeAward[3][1]["RewardItem"][1]["Attr"] = "0 5 3"
	tRuneVersionOlinePackge_RunTimeAward[3][1]["LogId"] = 12000979

	-- 明亮星陨石*1 40%
	tRuneVersionOlinePackge_RunTimeAward[3][2] = {}
	tRuneVersionOlinePackge_RunTimeAward[3][2]["RandomItemChanceType"] = 2
	tRuneVersionOlinePackge_RunTimeAward[3][2]["ItemChance"] = 4000
	tRuneVersionOlinePackge_RunTimeAward[3][2]["RewardItem"] = {}
	tRuneVersionOlinePackge_RunTimeAward[3][2]["RewardItem"][1] = {}
	tRuneVersionOlinePackge_RunTimeAward[3][2]["RewardItem"][1]["Id"] = 3009001
	tRuneVersionOlinePackge_RunTimeAward[3][2]["RewardItem"][1]["Attr"] = "0 1 0 2280 1"
	tRuneVersionOlinePackge_RunTimeAward[3][2]["LogId"] = 12000979

	-- 赠黄色符文1级-风卷残云 20%
	tRuneVersionOlinePackge_RunTimeAward[3][3] = {}
	tRuneVersionOlinePackge_RunTimeAward[3][3]["RandomItemChanceType"] = 2
	tRuneVersionOlinePackge_RunTimeAward[3][3]["ItemChance"] = 2000
	tRuneVersionOlinePackge_RunTimeAward[3][3]["RewardItem"] = {}
	tRuneVersionOlinePackge_RunTimeAward[3][3]["RewardItem"][1] = {}
	tRuneVersionOlinePackge_RunTimeAward[3][3]["RewardItem"][1]["Id"] = 4030701
	tRuneVersionOlinePackge_RunTimeAward[3][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tRuneVersionOlinePackge_RunTimeAward[3][3]["LogId"] = 12000979
	tRuneVersionOlinePackge_RunTimeAward[3][3]["EmoneyLog"] = "350	21079	0	0	1	"
	
--log表
local tRuneVersionOlinePackge_Log = {}
	tRuneVersionOlinePackge_Log["DelItem"] = "0,0,%d,1,12000979,2,0,0" --删除任务物品



---------------------------------逻辑部分---------------------------------------------

--礼包
function RuneVersionOlinePackge_GetReward(nItemId)
	local tAward = CommonFunc_Copy(tRuneVersionOlinePackge_Award) 
	local tRunTimeAward = CommonFunc_Copy(tRuneVersionOlinePackge_RunTimeAward) 
	local nUserId = Get_UserId()
	--时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["RuneVersionOlinePackge"]["ActivityTime"]) then
		return
	end

	if not Sys_ChkFullTime(tActivityTime["RuneVersionOlinePackge"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				local sDelItemLog = string.format(tRuneVersionOlinePackge_Log["DelItem"],nItemId)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tRuneVersionOlinePackge_Text["OverTime"])
			end
		end	
		return
	end
	--物品
	if not Item_ChkItem(nItemId) then
		return
	end	
	--获得等级
	local nLevel = Get_UserLevel(nUserId)
	
	--获得转世
	local nMete = Get_UserMetempsychosis(nUserId)
	
	--获得vip
	local nVip = Get_UserVip(nUserId)

	local nEvent = tRuneVersionOlinePackge_Stc["EventData"]
	local nType =  tRuneVersionOlinePackge_Stc["DataType"]

	-- 判断是否领取
	if not Task_StcInterval(nEvent,nType,1,4,nUserId) then
		User_TalkChannel2005(tRuneVersionOlinePackge_Text["GetAward"])
		return
	end
	local nFlag = 0

	if  nLevel <= 140 and nMete == 0 then
		nFlag = 1
	end
	
	if nLevel <= 140 and nMete == 1 then
		nFlag = 2
	end
	
	if 15 <= nLevel and nMete >= 2 then
		nFlag = 3
	end
	
	if nFlag == 0 then
		return
	end
	-- 非VIP玩家（0转80级-0转140级和1转15级-1转140级）每日分别领各自对应的一份固定奖励（不含随机奖励）
	
	-- 非VIP玩家（2转0级以上）每日领一份固定+随机奖励
	
	local nSpaceSum = 0
	local nSpaceRun = 0
	
	if nVip == 0 then

	    nSpaceSum = RewardTemplate_GetRewardSpace(tAward[nFlag])
		if 2 <= nMete and nLevel >= 15 then
			nSpaceRun = RewardTemplate_GetRandomSpace(tRunTimeAward,3)
			nSpaceSum = nSpaceSum+nSpaceRun
			if not User_CheckLeftSpace(nSpaceSum) then 	
				User_TalkChannel2005(string.format(tRuneVersionOlinePackge_Text["BagFull"],nSpaceSum))
				return
			end 
			Task_AddStatistic(nEvent,nType,1,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			RewardTemplate_NewRandom(tRunTimeAward,3)
			RewardTemplate_UseItem(tAward[nFlag])
		else
			if not User_CheckLeftSpace(nSpaceSum) then 	
				User_TalkChannel2005(string.format(tRuneVersionOlinePackge_Text["BagFull"],nSpaceSum))
				return
			end 
			Task_AddStatistic(nEvent,nType,1,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			RewardTemplate_UseItem(tAward[nFlag])
		end
		return
	end
	
	-- VIP1-4玩家（所有等级）每日领两份固定奖励+一份随机奖励
	if 1 <= nVip and nVip <= 4 then
		
		tAward[1]["RewardItem"][1]["Attr"] = "0 2 3"
		tAward[1]["EmoneyLog"] = "350	21076	0	0	-40	"
		tAward[1]["RewardItem"][2]["Attr"] = "0 4 3"
		tAward[1]["RewardItem"][3]["Attr"] = "0 2 3"
		
		tAward[2]["RewardItem"][1]["Attr"] = "0 2 3"
		tAward[2]["EmoneyLog"] = "350	21076	0	0	-100	"
		tAward[2]["RewardItem"][2]["Attr"] = "0 6 3"
		tAward[2]["RewardItem"][3]["Attr"] = "0 2 3"
		
		tAward[3]["RewardItem"][1]["Attr"] = "0 2 3"
		tAward[3]["EmoneyLog"] = "350	21076	0	0	-200	"
		tAward[3]["RewardItem"][2]["Attr"] = "0 2 3"
		tAward[3]["RewardItem"][3]["Attr"] = "0 2 3"
		
		nSpaceSum = RewardTemplate_GetRewardSpace(tAward[nFlag])
		nSpaceRun = RewardTemplate_GetRandomSpace(tRunTimeAward,nFlag)
		nSpaceSum = nSpaceSum + nSpaceRun
		--背包
		if not User_CheckLeftSpace(nSpaceSum) then 		
			User_TalkChannel2005(string.format(tRuneVersionOlinePackge_Text["BagFull"] ,nSpaceSum))
			return
		end 
		
		Task_AddStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		RewardTemplate_NewRandom(tRunTimeAward,nFlag)
		RewardTemplate_UseItem(tAward[nFlag])

		return
	end
	
	if 5 <= nVip and nVip <= 6 then
		-- VIP5-6玩家（2转0级以上）每日领取三份固定奖励+两份随机奖励
		if 2 <= nMete and nLevel >= 15 then
			tAward[1]["RewardItem"][1]["Attr"] = "0 3 3"
			tAward[1]["EmoneyLog"] = "350	21076	0	0	-60	"
			tAward[1]["RewardItem"][2]["Attr"] = "0 6 3"
			tAward[1]["RewardItem"][3]["Attr"] = "0 3 3"
			
			tAward[2]["RewardItem"][1]["Attr"] = "0 3 3"
			tAward[2]["EmoneyLog"] = "350	21076	0	0	-150	"
			tAward[2]["RewardItem"][2]["Attr"] = "0 9 3"
			tAward[2]["RewardItem"][3]["Attr"] = "0 3 3"
			
			tAward[3]["RewardItem"][1]["Attr"] = "0 3 3"
			tAward[3]["EmoneyLog"] = "350	21076	0	0	-300	"
			tAward[3]["RewardItem"][2]["Attr"] = "0 3 3"
			tAward[3]["RewardItem"][3]["Attr"] = "0 3 3"
				
		else
		-- VIP5-6玩家（0转80级-1转140级）每日领取两份奖励（固定+随机）
			tAward[1]["RewardItem"][1]["Attr"] = "0 2 3"
			tAward[1]["EmoneyLog"] = "350	21076	0	0	-40	"
			tAward[1]["RewardItem"][2]["Attr"] = "0 4 3"
			tAward[1]["RewardItem"][3]["Attr"] = "0 2 3"
			
			tAward[2]["RewardItem"][1]["Attr"] = "0 2 3"
			tAward[2]["EmoneyLog"] = "350	21076	0	0	-100	"
			tAward[2]["RewardItem"][2]["Attr"] = "0 6 3"
			tAward[2]["RewardItem"][3]["Attr"] = "0 2 3"
			
			tAward[3]["RewardItem"][1]["Attr"] = "0 2 3"
			tAward[3]["EmoneyLog"] = "350	21076	0	0	-200	"
			tAward[3]["RewardItem"][2]["Attr"] = "0 2 3"
			tAward[3]["RewardItem"][3]["Attr"] = "0 2 3"	

		end
	
		tRunTimeAward[1][1]["RewardItem"][1]["Attr"] = "0 2 3"
		tRunTimeAward[1][2]["RewardItem"][1]["Attr"] = "0 2 3"
		tRunTimeAward[1][3]["RewardItem"][1]["Attr"] = "0 2 3"
		
		tRunTimeAward[2][1]["RewardItem"][1]["Attr"] = "0 2 3"
		tRunTimeAward[2][2]["RewardItem"][1]["Attr"] = "0 4 3"
		tRunTimeAward[2][3]["RewardItem"][1]["Attr"] = "0 2 3"
		
		tRunTimeAward[3][1]["RewardItem"][1]["Attr"] = "0 10 3"
		tRunTimeAward[3][2]["RewardItem"][1]["Attr"] = "0 2 0 2280 1"
		tRunTimeAward[3][3]["RewardItem"][1]["Attr"] = "0 2 3"
		
		nSpaceSum = RewardTemplate_GetRewardSpace(tAward[nFlag])
		nSpaceRun = RewardTemplate_GetRandomSpace(tRunTimeAward,nFlag)
		nSpaceSum = nSpaceSum + nSpaceRun
		--背包
		if not User_CheckLeftSpace(nSpaceSum) then 		
			User_TalkChannel2005(string.format(tRuneVersionOlinePackge_Text["BagFull"] ,nSpaceSum))
			return
		end 

	
		--置掩码
		Task_AddStatistic(nEvent,nType,1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		local tNewReward,sRewardStr = RewardTemplate_NewRandom(tRunTimeAward,nFlag)
		if tNewReward[1]["tAward"][1]["EmoneyLog"] ~= nil then
			Sys_SaveEmoneyBuy(tNewReward[1]["tAward"][1]["EmoneyLog"])
		end
		
		RewardTemplate_UseItem(tAward[nFlag])
		-- RewardTemplate_NewRandom(tRunTimeAward,nFlag)			
	end   

end 




---------------------------------物品部分---------------------------------------------
tItem[3307138] = tItem[3307138] or {}
tItem[3307138]["Function"] = function(nItemId,sItemName)
	RuneVersionOlinePackge_GetReward(nItemId)
end

