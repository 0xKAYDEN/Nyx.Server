------------------------------------------------------------------------------------
--Name:		171208[简体征服][活动脚本]幽冥狱暴乱（新版打怪掉宝）
--Creator: 	姚曦宇
--Created:	2017/12/08
------------------------------------------------------------------------------------

-- 动态表
-- 51940：data：0每日清理标记位、1幽冥池进度记录、2幽冥池等级记录
-- /callluafunc </F>Sys_SetSynaGlobalData1</N>51940</N>0
-- 51941：data：1-5总排行榜1-5名分数    str：1-5总排行榜1-5名名字
-- 51942：data：6-10总排行榜1-5名分数    str：6-10总排行榜1-5名名字
-- 51943：data：1-5总排行榜1-5名id  
-- 51944：data：6-10总排行榜1-5名id 
-- 51945：data：1-5每日排行榜1-5名分数    str：1-5每日排行榜1-5名名字
-- 51946：data：6-10每日排行榜1-5名分数    str：6-10每日排行榜1-5名名字
-- 51947：data：1-5每日排行榜1-5名id  
-- 51948：data：6-10每日排行榜1-5名id 
-- 51953：data：1-5昨日排行榜1-5名分数    str：1-5昨日排行榜1-5名名字
-- 51954：data：6-10昨日排行榜1-5名分数    str：6-10昨日排行榜1-5名名字
-- 51955：data：1-5昨日排行榜1-5名id  
-- 51956：data：6-10昨日排行榜1-5名id 
-- 51949：data：0表示七阶神魂豪华礼包每日掉落限制   1赤炼石+6每日掉落限制
-- 51973：data：0-3 精英怪和boss动态刷新控制
-- /callluafunc </F>Sys_ResetAllSynaGlobalData</N>51940
-- Stc
-- 瘴气值 171 09
-- 镣铐上交（单日） 171 10
-- 镣铐上交（总数） 171 11
-- 幽冥灵玉使用 171 12
-- 幽冥灵玉掉落 171 13
-- 幽冥池奖励 1 171 14
-- 幽冥池奖励 50 171 15
-- 幽冥池奖励 200 171 16
-- 背包信 170 90
-- 道士获得荒冥镇狱降魔符 175 62
-- 瘴气护盾 210 59
-- 瘴气护盾持续时间 210 60

-- logid：12000957
-- 同一前缀：RiotOfNether_
------------------------------------------------------------------------------------
-- 常量
local tRiotOfNether_Cont = {}
	-- 活动要求
	tRiotOfNether_Cont["ActiveTime"] = tActivityTime["RiotOfNether"]["Activity"]
	tRiotOfNether_Cont["ActiveDayTime"] = "04:00 23:59"
	tRiotOfNether_Cont["DailyRewardTime"] = tActivityTime["RiotOfNether"]["DailyRewardTime"]
	tRiotOfNether_Cont["DelTime"] = tActivityTime["RiotOfNether"]["DelTime"]
	tRiotOfNether_Cont["ChkTime"] = "00:00 00:03"
	tRiotOfNether_Cont["Metem"] = 0
	tRiotOfNether_Cont["Level"] = 80
	
	-- 瘴气值相关
	tRiotOfNether_Cont["Gas"] = {}
	tRiotOfNether_Cont["Gas"]["KillMonster"] = 1
	tRiotOfNether_Cont["Gas"]["KillBoss"] = 300
	tRiotOfNether_Cont["Gas"]["KillPeople"] = 10
	tRiotOfNether_Cont["Gas"]["DailyMax"] = 3000
	tRiotOfNether_Cont["Gas"]["UseJadeMin"] = 100
	tRiotOfNether_Cont["Gas"]["TipNum"] = 10
	tRiotOfNether_Cont["Gas"]["TaoistItem"] = 300
	
	-- 瘴气护盾
	tRiotOfNether_Cont["Shield"] = {}
	tRiotOfNether_Cont["Shield"]["TimeLimit"] = 120
	tRiotOfNether_Cont["Shield"][1] = {}
	tRiotOfNether_Cont["Shield"][1]["Time"] = 30
	tRiotOfNether_Cont["Shield"][1]["Emoney"] = 27
	tRiotOfNether_Cont["Shield"][1]["EmoneyLog"] = "10000	1306	27	27	1	"
	tRiotOfNether_Cont["Shield"][1]["Link"] = "4-1"
	tRiotOfNether_Cont["Shield"][2] = {}
	tRiotOfNether_Cont["Shield"][2]["Time"] = 60
	tRiotOfNether_Cont["Shield"][2]["Emoney"] = 50
	tRiotOfNether_Cont["Shield"][2]["EmoneyLog"] = "10000	1306	50	50	1	"
	tRiotOfNether_Cont["Shield"][2]["Link"] = "4-2"
	tRiotOfNether_Cont["Shield"][3] = {}
	tRiotOfNether_Cont["Shield"][3]["Time"] = 120
	tRiotOfNether_Cont["Shield"][3]["Emoney"] = 80
	tRiotOfNether_Cont["Shield"][3]["EmoneyLog"] = "10000	1306	80	80	1	"
	tRiotOfNether_Cont["Shield"][3]["Link"] = "4-3"
	
	-- 幽冥灵玉相关
	tRiotOfNether_Cont["Jade"] = {}
	tRiotOfNether_Cont["Jade"]["UseJadeMin"] = 100
	tRiotOfNether_Cont["Jade"]["UseJadeLimit"] = 10
	tRiotOfNether_Cont["Jade"]["DropJadeLimit"] = 10
	tRiotOfNether_Cont["Jade"]["TakeOffGas"] = 100
	
	-- log
	tRiotOfNether_Cont["Log"] = {}
	-- 强插物品
	tRiotOfNether_Cont["Log"][1] = "0,0,0,0,12000957,2[1],%s,%s"
	-- 掉落物品
	tRiotOfNether_Cont["Log"][2] = "0,0,0,0,12000957,2[2],%d,%d"
	-- 掉落金币
	tRiotOfNether_Cont["Log"][3] = "0,0,0,0,12000957,2[3],2,%d"
	-- 进入活动地图
	tRiotOfNether_Cont["Log"][4] = "0,0,0,0,12000957,1[1],0,0"
	-- 使用幽冥灵玉
	tRiotOfNether_Cont["Log"][5] = "0,0,3306900,%d,12000957,1[2],0,0"
	tRiotOfNether_Cont["Log"][6] = "0,0,%d,%d,12000957,2,0,0"
	tRiotOfNether_Cont["Log"][7] = "0,0,%d,%d,12000957,3,0,0"
	
	-- 传送进地图数据
	tRiotOfNether_Cont["Nether"] = {}
	tRiotOfNether_Cont["Nether"]["MapId"] = 10246
	tRiotOfNether_Cont["Nether"]["PosX"] = 367
	tRiotOfNether_Cont["Nether"]["PosY"] = 369
	tRiotOfNether_Cont["Nether"]["BoundX"] = 5
	tRiotOfNether_Cont["Nether"]["BoundY"] = 5
	tRiotOfNether_Cont["Nether"]["Log"] = tRiotOfNether_Cont["Log"][4]
	tRiotOfNether_Cont["Nether"]["ChkMapId"] = 1002
	tRiotOfNether_Cont["Nether"]["JQFChkMapId"] = 1036
	tRiotOfNether_Cont["Nether"]["MsgBox"] = tRiotOfNether_Text["MsgBox"]["EnterNether"]
	tRiotOfNether_Cont["Nether"]["Talk"] = tRiotOfNether_Text["Talk"]["EnterNether"]
	
	
	-- 传送出地图数据
	tRiotOfNether_Cont["Dragon"] = {}
	tRiotOfNether_Cont["Dragon"]["MapId"] = 1002
	tRiotOfNether_Cont["Dragon"]["PosX"] = 334
	tRiotOfNether_Cont["Dragon"]["PosY"] = 497
	tRiotOfNether_Cont["Dragon"]["JQFMapId"] = 1036
	tRiotOfNether_Cont["Dragon"]["JQFPosX"] = 269
	tRiotOfNether_Cont["Dragon"]["JQFPosY"] = 231
	tRiotOfNether_Cont["Dragon"]["BoundX"] = 5
	tRiotOfNether_Cont["Dragon"]["BoundY"] = 5
	tRiotOfNether_Cont["Dragon"]["ChkMapId"] = 10246
	tRiotOfNether_Cont["Dragon"]["MsgBox"] = tRiotOfNether_Text["MsgBox"]["OutNether"]
	tRiotOfNether_Cont["Dragon"]["Talk"] = tRiotOfNether_Text["Talk"]["OutNether"]
	
	
	-- 幽冥地图
	tRiotOfNether_Cont["NetherMapId"] = 10246
	
	-- 镣铐
	tRiotOfNether_Cont["Bonds"] = 3306901
	
	tRiotOfNether_Cont["RankNum"] = 10
	
	-- 每日清理标记位
	tRiotOfNether_Cont["Clear"] = {}
	tRiotOfNether_Cont["Clear"]["GlobalId"] = 51940
	tRiotOfNether_Cont["Clear"]["Pos"] = 0
	
	-- 日常上交奖励阶层
	tRiotOfNether_Cont["HangInReward"] = {1,50,200}
	
	-- 全服累计炼化显示位数
	tRiotOfNether_Cont["HangInBit"] = 8
	tRiotOfNether_Cont["HangInSchedule"] = 42
	
	--文字间距
	tRiotOfNether_Cont["WordDistance"] = {} 
	tRiotOfNether_Cont["WordDistance"][1] = {}
	tRiotOfNether_Cont["WordDistance"][1]["Left"] = 5
	tRiotOfNether_Cont["WordDistance"][1]["Middle"] = 23
	tRiotOfNether_Cont["WordDistance"][1]["Right"] = 45
	
	--魂锻炉坐标
	tRiotOfNether_Cont["NpcPos"] = {} 
	tRiotOfNether_Cont["NpcPos"]["MapId"] = 1002
	tRiotOfNether_Cont["NpcPos"]["PosX"] = 337
	tRiotOfNether_Cont["NpcPos"]["PosY"] = 502
	tRiotOfNether_Cont["NpcPos"]["JQFMapId"] = 1036
	tRiotOfNether_Cont["NpcPos"]["JQFPosX"] = 272
	tRiotOfNether_Cont["NpcPos"]["JQFPosY"] = 236
	--魂锻炉坐标
	tRiotOfNether_Cont["NpcPos1"] = {} 
	tRiotOfNether_Cont["NpcPos1"]["NpcId"] = 21351
	tRiotOfNether_Cont["NpcPos1"]["MapId"] = 1002
	tRiotOfNether_Cont["NpcPos1"]["PosX"] = 337
	tRiotOfNether_Cont["NpcPos1"]["PosY"] = 502
	tRiotOfNether_Cont["NpcPos1"]["JQFMapId"] = 1036
	tRiotOfNether_Cont["NpcPos1"]["JQFPosX"] = 272
	tRiotOfNether_Cont["NpcPos1"]["JQFPosY"] = 236
	
	-- 文字相关
	tRiotOfNether_Cont["RankIndex"] = {}
	tRiotOfNether_Cont["RankIndex"][1] = "Text21"
	tRiotOfNether_Cont["RankIndex"][2] = "Text22"
	tRiotOfNether_Cont["RankIndex"][3] = "Text23"
	tRiotOfNether_Cont["RankLink"] = {}
	tRiotOfNether_Cont["RankLink"][1] = "2-1"
	tRiotOfNether_Cont["RankLink"][2] = "2-2"
	tRiotOfNether_Cont["RankLink"][3] = "2-3"
	
-- 需要清理的动态表	
local tRiotOfNether_GlobalClear = {51945,51946,51947,51948,51949}

-- 掩码
local tRiotOfNether_Stc = {}
	-- 瘴气值
	tRiotOfNether_Stc[1] = {}
	tRiotOfNether_Stc[1]["EventType"] = 171
	tRiotOfNether_Stc[1]["DataType"] = 9
	-- tRiotOfNether_Stc[1]["Limit"] = tRiotOfNether_Cont["Gas"]["DailyMax"]
	tRiotOfNether_Stc[1]["Clear"] = 1
	-- 镣铐上交（单日）
	tRiotOfNether_Stc[2] = {}
	tRiotOfNether_Stc[2]["EventType"] = 171
	tRiotOfNether_Stc[2]["DataType"] = 10
	tRiotOfNether_Stc[2]["Clear"] = 1
	tRiotOfNether_Stc[2]["Rank"] = 1
	-- 镣铐上交（总数）
	tRiotOfNether_Stc[3] = {}
	tRiotOfNether_Stc[3]["EventType"] = 171
	tRiotOfNether_Stc[3]["DataType"] = 11
	tRiotOfNether_Stc[3]["Rank"] = 2
	-- 幽冥灵玉使用
	tRiotOfNether_Stc[4] = {}
	tRiotOfNether_Stc[4]["EventType"] = 171
	tRiotOfNether_Stc[4]["DataType"] = 12
	tRiotOfNether_Stc[4]["Limit"] = tRiotOfNether_Cont["Jade"]["UseJadeLimit"]
	tRiotOfNether_Stc[4]["Clear"] = 1
	-- 幽冥灵玉掉落
	tRiotOfNether_Stc[5] = {}
	tRiotOfNether_Stc[5]["EventType"] = 171
	tRiotOfNether_Stc[5]["DataType"] = 13
	tRiotOfNether_Stc[5]["Limit"] = tRiotOfNether_Cont["Jade"]["DropJadeLimit"]
	tRiotOfNether_Stc[5]["Clear"] = 1
	-- 幽冥池奖励 1
	tRiotOfNether_Stc[6] = {}
	tRiotOfNether_Stc[6]["EventType"] = 171
	tRiotOfNether_Stc[6]["DataType"] = 14
	tRiotOfNether_Stc[6]["Limit"] = 1
	tRiotOfNether_Stc[6]["Clear"] = 1
	-- 幽冥池奖励 50
	tRiotOfNether_Stc[7] = {}
	tRiotOfNether_Stc[7]["EventType"] = 171
	tRiotOfNether_Stc[7]["DataType"] = 15
	tRiotOfNether_Stc[7]["Limit"] = 1
	tRiotOfNether_Stc[7]["Clear"] = 1
	-- 幽冥池奖励 200
	tRiotOfNether_Stc[8] = {}
	tRiotOfNether_Stc[8]["EventType"] = 171
	tRiotOfNether_Stc[8]["DataType"] = 16
	tRiotOfNether_Stc[8]["Limit"] = 1
	tRiotOfNether_Stc[8]["Clear"] = 1
	-- 背包信
	tRiotOfNether_Stc[9] = {}
	tRiotOfNether_Stc[9]["EventType"] = 170
	tRiotOfNether_Stc[9]["DataType"] = 90
	tRiotOfNether_Stc[9]["Limit"] = 1
	-- 幽冥秘宝箱掉落
	tRiotOfNether_Stc[10] = {}
	tRiotOfNether_Stc[10]["EventType"] = 172
	tRiotOfNether_Stc[10]["DataType"] = 11
	tRiotOfNether_Stc[10]["Limit"] = 10
	tRiotOfNether_Stc[10]["Clear"] = 1
	-- 瘴气护盾
	tRiotOfNether_Stc[11] = {}
	tRiotOfNether_Stc[11]["EventType"] = 210
	tRiotOfNether_Stc[11]["DataType"] = 59
	-- 瘴气护盾持续时间
	tRiotOfNether_Stc[12] = {}
	tRiotOfNether_Stc[12]["EventType"] = 210
	tRiotOfNether_Stc[12]["DataType"] = 60
	
local tRiotOfNether_Npc = {}
	tRiotOfNether_Npc[1] = {}
	tRiotOfNether_Npc[1]["NpcId"] = 21347
	tRiotOfNether_Npc[1]["MapId"] = tRiotOfNether_Cont["NpcPos"]["MapId"]
	tRiotOfNether_Npc[1]["PosX"] = tRiotOfNether_Cont["NpcPos"]["PosX"] 
	tRiotOfNether_Npc[1]["PosY"] = tRiotOfNether_Cont["NpcPos"]["PosY"] 
	tRiotOfNether_Npc[1]["JQFMapId"] = tRiotOfNether_Cont["NpcPos"]["JQFMapId"]
	tRiotOfNether_Npc[1]["JQFPosX"] = tRiotOfNether_Cont["NpcPos"]["JQFPosX"] 
	tRiotOfNether_Npc[1]["JQFPosY"] = tRiotOfNether_Cont["NpcPos"]["JQFPosY"] 
	tRiotOfNether_Npc[2] = {}
	tRiotOfNether_Npc[2]["NpcId"] = 21348
	tRiotOfNether_Npc[2]["MapId"] = tRiotOfNether_Cont["NpcPos"]["MapId"]
	tRiotOfNether_Npc[2]["PosX"] = tRiotOfNether_Cont["NpcPos"]["PosX"] 
	tRiotOfNether_Npc[2]["PosY"] = tRiotOfNether_Cont["NpcPos"]["PosY"] 
	tRiotOfNether_Npc[2]["JQFMapId"] = tRiotOfNether_Cont["NpcPos"]["JQFMapId"]
	tRiotOfNether_Npc[2]["JQFPosX"] = tRiotOfNether_Cont["NpcPos"]["JQFPosX"] 
	tRiotOfNether_Npc[2]["JQFPosY"] = tRiotOfNether_Cont["NpcPos"]["JQFPosY"] 
	tRiotOfNether_Npc[3] = {}
	tRiotOfNether_Npc[3]["NpcId"] = 21369
	tRiotOfNether_Npc[3]["MapId"] = tRiotOfNether_Cont["NpcPos"]["MapId"]
	tRiotOfNether_Npc[3]["PosX"] = tRiotOfNether_Cont["NpcPos"]["PosX"] 
	tRiotOfNether_Npc[3]["PosY"] = tRiotOfNether_Cont["NpcPos"]["PosY"] 
	tRiotOfNether_Npc[3]["JQFMapId"] = tRiotOfNether_Cont["NpcPos"]["JQFMapId"]
	tRiotOfNether_Npc[3]["JQFPosX"] = tRiotOfNether_Cont["NpcPos"]["JQFPosX"] 
	tRiotOfNether_Npc[3]["JQFPosY"] = tRiotOfNether_Cont["NpcPos"]["JQFPosY"] 
	tRiotOfNether_Npc[4] = {}
	tRiotOfNether_Npc[4]["NpcId"] = 21370
	tRiotOfNether_Npc[4]["MapId"] = tRiotOfNether_Cont["NpcPos"]["MapId"]
	tRiotOfNether_Npc[4]["PosX"] = tRiotOfNether_Cont["NpcPos"]["PosX"] 
	tRiotOfNether_Npc[4]["PosY"] = tRiotOfNether_Cont["NpcPos"]["PosY"] 
	tRiotOfNether_Npc[4]["JQFMapId"] = tRiotOfNether_Cont["NpcPos"]["JQFMapId"]
	tRiotOfNether_Npc[4]["JQFPosX"] = tRiotOfNether_Cont["NpcPos"]["JQFPosX"] 
	tRiotOfNether_Npc[4]["JQFPosY"] = tRiotOfNether_Cont["NpcPos"]["JQFPosY"] 
	
-- 怪物
local tRiotOfNether_Monster = {}
	-- 1层小怪
	tRiotOfNether_Monster[1] = {}
	tRiotOfNether_Monster[1]["MonsterId"] = 2845
	tRiotOfNether_Monster[1]["Gas"] = tRiotOfNether_Cont["Gas"]["KillMonster"]
	-- 2层小怪
	tRiotOfNether_Monster[2] = {}
	tRiotOfNether_Monster[2]["MonsterId"] = 2846
	tRiotOfNether_Monster[2]["Gas"] = tRiotOfNether_Cont["Gas"]["KillMonster"]
	-- 3层小怪
	tRiotOfNether_Monster[3] = {}
	tRiotOfNether_Monster[3]["MonsterId"] = 2847
	tRiotOfNether_Monster[3]["Gas"] = tRiotOfNether_Cont["Gas"]["KillMonster"]
	-- 精英怪
	tRiotOfNether_Monster[4] = {}
	tRiotOfNether_Monster[4]["MonsterId"] = 2848
	tRiotOfNether_Monster[4]["Gas"] = tRiotOfNether_Cont["Gas"]["KillMonster"]
	-- 1层boss
	tRiotOfNether_Monster[5] = {}
	tRiotOfNether_Monster[5]["MonsterId"] = 2849
	tRiotOfNether_Monster[5]["Gas"] = tRiotOfNether_Cont["Gas"]["KillBoss"]
	-- 2层boss
	tRiotOfNether_Monster[6] = {}
	tRiotOfNether_Monster[6]["MonsterId"] = 2850
	tRiotOfNether_Monster[6]["Gas"] = tRiotOfNether_Cont["Gas"]["KillBoss"]
	-- 3层boss
	tRiotOfNether_Monster[7] = {}
	tRiotOfNether_Monster[7]["MonsterId"] = 2851
	tRiotOfNether_Monster[7]["Gas"] = tRiotOfNether_Cont["Gas"]["KillBoss"]
	
	
