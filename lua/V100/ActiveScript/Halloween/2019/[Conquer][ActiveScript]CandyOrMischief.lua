------------------------------------------------------------------------------------
--Name： 190926[简体征服][活动脚本]全球万圣节活动
--Creator: 郑飞
--Created: 2019/09/26
------------------------------------------------------------------------------------


--41534 = V100\ActiveScript\Halloween\2019\[Conquer][ActiveScript]CandyOrMischief.lua
--41534 = V100\活动脚本\万圣节\2019\[征服][活动脚本]糖果or恶作剧.lua
--logid:	12001656
-- stc(205,42) 每日本服获得南瓜糕点的数量 （0-10）
-- stc(205,86) 每日跨服获得南瓜糕点的数量 （0-10）
-- stc(206,23 ) 是否接受NPC的任务 1	已接受 2	已完成 （0-2）

--命名前缀：CandyOrMischief_

--------------------------------------数据配置部分--------------------------------------
local tCandyOrMischief_Constant = {}
	--扣除鬼怪糖果的数量
	tCandyOrMischief_Constant["DelCandyNum"] = {}
	--选择给糖果
	tCandyOrMischief_Constant["DelCandyNum"]["Candy"] = 5
	--选择恶作剧
	tCandyOrMischief_Constant["DelCandyNum"]["Mischief"] = 2
	tCandyOrMischief_Constant["CakesLimit"] = {}
	--本服 每日获得南瓜糕点的数量上限
	tCandyOrMischief_Constant["CakesLimit"]["NoCross"] = 20
	--跨服 每日获得南瓜糕点的数量上限
	tCandyOrMischief_Constant["CakesLimit"]["IsCross"] = 30
	--NPC id
	tCandyOrMischief_Constant["NPCId"] = 25010
	--糖果id
	tCandyOrMischief_Constant["CandyId"] = {}
	tCandyOrMischief_Constant["CandyId"]["CN"] = 3600166
	tCandyOrMischief_Constant["CandyId"]["EN"] = 3600167
	
	
local tCandyOrMischief_Stc = {}
	--记录本服每日获得南瓜糕点的数量
	tCandyOrMischief_Stc[1] = {}
	tCandyOrMischief_Stc[1]["EventType"] = 205
	tCandyOrMischief_Stc[1]["DataType"] = 42
	--记录是否进入跨服
	tCandyOrMischief_Stc[2] = {}
	tCandyOrMischief_Stc[2]["EventType"] = 205
	tCandyOrMischief_Stc[2]["DataType"] = 86
	--记录是否接受NPC的任务
	tCandyOrMischief_Stc[3] = {}
	tCandyOrMischief_Stc[3]["EventType"] = 206
	tCandyOrMischief_Stc[3]["DataType"] = 23
	
--记录跨服每日获得南瓜糕点的数量
local tCandyOrMischief_TaskDetail = {}
	tCandyOrMischief_TaskDetail["Reward"] = 35058
	
-- 变身数据表配置
local tCandyOrMischief_Transform = {}
-- 3301362	【叫天鸡】幻化令
	tCandyOrMischief_Transform[1] = {}
	tCandyOrMischief_Transform[1]["Magictype"] = 13170
	tCandyOrMischief_Transform[1]["MagictypeLevel"] = 0
	tCandyOrMischief_Transform[1]["MonsterId"] = 1
	tCandyOrMischief_Transform[1]["Times"] = 300
-- 3301363	【罗罗鸟】幻化令
	tCandyOrMischief_Transform[2] = {}
	tCandyOrMischief_Transform[2]["Magictype"] = 13171
	tCandyOrMischief_Transform[2]["MagictypeLevel"] = 0
	tCandyOrMischief_Transform[2]["MonsterId"] = 3
	tCandyOrMischief_Transform[2]["Times"] = 300
-- 3301365	【翼蛇】幻化令
	tCandyOrMischief_Transform[3] = {}
	tCandyOrMischief_Transform[3]["Magictype"] = 13173
	tCandyOrMischief_Transform[3]["MagictypeLevel"] = 0
	tCandyOrMischief_Transform[3]["MonsterId"] = 6
	tCandyOrMischief_Transform[3]["Times"] = 300
-- 3301368	【蛇人】幻化令
	tCandyOrMischief_Transform[4] = {}
	tCandyOrMischief_Transform[4]["Magictype"] = 13176
	tCandyOrMischief_Transform[4]["MagictypeLevel"] = 0
	tCandyOrMischief_Transform[4]["MonsterId"] = 13
	tCandyOrMischief_Transform[4]["Times"] = 300
