------------------------------------------------------------------------------------
--Name：            200417[简体征服][活动脚本]全球儿童节活动-捉迷藏
--Creator:      江宇君
--Created:     2020-04-17
------------------------------------------------------------------------------------
--任务需求： 活动时间：5.26-6.9

-- lua.ini 41802
-- logid 12001963,2[]
-- 等级限制 80
-- 妙妙屋地图id 10835
-- 冒险币, 3316104
-- 游玩卷, 3330736

-- stc(300,01) 记录童趣积分
-- stc(219,15) 免费捉迷藏次数
-- stc(219,16) 本轮是否领取奖励

-- logid
	-- 找到0个小孩/保底奖励获得奖励log 2[1][0]
	-- 找到1个小孩获得奖励log 2[1][1]
	-- 找到2个小孩获得奖励log 2[1][2]
	-- 找到3个小孩获得奖励log 2[1][3]
	
	-- 免费捉迷藏log 0,0,0,0,12001963,2[2][1],0,0
	-- 使用游玩卷 扣除游玩卷的 log 0,0,%d,%d,12001963,2[2][2],0,0
	
	-- 开始游戏的 log 0,0,0,0,12001963,2[3],0,0
	
	-- 离开副本的 log 0,0,0,0,12001963,2[4],0,0

-- 命名前缀
-- ChildrenHideAndSick_

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
-- 等级限制
local tChildrenHideAndSick_LevAndMete = {}
	tChildrenHideAndSick_LevAndMete[1] = {}
	tChildrenHideAndSick_LevAndMete[1]["Level"] = 80
	tChildrenHideAndSick_LevAndMete[1]["Mete"] = 0
	
local tChildrenHideAndSick_Map = {}
	-- 主地图
	tChildrenHideAndSick_Map["Activity"] = {}
	tChildrenHideAndSick_Map["Activity"][1] = 10835 -- 妙妙屋

-- 副本数据
local tChildrenHideAndSick_Instance = {}
	tChildrenHideAndSick_Instance[1] = {}
	tChildrenHideAndSick_Instance[1]["Id"] = 422
	
-- 剧情脚本id
local tChildrenHideAndSick_Script = {}
	tChildrenHideAndSick_Script[1] =  { 1,56}
	tChildrenHideAndSick_Script[2] =  { 2,57}
	tChildrenHideAndSick_Script[3] =  { 3,58}
	tChildrenHideAndSick_Script[4] =  { 4,59}
	tChildrenHideAndSick_Script[5] =  { 5,60}
	tChildrenHideAndSick_Script[6] =  { 6,61}
	tChildrenHideAndSick_Script[7] =  { 7,62}
	tChildrenHideAndSick_Script[8] =  { 8,63}
	tChildrenHideAndSick_Script[9] =  { 9,64}
	tChildrenHideAndSick_Script[10] = {10,65}
	
-- 家具坐标
local tChildrenHideAndSick_NpcPos = {}
	tChildrenHideAndSick_NpcPos["Kid"] = {}
	-- 3个小孩
	tChildrenHideAndSick_NpcPos["Kid"][26494] = {165,224}
	tChildrenHideAndSick_NpcPos["Kid"][26495] = {160,218}
	tChildrenHideAndSick_NpcPos["Kid"][26496] = {170,219}
	
	-- 第一套坐标 3
	tChildrenHideAndSick_NpcPos[1] = {}
	-- 8个家具
	tChildrenHideAndSick_NpcPos[1][26497] = {148,181}
	tChildrenHideAndSick_NpcPos[1][26498] = {136,210}
	tChildrenHideAndSick_NpcPos[1][26499] = {109,212}
	tChildrenHideAndSick_NpcPos[1][26500] = {123,194}
	tChildrenHideAndSick_NpcPos[1][26501] = {161,184}
	tChildrenHideAndSick_NpcPos[1][26502] = {197,212}
	tChildrenHideAndSick_NpcPos[1][26503] = {197,229}
	tChildrenHideAndSick_NpcPos[1][26504] = {165,198}
	
	-- 第二套坐标 1
	tChildrenHideAndSick_NpcPos[2] = {}
	-- 8个家具
	tChildrenHideAndSick_NpcPos[2][26497] = {170,172}
	tChildrenHideAndSick_NpcPos[2][26498] = {160,173}
	tChildrenHideAndSick_NpcPos[2][26499] = {147,165}
	tChildrenHideAndSick_NpcPos[2][26500] = {146,170}
	tChildrenHideAndSick_NpcPos[2][26501] = {148,181}
	tChildrenHideAndSick_NpcPos[2][26502] = {198,170}
	tChildrenHideAndSick_NpcPos[2][26503] = {142,192}
	tChildrenHideAndSick_NpcPos[2][26504] = {136,210}
	
	-- 第三套坐标 2
	tChildrenHideAndSick_NpcPos[3] = {}
	-- 8个家具
	tChildrenHideAndSick_NpcPos[3][26497] = {130,195}
	tChildrenHideAndSick_NpcPos[3][26498] = {127,229}
	tChildrenHideAndSick_NpcPos[3][26499] = {105,228}
	tChildrenHideAndSick_NpcPos[3][26500] = {186,246}
	tChildrenHideAndSick_NpcPos[3][26501] = {148,191}
	tChildrenHideAndSick_NpcPos[3][26502] = {151,159}
	tChildrenHideAndSick_NpcPos[3][26503] = {191,171}
	tChildrenHideAndSick_NpcPos[3][26504] = {214,199}
	
	-- 第四套坐标 5
	tChildrenHideAndSick_NpcPos[4] = {}
	-- 8个家具
	tChildrenHideAndSick_NpcPos[4][26497] = {137,215}
	tChildrenHideAndSick_NpcPos[4][26498] = {137,201}
	tChildrenHideAndSick_NpcPos[4][26499] = {149,192}
	tChildrenHideAndSick_NpcPos[4][26500] = {157,173}
	tChildrenHideAndSick_NpcPos[4][26501] = {194,173}
	tChildrenHideAndSick_NpcPos[4][26502] = {194,219}
	tChildrenHideAndSick_NpcPos[4][26503] = {136,239}
	tChildrenHideAndSick_NpcPos[4][26504] = {126,229}
	
	-- 第五套坐标 4
	tChildrenHideAndSick_NpcPos[5] = {}
	-- 8个家具
	tChildrenHideAndSick_NpcPos[5][26497] = {145,169}
	tChildrenHideAndSick_NpcPos[5][26498] = {161,185}
	tChildrenHideAndSick_NpcPos[5][26499] = {148,201}
	tChildrenHideAndSick_NpcPos[5][26500] = {135,227}
	tChildrenHideAndSick_NpcPos[5][26501] = {139,178}
	tChildrenHideAndSick_NpcPos[5][26502] = {202,239}
	tChildrenHideAndSick_NpcPos[5][26503] = {141,243}
	tChildrenHideAndSick_NpcPos[5][26504] = {197,229}
	
	-- 第六套坐标 2
	tChildrenHideAndSick_NpcPos[6] = {}
	-- 8个家具
	tChildrenHideAndSick_NpcPos[6][26497] = {105,228}
	tChildrenHideAndSick_NpcPos[6][26498] = {148,191}
	tChildrenHideAndSick_NpcPos[6][26499] = {186,246}
	tChildrenHideAndSick_NpcPos[6][26500] = {130,195}
	tChildrenHideAndSick_NpcPos[6][26501] = {127,229}
	tChildrenHideAndSick_NpcPos[6][26502] = {151,159}
	tChildrenHideAndSick_NpcPos[6][26503] = {214,199}
	tChildrenHideAndSick_NpcPos[6][26504] = {191,171}
	
	-- 第七套坐标 4
	tChildrenHideAndSick_NpcPos[7] = {}
	-- 8个家具
	tChildrenHideAndSick_NpcPos[7][26497] = {202,239}
	tChildrenHideAndSick_NpcPos[7][26498] = {145,169}
	tChildrenHideAndSick_NpcPos[7][26499] = {141,243}
	tChildrenHideAndSick_NpcPos[7][26500] = {161,185}
	tChildrenHideAndSick_NpcPos[7][26501] = {139,178}
	tChildrenHideAndSick_NpcPos[7][26502] = {197,229}
	tChildrenHideAndSick_NpcPos[7][26503] = {148,201}
	tChildrenHideAndSick_NpcPos[7][26504] = {135,227}
	
	-- 第八套坐标 5
	tChildrenHideAndSick_NpcPos[8] = {}
	-- 8个家具
	tChildrenHideAndSick_NpcPos[8][26497] = {194,219}
	tChildrenHideAndSick_NpcPos[8][26498] = {157,173}
	tChildrenHideAndSick_NpcPos[8][26499] = {194,173}
	tChildrenHideAndSick_NpcPos[8][26500] = {137,201}
	tChildrenHideAndSick_NpcPos[8][26501] = {149,192}
	tChildrenHideAndSick_NpcPos[8][26502] = {137,215}
	tChildrenHideAndSick_NpcPos[8][26503] = {136,239}
	tChildrenHideAndSick_NpcPos[8][26504] = {126,229}
	
	-- 第九套坐标 3
	tChildrenHideAndSick_NpcPos[9] = {}
	-- 8个家具
	tChildrenHideAndSick_NpcPos[9][26497] = {109,212}
	tChildrenHideAndSick_NpcPos[9][26498] = {136,210}
	tChildrenHideAndSick_NpcPos[9][26499] = {165,198}
	tChildrenHideAndSick_NpcPos[9][26500] = {197,212}
	tChildrenHideAndSick_NpcPos[9][26501] = {161,184}
	tChildrenHideAndSick_NpcPos[9][26502] = {148,181}
	tChildrenHideAndSick_NpcPos[9][26503] = {123,194}
	tChildrenHideAndSick_NpcPos[9][26504] = {197,229}
	
	-- 第十套坐标 1
	tChildrenHideAndSick_NpcPos[10] = {}
	-- 8个家具
	tChildrenHideAndSick_NpcPos[10][26497] = {160,173}
	tChildrenHideAndSick_NpcPos[10][26498] = {147,165}
	tChildrenHideAndSick_NpcPos[10][26499] = {198,170}
	tChildrenHideAndSick_NpcPos[10][26500] = {146,170}
	tChildrenHideAndSick_NpcPos[10][26501] = {136,210}
	tChildrenHideAndSick_NpcPos[10][26502] = {170,172}
	tChildrenHideAndSick_NpcPos[10][26503] = {142,192}
	tChildrenHideAndSick_NpcPos[10][26504] = {148,181}
	