-- 怪物掉落
local tRiotOfNether_MonsterDropItem = {}
	-- 1层小怪 
	tRiotOfNether_MonsterDropItem[2845] = {}
	tRiotOfNether_MonsterDropItem[2845][1] = {}
	tRiotOfNether_MonsterDropItem[2845][1]["ItemChanceSum"] = 10000						
	-- 10分钟经验礼包 3%
	tRiotOfNether_MonsterDropItem[2845][1][1] = {}
	tRiotOfNether_MonsterDropItem[2845][1][1]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2845][1][1]["ItemChance"] = 300						
	tRiotOfNether_MonsterDropItem[2845][1][1]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][1]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2845][1][1]["DropItem"][1]["ItemType"] = 3006531
	tRiotOfNether_MonsterDropItem[2845][1][1]["DropItem"][1]["Num"] = 1
	-- 龙虎回力丸 0.6%
	tRiotOfNether_MonsterDropItem[2845][1][2] = {}
	tRiotOfNether_MonsterDropItem[2845][1][2]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2845][1][2]["ItemChance"] = 60						
	tRiotOfNether_MonsterDropItem[2845][1][2]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][2]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2845][1][2]["RewardItem"][1]["Id"] = 729252
	tRiotOfNether_MonsterDropItem[2845][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2845][1][2]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][2]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2845][1][2]["RewardEffect"]["Effect"] = "eidolon"
	-- 流星 0.4%
	tRiotOfNether_MonsterDropItem[2845][1][3] = {}
	tRiotOfNether_MonsterDropItem[2845][1][3]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2845][1][3]["ItemChance"] = 40						
	tRiotOfNether_MonsterDropItem[2845][1][3]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][3]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2845][1][3]["DropItem"][1]["ItemType"] = 1088001
	tRiotOfNether_MonsterDropItem[2845][1][3]["DropItem"][1]["Num"] = 1
	-- 奇门秘籍 1.2%
	tRiotOfNether_MonsterDropItem[2845][1][4] = {}
	tRiotOfNether_MonsterDropItem[2845][1][4]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2845][1][4]["ItemChance"] = 120						
	tRiotOfNether_MonsterDropItem[2845][1][4]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][4]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2845][1][4]["DropItem"][1]["ItemType"] = 723340
	tRiotOfNether_MonsterDropItem[2845][1][4]["DropItem"][1]["Num"] = 1
	-- 护心丹 0.3%
	tRiotOfNether_MonsterDropItem[2845][1][5] = {}
	tRiotOfNether_MonsterDropItem[2845][1][5]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2845][1][5]["ItemChance"] = 30						
	tRiotOfNether_MonsterDropItem[2845][1][5]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][5]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2845][1][5]["DropItem"][1]["ItemType"] = 3002029
	tRiotOfNether_MonsterDropItem[2845][1][5]["DropItem"][1]["Num"] = 1
	-- 幽冥秘宝箱 0.3%
	tRiotOfNether_MonsterDropItem[2845][1][6] = {}
	tRiotOfNether_MonsterDropItem[2845][1][6]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2845][1][6]["ItemChance"] = 30										
	tRiotOfNether_MonsterDropItem[2845][1][6]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][6]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2845][1][6]["RewardItem"][1]["Id"] = 3306898
	tRiotOfNether_MonsterDropItem[2845][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2845][1][6]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][6]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2845][1][6]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥灵玉 0.1%
	tRiotOfNether_MonsterDropItem[2845][1][7] = {}
	tRiotOfNether_MonsterDropItem[2845][1][7]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2845][1][7]["ItemChance"] = 10											
	tRiotOfNether_MonsterDropItem[2845][1][7]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][7]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2845][1][7]["DropItem"][1]["ItemType"] = 3306900
	tRiotOfNether_MonsterDropItem[2845][1][7]["DropItem"][1]["Num"] = 1
	-- 归元灵露 0.3%
	tRiotOfNether_MonsterDropItem[2845][1][8] = {}
	tRiotOfNether_MonsterDropItem[2845][1][8]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2845][1][8]["ItemChance"] = 30						
	tRiotOfNether_MonsterDropItem[2845][1][8]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][8]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2845][1][8]["DropItem"][1]["ItemType"] = 1000040
	tRiotOfNether_MonsterDropItem[2845][1][8]["DropItem"][1]["Num"] = 1
	-- 幽冥镣铐 20%
	tRiotOfNether_MonsterDropItem[2845][1][9] = {}
	tRiotOfNether_MonsterDropItem[2845][1][9]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2845][1][9]["ItemChance"] = 2000						
	tRiotOfNether_MonsterDropItem[2845][1][9]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][9]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2845][1][9]["RewardItem"][1]["Id"] = 3306901
	tRiotOfNether_MonsterDropItem[2845][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2845][1][9]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][9]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2845][1][9]["RewardEffect"]["Effect"] = "eidolon"
	-- 1000金币 3%
	-- tRiotOfNether_MonsterDropItem[2845][1][10] = {}
	-- tRiotOfNether_MonsterDropItem[2845][1][10]["RandomItemChanceType"] = 2				
	-- tRiotOfNether_MonsterDropItem[2845][1][10]["ItemChance"] = 300						
	-- tRiotOfNether_MonsterDropItem[2845][1][10]["DropMoney"] = {}
	-- tRiotOfNether_MonsterDropItem[2845][1][10]["DropMoney"][1] = {}
	-- tRiotOfNether_MonsterDropItem[2845][1][10]["DropMoney"][1]["Num"] = 1000
	-- 10点修行值礼包 3%         
	tRiotOfNether_MonsterDropItem[2845][1][10] = {}
	tRiotOfNether_MonsterDropItem[2845][1][10]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2845][1][10]["ItemChance"] = 300						
	tRiotOfNether_MonsterDropItem[2845][1][10]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2845][1][10]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2845][1][10]["DropItem"][1]["ItemType"] = 3006534
	tRiotOfNether_MonsterDropItem[2845][1][10]["DropItem"][1]["Num"] = 1
	-- 无 70.8%
	tRiotOfNether_MonsterDropItem[2845][1][11] = {}
	tRiotOfNether_MonsterDropItem[2845][1][11]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2845][1][11]["ItemChance"] = 7080						
	tRiotOfNether_MonsterDropItem[2845][1][11]["Nothing"] = {}
	
	-- 2层小怪 
	tRiotOfNether_MonsterDropItem[2846] = {}
	tRiotOfNether_MonsterDropItem[2846][1] = {}
	tRiotOfNether_MonsterDropItem[2846][1]["ItemChanceSum"] = 10000						
	-- 10分钟经验礼包 3%  
	tRiotOfNether_MonsterDropItem[2846][1][1] = {}
	tRiotOfNether_MonsterDropItem[2846][1][1]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2846][1][1]["ItemChance"] = 300						
	tRiotOfNether_MonsterDropItem[2846][1][1]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][1]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2846][1][1]["DropItem"][1]["ItemType"] = 3006531
	tRiotOfNether_MonsterDropItem[2846][1][1]["DropItem"][1]["Num"] = 1
	-- 龙虎回力丸 0.6%   
	tRiotOfNether_MonsterDropItem[2846][1][2] = {}
	tRiotOfNether_MonsterDropItem[2846][1][2]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2846][1][2]["ItemChance"] = 60						
	tRiotOfNether_MonsterDropItem[2846][1][2]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][2]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2846][1][2]["RewardItem"][1]["Id"] = 729252
	tRiotOfNether_MonsterDropItem[2846][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2846][1][2]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][2]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2846][1][2]["RewardEffect"]["Effect"] = "eidolon"
	-- 流星 0.4%       
	tRiotOfNether_MonsterDropItem[2846][1][3] = {}
	tRiotOfNether_MonsterDropItem[2846][1][3]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2846][1][3]["ItemChance"] = 40						
	tRiotOfNether_MonsterDropItem[2846][1][3]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][3]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2846][1][3]["DropItem"][1]["ItemType"] = 1088001
	tRiotOfNether_MonsterDropItem[2846][1][3]["DropItem"][1]["Num"] = 1
	-- 奇门秘籍 1.2% 
	tRiotOfNether_MonsterDropItem[2846][1][4] = {}
	tRiotOfNether_MonsterDropItem[2846][1][4]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2846][1][4]["ItemChance"] = 120						
	tRiotOfNether_MonsterDropItem[2846][1][4]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][4]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2846][1][4]["DropItem"][1]["ItemType"] = 723340
	tRiotOfNether_MonsterDropItem[2846][1][4]["DropItem"][1]["Num"] = 1
	-- 护心丹 0.3%    
	tRiotOfNether_MonsterDropItem[2846][1][5] = {}
	tRiotOfNether_MonsterDropItem[2846][1][5]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2846][1][5]["ItemChance"] = 30						
	tRiotOfNether_MonsterDropItem[2846][1][5]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][5]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2846][1][5]["DropItem"][1]["ItemType"] = 3002029
	tRiotOfNether_MonsterDropItem[2846][1][5]["DropItem"][1]["Num"] = 1
	-- 幽冥秘宝箱 0.3%     
	tRiotOfNether_MonsterDropItem[2846][1][6] = {}
	tRiotOfNether_MonsterDropItem[2846][1][6]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2846][1][6]["ItemChance"] = 30						
	tRiotOfNether_MonsterDropItem[2846][1][6]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][6]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2846][1][6]["RewardItem"][1]["Id"] = 3306898
	tRiotOfNether_MonsterDropItem[2846][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2846][1][6]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][6]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2846][1][6]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥灵玉 0.1%      
	tRiotOfNether_MonsterDropItem[2846][1][7] = {}
	tRiotOfNether_MonsterDropItem[2846][1][7]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2846][1][7]["ItemChance"] = 10						
	tRiotOfNether_MonsterDropItem[2846][1][7]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][7]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2846][1][7]["DropItem"][1]["ItemType"] = 3306900
	tRiotOfNether_MonsterDropItem[2846][1][7]["DropItem"][1]["Num"] = 1
	-- 归元灵露 0.3%    
	tRiotOfNether_MonsterDropItem[2846][1][8] = {}
	tRiotOfNether_MonsterDropItem[2846][1][8]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2846][1][8]["ItemChance"] = 30					
	tRiotOfNether_MonsterDropItem[2846][1][8]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][8]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2846][1][8]["DropItem"][1]["ItemType"] = 1000040
	tRiotOfNether_MonsterDropItem[2846][1][8]["DropItem"][1]["Num"] = 1
	-- 幽冥镣铐 25%       
	tRiotOfNether_MonsterDropItem[2846][1][9] = {}
	tRiotOfNether_MonsterDropItem[2846][1][9]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2846][1][9]["ItemChance"] = 2500						
	tRiotOfNether_MonsterDropItem[2846][1][9]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][9]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2846][1][9]["RewardItem"][1]["Id"] = 3306901
	tRiotOfNether_MonsterDropItem[2846][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2846][1][9]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][9]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2846][1][9]["RewardEffect"]["Effect"] = "eidolon"
	-- 1000金币 3%         
	-- tRiotOfNether_MonsterDropItem[2846][1][10] = {}
	-- tRiotOfNether_MonsterDropItem[2846][1][10]["RandomItemChanceType"] = 2				
	-- tRiotOfNether_MonsterDropItem[2846][1][10]["ItemChance"] = 300						
	-- tRiotOfNether_MonsterDropItem[2846][1][10]["DropMoney"] = {}
	-- tRiotOfNether_MonsterDropItem[2846][1][10]["DropMoney"][1] = {}
	-- tRiotOfNether_MonsterDropItem[2846][1][10]["DropMoney"][1]["Num"] = 1000
	-- 10点修行值礼包 3%         
	tRiotOfNether_MonsterDropItem[2846][1][10] = {}
	tRiotOfNether_MonsterDropItem[2846][1][10]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2846][1][10]["ItemChance"] = 300						
	tRiotOfNether_MonsterDropItem[2846][1][10]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2846][1][10]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2846][1][10]["DropItem"][1]["ItemType"] = 3006534
	tRiotOfNether_MonsterDropItem[2846][1][10]["DropItem"][1]["Num"] = 1
	-- 无 65.8%                  
	tRiotOfNether_MonsterDropItem[2846][1][11] = {}
	tRiotOfNether_MonsterDropItem[2846][1][11]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2846][1][11]["ItemChance"] = 6580						
	tRiotOfNether_MonsterDropItem[2846][1][11]["Nothing"] = {}
	
	-- 3层小怪 
	tRiotOfNether_MonsterDropItem[2847] = {}
	tRiotOfNether_MonsterDropItem[2847][1] = {}
	tRiotOfNether_MonsterDropItem[2847][1]["ItemChanceSum"] = 10000						
	-- 10分钟经验礼包 3%  
	tRiotOfNether_MonsterDropItem[2847][1][1] = {}
	tRiotOfNether_MonsterDropItem[2847][1][1]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2847][1][1]["ItemChance"] = 300						
	tRiotOfNether_MonsterDropItem[2847][1][1]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][1]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2847][1][1]["DropItem"][1]["ItemType"] = 3006531
	tRiotOfNether_MonsterDropItem[2847][1][1]["DropItem"][1]["Num"] = 1
	-- 龙虎回力丸 0.6%   
	tRiotOfNether_MonsterDropItem[2847][1][2] = {}
	tRiotOfNether_MonsterDropItem[2847][1][2]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2847][1][2]["ItemChance"] = 60						
	tRiotOfNether_MonsterDropItem[2847][1][2]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][2]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2847][1][2]["RewardItem"][1]["Id"] = 729252
	tRiotOfNether_MonsterDropItem[2847][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2847][1][2]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][2]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2847][1][2]["RewardEffect"]["Effect"] = "eidolon"
	-- 流星 0.4%      
	tRiotOfNether_MonsterDropItem[2847][1][3] = {}
	tRiotOfNether_MonsterDropItem[2847][1][3]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2847][1][3]["ItemChance"] = 40						
	tRiotOfNether_MonsterDropItem[2847][1][3]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][3]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2847][1][3]["DropItem"][1]["ItemType"] = 1088001
	tRiotOfNether_MonsterDropItem[2847][1][3]["DropItem"][1]["Num"] = 1
	-- 奇门秘籍 1.2% 
	tRiotOfNether_MonsterDropItem[2847][1][4] = {}
	tRiotOfNether_MonsterDropItem[2847][1][4]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2847][1][4]["ItemChance"] = 120						
	tRiotOfNether_MonsterDropItem[2847][1][4]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][4]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2847][1][4]["DropItem"][1]["ItemType"] = 723340
	tRiotOfNether_MonsterDropItem[2847][1][4]["DropItem"][1]["Num"] = 1
	-- 护心丹 0.3%   
	tRiotOfNether_MonsterDropItem[2847][1][5] = {}
	tRiotOfNether_MonsterDropItem[2847][1][5]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2847][1][5]["ItemChance"] = 30						
	tRiotOfNether_MonsterDropItem[2847][1][5]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][5]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2847][1][5]["DropItem"][1]["ItemType"] = 3002029
	tRiotOfNether_MonsterDropItem[2847][1][5]["DropItem"][1]["Num"] = 1
	-- 幽冥秘宝箱 0.3%   
	tRiotOfNether_MonsterDropItem[2847][1][6] = {}
	tRiotOfNether_MonsterDropItem[2847][1][6]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2847][1][6]["ItemChance"] = 30						
	tRiotOfNether_MonsterDropItem[2847][1][6]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][6]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2847][1][6]["RewardItem"][1]["Id"] = 3306898
	tRiotOfNether_MonsterDropItem[2847][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2847][1][6]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][6]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2847][1][6]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥灵玉 0.1%     
	tRiotOfNether_MonsterDropItem[2847][1][7] = {}
	tRiotOfNether_MonsterDropItem[2847][1][7]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2847][1][7]["ItemChance"] = 10						
	tRiotOfNether_MonsterDropItem[2847][1][7]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][7]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2847][1][7]["DropItem"][1]["ItemType"] = 3306900
	tRiotOfNether_MonsterDropItem[2847][1][7]["DropItem"][1]["Num"] = 1
	-- 归元灵露 0.3%       
	tRiotOfNether_MonsterDropItem[2847][1][8] = {}
	tRiotOfNether_MonsterDropItem[2847][1][8]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2847][1][8]["ItemChance"] = 30					
	tRiotOfNether_MonsterDropItem[2847][1][8]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][8]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2847][1][8]["DropItem"][1]["ItemType"] = 1000040
	tRiotOfNether_MonsterDropItem[2847][1][8]["DropItem"][1]["Num"] = 1
	-- 幽冥镣铐 30%      
	tRiotOfNether_MonsterDropItem[2847][1][9] = {}
	tRiotOfNether_MonsterDropItem[2847][1][9]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2847][1][9]["ItemChance"] = 3000						
	tRiotOfNether_MonsterDropItem[2847][1][9]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][9]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2847][1][9]["RewardItem"][1]["Id"] = 3306901
	tRiotOfNether_MonsterDropItem[2847][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2847][1][9]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][9]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2847][1][9]["RewardEffect"]["Effect"] = "eidolon"
	-- 1000金币 3%     
	-- tRiotOfNether_MonsterDropItem[2847][1][10] = {}
	-- tRiotOfNether_MonsterDropItem[2847][1][10]["RandomItemChanceType"] = 2				
	-- tRiotOfNether_MonsterDropItem[2847][1][10]["ItemChance"] = 300						
	-- tRiotOfNether_MonsterDropItem[2847][1][10]["DropMoney"] = {}
	-- tRiotOfNether_MonsterDropItem[2847][1][10]["DropMoney"][1] = {}
	-- tRiotOfNether_MonsterDropItem[2847][1][10]["DropMoney"][1]["Num"] = 1000
	-- 10点修行值礼包 3%         
	tRiotOfNether_MonsterDropItem[2847][1][10] = {}
	tRiotOfNether_MonsterDropItem[2847][1][10]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2847][1][10]["ItemChance"] = 300						
	tRiotOfNether_MonsterDropItem[2847][1][10]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2847][1][10]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2847][1][10]["DropItem"][1]["ItemType"] = 3006534
	tRiotOfNether_MonsterDropItem[2847][1][10]["DropItem"][1]["Num"] = 1
	-- 无 60.8%           
	tRiotOfNether_MonsterDropItem[2847][1][11] = {}
	tRiotOfNether_MonsterDropItem[2847][1][11]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2847][1][11]["ItemChance"] = 6080						
	tRiotOfNether_MonsterDropItem[2847][1][11]["Nothing"] = {}
	
	-- 精英怪
	tRiotOfNether_MonsterDropItem[2848] = {}
	tRiotOfNether_MonsterDropItem[2848][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1]["ItemChanceSum"] = 10000						
	-- 30分钟经验包 15%  
	tRiotOfNether_MonsterDropItem[2848][1][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1][1]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2848][1][1]["ItemChance"] = 1500						
	tRiotOfNether_MonsterDropItem[2848][1][1]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][1]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1][1]["DropItem"][1]["ItemType"] = 3006532
	tRiotOfNether_MonsterDropItem[2848][1][1]["DropItem"][1]["Num"] = 1
	-- 龙虎回力丸 20%   
	tRiotOfNether_MonsterDropItem[2848][1][2] = {}
	tRiotOfNether_MonsterDropItem[2848][1][2]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2848][1][2]["ItemChance"] = 2000											
	tRiotOfNether_MonsterDropItem[2848][1][2]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][2]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1][2]["RewardItem"][1]["Id"] = 729252
	tRiotOfNether_MonsterDropItem[2848][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2848][1][2]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][2]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2848][1][2]["RewardEffect"]["Effect"] = "eidolon"
	-- 流星 5%      
	tRiotOfNether_MonsterDropItem[2848][1][3] = {}
	tRiotOfNether_MonsterDropItem[2848][1][3]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2848][1][3]["ItemChance"] = 500						
	tRiotOfNether_MonsterDropItem[2848][1][3]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][3]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1][3]["DropItem"][1]["ItemType"] = 1088001
	tRiotOfNether_MonsterDropItem[2848][1][3]["DropItem"][1]["Num"] = 1
	-- 奇门秘籍 5% 
	tRiotOfNether_MonsterDropItem[2848][1][4] = {}
	tRiotOfNether_MonsterDropItem[2848][1][4]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2848][1][4]["ItemChance"] = 500						
	tRiotOfNether_MonsterDropItem[2848][1][4]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][4]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1][4]["DropItem"][1]["ItemType"] = 723340
	tRiotOfNether_MonsterDropItem[2848][1][4]["DropItem"][1]["Num"] = 1
	-- 护心丹 15%   
	tRiotOfNether_MonsterDropItem[2848][1][5] = {}
	tRiotOfNether_MonsterDropItem[2848][1][5]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2848][1][5]["ItemChance"] = 1500						
	tRiotOfNether_MonsterDropItem[2848][1][5]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][5]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1][5]["DropItem"][1]["ItemType"] = 3002029
	tRiotOfNether_MonsterDropItem[2848][1][5]["DropItem"][1]["Num"] = 1
	-- 幽冥秘宝箱 5%   
	tRiotOfNether_MonsterDropItem[2848][1][6] = {}
	tRiotOfNether_MonsterDropItem[2848][1][6]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2848][1][6]["ItemChance"] = 500	
	tRiotOfNether_MonsterDropItem[2848][1][6]["EventType"] = tRiotOfNether_Stc[10]["EventType"]
	tRiotOfNether_MonsterDropItem[2848][1][6]["DataType"] = tRiotOfNether_Stc[10]["DataType"]
	tRiotOfNether_MonsterDropItem[2848][1][6]["SingleLimit"] = tRiotOfNether_Stc[10]["Limit"]
	tRiotOfNether_MonsterDropItem[2848][1][6]["Stc"] = 10	
	tRiotOfNether_MonsterDropItem[2848][1][6]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][6]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1][6]["RewardItem"][1]["Id"] = 3306898
	tRiotOfNether_MonsterDropItem[2848][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2848][1][6]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][6]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2848][1][6]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥灵玉 5%     
	tRiotOfNether_MonsterDropItem[2848][1][7] = {}
	tRiotOfNether_MonsterDropItem[2848][1][7]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2848][1][7]["ItemChance"] = 500		
	tRiotOfNether_MonsterDropItem[2848][1][7]["EventType"] = tRiotOfNether_Stc[5]["EventType"]
	tRiotOfNether_MonsterDropItem[2848][1][7]["DataType"] = tRiotOfNether_Stc[5]["DataType"]
	tRiotOfNether_MonsterDropItem[2848][1][7]["SingleLimit"] = tRiotOfNether_Stc[5]["Limit"]
	tRiotOfNether_MonsterDropItem[2848][1][7]["Stc"] = 5
	tRiotOfNether_MonsterDropItem[2848][1][7]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][7]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1][7]["DropItem"][1]["ItemType"] = 3306900
	tRiotOfNether_MonsterDropItem[2848][1][7]["DropItem"][1]["Num"] = 1
	-- 岫山玉碎片 10%           
	tRiotOfNether_MonsterDropItem[2848][1][8] = {}
	tRiotOfNether_MonsterDropItem[2848][1][8]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2848][1][8]["ItemChance"] = 1000						
	tRiotOfNether_MonsterDropItem[2848][1][8]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][8]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1][8]["RewardItem"][1]["Id"] = 3008222
	tRiotOfNether_MonsterDropItem[2848][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2848][1][8]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][8]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2848][1][8]["RewardEffect"]["Effect"] = "eidolon"
	-- 归元灵露 10%       
	tRiotOfNether_MonsterDropItem[2848][1][9] = {}
	tRiotOfNether_MonsterDropItem[2848][1][9]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2848][1][9]["ItemChance"] = 1000						
	tRiotOfNether_MonsterDropItem[2848][1][9]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][9]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1][9]["DropItem"][1]["ItemType"] = 1000040
	tRiotOfNether_MonsterDropItem[2848][1][9]["DropItem"][1]["Num"] = 1
	-- 1000金币 10%     
	-- tRiotOfNether_MonsterDropItem[2848][1][10] = {}
	-- tRiotOfNether_MonsterDropItem[2848][1][10]["RandomItemChanceType"] = 2				
	-- tRiotOfNether_MonsterDropItem[2848][1][10]["ItemChance"] = 1000						
	-- tRiotOfNether_MonsterDropItem[2848][1][10]["DropMoney"] = {}
	-- tRiotOfNether_MonsterDropItem[2848][1][10]["DropMoney"][1] = {}
	-- tRiotOfNether_MonsterDropItem[2848][1][10]["DropMoney"][1]["Num"] = 1000
	-- 10点修行值礼包 10%         
	tRiotOfNether_MonsterDropItem[2848][1][10] = {}
	tRiotOfNether_MonsterDropItem[2848][1][10]["RandomItemChanceType"] = 2				
	tRiotOfNether_MonsterDropItem[2848][1][10]["ItemChance"] = 1000						
	tRiotOfNether_MonsterDropItem[2848][1][10]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][10]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1][10]["DropItem"][1]["ItemType"] = 3006534
	tRiotOfNether_MonsterDropItem[2848][1][10]["DropItem"][1]["Num"] = 1
	-- 幽冥镣铐 100%      
	tRiotOfNether_MonsterDropItem[2848][1][11] = {}
	tRiotOfNether_MonsterDropItem[2848][1][11]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2848][1][11]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2848][1][11]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2848][1][11]["DropItem"][1]["ItemType"] = 3306901
	tRiotOfNether_MonsterDropItem[2848][1][11]["DropItem"][1]["Num"] = 5
	
	-- 1层boss
	tRiotOfNether_MonsterDropItem[2849] = {}
	tRiotOfNether_MonsterDropItem[2849][1] = {}
	-- tRiotOfNether_MonsterDropItem[2849][1]["ItemChanceSum"] = 10000						
	-- 60分钟经验包 50%  
	tRiotOfNether_MonsterDropItem[2849][1][1] = {}
	tRiotOfNether_MonsterDropItem[2849][1][1]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2849][1][1]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2849][1][1]["ItemChance"] = 5000						
	tRiotOfNether_MonsterDropItem[2849][1][1]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][1]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2849][1][1]["DropItem"][1]["ItemType"] = 3006245
	tRiotOfNether_MonsterDropItem[2849][1][1]["DropItem"][1]["Num"] = 1
	-- 60修为值礼包 50%      
	tRiotOfNether_MonsterDropItem[2849][1][2] = {}
	tRiotOfNether_MonsterDropItem[2849][1][2]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2849][1][2]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2849][1][2]["ItemChance"] = 5000							
	tRiotOfNether_MonsterDropItem[2849][1][2]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][2]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2849][1][2]["DropItem"][1]["ItemType"] = 3306902
	tRiotOfNether_MonsterDropItem[2849][1][2]["DropItem"][1]["Num"] = 1
	-- 幽冥碎片 100%           
	tRiotOfNether_MonsterDropItem[2849][1][3] = {}
	tRiotOfNether_MonsterDropItem[2849][1][3]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2849][1][3]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][3]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2849][1][3]["RewardItem"][1]["Id"] = 3306899
	tRiotOfNether_MonsterDropItem[2849][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2849][1][3]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][3]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2849][1][3]["RewardEffect"]["Effect"] = "eidolon"
	-- 流星 100%   
	tRiotOfNether_MonsterDropItem[2849][1][4] = {}
	tRiotOfNether_MonsterDropItem[2849][1][4]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2849][1][4]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][4]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2849][1][4]["DropItem"][1]["ItemType"] = 1088001
	tRiotOfNether_MonsterDropItem[2849][1][4]["DropItem"][1]["Num"] = 6
	-- 七阶防具配饰神魂礼包（赠） 0.2%          
	tRiotOfNether_MonsterDropItem[2849][1][5] = {}
	tRiotOfNether_MonsterDropItem[2849][1][5]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2849][1][5]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2849][1][5]["ItemChance"] = 20		
	tRiotOfNether_MonsterDropItem[2849][1][5]["GlobalId"] = 51949
	tRiotOfNether_MonsterDropItem[2849][1][5]["GlobalPos"] = 0
	tRiotOfNether_MonsterDropItem[2849][1][5]["GlobalLimit"] = 8
	tRiotOfNether_MonsterDropItem[2849][1][5]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][5]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2849][1][5]["RewardItem"][1]["Id"] = 3006746
	tRiotOfNether_MonsterDropItem[2849][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2849][1][5]["TalkAll"] = tRiotOfNether_Text["BroadCast"][3006746]
	tRiotOfNether_MonsterDropItem[2849][1][5]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][5]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2849][1][5]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥秘宝箱 100%     
	tRiotOfNether_MonsterDropItem[2849][1][6] = {}
	tRiotOfNether_MonsterDropItem[2849][1][6]["RandomItemChanceType"] = 1		
	tRiotOfNether_MonsterDropItem[2849][1][6]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][6]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2849][1][6]["RewardItem"][1]["Id"] = 3306898
	tRiotOfNether_MonsterDropItem[2849][1][6]["RewardItem"][1]["Attr"] = "0 3"
	tRiotOfNether_MonsterDropItem[2849][1][6]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][6]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2849][1][6]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥灵玉 40%        
	tRiotOfNether_MonsterDropItem[2849][1][7] = {}
	tRiotOfNether_MonsterDropItem[2849][1][7]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2849][1][7]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2849][1][7]["ItemChance"] = 4000		
	tRiotOfNether_MonsterDropItem[2849][1][7]["EventType"] = tRiotOfNether_Stc[5]["EventType"]
	tRiotOfNether_MonsterDropItem[2849][1][7]["DataType"] = tRiotOfNether_Stc[5]["DataType"]
	tRiotOfNether_MonsterDropItem[2849][1][7]["SingleLimit"] = tRiotOfNether_Stc[5]["Limit"]
	tRiotOfNether_MonsterDropItem[2849][1][7]["Stc"] = 5
	tRiotOfNether_MonsterDropItem[2849][1][7]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][7]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2849][1][7]["DropItem"][1]["ItemType"] = 3306900
	tRiotOfNether_MonsterDropItem[2849][1][7]["DropItem"][1]["Num"] = 1
	-- 岫山玉碎片 10%        
	tRiotOfNether_MonsterDropItem[2849][1][8] = {}
	tRiotOfNether_MonsterDropItem[2849][1][8]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2849][1][8]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2849][1][8]["ItemChance"] = 1000					
	tRiotOfNether_MonsterDropItem[2849][1][8]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][8]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2849][1][8]["RewardItem"][1]["Id"] = 3008222
	tRiotOfNether_MonsterDropItem[2849][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2849][1][8]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][8]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2849][1][8]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥镣铐 100%      
	tRiotOfNether_MonsterDropItem[2849][1][9] = {}
	tRiotOfNether_MonsterDropItem[2849][1][9]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2849][1][9]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][9]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2849][1][9]["DropItem"][1]["ItemType"] = 3306901
	tRiotOfNether_MonsterDropItem[2849][1][9]["DropItem"][1]["Num"] = 20
	-- 幽冥镣铐 100%      
	tRiotOfNether_MonsterDropItem[2849][1][10] = {}
	tRiotOfNether_MonsterDropItem[2849][1][10]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2849][1][10]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][10]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2849][1][10]["RewardItem"][1]["Id"] = 3306901
	tRiotOfNether_MonsterDropItem[2849][1][10]["RewardItem"][1]["Attr"] = "0 80"
	tRiotOfNether_MonsterDropItem[2849][1][10]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][10]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2849][1][10]["RewardEffect"]["Effect"] = "eidolon"
	-- 七阶武器神魂礼包碎片（赠） 0.2%          
	tRiotOfNether_MonsterDropItem[2849][1][11] = {}
	tRiotOfNether_MonsterDropItem[2849][1][11]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2849][1][11]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2849][1][11]["ItemChance"] = 20		
	tRiotOfNether_MonsterDropItem[2849][1][11]["GlobalId"] = 51949
	tRiotOfNether_MonsterDropItem[2849][1][11]["GlobalPos"] = 0
	tRiotOfNether_MonsterDropItem[2849][1][11]["GlobalLimit"] = 8
	tRiotOfNether_MonsterDropItem[2849][1][11]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][11]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2849][1][11]["RewardItem"][1]["Id"] = 3315497
	tRiotOfNether_MonsterDropItem[2849][1][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tRiotOfNether_MonsterDropItem[2849][1][11]["TalkAll"] = tRiotOfNether_Text["BroadCast"][3315497]
	tRiotOfNether_MonsterDropItem[2849][1][11]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2849][1][11]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2849][1][11]["RewardEffect"]["Effect"] = "eidolon"
	
	-- 2层boss
	tRiotOfNether_MonsterDropItem[2850] = {}
	tRiotOfNether_MonsterDropItem[2850][1] = {}
	-- tRiotOfNether_MonsterDropItem[2850][1]["ItemChanceSum"] = 10000						
	-- 60分钟经验包 60%  
	tRiotOfNether_MonsterDropItem[2850][1][1] = {}
	tRiotOfNether_MonsterDropItem[2850][1][1]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2850][1][1]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2850][1][1]["ItemChance"] = 6000						
	tRiotOfNether_MonsterDropItem[2850][1][1]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][1]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2850][1][1]["DropItem"][1]["ItemType"] = 3006245
	tRiotOfNether_MonsterDropItem[2850][1][1]["DropItem"][1]["Num"] = 1
	-- 60修为值礼包 60%      
	tRiotOfNether_MonsterDropItem[2850][1][2] = {}
	tRiotOfNether_MonsterDropItem[2850][1][2]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2850][1][2]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2850][1][2]["ItemChance"] = 6000							
	tRiotOfNether_MonsterDropItem[2850][1][2]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][2]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2850][1][2]["DropItem"][1]["ItemType"] = 3306902
	tRiotOfNether_MonsterDropItem[2850][1][2]["DropItem"][1]["Num"] = 1
	-- 幽冥碎片 100%           
	tRiotOfNether_MonsterDropItem[2850][1][3] = {}
	tRiotOfNether_MonsterDropItem[2850][1][3]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2850][1][3]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][3]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2850][1][3]["RewardItem"][1]["Id"] = 3306899
	tRiotOfNether_MonsterDropItem[2850][1][3]["RewardItem"][1]["Attr"] = "0 2"
	tRiotOfNether_MonsterDropItem[2850][1][3]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][3]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2850][1][3]["RewardEffect"]["Effect"] = "eidolon"
	-- 流星 100%   
	tRiotOfNether_MonsterDropItem[2850][1][4] = {}
	tRiotOfNether_MonsterDropItem[2850][1][4]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2850][1][4]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][4]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2850][1][4]["DropItem"][1]["ItemType"] = 1088001
	tRiotOfNether_MonsterDropItem[2850][1][4]["DropItem"][1]["Num"] = 8
	-- 七阶防具配饰神魂礼包（赠） 0.2%          
	tRiotOfNether_MonsterDropItem[2850][1][5] = {}
	tRiotOfNether_MonsterDropItem[2850][1][5]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2850][1][5]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2850][1][5]["ItemChance"] = 20	
	tRiotOfNether_MonsterDropItem[2850][1][5]["GlobalId"] = 51949
	tRiotOfNether_MonsterDropItem[2850][1][5]["GlobalPos"] = 0
	tRiotOfNether_MonsterDropItem[2850][1][5]["GlobalLimit"] = 8	
	tRiotOfNether_MonsterDropItem[2850][1][5]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][5]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2850][1][5]["RewardItem"][1]["Id"] = 3006746
	tRiotOfNether_MonsterDropItem[2850][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2850][1][5]["TalkAll"] = tRiotOfNether_Text["BroadCast"][3006746]
	tRiotOfNether_MonsterDropItem[2850][1][5]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][5]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2850][1][5]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥秘宝箱 100%     
	tRiotOfNether_MonsterDropItem[2850][1][6] = {}
	tRiotOfNether_MonsterDropItem[2850][1][6]["RandomItemChanceType"] = 1		
	tRiotOfNether_MonsterDropItem[2850][1][6]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][6]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2850][1][6]["RewardItem"][1]["Id"] = 3306898
	tRiotOfNether_MonsterDropItem[2850][1][6]["RewardItem"][1]["Attr"] = "0 4"
	tRiotOfNether_MonsterDropItem[2850][1][6]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][6]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2850][1][6]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥灵玉 50%        
	tRiotOfNether_MonsterDropItem[2850][1][7] = {}
	tRiotOfNether_MonsterDropItem[2850][1][7]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2850][1][7]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2850][1][7]["ItemChance"] = 5000	
	tRiotOfNether_MonsterDropItem[2850][1][7]["EventType"] = tRiotOfNether_Stc[5]["EventType"]
	tRiotOfNether_MonsterDropItem[2850][1][7]["DataType"] = tRiotOfNether_Stc[5]["DataType"]
	tRiotOfNether_MonsterDropItem[2850][1][7]["SingleLimit"] = tRiotOfNether_Stc[5]["Limit"]
	tRiotOfNether_MonsterDropItem[2850][1][7]["Stc"] = 5
	tRiotOfNether_MonsterDropItem[2850][1][7]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][7]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2850][1][7]["DropItem"][1]["ItemType"] = 3306900
	tRiotOfNether_MonsterDropItem[2850][1][7]["DropItem"][1]["Num"] = 1
	-- 岫山玉碎片 15%        
	tRiotOfNether_MonsterDropItem[2850][1][8] = {}
	tRiotOfNether_MonsterDropItem[2850][1][8]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2850][1][8]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2850][1][8]["ItemChance"] = 1500					
	tRiotOfNether_MonsterDropItem[2850][1][8]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][8]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2850][1][8]["RewardItem"][1]["Id"] = 3008222
	tRiotOfNether_MonsterDropItem[2850][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2850][1][8]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][8]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2850][1][8]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥镣铐 100%      
	tRiotOfNether_MonsterDropItem[2850][1][9] = {}
	tRiotOfNether_MonsterDropItem[2850][1][9]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2850][1][9]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][9]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2850][1][9]["DropItem"][1]["ItemType"] = 3306901
	tRiotOfNether_MonsterDropItem[2850][1][9]["DropItem"][1]["Num"] = 25
	-- 幽冥镣铐 100%      
	tRiotOfNether_MonsterDropItem[2850][1][10] = {}
	tRiotOfNether_MonsterDropItem[2850][1][10]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2850][1][10]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][10]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2850][1][10]["RewardItem"][1]["Id"] = 3306901
	tRiotOfNether_MonsterDropItem[2850][1][10]["RewardItem"][1]["Attr"] = "0 100"
	tRiotOfNether_MonsterDropItem[2850][1][10]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][10]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2850][1][10]["RewardEffect"]["Effect"] = "eidolon"
	-- 七阶武器神魂礼包碎片（赠） 0.2%          
	tRiotOfNether_MonsterDropItem[2850][1][11] = {}
	tRiotOfNether_MonsterDropItem[2850][1][11]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2850][1][11]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2850][1][11]["ItemChance"] = 20	
	tRiotOfNether_MonsterDropItem[2850][1][11]["GlobalId"] = 51949
	tRiotOfNether_MonsterDropItem[2850][1][11]["GlobalPos"] = 0
	tRiotOfNether_MonsterDropItem[2850][1][11]["GlobalLimit"] = 8	
	tRiotOfNether_MonsterDropItem[2850][1][11]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][11]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2850][1][11]["RewardItem"][1]["Id"] = 3315497
	tRiotOfNether_MonsterDropItem[2850][1][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tRiotOfNether_MonsterDropItem[2850][1][11]["TalkAll"] = tRiotOfNether_Text["BroadCast"][3315497]
	tRiotOfNether_MonsterDropItem[2850][1][11]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2850][1][11]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2850][1][11]["RewardEffect"]["Effect"] = "eidolon"
	
	-- 3层boss
	tRiotOfNether_MonsterDropItem[2851] = {}
	tRiotOfNether_MonsterDropItem[2851][1] = {}
	-- tRiotOfNether_MonsterDropItem[2851][1]["ItemChanceSum"] = 10000						
	-- 60分钟经验包 70%  
	tRiotOfNether_MonsterDropItem[2851][1][1] = {}
	tRiotOfNether_MonsterDropItem[2851][1][1]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2851][1][1]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2851][1][1]["ItemChance"] = 7000						
	tRiotOfNether_MonsterDropItem[2851][1][1]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][1]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2851][1][1]["DropItem"][1]["ItemType"] = 3006245
	tRiotOfNether_MonsterDropItem[2851][1][1]["DropItem"][1]["Num"] = 1
	-- 60修为值礼包 70%      
	tRiotOfNether_MonsterDropItem[2851][1][2] = {}
	tRiotOfNether_MonsterDropItem[2851][1][2]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2851][1][2]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2851][1][2]["ItemChance"] = 7000							
	tRiotOfNether_MonsterDropItem[2851][1][2]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][2]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2851][1][2]["DropItem"][1]["ItemType"] = 3306902
	tRiotOfNether_MonsterDropItem[2851][1][2]["DropItem"][1]["Num"] = 1
	-- 幽冥碎片 100%           
	tRiotOfNether_MonsterDropItem[2851][1][3] = {}
	tRiotOfNether_MonsterDropItem[2851][1][3]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2851][1][3]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][3]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2851][1][3]["RewardItem"][1]["Id"] = 3306899
	tRiotOfNether_MonsterDropItem[2851][1][3]["RewardItem"][1]["Attr"] = "0 3"
	tRiotOfNether_MonsterDropItem[2851][1][3]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][3]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2851][1][3]["RewardEffect"]["Effect"] = "eidolon"
	-- 流星 100%   
	tRiotOfNether_MonsterDropItem[2851][1][4] = {}
	tRiotOfNether_MonsterDropItem[2851][1][4]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2851][1][4]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][4]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2851][1][4]["DropItem"][1]["ItemType"] = 1088001
	tRiotOfNether_MonsterDropItem[2851][1][4]["DropItem"][1]["Num"] = 10
	-- 七阶防具配饰神魂礼包（赠） 0.2%          
	tRiotOfNether_MonsterDropItem[2851][1][5] = {}
	tRiotOfNether_MonsterDropItem[2851][1][5]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2851][1][5]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2851][1][5]["ItemChance"] = 20	
	tRiotOfNether_MonsterDropItem[2851][1][5]["GlobalId"] = 51949
	tRiotOfNether_MonsterDropItem[2851][1][5]["GlobalPos"] = 0
	tRiotOfNether_MonsterDropItem[2851][1][5]["GlobalLimit"] = 8	
	tRiotOfNether_MonsterDropItem[2851][1][5]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][5]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2851][1][5]["RewardItem"][1]["Id"] = 3006746
	tRiotOfNether_MonsterDropItem[2851][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2851][1][5]["TalkAll"] = tRiotOfNether_Text["BroadCast"][3006746]
	tRiotOfNether_MonsterDropItem[2851][1][5]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][5]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2851][1][5]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥秘宝箱 100%     
	tRiotOfNether_MonsterDropItem[2851][1][6] = {}
	tRiotOfNether_MonsterDropItem[2851][1][6]["RandomItemChanceType"] = 1		
	tRiotOfNether_MonsterDropItem[2851][1][6]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][6]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2851][1][6]["RewardItem"][1]["Id"] = 3306898
	tRiotOfNether_MonsterDropItem[2851][1][6]["RewardItem"][1]["Attr"] = "0 5"
	tRiotOfNether_MonsterDropItem[2851][1][6]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][6]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2851][1][6]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥灵玉 55%        
	tRiotOfNether_MonsterDropItem[2851][1][7] = {}
	tRiotOfNether_MonsterDropItem[2851][1][7]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2851][1][7]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2851][1][7]["ItemChance"] = 5500	
	tRiotOfNether_MonsterDropItem[2851][1][7]["EventType"] = tRiotOfNether_Stc[5]["EventType"]
	tRiotOfNether_MonsterDropItem[2851][1][7]["DataType"] = tRiotOfNether_Stc[5]["DataType"]
	tRiotOfNether_MonsterDropItem[2851][1][7]["SingleLimit"] = tRiotOfNether_Stc[5]["Limit"]
	tRiotOfNether_MonsterDropItem[2851][1][7]["Stc"] = 5
	tRiotOfNether_MonsterDropItem[2851][1][7]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][7]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2851][1][7]["DropItem"][1]["ItemType"] = 3306900
	tRiotOfNether_MonsterDropItem[2851][1][7]["DropItem"][1]["Num"] = 1
	-- 岫山玉碎片 20%        
	tRiotOfNether_MonsterDropItem[2851][1][8] = {}
	tRiotOfNether_MonsterDropItem[2851][1][8]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2851][1][8]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2851][1][8]["ItemChance"] = 2000					
	tRiotOfNether_MonsterDropItem[2851][1][8]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][8]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2851][1][8]["RewardItem"][1]["Id"] = 3008222
	tRiotOfNether_MonsterDropItem[2851][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_MonsterDropItem[2851][1][8]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][8]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2851][1][8]["RewardEffect"]["Effect"] = "eidolon"
	-- 幽冥镣铐 100%      
	tRiotOfNether_MonsterDropItem[2851][1][9] = {}
	tRiotOfNether_MonsterDropItem[2851][1][9]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2851][1][9]["DropItem"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][9]["DropItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2851][1][9]["DropItem"][1]["ItemType"] = 3306901
	tRiotOfNether_MonsterDropItem[2851][1][9]["DropItem"][1]["Num"] = 30
	-- 幽冥镣铐 100%      
	tRiotOfNether_MonsterDropItem[2851][1][10] = {}
	tRiotOfNether_MonsterDropItem[2851][1][10]["RandomItemChanceType"] = 1									
	tRiotOfNether_MonsterDropItem[2851][1][10]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][10]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2851][1][10]["RewardItem"][1]["Id"] = 3306901
	tRiotOfNether_MonsterDropItem[2851][1][10]["RewardItem"][1]["Attr"] = "0 120"
	tRiotOfNether_MonsterDropItem[2851][1][10]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][10]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2851][1][10]["RewardEffect"]["Effect"] = "eidolon"
	-- 七阶武器神魂礼包碎片（赠） 0.2%          
	tRiotOfNether_MonsterDropItem[2851][1][11] = {}
	tRiotOfNether_MonsterDropItem[2851][1][11]["RandomItemChanceType"] = 3
	tRiotOfNether_MonsterDropItem[2851][1][11]["ItemSelfChanceSum"] = 10000
	tRiotOfNether_MonsterDropItem[2851][1][11]["ItemChance"] = 20	
	tRiotOfNether_MonsterDropItem[2851][1][11]["GlobalId"] = 51949
	tRiotOfNether_MonsterDropItem[2851][1][11]["GlobalPos"] = 0
	tRiotOfNether_MonsterDropItem[2851][1][11]["GlobalLimit"] = 8	
	tRiotOfNether_MonsterDropItem[2851][1][11]["RewardItem"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][11]["RewardItem"][1] = {}
	tRiotOfNether_MonsterDropItem[2851][1][11]["RewardItem"][1]["Id"] = 3315497
	tRiotOfNether_MonsterDropItem[2851][1][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tRiotOfNether_MonsterDropItem[2851][1][11]["TalkAll"] = tRiotOfNether_Text["BroadCast"][3315497]
	tRiotOfNether_MonsterDropItem[2851][1][11]["RewardEffect"] = {}
	tRiotOfNether_MonsterDropItem[2851][1][11]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_MonsterDropItem[2851][1][11]["RewardEffect"]["Effect"] = "eidolon"
	
	
local tRiotOfNether_Award = {}
	-- 幽冥秘宝箱
	tRiotOfNether_Award[3306898] = {}
	tRiotOfNether_Award[3306898][1] = {}
	tRiotOfNether_Award[3306898][1]["ItemChanceSum"] = 10000
	-- 通神丹 10%
	tRiotOfNether_Award[3306898][1][1] = {}
	tRiotOfNether_Award[3306898][1][1]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][1]["ItemChance"] = 1000
	tRiotOfNether_Award[3306898][1][1]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][1]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][1]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][1]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][1]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][1]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][1]["RewardItem"][1]["Id"] = 3003125	
    tRiotOfNether_Award[3306898][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tRiotOfNether_Award[3306898][1][1]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][1]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][1]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][1]["LogStep"] = "1[6]"
	-- 秘制免费修炼丹 4%
	tRiotOfNether_Award[3306898][1][2] = {}
	tRiotOfNether_Award[3306898][1][2]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][2]["ItemChance"] = 400
	tRiotOfNether_Award[3306898][1][2]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][2]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][2]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][2]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][2]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][2]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][2]["RewardItem"][1]["Id"] = 3002926	
    tRiotOfNether_Award[3306898][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_Award[3306898][1][2]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][2]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][2]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][2]["LogStep"] = "1[6]"
	-- 究极通神丹 3%
	tRiotOfNether_Award[3306898][1][3] = {}
	tRiotOfNether_Award[3306898][1][3]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][3]["ItemChance"] = 300
	tRiotOfNether_Award[3306898][1][3]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][3]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][3]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][3]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][3]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][3]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][3]["RewardItem"][1]["Id"] = 3003126	
    tRiotOfNether_Award[3306898][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tRiotOfNether_Award[3306898][1][3]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][3]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][3]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][3]["LogStep"] = "1[6]"
	-- 魔武通玄丹碎片 2%
	tRiotOfNether_Award[3306898][1][4] = {}
	tRiotOfNether_Award[3306898][1][4]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][4]["ItemChance"] = 200
	tRiotOfNether_Award[3306898][1][4]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][4]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][4]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][4]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][4]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][4]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][4]["RewardItem"][1]["Id"] = 3303519	
    tRiotOfNether_Award[3306898][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_Award[3306898][1][4]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][4]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][4]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][4]["LogStep"] = "1[6]"
	-- 魔武通玄丹 1%
	tRiotOfNether_Award[3306898][1][5] = {}
	tRiotOfNether_Award[3306898][1][5]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][5]["ItemChance"] = 100
	tRiotOfNether_Award[3306898][1][5]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][5]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][5]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][5]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][5]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][5]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][5]["RewardItem"][1]["Id"] = 3303373	
    tRiotOfNether_Award[3306898][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_Award[3306898][1][5]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][5]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][5]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][5]["LogStep"] = "1[6]"
	tRiotOfNether_Award[3306898][1][5]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3306898][5]
	tRiotOfNether_Award[3306898][1][5]["RewardBroadCastType"] = 2005
	-- 50气力值改为100气力值 20%
	tRiotOfNether_Award[3306898][1][6] = {}
	tRiotOfNether_Award[3306898][1][6]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][6]["ItemChance"] = 2000
	tRiotOfNether_Award[3306898][1][6]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][6]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][6]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][6]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][6]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][6]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][6]["RewardItem"][1]["Id"] = 3304324	
    tRiotOfNether_Award[3306898][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_Award[3306898][1][6]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][6]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][6]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][6]["LogStep"] = "1[6]"
	-- 幽冥碎片 8%
	tRiotOfNether_Award[3306898][1][7] = {}
	tRiotOfNether_Award[3306898][1][7]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][7]["ItemChance"] = 800
	tRiotOfNether_Award[3306898][1][7]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][7]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][7]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][7]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][7]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][7]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][7]["RewardItem"][1]["Id"] = 3306899	
    tRiotOfNether_Award[3306898][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_Award[3306898][1][7]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][7]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][7]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][7]["LogStep"] = "1[6]"
	-- 300气力值 2%
	tRiotOfNether_Award[3306898][1][8] = {}
	tRiotOfNether_Award[3306898][1][8]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][8]["ItemChance"] = 200
	tRiotOfNether_Award[3306898][1][8]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][8]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][8]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][8]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][8]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][8]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][8]["RewardItem"][1]["Id"] = 3304327	
    tRiotOfNether_Award[3306898][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_Award[3306898][1][8]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][8]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][8]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][8]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][8]["LogStep"] = "1[6]"
	-- 1500气力值 1%
	tRiotOfNether_Award[3306898][1][9] = {}
	tRiotOfNether_Award[3306898][1][9]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][9]["ItemChance"] = 100
	tRiotOfNether_Award[3306898][1][9]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][9]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][9]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][9]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][9]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][9]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][9]["RewardItem"][1]["Id"] = 3008195	
    tRiotOfNether_Award[3306898][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_Award[3306898][1][9]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][9]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][9]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][9]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][9]["LogStep"] = "1[6]"
	tRiotOfNether_Award[3306898][1][9]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3306898][9]
	tRiotOfNether_Award[3306898][1][9]["RewardBroadCastType"] = 2005
	-- 人参果*1改为人参果*2 20%
	tRiotOfNether_Award[3306898][1][10] = {}
	tRiotOfNether_Award[3306898][1][10]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][10]["ItemChance"] = 2000
	tRiotOfNether_Award[3306898][1][10]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][10]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][10]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][10]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][10]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][10]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][10]["RewardItem"][1]["Id"] = 3009100	
    tRiotOfNether_Award[3306898][1][10]["RewardItem"][1]["Attr"] = "0 2"
	tRiotOfNether_Award[3306898][1][10]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][10]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][10]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][10]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][10]["LogStep"] = "1[6]"
	-- 明亮星陨石 2%
	tRiotOfNether_Award[3306898][1][11] = {}
	tRiotOfNether_Award[3306898][1][11]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][11]["ItemChance"] = 200
	tRiotOfNether_Award[3306898][1][11]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][11]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][11]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][11]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][11]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][11]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][11]["RewardItem"][1]["Id"] = 3009001	
    tRiotOfNether_Award[3306898][1][11]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tRiotOfNether_Award[3306898][1][11]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][11]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][11]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][11]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][11]["LogStep"] = "1[6]"
	-- 晶莹星陨石 0.9%
	tRiotOfNether_Award[3306898][1][12] = {}
	tRiotOfNether_Award[3306898][1][12]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][12]["ItemChance"] = 90
	tRiotOfNether_Award[3306898][1][12]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][12]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][12]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][12]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][12]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][12]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][12]["RewardItem"][1]["Id"] = 3009002	
    tRiotOfNether_Award[3306898][1][12]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tRiotOfNether_Award[3306898][1][12]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][12]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][12]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][12]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][12]["LogStep"] = "1[6]"
	tRiotOfNether_Award[3306898][1][12]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3306898][12]
	tRiotOfNether_Award[3306898][1][12]["RewardBroadCastType"] = 2005
	-- 赤练石+1 20%
	tRiotOfNether_Award[3306898][1][13] = {}
	tRiotOfNether_Award[3306898][1][13]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][13]["ItemChance"] = 2000
	tRiotOfNether_Award[3306898][1][13]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][13]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][13]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][13]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][13]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][13]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][13]["RewardItem"][1]["Id"] = 730001	
    tRiotOfNether_Award[3306898][1][13]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tRiotOfNether_Award[3306898][1][13]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][13]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][13]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][13]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][13]["LogStep"] = "1[6]"
	-- 赤练石+2 2%
	tRiotOfNether_Award[3306898][1][14] = {}
	tRiotOfNether_Award[3306898][1][14]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][14]["ItemChance"] = 200
	tRiotOfNether_Award[3306898][1][14]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][14]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][14]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][14]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][14]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][14]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][14]["RewardItem"][1]["Id"] = 730002	
    tRiotOfNether_Award[3306898][1][14]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tRiotOfNether_Award[3306898][1][14]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][14]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][14]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][14]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][14]["LogStep"] = "1[6]"
	-- 赤练石+3 2%
	tRiotOfNether_Award[3306898][1][15] = {}
	tRiotOfNether_Award[3306898][1][15]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][15]["ItemChance"] = 200
	tRiotOfNether_Award[3306898][1][15]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][15]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][15]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][15]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][15]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][15]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][15]["RewardItem"][1]["Id"] = 730003	
    tRiotOfNether_Award[3306898][1][15]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tRiotOfNether_Award[3306898][1][15]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][15]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][15]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][15]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][15]["LogStep"] = "1[6]"
	-- 赤练石+5 2%
	tRiotOfNether_Award[3306898][1][16] = {}
	tRiotOfNether_Award[3306898][1][16]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][16]["ItemChance"] = 200
	tRiotOfNether_Award[3306898][1][16]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][16]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][16]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][16]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][16]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][16]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][16]["RewardItem"][1]["Id"] = 730005	
    tRiotOfNether_Award[3306898][1][16]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tRiotOfNether_Award[3306898][1][16]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][16]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][16]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][16]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][16]["LogStep"] = "1[6]"
	tRiotOfNether_Award[3306898][1][16]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3306898][16]
	tRiotOfNether_Award[3306898][1][16]["RewardBroadCastType"] = 2005
	-- 赤练石+6 0.1% 
	tRiotOfNether_Award[3306898][1][17] = {}
	tRiotOfNether_Award[3306898][1][17]["RandomItemChanceType"] = 2
	tRiotOfNether_Award[3306898][1][17]["ItemChance"] = 10
	tRiotOfNether_Award[3306898][1][17]["DeleteItem"] = {}
	tRiotOfNether_Award[3306898][1][17]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306898][1][17]["DeleteItem"][1]["Id"] = 3306898
	tRiotOfNether_Award[3306898][1][17]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3306898][1][17]["GlobalId"] = 51949
	tRiotOfNether_Award[3306898][1][17]["Pos"] = 1
	tRiotOfNether_Award[3306898][1][17]["MaxData"] = 10
	tRiotOfNether_Award[3306898][1][17]["RewardItem"] = {}				
	tRiotOfNether_Award[3306898][1][17]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3306898][1][17]["RewardItem"][1]["Id"] = 730006	
    tRiotOfNether_Award[3306898][1][17]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tRiotOfNether_Award[3306898][1][17]["RewardEffect"] = {}
	tRiotOfNether_Award[3306898][1][17]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306898][1][17]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306898][1][17]["LogId"] = 12000957
	tRiotOfNether_Award[3306898][1][17]["LogStep"] = "1[6]"
	tRiotOfNether_Award[3306898][1][17]["FullIndex"] = 6
	tRiotOfNether_Award[3306898][1][17]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3306898][17]
	tRiotOfNether_Award[3306898][1][17]["RewardBroadCastType"] = 2005


	-- 每日排行榜第1名
	tRiotOfNether_Award[3307021] = {}
	tRiotOfNether_Award[3307021]["DeleteItem"] = {}
	tRiotOfNether_Award[3307021]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307021]["DeleteItem"][1]["Id"] = 3307021
	tRiotOfNether_Award[3307021]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3307021]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307021]["RewardStrengthValue"]["Value"] = 1500			
	-- tRiotOfNether_Award[3307021]["RewardExpPercentSpecial"] = {}	
    -- tRiotOfNether_Award[3307021]["RewardExpPercentSpecial"]["Value"] = 1
	-- tRiotOfNether_Award[3307021]["RewardExpPercentSpecial"]["FullIndex"] = "RewardStrengthValue"
	-- tRiotOfNether_Award[3307021]["RewardExpPercentSpecial"]["FullValue"] = 500
	-- tRiotOfNether_Award[3307021]["RewardExpPercentSpecial"]["FullLog"] = "0,0,3307021,1,12000957,2,12,500"
	tRiotOfNether_Award[3307021]["RewardEffect"] = {}
	tRiotOfNether_Award[3307021]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307021]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307021]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307021]
	tRiotOfNether_Award[3307021]["RewardBroadCastType"] = 2005
	tRiotOfNether_Award[3307021]["LogId"] = 12000957
	tRiotOfNether_Award[3307021]["LogStep"] = 2	
	-- 每日排行榜第2名
	tRiotOfNether_Award[3307022] = {}
	tRiotOfNether_Award[3307022]["DeleteItem"] = {}
	tRiotOfNether_Award[3307022]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307022]["DeleteItem"][1]["Id"] = 3307022
	tRiotOfNether_Award[3307022]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3307022]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307022]["RewardStrengthValue"]["Value"] = 1200			
	tRiotOfNether_Award[3307022]["RewardEffect"] = {}
	tRiotOfNether_Award[3307022]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307022]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307022]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307022]
	tRiotOfNether_Award[3307022]["RewardBroadCastType"] = 2005
	tRiotOfNether_Award[3307022]["LogId"] = 12000957
	tRiotOfNether_Award[3307022]["LogStep"] = 2	
	-- 每日排行榜第3名
	tRiotOfNether_Award[3307023] = {}
	tRiotOfNether_Award[3307023]["DeleteItem"] = {}
	tRiotOfNether_Award[3307023]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307023]["DeleteItem"][1]["Id"] = 3307023
	tRiotOfNether_Award[3307023]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3307023]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307023]["RewardStrengthValue"]["Value"] = 1200			
	tRiotOfNether_Award[3307023]["RewardEffect"] = {}
	tRiotOfNether_Award[3307023]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307023]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307023]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307023]
	tRiotOfNether_Award[3307023]["RewardBroadCastType"] = 2005
	tRiotOfNether_Award[3307023]["LogId"] = 12000957
	tRiotOfNether_Award[3307023]["LogStep"] = 2	
	-- 每日排行榜第4名
	tRiotOfNether_Award[3307024] = {}
	tRiotOfNether_Award[3307024]["DeleteItem"] = {}
	tRiotOfNether_Award[3307024]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307024]["DeleteItem"][1]["Id"] = 3307024
	tRiotOfNether_Award[3307024]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3307024]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307024]["RewardStrengthValue"]["Value"] = 1000			
	tRiotOfNether_Award[3307024]["RewardEffect"] = {}
	tRiotOfNether_Award[3307024]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307024]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307024]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307024]
	tRiotOfNether_Award[3307024]["RewardBroadCastType"] = 2005
	tRiotOfNether_Award[3307024]["LogId"] = 12000957
	tRiotOfNether_Award[3307024]["LogStep"] = 2	
	-- 每日排行榜第5名
	tRiotOfNether_Award[3307025] = {}
	tRiotOfNether_Award[3307025]["DeleteItem"] = {}
	tRiotOfNether_Award[3307025]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307025]["DeleteItem"][1]["Id"] = 3307025
	tRiotOfNether_Award[3307025]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3307025]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307025]["RewardStrengthValue"]["Value"] = 1000			
	tRiotOfNether_Award[3307025]["RewardEffect"] = {}
	tRiotOfNether_Award[3307025]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307025]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307025]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307025]
	tRiotOfNether_Award[3307025]["RewardBroadCastType"] = 2005
	tRiotOfNether_Award[3307025]["LogId"] = 12000957
	tRiotOfNether_Award[3307025]["LogStep"] = 2	
	-- 每日排行榜第6名
	tRiotOfNether_Award[3307026] = {}
	tRiotOfNether_Award[3307026]["DeleteItem"] = {}
	tRiotOfNether_Award[3307026]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307026]["DeleteItem"][1]["Id"] = 3307026
	tRiotOfNether_Award[3307026]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3307026]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307026]["RewardStrengthValue"]["Value"] = 1000			
	tRiotOfNether_Award[3307026]["RewardEffect"] = {}
	tRiotOfNether_Award[3307026]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307026]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307026]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307026]
	tRiotOfNether_Award[3307026]["RewardBroadCastType"] = 2005
	tRiotOfNether_Award[3307026]["LogId"] = 12000957
	tRiotOfNether_Award[3307026]["LogStep"] = 2	
	-- 每日排行榜第7名
	tRiotOfNether_Award[3307027] = {}
	tRiotOfNether_Award[3307027]["DeleteItem"] = {}
	tRiotOfNether_Award[3307027]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307027]["DeleteItem"][1]["Id"] = 3307027
	tRiotOfNether_Award[3307027]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3307027]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307027]["RewardStrengthValue"]["Value"] = 800			
	tRiotOfNether_Award[3307027]["RewardEffect"] = {}
	tRiotOfNether_Award[3307027]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307027]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307027]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307027]
	tRiotOfNether_Award[3307027]["RewardBroadCastType"] = 2005
	tRiotOfNether_Award[3307027]["LogId"] = 12000957
	tRiotOfNether_Award[3307027]["LogStep"] = 2	
	-- 每日排行榜第8名
	tRiotOfNether_Award[3307028] = {}
	tRiotOfNether_Award[3307028]["DeleteItem"] = {}
	tRiotOfNether_Award[3307028]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307028]["DeleteItem"][1]["Id"] = 3307028
	tRiotOfNether_Award[3307028]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3307028]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307028]["RewardStrengthValue"]["Value"] = 800			
	tRiotOfNether_Award[3307028]["RewardEffect"] = {}
	tRiotOfNether_Award[3307028]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307028]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307028]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307028]
	tRiotOfNether_Award[3307028]["RewardBroadCastType"] = 2005
	tRiotOfNether_Award[3307028]["LogId"] = 12000957
	tRiotOfNether_Award[3307028]["LogStep"] = 2	
	-- 每日排行榜第9名
	tRiotOfNether_Award[3307029] = {}
	tRiotOfNether_Award[3307029]["DeleteItem"] = {}
	tRiotOfNether_Award[3307029]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307029]["DeleteItem"][1]["Id"] = 3307029
	tRiotOfNether_Award[3307029]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3307029]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307029]["RewardStrengthValue"]["Value"] = 800			
	tRiotOfNether_Award[3307029]["RewardEffect"] = {}
	tRiotOfNether_Award[3307029]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307029]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307029]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307029]
	tRiotOfNether_Award[3307029]["RewardBroadCastType"] = 2005
	tRiotOfNether_Award[3307029]["LogId"] = 12000957
	tRiotOfNether_Award[3307029]["LogStep"] = 2	
	-- 每日排行榜第10名
	tRiotOfNether_Award[3307030] = {}
	tRiotOfNether_Award[3307030]["DeleteItem"] = {}
	tRiotOfNether_Award[3307030]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307030]["DeleteItem"][1]["Id"] = 3307030
	tRiotOfNether_Award[3307030]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3307030]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307030]["RewardStrengthValue"]["Value"] = 800			
	tRiotOfNether_Award[3307030]["RewardEffect"] = {}
	tRiotOfNether_Award[3307030]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307030]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307030]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307030]
	tRiotOfNether_Award[3307030]["RewardBroadCastType"] = 2005
	tRiotOfNether_Award[3307030]["LogId"] = 12000957
	tRiotOfNether_Award[3307030]["LogStep"] = 2	
	
	-- 总排行榜第1名
	tRiotOfNether_Award[3307031] = {}
	tRiotOfNether_Award[3307031]["DeleteItem"] = {}
	tRiotOfNether_Award[3307031]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307031]["DeleteItem"][1]["Id"] = 3307031
	tRiotOfNether_Award[3307031]["DeleteItem"][1]["ItemNum"] = 1	
	tRiotOfNether_Award[3307031]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307031]["RewardStrengthValue"]["Value"] = 20000		
	-- tRiotOfNether_Award[3307031]["RewardExpPercentSpecial"] = {}	
    -- tRiotOfNether_Award[3307031]["RewardExpPercentSpecial"]["Value"] = 10
	-- tRiotOfNether_Award[3307031]["RewardExpPercentSpecial"]["FullIndex"] = "RewardStrengthValue"
	-- tRiotOfNether_Award[3307031]["RewardExpPercentSpecial"]["FullValue"] = 5000
	-- tRiotOfNether_Award[3307031]["RewardExpPercentSpecial"]["FullLog"] = "0,0,3307031,1,12000957,2,12,5000"
	tRiotOfNether_Award[3307031]["RewardEffect"] = {}
	tRiotOfNether_Award[3307031]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307031]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307031]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307031]
	tRiotOfNether_Award[3307031]["LogId"] = 12000957
	tRiotOfNether_Award[3307031]["LogStep"] = 2	
	-- 总排行榜第2名
	tRiotOfNether_Award[3307032] = {}
	tRiotOfNether_Award[3307032]["DeleteItem"] = {}
	tRiotOfNether_Award[3307032]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307032]["DeleteItem"][1]["Id"] = 3307032
	tRiotOfNether_Award[3307032]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3307032]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307032]["RewardStrengthValue"]["Value"] = 16000	
	-- tRiotOfNether_Award[3307032]["RewardExpPercentSpecial"] = {}	
    -- tRiotOfNether_Award[3307032]["RewardExpPercentSpecial"]["Value"] = 8
	-- tRiotOfNether_Award[3307032]["RewardExpPercentSpecial"]["FullIndex"] = "RewardStrengthValue"
	-- tRiotOfNether_Award[3307032]["RewardExpPercentSpecial"]["FullValue"] = 4000
	-- tRiotOfNether_Award[3307032]["RewardExpPercentSpecial"]["FullLog"] = "0,0,3307032,1,12000957,2,12,4000"
	tRiotOfNether_Award[3307032]["RewardEffect"] = {}
	tRiotOfNether_Award[3307032]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307032]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307032]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307032]
	tRiotOfNether_Award[3307032]["LogId"] = 12000957
	tRiotOfNether_Award[3307032]["LogStep"] = 2	
	-- 总排行榜第3名
	tRiotOfNether_Award[3307033] = {}
	tRiotOfNether_Award[3307033]["DeleteItem"] = {}
	tRiotOfNether_Award[3307033]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307033]["DeleteItem"][1]["Id"] = 3307033
	tRiotOfNether_Award[3307033]["DeleteItem"][1]["ItemNum"] = 1
	tRiotOfNether_Award[3307033]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307033]["RewardStrengthValue"]["Value"] = 14000	
	-- tRiotOfNether_Award[3307033]["RewardExpPercentSpecial"] = {}	
    -- tRiotOfNether_Award[3307033]["RewardExpPercentSpecial"]["Value"] = 7
	-- tRiotOfNether_Award[3307033]["RewardExpPercentSpecial"]["FullIndex"] = "RewardStrengthValue"
	-- tRiotOfNether_Award[3307033]["RewardExpPercentSpecial"]["FullValue"] = 3500
	-- tRiotOfNether_Award[3307033]["RewardExpPercentSpecial"]["FullLog"] = "0,0,3307033,1,12000957,2,12,3500"
	tRiotOfNether_Award[3307033]["RewardEffect"] = {}
	tRiotOfNether_Award[3307033]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307033]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307033]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307033]
	tRiotOfNether_Award[3307033]["LogId"] = 12000957
	tRiotOfNether_Award[3307033]["LogStep"] = 2	
	-- 总排行榜第4名
	tRiotOfNether_Award[3307034] = {}
	tRiotOfNether_Award[3307034]["DeleteItem"] = {}
	tRiotOfNether_Award[3307034]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307034]["DeleteItem"][1]["Id"] = 3307034
	tRiotOfNether_Award[3307034]["DeleteItem"][1]["ItemNum"] = 1	
	tRiotOfNether_Award[3307034]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307034]["RewardStrengthValue"]["Value"] = 12000		
	-- tRiotOfNether_Award[3307034]["RewardExpPercentSpecial"] = {}	
    -- tRiotOfNether_Award[3307034]["RewardExpPercentSpecial"]["Value"] = 6
	-- tRiotOfNether_Award[3307034]["RewardExpPercentSpecial"]["FullIndex"] = "RewardStrengthValue"
	-- tRiotOfNether_Award[3307034]["RewardExpPercentSpecial"]["FullValue"] = 3000
	-- tRiotOfNether_Award[3307034]["RewardExpPercentSpecial"]["FullLog"] = "0,0,3307034,1,12000957,2,12,3000"
	tRiotOfNether_Award[3307034]["RewardEffect"] = {}
	tRiotOfNether_Award[3307034]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307034]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307034]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307034]
	tRiotOfNether_Award[3307034]["LogId"] = 12000957
	tRiotOfNether_Award[3307034]["LogStep"] = 2	
	-- 总排行榜第5名
	tRiotOfNether_Award[3307035] = {}
	tRiotOfNether_Award[3307035]["DeleteItem"] = {}
	tRiotOfNether_Award[3307035]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307035]["DeleteItem"][1]["Id"] = 3307035
	tRiotOfNether_Award[3307035]["DeleteItem"][1]["ItemNum"] = 1	
	tRiotOfNether_Award[3307035]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307035]["RewardStrengthValue"]["Value"] = 11000			
	-- tRiotOfNether_Award[3307035]["RewardExpPercentSpecial"] = {}	
    -- tRiotOfNether_Award[3307035]["RewardExpPercentSpecial"]["Value"] = 5
	-- tRiotOfNether_Award[3307035]["RewardExpPercentSpecial"]["FullIndex"] = "RewardStrengthValue"
	-- tRiotOfNether_Award[3307035]["RewardExpPercentSpecial"]["FullValue"] = 2500
	-- tRiotOfNether_Award[3307035]["RewardExpPercentSpecial"]["FullLog"] = "0,0,3307035,1,12000957,2,12,2500"
	tRiotOfNether_Award[3307035]["RewardEffect"] = {}
	tRiotOfNether_Award[3307035]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307035]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307035]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307035]
	tRiotOfNether_Award[3307035]["LogId"] = 12000957
	tRiotOfNether_Award[3307035]["LogStep"] = 2	
	-- 总排行榜第6名
	tRiotOfNether_Award[3307036] = {}
	tRiotOfNether_Award[3307036]["DeleteItem"] = {}
	tRiotOfNether_Award[3307036]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307036]["DeleteItem"][1]["Id"] = 3307036
	tRiotOfNether_Award[3307036]["DeleteItem"][1]["ItemNum"] = 1	
	tRiotOfNether_Award[3307036]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307036]["RewardStrengthValue"]["Value"] = 8000			
	-- tRiotOfNether_Award[3307036]["RewardExpPercentSpecial"] = {}	
    -- tRiotOfNether_Award[3307036]["RewardExpPercentSpecial"]["Value"] = 4
	-- tRiotOfNether_Award[3307036]["RewardExpPercentSpecial"]["FullIndex"] = "RewardStrengthValue"
	-- tRiotOfNether_Award[3307036]["RewardExpPercentSpecial"]["FullValue"] = 2000
	-- tRiotOfNether_Award[3307036]["RewardExpPercentSpecial"]["FullLog"] = "0,0,3307036,1,12000957,2,12,2000"
	tRiotOfNether_Award[3307036]["RewardEffect"] = {}
	tRiotOfNether_Award[3307036]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307036]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307036]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307036]
	tRiotOfNether_Award[3307036]["LogId"] = 12000957
	tRiotOfNether_Award[3307036]["LogStep"] = 2	
	-- 总排行榜第7名
	tRiotOfNether_Award[3307037] = {}
	tRiotOfNether_Award[3307037]["DeleteItem"] = {}
	tRiotOfNether_Award[3307037]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307037]["DeleteItem"][1]["Id"] = 3307037
	tRiotOfNether_Award[3307037]["DeleteItem"][1]["ItemNum"] = 1	
	tRiotOfNether_Award[3307037]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307037]["RewardStrengthValue"]["Value"] = 6000			
	-- tRiotOfNether_Award[3307037]["RewardExpPercentSpecial"] = {}	
    -- tRiotOfNether_Award[3307037]["RewardExpPercentSpecial"]["Value"] = 3
	-- tRiotOfNether_Award[3307037]["RewardExpPercentSpecial"]["FullIndex"] = "RewardStrengthValue"
	-- tRiotOfNether_Award[3307037]["RewardExpPercentSpecial"]["FullValue"] = 1500
	-- tRiotOfNether_Award[3307037]["RewardExpPercentSpecial"]["FullLog"] = "0,0,3307037,1,12000957,2,12,1500"
	tRiotOfNether_Award[3307037]["RewardEffect"] = {}
	tRiotOfNether_Award[3307037]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307037]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307037]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307037]
	tRiotOfNether_Award[3307037]["LogId"] = 12000957
	tRiotOfNether_Award[3307037]["LogStep"] = 2	
	-- 总排行榜第8名
	tRiotOfNether_Award[3307038] = {}
	tRiotOfNether_Award[3307038]["DeleteItem"] = {}
	tRiotOfNether_Award[3307038]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307038]["DeleteItem"][1]["Id"] = 3307038
	tRiotOfNether_Award[3307038]["DeleteItem"][1]["ItemNum"] = 1	
	tRiotOfNether_Award[3307038]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307038]["RewardStrengthValue"]["Value"] = 4000			
	-- tRiotOfNether_Award[3307038]["RewardExpPercentSpecial"] = {}	
    -- tRiotOfNether_Award[3307038]["RewardExpPercentSpecial"]["Value"] = 2
	-- tRiotOfNether_Award[3307038]["RewardExpPercentSpecial"]["FullIndex"] = "RewardStrengthValue"
	-- tRiotOfNether_Award[3307038]["RewardExpPercentSpecial"]["FullValue"] = 1000
	-- tRiotOfNether_Award[3307038]["RewardExpPercentSpecial"]["FullLog"] = "0,0,3307038,1,12000957,2,12,1000"
	tRiotOfNether_Award[3307038]["RewardEffect"] = {}
	tRiotOfNether_Award[3307038]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307038]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307038]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307038]
	tRiotOfNether_Award[3307038]["LogId"] = 12000957
	tRiotOfNether_Award[3307038]["LogStep"] = 2	
	-- 总排行榜第9名
	tRiotOfNether_Award[3307039] = {}
	tRiotOfNether_Award[3307039]["DeleteItem"] = {}
	tRiotOfNether_Award[3307039]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307039]["DeleteItem"][1]["Id"] = 3307039
	tRiotOfNether_Award[3307039]["DeleteItem"][1]["ItemNum"] = 1	
	tRiotOfNether_Award[3307039]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307039]["RewardStrengthValue"]["Value"] = 4000		
	-- tRiotOfNether_Award[3307039]["RewardExpPercentSpecial"] = {}	
    -- tRiotOfNether_Award[3307039]["RewardExpPercentSpecial"]["Value"] = 2
	-- tRiotOfNether_Award[3307039]["RewardExpPercentSpecial"]["FullIndex"] = "RewardStrengthValue"
	-- tRiotOfNether_Award[3307039]["RewardExpPercentSpecial"]["FullValue"] = 1000
	-- tRiotOfNether_Award[3307039]["RewardExpPercentSpecial"]["FullLog"] = "0,0,3307039,1,12000957,2,12,1000"
	tRiotOfNether_Award[3307039]["RewardEffect"] = {}
	tRiotOfNether_Award[3307039]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307039]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307039]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307039]
	tRiotOfNether_Award[3307039]["LogId"] = 12000957
	tRiotOfNether_Award[3307039]["LogStep"] = 2	
	-- 总排行榜第10名
	tRiotOfNether_Award[3307040] = {}
	tRiotOfNether_Award[3307040]["DeleteItem"] = {}
	tRiotOfNether_Award[3307040]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307040]["DeleteItem"][1]["Id"] = 3307040
	tRiotOfNether_Award[3307040]["DeleteItem"][1]["ItemNum"] = 1	
	tRiotOfNether_Award[3307040]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3307040]["RewardStrengthValue"]["Value"] = 4000		
	-- tRiotOfNether_Award[3307040]["RewardExpPercentSpecial"] = {}	
    -- tRiotOfNether_Award[3307040]["RewardExpPercentSpecial"]["Value"] = 2
	-- tRiotOfNether_Award[3307040]["RewardExpPercentSpecial"]["FullIndex"] = "RewardStrengthValue"
	-- tRiotOfNether_Award[3307040]["RewardExpPercentSpecial"]["FullValue"] = 1000
	-- tRiotOfNether_Award[3307040]["RewardExpPercentSpecial"]["FullLog"] = "0,0,3307040,1,12000957,2,12,1000"
	tRiotOfNether_Award[3307040]["RewardEffect"] = {}
	tRiotOfNether_Award[3307040]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307040]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307040]["RewardBroadCast"] = tRiotOfNether_Text["BroadCast"][3307040]
	tRiotOfNether_Award[3307040]["LogId"] = 12000957
	tRiotOfNether_Award[3307040]["LogStep"] = 2	
	
	
	-- 幽冥碎片
	tRiotOfNether_Award[3306899] = {}
	tRiotOfNether_Award[3306899][1] = {}
	tRiotOfNether_Award[3306899][1]["DeleteItem"] = {}
	tRiotOfNether_Award[3306899][1]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306899][1]["DeleteItem"][1]["Id"] = 3306899
	tRiotOfNether_Award[3306899][1]["DeleteItem"][1]["ItemNum"] = 1	
	tRiotOfNether_Award[3306899][1]["DeleteItem"][1]["NoItem"] = tRiotOfNether_Text[3306899]["NoItem"]
	tRiotOfNether_Award[3306899][1]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3306899][1]["RewardStrengthValue"]["Value"] = 100	
	tRiotOfNether_Award[3306899][1]["RewardEffect"] = {}
	tRiotOfNether_Award[3306899][1]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306899][1]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306899][1]["LogId"] = 12000957
	tRiotOfNether_Award[3306899][1]["LogStep"] = 2
	tRiotOfNether_Award[3306899][2] = {}
	tRiotOfNether_Award[3306899][2]["DeleteItem"] = {}
	tRiotOfNether_Award[3306899][2]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306899][2]["DeleteItem"][1]["Id"] = 3306899
	tRiotOfNether_Award[3306899][2]["DeleteItem"][1]["ItemNum"] = 7	
	tRiotOfNether_Award[3306899][2]["DeleteItem"][1]["NoItem"] = tRiotOfNether_Text[3306899]["NoItem"]
	tRiotOfNether_Award[3306899][2]["RewardStrengthValue"] = {}				
	tRiotOfNether_Award[3306899][2]["RewardStrengthValue"]["Value"] = 1000	
	tRiotOfNether_Award[3306899][2]["RewardEffect"] = {}
	tRiotOfNether_Award[3306899][2]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306899][2]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306899][2]["LogId"] = 12000957
	tRiotOfNether_Award[3306899][2]["LogStep"] = 2
	
	-- 60分钟修为值包
	tRiotOfNether_Award[3306902] = {}
	tRiotOfNether_Award[3306902]["DeleteItem"] = {}
	tRiotOfNether_Award[3306902]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3306902]["DeleteItem"][1]["Id"] = 3306902
	tRiotOfNether_Award[3306902]["DeleteItem"][1]["ItemNum"] = 1		
	tRiotOfNether_Award[3306902]["RewardRepairValue"] = {}	
    tRiotOfNether_Award[3306902]["RewardRepairValue"]["Value"] = 60
	tRiotOfNether_Award[3306902]["RewardEffect"] = {}
	tRiotOfNether_Award[3306902]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3306902]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3306902]["LogId"] = 12000957
	tRiotOfNether_Award[3306902]["LogStep"] = 2	
	
	-- 获得荒冥镇狱降魔符
	tRiotOfNether_Award["GetTaoist"] = {}	
	tRiotOfNether_Award["GetTaoist"]["RewardItem"] = {}				
	tRiotOfNether_Award["GetTaoist"]["RewardItem"][1] = {}			
	tRiotOfNether_Award["GetTaoist"]["RewardItem"][1]["Id"] = 3307932	
    tRiotOfNether_Award["GetTaoist"]["RewardItem"][1]["Attr"] = "0 5"
    tRiotOfNether_Award["GetTaoist"]["EventType"] = 175
    tRiotOfNether_Award["GetTaoist"]["DataType"] = 62
    tRiotOfNether_Award["GetTaoist"]["RewardData"] = 1
    tRiotOfNether_Award["GetTaoist"]["RewardDelay"] = 1
    tRiotOfNether_Award["GetTaoist"]["RewardTimeType"] = 4
    tRiotOfNether_Award["GetTaoist"]["HaveReceiveNoTip"] = 1
	tRiotOfNether_Award["GetTaoist"]["RewardEffect"] = {}
	tRiotOfNether_Award["GetTaoist"]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award["GetTaoist"]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award["GetTaoist"]["LogId"] = 12000957
	tRiotOfNether_Award["GetTaoist"]["LogStep"] = 2	
	tRiotOfNether_Award["GetTaoist"]["Talk"] = tRiotOfNether_Text["GetTapistItem"]
	
	-- 荒冥镇狱降魔符
	tRiotOfNether_Award[3307932] = {}
	tRiotOfNether_Award[3307932]["DeleteItem"] = {}
	tRiotOfNether_Award[3307932]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307932]["DeleteItem"][1]["Id"] = 3307932
	tRiotOfNether_Award[3307932]["DeleteItem"][1]["ItemNum"] = 1		
	tRiotOfNether_Award[3307932]["DeleteItem"][1]["NoItem"] = tRiotOfNether_Text[3307932]["NoItem"]	
	tRiotOfNether_Award[3307932]["RewardItem"] = {}				
	tRiotOfNether_Award[3307932]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3307932]["RewardItem"][1]["Id"] = 3307933	
    tRiotOfNether_Award[3307932]["RewardItem"][1]["Attr"] = "0 1"
	tRiotOfNether_Award[3307932]["RewardEffect"] = {}
	tRiotOfNether_Award[3307932]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307932]["RewardEffect"]["Effect"] = "zf2-e233"
	tRiotOfNether_Award[3307932]["LogId"] = 12000957
	tRiotOfNether_Award[3307932]["LogStep"] = 2	
	
	-- 荒冥镇狱除魔礼包
	tRiotOfNether_Award[3307933] = {}
	tRiotOfNether_Award[3307933]["DeleteItem"] = {}
	tRiotOfNether_Award[3307933]["DeleteItem"][1] = {}
	tRiotOfNether_Award[3307933]["DeleteItem"][1]["Id"] = 3307933
	tRiotOfNether_Award[3307933]["DeleteItem"][1]["ItemNum"] = 1		
	tRiotOfNether_Award[3307933]["RewardItem"] = {}				
	tRiotOfNether_Award[3307933]["RewardItem"][1] = {}			
	tRiotOfNether_Award[3307933]["RewardItem"][1]["Id"] = 3009000	
    tRiotOfNether_Award[3307933]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tRiotOfNether_Award[3307933]["RewardItem"][2] = {}			
	tRiotOfNether_Award[3307933]["RewardItem"][2]["Id"] = 730002	
    tRiotOfNether_Award[3307933]["RewardItem"][2]["Attr"] = "0 1 3 10080 1"
	tRiotOfNether_Award[3307933]["RewardItem"][3] = {}			
	tRiotOfNether_Award[3307933]["RewardItem"][3]["Id"] = 3306898	
    tRiotOfNether_Award[3307933]["RewardItem"][3]["Attr"] = "0 1"
	tRiotOfNether_Award[3307933]["RewardItem"][4] = {}			
	tRiotOfNether_Award[3307933]["RewardItem"][4]["Id"] = 3306901	
    tRiotOfNether_Award[3307933]["RewardItem"][4]["Attr"] = "0 90 3"
	tRiotOfNether_Award[3307933]["RewardEffect"] = {}
	tRiotOfNether_Award[3307933]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_Award[3307933]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_Award[3307933]["LogId"] = 12000957
	tRiotOfNether_Award[3307933]["LogStep"] = 2	
	