-- 3301369	【沙怪】幻化令
	tCandyOrMischief_Transform[5] = {}
	tCandyOrMischief_Transform[5]["Magictype"] = 13177
	tCandyOrMischief_Transform[5]["MagictypeLevel"] = 0
	tCandyOrMischief_Transform[5]["MonsterId"] = 14
	tCandyOrMischief_Transform[5]["Times"] = 300
-- 3301371	【银羽鹰王】幻化令
	tCandyOrMischief_Transform[6] = {}
	tCandyOrMischief_Transform[6]["Magictype"] = 13179
	tCandyOrMischief_Transform[6]["MagictypeLevel"] = 0
	tCandyOrMischief_Transform[6]["MonsterId"] = 19
	tCandyOrMischief_Transform[6]["Times"] = 300
-- 3301372	【湖岛强匪】幻化令
	tCandyOrMischief_Transform[7] = {}
	tCandyOrMischief_Transform[7]["Magictype"] = 13180
	tCandyOrMischief_Transform[7]["MagictypeLevel"] = 0
	tCandyOrMischief_Transform[7]["MonsterId"] = 55
	tCandyOrMischief_Transform[7]["Times"] = 300
-- 3301374	【牛怪】幻化令
	tCandyOrMischief_Transform[8] = {}
	tCandyOrMischief_Transform[8]["Magictype"] = 13182
	tCandyOrMischief_Transform[8]["MagictypeLevel"] = 0
	tCandyOrMischief_Transform[8]["MonsterId"] = 57
	tCandyOrMischief_Transform[8]["Times"] = 300
-- 3301375	【血影红魔】幻化令
	tCandyOrMischief_Transform[9] = {}
	tCandyOrMischief_Transform[9]["Magictype"] = 13183
	tCandyOrMischief_Transform[9]["MagictypeLevel"] = 0
	tCandyOrMischief_Transform[9]["MonsterId"] = 58
	tCandyOrMischief_Transform[9]["Times"] = 300
-- 3301376	【冰凌腾蛇】幻化令
	tCandyOrMischief_Transform[10] = {}
	tCandyOrMischief_Transform[10]["Magictype"] = 13184
	tCandyOrMischief_Transform[10]["MagictypeLevel"] = 0
	tCandyOrMischief_Transform[10]["MonsterId"] = 2411
	tCandyOrMischief_Transform[10]["Times"] = 300
-- 3301377	【冰煞邪刀】幻化令
	tCandyOrMischief_Transform[11] = {}
	tCandyOrMischief_Transform[11]["Magictype"] = 13185
	tCandyOrMischief_Transform[11]["MagictypeLevel"] = 0
	tCandyOrMischief_Transform[11]["MonsterId"] = 2416
	tCandyOrMischief_Transform[11]["Times"] = 300

