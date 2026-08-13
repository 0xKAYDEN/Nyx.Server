------------------------------------------------------------------------------------
--Name:		170712[英文征服][活动脚本]8月帮派评选活动(8.8-8.22)
--Creator: 	兰瑞妹
--Created:	2017/07/18
------------------------------------------------------------------------------------

-- 命名前缀
-- Gangs_InAugust_

-- logid 12000779

-- #stc 掩码说明 
-- #stc(164,14) 背包信
-- #stc(164,15) 粉丝积分,可用于线上兑换

-- 50个报名帮派
--动态存储表说明
-- GlobalId 51662-51686
-- data0 号码 
-- data1 帮派id  darastr1 帮派名
-- data2 参赛帮主id  datastr2 参赛帮主名称
-- data3 号码 
-- data4 帮派id  darastr4 帮派名
-- data5 参赛帮主id  datastr5 参赛帮主名称

-- GlobalId 51687
-- data0 参赛数量
-- GlobalId 80186
-- data0 200分 赤练石+3*1赠 限定单服每天最多10个，给完给明亮星陨石*2
-- data1 500分 乾坤令（小）*1 限定单服每天最多10个，给完给明亮星陨石*5
-- data2 1000分 龙珠*1赠 限定活动期间单服就10个,，给完给明亮星陨石*8
-- data3 1000分 优质玄元宝石赠 限定活动期间单服就3个,，给完给明亮星陨石*8
-- data4 1000分 金刚坚钻赠 限定活动期间单服就1个,，给完给明亮星陨石*8
-- data5 1000分 赤练石+6赠赠 限定活动期间单服就1个,，给完给明亮星陨石*8
-- datastr5 清理标志

-- 常量表
local tGangs_InAugust_Count = {}
	-- 活动时间
	tGangs_InAugust_Count["ActivityTime"] = "2017-08-08 00:00 2017-08-22 23:59"
	
	tGangs_InAugust_Count["ItemUseTime"] = "2017-08-08 00:00 2017-09-30 23:59"
	
	-- 清理时间
	tGangs_InAugust_Count["ClearTime"] = "00:00 00:02"
	-- 输入框长度
	tGangs_InAugust_Count["Length"] = 15
	
	-- 报名参赛帮派
	tGangs_InAugust_Count["JoinMaxNum"] = 50
	
	-- 报名用天石
	tGangs_InAugust_Count["EMoney"] = 99
	
	-- 报名用金币
	tGangs_InAugust_Count["Money"] = 10000000
	
	-- 参赛数量
	tGangs_InAugust_Count["GlobalId"] = 51687
	tGangs_InAugust_Count["ItemGlobalId"] = 80186
	
	-- 流星卷
	tGangs_InAugust_Count["MeteorId"] = 720027
	
	-- 背包数量
	tGangs_InAugust_Count["MaxSpace"] = 40
	
-- 动态存储表的表数据
local tGangs_InAugust_Data = {}
	-- 参赛信息
	tGangs_InAugust_Data["JoinIn"] = {} 
	-- tGangs_InAugust_Data["JoinIn"][1] = {Num,GuildId,GuildName,UserId,UserName}
	-- 参赛数量
	tGangs_InAugust_Data["Num"] = 0
	-- 玩家上交花类型
	tGangs_InAugust_Data["Flower"] = {}
	-- 玩家上交宝石类型
	tGangs_InAugust_Data["Gems"] = {}
	

-- Log表
local tGangs_InAugust_Log = {}
	-- 过期删除
	tGangs_InAugust_Log["OverDue"] = "0,0,%d,1,12000779,2,0,0"
	-- 99天石报名参赛
	tGangs_InAugust_Log["EMoneyLog"] = "350	20684	99	99	1	"
	tGangs_InAugust_Log["EMoneyJoinLog"] = "99,0,0,0,12000779,1[1],0,0"
	-- 1000万报名参赛
	tGangs_InAugust_Log["MoneyLog"] = "350	20685	0	0	10000000	"
	tGangs_InAugust_Log["MoneyJoinLog"] = "0,0,1,10000000,12000779,1[1],0,0"
	-- 上交金币投票
	tGangs_InAugust_Log["MoneyJoinIn"] = "350	20686	0	0	%d	"
	
-- stc掩码
local tGangs_InAugust_Stc = {}
	-- 粉丝积分,可用于线上兑换
	tGangs_InAugust_Stc[1] = {}
	tGangs_InAugust_Stc[1]["EventType"] = 164
	tGangs_InAugust_Stc[1]["DataType"] = 15
	
local tGangs_InAugust_Effect = {}
	tGangs_InAugust_Effect[1] = {}
	tGangs_InAugust_Effect[1]["Effect"] = "self"
	tGangs_InAugust_Effect[1]["EffectObj"] = "angelwing"
	
local tGangs_InAugust_OutText = {}
	-- 鲜花
	tGangs_InAugust_OutText[1] = {}
	--成功提示
	tGangs_InAugust_OutText[1]["TextIndex"] = "Text251"
	-- 输入提示
	tGangs_InAugust_OutText[1]["Input"] = "Input"
	-- 物品属性
	tGangs_InAugust_OutText[1]["Monopoly"] = 1
	tGangs_InAugust_OutText[1]["SaveTime"] = 0
	tGangs_InAugust_OutText[1]["Log"] = "0,0,%d,%d,12000779,2,0,0"
	-- 返回对白
	tGangs_InAugust_OutText[1]["Back"] = "1-3"
	-- 成功返回
	tGangs_InAugust_OutText[1]["SuccessBack"] = "2-1"
	-- 宝石
	tGangs_InAugust_OutText[2] = {}
	tGangs_InAugust_OutText[2]["TextIndex"] = "Text391"
	tGangs_InAugust_OutText[2]["Input"] = "Input1"
	tGangs_InAugust_OutText[2]["Monopoly"] = 0
	tGangs_InAugust_OutText[2]["SaveTime"] = 0
	tGangs_InAugust_OutText[2]["Log"] = "0,0,%d,%d,12000779,2,0,0"
	tGangs_InAugust_OutText[2]["Back"] = "3-1"
	tGangs_InAugust_OutText[2]["SuccessBack"] = "3-1"
	-- 流星卷
	tGangs_InAugust_OutText[3] = {}
	tGangs_InAugust_OutText[3]["TextIndex"] = "Text391"
	tGangs_InAugust_OutText[3]["Input"] = "Input1"
	tGangs_InAugust_OutText[3]["Monopoly"] = 0
	tGangs_InAugust_OutText[3]["SaveTime"] = 0
	tGangs_InAugust_OutText[3]["Log"] = "0,0,%d,%d,12000779,2,0,0"
	tGangs_InAugust_OutText[3]["Back"] = "3-1"
	tGangs_InAugust_OutText[3]["SuccessBack"] = "3-1"
	-- 银两
	tGangs_InAugust_OutText[4] = {}
	tGangs_InAugust_OutText[4]["TextIndex"] = "Text421"
	tGangs_InAugust_OutText[4]["Input"] = "Input2"
	tGangs_InAugust_OutText[4]["Monopoly"] = 0
	tGangs_InAugust_OutText[4]["SaveTime"] = 0
	tGangs_InAugust_OutText[4]["Log"] = "0,0,1,%d,12000779,2,0,0"
	tGangs_InAugust_OutText[4]["Back"] = "3-1"
	tGangs_InAugust_OutText[4]["SuccessBack"] = "3-1"
	
local  tGangs_InAugust_GlobalPos = {}
	tGangs_InAugust_GlobalPos[1] = {51662,0}
	tGangs_InAugust_GlobalPos[2] = {51662,3}
	tGangs_InAugust_GlobalPos[3] = {51663,0}
	tGangs_InAugust_GlobalPos[4] = {51663,3}
	tGangs_InAugust_GlobalPos[5] = {51664,0}
	tGangs_InAugust_GlobalPos[6] = {51664,3}
	tGangs_InAugust_GlobalPos[7] = {51665,0}
	tGangs_InAugust_GlobalPos[8] = {51665,3}
	tGangs_InAugust_GlobalPos[9] = {51666,0}
	tGangs_InAugust_GlobalPos[10] = {51666,3}
	tGangs_InAugust_GlobalPos[11] = {51667,0}
	tGangs_InAugust_GlobalPos[12] = {51667,3}
	tGangs_InAugust_GlobalPos[13] = {51668,0}
	tGangs_InAugust_GlobalPos[14] = {51668,3}
	tGangs_InAugust_GlobalPos[15] = {51669,0}
	tGangs_InAugust_GlobalPos[16] = {51669,3}
	tGangs_InAugust_GlobalPos[17] = {51670,0}
	tGangs_InAugust_GlobalPos[18] = {51670,3}
	tGangs_InAugust_GlobalPos[19] = {51671,0}
	tGangs_InAugust_GlobalPos[20] = {51671,3}
	tGangs_InAugust_GlobalPos[21] = {51672,0}
	tGangs_InAugust_GlobalPos[22] = {51672,3}
	tGangs_InAugust_GlobalPos[23] = {51673,0}
	tGangs_InAugust_GlobalPos[24] = {51673,3}
	tGangs_InAugust_GlobalPos[25] = {51674,0}
	tGangs_InAugust_GlobalPos[26] = {51674,3}
	tGangs_InAugust_GlobalPos[27] = {51675,0}
	tGangs_InAugust_GlobalPos[28] = {51675,3}
	tGangs_InAugust_GlobalPos[29] = {51676,0}
	tGangs_InAugust_GlobalPos[30] = {51676,3}
	tGangs_InAugust_GlobalPos[31] = {51677,0}
	tGangs_InAugust_GlobalPos[32] = {51677,3}
	tGangs_InAugust_GlobalPos[33] = {51678,0}
	tGangs_InAugust_GlobalPos[34] = {51678,3}
	tGangs_InAugust_GlobalPos[35] = {51679,0}
	tGangs_InAugust_GlobalPos[36] = {51679,3}
	tGangs_InAugust_GlobalPos[37] = {51680,0}
	tGangs_InAugust_GlobalPos[38] = {51680,3}
	tGangs_InAugust_GlobalPos[39] = {51681,0}
	tGangs_InAugust_GlobalPos[40] = {51681,3}
	tGangs_InAugust_GlobalPos[41] = {51682,0}
	tGangs_InAugust_GlobalPos[42] = {51682,3}
	tGangs_InAugust_GlobalPos[43] = {51683,0}
	tGangs_InAugust_GlobalPos[44] = {51683,3}
	tGangs_InAugust_GlobalPos[45] = {51684,0}
	tGangs_InAugust_GlobalPos[46] = {51684,3}
	tGangs_InAugust_GlobalPos[47] = {51685,0}
	tGangs_InAugust_GlobalPos[48] = {51685,3}
	tGangs_InAugust_GlobalPos[49] = {51686,0}
	tGangs_InAugust_GlobalPos[50] = {51686,3}
	
-- 花id
local tGangs_InAugust_Flower = {}
	-- 百合
	tGangs_InAugust_Flower[2] = {752001,752003,752009,752099,752999,3304243}
	-- 玫瑰 
	tGangs_InAugust_Flower[1] = {751001,751003,751009,751099,751999,3304242}
	-- 兰花
	tGangs_InAugust_Flower[3] = {753001,753003,753009,753099,753999,3304244}
	-- 郁金香
	tGangs_InAugust_Flower[4] = {754001,754003,754009,754099,754999,3304245}
	
	-- 宝石id
local tGangs_InAugust_Gems = {}
	tGangs_InAugust_Gems[1] = 700001
	tGangs_InAugust_Gems[2] = 700011
	tGangs_InAugust_Gems[3] = 700021
	tGangs_InAugust_Gems[4] = 700031
	tGangs_InAugust_Gems[5] = 700041
	tGangs_InAugust_Gems[6] = 700051
	tGangs_InAugust_Gems[7] = 700061
	tGangs_InAugust_Gems[8] = 700071
	tGangs_InAugust_Gems[9] = 700101
	tGangs_InAugust_Gems[10] = 700121
	
