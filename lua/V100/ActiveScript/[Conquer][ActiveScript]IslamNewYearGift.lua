------------------------------------------------------------------------------------
--Name：            180831[英文征服][活动脚本]伊斯兰新年礼物雨活动
--Creator:      王贤
--Created:     2018/08/31
------------------------------------------------------------------------------------
--任务需求：
-- 【英文征服】伊斯兰新年礼物雨活动
-- 需求：
-- 伊斯兰新年在9.11开始，伊斯兰玩家一般会在新年时候互赠礼物，德州大厅的玩家主要是伊斯兰玩家，因此系统进行祝福并且发放礼物。引导玩家在高峰期参与德州游戏，物品描述中请体现好运和祝福。
-- 更新时间：9.11-9.13
-- 如有问题，及时沟通。

-- ******************************************************************
-- *王维伦(市场运营中心海外事业部英文市场二组)在2018-08-29 13:44修改任务(任务号：9176047)时补充了如下需求：
-- ******************************************************************
-- 1、添加道具参考图片，建议使用绿色盒子作为道具，埃及当地比较喜欢绿色。
-- 2、修改附件中部分文字错误。
------------------------------------------------------------------------------------
-- stc(182, 57)   记录玩家当天使用了几次礼盒
------------------------------------------------------------------------------------
-- 前缀
-- IslamNewYearGift_

-- LogId： 12001150
----------------------------------表配置部分--------------------------------------------
local tIslamNewYearGift_Data = {}
-- 活动时间
tIslamNewYearGift_Data["ActivityTime"] = tActivityTime["IslamNewYearGift"]["ActiveTimes"]
-- 10月内功秘籍首卖活动售卖NPCID
tIslamNewYearGift_Data["NpcId"] = 23298
-- 掩码
tIslamNewYearGift_Data["Stc"] = {}
-- stc(182, 57)   记录玩家当天使用了几次礼盒
tIslamNewYearGift_Data["Stc"]["Event"] = {}
tIslamNewYearGift_Data["Stc"]["Data"] = {}
tIslamNewYearGift_Data["Stc"]["Event"][1] = 182
tIslamNewYearGift_Data["Stc"]["Data"][1] = 57
-- 删除log
tIslamNewYearGift_Data["OverTimeLog"] = "0,0,%d,%d,12001150,2,0,0"
-- 最大金币数
tIslamNewYearGift_Data["MaxMoney"] = 999999
-- 全服邀请ID
tIslamNewYearGift_Data["InviteId"] = 3  -- 18
--全服邀请任意8个点
tIslamNewYearGift_Data["Invite_Pos"] ={}
tIslamNewYearGift_Data["Invite_Pos"][1] = {}
tIslamNewYearGift_Data["Invite_Pos"][1]["X"] = 189
tIslamNewYearGift_Data["Invite_Pos"][1]["Y"] = 267

tIslamNewYearGift_Data["Invite_Pos"][2] = {}
tIslamNewYearGift_Data["Invite_Pos"][2]["X"] = 200
tIslamNewYearGift_Data["Invite_Pos"][2]["Y"] = 152

tIslamNewYearGift_Data["Invite_Pos"][3] = {}
tIslamNewYearGift_Data["Invite_Pos"][3]["X"] = 283
tIslamNewYearGift_Data["Invite_Pos"][3]["Y"] = 171

tIslamNewYearGift_Data["Invite_Pos"][4] = {}
tIslamNewYearGift_Data["Invite_Pos"][4]["X"] = 263
tIslamNewYearGift_Data["Invite_Pos"][4]["Y"] = 234

tIslamNewYearGift_Data["Invite_Pos"][5] = {}
tIslamNewYearGift_Data["Invite_Pos"][5]["X"] = 282
tIslamNewYearGift_Data["Invite_Pos"][5]["Y"] = 297

tIslamNewYearGift_Data["Invite_Pos"][6] = {}
tIslamNewYearGift_Data["Invite_Pos"][6]["X"] = 141
tIslamNewYearGift_Data["Invite_Pos"][6]["Y"] = 236

tIslamNewYearGift_Data["Invite_Pos"][7] = {}
tIslamNewYearGift_Data["Invite_Pos"][7]["X"] = 151
tIslamNewYearGift_Data["Invite_Pos"][7]["Y"] = 176

