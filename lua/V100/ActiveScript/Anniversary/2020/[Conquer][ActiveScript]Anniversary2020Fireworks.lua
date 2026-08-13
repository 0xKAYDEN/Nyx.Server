------------------------------------------------------------------------------------
--Name：            200316[简体征服][活动脚本]全球周年庆征服品牌月活动
--Creator:      王贤
--Created:     2020-03-16
------------------------------------------------------------------------------------
--任务需求：
--活动第1、2周，通过日常任务、神龙岛、古神灵境、BOSS之家、副本地图打怪，可以获得烟花点燃道具。
--右键道具后，可寻路到自己语种的礼炮车处。
--在市场区放置4门烟花礼炮车，每个对应一个语种。
--玩家只可在自己语种的礼炮车处，消耗x个点燃道具燃放烟花。
--点燃烟花时，播放全服公告，同时播放烟花光效
--烟花光效以npc为中心，在x±5，y±5的坐标内一共放4个光效。
--同时在地板刷出10个宝箱npc
--玩家拾取宝箱需要读条1秒。拾取后获得随机奖励。（每个玩家每天最多可以获得20个宝箱）
--其他3个语种的礼炮车，燃放规则：
--当玩家燃放自己语种的礼炮时，延迟60秒之后，其他语种的礼炮概率燃放。
--中文10%概率英文概率10%概率，西语5%概率，阿语5%概率。各个语种概率分开的，可能都燃放。（不会燃放本语种的）
--（文字包装成其他语种的玩家燃放的。）
------------------------------------------------------------------------------------
-- 前缀
-- Anniversary2020Fireworks_
-- logid： 12001906    步骤： 3
-- 3[1]  每日签到									5
-- 3[2]  每日首次使用正气令							3
-- 3[3]  每日首次使用显著功勋礼包					2
-- 3[4]  古神灵境、神龙岛、boss之家、活动地图打怪	10
-- 变量前缀: Fireworks2020_
------------------------------------------------------------------------------------
-- 掩码说明：
-- stc(217,46)	  每日签到奖励
-- stc(217,47)	  每日首次使用正气令奖励
-- stc(217,48)	  每日首次使用显著功勋礼包奖励
-- stc(217,49)	  每日古神灵境、神龙岛、boss之家、活动地图打怪奖励
-- stc(217,50)	  每日获得本服宝箱奖励
-- stc(217,97)	  记录是否首次燃放烟花
-- stc(218,18)	  每日获得其他服宝箱奖励

-- User_ChkLanguage()
----------------------------------表配置部分--------------------------------------------

local tFireworks2020_Data = {}
-- 等级
tFireworks2020_Data["Level"] = 80
tFireworks2020_Data["Metempsychosis"] = 0
-- 奖励等级
tFireworks2020_Data["LevelReward"] = 120
tFireworks2020_Data["MetempsychosisReward"] = 2


-- 福运火炬ID
tFireworks2020_Data["FireItemId"] = 3600245
tFireworks2020_Data["NeedNum"] = 5

-- Log
tFireworks2020_Data["Log"] = {}
tFireworks2020_Data["Log"][1] = "0,0,%d,%d,12001906,2,0,0"

-- 光效
tFireworks2020_Data["Effect"] = {}
tFireworks2020_Data["Effect"][1] = "task075"
tFireworks2020_Data["Effect"][2] = "task076"

-- 烟花
tFireworks2020_Data["Fireworks"] = {}
tFireworks2020_Data["Fireworks"][1] = 26082
tFireworks2020_Data["Fireworks"][2] = 26083
tFireworks2020_Data["Fireworks"][3] = 26084
tFireworks2020_Data["Fireworks"][4] = 26085
-- 光效
tFireworks2020_Data["Fireworks"]["EffectName"] = "Attack35r"
-- 播放坐标
tFireworks2020_Data["Fireworks"]["Pos"] = {}
tFireworks2020_Data["Fireworks"]["Pos"][1] = {5, 5}
tFireworks2020_Data["Fireworks"]["Pos"][2] = {-5, 5}
tFireworks2020_Data["Fireworks"]["Pos"][3] = {5, -5}
tFireworks2020_Data["Fireworks"]["Pos"][4] = {-5, -5}
tFireworks2020_Data["Fireworks"]["Pos"][5] = {0, 0}

-- 燃放后延时
tFireworks2020_Data["LatterTime"] = 60

tFireworks2020_Data["LatterNpc"] = {}
-- 燃放成功后刷出的NPC数据, npcid，普通服x y坐标，激情服x y坐标，移动的时间戳
-- 中文
tFireworks2020_Data["LatterNpc"][1] = {}
tFireworks2020_Data["LatterNpc"][1][1]  = {26093, 340, 432, 182, 188, 0}
tFireworks2020_Data["LatterNpc"][1][2]  = {26094, 341, 434, 182, 194, 0}
tFireworks2020_Data["LatterNpc"][1][3]  = {26095, 350, 446, 188, 205, 0}
tFireworks2020_Data["LatterNpc"][1][4]  = {26096, 350, 449, 183, 188, 0}
tFireworks2020_Data["LatterNpc"][1][5]  = {26097, 344, 444, 188, 193, 0}
tFireworks2020_Data["LatterNpc"][1][6]  = {26098, 341, 437, 187, 201, 0}
tFireworks2020_Data["LatterNpc"][1][7]  = {26099, 342, 434, 187, 197, 0}
tFireworks2020_Data["LatterNpc"][1][8]  = {26100, 340, 435, 186, 195, 0}
tFireworks2020_Data["LatterNpc"][1][9]  = {26101, 338, 437, 183, 196, 0}
tFireworks2020_Data["LatterNpc"][1][10] = {26102, 349, 443, 183, 202, 0}
tFireworks2020_Data["LatterNpc"][1][11] = {26137, 338, 444, 188, 195, 0}
tFireworks2020_Data["LatterNpc"][1][12] = {26138, 335, 434, 189, 202, 0}
tFireworks2020_Data["LatterNpc"][1][13] = {26139, 349, 439, 186, 202, 0}
tFireworks2020_Data["LatterNpc"][1][14] = {26140, 335, 436, 183, 206, 0}
tFireworks2020_Data["LatterNpc"][1][15] = {26141, 345, 436, 184, 197, 0}
tFireworks2020_Data["LatterNpc"][1][16] = {26142, 343, 449, 188, 192, 0}
tFireworks2020_Data["LatterNpc"][1][17] = {26143, 353, 445, 187, 193, 0}
tFireworks2020_Data["LatterNpc"][1][18] = {26144, 335, 438, 187, 205, 0}
tFireworks2020_Data["LatterNpc"][1][19] = {26145, 353, 444, 186, 206, 0}
tFireworks2020_Data["LatterNpc"][1][20] = {26146, 350, 440, 183, 190, 0}
-- 英文
tFireworks2020_Data["LatterNpc"][2] = {}
tFireworks2020_Data["LatterNpc"][2][1]  = {26103, 344, 431, 188, 191, 0}
tFireworks2020_Data["LatterNpc"][2][2]  = {26104, 337, 442, 189, 200, 0}
tFireworks2020_Data["LatterNpc"][2][3]  = {26105, 345, 449, 185, 204, 0}
tFireworks2020_Data["LatterNpc"][2][4]  = {26106, 340, 434, 182, 198, 0}
tFireworks2020_Data["LatterNpc"][2][5]  = {26107, 344, 433, 183, 201, 0}
tFireworks2020_Data["LatterNpc"][2][6]  = {26108, 339, 448, 186, 193, 0}
tFireworks2020_Data["LatterNpc"][2][7]  = {26109, 343, 433, 182, 197, 0}
tFireworks2020_Data["LatterNpc"][2][8]  = {26110, 348, 436, 186, 191, 0}
tFireworks2020_Data["LatterNpc"][2][9]  = {26111, 341, 445, 183, 199, 0}
tFireworks2020_Data["LatterNpc"][2][10] = {26112, 353, 441, 188, 200, 0}
tFireworks2020_Data["LatterNpc"][2][11] = {26147, 340, 448, 184, 194, 0}
tFireworks2020_Data["LatterNpc"][2][12] = {26148, 352, 439, 183, 194, 0}
tFireworks2020_Data["LatterNpc"][2][13] = {26149, 353, 431, 182, 192, 0}
tFireworks2020_Data["LatterNpc"][2][14] = {26150, 339, 437, 186, 198, 0}
tFireworks2020_Data["LatterNpc"][2][15] = {26151, 338, 442, 188, 206, 0}
tFireworks2020_Data["LatterNpc"][2][16] = {26152, 339, 431, 189, 197, 0}
tFireworks2020_Data["LatterNpc"][2][17] = {26153, 338, 431, 189, 190, 0}
tFireworks2020_Data["LatterNpc"][2][18] = {26154, 347, 432, 183, 197, 0}
tFireworks2020_Data["LatterNpc"][2][19] = {26155, 340, 446, 184, 190, 0}
tFireworks2020_Data["LatterNpc"][2][20] = {26156, 343, 445, 182, 202, 0}
-- 西语
tFireworks2020_Data["LatterNpc"][3] = {}
tFireworks2020_Data["LatterNpc"][3][1]  = {26113, 344, 436, 187, 206, 0}
tFireworks2020_Data["LatterNpc"][3][2]  = {26114, 348, 441, 184, 187, 0}
tFireworks2020_Data["LatterNpc"][3][3]  = {26115, 349, 434, 187, 204, 0}
tFireworks2020_Data["LatterNpc"][3][4]  = {26116, 352, 432, 189, 191, 0}
tFireworks2020_Data["LatterNpc"][3][5]  = {26117, 339, 435, 188, 194, 0}
tFireworks2020_Data["LatterNpc"][3][6]  = {26118, 337, 431, 186, 203, 0}
tFireworks2020_Data["LatterNpc"][3][7]  = {26119, 342, 433, 189, 194, 0}
tFireworks2020_Data["LatterNpc"][3][8]  = {26120, 351, 439, 187, 195, 0}
tFireworks2020_Data["LatterNpc"][3][9]  = {26121, 338, 440, 185, 201, 0}
tFireworks2020_Data["LatterNpc"][3][10] = {26122, 336, 438, 184, 189, 0}
tFireworks2020_Data["LatterNpc"][3][11] = {26157, 350, 431, 187, 199, 0}
tFireworks2020_Data["LatterNpc"][3][12] = {26158, 343, 448, 185, 202, 0}
tFireworks2020_Data["LatterNpc"][3][13] = {26159, 353, 435, 184, 195, 0}
tFireworks2020_Data["LatterNpc"][3][14] = {26160, 349, 446, 184, 191, 0}
tFireworks2020_Data["LatterNpc"][3][15] = {26161, 335, 433, 186, 190, 0}
tFireworks2020_Data["LatterNpc"][3][16] = {26162, 338, 438, 186, 197, 0}
tFireworks2020_Data["LatterNpc"][3][17] = {26163, 352, 445, 186, 188, 0}
tFireworks2020_Data["LatterNpc"][3][18] = {26164, 336, 432, 187, 189, 0}
tFireworks2020_Data["LatterNpc"][3][19] = {26165, 346, 434, 184, 200, 0}
tFireworks2020_Data["LatterNpc"][3][20] = {26166, 351, 447, 184, 205, 0}
-- 阿语
tFireworks2020_Data["LatterNpc"][4] = {}
tFireworks2020_Data["LatterNpc"][4][1]  = {26123, 336, 439, 188, 203, 0}
tFireworks2020_Data["LatterNpc"][4][2]  = {26124, 347, 431, 184, 196, 0}
tFireworks2020_Data["LatterNpc"][4][3]  = {26125, 342, 445, 183, 192, 0}
tFireworks2020_Data["LatterNpc"][4][4]  = {26126, 341, 432, 182, 191, 0}
tFireworks2020_Data["LatterNpc"][4][5]  = {26127, 338, 449, 187, 191, 0}
tFireworks2020_Data["LatterNpc"][4][6]  = {26128, 342, 437, 189, 204, 0}
tFireworks2020_Data["LatterNpc"][4][7]  = {26129, 338, 433, 184, 206, 0}
tFireworks2020_Data["LatterNpc"][4][8]  = {26130, 341, 449, 189, 201, 0}
tFireworks2020_Data["LatterNpc"][4][9]  = {26131, 342, 448, 184, 198, 0}
tFireworks2020_Data["LatterNpc"][4][10] = {26132, 339, 434, 187, 187, 0}
tFireworks2020_Data["LatterNpc"][4][11] = {26167, 342, 431, 189, 199, 0}
tFireworks2020_Data["LatterNpc"][4][12] = {26168, 353, 436, 188, 189, 0}
tFireworks2020_Data["LatterNpc"][4][13] = {26169, 340, 433, 185, 206, 0}
tFireworks2020_Data["LatterNpc"][4][14] = {26170, 349, 442, 182, 189, 0}
tFireworks2020_Data["LatterNpc"][4][15] = {26171, 349, 438, 182, 195, 0}
tFireworks2020_Data["LatterNpc"][4][16] = {26172, 341, 446, 188, 198, 0}
tFireworks2020_Data["LatterNpc"][4][17] = {26173, 352, 431, 182, 203, 0}
tFireworks2020_Data["LatterNpc"][4][18] = {26174, 343, 436, 189, 192, 0}
tFireworks2020_Data["LatterNpc"][4][19] = {26175, 342, 432, 183, 198, 0}
tFireworks2020_Data["LatterNpc"][4][20] = {26176, 349, 440, 189, 189, 0}