local tRiotOfNether_NewAward = {}
	tRiotOfNether_NewAward["RandomAward"] = {}
	tRiotOfNether_NewAward["RandomAward"][1] = {}
	tRiotOfNether_NewAward["RandomAward"][1]["ItemChanceSum"] = 10000
	
	tRiotOfNether_NewAward["RandomAward"][1][1] = {}
	tRiotOfNether_NewAward["RandomAward"][1][1]["RandomItemChanceType"] = 2
	tRiotOfNether_NewAward["RandomAward"][1][1]["ItemChance"] = 5000
	tRiotOfNether_NewAward["RandomAward"][1][1]["Item_1"] = 1
	
	tRiotOfNether_NewAward["RandomAward"][1][2] = {}
	tRiotOfNether_NewAward["RandomAward"][1][2]["RandomItemChanceType"] = 2
	tRiotOfNether_NewAward["RandomAward"][1][2]["ItemChance"] = 5000
	tRiotOfNether_NewAward["RandomAward"][1][2]["Item_1"] = 2
	
		-- ===幽冥碎片单个使用
	-- ===索引:tRiotOfNether_NewAward[3306899][1]
	-- ===删除:3306899,1
	-- ===
	tRiotOfNether_NewAward[3306899] = {}
	tRiotOfNether_NewAward[3306899][1] = {}
	tRiotOfNether_NewAward[3306899][1]["LogId"] = 12000957
	tRiotOfNether_NewAward[3306899][1]["DeleteItem"] = {}
	tRiotOfNether_NewAward[3306899][1]["DeleteItem"][1] = {}
	tRiotOfNether_NewAward[3306899][1]["DeleteItem"][1]["Id"] = 3306899 -- 【库】NetherFlame[属性:11]
	tRiotOfNether_NewAward[3306899][1]["RewardItem"] = {}
	tRiotOfNether_NewAward[3306899][1]["RewardItem"][1] = {}
	tRiotOfNether_NewAward[3306899][1]["RewardItem"][1]["Id"] = 3306899 -- NetherFlame[3306899][属性:11][叠加:10000][金币:0], 【表格】幽冥碎片
	tRiotOfNether_NewAward[3306899][1]["RewardItem"][1]["Attr"] = "0 2" -- NetherFlame*2
	tRiotOfNether_NewAward[3306899][1]["RewardEffect"] = {}
	tRiotOfNether_NewAward[3306899][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRiotOfNether_NewAward[3306899][1]["RewardEffect"]["Effect"] = "angelwing"


	tRiotOfNether_NewAward[3306899][2] = {}
	-- ===幽冥碎片10个使用
	-- ===索引:tRiotOfNether_NewAward[3306899][2]
	-- ===删除:3306899,10
	-- ===
	tRiotOfNether_NewAward[3306899][2]["LogId"] = 12000957
	tRiotOfNether_NewAward[3306899][2]["DeleteItem"] = {}
	tRiotOfNether_NewAward[3306899][2]["DeleteItem"][1] = {}
	tRiotOfNether_NewAward[3306899][2]["DeleteItem"][1]["Id"] = 3306899 -- 【库】NetherFlame[属性:11]
	tRiotOfNether_NewAward[3306899][2]["DeleteItem"][1]["ItemNum"] = 10
	tRiotOfNether_NewAward[3306899][2]["RewardStrengthValue"] = {}
	tRiotOfNether_NewAward[3306899][2]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tRiotOfNether_NewAward[3306899][2]["RewardEffect"] = {}
	tRiotOfNether_NewAward[3306899][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRiotOfNether_NewAward[3306899][2]["RewardEffect"]["Effect"] = "angelwing"
	
	
-- 幽冥池
local tRiotOfNether_NetherPool = {}	
	-- 一阶幽冥池
	tRiotOfNether_NetherPool[1] = {}
	tRiotOfNether_NetherPool[1][1] = {}
	tRiotOfNether_NetherPool[1][1]["RewardItem"] = {}				
	tRiotOfNether_NetherPool[1][1]["RewardItem"][1] = {}			
	tRiotOfNether_NetherPool[1][1]["RewardItem"][1]["Id"] = 3200864	
    tRiotOfNether_NetherPool[1][1]["RewardItem"][1]["Attr"] = "0 2"
	tRiotOfNether_NetherPool[1][1]["RewardEffect"] = {}
	tRiotOfNether_NetherPool[1][1]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_NetherPool[1][1]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_NetherPool[1][1]["LogId"] = 12000957
	tRiotOfNether_NetherPool[1][1]["LogStep"] = "1[3]"
	tRiotOfNether_NetherPool[1][1]["StcIndex"] = 6
	tRiotOfNether_NetherPool[1][2] = {}
	tRiotOfNether_NetherPool[1][2]["RewardItem"] = {}				
	tRiotOfNether_NetherPool[1][2]["RewardItem"][1] = {}			
	tRiotOfNether_NetherPool[1][2]["RewardItem"][1]["Id"] = 3306899	
    tRiotOfNether_NetherPool[1][2]["RewardItem"][1]["Attr"] = "0 2"
	tRiotOfNether_NetherPool[1][2]["RewardEffect"] = {}
	tRiotOfNether_NetherPool[1][2]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_NetherPool[1][2]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_NetherPool[1][2]["LogId"] = 12000957
	tRiotOfNether_NetherPool[1][2]["LogStep"] = "1[4]"
	tRiotOfNether_NetherPool[1][2]["StcIndex"] = 7
	tRiotOfNether_NetherPool[1][3] = {}
	tRiotOfNether_NetherPool[1][3]["RewardItem"] = {}				
	tRiotOfNether_NetherPool[1][3]["RewardItem"][1] = {}			
	tRiotOfNether_NetherPool[1][3]["RewardItem"][1]["Id"] = 3306898	
    tRiotOfNether_NetherPool[1][3]["RewardItem"][1]["Attr"] = "0 2"
	tRiotOfNether_NetherPool[1][3]["RewardEffect"] = {}
	tRiotOfNether_NetherPool[1][3]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_NetherPool[1][3]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_NetherPool[1][3]["LogId"] = 12000957
	tRiotOfNether_NetherPool[1][3]["LogStep"] = "1[5]"
	tRiotOfNether_NetherPool[1][3]["StcIndex"] = 8
	-- 二阶幽冥池
	tRiotOfNether_NetherPool[2] = {}
	tRiotOfNether_NetherPool[2][1] = {}
	tRiotOfNether_NetherPool[2][1]["RewardItem"] = {}				
	tRiotOfNether_NetherPool[2][1]["RewardItem"][1] = {}			
	tRiotOfNether_NetherPool[2][1]["RewardItem"][1]["Id"] = 3200864	
    tRiotOfNether_NetherPool[2][1]["RewardItem"][1]["Attr"] = "0 3"
	tRiotOfNether_NetherPool[2][1]["RewardEffect"] = {}
	tRiotOfNether_NetherPool[2][1]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_NetherPool[2][1]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_NetherPool[2][1]["LogId"] = 12000957
	tRiotOfNether_NetherPool[2][1]["LogStep"] = "1[3]"
	tRiotOfNether_NetherPool[2][1]["StcIndex"] = 6
	tRiotOfNether_NetherPool[2][2] = {}
	tRiotOfNether_NetherPool[2][2]["RewardItem"] = {}				
	tRiotOfNether_NetherPool[2][2]["RewardItem"][1] = {}			
	tRiotOfNether_NetherPool[2][2]["RewardItem"][1]["Id"] = 3306899	
    tRiotOfNether_NetherPool[2][2]["RewardItem"][1]["Attr"] = "0 2"
	tRiotOfNether_NetherPool[2][2]["RewardEffect"] = {}
	tRiotOfNether_NetherPool[2][2]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_NetherPool[2][2]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_NetherPool[2][2]["LogId"] = 12000957
	tRiotOfNether_NetherPool[2][2]["LogStep"] = "1[4]"
	tRiotOfNether_NetherPool[2][2]["StcIndex"] = 7
	tRiotOfNether_NetherPool[2][3] = {}
	tRiotOfNether_NetherPool[2][3]["RewardItem"] = {}				
	tRiotOfNether_NetherPool[2][3]["RewardItem"][1] = {}			
	tRiotOfNether_NetherPool[2][3]["RewardItem"][1]["Id"] = 3306898	
    tRiotOfNether_NetherPool[2][3]["RewardItem"][1]["Attr"] = "0 2"
	tRiotOfNether_NetherPool[2][3]["RewardEffect"] = {}
	tRiotOfNether_NetherPool[2][3]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_NetherPool[2][3]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_NetherPool[2][3]["LogId"] = 12000957
	tRiotOfNether_NetherPool[2][3]["LogStep"] = "1[5]"
	tRiotOfNether_NetherPool[2][3]["StcIndex"] = 8
	-- 三阶幽冥池
	tRiotOfNether_NetherPool[3] = {}
	tRiotOfNether_NetherPool[3][1] = {}
	tRiotOfNether_NetherPool[3][1]["RewardItem"] = {}				
	tRiotOfNether_NetherPool[3][1]["RewardItem"][1] = {}			
	tRiotOfNether_NetherPool[3][1]["RewardItem"][1]["Id"] = 3200864	
    tRiotOfNether_NetherPool[3][1]["RewardItem"][1]["Attr"] = "0 3"
	tRiotOfNether_NetherPool[3][1]["RewardEffect"] = {}
	tRiotOfNether_NetherPool[3][1]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_NetherPool[3][1]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_NetherPool[3][1]["LogId"] = 12000957
	tRiotOfNether_NetherPool[3][1]["LogStep"] = "1[3]"
	tRiotOfNether_NetherPool[3][1]["StcIndex"] = 6
	tRiotOfNether_NetherPool[3][2] = {}
	tRiotOfNether_NetherPool[3][2]["RewardItem"] = {}				
	tRiotOfNether_NetherPool[3][2]["RewardItem"][1] = {}			
	tRiotOfNether_NetherPool[3][2]["RewardItem"][1]["Id"] = 3306899	
    tRiotOfNether_NetherPool[3][2]["RewardItem"][1]["Attr"] = "0 3"
	tRiotOfNether_NetherPool[3][2]["RewardEffect"] = {}
	tRiotOfNether_NetherPool[3][2]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_NetherPool[3][2]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_NetherPool[3][2]["LogId"] = 12000957
	tRiotOfNether_NetherPool[3][2]["LogStep"] = "1[4]"
	tRiotOfNether_NetherPool[3][2]["StcIndex"] = 7
	tRiotOfNether_NetherPool[3][3] = {}
	tRiotOfNether_NetherPool[3][3]["RewardItem"] = {}				
	tRiotOfNether_NetherPool[3][3]["RewardItem"][1] = {}			
	tRiotOfNether_NetherPool[3][3]["RewardItem"][1]["Id"] = 3306898	
    tRiotOfNether_NetherPool[3][3]["RewardItem"][1]["Attr"] = "0 2"
	tRiotOfNether_NetherPool[3][3]["RewardEffect"] = {}
	tRiotOfNether_NetherPool[3][3]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_NetherPool[3][3]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_NetherPool[3][3]["LogId"] = 12000957
	tRiotOfNether_NetherPool[3][3]["LogStep"] = "1[5]"
	tRiotOfNether_NetherPool[3][3]["StcIndex"] = 8
	-- 四阶幽冥池
	tRiotOfNether_NetherPool[4] = {}
	tRiotOfNether_NetherPool[4][1] = {}
	tRiotOfNether_NetherPool[4][1]["RewardItem"] = {}				
	tRiotOfNether_NetherPool[4][1]["RewardItem"][1] = {}			
	tRiotOfNether_NetherPool[4][1]["RewardItem"][1]["Id"] = 3200864	
    tRiotOfNether_NetherPool[4][1]["RewardItem"][1]["Attr"] = "0 3"
	tRiotOfNether_NetherPool[4][1]["RewardEffect"] = {}
	tRiotOfNether_NetherPool[4][1]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_NetherPool[4][1]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_NetherPool[4][1]["LogId"] = 12000957
	tRiotOfNether_NetherPool[4][1]["LogStep"] = "1[3]"
	tRiotOfNether_NetherPool[4][1]["StcIndex"] = 6
	tRiotOfNether_NetherPool[4][2] = {}
	tRiotOfNether_NetherPool[4][2]["RewardItem"] = {}				
	tRiotOfNether_NetherPool[4][2]["RewardItem"][1] = {}			
	tRiotOfNether_NetherPool[4][2]["RewardItem"][1]["Id"] = 3306899	
    tRiotOfNether_NetherPool[4][2]["RewardItem"][1]["Attr"] = "0 3"
	tRiotOfNether_NetherPool[4][2]["RewardEffect"] = {}
	tRiotOfNether_NetherPool[4][2]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_NetherPool[4][2]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_NetherPool[4][2]["LogId"] = 12000957
	tRiotOfNether_NetherPool[4][2]["LogStep"] = "1[4]"
	tRiotOfNether_NetherPool[4][2]["StcIndex"] = 7
	tRiotOfNether_NetherPool[4][3] = {}
	tRiotOfNether_NetherPool[4][3]["RewardItem"] = {}				
	tRiotOfNether_NetherPool[4][3]["RewardItem"][1] = {}			
	tRiotOfNether_NetherPool[4][3]["RewardItem"][1]["Id"] = 3306898	
    tRiotOfNether_NetherPool[4][3]["RewardItem"][1]["Attr"] = "0 3"
	tRiotOfNether_NetherPool[4][3]["RewardEffect"] = {}
	tRiotOfNether_NetherPool[4][3]["RewardEffect"]["SzObj"] = "self" 
	tRiotOfNether_NetherPool[4][3]["RewardEffect"]["Effect"] = "angelwing"
	tRiotOfNether_NetherPool[4][3]["LogId"] = 12000957
	tRiotOfNether_NetherPool[4][3]["LogStep"] = "1[5]"
	tRiotOfNether_NetherPool[4][3]["StcIndex"] = 8
	
-- 幽冥池相关
local tRiotOfNether_Pool = {}
	-- 幽冥池升级时间
	tRiotOfNether_Pool["UplevTime"] = {}
	tRiotOfNether_Pool["UplevTime"][1] = 0
	tRiotOfNether_Pool["UplevTime"][2] = 3
	tRiotOfNether_Pool["UplevTime"][3] = 7
	tRiotOfNether_Pool["UplevTime"][4] = 11
	
	-- 幽冥池升级提示时间
	tRiotOfNether_Pool["UplevTipTime"] = {}
	tRiotOfNether_Pool["UplevTipTime"][2] = tRiotOfNether_Pool["UplevTime"][2] - 1
	tRiotOfNether_Pool["UplevTipTime"][3] = tRiotOfNether_Pool["UplevTime"][3] - 1
	tRiotOfNether_Pool["UplevTipTime"][4] = tRiotOfNether_Pool["UplevTime"][4] - 1
	
	-- 幽冥池升级进度
	tRiotOfNether_Pool["UplevSchedule"] = {}
	tRiotOfNether_Pool["UplevSchedule"][1] = 0
	tRiotOfNether_Pool["UplevSchedule"][2] = 1500000
	tRiotOfNether_Pool["UplevSchedule"][3] = 3600000
	tRiotOfNether_Pool["UplevSchedule"][4] = 6000000
	
	-- 幽冥池进度记录动态表
	tRiotOfNether_Pool["ScheduleGlobal"] = {}
	tRiotOfNether_Pool["ScheduleGlobal"]["GlobalId"] = 51940
	tRiotOfNether_Pool["ScheduleGlobal"]["Pos"] = 1
	
	
	-- 幽冥池等级记录动态表
	tRiotOfNether_Pool["PoolLevelGlobal"] = {}
	tRiotOfNether_Pool["PoolLevelGlobal"]["GlobalId"] = 51940
	tRiotOfNether_Pool["PoolLevelGlobal"]["Pos"] = 2
	
	-- 各级幽冥池npcid
	tRiotOfNether_Pool["Trap"] = {}
	tRiotOfNether_Pool["Trap"][1] = 0
	tRiotOfNether_Pool["Trap"][2] = 1841
	tRiotOfNether_Pool["Trap"][3] = 1842
	tRiotOfNether_Pool["Trap"][4] = 1843
	
	
-- 排行榜
local tRiotOfNether_Rank = {}






-- 动态码记录排行
local tRiotOfNether_GlobalRank = {}
	-- 单日排行榜
	tRiotOfNether_GlobalRank[1] = {}
	-- 记录分数和名字
	tRiotOfNether_GlobalRank[1][1] = {}
	tRiotOfNether_GlobalRank[1][1][1] = {}
	tRiotOfNether_GlobalRank[1][1][1]["GlobalId"] = 51945
	tRiotOfNether_GlobalRank[1][1][1]["Data"] = 1
	tRiotOfNether_GlobalRank[1][1][1]["UserName"] = 1
	tRiotOfNether_GlobalRank[1][1][2] = {}
	tRiotOfNether_GlobalRank[1][1][2]["GlobalId"] = 51945
	tRiotOfNether_GlobalRank[1][1][2]["Data"] = 2
	tRiotOfNether_GlobalRank[1][1][2]["UserName"] = 2
	tRiotOfNether_GlobalRank[1][1][3] = {}
	tRiotOfNether_GlobalRank[1][1][3]["GlobalId"] = 51945
	tRiotOfNether_GlobalRank[1][1][3]["Data"] = 3
	tRiotOfNether_GlobalRank[1][1][3]["UserName"] = 3
	tRiotOfNether_GlobalRank[1][1][4] = {}
	tRiotOfNether_GlobalRank[1][1][4]["GlobalId"] = 51945
	tRiotOfNether_GlobalRank[1][1][4]["Data"] = 4
	tRiotOfNether_GlobalRank[1][1][4]["UserName"] = 4
	tRiotOfNether_GlobalRank[1][1][5] = {}
	tRiotOfNether_GlobalRank[1][1][5]["GlobalId"] = 51945
	tRiotOfNether_GlobalRank[1][1][5]["Data"] = 5
	tRiotOfNether_GlobalRank[1][1][5]["UserName"] = 5
	tRiotOfNether_GlobalRank[1][1][6] = {}
	tRiotOfNether_GlobalRank[1][1][6]["GlobalId"] = 51946
	tRiotOfNether_GlobalRank[1][1][6]["Data"] = 1
	tRiotOfNether_GlobalRank[1][1][6]["UserName"] = 1
	tRiotOfNether_GlobalRank[1][1][7] = {}
	tRiotOfNether_GlobalRank[1][1][7]["GlobalId"] = 51946
	tRiotOfNether_GlobalRank[1][1][7]["Data"] = 2
	tRiotOfNether_GlobalRank[1][1][7]["UserName"] = 2
	tRiotOfNether_GlobalRank[1][1][8] = {}
	tRiotOfNether_GlobalRank[1][1][8]["GlobalId"] = 51946
	tRiotOfNether_GlobalRank[1][1][8]["Data"] = 3
	tRiotOfNether_GlobalRank[1][1][8]["UserName"] = 3
	tRiotOfNether_GlobalRank[1][1][9] = {}
	tRiotOfNether_GlobalRank[1][1][9]["GlobalId"] = 51946
	tRiotOfNether_GlobalRank[1][1][9]["Data"] = 4
	tRiotOfNether_GlobalRank[1][1][9]["UserName"] = 4
	tRiotOfNether_GlobalRank[1][1][10] = {}
	tRiotOfNether_GlobalRank[1][1][10]["GlobalId"] = 51946
	tRiotOfNether_GlobalRank[1][1][10]["Data"] = 5
	tRiotOfNether_GlobalRank[1][1][10]["UserName"] = 5
	-- 记录玩家id
	tRiotOfNether_GlobalRank[1][2] = {}
	tRiotOfNether_GlobalRank[1][2][1] = {}
	tRiotOfNether_GlobalRank[1][2][1]["GlobalId"] = 51947
	tRiotOfNether_GlobalRank[1][2][1]["UserId"] = 1
	tRiotOfNether_GlobalRank[1][2][2] = {}
	tRiotOfNether_GlobalRank[1][2][2]["GlobalId"] = 51947
	tRiotOfNether_GlobalRank[1][2][2]["UserId"] = 2
	tRiotOfNether_GlobalRank[1][2][3] = {}
	tRiotOfNether_GlobalRank[1][2][3]["GlobalId"] = 51947
	tRiotOfNether_GlobalRank[1][2][3]["UserId"] = 3
	tRiotOfNether_GlobalRank[1][2][4] = {}
	tRiotOfNether_GlobalRank[1][2][4]["GlobalId"] = 51947
	tRiotOfNether_GlobalRank[1][2][4]["UserId"] = 4
	tRiotOfNether_GlobalRank[1][2][5] = {}
	tRiotOfNether_GlobalRank[1][2][5]["GlobalId"] = 51947
	tRiotOfNether_GlobalRank[1][2][5]["UserId"] = 5
	tRiotOfNether_GlobalRank[1][2][6] = {}
	tRiotOfNether_GlobalRank[1][2][6]["GlobalId"] = 51948
	tRiotOfNether_GlobalRank[1][2][6]["UserId"] = 1
	tRiotOfNether_GlobalRank[1][2][7] = {}
	tRiotOfNether_GlobalRank[1][2][7]["GlobalId"] = 51948
	tRiotOfNether_GlobalRank[1][2][7]["UserId"] = 2
	tRiotOfNether_GlobalRank[1][2][8] = {}
	tRiotOfNether_GlobalRank[1][2][8]["GlobalId"] = 51948
	tRiotOfNether_GlobalRank[1][2][8]["UserId"] = 3
	tRiotOfNether_GlobalRank[1][2][9] = {}
	tRiotOfNether_GlobalRank[1][2][9]["GlobalId"] = 51948
	tRiotOfNether_GlobalRank[1][2][9]["UserId"] = 4
	tRiotOfNether_GlobalRank[1][2][10] = {}
	tRiotOfNether_GlobalRank[1][2][10]["GlobalId"] = 51948
	tRiotOfNether_GlobalRank[1][2][10]["UserId"] = 5

	-- 总排行榜
	tRiotOfNether_GlobalRank[2] = {}
	-- 记录分数和名字
	tRiotOfNether_GlobalRank[2][1] = {}
	tRiotOfNether_GlobalRank[2][1][1] = {}
	tRiotOfNether_GlobalRank[2][1][1]["GlobalId"] = 51941
	tRiotOfNether_GlobalRank[2][1][1]["Data"] = 1
	tRiotOfNether_GlobalRank[2][1][1]["UserName"] = 1
	tRiotOfNether_GlobalRank[2][1][2] = {}
	tRiotOfNether_GlobalRank[2][1][2]["GlobalId"] = 51941
	tRiotOfNether_GlobalRank[2][1][2]["Data"] = 2
	tRiotOfNether_GlobalRank[2][1][2]["UserName"] = 2
	tRiotOfNether_GlobalRank[2][1][3] = {}
	tRiotOfNether_GlobalRank[2][1][3]["GlobalId"] = 51941
	tRiotOfNether_GlobalRank[2][1][3]["Data"] = 3
	tRiotOfNether_GlobalRank[2][1][3]["UserName"] = 3
	tRiotOfNether_GlobalRank[2][1][4] = {}
	tRiotOfNether_GlobalRank[2][1][4]["GlobalId"] = 51941
	tRiotOfNether_GlobalRank[2][1][4]["Data"] = 4
	tRiotOfNether_GlobalRank[2][1][4]["UserName"] = 4
	tRiotOfNether_GlobalRank[2][1][5] = {}
	tRiotOfNether_GlobalRank[2][1][5]["GlobalId"] = 51941
	tRiotOfNether_GlobalRank[2][1][5]["Data"] = 5
	tRiotOfNether_GlobalRank[2][1][5]["UserName"] = 5
	tRiotOfNether_GlobalRank[2][1][6] = {}
	tRiotOfNether_GlobalRank[2][1][6]["GlobalId"] = 51942
	tRiotOfNether_GlobalRank[2][1][6]["Data"] = 1
	tRiotOfNether_GlobalRank[2][1][6]["UserName"] = 1
	tRiotOfNether_GlobalRank[2][1][7] = {}
	tRiotOfNether_GlobalRank[2][1][7]["GlobalId"] = 51942
	tRiotOfNether_GlobalRank[2][1][7]["Data"] = 2
	tRiotOfNether_GlobalRank[2][1][7]["UserName"] = 2
	tRiotOfNether_GlobalRank[2][1][8] = {}
	tRiotOfNether_GlobalRank[2][1][8]["GlobalId"] = 51942
	tRiotOfNether_GlobalRank[2][1][8]["Data"] = 3
	tRiotOfNether_GlobalRank[2][1][8]["UserName"] = 3
	tRiotOfNether_GlobalRank[2][1][9] = {}
	tRiotOfNether_GlobalRank[2][1][9]["GlobalId"] = 51942
	tRiotOfNether_GlobalRank[2][1][9]["Data"] = 4
	tRiotOfNether_GlobalRank[2][1][9]["UserName"] = 4
	tRiotOfNether_GlobalRank[2][1][10] = {}
	tRiotOfNether_GlobalRank[2][1][10]["GlobalId"] = 51942
	tRiotOfNether_GlobalRank[2][1][10]["Data"] = 5
	tRiotOfNether_GlobalRank[2][1][10]["UserName"] = 5
	-- 记录玩家id
	tRiotOfNether_GlobalRank[2][2] = {}
	tRiotOfNether_GlobalRank[2][2][1] = {}
	tRiotOfNether_GlobalRank[2][2][1]["GlobalId"] = 51943
	tRiotOfNether_GlobalRank[2][2][1]["UserId"] = 1
	tRiotOfNether_GlobalRank[2][2][2] = {}
	tRiotOfNether_GlobalRank[2][2][2]["GlobalId"] = 51943
	tRiotOfNether_GlobalRank[2][2][2]["UserId"] = 2
	tRiotOfNether_GlobalRank[2][2][3] = {}
	tRiotOfNether_GlobalRank[2][2][3]["GlobalId"] = 51943
	tRiotOfNether_GlobalRank[2][2][3]["UserId"] = 3
	tRiotOfNether_GlobalRank[2][2][4] = {}
	tRiotOfNether_GlobalRank[2][2][4]["GlobalId"] = 51943
	tRiotOfNether_GlobalRank[2][2][4]["UserId"] = 4
	tRiotOfNether_GlobalRank[2][2][5] = {}
	tRiotOfNether_GlobalRank[2][2][5]["GlobalId"] = 51943
	tRiotOfNether_GlobalRank[2][2][5]["UserId"] = 5
	tRiotOfNether_GlobalRank[2][2][6] = {}
	tRiotOfNether_GlobalRank[2][2][6]["GlobalId"] = 51944
	tRiotOfNether_GlobalRank[2][2][6]["UserId"] = 1
	tRiotOfNether_GlobalRank[2][2][7] = {}
	tRiotOfNether_GlobalRank[2][2][7]["GlobalId"] = 51944
	tRiotOfNether_GlobalRank[2][2][7]["UserId"] = 2
	tRiotOfNether_GlobalRank[2][2][8] = {}
	tRiotOfNether_GlobalRank[2][2][8]["GlobalId"] = 51944
	tRiotOfNether_GlobalRank[2][2][8]["UserId"] = 3
	tRiotOfNether_GlobalRank[2][2][9] = {}
	tRiotOfNether_GlobalRank[2][2][9]["GlobalId"] = 51944
	tRiotOfNether_GlobalRank[2][2][9]["UserId"] = 4
	tRiotOfNether_GlobalRank[2][2][10] = {}
	tRiotOfNether_GlobalRank[2][2][10]["GlobalId"] = 51944
	tRiotOfNether_GlobalRank[2][2][10]["UserId"] = 5
	
-- 昨日排行榜
	tRiotOfNether_GlobalRank[3] = {}
	-- 记录分数和名字
	tRiotOfNether_GlobalRank[3][1] = {}
	tRiotOfNether_GlobalRank[3][1][1] = {}
	tRiotOfNether_GlobalRank[3][1][1]["GlobalId"] = 51953
	tRiotOfNether_GlobalRank[3][1][1]["Data"] = 1
	tRiotOfNether_GlobalRank[3][1][1]["UserName"] = 1
	tRiotOfNether_GlobalRank[3][1][2] = {}
	tRiotOfNether_GlobalRank[3][1][2]["GlobalId"] = 51953
	tRiotOfNether_GlobalRank[3][1][2]["Data"] = 2
	tRiotOfNether_GlobalRank[3][1][2]["UserName"] = 2
	tRiotOfNether_GlobalRank[3][1][3] = {}
	tRiotOfNether_GlobalRank[3][1][3]["GlobalId"] = 51953
	tRiotOfNether_GlobalRank[3][1][3]["Data"] = 3
	tRiotOfNether_GlobalRank[3][1][3]["UserName"] = 3
	tRiotOfNether_GlobalRank[3][1][4] = {}
	tRiotOfNether_GlobalRank[3][1][4]["GlobalId"] = 51953
	tRiotOfNether_GlobalRank[3][1][4]["Data"] = 4
	tRiotOfNether_GlobalRank[3][1][4]["UserName"] = 4
	tRiotOfNether_GlobalRank[3][1][5] = {}
	tRiotOfNether_GlobalRank[3][1][5]["GlobalId"] = 51953
	tRiotOfNether_GlobalRank[3][1][5]["Data"] = 5
	tRiotOfNether_GlobalRank[3][1][5]["UserName"] = 5
	tRiotOfNether_GlobalRank[3][1][6] = {}
	tRiotOfNether_GlobalRank[3][1][6]["GlobalId"] = 51954
	tRiotOfNether_GlobalRank[3][1][6]["Data"] = 1
	tRiotOfNether_GlobalRank[3][1][6]["UserName"] = 1
	tRiotOfNether_GlobalRank[3][1][7] = {}
	tRiotOfNether_GlobalRank[3][1][7]["GlobalId"] = 51954
	tRiotOfNether_GlobalRank[3][1][7]["Data"] = 2
	tRiotOfNether_GlobalRank[3][1][7]["UserName"] = 2
	tRiotOfNether_GlobalRank[3][1][8] = {}
	tRiotOfNether_GlobalRank[3][1][8]["GlobalId"] = 51954
	tRiotOfNether_GlobalRank[3][1][8]["Data"] = 3
	tRiotOfNether_GlobalRank[3][1][8]["UserName"] = 3
	tRiotOfNether_GlobalRank[3][1][9] = {}
	tRiotOfNether_GlobalRank[3][1][9]["GlobalId"] = 51954
	tRiotOfNether_GlobalRank[3][1][9]["Data"] = 4
	tRiotOfNether_GlobalRank[3][1][9]["UserName"] = 4
	tRiotOfNether_GlobalRank[3][1][10] = {}
	tRiotOfNether_GlobalRank[3][1][10]["GlobalId"] = 51954
	tRiotOfNether_GlobalRank[3][1][10]["Data"] = 5
	tRiotOfNether_GlobalRank[3][1][10]["UserName"] = 5
	-- 记录玩家id
	tRiotOfNether_GlobalRank[3][2] = {}
	tRiotOfNether_GlobalRank[3][2][1] = {}
	tRiotOfNether_GlobalRank[3][2][1]["GlobalId"] = 51955
	tRiotOfNether_GlobalRank[3][2][1]["UserId"] = 1
	tRiotOfNether_GlobalRank[3][2][2] = {}
	tRiotOfNether_GlobalRank[3][2][2]["GlobalId"] = 51955
	tRiotOfNether_GlobalRank[3][2][2]["UserId"] = 2
	tRiotOfNether_GlobalRank[3][2][3] = {}
	tRiotOfNether_GlobalRank[3][2][3]["GlobalId"] = 51955
	tRiotOfNether_GlobalRank[3][2][3]["UserId"] = 3
	tRiotOfNether_GlobalRank[3][2][4] = {}
	tRiotOfNether_GlobalRank[3][2][4]["GlobalId"] = 51955
	tRiotOfNether_GlobalRank[3][2][4]["UserId"] = 4
	tRiotOfNether_GlobalRank[3][2][5] = {}
	tRiotOfNether_GlobalRank[3][2][5]["GlobalId"] = 51955
	tRiotOfNether_GlobalRank[3][2][5]["UserId"] = 5
	tRiotOfNether_GlobalRank[3][2][6] = {}
	tRiotOfNether_GlobalRank[3][2][6]["GlobalId"] = 51956
	tRiotOfNether_GlobalRank[3][2][6]["UserId"] = 1
	tRiotOfNether_GlobalRank[3][2][7] = {}
	tRiotOfNether_GlobalRank[3][2][7]["GlobalId"] = 51956
	tRiotOfNether_GlobalRank[3][2][7]["UserId"] = 2
	tRiotOfNether_GlobalRank[3][2][8] = {}
	tRiotOfNether_GlobalRank[3][2][8]["GlobalId"] = 51956
	tRiotOfNether_GlobalRank[3][2][8]["UserId"] = 3
	tRiotOfNether_GlobalRank[3][2][9] = {}
	tRiotOfNether_GlobalRank[3][2][9]["GlobalId"] = 51956
	tRiotOfNether_GlobalRank[3][2][9]["UserId"] = 4
	tRiotOfNether_GlobalRank[3][2][10] = {}
	tRiotOfNether_GlobalRank[3][2][10]["GlobalId"] = 51956
	tRiotOfNether_GlobalRank[3][2][10]["UserId"] = 5
	
local tRiotOfNether_Mail = {}
	tRiotOfNether_Mail["ExistDay"] = 7
	tRiotOfNether_Mail[1] = {}
	tRiotOfNether_Mail[1][1] = 94485158
	tRiotOfNether_Mail[1][2] = 94485159
	tRiotOfNether_Mail[1][3] = 94485160
	tRiotOfNether_Mail[1][4] = 94485161
	tRiotOfNether_Mail[1][5] = 94485162
	tRiotOfNether_Mail[1][6] = 94485163
	tRiotOfNether_Mail[1][7] = 94485164
	tRiotOfNether_Mail[1][8] = 94485165
	tRiotOfNether_Mail[1][9] = 94485166
	tRiotOfNether_Mail[1][10] = 94485167
	tRiotOfNether_Mail[2] = {}
	tRiotOfNether_Mail[2][1] = 94485168
	tRiotOfNether_Mail[2][2] = 94485169
	tRiotOfNether_Mail[2][3] = 94485170
	tRiotOfNether_Mail[2][4] = 94485171
	tRiotOfNether_Mail[2][5] = 94485172
	tRiotOfNether_Mail[2][6] = 94485173
	tRiotOfNether_Mail[2][7] = 94485174
	tRiotOfNether_Mail[2][8] = 94485175
	tRiotOfNether_Mail[2][9] = 94485176
	tRiotOfNether_Mail[2][10] = 94485177

	
local tRiotOfNether_CreateBoss = {}
	tRiotOfNether_CreateBoss[10246] = {}
	tRiotOfNether_CreateBoss[10246]["GlobalId"] = 51973
	-- 残灵魔囚
	tRiotOfNether_CreateBoss[10246][4] = {}
	tRiotOfNether_CreateBoss[10246][4]["MonsterId"] = 2848
	tRiotOfNether_CreateBoss[10246][4]["GenId"] = 23324
	tRiotOfNether_CreateBoss[10246][4]["PosX"] = {}
	tRiotOfNether_CreateBoss[10246][4]["PosX"][1] = 200
	tRiotOfNether_CreateBoss[10246][4]["PosX"][2] = 200
	tRiotOfNether_CreateBoss[10246][4]["PosX"][3] = 200
	tRiotOfNether_CreateBoss[10246][4]["PosX"][4] = 300
	tRiotOfNether_CreateBoss[10246][4]["PosX"][5] = 200
	tRiotOfNether_CreateBoss[10246][4]["PosX"][6] = 380
	tRiotOfNether_CreateBoss[10246][4]["PosX"][7] = 350
	tRiotOfNether_CreateBoss[10246][4]["PosX"][8] = 430
	tRiotOfNether_CreateBoss[10246][4]["PosX"][9] = 500
	tRiotOfNether_CreateBoss[10246][4]["PosX"][10] = 500
	tRiotOfNether_CreateBoss[10246][4]["PosX"][11] = 500
	tRiotOfNether_CreateBoss[10246][4]["PosX"][12] = 500
	tRiotOfNether_CreateBoss[10246][4]["PosX"][13] = 440
	tRiotOfNether_CreateBoss[10246][4]["PosX"][14] = 355
	tRiotOfNether_CreateBoss[10246][4]["PosX"][15] = 280
	tRiotOfNether_CreateBoss[10246][4]["PosY"] = {}
	tRiotOfNether_CreateBoss[10246][4]["PosY"][1] = 480
	tRiotOfNether_CreateBoss[10246][4]["PosY"][2] = 410
	tRiotOfNether_CreateBoss[10246][4]["PosY"][3] = 350
	tRiotOfNether_CreateBoss[10246][4]["PosY"][4] = 300
	tRiotOfNether_CreateBoss[10246][4]["PosY"][5] = 250
	tRiotOfNether_CreateBoss[10246][4]["PosY"][6] = 245
	tRiotOfNether_CreateBoss[10246][4]["PosY"][7] = 245
	tRiotOfNether_CreateBoss[10246][4]["PosY"][8] = 240
	tRiotOfNether_CreateBoss[10246][4]["PosY"][9] = 250
	tRiotOfNether_CreateBoss[10246][4]["PosY"][10] = 355
	tRiotOfNether_CreateBoss[10246][4]["PosY"][11] = 410
	tRiotOfNether_CreateBoss[10246][4]["PosY"][12] = 475
	tRiotOfNether_CreateBoss[10246][4]["PosY"][13] = 475
	tRiotOfNether_CreateBoss[10246][4]["PosY"][14] = 475
	tRiotOfNether_CreateBoss[10246][4]["PosY"][15] = 475
	tRiotOfNether_CreateBoss[10246][4]["CD"] = 300
	-- tRiotOfNether_CreateBoss[10246][4]["Num"] = 1
	tRiotOfNether_CreateBoss[10246][4]["MaxNum"] = 15
	tRiotOfNether_CreateBoss[10246][4]["GlobalPos"] = 0
	-- 怒鳞魔首
	tRiotOfNether_CreateBoss[10246][5] = {}
	tRiotOfNether_CreateBoss[10246][5]["MonsterId"] = 2849
	tRiotOfNether_CreateBoss[10246][5]["GenId"] = 23325
	tRiotOfNether_CreateBoss[10246][5]["PosX"] = {}
	tRiotOfNether_CreateBoss[10246][5]["PosX"][1] = 300
	tRiotOfNether_CreateBoss[10246][5]["PosX"][2] = 296
	tRiotOfNether_CreateBoss[10246][5]["PosX"][3] = 452
	tRiotOfNether_CreateBoss[10246][5]["PosX"][4] = 528
	tRiotOfNether_CreateBoss[10246][5]["PosX"][5] = 522
	tRiotOfNether_CreateBoss[10246][5]["PosX"][6] = 454
	tRiotOfNether_CreateBoss[10246][5]["PosX"][7] = 300
	tRiotOfNether_CreateBoss[10246][5]["PosX"][8] = 255
	tRiotOfNether_CreateBoss[10246][5]["PosY"] = {}
	tRiotOfNether_CreateBoss[10246][5]["PosY"][1] = 266
	tRiotOfNether_CreateBoss[10246][5]["PosY"][2] = 260
	tRiotOfNether_CreateBoss[10246][5]["PosY"][3] = 263
	tRiotOfNether_CreateBoss[10246][5]["PosY"][4] = 320
	tRiotOfNether_CreateBoss[10246][5]["PosY"][5] = 432
	tRiotOfNether_CreateBoss[10246][5]["PosY"][6] = 491
	tRiotOfNether_CreateBoss[10246][5]["PosY"][7] = 491
	tRiotOfNether_CreateBoss[10246][5]["PosY"][8] = 426
	tRiotOfNether_CreateBoss[10246][5]["CD"] = 300
	-- tRiotOfNether_CreateBoss[10246][5]["Num"] = 1
	tRiotOfNether_CreateBoss[10246][5]["MaxNum"] = 1
	tRiotOfNether_CreateBoss[10246][5]["TellAll"] = 1
	tRiotOfNether_CreateBoss[10246][5]["GlobalPos"] = 1
	-- 瘟狱魔首
	tRiotOfNether_CreateBoss[10246][6] = {}
	tRiotOfNether_CreateBoss[10246][6]["MonsterId"] = 2850
	tRiotOfNether_CreateBoss[10246][6]["GenId"] = 23326
	tRiotOfNether_CreateBoss[10246][6]["PosX"] = {}
	tRiotOfNether_CreateBoss[10246][6]["PosX"][1] = 362
	tRiotOfNether_CreateBoss[10246][6]["PosX"][2] = 518
	tRiotOfNether_CreateBoss[10246][6]["PosX"][3] = 378
	tRiotOfNether_CreateBoss[10246][6]["PosX"][4] = 224
	tRiotOfNether_CreateBoss[10246][6]["PosY"] = {}
	tRiotOfNether_CreateBoss[10246][6]["PosY"][1] = 262
	tRiotOfNether_CreateBoss[10246][6]["PosY"][2] = 369
	tRiotOfNether_CreateBoss[10246][6]["PosY"][3] = 484
	tRiotOfNether_CreateBoss[10246][6]["PosY"][4] = 364
	tRiotOfNether_CreateBoss[10246][6]["CD"] = 480
	-- tRiotOfNether_CreateBoss[10246][6]["Num"] = 1
	tRiotOfNether_CreateBoss[10246][6]["MaxNum"] = 1
	tRiotOfNether_CreateBoss[10246][6]["TellAll"] = 1
	tRiotOfNether_CreateBoss[10246][6]["GlobalPos"] = 2
	-- 烛日魔首
	tRiotOfNether_CreateBoss[10246][7] = {}
	tRiotOfNether_CreateBoss[10246][7]["MonsterId"] = 2851
	tRiotOfNether_CreateBoss[10246][7]["GenId"] = 23327
	tRiotOfNether_CreateBoss[10246][7]["PosX"] = {}
	tRiotOfNether_CreateBoss[10246][7]["PosX"][1] = 534
	tRiotOfNether_CreateBoss[10246][7]["PosX"][2] = 533
	tRiotOfNether_CreateBoss[10246][7]["PosX"][3] = 218
	tRiotOfNether_CreateBoss[10246][7]["PosX"][4] = 221
	tRiotOfNether_CreateBoss[10246][7]["PosY"] = {}
	tRiotOfNether_CreateBoss[10246][7]["PosY"][1] = 265
	tRiotOfNether_CreateBoss[10246][7]["PosY"][2] = 484
	tRiotOfNether_CreateBoss[10246][7]["PosY"][3] = 488
	tRiotOfNether_CreateBoss[10246][7]["PosY"][4] = 259
	tRiotOfNether_CreateBoss[10246][7]["CD"] = 600
	-- tRiotOfNether_CreateBoss[10246][7]["Num"] = 1
	tRiotOfNether_CreateBoss[10246][7]["MaxNum"] = 1
	tRiotOfNether_CreateBoss[10246][7]["TellAll"] = 1
	tRiotOfNether_CreateBoss[10246][7]["GlobalPos"] = 3
	
-- 20200623复用新增
-- 服务器区分接口 global
-- data0 = 1表示不上 
-- data0 = 0表示上
local tRiotOfNether_DistinguishServer = {}
	tRiotOfNether_DistinguishServer["Global"] = {}
	tRiotOfNether_DistinguishServer["Global"]["Id"] = 54689
	tRiotOfNether_DistinguishServer["Global"]["Data0"] = 0
	
-----------------------------------------------------------------------------------------------
-- 20200623复用新增
-- 服务器区分接口
function RiotOfNether_DistinguishServer()
	local nRiotOfNether_GlobalId = tRiotOfNether_DistinguishServer["Global"]["Id"]
	local nRiotOfNether_Data0 = tRiotOfNether_DistinguishServer["Global"]["Data0"]
	
	-- 当前服务器global的值
	local nRiotOfNether_NowData0 = Get_SysDynaGlobalData0(nRiotOfNether_GlobalId)
	
	if nRiotOfNether_NowData0 ~= nRiotOfNether_Data0 then
		return false
	end
	
	return true
end

-- 等级判断
function RiotOfNether_LevelJudge()
	local nLevel = tRiotOfNether_Cont["Level"]
	local nMetem = tRiotOfNether_Cont["Metem"]
	local nUserId = Get_UserId()
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetem,nUserId) then
		return true
	else
		return false
	end
end

-- 活动天数判断
function RiotOfNether_TimeJudge(nNowDay)
	local nLevel
	for i,v in pairs(tRiotOfNether_Pool["UplevTime"]) do
		if nNowDay >= v then
			nLevel = i
		end
	end
	return nLevel
end

-- 总进度判断
function RiotOfNether_ScheduleJudge()
	local nData = RiotOfNether_GetSchedule()
	local nLevel
	for i,v in pairs(tRiotOfNether_Pool["UplevSchedule"]) do
		if nData >= v then
			nLevel = i
		end
	end
	return nLevel
end

-- 幽冥池等级判断
function RiotOfNether_PoolLevelJudge(nNowDay)
	local nNowLevel = RiotOfNether_GetPoolLevel()
	local nTimeLevel = RiotOfNether_TimeJudge(nNowDay)
	local nScheduleLevel = RiotOfNether_ScheduleJudge()
	local nNewLevel
	if nScheduleLevel >= nTimeLevel then
		nNewLevel =  nScheduleLevel
	else
		nNewLevel =  nTimeLevel
	end
	if nNewLevel > nNowLevel then
		local nGlobalId = tRiotOfNether_Pool["PoolLevelGlobal"]["GlobalId"]
		local nPos = tRiotOfNether_Pool["PoolLevelGlobal"]["Pos"]
		-- RiotOfNether_MovePoolTrap(nNewLevel)
		Sys_SetSynaGlobalData(nGlobalId,nPos,nNewLevel)
		Sys_SystemBroadcast(string.format(tRiotOfNether_Text["BroadCast"]["Uplev"],nNewLevel))
	end
	RiotOfNether_MoveNpc()
end

-- 获取总进度
function RiotOfNether_GetSchedule()
	local nGlobalId = tRiotOfNether_Pool["ScheduleGlobal"]["GlobalId"]
	local nPos = tRiotOfNether_Pool["ScheduleGlobal"]["Pos"]
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	return nData
end

-- 设置总进度
function RiotOfNether_SetSchedule(nNum)
	local nGlobalId = tRiotOfNether_Pool["ScheduleGlobal"]["GlobalId"]
	local nPos = tRiotOfNether_Pool["ScheduleGlobal"]["Pos"]
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos) + nNum
	Sys_SetSynaGlobalData(nGlobalId,nPos,nData)
