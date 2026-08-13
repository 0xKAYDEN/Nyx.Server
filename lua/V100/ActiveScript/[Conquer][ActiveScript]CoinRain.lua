------------------------------------------------------------------------------------
--Name：	190725[英文征服][活动脚本]德州金币雨
--Creator:	洪聪敏
--Created:	2019/07/25
------------------------------------------------------------------------------------
--命名前缀：CoinRain_
--logid：12001536
--luaini：41416
--动态码：53525
--        data0：记录本轮刷新的金币包数量
--        data1：记录本来刷新的金币总额
--        data2: 服务器标识


------------------------------------------------------------------------------------


local tCoinRain_Cont = {}
--最小金币包ID
tCoinRain_Cont["MinItem"] = 3313337
--可以掉落最大金币数
tCoinRain_Cont["MaxCoin"] = 2040000
--可以掉落最大包数
tCoinRain_Cont["MaxDroNum"] = 200
--开启金币雨必须达到的人数
tCoinRain_Cont["PlayerNum"] = 100
--全服公告寻路
tCoinRain_Cont["MapId"] = 1002
tCoinRain_Cont["PosX"] = 349
tCoinRain_Cont["PosY"] = 438
--刷新金币地点
tCoinRain_Cont["DroItem"] = {}
tCoinRain_Cont["DroItem"]["MapId"] = 3053
tCoinRain_Cont["DroItem"]["PosX"] = 192 
tCoinRain_Cont["DroItem"]["PosY"] = 230 
tCoinRain_Cont["DroItem"]["Cellx"] = 80
tCoinRain_Cont["DroItem"]["Celly"] = 80
tCoinRain_Cont["DroItem"]["ExistTime"] = 600
 
tCoinRain_Cont["Global"] = {}
tCoinRain_Cont["Global"]["Id"] = 53525
tCoinRain_Cont["Global"]["Num"] = 0
tCoinRain_Cont["Global"]["Coin"] = 1
tCoinRain_Cont["Global"]["Server"] = 3

tCoinRain_Cont["Money"] = {}
tCoinRain_Cont["Money"][3313337] = 10000
tCoinRain_Cont["Money"][3313338] = 50000
-- tCoinRain_Cont["Money"][3313339] = 100000
tCoinRain_Cont["Money"][3315615] = 20000
tCoinRain_Cont["Money"][3313340] = 0
tCoinRain_Cont["Money"][3313341] = 0


--掉落金币金额临时表 金币50W记录一次动态码 金币包50记录一次到动态码
local tCoinRain_DroNum = {}

----log
local tCoinRain_Log = {}
tCoinRain_Log["DroItem"] = "0,0,0,0,12001536,2,%d,%d"
tCoinRain_Log["LogFile"] = "gmlog/action_festival_log"
-------------------------------------------------------------------------------------------------
--掉落配置表
local tCoinRain_Probabil = {}
	tCoinRain_Probabil[1] = {}
	tCoinRain_Probabil[1][1] = {}
	tCoinRain_Probabil[1][1]["ItemChanceSum"] = 10000
	
	--1W
	tCoinRain_Probabil[1][1][1] = {}
	tCoinRain_Probabil[1][1][1]["RandomItemChanceType"] = 2
	tCoinRain_Probabil[1][1][1]["ItemChance"] = 7000
	tCoinRain_Probabil[1][1][1]["Item_1"] = 3313337
	--2W
	tCoinRain_Probabil[1][1][2] = {}
	tCoinRain_Probabil[1][1][2]["RandomItemChanceType"] = 2
	tCoinRain_Probabil[1][1][2]["ItemChance"] = 1800
	tCoinRain_Probabil[1][1][2]["Item_1"] = 3315615
	-- tCoinRain_Probabil[1][1][2]["Item_1"] = 3313338
	--5W金币
	tCoinRain_Probabil[1][1][3] = {}
	tCoinRain_Probabil[1][1][3]["RandomItemChanceType"] = 2
	tCoinRain_Probabil[1][1][3]["ItemChance"] = 500
	tCoinRain_Probabil[1][1][3]["Item_1"] = 3313338
	--100000锦标赛门票（赠）包
	tCoinRain_Probabil[1][1][4] = {}
	tCoinRain_Probabil[1][1][4]["RandomItemChanceType"] = 2
	tCoinRain_Probabil[1][1][4]["ItemChance"] = 600
	tCoinRain_Probabil[1][1][4]["Item_1"] = 3313340
	--1天时效FlushOfHearts（赠）包
	tCoinRain_Probabil[1][1][5] = {}
	tCoinRain_Probabil[1][1][5]["RandomItemChanceType"] = 2
	tCoinRain_Probabil[1][1][5]["ItemChance"] = 100
	tCoinRain_Probabil[1][1][5]["Item_1"] = 3313341