-- 自动导航至献花投票大使
local tGangs_InAugust_FindWay = {}
	tGangs_InAugust_FindWay[21979] = {}
	tGangs_InAugust_FindWay[21979]["PosX"] = 319
	tGangs_InAugust_FindWay[21979]["PosY"] = 248
	tGangs_InAugust_FindWay[21979]["MapId"] = 1002
	tGangs_InAugust_FindWay[21979]["NpcId"] = 21978
	
-- 物品对应积分
local tGangs_InAugust_FansScore = {}
	-- 玫瑰
	tGangs_InAugust_FansScore[751001] = 1
	tGangs_InAugust_FansScore[751003] = 3
	tGangs_InAugust_FansScore[751009] = 9
	tGangs_InAugust_FansScore[751099] = 99
	tGangs_InAugust_FansScore[751999] = 999
	tGangs_InAugust_FansScore[3304242] = 9999
	-- 百合
	tGangs_InAugust_FansScore[752001] = 1
	tGangs_InAugust_FansScore[752003] = 3
	tGangs_InAugust_FansScore[752009] = 9
	tGangs_InAugust_FansScore[752099] = 99
	tGangs_InAugust_FansScore[752999] = 999
	tGangs_InAugust_FansScore[3304243] = 9999
	-- 兰花
	tGangs_InAugust_FansScore[753001] = 1
	tGangs_InAugust_FansScore[753003] = 3
	tGangs_InAugust_FansScore[753009] = 9
	tGangs_InAugust_FansScore[753099] = 99
	tGangs_InAugust_FansScore[753999] = 999
	tGangs_InAugust_FansScore[3304244] = 9999
	-- 郁金香
	tGangs_InAugust_FansScore[754001] = 2
	tGangs_InAugust_FansScore[754003] = 6
	tGangs_InAugust_FansScore[754009] = 18
	tGangs_InAugust_FansScore[754099] = 198
	tGangs_InAugust_FansScore[754999] = 1998
	tGangs_InAugust_FansScore[3304245] = 19998
	-- 宝石
	tGangs_InAugust_FansScore["Gems"] = 2
	tGangs_InAugust_FansScore[720027] = 6
	tGangs_InAugust_FansScore["Money"] = 80
	
