------------------------------------------------------------------------------------
--Name：	200216[简体征服][活动脚本]忍者觉醒前瞻任务
--Creator:	杨志翔
--DATE：2020-02-16
------------------------------------------------------------------------------------
-- 命名前缀 NAForward
--  
--lua 41718
--logid：
--4个怪物
--双龙城npc2个 26000 25959
--副本内1个 25995
--怪物使用的npc模型4个 25996-25999
--3329922 --背包信
--3329923 --桑葚酒
--3329924 七彩幻贝
--3329925 通灵卷轴
--
------------------------------------------------------------------------------------数据部分-------------------------------------------
local tNAForward_Cont = {}
	tNAForward_Cont["ActTime"] = tActivityTime["NAForward"]["ActivityTime"] 
	tNAForward_Cont["ActTime2"] = tActivityTime["NAForward"]["ActivityTime1"]
	tNAForward_Cont["Npcid"] = {}
	tNAForward_Cont["Npcid"]["Monster"] = 26000
	tNAForward_Cont["Npcid"]["City"] = 25959
	tNAForward_Cont["Npcid"]["Ins"] = 25995
	tNAForward_Cont["Log"] = "0,0,1,%d,12001883,2,0,0"
	tNAForward_Cont["Item"] = 3329923
	tNAForward_Cont["Shell"] = 3329924
	tNAForward_Cont["Scroll"] = 3329925
	tNAForward_Cont["TaskId"] = {}
	tNAForward_Cont["TaskId"]["Monster"] = 7120
	tNAForward_Cont["TaskId"][1] = {}
	tNAForward_Cont["TaskId"][1][1] = 7111
	tNAForward_Cont["TaskId"][1][2] = 7112
	tNAForward_Cont["TaskId"][1][3] = 7113
	tNAForward_Cont["TaskId"][2] = {}
	tNAForward_Cont["TaskId"][2][1] = 7114
	tNAForward_Cont["TaskId"][2][2] = 7115
	tNAForward_Cont["TaskId"][2][3] = 7116
	tNAForward_Cont["TaskId"][3] = {}
	tNAForward_Cont["TaskId"][3][1] = 7117
	tNAForward_Cont["TaskId"][3][2] = 7118
	tNAForward_Cont["TaskId"][3][3] = 7119

	tNAForward_Cont["Plot"] = {}
	tNAForward_Cont["Plot"][1] = {}
	tNAForward_Cont["Plot"][1][1] = 23
	tNAForward_Cont["Plot"][1][2] = 24
	tNAForward_Cont["Plot"][2] = {}
	tNAForward_Cont["Plot"][2][1] = 25
	tNAForward_Cont["Plot"][2][2] = 26
	tNAForward_Cont["Plot"][3] = {}
	tNAForward_Cont["Plot"][3][1] = 27
	tNAForward_Cont["Plot"][3][2] = 23

	tNAForward_Cont["SummonNum"] = {}
	tNAForward_Cont["SummonNum"][1] = 3
	tNAForward_Cont["SummonNum"][2] = 4
	tNAForward_Cont["SummonNum"][3] = 10
	tNAForward_Cont["ShellNeed"] = 100
	tNAForward_Cont["MonsterNeed"] = 100
	tNAForward_Cont["Price"] =27

	tNAForward_Cont["Action"] = {}
	tNAForward_Cont["Action"]["Login"] = 576450
	tNAForward_Cont["Action"]["Ins"] = {}
	tNAForward_Cont["Action"]["Ins"][1] = 576451
	tNAForward_Cont["Action"]["Ins"][2] = 576452
	tNAForward_Cont["Action"]["Scroll"] = 576453


	tNAForward_Cont["Instance"] = {}
	tNAForward_Cont["Instance"][1] = 611
	tNAForward_Cont["Instance"][2] = 612
	tNAForward_Cont["Instance"][3] = 613
	
	tNAForward_Cont["Map"] = {}
	tNAForward_Cont["Map"][1] = {}
	tNAForward_Cont["Map"][1]["MapId"] = 1002
	tNAForward_Cont["Map"][1]["PosX"] = 351
	tNAForward_Cont["Map"][1]["PosY"] = 463
	tNAForward_Cont["Map"][2] = {}
	tNAForward_Cont["Map"][2]["MapId"] = 1036
	tNAForward_Cont["Map"][2]["PosX"] = 203
	tNAForward_Cont["Map"][2]["PosY"] = 233
	tNAForward_Cont["Gen"] = {}
	tNAForward_Cont["Gen"][1] = 30624
	tNAForward_Cont["Gen"][2] = 30625
	tNAForward_Cont["Gen"][3] = 30626
	
	tNAForward_Cont["GenPos"] = {}
	tNAForward_Cont["GenPos"][1] = {}
	tNAForward_Cont["GenPos"][1][1] = 40
	tNAForward_Cont["GenPos"][1][2] = 35
	tNAForward_Cont["GenPos"][2] = {}
	tNAForward_Cont["GenPos"][2][1] = 51
	tNAForward_Cont["GenPos"][2][2] = 42
	tNAForward_Cont["GenPos"][3] = {}
	tNAForward_Cont["GenPos"][3][1] = 76
	tNAForward_Cont["GenPos"][3][2] = 162

	tNAForward_Cont["NpcPos"] = {}
	tNAForward_Cont["NpcPos"][1] = {}
	tNAForward_Cont["NpcPos"][1][1] = 33
	tNAForward_Cont["NpcPos"][1][2] = 23
	tNAForward_Cont["NpcPos"][2] = {}
	tNAForward_Cont["NpcPos"][2][1] = 72
	tNAForward_Cont["NpcPos"][2][2] = 82
	tNAForward_Cont["NpcPos"][3] = {}
	tNAForward_Cont["NpcPos"][3][1] = 70
	tNAForward_Cont["NpcPos"][3][2] = 128

	tNAForward_Cont["Stc"] = {}
	tNAForward_Cont["Stc"]["Event_Type"] = 216
	tNAForward_Cont["Stc"]["Data_Type"] =  30
	tNAForward_Cont["Stc"]["ScrollEvent"] =  216
	tNAForward_Cont["Stc"]["ScrollData"] =  31
	tNAForward_Cont["Stc"]["MonEvent"] = 216
	tNAForward_Cont["Stc"]["MonData"] = 32
	tNAForward_Cont["Stc"]["LoginEvent"] = 216 
	tNAForward_Cont["Stc"]["LoginData"] = 33

	tNAForward_Cont["Lookface"] = 58527
	tNAForward_Cont["MonsterId"] = {}
	tNAForward_Cont["MonsterId"][1] = 3540
	tNAForward_Cont["MonsterId"][2] = 3541
	tNAForward_Cont["MonsterId"][3] = {}
	tNAForward_Cont["MonsterId"][3][1] = 3542
	tNAForward_Cont["MonsterId"][3][2] = 3543

	tNAForward_Cont["Effect"] = {}
	tNAForward_Cont["Effect"][1] = "task058"
	tNAForward_Cont["Effect"][2] = "task059"
	tNAForward_Cont["Effect"][3] = "task060"
	tNAForward_Cont["Effect"]["End"] = "task041"

local tNAForward_UserMonster = {}

