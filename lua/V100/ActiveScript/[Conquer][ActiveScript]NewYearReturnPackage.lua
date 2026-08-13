------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]元旦回归礼包制作
--Purpose:	元旦回归礼包制作
--Creator: 	陈飞伟
--Created:	2016/01/04
------------------------------------------------------------------------------------

-- 命名规则
-- NewYearReturnPackage_

-- 掩码说明
-- 139	74	=1表示上线获取过回归礼包
-- 139	75	表示打开回归礼包的次数

-- logID	12000288

-- 常量表
local tNewYearReturnPackage_Constant = {}
	--礼包领取时间，礼包不可用时间（会有相关提示，不会删礼包），礼包使用时间，礼包使用删除时间（最后一天）
	-- tNewYearReturnPackage_Constant["GetPackageTime"] = "2016-02-01 00:00 2016-02-07 23:59"
	tNewYearReturnPackage_Constant["PackageWaitTime"] = "2016-02-01 00:00 2016-02-22 23:59"
	tNewYearReturnPackage_Constant["UsePackageTime"] = "2016-02-23 00:00 2016-02-29 23:59"
	tNewYearReturnPackage_Constant["UsePackageLastTime"] = "2016-02-29 00:00 2016-02-29 23:59"

	--礼包最大领取次数
	tNewYearReturnPackage_Constant["MaxTime"] = 7

	--玩家等级要求
	tNewYearReturnPackage_Constant["Metempsychosis"] = 1
	tNewYearReturnPackage_Constant["Level"] = 120

	--首天礼包ID、log、背包空间要求
	tNewYearReturnPackage_Constant["PackageId"] = 3008300
	tNewYearReturnPackage_Constant["GetPackageLog"] = "0,0,0,0,12000288,2,3008300,1"
	tNewYearReturnPackage_Constant["GetPackageSpace"] = 1

	--神魂礼包物品属性、开启特效、log
	tNewYearReturnPackage_Constant["SpiritAttr"] = "0 1 3 43200 1"
	tNewYearReturnPackage_Constant["OpenNewPack"] = "angelwing"
	tNewYearReturnPackage_Constant["SoulRefineLog"] = "0,0,%d,1,12000288,2,%d,1"

--stc掩码表
local tNewYearReturnPackage_Stc = {}
	tNewYearReturnPackage_Stc["EventType"] = 139
	tNewYearReturnPackage_Stc["DataType"] = {}
	tNewYearReturnPackage_Stc["DataType"][1] = 74
	tNewYearReturnPackage_Stc["DataType"][2] = 75

-- 奖励表
local tNewYearReturnPackage_Reward = {}
	-- 第一天
	-- 7天7星vip外套（赠）； 无属性
	-- 7天回归坐骑外套（赠）；
	-- 自创武功免费丹40个；
	-- 6阶武器神魂/6阶防具神魂/淬炼礼包三选一（写在概率表中）；
	-- 气力值10000。
	tNewYearReturnPackage_Reward[3008300] = {}
	tNewYearReturnPackage_Reward[3008300]["Space"] = 4
	tNewYearReturnPackage_Reward[3008300]["Item"] = {}
	tNewYearReturnPackage_Reward[3008300]["Item"][1] = {}
	tNewYearReturnPackage_Reward[3008300]["Item"][1]["Id"] = 189085
	tNewYearReturnPackage_Reward[3008300]["Item"][1]["Attr"] = "0 1 3 10080 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearReturnPackage_Reward[3008300]["Item"][2] = {}
	tNewYearReturnPackage_Reward[3008300]["Item"][2]["Id"] = 200411
	tNewYearReturnPackage_Reward[3008300]["Item"][2]["Attr"] = "0 1 3 10080 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearReturnPackage_Reward[3008300]["Item"][3] = {}
	tNewYearReturnPackage_Reward[3008300]["Item"][3]["Id"] = 3002926
	tNewYearReturnPackage_Reward[3008300]["Item"][3]["Attr"] = "0 40"
	tNewYearReturnPackage_Reward[3008300]["Item"][4] = {}
	tNewYearReturnPackage_Reward[3008300]["Item"][4]["Id"] = 3008301
	tNewYearReturnPackage_Reward[3008300]["Item"][4]["Attr"] = "0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearReturnPackage_Reward[3008300]["Strength"] = 10000

	-- 随后的2到7天每天送出：
	-- 经验值 1%
	-- 修行值 600点
	-- 自创武功免费丹 10颗
	-- 赠点天石100点
	-- 气力值500点
	tNewYearReturnPackage_Reward[3008301] = {}
	tNewYearReturnPackage_Reward[3008301]["Space"] = 1
	tNewYearReturnPackage_Reward[3008301]["Exp"] = 1
	tNewYearReturnPackage_Reward[3008301]["Strength"] = 500
	tNewYearReturnPackage_Reward[3008301]["Emoney"] = 100
	tNewYearReturnPackage_Reward[3008301]["ItemId"] = 3002926
	tNewYearReturnPackage_Reward[3008301]["Attr"] = "0 10"
	tNewYearReturnPackage_Reward[3008301]["Cultivation"] = 600
	tNewYearReturnPackage_Reward[3008301]["Log"] = "0,0,%d,%d,12000288,2,4[12][3][3002926][6],1[500][100][10][600]"

