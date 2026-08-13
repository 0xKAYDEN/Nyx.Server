------------------------------------------------------------------------------------
--Name:		191016[英文征服][活动脚本]11月科普答题+活跃礼包（11.7-11.30）
--Creator: 	郑飞
--Created:	2019/10/16
------------------------------------------------------------------------------------


--41567 = V100\ActiveScript\[Conquer][ActiveScript]NovPopularScience.lua
--41567 = V100\活动脚本\[征服][活动脚本]11月科普答题.lua
--logid:12001690
-- stc(205,83) 背包信
-- stc(205,84) 记录昨天答题数量
-- stc(205,91) 记录今天答题数量
-- stc(205,92) 记录总共的答题情况 2进制
-- stc(205,95) 记录杀怪掉落和正气令使用 0-4
-- stc(205,96) 记录好运礼包打开
-- stc(205,97) 记录全勤奖领取



--命名前缀：NovPopularScience_

--------------------------------------数据配置部分--------------------------------------
-- 每日题目答案：BAD  AAC  ADA    DBC    ADA    CCA   DBB
local tAnswer = {2,1,4,1,1,3,1,4,1,4,2,3,1,4,1,3,3,1,4,2,2}
	
local tNovPopularScience_Cont = {}
	tNovPopularScience_Cont["nLevel"] = 0
	tNovPopularScience_Cont["nMetempsychosis"] = 2
	-- 扣除天石EmoneyLog
	tNovPopularScience_Cont["EmoneyLog"] = {}
	tNovPopularScience_Cont["EmoneyLog"]["Buy"] = "1000	1200	%d	%d	1	"
	--获得8折券
	tNovPopularScience_Cont["EmoneyLog"]["Discount"] = "350	22706	0	0	1"
	--活动开始日期
	tNovPopularScience_Cont["BeginDay"] = "2019-11-07"
	-- 怪物掉落概率
	tNovPopularScience_Cont["Numerator"] = 1
	tNovPopularScience_Cont["Denominator"] = 100

local tNovPopularScience_Stc = {}
	--记录昨天答题数量
	tNovPopularScience_Stc[1] = {}
	tNovPopularScience_Stc[1]["EventType"] = 205
	tNovPopularScience_Stc[1]["DataType"] = 84
	tNovPopularScience_Stc[1]["Limit"] = 4
	--记录今天答题数量
	tNovPopularScience_Stc[2] = {}
	tNovPopularScience_Stc[2]["EventType"] = 205
	tNovPopularScience_Stc[2]["DataType"] = 91
	tNovPopularScience_Stc[2]["Limit"] = 4
	-- 记录总共的答题情况 2进制
	tNovPopularScience_Stc[3] = {}
	tNovPopularScience_Stc[3]["EventType"] = 205
	tNovPopularScience_Stc[3]["DataType"] = 92
	--记录杀怪掉落和正气令使用
	tNovPopularScience_Stc[4] = {}
	tNovPopularScience_Stc[4]["EventType"] = 205
	tNovPopularScience_Stc[4]["DataType"] = 95
	tNovPopularScience_Stc[4]["Limit"] = 40004
	tNovPopularScience_Stc[4]["Add"] = 10001
	--记录好运礼包打开
	tNovPopularScience_Stc[5] = {}
	tNovPopularScience_Stc[5]["EventType"] = 205
	tNovPopularScience_Stc[5]["DataType"] = 96
	--记录全勤奖领取
	tNovPopularScience_Stc[6] = {}
	tNovPopularScience_Stc[6]["EventType"] = 205
	tNovPopularScience_Stc[6]["DataType"] = 97