-- 移动地图
tFireworks2020_Data["LatterNpc"]["City"] = 1002
tFireworks2020_Data["LatterNpc"]["NoGiftCity"] = 1036
tFireworks2020_Data["LatterNpc"]["Back"] = 5000


-- 读条数据
tFireworks2020_Data["LatterNpc"]["ExploreTime"] = 3
tFireworks2020_Data["LatterNpc"]["MoveNum"] = 10

-- 每日点宝箱数量
tFireworks2020_Data["LatterNpc"]["SelfServer"] = 20
tFireworks2020_Data["LatterNpc"]["OtherServer"] = 5


-- 世界BOSS刷新箱子
tFireworks2020_Data["BossMove"] = {}
tFireworks2020_Data["BossMove"]["MapId"] = 10807
-- BOSS击杀刷新位置 npcid，x y坐标， 时间戳
tFireworks2020_Data["BossMove"][1] = {}
tFireworks2020_Data["BossMove"][1][1]  = {26177, 50, 165, 0}
tFireworks2020_Data["BossMove"][1][2]  = {26178, 50, 166, 0}
tFireworks2020_Data["BossMove"][1][3]  = {26179, 50, 167, 0}
tFireworks2020_Data["BossMove"][1][4]  = {26180, 50, 168, 0}
tFireworks2020_Data["BossMove"][1][5]  = {26181, 50, 169, 0}
tFireworks2020_Data["BossMove"][1][6]  = {26182, 54, 165, 0}
tFireworks2020_Data["BossMove"][1][7]  = {26183, 54, 166, 0}
tFireworks2020_Data["BossMove"][1][8]  = {26184, 54, 167, 0}
tFireworks2020_Data["BossMove"][1][9]  = {26185, 54, 168, 0}
tFireworks2020_Data["BossMove"][1][10] = {26186, 54, 169, 0}
tFireworks2020_Data["BossMove"][1][11] = {26187, 52, 165, 0}
tFireworks2020_Data["BossMove"][1][12] = {26188, 52, 166, 0}
tFireworks2020_Data["BossMove"][1][13] = {26189, 52, 167, 0}
tFireworks2020_Data["BossMove"][1][14] = {26190, 52, 168, 0}
tFireworks2020_Data["BossMove"][1][15] = {26191, 52, 169, 0}
tFireworks2020_Data["BossMove"][1][16] = {26192, 56, 165, 0}
tFireworks2020_Data["BossMove"][1][17] = {26193, 56, 166, 0}
tFireworks2020_Data["BossMove"][1][18] = {26194, 56, 167, 0}
tFireworks2020_Data["BossMove"][1][19] = {26195, 56, 168, 0}
tFireworks2020_Data["BossMove"][1][20] = {26196, 56, 169, 0}
tFireworks2020_Data["BossMove"][2] = {}
tFireworks2020_Data["BossMove"][2][1]  = {26177, 181, 292, 0}
tFireworks2020_Data["BossMove"][2][2]  = {26178, 181, 293, 0}
tFireworks2020_Data["BossMove"][2][3]  = {26179, 181, 294, 0}
tFireworks2020_Data["BossMove"][2][4]  = {26180, 181, 295, 0}
tFireworks2020_Data["BossMove"][2][5]  = {26181, 181, 296, 0}
tFireworks2020_Data["BossMove"][2][6]  = {26182, 185, 292, 0}
tFireworks2020_Data["BossMove"][2][7]  = {26183, 185, 293, 0}
tFireworks2020_Data["BossMove"][2][8]  = {26184, 185, 294, 0}
tFireworks2020_Data["BossMove"][2][9]  = {26185, 185, 295, 0}
tFireworks2020_Data["BossMove"][2][10] = {26186, 185, 296, 0}
tFireworks2020_Data["BossMove"][2][11] = {26187, 183, 292, 0}
tFireworks2020_Data["BossMove"][2][12] = {26188, 183, 293, 0}
tFireworks2020_Data["BossMove"][2][13] = {26189, 183, 294, 0}
tFireworks2020_Data["BossMove"][2][14] = {26190, 183, 295, 0}
tFireworks2020_Data["BossMove"][2][15] = {26191, 183, 296, 0}
tFireworks2020_Data["BossMove"][2][16] = {26192, 187, 292, 0}
tFireworks2020_Data["BossMove"][2][17] = {26193, 187, 293, 0}
tFireworks2020_Data["BossMove"][2][18] = {26194, 187, 294, 0}
tFireworks2020_Data["BossMove"][2][19] = {26195, 187, 295, 0}
tFireworks2020_Data["BossMove"][2][20] = {26196, 187, 296, 0}
tFireworks2020_Data["BossMove"][3] = {}
tFireworks2020_Data["BossMove"][3][1]  = {26177, 268, 290, 0}
tFireworks2020_Data["BossMove"][3][2]  = {26178, 268, 291, 0}
tFireworks2020_Data["BossMove"][3][3]  = {26179, 268, 292, 0}
tFireworks2020_Data["BossMove"][3][4]  = {26180, 268, 293, 0}
tFireworks2020_Data["BossMove"][3][5]  = {26181, 268, 294, 0}
tFireworks2020_Data["BossMove"][3][6]  = {26182, 272, 290, 0}
tFireworks2020_Data["BossMove"][3][7]  = {26183, 272, 291, 0}
tFireworks2020_Data["BossMove"][3][8]  = {26184, 272, 292, 0}
tFireworks2020_Data["BossMove"][3][9]  = {26185, 272, 293, 0}
tFireworks2020_Data["BossMove"][3][10] = {26186, 272, 294, 0}
tFireworks2020_Data["BossMove"][3][11] = {26187, 270, 290, 0}
tFireworks2020_Data["BossMove"][3][12] = {26188, 270, 291, 0}
tFireworks2020_Data["BossMove"][3][13] = {26189, 270, 292, 0}
tFireworks2020_Data["BossMove"][3][14] = {26190, 270, 293, 0}
tFireworks2020_Data["BossMove"][3][15] = {26191, 270, 294, 0}
tFireworks2020_Data["BossMove"][3][16] = {26192, 274, 290, 0}
tFireworks2020_Data["BossMove"][3][17] = {26193, 274, 291, 0}
tFireworks2020_Data["BossMove"][3][18] = {26194, 274, 292, 0}
tFireworks2020_Data["BossMove"][3][19] = {26195, 274, 293, 0}
tFireworks2020_Data["BossMove"][3][20] = {26196, 274, 294, 0}
tFireworks2020_Data["BossMove"][4] = {}
tFireworks2020_Data["BossMove"][4][1]  = {26177, 341, 240, 0}
tFireworks2020_Data["BossMove"][4][2]  = {26178, 341, 241, 0}
tFireworks2020_Data["BossMove"][4][3]  = {26179, 341, 242, 0}
tFireworks2020_Data["BossMove"][4][4]  = {26180, 341, 243, 0}
tFireworks2020_Data["BossMove"][4][5]  = {26181, 341, 244, 0}
tFireworks2020_Data["BossMove"][4][6]  = {26182, 345, 240, 0}
tFireworks2020_Data["BossMove"][4][7]  = {26183, 345, 241, 0}
tFireworks2020_Data["BossMove"][4][8]  = {26184, 345, 242, 0}
tFireworks2020_Data["BossMove"][4][9]  = {26185, 345, 243, 0}
tFireworks2020_Data["BossMove"][4][10] = {26186, 345, 244, 0}
tFireworks2020_Data["BossMove"][4][11] = {26187, 343, 240, 0}
tFireworks2020_Data["BossMove"][4][12] = {26188, 343, 241, 0}
tFireworks2020_Data["BossMove"][4][13] = {26189, 343, 242, 0}
tFireworks2020_Data["BossMove"][4][14] = {26190, 343, 243, 0}
tFireworks2020_Data["BossMove"][4][15] = {26191, 343, 244, 0}
tFireworks2020_Data["BossMove"][4][16] = {26192, 347, 240, 0}
tFireworks2020_Data["BossMove"][4][17] = {26193, 347, 241, 0}
tFireworks2020_Data["BossMove"][4][18] = {26194, 347, 242, 0}
tFireworks2020_Data["BossMove"][4][19] = {26195, 347, 243, 0}
tFireworks2020_Data["BossMove"][4][20] = {26196, 347, 244, 0}



-- 额外燃放概率
tFireworks2020_Data["OtherChance"] = {}
tFireworks2020_Data["OtherChance"]["Sum"] = 100
-- 简体
tFireworks2020_Data["OtherChance"][1] = 10
-- 英文
tFireworks2020_Data["OtherChance"][2] = 10
-- 西语
tFireworks2020_Data["OtherChance"][3] = 5
-- 阿语
tFireworks2020_Data["OtherChance"][4] = 5
-- -- 简体
-- tFireworks2020_Data["OtherChance"][1] = 100
-- -- 英文
-- tFireworks2020_Data["OtherChance"][2] = 100
-- -- 西语
-- tFireworks2020_Data["OtherChance"][3] = 100
-- -- 阿语
-- tFireworks2020_Data["OtherChance"][4] = 100