--首开礼包中除了奖励表中的奖励外，将走概率随机获得一件物品（六阶武器神魂礼包、六阶防具配饰神魂礼包、极品淬炼礼包相同概率三选一）
local tNewYearReturnPackage_Probabil = {}
	tNewYearReturnPackage_Probabil[3008300] = {}
	tNewYearReturnPackage_Probabil[3008300]["ItemChanceSum"] = 30000

	tNewYearReturnPackage_Probabil[3008300][1] = {}
	tNewYearReturnPackage_Probabil[3008300][1]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Probabil[3008300][1]["ItemChance"] = 10000
	tNewYearReturnPackage_Probabil[3008300][1]["Item_1"] = 3008422
	tNewYearReturnPackage_Probabil[3008300][1]["Attr_1"] = "0 1 0 43200 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearReturnPackage_Probabil[3008300][1]["Log"] = "0,0,3008300,1,12000288,2,189085[200411][3002926][3008422][3008301][12],1[1][40][1][1][10000]"

	tNewYearReturnPackage_Probabil[3008300][2] = {}
	tNewYearReturnPackage_Probabil[3008300][2]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Probabil[3008300][2]["ItemChance"] = 10000
	tNewYearReturnPackage_Probabil[3008300][2]["Item_1"] = 3008423
	tNewYearReturnPackage_Probabil[3008300][2]["Attr_1"] = "0 1 0 43200 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearReturnPackage_Probabil[3008300][2]["Log"] = "0,0,3008300,1,12000288,2,189085[200411][3002926][3008423][3008301][12],1[1][40][1][1][10000]"

	tNewYearReturnPackage_Probabil[3008300][3] = {}
	tNewYearReturnPackage_Probabil[3008300][3]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Probabil[3008300][3]["ItemChance"] = 10000
	tNewYearReturnPackage_Probabil[3008300][3]["Item_1"] = 3008424
	tNewYearReturnPackage_Probabil[3008300][3]["Attr_1"] = "0 1 0 43200 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tNewYearReturnPackage_Probabil[3008300][3]["Log"] = "0,0,3008300,1,12000288,2,189085[200411][3002926][3008424][3008301][12],1[1][40][1][1][10000]"

