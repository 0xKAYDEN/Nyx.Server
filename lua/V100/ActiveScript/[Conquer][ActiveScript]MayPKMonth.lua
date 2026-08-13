------------------------------------------------------------------------------------
--Name:			160506[英文征服][活动脚本]5月PK月活动制作(5.24-6.24)
--Purpose:		5月PK月活动制作
--Creator:		许乐
--Created:		2016/05/06
------------------------------------------------------------------------------------
-- 前缀
-- MayPKMonth_
-----------------------------------------------------------
-- 掩码说明：
-- stc(144,34)							天下第一活动中 记录当天是否获得了荣耀令牌
-- stc(144,35)							职业PK赛（周一） 
-- stc(144,36)							精英PK赛（周五） 
-- stc(144,37)							组队PK赛（周六） 
-- stc(144,38)							帮战（周六） 
-- stc(144,39)							战旗（周六） 

-- 动态码说明：
-- 每天重置
-- 51141 ：data0	单服每天限30个		LotteryTicket
-- 51141 ：data1	单服每天限20个		Stone +3

-- 活动期间，不可重置
-- 51167 ：data0	单服总计20个		Pernament Stone
-- 51167 ：data1	单服总计3个		Stone +6
-- 51167 ：data2	单服总计1个		iPhone 6s
-- 51167 ：data5	记录区分是否为storm服务器		是==1  否==0

-----------------------------------------------------------
-- #stc:			14431-14440
-- #globalid: 	51141  51167
-- #Logid:		12000361
-- #task_detail:	3689-3690
---------------------------------------------------------------
local tMayPKMonth_Cont = {}
	tMayPKMonth_Cont["Activity"] = "2016-05-24 00:00 2016-06-24 23:59"
	tMayPKMonth_Cont["StormActivity"] = "2016-05-31 00:00 2016-06-24 23:59"

	-- 使用转盘 
	tMayPKMonth_Cont["TaskId"] = {}
	tMayPKMonth_Cont["TaskId"][3100142] = 3698
	tMayPKMonth_Cont["TaskId"][3100143] = 3699
	
	-- 使用转盘的物品id
	tMayPKMonth_Cont["RollItem"] = {}
	tMayPKMonth_Cont["RollItem"][3100142] = 3100142
	tMayPKMonth_Cont["RollItem"][3100143] = 3100143
	
	tMayPKMonth_Cont["GetRollItem"] = {}
	tMayPKMonth_Cont["GetRollItem"][1] = 3100142
	tMayPKMonth_Cont["GetRollItem"][2] = 3100143
	
	tMayPKMonth_Cont["GlobalId"] = 51167
	tMayPKMonth_Cont["GlobalIdClear"] = 51141

local tMayPKMonth_Stc = {}
	tMayPKMonth_Stc["EventType"] = 144
	tMayPKMonth_Stc["DataType"] = {}

	tMayPKMonth_Stc["DataType"][1] = 34			-- 天下第一活动中 记录当天是否获得了荣耀令牌
	tMayPKMonth_Stc["DataType"][2] = 35		-- 职业PK赛（周一）
	tMayPKMonth_Stc["DataType"][3] = 36		-- 精英PK赛（周五）
	tMayPKMonth_Stc["DataType"][4] = 37		-- 组队PK赛（周六）
	tMayPKMonth_Stc["DataType"][5] = 38		-- 帮战（周六）
	tMayPKMonth_Stc["DataType"][6] = 39		-- 战旗（周六）	
	