local tFireworks2020_Stc = {}
tFireworks2020_Stc["EventType"] = {}
tFireworks2020_Stc["DataType"] = {}
-- stc(217,46)	  每日签到奖励
tFireworks2020_Stc["EventType"][1] = 217
tFireworks2020_Stc["DataType"][1] = 46
-- stc(217,47)	  每日首次使用正气令奖励
tFireworks2020_Stc["EventType"][2] = 217
tFireworks2020_Stc["DataType"][2] = 47
-- stc(217,48)	  每日首次使用显著功勋礼包奖励
tFireworks2020_Stc["EventType"][3] = 217
tFireworks2020_Stc["DataType"][3] = 48
-- stc(217,49)	  每日古神灵境、神龙岛、boss之家、活动地图打怪奖励
tFireworks2020_Stc["EventType"][4] = 217
tFireworks2020_Stc["DataType"][4] = 49
-- stc(217,50)	  每日获得宝箱奖励
tFireworks2020_Stc["EventType"][5] = 217
tFireworks2020_Stc["DataType"][5] = 50
-- stc(217,97)	  记录是否首次燃放烟花
tFireworks2020_Stc["EventType"][6] = 217
tFireworks2020_Stc["DataType"][6] = 97
-- stc(217,97)	  引导任务 1:体验完剧情 2：烟花引导任务 3：boss引导任务
tFireworks2020_Stc["EventType"][7] = 217
tFireworks2020_Stc["DataType"][7] = 80
-- stc(218,18)	  每日获得其他服宝箱奖励
tFireworks2020_Stc["EventType"][8] = 218
tFireworks2020_Stc["DataType"][8] = 18





local tFireworks2020_Reward = {}
	-- ===签到礼包
	-- ===索引: tFireworks2020_Reward[3100011]
	-- ===LogStep:3[1]
	tFireworks2020_Reward[3100011] = {}
	tFireworks2020_Reward[3100011]["LogId"] = 12001906
	tFireworks2020_Reward[3100011]["LogStep"] = "3[1]"
	tFireworks2020_Reward[3100011]["RewardItem"] = {}
	tFireworks2020_Reward[3100011]["RewardItem"][1] = {}
	tFireworks2020_Reward[3100011]["RewardItem"][1]["Id"] = 3600245 -- 烟花[3600245][属性:137][叠加:99][金币:0], 【表格】烟花
	tFireworks2020_Reward[3100011]["RewardItem"][1]["Attr"] = "0 5" -- 烟花*5
	tFireworks2020_Reward[3100011]["RewardEffect"] = {}
	tFireworks2020_Reward[3100011]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_Reward[3100011]["RewardEffect"]["Effect"] = "angelwing"


	tFireworks2020_Reward[3007108] = {}
	-- ===显著功勋礼包
	-- ===索引: tFireworks2020_Reward[3007108]
	-- ===LogStep:3[3]
	tFireworks2020_Reward[3007108]["LogId"] = 12001906
	tFireworks2020_Reward[3007108]["LogStep"] = "3[3]"
	tFireworks2020_Reward[3007108]["RewardItem"] = {}
	tFireworks2020_Reward[3007108]["RewardItem"][1] = {}
	tFireworks2020_Reward[3007108]["RewardItem"][1]["Id"] = 3600245 -- 烟花[3600245][属性:137][叠加:99][金币:0], 【表格】烟花
	tFireworks2020_Reward[3007108]["RewardItem"][1]["Attr"] = "0 2" -- 烟花*2
	tFireworks2020_Reward[3007108]["RewardEffect"] = {}
	tFireworks2020_Reward[3007108]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_Reward[3007108]["RewardEffect"]["Effect"] = "angelwing"