--极品淬炼礼包概率表
local tNewYearReturnPackage_Cuilian = {}
	tNewYearReturnPackage_Cuilian[3008424] = {}
	tNewYearReturnPackage_Cuilian[3008424]["ItemChanceSum"] = 100000

	tNewYearReturnPackage_Cuilian[3008424][1] = {}
	tNewYearReturnPackage_Cuilian[3008424][1]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][1]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][1]["Item_1"] = 724404

	tNewYearReturnPackage_Cuilian[3008424][2] = {}
	tNewYearReturnPackage_Cuilian[3008424][2]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][2]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][2]["Item_1"] = 724409

	tNewYearReturnPackage_Cuilian[3008424][3] = {}
	tNewYearReturnPackage_Cuilian[3008424][3]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][3]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][3]["Item_1"] = 724414

	tNewYearReturnPackage_Cuilian[3008424][4] = {}
	tNewYearReturnPackage_Cuilian[3008424][4]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][4]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][4]["Item_1"] = 724419

	tNewYearReturnPackage_Cuilian[3008424][5] = {}
	tNewYearReturnPackage_Cuilian[3008424][5]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][5]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][5]["Item_1"] = 724424

	tNewYearReturnPackage_Cuilian[3008424][6] = {}
	tNewYearReturnPackage_Cuilian[3008424][6]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][6]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][6]["Item_1"] = 724429

	tNewYearReturnPackage_Cuilian[3008424][7] = {}
	tNewYearReturnPackage_Cuilian[3008424][7]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][7]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][7]["Item_1"] = 724434

	tNewYearReturnPackage_Cuilian[3008424][8] = {}
	tNewYearReturnPackage_Cuilian[3008424][8]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][8]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][8]["Item_1"] = 724439

	tNewYearReturnPackage_Cuilian[3008424][9] = {}
	tNewYearReturnPackage_Cuilian[3008424][9]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][9]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][9]["Item_1"] = 724444

	tNewYearReturnPackage_Cuilian[3008424][10] = {}
	tNewYearReturnPackage_Cuilian[3008424][10]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][10]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][10]["Item_1"] = 724453

	tNewYearReturnPackage_Cuilian[3008424][11] = {}
	tNewYearReturnPackage_Cuilian[3008424][11]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][11]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][11]["Item_1"] = 724458

	tNewYearReturnPackage_Cuilian[3008424][12] = {}
	tNewYearReturnPackage_Cuilian[3008424][12]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][12]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][12]["Item_1"] = 724463

	tNewYearReturnPackage_Cuilian[3008424][13] = {}
	tNewYearReturnPackage_Cuilian[3008424][13]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][13]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][13]["Item_1"] = 724472

	tNewYearReturnPackage_Cuilian[3008424][14] = {}
	tNewYearReturnPackage_Cuilian[3008424][14]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][14]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][14]["Item_1"] = 724477

	tNewYearReturnPackage_Cuilian[3008424][15] = {}
	tNewYearReturnPackage_Cuilian[3008424][15]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][15]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][15]["Item_1"] = 724482

	tNewYearReturnPackage_Cuilian[3008424][16] = {}
	tNewYearReturnPackage_Cuilian[3008424][16]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][16]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][16]["Item_1"] = 724487

	tNewYearReturnPackage_Cuilian[3008424][17] = {}
	tNewYearReturnPackage_Cuilian[3008424][17]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][17]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][17]["Item_1"] = 724492

	tNewYearReturnPackage_Cuilian[3008424][18] = {}
	tNewYearReturnPackage_Cuilian[3008424][18]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][18]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][18]["Item_1"] = 724497

	tNewYearReturnPackage_Cuilian[3008424][19] = {}
	tNewYearReturnPackage_Cuilian[3008424][19]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][19]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][19]["Item_1"] = 724352

	tNewYearReturnPackage_Cuilian[3008424][20] = {}
	tNewYearReturnPackage_Cuilian[3008424][20]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][20]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][20]["Item_1"] = 724357

	tNewYearReturnPackage_Cuilian[3008424][21] = {}
	tNewYearReturnPackage_Cuilian[3008424][21]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][21]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][21]["Item_1"] = 724362

	tNewYearReturnPackage_Cuilian[3008424][22] = {}
	tNewYearReturnPackage_Cuilian[3008424][22]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][22]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][22]["Item_1"] = 724367

	tNewYearReturnPackage_Cuilian[3008424][23] = {}
	tNewYearReturnPackage_Cuilian[3008424][23]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][23]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][23]["Item_1"] = 724372

	tNewYearReturnPackage_Cuilian[3008424][24] = {}
	tNewYearReturnPackage_Cuilian[3008424][24]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][24]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][24]["Item_1"] = 724377

	tNewYearReturnPackage_Cuilian[3008424][25] = {}
	tNewYearReturnPackage_Cuilian[3008424][25]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][25]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][25]["Item_1"] = 724384

	tNewYearReturnPackage_Cuilian[3008424][26] = {}
	tNewYearReturnPackage_Cuilian[3008424][26]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][26]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][26]["Item_1"] = 724389

	tNewYearReturnPackage_Cuilian[3008424][27] = {}
	tNewYearReturnPackage_Cuilian[3008424][27]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][27]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][27]["Item_1"] = 724394

	tNewYearReturnPackage_Cuilian[3008424][28] = {}
	tNewYearReturnPackage_Cuilian[3008424][28]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][28]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][28]["Item_1"] = 725196

	tNewYearReturnPackage_Cuilian[3008424][29] = {}
	tNewYearReturnPackage_Cuilian[3008424][29]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][29]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][29]["Item_1"] = 725201

	tNewYearReturnPackage_Cuilian[3008424][30] = {}
	tNewYearReturnPackage_Cuilian[3008424][30]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][30]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][30]["Item_1"] = 725206

	tNewYearReturnPackage_Cuilian[3008424][31] = {}
	tNewYearReturnPackage_Cuilian[3008424][31]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][31]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][31]["Item_1"] = 725211

	tNewYearReturnPackage_Cuilian[3008424][32] = {}
	tNewYearReturnPackage_Cuilian[3008424][32]["RandomItemChanceType"] = 2
	tNewYearReturnPackage_Cuilian[3008424][32]["ItemChance"] = 3125
	tNewYearReturnPackage_Cuilian[3008424][32]["Item_1"] = 3006169


