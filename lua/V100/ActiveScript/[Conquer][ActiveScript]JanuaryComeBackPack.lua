------------------------------------------------------------------------------------
--Name:		161220[英文征服][任务脚本]1月老玩家回归礼包及action
--Creator: 	兰瑞妹
--Created:	2016/12/20
------------------------------------------------------------------------------------

-- 命名前缀
-- tJanuary_ComeBackPack_

-- #stc 掩码说明 
-- #stc(154,36) 聚宝盆上限5次


-- 常量表
local tJanuary_ComeBackPack_Count = {}
	-- 打开礼包需要天石数量
	tJanuary_ComeBackPack_Count["EMoney"] = 1000
	
-- stc掩码
local tJanuary_ComeBackPack_Stc = {}
	-- 聚宝盆上限5次
	tJanuary_ComeBackPack_Stc[1] = {}
	tJanuary_ComeBackPack_Stc[1]["EventType"] = 154
	tJanuary_ComeBackPack_Stc[1]["DataType"] = 36
	tJanuary_ComeBackPack_Stc[1]["Limit"] = 5
	
-- 物品打开奖励表
local tJanuary_ComeBackPack_Reward = {}
	-- 侠士回归1阶礼盒
	-- BrightStarStone*5			3009001	5	非赠不可交易2天时效
	-- 5000ChiPointPack(B)			直接发
	-- EndeavorScroll(B)	 		3001407	1	赠
	-- FavoredTrainingPill(B)*20	3003124	20	赠
	-- SpecialTrainingPill(B)*50	3003125	50	赠
	-- TenderFlame					188495	1	1%神佑30天赠
	tJanuary_ComeBackPack_Reward[3301867] = {}
	tJanuary_ComeBackPack_Reward[3301867]["Log"] = "0,0,3301867,1,12000613,2,3009001[3001407][3003124][188495][12],5[1][20][50][1][5000]"
	tJanuary_ComeBackPack_Reward[3301867]["DeleteItem"] = {}
	tJanuary_ComeBackPack_Reward[3301867]["DeleteItem"][1] = {}
	tJanuary_ComeBackPack_Reward[3301867]["DeleteItem"][1]["Id"] = 3301867
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"] = {}
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][1] = {}
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][1]["Id"] = 3009001
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][2] = {}
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][2]["Id"] = 3001407
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][2]["Attr"] = "0 1 3"
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][3] = {}
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][3]["Id"] = 3003124
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][3]["Attr"] = "0 20 3"
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][4] = {}
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][4]["Id"] = 3003125
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][4]["Attr"] = "0 50 3"
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][5] = {}
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][5]["Id"] = 188495
	tJanuary_ComeBackPack_Reward[3301867]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1"
	tJanuary_ComeBackPack_Reward[3301867]["RewardStrengthValue"] = {}
	tJanuary_ComeBackPack_Reward[3301867]["RewardStrengthValue"]["Value"] = 5000
	tJanuary_ComeBackPack_Reward[3301867]["RewardEffect"] = {}
	tJanuary_ComeBackPack_Reward[3301867]["RewardEffect"]["Effect"] = "angelwing"
	tJanuary_ComeBackPack_Reward[3301867]["Talk"] = tJanuary_ComeBackPack_Text[3301867]["Talk"]
	
	-- 侠士回归2阶礼盒
	-- BrightStarStone*10			3009001	10	非赠不可交易2天时效
	-- 10000ChiPointsPack(B)		直接发
	-- EndeavorScroll(B)*2			3001407	2	赠
	-- FavoredTrainingPill(B)*30	3003124	30	赠
	-- SpecialTrainingPill(B)*50	3003125	50	赠
	-- TenderFlame					188495	1	1%神佑30天赠
	-- WarKylin						200403	1	15天赠
	tJanuary_ComeBackPack_Reward[3301868] = {}
	tJanuary_ComeBackPack_Reward[3301868]["Log"] = "0,0,3301868,1,12000613,2,3009001[3001407][3003124][188495][200403][12],10[2][30][50][1][1][10000]"
	tJanuary_ComeBackPack_Reward[3301868]["DeleteItem"] = {}
	tJanuary_ComeBackPack_Reward[3301868]["DeleteItem"][1] = {}
	tJanuary_ComeBackPack_Reward[3301868]["DeleteItem"][1]["Id"] = 3301868
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"] = {}
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][1] = {}
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][1]["Id"] = 3009001
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][1]["Attr"] = "0 10 0 2880 1"
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][2] = {}
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][2]["Id"] = 3001407
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][2]["Attr"] = "0 2 3"
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][3] = {}
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][3]["Id"] = 3003124
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][3]["Attr"] = "0 30 3"
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][4] = {}
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][4]["Id"] = 3003125
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][4]["Attr"] = "0 50 3"
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][5] = {}
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][5]["Id"] = 188495
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1"
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][6] = {}
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][6]["Id"] = 200403
	tJanuary_ComeBackPack_Reward[3301868]["RewardItem"][6]["Attr"] = "0 1 3 21600 1"
	tJanuary_ComeBackPack_Reward[3301868]["RewardStrengthValue"] = {}
	tJanuary_ComeBackPack_Reward[3301868]["RewardStrengthValue"]["Value"] = 10000
	tJanuary_ComeBackPack_Reward[3301868]["RewardEffect"] = {}
	tJanuary_ComeBackPack_Reward[3301868]["RewardEffect"]["Effect"] = "angelwing"
	tJanuary_ComeBackPack_Reward[3301868]["Talk"] = tJanuary_ComeBackPack_Text[3301868]["Talk"]
	
	-- 侠士回归3阶礼盒
	-- RadiantStarStone*3			3009002	3	非赠不可交易2天时效
	-- 15000ChiPoints(B)			直接发
	-- EndeavorScroll(B)*3			3001407	3	赠
	-- FavoredTrainingPill(B)*50	3003124	50	赠
	-- SeniorTrainingPill(B)*30		3003126	30	赠
	-- TenderFlame					188495	1	1%神佑30天赠
	-- GreenEyeBeast				200413	1	15天赠
	-- 新制作武器4件套（武器*2，衣服，头饰）	新制作 - 3301872	1	15级极品赠品，无洞无追加无神佑
	tJanuary_ComeBackPack_Reward[3301869] = {}
	tJanuary_ComeBackPack_Reward[3301869]["Log"] = "0,0,3301869,1,12000613,2,3009002[3001407][3003124][188495][200403][3301872][12],3[3][50][30][1][1][1][15000]"
	tJanuary_ComeBackPack_Reward[3301869]["DeleteItem"] = {}
	tJanuary_ComeBackPack_Reward[3301869]["DeleteItem"][1] = {}
	tJanuary_ComeBackPack_Reward[3301869]["DeleteItem"][1]["Id"] = 3301869
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"] = {}
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][1] = {}
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][1]["Id"] = 3009002
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][2] = {}
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][2]["Id"] = 3001407
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][2]["Attr"] = "0 3 3"
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][3] = {}
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][3]["Id"] = 3003124
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][3]["Attr"] = "0 50 3"
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][4] = {}
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][4]["Id"] = 3003126
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][4]["Attr"] = "0 30 3"
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][5] = {}
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][5]["Id"] = 188495
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1"
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][6] = {}
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][6]["Id"] = 200413
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][6]["Attr"] = "0 1 3 21600 1"
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][7] = {}
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][7]["Id"] = 3301872
	tJanuary_ComeBackPack_Reward[3301869]["RewardItem"][7]["Attr"] = "0 1"
	tJanuary_ComeBackPack_Reward[3301869]["RewardStrengthValue"] = {}
	tJanuary_ComeBackPack_Reward[3301869]["RewardStrengthValue"]["Value"] = 15000
	tJanuary_ComeBackPack_Reward[3301869]["RewardEffect"] = {}
	tJanuary_ComeBackPack_Reward[3301869]["RewardEffect"]["Effect"] = "angelwing"
	tJanuary_ComeBackPack_Reward[3301869]["Talk"] = tJanuary_ComeBackPack_Text[3301869]["Talk"]

	-- 侠士回归4阶礼盒
	-- RadiantStarStone*5			3009002	5	非赠不可交易2天时效
	-- 30000ChiPoints(B)			直接发
	-- EndeavorScroll(B)*5			3001407	5	赠
	-- FavoredTrainingPill(B)*100	3003124	100	赠
	-- SeniorTrainingPill(B)*50		3003126	50	赠
	-- TenderFlame					188495	1	1%神佑30天赠
	-- LoveHorse					200495	1	15天赠
	-- 新制作武器4件套（武器*2，衣服，头饰）	新制作-3301871	1	15级极品非赠，无洞无追加无神佑
	tJanuary_ComeBackPack_Reward[3301870] = {}
	tJanuary_ComeBackPack_Reward[3301870]["Log"] = "0,0,3301870,1,12000613,2,3009002[3001407][3003124][188495][200495][3301871][12],5[5][100][50][1][1][1][30000]"
	tJanuary_ComeBackPack_Reward[3301870]["DeleteItem"] = {}
	tJanuary_ComeBackPack_Reward[3301870]["DeleteItem"][1] = {}
	tJanuary_ComeBackPack_Reward[3301870]["DeleteItem"][1]["Id"] = 3301870
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"] = {}
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][1] = {}
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][1]["Id"] = 3009002
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][2] = {}
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][2]["Id"] = 3001407
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][2]["Attr"] = "0 5 3"
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][3] = {}
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][3]["Id"] = 3003124
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][3]["Attr"] = "0 100 3"
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][4] = {}
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][4]["Id"] = 3003126
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][4]["Attr"] = "0 50 3"
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][5] = {}
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][5]["Id"] = 188495
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1"
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][6] = {}
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][6]["Id"] = 200495
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][6]["Attr"] = "0 1 3 21600 1"
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][7] = {}
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][7]["Id"] = 3301871
	tJanuary_ComeBackPack_Reward[3301870]["RewardItem"][7]["Attr"] = "0 1"
	tJanuary_ComeBackPack_Reward[3301870]["RewardStrengthValue"] = {}
	tJanuary_ComeBackPack_Reward[3301870]["RewardStrengthValue"]["Value"] = 30000
	tJanuary_ComeBackPack_Reward[3301870]["RewardEffect"] = {}
	tJanuary_ComeBackPack_Reward[3301870]["RewardEffect"]["Effect"] = "angelwing"
	tJanuary_ComeBackPack_Reward[3301870]["Talk"] = tJanuary_ComeBackPack_Text[3301870]["Talk"]
	
	-- 侠士回归套装礼盒
	tJanuary_ComeBackPack_Reward[3301871] = {}
	tJanuary_ComeBackPack_Reward[3301871]["Log"] = "0,0,3301871,1,12000613,2,626029[626029][101009][170009],1[1][1][1]"
	tJanuary_ComeBackPack_Reward[3301871]["DeleteItem"] = {}
	tJanuary_ComeBackPack_Reward[3301871]["DeleteItem"][1] = {}
	tJanuary_ComeBackPack_Reward[3301871]["DeleteItem"][1]["Id"] = 3301871
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"] = {}
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"][1] = {}
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"][1]["Id"] = 626029
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"][1]["Attr"] = "0 1"
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"][2] = {}
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"][2]["Id"] = 626029
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"][2]["Attr"] = "0 1"
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"][3] = {}
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"][3]["Id"] = 101009
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"][3]["Attr"] = "0 1"
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"][4] = {}
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"][4]["Id"] = 170009
	tJanuary_ComeBackPack_Reward[3301871]["RewardItem"][4]["Attr"] = "0 1"
	tJanuary_ComeBackPack_Reward[3301871]["RewardEffect"] = {}
	tJanuary_ComeBackPack_Reward[3301871]["RewardEffect"]["Effect"] = "angelwing"
	tJanuary_ComeBackPack_Reward[3301871]["Talk"] = tJanuary_ComeBackPack_Text[3301871]["Talk"]
	
	-- 侠士回归套装礼盒（赠）
	tJanuary_ComeBackPack_Reward[3301872] = {}
	tJanuary_ComeBackPack_Reward[3301872]["Log"] = "0,0,3301872,1,12000613,2,626029[626029][101009][170009],1[1][1][1]"
	tJanuary_ComeBackPack_Reward[3301872]["DeleteItem"] = {}
	tJanuary_ComeBackPack_Reward[3301872]["DeleteItem"][1] = {}
	tJanuary_ComeBackPack_Reward[3301872]["DeleteItem"][1]["Id"] = 3301872
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"] = {}
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"][1] = {}
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"][1]["Id"] = 626029
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"][2] = {}
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"][2]["Id"] = 626029
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"][2]["Attr"] = "0 1 3"
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"][3] = {}
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"][3]["Id"] = 101009
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"][3]["Attr"] = "0 1 3"
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"][4] = {}
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"][4]["Id"] = 170009
	tJanuary_ComeBackPack_Reward[3301872]["RewardItem"][4]["Attr"] = "0 1 3"
	tJanuary_ComeBackPack_Reward[3301872]["RewardEffect"] = {}
	tJanuary_ComeBackPack_Reward[3301872]["RewardEffect"]["Effect"] = "angelwing"
	tJanuary_ComeBackPack_Reward[3301872]["Talk"] = tJanuary_ComeBackPack_Text[3301872]["Talk"]
	