--物品奖励
local tCoinRain_Reward = {}
	-- ===10000CoinBag
	-- ===删除: 3313337,1
	-- ===索引: tCoinRain_Reward[3313337]
	tCoinRain_Reward[3313337] = {}
	tCoinRain_Reward[3313337]["LogId"] = 12001536
	tCoinRain_Reward[3313337]["DeleteItem"] = {}
	tCoinRain_Reward[3313337]["DeleteItem"][1] = {}
	tCoinRain_Reward[3313337]["DeleteItem"][1]["Id"] = 3313337 -- 【库】10000CoinBag[属性:9]
	tCoinRain_Reward[3313337]["RewardMoney"] = {}
	tCoinRain_Reward[3313337]["RewardMoney"]["Value"] = 10000 -- 金币, 【需求】金币
	tCoinRain_Reward[3313337]["RewardEffect"] = {}
	tCoinRain_Reward[3313337]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinRain_Reward[3313337]["RewardEffect"]["Effect"] = "angelwing"



	-- ===50000CoinBag
	-- ===删除: 3313338,1
	-- ===索引: tCoinRain_Reward[3313338]
	tCoinRain_Reward[3313338] = {}
	tCoinRain_Reward[3313338]["LogId"] = 12001536
	tCoinRain_Reward[3313338]["DeleteItem"] = {}
	tCoinRain_Reward[3313338]["DeleteItem"][1] = {}
	tCoinRain_Reward[3313338]["DeleteItem"][1]["Id"] = 3313338 -- 【库】50000CoinBag[属性:9]
	tCoinRain_Reward[3313338]["RewardMoney"] = {}
	tCoinRain_Reward[3313338]["RewardMoney"]["Value"] = 50000 -- 金币, 【需求】金币
	tCoinRain_Reward[3313338]["RewardEffect"] = {}
	tCoinRain_Reward[3313338]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinRain_Reward[3313338]["RewardEffect"]["Effect"] = "angelwing"



	-- ===100000CoinBag
	-- ===删除: 3313339,1
	-- ===索引: tCoinRain_Reward[3313339]
	tCoinRain_Reward[3313339] = {}
	tCoinRain_Reward[3313339]["LogId"] = 12001536
	tCoinRain_Reward[3313339]["DeleteItem"] = {}
	tCoinRain_Reward[3313339]["DeleteItem"][1] = {}
	tCoinRain_Reward[3313339]["DeleteItem"][1]["Id"] = 3313339 -- 【库】100000CoinBag[属性:9]
	tCoinRain_Reward[3313339]["RewardMoney"] = {}
	tCoinRain_Reward[3313339]["RewardMoney"]["Value"] = 100000 -- 金币, 【需求】金币
	tCoinRain_Reward[3313339]["RewardEffect"] = {}
	tCoinRain_Reward[3313339]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinRain_Reward[3313339]["RewardEffect"]["Effect"] = "angelwing"



	-- ===10万锦标赛门票赠
	-- ===删除: 3313340,1
	-- ===索引: tCoinRain_Reward[3313340]
	tCoinRain_Reward[3313340] = {}
	tCoinRain_Reward[3313340]["LogId"] = 12001536
	tCoinRain_Reward[3313340]["DeleteItem"] = {}
	tCoinRain_Reward[3313340]["DeleteItem"][1] = {}
	tCoinRain_Reward[3313340]["DeleteItem"][1]["Id"] = 3313340 -- 【库】100KTicket(B)Bag[属性:9]
	tCoinRain_Reward[3313340]["RewardItem"] = {}
	tCoinRain_Reward[3313340]["RewardItem"][1] = {}
	tCoinRain_Reward[3313340]["RewardItem"][1]["Id"] = 3307119 -- 【库】100KTicket[属性:9], 【表格】10万锦标赛门票赠
	tCoinRain_Reward[3313340]["RewardItem"][1]["Attr"] = "0 1" -- 100KTicket*1
	tCoinRain_Reward[3313340]["RewardEffect"] = {}
	tCoinRain_Reward[3313340]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinRain_Reward[3313340]["RewardEffect"]["Effect"] = "angelwing"



	-- ===1天时效FlushOfHearts
	-- ===删除: 3313341,1
	-- ===索引: tCoinRain_Reward[3313341]
	tCoinRain_Reward[3313341] = {}
	tCoinRain_Reward[3313341]["LogId"] = 12001536
	tCoinRain_Reward[3313341]["DeleteItem"] = {}
	tCoinRain_Reward[3313341]["DeleteItem"][1] = {}
	tCoinRain_Reward[3313341]["DeleteItem"][1]["Id"] = 3313341 -- 【库】1~Days~FlushofHearts[属性:9]
	tCoinRain_Reward[3313341]["RewardItem"] = {}
	tCoinRain_Reward[3313341]["RewardItem"][1] = {}
	tCoinRain_Reward[3313341]["RewardItem"][1]["Id"] = 193715 -- 【库】FlushofHearts[属性:0], 【表格】FlushOfHearts
	tCoinRain_Reward[3313341]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FlushofHearts（赠）*1
	tCoinRain_Reward[3313341]["RewardEffect"] = {}
	tCoinRain_Reward[3313341]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinRain_Reward[3313341]["RewardEffect"]["Effect"] = "angelwing"

	-- ===30天时效ArabicPride
	-- ===删除: 3315984,1
	-- ===索引: tCoinRain_Reward[3315984]
	tCoinRain_Reward[3315984] = {}
	tCoinRain_Reward[3315984]["LogId"] = 12001536
	tCoinRain_Reward[3315984]["DeleteItem"] = {}
	tCoinRain_Reward[3315984]["DeleteItem"][1] = {}
	tCoinRain_Reward[3315984]["DeleteItem"][1]["Id"] = 3315984 -- 【库】30~Days~ArabicPride[属性:9]
	tCoinRain_Reward[3315984]["RewardItem"] = {}
	tCoinRain_Reward[3315984]["RewardItem"][1] = {}
	tCoinRain_Reward[3315984]["RewardItem"][1]["Id"] = 189645 -- 【库】ArabicPride[属性:0], 【表格】ArabicPride
	tCoinRain_Reward[3315984]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ArabicPride（赠）*1
	tCoinRain_Reward[3315984]["RewardEffect"] = {}
	tCoinRain_Reward[3315984]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinRain_Reward[3315984]["RewardEffect"]["Effect"] = "angelwing"




	tCoinRain_Reward[3315615] = {}
	-- ===20000CoinBag
	-- ===删除: 3315615,1
	-- ===索引: tCoinRain_Reward[3315615]
	tCoinRain_Reward[3315615]["LogId"] = 12001536
	tCoinRain_Reward[3315615]["DeleteItem"] = {}
	tCoinRain_Reward[3315615]["DeleteItem"][1] = {}
	tCoinRain_Reward[3315615]["DeleteItem"][1]["Id"] = 3315615 -- 【库】20000SilverPack[属性:9]
	tCoinRain_Reward[3315615]["RewardMoney"] = {}
	tCoinRain_Reward[3315615]["RewardMoney"]["Value"] = 20000 -- 金币, 【需求】金币
	tCoinRain_Reward[3315615]["RewardEffect"] = {}
	tCoinRain_Reward[3315615]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinRain_Reward[3315615]["RewardEffect"]["Effect"] = "angelwing"


