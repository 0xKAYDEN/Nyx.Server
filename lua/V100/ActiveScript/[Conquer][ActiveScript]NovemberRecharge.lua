------------------------------------------------------------------------------------
--Name：     190930[英文征服][活动脚本]11月首充（11.5-11.30）
--Creator:      冯子鑫
--Created:     2019/09/30
------------------------------------------------------------------------------------

--前缀 tNovemberRecharge_
-- logid: 12001669

-- 41549 = V100\ActiveScript\[Conquer][ActiveScript]NovemberRecharge.lua
-- 41549 = V100\活动脚本\[征服][活动脚本]11月首充（11.5-11.30）

--掩码：
--stc（205,77）1000天石（赠）尊享包使用次数
--stc（205,78）10000气力值尊享包使用次数

--emoneylog: 1000 01037
--emoneylog: 350 22772 记录打开首充大礼包 
--emoneylog: 350 22773	记录付费99天石升级翅膀为30天时效 

----------------------------------表配置部分--------------------------------------------


local tNovemberRecharge_Log= {}
	tNovemberRecharge_Log["DelItem"] = "0,0,%d,%d,12001516,2,0,0"

local tNovemberRecharge_EMoneyLog = {}
	tNovemberRecharge_EMoneyLog[3313977]= "350	22772	0	0	99	"
	tNovemberRecharge_EMoneyLog[3313979]= "350	22773	0	0	125	"