tIslamNewYearGift_Data["Invite_Pos"][8] = {}
tIslamNewYearGift_Data["Invite_Pos"][8]["X"] = 150
tIslamNewYearGift_Data["Invite_Pos"][8]["Y"] = 124
-- 掉落信息
tIslamNewYearGift_Data["MapDrop"] = {}
-- 掉落地图
tIslamNewYearGift_Data["MapDrop"]["MapId"] = 3053
-- 掉落半径
tIslamNewYearGift_Data["MapDrop"]["Range"] = 2
-- 掉落数量
tIslamNewYearGift_Data["MapDrop"]["DropNum"] = 1
-- 掉落时长
tIslamNewYearGift_Data["MapDrop"]["ExistTime"] = 300
-- 掉落物品
tIslamNewYearGift_Data["MapDrop"]["ItemId"] = 3310683
-- 掉落范围X
tIslamNewYearGift_Data["MapDrop"]["Pos"] = {}
-- 多米诺区域
-- 纵向
tIslamNewYearGift_Data["MapDrop"]["Pos"][1]  = {122, 124, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][2]  = {132, 134, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][3]  = {143, 146, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][4]  = {154, 157, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][5]  = {165, 168, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][6]  = {176, 179, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][7]  = {187, 193, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][8]  = {201, 204, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][9]  = {225, 227, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][10] = {237, 240, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][11] = {249, 252, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][12] = {261, 264, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][13] = {273, 276, 223, 326}
tIslamNewYearGift_Data["MapDrop"]["Pos"][14] = {285, 314, 223, 326}
-- 横向
tIslamNewYearGift_Data["MapDrop"]["Pos"][15] = {122, 314, 233, 238}
tIslamNewYearGift_Data["MapDrop"]["Pos"][16] = {122, 314, 246, 250}
tIslamNewYearGift_Data["MapDrop"]["Pos"][17] = {122, 314, 259, 263}
tIslamNewYearGift_Data["MapDrop"]["Pos"][18] = {122, 314, 272, 276}
tIslamNewYearGift_Data["MapDrop"]["Pos"][19] = {122, 314, 285, 326}
-- 赌桌区域
-- 纵向
tIslamNewYearGift_Data["MapDrop"]["Pos"][20] = {122, 137, 110, 224}
tIslamNewYearGift_Data["MapDrop"]["Pos"][21] = {149, 154, 110, 224}
tIslamNewYearGift_Data["MapDrop"]["Pos"][22] = {165, 170, 110, 224}
tIslamNewYearGift_Data["MapDrop"]["Pos"][23] = {181, 186, 110, 224}
tIslamNewYearGift_Data["MapDrop"]["Pos"][24] = {197, 206, 110, 224}
tIslamNewYearGift_Data["MapDrop"]["Pos"][25] = {217, 222, 110, 224}
tIslamNewYearGift_Data["MapDrop"]["Pos"][26] = {233, 238, 110, 224}
tIslamNewYearGift_Data["MapDrop"]["Pos"][27] = {249, 254, 110, 224}
tIslamNewYearGift_Data["MapDrop"]["Pos"][28] = {265, 270, 110, 224}
tIslamNewYearGift_Data["MapDrop"]["Pos"][29] = {281, 286, 110, 224}
tIslamNewYearGift_Data["MapDrop"]["Pos"][30] = {297, 300, 110, 224}
-- 横向
tIslamNewYearGift_Data["MapDrop"]["Pos"][31] = {122, 314, 113, 125}
tIslamNewYearGift_Data["MapDrop"]["Pos"][32] = {122, 314, 137, 145}
tIslamNewYearGift_Data["MapDrop"]["Pos"][33] = {122, 314, 153, 158}
tIslamNewYearGift_Data["MapDrop"]["Pos"][34] = {122, 314, 169, 174}
tIslamNewYearGift_Data["MapDrop"]["Pos"][35] = {122, 314, 185, 190}
tIslamNewYearGift_Data["MapDrop"]["Pos"][36] = {122, 314, 201, 206}
tIslamNewYearGift_Data["MapDrop"]["Pos"][37] = {122, 314, 217, 224}

-- 181017[英文征服][活动脚本]上交宝石NPC选项增加
-- 宝石ID
tIslamNewYearGift_Data["GemId"] = {}
tIslamNewYearGift_Data["GemId"][1]  = 700071
tIslamNewYearGift_Data["GemId"][2]  = 700061
tIslamNewYearGift_Data["GemId"][3]  = 700051
tIslamNewYearGift_Data["GemId"][4]  = 700001
tIslamNewYearGift_Data["GemId"][5]  = 700011
tIslamNewYearGift_Data["GemId"][6]  = 700021
tIslamNewYearGift_Data["GemId"][7]  = 700031
tIslamNewYearGift_Data["GemId"][8]  = 700041
tIslamNewYearGift_Data["GemId"][9]  = 700121
tIslamNewYearGift_Data["GemId"][10] = 700101
-- Npc
tIslamNewYearGift_Data["GemNpcId"] = 15995
-- 掩码
tIslamNewYearGift_Data["GenEvent"] = 117
tIslamNewYearGift_Data["GenData"] = 22

-- 位置
tIslamNewYearGift_Data["Pos"] = {}
-- 专区1：大额度老虎机  
tIslamNewYearGift_Data["Pos"][1] = {}
tIslamNewYearGift_Data["Pos"][1]["MapId"] = 1036
tIslamNewYearGift_Data["Pos"][1]["PosX"] = 252
tIslamNewYearGift_Data["Pos"][1]["PosY"] = 236
-- 专区2：锁妖盒
tIslamNewYearGift_Data["Pos"][2] = {}
tIslamNewYearGift_Data["Pos"][2]["MapId"] = 1036
tIslamNewYearGift_Data["Pos"][2]["PosX"] = 248
tIslamNewYearGift_Data["Pos"][2]["PosY"] = 236
-- 专区3：点石成金
tIslamNewYearGift_Data["Pos"][3] = {}
tIslamNewYearGift_Data["Pos"][3]["MapId"] = 1036
tIslamNewYearGift_Data["Pos"][3]["PosX"] = 233
tIslamNewYearGift_Data["Pos"][3]["PosY"] = 240
-- 专区4：通天塔
tIslamNewYearGift_Data["Pos"][4] = {}
tIslamNewYearGift_Data["Pos"][4]["MapId"] = 1036
tIslamNewYearGift_Data["Pos"][4]["PosX"] = 207
tIslamNewYearGift_Data["Pos"][4]["PosY"] = 204
-- 专区5：赌场大厅
tIslamNewYearGift_Data["Pos"][5] = {}
tIslamNewYearGift_Data["Pos"][5]["MapId"] = 10350
tIslamNewYearGift_Data["Pos"][5]["PosX"] = 96
tIslamNewYearGift_Data["Pos"][5]["PosY"] = 90


