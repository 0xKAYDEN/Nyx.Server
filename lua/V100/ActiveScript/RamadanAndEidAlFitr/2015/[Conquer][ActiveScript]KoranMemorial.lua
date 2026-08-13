------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]古兰经祭奠
--Purpose:		2015年斋月节和开斋节活动之古兰经祭奠
--Creator: 		郑鋆
--Created:		2015/3/20
------------------------------------------------------------------------------------

-- 命名规则
-- KoranMemorial2015_

-- logid	12000051
-- 3419	3424

-- 常量表
local tKoranMemorial2015_Constant = {}
	-- 活动时间
	tKoranMemorial2015_Constant["BeforeActivityTime"] = "2017-03-17 00:00 2017-05-25 23:59"
	tKoranMemorial2015_Constant["ActivityTime"] = "2017-05-26 00:00 2017-06-24 23:59"
	
	-- 玩家等级要求
	tKoranMemorial2015_Constant["Metempsychosis"] = 0
	tKoranMemorial2015_Constant["Level"] = 80
	
	tKoranMemorial2015_Constant["ItemSpace"] = 1
	
	-- 任务ID
	tKoranMemorial2015_Constant["TaskId"] = 3419
	tKoranMemorial2015_Constant["LogId"] = 12000051
	tKoranMemorial2015_Constant["CompleteData"] = 100
	tKoranMemorial2015_Constant["CompleteLog"] = "0,0,3006171,1,12000051,2,3006172,1"
	-- tKoranMemorial2015_Constant["RewardLog"] = "0,0,3006172,1,12000051,2,3003625,1"
	
	-- 任务物品ID
	tKoranMemorial2015_Constant["ItemId"] = 3006171
	tKoranMemorial2015_Constant["CompleteItemId"] = 3006172

	-- 节日欢庆礼包
	tKoranMemorial2015_Constant["FestivalId"] = 3419
	
local tKoranMemorial2015_Data = {}
	tKoranMemorial2015_Data[3006171] = {}
	tKoranMemorial2015_Data[3006171][1] = {}
	tKoranMemorial2015_Data[3006171][1]["ItemChanceSum"] = 1000
	
	tKoranMemorial2015_Data[3006171][1][1] = {}
	tKoranMemorial2015_Data[3006171][1][1]["RandomItemChanceType"] = 2
	tKoranMemorial2015_Data[3006171][1][1]["ItemChance"] = 890	
	tKoranMemorial2015_Data[3006171][1][1]["Item_1"] = 1					
	tKoranMemorial2015_Data[3006171][1][1]["Effect"] = "heal1"				
	
	tKoranMemorial2015_Data[3006171][1][2] = {}
	tKoranMemorial2015_Data[3006171][1][2]["RandomItemChanceType"] = 2
	tKoranMemorial2015_Data[3006171][1][2]["ItemChance"] = 100	
	tKoranMemorial2015_Data[3006171][1][2]["Item_1"] = 10					
	tKoranMemorial2015_Data[3006171][1][2]["Effect"] = "CircleUp"
	
	tKoranMemorial2015_Data[3006171][1][3] = {}
	tKoranMemorial2015_Data[3006171][1][3]["RandomItemChanceType"] = 2
	tKoranMemorial2015_Data[3006171][1][3]["ItemChance"] = 10	
	tKoranMemorial2015_Data[3006171][1][3]["Item_1"] = 100
	tKoranMemorial2015_Data[3006171][1][3]["Effect"] = "accession"	
	
	
local tKoranMemorial2015_RewardCp = {}
	tKoranMemorial2015_RewardCp["LogId"] = 12000051
	tKoranMemorial2015_RewardCp["RewardEMoneyMono"] = {}
	tKoranMemorial2015_RewardCp["RewardEMoneyMono"]["Value"] = 1500
	
local tKoranMemorial2015_stc = {}
	
	tKoranMemorial2015_stc["EventType"] = 160
	tKoranMemorial2015_stc["DataType"] = 96


