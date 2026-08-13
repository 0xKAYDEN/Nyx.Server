------------------------------------------------------------------------------------
--Name：            160719[英文征服][活动脚本]德州盒子版本活动1-盒子上线好礼
--Creator:      陈彦宏
--Created:     2016/07/19
------------------------------------------------------------------------------------
-- 命名前缀
-- DezhouGiftBox_
--Log 12000464
----------------------------------数据配置--------------------------------------------
--活动时间
local tDezhouGiftBox_Cont = {}
	tDezhouGiftBox_Cont["ActiveTime"] = "2016-08-25 00:00 2016-09-30 23:59"
	tDezhouGiftBox_Cont["ClearTime"] = "00:00 00:05"
	
--动态表ID
	tDezhouGiftBox_Cont["GlobalId"] = 80173
	
--最高奖励
	tDezhouGiftBox_Cont["MaxMoney"] = 50000
	
--气球光效
	tDezhouGiftBox_Cont["Effect"] = "balloon1"
	
--外部链接
	tDezhouGiftBox_Cont["Link"] = "http://co.99.com/guide/event/2016/pocket_poker/index.shtml"
	
local tDezhouGiftBox_Item = {}
	--德州盒子上线礼包
	tDezhouGiftBox_Item[3200850] = {}
	tDezhouGiftBox_Item[3200850][1] = {}
	tDezhouGiftBox_Item[3200850][1]["ItemChanceSum"] = 10000
	
	-- 1000金币	40.00%
	tDezhouGiftBox_Item[3200850][1][1] = {}
	tDezhouGiftBox_Item[3200850][1][1]["RandomItemChanceType"] = 2
	tDezhouGiftBox_Item[3200850][1][1]["ItemChance"] = 4000
	tDezhouGiftBox_Item[3200850][1][1]["RewardMoney"] = {}
	tDezhouGiftBox_Item[3200850][1][1]["RewardMoney"]["Value"] = 1000
	tDezhouGiftBox_Item[3200850][1][1]["Talk"] = tDezhouGiftBox_Text[3200850][1]
	tDezhouGiftBox_Item[3200850][1][1]["LogId"] = 12000464
	
	-- 10点赠品天石	25.00%
	tDezhouGiftBox_Item[3200850][1][2] = {}
	tDezhouGiftBox_Item[3200850][1][2]["RandomItemChanceType"] = 2
	tDezhouGiftBox_Item[3200850][1][2]["ItemChance"] = 2500
	tDezhouGiftBox_Item[3200850][1][2] ["RewardEMoneyMono"] = {}
	tDezhouGiftBox_Item[3200850][1][2] ["RewardEMoneyMono"]["Value"] = 10
	tDezhouGiftBox_Item[3200850][1][2]["Talk"] = tDezhouGiftBox_Text[3200850][2]
	tDezhouGiftBox_Item[3200850][1][2]["LogId"] = 12000464
	
	-- 1W金币	16.00%
	tDezhouGiftBox_Item[3200850][1][3] = {}
	tDezhouGiftBox_Item[3200850][1][3]["RandomItemChanceType"] = 2
	tDezhouGiftBox_Item[3200850][1][3]["ItemChance"] = 1600
	tDezhouGiftBox_Item[3200850][1][3]["RewardMoney"] = {}
	tDezhouGiftBox_Item[3200850][1][3]["RewardMoney"]["Value"] = 10000
	tDezhouGiftBox_Item[3200850][1][3]["GlobalId"] = tDezhouGiftBox_Cont["GlobalId"]
	tDezhouGiftBox_Item[3200850][1][3]["Pos"] = 1
	tDezhouGiftBox_Item[3200850][1][3]["MaxData"] = 1000
	tDezhouGiftBox_Item[3200850][1][3]["FullIndex"] = 2
	tDezhouGiftBox_Item[3200850][1][3]["Talk"] = tDezhouGiftBox_Text[3200850][3]
	tDezhouGiftBox_Item[3200850][1][3]["LogId"] = 12000464
	
	-- 50w比赛通票	3008758	16%
	tDezhouGiftBox_Item[3200850][1][4] = {}
	tDezhouGiftBox_Item[3200850][1][4]["RandomItemChanceType"] = 2
	tDezhouGiftBox_Item[3200850][1][4]["ItemChance"] = 1600
	tDezhouGiftBox_Item[3200850][1][4]["RewardItem"] = {}
	tDezhouGiftBox_Item[3200850][1][4]["RewardItem"][1] = {}
	tDezhouGiftBox_Item[3200850][1][4]["RewardItem"][1]["Id"] = 3008758
	tDezhouGiftBox_Item[3200850][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tDezhouGiftBox_Item[3200850][1][4]["Talk"] = tDezhouGiftBox_Text[3200850][4]
	tDezhouGiftBox_Item[3200850][1][4]["LogId"] = 12000464
	
	-- 5W金币	3.00%
	tDezhouGiftBox_Item[3200850][1][5] = {}
	tDezhouGiftBox_Item[3200850][1][5]["RandomItemChanceType"] = 2
	tDezhouGiftBox_Item[3200850][1][5]["ItemChance"] = 300
	tDezhouGiftBox_Item[3200850][1][5]["RewardMoney"] = {}
	tDezhouGiftBox_Item[3200850][1][5]["RewardMoney"]["Value"] = 50000
	tDezhouGiftBox_Item[3200850][1][5]["GlobalId"] = tDezhouGiftBox_Cont["GlobalId"]
	tDezhouGiftBox_Item[3200850][1][5]["Pos"] = 2
	tDezhouGiftBox_Item[3200850][1][5]["MaxData"] = 500
	tDezhouGiftBox_Item[3200850][1][5]["FullIndex"] = 4
	tDezhouGiftBox_Item[3200850][1][5]["Talk"] = tDezhouGiftBox_Text[3200850][5]
	tDezhouGiftBox_Item[3200850][1][5]["LogId"] = 12000464
	
----------------------------------逻辑部分---------------------------------------------
--奖励部分
function tDezhouGiftBox_UseSweetie(nItemId)
	local nMonoMoney = Get_UserMonoEMoney(0)
	local nMonoMoneyGet = tDezhouGiftBox_Item[3200850][1][2] ["RewardEMoneyMono"]["Value"]
	if nMonoMoney  > (G_User_MaxEmoney - nMonoMoneyGet) then
		User_TalkChannel2005(tDezhouGiftBox_Text["EmoneyMonoLimit"])
		return
	end
	if not User_CanPutMoney2Bag(tDezhouGiftBox_Cont["MaxMoney"],0) then
		User_TalkChannel2005(tDezhouGiftBox_Text["MoneyLimit"])
		return
	end
	if Sys_ChkFullTime(tDezhouGiftBox_Cont["ActiveTime"]) then
		if Item_ChkItem(nItemId) and 	Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tDezhouGiftBox_Item[nItemId],1)
			User_SendWebPage(tDezhouGiftBox_Cont["Link"],0)
			User_EffectAdd("self",tDezhouGiftBox_Cont["Effect"])
		end
	else
		if Item_ChkItem(nItemId) and 	Item_DelItem(nItemId) then
			User_TalkChannel2005(tDezhouGiftBox_Text[nItemId]["DeleteGift"])
		end
	end