local tIslamNewYearGift_RandomReward = {}
-- 181017[英文征服][活动脚本]上交宝石NPC选项增加
tIslamNewYearGift_RandomReward["GemDel"] = {}
tIslamNewYearGift_RandomReward["GemDel"]["RewardItem"] = {}
tIslamNewYearGift_RandomReward["GemDel"]["DeleteItem"] = {}
tIslamNewYearGift_RandomReward["GemDel"]["LogId"] = 10002032
-- 新年礼盒
tIslamNewYearGift_RandomReward[3310683] = {}
tIslamNewYearGift_RandomReward[3310683]["ItemChanceSum"] = 10000
tIslamNewYearGift_RandomReward[3310683]["LogId"] = 12001150
-- 门票碎片*1   14.0%
tIslamNewYearGift_RandomReward[3310683][1] = {}
tIslamNewYearGift_RandomReward[3310683][1]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310683][1]["ItemChance"] = 1400
tIslamNewYearGift_RandomReward[3310683][1]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310683][1]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310683][1]["RewardItem"][1]["Id"] = 3307127
tIslamNewYearGift_RandomReward[3310683][1]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310683][1]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310683][1]["RewardEffect"]["Effect"] = "eidolon"
-- 门票碎片*5   4.0%
tIslamNewYearGift_RandomReward[3310683][2] = {}
tIslamNewYearGift_RandomReward[3310683][2]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310683][2]["ItemChance"] = 400
tIslamNewYearGift_RandomReward[3310683][2]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310683][2]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310683][2]["RewardItem"][1]["Id"] = 3307127
tIslamNewYearGift_RandomReward[3310683][2]["RewardItem"][1]["Attr"] = "0 5"
tIslamNewYearGift_RandomReward[3310683][2]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310683][2]["RewardEffect"]["Effect"] = "eidolon"
-- 门票碎片*10   2.0%
tIslamNewYearGift_RandomReward[3310683][3] = {}
tIslamNewYearGift_RandomReward[3310683][3]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310683][3]["ItemChance"] = 200
tIslamNewYearGift_RandomReward[3310683][3]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310683][3]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310683][3]["RewardItem"][1]["Id"] = 3307127
tIslamNewYearGift_RandomReward[3310683][3]["RewardItem"][1]["Attr"] = "0 10"
tIslamNewYearGift_RandomReward[3310683][2]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310683][2]["RewardEffect"]["Effect"] = "eidolon"
-- 金币7777      15.0%
tIslamNewYearGift_RandomReward[3310683][4] = {}
tIslamNewYearGift_RandomReward[3310683][4]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310683][4]["ItemChance"] = 1500
tIslamNewYearGift_RandomReward[3310683][4]["EmoneyLog"] = "1000	00046	-7777	-7777	1	"
tIslamNewYearGift_RandomReward[3310683][4]["RewardMoney"] = {}
tIslamNewYearGift_RandomReward[3310683][4]["RewardMoney"]["Value"] = 7777
tIslamNewYearGift_RandomReward[3310683][4]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310683][4]["RewardEffect"]["Effect"] = "eidolon"
-- 金币8888      14.0%
tIslamNewYearGift_RandomReward[3310683][5] = {}
tIslamNewYearGift_RandomReward[3310683][5]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310683][5]["ItemChance"] = 1400
tIslamNewYearGift_RandomReward[3310683][5]["EmoneyLog"] = "1000	00046	-8888	-8888	1	"
tIslamNewYearGift_RandomReward[3310683][5]["RewardMoney"] = {}
tIslamNewYearGift_RandomReward[3310683][5]["RewardMoney"]["Value"] = 8888
tIslamNewYearGift_RandomReward[3310683][5]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310683][5]["RewardEffect"]["Effect"] = "eidolon"
-- 金币9999      13.0%
tIslamNewYearGift_RandomReward[3310683][6] = {}
tIslamNewYearGift_RandomReward[3310683][6]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310683][6]["ItemChance"] = 1300
tIslamNewYearGift_RandomReward[3310683][6]["EmoneyLog"] = "1000	00046	-9999	-9999	1	"
tIslamNewYearGift_RandomReward[3310683][6]["RewardMoney"] = {}
tIslamNewYearGift_RandomReward[3310683][6]["RewardMoney"]["Value"] = 9999
tIslamNewYearGift_RandomReward[3310683][6]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310683][6]["RewardEffect"]["Effect"] = "eidolon"
-- 金币77777     5.0%
tIslamNewYearGift_RandomReward[3310683][7] = {}
tIslamNewYearGift_RandomReward[3310683][7]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310683][7]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310683][7]["EmoneyLog"] = "1000	00046	-77777	-77777	1	"
tIslamNewYearGift_RandomReward[3310683][7]["RewardMoney"] = {}
tIslamNewYearGift_RandomReward[3310683][7]["RewardMoney"]["Value"] = 77777
tIslamNewYearGift_RandomReward[3310683][7]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310683][7]["RewardEffect"]["Effect"] = "eidolon"
-- 金币88888     4.0%
tIslamNewYearGift_RandomReward[3310683][8] = {}
tIslamNewYearGift_RandomReward[3310683][8]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310683][8]["ItemChance"] = 400
tIslamNewYearGift_RandomReward[3310683][8]["EmoneyLog"] = "1000	00046	-88888	-88888	1	"
tIslamNewYearGift_RandomReward[3310683][8]["RewardMoney"] = {}
tIslamNewYearGift_RandomReward[3310683][8]["RewardMoney"]["Value"] = 88888
tIslamNewYearGift_RandomReward[3310683][8]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310683][8]["RewardEffect"]["Effect"] = "eidolon"
-- 金币99999     3.0%
tIslamNewYearGift_RandomReward[3310683][9] = {}
tIslamNewYearGift_RandomReward[3310683][9]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310683][9]["ItemChance"] = 300
tIslamNewYearGift_RandomReward[3310683][9]["EmoneyLog"] = "1000	00046	-99999	-99999	1	"
tIslamNewYearGift_RandomReward[3310683][9]["RewardMoney"] = {}
tIslamNewYearGift_RandomReward[3310683][9]["RewardMoney"]["Value"] = 99999
tIslamNewYearGift_RandomReward[3310683][9]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310683][9]["RewardEffect"]["Effect"] = "eidolon"
-- 金币999999    1.0%
tIslamNewYearGift_RandomReward[3310683][10] = {}
tIslamNewYearGift_RandomReward[3310683][10]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310683][10]["ItemChance"] = 100
tIslamNewYearGift_RandomReward[3310683][10]["EmoneyLog"] = "1000	00046	-999999	-999999	1	"
tIslamNewYearGift_RandomReward[3310683][10]["RewardMoney"] = {}
tIslamNewYearGift_RandomReward[3310683][10]["RewardMoney"]["Value"] = 999999
tIslamNewYearGift_RandomReward[3310683][10]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310683][10]["RewardEffect"]["Effect"] = "eidolon"
tIslamNewYearGift_RandomReward[3310683][10]["RewardBroadCast"] = tIslamNewYearGift_Text["Broadcast"]["Reward"]
-- 新年衣服礼包  25.0%
tIslamNewYearGift_RandomReward[3310683][11] = {}
tIslamNewYearGift_RandomReward[3310683][11]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310683][11]["ItemChance"] = 2500
tIslamNewYearGift_RandomReward[3310683][11]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310683][11]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310683][11]["RewardItem"][1]["Id"] = 3310684
tIslamNewYearGift_RandomReward[3310683][11]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310683][11]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310683][11]["RewardEffect"]["Effect"] = "eidolon"
tIslamNewYearGift_RandomReward[3310683][11]["RewardBroadCast"] = tIslamNewYearGift_Text["Broadcast"]["Reward"]