local tMayPKMonth_Reward = {}
	-- 3100144  年年有余礼包
	tMayPKMonth_Reward[3100144] = {}
	tMayPKMonth_Reward[3100144]["Emoney"] = 3000
	tMayPKMonth_Reward[3100144]["Strength"] = 10000
	tMayPKMonth_Reward[3100144]["Item"] = 3100153
	-- 3100145  丰衣足食礼包
	tMayPKMonth_Reward[3100145] = {}
	tMayPKMonth_Reward[3100145]["Emoney"] = 10000
	tMayPKMonth_Reward[3100145]["Strength"] = 20000
	tMayPKMonth_Reward[3100145]["Item"] = 3100152
	-- 3100146  腰缠万贯礼包
	tMayPKMonth_Reward[3100146] = {}
	tMayPKMonth_Reward[3100146]["Emoney"] = 30000
	tMayPKMonth_Reward[3100146]["Strength"] = 50000
	tMayPKMonth_Reward[3100146]["Item"] = 3100152
	-- 3100147  财运亨通礼包
	tMayPKMonth_Reward[3100147] = {}
	tMayPKMonth_Reward[3100147]["Emoney"] = 50000
	tMayPKMonth_Reward[3100147]["Strength"] = 100000
	tMayPKMonth_Reward[3100147]["Item"] = 3100152
	-- 3100148  贵气逼人礼包
	tMayPKMonth_Reward[3100148] = {}
	tMayPKMonth_Reward[3100148]["Emoney"] = 10000
	tMayPKMonth_Reward[3100148]["Money"] = 100000000
	tMayPKMonth_Reward[3100148]["Item"] = 3100153
	-- 3100149  金玉满堂礼包
	tMayPKMonth_Reward[3100149] = {}
	tMayPKMonth_Reward[3100149]["Emoney"] = 20000
	tMayPKMonth_Reward[3100149]["Money"] = 500000000
	tMayPKMonth_Reward[3100149]["Item"] = 3100152
	-- 3100150  富甲一方礼包
	tMayPKMonth_Reward[3100150] = {}
	tMayPKMonth_Reward[3100150]["Emoney"] = 50000
	tMayPKMonth_Reward[3100150]["Money"] = 2000000000
	tMayPKMonth_Reward[3100150]["Item"] = 3100152
	-- 3100151  富可敌国礼包
	tMayPKMonth_Reward[3100151] = {}
	tMayPKMonth_Reward[3100151]["Emoney"] = 100000
	tMayPKMonth_Reward[3100151]["Money"] = 5000000000
	tMayPKMonth_Reward[3100151]["Item"] = 3100152
	tMayPKMonth_Reward[3100151]["Item_1"] = 723723
	tMayPKMonth_Reward[3100151]["Attr"] = "0 10"
	
	-- 豪华外套礼包 3100152
	tMayPKMonth_Reward[3100152] = {}
	tMayPKMonth_Reward[3100152][193295] = "0 1 0 0 0 0 0 1"
	tMayPKMonth_Reward[3100152][188675] = "0 1 0 0 0 0 0 1"
	-- 精装外套礼包 3100153
	tMayPKMonth_Reward[3100153] = {}
	tMayPKMonth_Reward[3100153][193295] = "0 1 0 0 0 0 0 1"
	tMayPKMonth_Reward[3100153][188675] = "0 1 0 259200 0 0 0 1"
	
	-- 3100159
	tMayPKMonth_Reward[3100159] = {}
	tMayPKMonth_Reward[3100159]["Item"] = 3003125
	tMayPKMonth_Reward[3100159]["Attr"] = "0 30 3"

	-- 3100154	小抽奖券福星包
	tMayPKMonth_Reward[3100154] = {}
	tMayPKMonth_Reward[3100154][1] = {}
	tMayPKMonth_Reward[3100154][1]["ItemChanceSum"] = 10000
	--100 CP（B）
	tMayPKMonth_Reward[3100154][1][1] = {}
	tMayPKMonth_Reward[3100154][1][1]["RandomItemChanceType"] = 2
	tMayPKMonth_Reward[3100154][1][1]["ItemChance"] = 5000
	tMayPKMonth_Reward[3100154][1][1]["Item_1"] = User_AddEMoneyMono
	tMayPKMonth_Reward[3100154][1][1]["Data"] = 100
	-- LotteryTicket
	tMayPKMonth_Reward[3100154][1][2] = {}
	tMayPKMonth_Reward[3100154][1][2]["RandomItemChanceType"] = 2
	tMayPKMonth_Reward[3100154][1][2]["ItemChance"] = 5000
	tMayPKMonth_Reward[3100154][1][2]["Item_1"] = Item_AddNewItem
	tMayPKMonth_Reward[3100154][1][2]["Data"] = 710212
	tMayPKMonth_Reward[3100154][1][2]["Attr"] = "0 4 3"
	tMayPKMonth_Reward[3100154][1][2]["Limit"] = 30
	tMayPKMonth_Reward[3100154][1][2]["Pos"] = 0
	tMayPKMonth_Reward[3100154][1][2]["Global"] = 51141
	tMayPKMonth_Reward[3100154][1][2]["Replace"] = 100

	-- 3100155	+3赤炼石福星包
	tMayPKMonth_Reward[3100155] = {}
	tMayPKMonth_Reward[3100155][1] = {}
	tMayPKMonth_Reward[3100155][1]["ItemChanceSum"] = 10000
	--100 CP（B）
	tMayPKMonth_Reward[3100155][1][1] = {}
	tMayPKMonth_Reward[3100155][1][1]["RandomItemChanceType"] = 2
	tMayPKMonth_Reward[3100155][1][1]["ItemChance"] = 5000
	tMayPKMonth_Reward[3100155][1][1]["Item_1"] = User_AddEMoneyMono
	tMayPKMonth_Reward[3100155][1][1]["Data"] = 100
	-- Stone +3
	tMayPKMonth_Reward[3100155][1][2] = {}
	tMayPKMonth_Reward[3100155][1][2]["RandomItemChanceType"] = 2
	tMayPKMonth_Reward[3100155][1][2]["ItemChance"] = 5000
	tMayPKMonth_Reward[3100155][1][2]["Item_1"] = Item_AddNewItem
	tMayPKMonth_Reward[3100155][1][2]["Data"] = 730003
	tMayPKMonth_Reward[3100155][1][2]["Attr"] = "0 1"
	tMayPKMonth_Reward[3100155][1][2]["Limit"] = 20
	tMayPKMonth_Reward[3100155][1][2]["Pos"] = 1
	tMayPKMonth_Reward[3100155][1][2]["Global"] = 51141
	tMayPKMonth_Reward[3100155][1][2]["Replace"] = 100
	
	-- 3100156	固化石福星包
	tMayPKMonth_Reward[3100156] = {}
	tMayPKMonth_Reward[3100156][1] = {}
	tMayPKMonth_Reward[3100156][1]["ItemChanceSum"] = 10000
	--200 CP（B）
	tMayPKMonth_Reward[3100156][1][1] = {}
	tMayPKMonth_Reward[3100156][1][1]["RandomItemChanceType"] = 2
	tMayPKMonth_Reward[3100156][1][1]["ItemChance"] = 7000
	tMayPKMonth_Reward[3100156][1][1]["Item_1"] = User_AddEMoneyMono
	tMayPKMonth_Reward[3100156][1][1]["Data"] = 200
	-- Pernament Stone
	tMayPKMonth_Reward[3100156][1][2] = {}
	tMayPKMonth_Reward[3100156][1][2]["RandomItemChanceType"] = 2
	tMayPKMonth_Reward[3100156][1][2]["ItemChance"] = 3000
	tMayPKMonth_Reward[3100156][1][2]["Item_1"] = Item_AddNewItem
	tMayPKMonth_Reward[3100156][1][2]["Data"] = 723694
	tMayPKMonth_Reward[3100156][1][2]["Attr"] = "0 1"
	tMayPKMonth_Reward[3100156][1][2]["Limit"] = 20
	tMayPKMonth_Reward[3100156][1][2]["Pos"] = 0
	tMayPKMonth_Reward[3100156][1][2]["Global"] = 51167
	tMayPKMonth_Reward[3100156][1][2]["Replace"] = 200
	
	-- 3100157	+6赤炼石福星包
	tMayPKMonth_Reward[3100157] = {}
	tMayPKMonth_Reward[3100157][1] = {}
	tMayPKMonth_Reward[3100157][1]["ItemChanceSum"] = 10000
	--500 CP（B）
	tMayPKMonth_Reward[3100157][1][1] = {}
	tMayPKMonth_Reward[3100157][1][1]["RandomItemChanceType"] = 2
	tMayPKMonth_Reward[3100157][1][1]["ItemChance"] = 8500
	tMayPKMonth_Reward[3100157][1][1]["Item_1"] = User_AddEMoneyMono
	tMayPKMonth_Reward[3100157][1][1]["Data"] = 500
	-- Stone +6
	tMayPKMonth_Reward[3100157][1][2] = {}
	tMayPKMonth_Reward[3100157][1][2]["RandomItemChanceType"] = 2
	tMayPKMonth_Reward[3100157][1][2]["ItemChance"] = 1500
	tMayPKMonth_Reward[3100157][1][2]["Item_1"] = Item_AddNewItem
	tMayPKMonth_Reward[3100157][1][2]["Data"] = 730006
	tMayPKMonth_Reward[3100157][1][2]["Attr"] = "0 1"
	tMayPKMonth_Reward[3100157][1][2]["Limit"] = 3
	tMayPKMonth_Reward[3100157][1][2]["Pos"] = 1
	tMayPKMonth_Reward[3100157][1][2]["Global"] = 51167
	tMayPKMonth_Reward[3100157][1][2]["Replace"] = 500
	
	-- 3100158	iPhone6s福星包
	tMayPKMonth_Reward[3100158] = {}
	tMayPKMonth_Reward[3100158][1] = {}
	tMayPKMonth_Reward[3100158][1]["ItemChanceSum"] = 10000
	--1000 CP（B）
	tMayPKMonth_Reward[3100158][1][1] = {}
	tMayPKMonth_Reward[3100158][1][1]["RandomItemChanceType"] = 2
	tMayPKMonth_Reward[3100158][1][1]["ItemChance"] = 7000
	tMayPKMonth_Reward[3100158][1][1]["Item_1"] = User_AddEMoneyMono
	tMayPKMonth_Reward[3100158][1][1]["Data"] = 1000
	-- iPhone 6s
	tMayPKMonth_Reward[3100158][1][2] = {}
	tMayPKMonth_Reward[3100158][1][2]["RandomItemChanceType"] = 2
	tMayPKMonth_Reward[3100158][1][2]["ItemChance"] = 3000
	tMayPKMonth_Reward[3100158][1][2]["Item_1"] = Item_AddNewItem
	tMayPKMonth_Reward[3100158][1][2]["Data"] = 3100141
	tMayPKMonth_Reward[3100158][1][2]["Attr"] = "0 1 3"
	tMayPKMonth_Reward[3100158][1][2]["Limit"] = 1
	tMayPKMonth_Reward[3100158][1][2]["Pos"] = 2
	tMayPKMonth_Reward[3100158][1][2]["Global"] = 51167
	tMayPKMonth_Reward[3100158][1][2]["Replace"] = 1000
	
