------------------------------------------------------------------------------------
--Name：            190528[简体征服][活动脚本]勇士版本上线礼包增加内容
--Creator:      林嘉鑫
--Created:     2019-05-28
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tWarriorPackage_Cont = {}
	tWarriorPackage_Cont["MaxEMoney"] = 666
	tWarriorPackage_Cont["GlobalId"] = 53410
	tWarriorPackage_Cont["Effect"] = {}
	tWarriorPackage_Cont["Effect"][0] = "self"
	tWarriorPackage_Cont["Effect"][1] = "angelwing"
	tWarriorPackage_Cont["Effect"][2] = "zf2-e128"
	tWarriorPackage_Cont["Effect"][3] = "accession"
	tWarriorPackage_Cont["NeedItem"] = 189685
	
	tWarriorPackage_Cont["NeedEMoney"] = {}
	tWarriorPackage_Cont["NeedEMoney"][1] = 270
	tWarriorPackage_Cont["NeedEMoney"][2] = 2250
	tWarriorPackage_Cont["NeedEMoney"][3] = 1980
	
local tWarriorPackage_RedPackets = {}
	tWarriorPackage_RedPackets[3321797] = {}
	tWarriorPackage_RedPackets[3321797]["RedType"] = 4 	--  世界
	tWarriorPackage_RedPackets[3321797]["nType"] = 0
	tWarriorPackage_RedPackets[3321797]["nMoneyType"] = 3   --赠点
	tWarriorPackage_RedPackets[3321797]["nMoneyNum"] = 6666 -- 金钱总额
	tWarriorPackage_RedPackets[3321797]["nManyNum"] = 66  -- 分成多少份
	
