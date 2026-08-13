------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]六月周卡月卡活动
--Purpose:	六月周月卡活动
--Creator: 	郑洵
--Created:	2019/05/20
------------------------------------------------------------------------------------

--命名前缀
--JuneWeekCards_

-- logid:12001422

--周卡3312741
--emoneylog: 35022169
--月卡3312740
--emoneylog: 35022170

----------------------------------表配置部分--------------------------------------------
local tJuneWeekCards_Stc = {}
	--超值月卡Stc
	tJuneWeekCards_Stc[3312740] = {}
	--	stc(197,12)		记录月卡3312740打开次数
	tJuneWeekCards_Stc[3312740][1] = {}
	tJuneWeekCards_Stc[3312740][1]["Event"] = 197
	tJuneWeekCards_Stc[3312740][1]["Data"] = 12
	--	stc(197,13)		记录月卡3312740购买次数
	tJuneWeekCards_Stc[3312740][2] = {}
	tJuneWeekCards_Stc[3312740][2]["Event"] = 197
	tJuneWeekCards_Stc[3312740][2]["Data"] = 13
	--超值周卡Stc
	tJuneWeekCards_Stc[3312741] = {}
	--	stc(197,14)		记录周卡3312741打开次数
	tJuneWeekCards_Stc[3312741][1] = {}
	tJuneWeekCards_Stc[3312741][1]["Event"] = 197
	tJuneWeekCards_Stc[3312741][1]["Data"] = 14
	--	stc(197,15)		记录周卡3312741购买次数
	tJuneWeekCards_Stc[3312741][2] = {}
	tJuneWeekCards_Stc[3312741][2]["Event"] = 197
	tJuneWeekCards_Stc[3312741][2]["Data"] = 15

local tJuneWeekCards_Data = {}
	tJuneWeekCards_Data[3312740] = {}
	tJuneWeekCards_Data[3312740]["MaxOpen"] = 30
	tJuneWeekCards_Data[3312740]["Random"] = 1
	tJuneWeekCards_Data[3312740]["MaxBuy"] = 2
	tJuneWeekCards_Data[3312740]["FirstOpen"] = 3
	tJuneWeekCards_Data[3312741] = {}
	tJuneWeekCards_Data[3312741]["MaxOpen"] = 7
	tJuneWeekCards_Data[3312741]["Random"] = 1
	tJuneWeekCards_Data[3312741]["MaxBuy"] = 2
	tJuneWeekCards_Data[3312741]["FirstOpen"] = 3
	
local tJuneWeekCards_Time = {}
	tJuneWeekCards_Time["ActivityTime"] = tActivityTime["JuneWeekCards"]["ActivityTime"]
	tJuneWeekCards_Time[3312741] = tActivityTime["JuneWeekCards"]["UseWeekTime"]
	tJuneWeekCards_Time[3312740] = tActivityTime["JuneWeekCards"]["UseMonthTime"]

local tJuneWeekCards_Map = {}
	tJuneWeekCards_Map["TwinCity"] = 1002

local tJuneWeekCards_EMoneyLog = {}
	tJuneWeekCards_EMoneyLog[3312741] = "350	22169	%d	%d	1	"
	tJuneWeekCards_EMoneyLog[3312740] = "350	22170	%d	%d	1	"

local tJuneWeekCards_EMoney = {}
	tJuneWeekCards_EMoney[3312741] = 199
	tJuneWeekCards_EMoney[3312740] = 999
	