local tMayPKMonth_Log = {}
	tMayPKMonth_Log["GetItem"] = "0,0,%d,1,12000361,2,%d,1"				-- 使用外套礼包获得外套
	tMayPKMonth_Log["UsePackage"] = "0,0,%d,1,12000361,2,%d[%d][%d],%d[%d][%d]"		--使用发奖action的8个礼包
	tMayPKMonth_Log["RandReward"] = "0,0,%d,1,12000361,2,%d,%d"				-- 使用福星包随机获得奖励
	tMayPKMonth_Log["Roulette"] = "0,0,%d,1,12000276,2,0,0"		-- 使用转盘
	tMayPKMonth_Log["GetKey"] = "0,0,0,0,12000361,2[%d],%d,1"		-- 从其他活动中获得幸运百宝盘

local tMayPKMonth_Effect = {}
	tMayPKMonth_Effect[1] = "self"
	tMayPKMonth_Effect[2] = "Anglewing"
	
-- 各种PK赛的地图
local tMayPKMonth_Map = {}
	-- 职业PK赛（周一）
	tMayPKMonth_Map[2] = {3012,3013,3014,3015,3000,3001,3002,3003,
											3004,3005,3006,3007,3008,3009,3010,3011,
											3016,3017,3018,3019,9903,9904,9905,9906,
											3862,3863,3864,3865,1500,1501,1502,1947,
											1837,1838,1839,1948}

	-- 精英PK赛（周五）地图
	tMayPKMonth_Map[3] = {2075,2076,2077,2078}
	
	-- 组队PK赛（周六）地图
	tMayPKMonth_Map[4] = {2085,2086,2087,2088}
	
	-- 帮战（周六）地图
	tMayPKMonth_Map[5] = {1038}

	-- 战旗（周六）地图
	tMayPKMonth_Map[6] = {2057}
	
