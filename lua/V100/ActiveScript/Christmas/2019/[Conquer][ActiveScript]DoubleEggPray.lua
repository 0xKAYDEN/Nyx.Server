------------------------------------------------------------------------------------
--Name：     191121[简体征服][活动脚本]全球圣诞元旦活动-祝福弹幕
--Creator:      郑洵
--Created:     2019/10/26
------------------------------------------------------------------------------------

--命名前缀
--DoubleEggPray_

--logid:12001739
-- 41637 = V100\ActiveScript\Christmas\2019\[Conquer][ActiveScript]DoubleEggPray.lua
-- 41637 = V100\活动脚本\圣诞节\2019\[征服][活动脚本]全球圣诞元旦活动-祝福弹幕.lua

-- stc掩码：210 50 用于隔天判断

-- task_detail	35064
	-- Data4	记录本服用户ID
	-- Data5	记录玩家今日领奖次数
	-- Data7	记录玩家祈福时间,打时间戳


---------------------------------------------常量表---------------------------------------------
local tDoubleEggPray_Cont = {}
	--等级限制
	tDoubleEggPray_Cont["Level"] = 80
	tDoubleEggPray_Cont["Metempsychosis"] = 0
	--主任务TaskId
	tDoubleEggPray_Cont["TaskId"] = 35064
	tDoubleEggPray_Cont["MainTaskId"] = 35065
	--启明星ID
	tDoubleEggPray_Cont["MainNPCId"] = {}
	tDoubleEggPray_Cont["MainNPCId"][1] = 25572
	tDoubleEggPray_Cont["MainNPCId"][2] = 25693
	tDoubleEggPray_Cont["MainNPCId"][3] = 25694
	tDoubleEggPray_Cont["MainNPCId"][4] = 25695
	--圣诞女神（双龙城）
	tDoubleEggPray_Cont["TaskNPCId"] = 25661
	--圣诞女神（会场）
	tDoubleEggPray_Cont["ChgMapNPCId"] = {}
	tDoubleEggPray_Cont["ChgMapNPCId"][25572] = 25686
	tDoubleEggPray_Cont["ChgMapNPCId"][25693] = 25662
	tDoubleEggPray_Cont["ChgMapNPCId"][25694] = 25684
	tDoubleEggPray_Cont["ChgMapNPCId"][25695] = 25685
	--圣诞女神（会场）
	tDoubleEggPray_Cont["AllMapNPCId"] = {}
	tDoubleEggPray_Cont["AllMapNPCId"][10735] = 25572
	tDoubleEggPray_Cont["AllMapNPCId"][10601] = 25693
	tDoubleEggPray_Cont["AllMapNPCId"][10736] = 25694
	tDoubleEggPray_Cont["AllMapNPCId"][10737] = 25695
	--跨国地图ID
	tDoubleEggPray_Cont["GlobalMapId"] = {}
	tDoubleEggPray_Cont["GlobalMapId"][1] = 10735
	tDoubleEggPray_Cont["GlobalMapId"][2] = 10601
	tDoubleEggPray_Cont["GlobalMapId"][3] = 10736
	tDoubleEggPray_Cont["GlobalMapId"][4] = 10737
	--读条祈福
	tDoubleEggPray_Cont["Secs"] = 2
	tDoubleEggPray_Cont["ActionId"] = 100
	--接任务光效
	tDoubleEggPray_Cont["TaskEffect"] = "zf2-e128"
	--祈福光效
	tDoubleEggPray_Cont["PrayEffect"] = {}
	tDoubleEggPray_Cont["PrayEffect"][1] = "card_beacon"
	tDoubleEggPray_Cont["PrayEffect"][2] = "Attack35r"
	--祈福结束光效
	tDoubleEggPray_Cont["PrayEndEffect"] = "accession"
	--祈福倒计时
	tDoubleEggPray_Cont["SetTimer"] = 300
	--圣诞礼袜
	tDoubleEggPray_Cont["PrayGift"] = 3600197
	--语种纪念品
	tDoubleEggPray_Cont["PrayNationReward"] = {}
	tDoubleEggPray_Cont["PrayNationReward"][1] = 3600198
	tDoubleEggPray_Cont["PrayNationReward"][2] = 3600199
	tDoubleEggPray_Cont["PrayNationReward"][3] = 3600200
	tDoubleEggPray_Cont["PrayNationReward"][4] = 3600201

-- 活动时间
local tDoubleEggPray_ActivityTime = {}
	tDoubleEggPray_ActivityTime["ActivityTime"] = tActivityTime["GlobalChristmas"]["ActivityTime"]

-- 记录LOG
local tDoubleEggPray_Log = {}
	-- 删除物品LOG
	tDoubleEggPray_Log["Del"] = "0,0,%d,%d,12001739,2,0,0"
	-- 开始祈福LOG
	tDoubleEggPray_Log["Pray"] = {}
	tDoubleEggPray_Log["Pray"][1] = "0,0,0,0,12001739,4[1][%d],0,0"
	tDoubleEggPray_Log["Pray"][2] = "0,0,0,0,12001739,4[2][%d],0,0"
	tDoubleEggPray_Log["Pray"][3] = "0,0,0,0,12001739,4[3][%d],0,0"
	-- 祈福奖励LOG
	tDoubleEggPray_Log["PrayReward"] = "0,0,0,0,12001739,2,%d,%d"


	--隔天清零掩码