-- 家具npc
local tChildrenHideAndSick_NpcInfo = {}
	tChildrenHideAndSick_NpcInfo[26494] = {}
	tChildrenHideAndSick_NpcInfo[26494]["Name"] = "BruceTao"
	tChildrenHideAndSick_NpcInfo[26494]["Type"] = 2
	tChildrenHideAndSick_NpcInfo[26494]["LookFace"] = 25210
	tChildrenHideAndSick_NpcInfo[26494]["ActionId"] = 94492260
	tChildrenHideAndSick_NpcInfo[26494]["NpcFace"] = 126
	tChildrenHideAndSick_NpcInfo[26495] = {}
	tChildrenHideAndSick_NpcInfo[26495]["Name"] = "Clever"
	tChildrenHideAndSick_NpcInfo[26495]["Type"] = 2
	tChildrenHideAndSick_NpcInfo[26495]["LookFace"] = 25220
	tChildrenHideAndSick_NpcInfo[26495]["ActionId"] = 94492261
	tChildrenHideAndSick_NpcInfo[26495]["NpcFace"] = 68
	tChildrenHideAndSick_NpcInfo[26496] = {}
	tChildrenHideAndSick_NpcInfo[26496]["Name"] = "Cutter"
	tChildrenHideAndSick_NpcInfo[26496]["Type"] = 2
	tChildrenHideAndSick_NpcInfo[26496]["LookFace"] = 25230
	tChildrenHideAndSick_NpcInfo[26496]["ActionId"] = 94492262
	tChildrenHideAndSick_NpcInfo[26496]["NpcFace"] = 36
	tChildrenHideAndSick_NpcInfo[26497] = {}
	tChildrenHideAndSick_NpcInfo[26497]["Name"] = "Desk"
	tChildrenHideAndSick_NpcInfo[26497]["Type"] = 2
	tChildrenHideAndSick_NpcInfo[26497]["LookFace"] = 25240
	tChildrenHideAndSick_NpcInfo[26497]["ActionId"] = 94492263
	tChildrenHideAndSick_NpcInfo[26498] = {}
	tChildrenHideAndSick_NpcInfo[26498]["Name"] = "RedLantern"
	tChildrenHideAndSick_NpcInfo[26498]["Type"] = 2
	tChildrenHideAndSick_NpcInfo[26498]["LookFace"] = 25250
	tChildrenHideAndSick_NpcInfo[26498]["ActionId"] = 94492264
	tChildrenHideAndSick_NpcInfo[26499] = {}
	tChildrenHideAndSick_NpcInfo[26499]["Name"] = "Armchair"
	tChildrenHideAndSick_NpcInfo[26499]["Type"] = 2
	tChildrenHideAndSick_NpcInfo[26499]["LookFace"] = 25260
	tChildrenHideAndSick_NpcInfo[26499]["ActionId"] = 94492265
	tChildrenHideAndSick_NpcInfo[26500] = {}
	tChildrenHideAndSick_NpcInfo[26500]["Name"] = "Jackstraw"
	tChildrenHideAndSick_NpcInfo[26500]["Type"] = 2
	tChildrenHideAndSick_NpcInfo[26500]["LookFace"] = 25270
	tChildrenHideAndSick_NpcInfo[26500]["ActionId"] = 94492266
	tChildrenHideAndSick_NpcInfo[26501] = {}
	tChildrenHideAndSick_NpcInfo[26501]["Name"] = "Spiling"
	tChildrenHideAndSick_NpcInfo[26501]["Type"] = 2
	tChildrenHideAndSick_NpcInfo[26501]["LookFace"] = 25280
	tChildrenHideAndSick_NpcInfo[26501]["ActionId"] = 94492267
	tChildrenHideAndSick_NpcInfo[26502] = {}
	tChildrenHideAndSick_NpcInfo[26502]["Name"] = "Furnace"
	tChildrenHideAndSick_NpcInfo[26502]["Type"] = 2
	tChildrenHideAndSick_NpcInfo[26502]["LookFace"] = 25290
	tChildrenHideAndSick_NpcInfo[26502]["ActionId"] = 94492268
	tChildrenHideAndSick_NpcInfo[26503] = {}
	tChildrenHideAndSick_NpcInfo[26503]["Name"] = "Strongbox"
	tChildrenHideAndSick_NpcInfo[26503]["Type"] = 2
	tChildrenHideAndSick_NpcInfo[26503]["LookFace"] = 25300
	tChildrenHideAndSick_NpcInfo[26503]["ActionId"] = 94492269
	tChildrenHideAndSick_NpcInfo[26504] = {}
	tChildrenHideAndSick_NpcInfo[26504]["Name"] = "FireworkBox"
	tChildrenHideAndSick_NpcInfo[26504]["Type"] = 2
	tChildrenHideAndSick_NpcInfo[26504]["LookFace"] = 25310
	tChildrenHideAndSick_NpcInfo[26504]["ActionId"] = 94492270

-- 陶小龙
local tChildrenHideAndSick_FindNpc = {}
	tChildrenHideAndSick_FindNpc[26494] = 26494
	
-- 小孩变家具数据
local tChildrenHideAndSick_ChangeMsg = {}
	-- 真的家具 剧情脚本刷的家具
	tChildrenHideAndSick_ChangeMsg["Real"] = {}
	tChildrenHideAndSick_ChangeMsg["Real"][1] =  {26497,26498,26500,26502,26504}
	tChildrenHideAndSick_ChangeMsg["Real"][2] =  {26498,26499,26501,26502,26504}
	tChildrenHideAndSick_ChangeMsg["Real"][3] =  {26497,26499,26500,26502,26503}
	tChildrenHideAndSick_ChangeMsg["Real"][4] =  {26497,26498,26501,26503,26504}
	tChildrenHideAndSick_ChangeMsg["Real"][5] =  {26498,26499,26501,26502,26503}
	tChildrenHideAndSick_ChangeMsg["Real"][6] =  {26497,26499,26500,26501,26504}
	tChildrenHideAndSick_ChangeMsg["Real"][7] =  {26497,26498,26502,26503,26504}
	tChildrenHideAndSick_ChangeMsg["Real"][8] =  {26498,26499,26500,26502,26504}
	tChildrenHideAndSick_ChangeMsg["Real"][9] =  {26497,26500,26501,26503,26504}
	tChildrenHideAndSick_ChangeMsg["Real"][10] = {26497,26498,26499,26501,26504}
	
	-- 假的家具 小孩要变成家具id
	tChildrenHideAndSick_ChangeMsg["Fake"] = {}
	tChildrenHideAndSick_ChangeMsg["Fake"][1]  = {26499,26501,26503}
	tChildrenHideAndSick_ChangeMsg["Fake"][2]  = {26497,26500,26503}
	tChildrenHideAndSick_ChangeMsg["Fake"][3]  = {26498,26501,26504}
	tChildrenHideAndSick_ChangeMsg["Fake"][4]  = {26499,26500,26502}
	tChildrenHideAndSick_ChangeMsg["Fake"][5]  = {26497,26500,26504}
	tChildrenHideAndSick_ChangeMsg["Fake"][6]  = {26498,26502,26503}
	tChildrenHideAndSick_ChangeMsg["Fake"][7]  = {26499,26500,26501}
	tChildrenHideAndSick_ChangeMsg["Fake"][8]  = {26497,26501,26503}
	tChildrenHideAndSick_ChangeMsg["Fake"][9]  = {26498,26499,26502}
	tChildrenHideAndSick_ChangeMsg["Fake"][10] = {26500,26502,26503}
	
-- 小孩npc
local tChildrenHideAndSick_Kid = {}
	-- id
	tChildrenHideAndSick_Kid["Id"] = {}
	tChildrenHideAndSick_Kid["Id"][1] = 26494
	tChildrenHideAndSick_Kid["Id"][2] = 26495
	tChildrenHideAndSick_Kid["Id"][3] = 26496

-- 掩码数据
local tChildrenHideAndSick_Stc = {}
	-- 免费捉迷藏次数
	tChildrenHideAndSick_Stc[1] = {}
	tChildrenHideAndSick_Stc[1]["EventType"] = 219
	tChildrenHideAndSick_Stc[1]["DataType"] = 15
	tChildrenHideAndSick_Stc[1]["TotalData"] = 1
	-- 本轮是否领取奖励
	tChildrenHideAndSick_Stc[2] = {}
	tChildrenHideAndSick_Stc[2]["EventType"] = 219
	tChildrenHideAndSick_Stc[2]["DataType"] = 16
	tChildrenHideAndSick_Stc[2]["TotalData"] = 1
	
-- 需要的物品ID
local tChildrenHideAndSick_Item = {}
	tChildrenHideAndSick_Item["Id"] = {}
	tChildrenHideAndSick_Item["Id"]["GameCard"] = 3330736   -- 游玩卷
	
local tChildrenHideAndSick_IsJudgeNpcFlag = {}
	tChildrenHideAndSick_IsJudgeNpcFlag[26497] = 1
	tChildrenHideAndSick_IsJudgeNpcFlag[26498] = 2
	tChildrenHideAndSick_IsJudgeNpcFlag[26499] = 4
	tChildrenHideAndSick_IsJudgeNpcFlag[26500] = 8
	tChildrenHideAndSick_IsJudgeNpcFlag[26501] = 16
	tChildrenHideAndSick_IsJudgeNpcFlag[26502] = 32
	tChildrenHideAndSick_IsJudgeNpcFlag[26503] = 64
	tChildrenHideAndSick_IsJudgeNpcFlag[26504] = 128
	
-- 返回点坐标
local tChildrenHideAndSick_LeaveMap = {}
	-- 普通服
	tChildrenHideAndSick_LeaveMap[1] = {}
	tChildrenHideAndSick_LeaveMap[1]["MapId"] = 10835
	tChildrenHideAndSick_LeaveMap[1]["PosX"] = 81
	tChildrenHideAndSick_LeaveMap[1]["PosY"] = 78
	-- 激情服
	tChildrenHideAndSick_LeaveMap[2] = {}
	tChildrenHideAndSick_LeaveMap[2]["MapId"] = 10835
	tChildrenHideAndSick_LeaveMap[2]["PosX"] = 81
	tChildrenHideAndSick_LeaveMap[2]["PosY"] = 78
	
-- 对应发奖
local tChildrenHideAndSick_Action = {}
	tChildrenHideAndSick_Action[0] = 577240
	tChildrenHideAndSick_Action[1] = 577241
	tChildrenHideAndSick_Action[2] = 577242
	tChildrenHideAndSick_Action[3] = 577243
	
local tChildrenHideAndSick_RewardMsg = {}
	tChildrenHideAndSick_RewardMsg[0] = {0,8}
	tChildrenHideAndSick_RewardMsg[1] = {1,9}
	tChildrenHideAndSick_RewardMsg[2] = {2,10}
	tChildrenHideAndSick_RewardMsg[3] = {3,12}
	
local tChildrenHideAndSick_Broadcast = {}
	tChildrenHideAndSick_Broadcast["Chance"] = {1000,10000}

-- 奖励表配置
local tChildrenHideAndSick_Reward = {}
	-- ===找到0个小孩
	-- ===索引: tChildrenHideAndSick_Reward["FindKidsNum"][0]
	-- ===LogStep:2[1][0]
	tChildrenHideAndSick_Reward["FindKidsNum"] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][0] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][0]["LogId"] = 12001963
	tChildrenHideAndSick_Reward["FindKidsNum"][0]["LogStep"] = "2[1][0]"
	tChildrenHideAndSick_Reward["FindKidsNum"][0]["RewardItem"] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][0]["RewardItem"][1] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][0]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:9][叠加:10000][金币:0], 【表格】7个冒险币
	tChildrenHideAndSick_Reward["FindKidsNum"][0]["RewardItem"][1]["Attr"] = "0 8" -- 冒险币*8
	tChildrenHideAndSick_Reward["FindKidsNum"][0]["RewardEffect"] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][0]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenHideAndSick_Reward["FindKidsNum"][0]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenHideAndSick_Reward["FindKidsNum"][1] = {}
	-- ===找到1个小孩
	-- ===索引: tChildrenHideAndSick_Reward["FindKidsNum"][1]
	-- ===LogStep:2[1][1]
	tChildrenHideAndSick_Reward["FindKidsNum"][1]["LogId"] = 12001963
	tChildrenHideAndSick_Reward["FindKidsNum"][1]["LogStep"] = "2[1][1]"
	tChildrenHideAndSick_Reward["FindKidsNum"][1]["RewardItem"] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][1]["RewardItem"][1] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][1]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:9][叠加:10000][金币:0], 【表格】8个冒险币
	tChildrenHideAndSick_Reward["FindKidsNum"][1]["RewardItem"][1]["Attr"] = "0 9" -- 冒险币*9
	tChildrenHideAndSick_Reward["FindKidsNum"][1]["RewardEffect"] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenHideAndSick_Reward["FindKidsNum"][1]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenHideAndSick_Reward["FindKidsNum"][2] = {}
	-- ===找到2个小孩
	-- ===索引: tChildrenHideAndSick_Reward["FindKidsNum"][2]
	-- ===LogStep:2[1][2]
	tChildrenHideAndSick_Reward["FindKidsNum"][2]["LogId"] = 12001963
	tChildrenHideAndSick_Reward["FindKidsNum"][2]["LogStep"] = "2[1][2]"
	tChildrenHideAndSick_Reward["FindKidsNum"][2]["RewardItem"] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][2]["RewardItem"][1] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][2]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:9][叠加:10000][金币:0], 【表格】9个冒险币
	tChildrenHideAndSick_Reward["FindKidsNum"][2]["RewardItem"][1]["Attr"] = "0 10" -- 冒险币*10
	tChildrenHideAndSick_Reward["FindKidsNum"][2]["RewardEffect"] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenHideAndSick_Reward["FindKidsNum"][2]["RewardEffect"]["Effect"] = "angelwing"


	tChildrenHideAndSick_Reward["FindKidsNum"][3] = {}
	-- ===找到3个小孩
	-- ===索引: tChildrenHideAndSick_Reward["FindKidsNum"][3]
	-- ===LogStep:2[1][3]
	tChildrenHideAndSick_Reward["FindKidsNum"][3]["LogId"] = 12001963
	tChildrenHideAndSick_Reward["FindKidsNum"][3]["LogStep"] = "2[1][3]"
	tChildrenHideAndSick_Reward["FindKidsNum"][3]["RewardItem"] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][3]["RewardItem"][1] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][3]["RewardItem"][1]["Id"] = 3316104 -- 冒险币[3316104][属性:9][叠加:10000][金币:0], 【表格】12个冒险币
	tChildrenHideAndSick_Reward["FindKidsNum"][3]["RewardItem"][1]["Attr"] = "0 12" -- 冒险币*12（[错误]物品数量超10个）
	tChildrenHideAndSick_Reward["FindKidsNum"][3]["RewardEffect"] = {}
	tChildrenHideAndSick_Reward["FindKidsNum"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChildrenHideAndSick_Reward["FindKidsNum"][3]["RewardEffect"]["Effect"] = "angelwing"
	
local tChildrenHideAndSick_Cont = {}
	tChildrenHideAndSick_Cont["FindTimes"] = 5
	tChildrenHideAndSick_Cont["FindKidsNum"] = 3
	tChildrenHideAndSick_Cont["MapDoc"] = 10836
	tChildrenHideAndSick_Cont["TimerMax"] = 300 -- 计时器时长
	tChildrenHideAndSick_Cont["ReadBar"] = 1 -- 读条1秒
	tChildrenHideAndSick_Cont["Effect"] = {}
	tChildrenHideAndSick_Cont["Effect"]["DelKidNpc"] = "movego"
	tChildrenHideAndSick_Cont["Effect"]["Changed"] = "accession"
	tChildrenHideAndSick_Cont["Effect"]["Wrong"] = "BodyDisapear"
	tChildrenHideAndSick_Cont["Effect"]["Hammer"] = "thor_Hammer"
	tChildrenHideAndSick_Cont["Effect"]["BeginGame"] = "task073"

local tChildrenHideAndSick_Log = {}
	tChildrenHideAndSick_Log["FreeGame"] = "0,0,0,0,12001963,2[2][1],0,%d"
	tChildrenHideAndSick_Log["DelCard"] = "0,0,%d,1,12001963,2[2][2],0,%d"
	tChildrenHideAndSick_Log["BeginGame"] = "0,0,0,0,12001963,2[3],0,%d"
	tChildrenHideAndSick_Log["LeaveInstance"] = "0,0,0,0,12001963,2[4],0,0"

-- 玩家临时表
-- 是否开始游戏 1 开始 0 未开始 开始捉迷藏后才可以点击家具进行对话
local tChildrenHideAndSick_IsBegin_Temp = {}
-- 记录找了几次小孩
local tChildrenHideAndSick_FindTimes_Temp = {}
-- 记录找到了几个小孩
local tChildrenHideAndSick_FindKidsNum_Temp = {}
-- 是否判断过当前家具npc
local tChildrenHideAndSick_IsJudgeNpc_Temp = {}
-- 存伪装的家具npcid 表
local tChildrenHideAndSick_FakeFurniture_Temp = {}
-- 存 小孩id 对应伪装的 家具id 表
local tChildrenHideAndSick_KidToFurniture_Temp = {}
-- 对应的剧情脚本id
local tChildrenHideAndSick_ScriptIndex_Temp = {}
-- 记录进入副本的时间戳
local tChildrenHideAndSick_EnterTime_Temp = {}

----------------------------------逻辑部分---------------------------------------------

-- 玩家等级判断
-- 返回值 true 等级达到 false 等级未达到
function ChildrenHideAndSick_LevelAndMete(nChildrenHideAndSick_UserId)
	-- 玩家等级限制
	local nChildrenHideAndSick_Level = tChildrenHideAndSick_LevAndMete[1]["Level"]
	local nChildrenHideAndSick_Mete = tChildrenHideAndSick_LevAndMete[1]["Mete"]
	
	-- local nUserMete = Get_UserMetempsychosis()
	if User_JudgeLevelAndMetempsychosis(nChildrenHideAndSick_Level, nChildrenHideAndSick_Mete, nChildrenHideAndSick_UserId) then
		return true
	end
	return false
end

-- 等级+时间判断
function ChildrenHideAndSick_TimeAndLevel(nChildrenHideAndSick_UserId)
	-- 不在活动时间
	if not Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]) then
		return false
	end
	
	-- 等级不足
	if not ChildrenHideAndSick_LevelAndMete(nChildrenHideAndSick_UserId) then
		return false
	end
	
	return true