end

-- 获取幽冥池等级
function RiotOfNether_GetPoolLevel()
	local nGlobalId = tRiotOfNether_Pool["PoolLevelGlobal"]["GlobalId"]
	local nPos = tRiotOfNether_Pool["PoolLevelGlobal"]["Pos"]
	local nLevel = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nLevel == 0 then
		nLevel = 1
	end
	return nLevel
end

-- 移动幽冥池
function RiotOfNether_MovePoolTrap(nLevel)
	for i,v in pairs(tRiotOfNether_Pool["Trap"]) do
		local nMapId = tRiotOfNether_Cont["NpcPos"]["MapId"]
		local nPosX  = tRiotOfNether_Cont["NpcPos"]["PosX"] 
		local nPosY  = tRiotOfNether_Cont["NpcPos"]["PosY"] 
		if SpecialServer_ChkNoGiftServer() then
			nMapId = tRiotOfNether_Cont["NpcPos"]["JQFMapId"]
			nPosX  = tRiotOfNether_Cont["NpcPos"]["JQFPosX"] 
			nPosY  = tRiotOfNether_Cont["NpcPos"]["JQFPosY"] 
		end 
		if (nLevel == i) and (nLevel > 1) and (Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"])) then 
			Trap_CreateMapTrap(v,v,0,nMapId,nPosX,nPosY,5,5)
		else
			if v > 0 then
				Trap_DelMapTrap(nMapId,v)	
			end
		end
	end
end
	
-- 获取怪物索引
function RiotOfNether_GetMonsterIndex(nMonsterId)
	for i,v in pairs(tRiotOfNether_Monster) do
		if v["MonsterId"] == nMonsterId then
			return i
		end
	end
	return 0
end

-- 杀死怪物
function RiotOfNether_KillMonster(nMonsterId)
	local nUserId = Get_UserId()
	
	-- 服务器区分接口
	if not RiotOfNether_DistinguishServer() then
		return
	end
	
	-- 怪物死亡
	local nMapId = Get_UserMapId(nUserId)
	Monster_Death(nMonsterId,nMapId)
	
	-- 不在活动时间内
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		if RiotOfNether_EnterMap("Dragon",0,nUserId) then
			User_TalkChannel2005(tRiotOfNether_Text["MsgBox"]["OutTime"])
		end
		return
	elseif not Sys_ChkDayTime(tRiotOfNether_Cont["ActiveDayTime"]) then
		if RiotOfNether_EnterMap("Dragon",0,nUserId) then
			User_TalkChannel2005(tRiotOfNether_Text["MsgBox"]["NotHandInTime"])
		end
		return
	end
	
	local nFlag,tAward = Probabil_RandomAward(tRiotOfNether_MonsterDropItem[nMonsterId],1)

	-- 必得奖励
	if #tAward[1]["tAbsoluteAward"] ~= 0 then
		for i,v in pairs(tAward[1]["tAbsoluteAward"]) do
			RiotOfNether_KillMonsterAward(v,nMonsterId)
		end
	end
	
	-- 共同基数概率奖励
	if #tAward[1]["tAward"] ~= 0 then
		RiotOfNether_KillMonsterAward(tAward[1]["tAward"][1],nMonsterId)
	end
	
	-- 各自基数
	if #tAward[1]["tSelfItemChanceAward"] ~= 0 then
		for i,v in pairs(tAward[1]["tSelfItemChanceAward"]) do
			RiotOfNether_KillMonsterAward(v,nMonsterId)
		end
	end
	
	-- 全服公告
	if nMonsterId >= 2849 and nMonsterId <= 2851 then
		local sMonsterName = tRiotOfNether_Text["MonsterName"][nMonsterId]
		local sUserName = Get_UserName(nUserId)
		local nPosX = tRiotOfNether_Cont["NpcPos1"]["PosX"]
		local nPosY = tRiotOfNether_Cont["NpcPos1"]["PosY"]		
		local nMapId = tRiotOfNether_Cont["NpcPos1"]["MapId"]	
		local nNpcId = tRiotOfNether_Cont["NpcPos1"]["NpcId"]	
		if SpecialServer_ChkNoGiftServer() then
			nMapId = tRiotOfNether_Cont["NpcPos1"]["JQFMapId"]
			nPosX  = tRiotOfNether_Cont["NpcPos1"]["JQFPosX"] 
			nPosY  = tRiotOfNether_Cont["NpcPos1"]["JQFPosY"] 
		end 
		Sys_SystemBroadcast(string.format(tRiotOfNether_Text["BroadCast"]["KillBoss"],sUserName,sMonsterName,nPosX,nPosY,nMapId,nNpcId))
	end
	
	-- 全服公告
	if nMonsterId >= 2848 and nMonsterId <= 2851  then
		local sMonsterName = tRiotOfNether_Text["MonsterName"][nMonsterId]
		User_TalkChannel2005(string.format(tRiotOfNether_Text["Talk"]["KillBoss"],sMonsterName))
	end
	
	local nIndex = RiotOfNether_GetMonsterIndex(nMonsterId)
	if nIndex == 0 then
		return
	end
	local nOldGasNum = RiotOfNether_StcJudge(1,0,nUserId,1)
	-- 增加瘴气值
	RiotOfNether_StcJudge(1,tRiotOfNether_Monster[nIndex]["Gas"],nUserId)
	local nNewGasNum = nOldGasNum + tRiotOfNether_Monster[nIndex]["Gas"]
	if nNewGasNum >= tRiotOfNether_Cont["Gas"]["DailyMax"] and not RiotOfNether_JudgeDailyMax() then
		if RiotOfNether_EnterMap("Dragon",1,nUserId) then
			-- User_TalkChannel2005(tRiotOfNether_Text["GasLimit"])
		end
		return
	end
	
	if (nNewGasNum % tRiotOfNether_Cont["Gas"]["TipNum"] == 0) or (nNewGasNum - nOldGasNum >= tRiotOfNether_Cont["Gas"]["TipNum"]) then
		User_TalkChannel2005(string.format(tRiotOfNether_Text["Talk"]["GasNum"],nNewGasNum))
	end
end
	
-- 杀怪奖励
function RiotOfNether_KillMonsterAward(tAward,nMonsterId)
	local nUserId = Get_UserId()
	-- 不给物品
	if tAward["Nothing"] ~= nil then
		return
	end
	-- 单人限制
	if tAward["Stc"] ~= nil then
		if not RiotOfNether_StcJudge(tAward["Stc"],1,nUserId) then
			-- if string.find(Get_UserName(nUserId),"[PM]") ~= nil then
				-- User_TalkChannel2005("获得达到上限"..tAward["Stc"],nUserId)
			-- end
			return
		end
	end
	-- 单服务数量限制
	if tAward["GlobalId"] ~= nil then
		local nGlobalId = tAward["GlobalId"]
		local nPos =      tAward["GlobalPos"]
		local nLimit =    tAward["GlobalLimit"]
		local nNowNum = Get_SysDynaGlobalData(nGlobalId,nPos)
		if nNowNum >= nLimit then
			return
		end
		Sys_SetSynaGlobalData(nGlobalId,nPos,nNowNum+1)		
	end
	-- 强插物品
	if tAward["RewardItem"] ~= nil then
		local nSpace = RewardTemplate_GetRewardSpace(tAward,nUserId)
		if not User_CheckLeftSpace(nSpace,nUserId) then
			Sys_MsgBox(tRiotOfNether_Text["MsgBox"]["DropFull"],nil,nil,nUserId)
			return
		end
		RewardTemplate_Reward(tAward,nUserId)
	end
	-- 掉落物品
	if tAward["DropItem"] ~= nil then
		for i,v in pairs(tAward["DropItem"]) do
			local nItemId = v["ItemType"]
			local nNum = v["Num"]
			local nMapId = Get_MonsterMapID()
			local nPosX = Get_MonsterPosX()
			local nPosY = Get_MonsterPosY()
			Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,20,20,nNum,120)
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][2],nItemId,nNum),nUserId)
		end
	end	
	-- 掉落金币
	if tAward["DropMoney"] ~= nil then
		for i,v in pairs(tAward["DropMoney"]) do
			local nMoney = v["Num"]
			Monster_SysDropMoney(nMoney)
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][3],nMoney),nUserId)
		end
	end	
	-- 全服通知
	if tAward["TalkAll"] ~= nil then
		local sName = Get_UserName(nUserId)
		local sMonsterName = tRiotOfNether_Text["MonsterName"][nMonsterId]
		local sText = string.format(tAward["TalkAll"],sName,sMonsterName)
		Sys_SystemBroadcast(sText)
	end