-- 新年时装宝盒
tIslamNewYearGift_RandomReward[3310684] = {}
tIslamNewYearGift_RandomReward[3310684]["ItemChanceSum"] = 10000
tIslamNewYearGift_RandomReward[3310684]["LogId"] = 12001150
-- BrazilJerseyPack       5.0%
tIslamNewYearGift_RandomReward[3310684][1] = {}
tIslamNewYearGift_RandomReward[3310684][1]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][1]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][1]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][1]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][1]["RewardItem"][1]["Id"] = 3305648
tIslamNewYearGift_RandomReward[3310684][1]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][1]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][1]["RewardEffect"]["Effect"] = "eidolon"
-- ArgentinaJerseyPack    5.0%
tIslamNewYearGift_RandomReward[3310684][2] = {}
tIslamNewYearGift_RandomReward[3310684][2]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][2]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][2]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][2]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][2]["RewardItem"][1]["Id"] = 3305649
tIslamNewYearGift_RandomReward[3310684][2]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][2]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][2]["RewardEffect"]["Effect"] = "eidolon"
-- SpainJerseyPack        5.0%
tIslamNewYearGift_RandomReward[3310684][3] = {}
tIslamNewYearGift_RandomReward[3310684][3]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][3]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][3]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][3]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][3]["RewardItem"][1]["Id"] = 3305650
tIslamNewYearGift_RandomReward[3310684][3]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][3]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][3]["RewardEffect"]["Effect"] = "eidolon"
-- GermanyJerseyPack      5.0%
tIslamNewYearGift_RandomReward[3310684][4] = {}
tIslamNewYearGift_RandomReward[3310684][4]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][4]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][4]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][4]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][4]["RewardItem"][1]["Id"] = 3305651
tIslamNewYearGift_RandomReward[3310684][4]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][4]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][4]["RewardEffect"]["Effect"] = "eidolon"
-- EgyptJerseyBox        5.0%
tIslamNewYearGift_RandomReward[3310684][5] = {}
tIslamNewYearGift_RandomReward[3310684][5]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][5]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][5]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][5]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][5]["RewardItem"][1]["Id"] = 3306212
tIslamNewYearGift_RandomReward[3310684][5]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][5]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][5]["RewardEffect"]["Effect"] = "eidolon"
-- FlushofHeartsPack      5.0%
tIslamNewYearGift_RandomReward[3310684][6] = {}
tIslamNewYearGift_RandomReward[3310684][6]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][6]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][6]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][6]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][6]["RewardItem"][1]["Id"] = 3390002
tIslamNewYearGift_RandomReward[3310684][6]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][6]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][6]["RewardEffect"]["Effect"] = "eidolon"
-- PurePunkPack           5.0%
tIslamNewYearGift_RandomReward[3310684][7] = {}
tIslamNewYearGift_RandomReward[3310684][7]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][7]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][7]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][7]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][7]["RewardItem"][1]["Id"] = 3306936
tIslamNewYearGift_RandomReward[3310684][7]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][7]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][7]["RewardEffect"]["Effect"] = "eidolon"
-- CharmingSuitPack       5.0%
tIslamNewYearGift_RandomReward[3310684][8] = {}
tIslamNewYearGift_RandomReward[3310684][8]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][8]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][8]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][8]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][8]["RewardItem"][1]["Id"] = 3306937
tIslamNewYearGift_RandomReward[3310684][8]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][8]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][8]["RewardEffect"]["Effect"] = "eidolon"
-- EveningWearPack        5.0%
tIslamNewYearGift_RandomReward[3310684][9] = {}
tIslamNewYearGift_RandomReward[3310684][9]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][9]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][9]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][9]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][9]["RewardItem"][1]["Id"] = 3306938
tIslamNewYearGift_RandomReward[3310684][9]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][9]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][9]["RewardEffect"]["Effect"] = "eidolon"
-- WhiteCollarSuitPack    5.0%
tIslamNewYearGift_RandomReward[3310684][10] = {}
tIslamNewYearGift_RandomReward[3310684][10]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][10]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][10]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][10]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][10]["RewardItem"][1]["Id"] = 3306939
tIslamNewYearGift_RandomReward[3310684][10]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][10]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][10]["RewardEffect"]["Effect"] = "eidolon"
-- PurpleRomancePack      5.0%
tIslamNewYearGift_RandomReward[3310684][11] = {}
tIslamNewYearGift_RandomReward[3310684][11]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][11]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][11]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][11]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][11]["RewardItem"][1]["Id"] = 3306940
tIslamNewYearGift_RandomReward[3310684][11]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][11]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][11]["RewardEffect"]["Effect"] = "eidolon"
-- FrozenFantasyPack      5.0%
tIslamNewYearGift_RandomReward[3310684][12] = {}
tIslamNewYearGift_RandomReward[3310684][12]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][12]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][12]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][12]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][12]["RewardItem"][1]["Id"] = 3306941
tIslamNewYearGift_RandomReward[3310684][12]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][12]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][12]["RewardEffect"]["Effect"] = "eidolon"
-- EveningWearPack        5.0%
tIslamNewYearGift_RandomReward[3310684][13] = {}
tIslamNewYearGift_RandomReward[3310684][13]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][13]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][13]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][13]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][13]["RewardItem"][1]["Id"] = 3306938
tIslamNewYearGift_RandomReward[3310684][13]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][13]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][13]["RewardEffect"]["Effect"] = "eidolon"
-- DivineRobePack         5.0%
tIslamNewYearGift_RandomReward[3310684][14] = {}
tIslamNewYearGift_RandomReward[3310684][14]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][14]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][14]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][14]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][14]["RewardItem"][1]["Id"] = 3306942
tIslamNewYearGift_RandomReward[3310684][14]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][14]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][14]["RewardEffect"]["Effect"] = "eidolon"
-- JingwuUniformPack      5.0%
tIslamNewYearGift_RandomReward[3310684][15] = {}
tIslamNewYearGift_RandomReward[3310684][15]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][15]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][15]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][15]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][15]["RewardItem"][1]["Id"] = 3306943
tIslamNewYearGift_RandomReward[3310684][15]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][15]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][15]["RewardEffect"]["Effect"] = "eidolon"
-- SandRaiderPack         5.0%
tIslamNewYearGift_RandomReward[3310684][16] = {}
tIslamNewYearGift_RandomReward[3310684][16]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][16]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][16]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][16]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][16]["RewardItem"][1]["Id"] = 3306944
tIslamNewYearGift_RandomReward[3310684][16]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][16]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][16]["RewardEffect"]["Effect"] = "eidolon"
-- ClassicFashionPack     5.0%
tIslamNewYearGift_RandomReward[3310684][17] = {}
tIslamNewYearGift_RandomReward[3310684][17]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][17]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][17]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][17]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][17]["RewardItem"][1]["Id"] = 3306945
tIslamNewYearGift_RandomReward[3310684][17]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][17]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][17]["RewardEffect"]["Effect"] = "eidolon"
-- KungFuSuitPack         5.0%
tIslamNewYearGift_RandomReward[3310684][18] = {}
tIslamNewYearGift_RandomReward[3310684][18]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][18]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][18]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][18]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][18]["RewardItem"][1]["Id"] = 3306946
tIslamNewYearGift_RandomReward[3310684][18]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][18]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][18]["RewardEffect"]["Effect"] = "eidolon"
-- TwinBlissPack          5.0%
tIslamNewYearGift_RandomReward[3310684][19] = {}
tIslamNewYearGift_RandomReward[3310684][19]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][19]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][19]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][19]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][19]["RewardItem"][1]["Id"] = 3306947
tIslamNewYearGift_RandomReward[3310684][19]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][19]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][19]["RewardEffect"]["Effect"] = "eidolon"
-- SunlightSwimsuitPack   5.0%
tIslamNewYearGift_RandomReward[3310684][20] = {}
tIslamNewYearGift_RandomReward[3310684][20]["RandomItemChanceType"] = 2
tIslamNewYearGift_RandomReward[3310684][20]["ItemChance"] = 500
tIslamNewYearGift_RandomReward[3310684][20]["RewardItem"] = {}
tIslamNewYearGift_RandomReward[3310684][20]["RewardItem"][1] = {}
tIslamNewYearGift_RandomReward[3310684][20]["RewardItem"][1]["Id"] = 3306948
tIslamNewYearGift_RandomReward[3310684][20]["RewardItem"][1]["Attr"] = "0 1"
tIslamNewYearGift_RandomReward[3310684][20]["RewardEffect"] = {}
tIslamNewYearGift_RandomReward[3310684][20]["RewardEffect"]["Effect"] = "eidolon"