local tDoubleEggPray_Stc = {}
	tDoubleEggPray_Stc[101] = {}
	tDoubleEggPray_Stc[101]["EventType"] = 210
	tDoubleEggPray_Stc[101]["DataType"] = 50

--奖励模板
local tDoubleEggPray_Reward = {}
	-- ===发送弹幕奖励第1次
	-- ===索引:tDoubleEggPray_Reward[1]
	tDoubleEggPray_Reward[1] = {}
	tDoubleEggPray_Reward[1]["ItemChanceSum"] = 10000
	tDoubleEggPray_Reward[1]["LogId"] = 12001739
	-- 中文纪念品 - 25%
	tDoubleEggPray_Reward[1][1] = {}
	tDoubleEggPray_Reward[1][1]["RandomItemChanceType"] = 2
	tDoubleEggPray_Reward[1][1]["ItemChance"] = 2500
	tDoubleEggPray_Reward[1][1]["RewardItem"] = {}
	tDoubleEggPray_Reward[1][1]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[1][1]["RewardItem"][1]["Id"] = 3600198 --  3600198 【库里没有该物品】, 【表格】中文纪念品
	tDoubleEggPray_Reward[1][1]["RewardItem"][1]["Attr"] = "0 3" --  3600198 【库里没有该物品】*3
	tDoubleEggPray_Reward[1][1]["RewardEffect"] = {}
	tDoubleEggPray_Reward[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 英文纪念品 - 25%
	tDoubleEggPray_Reward[1][2] = {}
	tDoubleEggPray_Reward[1][2]["RandomItemChanceType"] = 2
	tDoubleEggPray_Reward[1][2]["ItemChance"] = 2500
	tDoubleEggPray_Reward[1][2]["RewardItem"] = {}
	tDoubleEggPray_Reward[1][2]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[1][2]["RewardItem"][1]["Id"] = 3600199 --  3600199 【库里没有该物品】, 【表格】英文纪念品
	tDoubleEggPray_Reward[1][2]["RewardItem"][1]["Attr"] = "0 3" --  3600199 【库里没有该物品】*3
	tDoubleEggPray_Reward[1][2]["RewardEffect"] = {}
	tDoubleEggPray_Reward[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 西语纪念品 - 25%
	tDoubleEggPray_Reward[1][3] = {}
	tDoubleEggPray_Reward[1][3]["RandomItemChanceType"] = 2
	tDoubleEggPray_Reward[1][3]["ItemChance"] = 2500
	tDoubleEggPray_Reward[1][3]["RewardItem"] = {}
	tDoubleEggPray_Reward[1][3]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[1][3]["RewardItem"][1]["Id"] = 3600200 --  3600200 【库里没有该物品】, 【表格】西语纪念品
	tDoubleEggPray_Reward[1][3]["RewardItem"][1]["Attr"] = "0 3" --  3600200 【库里没有该物品】*3
	tDoubleEggPray_Reward[1][3]["RewardEffect"] = {}
	tDoubleEggPray_Reward[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 阿语纪念品 - 25%
	tDoubleEggPray_Reward[1][4] = {}
	tDoubleEggPray_Reward[1][4]["RandomItemChanceType"] = 2
	tDoubleEggPray_Reward[1][4]["ItemChance"] = 2500
	tDoubleEggPray_Reward[1][4]["RewardItem"] = {}
	tDoubleEggPray_Reward[1][4]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[1][4]["RewardItem"][1]["Id"] = 3600201 --  3600201 【库里没有该物品】, 【表格】阿语纪念品
	tDoubleEggPray_Reward[1][4]["RewardItem"][1]["Attr"] = "0 3" --  3600201 【库里没有该物品】*3
	tDoubleEggPray_Reward[1][4]["RewardEffect"] = {}
	tDoubleEggPray_Reward[1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 惊喜礼包-- 【自身概率】 - 30%
	tDoubleEggPray_Reward[1][5] = {}
	tDoubleEggPray_Reward[1][5]["RandomItemChanceType"] = 3
	tDoubleEggPray_Reward[1][5]["ItemSelfChanceSum"] = 10000
	tDoubleEggPray_Reward[1][5]["ItemChance"] = 3000
	tDoubleEggPray_Reward[1][5]["RewardItem"] = {}
	tDoubleEggPray_Reward[1][5]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[1][5]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】惊喜礼包
	tDoubleEggPray_Reward[1][5]["RewardItem"][1]["Attr"] = "0 1" --  3600197 【库里没有该物品】*1
	tDoubleEggPray_Reward[1][5]["RewardEffect"] = {}
	tDoubleEggPray_Reward[1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[1][5]["RewardEffect"]["Effect"] = "angelwing"


	tDoubleEggPray_Reward[2] = {}
	-- ===发送弹幕奖励第2次
	-- ===索引:tDoubleEggPray_Reward[2]
	tDoubleEggPray_Reward[2]["ItemChanceSum"] = 10000
	tDoubleEggPray_Reward[2]["LogId"] = 12001739
	-- 中文纪念品 - 25%
	tDoubleEggPray_Reward[2][1] = {}
	tDoubleEggPray_Reward[2][1]["RandomItemChanceType"] = 2
	tDoubleEggPray_Reward[2][1]["ItemChance"] = 2500
	tDoubleEggPray_Reward[2][1]["RewardItem"] = {}
	tDoubleEggPray_Reward[2][1]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[2][1]["RewardItem"][1]["Id"] = 3600198 --  3600198 【库里没有该物品】, 【表格】中文纪念品
	tDoubleEggPray_Reward[2][1]["RewardItem"][1]["Attr"] = "0 3" --  3600198 【库里没有该物品】*3
	tDoubleEggPray_Reward[2][1]["RewardEffect"] = {}
	tDoubleEggPray_Reward[2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 英文纪念品 - 25%
	tDoubleEggPray_Reward[2][2] = {}
	tDoubleEggPray_Reward[2][2]["RandomItemChanceType"] = 2
	tDoubleEggPray_Reward[2][2]["ItemChance"] = 2500
	tDoubleEggPray_Reward[2][2]["RewardItem"] = {}
	tDoubleEggPray_Reward[2][2]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[2][2]["RewardItem"][1]["Id"] = 3600199 --  3600199 【库里没有该物品】, 【表格】英文纪念品
	tDoubleEggPray_Reward[2][2]["RewardItem"][1]["Attr"] = "0 3" --  3600199 【库里没有该物品】*3
	tDoubleEggPray_Reward[2][2]["RewardEffect"] = {}
	tDoubleEggPray_Reward[2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 西语纪念品 - 25%
	tDoubleEggPray_Reward[2][3] = {}
	tDoubleEggPray_Reward[2][3]["RandomItemChanceType"] = 2
	tDoubleEggPray_Reward[2][3]["ItemChance"] = 2500
	tDoubleEggPray_Reward[2][3]["RewardItem"] = {}
	tDoubleEggPray_Reward[2][3]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[2][3]["RewardItem"][1]["Id"] = 3600200 --  3600200 【库里没有该物品】, 【表格】西语纪念品
	tDoubleEggPray_Reward[2][3]["RewardItem"][1]["Attr"] = "0 3" --  3600200 【库里没有该物品】*3
	tDoubleEggPray_Reward[2][3]["RewardEffect"] = {}
	tDoubleEggPray_Reward[2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 阿语纪念品 - 25%
	tDoubleEggPray_Reward[2][4] = {}
	tDoubleEggPray_Reward[2][4]["RandomItemChanceType"] = 2
	tDoubleEggPray_Reward[2][4]["ItemChance"] = 2500
	tDoubleEggPray_Reward[2][4]["RewardItem"] = {}
	tDoubleEggPray_Reward[2][4]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[2][4]["RewardItem"][1]["Id"] = 3600201 --  3600201 【库里没有该物品】, 【表格】阿语纪念品
	tDoubleEggPray_Reward[2][4]["RewardItem"][1]["Attr"] = "0 3" --  3600201 【库里没有该物品】*3
	tDoubleEggPray_Reward[2][4]["RewardEffect"] = {}
	tDoubleEggPray_Reward[2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 惊喜礼包-- 【自身概率】 - 60%
	tDoubleEggPray_Reward[2][5] = {}
	tDoubleEggPray_Reward[2][5]["RandomItemChanceType"] = 3
	tDoubleEggPray_Reward[2][5]["ItemSelfChanceSum"] = 10000
	tDoubleEggPray_Reward[2][5]["ItemChance"] = 6000
	tDoubleEggPray_Reward[2][5]["RewardItem"] = {}
	tDoubleEggPray_Reward[2][5]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[2][5]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】惊喜礼包
	tDoubleEggPray_Reward[2][5]["RewardItem"][1]["Attr"] = "0 1" --  3600197 【库里没有该物品】*1
	tDoubleEggPray_Reward[2][5]["RewardEffect"] = {}
	tDoubleEggPray_Reward[2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[2][5]["RewardEffect"]["Effect"] = "angelwing"


	tDoubleEggPray_Reward[3] = {}
	-- ===发送弹幕奖励第3次
	-- ===索引:tDoubleEggPray_Reward[3]
	tDoubleEggPray_Reward[3]["ItemChanceSum"] = 10000
	tDoubleEggPray_Reward[3]["LogId"] = 12001739
	-- 中文纪念品 - 25%
	tDoubleEggPray_Reward[3][1] = {}
	tDoubleEggPray_Reward[3][1]["RandomItemChanceType"] = 2
	tDoubleEggPray_Reward[3][1]["ItemChance"] = 2500
	tDoubleEggPray_Reward[3][1]["RewardItem"] = {}
	tDoubleEggPray_Reward[3][1]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[3][1]["RewardItem"][1]["Id"] = 3600198 --  3600198 【库里没有该物品】, 【表格】中文纪念品
	tDoubleEggPray_Reward[3][1]["RewardItem"][1]["Attr"] = "0 3" --  3600198 【库里没有该物品】*3
	tDoubleEggPray_Reward[3][1]["RewardEffect"] = {}
	tDoubleEggPray_Reward[3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 英文纪念品 - 25%
	tDoubleEggPray_Reward[3][2] = {}
	tDoubleEggPray_Reward[3][2]["RandomItemChanceType"] = 2
	tDoubleEggPray_Reward[3][2]["ItemChance"] = 2500
	tDoubleEggPray_Reward[3][2]["RewardItem"] = {}
	tDoubleEggPray_Reward[3][2]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[3][2]["RewardItem"][1]["Id"] = 3600199 --  3600199 【库里没有该物品】, 【表格】英文纪念品
	tDoubleEggPray_Reward[3][2]["RewardItem"][1]["Attr"] = "0 3" --  3600199 【库里没有该物品】*3
	tDoubleEggPray_Reward[3][2]["RewardEffect"] = {}
	tDoubleEggPray_Reward[3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 西语纪念品 - 25%
	tDoubleEggPray_Reward[3][3] = {}
	tDoubleEggPray_Reward[3][3]["RandomItemChanceType"] = 2
	tDoubleEggPray_Reward[3][3]["ItemChance"] = 2500
	tDoubleEggPray_Reward[3][3]["RewardItem"] = {}
	tDoubleEggPray_Reward[3][3]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[3][3]["RewardItem"][1]["Id"] = 3600200 --  3600200 【库里没有该物品】, 【表格】西语纪念品
	tDoubleEggPray_Reward[3][3]["RewardItem"][1]["Attr"] = "0 3" --  3600200 【库里没有该物品】*3
	tDoubleEggPray_Reward[3][3]["RewardEffect"] = {}
	tDoubleEggPray_Reward[3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 阿语纪念品 - 25%
	tDoubleEggPray_Reward[3][4] = {}
	tDoubleEggPray_Reward[3][4]["RandomItemChanceType"] = 2
	tDoubleEggPray_Reward[3][4]["ItemChance"] = 2500
	tDoubleEggPray_Reward[3][4]["RewardItem"] = {}
	tDoubleEggPray_Reward[3][4]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[3][4]["RewardItem"][1]["Id"] = 3600201 --  3600201 【库里没有该物品】, 【表格】阿语纪念品
	tDoubleEggPray_Reward[3][4]["RewardItem"][1]["Attr"] = "0 3" --  3600201 【库里没有该物品】*3
	tDoubleEggPray_Reward[3][4]["RewardEffect"] = {}
	tDoubleEggPray_Reward[3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[3][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 惊喜礼包-- 【自身概率】 - 100%
	tDoubleEggPray_Reward[3][5] = {}
	tDoubleEggPray_Reward[3][5]["RandomItemChanceType"] = 3
	tDoubleEggPray_Reward[3][5]["ItemSelfChanceSum"] = 10000
	tDoubleEggPray_Reward[3][5]["ItemChance"] = 10000
	tDoubleEggPray_Reward[3][5]["RewardItem"] = {}
	tDoubleEggPray_Reward[3][5]["RewardItem"][1] = {}
	tDoubleEggPray_Reward[3][5]["RewardItem"][1]["Id"] = 3600197 --  3600197 【库里没有该物品】, 【表格】惊喜礼包
	tDoubleEggPray_Reward[3][5]["RewardItem"][1]["Attr"] = "0 1" --  3600197 【库里没有该物品】*1
	tDoubleEggPray_Reward[3][5]["RewardEffect"] = {}
	tDoubleEggPray_Reward[3][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggPray_Reward[3][5]["RewardEffect"]["Effect"] = "angelwing"



---------------------------------------------逻辑模块---------------------------------------------
--寻路
function DoubleEggPray_Where(nNpcId)
	--获取玩家和NPC的地图ID
	local nDoubleEggPray_UserId = Get_UserId()
	local nDoubleEggPray_NpcMap = Get_NpcMapID(nNpcId)
	local nDoubleEggPray_NowMapId = Get_UserMapId(nDoubleEggPray_UserId)

	--判断是否在一张地图
	if nDoubleEggPray_NowMapId == nDoubleEggPray_NpcMap then
		NpcPosition_PathFind(nNpcId)
		return true
	else
		return false
	end
end

--寻找圣诞女神
function DoubleEggPray_FindChristmas(nNpcId)
	local nDoubleEggPray_ChgMapNPCId = tDoubleEggPray_Cont["ChgMapNPCId"][nNpcId]

	--寻路到圣诞女神
	NpcPosition_PathFind(nDoubleEggPray_ChgMapNPCId)
end

-- 发送祝福
function DoubleEggPray_SendPray(nDoubleEggPray_Choose)
	local nDoubleEggPray_UserId = Get_UserId()
	local nDoubleEggPray_TaskId = tDoubleEggPray_Cont["TaskId"]
	local nDoubleEggPray_Nation = User_ChkLanguage(nDoubleEggPray_UserId) or 1

	--判断任务存在
	if not Task_ChkTaskDetail(nDoubleEggPray_TaskId) then
		Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nDoubleEggPray_Nation]["TaskFull"],nil,nil,nDoubleEggPray_UserId)
		return
	end

	local nDoubleEggPray_Data = Get_TaskDetailData5(nDoubleEggPray_TaskId, nDoubleEggPray_UserId) or 0
	local nDoubleEggPray_Reward = nDoubleEggPray_Data + 1

	--判断时间过去5秒
	if not Task_DetailInterval(nDoubleEggPray_TaskId, 5, 0,nDoubleEggPray_UserId) then
		Sys_MsgBox(tDoubleEggPray_Text[nDoubleEggPray_Nation]["NoOneMinute"],nil,nil,nDoubleEggPray_UserId)
		User_TalkChannel2005(tDoubleEggPray_Text[nDoubleEggPray_Nation]["NoOneMinute"],nDoubleEggPray_UserId)
		return
	end

	-- 判断背包空间
	local nDoubleEggPray_Space = RewardTemplate_GetRandomSpace(tDoubleEggPray_Reward, nDoubleEggPray_Reward)
	if not User_CheckLeftSpace(nDoubleEggPray_Space) then
		Sys_MsgBox(string.format(tDoubleEggPray_Text[nDoubleEggPray_Nation]["NoSpace"],nDoubleEggPray_Space),nil,nil,nDoubleEggPray_UserId)
		User_TalkChannel2005(string.format(tDoubleEggPray_Text[nDoubleEggPray_Nation]["NoSpace"],nDoubleEggPray_Space),nDoubleEggPray_UserId)
		return
	end

	-- 读条祈福
	local nDoubleEggPray_Secs = tDoubleEggPray_Cont["Secs"]
	local sDoubleEggPray_Content = tDoubleEggPray_Text[nDoubleEggPray_Nation]["SetExplore"]
	local nDoubleEggPray_ActionId = tDoubleEggPray_Cont["ActionId"]
	local sDoubleEggPray_Func = "DoubleEggPray_SetExplore</N>"..nDoubleEggPray_TaskId.."</N>"..nDoubleEggPray_Nation.."</N>"..nDoubleEggPray_Data.."</N>"..nDoubleEggPray_Reward.."</N>"..nDoubleEggPray_Choose.."</N>"..nDoubleEggPray_UserId
	User_SetExplore(nDoubleEggPray_Secs,sDoubleEggPray_Content,nDoubleEggPray_ActionId,sDoubleEggPray_Func,nil,nDoubleEggPray_UserId)
end

-- 读条祈福
function DoubleEggPray_SetExplore(nDoubleEggPray_TaskId,nDoubleEggPray_Nation,nDoubleEggPray_Data,nDoubleEggPray_Reward,nDoubleEggPray_Choose,nDoubleEggPray_NowUserId)
	local nDoubleEggPray_UserId = nDoubleEggPray_NowUserId or Get_UserId()

	--打时间戳
	local nDoubleEggPray_Now = os.time()
	if not Task_SetTaskDetailData7(nDoubleEggPray_TaskId,nDoubleEggPray_Now,nDoubleEggPray_UserId) then
		return
	end

	--烟花光效
	User_EffectAdd("self",tDoubleEggPray_Cont["PrayEffect"][1],nDoubleEggPray_UserId)
	User_EffectAdd("self",tDoubleEggPray_Cont["PrayEffect"][1],nDoubleEggPray_UserId)

	--祝福语
	local sDoubleEggPray_Text = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text1"..nDoubleEggPray_Choose]
	--发送祝福
	-- if User_IsCross(nDoubleEggPray_UserId) then
		-- Sys_BarrageToAllServer(sDoubleEggPray_Text,nil,nil,20)
	-- else
		-- Sys_BarrageToHomeServer(sDoubleEggPray_Text,nil,nil,20)
	-- end
	Sys_SaveActionFestivalLog(string.format(tDoubleEggPray_Log["Pray"][nDoubleEggPray_Data + 1],nDoubleEggPray_Nation),nDoubleEggPray_UserId)
	DoubleEggPray_GetPrayReward(nDoubleEggPray_TaskId,nDoubleEggPray_Nation,nDoubleEggPray_Data,nDoubleEggPray_Reward,nDoubleEggPray_UserId)
end

-- 领取奖励
function DoubleEggPray_GetPrayReward(nDoubleEggPray_TaskId,nDoubleEggPray_Nation,nDoubleEggPray_Data,nDoubleEggPray_Reward,nDoubleEggPray_NowUserId)
	local nDoubleEggPray_UserId = nDoubleEggPray_NowUserId or Get_UserId()
	local sDoubleEggPray_UserName = Get_UserName(nDoubleEggPray_UserId)
	local nDoubleEggPray_MapId = Get_UserMapId(nDoubleEggPray_UserId)
	local nDoubleEggPray_MainNPCId = tDoubleEggPray_Cont["AllMapNPCId"][nDoubleEggPray_MapId]

	--领奖次数+1
	if not Task_SetTaskDetailData5(nDoubleEggPray_TaskId,nDoubleEggPray_Data + 1, nDoubleEggPray_UserId) then
		return
	end

	--任务面板打掩码
	if not Task_SetTaskDetailData3(tDoubleEggPray_Cont["MainTaskId"],nDoubleEggPray_Data + 1,nDoubleEggPray_UserId) then
		return
	end

	local tDoubleEggPray_NewReward,sDoubleEggPray_RewardStr = RewardTemplate_RandomReward(tDoubleEggPray_Reward, nDoubleEggPray_Reward, nDoubleEggPray_UserId)
	-- if sDoubleEggPray_RewardStr ~= nil and sDoubleEggPray_RewardStr ~= "" then
		--全服通告&提示
		-- if User_IsCross(nDoubleEggPray_UserId) then
			-- Sys_UpperLeftCornerTalkMsg(1,string.format(tDoubleEggPray_Text[nDoubleEggPray_Nation]["Broadcast"],sDoubleEggPray_UserName,sDoubleEggPray_RewardStr))
		-- else
			-- Sys_SystemBroadcast(string.format(tDoubleEggPray_Text[nDoubleEggPray_Nation]["Broadcast"],sDoubleEggPray_UserName,sDoubleEggPray_RewardStr))
		-- end
	-- end

	--判断祈福次数
	if nDoubleEggPray_Data <= 1 then
		--祝福发出去后，要告诉玩家等待5秒就可以再发一次
		Sys_MsgBox(tDoubleEggPray_Text[nDoubleEggPray_Nation]["OneMinute"],nil,nil,nDoubleEggPray_UserId)
		User_TalkChannel2005(tDoubleEggPray_Text[nDoubleEggPray_Nation]["OneMinute"],nDoubleEggPray_UserId)
	else
		--3次祝福发完后，引导玩家回女神处
		Sys_DialogFace(nDoubleEggPray_MainNPCId,nDoubleEggPray_UserId)
		Sys_DialogText(tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text111"],nil,nDoubleEggPray_UserId)
		Sys_DialogText(tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text112"],nil,nDoubleEggPray_UserId)
		Sys_DialogText(tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text131"],nil,nDoubleEggPray_UserId)
		Sys_DialogText(tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text132"],nil,nDoubleEggPray_UserId)
		Sys_DialogOption(tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option121"],"</F>DoubleEggPray_FindChristmas</N>"..nDoubleEggPray_MainNPCId,nil,nDoubleEggPray_UserId)
		Sys_DialogOption(tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option131"],nil,nil,nDoubleEggPray_UserId)
		Sys_DialogEnd(nDoubleEggPray_UserId)
		-- LinkNpcGossipFunc_New(nDoubleEggPray_MainNPCId,"1-2",nil,nil,nDoubleEggPray_UserId)
	end

	--活动任务完成
	GuidePlayers_TaskComplete(nDoubleEggPray_UserId)
end

--清理时间戳
function DoubleEggPray_DDKuaFu()
	local nDoubleEggPray_UserId = Get_UserId()
	local nDoubleEggPray_TaskId = tDoubleEggPray_Cont["TaskId"]
	local nDoubleEggPray_Nation = User_ChkLanguage(nDoubleEggPray_UserId) or 1

	--判断任务存在
	if not Task_ChkTaskDetail(nDoubleEggPray_TaskId) then
		Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nDoubleEggPray_Nation]["TaskFull"],nil,nil,nDoubleEggPray_UserId)
		return
	end

	--清理时间戳
	Task_SetTaskDetailData7(nDoubleEggPray_TaskId,0,nDoubleEggPray_UserId)
end

----进入跨国
function DoubleEggPray_GotMulMap()
	-- 自动接任务&隔天重置
	DoubleEggPray_Login()

	-- local nDoubleEggPray_UserId = Get_UserId()
	-- local nDoubleEggPray_TaskId = tDoubleEggPray_Cont["TaskId"]

	--获取国家存入taskid中
	-- local nGlobal = tDoubleEggPray_Cont["GlobalId"]
	-- local nFlag = Get_SysDynaGlobalData0(nGlobal)
	-- Task_SetTaskDetailData2(nDoubleEggPray_TaskId,nFlag) 
	
	--记录玩家本服userid
	-- Task_SetTaskDetailData4(nDoubleEggPray_TaskId,nDoubleEggPray_UserId)
end

--上线触发
function DoubleEggPray_Login()
	local nDoubleEggPray_UserId = Get_UserId()
	local nDoubleEggPray_TaskId = tDoubleEggPray_Cont["TaskId"]
	local nDoubleEggPray_Event = tDoubleEggPray_Stc[101]["EventType"]
	local nDoubleEggPray_Type = tDoubleEggPray_Stc[101]["DataType"]

	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"]) then
		if Task_ChkTaskDetail(nDoubleEggPray_TaskId) then
			Task_DelTaskDetail(nDoubleEggPray_TaskId)
		end
		return
	end

	--判断等级
	local nLevel = tDoubleEggPray_Cont["Level"]
	local nMetempsychosis = tDoubleEggPray_Cont["Metempsychosis"]

	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nDoubleEggPray_UserId) then
		return
	end
	
	--未接受任务则自动接任务
	if not Task_ChkTaskDetail(nDoubleEggPray_TaskId) then
		Task_AddTaskDetail(nDoubleEggPray_TaskId)
		Task_SetStcTimestamp(nDoubleEggPray_Event,nDoubleEggPray_Type,0,nDoubleEggPray_UserId)
		--播放光效
		User_EffectAdd("self",tDoubleEggPray_Cont["TaskEffect"])
	else
		--隔天重置掩码
		DoubleEggPray_CleanNextDay()
	end
end

-- 隔天重置task
function DoubleEggPray_CleanNextDay()
	local nDoubleEggPray_UserId = Get_UserId()
	local nDoubleEggPray_TaskId = tDoubleEggPray_Cont["TaskId"]
	local nDoubleEggPray_Event = tDoubleEggPray_Stc[101]["EventType"]
	local nDoubleEggPray_Type = tDoubleEggPray_Stc[101]["DataType"]

	-- 判断隔天
	if Task_StcInterval(nDoubleEggPray_Event,nDoubleEggPray_Type,1,4) then
		Task_SetStatistic(nDoubleEggPray_Event,nDoubleEggPray_Type,1,1,nDoubleEggPray_UserId)
		Task_SetStcTimestamp(nDoubleEggPray_Event,nDoubleEggPray_Type,0,nDoubleEggPray_UserId)
		Task_SetTaskDetailData5(nDoubleEggPray_TaskId,0, nDoubleEggPray_UserId)
		Task_SetTaskDetailData7(nDoubleEggPray_TaskId,0, nDoubleEggPray_UserId)
	end
end

-- 玩家回到本服
function DoubleEggPray_ChgMap()
	local nDoubleEggPray_UserId = Get_UserId()

	--回到玩家所属服务器
	Sys_ExitOS(nDoubleEggPray_UserId)
end

--获取今日祈福次数
function DoubleEggPray_GetPrayNum()
	local nDoubleEggPray_UserId = Get_UserId()
	local nDoubleEggPray_TaskId = tDoubleEggPray_Cont["TaskId"]
	local nDoubleEggPray_Nation = User_ChkLanguage(nDoubleEggPray_UserId) or 1

	--判断任务存在
	if not Task_ChkTaskDetail(nDoubleEggPray_TaskId) then
		Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nDoubleEggPray_Nation]["TaskFull"],nil,nil,nDoubleEggPray_UserId)
		return 0
	end

	local nDoubleEggPray_Data = Get_TaskDetailData5(nDoubleEggPray_TaskId, nDoubleEggPray_UserId) or 0

	return nDoubleEggPray_Data
end

--获取掩码值
function DoubleEggPray_GetStcValue(nDoubleEggPray_Index,nDoubleEggPray_UserId)
	local nDoubleEggPray_Event = tDoubleEggPray_Stc[nDoubleEggPray_Index]["EventType"]
	local nDoubleEggPray_Type = tDoubleEggPray_Stc[nDoubleEggPray_Index]["DataType"]
	local nDoubleEggPray_Data = Get_UserStatisticValue(nDoubleEggPray_Event,nDoubleEggPray_Type,nDoubleEggPray_UserId)

	return nDoubleEggPray_Data
end

--设置掩码值（定值）
function DoubleEggPray_SetStcValue(nDoubleEggPray_Index,nDoubleEggPray_Data,nDoubleEggPray_UserId)
	local nDoubleEggPray_Event = tDoubleEggPray_Stc[nDoubleEggPray_Index]["EventType"]
	local nDoubleEggPray_Type = tDoubleEggPray_Stc[nDoubleEggPray_Index]["DataType"]

	--打掩码、时间戳
	if Task_SetStatistic(nDoubleEggPray_Event,nDoubleEggPray_Type,nDoubleEggPray_Data,1,nDoubleEggPray_UserId) then 
		Task_SetStcTimestamp(nDoubleEggPray_Event,nDoubleEggPray_Type,0,nDoubleEggPray_UserId)
		return true
	else
		return false
	end
end

--设置掩码值（增加）
function DoubleEggPray_AddStatistic(nDoubleEggPray_Index,nDoubleEggPray_Data,nDoubleEggPray_UserId)
	local nDoubleEggPray_Event = tDoubleEggPray_Stc[nDoubleEggPray_Index]["EventType"]
	local nDoubleEggPray_Type = tDoubleEggPray_Stc[nDoubleEggPray_Index]["DataType"]

	--打掩码、时间戳
	if Task_AddStatistic(nDoubleEggPray_Event,nDoubleEggPray_Type,nDoubleEggPray_Data,1,nDoubleEggPray_UserId) then 
		Task_SetStcTimestamp(nDoubleEggPray_Event,nDoubleEggPray_Type,0,nDoubleEggPray_UserId)
		return true
	else
		return false
	end
end

-- 隔天重置
function DoubleEggPray_ClearStcInterval(nDoubleEggPray_Index,nDoubleEggPray_UserId)
	local nDoubleEggPray_Event = tDoubleEggPray_Stc[nDoubleEggPray_Index]["EventType"]
	local nDoubleEggPray_Type = tDoubleEggPray_Stc[nDoubleEggPray_Index]["DataType"]

	--判断隔天
	if Task_StcInterval(nDoubleEggPray_Event,nDoubleEggPray_Type,1,4,nDoubleEggPray_UserId) then
		Task_SetStatistic(nDoubleEggPray_Event,nDoubleEggPray_Type,0,1,nDoubleEggPray_UserId)
		Task_SetStcTimestamp(nDoubleEggPray_Event,nDoubleEggPray_Type,0,nDoubleEggPray_UserId)
		return true
	else
		return false
	end
end

--判断背包空间
function DoubleEggPray_CheckLeftSpace(nDoubleEggPray_Index,nDoubleEggPray_UserId)
	if not User_CheckLeftSpace(nDoubleEggPray_Index,nDoubleEggPray_UserId) then
		Sys_MsgBox(string.format(tDoubleEggPray_Text["NoSpace"],nDoubleEggPray_Index),nil,nil,nDoubleEggPray_UserId)
		User_TalkChannel2005(string.format(tDoubleEggPray_Text["NoSpace"],nDoubleEggPray_Index),nDoubleEggPray_UserId)
		return false
	else
		return true
	end
end


---------------------------------------------NPC模块---------------------------------------------
--启明星
tNpcFace[2205] = 2672
for k,v in pairs(tDoubleEggPray_Cont["MainNPCId"]) do
	tNpcGossip[v] = tNpcGossip[v] or DefaultNpc:new{}
	tNpcGossip[v]["DialogueText"] = tDoubleEggPray_Text[v]
	tNpcGossip[v]["OptionHidden"] = 1
	
	tNpcGossip[v]["Text1-1"] = {111,112,113,114,115,116,117,119,121,122}
	tNpcGossip[v]["tOption1-1"] = {111,112,113,114,115,116,117,118,121}
	tNpcGossip[v]["ChkFunc1-1"] = function()
		local nDoubleEggPray_UserId = Get_UserId()
		local nDoubleEggPray_TaskId = tDoubleEggPray_Cont["TaskId"]
		local nDoubleEggPray_Nation = User_ChkLanguage(nDoubleEggPray_UserId) or 1
		
		--判断任务存在
		if not Task_ChkTaskDetail(nDoubleEggPray_TaskId) then
			Sys_MsgBox(tMakeSnowman_Text["SystemTips"][nDoubleEggPray_Nation]["TaskFull"],nil,nil,nDoubleEggPray_UserId)
			return false
		end
		
		--本服隔天清零
		if v == tDoubleEggPray_Cont["MainNPCId"][1] then 
			DoubleEggPray_Login()
			GuidePlayers_TaskClear(nDoubleEggPray_UserId)
		end
		
		--未送满祝福主对白
		tNpcGossip[v]["Text111"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text111"]
		tNpcGossip[v]["Text112"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text112"]
		tNpcGossip[v]["Text113"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text113"]
		tNpcGossip[v]["Text114"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text114"]
		tNpcGossip[v]["Text115"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text115"]
		tNpcGossip[v]["Text116"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text116"]
		tNpcGossip[v]["Text117"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text117"]
		tNpcGossip[v]["Text118"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text118"]
		tNpcGossip[v]["Text119"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text119"]
		tNpcGossip[v]["Option111"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option111"]
		tNpcGossip[v]["Option112"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option112"]
		tNpcGossip[v]["Option113"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option113"]
		tNpcGossip[v]["Option114"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option114"]
		tNpcGossip[v]["Option115"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option115"]
		tNpcGossip[v]["Option116"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option116"]
		tNpcGossip[v]["Option117"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option117"]
		tNpcGossip[v]["Option118"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option118"]
		--每日送满3次祝福后主对白
		tNpcGossip[v]["Text121"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text121"]
		tNpcGossip[v]["Text122"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text122"]
		tNpcGossip[v]["Option121"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option121"]
		
		--判断祈福次数
		if not Task_ChkTaskDetailValue(nDoubleEggPray_TaskId,"5",">=",3,nDoubleEggPray_UserId) then
			--未送满祝福主对白
			tNpcGossip[v]["Text1-1"] = {111,112,113,114,115,116,117,119}
			tNpcGossip[v]["tOption1-1"] = {111,112,113,114,115,116,117,118}
			return true
		else
			--每日送满3次祝福后主对白
			tNpcGossip[v]["Text1-1"] = {111,112,121,122,119}
			tNpcGossip[v]["tOption1-1"] = {121}
			return true
		end
	end
	tNpcGossip[v]["OptionFunc111"] = "DoubleEggPray_SendPray</N>111"
	tNpcGossip[v]["OptionFunc112"] = "DoubleEggPray_SendPray</N>112"
	tNpcGossip[v]["OptionFunc113"] = "DoubleEggPray_SendPray</N>113"
	tNpcGossip[v]["OptionFunc114"] = "DoubleEggPray_SendPray</N>114"
	tNpcGossip[v]["OptionFunc115"] = "DoubleEggPray_SendPray</N>115"
	tNpcGossip[v]["OptionFunc116"] = "DoubleEggPray_SendPray</N>116"
	tNpcGossip[v]["OptionFunc117"] = "DoubleEggPray_SendPray</N>117"
	tNpcGossip[v]["OptionFunc118"] = "DoubleEggPray_SendPray</N>118"
	
	tNpcGossip[v]["Text1-2"] = {111,112,131,132}
	tNpcGossip[v]["tOption1-2"] = {121,131}
	tNpcGossip[v]["ChkFunc1-2"] = function()
		local nDoubleEggPray_UserId = Get_UserId()
		local nDoubleEggPray_Nation = User_ChkLanguage(nDoubleEggPray_UserId) or 1
		
		tNpcGossip[v]["Text111"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text111"]
		tNpcGossip[v]["Text112"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text112"]
		tNpcGossip[v]["Text131"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text131"]
		tNpcGossip[v]["Text132"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Text132"]
		tNpcGossip[v]["Option121"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option121"]
		tNpcGossip[v]["Option131"] = tDoubleEggPray_Text[nDoubleEggPray_Nation]["Option131"]
		return true
	end
	tNpcGossip[v]["OptionFunc121"] = "DoubleEggPray_FindChristmas</N>"..v
end


---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,DoubleEggPray_Login)