end

-- 掩码操作
function RiotOfNether_StcJudge(nIndex,nData,nUserId,nGet)
	local nEvent = tRiotOfNether_Stc[nIndex]["EventType"]
	local nType = tRiotOfNether_Stc[nIndex]["DataType"]
	local nLimit = tRiotOfNether_Stc[nIndex]["Limit"]
	local nClear = tRiotOfNether_Stc[nIndex]["Clear"]
	local nRank = tRiotOfNether_Stc[nIndex]["Rank"]
	local nNowUserId = nUserId or Get_UserId()
	if nClear ~= nil then
		if Task_StcInterval(nEvent,nType,1,4,nNowUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nNowUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
		end
	end
	local nNowData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	if nGet ~= nil then
		return nNowData
	end
	if nLimit ~= nil then
		if nData >= 0 then
			if nNowData >= nLimit then
				return false
			end
		end
	end
	-- 瘴气护盾状态不加瘴气值
	if nIndex == 1 and RiotOfNether_JudgeDailyMax() then
		nData = 0
	end
	local nNewData = nNowData + nData
	if nNewData < 0 then
		nNewData = 0
	end
	Task_SetStatistic(nEvent,nType,nNewData,1,nNowUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
		-- 排行榜
	if nRank ~= nil then
		local sUserName = Get_UserName(nNowUserId)
		RiotOfNether_Rank(nRank,nNewData,nNowUserId,sUserName)
	end
	return true
end

-- 使用幽冥灵玉
function RiotOfNether_UseJade(nItemId,nNum)
	local nUserId = Get_UserId()
	
	-- 服务器区分接口 不在可使用服务器内 删除所有物品
	if not RiotOfNether_DistinguishServer() then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][7],nItemId,nNum),nUserId)
		end
	
		return
	end
	
	-- 过期删除
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			
			User_TalkChannel2005(tRiotOfNether_Text["OverTimeDel"],nUserId)
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][6],nItemId,nNum),nUserId)
		end
		return
	end
	-- 判断瘴气值是否大于100
	if RiotOfNether_StcJudge(1,0,nUserId,1) < tRiotOfNether_Cont["Gas"]["UseJadeMin"] then
		Sys_MsgBox(tRiotOfNether_Text["MsgBox"]["UseJadeMin"],nil,nil,nUserId)
		return
	end
	if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		Sys_MsgBox(tRiotOfNether_Text[nItemId]["NoItem"],nil,nil,nUserId)
		return
	end
	-- 判断使用次数是否大于10次
	if not RiotOfNether_StcJudge(4,nNum,nUserId) then
		if nNum == 1 then
			Sys_MsgBox(string.format(tRiotOfNether_Text["MsgBox"]["UseJadeLimit"],tRiotOfNether_Cont["Jade"]["UseJadeLimit"]),nil,nil,nUserId)
		else
			Sys_MsgBox(string.format(tRiotOfNether_Text["MsgBox"]["UseJadeLimit1"],tRiotOfNether_Cont["Jade"]["UseJadeLimit"],nNum),nil,nil,nUserId)
		end
		return
	end
	if Item_DelMulItem(nItemId,nItemId,nNum) then
		RiotOfNether_StcJudge(1,-1*nNum*tRiotOfNether_Cont["Jade"]["TakeOffGas"],nUserId)
		Sys_MsgBox(string.format(tRiotOfNether_Text["MsgBox"]["TakeOffGas"],nNum*tRiotOfNether_Cont["Jade"]["TakeOffGas"]),nil,nil,nUserId)
		User_TalkChannel2005(string.format(tRiotOfNether_Text["Talk"]["TakeOffGas"],nNum*tRiotOfNether_Cont["Jade"]["TakeOffGas"]),nUserId)
		Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][5],nNum*tRiotOfNether_Cont["Jade"]["TakeOffGas"]),nUserId)
	end