end

-- 获取掩码值
function ChildrenHideAndSick_GetStcValue(nChildrenHideAndSick_Index, nChildrenHideAndSick_NowUserId)
	local nChildrenHideAndSick_UserId = nChildrenHideAndSick_NowUserId or Get_UserId()
	local nChildrenHideAndSick_EventType = tChildrenHideAndSick_Stc[nChildrenHideAndSick_Index]["EventType"]
	local nChildrenHideAndSick_DataType = tChildrenHideAndSick_Stc[nChildrenHideAndSick_Index]["DataType"]
	local nChildrenHideAndSick_NowData = Get_UserStatisticValue(nChildrenHideAndSick_EventType,nChildrenHideAndSick_DataType,nChildrenHideAndSick_UserId)
	return nChildrenHideAndSick_NowData
end

-- 判断掩码值
function ChildrenHideAndSick_ChkStcValue(nChildrenHideAndSick_Index, nChildrenHideAndSick_NowUserId)
	local nChildrenHideAndSick_UserId = nChildrenHideAndSick_NowUserId or Get_UserId()
	
	local nChildrenHideAndSick_TotalData = tChildrenHideAndSick_Stc[nChildrenHideAndSick_Index]["TotalData"]
	local nChildrenHideAndSick_NowData = ChildrenHideAndSick_GetStcValue(nChildrenHideAndSick_Index, nChildrenHideAndSick_UserId)
	
	-- 当前掩码值大于总值
	if nChildrenHideAndSick_NowData >= nChildrenHideAndSick_TotalData then
		return false
	end
	
	return true
end

-- 隔天清空掩码
function ChildrenHideAndSick_ClearStcValue(nChildrenHideAndSick_Index)
	local nChildrenHideAndSick_UserId = Get_UserId()
	local nChildrenHideAndSick_EventType = tChildrenHideAndSick_Stc[nChildrenHideAndSick_Index]["EventType"]
	local nChildrenHideAndSick_DataType = tChildrenHideAndSick_Stc[nChildrenHideAndSick_Index]["DataType"]
	
	-- 是否隔天
	if not Task_StcInterval(nChildrenHideAndSick_EventType,nChildrenHideAndSick_DataType, 1, 4) then
		return true
	end
	
	-- 清空掩码
	if not Task_SetStatistic(nChildrenHideAndSick_EventType,nChildrenHideAndSick_DataType,0,1,nChildrenHideAndSick_UserId) then
		return false
	end
	
	Task_SetStcTimestamp(nChildrenHideAndSick_EventType,nChildrenHideAndSick_DataType,0,nChildrenHideAndSick_UserId)
	return true
end

-- 设置掩码值
function ChildrenHideAndSick_SetStcValue(nChildrenHideAndSick_Index, nChildrenHideAndSick_Data, nChildrenHideAndSick_NowUserId)
	local nChildrenHideAndSick_UserId = nChildrenHideAndSick_NowUserId or Get_UserId()
	local nChildrenHideAndSick_EventType = tChildrenHideAndSick_Stc[nChildrenHideAndSick_Index]["EventType"]
	local nChildrenHideAndSick_DataType = tChildrenHideAndSick_Stc[nChildrenHideAndSick_Index]["DataType"]
	
	-- 加掩码 打时间戳
	if not Task_SetStatistic(nChildrenHideAndSick_EventType,nChildrenHideAndSick_DataType,nChildrenHideAndSick_Data,1,nChildrenHideAndSick_UserId) then
		return false
	end
	
	Task_SetStcTimestamp(nChildrenHideAndSick_EventType,nChildrenHideAndSick_DataType,0,nChildrenHideAndSick_UserId)
	return true
end

-- 加掩码值
function ChildrenHideAndSick_AddStcValue(nChildrenHideAndSick_Index,nChildrenHideAndSick_Data)
	local nChildrenHideAndSick_UserId = Get_UserId()
	local nChildrenHideAndSick_EventType = tChildrenHideAndSick_Stc[nChildrenHideAndSick_Index]["EventType"]
	local nChildrenHideAndSick_DataType = tChildrenHideAndSick_Stc[nChildrenHideAndSick_Index]["DataType"]
	
	-- 加掩码 打时间戳
	if not Task_AddStatistic(nChildrenHideAndSick_EventType,nChildrenHideAndSick_DataType,nChildrenHideAndSick_Data,1,nChildrenHideAndSick_UserId) then
		return false
	end
	
	Task_SetStcTimestamp(nChildrenHideAndSick_EventType,nChildrenHideAndSick_DataType,0,nChildrenHideAndSick_UserId)
	return true
end