-- 奖励表
local tGangs_InAugust_Reward = {}
	-- 3304237,'50积分粉丝礼包'
	tGangs_InAugust_Reward[3304237] = {}
	tGangs_InAugust_Reward[3304237][1] = {}
	tGangs_InAugust_Reward[3304237][1]["ItemChanceSum"] = 10000
	-- 微光星陨石*5	20%	TwilightStarStone*5	3009000	2	不可交易，两天内激活有效
	tGangs_InAugust_Reward[3304237][1][1] = {}
	tGangs_InAugust_Reward[3304237][1][1]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304237][1][1]["ItemChance"] = 2000
	tGangs_InAugust_Reward[3304237][1][1]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304237][1][1]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304237][1][1]["RewardItem"][1]["Id"] = 3009000
	tGangs_InAugust_Reward[3304237][1][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tGangs_InAugust_Reward[3304237][1][1]["Log"] = "0,0,3304237,1,12000779,2,3009000,5"
	tGangs_InAugust_Reward[3304237][1][1]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304237][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 经验球*2赠	20%	EXPBall(B)*2	723700	2	赠
	tGangs_InAugust_Reward[3304237][1][2] = {}
	tGangs_InAugust_Reward[3304237][1][2]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304237][1][2]["ItemChance"] = 2000
	tGangs_InAugust_Reward[3304237][1][2]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304237][1][2]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304237][1][2]["RewardItem"][1]["Id"] = 723700
	tGangs_InAugust_Reward[3304237][1][2]["RewardItem"][1]["Attr"] = "0 2 3"
	tGangs_InAugust_Reward[3304237][1][2]["Log"] = "0,0,3304237,1,12000779,2,723700,2"
	tGangs_InAugust_Reward[3304237][1][2]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304237][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 修行值50点赠	20%	CordialityBook(B)	728883	1	赠
	tGangs_InAugust_Reward[3304237][1][3] = {}
	tGangs_InAugust_Reward[3304237][1][3]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304237][1][3]["ItemChance"] = 2000
	tGangs_InAugust_Reward[3304237][1][3]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304237][1][3]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304237][1][3]["RewardItem"][1]["Id"] = 728883
	tGangs_InAugust_Reward[3304237][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tGangs_InAugust_Reward[3304237][1][3]["Log"] = "0,0,3304237,1,12000779,2,728883,1"
	tGangs_InAugust_Reward[3304237][1][3]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304237][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+1赠	20%	+1 Stone(B)	730001	1	赠
	tGangs_InAugust_Reward[3304237][1][4] = {}
	tGangs_InAugust_Reward[3304237][1][4]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304237][1][4]["ItemChance"] = 2000
	tGangs_InAugust_Reward[3304237][1][4]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304237][1][4]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304237][1][4]["RewardItem"][1]["Id"] = 730001
	tGangs_InAugust_Reward[3304237][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tGangs_InAugust_Reward[3304237][1][4]["Log"] = "0,0,3304237,1,12000779,2,730001,1"
	tGangs_InAugust_Reward[3304237][1][4]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304237][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 100点气力值	19%	ChiPill(100)	729476	1	赠
	tGangs_InAugust_Reward[3304237][1][5] = {}
	tGangs_InAugust_Reward[3304237][1][5]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304237][1][5]["ItemChance"] = 1900
	tGangs_InAugust_Reward[3304237][1][5]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304237][1][5]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304237][1][5]["RewardItem"][1]["Id"] = 729476
	tGangs_InAugust_Reward[3304237][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304237][1][5]["Log"] = "0,0,3304237,1,12000779,2,729476,1"
	tGangs_InAugust_Reward[3304237][1][5]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304237][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙血精石*1	1%	DragonBloodstone	3008994	1	非赠
	tGangs_InAugust_Reward[3304237][1][6] = {}
	tGangs_InAugust_Reward[3304237][1][6]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304237][1][6]["ItemChance"] = 100
	tGangs_InAugust_Reward[3304237][1][6]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304237][1][6]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304237][1][6]["RewardItem"][1]["Id"] = 3008994
	tGangs_InAugust_Reward[3304237][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304237][1][6]["Log"] = "0,0,3304237,1,12000779,2,3008994,1"
	tGangs_InAugust_Reward[3304237][1][6]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304237][1][6]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3304238,'200积分粉丝礼包'
	tGangs_InAugust_Reward[3304238] = {}
	tGangs_InAugust_Reward[3304238][1] = {}
	tGangs_InAugust_Reward[3304238][1]["ItemChanceSum"] = 10000
	-- 明亮星陨石*2	20%	BrightStarStone*2	3009001	2	不可交易，两天内激活有效	
	tGangs_InAugust_Reward[3304238][1][1] = {}
	tGangs_InAugust_Reward[3304238][1][1]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304238][1][1]["ItemChance"] = 2000
	tGangs_InAugust_Reward[3304238][1][1]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304238][1][1]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304238][1][1]["RewardItem"][1]["Id"] = 3009001
	tGangs_InAugust_Reward[3304238][1][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tGangs_InAugust_Reward[3304238][1][1]["Log"] = "0,0,3304238,1,12000779,2,3009001,2"
	tGangs_InAugust_Reward[3304238][1][1]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304238][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 经验保护丹*2赠	20%	EXPCarePill(B)*2	3300795	1	赠	 改给： 3002559*2 赠
	tGangs_InAugust_Reward[3304238][1][2] = {}
	tGangs_InAugust_Reward[3304238][1][2]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304238][1][2]["ItemChance"] = 2000
	tGangs_InAugust_Reward[3304238][1][2]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304238][1][2]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304238][1][2]["RewardItem"][1]["Id"] = 3002559
	tGangs_InAugust_Reward[3304238][1][2]["RewardItem"][1]["Attr"] = "0 2 3"
	tGangs_InAugust_Reward[3304238][1][2]["Log"] = "0,0,3304238,1,12000779,2,3002559,2"
	tGangs_InAugust_Reward[3304238][1][2]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304238][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 修行值500点赠	20%	ModestyBook(B)	723342	1	赠	
	tGangs_InAugust_Reward[3304238][1][3] = {}
	tGangs_InAugust_Reward[3304238][1][3]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304238][1][3]["ItemChance"] = 2000
	tGangs_InAugust_Reward[3304238][1][3]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304238][1][3]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304238][1][3]["RewardItem"][1]["Id"] = 723342
	tGangs_InAugust_Reward[3304238][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tGangs_InAugust_Reward[3304238][1][3]["Log"] = "0,0,3304238,1,12000779,2,723342,1"
	tGangs_InAugust_Reward[3304238][1][3]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304238][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 马匹+2赠*2	20%	+2SteedPack(B)*2	3007031	2	赠	
	tGangs_InAugust_Reward[3304238][1][4] = {}
	tGangs_InAugust_Reward[3304238][1][4]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304238][1][4]["ItemChance"] = 2000
	tGangs_InAugust_Reward[3304238][1][4]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304238][1][4]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304238][1][4]["RewardItem"][1]["Id"] = 3007031
	tGangs_InAugust_Reward[3304238][1][4]["RewardItem"][1]["Attr"] = "0 2"
	tGangs_InAugust_Reward[3304238][1][4]["Log"] = "0,0,3304238,1,12000779,2,3007031,2"
	tGangs_InAugust_Reward[3304238][1][4]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304238][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 强效护心丹*3赠	19%	SuperProtectionPill(B)*3	3002030	3	赠	
	tGangs_InAugust_Reward[3304238][1][5] = {}
	tGangs_InAugust_Reward[3304238][1][5]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304238][1][5]["ItemChance"] = 1900
	tGangs_InAugust_Reward[3304238][1][5]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304238][1][5]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304238][1][5]["RewardItem"][1]["Id"] = 3002030
	tGangs_InAugust_Reward[3304238][1][5]["RewardItem"][1]["Attr"] = "0 3"
	tGangs_InAugust_Reward[3304238][1][5]["Log"] = "0,0,3304238,1,12000779,2,3002030,3"
	tGangs_InAugust_Reward[3304238][1][5]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304238][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+3*1赠	1%	+3 Stone(B)	730003	1	赠	限定单服每天最多10个，给完给明亮星陨石*2
	tGangs_InAugust_Reward[3304238][1][6] = {}
	tGangs_InAugust_Reward[3304238][1][6]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304238][1][6]["ItemChance"] = 100
	tGangs_InAugust_Reward[3304238][1][6]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304238][1][6]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304238][1][6]["RewardItem"][1]["Id"] = 730003
	tGangs_InAugust_Reward[3304238][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tGangs_InAugust_Reward[3304238][1][6]["Log"] = "0,0,3304238,1,12000779,2,730003,1"
	tGangs_InAugust_Reward[3304238][1][6]["GlobalId"] = 80186
	tGangs_InAugust_Reward[3304238][1][6]["Pos"] = 0
	tGangs_InAugust_Reward[3304238][1][6]["MaxData"] = 10
	tGangs_InAugust_Reward[3304238][1][6]["FullIndex"] = 1
	tGangs_InAugust_Reward[3304238][1][6]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304238][1][6]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3304239,'500积分粉丝礼包'
	tGangs_InAugust_Reward[3304239] = {}
	tGangs_InAugust_Reward[3304239][1] = {}
	tGangs_InAugust_Reward[3304239][1]["ItemChanceSum"] = 10000
	-- 明亮星陨石*5	20%	BrightStarStone*5	3009001	5	不可交易，两天内激活有效	
	tGangs_InAugust_Reward[3304239][1][1] = {}
	tGangs_InAugust_Reward[3304239][1][1]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304239][1][1]["ItemChance"] = 2000
	tGangs_InAugust_Reward[3304239][1][1]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304239][1][1]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304239][1][1]["RewardItem"][1]["Id"] = 3009001
	tGangs_InAugust_Reward[3304239][1][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tGangs_InAugust_Reward[3304239][1][1]["Log"] = "0,0,3304239,1,12000779,2,3009001,5"
	tGangs_InAugust_Reward[3304239][1][1]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304239][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 星月宝盒*1赠	20%	DazzlingDiamondBox(B)	3008732	1	赠	
	tGangs_InAugust_Reward[3304239][1][2] = {}
	tGangs_InAugust_Reward[3304239][1][2]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304239][1][2]["ItemChance"] = 2000
	tGangs_InAugust_Reward[3304239][1][2]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304239][1][2]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304239][1][2]["RewardItem"][1]["Id"] = 3008732
	tGangs_InAugust_Reward[3304239][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304239][1][2]["Log"] = "0,0,3304239,1,12000779,2,3008732,1"
	tGangs_InAugust_Reward[3304239][1][2]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304239][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 秘制免费修炼丹*5赠	20%	FreeTrainingPill(B)*5	3002926	5	赠	
	tGangs_InAugust_Reward[3304239][1][3] = {}
	tGangs_InAugust_Reward[3304239][1][3]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304239][1][3]["ItemChance"] = 2000
	tGangs_InAugust_Reward[3304239][1][3]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304239][1][3]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304239][1][3]["RewardItem"][1]["Id"] = 3002926
	tGangs_InAugust_Reward[3304239][1][3]["RewardItem"][1]["Attr"] = "0 5"
	tGangs_InAugust_Reward[3304239][1][3]["Log"] = "0,0,3304239,1,12000779,2,3002926,5"
	tGangs_InAugust_Reward[3304239][1][3]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304239][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 通神丹*5赠	20%	SpecialTrainingPill(B)*5	3003125	5	赠	
	tGangs_InAugust_Reward[3304239][1][4] = {}
	tGangs_InAugust_Reward[3304239][1][4]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304239][1][4]["ItemChance"] = 2000
	tGangs_InAugust_Reward[3304239][1][4]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304239][1][4]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304239][1][4]["RewardItem"][1]["Id"] = 3003125
	tGangs_InAugust_Reward[3304239][1][4]["RewardItem"][1]["Attr"] = "0 5 3"
	tGangs_InAugust_Reward[3304239][1][4]["Log"] = "0,0,3304239,1,12000779,2,3003125,5"
	tGangs_InAugust_Reward[3304239][1][4]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304239][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 回气丹*2赠	19%	VitalPill(B)*2	729481	2	赠	
	tGangs_InAugust_Reward[3304239][1][5] = {}
	tGangs_InAugust_Reward[3304239][1][5]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304239][1][5]["ItemChance"] = 1900
	tGangs_InAugust_Reward[3304239][1][5]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304239][1][5]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304239][1][5]["RewardItem"][1]["Id"] = 729481
	tGangs_InAugust_Reward[3304239][1][5]["RewardItem"][1]["Attr"] = "0 2"
	tGangs_InAugust_Reward[3304239][1][5]["Log"] = "0,0,3304239,1,12000779,2,729481,2"
	tGangs_InAugust_Reward[3304239][1][5]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304239][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤令（小）*1	1%	Sash(S)	722840	1	非赠	限定单服每天最多10个，给完给明亮星陨石*5
	tGangs_InAugust_Reward[3304239][1][6] = {}
	tGangs_InAugust_Reward[3304239][1][6]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304239][1][6]["ItemChance"] = 100
	tGangs_InAugust_Reward[3304239][1][6]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304239][1][6]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304239][1][6]["RewardItem"][1]["Id"] = 722840
	tGangs_InAugust_Reward[3304239][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304239][1][6]["Log"] = "0,0,3304239,1,12000779,2,722840,1"
	tGangs_InAugust_Reward[3304239][1][6]["GlobalId"] = 80186
	tGangs_InAugust_Reward[3304239][1][6]["Pos"] = 1
	tGangs_InAugust_Reward[3304239][1][6]["MaxData"] = 10
	tGangs_InAugust_Reward[3304239][1][6]["FullIndex"] = 1
	tGangs_InAugust_Reward[3304239][1][6]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304239][1][6]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3304240,'1000积分粉丝礼包'
	tGangs_InAugust_Reward[3304240] = {}
	tGangs_InAugust_Reward[3304240][1] = {}
	tGangs_InAugust_Reward[3304240][1]["ItemChanceSum"] = 10000
	-- 明亮星陨石*8	30%	BrightStarStone*8	3009001	8	不可交易，两天内激活有效	
	tGangs_InAugust_Reward[3304240][1][1] = {}
	tGangs_InAugust_Reward[3304240][1][1]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304240][1][1]["ItemChance"] = 3000
	tGangs_InAugust_Reward[3304240][1][1]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304240][1][1]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304240][1][1]["RewardItem"][1]["Id"] = 3009001
	tGangs_InAugust_Reward[3304240][1][1]["RewardItem"][1]["Attr"] = "0 8 0 2880 1"
	tGangs_InAugust_Reward[3304240][1][1]["Log"] = "0,0,3304240,1,12000779,2,3009001,8"
	tGangs_InAugust_Reward[3304240][1][1]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304240][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 战鼓熊猫绑定神佑（7天）/	23%	1% Blessed DrummerPanda(B)(7-days)	200476	1	1%神佑赠品，7天时效	
	tGangs_InAugust_Reward[3304240][1][2] = {}
	tGangs_InAugust_Reward[3304240][1][2]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304240][1][2]["ItemChance"] = 2300
	tGangs_InAugust_Reward[3304240][1][2]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304240][1][2]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304240][1][2]["RewardItem"][1]["Id"] = 200476
	tGangs_InAugust_Reward[3304240][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGangs_InAugust_Reward[3304240][1][2]["Log"] = "0,0,3304240,1,12000779,2,200476,1"
	tGangs_InAugust_Reward[3304240][1][2]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304240][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 绣春飞鱼服绑定神佑（7天）	23%	1% Blessed FlyingFishSuit(B)(7-days)	189075	1	1%神佑赠品，7天时效	
	tGangs_InAugust_Reward[3304240][1][3] = {}
	tGangs_InAugust_Reward[3304240][1][3]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304240][1][3]["ItemChance"] = 2300
	tGangs_InAugust_Reward[3304240][1][3]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304240][1][3]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304240][1][3]["RewardItem"][1]["Id"] = 189075
	tGangs_InAugust_Reward[3304240][1][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tGangs_InAugust_Reward[3304240][1][3]["Log"] = "0,0,3304240,1,12000779,2,189075,1"
	tGangs_InAugust_Reward[3304240][1][3]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304240][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 大爆丹*2赠	23%	SeniorTrainingPill(B)*2	3003126	2	赠	
	tGangs_InAugust_Reward[3304240][1][4] = {}
	tGangs_InAugust_Reward[3304240][1][4]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304240][1][4]["ItemChance"] = 2300
	tGangs_InAugust_Reward[3304240][1][4]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304240][1][4]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304240][1][4]["RewardItem"][1]["Id"] = 3003126
	tGangs_InAugust_Reward[3304240][1][4]["RewardItem"][1]["Attr"] = "0 2 3"
	tGangs_InAugust_Reward[3304240][1][4]["Log"] = "0,0,3304240,1,12000779,2,3003126,1"
	tGangs_InAugust_Reward[3304240][1][4]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304240][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠*1赠	0.5%	DraognBall(B)	1088000	1	赠	限定活动期间单服就10个,，给完给明亮星陨石*8
	tGangs_InAugust_Reward[3304240][1][5] = {}
	tGangs_InAugust_Reward[3304240][1][5]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304240][1][5]["ItemChance"] = 50
	tGangs_InAugust_Reward[3304240][1][5]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304240][1][5]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304240][1][5]["RewardItem"][1]["Id"] = 1088000
	tGangs_InAugust_Reward[3304240][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tGangs_InAugust_Reward[3304240][1][5]["Log"] = "0,0,3304240,1,12000779,2,1088000,1"
	tGangs_InAugust_Reward[3304240][1][5]["GlobalId"] = 80186
	tGangs_InAugust_Reward[3304240][1][5]["Pos"] = 2
	tGangs_InAugust_Reward[3304240][1][5]["MaxData"] = 10
	tGangs_InAugust_Reward[3304240][1][5]["FullIndex"] = 1
	tGangs_InAugust_Reward[3304240][1][5]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304240][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质玄元宝石赠	0.39%	TortoiseGem(B)	700073	1	赠	限定活动期间单服就3个，给完给明亮星陨石*8
	tGangs_InAugust_Reward[3304240][1][6] = {}
	tGangs_InAugust_Reward[3304240][1][6]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304240][1][6]["ItemChance"] = 39
	tGangs_InAugust_Reward[3304240][1][6]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304240][1][6]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304240][1][6]["RewardItem"][1]["Id"] = 700073
	tGangs_InAugust_Reward[3304240][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tGangs_InAugust_Reward[3304240][1][6]["Log"] = "0,0,3304240,1,12000779,2,700073,1"
	tGangs_InAugust_Reward[3304240][1][6]["GlobalId"] = 80186
	tGangs_InAugust_Reward[3304240][1][6]["Pos"] = 3
	tGangs_InAugust_Reward[3304240][1][6]["MaxData"] = 3
	tGangs_InAugust_Reward[3304240][1][6]["FullIndex"] = 1
	tGangs_InAugust_Reward[3304240][1][6]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304240][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 金刚坚钻赠	0.10%	 ToughDrill(B)	1200005	1	赠	限定活动期间单服就1个，给完给明亮星陨石*8
	tGangs_InAugust_Reward[3304240][1][7] = {}
	tGangs_InAugust_Reward[3304240][1][7]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304240][1][7]["ItemChance"] = 10
	tGangs_InAugust_Reward[3304240][1][7]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304240][1][7]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304240][1][7]["RewardItem"][1]["Id"] = 1200005
	tGangs_InAugust_Reward[3304240][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tGangs_InAugust_Reward[3304240][1][7]["Log"] = "0,0,3304240,1,12000779,2,1200005,1"
	tGangs_InAugust_Reward[3304240][1][7]["GlobalId"] = 80186
	tGangs_InAugust_Reward[3304240][1][7]["Pos"] = 4
	tGangs_InAugust_Reward[3304240][1][7]["MaxData"] = 1
	tGangs_InAugust_Reward[3304240][1][7]["FullIndex"] = 1
	tGangs_InAugust_Reward[3304240][1][7]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304240][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+6赠	0.01%	+6 Stone(B)	730006	1	赠	限定活动期间单服就1个，给完给明亮星陨石*8
	tGangs_InAugust_Reward[3304240][1][8] = {}
	tGangs_InAugust_Reward[3304240][1][8]["RandomItemChanceType"] = 2
	tGangs_InAugust_Reward[3304240][1][8]["ItemChance"] = 1
	tGangs_InAugust_Reward[3304240][1][8]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304240][1][8]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304240][1][8]["RewardItem"][1]["Id"] = 730006
	tGangs_InAugust_Reward[3304240][1][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tGangs_InAugust_Reward[3304240][1][8]["Log"] = "0,0,3304240,1,12000779,2,730006,1"
	tGangs_InAugust_Reward[3304240][1][8]["GlobalId"] = 80186
	tGangs_InAugust_Reward[3304240][1][8]["Pos"] = 5
	tGangs_InAugust_Reward[3304240][1][8]["MaxData"] = 1
	tGangs_InAugust_Reward[3304240][1][8]["FullIndex"] = 1
	tGangs_InAugust_Reward[3304240][1][8]["RewardBroadCast"] = tGangs_InAugust_Text["AllBroad"]
	tGangs_InAugust_Reward[3304240][1][8]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304240][1][8]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3304242,'9999朵玫瑰',
	tGangs_InAugust_Reward[3304242] = {}
	tGangs_InAugust_Reward[3304242]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304242]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304242]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304242]["DeleteItem"][1]["Id"] = 3304242
	tGangs_InAugust_Reward[3304242]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304242]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304242]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304242]["RewardItem"][1]["Id"] = 751999
	tGangs_InAugust_Reward[3304242]["RewardItem"][1]["Attr"] = "0 10"
	tGangs_InAugust_Reward[3304242]["RewardItem"][2] = {}
	tGangs_InAugust_Reward[3304242]["RewardItem"][2]["Id"] = 751009
	tGangs_InAugust_Reward[3304242]["RewardItem"][2]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304242]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304242]["RewardEffect"]["Effect"] = "angelwing"
	-- 3304243,'9999朵百合',
	tGangs_InAugust_Reward[3304243] = {}
	tGangs_InAugust_Reward[3304243]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304243]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304243]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304243]["DeleteItem"][1]["Id"] = 3304243
	tGangs_InAugust_Reward[3304243]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304243]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304243]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304243]["RewardItem"][1]["Id"] = 752999
	tGangs_InAugust_Reward[3304243]["RewardItem"][1]["Attr"] = "0 10"
	tGangs_InAugust_Reward[3304243]["RewardItem"][2] = {}
	tGangs_InAugust_Reward[3304243]["RewardItem"][2]["Id"] = 752009
	tGangs_InAugust_Reward[3304243]["RewardItem"][2]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304243]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304243]["RewardEffect"]["Effect"] = "angelwing"
	-- 3304244,'9999朵兰花',
	tGangs_InAugust_Reward[3304244] = {}
	tGangs_InAugust_Reward[3304244]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304244]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304244]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304244]["DeleteItem"][1]["Id"] = 3304244
	tGangs_InAugust_Reward[3304244]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304244]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304244]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304244]["RewardItem"][1]["Id"] = 753999
	tGangs_InAugust_Reward[3304244]["RewardItem"][1]["Attr"] = "0 10"
	tGangs_InAugust_Reward[3304244]["RewardItem"][2] = {}
	tGangs_InAugust_Reward[3304244]["RewardItem"][2]["Id"] = 753009
	tGangs_InAugust_Reward[3304244]["RewardItem"][2]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304244]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304244]["RewardEffect"]["Effect"] = "angelwing"
	-- 3304245,'9999朵郁金香
	tGangs_InAugust_Reward[3304245] = {}
	tGangs_InAugust_Reward[3304245]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304245]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304245]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304245]["DeleteItem"][1]["Id"] = 3304245
	tGangs_InAugust_Reward[3304245]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304245]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304245]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304245]["RewardItem"][1]["Id"] = 754999
	tGangs_InAugust_Reward[3304245]["RewardItem"][1]["Attr"] = "0 10"
	tGangs_InAugust_Reward[3304245]["RewardItem"][2] = {}
	tGangs_InAugust_Reward[3304245]["RewardItem"][2]["Id"] = 754009
	tGangs_InAugust_Reward[3304245]["RewardItem"][2]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304245]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304245]["RewardEffect"]["Effect"] = "angelwing"

	-- 3304418,'99朵鲜花礼盒'
	tGangs_InAugust_Reward[3304418] = {}
	tGangs_InAugust_Reward[3304418][1] = {}
	tGangs_InAugust_Reward[3304418][1]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304418][1]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304418][1]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304418][1]["DeleteItem"][1]["Id"] = 3304418
	tGangs_InAugust_Reward[3304418][1]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304418][1]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304418][1]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304418][1]["RewardItem"][1]["Id"] = 751099
	tGangs_InAugust_Reward[3304418][1]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304418][1]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304418][1]["RewardEffect"]["Effect"] = "angelwing"
	tGangs_InAugust_Reward[3304418][2] = {}
	tGangs_InAugust_Reward[3304418][2]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304418][2]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304418][2]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304418][2]["DeleteItem"][1]["Id"] = 3304418
	tGangs_InAugust_Reward[3304418][2]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304418][2]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304418][2]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304418][2]["RewardItem"][1]["Id"] = 752099
	tGangs_InAugust_Reward[3304418][2]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304418][2]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304418][2]["RewardEffect"]["Effect"] = "angelwing"
	tGangs_InAugust_Reward[3304418][3] = {}
	tGangs_InAugust_Reward[3304418][3]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304418][3]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304418][3]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304418][3]["DeleteItem"][1]["Id"] = 3304418
	tGangs_InAugust_Reward[3304418][3]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304418][3]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304418][3]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304418][3]["RewardItem"][1]["Id"] = 753099
	tGangs_InAugust_Reward[3304418][3]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304418][3]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304418][3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3304419,'999朵鲜花礼盒'
	tGangs_InAugust_Reward[3304419] = {}
	tGangs_InAugust_Reward[3304419][1] = {}
	tGangs_InAugust_Reward[3304419][1]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304419][1]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304419][1]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304419][1]["DeleteItem"][1]["Id"] = 3304419
	tGangs_InAugust_Reward[3304419][1]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304419][1]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304419][1]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304419][1]["RewardItem"][1]["Id"] = 751999
	tGangs_InAugust_Reward[3304419][1]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304419][1]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304419][1]["RewardEffect"]["Effect"] = "angelwing"
	tGangs_InAugust_Reward[3304419][2] = {}
	tGangs_InAugust_Reward[3304419][2]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304419][2]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304419][2]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304419][2]["DeleteItem"][1]["Id"] = 3304419
	tGangs_InAugust_Reward[3304419][2]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304419][2]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304419][2]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304419][2]["RewardItem"][1]["Id"] = 752999
	tGangs_InAugust_Reward[3304419][2]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304419][2]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304419][2]["RewardEffect"]["Effect"] = "angelwing"
	tGangs_InAugust_Reward[3304419][3] = {}
	tGangs_InAugust_Reward[3304419][3]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304419][3]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304419][3]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304419][3]["DeleteItem"][1]["Id"] = 3304419
	tGangs_InAugust_Reward[3304419][3]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304419][3]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304419][3]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304419][3]["RewardItem"][1]["Id"] = 753999
	tGangs_InAugust_Reward[3304419][3]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304419][3]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304419][3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3304420,'9999朵鲜花礼盒'
	tGangs_InAugust_Reward[3304420] = {}
	tGangs_InAugust_Reward[3304420][1] = {}
	tGangs_InAugust_Reward[3304420][1]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304420][1]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304420][1]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304420][1]["DeleteItem"][1]["Id"] = 3304420
	tGangs_InAugust_Reward[3304420][1]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304420][1]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304420][1]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304420][1]["RewardItem"][1]["Id"] = 3304242
	tGangs_InAugust_Reward[3304420][1]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304420][1]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304420][1]["RewardEffect"]["Effect"] = "angelwing"
	tGangs_InAugust_Reward[3304420][2] = {}
	tGangs_InAugust_Reward[3304420][2]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304420][2]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304420][2]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304420][2]["DeleteItem"][1]["Id"] = 3304420
	tGangs_InAugust_Reward[3304420][2]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304420][2]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304420][2]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304420][2]["RewardItem"][1]["Id"] = 3304243
	tGangs_InAugust_Reward[3304420][2]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304420][2]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304420][2]["RewardEffect"]["Effect"] = "angelwing"
	tGangs_InAugust_Reward[3304420][3] = {}
	tGangs_InAugust_Reward[3304420][3]["LogId"] = 12000779
	tGangs_InAugust_Reward[3304420][3]["DeleteItem"] = {}
	tGangs_InAugust_Reward[3304420][3]["DeleteItem"][1] = {}
	tGangs_InAugust_Reward[3304420][3]["DeleteItem"][1]["Id"] = 3304420
	tGangs_InAugust_Reward[3304420][3]["DeleteItem"][1]["SaveTime"] = 0
	tGangs_InAugust_Reward[3304420][3]["RewardItem"] = {}
	tGangs_InAugust_Reward[3304420][3]["RewardItem"][1] = {}
	tGangs_InAugust_Reward[3304420][3]["RewardItem"][1]["Id"] = 3304244
	tGangs_InAugust_Reward[3304420][3]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_Reward[3304420][3]["RewardEffect"] = {}
	tGangs_InAugust_Reward[3304420][3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 兑换粉丝礼包
local tGangs_InAugust_ScoreExchange = {}
	-- 3304237,'50积分粉丝礼包',
	tGangs_InAugust_ScoreExchange[3304237] = {}
	tGangs_InAugust_ScoreExchange[3304237]["FansScore"] = 50
	tGangs_InAugust_ScoreExchange[3304237]["LogId"] = 12000779
	tGangs_InAugust_ScoreExchange[3304237]["RewardItem"] = {}
	tGangs_InAugust_ScoreExchange[3304237]["RewardItem"][1] = {}
	tGangs_InAugust_ScoreExchange[3304237]["RewardItem"][1]["Id"] = 3304237
	tGangs_InAugust_ScoreExchange[3304237]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_ScoreExchange[3304237]["RewardEffect"] = {}
	tGangs_InAugust_ScoreExchange[3304237]["RewardEffect"]["Effect"] = "angelwing"
	-- 3304238,'200积分粉丝礼包'
	tGangs_InAugust_ScoreExchange[3304238] = {}
	tGangs_InAugust_ScoreExchange[3304238]["FansScore"] = 200
	tGangs_InAugust_ScoreExchange[3304238]["LogId"] = 12000779
	tGangs_InAugust_ScoreExchange[3304238]["RewardItem"] = {}
	tGangs_InAugust_ScoreExchange[3304238]["RewardItem"][1] = {}
	tGangs_InAugust_ScoreExchange[3304238]["RewardItem"][1]["Id"] = 3304238
	tGangs_InAugust_ScoreExchange[3304238]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_ScoreExchange[3304238]["RewardEffect"] = {}
	tGangs_InAugust_ScoreExchange[3304238]["RewardEffect"]["Effect"] = "angelwing"
	-- 3304239,'500积分粉丝礼包'
	tGangs_InAugust_ScoreExchange[3304239] = {}
	tGangs_InAugust_ScoreExchange[3304239]["FansScore"] = 500
	tGangs_InAugust_ScoreExchange[3304239]["LogId"] = 12000779
	tGangs_InAugust_ScoreExchange[3304239]["RewardItem"] = {}
	tGangs_InAugust_ScoreExchange[3304239]["RewardItem"][1] = {}
	tGangs_InAugust_ScoreExchange[3304239]["RewardItem"][1]["Id"] = 3304239
	tGangs_InAugust_ScoreExchange[3304239]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_ScoreExchange[3304239]["RewardEffect"] = {}
	tGangs_InAugust_ScoreExchange[3304239]["RewardEffect"]["Effect"] = "angelwing"
	-- 3304240,'1000积分粉丝礼包
	tGangs_InAugust_ScoreExchange[3304240] = {}
	tGangs_InAugust_ScoreExchange[3304240]["FansScore"] = 1000
	tGangs_InAugust_ScoreExchange[3304240]["LogId"] = 12000779
	tGangs_InAugust_ScoreExchange[3304240]["RewardItem"] = {}
	tGangs_InAugust_ScoreExchange[3304240]["RewardItem"][1] = {}
	tGangs_InAugust_ScoreExchange[3304240]["RewardItem"][1]["Id"] = 3304240
	tGangs_InAugust_ScoreExchange[3304240]["RewardItem"][1]["Attr"] = "0 1"
	tGangs_InAugust_ScoreExchange[3304240]["RewardEffect"] = {}
	tGangs_InAugust_ScoreExchange[3304240]["RewardEffect"]["Effect"] = "angelwing"
	
--------------------------------------逻辑部分-------------------------------------------
-- 获取掩码值
function Gangs_InAugust_GetStcValue(nIndex)
	local nEvent = tGangs_InAugust_Stc[nIndex]["EventType"]
	local nType = tGangs_InAugust_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	return nData
end

--设置掩码值
function Gangs_InAugust_SetStcValue(nIndex,nType,nData)
	local nEvent = tGangs_InAugust_Stc[nIndex]["EventType"]
	local nEventType = tGangs_InAugust_Stc[nIndex]["DataType"]
	
	if nType == 1 then
		Task_SetStatistic(nEvent,nEventType,nData,1)
		Task_SetStcTimestamp(nEvent,nEventType,0)
	else
		Task_AddStatistic(nEvent,nEventType,nData,1)
		Task_SetStcTimestamp(nEvent,nEventType,0)
	end
end

-- -查找背包中的物品数量
function Gangs_InAugust_FindBagItem(nItemId,nGiveType)
	local nFindNum = 0
	local nMaxSpace = tGangs_InAugust_Count["MaxSpace"]
	local nMonopoly = tGangs_InAugust_OutText[nGiveType]["Monopoly"]
	local nSaveTime = tGangs_InAugust_OutText[nGiveType]["SaveTime"]
	
	for j = 1,nMaxSpace do
		if Item_ChkMulItem(nItemId,nItemId,j,nMonopoly,0,0,nSaveTime) then
			nFindNum = j
		else
			break
		end
	end
	return nFindNum
end
---------------------------------------------------活动大使 21977
-- 前往比赛现场
function Gangs_InAugust_EnterPage(nNpcId)
	User_SendWebDialog(tGangs_InAugust_Text["Web"][nNpcId])
end

-- 打开天石商店
function Gangs_InAugust_OpenDialog(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tGangs_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 点击打开天石商店
	User_OpenDialog(0,nNpcId)
end

-- 报名前置判断
function Gangs_InAugust_Judgy(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tGangs_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-9")
		return false
	end
	
	-- 未加入帮派
	local nGuildId = Get_UserGuildId()
	if nGuildId == 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return false
	end
	
	-- 玩家并非帮主
	local nSynWandId = Get_SynWangId(nGuildId)
	local nUserId = Get_UserId()
	if nUserId ~= nSynWandId then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return false
	end
	
	-- 帮派已报名
	for i,v in pairs(tGangs_InAugust_Data["JoinIn"]) do
		if v.GuildId == nGuildId then
			LinkNpcGossipFunc_New(nNpcId,"4-2")
			return false
		end
	end
	
	-- 参赛名额超过50名
	local nJoinNum = tGangs_InAugust_Data["Num"]
	if nJoinNum >= tGangs_InAugust_Count["JoinMaxNum"] then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return false
	end
	return true
end

-- 报名参赛
function Gangs_InAugust_JoinIn(nNpcId)
	-- 前置判断
	if not Gangs_InAugust_Judgy(nNpcId) then
		return
	end
	
	-- 【接1，玩家是帮主，NPC对白】
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 1、99天石报名参赛。
function Gangs_InAugust_EmoneyJoin(nNpcId)
	-- 前置判断
	if not Gangs_InAugust_Judgy(nNpcId) then
		return
	end
	
	-- 天石不足
	local nUserEMoney = Get_UserEMoney()
	local nEMoney = tGangs_InAugust_Count["EMoney"]
	if nUserEMoney < nEMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 二次确认
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

-- 99天石报名参赛二次确认
function Gangs_InAugust_SureEmoneyJoin(nNpcId)
	-- 前置判断
	if not Gangs_InAugust_Judgy(nNpcId) then
		return
	end
	
	-- 天石不足
	local nUserEMoney = Get_UserEMoney()
	local nEMoney = tGangs_InAugust_Count["EMoney"]
	if nUserEMoney < nEMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	if not User_AddEMoney(-nEMoney) then
		return
	end
	-- 设置报名记录
	local nNum = tGangs_InAugust_Data["Num"]+1
	-- 刷新Num
	Gangs_InAugust_Refresh(nNum)
	
	-- 报名LOG
	Sys_SaveEmoneyBuy(tGangs_InAugust_Log["EMoneyLog"])
	Sys_SaveActionRewardLog(tGangs_InAugust_Log["EMoneyJoinLog"])
	
	-- 公告
	Gangs_InAugust_BroadCast()
	
	-- 成功报名
	local sText = tGangs_InAugust_Text[nNpcId]["Text241"]
	tNpcGossip[nNpcId]["Text241"] = string.format(sText,nNum)
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

-- 公告
function Gangs_InAugust_BroadCast()
	local nIndex = Get_UserSex()
	local nUserId = Get_UserId()
	local nGuildId = Get_UserGuildId(nUserId)
	local sText = tGangs_InAugust_Text["SuccessJoin"][nIndex]
	local sUserName = Get_UserName(nUserId)
	local sGuildName = Get_UserSynDicateName(nGuildId)
	Sys_SystemBroadcast(string.format(sText,sGuildName,sUserName))
end

-- 2、1000万银两报名参赛。
function Gangs_InAugust_MoneyJoin(nNpcId)
	-- 前置判断
	if not Gangs_InAugust_Judgy(nNpcId) then
		return
	end
	
	-- 银两不足
	local nMoney = tGangs_InAugust_Count["Money"]
	if not User_CanPutMoney2Bag(-nMoney) then
		LinkNpcGossipFunc_New(nNpcId,"2-8")
		return
	end
	
	-- 二次确认
	LinkNpcGossipFunc_New(nNpcId,"2-6")
end

--1000万银两报名参赛二次确认
function Gangs_InAugust_SureMoneyJoin(nNpcId)
	-- 前置判断
	if not Gangs_InAugust_Judgy(nNpcId) then
		return
	end
	
	-- 银两不足
	local nMoney = tGangs_InAugust_Count["Money"]
	if not User_CanPutMoney2Bag(-nMoney) then
		LinkNpcGossipFunc_New(nNpcId,"2-8")
		return
	end
	
	if not User_AddMoney(-nMoney) then
		return
	end
	
	-- 设置报名记录
	local nNum = tGangs_InAugust_Data["Num"]+1
	-- 刷新Num
	Gangs_InAugust_Refresh(nNum)
	
	-- 报名LOG
	Sys_SaveEmoneyBuy(tGangs_InAugust_Log["MoneyLog"])
	Sys_SaveActionRewardLog(tGangs_InAugust_Log["MoneyJoinLog"])
	
	-- 公告
	Gangs_InAugust_BroadCast()
	
	-- 成功报名
	local sText = tGangs_InAugust_Text[nNpcId]["Text241"]
	tNpcGossip[nNpcId]["Text241"] = string.format(sText,nNum)
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

-- 刷新报名
function Gangs_InAugust_Refresh(nNum)
	local nUserId = Get_UserId()
	local nGuildId = Get_UserGuildId()
	local sUserName = Get_UserName(nUserId)
	local sGuildName = Get_UserSynDicateName(nGuildId)
	-- 表数据刷新
	tGangs_InAugust_Data["Num"] = nNum
	tGangs_InAugust_Data["JoinIn"][nNum] = {}
	tGangs_InAugust_Data["JoinIn"][nNum].Num = nNum
	tGangs_InAugust_Data["JoinIn"][nNum].GuildId = nGuildId
	tGangs_InAugust_Data["JoinIn"][nNum].GuildName = sGuildName
	tGangs_InAugust_Data["JoinIn"][nNum].UserId = nUserId
	tGangs_InAugust_Data["JoinIn"][nNum].UserName = sUserName
	
	-- 刷新动态码
	local nGlobalNumId = tGangs_InAugust_Count["GlobalId"]
	Sys_SetSynaGlobalData(nGlobalNumId,0,nNum)
	
	local nGlobalId = tGangs_InAugust_GlobalPos[nNum][1]
	local nPos = tGangs_InAugust_GlobalPos[nNum][2]
	Sys_SetSynaGlobalData(nGlobalId,nPos,nNum)
	Sys_SetSynaGlobalData(nGlobalId,nPos+1,nGuildId)
	Sys_SetSynaGlobalData(nGlobalId,nPos+2,nUserId)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,sGuildName)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos+2,sUserName)
end
---------------------------------------------------献花投票大使 21978
-- 上交花朵
function Gangs_InAugust_GiveItem(nNpcId,nType)
	-- 活动后
	if not Sys_ChkFullTime(tGangs_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local bExist = false
	local nMonopoly = tGangs_InAugust_OutText[1]["Monopoly"]
	local nSaveTime = tGangs_InAugust_OutText[1]["SaveTime"]
	for i,v in pairs(tGangs_InAugust_Flower[nType]) do
		if Item_ChkMulItem(v,v,1,nMonopoly,nSash,nUserId,nSaveTime) then
			bExist = true
		end
	end
	
	-- 【接1至4，玩家没有鲜花，NPC对白】
	local sName = tGangs_InAugust_Text["Type"][nType]
	if not bExist then
		local sText = tGangs_InAugust_Text[nNpcId]["Text211"]
		tNpcGossip[nNpcId]["Text211"] = string.format(sText,sName)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	-- 玩家上交类型
	local nUserId = Get_UserId()
	tGangs_InAugust_Data["Flower"][nUserId] = nType
	
	local sText = tGangs_InAugust_Text[nNpcId]["Text221"]
	tNpcGossip[nNpcId]["Text221"] = string.format(sText,sName)
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 输入框
function Gangs_InAugust_HangItem(nNpcId,nGiveType,nIndex)
	-- 活动后
	if not Sys_ChkFullTime(tGangs_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	-- 上交物品id
	local nUserId = Get_UserId()
	local sItemName = ""
	local nItemId = 0
	if nGiveType == 1 then
		local nType = tGangs_InAugust_Data["Flower"][nUserId]
		nItemId = tGangs_InAugust_Flower[nType][nIndex]
		sItemName = Get_ItemtypeName(nItemId)
	elseif nGiveType == 2 then
		local nType = tGangs_InAugust_Data["Gems"][nUserId]
		nItemId = tGangs_InAugust_Gems[nIndex]
		sItemName = Get_ItemtypeName(nItemId)
	elseif nGiveType == 3 then
		nItemId = tGangs_InAugust_Count["MeteorId"]
		sItemName = Get_ItemtypeName(nItemId)
	else
		sItemName = tGangs_InAugust_Text[nNpcId]["Name"]
	end
	-- 文字
	local sText = tGangs_InAugust_Text[nNpcId]["Text231"]
	local sShowText = string.format(sText,sItemName)
	-- 输入
	local sInpuIndex = tGangs_InAugust_OutText[nGiveType]["Input"]
	local sInput = tGangs_InAugust_Text[nNpcId][sInpuIndex]
	
	Sys_DialogText(sShowText)
	Sys_DialogOptEdit(sInput,tGangs_InAugust_Count["Length"],"Gangs_InAugust_SureToSend</N>"..nNpcId.."</N>"..nGiveType.."</N>"..nIndex)
	if nGiveType <= 3 then
		Sys_DialogOption(tGangs_InAugust_Text[nNpcId]["Option231"],"</F>Gangs_InAugust_SureToSend</N>"..nNpcId.."</N>"..nGiveType.."</N>"..nIndex.."</N>"..0)
	end
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 输入确认
function Gangs_InAugust_SureToSend(nNpcId,nGiveType,nIndex,nSpecial)
	-- 活动后
	if not Sys_ChkFullTime(tGangs_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	-- 粉丝积分
	local nBasicScore = 0
	-- 扣除数量
	local nNumber = 0
	if nSpecial == nil then
		nNumber = tonumber(Get_SysAcceptStr())
	end
	local nUserId = Get_UserId()
	local sItemName = ""
	local nItemId = 0
	local nMaxNum = 40
	local nMoney = 0
	if nGiveType == 1 then
		local nType = tGangs_InAugust_Data["Flower"][nUserId]
		nItemId = tGangs_InAugust_Flower[nType][nIndex]
		nBasicScore = tGangs_InAugust_FansScore[nItemId]
	elseif nGiveType == 2 then
		nItemId = tGangs_InAugust_Gems[nIndex]
		nBasicScore = tGangs_InAugust_FansScore["Gems"]
	elseif nGiveType == 3 then
		nItemId = tGangs_InAugust_Count["MeteorId"]
		nBasicScore = tGangs_InAugust_FansScore[nItemId]
	else
		nItemId = 0
		nMaxNum = 210
		nBasicScore = tGangs_InAugust_FansScore["Money"]
		nMoney = tGangs_InAugust_Count["Money"]*nNumber
	end
	
	local sFunc = "Gangs_InAugust_HangItem</N>"..nNpcId.."</N>"..nGiveType.."</N>"..nIndex
	if (nSpecial == nil) and (nNumber == nil or type(nNumber) ~= "number" or nNumber%1 ~= 0 or nNumber <= 0 or nNumber > nMaxNum) then
		tNpcGossip[nNpcId]["OptionFunc261"] = sFunc
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	-- 数量不足
	local nMonopoly = tGangs_InAugust_OutText[nGiveType]["Monopoly"]
	local nSaveTime = tGangs_InAugust_OutText[nGiveType]["SaveTime"]
	if nItemId > 0 then
		sItemName = Get_ItemtypeName(nItemId)
		if nSpecial ~= nil then
			-- nNumber = Get_CountItemType(nItemId,0,nMonopoly)
			nNumber = Gangs_InAugust_FindBagItem(nItemId,nGiveType)
		end
		if not Item_ChkMulItem(nItemId,nItemId,nNumber,nMonopoly,0,0,nSaveTime) then
			local sText = tGangs_InAugust_Text[nNpcId]["Text381"]
			tNpcGossip[nNpcId]["Text381"] = string.format(sText,sItemName)
			local sDialog = tGangs_InAugust_OutText[nGiveType]["Back"]
			tNpcGossip[nNpcId]["OptionFunc381"] = "LinkNpcGossipFunc_New</N>"..nNpcId.."</S>"..sDialog
			LinkNpcGossipFunc_New(nNpcId,"3-8")
			return
		end
	else
		if not User_CanPutMoney2Bag(-nMoney) then
			local sDialog = tGangs_InAugust_OutText[nGiveType]["Back"]
			tNpcGossip[nNpcId]["OptionFunc341"] = "LinkNpcGossipFunc_New</N>"..nNpcId.."</S>"..sDialog
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return
		end
	end
	
	-- 扣除物品给积分
	local bGive = false
	local sLog = tGangs_InAugust_OutText[nGiveType]["Log"]
	local sNewLog = ""
	if nGiveType <= 3 then
		if Item_DelMulItem(nItemId,nItemId,nNumber,nMonopoly,0,0,nSaveTime) then
			bGive = true
			sNewLog = string.format(sLog,nItemId,nNumber)
		else
			return
		end
	else
		if not User_AddMoney(-1*nMoney) then
			return
		else
			bGive = true
			sNewLog = string.format(sLog,nMoney)
		end
	end
	
	-- 给奖励
	if bGive then
			-- 掩码值
			local nAddScore = nNumber*nBasicScore
			Gangs_InAugust_SetStcValue(1,2,nAddScore)
			
			Sys_SaveActionRewardLog(sNewLog)
			
			User_EffectAdd(tGangs_InAugust_Effect[1]["Effect"],tGangs_InAugust_Effect[1]["EffectObj"])
			
			-- 缴交9999朵花 公告
			if nGiveType == 1 and nIndex == 6 then
				local sText = tGangs_InAugust_Text["Give"]
				local sUserName = Get_UserName()
				Sys_SystemBroadcast(string.format(sText,sUserName,sItemName))
			end
			-- 提示
			local sTextIndex = tGangs_InAugust_OutText[nGiveType]["TextIndex"]
			local sText = tGangs_InAugust_Text[nNpcId][sTextIndex]
			if nGiveType <= 3 then
				tNpcGossip[nNpcId]["Text251"] = string.format(sText,nNumber,sItemName)
			else
				tNpcGossip[nNpcId]["Text251"] = string.format(sText,nNumber)
				local sMoneyJoinIn = tGangs_InAugust_Log["MoneyJoinIn"]
				Sys_SaveEmoneyBuy(string.format(sMoneyJoinIn,nMoney))
			end
			local sOtherText = tGangs_InAugust_Text[nNpcId]["Text252"]
			local nTotalNum = Gangs_InAugust_GetStcValue(1)
			tNpcGossip[nNpcId]["Text252"] = string.format(sOtherText,nAddScore,nTotalNum)
			
			-- 继续上交
			local sNewDialog = tGangs_InAugust_OutText[nGiveType]["SuccessBack"]
			if nGiveType == 1 then
				local nUserId = Get_UserId()
				local nBackType = tGangs_InAugust_Data["Flower"][nUserId]
				tNpcGossip[nNpcId]["Option252"] = tGangs_InAugust_Text[nNpcId]["Option252"]
				tNpcGossip[nNpcId]["OptionFunc252"] = "Gangs_InAugust_GiveItem</N>"..nNpcId.."</N>"..nBackType
			else
				tNpcGossip[nNpcId]["Option252"] = tGangs_InAugust_Text[nNpcId]["Option2521"]
				tNpcGossip[nNpcId]["OptionFunc252"] = "LinkNpcGossipFunc_New</N>"..nNpcId.."</S>"..sNewDialog
			end
			LinkNpcGossipFunc_New(nNpcId,"2-5")
	end
end

-- 赞助普通宝石
function Gangs_InAugust_HangGems(nNpcId,nGiveType)
	-- 活动后
	if not Sys_ChkFullTime(tGangs_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nMonopoly = tGangs_InAugust_OutText[nGiveType]["Monopoly"]
	local nSaveTime = tGangs_InAugust_OutText[nGiveType]["SaveTime"]
	local bHave = false
	for i,v in pairs(tGangs_InAugust_Gems) do
		if Item_ChkMulItem(v,v,1,nMonopoly,0,0,nSaveTime) then
			bHave = true
		end
	end
	
	if not bHave then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"3-5")
end

-- 赞助流星卷。
function Gangs_InAugust_HangMetros(nNpcId,nGiveType)
	-- 活动后
	if not Sys_ChkFullTime(tGangs_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nMonopoly = tGangs_InAugust_OutText[nGiveType]["Monopoly"]
	local nSaveTime = tGangs_InAugust_OutText[nGiveType]["SaveTime"]
	local nItemId = tGangs_InAugust_Count["MeteorId"]
	if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly,0,0,nSaveTime) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	Gangs_InAugust_HangItem(nNpcId,nGiveType,0)
end
-- 赞助1000万银两。
function Gangs_InAugust_HangMoney(nNpcId,nGiveType)
	-- 活动后
	if not Sys_ChkFullTime(tGangs_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nMoney = tGangs_InAugust_Count["Money"]
	if not User_CanPutMoney2Bag(-nMoney) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	
	Gangs_InAugust_HangItem(nNpcId,nGiveType,0)
end
---------------------------------------------------积分兑换大使 21979
-- 兑换粉丝礼包
function Gangs_InAugust_Exchange(nNpcId,nItemId)
	if not Sys_ChkFullTime(tGangs_InAugust_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 积分不足
	local nFansData = Gangs_InAugust_GetStcValue(1)
	local nNeedScore = tGangs_InAugust_ScoreExchange[nItemId]["FansScore"]
	if nFansData < nNeedScore then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 背包满
	local nSpace = RewardTemplate_GetRewardSpace(tGangs_InAugust_ScoreExchange[nItemId])
	if nSpace > 0 and not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 扣除积分
	nFansData = nFansData - nNeedScore
	Gangs_InAugust_SetStcValue(1,1,nFansData)
	
	RewardTemplate_UseItemAndMsg(tGangs_InAugust_ScoreExchange[nItemId])
end

-- 前往献花投票
function Gangs_InAugust_Goto(nNpcId)
	-- 寻路
	local nPosX = tGangs_InAugust_FindWay[nNpcId]["PosX"]
	local nPosY = tGangs_InAugust_FindWay[nNpcId]["PosY"]
	local nMapId = tGangs_InAugust_FindWay[nNpcId]["MapId"]
	local nNpcId = tGangs_InAugust_FindWay[nNpcId]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

---------------------------------------------------物品模块
-- 粉丝礼包
function Gangs_InAugust_FansItem(nItemId)
	if not Sys_ChkFullTime(tGangs_InAugust_Count["ItemUseTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)then
			User_TalkChannel2005(tGangs_InAugust_Text["OverDue"])
			local sLog = tGangs_InAugust_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
 		end
		return
	end
	
	local nSpace = RewardTemplate_GetRandomSpace(tGangs_InAugust_Reward[nItemId],1)
	nSpace = nSpace -1
	if nSpace > 0 and not User_CheckLeftSpace(nSpace) then
		local sTip = tGangs_InAugust_Text["NoSpace"] 
		User_TalkChannel2005(string.format(sTip,nSpace))
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if tGangs_InAugust_Reward[nItemId][1][8] ~= nil and tGangs_InAugust_Reward[nItemId][1][8]["RewardBroadCast"] ~= nil then
			local sText = tGangs_InAugust_Text["AllBroad"]
			local sUserName = Get_UserName()
			tGangs_InAugust_Reward[nItemId][1][8]["RewardBroadCast"] = string.format(sText,sUserName)
		end
		RewardTemplate_NewRandom(tGangs_InAugust_Reward[nItemId],1)
	end
end

-- 花礼盒
function Gangs_InAugust_FlowerItem(nItemId,nIndex)
	RewardTemplate_UseItem(tGangs_InAugust_Reward[nItemId][nIndex])
end
--------------------------------------时间自检
function Gangs_InAugust_ClearGlobalData()
	local nGlobalId = tGangs_InAugust_Count["ItemGlobalId"]
	local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId)
	
	if Sys_ChkFullTime(tGangs_InAugust_Count["ItemUseTime"]) then
		if Sys_ChkDayTime(tGangs_InAugust_Count["ClearTime"]) then
			if not (sDataStr5 == "1") then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"1")
				Sys_SetSynaGlobalData0(nGlobalId,0)
				Sys_SetSynaGlobalData1(nGlobalId,0)
			end
		else
			if sDataStr5 == "1" then
				Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
			end
		end
	end
end
--------------------------------------服务器启动
function Gangs_InAugust_InitData()
	-- 参赛名额
	local nGlobalId = tGangs_InAugust_Count["GlobalId"]
	tGangs_InAugust_Data["Num"] = Get_SysDynaGlobalData0(nGlobalId,0)
	
	-- 参赛信息
	for nNum=1,tGangs_InAugust_Count["JoinMaxNum"] do
		local nGlobalId = tGangs_InAugust_GlobalPos[nNum][1]
		local nPos = tGangs_InAugust_GlobalPos[nNum][2]
		local nGuildId = Get_SysDynaGlobalData(nGlobalId,nPos+1)
		if nGuildId > 0 then
			tGangs_InAugust_Data["JoinIn"][nNum] = {}
			tGangs_InAugust_Data["JoinIn"][nNum].Num = Get_SysDynaGlobalData(nGlobalId,nPos)
			tGangs_InAugust_Data["JoinIn"][nNum].GuildId = nGuildId
			tGangs_InAugust_Data["JoinIn"][nNum].GuildName = Get_SysDynaGlobalDataStr(nGlobalId,nPos+1)
			tGangs_InAugust_Data["JoinIn"][nNum].UserId = Get_SysDynaGlobalData(nGlobalId,nPos+2)
			tGangs_InAugust_Data["JoinIn"][nNum].UserName = Get_SysDynaGlobalDataStr(nGlobalId,nPos+2)
		end
	end
end
--------------------------------------NPC模块-------------------------------------------
-- 活动大使
tNpcFace[4983] = 134
tNpcGossip[21977] = tNpcGossip[21977] or DefaultNpc:new{}
tNpcGossip[21977]["OptionHidden"] = 1
tNpcGossip[21977]["DialogueText"] = tGangs_InAugust_Text[21977] 
-- 活动前
tNpcGossip[21977]["Text1-1"] = {111,112,113,114}
tNpcGossip[21977]["tOption1-1"] = {111}
tNpcGossip[21977]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tGangs_InAugust_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[21977]["Text1-2"] = {121,122}
tNpcGossip[21977]["tOption1-2"] = {121}
tNpcGossip[21977]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tGangs_InAugust_Count["ActivityTime"])
end
-- 前往比赛现场。        ====（进入活动页面）
tNpcGossip[21977]["OptionFunc121"] = "Gangs_InAugust_EnterPage</N>21977"

-- 活动中
tNpcGossip[21977]["Text1-3"] = {131,132,133,113,114}
tNpcGossip[21977]["tOption1-3"] = {131,132,133,134,135}
tNpcGossip[21977]["ChkFunc1-3"] = function ()
	-- 参赛名额
	local nJoinNum = tGangs_InAugust_Data["Num"]
	local sText = tGangs_InAugust_Text[21977]["Text133"]
	if nJoinNum >= tGangs_InAugust_Count["JoinMaxNum"] then
		tNpcGossip[21977]["Text133"] = tGangs_InAugust_Text[21977]["Text134"]
	else
		tNpcGossip[21977]["Text133"] = string.format(sText,nJoinNum)
	end
	return true
end
-- 1、报名参赛。 ===（单服满50名后屏蔽此选项）
tNpcGossip[21977]["OptionFunc131"] = "Gangs_InAugust_JoinIn</N>21977"
tNpcGossip[21977]["OptionChkFunc131"] = function ()
	local nJoinNum = tGangs_InAugust_Data["Num"]
	if nJoinNum >= tGangs_InAugust_Count["JoinMaxNum"] then
		return false
	end
	
	local nGuildId = Get_UserGuildId()
	for i,v in pairs(tGangs_InAugust_Data["JoinIn"]) do
		if v.GuildId == nGuildId and nGuildId > 0 then
			return false
		end
	end
	return true
end
-- 2、前往比赛现场。 ===（打开活动页面）
tNpcGossip[21977]["OptionFunc132"] = "Gangs_InAugust_EnterPage</N>21977"
-- 3、前往献花投票。  ===（自动导航至献花投票大使）
tNpcGossip[21977]["OptionFunc133"] = "Gangs_InAugust_Goto</N>21979"
-- 4、购买鲜花。 ===（打开天石商店）
tNpcGossip[21977]["OptionFunc134"] = "Gangs_InAugust_OpenDialog</N>21977"
-- 5、大赛规则。
tNpcGossip[21977]["OptionPoint135"] = "3-1"

-- 【接1，玩家并非帮主，NPC对白】
tNpcGossip[21977]["Text2-1"] = {211}
tNpcGossip[21977]["tOption2-1"] = {211}
-- 【接1，玩家是帮主，NPC对白】
tNpcGossip[21977]["Text2-2"] = {221}
tNpcGossip[21977]["tOption2-2"] = {222,221,223}
-- 1-1、99天石报名参赛。
tNpcGossip[21977]["OptionFunc221"] = "Gangs_InAugust_EmoneyJoin</N>21977"
-- 1-2、1000万银两报名参赛。
tNpcGossip[21977]["OptionFunc222"] = "Gangs_InAugust_MoneyJoin</N>21977"
-- 1-3、我要考虑一下。
-- 【接1-1、二次确认，NPC对白】
tNpcGossip[21977]["Text2-3"] = {231}
tNpcGossip[21977]["tOption2-3"] = {231,232}
tNpcGossip[21977]["OptionFunc231"] = "Gangs_InAugust_SureEmoneyJoin</N>21977"
-- 【接1-1-1、成功报名,NPC对白】
tNpcGossip[21977]["Text2-4"] = {241,242}
tNpcGossip[21977]["tOption2-4"] = {241,242}
-- 前往比赛现场。         ====（前往活动页面）
tNpcGossip[21977]["OptionFunc241"] = "Gangs_InAugust_EnterPage</N>21977"
-- 【接1-1-1，失败，天石不足】
tNpcGossip[21977]["Text2-5"] = {251}
tNpcGossip[21977]["tOption2-5"] = {251}
-- 【接1-2，二次确认，NPC对白】
tNpcGossip[21977]["Text2-6"] = {261}
tNpcGossip[21977]["tOption2-6"] = {261,262}
tNpcGossip[21977]["OptionFunc261"] = "Gangs_InAugust_SureMoneyJoin</N>21977"
-- 【接1-2-1、成功报名】 2-4
-- 【接1-2-1，失败、银两不足】
tNpcGossip[21977]["Text2-8"] = {281}
tNpcGossip[21977]["tOption2-8"] = {281}
-- 【接1，点击时比赛已结束，NPC对白】
tNpcGossip[21977]["Text2-9"] = {291}
tNpcGossip[21977]["tOption2-9"] = {291}

-- 【接5、大赛规则，NPC对白】
tNpcGossip[21977]["Text3-1"] = {311,312,313,314,315,316,317}
tNpcGossip[21977]["tOption3-1"] = {311,312,313}
-- 5-1、大奖概览。 
tNpcGossip[21977]["OptionPoint311"] = "3-2"
-- 5-2、粉丝好礼一览。
tNpcGossip[21977]["OptionPoint312"] = "3-3"
-- 5-3、了解其它内容。 ===（返回上一页）
tNpcGossip[21977]["OptionPoint313"] = "1-3"

-- 【接5-1，NPC对白】
tNpcGossip[21977]["Text3-2"] = {321,322,323,324,325,326,327,328}
tNpcGossip[21977]["tOption3-2"] = {321}
-- 了解其它内容。 ===（返回上一页）
tNpcGossip[21977]["OptionPoint321"] = "3-1"
-- 【接5-2，NPC对白】
tNpcGossip[21977]["Text3-3"] = {331,332,333,334,335,336,337,338}
tNpcGossip[21977]["tOption3-3"] = {331}
-- 了解其它内容。 ===（返回上一页）
tNpcGossip[21977]["OptionPoint331"] = "3-1" 

-- 【接1，玩家并非帮派成员，NPC对白】
tNpcGossip[21977]["Text4-1"] = {411}
tNpcGossip[21977]["tOption4-1"] = {411}
-- 【接1，玩家帮派已报名，NPC对白】
tNpcGossip[21977]["Text4-2"] = {421}
tNpcGossip[21977]["tOption4-2"] = {421}
-- 【接1，名额已满，NPC对白】
tNpcGossip[21977]["Text4-3"] = {431}
tNpcGossip[21977]["tOption4-3"] = {431}

-- 献花投票大使
tNpcFace[4984] = 92
tNpcGossip[21978] = tNpcGossip[21978] or DefaultNpc:new{}
tNpcGossip[21978]["OptionHidden"] = 1
tNpcGossip[21978]["DialogueText"] = tGangs_InAugust_Text[21978]
-- 活动前
tNpcGossip[21978]["Text1-1"] = {111,112,113,114}
tNpcGossip[21978]["tOption1-1"] = {111}
tNpcGossip[21978]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tGangs_InAugust_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[21978]["Text1-2"] = {121}
tNpcGossip[21978]["tOption1-2"] = {121}
tNpcGossip[21978]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tGangs_InAugust_Count["ActivityTime"])
end

-- 活动中
tNpcGossip[21978]["Text1-3"] = {131,132,133,134,135,113,114}
tNpcGossip[21978]["tOption1-3"] = {131,132,133,134,135}
tNpcGossip[21978]["ChkFunc1-3"] = function ()
	local sText = tGangs_InAugust_Text[21978]["Text135"]
	local nFansData = Gangs_InAugust_GetStcValue(1)
	tNpcGossip[21978]["Text135"] = string.format(sText,nFansData)
	return true
end
-- 1、上交百合。
tNpcGossip[21978]["OptionFunc131"] = "Gangs_InAugust_GiveItem</N>21978</N>2"
-- 2、上交玫瑰。
tNpcGossip[21978]["OptionFunc132"] = "Gangs_InAugust_GiveItem</N>21978</N>1"
-- 3、上交兰花。
tNpcGossip[21978]["OptionFunc133"] = "Gangs_InAugust_GiveItem</N>21978</N>3"
-- 4、上交郁金香。
tNpcGossip[21978]["OptionFunc134"] = "Gangs_InAugust_GiveItem</N>21978</N>4"
-- 5、赞助珍宝或银两。
tNpcGossip[21978]["OptionPoint135"] = "3-1"

-- 【接1至4，玩家没有鲜花，NPC对白】
tNpcGossip[21978]["Text2-1"] = {211}
tNpcGossip[21978]["tOption2-1"] = {211,212}
-- 购买鲜花。  ===（打开天石商店）
tNpcGossip[21978]["OptionFunc211"] = "Gangs_InAugust_OpenDialog</N>21978"
-- 暂不购买。  ===（返回上一页）
tNpcGossip[21978]["OptionPoint212"] = "1-3"
-- 【接1至4，玩家有鲜花，NPC对白】
tNpcGossip[21978]["Text2-2"] = {221}
tNpcGossip[21978]["tOption2-2"] = {221,222,223,224,225,226,227}
-- X-1、1朵。
tNpcGossip[21978]["OptionFunc221"] = "Gangs_InAugust_HangItem</N>21978</N>1</N>1"
tNpcGossip[21978]["OptionChkFunc221"] = function ()
	local nUserId = Get_UserId()
	local nType = tGangs_InAugust_Data["Flower"][nUserId]
	local nItemId = tGangs_InAugust_Flower[nType][1]
	if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly,nSash,nUserId,0) then
		return false
	end
	return true
end
-- X-2、3朵。
tNpcGossip[21978]["OptionFunc222"] = "Gangs_InAugust_HangItem</N>21978</N>1</N>2"
tNpcGossip[21978]["OptionChkFunc222"] = function ()
	local nUserId = Get_UserId()
	local nType = tGangs_InAugust_Data["Flower"][nUserId]
	local nItemId = tGangs_InAugust_Flower[nType][2]
	if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly,nSash,nUserId,0) then
		return false
	end
	return true
end
-- X-3、9朵。
tNpcGossip[21978]["OptionFunc223"] = "Gangs_InAugust_HangItem</N>21978</N>1</N>3"
tNpcGossip[21978]["OptionChkFunc223"] = function ()
	local nUserId = Get_UserId()
	local nType = tGangs_InAugust_Data["Flower"][nUserId]
	local nItemId = tGangs_InAugust_Flower[nType][3]
	if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly,nSash,nUserId,0) then
		return false
	end
	return true
end
-- X-4、99朵。
tNpcGossip[21978]["OptionFunc224"] = "Gangs_InAugust_HangItem</N>21978</N>1</N>4"
tNpcGossip[21978]["OptionChkFunc224"] = function ()
	local nUserId = Get_UserId()
	local nType = tGangs_InAugust_Data["Flower"][nUserId]
	local nItemId = tGangs_InAugust_Flower[nType][4]
	if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly,nSash,nUserId,0) then
		return false
	end
	return true