end
	
--系统自检函数
function DezhouGiftBox_ClearGlobal()
	local nGlobalId = tDezhouGiftBox_Cont["GlobalId"]
	local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId)
	if Sys_ChkFullTime(tDezhouGiftBox_Cont["ActiveTime"]) then
		if Sys_ChkDayTime(tDezhouGiftBox_Cont["ClearTime"]) then
			if not (sDataStr5 == "1") then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"1")
				Sys_SetSynaGlobalData1(nGlobalId,0)
				Sys_SetSynaGlobalData2(nGlobalId,0)
			end
		else
			if sDataStr5 == "1" then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
			end
		end
	end
end
----------------------------------礼包配置---------------------------------------------
tItem[3200850] = tItem[3200850] or {}
tItem[3200850]["DialogueText"] = tDezhouGiftBox_Text[3200850]
tItem[3200850]["Text1-1"] = {111,112,113,114,115}
tItem[3200850]["tOption1-1"] = {1,2}
tItem[3200850]["OptionFunc1"] = "tDezhouGiftBox_UseSweetie</N>3200850"
	
----------------------------------系统自检---------------------------------------------
-- 时间自检触发
--tOntimerMin_HM	小时/分钟（每天的00点00分到00点10分执行）
--'00:00-00:10'
	-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
	-- table.insert(tOntimerMin_HM[0000],DezhouGiftBox_ClearGlobal)
	-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
	-- table.insert(tOntimerMin_HM[0001],DezhouGiftBox_ClearGlobal)
	-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
	-- table.insert(tOntimerMin_HM[0002],DezhouGiftBox_ClearGlobal)
	-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
	-- table.insert(tOntimerMin_HM[0003],DezhouGiftBox_ClearGlobal)
	-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
	-- table.insert(tOntimerMin_HM[0004],DezhouGiftBox_ClearGlobal)
	-- tOntimerMin_HM[0005] = tOntimerMin_HM[0005] or {}
	-- table.insert(tOntimerMin_HM[0005],DezhouGiftBox_ClearGlobal)
	-- tOntimerMin_HM[0006] = tOntimerMin_HM[0006] or {}
	-- table.insert(tOntimerMin_HM[0006],DezhouGiftBox_ClearGlobal)
	-- tOntimerMin_HM[0007] = tOntimerMin_HM[0007] or {}
	-- table.insert(tOntimerMin_HM[0007],DezhouGiftBox_ClearGlobal)
	-- tOntimerMin_HM[0008] = tOntimerMin_HM[0008] or {}
	-- table.insert(tOntimerMin_HM[0008],DezhouGiftBox_ClearGlobal)
	-- tOntimerMin_HM[0009] = tOntimerMin_HM[0009] or {}
	-- table.insert(tOntimerMin_HM[0009],DezhouGiftBox_ClearGlobal)
	-- tOntimerMin_HM[0010] = tOntimerMin_HM[0010] or {}
	-- table.insert(tOntimerMin_HM[0010],DezhouGiftBox_ClearGlobal)