local tFireworks2020_RandomReward = {}
	-- ===怪物掉落
	-- ===索引: tFireworks2020_RandomReward["MonsterDrop"][1]
	-- ===LogStep:3[4]
	tFireworks2020_RandomReward["MonsterDrop"] = {}
	tFireworks2020_RandomReward["MonsterDrop"][1] = {}
	tFireworks2020_RandomReward["MonsterDrop"][1]["ItemChanceSum"] = 10000
	tFireworks2020_RandomReward["MonsterDrop"][1]["LogId"] = 12001906
	tFireworks2020_RandomReward["MonsterDrop"][1]["LogStep"] = "3[4]"
	-- 烟花 - 0.2%
	tFireworks2020_RandomReward["MonsterDrop"][1][1] = {}
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["ItemChance"] = 20
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["RewardItem"] = {}
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["RewardItem"][1]["Id"] = 3600245 -- 烟花[3600245][属性:137][叠加:99][金币:0], 【表格】烟花
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 烟花*1
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["RewardEffect"] = {}
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得10个
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["EventType"] = 217
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["DataType"] = 49
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["RewardDelay"] = 1
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["RewardTimeType"] = 4
	tFireworks2020_RandomReward["MonsterDrop"][1][1]["RewardData"] = 10
	-- 不掉落 - 99.8%
	tFireworks2020_RandomReward["MonsterDrop"][1][2] = {}
	tFireworks2020_RandomReward["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["MonsterDrop"][1][2]["ItemChance"] = 9980


	tFireworks2020_RandomReward["SelfServer"] = {}
	-- ===本国宝箱拾取奖励
	-- ===索引: tFireworks2020_RandomReward["SelfServer"][1]
	-- ===LogStep:3[5]
	tFireworks2020_RandomReward["SelfServer"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1]["ItemChanceSum"] = 10000
	tFireworks2020_RandomReward["SelfServer"][1]["LogId"] = 12001906
	tFireworks2020_RandomReward["SelfServer"][1]["LogStep"] = "3[5]"
	-- 喂养道具（小）-- 【必给】
	tFireworks2020_RandomReward["SelfServer"][1][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1][1]["RandomItemChanceType"] = 1
	tFireworks2020_RandomReward["SelfServer"][1][1]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][1]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1][1]["RewardItem"][1]["Id"] = 3330460 --  0 【库里没有该物品】, 【表格】喂养道具（小）
	tFireworks2020_RandomReward["SelfServer"][1][1]["RewardItem"][1]["Attr"] = "0 1" --  0 【库里没有该物品】*1
	tFireworks2020_RandomReward["SelfServer"][1][1]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1阶灵珠 - 5%
	tFireworks2020_RandomReward["SelfServer"][1][2] = {}
	tFireworks2020_RandomReward["SelfServer"][1][2]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][1][2]["ItemChance"] = 500
	tFireworks2020_RandomReward["SelfServer"][1][2]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][2]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1][2]["RewardItem"][1]["Id"] = 4200001 -- 1阶灵珠[4200001][属性:72][叠加:99][金币:0], 【表格】1阶灵珠
	tFireworks2020_RandomReward["SelfServer"][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	tFireworks2020_RandomReward["SelfServer"][1][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tFireworks2020_RandomReward["SelfServer"][1][2]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][1][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54338, data0）】全服限量:（50）, 超限给编号（3）-
	tFireworks2020_RandomReward["SelfServer"][1][2]["GlobalId"] = 54338
	tFireworks2020_RandomReward["SelfServer"][1][2]["Pos"] = 0
	tFireworks2020_RandomReward["SelfServer"][1][2]["MaxData"] = 50
	tFireworks2020_RandomReward["SelfServer"][1][2]["FullIndex"] = 3
	-- 赤炼石+2 - 17%
	tFireworks2020_RandomReward["SelfServer"][1][3] = {}
	tFireworks2020_RandomReward["SelfServer"][1][3]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][1][3]["ItemChance"] = 1700
	tFireworks2020_RandomReward["SelfServer"][1][3]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][3]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tFireworks2020_RandomReward["SelfServer"][1][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tFireworks2020_RandomReward["SelfServer"][1][3]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 17%
	tFireworks2020_RandomReward["SelfServer"][1][4] = {}
	tFireworks2020_RandomReward["SelfServer"][1][4]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][1][4]["ItemChance"] = 1700
	tFireworks2020_RandomReward["SelfServer"][1][4]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][4]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tFireworks2020_RandomReward["SelfServer"][1][4]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹（赠）*5
	tFireworks2020_RandomReward["SelfServer"][1][4]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 究极通神丹 - 17%
	tFireworks2020_RandomReward["SelfServer"][1][5] = {}
	tFireworks2020_RandomReward["SelfServer"][1][5]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][1][5]["ItemChance"] = 1700
	tFireworks2020_RandomReward["SelfServer"][1][5]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][5]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1][5]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹
	tFireworks2020_RandomReward["SelfServer"][1][5]["RewardItem"][1]["Attr"] = "0 2 3" -- 究极通神丹（赠）*2
	tFireworks2020_RandomReward["SelfServer"][1][5]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 17%
	tFireworks2020_RandomReward["SelfServer"][1][6] = {}
	tFireworks2020_RandomReward["SelfServer"][1][6]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][1][6]["ItemChance"] = 1700
	tFireworks2020_RandomReward["SelfServer"][1][6]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][6]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1][6]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tFireworks2020_RandomReward["SelfServer"][1][6]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tFireworks2020_RandomReward["SelfServer"][1][6]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 17%
	tFireworks2020_RandomReward["SelfServer"][1][7] = {}
	tFireworks2020_RandomReward["SelfServer"][1][7]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][1][7]["ItemChance"] = 1700
	tFireworks2020_RandomReward["SelfServer"][1][7]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][7]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1][7]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tFireworks2020_RandomReward["SelfServer"][1][7]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的微光星陨石*5
	tFireworks2020_RandomReward["SelfServer"][1][7]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 3阶灵珠 - 2.5%
	tFireworks2020_RandomReward["SelfServer"][1][8] = {}
	tFireworks2020_RandomReward["SelfServer"][1][8]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][1][8]["ItemChance"] = 250
	tFireworks2020_RandomReward["SelfServer"][1][8]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][8]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1][8]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tFireworks2020_RandomReward["SelfServer"][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tFireworks2020_RandomReward["SelfServer"][1][8]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tFireworks2020_RandomReward["SelfServer"][1][8]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][1][8]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54338, data2）】全服限量:（20）, 超限给编号（9）-
	tFireworks2020_RandomReward["SelfServer"][1][8]["GlobalId"] = 54338
	tFireworks2020_RandomReward["SelfServer"][1][8]["Pos"] = 2
	tFireworks2020_RandomReward["SelfServer"][1][8]["MaxData"] = 20
	tFireworks2020_RandomReward["SelfServer"][1][8]["FullIndex"] = 9
	-- 赤炼石+4 - 3%
	tFireworks2020_RandomReward["SelfServer"][1][9] = {}
	tFireworks2020_RandomReward["SelfServer"][1][9]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][1][9]["ItemChance"] = 300
	tFireworks2020_RandomReward["SelfServer"][1][9]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][9]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1][9]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tFireworks2020_RandomReward["SelfServer"][1][9]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tFireworks2020_RandomReward["SelfServer"][1][9]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 辉月果 - 3%
	tFireworks2020_RandomReward["SelfServer"][1][10] = {}
	tFireworks2020_RandomReward["SelfServer"][1][10]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][1][10]["ItemChance"] = 300
	tFireworks2020_RandomReward["SelfServer"][1][10]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][10]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1][10]["RewardItem"][1]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:10000][金币:0], 【表格】辉月果
	tFireworks2020_RandomReward["SelfServer"][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 辉月果*1
	tFireworks2020_RandomReward["SelfServer"][1][10]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 1.5%
	tFireworks2020_RandomReward["SelfServer"][1][11] = {}
	tFireworks2020_RandomReward["SelfServer"][1][11]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][1][11]["ItemChance"] = 150
	tFireworks2020_RandomReward["SelfServer"][1][11]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][11]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][1][11]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tFireworks2020_RandomReward["SelfServer"][1][11]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tFireworks2020_RandomReward["SelfServer"][1][11]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][1][11]["RewardEffect"]["Effect"] = "angelwing"


	tFireworks2020_RandomReward["SelfServer"][2] = {}
	-- ===异国宝箱拾取奖励
	-- ===索引: tFireworks2020_RandomReward["SelfServer"][2]
	-- ===LogStep:3[6]
	tFireworks2020_RandomReward["SelfServer"][2]["ItemChanceSum"] = 10000
	tFireworks2020_RandomReward["SelfServer"][2]["LogId"] = 12001906
	tFireworks2020_RandomReward["SelfServer"][2]["LogStep"] = "3[6]"
	-- 喂养道具（小）-- 【必给】
	tFireworks2020_RandomReward["SelfServer"][2][1] = {}
	tFireworks2020_RandomReward["SelfServer"][2][1]["RandomItemChanceType"] = 1
	tFireworks2020_RandomReward["SelfServer"][2][1]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][2][1]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][2][1]["RewardItem"][1]["Id"] = 3330460 --  0 【库里没有该物品】, 【表格】喂养道具（小）
	tFireworks2020_RandomReward["SelfServer"][2][1]["RewardItem"][1]["Attr"] = "0 1" --  0 【库里没有该物品】*1
	tFireworks2020_RandomReward["SelfServer"][2][1]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3 - 20%
	tFireworks2020_RandomReward["SelfServer"][2][2] = {}
	tFireworks2020_RandomReward["SelfServer"][2][2]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][2][2]["ItemChance"] = 2000
	tFireworks2020_RandomReward["SelfServer"][2][2]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][2][2]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][2][2]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tFireworks2020_RandomReward["SelfServer"][2][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tFireworks2020_RandomReward["SelfServer"][2][2]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 20%
	tFireworks2020_RandomReward["SelfServer"][2][3] = {}
	tFireworks2020_RandomReward["SelfServer"][2][3]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][2][3]["ItemChance"] = 2000
	tFireworks2020_RandomReward["SelfServer"][2][3]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][2][3]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][2][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tFireworks2020_RandomReward["SelfServer"][2][3]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tFireworks2020_RandomReward["SelfServer"][2][3]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 究极通神丹 - 20%
	tFireworks2020_RandomReward["SelfServer"][2][4] = {}
	tFireworks2020_RandomReward["SelfServer"][2][4]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][2][4]["ItemChance"] = 2000
	tFireworks2020_RandomReward["SelfServer"][2][4]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][2][4]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][2][4]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹
	tFireworks2020_RandomReward["SelfServer"][2][4]["RewardItem"][1]["Attr"] = "0 5 3" -- 究极通神丹（赠）*5
	tFireworks2020_RandomReward["SelfServer"][2][4]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tFireworks2020_RandomReward["SelfServer"][2][5] = {}
	tFireworks2020_RandomReward["SelfServer"][2][5]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][2][5]["ItemChance"] = 2000
	tFireworks2020_RandomReward["SelfServer"][2][5]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][2][5]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][2][5]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tFireworks2020_RandomReward["SelfServer"][2][5]["RewardItem"][1]["Attr"] = "0 5" -- 人参果*5
	tFireworks2020_RandomReward["SelfServer"][2][5]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 20%
	tFireworks2020_RandomReward["SelfServer"][2][6] = {}
	tFireworks2020_RandomReward["SelfServer"][2][6]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][2][6]["ItemChance"] = 2000
	tFireworks2020_RandomReward["SelfServer"][2][6]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][2][6]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][2][6]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tFireworks2020_RandomReward["SelfServer"][2][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tFireworks2020_RandomReward["SelfServer"][2][6]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][2][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===本国宝箱拾取奖励
	-- ===索引: tFireworks2020_RandomReward["SelfServer"][3]
	-- ===LogStep:3[5]
	tFireworks2020_RandomReward["SelfServer"][3] = {}
	tFireworks2020_RandomReward["SelfServer"][3]["ItemChanceSum"] = 10000
	tFireworks2020_RandomReward["SelfServer"][3]["LogId"] = 12001906
	tFireworks2020_RandomReward["SelfServer"][3]["LogStep"] = "3[5]"
	-- 喂养道具（小）-- 【必给】
	tFireworks2020_RandomReward["SelfServer"][3][1] = {}
	tFireworks2020_RandomReward["SelfServer"][3][1]["RandomItemChanceType"] = 1
	tFireworks2020_RandomReward["SelfServer"][3][1]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][1]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][3][1]["RewardItem"][1]["Id"] = 3330460 --  0 【库里没有该物品】, 【表格】喂养道具（小）
	tFireworks2020_RandomReward["SelfServer"][3][1]["RewardItem"][1]["Attr"] = "0 1" --  0 【库里没有该物品】*1
	tFireworks2020_RandomReward["SelfServer"][3][1]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1阶灵珠 - 0%
	tFireworks2020_RandomReward["SelfServer"][3][2] = {}
	tFireworks2020_RandomReward["SelfServer"][3][2]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][3][2]["ItemChance"] = 0
	tFireworks2020_RandomReward["SelfServer"][3][2]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][2]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][3][2]["RewardItem"][1]["Id"] = 4200001 -- 1阶灵珠[4200001][属性:72][叠加:99][金币:0], 【表格】1阶灵珠
	tFireworks2020_RandomReward["SelfServer"][3][2]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠*1
	tFireworks2020_RandomReward["SelfServer"][3][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tFireworks2020_RandomReward["SelfServer"][3][2]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][3][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54338, data0）】全服限量:（50）, 超限给编号（3）-
	tFireworks2020_RandomReward["SelfServer"][3][2]["GlobalId"] = 54338
	tFireworks2020_RandomReward["SelfServer"][3][2]["Pos"] = 0
	tFireworks2020_RandomReward["SelfServer"][3][2]["MaxData"] = 50
	tFireworks2020_RandomReward["SelfServer"][3][2]["FullIndex"] = 3
	-- 赤炼石+2 - 22%
	tFireworks2020_RandomReward["SelfServer"][3][3] = {}
	tFireworks2020_RandomReward["SelfServer"][3][3]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][3][3]["ItemChance"] = 2200
	tFireworks2020_RandomReward["SelfServer"][3][3]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][3]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][3][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tFireworks2020_RandomReward["SelfServer"][3][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tFireworks2020_RandomReward["SelfServer"][3][3]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 17%
	tFireworks2020_RandomReward["SelfServer"][3][4] = {}
	tFireworks2020_RandomReward["SelfServer"][3][4]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][3][4]["ItemChance"] = 1700
	tFireworks2020_RandomReward["SelfServer"][3][4]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][4]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][3][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tFireworks2020_RandomReward["SelfServer"][3][4]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹（赠）*5
	tFireworks2020_RandomReward["SelfServer"][3][4]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][3][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 究极通神丹 - 17%
	tFireworks2020_RandomReward["SelfServer"][3][5] = {}
	tFireworks2020_RandomReward["SelfServer"][3][5]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][3][5]["ItemChance"] = 1700
	tFireworks2020_RandomReward["SelfServer"][3][5]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][5]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][3][5]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹
	tFireworks2020_RandomReward["SelfServer"][3][5]["RewardItem"][1]["Attr"] = "0 2 3" -- 究极通神丹（赠）*2
	tFireworks2020_RandomReward["SelfServer"][3][5]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][3][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 17%
	tFireworks2020_RandomReward["SelfServer"][3][6] = {}
	tFireworks2020_RandomReward["SelfServer"][3][6]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][3][6]["ItemChance"] = 1700
	tFireworks2020_RandomReward["SelfServer"][3][6]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][6]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][3][6]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tFireworks2020_RandomReward["SelfServer"][3][6]["RewardItem"][1]["Attr"] = "0 2" -- 人参果*2
	tFireworks2020_RandomReward["SelfServer"][3][6]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][3][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 17%
	tFireworks2020_RandomReward["SelfServer"][3][7] = {}
	tFireworks2020_RandomReward["SelfServer"][3][7]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][3][7]["ItemChance"] = 1700
	tFireworks2020_RandomReward["SelfServer"][3][7]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][7]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][3][7]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tFireworks2020_RandomReward["SelfServer"][3][7]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的微光星陨石*5
	tFireworks2020_RandomReward["SelfServer"][3][7]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][3][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 3阶灵珠 - 0%
	tFireworks2020_RandomReward["SelfServer"][3][8] = {}
	tFireworks2020_RandomReward["SelfServer"][3][8]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][3][8]["ItemChance"] = 0
	tFireworks2020_RandomReward["SelfServer"][3][8]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][8]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][3][8]["RewardItem"][1]["Id"] = 4200003 -- 3阶灵珠[4200003][属性:72][叠加:99][金币:0], 【表格】3阶灵珠
	tFireworks2020_RandomReward["SelfServer"][3][8]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠*1
	tFireworks2020_RandomReward["SelfServer"][3][8]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tFireworks2020_RandomReward["SelfServer"][3][8]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][3][8]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54338, data2）】全服限量:（20）, 超限给编号（9）-
	tFireworks2020_RandomReward["SelfServer"][3][8]["GlobalId"] = 54338
	tFireworks2020_RandomReward["SelfServer"][3][8]["Pos"] = 2
	tFireworks2020_RandomReward["SelfServer"][3][8]["MaxData"] = 20
	tFireworks2020_RandomReward["SelfServer"][3][8]["FullIndex"] = 9
	-- 赤炼石+4 - 5.5%
	tFireworks2020_RandomReward["SelfServer"][3][9] = {}
	tFireworks2020_RandomReward["SelfServer"][3][9]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][3][9]["ItemChance"] = 550
	tFireworks2020_RandomReward["SelfServer"][3][9]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][9]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][3][9]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tFireworks2020_RandomReward["SelfServer"][3][9]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+4赤炼石（赠）*1
	tFireworks2020_RandomReward["SelfServer"][3][9]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][3][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 辉月果 - 3%
	tFireworks2020_RandomReward["SelfServer"][3][10] = {}
	tFireworks2020_RandomReward["SelfServer"][3][10]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][3][10]["ItemChance"] = 300
	tFireworks2020_RandomReward["SelfServer"][3][10]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][10]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][3][10]["RewardItem"][1]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:10000][金币:0], 【表格】辉月果
	tFireworks2020_RandomReward["SelfServer"][3][10]["RewardItem"][1]["Attr"] = "0 1" -- 辉月果*1
	tFireworks2020_RandomReward["SelfServer"][3][10]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][3][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 1.5%
	tFireworks2020_RandomReward["SelfServer"][3][11] = {}
	tFireworks2020_RandomReward["SelfServer"][3][11]["RandomItemChanceType"] = 2
	tFireworks2020_RandomReward["SelfServer"][3][11]["ItemChance"] = 150
	tFireworks2020_RandomReward["SelfServer"][3][11]["RewardItem"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][11]["RewardItem"][1] = {}
	tFireworks2020_RandomReward["SelfServer"][3][11]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tFireworks2020_RandomReward["SelfServer"][3][11]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tFireworks2020_RandomReward["SelfServer"][3][11]["RewardEffect"] = {}
	tFireworks2020_RandomReward["SelfServer"][3][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFireworks2020_RandomReward["SelfServer"][3][11]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
-- 判断是否本语种
function Fireworks2020_UserChkLanguage(nFireworks2020_Index)
	local nFireworks2020_UserLanguage = User_ChkLanguage()
	if nFireworks2020_UserLanguage == nFireworks2020_Index then
		return true
	end
	return false
end

-- 判断宝箱序号
function Fireworks2020_GetBoxIndex(nFireworks2020_NpcId)
	for i = 1, 4 do
		for j = 1, 20 do
			local nBoxNpcId = tFireworks2020_Data["LatterNpc"][i][j][1]
			if nBoxNpcId == nFireworks2020_NpcId then
				return j, 1
			end
		end
	end
	for k = 1, 20 do
		local nBoxNpcId = tFireworks2020_Data["BossMove"][1][k][1]
		if nBoxNpcId == nFireworks2020_NpcId then
			return k, 2
		end
		
	end
	return false
end


-- 寻路到烟花
function Fireworks2020_FindFireWork(nFireworks2020_Index)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["FireTimeOut"])
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tFireworks2020_Data["Level"], tFireworks2020_Data["Metempsychosis"]) then
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["NotLevel"])
		return
	end
	local nFireworks2020_ServerIndex = User_ChkLanguage()
	local nFireworks2020_FindNpc = tFireworks2020_Data["Fireworks"][nFireworks2020_ServerIndex]
	
	NpcPosition_PathFind(nFireworks2020_FindNpc)