----------------------------------逻辑部分---------------------------------------------
-- 上交宝石
function IslamNewYearGift_HandInGems()
	local tReward = CommonFunc_Copy(tIslamNewYearGift_RandomReward["GemDel"])
	local nGemNum = 0
	local nGemNumSum = 0
	local nIndex = 1
	for i = 1, 10 do
		local nItemId = tIslamNewYearGift_Data["GemId"][i]
		nGemNum = Get_CountItemType(nItemId, 0)
		if nGemNum > 0 then
			tReward["DeleteItem"][nIndex] = {}
			tReward["DeleteItem"][nIndex]["Id"] = nItemId
			tReward["DeleteItem"][nIndex]["ItemNum"] = nGemNum
			nGemNumSum = nGemNumSum + nGemNum
			nIndex = nIndex + 1
		end
	end
	-- 判断是否拥有宝石
	if nIndex == 1 then
		LinkNpcGossipFunc_New(tIslamNewYearGift_Data["GemNpcId"], "1-2")
		return
	end
	-- 上交宝石成功
	if RewardTemplate_UseItemAndMsg(tReward) then
		-- 增加掩码
		local nEvent = tIslamNewYearGift_Data["GenEvent"]
		local nData = tIslamNewYearGift_Data["GenData"]
		Task_AddStatistic(nEvent, nData, nGemNumSum, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		tNpcGossip[15995]["Text111"] = string.format(tIslamNewYearGift_Text[15995]["Text111"], nGemNumSum)
		LinkNpcGossipFunc_New(tIslamNewYearGift_Data["GemNpcId"], "1-1")
	end
end

-- 全服邀请
function IslamNewYearGift_InviteTips()
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["IslamNewYearGift"]["ActiveTimes"]) then
		return
	end
	if Sys_InviteFilter(tIslamNewYearGift_Data["InviteId"], "level >= 0") then
		Sys_InviteTrans(tIslamNewYearGift_Data["MapDrop"]["MapId"], tIslamNewYearGift_Data["Invite_Pos"], 10585, 10586, tIslamNewYearGift_Data["InviteId"], 30)
	end
end

-- 挑选随机奖励掉落点
function IslamNewYearGift_RandomPos()
	local nPosX = 0
	local nPosY = 0
	local nRamndomNum = math.random(1, 37)
	-- 获取区域落点
	local nPosXBegin = tIslamNewYearGift_Data["MapDrop"]["Pos"][nRamndomNum][1]
	local nPosXEnd = tIslamNewYearGift_Data["MapDrop"]["Pos"][nRamndomNum][2]
	local nPosYBegin = tIslamNewYearGift_Data["MapDrop"]["Pos"][nRamndomNum][3]
	local nPosYEnd = tIslamNewYearGift_Data["MapDrop"]["Pos"][nRamndomNum][4]
	
	nPosX = math.random(nPosXBegin, nPosXEnd)
	nPosY = math.random(nPosYBegin, nPosYEnd)
	return nPosX, nPosY
end