end

-- 传送
function RiotOfNether_EnterMap(sMap,nTalk,nUserId)
    local nMapId = tRiotOfNether_Cont[sMap]["MapId"]
    local nPosX = tRiotOfNether_Cont[sMap]["PosX"]
    local nPosY = tRiotOfNether_Cont[sMap]["PosY"]
    local nBoundX = tRiotOfNether_Cont[sMap]["BoundX"]
    local nBoundY = tRiotOfNether_Cont[sMap]["BoundY"]
    local sLog = tRiotOfNether_Cont[sMap]["Log"]
	local nChkMapId = tRiotOfNether_Cont[sMap]["ChkMapId"]
	local sMsgBox = tRiotOfNether_Cont[sMap]["MsgBox"]
	local sTalk = tRiotOfNether_Cont[sMap]["Talk"]
	local nNowUserId = nUserId or Get_UserId()
	if SpecialServer_ChkNoGiftServer() then
		if sMap == "Dragon" then 
			nMapId = tRiotOfNether_Cont[sMap]["JQFMapId"]
			nPosX = tRiotOfNether_Cont[sMap]["JQFPosX"]
			nPosY = tRiotOfNether_Cont[sMap]["JQFPosY"]
		end 
		if sMap == "Nether" then 
			nChkMapId = tRiotOfNether_Cont[sMap]["JQFChkMapId"]
		end 
	end
	if Get_UserMapId(nNowUserId) ~= nChkMapId then
			User_TalkChannel2005(tostring(nChkMapId))
		return
	end
	if not User_UserRandBoundTrans(nMapId,nPosX,nPosY,nBoundX,nBoundY,1,nNowUserId) then
		return false
	end
	if sLog ~= nil then
		Sys_SaveActionFestivalLog(sLog,nNowUserId)
	end
	if nTalk == 1 then
		User_TalkChannel2005(sTalk,nNowUserId)
		Sys_MsgBox(sMsgBox,nil,nil,nNowUserId)
	end
	return true
end

-- 传送进幽冥狱
function RiotOfNether_EnterNether()
	local nUserId = Get_UserId()
	
	if not RiotOfNether_DistinguishServer() then
		return
	end
	
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		Sys_MsgBox(tRiotOfNether_Text["MsgBox"]["OutTime"],nil,nil,nUserId)
		return 
	end
	if not Sys_ChkDayTime(tRiotOfNether_Cont["ActiveDayTime"]) then
		Sys_MsgBox(tRiotOfNether_Text["MsgBox"]["NotHandInTime"],nil,nil,nUserId)
		return
	end
	if RiotOfNether_StcJudge(1,0,nUserId,1) >= tRiotOfNether_Cont["Gas"]["DailyMax"] and not RiotOfNether_JudgeDailyMax() then
		Sys_MsgBox(tRiotOfNether_Text["MsgBox"]["CanNotEnter"],nil,nil,nUserId)
		return
	end
	if RiotOfNether_EnterMap("Nether",1,nUserId) then
		RiotOfNether_GetTaoistItem()
	end
end

-- 传送出幽冥狱
function RiotOfNether_OutNether(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	RiotOfNether_EnterMap("Dragon",0,nNowUserId)
end
	
-- 物品使用
function RiotOfNether_UseItem(nItemId,nIndex)
	local nUserId = Get_UserId()
	
	-- 服务器区分接口 不在可使用服务器内 删除所有物品
	if not RiotOfNether_DistinguishServer() then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][7],nItemId,nNum),nUserId)
		end
	
		return
	end
	
	-- 过期删除
	if tRiotOfNether_Award[nItemId]["NotDel"] == nil then
		if not Sys_ChkFullTime(tRiotOfNether_Cont["DelTime"]) then
			local nNum = Get_CountItemType(nItemId,0)
			if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
				
				User_TalkChannel2005(tRiotOfNether_Text["OverTimeDel"],nUserId)
				Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][6],nItemId,nNum),nUserId)
			end
			return
		end
	end

	-- 随机物品
	if tRiotOfNether_Award[nItemId][1] ~= nil and tRiotOfNether_Award[nItemId][1]["ItemChanceSum"] ~= nil then
		local bSpace,nSpace = RewardTemplate_ChkRandomSpace(tRiotOfNether_Award[nItemId],1)
		if not bSpace then
			User_TalkChannel2005(string.format(tRiotOfNether_Text["Talk"]["NoSpace"],nSpace),nUserId)
			return
		end
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tRiotOfNether_Award[nItemId],1)
		end
		return
	else
		local tReward = CommonFunc_Copy(tRiotOfNether_Award[nItemId])
		if nIndex ~= nil then
			tReward = CommonFunc_Copy(tRiotOfNether_Award[nItemId][nIndex])
		end
		if not RewardTemplate_CheckSpace(tReward) then
			return
		end
		-- if ((nItemId == 3307021) or ((nItemId >= 3307031) and (nItemId <= 3307040))) then
			-- if Get_UserLevel(nUserId) >= G_User_MaxLev then
				-- tReward["Talk"] = tRiotOfNether_Text["Talk"][nItemId]
			-- end
		-- end
		RewardTemplate_UseItemAndMsg(tReward)
		return
	end
end

-- 荒冥淬焰 新逻辑
function RiotOfNether_UseItemFragment(nRiotOfNether_ItemId,nRiotOfNether_Index)

	-- 服务器区分接口 不在可使用服务器内 删除所有物品
	if not RiotOfNether_DistinguishServer() then
		local nNum = Get_CountItemType(nRiotOfNether_ItemId,0)
		if Item_ChkItem(nRiotOfNether_ItemId) and Item_DelAllItemByType(nRiotOfNether_ItemId) then
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][7],nRiotOfNether_ItemId,nNum),nUserId)
		end
	
		return
	end

	if not Item_ChkMulItem(nRiotOfNether_ItemId,nRiotOfNether_ItemId,nRiotOfNether_Index) then 
		Sys_MsgBox(tRiotOfNether_Text[nRiotOfNether_ItemId]["NoItem2"])
		return
	end 
	if not Sys_ChkFullTime(tRiotOfNether_Cont["DelTime"]) then
		local nRiotOfNether_Num = Get_CountItemType(nRiotOfNether_ItemId,0)
		if Item_DelAllItemByType(nRiotOfNether_ItemId) then
			
			User_TalkChannel2005(tRiotOfNether_Text["OverTimeDel"])
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][6],nRiotOfNether_ItemId,nRiotOfNether_Num))
		end
		return
	end
	if nRiotOfNether_Index == 1 then   --单个使用
		local nRiotOfNether_flat,tRiotOfNether_Award = Probabil_RandomAward(tRiotOfNether_NewAward["RandomAward"],1)
		local nRiotOfNether_Item = tRiotOfNether_Award[1]["tAward"][1]["Item_1"]
		if nRiotOfNether_Item == 1 then 
			local bRiotOfNether_Judge = TermsOfUse_Main(nRiotOfNether_ItemId,tRiotOfNether_NewAward[nRiotOfNether_ItemId][1])
			if not bRiotOfNether_Judge then
				return
			end
			RewardTemplate_UseItemAndMsg(tRiotOfNether_NewAward[nRiotOfNether_ItemId][1])
			return
		else
			if Item_DelItem(nRiotOfNether_ItemId) then 
				Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][6],nRiotOfNether_ItemId,1))
				Sys_MsgBox(tRiotOfNether_Text[nRiotOfNether_ItemId]["FailItem"])
			end 
			return
		end 
	elseif nRiotOfNether_Index == 10 then   --使用10个
		local bRiotOfNether_Judge = TermsOfUse_Main(nRiotOfNether_ItemId,tRiotOfNether_NewAward[nRiotOfNether_ItemId][2])
		if not bRiotOfNether_Judge then
			return
		end
		RewardTemplate_UseItemAndMsg(tRiotOfNether_NewAward[nRiotOfNether_ItemId][2])
		return
	end 
	
end 



-- 判断地图
function RiotOfNether_JudgeMap(nUserId)
	local bIsInMap = false
	local nMapId = Get_UserMapId(nUserId)
	if nMapId == tRiotOfNether_Cont["NetherMapId"] then
		bIsInMap = true
	end
	return bIsInMap,nMapId
end
	
-- 杀人逻辑
function RiotOfNether_KillOther(nKillerUserId,nBeKilledUserId)
	--绿色服,激情服不上活动
	if SpecialServer_ChkGreenServer() or SpecialServer_ChkNoGiftServer() then
		return 
	end 
	
	-- 服务器区分接口
	if not RiotOfNether_DistinguishServer() then
		return
	end
	
	local bIsInMap,nMapId = RiotOfNether_JudgeMap(nKillerUserId)
	if not bIsInMap then
		return
	end
	-- 判断时间
	if not Sys_ChkDayTime(tRiotOfNether_Cont["ActiveDayTime"]) then
		if RiotOfNether_EnterMap("Dragon",0,nKillerUserId) then
			User_TalkChannel2005(tRiotOfNether_Text["MsgBox"]["NotHandInTime"],nKillerUserId)
		end
		return
	end
	local nOldGasNum = RiotOfNether_StcJudge(1,0,nKillerUserId,1)
	-- 增加瘴气值
	RiotOfNether_StcJudge(1,tRiotOfNether_Cont["Gas"]["KillPeople"],nKillerUserId)
	local nNewGasNum = nOldGasNum + tRiotOfNether_Cont["Gas"]["KillPeople"]
	if nNewGasNum >= tRiotOfNether_Cont["Gas"]["DailyMax"] and not RiotOfNether_JudgeDailyMax() then
		if RiotOfNether_EnterMap("Dragon",1,nKillerUserId) then
			-- User_TalkChannel2005(tRiotOfNether_Text["Talk"]["GasMax"])
		end
		return
	end
	local sBeKilledUserName = Get_UserName(nBeKilledUserId)
	User_TalkChannel2005(string.format(tRiotOfNether_Text["Talk"]["KillOther"],sBeKilledUserName,tRiotOfNether_Cont["Gas"]["KillPeople"]),nKillerUserId)
	
	
	if (nNewGasNum % 30 == 0) or (nNewGasNum - nOldGasNum >= 30) then
		User_TalkChannel2005(string.format(tRiotOfNether_Text["Talk"]["GasNum"],nNewGasNum),nKillerUserId)
	end
end

-- 上交镣铐
function RiotOfNether_HandInBonds(nNpcId,nHindInNum)

	-- 服务器区分接口 不在可使用服务器内 不能上交
	if not RiotOfNether_DistinguishServer() then
		return
	end

	-- 判断时间
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	-- if not Sys_ChkDayTime(tRiotOfNether_Cont["ActiveDayTime"]) then
		-- Sys_MsgBox(tRiotOfNether_Text["MsgBox"]["NotHandInTime"],nil,nil,nUserId)
		-- return
	-- end
	local nItemId = tRiotOfNether_Cont["Bonds"]
	local nNum = nHindInNum or Get_CountItemType(nItemId,0)
	local nUserId = Get_UserId()
	-- 没有镣铐
	if nNum <= 0 then
		Sys_MsgBox(tRiotOfNether_Text["MsgBox"]["NoBonds"],nil,nil,nUserId)
	else
		if not Item_ChkMulItem(nItemId,nItemId,nNum) then
			Sys_MsgBox(tRiotOfNether_Text["MsgBox"]["NoEnoughBonds"],nil,nil,nUserId)
			return
		end
		if not RiotOfNether_HandInCheckBagSpace(nNum) then
			return
		end
		RiotOfNether_StcJudge(2,nNum,nUserId)
		RiotOfNether_StcJudge(3,nNum,nUserId)
		RiotOfNether_SetSchedule(nNum)
		if not Item_DelMulItem(nItemId,nItemId,nNum) then
			return
		end
		User_TalkChannel2005(string.format(tRiotOfNether_Text["Talk"]["HandInBonds"],nNum),nUserId)
		-- LinkNpcMain()
		RiotOfNether_HandInGetAward(nNpcId,nNum)
	end
end

-- 上交镣铐背包判断
function RiotOfNether_HandInCheckBagSpace(nNum)
	local nLevel = RiotOfNether_GetPoolLevel()
	local tReward = tRiotOfNether_NetherPool[nLevel]
	local nUserId = Get_UserId()
	local nNewNum = nNum + RiotOfNether_StcJudge(2,0,nUserId,1)
	local nSpace = 0
	for i,v in pairs(tReward) do
		local nIndex = v["StcIndex"]
		local nCanGetReward = tRiotOfNether_Cont["HangInReward"][i]
		if nNewNum >= nCanGetReward then
			if RiotOfNether_StcJudge(nIndex,0,nUserId,1) == 0 then
				nSpace = nSpace + RewardTemplate_GetRewardSpace(v,nUserId)
			end
		end
	end
	if not User_CheckLeftSpace(nSpace,nUserId) then
		Sys_MsgBox(string.format(tRiotOfNether_Text["MsgBox"]["NoSpace"],nSpace),nil,nil,nUserId)
		return false
	end
	return true
end

-- 上交镣铐获奖
function RiotOfNether_HandInGetAward(nNpcId,nHandInNum)
	local nUserId = Get_UserId()
	
	-- 服务器区分接口 不在可使用服务器内 不能上交
	if not RiotOfNether_DistinguishServer() then
		return
	end
	
	-- 判断时间
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	-- if not Sys_ChkDayTime(tRiotOfNether_Cont["ActiveDayTime"]) then
		-- Sys_MsgBox(tRiotOfNether_Text["MsgBox"]["NotHandInTime"],nil,nil,nUserId)
		-- return
	-- end
	local nLevel = RiotOfNether_GetPoolLevel()
	local tReward = tRiotOfNether_NetherPool[nLevel]
	local nNum = RiotOfNether_StcJudge(2,0,nUserId,1)
	local nSpace = 0
	local bGet = false
	local sAward = ""
	local nNextAward = 0
	local sNextAward = ""
	local nFinalIndex
	local tMsgBox = {}
	local sMsgBox = {}
	tMsgBox = {1}
	sMsgBox[1] = tRiotOfNether_Text["MsgBox"]["HangInAward"][1]
	for i,v in pairs(tReward) do
		local nIndex = v["StcIndex"]
		local nCanGetReward = tRiotOfNether_Cont["HangInReward"][i]
		if nNum >= nCanGetReward then
			if RiotOfNether_StcJudge(nIndex,0,nUserId,1) == 0 then
				RiotOfNether_StcJudge(nIndex,1,nUserId)
				RewardTemplate_UseItemAndMsg(v,nUserId)
				-- 记录获得的奖励
				bGet = true
				if sAward ~= "" then
					sAward = sAward .. "、"
				end
				sAward = sAward .. tRiotOfNether_Text[nNpcId]["AwardName"][nLevel][nIndex]
			end
			-- 判断是否还有后续奖励
			if tRiotOfNether_Cont["HangInReward"][i+1] ~= nil then
				nNextAward = tRiotOfNether_Cont["HangInReward"][i+1] - nNum 
				nFinalIndex = nIndex
			end
		end
	end
	if bGet then
		tMsgBox = {}
		tMsgBox = {1,2}
		sMsgBox[2] = string.format(tRiotOfNether_Text["MsgBox"]["HangInAward"][2],sAward)
	end
	if nNextAward > 0 then
		sNextAward = tRiotOfNether_Text[nNpcId]["AwardName"][nLevel][nFinalIndex+1]
		if bGet then
			tMsgBox = {}
			tMsgBox = {1,2,3}
		else
			tMsgBox = {}
			tMsgBox = {1,3}
		end
		sMsgBox[3] = string.format(tRiotOfNether_Text["MsgBox"]["HangInAward"][3],nNextAward,sNextAward)
	end
	local sMsg = ""
	for i,v in pairs(tMsgBox) do
		sMsg = sMsg ..  sMsgBox[v]
	end
	local sFunc = string.format("RiotOfNether_MsgBoxToMainDialog</N>%d</N>%d",nNpcId,nUserId)
	Sys_MsgBox(sMsg,sFunc,nil,nUserId)
end

-- 返回主菜单
function RiotOfNether_MsgBoxToMainDialog(nNpcId,nUserId)
	-- 判断时间
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		return
	end
	-- if not Sys_ChkDayTime(tRiotOfNether_Cont["ActiveDayTime"]) then
		-- return
	-- end	
	LinkNpcGossipFunc_New(nNpcId,"1-3")
end

-- 排行榜
function RiotOfNether_Rank(nRank,nData,nUserId,sUserName)
	if RiotOfNether_RankFirstStep(nRank) then
		if RiotOfNether_RankSecondStep(nRank,nData,nUserId,sUserName) then
			RiotOfNether_RankThirdStep(nRank)
		end
	end
end
	