end


-- 首次燃放烟花
function Fireworks2020_FirstLightFireworks(nFireworks2020_NpcId, nFireworks2020_Index)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["FireTimeOut"])
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tFireworks2020_Data["Level"], tFireworks2020_Data["Metempsychosis"]) then
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["NotLevel"])
		return
	end
	-- 判断是否是本语种
	if not Fireworks2020_UserChkLanguage(nFireworks2020_Index) then
		local nFireworks2020_ServerIndex = User_ChkLanguage()
		local nFireworks2020_FindNpc = tFireworks2020_Data["Fireworks"][nFireworks2020_ServerIndex]
		
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["FireWrong"], "NpcPosition_PathFind</N>" .. nFireworks2020_FindNpc)
		return
	end
	
	-- 判断是否首次燃放
	local nFireworks2020_Event = tFireworks2020_Stc["EventType"][7]
	local nFireworks2020_Data = tFireworks2020_Stc["DataType"][7]
	if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, ">=", 2) then
		return
	end
	
	-- 设置步骤掩码
	Aniversary2020Rank_Guide(2)
	
	-- 刷新NPC
	if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, "==", 2) then
		-- 播放光效
		local nFireworks2020_ServerIndex = User_ChkLanguage()
		Fireworks2020_AddMapEffect(nFireworks2020_ServerIndex)
		-- OnTimer_SetSysTimer(1, "Fireworks2020_AddMapEffect</N>" .. nFireworks2020_ServerIndex)
		-- OnTimer_SetSysTimer(2, "Fireworks2020_AddMapEffect</N>" .. nFireworks2020_ServerIndex)
		-- OnTimer_SetSysTimer(3, "Fireworks2020_AddMapEffect</N>" .. nFireworks2020_ServerIndex)
		User_SetTimer(1, "Fireworks2020_AddMapEffect</N>" .. nFireworks2020_ServerIndex, 0)
		User_SetTimer(2, "Fireworks2020_AddMapEffect</N>" .. nFireworks2020_ServerIndex, 0)
		User_SetTimer(3, "Fireworks2020_AddMapEffect</N>" .. nFireworks2020_ServerIndex, 0)
		
		-- 刷新NPC  改成只刷一个
		-- Fireworks2020_LightSucessRefreshNPC(nFireworks2020_ServerIndex)
		local nFireworks2020_MoveMapId = tFireworks2020_Data["LatterNpc"]["City"]
		local nFireworks2020_MovePosX = tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][1][2]
		local nFireworks2020_MovePosY = tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][1][3]
		-- 判断激情服
		if SpecialServer_ChkNoGiftServer() then
			nFireworks2020_MoveMapId = tFireworks2020_Data["LatterNpc"]["NoGiftCity"]
			nFireworks2020_MovePosX = tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][1][4]
			nFireworks2020_MovePosY = tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][1][5]
		end
		-- 移动npc
		local nFireworks2020_MoveNpcId = tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][1][1]
		local nFireworks2020_Num = 1
		for i = 1, 20 do
			local nFireworks2020_ChkNpcId = tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][i][1]
			local nFireworks2020_NpcMap = NpcPosition_Get(nFireworks2020_ChkNpcId)
			if nFireworks2020_NpcMap == tFireworks2020_Data["LatterNpc"]["Back"] then
				nFireworks2020_MoveNpcId = nFireworks2020_ChkNpcId
				nFireworks2020_Num = i
				break
			end
		end
		
		if Npc_MoveNpcPos(nFireworks2020_MoveNpcId, nFireworks2020_MoveMapId, nFireworks2020_MovePosX, nFireworks2020_MovePosY) then
			Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["FireSucc"], "NpcPosition_PathFind</N>" .. nFireworks2020_MoveNpcId, nil)
			-- 全服公告
			local sFireworks2020_RandomNum = math.random(1, 4)
			local sFireworks2020_Broadcast = string.format(tAnniversary2020Fireworks_Text["Broadcast"]["FireSucc"][sFireworks2020_RandomNum], Get_UserName())
			Sys_SystemBroadcast(sFireworks2020_Broadcast)
			Sys_TalkBroadcast(sFireworks2020_Broadcast)
			-- 设置移动NPC的时间戳
			local nFireworks2020_Time = os.time()
			tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][nFireworks2020_Num][6] = nFireworks2020_Time
		end
		-- 概率燃放其他语种烟花
		-- OnTimer_SetSysTimer(tFireworks2020_Data["LatterTime"], "Fireworks2020_LightOtherFireworks</N>" .. nFireworks2020_ServerIndex)
		
	end
	
end

-- 非首次燃放烟花
function Fireworks2020_LightFireworks(nFireworks2020_NpcId, nFireworks2020_Index)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["FireTimeOut"])
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tFireworks2020_Data["Level"], tFireworks2020_Data["Metempsychosis"]) then
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["NotLevel"])
		return
	end
	-- 判断是否是本语种
	if not Fireworks2020_UserChkLanguage(nFireworks2020_Index) then
		local nFireworks2020_ServerIndex = User_ChkLanguage()
		local nFireworks2020_FindNpc = tFireworks2020_Data["Fireworks"][nFireworks2020_ServerIndex]
		
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["FireWrong"], "NpcPosition_PathFind</N>" .. nFireworks2020_FindNpc)
		return
	end
	
	-- 判断物品数量
	local nFireworks2020_NeedItem = tFireworks2020_Data["FireItemId"]
	if not Item_ChkMulItem(nFireworks2020_NeedItem, nFireworks2020_NeedItem, tFireworks2020_Data["NeedNum"]) then
		LinkNpcGossipFunc_New(nFireworks2020_NpcId, "2-1")
		return
	end
	
	-- 扣除物品刷新NPC
	if Item_DelMulItem(nFireworks2020_NeedItem, nFireworks2020_NeedItem, tFireworks2020_Data["NeedNum"]) then
		-- 播放光效
		local nFireworks2020_ServerIndex = User_ChkLanguage()
		Fireworks2020_AddMapEffect(nFireworks2020_ServerIndex)
		-- OnTimer_SetSysTimer(1, "Fireworks2020_AddMapEffect</N>" .. nFireworks2020_ServerIndex)
		-- OnTimer_SetSysTimer(2, "Fireworks2020_AddMapEffect</N>" .. nFireworks2020_ServerIndex)
		-- OnTimer_SetSysTimer(3, "Fireworks2020_AddMapEffect</N>" .. nFireworks2020_ServerIndex)
		User_SetTimer(1, "Fireworks2020_AddMapEffect</N>" .. nFireworks2020_ServerIndex, 0)
		User_SetTimer(2, "Fireworks2020_AddMapEffect</N>" .. nFireworks2020_ServerIndex, 0)
		User_SetTimer(3, "Fireworks2020_AddMapEffect</N>" .. nFireworks2020_ServerIndex, 0)
		
		
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["FireSucc"])
		-- 刷新NPC
		Fireworks2020_LightSucessRefreshNPC(nFireworks2020_ServerIndex)
		
		-- 概率燃放其他语种烟花
		OnTimer_SetSysTimer(tFireworks2020_Data["LatterTime"], "Fireworks2020_LightOtherFireworks</N>" .. nFireworks2020_ServerIndex)
		
		-- 全服公告
		local sFireworks2020_RandomNum = math.random(1, 4)
		local sFireworks2020_Broadcast = string.format(tAnniversary2020Fireworks_Text["Broadcast"]["FireSucc"][sFireworks2020_RandomNum], Get_UserName())
		Sys_SystemBroadcast(sFireworks2020_Broadcast)
		Sys_TalkBroadcast(sFireworks2020_Broadcast)
	end
	
end


-- 延迟60秒概率燃放其他语种烟花
function Fireworks2020_LightOtherFireworks(nFireworks2020_ServerIndex)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		return
	end
	-- 概率燃放
	local nFireworks2020_RandomSum = tFireworks2020_Data["OtherChance"]["Sum"]
	for i = 1, 4 do
		-- local fFireworks2020_ChkFire = false
		-- 非语种随机
		
		if nFireworks2020_ServerIndex ~= i then
			local nFireworks2020_RandomNum = math.random(1, nFireworks2020_RandomSum)
			if nFireworks2020_RandomNum <= tFireworks2020_Data["OtherChance"][i] then
				-- 播放光效
				Fireworks2020_AddMapEffect(i)
				-- OnTimer_SetSysTimer(1, "Fireworks2020_AddMapEffect</N>" .. i)
				-- OnTimer_SetSysTimer(2, "Fireworks2020_AddMapEffect</N>" .. i)
				-- OnTimer_SetSysTimer(3, "Fireworks2020_AddMapEffect</N>" .. i)
				
				-- 刷新NPC
				Fireworks2020_LightSucessRefreshNPC(i)
				
				-- 全服公告
				local sFireworks2020_Broadcast = string.format(tAnniversary2020Fireworks_Text["Broadcast"]["OtherServerFire"], tAnniversary2020Fireworks_Text["Broadcast"]["Server"][i])
				Sys_SystemBroadcast(sFireworks2020_Broadcast)
				Sys_TalkBroadcast(sFireworks2020_Broadcast)
			end
			
		end
		
	end