-----------------------------------奖励配置-------------------------------------------------
local tCandyOrMischief_Reward = {}
	-- ===南瓜糕点
	-- ===索引:tCandyOrMischief_Reward[3313798][1]
	tCandyOrMischief_Reward[3313798] = {}
	tCandyOrMischief_Reward[3313798][1] = {}
	tCandyOrMischief_Reward[3313798][1]["LogId"] = 12001656
	tCandyOrMischief_Reward[3313798][1]["RewardItem"] = {}
	tCandyOrMischief_Reward[3313798][1]["RewardItem"][1] = {}
	tCandyOrMischief_Reward[3313798][1]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tCandyOrMischief_Reward[3313798][1]["RewardItem"][1]["Attr"] = "0 1" -- 南瓜糕点*1
	tCandyOrMischief_Reward[3313798][1]["RewardEffect"] = {}
	tCandyOrMischief_Reward[3313798][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCandyOrMischief_Reward[3313798][1]["RewardEffect"]["Effect"] = "angelwing"


	tCandyOrMischief_Reward[3313798][2] = {}
	-- ===南瓜糕点
	-- ===索引:tCandyOrMischief_Reward[3313798][2]
	tCandyOrMischief_Reward[3313798][2]["LogId"] = 12001656
	tCandyOrMischief_Reward[3313798][2]["RewardItem"] = {}
	tCandyOrMischief_Reward[3313798][2]["RewardItem"][1] = {}
	tCandyOrMischief_Reward[3313798][2]["RewardItem"][1]["Id"] = 3313798 -- 南瓜糕点[3313798][属性:9][叠加:10000][金币:0], 【表格】南瓜糕点
	tCandyOrMischief_Reward[3313798][2]["RewardItem"][1]["Attr"] = "0 2" -- 南瓜糕点*2
	tCandyOrMischief_Reward[3313798][2]["RewardEffect"] = {}
	tCandyOrMischief_Reward[3313798][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCandyOrMischief_Reward[3313798][2]["RewardEffect"]["Effect"] = "angelwing"


	tCandyOrMischief_Reward[3600166] = {}
	-- ===获得[中文]鬼怪糖果
	-- ===索引:tCandyOrMischief_Reward[3600166][1]
	-- ===        
	tCandyOrMischief_Reward[3600166][1] = {}
	tCandyOrMischief_Reward[3600166][1]["LogId"] = 12001656
	tCandyOrMischief_Reward[3600166][1]["RewardItem"] = {}
	tCandyOrMischief_Reward[3600166][1]["RewardItem"][1] = {}
	tCandyOrMischief_Reward[3600166][1]["RewardItem"][1]["Id"] = 3600166 -- 【中文】鬼怪糖果[3600166][属性:137][叠加:1000][金币:0], 【表格】鬼怪糖果
	tCandyOrMischief_Reward[3600166][1]["RewardItem"][1]["Attr"] = "0 3" -- 【中文】鬼怪糖果*3
	tCandyOrMischief_Reward[3600166][1]["RewardEffect"] = {}
	tCandyOrMischief_Reward[3600166][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCandyOrMischief_Reward[3600166][1]["RewardEffect"]["Effect"] = "angelwing"


	tCandyOrMischief_Reward[3600166][2] = {}
	-- ===扣除[中文]鬼怪糖果
	-- ===索引:tCandyOrMischief_Reward[3600166][2]
	-- ===删除:3600166,2
	-- ===        
	tCandyOrMischief_Reward[3600166][2]["LogId"] = 12001656
	tCandyOrMischief_Reward[3600166][2]["DeleteItem"] = {}
	tCandyOrMischief_Reward[3600166][2]["DeleteItem"][1] = {}
	tCandyOrMischief_Reward[3600166][2]["DeleteItem"][1]["Id"] = 3600166 -- 【库】【中文】鬼怪糖果[属性:137]
	tCandyOrMischief_Reward[3600166][2]["DeleteItem"][1]["ItemNum"] = 2
	tCandyOrMischief_Reward[3600166][2]["RewardEffect"] = {}
	tCandyOrMischief_Reward[3600166][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCandyOrMischief_Reward[3600166][2]["RewardEffect"]["Effect"] = "angelwing"


	tCandyOrMischief_Reward[3600166][3] = {}
	-- ===扣除5个[中文]鬼怪糖果
	-- ===索引:tCandyOrMischief_Reward[3600166][3]
	-- ===删除:3600166,5
	-- ===        
	tCandyOrMischief_Reward[3600166][3]["LogId"] = 12001656
	tCandyOrMischief_Reward[3600166][3]["DeleteItem"] = {}
	tCandyOrMischief_Reward[3600166][3]["DeleteItem"][1] = {}
	tCandyOrMischief_Reward[3600166][3]["DeleteItem"][1]["Id"] = 3600166 -- 【库】【中文】鬼怪糖果[属性:137]
	tCandyOrMischief_Reward[3600166][3]["DeleteItem"][1]["ItemNum"] = 5
	tCandyOrMischief_Reward[3600166][3]["RewardEffect"] = {}
	tCandyOrMischief_Reward[3600166][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCandyOrMischief_Reward[3600166][3]["RewardEffect"]["Effect"] = "angelwing"


	tCandyOrMischief_Reward[3600167] = {}
	-- ===获得[英文]鬼怪糖果
	-- ===索引:tCandyOrMischief_Reward[3600167][1]
	-- ===        
	tCandyOrMischief_Reward[3600167][1] = {}
	tCandyOrMischief_Reward[3600167][1]["LogId"] = 12001656
	tCandyOrMischief_Reward[3600167][1]["RewardItem"] = {}
	tCandyOrMischief_Reward[3600167][1]["RewardItem"][1] = {}
	tCandyOrMischief_Reward[3600167][1]["RewardItem"][1]["Id"] = 3600167 -- 【英语】鬼怪糖果[3600167][属性:137][叠加:1000][金币:0], 【表格】鬼怪糖果
	tCandyOrMischief_Reward[3600167][1]["RewardItem"][1]["Attr"] = "0 3" -- 【英语】鬼怪糖果*3
	tCandyOrMischief_Reward[3600167][1]["RewardEffect"] = {}
	tCandyOrMischief_Reward[3600167][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCandyOrMischief_Reward[3600167][1]["RewardEffect"]["Effect"] = "angelwing"


	tCandyOrMischief_Reward[3600167][2] = {}
	-- ===扣除2个[英文]鬼怪糖果
	-- ===索引:tCandyOrMischief_Reward[3600167][2]
	-- ===删除:3600167,2
	-- ===        
	tCandyOrMischief_Reward[3600167][2]["LogId"] = 12001656
	tCandyOrMischief_Reward[3600167][2]["DeleteItem"] = {}
	tCandyOrMischief_Reward[3600167][2]["DeleteItem"][1] = {}
	tCandyOrMischief_Reward[3600167][2]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCandyOrMischief_Reward[3600167][2]["DeleteItem"][1]["ItemNum"] = 2
	tCandyOrMischief_Reward[3600167][2]["RewardEffect"] = {}
	tCandyOrMischief_Reward[3600167][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCandyOrMischief_Reward[3600167][2]["RewardEffect"]["Effect"] = "angelwing"


	tCandyOrMischief_Reward[3600167][3] = {}
	-- ===扣除5个[英文]鬼怪糖果
	-- ===索引:tCandyOrMischief_Reward[3600167][3]
	-- ===删除:3600167,5
	-- ===        
	tCandyOrMischief_Reward[3600167][3]["LogId"] = 12001656
	tCandyOrMischief_Reward[3600167][3]["DeleteItem"] = {}
	tCandyOrMischief_Reward[3600167][3]["DeleteItem"][1] = {}
	tCandyOrMischief_Reward[3600167][3]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:137]
	tCandyOrMischief_Reward[3600167][3]["DeleteItem"][1]["ItemNum"] = 5
	tCandyOrMischief_Reward[3600167][3]["RewardEffect"] = {}
	tCandyOrMischief_Reward[3600167][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCandyOrMischief_Reward[3600167][3]["RewardEffect"]["Effect"] = "angelwing"


	tCandyOrMischief_Reward[3600166][4] = {}
	-- ===获得[中文]鬼怪糖果
	-- ===索引:tCandyOrMischief_Reward[3600166][4]
	-- ===        
	tCandyOrMischief_Reward[3600166][4]["LogId"] = 12001656
	tCandyOrMischief_Reward[3600166][4]["RewardItem"] = {}
	tCandyOrMischief_Reward[3600166][4]["RewardItem"][1] = {}
	tCandyOrMischief_Reward[3600166][4]["RewardItem"][1]["Id"] = 3600166 -- 【中文】鬼怪糖果[3600166][属性:137][叠加:1000][金币:0], 【表格】鬼怪糖果
	tCandyOrMischief_Reward[3600166][4]["RewardItem"][1]["Attr"] = "0 2" -- 【中文】鬼怪糖果*2
	tCandyOrMischief_Reward[3600166][4]["RewardEffect"] = {}
	tCandyOrMischief_Reward[3600166][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCandyOrMischief_Reward[3600166][4]["RewardEffect"]["Effect"] = "angelwing"


	tCandyOrMischief_Reward[3600167][4] = {}
	-- ===获得[英文]鬼怪糖果
	-- ===索引:tCandyOrMischief_Reward[3600167][4]
	-- ===        
	tCandyOrMischief_Reward[3600167][4]["LogId"] = 12001656
	tCandyOrMischief_Reward[3600167][4]["RewardItem"] = {}
	tCandyOrMischief_Reward[3600167][4]["RewardItem"][1] = {}
	tCandyOrMischief_Reward[3600167][4]["RewardItem"][1]["Id"] = 3600167 -- 【英语】鬼怪糖果[3600167][属性:137][叠加:1000][金币:0], 【表格】鬼怪糖果
	tCandyOrMischief_Reward[3600167][4]["RewardItem"][1]["Attr"] = "0 2" -- 【英语】鬼怪糖果*2
	tCandyOrMischief_Reward[3600167][4]["RewardEffect"] = {}
	tCandyOrMischief_Reward[3600167][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCandyOrMischief_Reward[3600167][4]["RewardEffect"]["Effect"] = "angelwing"


	tCandyOrMischief_Reward[3600166][5] = {}
	-- ===获得[中文]鬼怪糖果
	-- ===索引:tCandyOrMischief_Reward[3600166][5]
	-- ===        
	tCandyOrMischief_Reward[3600166][5]["LogId"] = 12001656
	tCandyOrMischief_Reward[3600166][5]["RewardItem"] = {}
	tCandyOrMischief_Reward[3600166][5]["RewardItem"][1] = {}
	tCandyOrMischief_Reward[3600166][5]["RewardItem"][1]["Id"] = 3600166 -- 【中文】鬼怪糖果[3600166][属性:137][叠加:1000][金币:0], 【表格】鬼怪糖果
	tCandyOrMischief_Reward[3600166][5]["RewardItem"][1]["Attr"] = "0 1" -- 【中文】鬼怪糖果*1
	tCandyOrMischief_Reward[3600166][5]["RewardEffect"] = {}
	tCandyOrMischief_Reward[3600166][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCandyOrMischief_Reward[3600166][5]["RewardEffect"]["Effect"] = "angelwing"


	tCandyOrMischief_Reward[3600167][5] = {}
	-- ===获得[英文]鬼怪糖果
	-- ===索引:tCandyOrMischief_Reward[3600167][5]
	-- ===        
	tCandyOrMischief_Reward[3600167][5]["LogId"] = 12001656
	tCandyOrMischief_Reward[3600167][5]["RewardItem"] = {}
	tCandyOrMischief_Reward[3600167][5]["RewardItem"][1] = {}
	tCandyOrMischief_Reward[3600167][5]["RewardItem"][1]["Id"] = 3600167 -- 【英语】鬼怪糖果[3600167][属性:137][叠加:1000][金币:0], 【表格】鬼怪糖果
	tCandyOrMischief_Reward[3600167][5]["RewardItem"][1]["Attr"] = "0 1" -- 【英语】鬼怪糖果*1
	tCandyOrMischief_Reward[3600167][5]["RewardEffect"] = {}
	tCandyOrMischief_Reward[3600167][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCandyOrMischief_Reward[3600167][5]["RewardEffect"]["Effect"] = "angelwing"


--------------------------------------------逻辑部分--------------------------------------------------------------
-- 获取掩码值
function CandyOrMischief_GetStcValue(nIndex,nUserId)
	local nEvent = tCandyOrMischief_Stc[nIndex]["EventType"]
	local nType = tCandyOrMischief_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function CandyOrMischief_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tCandyOrMischief_Stc[nIndex]["EventType"]
	local nType = tCandyOrMischief_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
end

-- stc 隔天重置
function CandyOrMischief_ClearStcInterval(nIndex,nData,nUserId)
	local nEvent = tCandyOrMischief_Stc[nIndex]["EventType"]
	local nType = tCandyOrMischief_Stc[nIndex]["DataType"]
	if nData == nil then
		nData = 0
	end
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,nData,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

-- Taskid 隔天重置
function CandyOrMischief_ClearDetailInterval(nTaskId,nUserId)
	
	if Task_DetailInterval(nTaskId,1,4,nUserId) then
		if Task_DelTaskDetail(nTaskId,nUserId) then
			if not Task_AddTaskDetail(nTaskId,0,nUserId) then
				return false
			end
		end
	end
	
	return true
end

-- 返回本服糖果id
function CandyOrMischief_ReturnCandyId(nUserId)
	-- 获取服务器id
	local nServerId = Get_UserServerId(nUserId)
	local nCandyId = tCandyOrMischief_Constant["CandyId"]["CN"]
	
	-- 判断服务器
	if nServerId < 501 or nServerId > 599 then
		nCandyId = tCandyOrMischief_Constant["CandyId"]["EN"]
	end
	
	return nCandyId
end

-- 判断玩家选择
function CandyOrMischief_Choose(nUserId,nTarget,nMainType,nSubType)
	
	--选择恶作剧
	if nSubType == 1 then
		CandyOrMischief_Mischief(nUserId,nTarget)
	end
	
	--选择给糖果
	if nSubType == 2 then
		CandyOrMischief_Candy(nUserId,nTarget)
	end
end

-- 选择给糖果
function CandyOrMischief_Candy(nUserId,nNowUserId)
	
	-- 获得光效
	User_EffectAdd("self","zf2-e128",nUserId)
	
	local nDataTask = CandyOrMischief_GetStcValue(3,nNowUserId)
	-- 完成南瓜怪杰的任务
	if nDataTask == 1 then
		CandyOrMischief_SetStcValue(3,2,nNowUserId)
		Sys_MsgBox(tCandyOrMischief_Text["TaskFinish"],"CandyOrMischief_Where",nil,nNowUserId)
	end
	
	-- 获取糖果id
	local nCandyIdU = CandyOrMischief_ReturnCandyId(nUserId)
	local nCandyIdNU = CandyOrMischief_ReturnCandyId(nNowUserId)
	
	local nCandyNum = tCandyOrMischief_Constant["DelCandyNum"]["Candy"]
	--获取背包物品数量
	local nNum = Get_CountItemType(nCandyIdU,0,nil,nil,nUserId)
	
	--鬼怪糖果数量不足
	if nNum < nCandyNum then
		CandyOrMischief_Transform(nUserId)
		Sys_MsgBox(string.format(tCandyOrMischief_Text["NoCandy"],nCandyNum),nil,nil,nUserId)
		Sys_MsgBox(tCandyOrMischief_Text["OtherNoCdy"],nil,nil,nNowUserId)
		return 
	end
	
	-- 发起方背包空间不足
	local nSpaceCandy = RewardTemplate_GetRewardSpace(tCandyOrMischief_Reward[nCandyIdU][1],nNowUserId)
	if not User_CheckLeftSpace(nSpaceCandy,nNowUserId) then
		User_TalkChannel2005(tCandyOrMischief_Text["NoSpace"],nNowUserId)
		User_TalkChannel2005(tCandyOrMischief_Text["OtherNoSp"],nUserId)
		return
	end
	
	-- 选择方背包空间不足
	local nUserSpace = RewardTemplate_GetRewardSpace(tCandyOrMischief_Reward[3313798][2],nUserId)
	if not User_CheckLeftSpace(nUserSpace,nUserId) then
		User_TalkChannel2005(tCandyOrMischief_Text["NoSpace"],nUserId)
		User_TalkChannel2005(tCandyOrMischief_Text["OtherNoSp"],nNowUserId)
		return
	end
	
	CandyOrMischief_ClearStcInterval(1,0,nUserId)
	
	local nDataCake = CandyOrMischief_GetStcValue(1,nUserId)
	
	--获取 每日南瓜糕点 上限
	local nCakeLimit = tCandyOrMischief_Constant["CakesLimit"]["NoCross"]
	
	local nTaskId = tCandyOrMischief_TaskDetail["Reward"]
	--判断是否跨服
	if User_IsCross(nUserId) then
		nCakeLimit = tCandyOrMischief_Constant["CakesLimit"]["IsCross"]
		nDataCake = Get_TaskDetailData1(nTaskId, nUserId)
	end
	
	-- 获取玩家姓名
	local sUserName = Get_UserName(nUserId)
	
	-- 选择方 扣除5个鬼怪糖果
	if RewardTemplate_UseItemAndMsg(tCandyOrMischief_Reward[nCandyIdU][3],nUserId) then
		-- 发起方 获得鬼怪糖果*3
		RewardTemplate_UseItemAndMsg(tCandyOrMischief_Reward[nCandyIdU][1],nNowUserId)
		Sys_MsgBox(string.format(tCandyOrMischief_Text["CandyGet"],sUserName,tCandyOrMischief_Text[nCandyIdU],3),nil,nil,nNowUserId)
		
		if nDataCake < nCakeLimit then
			--跨服获得对方语种的鬼怪糖果*1
			if User_IsCross(nUserId) then
				Task_SetTaskDetailData1(nTaskId,nDataCake+1,nUserId)
				RewardTemplate_UseItemAndMsg(tCandyOrMischief_Reward[nCandyIdNU][5],nUserId)
				Sys_MsgBox(string.format(tCandyOrMischief_Text["NewCandy"],nCandyNum,1,tCandyOrMischief_Text[nCandyIdNU]),nil,nil,nUserId)
			else
				CandyOrMischief_SetStcValue(1,nDataCake+2,nUserId)
				if nCakeLimit - nDataCake < 2 then
					--选择方 获得 南瓜糕点*1
					RewardTemplate_UseItemAndMsg(tCandyOrMischief_Reward[3313798][1],nUserId)
					Sys_MsgBox(string.format(tCandyOrMischief_Text["Candy"],nCandyNum,1),nil,nil,nUserId)
					User_TalkChannel2005(string.format(tCandyOrMischief_Text["GetCakesToday"],nDataCake+1),nUserId)
					User_TalkChannel2005(string.format(tCandyOrMischief_Text["Cakes"],1),nUserId)
				else
					--选择方 获得 南瓜糕点*2
					RewardTemplate_UseItemAndMsg(tCandyOrMischief_Reward[3313798][2],nUserId)
					Sys_MsgBox(string.format(tCandyOrMischief_Text["Candy"],nCandyNum,2),nil,nil,nUserId)
					User_TalkChannel2005(string.format(tCandyOrMischief_Text["GetCakesToday"],nDataCake+2),nUserId)
					User_TalkChannel2005(string.format(tCandyOrMischief_Text["Cakes"],2),nUserId)
				end
			end
		else
			Sys_MsgBox(string.format(tCandyOrMischief_Text["SendCandy"],nCandyNum),nil,nil,nUserId)
			if not User_IsCross(nUserId) then
				User_TalkChannel2005(tCandyOrMischief_Text["Awarded"],nUserId)
			end
		end
		
	end
	
end

-- 选择恶作剧
function CandyOrMischief_Mischief(nUserId,nNowUserId)
	
	-- 获得光效
	User_EffectAdd("self","zf2-e128",nUserId)
	
	local nDataTask = CandyOrMischief_GetStcValue(3,nNowUserId)
	-- 完成南瓜怪杰的任务
	if nDataTask == 1 then
		CandyOrMischief_SetStcValue(3,2,nNowUserId)
		Sys_MsgBox(tCandyOrMischief_Text["TaskFinish"],"CandyOrMischief_Where",nil,nNowUserId)
	end
	
	-- 获取糖果id
	local nCandyIdU = CandyOrMischief_ReturnCandyId(nUserId)
	local nCandyIdNU = CandyOrMischief_ReturnCandyId(nNowUserId)
	
	local nCandyNum = tCandyOrMischief_Constant["DelCandyNum"]["Mischief"]
	
	-- 随机变身丑陋的鬼怪
	CandyOrMischief_Transform(nUserId)
	
	User_TalkChannel2005(tCandyOrMischief_Text["Mischief"],nUserId)
	
	-- 获取玩家姓名
	local sUserName = Get_UserName(nUserId)
	local sNowUserName = Get_UserName(nNowUserId)
	
	Sys_MsgBox(string.format(tCandyOrMischief_Text["OtherLose"],sUserName),nil,nil,nNowUserId)
	if Sys_Random(50,100) then
		
		--选择方 背包空间不足
		local nSpaceNum = RewardTemplate_GetRewardSpace(tCandyOrMischief_Reward[3313798][1],nUserId)
		if not User_CheckLeftSpace(nSpaceNum,nUserId) then
			User_TalkChannel2005(tCandyOrMischief_Text["NoSpace"],nUserId)
			User_TalkChannel2005(tCandyOrMischief_Text["OtherNoSp"],nNowUserId)
			return
		end
		
		CandyOrMischief_ClearStcInterval(1,0,nUserId)
		CandyOrMischief_ClearStcInterval(2,0,nUserId)
		
		--获取 每日南瓜糕点 上限
		local nCakeLimit = tCandyOrMischief_Constant["CakesLimit"]["NoCross"]
		local nDataCake = CandyOrMischief_GetStcValue(1,nUserId)
		
		local nTaskId = tCandyOrMischief_TaskDetail["Reward"]
		--判断是否跨服
		if User_IsCross(nUserId) then
			nCakeLimit = tCandyOrMischief_Constant["CakesLimit"]["IsCross"]
			nDataCake = Get_TaskDetailData1(nTaskId, nUserId)
		end
		
		if nDataCake < nCakeLimit then
			if User_IsCross(nUserId) then
				Task_SetTaskDetailData1(nTaskId,nDataCake+1,nUserId)
				RewardTemplate_UseItemAndMsg(tCandyOrMischief_Reward[nCandyIdNU][5],nUserId)
				Sys_MsgBox(string.format(tCandyOrMischief_Text["NewCandy"],nCandyNum,1,tCandyOrMischief_Text[nCandyIdNU]),nil,nil,nUserId)
			else
				CandyOrMischief_SetStcValue(1,nDataCake+1,nUserId)
				-- 选择方 获得 南瓜糕点*1
				RewardTemplate_UseItemAndMsg(tCandyOrMischief_Reward[3313798][1],nUserId)
				Sys_MsgBox(string.format(tCandyOrMischief_Text["GetCakes"],sNowUserName,1),nil,nil,nUserId)
				User_TalkChannel2005(string.format(tCandyOrMischief_Text["GetCakesToday"],nDataCake+1),nUserId)
			end
		else
			if not User_IsCross(nUserId) then
				User_TalkChannel2005(tCandyOrMischief_Text["Awarded"],nUserId)
			end
		end
		
	else
		
		-- 发起方背包空间不足
		local nSpaceCandy = RewardTemplate_GetRewardSpace(tCandyOrMischief_Reward[nCandyIdU][4],nNowUserId)
		if not User_CheckLeftSpace(nSpaceCandy,nNowUserId) then
			User_TalkChannel2005(tCandyOrMischief_Text["NoSpace"],nNowUserId)
			User_TalkChannel2005(tCandyOrMischief_Text["OtherNoSp"],nUserId)
			return
		end
		
		local nNum = Get_CountItemType(nCandyIdU,0,nil,nil,nUserId)
		--鬼怪糖果数量不足
		if nNum < nCandyNum then
			return 
		end
		-- 选择方 扣除2个鬼怪糖果
		RewardTemplate_UseItemAndMsg(tCandyOrMischief_Reward[nCandyIdU][2],nUserId)
		User_TalkChannel2005(string.format(tCandyOrMischief_Text["Lose"],2),nUserId)
		Sys_MsgBox(string.format(tCandyOrMischief_Text["LoseCandy"],sNowUserName,2),nil,nil,nUserId)
		
		-- 发起方获得2个鬼怪糖果
		RewardTemplate_UseItemAndMsg(tCandyOrMischief_Reward[nCandyIdU][4],nNowUserId)
		Sys_MsgBox(string.format(tCandyOrMischief_Text["GetCandy"],sUserName,2),nil,nil,nNowUserId)
	end
end

-- 随机变身丑陋的鬼怪
function CandyOrMischief_Transform(nUserId)
	
	local nIndex = math.random(1,11)
	
	local nMagictype = tCandyOrMischief_Transform[nIndex]["Magictype"]
	local nMagictypeLevel = tCandyOrMischief_Transform[nIndex]["MagictypeLevel"]
	local nMonsterId = tCandyOrMischief_Transform[nIndex]["MonsterId"]
	local nTimes = tCandyOrMischief_Transform[nIndex]["Times"]
	
	User_TransForm(nMagictype,nMagictypeLevel,nMonsterId,nTimes,nUserId)
	
end

-- 寻路
function CandyOrMischief_Where()
	--获取玩家和NPC的地图ID
	local nUserId = Get_UserId()
	local nNpcId = tCandyOrMischief_Constant["NPCId"]
	local nNpcMap = Get_NpcMapID(nNpcId)
	local nNowMapId = Get_UserMapId(nUserId)

	--判断是否在一张地图
	if nNowMapId == nNpcMap then
		NpcPosition_PathFind(nNpcId)
	else
		--不在同一张地图则提示前往
		User_TalkChannel2005(tHalloweenCarnivalBaron_Text["FindNpc"])
	end
end

--创建任务掩码
function CandyOrMischief_AddTask()
	
	local nTaskId = tCandyOrMischief_TaskDetail["Reward"]
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId,0)
	end
	
end

--进入跨服打掩码
function CandyOrMischief_EnterMap(nUserId)
	
	local nEvent = tCandyOrMischief_Stc[2]["EventType"]
	local nType = tCandyOrMischief_Stc[2]["DataType"]
	local nTaskId = tCandyOrMischief_TaskDetail["Reward"]
	--隔天重置stc和task掩码
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		if not Task_ChkTaskDetail(nTaskId) then
			Task_AddTaskDetail(nTaskId,0,nUserId)
		end
		Task_SetTaskDetailData1(nTaskId,0, nUserId)
	end
	
	local nData = CandyOrMischief_GetStcValue(2)
	if nData == 0 then
		-- 设置掩码值为1 进入跨服
		CandyOrMischief_SetStcValue(2,1)
	end
	
end

-- 互动接口
-- tProcessInteract["tFunction"] = tProcessInteract["tFunction"] or {}
-- table.insert(tProcessInteract["tFunction"],CandyOrMischief_Choose)

--登录自检
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,CandyOrMischief_AddTask)