local tMayPKMonth_ChkTime = {}
	tMayPKMonth_ChkTime[5] = "6 12:00 6 14:59"
	tMayPKMonth_ChkTime[6] = "6 20:59 6 22:00"
	
------------------------------------------------逻辑部分-------------------------------------------------
-- 在其他活动中执行
-- 参赛并成功击杀其他玩家/水道参赛即可获得
-- 每天仅可获得一枚钥匙
function MayPKMonth_OtherActivityFunc(nActiveType)
	if Sys_ChkFullTime(tMayPKMonth_Cont["Activity"]) then
		if not User_CheckLeftSpace(1) then
			return
		end
		
		-- 活动中 记录当天是否获得了荣耀令牌
		local nKeyEvent = tMayPKMonth_Stc["EventType"]
		local nKeyType = tMayPKMonth_Stc["DataType"][nActiveType]
		
		if Task_ChkStcValue(nKeyEvent,nKeyType,">",0) then
			if Task_StcInterval(nKeyEvent,nKeyType,1,4) then
				Task_SetStatistic(nKeyEvent,nKeyType,0,1,0)
				Task_SetStcTimestamp(nKeyEvent,nKeyType,0,0)
			else
				return
			end
		end
		
		local nItemId = tMayPKMonth_Cont["GetRollItem"][1]
		local nGlobalId = tMayPKMonth_Cont["GlobalId"]
		local nServer = Get_SysDynaGlobalData(nGlobalId,5)
		-- 5.31号只给Storm服务器刷新该版本
		if nServer >= 1 and Sys_ChkFullTime(tMayPKMonth_Cont["StormActivity"]) then
			nItemId = tMayPKMonth_Cont["GetRollItem"][2]
		end
		
		Task_SetStatistic(nKeyEvent,nKeyType,1,1,0)
		Task_SetStcTimestamp(nKeyEvent,nKeyType,0,0)

		Item_AddNewItem(nItemId,"")
		User_TalkChannel2005(tMayPKMonth_Text["GetKey"])
		Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["GetKey"],nActiveType,nItemId))
	end
end

-- 参与活动判断水道职业
function MayPKMonth_OtherActivityFuncCheckPro(nActiveType)
	if Sys_ChkFullTime(tMayPKMonth_Cont["Activity"]) then
		local nProFes = Get_UserProfession()
		if nProFes >= 132 and nProFes <= 135 then		--水道
			MayPKMonth_OtherActivityFunc(nActiveType)
		end
	end
end

