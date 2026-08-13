------------------------------------------------------------------------------------
--Name:		151230[英文征服][活动脚本]金币补偿包制作
--Purpose:	金币补偿包制作
--Creator: 	张磊
--Created:	2015/12/30
------------------------------------------------------------------------------------

-- 命名前缀
-- CompensationofGold_

-- #金币         概率
-- #1000000    5%
-- #800000    10%
-- #600000    15%
-- #400000    20%
-- #200000    50%
-- #
-- #======1、制作个金币补偿包；打开后按几率给以上金币；金币补偿包不可交易；pk不掉落；
-- #======2、制作个金币补偿包发奖action



local tCompensationofGold_Cont = {}
	tCompensationofGold_Cont[3008302] = {}
	tCompensationofGold_Cont[3008302][1] = {}
	tCompensationofGold_Cont[3008302][1]["ItemChanceSum"] = 10000

	tCompensationofGold_Cont[3008302][1][1] = {}
	tCompensationofGold_Cont[3008302][1][1]["RandomItemChanceType"] = 2
	tCompensationofGold_Cont[3008302][1][1]["ItemChance"] = 500
	tCompensationofGold_Cont[3008302][1][1]["Item_1"] = 1000000

	tCompensationofGold_Cont[3008302][1][2] = {}
	tCompensationofGold_Cont[3008302][1][2]["RandomItemChanceType"] = 2
	tCompensationofGold_Cont[3008302][1][2]["ItemChance"] = 1000
	tCompensationofGold_Cont[3008302][1][2]["Item_1"] = 800000 

	tCompensationofGold_Cont[3008302][1][3] = {}
	tCompensationofGold_Cont[3008302][1][3]["RandomItemChanceType"] = 2
	tCompensationofGold_Cont[3008302][1][3]["ItemChance"] = 1500
	tCompensationofGold_Cont[3008302][1][3]["Item_1"] = 600000 

	tCompensationofGold_Cont[3008302][1][4] = {}
	tCompensationofGold_Cont[3008302][1][4]["RandomItemChanceType"] = 2
	tCompensationofGold_Cont[3008302][1][4]["ItemChance"] = 2000
	tCompensationofGold_Cont[3008302][1][4]["Item_1"] = 400000 

	tCompensationofGold_Cont[3008302][1][5] = {}
	tCompensationofGold_Cont[3008302][1][5]["RandomItemChanceType"] = 2
	tCompensationofGold_Cont[3008302][1][5]["ItemChance"] = 5000
	tCompensationofGold_Cont[3008302][1][5]["Item_1"] = 200000 


	-- 获得最大金币数量
	tCompensationofGold_Cont["MoneyMax"] = 1000000
	
	-- 获得金币LOG
	tCompensationofGold_Cont["Log"] = "0,0,3008302,1,12000289,2,1,%d"
	
	
	
---------------------------------------------物品使用逻辑	
function CompensationofGold_OpenItem(nItemId)

	if not User_CanPutMoney2Bag(tCompensationofGold_Cont["MoneyMax"]) then
		User_TalkChannel2005(tCompensationofGold_Msg["MoneyFull"])
		return
	end
	
	if not (Item_ChkItem(nItemId) and Item_DelItem(nItemId)) then
		return
	end
	
	local nIndex,tAward = Probabil_RandomAward(tCompensationofGold_Cont[nItemId],1)
	local nMoneyNum = tAward[1]["tAward"][1]["Item_1"]
	
	if User_AddMoney(nMoneyNum) then
		Sys_SaveActionFestivalLog(string.format(tCompensationofGold_Cont["Log"],nMoneyNum))
		User_TalkChannel2005(string.format(tCompensationofGold_Msg["GetMoney"],nMoneyNum))
	end
end

---------------------------------------------物品使用模版
tItem[3008302] = tItem[3008302] or {}
tItem[3008302]["Function"] = function(nItemId,sItemName)

	CompensationofGold_OpenItem(nItemId)
end