-- 地图礼物掉落刷新
function IslamNewYearGift_MapDrop()
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["IslamNewYearGift"]["ActiveTimes"]) then
		return
	end
	-- 每个时间点掉落一百次
	for i = 1, 100 do
		local nMapId = tIslamNewYearGift_Data["MapDrop"]["MapId"]
		local nItemId = tIslamNewYearGift_Data["MapDrop"]["ItemId"]
		-- 获取掉落点
		local nPosX, nPosY = IslamNewYearGift_RandomPos()
		local nRange = tIslamNewYearGift_Data["MapDrop"]["Range"]
		local nItemNum = tIslamNewYearGift_Data["MapDrop"]["DropNum"]
		local nExistTime = tIslamNewYearGift_Data["MapDrop"]["ExistTime"]
		Map_DropMultiItems(nMapId, nItemId, nPosX, nPosY, nRange, nRange, nItemNum, nExistTime)
	end
end

-- 删除礼盒
function IslamNewYearGift_DelAllPackage(nItemId, nIndex)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nItemNum = Get_CountItemType(nItemId, 0)
	if Item_DelAllItemByType(nItemId) then
		if nIndex == 1 then
			User_TalkChannel2005(tIslamNewYearGift_Text["OverThreeTimes"])
		else
			User_TalkChannel2005(tIslamNewYearGift_Text["OverTime"])
		end
		local sLog = string.format(tIslamNewYearGift_Data["OverTimeLog"], nItemId, nItemNum)
		Sys_SaveActionFestivalLog(sLog)
		return
	end
end

-- 新年礼盒使用
function IslamNewYearGift_PackageUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["IslamNewYearGift"]["ActiveTimes"]) then
		IslamNewYearGift_DelAllPackage(nItemId, 2)
		return
	end
	local nEvent = tIslamNewYearGift_Data["Stc"]["Event"][1]
	local nData = tIslamNewYearGift_Data["Stc"]["Data"][1]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	local nUserTimes = Get_UserStatisticValue(nEvent, nData)
	-- 判断使用次数
	if nUserTimes >= 3 then
		IslamNewYearGift_DelAllPackage(nItemId, 1)
		return
	end
	-- 判断金币上限
	if not User_CanPutMoney2Bag(tIslamNewYearGift_Data["MaxMoney"]) then
		User_TalkChannel2005(tIslamNewYearGift_Text["FullMoney"])
		return
	end
	-- 开礼包
	local tRandomReward = CommonFunc_Copy(tIslamNewYearGift_RandomReward)
	local sUserName = Get_UserName()
	tRandomReward[nItemId][10]["RewardBroadCast"] = string.format(tIslamNewYearGift_Text["Broadcast"]["RewardMoney"], sUserName)
	tRandomReward[nItemId][11]["RewardBroadCast"] = string.format(tIslamNewYearGift_Text["Broadcast"]["RewardItem"], sUserName)
	if Item_DelItem(nItemId) then
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		local tNewReward = RewardTemplate_NewRandom(tRandomReward, nItemId)
		if tNewReward[1]["tAward"][1]["EmoneyLog"] ~= nil then
			Sys_SaveEmoneyBuy(tNewReward[1]["tAward"][1]["EmoneyLog"])
		end
	end
	-- 判断使用后是否达到三次使用
	local nAfterUserTimes = Get_UserStatisticValue(nEvent, nData)
	-- 判断使用次数
	if nAfterUserTimes >= 3 then
		IslamNewYearGift_DelAllPackage(nItemId, 1)
		return
	end
end

-- 新年时装宝盒使用
function IslamNewYearGift_ClothPackageUse(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["IslamNewYearGift"]["ActiveTimes"]) then
		IslamNewYearGift_DelAllPackage(nItemId, 2)
		return
	end
	if Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tIslamNewYearGift_RandomReward, nItemId)
	end
end

-- 10月内功秘籍首卖活动
function IslamNewYearGift_ChkSellTime()
	local nNpcId = tIslamNewYearGift_Data["NpcId"]
	-- 活动时间前  活动时间前对白
	if Sys_ChkFullTime(tActivityTime["IslamNewYearGift"]["BeforeSell"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-1")
	-- 活动时间内  打开天石商店
	elseif Sys_ChkFullTime(tActivityTime["IslamNewYearGift"]["SellTime"]) then
		User_OpenDialog()
	-- 活动时间外  活动时间外对白
	else
		LinkNpcGossipFunc_New(nNpcId, "1-2")
	end
end

-- 传送
function IslamNewYearGift_GotoSomeWhere(nIndex)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["IslamNewYearGift"]["GamblingTime"]) then
		return
	end
	
	if Get_UserMapId() ~= 10364 and Get_UserMapId() ~= 1036 then
		return
	end
	local nMapId = tIslamNewYearGift_Data["Pos"][nIndex]["MapId"]
	local nPosX = tIslamNewYearGift_Data["Pos"][nIndex]["PosX"]
	local nPosY = tIslamNewYearGift_Data["Pos"][nIndex]["PosY"]
	-- 保存记录点
	User_RecordPoint(10364,313,304)
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5)
end

----------------------------------NPC部分---------------------------------------------
-- 181008[英文征服][活动脚本]10月内功秘籍首卖活动
-- SQL BY:王贤
-- DATE：2018-10-08
--------------------------------------------------------------------------------------
-- 世外高人
tNpcFace[4768] = 6
tNpcGossip[23298]= tNpcGossip[23298] or DefaultNpc:new{}
tNpcGossip[23298]["OptionHidden"] = 1
-- 活动前对白
tNpcGossip[23298]["Text1-1"] = {111, 112, 113, 114}
tNpcGossip[23298]["Text111"] = tIslamNewYearGift_Text[23298]["Text111"]
tNpcGossip[23298]["Text112"] = tIslamNewYearGift_Text[23298]["Text112"]
tNpcGossip[23298]["Text113"] = tIslamNewYearGift_Text[23298]["Text113"]
tNpcGossip[23298]["Text114"] = tIslamNewYearGift_Text[23298]["Text114"]
tNpcGossip[23298]["ChkFunc1-1"] = function ()
	if Sys_ChkFullTime(tActivityTime["IslamNewYearGift"]["BeforeSell"]) then
		return true
	end
	return false