------------------------------------------------------------------------------------
--掉落金币
function CoinRain_DropItem()
--判定当前是否超过限制
	local nDroItemId = 0
	local nDroItemNum = 0
	-- 地图批量产生指定物品
	local nMapId = tCoinRain_Cont["DroItem"]["MapId"]
	local nPosX = tCoinRain_Cont["DroItem"]["PosX"]
	local nPosY = tCoinRain_Cont["DroItem"]["PosY"]
	local nCellx = tCoinRain_Cont["DroItem"]["Cellx"]
	local nCelly = tCoinRain_Cont["DroItem"]["Celly"]
	local nExistTime = tCoinRain_Cont["DroItem"]["ExistTime"]
	
	local nNowCoin = 0
	local nNowNum = 0
	local nMoney = 0
	local sLogText = ""

	local nGlobalId = tCoinRain_Cont["Global"]["Id"]
	local nDroNum = Get_SysDynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Num"])
	local nDroCoin = Get_SysDynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Coin"])
	local nServerData = Get_SysDynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Server"])
	
	local nEmoneyData  = tCoinRain_DroNum["DroCoin"] or 0
	local nNumData  = tCoinRain_DroNum["DroNum"] or 0
	
	--活动时间
	if not Sys_ChkFullTime(tActivityTime["CoinRain"]["ActiveTime"]) then
		return
	end
	
	--服务器标识  1:开金币雨 0：不开金币雨
	if nServerData <= 0 then
		return
	end
	
	--判断人数
	local nPlayerNum = Map_GetUserNum(nMapId,0)
	
	
	
	if nPlayerNum < tCoinRain_Cont["PlayerNum"] then
		Sys_SystemBroadcast(tCoinRain_Text["NoEnough"])
		return
	end
	
	--已经达到限量
	if nDroNum + nNumData  >= tCoinRain_Cont["MaxDroNum"] or nDroCoin+nEmoneyData >= tCoinRain_Cont["MaxCoin"] then 
		return
	end
	
	Sys_SystemBroadcast(tCoinRain_Text["BegainBroad"])
	