-- 杀人触发函数
function MayPKMonth_OtherActivityFuncKill()
	if Sys_ChkFullTime(tMayPKMonth_Cont["Activity"]) then
		local nMapId = Get_UserMapId()
		for k = 2,6 do
			local nMapDoc = Get_MapDoc(nMapId)
			local sMapName = Get_MapName(nMapId)

			if k == 3 then		
				if nMapDoc == 900000 and sMapName == tMayPKMonth_Text["EliteName"] then					
					local nKeyEvent = tMayPKMonth_Stc["EventType"]
					local nKeyType = tMayPKMonth_Stc["DataType"][k]

					if not User_CheckLeftSpace(1) then
						return
					end

					if Task_ChkStcValue(nKeyEvent,nKeyType,">",0) then
						if Task_StcInterval(nKeyEvent,nKeyType,1,4) then
							Task_SetStatistic(nKeyEvent,nKeyType,0,1,0)
							Task_SetStcTimestamp(nKeyEvent,nKeyType,0,0)
						else
							return
						end
					end

					local nItemId = tMayPKMonth_Cont["GetRollItem"][1]
					local nGlobalId = tMayPKMonth_Cont["GlobalId"]
					local nServer = Get_SysDynaGlobalData(nGlobalId,5)
					
					-- 5.31号只给Storm服务器刷新该版本
					if nServer >= 1 and Sys_ChkFullTime(tMayPKMonth_Cont["StormActivity"]) then
						nItemId = tMayPKMonth_Cont["GetRollItem"][2]
					end
					
					Task_SetStatistic(nKeyEvent,nKeyType,1,1,0)
					Task_SetStcTimestamp(nKeyEvent,nKeyType,0,0)

					Item_AddNewItem(nItemId,"")
					User_TalkChannel2005(tMayPKMonth_Text["GetKey"])
					Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["GetKey"],k,nItemId))

				end
			elseif k == 4 then
				if nMapDoc == 900000 and sMapName == tMayPKMonth_Text["TeamName"] then
					local nKeyEvent = tMayPKMonth_Stc["EventType"]
					local nKeyType = tMayPKMonth_Stc["DataType"][k]

					if not User_CheckLeftSpace(1) then
						return
					end

					if Task_ChkStcValue(nKeyEvent,nKeyType,">",0) then
						if Task_StcInterval(nKeyEvent,nKeyType,1,4) then
							Task_SetStatistic(nKeyEvent,nKeyType,0,1,0)
							Task_SetStcTimestamp(nKeyEvent,nKeyType,0,0)
						else
							return
						end
					end

					local nItemId = tMayPKMonth_Cont["GetRollItem"][1]
					local nGlobalId = tMayPKMonth_Cont["GlobalId"]
					local nServer = Get_SysDynaGlobalData(nGlobalId,5)
					
					-- 5.31号只给Storm服务器刷新该版本
					if nServer >= 1 and Sys_ChkFullTime(tMayPKMonth_Cont["StormActivity"]) then
						nItemId = tMayPKMonth_Cont["GetRollItem"][2]
					end
					
					Task_SetStatistic(nKeyEvent,nKeyType,1,1,0)
					Task_SetStcTimestamp(nKeyEvent,nKeyType,0,0)

					Item_AddNewItem(nItemId,"")
					User_TalkChannel2005(tMayPKMonth_Text["GetKey"])
					Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["GetKey"],k,nItemId))
					
				end
			elseif k == 5 or k == 6 then		-- 判断每种比赛的时间
				if Sys_ChkWeedTime(tMayPKMonth_ChkTime[k]) then
					for i,v in pairs(tMayPKMonth_Map[k]) do
						if nMapId == v then
							local nKeyEvent = tMayPKMonth_Stc["EventType"]
							local nKeyType = tMayPKMonth_Stc["DataType"][k]

							if not User_CheckLeftSpace(1) then
								return
							end

							if Task_ChkStcValue(nKeyEvent,nKeyType,">",0) then
								if Task_StcInterval(nKeyEvent,nKeyType,1,4) then
									Task_SetStatistic(nKeyEvent,nKeyType,0,1,0)
									Task_SetStcTimestamp(nKeyEvent,nKeyType,0,0)
								else
									return
								end
							end

							local nItemId = tMayPKMonth_Cont["GetRollItem"][1]
							local nGlobalId = tMayPKMonth_Cont["GlobalId"]
							local nServer = Get_SysDynaGlobalData(nGlobalId,5)
							
							-- 5.31号只给Storm服务器刷新该版本
							if nServer >= 1 and Sys_ChkFullTime(tMayPKMonth_Cont["StormActivity"]) then
								nItemId = tMayPKMonth_Cont["GetRollItem"][2]
							end
							
							Task_SetStatistic(nKeyEvent,nKeyType,1,1,0)
							Task_SetStcTimestamp(nKeyEvent,nKeyType,0,0)

							Item_AddNewItem(nItemId,"")
							User_TalkChannel2005(tMayPKMonth_Text["GetKey"])
							Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["GetKey"],k,nItemId))
							
						end
					end
				end
			end
		end
	end