local tJuneWeekCards_Reward = {}
	tJuneWeekCards_Reward[24051] = {}
	tJuneWeekCards_Reward[24051][3312741] = {}
	tJuneWeekCards_Reward[24051][3312741]["RewardItem"] = {}
	tJuneWeekCards_Reward[24051][3312741]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[24051][3312741]["RewardItem"][1]["Id"] = 3312741
	tJuneWeekCards_Reward[24051][3312741]["RewardItem"][1]["Attr"] = "0 1"
	tJuneWeekCards_Reward[24051][3312741]["RewardEffect"] = {}
	tJuneWeekCards_Reward[24051][3312741]["RewardEffect"]["SzObj"] = "self"
	tJuneWeekCards_Reward[24051][3312741]["RewardEffect"]["Effect"] = "zf2-e128"
	tJuneWeekCards_Reward[24051][3312741]["LogId"] =12001422
	tJuneWeekCards_Reward[24051][3312740] = {}
	tJuneWeekCards_Reward[24051][3312740]["RewardItem"] = {}
	tJuneWeekCards_Reward[24051][3312740]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[24051][3312740]["RewardItem"][1]["Id"] = 3312740
	tJuneWeekCards_Reward[24051][3312740]["RewardItem"][1]["Attr"] = "0 1"
	tJuneWeekCards_Reward[24051][3312740]["RewardEffect"] = {}
	tJuneWeekCards_Reward[24051][3312740]["RewardEffect"]["SzObj"] = "self"
	tJuneWeekCards_Reward[24051][3312740]["RewardEffect"]["Effect"] = "zf2-e128"
	tJuneWeekCards_Reward[24051][3312740]["LogId"] =12001422
	-- ===超值周卡
	-- ===索引: 3312741
	-- ===删除: 3312741,10
	-- ===EMoneyLog: 35022,169
	tJuneWeekCards_Reward[3312741] = {}
	-- ===超值周卡第一次开启
	-- ===索引: 1
	tJuneWeekCards_Reward[3312741][1] = {}
	tJuneWeekCards_Reward[3312741][1]["ItemChanceSum"] = 10000
	tJuneWeekCards_Reward[3312741][1]["LogId"] = 12001422
	-- 7-DayFrozenFantasy(Glaze)（B)-- 【必给】
	tJuneWeekCards_Reward[3312741][1][1] = {}
	tJuneWeekCards_Reward[3312741][1][1]["RandomItemChanceType"] = 1
	tJuneWeekCards_Reward[3312741][1][1]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312741][1][1]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312741][1][1]["RewardItem"][1]["Id"] = 193445 -- 【库】FrozenFantasy(Glaze)[属性:8]【表格】7-DayFrozenFantasy(Glaze)（B)
	tJuneWeekCards_Reward[3312741][1][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑FrozenFantasy(Glaze)(赠)*1
	-- +5Stone(B)Pack(1)-- 【必给】
	tJuneWeekCards_Reward[3312741][1][2] = {}
	tJuneWeekCards_Reward[3312741][1][2]["RandomItemChanceType"] = 1
	tJuneWeekCards_Reward[3312741][1][2]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312741][1][2]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312741][1][2]["RewardItem"][1]["Id"] = 3305802 -- 【库】+5Stone(B)Pack(1)[属性:9]【表格】+5Stone(B)Pack(1)
	tJuneWeekCards_Reward[3312741][1][2]["RewardItem"][1]["Attr"] = "0 1" -- +5Stone(B)Pack(1)*1
	-- P5Anima-- 【必给】
	tJuneWeekCards_Reward[3312741][1][3] = {}
	tJuneWeekCards_Reward[3312741][1][3]["RandomItemChanceType"] = 1
	tJuneWeekCards_Reward[3312741][1][3]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312741][1][3]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312741][1][3]["RewardItem"][1]["Id"] = 4200005 -- 【库】P5Anima[属性:72]【表格】P5Anima
	tJuneWeekCards_Reward[3312741][1][3]["RewardItem"][1]["Attr"] = "0 1" -- P5Anima*1
	tJuneWeekCards_Reward[3312741][1][3]["RewardItem"][1]["PreciousType"] = 307
	tJuneWeekCards_Reward[3312741][1][3]["LogFile"] = "Pearl"
	-- ===超值周卡第二次开启
	-- ===索引: 2
	tJuneWeekCards_Reward[3312741][2] = {}
	tJuneWeekCards_Reward[3312741][2]["ItemChanceSum"] = 10000
	tJuneWeekCards_Reward[3312741][2]["LogId"] = 12001422
	
	-- +3Stone(B)Pack  - 30.00%
	tJuneWeekCards_Reward[3312741][2][1] = {}
	tJuneWeekCards_Reward[3312741][2][1]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312741][2][1]["ItemChance"] = 3000
	tJuneWeekCards_Reward[3312741][2][1]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312741][2][1]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312741][2][1]["RewardItem"][1]["Id"] = 3301807 -- 【库】+3Stone(B)Pack[属性:9]【表格】+3Stone(B)Pack 
	tJuneWeekCards_Reward[3312741][2][1]["RewardItem"][1]["Attr"] = "0 1" -- +3Stone(B)Pack*1
	-- BrightStarStone - 20.00%
	tJuneWeekCards_Reward[3312741][2][2] = {}
	tJuneWeekCards_Reward[3312741][2][2]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312741][2][2]["ItemChance"] = 2000
	tJuneWeekCards_Reward[3312741][2][2]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312741][2][2]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312741][2][2]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9]【表格】BrightStarStone
	tJuneWeekCards_Reward[3312741][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	-- Dragonball(B)Pack  - 15.00%
	tJuneWeekCards_Reward[3312741][2][3] = {}
	tJuneWeekCards_Reward[3312741][2][3]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312741][2][3]["ItemChance"] = 1500
	tJuneWeekCards_Reward[3312741][2][3]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312741][2][3]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312741][2][3]["RewardItem"][1]["Id"] = 3301808 -- 【库】DragonBall(B)Pack[属性:9]【表格】Dragonball(B)Pack 
	tJuneWeekCards_Reward[3312741][2][3]["RewardItem"][1]["Attr"] = "0 1" -- DragonBall(B)Pack*1
	-- 150CP(B)Pack - 15.00%
	tJuneWeekCards_Reward[3312741][2][4] = {}
	tJuneWeekCards_Reward[3312741][2][4]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312741][2][4]["ItemChance"] = 1500
	tJuneWeekCards_Reward[3312741][2][4]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312741][2][4]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312741][2][4]["RewardItem"][1]["Id"] = 3300761 -- 【库】150CP(B)Pack[属性:9]【表格】150CP(B)Pack
	tJuneWeekCards_Reward[3312741][2][4]["RewardItem"][1]["Attr"] = "0 1" -- 150CP(B)Pack*1
	-- 500ChiPointsBag - 10.00%
	tJuneWeekCards_Reward[3312741][2][5] = {}
	tJuneWeekCards_Reward[3312741][2][5]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312741][2][5]["ItemChance"] = 1000
	tJuneWeekCards_Reward[3312741][2][5]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312741][2][5]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312741][2][5]["RewardItem"][1]["Id"] = 3309999 -- 【库】500ChiPointsBag[属性:9]【表格】500ChiPointsBag
	tJuneWeekCards_Reward[3312741][2][5]["RewardItem"][1]["Attr"] = "0 1" -- 500ChiPointsBag*1
	-- YellowRuneEssence(B)*5 - 10.00%
	tJuneWeekCards_Reward[3312741][2][6] = {}
	tJuneWeekCards_Reward[3312741][2][6]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312741][2][6]["ItemChance"] = 1000
	tJuneWeekCards_Reward[3312741][2][6]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312741][2][6]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312741][2][6]["RewardItem"][1]["Id"] = 3321212 -- 【库】 YellowRuneEssence(B)*5[属性:]【表格】YellowRuneEssence(B)*5
	tJuneWeekCards_Reward[3312741][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- YellowRuneEssence(B)*5(赠)*1


	-- ===超值月卡
	-- ===索引: 3312740
	-- ===删除: 3312740,10
	-- ===EMoneyLog: 35022,170
	tJuneWeekCards_Reward[3312740] = {}
	-- ===超值月卡第一次开启
	-- ===索引: 1
	tJuneWeekCards_Reward[3312740][1] = {}
	tJuneWeekCards_Reward[3312740][1]["ItemChanceSum"] = 10000
	tJuneWeekCards_Reward[3312740][1]["LogId"] = 12001422
	-- 30-DayBrightPurpleRomance(B)-- 【必给】
	tJuneWeekCards_Reward[3312740][1][1] = {}
	tJuneWeekCards_Reward[3312740][1][1]["RandomItemChanceType"] = 1
	tJuneWeekCards_Reward[3312740][1][1]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312740][1][1]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312740][1][1]["RewardItem"][1]["Id"] = 194875 -- 【库】BrightPurpleRomance[属性:8]【表格】30-DayBrightPurpleRomance(B)
	tJuneWeekCards_Reward[3312740][1][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑BrightPurpleRomance(赠)*1
	-- +6Stone(B)Pack -- 【必给】
	tJuneWeekCards_Reward[3312740][1][2] = {}
	tJuneWeekCards_Reward[3312740][1][2]["RandomItemChanceType"] = 1
	tJuneWeekCards_Reward[3312740][1][2]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312740][1][2]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312740][1][2]["RewardItem"][1]["Id"] = 3301812 -- 【库】+6Stone(B)Pack[属性:9]【表格】+6Stone(B)Pack 
	tJuneWeekCards_Reward[3312740][1][2]["RewardItem"][1]["Attr"] = "0 1" -- +6Stone(B)Pack*1
	-- P6Anima-- 【必给】
	tJuneWeekCards_Reward[3312740][1][3] = {}
	tJuneWeekCards_Reward[3312740][1][3]["RandomItemChanceType"] = 1
	tJuneWeekCards_Reward[3312740][1][3]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312740][1][3]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312740][1][3]["RewardItem"][1]["Id"] = 4200006 -- 【库】P6Anima[属性:72]【表格】P6Anima
	tJuneWeekCards_Reward[3312740][1][3]["RewardItem"][1]["Attr"] = "0 1" -- P6Anima*1
	tJuneWeekCards_Reward[3312740][1][3]["RewardItem"][1]["PreciousType"] = 307
	tJuneWeekCards_Reward[3312740][1][3]["LogFile"] = "Pearl"
	
	-- ===超值月卡第二次开启
	-- ===索引: 2
	tJuneWeekCards_Reward[3312740][2] = {}
	tJuneWeekCards_Reward[3312740][2]["ItemChanceSum"] = 10000
	tJuneWeekCards_Reward[3312740][2]["LogId"] = 12001422
	-- +3Stone(B)Pack  - 30.00%
	tJuneWeekCards_Reward[3312740][2][1] = {}
	tJuneWeekCards_Reward[3312740][2][1]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312740][2][1]["ItemChance"] = 3000
	tJuneWeekCards_Reward[3312740][2][1]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312740][2][1]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312740][2][1]["RewardItem"][1]["Id"] = 3301807 -- 【库】+3Stone(B)Pack[属性:9]【表格】+3Stone(B)Pack 
	tJuneWeekCards_Reward[3312740][2][1]["RewardItem"][1]["Attr"] = "0 1" -- +3Stone(B)Pack*1
	-- BrightStarStone - 20.00%
	tJuneWeekCards_Reward[3312740][2][2] = {}
	tJuneWeekCards_Reward[3312740][2][2]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312740][2][2]["ItemChance"] = 2000
	tJuneWeekCards_Reward[3312740][2][2]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312740][2][2]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312740][2][2]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9]【表格】BrightStarStone
	tJuneWeekCards_Reward[3312740][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	-- 200CPs(B)Pack - 15.00%
	tJuneWeekCards_Reward[3312740][2][3] = {}
	tJuneWeekCards_Reward[3312740][2][3]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312740][2][3]["ItemChance"] = 1500
	tJuneWeekCards_Reward[3312740][2][3]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312740][2][3]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312740][2][3]["RewardItem"][1]["Id"] = 3320676 -- 【库】200CPs(B)Pack[属性:9]【表格】200CPs(B)Pack
	tJuneWeekCards_Reward[3312740][2][3]["RewardItem"][1]["Attr"] = "0 1" -- 200CPs(B)Pack*1
	-- 1000ChiPointsBag - 23.00%
	tJuneWeekCards_Reward[3312740][2][4] = {}
	tJuneWeekCards_Reward[3312740][2][4]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312740][2][4]["ItemChance"] = 2300
	tJuneWeekCards_Reward[3312740][2][4]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312740][2][4]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312740][2][4]["RewardItem"][1]["Id"] = 3309995 -- 【库】1000ChiPointsBag[属性:9]【表格】1000ChiPointsBag
	tJuneWeekCards_Reward[3312740][2][4]["RewardItem"][1]["Attr"] = "0 1" -- 1000ChiPointsBag*1
	-- UniversalRuneEssence(B)x20Pack  - 10.00%
	tJuneWeekCards_Reward[3312740][2][5] = {}
	tJuneWeekCards_Reward[3312740][2][5]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312740][2][5]["ItemChance"] = 1000
	tJuneWeekCards_Reward[3312740][2][5]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312740][2][5]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312740][2][5]["RewardItem"][1]["Id"] = 3309979 -- 【库】UniversalRuneEssence(B)x20Pack[属性:9]【表格】UniversalRuneEssence(B)x20Pack 
	tJuneWeekCards_Reward[3312740][2][5]["RewardItem"][1]["Attr"] = "0 1" -- UniversalRuneEssence(B)x20Pack*1
	-- StarDrill - 1.00%
	tJuneWeekCards_Reward[3312740][2][6] = {}
	tJuneWeekCards_Reward[3312740][2][6]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312740][2][6]["ItemChance"] = 100
	tJuneWeekCards_Reward[3312740][2][6]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312740][2][6]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312740][2][6]["RewardItem"][1]["Id"] = 1200006 -- 【库】StarDrill[属性:0]【表格】StarDrill
	tJuneWeekCards_Reward[3312740][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- StarDrill(赠)*1
	-- BigPermanentStone(B)Bag  - 1.00%
	tJuneWeekCards_Reward[3312740][2][7] = {}
	tJuneWeekCards_Reward[3312740][2][7]["RandomItemChanceType"] = 2
	tJuneWeekCards_Reward[3312740][2][7]["ItemChance"] = 100
	tJuneWeekCards_Reward[3312740][2][7]["RewardItem"] = {}
	tJuneWeekCards_Reward[3312740][2][7]["RewardItem"][1] = {}
	tJuneWeekCards_Reward[3312740][2][7]["RewardItem"][1]["Id"] = 3319175 -- 【库】BigPermanentStone(B)Bag [属性:9]【表格】BigPermanentStone(B)Bag 
	tJuneWeekCards_Reward[3312740][2][7]["RewardItem"][1]["Attr"] = "0 1" -- BigPermanentStone(B)Bag *1

local tJuneWeekCards_Log= {}
	tJuneWeekCards_Log["DelItem"] = "0,0,%d,%d,12001422,2,0,0"

--------------------------------------------逻辑部分配置--------------------------------------------
--导购莫妮卡对白
function JuneWeekCards_Chk()
	--活动时间判断
	if not Sys_ChkFullTime(tJuneWeekCards_Time["ActivityTime"]) then
		return false
	end
	return true
end 

--购买
function JuneWeekCards_UseEMoney(nNpcId,nItemId)
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	local sItemName = tJuneWeekCards_Text[nItemId]["Name"]
	local nEvent = tJuneWeekCards_Stc[nItemId][2]["Event"]
	local nType = tJuneWeekCards_Stc[nItemId][2]["Data"]
	local nMaxBuy = tJuneWeekCards_Data[nItemId]["MaxBuy"]
	local nBuy = Get_UserStatisticValue(nEvent, nType, nUserId) + 1
	
	--判断购买次数
	if nBuy > nMaxBuy then 
		tNpcGossip[nNpcId]["Text331"] = string.format(tJuneWeekCards_Text[nNpcId]["Text331"],sItemName)
		LinkNpcGossipFunc_New(nNpcId, "3-3")
		return
	end
	
	--获取价格
	local nNeedEMoney = tJuneWeekCards_EMoney[nItemId]
	--判断天石足够
	if Get_UserEMoney(nUserId) < nNeedEMoney then
		tNpcGossip[nNpcId]["Text321"] = string.format(tJuneWeekCards_Text[nNpcId]["Text321"], sItemName, nNeedEMoney)
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end
	
	-- 判断背包
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tJuneWeekCards_Text["NoSpace"])
		Sys_MsgBox(tJuneWeekCards_Text["NoSpace"])
		return
	end
	
	--扣除天石
	if User_AddEMoney((-1) * nNeedEMoney, nUserId) then
		--打掩码
		Task_AddStatistic(nEvent, nType, 1, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nType, 0, nUserId)
		
		--领奖打log
		RewardTemplate_UseItemAndMsg(tJuneWeekCards_Reward[nNpcId][nItemId])
		Sys_SaveEmoneyBuy(string.format(	tJuneWeekCards_EMoneyLog[nItemId], nNeedEMoney, nNeedEMoney))
		--链接至确认对白
		tNpcGossip[nNpcId]["Text311"] = string.format(tJuneWeekCards_Text[nNpcId]["Text311"], nNeedEMoney, sItemName)
		tNpcGossip[nNpcId]["Text312"] = string.format(tJuneWeekCards_Text[nNpcId]["Text312"], sItemName)
		LinkNpcGossipFunc_New(nNpcId, "3-1")
	end