end
-- X-5、999朵。
tNpcGossip[21978]["OptionFunc225"] = "Gangs_InAugust_HangItem</N>21978</N>1</N>5"
tNpcGossip[21978]["OptionChkFunc225"] = function ()
	local nUserId = Get_UserId()
	local nType = tGangs_InAugust_Data["Flower"][nUserId]
	local nItemId = tGangs_InAugust_Flower[nType][5]
	if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly,nSash,nUserId,0) then
		return false
	end
	return true
end
-- X-6、9999朵。
tNpcGossip[21978]["OptionFunc226"] = "Gangs_InAugust_HangItem</N>21978</N>1</N>6"
tNpcGossip[21978]["OptionChkFunc226"] = function ()
	local nUserId = Get_UserId()
	local nType = tGangs_InAugust_Data["Flower"][nUserId]
	local nNewItemId = tGangs_InAugust_Flower[nType][6]
	if not Item_ChkMulItem(nNewItemId,nNewItemId,1,nMonopoly,nSash,nUserId,0) then
		return false
	end
	return true
end
-- X-7、重新选择。 ===（返回上一页）
tNpcGossip[21978]["OptionPoint227"] = "1-3"

-- 【接X-1至X-6，NPC对白】 输入框
tNpcGossip[21978]["Text2-3"] = {231,232}
-- 【接X-1-1，玩家回答溢出，NPC对白】
tNpcGossip[21978]["Text2-4"] = {241}
tNpcGossip[21978]["tOption2-4"] = {241}
-- 我明白了。 ===（返回上一页）
-- 【接上，成功上交鲜花】
tNpcGossip[21978]["Text2-5"] = {251,252}
tNpcGossip[21978]["tOption2-5"] = {251,252}
-- 前往比赛现场。
tNpcGossip[21978]["OptionFunc251"] = "Gangs_InAugust_EnterPage</N>21977"
-- 【接x-1-1，玩家回答异常，NPC对白】
tNpcGossip[21978]["Text2-6"] = {261}
tNpcGossip[21978]["tOption2-6"] = {261}
-- 我明白了。 ===（返回上一页）

