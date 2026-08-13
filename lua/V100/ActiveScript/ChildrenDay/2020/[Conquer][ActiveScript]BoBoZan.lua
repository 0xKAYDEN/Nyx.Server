------------------------------------------------------------------------------------
--Name：       200410[简体征服][活动脚本]全球儿童节活动-波波攒（5.26-6.9）
--Creator:     郑洵
--Created:     2020-04-14
------------------------------------------------------------------------------------
-- 任务需求：
-- 波波攒玩法：
-- 直接在npc处与npc进行对战，玩法类似剪刀石头布。
-- 开始比赛后，玩家与npc都有1000的生命值（写在对白上）
-- 然后玩家开始选择出招，npc随机出招。
-- 根据双方的出招对比结果，生命先归零的一方算输。

-- 命名前缀
-- BoBoZan_

-- logid:12001963
-- 41803 = V100\ActiveScript\ChildrenDay\2020\[Conquer][ActiveScript]BoBoZan.lua
-- 41803 = V100\活动脚本\儿童节\2020\[征服][活动脚本]全球儿童节活动-波波攒（5.26-6.9）.lua

-- stc掩码说明
-- stc(219 47)			记录玩家领取奖励
-- stc(219 48)			记录玩家首次对话
-- stc(219 49)			记录玩家气
-- stc(219 50)			记录NPC气
-- stc(219 51)			记录玩家血量
-- stc(219 52)			记录NPC血量
-- stc(219 53)			记录玩家游玩状态
-- stc(219 54)			记录玩家每日免费次数
-- stc(219 55)			记录NPC胜利一击
-- stc(300 01)			记录童趣积分stc


--------------------------------------------------常量表---------------------------------------------
-- 常量表
local tBoBoZan_Cont = {}
	--等级限制
	tBoBoZan_Cont["Level"] = 80
	tBoBoZan_Cont["Metempsychosis"] = 0
	--龟仙人 ID
	tBoBoZan_Cont["MainNPCId"] = 26505
	--妙妙屋
	tBoBoZan_Cont["GameMap"] = 10835
	tBoBoZan_Cont["PosX"] = 69
	tBoBoZan_Cont["PosY"] = 75
	--游玩券 ID
	tBoBoZan_Cont["GameTicket"] = 3330736
	--冒险币 ID
	tBoBoZan_Cont["GameCurrency"] = 3316104
	--读条蓄力
	tBoBoZan_Cont["Secs"] = 1
	tBoBoZan_Cont["ActionId"] = 100
	--接任务光效
	tBoBoZan_Cont["TaskEffect"] = "zf2-e128"
	--胜利光效
	tBoBoZan_Cont["VictoryEffect"] = "sports_victory"
	--失败光效
	tBoBoZan_Cont["FailureEffect"] = "sports_failure"

-- 记录LOG
local tBoBoZan_Log = {}
	-- 记录活动步骤
	tBoBoZan_Log["Game"] = {}
	tBoBoZan_Log["Game"][1] = "0,0,0,0,12001963,4,0,0"-- 开始比试
	tBoBoZan_Log["Game"][2] = "0,0,0,0,12001963,4[%d],0,0"-- 领取波波攒奖励

-- 掩码使用
local tBoBoZan_Stc = {}
	--记录童趣积分stc
	tBoBoZan_Stc[10835] = {}
	tBoBoZan_Stc[10835]["EventType"] = 300
	tBoBoZan_Stc[10835]["DataType"] = 01
	--记录玩家领取奖励
	tBoBoZan_Stc[3316104] = {}
	tBoBoZan_Stc[3316104]["EventType"] = 219
	tBoBoZan_Stc[3316104]["DataType"] = 47
	--记录玩家首次对话
	tBoBoZan_Stc[1] = {}
	tBoBoZan_Stc[1]["EventType"] = 219
	tBoBoZan_Stc[1]["DataType"] = 48
	--记录玩家气
	tBoBoZan_Stc[2] = {}
	tBoBoZan_Stc[2]["EventType"] = 219
	tBoBoZan_Stc[2]["DataType"] = 49
	--记录NPC气
	tBoBoZan_Stc[3] = {}
	tBoBoZan_Stc[3]["EventType"] = 219
	tBoBoZan_Stc[3]["DataType"] = 50
	--记录玩家血量
	tBoBoZan_Stc[4] = {}
	tBoBoZan_Stc[4]["EventType"] = 219
	tBoBoZan_Stc[4]["DataType"] = 51
	--记录NPC血量
	tBoBoZan_Stc[5] = {}
	tBoBoZan_Stc[5]["EventType"] = 219
	tBoBoZan_Stc[5]["DataType"] = 52
	--记录玩家游玩状态
	tBoBoZan_Stc[6] = {}
	tBoBoZan_Stc[6]["EventType"] = 219
	tBoBoZan_Stc[6]["DataType"] = 53
	--记录玩家每日免费次数
	tBoBoZan_Stc[7] = {}
	tBoBoZan_Stc[7]["EventType"] = 219
	tBoBoZan_Stc[7]["DataType"] = 54
	--记录NPC胜利一击
	tBoBoZan_Stc[8] = {}
	tBoBoZan_Stc[8]["EventType"] = 219
	tBoBoZan_Stc[8]["DataType"] = 55

-- 其他游戏
local tBoBoZan_OtherGame = {}
	tBoBoZan_OtherGame[1] = 26480-- 打地鼠主NPC 胖胖
	tBoBoZan_OtherGame[2] = 26493-- 捉迷藏主NPC 胡迪
	tBoBoZan_OtherGame[3] = 26512-- 九宫采玉NPC 爱丽丝
	tBoBoZan_OtherGame[4] = 26513-- 妖精快跑NPC 彼得潘

-- 技能光效
local tBoBoZan_FightEffect = {}
	tBoBoZan_FightEffect[1] = "fighter"
	tBoBoZan_FightEffect[2] = "attackup"
	tBoBoZan_FightEffect[3] = "zf2-e038"
	tBoBoZan_FightEffect[4] = "zf2-e233"
	tBoBoZan_FightEffect[5] = "sscs_htsd_dis"
	tBoBoZan_FightEffect[6] = "stipple_bdh"

-- 伤害光效
local tBoBoZan_FightLifeEffect = {}
	tBoBoZan_FightLifeEffect[100] = "task071"
	tBoBoZan_FightLifeEffect[200] = "task072"
	tBoBoZan_FightLifeEffect[300] = "task074"

-- 领奖血量
local tBoBoZan_NeedLife = {}
	tBoBoZan_NeedLife[1] = 0
	tBoBoZan_NeedLife[2] = 100
	tBoBoZan_NeedLife[3] = 300
	tBoBoZan_NeedLife[4] = 500
	tBoBoZan_NeedLife[5] = 600

-- 领奖数量
local tBoBoZan_FightRewardNum = {}
	tBoBoZan_FightRewardNum[0] = 7
	tBoBoZan_FightRewardNum[1] = 7
	tBoBoZan_FightRewardNum[2] = 9
	tBoBoZan_FightRewardNum[3] = 10
	tBoBoZan_FightRewardNum[4] = 12
	tBoBoZan_FightRewardNum[5] = 15

-- 技能增加气
local tBoBoZan_FightAdd = {}
	tBoBoZan_FightAdd[1] = 1
	tBoBoZan_FightAdd[2] = -1
	tBoBoZan_FightAdd[3] = -2
	tBoBoZan_FightAdd[4] = -3
	tBoBoZan_FightAdd[5] = 0
	tBoBoZan_FightAdd[6] = -1

-- 技能伤害值与减免值
local tBoBoZan_InjuryValue = {}
	tBoBoZan_InjuryValue[1] = {0,0}
	tBoBoZan_InjuryValue[2] = {100,0}
	tBoBoZan_InjuryValue[3] = {200,0}
	tBoBoZan_InjuryValue[4] = {300,0}
	tBoBoZan_InjuryValue[5] = {0,100}
	tBoBoZan_InjuryValue[6] = {0,0}

-- NPC出招
local tBoBoZan_FightNpc = {}
	-- 对方没有气的时候不显示臂挡
	tBoBoZan_FightNpc[0] = {}
	tBoBoZan_FightNpc[0][0] = {1}
	tBoBoZan_FightNpc[0][1] = {1,2}
	tBoBoZan_FightNpc[0][2] = {1,2,3}
	tBoBoZan_FightNpc[0][3] = {1,2,3,4}
	-- 对方气力≤1的时候不显示瞬间移动
	tBoBoZan_FightNpc[1] = {}
	tBoBoZan_FightNpc[1][0] = {1}
	tBoBoZan_FightNpc[1][1] = {1,2,5}
	tBoBoZan_FightNpc[1][2] = {1,2,5,3}
	tBoBoZan_FightNpc[1][3] = {1,2,5,3,4}
	-- 对方气力充足
	tBoBoZan_FightNpc[2] = {}
	tBoBoZan_FightNpc[2][0] = {1}
	tBoBoZan_FightNpc[2][1] = {1,2,5,6}
	tBoBoZan_FightNpc[2][2] = {1,2,5,3,6}
	tBoBoZan_FightNpc[2][3] = {1,2,5,3,6,4}