end


-- 播放光效
function Fireworks2020_AddMapEffect(nFireworks2020_ServerIndex, nFireworks2020_UserId)
	local nFireworks2020_NpcId = tFireworks2020_Data["Fireworks"][nFireworks2020_ServerIndex]
	-- for i = 1, 5 do
		-- local nFireworks2020_MapId = NpcPosition_Get(nFireworks2020_NpcId)
		-- local nFireworks2020_PosX = Get_NpcPositionX(nFireworks2020_NpcId) + tFireworks2020_Data["Fireworks"]["Pos"][i][1]
		-- local nFireworks2020_PosY = Get_NpcPositionY(nFireworks2020_NpcId) + tFireworks2020_Data["Fireworks"]["Pos"][i][2]
		-- local sFireworks2020_EffectName = tFireworks2020_Data["Fireworks"]["EffectName"]
		
		-- -- for j = 1, 5 do
		-- Map_Effect(nFireworks2020_MapId,nFireworks2020_PosX,nFireworks2020_PosY,sFireworks2020_EffectName)
		-- -- end
	-- end
	local nFireworks2020_MapId = NpcPosition_Get(nFireworks2020_NpcId)
	local nFireworks2020_PosX = Get_NpcPositionX(nFireworks2020_NpcId)
	local nFireworks2020_PosY = Get_NpcPositionY(nFireworks2020_NpcId)
	local sFireworks2020_EffectName = tFireworks2020_Data["Fireworks"]["EffectName"]
	Map_Effect(nFireworks2020_MapId,nFireworks2020_PosX,nFireworks2020_PosY,sFireworks2020_EffectName)
	
end


-- 燃放成功刷新宝箱
function Fireworks2020_LightSucessRefreshNPC(nFireworks2020_ServerIndex)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		return
	end
	-- 移动宝箱
	-- local nUserLanguage = User_ChkLanguage()
	local nFireworks2020_NowNum = 0
	local nFireworks2020_MoveNum = tFireworks2020_Data["LatterNpc"]["MoveNum"]
	for i = 1, 20 do
		local nFireworks2020_NpcId = tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][i][1]
		local nFireworks2020_NpcMap = NpcPosition_Get(nFireworks2020_NpcId)
		-- 判断NPC位置
		if nFireworks2020_NpcMap == tFireworks2020_Data["LatterNpc"]["Back"] then
			local nFireworks2020_MoveMapId = tFireworks2020_Data["LatterNpc"]["City"]
			local nFireworks2020_MovePosX = tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][i][2]
			local nFireworks2020_MovePosY = tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][i][3]
			-- 判断激情服
			if SpecialServer_ChkNoGiftServer() then
				nFireworks2020_MoveMapId = tFireworks2020_Data["LatterNpc"]["NoGiftCity"]
				nFireworks2020_MovePosX = tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][i][4]
				nFireworks2020_MovePosY = tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][i][5]
			end
			-- 移动npc
			if Npc_MoveNpcPos(nFireworks2020_NpcId, nFireworks2020_MoveMapId, nFireworks2020_MovePosX, nFireworks2020_MovePosY) then
				nFireworks2020_NowNum = nFireworks2020_NowNum + 1
				local nFireworks2020_Time = os.time()
				tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][i][6] = nFireworks2020_Time
			end
			
		end
		-- 判断是否移动了10个
		if nFireworks2020_NowNum >= nFireworks2020_MoveNum then
			return
		end
	end
	
end

-- 检测宝箱是否超过两分钟，超过两分钟的箱子移走
function Fireworks2020_ChkTimeMoveBox()
	-- 判断时间
	-- if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		-- return
	-- end
	for i = 1, 20 do
		local nFireworks2020_NpcId = tFireworks2020_Data["BossMove"][1][i][1]
		local nFireworks2020_MoveMapId = tFireworks2020_Data["LatterNpc"]["Back"]
		local nFireworks2020_Time = os.time()
		local nFireworks2020_NpcTime = tFireworks2020_Data["BossMove"][1][i][4]
		-- NPC在外面
		if nFireworks2020_NpcTime > 0 then
			-- 超过两分钟移回集中营
			if (nFireworks2020_Time - nFireworks2020_NpcTime) >= 120 then
				if Npc_MoveNpcPos(nFireworks2020_NpcId, nFireworks2020_MoveMapId, 100, 100) then
					tFireworks2020_Data["BossMove"][1][i][4] = 0
				end
			end
		end
	end
	
	for i = 1, 4 do
		for j = 1, 20 do
			local nFireworks2020_NpcId = tFireworks2020_Data["LatterNpc"][i][j][1]
			local nFireworks2020_MoveMapId = tFireworks2020_Data["LatterNpc"]["Back"]
			local nFireworks2020_Time = os.time()
			local nFireworks2020_NpcTime = tFireworks2020_Data["LatterNpc"][i][j][6]
			-- NPC在外面
			if nFireworks2020_NpcTime > 0 then
				-- 超过两分钟移回集中营
				if (nFireworks2020_Time - nFireworks2020_NpcTime) >= 120 then
					if Npc_MoveNpcPos(nFireworks2020_NpcId, nFireworks2020_MoveMapId, 100, 100) then
						tFireworks2020_Data["LatterNpc"][i][j][6] = 0
					end
				end
			end
			
		end
	end
	
end



-- 开放调用移动宝箱
function Fireworks2020_LightMoveNPC(nFireworks2020_Index)
	-- 判断时间
	local nFireworks2020_MoveMapId = tFireworks2020_Data["LatterNpc"]["City"]
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then
		return
	end
	-- 刷新NPC
	for i = 1, 20 do
		local nFireworks2020_NpcId = tFireworks2020_Data["BossMove"][nFireworks2020_Index][i][1]
		local nFireworks2020_MoveMapId = tFireworks2020_Data["BossMove"]["MapId"]
		local nFireworks2020_MovePosX = tFireworks2020_Data["BossMove"][nFireworks2020_Index][i][2]
		local nFireworks2020_MovePosY = tFireworks2020_Data["BossMove"][nFireworks2020_Index][i][3]
		if Npc_MoveNpcPos(nFireworks2020_NpcId, nFireworks2020_MoveMapId, nFireworks2020_MovePosX, nFireworks2020_MovePosY) then
			-- 设置移动NPC的时间戳
			local nFireworks2020_Time = os.time()
			tFireworks2020_Data["BossMove"][1][i][4] = nFireworks2020_Time
			
		end
	end
end

-- 过期后移走宝箱
function Fireworks2020_OutTimeMoveNpc()
	-- 判断时间
	-- if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		-- return
	-- end
	-- 不在活动时间内，移走NPC
	for i = 1, 4 do
		for j = 1, 20 do
			local nFireworks2020_NpcId = tFireworks2020_Data["LatterNpc"][i][j][1]
			local nFireworks2020_MoveMapId = tFireworks2020_Data["LatterNpc"]["Back"]
			if Npc_MoveNpcPos(nFireworks2020_NpcId, nFireworks2020_MoveMapId, 100, 100) then
				local nFireworks2020_Time = os.time()
				tFireworks2020_Data["LatterNpc"][i][j][6] = 0
			end
		end
	end
	for k = 1, 20 do
		local nFireworks2020_NpcId = tFireworks2020_Data["BossMove"][1][k][1]
		local nFireworks2020_MoveMapId = tFireworks2020_Data["LatterNpc"]["Back"]
		if Npc_MoveNpcPos(nFireworks2020_NpcId, nFireworks2020_MoveMapId, 100, 100) then
			-- 设置移动NPC的时间戳
			tFireworks2020_Data["BossMove"][1][4] = 0
		end
	end
	
end

-- 点击宝箱读条
function Fireworks2020_ClickBoxExplore(nFireworks2020_ServerIndex)
	local nFireworks2020_NpcId = Get_NpcId()
	local nFireworks2020_MoveMapId = tFireworks2020_Data["LatterNpc"]["Back"]
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then
		-- Npc_MoveNpcPos(nFireworks2020_NpcId, nFireworks2020_MoveMapId, 100, 100)
		Fireworks2020_OutTimeMoveNpc()
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["FireTimeOut"])
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tFireworks2020_Data["Level"], tFireworks2020_Data["Metempsychosis"]) then
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["NotLevel"])
		return
	end
	-- 判断是否完成引导
	local nFireworks2020_ChkEvent = tFireworks2020_Stc["EventType"][7]
	local nFireworks2020_ChkData = tFireworks2020_Stc["DataType"][7]
	if Task_ChkStcValue(nFireworks2020_ChkEvent, nFireworks2020_ChkData, "<", 1) then
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["FindNpc"], "NpcPosition_PathFind</N>26069", nil)
		return
	end
	
	-- 判断NPC位置
	local nNpcMapId = NpcPosition_Get(nFireworks2020_NpcId)
	if nNpcMapId == nFireworks2020_MoveMapId then
		return
	end
	
	-- 判断领取次数
	local nFireworks2020_Event = tFireworks2020_Stc["EventType"][5]
	local nFireworks2020_Data = tFireworks2020_Stc["DataType"][5]
	local nFireworks2020_MaxNum = tFireworks2020_Data["LatterNpc"]["SelfServer"]
	if nFireworks2020_ServerIndex ~= User_ChkLanguage() then
		nFireworks2020_Event = tFireworks2020_Stc["EventType"][8]
		nFireworks2020_Data = tFireworks2020_Stc["DataType"][8]
		nFireworks2020_MaxNum = tFireworks2020_Data["LatterNpc"]["OtherServer"]
	end
	if Task_StcInterval(nFireworks2020_Event, nFireworks2020_Data, 1, 4) then
		Task_SetStatistic(nFireworks2020_Event, nFireworks2020_Data, 0, 1)
		Task_SetStcTimestamp(nFireworks2020_Event, nFireworks2020_Data, 0)
	end
	if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, ">=", nFireworks2020_MaxNum) then
		local sFireworks2020_OpenFull = tAnniversary2020Fireworks_Text["SysMsg"]["OpenFull1"]
		if nFireworks2020_ServerIndex ~= User_ChkLanguage() then
			sFireworks2020_OpenFull = tAnniversary2020Fireworks_Text["SysMsg"]["OpenFull2"]
		end
		Sys_MsgBox(sFireworks2020_OpenFull)
		return
	end
	
	-- 判断背包空间
	local nFireworks2020_Index = 1
	if nFireworks2020_ServerIndex ~= User_ChkLanguage() then
		nFireworks2020_Index = 2
	end
	local fFireworks2020_Chk, nFireworks2020_Space = RewardTemplate_ChkRandomSpace(tFireworks2020_RandomReward["SelfServer"], nFireworks2020_Index)
	if not fFireworks2020_Chk then
		User_TalkChannel2005(string.format(tAnniversary2020Fireworks_Text["SysMsg"]["FullSpace"], nFireworks2020_Space))
		return
	end
	
	--读条
	local nFireworks2020_Secs = tFireworks2020_Data["LatterNpc"]["ExploreTime"]
	local sFireworks2020_Content = tAnniversary2020Fireworks_Text["SysMsg"]["Opening"]
	local sFireworks2020_Func = "Fireworks2020_ClickBoxAndReward</N>" .. nFireworks2020_ServerIndex .. "</N>" .. nFireworks2020_NpcId
	
	User_SetExplore(nFireworks2020_Secs, sFireworks2020_Content, 220, sFireworks2020_Func, nil)