--最多循环两百轮
	for i = 1,tCoinRain_Cont["MaxDroNum"] do
		local flat,tItem = Probabil_RandomAward(tCoinRain_Probabil[1],1)
		local nItemId = tItem[1]["tAward"][1]["Item_1"]
		nMoney = tCoinRain_Cont["Money"][nItemId]
		
		--获取动态表记录
		nDroNum = Get_SysDynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Num"])
		nDroCoin = Get_SysDynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Coin"])
		--获取临时表记录
		nEmoneyData  = tCoinRain_DroNum["DroCoin"] or 0
		nNumData  = tCoinRain_DroNum["DroNum"] or 0
		
		--当前已掉落金币数 临时表+动态码
		nNowCoin = nDroCoin + nEmoneyData
		nNowNum =  nDroNum + nNumData
		
		--可掉落的金币少于随机到的金币量
		if nMoney + nNowCoin > tCoinRain_Cont["MaxCoin"] then
			--获取本轮可掉落最大量
			local nLimitMoney = tCoinRain_Cont["MaxCoin"] - nNowCoin
			local nLimitNum = tCoinRain_Cont["MaxDroNum"] - nNumData
			--剩余数量金币包全部掉落1W
			nDroItemId = tCoinRain_Cont["MinItem"]
			nDroItemNum = math.floor(nLimitMoney / 10000)
			
			--限制不可掉落超过两百包
			if nDroItemNum > nLimitNum then
				nDroItemNum = nLimitNum
			end
			
			--记录金币数和金币包数到临时表
			Sys_SetSynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Coin"],nNowCoin + nLimitMoney)
			Sys_SetSynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Num"],nNowNum + nDroItemNum)
			
			--记录到log
			sLogText = string.format(tCoinRain_Log["DroItem"],nDroItemId,nDroItemNum)
			SaveCustomLog(tCoinRain_Log["LogFile"],sLogText)
			
			Map_DropMultiItems(nMapId, nDroItemId, nPosX, nPosY, nCellx, nCelly, nDroItemNum, nExistTime)
			return
		else
			nDroItemId = nItemId
			nMoney = tCoinRain_Cont["Money"][nDroItemId]
			nDroItemNum = 1
		end
		
		--当前已掉落金币数
		nAddCoin = nEmoneyData + nMoney 
		nAddNum =  nNumData + nDroItemNum
		--记录到动态表
		tCoinRain_DroNum["DroCoin"] = nAddCoin
		tCoinRain_DroNum["DroNum"] = nAddNum
		--50W和50包记录一次到动态表
		if nAddCoin >= 500000 or nAddNum >= 50 then
			--设置动态表，清空临时表
			Sys_SetSynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Coin"],nAddCoin + nDroCoin)
			Sys_SetSynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Num"],nAddNum + nDroNum)
			
			tCoinRain_DroNum["DroCoin"] = 0
			tCoinRain_DroNum["DroNum"] = 0
		end
		
		--最后一次也记录到动态表
		if nAddNum + nDroNum  >= tCoinRain_Cont["MaxDroNum"] or nAddCoin + nDroCoin >= tCoinRain_Cont["MaxCoin"] then 
			Sys_SetSynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Coin"],nAddCoin + nDroCoin)
			Sys_SetSynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Num"],nAddNum + nDroNum)
			
			tCoinRain_DroNum["DroCoin"] = 0
			tCoinRain_DroNum["DroNum"] = 0
		end
		--记录到log
		sLogText = string.format(tCoinRain_Log["DroItem"],nDroItemId,nDroItemNum)
		SaveCustomLog(tCoinRain_Log["LogFile"],sLogText)
		
		Map_DropMultiItems(nMapId, nDroItemId, nPosX, nPosY, nCellx, nCelly, nDroItemNum, nExistTime)
	end