end 

--对白生成
function JuneWeekCards_DialogText(nItemId,sItemName)
	--判断物品存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	--过期删除
	if not Sys_ChkFullTime(tJuneWeekCards_Time[nItemId]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionRewardLog(string.format(tJuneWeekCards_Log["DelItem"],nItemId,nNum))
			User_TalkChannel2005(string.format(tJuneWeekCards_Text["ItemOverTime"], sItemName))
			Sys_MsgBox(string.format(tJuneWeekCards_Text["ItemOverTime"], sItemName))
		end
		return
	end
	
	local nUserId = Get_UserId()
	local nEvent = tJuneWeekCards_Stc[nItemId][1]["Event"]
	local nData = tJuneWeekCards_Stc[nItemId][1]["Data"]
	local nOpen = Get_UserStatisticValue(nEvent, nData, nUserId) + 1
	local nMaxOpen = tJuneWeekCards_Data[nItemId]["MaxOpen"]
	
	local sText = string.format(tJuneWeekCards_Text[nItemId]["Text113"], nOpen)
	tItem[nItemId]["Text113"] = sText
	if nOpen >= nMaxOpen then 
		tItem[nItemId]["Text1-1"] = {111,112,113,115,116,117}
	elseif nOpen >= 2 then 
		tItem[nItemId]["Text1-1"] = {111,112,113,115,117}
	else 
		tItem[nItemId]["Text1-1"] = {111,112,113,114,117}
	end
	tItem[nItemId]["tOption1-1"] = {111,112}
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--使用物品
function JuneWeekCards_ItemUse(nNpcId,nItemId)
	--判断物品存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	--过期删除
	if not Sys_ChkFullTime(tJuneWeekCards_Time[nItemId]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionRewardLog(string.format(tJuneWeekCards_Log["DelItem"],nItemId,nNum))
			User_TalkChannel2005(string.format(tJuneWeekCards_Text["ItemOverTime"], sItemName))
			Sys_MsgBox(string.format(tJuneWeekCards_Text["ItemOverTime"], sItemName))
		end
		return
	end
	
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	local nEvent = tJuneWeekCards_Stc[nItemId][1]["Event"]
	local nType = tJuneWeekCards_Stc[nItemId][1]["Data"]
	local nMaxOpen = tJuneWeekCards_Data[nItemId]["MaxOpen"]
	local nOpen = Get_UserStatisticValue(nEvent, nType, nUserId) + 1
	
	--判断隔天
	if not Task_StcInterval(nEvent, nType, 1, 4, nUserId) then
		User_TalkChannel2005(string.format(tJuneWeekCards_Text["Already"], sItemName))
		Sys_MsgBox(string.format(tJuneWeekCards_Text["Already"], sItemName))
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRandomSpace(tJuneWeekCards_Reward[nItemId],2)
	if nOpen == 1 then 
		nSpace = tJuneWeekCards_Data[nItemId]["FirstOpen"]
	end
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tJuneWeekCards_Text["NoSpace"])
		Sys_MsgBox(tJuneWeekCards_Text["NoSpace"])
		return
	end
	
	Task_AddStatistic(nEvent, nType, 1, 1, nUserId)
	Task_SetStcTimestamp(nEvent, nType, 0, nUserId)
	
	if nOpen >= nMaxOpen then 
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			RewardTemplate_NewRandom(tJuneWeekCards_Reward[nItemId], 2)
			Sys_SaveActionRewardLog(string.format(tJuneWeekCards_Log["DelItem"],nItemId,1))
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent, nType, 0, nUserId)
			local sText = string.format(tJuneWeekCards_Text["EndItem"], sItemName, sItemName)
			User_TalkChannel2005(sText)
			Sys_MsgBox(sText)
		end
		return
	end
	
	if nOpen >= 2 then 
		RewardTemplate_NewRandom(tJuneWeekCards_Reward[nItemId], 2)
	else 
		RewardTemplate_UseItemAndMsg(tJuneWeekCards_Reward[nItemId][1][1])
		RewardTemplate_UseItemAndMsg(tJuneWeekCards_Reward[nItemId][1][2])
		RewardTemplate_UseItemAndMsg(tJuneWeekCards_Reward[nItemId][1][3])
	end