end	

------------------------------------------------使用物品逻辑-------------------------------------------------
-- 统一显示使用物品的101提示
function MayPKMonth_ShowDialog(nIndex,nSpace)
	if nSpace == "" then
		nSpace = 0
	end
	if nIndex == 1 then
		Sys_DialogText(string.format(tMayPKMonth_Text["Item"]["Text1"..nIndex.."1"],nSpace))
	else
		Sys_DialogText(tMayPKMonth_Text["Item"]["Text1"..nIndex.."1"])
	end
	Sys_DialogOption(tMayPKMonth_Text["Item"]["Option"..nIndex],"</F>NULL")
	Sys_DialogEnd()
end

-- 使用发奖action的8个礼包
function MayPKMonth_UsePackage(nItemId)
	if Item_ChkItem(nItemId) then
		-- 判断背包
		if nItemId == 3100151 then
			if not User_CheckLeftSpace(11) then
				MayPKMonth_ShowDialog(1,11)				
				return
			end
		else
			if not User_CheckLeftSpace(1) then
				MayPKMonth_ShowDialog(1,1)				
				return
			end
		end
		
		-- 判断天石数量
		local nAddEmoney = tMayPKMonth_Reward[nItemId]["Emoney"]
		local nEmoney = Get_UserEMoney()
		if nAddEmoney + nEmoney >= G_User_MaxEmoney then
			MayPKMonth_ShowDialog(2)				
			return
		end
	
		local nAddStrength = 0
		local nAddMoney = 0
		local nMoneyItem = 0
		local sAttr = ""
		if nItemId >= 3100144 and nItemId <= 3100147 then
			nAddStrength = tMayPKMonth_Reward[nItemId]["Strength"]
		elseif nItemId == 3100151 then
			nMoneyItem = tMayPKMonth_Reward[nItemId]["Item_1"]
			sAttr = tMayPKMonth_Reward[nItemId]["Attr"]
		else
			-- 银两满
			nAddMoney = tMayPKMonth_Reward[nItemId]["Money"]
			if not User_CanPutMoney2Bag(nAddMoney) then
				MayPKMonth_ShowDialog(3)				
				return
			end
		end
		
		local nAddItem = tMayPKMonth_Reward[nItemId]["Item"]
		local sStr1 = ""
		local sStr2 = ""
		local sStr3 = ""
		
		if Item_DelItem(nItemId) then
			if nItemId >= 3100144 and nItemId <= 3100147 then
				User_AddEMoney(nAddEmoney)
				User_AddStrengthValue(nAddStrength)
				Item_AddNewItem(nAddItem,"")
				Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["UsePackage"],nItemId,2,12,nAddItem,nAddEmoney,nAddStrength,1))
				sStr1 = string.format(tMayPKMonth_Text["Item"]["Emoney"],tostring(nAddEmoney))
				sStr2 = string.format(tMayPKMonth_Text["Item"]["Strength"],tostring(nAddStrength))
				sStr3 = string.format(tMayPKMonth_Text["Item"]["Item"],tMayPKMonth_Text["Item"][nAddItem])
			elseif nItemId == 3100151 then			-- 富可敌国礼包 (50亿金币分为给10个723723  5亿金币包)
				User_AddEMoney(nAddEmoney)
				Item_AddNewItem(nAddItem,"")
				Item_AddNewItem(nMoneyItem,sAttr)
				Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["UsePackage"],nItemId,2,nMoneyItem,nAddItem,nAddEmoney,10,1))
				sStr1 = string.format(tMayPKMonth_Text["Item"]["Emoney"],tostring(nAddEmoney))
				sStr2 = tMayPKMonth_Text["Item"]["MoneyItem"]
				sStr3 = string.format(tMayPKMonth_Text["Item"]["Item"],tMayPKMonth_Text["Item"][nAddItem])
			else
				User_AddEMoney(nAddEmoney)
				User_AddMoney(nAddMoney)
				Item_AddNewItem(nAddItem,"")
				Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["UsePackage"],nItemId,2,1,nAddItem,nAddEmoney,nAddMoney,1))
				sStr1 = string.format(tMayPKMonth_Text["Item"]["Emoney"],tostring(nAddEmoney))
				sStr2 = string.format(tMayPKMonth_Text["Item"]["Money"],tostring(nAddMoney))
				sStr3 = string.format(tMayPKMonth_Text["Item"]["Item"],tMayPKMonth_Text["Item"][nAddItem])
			end
			User_TalkChannel2005(string.format(tMayPKMonth_Text["Item"]["GetReward"],sStr1,sStr2,sStr3))
			User_EffectAdd(tMayPKMonth_Effect[1],tMayPKMonth_Effect[2])
		end
	end
end