end

--系统公告
function CoinRain_SysMsg() 
	--清空动态码
	local nGlobalId = tCoinRain_Cont["Global"]["Id"]
	local nMapId = tCoinRain_Cont["DroItem"]["MapId"]
	local nServerData = Get_SysDynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Server"])
	--活动时间
	if not Sys_ChkFullTime(tActivityTime["CoinRain"]["ActiveTime"]) then
		return
	end
	
	--服务器标识  1:开金币雨 0：不开金币雨
	if nServerData <= 0 then
		return
	end
	
	--清空临时表和动态表
	Sys_SetSynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Coin"],0)
	Sys_SetSynaGlobalData(nGlobalId,tCoinRain_Cont["Global"]["Num"],0)
	
	tCoinRain_DroNum["DroCoin"] = 0
	tCoinRain_DroNum["DroNum"] = 0
	
	--德州地图全地图弹窗
	local sFunc = "CoinRain_UserMsg"
	Map_UserExeFunc(nMapId,-1,sFunc)
	
	Sys_SystemBroadcast(tCoinRain_Text["SysBroad"])
end

--点击系统公告寻路
function CoinRain_ClckBroadCast()
	local nUserId = Get_UserId()
	local nMapId = tCoinRain_Cont["MapId"]
	local nPosX = tCoinRain_Cont["PosX"] 
	local nPosY = tCoinRain_Cont["PosY"] 
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)

end
function CoinRain_UserMsg(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	Sys_MsgBox(tCoinRain_Text["BegainBroad"],nil,nil,nUserId)
end
----------------------------------------------------------------------------------------
--物品使用

tItem[3313337] = tItem[3313337] or {}
tItem[3313337]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tCoinRain_Reward[nItemId])
end

tItem[3313338] = tItem[3313337]
tItem[3313339] = tItem[3313337]
tItem[3313340] = tItem[3313337]
tItem[3313341] = tItem[3313337]

