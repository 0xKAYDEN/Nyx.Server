------------------------------------------------------------------------------------
--Name:			170511[英文征服][活动脚本]2017新父亲节小活动(6.15-6.21)
--Purpose:		父亲节小活动
--Creator:		洪易恒
--Created:		2017/05/11
------------------------------------------------------------------------------------

--[[
命名前缀 FathersDaySmallActivity_
Logid  12000714

######掩码说明
160 11      每天打怪1%的概率获得妖血之晶   50个

全局数据


]]--

-------------------------------数据存储表------------------------
local tFathersDaySmallActivity_Count = {}
	tFathersDaySmallActivity_Count["ActivityTime"] = tActivityTime["FathersDaySmallActivity"]["ActivityTime"]
	tFathersDaySmallActivity_Count["ItemUseTime"] = tActivityTime["FathersDaySmallActivity"]["ItemUseTime"]
	tFathersDaySmallActivity_Count["Metempsychosis"] = 0
	tFathersDaySmallActivity_Count["Level"] = 80
	tFathersDaySmallActivity_Count["Space"] = 1
	tFathersDaySmallActivity_Count["NpcId"] = 20538
	
	tFathersDaySmallActivity_Count["MostMonoEMoney"] = 88
	
	tFathersDaySmallActivity_Count["ChangeItemId"] = 3301454
	tFathersDaySmallActivity_Count["ChangeAttr"] = "0 %d"
	
local tFathersDaySmallActivity_Log = {}
	tFathersDaySmallActivity_Log["ChangeLog"] = "0,0,3303216,%d,12000714,3,3301454,%d"
	tFathersDaySmallActivity_Log["EmoneyLog"] = "0,0,3303217,1,12000714,3,3,%d"
	tFathersDaySmallActivity_Log["GetBlood"] = "0,0,0,0,12000714,1,3303216,1"
	-- 过期删除log
	tFathersDaySmallActivity_Log["OverLog"] = "0,0,%d,1,12000714,2,0,0"
	
local tFathersDaySmallActivity_Effect = {}
	tFathersDaySmallActivity_Effect["Object"] = "self"
	tFathersDaySmallActivity_Effect["GetBlood"] = "eidolon"
	tFathersDaySmallActivity_Effect["OpenBag"] = "angelwing"
	
local tFathersDaySmallActivity_Stc = {}
	tFathersDaySmallActivity_Stc["MonsterDrop"] = {}
	tFathersDaySmallActivity_Stc["MonsterDrop"]["EventType"] = 160
	tFathersDaySmallActivity_Stc["MonsterDrop"]["DataType"] = 11
	tFathersDaySmallActivity_Stc["MonsterDrop"]["nSign"] = 100
	tFathersDaySmallActivity_Stc["MonsterDrop"]["nMark"] = 200
	