local tWarriorPackage_Package = {}
	-- ===勇士觉醒普天同庆礼包(普通奖励)
	-- ===索引:3321797,1
	-- ===删除:3321797,1
	tWarriorPackage_Package[3321797] = {}
	tWarriorPackage_Package[3321797][1] = {}
	tWarriorPackage_Package[3321797][1]["LogId"] = 12001439
	tWarriorPackage_Package[3321797][1]["DeleteItem"] = {}
	tWarriorPackage_Package[3321797][1]["DeleteItem"][1] = {}
	tWarriorPackage_Package[3321797][1]["DeleteItem"][1]["Id"] = 3321797 -- 【库】勇士觉醒普天同庆礼包[属性:9]
	tWarriorPackage_Package[3321797][1]["RewardItem"] = {}
	tWarriorPackage_Package[3321797][1]["RewardItem"][1] = {}
	tWarriorPackage_Package[3321797][1]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9]【表格】人参果
	tWarriorPackage_Package[3321797][1]["RewardItem"][1]["Attr"] = "0 88" -- 人参果*88
	tWarriorPackage_Package[3321797][1]["RewardStrengthValue"] = {}
	tWarriorPackage_Package[3321797][1]["RewardStrengthValue"]["Value"] = 5000 -- 气力值
	tWarriorPackage_Package[3321797][1]["RewardItem"][2] = {}
	tWarriorPackage_Package[3321797][1]["RewardItem"][2]["Id"] = 730006 -- 【库】+6赤炼石[属性:0]【表格】赤炼石+6
	tWarriorPackage_Package[3321797][1]["RewardItem"][2]["Attr"] = "0 1 3" -- +6赤炼石(赠)*1
	tWarriorPackage_Package[3321797][1]["RewardItem"][3] = {}
	tWarriorPackage_Package[3321797][1]["RewardItem"][3]["Id"] = 3009002 -- 【库】晶莹星陨石[属性:9]【表格】晶莹星陨石
	tWarriorPackage_Package[3321797][1]["RewardItem"][3]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的晶莹星陨石*3
	tWarriorPackage_Package[3321797][1]["RewardItem"][4] = {}
	tWarriorPackage_Package[3321797][1]["RewardItem"][4]["Id"] = 3321798 -- 【库】90天【外套名】（赠）[属性:9]【表格】90天赠品外套包
	tWarriorPackage_Package[3321797][1]["RewardItem"][4]["Attr"] = "0 1" -- 90天【外套名】（赠）*1
	tWarriorPackage_Package[3321797][1]["RewardProItem"] = {}
	tWarriorPackage_Package[3321797][1]["RewardProItem"][1] = {}
	tWarriorPackage_Package[3321797][1]["RewardProItem"][1]["Pro"] = {{10,15}}
	tWarriorPackage_Package[3321797][1]["RewardProItem"][1]["Item"] = {}
	tWarriorPackage_Package[3321797][1]["RewardProItem"][1]["Item"][1] = {}
	tWarriorPackage_Package[3321797][1]["RewardProItem"][1]["Item"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9]【表格】神兵灵魄
	tWarriorPackage_Package[3321797][1]["RewardProItem"][1]["Item"][1]["Attr"] = "0 50" -- 神兵灵魄*50
	tWarriorPackage_Package[3321797][1]["RewardProItem"][1]["Item"][2] = {}
	tWarriorPackage_Package[3321797][1]["RewardProItem"][1]["Item"][2]["Id"] = 3321107 -- 【库】炼魂石[属性:9]【表格】炼魂石
	tWarriorPackage_Package[3321797][1]["RewardProItem"][1]["Item"][2]["Attr"] = "0 10" -- 炼魂石*10


	-- ===勇士觉醒普天同庆礼包（幸运奖）
	-- ===索引:3321797,2
	-- ===EMoneyLog: 10000,462
	tWarriorPackage_Package[3321797][2] = {}
	tWarriorPackage_Package[3321797][2]["ItemChanceSum"] = 10000
	tWarriorPackage_Package[3321797][2]["LogId"] = 12001439
	-- 666赠点 - 10.00%
	tWarriorPackage_Package[3321797][2][1] = {}
	tWarriorPackage_Package[3321797][2][1]["RandomItemChanceType"] = 2
	tWarriorPackage_Package[3321797][2][1]["ItemChance"] = 1000
	tWarriorPackage_Package[3321797][2][1]["RewardEMoneyMono"] = {}
	tWarriorPackage_Package[3321797][2][1]["RewardEMoneyMono"]["Value"] = 666 -- 赠点
	tWarriorPackage_Package[3321797][2][1]["EmoneyLog"] = "10000	462	0	0	-666	"
	tWarriorPackage_Package[3321797][2][1]["Flag"] = 1
	-- 6666赠点 - 3.00%
	tWarriorPackage_Package[3321797][2][2] = {}
	tWarriorPackage_Package[3321797][2][2]["RandomItemChanceType"] = 2
	tWarriorPackage_Package[3321797][2][2]["ItemChance"] = 300
	tWarriorPackage_Package[3321797][2][2]["Flag"] = 2
	-- \ - 87.00%
	tWarriorPackage_Package[3321797][2][3] = {}
	tWarriorPackage_Package[3321797][2][3]["RandomItemChanceType"] = 2
	tWarriorPackage_Package[3321797][2][3]["ItemChance"] = 8700
	tWarriorPackage_Package[3321797][2][3]["Flag"] = 3


	-- ===90天【外套名】
	-- ===索引:3321798
	-- ===删除:3321798,1
	tWarriorPackage_Package[3321798] = {}
	tWarriorPackage_Package[3321798]["LogId"] = 12001439
	tWarriorPackage_Package[3321798]["DeleteItem"] = {}
	tWarriorPackage_Package[3321798]["DeleteItem"][1] = {}
	tWarriorPackage_Package[3321798]["DeleteItem"][1]["Id"] = 3321798 -- 【库】90天【外套名】（赠）[属性:9]
	tWarriorPackage_Package[3321798]["RewardItem"] = {}
	tWarriorPackage_Package[3321798]["RewardItem"][1] = {}
	tWarriorPackage_Package[3321798]["RewardItem"][1]["Id"] = 189685 -- 【库】大圣魔铠[属性:0]【表格】90天时效1%神佑的90天大圣魔铠（赠）
	tWarriorPackage_Package[3321798]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑大圣魔铠(赠)*1
	tWarriorPackage_Package[3321798]["RewardItem"][2] = {}
	tWarriorPackage_Package[3321798]["RewardItem"][2]["Id"] = 3321799 -- 【库】天宫云锦[属性:9]【表格】天宫云锦
	tWarriorPackage_Package[3321798]["RewardItem"][2]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的天宫云锦*1
	tWarriorPackage_Package[3321798]["RewardEffect"] = {}
	tWarriorPackage_Package[3321798]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorPackage_Package[3321798]["RewardEffect"]["Effect"] = "angelwing"


	-- ===天宫云锦（普通外套）
	-- ===索引:3321799,1
	-- ===删除:195695,1
	tWarriorPackage_Package[3321799] = {}
	tWarriorPackage_Package[3321799][1] = {}
	tWarriorPackage_Package[3321799][1]["LogId"] = 12001439
	tWarriorPackage_Package[3321799][1]["RewardItem"] = {}
	tWarriorPackage_Package[3321799][1]["RewardItem"][1] = {}
	tWarriorPackage_Package[3321799][1]["RewardItem"][1]["Id"] = 189685 -- 【库】大圣魔铠[属性:0]【表格】大圣魔铠（赠）
	tWarriorPackage_Package[3321799][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑大圣魔铠(赠)*1
	tWarriorPackage_Package[3321799][1]["RewardNoNeedTip"] = 1
	tWarriorPackage_Package[3321799][1]["RewardEffect"] = {}
	tWarriorPackage_Package[3321799][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorPackage_Package[3321799][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===天宫云锦（光效外套）
	-- ===索引:3321799,2
	-- ===删除:195695,1
	tWarriorPackage_Package[3321799][2] = {}
	tWarriorPackage_Package[3321799][2]["LogId"] = 12001439
	tWarriorPackage_Package[3321799][2]["RewardItem"] = {}
	tWarriorPackage_Package[3321799][2]["RewardItem"][1] = {}
	tWarriorPackage_Package[3321799][2]["RewardItem"][1]["Id"] = 189695 -- 【库】大圣魔铠【齐天】[属性:0]【表格】大圣魔铠【齐天】（赠）
	tWarriorPackage_Package[3321799][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑大圣魔铠【齐天】(赠)*1
	tWarriorPackage_Package[3321799][2]["RewardNoNeedTip"] = 1
	tWarriorPackage_Package[3321799][2]["RewardEffect"] = {}
	tWarriorPackage_Package[3321799][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWarriorPackage_Package[3321799][2]["RewardEffect"]["Effect"] = "angelwing"


----------------------------------逻辑部分---------------------------------------------
function WarriorPackage_OpenPackage(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["WarriorPackage"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tWarriorPackage_Text["Msg"]["OutTime"])
		end
		return
	end
	-- 天石溢出
	local nUserEMoney = Get_UserEMoney()
	local nEMoney = tWarriorPackage_Cont["MaxEMoney"]
	if nUserEMoney + nEMoney > G_User_MaxEmoney then
		Sys_MsgBox(tWarriorPackage_Text["Msg"]["EMoney"])
		return
	end
	-- 判断背包空间
	local nSpace= RewardTemplate_GetRewardSpace(tWarriorPackage_Package[nItemId][1]) - RewardTemplate_GetDelSpace(tWarriorPackage_Package[nItemId][1])
	if not RewardTemplate_CheckSpace(tWarriorPackage_Package[nItemId][1]) then
		Sys_MsgBox(string.format(tWarriorPackage_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local tReward = RewardTemplate_NewRandom(tWarriorPackage_Package[nItemId], 2)
	if tReward[1]["tAward"][1]["Flag"] == 1 then
		Sys_SystemBroadcast(string.format(tWarriorPackage_Text["BroadCast"]["EMoney"],sUserName))
		User_EffectAdd(tWarriorPackage_Cont["Effect"][0],tWarriorPackage_Cont["Effect"][2])
	elseif tReward[1]["tAward"][1]["Flag"] == 2 then
		if Sys_ChkDayTime(tActivityTime["WarriorPackage"]["TimeLimit"]) then
			local nGlobalId = tWarriorPackage_Cont["GlobalId"]
			local nData0 = Get_SysDynaGlobalData0(nGlobalId)
			if nData0 < 10 then
				local nRedType = tWarriorPackage_RedPackets[nItemId]["RedType"]
				local nType = tWarriorPackage_RedPackets[nItemId]["nType"]
				local nMoneyType = tWarriorPackage_RedPackets[nItemId]["nMoneyType"]
				local nMoneyNum = tWarriorPackage_RedPackets[nItemId]["nMoneyNum"]
				local nManyNum = tWarriorPackage_RedPackets[nItemId]["nManyNum"]
				local sWord = tWarriorPackage_Text["Msg"]["Pwd"]
				Sys_SendRedEnvelops(nRedType,nType,nMoneyType,nMoneyNum,nManyNum,sUserName,sWord,sWord)
				Sys_SystemBroadcast(string.format(tWarriorPackage_Text["BroadCast"]["RedPack"],sUserName))
				User_EffectAdd(tWarriorPackage_Cont["Effect"][0],tWarriorPackage_Cont["Effect"][3])
				Sys_SetSynaGlobalData0(nGlobalId,nData0 + 1)
			end
		end
	else
		User_EffectAdd(tWarriorPackage_Cont["Effect"][0],tWarriorPackage_Cont["Effect"][1])
	end
	RewardTemplate_UseItem(tWarriorPackage_Package[nItemId][1])
end

function WarriorPackage_Choose(nItemId,nChoose)
	if nChoose == 1 then
		tItem[3321799]["Text2-1"] = {211}
	elseif nChoose == 2 then
		tItem[3321799]["Text2-1"] = {212}
	else
		tItem[3321799]["Text2-1"] = {213}
	end
	tItem[3321799]["OptionFunc211"]="WarriorPackage_Upgrade</N>"..nItemId.."</N>"..nChoose
	LinkItemGossipFunc_New(nItemId,"2-1")
end

function WarriorPackage_Upgrade(nItemId,nChoose)
	local nSaveTime = 0
	if nChoose < 3 then
		nSaveTime = 2
	else
		nChoose = 2
	end
	-- 检测物品是否存在
	local nNeedItemId = tWarriorPackage_Cont["NeedItem"]
	if not Item_ChkMulItem(nNeedItemId,nNeedItemId,1,1,0,0,nSaveTime) then
		return
	end
	-- 天石不足
	local nUserEMoney = Get_UserEMoney()
	local nEMoney = tWarriorPackage_Cont["NeedEMoney"][nChoose]
	if nUserEMoney < nEMoney then
		Sys_MsgBox(tWarriorPackage_Text["Msg"]["NoEMoney"])
		return
	end
	if User_AddEMoney(-nEMoney) then
		Item_DelMulItem(nNeedItemId,nNeedItemId,1,1,0,0,nSaveTime)
		local bMark,sRewardStr = RewardTemplate_UseItem(tWarriorPackage_Package[nItemId][nChoose])
		User_TalkChannel2005(string.format(tWarriorPackage_Text["Msg"]["UpdateSuccess"],sRewardStr))
	end
end

--时间自检重置全服限量
function WarriorPackage_Reset()
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["WarriorPackage"]["ActivityTime"]) then
		return
	end
	local nGlobalId = tWarriorPackage_Cont["GlobalId"]
	local nGlobalData5 = Get_SysDynaGlobalData(nGlobalId,5)
	
	--每天只重置1次
	if nGlobalData5 ~= 0 then
		return
	end
	Sys_SetSynaGlobalData5(nGlobalId,1)
	Sys_SetSynaGlobalData0(nGlobalId,0)
end

-- 自检限制清除
function WarriorPackage_ResetLimit()
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["WarriorPackage"]["ActivityTime"]) then
		return
	end
	local nGlobalId = tWarriorPackage_Cont["GlobalId"]
	Sys_SetSynaGlobalData5(nGlobalId,0)
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItemFace[3321797] = 2325
tItem[3321797] = tItem[3321797] or {}
tItem[3321797]["Function"] = function (nItemId,sItemName)
	tItem[nItemId]["Text111"] = Sys_CenterAline(tWarriorPackage_Text[nItemId]["Text111"],30)
	tItem[nItemId]["Text112"] = Sys_CenterAline(tWarriorPackage_Text[nItemId]["Text112"],30)
	LinkItemGossipFunc_New(nItemId,"1-1")
	return true
end
tItem[3321797]["DialogueText"] = tWarriorPackage_Text[3321797]
tItem[3321797]["Text1-1"] = {111,112,113}
tItem[3321797]["tOption1-1"] = {111}
tItem[3321797]["OptionFunc111"]="WarriorPackage_OpenPackage</N>3321797"

tItem[3321798] = tItem[3321798] or {}
tItem[3321798]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tWarriorPackage_Package[nItemId]) then
		Sys_MsgBox(tWarriorPackage_Text["Msg"]["NoSpace"])
		return
	end
	local bMark,sRewardStr = RewardTemplate_UseItem(tWarriorPackage_Package[nItemId])
	Sys_MsgBox(string.format(tWarriorPackage_Text["Msg"]["Award"],sRewardStr))
end
--------物品有对白模板
tItemFace[3321799] = 2326
tItem[3321799] = tItem[3321799] or {}
tItem[3321799]["Function"] = function (nItemId,sItemName)
	local nNeedItemId = tWarriorPackage_Cont["NeedItem"]
	if Item_ChkMulItem(nNeedItemId,nNeedItemId,1,1,0,0,2) then
		tItem[3321799]["Text1-1"] = {111,112,113,114,117,118}
		tItem[3321799]["tOption1-1"] = {111,112}
	elseif Item_ChkMulItem(nNeedItemId,nNeedItemId,1,1,0,0,0) then
		tItem[3321799]["Text1-1"] = {111,112,115,116,117,118}
		tItem[3321799]["tOption1-1"] = {113}
	else
		Sys_MsgBox(tWarriorPackage_Text["Msg"]["NoItem"])
		return
	end
	tItem[nItemId]["Text111"] = Sys_CenterAline(tWarriorPackage_Text[nItemId]["Text111"],30)
	tItem[nItemId]["Text112"] = Sys_CenterAline(tWarriorPackage_Text[nItemId]["Text112"],30)
	tItem[nItemId]["Text117"] = Sys_CenterAline(tWarriorPackage_Text[nItemId]["Text117"],30)
	tItem[nItemId]["Text118"] = Sys_CenterAline(tWarriorPackage_Text[nItemId]["Text118"],30)
	LinkItemGossipFunc_New(nItemId,"1-1")
	return true
end
tItem[3321799]["DialogueText"] = tWarriorPackage_Text[3321799]
tItem[3321799]["Text1-1"] = {111,112,113,114,115,116,117,118}
tItem[3321799]["tOption1-1"] = {111,112,113}
tItem[3321799]["OptionFunc111"]="WarriorPackage_Choose</N>3321799</N>1"
tItem[3321799]["OptionFunc112"]="WarriorPackage_Choose</N>3321799</N>2"
tItem[3321799]["OptionFunc113"]="WarriorPackage_Choose</N>3321799</N>3"


tItem[3321799]["Text2-1"] = {211,212,213}
tItem[3321799]["tOption2-1"] = {211,212}

--------------------------------------时间自检-------------------------------------------
--时间自检重置全服限量
local tWarriorPackage_Reset = {}
tWarriorPackage_Reset["Type"] = 2
tWarriorPackage_Reset["TimeType"] = 4
tWarriorPackage_Reset["Time"] = "00:00 00:02"
tWarriorPackage_Reset["Func"] = WarriorPackage_Reset
table.insert(tSystemTime_InitialData,tWarriorPackage_Reset)

local tWarriorPackage_ResetLimit = {}
tWarriorPackage_ResetLimit["Type"] = 2
tWarriorPackage_ResetLimit["TimeType"] = 4
tWarriorPackage_ResetLimit["Time"] = "00:03 00:05"
tWarriorPackage_ResetLimit["Func"] = WarriorPackage_ResetLimit
table.insert(tSystemTime_InitialData,tWarriorPackage_ResetLimit)