------------ 捉迷藏地图的三个小孩 
-- 26494,'陶小龙' 
-- 26495,'聪聪' 
-- 26496,'笨笨'
function ChildrenHideAndSick_Kid(nChildrenHideAndSick_NpcId)
	local nChildrenHideAndSick_UserId = Get_UserId()
	
	-- 时间 等级 未达到
	if not ChildrenHideAndSick_TimeAndLevel(nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 超过300s点击npc 传送出副本
	local nChildrenHideAndSick_NowTime = os.time()
	if tChildrenHideAndSick_EnterTime_Temp[nChildrenHideAndSick_UserId] == nil or tChildrenHideAndSick_EnterTime_Temp[nChildrenHideAndSick_UserId] == 0 then
		Sys_MsgBox(tChildrenHideAndSick_Text["Sys"]["Game"]["TooLong"], "ChildrenHideAndSick_LeaveAndReward</N>2</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveAndReward</N>2</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
		return
	end
	
	if tonumber(nChildrenHideAndSick_NowTime) - tonumber(tChildrenHideAndSick_EnterTime_Temp[nChildrenHideAndSick_UserId]) > tChildrenHideAndSick_Cont["TimerMax"] then
		Sys_MsgBox(tChildrenHideAndSick_Text["Sys"]["Game"]["TooLong"], "ChildrenHideAndSick_LeaveAndReward</N>2</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveAndReward</N>2</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
		return
	end
	
	-- 未开始游戏 即没有判断过家具 点击小孩出1-1对白
	if tChildrenHideAndSick_IsBegin_Temp[nChildrenHideAndSick_UserId] == nil or tChildrenHideAndSick_IsBegin_Temp[nChildrenHideAndSick_UserId] == 0 then
		LinkNpcGossipFunc_New(nChildrenHideAndSick_NpcId,"1-1")
		return
	end
	
	-- 判断次数或人数已满
	if ChildrenHideAndSick_FindMsg(nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 本轮伪装成家具的小孩id为空 
	if type(tChildrenHideAndSick_KidToFurniture_Temp[nChildrenHideAndSick_UserId]) ~= "table" or #tChildrenHideAndSick_KidToFurniture_Temp[nChildrenHideAndSick_UserId] == 0 then
		return
	end
	
	local nChildrenHideAndSick_FurnitureNpcId
	
	for i, v in pairs(tChildrenHideAndSick_KidToFurniture_Temp[nChildrenHideAndSick_UserId]) do
		if v == nChildrenHideAndSick_NpcId then
			nChildrenHideAndSick_FurnitureNpcId = tChildrenHideAndSick_FakeFurniture_Temp[nChildrenHideAndSick_UserId][i]
			break
		end
	end
	
	if nChildrenHideAndSick_FurnitureNpcId == nil then
		return
	end
	
	if ChildrenHideAndSick_IsJudgeNpc(nChildrenHideAndSick_FurnitureNpcId) then
		local nChildrenHideAndSick_RandomDialogIndex = math.random(1, #tChildrenHideAndSick_Text["RandomDialog"])
		local sChildrenHideAndSick_NpcName = tChildrenHideAndSick_NpcInfo[nChildrenHideAndSick_NpcId]["Name"]
		
		tNpcGossip[nChildrenHideAndSick_NpcId]["Text221"] = string.format(tChildrenHideAndSick_Text["RandomDialog"][nChildrenHideAndSick_RandomDialogIndex]["Text221"],sChildrenHideAndSick_NpcName)
		tNpcGossip[nChildrenHideAndSick_NpcId]["Text222"] = tChildrenHideAndSick_Text["RandomDialog"][nChildrenHideAndSick_RandomDialogIndex]["Text222"]
		tNpcGossip[nChildrenHideAndSick_NpcId]["Option221"] = tChildrenHideAndSick_Text["RandomDialog"][nChildrenHideAndSick_RandomDialogIndex]["Option221"]
		
		LinkNpcGossipFunc_New(nChildrenHideAndSick_NpcId, "2-2")
		return
	end
	
	-- LinkNpcGossipFunc_New(nChildrenHideAndSick_FurnitureNpcId, "1-1")
end

-- 进入捉迷藏副本 的前置判断条件 26493
function ChildrenHideAndSick_EnterInstance(nChildrenHideAndSick_NpcId)
	local nChildrenHideAndSick_UserId = Get_UserId()
	
	-- 时间 等级 未达到
	if not ChildrenHideAndSick_TimeAndLevel(nChildrenHideAndSick_UserId) then
		return false
	end
	
	-- 玩家组队
	if Get_UserTeamNumbers(nChildrenHideAndSick_UserId) >= 1 then
		Sys_MsgBox(tChildrenHideAndSick_Text["Sys"][nChildrenHideAndSick_NpcId]["NoTeam"])
		return false
	end
	
	-- 闪蓝不能进入副本
	if Get_UserCrimeTime(nChildrenHideAndSick_UserId) == 1 then
		Sys_MsgBox(tChildrenHideAndSick_Text["Sys"][nChildrenHideAndSick_NpcId]["BlueName"])
		return false
	end
	
	-- 玩家不在主地图不能进入副本
	if Get_UserMapId(nChildrenHideAndSick_UserId) ~= tChildrenHideAndSick_Map["Activity"][1] then
		return false
	end
	
	return true
end

-- 离开副本
function ChildrenHideAndSick_LeaveInstance(nChildrenHideAndSick_NowUserId)
	local nChildrenHideAndSick_UserId = nChildrenHideAndSick_NowUserId or Get_UserId()
	local nChildrenHideAndSick_Index = 1
	if SpecialServer_ChkNoGiftServer() then
		nChildrenHideAndSick_Index = 2
	end
	
	if not ChildrenHideAndSick_ChkInstance() then
		return
	end
	
	local nChildrenHideAndSick_MapId = tChildrenHideAndSick_LeaveMap[nChildrenHideAndSick_Index]["MapId"]
	local nChildrenHideAndSick_PosX = tChildrenHideAndSick_LeaveMap[nChildrenHideAndSick_Index]["PosX"]
	local nChildrenHideAndSick_PosY = tChildrenHideAndSick_LeaveMap[nChildrenHideAndSick_Index]["PosY"]
	User_UserRandBoundTrans(nChildrenHideAndSick_MapId,nChildrenHideAndSick_PosX,nChildrenHideAndSick_PosY,5,5,nil,nChildrenHideAndSick_UserId)
	User_SetTimer(1, "NULL", 1, nChildrenHideAndSick_UserId)
	LinkNpcGossipFunc_New(26486,"6-1",nil,nil,nChildrenHideAndSick_UserId)
	-- 清除临时表
	ChildrenHideAndSick_ClearTempTable(nChildrenHideAndSick_UserId)
	
	-- 离开副本 记log
	Sys_SaveActionFestivalLog(tChildrenHideAndSick_Log["LeaveInstance"],nChildrenHideAndSick_UserId)
end

-- 开始捉迷藏（免费） 一天免费一次 26493
function ChildrenHideAndSick_FreeGame(nChildrenHideAndSick_NpcId)
	local nChildrenHideAndSick_UserId = Get_UserId()
	
	-- 时间 等级 未达到
	if not ChildrenHideAndSick_TimeAndLevel(nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 清空掩码
	if not ChildrenHideAndSick_ClearStcValue(1) then
		return
	end
	
	-- 是否有免费次数
	if not ChildrenHideAndSick_ChkStcValue(1) then
		Sys_MsgBox(tChildrenHideAndSick_Text["Sys"][nChildrenHideAndSick_NpcId]["NoFreeTimes"])
		return
	end
	
	if not ChildrenHideAndSick_EnterInstance(nChildrenHideAndSick_NpcId) then
		return
	end
	
	-- 副本id
	local nChildrenHideAndSick_InstanceId = tChildrenHideAndSick_Instance[1]["Id"]
	
	-- 随机一套npc 确认哪些家具是小孩变的 获得索引
	local nChildrenHideAndSick_RandomChangeMsg = math.random(1,#tChildrenHideAndSick_ChangeMsg["Fake"])
	-- 索引具体的剧情脚本id
	local nChildrenHideAndSick_ScriptId = tChildrenHideAndSick_Script[nChildrenHideAndSick_RandomChangeMsg][2]
	
	-- 进入副本失败
	if not User_EnterInstance(nChildrenHideAndSick_InstanceId,0,0,0,nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 记录免费参与捉迷藏的log
	Sys_SaveActionFestivalLog(string.format(tChildrenHideAndSick_Log["FreeGame"],nChildrenHideAndSick_RandomChangeMsg),nChildrenHideAndSick_UserId)
	
	-- 进入副本成功 打掩码 消耗免费次数
	ChildrenHideAndSick_SetStcValue(1,1)
	-- 进入副本 打掩码 清空本轮领奖记录
	ChildrenHideAndSick_SetStcValue(2,0)
	-- 进入副本成功 清空临时表数据 重新存入剧情脚本id到临时表
	ChildrenHideAndSick_ClearTempTable(nChildrenHideAndSick_UserId)
	
	-- 剧情脚本id索引存到玩家临时表
	tChildrenHideAndSick_ScriptIndex_Temp[nChildrenHideAndSick_UserId] = nChildrenHideAndSick_RandomChangeMsg
	
	tChildrenHideAndSick_EnterTime_Temp[nChildrenHideAndSick_UserId] = os.time()
	User_PlayPlot(nChildrenHideAndSick_ScriptId)
end

-- 开始捉迷藏（1张游玩卷） 26493
function ChildrenHideAndSick_CardGame(nChildrenHideAndSick_NpcId)
	local nChildrenHideAndSick_UserId = Get_UserId()
	
	-- 时间 等级 未达到
	if not ChildrenHideAndSick_TimeAndLevel(nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 判断进入副本的前置条件
	if not ChildrenHideAndSick_EnterInstance(nChildrenHideAndSick_NpcId) then
		return
	end
	
	local nChildrenHideAndSick_CardId = tChildrenHideAndSick_Item["Id"]["GameCard"]
	-- 没有游玩卷
	if not Item_ChkMulItem(nChildrenHideAndSick_CardId, nChildrenHideAndSick_CardId, 1) then
		LinkNpcGossipFunc_New(nChildrenHideAndSick_NpcId,"2-1")
		return
	end
	
	-- 副本id
	local nChildrenHideAndSick_InstanceId = tChildrenHideAndSick_Instance[1]["Id"]
	
	-- 随机一套npc 确认哪些家具是小孩变的 获得索引
	local nChildrenHideAndSick_RandomChangeMsg = math.random(1,#tChildrenHideAndSick_ChangeMsg["Fake"])
	-- 索引具体的剧情脚本id
	local nChildrenHideAndSick_ScriptId = tChildrenHideAndSick_Script[nChildrenHideAndSick_RandomChangeMsg][2]
	
	-- 进入副本失败
	if not User_EnterInstance(nChildrenHideAndSick_InstanceId,0,0,0,nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 进入副本成功 删除玩家游玩卷
	if not Item_DelMulItem(nChildrenHideAndSick_CardId, nChildrenHideAndSick_CardId, 1) then
		return
	end
	
	-- 记录花费游玩卷参与捉迷藏的log
	Sys_SaveActionFestivalLog(string.format(tChildrenHideAndSick_Log["DelCard"],nChildrenHideAndSick_CardId,nChildrenHideAndSick_RandomChangeMsg),nChildrenHideAndSick_UserId)
	
	-- 打掩码 清空本轮领奖记录
	ChildrenHideAndSick_SetStcValue(2,0)
	User_SetTimer(tChildrenHideAndSick_Cont["TimerMax"], "NULL", 1, nChildrenHideAndSick_UserId)
	-- 进入副本成功 清空临时表数据 重新存入剧情脚本id到临时表
	ChildrenHideAndSick_ClearTempTable(nChildrenHideAndSick_UserId)
	
	-- 剧情脚本id索引存到玩家临时表
	tChildrenHideAndSick_ScriptIndex_Temp[nChildrenHideAndSick_UserId] = nChildrenHideAndSick_RandomChangeMsg
	
	tChildrenHideAndSick_EnterTime_Temp[nChildrenHideAndSick_UserId] = os.time()
	User_PlayPlot(nChildrenHideAndSick_ScriptId)
end

-- 开始游戏 删除三个npc 创建三个npc
function ChildrenHideAndSick_BeginGame()
	local nChildrenHideAndSick_UserId = Get_UserId()
	
	local nChildrenHideAndSick_ScriptIndex = tChildrenHideAndSick_ScriptIndex_Temp[nChildrenHideAndSick_UserId]
	
	-- 临时表不存在值 跳出
	if nChildrenHideAndSick_ScriptIndex == nil or nChildrenHideAndSick_ScriptIndex == 0 then
		return
	end
	
	-- 点击陶小龙 开始游戏 是否参加游戏的临时表记1
	tChildrenHideAndSick_IsBegin_Temp[nChildrenHideAndSick_UserId] = 1
	
	local nChildrenHideAndSick_MapId = Get_UserMapId()
	
	-- 删除面前的三个小孩npc
	local sChildrenHideAndSick_NpcName1 = tChildrenHideAndSick_NpcInfo[26494]["Name"]
	local sChildrenHideAndSick_NpcName2 = tChildrenHideAndSick_NpcInfo[26495]["Name"]
	local sChildrenHideAndSick_NpcName3 = tChildrenHideAndSick_NpcInfo[26496]["Name"]
	
	local nChildrenHideAndSick_EffectX1 = tChildrenHideAndSick_NpcPos["Kid"][26494][1]
	local nChildrenHideAndSick_EffectX2 = tChildrenHideAndSick_NpcPos["Kid"][26495][1]
	local nChildrenHideAndSick_EffectX3 = tChildrenHideAndSick_NpcPos["Kid"][26496][1]
	local nChildrenHideAndSick_EffectY1 = tChildrenHideAndSick_NpcPos["Kid"][26494][2]
	local nChildrenHideAndSick_EffectY2 = tChildrenHideAndSick_NpcPos["Kid"][26495][2]
	local nChildrenHideAndSick_EffectY3 = tChildrenHideAndSick_NpcPos["Kid"][26496][2]
	
	Map_Effect(nChildrenHideAndSick_MapId, nChildrenHideAndSick_EffectX1, nChildrenHideAndSick_EffectY1, tChildrenHideAndSick_Cont["Effect"]["DelKidNpc"])
	Npc_DelDynaNpc(nChildrenHideAndSick_MapId,"name",tostring(sChildrenHideAndSick_NpcName1))
	Map_Effect(nChildrenHideAndSick_MapId, nChildrenHideAndSick_EffectX2, nChildrenHideAndSick_EffectY2, tChildrenHideAndSick_Cont["Effect"]["DelKidNpc"])
	Npc_DelDynaNpc(nChildrenHideAndSick_MapId,"name",tostring(sChildrenHideAndSick_NpcName2))
	Map_Effect(nChildrenHideAndSick_MapId, nChildrenHideAndSick_EffectX3, nChildrenHideAndSick_EffectY3, tChildrenHideAndSick_Cont["Effect"]["DelKidNpc"])
	Npc_DelDynaNpc(nChildrenHideAndSick_MapId,"name",tostring(sChildrenHideAndSick_NpcName3))
	
	User_EffectAdd("self",tChildrenHideAndSick_Cont["Effect"]["BeginGame"],nChildrenHideAndSick_UserId)
	
	Sys_MsgBox(tChildrenHideAndSick_Text["Sys"]["Game"]["GameBegin"])
	
	-- 创建3个 假 家具npc
	for i, v in pairs(tChildrenHideAndSick_ChangeMsg["Fake"][nChildrenHideAndSick_ScriptIndex]) do
		local sChildrenHideAndSick_NpcName = tChildrenHideAndSick_NpcInfo[v]["Name"]
		local nChildrenHideAndSick_LookFace = tChildrenHideAndSick_NpcInfo[v]["LookFace"]
		local nChildrenHideAndSick_ActionId = tChildrenHideAndSick_NpcInfo[v]["ActionId"]
		local nChildrenHideAndSick_Type = tChildrenHideAndSick_NpcInfo[v]["Type"]
		
		if type(tChildrenHideAndSick_NpcInfo[v]) == "table" then
			-- 获取坐标
			local nChildrenHideAndSick_PosX = tChildrenHideAndSick_NpcPos[nChildrenHideAndSick_ScriptIndex][v][1]
			local nChildrenHideAndSick_PosY = tChildrenHideAndSick_NpcPos[nChildrenHideAndSick_ScriptIndex][v][2]
			Npc_CreateDynaNpc(sChildrenHideAndSick_NpcName,nChildrenHideAndSick_Type,1,nChildrenHideAndSick_LookFace,0,nil,nChildrenHideAndSick_MapId,nChildrenHideAndSick_PosX,nChildrenHideAndSick_PosY,0,0,0,nChildrenHideAndSick_ActionId)
		end
	end
	
	-- 开始游戏 记录log
	Sys_SaveActionFestivalLog(string.format(tChildrenHideAndSick_Log["BeginGame"],nChildrenHideAndSick_ScriptIndex),nChildrenHideAndSick_UserId)
end

-- 家具npc
function ChildrenHideAndSick_Furniture(nChildrenHideAndSick_NpcId)
	local nChildrenHideAndSick_UserId = Get_UserId()
	
	local nChildrenHideAndSick_NpcFace = tonumber(string.sub(tChildrenHideAndSick_NpcInfo[nChildrenHideAndSick_NpcId]["LookFace"],1,-2))
	tNpcFace[nChildrenHideAndSick_NpcFace] = nil
	
	-- 时间 等级 未达到
	if not ChildrenHideAndSick_TimeAndLevel(nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 超过300s点击npc 传送出副本
	local nChildrenHideAndSick_NowTime = os.time()
	if tChildrenHideAndSick_EnterTime_Temp[nChildrenHideAndSick_UserId] == nil or tChildrenHideAndSick_EnterTime_Temp[nChildrenHideAndSick_UserId] == 0 then
		Sys_MsgBox(tChildrenHideAndSick_Text["Sys"]["Game"]["TooLong"], "ChildrenHideAndSick_LeaveAndReward</N>2</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveAndReward</N>2</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
		return
	end
	
	if tonumber(nChildrenHideAndSick_NowTime) - tonumber(tChildrenHideAndSick_EnterTime_Temp[nChildrenHideAndSick_UserId]) > tChildrenHideAndSick_Cont["TimerMax"] then
		Sys_MsgBox(tChildrenHideAndSick_Text["Sys"]["Game"]["TooLong"], "ChildrenHideAndSick_LeaveAndReward</N>2</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveAndReward</N>2</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
		return
	end
	
	-- 玩家没有和小孩对话之前 不能和家具互动 出105提示玩家去找小孩
	if tChildrenHideAndSick_IsBegin_Temp[nChildrenHideAndSick_UserId] == nil or tChildrenHideAndSick_IsBegin_Temp[nChildrenHideAndSick_UserId] == 0 then
		Sys_MsgBox(tChildrenHideAndSick_Text["Sys"]["Game"]["Furniture"], "ChildrenHideAndSick_FindNpc", nil, nChildrenHideAndSick_UserId)
		return
	end
	
	-- 判断次数或人数已满
	if ChildrenHideAndSick_FindMsg(nChildrenHideAndSick_UserId) then
		return
	end
	
	if ChildrenHideAndSick_IsJudgeNpc(nChildrenHideAndSick_NpcId) then
		LinkNpcGossipFunc_New(nChildrenHideAndSick_NpcId, "1-2")
	end
	
	LinkNpcGossipFunc_New(nChildrenHideAndSick_NpcId, "1-1")
end

-- 是否判断过当前家具npc true 已判断 false 未判断
-- 参1 npcid 参2 玩家id
function ChildrenHideAndSick_IsJudgeNpc(nChildrenHideAndSick_NpcId, nChildrenHideAndSick_NowUserId)
	local nChildrenHideAndSick_UserId = nChildrenHideAndSick_NowUserId or Get_UserId()
	
	local nChildrenHideAndSick_NowData = tChildrenHideAndSick_IsJudgeNpc_Temp[nChildrenHideAndSick_UserId]
	local nChildrenHideAndSick_TotalData = tChildrenHideAndSick_IsJudgeNpcFlag[nChildrenHideAndSick_NpcId]
	
	if nChildrenHideAndSick_NowData == nil or nChildrenHideAndSick_NowData == 0 then
		return false
	end
	
	-- 已经过判断过当前npc
	if Sys_ParseNumbersContain(nChildrenHideAndSick_TotalData,nChildrenHideAndSick_NowData) then
		return true
	end
	
	return false
end

-- 剧情副本结束触发接口 创建小孩和5个家具npc
-- 参1 玩家id 参2 剧情副本id 参3 剧情副本结束状态
function ChildrenHideAndSick_CreateNpc(nChildrenHideAndSick_UserId, nChildrenHideAndSick_PlayerId, nChildrenHideAndSick_PlayStatus)
	-- 当前剧情脚本索引下标 存放在临时表
	local nChildrenHideAndSick_ScriptIndex = tChildrenHideAndSick_ScriptIndex_Temp[nChildrenHideAndSick_UserId]
	
	-- 临时表不存在值 跳出
	if nChildrenHideAndSick_ScriptIndex == nil or nChildrenHideAndSick_ScriptIndex == 0 then
		return
	end
	local nChildrenHideAndSick_ScriptId = tChildrenHideAndSick_Script[nChildrenHideAndSick_ScriptIndex][2]
	
	-- 不是当前剧情脚本 跳出
	if nChildrenHideAndSick_PlayerId ~= nChildrenHideAndSick_ScriptId then
		return
	end
	
	-- 剧情脚本播放后 清临时表
	-- ChildrenHideAndSick_ClearTempTable(nChildrenHideAndSick_UserId)
	-- -- 重新存回 剧情脚本索引下标
	-- tChildrenHideAndSick_ScriptIndex_Temp[nChildrenHideAndSick_UserId] = nChildrenHideAndSick_ScriptIndex
	
	-- 创建真的 家具npc 创建 小孩 npc
	local tChildrenHideAndSick_NewFakeFurniture = CommonFunc_Copy(tChildrenHideAndSick_ChangeMsg["Fake"])
	local tChildrenHideAndSick_NewKidToFurniture = CommonFunc_Copy(tChildrenHideAndSick_Kid["Id"])
	for i = 1, 3 do
		-- 确定哪几个家具npc是伪装的
		ChildrenHideAndSick_FakeFurniture(tChildrenHideAndSick_NewFakeFurniture,nChildrenHideAndSick_UserId)
		-- 小孩伪装成了哪个npc
		ChildrenHideAndSick_KidToFurniture(tChildrenHideAndSick_NewKidToFurniture,nChildrenHideAndSick_UserId)
	end
	
	if not ChildrenHideAndSick_ChkInstance(nChildrenHideAndSick_UserId) then
		return
	end
	local nChildrenHideAndSick_MapId = Get_UserMapId(nChildrenHideAndSick_UserId)
	
	-- 创建npc 三个小孩npc
	for i, v in pairs(tChildrenHideAndSick_NpcPos["Kid"]) do
		
		local sChildrenHideAndSick_KidNpcName = tChildrenHideAndSick_NpcInfo[i]["Name"]
		local nChildrenHideAndSick_KidLookFace = tChildrenHideAndSick_NpcInfo[i]["LookFace"]
		local nChildrenHideAndSick_KidActionId = tChildrenHideAndSick_NpcInfo[i]["ActionId"]
		local nChildrenHideAndSick_KidType = tChildrenHideAndSick_NpcInfo[i]["Type"]
		
		if type(tChildrenHideAndSick_NpcInfo[i]) == "table" then
			-- 获取坐标
			local nChildrenHideAndSick_KidPosX = tChildrenHideAndSick_NpcPos["Kid"][i][1]
			local nChildrenHideAndSick_KidPosY = tChildrenHideAndSick_NpcPos["Kid"][i][2]
			Npc_CreateDynaNpc(sChildrenHideAndSick_KidNpcName,nChildrenHideAndSick_KidType,1,nChildrenHideAndSick_KidLookFace,0,nil,nChildrenHideAndSick_MapId,nChildrenHideAndSick_KidPosX,nChildrenHideAndSick_KidPosY,0,0,0,nChildrenHideAndSick_KidActionId)
		end
	end
	
	-- 创建5个 真 家具npc
	for i, v in pairs(tChildrenHideAndSick_ChangeMsg["Real"][nChildrenHideAndSick_ScriptIndex]) do
		local sChildrenHideAndSick_FurnitureNpcName = tChildrenHideAndSick_NpcInfo[v]["Name"]
		local nChildrenHideAndSick_FurnitureLookFace = tChildrenHideAndSick_NpcInfo[v]["LookFace"]
		local nChildrenHideAndSick_FurnitureActionId = tChildrenHideAndSick_NpcInfo[v]["ActionId"]
		local nChildrenHideAndSick_FurnitureType = tChildrenHideAndSick_NpcInfo[v]["Type"]
		
		if type(tChildrenHideAndSick_NpcInfo[v]) == "table" then
			-- 获取坐标
			local nChildrenHideAndSick_FurniturePosX = tChildrenHideAndSick_NpcPos[nChildrenHideAndSick_ScriptIndex][v][1]
			local nChildrenHideAndSick_FurniturePosY = tChildrenHideAndSick_NpcPos[nChildrenHideAndSick_ScriptIndex][v][2]
			Npc_CreateDynaNpc(sChildrenHideAndSick_FurnitureNpcName,nChildrenHideAndSick_FurnitureType,1,nChildrenHideAndSick_FurnitureLookFace,0,nil,nChildrenHideAndSick_MapId,nChildrenHideAndSick_FurniturePosX,nChildrenHideAndSick_FurniturePosY,0,0,0,nChildrenHideAndSick_FurnitureActionId)
		end
	end
end

-- 伪装的npc
function ChildrenHideAndSick_FakeFurniture(tChildrenHideAndSick_NewFakeFurniture, nChildrenHideAndSick_UserId)
	
	local nChildrenHideAndSick_ScriptIndex = tChildrenHideAndSick_ScriptIndex_Temp[nChildrenHideAndSick_UserId]
	
	-- 剧情脚本索引不存在 跳出
	if nChildrenHideAndSick_ScriptIndex == nil or nChildrenHideAndSick_ScriptIndex == 0 then
		return
	end
	
	
	for i,v in ipairs (tChildrenHideAndSick_NewFakeFurniture[nChildrenHideAndSick_ScriptIndex]) do
		table.insert(tChildrenHideAndSick_FakeFurniture_Temp[nChildrenHideAndSick_UserId],v)
	end
end

-- 小孩伪装成了哪个npc
function ChildrenHideAndSick_KidToFurniture(tChildrenHideAndSick_NewKidToFurniture,nChildrenHideAndSick_UserId)
	
	local nChildrenHideAndSick_RandomKidToFurnitureIndex = math.random(1,#tChildrenHideAndSick_NewKidToFurniture)
	local nChildrenHideAndSick_KidToFurniture = tChildrenHideAndSick_NewKidToFurniture[nChildrenHideAndSick_RandomKidToFurnitureIndex]
	
	if type(tChildrenHideAndSick_KidToFurniture_Temp[nChildrenHideAndSick_UserId]) ~= "table" then
		tChildrenHideAndSick_KidToFurniture_Temp[nChildrenHideAndSick_UserId] = {}
	end
	table.insert(tChildrenHideAndSick_KidToFurniture_Temp[nChildrenHideAndSick_UserId],nChildrenHideAndSick_KidToFurniture)
	
	ChildrenHideAndSick_RemoveRandom(tChildrenHideAndSick_NewKidToFurniture,nChildrenHideAndSick_KidToFurniture)
end

-- 移出已经伪装过的npc
function ChildrenHideAndSick_RemoveRandom(tChildrenHideAndSick_Tab,nChildrenHideAndSick_NpcId)
	for i = #tChildrenHideAndSick_Tab, 1, -1 do
		if nChildrenHideAndSick_NpcId == tChildrenHideAndSick_Tab[i] then
			table.remove(tChildrenHideAndSick_Tab,i)
		end
	end
end

-- 和家具对话 判断是否是伪装的
function ChildrenHideAndSick_TrueSetExplor(nChildrenHideAndSick_NpcId)
	local nChildrenHideAndSick_UserId = Get_UserId()
	
	-- 时间 等级 未达到
	if not ChildrenHideAndSick_TimeAndLevel(nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 已经判断过
	if ChildrenHideAndSick_IsJudgeNpc(nChildrenHideAndSick_NpcId) then
		LinkNpcGossipFunc_New(nChildrenHideAndSick_NpcId,"1-2")
		return
	end
	
	-- 判断次数或人数已满
	if ChildrenHideAndSick_FindMsg(nChildrenHideAndSick_UserId) then
		return
	end
	
	local nChildrenHideAndSick_Seconds = tChildrenHideAndSick_Cont["ReadBar"]
	local sChildrenHideAndSick_Content = tChildrenHideAndSick_Text["Sys"]["Game"]["ReadBar"]
	User_SetExplore(nChildrenHideAndSick_Seconds,sChildrenHideAndSick_Content,100,"ChildrenHideAndSick_True</N>"..nChildrenHideAndSick_NpcId,nil,nChildrenHideAndSick_UserId)
end

function ChildrenHideAndSick_True(nChildrenHideAndSick_NpcId,nChildrenHideAndSick_NowUserId)
	local nChildrenHideAndSick_UserId = nChildrenHideAndSick_NowUserId or Get_UserId()
	
	-- 时间 等级 未达到
	if not ChildrenHideAndSick_TimeAndLevel(nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 已经判断过
	if ChildrenHideAndSick_IsJudgeNpc(nChildrenHideAndSick_NpcId, nChildrenHideAndSick_UserId) then
		LinkNpcGossipFunc_New(nChildrenHideAndSick_NpcId,"1-2",nil,nil, nChildrenHideAndSick_UserId)
		return
	end
	
	-- 判断次数或人数已满
	if ChildrenHideAndSick_FindMsg(nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 猜过的次数 +1
	if tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] == nil then
		tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] = 0
	end
	tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] = tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] + 1
	
	local nChildrenHideAndSick_Flag = false
	local nChildrenHideAndSick_KidNpcId
	
	-- 本轮伪装的家具id为空 
	if type(tChildrenHideAndSick_FakeFurniture_Temp[nChildrenHideAndSick_UserId]) ~= "table" or #tChildrenHideAndSick_FakeFurniture_Temp[nChildrenHideAndSick_UserId] == 0 then
		return
	end
	
	for i, v in pairs(tChildrenHideAndSick_FakeFurniture_Temp[nChildrenHideAndSick_UserId]) do
		if v == nChildrenHideAndSick_NpcId then
			nChildrenHideAndSick_KidNpcId = tChildrenHideAndSick_KidToFurniture_Temp[nChildrenHideAndSick_UserId][i]
			nChildrenHideAndSick_Flag = true
			break
		end
	end
	-- 判断过 + 1
	if tChildrenHideAndSick_IsJudgeNpc_Temp[nChildrenHideAndSick_UserId] == nil then
		tChildrenHideAndSick_IsJudgeNpc_Temp[nChildrenHideAndSick_UserId] = 0
	end
	
	tChildrenHideAndSick_IsJudgeNpc_Temp[nChildrenHideAndSick_UserId] = tChildrenHideAndSick_IsJudgeNpc_Temp[nChildrenHideAndSick_UserId] + tChildrenHideAndSick_IsJudgeNpcFlag[nChildrenHideAndSick_NpcId]
	
	local nChildrenHideAndSick_MapId = Get_UserMapId(nChildrenHideAndSick_UserId)
	
	-- 家具npc数据
	local nChildrenHideAndSick_ScriptIndex = tChildrenHideAndSick_ScriptIndex_Temp[nChildrenHideAndSick_UserId]
	
	if nChildrenHideAndSick_ScriptIndex == nil or nChildrenHideAndSick_ScriptIndex == 0 then
		return
	end
	local nChildrenHideAndSick_ScriptId = tChildrenHideAndSick_Script[nChildrenHideAndSick_ScriptIndex][2]
	
	local sChildrenHideAndSick_FurnitrueName = tChildrenHideAndSick_NpcInfo[nChildrenHideAndSick_NpcId]["Name"]
	
	local nChildrenHideAndSick_PosX = tChildrenHideAndSick_NpcPos[nChildrenHideAndSick_ScriptIndex][nChildrenHideAndSick_NpcId][1]
	local nChildrenHideAndSick_PosY = tChildrenHideAndSick_NpcPos[nChildrenHideAndSick_ScriptIndex][nChildrenHideAndSick_NpcId][2]
	
	if nChildrenHideAndSick_Flag == false or nChildrenHideAndSick_KidNpcId == nil then
		Map_Effect(nChildrenHideAndSick_MapId, nChildrenHideAndSick_PosX, nChildrenHideAndSick_PosY, tChildrenHideAndSick_Cont["Effect"]["Hammer"])
		LinkNpcGossipFunc_New(nChildrenHideAndSick_NpcId,"2-2",nil,nil,nChildrenHideAndSick_UserId)
		Map_Effect(nChildrenHideAndSick_MapId, nChildrenHideAndSick_PosX, nChildrenHideAndSick_PosY, tChildrenHideAndSick_Cont["Effect"]["Wrong"])
		-- 判断次数或人数已满
		if ChildrenHideAndSick_FindMsg(nChildrenHideAndSick_UserId) then
			ChildrenHideAndSick_GetReward(1, nChildrenHideAndSick_UserId)
		end
		return
	end
	
	tNpcGossip[nChildrenHideAndSick_NpcId]["Text211"] = ""
	local sChildrenHideAndSick_Text211 = tChildrenHideAndSick_Text[nChildrenHideAndSick_NpcId]["Text211"]
	local nChildrenHideAndSick_NpcFace = tonumber(string.sub(tChildrenHideAndSick_NpcInfo[nChildrenHideAndSick_NpcId]["LookFace"],1,-2))
	tNpcFace[nChildrenHideAndSick_NpcFace] = nil
	
	-- 猜中小孩数量 +1
	if tChildrenHideAndSick_FindKidsNum_Temp[nChildrenHideAndSick_UserId] == nil then
		tChildrenHideAndSick_FindKidsNum_Temp[nChildrenHideAndSick_UserId] = 0
	end
	tChildrenHideAndSick_FindKidsNum_Temp[nChildrenHideAndSick_UserId] = tChildrenHideAndSick_FindKidsNum_Temp[nChildrenHideAndSick_UserId] + 1
	
	if not ChildrenHideAndSick_ChkInstance(nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 小孩npc数据
	local sChildrenHideAndSick_KidName = tChildrenHideAndSick_NpcInfo[nChildrenHideAndSick_KidNpcId]["Name"]
	local nChildrenHideAndSick_Type = tChildrenHideAndSick_NpcInfo[nChildrenHideAndSick_KidNpcId]["Type"]
	local nChildrenHideAndSick_LookFace = tChildrenHideAndSick_NpcInfo[nChildrenHideAndSick_KidNpcId]["LookFace"]
	local nChildrenHideAndSick_ActionId = tChildrenHideAndSick_NpcInfo[nChildrenHideAndSick_KidNpcId]["ActionId"]
	
	-- 删除家具npc
	Map_Effect(nChildrenHideAndSick_MapId, nChildrenHideAndSick_PosX, nChildrenHideAndSick_PosY, tChildrenHideAndSick_Cont["Effect"]["Hammer"])
	Npc_DelDynaNpc(nChildrenHideAndSick_MapId,"name",tostring(sChildrenHideAndSick_FurnitrueName))
	-- 打光效
	Map_Effect(nChildrenHideAndSick_MapId, nChildrenHideAndSick_PosX, nChildrenHideAndSick_PosY, tChildrenHideAndSick_Cont["Effect"]["Changed"])
	-- 创建小孩npc
	OnTimer_SetUserTimer(1, "ChildrenHideAndSick_CreateKid</S>"..tostring(sChildrenHideAndSick_KidName).."</N>"..nChildrenHideAndSick_Type.."</N>"..nChildrenHideAndSick_LookFace.."</N>"..nChildrenHideAndSick_PosX.."</N>"..nChildrenHideAndSick_PosY.."</N>"..nChildrenHideAndSick_ActionId, nChildrenHideAndSick_UserId)
	
	tNpcFace[nChildrenHideAndSick_NpcFace] = tChildrenHideAndSick_NpcInfo[nChildrenHideAndSick_KidNpcId]["NpcFace"]
	
	tNpcGossip[nChildrenHideAndSick_NpcId]["Text211"] = string.format(sChildrenHideAndSick_Text211, sChildrenHideAndSick_KidName)
	local nChildrenHideAndSick_OtherKidNums = tChildrenHideAndSick_Cont["FindKidsNum"]-tChildrenHideAndSick_FindKidsNum_Temp[nChildrenHideAndSick_UserId]
	local nChildrenHideAndSick_OtherFindTimes = tChildrenHideAndSick_Cont["FindTimes"]-tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId]
	LinkNpcGossipFunc_New(nChildrenHideAndSick_NpcId,"2-1",nil,nil,nChildrenHideAndSick_UserId)
	Sys_MsgBox(string.format(tChildrenHideAndSick_Text["Sys"]["Game"]["Right"],tChildrenHideAndSick_FindKidsNum_Temp[nChildrenHideAndSick_UserId],nChildrenHideAndSick_OtherKidNums,nChildrenHideAndSick_OtherFindTimes),nil,nil,nChildrenHideAndSick_UserId)
	-- 判断次数或人数已满
	if ChildrenHideAndSick_FindMsg(nChildrenHideAndSick_UserId) then
		ChildrenHideAndSick_GetReward(1, nChildrenHideAndSick_UserId)
		return
	end
end

function ChildrenHideAndSick_CreateKid(sChildrenHideAndSick_KidName,nChildrenHideAndSick_Type,nChildrenHideAndSick_LookFace,nChildrenHideAndSick_PosX,nChildrenHideAndSick_PosY,nChildrenHideAndSick_ActionId,nChildrenHideAndSick_NowUserId)
	local nChildrenHideAndSick_UserId = nChildrenHideAndSick_NowUserId or Get_UserId()
	
	local nChildrenHideAndSick_MapId = Get_UserMapId(nChildrenHideAndSick_UserId)
	
	if nChildrenHideAndSick_MapId == nil or nChildrenHideAndSick_MapId == -1 then
		return
	end
	
	local nChildrenHideAndSick_MapDoc = Get_MapDoc(nChildrenHideAndSick_MapId)
	
	if nChildrenHideAndSick_MapDoc == nil or nChildrenHideAndSick_MapDoc ~= tChildrenHideAndSick_Cont["MapDoc"] then
		return
	end
	
	Npc_CreateDynaNpc(sChildrenHideAndSick_KidName,nChildrenHideAndSick_Type,1,nChildrenHideAndSick_LookFace,0,nil,nChildrenHideAndSick_MapId,nChildrenHideAndSick_PosX,nChildrenHideAndSick_PosY,0,0,0,nChildrenHideAndSick_ActionId)
end

-- 判断次数或人数已满
function ChildrenHideAndSick_FindMsg(nChildrenHideAndSick_UserId)
	
	-- 没有找过小孩
	if tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] == nil or tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] == 0 then
		return false
	end
	
	-- 猜过5次
	if tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] == tChildrenHideAndSick_Cont["FindTimes"] then
		Sys_MsgBox(tChildrenHideAndSick_Text["Sys"]["Game"]["FoundFive"], "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
		return true
	end
	
	-- 猜中的小孩数量
	if tChildrenHideAndSick_FindKidsNum_Temp[nChildrenHideAndSick_UserId] == nil then
		return false
	end
	
	-- 猜中3次 10%g概率出全服公告
	if tChildrenHideAndSick_FindKidsNum_Temp[nChildrenHideAndSick_UserId] == tChildrenHideAndSick_Cont["FindKidsNum"] then
		Sys_MsgBox(tChildrenHideAndSick_Text["Sys"]["Game"]["FoundTrhee"], "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
		
		if Sys_Random(tChildrenHideAndSick_Broadcast["Chance"][1],tChildrenHideAndSick_Broadcast["Chance"][2]) then
			local sChildrenHideAndSick_UserName = Get_UserName(nChildrenHideAndSick_UserId)
			Sys_TalkBroadcast(string.format(tChildrenHideAndSick_Text["Sys"]["Game"]["Broadcast"],sChildrenHideAndSick_UserName))
		end
		return true
	end
	
	return false
end

-- 副本内寻路
function ChildrenHideAndSick_FindNpc()
	local nChildrenHideAndSick_UserId = Get_UserId()
	local nChildrenHideAndSick_MapId = Get_UserMapId()
	local nChildrenHideAndSick_MainNpcId = tChildrenHideAndSick_FindNpc[26494]
	
	local nChildrenHideAndSick_PosX = tChildrenHideAndSick_NpcPos["Kid"][26494][1]
	local nChildrenHideAndSick_PosY = tChildrenHideAndSick_NpcPos["Kid"][26494][2]
	
	Sys_GotoSomeWhere(nChildrenHideAndSick_PosX,nChildrenHideAndSick_PosY,nChildrenHideAndSick_MapId,nChildrenHideAndSick_MainNpcId)
	-- ChildrenHideAndSick_Kid(26494)
end

-- 次数或人数满 发奖 nIndex 1 完全结束游戏后领奖 2 陷阱/计时器离开领奖
function ChildrenHideAndSick_GetReward(nChildrenHideAndSick_Index, nChildrenHideAndSick_NowUserId)
	local nChildrenHideAndSick_UserId = nChildrenHideAndSick_NowUserId or Get_UserId()
	
	-- 不在副本地图 不能领奖
	if not ChildrenHideAndSick_ChkInstance(nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 本轮已经领奖
	if not ChildrenHideAndSick_ChkStcValue(2, nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 本轮找了几个小孩 临时表空 不能领奖
	-- if tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] == nil or tChildrenHideAndSick_FindKidsNum_Temp[nChildrenHideAndSick_UserId] == nil then
		-- return
	-- end
	local nChildrenHideAndSick_FindKidsNum = 0 -- 找到小孩的数量 0 表示获得保底奖励 
	-- 没有和npc对话开始游戏 则不能领奖 -- 防刷 避免玩家直接离开副本获取游戏币
	-- if tChildrenHideAndSick_IsBegin_Temp[nChildrenHideAndSick_UserId] == nil or tChildrenHideAndSick_IsBegin_Temp[nChildrenHideAndSick_UserId] == 0 then
		-- return
	-- end
	
	-- 完全结束游戏后领奖 
	if nChildrenHideAndSick_Index == 1 then
		nChildrenHideAndSick_FindKidsNum = tChildrenHideAndSick_FindKidsNum_Temp[nChildrenHideAndSick_UserId]
	end
	
	-- 陷阱/计时器离开领奖 只领取保底奖励
	if nChildrenHideAndSick_Index == 2 then
		nChildrenHideAndSick_FindKidsNum = 0
	end
	
	-- 根据猜中人数给奖励
	local nChildrenHideAndSick_Action = tChildrenHideAndSick_Action[nChildrenHideAndSick_FindKidsNum]
	local sChildrenHideAndSick_Sender = tChildrenHideAndSick_Text["Email"]["Sender"]
	local sChildrenHideAndSick_Title = tChildrenHideAndSick_Text["Email"]["Title"]
	local sChildrenHideAndSick_Content = tChildrenHideAndSick_Text["Email"]["Content"][nChildrenHideAndSick_FindKidsNum]
	
	-- 打掩码 表示本轮已领取
	if not ChildrenHideAndSick_SetStcValue(2,1,nChildrenHideAndSick_UserId) then
		return
	end
	
	-- 需要的背包空间
	local nChildrenHideAndSick_Space = RewardTemplate_GetRewardSpace(tChildrenHideAndSick_Reward["FindKidsNum"][nChildrenHideAndSick_FindKidsNum])
	
	-- 背包空间不足 发邮件
	if not User_CheckLeftSpace(nChildrenHideAndSick_Space, nChildrenHideAndSick_UserId) then
		if nChildrenHideAndSick_Index == 2 then
			sChildrenHideAndSick_Content = tChildrenHideAndSick_Text["Sys"]["Game"]["BasicReward"]
			Sys_SendMail(nChildrenHideAndSick_UserId, 0,0, nChildrenHideAndSick_Action,0,7,sChildrenHideAndSick_Sender,sChildrenHideAndSick_Title,sChildrenHideAndSick_Content)
			Sys_MsgBox(tChildrenHideAndSick_Text["Sys"]["Game"]["BasicReward"], "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
			return
		end
		if nChildrenHideAndSick_FindKidsNum == 0 then
			Sys_SendMail(nChildrenHideAndSick_UserId, 0,0, nChildrenHideAndSick_Action,0,7,sChildrenHideAndSick_Sender,sChildrenHideAndSick_Title,string.format(sChildrenHideAndSick_Content,tChildrenHideAndSick_RewardMsg[nChildrenHideAndSick_FindKidsNum][2]))
			Sys_MsgBox(string.format(tChildrenHideAndSick_Text["Sys"]["Game"]["FindEmail"][nChildrenHideAndSick_FindKidsNum],tChildrenHideAndSick_RewardMsg[nChildrenHideAndSick_FindKidsNum][1],tChildrenHideAndSick_RewardMsg[nChildrenHideAndSick_FindKidsNum][2]), "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
		else
			if tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] == tChildrenHideAndSick_Cont["FindTimes"] then
				Sys_MsgBox(string.format(tChildrenHideAndSick_Text["Sys"]["Game"]["FindEmail"][nChildrenHideAndSick_FindKidsNum],tChildrenHideAndSick_RewardMsg[nChildrenHideAndSick_FindKidsNum][1],tChildrenHideAndSick_RewardMsg[nChildrenHideAndSick_FindKidsNum][2]), "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
			else
				Sys_MsgBox(string.format(tChildrenHideAndSick_Text["Sys"]["Game"]["FindEmail"][100],tChildrenHideAndSick_RewardMsg[nChildrenHideAndSick_FindKidsNum][2]), "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
			end
			Sys_SendMail(nChildrenHideAndSick_UserId, 0,0, nChildrenHideAndSick_Action,0,7,sChildrenHideAndSick_Sender,sChildrenHideAndSick_Title,string.format(sChildrenHideAndSick_Content,tChildrenHideAndSick_RewardMsg[nChildrenHideAndSick_FindKidsNum][1],tChildrenHideAndSick_RewardMsg[nChildrenHideAndSick_FindKidsNum][2]))
		end
		return
	end
	
	-- 背包空间足够 奖励进背包
	if RewardTemplate_UseItem(tChildrenHideAndSick_Reward["FindKidsNum"][nChildrenHideAndSick_FindKidsNum], nChildrenHideAndSick_UserId) then
		if nChildrenHideAndSick_Index == 2 then
			Sys_MsgBox(tChildrenHideAndSick_Text["Sys"]["Game"]["BasicReward"], "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
			return
		end
		if nChildrenHideAndSick_FindKidsNum == 0 then
			Sys_MsgBox(string.format(tChildrenHideAndSick_Text["Sys"]["Game"]["Find"][nChildrenHideAndSick_FindKidsNum],tChildrenHideAndSick_RewardMsg[nChildrenHideAndSick_FindKidsNum][2]), "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
		else
			-- 耗费5次机会
			if tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] == tChildrenHideAndSick_Cont["FindTimes"] then
				Sys_MsgBox(string.format(tChildrenHideAndSick_Text["Sys"]["Game"]["Find"][nChildrenHideAndSick_FindKidsNum],tChildrenHideAndSick_RewardMsg[nChildrenHideAndSick_FindKidsNum][1],tChildrenHideAndSick_RewardMsg[nChildrenHideAndSick_FindKidsNum][2]), "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
			else
				Sys_MsgBox(string.format(tChildrenHideAndSick_Text["Sys"]["Game"]["Find"][100],tChildrenHideAndSick_RewardMsg[nChildrenHideAndSick_FindKidsNum][2]), "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, "ChildrenHideAndSick_LeaveInstance</N>"..nChildrenHideAndSick_UserId, nChildrenHideAndSick_UserId)
			end
			return
		end
		return
	end
	
	-- 清理临时表数据
	ChildrenHideAndSick_ClearTempTable(nChildrenHideAndSick_UserId)
end

-- 离开副本&领奖 接口
function ChildrenHideAndSick_LeaveAndReward(nChildrenHideAndSick_Index, nChildrenHideAndSick_UserId)
	
	-- 检测副本mapdoc
	if not ChildrenHideAndSick_ChkInstance(nChildrenHideAndSick_UserId) then
		return
	end
	
	-- ChildrenHideAndSick_GetReward(nChildrenHideAndSick_Index, nChildrenHideAndSick_UserId)
	ChildrenHideAndSick_LeaveInstance(nChildrenHideAndSick_UserId)
	
	-- 清理数据
	ChildrenHideAndSick_ClearTempTable(nChildrenHideAndSick_UserId)
end

function ChildrenHideAndSick_ChkInstance(nChildrenHideAndSick_UserId)
	local nChildrenHideAndSick_MapId = Get_UserMapId(nChildrenHideAndSick_UserId)
	local nChildrenHideAndSick_MapDoc = Get_MapDoc(nChildrenHideAndSick_MapId)
	
	if nChildrenHideAndSick_MapDoc ~= tChildrenHideAndSick_Cont["MapDoc"] then
		return false
	end
	
	return true
end

function ChildrenHideAndSick_ClearTempTable(nChildrenHideAndSick_UserId)
	-- 清空临时表数据
	tChildrenHideAndSick_IsBegin_Temp[nChildrenHideAndSick_UserId] = 0
	tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] = 0
	tChildrenHideAndSick_FindKidsNum_Temp[nChildrenHideAndSick_UserId] = 0
	tChildrenHideAndSick_IsJudgeNpc_Temp[nChildrenHideAndSick_UserId] = 0
	tChildrenHideAndSick_FakeFurniture_Temp[nChildrenHideAndSick_UserId] = {}
	tChildrenHideAndSick_KidToFurniture_Temp[nChildrenHideAndSick_UserId] = {}
	tChildrenHideAndSick_ScriptIndex_Temp[nChildrenHideAndSick_UserId] = 0
end

-- 陷阱逻辑
function ChildrenHideAndSick_TrapLeave()
	local nChildrenHideAndSick_UserId = Get_UserId()
	
	Sys_MsgBox(tChildrenHideAndSick_Text["Sys"]["Game"]["EarlyLeave"],"ChildrenHideAndSick_LeaveAndReward</N>2</N>"..nChildrenHideAndSick_UserId, nil, nChildrenHideAndSick_UserId)
end

-- 剩余次数
function ChildrenHideAndSick_ResidueTimes()
	local nChildrenHideAndSick_UserId = Get_UserId()
	
	-- 总次数
	local nChildrenHideAndSick_TotalTimes = tChildrenHideAndSick_Cont["FindTimes"]
	
	if tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] == nil then
		tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId] = 0
	end
	-- 总次数 - 当前使用次数 = 剩余次数
	local nChildrenHideAndSick_ResidueTimes = nChildrenHideAndSick_TotalTimes - tChildrenHideAndSick_FindTimes_Temp[nChildrenHideAndSick_UserId]
	
	return nChildrenHideAndSick_ResidueTimes
end

----------------------------------NPC部分---------------------------------------------
-- 26493,'胡迪'
tNpcFace[5063] = 59
tNpcGossip[26493]= tNpcGossip[26493] or DefaultNpc:new{}
tNpcGossip[26493]["OptionHidden"] = 1
tNpcGossip[26493]["DialogueText"] = tChildrenHideAndSick_Text[26493]

tNpcGossip[26493]["Text1-1"] = {111,112,113}
tNpcGossip[26493]["tOption1-1"] = {111,112}
tNpcGossip[26493]["OptionFunc111"] = "ChildrenHideAndSick_FreeGame</N>26493"
tNpcGossip[26493]["OptionChkFunc111"] = function()
	ChildrenHideAndSick_ClearStcValue(1)
	-- 每日有免费次数时显示
	return ChildrenHideAndSick_ChkStcValue(1)
end
tNpcGossip[26493]["OptionFunc112"] = "ChildrenHideAndSick_CardGame</N>26493"
tNpcGossip[26493]["OptionChkFunc112"] = function()
	ChildrenHideAndSick_ClearStcValue(1)
	-- 每日无免费次数时显示
	return not ChildrenHideAndSick_ChkStcValue(1)
end
-- 失败，没有游玩卷
tNpcGossip[26493]["Text2-1"] = {211,212,213,214,215,216}
tNpcGossip[26493]["tOption2-1"] = {211}


-- 26494,'陶小龙'
tNpcFace[2521] = 126
tNpcGossip[26494]= tNpcGossip[26494] or DefaultNpc:new{}
tNpcGossip[26494]["OptionHidden"] = 1
tNpcGossip[26494]["DialogueText"] = tChildrenHideAndSick_Text[26494]

tNpcGossip[26494]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[26494]["tOption1-1"] = {111,112}
tNpcGossip[26494]["OptionFunc111"] = "ChildrenHideAndSick_BeginGame"
tNpcGossip[26494]["OptionPoint112"] = "2-1"
-- 捉迷藏奖励规则
tNpcGossip[26494]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[26494]["tOption2-1"] = {211}

-- 猜中后随机对白
tNpcGossip[26494]["Text2-2"] = {221,222}
tNpcGossip[26494]["tOption2-2"] = {221}

-- 26495,'聪聪'
tNpcFace[2522] = 68
tNpcGossip[26495]= tNpcGossip[26495] or DefaultNpc:new{}
tNpcGossip[26495]["OptionHidden"] = 1
tNpcGossip[26495]["DialogueText"] = tChildrenHideAndSick_Text[26495]

tNpcGossip[26495]["Text1-1"] = {111,112,113,114}
tNpcGossip[26495]["tOption1-1"] = {111}
tNpcGossip[26495]["OptionFunc111"] = "ChildrenHideAndSick_FindNpc"

-- 猜中后随机对白
tNpcGossip[26495]["Text2-2"] = {221,222}
tNpcGossip[26495]["tOption2-2"] = {221}

-- 26496,'笨笨'
tNpcFace[2523] = 36
tNpcGossip[26496]= tNpcGossip[26496] or DefaultNpc:new{}
tNpcGossip[26496]["OptionHidden"] = 1
tNpcGossip[26496]["DialogueText"] = tChildrenHideAndSick_Text[26496]

tNpcGossip[26496]["Text1-1"] = {111,112,113,114}
tNpcGossip[26496]["tOption1-1"] = {111}
tNpcGossip[26496]["OptionFunc111"] = "ChildrenHideAndSick_FindNpc"

-- 猜中后随机对白
tNpcGossip[26496]["Text2-2"] = {221,222}
tNpcGossip[26496]["tOption2-2"] = {221}

--------------------------家具
tNpcFace[2524] = nil
tNpcFace[2525] = nil
tNpcFace[2526] = nil
tNpcFace[2527] = nil
tNpcFace[2528] = nil
tNpcFace[2529] = nil
tNpcFace[2530] = nil
tNpcFace[2531] = nil

-- 26497,'桌子'
tNpcGossip[26497]= tNpcGossip[26497] or DefaultNpc:new{}
tNpcGossip[26497]["OptionHidden"] = 1
tNpcGossip[26497]["DialogueText"] = tChildrenHideAndSick_Text[26497]

tNpcGossip[26497]["Text1-1"] = {111,112,113,114}
tNpcGossip[26497]["tOption1-1"] = {111,112}
tNpcGossip[26497]["ChkFunc1-1"] = function()
	tNpcGossip[26497]["Text114"] = ""
	local nChildrenHideAndSick_ResidueTimes = ChildrenHideAndSick_ResidueTimes()
	tNpcGossip[26497]["Text114"] = string.format(tChildrenHideAndSick_Text[26497]["Text114"],nChildrenHideAndSick_ResidueTimes)
	return not ChildrenHideAndSick_IsJudgeNpc(26497)
end
tNpcGossip[26497]["OptionFunc111"] = "ChildrenHideAndSick_TrueSetExplor</N>26497"

-- 玩家判断过，再次点击此物品
tNpcGossip[26497]["Text1-2"] = {121,122,123}
tNpcGossip[26497]["tOption1-2"] = {121}
tNpcGossip[26497]["ChkFunc1-2"] = function()
	return ChildrenHideAndSick_IsJudgeNpc(26497)
end
-- 回答正确
tNpcGossip[26497]["Text2-1"] = {211,212,213}
tNpcGossip[26497]["tOption2-1"] = {211}
-- 回答错误
tNpcGossip[26497]["Text2-2"] = {221,222}
tNpcGossip[26497]["tOption2-2"] = {221}

-- 26498,'红灯笼'
tNpcGossip[26498]= tNpcGossip[26498] or DefaultNpc:new{}
tNpcGossip[26498]["OptionHidden"] = 1
tNpcGossip[26498]["DialogueText"] = tChildrenHideAndSick_Text[26498]

tNpcGossip[26498]["Text1-1"] = {111,112,113,114}
tNpcGossip[26498]["tOption1-1"] = {111,112}
tNpcGossip[26498]["ChkFunc1-1"] = function()
	tNpcGossip[26498]["Text114"] = ""
	local nChildrenHideAndSick_ResidueTimes = ChildrenHideAndSick_ResidueTimes()
	tNpcGossip[26498]["Text114"] = string.format(tChildrenHideAndSick_Text[26498]["Text114"],nChildrenHideAndSick_ResidueTimes)
	return not ChildrenHideAndSick_IsJudgeNpc(26498)
end
tNpcGossip[26498]["OptionFunc111"] = "ChildrenHideAndSick_TrueSetExplor</N>26498"

-- 玩家判断过，再次点击此物品
tNpcGossip[26498]["Text1-2"] = {121,122,123}
tNpcGossip[26498]["tOption1-2"] = {121}
tNpcGossip[26498]["ChkFunc1-2"] = function()
	return ChildrenHideAndSick_IsJudgeNpc(26498)
end
-- 回答正确
tNpcGossip[26498]["Text2-1"] = {211,212,213}
tNpcGossip[26498]["tOption2-1"] = {211}
-- 回答错误
tNpcGossip[26498]["Text2-2"] = {221,222}
tNpcGossip[26498]["tOption2-2"] = {221}

-- 26499,'太师椅'
tNpcGossip[26499]= tNpcGossip[26499] or DefaultNpc:new{}
tNpcGossip[26499]["OptionHidden"] = 1
tNpcGossip[26499]["DialogueText"] = tChildrenHideAndSick_Text[26499]

tNpcGossip[26499]["Text1-1"] = {111,112,113,114}
tNpcGossip[26499]["tOption1-1"] = {111,112}
tNpcGossip[26499]["ChkFunc1-1"] = function()
	tNpcGossip[26499]["Text114"] = ""
	local nChildrenHideAndSick_ResidueTimes = ChildrenHideAndSick_ResidueTimes()
	tNpcGossip[26499]["Text114"] = string.format(tChildrenHideAndSick_Text[26499]["Text114"],nChildrenHideAndSick_ResidueTimes)
	return not ChildrenHideAndSick_IsJudgeNpc(26499)
end
tNpcGossip[26499]["OptionFunc111"] = "ChildrenHideAndSick_TrueSetExplor</N>26499"

-- 玩家判断过，再次点击此物品
tNpcGossip[26499]["Text1-2"] = {121,122,123}
tNpcGossip[26499]["tOption1-2"] = {121}
tNpcGossip[26499]["ChkFunc1-2"] = function()
	return ChildrenHideAndSick_IsJudgeNpc(26499)
end
-- 回答正确
tNpcGossip[26499]["Text2-1"] = {211,212,213}
tNpcGossip[26499]["tOption2-1"] = {211}
-- 回答错误
tNpcGossip[26499]["Text2-2"] = {221,222}
tNpcGossip[26499]["tOption2-2"] = {221}

-- 26500,'稻草人'
tNpcGossip[26500]= tNpcGossip[26500] or DefaultNpc:new{}
tNpcGossip[26500]["OptionHidden"] = 1
tNpcGossip[26500]["DialogueText"] = tChildrenHideAndSick_Text[26500]

tNpcGossip[26500]["Text1-1"] = {111,112,113,114}
tNpcGossip[26500]["tOption1-1"] = {111,112}
tNpcGossip[26500]["ChkFunc1-1"] = function()
	tNpcGossip[26500]["Text114"] = ""
	local nChildrenHideAndSick_ResidueTimes = ChildrenHideAndSick_ResidueTimes()
	tNpcGossip[26500]["Text114"] = string.format(tChildrenHideAndSick_Text[26500]["Text114"],nChildrenHideAndSick_ResidueTimes)
	return not ChildrenHideAndSick_IsJudgeNpc(26500)
end
tNpcGossip[26500]["OptionFunc111"] = "ChildrenHideAndSick_TrueSetExplor</N>26500"

-- 玩家判断过，再次点击此物品
tNpcGossip[26500]["Text1-2"] = {121,122,123}
tNpcGossip[26500]["tOption1-2"] = {121}
tNpcGossip[26500]["ChkFunc1-2"] = function()
	return ChildrenHideAndSick_IsJudgeNpc(26500)
end
-- 回答正确
tNpcGossip[26500]["Text2-1"] = {211,212,213}
tNpcGossip[26500]["tOption2-1"] = {211}
-- 回答错误
tNpcGossip[26500]["Text2-2"] = {221,222}
tNpcGossip[26500]["tOption2-2"] = {221}

-- 26501,'木桩'
tNpcGossip[26501]= tNpcGossip[26501] or DefaultNpc:new{}
tNpcGossip[26501]["OptionHidden"] = 1
tNpcGossip[26501]["DialogueText"] = tChildrenHideAndSick_Text[26501]

tNpcGossip[26501]["Text1-1"] = {111,112,113,114}
tNpcGossip[26501]["tOption1-1"] = {111,112}
tNpcGossip[26501]["ChkFunc1-1"] = function()
	tNpcGossip[26501]["Text114"] = ""
	local nChildrenHideAndSick_ResidueTimes = ChildrenHideAndSick_ResidueTimes()
	tNpcGossip[26501]["Text114"] = string.format(tChildrenHideAndSick_Text[26501]["Text114"],nChildrenHideAndSick_ResidueTimes)
	return not ChildrenHideAndSick_IsJudgeNpc(26501)
end
tNpcGossip[26501]["OptionFunc111"] = "ChildrenHideAndSick_TrueSetExplor</N>26501"

-- 玩家判断过，再次点击此物品
tNpcGossip[26501]["Text1-2"] = {121,122,123}
tNpcGossip[26501]["tOption1-2"] = {121}
tNpcGossip[26501]["ChkFunc1-2"] = function()
	return ChildrenHideAndSick_IsJudgeNpc(26501)
end
-- 回答正确
tNpcGossip[26501]["Text2-1"] = {211,212,213,214}
tNpcGossip[26501]["tOption2-1"] = {211}
-- 回答错误
tNpcGossip[26501]["Text2-2"] = {221,222,223}
tNpcGossip[26501]["tOption2-2"] = {221}

-- 26502,'药炉'
tNpcGossip[26502]= tNpcGossip[26502] or DefaultNpc:new{}
tNpcGossip[26502]["OptionHidden"] = 1
tNpcGossip[26502]["DialogueText"] = tChildrenHideAndSick_Text[26502]

tNpcGossip[26502]["Text1-1"] = {111,112,113,114}
tNpcGossip[26502]["tOption1-1"] = {111,112}
tNpcGossip[26502]["ChkFunc1-1"] = function()
	tNpcGossip[26502]["Text114"] = ""
	local nChildrenHideAndSick_ResidueTimes = ChildrenHideAndSick_ResidueTimes()
	tNpcGossip[26502]["Text114"] = string.format(tChildrenHideAndSick_Text[26502]["Text114"],nChildrenHideAndSick_ResidueTimes)
	return not ChildrenHideAndSick_IsJudgeNpc(26502)
end
tNpcGossip[26502]["OptionFunc111"] = "ChildrenHideAndSick_TrueSetExplor</N>26502"

-- 玩家判断过，再次点击此物品
tNpcGossip[26502]["Text1-2"] = {121,122,123}
tNpcGossip[26502]["tOption1-2"] = {121}
tNpcGossip[26502]["ChkFunc1-2"] = function()
	return ChildrenHideAndSick_IsJudgeNpc(26502)
end
-- 回答正确
tNpcGossip[26502]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[26502]["tOption2-1"] = {211}
-- 回答错误
tNpcGossip[26502]["Text2-2"] = {221,222,223}
tNpcGossip[26502]["tOption2-2"] = {221}

-- 26503,'储物箱'
tNpcGossip[26503]= tNpcGossip[26503] or DefaultNpc:new{}
tNpcGossip[26503]["OptionHidden"] = 1
tNpcGossip[26503]["DialogueText"] = tChildrenHideAndSick_Text[26503]

tNpcGossip[26503]["Text1-1"] = {111,112,113,114}
tNpcGossip[26503]["tOption1-1"] = {111,112}
tNpcGossip[26503]["ChkFunc1-1"] = function()
	tNpcGossip[26503]["Text114"] = ""
	local nChildrenHideAndSick_ResidueTimes = ChildrenHideAndSick_ResidueTimes()
	tNpcGossip[26503]["Text114"] = string.format(tChildrenHideAndSick_Text[26503]["Text114"],nChildrenHideAndSick_ResidueTimes)
	return not ChildrenHideAndSick_IsJudgeNpc(26503)
end
tNpcGossip[26503]["OptionFunc111"] = "ChildrenHideAndSick_TrueSetExplor</N>26503"

-- 玩家判断过，再次点击此物品
tNpcGossip[26503]["Text1-2"] = {121,122,123}
tNpcGossip[26503]["tOption1-2"] = {121}
tNpcGossip[26503]["ChkFunc1-2"] = function()
	return ChildrenHideAndSick_IsJudgeNpc(26503)
end
-- 回答正确
tNpcGossip[26503]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[26503]["tOption2-1"] = {211}
-- 回答错误
tNpcGossip[26503]["Text2-2"] = {221,222,223}
tNpcGossip[26503]["tOption2-2"] = {221}

-- 26504,'烟花筒'
tNpcGossip[26504]= tNpcGossip[26504] or DefaultNpc:new{}
tNpcGossip[26504]["OptionHidden"] = 1
tNpcGossip[26504]["DialogueText"] = tChildrenHideAndSick_Text[26504]

tNpcGossip[26504]["Text1-1"] = {111,112,113,114}
tNpcGossip[26504]["tOption1-1"] = {111,112}
tNpcGossip[26504]["ChkFunc1-1"] = function()
	tNpcGossip[26504]["Text114"] = ""
	local nChildrenHideAndSick_ResidueTimes = ChildrenHideAndSick_ResidueTimes()
	tNpcGossip[26504]["Text114"] = string.format(tChildrenHideAndSick_Text[26504]["Text114"],nChildrenHideAndSick_ResidueTimes)
	return not ChildrenHideAndSick_IsJudgeNpc(26504)
end
tNpcGossip[26504]["OptionFunc111"] = "ChildrenHideAndSick_TrueSetExplor</N>26504"

-- 玩家判断过，再次点击此物品
tNpcGossip[26504]["Text1-2"] = {121,122,123}
tNpcGossip[26504]["tOption1-2"] = {121}
tNpcGossip[26504]["ChkFunc1-2"] = function()
	return ChildrenHideAndSick_IsJudgeNpc(26504)
end
-- 回答正确
tNpcGossip[26504]["Text2-1"] = {211,212,213,214}
tNpcGossip[26504]["tOption2-1"] = {211}
-- 回答错误
tNpcGossip[26504]["Text2-2"] = {221,222,223,224}
tNpcGossip[26504]["tOption2-2"] = {221}


---------------------------------陷阱部分---------------------------------------------
tTrap[235] = tTrap[235] or {}--806为cq_traptype的id
tTrap[235]["Function"] = function(nTrapId,nTrapType)
	ChildrenHideAndSick_TrapLeave()
end

---------------------------------剧情函数回调---------------------------------------------
tLuaEffectEnd["tFunction"] = tLuaEffectEnd["tFunction"] or {}
table.insert(tLuaEffectEnd["tFunction"],ChildrenHideAndSick_CreateNpc)