end
tNpcGossip[23298]["tOption1-1"] = {111}
tNpcGossip[23298]["Option111"] = tIslamNewYearGift_Text[23298]["Option111"]
-- 活动后对白
tNpcGossip[23298]["Text1-2"] = {121}
tNpcGossip[23298]["Text121"] = tIslamNewYearGift_Text[23298]["Text121"]
tNpcGossip[23298]["ChkFunc1-2"] = function ()
	if not Sys_ChkFullTime(tActivityTime["IslamNewYearGift"]["SellTime"]) then
		return true
	end
	return false
end
tNpcGossip[23298]["tOption1-2"] = {121}
tNpcGossip[23298]["Option121"] = tIslamNewYearGift_Text[23298]["Option121"]



---------------------------------物品部分---------------------------------------------
-- 新年礼盒
tItem[3310683] = tItem[3310683] or {}
tItem[3310683]["Function"] = function(nItemId,sItemName)
	IslamNewYearGift_PackageUse(nItemId)
end
--新年时装宝盒
tItem[3310684] = tItem[3310684] or {}
tItem[3310684]["Function"] = function(nItemId,sItemName)
	IslamNewYearGift_ClothPackageUse(nItemId)
end
--------------------------------------NPC部分-------------------------------------------
tNpcFace[2649] = 33
tNpcGossip[15995] = tNpcGossip[15995] or DefaultNpc:new{}
tNpcGossip[15995]["OptionHidden"] = 1
-- 上交成功
tNpcGossip[15995]["Text1-1"] = {111}
tNpcGossip[15995]["Text111"] = tIslamNewYearGift_Text[15995]["Text111"]
tNpcGossip[15995]["tOption1-1"] = {111}
tNpcGossip[15995]["Option111"] = tIslamNewYearGift_Text[15995]["Option111"]
-- 上交失败
tNpcGossip[15995]["Text1-2"] = {121}
tNpcGossip[15995]["Text121"] = tIslamNewYearGift_Text[15995]["Text121"]
tNpcGossip[15995]["tOption1-2"] = {121}
tNpcGossip[15995]["Option121"] = tIslamNewYearGift_Text[15995]["Option121"]

-- 宣传NPC1
tNpcFace[6414] = 1
tNpcGossip[23602] = tNpcGossip[23602] or DefaultNpc:new{}
tNpcGossip[23602]["OptionHidden"] = 1
-- 活动前
tNpcGossip[23602]["Text1-1"] = {111, 112, 113, 114, 115, 117, 118}
tNpcGossip[23602]["Text111"] = tIslamNewYearGift_Text[23602]["Text111"]
tNpcGossip[23602]["Text112"] = tIslamNewYearGift_Text[23602]["Text112"]
tNpcGossip[23602]["Text113"] = tIslamNewYearGift_Text[23602]["Text113"]
tNpcGossip[23602]["Text114"] = tIslamNewYearGift_Text[23602]["Text114"]
tNpcGossip[23602]["Text115"] = tIslamNewYearGift_Text[23602]["Text115"]
-- tNpcGossip[23602]["Text116"] = tIslamNewYearGift_Text[23602]["Text116"]
tNpcGossip[23602]["Text117"] = tIslamNewYearGift_Text[23602]["Text117"]
tNpcGossip[23602]["Text118"] = tIslamNewYearGift_Text[23602]["Text118"]
tNpcGossip[23602]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["IslamNewYearGift"]["GamblingTime"]) then
		return false
	end
	return true
end
tNpcGossip[23602]["tOption1-1"] = {111}
tNpcGossip[23602]["Option111"] = tIslamNewYearGift_Text[23602]["Option111"]
-- 活动中
tNpcGossip[23602]["Text1-2"] = {121, 122, 123, 124, 125, 127}
tNpcGossip[23602]["Text121"] = tIslamNewYearGift_Text[23602]["Text121"]
tNpcGossip[23602]["Text122"] = tIslamNewYearGift_Text[23602]["Text122"]
tNpcGossip[23602]["Text123"] = tIslamNewYearGift_Text[23602]["Text123"]
tNpcGossip[23602]["Text124"] = tIslamNewYearGift_Text[23602]["Text124"]
tNpcGossip[23602]["Text125"] = tIslamNewYearGift_Text[23602]["Text125"]
-- tNpcGossip[23602]["Text126"] = tIslamNewYearGift_Text[23602]["Text126"]
tNpcGossip[23602]["Text127"] = tIslamNewYearGift_Text[23602]["Text127"]
tNpcGossip[23602]["tOption1-2"] = {121, 122, 123, 124}
tNpcGossip[23602]["Option121"] = tIslamNewYearGift_Text[23602]["Option121"]
tNpcGossip[23602]["OptionFunc121"] = "IslamNewYearGift_GotoSomeWhere</N>1"
tNpcGossip[23602]["Option122"] = tIslamNewYearGift_Text[23602]["Option122"]
tNpcGossip[23602]["OptionFunc122"] = "IslamNewYearGift_GotoSomeWhere</N>2"
tNpcGossip[23602]["Option123"] = tIslamNewYearGift_Text[23602]["Option123"]
tNpcGossip[23602]["OptionFunc123"] = "IslamNewYearGift_GotoSomeWhere</N>3"
tNpcGossip[23602]["Option124"] = tIslamNewYearGift_Text[23602]["Option124"]
tNpcGossip[23602]["OptionFunc124"] = "IslamNewYearGift_GotoSomeWhere</N>4"
-- tNpcGossip[23602]["Option125"] = tIslamNewYearGift_Text[23602]["Option125"]
-- tNpcGossip[23602]["OptionFunc125"] = "IslamNewYearGift_GotoSomeWhere</N>5"
-- 宣传NPC2
tNpcFace[6415] = 174
tNpcGossip[23603] = tNpcGossip[23603] or DefaultNpc:new{}
tNpcGossip[23603]["OptionHidden"] = 1
-- 活动前
tNpcGossip[23603]["Text1-1"] = {111, 112, 113, 114, 115, 117, 118}
tNpcGossip[23603]["Text111"] = tIslamNewYearGift_Text[23602]["Text111"]
tNpcGossip[23603]["Text112"] = tIslamNewYearGift_Text[23602]["Text112"]
tNpcGossip[23603]["Text113"] = tIslamNewYearGift_Text[23602]["Text113"]
tNpcGossip[23603]["Text114"] = tIslamNewYearGift_Text[23602]["Text114"]
tNpcGossip[23603]["Text115"] = tIslamNewYearGift_Text[23602]["Text115"]
-- tNpcGossip[23603]["Text116"] = tIslamNewYearGift_Text[23602]["Text116"]
tNpcGossip[23603]["Text117"] = tIslamNewYearGift_Text[23602]["Text117"]
tNpcGossip[23603]["Text118"] = tIslamNewYearGift_Text[23602]["Text118"]
tNpcGossip[23603]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["IslamNewYearGift"]["GamblingTime"]) then
		return false
	end
	return true