-----------------------------------逻辑部分------------------------------------------------
--上线触发
-- function NewYearReturnPackage_PlayLogin()
	-- 判断是否在活动礼包领取时间内
	-- if not Sys_ChkFullTime(tNewYearReturnPackage_Constant["GetPackageTime"]) then
		-- return
	-- end
	
	-- 判断玩家等级是否满足
	-- if not User_JudgeLevelAndMetempsychosis(tNewYearReturnPackage_Constant["Level"],tNewYearReturnPackage_Constant["Metempsychosis"]) then
		-- return
	-- end
	
	-- local nEvent = tNewYearReturnPackage_Stc["EventType"]
	-- local nType = tNewYearReturnPackage_Stc["DataType"][1]
	
	-- 判断玩家是否线获取过回归礼包
	-- if Task_ChkStcValue(nEvent,nType,">=",1) then
		-- return
	-- end
	
	-- 玩家背包空间判断
	-- if not User_CheckLeftSpace(tNewYearReturnPackage_Constant["GetPackageSpace"]) then
		-- User_TalkChannel2005(tNewYearReturnPackage_Text["NoSpace"])
		-- return 
	-- end
	
	-- 给礼包
	-- if Task_SetStatistic(nEvent,nType,1,1) then
		-- Item_AddItem(tNewYearReturnPackage_Constant["PackageId"])
		-- 打log
		-- Sys_SaveActionFestivalLog(tNewYearReturnPackage_Constant["GetPackageLog"])
		-- 给提示
		-- User_TalkChannel2005(tNewYearReturnPackage_Text["Reward"])
	-- end
	
-- end

-- 使用首天礼包
function NewYearReturnPackage_UseFirstDay(nItemId)
	--判断是否在不可用（给提示）时间内
	if Sys_ChkFullTime(tNewYearReturnPackage_Constant["PackageWaitTime"]) then
		User_TalkChannel2005(tNewYearReturnPackage_Text[nItemId]["BeforTime"])
		return
	end
	
	-- 判断是否在可用时间内
	if not Sys_ChkFullTime(tNewYearReturnPackage_Constant["UsePackageTime"]) then
		if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
			User_TalkChannel2005(tNewYearReturnPackage_Text[nItemId]["OutTime"])
		end
		return
	end
	
	-- 判断玩家等级是否满足
	if not User_JudgeLevelAndMetempsychosis(tNewYearReturnPackage_Constant["Level"],tNewYearReturnPackage_Constant["Metempsychosis"]) then
		User_TalkChannel2005(tNewYearReturnPackage_Text[nItemId]["LevelNotEnough"])
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tNewYearReturnPackage_Reward[nItemId]["Space"]) then
		User_TalkChannel2005(tNewYearReturnPackage_Text[nItemId]["NoSpace"])
		return
	end
	
	if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
		local nEvent = tNewYearReturnPackage_Stc["EventType"]
		local nType = tNewYearReturnPackage_Stc["DataType"][2]
		
		if Task_ChkStcValue(nEvent,nType,">=",1) then
			return
		end
		
		-- 设掩码值
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		-- 给气力值
		User_AddStrengthValue(tNewYearReturnPackage_Reward[nItemId]["Strength"])
		
		-- 给物品
		for i,v in pairs(tNewYearReturnPackage_Reward[nItemId]["Item"]) do
			Item_AddNewItem(v["Id"],v["Attr"])
		end
		
		--神魂淬炼礼包三选一
		local flat,tItem = Probabil_RandomAward(tNewYearReturnPackage_Probabil,nItemId)
		local nAwardItemId = tItem[1]["tAward"][1]["Item_1"]
		local sAwardAttr = tItem[1]["tAward"][1]["Attr_1"]

		if not Item_AddNewItem(nAwardItemId,sAwardAttr) then
			return
		end
	
		-- 打log
		Sys_SaveActionFestivalLog(tItem[1]["tAward"][1]["Log"])
		
		-- 给提示
		local sAwardText = string.format(tNewYearReturnPackage_Text[nItemId]["Reward"],Get_ItemtypeName(nAwardItemId))
		User_TalkChannel2005(sAwardText)
	end