-- 使用外套礼包 3100152 3100153
function MayPKMonth_UseCoatPack(nItemId,nChoose)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local sAttr = tMayPKMonth_Reward[nItemId][nChoose]
		Item_AddNewItem(nChoose,sAttr)
		local sAwardName = tMayPKMonth_Text["Item"][nChoose]
		User_TalkChannel2005(string.format(tMayPKMonth_Text[nItemId]["Success"],sAwardName))
		Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["GetItem"],nItemId,nChoose))
		User_EffectAdd(tMayPKMonth_Effect[1],tMayPKMonth_Effect[2])
	end
end

-- 打开 转盘界面
function MayPKMonth_UseRollItem(nItemId)
	local nTaskId = tMayPKMonth_Cont["TaskId"][nItemId]
	local nOpt = 0
	
	-- 判断任务是否可以创建
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			User_TalkChannel2005(tMayPKMonth_Text["Limit"])
			return
		end
	end
	
	User_TaskReward(nTaskId,nOpt)
end

--轮盘抽奖
function MayPKMonth_UseRoulette(nItemId)
	local nTaskId = tMayPKMonth_Cont["TaskId"][nItemId]
	
	--轮盘抽奖
		if nItemId == tMayPKMonth_Cont["RollItem"][nItemId]then
			if  not User_CheckLeftSpace(1) then
				User_TalkChannel2005(tMayPKMonth_Text["BagFull"])
				return
			end
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				-- 任务掩码是否存在 1056
				if not Task_ChkTaskDetail(nTaskId) then
					-- 新增任务掩码 
					Task_AddTaskDetail(nTaskId)
				end
				-- Task_SetTaskDetailCompleteFlag(nTaskId,1)
				User_TaskReward(nTaskId,1) --轮盘抽奖
				Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["Roulette"],nItemId))
			end
		end
end

-- 使用福星包
function MayPKMonth_UseRandPack(nItemId)
	if Item_ChkItem(nItemId) then
		local nFlat,tAward = Probabil_RandomAward(tMayPKMonth_Reward[nItemId],1)
		local sFunc = tAward[1]["tAward"][1]["Item_1"]
		local nData = tAward[1]["tAward"][1]["Data"]
		local sName = tMayPKMonth_Text["Item"][nData]
		-- 给赠点
		if sFunc == User_AddEMoneyMono then
			local nEmoneyMono = Get_UserMonoEMoney()
			-- 天石赠满
			if nData + nEmoneyMono >= G_User_MaxEmoneyMono then
				MayPKMonth_ShowDialog(4)
				return
			end
			
			if Item_DelItem(nItemId) then
				User_AddEMoneyMono(nData)
				User_TalkChannel2005(string.format(tMayPKMonth_Text["RandReward"]["EmoneyMono"],nData))
				Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["RandReward"],nItemId,3,nData))
				User_EffectAdd(tMayPKMonth_Effect[1],tMayPKMonth_Effect[2])
			end

		else -- 给物品，先判断限制
			local nLimit = tAward[1]["tAward"][1]["Limit"]
			local nPos = tAward[1]["tAward"][1]["Pos"]
			local nGlobal = tAward[1]["tAward"][1]["Global"]
			local nReplace = tAward[1]["tAward"][1]["Replace"]
			local nNum = Get_SysDynaGlobalData(nGlobal,nPos)
			if nNum >= nLimit then  --超过上限，则给赠点
				local nEmoneyMono = Get_UserMonoEMoney()
				-- 天石赠满
				if nReplace + nEmoneyMono >= G_User_MaxEmoneyMono then
					MayPKMonth_ShowDialog(4)					
					return
				end
				if Item_DelItem(nItemId) then
					User_AddEMoneyMono(nReplace)
					User_TalkChannel2005(string.format(tMayPKMonth_Text["RandReward"]["EmoneyMono"],nReplace))
					Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["RandReward"],nItemId,3,nReplace))
					User_EffectAdd(tMayPKMonth_Effect[1],tMayPKMonth_Effect[2])
				end
			else
				-- 给物品，判断背包
				if not User_CheckLeftSpace(1) then
					MayPKMonth_ShowDialog(1,1)					
					return
				end
				
				if Item_DelItem(nItemId) then
					--设置限制数量
					local nAddNum = 1
					if nData == 710212 then  -- 小抽奖券*4
						nAddNum = 4
					end
					Sys_SetSynaGlobalData(nGlobal,nPos,nNum+nAddNum)
					local sAttr = tAward[1]["tAward"][1]["Attr"]
					Item_AddNewItem(nData,sAttr)
					User_TalkChannel2005(string.format(tMayPKMonth_Text["RandReward"]["Item"],nAddNum,sName))
					Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["RandReward"],nItemId,nData,nAddNum))
				end
			end
		end
	end
end