local tFathersDaySmallActivity_Award = {}
	--父亲节财富礼包
	tFathersDaySmallActivity_Award[3303217] = {}
	tFathersDaySmallActivity_Award[3303217]["Reward"] = {}
	tFathersDaySmallActivity_Award[3303217]["Reward"][1] = {}
	tFathersDaySmallActivity_Award[3303217]["Reward"][1]["ItemChanceSum"] = 10000
	
	--5%获得1到10的赠点
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][1] = {}
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][1]["RandomItemChanceType"] = 2
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][1]["ItemChance"] = 500
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][1]["Item_1"] = 1
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][1]["Start"] = 1
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][1]["End"] = 10
	--25%获得11到20的赠点
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][2] = {}
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][2]["RandomItemChanceType"] = 2
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][2]["ItemChance"] = 2500
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][2]["Item_1"] = 2
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][2]["Start"] = 11
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][2]["End"] = 20
	--35%获得21到30的赠点
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][3] = {}
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][3]["RandomItemChanceType"] = 2
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][3]["ItemChance"] = 3500
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][3]["Item_1"] = 3
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][3]["Start"] = 21
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][3]["End"] = 30
	--18%获得31到40的赠点
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][4] = {}
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][4]["RandomItemChanceType"] = 2
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][4]["ItemChance"] = 1800
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][4]["Item_1"] = 4
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][4]["Start"] = 31
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][4]["End"] = 40
	--12%获得41到50的赠点
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][5] = {}
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][5]["RandomItemChanceType"] = 2
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][5]["ItemChance"] = 1200
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][5]["Item_1"] = 5
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][5]["Start"] = 41
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][5]["End"] = 50
	--4%获得51到60的赠点
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][6] = {}
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][6]["RandomItemChanceType"] = 2
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][6]["ItemChance"] = 400
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][6]["Item_1"] = 6
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][6]["Start"] = 51
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][6]["End"] = 60
	--1%获得61到88的赠点
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][7] = {}
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][7]["RandomItemChanceType"] = 2
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][7]["ItemChance"] = 100
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][7]["Item_1"] = 7
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][7]["Start"] = 61
	tFathersDaySmallActivity_Award[3303217]["Reward"][1][7]["End"] = 88

	--30天精英白领时装包
	tFathersDaySmallActivity_Award[3303218] = {}
	tFathersDaySmallActivity_Award[3303218]["RewardItem"] = {}
	tFathersDaySmallActivity_Award[3303218]["RewardItem"][1] = {}
	tFathersDaySmallActivity_Award[3303218]["RewardItem"][1]["Id"] = 184365
	tFathersDaySmallActivity_Award[3303218]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tFathersDaySmallActivity_Award[3303218]["DeleteItem"] = {}
	tFathersDaySmallActivity_Award[3303218]["DeleteItem"][1] = {}
	tFathersDaySmallActivity_Award[3303218]["DeleteItem"][1]["Id"] = 3303218
	tFathersDaySmallActivity_Award[3303218]["DeleteItem"][1]["Attr"] = "0 1"
	tFathersDaySmallActivity_Award[3303218]["LogId"] = 12000714
	
	--90天精英白领时装包
	tFathersDaySmallActivity_Award[3303219] = {}
	tFathersDaySmallActivity_Award[3303219]["RewardItem"] = {}
	tFathersDaySmallActivity_Award[3303219]["RewardItem"][1] = {}
	tFathersDaySmallActivity_Award[3303219]["RewardItem"][1]["Id"] = 184365
	tFathersDaySmallActivity_Award[3303219]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tFathersDaySmallActivity_Award[3303219]["DeleteItem"] = {}
	tFathersDaySmallActivity_Award[3303219]["DeleteItem"][1] = {}
	tFathersDaySmallActivity_Award[3303219]["DeleteItem"][1]["Id"] = 3303219
	tFathersDaySmallActivity_Award[3303219]["DeleteItem"][1]["Attr"] = "0 1"
	tFathersDaySmallActivity_Award[3303219]["LogId"] = 12000714
	
	--无敌神拳武器外套包
	tFathersDaySmallActivity_Award[3303220] = {}
	tFathersDaySmallActivity_Award[3303220]["RewardItem"] = {}
	tFathersDaySmallActivity_Award[3303220]["RewardItem"][1] = {}
	tFathersDaySmallActivity_Award[3303220]["RewardItem"][1]["Id"] = 360007
	tFathersDaySmallActivity_Award[3303220]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tFathersDaySmallActivity_Award[3303220]["DeleteItem"] = {}
	tFathersDaySmallActivity_Award[3303220]["DeleteItem"][1] = {}
	tFathersDaySmallActivity_Award[3303220]["DeleteItem"][1]["Id"] = 3303220
	tFathersDaySmallActivity_Award[3303220]["DeleteItem"][1]["Attr"] = "0 1"
	tFathersDaySmallActivity_Award[3303220]["LogId"] = 12000714
	
	--铁血大旗武器外套包
	tFathersDaySmallActivity_Award[3303221] = {}
	tFathersDaySmallActivity_Award[3303221]["RewardItem"] = {}
	tFathersDaySmallActivity_Award[3303221]["RewardItem"][1] = {}
	tFathersDaySmallActivity_Award[3303221]["RewardItem"][1]["Id"] = 350003
	tFathersDaySmallActivity_Award[3303221]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tFathersDaySmallActivity_Award[3303221]["DeleteItem"] = {}
	tFathersDaySmallActivity_Award[3303221]["DeleteItem"][1] = {}
	tFathersDaySmallActivity_Award[3303221]["DeleteItem"][1]["Id"] = 3303221
	tFathersDaySmallActivity_Award[3303221]["DeleteItem"][1]["Attr"] = "0 1"
	tFathersDaySmallActivity_Award[3303221]["LogId"] = 12000714
	
	--杀怪3%获得妖血之晶
	tFathersDaySmallActivity_Award["Monster"] = {}
	tFathersDaySmallActivity_Award["Monster"][1] = {}
	tFathersDaySmallActivity_Award["Monster"][1]["ItemChanceSum"] = 10000
	
	tFathersDaySmallActivity_Award["Monster"][1][1] = {}
	tFathersDaySmallActivity_Award["Monster"][1][1]["RandomItemChanceType"] = 2
	tFathersDaySmallActivity_Award["Monster"][1][1]["ItemChance"] = 300
	tFathersDaySmallActivity_Award["Monster"][1][1]["Item"] = {3303216}
	
	tFathersDaySmallActivity_Award["Monster"][1][2] = {}
	tFathersDaySmallActivity_Award["Monster"][1][2]["RandomItemChanceType"] = 2
	tFathersDaySmallActivity_Award["Monster"][1][2]["ItemChance"] = 9700
	tFathersDaySmallActivity_Award["Monster"][1][2]["Item"] = {0}
	
	
	--铁血大旗武器外套包
	tFathersDaySmallActivity_Award[3308016] = {}
	tFathersDaySmallActivity_Award[3308016]["RewardItem"] = {}
	tFathersDaySmallActivity_Award[3308016]["RewardItem"][1] = {}
	tFathersDaySmallActivity_Award[3308016]["RewardItem"][1]["Id"] = 193725
	tFathersDaySmallActivity_Award[3308016]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tFathersDaySmallActivity_Award[3308016]["DeleteItem"] = {}
	tFathersDaySmallActivity_Award[3308016]["DeleteItem"][1] = {}
	tFathersDaySmallActivity_Award[3308016]["DeleteItem"][1]["Id"] = 3308016
	tFathersDaySmallActivity_Award[3308016]["DeleteItem"][1]["Attr"] = "0 1"
	tFathersDaySmallActivity_Award[3308016]["LogId"] = 12000714
	
