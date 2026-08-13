------------------------------------------------------------------------------------
--Name：            180905[ios英文征服][活动脚本]新服成长基金(9.18-长期)
--Creator:      吴燕柚
--Created:     2018/09/05
------------------------------------------------------------------------------------
--任务需求：
-- 活动方式：
-- 1.所有新服玩家可以充值1000天石，获得一个成长基金礼包。
-- 2.玩家达到指定等级，即可免费打开礼包获得奖励。
-- 注意：
-- 1.需要文字提示礼包一共给出1W赠品天石，以及有属性的FreedomSuit和GoldenRetriever
-- 2.需要给到提示，下个等级可以获得什么东西。
-- 3.礼包中东西都是给赠品，礼包本身也是赠品不可交易。
-- 活动时间:9.18-长期

-- 命名规范：NewServerRewardPack_

-- stc(182,64) 记录礼包开启阶段
-- logId 12001158 打开礼包

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tNewServerRewardPack_Stc = {}
tNewServerRewardPack_Stc["Event"] = 182
tNewServerRewardPack_Stc["Data"] = 64

--阶段索引表
local tNewServerRewardPack_Status = {}
tNewServerRewardPack_Status[0] = {}
tNewServerRewardPack_Status[0][90] = 0
tNewServerRewardPack_Status[0][95] = 0
tNewServerRewardPack_Status[0][100] = 1
tNewServerRewardPack_Status[0][105] = 1
tNewServerRewardPack_Status[0][110] = 2
tNewServerRewardPack_Status[0][115] = 2
tNewServerRewardPack_Status[0][120] = 3
tNewServerRewardPack_Status[0][125] = 3
tNewServerRewardPack_Status[0][130] = 3
tNewServerRewardPack_Status[0][135] = 3
tNewServerRewardPack_Status[1] = {}
tNewServerRewardPack_Status[1][90] = 3
tNewServerRewardPack_Status[1][95] = 3
tNewServerRewardPack_Status[1][100] = 4
tNewServerRewardPack_Status[1][105] = 4
tNewServerRewardPack_Status[1][110] = 5
tNewServerRewardPack_Status[1][115] = 5
tNewServerRewardPack_Status[1][120] = 6
tNewServerRewardPack_Status[1][125] = 6
tNewServerRewardPack_Status[1][130] = 6
tNewServerRewardPack_Status[1][135] = 6
tNewServerRewardPack_Status[2] = {}
tNewServerRewardPack_Status[2][90] = 6
tNewServerRewardPack_Status[2][95] = 6
tNewServerRewardPack_Status[2][100] = 6
tNewServerRewardPack_Status[2][105] = 6
tNewServerRewardPack_Status[2][110] = 7
tNewServerRewardPack_Status[2][115] = 7
tNewServerRewardPack_Status[2][120] = 8
tNewServerRewardPack_Status[2][125] = 9
tNewServerRewardPack_Status[2][130] = 10
tNewServerRewardPack_Status[2][135] = 10

-- 奖励索引表
local tNewServerRewardPack_Reward = {}
tNewServerRewardPack_Reward[1] = {}
tNewServerRewardPack_Reward[1]["RewardEMoneyMono"] = {}
tNewServerRewardPack_Reward[1]["RewardEMoneyMono"]["Value"] = 500
tNewServerRewardPack_Reward[1]["LogId"] = 12001158
tNewServerRewardPack_Reward[1]["LogStep"] = "1[1]"

tNewServerRewardPack_Reward[2] = {}
tNewServerRewardPack_Reward[2]["RewardEMoneyMono"] = {}
tNewServerRewardPack_Reward[2]["RewardEMoneyMono"]["Value"] = 500
tNewServerRewardPack_Reward[2]["LogId"] = 12001158
tNewServerRewardPack_Reward[2]["LogStep"] = "1[2]"

tNewServerRewardPack_Reward[3] = {}
tNewServerRewardPack_Reward[3]["RewardEMoneyMono"] = {}
tNewServerRewardPack_Reward[3]["RewardEMoneyMono"]["Value"] = 500
tNewServerRewardPack_Reward[3]["LogId"] = 12001158
tNewServerRewardPack_Reward[3]["LogStep"] = "1[3]"