end


---------------------------------------------NPC模块---------------------------------------------
--导购莫妮卡
tNpcFace[3793] = 158
tNpcGossip[24051] = tNpcGossip[24051] or DefaultNpc:new{}
tNpcGossip[24051]["DialogueText"] = tJuneWeekCards_Text[24051]
tNpcGossip[24051]["OptionHidden"] = 1

--活动时间前
tNpcGossip[24051]["Text1-1"] = {111,112,113}
tNpcGossip[24051]["tOption1-1"] = {111}
tNpcGossip[24051]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tJuneWeekCards_Time["ActivityTime"])
end

--活动时间后
tNpcGossip[24051]["Text1-2"] = {121}
tNpcGossip[24051]["tOption1-2"] = {121}
tNpcGossip[24051]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tJuneWeekCards_Time["ActivityTime"])
end

--活动时间内
tNpcGossip[24051]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[24051]["tOption1-3"] = {131,132,133}
tNpcGossip[24051]["ChkFunc1-3"] = function()
	return JuneWeekCards_Chk()
end
tNpcGossip[24051]["OptionPoint131"] = "2-1"--购买超值月卡
tNpcGossip[24051]["OptionPoint132"] = "2-2"--购买超值周卡

--购买超值月卡
tNpcGossip[24051]["Text2-1"] = {211,212,213}
tNpcGossip[24051]["tOption2-1"] = {211,212}
tNpcGossip[24051]["OptionFunc211"] = "JuneWeekCards_UseEMoney</N>24051</N>3312740"