end

-- 点击宝箱获得奖励
function Fireworks2020_ClickBoxAndReward(nFireworks2020_ServerIndex, nFireworks2020_NpcId, nFireworks2020_UserId)
	-- 判断时间
	local nFireworks2020_MoveMapId = tFireworks2020_Data["LatterNpc"]["Back"]
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then
		if Npc_MoveNpcPos(nFireworks2020_NpcId, nFireworks2020_MoveMapId, 100, 100) then
			local nFireworks2020_Time = os.time()
			local nFireworks2020_Index, nFireworks2020_Chk = Fireworks2020_GetBoxIndex(nFireworks2020_NpcId)
			if nFireworks2020_Chk == 1 then
				tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][nFireworks2020_Index][6] = 0
			else
				tFireworks2020_Data["BossMove"][1][nFireworks2020_Index][4] = 0
			end
			Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["FireTimeOut"], nil, nil, nFireworks2020_UserId)
			return
		end
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tFireworks2020_Data["Level"], tFireworks2020_Data["Metempsychosis"], nFireworks2020_UserId) then
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["NotLevel"], nil, nil, nFireworks2020_UserId)
		return
	end
	-- 判断是否完成引导
	local nFireworks2020_ChkEvent = tFireworks2020_Stc["EventType"][7]
	local nFireworks2020_ChkData = tFireworks2020_Stc["DataType"][7]
	if Task_ChkStcValue(nFireworks2020_ChkEvent, nFireworks2020_ChkData, "<", 1, nFireworks2020_UserId) then
		-- 设置步骤掩码
		Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["FindNpc"], "NpcPosition_PathFind</N>26069", nil, nFireworks2020_UserId)
		return
	end
	
	-- 判断NPC位置
	local nNpcMapId = NpcPosition_Get(nFireworks2020_NpcId)
	if nNpcMapId == nFireworks2020_MoveMapId then
		return
	end
	-- 判断领取次数
	local nFireworks2020_Event = tFireworks2020_Stc["EventType"][5]
	local nFireworks2020_Data = tFireworks2020_Stc["DataType"][5]
	local nFireworks2020_MaxNum = tFireworks2020_Data["LatterNpc"]["SelfServer"]
	if nFireworks2020_ServerIndex ~= User_ChkLanguage() then
		nFireworks2020_Event = tFireworks2020_Stc["EventType"][8]
		nFireworks2020_Data = tFireworks2020_Stc["DataType"][8]
		nFireworks2020_MaxNum = tFireworks2020_Data["LatterNpc"]["OtherServer"]
	end
	if Task_StcInterval(nFireworks2020_Event, nFireworks2020_Data, 1, 4, nFireworks2020_UserId) then
		Task_SetStatistic(nFireworks2020_Event, nFireworks2020_Data, 0, 1, nFireworks2020_UserId)
		Task_SetStcTimestamp(nFireworks2020_Event, nFireworks2020_Data, 0, nFireworks2020_UserId)
	end
	if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, ">=", nFireworks2020_MaxNum, nFireworks2020_UserId) then
		local sFireworks2020_OpenFull = tAnniversary2020Fireworks_Text["SysMsg"]["OpenFull1"]
		if nFireworks2020_ServerIndex ~= User_ChkLanguage() then
			sFireworks2020_OpenFull = tAnniversary2020Fireworks_Text["SysMsg"]["OpenFull2"]
		end
		Sys_MsgBox(sFireworks2020_OpenFull, nil, nil, nFireworks2020_UserId)
		return
	end
	
	-- 判断背包空间
	local nFireworks2020_Index = 1
	if nFireworks2020_ServerIndex ~= User_ChkLanguage() then
		nFireworks2020_Index = 2
	end
	local fFireworks2020_Chk, nFireworks2020_Space = RewardTemplate_ChkRandomSpace(tFireworks2020_RandomReward["SelfServer"], nFireworks2020_Index, nFireworks2020_UserId)
	if not fFireworks2020_Chk then
		User_TalkChannel2005(string.format(tAnniversary2020Fireworks_Text["SysMsg"]["FullSpace"], nFireworks2020_Space), nFireworks2020_UserId)
		return
	end
	-- 增加掩码
	if Task_AddStatistic(nFireworks2020_Event, nFireworks2020_Data, 1, 1, nFireworks2020_UserId) then
		Task_SetStcTimestamp(nFireworks2020_Event, nFireworks2020_Data, 0, nFireworks2020_UserId)
		-- 判断是否完成引导
		if Task_ChkStcValue(nFireworks2020_ChkEvent, nFireworks2020_ChkData, "<", 2, nFireworks2020_UserId) then
			-- 设置步骤掩码
			Aniversary2020Rank_Guide(2, nFireworks2020_UserId)
		end
		
		local nFireworks2020_RewardNum = Get_UserStatisticValue(nFireworks2020_Event, nFireworks2020_Data, nFireworks2020_UserId)
		-- 移走NPC
		if Npc_MoveNpcPos(nFireworks2020_NpcId, nFireworks2020_MoveMapId, 100, 100) then
			-- 获得奖励
			if nFireworks2020_Index == 1 then
				-- 二转120级以下走另一套概率
				if not User_JudgeLevelAndMetempsychosis(tFireworks2020_Data["LevelReward"], tFireworks2020_Data["MetempsychosisReward"], nFireworks2020_UserId) then
					nFireworks2020_Index = 3
				end
			end
			local tFireworks2020_NewReward, sFireworks2020_RewardStr = RewardTemplate_RandomReward(tFireworks2020_RandomReward["SelfServer"], nFireworks2020_Index, nFireworks2020_UserId)
			if tFireworks2020_NewReward then
				local nFireworks2020_ChkEvent = tFireworks2020_Stc["EventType"][6]
				local nFireworks2020_ChkData = tFireworks2020_Stc["DataType"][6]
				-- 出提示
				if Task_ChkStcValue(nFireworks2020_ChkEvent, nFireworks2020_ChkData, ">", 0, nFireworks2020_UserId) then
					if nFireworks2020_ServerIndex ~= User_ChkLanguage() then
						if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, "<", nFireworks2020_MaxNum, nFireworks2020_UserId) then
							Sys_MsgBox(string.format(tAnniversary2020Fireworks_Text["SysMsg"]["GetReward3"], sFireworks2020_RewardStr, nFireworks2020_MaxNum - nFireworks2020_RewardNum), nil, nil, nFireworks2020_UserId)
						else
							Sys_MsgBox(string.format(tAnniversary2020Fireworks_Text["SysMsg"]["GetReward4"], sFireworks2020_RewardStr), nil, nil, nFireworks2020_UserId)
						end
					else
						if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, "<", nFireworks2020_MaxNum, nFireworks2020_UserId) then
							Sys_MsgBox(string.format(tAnniversary2020Fireworks_Text["SysMsg"]["GetReward2"], sFireworks2020_RewardStr, nFireworks2020_MaxNum - nFireworks2020_RewardNum, tAnniversary2020Fireworks_Text["Broadcast"]["Server"][nFireworks2020_ServerIndex]), nil, nil, nFireworks2020_UserId)
						else
							Sys_MsgBox(string.format(tAnniversary2020Fireworks_Text["SysMsg"]["GetReward4"], sFireworks2020_RewardStr), nil, nil, nFireworks2020_UserId)
						end
						
					end
					
				else
					Task_SetStatistic(nFireworks2020_ChkEvent, nFireworks2020_ChkData, 1, 1, nFireworks2020_UserId)
					Task_SetStcTimestamp(nFireworks2020_ChkEvent, nFireworks2020_ChkData, 0, nFireworks2020_UserId)
					Sys_MsgBox(tAnniversary2020Fireworks_Text["SysMsg"]["GetReward"], "NpcPosition_PathFind</N>26069", nil, nFireworks2020_UserId)
				end
				-- 增加光效 flag
				local nFireworks2020_RandomNum = math.random(1, 2)
				local sFireworks2020_EffectName = tFireworks2020_Data["Effect"][nFireworks2020_RandomNum]
				User_EffectAdd("self", sFireworks2020_EffectName, nFireworks2020_UserId) 
			end
			-- 设置移动NPC的时间戳
			local nFireworks2020_Time = os.time()
			local nFireworks2020_ChkIndex, nFireworks2020_Chk = Fireworks2020_GetBoxIndex(nFireworks2020_NpcId)
			if nFireworks2020_Chk == 1 then
				tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][nFireworks2020_ChkIndex][6] = 0
			else
				tFireworks2020_Data["BossMove"][1][nFireworks2020_ChkIndex][4] = 0
			end
			tFireworks2020_Data["LatterNpc"][nFireworks2020_ServerIndex][nFireworks2020_ChkIndex][6] = 0
			
		end
	end
end


-- 签到礼包使用
function Fireworks2020_SignPack()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tFireworks2020_Data["Level"], tFireworks2020_Data["Metempsychosis"]) then
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		return
	end
	
	local nFireworks2020_Event = tFireworks2020_Stc["EventType"][1]
	local nFireworks2020_Data = tFireworks2020_Stc["DataType"][1]
	-- 掩码隔天清零
	if Task_StcInterval(nFireworks2020_Event, nFireworks2020_Data, 1, 4) then
		Task_SetStatistic(nFireworks2020_Event, nFireworks2020_Data, 0, 1)
		Task_SetStcTimestamp(nFireworks2020_Event, nFireworks2020_Data, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, ">", 0) then
		return
	end
	if Task_SetStatistic(nFireworks2020_Event, nFireworks2020_Data, 1, 1) then
		Task_SetStcTimestamp(nFireworks2020_Event, nFireworks2020_Data, 0)
		RewardTemplate_UseItemAndMsg(tFireworks2020_Reward[3100011])
	end
end



-- 功勋礼包使用
function Fireworks2020_FeatsPack()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tFireworks2020_Data["Level"], tFireworks2020_Data["Metempsychosis"]) then
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		return
	end
	
	local nFireworks2020_Event = tFireworks2020_Stc["EventType"][3]
	local nFireworks2020_Data = tFireworks2020_Stc["DataType"][3]
	-- 掩码隔天清零
	if Task_StcInterval(nFireworks2020_Event, nFireworks2020_Data, 1, 4) then
		Task_SetStatistic(nFireworks2020_Event, nFireworks2020_Data, 0, 1)
		Task_SetStcTimestamp(nFireworks2020_Event, nFireworks2020_Data, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, ">", 0) then
		return
	end
	if Task_SetStatistic(nFireworks2020_Event, nFireworks2020_Data, 1, 1) then
		Task_SetStcTimestamp(nFireworks2020_Event, nFireworks2020_Data, 0)
		RewardTemplate_UseItemAndMsg(tFireworks2020_Reward[3007108])
	end
end