--------------------------------------------奖励配置-----------------------------------------------------------
local tNovPopularScience_Reward = {}
	-- ===20日答题全勤奖
	-- ===索引:tNovPopularScience_Reward[3326598][1]
	-- ===EMoneyLog:350,22707
	tNovPopularScience_Reward[3326598] = {}
	tNovPopularScience_Reward[3326598][1] = {}
	tNovPopularScience_Reward[3326598][1]["LogId"] = 12001690
	tNovPopularScience_Reward[3326598][1]["EmoneyLog"] = "350	22707	0	0	1	"
	tNovPopularScience_Reward[3326598][1]["RewardItem"] = {}
	tNovPopularScience_Reward[3326598][1]["RewardItem"][1] = {}
	tNovPopularScience_Reward[3326598][1]["RewardItem"][1]["Id"] = 3326598 -- FullAttendancePack[3326598][属性:11][叠加:10000][金币:0], 【表格】答题全勤奖
	tNovPopularScience_Reward[3326598][1]["RewardItem"][1]["Attr"] = "0 1" -- FullAttendancePack*1
	tNovPopularScience_Reward[3326598][1]["RewardEffect"] = {}
	tNovPopularScience_Reward[3326598][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPopularScience_Reward[3326598][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovPopularScience_Reward[3326598][2] = {}
	-- ===20日答题全勤奖
	-- ===索引:tNovPopularScience_Reward[3326598][2]
	-- ===删除:3326598,1
	-- ===NewEMoneyLog:1000,01200
	tNovPopularScience_Reward[3326598][2]["LogId"] = 12001690
	tNovPopularScience_Reward[3326598][2]["DeleteItem"] = {}
	tNovPopularScience_Reward[3326598][2]["DeleteItem"][1] = {}
	tNovPopularScience_Reward[3326598][2]["DeleteItem"][1]["Id"] = 3326598 -- 【库】FullAttendancePack[属性:11]
	tNovPopularScience_Reward[3326598][2]["RewardEMoneyMono"] = {}
	tNovPopularScience_Reward[3326598][2]["RewardEMoneyMono"]["Value"] = 500 -- 天石（赠）, 【需求】500赠品天石
	tNovPopularScience_Reward[3326598][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1200"
	tNovPopularScience_Reward[3326598][2]["RewardItem"] = {}
	tNovPopularScience_Reward[3326598][2]["RewardItem"][1] = {}
	tNovPopularScience_Reward[3326598][2]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tNovPopularScience_Reward[3326598][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tNovPopularScience_Reward[3326598][2]["RewardItem"][2] = {}
	tNovPopularScience_Reward[3326598][2]["RewardItem"][2]["Id"] = 3003880 -- SuperGemBag[3003880][属性:9][叠加:0][金币:0], 【表格】随机赠品优质宝石礼包
	tNovPopularScience_Reward[3326598][2]["RewardItem"][2]["Attr"] = "0 1" -- SuperGemBag*1
	tNovPopularScience_Reward[3326598][2]["RewardEffect"] = {}
	tNovPopularScience_Reward[3326598][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPopularScience_Reward[3326598][2]["RewardEffect"]["Effect"] = "angelwing"


	tNovPopularScience_Reward[3326597] = {}
	-- ===福袋奖励
	-- ===索引:tNovPopularScience_Reward[3326597]
	-- ===删除:3326597,1
	-- ===EMoneyLog:350,22704
	-- ===NewEMoneyLog:350,22705
	tNovPopularScience_Reward[3326597]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNovPopularScience_Reward[3326597]["DeleteItem"] = {}
	tNovPopularScience_Reward[3326597]["DeleteItem"][1] = {}
	tNovPopularScience_Reward[3326597]["DeleteItem"][1]["Id"] = 3326597 -- 【库】LuckyPack[属性:11]
	tNovPopularScience_Reward[3326597]["LogId"] = 12001690
	tNovPopularScience_Reward[3326597]["EmoneyLog"] = "350	22704	0	0	1	"
	-- 微光星陨石*3 - 35%
	tNovPopularScience_Reward[3326597][1] = {}
	tNovPopularScience_Reward[3326597][1]["RandomItemChanceType"] = 2
	tNovPopularScience_Reward[3326597][1]["ItemChance"] = 3500
	tNovPopularScience_Reward[3326597][1]["RewardItem"] = {}
	tNovPopularScience_Reward[3326597][1]["RewardItem"][1] = {}
	tNovPopularScience_Reward[3326597][1]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*3
	tNovPopularScience_Reward[3326597][1]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tNovPopularScience_Reward[3326597][1]["RewardEffect"] = {}
	tNovPopularScience_Reward[3326597][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPopularScience_Reward[3326597][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 30赠品天石 - 5%
	tNovPopularScience_Reward[3326597][2] = {}
	tNovPopularScience_Reward[3326597][2]["RandomItemChanceType"] = 2
	tNovPopularScience_Reward[3326597][2]["ItemChance"] = 500
	tNovPopularScience_Reward[3326597][2]["RewardEMoneyMono"] = {}
	tNovPopularScience_Reward[3326597][2]["RewardEMoneyMono"]["Value"] = 30 -- 天石（赠）, 【需求】30赠品天石
	tNovPopularScience_Reward[3326597][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22705"
	tNovPopularScience_Reward[3326597][2]["RewardEffect"] = {}
	tNovPopularScience_Reward[3326597][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPopularScience_Reward[3326597][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹源晶 - 2%
	tNovPopularScience_Reward[3326597][3] = {}
	tNovPopularScience_Reward[3326597][3]["RandomItemChanceType"] = 2
	tNovPopularScience_Reward[3326597][3]["ItemChance"] = 200
	tNovPopularScience_Reward[3326597][3]["RewardItem"] = {}
	tNovPopularScience_Reward[3326597][3]["RewardItem"][1] = {}
	tNovPopularScience_Reward[3326597][3]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶
	tNovPopularScience_Reward[3326597][3]["RewardItem"][1]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
	tNovPopularScience_Reward[3326597][3]["RewardEffect"] = {}
	tNovPopularScience_Reward[3326597][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPopularScience_Reward[3326597][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹碎片*2 - 4%
	tNovPopularScience_Reward[3326597][4] = {}
	tNovPopularScience_Reward[3326597][4]["RandomItemChanceType"] = 2
	tNovPopularScience_Reward[3326597][4]["ItemChance"] = 400
	tNovPopularScience_Reward[3326597][4]["RewardItem"] = {}
	tNovPopularScience_Reward[3326597][4]["RewardItem"][1] = {}
	tNovPopularScience_Reward[3326597][4]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片*2
	tNovPopularScience_Reward[3326597][4]["RewardItem"][1]["Attr"] = "0 2" -- YellowRuneFragment*2
	tNovPopularScience_Reward[3326597][4]["RewardEffect"] = {}
	tNovPopularScience_Reward[3326597][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPopularScience_Reward[3326597][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品+3赤练石 - 10%
	tNovPopularScience_Reward[3326597][5] = {}
	tNovPopularScience_Reward[3326597][5]["RandomItemChanceType"] = 2
	tNovPopularScience_Reward[3326597][5]["ItemChance"] = 1000
	tNovPopularScience_Reward[3326597][5]["RewardItem"] = {}
	tNovPopularScience_Reward[3326597][5]["RewardItem"][1] = {}
	tNovPopularScience_Reward[3326597][5]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赠品+3赤练石
	tNovPopularScience_Reward[3326597][5]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tNovPopularScience_Reward[3326597][5]["RewardEffect"] = {}
	tNovPopularScience_Reward[3326597][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPopularScience_Reward[3326597][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品回气丹*2 - 9%
	tNovPopularScience_Reward[3326597][6] = {}
	tNovPopularScience_Reward[3326597][6]["RandomItemChanceType"] = 2
	tNovPopularScience_Reward[3326597][6]["ItemChance"] = 900
	tNovPopularScience_Reward[3326597][6]["RewardItem"] = {}
	tNovPopularScience_Reward[3326597][6]["RewardItem"][1] = {}
	tNovPopularScience_Reward[3326597][6]["RewardItem"][1]["Id"] = 729242 -- Vital~Pill[729242][属性:0][叠加:1][金币:0], 【表格】赠品回气丹*2
	tNovPopularScience_Reward[3326597][6]["RewardItem"][1]["Attr"] = "0 2 3" -- Vital~Pill（赠）*2
	tNovPopularScience_Reward[3326597][6]["RewardEffect"] = {}
	tNovPopularScience_Reward[3326597][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPopularScience_Reward[3326597][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 八折券*1 - 35%
	tNovPopularScience_Reward[3326597][7] = {}
	tNovPopularScience_Reward[3326597][7]["RandomItemChanceType"] = 2
	tNovPopularScience_Reward[3326597][7]["ItemChance"] = 3500
	tNovPopularScience_Reward[3326597][7]["RewardItem"] = {}
	tNovPopularScience_Reward[3326597][7]["RewardItem"][1] = {}
	tNovPopularScience_Reward[3326597][7]["RewardItem"][1]["Id"] = 3314012 --  3314012 【库里没有该物品】, 【表格】八折券*1
	tNovPopularScience_Reward[3326597][7]["RewardItem"][1]["Attr"] = "0 1 3" --  3314012 【库里没有该物品】（赠）*1
	tNovPopularScience_Reward[3326597][7]["RewardEffect"] = {}
	tNovPopularScience_Reward[3326597][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPopularScience_Reward[3326597][7]["RewardEffect"]["Effect"] = "angelwing"


	tNovPopularScience_Reward[3326596] = {}
	-- ===好运礼包碎片
	-- ===索引:tNovPopularScience_Reward[3326596][1]
	-- ===
	tNovPopularScience_Reward[3326596][1] = {}
	tNovPopularScience_Reward[3326596][1]["LogId"] = 12001690
	tNovPopularScience_Reward[3326596][1]["RewardItem"] = {}
	tNovPopularScience_Reward[3326596][1]["RewardItem"][1] = {}
	tNovPopularScience_Reward[3326596][1]["RewardItem"][1]["Id"] = 3326596 -- LuckyPackFragment[3326596][属性:9][叠加:10000][金币:0], 【表格】好运礼包碎片
	tNovPopularScience_Reward[3326596][1]["RewardItem"][1]["Attr"] = "0 1" -- LuckyPackFragment*1
	tNovPopularScience_Reward[3326596][1]["RewardEffect"] = {}
	tNovPopularScience_Reward[3326596][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPopularScience_Reward[3326596][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovPopularScience_Reward[3326596][3] = {}
	-- ===合成好运礼包
	-- ===索引:tNovPopularScience_Reward[3326596][3]
	-- ===删除:3326596,3
	-- ===EMoneyLog:350,22702
	tNovPopularScience_Reward[3326596][3]["LogId"] = 12001690
	tNovPopularScience_Reward[3326596][3]["EmoneyLog"] = "350	22702	0	0	1	"
	tNovPopularScience_Reward[3326596][3]["DeleteItem"] = {}
	tNovPopularScience_Reward[3326596][3]["DeleteItem"][1] = {}
	tNovPopularScience_Reward[3326596][3]["DeleteItem"][1]["Id"] = 3326596 -- 【库】LuckyPackFragment[属性:9]
	tNovPopularScience_Reward[3326596][3]["DeleteItem"][1]["ItemNum"] = 3
	tNovPopularScience_Reward[3326596][3]["RewardItem"] = {}
	tNovPopularScience_Reward[3326596][3]["RewardItem"][1] = {}
	tNovPopularScience_Reward[3326596][3]["RewardItem"][1]["Id"] = 3326597 -- LuckyPack[3326597][属性:11][叠加:10000][金币:0], 【表格】好运礼包
	tNovPopularScience_Reward[3326596][3]["RewardItem"][1]["Attr"] = "0 1" -- LuckyPack*1
	tNovPopularScience_Reward[3326596][3]["RewardEffect"] = {}
	tNovPopularScience_Reward[3326596][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPopularScience_Reward[3326596][3]["RewardEffect"]["Effect"] = "angelwing"


	tNovPopularScience_Reward[3326596][2] = {}
	-- ===获得福袋
	-- ===索引:tNovPopularScience_Reward[3326596][2]
	-- ===EMoneyLog:350,22703
	tNovPopularScience_Reward[3326596][2]["LogId"] = 12001690
	tNovPopularScience_Reward[3326596][2]["EmoneyLog"] = "350	22703	0	0	1	"
	tNovPopularScience_Reward[3326596][2]["RewardItem"] = {}
	tNovPopularScience_Reward[3326596][2]["RewardItem"][1] = {}
	tNovPopularScience_Reward[3326596][2]["RewardItem"][1]["Id"] = 3326597 -- LuckyPack[3326597][属性:11][叠加:10000][金币:0], 【表格】好运礼包
	tNovPopularScience_Reward[3326596][2]["RewardItem"][1]["Attr"] = "0 2" -- LuckyPack*2
	tNovPopularScience_Reward[3326596][2]["RewardEffect"] = {}
	tNovPopularScience_Reward[3326596][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPopularScience_Reward[3326596][2]["RewardEffect"]["Effect"] = "angelwing"


--------------------------------------------逻辑部分--------------------------------------------------------------
-- 获取掩码值
function NovPopularScience_GetStcValue(nIndex,nUserId)
	local nEvent = tNovPopularScience_Stc[nIndex]["EventType"]
	local nType = tNovPopularScience_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function NovPopularScience_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tNovPopularScience_Stc[nIndex]["EventType"]
	local nType = tNovPopularScience_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
end

-- stc 隔天重置
function NovPopularScience_ClearStcInterval(nIndex,nData,nUserId)
	local nEvent = tNovPopularScience_Stc[nIndex]["EventType"]
	local nType = tNovPopularScience_Stc[nIndex]["DataType"]
	if nData == nil then
		nData = 0
	end
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,nData,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

--------------------------------------npc使用
-- 每日随机3道题目
function NovPopularScience_Random()
	local tIndex = {}
	for i = 1,3 do
		local nNum = math.random(1,21)
		for j = 1,#tIndex do
			if nNum == tIndex[j] then
				nNum = math.random(1,21)
			end
		end
		tIndex[i] = nNum
	end
	
	return tIndex
end

-- 返回掩码对应位的值 nType==1为昨天	nType==2为今天
function NovPopularScience_RetrunData(nType)
	--获取活动距离天数
	local sStartTime = tNovPopularScience_Cont["BeginDay"]
	local nDay = CommonFunc_DisActivityTime(sStartTime)
	--标志答题情况	0未答	1已答
	local nResult = 0
	local nData = NovPopularScience_GetStcValue(3)
	
	-- 返回昨天的答题情况
	if nType == 1 then
		--活动第一天 无需补答
		if nDay == 0 then
			nResult = 1
			return nResult,nDay
		end
	end
	
	--返回今天的答题情况
	if nType == 2 then
		nDay = nDay + 1
	end
	
	local nTemp = NovPopularScience_Pow(2,nDay)
	if Sys_ParseNumbersContain(nTemp,nData) then
		nResult = 1
	end
	
	--			对应掩码值,活动开始天数
	return nResult,nDay
end

-- 返回签到天数
function NovPopularScience_RetrunSum()
	local nSum = 0
	local nResultY,nDayY =NovPopularScience_RetrunData(1)
	local nResultT,nDayT =NovPopularScience_RetrunData(2)
	
	-- 昨日未答题 签到中断
	if nResultY == 0 then
		if nResultT == 1 then
			nSum = 1
		end
		return nSum
	end
	
	local nData = NovPopularScience_GetStcValue(3)
	--未答日期
	local tUnAns = {}
	for i = 1,nDayY do
		local nTemp = NovPopularScience_Pow(2,i)
		if not Sys_ParseNumbersContain(nTemp,nData) then
			table.insert(tUnAns,i)
		end
	end
	
	-- 不存在未答日期
	if tUnAns[#tUnAns] ~= nil then
		nSum = nDayY - tUnAns[#tUnAns]
	else
		nSum = nDayY
	end
	
	-- 今日答对
	if nDataT == 1 then
		nSum = nSum + 1
	end
	
	return nSum
end

-- 开始答题
function NovPopularScience_BeginAnswer(nNpcId,nType)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["NovPopularScience"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tNovPopularScience_Cont["nLevel"],tNovPopularScience_Cont["nMetempsychosis"]) then 
		return
	end
	
	--隔天重置掩码
	NovPopularScience_ClearStcInterval(1)
	NovPopularScience_ClearStcInterval(2)
	
	local nData = NovPopularScience_GetStcValue(nType)
	local nResult,nDay = NovPopularScience_RetrunData(nType)
	
	if nData >= 4 then
		
		-- 1题都未答对
		if nResult == 0 then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
			return 
		end
		
		if nType == 1 then
			Sys_MsgBox(tNovPopularScience_Text["NoNeed"])
		else
			Sys_MsgBox(tNovPopularScience_Text["Answered"])
		end
		
		return
	end
	
	--背包空间不足
	local nSpace1 = RewardTemplate_GetRewardSpace(tNovPopularScience_Reward[3326596][2],nNowUserId)
	local nSpace2 = RewardTemplate_GetRewardSpace(tNovPopularScience_Reward[3326598][1])
	local nSpaceNum = nSpace1 + nSpace2
	
	if not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(string.format(tNovPopularScience_Text["FullSpace"],nSpaceNum))
		return
	end
	
	-- 获取每日随机3题
	if nData == 0 then
		tIndex = {}
		tIndex = NovPopularScience_Random()
		NovPopularScience_SetStcValue(nType,1)
	end
	
	nData = NovPopularScience_GetStcValue(nType)
	
	-- 题目生成失败
	if tIndex[1] == nil then
		return
	end
	
	local nIndex = tIndex[nData]
	
	--更新每日题目
	tNpcGossip[nNpcId]["Text311"] = tNovPopularScience_Text["Question"][nIndex]
	tNpcGossip[nNpcId]["Option311"] = tNovPopularScience_Text["Answer"][nIndex]["A"]
	tNpcGossip[nNpcId]["Option312"] = tNovPopularScience_Text["Answer"][nIndex]["B"]
	tNpcGossip[nNpcId]["Option313"] = tNovPopularScience_Text["Answer"][nIndex]["C"]
	tNpcGossip[nNpcId]["Option314"] = tNovPopularScience_Text["Answer"][nIndex]["D"]
	
	--初始化答案
	tNpcGossip[nNpcId]["OptionFunc311"] = "NovPopularScience_Answer</N>25174</N>0</N>"..nType
	tNpcGossip[nNpcId]["OptionFunc312"] = "NovPopularScience_Answer</N>25174</N>0</N>"..nType
	tNpcGossip[nNpcId]["OptionFunc313"] = "NovPopularScience_Answer</N>25174</N>0</N>"..nType
	tNpcGossip[nNpcId]["OptionFunc314"] = "NovPopularScience_Answer</N>25174</N>0</N>"..nType
	
	--更新答案
	local sOption = "OptionFunc31"..tAnswer[nIndex]
	tNpcGossip[nNpcId][sOption] = "NovPopularScience_Answer</N>25174</N>1</N>"..nType
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 判断答题对错
function NovPopularScience_Answer(nNpcId,nAnwser,nType)
	
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["NovPopularScience"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tNovPopularScience_Cont["nLevel"],tNovPopularScience_Cont["nMetempsychosis"]) then 
		return
	end
	
	local nData = NovPopularScience_GetStcValue(nType)
	local nResult,nDay = NovPopularScience_RetrunData(nType)
	
	--今日已参加过答题
	if nData >= 4 then
		-- 1题都未答对
		if nResult == 0 then
			LinkNpcGossipFunc_New(nNpcId,"1-4")
			return 
		end
		
		if nType == 1 then
			Sys_MsgBox(tNovPopularScience_Text["NoNeed"])
		else
			Sys_MsgBox(tNovPopularScience_Text["Answered"])
		end
		
		return
	end
	
	-- 标志是否可领取全勤
	local nFlag = 0
	
	--背包空间不足
	local nSpace1 = RewardTemplate_GetRewardSpace(tNovPopularScience_Reward[3326596][2],nNowUserId)
	local nSpace2 = RewardTemplate_GetRewardSpace(tNovPopularScience_Reward[3326598][1])
	local nSpaceNum = nSpace1 + nSpace2
		-- 活动过20天 可获得全勤奖
	if nDay >= 19 then
		local nSum = NovPopularScience_RetrunSum()
		local nDataFull = NovPopularScience_GetStcValue(6)
		if nSum >= 19 then
			if nDataFull == 0 then
				nFlag = 1
			end
		end
	end
	
	if not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(string.format(tNovPopularScience_Text["FullSpace"],nSpaceNum))
		return
	end
	
	-- 答题数+1
	NovPopularScience_SetStcValue(nType,nData+1)
	
	if nAnwser == 1 then
		--发放全勤奖
		if nFlag == 1 then
			NovPopularScience_SetStcValue(6,1)
			nFlag = 0
			RewardTemplate_UseItemAndMsg(tNovPopularScience_Reward[3326598][1])
		end
		--获得两个好运礼包
		if nResult == 0 then
			local nDataSum = NovPopularScience_GetStcValue(3) + NovPopularScience_Pow(2,nDay)
			NovPopularScience_SetStcValue(3,nDataSum)
		end
		-- 获得两个好运礼包
		RewardTemplate_UseItemAndMsg(tNovPopularScience_Reward[3326596][2])
		Sys_MsgBox(tNovPopularScience_Text["Correct"])
	else
		Sys_MsgBox(tNovPopularScience_Text["Wrong"])
	end
	
	
end

--补签答题
function NovPopularScience_Complete(nNpcId)
	
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["NovPopularScience"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tNovPopularScience_Cont["nLevel"],tNovPopularScience_Cont["nMetempsychosis"]) then 
		return
	end
	
	--背包空间不足
	local nSpaceNum = RewardTemplate_GetRewardSpace(tNovPopularScience_Reward[3326596][2],nNowUserId)
	if not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(string.format(tNovPopularScience_Text["FullSpace"],nSpaceNum))
		return
	end
	
	local nDataY = NovPopularScience_RetrunData(1)
	if nDataY == 1 then
		Sys_MsgBox(tNovPopularScience_Text["NoNeed"])
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	
end

-- 开始补签
function NovPopularScience_CompleteBegin(nNpcId)
	
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["NovPopularScience"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tNovPopularScience_Cont["nLevel"],tNovPopularScience_Cont["nMetempsychosis"]) then 
		return
	end
	
	--背包空间不足
	local nSpaceNum = RewardTemplate_GetRewardSpace(tNovPopularScience_Reward[3326596][2],nNowUserId)
	if not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(string.format(tNovPopularScience_Text["FullSpace"],nSpaceNum))
		return
	end
	
	local nData = NovPopularScience_GetStcValue(1)
	local nDataY = NovPopularScience_RetrunData(1)
	if nData >= 4 then
		tNpcGossip[25174]["OptionFunc133"] = "NovPopularScience_Complete</N>25174"
		if nDataY == 1 then
			Sys_MsgBox(tNovPopularScience_Text["Answered"])
		else
			LinkNpcGossipFunc_New(nNpcId,"2-1")
		end
		return
	end
	
	NovPopularScience_BeginAnswer(nNpcId,1)
end

-- 花费天石补签/重新答题
function NovPopularScience_Cost(nNpcId,nCostEmoney,nType)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["NovPopularScience"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tNovPopularScience_Cont["nLevel"],tNovPopularScience_Cont["nMetempsychosis"]) then 
		return
	end
	
	--背包空间不足
	local nSpaceNum = RewardTemplate_GetRewardSpace(tNovPopularScience_Reward[3326596][2],nNowUserId)
	if not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(string.format(tNovPopularScience_Text["FullSpace"],nSpaceNum))
		return
	end
	
	--获取玩家赠点天石数量
	local nEmoneyNum = Get_UserMonoEMoney()
	if nEmoneyNum < nCostEmoney then 
		Sys_MsgBox(tNovPopularScience_Text["NoMoney"])
		return
	end
	
	local nData = NovPopularScience_GetStcValue(nType)
	local nDataT = NovPopularScience_RetrunData(nType)
	
	if nDataT == 1 then
		if nType == 1 then
			Sys_MsgBox(tNovPopularScience_Text["NoNeed"])
		else
			Sys_MsgBox(tNovPopularScience_Text["Answered"])
		end
		return
	end
	
	-- 扣除天石
	if User_AddEMoneyMono(-nCostEmoney) then
		-- 打log
		Sys_SaveEmoneyBuy(string.format(tNovPopularScience_Cont["EmoneyLog"]["Buy"],nCostEmoney,nCostEmoney))
		-- 设置掩码
		NovPopularScience_SetStcValue(nType,0)
		if nType == 1 then
			tNpcGossip[nNpcId]["OptionFunc133"] = "NovPopularScience_CompleteBegin</N>25174"
			NovPopularScience_CompleteBegin(nNpcId)
		else
			NovPopularScience_BeginAnswer(nNpcId,nType)
		end
		
	end
	
end

-- 次方函数
function NovPopularScience_Pow(nNum,nIndex)
	local nSum = 1
	for i = 1,nIndex do
		nSum = nSum * nNum
	end
	
	return nSum
end

-- 怪物掉落
function NovPopularScience_KillReward()
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["NovPopularScience"]["ActivityTime"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tNovPopularScience_Cont["nLevel"],tNovPopularScience_Cont["nMetempsychosis"]) then 
		return
	end
	
	-- 激情服或者绿色新服不上
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	if SpecialServer_ChkGreenServer() then
		return
	end
	
	NovPopularScience_ClearStcInterval(4)
	local nData = NovPopularScience_GetStcValue(4)
	local nLimit = tNovPopularScience_Stc[4]["Limit"]
	if nData >= nLimit then
		return
	end
	
	--1%的概率掉落
	if not Sys_Random(tNovPopularScience_Cont["Numerator"],tNovPopularScience_Cont["Denominator"]) then
		return
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tNovPopularScience_Reward[3326596][1])
	if not User_CheckLeftSpace(nSpace) then
		return
	end
	local nAdd = tNovPopularScience_Stc[4]["Add"]
	NovPopularScience_SetStcValue(4,nData+nAdd)
	RewardTemplate_UseItemAndMsg(tNovPopularScience_Reward[3326596][1])
	
end


--------------------------------------NPC模块--------------------------------------
-- 25174	Mr.Knowitall
tNpcFace[2116] = 247
tNpcGossip[25174] = tNpcGossip[25174] or DefaultNpc:new{}
tNpcGossip[25174]["OptionHidden"] = 1
tNpcGossip[25174]["DialogueText"] = tNovPopularScience_Text[25174]
-- 活动前
tNpcGossip[25174]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25174]["tOption1-1"] = {111}
tNpcGossip[25174]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["NovPopularScience"]["ActivityTime"])
end

--活动后
tNpcGossip[25174]["Text1-2"] = {111,121}
tNpcGossip[25174]["tOption1-2"] = {121}
tNpcGossip[25174]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["NovPopularScience"]["ActivityTime"])
end

-- 活动中
tNpcGossip[25174]["Text1-3"] = {111,131,132,133,134,135,136,137}
tNpcGossip[25174]["tOption1-3"] = {131,132,133}
tNpcGossip[25174]["ChkFunc1-3"] = function ()
	local nSum = NovPopularScience_RetrunSum()
	if User_JudgeLevelAndMetempsychosis(tNovPopularScience_Cont["nLevel"],tNovPopularScience_Cont["nMetempsychosis"]) then 
		tNpcGossip[25174]["tOption1-3"] = {132,133}
	else
		tNpcGossip[25174]["tOption1-3"] = {131}
	end
	
	tNpcGossip[25174]["Text134"] = string.format(tNovPopularScience_Text[25174]["Text134"],nSum)
	tNpcGossip[25174]["Text212"] = string.format(tNovPopularScience_Text[25174]["Text212"],nSum)
	
	-- 初始化掩码
	NovPopularScience_ClearStcInterval(1)
	NovPopularScience_ClearStcInterval(2)
	
	return true
end
tNpcGossip[25174]["OptionFunc132"] = "NovPopularScience_BeginAnswer</N>25174</N>2"
tNpcGossip[25174]["OptionFunc133"] = "NovPopularScience_Complete</N>25174"


--1题都未答对
tNpcGossip[25174]["Text1-4"] = {111,141,142}
tNpcGossip[25174]["tOption1-4"] = {141,142}
tNpcGossip[25174]["OptionPoint141"] = "1-5"

--接1-1、重新答题
tNpcGossip[25174]["Text1-5"] = {111,151}
tNpcGossip[25174]["tOption1-5"] = {151,152}
tNpcGossip[25174]["OptionFunc151"] = "NovPopularScience_Cost</N>25174</N>100</N>2"

-- 接2、补签答题
tNpcGossip[25174]["Text2-1"] = {111,211,212}
tNpcGossip[25174]["tOption2-1"] = {211,212}
tNpcGossip[25174]["OptionFunc211"] = "LinkNpcGossipFunc_New</N>25174</S>2-2"

--接2-1、补签
tNpcGossip[25174]["Text2-2"] = {111,221}
tNpcGossip[25174]["tOption2-2"] = {221,222}
tNpcGossip[25174]["OptionFunc221"] = "NovPopularScience_Cost</N>25174</N>100</N>1"

--题目
tNpcGossip[25174]["Text3-1"] = {111,311}
tNpcGossip[25174]["tOption3-1"] = {311,312,313,314}

-- 全勤奖
tItem[3326598] = tItem[3326598] or {}
tItem[3326598]["Function"] = function(nItemId,sItemName)
	
	RewardTemplate_UseItemAndMsg(tNovPopularScience_Reward[3326598][2])
end

-- 好运礼包
tItem[3326597] = tItem[3326597] or {}
tItem[3326597]["Function"] = function(nItemId,sItemName)
	
	local nData = NovPopularScience_GetStcValue(5)
	local nEvent = tNovPopularScience_Stc[5]["EventType"]
	local nType = tNovPopularScience_Stc[5]["DataType"]
	
	-- 判断是否间隔30分钟
	if Task_StcInterval(nEvent,nType,30,1,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	if nData == 1 then
		Sys_MsgBox(tNovPopularScience_Text["Time"])
	end
	
	--获取玩家赠点天石数量
	local nUserEMoneyMono = Get_UserMonoEMoney()
	local nEMoneyMono = tNovPopularScience_Reward[3326597][2]["RewardEMoneyMono"]["Value"]
	if nEMoneyMono+nUserEMoneyMono > G_User_MaxEmoneyMono then
		Sys_MsgBox(tRewardTemplate_Text["EMoneyMono"])
		return
	end
	
	local nSpaceNum = RewardTemplate_GetRandomSpace(tNovPopularScience_Reward,nItemId,nNowUserId)
	if not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(string.format(tNovPopularScience_Text["FullSpace"],nSpaceNum))
		return
	end
	
	if nData == 0 then
		NovPopularScience_SetStcValue(5,1)
		local tTable,sStr = RewardTemplate_RandomReward(tNovPopularScience_Reward,nItemId,nNowUserId)
		if sStr == tNovPopularScience_Text["Discount"] then
			-- 打log
			Sys_SaveEmoneyBuy(tNovPopularScience_Cont["EmoneyLog"]["Discount"])
		end
	end
	
end

-- 好运碎片
tItem[3326596] = tItem[3326596] or {}
tItem[3326596]["Function"] = function(nItemId,sItemName)
	
	local nUserId = Get_UserId()
	local nNum = Get_CountItemType(nItemId,0,nil,nil,nUserId)
	--碎片数量不足
	if nNum < 3 then
		Sys_MsgBox(tNovPopularScience_Text["NoSp"])
		return 
	end
	
	--背包空间不足
	local nRewardSpaceNum = RewardTemplate_GetRewardSpace(tNovPopularScience_Reward[3326596][3])
	local nDelSpaceNum = RewardTemplate_GetDelSpace(tNovPopularScience_Reward[3326596][3])
	local nSpaceNum = nRewardSpaceNum - nDelSpaceNum
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(tNovPopularScience_Text["NoSpace"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tNovPopularScience_Reward[3326596][3])
	User_TalkChannel2005(tNovPopularScience_Text["ItemUse"])
end

---------------------------------怪物部分---------------------------------------------
local tNovPopularScience_KillReward = {}
	tNovPopularScience_KillReward["ActivityTime"]=tActivityTime["NovPopularScience"]["ActivityTime"]
	tNovPopularScience_KillReward["Function"]=NovPopularScience_KillReward
	table.insert(tMonsterDrop_AreaLoad,tNovPopularScience_KillReward)