end

-- 使用签到礼包
function NewYearReturnPackage_UseSignGifts(nItemId)
	--判断是否在不可用（给提示）时间内
	if Sys_ChkFullTime(tNewYearReturnPackage_Constant["PackageWaitTime"]) then
		User_TalkChannel2005(tNewYearReturnPackage_Text[nItemId]["BeforTime"])
		return
	end
	
	-- 判断是否在可用时间内
	if not Sys_ChkFullTime(tNewYearReturnPackage_Constant["UsePackageTime"]) then
		if Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
			User_TalkChannel2005(tNewYearReturnPackage_Text[nItemId]["OutTime"])
		end
		return
	end
	
	local nEvent = tNewYearReturnPackage_Stc["EventType"]
	local nType = tNewYearReturnPackage_Stc["DataType"][2]

	-- 判断是否隔天
	if not Task_StcInterval(nEvent,nType,1,4) then
		if Task_ChkStcValue(nEvent,nType,"<=",1) then
			User_TalkChannel2005(tNewYearReturnPackage_Text[nItemId]["FirstOpen"])
		else
			User_TalkChannel2005(tNewYearReturnPackage_Text[nItemId]["LessOneDay"])
		end
		return
	end
	
	-- 判断赠点天石上限
	local nUserEmoneyMono = Get_UserMonoEMoney()
	local nAddEmoneyMono = tNewYearReturnPackage_Reward[nItemId]["Emoney"]
	
	if nUserEmoneyMono + nAddEmoneyMono > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tNewYearReturnPackage_Text[nItemId]["FullEmoneyMono"])
		return
	end
	
	local sLog = string.format(tNewYearReturnPackage_Reward[nItemId]["Log"],0,0)
	
	-- 判断打开次数
	if Task_ChkStcValue(nEvent,nType,">=",tNewYearReturnPackage_Constant["MaxTime"]) then
		if not (Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1)) then
			return
		end
		sLog = string.format(tNewYearReturnPackage_Reward[nItemId]["Log"],nItemId,1)
	-- 判断玩家背包空间
	elseif not User_CheckLeftSpace(tNewYearReturnPackage_Reward[nItemId]["Space"]) then
		User_TalkChannel2005(tNewYearReturnPackage_Text[nItemId]["NoSpace"])
		return
	end
	
	--最后一天开礼包将删除礼包
	if Sys_ChkFullTime(tNewYearReturnPackage_Constant["UsePackageLastTime"]) and Item_ChkItem(nItemId,1) and Item_DelItem(nItemId,1) then
		sLog = string.format(tNewYearReturnPackage_Reward[nItemId]["Log"],nItemId,1)
	end
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	-- 给气力值
	User_AddStrengthValue(tNewYearReturnPackage_Reward[nItemId]["Strength"])
	
	-- 给赠点天石
	User_AddEMoneyMono(tNewYearReturnPackage_Reward[nItemId]["Emoney"])

	-- 给物品
	Item_AddNewItem(tNewYearReturnPackage_Reward[nItemId]["ItemId"],tNewYearReturnPackage_Reward[nItemId]["Attr"])
	
	-- 给修行值
	User_AddCultivation(tNewYearReturnPackage_Reward[nItemId]["Cultivation"])
	
	local sRewardText = tNewYearReturnPackage_Text[nItemId]["Reward"]
	-- 给经验
	if Get_UserLevel() < G_User_MaxLev then
		User_AddExpPercent(tNewYearReturnPackage_Reward[nItemId]["Exp"])
	else
		sRewardText = tNewYearReturnPackage_Text[nItemId]["RewardForFullLevel"]
	end
	
	-- 打log
	Sys_SaveActionFestivalLog(sLog)
	
	-- 给提示
	User_TalkChannel2005(sRewardText)
end