end
tNpcGossip[23603]["tOption1-1"] = {111}
tNpcGossip[23603]["Option111"] = tIslamNewYearGift_Text[23602]["Option111"]
-- 活动中
tNpcGossip[23603]["Text1-2"] = {121, 122, 123, 124, 125, 127}
tNpcGossip[23603]["Text121"] = tIslamNewYearGift_Text[23602]["Text121"]
tNpcGossip[23603]["Text122"] = tIslamNewYearGift_Text[23602]["Text122"]
tNpcGossip[23603]["Text123"] = tIslamNewYearGift_Text[23602]["Text123"]
tNpcGossip[23603]["Text124"] = tIslamNewYearGift_Text[23602]["Text124"]
tNpcGossip[23603]["Text125"] = tIslamNewYearGift_Text[23602]["Text125"]
-- tNpcGossip[23603]["Text126"] = tIslamNewYearGift_Text[23602]["Text126"]
tNpcGossip[23603]["Text127"] = tIslamNewYearGift_Text[23602]["Text127"]
tNpcGossip[23603]["tOption1-2"] = {121, 122, 123, 124}
tNpcGossip[23603]["Option121"] = tIslamNewYearGift_Text[23602]["Option121"]
tNpcGossip[23603]["OptionFunc121"] = "NpcPosition_PathFind</N>23593"
tNpcGossip[23603]["Option122"] = tIslamNewYearGift_Text[23602]["Option122"]
tNpcGossip[23603]["OptionFunc122"] = "NpcPosition_PathFind</N>23125"
tNpcGossip[23603]["Option123"] = tIslamNewYearGift_Text[23602]["Option123"]
tNpcGossip[23603]["OptionFunc123"] = "NpcPosition_PathFind</N>23577"
tNpcGossip[23603]["Option124"] = tIslamNewYearGift_Text[23602]["Option124"]
tNpcGossip[23603]["OptionFunc124"] = "NpcPosition_PathFind</N>7675"
-- tNpcGossip[23603]["Option125"] = tIslamNewYearGift_Text[23602]["Option125"]
-- tNpcGossip[23603]["OptionFunc125"] = "IslamNewYearGift_GotoSomeWhere</N>5"

--------------------------------------时间自检-------------------------------------------
tIslamNewYearGift_ChkTime = {}
tIslamNewYearGift_ChkTime[1] = {}
tIslamNewYearGift_ChkTime[1]["ActivityTime"] = tIslamNewYearGift_Data["ActivityTime"]
tIslamNewYearGift_ChkTime[1]["Type"] = 6
tIslamNewYearGift_ChkTime[1]["TimeType"] = 4
tIslamNewYearGift_ChkTime[1]["Multiple"] = {}
-- 每天美服时间11:00，11:01，11:02，11:03，11:04。每分钟刷100个礼盒到德州大厅，共计500个
tIslamNewYearGift_ChkTime[1]["Multiple"][1] = "11:00 11:00"
tIslamNewYearGift_ChkTime[1]["Multiple"][2] = "11:01 11:01"
tIslamNewYearGift_ChkTime[1]["Multiple"][3] = "11:02 11:02"
tIslamNewYearGift_ChkTime[1]["Multiple"][4] = "11:03 11:03"
tIslamNewYearGift_ChkTime[1]["Multiple"][5] = "11:04 11:04"
-- 每天美服时间12:00，12:01，12:02，12:03，12:04。每分钟刷100个礼盒到德州大厅，共计500个
tIslamNewYearGift_ChkTime[1]["Multiple"][6]  = "12:00 12:00"
tIslamNewYearGift_ChkTime[1]["Multiple"][7]  = "12:01 12:01"
tIslamNewYearGift_ChkTime[1]["Multiple"][8]  = "12:02 12:02"
tIslamNewYearGift_ChkTime[1]["Multiple"][9]  = "12:03 12:03"
tIslamNewYearGift_ChkTime[1]["Multiple"][10] = "12:04 12:04"
-- 每天美服时间13:00，13:01，13:02，13:03，13:04。每分钟刷100个礼盒到德州大厅，共计500个
tIslamNewYearGift_ChkTime[1]["Multiple"][11] = "13:00 13:00"
tIslamNewYearGift_ChkTime[1]["Multiple"][12] = "13:01 13:01"
tIslamNewYearGift_ChkTime[1]["Multiple"][13] = "13:02 13:02"
tIslamNewYearGift_ChkTime[1]["Multiple"][14] = "13:03 13:03"
tIslamNewYearGift_ChkTime[1]["Multiple"][15] = "13:04 13:04"
tIslamNewYearGift_ChkTime[1]["Func"] = IslamNewYearGift_MapDrop
table.insert(tSystemTime_InitialData,tIslamNewYearGift_ChkTime[1])

tIslamNewYearGift_ChkTime[2] = {}
tIslamNewYearGift_ChkTime[2]["ActivityTime"] = tIslamNewYearGift_Data["ActivityTime"]
tIslamNewYearGift_ChkTime[2]["Type"] = 1
tIslamNewYearGift_ChkTime[2]["TimeType"] = 4
tIslamNewYearGift_ChkTime[2]["Multiple"] = {}
tIslamNewYearGift_ChkTime[2]["Multiple"][1] = "10:59 10:59"
tIslamNewYearGift_ChkTime[2]["Multiple"][2] = "11:59 11:59"
tIslamNewYearGift_ChkTime[2]["Multiple"][3] = "12:59 12:59"
tIslamNewYearGift_ChkTime[2]["Func"] = IslamNewYearGift_InviteTips
table.insert(tSystemTime_InitialData,tIslamNewYearGift_ChkTime[2])