-- 3100159  通神丹福星包
function MayPKMonth_UseItem(nItemId)
	if Item_ChkItem(nItemId) then
		local nAwardItem = tMayPKMonth_Reward[nItemId]["Item"]
		local sAttr = tMayPKMonth_Reward[nItemId]["Attr"]
		local sName = tMayPKMonth_Text["Item"][nItemId]
		
		-- 判断背包
		if not User_CheckLeftSpace(1) then
			MayPKMonth_ShowDialog(1,1)					
			return
		end
		
		if Item_DelItem(nItemId) then
			Item_AddNewItem(nAwardItem,sAttr)
			User_TalkChannel2005(string.format(tMayPKMonth_Text["RandReward"]["Item"],30,sName))
			Sys_SaveActionFestivalLog(string.format(tMayPKMonth_Log["RandReward"],nItemId,nAwardItem,30))
		end
	end
end

-- 每天单服限制数量 清零
function MayPKMonth_ReSetGlobal()
	local nGlobalId = tMayPKMonth_Cont["GlobalIdClear"]
	Sys_ResetAllSynaGlobalData(nGlobalId)
end

------------------------------------------------itemtype模块--------------------------------------------------
-- 幸运百宝盘 3100142
tItem[3100142] = tItem[3100142] or {}
tItem[3100142]["Function"] = function(nItemId,sItemName)
	MayPKMonth_UseRollItem(nItemId)
end

-- 幸运百宝盘 3100143
tItem[3100143] = tItem[3100143] or {}
tItem[3100143]["Function"] = function(nItemId,sItemName)
	MayPKMonth_UseRollItem(nItemId)
end

-- 年年有余礼包	3100144
tItem[3100144] = tItem[3100144] or {}
tItem[3100144]["Function"] = function(nItemId,sItemName)
	MayPKMonth_UsePackage(nItemId)
end
tItem[3100145] = tItem[3100144]		-- 丰衣足食礼包	3100145
tItem[3100146] = tItem[3100144]		-- 腰缠万贯礼包	3100146
tItem[3100147] = tItem[3100144]		-- 财运亨通礼包	3100147
tItem[3100148] = tItem[3100144]		-- 贵气逼人礼包	3100148
tItem[3100149] = tItem[3100144]		-- 金玉满堂礼包	3100149
tItem[3100150] = tItem[3100144]		-- 富甲一方礼包	3100150
tItem[3100151] = tItem[3100144]		-- 富可敌国礼包	3100151

-- 豪华外套礼包 3100152
tItem[3100152] = tItem[3100152] or {}
tItem[3100152]["Text1-1"] = {111}
tItem[3100152]["Text111"] = tMayPKMonth_Text[3100152]["Text111"]
tItem[3100152]["tOption1-1"] = {1,2}
tItem[3100152]["Option1"] = tMayPKMonth_Text[3100152]["Option1"]
tItem[3100152]["OptionFunc1"]="MayPKMonth_UseCoatPack</N>3100152</N>193295"
tItem[3100152]["Option2"] = tMayPKMonth_Text[3100152]["Option2"]
tItem[3100152]["OptionFunc2"]="MayPKMonth_UseCoatPack</N>3100152</N>188675"
tItem[3100152]["Option3"] = tMayPKMonth_Text[3100152]["Option3"]

-- 精装外套礼包 3100153
tItem[3100153] = tItem[3100153] or {}
tItem[3100153]["Text1-1"] = {111}
tItem[3100153]["Text111"] = tMayPKMonth_Text[3100153]["Text111"]
tItem[3100153]["tOption1-1"] = {1,2}
tItem[3100153]["Option1"] = tMayPKMonth_Text[3100153]["Option1"]
tItem[3100153]["OptionFunc1"]="MayPKMonth_UseCoatPack</N>3100153</N>193295"
tItem[3100153]["Option2"] = tMayPKMonth_Text[3100153]["Option2"]
tItem[3100153]["OptionFunc2"]="MayPKMonth_UseCoatPack</N>3100153</N>188675"
tItem[3100153]["Option3"] = tMayPKMonth_Text[3100153]["Option3"]

-- 小抽奖券福星包	3100154
tItem[3100154] = tItem[3100154] or {}
tItem[3100154]["Function"] = function(nItemId,sItemName)
	MayPKMonth_UseRandPack(nItemId)
end
tItem[3100155] = tItem[3100154]		-- +3赤炼石福星包	3100155
tItem[3100156] = tItem[3100154]		-- 固化石福星包	3100156
tItem[3100157] = tItem[3100154]		-- +6赤炼石福星包	3100157
tItem[3100158] = tItem[3100154]		-- iPhone6s福星包	3100158

-- 3100159 通神丹福星包
tItem[3100159] = tItem[3100159] or {}
tItem[3100159]["Function"] = function(nItemId,sItemName)
	MayPKMonth_UseItem(nItemId)
end


-- -------------------------------------时间检测---------------------------------------------
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],MayPKMonth_ReSetGlobal)