-------------------------------函数部分------------------------
--打开兑换商店面板函数
function FathersDaySmallActivity_ExchangeShop(nNpcId)
	if Sys_ChkFullTime(tFathersDaySmallActivity_Count["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tFathersDaySmallActivity_Count["Level"],tFathersDaySmallActivity_Count["Metempsychosis"]) then
		User_OpenExchangeShop(nNpcId)
	else
		return
	end
end

--使用妖血之晶
function FathersDaySmallActivity_UseBlood(nItemId)
	if Sys_ChkFullTime(tFathersDaySmallActivity_Count["ActivityTime"]) then
		local nNpcId = tFathersDaySmallActivity_Count["NpcId"]
		NpcPosition_PathFind(nNpcId)
		return
	end
	
	--活动期间外自动兑换成年运通宝 3301454
	local nNum = Get_CountItemType(nItemId,0)
	if nNum == 0 then
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
		local sAttr = string.format(tFathersDaySmallActivity_Count["ChangeAttr"],nNum)
		local sLog = string.format(tFathersDaySmallActivity_Log["ChangeLog"],nNum,nNum)
		Item_AddNewItem(tFathersDaySmallActivity_Count["ChangeItemId"],sAttr)
		Sys_SaveActionFestivalLog(sLog)
		Sys_MsgBox(tFathersDaySmallActivity_Text["System"]["OutTimeBlood"])
	end
end

--父亲节财富礼包使用函数
function FathersDaySmallActivity_UseTreasureBag(nItemId)
	--时间判断
	if not Sys_ChkFullTime(tFathersDaySmallActivity_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_MsgBox(tFathersDaySmallActivity_Text["System"]["OutTimeGiftBag"])
			return
		end
	end
	--赠点上限判断
	if Get_UserMonoEMoney() + tFathersDaySmallActivity_Count["MostMonoEMoney"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tFathersDaySmallActivity_Text["System"]["MostMonoEMoney"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local flat,tNum = Probabil_RandomAward(tFathersDaySmallActivity_Award[nItemId]["Reward"],1)
		local nStart = tNum[1]["tAward"][1]["Start"]
		local nEnd = tNum[1]["tAward"][1]["End"]
		local nCp = math.random(nStart,nEnd)
		local sText = string.format(tFathersDaySmallActivity_Text["System"]["GetMonoEMoney"],nCp)
		local sLog = string.format(tFathersDaySmallActivity_Log["EmoneyLog"],nCp)
		User_AddEMoneyMono(nCp)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(sText)
		User_EffectAdd(tFathersDaySmallActivity_Effect["Object"],tFathersDaySmallActivity_Effect["OpenBag"])
	end
end

--使用礼包函数
function FathersDaySmallActivity_UseGiftBag(nItemId)
	local sTime = tFathersDaySmallActivity_Count["ActivityTime"]
	if nItemId == 3308016 then
		sTime = tFathersDaySmallActivity_Count["ItemUseTime"]
	end
	if not Sys_ChkFullTime(sTime) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_MsgBox(tFathersDaySmallActivity_Text["System"]["OutTimeGiftBag"])
			local sLog = tFathersDaySmallActivity_Log["OverLog"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
			return
		end
	end
	
	RewardTemplate_UseItemAndMsg(tFathersDaySmallActivity_Award[nItemId])
	User_EffectAdd(tFathersDaySmallActivity_Effect["Object"],tFathersDaySmallActivity_Effect["OpenBag"])
end

--杀怪1%获得妖血之晶函数
function FathersDaySmallActivity_MonsterDrop()
	if not Sys_ChkFullTime(tFathersDaySmallActivity_Count["ActivityTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tFathersDaySmallActivity_Count["Level"],tFathersDaySmallActivity_Count["Metempsychosis"]) then
		return
	end
	
	local nEvent = tFathersDaySmallActivity_Stc["MonsterDrop"]["EventType"]
	local nType = tFathersDaySmallActivity_Stc["MonsterDrop"]["DataType"]
	local nSign = tFathersDaySmallActivity_Stc["MonsterDrop"]["nSign"]
	local nMark = tFathersDaySmallActivity_Stc["MonsterDrop"]["nMark"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	if Task_ChkStcValue(nEvent,nType,">=",nMark) then
		return
	end
	--弹窗一次提示打怪获得奖励已达到上限
	if Task_ChkStcValue(nEvent,nType,">=",nSign) then
		Sys_MsgBox(tFathersDaySmallActivity_Text["System"]["MostBlood"])
		Task_SetStatistic(nEvent,nType,nMark,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		return
	end
	if not User_CheckLeftSpace(tFathersDaySmallActivity_Count["Space"]) then
		return
	end
	
	local flat,tNum = Probabil_RandomAward(tFathersDaySmallActivity_Award["Monster"],1)
	local sLog = tFathersDaySmallActivity_Log["GetBlood"]
	
	local nItemId = tNum[1]["tAward"][1]["Item"][1]
	if nItemId == 0 then
		return
	end
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	Item_AddNewItem(nItemId,"")
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(tFathersDaySmallActivity_Text["System"]["GetBlood"])
	User_EffectAdd(tFathersDaySmallActivity_Effect["Object"],tFathersDaySmallActivity_Effect["OpenBag"])
end

--年运通宝
function FathersDaySmallActivity_UseMoney(nItemId)
	if not Sys_ChkFullTime(tFathersDaySmallActivity_Count["ActivityTime"]) then
		return Sys_MsgBox(tSpringActivity_Text["Money"])
	else 
		return NpcPosition_PathFind(20538)
	end
end
-------------------------------模板部分------------------------
--红孩儿
tNpcFace[4774] = 68
tNpcGossip[20538] = tNpcGossip[20538] or DefaultNpc:new{}
tNpcGossip[20538]["OptionHidden"] = 1
tNpcGossip[20538]["DialogueText"] = tFathersDaySmallActivity_Text[20538]

--活动前
	tNpcGossip[20538]["Text1-1"] = {111,112,113,114,115,116}
	tNpcGossip[20538]["tOption1-1"] = {1}
	tNpcGossip[20538]["ChkFunc1-1"] = function()
		return CommonFunc_GetBeforeActivityTime(tFathersDaySmallActivity_Count["ActivityTime"])
	end

--活动后
	tNpcGossip[20538]["Text1-2"] = {121,122,123}
	tNpcGossip[20538]["tOption1-2"] = {2}
	tNpcGossip[20538]["ChkFunc1-2"] = function()
		return CommonFunc_GetAfterActivityTime(tFathersDaySmallActivity_Count["ActivityTime"])
	end

--活动期间等级不足
tNpcGossip[20538]["Text1-3"] = {131,132,133,134,135,136,137}
	tNpcGossip[20538]["tOption1-3"] = {3}
	tNpcGossip[20538]["ChkFunc1-3"] = function()
		return Sys_ChkFullTime(tFathersDaySmallActivity_Count["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tFathersDaySmallActivity_Count["Level"],tFathersDaySmallActivity_Count["Metempsychosis"])
	end
	
--活动期间等级满足
tNpcGossip[20538]["Text1-4"] = {141,142,143,144,145,146}
	tNpcGossip[20538]["tOption1-4"] = {4,5,6}
	tNpcGossip[20538]["ChkFunc1-4"] = function()
		return Sys_ChkFullTime(tFathersDaySmallActivity_Count["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tFathersDaySmallActivity_Count["Level"],tFathersDaySmallActivity_Count["Metempsychosis"])
	end
	tNpcGossip[20538]["OptionFunc4"] = "FathersDaySmallActivity_ExchangeShop</N>20538"
	tNpcGossip[20538]["OptionPoint5"] = "1-5"
	
--接帮助内容
tNpcGossip[20538]["Text1-5"] = {151,152,153,154,155,156}
	tNpcGossip[20538]["tOption1-5"] = {7}
	tNpcGossip[20538]["OptionPoint7"] = "1-4"

--物品模板

--妖血之晶
tItem[3303216] = tItem[3303216] or {}
	tItem[3303216]["Function"] = function(nItemId,sItemName)
		FathersDaySmallActivity_UseBlood(nItemId)
	end
	
--父亲节财富礼包
tItem[3303217] = tItem[3303217] or {}
	tItem[3303217]["Function"] = function(nItemId,sItemName)
		FathersDaySmallActivity_UseTreasureBag(nItemId)
	end
	
--30天精英白领时装包
tItem[3303218] = tItem[3303218] or {}
	tItem[3303218]["Function"] = function(nItemId,sItemName)
		FathersDaySmallActivity_UseGiftBag(nItemId)
	end
	
--90天精英白领时装包
tItem[3303219] = tItem[3303218]
	
--无敌神拳武器外套包
tItem[3303220] = tItem[3303218]
	
--铁血大旗武器外套包
tItem[3303221] = tItem[3303218]

-- 3308016,'临江仙外套包（30天）'
tItem[3308016] = tItem[3308016] or {}
tItem[3308016]["Function"] = function(nItemId,sItemName)
	FathersDaySmallActivity_UseGiftBag(nItemId)
end

-- 3973	水魔兽
-- 3974	300星水魔兽
-- 3975	350星水魔兽
-- 4709	380星水魔兽
-- 4710		水魇兽
-- 4711		300星水魇兽
-- 4712		350星水魇兽
-- 4713		380星水魇兽
-- 4720	天魇神将		特殊强力怪 爆率比常规怪物高，但一样还是有幸运值限制
-- 3976	晶魄血妖
-- 3977	禁天邪兽
-- 3978	啸海狂魔
-- 3970	妖后瑶姬
-- 3971		邪龙护法
-- 3979	盗宝小妖【流星】
-- 3980	盗宝小妖【经验】
-- 3981		盗宝小妖【龙珠】
-- 3982	盗宝小妖【气力】
-- 3983	盗宝小妖【赤炼】
-- 3984	盗宝小妖【神魂】
-- 3985	盗宝小妖【银两】
-- 3986	盗宝小妖【装备】
-- 3992	盗宝小妖【神器】
-- local tFathersDaySmallActivity_MonsterDrop = {}
	-- -- 潜龙渊的掉落
	-- tFathersDaySmallActivity_MonsterDrop[1] = {}
	-- tFathersDaySmallActivity_MonsterDrop[1]["ActivityTime"] = tFathersDaySmallActivity_Count["ActivityTime"]
	-- tFathersDaySmallActivity_MonsterDrop[1]["Function"] = FathersDaySmallActivity_MonsterDrop
	-- tFathersDaySmallActivity_MonsterDrop[1]["MonsterId"] = {3973,3974,3975,4709,4710,4711,4712,4713,4720,3976,3977,3978,3970,3971,3979,3980,3981,3982,3983,3984,3985,3986,3992}
	
	-- -- 全片区
	-- tFathersDaySmallActivity_MonsterDrop[2] = {}
	-- tFathersDaySmallActivity_MonsterDrop[2]["ActivityTime"] = tFathersDaySmallActivity_Count["ActivityTime"]
	-- tFathersDaySmallActivity_MonsterDrop[2]["Function"] = FathersDaySmallActivity_MonsterDrop
-- table.insert(tMonsterDrop_AreaLoad,tFathersDaySmallActivity_MonsterDrop[1])
-- table.insert(tMonsterDrop_AreaLoad,tFathersDaySmallActivity_MonsterDrop[2])