local tNAForward_Reward = {}
	-- ===每次都发的奖励
	-- ===索引:tNAForward_Reward[1]
	-- ===
	-- ===
	-- ===
	tNAForward_Reward[1] = {}
	tNAForward_Reward[1]["LogId"] = 12001883
	tNAForward_Reward[1]["RewardItem"] = {}
	tNAForward_Reward[1]["RewardItem"][1] = {}
	tNAForward_Reward[1]["RewardItem"][1]["Id"] = 3314207 -- 虎骨气力酒[3314207][属性:8][叠加:10000][金币:0], 【表格】1000气力值
	tNAForward_Reward[1]["RewardItem"][1]["Attr"] = "0 1 3" -- 虎骨气力酒（赠）*1
	tNAForward_Reward[1]["RewardItem"][2] = {}
	tNAForward_Reward[1]["RewardItem"][2]["Id"] = 3329924 --  3329924 【库里没有该物品】, 【表格】七彩贝
	tNAForward_Reward[1]["RewardItem"][2]["Attr"] = "0 10" --  3329924 【库里没有该物品】*10
	tNAForward_Reward[1]["RewardEffect"] = {}
	tNAForward_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


	tNAForward_Reward[2] = {}
	-- ===第三次发的奖励
	-- ===索引:tNAForward_Reward[2]
	-- ===
	-- ===
	-- ===
	tNAForward_Reward[2]["LogId"] = 12001883
	tNAForward_Reward[2]["RewardItem"] = {}
	tNAForward_Reward[2]["RewardItem"][1] = {}
	tNAForward_Reward[2]["RewardItem"][1]["Id"] = 3314207 -- 虎骨气力酒[3314207][属性:8][叠加:10000][金币:0], 【表格】1000气力值
	tNAForward_Reward[2]["RewardItem"][1]["Attr"] = "0 1 3" -- 虎骨气力酒（赠）*1
	tNAForward_Reward[2]["RewardItem"][2] = {}
	tNAForward_Reward[2]["RewardItem"][2]["Id"] = 3329924 --  3329924 【库里没有该物品】, 【表格】七彩贝
	tNAForward_Reward[2]["RewardItem"][2]["Attr"] = "0 10" --  3329924 【库里没有该物品】*10
	tNAForward_Reward[2]["RewardItem"][3] = {}
	tNAForward_Reward[2]["RewardItem"][3]["Id"] = 3329925 -- 改为发通灵卷轴 
	tNAForward_Reward[2]["RewardItem"][3]["Attr"] = "0 1" -- 
	tNAForward_Reward[2]["RewardEffect"] = {}
	tNAForward_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[2]["RewardEffect"]["Effect"] = "angelwing"


	tNAForward_Reward[3] = {}
	-- ===跑环奖励
	-- ===索引:tNAForward_Reward[3]
	-- ===
	-- ===
	-- ===
	tNAForward_Reward[3]["ItemChanceSum"] = 10000
	tNAForward_Reward[3]["LogId"] = 12001883
	-- 七彩贝-- 【必给】
	tNAForward_Reward[3][1] = {}
	tNAForward_Reward[3][1]["RandomItemChanceType"] = 1
	tNAForward_Reward[3][1]["RewardItem"] = {}
	tNAForward_Reward[3][1]["RewardItem"][1] = {}
	tNAForward_Reward[3][1]["RewardItem"][1]["Id"] = 3329924 --  3329924 【库里没有该物品】, 【表格】七彩贝
	tNAForward_Reward[3][1]["RewardItem"][1]["Attr"] = "0 1" --  3329924 【库里没有该物品】*1
	tNAForward_Reward[3][1]["RewardEffect"] = {}
	tNAForward_Reward[3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 20%
	tNAForward_Reward[3][2] = {}
	tNAForward_Reward[3][2]["RandomItemChanceType"] = 2
	tNAForward_Reward[3][2]["ItemChance"] = 2000
	tNAForward_Reward[3][2]["RewardItem"] = {}
	tNAForward_Reward[3][2]["RewardItem"][1] = {}
	tNAForward_Reward[3][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNAForward_Reward[3][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tNAForward_Reward[3][2]["RewardEffect"] = {}
	tNAForward_Reward[3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果*10 - 20%
	tNAForward_Reward[3][3] = {}
	tNAForward_Reward[3][3]["RandomItemChanceType"] = 2
	tNAForward_Reward[3][3]["ItemChance"] = 2000
	tNAForward_Reward[3][3]["RewardItem"] = {}
	tNAForward_Reward[3][3]["RewardItem"][1] = {}
	tNAForward_Reward[3][3]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*10
	tNAForward_Reward[3][3]["RewardItem"][1]["Attr"] = "0 10" -- 人参果*10
	tNAForward_Reward[3][3]["RewardEffect"] = {}
	tNAForward_Reward[3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹*10 - 20%
	tNAForward_Reward[3][4] = {}
	tNAForward_Reward[3][4]["RandomItemChanceType"] = 2
	tNAForward_Reward[3][4]["ItemChance"] = 2000
	tNAForward_Reward[3][4]["RewardItem"] = {}
	tNAForward_Reward[3][4]["RewardItem"][1] = {}
	tNAForward_Reward[3][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*10
	tNAForward_Reward[3][4]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	tNAForward_Reward[3][4]["RewardEffect"] = {}
	tNAForward_Reward[3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[3][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3赠 - 20%
	tNAForward_Reward[3][5] = {}
	tNAForward_Reward[3][5]["RandomItemChanceType"] = 2
	tNAForward_Reward[3][5]["ItemChance"] = 2000
	tNAForward_Reward[3][5]["RewardItem"] = {}
	tNAForward_Reward[3][5]["RewardItem"][1] = {}
	tNAForward_Reward[3][5]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3赠
	tNAForward_Reward[3][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- +3赤炼石（赠）*1
	tNAForward_Reward[3][5]["RewardEffect"] = {}
	tNAForward_Reward[3][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[3][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 300气力值 - 20%
	tNAForward_Reward[3][6] = {}
	tNAForward_Reward[3][6]["RandomItemChanceType"] = 2
	tNAForward_Reward[3][6]["ItemChance"] = 2000
	tNAForward_Reward[3][6]["RewardStrengthValue"] = {}
	tNAForward_Reward[3][6]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
	tNAForward_Reward[3][6]["RewardEffect"] = {}
	tNAForward_Reward[3][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[3][6]["RewardEffect"]["Effect"] = "angelwing"


	tNAForward_Reward[3329924] = {}
	-- ===信物换气力值
	-- ===索引:tNAForward_Reward[3329924][3]
	-- ===删除:3329924,1
	-- ===
	-- ===
	tNAForward_Reward[3329924][3] = {}
	tNAForward_Reward[3329924][3]["LogId"] = 12001883
	tNAForward_Reward[3329924][3]["DeleteItem"] = {}
	tNAForward_Reward[3329924][3]["DeleteItem"][1] = {}
	tNAForward_Reward[3329924][3]["DeleteItem"][1]["Id"] = 3329924 -- 【库】 3329924 【库里没有该物品】[属性:]
	tNAForward_Reward[3329924][3]["DeleteItem"][1]["ItemNum"] = 1
	tNAForward_Reward[3329924][3]["RewardStrengthValue"] = {}
	tNAForward_Reward[3329924][3]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tNAForward_Reward[3329924][3]["RewardEffect"] = {}
	tNAForward_Reward[3329924][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[3329924][3]["RewardEffect"]["Effect"] = "angelwing"


	tNAForward_Reward[3329924][1] = {}
	-- ===100个信物换
	-- ===索引:tNAForward_Reward[3329924][1]
	-- ===删除:3329924,100
	-- ===删除:3329925,1
	-- ===
	-- ===
	tNAForward_Reward[3329924][1]["LogId"] = 12001883
	tNAForward_Reward[3329924][1]["DeleteItem"] = {}
	tNAForward_Reward[3329924][1]["DeleteItem"][1] = {}
	tNAForward_Reward[3329924][1]["DeleteItem"][1]["Id"] = 3329924 -- 【库】 3329924 【库里没有该物品】[属性:]
	tNAForward_Reward[3329924][1]["DeleteItem"][1]["ItemNum"] = 100
	tNAForward_Reward[3329924][1]["DeleteItem"][2] = {}
	tNAForward_Reward[3329924][1]["DeleteItem"][2]["Id"] = 3329925 -- 【库】 3329925 【库里没有该物品】[属性:]
	tNAForward_Reward[3329924][1]["RewardItem"] = {}
	tNAForward_Reward[3329924][1]["RewardItem"][1] = {}
	tNAForward_Reward[3329924][1]["RewardItem"][1]["Id"] = 200670 -- 学院派套装[194300][属性:0][叠加:0][金币:100], 【表格】蛤蟆坐骑
	tNAForward_Reward[3329924][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑学院派套装（赠）*1
	tNAForward_Reward[3329924][1]["RewardEffect"] = {}
	tNAForward_Reward[3329924][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[3329924][1]["RewardEffect"]["Effect"] = "angelwing"


	tNAForward_Reward[3329924][2] = {}
	-- ===信物不足时兑换
	-- ===索引:tNAForward_Reward[3329924][2]
	-- ===删除:3329924,1
	-- ===删除:3329925,1
	-- ===消耗天石:200
	-- ===NewEmoneyLog:1000,01568
	-- ===
	-- ===
	-- ===
	tNAForward_Reward[3329924][2]["LogId"] = 12001883
	tNAForward_Reward[3329924][2]["DeleteItem"] = {}
	tNAForward_Reward[3329924][2]["DeleteItem"][1] = {}
	tNAForward_Reward[3329924][2]["DeleteItem"][1]["Id"] = 3329924 -- 【库】 3329924 【库里没有该物品】[属性:]
	tNAForward_Reward[3329924][2]["DeleteItem"][1]["ItemNum"] = 10
	tNAForward_Reward[3329924][2]["DeleteItem"][2] = {}
	tNAForward_Reward[3329924][2]["DeleteItem"][2]["Id"] = 3329925 -- 【库】 3329925 【库里没有该物品】[属性:]
	tNAForward_Reward[3329924][2]["CostMoney"] = {}
	tNAForward_Reward[3329924][2]["CostMoney"]["Value"] = 2000000 -- 消耗金币
	tNAForward_Reward[3329924][2]["RewardItem"] = {}
	tNAForward_Reward[3329924][2]["RewardItem"][1] = {}
	tNAForward_Reward[3329924][2]["RewardItem"][1]["Id"] = 200670 -- 
	tNAForward_Reward[3329924][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑学院派套装（赠）*1
	tNAForward_Reward[3329924][2]["RewardEffect"] = {}
	tNAForward_Reward[3329924][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[3329924][2]["RewardEffect"]["Effect"] = "angelwing"



	tNAForward_Reward[3329925] = {}
	tNAForward_Reward[3329925]["LogId"] = 12001883
	tNAForward_Reward[3329925]["DeleteItem"] = {}
	tNAForward_Reward[3329925]["DeleteItem"][1] = {}
	tNAForward_Reward[3329925]["DeleteItem"][1]["Id"] = 3329925 -- 【库】 3329924 【库里没有该物品】[属性:]
	tNAForward_Reward[3329925]["DeleteItem"][1]["ItemNum"] = 1
	tNAForward_Reward[3329925]["RewardItem"] = {}
	tNAForward_Reward[3329925]["RewardItem"][1] = {}
	tNAForward_Reward[3329925]["RewardItem"][1]["Id"] = 200670 -- 
	tNAForward_Reward[3329925]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" --
	tNAForward_Reward[3329925]["RewardEffect"] = {}
	tNAForward_Reward[3329925]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[3329925]["RewardEffect"]["Effect"] = "angelwing"


	tNAForward_Reward[3329925][2] = {}
	tNAForward_Reward[3329925][2]["LogId"] = 12001883
	tNAForward_Reward[3329925][2]["DeleteItem"] = {}
	tNAForward_Reward[3329925][2]["DeleteItem"][1] = {}
	tNAForward_Reward[3329925][2]["DeleteItem"][1]["Id"] = 3329925 -- 【库】 3329924 【库里没有该物品】[属性:]
	tNAForward_Reward[3329925][2]["DeleteItem"][1]["ItemNum"] = 1
	tNAForward_Reward[3329925][2]["CostMoney"] = {}
	tNAForward_Reward[3329925][2]["CostMoney"]["Value"] = 200000000 -- 消耗金币
	tNAForward_Reward[3329925][2]["RewardItem"] = {}
	tNAForward_Reward[3329925][2]["RewardItem"][1] = {}
	tNAForward_Reward[3329925][2]["RewardItem"][1]["Id"] = 200670 -- 
	tNAForward_Reward[3329925][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" --
	tNAForward_Reward[3329925][2]["RewardEffect"] = {}
	tNAForward_Reward[3329925][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNAForward_Reward[3329925][2]["RewardEffect"]["Effect"] = "angelwing"
------------------------------------------------------------------------------------逻辑部分-------------------------------------------
--链接副本npc
function NAForward_LinkNpc()
	--根据进度刷不同的对话
	local nNpcId  = tNAForward_Cont["Npcid"]["Ins"]
	local nNAForward_Stc = Get_UserStatisticValue(tNAForward_Cont["Stc"]["Event_Type"],tNAForward_Cont["Stc"]["Data_Type"])
	if nNAForward_Stc == 0 then 
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	elseif nNAForward_Stc == 1 then 
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	elseif nNAForward_Stc == 2 then 
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
end

function NAForward_Enter()
	local nNAForward_UserId = Get_UserId()
	local bNAForward_Judge = true
	local nNAForward_Item = tNAForward_Cont["Item"]
	local nNAForward_NpcId = tNAForward_Cont["Npcid"]["City"]
	local nNAForward_Event = tNAForward_Cont["Stc"]["Event_Type"]
	local nNAForward_Data = tNAForward_Cont["Stc"]["Data_Type"]
	if not Task_ChkTaskDetail(tNAForward_Cont["TaskId"][1][1],nNAForward_UserId) then
		--如果登录自检没打上掩码这里补一个
		Task_AddTaskDetail(tNAForward_Cont["TaskId"][1][1],0,nNAForward_UserId)
	end
	local nNAForward_Stc = Get_UserStatisticValue(nNAForward_Event,nNAForward_Data,nNAForward_UserId)
	if not Task_ChkStatistic(nNAForward_Event,nNAForward_Data,nNAForward_UserId) then
		--如果没有完成过该任务就检测
		if not Item_ChkItem(nNAForward_Item) then 
			if not (Get_TaskDetailCompleteFlag(tNAForward_Cont["TaskId"][nNAForward_Stc+1][1],nNAForward_UserId) >= 2) then 
				LinkNpcGossipFunc_New(nNAForward_NpcId,"2-1")
				return
			end
		end
	end
	--已做完该任务系列
	if Get_UserStatisticValue(nNAForward_Event,nNAForward_Data,nNAForward_UserId) >= 3 then 
		LinkNpcGossipFunc_New(nNAForward_NpcId,"2-2")
		return
	end
	--没有门票
	if not Item_ChkItem(nNAForward_Item) then 
		if not (Get_TaskDetailCompleteFlag(tNAForward_Cont["TaskId"][nNAForward_Stc+1][1],nNAForward_UserId) >= 2) then 
			LinkNpcGossipFunc_New(nNAForward_NpcId,"2-1")
			return
		end
	end
	--根据相应进度走对话
	
	if nNAForward_Stc == 0 then 
		LinkNpcGossipFunc_New(nNAForward_NpcId,"3-1")
		return 
	elseif nNAForward_Stc == 1 then 
		LinkNpcGossipFunc_New(nNAForward_NpcId,"3-2")
		return 
	elseif nNAForward_Stc == 2 then 
		LinkNpcGossipFunc_New(nNAForward_NpcId,"3-3")
		return 
	end
	
	LinkNpcGossipFunc_New(nNAForward_NpcId,"2-1")
	
end

function NAForward_EnterDream(nIndex)
	--进入副本
	local nNAForward_UserId = Get_UserId()
	local nNAForward_TaskId  =tNAForward_Cont["TaskId"][nIndex][1]
	local nNAForward_TaskNext = tNAForward_Cont["TaskId"][nIndex][2]
	local nNAForward_InstanceType = tNAForward_Cont["Instance"][nIndex]
	local nNAForward_NpcId = tNAForward_Cont["Npcid"]["City"]
	--检测门票并扣除
	if Get_UserTeamNumbers() > 0 then
		--Sys_MsgBox()
		Sys_MsgBox(tNAForward_Text["MsgBox"]["Team"])
		return 
	end
	if Get_UserCrimeTime() > 0 then
		--Sys_MsgBox(tNAForward_Text["MsgBox"]["Crime"])
		return
	end
	if not (Get_TaskDetailCompleteFlag(tNAForward_Cont["TaskId"][nIndex][1],nNAForward_UserId) >= 2) then 
		if not Item_ChkItem(tNAForward_Cont["Item"]) then 
			LinkNpcGossipFunc_New(nNAForward_NpcId,"2-1")
			return
		end
		if not Item_DelMulItem(tNAForward_Cont["Item"],tNAForward_Cont["Item"],1) then
			LinkNpcGossipFunc_New(tNAForward_Cont["Npcid"]["City"],"2-1")
			return
		end
	end
		--taskid检测
	if not Task_ChkTaskDetail(nNAForward_TaskId,nNAForward_UserId) then 
		return
	end

	if User_EnterInstance(nNAForward_InstanceType) then 
		--刷npc
		--Npc_CreateDynaNpc(sName,nType,nSort,nLookFace,nOwnerType,nOwnerId,nMapId,nPosX,nPosY,nLife,nBase,nLinkid,nTask0)
		--改一下lookface
		--直接召唤一个npc

		Task_SetTaskDetailCompleteFlag(nNAForward_TaskId,2,nNAForward_UserId)
		if not Task_ChkTaskDetail(nNAForward_TaskNext,nNAForward_UserId) then
			Task_AddTaskDetail(nNAForward_TaskNext,0,nNAForward_UserId)
		end
		User_EffectAdd("self",tNAForward_Cont["Effect"][nIndex],nNAForward_UserId)
		local nNAForward_PosX = tNAForward_Cont["NpcPos"][nIndex][1]
		local nNAForward_PosY = tNAForward_Cont["NpcPos"][nIndex][2]
		Npc_CreateDynaNpc(tNAForward_Text["Name"][1],2,1,tNAForward_Cont["Lookface"],0,0,Get_UserMapId(),nNAForward_PosX,nNAForward_PosY,0,0,0,94492059)
	end
end
--怪物击杀计数函数
function NAForward_MonsterKill()
	local nNAForward_UserId = Get_UserId()
	local nNAForward_TaskId = tNAForward_Cont["TaskId"]["Monster"]
	if Get_UserStatisticValue(tNAForward_Cont["Stc"]["MonEvent"] ,tNAForward_Cont["Stc"]["MonData"],nNAForward_UserId) >= 5 then
		return 
	end
	
	if not Task_ChkTaskDetail(nNAForward_TaskId,nNAForward_UserId) then
		return 
	end
	--清临时表
	tNAForward_UserMonster[nNAForward_UserId] = tNAForward_UserMonster[nNAForward_UserId] or {}
	tNAForward_UserMonster[nNAForward_UserId]["Count"] = tNAForward_UserMonster[nNAForward_UserId]["Count"] or 0
	if tNAForward_UserMonster[nNAForward_UserId]["Count"] >= tNAForward_Cont["MonsterNeed"] then 
		return 
	end
	tNAForward_UserMonster[nNAForward_UserId]["Count"] = tNAForward_UserMonster[nNAForward_UserId]["Count"] + 1
	--每10只加一次计数 写入
	if tNAForward_UserMonster[nNAForward_UserId]["Count"] % 10 == 0 then 
		--tNAForward_UserMonster[nNAForward_UserId]["Count"] = 0
		local nNAForward_Data1 = Get_TaskDetailData1(nNAForward_TaskId,nNAForward_UserId)
		if nNAForward_Data1 >= tNAForward_Cont["MonsterNeed"] then 
			return 
		end
		Task_SetTaskDetailData1(nNAForward_TaskId,nNAForward_Data1+10,nNAForward_UserId)
		if nNAForward_Data1 == 90 then 
			if SpecialServer_ChkNoGiftServer() then 
				Sys_MsgBox(tNAForward_Text["MsgBox"]["Back2"])
			else
				Sys_MsgBox(tNAForward_Text["MsgBox"]["Back"])
			end
		end
	end
end

function NAForward_AcceptMonster()
	local nNAForward_UserId = Get_UserId()
	--隔天操作
	--本日完成次数
	local nNAForward_Event =tNAForward_Cont["Stc"]["MonEvent"] 
	local nNAForward_Data =tNAForward_Cont["Stc"]["MonData"]
	local nNAForward_TaskId = tNAForward_Cont["Npcid"]["Monster"]
	Task_StcReset(nNAForward_Event,nNAForward_Data)
	if Get_UserStatisticValue(nNAForward_Event,nNAForward_Data,nNAForward_UserId) >= 5 then 
		--走Npc满次数对话
		LinkNpcGossipFunc_New(nNAForward_TaskId , "3-1")
		return 
	end
	--领任务
	if not Task_ChkTaskDetail(tNAForward_Cont["TaskId"]["Monster"],nNAForward_UserId) then 
		if not Task_AddTaskDetail(tNAForward_Cont["TaskId"]["Monster"],0,nNAForward_UserId) then
			return
		end
		tNAForward_UserMonster[nNAForward_UserId] = {}
		tNAForward_UserMonster[nNAForward_UserId]["Count"] = 0
		--催促去杀怪105
		if SpecialServer_ChkNoGiftServer() then 
			Sys_MsgBox(tNAForward_Text["MsgBox"]["toKill"])
		else 
			--普通服点击寻路到日常任务大使
			Sys_MsgBox(tNAForward_Text["MsgBox"]["toDragonKill"],"NAForward_PathDaily")
		end
		return 
	end
	local nNAForward_Data1 =  Get_TaskDetailData1(tNAForward_Cont["TaskId"]["Monster"],nNAForward_UserId) 
	if nNAForward_Data1 < tNAForward_Cont["MonsterNeed"] then 
		LinkNpcGossipFunc_New(nNAForward_TaskId , "4-1")
		return
	elseif nNAForward_Data1 >= tNAForward_Cont["MonsterNeed"] and Get_TaskDetailCompleteFlag(tNAForward_Cont["TaskId"]["Monster"],nNAForward_UserId) <= 0 then 
		LinkNpcGossipFunc_New(nNAForward_TaskId,"5-1")
		return
	end
end

function NAForward_FinishMonster()
	local nNAForward_Event =tNAForward_Cont["Stc"]["MonEvent"] 
	local nNAForward_Data =tNAForward_Cont["Stc"]["MonData"]
	local nNAForward_TaskId = tNAForward_Cont["Npcid"]["Monster"]
	Task_StcReset(tNAForward_Cont["Stc"]["MonEvent"] ,tNAForward_Cont["Stc"]["MonData"])
	local nNAForward_UserId = Get_UserId()
	local nNAForward_Data1 =  Get_TaskDetailData1(tNAForward_Cont["TaskId"]["Monster"],nNAForward_UserId) 
	if nNAForward_Data1 >= tNAForward_Cont["MonsterNeed"] and Get_TaskDetailCompleteFlag(tNAForward_Cont["TaskId"]["Monster"],nNAForward_UserId) <= 0 then
		if not User_CheckLeftSpace(2) then 
			--空间不够
			Sys_MsgBox(tNAForward_Text["MsgBox"]["NoSpace"])
			return
		end
		if not Task_SetTaskDetailCompleteFlag(tNAForward_Cont["TaskId"]["Monster"],2,nNAForward_UserId) then 
			return
		end
		--删除任务掩码
		Task_DelTaskDetail(tNAForward_Cont["TaskId"]["Monster"],nNAForward_UserId)
		--增加stc进度与发奖
		Task_AddStatistic(nNAForward_Event,nNAForward_Data,1,1,nNAForward_UserId)
		RewardTemplate_RandomReward(tNAForward_Reward,3)
		--新增一个 做完任务后面给一个召唤蛤蟆的技能

		if not Magic_ChkType(16560,nNAForward_UserId) then
			Magic_Learn(16560,nNAForward_UserId)
		end
		if Sys_ChkFullTime(tNAForward_Cont["ActTime"] ) then
			--活动时间内链接到主对话
			LinkNpcGossipFunc_New(nNAForward_TaskId , "1-4")
		end
	elseif nNAForward_Data1 < tNAForward_Cont["MonsterNeed"] then
		--未达到数量对话 
		LinkNpcGossipFunc_New(nNAForward_TaskId , "4-1")
		return
	end
end

function NAForward_AddTask()
	local nNAForward_UserId = Get_UserId()
	local nNAForward_TaskId = tNAForward_Cont["TaskId"]["Monster"]
	--删除掩码后重新打上 并清临时表
	if not Task_DelTaskDetail(nNAForward_TaskId,nNAForward_UserId) then 
		return
	end
	if not Task_AddTaskDetail(nNAForward_TaskId,0,nNAForward_UserId) then
		return
	end
	tNAForward_UserMonster[nNAForward_UserId] = {}
	tNAForward_UserMonster[nNAForward_UserId]["Count"] = 0
end


function NAForward_Login()
	local nNAForward_UserId = Get_UserId()
	if not Sys_ChkFullTime(tNAForward_Cont["ActTime"]) then 
		return
	else 
		if not User_JudgeLevelAndMetempsychosis(80,0,nNAForward_UserId)then
			return
		end
		--重置杀怪stc
		Task_StcReset(tNAForward_Cont["Stc"]["MonEvent"] ,tNAForward_Cont["Stc"]["MonData"])
		--给邮件发个入场券
		local nNAForward_TaskId = tNAForward_Cont["TaskId"][1][1]
		--如果之前没打上掩码这里补一个
		--上线添加忍者往事的第一章掩码
		if not Task_ChkTaskDetail(nNAForward_TaskId,nNAForward_UserId) then
			Task_AddTaskDetail(nNAForward_TaskId,0,nNAForward_UserId)
		end
		--如果跑环还没完成任务那么初始化临时表
		local nNAForward_MonTask = tNAForward_Cont["TaskId"]["Monster"]
		if Task_ChkTaskDetail(nNAForward_MonTask,nNAForward_UserId) then 

			tNAForward_UserMonster[nNAForward_UserId] = {}
			tNAForward_UserMonster[nNAForward_UserId]["Count"] = Get_TaskDetailData1(nNAForward_MonTask,nNAForward_UserId)
		end
		local nNAForward_LoginEvent = tNAForward_Cont["Stc"]["LoginEvent"]
		local nNAForward_LoginData = tNAForward_Cont["Stc"]["LoginData"]
		if not Task_StcInterval(nNAForward_LoginEvent,nNAForward_LoginData,1,4,nNAForward_UserId) then 
			return 
		end
		--已经发过3次
		if Get_UserStatisticValue(nNAForward_LoginEvent,nNAForward_LoginData,nNAForward_UserId) >= 3 then 
			return 
		else 
			Task_AddStatistic(nNAForward_LoginEvent,nNAForward_LoginData,1,1,nNAForward_UserId)
			Task_SetStcTimestamp(nNAForward_LoginEvent,nNAForward_LoginData,0,nNAForward_UserId)
			--邮件发门票
			local sSender = tNAForward_Text["Mail"]["Login"]["Sender"]
			local sTitle = tNAForward_Text["Mail"]["Login"]["Title"]
			local sContent = tNAForward_Text["Mail"]["Login"]["Content"]
			Sys_SendMail(nNAForward_UserId,0,0,tNAForward_Cont["Action"]["Login"],0,7,sSender,sTitle,sContent)
		end
	end
end
--第一二章击杀
function NAForward_InstanceDream1()
	if not Sys_ChkFullTime(tNAForward_Cont["ActTime"]) then 
		return
	end
	local nNAForward_UserId = Get_UserId()  
	local nNAForward_Stc = Get_UserStatisticValue(tNAForward_Cont["Stc"]["Event_Type"],tNAForward_Cont["Stc"]["Data_Type"])+1
	local nNAForward_TaskId = tNAForward_Cont["TaskId"][nNAForward_Stc][3]
	if not Task_ChkTaskDetail(nNAForward_TaskId,nNAForward_UserId) then 	
		return
	end
	--完成数量不足
	local nNAForward_Data1 = Get_TaskDetailData1(nNAForward_TaskId,nNAForward_UserId)+1
	Task_SetTaskDetailData1(nNAForward_TaskId,nNAForward_Data1,nNAForward_UserId)
	if nNAForward_Data1 == (2+nNAForward_Stc) then 
		--已满足杀怪数量
		Task_SetTaskDetailCompleteFlag(nNAForward_TaskId,2,nNAForward_UserId)
		User_PlayPlot(tNAForward_Cont["Plot"][nNAForward_Stc][2])
		--记录完成进度
		Task_AddStatistic(tNAForward_Cont["Stc"]["Event_Type"],tNAForward_Cont["Stc"]["Data_Type"],1,1,nNAForward_UserId) 
		--加下个任务的task_detail
		if Task_ChkTaskDetail(tNAForward_Cont["TaskId"][nNAForward_Stc+1][1],nNAForward_UserId) then 
			Task_DelTaskDetail(tNAForward_Cont["TaskId"][nNAForward_Stc+1][1],nNAForward_UserId)
		end
		Task_AddTaskDetail(tNAForward_Cont["TaskId"][nNAForward_Stc+1][1],0,nNAForward_UserId)
		if not User_CheckLeftSpace(1) then 
			local sSender = tNAForward_Text["Mail"]["Ins"]["Sender"]
			local sTitle = tNAForward_Text["Mail"]["Ins"]["Title"]
			local sContent = tNAForward_Text["Mail"]["Ins"]["Content"]
			Sys_SendMail(nNAForward_UserId,0,0,tNAForward_Cont["Action"]["Ins"][1],0,7,sSender,sTitle,sContent)
		else
			--包里直接发
			RewardTemplate_UseItemAndMsg(tNAForward_Reward[1])
		end
		local sText = tNAForward_Text["MsgBox"]["Exit"]
		Sys_MsgBox(sText,"NAForward_InstanceLeave",nil,nNAForward_UserId)
	end
end

function NAForward_InstanceDream3(nMonsterId)
	if not Sys_ChkFullTime(tNAForward_Cont["ActTime"]) then 
		return
	end
	local nNAForward_UserId = Get_UserId()
	local nNAForward_Stc = Get_UserStatisticValue(tNAForward_Cont["Stc"]["Event_Type"],tNAForward_Cont["Stc"]["Data_Type"])+1
	local nNAForward_TaskId = tNAForward_Cont["TaskId"][nNAForward_Stc][3]
	if not Task_ChkTaskDetail(nNAForward_TaskId,nNAForward_UserId) then 	
		return
	end
	--Monster_CreateMonsterRange召怪
	--如果是小怪
	if nMonsterId == tNAForward_Cont["MonsterId"][3][1] then
		local nNAForward_Data1 = Get_TaskDetailData1(nNAForward_TaskId)
		Task_SetTaskDetailData1(nNAForward_TaskId,nNAForward_Data1+1,nNAForward_UserId)
		if (nNAForward_Data1+1) == 10 then
			--召唤一只精英忍者
			Monster_CreateMonsterRange(0,0,Get_UserMapId(),tNAForward_Cont["GenPos"][3][1],tNAForward_Cont["GenPos"][3][2],tNAForward_Cont["Gen"][3],tNAForward_Cont["MonsterId"][3][2],0,tNAForward_Text["Monster"][3][1],0,2,2,1,10800)
		end
	elseif nMonsterId == tNAForward_Cont["MonsterId"][3][2] then 
		local nNAForward_Data2 = Get_TaskDetailData2(nNAForward_TaskId)
		Task_SetTaskDetailData2(nNAForward_TaskId,nNAForward_Data2+1,nNAForward_UserId)

		Task_AddStatistic(tNAForward_Cont["Stc"]["Event_Type"],tNAForward_Cont["Stc"]["Data_Type"],1,1,nNAForward_UserId) 
		Task_SetTaskDetailCompleteFlag(nNAForward_TaskId,2,nNAForward_UserId)
		--播放剧情与发奖
		User_PlayPlot(tNAForward_Cont["Plot"][3][1])
		if not User_CheckLeftSpace(3) then 
			local sSender = tNAForward_Text["Mail"]["Ins"]["Sender"]
			local sTitle = tNAForward_Text["Mail"]["Ins"]["Title"]
			local sContent = tNAForward_Text["Mail"]["Ins"]["Content"]
			local nAction = tNAForward_Cont["Action"]["Ins"][2]
			Sys_SendMail(nNAForward_UserId,0,0,nAction,0,7,sSender,sTitle,sContent)
		else
			--包里直接发
			RewardTemplate_UseItemAndMsg(tNAForward_Reward[2])
		end
			--离开的105
		local sText = tNAForward_Text["MsgBox"]["Exit"]
		Sys_MsgBox(sText,"NAForward_InstanceLeave",nil,nNAForward_UserId)
	end
end

function NAForward_InstanceLeave()
	--这时候无法切地图 只能自己手动结束
	--也设一个陷阱 切回双龙城

	local nMap = tNAForward_Cont["Map"][1]["MapId"]
	local nPosX = tNAForward_Cont["Map"][1]["PosX"]
	local nPosY = tNAForward_Cont["Map"][1]["PosY"]
	if  SpecialServer_ChkNoGiftServer() then
		nMap = tNAForward_Cont["Map"][2]["MapId"]
		nPosX = tNAForward_Cont["Map"][2]["PosX"]
		nPosY = tNAForward_Cont["Map"][2]["PosY"]
	end

	User_UserRandBoundTrans(nMap,nPosX,nPosY,1,1,0,Get_UserId())
end

function NAForward_OpenPlot()

	local nNAForward_UserId = Get_UserId()
	local nNAForward_Stc = Get_UserStatisticValue(tNAForward_Cont["Stc"]["Event_Type"],tNAForward_Cont["Stc"]["Data_Type"])+1
	--播放剧情 
	--第三章没有进入剧情 
	if nNAForward_Stc ~= 3 then 
		User_PlayPlot(tNAForward_Cont["Plot"][nNAForward_Stc][1])
		return
	end
	Task_SetTaskDetailCompleteFlag(tNAForward_Cont["TaskId"][nNAForward_Stc][2],2,nNAForward_UserId)
	if not Task_ChkTaskDetail(tNAForward_Cont["TaskId"][nNAForward_Stc][3],nNAForward_UserId) then
		Task_AddTaskDetail(tNAForward_Cont["TaskId"][nNAForward_Stc][3],0,nNAForward_UserId)
	end
	local nNAForward_TaskId = tNAForward_Cont["TaskId"][nNAForward_Stc][3]
	Npc_DelDynaNpc(Get_UserMapId(),"name",tNAForward_Text["Name"][1])
	local sName = ""
	local nSummonNum = tNAForward_Cont["SummonNum"][nNAForward_Stc]
	local nGenId = tNAForward_Cont["Gen"][nNAForward_Stc]
	local nPosX = tNAForward_Cont["GenPos"][nNAForward_Stc][1]
	local nPosY = tNAForward_Cont["GenPos"][nNAForward_Stc][2]
	local nMonsterId = 0
	--召唤怪物 
	if nNAForward_Stc == 3 then
		nMonsterId = tNAForward_Cont["MonsterId"][3][1]
		sName = tNAForward_Text["Monster"][nNAForward_Stc][1]
	else 
		nMonsterId = tNAForward_Cont["MonsterId"][nNAForward_Stc]
		sName = tNAForward_Text["Monster"][nNAForward_Stc]
	end
	Task_SetTaskDetailData1(nNAForward_TaskId,0,nNAForward_UserId)
	Task_SetTaskDetailData2(nNAForward_TaskId,0,nNAForward_UserId)
	Monster_CreateMonsterRange(0,0,Get_UserMapId(),nPosX,nPosY,nGenId,nMonsterId,0,sName,0,5,5,nSummonNum,10800)
end

function NAForward_PlotEnd(nUserId,nPlayId,nPlayStatus)
	if (nPlayId ~= tNAForward_Cont["Plot"][1][1]) and (nPlayId ~=  tNAForward_Cont["Plot"][2][1]) then
		return
	end
	local nNAForward_Stc = Get_UserStatisticValue(tNAForward_Cont["Stc"]["Event_Type"],tNAForward_Cont["Stc"]["Data_Type"],nUserId)+1
	Task_SetTaskDetailCompleteFlag(tNAForward_Cont["TaskId"][nNAForward_Stc][2],2,nUserId)
	if not Task_ChkTaskDetail(tNAForward_Cont["TaskId"][nNAForward_Stc][3],nUserId) then
		Task_AddTaskDetail(tNAForward_Cont["TaskId"][nNAForward_Stc][3],0,nUserId)
	end
	local nMapId = Get_UserMapId(nUserId)
	local nNAForward_TaskId = tNAForward_Cont["TaskId"][nNAForward_Stc][3]
	Npc_DelDynaNpc(nMapId,"name",tNAForward_Text["Name"][1])
	local sName = ""
	local nSummonNum = tNAForward_Cont["SummonNum"][nNAForward_Stc]
	local nGenId = tNAForward_Cont["Gen"][nNAForward_Stc]
	local nPosX = tNAForward_Cont["GenPos"][nNAForward_Stc][1]
	local nPosY = tNAForward_Cont["GenPos"][nNAForward_Stc][2]
	local nMonsterId = 0
	--召唤怪物 
	if nNAForward_Stc == 3 then
		nMonsterId = tNAForward_Cont["MonsterId"][3][1]
		sName = tNAForward_Text["Monster"][nNAForward_Stc][1]
	else 
		nMonsterId = tNAForward_Cont["MonsterId"][nNAForward_Stc]
		sName = tNAForward_Text["Monster"][nNAForward_Stc]
	end
	--第二段播完寻路到怪旁边
	if nPlayId ==  tNAForward_Cont["Plot"][2][1] then
		Sys_GotoSomeWhere(56,50,nMapId,0,nUserId)
	end
	Task_SetTaskDetailData1(nNAForward_TaskId,0,nUserId)
	Task_SetTaskDetailData2(nNAForward_TaskId,0,nUserId)
	Monster_CreateMonsterRange(0,0,nMapId,nPosX,nPosY,nGenId,nMonsterId,0,sName,0,5,5,nSummonNum,10800)
end

function NAForward_ChkItem()
	--没有卷轴对话
	local nNAForward_ItemId = tNAForward_Cont["Shell"]
	local nNAForward_Need = tNAForward_Cont["ShellNeed"]
	if Get_CountItemType(tNAForward_Cont["Scroll"],0) == 0 then
		Sys_MsgBox(tNAForward_Text["MsgBox"]["NoScroll"])
		return
	--数量不足100个进天石补充对话
	elseif Get_CountItemType(nNAForward_ItemId,0) < nNAForward_Need then
		local nNAForward_Num =  Get_CountItemType(tNAForward_Cont["Item"]+1,0)
		tItem[nNAForward_ItemId]["Text211"] = string.format(tNAForward_Text[nNAForward_ItemId]["Text211"],tostring(nNAForward_Num))
		tItem[nNAForward_ItemId]["Option211"] = string.format(tNAForward_Text[nNAForward_ItemId]["Option211"],2000000*(nNAForward_Need-nNAForward_Num))
		tItem[nNAForward_ItemId]["OptionFunc211"] = "NAForward_UseItem</N>"..tostring(nNAForward_Num)
		LinkItemGossipFunc_New(nNAForward_ItemId,"2-1")	
	--满足数量的话直接兑换
	elseif Get_CountItemType(nNAForward_ItemId,0) >= tNAForward_Cont["ShellNeed"] then
		if not User_CheckLeftSpace(1) then
			Sys_MsgBox(tNAForward_Text["MsgBox"]["NoRewardSpace"])
			return
		end
		RewardTemplate_UseItemAndMsg(tNAForward_Reward[nNAForward_ItemId][1])
	end
end
function NAForward_ChkItem2()
	--没有卷轴对话
	local nNAForward_ItemId = tNAForward_Cont["Shell"]
	local nNAForward_Need = tNAForward_Cont["ShellNeed"]
	if Get_CountItemType(tNAForward_Cont["Scroll"],0) == 0 then
		Sys_MsgBox(tNAForward_Text["MsgBox"]["NoScroll"])
		return
	--数量不足100个进天石补充对话
	elseif Get_CountItemType(nNAForward_ItemId,0) < nNAForward_Need then
		local nNAForward_Num =  Get_CountItemType(tNAForward_Cont["Item"]+1,0)
		tItem[tNAForward_Cont["Scroll"]]["Text211"] = string.format(tNAForward_Text[tNAForward_Cont["Scroll"]]["Text211"],tostring(nNAForward_Num))
		tItem[tNAForward_Cont["Scroll"]]["Option211"] = string.format(tNAForward_Text[tNAForward_Cont["Scroll"]]["Option211"],2000000*(nNAForward_Need-nNAForward_Num))
		tItem[tNAForward_Cont["Scroll"]]["OptionFunc211"] = "NAForward_UseItem2</N>"..tostring(nNAForward_Num)
		LinkItemGossipFunc_New(tNAForward_Cont["Scroll"],"2-1")	
	--满足数量的话直接兑换
	elseif Get_CountItemType(nNAForward_ItemId,0) >= tNAForward_Cont["ShellNeed"] then
		if not User_CheckLeftSpace(1) then
			Sys_MsgBox(tNAForward_Text["MsgBox"]["NoRewardSpace"])
			return
		end
		RewardTemplate_UseItemAndMsg(tNAForward_Reward[nNAForward_ItemId][1])
	end
end




function NAForward_UseItem(nNum)
	--获取当前物品数量 如果数量不一致就return
	local tReward = CommonFunc_Copy(tNAForward_Reward[tNAForward_Cont["Shell"]][2])
	local nNAForward_Need = tNAForward_Cont["ShellNeed"]
	tReward["CostMoney"]["Value"] = 2000000*(nNAForward_Need-nNum)
	tReward["DeleteItem"][1]["ItemNum"] = nNum
	if Get_CountItemType(tNAForward_Cont["Shell"],0) < nNum then 
		return
	end
	local nNAForward_UserId = Get_UserId()
	if not User_CanPutMoney2Bag(-(2000000*(nNAForward_Need-nNum)))  then 
		--阁下身上的银两不足，无法召唤。
		Sys_MsgBox(tNAForward_Text["MsgBox"]["NoMoney"])
		return 
	end
	if RewardTemplate_UseItemAndMsg(tReward) then
		local sLog = string.format(tNAForward_Cont["Log"],2000000*(nNAForward_Need-nNum))
		Sys_SaveActionRewardLog(sLog,nNAForward_UserId)
	end	
end


function NAForward_UseItem2(nNum)
	--获取当前物品数量 如果数量不一致就return
	local tReward = CommonFunc_Copy(tNAForward_Reward[tNAForward_Cont["Shell"]][2])
	local nNAForward_Need = tNAForward_Cont["ShellNeed"]
	tReward["CostMoney"]["Value"] = 2000000*(nNAForward_Need-nNum)
	tReward["DeleteItem"][1]["ItemNum"] = nNum
	if Get_CountItemType(tNAForward_Cont["Shell"],0) < nNum then 
		return
	end
	local nNAForward_UserId = Get_UserId()
	if not User_CanPutMoney2Bag(-(2000000*(nNAForward_Need-nNum)))  then 
		--阁下身上的银两不足，无法召唤。
		Sys_MsgBox(tNAForward_Text["MsgBox"]["NoMoney"])
		return 
	end
	if Get_CountItemType(tNAForward_Cont["Shell"],0) == 0 then
		if RewardTemplate_UseItemAndMsg(tNAForward_Reward[3329925][2]) then
			local sLog = string.format(tNAForward_Cont["Log"],200000000)
			Sys_SaveActionRewardLog(sLog,nNAForward_UserId)
		end
		return
	end
	if RewardTemplate_UseItemAndMsg(tReward) then
		local sLog = string.format(tNAForward_Cont["Log"],2000000*(nNAForward_Need-nNum))
		Sys_SaveActionRewardLog(sLog,nNAForward_UserId)
	end
end
function NAForward_Chi(nItemId,nIndex)
	if not Item_ChkItem(nItemId) then 
		--阁下身上没有携带七彩幻贝，无法兑换气力值。
		Sys_MsgBox(tNAForward_Text["MsgBox"]["NoShell"])
	end
	if nIndex == 1 then
		RewardTemplate_UseItemAndMsg(tNAForward_Reward[nItemId][3])
	else
		local nItemNum = Get_CountItemType(nItemId,0)
		local tReward = CommonFunc_Copy(tNAForward_Reward[nItemId][3])
		tReward["DeleteItem"][1]["ItemNum"] = nItemNum
		tReward["RewardStrengthValue"]["Value"] = nItemNum*100
		RewardTemplate_UseItemAndMsg(tReward)
	end
end
function NAForward_PathDaily()
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	NpcPosition_PathFind(22050)
end

function NAForward_PlotEnd2(nUserId,nPlayId,nPlayStatus)
	--第三段剧情播完
	if nPlayId ~= tNAForward_Cont["Plot"][3][1] then
		return
	end
	User_EffectAdd("self",tNAForward_Cont["Effect"]["End"],nUserId)
end

function NAForward_ChkMonFinish()
	local nNAForward_UserId = Get_UserId()

	if Get_TaskDetailData1(tNAForward_Cont["TaskId"]["Monster"],nNAForward_UserId) < tNAForward_Cont["MonsterNeed"] then
		--数量未达到
		LinkNpcGossipFunc_New(tNAForward_Cont["Npcid"]["Monster"],"4-1")
	elseif Get_TaskDetailCompleteFlag(tNAForward_Cont["TaskId"]["Monster"],nNAForward_UserId) <= 0 then
		--获奖的对话
		LinkNpcGossipFunc_New(tNAForward_Cont["Npcid"]["Monster"],"5-1")
	end
end

function NAForward_UseDirect(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tNAForward_Reward[nItemId])
end
------------------------------------------------------------------------------------npc-----------------------------------------------


tNpcGossip[25959] = tNpcGossip[25959] or DefaultNpc:new{}
tNpcGossip[25959]["OptionHidden"] = 1
tNpcGossip[25959]["DialogueText"] = tNAForward_Text[25959]

--活动前
tNpcGossip[25959]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25959]["tOption1-1"] = {111}
tNpcGossip[25959]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tNAForward_Cont["ActTime"])
end
--活动后
tNpcGossip[25959]["Text1-2"] = {111,112,121,122}
tNpcGossip[25959]["tOption1-2"] = {121}
tNpcGossip[25959]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tNAForward_Cont["ActTime"])
end
--活动中 等级够
tNpcGossip[25959]["Text1-3"] = {111,112,113,131,114,115}
tNpcGossip[25959]["tOption1-3"] = {131,132}
tNpcGossip[25959]["ChkFunc1-3"] = function ()
	local nUserId = Get_UserId()
	if not User_JudgeLevelAndMetempsychosis(80,0,nUserId) then
		return false
	end
	return Sys_ChkFullTime(tNAForward_Cont["ActTime"])
end
tNpcGossip[25959]["OptionFunc131"] = "NAForward_Enter"

tNpcGossip[25959]["Text1-4"] = {111,112,113,114,115,116}
tNpcGossip[25959]["tOption1-4"] = {141}
tNpcGossip[25959]["ChkFunc1-4"] = function ()
	local nUserId = Get_UserId()
	return not User_JudgeLevelAndMetempsychosis(80,0,nUserId)
end

tNpcGossip[25959]["Text3-1"] = {311,312}
tNpcGossip[25959]["tOption3-1"] = {311}
tNpcGossip[25959]["OptionFunc311"] = "NAForward_EnterDream</N>1"

tNpcGossip[25959]["Text3-2"] = {321,322}
tNpcGossip[25959]["tOption3-2"] = {321}
tNpcGossip[25959]["OptionFunc321"] = "NAForward_EnterDream</N>2"

tNpcGossip[25959]["Text3-3"] = {331,332}
tNpcGossip[25959]["tOption3-3"] = {331}
tNpcGossip[25959]["OptionFunc331"] = "NAForward_EnterDream</N>3"



--没有门票对话
tNpcGossip[25959]["Text2-1"] = {211}
tNpcGossip[25959]["tOption2-1"] = {211}

--做完3次的对话
tNpcGossip[25959]["Text2-2"] = {221}
tNpcGossip[25959]["tOption2-2"] = {221}



tNpcGossip[26000] = tNpcGossip[26000] or DefaultNpc:new{}
tNpcGossip[26000]["OptionHidden"] = 1
tNpcGossip[26000]["DialogueText"] = tNAForward_Text[26000]

--活动前
tNpcGossip[26000]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[26000]["tOption1-1"] = {111}
tNpcGossip[26000]["ChkFunc1-1"] = function ()
	if SpecialServer_ChkNoGiftServer() then 
		tNpcGossip[26000]["Text113"] = tNAForward_Text[26000]["Text1131"]
	else 
		tNpcGossip[26000]["Text113"] = tNAForward_Text[26000]["Text113"]
	end
	return CommonFunc_GetBeforeActivityTime(tNAForward_Cont["ActTime"])
end
--活动后
tNpcGossip[26000]["Text1-2"] = {111,121,122}
tNpcGossip[26000]["tOption1-2"] = {121}
tNpcGossip[26000]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tNAForward_Cont["ActTime"])
end


tNpcGossip[26000]["Text1-3"] = {111,112,113,114,115,131,132}
tNpcGossip[26000]["tOption1-3"] = {131}
tNpcGossip[26000]["ChkFunc1-3"] = function()
	--未完成一次忍者往事
	if SpecialServer_ChkNoGiftServer() then 
		tNpcGossip[26000]["Text113"] = tNAForward_Text[26000]["Text1131"]
	else 
		tNpcGossip[26000]["Text113"] = tNAForward_Text[26000]["Text113"]
	end
	local nNAForward_UserId = Get_UserId()
	local nNAForward_Event = tNAForward_Cont["Stc"]["Event_Type"]
	local nNAForward_Data = tNAForward_Cont["Stc"]["Data_Type"]


	return Get_UserStatisticValue(nNAForward_Event,nNAForward_Data,nNAForward_UserId) <= 0
end
tNpcGossip[26000]["OptionFunc131"] = "NpcPosition_PathFind</N>25959"


tNpcGossip[26000]["Text1-4"] = {111,112,113,114,115,132}
tNpcGossip[26000]["tOption1-4"] = {141,142,144,143}
tNpcGossip[26000]["OptionChkFunc141"] = function()
	--本日还没完成5次
	local nNAForward_UserId = Get_UserId()
	if SpecialServer_ChkNoGiftServer() then 
		tNpcGossip[26000]["Text113"] = tNAForward_Text[26000]["Text1131"]
	else 
		tNpcGossip[26000]["Text113"] = tNAForward_Text[26000]["Text113"]
	end
	Task_StcReset(tNAForward_Cont["Stc"]["MonEvent"] ,tNAForward_Cont["Stc"]["MonData"])
	local nNAForward_MonEvent = tNAForward_Cont["Stc"]["MonEvent"]
	local nNAForward_MonData = tNAForward_Cont["Stc"]["MonData"]
	local nNAForward_Stc = Get_UserStatisticValue(nNAForward_MonEvent,nNAForward_MonData,nNAForward_UserId)
	if nNAForward_Stc < 5 then 
		tNpcGossip[26000]["Option141"] = string.format(tNAForward_Text[26000]["Option141"],nNAForward_Stc)
		return true
	else
		return false
	end
end
tNpcGossip[26000]["OptionChkFunc142"] = function()
	--本日完成5次
	Task_StcReset(tNAForward_Cont["Stc"]["MonEvent"] ,tNAForward_Cont["Stc"]["MonData"])
	local nNAForward_UserId = Get_UserId()
	local nNAForward_MonEvent = tNAForward_Cont["Stc"]["MonEvent"]
	local nNAForward_MonData = tNAForward_Cont["Stc"]["MonData"]
	if Get_UserStatisticValue(nNAForward_MonEvent,nNAForward_MonData,nNAForward_UserId) >= 5 then 
		return true
	else
		return false
	end
end
tNpcGossip[26000]["OptionChkFunc144"] = function()
	local nNAForward_UserId = Get_UserId()
	if Task_ChkTaskDetail(tNAForward_Cont["TaskId"]["Monster"],nNAForward_UserId) then 
		return true
	else
		return false
	end
end
tNpcGossip[26000]["OptionFunc144"] = "NAForward_ChkMonFinish"


--接任务

tNpcGossip[26000]["OptionFunc141"] = "NAForward_AcceptMonster"
--本日5次对话
tNpcGossip[26000]["OptionPoint142"] = "3-1"

tNpcGossip[26000]["Text3-1"] = {311}
tNpcGossip[26000]["tOption3-1"] = {311}

--未达到杀怪数量对话
tNpcGossip[26000]["Text4-1"] = {411}
tNpcGossip[26000]["tOption4-1"] = {411}
tNpcGossip[26000]["ChkFunc4-1"] = function()
	if SpecialServer_ChkNoGiftServer() then 
		tNpcGossip[26000]["Text411"] = tNAForward_Text[26000]["Text4111"]
	else 
		tNpcGossip[26000]["Text411"] = tNAForward_Text[26000]["Text411"]
	end
	return true
end
--寻路至日常任务大使
tNpcGossip[26000]["OptionFunc411"] = "NAForward_PathDaily"

--完成数量对话
tNpcGossip[26000]["Text5-1"] = {111,511}
tNpcGossip[26000]["tOption5-1"] = {511}
tNpcGossip[26000]["OptionFunc511"] = "NAForward_FinishMonster"


--副本NPC
tNpcFace[5852] = 57
tNpcGossip[25995] = tNpcGossip[25995] or DefaultNpc:new{}
tNpcGossip[25995]["OptionHidden"] = 1
tNpcGossip[25995]["DialogueText"] = tNAForward_Text[25995]

tNpcGossip[25995]["Text1-1"] = {111}
tNpcGossip[25995]["tOption1-1"] = {111,112}
tNpcGossip[25995]["OptionPoint111"] = "1-2"
tNpcGossip[25995]["OptionPoint112"] = "1-3"

tNpcGossip[25995]["Text1-2"] = {121}
tNpcGossip[25995]["tOption1-2"] = {121}
tNpcGossip[25995]["OptionFunc121"] = "NAForward_OpenPlot"

tNpcGossip[25995]["Text1-3"] = {131}
tNpcGossip[25995]["tOption1-3"] = {131}
tNpcGossip[25995]["OptionFunc131"] = "NAForward_OpenPlot"

--第二幕
tNpcGossip[25995]["Text2-1"] = {211}
tNpcGossip[25995]["tOption2-1"] = {211}
tNpcGossip[25995]["OptionPoint211"] = "2-2"

tNpcGossip[25995]["Text2-2"] = {221}
tNpcGossip[25995]["tOption2-2"] = {221}
tNpcGossip[25995]["OptionFunc221"] = "NAForward_OpenPlot"

--第三幕
tNpcGossip[25995]["Text3-1"] = {311}
tNpcGossip[25995]["tOption3-1"] = {311}
tNpcGossip[25995]["OptionPoint311"] = "3-2"

tNpcGossip[25995]["Text3-2"] = {321}
tNpcGossip[25995]["tOption3-2"] = {321}
tNpcGossip[25995]["OptionFunc321"] = "NAForward_OpenPlot"



tItem[3329923] = tItem[3329923] or {}
tItem[3329923]["Function"] = function(nItemId)
	if not Sys_ChkFullTime(tNAForward_Cont["ActTime"]) then
		Item_DelAllItemByType(nItemId)
		return
	end
	local nNpcId = tNAForward_Cont["Npcid"]["City"]
	NpcPosition_PathFind(nNpcId)
end

--新的头像
tItemFace[3329924] = 2824
tItem[3329924] = tItem[3329924] or {}
tItem[3329924]["DialogueText"] = tNAForward_Text[3329924]
tItem[3329924]["Function"] = function(nItemId)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3329924]["Text1-1"]= {111}
tItem[3329924]["tOption1-1"] = {111,112}
tItem[3329924]["OptionFunc111"] = "NAForward_ChkItem"
tItem[3329924]["OptionPoint112"] = "3-1"

tItem[3329924]["Text2-1"] = {211}
tItem[3329924]["tOption2-1"] = {211,212}
tItem[3329924]["OptionChkFunc211"] = function(nItemId)
	return true
end
tItem[3329924]["OptionFunc211"] = "NAForward_UseItem</N>"

tItem[3329924]["Text3-1"] = {311}
tItem[3329924]["tOption3-1"] = {311,312,313}
tItem[3329924]["OptionFunc311"] = "NAForward_Chi</N>3329924</N>1"
tItem[3329924]["OptionFunc312"] = "NAForward_Chi</N>3329924</N>2"


tItemFace[3329925] = 1389
tItem[3329925] = tItem[3329925] or {}
tItem[3329925]["Function"] = function(nItemId)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3329925]["DialogueText"] = tNAForward_Text[3329925]
--    消耗100个七彩幻贝和1张通灵卷轴可召唤永久时效的蛤蟆老大，直接使用通灵卷轴可召唤180天时效的蛤蟆老大。
tItem[3329925]["Text1-1"]= {111}
--直接召唤
--消耗七彩幻贝召唤
tItem[3329925]["tOption1-1"] = {111,112}
tItem[3329925]["OptionFunc111"] = "NAForward_UseDirect</N>3329925"
tItem[3329925]["OptionFunc112"] = "NAForward_ChkItem2"

tItem[3329925]["Text2-1"] = {211}
tItem[3329925]["tOption2-1"] = {211,212}
tItem[3329925]["OptionFunc211"] = "NAForward_UseItem</N>"



tTrap[2542] = tTrap[2542] or {}
tTrap[2542]["Function"] = function()
	local nUserId = Get_UserId()
	local sFunc = "NAForward_InstanceLeave"
	Sys_MsgBox(tNAForward_Text["MsgBox"]["Exit"],"NAForward_InstanceLeave",nil,nUserId)
end
------------------------------------
--掉落
--神龙岛
local tNAForward_Monster = {}
tNAForward_Monster[1] = {}
tNAForward_Monster[1]["ActivityTime"] = tNAForward_Cont["ActTime"]
tNAForward_Monster[1]["Area"] = {11}
tNAForward_Monster[1]["Function"] = NAForward_MonsterKill

--激情服全片区
tNAForward_Monster[2] = {}
tNAForward_Monster[2]["ActivityTime"] = tNAForward_Cont["ActTime"]
tNAForward_Monster[2]["MonsterId"] = {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
tNAForward_Monster[2]["Function"] = NAForward_MonsterKill

--杀副本怪
--副本怪的各个逻辑
--第一章和第二章都用这个
tNAForward_Monster[3] = {}
tNAForward_Monster[3]["ActivityTime"] = tNAForward_Cont["ActTime"]
tNAForward_Monster[3]["MonsterId"] = {3540,3541}
tNAForward_Monster[3]["Function"] = NAForward_InstanceDream1


tNAForward_Monster[5] = {}
tNAForward_Monster[5]["ActivityTime"] = tNAForward_Cont["ActTime"]
tNAForward_Monster[5]["MonsterId"] = {3542,3543}
tNAForward_Monster[5]["Function"] = NAForward_InstanceDream3

table.insert(tMonsterDrop_AreaLoad,tNAForward_Monster[1])
table.insert(tMonsterDrop_AreaLoad_NoGift,tNAForward_Monster[2])
table.insert(tMonsterDrop_AreaLoad,tNAForward_Monster[3])

table.insert(tMonsterDrop_AreaLoad,tNAForward_Monster[5])

--登录自检 --记得下架
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,NAForward_Login)

tLuaEffectEnd["tFunction"] = tLuaEffectEnd["tFunction"] or {}
table.insert(tLuaEffectEnd["tFunction"],NAForward_PlotEnd)
table.insert(tLuaEffectEnd["tFunction"],NAForward_PlotEnd2)