-- 玩家出招
local tBoBoZan_FightPlayer = {}
	-- 对方没有气的时候不显示臂挡
	tBoBoZan_FightPlayer[0] = {}
	tBoBoZan_FightPlayer[0][0] = {1}
	tBoBoZan_FightPlayer[0][1] = {1,2}
	tBoBoZan_FightPlayer[0][2] = {1,2,3}
	tBoBoZan_FightPlayer[0][3] = {1,2,3,4}
	-- 对方气力≤1的时候不显示瞬间移动
	tBoBoZan_FightPlayer[1] = {}
	tBoBoZan_FightPlayer[1][0] = {1,5}
	tBoBoZan_FightPlayer[1][1] = {1,2,5}
	tBoBoZan_FightPlayer[1][2] = {1,2,5,3}
	tBoBoZan_FightPlayer[1][3] = {1,2,5,3,4}
	-- 对方气力充足
	tBoBoZan_FightPlayer[2] = {}
	tBoBoZan_FightPlayer[2][0] = {1,5}
	tBoBoZan_FightPlayer[2][1] = {1,2,5,6}
	tBoBoZan_FightPlayer[2][2] = {1,2,5,3,6}
	tBoBoZan_FightPlayer[2][3] = {1,2,5,3,6,4}

-- 波波攒105提示
local tBoBoZan_FightSkillText = {}
	-- 蓄气
	tBoBoZan_FightSkillText[1] = {}
	tBoBoZan_FightSkillText[1][1] = 1
	tBoBoZan_FightSkillText[1][2] = 2
	tBoBoZan_FightSkillText[1][3] = 14
	tBoBoZan_FightSkillText[1][4] = 15
	tBoBoZan_FightSkillText[1][5] = 3
	tBoBoZan_FightSkillText[1][6] = 3
	-- 气元斩
	tBoBoZan_FightSkillText[2] = {}
	tBoBoZan_FightSkillText[2][1] = 4
	tBoBoZan_FightSkillText[2][2] = 5
	tBoBoZan_FightSkillText[2][3] = 19
	tBoBoZan_FightSkillText[2][4] = 19
	tBoBoZan_FightSkillText[2][5] = 21
	tBoBoZan_FightSkillText[2][6] = 7
	-- 龟派气功
	tBoBoZan_FightSkillText[3] = {}
	tBoBoZan_FightSkillText[3][1] = 16
	tBoBoZan_FightSkillText[3][2] = 18
	tBoBoZan_FightSkillText[3][3] = 5
	tBoBoZan_FightSkillText[3][4] = 19
	tBoBoZan_FightSkillText[3][5] = 6
	tBoBoZan_FightSkillText[3][6] = 7
	-- 魔贯击杀炮
	tBoBoZan_FightSkillText[4] = {}
	tBoBoZan_FightSkillText[4][1] = 17
	tBoBoZan_FightSkillText[4][2] = 18
	tBoBoZan_FightSkillText[4][3] = 18
	tBoBoZan_FightSkillText[4][4] = 5
	tBoBoZan_FightSkillText[4][5] = 20
	tBoBoZan_FightSkillText[4][6] = 7
	-- 臂挡
	tBoBoZan_FightSkillText[5] = {}
	tBoBoZan_FightSkillText[5][1] = 8
	tBoBoZan_FightSkillText[5][2] = 23
	tBoBoZan_FightSkillText[5][3] = 9
	tBoBoZan_FightSkillText[5][4] = 22
	tBoBoZan_FightSkillText[5][5] = 10
	tBoBoZan_FightSkillText[5][6] = 10
	-- 瞬间移动
	tBoBoZan_FightSkillText[6] = {}
	tBoBoZan_FightSkillText[6][1] = 11
	tBoBoZan_FightSkillText[6][2] = 12
	tBoBoZan_FightSkillText[6][3] = 12
	tBoBoZan_FightSkillText[6][4] = 12
	tBoBoZan_FightSkillText[6][5] = 13
	tBoBoZan_FightSkillText[6][6] = 13