-- 第一阶段 读取排行榜到临时表
function RiotOfNether_RankFirstStep(nRank)
	tRiotOfNether_Rank[nRank] = {}
	for i = 1,tRiotOfNether_Cont["RankNum"] do
		tRiotOfNether_Rank[nRank][i] = {}
		local nGlobalId1 = tRiotOfNether_GlobalRank[nRank][1][i]["GlobalId"]
		local nGlobalId2 = tRiotOfNether_GlobalRank[nRank][2][i]["GlobalId"]
		local nDataPos = tRiotOfNether_GlobalRank[nRank][1][i]["Data"]
		local nUserNamePos = tRiotOfNether_GlobalRank[nRank][1][i]["UserName"]
		local nUserIdPos = tRiotOfNether_GlobalRank[nRank][2][i]["UserId"]
		tRiotOfNether_Rank[nRank][i]["Data"] = Get_SysDynaGlobalData(nGlobalId1,nDataPos)
		tRiotOfNether_Rank[nRank][i]["UserName"] = Get_SysDynaGlobalDataStr(nGlobalId1,nUserNamePos)
		tRiotOfNether_Rank[nRank][i]["UserId"] = Get_SysDynaGlobalData(nGlobalId2,nUserIdPos)
	end
	return true
end

-- 第二阶段 刷新排行榜
function RiotOfNether_RankSecondStep(nRank,nData,nUserId,sUserName)
	local nTotalNum = tRiotOfNether_Cont["RankNum"] + 1
	local nIndex = tRiotOfNether_Cont["RankNum"] + 1
	for i = 1,tRiotOfNether_Cont["RankNum"] do
		if tRiotOfNether_Rank[nRank][i] == nil then
			tRiotOfNether_Rank[nRank][i] = {}
			tRiotOfNether_Rank[nRank][i]["UserId"] = 0
			tRiotOfNether_Rank[nRank][i]["UserName"] = tRiotOfNether_Text["Nobody"]
			tRiotOfNether_Rank[nRank][i]["Data"] = 0
		end
		if nData ~= nil then
			if tRiotOfNether_Rank[nRank][i]["UserId"] == nUserId then
				nIndex = i
				nTotalNum = tRiotOfNether_Cont["RankNum"]
			end
		end
	end
	if nData == nil then
		nTotalNum = tRiotOfNether_Cont["RankNum"]
	else
		if tRiotOfNether_Rank[nRank][nIndex] == nil then
			tRiotOfNether_Rank[nRank][nIndex] = {}
		end
		tRiotOfNether_Rank[nRank][nIndex]["UserId"] = nUserId 
		tRiotOfNether_Rank[nRank][nIndex]["UserName"] = sUserName
		tRiotOfNether_Rank[nRank][nIndex]["Data"] = nData	
	end
	for j = nTotalNum,1,-1 do
		for k = nTotalNum,j,-1 do
			if tRiotOfNether_Rank[nRank][k]["Data"] > tRiotOfNether_Rank[nRank][j]["Data"] then
				tRiotOfNether_Rank[nRank][j],tRiotOfNether_Rank[nRank][k] = tRiotOfNether_Rank[nRank][k],tRiotOfNether_Rank[nRank][j]
			end
		end
	end
	return true
end
	
-- 第三阶段 临时表写入动态表
function RiotOfNether_RankThirdStep(nRank)
	for i = 1,tRiotOfNether_Cont["RankNum"] do
		local nGlobalId1 = tRiotOfNether_GlobalRank[nRank][1][i]["GlobalId"]
		local nGlobalId2 = tRiotOfNether_GlobalRank[nRank][2][i]["GlobalId"]
		local nDataPos = tRiotOfNether_GlobalRank[nRank][1][i]["Data"]
		local nUserNamePos = tRiotOfNether_GlobalRank[nRank][1][i]["UserName"]
		local nUserIdPos = tRiotOfNether_GlobalRank[nRank][2][i]["UserId"]
		local nData = tRiotOfNether_Rank[nRank][i]["Data"]
		local sUserName = tRiotOfNether_Rank[nRank][i]["UserName"]
		local nUserId = tRiotOfNether_Rank[nRank][i]["UserId"]
		if Get_SysDynaGlobalData(nGlobalId1,nDataPos) ~= nData then
			Sys_SetSynaGlobalData(nGlobalId1,nDataPos,nData)
		end
		if Get_SysDynaGlobalDataStr(nGlobalId1,nUserNamePos) ~= sUserName then
			Sys_SetSynaGlobalDataStr(nGlobalId1,nUserNamePos,sUserName)
		end
		if Get_SysDynaGlobalData(nGlobalId2,nUserIdPos) ~= nUserId then
			Sys_SetSynaGlobalData(nGlobalId2,nUserIdPos,nUserId)
		end
	end
	return true
end	

-- 升级提示
function RiotOfNether_UplevTip(nNowDay)
	-- 判断时间
	local bIsDay = false
	for i,v in pairs(tRiotOfNether_Pool["UplevTipTime"]) do
		if nNowDay == v then
			bIsDay = true
		end
	end
	if not bIsDay then
		return
	end
	local nNowLevel = RiotOfNether_GetPoolLevel()
	local nTomorrowLevel = RiotOfNether_TimeJudge(nNowDay + 1)
	if nTomorrowLevel > nNowLevel then
		Sys_SystemBroadcast(string.format(tRiotOfNether_Text["BroadCast"]["BeingUplev"],nTomorrowLevel))
	end
end

-- 发邮件
function RiotOfNether_SendMail(nIndex,nRank,nUserId)
	-- 服务器区分接口 不在可使用服务器内 不发邮件
	if not RiotOfNether_DistinguishServer() then
		return
	end

	local nActionId = tRiotOfNether_Mail[nIndex][nRank]
	local nExistDay = tRiotOfNether_Mail["ExistDay"]
	local sSender = tRiotOfNether_Text["Mail"]["Sender"]
	local sTitle = tRiotOfNether_Text["Mail"]["Title"][nIndex]
	local sContent = string.format(tRiotOfNether_Text["Mail"]["Content"][nIndex],nRank)
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end	

-- 排行榜奖励
function RiotOfNether_RankReward(nIndex)
	local tRank = tRiotOfNether_GlobalRank[nIndex]
	for i = 1,tRiotOfNether_Cont["RankNum"] do
		local nUserId = Get_SysDynaGlobalData(tRank[2][i]["GlobalId"],tRank[2][i]["UserId"])
		local sUserName = Get_SysDynaGlobalDataStr(tRank[1][i]["GlobalId"],tRank[1][i]["UserName"])
		if nUserId > 0 then
			RiotOfNether_SendMail(nIndex,i,nUserId)
		end
	end
end

-- 每日发奖
function RiotOfNether_DailyReward()
	if Sys_ChkFullTime(tRiotOfNether_Cont["DailyRewardTime"]) then
		RiotOfNether_RankReward(1)
		if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
			RiotOfNether_RankReward(2)
		end
	end
end

-- 记录昨日排行榜
function RiotOfNether_RankRecord()
	local tTodayRank = tRiotOfNether_GlobalRank[1]
	local tYesterdayRank = tRiotOfNether_GlobalRank[3]
	for i = 1,tRiotOfNether_Cont["RankNum"] do
		local nUserId = Get_SysDynaGlobalData(tTodayRank[2][i]["GlobalId"],tTodayRank[2][i]["UserId"])
		local nData = Get_SysDynaGlobalData(tTodayRank[1][i]["GlobalId"],tTodayRank[1][i]["Data"])
		local sUserName = Get_SysDynaGlobalDataStr(tTodayRank[1][i]["GlobalId"],tTodayRank[1][i]["UserName"])
		Sys_SetSynaGlobalData(tYesterdayRank[2][i]["GlobalId"],tYesterdayRank[2][i]["UserId"],nUserId)
		Sys_SetSynaGlobalData(tYesterdayRank[1][i]["GlobalId"],tYesterdayRank[1][i]["Data"],nData)
		Sys_SetSynaGlobalDataStr(tYesterdayRank[1][i]["GlobalId"],tYesterdayRank[1][i]["UserName"],sUserName)
	end
end
		
-- 每日动态码清理
function RiotOfNether_GlobalClear()
	for i,v in pairs(tRiotOfNether_GlobalClear) do
		Sys_ResetAllSynaGlobalData(v)
		Sys_ResetAllSynaGlobalDataStr(v)
	end
end

-- 00:00-00:05分系统自检
function RiotOfNether_AutoChk()
	--绿色服,激情服不上活动
	if SpecialServer_ChkGreenServer() or SpecialServer_ChkNoGiftServer() then
		return 
	end
	
	-- 服务器区分接口
	if not RiotOfNether_DistinguishServer() then
		return
	end
	
	if not Sys_ChkFullTime(tRiotOfNether_Cont["DailyRewardTime"]) then
		return
	end
	-- 所有玩家移出地图
	Map_UserExeFunc(tRiotOfNether_Cont["Nether"]["MapId"],-1,"RiotOfNether_OutNether")
	-- 删除怪物
	RiotOfNether_DelFreshBoss()
	
	-- 动态表标记
	local nMarkGlobalId = tRiotOfNether_Cont["Clear"]["GlobalId"]
	local nMarkPos = tRiotOfNether_Cont["Clear"]["Pos"]
	if not Sys_ChkDayTime(tRiotOfNether_Cont["ChkTime"]) then
		Sys_SetSynaGlobalData(nMarkGlobalId,nMarkPos,0)
		return
	end
	if Get_SysDynaGlobalData(nMarkGlobalId,nMarkPos) > 0 then
		return
	end
	
	-- 移动奖池和升级提示
	local nNowDay = CommonFunc_DisActivityTime(tRiotOfNether_Cont["ActiveTime"])
	-- 魂锻炉等级判断
	RiotOfNether_PoolLevelJudge(nNowDay)
	-- 自动升级提示
	RiotOfNether_UplevTip(nNowDay)
	
	-- 每日奖励发放、排行榜操作
	RiotOfNether_DailyReward()
	RiotOfNether_RankRecord()
	RiotOfNether_GlobalClear()
	
	Sys_SetSynaGlobalData(nMarkGlobalId,nMarkPos,1)
end

-- 片区刷怪
function RiotOfNether_CreateBoss()
	--绿色服,激情服不上活动
	if SpecialServer_ChkGreenServer() or SpecialServer_ChkNoGiftServer() then
		return 
	end 
	
	-- 服务器区分接口
	if not RiotOfNether_DistinguishServer() then
		return
	end
	
	-- 判断时间
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		return
	end
	if not Sys_ChkDayTime(tRiotOfNether_Cont["ActiveDayTime"]) then
		return
	end
	
	for i,v in pairs(tRiotOfNether_CreateBoss) do 
		local nGlobalId = v["GlobalId"]
		local nMapId = i
		for ii,vv in pairs(v) do
			if type(ii) == "number" then
				local nIndex = ii
				local nCD = vv["CD"]
				local nNum = vv["Num"]
				local nMaxNum = vv["MaxNum"]
				local nGlobalPos = vv["GlobalPos"]
				local nLastTime = Get_SysDynaGlobalData(nGlobalId,nGlobalPos)
				local nNewTime = os.time()
				local bIsFresh = false
				if vv["Time"] ~= nil then
					for _,sTime in pairs(vv["Time"]) do
						if Sys_ChkDayTime(sTime) then
							bIsFresh = true
							break
						end
					end
				else
					bIsFresh = true
				end
				
				-- 建空表，记录已刷的怪
				local tCreated = {}
				
				-- 判断时间
				if ((vv["Time"] ~= nil) or (nNewTime - nLastTime > nCD)) then
					if bIsFresh then
						-- 统计和记录怪物
						local nLastNum = 0
						--for iii,vvv in pairs(tRiotOfNether_Monster[nIndex]["MonsterId"]) do
						local nMonsterId = tRiotOfNether_Monster[nIndex]["MonsterId"]
						local nThisNum = Get_SysTempData(1,nMapId,nMonsterId)
						if nThisNum > 0 then
							nLastNum = nLastNum + nThisNum
						end
						--end
						-- 刷怪
						if (nLastNum < nMaxNum) then
							local nPosIndex = math.random(1,#vv["PosX"])
							local nPosX = vv["PosX"][nPosIndex] + math.random(-5,5)
							local nPosY = vv["PosY"][nPosIndex] + math.random(-5,5)
							local nGenId = vv["GenId"]
							if Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId) then
								local sMonsterName = tRiotOfNether_Text["MonsterName"][nMonsterId]
								local sMapName = Get_MapName(nMapId)
								if vv["TellAll"] ~= nil then
									Sys_TalkBroadcast(string.format(tRiotOfNether_Text["BroadCast"]["FreshBoss"],sMonsterName))
									Sys_SystemBroadcast(string.format(tRiotOfNether_Text["BroadCast"]["FreshBoss"],sMonsterName))
								end
							end
						end
						-- 重新记录时间
						Sys_SetSynaGlobalData(nGlobalId,nGlobalPos,nNewTime)
					end
				end
			end
		end
	end
end	
	
-- 删除片区怪物
function RiotOfNether_DelFreshBoss()
	local nMapId = tRiotOfNether_Cont["NetherMapId"]
	for i,v in pairs(tRiotOfNether_CreateBoss[nMapId]) do
		if type(v) == "table" then
			Monster_DelMonster(tRiotOfNether_Cont["NetherMapId"],v["MonsterId"])
			Sys_SetTempData(1,tRiotOfNether_Cont["NetherMapId"],v["MonsterId"],0)
		end
	end
end

-- 时间转文字
function RiotOfNether_TimeToText(sText,sTime,sDayTime)
	local sBeginYear,sBeginMonth,sBeginDay,_1,_2,sEndYear,sEndMonth,sEndDay,_3,_4 = CommonFunc_AnalysisActivityTime(sTime)
	local sBeginHour,sBeginMinute,sEndHour,sEndMinute = CommonFunc_AnalysisDayTime(sDayTime)

	local sNewText = string.format(sText,sBeginMonth,sBeginDay,sEndMonth,sEndDay,sBeginHour,sBeginMinute,sEndHour,sEndMinute)
	return sNewText
end

-- 进度数转文字
function RiotOfNether_ScheduleNumToText(nNum)
	local sNum = tostring(nNum)
	local sBlank = ""
	for i = 1,math.floor((tRiotOfNether_Cont["HangInBit"] - #sNum)*1.9) do
		sBlank = sBlank .. " "
	end
	sNum = sBlank .. sNum
	return sNum
end

-- 进度条转文字
function RiotOfNether_ScheduleToText(nNum)
	local sBlock = tRiotOfNether_Text["Block"]
	local nBlockNum 
	if nNum >= tRiotOfNether_Pool["UplevSchedule"][4] then
		nBlockNum = tRiotOfNether_Cont["HangInSchedule"]
	else
		nBlockNum = math.floor(nNum*tRiotOfNether_Cont["HangInSchedule"]/tRiotOfNether_Pool["UplevSchedule"][4])
	end
	local sSchedule = ""
	for i = 1,nBlockNum do
		sSchedule = sSchedule .. sBlock
	end
	for i = 1,tRiotOfNether_Cont["HangInSchedule"] - nBlockNum do
		sSchedule = sSchedule .. " "
	end
	return sSchedule
end

-- 排行榜对白
function RiotOfNether_RankDialog(nNpcId,nIndex)
	local nLeft = tRiotOfNether_Cont["WordDistance"][1]["Left"]
	local nMiddle = tRiotOfNether_Cont["WordDistance"][1]["Middle"]
	local nRight = tRiotOfNether_Cont["WordDistance"][1]["Right"]
	local nUserId = Get_UserId()
	for i = 1,tRiotOfNether_Cont["RankNum"] do
		local nGlobalId = tRiotOfNether_GlobalRank[nIndex][1][i]["GlobalId"]
		local nDataPos = tRiotOfNether_GlobalRank[nIndex][1][i]["Data"]
		local nUserNamePos = tRiotOfNether_GlobalRank[nIndex][1][i]["UserName"]
		local sLeft = i
		local sMiddle = tostring(Get_SysDynaGlobalData(nGlobalId,nDataPos))
		local sRight = Get_SysDynaGlobalDataStr(nGlobalId,nUserNamePos)
		if sRight == "" then
			sRight = tRiotOfNether_Text["Nobody"]
		end
		local sText = tRiotOfNether_Cont["RankIndex"][nIndex] .. i
		local sTextHH = "\n"
		-- tNpcGossip[nNpcId][sText] = Sys_CenterAline(sLeft,nLeft,sMiddle,nMiddle,sRight,nRight).."\n"
		tNpcGossip[nNpcId][sText] = Sys_CenterAline(tostring(sLeft),nLeft,tostring(sMiddle),nMiddle,tostring(sRight),nRight,tostring(sTextHH),50)
	end
	local sLink = tRiotOfNether_Cont["RankLink"][nIndex]
	LinkNpcGossipFunc_New(nNpcId,sLink)
end

-- 奖励对白
function RiotOfNether_RewardDialog(nNpcId)
	local nUserId = Get_UserId()
	local nLevel = RiotOfNether_GetPoolLevel()
	
	local sHaveReceived = tRiotOfNether_Text["HaveReceived"]
	local sNotReceive = tRiotOfNether_Text["NotReceive"]
	for i = 6,8 do
		local sColorText = "Text5" .. nLevel .. tostring(i-3)
		if RiotOfNether_StcJudge(i,0,nUserId,1) == 0 then
			tNpcGossip[nNpcId][sColorText] = string.format(tRiotOfNether_Text[nNpcId][sColorText],sNotReceive)
		else
			tNpcGossip[nNpcId][sColorText] = string.format(tRiotOfNether_Text[nNpcId][sColorText],sHaveReceived)
		end
	end

	local nNowNum = RiotOfNether_StcJudge(2,0,nUserId,1)
	local sText = "Text5" .. nLevel .. "7"
	tNpcGossip[nNpcId][sText] = string.format(tRiotOfNether_Text[nNpcId][sText],nNowNum)

	LinkNpcGossipFunc_New(nNpcId,"5-" .. nLevel)
end

-- 进度对白
function RiotOfNether_ScheduleDialog(nNpcId)
	local nTotalNum = RiotOfNether_GetSchedule()
	local sTotalNum = RiotOfNether_ScheduleNumToText(nTotalNum)
	local sSchedule = RiotOfNether_ScheduleToText(nTotalNum)
	local nPersonalNum = RiotOfNether_StcJudge(2,0,nUserId,1)
	local nLevel = RiotOfNether_GetPoolLevel()
	tNpcGossip[nNpcId]["Text242"] = string.format(tRiotOfNether_Text[nNpcId]["Text242"],sTotalNum)
	tNpcGossip[nNpcId]["Text243"] = string.format(tRiotOfNether_Text[nNpcId]["Text243"],sSchedule)
	tNpcGossip[nNpcId]["Text246"] = string.format(tRiotOfNether_Text[nNpcId]["Text246"],nPersonalNum,nLevel)
	
	if nLevel >= 4 then
		tNpcGossip[nNpcId]["Text243"] = string.format(tRiotOfNether_Text[nNpcId]["Text243"],tRiotOfNether_Text["BlockMax"])
		tNpcGossip[nNpcId]["Text2-4"] = {241,242,243,245,246,248}
	else
		local sScheduleNumText = {}
		for i,v in pairs(tRiotOfNether_Pool["UplevSchedule"]) do
			if nTotalNum >= v then
				sScheduleNumText[i] = tRiotOfNether_Text[nNpcId]["ScheduleNumText"][2][i]
			else
				sScheduleNumText[i] = tRiotOfNether_Text[nNpcId]["ScheduleNumText"][1][i]
			end
		end
		tNpcGossip[nNpcId]["Text244"] = string.format(tRiotOfNether_Text[nNpcId]["Text244"],sScheduleNumText[1],sScheduleNumText[2],sScheduleNumText[3],sScheduleNumText[4])
		local nNext = tRiotOfNether_Pool["UplevSchedule"][nLevel+1]/10000
		tNpcGossip[nNpcId]["Text247"] = string.format(tRiotOfNether_Text[nNpcId]["Text247"],nNext)
		tNpcGossip[nNpcId]["Text2-4"] = {241,242,243,244,246,247}
	end
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

function BossCount(nMonsterId)
	Sys_SetTempData(1,10246,nMonsterId,0)
end

function RiotOfNether_MoveNpc()
	--绿色服,激情服不上活动
	if SpecialServer_ChkGreenServer() or SpecialServer_ChkNoGiftServer() then
		return 
	end
	
	-- 服务器区分接口
	if not RiotOfNether_DistinguishServer() then
		return
	end
	
	if not Sys_ChkFullTime(tRiotOfNether_Cont["DailyRewardTime"]) then
		return
	end
	local nLevel = RiotOfNether_GetPoolLevel()
	for i,v in pairs(tRiotOfNether_Npc) do
		local nNpcId = v["NpcId"]
		local nMapId = v["MapId"]
		local nPosX = v["PosX"]
		local nPosY = v["PosY"]
		if SpecialServer_ChkNoGiftServer() then
			nMapId = v["JQFMapId"]
			nPosX = v["JQFPosX"]
			nPosY = v["JQFPosY"]
		end 
		if i == nLevel and Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
			Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
		else
			Npc_MoveNpcPos(nNpcId,5000,100,100)
		end
	end
end

function RiotOfNether_WordClick(nPosX,nPosY,nMapId,nNpcId)
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		return
	end
	if Get_UserMapId(nUserId) == tRiotOfNether_Cont["Nether"]["MapId"] then
		Sys_MsgBox(tRiotOfNether_Text["AlreadyInMap"],nil,nil,nUserId)
	else
		local sFunc = string.format("Sys_GotoSomeWhere</N>%d</N>%d</N>%d</N>%d",nPosX,nPosY,nMapId,nNpcId)
		Sys_MsgBox(tRiotOfNether_Text["LearnMore"],sFunc,nil,nUserId)
	end
end

function RiotOfNether_WordClick1()
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		return
	end
	Sys_MsgBox(tRiotOfNether_Text["LearnMore1"],nil,nil,nUserId)
end

-- 使用符
function RiotOfNether_UseTaoistItem(nItemTypeId)
	local nUserId = Get_UserId()
	
	-- 服务器区分接口 不在可使用服务器内 删除所有物品
	if not RiotOfNether_DistinguishServer() then
		local nNum = Get_CountItemType(nItemTypeId,0)
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][7],nItemTypeId,nNum),nUserId)
		end
	
		return
	end
	
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		local nNum = Get_CountItemType(nItemTypeId,0)
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			
			User_TalkChannel2005(tRiotOfNether_Text["OverTimeDel"],nUserId)
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][6],nItemTypeId,nNum),nUserId)
		end
		return
	end
	-- 判断职业
	if not ((Get_UserProfession(nUserId) >= G_PRO_Taoist0) and (Get_UserProfession(nUserId) <= G_PRO_FireTaoist5)) then
		Sys_MsgBox(tRiotOfNether_Text[nItemTypeId]["NoPro"],nil,nil,nUserId)
		return
	end	
	-- 判断地图
	if Get_UserMapId(nUserId) ~= tRiotOfNether_Cont["NetherMapId"] then
		Sys_MsgBox(tRiotOfNether_Text[nItemTypeId]["NoMap"],nil,nil,nUserId)
		return
	end
	-- 瘴气值判断
	local nGas = RiotOfNether_StcJudge(1,0,nUserId,1)
	if nGas >= tRiotOfNether_Cont["Gas"]["DailyMax"] and not RiotOfNether_JudgeDailyMax() then
		Sys_MsgBox(tRiotOfNether_Text[nItemTypeId]["HaveReceive"],nil,nil,nUserId)
		return
	end
	-- 判断背包
	if not RewardTemplate_CheckSpace(tRiotOfNether_Award[nItemTypeId]) then
		return
	end
	-- 增加瘴气值
	RiotOfNether_StcJudge(1,tRiotOfNether_Cont["Gas"]["TaoistItem"],nUserId)
	RewardTemplate_UseItemAndMsg(tRiotOfNether_Award[nItemTypeId])
	local nNewGasNum = nGas + tRiotOfNether_Cont["Gas"]["TaoistItem"]
	if nNewGasNum >= tRiotOfNether_Cont["Gas"]["DailyMax"] and not RiotOfNether_JudgeDailyMax() then
		if RiotOfNether_EnterMap("Dragon",1,nUserId) then
			return
		end
	end
	-- 接回对白判断
	Sys_MsgBox(tRiotOfNether_Text[nItemTypeId]["ContinueUse"],string.format("RiotOfNether_ReturnTaoistItemDialog</N>%d",nItemTypeId),nil,nUserId)
end

function RiotOfNether_ReturnTaoistItemDialog(nItemTypeId)
	local nUserId = Get_UserId()
	if Item_ChkItem(nItemTypeId) then
		local nUserId = Get_UserId()
		if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
			local nNum = Get_CountItemType(nItemTypeId,0)
			if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
				
				User_TalkChannel2005(tRiotOfNether_Text[nItemTypeId]["OverTime"],nUserId)
				Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][6],nItemTypeId,nNum),nUserId)
			end
			return
		end
		-- 判断职业
		if not ((Get_UserProfession(nUserId) >= G_PRO_Taoist0) and (Get_UserProfession(nUserId) <= G_PRO_FireTaoist5)) then
			Sys_MsgBox(tRiotOfNether_Text[nItemTypeId]["NoPro"],nil,nil,nUserId)
			return
		end	
		-- 判断地图
		if Get_UserMapId(nUserId) ~= tRiotOfNether_Cont["NetherMapId"] then
			Sys_MsgBox(tRiotOfNether_Text[nItemTypeId]["NoMap"],nil,nil,nUserId)
			return
		end
		-- 判断瘴气值
		local nGas = RiotOfNether_StcJudge(1,0,nUserId,1)
		tItem[nItemTypeId]["Text113"] = string.format(tRiotOfNether_Text[nItemTypeId]["Text113"],nGas)
		if nGas >= tRiotOfNether_Cont["Gas"]["DailyMax"] and not RiotOfNether_JudgeDailyMax() then
			Sys_MsgBox(tRiotOfNether_Text[nItemTypeId]["HaveReceive"],nil,nil,nUserId)
			return
		end
		LinkItemGossipFunc_New(nItemTypeId,"1-1")
	else
		Sys_MsgBox(tRiotOfNether_Text[nItemTypeId]["NoItem"],nil,nil,nUserId)
	end
end

function RiotOfNether_GetTaoistItem()
	local nUserId = Get_UserId()
	-- 判断职业
	if not ((Get_UserProfession(nUserId) >= G_PRO_Taoist0) and (Get_UserProfession(nUserId) <= G_PRO_FireTaoist5)) then
		return
	end	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tRiotOfNether_Award["GetTaoist"],nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tRiotOfNether_Award["GetTaoist"],nUserId)
end

-- 【判断是否处于瘴气护盾状态】
function RiotOfNether_JudgeDailyMax()
	local nEvent = tRiotOfNether_Stc[12]["EventType"]
	local nType = tRiotOfNether_Stc[12]["DataType"]
	local nTimestamp = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nTime = os.time()
	if nTimestamp > nTime then
		return true
	else
		return false
	end
end

-- 【加持x阶瘴气护盾】
function RiotOfNether_Shield(nIndex)
	local nUserId = Get_UserId()
	-- 天石不足
	local nEMoney = tRiotOfNether_Cont["Shield"][nIndex]["Emoney"]
	if Get_UserEMoney(nUserId) < nEMoney then
		Sys_MsgBox(tRiotOfNether_Text["MsgBox"]["ShieldNoEmoney"])
		return
	end
	local nEvent = tRiotOfNether_Stc[11]["EventType"]
	local nType = tRiotOfNether_Stc[11]["DataType"]
		-- 隔天重置
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nTime = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nAddTime = tRiotOfNether_Cont["Shield"][nIndex]["Time"]
	-- 每日加持瘴气护盾最多120分钟
	if nTime + nAddTime > tRiotOfNether_Cont["Shield"]["TimeLimit"] then
		Sys_MsgBox(tRiotOfNether_Text["MsgBox"]["ShieldNoTime"])
		return
	end
	local nNpcId = Get_NpcId()
	LinkNpcGossipFunc_New(nNpcId,tRiotOfNether_Cont["Shield"][nIndex]["Link"])
end

-- 【二次确认加持x阶瘴气护盾】
function RiotOfNether_ConfirmShield(nIndex)
	local nUserId = Get_UserId()
	local nEvent = tRiotOfNether_Stc[11]["EventType"]
	local nType = tRiotOfNether_Stc[11]["DataType"]
		-- 隔天重置
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	local nEMoney = tRiotOfNether_Cont["Shield"][nIndex]["Emoney"]
	if User_AddEMoney(-nEMoney) then
		Sys_SaveEmoneyBuy(tRiotOfNether_Cont["Shield"][nIndex]["EmoneyLog"])
	end
	local nEvent2 = tRiotOfNether_Stc[12]["EventType"]
	local nType2 = tRiotOfNether_Stc[12]["DataType"]
	local nNowTimestamp = Get_UserStatisticValue(nEvent2,nType2,nUserId)
	local nTime = os.time()
	-- 瘴气护盾还未过期
	if nNowTimestamp > nTime then
		Task_AddStatistic(nEvent,nType,tRiotOfNether_Cont["Shield"][nIndex]["Time"],1)
		Task_SetStatistic(nEvent2,nType2,nNowTimestamp+tRiotOfNether_Cont["Shield"][nIndex]["Time"]*60,1)
	else
		Task_AddStatistic(nEvent,nType,tRiotOfNether_Cont["Shield"][nIndex]["Time"],1)
		Task_SetStatistic(nEvent2,nType2,nTime+tRiotOfNether_Cont["Shield"][nIndex]["Time"]*60,1)
	end
	Sys_MsgBox(string.format(tRiotOfNether_Text["MsgBox"]["Shield"],tRiotOfNether_Cont["Shield"][nIndex]["Time"]))
	User_TalkChannel2005(string.format(tRiotOfNether_Text["Talk"]["Shield"],tRiotOfNether_Cont["Shield"][nIndex]["Time"]))
end
---------------------------------------------NPC模块---------------------------------------------
-- 【炼化魂石】煅魂炉
tNpcFace[3017] = 366
tNpcFace[3019] = 366
tNpcFace[3020] = 366
tNpcFace[3032] = 366
tNpcGossip[21347] = tNpcGossip[21347] or DefaultNpc:new{}
tNpcGossip[21347]["OptionHidden"] = 1
tNpcGossip[21347]["DialogueText"] = tRiotOfNether_Text[21347]
-- 活动前
tNpcGossip[21347]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21347]["tOption1-1"] = {111}
tNpcGossip[21347]["ChkFunc1-1"] = function ()
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text113"] = RiotOfNether_TimeToText(tRiotOfNether_Text[nNpcId]["Text113"],tRiotOfNether_Cont["ActiveTime"],tRiotOfNether_Cont["ActiveDayTime"])
	return CommonFunc_GetBeforeActivityTime(tRiotOfNether_Cont["ActiveTime"])