--神魂、淬炼礼包选择
function NewYearReturnPackage_SouRefinelSel(nThisItemId,nAwardItemId,sOptionText)
	
	local sOptionText = tNewYearReturnPackage_Text[nThisItemId][sOptionText]
	
	--重设对白文字
	tItem[nThisItemId]["Text411"] = string.format(tNewYearReturnPackage_Text[nThisItemId]["Text411"],sOptionText)
	--重设选项函数
	tItem[nThisItemId]["OptionFunc411"] = "NewYearReturnPackage_SoulRefineAward</N>"..nThisItemId.."</N>"..nAwardItemId
	
	LinkItemGossipFunc_New(nThisItemId,"4-1")
	
	
end

--确认选择获得物品
function NewYearReturnPackage_SoulRefineAward(nThisItemId,nAwardItemId)
	
	if not Item_ChkItem(nThisItemId,1) then
		User_TalkChannel2005(tNewYearReturnPackage_Text["NoThisItem"])
		return
	end
	
	if not Item_DelItem(nThisItemId,1) then
		return
	end
	
	if not Item_AddNewItem(nAwardItemId,tNewYearReturnPackage_Constant["SpiritAttr"]) then
		return
	end
	
	local sLog = string.format(tNewYearReturnPackage_Constant["SoulRefineLog"],nThisItemId,nAwardItemId)
	Sys_SaveActionFestivalLog(sLog)
	
	local sAwardText = string.format(tNewYearReturnPackage_Text["ExchangeSucc"],Get_ItemtypeName(nAwardItemId))
	
	User_TalkChannel2005(sAwardText)
	User_EffectAdd("self",tNewYearReturnPackage_Constant["OpenNewPack"])
end

--使用淬炼礼包
function NewYearReturnPackage_UseCuilianPack(nItemId)
	if not Item_ChkItem(nItemId,1) then
		return
	end
	
	if not Item_DelItem(nItemId,1) then
		return
	end
	
	local flat,tItem = Probabil_RandomAward(tNewYearReturnPackage_Cuilian,nItemId)
	
	local nAwardItemId = tItem[1]["tAward"][1]["Item_1"]
	local sAwardAttr = tNewYearReturnPackage_Constant["SpiritAttr"]
	
	if not Item_AddNewItem(nAwardItemId,sAwardAttr) then
		return
	end
	
	local sLog = string.format(tNewYearReturnPackage_Constant["SoulRefineLog"],nItemId,nAwardItemId)
	Sys_SaveActionFestivalLog(sLog)
	
	local sAwardText = string.format(tNewYearReturnPackage_Text["ExchangeSucc"],tNewYearReturnPackage_Text["RefineName"][nAwardItemId])
	User_TalkChannel2005(sAwardText)
	User_EffectAdd("self",tNewYearReturnPackage_Constant["OpenNewPack"])
	
end

------------------------------------------物品配置-----------------------------------------
-- tItem[3008300] = tItem[3008300] or {}
-- tItem[3008300]["Function"] = function(nItemId,sItemName)
	-- NewYearReturnPackage_UseFirstDay(nItemId)
-- end

-- tItem[3008301] = tItem[3008301] or {}
-- tItem[3008301]["Function"] = function(nItemId,sItemName)
	-- NewYearReturnPackage_UseSignGifts(nItemId)
-- end


--六阶武器神魂礼包
--区别于3008053有以下两点：
--神魂改为赠品
--时效从7天改为30天
-- tItem[3008422] = tItem[3008422] or {}