tNewServerRewardPack_Reward[4] = {}
tNewServerRewardPack_Reward[4]["RewardEMoneyMono"] = {}
tNewServerRewardPack_Reward[4]["RewardEMoneyMono"]["Value"] = 1000
tNewServerRewardPack_Reward[4]["LogId"] = 12001158
tNewServerRewardPack_Reward[4]["LogStep"] = "1[4]"

tNewServerRewardPack_Reward[5] = {}
tNewServerRewardPack_Reward[5]["RewardEMoneyMono"] = {}
tNewServerRewardPack_Reward[5]["RewardEMoneyMono"]["Value"] = 1000
tNewServerRewardPack_Reward[5]["LogId"] = 12001158
tNewServerRewardPack_Reward[5]["LogStep"] = "1[5]"

tNewServerRewardPack_Reward[6] = {}
tNewServerRewardPack_Reward[6]["RewardEMoneyMono"] = {}
tNewServerRewardPack_Reward[6]["RewardEMoneyMono"]["Value"] = 1000
tNewServerRewardPack_Reward[6]["LogId"] = 12001158
tNewServerRewardPack_Reward[6]["LogStep"] = "1[6]"

tNewServerRewardPack_Reward[7] = {}
tNewServerRewardPack_Reward[7]["RewardEMoneyMono"] = {}
tNewServerRewardPack_Reward[7]["RewardEMoneyMono"]["Value"] = 1500
tNewServerRewardPack_Reward[7]["LogId"] = 12001158
tNewServerRewardPack_Reward[7]["LogStep"] = "1[7]"

tNewServerRewardPack_Reward[8] = {}
tNewServerRewardPack_Reward[8]["RewardEMoneyMono"] = {}
tNewServerRewardPack_Reward[8]["RewardEMoneyMono"]["Value"] = 2000
tNewServerRewardPack_Reward[8]["LogId"] = 12001158
tNewServerRewardPack_Reward[8]["LogStep"] = "1[8]"