-- 【接5，NPC对白】
tNpcGossip[21978]["Text3-1"] = {311,312,313,314,315,316,317,318}
tNpcGossip[21978]["tOption3-1"] = {311,312,313,314}
tNpcGossip[21978]["ChkFunc3-1"] = function ()
	local sText = tGangs_InAugust_Text[21978]["Text318"]
	local nFansData = Gangs_InAugust_GetStcValue(1)
	tNpcGossip[21978]["Text318"] = string.format(sText,nFansData)
	return true
end
-- 5-1、赞助普通宝石。
tNpcGossip[21978]["OptionFunc311"] = "Gangs_InAugust_HangGems</N>21978</N>2"
-- 5-2、赞助流星卷。
tNpcGossip[21978]["OptionFunc312"] = "Gangs_InAugust_HangMetros</N>21978</N>3"
-- 5-3、赞助1000万银两。
tNpcGossip[21978]["OptionFunc313"] = "Gangs_InAugust_HangMoney</N>21978</N>4"
-- 2-5-4、再考虑一下。 ===（返回上一页）
tNpcGossip[21978]["OptionPoint314"] = "1-3"
-- 【接5-1，玩家无普通宝石，NPC对白】
tNpcGossip[21978]["Text3-2"] = {321}
tNpcGossip[21978]["tOption3-2"] = {321}
tNpcGossip[21978]["OptionFunc321"] = "LinkNpcGossipFunc_New</N>21978</S>3-1"
-- 【接5-2，玩家无流星卷，NPC对白】
tNpcGossip[21978]["Text3-3"] = {331}
tNpcGossip[21978]["tOption3-3"] = {331}
tNpcGossip[21978]["OptionFunc331"] = "LinkNpcGossipFunc_New</N>21978</S>3-1"
-- 【接5-3，玩家没有充足银两，NPC对白】
tNpcGossip[21978]["Text3-4"] = {341}
tNpcGossip[21978]["tOption3-4"] = {341}
-- 【接5-1，玩家有普通宝石，NPC对白】
tNpcGossip[21978]["Text3-5"] = {351,352}
tNpcGossip[21978]["tOption3-5"] = {351,352,353,354,355,356,357,358,359,360,3510}
tNpcGossip[21978]["ChkFunc3-5"] = function ()
	for i=351,360 do
		local sItemName = Get_ItemtypeName(tGangs_InAugust_Gems[i-350])
		tNpcGossip[21978]["Option"..i] = sItemName
	end
	return true