-- 怪物掉落
function Fireworks2020_KillMonster(nMonsterId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tFireworks2020_Data["Level"], tFireworks2020_Data["Metempsychosis"]) then
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		return
	end
	local nFireworks2020_Event = tFireworks2020_Stc["EventType"][4]
	local nFireworks2020_Data = tFireworks2020_Stc["DataType"][4]
	-- 判断隔天
	if Task_StcInterval(nFireworks2020_Event, nFireworks2020_Data, 1, 4) then
		Task_SetStatistic(nFireworks2020_Event, nFireworks2020_Data, 0, 1)
		Task_SetStcTimestamp(nFireworks2020_Event, nFireworks2020_Data, 0)
	end
	if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, ">", 10) then
		return
	elseif Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, "==", 10) then
		Task_AddStatistic(nFireworks2020_Event, nFireworks2020_Data, 1, 1)
		Task_SetStcTimestamp(nFireworks2020_Event, nFireworks2020_Data, 0)
		Sys_MsgBox(tFireworks2020_Text["SysMsg"]["KillMonsterFull"])
	else
		RewardTemplate_NewRandom(tFireworks2020_RandomReward["MonsterDrop"], 1)
	end
end



----------------------------------NPC部分---------------------------------------------
-- 龙蛋宝宝
tNpcFace[4353] = 13
tNpcGossip[26081]= tNpcGossip[26081] or DefaultNpc:new{}
tNpcGossip[26081]["OptionHidden"] = 1
tNpcGossip[26081]["DialogueText"] = tAnniversary2020Fireworks_Text[26081]
-- 未完成引导
tNpcGossip[26081]["Text1-1"] = {111, 112}
tNpcGossip[26081]["tOption1-1"] = {111}
tNpcGossip[26081]["ChkFunc1-1"]= function()
	-- 判断是否完成引导
	local nFireworks2020_Event = tFireworks2020_Stc["EventType"][7]
	local nFireworks2020_Data = tFireworks2020_Stc["DataType"][7]
	if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, "<", 1) then
		return true
	end
	return false
end
tNpcGossip[26081]["OptionFunc111"] = "NpcPosition_PathFind</N>26069"

-- 完成引导
tNpcGossip[26081]["Text1-2"] = {121, 122, 123, 124}
tNpcGossip[26081]["tOption1-2"] = {121}
tNpcGossip[26081]["OptionFunc121"] = "NpcPosition_PathFind</N>26081"
tNpcGossip[26081]["OptionChkFunc121"] = function ()
	local nFireworks2020_ServerIndex = User_ChkLanguage()
	local nFireworks2020_FindNpc = tFireworks2020_Data["Fireworks"][nFireworks2020_ServerIndex]
	tNpcGossip[26081]["OptionFunc121"] = "NpcPosition_PathFind</N>" .. nFireworks2020_FindNpc
	return true
end

-- 【中文】周年庆礼炮
tNpcFace[4354] = 2071
tNpcGossip[26082]= tNpcGossip[26082] or DefaultNpc:new{}
tNpcGossip[26082]["OptionHidden"] = 1
tNpcGossip[26082]["DialogueText"] = tAnniversary2020Fireworks_Text[26082]
-- 等级不足
tNpcGossip[26082]["Text1-1"] = {111}
tNpcGossip[26082]["tOption1-1"] = {111}
tNpcGossip[26082]["ChkFunc1-1"]= function()
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tFireworks2020_Data["Level"], tFireworks2020_Data["Metempsychosis"]) then
		return true
	end
	return false
end
-- 非本服烟花
tNpcGossip[26082]["Text1-2"] = {121, 122}
tNpcGossip[26082]["tOption1-2"] = {121}
tNpcGossip[26082]["ChkFunc1-2"]= function()
	-- 判断是否本服烟花
	local nFireworks2020_NpcId = Get_NpcId()
	local nFireworks2020_UserLanguage = User_ChkLanguage()
	if tFireworks2020_Data["Fireworks"][nFireworks2020_UserLanguage] == nFireworks2020_NpcId then
		return false
	end
	local nFireworks2020_LanguageIndex = 1
	for i = 1, 4 do
		if tFireworks2020_Data["Fireworks"][i] == nFireworks2020_NpcId then
			nFireworks2020_LanguageIndex = i
			break
		end
	end
	
	tNpcGossip[nFireworks2020_NpcId]["Text121"] = tAnniversary2020Fireworks_Text["Dialog"][26082][nFireworks2020_LanguageIndex]["Text121"]
	tNpcGossip[nFireworks2020_NpcId]["Text122"] = tAnniversary2020Fireworks_Text["Dialog"][26082][nFireworks2020_LanguageIndex]["Text122"]
	tNpcGossip[nFireworks2020_NpcId]["Option121"] = tAnniversary2020Fireworks_Text["Dialog"][26082][nFireworks2020_LanguageIndex]["Option121"]
	
	return true
end
-- 等级达到，未完成引导
tNpcGossip[26082]["Text1-3"] = {131}
tNpcGossip[26082]["tOption1-3"] = {131}
tNpcGossip[26082]["ChkFunc1-3"]= function()
	-- 判断是否完成引导
	local nFireworks2020_Event = tFireworks2020_Stc["EventType"][7]
	local nFireworks2020_Data = tFireworks2020_Stc["DataType"][7]
	if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, "<", 1) then
		return true
	end
	
	return false
end
tNpcGossip[26082]["OptionFunc131"] = "NpcPosition_PathFind</N>26069"

-- 等级达到，首次燃放
tNpcGossip[26082]["Text1-4"] = {141, 142, 143}
tNpcGossip[26082]["tOption1-4"] = {141}
tNpcGossip[26082]["ChkFunc1-4"]= function()
	-- 判断是否首次燃放
	local nFireworks2020_Event = tFireworks2020_Stc["EventType"][7]
	local nFireworks2020_Data = tFireworks2020_Stc["DataType"][7]
	if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, "<", 2) then
		return true
	end
	
	return false
end
tNpcGossip[26082]["OptionFunc141"] = "Fireworks2020_FirstLightFireworks</N>26082</N>1"

-- 等级达到，非首次燃放
tNpcGossip[26082]["Text1-5"] = {151, 152, 153, 154}
tNpcGossip[26082]["tOption1-5"] = {151}
tNpcGossip[26082]["ChkFunc1-5"]= function()
	-- 判断是否首次燃放
	local nFireworks2020_Event = tFireworks2020_Stc["EventType"][7]
	local nFireworks2020_Data = tFireworks2020_Stc["DataType"][7]
	if Task_ChkStcValue(nFireworks2020_Event, nFireworks2020_Data, ">=", 2) then
		return true
	end
	
	return false
end
tNpcGossip[26082]["OptionFunc151"] = "Fireworks2020_LightFireworks</N>26082</N>1"
-- 火炬数量不足
tNpcGossip[26082]["Text2-1"] = {211, 212}
tNpcGossip[26082]["tOption2-1"] = {211}
tNpcGossip[26082]["OptionFunc211"] = "NpcPosition_PathFind</N>26201"

-- 【英文】周年庆礼炮
tNpcFace[4355] = 2071
tNpcGossip[26083] = CommonFunc_Copy(tNpcGossip[26082])
tNpcGossip[26083]["OptionFunc141"] = "Fireworks2020_FirstLightFireworks</N>26083</N>2"
tNpcGossip[26083]["OptionFunc151"] = "Fireworks2020_LightFireworks</N>26083</N>2"
-- 【西语】周年庆礼炮
tNpcFace[4356] = 2071
tNpcGossip[26084] = CommonFunc_Copy(tNpcGossip[26082])
tNpcGossip[26084]["OptionFunc141"] = "Fireworks2020_FirstLightFireworks</N>26084</N>3"
tNpcGossip[26084]["OptionFunc151"] = "Fireworks2020_LightFireworks</N>26084</N>3"
-- 【阿语】周年庆礼炮
tNpcFace[4357] = 2071
tNpcGossip[26085] = CommonFunc_Copy(tNpcGossip[26082])
tNpcGossip[26085]["OptionFunc141"] = "Fireworks2020_FirstLightFireworks</N>26085</N>4"
tNpcGossip[26085]["OptionFunc151"] = "Fireworks2020_LightFireworks</N>26085</N>4"

---------------------------------物品部分---------------------------------------------
-- 福运火炬
tItem[3600245] = tItem[3600245] or {}
tItem[3600245]["Function"] = function(nFireworks2020_ItemId,sFireworks2020_ItemName)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		local nItemNum = Get_CountItemType(nFireworks2020_ItemId, 0)
		if Item_ChkAccItem(nFireworks2020_ItemId) and Item_DelAllItemByType(nFireworks2020_ItemId) then
			local sFireworks2020_Log = string.format(tFireworks2020_Data["Log"][1], nFireworks2020_ItemId, nItemNum)
			Sys_SaveActionFestivalLog(sFireworks2020_Log)
		end
		User_TalkChannel2005(tAnniversary2020Fireworks_Text["SysMsg"]["ItemOutTime"])
		return
	end
	local nFireworks2020_ServerIndex = User_ChkLanguage()
	local nFireworks2020_FindNpc = tFireworks2020_Data["Fireworks"][nFireworks2020_ServerIndex]
	NpcPosition_PathFind(nFireworks2020_FindNpc)
end

---------------------------------怪物部分---------------------------------------------
-- local tFireworks2020_KillMonster = {}
-- -- 古神灵境、神龙岛、boss之家、活动地图打怪奖励
-- tFireworks2020_KillMonster["ActivityTime"] = tActivityTime["Anniversary2020"]["FireworksTime"]
-- tFireworks2020_KillMonster["Function"] = Fireworks2020_KillMonster
-- tFireworks2020_KillMonster["MonsterId"] = {3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986,3992,4709,4710,4711,4712,4713,4720,4912,4935,5747,8415,8420,3967,3968,3969,4151,
-- 5274,5275,5276,5277,5278,5279,5280,5281,5282,5283,5284,5285,5286,5287,5288,5289,5290,5291,5292,5293,5294,5295,5296,5297,5298,5299,5300,5301,5302,5303,5304,5305,5306,5307,5308,5309,5310,5311,5312,5313,5314,5315,5316,5317,5318,5319,5320,5321,5322,5323,5324,5325,5326,5327,5328,5329,5330,5331,5332,5333,5334,5335,
-- 1295,1296,1297,1298}

-- table.insert(tMonsterDrop_AreaLoad,tFireworks2020_KillMonster)
-- table.insert(tMonsterDrop_AreaLoad_NoGift,tFireworks2020_KillMonster)

------------------ 动态存储表清零------------------
tGlobalData_Info[54338] = {}
tGlobalData_Info[54338]["Time"] = {}
tGlobalData_Info[54338]["Time"]["ActivityTime"] = tActivityTime["Anniversary2020"]["FireworksTime"]
tGlobalData_Info[54338]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[54338]["Rest"] = {}
tGlobalData_Info[54338]["Rest"]["GlobalId"] = {54338}
tGlobalData_Info[54338]["Rest"]["Pos"] = {0,1,2,3,4,5}

-------------------------------时间自检--------------------------------------------
-- 每分钟时间自检 检测到时间的宝箱移走
tSystem_Prompet_Func = tSystem_Prompet_Func or {}
table.insert(tSystem_Prompet_Func, Fireworks2020_ChkTimeMoveBox)