-- 物品打开部分
local tJanuary_ComeBackPack_OpenItem = {}
	-- 天石聚宝盆
	tJanuary_ComeBackPack_OpenItem[3301873] = {}
	tJanuary_ComeBackPack_OpenItem[3301873]["Log"] = "1000,0,0,0,12000613,2,3,10000"
	tJanuary_ComeBackPack_OpenItem[3301873]["EmoneyLog"] = "350	20442	1000	1000	1	"
	tJanuary_ComeBackPack_OpenItem[3301873]["RewardEMoneyMono"] = {}
	tJanuary_ComeBackPack_OpenItem[3301873]["RewardEMoneyMono"]["Value"] = 10000
	tJanuary_ComeBackPack_OpenItem[3301873]["RewardEffect"] = {}
	tJanuary_ComeBackPack_OpenItem[3301873]["RewardEffect"]["Effect"] = "angelwing"
	tJanuary_ComeBackPack_OpenItem[3301873]["Talk"] = tJanuary_ComeBackPack_Text[3301873]["Talk"]
	
	-- 天石聚宝盆--最后一次
	tJanuary_ComeBackPack_OpenItem[1] = {}
	tJanuary_ComeBackPack_OpenItem[1]["Log"] = "1000,0,3301873,1,12000613,2,3,10000"
	tJanuary_ComeBackPack_OpenItem[1]["EmoneyLog"] = "350	20442	1000	1000	1	"
	tJanuary_ComeBackPack_OpenItem[1]["DeleteItem"] = {}
	tJanuary_ComeBackPack_OpenItem[1]["DeleteItem"][1] = {}
	tJanuary_ComeBackPack_OpenItem[1]["DeleteItem"][1]["Id"] = 3301873
	tJanuary_ComeBackPack_OpenItem[1]["RewardEMoneyMono"] = {}
	tJanuary_ComeBackPack_OpenItem[1]["RewardEMoneyMono"]["Value"] = 10000
	tJanuary_ComeBackPack_OpenItem[1]["RewardEffect"] = {}
	tJanuary_ComeBackPack_OpenItem[1]["RewardEffect"]["Effect"] = "angelwing"
	tJanuary_ComeBackPack_OpenItem[1]["Talk"] = tJanuary_ComeBackPack_Text[3301873]["LastUse"]
	