--奖励模板
local tBoBoZan_Reward = {}
	-- ===开始比试（1张游玩卷）
	-- ===索引:tBoBoZan_Reward[3330736]
	-- ===删除: 3330736,1
	tBoBoZan_Reward[3330736] = {}
	tBoBoZan_Reward[3330736]["LogId"] = 12001963
	tBoBoZan_Reward[3330736]["DeleteItem"] = {}
	tBoBoZan_Reward[3330736]["DeleteItem"][1] = {}
	tBoBoZan_Reward[3330736]["DeleteItem"][1]["Id"] = 3330736 -- 【库】游玩券[属性:9]
	tBoBoZan_Reward[3330736]["RewardEffect"] = {}
	tBoBoZan_Reward[3330736]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBoBoZan_Reward[3330736]["RewardEffect"]["Effect"] = "angelwing"


	tBoBoZan_Reward[1] = {}
	-- ===失败
	-- ===索引:tBoBoZan_Reward[1]
	tBoBoZan_Reward[1]["LogId"] = 12001963
	tBoBoZan_Reward[1]["RewardItem"] = {}
	tBoBoZan_Reward[1]["RewardItem"][1] = {}
	tBoBoZan_Reward[1]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:9][叠加:10000][金币:0], 【表格】冒险币
	tBoBoZan_Reward[1]["RewardItem"][1]["Attr"] = "0 7" -- 冒险币*7
	tBoBoZan_Reward[1]["RewardEffect"] = {}
	tBoBoZan_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBoBoZan_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


	tBoBoZan_Reward[2] = {}
	-- ===剩余30血
	-- ===索引:tBoBoZan_Reward[2]
	tBoBoZan_Reward[2]["LogId"] = 12001963
	tBoBoZan_Reward[2]["RewardItem"] = {}
	tBoBoZan_Reward[2]["RewardItem"][1] = {}
	tBoBoZan_Reward[2]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:9][叠加:10000][金币:0], 【表格】冒险币
	tBoBoZan_Reward[2]["RewardItem"][1]["Attr"] = "0 9" -- 冒险币*9
	tBoBoZan_Reward[2]["RewardEffect"] = {}
	tBoBoZan_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBoBoZan_Reward[2]["RewardEffect"]["Effect"] = "angelwing"


	tBoBoZan_Reward[3] = {}
	-- ===剩余50血
	-- ===索引:tBoBoZan_Reward[3]
	tBoBoZan_Reward[3]["LogId"] = 12001963
	tBoBoZan_Reward[3]["RewardItem"] = {}
	tBoBoZan_Reward[3]["RewardItem"][1] = {}
	tBoBoZan_Reward[3]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:9][叠加:10000][金币:0], 【表格】冒险币
	tBoBoZan_Reward[3]["RewardItem"][1]["Attr"] = "0 10" -- 冒险币*10
	tBoBoZan_Reward[3]["RewardEffect"] = {}
	tBoBoZan_Reward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBoBoZan_Reward[3]["RewardEffect"]["Effect"] = "angelwing"


	tBoBoZan_Reward[4] = {}
	-- ===剩余70血
	-- ===索引:tBoBoZan_Reward[4]
	tBoBoZan_Reward[4]["LogId"] = 12001963
	tBoBoZan_Reward[4]["RewardItem"] = {}
	tBoBoZan_Reward[4]["RewardItem"][1] = {}
	tBoBoZan_Reward[4]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:9][叠加:10000][金币:0], 【表格】冒险币
	tBoBoZan_Reward[4]["RewardItem"][1]["Attr"] = "0 12" -- 冒险币*12
	tBoBoZan_Reward[4]["RewardEffect"] = {}
	tBoBoZan_Reward[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBoBoZan_Reward[4]["RewardEffect"]["Effect"] = "angelwing"


	tBoBoZan_Reward[5] = {}
	-- ===剩余100血
	-- ===索引:tBoBoZan_Reward[5]
	tBoBoZan_Reward[5]["LogId"] = 12001963
	tBoBoZan_Reward[5]["RewardItem"] = {}
	tBoBoZan_Reward[5]["RewardItem"][1] = {}
	tBoBoZan_Reward[5]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:9][叠加:10000][金币:0], 【表格】冒险币
	tBoBoZan_Reward[5]["RewardItem"][1]["Attr"] = "0 15" -- 冒险币*15
	tBoBoZan_Reward[5]["RewardEffect"] = {}
	tBoBoZan_Reward[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBoBoZan_Reward[5]["RewardEffect"]["Effect"] = "angelwing"



---------------------------------------------逻辑模块--------------------------------------------
-- 首次对白
function BoBoZan_FirstDialogue()
	-- 不在活动时间内
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return false
	end

	local nBoBoZan_UserId = Get_UserId()
	local nBoBoZan_FirstData = BoBoZan_GetStcValue(1,nBoBoZan_UserId) or 0

	-- 判断是否首次对白
	if nBoBoZan_FirstData == 0 then
		return true
	else
		return false
	end
end

-- 非首次对白
function BoBoZan_NoFirstDialogue()
	-- 不在活动时间内
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return false
	end

	-- 判断是否首次对白
	local nBoBoZan_UserId = Get_UserId()
	local nBoBoZan_FirstData = BoBoZan_GetStcValue(1,nBoBoZan_UserId) or 0
	if nBoBoZan_FirstData == 0 then
		return false
	end

	-- 判断是否游戏状态
	local nBoBoZan_StarData = BoBoZan_GetStcValue(6,nBoBoZan_UserId) or 0
	if nBoBoZan_StarData > 0 then
		return false
	end

	-- 判断是否免费
	local nBoBoZan_Event = tBoBoZan_Stc[7]["EventType"]
	local nBoBoZan_Type = tBoBoZan_Stc[7]["DataType"]
	if Task_StcInterval(nBoBoZan_Event,nBoBoZan_Type,1,4,nBoBoZan_UserId) then
		tNpcGossip[26505]["tOption1-2"] = {121,123,124}
	else
		tNpcGossip[26505]["tOption1-2"] = {122,123,124}
	end

	tNpcGossip[26505]["Text122"] = string.format(tBoBoZan_Text[26505]["Text122"],tBoBoZan_Text["Life"][tBoBoZan_NeedLife[5]])
	tNpcGossip[26505]["Text123"] = string.format(tBoBoZan_Text[26505]["Text123"],tBoBoZan_Text["Life"][tBoBoZan_NeedLife[5]])
	tNpcGossip[26505]["Text1-2"] = {111,121,122,123,124,125,126,127,128,129,130,131,132,133,134}

	-- 判断是否领奖
	local nBoBoZan_Reward = tBoBoZan_Cont["GameCurrency"]
	local nBoBoZan_RewardData = BoBoZan_GetStcValue(nBoBoZan_Reward,nBoBoZan_UserId) or 0
	if nBoBoZan_RewardData > 0 then
		local nBoBoZan_PlayerFightLife = BoBoZan_GetStcValue(4,nBoBoZan_UserId) or 0
		-- NPC胜利一击
		local nBoBoZan_NpcFightSkill = BoBoZan_GetStcValue(8,nBoBoZan_UserId) or 1
		local sBoBoZan_NpcFightSkill = ""
		if nBoBoZan_NpcFightSkill > 0 then
			sBoBoZan_NpcFightSkill = string.format(tBoBoZan_Text["Color"]["Green"],tBoBoZan_Text["FightSkill"][nBoBoZan_NpcFightSkill])
		end
		
		-- 奖励数量
		local nBoBoZan_FightRewardNum = tBoBoZan_FightRewardNum[nBoBoZan_RewardData]
		
		tNpcGossip[26505]["Text413"] = string.format(tBoBoZan_Text[26505]["Text413"],sBoBoZan_NpcFightSkill)
		tNpcGossip[26505]["Text424"] = string.format(tBoBoZan_Text[26505]["Text424"],nBoBoZan_PlayerFightLife)
		tNpcGossip[26505]["Text425"] = string.format(tBoBoZan_Text[26505]["Text425"],nBoBoZan_FightRewardNum)
		tNpcGossip[26505]["tOption1-2"] = {125}
		
		-- 判断玩家胜利
		if nBoBoZan_PlayerFightLife == 0 then
			tNpcGossip[26505]["Text1-2"] = {411,412,413,414,415}
		else
			tNpcGossip[26505]["Text1-2"] = {421,422,423,424,425,426}
		end
	end

	return true
end

-- 开始比试（免费）
function BoBoZan_GameStar()
	-- 消耗免费次数
	local nBoBoZan_UserId = Get_UserId()
	if not BoBoZan_AddStatistic(7,1,nBoBoZan_UserId) then
		return
	end

	-- 进入游玩状态
	if BoBoZan_AddStatistic(6,1,nBoBoZan_UserId) then
		BoBoZan_AddStatistic(2,3,nBoBoZan_UserId)
		Sys_SaveActionFestivalLog(tBoBoZan_Log["Game"][1],nBoBoZan_UserId)
		LinkNpcGossipFunc_New(26505,"1-3")
	end
end

-- 开始比试（1张游玩卷）
function BoBoZan_GameStarByTicket()
	local nBoBoZan_UserId = Get_UserId()
	local nBoBoZan_ItemId = tBoBoZan_Cont["GameTicket"]

	-- 判断物品在背包
	if not Item_ChkItem(nBoBoZan_ItemId) then
		LinkNpcGossipFunc_New(26505,"2-2")
		return
	end

	-- 消耗游玩卷
	if not RewardTemplate_UseItemAndMsg(tBoBoZan_Reward[nBoBoZan_ItemId]) then
		return
	end

	-- 进入游玩状态
	if BoBoZan_AddStatistic(6,1,nBoBoZan_UserId) then
		BoBoZan_AddStatistic(2,3,nBoBoZan_UserId)
		Sys_SaveActionFestivalLog(tBoBoZan_Log["Game"][1],nBoBoZan_UserId)
		LinkNpcGossipFunc_New(26505,"1-3")
	end
end

-- 【开始游戏】
function BoBoZan_GameStarDialogue()
	-- 不在活动时间内
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return false
	end

	-- 判断是否首次对白
	local nBoBoZan_UserId = Get_UserId()
	local nBoBoZan_FirstData = BoBoZan_GetStcValue(1,nBoBoZan_UserId) or 0
	if nBoBoZan_FirstData == 0 then
		return false
	end

	-- 判断是否游戏状态
	local nBoBoZan_StarData = BoBoZan_GetStcValue(6,nBoBoZan_UserId) or 0
	if nBoBoZan_StarData == 0 then
		return false
	end

	-- 隔天重置气
	BoBoZan_ClearStcInterval(2,nBoBoZan_UserId)
	BoBoZan_ClearStcInterval(3,nBoBoZan_UserId)
	-- 隔天重置血量
	BoBoZan_ClearLifeInterval(4,nBoBoZan_UserId)
	BoBoZan_ClearLifeInterval(5,nBoBoZan_UserId)

	local nBoBoZan_PlayerFightLife = BoBoZan_GetStcValue(4,nBoBoZan_UserId) or 0
	local nBoBoZan_NpcFightLife = BoBoZan_GetStcValue(5,nBoBoZan_UserId) or 0
	local nBoBoZan_PlayerEnergy = BoBoZan_GetStcValue(2,nBoBoZan_UserId) or 0
	local sBoBoZan_PlayerEnergy = tostring(nBoBoZan_PlayerEnergy)
	local nBoBoZan_NpcEnergy = BoBoZan_GetStcValue(3,nBoBoZan_UserId) or 0
	local sBoBoZan_NpcEnergy = tostring(nBoBoZan_NpcEnergy)
	local nBoBoZan_PlayerFightEnergy = nBoBoZan_PlayerEnergy

	if nBoBoZan_PlayerFightEnergy >= 3 then
		nBoBoZan_PlayerFightEnergy = 3
	end

	-- 龟仙人出招提示
	local sBoBoZan_PossibleFightSkill = tBoBoZan_Text["PossibleFightSkill"][1]
	nBoBoZan_NpcEnergy = BoBoZan_GetStcValue(3,nBoBoZan_UserId)
	if nBoBoZan_NpcEnergy == 2 then
		sBoBoZan_PossibleFightSkill = tBoBoZan_Text["PossibleFightSkill"][2]
	elseif nBoBoZan_NpcEnergy >= 3 then
		sBoBoZan_PossibleFightSkill = tBoBoZan_Text["PossibleFightSkill"][3]
	end

	local tBoBoZan_PlayerFightSkill = BoBoZan_FightSkillByEnergy(1,nBoBoZan_UserId)

	-- 判断红血
	tNpcGossip[26505]["Text122"] = BoBoZan_FightLifeRed("Text122",nBoBoZan_NpcFightLife,nBoBoZan_UserId)
	tNpcGossip[26505]["Text123"] = BoBoZan_FightLifeRed("Text123",nBoBoZan_PlayerFightLife,nBoBoZan_UserId)

	tNpcGossip[26505]["Text214"] = string.format(tBoBoZan_Text[26505]["Text214"],sBoBoZan_PlayerEnergy)
	tNpcGossip[26505]["Text215"] = string.format(tBoBoZan_Text[26505]["Text215"],sBoBoZan_PlayerEnergy,sBoBoZan_NpcEnergy,sBoBoZan_PossibleFightSkill)
	tNpcGossip[26505]["tOption1-3"] = tBoBoZan_PlayerFightSkill

	tNpcGossip[26505]["Text1-3"] = {111,121,122,123,124,127,128,129,130,131,132,133,134,214}

	-- 游戏中不显示技能介绍
	if nBoBoZan_PlayerFightLife < tBoBoZan_NeedLife[5] or nBoBoZan_NpcFightLife < tBoBoZan_NeedLife[5] or nBoBoZan_PlayerEnergy > 0 or nBoBoZan_NpcEnergy > 0 then
		tNpcGossip[26505]["Text1-3"] = {111,121,122,123,124,215}
	end

	return true
end

-- 玩家出招
function BoBoZan_UseFightSkill(nBoBoZan_PlayerFightSkill)
	local nBoBoZan_UserId = Get_UserId()
	local nBoBoZan_Reward = tBoBoZan_Cont["GameCurrency"]
	local nBoBoZan_NpcEnergy = BoBoZan_GetStcValue(3,nBoBoZan_UserId)
	local nBoBoZan_NpcFightEnergy = nBoBoZan_NpcEnergy

	if nBoBoZan_NpcFightEnergy >= 3 then
		nBoBoZan_NpcFightEnergy = 3
	end

	-- NPC随机出招
	local tBoBoZan_NpcFightSkill = BoBoZan_FightSkillByEnergy(2,nBoBoZan_UserId)
	local nBoBoZan_NpcRandomSkill = math.random(1,#tBoBoZan_NpcFightSkill)
	local nBoBoZan_NpcFightSkill = tBoBoZan_NpcFightSkill[nBoBoZan_NpcRandomSkill]

	-- 气与伤害结算
	local nBoBoZan_PlayerInjuryValue,nBoBoZan_NpcInjuryValue = BoBoZan_SetInjuryValue(nBoBoZan_PlayerFightSkill,nBoBoZan_NpcFightSkill,nBoBoZan_UserId)
	local nBoBoZan_PlayerFightLife = BoBoZan_GetStcValue(4,nBoBoZan_UserId)
	local nBoBoZan_NpcFightLife = BoBoZan_GetStcValue(5,nBoBoZan_UserId)

	local nBoBoZan_FightReward = BoBoZan_GetStcValue(3316104,nBoBoZan_UserId)
	local nBoBoZan_FightRewardNum = tBoBoZan_FightRewardNum[nBoBoZan_FightReward]

	-- 技能读条蓄力配置
	local nBoBoZan_Secs = tBoBoZan_Cont["Secs"]
	local sBoBoZan_Content = tBoBoZan_Text["FightSkill"][nBoBoZan_PlayerFightSkill]
	local nBoBoZan_ActionId = tBoBoZan_Cont["ActionId"]
	local sBoBoZan_Func = "BoBoZan_SetExplore</S>2-1</N>"..nBoBoZan_PlayerFightSkill.."</N>"..nBoBoZan_NpcFightSkill.."</N>"..nBoBoZan_PlayerInjuryValue.."</N>"..nBoBoZan_NpcInjuryValue.."</N>"..nBoBoZan_FightRewardNum

	-- 玩家失败
	if nBoBoZan_PlayerFightLife == 0 then
		-- 去除游戏状态
		BoBoZan_SetStcValue(6,0,nBoBoZan_UserId)
		-- 标识NPC胜利一击
		BoBoZan_SetStcValue(8,nBoBoZan_NpcFightSkill,nBoBoZan_UserId)
		-- 加领奖标识
		BoBoZan_SetStcValue(nBoBoZan_Reward,1,nBoBoZan_UserId)
		
		-- 技能读条蓄力
		sBoBoZan_Func = "BoBoZan_SetExplore</S>4-1</N>"..nBoBoZan_PlayerFightSkill.."</N>"..nBoBoZan_NpcFightSkill.."</N>"..nBoBoZan_PlayerInjuryValue.."</N>"..nBoBoZan_NpcInjuryValue.."</N>"..nBoBoZan_FightRewardNum
		User_SetExplore(nBoBoZan_Secs,sBoBoZan_Content,nBoBoZan_ActionId,sBoBoZan_Func,nil,nBoBoZan_UserId)
		return
	end

	-- 玩家胜利
	if nBoBoZan_NpcFightLife == 0 then
		-- 去除游戏状态
		BoBoZan_SetStcValue(6,0,nBoBoZan_UserId)
		-- 加领奖标识
		local nBoBoZan_FightReward = BoBoZan_FightReward(nBoBoZan_UserId)
		local nBoBoZan_FightRewardNum = tBoBoZan_FightRewardNum[nBoBoZan_FightReward]

		-- 技能读条蓄力
		sBoBoZan_Func = "BoBoZan_SetExplore</S>4-2</N>"..nBoBoZan_PlayerFightSkill.."</N>"..nBoBoZan_NpcFightSkill.."</N>"..nBoBoZan_PlayerInjuryValue.."</N>"..nBoBoZan_NpcInjuryValue.."</N>"..nBoBoZan_FightRewardNum
		User_SetExplore(nBoBoZan_Secs,sBoBoZan_Content,nBoBoZan_ActionId,sBoBoZan_Func,nil,nBoBoZan_UserId)
		return
	end

	-- 血量都不为0，继续游戏

	-- 技能读条蓄力
	User_SetExplore(nBoBoZan_Secs,sBoBoZan_Content,nBoBoZan_ActionId,sBoBoZan_Func,nil,nBoBoZan_UserId)
end

-- 技能读条蓄力
function BoBoZan_SetExplore(sBoBoZan_Text,nBoBoZan_PlayerFightSkill,nBoBoZan_NpcFightSkill,nBoBoZan_PlayerInjuryValue,nBoBoZan_NpcInjuryValue,nBoBoZan_FightRewardNum,nBoBoZan_UserId)
	local nBoBoZan_MapId = tBoBoZan_Cont["GameMap"]
	local nBoBoZan_PosX = tBoBoZan_Cont["PosX"]
	local nBoBoZan_PosY = tBoBoZan_Cont["PosY"]

	-- 蓄力结束出技能光效
	if nBoBoZan_PlayerFightSkill >= 2 and nBoBoZan_PlayerFightSkill <= 4 then
		Map_Effect(nBoBoZan_MapId, nBoBoZan_PosX, nBoBoZan_PosY, tBoBoZan_FightEffect[nBoBoZan_PlayerFightSkill],0)
	else
		User_EffectAdd("self",tBoBoZan_FightEffect[nBoBoZan_PlayerFightSkill],nBoBoZan_UserId)
	end

	if nBoBoZan_NpcFightSkill >= 2 and nBoBoZan_NpcFightSkill <= 4 then
		User_EffectAdd("self",tBoBoZan_FightEffect[nBoBoZan_NpcFightSkill],nBoBoZan_UserId)
	else
		Map_Effect(nBoBoZan_MapId, nBoBoZan_PosX, nBoBoZan_PosY, tBoBoZan_FightEffect[nBoBoZan_NpcFightSkill],0)
	end

	-- 蓄力结束出伤害光效
	if nBoBoZan_PlayerInjuryValue > 0 then
		User_EffectAdd("self",tBoBoZan_FightLifeEffect[nBoBoZan_PlayerInjuryValue],nBoBoZan_UserId)
	end

	if nBoBoZan_NpcInjuryValue > 0 then
		Map_Effect(nBoBoZan_MapId, nBoBoZan_PosX, nBoBoZan_PosY, tBoBoZan_FightLifeEffect[nBoBoZan_NpcInjuryValue],0)
	end

	-- 删除光效
	-- User_EffectDel("self",tBoBoZan_FightEffect[nBoBoZan_PlayerFightSkill],nBoBoZan_UserId)
	-- User_EffectDel("self",tBoBoZan_FightEffect[nBoBoZan_NpcFightSkill],nBoBoZan_UserId)
	-- Map_Effect(nBoBoZan_MapId, nBoBoZan_PosX, nBoBoZan_PosY, tBoBoZan_FightEffect[nBoBoZan_PlayerFightSkill],1)
	-- Map_Effect(nBoBoZan_MapId, nBoBoZan_PosX, nBoBoZan_PosY, tBoBoZan_FightEffect[nBoBoZan_NpcFightSkill],1)

	-- 波波攒105提示
	BoBoZan_FightSkillText(nBoBoZan_PlayerFightSkill,nBoBoZan_NpcFightSkill,nBoBoZan_PlayerInjuryValue,nBoBoZan_NpcInjuryValue,nBoBoZan_UserId)

	-- 魔贯光杀炮 抖屏
	-- if (nBoBoZan_PlayerFightSkill == 4) or (nBoBoZan_NpcFightSkill == 4) then
		-- User_Screffect(1,nBoBoZan_UserId)
	-- end

	local nBoBoZan_PlayerEnergy = BoBoZan_GetStcValue(2,nBoBoZan_UserId) or 0
	local sBoBoZan_PlayerEnergy = tostring(nBoBoZan_PlayerEnergy)
	local nBoBoZan_PlayerFightEnergy = nBoBoZan_PlayerEnergy
	local nBoBoZan_PlayerFightLife = BoBoZan_GetStcValue(4,nBoBoZan_UserId)
	local nBoBoZan_NpcFightLife = BoBoZan_GetStcValue(5,nBoBoZan_UserId)
	local sBoBoZan_NpcFightSkill = string.format(tBoBoZan_Text["Color"]["Green"],tBoBoZan_Text["FightSkill"][nBoBoZan_NpcFightSkill])

	if sBoBoZan_Text == "4-1" then
		-- 玩家失败
		-- 失败光效
		User_EffectAdd("self",tBoBoZan_Cont["FailureEffect"],nBoBoZan_UserId)
		
		tNpcGossip[26505]["Text413"] = string.format(tBoBoZan_Text[26505]["Text413"],sBoBoZan_NpcFightSkill)
	elseif sBoBoZan_Text == "4-2" then
		-- 玩家胜利
		-- 胜利光效
		User_EffectAdd("self",tBoBoZan_Cont["VictoryEffect"],nBoBoZan_UserId)
		
		local sBoBoZan_FightRewardNum = tostring(nBoBoZan_FightRewardNum)
		tNpcGossip[26505]["Text424"] = string.format(tBoBoZan_Text[26505]["Text424"],nBoBoZan_PlayerFightLife)
		tNpcGossip[26505]["Text425"] = string.format(tBoBoZan_Text[26505]["Text425"],sBoBoZan_FightRewardNum)
	else
		-- 游戏继续
		if nBoBoZan_PlayerFightEnergy >= 3 then
			nBoBoZan_PlayerFightEnergy = 3
		end
		
		-- 玩家下一轮的可选技能
		local tBoBoZan_PlayerFightSkill = BoBoZan_FightSkillByEnergy(1,nBoBoZan_UserId)
		tNpcGossip[26505]["tOption2-1"] = tBoBoZan_PlayerFightSkill
		
		-- 根据玩家技能出对白
		-- tNpcGossip[26505]["Text2-1"] = {111,121,122,123,124,211,126,212,213,126,215}
		-- table.insert(tNpcGossip[26505]["Text2-1"],8,nBoBoZan_PlayerFightSkill)
		
		-- 判断红血
		local sBoBoZan_PlayerInjuryValue = BoBoZan_InjuryValueRed(nBoBoZan_PlayerInjuryValue,nBoBoZan_PlayerFightLife,nBoBoZan_UserId)
		local sBoBoZan_NpcInjuryValue = BoBoZan_InjuryValueRed(nBoBoZan_NpcInjuryValue,nBoBoZan_NpcFightLife,nBoBoZan_UserId)
		
		tNpcGossip[26505]["Text213"] = string.format(tBoBoZan_Text[26505]["Text213"],sBoBoZan_PlayerInjuryValue,sBoBoZan_NpcInjuryValue)
		tNpcGossip[26505]["Text122"] = BoBoZan_FightLifeRed("Text122",nBoBoZan_NpcFightLife,nBoBoZan_UserId)
		tNpcGossip[26505]["Text123"] = BoBoZan_FightLifeRed("Text123",nBoBoZan_PlayerFightLife,nBoBoZan_UserId)
		
		-- 龟仙人上轮出招
		-- local sBoBoZan_NpcFightSkill = string.format(tBoBoZan_Text["Color"]["Green"],tBoBoZan_Text["FightSkill"][nBoBoZan_NpcFightSkill])
		-- tNpcGossip[26505]["Text212"] = string.format(tBoBoZan_Text[26505]["Text212"],sBoBoZan_NpcFightSkill)
		
		-- 龟仙人出招提示
		local sBoBoZan_PossibleFightSkill = tBoBoZan_Text["PossibleFightSkill"][1]
		local nBoBoZan_NpcEnergy = BoBoZan_GetStcValue(3,nBoBoZan_UserId)
		if nBoBoZan_NpcEnergy == 2 then
			sBoBoZan_PossibleFightSkill = tBoBoZan_Text["PossibleFightSkill"][2]
		elseif nBoBoZan_NpcEnergy >= 3 then
			sBoBoZan_PossibleFightSkill = tBoBoZan_Text["PossibleFightSkill"][3]
		end
		
		local sBoBoZan_NpcEnergy = tostring(nBoBoZan_NpcEnergy)
		tNpcGossip[26505]["Text215"] = string.format(tBoBoZan_Text[26505]["Text215"],sBoBoZan_PlayerEnergy,sBoBoZan_NpcEnergy,sBoBoZan_PossibleFightSkill)
	end

	-- 出对白
	LinkNpcGossipFunc_New(26505,sBoBoZan_Text,0,8,nBoBoZan_UserId)
end

-- 根据对手的气限制技能
function BoBoZan_FightSkillByEnergy(nBoBoZan_Sign,nBoBoZan_UserId)
	local nBoBoZan_PlayerEnergy = BoBoZan_GetStcValue(2,nBoBoZan_UserId) or 0
	local nBoBoZan_PlayerFightEnergy = nBoBoZan_PlayerEnergy

	if nBoBoZan_PlayerFightEnergy >= 2 then
		nBoBoZan_PlayerFightEnergy = 2
	end

	if nBoBoZan_PlayerEnergy >= 3 then
		nBoBoZan_PlayerEnergy = 3
	end

	local nBoBoZan_NpcEnergy = BoBoZan_GetStcValue(3,nBoBoZan_UserId) or 0
	local nBoBoZan_NpcFightEnergy = nBoBoZan_NpcEnergy

	if nBoBoZan_NpcFightEnergy >= 2 then
		nBoBoZan_NpcFightEnergy = 2
	end

	if nBoBoZan_NpcEnergy >= 3 then
		nBoBoZan_NpcEnergy = 3
	end

	-- 技能
	local tBoBoZan_FightSkill = {}
	if nBoBoZan_Sign == 1 then
		tBoBoZan_FightSkill = tBoBoZan_FightPlayer[nBoBoZan_NpcFightEnergy][nBoBoZan_PlayerEnergy]
	else
		tBoBoZan_FightSkill = tBoBoZan_FightNpc[nBoBoZan_PlayerFightEnergy][nBoBoZan_NpcEnergy]
	end

	return tBoBoZan_FightSkill
end

-- 波波攒105提示
function BoBoZan_FightSkillText(nBoBoZan_PlayerFightSkill,nBoBoZan_NpcFightSkill,nBoBoZan_PlayerInjuryValue,nBoBoZan_NpcInjuryValue,nBoBoZan_UserId)
	local nBoBoZan_FightSkillText = tBoBoZan_FightSkillText[nBoBoZan_PlayerFightSkill][nBoBoZan_NpcFightSkill]
	local sBoBoZan_FightSkillText = tBoBoZan_Text["FightSkillText"][nBoBoZan_FightSkillText]
	local sBoBoZan_PlayerFightSkill = tBoBoZan_Text["FightSkill"][nBoBoZan_PlayerFightSkill]
	local sBoBoZan_NpcFightSkill = tBoBoZan_Text["FightSkill"][nBoBoZan_NpcFightSkill]

	if nBoBoZan_FightSkillText == 3 then
		sBoBoZan_FightSkillText = string.format(sBoBoZan_FightSkillText,sBoBoZan_NpcFightSkill)
	end

	if nBoBoZan_FightSkillText == 5 then
		sBoBoZan_FightSkillText = string.format(sBoBoZan_FightSkillText,sBoBoZan_PlayerFightSkill,sBoBoZan_NpcFightSkill)
	end

	if nBoBoZan_FightSkillText == 6 then
		sBoBoZan_FightSkillText = string.format(sBoBoZan_FightSkillText,sBoBoZan_PlayerFightSkill)
	end

	if nBoBoZan_FightSkillText == 7 then
		sBoBoZan_FightSkillText = string.format(sBoBoZan_FightSkillText,sBoBoZan_PlayerFightSkill)
	end

	if nBoBoZan_FightSkillText == 12 then
		sBoBoZan_FightSkillText = string.format(sBoBoZan_FightSkillText,sBoBoZan_NpcFightSkill)
	end

	if nBoBoZan_FightSkillText == 13 then
		sBoBoZan_FightSkillText = string.format(sBoBoZan_FightSkillText,sBoBoZan_NpcFightSkill,sBoBoZan_PlayerFightSkill)
	end

	if nBoBoZan_FightSkillText == 18 then
		sBoBoZan_FightSkillText = string.format(sBoBoZan_FightSkillText,sBoBoZan_NpcFightSkill,sBoBoZan_PlayerFightSkill,nBoBoZan_NpcInjuryValue)
	end

	if nBoBoZan_FightSkillText == 19 then
		sBoBoZan_FightSkillText = string.format(sBoBoZan_FightSkillText,sBoBoZan_PlayerFightSkill,sBoBoZan_NpcFightSkill,nBoBoZan_PlayerInjuryValue)
	end

	-- 出提示
	Sys_MsgBox(sBoBoZan_FightSkillText,nil,nil,nBoBoZan_UserId)
end

-- 气与伤害结算
function BoBoZan_SetInjuryValue(nBoBoZan_PlayerFightSkill,nBoBoZan_NpcFightSkill,nBoBoZan_UserId)
	-- 气结算
	local nBoBoZan_PlayerFightAdd = tBoBoZan_FightAdd[nBoBoZan_PlayerFightSkill]
	local nBoBoZan_NpcFightAdd = tBoBoZan_FightAdd[nBoBoZan_NpcFightSkill]

	BoBoZan_AddStatistic(2,nBoBoZan_PlayerFightAdd,nBoBoZan_UserId)
	BoBoZan_AddStatistic(3,nBoBoZan_NpcFightAdd,nBoBoZan_UserId)

	-- 伤害结算
	local nBoBoZan_PlayerInjuryValue = 0
	local nBoBoZan_NpcInjuryValue = 0

	-- 相同技能抵消
	if nBoBoZan_PlayerFightSkill == nBoBoZan_NpcFightSkill then
		BoBoZan_AddStatistic(4,0,nBoBoZan_UserId)
		BoBoZan_AddStatistic(5,0,nBoBoZan_UserId)
		return 0,0
	end

	-- 都无攻击
	if tBoBoZan_InjuryValue[nBoBoZan_PlayerFightSkill][1] == 0 and tBoBoZan_InjuryValue[nBoBoZan_NpcFightSkill][1] == 0 then
		BoBoZan_AddStatistic(4,0,nBoBoZan_UserId)
		BoBoZan_AddStatistic(5,0,nBoBoZan_UserId)
		return 0,0
	end

	-- 一方使用瞬间移动
	if nBoBoZan_PlayerFightSkill == 6 or nBoBoZan_NpcFightSkill == 6 then
		BoBoZan_AddStatistic(4,0,nBoBoZan_UserId)
		BoBoZan_AddStatistic(5,0,nBoBoZan_UserId)
		return 0,0
	end

	local nBoBoZan_PlayerInjury = tBoBoZan_InjuryValue[nBoBoZan_NpcFightSkill][1] - tBoBoZan_InjuryValue[nBoBoZan_PlayerFightSkill][2]
	local nBoBoZan_NpcInjury = tBoBoZan_InjuryValue[nBoBoZan_PlayerFightSkill][1] - tBoBoZan_InjuryValue[nBoBoZan_NpcFightSkill][2]
	local nBoBoZan_InjuryValue = nBoBoZan_PlayerInjury - nBoBoZan_NpcInjury

	if nBoBoZan_InjuryValue > 0 then
		nBoBoZan_PlayerInjuryValue = nBoBoZan_InjuryValue
		nBoBoZan_NpcInjuryValue = 0
	else
		nBoBoZan_PlayerInjuryValue = 0
		nBoBoZan_NpcInjuryValue = - nBoBoZan_InjuryValue
	end

	local nBoBoZan_PlayerFightLife = BoBoZan_GetStcValue(4,nBoBoZan_UserId)
	local nBoBoZan_PlayerResidualLife = nBoBoZan_PlayerFightLife - nBoBoZan_PlayerInjuryValue
	local nBoBoZan_NpcFightLife = BoBoZan_GetStcValue(5,nBoBoZan_UserId)
	local nBoBoZan_NpcResidualLife = nBoBoZan_NpcFightLife - nBoBoZan_NpcInjuryValue

	-- 确保玩家血量不为负数
	if nBoBoZan_PlayerResidualLife <= 0 then
		BoBoZan_SetStcValue(4,0,nBoBoZan_UserId)
	else
		BoBoZan_AddStatistic(4,-nBoBoZan_PlayerInjuryValue,nBoBoZan_UserId)
	end

	-- 确保Npc血量不为负数
	if nBoBoZan_NpcResidualLife <= 0 then
		BoBoZan_SetStcValue(5,0,nBoBoZan_UserId)
	else
		BoBoZan_AddStatistic(5,-nBoBoZan_NpcInjuryValue,nBoBoZan_UserId)
	end

	return nBoBoZan_PlayerInjuryValue,nBoBoZan_NpcInjuryValue
end

-- 根据领奖血量判断奖励
function BoBoZan_FightReward(nBoBoZan_UserId)
	local nBoBoZan_Reward = tBoBoZan_Cont["GameCurrency"]
	local nBoBoZan_FightLife = BoBoZan_GetStcValue(4,nBoBoZan_UserId) or 0
	local nBoBoZan_FightReward = 1

	for k,v in pairs(tBoBoZan_NeedLife) do
		if nBoBoZan_FightLife >= v then
			nBoBoZan_FightReward = k
		end
	end

	BoBoZan_SetStcValue(nBoBoZan_Reward,nBoBoZan_FightReward,nBoBoZan_UserId)
	return nBoBoZan_FightReward
end

-- 红血时血量为红色
function BoBoZan_FightLifeRed(sBoBoZan_Text,nBoBoZan_Life,nBoBoZan_UserId)
	local sBoBoZan_OldText = tBoBoZan_Text[26505][sBoBoZan_Text]
	local nBoBoZan_LifeText = tBoBoZan_Text["Life"][nBoBoZan_Life]

	if nBoBoZan_Life <= tBoBoZan_NeedLife[2] then
		nBoBoZan_LifeText = string.format(tBoBoZan_Text["Color"]["Red"],nBoBoZan_LifeText)
	elseif nBoBoZan_Life <= tBoBoZan_NeedLife[3] then
		nBoBoZan_LifeText = string.format(tBoBoZan_Text["Color"]["Gray"],nBoBoZan_LifeText)
	elseif nBoBoZan_Life <= tBoBoZan_NeedLife[4] then
		nBoBoZan_LifeText = string.format(tBoBoZan_Text["Color"]["Purple"],nBoBoZan_LifeText)
	elseif nBoBoZan_Life <= tBoBoZan_NeedLife[5] then
		nBoBoZan_LifeText = string.format(tBoBoZan_Text["Color"]["Green"],nBoBoZan_LifeText)
	end

	local sBoBoZan_NewText = string.format(sBoBoZan_OldText,nBoBoZan_LifeText)
	return sBoBoZan_NewText
end

-- 红血时伤害为红色
function BoBoZan_InjuryValueRed(nBoBoZan_InjuryValue,nBoBoZan_Life,nBoBoZan_UserId)
	local sBoBoZan_InjuryValue = tostring(nBoBoZan_InjuryValue)

	if nBoBoZan_Life <= tBoBoZan_NeedLife[2] then
		sBoBoZan_InjuryValue = string.format(tBoBoZan_Text["Color"]["Red"],sBoBoZan_InjuryValue)
	end

	return sBoBoZan_InjuryValue
end

-- 隔天重置血量
function BoBoZan_ClearLifeInterval(nBoBoZan_Index,nBoBoZan_UserId)
	local nBoBoZan_Event = tBoBoZan_Stc[nBoBoZan_Index]["EventType"]
	local nBoBoZan_Type = tBoBoZan_Stc[nBoBoZan_Index]["DataType"]

	-- 判断隔天
	if Task_StcInterval(nBoBoZan_Event,nBoBoZan_Type,1,4,nBoBoZan_UserId) then
		Task_SetStatistic(nBoBoZan_Event,nBoBoZan_Type,tBoBoZan_NeedLife[5],1,nBoBoZan_UserId)
		Task_SetStcTimestamp(nBoBoZan_Event,nBoBoZan_Type,0,nBoBoZan_UserId)
		return true
	else
		return false
	end
end

-- 什么是波波攒
function BoBoZan_Rule(nBoBoZan_Rule)
	local nBoBoZan_UserId = Get_UserId()

	-- 判断是否首次对白
	if nBoBoZan_Rule == 1 then
		BoBoZan_AddStatistic(1,1,nBoBoZan_UserId)
		tNpcGossip[26505]["tOption5-1"] = {1111}
	else
		tNpcGossip[26505]["tOption5-1"] = {1112}
	end

	LinkNpcGossipFunc_New(26505,"5-1")
end

-- 领取波波攒奖励
function BoBoZan_GetReward()
	local nBoBoZan_UserId = Get_UserId()
	local nBoBoZan_Level = tBoBoZan_Cont["Level"]
	local nBoBoZan_Metempsychosis = tBoBoZan_Cont["Metempsychosis"]

	--判断等级达到
	if not User_JudgeLevelAndMetempsychosis(nBoBoZan_Level,nBoBoZan_Metempsychosis,nBoBoZan_UserId) then
		Sys_MsgBox(tBoBoZan_Text["Msg"]["NoLevel"],nil,nil,nBoBoZan_UserId)
		User_TalkChannel2005(tBoBoZan_Text["Msg"]["NoLevel"],nBoBoZan_UserId)
		return
	end

	local nBoBoZan_StcIndex = tBoBoZan_Cont["GameCurrency"]
	local nBoBoZan_RewardData = BoBoZan_GetStcValue(nBoBoZan_StcIndex,nBoBoZan_UserId) or 0

	-- 判断背包空间
	local nBoBoZan_Space = RewardTemplate_GetRewardSpace(tBoBoZan_Reward[nBoBoZan_RewardData])
	if nBoBoZan_Space > 0 and (not BoBoZan_CheckLeftSpace(nBoBoZan_Space,nBoBoZan_UserId)) then
		return
	end

	-- 打掩码发奖
	if not BoBoZan_SetStcValue(nBoBoZan_StcIndex,0,nBoBoZan_UserId) then
		return
	end

	local sBoBoZan_UserName = Get_UserName(nBoBoZan_UserId)
	if RewardTemplate_UseItemAndMsg(tBoBoZan_Reward[nBoBoZan_RewardData]) then
		-- 重置气和血
		BoBoZan_SetStcValue(2,0,nBoBoZan_UserId)
		BoBoZan_SetStcValue(3,0,nBoBoZan_UserId)
		BoBoZan_SetStcValue(4,tBoBoZan_NeedLife[5],nBoBoZan_UserId)
		BoBoZan_SetStcValue(5,tBoBoZan_NeedLife[5],nBoBoZan_UserId)
		
		if nBoBoZan_RewardData ==5 then
			-- 全服公告
			Sys_SystemBroadcast(string.format(tBoBoZan_Text["Broadcast"][1],sBoBoZan_UserName)) -- 左上角
			Sys_TalkBroadcast(string.format(tBoBoZan_Text["Broadcast"][1],sBoBoZan_UserName)) -- 左下角
		end
		
		-- 领取波波攒奖励LOG
		Sys_SaveActionFestivalLog(string.format(tBoBoZan_Log["Game"][2],nBoBoZan_RewardData),nBoBoZan_UserId)
		
		-- 点击确定打开对白，取消寻路至其他NPC
		local sBoBoZan_Text105 = tBoBoZan_Text["Msg"]["Continue"]
		local sBoBoZan_Func = "LinkNpcGossipFunc_New</N>26505</S>1-2</N>0</N>8</N>"..nBoBoZan_UserId
		local sBoBoZan_FailFunc = "BoBoZan_PlayOtherGame</N>"..nBoBoZan_UserId
		Sys_MsgBox(sBoBoZan_Text105,sBoBoZan_Func,sBoBoZan_FailFunc,nBoBoZan_UserId)
	end
end

-- 简单礼包使用
function BoBoZan_UseItem(nBoBoZan_ItemId,sBoBoZan_ItemName)
	local nBoBoZan_UserId = Get_UserId()
	-- 判断物品在背包
	if not Item_ChkItem(nBoBoZan_ItemId) then
		return
	end

	-- 判断背包空间
	local nBoBoZan_Space = RewardTemplate_GetRewardSpace(tBoBoZan_Reward[nBoBoZan_ItemId])
	if not BoBoZan_CheckLeftSpace(nBoBoZan_Space,nBoBoZan_UserId) then
		return
	end

	-- 发奖
	RewardTemplate_UseItemAndMsg(tBoBoZan_Reward[nBoBoZan_ItemId])
end

-- 随机礼包使用
function BoBoZan_RandomItem(nBoBoZan_ItemId,sBoBoZan_ItemName)
	local nBoBoZan_UserId = Get_UserId()
	-- 判断物品在背包
	if not Item_ChkItem(nBoBoZan_ItemId) then
		return
	end

	-- 判断背包空间
	local nBoBoZan_Space = RewardTemplate_GetRandomSpace(tBoBoZan_Reward,nBoBoZan_ItemId)
	if not BoBoZan_CheckLeftSpace(nBoBoZan_Space,nBoBoZan_UserId) then
		return
	end

	-- 发奖
	RewardTemplate_RandomReward(tBoBoZan_Reward,nBoBoZan_ItemId)
end

-- 多次礼包使用
function BoBoZan_UseLimitItem(nBoBoZan_ItemId,sBoBoZan_ItemName)
	local nBoBoZan_UserId = Get_UserId()
	-- 判断物品在背包
	if not Item_ChkItem(nBoBoZan_ItemId) then
		return
	end

	-- 判断使用次数
	local nBoBoZan_UseNum = BoBoZan_GetStcValue(nBoBoZan_ItemId,nBoBoZan_UserId) or 0
	local nBoBoZan_MaxNum = tBoBoZan_Stc[nBoBoZan_ItemId]["LimitData"]
	local nBoBoZan_NextNum = nBoBoZan_UseNum + 1

	-- 没有使用次数
	if nBoBoZan_UseNum >= nBoBoZan_MaxNum then
		Item_DelItem(nBoBoZan_ItemId)
		return
	end

	-- 判断隔天
	if not BoBoZan_ClearStcInterval(nBoBoZan_ItemId,nBoBoZan_UserId) then
		User_TalkChannel2005(tBoBoZan_Text["Msg"]["Already"],nBoBoZan_UserId)
		Sys_MsgBox(tBoBoZan_Text["Msg"]["Already"])
		return
	end

	-- 判断是赠点礼包
	if tBoBoZan_Stc[nBoBoZan_ItemId]["EMoneyMono"] == 1 then
		--判断赠点天石上限
		local nBoBoZan_MonoEMoney = tBoBoZan_Reward[nBoBoZan_ItemId]["RewardEMoneyMono"]["Value"]
		if Get_UserMonoEMoney() + nBoBoZan_MonoEMoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tBoBoZan_Text["Msg"]["NoMoneySpace"],nBoBoZan_UserId)
			Sys_MsgBox(tBoBoZan_Text["Msg"]["NoMoneySpace"])
			return
		end
	end

	-- 打掩码
	if not BoBoZan_AddStatistic(nBoBoZan_ItemId,1,nBoBoZan_UserId) then
		return
	end

	-- 判断最后一次使用
	if nBoBoZan_NextNum == nBoBoZan_MaxNum then
		--最后一次使用删除礼包
		if not Item_DelItem(nBoBoZan_ItemId) then
			return
		end
	end

	-- 领奖出提示
	if RewardTemplate_UseItemAndMsg(tBoBoZan_Reward[nBoBoZan_ItemId]) then
		User_TalkChannel2005(string.format(tBoBoZan_Text[nBoBoZan_ItemId]["GetReward"],nBoBoZan_NextNum),nBoBoZan_UserId)
		Sys_MsgBox(string.format(tBoBoZan_Text[nBoBoZan_ItemId]["GetReward"],nBoBoZan_NextNum))
	end
end

-- 过期删除
function BoBoZan_ChkTimeOut(nBoBoZan_ItemId,sBoBoZan_ItemName)
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		if Item_ChkItem(nBoBoZan_ItemId) and Item_DelItem(nBoBoZan_ItemId) then
			Sys_SaveActionRewardLog(string.format(tBoBoZan_Log["Del"],nBoBoZan_ItemId,1))
			User_TalkChannel2005(string.format(tBoBoZan_Text["Msg"]["ItemOverTime"],sBoBoZan_ItemName))
			Sys_MsgBox(string.format(tBoBoZan_Text["Msg"]["ItemOverTime"],sBoBoZan_ItemName))
		end
		return false
	else
		return true
	end
end

-- 判断背包空间
function BoBoZan_CheckLeftSpace(nBoBoZan_Space,nBoBoZan_UserId)
	if not User_CheckLeftSpace(nBoBoZan_Space,nBoBoZan_UserId) then
		Sys_MsgBox(string.format(tBoBoZan_Text["Msg"]["NoSpace"],nBoBoZan_Space),nil,nil,nBoBoZan_UserId)
		User_TalkChannel2005(string.format(tBoBoZan_Text["Msg"]["NoSpace"],nBoBoZan_Space),nBoBoZan_UserId)
		return false
	else
		return true
	end
end

-- 获取掩码值
function BoBoZan_GetStcValue(nBoBoZan_Index,nBoBoZan_UserId)
	local nBoBoZan_Event = tBoBoZan_Stc[nBoBoZan_Index]["EventType"]
	local nBoBoZan_Type = tBoBoZan_Stc[nBoBoZan_Index]["DataType"]
	local nBoBoZan_Data = Get_UserStatisticValue(nBoBoZan_Event,nBoBoZan_Type,nBoBoZan_UserId) or 0

	return nBoBoZan_Data
end

-- 设置掩码值（定值）
function BoBoZan_SetStcValue(nBoBoZan_Index,nBoBoZan_Data,nBoBoZan_UserId)
	local nBoBoZan_Event = tBoBoZan_Stc[nBoBoZan_Index]["EventType"]
	local nBoBoZan_Type = tBoBoZan_Stc[nBoBoZan_Index]["DataType"]

	-- 打掩码、时间戳
	if Task_SetStatistic(nBoBoZan_Event,nBoBoZan_Type,nBoBoZan_Data,1,nBoBoZan_UserId) then 
		Task_SetStcTimestamp(nBoBoZan_Event,nBoBoZan_Type,0,nBoBoZan_UserId)
		return true
	else
		return false
	end
end

-- 设置掩码值（增加）
function BoBoZan_AddStatistic(nBoBoZan_Index,nBoBoZan_Data,nBoBoZan_UserId)
	local nBoBoZan_Event = tBoBoZan_Stc[nBoBoZan_Index]["EventType"]
	local nBoBoZan_Type = tBoBoZan_Stc[nBoBoZan_Index]["DataType"]

	-- 打掩码、时间戳
	if Task_AddStatistic(nBoBoZan_Event,nBoBoZan_Type,nBoBoZan_Data,1,nBoBoZan_UserId) then 
		Task_SetStcTimestamp(nBoBoZan_Event,nBoBoZan_Type,0,nBoBoZan_UserId)
		return true
	else
		return false
	end
end

-- 隔天重置
function BoBoZan_ClearStcInterval(nBoBoZan_Index,nBoBoZan_UserId)
	local nBoBoZan_Event = tBoBoZan_Stc[nBoBoZan_Index]["EventType"]
	local nBoBoZan_Type = tBoBoZan_Stc[nBoBoZan_Index]["DataType"]

	-- 判断隔天
	if Task_StcInterval(nBoBoZan_Event,nBoBoZan_Type,1,4,nBoBoZan_UserId) then
		Task_SetStatistic(nBoBoZan_Event,nBoBoZan_Type,0,1,nBoBoZan_UserId)
		Task_SetStcTimestamp(nBoBoZan_Event,nBoBoZan_Type,0,nBoBoZan_UserId)
		return true
	else
		return false
	end
end

-- 道具寻路
function BoBoZan_ItemPathFind(nBoBoZan_ItemId,sBoBoZan_ItemName)
	-- 过期删除
	local nBoBoZan_UserId = Get_UserId()
	if not BoBoZan_ChkTimeOut(nBoBoZan_ItemId,sBoBoZan_ItemName) then
		return
	end

	-- 判断物品在背包
	if not Item_ChkItem(nBoBoZan_ItemId) then
		return
	end

	local nBoBoZan_NpcId = tBoBoZan_Cont["MainNPCId"]
	BoBoZan_Where(nBoBoZan_NpcId,nBoBoZan_UserId)
end

-- 寻路去其他游戏
function BoBoZan_PlayOtherGame(nBoBoZan_UserId)
	-- 获取玩家和NPC的地图ID
	local nBoBoZan_Index = math.random(1,4)
	local nBoBoZan_OtherGameNpc = tBoBoZan_OtherGame[nBoBoZan_Index]

	BoBoZan_Where(nBoBoZan_OtherGameNpc,nBoBoZan_UserId)
end

-- 寻路
function BoBoZan_Where(nBoBoZan_NpcId,nBoBoZan_UserId)
	-- 获取玩家和NPC的地图ID
	local nBoBoZan_NpcMap = Get_NpcMapID(nBoBoZan_NpcId)
	local nBoBoZan_NowMapId = Get_UserMapId(nBoBoZan_UserId)

	-- 判断是否在一张地图
	if nBoBoZan_NowMapId == nBoBoZan_NpcMap then
		NpcPosition_PathFind(nBoBoZan_NpcId)
		return true
	else
		return false
	end
end


---------------------------------------------NPC模块---------------------------------------------
tNpcFace[2486] = 2906
tNpcGossip[26505]= tNpcGossip[26505] or DefaultNpc:new{}
tNpcGossip[26505]["DialogueText"] = tBoBoZan_Text[26505]
tNpcGossip[26505]["OptionHidden"] = 1

-- 首次对白
tNpcGossip[26505]["Text1-1"] = {111,112,113,114}
tNpcGossip[26505]["ChkFunc1-1"]= function()
	return BoBoZan_FirstDialogue()
end
tNpcGossip[26505]["tOption1-1"] = {111}
tNpcGossip[26505]["OptionFunc111"] = "BoBoZan_Rule</N>1"-- 什么是波波攒

-- 非首次对白
tNpcGossip[26505]["Text1-2"] = {111,121,122,123,124,125,126,127,128,129,130,131,132,133,134,411,412,413,414,415,421,422,423,424,425,426}
tNpcGossip[26505]["ChkFunc1-2"]= function()
	return BoBoZan_NoFirstDialogue()
end
tNpcGossip[26505]["tOption1-2"] = {121,122,123,124,125}
tNpcGossip[26505]["OptionFunc121"] = "BoBoZan_GameStar"-- 开始比试（免费）
tNpcGossip[26505]["OptionFunc122"] = "BoBoZan_GameStarByTicket"-- 开始比试（1张游玩卷）
tNpcGossip[26505]["OptionFunc123"] = "BoBoZan_Rule</N>2"-- 什么是波波攒？
tNpcGossip[26505]["OptionPoint124"] = "3-1"-- 波波攒奖励规则
tNpcGossip[26505]["OptionFunc125"] = "BoBoZan_GetReward"-- 领取波波攒奖励

-- 【开始游戏】
tNpcGossip[26505]["Text1-3"] = {111,121,122,123,124,215,127,128,129,130,131,132,133,134,214}
tNpcGossip[26505]["ChkFunc1-3"]= function()
	return BoBoZan_GameStarDialogue()
end
tNpcGossip[26505]["tOption1-3"] = {1,2,3,4,5,6}
tNpcGossip[26505]["OptionFunc1"] = "BoBoZan_UseFightSkill</N>1"-- "蓄气"
tNpcGossip[26505]["OptionFunc2"] = "BoBoZan_UseFightSkill</N>2"-- "气元斩（-1气）"
tNpcGossip[26505]["OptionFunc3"] = "BoBoZan_UseFightSkill</N>3"-- "龟派气功（-2气）"
tNpcGossip[26505]["OptionFunc4"] = "BoBoZan_UseFightSkill</N>4"-- "魔贯击杀炮（-3气）"
tNpcGossip[26505]["OptionFunc5"] = "BoBoZan_UseFightSkill</N>5"-- "臂挡（不扣气）"
tNpcGossip[26505]["OptionFunc6"] = "BoBoZan_UseFightSkill</N>6"-- "瞬间移动（-1气）"


-- 【玩家使用技能】
-- tNpcGossip[26505]["Text2-1"] = {111,121,122,123,124,211,212,126,1,2,3,4,5,6,213,215}
tNpcGossip[26505]["Text2-1"] = {111,121,122,123,124,215}
tNpcGossip[26505]["tOption2-1"] = {1,2,3,4,5,6}

-- 【没有游玩卷】
tNpcGossip[26505]["Text2-2"] = {111,221,222,223}
tNpcGossip[26505]["tOption2-2"] = {211}

-- 接、波波攒奖励规则
tNpcGossip[26505]["Text3-1"] = {111,311,312,313,314,315,316,317,318,319}
tNpcGossip[26505]["tOption3-1"] = {311}
tNpcGossip[26505]["OptionPoint311"] = "1-2"-- 回主对话

-- 【玩家血量为0，失败】
tNpcGossip[26505]["Text4-1"] = {411,412,413,414,415}
tNpcGossip[26505]["tOption4-1"] = {125}-- 领取波波攒奖励
-- tNpcGossip[26505]["OptionPoint411"] = "1-2"-- 回主对话

-- 【龟仙人血量为0，成功】
tNpcGossip[26505]["Text4-2"] = {421,422,423,424,425,426}
tNpcGossip[26505]["tOption4-2"] = {125}-- 领取波波攒奖励
-- tNpcGossip[26505]["OptionPoint421"] = "1-2"-- 回主对话

-- 接、什么是波波攒
tNpcGossip[26505]["Text5-1"] = {111,1111,1112,1113,1114}
tNpcGossip[26505]["tOption5-1"] = {1111,1112}
tNpcGossip[26505]["OptionPoint1111"] = "1-2"-- 回主对话
tNpcGossip[26505]["OptionPoint1112"] = "1-2"-- 回主对话