end
for a=351,360 do
	local nIndex = a-350
	tNpcGossip[21978]["OptionFunc"..a] = "Gangs_InAugust_HangItem</N>21978</N>2</N>"..nIndex
	tNpcGossip[21978]["OptionChkFunc"..a] = function ()
		local nUserId = Get_UserId()
		local nMonopoly = tGangs_InAugust_OutText[2]["Monopoly"]
		local nSaveTime = tGangs_InAugust_OutText[2]["SaveTime"]
		local nItemId = tGangs_InAugust_Gems[nIndex]
		if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly,0,0,nSaveTime) then
			return false
		end
		return true
	end
end
-- 5-1-1、显示玩家背包中的普通宝石。
-- 5-1-x、暂不赞助。 ===（返回上一页）
-- 【接5-1-1，NPC对白】
tNpcGossip[21978]["Text3-6"] = {361}
-- 【接5-1-1-1，玩家回答异常，NPC对白】 
-- 2-6
-- 希望赛事顺利！ ===（返回主对白）
-- 【接5-1-1-1，玩家输入溢出，NPC对白】
tNpcGossip[21978]["Text3-8"] = {381}
tNpcGossip[21978]["tOption3-8"] = {381}
-- 【接上，成功上交宝石】
tNpcGossip[21978]["Text3-9"] = {391,392}
tNpcGossip[21978]["tOption3-9"] = {391}
-- 希望赛事顺利！ ===（返回主对白）
-- 【接5-1至5-3，点击时活动结束，NPC对白】
tNpcGossip[21978]["Text4-1"] = {411}
tNpcGossip[21978]["tOption4-1"] = {411}