--------------------------------------逻辑部分-------------------------------------------
-- 获取掩码值
function January_ComeBackPack_GetStcValue(nIndex)
	local nEvent = tJanuary_ComeBackPack_Stc[nIndex]["EventType"]
	local nType = tJanuary_ComeBackPack_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	return nData
end

--设置掩码值
function January_ComeBackPack_SetStcValue(nIndex,nType,nData)
	local nEvent = tJanuary_ComeBackPack_Stc[nIndex]["EventType"]
	local nType = tJanuary_ComeBackPack_Stc[nIndex]["DataType"]
	
	if nType == 1 then
		Task_SetStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	else
		Task_AddStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end
---------------------------------------------------物品使用
function January_ComeBackPack_ExchangeChk(nItemId)
	-- 已超过可换购额度
	local nLimit = tJanuary_ComeBackPack_Stc[1]["Limit"]
	
	local nData = January_ComeBackPack_GetStcValue(1)
	local nEMoney = tJanuary_ComeBackPack_Count["EMoney"]
	
	-- 达到上限
	if nData+1 > nLimit then
		Sys_MsgBox(tJanuary_ComeBackPack_Text[nItemId]["Limit"])
		return false
	end
	
	-- 天石不足
	local nUserEMoney = Get_UserEMoney()
	if nUserEMoney < nEMoney then
		Sys_MsgBox(tJanuary_ComeBackPack_Text[nItemId]["NoEMoney"])
		return false
	end
	
	-- 天石赠已满
	local nEmoneyMono = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = tJanuary_ComeBackPack_OpenItem[nItemId]["RewardEMoneyMono"]["Value"]
	if nEmoneyMono + nAddEmoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tJanuary_ComeBackPack_Text[nItemId]["FullEMoneyMono"])
		return false
	end
	
	return true