end

-- 活动期间 等级不足或第一次点击
tNpcGossip[21347]["Text1-2"] = {121,122,123,124,125,126,127,128}
tNpcGossip[21347]["tOption1-2"] = {121,123,124,125,126}
tNpcGossip[21347]["ChkFunc1-2"] = function ()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	if Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		tNpcGossip[nNpcId]["Text125"] = RiotOfNether_TimeToText(tRiotOfNether_Text[nNpcId]["Text125"],tRiotOfNether_Cont["ActiveTime"],tRiotOfNether_Cont["ActiveDayTime"])
		if not RiotOfNether_LevelJudge() then
			tNpcGossip[nNpcId]["Text1-2"] = {121,122,123,124,125,126,127}
			tNpcGossip[nNpcId]["tOption1-2"] = {125}
			return true
		elseif RiotOfNether_StcJudge(3,0,nUserId,1) == 0 then
			tNpcGossip[nNpcId]["Text1-2"] = {121,122,123,124,125,127,128}
			-- if Sys_ChkDayTime(tRiotOfNether_Cont["ActiveDayTime"]) then
				tNpcGossip[nNpcId]["tOption1-2"] = {121,123,124}
				-- tNpcGossip[nNpcId]["tOption1-2"] = {121,122,123,124}
			-- else
				-- tNpcGossip[nNpcId]["tOption1-2"] = {126}
			-- end
			return true
		else
			return false
		end
	else
		return false
	end
end	
tNpcGossip[21347]["OptionFunc121"] = "RiotOfNether_RewardDialog</N>21347"
tNpcGossip[21347]["OptionPoint122"] = "6-1"
tNpcGossip[21347]["OptionFunc123"] = "RiotOfNether_RankDialog</N>21347</N>1"
tNpcGossip[21347]["OptionFunc124"] = "RiotOfNether_RankDialog</N>21347</N>2"

-- 进度
tNpcGossip[21347]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[21347]["tOption1-3"] = {131,133,134,135}
tNpcGossip[21347]["ChkFunc1-3"] = function ()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		return false
	end
	if not RiotOfNether_LevelJudge() then
		return false
	end
	if RiotOfNether_StcJudge(3,0,nUserId,1) == 0 then
		return false
	end
	local nTotalNum = RiotOfNether_GetSchedule()
	local sTotalNum = RiotOfNether_ScheduleNumToText(nTotalNum)
	local sSchedule = RiotOfNether_ScheduleToText(nTotalNum)
	local nPersonalNum = RiotOfNether_StcJudge(2,0,nUserId,1)
	local nLevel = RiotOfNether_GetPoolLevel()
	tNpcGossip[nNpcId]["Text132"] = string.format(tRiotOfNether_Text[nNpcId]["Text132"],sTotalNum)
	tNpcGossip[nNpcId]["Text133"] = string.format(tRiotOfNether_Text[nNpcId]["Text133"],sSchedule)
	tNpcGossip[nNpcId]["Text136"] = string.format(tRiotOfNether_Text[nNpcId]["Text136"],nPersonalNum,nLevel)
	
	if nLevel >= 4 then
		tNpcGossip[nNpcId]["Text133"] = string.format(tRiotOfNether_Text[nNpcId]["Text133"],tRiotOfNether_Text["BlockMax"])
		tNpcGossip[nNpcId]["Text135"] = string.format(tRiotOfNether_Text[nNpcId]["Text135"],tRiotOfNether_Text[nNpcId]["ScheduleNumText"]["Max"])
		tNpcGossip[nNpcId]["Text1-3"] = {131,132,133,135,136}
	else
		local sScheduleNumText = {}
		for i,v in pairs(tRiotOfNether_Pool["UplevSchedule"]) do
			if nTotalNum >= v then
				sScheduleNumText[i] = tRiotOfNether_Text[nNpcId]["ScheduleNumText"][2][i]
			else
				sScheduleNumText[i] = tRiotOfNether_Text[nNpcId]["ScheduleNumText"][1][i]
			end
		end
		tNpcGossip[nNpcId]["Text134"] = string.format(tRiotOfNether_Text[nNpcId]["Text134"],sScheduleNumText[2])
		tNpcGossip[nNpcId]["Text139"] = string.format(tRiotOfNether_Text[nNpcId]["Text139"],sScheduleNumText[3])
		tNpcGossip[nNpcId]["Text1310"] = string.format(tRiotOfNether_Text[nNpcId]["Text1310"],sScheduleNumText[4])
		local nNext = tRiotOfNether_Pool["UplevSchedule"][nLevel+1]/10000
		tNpcGossip[nNpcId]["Text137"] = string.format(tRiotOfNether_Text[nNpcId]["Text137"],nNext)
		tNpcGossip[nNpcId]["Text1-3"] = {131,132,133,134,139,1310,136,137}
	end
	
	-- if Sys_ChkDayTime(tRiotOfNether_Cont["ActiveDayTime"]) then
		tNpcGossip[nNpcId]["tOption1-3"] = {131,133,134}
	-- else
		-- tNpcGossip[nNpcId]["tOption1-3"] = {135}
	-- end
	return true
end		
tNpcGossip[21347]["OptionFunc131"] = "RiotOfNether_RewardDialog</N>21347"
tNpcGossip[21347]["OptionPoint132"] = "6-1"
tNpcGossip[21347]["OptionFunc133"] = "RiotOfNether_RankDialog</N>21347</N>1"
tNpcGossip[21347]["OptionFunc134"] = "RiotOfNether_RankDialog</N>21347</N>2"

-- 活动前
tNpcGossip[21347]["Text1-4"] = {141,142}
tNpcGossip[21347]["tOption1-4"] = {141}
tNpcGossip[21347]["ChkFunc1-4"] = function ()
	return CommonFunc_GetAfterActivityTime(tRiotOfNether_Cont["ActiveTime"])
end
	
-- 今日排行榜
tNpcGossip[21347]["Text2-1"] = {2111,2112,2113,211,212,213,214,215,216,217,218,219,2110,2114}
tNpcGossip[21347]["tOption2-1"] = {211}
tNpcGossip[21347]["OptionPoint211"] = "3-1"
tNpcGossip[21347]["OptionFunc212"] = "LinkNpcMain"
-- 总排行榜
tNpcGossip[21347]["Text2-2"] = {2211,2212,2213,221,222,223,224,225,226,227,228,229,2210,2214}
tNpcGossip[21347]["tOption2-2"] = {221}
tNpcGossip[21347]["OptionPoint221"] = "3-2"
tNpcGossip[21347]["OptionFunc222"] = "LinkNpcMain"
-- 昨日排行榜
-- tNpcGossip[21347]["Text2-3"] = {2311,2312,2313,231,232,233,234,235,236,237,238,239,2310,2314}
-- tNpcGossip[21347]["tOption2-3"] = {231}
-- tNpcGossip[21347]["OptionFunc231"] = "RiotOfNether_RankDialog</N>21347</N>1"
	
-- 进度
-- tNpcGossip[21347]["Text2-4"] = {241,242,243,244,245,246,247,248}
-- tNpcGossip[21347]["tOption2-4"] = {241}
-- tNpcGossip[21347]["OptionFunc241"] = "LinkNpcMain"	

-- 荒冥镇狱日榜奖励
tNpcGossip[21347]["Text3-1"] = {311,312,313,314,315,316,317,318,319}
tNpcGossip[21347]["tOption3-1"] = {311}
-- tNpcGossip[21347]["OptionFunc311"] = "RiotOfNether_RankDialog</N>21347</N>1"	
tNpcGossip[21347]["OptionFunc311"] = "LinkNpcMain"	

-- 荒冥镇狱总榜奖励
tNpcGossip[21347]["Text3-2"] = {321,322,323,324,325,326,327,328,329,3210,3211,3212,3213,3214,3215,3216}
tNpcGossip[21347]["tOption3-2"] = {321}
tNpcGossip[21347]["ChkFunc3-2"] = function ()
	--	local nNpcId = Get_NpcId()
	--	local _1,_2,_3,_4,_5,_6,sEndMonth,sEndDay,_7,_8 = CommonFunc_AnalysisActivityTime(tActivityTime["RiotOfNether"]["DailyRewardTime"])
	--	tNpcGossip[nNpcId]["Text329"] = string.format(tRiotOfNether_Text[nNpcId]["Text329"],sEndMonth,sEndDay)
	return true
end
-- tNpcGossip[21347]["OptionFunc321"] = "RiotOfNether_RankDialog</N>21347</N>2"
tNpcGossip[21347]["OptionFunc321"] = "LinkNpcMain"
	
-- 领取奖励
-- tNpcGossip[21347]["Text4-1"] = {411,412,413}
tNpcGossip[21347]["tOption4-1"] = {411}
tNpcGossip[21347]["OptionFunc411"] = "LinkNpcMain"	

-- 奖励一览
-- 1级
tNpcGossip[21347]["Text5-1"] = {518,511,512,513,514,515,516,517}
tNpcGossip[21347]["tOption5-1"] = {511,512,513}
tNpcGossip[21347]["OptionFunc511"] = "RiotOfNether_HandInBonds</N>21347</N>1"
tNpcGossip[21347]["OptionFunc512"] = "RiotOfNether_HandInBonds</N>21347</N>10"
tNpcGossip[21347]["OptionFunc513"] = "RiotOfNether_HandInBonds</N>21347"


-- 2级
tNpcGossip[21347]["Text5-2"] = {528,521,522,523,524,525,526,527}
tNpcGossip[21347]["tOption5-2"] = {521,522,523}	
tNpcGossip[21347]["OptionFunc521"] = "RiotOfNether_HandInBonds</N>21347</N>1"
tNpcGossip[21347]["OptionFunc522"] = "RiotOfNether_HandInBonds</N>21347</N>10"
tNpcGossip[21347]["OptionFunc523"] = "RiotOfNether_HandInBonds</N>21347"


-- 3级
tNpcGossip[21347]["Text5-3"] = {538,531,532,533,534,535,536,537}
tNpcGossip[21347]["tOption5-3"] = {531,532,533}
tNpcGossip[21347]["OptionFunc531"] = "RiotOfNether_HandInBonds</N>21347</N>1"
tNpcGossip[21347]["OptionFunc532"] = "RiotOfNether_HandInBonds</N>21347</N>10"
tNpcGossip[21347]["OptionFunc533"] = "RiotOfNether_HandInBonds</N>21347"


-- 4级
tNpcGossip[21347]["Text5-4"] = {548,541,542,543,544,545,546,547}
tNpcGossip[21347]["tOption5-4"] = {541,542,543}
tNpcGossip[21347]["OptionFunc541"] = "RiotOfNether_HandInBonds</N>21347</N>1"
tNpcGossip[21347]["OptionFunc542"] = "RiotOfNether_HandInBonds</N>21347</N>10"
tNpcGossip[21347]["OptionFunc543"] = "RiotOfNether_HandInBonds</N>21347"

-- 奖励总览
tNpcGossip[21347]["Text6-1"] = {611,612,613,614,615,616,617,618,619,6110}
tNpcGossip[21347]["tOption6-1"] = {611}
tNpcGossip[21347]["OptionFunc611"] = "LinkNpcMain"

tNpcGossip[21348] = tNpcGossip[21347]
tNpcGossip[21369] = tNpcGossip[21347]
tNpcGossip[21370] = tNpcGossip[21347]
	
-- 【荒冥狱】镇无常
-- tNpcFace[3016] = 1161
tNpcFace[3016] = 217
tNpcGossip[21351] = tNpcGossip[21351] or DefaultNpc:new{}
tNpcGossip[21351]["OptionHidden"] = 1
tNpcGossip[21351]["DialogueText"] = tRiotOfNether_Text[21351]	
-- 活动前
tNpcGossip[21351]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[21351]["tOption1-1"] = {111}
tNpcGossip[21351]["ChkFunc1-1"] = function ()
	tNpcGossip[21351]["Text114"] = RiotOfNether_TimeToText(tRiotOfNether_Text[21351]["Text114"],tRiotOfNether_Cont["ActiveTime"],tRiotOfNether_Cont["ActiveDayTime"])
	return CommonFunc_GetBeforeActivityTime(tRiotOfNether_Cont["ActiveTime"])
end
-- 活动中
tNpcGossip[21351]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212}
tNpcGossip[21351]["tOption1-2"] = {121,122,123,124,125,126}
tNpcGossip[21351]["ChkFunc1-2"] = function ()
	local nUserId = Get_UserId()
	tNpcGossip[21351]["Text125"] = RiotOfNether_TimeToText(tRiotOfNether_Text[21351]["Text125"],tRiotOfNether_Cont["ActiveTime"],tRiotOfNether_Cont["ActiveDayTime"])
	local nGas = RiotOfNether_StcJudge(1,0,nUserId,1)
	tNpcGossip[21351]["Text1210"] = string.format(tRiotOfNether_Text[21351]["Text1210"],nGas)
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		return false
	end
	if not RiotOfNether_LevelJudge() then
		tNpcGossip[21351]["Text1-2"] = {121,122,123,124,125,126,127}
		tNpcGossip[21351]["tOption1-2"] = {124}
	else
		tNpcGossip[21351]["Text1-2"] = {121,122,123,124,125,127,128,129,1210,1211,1212}
		if Sys_ChkDayTime(tRiotOfNether_Cont["ActiveDayTime"]) then
			tNpcGossip[21351]["tOption1-2"] = {121,126,122,123}
		else
			tNpcGossip[21351]["tOption1-2"] = {125}
		end
	end
	return true
end
tNpcGossip[21351]["OptionFunc121"] = "RiotOfNether_EnterNether"
tNpcGossip[21351]["OptionPoint122"] = "2-1"
tNpcGossip[21351]["OptionPoint126"] = "3-1"
-- 【加持瘴气护盾】
tNpcGossip[21351]["Text3-1"] = {311,312,313,314,315,312,316}
tNpcGossip[21351]["tOption3-1"] = {311,312,313}
tNpcGossip[21351]["OptionFunc311"] = "RiotOfNether_Shield</N>1"
tNpcGossip[21351]["OptionFunc312"] = "RiotOfNether_Shield</N>2"
tNpcGossip[21351]["OptionFunc313"] = "RiotOfNether_Shield</N>3"
-- 【二次确认加持瘴气护盾】
tNpcGossip[21351]["Text4-1"] = {411}
tNpcGossip[21351]["tOption4-1"] = {411,412}
tNpcGossip[21351]["OptionFunc411"] = "RiotOfNether_ConfirmShield</N>1"
tNpcGossip[21351]["Text4-2"] = {421}
tNpcGossip[21351]["tOption4-2"] = {421,412}
tNpcGossip[21351]["OptionFunc421"] = "RiotOfNether_ConfirmShield</N>2"
tNpcGossip[21351]["Text4-3"] = {431}
tNpcGossip[21351]["tOption4-3"] = {431,412}
tNpcGossip[21351]["OptionFunc431"] = "RiotOfNether_ConfirmShield</N>3"
	
-- 活动后
tNpcGossip[21351]["Text1-3"] = {131,132,133}
tNpcGossip[21351]["tOption1-3"] = {131}
tNpcGossip[21351]["ChkFunc1-3"] = function ()
	return CommonFunc_GetAfterActivityTime(tRiotOfNether_Cont["ActiveTime"])
end	
	
-- 镇狱指南
tNpcGossip[21351]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[21351]["tOption2-1"] = {211}
tNpcGossip[21351]["OptionFunc211"] = "LinkNpcMain"	
	
-- 【荒冥狱】镇乾坤	
tNpcFace[3018] = 1162
tNpcGossip[21352] = tNpcGossip[21352] or DefaultNpc:new{}
tNpcGossip[21352]["OptionHidden"] = 1
tNpcGossip[21352]["DialogueText"] = tRiotOfNether_Text[21352]	
tNpcGossip[21352]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[21352]["ChkFunc1-1"] = function ()
	local nUserId = Get_UserId()
	local nGas = RiotOfNether_StcJudge(1,0,nUserId,1)
	tNpcGossip[21352]["Text118"] = string.format(tRiotOfNether_Text[21352]["Text118"],nGas)
	return true
end
-- tNpcGossip[21352]["tOption1-1"] = {111,112,113}	
tNpcGossip[21352]["tOption1-1"] = {112}	
tNpcGossip[21352]["OptionFunc111"] = "RiotOfNether_OutNether"
tNpcGossip[21352]["OptionPoint112"] = "2-1"
	
-- 镇狱指南
tNpcGossip[21352]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[21352]["tOption2-1"] = {211}
tNpcGossip[21352]["OptionFunc211"] = "LinkNpcMain"	
---------------------------------------------物品模块---------------------------------------------	
-- 背包信
tItemFace[3307005] = 1163

-- 荒冥宝盒
tItem[3306898] = tItem[3306898] or {}
tItem[3306898]["Function"] = function(nItemTypeId,sItemName)
	RiotOfNether_UseItem(nItemTypeId)
end

-- 荒冥镇狱除魔礼包
tItem[3307933] = tItem[3307933] or {}
tItem[3307933]["Function"] = function(nItemTypeId,sItemName)
	-- 服务器区分接口 不在可使用服务器内 删除所有物品
	if not RiotOfNether_DistinguishServer() then
		local nNum = Get_CountItemType(nItemTypeId,0)
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][7],nItemTypeId,nNum),nUserId)
		end
	
		return
	end

	-- 过期删除
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		local nNum = Get_CountItemType(nItemTypeId,0)
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			
			User_TalkChannel2005(tRiotOfNether_Text["OverTimeDel"],nUserId)
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][6],nItemTypeId,nNum),nUserId)
		end
		return
	end
	if not RewardTemplate_CheckSpace(tRiotOfNether_Award[nItemTypeId]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tRiotOfNether_Award[nItemTypeId])
end

-- 60点修为值礼包
tItem[3306902] = tItem[3306898]

-- 荒冥镇狱日榜第一名礼包~荒冥镇狱日榜第十名礼包
tItem[3307021] = tItem[3306898]
tItem[3307022] = tItem[3306898]
tItem[3307023] = tItem[3306898]
tItem[3307024] = tItem[3306898]
tItem[3307025] = tItem[3306898]
tItem[3307026] = tItem[3306898]
tItem[3307027] = tItem[3306898]
tItem[3307028] = tItem[3306898]
tItem[3307029] = tItem[3306898]
tItem[3307030] = tItem[3306898]

-- 荒冥镇狱第一名礼包~荒冥镇狱第十名礼包
tItem[3307031] = tItem[3306898]
tItem[3307032] = tItem[3306898]
tItem[3307033] = tItem[3306898]
tItem[3307034] = tItem[3306898]
tItem[3307035] = tItem[3306898]
tItem[3307036] = tItem[3306898]
tItem[3307037] = tItem[3306898]
tItem[3307038] = tItem[3306898]
tItem[3307039] = tItem[3306898]
tItem[3307040] = tItem[3306898]


-- 荒冥魂石
tItem[3306901] = tItem[3306901] or {}
tItem[3306901]["Function"] = function(nItemTypeId,sItemName)
	local nUserId = Get_UserId()
	
	-- 服务器区分接口 不在可使用服务器内 删除所有物品
	if not RiotOfNether_DistinguishServer() then
		local nNum = Get_CountItemType(nItemTypeId,0)
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][7],nItemTypeId,nNum),nUserId)
		end
	
		return
	end
	
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		local nNum = Get_CountItemType(nItemTypeId,0)
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			
			User_TalkChannel2005(tRiotOfNether_Text["OverTimeDel"],nUserId)
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][6],nItemTypeId,nNum),nUserId)
		end
		return
	end
	local nLevel = RiotOfNether_GetPoolLevel()
	local tNpc = tRiotOfNether_Npc[nLevel]
	local nNpcId = tNpc["NpcId"]
	local nMapId = tNpc["MapId"]
	local nPosX = tNpc["PosX"]
	local nPosY = tNpc["PosY"]
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tNpc["JQFMapId"]
		nPosX = tNpc["JQFPosX"]
		nPosY = tNpc["JQFPosY"]
	end 
	if Get_UserMapId(nUserId) == tRiotOfNether_Cont["Nether"]["MapId"] then
		Sys_MsgBox(string.format(tRiotOfNether_Text["MsgBox"]["HingInPlace"],nPosX,nPosY),nil,nil,nUserId)
		return
	else
		Sys_MsgBox(string.format(tRiotOfNether_Text["MsgBox"]["GoToHingInPlace"],nPosX,nPosY),nil,nil,nUserId)
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId,nUserId)
	end
end	

-- 荒冥灵玉
tItemFace[3306900] = 1249
tItem[3306900] = tItem[3306900] or {}
tItem[3306900]["Function"] = function(nItemTypeId,sItemName)
	local nUserId = Get_UserId()
	
	-- 服务器区分接口 不在可使用服务器内 删除所有物品
	if not RiotOfNether_DistinguishServer() then
		local nNum = Get_CountItemType(nItemTypeId,0)
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][7],nItemTypeId,nNum),nUserId)
		end
	
		return
	end
	
	-- 过期删除
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		local nNum = Get_CountItemType(nItemTypeId,0)
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			
			User_TalkChannel2005(tRiotOfNether_Text["OverTimeDel"],nUserId)
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][6],nItemTypeId,nNum),nUserId)
		end
		return
	end
	-- 判断瘴气值是否大于100
	local nGas = RiotOfNether_StcJudge(1,0,nUserId,1)
	if nGas < tRiotOfNether_Cont["Gas"]["UseJadeMin"] then
		Sys_MsgBox(tRiotOfNether_Text["MsgBox"]["UseJadeMin"],nil,nil,nUserId)
		return
	end
	-- 判断使用次数是否大于10次
	local nUseTime = RiotOfNether_StcJudge(4,0,nUserId,1)
	if nUseTime >= tRiotOfNether_Cont["Jade"]["UseJadeLimit"] then
		Sys_MsgBox(string.format(tRiotOfNether_Text["MsgBox"]["UseJadeLimit"],tRiotOfNether_Cont["Jade"]["UseJadeLimit"]),nil,nil,nUserId)
		return
	end
	
	tItem[nItemTypeId]["Text112"] = string.format(tRiotOfNether_Text[nItemTypeId]["Text112"],nGas)
	tItem[nItemTypeId]["Text113"] = string.format(tRiotOfNether_Text[nItemTypeId]["Text113"],nUseTime)
	LinkItemGossipFunc_New(nItemTypeId,"1-1")
	-- RiotOfNether_UseJade(nItemTypeId)
end	

tItem[3306900]["DialogueText"] = tRiotOfNether_Text[3306900]
tItem[3306900]["Text1-1"] = {111,112,113}
tItem[3306900]["tOption1-1"] = {111,112,113}
tItem[3306900]["OptionFunc111"]="RiotOfNether_UseJade</N>3306900</N>1"
tItem[3306900]["OptionChkFunc111"] = function()
	local nItemNum = Get_CountItemType(3306900,0)
	local nCanUse = tRiotOfNether_Cont["Jade"]["UseJadeLimit"] - RiotOfNether_StcJudge(4,0,nUserId,1)
	if nItemNum < 1 then
		return false
	end
	if nCanUse == 0 then
		return false
	end
	return true	
end
-- tItem[3306900]["OptionFunc112"] = "RiotOfNether_UseJade</N>3306900</N>%d"
tItem[3306900]["OptionChkFunc112"] = function()
	local nItemNum = Get_CountItemType(3306900,0)
	local nCanUse = tRiotOfNether_Cont["Jade"]["UseJadeLimit"] - RiotOfNether_StcJudge(4,0,nUserId,1)
	if nItemNum <= 1 then
		return false
	end
	if nCanUse == 0 then
		return false
	end
	if nItemNum >= nCanUse then
		tItem[3306900]["Option112"] = string.format(tRiotOfNether_Text[3306900]["Option112"],nCanUse)
		tItem[3306900]["OptionFunc112"] = string.format("RiotOfNether_UseJade</N>3306900</N>%d",nCanUse)
	else
		tItem[3306900]["Option112"] = string.format(tRiotOfNether_Text[3306900]["Option112"],nItemNum)
		tItem[3306900]["OptionFunc112"] = string.format("RiotOfNether_UseJade</N>3306900</N>%d",nItemNum)
	end
	return true
end

	
-- 荒冥淬焰
tItemFace[3306899] = 1172
tItem[3306899] = tItem[3306899] or {}
tItem[3306899]["Function"] = function(nItemTypeId,sItemName)
	local nUserId = Get_UserId()
	
	-- 服务器区分接口 不在可使用服务器内 删除所有物品
	if not RiotOfNether_DistinguishServer() then
		local nNum = Get_CountItemType(nItemTypeId,0)
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][7],nItemTypeId,nNum),nUserId)
		end
	
		return
	end
	
	if not Sys_ChkFullTime(tRiotOfNether_Cont["DelTime"]) then
		local nNum = Get_CountItemType(nItemTypeId,0)
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			
			User_TalkChannel2005(tRiotOfNether_Text["OverTimeDel"],nUserId)
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][6],nItemTypeId,nNum),nUserId)
		end
		return
	end
	LinkItemGossipFunc_New(nItemTypeId,"1-1")
end	

tItem[3306899]["DialogueText"] = tRiotOfNether_Text[3306899]
tItem[3306899]["Text1-1"] = {111,112}
tItem[3306899]["tOption1-1"] = {111,112}
-- tItem[3306899]["OptionFunc111"]="RiotOfNether_UseItem</N>3306899</N>1"
tItem[3306899]["OptionFunc111"]="RiotOfNether_UseItemFragment</N>3306899</N>1"
-- tItem[3306899]["OptionFunc112"]="RiotOfNether_UseItem</N>3306899</N>2"
tItem[3306899]["OptionFunc112"]="RiotOfNether_UseItemFragment</N>3306899</N>10"

-- 荒冥镇狱降魔符
tItemFace[3307932] = 1417
tItem[3307932] = tItem[3307932] or {}
tItem[3307932]["Function"] = function(nItemTypeId,sItemName)
	local nUserId = Get_UserId()
	
	-- 服务器区分接口 不在可使用服务器内 删除所有物品
	if not RiotOfNether_DistinguishServer() then
		local nNum = Get_CountItemType(nItemTypeId,0)
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][7],nItemTypeId,nNum),nUserId)
		end
	
		return
	end
	
	if not Sys_ChkFullTime(tRiotOfNether_Cont["ActiveTime"]) then
		local nNum = Get_CountItemType(nItemTypeId,0)
		if Item_ChkItem(nItemTypeId) and Item_DelAllItemByType(nItemTypeId) then
			
			User_TalkChannel2005(tRiotOfNether_Text[nItemTypeId]["OverTime"],nUserId)
			Sys_SaveActionFestivalLog(string.format(tRiotOfNether_Cont["Log"][6],nItemTypeId,nNum),nUserId)
		end
		return
	end
	-- 判断职业
	if not ((Get_UserProfession(nUserId) >= G_PRO_Taoist0) and (Get_UserProfession(nUserId) <= G_PRO_FireTaoist5)) then
		Sys_MsgBox(tRiotOfNether_Text[nItemTypeId]["NoPro"],nil,nil,nUserId)
		return
	end	
	-- 判断地图
	if Get_UserMapId(nUserId) ~= tRiotOfNether_Cont["NetherMapId"] then
		Sys_MsgBox(tRiotOfNether_Text[nItemTypeId]["NoMap"],nil,nil,nUserId)
		return
	end
	-- 判断瘴气值
	local nGas = RiotOfNether_StcJudge(1,0,nUserId,1)
	tItem[nItemTypeId]["Text113"] = string.format(tRiotOfNether_Text[nItemTypeId]["Text113"],nGas)
	if nGas >= tRiotOfNether_Cont["Gas"]["DailyMax"] and not RiotOfNether_JudgeDailyMax() then
		Sys_MsgBox(tRiotOfNether_Text[nItemTypeId]["HaveReceive"],nil,nil,nUserId)
		return
	end
	LinkItemGossipFunc_New(nItemTypeId,"1-1")
end	

tItem[3307932]["DialogueText"] = tRiotOfNether_Text[3307932]
tItem[3307932]["Text1-1"] = {111,112,113}
tItem[3307932]["tOption1-1"] = {111,112}
tItem[3307932]["OptionFunc111"]="RiotOfNether_UseTaoistItem</N>3307932"
---------------------------------------------怪物模块---------------------------------------------
local tRiotOfNether_KillMonster = {}
tRiotOfNether_KillMonster["ActivityTime"] = tRiotOfNether_Cont["ActiveTime"]
tRiotOfNether_KillMonster["Function"]= RiotOfNether_KillMonster
tRiotOfNether_KillMonster["MonsterId"] = 
{
2845,
2846,
2847,
2848,
2849,
2850,
2851,
}

table.insert(tMonsterDrop_AreaLoad,tRiotOfNether_KillMonster)

---------------------------------------------陷阱模块---------------------------------------------
tTrap[1844] = tTrap[1844] or {}
tTrap[1844]["Function"] = function(nTrapId,nTrapType)
	local nUserId = Get_UserId()
	RiotOfNether_OutNether(nUserId)
end

---------------------------------------------系统自检---------------------------------------------
-- 每分钟执行
-- tSystem_Prompet_Func = tSystem_Prompet_Func or {}
-- table.insert(tSystem_Prompet_Func,RiotOfNether_CreateBoss)

-- 每天执行
local tRiotOfNether_OnTime = {}
	tRiotOfNether_OnTime[1] = {}
	tRiotOfNether_OnTime[1]["Type"] = 6
	tRiotOfNether_OnTime[1]["TimeType"] = 4
	tRiotOfNether_OnTime[1]["Multiple"] = {}
	tRiotOfNether_OnTime[1]["Multiple"][1]  = "00:00 00:05"
	tRiotOfNether_OnTime[1]["Func"] = RiotOfNether_AutoChk
	tRiotOfNether_OnTime[2] = {}
	tRiotOfNether_OnTime[2]["Type"] = 3
	tRiotOfNether_OnTime[2]["Func"] = RiotOfNether_CreateBoss
	tRiotOfNether_OnTime[3] = {}
	tRiotOfNether_OnTime[3]["Type"] = 1
	tRiotOfNether_OnTime[3]["Func"] = RiotOfNether_MoveNpc

table.insert(tSystemTime_InitialData,tRiotOfNether_OnTime[1])
table.insert(tSystemTime_InitialData,tRiotOfNether_OnTime[2])
table.insert(tSystemTime_InitialData,tRiotOfNether_OnTime[3])


--------------------------- 杀人触发 ---------------------------------
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"],RiotOfNether_KillOther)