-- -积分兑换大使
tNpcFace[4985] = 159
tNpcGossip[21979] = tNpcGossip[21979] or DefaultNpc:new{}
tNpcGossip[21979]["OptionHidden"] = 1
tNpcGossip[21979]["DialogueText"] = tGangs_InAugust_Text[21979] 
-- 活动前
tNpcGossip[21979]["Text1-1"] = {111,112,113,114}
tNpcGossip[21979]["tOption1-1"] = {111}
tNpcGossip[21979]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tGangs_InAugust_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[21979]["Text1-2"] = {121}
tNpcGossip[21979]["tOption1-2"] = {121}
tNpcGossip[21979]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tGangs_InAugust_Count["ActivityTime"])
end

-- 活动中
tNpcGossip[21979]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310}
tNpcGossip[21979]["tOption1-3"] = {131,132,133,134,135}
tNpcGossip[21979]["ChkFunc1-3"] = function ()
	local sText = tGangs_InAugust_Text[21979]["Text1310"]
	local nFansData =  Gangs_InAugust_GetStcValue(1)
	tNpcGossip[21979]["Text1310"] = string.format(sText,nFansData)
	return true
end
-- 1、50点粉丝积分兑换好礼。
tNpcGossip[21979]["OptionFunc131"] = "Gangs_InAugust_Exchange</N>21979</N>3304237"
-- 2、200点粉丝积分兑换好礼。
tNpcGossip[21979]["OptionFunc132"] = "Gangs_InAugust_Exchange</N>21979</N>3304238"
-- 3、500点粉丝积分兑换好礼。
tNpcGossip[21979]["OptionFunc133"] = "Gangs_InAugust_Exchange</N>21979</N>3304239"
-- 4、1000点粉丝积分兑换好礼。
tNpcGossip[21979]["OptionFunc134"] = "Gangs_InAugust_Exchange</N>21979</N>3304240"
-- 5、前往献花投票大使处。  ===（自动导航至献花投票大使）
tNpcGossip[21979]["OptionFunc135"] = "Gangs_InAugust_Goto</N>21979"