--------------------------------------逻辑部分-----------------------------------------	
-- 领取《无字古兰经》。
function KoranMemorial2015_ReceiveTaskItem(nNpcId)
	-- 判断活动时间是否已过期
	if not Sys_ChkFullTime(tKoranMemorial2015_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(tKoranMemorial2015_Constant["Level"],tKoranMemorial2015_Constant["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tKoranMemorial2015_Constant["ItemSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end

	local nTaskId = tKoranMemorial2015_Constant["TaskId"]
	
	-- 判断任务掩码是否存在
	if Task_ChkTaskDetail(nTaskId) then
		-- 判断任务是否完成
		if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
			-- 判断是否隔天
			if not Task_DetailInterval(nTaskId,1,4) then
				LinkNpcGossipFunc_New(nNpcId,"2-3")
				return
			else
				Task_SetTaskDetailCompleteFlag(nTaskId,0)
				Task_SetTaskDetailData1(nTaskId,0)
				Task_SetTaskDetailData7(nTaskId,os.time())
			end
		end
	else
		Task_AddTaskDetail(nTaskId)
	end

	-- 判断玩家背包里是否已有该物品
	if Item_ChkItem(tKoranMemorial2015_Constant["ItemId"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	if Item_ChkItem(tKoranMemorial2015_Constant["CompleteItemId"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	Item_AddItem(tKoranMemorial2015_Constant["ItemId"])
	LinkNpcGossipFunc_New(nNpcId,"2-5")
end

-- 打怪加净化值
function KoranMemorial2015_KillMonster()
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKoranMemorial2015_Constant["ActivityTime"]) then
		return
	end

	local nTaskId = tKoranMemorial2015_Constant["TaskId"]
	
	-- 判断任务掩码是否存在
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	-- 判断任务是否完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		return
	end
	
	-- 判断玩家背包里是否有《神圣古兰经》
	local nCompleteItemId = tKoranMemorial2015_Constant["CompleteItemId"]
	
	if Item_ChkItem(nCompleteItemId) then
		return
	end
	
	-- 判断玩家背包里是否有《无字古兰经》
	local nItemId = tKoranMemorial2015_Constant["ItemId"]
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 获取要加多少掩码值
	local nFlat,tAward = Probabil_RandomAward(tKoranMemorial2015_Data[nItemId],1)
	local nData = tAward[1]["tAward"][1]["Item_1"]
	local sEffect = tAward[1]["tAward"][1]["Effect"]
	local nNowData = Get_TaskDetailData1(nTaskId)
	
	nNowData = nNowData + nData
	
	-- 设置掩码值
	Task_SetTaskDetailData1(nTaskId,nNowData)
	
	-- 判断是否完成任务
	if nNowData >= tKoranMemorial2015_Constant["CompleteData"] then
		if Item_DelItem(nItemId) then
			-- 播放光效
			User_EffectAdd("self","accession")

			Item_AddItem(nCompleteItemId)
			-- 打log
			Sys_SaveActionFestivalLog(tKoranMemorial2015_Constant["CompleteLog"])
			-- 提示
			User_TalkChannel2007(tKoranMemorial2015_Text["Complete"])
			return
		end
	else
		User_EffectAdd("self",sEffect)
	end
	
	User_TalkChannel2007(tKoranMemorial2015_Text["KillMonster"])
end

-- 使用神圣古兰经
function KoranMemorial2015_UseItem(nItemId)
	if Item_DelItem(nItemId) then
		-- 判断是否在活动时间内
		if not Sys_ChkFullTime(tKoranMemorial2015_Constant["ActivityTime"]) then
			User_TalkChannel2007(tKoranMemorial2015_Text["Disappear"])
			return
		end
		
		local nTaskId = tKoranMemorial2015_Constant["TaskId"]
	
		-- 判断任务掩码是否存在
		if not Task_ChkTaskDetail(nTaskId) then
			return
		end
		
		Task_SetTaskDetailCompleteFlag(nTaskId,1)
		-- 设置时间搓
		Task_SetTaskDetailData7(nTaskId,os.time())
		-- 给通用礼包
		FestivalGeneralPackage_GetGift(tKoranMemorial2015_Constant["FestivalId"],tKoranMemorial2015_Constant["LogId"])

		-- 给提示
		User_TalkChannel2007(tKoranMemorial2015_Text["Reward"])
	end
end



-- 补领天石赠
function KoranMemorial2015_GetCps()

	if not Sys_ChkFullTime(tKoranMemorial2015_Constant["ActivityTime"]) then

		return
	end
	
	local nlevelt = tKoranMemorial2015_Constant["Level"]
	local nMete = tKoranMemorial2015_Constant["Metempsychosis"]
	
	if not User_JudgeLevelAndMetempsychosis(nlevelt,nMete)  then

		return
	end

	local nEvent = tKoranMemorial2015_stc["EventType"]
	local nType = tKoranMemorial2015_stc["DataType"]
	
	if Get_UserStatisticValue(nEvent,nType) ~= 0 then

		return
		
	else
	
		if Get_UserMonoEMoney() + tKoranMemorial2015_RewardCp["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
			return
		end
	
	
			Task_AddStatistic(nEvent,nType,1,1)
			RewardTemplate_UseItemAndMsg(tKoranMemorial2015_RewardCp)		


	end

end



--------------------------------------NPC模块-------------------------------------------
-- 穆斯林使者
tNpcFace[2974] = 109
tNpcGossip[18391] = tNpcGossip[18391] or DefaultNpc:new{}
tNpcGossip[18391]["OptionHidden"] = 1











-- 活动前对白
tNpcGossip[18391]["Text1-1"] = {111,112,113,114}
tNpcGossip[18391]["Text111"] = tKoranMemorial2015_Text[18391]["111"]
tNpcGossip[18391]["Text112"] = tKoranMemorial2015_Text[18391]["112"]
tNpcGossip[18391]["Text113"] = tKoranMemorial2015_Text[18391]["113"]
tNpcGossip[18391]["Text114"] = tKoranMemorial2015_Text[18391]["114"]
tNpcGossip[18391]["tOption1-1"] = {1}
tNpcGossip[18391]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tKoranMemorial2015_Constant["BeforeActivityTime"])
end

-- 活动中对白
tNpcGossip[18391]["Text1-2"] = {1001,1002}
tNpcGossip[18391]["Text1001"] = tKoranMemorial2015_Text[18391]["1001"]
tNpcGossip[18391]["Text1002"] = tKoranMemorial2015_Text[18391]["1002"]
tNpcGossip[18391]["tOption1-2"] = {1001,1002}
tNpcGossip[18391]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tKoranMemorial2015_Constant["ActivityTime"])
end

-- 活动后对白
tNpcGossip[18391]["Text1-3"] = {131}
tNpcGossip[18391]["Text131"] = tKoranMemorial2015_Text[18391]["131"]
tNpcGossip[18391]["tOption1-3"] = {2}

-- 修为不足
tNpcGossip[18391]["Text2-1"] = {211}
tNpcGossip[18391]["Text211"] = tKoranMemorial2015_Text[18391]["211"]
tNpcGossip[18391]["tOption2-1"] = {6}

-- 背包空间不足
tNpcGossip[18391]["Text2-2"] = {221}
tNpcGossip[18391]["Text221"] = tKoranMemorial2015_Text[18391]["221"]
tNpcGossip[18391]["tOption2-2"] = {7}

-- 今天已完成
tNpcGossip[18391]["Text2-3"] = {231}
tNpcGossip[18391]["Text231"] = tKoranMemorial2015_Text[18391]["231"]
tNpcGossip[18391]["tOption2-3"] = {9}

-- 身上已有
tNpcGossip[18391]["Text2-4"] = {241}
tNpcGossip[18391]["Text241"] = tKoranMemorial2015_Text[18391]["241"]
tNpcGossip[18391]["tOption2-4"] = {10}

tNpcGossip[18391]["Text2-6"] = {261}
tNpcGossip[18391]["Text261"] = tKoranMemorial2015_Text[18391]["261"]
tNpcGossip[18391]["tOption2-6"] = {11}

-- 成功获得
tNpcGossip[18391]["Text2-5"] = {251}
tNpcGossip[18391]["Text251"] = tKoranMemorial2015_Text[18391]["251"]
tNpcGossip[18391]["tOption2-5"] = {12}

-- 了解活动详情
tNpcGossip[18391]["Text3-1"] = {311,312,313,314}
tNpcGossip[18391]["Text311"] = tKoranMemorial2015_Text[18391]["311"]
tNpcGossip[18391]["Text312"] = tKoranMemorial2015_Text[18391]["312"]
tNpcGossip[18391]["Text313"] = tKoranMemorial2015_Text[18391]["313"]
tNpcGossip[18391]["Text314"] = tKoranMemorial2015_Text[18391]["314"]
tNpcGossip[18391]["tOption3-1"] = {8,13}

-- 选项
tNpcGossip[18391]["Option1"] = tKoranMemorial2015_Text[18391]["Option1"]
tNpcGossip[18391]["Option2"] = tKoranMemorial2015_Text[18391]["Option2"]
tNpcGossip[18391]["Option3"] = tKoranMemorial2015_Text[18391]["Option3"]
tNpcGossip[18391]["OptionFunc3"]="KoranMemorial2015_ReceiveTaskItem</N>18391"
tNpcGossip[18391]["Option4"] = tKoranMemorial2015_Text[18391]["Option4"]
tNpcGossip[18391]["OptionPoint4"]="3"
tNpcGossip[18391]["Option5"] = tKoranMemorial2015_Text[18391]["Option5"]
tNpcGossip[18391]["Option6"] = tKoranMemorial2015_Text[18391]["Option6"]
tNpcGossip[18391]["Option7"] = tKoranMemorial2015_Text[18391]["Option7"]
tNpcGossip[18391]["Option8"] = tKoranMemorial2015_Text[18391]["Option8"]
tNpcGossip[18391]["OptionFunc8"]="KoranMemorial2015_ReceiveTaskItem</N>18391"
tNpcGossip[18391]["Option9"] = tKoranMemorial2015_Text[18391]["Option9"]
tNpcGossip[18391]["Option10"] = tKoranMemorial2015_Text[18391]["Option10"]
tNpcGossip[18391]["Option11"] = tKoranMemorial2015_Text[18391]["Option11"]
tNpcGossip[18391]["Option12"] = tKoranMemorial2015_Text[18391]["Option12"]
tNpcGossip[18391]["Option13"] = tKoranMemorial2015_Text[18391]["Option13"]



tNpcGossip[18391]["Option1001"] = tKoranMemorial2015_Text[18391]["Option1001"]
tNpcGossip[18391]["OptionFunc1001"]="KoranMemorial2015_GetCps"
tNpcGossip[18391]["OptionChkFunc1001"] = function()
	local nlevelt = tKoranMemorial2015_Constant["Level"]
	local nMete = tKoranMemorial2015_Constant["Metempsychosis"]
	
	local nEvent = tKoranMemorial2015_stc["EventType"]
	local nType = tKoranMemorial2015_stc["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	
	return Sys_ChkFullTime(tKoranMemorial2015_Constant["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(nlevelt,nMete) and nData == 0
end

tNpcGossip[18391]["Option1002"] = tKoranMemorial2015_Text[18391]["Option1002"]


--------------------------------------物品模块-------------------------------------------
-- 无字古兰经
tItem[3006171] = tItem[3006171] or {}
tItem[3006171]["Function"] = function(nItemId,sItemName)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKoranMemorial2015_Constant["ActivityTime"]) then
		Item_DelItem(nItemId)
		User_TalkChannel2007(tKoranMemorial2015_Text["Disappear"])
		return
	end
end

-- 神圣古兰经
tItem[3006172] = tItem[3006172] or {}
tItem[3006172]["Function"] = function(nItemId,sItemName)
	KoranMemorial2015_UseItem(nItemId)
end
-- --------------------------------------怪物掉落-------------------------------------------
-- -- 第一片区
-- -- 	1	叫天鸡	9593200
-- tMonster[1] = tMonster[1] or {}
-- tMonster[1]["tFunction"] = tMonster[1]["tFunction"] or {}
-- table.insert(tMonster[1]["tFunction"],KoranMemorial2015_KillMonster)

-- -- 	2	斑鸠王	9593210
-- tMonster[2] = tMonster[2] or {}
-- tMonster[2]["tFunction"] = tMonster[2]["tFunction"] or {}
-- table.insert(tMonster[2]["tFunction"],KoranMemorial2015_KillMonster)

-- --	3	罗罗鸟	9593220
-- tMonster[3] = tMonster[3] or {}
-- tMonster[3]["tFunction"] = tMonster[3]["tFunction"] or {}
-- table.insert(tMonster[3]["tFunction"],KoranMemorial2015_KillMonster)

-- --	4	幽冥鬼斧王	9593230
-- tMonster[4] = tMonster[4] or {}
-- tMonster[4]["tFunction"] = tMonster[4]["tFunction"] or {}
-- table.insert(tMonster[4]["tFunction"],KoranMemorial2015_KillMonster)

-- --	5	蹑空鬼斧王	9593240
-- tMonster[5] = tMonster[5] or {}
-- tMonster[5]["tFunction"] = tMonster[5]["tFunction"] or {}
-- table.insert(tMonster[5]["tFunction"],KoranMemorial2015_KillMonster)


-- -- 第二片区
-- --	6	翼蛇	9593250
-- tMonster[6] = tMonster[6] or {}
-- tMonster[6]["tFunction"] = tMonster[6]["tFunction"] or {}
-- table.insert(tMonster[6]["tFunction"],KoranMemorial2015_KillMonster)

-- --	7	土匪	9593260
-- tMonster[7] = tMonster[7] or {}
-- tMonster[7]["tFunction"] = tMonster[7]["tFunction"] or {}
-- table.insert(tMonster[7]["tFunction"],KoranMemorial2015_KillMonster)

-- --	8	火鼠	9593270
-- tMonster[8] = tMonster[8] or {}
-- tMonster[8]["tFunction"] = tMonster[8]["tFunction"] or {}
-- table.insert(tMonster[8]["tFunction"],KoranMemorial2015_KillMonster)

-- --	9	火精灵	9593280
-- tMonster[9] = tMonster[9] or {}
-- tMonster[9]["tFunction"] = tMonster[9]["tFunction"] or {}
-- table.insert(tMonster[9]["tFunction"],KoranMemorial2015_KillMonster)

-- --	66	精悍土匪	9593290
-- tMonster[66] = tMonster[66] or {}
-- tMonster[66]["tFunction"] = tMonster[66]["tFunction"] or {}
-- table.insert(tMonster[66]["tFunction"],KoranMemorial2015_KillMonster)

-- --	67	尖牙火鼠	9593300
-- tMonster[67] = tMonster[67] or {}
-- tMonster[67]["tFunction"] = tMonster[67]["tFunction"] or {}
-- table.insert(tMonster[67]["tFunction"],KoranMemorial2015_KillMonster)


-- -- 第三片区
-- --	10	须猕猴	9593310
-- tMonster[10] = tMonster[10] or {}
-- tMonster[10]["tFunction"] = tMonster[10]["tFunction"] or {}
-- table.insert(tMonster[10]["tFunction"],KoranMemorial2015_KillMonster)

-- --	11	巨臂猿	9593320
-- tMonster[11] = tMonster[11] or {}
-- tMonster[11]["tFunction"] = tMonster[11]["tFunction"] or {}
-- table.insert(tMonster[11]["tFunction"],KoranMemorial2015_KillMonster)

-- --	12	天雷巨猿	9593330
-- tMonster[12] = tMonster[12] or {}
-- tMonster[12]["tFunction"] = tMonster[12]["tFunction"] or {}
-- table.insert(tMonster[12]["tFunction"],KoranMemorial2015_KillMonster)

-- --	13	蛇人	9593340
-- tMonster[13] = tMonster[13] or {}
-- tMonster[13]["tFunction"] = tMonster[13]["tFunction"] or {}
-- table.insert(tMonster[13]["tFunction"],KoranMemorial2015_KillMonster)


-- -- 第四片区
-- --	14	沙怪	9593350
-- tMonster[14] = tMonster[14] or {}
-- tMonster[14]["tFunction"] = tMonster[14]["tFunction"] or {}
-- table.insert(tMonster[14]["tFunction"],KoranMemorial2015_KillMonster)

-- --	15	锤山怪	9593360
-- tMonster[15] = tMonster[15] or {}
-- tMonster[15]["tFunction"] = tMonster[15]["tFunction"] or {}
-- table.insert(tMonster[15]["tFunction"],KoranMemorial2015_KillMonster)

-- --	16	巨石怪	9593370
-- tMonster[16] = tMonster[16] or {}
-- tMonster[16]["tFunction"] = tMonster[16]["tFunction"] or {}
-- table.insert(tMonster[16]["tFunction"],KoranMemorial2015_KillMonster)

-- --	17	鬼刃	9593380
-- tMonster[17] = tMonster[17] or {}
-- tMonster[17]["tFunction"] = tMonster[17]["tFunction"] or {}
-- table.insert(tMonster[17]["tFunction"],KoranMemorial2015_KillMonster)

-- --	73	砾沙怪	9593390
-- tMonster[73] = tMonster[73] or {}
-- tMonster[73]["tFunction"] = tMonster[73]["tFunction"] or {}
-- table.insert(tMonster[73]["tFunction"],KoranMemorial2015_KillMonster)


-- -- 第五片区
-- --	18	金臂鸟人	4081200
-- tMonster[18] = tMonster[18] or {}
-- tMonster[18]["tFunction"] = tMonster[18]["tFunction"] or {}
-- table.insert(tMonster[18]["tFunction"],KoranMemorial2015_KillMonster)

-- --	19	银羽鹰王	4081254
-- tMonster[19] = tMonster[19] or {}
-- tMonster[19]["tFunction"] = tMonster[19]["tFunction"] or {}
-- table.insert(tMonster[19]["tFunction"],KoranMemorial2015_KillMonster)

-- --	55	湖岛强匪	4081258
-- tMonster[55] = tMonster[55] or {}
-- tMonster[55]["tFunction"] = tMonster[55]["tFunction"] or {}
-- table.insert(tMonster[55]["tFunction"],KoranMemorial2015_KillMonster)

-- --	78	银羽鹰魔	4081255
-- tMonster[78] = tMonster[78] or {}
-- tMonster[78]["tFunction"] = tMonster[78]["tFunction"] or {}
-- table.insert(tMonster[78]["tFunction"],KoranMemorial2015_KillMonster)

-- --	79	湖岛悍匪	4081259
-- tMonster[79] = tMonster[79] or {}
-- tMonster[79]["tFunction"] = tMonster[79]["tFunction"] or {}
-- table.insert(tMonster[79]["tFunction"],KoranMemorial2015_KillMonster)

-- --	84	匪兵	9593450
-- tMonster[84] = tMonster[84] or {}
-- tMonster[84]["tFunction"] = tMonster[84]["tFunction"] or {}
-- table.insert(tMonster[84]["tFunction"],KoranMemorial2015_KillMonster)

-- -- 第六片区
-- --	20	土墓蝠	9593460
-- tMonster[20] = tMonster[20] or {}
-- tMonster[20]["tFunction"] = tMonster[20]["tFunction"] or {}
-- table.insert(tMonster[20]["tFunction"],KoranMemorial2015_KillMonster)

-- --	56	嗜血蝙蝠	9593470
-- tMonster[56] = tMonster[56] or {}
-- tMonster[56]["tFunction"] = tMonster[56]["tFunction"] or {}
-- table.insert(tMonster[56]["tFunction"],KoranMemorial2015_KillMonster)

-- --	57	牛怪	9593480
-- tMonster[57] = tMonster[57] or {}
-- tMonster[57]["tFunction"] = tMonster[57]["tFunction"] or {}
-- table.insert(tMonster[57]["tFunction"],KoranMemorial2015_KillMonster)

-- --	58	血影红魔	9593490
-- tMonster[58] = tMonster[58] or {}
-- tMonster[58]["tFunction"] = tMonster[58]["tFunction"] or {}
-- table.insert(tMonster[58]["tFunction"],KoranMemorial2015_KillMonster)

-- -- 第七片区
-- --	2411	冰凌腾蛇	9979200
-- tMonster[2411] = tMonster[2411] or {}
-- tMonster[2411]["tFunction"] = tMonster[2411]["tFunction"] or {}
-- table.insert(tMonster[2411]["tFunction"],KoranMemorial2015_KillMonster)

-- --	2416	冰煞邪刀	9979210
-- tMonster[2416] = tMonster[2416] or {}
-- tMonster[2416]["tFunction"] = tMonster[2416]["tFunction"] or {}
-- table.insert(tMonster[2416]["tFunction"],KoranMemorial2015_KillMonster)

-- -- 第八片区
-- --	2686	深海亡魂	98054381
-- tMonster[2686] = tMonster[2686] or {}
-- tMonster[2686]["tFunction"] = tMonster[2686]["tFunction"] or {}
-- table.insert(tMonster[2686]["tFunction"],KoranMemorial2015_KillMonster)

-- --	2687	深海魔魂	98054382
-- tMonster[2687] = tMonster[2687] or {}
-- tMonster[2687]["tFunction"] = tMonster[2687]["tFunction"] or {}
-- table.insert(tMonster[2687]["tFunction"],KoranMemorial2015_KillMonster)