-- tItem[3008422]["Text1-1"] = {111}
-- tItem[3008422]["Text111"] = tNewYearReturnPackage_Text[3008422]["Text111"]
-- tItem[3008422]["tOption1-1"] = {111,112,113,114,115,116,117,118}
-- tItem[3008422]["Option111"] = tNewYearReturnPackage_Text[3008422]["Option111"]
-- tItem[3008422]["OptionFunc111"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>800000</S>Option111"
-- tItem[3008422]["Option112"] = tNewYearReturnPackage_Text[3008422]["Option112"]
-- tItem[3008422]["OptionFunc112"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>800110</S>Option112"
-- tItem[3008422]["Option113"] = tNewYearReturnPackage_Text[3008422]["Option113"]
-- tItem[3008422]["OptionFunc113"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>800320</S>Option113"
-- tItem[3008422]["Option114"] = tNewYearReturnPackage_Text[3008422]["Option114"]
-- tItem[3008422]["OptionFunc114"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>800616</S>Option114"
-- tItem[3008422]["Option115"] = tNewYearReturnPackage_Text[3008422]["Option115"]
-- tItem[3008422]["OptionFunc115"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>800916</S>Option115"
-- tItem[3008422]["Option116"] = tNewYearReturnPackage_Text[3008422]["Option116"]
-- tItem[3008422]["OptionFunc116"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>800809</S>Option116"
-- tItem[3008422]["Option117"] = tNewYearReturnPackage_Text[3008422]["Option117"]
-- tItem[3008422]["OptionPoint117"] = "2-1"
-- tItem[3008422]["Option118"] = tNewYearReturnPackage_Text[3008422]["Option118"]


-- tItem[3008422]["Text2-1"] = {211}
-- tItem[3008422]["Text211"] = tNewYearReturnPackage_Text[3008422]["Text211"]
-- tItem[3008422]["tOption2-1"] = {211,212,213,214,215,216,217,218}
-- tItem[3008422]["Option211"] = tNewYearReturnPackage_Text[3008422]["Option211"]
-- tItem[3008422]["OptionFunc211"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>800804</S>Option211"
-- tItem[3008422]["Option212"] = tNewYearReturnPackage_Text[3008422]["Option212"]
-- tItem[3008422]["OptionFunc212"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>800722</S>Option212"
-- tItem[3008422]["Option213"] = tNewYearReturnPackage_Text[3008422]["Option213"]
-- tItem[3008422]["OptionFunc213"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>800017</S>Option213"
-- tItem[3008422]["Option214"] = tNewYearReturnPackage_Text[3008422]["Option214"]
-- tItem[3008422]["OptionFunc214"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>800254</S>Option214"
-- tItem[3008422]["Option215"] = tNewYearReturnPackage_Text[3008422]["Option215"]
-- tItem[3008422]["OptionFunc215"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>800513</S>Option215"
-- tItem[3008422]["Option216"] = tNewYearReturnPackage_Text[3008422]["Option216"]
-- tItem[3008422]["OptionFunc216"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>800421</S>Option216"
-- tItem[3008422]["Option217"] = tNewYearReturnPackage_Text[3008422]["Option217"]
-- tItem[3008422]["OptionPoint217"] = "1-1"
-- tItem[3008422]["Option218"] = tNewYearReturnPackage_Text[3008422]["Option218"]
-- tItem[3008422]["OptionPoint218"] = "3-1"

-- tItem[3008422]["Text3-1"] = {311}
-- tItem[3008422]["Text311"] = tNewYearReturnPackage_Text[3008422]["Text311"]
-- tItem[3008422]["tOption3-1"] = {311,312,315,316,317,313,314}
-- tItem[3008422]["Option311"] = tNewYearReturnPackage_Text[3008422]["Option311"]
-- tItem[3008422]["OptionFunc311"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>801003</S>Option311"
-- tItem[3008422]["Option312"] = tNewYearReturnPackage_Text[3008422]["Option312"]
-- tItem[3008422]["OptionFunc312"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>801103</S>Option312"
-- tItem[3008422]["Option315"] = tNewYearReturnPackage_Text[3008422]["Option315"]
-- tItem[3008422]["OptionFunc315"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>801212</S>Option315"
-- tItem[3008422]["Option316"] = tNewYearReturnPackage_Text[3008422]["Option316"]
-- tItem[3008422]["OptionFunc316"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>801214</S>Option316"
-- tItem[3008422]["Option317"] = tNewYearReturnPackage_Text[3008422]["Option317"]
-- tItem[3008422]["OptionFunc317"] = "NewYearReturnPackage_SouRefinelSel</N>3008422</N>801306</S>Option317"
-- tItem[3008422]["Option313"] = tNewYearReturnPackage_Text[3008422]["Option313"]
-- tItem[3008422]["OptionPoint313"] = "2-1"
-- tItem[3008422]["Option314"] = tNewYearReturnPackage_Text[3008422]["Option314"]


-- tItem[3008422]["Text4-1"] = {411}
-- tItem[3008422]["Text411"] = tNewYearReturnPackage_Text[3008422]["Text411"]
-- tItem[3008422]["tOption4-1"] = {411,412}
-- tItem[3008422]["Option411"] = tNewYearReturnPackage_Text[3008422]["Option411"]
-- tItem[3008422]["OptionFunc411"] = "NewYearReturnPackage_SoulRefineAward</N>3008422</N>801102"
-- tItem[3008422]["Option412"] = tNewYearReturnPackage_Text[3008422]["Option412"]


--六阶防具配饰神魂礼包
--区别于3008054有以下两点：
--神魂改为赠品
--时效从7天改为30天
tItem[3008423] = tItem[3008423] or {}

tItem[3008423]["Text1-1"] = {111}
tItem[3008423]["Text111"] = tNewYearReturnPackage_Text[3008423]["Text111"]
tItem[3008423]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3008423]["Option111"] = tNewYearReturnPackage_Text[3008423]["Option111"]
tItem[3008423]["OptionFunc111"] = "NewYearReturnPackage_SouRefinelSel</N>3008423</N>822053</S>Option111"
tItem[3008423]["Option112"] = tNewYearReturnPackage_Text[3008423]["Option112"]
tItem[3008423]["OptionFunc112"] = "NewYearReturnPackage_SouRefinelSel</N>3008423</N>822055</S>Option112"
tItem[3008423]["Option113"] = tNewYearReturnPackage_Text[3008423]["Option113"]
tItem[3008423]["OptionFunc113"] = "NewYearReturnPackage_SouRefinelSel</N>3008423</N>820071</S>Option113"
tItem[3008423]["Option114"] = tNewYearReturnPackage_Text[3008423]["Option114"]
tItem[3008423]["OptionFunc114"] = "NewYearReturnPackage_SouRefinelSel</N>3008423</N>820072</S>Option114"
tItem[3008423]["Option115"] = tNewYearReturnPackage_Text[3008423]["Option115"]
tItem[3008423]["OptionFunc115"] = "NewYearReturnPackage_SouRefinelSel</N>3008423</N>824017</S>Option115"
tItem[3008423]["Option116"] = tNewYearReturnPackage_Text[3008423]["Option116"]
tItem[3008423]["OptionFunc116"] = "NewYearReturnPackage_SouRefinelSel</N>3008423</N>823055</S>Option116"
tItem[3008423]["Option117"] = tNewYearReturnPackage_Text[3008423]["Option117"]
tItem[3008423]["OptionPoint117"] = "2-1"
tItem[3008423]["Option118"] = tNewYearReturnPackage_Text[3008423]["Option118"]

tItem[3008423]["Text2-1"] = {211}
tItem[3008423]["Text211"] = tNewYearReturnPackage_Text[3008423]["Text211"]
tItem[3008423]["tOption2-1"] = {211,212,213,214,215,216}
tItem[3008423]["Option211"] = tNewYearReturnPackage_Text[3008423]["Option211"]
tItem[3008423]["OptionFunc211"] = "NewYearReturnPackage_SouRefinelSel</N>3008423</N>823057</S>Option211"
tItem[3008423]["Option212"] = tNewYearReturnPackage_Text[3008423]["Option212"]
tItem[3008423]["OptionFunc212"] = "NewYearReturnPackage_SouRefinelSel</N>3008423</N>823056</S>Option212"
tItem[3008423]["Option213"] = tNewYearReturnPackage_Text[3008423]["Option213"]
tItem[3008423]["OptionFunc213"] = "NewYearReturnPackage_SouRefinelSel</N>3008423</N>821032</S>Option213"
tItem[3008423]["Option214"] = tNewYearReturnPackage_Text[3008423]["Option214"]
tItem[3008423]["OptionFunc214"] = "NewYearReturnPackage_SouRefinelSel</N>3008423</N>821031</S>Option214"
tItem[3008423]["Option215"] = tNewYearReturnPackage_Text[3008423]["Option215"]
tItem[3008423]["OptionPoint215"] = "1-1"
tItem[3008423]["Option216"] = tNewYearReturnPackage_Text[3008423]["Option216"]

tItem[3008423]["Text4-1"] = {411}
tItem[3008423]["Text411"] = tNewYearReturnPackage_Text[3008423]["Text411"]
tItem[3008423]["tOption4-1"] = {411,412}
tItem[3008423]["Option411"] = tNewYearReturnPackage_Text[3008423]["Option411"]
tItem[3008423]["OptionFunc411"] = "NewYearReturnPackage_SoulRefineAward</N>3008423</N>801102"
tItem[3008423]["Option412"] = tNewYearReturnPackage_Text[3008423]["Option412"]

--极品淬炼礼包
--新写，区别于3008057有以下两点：
--神魂改为赠品
--时效从7天改为30天
-- tItem[3008424] = tItem[3008424] or {}
-- tItem[3008424]["Function"] = function(nItemId, sItemName)
	-- NewYearReturnPackage_UseCuilianPack(nItemId)
-- end

-- table.insert(tSystem_PlayLogin_Func,NewYearReturnPackage_PlayLogin)