local tNovemberRecharge_Data = {}
	tNovemberRecharge_Data["Stc"] = {}
	tNovemberRecharge_Data["Stc"][3313974] = {}
	--	stc（205,77）		记录1000天石（赠）尊享包使用次数
	tNovemberRecharge_Data["Stc"][3313974]["Event"] = 205
	tNovemberRecharge_Data["Stc"][3313974]["Data"] = 77
	tNovemberRecharge_Data["Stc"][3313974]["MaxOpen"] = 10
	
	tNovemberRecharge_Data["Stc"][3313975] = {}
	--	stc（205,78）		记录10000气力值尊享包使用次数
	tNovemberRecharge_Data["Stc"][3313975]["Event"] = 205
	tNovemberRecharge_Data["Stc"][3313975]["Data"] = 78
	tNovemberRecharge_Data["Stc"][3313975]["MaxOpen"] = 10
	
	
		-- ===首充大礼包
	-- ===索引: tNovemberRecharge_Data["Reward"][3313979]
	-- ===删除: 3313979,1
	tNovemberRecharge_Data["Reward"] = {}
	tNovemberRecharge_Data["Reward"][3313979] = {}
	tNovemberRecharge_Data["Reward"][3313979]["LogId"] = 12001669
	tNovemberRecharge_Data["Reward"][3313979]["DeleteItem"] = {}
	tNovemberRecharge_Data["Reward"][3313979]["DeleteItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313979]["DeleteItem"][1]["Id"] = 3313979 -- 【库】FirstCreditingBox[属性:9]
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"] = {}
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][1]["Id"] = 3313974 -- 1000CPs(B)Pack[3313974][属性:9][叠加:0][金币:0], 【表格】1000赠品天石包
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][1]["Attr"] = "0 1" -- 1000CPs(B)Pack*1
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][2] = {}
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][2]["Id"] = 3313975 -- 10000ChiPointsPack[3313975][属性:9][叠加:0][金币:0], 【表格】10000气力值包
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][2]["Attr"] = "0 1" -- 10000ChiPointsPack*1
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][3] = {}
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][3]["Id"] = 3313976 -- +4Stone(B)Pack[3313976][属性:9][叠加:0][金币:0], 【表格】赠品+4赤练石
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][3]["Attr"] = "0 1" -- +4Stone(B)Pack*1
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][4] = {}
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][4]["Id"] = 3313977 -- WingsOfRomancePack[3313977][属性:9][叠加:0][金币:0], 【表格】WingsofRomance礼包
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][4]["Attr"] = "0 1" -- WingsOfRomancePack*1
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][5] = {}
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][5]["Id"] = 3313978 -- SparkleAccessoryPack[3313978][属性:9][叠加:0][金币:0], 【表格】流光武器外套可选包*2
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][5]["Attr"] = "0 2" -- SparkleAccessoryPack*2
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][6] = {}
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][6]["Id"] = 3314012 --  3314012 【库里没有该物品】, 【表格】八折券
	tNovemberRecharge_Data["Reward"][3313979]["RewardItem"][6]["Attr"] = "0 1 3" --  3314012 【库里没有该物品】（赠）*1
	tNovemberRecharge_Data["Reward"][3313979]["RewardEffect"] = {}
	tNovemberRecharge_Data["Reward"][3313979]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovemberRecharge_Data["Reward"][3313979]["RewardEffect"]["Effect"] = "angelwing"


	tNovemberRecharge_Data["Reward"][3313974] = {}
	-- ===1000天石（赠）尊享包
	-- ===索引: tNovemberRecharge_Data["Reward"][3313974]
	-- ===NewEMoneyLog: 10000,1037
	tNovemberRecharge_Data["Reward"][3313974]["LogId"] = 12001669
	tNovemberRecharge_Data["Reward"][3313974]["RewardEMoneyMono"] = {}
	tNovemberRecharge_Data["Reward"][3313974]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】每日可开启1次,共可开启10次,每日开启可获得100天石（赠）。
	tNovemberRecharge_Data["Reward"][3313974]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	01037"
	tNovemberRecharge_Data["Reward"][3313974]["RewardEffect"] = {}
	tNovemberRecharge_Data["Reward"][3313974]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovemberRecharge_Data["Reward"][3313974]["RewardEffect"]["Effect"] = "angelwing"


	tNovemberRecharge_Data["Reward"][3313975] = {}
	-- ===10000气力值尊享包
	-- ===索引: tNovemberRecharge_Data["Reward"][3313975]
	tNovemberRecharge_Data["Reward"][3313975]["LogId"] = 12001669
	tNovemberRecharge_Data["Reward"][3313975]["RewardStrengthValue"] = {}
	tNovemberRecharge_Data["Reward"][3313975]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】每日可开启1次,共可开启10次,每日开启可获得1000点气力值。
	tNovemberRecharge_Data["Reward"][3313975]["RewardEffect"] = {}
	tNovemberRecharge_Data["Reward"][3313975]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovemberRecharge_Data["Reward"][3313975]["RewardEffect"]["Effect"] = "angelwing"


	tNovemberRecharge_Data["Reward"][3313976] = {}
	-- ===4赤炼石（赠）尊享包
	-- ===索引: tNovemberRecharge_Data["Reward"][3313976]
	-- ===删除: 3313976,1
	tNovemberRecharge_Data["Reward"][3313976]["LogId"] = 12001669
	tNovemberRecharge_Data["Reward"][3313976]["DeleteItem"] = {}
	tNovemberRecharge_Data["Reward"][3313976]["DeleteItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313976]["DeleteItem"][1]["Id"] = 3313976 -- 【库】+4Stone(B)Pack[属性:9]
	tNovemberRecharge_Data["Reward"][3313976]["RewardItem"] = {}
	tNovemberRecharge_Data["Reward"][3313976]["RewardItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313976]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】4赤炼石（赠）尊享包
	tNovemberRecharge_Data["Reward"][3313976]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的+4Stone（赠）*1
	tNovemberRecharge_Data["Reward"][3313976]["RewardEffect"] = {}
	tNovemberRecharge_Data["Reward"][3313976]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovemberRecharge_Data["Reward"][3313976]["RewardEffect"]["Effect"] = "angelwing"


	tNovemberRecharge_Data["Reward"][3313977] = {}
	-- ===WingsofRomance尊享包
	-- ===索引: tNovemberRecharge_Data["Reward"][3313977][1]
	-- ===删除: 3313977,1
	tNovemberRecharge_Data["Reward"][3313977][1] = {}
	tNovemberRecharge_Data["Reward"][3313977][1]["LogId"] = 12001669
	tNovemberRecharge_Data["Reward"][3313977][1]["DeleteItem"] = {}
	tNovemberRecharge_Data["Reward"][3313977][1]["DeleteItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313977][1]["DeleteItem"][1]["Id"] = 3313977 -- 【库】WingsOfRomancePack[属性:9]
	tNovemberRecharge_Data["Reward"][3313977][1]["RewardWing"] = {}
	tNovemberRecharge_Data["Reward"][3313977][1]["RewardWing"]["TitleType"] = 6012 -- 【库】WingsofRomance, 【表格】打开可获得1件15天时效的WingsofRomance翅膀
	tNovemberRecharge_Data["Reward"][3313977][1]["RewardWing"]["TitleId"] = 6012
	tNovemberRecharge_Data["Reward"][3313977][1]["RewardWing"]["SaveTime"] = 21600 -- 15天时效的[翅膀]:WingsofRomance, 【需求】打开可获得1件15天时效的WingsofRomance翅膀
	tNovemberRecharge_Data["Reward"][3313977][1]["RewardEffect"] = {}
	tNovemberRecharge_Data["Reward"][3313977][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovemberRecharge_Data["Reward"][3313977][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovemberRecharge_Data["Reward"][3313977][2] = {}
	-- ===WingsofRomance尊享包（升级）
	-- ===索引: tNovemberRecharge_Data["Reward"][3313977][2]
	-- ===删除: 3313977,1
	tNovemberRecharge_Data["Reward"][3313977][2]["LogId"] = 12001669
	tNovemberRecharge_Data["Reward"][3313977][2]["DeleteItem"] = {}
	tNovemberRecharge_Data["Reward"][3313977][2]["DeleteItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313977][2]["DeleteItem"][1]["Id"] = 3313977 -- 【库】WingsOfRomancePack[属性:9]
	tNovemberRecharge_Data["Reward"][3313977][2]["RewardWing"] = {}
	tNovemberRecharge_Data["Reward"][3313977][2]["RewardWing"]["TitleType"] = 6012 -- 【库】WingsofRomance, 【表格】打开可获得1件30天时效的WingsofRomance翅膀
	tNovemberRecharge_Data["Reward"][3313977][2]["RewardWing"]["TitleId"] = 6012
	tNovemberRecharge_Data["Reward"][3313977][2]["RewardWing"]["SaveTime"] = 43200 -- 30天时效的[翅膀]:WingsofRomance, 【需求】打开可获得1件30天时效的WingsofRomance翅膀
	tNovemberRecharge_Data["Reward"][3313977][2]["RewardEffect"] = {}
	tNovemberRecharge_Data["Reward"][3313977][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovemberRecharge_Data["Reward"][3313977][2]["RewardEffect"]["Effect"] = "angelwing"
	tNovemberRecharge_Data["Reward"][3313977][2]["NeedEMoney"] = 99

	tNovemberRecharge_Data["Reward"][3313978] = {}
	-- ===春庭月·流光
	-- ===索引: tNovemberRecharge_Data["Reward"][3313978][1]
	-- ===删除: 3313978,1
	tNovemberRecharge_Data["Reward"][3313978][1] = {}
	tNovemberRecharge_Data["Reward"][3313978][1]["LogId"] = 12001669
	tNovemberRecharge_Data["Reward"][3313978][1]["DeleteItem"] = {}
	tNovemberRecharge_Data["Reward"][3313978][1]["DeleteItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313978][1]["DeleteItem"][1]["Id"] = 3313978 -- 【库】SparkleAccessoryPack[属性:9]
	tNovemberRecharge_Data["Reward"][3313978][1]["RewardItem"] = {}
	tNovemberRecharge_Data["Reward"][3313978][1]["RewardItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313978][1]["RewardItem"][1]["Id"] = 350108 -- LunarAffection(Sparkle)[350108][属性:0][叠加:0][金币:0], 【表格】春庭月·流光（30天）
	tNovemberRecharge_Data["Reward"][3313978][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的LunarAffection(Sparkle)（赠）*1
	tNovemberRecharge_Data["Reward"][3313978][1]["RewardEffect"] = {}
	tNovemberRecharge_Data["Reward"][3313978][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovemberRecharge_Data["Reward"][3313978][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovemberRecharge_Data["Reward"][3313978][2] = {}
	-- ===凤求凰·流光
	-- ===索引: tNovemberRecharge_Data["Reward"][3313978][2]
	-- ===删除: 3313978,1
	tNovemberRecharge_Data["Reward"][3313978][2]["LogId"] = 12001669
	tNovemberRecharge_Data["Reward"][3313978][2]["DeleteItem"] = {}
	tNovemberRecharge_Data["Reward"][3313978][2]["DeleteItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313978][2]["DeleteItem"][1]["Id"] = 3313978 -- 【库】SparkleAccessoryPack[属性:9]
	tNovemberRecharge_Data["Reward"][3313978][2]["RewardItem"] = {}
	tNovemberRecharge_Data["Reward"][3313978][2]["RewardItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313978][2]["RewardItem"][1]["Id"] = 360208 -- PhoenixDream(Sparkle)[360208][属性:0][叠加:0][金币:0], 【表格】凤求凰·流光（30天）
	tNovemberRecharge_Data["Reward"][3313978][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的PhoenixDream(Sparkle)（赠）*1
	tNovemberRecharge_Data["Reward"][3313978][2]["RewardEffect"] = {}
	tNovemberRecharge_Data["Reward"][3313978][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovemberRecharge_Data["Reward"][3313978][2]["RewardEffect"]["Effect"] = "angelwing"


	tNovemberRecharge_Data["Reward"][3313978][3] = {}
	-- ===长相思·流光
	-- ===索引: tNovemberRecharge_Data["Reward"][3313978][3]
	-- ===删除: 3313978,1
	tNovemberRecharge_Data["Reward"][3313978][3]["LogId"] = 12001669
	tNovemberRecharge_Data["Reward"][3313978][3]["DeleteItem"] = {}
	tNovemberRecharge_Data["Reward"][3313978][3]["DeleteItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313978][3]["DeleteItem"][1]["Id"] = 3313978 -- 【库】SparkleAccessoryPack[属性:9]
	tNovemberRecharge_Data["Reward"][3313978][3]["RewardItem"] = {}
	tNovemberRecharge_Data["Reward"][3313978][3]["RewardItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313978][3]["RewardItem"][1]["Id"] = 370048 -- LovesickBow(Sparkle)[370048][属性:0][叠加:0][金币:0], 【表格】长相思·流光（30天）
	tNovemberRecharge_Data["Reward"][3313978][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的LovesickBow(Sparkle)（赠）*1
	tNovemberRecharge_Data["Reward"][3313978][3]["RewardEffect"] = {}
	tNovemberRecharge_Data["Reward"][3313978][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovemberRecharge_Data["Reward"][3313978][3]["RewardEffect"]["Effect"] = "angelwing"


	tNovemberRecharge_Data["Reward"][3313978][4] = {}
	-- ===长相守·流光
	-- ===索引: tNovemberRecharge_Data["Reward"][3313978][4]
	-- ===删除: 3313978,1
	tNovemberRecharge_Data["Reward"][3313978][4]["LogId"] = 12001669
	tNovemberRecharge_Data["Reward"][3313978][4]["DeleteItem"] = {}
	tNovemberRecharge_Data["Reward"][3313978][4]["DeleteItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313978][4]["DeleteItem"][1]["Id"] = 3313978 -- 【库】SparkleAccessoryPack[属性:9]
	tNovemberRecharge_Data["Reward"][3313978][4]["RewardItem"] = {}
	tNovemberRecharge_Data["Reward"][3313978][4]["RewardItem"][1] = {}
	tNovemberRecharge_Data["Reward"][3313978][4]["RewardItem"][1]["Id"] = 380054 -- IdealShield(Sparkle)[380054][属性:0][叠加:0][金币:0], 【表格】长相守·流光（30天）
	tNovemberRecharge_Data["Reward"][3313978][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的IdealShield(Sparkle)（赠）*1
	tNovemberRecharge_Data["Reward"][3313978][4]["RewardEffect"] = {}
	tNovemberRecharge_Data["Reward"][3313978][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovemberRecharge_Data["Reward"][3313978][4]["RewardEffect"]["Effect"] = "angelwing"
--------------------------------------------逻辑部分配置--------------------------------------------

--1000天石（赠）尊享包和10000气力包使用接口
function NovemberRecharge_OpenCPandChiGift(nItemId)
	local nUserId = Get_UserId()
	local nEvent = tNovemberRecharge_Data["Stc"][nItemId]["Event"]
	local nType = tNovemberRecharge_Data["Stc"][nItemId]["Data"]
	local nMaxOpen = tNovemberRecharge_Data["Stc"][nItemId]["MaxOpen"] or 1
	local nOpen = Get_UserStatisticValue(nEvent, nType, nUserId) + 1--记录第几次打开
	
	--判断隔天
	if not Task_StcInterval(nEvent, nType, 1, 4, nUserId) then
		User_TalkChannel2005(tNovemberRecharge_Text[nItemId]["AlreadyOpen"])
		Sys_MsgBox(tNovemberRecharge_Text[nItemId]["AlreadyOpen"])
		return
	end
	
	--判断是否是天石礼包
	if tNovemberRecharge_Data["Reward"][nItemId]["RewardEMoneyMono"] ~= nil and tNovemberRecharge_Data["Reward"][nItemId]["RewardEMoneyMono"]["Value"] ~= nil then
		--判断天石是否上限
		local nMaxRewardEMoneyMono = tNovemberRecharge_Data["Reward"][nItemId]["RewardEMoneyMono"]["Value"]
		if Get_UserMonoEMoney() + nMaxRewardEMoneyMono > G_User_MaxEmoney then
			Sys_MsgBox(tNovemberRecharge_Text[nItemId]["NoSpace"])
			return 
		end
		
	end
	
	if nOpen >= nMaxOpen then
		--开满十次删除物品
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			--掩码重置
			Task_SetStatistic(nEvent, nType, 0, 1, nUserId)
			Task_SetStcTimestamp(nEvent, nType, 0, nUserId)
			Sys_SaveActionRewardLog(string.format(tNovemberRecharge_Log["DelItem"],nItemId,1))
			RewardTemplate_UseItemAndMsg(tNovemberRecharge_Data["Reward"][nItemId])
			Sys_MsgBox(tNovemberRecharge_Text[nItemId]["LastReward"])
		end
		return
	elseif nOpen < nMaxOpen then
		--未开满十次
		
		--掩码加一
		Task_AddStatistic(nEvent, nType, 1, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nType, 0, nUserId)
		
		RewardTemplate_UseItemAndMsg(tNovemberRecharge_Data["Reward"][nItemId])
		Sys_MsgBox(string.format(tNovemberRecharge_Text[nItemId]["Reward"],nMaxOpen-nOpen))
	end
	
end

-- WingsofRomance尊享包升级并获得奖励
function NovemberRecharge_WingUpGift(nItemId)
		
	local nUserId = Get_UserId()
	local nNeedEMoney = tNovemberRecharge_Data["Reward"][nItemId][2]["NeedEMoney"]
		--判断天石足够
	if Get_UserEMoney(nUserId) < nNeedEMoney then
		Sys_MsgBox(tNovemberRecharge_Text["Sys_MsgBox"]["NotEMoney"])
		return
	end
	
	if Item_ChkItem(nItemId) then
		if User_AddEMoney(-nNeedEMoney, nUserId) then
			-- 领奖打log
			Sys_SaveEmoneyBuy(tNovemberRecharge_EMoneyLog[nItemId])
			RewardTemplate_UseItemAndMsg(tNovemberRecharge_Data["Reward"][nItemId][2])
			Sys_MsgBox(tNovemberRecharge_Text[nItemId]["Reward"][2])
		end
	end
end

-- WingsofRomance尊享包不升级直接获得奖励
function NovemberRecharge_WingReward(nItemId)
	--获得15天翅膀
	if Item_ChkItem(nItemId) then
		RewardTemplate_UseItemAndMsg(tNovemberRecharge_Data["Reward"][nItemId][1])
		Sys_MsgBox(tNovemberRecharge_Text[nItemId]["Reward"][1])
	end
end

--流光武器外套可选包
function NovemberRecharge_OptionalGift(nItemId,nOption)
	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tNovemberRecharge_Data["Reward"][nItemId][nOption])
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tNovemberRecharge_Text["Sys_MsgBox"]["NoSpace1"])
		return
	end
	if Item_ChkItem(nItemId) then
		RewardTemplate_UseItemAndMsg(tNovemberRecharge_Data["Reward"][nItemId][nOption])
	end
end


---------------------------------------------物品模块---------------------------------------------


	--流光武器外套可选包
tItemFace[3313978] = 1785
tItem[3313978] = tItem[3313978] or {}
tItem[3313978]["DialogueText"] = tNovemberRecharge_Text[3313978]
--选择奖励
tItem[3313978]["Text1-1"] = {111}
tItem[3313978]["tOption1-1"] = {1,2,3,4,5}

tItem[3313978]["OptionFunc1"]="NovemberRecharge_OptionalGift</N>3313978</N>1"
tItem[3313978]["OptionFunc2"]="NovemberRecharge_OptionalGift</N>3313978</N>2"
tItem[3313978]["OptionFunc3"]="NovemberRecharge_OptionalGift</N>3313978</N>3"
tItem[3313978]["OptionFunc4"]="NovemberRecharge_OptionalGift</N>3313978</N>4"

--3313979 首充大礼包、
tItem[3313979] = tItem[3313979] or {}
tItem[3313979]["Function"] = function(nItemId)
	--判断背包空间
	if not User_CheckLeftSpace(6) then
		Sys_MsgBox(string.format(tNovemberRecharge_Text["Sys_MsgBox"]["NoSpace2"],6))
		return
	end
	--按运营需求加上log
	Sys_SaveEmoneyBuy(tNovemberRecharge_EMoneyLog[nItemId])
	RewardTemplate_UseItemAndMsg(tNovemberRecharge_Data["Reward"][nItemId],nUserId)
end

--+4赤炼石（赠）尊享包
tItem[3313976] = tItem[3313976] or {}
tItem[3313976]["Function"] = function(nItemId)
	RewardTemplate_UseItemAndMsg(tNovemberRecharge_Data["Reward"][nItemId],nUserId)
end

--3313975  10000气力值尊享包
--3313974  1000天石（赠）尊享包

tItem[3313975] = tItem[3313975] or {}
tItem[3313974] = tItem[3313975] or {}
tItem[3313975]["Function"] = function(nItemId)
	
	NovemberRecharge_OpenCPandChiGift(nItemId)
end

--3313977  WingsofRomance尊享包
tItemFace[3313977] = 2450
tItem[3313977] = tItem[3313977] or {}
tItem[3313977]["DialogueText"] = tNovemberRecharge_Text[3313977]
--选择奖励
tItem[3313977]["Text1-1"] = {111,112,113,114,115}
tItem[3313977]["tOption1-1"] = {111,112}

tItem[3313977]["OptionPoint111"] = "1-2"
tItem[3313977]["OptionFunc112"]="NovemberRecharge_WingReward</N>3313977"
--二次确认
tItem[3313977]["Text1-2"] = {121,122}
tItem[3313977]["tOption1-2"] = {121,122}

--确认升级
tItem[3313977]["OptionFunc121"] = "NovemberRecharge_WingUpGift</N>3313977"

--背包信头像
tItemFace[3313980] = 1592