tItem[3315615] = tItem[3313337]

tItem[3315984] = tItem[3313337]
----------------------------------------时间自检----------------------------------------

local tCoinRain_OnTime = {}
-- 固定时间，生成金币礼包
	tCoinRain_OnTime[1] = {}
	tCoinRain_OnTime[1]["Type"] = 1
	tCoinRain_OnTime[1]["TimeType"] = 4
	tCoinRain_OnTime[1]["Multiple"] = {}
	tCoinRain_OnTime[1]["Multiple"][1]  = "06:00 06:00"
	tCoinRain_OnTime[1]["Multiple"][2]  = "06:15 06:15"
	tCoinRain_OnTime[1]["Multiple"][3]  = "06:30 06:30"
	tCoinRain_OnTime[1]["Multiple"][4]  = "06:45 06:45"
	tCoinRain_OnTime[1]["Multiple"][5]  = "09:00 09:00"
	tCoinRain_OnTime[1]["Multiple"][6]  = "09:15 09:15"
	tCoinRain_OnTime[1]["Multiple"][7]  = "09:30 09:30"
	tCoinRain_OnTime[1]["Multiple"][8]  = "09:45 09:45"
	tCoinRain_OnTime[1]["Multiple"][9]  = "12:00 12:00"
	tCoinRain_OnTime[1]["Multiple"][10] = "12:15 12:15"
	tCoinRain_OnTime[1]["Multiple"][11] = "12:30 12:30"
	tCoinRain_OnTime[1]["Multiple"][12] = "12:45 12:45"
	tCoinRain_OnTime[1]["Multiple"][13] = "15:00 15:00"
	tCoinRain_OnTime[1]["Multiple"][14] = "15:15 15:15"
	tCoinRain_OnTime[1]["Multiple"][15] = "15:30 15:30"
	tCoinRain_OnTime[1]["Multiple"][16] = "15:45 15:45"
	tCoinRain_OnTime[1]["Func"] = CoinRain_DropItem
-- 活动开始前1分钟，系统公告 清空掩码
	tCoinRain_OnTime[2] = {}
	tCoinRain_OnTime[2]["Type"] = 1
	tCoinRain_OnTime[2]["TimeType"] = 4
	tCoinRain_OnTime[2]["Multiple"] = {}
	tCoinRain_OnTime[2]["Multiple"][1]  = "05:59 05:59"
	tCoinRain_OnTime[2]["Multiple"][2]  = "06:14 06:14"
	tCoinRain_OnTime[2]["Multiple"][3]  = "06:29 06:29"
	tCoinRain_OnTime[2]["Multiple"][4]  = "06:44 06:44"
	tCoinRain_OnTime[2]["Multiple"][5]  = "08:59 08:59"
	tCoinRain_OnTime[2]["Multiple"][6]  = "09:14 09:14"
	tCoinRain_OnTime[2]["Multiple"][7]  = "09:29 09:29"
	tCoinRain_OnTime[2]["Multiple"][8]  = "09:44 09:44"
	tCoinRain_OnTime[2]["Multiple"][9]  = "11:59 11:59"
	tCoinRain_OnTime[2]["Multiple"][10] = "12:14 12:14"
	tCoinRain_OnTime[2]["Multiple"][11] = "12:29 12:29"
	tCoinRain_OnTime[2]["Multiple"][12] = "12:44 12:44"
	tCoinRain_OnTime[2]["Multiple"][13] = "14:59 14:59"
	tCoinRain_OnTime[2]["Multiple"][14] = "15:14 15:14"
	tCoinRain_OnTime[2]["Multiple"][15] = "15:29 15:29"
	tCoinRain_OnTime[2]["Multiple"][16] = "15:44 15:44"
	tCoinRain_OnTime[2]["Func"] = CoinRain_SysMsg


table.insert(tSystemTime_InitialData,tCoinRain_OnTime[1])
table.insert(tSystemTime_InitialData,tCoinRain_OnTime[2])


