end

-- 打开聚宝盆
function January_ComeBackPack_ExchangeMono(nItemId)
	-- 各种条件判断
	if not January_ComeBackPack_ExchangeChk(nItemId) then
		return
	end
	
	-- 二次确认
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 确认换购。
function January_ComeBackPack_SureExchange(nItemId)
	-- 各种条件判断
	if not January_ComeBackPack_ExchangeChk(nItemId) then
		return
	end
	
	local nEMoney = tJanuary_ComeBackPack_Count["EMoney"]
	if not User_AddEMoney(-nEMoney) then
		return
	end
	
	-- 置掩码
	January_ComeBackPack_SetStcValue(1,2,1)
	
	local nData = January_ComeBackPack_GetStcValue(1)
	local nLimit = tJanuary_ComeBackPack_Stc[1]["Limit"]
	-- 给奖励
	-- 如果是第五次删除物品
	if nData == nLimit then
		RewardTemplate_UseItemAndMsg(tJanuary_ComeBackPack_OpenItem[1])
		return
	end
	RewardTemplate_UseItemAndMsg(tJanuary_ComeBackPack_OpenItem[nItemId])
end
--------------------------------------物品模块-------------------------------------------
-- 侠士回归1阶礼盒
tItem[3301867] = tItem[3301867] or {}
tItem[3301867]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_ComeBackPack_Reward[nItemId])
end
-- 侠士回归2阶礼盒
tItem[3301868] = tItem[3301868] or {}
tItem[3301868]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_ComeBackPack_Reward[nItemId])
end
-- 侠士回归3阶礼盒
tItem[3301869] = tItem[3301869] or {}
tItem[3301869]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_ComeBackPack_Reward[nItemId])
end
-- 侠士回归4阶礼盒
tItem[3301870] = tItem[3301870] or {}
tItem[3301870]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_ComeBackPack_Reward[nItemId])
end
-- 侠士回归套装礼盒
tItem[3301871] = tItem[3301871] or {}
tItem[3301871]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_ComeBackPack_Reward[nItemId])
end
-- 侠士回归套装礼盒（赠）
tItem[3301872] = tItem[3301872] or {}
tItem[3301872]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_ComeBackPack_Reward[nItemId])
end
-- 天石聚宝盆
tItem[3301873] = tItem[3301873] or {}
-- tItem[3301873]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tJanuary_ComeBackPack_OpenItem[nItemId])
-- end
tItem[3301873]["Text1-1"] = {111,112}
tItem[3301873]["Text111"] = tJanuary_ComeBackPack_Text[3301873]["Text111"]
tItem[3301873]["Text112"] = tJanuary_ComeBackPack_Text[3301873]["Text112"]
tItem[3301873]["tOption1-1"] = {1,2}
tItem[3301873]["ChkFunc1-1"] = function()
	local nData = January_ComeBackPack_GetStcValue(1)
	local sText = tJanuary_ComeBackPack_Text[3301873]["Text112"]
	tItem[3301873]["Text112"] = string.format(sText,tJanuary_ComeBackPack_Stc[1]["Limit"]-nData)
	return true
end
tItem[3301873]["Option1"] = tJanuary_ComeBackPack_Text[3301873]["Option1"]
tItem[3301873]["Option2"] = tJanuary_ComeBackPack_Text[3301873]["Option2"]
-- 换购天石（1000天石）。
tItem[3301873]["OptionFunc1"]="January_ComeBackPack_ExchangeMono</N>3301873"


-- 换购天石
tItem[3301873]["Text2-1"] = {211,212}
tItem[3301873]["Text211"] = tJanuary_ComeBackPack_Text[3301873]["Text211"]
tItem[3301873]["Text212"] = tJanuary_ComeBackPack_Text[3301873]["Text212"] 
tItem[3301873]["tOption2-1"] = {3,4}
tItem[3301873]["Option3"] = tJanuary_ComeBackPack_Text[3301873]["Option3"]
tItem[3301873]["Option4"] = tJanuary_ComeBackPack_Text[3301873]["Option4"]
-- 确认换购。
tItem[3301873]["OptionFunc3"]="January_ComeBackPack_SureExchange</N>3301873"