--购买超值周卡
tNpcGossip[24051]["Text2-2"] = {221,222,223}
tNpcGossip[24051]["tOption2-2"] = {221,222}
tNpcGossip[24051]["OptionFunc221"] = "JuneWeekCards_UseEMoney</N>24051</N>3312741"

-- 成功、购得物品
tNpcGossip[24051]["Text3-1"] = {311,312}
tNpcGossip[24051]["tOption3-1"] = {311}

-- 失败、天石不足
tNpcGossip[24051]["Text3-2"] = {321,322}
tNpcGossip[24051]["tOption3-2"] = {321}

-- 失败，购买超出次数
tNpcGossip[24051]["Text3-3"] = {331}
tNpcGossip[24051]["tOption3-3"] = {331}

---------------------------------------------物品模块---------------------------------------------
--3312740 超值月卡
tItemFace[3312740] = 623
tItem[3312740] = tItem[3312740] or {}
tItem[3312740]["Function"]=function(nItemId,sItemName)
    JuneWeekCards_DialogText(nItemId,sItemName)
end
tItem[3312740]["DialogueText"] = tJuneWeekCards_Text[3312740]
tItem[3312740]["Text1-1"] = {111,112,113,114,115,116,117}
tItem[3312740]["tOption1-1"] = {111,112}
tItem[3312740]["OptionFunc111"] = "JuneWeekCards_ItemUse</N>24051</N>3312740"
-- tItem[3312740]["ChkFunc1-1"] = function()
	-- --对白生成
	-- return JuneWeekCards_DialogText(3312740)
-- end

--3312741 超值周卡
tItemFace[3312741] = 1173
tItem[3312741] = tItem[3312741] or {}
tItem[3312741]["Function"]=function(nItemId,sItemName)
    JuneWeekCards_DialogText(nItemId,sItemName)
end
tItem[3312741]["DialogueText"] = tJuneWeekCards_Text[3312741]
tItem[3312741]["Text1-1"] = {111,112,113,114,115,116,117}
tItem[3312741]["tOption1-1"] = {111,112}
tItem[3312741]["OptionFunc111"] = "JuneWeekCards_ItemUse</N>24051</N>3312741"
-- tItem[3312741]["ChkFunc1-1"] = function()
	-- --对白生成
	-- return JuneWeekCards_DialogText(3312741)
-- end