tNewServerRewardPack_Reward[9] = {}
tNewServerRewardPack_Reward[9]["RewardItem"] = {}
tNewServerRewardPack_Reward[9]["RewardItem"][1] = {}
tNewServerRewardPack_Reward[9]["RewardItem"][1]["Id"] = 192745 -- FreedomSuit
tNewServerRewardPack_Reward[9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
tNewServerRewardPack_Reward[9]["LogId"] = 12001158
tNewServerRewardPack_Reward[9]["LogStep"] = "1[9]"

tNewServerRewardPack_Reward[10] = {}
tNewServerRewardPack_Reward[10]["DeleteItem"] = {}
tNewServerRewardPack_Reward[10]["DeleteItem"][1] = {}
tNewServerRewardPack_Reward[10]["DeleteItem"][1]["Id"] = 3310692
tNewServerRewardPack_Reward[10]["RewardEMoneyMono"] = {}
tNewServerRewardPack_Reward[10]["RewardEMoneyMono"]["Value"] = 2000
tNewServerRewardPack_Reward[10]["LogId"] = 12001158
tNewServerRewardPack_Reward[10]["LogStep"] = "1[10]"

tNewServerRewardPack_Reward[11] = {}
tNewServerRewardPack_Reward[11]["DeleteItem"] = {}
tNewServerRewardPack_Reward[11]["DeleteItem"][1] = {}
tNewServerRewardPack_Reward[11]["DeleteItem"][1]["Id"] = 3310692
tNewServerRewardPack_Reward[11]["LogId"] = 12001158
tNewServerRewardPack_Reward[11]["LogStep"] = "1[10]"

local tNewServerRewardPack_Log = {}
tNewServerRewardPack_Log["FirstOpen"] = "350	21745	0	0	1	"

----------------------------------逻辑部分---------------------------------------------

--判断阶段
function NewServerRewardPack_ChkStatus()
	local nUserId = Get_UserId()
	local nUserMetempsychosis = Get_UserMetempsychosis(nUserId)
	if nUserMetempsychosis > 2 then
		nUserMetempsychosis = 2
		nUserLev = 140
		nNowStatus = 10
		return nUserMetempsychosis, nUserLev, nNowStatus
	end
	local nUserLev = Get_UserLevel(nUserId)
	local nNowStatus = 0
	local nGrade = math.floor(nUserLev/5)*5
	--不足100级，则为上一级条件
	if nGrade < 100 then
		nGrade = 90
	end

	if nGrade > 125 then
		nGrade = 130
	end

	nNowStatus = tNewServerRewardPack_Status[nUserMetempsychosis][nGrade]
	
	return nUserMetempsychosis, nUserLev, nNowStatus
end

-- 开礼包
function NewServerRewardPack_OpenItem(nItemId, sItemName)
	local nEvent = tNewServerRewardPack_Stc["Event"]
	local nType = tNewServerRewardPack_Stc["Data"]
	-- 开启状态
	local nOpenStatus = Get_UserStatisticValue(nEvent,nType) or 0

	-- 应显示的奖励
	local nShowStatus = nOpenStatus + 1
	-- 下一次的奖励
	local nNextStatus = nShowStatus + 1
	-- 玩家当前状态
	local nUserMetempsychosis, nUserLev, nNowStatus = NewServerRewardPack_ChkStatus()

	if nOpenStatus >= 10 then
		RewardTemplate_UseItemAndMsg(tNewServerRewardPack_Reward[11])
		return
	end
	
	
	tItem[nItemId]["Text113"] = string.format(tNewServerRewardPack_Text[nItemId]["Text113"], tNewServerRewardPack_Text[nItemId][nShowStatus]["Condition"])
	tItem[nItemId]["Text114"] = string.format(tNewServerRewardPack_Text[nItemId]["Text114"], tNewServerRewardPack_Text[nItemId][nShowStatus]["Reward"])
	-- 是否最后一次开启
	if nNextStatus ~= 11 then
		-- 设置对白
		tItem[nItemId]["Text115"] = string.format(tNewServerRewardPack_Text[nItemId]["Text115"], tNewServerRewardPack_Text[nItemId][nNextStatus]["Condition"])
		tItem[nItemId]["Text116"] = string.format(tNewServerRewardPack_Text[nItemId]["Text116"], tNewServerRewardPack_Text[nItemId][nNextStatus]["Reward"])
	else
		tItem[nItemId]["Text115"] = ""
		tItem[nItemId]["Text116"] = ""
	end
	
	tItem[nItemId]["OptionFunc111"] = "NewServerRewardPack_Claim</N>"..nItemId
	
	LinkItemGossipFunc_New(nItemId, "2-1")
	
	
	
end

function NewServerRewardPack_Claim(nItemId)

	if not Item_ChkItem(nItemId) then
		return
	end

	local nEvent = tNewServerRewardPack_Stc["Event"]
	local nType = tNewServerRewardPack_Stc["Data"]
	-- 开启状态
	local nOpenStatus = Get_UserStatisticValue(nEvent,nType) or 0
	-- 玩家当前状态
	local nUserMetempsychosis, nUserLev, nNowStatus = NewServerRewardPack_ChkStatus()
	-- 本次开启的
	local nClaimStatus = nOpenStatus + 1

	-- 判断是否达到上限
	if not RewardTemplate_UpperLimit(tNewServerRewardPack_Reward[nClaimStatus]) then
		return
	end

	if nNowStatus > nOpenStatus then
		if Task_AddStatistic(nEvent,nType,1,1) then
			RewardTemplate_UseItemAndMsg(tNewServerRewardPack_Reward[nClaimStatus])
			-- 第一次开启记录emoneylog
			if nOpenStatus == 0 then
				Sys_SaveEmoneyBuy(tNewServerRewardPack_Log["FirstOpen"])
			end
		end
	else
		local sNotEnough = string.format(tNewServerRewardPack_Text[nItemId]["LevelNotEnough"], tNewServerRewardPack_Text[nItemId][nClaimStatus]["Condition"], tNewServerRewardPack_Text[nItemId][nClaimStatus]["Reward"])
		User_TalkChannel2005(sNotEnough)
	end
	
end





---------------------------------物品部分---------------------------------------------
-- 成长基金礼包
tItemFace[3310692] = 524
tItem[3310692] = tItem[3310692] or {}
tItem[3310692]["DialogueText"] = tNewServerRewardPack_Text[3310692]
tItem[3310692]["Function"] = function(nItemId, sItemName)
	NewServerRewardPack_OpenItem(nItemId, sItemName)
end
-- 主对白
tItem[3310692]["Text2-1"]={111, 112, 113, 114, 115, 116, 117}
tItem[3310692]["tOption2-1"]={111, 112}