-- 【接1至4，积分不足，NPC对白】
tNpcGossip[21979]["Text2-1"] = {211,212}
tNpcGossip[21979]["tOption2-1"] = {211}
-- 【接1至4，背包满，NPC对白】
tNpcGossip[21979]["Text2-2"] = {221}
tNpcGossip[21979]["tOption2-2"] = {221}
-- 【接1至4，兑换成功,系统提示】
-- 【接1至4，点击时比赛结束，NPC对白】
tNpcGossip[21979]["Text2-3"] = {231}
tNpcGossip[21979]["tOption2-3"] = {231}

--------------------------------------物品模块-------------------------------------------
-- 背包信
tItemFace[3304241] = 770

-- 3304237,'50积分粉丝礼包'
tItem[3304237] = tItem[3304237] or {}
tItem[3304237]["Function"] = function(nItemId,sItemName)
	Gangs_InAugust_FansItem(nItemId)
end
-- 3304238,'200积分粉丝礼包'
tItem[3304238] = tItem[3304237]
-- 3304239,'500积分粉丝礼包'
tItem[3304239] = tItem[3304237]
-- 3304240,'1000积分粉丝礼包'
tItem[3304240] = tItem[3304237]

-- 3304242,'9999朵玫瑰',
tItem[3304242] = tItem[3304242] or {}
tItem[3304242]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tGangs_InAugust_Reward[nItemId])
end
-- 3304243,'9999朵百合',
tItem[3304243] = tItem[3304242]
-- 3304244,'9999朵兰花',
tItem[3304244] = tItem[3304242]
-- 3304245,'9999朵郁金香
tItem[3304245] = tItem[3304242]

-- 3304418,'99朵鲜花礼盒',
tItemFace[3304418] = 771
tItem[3304418] = tItem[3304418] or {}
tItem[3304418]["DialogueText"] = tGangs_InAugust_Text[3304418]
tItem[3304418]["Text1-1"] = {111}
tItem[3304418]["tOption1-1"] = {111,112,113}
tItem[3304418]["OptionFunc111"] = "Gangs_InAugust_FlowerItem</N>3304418</N>1"
tItem[3304418]["OptionFunc112"] = "Gangs_InAugust_FlowerItem</N>3304418</N>2"
tItem[3304418]["OptionFunc113"] = "Gangs_InAugust_FlowerItem</N>3304418</N>3"
-- 3304419,'999朵鲜花礼盒'
tItemFace[3304419] = 772
tItem[3304419] = tItem[3304419] or {}
tItem[3304419]["DialogueText"] = tGangs_InAugust_Text[3304419]
tItem[3304419]["Text1-1"] = {111}
tItem[3304419]["tOption1-1"] = {111,112,113}
tItem[3304419]["OptionFunc111"] = "Gangs_InAugust_FlowerItem</N>3304419</N>1"
tItem[3304419]["OptionFunc112"] = "Gangs_InAugust_FlowerItem</N>3304419</N>2"
tItem[3304419]["OptionFunc113"] = "Gangs_InAugust_FlowerItem</N>3304419</N>3"
-- 3304420,'9999朵鲜花礼盒
tItemFace[3304420] = 773
tItem[3304420] = tItem[3304420] or {}
tItem[3304420]["DialogueText"] =tGangs_InAugust_Text[3304420]
tItem[3304420]["Text1-1"] = {111}
tItem[3304420]["tOption1-1"] = {111,112,113}
tItem[3304420]["OptionFunc111"] = "Gangs_InAugust_FlowerItem</N>3304420</N>1"
tItem[3304420]["OptionFunc112"] = "Gangs_InAugust_FlowerItem</N>3304420</N>2"
tItem[3304420]["OptionFunc113"] = "Gangs_InAugust_FlowerItem</N>3304420</N>3"

--------------------------------------时间自检-------------------------------------------
--tOntimerMin_HM	小时/分钟（每天的00点00分到00点05分执行）
--'00:00-00:05'
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],Gangs_InAugust_ClearGlobalData)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],Gangs_InAugust_ClearGlobalData)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],Gangs_InAugust_ClearGlobalData)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],Gangs_InAugust_ClearGlobalData)
-- tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
-- table.insert(tOntimerMin_HM[0004],Gangs_InAugust_ClearGlobalData)

-- 服务器启动
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],Gangs_InAugust_InitData)


